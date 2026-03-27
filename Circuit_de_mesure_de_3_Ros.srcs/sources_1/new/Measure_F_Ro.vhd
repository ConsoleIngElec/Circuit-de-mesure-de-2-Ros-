----------------------------------------------------------------------------------
-- Etablissement : Université de Bordeaux
-- Ingénieur      : Consolé MBOUBA
-- 
-- Date de création : 11.03.2026 09:39:10
-- Nom du Projet    : Circuit de mesure de 3 ROs
-- Nom du Module    : Measure_F_Ro - Behavioral
-- Cible Matérielle : Zynq UltraScale+
-- Version Vivado   : 2018.3.1
-- 
-- Description : 
--    Ce module mesure la fréquence d'un signal rapide provenant d'un Ring Oscillator (RO).
--    1. Le signal oscillant du RO est utilisé directement comme horloge (Clk).
--    2. Le signal 'Enable' (fenêtre de 1s) est synchronisé sur ce Clk.
--    3. Un compteur interne (S) s'incrémente à chaque oscillation du RO.
--    4. Sur le front de fin de fenêtre (Enable), la valeur de S est transférée 
--       dans un registre de stockage (R) puis S est remis à zéro.
--    5. Le résultat final est exporté sur 32 bits (Count).
--
-- Gestion du Reset (Reset) :
--    - Ce signal est piloté par le niveau supérieur (All_Ro_out) via Reset_int.
--    - Reset = '1' : Réinitialise les bascules de synchronisation du signal Enable,
--      met à zéro le compteur de mesure (S) et efface le registre de sortie (R).
--    - Reset = '0' : Autorise la synchronisation et le comptage des oscillations.
--
-- Dépendances : Ro_bench, Mux_Ro 
-- 
-- Révision : version 1.0
-- Commentaires : L'attribut ASYNC_REG est utilisé pour forcer le placement des 
--                bascules de synchronisation afin d'éviter la métastabilité.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Measure_F_Ro is
    Port ( 
        Clk    : in  STD_LOGIC;  -- Horloge issue du Ring Oscillator (RO)
        Reset  : in  STD_LOGIC;  -- Reset global (Actif à '1', forcé si Mode = 0)
        Enable : in  STD_LOGIC;  -- Fenêtre de mesure (généralement 1 Hz / 1 seconde)
        Count  : out STD_LOGIC_VECTOR (31 downto 0) -- Fréquence mesurée en Hz
    );
end Measure_F_Ro;

architecture Behavioral of Measure_F_Ro is

    -- ==========================================================================
    -- SIGNAUX INTERNES
    -- ==========================================================================
    
    -- Signaux pour le comptage (conversion finale en 32 bits)
    signal S : integer := 0; -- Compteur d'oscillations en temps réel
    signal R : integer := 0; -- Registre de stockage (résultat stabilisé après 1s)

    -- Chaîne de bascules pour la synchronisation du signal Enable (Domaine Clk_RO)
    -- Nécessaire car 'Enable' est asynchrone par rapport à la fréquence du RO.
    signal Enable_Decal_1 : STD_LOGIC;
    signal Enable_Decal_2 : STD_LOGIC;
    signal Enable_Decal_3 : STD_LOGIC;

    -- Signaux pour la détection du front de fin de mesure
    signal Enable_Int      : STD_LOGIC;
    signal Enable_Int_Sync : STD_LOGIC;

    -- Attributs ASYNC_REG pour réduire le risque de métastabilité (placement proche)
    attribute ASYNC_REG : string;
    attribute ASYNC_REG of Enable_Decal_1 : signal is "TRUE";
    attribute ASYNC_REG of Enable_Decal_2 : signal is "TRUE";

begin

    --------------------------------------------------------------------------
    -- 1. SYNCHRONISATION DU SIGNAL ENABLE & GESTION DU RESET
    --------------------------------------------------------------------------
    -- Le Reset réinitialise la chaîne de synchronisation. 
    -- Tant que Reset = '1', le signal Enable ne peut pas traverser les bascules.
    --------------------------------------------------------------------------
    process (Clk, Reset)
    begin
        if (Reset = '1') then
            Enable_Decal_1 <= '0';
            Enable_Decal_2 <= '0';
            Enable_Decal_3 <= '0';
        elsif rising_edge(Clk) then
            Enable_Decal_1 <= Enable;
            Enable_Decal_2 <= Enable_Decal_1;
            Enable_Decal_3 <= Enable_Decal_2;
        end if;
    end process;

    --------------------------------------------------------------------------
    -- 2. DÉTECTEUR DE FRONT DESCENDANT
    --------------------------------------------------------------------------
    -- On détecte la fin de la fenêtre de mesure (quand Enable passe de 1 à 0).
    -- Enable_Int passe à '1' pendant un cycle à la fin de la seconde.
    --------------------------------------------------------------------------
    Enable_Int <= not Enable_Decal_2 and Enable_Decal_3;
  
    process (Clk, Reset)
    begin
        if (Reset = '1') then
            Enable_Int_Sync <= '0';
        elsif rising_edge(Clk) then
            Enable_Int_Sync <= Enable_Int;
        end if;
    end process;
            
    --------------------------------------------------------------------------
    -- 3. LOGIQUE DU COMPTEUR DE FRÉQUENCE AVEC RESET PRIORITAIRE
    --------------------------------------------------------------------------
    -- S compte les fronts du RO. 
    -- Si Reset = '1' : Le compteur est bloqué à 0.
    -- Si Enable_Int_Sync = '1' : La mesure est terminée, on sauvegarde dans R.
    --------------------------------------------------------------------------
    process (Clk) 
    begin
        if rising_edge(Clk) then
            if Reset = '1' then    
                S <= 0; -- Réinitialisation du compteur de travail
                R <= 0; -- Réinitialisation de la valeur de sortie
            else
                -- Fin de la fenêtre de 1 seconde : Capture de la fréquence et Reset de S
                if Enable_Int_Sync = '1' then
                    R <= S;
                    S <= 0;
                else 
                    -- En cours de mesure : Incrémentation à chaque cycle d'horloge RO
                    S <= S + 1;
                end if;
            end if;          
        end if;
    end process;

    --------------------------------------------------------------------------
    -- 4. SORTIE DES DONNÉES
    --------------------------------------------------------------------------
    -- Conversion de l'entier R (stocké) en vecteur 32 bits pour le bus de sortie.
    Count <= std_logic_vector(to_unsigned(R, 32));    

end Behavioral;