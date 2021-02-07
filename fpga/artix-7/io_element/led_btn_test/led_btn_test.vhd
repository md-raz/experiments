----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/07/2021 11:34:58 AM
-- Design Name: 
-- Module Name: LED_Button_Test - Behavioral
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

entity LED_Button_Test is
    Port (  io_button :  in std_logic_vector (2 downto 0) := "000";
            led_1 : out STD_LOGIC_VECTOR (7 downto 0));

end LED_Button_Test;
    
architecture Behavioral of LED_Button_Test is
    
begin
    with io_button select
    led_1 <=    "11101101"      when "001",
                "00000001"      when "010",
                "10000000"      when others;
        
end Behavioral;
