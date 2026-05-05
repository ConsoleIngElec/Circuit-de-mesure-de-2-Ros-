----------------------------------------------------------------------------------
-- Company: Université de Bordeaux
-- Engineer: Consolé MBOUBA
-- 
-- Create Date: 23.04.2026 11:57:37
-- Design Name: Circuit de mesure de 3 ROs
-- Module Name: Gen_Clk - Behavioral
-- Project Name: Circuit de mesure de 3 ROs
-- Target Devices: Zynq UltraScale+
-- Tool Versions: Vivado 2018.3
-- Description:
--   Générateur d'impulsions synchrones (Clock Enable) paramétrable.
--   Génère un signal 'Pulse_Out' = '1' pendant 1 cycle d'horloge à la
--   fréquence souhaitée (FREQ_Out), à partir d'une horloge d'entrée Clk
--   de fréquence FREQ_Clk.
--
--   Le module repose sur un compteur qui s'incrémente à chaque front montant
--   de Clk et qui est remis à zéro lorsqu'il atteint FREQ_Clk / FREQ_Out.
--   À cet instant, Pulse_Out est mis à '1' pendant un seul cycle d'horloge.
--
-- Dependencies: None
-- 
-- Revision:
--   Revision 0.01 - File Created
--
-- Additional Comments:
--   Les génériques FREQ_Clk et FREQ_Out permettent d'adapter le module à
--   n'importe quelle fréquence d'horloge et n'importe quelle fréquence
--   d'impulsion souhaitée. Par défaut : Clk = 100 MHz, Pulse_Out = 1 Hz.
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity Gen_Clk is
    generic(
        FREQ_Clk : integer := 100_000_000;  -- Fréquence de l'horloge d'entrée (Hz)
        FREQ_Out : integer := 1             -- Fréquence de l'impulsion souhaitée (Hz)
    );
    Port (
        Clk       : in  STD_LOGIC;
        Reset     : in  STD_LOGIC;
        Pulse_Out : out STD_LOGIC
    );
end Gen_Clk;
 
architecture Behavioral of Gen_Clk is
    constant MAX_COUNT : integer := FREQ_Clk / FREQ_Out;
    signal count : integer range 0 to MAX_COUNT := 0;
 
begin
 
    process(Clk)
    begin
        if rising_edge(Clk) then
            if Reset = '1' then
                count     <= 0;
                Pulse_Out <= '0';
            else
                if count < (MAX_COUNT - 1) then
                    count     <= count + 1;
                    Pulse_Out <= '0';
                else
                    count     <= 0;
                    Pulse_Out <= '1';
                end if;
            end if;
        end if;
    end process;
 
end Behavioral;