----------------------------------------------------------------------------------
-- Company: Université de Bordeux
-- Engineer: Consolé MBOUBA
-- 
-- Create Date: 23.04.2026 12:16:45
-- Design Name: Circuit de mesure de 3 Ros
-- Module Name: Counter_mode - Behavioral
-- Project Name: Circuit de mesure de 3 Ros
-- Target Devices: Zynq UltraScale+
-- Tool Versions: Vivado 2018.3
-- Description: 
--   Gère le cycle global mesure + stress/pause thermique.
--   Génère le signal MODE_G :
--     MODE_G = '1' pendant 48 secondes  (6 modes × 8s = phase de mesure + Stress)
--     MODE_G = '0' pendant 552 secondes (pause thermique)
--   Durée totale du cycle : 600 secondes = 10 minutes.

-- Dependencies:Gen_1Hz
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- Pendant la pause thermique, les Ros sont juste stressés. 
--   Les génériques NB_MODES et T_MODE_S définissent la durée de mesure.
--   Le générique T_PAUSE_S définit la durée de la pause thermique.
--   L'entrée Enable doit être connectée à CE_1Hz depuis Gen_1Hz
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity Counter_mode is
    generic(
        NB_MODES  : integer := 6;    -- Nombre de modes
        T_MODE_S  : integer := 8;    -- Durée d'un mode en secondes
        T_PAUSE_S : integer := 552   -- Durée de la pause thermique en secondes
    );
    Port (
        Clk    : in  STD_LOGIC;
        Reset  : in  STD_LOGIC;
        Enable : in  STD_LOGIC;   -- CE_1Hz depuis GEN_1Hz
        MODE_G : out STD_LOGIC    -- '1' = phase mesure, '0' = pause thermique
    );
end Counter_mode;

architecture Behavioral of Counter_mode is
 
    -- Durée totale mesure = NB_MODES * T_MODE_S = 48s
    -- Durée totale pause  = T_PAUSE_S           = 552s
    -- Durée totale cycle  = 600s
    constant T_MESURE : integer := NB_MODES * T_MODE_S;      -- 48
    constant T_CYCLE  : integer := T_MESURE + T_PAUSE_S - 1; -- 599
 
    signal timer_pause : integer range 0 to T_CYCLE := 0;
 
begin
 
    process(Clk)
    begin
        if rising_edge(Clk) then
            if Reset = '1' then
                timer_pause <= 0;
                MODE_G      <= '1'; -- Démarrage en phase de mesure
            elsif Enable = '1' then
                if timer_pause < T_CYCLE then
                    timer_pause <= timer_pause + 1;
                else
                    timer_pause <= 0;
                end if;
 
                -- MODE_G = '1' pendant les 48 premières secondes du cycle
                if timer_pause < T_MESURE then
                    MODE_G <= '1';
                else
                    MODE_G <= '0';
                end if;
            end if;
        end if;
    end process;
 
end Behavioral;

