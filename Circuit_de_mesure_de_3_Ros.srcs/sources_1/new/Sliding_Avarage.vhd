----------------------------------------------------------------------------------
-- Company: Université de Bordeaux
-- Engineer: Consolé MBOUBA
-- 
-- Create Date: 26.03.2026 09:05:35
-- Design Name: Circuit de mesure de 3 Ros 
-- Module Name: Slidding_Avarage - Behavioral
-- Project Name: Circuit de mesure de 3 Ros 
-- Target Devices: Zynq UltraScale+
-- Tool Versions: Vivado 2018.3.1
-- Description : 
--     Ce module réalise une moyenne glissante (Sliding Average) sur 2^N points.
--     Il est conçu pour filtrer les mesures de température et de tension issues 
--     du SYSMON afin d'obtenir une BONNE précision.
--
--     Points clés :
--     - Stockage : Utilise une RAM interne (BRAM) au lieu de registres à décalage.
--     - Autonomie : Gère seul l'historique des données (plus besoin de Data_Shift).
--     - Algorithme : Somme récursive (Somme = Somme + Nouveau - Ancien).
--     - Division : Réalisée par simple décalage de bits (Shift-right) pour 
--       économiser les ressources logiques du FPGA.
-- Dependencies: Sysmon, De_Mux
-- 
-- Revision: Version 1.0
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Sliding_Average is
    generic (
        N : integer := 10;          -- Paramètre configurable 
        DATA_WIDTH : integer := 16  -- Largeur des données provenant du Sysmon (16 bits pour le SYSMON)
    );
    Port ( 
        Clk          : in  STD_LOGIC;
        Reset        : in  STD_LOGIC; 
        Enable       : in  STD_LOGIC; -- Connecté au 'drdy' du SYSMON
        Data         : in  STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0); -- Entrée brute
        Data_Average : out STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0)  -- Sortie filtrée
    );
end Sliding_Average;

architecture Behavioral of Sliding_Average is

    -- Mémoire interne (Tableau) pour stocker les échantillons (remplace le Shift Register)
    type ram_type is array (0 to (2**N)-1) of unsigned(DATA_WIDTH-1 downto 0);
    signal RAM_Storage : ram_type := (others => (others => '0'));
    
    -- Pointeur pour gérer l'emplacement de la donnée la plus ancienne
    signal Pointer : integer range 0 to (2**N)-1 := 0;
    
    -- Accumulateur : Taille augmentée de N bits pour éviter tout débordement
    signal Sum : unsigned(DATA_WIDTH + N - 1 downto 0) := (others => '0');

begin

    ------------------------------------------------------------------------------
    -- Processus de calcul de la moyenne glissante
    ------------------------------------------------------------------------------
    process(Clk)
    begin
        if rising_edge(Clk) then
            if Reset = '1' then
                Sum <= (others => '0');
                Pointer <= 0;
                RAM_Storage <= (others => (others => '0'));
                Data_Average <= (others => '0');
            
            elsif Enable = '1' then
                -- ALGORITHME OPTIMISÉ :
                -- 1. On soustrait la valeur la plus ancienne (sortie de RAM)
                -- 2. On ajoute la nouvelle valeur (Data)
                Sum <= Sum - RAM_Storage(Pointer) + unsigned(Data);
                
                -- 3. On écrase l'ancienne valeur par la nouvelle dans la RAM
                RAM_Storage(Pointer) <= unsigned(Data);
                
                -- 4. On incrémente le pointeur circulaire
                if Pointer = (2**N)-1 then
                    Pointer <= 0;
                else
                    Pointer <= Pointer + 1;
                end if;
                
                -- 5. DIVISION : On décale de N bits vers la droite
                Data_Average <= std_logic_vector(Sum(DATA_WIDTH + N - 1 downto N));
                
            end if;
        end if;
    end process;

end Behavioral;
