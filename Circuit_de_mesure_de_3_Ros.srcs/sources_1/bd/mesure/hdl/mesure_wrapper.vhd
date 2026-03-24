--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Tue Mar 24 09:32:51 2026
--Host        : poste-16 running 64-bit major release  (build 9200)
--Command     : generate_target mesure_wrapper.bd
--Design      : mesure_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mesure_wrapper is
end mesure_wrapper;

architecture STRUCTURE of mesure_wrapper is
  component mesure is
  end component mesure;
begin
mesure_i: component mesure
 ;
end STRUCTURE;
