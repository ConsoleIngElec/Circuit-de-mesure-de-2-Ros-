----------------------------------------------------------------------------------
-- Company: Université de Bordeaux
-- Engineer: Consolé MBOUBA
-- 
-- Create Date: 11.03.2026 12:02:42
-- Design Name: Circuit de mesure de 3 Ros
-- Module Name: Ro_out - Behavioral
-- Project Name: Circuit de mesure de 3 Ros
-- Target Devices: Zynq UltraScale +
-- Tool Versions: Vivado 2018.3
-- Description: Module de haut niveau (Top-level) qui regroupe un banc d'oscillateurs 
--               en anneau (RO), un multiplexeur pour la sélection, et un bloc de 
--               mesure de fréquence via un compteur.
-- 
-- Dependencies: Ro_bench, Mux_Ro, Measure_F_Ro
-- 
-- Revision: Version 1.0
-- Revision 0.01 - File Created
-- Additional Comments: Le signal CE_1Hz nous sert de Enable pour la mésure de la fréquence
-- et la sortie S_RO nous sert de Clock pour la mésure de la fréquence, car c'est la fréquence
-- du Ro qu'on mésure
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Ro_out is
    generic(
        Architecture_number : integer := 2; 
        RO_by_architecture  : integer := 3
    );
    Port ( Reset : in STD_LOGIC;
           CE_1Hz : in STD_LOGIC;
           RO_sel : in STD_LOGIC_VECTOR(2 downto 0);
           Mode : in STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
           Stress : in STD_LOGIC;
           Reset_RO : in STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
           F_Ro : out STD_LOGIC_VECTOR (31 downto 0));
end Ro_out;

architecture Behavioral of Ro_out is

Component Ro_bench is
    generic(
        Architecture_number : integer := 2; 
        RO_by_architecture  : integer := 3
        );
    Port ( Stress : in STD_LOGIC;
           Mode : in STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
           Reset_RO : in STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
           S_Ro : out STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0));
end component;

Component Mux_Ro is
    generic(
        Architecture_number : integer := 2; 
        RO_by_architecture  : integer := 3
        );
    Port ( S_Ro : in STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
           Ro_sel : in STD_LOGIC_VECTOR (2 downto 0);
           S : out STD_LOGIC);
end component;

 component Measure_F_Ro is
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Enable : in STD_LOGIC;
           Count : out STD_LOGIC_VECTOR (31 downto 0));
end component;

signal S_Ro_int : STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
signal S_int : STD_LOGIC;

begin

I_Ro_bench :Ro_bench 
generic map
(
    Architecture_number => Architecture_number, 
    RO_by_architecture => RO_by_architecture
)
port map
(
    Stress => Stress,
    Mode => Mode,
    Reset_RO => Reset_RO,
    S_Ro => S_Ro_int
);

I_Mux_Ro : Mux_Ro 
generic map
(
    Architecture_number => Architecture_number, 
    RO_by_architecture => RO_by_architecture
)
port map 
(
      S_Ro =>  S_Ro_int,
       Ro_sel => Ro_sel,
       S => S_int
);

I_Measure_F_Ro : Measure_F_Ro 
port map 
(
    Clk => S_int,
    Reset => Reset,
    Enable => CE_1Hz,
    Count  =>F_Ro
);


end Behavioral;
