-- (c) Copyright 1995-2026 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:Mux_data:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY mesure_Mux_data_0_0 IS
  PORT (
    Data_in : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    Temp2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    Voltage2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    Sel : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    Data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END mesure_Mux_data_0_0;

ARCHITECTURE mesure_Mux_data_0_0_arch OF mesure_Mux_data_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF mesure_Mux_data_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Mux_data IS
    GENERIC (
      Stress_Number : INTEGER
    );
    PORT (
      Data_in : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      Temp2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      Voltage2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      Sel : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      Data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
  END COMPONENT Mux_data;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF mesure_Mux_data_0_0_arch: ARCHITECTURE IS "Mux_data,Vivado 2018.3";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF mesure_Mux_data_0_0_arch : ARCHITECTURE IS "mesure_Mux_data_0_0,Mux_data,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF mesure_Mux_data_0_0_arch: ARCHITECTURE IS "mesure_Mux_data_0_0,Mux_data,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Mux_data,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,Stress_Number=4}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF mesure_Mux_data_0_0_arch: ARCHITECTURE IS "module_ref";
BEGIN
  U0 : Mux_data
    GENERIC MAP (
      Stress_Number => 4
    )
    PORT MAP (
      Data_in => Data_in,
      Temp2 => Temp2,
      Voltage2 => Voltage2,
      Sel => Sel,
      Data_out => Data_out
    );
END mesure_Mux_data_0_0_arch;
