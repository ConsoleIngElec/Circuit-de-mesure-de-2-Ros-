--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Fri Mar 27 12:21:43 2026
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
  port (
    PWM_Out : out STD_LOGIC
  );
end mesure_wrapper;

architecture STRUCTURE of mesure_wrapper is
  component mesure is
  port (
    PWM_Out : out STD_LOGIC
  );
  end component mesure;
begin
mesure_i: component mesure
     port map (
      PWM_Out => PWM_Out
    );
end STRUCTURE;
