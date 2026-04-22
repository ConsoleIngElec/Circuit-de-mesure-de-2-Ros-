library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IP_Conversion_Axi_v1_0_S00_AXI is
    generic (
        C_S_AXI_DATA_WIDTH    : integer    := 32;
        C_S_AXI_ADDR_WIDTH    : integer    := 7;
        C_AXI_FREQ_HZ         : integer    := 100_000_000
    );
    port (
        Data          : in  std_logic_vector(127 downto 0);
        Send          : in  std_logic;
        Temp          : in  std_logic_vector(15 downto 0);
        Voltage       : in  std_logic_vector(15 downto 0);
        Data_Ready    : out std_logic;
        Duty_cycle    : out std_logic_vector(15 downto 0);

        S_AXI_ACLK    : in std_logic;
        S_AXI_ARESETN : in std_logic;
        S_AXI_AWADDR  : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_AWPROT  : in std_logic_vector(2 downto 0);
        S_AXI_AWVALID : in std_logic;
        S_AXI_AWREADY : out std_logic;
        S_AXI_WDATA   : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_WSTRB   : in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        S_AXI_WVALID  : in std_logic;
        S_AXI_WREADY  : out std_logic;
        S_AXI_BRESP   : out std_logic_vector(1 downto 0);
        S_AXI_BVALID  : out std_logic;
        S_AXI_BREADY  : in std_logic;
        S_AXI_ARADDR  : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_ARPROT  : in std_logic_vector(2 downto 0);
        S_AXI_ARVALID : in std_logic;
        S_AXI_ARREADY : out std_logic;
        S_AXI_RDATA   : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_RRESP   : out std_logic_vector(1 downto 0);
        S_AXI_RVALID  : out std_logic;
        S_AXI_RREADY  : in std_logic
    );
end IP_Conversion_Axi_v1_0_S00_AXI;

architecture arch_imp of IP_Conversion_Axi_v1_0_S00_AXI is

    signal axi_awaddr  : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    signal axi_awready : std_logic;
    signal axi_wready  : std_logic;
    signal axi_bresp   : std_logic_vector(1 downto 0);
    signal axi_bvalid  : std_logic;
    signal axi_araddr  : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    signal axi_arready : std_logic;
    signal axi_rdata   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal axi_rresp   : std_logic_vector(1 downto 0);
    signal axi_rvalid  : std_logic;

    constant ADDR_LSB          : integer := (C_S_AXI_DATA_WIDTH/32)+ 1;
    constant OPT_MEM_ADDR_BITS : integer := 4;

    signal slv_reg0    : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg1    : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg3    : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_reset : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_rden: std_logic;
    signal slv_reg_wren: std_logic;
    signal reg_data_out: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal aw_en       : std_logic;

    constant NB_CAPTURES : integer := 6;
    type t_capture_word is array (0 to 3) of std_logic_vector(31 downto 0);
    type t_capture_mem  is array (0 to NB_CAPTURES-1) of t_capture_word;
    signal capture_mem     : t_capture_mem;
    signal capture_index   : integer range 0 to NB_CAPTURES := 0;
    signal capture_done_all: std_logic := '0';
    signal Send_prev       : std_logic := '0'; -- Modifié : registre de retard pour détection front montant de Send

begin
    S_AXI_AWREADY <= axi_awready;
    S_AXI_WREADY  <= axi_wready;
    S_AXI_BRESP   <= axi_bresp;
    S_AXI_BVALID  <= axi_bvalid;
    S_AXI_ARREADY <= axi_arready;
    S_AXI_RDATA   <= axi_rdata;
    S_AXI_RRESP   <= axi_rresp;
    S_AXI_RVALID  <= axi_rvalid;

    -- Modifié : capture déclenchée sur front montant de Send (plus de timer interne)
    process (S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                capture_index     <= 0;
                capture_done_all  <= '0';
                Send_prev         <= '0';
            else
                Send_prev <= Send;

                if slv_reg_reset(0) = '1' then
                    capture_done_all <= '0';
                    capture_index    <= 0;
                elsif capture_done_all = '0' then
                    -- Modifié : détection du front montant de Send
                    if Send = '1' and Send_prev = '0' then
                        capture_mem(capture_index)(0) <= Data(31  downto 0);
                        capture_mem(capture_index)(1) <= Data(63  downto 32);
                        capture_mem(capture_index)(2) <= Data(95  downto 64);
                        capture_mem(capture_index)(3) <= Data(127 downto 96);
                        if capture_index = NB_CAPTURES - 1 then
                            capture_done_all <= '1';
                            capture_index    <= 0;
                        else
                            capture_index <= capture_index + 1;
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process;

    process (S_AXI_ACLK)
    begin
      if rising_edge(S_AXI_ACLK) then 
        if S_AXI_ARESETN = '0' then
          axi_awready <= '0';
          axi_wready  <= '0';
          aw_en <= '1';
        else
          if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' and aw_en = '1') then
            axi_awready <= '1';
            axi_wready  <= '1';
            aw_en <= '0';
          elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then
            aw_en <= '1';
            axi_awready <= '0';
            axi_wready  <= '0';
          else
            axi_awready <= '0';
            axi_wready  <= '0';
          end if;
        end if;
      end if;
    end process;

    process (S_AXI_ACLK)
    begin
      if rising_edge(S_AXI_ACLK) then 
        if S_AXI_ARESETN = '0' then
          axi_awaddr <= (others => '0');
        else
          if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' and aw_en = '1') then
            axi_awaddr <= S_AXI_AWADDR;
          end if;
        end if;
      end if;                    
    end process; 

    process (S_AXI_ACLK)
    begin
      if rising_edge(S_AXI_ACLK) then 
        if S_AXI_ARESETN = '0' then
          axi_bvalid  <= '0';
          axi_bresp   <= "00";
        else
          if (axi_awready = '1' and S_AXI_AWVALID = '1' and axi_wready = '1' and S_AXI_WVALID = '1' and axi_bvalid = '0') then
            axi_bvalid <= '1';
            axi_bresp   <= "00"; 
          elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then
            axi_bvalid <= '0';
          end if;
        end if;
      end if;                    
    end process; 

    slv_reg_wren <= axi_wready and S_AXI_WVALID and axi_awready and S_AXI_AWVALID;

    process (S_AXI_ACLK)
    variable loc_addr : std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
    begin
      if rising_edge(S_AXI_ACLK) then
        if S_AXI_ARESETN = '0' then
          slv_reg0      <= (others => '0');
          slv_reg1      <= (others => '0');
          slv_reg3      <= (others => '0');
          slv_reg_reset <= (others => '0');
        else
          loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
          if (slv_reg_wren = '1') then
            case loc_addr is
              when b"11010" =>
                for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
                  if ( S_AXI_WSTRB(byte_index) = '1' ) then
                    slv_reg3(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
                  end if;
                end loop;
              when b"11011" =>
                for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
                  if ( S_AXI_WSTRB(byte_index) = '1' ) then
                    slv_reg_reset(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
                  end if;
                end loop;
              when others => null;
            end case;
          else
            slv_reg_reset <= (others => '0');
          end if;
        end if;
      end if;
    end process;

    process (S_AXI_ACLK)
    begin
      if rising_edge(S_AXI_ACLK) then 
        if S_AXI_ARESETN = '0' then
          axi_arready <= '0';
          axi_araddr  <= (others => '1');
        else
          if (axi_arready = '0' and S_AXI_ARVALID = '1') then
            axi_arready <= '1';
            axi_araddr  <= S_AXI_ARADDR;           
          else
            axi_arready <= '0';
          end if;
        end if;
      end if;                    
    end process; 

    process (S_AXI_ACLK)
    begin
      if rising_edge(S_AXI_ACLK) then
        if S_AXI_ARESETN = '0' then
          axi_rvalid <= '0';
          axi_rresp   <= "00";
        else
          if (axi_arready = '1' and S_AXI_ARVALID = '1' and axi_rvalid = '0') then
            axi_rvalid <= '1';
            axi_rresp   <= "00"; 
          elsif (axi_rvalid = '1' and S_AXI_RREADY = '1') then
            axi_rvalid <= '0';
          end if;            
        end if;
      end if;
    end process;

    slv_reg_rden <= axi_arready and S_AXI_ARVALID and (not axi_rvalid);

    process (slv_reg3, axi_araddr, S_AXI_ARESETN, slv_reg_rden, Data, Send, Temp, Voltage, capture_mem, capture_done_all)
    variable loc_addr : std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
    variable reg_num  : integer range 0 to 31;
    begin
        loc_addr := axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
        reg_num  := to_integer(unsigned(loc_addr));
        reg_data_out <= (others => '0');
        if reg_num >= 0 and reg_num <= 23 then
            reg_data_out <= capture_mem(reg_num / 4)(reg_num mod 4);
        elsif reg_num = 24 then
            reg_data_out    <= (others => '0');
            reg_data_out(0) <= capture_done_all;
        elsif reg_num = 25 then
            reg_data_out(15 downto 0)  <= Temp;
            reg_data_out(31 downto 16) <= Voltage;
        elsif reg_num = 26 then
            reg_data_out <= slv_reg3;
        end if;
    end process;

    process( S_AXI_ACLK ) is
    begin
      if (rising_edge (S_AXI_ACLK)) then
        if ( S_AXI_ARESETN = '0' ) then
          axi_rdata  <= (others => '0');
        else
          if (slv_reg_rden = '1') then
              axi_rdata <= reg_data_out;     
          end if;   
        end if;
      end if;
    end process;

    Data_Ready <= capture_done_all;
    Duty_cycle <= slv_reg3(15 downto 0);

end arch_imp;