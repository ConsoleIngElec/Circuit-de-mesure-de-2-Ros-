/*
 * pmic.h
 *
 *  Created on: 31 mars 2026
 *      Author: cmbouba
 *
 *  Driver baremetal pour le PMIC Infineon IRPS5401
 *  Plateforme : Avnet Ultra96v2 (Zynq UltraScale+ XCZU3EG)
 *
 *  Reference : UN0065 - IRPS5401 Register Map V1.3 (Infineon, Sept. 2019)
 *
 *  Architecture memoire du PMIC (UN0065 p.3) :
 *
 *  Le PMIC organise ses registres en sections par sortie de tension.
 *  Chaque sortie possede deux espaces d'adresses distincts :
 *    - Trim and User  : parametres de calibration internes
 *    - PMBus          : registres de commande accessibles via I2C
 *
 *  VCCINT correspond au Loop D :
 *    Base Trim/User  = 0x1000
 *    Base PMBus      = 0x1200  <- section utilisee dans ce driver
 *
 *  Les offsets ci-dessous sont les offsets PMBus de Loop D.
 *  Adresse globale = 0x1200 + offset * 2
 *  Exemple : VOUT_MODE (offset 0x40) -> adresse globale 0x1240
 *
 *  Acces I2C : le registre 0xFF est le selecteur de page. On ecrit
 *  la page 0x12 dans ce registre, puis on adresse les offsets
 *  directement via le bus I2C.
 */

#ifndef SRC_PMIC_H_
#define SRC_PMIC_H_

#include "xiicps.h"
#include "xparameters.h"
#include "sleep.h"

/* -------------------------------------------------------------------------
 * Configuration materielle
 *
 * PMIC_I2C_ADDR : adresse I2C du PMIC = base OTP (0x10) + offset
 *                 resistif (+3) sur la broche ADDR_PROT
 * ------------------------------------------------------------------------- */
#define PMIC_DEVICE_ID       XPAR_PSU_I2C_1_DEVICE_ID
#define PMIC_SCLK_RATE       100000
#define PMIC_I2C_ADDR        0x13
#define IIC_MUX_ADDR         0x75
#define IIC_MUX_PMIC_CH      0x10

/* -------------------------------------------------------------------------
 * Selecteur de page et page VCCINT
 *
 * Le registre 0xFF est le selecteur de page du PMIC. Toute ecriture
 * dans ce registre change la page active pour les acces I2C suivants.
 * VCCINT (Loop D PMBus) est accessible sur la page 0x12.
 * ------------------------------------------------------------------------- */
#define PMIC_REG_PAGE        0xFF
#define PMIC_PAGE_VCCINT     0x12

/* -------------------------------------------------------------------------
 * Registres PMBus VCCINT (offsets dans la page 0x12)
 *
 * Loop D base address = 0x1200, Page PMBus = 3
 *
 * CMD PMBus | Offset | Registre              | Role
 * ----------+--------+-----------------------+-----------------------------
 *   0x20    |  0x40  | VOUT_MODE             | Resolution du DAC (scale)
 *   0x21    |  0x42  | VOUT_COMMAND          | Tension cible
 *   0x24    |  0x48  | VOUT_MAX              | Plafond de securite
 *   0x27    |  0x4E  | VOUT_TRANSITION_RATE  | Vitesse de rampe
 *   0x40    |  0x80  | VOUT_OV_FAULT_LIMIT   | Seuil coupure sur-tension
 *   0x42    |  0x84  | VOUT_OV_WARN_LIMIT    | Seuil warning sur-tension
 *   0x43    |  0x86  | VOUT_UV_WARN_LIMIT    | Seuil warning sous-tension
 *   0x44    |  0x88  | VOUT_UV_FAULT_LIMIT   | Seuil coupure sous-tension
 *   0x45    |  0x8A  | VOUT_UV_FAULT_RESPONSE| Comportement sur fault UV
 *   0x03    |  0x06  | CLEAR_FAULTS          | Efface les registres fault
 *   0x79    |  0xF2  | STATUS_WORD           | Statut global 16 bits
 *   0x7A    |  0xF4  | STATUS_VOUT           | Statut tension (faults)
 * ------------------------------------------------------------------------- */
#define PMIC_REG_VOUT_MODE          0x40
#define PMIC_REG_VOUT_CMD           0x42
#define PMIC_REG_VOUT_MAX           0x48
#define PMIC_REG_VOUT_TRANSITION    0x4E
#define PMIC_REG_VOUT_OV_FAULT      0x80
#define PMIC_REG_VOUT_OV_WARN       0x84
#define PMIC_REG_VOUT_UV_WARN       0x86
#define PMIC_REG_VOUT_UV_FAULT      0x88
#define PMIC_REG_VOUT_UV_RESPONSE   0x8A
#define PMIC_REG_CLEAR_FAULTS       0x06
#define PMIC_REG_STATUS_WORD        0xF2
#define PMIC_REG_STATUS_VOUT        0xF4

/* -------------------------------------------------------------------------
 * Valeurs du registre VOUT_MODE
 *
 * VOUT_MODE definit l'exposant de l'encodage lineaire des tensions.
 * La tension est encodee comme : Tension (V) = mantisse / scale
 * avec scale = 2^|exposant|.
 *
 * Seules trois valeurs sont supportees par l'IRPS5401 :
 * ------------------------------------------------------------------------- */
#define VOUT_MODE_EXP_N8     0x18   /* exp=-8,  scale=256,  pas ~3.906 mV  */
#define VOUT_MODE_EXP_N9     0x17   /* exp=-9,  scale=512,  pas ~1.953 mV  */
#define VOUT_MODE_EXP_N12    0x14   /* exp=-12, scale=4096, pas ~0.244 mV  */

/* Alias lisibles pour l'argument Resolution de set_resolution()      */
#define PMIC_RES_1    1   /* ~3.906 mV/LSB  valeur OTP par defaut Avnet */
#define PMIC_RES_2    2   /* ~1.953 mV/LSB                               */
#define PMIC_RES_3    3   /* ~0.244 mV/LSB  Inaccessible a chaud : le changement
                             de scale depuis RES_1 ou RES_2 provoque une chute
                             fatale de VCCINT qui detruit l'etat du PS Zynq.
                             Accessible uniquement via reprogrammation OTP ou via
                             un maitre I2C externe avant le demarrage du Zynq. */

/* -------------------------------------------------------------------------
 * Valeurs du registre VOUT_UV_FAULT_RESPONSE
 *
 * Ce registre definit le comportement du PMIC lors d'une detection
 * de sous-tension sur VOUT. Il est temporairement mis a IGNORE pendant
 * les changements de resolution pour eviter un shutdown intempestif
 * sur la chute transitoire de tension.
 * ------------------------------------------------------------------------- */
#define VOUT_UV_RESPONSE_IGNORE    0x00   /* Le PMIC ignore la sous-tension */
#define VOUT_UV_RESPONSE_SHUTDOWN  0x80   /* Le PMIC coupe la sortie        */

/* -------------------------------------------------------------------------
 * API publique
 * ------------------------------------------------------------------------- */

/*
 * set_channel_IIC_MUX
 * Selectionne le canal du multiplexeur I2C TCA9544A.
 * A appeler avant toute communication avec le PMIC.
 * Canal PMIC sur l'Ultra96v2 : IIC_MUX_PMIC_CH (0x10)
 */
void set_channel_IIC_MUX(int IIC_MUX_Addr, u8 Channel);

/*
 * set_PMIC_page
 * Selectionne la page interne du PMIC via le registre 0xFF.
 * Utiliser PMIC_PAGE_VCCINT (0x12) pour acceder aux registres VCCINT.
 */
void set_PMIC_page(u8 page);

/*
 * set_Vmax
 * Ecrit VOUT_MAX dans le scale courant.
 * VOUT_MAX est un plafond materiel : toute commande VOUT_COMMAND
 * superieure a cette valeur sera ignoree par le PMIC.
 */
void set_Vmax(float Vmax);

/*
 * set_resolution
 * Change la resolution du DAC et applique la tension cible.
 *
 * Le changement de resolution implique une chute transitoire de tension
 * car VOUT_MODE modifie instantanement l'interpretation de VOUT_COMMAND.
 * La sequence desactive UV_FAULT_RESPONSE pendant la transition pour
 * eviter un shutdown, puis restaure la protection apres stabilisation.
 *
 * Parametres :
 *   Resolution : PMIC_RES_1, PMIC_RES_2 ou PMIC_RES_3
 *   Voltage    : tension cible en volts
 *   Vmax       : plafond de securite en volts (>= Voltage)
 */
void set_resolution(int Resolution, float Voltage, float Vmax);

/*
 * set_voltage
 * Applique une tension en ecrivant la mantisse dans VOUT_COMMAND.
 * Le scale est lu depuis VOUT_MODE : mantisse = (u16)(Voltage * scale)
 */
void set_voltage(float Voltage);

/*
 * get_voltage
 * Lit la tension depuis VOUT_COMMAND et retourne la valeur en volts.
 * Retourne : mantisse / scale
 */
float get_voltage(void);

/*
 * get_resolution_raw
 * Retourne la valeur brute du registre VOUT_MODE.
 */
u8 get_resolution_raw(void);

/*
 * pmic_clear_faults
 * Efface tous les registres de fault via CLEAR_FAULTS.
 */
void pmic_clear_faults(void);

/*
 * pmic_print_info
 * Affiche la tension courante (VOUT_COMMAND) et la resolution active
 * (VOUT_MODE) sur la console serie.
 */
void pmic_print_info(void);

/*
 * pmic_dump_registers
 * Lit et affiche tous les registres importants de VCCINT :
 * tension, resolution, plafond, seuils UV/OV, statut faults.
 */
void pmic_dump_registers(void);

/*
 * regulate_vccint_auto
 *
 * Boucle de regulation SYSMON -> PMIC.
 *
 * Le SYSMON est integre dans le die du Zynq et mesure la tension
 * reelle aux bornes des cellules logiques du FPGA, apres la chute
 * resistive dans les pistes PCB. C'est la tension physiquement
 * pertinente pour la caracterisation des Ring Oscillators.
 *
 * Cette fonction ajuste VOUT_COMMAND pas a pas jusqu'a ce que le
 * SYSMON atteigne target_v. Le pas est calcule automatiquement
 * depuis VOUT_MODE : pas = 1/scale = 1 LSB de la resolution courante.
 *
 * La boucle s'arrete quand |SYSMON - target_v| <= 1 pas, car en
 * dessous de cette precision le PMIC ne peut pas faire mieux.
 *
 * Parametres :
 *   target_v    : tension cible en volts au SYSMON (tension du FPGA)
 *   vmax        : plafond de securite en volts
 *   sysmon_addr : BASE_ADDR + REG_TEMP_VOLT_OFFSET
 *
 * Retourne la tension PMIC finale appliquee.
 */
float regulate_vccint_auto(float target_v, float vmax, u32 sysmon_addr);

/*
 * regulate_vccint
 *
 * Version avec pas explicite. Meme comportement que regulate_vccint_auto
 * mais le pas d'ajustement est specifie manuellement.
 *
 * Parametres :
 *   target_v    : tension cible en volts au SYSMON
 *   vmax        : plafond de securite en volts
 *   sysmon_addr : BASE_ADDR + REG_TEMP_VOLT_OFFSET
 *   step_v      : pas d'ajustement en volts (ex: 1.0f/512.0f pour res 2)
 *
 * Retourne la tension PMIC finale appliquee.
 */
float regulate_vccint(float target_v, float vmax,
                      u32 sysmon_addr, float step_v);

/*
 * read_register / write_register
 * Acces generique a un registre 16 bits dans la page courante.
 */
u16  read_register(int reg);
void write_register(int reg, u16 command);

#endif /* SRC_PMIC_H_ */
