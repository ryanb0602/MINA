library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity plic is
    Generic (
        N_INTERRUPTS : integer := 8
    );
    Port ( 
        clk        : in std_logic;
        reset    : in std_logic;

        intr_actv  : in std_logic_vector(N_INTERRUPTS - 1 downto 0);
        intr_pins  : in std_logic_vector(N_INTERRUPTS - 1 downto 0);
        claim_mask : in std_logic_vector(N_INTERRUPTS - 1 downto 0);

        pending_out : out std_logic_vector(N_INTERRUPTS - 1 downto 0);
        ext_intr    : out std_logic
    );
end plic;

architecture Behavioral of plic is

    signal pending :
        std_logic_vector(N_INTERRUPTS - 1 downto 0) :=
        (others => '0');

begin

    process(clk)
        variable new_pending :
            std_logic_vector(N_INTERRUPTS - 1 downto 0);
    begin
        if rising_edge(clk) then

            if reset = '1' then

                pending <= (others => '0');

            else

                -- Clear claimed interrupts, then capture any active IRQs.
                -- New IRQ wins if claim and interrupt occur simultaneously.
                new_pending :=
                    (pending AND NOT claim_mask)
                    OR
                    (intr_pins AND intr_actv);

                pending <= new_pending;

            end if;

        end if;
    end process;


    pending_out <= pending;

    ext_intr <= '1'
        when pending /= (pending'range => '0')
        else '0';

end Behavioral;