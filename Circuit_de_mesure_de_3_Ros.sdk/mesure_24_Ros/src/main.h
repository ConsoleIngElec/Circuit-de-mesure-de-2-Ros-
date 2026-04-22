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
 * Adresse de base de l'IP
 * ------------------------------------------------------------------------- */
#define BASE_ADDR              XPAR_IP_CONVERSION_AXI_0_S00_AXI_BASEADDR

/* -------------------------------------------------------------------------
 * Offsets des registres
 * ------------------------------------------------------------------------- */
#define REG_DATA_ALLOW_OFFSET  0
#define REG_TEMP_VOLT_OFFSET   4
#define REG_DONE_OFFSET        8
#define REG_DUTY_CYCLE_OFFSET  12

/* -------------------------------------------------------------------------
 * Masques de bits
 * ------------------------------------------------------------------------- */
#define MASK_DATA              0xFF
#define MASK_ALLOW             0x100
#define MASK_TEMP              0xFFFF
#define MASK_VOLT              0xFFFF0000

/* -------------------------------------------------------------------------
 * Configuration VCCINT
 *
 *   VCCINT_VOLTAGE    : tension cible en volts
 *
 *   VCCINT_VMAX       : plafond de securite ecrit dans VOUT_MAX.
 *                       Doit etre >= VCCINT_VOLTAGE.
 *
 *   VCCINT_RESOLUTION :  resolution du DAC de tension du PMIC.
 *                       1 = ~3.906 mV/LSB  (VOUT_MODE = 0x18, exp=-8)
 *                           valeur OTP par defaut Avnet
 *                       2 = ~1.953 mV/LSB  (VOUT_MODE = 0x17, exp=-9)
 *                           accessible a chaud depuis RES_1 mais après
 *                           un reset.
 *                       3 = ~0.244 mV/LSB  (VOUT_MODE = 0x14, exp=-12)
 *                           inaccessible a chaud : le changement de scale
 *                           provoque une chute fatale de VCCINT qui detruit
 *                           l'etat du PS Zynq. Accessible uniquement via
 *                           reprogrammation OTP ou maitre I2C externe avant
 *                           demarrage du Zynq
 * ------------------------------------------------------------------------- */

#define VCCINT_VOLTAGE         0.850f
#define VCCINT_VMAX            1.100f
#define VCCINT_RESOLUTION      2

/* -------------------------------------------------------------------------
 * Régulation RST
 * ------------------------------------------------------------------------- */
#define TEMP_REF_C             40.0    // Consigne température en °C
#define PWM_SAT                65535.0 // Saturation imposée par l'AXI 16 bits

#endif /* SRC_MAIN_H_ */
