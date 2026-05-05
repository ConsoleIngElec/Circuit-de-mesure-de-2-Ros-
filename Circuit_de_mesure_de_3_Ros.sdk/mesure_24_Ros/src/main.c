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

XScuGic INTCInst;

int main(void)
{
    init_platform();

    int status;

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
        // Partie qui nous sert pour la suivi de la régulation
        write_temp_header();
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
     * Interruption 1 : TV_Ready PL->PS (pl_ps_irq0)
     * Déclenchée par le PL toutes les 0.1 s lorsqu'une nouvelle valeur
     * Temp/Voltage est mémorisée dans l'Axi_Lite.
     * ------------------------------------------------------------------- */
    XScuGic_SetPriorityTriggerType(&INTCInst, TV_READY_IRPT_INTR, 0xA0, 0x1);
    status = XScuGic_Connect(&INTCInst, TV_READY_IRPT_INTR,
            (Xil_ExceptionHandler) TVReady_Intr_Handler, NULL);
    if (status != XST_SUCCESS) {
        xil_printf("[GIC] Erreur connexion TV_Ready\n\r");
        return XST_FAILURE;
    }
    XScuGic_Enable(&INTCInst, TV_READY_IRPT_INTR);

    /* -------------------------------------------------------------------
     * Interruption 2 : Data_Ready PL->PS (pl_ps_irq1)
     * Déclenchée par le PL quand les 6 captures sont prêtes.
     * Lecture des 24 registres AXI, écriture SD, ack capture.
     * ------------------------------------------------------------------- */
    XScuGic_SetPriorityTriggerType(&INTCInst, DATA_READY_IRPT_INTR, 0xB0, 0x3);
    status = XScuGic_Connect(&INTCInst, DATA_READY_IRPT_INTR,
            (Xil_ExceptionHandler) DataReady_Intr_Handler, NULL);
    if (status != XST_SUCCESS) {
        xil_printf("[GIC] Erreur connexion Data_Ready\n\r");
        return XST_FAILURE;
    }
    XScuGic_Enable(&INTCInst, DATA_READY_IRPT_INTR);

    xil_printf("[SYSTEME] Interruptions actives. En attente...\n\r");

    while (1) {
                }

}
