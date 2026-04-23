/*
 * acquisition.c
 *
 *  Created on: 31 mars 2026
 *      Author: cmbouba
 */

#include <stdio.h>
#include <string.h>
#include "xil_io.h"
#include "xil_printf.h"
#include "xttcps.h"
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
 * Handler TTC — toutes les 0.1 seconde
 *
 *   - Lecture Temp/Voltage depuis le registre AXI
 *   - Calcul RST et envoi Duty_cycle
 *   - Régulation tension VCCINT
 *   - Affichage console
 * ========================================================================= */
void TTC_Intr_Handler(void *CallBackRef)
{
    XTtcPs *TTCInst = (XTtcPs *) CallBackRef;

    /* Acquittement de l'interruption TTC */
    u32 StatusEvent = XTtcPs_GetInterruptStatus(TTCInst);
    XTtcPs_ClearInterruptStatus(TTCInst, StatusEvent);

    if (!(StatusEvent & XTTCPS_IXR_INTERVAL_MASK)) return;

    /* Initialisation du chronomètre au premier appel */
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
    current_temp      = ((float)(reg_temp_volt & MASK_TEMP)
                        * 509.314f / 65536.0f) - 280.23f;
    current_volt_fpga = ((float)((reg_temp_volt & MASK_VOLT) >> 16)
                        * 3.0f / 65536.0f);

    /* Calcul RST et envoi du duty cycle */
    duty = RST_compute(current_temp);
    Xil_Out32(BASE_ADDR + REG_DUTY_CYCLE_OFFSET, (u32)duty);

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
}

/* =========================================================================
 * Handler Data_Ready — déclenché par le front montant de Data_Ready (IRQ0)
 *
 * Même logique que run_capture_cycle() dans l'ancien acquisition.c :
 *   - Lecture des 24 registres AXI (6 captures x 4 mots x 32 bits)
 *   - Reconstruction des fréquences par mode (6 modes x 4 ROs)
 *   - Affichage console identique à l'ancien
 *   - Écriture SD
 *   - Reset du registre capture (offset 0x6C) pour relancer le cycle
 * ========================================================================= */
void DataReady_Intr_Handler(void *CallBackRef)
{
    (void)CallBackRef;

    int    k, ro_idx;
    u32    reg_val;
    u32    frequency_32bit;
    float  freq_mhz;
    int    global_ro_id;
    char   time_str[40];
    XTime  tNow;

    /* Horodatage */
    XTime_GetTime(&tNow);
    double elapsed = (double)(tNow - tStart) / COUNTS_PER_SECOND;

    /* Lecture des 24 registres AXI et reconstruction des fréquences
     * Registres 0 à 23 (offsets 0x00 à 0x5C)
     * Capture k : mots 4k, 4k+1, 4k+2, 4k+3
     *   mot 0 = RO0 (DC:0),  mot 1 = RO1 (DC:1)
     *   mot 2 = RO2 (100Hz), mot 3 = RO3 (100MHz)
     */
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

        /* Affichage entête mode (identique à l'ancien acquisition.c) */
        xil_printf("\n  CAPTURE %06d | %s | Mode %d: %s | SD:%s\n",
                   cycle_count, time_str, k + 1, mode_label[k],
                   sd_ready ? "OK" : "ABSENTE");
        xil_printf("  --------------------------------------------------\n");

        /* Lecture et reconstruction des 4 ROs du mode k */
        for (ro_idx = 0; ro_idx < 4; ro_idx++) {
            int reg_num = k * 4 + ro_idx;
            reg_val = Xil_In32(BASE_ADDR + REG_CAPTURE_BASE_OFFSET
                               + reg_num * 4);
            frequency_32bit = reg_val;
            freq_mhz = (float)frequency_32bit / 1000000.0f;

            global_ro_id = k * 4 + ro_idx + 1;
            freq_all[global_ro_id - 1] = freq_mhz;

            /* Affichage identique à l'ancien acquisition.c */
            int freq_whole = (int)freq_mhz;
            int freq_frac  = (int)((freq_mhz - (float)freq_whole) * 1000.0f);
            xil_printf("    RO %-2d (%s) : %d.%03d MHz\n",
                       global_ro_id, stress_label[ro_idx], freq_whole, freq_frac);
        }
        xil_printf("\n");
    }

    /* Écriture SD */
    check_sd_card();
    write_data_line(cycle_count);

    xil_printf(">>> Fin du cycle %06d. Pause thermique (552s)...\n\r",
               cycle_count);

    cycle_count++;

    /* Reset du registre capture pour relancer le prochain cycle */
    Xil_Out32(BASE_ADDR + REG_RESET_CAPTURE_OFFSET, 0x00000001);
}
