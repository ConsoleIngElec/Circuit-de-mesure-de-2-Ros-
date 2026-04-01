library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Hardware_Watchdog is
    Generic (
        -- Paramètres en ENTIERS pour compatibilité totale avec Vivado IP Packager
        TEMP_MAX_C_INT : integer := 95;    -- Seuil critique de température (°C)
        VOLT_MAX_MV    : integer := 1150;  -- Seuil critique en milliVolts (1.15V = 1150)
        VOLT_MIN_MV    : integer := 750    -- Seuil minimal en milliVolts (0.75V = 750)
    );
    Port ( 
        Clk            : in  std_logic;
        Reset          : in  std_logic;
        
        -- Entrées brutes venant du SYSMON (Moyennées sur 16 bits)
        Temp          : in  std_logic_vector(15 downto 0); 
        Voltage       : in  std_logic_vector(15 downto 0);
        
        -- Sorties de sécurité
        Emergency_Stop : out std_logic; -- '1' = Coupe les Ring Oscillators
        Alarm_Temp     : out std_logic; -- '1' = Cause : Température (vers AXI)
        Alarm_Volt     : out std_logic  -- '1' = Cause : Tension (vers AXI)
    );
end Hardware_Watchdog;

architecture Behavioral of Hardware_Watchdog is

    -- Conversion des Generics Integer en Real pour les formules internes
    constant TEMP_MAX_C : real := real(TEMP_MAX_C_INT);
    constant VOLT_MAX_V : real := real(VOLT_MAX_MV) / 1000.0;
    constant VOLT_MIN_V : real := real(VOLT_MIN_MV) / 1000.0;

    ------------------------------------------------------------------------------
    -- CONSTANTES DE CONVERSION (Basées sur UG580 pour UltraScale+)
    ------------------------------------------------------------------------------
    -- Formule Temp : Code = ((T_celsius + 280.23) * 65536) / 509.314
    constant T_MAX_RAW : unsigned(15 downto 0) := to_unsigned(integer((TEMP_MAX_C + 280.23) * 128.67), 16);
    
    -- Formule Volt : Code = (V_volts / 3.0) * 65536
    constant V_MAX_RAW : unsigned(15 downto 0) := to_unsigned(integer((VOLT_MAX_V / 3.0) * 65536.0), 16);
    constant V_MIN_RAW : unsigned(15 downto 0) := to_unsigned(integer((VOLT_MIN_V / 3.0) * 65536.0), 16);
    
    -- Hystérésis de 10°C pour éviter les oscillations de commutation rapides
    constant T_RECOV_RAW : unsigned(15 downto 0) := to_unsigned(integer((TEMP_MAX_C - 10.0 + 280.23) * 128.67), 16);

    ------------------------------------------------------------------------------
    -- SIGNAUX INTERNES
    ------------------------------------------------------------------------------
    signal s_stop_temp : std_logic := '0';
    signal s_stop_volt : std_logic := '0';

begin

    ------------------------------------------------------------------------------
    -- [PROCESSUS 1 : SURVEILLANCE TEMPÉRATURE]
    ------------------------------------------------------------------------------
    process(Clk)
    begin
        if rising_edge(Clk) then
            if Reset = '1' then
                s_stop_temp <= '0';
            else
                if unsigned(Temp) >= T_MAX_RAW then
                    s_stop_temp <= '1'; -- Seuil critique atteint (Coupure)
                elsif unsigned(Temp) <= T_RECOV_RAW then
                    s_stop_temp <= '0'; -- Refroidissement OK (Autorisation)
                end if;
            end if;
        end if;
    end process;

    ------------------------------------------------------------------------------
    -- [PROCESSUS 2 : SURVEILLANCE TENSION]
    ------------------------------------------------------------------------------
    process(Clk)
    begin
        if rising_edge(Clk) then
            if Reset = '1' then
                s_stop_volt <= '0';
            else
                -- Détection de surtension ou de sous-tension
                if (unsigned(Voltage) >= V_MAX_RAW) or (unsigned(Voltage) <= V_MIN_RAW) then
                    s_stop_volt <= '1'; -- Hors limites (Coupure)
                else
                    s_stop_volt <= '0'; -- Tension normale
                end if;
            end if;
        end if;
    end process;

    ------------------------------------------------------------------------------
    -- [LOGIQUE DE SORTIE ET ALERTES]
    ------------------------------------------------------------------------------
    Alarm_Temp     <= s_stop_temp;
    Alarm_Volt     <= s_stop_volt;  
    
    -- L'arrêt d'urgence est déclenché si l'une des deux alarmes est active
    Emergency_Stop <= s_stop_temp or s_stop_volt;

end Behavioral;