----------------------------------------------------------------------------------
-- Company: Université de Bordeaux
-- Engineer: Consolé MBOUBA
-- 
-- Create Date: 11.03.2026 09:03:38
-- Design Name: Circuit de mesure de 3 Ros 
-- Module Name: Mux_Ro - Behavioral
-- Project Name: Circuit de mesure de 3 Ros
-- Target Devices: Zynq UltraScale +
-- Tool Versions: Vivado 2018.3
-- Description: Multiplexeur permettant de sélectionner un signal RO 
--              parmi un vecteur concaténé basé sur le nombre d'architectures. 
-- 
-- Dependencies: Ro_bench, Gen_mode 
-- 
-- Revision: version 1.0
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity Mux_Ro is
    generic(
        Architecture_number : integer := 2; 
        RO_by_architecture  : integer := 3
        );
    Port ( S_Ro : in STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
           Ro_sel : in STD_LOGIC_VECTOR (2 downto 0);
           S : out STD_LOGIC);
end Mux_Ro;

architecture Behavioral of Mux_Ro is

signal Sel_int: integer;

begin

Sel_int <= to_integer(unsigned(Ro_sel ));
S <= S_Ro(Sel_int);

end Behavioral;
