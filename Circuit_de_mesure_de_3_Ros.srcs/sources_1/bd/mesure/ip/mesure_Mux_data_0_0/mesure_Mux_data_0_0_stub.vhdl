-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Mar 12 17:04:34 2026
-- Host        : poste-16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/cmbouba/Mes_projets_pour_le_stage/Circuit_de_mesure_de_3_Ros/Circuit_de_mesure_de_3_Ros.srcs/sources_1/bd/mesure/ip/mesure_Mux_data_0_0/mesure_Mux_data_0_0_stub.vhdl
-- Design      : mesure_Mux_data_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mesure_Mux_data_0_0 is
  Port ( 
    Data_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    Sel : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Data_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end mesure_Mux_data_0_0;

architecture stub of mesure_Mux_data_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Data_in[127:0],Sel[4:0],Data_out[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Mux_data,Vivado 2018.3";
begin
end;
