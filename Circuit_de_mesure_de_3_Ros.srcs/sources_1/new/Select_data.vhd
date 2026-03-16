----------------------------------------------------------------------------------
-- Company: Université de Bordeaux
-- Engineer: Consolé MBOUBA
-- 
-- Create Date: 11.03.2026 15:21:00
-- Design Name: Circuit de mesure de 3 ROs
-- Module Name: Select_data - Behavioral
-- Project Name: Circuit de mesure de 3 ROs
-- Target Devices: Zynq UltraScale+
-- Tool Versions: Vivado 2018.3
-- Description: 
--    - Machine d'état (FSM) gérant le séquençage de l'envoi des octets vers l'interface AXI/PS.
--    - Sélectionne séquentiellement les octets via l'index J (0 à Max_Bytes-1).
--    - Génère un signal 'Allow' pour valider la donnée auprès du module de transmission.
--    - Attend l'acquittement 'Done' (front montant) du processeur avant de passer à l'octet suivant.
--    - Inclut une temporisation de sécurité (I) pour stabiliser les données du Mux.
--
--
--    Send  : Déclenchement du cycle complet de transmission.
--    Allow : Signal de contrôle (Niveau haut) indiquant une donnée valide en sortie.
--    Done  : Signal d'acquittement (Handshake) provenant du PS
-- 
-- Dependencies: IP_conversion (interface AXI), Mux_data, Select_data, Gen_mode 
-- 
-- Revision: version 1.0
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Select_data is
    generic(
        Stress_Number : integer := 4  
    );
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Done : in STD_LOGIC;
           Send : in STD_LOGIC;
           Sel : out STD_LOGIC_VECTOR (4 downto 0);
           Allow : out STD_LOGIC);
end Select_data;

architecture Behavioral of Select_data is

    --------------------------------------------------------------------------
    -- Définition des états de la FSM
    --------------------------------------------------------------------------
    type Type_Etat is (Eteint, Envoi, Attendre);
    signal Etat : Type_Etat := Eteint;

    --------------------------------------------------------------------------
    -- Registres internes
    --------------------------------------------------------------------------
    signal J : integer range 0 to 31 := 0;  -- Index des octets
    signal I : integer := 0;                -- Compteur de temporisation

    --------------------------------------------------------------------------
    -- Détection du front montant de Done
    -- Done_Precedent mémorise l'état précédent
    -- Done_Front vaut '1' pendant UN cycle lors du front montant
    --------------------------------------------------------------------------
    signal Done_Precedent : std_logic := '0';
    signal Done_Front     : std_logic;

    --------------------------------------------------------------------------
    -- Nombre total d'octets à transmettre
    -- 4 octets par RO
    --------------------------------------------------------------------------
    constant Max_Bytes : integer := (4 * Stress_Number); 

begin

    --------------------------------------------------------------------------
    -- Détection combinatoire du front montant
    --------------------------------------------------------------------------
    Done_Front <= Done and (not Done_Precedent);

    --------------------------------------------------------------------------
    -- Machine d'état séquentielle
    --------------------------------------------------------------------------
    Machine_Etat : process(Clk)
    begin
        if rising_edge(Clk) then
            
            ------------------------------------------------------------------
            -- RESET SYNCHRONE
            ------------------------------------------------------------------
            if Reset = '1' then
                Etat <= Eteint;
                J <= 0;
                I <= 0;
                Done_Precedent <= '0';

            else

                -- Mémorisation pour la détection de front
                Done_Precedent <= Done;

                case Etat is 

                    ------------------------------------------------------------------
                    -- ÉTAT 1 : Attente du déclenchement
                    ------------------------------------------------------------------
                    when Eteint => 
                        if Send = '1' then 
                            J <= 0;           -- On démarre toujours à l'index 0
                            Etat <= Envoi; 
                        end if;


                    ------------------------------------------------------------------
                    -- ÉTAT 2 : Envoi d'un nouvel octet
                    -- Allow sera actif pendant cet état (1 cycle)
                    ------------------------------------------------------------------
                    when Envoi => 
                        I <= 0;               -- Reset du compteur de délai
                        Etat <= Attendre;


                    ------------------------------------------------------------------
                    -- ÉTAT 3 : Attente de l'acquittement Done
                    ------------------------------------------------------------------
                    when Attendre => 

                        -- Temporisation de sécurité (10 cycles)
                        if I < 10 then
                            I <= I + 1; 

                        else
                            -- Si front montant sur Done
                            if J < (Max_Bytes - 1) and Done_Front = '1' then 
                                J <= J + 1;       -- Octet suivant
                                Etat <= Envoi;

                            -- Si dernier octet validé
                            elsif J = (Max_Bytes - 1) and Done_Front = '1' then
                                Etat <= Eteint;   -- Fin de séquence
                            end if;
                        end if;

                end case; 
            end if;   
        end if;
    end process;
    
    --------------------------------------------------------------------------
    -- LOGIQUE DE SORTIE
    --------------------------------------------------------------------------
-- Allow reste à '1' tant qu'on n'a pas reçu l'acquittement 'Done'
Allow <= '1' when (Etat = Envoi or Etat = Attendre) else '0';

    -- Conversion de l'index J en vecteur 5 bits
    Sel <= std_logic_vector(to_unsigned(J, 5));

end Behavioral;