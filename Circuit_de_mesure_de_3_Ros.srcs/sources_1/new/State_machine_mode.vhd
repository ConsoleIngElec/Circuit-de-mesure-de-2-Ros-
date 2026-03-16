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
        Mode_G   : in  STD_LOGIC; 
        CE_1Hz   : in  STD_LOGIC; 
        Mode     : out STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
        Reset_RO : out STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
        RO_sel   : out STD_LOGIC_VECTOR(2 downto 0); 
        Send     : out STD_LOGIC 
    );
end State_machine_mode;

architecture Behavioral of State_machine_mode is

    type type_etat is (Eteint, Envoi, Attendre);
    signal etat : type_etat := Eteint;

    signal i : integer range 0 to 49 := 0; -- Compteur de secondes
    signal k : integer := 0;               -- Index de l'oscillateur en cours
    
    constant MAX_RO : integer := (Architecture_number * RO_by_architecture) - 1;

begin

    

    Machine_etat : process(Clk)
    begin
        if rising_edge(Clk) then
            if Reset = '1' then
                etat     <= Eteint;
                i        <= 0;
                k        <= 0;
                Mode     <= (others => '0');
                Reset_RO <= (others => '0');
                Send     <= '0';
            else
                case etat is 
                    when Eteint => 
                        i <= 0;
                        k <= 0;
                        Mode <= (others => '0');
                        Reset_RO <= (others => '0'); 
                        Send <= '0';
                        if Mode_G = '1' then 
                           etat <= Envoi;
                        end if;

                    when Envoi => 
                        if CE_1Hz = '1' then
                            -- Gestion du compteur i (Cycle total de 50 secondes)
                            if i < 49 then 
                                i <= i + 1;
                            else
                                i <= 0;
                                -- Passage au RO suivant après les 50s
                                if k < MAX_RO then
                                    k <= k + 1;
                                else
                                    k <= 0;
                                    etat <= Attendre;
                                end if;
                            end if;

                            -- ACTIONS SELON LE TIMER i
                            if i >= 0 and i < 6 then
                                -- 1. Phase RESET (6s : indices 0,1,2,3,4,5)
                                Mode(k)     <= '1';
                                Reset_RO(k) <= '1';
                                Send        <= '0';
                                
                            elsif i >= 6 and i < 24 then
                                -- 2. Phase STABILISATION (18s : indices 6 à 23)
                                Mode(k)     <= '1';
                                Reset_RO(k) <= '0';
                                Send        <= '0';
                                
                            elsif i = 24 then
                                -- 3. Phase MESURE / ENVOI (La 25ème seconde : index 24)
                                Mode(k)     <= '1';
                                Reset_RO(k) <= '0';
                                Send        <= '1'; -- Déclenchement
                                
                            else
                                -- 4. Phase de PAUSE (25s : indices 25 à 49)
                                -- Isolation thermique, l'oscillateur k est coupé
                                Mode(k)     <= '0';
                                Reset_RO(k) <= '0';
                                Send        <= '0';
                            end if;
                        else
                            -- Garantit que Send ne dure qu'un cycle d'horloge Clk (Pulse)
                            Send <= '0';
                        end if;

                    when Attendre =>     
                        Mode <= (others => '0');
                        Reset_RO <= (others => '0');
                        Send     <= '0'; -- Sécurité contre les glitchs (pour éviter les glitchs)
                        
                        if Mode_G = '0' then 
                         etat <= Eteint; 
                        end if;
                        
                    when others => 
                        etat <= Eteint;
                end case;
            end if;      
        end if;
    end process;
    
    -- Le numéro de l'oscillateur k (0 à 5) est converti en vecteur 3 bits
    RO_sel <= std_logic_vector(to_unsigned(k, 3));

end Behavioral;