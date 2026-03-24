-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Mar 20 13:31:53 2026
-- Host        : poste-16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/cmbouba/Mes_projets_pour_le_stage/Circuit_de_mesure_de_3_Ros/Circuit_de_mesure_de_3_Ros.srcs/sources_1/bd/test_gen_mode/ip/test_gen_mode_All_Ro_out_0_1/test_gen_mode_All_Ro_out_0_1_stub.vhdl
-- Design      : test_gen_mode_All_Ro_out_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_gen_mode_All_Ro_out_0_1 is
  Port ( 
    CE_1Hz : in STD_LOGIC;
    Mode : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Ro_sel : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Stress : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Data : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );

end test_gen_mode_All_Ro_out_0_1;

architecture stub of test_gen_mode_All_Ro_out_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CE_1Hz,Mode[5:0],Reset_RO[5:0],Ro_sel[2:0],Stress[3:0],Data[127:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "All_Ro_out,Vivado 2018.3";
begin
end;
