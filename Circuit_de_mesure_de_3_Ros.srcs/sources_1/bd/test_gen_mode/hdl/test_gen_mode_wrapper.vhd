--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Fri Mar 20 13:31:06 2026
--Host        : poste-16 running 64-bit major release  (build 9200)
--Command     : generate_target test_gen_mode_wrapper.bd
--Design      : test_gen_mode_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_wrapper is
end test_gen_mode_wrapper;

architecture STRUCTURE of test_gen_mode_wrapper is
  component test_gen_mode is
  end component test_gen_mode;
begin
test_gen_mode_i: component test_gen_mode
 ;
end STRUCTURE;
