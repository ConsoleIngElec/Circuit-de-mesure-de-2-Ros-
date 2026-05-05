----------------------------------------------------------------------------------
-- Company:        Université de Bordeaux
-- Engineer:       Consolé MBOUBA
-- 
-- Create Date:    04.05.2026 14:22:14
-- Design Name:    Circuit de mesure de 3 Ros
-- Module Name:    InternalHeaterGlobal - Behavioral
-- Project Name:   Circuit de mesure de 3 Ros
-- Target Devices: Zynq ultrascale +
-- Tool Versions:  Vivado 2018.3
-- Description: 
--    Module global qui instancie N_HEATERS copies du module InternalHeater
--    afin de chauffer le silicium du FPGA. Le nombre d'oscillateurs en
--    anneau actifs est fixe par le generique N_HEATERS (valeurs typiques
--    pour le projet : 1, 10, 50, 100, 500).
--
--    Toutes les sorties des InternalHeater sont aggregees par un XOR en
--    une unique sortie S_IH. Cette sortie n'a pas de sens logique mais
--    empeche la synthese de fusionner ou supprimer les instances.
-- 
-- Dependencies: 
--    InternalHeater.vhd
-- 
-- Revision:
--    Revision 0.01 - File Created
-- Additional Comments:
--   
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity InternalHeaterGlobal is
    generic (
        -- Nombre d'instances de InternalHeater (1, 10, 50, 100 ou 500)
        N_HEATERS : positive := 100
    );
    Port ( S_IH : out STD_LOGIC);
end InternalHeaterGlobal;

architecture Behavioral of InternalHeaterGlobal is

    --------------------------------------------------------------------------
    -- Declaration du composant InternalHeater (defini dans InternalHeater.vhd)
    --------------------------------------------------------------------------
    component InternalHeater is
        Port (
            S_IH : out STD_LOGIC
        );
    end component;

    --------------------------------------------------------------------------
    -- Vecteur des sorties individuelles des N InternalHeater.
    -- ro_outputs(i) = sortie du i-eme heater.
    --------------------------------------------------------------------------
    signal ro_outputs : std_logic_vector(N_HEATERS-1 downto 0);

    --------------------------------------------------------------------------
    -- Attributs de synthese :
    --   DONT_TOUCH       : empeche l'optimiseur de supprimer ou de fusionner
    --                      les sorties des heaters.
    --   KEEP_HIERARCHY   : preserve la hierarchie des instances (sinon Vivado
    --                      en mode flatten peut fusionner les N instances
    --                      identiques en une seule).
    --------------------------------------------------------------------------
    attribute DONT_TOUCH : string;
    attribute DONT_TOUCH of ro_outputs : signal is "true";

    attribute KEEP_HIERARCHY : string;

begin

    --------------------------------------------------------------------------
    -- INSTANCIATION DES N HEATERS EN PARALLELE
    --------------------------------------------------------------------------
    I_InternalHeater : for i in 0 to N_HEATERS-1 generate

        -- Empeche la fusion / suppression de chaque instance individuelle
        attribute DONT_TOUCH     of inst_InternalHeater : label is "true";
        attribute KEEP_HIERARCHY of inst_InternalHeater : label is "true";

    begin

      inst_InternalHeater : InternalHeater
            port map (
                S_IH => ro_outputs(i)
            );

    end generate I_InternalHeater;

    --------------------------------------------------------------------------
    -- AGREGATION DES SORTIES PAR XOR
    --
    -- Le XOR de toutes les sorties produit un seul bit S_IH. 
    --------------------------------------------------------------------------
    process(ro_outputs)
        variable xor_acc : std_logic;
    begin
        xor_acc := '0';
        for k in 0 to N_HEATERS-1 loop
            xor_acc := xor_acc xor ro_outputs(k);
        end loop;
        S_IH <= xor_acc;
    end process;

end Behavioral;