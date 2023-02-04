library ieee;
use ieee.std_logic_1164.all;

entity phase_shifter is
    port (clk : in std_logic;
          a   : out std_logic;
          b   : out std_logic);
end phase_shifter;

architecture behave of phase_shifter is
    signal counter : integer range 0 to 4 := 0;
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if counter = 4 then
                counter <= 0;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    a <= '1' when counter = 1 or counter = 2 or counter = 3 else '0';
    b <= '1' when counter = 1 or counter = 2 or counter = 0 else '0';
end behave;
