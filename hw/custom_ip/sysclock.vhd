library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity axil_timer_64 is
    generic (
        C_S_AXI_DATA_WIDTH : integer := 32;
        C_S_AXI_ADDR_WIDTH : integer := 4
    );
    port (
        -- System Signals
        S_AXI_ACLK    : in  std_logic;
        S_AXI_ARESETN : in  std_logic;

        -- AXI4-Lite Write Address Channel
        S_AXI_AWADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_AWVALID : in  std_logic;
        S_AXI_AWREADY : out std_logic;

        -- AXI4-Lite Write Data Channel
        S_AXI_WDATA   : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_WSTRB   : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        S_AXI_WVALID  : in  std_logic;
        S_AXI_WREADY  : out std_logic;

        -- AXI4-Lite Write Response Channel
        S_AXI_BRESP   : out std_logic_vector(1 downto 0);
        S_AXI_BVALID  : out std_logic;
        S_AXI_BREADY  : in  std_logic;

        -- AXI4-Lite Read Address Channel
        S_AXI_ARADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_ARVALID : in  std_logic;
        S_AXI_ARREADY : out std_logic;

        -- AXI4-Lite Read Data Channel
        S_AXI_RDATA   : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_RRESP   : out std_logic_vector(1 downto 0);
        S_AXI_RVALID  : out std_logic;
        S_AXI_RREADY  : in  std_logic;

        -- Timer Interrupt Output
        IRQ           : out std_logic
    );
end axil_timer_64;

architecture rtl of axil_timer_64 is

    -- 64-bit Internal Registers
    signal clock_reg      : unsigned(63 downto 0);
    signal compare_reg    : unsigned(63 downto 0);
    
    -- Snapshot register for safe 64-bit reading
    signal clock_snap_reg : unsigned(31 downto 0);

    -- AXI4-Lite Handshake Signals
    signal awready_int : std_logic;
    signal wready_int  : std_logic;
    signal bvalid_int  : std_logic;
    signal arready_int : std_logic;
    signal rvalid_int  : std_logic;
    signal rdata_int   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);

begin

    -- Assign internal signals to output ports
    S_AXI_AWREADY <= awready_int;
    S_AXI_WREADY  <= wready_int;
    S_AXI_BVALID  <= bvalid_int;
    S_AXI_BRESP   <= "00";
    
    S_AXI_ARREADY <= arready_int;
    S_AXI_RVALID  <= rvalid_int;
    S_AXI_RRESP   <= "00";
    S_AXI_RDATA   <= rdata_int;

    -- Interrupt triggers when clock exceeds compare.
    -- Held high until CPU writes a new compare value that is > clock.
    IRQ <= '1' when (clock_reg > compare_reg) else '0';

    ----------------------------------------------------------------------------
    -- Timer Counter Process (Native AXI Clock)
    ----------------------------------------------------------------------------
    process (S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                clock_reg <= (others => '0');
            else
                -- Unconditionally count up every clock cycle
                clock_reg <= clock_reg + 1;
            end if;
        end if;
    end process;

    ----------------------------------------------------------------------------
    -- AXI4-Lite Write Logic (Configures Compare Register)
    ----------------------------------------------------------------------------
    process (S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                awready_int <= '0';
                wready_int  <= '0';
                bvalid_int  <= '0';
                compare_reg <= (others => '1'); -- Default to max
            else
                if (awready_int = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1') then
                    awready_int <= '1';
                else
                    awready_int <= '0';
                end if;

                if (wready_int = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1') then
                    wready_int <= '1';
                    
                    -- Address decoding for 64-bit compare register
                    case S_AXI_AWADDR(3 downto 2) is
                        when "10" => -- Offset 0x08: Compare Lower 32
                            compare_reg(31 downto 0) <= unsigned(S_AXI_WDATA);
                        when "11" => -- Offset 0x0C: Compare Upper 32
                            compare_reg(63 downto 32) <= unsigned(S_AXI_WDATA);
                        when others =>
                            null;
                    end case;
                else
                    wready_int <= '0';
                end if;

                if (awready_int = '1' and S_AXI_AWVALID = '1' and wready_int = '1' and S_AXI_WVALID = '1' and bvalid_int = '0') then
                    bvalid_int <= '1';
                elsif (S_AXI_BREADY = '1' and bvalid_int = '1') then
                    bvalid_int <= '0';
                end if;
            end if;
        end if;
    end process;

    ----------------------------------------------------------------------------
    -- AXI4-Lite Read Logic (Reads Clock and Compare Registers)
    ----------------------------------------------------------------------------
    process (S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                arready_int    <= '0';
                rvalid_int     <= '0';
                rdata_int      <= (others => '0');
                clock_snap_reg <= (others => '0');
            else
                if (arready_int = '0' and S_AXI_ARVALID = '1') then
                    arready_int <= '1';
                else
                    arready_int <= '0';
                end if;

                if (arready_int = '1' and S_AXI_ARVALID = '1' and rvalid_int = '0') then
                    rvalid_int <= '1';
                    
                    case S_AXI_ARADDR(3 downto 2) is
                        when "00" => -- Offset 0x00: Clock Lower 32
                            rdata_int <= std_logic_vector(clock_reg(31 downto 0));
                            -- SNAPSHOT the upper 32 bits instantly
                            clock_snap_reg <= clock_reg(63 downto 32); 
                            
                        when "01" => -- Offset 0x04: Clock Upper 32
                            -- Read the snapshot, not the live register
                            rdata_int <= std_logic_vector(clock_snap_reg);
                            
                        when "10" => -- Offset 0x08: Compare Lower 32
                            rdata_int <= std_logic_vector(compare_reg(31 downto 0));
                            
                        when "11" => -- Offset 0x0C: Compare Upper 32
                            rdata_int <= std_logic_vector(compare_reg(63 downto 32));
                            
                        when others =>
                            rdata_int <= (others => '0');
                    end case;
                elsif (S_AXI_RREADY = '1' and rvalid_int = '1') then
                    rvalid_int <= '0';
                end if;
            end if;
        end if;
    end process;

end rtl;