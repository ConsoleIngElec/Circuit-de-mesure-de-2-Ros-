----------------------------------------------------------------------------------
-- Company: Université de Bordeaux
-- Engineer: Consolé MBOUBA
-- 
-- Create Date: 11.03.2026 12:36:12
-- Design Name: Circuit de mesure de 3 Ros 
-- Module Name: All_Ro_out - Behavioral
-- Project Name: Circuit de mesure de 3 Ros
-- Target Devices: Zynq UltraScale+
-- Tool Versions: Vivado 2018.3
-- Description: 
--   Ce module est un wrapper de haut niveau permettant l'instanciation parallèle 
--    de plusieurs blocs "Ro_out" en fonction du paramètre Stress_Number. 
--
--    Fonctionnalités clés :
--    1. Génération structurelle : Utilise une boucle 'generate' pour créer N 
--       instances (N = Stress_Number), chacune associée à un signal de stress spécifique.
--    2. Gestion du Reset : Le signal interne Reset_int est piloté par l'état du 
--       vecteur Mode. Si aucun mode n'est actif (Mode = 0), le système est en 
--       Reset (Repos). Dès qu'un bit de Mode est activé, le Reset est relâché 
--       pour permettre la mesure.
--    3. Agrégation des données : Concatène les sorties de fréquence (32 bits) de 
--       chaque bloc RO dans un vecteur de sortie large unique 'Data'.
-- 
-- Dependencies: Ro_out
-- 
-- Revision: Version 1.0
-- Revision 0.01 - File Created
-- Additional Comments: Reset_Int est généré par l'inverse du signal Mode.
--                      car c'est pendant que le mode est à 1, donc Reset est à 0
--                      que l'on peut faire des mésures sur le RO (le RO n'est pas stressé)
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity All_Ro_out is
    generic(
        Architecture_number : integer := 2; 
        RO_by_architecture  : integer := 3;
        Stress_Number : integer := 4  
    );
    Port ( CE_1Hz : in STD_LOGIC;
           Mode : in STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
           Reset_RO : in STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
           Stress : in STD_LOGIC_VECTOR(Stress_Number - 1 downto 0);
           Ro_sel : in STD_LOGIC_VECTOR(2 downto 0);
           Data : out STD_LOGIC_VECTOR(Stress_Number*32 - 1 downto 0)
           );
end All_Ro_out;

architecture Behavioral of All_Ro_out is

    component Ro_Out is
    generic(
        Architecture_number : integer := 2; 
        RO_by_architecture  : integer := 3
    );
    Port ( Reset : in STD_LOGIC;
           CE_1Hz : in STD_LOGIC;
           RO_sel : in STD_LOGIC_VECTOR(2 downto 0);
           Mode : in STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
           Stress : in STD_LOGIC;
           Reset_RO : in STD_LOGIC_VECTOR(Architecture_number * RO_by_architecture - 1 downto 0);
           F_Ro : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    signal Reset_int : STD_LOGIC;
begin

 
    -- Logique : Reset_int prend la valeur inverse de Mode au moment T.
    -- Puisque Mode est un vecteur, on vérifie si AU MOINS un bit est à '1'.
    -- Si Mode = "000...", Reset_int = '1' (Repos). Si Mode /= 0, Reset_int = '0' (Mesure).
    Reset_int <= '1' when (Mode = (Mode'range => '0')) else '0';

    --------------------------------------------------------------------------
    -- Génération structurelle
    --------------------------------------------------------------------------
    I_Ro_out : for I in 0 to (Stress_Number - 1) generate
        I_Ro_out : Ro_Out
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
                F_Ro     => Data((32*I + 31) downto (32*I))-- Tranches de 32 bits : (31 downto 0), puis (63 downto 32), etc.
            );
    end generate I_Ro_out;

end Behavioral;
