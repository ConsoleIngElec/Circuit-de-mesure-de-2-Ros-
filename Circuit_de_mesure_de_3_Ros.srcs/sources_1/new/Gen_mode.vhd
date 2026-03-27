----------------------------------------------------------------------------------
-- Société :         Université de Bordeaux
-- Ingénieur :       Consolé MBOUBA
-- 
-- Date de création : 19.03.2026 18:44:37
-- Nom du design :   Circuit de mesure de 3 Ros
-- Nom du module :   Gen_mode - Behavioral
-- Projet :          Circuit de mesure de 3 Ros 
-- Cible matérielle : Zynq UltraScale+
-- Outil :           Vivado 2018.3
--
-- Description : 
--    Générateur de séquençage par Machine d'État (FSM) pour la caractérisation 
--    automatisée des Ring Oscillators (RO). 
--    Ce module gère :
--    1. La base de temps : Génération d'un top synchrone de 1 Hz (pulse_1s).
--    2. Le cycle de vie d'un RO : Séquençage temporel précis (Reset -> 
--       Oscillation -> Capture -> Repos).
--    3. Le multiplexage temporel : Alternance entre la mesure de 6 ROs (50s chacun) 
--       et une phase de pause thermique/stress de 5 minutes (300s).
--
-- Dépendances :    None
-- 
-- Révision :        Version 1.1 - Optimisation du pulse 'Send' (10ns)
-- Commentaires additionnels : 
--    - k : Indice binaire du RO sélectionné (0 à 5).
--    - pulse_1s : Signal de synchronisation interne (durée : 1 cycle d'horloge).
--    - Send : Impulsion de capture calibrée à 1 cycle d'horloge (10ns @ 100MHz).
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Gen_mode is
    generic(
        FREQ_Clk            : integer := 100_000_000; -- 100 MHz
        Architecture_number : integer := 2; 
        RO_by_architecture  : integer := 3
    );
    Port ( 
        Clk      : in  STD_LOGIC;
        Reset    : in  STD_LOGIC;
        CE_1Hz   : out STD_LOGIC; 
        Mode     : out STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
        Reset_RO : out STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
        Ro_sel   : out STD_LOGIC_VECTOR(2 downto 0); 
        Send     : out STD_LOGIC  
    );
end Gen_mode;

architecture Behavioral of Gen_mode is

    -- Signaux pour la base de temps (1Hz)
    signal count_1hz : integer range 0 to FREQ_Clk := 0;
    signal pulse_1s  : std_logic := '0'; 
    signal pulse_1s_delayed : std_logic := '0'; -- Pour la détection de front

    -- Compteurs de séquençage
    signal timer_sec   : integer range 0 to 49  := 0; 
    signal timer_pause : integer range 0 to 299 := 0; 
    signal k           : integer range 0 to 5   := 0; 

    -- FSM
    type state_type is (MESURE_RO, PAUSE_THERMIQUE);
    signal current_state : state_type := MESURE_RO;

    -- Flag interne pour la capture
    signal send_request : std_logic := '0';

begin

    ------------------------------------------------------------------
    -- 1. GÉNÉRATEUR DE TOP 1 SECONDE (Base de temps)
    ------------------------------------------------------------------
    process(Clk)
    begin
        if rising_edge(Clk) then
            if Reset = '1' then
                count_1hz <= 0;
                pulse_1s  <= '0';
                pulse_1s_delayed <= '0';
            else
                -- Registre de retard pour détecter le front de pulse_1s
                pulse_1s_delayed <= pulse_1s;

                if count_1hz < (FREQ_Clk - 1) then
                    count_1hz <= count_1hz + 1;
                    pulse_1s  <= '0';
                else
                    count_1hz <= 0;
                    pulse_1s  <= '1'; 
                end if;
            end if;
        end if;
    end process;

    ------------------------------------------------------------------
    -- 2. MACHINE D'ÉTAT (FSM)
    ------------------------------------------------------------------
    process(Clk)
    begin
        if rising_edge(Clk) then
            if Reset = '1' then
                current_state <= MESURE_RO;
                timer_sec     <= 0;
                timer_pause   <= 0;
                k             <= 0;
                Mode          <= (others => '0');
                Reset_Ro      <= (others => '0');
                send_request  <= '0';
            else
                -- Valeur par défaut pour éviter les memorisations inutiles
                send_request <= '0';

                if pulse_1s = '1' then
                    case current_state is

                        when MESURE_RO =>
                            -- Initialisation des sorties pour l'état courant
                            Mode <= (others => '0');
                            Reset_Ro <= (others => '0');
                            
                            case timer_sec is
                                when 0 to 5 =>    -- Phase RESET
                                    Mode(k) <= '1';
                                    Reset_Ro(k) <= '1';
                                    
                                when 6 to 24 =>   -- Phase OSCILLATION
                                    Mode(k) <= '1'; 
                                    Reset_Ro(k) <= '0';
                                    
                                when 25 =>        -- Phase CAPTURE
                                    Mode(k) <= '1';
                                    Reset_Ro(k) <= '0';
                                    send_request <= '1'; -- Demande d'envoi
                                    
                                when others =>    -- Phase REPOS
                                    null; 
                            end case;

                            -- Logique de progression
                            if timer_sec < 49 then
                                timer_sec <= timer_sec + 1;
                            else
                                timer_sec <= 0;
                                if k < 5 then
                                    k <= k + 1;
                                else
                                    k <= 0;
                                    current_state <= PAUSE_THERMIQUE;
                                end if;
                            end if;

                        when PAUSE_THERMIQUE =>
                            Mode <= (others => '0');
                            Reset_Ro <= (others => '1'); -- Stress statique
                            
                            if timer_pause < 299 then
                                timer_pause <= timer_pause + 1;
                            else
                                timer_pause   <= 0;
                                current_state <= MESURE_RO;
                            end if;

                        when others =>
                            current_state <= MESURE_RO;
                    end case;
                end if;
            end if;
        end if;
    end process;

    ------------------------------------------------------------------
    -- 3. GÉNÉRATION DE L'IMPULSION DE SORTIE (10ns)
    ------------------------------------------------------------------
    -- [Send] Impulsion de capture calibrée sur une période d'horloge (10 ns).
    -- La FSM lève le drapeau interne 'send_request' uniquement à T=25s (MESURE_RO).
    -- Ce signal synchronisé indique à l'AXI_Lite que la mesure est stable pour le PS.
    
    Send <= '1' when (pulse_1s = '1' and timer_sec = 25 and current_state = MESURE_RO) else '0';
    
    
    --------------------------------------------------------------------------
    -- 4. AUTRES SORTIES DES DONNÉES
    --------------------------------------------------------------------------

    -- Affectation des autres sorties
    Ro_sel <= std_logic_vector(to_unsigned(k, 3));
    CE_1Hz <= pulse_1s;

end Behavioral;