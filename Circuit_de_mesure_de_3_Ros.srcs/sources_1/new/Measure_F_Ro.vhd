----------------------------------------------------------------------------------
-- Company: Université de Bordeaux
-- Engineer: Consolé MBOUBA
-- 
-- Create Date: 11.03.2026 09:39:10
-- Design Name: Circuit de mesure de 3 Ros
-- Module Name: Measure_F_Ro - Behavioral
-- Project Name: Circuit de mesure de 3 Ros
-- Target Devices: Zynq UltraScale+
-- Tool Versions: Vivado 2018.3.1
-- Description: Ce module mesure la fréquence d'un signal provenant d'un RO en comptant le nombre 
--              d'impulsions d'horloge entre deux fronts du signal Enable.
--              Il inclut une synchronisation pour éviter la métastabilité.
-- 
-- Dependencies: Mux_Ro, Gen_mode
-- 
-- Revision: version 1.0
-- Revision 0.01 - File Created
-- Additional Comments: L'attribut ASYNC_REG est utilisé pour placer les 
--                     bascules de synchronisation dans le même slice.
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Measure_F_Ro is
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Enable : in STD_LOGIC;
           Count : out STD_LOGIC_VECTOR (31 downto 0));
end Measure_F_Ro;

architecture Behavioral of Measure_F_Ro is

    -- Signaux pour le comptage
    signal S : integer := 0; -- Compteur interne
    signal R : integer := 0; -- Registre de stockage du résultat final

    -- Signaux de synchronisation (Chaîne de bascules)
    signal Enable_Decal_1 : STD_LOGIC;
    signal Enable_Decal_2 : STD_LOGIC;
    signal Enable_Decal_3 : STD_LOGIC;

    -- Signaux de détection de front et synchronisation finale
    signal Enable_Int      : STD_LOGIC;
    signal Enable_Int_Sync : STD_LOGIC;

    -- Attributs pour forcer le placement des registres de synchronisation (réduction MTBF)
    attribute ASYNC_REG : string;
    attribute ASYNC_REG of Enable_Decal_1 : signal is "TRUE";
    attribute ASYNC_REG of Enable_Decal_2 : signal is "TRUE";

begin

    --------------------------------------------------------------------------
    -- Synchronisation du signal Enable et décalage pour détection
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
    -- Détecteur de front descendant
    -- Génère une impulsion quand Enable passe de '1' à  '0'
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
    -- Logique du Compteur de Fréquence
    --------------------------------------------------------------------------
    process (Clk) 
    begin
        if rising_edge(Clk) then
            if Reset = '1' then    
                S <= 0;
                R <= 0;
            else
                -- Si le front est détecté, on sauvegarde S dans R et on reset S
                if Enable_Int_Sync = '1' then
                    S <= 0;
                    R <= S;
                else 
                    -- Sinon, on incrémente le compteur à chaque cycle d'horloge
                    S <= S + 1;
                end if;
            end if;          
        end if;
    end process;

    -- Conversion de l'entier de stockage en vecteur de sortie 32 bits
    Count <= std_logic_vector(to_unsigned(R, 32));    

end Behavioral;