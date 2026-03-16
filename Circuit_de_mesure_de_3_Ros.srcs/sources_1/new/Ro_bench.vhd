----------------------------------------------------------------------------------
-- Company:          Université de Bordeaux
-- Engineer:         Consolé MBOUBA
-- 
-- Create Date:      11.03.2026 09:48:20
-- Design Name:      Circuit de mesure de 3 Ros
-- Module Name:      Ro_bench - Behavioral
-- Project Name:     Circuit de mesure de 3 Ros
-- Target Devices:   Zynq UltraScale+
-- Tool Versions:    Vivado 2018.3
-- Description:      Banc d'essai regroupant plusieurs structures d'oscillateurs 
--                   en anneau (RO_B et RO_path) générées de manière paramétrable.
-- 
-- Dependencies:     Gen_mode, Gen_stress
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments: Utilisation de générateurs pour l'instanciation massive
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Ro_bench is
    generic(
        Architecture_number : integer := 2; 
        RO_by_architecture  : integer := 3
        );
    Port ( Stress : in STD_LOGIC;
           Mode : in STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
           Reset_RO : in STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
           S_Ro : out STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0));
end Ro_bench;

architecture Behavioral of Ro_bench is

Component Ro_B is
    Port ( Mode : in STD_LOGIC;
           Stress : in STD_LOGIC;
           Reset_RO : in STD_LOGIC;
           S_Ro_B : out STD_LOGIC);
end Component;

Component Ro_path is
    Port ( Mode : in STD_LOGIC;
           Stress : in STD_LOGIC;
           Reset_RO : in STD_LOGIC;
           S_RO_Path : out STD_LOGIC);
end Component;

attribute DONT_TOUCH : string; 
attribute DONT_TOUCH of S_RO : signal is "true";

begin

    I_Ro_B : for I in 0 to RO_by_architecture - 1 generate
        I_Ro_B : Ro_B
            port map (
                Mode     => Mode(I),
                Stress   => Stress,
                Reset_RO => Reset_RO(I),
                S_Ro_B   => S_Ro(I)
            );
    end generate I_Ro_B;
        
    I_Ro_path : for I in 0 to RO_by_architecture - 1 generate
        I_Ro_path : Ro_path
            port map (
                Mode      => Mode(I + RO_by_architecture),
                Stress    => Stress,
                Reset_RO  => Reset_RO(I + RO_by_architecture),
                S_RO_Path => S_Ro(I + RO_by_architecture)
            );
    end generate I_Ro_path;        

end Behavioral;