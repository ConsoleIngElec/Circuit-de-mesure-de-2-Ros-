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
        Clk    : in  STD_LOGIC;  
        Reset  : in  STD_LOGIC; 
        Enable : in  STD_LOGIC;  
        Count  : out STD_LOGIC_VECTOR (31 downto 0) 
    );
end Measure_F_Ro;

architecture Behavioral of Measure_F_Ro is

    -- ==========================================================================
    -- SIGNAUX INTERNES
    -- ==========================================================================
    
    -- Signaux pour le comptage
    signal S : integer := 0; -- Compteur d'oscillations en temps réel
    signal R : integer := 0; -- Registre de stockage (résultat stabilisé)

    -- Chaîne de bascules pour la synchronisation du signal Enable (Domaine Clk_RO)
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
    -- 1. SYNCHRONISATION DU SIGNAL ENABLE
    --------------------------------------------------------------------------
    -- Comme 'Enable' vient du domaine 100MHz et 'Clk' est le RO, 
    -- on synchronise 'Enable' pour éviter les violations de setup/hold.
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
    -- 3. LOGIQUE DU COMPTEUR DE FRÉQUENCE
    --------------------------------------------------------------------------
    -- S compte les fronts du RO. Quand la fenêtre se ferme (Enable_Int_Sync), 
    -- on transfert la valeur vers R pour la sortie et on repart à zéro.
    --------------------------------------------------------------------------
    process (Clk) 
    begin
        if rising_edge(Clk) then
            if Reset = '1' then    
                S <= 0;
                R <= 0;
            else
                -- Fin de la fenêtre de 1 seconde : Capture et Reset
                if Enable_Int_Sync = '1' then
                    R <= S;
                    S <= 0;
                else 
                    -- En cours de mesure : Incrémentation continue
                    S <= S + 1;
                end if;
            end if;          
        end if;
    end process;

    --------------------------------------------------------------------------
    -- 4. SORTIE DES DONNÉES
    --------------------------------------------------------------------------
    -- Conversion de l'entier R en vecteur 32 bits pour l'interface système.
    Count <= std_logic_vector(to_unsigned(R, 32));    

end Behavioral;