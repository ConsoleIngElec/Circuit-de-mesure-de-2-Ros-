-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Mar 18 13:36:41 2026
-- Host        : poste-16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/cmbouba/Mes_projets_pour_le_stage/Circuit_de_mesure_de_3_Ros/Circuit_de_mesure_de_3_Ros.srcs/sources_1/bd/test_gen_mode/ip/test_gen_mode_Gen_stress_0_0/test_gen_mode_Gen_stress_0_0_stub.vhdl
-- Design      : test_gen_mode_Gen_stress_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_gen_mode_Gen_stress_0_0 is
  Port ( 
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Stress : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end test_gen_mode_Gen_stress_0_0;

architecture stub of test_gen_mode_Gen_stress_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clk,Reset,Stress[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Gen_stress,Vivado 2018.3";
begin
end;
