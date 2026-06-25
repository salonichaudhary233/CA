library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DEMUX_1TO4 is
    Port (
        D : in  STD_LOGIC;
        S : in  STD_LOGIC_VECTOR(1 downto 0);
        Y : out STD_LOGIC_VECTOR(3 downto 0)
    );
end DEMUX_1TO4;

architecture Behavioral of DEMUX_1TO4 is
begin
    Y(0) <= D when S = "00" else '0';
    Y(1) <= D when S = "01" else '0';
    Y(2) <= D when S = "10" else '0';
    Y(3) <= D when S = "11" else '0';
end Behavioral;