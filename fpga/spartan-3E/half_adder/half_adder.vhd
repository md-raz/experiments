library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Half_Adder is
    Port ( bit1 : in  STD_LOGIC;
           bit2 : in  STD_LOGIC;
           led1 : out  STD_LOGIC;
           led2 : out  STD_LOGIC);
end Half_Adder;

architecture Behavioral of Half_Adder is

begin
	led1 <= bit1 xor bit2;
	led2 <= bit1 and bit2;
end Behavioral;

