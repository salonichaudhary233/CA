library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GRAY_TB is
end GRAY_TB;

architecture Simulation of GRAY_TB is

    signal B : STD_LOGIC_VECTOR(3 downto 0) := "0000";
    signal G : STD_LOGIC_VECTOR(3 downto 0);

begin

    -- Instantiate the Unit Under Test (UUT)
    DUT : entity work.BIN_TO_GRAY
        port map (
            B => B,
            G => G
        );

    -- Stimulus Process
    STIMULUS : process
    begin
        B <= "0000"; wait for 10 ns; -- Gray: 0000
        B <= "0001"; wait for 10 ns; -- Gray: 0001
        B <= "0010"; wait for 10 ns; -- Gray: 0011
        B <= "0011"; wait for 10 ns; -- Gray: 0010
        B <= "0100"; wait for 10 ns; -- Gray: 0110
        B <= "0101"; wait for 10 ns; -- Gray: 0111
        B <= "0110"; wait for 10 ns; -- Gray: 0101
        B <= "0111"; wait for 10 ns; -- Gray: 0100
        B <= "1000"; wait for 10 ns; -- Gray: 1100
        B <= "1001"; wait for 10 ns; -- Gray: 1101
        B <= "1010"; wait for 10 ns; -- Gray: 1111
        B <= "1011"; wait for 10 ns; -- Gray: 1110
        B <= "1100"; wait for 10 ns; -- Gray: 1010
        B <= "1101"; wait for 10 ns; -- Gray: 1011
        B <= "1110"; wait for 10 ns; -- Gray: 1001
        B <= "1111"; wait for 10 ns; -- Gray: 1000

        wait;
    end process;

end Simulation;