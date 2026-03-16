-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Mar 12 17:04:34 2026
-- Host        : poste-16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/cmbouba/Mes_projets_pour_le_stage/Circuit_de_mesure_de_3_Ros/Circuit_de_mesure_de_3_Ros.srcs/sources_1/bd/mesure/ip/mesure_Select_data_0_0/mesure_Select_data_0_0_sim_netlist.vhdl
-- Design      : mesure_Select_data_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mesure_Select_data_0_0_Select_data is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Allow : out STD_LOGIC;
    Reset : in STD_LOGIC;
    Clk : in STD_LOGIC;
    Done : in STD_LOGIC;
    Send : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mesure_Select_data_0_0_Select_data : entity is "Select_data";
end mesure_Select_data_0_0_Select_data;

architecture STRUCTURE of mesure_Select_data_0_0_Select_data is
  signal Done_Precedent : STD_LOGIC;
  signal Done_Precedent_i_1_n_0 : STD_LOGIC;
  signal \Etat1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Etat1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Etat1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Etat1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Etat1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \Etat1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \Etat1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \Etat1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \Etat1_carry__0_n_0\ : STD_LOGIC;
  signal \Etat1_carry__0_n_1\ : STD_LOGIC;
  signal \Etat1_carry__0_n_2\ : STD_LOGIC;
  signal \Etat1_carry__0_n_3\ : STD_LOGIC;
  signal \Etat1_carry__0_n_4\ : STD_LOGIC;
  signal \Etat1_carry__0_n_5\ : STD_LOGIC;
  signal \Etat1_carry__0_n_6\ : STD_LOGIC;
  signal \Etat1_carry__0_n_7\ : STD_LOGIC;
  signal Etat1_carry_i_10_n_0 : STD_LOGIC;
  signal Etat1_carry_i_1_n_0 : STD_LOGIC;
  signal Etat1_carry_i_2_n_0 : STD_LOGIC;
  signal Etat1_carry_i_3_n_0 : STD_LOGIC;
  signal Etat1_carry_i_4_n_0 : STD_LOGIC;
  signal Etat1_carry_i_5_n_0 : STD_LOGIC;
  signal Etat1_carry_i_6_n_0 : STD_LOGIC;
  signal Etat1_carry_i_7_n_0 : STD_LOGIC;
  signal Etat1_carry_i_8_n_0 : STD_LOGIC;
  signal Etat1_carry_i_9_n_0 : STD_LOGIC;
  signal Etat1_carry_n_0 : STD_LOGIC;
  signal Etat1_carry_n_1 : STD_LOGIC;
  signal Etat1_carry_n_2 : STD_LOGIC;
  signal Etat1_carry_n_3 : STD_LOGIC;
  signal Etat1_carry_n_4 : STD_LOGIC;
  signal Etat1_carry_n_5 : STD_LOGIC;
  signal Etat1_carry_n_6 : STD_LOGIC;
  signal Etat1_carry_n_7 : STD_LOGIC;
  signal \FSM_onehot_Etat[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_Etat[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_Etat[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_Etat[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_Etat[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_Etat_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_Etat_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_Etat_reg_n_0_[2]\ : STD_LOGIC;
  signal I : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \I[0]_i_1_n_0\ : STD_LOGIC;
  signal \I[10]_i_1_n_0\ : STD_LOGIC;
  signal \I[11]_i_1_n_0\ : STD_LOGIC;
  signal \I[12]_i_1_n_0\ : STD_LOGIC;
  signal \I[13]_i_1_n_0\ : STD_LOGIC;
  signal \I[14]_i_1_n_0\ : STD_LOGIC;
  signal \I[15]_i_1_n_0\ : STD_LOGIC;
  signal \I[16]_i_1_n_0\ : STD_LOGIC;
  signal \I[17]_i_1_n_0\ : STD_LOGIC;
  signal \I[18]_i_1_n_0\ : STD_LOGIC;
  signal \I[19]_i_1_n_0\ : STD_LOGIC;
  signal \I[1]_i_1_n_0\ : STD_LOGIC;
  signal \I[20]_i_1_n_0\ : STD_LOGIC;
  signal \I[21]_i_1_n_0\ : STD_LOGIC;
  signal \I[22]_i_1_n_0\ : STD_LOGIC;
  signal \I[23]_i_1_n_0\ : STD_LOGIC;
  signal \I[24]_i_1_n_0\ : STD_LOGIC;
  signal \I[25]_i_1_n_0\ : STD_LOGIC;
  signal \I[26]_i_1_n_0\ : STD_LOGIC;
  signal \I[27]_i_1_n_0\ : STD_LOGIC;
  signal \I[28]_i_1_n_0\ : STD_LOGIC;
  signal \I[29]_i_1_n_0\ : STD_LOGIC;
  signal \I[2]_i_1_n_0\ : STD_LOGIC;
  signal \I[30]_i_1_n_0\ : STD_LOGIC;
  signal \I[31]_i_2_n_0\ : STD_LOGIC;
  signal \I[3]_i_1_n_0\ : STD_LOGIC;
  signal \I[4]_i_1_n_0\ : STD_LOGIC;
  signal \I[5]_i_1_n_0\ : STD_LOGIC;
  signal \I[6]_i_1_n_0\ : STD_LOGIC;
  signal \I[7]_i_1_n_0\ : STD_LOGIC;
  signal \I[8]_i_1_n_0\ : STD_LOGIC;
  signal \I[9]_i_1_n_0\ : STD_LOGIC;
  signal I_0 : STD_LOGIC;
  signal \I_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \I_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \I_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \I_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \I_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \I_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \I_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \I_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \I_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \I_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \I_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \I_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \I_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \I_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \I_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \I_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \I_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \I_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \I_reg[31]_i_3_n_4\ : STD_LOGIC;
  signal \I_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \I_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \I_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \I_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \I_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \I_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \I_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \I_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \I_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \I_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \I_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal J : STD_LOGIC;
  signal \J[0]_i_1_n_0\ : STD_LOGIC;
  signal \J[1]_i_1_n_0\ : STD_LOGIC;
  signal \J[2]_i_1_n_0\ : STD_LOGIC;
  signal \J[3]_i_1_n_0\ : STD_LOGIC;
  signal \J[4]_i_2_n_0\ : STD_LOGIC;
  signal \J[4]_i_3_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal in4 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_Etat1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_Etat1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_I_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_I_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Allow_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of Done_Precedent_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_Etat[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_Etat[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_Etat[2]_i_2\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_Etat_reg[0]\ : label is "attendre:100,eteint:001,envoi:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_Etat_reg[1]\ : label is "attendre:100,eteint:001,envoi:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_Etat_reg[2]\ : label is "attendre:100,eteint:001,envoi:010";
  attribute SOFT_HLUTNM of \I[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \I[10]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \I[11]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \I[12]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \I[13]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \I[14]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \I[15]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \I[16]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \I[17]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \I[18]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \I[19]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \I[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \I[20]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \I[21]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \I[22]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \I[23]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \I[24]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \I[25]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \I[26]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \I[27]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \I[28]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \I[29]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \I[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \I[30]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \I[31]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \I[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \I[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \I[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \I[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \I[7]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \I[8]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \I[9]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \J[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \J[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \J[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \J[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \J[4]_i_3\ : label is "soft_lutpair0";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
Allow_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[1]\,
      I1 => \FSM_onehot_Etat_reg_n_0_[2]\,
      O => Allow
    );
Done_Precedent_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Done,
      I1 => Reset,
      O => Done_Precedent_i_1_n_0
    );
Done_Precedent_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => Done_Precedent_i_1_n_0,
      Q => Done_Precedent,
      R => '0'
    );
Etat1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => Etat1_carry_n_0,
      CO(6) => Etat1_carry_n_1,
      CO(5) => Etat1_carry_n_2,
      CO(4) => Etat1_carry_n_3,
      CO(3) => Etat1_carry_n_4,
      CO(2) => Etat1_carry_n_5,
      CO(1) => Etat1_carry_n_6,
      CO(0) => Etat1_carry_n_7,
      DI(7 downto 2) => B"000000",
      DI(1) => Etat1_carry_i_1_n_0,
      DI(0) => Etat1_carry_i_2_n_0,
      O(7 downto 0) => NLW_Etat1_carry_O_UNCONNECTED(7 downto 0),
      S(7) => Etat1_carry_i_3_n_0,
      S(6) => Etat1_carry_i_4_n_0,
      S(5) => Etat1_carry_i_5_n_0,
      S(4) => Etat1_carry_i_6_n_0,
      S(3) => Etat1_carry_i_7_n_0,
      S(2) => Etat1_carry_i_8_n_0,
      S(1) => Etat1_carry_i_9_n_0,
      S(0) => Etat1_carry_i_10_n_0
    );
\Etat1_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => Etat1_carry_n_0,
      CI_TOP => '0',
      CO(7) => \Etat1_carry__0_n_0\,
      CO(6) => \Etat1_carry__0_n_1\,
      CO(5) => \Etat1_carry__0_n_2\,
      CO(4) => \Etat1_carry__0_n_3\,
      CO(3) => \Etat1_carry__0_n_4\,
      CO(2) => \Etat1_carry__0_n_5\,
      CO(1) => \Etat1_carry__0_n_6\,
      CO(0) => \Etat1_carry__0_n_7\,
      DI(7) => I(31),
      DI(6 downto 0) => B"0000000",
      O(7 downto 0) => \NLW_Etat1_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \Etat1_carry__0_i_1_n_0\,
      S(6) => \Etat1_carry__0_i_2_n_0\,
      S(5) => \Etat1_carry__0_i_3_n_0\,
      S(4) => \Etat1_carry__0_i_4_n_0\,
      S(3) => \Etat1_carry__0_i_5_n_0\,
      S(2) => \Etat1_carry__0_i_6_n_0\,
      S(1) => \Etat1_carry__0_i_7_n_0\,
      S(0) => \Etat1_carry__0_i_8_n_0\
    );
\Etat1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I(30),
      I1 => I(31),
      O => \Etat1_carry__0_i_1_n_0\
    );
\Etat1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I(28),
      I1 => I(29),
      O => \Etat1_carry__0_i_2_n_0\
    );
\Etat1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I(26),
      I1 => I(27),
      O => \Etat1_carry__0_i_3_n_0\
    );
\Etat1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I(24),
      I1 => I(25),
      O => \Etat1_carry__0_i_4_n_0\
    );
\Etat1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I(22),
      I1 => I(23),
      O => \Etat1_carry__0_i_5_n_0\
    );
\Etat1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I(20),
      I1 => I(21),
      O => \Etat1_carry__0_i_6_n_0\
    );
\Etat1_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I(18),
      I1 => I(19),
      O => \Etat1_carry__0_i_7_n_0\
    );
\Etat1_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I(16),
      I1 => I(17),
      O => \Etat1_carry__0_i_8_n_0\
    );
Etat1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I(3),
      O => Etat1_carry_i_1_n_0
    );
Etat1_carry_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => I(1),
      I1 => I(0),
      O => Etat1_carry_i_10_n_0
    );
Etat1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I(1),
      O => Etat1_carry_i_2_n_0
    );
Etat1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I(14),
      I1 => I(15),
      O => Etat1_carry_i_3_n_0
    );
Etat1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I(12),
      I1 => I(13),
      O => Etat1_carry_i_4_n_0
    );
Etat1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I(10),
      I1 => I(11),
      O => Etat1_carry_i_5_n_0
    );
Etat1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I(8),
      I1 => I(9),
      O => Etat1_carry_i_6_n_0
    );
Etat1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I(6),
      I1 => I(7),
      O => Etat1_carry_i_7_n_0
    );
Etat1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I(4),
      I1 => I(5),
      O => Etat1_carry_i_8_n_0
    );
Etat1_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => I(3),
      I1 => I(2),
      O => Etat1_carry_i_9_n_0
    );
\FSM_onehot_Etat[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70000"
    )
        port map (
      I0 => \FSM_onehot_Etat[1]_i_2_n_0\,
      I1 => Done,
      I2 => Done_Precedent,
      I3 => \^q\(4),
      I4 => \FSM_onehot_Etat_reg_n_0_[2]\,
      O => \FSM_onehot_Etat[0]_i_1_n_0\
    );
\FSM_onehot_Etat[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => Done_Precedent,
      I2 => Done,
      I3 => \FSM_onehot_Etat[1]_i_2_n_0\,
      I4 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I5 => \FSM_onehot_Etat_reg_n_0_[0]\,
      O => \FSM_onehot_Etat[1]_i_1_n_0\
    );
\FSM_onehot_Etat[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \FSM_onehot_Etat[1]_i_2_n_0\
    );
\FSM_onehot_Etat[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAEAEAFFEAEA"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[1]\,
      I1 => Send,
      I2 => \FSM_onehot_Etat_reg_n_0_[0]\,
      I3 => \FSM_onehot_Etat[2]_i_2_n_0\,
      I4 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I5 => \Etat1_carry__0_n_0\,
      O => \FSM_onehot_Etat[2]_i_1_n_0\
    );
\FSM_onehot_Etat[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => Done,
      I1 => Done_Precedent,
      I2 => \^q\(4),
      O => \FSM_onehot_Etat[2]_i_2_n_0\
    );
\FSM_onehot_Etat_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => \FSM_onehot_Etat[2]_i_1_n_0\,
      D => \FSM_onehot_Etat[0]_i_1_n_0\,
      Q => \FSM_onehot_Etat_reg_n_0_[0]\,
      S => Reset
    );
\FSM_onehot_Etat_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FSM_onehot_Etat[2]_i_1_n_0\,
      D => \FSM_onehot_Etat[1]_i_1_n_0\,
      Q => \FSM_onehot_Etat_reg_n_0_[1]\,
      R => Reset
    );
\FSM_onehot_Etat_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FSM_onehot_Etat[2]_i_1_n_0\,
      D => \FSM_onehot_Etat_reg_n_0_[1]\,
      Q => \FSM_onehot_Etat_reg_n_0_[2]\,
      R => Reset
    );
\I[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => I(0),
      O => \I[0]_i_1_n_0\
    );
\I[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(10),
      O => \I[10]_i_1_n_0\
    );
\I[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(11),
      O => \I[11]_i_1_n_0\
    );
\I[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(12),
      O => \I[12]_i_1_n_0\
    );
\I[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(13),
      O => \I[13]_i_1_n_0\
    );
\I[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(14),
      O => \I[14]_i_1_n_0\
    );
\I[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(15),
      O => \I[15]_i_1_n_0\
    );
\I[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(16),
      O => \I[16]_i_1_n_0\
    );
\I[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(17),
      O => \I[17]_i_1_n_0\
    );
\I[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(18),
      O => \I[18]_i_1_n_0\
    );
\I[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(19),
      O => \I[19]_i_1_n_0\
    );
\I[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(1),
      O => \I[1]_i_1_n_0\
    );
\I[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(20),
      O => \I[20]_i_1_n_0\
    );
\I[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(21),
      O => \I[21]_i_1_n_0\
    );
\I[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(22),
      O => \I[22]_i_1_n_0\
    );
\I[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(23),
      O => \I[23]_i_1_n_0\
    );
\I[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(24),
      O => \I[24]_i_1_n_0\
    );
\I[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(25),
      O => \I[25]_i_1_n_0\
    );
\I[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(26),
      O => \I[26]_i_1_n_0\
    );
\I[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(27),
      O => \I[27]_i_1_n_0\
    );
\I[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(28),
      O => \I[28]_i_1_n_0\
    );
\I[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(29),
      O => \I[29]_i_1_n_0\
    );
\I[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(2),
      O => \I[2]_i_1_n_0\
    );
\I[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(30),
      O => \I[30]_i_1_n_0\
    );
\I[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => \Etat1_carry__0_n_0\,
      I2 => \FSM_onehot_Etat_reg_n_0_[1]\,
      O => I_0
    );
\I[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(31),
      O => \I[31]_i_2_n_0\
    );
\I[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(3),
      O => \I[3]_i_1_n_0\
    );
\I[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(4),
      O => \I[4]_i_1_n_0\
    );
\I[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(5),
      O => \I[5]_i_1_n_0\
    );
\I[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(6),
      O => \I[6]_i_1_n_0\
    );
\I[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(7),
      O => \I[7]_i_1_n_0\
    );
\I[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(8),
      O => \I[8]_i_1_n_0\
    );
\I[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => in4(9),
      O => \I[9]_i_1_n_0\
    );
\I_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[0]_i_1_n_0\,
      Q => I(0),
      R => Reset
    );
\I_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[10]_i_1_n_0\,
      Q => I(10),
      R => Reset
    );
\I_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[11]_i_1_n_0\,
      Q => I(11),
      R => Reset
    );
\I_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[12]_i_1_n_0\,
      Q => I(12),
      R => Reset
    );
\I_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[13]_i_1_n_0\,
      Q => I(13),
      R => Reset
    );
\I_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[14]_i_1_n_0\,
      Q => I(14),
      R => Reset
    );
\I_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[15]_i_1_n_0\,
      Q => I(15),
      R => Reset
    );
\I_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[16]_i_1_n_0\,
      Q => I(16),
      R => Reset
    );
\I_reg[16]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \I_reg[8]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \I_reg[16]_i_2_n_0\,
      CO(6) => \I_reg[16]_i_2_n_1\,
      CO(5) => \I_reg[16]_i_2_n_2\,
      CO(4) => \I_reg[16]_i_2_n_3\,
      CO(3) => \I_reg[16]_i_2_n_4\,
      CO(2) => \I_reg[16]_i_2_n_5\,
      CO(1) => \I_reg[16]_i_2_n_6\,
      CO(0) => \I_reg[16]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in4(16 downto 9),
      S(7 downto 0) => I(16 downto 9)
    );
\I_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[17]_i_1_n_0\,
      Q => I(17),
      R => Reset
    );
\I_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[18]_i_1_n_0\,
      Q => I(18),
      R => Reset
    );
\I_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[19]_i_1_n_0\,
      Q => I(19),
      R => Reset
    );
\I_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[1]_i_1_n_0\,
      Q => I(1),
      R => Reset
    );
\I_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[20]_i_1_n_0\,
      Q => I(20),
      R => Reset
    );
\I_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[21]_i_1_n_0\,
      Q => I(21),
      R => Reset
    );
\I_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[22]_i_1_n_0\,
      Q => I(22),
      R => Reset
    );
\I_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[23]_i_1_n_0\,
      Q => I(23),
      R => Reset
    );
\I_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[24]_i_1_n_0\,
      Q => I(24),
      R => Reset
    );
\I_reg[24]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \I_reg[16]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \I_reg[24]_i_2_n_0\,
      CO(6) => \I_reg[24]_i_2_n_1\,
      CO(5) => \I_reg[24]_i_2_n_2\,
      CO(4) => \I_reg[24]_i_2_n_3\,
      CO(3) => \I_reg[24]_i_2_n_4\,
      CO(2) => \I_reg[24]_i_2_n_5\,
      CO(1) => \I_reg[24]_i_2_n_6\,
      CO(0) => \I_reg[24]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in4(24 downto 17),
      S(7 downto 0) => I(24 downto 17)
    );
\I_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[25]_i_1_n_0\,
      Q => I(25),
      R => Reset
    );
\I_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[26]_i_1_n_0\,
      Q => I(26),
      R => Reset
    );
\I_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[27]_i_1_n_0\,
      Q => I(27),
      R => Reset
    );
\I_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[28]_i_1_n_0\,
      Q => I(28),
      R => Reset
    );
\I_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[29]_i_1_n_0\,
      Q => I(29),
      R => Reset
    );
\I_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[2]_i_1_n_0\,
      Q => I(2),
      R => Reset
    );
\I_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[30]_i_1_n_0\,
      Q => I(30),
      R => Reset
    );
\I_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[31]_i_2_n_0\,
      Q => I(31),
      R => Reset
    );
\I_reg[31]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \I_reg[24]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_I_reg[31]_i_3_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \I_reg[31]_i_3_n_2\,
      CO(4) => \I_reg[31]_i_3_n_3\,
      CO(3) => \I_reg[31]_i_3_n_4\,
      CO(2) => \I_reg[31]_i_3_n_5\,
      CO(1) => \I_reg[31]_i_3_n_6\,
      CO(0) => \I_reg[31]_i_3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_I_reg[31]_i_3_O_UNCONNECTED\(7),
      O(6 downto 0) => in4(31 downto 25),
      S(7) => '0',
      S(6 downto 0) => I(31 downto 25)
    );
\I_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[3]_i_1_n_0\,
      Q => I(3),
      R => Reset
    );
\I_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[4]_i_1_n_0\,
      Q => I(4),
      R => Reset
    );
\I_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[5]_i_1_n_0\,
      Q => I(5),
      R => Reset
    );
\I_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[6]_i_1_n_0\,
      Q => I(6),
      R => Reset
    );
\I_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[7]_i_1_n_0\,
      Q => I(7),
      R => Reset
    );
\I_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[8]_i_1_n_0\,
      Q => I(8),
      R => Reset
    );
\I_reg[8]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => I(0),
      CI_TOP => '0',
      CO(7) => \I_reg[8]_i_2_n_0\,
      CO(6) => \I_reg[8]_i_2_n_1\,
      CO(5) => \I_reg[8]_i_2_n_2\,
      CO(4) => \I_reg[8]_i_2_n_3\,
      CO(3) => \I_reg[8]_i_2_n_4\,
      CO(2) => \I_reg[8]_i_2_n_5\,
      CO(1) => \I_reg[8]_i_2_n_6\,
      CO(0) => \I_reg[8]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in4(8 downto 1),
      S(7 downto 0) => I(8 downto 1)
    );
\I_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => I_0,
      D => \I[9]_i_1_n_0\,
      Q => I(9),
      R => Reset
    );
\J[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I1 => \^q\(0),
      O => \J[0]_i_1_n_0\
    );
\J[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I2 => \^q\(1),
      O => \J[1]_i_1_n_0\
    );
\J[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I3 => \^q\(2),
      O => \J[2]_i_1_n_0\
    );
\J[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I4 => \^q\(3),
      O => \J[3]_i_1_n_0\
    );
\J[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888F88"
    )
        port map (
      I0 => \FSM_onehot_Etat_reg_n_0_[0]\,
      I1 => Send,
      I2 => \J[4]_i_3_n_0\,
      I3 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I4 => \Etat1_carry__0_n_0\,
      O => J
    );
\J[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \FSM_onehot_Etat_reg_n_0_[2]\,
      I5 => \^q\(4),
      O => \J[4]_i_2_n_0\
    );
\J[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => Done_Precedent,
      I2 => Done,
      I3 => \FSM_onehot_Etat[1]_i_2_n_0\,
      O => \J[4]_i_3_n_0\
    );
\J_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => J,
      D => \J[0]_i_1_n_0\,
      Q => \^q\(0),
      R => Reset
    );
\J_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => J,
      D => \J[1]_i_1_n_0\,
      Q => \^q\(1),
      R => Reset
    );
\J_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => J,
      D => \J[2]_i_1_n_0\,
      Q => \^q\(2),
      R => Reset
    );
\J_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => J,
      D => \J[3]_i_1_n_0\,
      Q => \^q\(3),
      R => Reset
    );
\J_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => J,
      D => \J[4]_i_2_n_0\,
      Q => \^q\(4),
      R => Reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mesure_Select_data_0_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Done : in STD_LOGIC;
    Send : in STD_LOGIC;
    Sel : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Allow : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mesure_Select_data_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mesure_Select_data_0_0 : entity is "mesure_Select_data_0_0,Select_data,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mesure_Select_data_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of mesure_Select_data_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of mesure_Select_data_0_0 : entity is "Select_data,Vivado 2018.3";
end mesure_Select_data_0_0;

architecture STRUCTURE of mesure_Select_data_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of Clk : signal is "xilinx.com:signal:clock:1.0 Clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Clk : signal is "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN mesure_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0";
  attribute x_interface_info of Reset : signal is "xilinx.com:signal:reset:1.0 Reset RST";
  attribute x_interface_parameter of Reset : signal is "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.mesure_Select_data_0_0_Select_data
     port map (
      Allow => Allow,
      Clk => Clk,
      Done => Done,
      Q(4 downto 0) => Sel(4 downto 0),
      Reset => Reset,
      Send => Send
    );
end STRUCTURE;
