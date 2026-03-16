// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Mar 12 17:04:34 2026
// Host        : poste-16 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/cmbouba/Mes_projets_pour_le_stage/Circuit_de_mesure_de_3_Ros/Circuit_de_mesure_de_3_Ros.srcs/sources_1/bd/mesure/ip/mesure_Select_data_0_0/mesure_Select_data_0_0_stub.v
// Design      : mesure_Select_data_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Select_data,Vivado 2018.3" *)
module mesure_Select_data_0_0(Clk, Reset, Done, Send, Sel, Allow)
/* synthesis syn_black_box black_box_pad_pin="Clk,Reset,Done,Send,Sel[4:0],Allow" */;
  input Clk;
  input Reset;
  input Done;
  input Send;
  output [4:0]Sel;
  output Allow;
endmodule
