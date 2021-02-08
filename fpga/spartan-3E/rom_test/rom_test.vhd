
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rom_map_top is
    Port ( sw : in  STD_LOGIC_VECTOR (4 downto 0);
           led : out  STD_LOGIC_VECTOR (5 downto 0);
           addr_clk : in  STD_LOGIC);
end rom_map_top;

architecture Behavioral of rom_map_top is

COMPONENT nozzle_map
PORT (
     clka : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(5 DOWNTO 0));
END COMPONENT; 

signal clk_in 		: std_logic;
signal addr_in 	: std_logic_vector (4 downto 0);
signal data_out 	: std_logic_vector (5 downto 0);



begin

nozzle_data : nozzle_map
  PORT MAP (
    clka => clk_in,
    addra => addr_in,
    douta => data_out
  );




--	nozzle_map  : nozzle_map port map (	clka => clk_in, 
--															addra => addr_in, 
--															douta => data_out);	
		clk_in <= addr_clk;
		addr_in <= sw;
		led <= data_out;


end Behavioral;

