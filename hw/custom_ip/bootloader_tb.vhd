library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_design_1_wrapper is
end tb_design_1_wrapper;

architecture Behavioral of tb_design_1_wrapper is

    --------------------------------------------------------------------------
    -- DUT declaration
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
    -- Clock / UART constants
    --------------------------------------------------------------------------
    constant CLK_PERIOD : time := 10 ns;       -- 100 MHz

    -- 1 / 115200 = 8.680555... us
    -- ps resolution gives a very accurate baud period.
    constant BIT_PERIOD : time := 8680556 ps;

    constant UART_ACK  : std_logic_vector(7 downto 0) := x"06";
    constant UART_NACK : std_logic_vector(7 downto 0) := x"15";

    constant CMD_WRITE : std_logic_vector(7 downto 0) := x"01";
    constant SYNC_BYTE : std_logic_vector(7 downto 0) := x"55";


    --------------------------------------------------------------------------
    -- DUT signals
    --------------------------------------------------------------------------
    signal cpu_rst     : std_logic := '0';

    signal i2c_scl_i_0 : std_logic := '1';
    signal i2c_scl_o_0 : std_logic;
    signal i2c_scl_t_0 : std_logic;

    signal i2c_sda_i_0 : std_logic := '1';
    signal i2c_sda_o_0 : std_logic;
    signal i2c_sda_t_0 : std_logic;

    signal in_clk      : std_logic := '0';
    signal sys_rst     : std_logic := '1';

    signal uart_rx_0   : std_logic := '1';
    signal uart_tx_0   : std_logic;


    --------------------------------------------------------------------------
    -- Send one UART byte
    --
    -- Format:
    --   1 start bit
    --   8 data bits, LSB first
    --   1 stop bit
    --------------------------------------------------------------------------
    procedure uart_send_byte (
        signal uart_line : out std_logic;
        constant data    : in  std_logic_vector(7 downto 0)
    ) is
    begin

        -- Start bit
        uart_line <= '0';
        wait for BIT_PERIOD;

        -- Data bits, UART is LSB first
        for i in 0 to 7 loop
            uart_line <= data(i);
            wait for BIT_PERIOD;
        end loop;

        -- Stop bit
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
        -- Wait for start bit.
        --
        -- The "if" also handles the case where the DUT has already begun its
        -- start bit by the time this procedure is entered.
        ----------------------------------------------------------------------
        if uart_line /= '0' then
            wait until uart_line = '0' for 20 * BIT_PERIOD;
        end if;

        assert uart_line = '0'
            report "UART RX timeout waiting for DUT response"
            severity failure;


        ----------------------------------------------------------------------
        -- Move to center of first data bit.
        --
        -- Start bit center would be +0.5 bit.
        -- First data bit center is +1.5 bits.
        ----------------------------------------------------------------------
        wait for BIT_PERIOD + (BIT_PERIOD / 2);


        ----------------------------------------------------------------------
        -- Sample 8 data bits
        ----------------------------------------------------------------------
        for i in 0 to 7 loop
            data(i) := uart_line;
            wait for BIT_PERIOD;
        end loop;


        ----------------------------------------------------------------------
        -- We are now around the center of the stop bit.
        ----------------------------------------------------------------------
        assert uart_line = '1'
            report "UART framing error: stop bit was not high"
            severity error;

        wait for BIT_PERIOD / 2;

    end procedure;


    --------------------------------------------------------------------------
    -- Send one bootloader WRITE packet
    --
    -- Protocol:
    --
    --   0x55
    --   0x01
    --   addr[31:24]
    --   addr[23:16]
    --   addr[15:8]
    --   addr[7:0]
    --   data[31:24]
    --   data[23:16]
    --   data[15:8]
    --   data[7:0]
    --   checksum
    --
    -- checksum =
    --   0x01 XOR all address bytes XOR all data bytes
    --
    -- NOTE:
    -- This assumes address/data bytes are sent MSB first.
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
        -- Send packet
        ----------------------------------------------------------------------
        uart_send_byte(uart_line, SYNC_BYTE);
        uart_send_byte(uart_line, CMD_WRITE);

        uart_send_byte(uart_line, address(31 downto 24));
        uart_send_byte(uart_line, address(23 downto 16));
        uart_send_byte(uart_line, address(15 downto 8));
        uart_send_byte(uart_line, address(7 downto 0));

        uart_send_byte(uart_line, data(31 downto 24));
        uart_send_byte(uart_line, data(23 downto 16));
        uart_send_byte(uart_line, data(15 downto 8));
        uart_send_byte(uart_line, data(7 downto 0));

        uart_send_byte(uart_line, checksum);

    end procedure;


    --------------------------------------------------------------------------
    -- Wait for bootloader ACK
    --------------------------------------------------------------------------
    procedure expect_ack (
        signal uart_line : in std_logic;
        constant packet_name : in string
    ) is
        variable response : std_logic_vector(7 downto 0);
    begin

        uart_receive_byte(uart_line, response);

        if response = UART_ACK then

            report packet_name & ": ACK received"
                severity note;

        elsif response = UART_NACK then

            assert false
                report packet_name & ": NACK received from bootloader"
                severity failure;

        else

            assert false
                report packet_name &
                       ": unexpected UART response. Expected ACK (0x06)"
                severity failure;

        end if;

    end procedure;


begin

    --------------------------------------------------------------------------
    -- DUT
    --------------------------------------------------------------------------
    dut : design_1_wrapper
        port map (
            cpu_rst     => cpu_rst,

            i2c_scl_i_0 => i2c_scl_i_0,
            i2c_scl_o_0 => i2c_scl_o_0,
            i2c_scl_t_0 => i2c_scl_t_0,

            i2c_sda_i_0 => i2c_sda_i_0,
            i2c_sda_o_0 => i2c_sda_o_0,
            i2c_sda_t_0 => i2c_sda_t_0,

            in_clk      => in_clk,
            sys_rst     => sys_rst,

            uart_rx_0   => uart_rx_0,
            uart_tx_0   => uart_tx_0
        );


    --------------------------------------------------------------------------
    -- 100 MHz system clock
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

        report "MINA MICROCONTROLLER BOOTLOADER TEST"
            severity note;

        report "============================================================"
            severity note;


        ----------------------------------------------------------------------
        -- Initial conditions
        ----------------------------------------------------------------------
        uart_rx_0 <= '1';

        -- CPU reset is ACTIVE LOW.
        --
        -- Keep CPU held in reset for the entire bootloader test.
        cpu_rst <= '0';

        -- Assume system reset is ACTIVE HIGH.
        sys_rst <= '0';

        wait for 20 * CLK_PERIOD;

        sys_rst <= '1';

        report "System reset released; CPU remains held in reset"
            severity note;


        ----------------------------------------------------------------------
        -- Give system plenty of startup time
        ----------------------------------------------------------------------
        wait for 2 us;


        ----------------------------------------------------------------------
        -- WRITE #1
        --
        -- 0x10000093:
        -- addi x1, x0, 0x100
        ----------------------------------------------------------------------
        report "WRITE #1: address 0x00000000 <= 0x10000093"
            severity note;

        bootloader_write(
            uart_rx_0,
            x"00000000",
            x"10000093"
        );

        expect_ack(uart_tx_0, "WRITE #1");


        ----------------------------------------------------------------------
        -- WRITE #2
        --
        -- 0x02A00113:
        -- addi x2, x0, 42
        ----------------------------------------------------------------------
        report "WRITE #2: address 0x00000004 <= 0x02A00113"
            severity note;

        bootloader_write(
            uart_rx_0,
            x"00000004",
            x"02A00113"
        );

        expect_ack(uart_tx_0, "WRITE #2");


        ----------------------------------------------------------------------
        -- WRITE #3
        --
        -- 0x0020A023:
        -- sw x2, 0(x1)
        ----------------------------------------------------------------------
        report "WRITE #3: address 0x00000008 <= 0x0020A023"
            severity note;

        bootloader_write(
            uart_rx_0,
            x"00000008",
            x"0020A023"
        );

        expect_ack(uart_tx_0, "WRITE #3");


        ----------------------------------------------------------------------
        -- WRITE #4
        --
        -- 0x0000006F:
        -- jal x0, 0
        --
        -- Infinite loop.
        ----------------------------------------------------------------------
        report "WRITE #4: address 0x0000000C <= 0x0000006F"
            severity note;

        bootloader_write(
            uart_rx_0,
            x"0000000C",
            x"0000006F"
        );

        expect_ack(uart_tx_0, "WRITE #4");


        ----------------------------------------------------------------------
        -- Bootloader portion complete.
        ----------------------------------------------------------------------
        report "============================================================"
            severity note;

        report "ALL BOOTLOADER WRITE PACKETS ACKNOWLEDGED"
            severity note;

        report "Expected RAM contents:"
            severity note;

        report "  0x00000000 = 0x10000093"
            severity note;

        report "  0x00000004 = 0x02A00113"
            severity note;

        report "  0x00000008 = 0x0020A023"
            severity note;

        report "  0x0000000C = 0x0000006F"
            severity note;

        report "CPU remains held in reset."
            severity note;

        report "Inspect RAM in the waveform before proceeding."
            severity note;

        report "============================================================"
            severity note;


        wait for 10 us;

        --------------------------------------------------------------------------
        -- Bootloader portion complete
        --------------------------------------------------------------------------
        report "============================================================"
        severity note;
        
        report "BOOTLOADER LOAD COMPLETE"
        severity note;
        
        report "Releasing CPU"
        severity note;
        
        report "============================================================"
        severity note;
        
        wait for 1 us;
        
        -- cpu_rst is active low
        cpu_rst <= '1';
        
        
        --------------------------------------------------------------------------
        -- Give the CPU time to fetch and execute
        --------------------------------------------------------------------------
        wait for 10 us;
        
        
        --------------------------------------------------------------------------
        -- At this point we expect:
        --
        -- RAM[0x00000100] = 0x0000002A
        --------------------------------------------------------------------------
        report "CPU execution window complete" severity note;
        
        report "Expected RAM[0x00000100] = 0x0000002A"
        severity note;
        
        wait for 1 us;
        
        assert false
        report "CPU EXECUTION TEST COMPLETE"
        severity failure;
        
        wait;
        ----------------------------------------------------------------------
        -- End simulation
        ----------------------------------------------------------------------
        assert false
            report "TEST PASSED"
            severity failure;

        wait;

    end process;

end Behavioral;