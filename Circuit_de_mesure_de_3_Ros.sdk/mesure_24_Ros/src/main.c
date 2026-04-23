/*
 * main.c
 *
 *  Created on: 31 mars 2026
 *      Author: cmbouba
 */

#include <stdio.h>
#include <string.h>
#include "platform.h"
#include "xparameters.h"
#include "xscugic.h"
#include "xttcps.h"
#include "xil_exception.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xtime_l.h"
#include "main.h"
#include "acquisition.h"
#include "sd_logger.h"
#include "pmic.h"
#include "RST.h"

XScuGic   INTCInst;
XTtcPs    TTCInst;

int main(void)
{
    init_platform();

    int status;
    XTtcPs_Config *TTCConfig;
    XInterval Interval;
    u8        Prescaler;

    xil_printf("\n******************************************************\n");
    xil_printf("* SYSTEME DE CARACTERISATION AUTOMATISEE DES ROs     *\n");
    xil_printf("* Societe   : Universite de Bordeaux                  *\n");
    xil_printf("* Ingenieur : Console MBOUBA                          *\n");
    xil_printf("******************************************************\n");

    /* -------------------------------------------------------------------
     * Initialisation PMIC
     * ------------------------------------------------------------------- */
    set_channel_IIC_MUX(0x75, 0x10);
    usleep(50000);
    set_PMIC_page(0xD);
    usleep(50000);
    set_Vmax(VCCINT_VMAX);
    usleep(50000);
    /* Erreur corrigée : set_resolution attend 3 arguments */
    set_resolution(2, VCCINT_VOLTAGE, VCCINT_VMAX);
    usleep(50000);

    /* -------------------------------------------------------------------
     * Initialisation RST
     * ------------------------------------------------------------------- */
    RST_init();

    /* -------------------------------------------------------------------
     * Initialisation SD
     * ------------------------------------------------------------------- */
    xil_printf("[SD] Initialisation... ");
    if (remount_sd()) {
        sd_logger_init();
        xil_printf("[OK]\n\r");
        write_header();
    } else {
        xil_printf("[ERREUR] Carte SD absente. Mode console uniquement.\n\r");
    }

    /* -------------------------------------------------------------------
     * Initialisation du contrôleur d'interruptions (GIC)
     * ------------------------------------------------------------------- */
    XScuGic_Config *GICConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
    status = XScuGic_CfgInitialize(&INTCInst, GICConfig,
                                    GICConfig->CpuBaseAddress);
    if (status != XST_SUCCESS) {
        xil_printf("[GIC] Erreur initialisation\n\r");
        return XST_FAILURE;
    }

    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
            (Xil_ExceptionHandler) XScuGic_InterruptHandler, &INTCInst);
    Xil_ExceptionEnable();

    /* -------------------------------------------------------------------
     * Interruption 1 : TTC0 — toutes les 0.1 secondes
     * Gère : lecture Temp/Voltage, calcul RST, duty cycle, affichage
     * ------------------------------------------------------------------- */
    TTCConfig = XTtcPs_LookupConfig(TTC_DEVICE_ID);
    status = XTtcPs_CfgInitialize(&TTCInst, TTCConfig, TTCConfig->BaseAddress);
    if (status != XST_SUCCESS) {
        xil_printf("[TTC] Erreur initialisation\n\r");
        return XST_FAILURE;
    }

    XTtcPs_SetOptions(&TTCInst, XTTCPS_OPTION_INTERVAL_MODE |
                                 XTTCPS_OPTION_WAVE_DISABLE);

    /* Erreur corrigée : CalcIntervalFromFreq attend des pointeurs */
    XTtcPs_CalcIntervalFromFreq(&TTCInst, TTC_TICK_HZ, &Interval, &Prescaler);
    XTtcPs_SetInterval(&TTCInst, Interval);
    XTtcPs_SetPrescaler(&TTCInst, Prescaler);

    XScuGic_SetPriorityTriggerType(&INTCInst, TIMER_IRPT_INTR, 0xA0, 0x1);
    status = XScuGic_Connect(&INTCInst, TIMER_IRPT_INTR,
            (Xil_ExceptionHandler) TTC_Intr_Handler, (void *) &TTCInst);
    if (status != XST_SUCCESS) return XST_FAILURE;

    XScuGic_Enable(&INTCInst, TIMER_IRPT_INTR);
    XTtcPs_EnableInterrupts(&TTCInst, XTTCPS_IXR_INTERVAL_MASK);
    XTtcPs_Start(&TTCInst);

    /* -------------------------------------------------------------------
     * Interruption 2 : Data_Ready PL->PS (IRQ0)
     * Gère : lecture 24 registres AXI, reconstruction fréquences,
     *        affichage, écriture SD, reset capture
     *
     * IMPORTANT : remplacer DATA_READY_IRPT_INTR par le bon define
     * trouvé dans xparameters.h (chercher IRQ0 ou PL_PS)
     * ------------------------------------------------------------------- */
    XScuGic_SetPriorityTriggerType(&INTCInst, DATA_READY_IRPT_INTR, 0xB0, 0x3);
    status = XScuGic_Connect(&INTCInst, DATA_READY_IRPT_INTR,
            (Xil_ExceptionHandler) DataReady_Intr_Handler, NULL);
    if (status != XST_SUCCESS) return XST_FAILURE;

    XScuGic_Enable(&INTCInst, DATA_READY_IRPT_INTR);

    xil_printf("[SYSTEME] Interruptions actives. En attente...\n\r");

    while (1) {
        /* Boucle principale vide : tout est géré par les interruptions */
    }

    cleanup_platform();
    return 0;
}
