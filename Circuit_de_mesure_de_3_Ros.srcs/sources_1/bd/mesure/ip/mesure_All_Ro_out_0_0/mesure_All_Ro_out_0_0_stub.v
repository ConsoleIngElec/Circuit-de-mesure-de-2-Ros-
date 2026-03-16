// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Mar 13 15:26:56 2026
// Host        : poste-16 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/cmbouba/Mes_projets_pour_le_stage/Circuit_de_mesure_de_3_Ros/Circuit_de_mesure_de_3_Ros.srcs/sources_1/bd/mesure/ip/mesure_All_Ro_out_0_0/mesure_All_Ro_out_0_0_stub.v
// Design      : mesure_All_Ro_out_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "All_Ro_out,Vivado 2018.3" *)
module mesure_All_Ro_out_0_0(CE_1Hz, Mode, Reset_RO, Stress, Ro_sel, Data)
/* synthesis syn_black_box black_box_pad_pin="CE_1Hz,Mode[5:0],Reset_RO[5:0],Stress[3:0],Ro_sel[2:0],Data[127:0]" */;
  input CE_1Hz;
  input [5:0]Mode;
  input [5:0]Reset_RO;
  input [3:0]Stress;
  input [2:0]Ro_sel;
  output [127:0]Data;
endmodule
