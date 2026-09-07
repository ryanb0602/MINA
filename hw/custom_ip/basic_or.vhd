----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/06/2026 03:51:04 PM
-- Design Name: 
-- Module Name: basic_or - Behavioral
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

entity basic_or is
    Port ( 
        clk : in STD_LOGIC;
            a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : out STD_LOGIC);
end basic_or;

architecture Behavioral of basic_or is

begin

    process(clk)
    begin
    
        c <= a OR b;
    
    end process;

end Behavioral;
