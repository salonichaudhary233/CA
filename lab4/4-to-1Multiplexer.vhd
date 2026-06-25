library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_4TO1 is
    Port (
        D : in  STD_LOGIC_VECTOR(3 downto 0);
        S : in  STD_LOGIC_VECTOR(1 downto 0);
        Y : out STD_LOGIC
    );
end MUX_4TO1;

architecture Behavioral of MUX_4TO1 is
begin
    process(D, S)
    begin
        case S is
            when "00" => Y <= D(0);
            when "01" => Y <= D(1);
            when "10" => Y <= D(2);
            when "11" => Y <= D(3);
            when others => Y <= '0';
        end case;
    end process;
end Behavioral;