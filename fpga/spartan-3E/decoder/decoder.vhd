library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder is
    Port ( sw : in  STD_LOGIC_VECTOR (2 downto 0);
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end decoder;

architecture Behavioral of decoder is

begin

	led <= "00000001" when sw = "000" else
		"00000010" when sw = "001" else
		"00000100" when sw = "010" else
		"00001000" when sw = "011" else
		"00010000" when sw = "100" else
		"00100000" when sw = "101" else
		"01000000" when sw = "11" else
		"10000000";

end Behavioral;

