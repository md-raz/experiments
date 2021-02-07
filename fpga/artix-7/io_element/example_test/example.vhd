library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.au_pkg.all;

entity au_top is    
    port (clk : in std_logic;
          rst_n : in std_logic;
          led : out std_logic_vector (7 downto 0);
          usb_rx : in std_logic;
          usb_tx : out std_logic;
          io_led : out AU_IO_3_x_8_T;                   -- LEDs on IO Shield
          io_dip : in AU_IO_3_x_8_T;                    -- DIP switches on IO Shield
          io_button : in std_logic_vector (4 downto 0); -- 5 buttons on IO Shield
          io_seg : out std_logic_vector (7 downto 0);   -- 7-segment LEDs on IO Shield
          io_sel : out std_logic_vector (3 downto 0));  -- Digit select on IO Shield
end au_top;

architecture behaviour of au_top is
    signal seg_data : AU_IO_4_x_8_T;
begin    
    seg_data <= (others => (others => '1'));
    ds : au_display_to_seg port map(clk => clk, seg_data => seg_data, io_seg => io_seg, io_sel => io_sel);
    lb : au_io_shield_load_bar port map(clk => clk, display => '1', io_led => io_led);
    
end behaviour;
