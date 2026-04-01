library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IP_Conversion_Axi_v1_0 is
	generic (
	--------------------------------------------------------------------
    ----------------- Rien à modifier ici ------------------------------
    ----------------- A revoir pour la version 1.1----------------------
    --------------------------------------------------------------------
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 4
	);
	port (
 	---------------------------------------------------------------------
	----------------------- les entrées de mon IP -----------------------
    ---------- Dans notre cas, les entrées provenat de du Mux, -----------
    ----------------de Select_data et de Sliding_Avarage -----------------
	---------------------------------------------------------------------      
        Data          : in  std_logic_vector(7 downto 0);
        Allow         : in  std_logic;
        Temp          : in  std_logic_vector(15 downto 0); -- Temp moyenne N=10
        Voltage       : in  std_logic_vector(15 downto 0); -- Volt moyen N=10
    ---------------------------------------------------------------------
	----------------------- la sortie de mon IP -----------------------
	---------------------------------------------------------------------
        Done          : out std_logic;
        Duty_cycle    : out std_logic_vector(15 downto 0);                
	 
	-----------------------------------------------------------------------
	---------------------------- Fin --------------------------------------
	-----------------------------------------------------------------------


        s00_axi_aclk    : in  std_logic;
        s00_axi_aresetn : in  std_logic;
        s00_axi_awaddr  : in  std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
        s00_axi_awprot  : in  std_logic_vector(2 downto 0);
        s00_axi_awvalid : in  std_logic;
        s00_axi_awready : out std_logic;
        s00_axi_wdata   : in  std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        s00_axi_wstrb   : in  std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
        s00_axi_wvalid  : in  std_logic;
        s00_axi_wready  : out std_logic;
        s00_axi_bresp   : out std_logic_vector(1 downto 0);
        s00_axi_bvalid  : out std_logic;
        s00_axi_bready  : in  std_logic;
        s00_axi_araddr  : in  std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
        s00_axi_arprot  : in  std_logic_vector(2 downto 0);
        s00_axi_arvalid : in  std_logic;
        s00_axi_arready : out std_logic;
        s00_axi_rdata   : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        s00_axi_rresp   : out std_logic_vector(1 downto 0);
        s00_axi_rvalid  : out std_logic;
        s00_axi_rready  : in  std_logic
    );
end IP_Conversion_Axi_v1_0;

architecture arch_imp of IP_Conversion_Axi_v1_0 is
---------------------------------------------------------------------
    -- Déclaration du composant esclave AXI (S00_AXI)
    ---------------------------------------------------------------------
    component IP_Conversion_Axi_v1_0_S00_AXI is
        generic (
            C_S_AXI_DATA_WIDTH    : integer    := 32;
            C_S_AXI_ADDR_WIDTH    : integer    := 4
        );
        port (
            -- Connexion des signaux utilisateur au bloc esclave
            Data           : in  std_logic_vector(7 downto 0);
            Allow          : in  std_logic;
            Temp          : in  std_logic_vector(15 downto 0);
            Voltage       : in  std_logic_vector(15 downto 0);
            Done           : out std_logic;
            Duty_cycle     : out std_logic_vector(15 downto 0);

            -- Signaux du bus AXI
            S_AXI_ACLK     : in  std_logic;
            S_AXI_ARESETN  : in  std_logic;
            S_AXI_AWADDR   : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
            S_AXI_AWPROT   : in  std_logic_vector(2 downto 0);
            S_AXI_AWVALID  : in  std_logic;
            S_AXI_AWREADY  : out std_logic;
            S_AXI_WDATA    : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            S_AXI_WSTRB    : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
            S_AXI_WVALID   : in  std_logic;
            S_AXI_WREADY   : out std_logic;
            S_AXI_BRESP    : out std_logic_vector(1 downto 0);
            S_AXI_BVALID   : out std_logic;
            S_AXI_BREADY   : in  std_logic;
            S_AXI_ARADDR   : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
            S_AXI_ARPROT   : in  std_logic_vector(2 downto 0);
            S_AXI_ARVALID  : in  std_logic;
            S_AXI_ARREADY  : out std_logic;
            S_AXI_RDATA    : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            S_AXI_RRESP    : out std_logic_vector(1 downto 0);
            S_AXI_RVALID   : out std_logic;
            S_AXI_RREADY   : in  std_logic
        );
    end component IP_Conversion_Axi_v1_0_S00_AXI;

begin

    ---------------------------------------------------------------------
    -- Instanciation de l'interface esclave AXI S00
    ---------------------------------------------------------------------
    IP_Conversion_Axi_v1_0_S00_AXI_inst : IP_Conversion_Axi_v1_0_S00_AXI
        generic map (
            C_S_AXI_DATA_WIDTH    => C_S00_AXI_DATA_WIDTH,
            C_S_AXI_ADDR_WIDTH    => C_S00_AXI_ADDR_WIDTH
        )
        port map (
            -- Ports utilisateur
            Data           => Data,
            Allow          => Allow,
            Temp           => Temp,
            Voltage        => Voltage,
            Done           => Done,
            Duty_cycle     => Duty_cycle,

            -- Ports AXI
            S_AXI_ACLK     => s00_axi_aclk,
            S_AXI_ARESETN  => s00_axi_aresetn,
            S_AXI_AWADDR   => s00_axi_awaddr,
            S_AXI_AWPROT   => s00_axi_awprot,
            S_AXI_AWVALID  => s00_axi_awvalid,
            S_AXI_AWREADY  => s00_axi_awready,
            S_AXI_WDATA    => s00_axi_wdata,
            S_AXI_WSTRB    => s00_axi_wstrb,
            S_AXI_WVALID   => s00_axi_wvalid,
            S_AXI_WREADY   => s00_axi_wready,
            S_AXI_BRESP    => s00_axi_bresp,
            S_AXI_BVALID   => s00_axi_bvalid,
            S_AXI_BREADY   => s00_axi_bready,
            S_AXI_ARADDR   => s00_axi_araddr,
            S_AXI_ARPROT   => s00_axi_arprot,
            S_AXI_ARVALID  => s00_axi_arvalid,
            S_AXI_ARREADY  => s00_axi_arready,
            S_AXI_RDATA    => s00_axi_rdata,
            S_AXI_RRESP    => s00_axi_rresp,
            S_AXI_RVALID   => s00_axi_rvalid,
            S_AXI_RREADY   => s00_axi_rready
        );
        
------------------ Pas de parties à modifier ici ----------------

end arch_imp;
