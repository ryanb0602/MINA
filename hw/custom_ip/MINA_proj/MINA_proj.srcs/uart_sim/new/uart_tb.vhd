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

    -- 115200 baud
    constant BIT_PERIOD : time := 8680556 ps;

    constant SYNC_BYTE : std_logic_vector(7 downto 0) := x"55";
    constant CMD_WRITE : std_logic_vector(7 downto 0) := x"01";

    constant UART_ACK  : std_logic_vector(7 downto 0) := x"06";
    constant UART_NACK : std_logic_vector(7 downto 0) := x"15";

    -- Byte injected by the testbench in NORMAL UART mode.
    constant TEST_BYTE : std_logic_vector(7 downto 0) := x"3C";


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
    -- Normal-mode TX monitor
    --
    -- This is separate from the stimulus process so it can begin watching
    -- uart_tx_0 BEFORE the testbench finishes transmitting TEST_BYTE.
    -- That prevents us from missing the CPU's TX start bit if software responds
    -- immediately after RX completes.
    --------------------------------------------------------------------------
    signal normal_rx_arm  : std_logic := '0';
    signal normal_rx_done : std_logic := '0';
    signal normal_rx_data : std_logic_vector(7 downto 0) := (others => '0');


    --------------------------------------------------------------------------
    -- Send one UART byte
    --
    -- UART format:
    --   idle  = 1
    --   start = 0
    --   8 data bits, LSB first
    --   stop  = 1
    --------------------------------------------------------------------------
    procedure uart_send_byte (
        signal uart_line : out std_logic;
        constant data    : in  std_logic_vector(7 downto 0)
    ) is
    begin

        -- Start bit
        uart_line <= '0';
        wait for BIT_PERIOD;

        -- 8 data bits, LSB first
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

        -- Wait for start bit
        if uart_line /= '0' then
            wait until uart_line = '0' for 20 * BIT_PERIOD;
        end if;

        assert uart_line = '0'
            report "UART timeout waiting for response"
            severity failure;

        -- Center of first data bit
        wait for BIT_PERIOD + (BIT_PERIOD / 2);

        -- Sample 8 data bits, LSB first
        for i in 0 to 7 loop
            data(i) := uart_line;
            wait for BIT_PERIOD;
        end loop;

        -- We should now be near the center of the stop bit
        assert uart_line = '1'
            report "UART framing error: stop bit is not high"
            severity failure;

        wait for BIT_PERIOD / 2;

    end procedure;


    --------------------------------------------------------------------------
    -- Send one bootloader WRITE packet
    --
    -- Packet:
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
    -- CHECKSUM = command XOR address bytes XOR data bytes.
    -- Sync byte is not included.
    --------------------------------------------------------------------------
    procedure bootloader_write (
        signal uart_line : out std_logic;
        constant address : in  std_logic_vector(31 downto 0);
        constant data    : in  std_logic_vector(31 downto 0)
    ) is
        variable checksum : std_logic_vector(7 downto 0);
    begin

        checksum := CMD_WRITE;

        checksum := checksum xor address(31 downto 24);
        checksum := checksum xor address(23 downto 16);
        checksum := checksum xor address(15 downto 8);
        checksum := checksum xor address(7 downto 0);

        checksum := checksum xor data(31 downto 24);
        checksum := checksum xor data(23 downto 16);
        checksum := checksum xor data(15 downto 8);
        checksum := checksum xor data(7 downto 0);

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
    -- Verify bootloader ACK
    --------------------------------------------------------------------------
    procedure expect_ack (
        signal uart_line     : in std_logic;
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
                report packet_name & ": unexpected response from bootloader"
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
    -- One-shot monitor for CPU -> UART -> testbench traffic in NORMAL mode.
    --------------------------------------------------------------------------
    normal_tx_monitor : process
        variable received_byte : std_logic_vector(7 downto 0);
    begin
        wait until normal_rx_arm = '1';

        uart_receive_byte(
            uart_tx_0,
            received_byte
        );

        normal_rx_data <= received_byte;
        normal_rx_done <= '1';

        wait;
    end process;


    --------------------------------------------------------------------------
    -- Main test
    --------------------------------------------------------------------------
    stimulus : process
    begin

        report "============================================================"
            severity note;
        report "MINA NORMAL-MODE UART CPU TEST"
            severity note;
        report "============================================================"
            severity note;


        ----------------------------------------------------------------------
        -- Initial state
        ----------------------------------------------------------------------
        uart_rx_0 <= '1';

        -- cpu_rst is ACTIVE LOW.
        -- Holding it low also places the UART in bootloader mode.
        cpu_rst <= '0';

        -- System reset is ACTIVE LOW in the existing top-level testbench.
        sys_rst <= '0';

        wait for 20 * CLK_PERIOD;
        sys_rst <= '1';

        report "System reset released" severity note;
        report "CPU remains held in reset / UART bootloader mode" severity note;

        wait for 2 us;


        ----------------------------------------------------------------------
        -- Program loaded at 0x00000000
        --
        -- UART base = 0x20002000
        -- RAM base  = 0x10000000
        --
        -- UART register map used by this test:
        --   +0x00 RX FIFO
        --   +0x04 TX FIFO
        --   +0x08 STATUS
        --
        -- STATUS bit 0 = RX data available
        -- STATUS bit 3 = TX FIFO full
        --
        -- Program:
        --
        --     lui   x1, 0x20002        # x1 = 0x20002000 UART base
        --     lui   x2, 0x10000        # x2 = 0x10000000 RAM base
        --
        -- poll_rx:
        --     lw    x3, 8(x1)          # UART STATUS
        --     andi  x3, x3, 1          # RX available?
        --     beq   x3, x0, poll_rx
        --
        --     lw    x4, 0(x1)          # pop RX byte
        --     sw    x4, 0(x2)          # save to 0x10000000
        --
        --     lw    x5, 0(x2)          # read it back from RAM
        --     sw    x5, 4(x1)          # push low byte to UART TX FIFO
        --
        -- done:
        --     jal   x0, done
        --
        -- For TEST_BYTE = 0x3C:
        --     RAM[0x10000000] = 0x0000003C
        --     UART TX          = 0x3C
        --
        -- Reading RAM back before TX makes the physical UART result an
        -- end-to-end check of RX -> CPU -> RAM -> CPU -> TX.
        ----------------------------------------------------------------------


        ----------------------------------------------------------------------
        -- 0x00000000: lui x1, 0x20002
        ----------------------------------------------------------------------
        report "WRITE #1: 0x00000000 <= 0x200020B7  (lui x1, 0x20002)"
            severity note;
        bootloader_write(uart_rx_0, x"00000000", x"200020B7");
        expect_ack(uart_tx_0, "WRITE #1");


        ----------------------------------------------------------------------
        -- 0x00000004: lui x2, 0x10000
        ----------------------------------------------------------------------
        report "WRITE #2: 0x00000004 <= 0x10000137  (lui x2, 0x10000)"
            severity note;
        bootloader_write(uart_rx_0, x"00000004", x"10000137");
        expect_ack(uart_tx_0, "WRITE #2");


        ----------------------------------------------------------------------
        -- 0x00000008: lw x3, 8(x1)
        ----------------------------------------------------------------------
        report "WRITE #3: 0x00000008 <= 0x0080A183  (lw x3, 8(x1))"
            severity note;
        bootloader_write(uart_rx_0, x"00000008", x"0080A183");
        expect_ack(uart_tx_0, "WRITE #3");


        ----------------------------------------------------------------------
        -- 0x0000000C: andi x3, x3, 1
        ----------------------------------------------------------------------
        report "WRITE #4: 0x0000000C <= 0x0011F193  (andi x3, x3, 1)"
            severity note;
        bootloader_write(uart_rx_0, x"0000000C", x"0011F193");
        expect_ack(uart_tx_0, "WRITE #4");


        ----------------------------------------------------------------------
        -- 0x00000010: beq x3, x0, -8
        -- Branches back to 0x00000008 while RX FIFO is empty.
        ----------------------------------------------------------------------
        report "WRITE #5: 0x00000010 <= 0xFE018CE3  (beq x3, x0, -8)"
            severity note;
        bootloader_write(uart_rx_0, x"00000010", x"FE018CE3");
        expect_ack(uart_tx_0, "WRITE #5");


        ----------------------------------------------------------------------
        -- 0x00000014: lw x4, 0(x1)
        ----------------------------------------------------------------------
        report "WRITE #6: 0x00000014 <= 0x0000A203  (lw x4, 0(x1))"
            severity note;
        bootloader_write(uart_rx_0, x"00000014", x"0000A203");
        expect_ack(uart_tx_0, "WRITE #6");


        ----------------------------------------------------------------------
        -- 0x00000018: sw x4, 0(x2)
        ----------------------------------------------------------------------
        report "WRITE #7: 0x00000018 <= 0x00412023  (sw x4, 0(x2))"
            severity note;
        bootloader_write(uart_rx_0, x"00000018", x"00412023");
        expect_ack(uart_tx_0, "WRITE #7");


        ----------------------------------------------------------------------
        -- 0x0000001C: lw x5, 0(x2)
        ----------------------------------------------------------------------
        report "WRITE #8: 0x0000001C <= 0x00012283  (lw x5, 0(x2))"
            severity note;
        bootloader_write(uart_rx_0, x"0000001C", x"00012283");
        expect_ack(uart_tx_0, "WRITE #8");


        ----------------------------------------------------------------------
        -- 0x00000020: sw x5, 4(x1)
        ----------------------------------------------------------------------
        report "WRITE #9: 0x00000020 <= 0x0050A223  (sw x5, 4(x1))"
            severity note;
        bootloader_write(uart_rx_0, x"00000020", x"0050A223");
        expect_ack(uart_tx_0, "WRITE #9");


        ----------------------------------------------------------------------
        -- 0x00000024: jal x0, 0
        ----------------------------------------------------------------------
        report "WRITE #10: 0x00000024 <= 0x0000006F  (jal x0, 0)"
            severity note;
        bootloader_write(uart_rx_0, x"00000024", x"0000006F");
        expect_ack(uart_tx_0, "WRITE #10");


        report "============================================================"
            severity note;
        report "BOOTLOADER PROGRAM LOAD COMPLETE - 10 packets acknowledged"
            severity note;
        report "============================================================"
            severity note;

        -- Let the final ACK and bootloader datapath fully settle.
        wait for 2 us;


        ----------------------------------------------------------------------
        -- Release CPU / enter normal UART mode
        ----------------------------------------------------------------------
        report "Releasing CPU reset; UART should enter normal AXI mode"
            severity note;

        cpu_rst <= '1';

        -- Give the boot-mode synchronizer time to switch ownership and give the
        -- CPU enough time to fetch the program and reach the RX polling loop.
        wait for 10 us;


        ----------------------------------------------------------------------
        -- Arm receiver BEFORE injecting TEST_BYTE.
        ----------------------------------------------------------------------
        normal_rx_arm <= '1';
        wait for 1 ns;


        ----------------------------------------------------------------------
        -- Testbench -> UART RX -> CPU
        ----------------------------------------------------------------------
        report "Sending normal-mode UART byte 0x3C to the CPU"
            severity note;

        uart_send_byte(
            uart_rx_0,
            TEST_BYTE
        );

        report "UART byte injected; CPU should store 0x0000003C at 0x10000000"
            severity note;


        ----------------------------------------------------------------------
        -- CPU -> UART TX -> testbench
        ----------------------------------------------------------------------
        wait until normal_rx_done = '1' for 1 ms;

        assert normal_rx_done = '1'
            report "TIMEOUT: CPU did not transmit a normal-mode UART byte"
            severity failure;

        report "Testbench received a UART byte from the CPU"
            severity note;

        assert normal_rx_data = TEST_BYTE
            report "FAIL: CPU UART TX byte did not match 0x3C"
            severity failure;


        ----------------------------------------------------------------------
        -- PASS
        ----------------------------------------------------------------------
        report "============================================================"
            severity note;
        report "PASS: NORMAL-MODE UART END-TO-END TEST"
            severity note;
        report "  Testbench transmitted:       0x3C"
            severity note;
        report "  CPU RX FIFO read:            expected 0x0000003C"
            severity note;
        report "  RAM[0x10000000]:             expected 0x0000003C"
            severity note;
        report "  CPU reloaded RAM value:      expected 0x0000003C"
            severity note;
        report "  Testbench received from TX:  0x3C"
            severity note;
        report "============================================================"
            severity note;

        wait for 5 us;

        assert false
            report "UART NORMAL MODE TEST COMPLETE"
            severity failure;

        wait;

    end process;

end Behavioral;