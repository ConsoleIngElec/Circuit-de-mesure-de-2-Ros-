-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Mar 20 13:31:53 2026
-- Host        : poste-16 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/cmbouba/Mes_projets_pour_le_stage/Circuit_de_mesure_de_3_Ros/Circuit_de_mesure_de_3_Ros.srcs/sources_1/bd/test_gen_mode/ip/test_gen_mode_All_Ro_out_0_1/test_gen_mode_All_Ro_out_0_1_sim_netlist.vhdl
-- Design      : test_gen_mode_All_Ro_out_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Measure_F_Ro is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_int : in STD_LOGIC;
    CE_1Hz : in STD_LOGIC;
    Mode : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Measure_F_Ro : entity is "Measure_F_Ro";
end test_gen_mode_All_Ro_out_0_1_Measure_F_Ro;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Measure_F_Ro is
  signal Enable_Decal_1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Enable_Decal_1 : signal is "true";
  signal Enable_Decal_2 : STD_LOGIC;
  attribute async_reg of Enable_Decal_2 : signal is "true";
  signal Enable_Decal_3 : STD_LOGIC;
  signal Enable_Int : STD_LOGIC;
  signal Enable_Int_Sync : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \S[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \S[0]_i_3__2_n_0\ : STD_LOGIC;
  signal S_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \S_reg[0]_i_2__2_n_0\ : STD_LOGIC;
  signal \S_reg[0]_i_2__2_n_1\ : STD_LOGIC;
  signal \S_reg[0]_i_2__2_n_10\ : STD_LOGIC;
  signal \S_reg[0]_i_2__2_n_11\ : STD_LOGIC;
  signal \S_reg[0]_i_2__2_n_12\ : STD_LOGIC;
  signal \S_reg[0]_i_2__2_n_13\ : STD_LOGIC;
  signal \S_reg[0]_i_2__2_n_14\ : STD_LOGIC;
  signal \S_reg[0]_i_2__2_n_15\ : STD_LOGIC;
  signal \S_reg[0]_i_2__2_n_2\ : STD_LOGIC;
  signal \S_reg[0]_i_2__2_n_3\ : STD_LOGIC;
  signal \S_reg[0]_i_2__2_n_4\ : STD_LOGIC;
  signal \S_reg[0]_i_2__2_n_5\ : STD_LOGIC;
  signal \S_reg[0]_i_2__2_n_6\ : STD_LOGIC;
  signal \S_reg[0]_i_2__2_n_7\ : STD_LOGIC;
  signal \S_reg[0]_i_2__2_n_8\ : STD_LOGIC;
  signal \S_reg[0]_i_2__2_n_9\ : STD_LOGIC;
  signal \S_reg[16]_i_1__2_n_0\ : STD_LOGIC;
  signal \S_reg[16]_i_1__2_n_1\ : STD_LOGIC;
  signal \S_reg[16]_i_1__2_n_10\ : STD_LOGIC;
  signal \S_reg[16]_i_1__2_n_11\ : STD_LOGIC;
  signal \S_reg[16]_i_1__2_n_12\ : STD_LOGIC;
  signal \S_reg[16]_i_1__2_n_13\ : STD_LOGIC;
  signal \S_reg[16]_i_1__2_n_14\ : STD_LOGIC;
  signal \S_reg[16]_i_1__2_n_15\ : STD_LOGIC;
  signal \S_reg[16]_i_1__2_n_2\ : STD_LOGIC;
  signal \S_reg[16]_i_1__2_n_3\ : STD_LOGIC;
  signal \S_reg[16]_i_1__2_n_4\ : STD_LOGIC;
  signal \S_reg[16]_i_1__2_n_5\ : STD_LOGIC;
  signal \S_reg[16]_i_1__2_n_6\ : STD_LOGIC;
  signal \S_reg[16]_i_1__2_n_7\ : STD_LOGIC;
  signal \S_reg[16]_i_1__2_n_8\ : STD_LOGIC;
  signal \S_reg[16]_i_1__2_n_9\ : STD_LOGIC;
  signal \S_reg[24]_i_1__2_n_1\ : STD_LOGIC;
  signal \S_reg[24]_i_1__2_n_10\ : STD_LOGIC;
  signal \S_reg[24]_i_1__2_n_11\ : STD_LOGIC;
  signal \S_reg[24]_i_1__2_n_12\ : STD_LOGIC;
  signal \S_reg[24]_i_1__2_n_13\ : STD_LOGIC;
  signal \S_reg[24]_i_1__2_n_14\ : STD_LOGIC;
  signal \S_reg[24]_i_1__2_n_15\ : STD_LOGIC;
  signal \S_reg[24]_i_1__2_n_2\ : STD_LOGIC;
  signal \S_reg[24]_i_1__2_n_3\ : STD_LOGIC;
  signal \S_reg[24]_i_1__2_n_4\ : STD_LOGIC;
  signal \S_reg[24]_i_1__2_n_5\ : STD_LOGIC;
  signal \S_reg[24]_i_1__2_n_6\ : STD_LOGIC;
  signal \S_reg[24]_i_1__2_n_7\ : STD_LOGIC;
  signal \S_reg[24]_i_1__2_n_8\ : STD_LOGIC;
  signal \S_reg[24]_i_1__2_n_9\ : STD_LOGIC;
  signal \S_reg[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \S_reg[8]_i_1__2_n_1\ : STD_LOGIC;
  signal \S_reg[8]_i_1__2_n_10\ : STD_LOGIC;
  signal \S_reg[8]_i_1__2_n_11\ : STD_LOGIC;
  signal \S_reg[8]_i_1__2_n_12\ : STD_LOGIC;
  signal \S_reg[8]_i_1__2_n_13\ : STD_LOGIC;
  signal \S_reg[8]_i_1__2_n_14\ : STD_LOGIC;
  signal \S_reg[8]_i_1__2_n_15\ : STD_LOGIC;
  signal \S_reg[8]_i_1__2_n_2\ : STD_LOGIC;
  signal \S_reg[8]_i_1__2_n_3\ : STD_LOGIC;
  signal \S_reg[8]_i_1__2_n_4\ : STD_LOGIC;
  signal \S_reg[8]_i_1__2_n_5\ : STD_LOGIC;
  signal \S_reg[8]_i_1__2_n_6\ : STD_LOGIC;
  signal \S_reg[8]_i_1__2_n_7\ : STD_LOGIC;
  signal \S_reg[8]_i_1__2_n_8\ : STD_LOGIC;
  signal \S_reg[8]_i_1__2_n_9\ : STD_LOGIC;
  signal \NLW_S_reg[24]_i_1__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of Enable_Decal_1_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of Enable_Decal_1_reg : label is "yes";
  attribute ASYNC_REG_boolean of Enable_Decal_2_reg : label is std.standard.true;
  attribute KEEP of Enable_Decal_2_reg : label is "yes";
begin
  SR(0) <= \^sr\(0);
Enable_Decal_1_reg: unisim.vcomponents.FDCE
     port map (
      C => S_int,
      CE => '1',
      CLR => \^sr\(0),
      D => CE_1Hz,
      Q => Enable_Decal_1
    );
Enable_Decal_2_reg: unisim.vcomponents.FDCE
     port map (
      C => S_int,
      CE => '1',
      CLR => \^sr\(0),
      D => Enable_Decal_1,
      Q => Enable_Decal_2
    );
Enable_Decal_3_reg: unisim.vcomponents.FDCE
     port map (
      C => S_int,
      CE => '1',
      CLR => \^sr\(0),
      D => Enable_Decal_2,
      Q => Enable_Decal_3
    );
\Enable_Int_Sync_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Enable_Decal_3,
      I1 => Enable_Decal_2,
      O => Enable_Int
    );
Enable_Int_Sync_reg: unisim.vcomponents.FDCE
     port map (
      C => S_int,
      CE => '1',
      CLR => \^sr\(0),
      D => Enable_Int,
      Q => Enable_Int_Sync
    );
\R[31]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => Mode(4),
      I1 => Mode(3),
      I2 => Mode(5),
      I3 => Mode(0),
      I4 => Mode(1),
      I5 => Mode(2),
      O => \^sr\(0)
    );
\R_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(0),
      Q => Data(0),
      R => \^sr\(0)
    );
\R_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(10),
      Q => Data(10),
      R => \^sr\(0)
    );
\R_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(11),
      Q => Data(11),
      R => \^sr\(0)
    );
\R_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(12),
      Q => Data(12),
      R => \^sr\(0)
    );
\R_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(13),
      Q => Data(13),
      R => \^sr\(0)
    );
\R_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(14),
      Q => Data(14),
      R => \^sr\(0)
    );
\R_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(15),
      Q => Data(15),
      R => \^sr\(0)
    );
\R_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(16),
      Q => Data(16),
      R => \^sr\(0)
    );
\R_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(17),
      Q => Data(17),
      R => \^sr\(0)
    );
\R_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(18),
      Q => Data(18),
      R => \^sr\(0)
    );
\R_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(19),
      Q => Data(19),
      R => \^sr\(0)
    );
\R_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(1),
      Q => Data(1),
      R => \^sr\(0)
    );
\R_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(20),
      Q => Data(20),
      R => \^sr\(0)
    );
\R_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(21),
      Q => Data(21),
      R => \^sr\(0)
    );
\R_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(22),
      Q => Data(22),
      R => \^sr\(0)
    );
\R_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(23),
      Q => Data(23),
      R => \^sr\(0)
    );
\R_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(24),
      Q => Data(24),
      R => \^sr\(0)
    );
\R_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(25),
      Q => Data(25),
      R => \^sr\(0)
    );
\R_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(26),
      Q => Data(26),
      R => \^sr\(0)
    );
\R_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(27),
      Q => Data(27),
      R => \^sr\(0)
    );
\R_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(28),
      Q => Data(28),
      R => \^sr\(0)
    );
\R_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(29),
      Q => Data(29),
      R => \^sr\(0)
    );
\R_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(2),
      Q => Data(2),
      R => \^sr\(0)
    );
\R_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(30),
      Q => Data(30),
      R => \^sr\(0)
    );
\R_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(31),
      Q => Data(31),
      R => \^sr\(0)
    );
\R_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(3),
      Q => Data(3),
      R => \^sr\(0)
    );
\R_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(4),
      Q => Data(4),
      R => \^sr\(0)
    );
\R_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(5),
      Q => Data(5),
      R => \^sr\(0)
    );
\R_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(6),
      Q => Data(6),
      R => \^sr\(0)
    );
\R_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(7),
      Q => Data(7),
      R => \^sr\(0)
    );
\R_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(8),
      Q => Data(8),
      R => \^sr\(0)
    );
\R_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(9),
      Q => Data(9),
      R => \^sr\(0)
    );
\S[0]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sr\(0),
      I1 => Enable_Int_Sync,
      O => \S[0]_i_1__2_n_0\
    );
\S[0]_i_3__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_reg(0),
      O => \S[0]_i_3__2_n_0\
    );
\S_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__2_n_15\,
      Q => S_reg(0),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[0]_i_2__2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \S_reg[0]_i_2__2_n_0\,
      CO(6) => \S_reg[0]_i_2__2_n_1\,
      CO(5) => \S_reg[0]_i_2__2_n_2\,
      CO(4) => \S_reg[0]_i_2__2_n_3\,
      CO(3) => \S_reg[0]_i_2__2_n_4\,
      CO(2) => \S_reg[0]_i_2__2_n_5\,
      CO(1) => \S_reg[0]_i_2__2_n_6\,
      CO(0) => \S_reg[0]_i_2__2_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \S_reg[0]_i_2__2_n_8\,
      O(6) => \S_reg[0]_i_2__2_n_9\,
      O(5) => \S_reg[0]_i_2__2_n_10\,
      O(4) => \S_reg[0]_i_2__2_n_11\,
      O(3) => \S_reg[0]_i_2__2_n_12\,
      O(2) => \S_reg[0]_i_2__2_n_13\,
      O(1) => \S_reg[0]_i_2__2_n_14\,
      O(0) => \S_reg[0]_i_2__2_n_15\,
      S(7 downto 1) => S_reg(7 downto 1),
      S(0) => \S[0]_i_3__2_n_0\
    );
\S_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__2_n_13\,
      Q => S_reg(10),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__2_n_12\,
      Q => S_reg(11),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__2_n_11\,
      Q => S_reg(12),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__2_n_10\,
      Q => S_reg(13),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__2_n_9\,
      Q => S_reg(14),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__2_n_8\,
      Q => S_reg(15),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__2_n_15\,
      Q => S_reg(16),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[16]_i_1__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \S_reg[8]_i_1__2_n_0\,
      CI_TOP => '0',
      CO(7) => \S_reg[16]_i_1__2_n_0\,
      CO(6) => \S_reg[16]_i_1__2_n_1\,
      CO(5) => \S_reg[16]_i_1__2_n_2\,
      CO(4) => \S_reg[16]_i_1__2_n_3\,
      CO(3) => \S_reg[16]_i_1__2_n_4\,
      CO(2) => \S_reg[16]_i_1__2_n_5\,
      CO(1) => \S_reg[16]_i_1__2_n_6\,
      CO(0) => \S_reg[16]_i_1__2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \S_reg[16]_i_1__2_n_8\,
      O(6) => \S_reg[16]_i_1__2_n_9\,
      O(5) => \S_reg[16]_i_1__2_n_10\,
      O(4) => \S_reg[16]_i_1__2_n_11\,
      O(3) => \S_reg[16]_i_1__2_n_12\,
      O(2) => \S_reg[16]_i_1__2_n_13\,
      O(1) => \S_reg[16]_i_1__2_n_14\,
      O(0) => \S_reg[16]_i_1__2_n_15\,
      S(7 downto 0) => S_reg(23 downto 16)
    );
\S_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__2_n_14\,
      Q => S_reg(17),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__2_n_13\,
      Q => S_reg(18),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__2_n_12\,
      Q => S_reg(19),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__2_n_14\,
      Q => S_reg(1),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__2_n_11\,
      Q => S_reg(20),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__2_n_10\,
      Q => S_reg(21),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__2_n_9\,
      Q => S_reg(22),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__2_n_8\,
      Q => S_reg(23),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__2_n_15\,
      Q => S_reg(24),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[24]_i_1__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \S_reg[16]_i_1__2_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_S_reg[24]_i_1__2_CO_UNCONNECTED\(7),
      CO(6) => \S_reg[24]_i_1__2_n_1\,
      CO(5) => \S_reg[24]_i_1__2_n_2\,
      CO(4) => \S_reg[24]_i_1__2_n_3\,
      CO(3) => \S_reg[24]_i_1__2_n_4\,
      CO(2) => \S_reg[24]_i_1__2_n_5\,
      CO(1) => \S_reg[24]_i_1__2_n_6\,
      CO(0) => \S_reg[24]_i_1__2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \S_reg[24]_i_1__2_n_8\,
      O(6) => \S_reg[24]_i_1__2_n_9\,
      O(5) => \S_reg[24]_i_1__2_n_10\,
      O(4) => \S_reg[24]_i_1__2_n_11\,
      O(3) => \S_reg[24]_i_1__2_n_12\,
      O(2) => \S_reg[24]_i_1__2_n_13\,
      O(1) => \S_reg[24]_i_1__2_n_14\,
      O(0) => \S_reg[24]_i_1__2_n_15\,
      S(7 downto 0) => S_reg(31 downto 24)
    );
\S_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__2_n_14\,
      Q => S_reg(25),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__2_n_13\,
      Q => S_reg(26),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__2_n_12\,
      Q => S_reg(27),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__2_n_11\,
      Q => S_reg(28),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__2_n_10\,
      Q => S_reg(29),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__2_n_13\,
      Q => S_reg(2),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__2_n_9\,
      Q => S_reg(30),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__2_n_8\,
      Q => S_reg(31),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__2_n_12\,
      Q => S_reg(3),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__2_n_11\,
      Q => S_reg(4),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__2_n_10\,
      Q => S_reg(5),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__2_n_9\,
      Q => S_reg(6),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__2_n_8\,
      Q => S_reg(7),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__2_n_15\,
      Q => S_reg(8),
      R => \S[0]_i_1__2_n_0\
    );
\S_reg[8]_i_1__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \S_reg[0]_i_2__2_n_0\,
      CI_TOP => '0',
      CO(7) => \S_reg[8]_i_1__2_n_0\,
      CO(6) => \S_reg[8]_i_1__2_n_1\,
      CO(5) => \S_reg[8]_i_1__2_n_2\,
      CO(4) => \S_reg[8]_i_1__2_n_3\,
      CO(3) => \S_reg[8]_i_1__2_n_4\,
      CO(2) => \S_reg[8]_i_1__2_n_5\,
      CO(1) => \S_reg[8]_i_1__2_n_6\,
      CO(0) => \S_reg[8]_i_1__2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \S_reg[8]_i_1__2_n_8\,
      O(6) => \S_reg[8]_i_1__2_n_9\,
      O(5) => \S_reg[8]_i_1__2_n_10\,
      O(4) => \S_reg[8]_i_1__2_n_11\,
      O(3) => \S_reg[8]_i_1__2_n_12\,
      O(2) => \S_reg[8]_i_1__2_n_13\,
      O(1) => \S_reg[8]_i_1__2_n_14\,
      O(0) => \S_reg[8]_i_1__2_n_15\,
      S(7 downto 0) => S_reg(15 downto 8)
    );
\S_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__2_n_14\,
      Q => S_reg(9),
      R => \S[0]_i_1__2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Measure_F_Ro_15 is
  port (
    Data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_int : in STD_LOGIC;
    Reset : in STD_LOGIC;
    CE_1Hz : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Measure_F_Ro_15 : entity is "Measure_F_Ro";
end test_gen_mode_All_Ro_out_0_1_Measure_F_Ro_15;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Measure_F_Ro_15 is
  signal Enable_Decal_1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Enable_Decal_1 : signal is "true";
  signal Enable_Decal_2 : STD_LOGIC;
  attribute async_reg of Enable_Decal_2 : signal is "true";
  signal Enable_Decal_3 : STD_LOGIC;
  signal Enable_Int : STD_LOGIC;
  signal Enable_Int_Sync : STD_LOGIC;
  signal \S[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \S[0]_i_3__0_n_0\ : STD_LOGIC;
  signal S_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \S_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \S_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \S_reg[0]_i_2__0_n_10\ : STD_LOGIC;
  signal \S_reg[0]_i_2__0_n_11\ : STD_LOGIC;
  signal \S_reg[0]_i_2__0_n_12\ : STD_LOGIC;
  signal \S_reg[0]_i_2__0_n_13\ : STD_LOGIC;
  signal \S_reg[0]_i_2__0_n_14\ : STD_LOGIC;
  signal \S_reg[0]_i_2__0_n_15\ : STD_LOGIC;
  signal \S_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \S_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \S_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \S_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \S_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \S_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \S_reg[0]_i_2__0_n_8\ : STD_LOGIC;
  signal \S_reg[0]_i_2__0_n_9\ : STD_LOGIC;
  signal \S_reg[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \S_reg[16]_i_1__0_n_1\ : STD_LOGIC;
  signal \S_reg[16]_i_1__0_n_10\ : STD_LOGIC;
  signal \S_reg[16]_i_1__0_n_11\ : STD_LOGIC;
  signal \S_reg[16]_i_1__0_n_12\ : STD_LOGIC;
  signal \S_reg[16]_i_1__0_n_13\ : STD_LOGIC;
  signal \S_reg[16]_i_1__0_n_14\ : STD_LOGIC;
  signal \S_reg[16]_i_1__0_n_15\ : STD_LOGIC;
  signal \S_reg[16]_i_1__0_n_2\ : STD_LOGIC;
  signal \S_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \S_reg[16]_i_1__0_n_4\ : STD_LOGIC;
  signal \S_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \S_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \S_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \S_reg[16]_i_1__0_n_8\ : STD_LOGIC;
  signal \S_reg[16]_i_1__0_n_9\ : STD_LOGIC;
  signal \S_reg[24]_i_1__0_n_1\ : STD_LOGIC;
  signal \S_reg[24]_i_1__0_n_10\ : STD_LOGIC;
  signal \S_reg[24]_i_1__0_n_11\ : STD_LOGIC;
  signal \S_reg[24]_i_1__0_n_12\ : STD_LOGIC;
  signal \S_reg[24]_i_1__0_n_13\ : STD_LOGIC;
  signal \S_reg[24]_i_1__0_n_14\ : STD_LOGIC;
  signal \S_reg[24]_i_1__0_n_15\ : STD_LOGIC;
  signal \S_reg[24]_i_1__0_n_2\ : STD_LOGIC;
  signal \S_reg[24]_i_1__0_n_3\ : STD_LOGIC;
  signal \S_reg[24]_i_1__0_n_4\ : STD_LOGIC;
  signal \S_reg[24]_i_1__0_n_5\ : STD_LOGIC;
  signal \S_reg[24]_i_1__0_n_6\ : STD_LOGIC;
  signal \S_reg[24]_i_1__0_n_7\ : STD_LOGIC;
  signal \S_reg[24]_i_1__0_n_8\ : STD_LOGIC;
  signal \S_reg[24]_i_1__0_n_9\ : STD_LOGIC;
  signal \S_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \S_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \S_reg[8]_i_1__0_n_10\ : STD_LOGIC;
  signal \S_reg[8]_i_1__0_n_11\ : STD_LOGIC;
  signal \S_reg[8]_i_1__0_n_12\ : STD_LOGIC;
  signal \S_reg[8]_i_1__0_n_13\ : STD_LOGIC;
  signal \S_reg[8]_i_1__0_n_14\ : STD_LOGIC;
  signal \S_reg[8]_i_1__0_n_15\ : STD_LOGIC;
  signal \S_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \S_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \S_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \S_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \S_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \S_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \S_reg[8]_i_1__0_n_8\ : STD_LOGIC;
  signal \S_reg[8]_i_1__0_n_9\ : STD_LOGIC;
  signal \NLW_S_reg[24]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of Enable_Decal_1_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of Enable_Decal_1_reg : label is "yes";
  attribute ASYNC_REG_boolean of Enable_Decal_2_reg : label is std.standard.true;
  attribute KEEP of Enable_Decal_2_reg : label is "yes";
begin
Enable_Decal_1_reg: unisim.vcomponents.FDCE
     port map (
      C => S_int,
      CE => '1',
      CLR => Reset,
      D => CE_1Hz,
      Q => Enable_Decal_1
    );
Enable_Decal_2_reg: unisim.vcomponents.FDCE
     port map (
      C => S_int,
      CE => '1',
      CLR => Reset,
      D => Enable_Decal_1,
      Q => Enable_Decal_2
    );
Enable_Decal_3_reg: unisim.vcomponents.FDCE
     port map (
      C => S_int,
      CE => '1',
      CLR => Reset,
      D => Enable_Decal_2,
      Q => Enable_Decal_3
    );
\Enable_Int_Sync_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Enable_Decal_3,
      I1 => Enable_Decal_2,
      O => Enable_Int
    );
Enable_Int_Sync_reg: unisim.vcomponents.FDCE
     port map (
      C => S_int,
      CE => '1',
      CLR => Reset,
      D => Enable_Int,
      Q => Enable_Int_Sync
    );
\R_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(0),
      Q => Data(0),
      R => Reset
    );
\R_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(10),
      Q => Data(10),
      R => Reset
    );
\R_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(11),
      Q => Data(11),
      R => Reset
    );
\R_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(12),
      Q => Data(12),
      R => Reset
    );
\R_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(13),
      Q => Data(13),
      R => Reset
    );
\R_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(14),
      Q => Data(14),
      R => Reset
    );
\R_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(15),
      Q => Data(15),
      R => Reset
    );
\R_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(16),
      Q => Data(16),
      R => Reset
    );
\R_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(17),
      Q => Data(17),
      R => Reset
    );
\R_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(18),
      Q => Data(18),
      R => Reset
    );
\R_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(19),
      Q => Data(19),
      R => Reset
    );
\R_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(1),
      Q => Data(1),
      R => Reset
    );
\R_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(20),
      Q => Data(20),
      R => Reset
    );
\R_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(21),
      Q => Data(21),
      R => Reset
    );
\R_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(22),
      Q => Data(22),
      R => Reset
    );
\R_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(23),
      Q => Data(23),
      R => Reset
    );
\R_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(24),
      Q => Data(24),
      R => Reset
    );
\R_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(25),
      Q => Data(25),
      R => Reset
    );
\R_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(26),
      Q => Data(26),
      R => Reset
    );
\R_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(27),
      Q => Data(27),
      R => Reset
    );
\R_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(28),
      Q => Data(28),
      R => Reset
    );
\R_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(29),
      Q => Data(29),
      R => Reset
    );
\R_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(2),
      Q => Data(2),
      R => Reset
    );
\R_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(30),
      Q => Data(30),
      R => Reset
    );
\R_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(31),
      Q => Data(31),
      R => Reset
    );
\R_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(3),
      Q => Data(3),
      R => Reset
    );
\R_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(4),
      Q => Data(4),
      R => Reset
    );
\R_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(5),
      Q => Data(5),
      R => Reset
    );
\R_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(6),
      Q => Data(6),
      R => Reset
    );
\R_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(7),
      Q => Data(7),
      R => Reset
    );
\R_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(8),
      Q => Data(8),
      R => Reset
    );
\R_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(9),
      Q => Data(9),
      R => Reset
    );
\S[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Reset,
      I1 => Enable_Int_Sync,
      O => \S[0]_i_1__0_n_0\
    );
\S[0]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_reg(0),
      O => \S[0]_i_3__0_n_0\
    );
\S_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__0_n_15\,
      Q => S_reg(0),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[0]_i_2__0\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \S_reg[0]_i_2__0_n_0\,
      CO(6) => \S_reg[0]_i_2__0_n_1\,
      CO(5) => \S_reg[0]_i_2__0_n_2\,
      CO(4) => \S_reg[0]_i_2__0_n_3\,
      CO(3) => \S_reg[0]_i_2__0_n_4\,
      CO(2) => \S_reg[0]_i_2__0_n_5\,
      CO(1) => \S_reg[0]_i_2__0_n_6\,
      CO(0) => \S_reg[0]_i_2__0_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \S_reg[0]_i_2__0_n_8\,
      O(6) => \S_reg[0]_i_2__0_n_9\,
      O(5) => \S_reg[0]_i_2__0_n_10\,
      O(4) => \S_reg[0]_i_2__0_n_11\,
      O(3) => \S_reg[0]_i_2__0_n_12\,
      O(2) => \S_reg[0]_i_2__0_n_13\,
      O(1) => \S_reg[0]_i_2__0_n_14\,
      O(0) => \S_reg[0]_i_2__0_n_15\,
      S(7 downto 1) => S_reg(7 downto 1),
      S(0) => \S[0]_i_3__0_n_0\
    );
\S_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__0_n_13\,
      Q => S_reg(10),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__0_n_12\,
      Q => S_reg(11),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__0_n_11\,
      Q => S_reg(12),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__0_n_10\,
      Q => S_reg(13),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__0_n_9\,
      Q => S_reg(14),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__0_n_8\,
      Q => S_reg(15),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__0_n_15\,
      Q => S_reg(16),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[16]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \S_reg[8]_i_1__0_n_0\,
      CI_TOP => '0',
      CO(7) => \S_reg[16]_i_1__0_n_0\,
      CO(6) => \S_reg[16]_i_1__0_n_1\,
      CO(5) => \S_reg[16]_i_1__0_n_2\,
      CO(4) => \S_reg[16]_i_1__0_n_3\,
      CO(3) => \S_reg[16]_i_1__0_n_4\,
      CO(2) => \S_reg[16]_i_1__0_n_5\,
      CO(1) => \S_reg[16]_i_1__0_n_6\,
      CO(0) => \S_reg[16]_i_1__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \S_reg[16]_i_1__0_n_8\,
      O(6) => \S_reg[16]_i_1__0_n_9\,
      O(5) => \S_reg[16]_i_1__0_n_10\,
      O(4) => \S_reg[16]_i_1__0_n_11\,
      O(3) => \S_reg[16]_i_1__0_n_12\,
      O(2) => \S_reg[16]_i_1__0_n_13\,
      O(1) => \S_reg[16]_i_1__0_n_14\,
      O(0) => \S_reg[16]_i_1__0_n_15\,
      S(7 downto 0) => S_reg(23 downto 16)
    );
\S_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__0_n_14\,
      Q => S_reg(17),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__0_n_13\,
      Q => S_reg(18),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__0_n_12\,
      Q => S_reg(19),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__0_n_14\,
      Q => S_reg(1),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__0_n_11\,
      Q => S_reg(20),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__0_n_10\,
      Q => S_reg(21),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__0_n_9\,
      Q => S_reg(22),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__0_n_8\,
      Q => S_reg(23),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__0_n_15\,
      Q => S_reg(24),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[24]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \S_reg[16]_i_1__0_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_S_reg[24]_i_1__0_CO_UNCONNECTED\(7),
      CO(6) => \S_reg[24]_i_1__0_n_1\,
      CO(5) => \S_reg[24]_i_1__0_n_2\,
      CO(4) => \S_reg[24]_i_1__0_n_3\,
      CO(3) => \S_reg[24]_i_1__0_n_4\,
      CO(2) => \S_reg[24]_i_1__0_n_5\,
      CO(1) => \S_reg[24]_i_1__0_n_6\,
      CO(0) => \S_reg[24]_i_1__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \S_reg[24]_i_1__0_n_8\,
      O(6) => \S_reg[24]_i_1__0_n_9\,
      O(5) => \S_reg[24]_i_1__0_n_10\,
      O(4) => \S_reg[24]_i_1__0_n_11\,
      O(3) => \S_reg[24]_i_1__0_n_12\,
      O(2) => \S_reg[24]_i_1__0_n_13\,
      O(1) => \S_reg[24]_i_1__0_n_14\,
      O(0) => \S_reg[24]_i_1__0_n_15\,
      S(7 downto 0) => S_reg(31 downto 24)
    );
\S_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__0_n_14\,
      Q => S_reg(25),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__0_n_13\,
      Q => S_reg(26),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__0_n_12\,
      Q => S_reg(27),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__0_n_11\,
      Q => S_reg(28),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__0_n_10\,
      Q => S_reg(29),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__0_n_13\,
      Q => S_reg(2),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__0_n_9\,
      Q => S_reg(30),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__0_n_8\,
      Q => S_reg(31),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__0_n_12\,
      Q => S_reg(3),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__0_n_11\,
      Q => S_reg(4),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__0_n_10\,
      Q => S_reg(5),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__0_n_9\,
      Q => S_reg(6),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__0_n_8\,
      Q => S_reg(7),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__0_n_15\,
      Q => S_reg(8),
      R => \S[0]_i_1__0_n_0\
    );
\S_reg[8]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \S_reg[0]_i_2__0_n_0\,
      CI_TOP => '0',
      CO(7) => \S_reg[8]_i_1__0_n_0\,
      CO(6) => \S_reg[8]_i_1__0_n_1\,
      CO(5) => \S_reg[8]_i_1__0_n_2\,
      CO(4) => \S_reg[8]_i_1__0_n_3\,
      CO(3) => \S_reg[8]_i_1__0_n_4\,
      CO(2) => \S_reg[8]_i_1__0_n_5\,
      CO(1) => \S_reg[8]_i_1__0_n_6\,
      CO(0) => \S_reg[8]_i_1__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \S_reg[8]_i_1__0_n_8\,
      O(6) => \S_reg[8]_i_1__0_n_9\,
      O(5) => \S_reg[8]_i_1__0_n_10\,
      O(4) => \S_reg[8]_i_1__0_n_11\,
      O(3) => \S_reg[8]_i_1__0_n_12\,
      O(2) => \S_reg[8]_i_1__0_n_13\,
      O(1) => \S_reg[8]_i_1__0_n_14\,
      O(0) => \S_reg[8]_i_1__0_n_15\,
      S(7 downto 0) => S_reg(15 downto 8)
    );
\S_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__0_n_14\,
      Q => S_reg(9),
      R => \S[0]_i_1__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Measure_F_Ro_23 is
  port (
    Data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CE_1Hz : in STD_LOGIC;
    S_int : in STD_LOGIC;
    Reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Measure_F_Ro_23 : entity is "Measure_F_Ro";
end test_gen_mode_All_Ro_out_0_1_Measure_F_Ro_23;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Measure_F_Ro_23 is
  signal Enable_Decal_1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Enable_Decal_1 : signal is "true";
  signal Enable_Decal_2 : STD_LOGIC;
  attribute async_reg of Enable_Decal_2 : signal is "true";
  signal Enable_Decal_3 : STD_LOGIC;
  signal Enable_Int : STD_LOGIC;
  signal Enable_Int_Sync : STD_LOGIC;
  signal \S[0]_i_1_n_0\ : STD_LOGIC;
  signal \S[0]_i_3_n_0\ : STD_LOGIC;
  signal S_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \S_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \S_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \S_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \S_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \S_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \S_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \S_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \S_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \S_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \S_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \S_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \S_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \S_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \S_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \S_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \S_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \S_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \S_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \S_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \S_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \S_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \S_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \S_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \S_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \S_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \S_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \S_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \S_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \S_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \S_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \S_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \S_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \S_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \S_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \NLW_S_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of Enable_Decal_1_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of Enable_Decal_1_reg : label is "yes";
  attribute ASYNC_REG_boolean of Enable_Decal_2_reg : label is std.standard.true;
  attribute KEEP of Enable_Decal_2_reg : label is "yes";
begin
Enable_Decal_1_reg: unisim.vcomponents.FDCE
     port map (
      C => S_int,
      CE => '1',
      CLR => Reset,
      D => CE_1Hz,
      Q => Enable_Decal_1
    );
Enable_Decal_2_reg: unisim.vcomponents.FDCE
     port map (
      C => S_int,
      CE => '1',
      CLR => Reset,
      D => Enable_Decal_1,
      Q => Enable_Decal_2
    );
Enable_Decal_3_reg: unisim.vcomponents.FDCE
     port map (
      C => S_int,
      CE => '1',
      CLR => Reset,
      D => Enable_Decal_2,
      Q => Enable_Decal_3
    );
Enable_Int_Sync_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Enable_Decal_3,
      I1 => Enable_Decal_2,
      O => Enable_Int
    );
Enable_Int_Sync_reg: unisim.vcomponents.FDCE
     port map (
      C => S_int,
      CE => '1',
      CLR => Reset,
      D => Enable_Int,
      Q => Enable_Int_Sync
    );
\R_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(0),
      Q => Data(0),
      R => Reset
    );
\R_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(10),
      Q => Data(10),
      R => Reset
    );
\R_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(11),
      Q => Data(11),
      R => Reset
    );
\R_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(12),
      Q => Data(12),
      R => Reset
    );
\R_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(13),
      Q => Data(13),
      R => Reset
    );
\R_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(14),
      Q => Data(14),
      R => Reset
    );
\R_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(15),
      Q => Data(15),
      R => Reset
    );
\R_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(16),
      Q => Data(16),
      R => Reset
    );
\R_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(17),
      Q => Data(17),
      R => Reset
    );
\R_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(18),
      Q => Data(18),
      R => Reset
    );
\R_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(19),
      Q => Data(19),
      R => Reset
    );
\R_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(1),
      Q => Data(1),
      R => Reset
    );
\R_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(20),
      Q => Data(20),
      R => Reset
    );
\R_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(21),
      Q => Data(21),
      R => Reset
    );
\R_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(22),
      Q => Data(22),
      R => Reset
    );
\R_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(23),
      Q => Data(23),
      R => Reset
    );
\R_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(24),
      Q => Data(24),
      R => Reset
    );
\R_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(25),
      Q => Data(25),
      R => Reset
    );
\R_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(26),
      Q => Data(26),
      R => Reset
    );
\R_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(27),
      Q => Data(27),
      R => Reset
    );
\R_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(28),
      Q => Data(28),
      R => Reset
    );
\R_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(29),
      Q => Data(29),
      R => Reset
    );
\R_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(2),
      Q => Data(2),
      R => Reset
    );
\R_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(30),
      Q => Data(30),
      R => Reset
    );
\R_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(31),
      Q => Data(31),
      R => Reset
    );
\R_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(3),
      Q => Data(3),
      R => Reset
    );
\R_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(4),
      Q => Data(4),
      R => Reset
    );
\R_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(5),
      Q => Data(5),
      R => Reset
    );
\R_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(6),
      Q => Data(6),
      R => Reset
    );
\R_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(7),
      Q => Data(7),
      R => Reset
    );
\R_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(8),
      Q => Data(8),
      R => Reset
    );
\R_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(9),
      Q => Data(9),
      R => Reset
    );
\S[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Reset,
      I1 => Enable_Int_Sync,
      O => \S[0]_i_1_n_0\
    );
\S[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_reg(0),
      O => \S[0]_i_3_n_0\
    );
\S_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2_n_15\,
      Q => S_reg(0),
      R => \S[0]_i_1_n_0\
    );
\S_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \S_reg[0]_i_2_n_0\,
      CO(6) => \S_reg[0]_i_2_n_1\,
      CO(5) => \S_reg[0]_i_2_n_2\,
      CO(4) => \S_reg[0]_i_2_n_3\,
      CO(3) => \S_reg[0]_i_2_n_4\,
      CO(2) => \S_reg[0]_i_2_n_5\,
      CO(1) => \S_reg[0]_i_2_n_6\,
      CO(0) => \S_reg[0]_i_2_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \S_reg[0]_i_2_n_8\,
      O(6) => \S_reg[0]_i_2_n_9\,
      O(5) => \S_reg[0]_i_2_n_10\,
      O(4) => \S_reg[0]_i_2_n_11\,
      O(3) => \S_reg[0]_i_2_n_12\,
      O(2) => \S_reg[0]_i_2_n_13\,
      O(1) => \S_reg[0]_i_2_n_14\,
      O(0) => \S_reg[0]_i_2_n_15\,
      S(7 downto 1) => S_reg(7 downto 1),
      S(0) => \S[0]_i_3_n_0\
    );
\S_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1_n_13\,
      Q => S_reg(10),
      R => \S[0]_i_1_n_0\
    );
\S_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1_n_12\,
      Q => S_reg(11),
      R => \S[0]_i_1_n_0\
    );
\S_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1_n_11\,
      Q => S_reg(12),
      R => \S[0]_i_1_n_0\
    );
\S_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1_n_10\,
      Q => S_reg(13),
      R => \S[0]_i_1_n_0\
    );
\S_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1_n_9\,
      Q => S_reg(14),
      R => \S[0]_i_1_n_0\
    );
\S_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1_n_8\,
      Q => S_reg(15),
      R => \S[0]_i_1_n_0\
    );
\S_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1_n_15\,
      Q => S_reg(16),
      R => \S[0]_i_1_n_0\
    );
\S_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \S_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \S_reg[16]_i_1_n_0\,
      CO(6) => \S_reg[16]_i_1_n_1\,
      CO(5) => \S_reg[16]_i_1_n_2\,
      CO(4) => \S_reg[16]_i_1_n_3\,
      CO(3) => \S_reg[16]_i_1_n_4\,
      CO(2) => \S_reg[16]_i_1_n_5\,
      CO(1) => \S_reg[16]_i_1_n_6\,
      CO(0) => \S_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \S_reg[16]_i_1_n_8\,
      O(6) => \S_reg[16]_i_1_n_9\,
      O(5) => \S_reg[16]_i_1_n_10\,
      O(4) => \S_reg[16]_i_1_n_11\,
      O(3) => \S_reg[16]_i_1_n_12\,
      O(2) => \S_reg[16]_i_1_n_13\,
      O(1) => \S_reg[16]_i_1_n_14\,
      O(0) => \S_reg[16]_i_1_n_15\,
      S(7 downto 0) => S_reg(23 downto 16)
    );
\S_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1_n_14\,
      Q => S_reg(17),
      R => \S[0]_i_1_n_0\
    );
\S_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1_n_13\,
      Q => S_reg(18),
      R => \S[0]_i_1_n_0\
    );
\S_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1_n_12\,
      Q => S_reg(19),
      R => \S[0]_i_1_n_0\
    );
\S_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2_n_14\,
      Q => S_reg(1),
      R => \S[0]_i_1_n_0\
    );
\S_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1_n_11\,
      Q => S_reg(20),
      R => \S[0]_i_1_n_0\
    );
\S_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1_n_10\,
      Q => S_reg(21),
      R => \S[0]_i_1_n_0\
    );
\S_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1_n_9\,
      Q => S_reg(22),
      R => \S[0]_i_1_n_0\
    );
\S_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1_n_8\,
      Q => S_reg(23),
      R => \S[0]_i_1_n_0\
    );
\S_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1_n_15\,
      Q => S_reg(24),
      R => \S[0]_i_1_n_0\
    );
\S_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \S_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_S_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \S_reg[24]_i_1_n_1\,
      CO(5) => \S_reg[24]_i_1_n_2\,
      CO(4) => \S_reg[24]_i_1_n_3\,
      CO(3) => \S_reg[24]_i_1_n_4\,
      CO(2) => \S_reg[24]_i_1_n_5\,
      CO(1) => \S_reg[24]_i_1_n_6\,
      CO(0) => \S_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \S_reg[24]_i_1_n_8\,
      O(6) => \S_reg[24]_i_1_n_9\,
      O(5) => \S_reg[24]_i_1_n_10\,
      O(4) => \S_reg[24]_i_1_n_11\,
      O(3) => \S_reg[24]_i_1_n_12\,
      O(2) => \S_reg[24]_i_1_n_13\,
      O(1) => \S_reg[24]_i_1_n_14\,
      O(0) => \S_reg[24]_i_1_n_15\,
      S(7 downto 0) => S_reg(31 downto 24)
    );
\S_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1_n_14\,
      Q => S_reg(25),
      R => \S[0]_i_1_n_0\
    );
\S_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1_n_13\,
      Q => S_reg(26),
      R => \S[0]_i_1_n_0\
    );
\S_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1_n_12\,
      Q => S_reg(27),
      R => \S[0]_i_1_n_0\
    );
\S_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1_n_11\,
      Q => S_reg(28),
      R => \S[0]_i_1_n_0\
    );
\S_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1_n_10\,
      Q => S_reg(29),
      R => \S[0]_i_1_n_0\
    );
\S_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2_n_13\,
      Q => S_reg(2),
      R => \S[0]_i_1_n_0\
    );
\S_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1_n_9\,
      Q => S_reg(30),
      R => \S[0]_i_1_n_0\
    );
\S_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1_n_8\,
      Q => S_reg(31),
      R => \S[0]_i_1_n_0\
    );
\S_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2_n_12\,
      Q => S_reg(3),
      R => \S[0]_i_1_n_0\
    );
\S_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2_n_11\,
      Q => S_reg(4),
      R => \S[0]_i_1_n_0\
    );
\S_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2_n_10\,
      Q => S_reg(5),
      R => \S[0]_i_1_n_0\
    );
\S_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2_n_9\,
      Q => S_reg(6),
      R => \S[0]_i_1_n_0\
    );
\S_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2_n_8\,
      Q => S_reg(7),
      R => \S[0]_i_1_n_0\
    );
\S_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1_n_15\,
      Q => S_reg(8),
      R => \S[0]_i_1_n_0\
    );
\S_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \S_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \S_reg[8]_i_1_n_0\,
      CO(6) => \S_reg[8]_i_1_n_1\,
      CO(5) => \S_reg[8]_i_1_n_2\,
      CO(4) => \S_reg[8]_i_1_n_3\,
      CO(3) => \S_reg[8]_i_1_n_4\,
      CO(2) => \S_reg[8]_i_1_n_5\,
      CO(1) => \S_reg[8]_i_1_n_6\,
      CO(0) => \S_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \S_reg[8]_i_1_n_8\,
      O(6) => \S_reg[8]_i_1_n_9\,
      O(5) => \S_reg[8]_i_1_n_10\,
      O(4) => \S_reg[8]_i_1_n_11\,
      O(3) => \S_reg[8]_i_1_n_12\,
      O(2) => \S_reg[8]_i_1_n_13\,
      O(1) => \S_reg[8]_i_1_n_14\,
      O(0) => \S_reg[8]_i_1_n_15\,
      S(7 downto 0) => S_reg(15 downto 8)
    );
\S_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1_n_14\,
      Q => S_reg(9),
      R => \S[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Measure_F_Ro_7 is
  port (
    Data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_int : in STD_LOGIC;
    Reset : in STD_LOGIC;
    CE_1Hz : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Measure_F_Ro_7 : entity is "Measure_F_Ro";
end test_gen_mode_All_Ro_out_0_1_Measure_F_Ro_7;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Measure_F_Ro_7 is
  signal Enable_Decal_1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Enable_Decal_1 : signal is "true";
  signal Enable_Decal_2 : STD_LOGIC;
  attribute async_reg of Enable_Decal_2 : signal is "true";
  signal Enable_Decal_3 : STD_LOGIC;
  signal Enable_Int : STD_LOGIC;
  signal Enable_Int_Sync : STD_LOGIC;
  signal \S[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \S[0]_i_3__1_n_0\ : STD_LOGIC;
  signal S_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \S_reg[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \S_reg[0]_i_2__1_n_1\ : STD_LOGIC;
  signal \S_reg[0]_i_2__1_n_10\ : STD_LOGIC;
  signal \S_reg[0]_i_2__1_n_11\ : STD_LOGIC;
  signal \S_reg[0]_i_2__1_n_12\ : STD_LOGIC;
  signal \S_reg[0]_i_2__1_n_13\ : STD_LOGIC;
  signal \S_reg[0]_i_2__1_n_14\ : STD_LOGIC;
  signal \S_reg[0]_i_2__1_n_15\ : STD_LOGIC;
  signal \S_reg[0]_i_2__1_n_2\ : STD_LOGIC;
  signal \S_reg[0]_i_2__1_n_3\ : STD_LOGIC;
  signal \S_reg[0]_i_2__1_n_4\ : STD_LOGIC;
  signal \S_reg[0]_i_2__1_n_5\ : STD_LOGIC;
  signal \S_reg[0]_i_2__1_n_6\ : STD_LOGIC;
  signal \S_reg[0]_i_2__1_n_7\ : STD_LOGIC;
  signal \S_reg[0]_i_2__1_n_8\ : STD_LOGIC;
  signal \S_reg[0]_i_2__1_n_9\ : STD_LOGIC;
  signal \S_reg[16]_i_1__1_n_0\ : STD_LOGIC;
  signal \S_reg[16]_i_1__1_n_1\ : STD_LOGIC;
  signal \S_reg[16]_i_1__1_n_10\ : STD_LOGIC;
  signal \S_reg[16]_i_1__1_n_11\ : STD_LOGIC;
  signal \S_reg[16]_i_1__1_n_12\ : STD_LOGIC;
  signal \S_reg[16]_i_1__1_n_13\ : STD_LOGIC;
  signal \S_reg[16]_i_1__1_n_14\ : STD_LOGIC;
  signal \S_reg[16]_i_1__1_n_15\ : STD_LOGIC;
  signal \S_reg[16]_i_1__1_n_2\ : STD_LOGIC;
  signal \S_reg[16]_i_1__1_n_3\ : STD_LOGIC;
  signal \S_reg[16]_i_1__1_n_4\ : STD_LOGIC;
  signal \S_reg[16]_i_1__1_n_5\ : STD_LOGIC;
  signal \S_reg[16]_i_1__1_n_6\ : STD_LOGIC;
  signal \S_reg[16]_i_1__1_n_7\ : STD_LOGIC;
  signal \S_reg[16]_i_1__1_n_8\ : STD_LOGIC;
  signal \S_reg[16]_i_1__1_n_9\ : STD_LOGIC;
  signal \S_reg[24]_i_1__1_n_1\ : STD_LOGIC;
  signal \S_reg[24]_i_1__1_n_10\ : STD_LOGIC;
  signal \S_reg[24]_i_1__1_n_11\ : STD_LOGIC;
  signal \S_reg[24]_i_1__1_n_12\ : STD_LOGIC;
  signal \S_reg[24]_i_1__1_n_13\ : STD_LOGIC;
  signal \S_reg[24]_i_1__1_n_14\ : STD_LOGIC;
  signal \S_reg[24]_i_1__1_n_15\ : STD_LOGIC;
  signal \S_reg[24]_i_1__1_n_2\ : STD_LOGIC;
  signal \S_reg[24]_i_1__1_n_3\ : STD_LOGIC;
  signal \S_reg[24]_i_1__1_n_4\ : STD_LOGIC;
  signal \S_reg[24]_i_1__1_n_5\ : STD_LOGIC;
  signal \S_reg[24]_i_1__1_n_6\ : STD_LOGIC;
  signal \S_reg[24]_i_1__1_n_7\ : STD_LOGIC;
  signal \S_reg[24]_i_1__1_n_8\ : STD_LOGIC;
  signal \S_reg[24]_i_1__1_n_9\ : STD_LOGIC;
  signal \S_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \S_reg[8]_i_1__1_n_1\ : STD_LOGIC;
  signal \S_reg[8]_i_1__1_n_10\ : STD_LOGIC;
  signal \S_reg[8]_i_1__1_n_11\ : STD_LOGIC;
  signal \S_reg[8]_i_1__1_n_12\ : STD_LOGIC;
  signal \S_reg[8]_i_1__1_n_13\ : STD_LOGIC;
  signal \S_reg[8]_i_1__1_n_14\ : STD_LOGIC;
  signal \S_reg[8]_i_1__1_n_15\ : STD_LOGIC;
  signal \S_reg[8]_i_1__1_n_2\ : STD_LOGIC;
  signal \S_reg[8]_i_1__1_n_3\ : STD_LOGIC;
  signal \S_reg[8]_i_1__1_n_4\ : STD_LOGIC;
  signal \S_reg[8]_i_1__1_n_5\ : STD_LOGIC;
  signal \S_reg[8]_i_1__1_n_6\ : STD_LOGIC;
  signal \S_reg[8]_i_1__1_n_7\ : STD_LOGIC;
  signal \S_reg[8]_i_1__1_n_8\ : STD_LOGIC;
  signal \S_reg[8]_i_1__1_n_9\ : STD_LOGIC;
  signal \NLW_S_reg[24]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of Enable_Decal_1_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of Enable_Decal_1_reg : label is "yes";
  attribute ASYNC_REG_boolean of Enable_Decal_2_reg : label is std.standard.true;
  attribute KEEP of Enable_Decal_2_reg : label is "yes";
begin
Enable_Decal_1_reg: unisim.vcomponents.FDCE
     port map (
      C => S_int,
      CE => '1',
      CLR => Reset,
      D => CE_1Hz,
      Q => Enable_Decal_1
    );
Enable_Decal_2_reg: unisim.vcomponents.FDCE
     port map (
      C => S_int,
      CE => '1',
      CLR => Reset,
      D => Enable_Decal_1,
      Q => Enable_Decal_2
    );
Enable_Decal_3_reg: unisim.vcomponents.FDCE
     port map (
      C => S_int,
      CE => '1',
      CLR => Reset,
      D => Enable_Decal_2,
      Q => Enable_Decal_3
    );
\Enable_Int_Sync_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Enable_Decal_3,
      I1 => Enable_Decal_2,
      O => Enable_Int
    );
Enable_Int_Sync_reg: unisim.vcomponents.FDCE
     port map (
      C => S_int,
      CE => '1',
      CLR => Reset,
      D => Enable_Int,
      Q => Enable_Int_Sync
    );
\R_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(0),
      Q => Data(0),
      R => Reset
    );
\R_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(10),
      Q => Data(10),
      R => Reset
    );
\R_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(11),
      Q => Data(11),
      R => Reset
    );
\R_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(12),
      Q => Data(12),
      R => Reset
    );
\R_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(13),
      Q => Data(13),
      R => Reset
    );
\R_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(14),
      Q => Data(14),
      R => Reset
    );
\R_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(15),
      Q => Data(15),
      R => Reset
    );
\R_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(16),
      Q => Data(16),
      R => Reset
    );
\R_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(17),
      Q => Data(17),
      R => Reset
    );
\R_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(18),
      Q => Data(18),
      R => Reset
    );
\R_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(19),
      Q => Data(19),
      R => Reset
    );
\R_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(1),
      Q => Data(1),
      R => Reset
    );
\R_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(20),
      Q => Data(20),
      R => Reset
    );
\R_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(21),
      Q => Data(21),
      R => Reset
    );
\R_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(22),
      Q => Data(22),
      R => Reset
    );
\R_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(23),
      Q => Data(23),
      R => Reset
    );
\R_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(24),
      Q => Data(24),
      R => Reset
    );
\R_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(25),
      Q => Data(25),
      R => Reset
    );
\R_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(26),
      Q => Data(26),
      R => Reset
    );
\R_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(27),
      Q => Data(27),
      R => Reset
    );
\R_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(28),
      Q => Data(28),
      R => Reset
    );
\R_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(29),
      Q => Data(29),
      R => Reset
    );
\R_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(2),
      Q => Data(2),
      R => Reset
    );
\R_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(30),
      Q => Data(30),
      R => Reset
    );
\R_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(31),
      Q => Data(31),
      R => Reset
    );
\R_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(3),
      Q => Data(3),
      R => Reset
    );
\R_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(4),
      Q => Data(4),
      R => Reset
    );
\R_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(5),
      Q => Data(5),
      R => Reset
    );
\R_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(6),
      Q => Data(6),
      R => Reset
    );
\R_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(7),
      Q => Data(7),
      R => Reset
    );
\R_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(8),
      Q => Data(8),
      R => Reset
    );
\R_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => Enable_Int_Sync,
      D => S_reg(9),
      Q => Data(9),
      R => Reset
    );
\S[0]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Reset,
      I1 => Enable_Int_Sync,
      O => \S[0]_i_1__1_n_0\
    );
\S[0]_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_reg(0),
      O => \S[0]_i_3__1_n_0\
    );
\S_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__1_n_15\,
      Q => S_reg(0),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[0]_i_2__1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \S_reg[0]_i_2__1_n_0\,
      CO(6) => \S_reg[0]_i_2__1_n_1\,
      CO(5) => \S_reg[0]_i_2__1_n_2\,
      CO(4) => \S_reg[0]_i_2__1_n_3\,
      CO(3) => \S_reg[0]_i_2__1_n_4\,
      CO(2) => \S_reg[0]_i_2__1_n_5\,
      CO(1) => \S_reg[0]_i_2__1_n_6\,
      CO(0) => \S_reg[0]_i_2__1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \S_reg[0]_i_2__1_n_8\,
      O(6) => \S_reg[0]_i_2__1_n_9\,
      O(5) => \S_reg[0]_i_2__1_n_10\,
      O(4) => \S_reg[0]_i_2__1_n_11\,
      O(3) => \S_reg[0]_i_2__1_n_12\,
      O(2) => \S_reg[0]_i_2__1_n_13\,
      O(1) => \S_reg[0]_i_2__1_n_14\,
      O(0) => \S_reg[0]_i_2__1_n_15\,
      S(7 downto 1) => S_reg(7 downto 1),
      S(0) => \S[0]_i_3__1_n_0\
    );
\S_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__1_n_13\,
      Q => S_reg(10),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__1_n_12\,
      Q => S_reg(11),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__1_n_11\,
      Q => S_reg(12),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__1_n_10\,
      Q => S_reg(13),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__1_n_9\,
      Q => S_reg(14),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__1_n_8\,
      Q => S_reg(15),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__1_n_15\,
      Q => S_reg(16),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[16]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \S_reg[8]_i_1__1_n_0\,
      CI_TOP => '0',
      CO(7) => \S_reg[16]_i_1__1_n_0\,
      CO(6) => \S_reg[16]_i_1__1_n_1\,
      CO(5) => \S_reg[16]_i_1__1_n_2\,
      CO(4) => \S_reg[16]_i_1__1_n_3\,
      CO(3) => \S_reg[16]_i_1__1_n_4\,
      CO(2) => \S_reg[16]_i_1__1_n_5\,
      CO(1) => \S_reg[16]_i_1__1_n_6\,
      CO(0) => \S_reg[16]_i_1__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \S_reg[16]_i_1__1_n_8\,
      O(6) => \S_reg[16]_i_1__1_n_9\,
      O(5) => \S_reg[16]_i_1__1_n_10\,
      O(4) => \S_reg[16]_i_1__1_n_11\,
      O(3) => \S_reg[16]_i_1__1_n_12\,
      O(2) => \S_reg[16]_i_1__1_n_13\,
      O(1) => \S_reg[16]_i_1__1_n_14\,
      O(0) => \S_reg[16]_i_1__1_n_15\,
      S(7 downto 0) => S_reg(23 downto 16)
    );
\S_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__1_n_14\,
      Q => S_reg(17),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__1_n_13\,
      Q => S_reg(18),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__1_n_12\,
      Q => S_reg(19),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__1_n_14\,
      Q => S_reg(1),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__1_n_11\,
      Q => S_reg(20),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__1_n_10\,
      Q => S_reg(21),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__1_n_9\,
      Q => S_reg(22),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[16]_i_1__1_n_8\,
      Q => S_reg(23),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__1_n_15\,
      Q => S_reg(24),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[24]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \S_reg[16]_i_1__1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_S_reg[24]_i_1__1_CO_UNCONNECTED\(7),
      CO(6) => \S_reg[24]_i_1__1_n_1\,
      CO(5) => \S_reg[24]_i_1__1_n_2\,
      CO(4) => \S_reg[24]_i_1__1_n_3\,
      CO(3) => \S_reg[24]_i_1__1_n_4\,
      CO(2) => \S_reg[24]_i_1__1_n_5\,
      CO(1) => \S_reg[24]_i_1__1_n_6\,
      CO(0) => \S_reg[24]_i_1__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \S_reg[24]_i_1__1_n_8\,
      O(6) => \S_reg[24]_i_1__1_n_9\,
      O(5) => \S_reg[24]_i_1__1_n_10\,
      O(4) => \S_reg[24]_i_1__1_n_11\,
      O(3) => \S_reg[24]_i_1__1_n_12\,
      O(2) => \S_reg[24]_i_1__1_n_13\,
      O(1) => \S_reg[24]_i_1__1_n_14\,
      O(0) => \S_reg[24]_i_1__1_n_15\,
      S(7 downto 0) => S_reg(31 downto 24)
    );
\S_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__1_n_14\,
      Q => S_reg(25),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__1_n_13\,
      Q => S_reg(26),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__1_n_12\,
      Q => S_reg(27),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__1_n_11\,
      Q => S_reg(28),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__1_n_10\,
      Q => S_reg(29),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__1_n_13\,
      Q => S_reg(2),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__1_n_9\,
      Q => S_reg(30),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[24]_i_1__1_n_8\,
      Q => S_reg(31),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__1_n_12\,
      Q => S_reg(3),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__1_n_11\,
      Q => S_reg(4),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__1_n_10\,
      Q => S_reg(5),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__1_n_9\,
      Q => S_reg(6),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[0]_i_2__1_n_8\,
      Q => S_reg(7),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__1_n_15\,
      Q => S_reg(8),
      R => \S[0]_i_1__1_n_0\
    );
\S_reg[8]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \S_reg[0]_i_2__1_n_0\,
      CI_TOP => '0',
      CO(7) => \S_reg[8]_i_1__1_n_0\,
      CO(6) => \S_reg[8]_i_1__1_n_1\,
      CO(5) => \S_reg[8]_i_1__1_n_2\,
      CO(4) => \S_reg[8]_i_1__1_n_3\,
      CO(3) => \S_reg[8]_i_1__1_n_4\,
      CO(2) => \S_reg[8]_i_1__1_n_5\,
      CO(1) => \S_reg[8]_i_1__1_n_6\,
      CO(0) => \S_reg[8]_i_1__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \S_reg[8]_i_1__1_n_8\,
      O(6) => \S_reg[8]_i_1__1_n_9\,
      O(5) => \S_reg[8]_i_1__1_n_10\,
      O(4) => \S_reg[8]_i_1__1_n_11\,
      O(3) => \S_reg[8]_i_1__1_n_12\,
      O(2) => \S_reg[8]_i_1__1_n_13\,
      O(1) => \S_reg[8]_i_1__1_n_14\,
      O(0) => \S_reg[8]_i_1__1_n_15\,
      S(7 downto 0) => S_reg(15 downto 8)
    );
\S_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_int,
      CE => '1',
      D => \S_reg[8]_i_1__1_n_14\,
      Q => S_reg(9),
      R => \S[0]_i_1__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_B is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_B : entity is "Ro_B";
end test_gen_mode_All_Ro_out_0_1_Ro_B;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_B is
  signal ring : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute box_type : string;
  attribute box_type of \P1_gen_ro[0].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[10].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[11].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[1].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[2].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[3].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[4].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[5].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[6].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[7].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[8].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[9].gate_inst\ : label is "PRIMITIVE";
begin
  \out\(0) <= ring(12);
\P1_gen_ro[0].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\P1_gen_ro[10].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(10),
      O => ring(11)
    );
\P1_gen_ro[11].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(11),
      O => ring(12)
    );
\P1_gen_ro[1].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(1),
      O => ring(2)
    );
\P1_gen_ro[2].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(2),
      O => ring(3)
    );
\P1_gen_ro[3].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(3),
      O => ring(4)
    );
\P1_gen_ro[4].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(4),
      O => ring(5)
    );
\P1_gen_ro[5].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(5),
      O => ring(6)
    );
\P1_gen_ro[6].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(6),
      O => ring(7)
    );
\P1_gen_ro[7].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(7),
      O => ring(8)
    );
\P1_gen_ro[8].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(8),
      O => ring(9)
    );
\P1_gen_ro[9].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(9),
      O => ring(10)
    );
\ring_inferred_i_1__17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(12),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_B_10 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_B_10 : entity is "Ro_B";
end test_gen_mode_All_Ro_out_0_1_Ro_B_10;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_B_10 is
  signal ring : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute box_type : string;
  attribute box_type of \P1_gen_ro[0].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[10].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[11].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[1].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[2].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[3].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[4].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[5].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[6].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[7].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[8].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[9].gate_inst\ : label is "PRIMITIVE";
begin
  \out\(0) <= ring(12);
\P1_gen_ro[0].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\P1_gen_ro[10].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(10),
      O => ring(11)
    );
\P1_gen_ro[11].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(11),
      O => ring(12)
    );
\P1_gen_ro[1].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(1),
      O => ring(2)
    );
\P1_gen_ro[2].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(2),
      O => ring(3)
    );
\P1_gen_ro[3].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(3),
      O => ring(4)
    );
\P1_gen_ro[4].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(4),
      O => ring(5)
    );
\P1_gen_ro[5].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(5),
      O => ring(6)
    );
\P1_gen_ro[6].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(6),
      O => ring(7)
    );
\P1_gen_ro[7].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(7),
      O => ring(8)
    );
\P1_gen_ro[8].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(8),
      O => ring(9)
    );
\P1_gen_ro[9].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(9),
      O => ring(10)
    );
\ring_inferred_i_1__12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(12),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_B_11 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_B_11 : entity is "Ro_B";
end test_gen_mode_All_Ro_out_0_1_Ro_B_11;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_B_11 is
  signal ring : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute box_type : string;
  attribute box_type of \P1_gen_ro[0].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[10].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[11].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[1].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[2].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[3].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[4].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[5].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[6].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[7].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[8].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[9].gate_inst\ : label is "PRIMITIVE";
begin
  \out\(0) <= ring(12);
\P1_gen_ro[0].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\P1_gen_ro[10].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(10),
      O => ring(11)
    );
\P1_gen_ro[11].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(11),
      O => ring(12)
    );
\P1_gen_ro[1].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(1),
      O => ring(2)
    );
\P1_gen_ro[2].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(2),
      O => ring(3)
    );
\P1_gen_ro[3].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(3),
      O => ring(4)
    );
\P1_gen_ro[4].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(4),
      O => ring(5)
    );
\P1_gen_ro[5].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(5),
      O => ring(6)
    );
\P1_gen_ro[6].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(6),
      O => ring(7)
    );
\P1_gen_ro[7].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(7),
      O => ring(8)
    );
\P1_gen_ro[8].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(8),
      O => ring(9)
    );
\P1_gen_ro[9].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(9),
      O => ring(10)
    );
\ring_inferred_i_1__13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(12),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_B_17 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_B_17 : entity is "Ro_B";
end test_gen_mode_All_Ro_out_0_1_Ro_B_17;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_B_17 is
  signal ring : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute box_type : string;
  attribute box_type of \P1_gen_ro[0].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[10].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[11].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[1].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[2].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[3].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[4].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[5].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[6].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[7].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[8].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[9].gate_inst\ : label is "PRIMITIVE";
begin
  \out\(0) <= ring(12);
\P1_gen_ro[0].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\P1_gen_ro[10].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(10),
      O => ring(11)
    );
\P1_gen_ro[11].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(11),
      O => ring(12)
    );
\P1_gen_ro[1].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(1),
      O => ring(2)
    );
\P1_gen_ro[2].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(2),
      O => ring(3)
    );
\P1_gen_ro[3].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(3),
      O => ring(4)
    );
\P1_gen_ro[4].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(4),
      O => ring(5)
    );
\P1_gen_ro[5].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(5),
      O => ring(6)
    );
\P1_gen_ro[6].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(6),
      O => ring(7)
    );
\P1_gen_ro[7].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(7),
      O => ring(8)
    );
\P1_gen_ro[8].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(8),
      O => ring(9)
    );
\P1_gen_ro[9].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(9),
      O => ring(10)
    );
\ring_inferred_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(12),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_B_18 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_B_18 : entity is "Ro_B";
end test_gen_mode_All_Ro_out_0_1_Ro_B_18;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_B_18 is
  signal ring : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute box_type : string;
  attribute box_type of \P1_gen_ro[0].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[10].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[11].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[1].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[2].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[3].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[4].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[5].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[6].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[7].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[8].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[9].gate_inst\ : label is "PRIMITIVE";
begin
  \out\(0) <= ring(12);
\P1_gen_ro[0].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\P1_gen_ro[10].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(10),
      O => ring(11)
    );
\P1_gen_ro[11].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(11),
      O => ring(12)
    );
\P1_gen_ro[1].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(1),
      O => ring(2)
    );
\P1_gen_ro[2].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(2),
      O => ring(3)
    );
\P1_gen_ro[3].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(3),
      O => ring(4)
    );
\P1_gen_ro[4].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(4),
      O => ring(5)
    );
\P1_gen_ro[5].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(5),
      O => ring(6)
    );
\P1_gen_ro[6].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(6),
      O => ring(7)
    );
\P1_gen_ro[7].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(7),
      O => ring(8)
    );
\P1_gen_ro[8].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(8),
      O => ring(9)
    );
\P1_gen_ro[9].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(9),
      O => ring(10)
    );
\ring_inferred_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(12),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_B_19 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_B_19 : entity is "Ro_B";
end test_gen_mode_All_Ro_out_0_1_Ro_B_19;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_B_19 is
  signal ring : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute box_type : string;
  attribute box_type of \P1_gen_ro[0].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[10].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[11].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[1].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[2].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[3].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[4].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[5].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[6].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[7].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[8].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[9].gate_inst\ : label is "PRIMITIVE";
begin
  \out\(0) <= ring(12);
\P1_gen_ro[0].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\P1_gen_ro[10].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(10),
      O => ring(11)
    );
\P1_gen_ro[11].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(11),
      O => ring(12)
    );
\P1_gen_ro[1].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(1),
      O => ring(2)
    );
\P1_gen_ro[2].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(2),
      O => ring(3)
    );
\P1_gen_ro[3].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(3),
      O => ring(4)
    );
\P1_gen_ro[4].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(4),
      O => ring(5)
    );
\P1_gen_ro[5].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(5),
      O => ring(6)
    );
\P1_gen_ro[6].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(6),
      O => ring(7)
    );
\P1_gen_ro[7].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(7),
      O => ring(8)
    );
\P1_gen_ro[8].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(8),
      O => ring(9)
    );
\P1_gen_ro[9].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(9),
      O => ring(10)
    );
\ring_inferred_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(12),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_B_25 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_B_25 : entity is "Ro_B";
end test_gen_mode_All_Ro_out_0_1_Ro_B_25;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_B_25 is
  signal ring : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute box_type : string;
  attribute box_type of \P1_gen_ro[0].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[10].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[11].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[1].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[2].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[3].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[4].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[5].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[6].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[7].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[8].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[9].gate_inst\ : label is "PRIMITIVE";
begin
  \out\(0) <= ring(12);
\P1_gen_ro[0].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\P1_gen_ro[10].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(10),
      O => ring(11)
    );
\P1_gen_ro[11].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(11),
      O => ring(12)
    );
\P1_gen_ro[1].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(1),
      O => ring(2)
    );
\P1_gen_ro[2].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(2),
      O => ring(3)
    );
\P1_gen_ro[3].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(3),
      O => ring(4)
    );
\P1_gen_ro[4].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(4),
      O => ring(5)
    );
\P1_gen_ro[5].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(5),
      O => ring(6)
    );
\P1_gen_ro[6].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(6),
      O => ring(7)
    );
\P1_gen_ro[7].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(7),
      O => ring(8)
    );
\P1_gen_ro[8].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(8),
      O => ring(9)
    );
\P1_gen_ro[9].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(9),
      O => ring(10)
    );
ring_inferred_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(12),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_B_26 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_B_26 : entity is "Ro_B";
end test_gen_mode_All_Ro_out_0_1_Ro_B_26;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_B_26 is
  signal ring : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute box_type : string;
  attribute box_type of \P1_gen_ro[0].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[10].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[11].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[1].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[2].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[3].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[4].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[5].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[6].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[7].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[8].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[9].gate_inst\ : label is "PRIMITIVE";
begin
  \out\(0) <= ring(12);
\P1_gen_ro[0].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\P1_gen_ro[10].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(10),
      O => ring(11)
    );
\P1_gen_ro[11].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(11),
      O => ring(12)
    );
\P1_gen_ro[1].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(1),
      O => ring(2)
    );
\P1_gen_ro[2].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(2),
      O => ring(3)
    );
\P1_gen_ro[3].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(3),
      O => ring(4)
    );
\P1_gen_ro[4].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(4),
      O => ring(5)
    );
\P1_gen_ro[5].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(5),
      O => ring(6)
    );
\P1_gen_ro[6].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(6),
      O => ring(7)
    );
\P1_gen_ro[7].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(7),
      O => ring(8)
    );
\P1_gen_ro[8].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(8),
      O => ring(9)
    );
\P1_gen_ro[9].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(9),
      O => ring(10)
    );
\ring_inferred_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(12),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_B_27 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_B_27 : entity is "Ro_B";
end test_gen_mode_All_Ro_out_0_1_Ro_B_27;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_B_27 is
  signal ring : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute box_type : string;
  attribute box_type of \P1_gen_ro[0].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[10].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[11].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[1].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[2].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[3].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[4].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[5].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[6].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[7].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[8].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[9].gate_inst\ : label is "PRIMITIVE";
begin
  \out\(0) <= ring(12);
\P1_gen_ro[0].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\P1_gen_ro[10].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(10),
      O => ring(11)
    );
\P1_gen_ro[11].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(11),
      O => ring(12)
    );
\P1_gen_ro[1].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(1),
      O => ring(2)
    );
\P1_gen_ro[2].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(2),
      O => ring(3)
    );
\P1_gen_ro[3].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(3),
      O => ring(4)
    );
\P1_gen_ro[4].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(4),
      O => ring(5)
    );
\P1_gen_ro[5].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(5),
      O => ring(6)
    );
\P1_gen_ro[6].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(6),
      O => ring(7)
    );
\P1_gen_ro[7].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(7),
      O => ring(8)
    );
\P1_gen_ro[8].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(8),
      O => ring(9)
    );
\P1_gen_ro[9].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(9),
      O => ring(10)
    );
\ring_inferred_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(12),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_B_3 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_B_3 : entity is "Ro_B";
end test_gen_mode_All_Ro_out_0_1_Ro_B_3;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_B_3 is
  signal ring : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute box_type : string;
  attribute box_type of \P1_gen_ro[0].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[10].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[11].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[1].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[2].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[3].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[4].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[5].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[6].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[7].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[8].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[9].gate_inst\ : label is "PRIMITIVE";
begin
  \out\(0) <= ring(12);
\P1_gen_ro[0].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\P1_gen_ro[10].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(10),
      O => ring(11)
    );
\P1_gen_ro[11].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(11),
      O => ring(12)
    );
\P1_gen_ro[1].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(1),
      O => ring(2)
    );
\P1_gen_ro[2].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(2),
      O => ring(3)
    );
\P1_gen_ro[3].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(3),
      O => ring(4)
    );
\P1_gen_ro[4].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(4),
      O => ring(5)
    );
\P1_gen_ro[5].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(5),
      O => ring(6)
    );
\P1_gen_ro[6].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(6),
      O => ring(7)
    );
\P1_gen_ro[7].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(7),
      O => ring(8)
    );
\P1_gen_ro[8].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(8),
      O => ring(9)
    );
\P1_gen_ro[9].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(9),
      O => ring(10)
    );
\ring_inferred_i_1__18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(12),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_B_4 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_B_4 : entity is "Ro_B";
end test_gen_mode_All_Ro_out_0_1_Ro_B_4;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_B_4 is
  signal ring : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute box_type : string;
  attribute box_type of \P1_gen_ro[0].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[10].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[11].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[1].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[2].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[3].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[4].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[5].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[6].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[7].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[8].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[9].gate_inst\ : label is "PRIMITIVE";
begin
  \out\(0) <= ring(12);
\P1_gen_ro[0].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\P1_gen_ro[10].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(10),
      O => ring(11)
    );
\P1_gen_ro[11].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(11),
      O => ring(12)
    );
\P1_gen_ro[1].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(1),
      O => ring(2)
    );
\P1_gen_ro[2].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(2),
      O => ring(3)
    );
\P1_gen_ro[3].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(3),
      O => ring(4)
    );
\P1_gen_ro[4].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(4),
      O => ring(5)
    );
\P1_gen_ro[5].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(5),
      O => ring(6)
    );
\P1_gen_ro[6].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(6),
      O => ring(7)
    );
\P1_gen_ro[7].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(7),
      O => ring(8)
    );
\P1_gen_ro[8].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(8),
      O => ring(9)
    );
\P1_gen_ro[9].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(9),
      O => ring(10)
    );
\ring_inferred_i_1__19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(12),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_B_9 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_B_9 : entity is "Ro_B";
end test_gen_mode_All_Ro_out_0_1_Ro_B_9;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_B_9 is
  signal ring : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute box_type : string;
  attribute box_type of \P1_gen_ro[0].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[10].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[11].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[1].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[2].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[3].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[4].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[5].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[6].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[7].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[8].gate_inst\ : label is "PRIMITIVE";
  attribute box_type of \P1_gen_ro[9].gate_inst\ : label is "PRIMITIVE";
begin
  \out\(0) <= ring(12);
\P1_gen_ro[0].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\P1_gen_ro[10].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(10),
      O => ring(11)
    );
\P1_gen_ro[11].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(11),
      O => ring(12)
    );
\P1_gen_ro[1].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(1),
      O => ring(2)
    );
\P1_gen_ro[2].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(2),
      O => ring(3)
    );
\P1_gen_ro[3].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(3),
      O => ring(4)
    );
\P1_gen_ro[4].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(4),
      O => ring(5)
    );
\P1_gen_ro[5].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(5),
      O => ring(6)
    );
\P1_gen_ro[6].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(6),
      O => ring(7)
    );
\P1_gen_ro[7].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(7),
      O => ring(8)
    );
\P1_gen_ro[8].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(8),
      O => ring(9)
    );
\P1_gen_ro[9].gate_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(9),
      O => ring(10)
    );
\ring_inferred_i_1__11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(12),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_path is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_path : entity is "Ro_path";
end test_gen_mode_All_Ro_out_0_1_Ro_path;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_path is
  signal ring : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute LOCK_PINS : string;
  attribute LOCK_PINS of S1 : label is "I0:A6";
  attribute box_type : string;
  attribute box_type of S1 : label is "PRIMITIVE";
begin
  \out\(0) <= ring(1);
S1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\ring_inferred_i_1__20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(1),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_path_12 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_path_12 : entity is "Ro_path";
end test_gen_mode_All_Ro_out_0_1_Ro_path_12;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_path_12 is
  signal ring : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute LOCK_PINS : string;
  attribute LOCK_PINS of S1 : label is "I0:A6";
  attribute box_type : string;
  attribute box_type of S1 : label is "PRIMITIVE";
begin
  \out\(0) <= ring(1);
S1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\ring_inferred_i_1__14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(1),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_path_13 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_path_13 : entity is "Ro_path";
end test_gen_mode_All_Ro_out_0_1_Ro_path_13;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_path_13 is
  signal ring : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute LOCK_PINS : string;
  attribute LOCK_PINS of S1 : label is "I0:A6";
  attribute box_type : string;
  attribute box_type of S1 : label is "PRIMITIVE";
begin
  \out\(0) <= ring(1);
S1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\ring_inferred_i_1__15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(1),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_path_14 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_path_14 : entity is "Ro_path";
end test_gen_mode_All_Ro_out_0_1_Ro_path_14;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_path_14 is
  signal ring : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute LOCK_PINS : string;
  attribute LOCK_PINS of S1 : label is "I0:A6";
  attribute box_type : string;
  attribute box_type of S1 : label is "PRIMITIVE";
begin
  \out\(0) <= ring(1);
S1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\ring_inferred_i_1__16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(1),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_path_20 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_path_20 : entity is "Ro_path";
end test_gen_mode_All_Ro_out_0_1_Ro_path_20;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_path_20 is
  signal ring : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute LOCK_PINS : string;
  attribute LOCK_PINS of S1 : label is "I0:A6";
  attribute box_type : string;
  attribute box_type of S1 : label is "PRIMITIVE";
begin
  \out\(0) <= ring(1);
S1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\ring_inferred_i_1__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(1),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_path_21 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_path_21 : entity is "Ro_path";
end test_gen_mode_All_Ro_out_0_1_Ro_path_21;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_path_21 is
  signal ring : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute LOCK_PINS : string;
  attribute LOCK_PINS of S1 : label is "I0:A6";
  attribute box_type : string;
  attribute box_type of S1 : label is "PRIMITIVE";
begin
  \out\(0) <= ring(1);
S1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\ring_inferred_i_1__9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(1),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_path_22 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_path_22 : entity is "Ro_path";
end test_gen_mode_All_Ro_out_0_1_Ro_path_22;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_path_22 is
  signal ring : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute LOCK_PINS : string;
  attribute LOCK_PINS of S1 : label is "I0:A6";
  attribute box_type : string;
  attribute box_type of S1 : label is "PRIMITIVE";
begin
  \out\(0) <= ring(1);
S1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\ring_inferred_i_1__10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(1),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_path_28 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_path_28 : entity is "Ro_path";
end test_gen_mode_All_Ro_out_0_1_Ro_path_28;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_path_28 is
  signal ring : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute LOCK_PINS : string;
  attribute LOCK_PINS of S1 : label is "I0:A6";
  attribute box_type : string;
  attribute box_type of S1 : label is "PRIMITIVE";
begin
  \out\(0) <= ring(1);
S1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\ring_inferred_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(1),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_path_29 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_path_29 : entity is "Ro_path";
end test_gen_mode_All_Ro_out_0_1_Ro_path_29;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_path_29 is
  signal ring : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute LOCK_PINS : string;
  attribute LOCK_PINS of S1 : label is "I0:A6";
  attribute box_type : string;
  attribute box_type of S1 : label is "PRIMITIVE";
begin
  \out\(0) <= ring(1);
S1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\ring_inferred_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(1),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_path_30 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_path_30 : entity is "Ro_path";
end test_gen_mode_All_Ro_out_0_1_Ro_path_30;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_path_30 is
  signal ring : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute LOCK_PINS : string;
  attribute LOCK_PINS of S1 : label is "I0:A6";
  attribute box_type : string;
  attribute box_type of S1 : label is "PRIMITIVE";
begin
  \out\(0) <= ring(1);
S1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\ring_inferred_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(1),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_path_5 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_path_5 : entity is "Ro_path";
end test_gen_mode_All_Ro_out_0_1_Ro_path_5;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_path_5 is
  signal ring : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute LOCK_PINS : string;
  attribute LOCK_PINS of S1 : label is "I0:A6";
  attribute box_type : string;
  attribute box_type of S1 : label is "PRIMITIVE";
begin
  \out\(0) <= ring(1);
S1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\ring_inferred_i_1__21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(1),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_path_6 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mode : in STD_LOGIC_VECTOR ( 0 to 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_path_6 : entity is "Ro_path";
end test_gen_mode_All_Ro_out_0_1_Ro_path_6;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_path_6 is
  signal ring : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ring : signal is std.standard.true;
  attribute LOCK_PINS : string;
  attribute LOCK_PINS of S1 : label is "I0:A6";
  attribute box_type : string;
  attribute box_type of S1 : label is "PRIMITIVE";
begin
  \out\(0) <= ring(1);
S1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ring(0),
      O => ring(1)
    );
\ring_inferred_i_1__22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBA"
    )
        port map (
      I0 => Reset_RO(0),
      I1 => ring(1),
      I2 => Mode(0),
      I3 => Stress(0),
      O => ring(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_bench is
  port (
    S_int : out STD_LOGIC;
    Reset_RO : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Mode : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 );
    Ro_sel : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_bench : entity is "Ro_bench";
end test_gen_mode_All_Ro_out_0_1_Ro_bench;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_bench is
  signal \R[31]_i_3_n_0\ : STD_LOGIC;
  signal S_Ro_int : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of S_Ro_int : signal is std.standard.true;
begin
\I_RO_B[0].Inst_Ro_B\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_B
     port map (
      Mode(0) => Mode(0),
      Reset_RO(0) => Reset_RO(0),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(0)
    );
\I_RO_B[1].Inst_Ro_B\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_B_3
     port map (
      Mode(0) => Mode(1),
      Reset_RO(0) => Reset_RO(1),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(1)
    );
\I_RO_B[2].Inst_Ro_B\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_B_4
     port map (
      Mode(0) => Mode(2),
      Reset_RO(0) => Reset_RO(2),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(2)
    );
\I_RO_PATH[0].Inst_Ro_path\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_path
     port map (
      Mode(0) => Mode(3),
      Reset_RO(0) => Reset_RO(3),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(3)
    );
\I_RO_PATH[1].Inst_Ro_path\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_path_5
     port map (
      Mode(0) => Mode(4),
      Reset_RO(0) => Reset_RO(4),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(4)
    );
\I_RO_PATH[2].Inst_Ro_path\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_path_6
     port map (
      Mode(0) => Mode(5),
      Reset_RO(0) => Reset_RO(5),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(5)
    );
\R[31]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => S_Ro_int(5),
      I1 => Ro_sel(0),
      I2 => S_Ro_int(4),
      I3 => Ro_sel(2),
      I4 => \R[31]_i_3_n_0\,
      O => S_int
    );
\R[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_Ro_int(3),
      I1 => S_Ro_int(2),
      I2 => Ro_sel(1),
      I3 => S_Ro_int(1),
      I4 => Ro_sel(0),
      I5 => S_Ro_int(0),
      O => \R[31]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_bench_16 is
  port (
    S_int : out STD_LOGIC;
    Reset_RO : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Mode : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 );
    Ro_sel : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_bench_16 : entity is "Ro_bench";
end test_gen_mode_All_Ro_out_0_1_Ro_bench_16;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_bench_16 is
  signal \R[31]_i_2__0_n_0\ : STD_LOGIC;
  signal S_Ro_int : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of S_Ro_int : signal is std.standard.true;
begin
\I_RO_B[0].Inst_Ro_B\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_B_17
     port map (
      Mode(0) => Mode(0),
      Reset_RO(0) => Reset_RO(0),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(0)
    );
\I_RO_B[1].Inst_Ro_B\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_B_18
     port map (
      Mode(0) => Mode(1),
      Reset_RO(0) => Reset_RO(1),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(1)
    );
\I_RO_B[2].Inst_Ro_B\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_B_19
     port map (
      Mode(0) => Mode(2),
      Reset_RO(0) => Reset_RO(2),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(2)
    );
\I_RO_PATH[0].Inst_Ro_path\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_path_20
     port map (
      Mode(0) => Mode(3),
      Reset_RO(0) => Reset_RO(3),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(3)
    );
\I_RO_PATH[1].Inst_Ro_path\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_path_21
     port map (
      Mode(0) => Mode(4),
      Reset_RO(0) => Reset_RO(4),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(4)
    );
\I_RO_PATH[2].Inst_Ro_path\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_path_22
     port map (
      Mode(0) => Mode(5),
      Reset_RO(0) => Reset_RO(5),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(5)
    );
\R[31]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => S_Ro_int(5),
      I1 => Ro_sel(0),
      I2 => S_Ro_int(4),
      I3 => Ro_sel(2),
      I4 => \R[31]_i_2__0_n_0\,
      O => S_int
    );
\R[31]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_Ro_int(3),
      I1 => S_Ro_int(2),
      I2 => Ro_sel(1),
      I3 => S_Ro_int(1),
      I4 => Ro_sel(0),
      I5 => S_Ro_int(0),
      O => \R[31]_i_2__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_bench_24 is
  port (
    S_int : out STD_LOGIC;
    Reset_RO : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Mode : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 );
    Ro_sel : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_bench_24 : entity is "Ro_bench";
end test_gen_mode_All_Ro_out_0_1_Ro_bench_24;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_bench_24 is
  signal \R[31]_i_2_n_0\ : STD_LOGIC;
  signal S_Ro_int : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of S_Ro_int : signal is std.standard.true;
begin
\I_RO_B[0].Inst_Ro_B\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_B_25
     port map (
      Mode(0) => Mode(0),
      Reset_RO(0) => Reset_RO(0),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(0)
    );
\I_RO_B[1].Inst_Ro_B\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_B_26
     port map (
      Mode(0) => Mode(1),
      Reset_RO(0) => Reset_RO(1),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(1)
    );
\I_RO_B[2].Inst_Ro_B\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_B_27
     port map (
      Mode(0) => Mode(2),
      Reset_RO(0) => Reset_RO(2),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(2)
    );
\I_RO_PATH[0].Inst_Ro_path\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_path_28
     port map (
      Mode(0) => Mode(3),
      Reset_RO(0) => Reset_RO(3),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(3)
    );
\I_RO_PATH[1].Inst_Ro_path\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_path_29
     port map (
      Mode(0) => Mode(4),
      Reset_RO(0) => Reset_RO(4),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(4)
    );
\I_RO_PATH[2].Inst_Ro_path\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_path_30
     port map (
      Mode(0) => Mode(5),
      Reset_RO(0) => Reset_RO(5),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(5)
    );
\R[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => S_Ro_int(5),
      I1 => Ro_sel(0),
      I2 => S_Ro_int(4),
      I3 => Ro_sel(2),
      I4 => \R[31]_i_2_n_0\,
      O => S_int
    );
\R[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_Ro_int(3),
      I1 => S_Ro_int(2),
      I2 => Ro_sel(1),
      I3 => S_Ro_int(1),
      I4 => Ro_sel(0),
      I5 => S_Ro_int(0),
      O => \R[31]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_bench_8 is
  port (
    S_int : out STD_LOGIC;
    Reset_RO : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Mode : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 );
    Ro_sel : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_bench_8 : entity is "Ro_bench";
end test_gen_mode_All_Ro_out_0_1_Ro_bench_8;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_bench_8 is
  signal \R[31]_i_2__1_n_0\ : STD_LOGIC;
  signal S_Ro_int : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of S_Ro_int : signal is std.standard.true;
begin
\I_RO_B[0].Inst_Ro_B\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_B_9
     port map (
      Mode(0) => Mode(0),
      Reset_RO(0) => Reset_RO(0),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(0)
    );
\I_RO_B[1].Inst_Ro_B\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_B_10
     port map (
      Mode(0) => Mode(1),
      Reset_RO(0) => Reset_RO(1),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(1)
    );
\I_RO_B[2].Inst_Ro_B\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_B_11
     port map (
      Mode(0) => Mode(2),
      Reset_RO(0) => Reset_RO(2),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(2)
    );
\I_RO_PATH[0].Inst_Ro_path\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_path_12
     port map (
      Mode(0) => Mode(3),
      Reset_RO(0) => Reset_RO(3),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(3)
    );
\I_RO_PATH[1].Inst_Ro_path\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_path_13
     port map (
      Mode(0) => Mode(4),
      Reset_RO(0) => Reset_RO(4),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(4)
    );
\I_RO_PATH[2].Inst_Ro_path\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_path_14
     port map (
      Mode(0) => Mode(5),
      Reset_RO(0) => Reset_RO(5),
      Stress(0) => Stress(0),
      \out\(0) => S_Ro_int(5)
    );
\R[31]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => S_Ro_int(5),
      I1 => Ro_sel(0),
      I2 => S_Ro_int(4),
      I3 => Ro_sel(2),
      I4 => \R[31]_i_2__1_n_0\,
      O => S_int
    );
\R[31]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => S_Ro_int(3),
      I1 => S_Ro_int(2),
      I2 => Ro_sel(1),
      I3 => S_Ro_int(1),
      I4 => Ro_sel(0),
      I5 => S_Ro_int(0),
      O => \R[31]_i_2__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_out is
  port (
    Data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CE_1Hz : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Reset_RO : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Mode : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 );
    Ro_sel : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_out : entity is "Ro_out";
end test_gen_mode_All_Ro_out_0_1_Ro_out;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_out is
  signal S_int : STD_LOGIC;
begin
I_Measure_F_Ro: entity work.test_gen_mode_All_Ro_out_0_1_Measure_F_Ro_23
     port map (
      CE_1Hz => CE_1Hz,
      Data(31 downto 0) => Data(31 downto 0),
      Reset => Reset,
      S_int => S_int
    );
I_Ro_bench: entity work.test_gen_mode_All_Ro_out_0_1_Ro_bench_24
     port map (
      Mode(5 downto 0) => Mode(5 downto 0),
      Reset_RO(5 downto 0) => Reset_RO(5 downto 0),
      Ro_sel(2 downto 0) => Ro_sel(2 downto 0),
      S_int => S_int,
      Stress(0) => Stress(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_out_0 is
  port (
    Data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Reset : in STD_LOGIC;
    CE_1Hz : in STD_LOGIC;
    Reset_RO : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Mode : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 );
    Ro_sel : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_out_0 : entity is "Ro_out";
end test_gen_mode_All_Ro_out_0_1_Ro_out_0;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_out_0 is
  signal S_int : STD_LOGIC;
begin
I_Measure_F_Ro: entity work.test_gen_mode_All_Ro_out_0_1_Measure_F_Ro_15
     port map (
      CE_1Hz => CE_1Hz,
      Data(31 downto 0) => Data(31 downto 0),
      Reset => Reset,
      S_int => S_int
    );
I_Ro_bench: entity work.test_gen_mode_All_Ro_out_0_1_Ro_bench_16
     port map (
      Mode(5 downto 0) => Mode(5 downto 0),
      Reset_RO(5 downto 0) => Reset_RO(5 downto 0),
      Ro_sel(2 downto 0) => Ro_sel(2 downto 0),
      S_int => S_int,
      Stress(0) => Stress(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_out_1 is
  port (
    Data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Reset : in STD_LOGIC;
    CE_1Hz : in STD_LOGIC;
    Reset_RO : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Mode : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 );
    Ro_sel : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_out_1 : entity is "Ro_out";
end test_gen_mode_All_Ro_out_0_1_Ro_out_1;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_out_1 is
  signal S_int : STD_LOGIC;
begin
I_Measure_F_Ro: entity work.test_gen_mode_All_Ro_out_0_1_Measure_F_Ro_7
     port map (
      CE_1Hz => CE_1Hz,
      Data(31 downto 0) => Data(31 downto 0),
      Reset => Reset,
      S_int => S_int
    );
I_Ro_bench: entity work.test_gen_mode_All_Ro_out_0_1_Ro_bench_8
     port map (
      Mode(5 downto 0) => Mode(5 downto 0),
      Reset_RO(5 downto 0) => Reset_RO(5 downto 0),
      Ro_sel(2 downto 0) => Ro_sel(2 downto 0),
      S_int => S_int,
      Stress(0) => Stress(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_Ro_out_2 is
  port (
    Reset : out STD_LOGIC;
    Data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CE_1Hz : in STD_LOGIC;
    Reset_RO : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Mode : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Stress : in STD_LOGIC_VECTOR ( 0 to 0 );
    Ro_sel : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_Ro_out_2 : entity is "Ro_out";
end test_gen_mode_All_Ro_out_0_1_Ro_out_2;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_Ro_out_2 is
  signal S_int : STD_LOGIC;
begin
I_Measure_F_Ro: entity work.test_gen_mode_All_Ro_out_0_1_Measure_F_Ro
     port map (
      CE_1Hz => CE_1Hz,
      Data(31 downto 0) => Data(31 downto 0),
      Mode(5 downto 0) => Mode(5 downto 0),
      SR(0) => Reset,
      S_int => S_int
    );
I_Ro_bench: entity work.test_gen_mode_All_Ro_out_0_1_Ro_bench
     port map (
      Mode(5 downto 0) => Mode(5 downto 0),
      Reset_RO(5 downto 0) => Reset_RO(5 downto 0),
      Ro_sel(2 downto 0) => Ro_sel(2 downto 0),
      S_int => S_int,
      Stress(0) => Stress(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1_All_Ro_out is
  port (
    Data : out STD_LOGIC_VECTOR ( 127 downto 0 );
    CE_1Hz : in STD_LOGIC;
    Reset_RO : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Mode : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Stress : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Ro_sel : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_gen_mode_All_Ro_out_0_1_All_Ro_out : entity is "All_Ro_out";
end test_gen_mode_All_Ro_out_0_1_All_Ro_out;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1_All_Ro_out is
  signal Reset : STD_LOGIC;
begin
\I_Ro_out[0].Inst_Ro_out\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_out
     port map (
      CE_1Hz => CE_1Hz,
      Data(31 downto 0) => Data(31 downto 0),
      Mode(5 downto 0) => Mode(5 downto 0),
      Reset => Reset,
      Reset_RO(5 downto 0) => Reset_RO(5 downto 0),
      Ro_sel(2 downto 0) => Ro_sel(2 downto 0),
      Stress(0) => Stress(0)
    );
\I_Ro_out[1].Inst_Ro_out\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_out_0
     port map (
      CE_1Hz => CE_1Hz,
      Data(31 downto 0) => Data(63 downto 32),
      Mode(5 downto 0) => Mode(5 downto 0),
      Reset => Reset,
      Reset_RO(5 downto 0) => Reset_RO(5 downto 0),
      Ro_sel(2 downto 0) => Ro_sel(2 downto 0),
      Stress(0) => Stress(1)
    );
\I_Ro_out[2].Inst_Ro_out\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_out_1
     port map (
      CE_1Hz => CE_1Hz,
      Data(31 downto 0) => Data(95 downto 64),
      Mode(5 downto 0) => Mode(5 downto 0),
      Reset => Reset,
      Reset_RO(5 downto 0) => Reset_RO(5 downto 0),
      Ro_sel(2 downto 0) => Ro_sel(2 downto 0),
      Stress(0) => Stress(2)
    );
\I_Ro_out[3].Inst_Ro_out\: entity work.test_gen_mode_All_Ro_out_0_1_Ro_out_2
     port map (
      CE_1Hz => CE_1Hz,
      Data(31 downto 0) => Data(127 downto 96),
      Mode(5 downto 0) => Mode(5 downto 0),
      Reset => Reset,
      Reset_RO(5 downto 0) => Reset_RO(5 downto 0),
      Ro_sel(2 downto 0) => Ro_sel(2 downto 0),
      Stress(0) => Stress(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_gen_mode_All_Ro_out_0_1 is
  port (
    CE_1Hz : in STD_LOGIC;
    Mode : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Reset_RO : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Ro_sel : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Stress : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Data : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of test_gen_mode_All_Ro_out_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of test_gen_mode_All_Ro_out_0_1 : entity is "test_gen_mode_All_Ro_out_0_1,All_Ro_out,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of test_gen_mode_All_Ro_out_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of test_gen_mode_All_Ro_out_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of test_gen_mode_All_Ro_out_0_1 : entity is "All_Ro_out,Vivado 2018.3";
end test_gen_mode_All_Ro_out_0_1;

architecture STRUCTURE of test_gen_mode_All_Ro_out_0_1 is
begin
U0: entity work.test_gen_mode_All_Ro_out_0_1_All_Ro_out
     port map (
      CE_1Hz => CE_1Hz,
      Data(127 downto 0) => Data(127 downto 0),
      Mode(5 downto 0) => Mode(5 downto 0),
      Reset_RO(5 downto 0) => Reset_RO(5 downto 0),
      Ro_sel(2 downto 0) => Ro_sel(2 downto 0),
      Stress(3 downto 0) => Stress(3 downto 0)
    );
end STRUCTURE;
