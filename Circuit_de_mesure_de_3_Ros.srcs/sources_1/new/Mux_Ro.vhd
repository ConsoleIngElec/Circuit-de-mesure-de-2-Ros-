----------------------------------------------------------------------------------
-- Company: Université de Bordeaux
-- Engineer: Consolé MBOUBA
-- 
-- Create Date: 11.03.2026 09:03:38
-- Design Name: Circuit de mesure de 3 Ros 
-- Module Name: Mux_Ro - Behavioral
-- Project Name: Circuit de mesure de 3 Ros
-- Target Devices: Zynq UltraScale +
-- Tool Versions: Vivado 2018.3
-- Description : 
--    Ce module est un multiplexeur paramétrable (Mux) permettant de sélectionner 
--    un signal d'oscillation spécifique parmi l'ensemble des Ring Oscillators (RO).
--    
--    Fonctionnalités clés :
--    1. Sélection Dynamique : Utilise le signal 'Ro_sel' pour choisir quel RO 
--       doit être envoyé vers l'unité de mesure de fréquence.
--    2. Flexibilité : La taille du vecteur d'entrée s'adapte automatiquement 
--       grâce aux paramètres génériques (Architecture_number * RO_by_architecture).
--    3. Conversion de Type : Convertit le vecteur de sélection (STD_LOGIC_VECTOR) 
--       en entier pour indexer proprement le bus de signaux RO.
--
-- Dépendances : Ro_bench, Gen_mode 
-- 
-- Révision : Version 1.0 
-- Commentaires additionnels : 
--    Le signal de sortie 'S' porte l'horloge haute fréquence du RO sélectionné.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity Mux_Ro is
    generic(
        Architecture_number : integer := 2; 
        RO_by_architecture  : integer := 3
        );
    Port ( S_Ro : in STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
           Ro_sel : in STD_LOGIC_VECTOR (2 downto 0);
           S : out STD_LOGIC);
end Mux_Ro;

architecture Behavioral of Mux_Ro is

signal Sel_int: integer;

begin

--------------------------------------------------------------------------
-- LOGIQUE DE SÉLECTION
--------------------------------------------------------------------------
    
    -- 1. Conversion du vecteur binaire de sélection en valeur entière
    -- Cela permet d'utiliser Ro_sel comme un index de tableau.
    Sel_int <= to_integer(unsigned(Ro_sel));

    -- 2. Affectation de la sortie
    -- On extrait le bit correspondant au RO choisi dans le vecteur global S_Ro.
    S <= S_Ro(Sel_int);

end Behavioral;
