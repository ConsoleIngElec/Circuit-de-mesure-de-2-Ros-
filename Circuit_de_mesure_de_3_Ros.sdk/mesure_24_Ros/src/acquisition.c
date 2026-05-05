/*
 * acquisition.c
 *
 *  Created on: 31 mars 2026
 *      Author: cmbouba
 */

#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include "xil_io.h"
#include "xil_printf.h"
#include "xtime_l.h"
#include "main.h"
#include "acquisition.h"
#include "RST.h"
#include "pmic.h"
#include "sd_logger.h"

/* -------------------------------------------------------------------------
 * Variables partagées entre les deux handlers
 * ------------------------------------------------------------------------- */
static int    cycle_count       = 1;
static XTime  tStart            = 0;
static int    tStart_init       = 0;

/* Labels des stress (identiques à l'ancien acquisition.c) */
static const char *stress_label[4] = {
    "DC:  0",
    "DC:  1",
    "100 Hz",
    "100 MHz"
};

/* Labels des modes */
static const char *mode_label[6] = {
    "RO_B 1", "RO_B 2", "RO_B 3",
    "RO_LP 1", "RO_LP 2", "RO_LP 3"
};

/* =========================================================================
 * Handler TV_Ready (pl_ps_irq0)
 *
 * Déclenché par le PL à chaque nouvelle mesure Temp/Voltage (~10 Hz).
 *
 *   - Phase de warm-up : les premieres interruptions sont rejetees pour
 *     laisser le temps au moyenneur glissant du PL (Slidding_average sur
 *     16 echantillons) de se remplir avec de vraies mesures SYSMON.
 *     Tant que ses shift registers contiennent des zeros initiaux, la
 *     sortie est une rampe lineaire et les valeurs de T et V sont fausses.
 *
 *   Apres warm-up :
 *   - Lecture Temp/Voltage depuis le registre AXI
 *   - Calcul RST et envoi Duty_cycle
 *   - Mise a jour de last_temp et last_pwm (utilises par write_data_line)
 *   - Regulation tension VCCINT
 *   - Affichage console
 *   - Acquittement de l'IRQ TV_Ready (registre 27, bit 1)
 * ========================================================================= */
void TVReady_Intr_Handler(void *CallBackRef)
{
    (void)CallBackRef;

    /* -------------------------------------------------------------------
     * Phase de warm-up
     *
     * Le moyenneur glissant du PL (Slidding_average, profondeur 2^4 = 16)
     * a besoin de 16 echantillons SYSMON avant de fournir une moyenne
     * correcte. Avant cela, sa sortie est une rampe (sum partielle / 16).
     *
     * On rejette donc les TV_WARMUP_TICKS premieres interruptions :
     *   - aucune lecture exploitee (T, V)
     *   - aucune ecriture SD
     *   - aucun appel PMIC
     *   - aucun affichage console
     *   - acquittement de l'IRQ pour autoriser la suivante
     *
     * 20 ticks a 10 Hz = 2 s : marge confortable au-dela des 16 ticks
     * minimaux requis par le moyenneur.
     * ------------------------------------------------------------------- */
    #define TV_WARMUP_TICKS 20
    static int tv_warmup = TV_WARMUP_TICKS;

    if (tv_warmup > 0) {
        tv_warmup--;
        Xil_Out32(BASE_ADDR + REG_ACK_IRQ_OFFSET, MASK_ACK_TV_READY);
        return;
    }

    /* -------------------------------------------------------------------
     * Initialisation du chronometre a la PREMIERE mesure stable.
     *
     * On le fait apres le warm-up pour que le timestamp t=0 corresponde
     * a la premiere donnee exploitable, et non au demarrage du systeme.
     * ------------------------------------------------------------------- */
    if (!tStart_init) {
        XTime_GetTime(&tStart);
        tStart_init = 1;
    }

    u32   reg_temp_volt;
    float current_temp;
    float current_volt_fpga;
    u16   duty;
    int   whole, thousandths;

    /* Lecture Temp et Voltage depuis le registre AXI (offset 0x64) */
    reg_temp_volt     = Xil_In32(BASE_ADDR + REG_TEMP_VOLT_OFFSET);
    current_temp      = ((float)((reg_temp_volt & MASK_TEMP) >> 16)
                        * 509.314f / 65536.0f) - 280.23f;
    current_volt_fpga = ((float)(reg_temp_volt & MASK_VOLT)
                        * 3.0f / 65536.0f);

    // --- Partie concernant l'enregistrement, à effacer si possible ---
    if (sd_ready) {
        write_temp_line(current_temp, current_volt_fpga);
    }

    /* Calcul RST et envoi du duty cycle */
    duty = RST_compute(current_temp);
    Xil_Out32(BASE_ADDR + REG_DUTY_CYCLE_OFFSET, (u32)duty);

    /* Mémorisation des dernières valeurs T et PWM pour write_data_line */
    last_temp = current_temp;
    last_pwm  = duty;

    /* Régulation tension VCCINT */
    double error = (double)(VCCINT_VOLTAGE - current_volt_fpga);
    if (error > 0.004f || error < -0.004f) {
        float new_v = current_volt_fpga + (float)(error * 0.1);
        if (new_v > VCCINT_VMAX) new_v = VCCINT_VMAX;
        if (new_v < 0.700f)      new_v = 0.700f;
        set_voltage(new_v);
    }

    /* Affichage Temp */
    whole = (int)current_temp;
    thousandths = (int)((current_temp - (float)whole) * 1000.0f);
    xil_printf("T=%d.%03d C  ", whole, thousandths);

    /* Affichage Voltage */
    whole = (int)current_volt_fpga;
    thousandths = (int)((current_volt_fpga - (float)whole) * 1000.0f);
    xil_printf("V=%d.%03d V  ", whole, thousandths);

    /* Affichage Duty */
    xil_printf("PWM=%d\n\r", (int)duty);

    /* Acquittement de l'IRQ TV_Ready (bit 1 du registre 27) */
    Xil_Out32(BASE_ADDR + REG_ACK_IRQ_OFFSET, MASK_ACK_TV_READY);
}

/* =========================================================================
 * Handler Data_Ready (pl_ps_irq1)
 *
 *   - Lecture des 24 registres AXI (6 captures x 4 mots x 32 bits)
 *   - Reconstruction des fréquences par mode (6 modes x 4 ROs)
 *     /!\ Stockées en Hz (uint32_t : valeur brute exacte du compteur)
 *   - Affichage console (en MHz pour rester lisible)
 *   - Écriture SD (en Hz, voir write_data_line)
 *   - Acquittement de l'IRQ Data_Ready (registre 27, bit 0)
 * ========================================================================= */
void DataReady_Intr_Handler(void *CallBackRef)
{
    (void)CallBackRef;

    int      k, ro_idx;
    uint32_t reg_val;
    int      global_ro_id;
    char     time_str[40];
    XTime    tNow;

    /* Horodatage */
    XTime_GetTime(&tNow);
    double elapsed = (double)(tNow - tStart) / COUNTS_PER_SECOND;

    for (k = 0; k < NB_MODES; k++) {

        /* Horodatage par mode */
        XTime_GetTime(&tNow);
        elapsed = (double)(tNow - tStart) / COUNTS_PER_SECOND;

        int days = (int)elapsed / 86400;
        int rest = (int)elapsed % 86400;
        int h    = rest / 3600;
        int m    = (rest % 3600) / 60;
        int s    = rest % 60;
        if (days > 0)
            sprintf(time_str, "%02dj:%02dh:%02dmin:%02ds", days, h, m, s);
        else
            sprintf(time_str, "%02dh:%02dmin:%02ds", h, m, s);

        elapsed_mode[k] = elapsed;
        strcpy(time_mode[k], time_str);

        /* Affichage entête mode */
        xil_printf("\n  CAPTURE %06d | %s | Mode %d: %s | SD:%s\n",
                   cycle_count, time_str, k + 1, mode_label[k],
                   sd_ready ? "OK" : "ABSENTE");
        xil_printf("  --------------------------------------------------\n");

        /* Lecture et reconstruction des 4 ROs du mode k */
        for (ro_idx = 0; ro_idx < 4; ro_idx++) {
            int reg_num = k * 4 + ro_idx;
            reg_val = Xil_In32(BASE_ADDR + REG_CAPTURE_BASE_OFFSET
                               + reg_num * 4);

            global_ro_id = k * 4 + ro_idx + 1;

            /* Stockage en Hz : valeur brute exacte du compteur 32 bits */
            freq_all[global_ro_id - 1] = reg_val;

            /* Affichage console en MHz : on évite le float pour garder
             * la précision exacte sur les MHz et les kHz (3 décimales). */
            uint32_t mhz_int = reg_val / 1000000U;
            uint32_t khz_rem = (reg_val % 1000000U) / 1000U;
            xil_printf("    RO %-2d (%s) : %u.%03u MHz\n",
                       global_ro_id, stress_label[ro_idx],
                       (unsigned int)mhz_int, (unsigned int)khz_rem);
        }
        xil_printf("\n");
    }

    /* Écriture SD */
    check_sd_card();
    write_data_line(cycle_count);

    xil_printf(">>> Fin du cycle %06d. Pause thermique (552s)...\n\r",
               cycle_count);

    cycle_count++;

    /* Acquittement de l'IRQ Data_Ready (bit 0 du registre 27) */
    Xil_Out32(BASE_ADDR + REG_ACK_IRQ_OFFSET, MASK_ACK_DATA_READY);
}
