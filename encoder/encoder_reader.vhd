library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder_reader is
    Port ( clk : in  STD_LOGIC;
           signal_A : in  STD_LOGIC;
           signal_B : in  STD_LOGIC;
           direction : out  STD_LOGIC);
end encoder_reader;

architecture Behavioral of encoder_reader is
    signal previous_A : STD_LOGIC := '0';
begin
    process (clk)
    begin
        if (clk'event and clk = '1') then
            if (previous_A = '0' and signal_A = '1') then
                if (signal_B = '0') then
                    direction <= '1';
                else
                    direction <= '0';
                end if;
            end if;
            previous_A <= signal_A;
        end if;
    end process;
end Behavioral;

/* In this program, the relative encoder communicates with the digital system through the inputs clk, signal_A, and signal_B. The clk input is used to sample the signals from the encoder, and the output direction indicates the direction of rotation. The signal previous_A is used to store the previous value of signal_A, and the process block updates the direction whenever a rising edge is detected on the clk input and the value of signal_A changes from 0 to 1. If signal_B is 0 when this occurs, the direction is set to 1, indicating a clockwise rotation. If signal_B is 1, the direction is set to 0, indicating a counter-clockwise rotation. */