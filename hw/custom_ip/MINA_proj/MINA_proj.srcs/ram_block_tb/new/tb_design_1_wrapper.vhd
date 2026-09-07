library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_design_1_wrapper is
end tb_design_1_wrapper;


architecture Behavioral of tb_design_1_wrapper is

    --------------------------------------------------------------------------
    -- DUT
    --------------------------------------------------------------------------
    component design_1_wrapper
        port (
            cpu_rst     : in  std_logic;

            i2c_scl_i_0 : in  std_logic;
            i2c_scl_o_0 : out std_logic;
            i2c_scl_t_0 : out std_logic;

            i2c_sda_i_0 : in  std_logic;
            i2c_sda_o_0 : out std_logic;
            i2c_sda_t_0 : out std_logic;

            in_clk      : in  std_logic;
            sys_rst     : in  std_logic;

            uart_rx_0   : in  std_logic;
            uart_tx_0   : out std_logic
        );
    end component;


    --------------------------------------------------------------------------
    -- Constants
    --------------------------------------------------------------------------

    -- 100 MHz
    constant CLK_PERIOD : time := 10 ns;

    -- 115200 baud:
    --
    -- 1 / 115200 = 8.680555... us
    --
    constant BIT_PERIOD : time := 8680556 ps;

    constant SYNC_BYTE : std_logic_vector(7 downto 0) := x"55";

    constant CMD_WRITE : std_logic_vector(7 downto 0) := x"01";

    constant UART_ACK  : std_logic_vector(7 downto 0) := x"06";
    constant UART_NACK : std_logic_vector(7 downto 0) := x"15";


    --------------------------------------------------------------------------
    -- DUT signals
    --------------------------------------------------------------------------
    signal cpu_rst : std_logic := '0';

    signal i2c_scl_i_0 : std_logic := '1';
    signal i2c_scl_o_0 : std_logic;
    signal i2c_scl_t_0 : std_logic;

    signal i2c_sda_i_0 : std_logic := '1';
    signal i2c_sda_o_0 : std_logic;
    signal i2c_sda_t_0 : std_logic;

    signal in_clk  : std_logic := '0';
    signal sys_rst : std_logic := '1';

    signal uart_rx_0 : std_logic := '1';
    signal uart_tx_0 : std_logic;


    --------------------------------------------------------------------------
    -- Send one UART byte
    --
    -- UART format:
    --
    --   idle  = 1
    --   start = 0
    --   8 data bits, LSB first
    --   stop  = 1
    --
    --------------------------------------------------------------------------
    procedure uart_send_byte (
        signal uart_line : out std_logic;
        constant data    : in  std_logic_vector(7 downto 0)
    ) is
    begin

        ----------------------------------------------------------------------
        -- Start bit
        ----------------------------------------------------------------------
        uart_line <= '0';
        wait for BIT_PERIOD;


        ----------------------------------------------------------------------
        -- 8 data bits, LSB first
        ----------------------------------------------------------------------
        for i in 0 to 7 loop
            uart_line <= data(i);
            wait for BIT_PERIOD;
        end loop;


        ----------------------------------------------------------------------
        -- Stop bit
        ----------------------------------------------------------------------
        uart_line <= '1';
        wait for BIT_PERIOD;

    end procedure;


    --------------------------------------------------------------------------
    -- Receive one UART byte
    --------------------------------------------------------------------------
    procedure uart_receive_byte (
        signal uart_line : in  std_logic;
        variable data    : out std_logic_vector(7 downto 0)
    ) is
    begin

        ----------------------------------------------------------------------
        -- Wait for start bit
        ----------------------------------------------------------------------
        if uart_line /= '0' then
            wait until uart_line = '0' for 20 * BIT_PERIOD;
        end if;


        assert uart_line = '0'
            report "UART timeout waiting for response"
            severity failure;


        ----------------------------------------------------------------------
        -- Move to center of first data bit
        --
        -- From falling edge of start bit:
        --
        -- 1 bit   -> beginning of bit 0
        -- 0.5 bit -> center of bit 0
        ----------------------------------------------------------------------
        wait for BIT_PERIOD + (BIT_PERIOD / 2);


        ----------------------------------------------------------------------
        -- Sample data
        ----------------------------------------------------------------------
        for i in 0 to 7 loop
            data(i) := uart_line;
            wait for BIT_PERIOD;
        end loop;


        ----------------------------------------------------------------------
        -- Should now be approximately at center of stop bit
        ----------------------------------------------------------------------
        assert uart_line = '1'
            report "UART framing error: stop bit is not high"
            severity failure;


        wait for BIT_PERIOD / 2;

    end procedure;


    --------------------------------------------------------------------------
    -- Send one bootloader WRITE packet
    --
    -- Packet:
    --
    --   0x55
    --   0x01
    --   ADDRESS[31:24]
    --   ADDRESS[23:16]
    --   ADDRESS[15:8]
    --   ADDRESS[7:0]
    --   DATA[31:24]
    --   DATA[23:16]
    --   DATA[15:8]
    --   DATA[7:0]
    --   CHECKSUM
    --
    -- CHECKSUM =
    --
    --   0x01
    --   XOR address bytes
    --   XOR data bytes
    --
    -- The sync byte is NOT included.
    --
    -- This preserves the same MSB-first packet format used by the
    -- previously-passing bootloader test.
    --------------------------------------------------------------------------
    procedure bootloader_write (
        signal uart_line : out std_logic;
        constant address : in  std_logic_vector(31 downto 0);
        constant data    : in  std_logic_vector(31 downto 0)
    ) is

        variable checksum : std_logic_vector(7 downto 0);

    begin

        ----------------------------------------------------------------------
        -- Compute checksum
        ----------------------------------------------------------------------
        checksum := CMD_WRITE;

        checksum := checksum xor address(31 downto 24);
        checksum := checksum xor address(23 downto 16);
        checksum := checksum xor address(15 downto 8);
        checksum := checksum xor address(7 downto 0);

        checksum := checksum xor data(31 downto 24);
        checksum := checksum xor data(23 downto 16);
        checksum := checksum xor data(15 downto 8);
        checksum := checksum xor data(7 downto 0);


        ----------------------------------------------------------------------
        -- Sync
        ----------------------------------------------------------------------
        uart_send_byte(
            uart_line,
            SYNC_BYTE
        );


        ----------------------------------------------------------------------
        -- Command
        ----------------------------------------------------------------------
        uart_send_byte(
            uart_line,
            CMD_WRITE
        );


        ----------------------------------------------------------------------
        -- Address
        ----------------------------------------------------------------------
        uart_send_byte(
            uart_line,
            address(31 downto 24)
        );

        uart_send_byte(
            uart_line,
            address(23 downto 16)
        );

        uart_send_byte(
            uart_line,
            address(15 downto 8)
        );

        uart_send_byte(
            uart_line,
            address(7 downto 0)
        );


        ----------------------------------------------------------------------
        -- Data
        ----------------------------------------------------------------------
        uart_send_byte(
            uart_line,
            data(31 downto 24)
        );

        uart_send_byte(
            uart_line,
            data(23 downto 16)
        );

        uart_send_byte(
            uart_line,
            data(15 downto 8)
        );

        uart_send_byte(
            uart_line,
            data(7 downto 0)
        );


        ----------------------------------------------------------------------
        -- Checksum
        ----------------------------------------------------------------------
        uart_send_byte(
            uart_line,
            checksum
        );

    end procedure;


    --------------------------------------------------------------------------
    -- Verify bootloader response
    --------------------------------------------------------------------------
    procedure expect_ack (
        signal uart_line    : in std_logic;
        constant packet_name : in string
    ) is

        variable response : std_logic_vector(7 downto 0);

    begin

        uart_receive_byte(
            uart_line,
            response
        );


        if response = UART_ACK then

            report packet_name & ": ACK received"
                severity note;


        elsif response = UART_NACK then

            assert false
                report packet_name &
                       ": NACK received from bootloader"
                severity failure;


        else

            assert false
                report packet_name &
                       ": unexpected response from bootloader"
                severity failure;

        end if;

    end procedure;


begin


    --------------------------------------------------------------------------
    -- DUT instance
    --------------------------------------------------------------------------
    dut : design_1_wrapper
        port map (

            cpu_rst => cpu_rst,

            i2c_scl_i_0 => i2c_scl_i_0,
            i2c_scl_o_0 => i2c_scl_o_0,
            i2c_scl_t_0 => i2c_scl_t_0,

            i2c_sda_i_0 => i2c_sda_i_0,
            i2c_sda_o_0 => i2c_sda_o_0,
            i2c_sda_t_0 => i2c_sda_t_0,

            in_clk  => in_clk,
            sys_rst => sys_rst,

            uart_rx_0 => uart_rx_0,
            uart_tx_0 => uart_tx_0

        );


    --------------------------------------------------------------------------
    -- 100 MHz clock
    --------------------------------------------------------------------------
    clk_process : process
    begin

        in_clk <= '0';
        wait for CLK_PERIOD / 2;

        in_clk <= '1';
        wait for CLK_PERIOD / 2;

    end process;


    --------------------------------------------------------------------------
    -- Main test
    --------------------------------------------------------------------------
    stimulus : process
    begin

        report "============================================================"
            severity note;

        report "MINA DATA RAM CPU TEST"
            severity note;

        report "============================================================"
            severity note;


        ----------------------------------------------------------------------
        -- Initial state
        ----------------------------------------------------------------------

        -- UART idle
        uart_rx_0 <= '1';

        -- Hold CPU in reset.
        --
        -- cpu_rst is ACTIVE LOW.
        --
        -- This also puts the UART into bootloader mode.
        cpu_rst <= '0';

        -- System reset
        sys_rst <= '0';


        ----------------------------------------------------------------------
        -- Hold reset for 20 clocks
        ----------------------------------------------------------------------
        wait for 20 * CLK_PERIOD;

        sys_rst <= '1';


        report "System reset released"
            severity note;

        report "CPU remains held in reset / bootloader mode"
            severity note;


        ----------------------------------------------------------------------
        -- Give the system time to settle
        ----------------------------------------------------------------------
        wait for 2 us;


        ----------------------------------------------------------------------
        --
        -- Program:
        --
        --     lui  x1, 0x10000
        --     addi x2, x0, 42
        --
        --     sw   x2, 0(x1)
        --
        --     lw   x3, 0(x1)
        --     addi x3, x3, 1
        --
        --     sw   x3, 4(x1)
        --
        -- loop:
        --     jal x0, loop
        --
        --
        -- Expected:
        --
        -- x1 = 0x10000000
        -- x2 = 0x0000002A
        -- x3 = 0x0000002B
        --
        -- RAM[0x10000000] = 0x0000002A
        -- RAM[0x10000004] = 0x0000002B
        --
        ----------------------------------------------------------------------


        ----------------------------------------------------------------------
        -- Instruction #1
        --
        -- 0x00000000:
        --
        --     lui x1, 0x10000
        --
        -- x1 = 0x10000000
        ----------------------------------------------------------------------
        report "WRITE #1"
            severity note;

        report "0x00000000 <= 0x100000B7"
            severity note;

        report "lui x1, 0x10000"
            severity note;

        bootloader_write(
            uart_rx_0,
            x"00000000",
            x"100000B7"
        );

        expect_ack(
            uart_tx_0,
            "WRITE #1"
        );


        ----------------------------------------------------------------------
        -- Instruction #2
        --
        -- 0x00000004:
        --
        --     addi x2, x0, 42
        --
        -- x2 = 42
        ----------------------------------------------------------------------
        report "WRITE #2"
            severity note;

        report "0x00000004 <= 0x02A00113"
            severity note;

        report "addi x2, x0, 42"
            severity note;

        bootloader_write(
            uart_rx_0,
            x"00000004",
            x"02A00113"
        );

        expect_ack(
            uart_tx_0,
            "WRITE #2"
        );


        ----------------------------------------------------------------------
        -- Instruction #3
        --
        -- 0x00000008:
        --
        --     sw x2, 0(x1)
        --
        -- RAM[0x10000000] = 42
        ----------------------------------------------------------------------
        report "WRITE #3"
            severity note;

        report "0x00000008 <= 0x0020A023"
            severity note;

        report "sw x2, 0(x1)"
            severity note;

        bootloader_write(
            uart_rx_0,
            x"00000008",
            x"0020A023"
        );

        expect_ack(
            uart_tx_0,
            "WRITE #3"
        );


        ----------------------------------------------------------------------
        -- Instruction #4
        --
        -- 0x0000000C:
        --
        --     lw x3, 0(x1)
        --
        -- x3 = RAM[0x10000000]
        ----------------------------------------------------------------------
        report "WRITE #4"
            severity note;

        report "0x0000000C <= 0x0000A183"
            severity note;

        report "lw x3, 0(x1)"
            severity note;

        bootloader_write(
            uart_rx_0,
            x"0000000C",
            x"0000A183"
        );

        expect_ack(
            uart_tx_0,
            "WRITE #4"
        );


        ----------------------------------------------------------------------
        -- Instruction #5
        --
        -- 0x00000010:
        --
        --     addi x3, x3, 1
        --
        -- x3 = 43
        ----------------------------------------------------------------------
        report "WRITE #5"
            severity note;

        report "0x00000010 <= 0x00118193"
            severity note;

        report "addi x3, x3, 1"
            severity note;

        bootloader_write(
            uart_rx_0,
            x"00000010",
            x"00118193"
        );

        expect_ack(
            uart_tx_0,
            "WRITE #5"
        );


        ----------------------------------------------------------------------
        -- Instruction #6
        --
        -- 0x00000014:
        --
        --     sw x3, 4(x1)
        --
        -- RAM[0x10000004] = 43
        ----------------------------------------------------------------------
        report "WRITE #6"
            severity note;

        report "0x00000014 <= 0x0030A223"
            severity note;

        report "sw x3, 4(x1)"
            severity note;

        bootloader_write(
            uart_rx_0,
            x"00000014",
            x"0030A223"
        );

        expect_ack(
            uart_tx_0,
            "WRITE #6"
        );


        ----------------------------------------------------------------------
        -- Instruction #7
        --
        -- 0x00000018:
        --
        --     jal x0, 0
        --
        -- Infinite loop
        ----------------------------------------------------------------------
        report "WRITE #7"
            severity note;

        report "0x00000018 <= 0x0000006F"
            severity note;

        report "jal x0, 0"
            severity note;

        bootloader_write(
            uart_rx_0,
            x"00000018",
            x"0000006F"
        );

        expect_ack(
            uart_tx_0,
            "WRITE #7"
        );


        ----------------------------------------------------------------------
        -- Bootloader completed
        ----------------------------------------------------------------------
        report "============================================================"
            severity note;

        report "BOOTLOADER PROGRAM LOAD COMPLETE"
            severity note;

        report "All 7 packets acknowledged"
            severity note;

        report "============================================================"
            severity note;


        ----------------------------------------------------------------------
        -- Give bootloader / memory interface time to fully settle before
        -- handing memory ownership to the CPU.
        ----------------------------------------------------------------------
        wait for 2 us;


        ----------------------------------------------------------------------
        -- Release CPU
        ----------------------------------------------------------------------
        report "Releasing CPU reset"
            severity note;

        cpu_rst <= '1';


        ----------------------------------------------------------------------
        -- CPU executes at 100 MHz.
        --
        -- This is vastly longer than the actual program needs, but gives
        -- plenty of room for cache refill and AXI transactions.
        ----------------------------------------------------------------------
        wait for 20 us;


        ----------------------------------------------------------------------
        -- Expected state
        ----------------------------------------------------------------------
        report "============================================================"
            severity note;

        report "CPU EXECUTION WINDOW COMPLETE"
            severity note;

        report "Expected register values:"
            severity note;

        report "  x1 = 0x10000000"
            severity note;

        report "  x2 = 0x0000002A"
            severity note;

        report "  x3 = 0x0000002B"
            severity note;


        report "Expected DATA RAM values:"
            severity note;

        report "  0x10000000 = 0x0000002A"
            severity note;

        report "  0x10000004 = 0x0000002B"
            severity note;

        report "============================================================"
            severity note;


        ----------------------------------------------------------------------
        -- Give some additional waveform visibility around the final loop.
        ----------------------------------------------------------------------
        wait for 5 us;


        ----------------------------------------------------------------------
        -- Finish simulation
        ----------------------------------------------------------------------
        assert false
            report "DATA RAM CPU TEST COMPLETE"
            severity failure;

        wait;

    end process;


end Behavioral;