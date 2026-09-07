----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/06/2026 03:55:31 PM
-- Design Name: 
-- Module Name: negation - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity negation is
    Port ( a : in STD_LOGIC;
           b : out STD_LOGIC;
           clk : in STD_LOGIC);
end negation;

architecture Behavioral of negation is

begin

    process (clk)
    begin
    
        b <= not a;
    
    end process;


end Behavioral;
