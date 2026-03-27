----------------------------------------------------------------------------------
-- Company:          Université de Bordeaux
-- Engineer:         Consolé MBOUBA
-- 
-- Create Date:      11.03.2026 12:36:12
-- Design Name:      Circuit de mesure de 3 Ros 
-- Module Name:      All_Ro_out - Behavioral
-- Project Name:     Circuit de mesure de 3 Ros
-- Target Devices:   Zynq UltraScale+
-- Tool Versions:    Vivado 2018.3
--
-- Description: 
--    Ce module est un wrapper de haut niveau (Top-level agrégateur) permettant 
--    l'instanciation parallèle de plusieurs blocs "Ro_out" en fonction du 
--    paramètre Stress_Number. 
--
--    Fonctionnalités clés :
--    1. Génération structurelle : Utilise une boucle 'generate' pour créer N 
--       instances (N = Stress_Number), chacune associée à un signal de stress spécifique.
--   2. GESTION DU RESET ET SÉCURITÉ :
--      Le signal interne Reset_int pilote l'activation des mesures. 
--      Le système est maintenu en état de Reset (Repos/Arrêt) si :
--        - Aucun mode n'est actif (Vecteur Mode = 0).
--        - OU si l'Arrêt d'Urgence est pressé (Emergency_Stop = '1').
--      Dès qu'un bit de Mode est activé ET que la sécurité est relâchée, 
--      le Reset passe à '0' pour autoriser le comptage des fréquences.
--    3. Agrégation des données : Concatène les sorties de fréquence (32 bits) de 
--       chaque bloc RO dans un vecteur de sortie large unique 'Data'.
-- 
-- Dependencies:     Ro_out
-- 
-- Revision:         Version 1.0
-- Additional Comments: 
--    Reset_Int est généré par l'inverse du signal Mode. Lorsque le mode est actif 
--    (Mode /= 0), Reset passe à 0 pour autoriser les mesures de fréquence.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity All_Ro_out is
    generic(
        Architecture_number : integer := 2; 
        RO_by_architecture  : integer := 3;
        Stress_Number       : integer := 4  -- Nombre d'unités de mesure en parallèle
    );
    Port ( 
        CE_1Hz   : in  STD_LOGIC; 
        Emergency_Stop : in  STD_LOGIC; -- Arrêt d'urgence (priorité haute, actif à '1')
        Mode     : in  STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
        Reset_RO : in  STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
        Ro_sel   : in  STD_LOGIC_VECTOR(2 downto 0); -- Sélection du RO pour la mesure
        Stress   : in  STD_LOGIC_VECTOR(Stress_Number - 1 downto 0); -- Vecteur de stress
        Data     : out STD_LOGIC_VECTOR(Stress_Number * 32 - 1 downto 0) -- Vecteur de sortie concaténant toutes les fréquences (N * 32 bits)
    );
end All_Ro_out;

architecture Behavioral of All_Ro_out is

    -- Déclaration du composant unitaire de mesure
    component Ro_Out is
        generic(
            Architecture_number : integer := 2; 
            RO_by_architecture  : integer := 3
        );
        Port (
            Reset    : in  STD_LOGIC;
            CE_1Hz   : in  STD_LOGIC;
            RO_sel   : in  STD_LOGIC_VECTOR(2 downto 0);
            Mode     : in  STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
            Stress   : in  STD_LOGIC;
            Reset_RO : in  STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
            F_Ro     : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;
    
    -- Signal interne pour piloter le Reset des blocs de mesure
    signal Reset_int : STD_LOGIC;

begin

--------------------------------------------------------------------------
    -- LOGIQUE DE CONTRÔLE DU RESET ET SÉCURITÉ MATÉRIELLE
    --------------------------------------------------------------------------
    -- Le signal Reset_int est actif ('1') dans deux cas :
    -- 1. Mode = 0 : Le système est au repos (aucune architecture sélectionnée).
    -- 2. Emergency_Stop = '1' : Une interruption de sécurité est demandée.
    -- Cette logique garantit que les oscillateurs s'arrêtent immédiatement.
    Reset_int <= '1' when (Mode = (Mode'range => '0') or Emergency_Stop = '1') else '0';

    --------------------------------------------------------------------------
    -- GÉNÉRATION STRUCTURELLE DES INSTANCES
    --------------------------------------------------------------------------
    -- Création de Stress_Number instances du module de mesure Ro_Out
    I_Ro_out : for I in 0 to (Stress_Number - 1) generate
    begin
        Inst_Ro_out : Ro_Out
            generic map (
                Architecture_number => Architecture_number, 
                RO_by_architecture  => RO_by_architecture
            )
            port map (
                Reset    => Reset_int,
                CE_1Hz   => CE_1Hz,
                Ro_sel   => Ro_sel, 
                Mode     => Mode,
                Reset_Ro => Reset_Ro,
                Stress   => Stress(I),
                -- Découpage du vecteur Data en tranches de 32 bits
                -- Exemple pour I=0 : Data(31 downto 0)
                -- Exemple pour I=1 : Data(63 downto 32)
                F_Ro     => Data((32*I + 31) downto (32*I))
            );
    end generate I_Ro_out;

end Behavioral;