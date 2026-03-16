----------------------------------------------------------------------------------
-- Company: Université de Bordeaux
-- Engineer: Consolé MBOUBA
-- 
-- Create Date: 10.03.2026 12:48:01
-- Design Name: Circuit de mesure de 3 ROs
-- Module Name: Ro_path - Behavioral
-- Project Name: Circuit de mesure de 3 ROs
-- Target Devices: Zynq UltraScale+
-- Tool Versions: Vivado 2018.3
-- Description: Ce module implémente un chemin d'oscillateur en anneau long path .
-- 
-- Dependencies: Gen_mode
-- 
-- Revision: version 1.O
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Nécessaire pour instancier les primitives LUT1 de Xilinx
library UNISIM;
use UNISIM.VComponents.all;

entity Ro_path is
    Port ( Mode : in STD_LOGIC;
           Stress : in STD_LOGIC;
           Reset_RO : in STD_LOGIC;
           S_RO_Path : out STD_LOGIC);
end Ro_path;

architecture Behavioral of Ro_path is

 signal ring : std_logic_vector(1 downto 0);

    attribute DONT_TOUCH : string; 
    attribute DONT_TOUCH of ring : signal is "true";
    attribute ALLOW_COMBINATORIAL_LOOPS : string;
    attribute ALLOW_COMBINATORIAL_LOOPS of ring : signal is "TRUE";
    
    attribute lock_pins : string;  
    attribute lock_pins of S1 : label is "I0:A6";

    
    
    component LUT1
        generic (INIT : bit_vector (1 downto 0) := b"00"); 
        port ( 
            I0 : in std_logic; 
            O : out std_logic 
            ); 
    end component; 

begin

        S1 : LUT1 generic map(
                INIT => b"10" )
                port map (
                I0 => ring(0),
                O => ring(1));


        ring(0) <= Reset_RO or ( (not Reset_RO) and ( (Mode and (not ring(1))) or ((not Mode) and Stress) ) );
        S_RO_Path <= ring(1);
        
end Behavioral;
