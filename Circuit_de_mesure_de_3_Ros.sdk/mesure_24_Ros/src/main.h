/*
 * main.h
 *
 *  Created on: 31 mars 2026
 *      Author: cmbouba
 */

#ifndef SRC_MAIN_H_
#define SRC_MAIN_H_

#include "xparameters.h"
#include "pmic.h"

/* -------------------------------------------------------------------------
 * Adresse de base de l'IP AXI
 * ------------------------------------------------------------------------- */
#define BASE_ADDR              XPAR_IP_CONVERSION_AXI_0_S00_AXI_BASEADDR

/* -------------------------------------------------------------------------
 * Carte mémoire des registres AXI
 *
 * Registres 0 à 23 (offsets 0x00 à 0x5C) : 6 captures x 128 bits
 *   Capture k : registres 4k à 4k+3
 *
 * Registre 24 (offset 0x60) : Statut
 *   bit 0 = Data_Ready
 *   bit 1 = TV_Ready
 *
 * Registre 25 (offset 0x64) : Temp_Voltage (bits 31:16 = Temp, bits 15:0 = Voltage)
 *                             /!\ vérifie l'ordre selon ton VHDL final
 *
 * Registre 26 (offset 0x68) : Duty_cycle (bits 15:0)
 *
 * Registre 27 (offset 0x6C) : Acquittement IRQ (auto-clear, écriture)
 *   bit 0 = ack Data_Ready
 *   bit 1 = ack TV_Ready
 * ------------------------------------------------------------------------- */
#define REG_CAPTURE_BASE_OFFSET   0x00
#define REG_STATUS_OFFSET         0x60
#define REG_TEMP_VOLT_OFFSET      0x64
#define REG_DUTY_CYCLE_OFFSET     0x68
#define REG_ACK_IRQ_OFFSET        0x6C

/* -------------------------------------------------------------------------
 * Masques
 * ------------------------------------------------------------------------- */
#define MASK_DATA_READY        0x00000001
#define MASK_TV_READY          0x00000002
#define MASK_ACK_DATA_READY    0x00000001
#define MASK_ACK_TV_READY      0x00000002

#define MASK_TEMP              0xFFFF0000
#define MASK_VOLT              0x0000FFFF

/* -------------------------------------------------------------------------
 * Configuration VCCINT
 * ------------------------------------------------------------------------- */
#define VCCINT_VOLTAGE     0.850f
#define VCCINT_VMAX        1.100f

/* -------------------------------------------------------------------------
 * Régulation RST
 * ------------------------------------------------------------------------- */
#define TEMP_REF_C         110.0
#define PWM_SAT            2550.0

/* -------------------------------------------------------------------------
 * Interruptions
 *
 *   pl_ps_irq0 -> TV_Ready    (rafraîchissement Temp/Voltage à 10 Hz)
 *   pl_ps_irq1 -> Data_Ready  (6 captures prêtes)
 * ------------------------------------------------------------------------- */
#define INTC_DEVICE_ID              XPAR_PSU_ACPU_GIC_DEVICE_ID
#define TV_READY_IRPT_INTR          XPAR_FABRIC_IP_CONVERSION_AXI_0_TV_READY_INTR_INTR   /* pl_ps_irq0 */
#define DATA_READY_IRPT_INTR        XPAR_FABRIC_IP_CONVERSION_AXI_0_DATA_READY_INTR_INTR  /* pl_ps_irq1 */

#endif /* SRC_MAIN_H_ */
