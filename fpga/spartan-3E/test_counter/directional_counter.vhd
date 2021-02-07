library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity Directional_Counter is
    Port ( clk : in STD_LOGIC;
			  ADDR_DIR : in  STD_LOGIC;
           ADDR_CLK : in  STD_LOGIC;
           ADDR_SEL : out  STD_LOGIC_VECTOR (4 downto 0));
end Directional_Counter;


architecture Behavioral of Directional_Counter is
    signal count   : integer range 0 to 19;
begin
 -- up/down counter
    process (clk, ADDR_DIR, ADDR_CLK)
    begin
        if (ADDR_CLK'Event and ADDR_CLK = '1') then
            if (ADDR_DIR = '1' and count = 19) then
					count <= 0;      ----- Reset to zero
				elsif (ADDR_DIR = '1') then
			      count <= count + 1;   --- Count up
            elsif (ADDR_DIR = '0' and count = 0) then
               count <= 19;     ----- Reset to 19
				else 
					count <= count - 1;    ---- Count Down
            end if;
        end if;
    end process;
    -- display count on LEDs
	ADDR_SEL <= STD_LOGIC_VECTOR(to_unsigned(count, ADDR_SEL'length));

end Behavioral;

