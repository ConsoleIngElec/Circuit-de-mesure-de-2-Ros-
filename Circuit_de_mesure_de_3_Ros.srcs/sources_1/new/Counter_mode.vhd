----------------------------------------------------------------------------------
-- Company: Université de Bordeaux
-- Engineer: Consolé MBOUBA
-- 
-- Create Date: 09.03.2026 15:09:14
-- Design Name: Circuit de mesure de 3 ROs
-- Module Name: Counter_mode - Behavioral
-- Project Name: Circuit de mesure de 3 ROs
-- Target Devices: Zynq UltraScale +
-- Tool Versions: Vivado 2018.3
-- Description: Ce module génère un signal mode qui est 1 pendant 5 minutes avec 26s 
-- d'écart entre l'envoi du mode précedent et l'arrivé du mode suivant
-- et à 0 pendant 5 minutes permettant à tous les ROs de ne pas être stressé (aucun RO n'est stressé 
-- pendant 24s). Cela a été calculé en prenant en compte:
-- --Les 24 Ros (4 stress * 3 ROs/architecture * 2 Architechtures)
-- -- Mode R0: 0.3%; Mode Reset: 0.1%; Mode Stress: 99.6%;
-- Dependencies: Generateur_signal_1Hz
-- 
-- Revision: Version 1.0
-- Revision 0.01 - File Created
-- Additional Comments:
-- La sortie Mode_G sera à '1' pendant 300s dans cas et à '0' aussi pendant 300s
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Counter_mode is
    generic (
        RISING_EDGE_DURATION : integer := 300; -- Durée à laquelle notre Mode_G='1'
        TOTAL_DURATION       : integer := 600  -- Période totale
    );
    Port ( 
        Clk    : in  STD_LOGIC;
        Reset  : in  STD_LOGIC;
        Enable : in  STD_LOGIC; 
        Mode_G : out STD_LOGIC
    );
end Counter_mode;

architecture Behavioral of Counter_mode is
    -- Plage du compteur de 0 à 599 pour une période de 600
    signal s : integer range 0 to TOTAL_DURATION - 1 := 0;

begin

    process (Clk)
    begin
        if rising_edge(Clk) then
            if Reset = '1' then
                s <= 0;
                Mode_G <= '0';
            elsif Enable = '1' then
                
                -- 1. Gestion du compteur circulaire
                if s < (TOTAL_DURATION - 1) then
                    s <= s + 1;
                else
                    s <= 0;
                end if;

                -- 2. Logique de sortie synchrone
                -- Pour 300 cycles : s va de 0 à 299. 
                if s < RISING_EDGE_DURATION then
                    Mode_G <= '1';
                else
                    Mode_G <= '0';
                end if;
                
            end if;
        end if;
    end process;

end Behavioral;