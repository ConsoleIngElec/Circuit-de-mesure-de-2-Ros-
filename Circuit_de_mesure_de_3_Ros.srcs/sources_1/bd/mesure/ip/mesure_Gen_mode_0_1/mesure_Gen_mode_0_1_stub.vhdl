-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Mar 20 15:49:45 2026
-- Host        : poste-16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/cmbouba/Mes_projets_pour_le_stage/Circuit_de_mesure_de_3_Ros/Circuit_de_mesure_de_3_Ros.srcs/sources_1/bd/mesure/ip/mesure_Gen_mode_0_1/mesure_Gen_mode_0_1_stub.vhdl
-- Design      : mesure_Gen_mode_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mesure_Gen_mode_0_1 is
  Port ( 
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    CE_1Hz : out STD_LOGIC;
    Mode : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Reset_RO : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Ro_sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Send : out STD_LOGIC
  );

end mesure_Gen_mode_0_1;

architecture stub of mesure_Gen_mode_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clk,Reset,CE_1Hz,Mode[5:0],Reset_RO[5:0],Ro_sel[2:0],Send";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Gen_mode,Vivado 2018.3";
begin
end;
