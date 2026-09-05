library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity plic_axil_wrapper is
    Generic (
        -- AXI4-Lite Generics
        C_S_AXI_DATA_WIDTH : integer := 32;
        C_S_AXI_ADDR_WIDTH : integer := 4;  -- 4 bits allows up to 16 bytes (4 registers)
        
        -- PLIC Generics
        N_INTERRUPTS       : integer := 8   -- Note: Max 32 for a 32-bit AXI data bus
    );
    Port (
        -- PLIC External Interface
        intr_pins          : in  std_logic_vector(N_INTERRUPTS - 1 downto 0);
        ext_intr           : out std_logic;

        -- AXI4-Lite Slave Interface
        S_AXI_ACLK         : in  std_logic;
        S_AXI_ARESETN      : in  std_logic;
        
        S_AXI_AWADDR       : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_AWPROT       : in  std_logic_vector(2 downto 0);
        S_AXI_AWVALID      : in  std_logic;
        S_AXI_AWREADY      : out std_logic;
        
        S_AXI_WDATA        : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_WSTRB        : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        S_AXI_WVALID       : in  std_logic;
        S_AXI_WREADY       : out std_logic;
        
        S_AXI_BRESP        : out std_logic_vector(1 downto 0);
        S_AXI_BVALID       : out std_logic;
        S_AXI_BREADY       : in  std_logic;
        
        S_AXI_ARADDR       : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_ARPROT       : in  std_logic_vector(2 downto 0);
        S_AXI_ARVALID      : in  std_logic;
        S_AXI_ARREADY      : out std_logic;
        
        S_AXI_RDATA        : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_RRESP        : out std_logic_vector(1 downto 0);
        S_AXI_RVALID       : out std_logic;
        S_AXI_RREADY       : in  std_logic
    );
end plic_axil_wrapper;

architecture Behavioral of plic_axil_wrapper is

    -- PLIC Component Declaration
    component plic is
        Generic (
            N_INTERRUPTS : integer := 8
        );
        Port ( 
            clk         : in std_logic;
            reset       : in std_logic;
            intr_actv   : in std_logic_vector(N_INTERRUPTS - 1 downto 0);
            intr_pins   : in std_logic_vector(N_INTERRUPTS - 1 downto 0);
            claim_mask  : in std_logic_vector(N_INTERRUPTS - 1 downto 0);
            pending_out : out std_logic_vector(N_INTERRUPTS - 1 downto 0);
            ext_intr    : out std_logic
        );
    end component;

    -- AXI4-Lite Internal Signals
    signal axi_awready  : std_logic;
    signal axi_wready   : std_logic;
    signal axi_bresp    : std_logic_vector(1 downto 0);
    signal axi_bvalid   : std_logic;
    signal axi_arready  : std_logic;
    signal axi_rdata    : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal axi_rresp    : std_logic_vector(1 downto 0);
    signal axi_rvalid   : std_logic;

    -- PLIC Internal Mapping Signals
    signal plic_reset      : std_logic;
    signal reg_intr_actv   : std_logic_vector(N_INTERRUPTS - 1 downto 0) := (others => '0');
    signal pulse_claim     : std_logic_vector(N_INTERRUPTS - 1 downto 0) := (others => '0');
    signal sig_pending_out : std_logic_vector(N_INTERRUPTS - 1 downto 0);

    -- Helper Signals for AXI Logic
    signal slv_reg_wren : std_logic;
    signal slv_reg_rden : std_logic;
    signal loc_waddr    : std_logic_vector(1 downto 0);
    signal loc_raddr    : std_logic_vector(1 downto 0);

begin

    -- I/O Connections assignments
    S_AXI_AWREADY <= axi_awready;
    S_AXI_WREADY  <= axi_wready;
    S_AXI_BRESP   <= axi_bresp;
    S_AXI_BVALID  <= axi_bvalid;
    S_AXI_ARREADY <= axi_arready;
    S_AXI_RDATA   <= axi_rdata;
    S_AXI_RRESP   <= axi_rresp;
    S_AXI_RVALID  <= axi_rvalid;

    -- AXI reset is active low; PLIC reset is active high
    plic_reset <= not S_AXI_ARESETN;

    -- PLIC Instantiation
    U_PLIC: plic
        generic map (
            N_INTERRUPTS => N_INTERRUPTS
        )
        port map (
            clk         => S_AXI_ACLK,
            reset       => plic_reset,
            intr_actv   => reg_intr_actv,
            intr_pins   => intr_pins,
            claim_mask  => pulse_claim,
            pending_out => sig_pending_out,
            ext_intr    => ext_intr
        );

    -- AXI4-Lite Write Handshake logic
    process (S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then 
            if S_AXI_ARESETN = '0' then
                axi_awready <= '0';
                axi_wready  <= '0';
                axi_bvalid  <= '0';
            else
                -- AWREADY
                if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1') then
                    axi_awready <= '1';
                else
                    axi_awready <= '0';
                end if;
                
                -- WREADY
                if (axi_wready = '0' and S_AXI_WVALID = '1' and S_AXI_AWVALID = '1') then
                    axi_wready <= '1';
                else
                    axi_wready <= '0';
                end if;

                -- BVALID (Write Response)
                if (axi_awready = '1' and S_AXI_AWVALID = '1' and axi_wready = '1' and S_AXI_WVALID = '1' and axi_bvalid = '0') then
                    axi_bvalid <= '1';
                    axi_bresp  <= "00"; -- 'OKAY' response 
                elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then
                    axi_bvalid <= '0';
                end if;
            end if;
        end if;
    end process;

    -- Register Write Logic
    slv_reg_wren <= axi_wready and S_AXI_WVALID and axi_awready and S_AXI_AWVALID;
    loc_waddr <= S_AXI_AWADDR(3 downto 2); -- Extract word address

    process (S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then 
            if S_AXI_ARESETN = '0' then
                reg_intr_actv <= (others => '0');
                pulse_claim   <= (others => '0');
            else
                -- claim_mask defaults to 0 to create a 1-clock-cycle pulse when written
                pulse_claim <= (others => '0');

                if (slv_reg_wren = '1') then
                    case loc_waddr is
                        when b"00" => -- Offset 0x00: intr_actv (R/W)
                            reg_intr_actv <= S_AXI_WDATA(N_INTERRUPTS - 1 downto 0);
                        when b"10" => -- Offset 0x08: claim_mask (Pulse on write)
                            pulse_claim   <= S_AXI_WDATA(N_INTERRUPTS - 1 downto 0);
                        when others =>
                            null;
                    end case;
                end if;
            end if;
        end if;
    end process;

    -- AXI4-Lite Read Handshake logic
    process (S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then 
            if S_AXI_ARESETN = '0' then
                axi_arready <= '0';
                axi_rvalid  <= '0';
            else
                -- ARREADY
                if (axi_arready = '0' and S_AXI_ARVALID = '1') then
                    axi_arready <= '1';
                else
                    axi_arready <= '0';
                end if;
                
                -- RVALID
                if (axi_arready = '1' and S_AXI_ARVALID = '1' and axi_rvalid = '0') then
                    axi_rvalid <= '1';
                    axi_rresp  <= "00"; -- 'OKAY' response
                elsif (axi_rvalid = '1' and S_AXI_RREADY = '1') then
                    axi_rvalid <= '0';
                end if;
            end if;
        end if;
    end process;

    -- Register Read Logic
    slv_reg_rden <= axi_arready and S_AXI_ARVALID and (not axi_rvalid);
    loc_raddr <= S_AXI_ARADDR(3 downto 2); -- Extract word address

    process (S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                axi_rdata <= (others => '0');
            else
                if (slv_reg_rden = '1') then
                    axi_rdata <= (others => '0'); -- Default missing bits to zero
                    case loc_raddr is
                        when b"00" => -- Offset 0x00: intr_actv
                            axi_rdata(N_INTERRUPTS - 1 downto 0) <= reg_intr_actv;
                        when b"01" => -- Offset 0x04: pending_out (Read Only)
                            axi_rdata(N_INTERRUPTS - 1 downto 0) <= sig_pending_out;
                        -- 0x08 is write-only in this context, reads back as 0.
                        when others =>
                            axi_rdata <= (others => '0');
                    end case;
                end if;
            end if;
        end if;
    end process;

end Behavioral;