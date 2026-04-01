/*
 * pmic.h

 *
 *  Created on: 31 mars 2026
 *      Author: cmbouba
 */

/***************************************************************************************************/
/*****************************************PMIC.H***************************************************/
/***************************************************************************************************/

/*This header declares functions to control the PMIC IRPS5401 mounted on the Avnet Ultra96-V2
 board to power the XCZU3EG FPGA. Communication uses the I2C/PMBus protocol.

On the Avnet Ultra96-V2 board there are 2 PMICs, so 8 voltage outputs :

PMIC #1 (IIC slave address ==> 0x13) :
     LOOP A : VCCAUX
     LOOP B : VCCO
     LOOP C : VCCO PSDDR
     LOOP D : VCCINT

PMIC #2 (IIC slave address ==> 0x14) :
     LOOP A : VCCPSAUX
     LOOP B : PSINT_LP
     LOOP C : VCCO
     LOOP D : PSINT_FP

CAUTION : When selecting the voltage value make sure that the circuit is not damaged.
Avnet advises to use a voltage between 0.825V and 0.875V for VCCINT.

***************************************************************************************************/

/***************************************PMBus REGISTER MAP*****************************************/
/*
 * VOUT_MODE     : 0x20  sets format and exponent for all VOUT related commands
 *                        Linear mode supported, exponents -8 and -9 used here :
 *                          0x18 → exponent -8 → step = 1/256  ≈ 3.906 mV  (default)
 *                          0x19 → exponent -9 → step = 1/512  ≈ 1.953 mV
 *
 * VOUT_COMMAND  : 0x21  sets the target output voltage in the format set by VOUT_MODE
 * VOUT_MAX      : 0x24  upper limit on the output voltage the PMIC can command
 *
 * NOTE : registers 0x40 (VOUT_OV_FAULT_LIMIT) and 0x42 (VOUT_OV_WARN_LIMIT) are NOT
 *        VOUT_MODE and VOUT_COMMAND — do not confuse them.
 ***************************************************************************************************/


#ifndef SRC_PMIC_H_
#define SRC_PMIC_H_

#include "xiicps.h"

/*Select channel in IIC MUX (8 channels). PMIC channel is channel 5 → value 0x10*/
void set_channel_IIC_MUX(int IIC_MUX_Addr, u8 Channel);

/*Select PMBus page in PMIC (24 pages available). Choose LOOP A, B, C or D PMBus page.
 * Loop values : 0xA, 0xA1, 0xB, 0xB1, 0xC, 0xC1, 0xD, 0xD1, 0xD0 */
void set_PMIC_page(int Loop);

/*Set VOUT_MAX (register 0x24) to a value larger than VOUT_COMMAND.
 * Required : VOUT_MAX must always be >= VOUT_COMMAND, otherwise the PMIC clamps the output.
 * Reads current VOUT_MODE first to compute the correct raw command value. */
void set_Vmax(float Vmax);

/*Change VOUT_MODE exponent (register 0x20) and update VOUT_COMMAND immediately after.
 * Resolution 1 : exponent -8 → step 1/256 ≈ 3.906 mV  (default after power-on)
 * Resolution 2 : exponent -9 → step 1/512 ≈ 1.953 mV
 *
 * IMPORTANT : VOUT_MODE and VOUT_COMMAND are written back-to-back with no delay between
 * them to avoid a transient wrong voltage that would trigger the UVP and cut the board. */
void set_resolution(int Resolution);

/*Set VOUT_COMMAND (register 0x21) to the requested voltage in Volts.
 * Reads VOUT_MODE first to adapt the raw command to the current resolution.
 * Supported resolutions : -8 (0x18) and -9 (0x19). */
void set_voltage(float Voltage);

/*Read a 16-bit PMBus register. Call set_PMIC_page() first to select the correct page. */
u16 read_register(int reg);

/*Write a 16-bit value to a PMBus register. Call set_PMIC_page() first to select the correct page. */
void write_register(int reg, u16 command);

/*Read SMBALERT mask register for a given status register code. */
u16 READ_SMBALERT_MASK(int status);

/*Write SMBALERT mask register for a given status register code and mask value. */
void WRITE_SMBALERT_MASK(int status, int mask);



#endif /* SRC_PMIC_H_ */
