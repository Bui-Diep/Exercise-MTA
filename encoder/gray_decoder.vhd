library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gray_decoder is
    Port ( gray : in  STD_LOGIC_VECTOR (3 downto 0);
           binary : out  STD_LOGIC_VECTOR (3 downto 0));
end gray_decoder;

architecture Behavioral of gray_decoder is
begin
    binary(0) <= gray(0);
    binary(1) <= gray(0) xor gray(1);
    binary(2) <= gray(1) xor gray(2);
    binary(3) <= gray(2) xor gray(3);
end Behavioral;
/* In this program, the 4-bit Gray code input is passed as gray, and the decoded binary output is binary. The binary values are calculated using the exclusive-or (xor) operator and the previous bit values in the Gray code. The output is then stored in the binary vector. */