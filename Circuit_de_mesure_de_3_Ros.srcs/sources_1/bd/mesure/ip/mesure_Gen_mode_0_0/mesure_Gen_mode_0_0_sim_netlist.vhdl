-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Mar 12 17:04:35 2026
-- Host        : poste-16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/cmbouba/Mes_projets_pour_le_stage/Circuit_de_mesure_de_3_Ros/Circuit_de_mesure_de_3_Ros.srcs/sources_1/bd/mesure/ip/mesure_Gen_mode_0_0/mesure_Gen_mode_0_0_sim_netlist.vhdl
-- Design      : mesure_Gen_mode_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mesure_Gen_mode_0_0_Counter_mode is
  port (
    Mode_G_int : out STD_LOGIC;
    Reset : in STD_LOGIC;
    Clk : in STD_LOGIC;
    CE_1Hz_int : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mesure_Gen_mode_0_0_Counter_mode : entity is "Counter_mode";
end mesure_Gen_mode_0_0_Counter_mode;

architecture STRUCTURE of mesure_Gen_mode_0_0_Counter_mode is
  signal Mode_G_i_1_n_0 : STD_LOGIC;
  signal Mode_G_i_2_n_0 : STD_LOGIC;
  signal \^mode_g_int\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \s[4]_i_1_n_0\ : STD_LOGIC;
  signal \s[5]_i_1_n_0\ : STD_LOGIC;
  signal \s[6]_i_2_n_0\ : STD_LOGIC;
  signal \s[9]_i_1_n_0\ : STD_LOGIC;
  signal \s[9]_i_3_n_0\ : STD_LOGIC;
  signal \s[9]_i_4_n_0\ : STD_LOGIC;
  signal \s[9]_i_5_n_0\ : STD_LOGIC;
  signal \s_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s[6]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s[9]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s[9]_i_5\ : label is "soft_lutpair2";
begin
  Mode_G_int <= \^mode_g_int\;
Mode_G_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0DFF0D00"
    )
        port map (
      I0 => \s_reg__0\(8),
      I1 => Mode_G_i_2_n_0,
      I2 => \s_reg__0\(9),
      I3 => CE_1Hz_int,
      I4 => \^mode_g_int\,
      O => Mode_G_i_1_n_0
    );
Mode_G_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005777"
    )
        port map (
      I0 => \s_reg__0\(5),
      I1 => \s_reg__0\(4),
      I2 => \s_reg__0\(3),
      I3 => \s_reg__0\(2),
      I4 => \s_reg__0\(7),
      I5 => \s_reg__0\(6),
      O => Mode_G_i_2_n_0
    );
Mode_G_reg: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => Mode_G_i_1_n_0,
      Q => \^mode_g_int\,
      R => Reset
    );
\s[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \s_reg__0\(0),
      O => p_0_in(0)
    );
\s[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \s_reg__0\(0),
      I1 => \s_reg__0\(1),
      O => p_0_in(1)
    );
\s[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \s_reg__0\(0),
      I1 => \s_reg__0\(1),
      I2 => \s_reg__0\(2),
      O => p_0_in(2)
    );
\s[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \s_reg__0\(3),
      I1 => \s_reg__0\(0),
      I2 => \s_reg__0\(1),
      I3 => \s_reg__0\(2),
      O => p_0_in(3)
    );
\s[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \s_reg__0\(4),
      I1 => \s_reg__0\(2),
      I2 => \s_reg__0\(3),
      I3 => \s_reg__0\(0),
      I4 => \s_reg__0\(1),
      O => \s[4]_i_1_n_0\
    );
\s[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \s_reg__0\(5),
      I1 => \s_reg__0\(4),
      I2 => \s_reg__0\(1),
      I3 => \s_reg__0\(0),
      I4 => \s_reg__0\(3),
      I5 => \s_reg__0\(2),
      O => \s[5]_i_1_n_0\
    );
\s[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => \s_reg__0\(6),
      I1 => \s_reg__0\(2),
      I2 => \s_reg__0\(3),
      I3 => \s[6]_i_2_n_0\,
      I4 => \s_reg__0\(4),
      I5 => \s_reg__0\(5),
      O => p_0_in(6)
    );
\s[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \s_reg__0\(0),
      I1 => \s_reg__0\(1),
      O => \s[6]_i_2_n_0\
    );
\s[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \s_reg__0\(7),
      I1 => \s[9]_i_4_n_0\,
      I2 => \s_reg__0\(6),
      O => p_0_in(7)
    );
\s[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \s_reg__0\(8),
      I1 => \s_reg__0\(6),
      I2 => \s[9]_i_4_n_0\,
      I3 => \s_reg__0\(7),
      O => p_0_in(8)
    );
\s[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAEAEAEAEAAA"
    )
        port map (
      I0 => Reset,
      I1 => CE_1Hz_int,
      I2 => \s_reg__0\(9),
      I3 => \s[9]_i_3_n_0\,
      I4 => \s_reg__0\(8),
      I5 => \s_reg__0\(7),
      O => \s[9]_i_1_n_0\
    );
\s[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \s_reg__0\(9),
      I1 => \s_reg__0\(7),
      I2 => \s[9]_i_4_n_0\,
      I3 => \s_reg__0\(6),
      I4 => \s_reg__0\(8),
      O => p_0_in(9)
    );
\s[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8880"
    )
        port map (
      I0 => \s_reg__0\(6),
      I1 => \s_reg__0\(4),
      I2 => \s[9]_i_5_n_0\,
      I3 => \s_reg__0\(3),
      I4 => \s_reg__0\(5),
      O => \s[9]_i_3_n_0\
    );
\s[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \s_reg__0\(5),
      I1 => \s_reg__0\(4),
      I2 => \s_reg__0\(1),
      I3 => \s_reg__0\(0),
      I4 => \s_reg__0\(3),
      I5 => \s_reg__0\(2),
      O => \s[9]_i_4_n_0\
    );
\s[9]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \s_reg__0\(2),
      I1 => \s_reg__0\(1),
      I2 => \s_reg__0\(0),
      O => \s[9]_i_5_n_0\
    );
\s_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => CE_1Hz_int,
      D => p_0_in(0),
      Q => \s_reg__0\(0),
      R => \s[9]_i_1_n_0\
    );
\s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => CE_1Hz_int,
      D => p_0_in(1),
      Q => \s_reg__0\(1),
      R => \s[9]_i_1_n_0\
    );
\s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => CE_1Hz_int,
      D => p_0_in(2),
      Q => \s_reg__0\(2),
      R => \s[9]_i_1_n_0\
    );
\s_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => CE_1Hz_int,
      D => p_0_in(3),
      Q => \s_reg__0\(3),
      R => \s[9]_i_1_n_0\
    );
\s_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => CE_1Hz_int,
      D => \s[4]_i_1_n_0\,
      Q => \s_reg__0\(4),
      R => \s[9]_i_1_n_0\
    );
\s_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => CE_1Hz_int,
      D => \s[5]_i_1_n_0\,
      Q => \s_reg__0\(5),
      R => \s[9]_i_1_n_0\
    );
\s_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => CE_1Hz_int,
      D => p_0_in(6),
      Q => \s_reg__0\(6),
      R => \s[9]_i_1_n_0\
    );
\s_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => CE_1Hz_int,
      D => p_0_in(7),
      Q => \s_reg__0\(7),
      R => \s[9]_i_1_n_0\
    );
\s_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => CE_1Hz_int,
      D => p_0_in(8),
      Q => \s_reg__0\(8),
      R => \s[9]_i_1_n_0\
    );
\s_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => CE_1Hz_int,
      D => p_0_in(9),
      Q => \s_reg__0\(9),
      R => \s[9]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mesure_Gen_mode_0_0_Generateur_signal_1Hz is
  port (
    CE_1Hz_int : out STD_LOGIC;
    Reset : in STD_LOGIC;
    Clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mesure_Gen_mode_0_0_Generateur_signal_1Hz : entity is "Generateur_signal_1Hz";
end mesure_Gen_mode_0_0_Generateur_signal_1Hz;

architecture STRUCTURE of mesure_Gen_mode_0_0_Generateur_signal_1Hz is
  signal CE_1HZ : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__0_n_4\ : STD_LOGIC;
  signal \counter0_carry__0_n_5\ : STD_LOGIC;
  signal \counter0_carry__0_n_6\ : STD_LOGIC;
  signal \counter0_carry__0_n_7\ : STD_LOGIC;
  signal \counter0_carry__1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_n_4\ : STD_LOGIC;
  signal \counter0_carry__1_n_5\ : STD_LOGIC;
  signal \counter0_carry__1_n_6\ : STD_LOGIC;
  signal \counter0_carry__1_n_7\ : STD_LOGIC;
  signal \counter0_carry__2_n_7\ : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal counter0_carry_n_4 : STD_LOGIC;
  signal counter0_carry_n_5 : STD_LOGIC;
  signal counter0_carry_n_6 : STD_LOGIC;
  signal counter0_carry_n_7 : STD_LOGIC;
  signal \counter[26]_i_2_n_0\ : STD_LOGIC;
  signal \counter[26]_i_3_n_0\ : STD_LOGIC;
  signal \counter[26]_i_4_n_0\ : STD_LOGIC;
  signal \counter[26]_i_5_n_0\ : STD_LOGIC;
  signal \counter[26]_i_6_n_0\ : STD_LOGIC;
  signal \counter[26]_i_7_n_0\ : STD_LOGIC;
  signal \counter[26]_i_8_n_0\ : STD_LOGIC;
  signal counter_0 : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 26 downto 1 );
  signal \NLW_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_counter0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of CE_1HZ_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter[12]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \counter[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \counter[14]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter[15]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter[16]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter[17]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \counter[18]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter[19]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter[20]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter[21]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter[22]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter[23]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter[24]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \counter[25]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \counter[26]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter[9]_i_1\ : label is "soft_lutpair9";
begin
CE_1HZ_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      O => CE_1HZ
    );
CE_1HZ_reg: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => CE_1HZ,
      Q => CE_1Hz_int,
      R => Reset
    );
counter0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => counter(0),
      CI_TOP => '0',
      CO(7) => counter0_carry_n_0,
      CO(6) => counter0_carry_n_1,
      CO(5) => counter0_carry_n_2,
      CO(4) => counter0_carry_n_3,
      CO(3) => counter0_carry_n_4,
      CO(2) => counter0_carry_n_5,
      CO(1) => counter0_carry_n_6,
      CO(0) => counter0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => data0(8 downto 1),
      S(7 downto 0) => counter(8 downto 1)
    );
\counter0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => counter0_carry_n_0,
      CI_TOP => '0',
      CO(7) => \counter0_carry__0_n_0\,
      CO(6) => \counter0_carry__0_n_1\,
      CO(5) => \counter0_carry__0_n_2\,
      CO(4) => \counter0_carry__0_n_3\,
      CO(3) => \counter0_carry__0_n_4\,
      CO(2) => \counter0_carry__0_n_5\,
      CO(1) => \counter0_carry__0_n_6\,
      CO(0) => \counter0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => data0(16 downto 9),
      S(7 downto 0) => counter(16 downto 9)
    );
\counter0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \counter0_carry__1_n_0\,
      CO(6) => \counter0_carry__1_n_1\,
      CO(5) => \counter0_carry__1_n_2\,
      CO(4) => \counter0_carry__1_n_3\,
      CO(3) => \counter0_carry__1_n_4\,
      CO(2) => \counter0_carry__1_n_5\,
      CO(1) => \counter0_carry__1_n_6\,
      CO(0) => \counter0_carry__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => data0(24 downto 17),
      S(7 downto 0) => counter(24 downto 17)
    );
\counter0_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter0_carry__1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_counter0_carry__2_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \counter0_carry__2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 2) => \NLW_counter0_carry__2_O_UNCONNECTED\(7 downto 2),
      O(1 downto 0) => data0(26 downto 25),
      S(7 downto 2) => B"000000",
      S(1 downto 0) => counter(26 downto 25)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => counter_0(0)
    );
\counter[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(10),
      O => counter_0(10)
    );
\counter[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(11),
      O => counter_0(11)
    );
\counter[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(12),
      O => counter_0(12)
    );
\counter[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(13),
      O => counter_0(13)
    );
\counter[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(14),
      O => counter_0(14)
    );
\counter[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(15),
      O => counter_0(15)
    );
\counter[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(16),
      O => counter_0(16)
    );
\counter[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(17),
      O => counter_0(17)
    );
\counter[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(18),
      O => counter_0(18)
    );
\counter[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(19),
      O => counter_0(19)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(1),
      O => counter_0(1)
    );
\counter[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(20),
      O => counter_0(20)
    );
\counter[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(21),
      O => counter_0(21)
    );
\counter[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(22),
      O => counter_0(22)
    );
\counter[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(23),
      O => counter_0(23)
    );
\counter[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(24),
      O => counter_0(24)
    );
\counter[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(25),
      O => counter_0(25)
    );
\counter[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(26),
      O => counter_0(26)
    );
\counter[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFDF"
    )
        port map (
      I0 => counter(26),
      I1 => counter(25),
      I2 => counter(0),
      I3 => \counter[26]_i_5_n_0\,
      I4 => \counter[26]_i_6_n_0\,
      O => \counter[26]_i_2_n_0\
    );
\counter[26]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => counter(8),
      I1 => counter(7),
      I2 => counter(5),
      I3 => counter(6),
      I4 => \counter[26]_i_7_n_0\,
      O => \counter[26]_i_3_n_0\
    );
\counter[26]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => counter(15),
      I1 => counter(16),
      I2 => counter(13),
      I3 => counter(14),
      I4 => \counter[26]_i_8_n_0\,
      O => \counter[26]_i_4_n_0\
    );
\counter[26]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter(22),
      I1 => counter(21),
      I2 => counter(24),
      I3 => counter(23),
      O => \counter[26]_i_5_n_0\
    );
\counter[26]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter(2),
      I1 => counter(1),
      I2 => counter(4),
      I3 => counter(3),
      O => \counter[26]_i_6_n_0\
    );
\counter[26]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(10),
      I1 => counter(9),
      I2 => counter(12),
      I3 => counter(11),
      O => \counter[26]_i_7_n_0\
    );
\counter[26]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => counter(18),
      I1 => counter(17),
      I2 => counter(20),
      I3 => counter(19),
      O => \counter[26]_i_8_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(2),
      O => counter_0(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(3),
      O => counter_0(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(4),
      O => counter_0(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(5),
      O => counter_0(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(6),
      O => counter_0(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(7),
      O => counter_0(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(8),
      O => counter_0(8)
    );
\counter[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \counter[26]_i_2_n_0\,
      I1 => \counter[26]_i_3_n_0\,
      I2 => \counter[26]_i_4_n_0\,
      I3 => data0(9),
      O => counter_0(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(0),
      Q => counter(0),
      R => Reset
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(10),
      Q => counter(10),
      R => Reset
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(11),
      Q => counter(11),
      R => Reset
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(12),
      Q => counter(12),
      R => Reset
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(13),
      Q => counter(13),
      R => Reset
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(14),
      Q => counter(14),
      R => Reset
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(15),
      Q => counter(15),
      R => Reset
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(16),
      Q => counter(16),
      R => Reset
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(17),
      Q => counter(17),
      R => Reset
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(18),
      Q => counter(18),
      R => Reset
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(19),
      Q => counter(19),
      R => Reset
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(1),
      Q => counter(1),
      R => Reset
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(20),
      Q => counter(20),
      R => Reset
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(21),
      Q => counter(21),
      R => Reset
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(22),
      Q => counter(22),
      R => Reset
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(23),
      Q => counter(23),
      R => Reset
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(24),
      Q => counter(24),
      R => Reset
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(25),
      Q => counter(25),
      R => Reset
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(26),
      Q => counter(26),
      R => Reset
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(2),
      Q => counter(2),
      R => Reset
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(3),
      Q => counter(3),
      R => Reset
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(4),
      Q => counter(4),
      R => Reset
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(5),
      Q => counter(5),
      R => Reset
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(6),
      Q => counter(6),
      R => Reset
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(7),
      Q => counter(7),
      R => Reset
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(8),
      Q => counter(8),
      R => Reset
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(9),
      Q => counter(9),
      R => Reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mesure_Gen_mode_0_0_State_machine_mode is
  port (
    Send : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Mode : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Reset_RO : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Reset : in STD_LOGIC;
    Clk : in STD_LOGIC;
    CE_1Hz_int : in STD_LOGIC;
    Mode_G_int : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mesure_Gen_mode_0_0_State_machine_mode : entity is "State_machine_mode";
end mesure_Gen_mode_0_0_State_machine_mode;

architecture STRUCTURE of mesure_Gen_mode_0_0_State_machine_mode is
  signal \FSM_sequential_etat[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_etat[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_etat[1]_i_2_n_0\ : STD_LOGIC;
  signal \Mode[0]_i_1_n_0\ : STD_LOGIC;
  signal \Mode[1]_i_1_n_0\ : STD_LOGIC;
  signal \Mode[2]_i_1_n_0\ : STD_LOGIC;
  signal \Mode[3]_i_1_n_0\ : STD_LOGIC;
  signal \Mode[3]_i_2_n_0\ : STD_LOGIC;
  signal \Mode[3]_i_3_n_0\ : STD_LOGIC;
  signal \Mode[3]_i_4_n_0\ : STD_LOGIC;
  signal \Mode[3]_i_5_n_0\ : STD_LOGIC;
  signal \Mode[4]_i_1_n_0\ : STD_LOGIC;
  signal \Mode[4]_i_2_n_0\ : STD_LOGIC;
  signal \Mode[5]_i_10_n_0\ : STD_LOGIC;
  signal \Mode[5]_i_11_n_0\ : STD_LOGIC;
  signal \Mode[5]_i_1_n_0\ : STD_LOGIC;
  signal \Mode[5]_i_2_n_0\ : STD_LOGIC;
  signal \Mode[5]_i_3_n_0\ : STD_LOGIC;
  signal \Mode[5]_i_4_n_0\ : STD_LOGIC;
  signal \Mode[5]_i_5_n_0\ : STD_LOGIC;
  signal \Mode[5]_i_6_n_0\ : STD_LOGIC;
  signal \Mode[5]_i_7_n_0\ : STD_LOGIC;
  signal \Mode[5]_i_8_n_0\ : STD_LOGIC;
  signal \Mode[5]_i_9_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \Reset_RO[5]_i_1_n_0\ : STD_LOGIC;
  signal \^send\ : STD_LOGIC;
  signal Send_i_1_n_0 : STD_LOGIC;
  signal Send_i_2_n_0 : STD_LOGIC;
  signal \etat1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \etat1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \etat1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \etat1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \etat1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \etat1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \etat1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \etat1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \etat1_carry__0_n_0\ : STD_LOGIC;
  signal \etat1_carry__0_n_1\ : STD_LOGIC;
  signal \etat1_carry__0_n_2\ : STD_LOGIC;
  signal \etat1_carry__0_n_3\ : STD_LOGIC;
  signal \etat1_carry__0_n_4\ : STD_LOGIC;
  signal \etat1_carry__0_n_5\ : STD_LOGIC;
  signal \etat1_carry__0_n_6\ : STD_LOGIC;
  signal \etat1_carry__0_n_7\ : STD_LOGIC;
  signal etat1_carry_i_10_n_0 : STD_LOGIC;
  signal etat1_carry_i_1_n_0 : STD_LOGIC;
  signal etat1_carry_i_2_n_0 : STD_LOGIC;
  signal etat1_carry_i_3_n_0 : STD_LOGIC;
  signal etat1_carry_i_4_n_0 : STD_LOGIC;
  signal etat1_carry_i_5_n_0 : STD_LOGIC;
  signal etat1_carry_i_6_n_0 : STD_LOGIC;
  signal etat1_carry_i_7_n_0 : STD_LOGIC;
  signal etat1_carry_i_8_n_0 : STD_LOGIC;
  signal etat1_carry_i_9_n_0 : STD_LOGIC;
  signal etat1_carry_n_0 : STD_LOGIC;
  signal etat1_carry_n_1 : STD_LOGIC;
  signal etat1_carry_n_2 : STD_LOGIC;
  signal etat1_carry_n_3 : STD_LOGIC;
  signal etat1_carry_n_4 : STD_LOGIC;
  signal etat1_carry_n_5 : STD_LOGIC;
  signal etat1_carry_n_6 : STD_LOGIC;
  signal etat1_carry_n_7 : STD_LOGIC;
  signal \etat__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \i[4]_i_2_n_0\ : STD_LOGIC;
  signal \i[5]_i_1_n_0\ : STD_LOGIC;
  signal \i[5]_i_3_n_0\ : STD_LOGIC;
  signal \i_reg_n_0_[0]\ : STD_LOGIC;
  signal \i_reg_n_0_[1]\ : STD_LOGIC;
  signal \i_reg_n_0_[2]\ : STD_LOGIC;
  signal \i_reg_n_0_[3]\ : STD_LOGIC;
  signal \i_reg_n_0_[4]\ : STD_LOGIC;
  signal \i_reg_n_0_[5]\ : STD_LOGIC;
  signal k : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal k0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \k[0]_i_1_n_0\ : STD_LOGIC;
  signal \k[2]_i_1_n_0\ : STD_LOGIC;
  signal \k[2]_i_3_n_0\ : STD_LOGIC;
  signal \k_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \k_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \k_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \k_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \k_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \k_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \k_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \k_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \k_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \k_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \k_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \k_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \k_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \k_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \k_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \k_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \k_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \k_reg[2]_i_4_n_1\ : STD_LOGIC;
  signal \k_reg[2]_i_4_n_2\ : STD_LOGIC;
  signal \k_reg[2]_i_4_n_3\ : STD_LOGIC;
  signal \k_reg[2]_i_4_n_4\ : STD_LOGIC;
  signal \k_reg[2]_i_4_n_5\ : STD_LOGIC;
  signal \k_reg[2]_i_4_n_6\ : STD_LOGIC;
  signal \k_reg[2]_i_4_n_7\ : STD_LOGIC;
  signal \k_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \k_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \k_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \k_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \k_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \k_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \k_reg_n_0_[10]\ : STD_LOGIC;
  signal \k_reg_n_0_[11]\ : STD_LOGIC;
  signal \k_reg_n_0_[12]\ : STD_LOGIC;
  signal \k_reg_n_0_[13]\ : STD_LOGIC;
  signal \k_reg_n_0_[14]\ : STD_LOGIC;
  signal \k_reg_n_0_[15]\ : STD_LOGIC;
  signal \k_reg_n_0_[16]\ : STD_LOGIC;
  signal \k_reg_n_0_[17]\ : STD_LOGIC;
  signal \k_reg_n_0_[18]\ : STD_LOGIC;
  signal \k_reg_n_0_[19]\ : STD_LOGIC;
  signal \k_reg_n_0_[20]\ : STD_LOGIC;
  signal \k_reg_n_0_[21]\ : STD_LOGIC;
  signal \k_reg_n_0_[22]\ : STD_LOGIC;
  signal \k_reg_n_0_[23]\ : STD_LOGIC;
  signal \k_reg_n_0_[24]\ : STD_LOGIC;
  signal \k_reg_n_0_[25]\ : STD_LOGIC;
  signal \k_reg_n_0_[26]\ : STD_LOGIC;
  signal \k_reg_n_0_[27]\ : STD_LOGIC;
  signal \k_reg_n_0_[28]\ : STD_LOGIC;
  signal \k_reg_n_0_[29]\ : STD_LOGIC;
  signal \k_reg_n_0_[30]\ : STD_LOGIC;
  signal \k_reg_n_0_[31]\ : STD_LOGIC;
  signal \k_reg_n_0_[3]\ : STD_LOGIC;
  signal \k_reg_n_0_[4]\ : STD_LOGIC;
  signal \k_reg_n_0_[5]\ : STD_LOGIC;
  signal \k_reg_n_0_[6]\ : STD_LOGIC;
  signal \k_reg_n_0_[7]\ : STD_LOGIC;
  signal \k_reg_n_0_[8]\ : STD_LOGIC;
  signal \k_reg_n_0_[9]\ : STD_LOGIC;
  signal NLW_etat1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_etat1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_k_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_k_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_etat[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FSM_sequential_etat[1]_i_2\ : label is "soft_lutpair25";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_etat_reg[0]\ : label is "envoi:01,attendre:10,eteint:00,iSTATE:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_etat_reg[1]\ : label is "envoi:01,attendre:10,eteint:00,iSTATE:11";
  attribute SOFT_HLUTNM of \Mode[3]_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \Mode[3]_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \Mode[4]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Mode[5]_i_11\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \Mode[5]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Mode[5]_i_5\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \Mode[5]_i_7\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \i[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i[4]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i[5]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \k[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \k[10]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \k[11]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \k[12]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \k[13]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \k[14]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \k[15]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \k[16]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \k[17]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \k[18]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \k[19]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \k[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \k[20]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \k[21]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \k[22]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \k[23]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \k[24]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \k[25]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \k[26]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \k[27]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \k[28]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \k[29]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \k[2]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \k[30]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \k[31]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \k[3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \k[4]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \k[5]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \k[6]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \k[7]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \k[8]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \k[9]_i_1\ : label is "soft_lutpair30";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  Send <= \^send\;
\FSM_sequential_etat[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => Mode_G_int,
      I1 => \etat__0\(1),
      I2 => \etat__0\(0),
      O => \FSM_sequential_etat[0]_i_1_n_0\
    );
\FSM_sequential_etat[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5F5F53A0A0A0A"
    )
        port map (
      I0 => Mode_G_int,
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      I3 => CE_1Hz_int,
      I4 => \k[2]_i_3_n_0\,
      I5 => \etat__0\(1),
      O => \FSM_sequential_etat[1]_i_1_n_0\
    );
\FSM_sequential_etat[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => Mode_G_int,
      I1 => \etat__0\(1),
      I2 => \etat__0\(0),
      O => \FSM_sequential_etat[1]_i_2_n_0\
    );
\FSM_sequential_etat_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FSM_sequential_etat[1]_i_1_n_0\,
      D => \FSM_sequential_etat[0]_i_1_n_0\,
      Q => \etat__0\(0),
      R => Reset
    );
\FSM_sequential_etat_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FSM_sequential_etat[1]_i_1_n_0\,
      D => \FSM_sequential_etat[1]_i_2_n_0\,
      Q => \etat__0\(1),
      R => Reset
    );
\Mode[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000FFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \Mode[5]_i_4_n_0\,
      I2 => \Mode[5]_i_5_n_0\,
      I3 => \Mode[5]_i_6_n_0\,
      I4 => \Mode[4]_i_2_n_0\,
      I5 => \etat__0\(0),
      O => \Mode[0]_i_1_n_0\
    );
\Mode[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000FFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \Mode[5]_i_4_n_0\,
      I2 => \Mode[5]_i_5_n_0\,
      I3 => \Mode[5]_i_6_n_0\,
      I4 => \Mode[5]_i_3_n_0\,
      I5 => \etat__0\(0),
      O => \Mode[1]_i_1_n_0\
    );
\Mode[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => \Mode[3]_i_2_n_0\,
      I1 => \Mode[5]_i_4_n_0\,
      I2 => \^q\(2),
      I3 => \Mode[3]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => \etat__0\(0),
      O => \Mode[2]_i_1_n_0\
    );
\Mode[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000FFFFFFFF"
    )
        port map (
      I0 => \Mode[3]_i_2_n_0\,
      I1 => \Mode[5]_i_4_n_0\,
      I2 => \^q\(2),
      I3 => \Mode[3]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => \etat__0\(0),
      O => \Mode[3]_i_1_n_0\
    );
\Mode[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \Mode[5]_i_10_n_0\,
      I1 => \Mode[3]_i_4_n_0\,
      I2 => \Mode[3]_i_5_n_0\,
      I3 => \k_reg_n_0_[3]\,
      I4 => \k_reg_n_0_[26]\,
      I5 => \k_reg_n_0_[27]\,
      O => \Mode[3]_i_2_n_0\
    );
\Mode[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => CE_1Hz_int,
      I1 => \etat__0\(1),
      I2 => \^q\(1),
      O => \Mode[3]_i_3_n_0\
    );
\Mode[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \k_reg_n_0_[12]\,
      I1 => \k_reg_n_0_[13]\,
      I2 => \k_reg_n_0_[28]\,
      I3 => \k_reg_n_0_[29]\,
      O => \Mode[3]_i_4_n_0\
    );
\Mode[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \k_reg_n_0_[4]\,
      I1 => \k_reg_n_0_[5]\,
      I2 => \k_reg_n_0_[24]\,
      I3 => \k_reg_n_0_[25]\,
      O => \Mode[3]_i_5_n_0\
    );
\Mode[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000008FFFFFFFF"
    )
        port map (
      I0 => \Mode[4]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \Mode[5]_i_4_n_0\,
      I3 => \Mode[5]_i_5_n_0\,
      I4 => \Mode[5]_i_6_n_0\,
      I5 => \etat__0\(0),
      O => \Mode[4]_i_1_n_0\
    );
\Mode[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => CE_1Hz_int,
      I3 => \etat__0\(1),
      O => \Mode[4]_i_2_n_0\
    );
\Mode[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000008FFFFFFFF"
    )
        port map (
      I0 => \Mode[5]_i_3_n_0\,
      I1 => \^q\(2),
      I2 => \Mode[5]_i_4_n_0\,
      I3 => \Mode[5]_i_5_n_0\,
      I4 => \Mode[5]_i_6_n_0\,
      I5 => \etat__0\(0),
      O => \Mode[5]_i_1_n_0\
    );
\Mode[5]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \k_reg_n_0_[8]\,
      I1 => \k_reg_n_0_[9]\,
      I2 => \k_reg_n_0_[20]\,
      I3 => \k_reg_n_0_[21]\,
      O => \Mode[5]_i_10_n_0\
    );
\Mode[5]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \k_reg_n_0_[25]\,
      I1 => \k_reg_n_0_[24]\,
      O => \Mode[5]_i_11_n_0\
    );
\Mode[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444444"
    )
        port map (
      I0 => \i_reg_n_0_[5]\,
      I1 => \etat__0\(0),
      I2 => \i_reg_n_0_[3]\,
      I3 => \i_reg_n_0_[4]\,
      I4 => \Mode[5]_i_7_n_0\,
      O => \Mode[5]_i_2_n_0\
    );
\Mode[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => CE_1Hz_int,
      I3 => \etat__0\(1),
      O => \Mode[5]_i_3_n_0\
    );
\Mode[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \Mode[5]_i_8_n_0\,
      I1 => \Mode[5]_i_9_n_0\,
      I2 => \k_reg_n_0_[6]\,
      I3 => \k_reg_n_0_[7]\,
      I4 => \k_reg_n_0_[22]\,
      I5 => \k_reg_n_0_[23]\,
      O => \Mode[5]_i_4_n_0\
    );
\Mode[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \k_reg_n_0_[29]\,
      I1 => \k_reg_n_0_[28]\,
      I2 => \k_reg_n_0_[13]\,
      I3 => \k_reg_n_0_[12]\,
      I4 => \Mode[5]_i_10_n_0\,
      O => \Mode[5]_i_5_n_0\
    );
\Mode[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \k_reg_n_0_[27]\,
      I1 => \k_reg_n_0_[26]\,
      I2 => \k_reg_n_0_[3]\,
      I3 => \Mode[5]_i_11_n_0\,
      I4 => \k_reg_n_0_[5]\,
      I5 => \k_reg_n_0_[4]\,
      O => \Mode[5]_i_6_n_0\
    );
\Mode[5]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \i_reg_n_0_[2]\,
      I1 => \i_reg_n_0_[0]\,
      I2 => \i_reg_n_0_[1]\,
      O => \Mode[5]_i_7_n_0\
    );
\Mode[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \k_reg_n_0_[14]\,
      I1 => \k_reg_n_0_[15]\,
      I2 => \k_reg_n_0_[19]\,
      I3 => \k_reg_n_0_[18]\,
      I4 => \k_reg_n_0_[17]\,
      I5 => \k_reg_n_0_[16]\,
      O => \Mode[5]_i_8_n_0\
    );
\Mode[5]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \k_reg_n_0_[10]\,
      I1 => \k_reg_n_0_[11]\,
      I2 => \k_reg_n_0_[30]\,
      I3 => \k_reg_n_0_[31]\,
      O => \Mode[5]_i_9_n_0\
    );
\Mode_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \Mode[0]_i_1_n_0\,
      D => \Mode[5]_i_2_n_0\,
      Q => Mode(0),
      R => Reset
    );
\Mode_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \Mode[1]_i_1_n_0\,
      D => \Mode[5]_i_2_n_0\,
      Q => Mode(1),
      R => Reset
    );
\Mode_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \Mode[2]_i_1_n_0\,
      D => \Mode[5]_i_2_n_0\,
      Q => Mode(2),
      R => Reset
    );
\Mode_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \Mode[3]_i_1_n_0\,
      D => \Mode[5]_i_2_n_0\,
      Q => Mode(3),
      R => Reset
    );
\Mode_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \Mode[4]_i_1_n_0\,
      D => \Mode[5]_i_2_n_0\,
      Q => Mode(4),
      R => Reset
    );
\Mode_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \Mode[5]_i_1_n_0\,
      D => \Mode[5]_i_2_n_0\,
      Q => Mode(5),
      R => Reset
    );
\Reset_RO[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000444"
    )
        port map (
      I0 => \i_reg_n_0_[5]\,
      I1 => \etat__0\(0),
      I2 => \i_reg_n_0_[2]\,
      I3 => \i_reg_n_0_[1]\,
      I4 => \i_reg_n_0_[3]\,
      I5 => \i_reg_n_0_[4]\,
      O => \Reset_RO[5]_i_1_n_0\
    );
\Reset_RO_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \Mode[0]_i_1_n_0\,
      D => \Reset_RO[5]_i_1_n_0\,
      Q => Reset_RO(0),
      R => Reset
    );
\Reset_RO_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \Mode[1]_i_1_n_0\,
      D => \Reset_RO[5]_i_1_n_0\,
      Q => Reset_RO(1),
      R => Reset
    );
\Reset_RO_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \Mode[2]_i_1_n_0\,
      D => \Reset_RO[5]_i_1_n_0\,
      Q => Reset_RO(2),
      R => Reset
    );
\Reset_RO_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \Mode[3]_i_1_n_0\,
      D => \Reset_RO[5]_i_1_n_0\,
      Q => Reset_RO(3),
      R => Reset
    );
\Reset_RO_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \Mode[4]_i_1_n_0\,
      D => \Reset_RO[5]_i_1_n_0\,
      Q => Reset_RO(4),
      R => Reset
    );
\Reset_RO_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \Mode[5]_i_1_n_0\,
      D => \Reset_RO[5]_i_1_n_0\,
      Q => Reset_RO(5),
      R => Reset
    );
Send_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2220222"
    )
        port map (
      I0 => Send_i_2_n_0,
      I1 => \Mode[5]_i_7_n_0\,
      I2 => \etat__0\(0),
      I3 => \etat__0\(1),
      I4 => \^send\,
      O => Send_i_1_n_0
    );
Send_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \i_reg_n_0_[4]\,
      I1 => \i_reg_n_0_[3]\,
      I2 => CE_1Hz_int,
      I3 => \etat__0\(0),
      I4 => \i_reg_n_0_[5]\,
      O => Send_i_2_n_0
    );
Send_reg: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => Send_i_1_n_0,
      Q => \^send\,
      R => Reset
    );
etat1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => etat1_carry_n_0,
      CO(6) => etat1_carry_n_1,
      CO(5) => etat1_carry_n_2,
      CO(4) => etat1_carry_n_3,
      CO(3) => etat1_carry_n_4,
      CO(2) => etat1_carry_n_5,
      CO(1) => etat1_carry_n_6,
      CO(0) => etat1_carry_n_7,
      DI(7 downto 2) => B"000000",
      DI(1) => etat1_carry_i_1_n_0,
      DI(0) => etat1_carry_i_2_n_0,
      O(7 downto 0) => NLW_etat1_carry_O_UNCONNECTED(7 downto 0),
      S(7) => etat1_carry_i_3_n_0,
      S(6) => etat1_carry_i_4_n_0,
      S(5) => etat1_carry_i_5_n_0,
      S(4) => etat1_carry_i_6_n_0,
      S(3) => etat1_carry_i_7_n_0,
      S(2) => etat1_carry_i_8_n_0,
      S(1) => etat1_carry_i_9_n_0,
      S(0) => etat1_carry_i_10_n_0
    );
\etat1_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => etat1_carry_n_0,
      CI_TOP => '0',
      CO(7) => \etat1_carry__0_n_0\,
      CO(6) => \etat1_carry__0_n_1\,
      CO(5) => \etat1_carry__0_n_2\,
      CO(4) => \etat1_carry__0_n_3\,
      CO(3) => \etat1_carry__0_n_4\,
      CO(2) => \etat1_carry__0_n_5\,
      CO(1) => \etat1_carry__0_n_6\,
      CO(0) => \etat1_carry__0_n_7\,
      DI(7) => \k_reg_n_0_[31]\,
      DI(6 downto 0) => B"0000000",
      O(7 downto 0) => \NLW_etat1_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \etat1_carry__0_i_1_n_0\,
      S(6) => \etat1_carry__0_i_2_n_0\,
      S(5) => \etat1_carry__0_i_3_n_0\,
      S(4) => \etat1_carry__0_i_4_n_0\,
      S(3) => \etat1_carry__0_i_5_n_0\,
      S(2) => \etat1_carry__0_i_6_n_0\,
      S(1) => \etat1_carry__0_i_7_n_0\,
      S(0) => \etat1_carry__0_i_8_n_0\
    );
\etat1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \k_reg_n_0_[30]\,
      I1 => \k_reg_n_0_[31]\,
      O => \etat1_carry__0_i_1_n_0\
    );
\etat1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \k_reg_n_0_[28]\,
      I1 => \k_reg_n_0_[29]\,
      O => \etat1_carry__0_i_2_n_0\
    );
\etat1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \k_reg_n_0_[26]\,
      I1 => \k_reg_n_0_[27]\,
      O => \etat1_carry__0_i_3_n_0\
    );
\etat1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \k_reg_n_0_[24]\,
      I1 => \k_reg_n_0_[25]\,
      O => \etat1_carry__0_i_4_n_0\
    );
\etat1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \k_reg_n_0_[22]\,
      I1 => \k_reg_n_0_[23]\,
      O => \etat1_carry__0_i_5_n_0\
    );
\etat1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \k_reg_n_0_[20]\,
      I1 => \k_reg_n_0_[21]\,
      O => \etat1_carry__0_i_6_n_0\
    );
\etat1_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \k_reg_n_0_[18]\,
      I1 => \k_reg_n_0_[19]\,
      O => \etat1_carry__0_i_7_n_0\
    );
\etat1_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \k_reg_n_0_[16]\,
      I1 => \k_reg_n_0_[17]\,
      O => \etat1_carry__0_i_8_n_0\
    );
etat1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      I1 => \k_reg_n_0_[3]\,
      O => etat1_carry_i_1_n_0
    );
etat1_carry_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => etat1_carry_i_10_n_0
    );
etat1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => etat1_carry_i_2_n_0
    );
etat1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \k_reg_n_0_[14]\,
      I1 => \k_reg_n_0_[15]\,
      O => etat1_carry_i_3_n_0
    );
etat1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \k_reg_n_0_[12]\,
      I1 => \k_reg_n_0_[13]\,
      O => etat1_carry_i_4_n_0
    );
etat1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \k_reg_n_0_[10]\,
      I1 => \k_reg_n_0_[11]\,
      O => etat1_carry_i_5_n_0
    );
etat1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \k_reg_n_0_[8]\,
      I1 => \k_reg_n_0_[9]\,
      O => etat1_carry_i_6_n_0
    );
etat1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \k_reg_n_0_[6]\,
      I1 => \k_reg_n_0_[7]\,
      O => etat1_carry_i_7_n_0
    );
etat1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \k_reg_n_0_[4]\,
      I1 => \k_reg_n_0_[5]\,
      O => etat1_carry_i_8_n_0
    );
etat1_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \k_reg_n_0_[3]\,
      O => etat1_carry_i_9_n_0
    );
\i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \k[2]_i_3_n_0\,
      I1 => \etat__0\(0),
      I2 => \i_reg_n_0_[0]\,
      O => i(0)
    );
\i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \k[2]_i_3_n_0\,
      I1 => \etat__0\(0),
      I2 => \i_reg_n_0_[0]\,
      I3 => \i_reg_n_0_[1]\,
      O => i(1)
    );
\i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444000"
    )
        port map (
      I0 => \k[2]_i_3_n_0\,
      I1 => \etat__0\(0),
      I2 => \i_reg_n_0_[1]\,
      I3 => \i_reg_n_0_[0]\,
      I4 => \i_reg_n_0_[2]\,
      O => i(2)
    );
\i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000028888888"
    )
        port map (
      I0 => \etat__0\(0),
      I1 => \i_reg_n_0_[3]\,
      I2 => \i_reg_n_0_[1]\,
      I3 => \i_reg_n_0_[0]\,
      I4 => \i_reg_n_0_[2]\,
      I5 => \k[2]_i_3_n_0\,
      O => i(3)
    );
\i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \i[4]_i_2_n_0\,
      I1 => \i_reg_n_0_[3]\,
      I2 => \i_reg_n_0_[1]\,
      I3 => \i_reg_n_0_[0]\,
      I4 => \i_reg_n_0_[2]\,
      I5 => \i_reg_n_0_[4]\,
      O => i(4)
    );
\i[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \etat__0\(0),
      I1 => \k[2]_i_3_n_0\,
      O => \i[4]_i_2_n_0\
    );
\i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \etat__0\(0),
      I1 => CE_1Hz_int,
      I2 => \etat__0\(1),
      O => \i[5]_i_1_n_0\
    );
\i[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440404040404040"
    )
        port map (
      I0 => \k[2]_i_3_n_0\,
      I1 => \etat__0\(0),
      I2 => \i_reg_n_0_[5]\,
      I3 => \i_reg_n_0_[4]\,
      I4 => \i_reg_n_0_[3]\,
      I5 => \i[5]_i_3_n_0\,
      O => i(5)
    );
\i[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \i_reg_n_0_[2]\,
      I1 => \i_reg_n_0_[0]\,
      I2 => \i_reg_n_0_[1]\,
      O => \i[5]_i_3_n_0\
    );
\i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \i[5]_i_1_n_0\,
      D => i(0),
      Q => \i_reg_n_0_[0]\,
      R => Reset
    );
\i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \i[5]_i_1_n_0\,
      D => i(1),
      Q => \i_reg_n_0_[1]\,
      R => Reset
    );
\i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \i[5]_i_1_n_0\,
      D => i(2),
      Q => \i_reg_n_0_[2]\,
      R => Reset
    );
\i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \i[5]_i_1_n_0\,
      D => i(3),
      Q => \i_reg_n_0_[3]\,
      R => Reset
    );
\i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \i[5]_i_1_n_0\,
      D => i(4),
      Q => \i_reg_n_0_[4]\,
      R => Reset
    );
\i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \i[5]_i_1_n_0\,
      D => i(5),
      Q => \i_reg_n_0_[5]\,
      R => Reset
    );
\k[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(0),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => \k[0]_i_1_n_0\
    );
\k[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(10),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(10)
    );
\k[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(11),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(11)
    );
\k[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(12),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(12)
    );
\k[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(13),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(13)
    );
\k[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(14),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(14)
    );
\k[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(15),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(15)
    );
\k[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(16),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(16)
    );
\k[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(17),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(17)
    );
\k[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(18),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(18)
    );
\k[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(19),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(19)
    );
\k[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(1),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(1)
    );
\k[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(20),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(20)
    );
\k[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(21),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(21)
    );
\k[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(22),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(22)
    );
\k[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(23),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(23)
    );
\k[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(24),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(24)
    );
\k[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(25),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(25)
    );
\k[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(26),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(26)
    );
\k[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(27),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(27)
    );
\k[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(28),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(28)
    );
\k[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(29),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(29)
    );
\k[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3111"
    )
        port map (
      I0 => \etat__0\(0),
      I1 => \etat__0\(1),
      I2 => CE_1Hz_int,
      I3 => \k[2]_i_3_n_0\,
      O => \k[2]_i_1_n_0\
    );
\k[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(2),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(2)
    );
\k[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => \i_reg_n_0_[2]\,
      I1 => \i_reg_n_0_[0]\,
      I2 => \i_reg_n_0_[1]\,
      I3 => \i_reg_n_0_[3]\,
      I4 => \i_reg_n_0_[4]\,
      I5 => \i_reg_n_0_[5]\,
      O => \k[2]_i_3_n_0\
    );
\k[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(30),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(30)
    );
\k[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(31),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(31)
    );
\k[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(3),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(3)
    );
\k[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(4),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(4)
    );
\k[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(5),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(5)
    );
\k[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(6),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(6)
    );
\k[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(7),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(7)
    );
\k[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(8),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(8)
    );
\k[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => k0(9),
      I1 => \etat1_carry__0_n_0\,
      I2 => \etat__0\(0),
      O => k(9)
    );
\k_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => \k[0]_i_1_n_0\,
      Q => \^q\(0),
      R => Reset
    );
\k_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(10),
      Q => \k_reg_n_0_[10]\,
      R => Reset
    );
\k_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(11),
      Q => \k_reg_n_0_[11]\,
      R => Reset
    );
\k_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(12),
      Q => \k_reg_n_0_[12]\,
      R => Reset
    );
\k_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(13),
      Q => \k_reg_n_0_[13]\,
      R => Reset
    );
\k_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(14),
      Q => \k_reg_n_0_[14]\,
      R => Reset
    );
\k_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(15),
      Q => \k_reg_n_0_[15]\,
      R => Reset
    );
\k_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(16),
      Q => \k_reg_n_0_[16]\,
      R => Reset
    );
\k_reg[16]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \k_reg[2]_i_4_n_0\,
      CI_TOP => '0',
      CO(7) => \k_reg[16]_i_2_n_0\,
      CO(6) => \k_reg[16]_i_2_n_1\,
      CO(5) => \k_reg[16]_i_2_n_2\,
      CO(4) => \k_reg[16]_i_2_n_3\,
      CO(3) => \k_reg[16]_i_2_n_4\,
      CO(2) => \k_reg[16]_i_2_n_5\,
      CO(1) => \k_reg[16]_i_2_n_6\,
      CO(0) => \k_reg[16]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => k0(16 downto 9),
      S(7) => \k_reg_n_0_[16]\,
      S(6) => \k_reg_n_0_[15]\,
      S(5) => \k_reg_n_0_[14]\,
      S(4) => \k_reg_n_0_[13]\,
      S(3) => \k_reg_n_0_[12]\,
      S(2) => \k_reg_n_0_[11]\,
      S(1) => \k_reg_n_0_[10]\,
      S(0) => \k_reg_n_0_[9]\
    );
\k_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(17),
      Q => \k_reg_n_0_[17]\,
      R => Reset
    );
\k_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(18),
      Q => \k_reg_n_0_[18]\,
      R => Reset
    );
\k_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(19),
      Q => \k_reg_n_0_[19]\,
      R => Reset
    );
\k_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(1),
      Q => \^q\(1),
      R => Reset
    );
\k_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(20),
      Q => \k_reg_n_0_[20]\,
      R => Reset
    );
\k_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(21),
      Q => \k_reg_n_0_[21]\,
      R => Reset
    );
\k_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(22),
      Q => \k_reg_n_0_[22]\,
      R => Reset
    );
\k_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(23),
      Q => \k_reg_n_0_[23]\,
      R => Reset
    );
\k_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(24),
      Q => \k_reg_n_0_[24]\,
      R => Reset
    );
\k_reg[24]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \k_reg[16]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \k_reg[24]_i_2_n_0\,
      CO(6) => \k_reg[24]_i_2_n_1\,
      CO(5) => \k_reg[24]_i_2_n_2\,
      CO(4) => \k_reg[24]_i_2_n_3\,
      CO(3) => \k_reg[24]_i_2_n_4\,
      CO(2) => \k_reg[24]_i_2_n_5\,
      CO(1) => \k_reg[24]_i_2_n_6\,
      CO(0) => \k_reg[24]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => k0(24 downto 17),
      S(7) => \k_reg_n_0_[24]\,
      S(6) => \k_reg_n_0_[23]\,
      S(5) => \k_reg_n_0_[22]\,
      S(4) => \k_reg_n_0_[21]\,
      S(3) => \k_reg_n_0_[20]\,
      S(2) => \k_reg_n_0_[19]\,
      S(1) => \k_reg_n_0_[18]\,
      S(0) => \k_reg_n_0_[17]\
    );
\k_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(25),
      Q => \k_reg_n_0_[25]\,
      R => Reset
    );
\k_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(26),
      Q => \k_reg_n_0_[26]\,
      R => Reset
    );
\k_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(27),
      Q => \k_reg_n_0_[27]\,
      R => Reset
    );
\k_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(28),
      Q => \k_reg_n_0_[28]\,
      R => Reset
    );
\k_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(29),
      Q => \k_reg_n_0_[29]\,
      R => Reset
    );
\k_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(2),
      Q => \^q\(2),
      R => Reset
    );
\k_reg[2]_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => \^q\(0),
      CI_TOP => '0',
      CO(7) => \k_reg[2]_i_4_n_0\,
      CO(6) => \k_reg[2]_i_4_n_1\,
      CO(5) => \k_reg[2]_i_4_n_2\,
      CO(4) => \k_reg[2]_i_4_n_3\,
      CO(3) => \k_reg[2]_i_4_n_4\,
      CO(2) => \k_reg[2]_i_4_n_5\,
      CO(1) => \k_reg[2]_i_4_n_6\,
      CO(0) => \k_reg[2]_i_4_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => k0(8 downto 1),
      S(7) => \k_reg_n_0_[8]\,
      S(6) => \k_reg_n_0_[7]\,
      S(5) => \k_reg_n_0_[6]\,
      S(4) => \k_reg_n_0_[5]\,
      S(3) => \k_reg_n_0_[4]\,
      S(2) => \k_reg_n_0_[3]\,
      S(1 downto 0) => \^q\(2 downto 1)
    );
\k_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(30),
      Q => \k_reg_n_0_[30]\,
      R => Reset
    );
\k_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(31),
      Q => \k_reg_n_0_[31]\,
      R => Reset
    );
\k_reg[31]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \k_reg[24]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_k_reg[31]_i_2_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \k_reg[31]_i_2_n_2\,
      CO(4) => \k_reg[31]_i_2_n_3\,
      CO(3) => \k_reg[31]_i_2_n_4\,
      CO(2) => \k_reg[31]_i_2_n_5\,
      CO(1) => \k_reg[31]_i_2_n_6\,
      CO(0) => \k_reg[31]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_k_reg[31]_i_2_O_UNCONNECTED\(7),
      O(6 downto 0) => k0(31 downto 25),
      S(7) => '0',
      S(6) => \k_reg_n_0_[31]\,
      S(5) => \k_reg_n_0_[30]\,
      S(4) => \k_reg_n_0_[29]\,
      S(3) => \k_reg_n_0_[28]\,
      S(2) => \k_reg_n_0_[27]\,
      S(1) => \k_reg_n_0_[26]\,
      S(0) => \k_reg_n_0_[25]\
    );
\k_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(3),
      Q => \k_reg_n_0_[3]\,
      R => Reset
    );
\k_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(4),
      Q => \k_reg_n_0_[4]\,
      R => Reset
    );
\k_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(5),
      Q => \k_reg_n_0_[5]\,
      R => Reset
    );
\k_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(6),
      Q => \k_reg_n_0_[6]\,
      R => Reset
    );
\k_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(7),
      Q => \k_reg_n_0_[7]\,
      R => Reset
    );
\k_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(8),
      Q => \k_reg_n_0_[8]\,
      R => Reset
    );
\k_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \k[2]_i_1_n_0\,
      D => k(9),
      Q => \k_reg_n_0_[9]\,
      R => Reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mesure_Gen_mode_0_0_Gen_mode is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Mode : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Reset_RO : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Send : out STD_LOGIC;
    Reset : in STD_LOGIC;
    Clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mesure_Gen_mode_0_0_Gen_mode : entity is "Gen_mode";
end mesure_Gen_mode_0_0_Gen_mode;

architecture STRUCTURE of mesure_Gen_mode_0_0_Gen_mode is
  signal CE_1Hz_int : STD_LOGIC;
  signal Mode_G_int : STD_LOGIC;
begin
I_Counter_mode: entity work.mesure_Gen_mode_0_0_Counter_mode
     port map (
      CE_1Hz_int => CE_1Hz_int,
      Clk => Clk,
      Mode_G_int => Mode_G_int,
      Reset => Reset
    );
I_Generateur_signal_1Hz: entity work.mesure_Gen_mode_0_0_Generateur_signal_1Hz
     port map (
      CE_1Hz_int => CE_1Hz_int,
      Clk => Clk,
      Reset => Reset
    );
I_State_machine_mode: entity work.mesure_Gen_mode_0_0_State_machine_mode
     port map (
      CE_1Hz_int => CE_1Hz_int,
      Clk => Clk,
      Mode(5 downto 0) => Mode(5 downto 0),
      Mode_G_int => Mode_G_int,
      Q(2 downto 0) => Q(2 downto 0),
      Reset => Reset,
      Reset_RO(5 downto 0) => Reset_RO(5 downto 0),
      Send => Send
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mesure_Gen_mode_0_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    CE_1Hz : out STD_LOGIC;
    Mode : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Reset_RO : out STD_LOGIC_VECTOR ( 5 downto 0 );
    RO_sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Send : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mesure_Gen_mode_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mesure_Gen_mode_0_0 : entity is "mesure_Gen_mode_0_0,Gen_mode,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mesure_Gen_mode_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of mesure_Gen_mode_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of mesure_Gen_mode_0_0 : entity is "Gen_mode,Vivado 2018.3";
end mesure_Gen_mode_0_0;

architecture STRUCTURE of mesure_Gen_mode_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of Clk : signal is "xilinx.com:signal:clock:1.0 Clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Clk : signal is "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN mesure_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0";
  attribute x_interface_info of Reset : signal is "xilinx.com:signal:reset:1.0 Reset RST";
  attribute x_interface_parameter of Reset : signal is "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  CE_1Hz <= 'Z';
U0: entity work.mesure_Gen_mode_0_0_Gen_mode
     port map (
      Clk => Clk,
      Mode(5 downto 0) => Mode(5 downto 0),
      Q(2 downto 0) => RO_sel(2 downto 0),
      Reset => Reset,
      Reset_RO(5 downto 0) => Reset_RO(5 downto 0),
      Send => Send
    );
end STRUCTURE;
