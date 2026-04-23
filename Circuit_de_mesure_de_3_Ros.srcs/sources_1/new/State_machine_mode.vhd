----------------------------------------------------------------------------------
-- Company: Université de Bordeaux
-- Engineer: Consolé MBOUBA
-- 
-- Create Date: 23.04.2026 12:30:10
-- Design Name: Circuit de mesure de 3 Ros
-- Module Name: State_machine_mode - Behavioral
-- Project Name: Circuit de mesure de 3 Ros
-- Target Devices: Zynq UltraScale +
-- Tool Versions: 2018.3
-- Description: 
--   Machine à états de séquençage des Ring Oscillators.
--   3 états : Eteint ? Envoi ? Attendre
--     Eteint   : attente du démarrage (MODE_G = '1')
--     Envoi    : séquençage de chaque mode k (0 à 5) :
--                  timer_sec = 0     : Reset du RO k        (1s)
--                  timer_sec = 1 à 6 : Oscillation libre    (6s)
--                  timer_sec = 7     : Mesure + Send = '1'  (1s)
--     Attendre : attente de la fin du cycle (Mode_G = '0')
-- Dependencies: Gen_1Hz, Counter_mode
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity State_machine_mode is
    generic(
        Architecture_number : integer := 2;  -- Nombre d'architectures de ROs
        RO_by_architecture  : integer := 3   -- Nombre de ROs par architecture
    );
    Port (
        Clk      : in  STD_LOGIC;
        Reset    : in  STD_LOGIC;
        CE_1Hz   : in  STD_LOGIC;             -- Base de temps depuis Gen_1Hz
        Mode_G   : in  STD_LOGIC;             -- Signal de mode depuis Counter_mode
        Ro_sel   : out STD_LOGIC_VECTOR(2 downto 0);
        Mode     : out STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
        Reset_RO : out STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
        Send     : out STD_LOGIC
    );
end State_machine_mode;
 
architecture Behavioral of State_machine_mode is
 
    type state_type is (Eteint, Envoi, Attendre);
    signal etat : state_type := Eteint;
 
    signal timer_sec : integer range 0 to 7 := 0;
    signal k         : integer range 0 to 5 := 0;
 
begin
 
    process(Clk)
    begin
        if rising_edge(Clk) then
            if Reset = '1' then
                etat      <= Eteint;
                timer_sec <= 0;
                k         <= 0;
                Mode      <= (others => '0');
                Reset_RO  <= (others => '0');
                Send      <= '0';
 
            else
                Send <= '0'; -- Valeur par défaut
 
                case etat is
 
                    -- ETEINT : attente du démarrage de la phase de mesure
                    when Eteint =>
                        Mode     <= (others => '0');
                        Reset_RO <= (others => '0');
                        if Mode_G = '1' then
                            etat <= Envoi;
                        end if;
 
                    -- ENVOI : séquençage Reset / Oscillation / Mesure pour le mode k
                    when Envoi =>
                        if CE_1Hz = '1' then
                            Mode     <= (others => '0');
                            Reset_RO <= (others => '0');
 
                            case timer_sec is
                                when 0 =>           -- Phase Reset (1s)
                                    Mode(k)     <= '1';
                                    Reset_RO(k) <= '1';
 
                                when 1 to 6 =>      -- Phase oscillation (6s)
                                    Mode(k)     <= '1';
                                    Reset_RO(k) <= '0';
 
                                when 7 =>           -- Phase mesure + send (1s)
                                    Mode(k)     <= '1';
                                    Reset_RO(k) <= '0';
                                    Send        <= '1';
 
                                when others =>
                                    null;
                            end case;
 
                            -- Progression de timer_sec et k
                            if timer_sec < 7 then
                                timer_sec <= timer_sec + 1;
                            else
                                timer_sec <= 0;
                                if k < Architecture_number * RO_by_architecture - 1 then
                                    k <= k + 1;
                                else
                                    k    <= 0;
                                    etat <= Attendre;
                                end if;
                            end if;
                        end if;
 
                    -- ATTENDRE : fin du cycle de mesure, attente de la pause thermique
                    when Attendre =>
                        Mode     <= (others => '0');
                        Reset_RO <= (others => '0');
                        if Mode_G = '0' then
                            etat <= Eteint;
                        end if;
 
                end case;
            end if;
        end if;
    end process;
 
    Ro_sel <= std_logic_vector(to_unsigned(k, 3));
 
end Behavioral;
