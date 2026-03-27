----------------------------------------------------------------------------------
-- Company:          Université de Bordeaux
-- Engineer:         Consolé MBOUBA
-- 
-- Create Date:      11.03.2026 15:08:09 
-- Design Name:      Circuit de mesure de 3 ROs
-- Module Name:      Mux_data - Behavioral
-- Project Name:     Circuit de mesure de 3 ROs
-- Target Devices:   Zynq UltraScale+
-- Tool Versions:    Vivado 2018.3
--
-- Description:      
--    Ce module multiplexeur permet d'extraire un octet spécifique (8 bits) 
--    à partir de différents flux de données de mesure.
--    
--    Fonctionnement :
--    1. Reçoit le vecteur concaténé des ROs (ex: 4 stress * 32 bits = 128 bits).
--    2. Reçoit en surplus les mesures filtrées de Température (Temp2) et Tension (Voltage2).
--    3. Utilise le signal 'Sel' (5 bits) comme index d'octet pour sélectionner :
--       - Index 0 à 15  : Les 16 octets issus des ROs (Data_in).
--       - Index 16 à 17 : Les 2 octets de la Température filtrée (Temp2).
--       - Index 18 à 19 : Les 2 octets de la Tension filtrée (Voltage2).
--    4. Extrait la tranche de 8 bits correspondante vers l'interface de sortie.
--
-- Dependencies:     All_Ro_out, Select_data, Temp_Voltage_Avarage
-- 
-- Revision:         Version 1.1 - Ajout des entrées de surplus Temp2 et Voltage2 (Révisé le 26.03.2026)
-- Additional Comments: 
--    L'indexation est purement combinatoire pour minimiser la latence 
--    avant l'envoi vers le bus AXI.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Mux_data is
    generic(
        Stress_Number : integer := 4  -- 4 instances * 32 bits = 128 bits (16 octets)
    );
    Port ( 
        -- Entrée principale (Fréquences des ROs)
        Data_in  : in  STD_LOGIC_VECTOR (Stress_Number*32-1 downto 0);
        
        -- Entrées de surplus (Capteurs environnementaux)
        Temp2    : in  STD_LOGIC_VECTOR (15 downto 0);
        Voltage2 : in  STD_LOGIC_VECTOR (15 downto 0);
        
        -- Signaux de contrôle et sortie
        Sel      : in  STD_LOGIC_VECTOR (4 downto 0); -- Index de l'octet (0 à 31)
        Data_out : out STD_LOGIC_VECTOR (7 downto 0)  -- Octet sélectionné
    );
end Mux_data;

architecture Behavioral of Mux_data is
begin

    --------------------------------------------------------------------------
    -- Processus combinatoire de sélection d'octet
    --------------------------------------------------------------------------
    process(Data_in, Temp2, Voltage2, Sel)
        variable Index : integer;
    begin
        -- Conversion du vecteur de sélection en entier pour l'indexation
        Index := to_integer(unsigned(Sel));

        -- Logique d'aiguillage selon l'index sélectionné
        if Index >= 0 and Index < (Stress_Number * 4) then
            -- Zone 1 : Extraction depuis les données ROs (Index 0 à 15)
            Data_Out <= Data_In((Index * 8 + 7) downto (Index * 8));

        elsif Index = 16 then
            -- Zone 2 : Température stable - Octet de poids faible (LSB)
            Data_Out <= Temp2(7 downto 0);
            
        elsif Index = 17 then
            -- Zone 2 : Température stable - Octet de poids fort (MSB)
            Data_Out <= Temp2(15 downto 8);

        elsif Index = 18 then
            -- Zone 3 : Tension stable - Octet de poids faible (LSB)
            Data_Out <= Voltage2(7 downto 0);
            
        elsif Index = 19 then
            -- Zone 3 : Tension stable - Octet de poids fort (MSB)
            Data_Out <= Voltage2(15 downto 8);

        else
            -- Zone 4 : Sécurité pour les index non utilisés (20 à 31)
            Data_Out <= (others => '0');
        end if;
        
    end process;
    
end Behavioral;