// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Mar 12 17:04:34 2026
// Host        : poste-16 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/cmbouba/Mes_projets_pour_le_stage/Circuit_de_mesure_de_3_Ros/Circuit_de_mesure_de_3_Ros.srcs/sources_1/bd/mesure/ip/mesure_Mux_data_0_0/mesure_Mux_data_0_0_sim_netlist.v
// Design      : mesure_Mux_data_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mesure_Mux_data_0_0,Mux_data,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Mux_data,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mesure_Mux_data_0_0
   (Data_in,
    Sel,
    Data_out);
  input [127:0]Data_in;
  input [4:0]Sel;
  output [7:0]Data_out;

  wire [127:0]Data_in;
  wire [7:0]Data_out;
  wire \Data_out[0]_INST_0_i_1_n_0 ;
  wire \Data_out[0]_INST_0_i_2_n_0 ;
  wire \Data_out[0]_INST_0_i_3_n_0 ;
  wire \Data_out[0]_INST_0_i_4_n_0 ;
  wire \Data_out[0]_INST_0_i_5_n_0 ;
  wire \Data_out[1]_INST_0_i_1_n_0 ;
  wire \Data_out[1]_INST_0_i_2_n_0 ;
  wire \Data_out[1]_INST_0_i_3_n_0 ;
  wire \Data_out[1]_INST_0_i_4_n_0 ;
  wire \Data_out[1]_INST_0_i_5_n_0 ;
  wire \Data_out[2]_INST_0_i_1_n_0 ;
  wire \Data_out[2]_INST_0_i_2_n_0 ;
  wire \Data_out[2]_INST_0_i_3_n_0 ;
  wire \Data_out[2]_INST_0_i_4_n_0 ;
  wire \Data_out[2]_INST_0_i_5_n_0 ;
  wire \Data_out[3]_INST_0_i_1_n_0 ;
  wire \Data_out[3]_INST_0_i_2_n_0 ;
  wire \Data_out[3]_INST_0_i_3_n_0 ;
  wire \Data_out[3]_INST_0_i_4_n_0 ;
  wire \Data_out[3]_INST_0_i_5_n_0 ;
  wire \Data_out[4]_INST_0_i_1_n_0 ;
  wire \Data_out[4]_INST_0_i_2_n_0 ;
  wire \Data_out[4]_INST_0_i_3_n_0 ;
  wire \Data_out[4]_INST_0_i_4_n_0 ;
  wire \Data_out[4]_INST_0_i_5_n_0 ;
  wire \Data_out[5]_INST_0_i_1_n_0 ;
  wire \Data_out[5]_INST_0_i_2_n_0 ;
  wire \Data_out[5]_INST_0_i_3_n_0 ;
  wire \Data_out[5]_INST_0_i_4_n_0 ;
  wire \Data_out[5]_INST_0_i_5_n_0 ;
  wire \Data_out[6]_INST_0_i_1_n_0 ;
  wire \Data_out[6]_INST_0_i_2_n_0 ;
  wire \Data_out[6]_INST_0_i_3_n_0 ;
  wire \Data_out[6]_INST_0_i_4_n_0 ;
  wire \Data_out[6]_INST_0_i_5_n_0 ;
  wire \Data_out[7]_INST_0_i_1_n_0 ;
  wire \Data_out[7]_INST_0_i_2_n_0 ;
  wire \Data_out[7]_INST_0_i_3_n_0 ;
  wire \Data_out[7]_INST_0_i_4_n_0 ;
  wire \Data_out[7]_INST_0_i_5_n_0 ;
  wire [4:0]Sel;

  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \Data_out[0]_INST_0 
       (.I0(\Data_out[0]_INST_0_i_1_n_0 ),
        .I1(Sel[2]),
        .I2(\Data_out[0]_INST_0_i_2_n_0 ),
        .I3(Sel[3]),
        .I4(\Data_out[0]_INST_0_i_3_n_0 ),
        .I5(Sel[4]),
        .O(Data_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[0]_INST_0_i_1 
       (.I0(Data_in[120]),
        .I1(Data_in[112]),
        .I2(Sel[1]),
        .I3(Data_in[104]),
        .I4(Sel[0]),
        .I5(Data_in[96]),
        .O(\Data_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[0]_INST_0_i_2 
       (.I0(Data_in[88]),
        .I1(Data_in[80]),
        .I2(Sel[1]),
        .I3(Data_in[72]),
        .I4(Sel[0]),
        .I5(Data_in[64]),
        .O(\Data_out[0]_INST_0_i_2_n_0 ));
  MUXF7 \Data_out[0]_INST_0_i_3 
       (.I0(\Data_out[0]_INST_0_i_4_n_0 ),
        .I1(\Data_out[0]_INST_0_i_5_n_0 ),
        .O(\Data_out[0]_INST_0_i_3_n_0 ),
        .S(Sel[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[0]_INST_0_i_4 
       (.I0(Data_in[24]),
        .I1(Data_in[16]),
        .I2(Sel[1]),
        .I3(Data_in[8]),
        .I4(Sel[0]),
        .I5(Data_in[0]),
        .O(\Data_out[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[0]_INST_0_i_5 
       (.I0(Data_in[56]),
        .I1(Data_in[48]),
        .I2(Sel[1]),
        .I3(Data_in[40]),
        .I4(Sel[0]),
        .I5(Data_in[32]),
        .O(\Data_out[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \Data_out[1]_INST_0 
       (.I0(\Data_out[1]_INST_0_i_1_n_0 ),
        .I1(Sel[2]),
        .I2(\Data_out[1]_INST_0_i_2_n_0 ),
        .I3(Sel[3]),
        .I4(\Data_out[1]_INST_0_i_3_n_0 ),
        .I5(Sel[4]),
        .O(Data_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[1]_INST_0_i_1 
       (.I0(Data_in[121]),
        .I1(Data_in[113]),
        .I2(Sel[1]),
        .I3(Data_in[105]),
        .I4(Sel[0]),
        .I5(Data_in[97]),
        .O(\Data_out[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[1]_INST_0_i_2 
       (.I0(Data_in[89]),
        .I1(Data_in[81]),
        .I2(Sel[1]),
        .I3(Data_in[73]),
        .I4(Sel[0]),
        .I5(Data_in[65]),
        .O(\Data_out[1]_INST_0_i_2_n_0 ));
  MUXF7 \Data_out[1]_INST_0_i_3 
       (.I0(\Data_out[1]_INST_0_i_4_n_0 ),
        .I1(\Data_out[1]_INST_0_i_5_n_0 ),
        .O(\Data_out[1]_INST_0_i_3_n_0 ),
        .S(Sel[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[1]_INST_0_i_4 
       (.I0(Data_in[25]),
        .I1(Data_in[17]),
        .I2(Sel[1]),
        .I3(Data_in[9]),
        .I4(Sel[0]),
        .I5(Data_in[1]),
        .O(\Data_out[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[1]_INST_0_i_5 
       (.I0(Data_in[57]),
        .I1(Data_in[49]),
        .I2(Sel[1]),
        .I3(Data_in[41]),
        .I4(Sel[0]),
        .I5(Data_in[33]),
        .O(\Data_out[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \Data_out[2]_INST_0 
       (.I0(\Data_out[2]_INST_0_i_1_n_0 ),
        .I1(Sel[2]),
        .I2(\Data_out[2]_INST_0_i_2_n_0 ),
        .I3(Sel[3]),
        .I4(\Data_out[2]_INST_0_i_3_n_0 ),
        .I5(Sel[4]),
        .O(Data_out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[2]_INST_0_i_1 
       (.I0(Data_in[122]),
        .I1(Data_in[114]),
        .I2(Sel[1]),
        .I3(Data_in[106]),
        .I4(Sel[0]),
        .I5(Data_in[98]),
        .O(\Data_out[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[2]_INST_0_i_2 
       (.I0(Data_in[90]),
        .I1(Data_in[82]),
        .I2(Sel[1]),
        .I3(Data_in[74]),
        .I4(Sel[0]),
        .I5(Data_in[66]),
        .O(\Data_out[2]_INST_0_i_2_n_0 ));
  MUXF7 \Data_out[2]_INST_0_i_3 
       (.I0(\Data_out[2]_INST_0_i_4_n_0 ),
        .I1(\Data_out[2]_INST_0_i_5_n_0 ),
        .O(\Data_out[2]_INST_0_i_3_n_0 ),
        .S(Sel[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[2]_INST_0_i_4 
       (.I0(Data_in[26]),
        .I1(Data_in[18]),
        .I2(Sel[1]),
        .I3(Data_in[10]),
        .I4(Sel[0]),
        .I5(Data_in[2]),
        .O(\Data_out[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[2]_INST_0_i_5 
       (.I0(Data_in[58]),
        .I1(Data_in[50]),
        .I2(Sel[1]),
        .I3(Data_in[42]),
        .I4(Sel[0]),
        .I5(Data_in[34]),
        .O(\Data_out[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \Data_out[3]_INST_0 
       (.I0(\Data_out[3]_INST_0_i_1_n_0 ),
        .I1(Sel[2]),
        .I2(\Data_out[3]_INST_0_i_2_n_0 ),
        .I3(Sel[3]),
        .I4(\Data_out[3]_INST_0_i_3_n_0 ),
        .I5(Sel[4]),
        .O(Data_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[3]_INST_0_i_1 
       (.I0(Data_in[123]),
        .I1(Data_in[115]),
        .I2(Sel[1]),
        .I3(Data_in[107]),
        .I4(Sel[0]),
        .I5(Data_in[99]),
        .O(\Data_out[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[3]_INST_0_i_2 
       (.I0(Data_in[91]),
        .I1(Data_in[83]),
        .I2(Sel[1]),
        .I3(Data_in[75]),
        .I4(Sel[0]),
        .I5(Data_in[67]),
        .O(\Data_out[3]_INST_0_i_2_n_0 ));
  MUXF7 \Data_out[3]_INST_0_i_3 
       (.I0(\Data_out[3]_INST_0_i_4_n_0 ),
        .I1(\Data_out[3]_INST_0_i_5_n_0 ),
        .O(\Data_out[3]_INST_0_i_3_n_0 ),
        .S(Sel[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[3]_INST_0_i_4 
       (.I0(Data_in[27]),
        .I1(Data_in[19]),
        .I2(Sel[1]),
        .I3(Data_in[11]),
        .I4(Sel[0]),
        .I5(Data_in[3]),
        .O(\Data_out[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[3]_INST_0_i_5 
       (.I0(Data_in[59]),
        .I1(Data_in[51]),
        .I2(Sel[1]),
        .I3(Data_in[43]),
        .I4(Sel[0]),
        .I5(Data_in[35]),
        .O(\Data_out[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \Data_out[4]_INST_0 
       (.I0(\Data_out[4]_INST_0_i_1_n_0 ),
        .I1(Sel[2]),
        .I2(\Data_out[4]_INST_0_i_2_n_0 ),
        .I3(Sel[3]),
        .I4(\Data_out[4]_INST_0_i_3_n_0 ),
        .I5(Sel[4]),
        .O(Data_out[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[4]_INST_0_i_1 
       (.I0(Data_in[124]),
        .I1(Data_in[116]),
        .I2(Sel[1]),
        .I3(Data_in[108]),
        .I4(Sel[0]),
        .I5(Data_in[100]),
        .O(\Data_out[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[4]_INST_0_i_2 
       (.I0(Data_in[92]),
        .I1(Data_in[84]),
        .I2(Sel[1]),
        .I3(Data_in[76]),
        .I4(Sel[0]),
        .I5(Data_in[68]),
        .O(\Data_out[4]_INST_0_i_2_n_0 ));
  MUXF7 \Data_out[4]_INST_0_i_3 
       (.I0(\Data_out[4]_INST_0_i_4_n_0 ),
        .I1(\Data_out[4]_INST_0_i_5_n_0 ),
        .O(\Data_out[4]_INST_0_i_3_n_0 ),
        .S(Sel[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[4]_INST_0_i_4 
       (.I0(Data_in[28]),
        .I1(Data_in[20]),
        .I2(Sel[1]),
        .I3(Data_in[12]),
        .I4(Sel[0]),
        .I5(Data_in[4]),
        .O(\Data_out[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[4]_INST_0_i_5 
       (.I0(Data_in[60]),
        .I1(Data_in[52]),
        .I2(Sel[1]),
        .I3(Data_in[44]),
        .I4(Sel[0]),
        .I5(Data_in[36]),
        .O(\Data_out[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \Data_out[5]_INST_0 
       (.I0(\Data_out[5]_INST_0_i_1_n_0 ),
        .I1(Sel[2]),
        .I2(\Data_out[5]_INST_0_i_2_n_0 ),
        .I3(Sel[3]),
        .I4(\Data_out[5]_INST_0_i_3_n_0 ),
        .I5(Sel[4]),
        .O(Data_out[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[5]_INST_0_i_1 
       (.I0(Data_in[125]),
        .I1(Data_in[117]),
        .I2(Sel[1]),
        .I3(Data_in[109]),
        .I4(Sel[0]),
        .I5(Data_in[101]),
        .O(\Data_out[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[5]_INST_0_i_2 
       (.I0(Data_in[93]),
        .I1(Data_in[85]),
        .I2(Sel[1]),
        .I3(Data_in[77]),
        .I4(Sel[0]),
        .I5(Data_in[69]),
        .O(\Data_out[5]_INST_0_i_2_n_0 ));
  MUXF7 \Data_out[5]_INST_0_i_3 
       (.I0(\Data_out[5]_INST_0_i_4_n_0 ),
        .I1(\Data_out[5]_INST_0_i_5_n_0 ),
        .O(\Data_out[5]_INST_0_i_3_n_0 ),
        .S(Sel[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[5]_INST_0_i_4 
       (.I0(Data_in[29]),
        .I1(Data_in[21]),
        .I2(Sel[1]),
        .I3(Data_in[13]),
        .I4(Sel[0]),
        .I5(Data_in[5]),
        .O(\Data_out[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[5]_INST_0_i_5 
       (.I0(Data_in[61]),
        .I1(Data_in[53]),
        .I2(Sel[1]),
        .I3(Data_in[45]),
        .I4(Sel[0]),
        .I5(Data_in[37]),
        .O(\Data_out[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \Data_out[6]_INST_0 
       (.I0(\Data_out[6]_INST_0_i_1_n_0 ),
        .I1(Sel[2]),
        .I2(\Data_out[6]_INST_0_i_2_n_0 ),
        .I3(Sel[3]),
        .I4(\Data_out[6]_INST_0_i_3_n_0 ),
        .I5(Sel[4]),
        .O(Data_out[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[6]_INST_0_i_1 
       (.I0(Data_in[126]),
        .I1(Data_in[118]),
        .I2(Sel[1]),
        .I3(Data_in[110]),
        .I4(Sel[0]),
        .I5(Data_in[102]),
        .O(\Data_out[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[6]_INST_0_i_2 
       (.I0(Data_in[94]),
        .I1(Data_in[86]),
        .I2(Sel[1]),
        .I3(Data_in[78]),
        .I4(Sel[0]),
        .I5(Data_in[70]),
        .O(\Data_out[6]_INST_0_i_2_n_0 ));
  MUXF7 \Data_out[6]_INST_0_i_3 
       (.I0(\Data_out[6]_INST_0_i_4_n_0 ),
        .I1(\Data_out[6]_INST_0_i_5_n_0 ),
        .O(\Data_out[6]_INST_0_i_3_n_0 ),
        .S(Sel[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[6]_INST_0_i_4 
       (.I0(Data_in[30]),
        .I1(Data_in[22]),
        .I2(Sel[1]),
        .I3(Data_in[14]),
        .I4(Sel[0]),
        .I5(Data_in[6]),
        .O(\Data_out[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[6]_INST_0_i_5 
       (.I0(Data_in[62]),
        .I1(Data_in[54]),
        .I2(Sel[1]),
        .I3(Data_in[46]),
        .I4(Sel[0]),
        .I5(Data_in[38]),
        .O(\Data_out[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \Data_out[7]_INST_0 
       (.I0(\Data_out[7]_INST_0_i_1_n_0 ),
        .I1(Sel[2]),
        .I2(\Data_out[7]_INST_0_i_2_n_0 ),
        .I3(Sel[3]),
        .I4(\Data_out[7]_INST_0_i_3_n_0 ),
        .I5(Sel[4]),
        .O(Data_out[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[7]_INST_0_i_1 
       (.I0(Data_in[127]),
        .I1(Data_in[119]),
        .I2(Sel[1]),
        .I3(Data_in[111]),
        .I4(Sel[0]),
        .I5(Data_in[103]),
        .O(\Data_out[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[7]_INST_0_i_2 
       (.I0(Data_in[95]),
        .I1(Data_in[87]),
        .I2(Sel[1]),
        .I3(Data_in[79]),
        .I4(Sel[0]),
        .I5(Data_in[71]),
        .O(\Data_out[7]_INST_0_i_2_n_0 ));
  MUXF7 \Data_out[7]_INST_0_i_3 
       (.I0(\Data_out[7]_INST_0_i_4_n_0 ),
        .I1(\Data_out[7]_INST_0_i_5_n_0 ),
        .O(\Data_out[7]_INST_0_i_3_n_0 ),
        .S(Sel[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[7]_INST_0_i_4 
       (.I0(Data_in[31]),
        .I1(Data_in[23]),
        .I2(Sel[1]),
        .I3(Data_in[15]),
        .I4(Sel[0]),
        .I5(Data_in[7]),
        .O(\Data_out[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Data_out[7]_INST_0_i_5 
       (.I0(Data_in[63]),
        .I1(Data_in[55]),
        .I2(Sel[1]),
        .I3(Data_in[47]),
        .I4(Sel[0]),
        .I5(Data_in[39]),
        .O(\Data_out[7]_INST_0_i_5_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
