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
 * Registres 0 à 23  (offsets 0x00 à 0x5C) : 6 captures x 128 bits
 *   Capture k : registres 4k à 4k+3
 *     reg 4k+0 : Data[31:0]
 *     reg 4k+1 : Data[63:32]
 *     reg 4k+2 : Data[95:64]
 *     reg 4k+3 : Data[127:96]
 *
 * Registre 24 (offset 0x60) : Statut
 *   bit 0 = Data_Ready
 *
 * Registre 25 (offset 0x64) : Temp (bits 15:0) + Voltage (bits 31:16)
 * Registre 26 (offset 0x68) : Duty_cycle (bits 15:0)
 * Registre 27 (offset 0x6C) : Reset capture (bit 0 = reset, auto-clear)
 * ------------------------------------------------------------------------- */
#define REG_CAPTURE_BASE_OFFSET   0x00
#define REG_STATUS_OFFSET         0x60
#define REG_TEMP_VOLT_OFFSET      0x64
#define REG_DUTY_CYCLE_OFFSET     0x68
#define REG_RESET_CAPTURE_OFFSET  0x6C

/* -------------------------------------------------------------------------
 * Masques
 * ------------------------------------------------------------------------- */
#define MASK_DATA_READY    0x00000001
#define MASK_TEMP          0x0000FFFF
#define MASK_VOLT          0xFFFF0000

/* -------------------------------------------------------------------------
 * Configuration VCCINT
 * ------------------------------------------------------------------------- */
#define VCCINT_VOLTAGE     0.850f
#define VCCINT_VMAX        1.100f

/* -------------------------------------------------------------------------
 * Régulation RST
 * ------------------------------------------------------------------------- */
#define TEMP_REF_C         40.0
#define PWM_SAT            65535.0

/* -------------------------------------------------------------------------
 * Interruptions
 * ------------------------------------------------------------------------- */
#define INTC_DEVICE_ID              XPAR_PSU_ACPU_GIC_DEVICE_ID
#define TIMER_IRPT_INTR             XPAR_XTTCPS_0_INTR        /* TTC0 -> 0.1s */
#define DATA_READY_IRPT_INTR        XPS_FPGA0_INT_ID /* Data_Ready PL->PS */

/* -------------------------------------------------------------------------
 * Timer TTC : période 0.1 seconde
 * ------------------------------------------------------------------------- */
#define TTC_DEVICE_ID               XPAR_XTTCPS_0_DEVICE_ID
#define TTC_TICK_HZ                 10   /* 10 Hz = 0.1 s */

#endif /* SRC_MAIN_H_ */
