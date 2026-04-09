/*
 * pmic.c
 *
 *  Created on: 31 mars 2026
 *      Author: cmbouba
 *
 *  Driver baremetal pour le PMIC Infineon IRPS5401
 *  Plateforme : Avnet Ultra96v2 (Zynq UltraScale+ XCZU3EG)
 *
 *  Reference : UN0065 - IRPS5401 Register Map V1.3 (Infineon, Sept. 2019)
 *
 *  Architecture memoire du PMIC :
 *    Chaque sortie (Loop A/B/C/D/LDO) possede deux sections d'adresses :
 *      - Trim and User  : registres de configuration interne
 *      - PMBus          : registres de commande accessibles via I2C
 *
 *    VCCINT correspond au Loop D :
 *      Base Trim/User  = 0x1000
 *      Base PMBus      = 0x1200  <- section utilisee dans ce driver
 *
 *    Les offsets des registres PMBus sont definis dans pmic.h.
 *    L'acces I2C se fait en selectionnant la page 0x12 via le
 *    registre 0xFF, puis en ecrivant l'offset directement.
 */

#include "xparameters.h"
#include "sleep.h"
#include "xiicps.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "pmic.h"

/* =========================================================================
 * Fonctions I2C bas niveau
 * ========================================================================= */

static void iic_init(XIicPs *Iic)
{
    XIicPs_Config *Cfg = XIicPs_LookupConfig(PMIC_DEVICE_ID);
    XIicPs_CfgInitialize(Iic, Cfg, Cfg->BaseAddress);
    XIicPs_SetSClk(Iic, PMIC_SCLK_RATE);
}

static void reg_write(u8 reg, u16 data)
{
    XIicPs Iic;
    iic_init(&Iic);
    u8 buf[3];
    buf[0] = reg;
    buf[1] = (u8)(data & 0xFF);
    buf[2] = (u8)((data >> 8) & 0xFF);
    XIicPs_MasterSendPolled(&Iic, buf, 3, PMIC_I2C_ADDR);
    while (XIicPs_BusIsBusy(&Iic));
    usleep(10000);
}

static u16 reg_read(u8 reg)
{
    XIicPs Iic;
    iic_init(&Iic);
    u8 buf[2] = {0, 0};
    XIicPs_MasterSendPolled(&Iic, &reg, 1, PMIC_I2C_ADDR);
    while (XIicPs_BusIsBusy(&Iic));
    usleep(10000);
    XIicPs_MasterRecvPolled(&Iic, buf, 2, PMIC_I2C_ADDR);
    while (XIicPs_BusIsBusy(&Iic));
    return (u16)(buf[0]) | ((u16)(buf[1]) << 8);
}

/* =========================================================================
 * Helpers internes
 * ========================================================================= */

/*
 * vout_mode_to_scale
 *
 * VOUT_MODE (CMD 0x20, offset 0x40) definit l'exposant de l'encodage
 * lineaire des tensions PMBus. La tension est encodee comme :
 *
 *   Tension (V) = mantisse / scale
 *
 * avec scale = 2^|exposant|. Seules trois valeurs sont supportees
 * par l'IRPS5401 (UN0065 p.24) : exp=-8, -9, -12.
 */
static u16 vout_mode_to_scale(u8 vout_mode)
{
    switch (vout_mode) {
        case VOUT_MODE_EXP_N8:  return 256;
        case VOUT_MODE_EXP_N9:  return 512;
        case VOUT_MODE_EXP_N12: return 4096;
        default:
            xil_printf("[PMIC] ERREUR : VOUT_MODE inconnu 0x%02X\r\n", vout_mode);
            return 0;
    }
}

/*
 * res_to_vout_mode
 *
 * Convertit un identifiant de resolution (PMIC_RES_1/2/3)
 * en valeur de registre VOUT_MODE.
 */
static u8 res_to_vout_mode(int Resolution)
{
    switch (Resolution) {
        case PMIC_RES_1: return VOUT_MODE_EXP_N8;
        case PMIC_RES_2: return VOUT_MODE_EXP_N9;
        case PMIC_RES_3: return VOUT_MODE_EXP_N12;
        default:
            xil_printf("[PMIC] ERREUR : Resolution %d invalide\r\n", Resolution);
            return 0;
    }
}

/*
 * print_voltage_from_raw
 *
 * Affiche une tension en volts a partir d'une mantisse brute et d'un scale,
 * sans utiliser %f (non supporte par xil_printf).
 */
static void print_voltage_from_raw(u16 raw, u16 scale)
{
    if (scale == 0) {
        xil_printf("?.??? V (scale inconnu)");
        return;
    }
    int mv       = (int)(((u32)raw * 1000U) / (u32)scale);
    int mv_whole = mv / 1000;
    int mv_frac  = mv % 1000;
    xil_printf("%d.%03d V", mv_whole, mv_frac);
}

/* =========================================================================
 * set_channel_IIC_MUX
 *
 * L'Ultra96v2 dispose d'un multiplexeur I2C TCA9544A (adresse 0x75)
 * entre le PS Zynq et les peripheriques. Le PMIC est accessible sur
 * le canal 0x10. Cette fonction doit etre appelee avant toute
 * communication avec le PMIC.
 * ========================================================================= */
void set_channel_IIC_MUX(int IIC_MUX_Addr, u8 Channel)
{
    XIicPs Iic;
    iic_init(&Iic);
    XIicPs_MasterSendPolled(&Iic, &Channel, 1, IIC_MUX_Addr);
    while (XIicPs_BusIsBusy(&Iic));
    usleep(50000);
}

/* =========================================================================
 * set_PMIC_page
 *
 * Le PMIC organise ses registres en pages de 256 octets.
 * Le registre 0xFF est le selecteur de page : toute ecriture dans
 * ce registre change la page active pour les acces I2C suivants.
 * VCCINT (Loop D) est accessible sur la page 0x12.
 * ========================================================================= */
void set_PMIC_page(u8 page)
{
    reg_write(PMIC_REG_PAGE, (u16)page);
}

/* =========================================================================
 * set_Vmax
 *
 * VOUT_MAX (CMD 0x24, offset 0x48) est un plafond de securite materiel.
 * Il empeche VOUT_COMMAND de depasser une valeur maximale autorisee.
 * La mantisse est calculee dans le scale courant lu depuis VOUT_MODE.
 *
 * Note : Avnet a programme 0.891V dans l'OTP. Cette fonction ecrit
 * une valeur en RAM qui peut depasser l'OTP mais reste limitee par
 * la securite du Zynq UltraScale+ (max 0.930V sur VCCINT).
 * ========================================================================= */
void set_Vmax(float Vmax)
{
    u8  vout_mode = (u8)(reg_read(PMIC_REG_VOUT_MODE) & 0xFF);
    u16 scale     = vout_mode_to_scale(vout_mode);
    if (scale == 0) return;
    reg_write(PMIC_REG_VOUT_MAX, (u16)(Vmax * (float)scale));
}

/* =========================================================================
 * set_resolution
 *
 * Change la resolution du DAC de tension et applique la tension cible.
 *
 * Probleme fondamental du changement de resolution :
 *   Quand VOUT_MODE est ecrit, le PMIC reinterprete instantanement
 *   VOUT_COMMAND avec le nouveau scale. La tension chute donc
 *   transitoirement avant que VOUT_COMMAND soit mis a jour.
 *
 *   Exemple (scale 256 -> 512) :
 *     Avant : mantisse=218, tension = 218/256 = 0.852V
 *     Apres VOUT_MODE : mantisse=218, tension = 218/512 = 0.426V (chute)
 *     Apres VOUT_COMMAND : mantisse=436, tension = 436/512 = 0.852V
 *
 * Solution : desactiver UV_FAULT_RESPONSE (CMD 0x45, offset 0x8A)
 *   avant la transition pour que le PMIC ne se coupe pas sur la
 *   chute transitoire, puis restaurer la protection apres.
 *
 * Sequence officielle Infineon (UN0065 p.24) :
 *   1. Sauvegarder et desactiver UV_FAULT_RESPONSE
 *   2. Ecrire VOUT_MODE  -> nouveau scale actif, chute transitoire
 *   3. Ecrire VOUT_MAX   -> plafond adapte au nouveau scale
 *   4. Ecrire VOUT_COMMAND -> tension cible dans le nouveau scale
 *   5. Attendre stabilisation
 *   6. Effacer les faults generes pendant la transition
 *   7. Restaurer UV_FAULT_RESPONSE
 * ========================================================================= */
void set_resolution(int Resolution, float Voltage, float Vmax)
{
    u8 new_mode = res_to_vout_mode(Resolution);
    if (new_mode == 0) return;

    u8 old_mode = (u8)(reg_read(PMIC_REG_VOUT_MODE) & 0xFF);

    /* Si la resolution est deja la bonne, on met juste a jour la tension */
    if (old_mode == new_mode) {
        u16 scale = vout_mode_to_scale(new_mode);
        if (scale == 0) return;
        reg_write(PMIC_REG_VOUT_CMD, (u16)(Voltage * (float)scale));
        return;
    }

    u16 new_scale = vout_mode_to_scale(new_mode);
    if (new_scale == 0) return;

    u16 new_vout_cmd = (u16)(Voltage * (float)new_scale);
    u16 new_vout_max = (u16)(Vmax    * (float)new_scale);



    /* Etape 1 : desactiver la protection UV pour eviter un shutdown
     *           pendant la chute transitoire */
    u16 saved_uv_response = reg_read(PMIC_REG_VOUT_UV_RESPONSE);
    reg_write(PMIC_REG_VOUT_UV_RESPONSE, VOUT_UV_RESPONSE_IGNORE);

    /* Etape 2 : changer le scale -> chute transitoire de VOUT_COMMAND */
    reg_write(PMIC_REG_VOUT_MODE, (u16)new_mode);

    /* Etape 3 : adapter VOUT_MAX au nouveau scale avant VOUT_COMMAND
     *           sinon le plafond serait trop bas et bloquerait la remontee */
    reg_write(PMIC_REG_VOUT_MAX, new_vout_max);

    /* Etape 4 : appliquer la tension cible dans le nouveau scale */
    reg_write(PMIC_REG_VOUT_CMD, new_vout_cmd);

    /* Etape 5 : attendre la stabilisation de la tension */
    usleep(50000);

    /* Etape 6 : effacer les faults generes pendant la transition */
    pmic_clear_faults();

    /* Etape 7 : restaurer la protection UV */
    reg_write(PMIC_REG_VOUT_UV_RESPONSE, saved_uv_response);


}

/* =========================================================================
 * set_voltage
 *
 * Applique une tension en ecrivant la mantisse dans VOUT_COMMAND
 * (CMD 0x21, offset 0x42). Le scale est lu depuis VOUT_MODE pour
 * calculer la mantisse : mantisse = (u16)(Voltage * scale).
 * ========================================================================= */
void set_voltage(float Voltage)
{
    u8  vout_mode = (u8)(reg_read(PMIC_REG_VOUT_MODE) & 0xFF);
    u16 scale     = vout_mode_to_scale(vout_mode);
    if (scale == 0) return;
    reg_write(PMIC_REG_VOUT_CMD, (u16)(Voltage * (float)scale));
}

/* =========================================================================
 * get_voltage
 *
 * Lit la tension cible depuis VOUT_COMMAND et la convertit en volts.
 * Retourne : mantisse / scale
 * ========================================================================= */
float get_voltage(void)
{
    u8  vout_mode = (u8)(reg_read(PMIC_REG_VOUT_MODE) & 0xFF);
    u16 scale     = vout_mode_to_scale(vout_mode);
    if (scale == 0) return 0.0f;
    u16 raw = reg_read(PMIC_REG_VOUT_CMD);
    return (float)raw / (float)scale;
}

/* =========================================================================
 * get_resolution_raw
 *
 * Retourne la valeur brute du registre VOUT_MODE.
 * ========================================================================= */
u8 get_resolution_raw(void)
{
    return (u8)(reg_read(PMIC_REG_VOUT_MODE) & 0xFF);
}

/* =========================================================================
 * pmic_clear_faults
 *
 * CLEAR_FAULTS (CMD 0x03, offset 0x06) efface tous les registres
 * de statut de fault pour la page courante. Commande en ecriture seule.
 * ========================================================================= */
void pmic_clear_faults(void)
{
    reg_write(PMIC_REG_CLEAR_FAULTS, 0x0000);
}

/* =========================================================================
 * pmic_print_info
 *
 * Affiche la tension courante et la resolution active.
 * ========================================================================= */
void pmic_print_info(void)
{
    float voltage = get_voltage();
    u8    mode    = get_resolution_raw();

    int mv       = (int)(voltage * 1000.0f + 0.5f);
    int mv_whole = mv / 1000;
    int mv_frac  = mv % 1000;

    const char *res_str;
    switch (mode) {
        case VOUT_MODE_EXP_N8:  res_str = "exp=-8,  ~3.906 mV/LSB"; break;
        case VOUT_MODE_EXP_N9:  res_str = "exp=-9,  ~1.953 mV/LSB"; break;
        case VOUT_MODE_EXP_N12: res_str = "exp=-12, ~0.244 mV/LSB"; break;
        default:                res_str = "VOUT_MODE inconnu";       break;
    }

    xil_printf("[PMIC] VCCINT (Loop D, page 0x12) :\r\n");
    xil_printf("  Tension    : %d.%03d V\r\n", mv_whole, mv_frac);
    xil_printf("  VOUT_MODE  : 0x%02X -> %s\r\n", mode, res_str);
}

/* =========================================================================
 * pmic_dump_registers
 *
 * Lit et affiche tous les registres importants de VCCINT (Loop D).
 *
 * Registres affiches (offsets PMBus, base page 0x12) :
 *
 *   0x40  VOUT_MODE     CMD 0x20  Resolution (scale du DAC)
 *   0x42  VOUT_COMMAND  CMD 0x21  Tension cible
 *   0x48  VOUT_MAX      CMD 0x24  Plafond de securite
 *   0x80  VOUT_OV_FAULT CMD 0x40  Seuil coupure sur-tension
 *   0x84  VOUT_OV_WARN  CMD 0x42  Seuil warning sur-tension
 *   0x86  VOUT_UV_WARN  CMD 0x43  Seuil warning sous-tension
 *   0x88  VOUT_UV_FAULT CMD 0x44  Seuil coupure sous-tension
 *   0x8A  UV_RESPONSE   CMD 0x45  Comportement sur fault UV
 *   0xF2  STATUS_WORD   CMD 0x79  Statut global
 *   0xF4  STATUS_VOUT   CMD 0x7A  Statut tension (faults actifs)
 * ========================================================================= */
void pmic_dump_registers(void)
{
    u16 raw_mode     = reg_read(PMIC_REG_VOUT_MODE);
    u8  vout_mode    = (u8)(raw_mode & 0xFF);
    u16 scale        = vout_mode_to_scale(vout_mode);

    u16 raw_cmd      = reg_read(PMIC_REG_VOUT_CMD);
    u16 raw_max      = reg_read(PMIC_REG_VOUT_MAX);
    u16 raw_ov_fault = reg_read(PMIC_REG_VOUT_OV_FAULT);
    u16 raw_ov_warn  = reg_read(PMIC_REG_VOUT_OV_WARN);
    u16 raw_uv_warn  = reg_read(PMIC_REG_VOUT_UV_WARN);
    u16 raw_uv_fault = reg_read(PMIC_REG_VOUT_UV_FAULT);
    u16 raw_uv_resp  = reg_read(PMIC_REG_VOUT_UV_RESPONSE);
    u16 raw_status_w = reg_read(PMIC_REG_STATUS_WORD);
    u16 raw_status_v = reg_read(PMIC_REG_STATUS_VOUT);

    const char *res_str;
    switch (vout_mode) {
        case VOUT_MODE_EXP_N8:  res_str = "exp=-8,  ~3.906 mV/LSB"; break;
        case VOUT_MODE_EXP_N9:  res_str = "exp=-9,  ~1.953 mV/LSB"; break;
        case VOUT_MODE_EXP_N12: res_str = "exp=-12, ~0.244 mV/LSB"; break;
        default:                res_str = "inconnu"; break;
    }

    xil_printf("\r\n[PMIC] ===== DUMP REGISTRES VCCINT (Loop D, page 0x12) =====\r\n\r\n");

    xil_printf("  VOUT_MODE      (0x%02X) : 0x%04X -> %s\r\n",
               PMIC_REG_VOUT_MODE, raw_mode, res_str);

    xil_printf("  VOUT_COMMAND   (0x%02X) : 0x%04X -> ",
               PMIC_REG_VOUT_CMD, raw_cmd);
    print_voltage_from_raw(raw_cmd, scale);
    xil_printf(" (tension cible)\r\n");

    xil_printf("  VOUT_MAX       (0x%02X) : 0x%04X -> ",
               PMIC_REG_VOUT_MAX, raw_max);
    print_voltage_from_raw(raw_max, scale);
    xil_printf(" (plafond de securite)\r\n");

    xil_printf("  VOUT_OV_FAULT  (0x%02X) : 0x%04X -> ",
               PMIC_REG_VOUT_OV_FAULT, raw_ov_fault);
    print_voltage_from_raw(raw_ov_fault, scale);
    xil_printf(" (coupure sur-tension)\r\n");

    xil_printf("  VOUT_OV_WARN   (0x%02X) : 0x%04X -> ",
               PMIC_REG_VOUT_OV_WARN, raw_ov_warn);
    print_voltage_from_raw(raw_ov_warn, scale);
    xil_printf(" (warning sur-tension)\r\n");

    xil_printf("  VOUT_UV_WARN   (0x%02X) : 0x%04X -> ",
               PMIC_REG_VOUT_UV_WARN, raw_uv_warn);
    print_voltage_from_raw(raw_uv_warn, scale);
    xil_printf(" (warning sous-tension)\r\n");

    xil_printf("  VOUT_UV_FAULT  (0x%02X) : 0x%04X -> ",
               PMIC_REG_VOUT_UV_FAULT, raw_uv_fault);
    print_voltage_from_raw(raw_uv_fault, scale);
    xil_printf(" (coupure sous-tension)\r\n");

    xil_printf("  UV_RESPONSE    (0x%02X) : 0x%04X -> %s\r\n",
               PMIC_REG_VOUT_UV_RESPONSE, raw_uv_resp,
               (raw_uv_resp & 0x80) ? "SHUTDOWN" : "IGNORE");

    xil_printf("  STATUS_WORD    (0x%02X) : 0x%04X\r\n",
               PMIC_REG_STATUS_WORD, raw_status_w);

    xil_printf("  STATUS_VOUT    (0x%02X) : 0x%04X -> ",
               PMIC_REG_STATUS_VOUT, raw_status_v);
    if ((raw_status_v & 0x00FF) == 0x00) {
        xil_printf("OK (aucun fault)\r\n");
    } else {
        xil_printf("FAULT ACTIF !\r\n");
        u8 sv = (u8)(raw_status_v & 0xFF);
        if (sv & 0x80) xil_printf("    [!] VOUT_OV_FAULT\r\n");
        if (sv & 0x40) xil_printf("    [W] VOUT_OV_WARNING\r\n");
        if (sv & 0x20) xil_printf("    [W] VOUT_UV_WARNING\r\n");
        if (sv & 0x10) xil_printf("    [!] VOUT_UV_FAULT\r\n");
        if (sv & 0x08) xil_printf("    [W] VOUT_MAX_WARNING\r\n");
        if (sv & 0x04) xil_printf("    [!] TON_MAX_FAULT\r\n");
    }

    xil_printf("[PMIC] =======================================================\r\n\r\n");
}

/* =========================================================================
 * regulate_vccint
 *
 * Boucle de regulation SYSMON -> PMIC.
 *
 * Le SYSMON (System Monitor integre dans le die du Zynq) mesure la
 * tension reelle aux bornes des cellules logiques du FPGA, apres la
 * chute resistive dans les pistes PCB entre le PMIC et le FPGA.
 *
 * Cette fonction ajuste VOUT_COMMAND du PMIC pas a pas jusqu'a ce
 * que le SYSMON atteigne la tension cible. Le pas d'ajustement est
 * egal a 1 LSB du scale courant (resolution du DAC).
 *
 * Le registre SYSMON est lu via Xil_In32 a l'adresse :
 *   BASE_ADDR + REG_TEMP_VOLT_OFFSET
 * Les bits [31:16] contiennent la tension, codes en Q = 3V/65536.
 *
 * Securites :
 *   - La tension PMIC ne depasse jamais vmax
 *   - La tension PMIC ne descend pas sous 0.700V
 *   - Timeout apres 100 iterations (~1 seconde)
 * ========================================================================= */
float regulate_vccint(float target_v, float vmax,
                      u32 sysmon_addr, float step_v)
{
    if (target_v < 0.700f || target_v > vmax) {
        xil_printf("[PMIC] regulate_vccint : tension cible hors limites\r\n");
        return get_voltage();
    }

    u8  vout_mode = (u8)(reg_read(PMIC_REG_VOUT_MODE) & 0xFF);
    u16 scale     = vout_mode_to_scale(vout_mode);
    if (scale == 0) return get_voltage();

    float current_pmic = get_voltage();
    int   iterations   = 0;
    float measured_v;



    do {
        /* Lecture SYSMON : bits [31:16] = tension, Q = 3V/65536 */
        u32 raw = Xil_In32(sysmon_addr);
        measured_v = (float)((raw >> 16) & 0xFFFF) * 3.0f / 65536.0f;

        if (measured_v < target_v - step_v) {
            current_pmic += step_v;
            if (current_pmic > vmax) current_pmic = vmax;
            set_voltage(current_pmic);

        } else if (measured_v > target_v + step_v) {
            current_pmic -= step_v;
            if (current_pmic < 0.700f) current_pmic = 0.700f;
            set_voltage(current_pmic);

        } else {
            break;
        }

        usleep(10000);
        iterations++;

    } while (iterations < 100);



    return current_pmic;
}

/* =========================================================================
 * regulate_vccint_auto
 *
 * Version simplifiee de regulate_vccint.
 *
 * Le pas d'ajustement est calcule automatiquement depuis VOUT_MODE :
 *   pas = 1 / scale = 1 LSB de la resolution courante
 *
 * Ainsi la boucle s'arrete des que le SYSMON est a moins d'un pas
 * de la cible — en dessous de cette precision, le PMIC ne peut de
 * toute facon pas faire mieux.
 *
 *   Resolution 1 (scale=256)  : pas = 3.906 mV
 *   Resolution 2 (scale=512)  : pas = 1.953 mV
 *   Resolution 3 (scale=4096) : pas = 0.244 mV
 * ========================================================================= */
float regulate_vccint_auto(float target_v, float vmax, u32 sysmon_addr)
{
    u8  vout_mode = (u8)(reg_read(PMIC_REG_VOUT_MODE) & 0xFF);
    u16 scale     = vout_mode_to_scale(vout_mode);
    if (scale == 0) return get_voltage();

    float step = 1.0f / (float)scale;

    return regulate_vccint(target_v, vmax, sysmon_addr, step);
}

/* =========================================================================
 * read_register / write_register
 *
 * Fonctions utilitaires generiques pour lire ou ecrire un registre
 * 16 bits quelconque dans la page courante du PMIC.
 * ========================================================================= */
u16 read_register(int reg)
{
    return reg_read((u8)reg);
}

void write_register(int reg, u16 command)
{
    reg_write((u8)reg, command);
}
