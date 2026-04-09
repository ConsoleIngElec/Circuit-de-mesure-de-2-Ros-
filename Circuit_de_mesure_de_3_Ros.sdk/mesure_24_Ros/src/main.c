/*
 * main.c
 *
 *  Created on: 31 mars 2026
 *      Author: cmbouba
 */

#include <stdio.h>
#include <string.h>
#include "platform.h"
#include "xtime_l.h"
#include "sleep.h"
#include "xil_io.h"
#include "main.h"
#include "acquisition.h"
#include "sd_logger.h"
#include "pmic.h"
#include "rst.h"

int main()
{
    init_platform();

    int   i;
    int   cycle_count       = 1;
    XTime tStart;
    float current_temp      = 0.0f;
    float current_volt_fpga = 0.0f;
    u32   reg_temp_volt;
    u16   duty              = 0;

    printf("\n******************************************************\n");
    printf("* SYSTEME DE CARACTERISATION AUTOMATISEE DES ROs       *\n");
    printf("* Societe   : Universite de Bordeaux                   *\n");
    printf("* Ingenieur : Console MBOUBA                           *\n");
    printf("********************************************************\n");

    /* -----------------------------------------------------------------------
     * Initialisation PMIC
     * ----------------------------------------------------------------------- */
    set_channel_IIC_MUX(IIC_MUX_ADDR, IIC_MUX_PMIC_CH);
    usleep(50000);
    set_PMIC_page(PMIC_PAGE_VCCINT);
    usleep(50000);
    set_resolution(VCCINT_RESOLUTION, VCCINT_VOLTAGE, VCCINT_VMAX);
    usleep(50000);
    regulate_vccint_auto(VCCINT_VOLTAGE, VCCINT_VMAX,
                         BASE_ADDR + REG_TEMP_VOLT_OFFSET);
    {
        int mv_w = (int)(VCCINT_VOLTAGE * 1000.0f) / 1000;
        int mv_f = (int)(VCCINT_VOLTAGE * 1000.0f) % 1000;
        printf("[PMIC] Tension cible VCCINT : %d.%03d V\r\n", mv_w, mv_f);
    }

    /* -----------------------------------------------------------------------
     * Initialisation RST
     * ----------------------------------------------------------------------- */
    RST_init();
    printf("[RST] Correcteur initialise. Consigne : %.2f C\n\r",
           (float)TEMP_REF_C);

    /* -----------------------------------------------------------------------
     * Initialisation SD
     * ----------------------------------------------------------------------- */
    printf("[SD] Initialisation... ");
    if (remount_sd()) {
        sd_logger_init();
        printf("[OK]\n\r");
        write_header();
    } else {
        printf("[ERREUR] Carte SD absente. Mode console uniquement.\n\r");
    }

    XTime_GetTime(&tStart);

    /* -----------------------------------------------------------------------
     * Boucle principale
     * ----------------------------------------------------------------------- */
    while (1)
    {
        check_sd_card();

        /* -------------------------------------------------------------------
         * 1. Lecture SYSMON via AXI
         * ------------------------------------------------------------------- */
        reg_temp_volt     = Xil_In32(BASE_ADDR + REG_TEMP_VOLT_OFFSET);
        current_temp      = ((float)(reg_temp_volt & MASK_TEMP)
                            * 509.314f / 65536.0f) - 280.23f;
        current_volt_fpga = ((float)((reg_temp_volt & MASK_VOLT) >> 16)
                            * 3.0f / 65536.0f);

        /* -------------------------------------------------------------------
         * 2. Calcul RST et envoi vers le PL
         * ------------------------------------------------------------------- */
        duty = RST_compute(current_temp);
        Xil_Out32(BASE_ADDR + REG_DUTY_CYCLE_OFFSET, (u32)duty);
        Xil_Out32(BASE_ADDR + REG_DONE_OFFSET,        0x00000001);

        /* -------------------------------------------------------------------
         * 3. Affichage
         * ------------------------------------------------------------------- */
        printf("\n\n>>> DEBUT DU CYCLE N %06d", cycle_count);
        printf(" | SD : %s\n", sd_ready ? "[OK]" : "[ABSENTE]");
        printf(">>> V_FPGA = %.3f V | T_FPGA = %.2f C\n",
               current_volt_fpga, current_temp);
        printf("--------------------------------------------------------\n");

        /* -------------------------------------------------------------------
         * 4. Reinitialisation des buffers
         * ------------------------------------------------------------------- */
        for (i = 0; i < NB_RO; i++) freq_all[i] = 0.0f;
        for (i = 0; i < NB_MODES; i++) {
            elapsed_mode[i] = 0.0;
            strcpy(time_mode[i], "00h:00min:00s");
        }

        /* -------------------------------------------------------------------
         * 5. Captures ROs
         * ------------------------------------------------------------------- */
        run_capture_cycle(cycle_count, tStart);

        /* -------------------------------------------------------------------
         * 6. Enregistrement SD
         * ------------------------------------------------------------------- */
        write_data_line(cycle_count);

        printf(">>> Fin du cycle %06d. Pause thermique (300s)...\n",
               cycle_count);

        /* -------------------------------------------------------------------
         * 7. Pause thermique 5 minutes
         *    RST mis à jour toutes les 5 secondes
         * ------------------------------------------------------------------- */
        for (i = 0; i < 60; i++)
        {
            usleep(5000000);
            check_sd_card();

            reg_temp_volt     = Xil_In32(BASE_ADDR + REG_TEMP_VOLT_OFFSET);
            current_temp      = ((float)(reg_temp_volt & MASK_TEMP)
                                * 509.314f / 65536.0f) - 280.23f;
            current_volt_fpga = ((float)((reg_temp_volt & MASK_VOLT) >> 16)
                                * 3.0f / 65536.0f);

            duty = RST_compute(current_temp);
            Xil_Out32(BASE_ADDR + REG_DUTY_CYCLE_OFFSET, (u32)duty);
            Xil_Out32(BASE_ADDR + REG_DONE_OFFSET,        0x00000001);

            printf("[PAUSE %2d/60] V_FPGA = %.3f V | T_FPGA = %.2f C\n\r",
                   i + 1, current_volt_fpga, current_temp);
        }

        cycle_count++;
    }

    cleanup_platform();
    return 0;
}
