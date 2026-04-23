----------------------------------------------------------------------------------
-- Company: Université de Bordeaux
-- Engineer: Consolé MBOUBA
-- 
-- Create Date: 23.04.2026 11:57:37
-- Design Name: Circuit de mesure de 3 Ros 
-- Module Name: Gen_1Hz - Behavioral
-- Project Name: Circuit de mesure de 3 Ros
-- Target Devices: Zynq UltraScale+
-- Tool Versions:  Vivado 2018.3
-- Description: 
--   Génère une impulsion synchrone CE_1Hz = '1' pendant 1 cycle d'horloge
--   toutes les secondes. Ce signal CE_1Hz Sert de base de temps pour Counter_mode et
--   State_machine_mode.
--   Il va aussi servir comme élement de comptage pour la mesure des fréquences des Ros
--   Pour la mesure des fréquence, on compte le nombre de fonts montants de Ros à chaque CE_1Hz
-- Dependencies: None
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--   Le générique FREQ_Clk permet d'adapter le module à n'importe quelle
--   fréquence d'horloge. Par défaut : 100 MHz ? pulse CE_1Hz toutes les
--   100 000 000 cycles.
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity Gen_1Hz is
    generic(
        FREQ_Clk : integer := 100_000_000 
    );
    Port (
        Clk    : in  STD_LOGIC;
        Reset  : in  STD_LOGIC;
        CE_1Hz : out STD_LOGIC
    );
end GEN_1Hz;
 
architecture Behavioral of Gen_1Hz is
 
    signal count : integer range 0 to FREQ_Clk := 0;
 
begin
 
    process(Clk)
    begin
        if rising_edge(Clk) then
            if Reset = '1' then
                count  <= 0;
                CE_1Hz <= '0';
            else
                if count < (FREQ_Clk - 1) then
                    count  <= count + 1;
                    CE_1Hz <= '0';
                else
                    count  <= 0;
                    CE_1Hz <= '1'; 
                end if;
            end if;
        end if;
    end process;
 
end Behavioral;
 

