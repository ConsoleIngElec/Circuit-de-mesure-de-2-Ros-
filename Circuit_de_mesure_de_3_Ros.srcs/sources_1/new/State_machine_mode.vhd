----------------------------------------------------------------------------------
-- Company: Université de Bordeaux
-- Engineer: Consolé MBOUBA
-- 
-- Create Date: 09.03.2026 16:22:14
-- Design Name: Circuit de mesure de 3 ROs
-- Module Name: State_machine_mode - Behavioral
-- Project Name: Circuit de mesure de 3 ROs
-- Target Devices: Zynq ultraScale +
-- Tool Versions: Vivado 2018.3
-- Description: 
-- Cette machine d'état (FSM) séquence la mesure de multiples Ring Oscillators (RO).
-- Elle gère un cycle total de 50 secondes (index 0 à 49) par RO :
--   - 0s à 5s  : Phase de Reset (6s au total) pour initialiser l'oscillateur.
--   - 6s à 23s : Phase de Stabilisation (18s) pour laisser chauffer le RO.
--   - 24s pile  : Phase de Mesure (1s) déclenchant l'impulsion 'Send'.
--   - 25s à 49s : Phase de Pause (25s) pour le refroidissement thermique (Cool down).
-- 
-- Dependencies: Generateur_signal_1Hz, counter_mode
-- Revision: Version 1.0
-- Revision 0.01 - File Created
-- Additional Comments:
-- Le signal 'Send' est une impulsion (Pulse) d'un seul cycle d'horloge Clk.
-- L'index 'k' incrémente après chaque cycle complet de 50s.
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity State_machine_mode is
    generic(
        Architecture_number : integer := 2; 
        RO_by_architecture  : integer := 3
    );
    Port ( 
        Clk      : in  STD_LOGIC;
        Reset    : in  STD_LOGIC; 
        Mode_G   : in  STD_LOGIC; -- Contrôle l'activation globale
        CE_1Hz   : in  STD_LOGIC; 
        Mode     : out STD_LOGIC_VECTOR(5 downto 0);
        Reset_RO : out STD_LOGIC_VECTOR(5 downto 0);
        RO_sel   : out STD_LOGIC_VECTOR(2 downto 0); 
        Send     : out STD_LOGIC 
    );
end State_machine_mode;

architecture Behavioral of State_machine_mode is
    type type_etat is (IDLE, MEASURE);
    signal etat : type_etat := IDLE;

    signal i : integer range 0 to 49 := 0; -- Compteur 50s
    signal k : integer range 0 to 5  := 0; -- Index RO (0 à 5)
begin

    process(Clk)
    begin
        if rising_edge(Clk) then
            if Reset = '1' then
                etat <= IDLE;
                i <= 0; k <= 0;
                Mode <= (others => '0');
                Reset_RO <= (others => '0');
                Send <= '0';
            elsif CE_1Hz = '1' then
                -- Valeurs par défaut
                Mode <= (others => '0');
                Reset_RO <= (others => '0');
                Send <= '0';

                case etat is
                    when IDLE =>
                        if Mode_G = '1' then
                            etat <= MEASURE;
                        end if;

                    when MEASURE =>
                        -- Séquencement interne des 50s
                        if i <= 5 then         -- Phase RESET
                            Mode(k) <= '1'; Reset_RO(k) <= '1';
                        elsif i <= 24 then     -- Phase OSCILLATION
                            Mode(k) <= '1'; Reset_RO(k) <= '0';
                        elsif i = 25 then      -- Phase CAPTURE
                            Mode(k) <= '1'; Reset_RO(k) <= '0'; Send <= '1';
                        end if;

                        -- Gestion des compteurs
                        if i < 49 then
                            i <= i + 1;
                        else
                            i <= 0;
                            if k < 5 then
                                k <= k + 1;
                            else
                                k <= 0;
                                etat <= IDLE; -- Fin des 6 RO, on attend le prochain Mode_G
                            end if;
                        end if;
                end case;
            end if;
        end if;
    end process;

    RO_sel <= std_logic_vector(to_unsigned(k, 3));

end Behavioral;