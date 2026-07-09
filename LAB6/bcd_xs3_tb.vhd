library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD_XS3_TB is
end BCD_XS3_TB;

architecture Simulation of BCD_XS3_TB is

    signal BCD : STD_LOGIC_VECTOR(3 downto 0) := "0000";
    signal XS3 : STD_LOGIC_VECTOR(3 downto 0);

begin

    -- Instantiate the Unit Under Test (UUT)
    DUT : entity work.BCD_TO_XS3
        port map (
            BCD => BCD,
            XS3 => XS3
        );

    -- Stimulus Process
    STIMULUS : process
    begin
        BCD <= "0000"; wait for 10 ns; -- 0 -> 0011
        BCD <= "0001"; wait for 10 ns; -- 1 -> 0100
        BCD <= "0010"; wait for 10 ns; -- 2 -> 0101
        BCD <= "0011"; wait for 10 ns; -- 3 -> 0110
        BCD <= "0100"; wait for 10 ns; -- 4 -> 0111
        BCD <= "0101"; wait for 10 ns; -- 5 -> 1000
        BCD <= "0110"; wait for 10 ns; -- 6 -> 1001
        BCD <= "0111"; wait for 10 ns; -- 7 -> 1010
        BCD <= "1000"; wait for 10 ns; -- 8 -> 1011
        BCD <= "1001"; wait for 10 ns; -- 9 -> 1100

        wait;
    end process;

end Simulation;