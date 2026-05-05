----------------------------------------------------------------------------------
-- Company:        Université de Bordeaux
-- Engineer:       Consolé MBOUBA
-- 
-- Create Date:    27.04.2026 15:34:52
-- Design Name:    Circuit de mesure de 3 ROs
-- Module Name:    Registre - Behavioral
-- Project Name:   Circuit de mesure de 3 ROs
-- Target Devices: Zynq UltraScale+
-- Tool Versions:  Vivado 2018.3
-- Description:
--   Registre 16 bits avec Clock Enable.
--   À chaque front montant de Clk, si CE = '1', la sortie Q recopie
--   l'entrée D. Sinon, Q conserve sa valeur précédente.
--
--   L'entrée CE est connectée à CE_10Hz pour échantillonner à 10 Hz
--   les valeurs de température et de tension lues depuis le SYSMON,
--   tout en restant synchrone avec l'horloge système 100 MHz.
--
-- Dependencies: Sysmon, Data_processing
-- 
-- Revision:
--   Revision 0.01 - File Created
--
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Registre is
    Port (
        Clk : in  STD_LOGIC;
        CE  : in  STD_LOGIC;
        D   : in  STD_LOGIC_VECTOR (15 downto 0);
        Q   : out STD_LOGIC_VECTOR (15 downto 0)
    );
end Registre;

architecture Behavioral of Registre is
begin

    Reg : process(Clk)
    begin
        if rising_edge(Clk) then
            if CE = '1' then
                Q <= D;
            end if;
        end if;
    end process;

end Behavioral;