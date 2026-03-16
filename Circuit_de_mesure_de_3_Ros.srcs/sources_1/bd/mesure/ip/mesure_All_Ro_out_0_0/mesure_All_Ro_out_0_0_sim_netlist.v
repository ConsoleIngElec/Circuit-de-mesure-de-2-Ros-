// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Mar 13 15:26:56 2026
// Host        : poste-16 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/cmbouba/Mes_projets_pour_le_stage/Circuit_de_mesure_de_3_Ros/Circuit_de_mesure_de_3_Ros.srcs/sources_1/bd/mesure/ip/mesure_All_Ro_out_0_0/mesure_All_Ro_out_0_0_sim_netlist.v
// Design      : mesure_All_Ro_out_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mesure_All_Ro_out_0_0,All_Ro_out,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "All_Ro_out,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mesure_All_Ro_out_0_0
   (CE_1Hz,
    Mode,
    Reset_RO,
    Stress,
    Ro_sel,
    Data);
  input CE_1Hz;
  input [5:0]Mode;
  input [5:0]Reset_RO;
  input [3:0]Stress;
  input [2:0]Ro_sel;
  output [127:0]Data;

  wire CE_1Hz;
  wire [127:0]Data;
  wire [5:0]Mode;
  wire [5:0]Reset_RO;
  wire [2:0]Ro_sel;
  wire [3:0]Stress;

  mesure_All_Ro_out_0_0_All_Ro_out U0
       (.CE_1Hz(CE_1Hz),
        .Data(Data),
        .Mode(Mode),
        .Reset_RO(Reset_RO),
        .Ro_sel(Ro_sel),
        .Stress(Stress));
endmodule

(* ORIG_REF_NAME = "All_Ro_out" *) 
module mesure_All_Ro_out_0_0_All_Ro_out
   (Data,
    CE_1Hz,
    Reset_RO,
    Mode,
    Stress,
    Ro_sel);
  output [127:0]Data;
  input CE_1Hz;
  input [5:0]Reset_RO;
  input [5:0]Mode;
  input [3:0]Stress;
  input [2:0]Ro_sel;

  wire CE_1Hz;
  wire [127:0]Data;
  wire [5:0]Mode;
  wire Reset;
  wire [5:0]Reset_RO;
  wire [2:0]Ro_sel;
  wire [3:0]Stress;

  mesure_All_Ro_out_0_0_Ro_out \I_Ro_out[0].I_Ro_out 
       (.CE_1Hz(CE_1Hz),
        .Data(Data[31:0]),
        .Mode(Mode),
        .Reset(Reset),
        .Reset_RO(Reset_RO),
        .Ro_sel(Ro_sel),
        .Stress(Stress[0]));
  mesure_All_Ro_out_0_0_Ro_out_0 \I_Ro_out[1].I_Ro_out 
       (.CE_1Hz(CE_1Hz),
        .Data(Data[63:32]),
        .Mode(Mode),
        .Reset(Reset),
        .Reset_RO(Reset_RO),
        .Ro_sel(Ro_sel),
        .Stress(Stress[1]));
  mesure_All_Ro_out_0_0_Ro_out_1 \I_Ro_out[2].I_Ro_out 
       (.CE_1Hz(CE_1Hz),
        .Data(Data[95:64]),
        .Mode(Mode),
        .Reset(Reset),
        .Reset_RO(Reset_RO),
        .Ro_sel(Ro_sel),
        .Stress(Stress[2]));
  mesure_All_Ro_out_0_0_Ro_out_2 \I_Ro_out[3].I_Ro_out 
       (.CE_1Hz(CE_1Hz),
        .Data(Data[127:96]),
        .Mode(Mode),
        .Reset(Reset),
        .Reset_RO(Reset_RO),
        .Ro_sel(Ro_sel),
        .Stress(Stress[3]));
endmodule

(* ORIG_REF_NAME = "Measure_F_Ro" *) 
module mesure_All_Ro_out_0_0_Measure_F_Ro
   (SR,
    Data,
    S_int,
    CE_1Hz,
    Mode);
  output [0:0]SR;
  output [31:0]Data;
  input S_int;
  input CE_1Hz;
  input [5:0]Mode;

  wire CE_1Hz;
  wire [31:0]Data;
  (* async_reg = "true" *) wire Enable_Decal_1;
  (* async_reg = "true" *) wire Enable_Decal_2;
  wire Enable_Decal_3;
  wire Enable_Int;
  wire Enable_Int_Sync;
  wire [5:0]Mode;
  wire [0:0]SR;
  wire \S[0]_i_1__2_n_0 ;
  wire \S[0]_i_3__2_n_0 ;
  wire S_int;
  wire [31:0]S_reg;
  wire \S_reg[0]_i_2__2_n_0 ;
  wire \S_reg[0]_i_2__2_n_1 ;
  wire \S_reg[0]_i_2__2_n_10 ;
  wire \S_reg[0]_i_2__2_n_11 ;
  wire \S_reg[0]_i_2__2_n_12 ;
  wire \S_reg[0]_i_2__2_n_13 ;
  wire \S_reg[0]_i_2__2_n_14 ;
  wire \S_reg[0]_i_2__2_n_15 ;
  wire \S_reg[0]_i_2__2_n_2 ;
  wire \S_reg[0]_i_2__2_n_3 ;
  wire \S_reg[0]_i_2__2_n_4 ;
  wire \S_reg[0]_i_2__2_n_5 ;
  wire \S_reg[0]_i_2__2_n_6 ;
  wire \S_reg[0]_i_2__2_n_7 ;
  wire \S_reg[0]_i_2__2_n_8 ;
  wire \S_reg[0]_i_2__2_n_9 ;
  wire \S_reg[16]_i_1__2_n_0 ;
  wire \S_reg[16]_i_1__2_n_1 ;
  wire \S_reg[16]_i_1__2_n_10 ;
  wire \S_reg[16]_i_1__2_n_11 ;
  wire \S_reg[16]_i_1__2_n_12 ;
  wire \S_reg[16]_i_1__2_n_13 ;
  wire \S_reg[16]_i_1__2_n_14 ;
  wire \S_reg[16]_i_1__2_n_15 ;
  wire \S_reg[16]_i_1__2_n_2 ;
  wire \S_reg[16]_i_1__2_n_3 ;
  wire \S_reg[16]_i_1__2_n_4 ;
  wire \S_reg[16]_i_1__2_n_5 ;
  wire \S_reg[16]_i_1__2_n_6 ;
  wire \S_reg[16]_i_1__2_n_7 ;
  wire \S_reg[16]_i_1__2_n_8 ;
  wire \S_reg[16]_i_1__2_n_9 ;
  wire \S_reg[24]_i_1__2_n_1 ;
  wire \S_reg[24]_i_1__2_n_10 ;
  wire \S_reg[24]_i_1__2_n_11 ;
  wire \S_reg[24]_i_1__2_n_12 ;
  wire \S_reg[24]_i_1__2_n_13 ;
  wire \S_reg[24]_i_1__2_n_14 ;
  wire \S_reg[24]_i_1__2_n_15 ;
  wire \S_reg[24]_i_1__2_n_2 ;
  wire \S_reg[24]_i_1__2_n_3 ;
  wire \S_reg[24]_i_1__2_n_4 ;
  wire \S_reg[24]_i_1__2_n_5 ;
  wire \S_reg[24]_i_1__2_n_6 ;
  wire \S_reg[24]_i_1__2_n_7 ;
  wire \S_reg[24]_i_1__2_n_8 ;
  wire \S_reg[24]_i_1__2_n_9 ;
  wire \S_reg[8]_i_1__2_n_0 ;
  wire \S_reg[8]_i_1__2_n_1 ;
  wire \S_reg[8]_i_1__2_n_10 ;
  wire \S_reg[8]_i_1__2_n_11 ;
  wire \S_reg[8]_i_1__2_n_12 ;
  wire \S_reg[8]_i_1__2_n_13 ;
  wire \S_reg[8]_i_1__2_n_14 ;
  wire \S_reg[8]_i_1__2_n_15 ;
  wire \S_reg[8]_i_1__2_n_2 ;
  wire \S_reg[8]_i_1__2_n_3 ;
  wire \S_reg[8]_i_1__2_n_4 ;
  wire \S_reg[8]_i_1__2_n_5 ;
  wire \S_reg[8]_i_1__2_n_6 ;
  wire \S_reg[8]_i_1__2_n_7 ;
  wire \S_reg[8]_i_1__2_n_8 ;
  wire \S_reg[8]_i_1__2_n_9 ;
  wire [7:7]\NLW_S_reg[24]_i_1__2_CO_UNCONNECTED ;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE Enable_Decal_1_reg
       (.C(S_int),
        .CE(1'b1),
        .CLR(SR),
        .D(CE_1Hz),
        .Q(Enable_Decal_1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE Enable_Decal_2_reg
       (.C(S_int),
        .CE(1'b1),
        .CLR(SR),
        .D(Enable_Decal_1),
        .Q(Enable_Decal_2));
  FDCE Enable_Decal_3_reg
       (.C(S_int),
        .CE(1'b1),
        .CLR(SR),
        .D(Enable_Decal_2),
        .Q(Enable_Decal_3));
  LUT2 #(
    .INIT(4'h2)) 
    Enable_Int_Sync_i_1__2
       (.I0(Enable_Decal_3),
        .I1(Enable_Decal_2),
        .O(Enable_Int));
  FDCE Enable_Int_Sync_reg
       (.C(S_int),
        .CE(1'b1),
        .CLR(SR),
        .D(Enable_Int),
        .Q(Enable_Int_Sync));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \R[31]_i_1__2 
       (.I0(Mode[4]),
        .I1(Mode[3]),
        .I2(Mode[5]),
        .I3(Mode[0]),
        .I4(Mode[1]),
        .I5(Mode[2]),
        .O(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[0] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[0]),
        .Q(Data[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[10] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[10]),
        .Q(Data[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[11] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[11]),
        .Q(Data[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[12] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[12]),
        .Q(Data[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[13] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[13]),
        .Q(Data[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[14] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[14]),
        .Q(Data[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[15] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[15]),
        .Q(Data[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[16] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[16]),
        .Q(Data[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[17] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[17]),
        .Q(Data[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[18] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[18]),
        .Q(Data[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[19] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[19]),
        .Q(Data[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[1] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[1]),
        .Q(Data[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[20] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[20]),
        .Q(Data[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[21] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[21]),
        .Q(Data[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[22] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[22]),
        .Q(Data[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[23] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[23]),
        .Q(Data[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[24] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[24]),
        .Q(Data[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[25] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[25]),
        .Q(Data[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[26] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[26]),
        .Q(Data[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[27] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[27]),
        .Q(Data[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[28] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[28]),
        .Q(Data[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[29] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[29]),
        .Q(Data[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[2] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[2]),
        .Q(Data[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[30] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[30]),
        .Q(Data[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[31] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[31]),
        .Q(Data[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[3] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[3]),
        .Q(Data[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[4] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[4]),
        .Q(Data[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[5] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[5]),
        .Q(Data[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[6] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[6]),
        .Q(Data[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[7] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[7]),
        .Q(Data[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[8] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[8]),
        .Q(Data[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[9] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[9]),
        .Q(Data[9]),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    \S[0]_i_1__2 
       (.I0(SR),
        .I1(Enable_Int_Sync),
        .O(\S[0]_i_1__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \S[0]_i_3__2 
       (.I0(S_reg[0]),
        .O(\S[0]_i_3__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[0] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__2_n_15 ),
        .Q(S_reg[0]),
        .R(\S[0]_i_1__2_n_0 ));
  CARRY8 \S_reg[0]_i_2__2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\S_reg[0]_i_2__2_n_0 ,\S_reg[0]_i_2__2_n_1 ,\S_reg[0]_i_2__2_n_2 ,\S_reg[0]_i_2__2_n_3 ,\S_reg[0]_i_2__2_n_4 ,\S_reg[0]_i_2__2_n_5 ,\S_reg[0]_i_2__2_n_6 ,\S_reg[0]_i_2__2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\S_reg[0]_i_2__2_n_8 ,\S_reg[0]_i_2__2_n_9 ,\S_reg[0]_i_2__2_n_10 ,\S_reg[0]_i_2__2_n_11 ,\S_reg[0]_i_2__2_n_12 ,\S_reg[0]_i_2__2_n_13 ,\S_reg[0]_i_2__2_n_14 ,\S_reg[0]_i_2__2_n_15 }),
        .S({S_reg[7:1],\S[0]_i_3__2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[10] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__2_n_13 ),
        .Q(S_reg[10]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[11] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__2_n_12 ),
        .Q(S_reg[11]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[12] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__2_n_11 ),
        .Q(S_reg[12]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[13] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__2_n_10 ),
        .Q(S_reg[13]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[14] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__2_n_9 ),
        .Q(S_reg[14]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[15] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__2_n_8 ),
        .Q(S_reg[15]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[16] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__2_n_15 ),
        .Q(S_reg[16]),
        .R(\S[0]_i_1__2_n_0 ));
  CARRY8 \S_reg[16]_i_1__2 
       (.CI(\S_reg[8]_i_1__2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\S_reg[16]_i_1__2_n_0 ,\S_reg[16]_i_1__2_n_1 ,\S_reg[16]_i_1__2_n_2 ,\S_reg[16]_i_1__2_n_3 ,\S_reg[16]_i_1__2_n_4 ,\S_reg[16]_i_1__2_n_5 ,\S_reg[16]_i_1__2_n_6 ,\S_reg[16]_i_1__2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\S_reg[16]_i_1__2_n_8 ,\S_reg[16]_i_1__2_n_9 ,\S_reg[16]_i_1__2_n_10 ,\S_reg[16]_i_1__2_n_11 ,\S_reg[16]_i_1__2_n_12 ,\S_reg[16]_i_1__2_n_13 ,\S_reg[16]_i_1__2_n_14 ,\S_reg[16]_i_1__2_n_15 }),
        .S(S_reg[23:16]));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[17] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__2_n_14 ),
        .Q(S_reg[17]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[18] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__2_n_13 ),
        .Q(S_reg[18]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[19] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__2_n_12 ),
        .Q(S_reg[19]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[1] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__2_n_14 ),
        .Q(S_reg[1]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[20] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__2_n_11 ),
        .Q(S_reg[20]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[21] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__2_n_10 ),
        .Q(S_reg[21]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[22] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__2_n_9 ),
        .Q(S_reg[22]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[23] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__2_n_8 ),
        .Q(S_reg[23]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[24] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__2_n_15 ),
        .Q(S_reg[24]),
        .R(\S[0]_i_1__2_n_0 ));
  CARRY8 \S_reg[24]_i_1__2 
       (.CI(\S_reg[16]_i_1__2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_S_reg[24]_i_1__2_CO_UNCONNECTED [7],\S_reg[24]_i_1__2_n_1 ,\S_reg[24]_i_1__2_n_2 ,\S_reg[24]_i_1__2_n_3 ,\S_reg[24]_i_1__2_n_4 ,\S_reg[24]_i_1__2_n_5 ,\S_reg[24]_i_1__2_n_6 ,\S_reg[24]_i_1__2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\S_reg[24]_i_1__2_n_8 ,\S_reg[24]_i_1__2_n_9 ,\S_reg[24]_i_1__2_n_10 ,\S_reg[24]_i_1__2_n_11 ,\S_reg[24]_i_1__2_n_12 ,\S_reg[24]_i_1__2_n_13 ,\S_reg[24]_i_1__2_n_14 ,\S_reg[24]_i_1__2_n_15 }),
        .S(S_reg[31:24]));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[25] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__2_n_14 ),
        .Q(S_reg[25]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[26] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__2_n_13 ),
        .Q(S_reg[26]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[27] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__2_n_12 ),
        .Q(S_reg[27]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[28] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__2_n_11 ),
        .Q(S_reg[28]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[29] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__2_n_10 ),
        .Q(S_reg[29]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[2] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__2_n_13 ),
        .Q(S_reg[2]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[30] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__2_n_9 ),
        .Q(S_reg[30]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[31] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__2_n_8 ),
        .Q(S_reg[31]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[3] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__2_n_12 ),
        .Q(S_reg[3]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[4] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__2_n_11 ),
        .Q(S_reg[4]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[5] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__2_n_10 ),
        .Q(S_reg[5]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[6] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__2_n_9 ),
        .Q(S_reg[6]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[7] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__2_n_8 ),
        .Q(S_reg[7]),
        .R(\S[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[8] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__2_n_15 ),
        .Q(S_reg[8]),
        .R(\S[0]_i_1__2_n_0 ));
  CARRY8 \S_reg[8]_i_1__2 
       (.CI(\S_reg[0]_i_2__2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\S_reg[8]_i_1__2_n_0 ,\S_reg[8]_i_1__2_n_1 ,\S_reg[8]_i_1__2_n_2 ,\S_reg[8]_i_1__2_n_3 ,\S_reg[8]_i_1__2_n_4 ,\S_reg[8]_i_1__2_n_5 ,\S_reg[8]_i_1__2_n_6 ,\S_reg[8]_i_1__2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\S_reg[8]_i_1__2_n_8 ,\S_reg[8]_i_1__2_n_9 ,\S_reg[8]_i_1__2_n_10 ,\S_reg[8]_i_1__2_n_11 ,\S_reg[8]_i_1__2_n_12 ,\S_reg[8]_i_1__2_n_13 ,\S_reg[8]_i_1__2_n_14 ,\S_reg[8]_i_1__2_n_15 }),
        .S(S_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[9] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__2_n_14 ),
        .Q(S_reg[9]),
        .R(\S[0]_i_1__2_n_0 ));
endmodule

(* ORIG_REF_NAME = "Measure_F_Ro" *) 
module mesure_All_Ro_out_0_0_Measure_F_Ro_15
   (Data,
    S_int,
    Reset,
    CE_1Hz);
  output [31:0]Data;
  input S_int;
  input Reset;
  input CE_1Hz;

  wire CE_1Hz;
  wire [31:0]Data;
  (* async_reg = "true" *) wire Enable_Decal_1;
  (* async_reg = "true" *) wire Enable_Decal_2;
  wire Enable_Decal_3;
  wire Enable_Int;
  wire Enable_Int_Sync;
  wire Reset;
  wire \S[0]_i_1__0_n_0 ;
  wire \S[0]_i_3__0_n_0 ;
  wire S_int;
  wire [31:0]S_reg;
  wire \S_reg[0]_i_2__0_n_0 ;
  wire \S_reg[0]_i_2__0_n_1 ;
  wire \S_reg[0]_i_2__0_n_10 ;
  wire \S_reg[0]_i_2__0_n_11 ;
  wire \S_reg[0]_i_2__0_n_12 ;
  wire \S_reg[0]_i_2__0_n_13 ;
  wire \S_reg[0]_i_2__0_n_14 ;
  wire \S_reg[0]_i_2__0_n_15 ;
  wire \S_reg[0]_i_2__0_n_2 ;
  wire \S_reg[0]_i_2__0_n_3 ;
  wire \S_reg[0]_i_2__0_n_4 ;
  wire \S_reg[0]_i_2__0_n_5 ;
  wire \S_reg[0]_i_2__0_n_6 ;
  wire \S_reg[0]_i_2__0_n_7 ;
  wire \S_reg[0]_i_2__0_n_8 ;
  wire \S_reg[0]_i_2__0_n_9 ;
  wire \S_reg[16]_i_1__0_n_0 ;
  wire \S_reg[16]_i_1__0_n_1 ;
  wire \S_reg[16]_i_1__0_n_10 ;
  wire \S_reg[16]_i_1__0_n_11 ;
  wire \S_reg[16]_i_1__0_n_12 ;
  wire \S_reg[16]_i_1__0_n_13 ;
  wire \S_reg[16]_i_1__0_n_14 ;
  wire \S_reg[16]_i_1__0_n_15 ;
  wire \S_reg[16]_i_1__0_n_2 ;
  wire \S_reg[16]_i_1__0_n_3 ;
  wire \S_reg[16]_i_1__0_n_4 ;
  wire \S_reg[16]_i_1__0_n_5 ;
  wire \S_reg[16]_i_1__0_n_6 ;
  wire \S_reg[16]_i_1__0_n_7 ;
  wire \S_reg[16]_i_1__0_n_8 ;
  wire \S_reg[16]_i_1__0_n_9 ;
  wire \S_reg[24]_i_1__0_n_1 ;
  wire \S_reg[24]_i_1__0_n_10 ;
  wire \S_reg[24]_i_1__0_n_11 ;
  wire \S_reg[24]_i_1__0_n_12 ;
  wire \S_reg[24]_i_1__0_n_13 ;
  wire \S_reg[24]_i_1__0_n_14 ;
  wire \S_reg[24]_i_1__0_n_15 ;
  wire \S_reg[24]_i_1__0_n_2 ;
  wire \S_reg[24]_i_1__0_n_3 ;
  wire \S_reg[24]_i_1__0_n_4 ;
  wire \S_reg[24]_i_1__0_n_5 ;
  wire \S_reg[24]_i_1__0_n_6 ;
  wire \S_reg[24]_i_1__0_n_7 ;
  wire \S_reg[24]_i_1__0_n_8 ;
  wire \S_reg[24]_i_1__0_n_9 ;
  wire \S_reg[8]_i_1__0_n_0 ;
  wire \S_reg[8]_i_1__0_n_1 ;
  wire \S_reg[8]_i_1__0_n_10 ;
  wire \S_reg[8]_i_1__0_n_11 ;
  wire \S_reg[8]_i_1__0_n_12 ;
  wire \S_reg[8]_i_1__0_n_13 ;
  wire \S_reg[8]_i_1__0_n_14 ;
  wire \S_reg[8]_i_1__0_n_15 ;
  wire \S_reg[8]_i_1__0_n_2 ;
  wire \S_reg[8]_i_1__0_n_3 ;
  wire \S_reg[8]_i_1__0_n_4 ;
  wire \S_reg[8]_i_1__0_n_5 ;
  wire \S_reg[8]_i_1__0_n_6 ;
  wire \S_reg[8]_i_1__0_n_7 ;
  wire \S_reg[8]_i_1__0_n_8 ;
  wire \S_reg[8]_i_1__0_n_9 ;
  wire [7:7]\NLW_S_reg[24]_i_1__0_CO_UNCONNECTED ;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE Enable_Decal_1_reg
       (.C(S_int),
        .CE(1'b1),
        .CLR(Reset),
        .D(CE_1Hz),
        .Q(Enable_Decal_1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE Enable_Decal_2_reg
       (.C(S_int),
        .CE(1'b1),
        .CLR(Reset),
        .D(Enable_Decal_1),
        .Q(Enable_Decal_2));
  FDCE Enable_Decal_3_reg
       (.C(S_int),
        .CE(1'b1),
        .CLR(Reset),
        .D(Enable_Decal_2),
        .Q(Enable_Decal_3));
  LUT2 #(
    .INIT(4'h2)) 
    Enable_Int_Sync_i_1__0
       (.I0(Enable_Decal_3),
        .I1(Enable_Decal_2),
        .O(Enable_Int));
  FDCE Enable_Int_Sync_reg
       (.C(S_int),
        .CE(1'b1),
        .CLR(Reset),
        .D(Enable_Int),
        .Q(Enable_Int_Sync));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[0] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[0]),
        .Q(Data[0]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[10] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[10]),
        .Q(Data[10]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[11] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[11]),
        .Q(Data[11]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[12] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[12]),
        .Q(Data[12]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[13] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[13]),
        .Q(Data[13]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[14] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[14]),
        .Q(Data[14]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[15] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[15]),
        .Q(Data[15]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[16] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[16]),
        .Q(Data[16]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[17] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[17]),
        .Q(Data[17]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[18] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[18]),
        .Q(Data[18]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[19] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[19]),
        .Q(Data[19]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[1] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[1]),
        .Q(Data[1]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[20] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[20]),
        .Q(Data[20]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[21] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[21]),
        .Q(Data[21]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[22] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[22]),
        .Q(Data[22]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[23] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[23]),
        .Q(Data[23]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[24] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[24]),
        .Q(Data[24]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[25] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[25]),
        .Q(Data[25]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[26] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[26]),
        .Q(Data[26]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[27] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[27]),
        .Q(Data[27]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[28] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[28]),
        .Q(Data[28]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[29] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[29]),
        .Q(Data[29]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[2] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[2]),
        .Q(Data[2]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[30] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[30]),
        .Q(Data[30]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[31] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[31]),
        .Q(Data[31]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[3] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[3]),
        .Q(Data[3]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[4] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[4]),
        .Q(Data[4]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[5] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[5]),
        .Q(Data[5]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[6] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[6]),
        .Q(Data[6]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[7] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[7]),
        .Q(Data[7]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[8] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[8]),
        .Q(Data[8]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[9] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[9]),
        .Q(Data[9]),
        .R(Reset));
  LUT2 #(
    .INIT(4'hE)) 
    \S[0]_i_1__0 
       (.I0(Reset),
        .I1(Enable_Int_Sync),
        .O(\S[0]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \S[0]_i_3__0 
       (.I0(S_reg[0]),
        .O(\S[0]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[0] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__0_n_15 ),
        .Q(S_reg[0]),
        .R(\S[0]_i_1__0_n_0 ));
  CARRY8 \S_reg[0]_i_2__0 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\S_reg[0]_i_2__0_n_0 ,\S_reg[0]_i_2__0_n_1 ,\S_reg[0]_i_2__0_n_2 ,\S_reg[0]_i_2__0_n_3 ,\S_reg[0]_i_2__0_n_4 ,\S_reg[0]_i_2__0_n_5 ,\S_reg[0]_i_2__0_n_6 ,\S_reg[0]_i_2__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\S_reg[0]_i_2__0_n_8 ,\S_reg[0]_i_2__0_n_9 ,\S_reg[0]_i_2__0_n_10 ,\S_reg[0]_i_2__0_n_11 ,\S_reg[0]_i_2__0_n_12 ,\S_reg[0]_i_2__0_n_13 ,\S_reg[0]_i_2__0_n_14 ,\S_reg[0]_i_2__0_n_15 }),
        .S({S_reg[7:1],\S[0]_i_3__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[10] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__0_n_13 ),
        .Q(S_reg[10]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[11] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__0_n_12 ),
        .Q(S_reg[11]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[12] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__0_n_11 ),
        .Q(S_reg[12]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[13] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__0_n_10 ),
        .Q(S_reg[13]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[14] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__0_n_9 ),
        .Q(S_reg[14]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[15] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__0_n_8 ),
        .Q(S_reg[15]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[16] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__0_n_15 ),
        .Q(S_reg[16]),
        .R(\S[0]_i_1__0_n_0 ));
  CARRY8 \S_reg[16]_i_1__0 
       (.CI(\S_reg[8]_i_1__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\S_reg[16]_i_1__0_n_0 ,\S_reg[16]_i_1__0_n_1 ,\S_reg[16]_i_1__0_n_2 ,\S_reg[16]_i_1__0_n_3 ,\S_reg[16]_i_1__0_n_4 ,\S_reg[16]_i_1__0_n_5 ,\S_reg[16]_i_1__0_n_6 ,\S_reg[16]_i_1__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\S_reg[16]_i_1__0_n_8 ,\S_reg[16]_i_1__0_n_9 ,\S_reg[16]_i_1__0_n_10 ,\S_reg[16]_i_1__0_n_11 ,\S_reg[16]_i_1__0_n_12 ,\S_reg[16]_i_1__0_n_13 ,\S_reg[16]_i_1__0_n_14 ,\S_reg[16]_i_1__0_n_15 }),
        .S(S_reg[23:16]));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[17] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__0_n_14 ),
        .Q(S_reg[17]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[18] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__0_n_13 ),
        .Q(S_reg[18]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[19] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__0_n_12 ),
        .Q(S_reg[19]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[1] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__0_n_14 ),
        .Q(S_reg[1]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[20] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__0_n_11 ),
        .Q(S_reg[20]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[21] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__0_n_10 ),
        .Q(S_reg[21]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[22] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__0_n_9 ),
        .Q(S_reg[22]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[23] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__0_n_8 ),
        .Q(S_reg[23]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[24] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__0_n_15 ),
        .Q(S_reg[24]),
        .R(\S[0]_i_1__0_n_0 ));
  CARRY8 \S_reg[24]_i_1__0 
       (.CI(\S_reg[16]_i_1__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_S_reg[24]_i_1__0_CO_UNCONNECTED [7],\S_reg[24]_i_1__0_n_1 ,\S_reg[24]_i_1__0_n_2 ,\S_reg[24]_i_1__0_n_3 ,\S_reg[24]_i_1__0_n_4 ,\S_reg[24]_i_1__0_n_5 ,\S_reg[24]_i_1__0_n_6 ,\S_reg[24]_i_1__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\S_reg[24]_i_1__0_n_8 ,\S_reg[24]_i_1__0_n_9 ,\S_reg[24]_i_1__0_n_10 ,\S_reg[24]_i_1__0_n_11 ,\S_reg[24]_i_1__0_n_12 ,\S_reg[24]_i_1__0_n_13 ,\S_reg[24]_i_1__0_n_14 ,\S_reg[24]_i_1__0_n_15 }),
        .S(S_reg[31:24]));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[25] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__0_n_14 ),
        .Q(S_reg[25]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[26] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__0_n_13 ),
        .Q(S_reg[26]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[27] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__0_n_12 ),
        .Q(S_reg[27]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[28] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__0_n_11 ),
        .Q(S_reg[28]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[29] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__0_n_10 ),
        .Q(S_reg[29]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[2] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__0_n_13 ),
        .Q(S_reg[2]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[30] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__0_n_9 ),
        .Q(S_reg[30]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[31] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__0_n_8 ),
        .Q(S_reg[31]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[3] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__0_n_12 ),
        .Q(S_reg[3]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[4] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__0_n_11 ),
        .Q(S_reg[4]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[5] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__0_n_10 ),
        .Q(S_reg[5]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[6] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__0_n_9 ),
        .Q(S_reg[6]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[7] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__0_n_8 ),
        .Q(S_reg[7]),
        .R(\S[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[8] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__0_n_15 ),
        .Q(S_reg[8]),
        .R(\S[0]_i_1__0_n_0 ));
  CARRY8 \S_reg[8]_i_1__0 
       (.CI(\S_reg[0]_i_2__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\S_reg[8]_i_1__0_n_0 ,\S_reg[8]_i_1__0_n_1 ,\S_reg[8]_i_1__0_n_2 ,\S_reg[8]_i_1__0_n_3 ,\S_reg[8]_i_1__0_n_4 ,\S_reg[8]_i_1__0_n_5 ,\S_reg[8]_i_1__0_n_6 ,\S_reg[8]_i_1__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\S_reg[8]_i_1__0_n_8 ,\S_reg[8]_i_1__0_n_9 ,\S_reg[8]_i_1__0_n_10 ,\S_reg[8]_i_1__0_n_11 ,\S_reg[8]_i_1__0_n_12 ,\S_reg[8]_i_1__0_n_13 ,\S_reg[8]_i_1__0_n_14 ,\S_reg[8]_i_1__0_n_15 }),
        .S(S_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[9] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__0_n_14 ),
        .Q(S_reg[9]),
        .R(\S[0]_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "Measure_F_Ro" *) 
module mesure_All_Ro_out_0_0_Measure_F_Ro_23
   (Data,
    CE_1Hz,
    S_int,
    Reset);
  output [31:0]Data;
  input CE_1Hz;
  input S_int;
  input Reset;

  wire CE_1Hz;
  wire [31:0]Data;
  (* async_reg = "true" *) wire Enable_Decal_1;
  (* async_reg = "true" *) wire Enable_Decal_2;
  wire Enable_Decal_3;
  wire Enable_Int;
  wire Enable_Int_Sync;
  wire Reset;
  wire \S[0]_i_1_n_0 ;
  wire \S[0]_i_3_n_0 ;
  wire S_int;
  wire [31:0]S_reg;
  wire \S_reg[0]_i_2_n_0 ;
  wire \S_reg[0]_i_2_n_1 ;
  wire \S_reg[0]_i_2_n_10 ;
  wire \S_reg[0]_i_2_n_11 ;
  wire \S_reg[0]_i_2_n_12 ;
  wire \S_reg[0]_i_2_n_13 ;
  wire \S_reg[0]_i_2_n_14 ;
  wire \S_reg[0]_i_2_n_15 ;
  wire \S_reg[0]_i_2_n_2 ;
  wire \S_reg[0]_i_2_n_3 ;
  wire \S_reg[0]_i_2_n_4 ;
  wire \S_reg[0]_i_2_n_5 ;
  wire \S_reg[0]_i_2_n_6 ;
  wire \S_reg[0]_i_2_n_7 ;
  wire \S_reg[0]_i_2_n_8 ;
  wire \S_reg[0]_i_2_n_9 ;
  wire \S_reg[16]_i_1_n_0 ;
  wire \S_reg[16]_i_1_n_1 ;
  wire \S_reg[16]_i_1_n_10 ;
  wire \S_reg[16]_i_1_n_11 ;
  wire \S_reg[16]_i_1_n_12 ;
  wire \S_reg[16]_i_1_n_13 ;
  wire \S_reg[16]_i_1_n_14 ;
  wire \S_reg[16]_i_1_n_15 ;
  wire \S_reg[16]_i_1_n_2 ;
  wire \S_reg[16]_i_1_n_3 ;
  wire \S_reg[16]_i_1_n_4 ;
  wire \S_reg[16]_i_1_n_5 ;
  wire \S_reg[16]_i_1_n_6 ;
  wire \S_reg[16]_i_1_n_7 ;
  wire \S_reg[16]_i_1_n_8 ;
  wire \S_reg[16]_i_1_n_9 ;
  wire \S_reg[24]_i_1_n_1 ;
  wire \S_reg[24]_i_1_n_10 ;
  wire \S_reg[24]_i_1_n_11 ;
  wire \S_reg[24]_i_1_n_12 ;
  wire \S_reg[24]_i_1_n_13 ;
  wire \S_reg[24]_i_1_n_14 ;
  wire \S_reg[24]_i_1_n_15 ;
  wire \S_reg[24]_i_1_n_2 ;
  wire \S_reg[24]_i_1_n_3 ;
  wire \S_reg[24]_i_1_n_4 ;
  wire \S_reg[24]_i_1_n_5 ;
  wire \S_reg[24]_i_1_n_6 ;
  wire \S_reg[24]_i_1_n_7 ;
  wire \S_reg[24]_i_1_n_8 ;
  wire \S_reg[24]_i_1_n_9 ;
  wire \S_reg[8]_i_1_n_0 ;
  wire \S_reg[8]_i_1_n_1 ;
  wire \S_reg[8]_i_1_n_10 ;
  wire \S_reg[8]_i_1_n_11 ;
  wire \S_reg[8]_i_1_n_12 ;
  wire \S_reg[8]_i_1_n_13 ;
  wire \S_reg[8]_i_1_n_14 ;
  wire \S_reg[8]_i_1_n_15 ;
  wire \S_reg[8]_i_1_n_2 ;
  wire \S_reg[8]_i_1_n_3 ;
  wire \S_reg[8]_i_1_n_4 ;
  wire \S_reg[8]_i_1_n_5 ;
  wire \S_reg[8]_i_1_n_6 ;
  wire \S_reg[8]_i_1_n_7 ;
  wire \S_reg[8]_i_1_n_8 ;
  wire \S_reg[8]_i_1_n_9 ;
  wire [7:7]\NLW_S_reg[24]_i_1_CO_UNCONNECTED ;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE Enable_Decal_1_reg
       (.C(S_int),
        .CE(1'b1),
        .CLR(Reset),
        .D(CE_1Hz),
        .Q(Enable_Decal_1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE Enable_Decal_2_reg
       (.C(S_int),
        .CE(1'b1),
        .CLR(Reset),
        .D(Enable_Decal_1),
        .Q(Enable_Decal_2));
  FDCE Enable_Decal_3_reg
       (.C(S_int),
        .CE(1'b1),
        .CLR(Reset),
        .D(Enable_Decal_2),
        .Q(Enable_Decal_3));
  LUT2 #(
    .INIT(4'h2)) 
    Enable_Int_Sync_i_1
       (.I0(Enable_Decal_3),
        .I1(Enable_Decal_2),
        .O(Enable_Int));
  FDCE Enable_Int_Sync_reg
       (.C(S_int),
        .CE(1'b1),
        .CLR(Reset),
        .D(Enable_Int),
        .Q(Enable_Int_Sync));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[0] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[0]),
        .Q(Data[0]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[10] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[10]),
        .Q(Data[10]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[11] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[11]),
        .Q(Data[11]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[12] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[12]),
        .Q(Data[12]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[13] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[13]),
        .Q(Data[13]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[14] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[14]),
        .Q(Data[14]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[15] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[15]),
        .Q(Data[15]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[16] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[16]),
        .Q(Data[16]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[17] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[17]),
        .Q(Data[17]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[18] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[18]),
        .Q(Data[18]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[19] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[19]),
        .Q(Data[19]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[1] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[1]),
        .Q(Data[1]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[20] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[20]),
        .Q(Data[20]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[21] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[21]),
        .Q(Data[21]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[22] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[22]),
        .Q(Data[22]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[23] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[23]),
        .Q(Data[23]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[24] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[24]),
        .Q(Data[24]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[25] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[25]),
        .Q(Data[25]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[26] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[26]),
        .Q(Data[26]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[27] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[27]),
        .Q(Data[27]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[28] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[28]),
        .Q(Data[28]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[29] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[29]),
        .Q(Data[29]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[2] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[2]),
        .Q(Data[2]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[30] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[30]),
        .Q(Data[30]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[31] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[31]),
        .Q(Data[31]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[3] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[3]),
        .Q(Data[3]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[4] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[4]),
        .Q(Data[4]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[5] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[5]),
        .Q(Data[5]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[6] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[6]),
        .Q(Data[6]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[7] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[7]),
        .Q(Data[7]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[8] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[8]),
        .Q(Data[8]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[9] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[9]),
        .Q(Data[9]),
        .R(Reset));
  LUT2 #(
    .INIT(4'hE)) 
    \S[0]_i_1 
       (.I0(Reset),
        .I1(Enable_Int_Sync),
        .O(\S[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \S[0]_i_3 
       (.I0(S_reg[0]),
        .O(\S[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[0] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2_n_15 ),
        .Q(S_reg[0]),
        .R(\S[0]_i_1_n_0 ));
  CARRY8 \S_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\S_reg[0]_i_2_n_0 ,\S_reg[0]_i_2_n_1 ,\S_reg[0]_i_2_n_2 ,\S_reg[0]_i_2_n_3 ,\S_reg[0]_i_2_n_4 ,\S_reg[0]_i_2_n_5 ,\S_reg[0]_i_2_n_6 ,\S_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\S_reg[0]_i_2_n_8 ,\S_reg[0]_i_2_n_9 ,\S_reg[0]_i_2_n_10 ,\S_reg[0]_i_2_n_11 ,\S_reg[0]_i_2_n_12 ,\S_reg[0]_i_2_n_13 ,\S_reg[0]_i_2_n_14 ,\S_reg[0]_i_2_n_15 }),
        .S({S_reg[7:1],\S[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[10] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1_n_13 ),
        .Q(S_reg[10]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[11] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1_n_12 ),
        .Q(S_reg[11]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[12] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1_n_11 ),
        .Q(S_reg[12]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[13] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1_n_10 ),
        .Q(S_reg[13]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[14] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1_n_9 ),
        .Q(S_reg[14]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[15] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1_n_8 ),
        .Q(S_reg[15]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[16] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1_n_15 ),
        .Q(S_reg[16]),
        .R(\S[0]_i_1_n_0 ));
  CARRY8 \S_reg[16]_i_1 
       (.CI(\S_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\S_reg[16]_i_1_n_0 ,\S_reg[16]_i_1_n_1 ,\S_reg[16]_i_1_n_2 ,\S_reg[16]_i_1_n_3 ,\S_reg[16]_i_1_n_4 ,\S_reg[16]_i_1_n_5 ,\S_reg[16]_i_1_n_6 ,\S_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\S_reg[16]_i_1_n_8 ,\S_reg[16]_i_1_n_9 ,\S_reg[16]_i_1_n_10 ,\S_reg[16]_i_1_n_11 ,\S_reg[16]_i_1_n_12 ,\S_reg[16]_i_1_n_13 ,\S_reg[16]_i_1_n_14 ,\S_reg[16]_i_1_n_15 }),
        .S(S_reg[23:16]));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[17] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1_n_14 ),
        .Q(S_reg[17]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[18] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1_n_13 ),
        .Q(S_reg[18]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[19] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1_n_12 ),
        .Q(S_reg[19]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[1] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2_n_14 ),
        .Q(S_reg[1]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[20] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1_n_11 ),
        .Q(S_reg[20]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[21] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1_n_10 ),
        .Q(S_reg[21]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[22] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1_n_9 ),
        .Q(S_reg[22]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[23] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1_n_8 ),
        .Q(S_reg[23]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[24] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1_n_15 ),
        .Q(S_reg[24]),
        .R(\S[0]_i_1_n_0 ));
  CARRY8 \S_reg[24]_i_1 
       (.CI(\S_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_S_reg[24]_i_1_CO_UNCONNECTED [7],\S_reg[24]_i_1_n_1 ,\S_reg[24]_i_1_n_2 ,\S_reg[24]_i_1_n_3 ,\S_reg[24]_i_1_n_4 ,\S_reg[24]_i_1_n_5 ,\S_reg[24]_i_1_n_6 ,\S_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\S_reg[24]_i_1_n_8 ,\S_reg[24]_i_1_n_9 ,\S_reg[24]_i_1_n_10 ,\S_reg[24]_i_1_n_11 ,\S_reg[24]_i_1_n_12 ,\S_reg[24]_i_1_n_13 ,\S_reg[24]_i_1_n_14 ,\S_reg[24]_i_1_n_15 }),
        .S(S_reg[31:24]));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[25] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1_n_14 ),
        .Q(S_reg[25]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[26] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1_n_13 ),
        .Q(S_reg[26]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[27] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1_n_12 ),
        .Q(S_reg[27]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[28] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1_n_11 ),
        .Q(S_reg[28]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[29] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1_n_10 ),
        .Q(S_reg[29]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[2] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2_n_13 ),
        .Q(S_reg[2]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[30] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1_n_9 ),
        .Q(S_reg[30]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[31] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1_n_8 ),
        .Q(S_reg[31]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[3] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2_n_12 ),
        .Q(S_reg[3]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[4] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2_n_11 ),
        .Q(S_reg[4]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[5] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2_n_10 ),
        .Q(S_reg[5]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[6] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2_n_9 ),
        .Q(S_reg[6]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[7] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2_n_8 ),
        .Q(S_reg[7]),
        .R(\S[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[8] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1_n_15 ),
        .Q(S_reg[8]),
        .R(\S[0]_i_1_n_0 ));
  CARRY8 \S_reg[8]_i_1 
       (.CI(\S_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\S_reg[8]_i_1_n_0 ,\S_reg[8]_i_1_n_1 ,\S_reg[8]_i_1_n_2 ,\S_reg[8]_i_1_n_3 ,\S_reg[8]_i_1_n_4 ,\S_reg[8]_i_1_n_5 ,\S_reg[8]_i_1_n_6 ,\S_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\S_reg[8]_i_1_n_8 ,\S_reg[8]_i_1_n_9 ,\S_reg[8]_i_1_n_10 ,\S_reg[8]_i_1_n_11 ,\S_reg[8]_i_1_n_12 ,\S_reg[8]_i_1_n_13 ,\S_reg[8]_i_1_n_14 ,\S_reg[8]_i_1_n_15 }),
        .S(S_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[9] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1_n_14 ),
        .Q(S_reg[9]),
        .R(\S[0]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "Measure_F_Ro" *) 
module mesure_All_Ro_out_0_0_Measure_F_Ro_7
   (Data,
    S_int,
    Reset,
    CE_1Hz);
  output [31:0]Data;
  input S_int;
  input Reset;
  input CE_1Hz;

  wire CE_1Hz;
  wire [31:0]Data;
  (* async_reg = "true" *) wire Enable_Decal_1;
  (* async_reg = "true" *) wire Enable_Decal_2;
  wire Enable_Decal_3;
  wire Enable_Int;
  wire Enable_Int_Sync;
  wire Reset;
  wire \S[0]_i_1__1_n_0 ;
  wire \S[0]_i_3__1_n_0 ;
  wire S_int;
  wire [31:0]S_reg;
  wire \S_reg[0]_i_2__1_n_0 ;
  wire \S_reg[0]_i_2__1_n_1 ;
  wire \S_reg[0]_i_2__1_n_10 ;
  wire \S_reg[0]_i_2__1_n_11 ;
  wire \S_reg[0]_i_2__1_n_12 ;
  wire \S_reg[0]_i_2__1_n_13 ;
  wire \S_reg[0]_i_2__1_n_14 ;
  wire \S_reg[0]_i_2__1_n_15 ;
  wire \S_reg[0]_i_2__1_n_2 ;
  wire \S_reg[0]_i_2__1_n_3 ;
  wire \S_reg[0]_i_2__1_n_4 ;
  wire \S_reg[0]_i_2__1_n_5 ;
  wire \S_reg[0]_i_2__1_n_6 ;
  wire \S_reg[0]_i_2__1_n_7 ;
  wire \S_reg[0]_i_2__1_n_8 ;
  wire \S_reg[0]_i_2__1_n_9 ;
  wire \S_reg[16]_i_1__1_n_0 ;
  wire \S_reg[16]_i_1__1_n_1 ;
  wire \S_reg[16]_i_1__1_n_10 ;
  wire \S_reg[16]_i_1__1_n_11 ;
  wire \S_reg[16]_i_1__1_n_12 ;
  wire \S_reg[16]_i_1__1_n_13 ;
  wire \S_reg[16]_i_1__1_n_14 ;
  wire \S_reg[16]_i_1__1_n_15 ;
  wire \S_reg[16]_i_1__1_n_2 ;
  wire \S_reg[16]_i_1__1_n_3 ;
  wire \S_reg[16]_i_1__1_n_4 ;
  wire \S_reg[16]_i_1__1_n_5 ;
  wire \S_reg[16]_i_1__1_n_6 ;
  wire \S_reg[16]_i_1__1_n_7 ;
  wire \S_reg[16]_i_1__1_n_8 ;
  wire \S_reg[16]_i_1__1_n_9 ;
  wire \S_reg[24]_i_1__1_n_1 ;
  wire \S_reg[24]_i_1__1_n_10 ;
  wire \S_reg[24]_i_1__1_n_11 ;
  wire \S_reg[24]_i_1__1_n_12 ;
  wire \S_reg[24]_i_1__1_n_13 ;
  wire \S_reg[24]_i_1__1_n_14 ;
  wire \S_reg[24]_i_1__1_n_15 ;
  wire \S_reg[24]_i_1__1_n_2 ;
  wire \S_reg[24]_i_1__1_n_3 ;
  wire \S_reg[24]_i_1__1_n_4 ;
  wire \S_reg[24]_i_1__1_n_5 ;
  wire \S_reg[24]_i_1__1_n_6 ;
  wire \S_reg[24]_i_1__1_n_7 ;
  wire \S_reg[24]_i_1__1_n_8 ;
  wire \S_reg[24]_i_1__1_n_9 ;
  wire \S_reg[8]_i_1__1_n_0 ;
  wire \S_reg[8]_i_1__1_n_1 ;
  wire \S_reg[8]_i_1__1_n_10 ;
  wire \S_reg[8]_i_1__1_n_11 ;
  wire \S_reg[8]_i_1__1_n_12 ;
  wire \S_reg[8]_i_1__1_n_13 ;
  wire \S_reg[8]_i_1__1_n_14 ;
  wire \S_reg[8]_i_1__1_n_15 ;
  wire \S_reg[8]_i_1__1_n_2 ;
  wire \S_reg[8]_i_1__1_n_3 ;
  wire \S_reg[8]_i_1__1_n_4 ;
  wire \S_reg[8]_i_1__1_n_5 ;
  wire \S_reg[8]_i_1__1_n_6 ;
  wire \S_reg[8]_i_1__1_n_7 ;
  wire \S_reg[8]_i_1__1_n_8 ;
  wire \S_reg[8]_i_1__1_n_9 ;
  wire [7:7]\NLW_S_reg[24]_i_1__1_CO_UNCONNECTED ;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE Enable_Decal_1_reg
       (.C(S_int),
        .CE(1'b1),
        .CLR(Reset),
        .D(CE_1Hz),
        .Q(Enable_Decal_1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE Enable_Decal_2_reg
       (.C(S_int),
        .CE(1'b1),
        .CLR(Reset),
        .D(Enable_Decal_1),
        .Q(Enable_Decal_2));
  FDCE Enable_Decal_3_reg
       (.C(S_int),
        .CE(1'b1),
        .CLR(Reset),
        .D(Enable_Decal_2),
        .Q(Enable_Decal_3));
  LUT2 #(
    .INIT(4'h2)) 
    Enable_Int_Sync_i_1__1
       (.I0(Enable_Decal_3),
        .I1(Enable_Decal_2),
        .O(Enable_Int));
  FDCE Enable_Int_Sync_reg
       (.C(S_int),
        .CE(1'b1),
        .CLR(Reset),
        .D(Enable_Int),
        .Q(Enable_Int_Sync));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[0] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[0]),
        .Q(Data[0]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[10] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[10]),
        .Q(Data[10]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[11] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[11]),
        .Q(Data[11]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[12] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[12]),
        .Q(Data[12]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[13] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[13]),
        .Q(Data[13]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[14] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[14]),
        .Q(Data[14]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[15] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[15]),
        .Q(Data[15]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[16] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[16]),
        .Q(Data[16]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[17] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[17]),
        .Q(Data[17]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[18] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[18]),
        .Q(Data[18]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[19] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[19]),
        .Q(Data[19]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[1] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[1]),
        .Q(Data[1]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[20] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[20]),
        .Q(Data[20]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[21] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[21]),
        .Q(Data[21]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[22] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[22]),
        .Q(Data[22]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[23] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[23]),
        .Q(Data[23]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[24] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[24]),
        .Q(Data[24]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[25] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[25]),
        .Q(Data[25]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[26] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[26]),
        .Q(Data[26]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[27] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[27]),
        .Q(Data[27]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[28] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[28]),
        .Q(Data[28]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[29] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[29]),
        .Q(Data[29]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[2] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[2]),
        .Q(Data[2]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[30] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[30]),
        .Q(Data[30]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[31] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[31]),
        .Q(Data[31]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[3] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[3]),
        .Q(Data[3]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[4] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[4]),
        .Q(Data[4]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[5] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[5]),
        .Q(Data[5]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[6] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[6]),
        .Q(Data[6]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[7] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[7]),
        .Q(Data[7]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[8] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[8]),
        .Q(Data[8]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    \R_reg[9] 
       (.C(S_int),
        .CE(Enable_Int_Sync),
        .D(S_reg[9]),
        .Q(Data[9]),
        .R(Reset));
  LUT2 #(
    .INIT(4'hE)) 
    \S[0]_i_1__1 
       (.I0(Reset),
        .I1(Enable_Int_Sync),
        .O(\S[0]_i_1__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \S[0]_i_3__1 
       (.I0(S_reg[0]),
        .O(\S[0]_i_3__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[0] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__1_n_15 ),
        .Q(S_reg[0]),
        .R(\S[0]_i_1__1_n_0 ));
  CARRY8 \S_reg[0]_i_2__1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\S_reg[0]_i_2__1_n_0 ,\S_reg[0]_i_2__1_n_1 ,\S_reg[0]_i_2__1_n_2 ,\S_reg[0]_i_2__1_n_3 ,\S_reg[0]_i_2__1_n_4 ,\S_reg[0]_i_2__1_n_5 ,\S_reg[0]_i_2__1_n_6 ,\S_reg[0]_i_2__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\S_reg[0]_i_2__1_n_8 ,\S_reg[0]_i_2__1_n_9 ,\S_reg[0]_i_2__1_n_10 ,\S_reg[0]_i_2__1_n_11 ,\S_reg[0]_i_2__1_n_12 ,\S_reg[0]_i_2__1_n_13 ,\S_reg[0]_i_2__1_n_14 ,\S_reg[0]_i_2__1_n_15 }),
        .S({S_reg[7:1],\S[0]_i_3__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[10] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__1_n_13 ),
        .Q(S_reg[10]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[11] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__1_n_12 ),
        .Q(S_reg[11]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[12] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__1_n_11 ),
        .Q(S_reg[12]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[13] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__1_n_10 ),
        .Q(S_reg[13]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[14] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__1_n_9 ),
        .Q(S_reg[14]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[15] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__1_n_8 ),
        .Q(S_reg[15]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[16] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__1_n_15 ),
        .Q(S_reg[16]),
        .R(\S[0]_i_1__1_n_0 ));
  CARRY8 \S_reg[16]_i_1__1 
       (.CI(\S_reg[8]_i_1__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\S_reg[16]_i_1__1_n_0 ,\S_reg[16]_i_1__1_n_1 ,\S_reg[16]_i_1__1_n_2 ,\S_reg[16]_i_1__1_n_3 ,\S_reg[16]_i_1__1_n_4 ,\S_reg[16]_i_1__1_n_5 ,\S_reg[16]_i_1__1_n_6 ,\S_reg[16]_i_1__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\S_reg[16]_i_1__1_n_8 ,\S_reg[16]_i_1__1_n_9 ,\S_reg[16]_i_1__1_n_10 ,\S_reg[16]_i_1__1_n_11 ,\S_reg[16]_i_1__1_n_12 ,\S_reg[16]_i_1__1_n_13 ,\S_reg[16]_i_1__1_n_14 ,\S_reg[16]_i_1__1_n_15 }),
        .S(S_reg[23:16]));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[17] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__1_n_14 ),
        .Q(S_reg[17]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[18] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__1_n_13 ),
        .Q(S_reg[18]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[19] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__1_n_12 ),
        .Q(S_reg[19]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[1] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__1_n_14 ),
        .Q(S_reg[1]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[20] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__1_n_11 ),
        .Q(S_reg[20]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[21] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__1_n_10 ),
        .Q(S_reg[21]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[22] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__1_n_9 ),
        .Q(S_reg[22]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[23] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[16]_i_1__1_n_8 ),
        .Q(S_reg[23]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[24] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__1_n_15 ),
        .Q(S_reg[24]),
        .R(\S[0]_i_1__1_n_0 ));
  CARRY8 \S_reg[24]_i_1__1 
       (.CI(\S_reg[16]_i_1__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_S_reg[24]_i_1__1_CO_UNCONNECTED [7],\S_reg[24]_i_1__1_n_1 ,\S_reg[24]_i_1__1_n_2 ,\S_reg[24]_i_1__1_n_3 ,\S_reg[24]_i_1__1_n_4 ,\S_reg[24]_i_1__1_n_5 ,\S_reg[24]_i_1__1_n_6 ,\S_reg[24]_i_1__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\S_reg[24]_i_1__1_n_8 ,\S_reg[24]_i_1__1_n_9 ,\S_reg[24]_i_1__1_n_10 ,\S_reg[24]_i_1__1_n_11 ,\S_reg[24]_i_1__1_n_12 ,\S_reg[24]_i_1__1_n_13 ,\S_reg[24]_i_1__1_n_14 ,\S_reg[24]_i_1__1_n_15 }),
        .S(S_reg[31:24]));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[25] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__1_n_14 ),
        .Q(S_reg[25]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[26] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__1_n_13 ),
        .Q(S_reg[26]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[27] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__1_n_12 ),
        .Q(S_reg[27]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[28] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__1_n_11 ),
        .Q(S_reg[28]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[29] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__1_n_10 ),
        .Q(S_reg[29]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[2] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__1_n_13 ),
        .Q(S_reg[2]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[30] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__1_n_9 ),
        .Q(S_reg[30]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[31] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[24]_i_1__1_n_8 ),
        .Q(S_reg[31]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[3] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__1_n_12 ),
        .Q(S_reg[3]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[4] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__1_n_11 ),
        .Q(S_reg[4]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[5] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__1_n_10 ),
        .Q(S_reg[5]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[6] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__1_n_9 ),
        .Q(S_reg[6]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[7] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[0]_i_2__1_n_8 ),
        .Q(S_reg[7]),
        .R(\S[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[8] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__1_n_15 ),
        .Q(S_reg[8]),
        .R(\S[0]_i_1__1_n_0 ));
  CARRY8 \S_reg[8]_i_1__1 
       (.CI(\S_reg[0]_i_2__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\S_reg[8]_i_1__1_n_0 ,\S_reg[8]_i_1__1_n_1 ,\S_reg[8]_i_1__1_n_2 ,\S_reg[8]_i_1__1_n_3 ,\S_reg[8]_i_1__1_n_4 ,\S_reg[8]_i_1__1_n_5 ,\S_reg[8]_i_1__1_n_6 ,\S_reg[8]_i_1__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\S_reg[8]_i_1__1_n_8 ,\S_reg[8]_i_1__1_n_9 ,\S_reg[8]_i_1__1_n_10 ,\S_reg[8]_i_1__1_n_11 ,\S_reg[8]_i_1__1_n_12 ,\S_reg[8]_i_1__1_n_13 ,\S_reg[8]_i_1__1_n_14 ,\S_reg[8]_i_1__1_n_15 }),
        .S(S_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \S_reg[9] 
       (.C(S_int),
        .CE(1'b1),
        .D(\S_reg[8]_i_1__1_n_14 ),
        .Q(S_reg[9]),
        .R(\S[0]_i_1__1_n_0 ));
endmodule

(* ORIG_REF_NAME = "Ro_B" *) 
module mesure_All_Ro_out_0_0_Ro_B
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [12:0]ring;

  assign out[0] = ring[12];
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[0].gate 
       (.I0(ring[0]),
        .O(ring[1]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[1].gate 
       (.I0(ring[1]),
        .O(ring[2]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[2].gate 
       (.I0(ring[2]),
        .O(ring[3]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[3].gate 
       (.I0(ring[3]),
        .O(ring[4]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[4].gate 
       (.I0(ring[4]),
        .O(ring[5]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[5].gate 
       (.I0(ring[5]),
        .O(ring[6]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[6].gate 
       (.I0(ring[6]),
        .O(ring[7]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[7].gate 
       (.I0(ring[7]),
        .O(ring[8]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[10].gate 
       (.I0(ring[10]),
        .O(ring[11]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[11].gate 
       (.I0(ring[11]),
        .O(ring[12]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[8].gate 
       (.I0(ring[8]),
        .O(ring[9]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[9].gate 
       (.I0(ring[9]),
        .O(ring[10]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1__17
       (.I0(Reset_RO),
        .I1(ring[12]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
endmodule

(* ORIG_REF_NAME = "Ro_B" *) 
module mesure_All_Ro_out_0_0_Ro_B_10
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [12:0]ring;

  assign out[0] = ring[12];
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[0].gate 
       (.I0(ring[0]),
        .O(ring[1]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[1].gate 
       (.I0(ring[1]),
        .O(ring[2]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[2].gate 
       (.I0(ring[2]),
        .O(ring[3]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[3].gate 
       (.I0(ring[3]),
        .O(ring[4]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[4].gate 
       (.I0(ring[4]),
        .O(ring[5]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[5].gate 
       (.I0(ring[5]),
        .O(ring[6]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[6].gate 
       (.I0(ring[6]),
        .O(ring[7]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[7].gate 
       (.I0(ring[7]),
        .O(ring[8]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[10].gate 
       (.I0(ring[10]),
        .O(ring[11]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[11].gate 
       (.I0(ring[11]),
        .O(ring[12]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[8].gate 
       (.I0(ring[8]),
        .O(ring[9]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[9].gate 
       (.I0(ring[9]),
        .O(ring[10]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1__12
       (.I0(Reset_RO),
        .I1(ring[12]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
endmodule

(* ORIG_REF_NAME = "Ro_B" *) 
module mesure_All_Ro_out_0_0_Ro_B_11
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [12:0]ring;

  assign out[0] = ring[12];
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[0].gate 
       (.I0(ring[0]),
        .O(ring[1]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[1].gate 
       (.I0(ring[1]),
        .O(ring[2]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[2].gate 
       (.I0(ring[2]),
        .O(ring[3]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[3].gate 
       (.I0(ring[3]),
        .O(ring[4]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[4].gate 
       (.I0(ring[4]),
        .O(ring[5]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[5].gate 
       (.I0(ring[5]),
        .O(ring[6]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[6].gate 
       (.I0(ring[6]),
        .O(ring[7]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[7].gate 
       (.I0(ring[7]),
        .O(ring[8]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[10].gate 
       (.I0(ring[10]),
        .O(ring[11]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[11].gate 
       (.I0(ring[11]),
        .O(ring[12]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[8].gate 
       (.I0(ring[8]),
        .O(ring[9]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[9].gate 
       (.I0(ring[9]),
        .O(ring[10]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1__13
       (.I0(Reset_RO),
        .I1(ring[12]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
endmodule

(* ORIG_REF_NAME = "Ro_B" *) 
module mesure_All_Ro_out_0_0_Ro_B_17
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [12:0]ring;

  assign out[0] = ring[12];
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[0].gate 
       (.I0(ring[0]),
        .O(ring[1]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[1].gate 
       (.I0(ring[1]),
        .O(ring[2]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[2].gate 
       (.I0(ring[2]),
        .O(ring[3]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[3].gate 
       (.I0(ring[3]),
        .O(ring[4]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[4].gate 
       (.I0(ring[4]),
        .O(ring[5]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[5].gate 
       (.I0(ring[5]),
        .O(ring[6]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[6].gate 
       (.I0(ring[6]),
        .O(ring[7]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[7].gate 
       (.I0(ring[7]),
        .O(ring[8]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[10].gate 
       (.I0(ring[10]),
        .O(ring[11]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[11].gate 
       (.I0(ring[11]),
        .O(ring[12]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[8].gate 
       (.I0(ring[8]),
        .O(ring[9]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[9].gate 
       (.I0(ring[9]),
        .O(ring[10]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1__5
       (.I0(Reset_RO),
        .I1(ring[12]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
endmodule

(* ORIG_REF_NAME = "Ro_B" *) 
module mesure_All_Ro_out_0_0_Ro_B_18
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [12:0]ring;

  assign out[0] = ring[12];
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[0].gate 
       (.I0(ring[0]),
        .O(ring[1]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[1].gate 
       (.I0(ring[1]),
        .O(ring[2]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[2].gate 
       (.I0(ring[2]),
        .O(ring[3]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[3].gate 
       (.I0(ring[3]),
        .O(ring[4]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[4].gate 
       (.I0(ring[4]),
        .O(ring[5]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[5].gate 
       (.I0(ring[5]),
        .O(ring[6]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[6].gate 
       (.I0(ring[6]),
        .O(ring[7]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[7].gate 
       (.I0(ring[7]),
        .O(ring[8]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[10].gate 
       (.I0(ring[10]),
        .O(ring[11]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[11].gate 
       (.I0(ring[11]),
        .O(ring[12]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[8].gate 
       (.I0(ring[8]),
        .O(ring[9]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[9].gate 
       (.I0(ring[9]),
        .O(ring[10]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1__6
       (.I0(Reset_RO),
        .I1(ring[12]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
endmodule

(* ORIG_REF_NAME = "Ro_B" *) 
module mesure_All_Ro_out_0_0_Ro_B_19
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [12:0]ring;

  assign out[0] = ring[12];
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[0].gate 
       (.I0(ring[0]),
        .O(ring[1]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[1].gate 
       (.I0(ring[1]),
        .O(ring[2]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[2].gate 
       (.I0(ring[2]),
        .O(ring[3]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[3].gate 
       (.I0(ring[3]),
        .O(ring[4]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[4].gate 
       (.I0(ring[4]),
        .O(ring[5]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[5].gate 
       (.I0(ring[5]),
        .O(ring[6]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[6].gate 
       (.I0(ring[6]),
        .O(ring[7]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[7].gate 
       (.I0(ring[7]),
        .O(ring[8]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[10].gate 
       (.I0(ring[10]),
        .O(ring[11]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[11].gate 
       (.I0(ring[11]),
        .O(ring[12]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[8].gate 
       (.I0(ring[8]),
        .O(ring[9]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[9].gate 
       (.I0(ring[9]),
        .O(ring[10]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1__7
       (.I0(Reset_RO),
        .I1(ring[12]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
endmodule

(* ORIG_REF_NAME = "Ro_B" *) 
module mesure_All_Ro_out_0_0_Ro_B_25
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [12:0]ring;

  assign out[0] = ring[12];
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[0].gate 
       (.I0(ring[0]),
        .O(ring[1]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[1].gate 
       (.I0(ring[1]),
        .O(ring[2]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[2].gate 
       (.I0(ring[2]),
        .O(ring[3]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[3].gate 
       (.I0(ring[3]),
        .O(ring[4]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[4].gate 
       (.I0(ring[4]),
        .O(ring[5]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[5].gate 
       (.I0(ring[5]),
        .O(ring[6]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[6].gate 
       (.I0(ring[6]),
        .O(ring[7]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[7].gate 
       (.I0(ring[7]),
        .O(ring[8]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[10].gate 
       (.I0(ring[10]),
        .O(ring[11]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[11].gate 
       (.I0(ring[11]),
        .O(ring[12]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[8].gate 
       (.I0(ring[8]),
        .O(ring[9]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[9].gate 
       (.I0(ring[9]),
        .O(ring[10]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1
       (.I0(Reset_RO),
        .I1(ring[12]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
endmodule

(* ORIG_REF_NAME = "Ro_B" *) 
module mesure_All_Ro_out_0_0_Ro_B_26
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [12:0]ring;

  assign out[0] = ring[12];
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[0].gate 
       (.I0(ring[0]),
        .O(ring[1]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[1].gate 
       (.I0(ring[1]),
        .O(ring[2]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[2].gate 
       (.I0(ring[2]),
        .O(ring[3]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[3].gate 
       (.I0(ring[3]),
        .O(ring[4]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[4].gate 
       (.I0(ring[4]),
        .O(ring[5]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[5].gate 
       (.I0(ring[5]),
        .O(ring[6]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[6].gate 
       (.I0(ring[6]),
        .O(ring[7]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[7].gate 
       (.I0(ring[7]),
        .O(ring[8]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[10].gate 
       (.I0(ring[10]),
        .O(ring[11]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[11].gate 
       (.I0(ring[11]),
        .O(ring[12]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[8].gate 
       (.I0(ring[8]),
        .O(ring[9]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[9].gate 
       (.I0(ring[9]),
        .O(ring[10]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1__0
       (.I0(Reset_RO),
        .I1(ring[12]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
endmodule

(* ORIG_REF_NAME = "Ro_B" *) 
module mesure_All_Ro_out_0_0_Ro_B_27
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [12:0]ring;

  assign out[0] = ring[12];
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[0].gate 
       (.I0(ring[0]),
        .O(ring[1]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[1].gate 
       (.I0(ring[1]),
        .O(ring[2]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[2].gate 
       (.I0(ring[2]),
        .O(ring[3]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[3].gate 
       (.I0(ring[3]),
        .O(ring[4]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[4].gate 
       (.I0(ring[4]),
        .O(ring[5]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[5].gate 
       (.I0(ring[5]),
        .O(ring[6]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[6].gate 
       (.I0(ring[6]),
        .O(ring[7]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[7].gate 
       (.I0(ring[7]),
        .O(ring[8]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[10].gate 
       (.I0(ring[10]),
        .O(ring[11]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[11].gate 
       (.I0(ring[11]),
        .O(ring[12]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[8].gate 
       (.I0(ring[8]),
        .O(ring[9]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[9].gate 
       (.I0(ring[9]),
        .O(ring[10]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1__1
       (.I0(Reset_RO),
        .I1(ring[12]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
endmodule

(* ORIG_REF_NAME = "Ro_B" *) 
module mesure_All_Ro_out_0_0_Ro_B_3
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [12:0]ring;

  assign out[0] = ring[12];
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[0].gate 
       (.I0(ring[0]),
        .O(ring[1]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[1].gate 
       (.I0(ring[1]),
        .O(ring[2]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[2].gate 
       (.I0(ring[2]),
        .O(ring[3]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[3].gate 
       (.I0(ring[3]),
        .O(ring[4]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[4].gate 
       (.I0(ring[4]),
        .O(ring[5]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[5].gate 
       (.I0(ring[5]),
        .O(ring[6]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[6].gate 
       (.I0(ring[6]),
        .O(ring[7]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[7].gate 
       (.I0(ring[7]),
        .O(ring[8]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[10].gate 
       (.I0(ring[10]),
        .O(ring[11]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[11].gate 
       (.I0(ring[11]),
        .O(ring[12]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[8].gate 
       (.I0(ring[8]),
        .O(ring[9]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[9].gate 
       (.I0(ring[9]),
        .O(ring[10]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1__18
       (.I0(Reset_RO),
        .I1(ring[12]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
endmodule

(* ORIG_REF_NAME = "Ro_B" *) 
module mesure_All_Ro_out_0_0_Ro_B_4
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [12:0]ring;

  assign out[0] = ring[12];
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[0].gate 
       (.I0(ring[0]),
        .O(ring[1]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[1].gate 
       (.I0(ring[1]),
        .O(ring[2]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[2].gate 
       (.I0(ring[2]),
        .O(ring[3]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[3].gate 
       (.I0(ring[3]),
        .O(ring[4]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[4].gate 
       (.I0(ring[4]),
        .O(ring[5]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[5].gate 
       (.I0(ring[5]),
        .O(ring[6]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[6].gate 
       (.I0(ring[6]),
        .O(ring[7]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[7].gate 
       (.I0(ring[7]),
        .O(ring[8]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[10].gate 
       (.I0(ring[10]),
        .O(ring[11]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[11].gate 
       (.I0(ring[11]),
        .O(ring[12]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[8].gate 
       (.I0(ring[8]),
        .O(ring[9]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[9].gate 
       (.I0(ring[9]),
        .O(ring[10]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1__19
       (.I0(Reset_RO),
        .I1(ring[12]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
endmodule

(* ORIG_REF_NAME = "Ro_B" *) 
module mesure_All_Ro_out_0_0_Ro_B_9
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [12:0]ring;

  assign out[0] = ring[12];
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[0].gate 
       (.I0(ring[0]),
        .O(ring[1]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[1].gate 
       (.I0(ring[1]),
        .O(ring[2]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[2].gate 
       (.I0(ring[2]),
        .O(ring[3]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[3].gate 
       (.I0(ring[3]),
        .O(ring[4]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[4].gate 
       (.I0(ring[4]),
        .O(ring[5]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[5].gate 
       (.I0(ring[5]),
        .O(ring[6]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[6].gate 
       (.I0(ring[6]),
        .O(ring[7]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P1_gen_ro[7].gate 
       (.I0(ring[7]),
        .O(ring[8]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[10].gate 
       (.I0(ring[10]),
        .O(ring[11]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[11].gate 
       (.I0(ring[11]),
        .O(ring[12]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[8].gate 
       (.I0(ring[8]),
        .O(ring[9]));
  (* LOCK_PINS = "I0:A1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    \P2_gen_ro[9].gate 
       (.I0(ring[9]),
        .O(ring[10]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1__11
       (.I0(Reset_RO),
        .I1(ring[12]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
endmodule

(* ORIG_REF_NAME = "Ro_bench" *) 
module mesure_All_Ro_out_0_0_Ro_bench
   (S_int,
    Reset_RO,
    Mode,
    Stress,
    Ro_sel);
  output S_int;
  input [5:0]Reset_RO;
  input [5:0]Mode;
  input [0:0]Stress;
  input [2:0]Ro_sel;

  wire [5:0]Mode;
  wire \R[31]_i_3_n_0 ;
  wire [5:0]Reset_RO;
  wire [2:0]Ro_sel;
  (* DONT_TOUCH *) wire [5:0]S_Ro_int;
  wire S_int;
  wire [0:0]Stress;

  mesure_All_Ro_out_0_0_Ro_B \I_Ro_B[0].I_Ro_B 
       (.Mode(Mode[0]),
        .Reset_RO(Reset_RO[0]),
        .Stress(Stress),
        .out(S_Ro_int[0]));
  mesure_All_Ro_out_0_0_Ro_B_3 \I_Ro_B[1].I_Ro_B 
       (.Mode(Mode[1]),
        .Reset_RO(Reset_RO[1]),
        .Stress(Stress),
        .out(S_Ro_int[1]));
  mesure_All_Ro_out_0_0_Ro_B_4 \I_Ro_B[2].I_Ro_B 
       (.Mode(Mode[2]),
        .Reset_RO(Reset_RO[2]),
        .Stress(Stress),
        .out(S_Ro_int[2]));
  mesure_All_Ro_out_0_0_Ro_path \I_Ro_path[0].I_Ro_path 
       (.Mode(Mode[3]),
        .Reset_RO(Reset_RO[3]),
        .Stress(Stress),
        .out(S_Ro_int[3]));
  mesure_All_Ro_out_0_0_Ro_path_5 \I_Ro_path[1].I_Ro_path 
       (.Mode(Mode[4]),
        .Reset_RO(Reset_RO[4]),
        .Stress(Stress),
        .out(S_Ro_int[4]));
  mesure_All_Ro_out_0_0_Ro_path_6 \I_Ro_path[2].I_Ro_path 
       (.Mode(Mode[5]),
        .Reset_RO(Reset_RO[5]),
        .Stress(Stress),
        .out(S_Ro_int[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[31]_i_2__2 
       (.I0(S_Ro_int[5]),
        .I1(Ro_sel[0]),
        .I2(S_Ro_int[4]),
        .I3(Ro_sel[2]),
        .I4(\R[31]_i_3_n_0 ),
        .O(S_int));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_i_3 
       (.I0(S_Ro_int[3]),
        .I1(S_Ro_int[2]),
        .I2(Ro_sel[1]),
        .I3(S_Ro_int[1]),
        .I4(Ro_sel[0]),
        .I5(S_Ro_int[0]),
        .O(\R[31]_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "Ro_bench" *) 
module mesure_All_Ro_out_0_0_Ro_bench_16
   (S_int,
    Reset_RO,
    Mode,
    Stress,
    Ro_sel);
  output S_int;
  input [5:0]Reset_RO;
  input [5:0]Mode;
  input [0:0]Stress;
  input [2:0]Ro_sel;

  wire [5:0]Mode;
  wire \R[31]_i_2__0_n_0 ;
  wire [5:0]Reset_RO;
  wire [2:0]Ro_sel;
  (* DONT_TOUCH *) wire [5:0]S_Ro_int;
  wire S_int;
  wire [0:0]Stress;

  mesure_All_Ro_out_0_0_Ro_B_17 \I_Ro_B[0].I_Ro_B 
       (.Mode(Mode[0]),
        .Reset_RO(Reset_RO[0]),
        .Stress(Stress),
        .out(S_Ro_int[0]));
  mesure_All_Ro_out_0_0_Ro_B_18 \I_Ro_B[1].I_Ro_B 
       (.Mode(Mode[1]),
        .Reset_RO(Reset_RO[1]),
        .Stress(Stress),
        .out(S_Ro_int[1]));
  mesure_All_Ro_out_0_0_Ro_B_19 \I_Ro_B[2].I_Ro_B 
       (.Mode(Mode[2]),
        .Reset_RO(Reset_RO[2]),
        .Stress(Stress),
        .out(S_Ro_int[2]));
  mesure_All_Ro_out_0_0_Ro_path_20 \I_Ro_path[0].I_Ro_path 
       (.Mode(Mode[3]),
        .Reset_RO(Reset_RO[3]),
        .Stress(Stress),
        .out(S_Ro_int[3]));
  mesure_All_Ro_out_0_0_Ro_path_21 \I_Ro_path[1].I_Ro_path 
       (.Mode(Mode[4]),
        .Reset_RO(Reset_RO[4]),
        .Stress(Stress),
        .out(S_Ro_int[4]));
  mesure_All_Ro_out_0_0_Ro_path_22 \I_Ro_path[2].I_Ro_path 
       (.Mode(Mode[5]),
        .Reset_RO(Reset_RO[5]),
        .Stress(Stress),
        .out(S_Ro_int[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[31]_i_1__0 
       (.I0(S_Ro_int[5]),
        .I1(Ro_sel[0]),
        .I2(S_Ro_int[4]),
        .I3(Ro_sel[2]),
        .I4(\R[31]_i_2__0_n_0 ),
        .O(S_int));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_i_2__0 
       (.I0(S_Ro_int[3]),
        .I1(S_Ro_int[2]),
        .I2(Ro_sel[1]),
        .I3(S_Ro_int[1]),
        .I4(Ro_sel[0]),
        .I5(S_Ro_int[0]),
        .O(\R[31]_i_2__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "Ro_bench" *) 
module mesure_All_Ro_out_0_0_Ro_bench_24
   (S_int,
    Reset_RO,
    Mode,
    Stress,
    Ro_sel);
  output S_int;
  input [5:0]Reset_RO;
  input [5:0]Mode;
  input [0:0]Stress;
  input [2:0]Ro_sel;

  wire [5:0]Mode;
  wire \R[31]_i_2_n_0 ;
  wire [5:0]Reset_RO;
  wire [2:0]Ro_sel;
  (* DONT_TOUCH *) wire [5:0]S_Ro_int;
  wire S_int;
  wire [0:0]Stress;

  mesure_All_Ro_out_0_0_Ro_B_25 \I_Ro_B[0].I_Ro_B 
       (.Mode(Mode[0]),
        .Reset_RO(Reset_RO[0]),
        .Stress(Stress),
        .out(S_Ro_int[0]));
  mesure_All_Ro_out_0_0_Ro_B_26 \I_Ro_B[1].I_Ro_B 
       (.Mode(Mode[1]),
        .Reset_RO(Reset_RO[1]),
        .Stress(Stress),
        .out(S_Ro_int[1]));
  mesure_All_Ro_out_0_0_Ro_B_27 \I_Ro_B[2].I_Ro_B 
       (.Mode(Mode[2]),
        .Reset_RO(Reset_RO[2]),
        .Stress(Stress),
        .out(S_Ro_int[2]));
  mesure_All_Ro_out_0_0_Ro_path_28 \I_Ro_path[0].I_Ro_path 
       (.Mode(Mode[3]),
        .Reset_RO(Reset_RO[3]),
        .Stress(Stress),
        .out(S_Ro_int[3]));
  mesure_All_Ro_out_0_0_Ro_path_29 \I_Ro_path[1].I_Ro_path 
       (.Mode(Mode[4]),
        .Reset_RO(Reset_RO[4]),
        .Stress(Stress),
        .out(S_Ro_int[4]));
  mesure_All_Ro_out_0_0_Ro_path_30 \I_Ro_path[2].I_Ro_path 
       (.Mode(Mode[5]),
        .Reset_RO(Reset_RO[5]),
        .Stress(Stress),
        .out(S_Ro_int[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[31]_i_1 
       (.I0(S_Ro_int[5]),
        .I1(Ro_sel[0]),
        .I2(S_Ro_int[4]),
        .I3(Ro_sel[2]),
        .I4(\R[31]_i_2_n_0 ),
        .O(S_int));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_i_2 
       (.I0(S_Ro_int[3]),
        .I1(S_Ro_int[2]),
        .I2(Ro_sel[1]),
        .I3(S_Ro_int[1]),
        .I4(Ro_sel[0]),
        .I5(S_Ro_int[0]),
        .O(\R[31]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "Ro_bench" *) 
module mesure_All_Ro_out_0_0_Ro_bench_8
   (S_int,
    Reset_RO,
    Mode,
    Stress,
    Ro_sel);
  output S_int;
  input [5:0]Reset_RO;
  input [5:0]Mode;
  input [0:0]Stress;
  input [2:0]Ro_sel;

  wire [5:0]Mode;
  wire \R[31]_i_2__1_n_0 ;
  wire [5:0]Reset_RO;
  wire [2:0]Ro_sel;
  (* DONT_TOUCH *) wire [5:0]S_Ro_int;
  wire S_int;
  wire [0:0]Stress;

  mesure_All_Ro_out_0_0_Ro_B_9 \I_Ro_B[0].I_Ro_B 
       (.Mode(Mode[0]),
        .Reset_RO(Reset_RO[0]),
        .Stress(Stress),
        .out(S_Ro_int[0]));
  mesure_All_Ro_out_0_0_Ro_B_10 \I_Ro_B[1].I_Ro_B 
       (.Mode(Mode[1]),
        .Reset_RO(Reset_RO[1]),
        .Stress(Stress),
        .out(S_Ro_int[1]));
  mesure_All_Ro_out_0_0_Ro_B_11 \I_Ro_B[2].I_Ro_B 
       (.Mode(Mode[2]),
        .Reset_RO(Reset_RO[2]),
        .Stress(Stress),
        .out(S_Ro_int[2]));
  mesure_All_Ro_out_0_0_Ro_path_12 \I_Ro_path[0].I_Ro_path 
       (.Mode(Mode[3]),
        .Reset_RO(Reset_RO[3]),
        .Stress(Stress),
        .out(S_Ro_int[3]));
  mesure_All_Ro_out_0_0_Ro_path_13 \I_Ro_path[1].I_Ro_path 
       (.Mode(Mode[4]),
        .Reset_RO(Reset_RO[4]),
        .Stress(Stress),
        .out(S_Ro_int[4]));
  mesure_All_Ro_out_0_0_Ro_path_14 \I_Ro_path[2].I_Ro_path 
       (.Mode(Mode[5]),
        .Reset_RO(Reset_RO[5]),
        .Stress(Stress),
        .out(S_Ro_int[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[31]_i_1__1 
       (.I0(S_Ro_int[5]),
        .I1(Ro_sel[0]),
        .I2(S_Ro_int[4]),
        .I3(Ro_sel[2]),
        .I4(\R[31]_i_2__1_n_0 ),
        .O(S_int));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_i_2__1 
       (.I0(S_Ro_int[3]),
        .I1(S_Ro_int[2]),
        .I2(Ro_sel[1]),
        .I3(S_Ro_int[1]),
        .I4(Ro_sel[0]),
        .I5(S_Ro_int[0]),
        .O(\R[31]_i_2__1_n_0 ));
endmodule

(* ORIG_REF_NAME = "Ro_out" *) 
module mesure_All_Ro_out_0_0_Ro_out
   (Data,
    CE_1Hz,
    Reset,
    Reset_RO,
    Mode,
    Stress,
    Ro_sel);
  output [31:0]Data;
  input CE_1Hz;
  input Reset;
  input [5:0]Reset_RO;
  input [5:0]Mode;
  input [0:0]Stress;
  input [2:0]Ro_sel;

  wire CE_1Hz;
  wire [31:0]Data;
  wire [5:0]Mode;
  wire Reset;
  wire [5:0]Reset_RO;
  wire [2:0]Ro_sel;
  wire S_int;
  wire [0:0]Stress;

  mesure_All_Ro_out_0_0_Measure_F_Ro_23 I_Measure_F_Ro
       (.CE_1Hz(CE_1Hz),
        .Data(Data),
        .Reset(Reset),
        .S_int(S_int));
  mesure_All_Ro_out_0_0_Ro_bench_24 I_Ro_bench
       (.Mode(Mode),
        .Reset_RO(Reset_RO),
        .Ro_sel(Ro_sel),
        .S_int(S_int),
        .Stress(Stress));
endmodule

(* ORIG_REF_NAME = "Ro_out" *) 
module mesure_All_Ro_out_0_0_Ro_out_0
   (Data,
    Reset,
    CE_1Hz,
    Reset_RO,
    Mode,
    Stress,
    Ro_sel);
  output [31:0]Data;
  input Reset;
  input CE_1Hz;
  input [5:0]Reset_RO;
  input [5:0]Mode;
  input [0:0]Stress;
  input [2:0]Ro_sel;

  wire CE_1Hz;
  wire [31:0]Data;
  wire [5:0]Mode;
  wire Reset;
  wire [5:0]Reset_RO;
  wire [2:0]Ro_sel;
  wire S_int;
  wire [0:0]Stress;

  mesure_All_Ro_out_0_0_Measure_F_Ro_15 I_Measure_F_Ro
       (.CE_1Hz(CE_1Hz),
        .Data(Data),
        .Reset(Reset),
        .S_int(S_int));
  mesure_All_Ro_out_0_0_Ro_bench_16 I_Ro_bench
       (.Mode(Mode),
        .Reset_RO(Reset_RO),
        .Ro_sel(Ro_sel),
        .S_int(S_int),
        .Stress(Stress));
endmodule

(* ORIG_REF_NAME = "Ro_out" *) 
module mesure_All_Ro_out_0_0_Ro_out_1
   (Data,
    Reset,
    CE_1Hz,
    Reset_RO,
    Mode,
    Stress,
    Ro_sel);
  output [31:0]Data;
  input Reset;
  input CE_1Hz;
  input [5:0]Reset_RO;
  input [5:0]Mode;
  input [0:0]Stress;
  input [2:0]Ro_sel;

  wire CE_1Hz;
  wire [31:0]Data;
  wire [5:0]Mode;
  wire Reset;
  wire [5:0]Reset_RO;
  wire [2:0]Ro_sel;
  wire S_int;
  wire [0:0]Stress;

  mesure_All_Ro_out_0_0_Measure_F_Ro_7 I_Measure_F_Ro
       (.CE_1Hz(CE_1Hz),
        .Data(Data),
        .Reset(Reset),
        .S_int(S_int));
  mesure_All_Ro_out_0_0_Ro_bench_8 I_Ro_bench
       (.Mode(Mode),
        .Reset_RO(Reset_RO),
        .Ro_sel(Ro_sel),
        .S_int(S_int),
        .Stress(Stress));
endmodule

(* ORIG_REF_NAME = "Ro_out" *) 
module mesure_All_Ro_out_0_0_Ro_out_2
   (Reset,
    Data,
    CE_1Hz,
    Reset_RO,
    Mode,
    Stress,
    Ro_sel);
  output Reset;
  output [31:0]Data;
  input CE_1Hz;
  input [5:0]Reset_RO;
  input [5:0]Mode;
  input [0:0]Stress;
  input [2:0]Ro_sel;

  wire CE_1Hz;
  wire [31:0]Data;
  wire [5:0]Mode;
  wire Reset;
  wire [5:0]Reset_RO;
  wire [2:0]Ro_sel;
  wire S_int;
  wire [0:0]Stress;

  mesure_All_Ro_out_0_0_Measure_F_Ro I_Measure_F_Ro
       (.CE_1Hz(CE_1Hz),
        .Data(Data),
        .Mode(Mode),
        .SR(Reset),
        .S_int(S_int));
  mesure_All_Ro_out_0_0_Ro_bench I_Ro_bench
       (.Mode(Mode),
        .Reset_RO(Reset_RO),
        .Ro_sel(Ro_sel),
        .S_int(S_int),
        .Stress(Stress));
endmodule

(* ORIG_REF_NAME = "Ro_path" *) 
module mesure_All_Ro_out_0_0_Ro_path
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [1:0]ring;

  assign out[0] = ring[1];
  (* LOCK_PINS = "I0:A6" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    S1
       (.I0(ring[0]),
        .O(ring[1]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1__20
       (.I0(Reset_RO),
        .I1(ring[1]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
endmodule

(* ORIG_REF_NAME = "Ro_path" *) 
module mesure_All_Ro_out_0_0_Ro_path_12
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [1:0]ring;

  assign out[0] = ring[1];
  (* LOCK_PINS = "I0:A6" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    S1
       (.I0(ring[0]),
        .O(ring[1]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1__14
       (.I0(Reset_RO),
        .I1(ring[1]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
endmodule

(* ORIG_REF_NAME = "Ro_path" *) 
module mesure_All_Ro_out_0_0_Ro_path_13
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [1:0]ring;

  assign out[0] = ring[1];
  (* LOCK_PINS = "I0:A6" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    S1
       (.I0(ring[0]),
        .O(ring[1]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1__15
       (.I0(Reset_RO),
        .I1(ring[1]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
endmodule

(* ORIG_REF_NAME = "Ro_path" *) 
module mesure_All_Ro_out_0_0_Ro_path_14
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [1:0]ring;

  assign out[0] = ring[1];
  (* LOCK_PINS = "I0:A6" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    S1
       (.I0(ring[0]),
        .O(ring[1]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1__16
       (.I0(Reset_RO),
        .I1(ring[1]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
endmodule

(* ORIG_REF_NAME = "Ro_path" *) 
module mesure_All_Ro_out_0_0_Ro_path_20
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [1:0]ring;

  assign out[0] = ring[1];
  (* LOCK_PINS = "I0:A6" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    S1
       (.I0(ring[0]),
        .O(ring[1]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1__8
       (.I0(Reset_RO),
        .I1(ring[1]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
endmodule

(* ORIG_REF_NAME = "Ro_path" *) 
module mesure_All_Ro_out_0_0_Ro_path_21
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [1:0]ring;

  assign out[0] = ring[1];
  (* LOCK_PINS = "I0:A6" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    S1
       (.I0(ring[0]),
        .O(ring[1]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1__9
       (.I0(Reset_RO),
        .I1(ring[1]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
endmodule

(* ORIG_REF_NAME = "Ro_path" *) 
module mesure_All_Ro_out_0_0_Ro_path_22
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [1:0]ring;

  assign out[0] = ring[1];
  (* LOCK_PINS = "I0:A6" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    S1
       (.I0(ring[0]),
        .O(ring[1]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1__10
       (.I0(Reset_RO),
        .I1(ring[1]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
endmodule

(* ORIG_REF_NAME = "Ro_path" *) 
module mesure_All_Ro_out_0_0_Ro_path_28
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [1:0]ring;

  assign out[0] = ring[1];
  (* LOCK_PINS = "I0:A6" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    S1
       (.I0(ring[0]),
        .O(ring[1]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1__2
       (.I0(Reset_RO),
        .I1(ring[1]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
endmodule

(* ORIG_REF_NAME = "Ro_path" *) 
module mesure_All_Ro_out_0_0_Ro_path_29
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [1:0]ring;

  assign out[0] = ring[1];
  (* LOCK_PINS = "I0:A6" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    S1
       (.I0(ring[0]),
        .O(ring[1]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1__3
       (.I0(Reset_RO),
        .I1(ring[1]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
endmodule

(* ORIG_REF_NAME = "Ro_path" *) 
module mesure_All_Ro_out_0_0_Ro_path_30
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [1:0]ring;

  assign out[0] = ring[1];
  (* LOCK_PINS = "I0:A6" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    S1
       (.I0(ring[0]),
        .O(ring[1]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1__4
       (.I0(Reset_RO),
        .I1(ring[1]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
endmodule

(* ORIG_REF_NAME = "Ro_path" *) 
module mesure_All_Ro_out_0_0_Ro_path_5
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [1:0]ring;

  assign out[0] = ring[1];
  (* LOCK_PINS = "I0:A6" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    S1
       (.I0(ring[0]),
        .O(ring[1]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1__21
       (.I0(Reset_RO),
        .I1(ring[1]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
endmodule

(* ORIG_REF_NAME = "Ro_path" *) 
module mesure_All_Ro_out_0_0_Ro_path_6
   (out,
    Reset_RO,
    Mode,
    Stress);
  output [0:0]out;
  input [0:0]Reset_RO;
  input [0:0]Mode;
  input [0:0]Stress;

  wire [0:0]Mode;
  wire [0:0]Reset_RO;
  wire [0:0]Stress;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [1:0]ring;

  assign out[0] = ring[1];
  (* LOCK_PINS = "I0:A6" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    S1
       (.I0(ring[0]),
        .O(ring[1]));
  LUT4 #(
    .INIT(16'hBFBA)) 
    ring_inferred_i_1__22
       (.I0(Reset_RO),
        .I1(ring[1]),
        .I2(Mode),
        .I3(Stress),
        .O(ring[0]));
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
