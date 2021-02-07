library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package au_pkg is

    type AU_IO_3_x_8_T is array (2 downto 0) of std_logic_vector(7 downto 0);
    type AU_IO_4_x_8_T is array (3 downto 0) of std_logic_vector(7 downto 0);
    
    constant AU_IO_BTN_TOP    : integer := 0;
    constant AU_IO_BTN_BOTTOM : integer := 1;
    constant AU_IO_BTN_RIGHT  : integer := 2;
    constant AU_IO_BTN_LEFT   : integer := 3;
    constant AU_IO_BTN_CENTER : integer := 4;
    
    constant AU_SEG_DATA_FAIL : AU_IO_4_x_8_T := ("11000111", "11001111", "10001000", "10001110");
    
    component au_display_to_seg
        port (clk      : in  std_logic;
              seg_data : in AU_IO_4_x_8_T;                   -- data for each digit from left to right
              io_seg   : out std_logic_vector (7 downto 0);  -- 7-segment LEDs on IO Shield
              io_sel   : out std_logic_vector (3 downto 0)); -- Digit select on IO Shield
    end component au_display_to_seg;
    
    component au_io_shield_load_bar
        port (clk      : in  std_logic;
              display  : in  std_logic;      -- should display loadbar ?
              io_led   : out AU_IO_3_x_8_T); -- LEDs on IO Shield
    end component au_io_shield_load_bar;
    
end au_pkg;

package body au_pkg is
end au_pkg;

----------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.au_pkg.all;

entity au_display_to_seg is
    port (clk      : in  std_logic;
          seg_data : in AU_IO_4_x_8_T;                     -- data for each digit from left to right
          io_seg   : out std_logic_vector (7 downto 0);    -- 7-segment LEDs on IO Shield
          io_sel   : out std_logic_vector (3 downto 0));   -- Digit select on IO Shield   
end au_display_to_seg;
   
architecture behaviour of au_display_to_seg is
begin
    process (clk, seg_data) is
        variable delay : integer := 0;
        variable counter : unsigned (1 downto 0) := "00";
        variable sel : unsigned (3 downto 0) := "1110";
    begin
        if (rising_edge(clk)) then
            delay := delay + 1;
            if (delay = 1000) then
                delay := 0;
                io_sel <= std_logic_vector(sel);
                io_seg <= seg_data(to_integer(counter));
                sel := sel rol 1;
                counter := counter + 1;
            end if;
        end if;
    end process;
end behaviour;

----------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.au_pkg.all;

entity au_io_shield_load_bar is
    port (clk      : in  std_logic;
          display  : in  std_logic;      -- should display loadbar ?
          io_led   : out AU_IO_3_x_8_T); -- LEDs on IO Shield
end au_io_shield_load_bar;
   
architecture behaviour of au_io_shield_load_bar is
begin
    process (clk) is
        variable state : std_logic_vector (23 downto 0) := "100000000000000000000000";
        variable delay : integer := 0;
    begin
        if (display = '1') then
            if (rising_edge(clk)) then
                delay := delay + 1;
                if (delay = 2000000) then
                    delay := 0;
                    state := std_logic_vector(unsigned(state) ror 1);
                    io_led(0) <= state (23 downto 16);
                    io_led(1) <= state (15 downto 8);
                    io_led(2) <= state (7 downto 0);
                end if;
            end if;
        end if;
    end process;
end behaviour;