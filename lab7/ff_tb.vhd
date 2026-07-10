library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FF_TB is
end entity FF_TB;

architecture Simulation of FF_TB is

    signal CLK : STD_LOGIC := '0';
    signal S, R : STD_LOGIC := '0';
    signal D : STD_LOGIC := '0';
    signal J, K : STD_LOGIC := '0';
    signal T : STD_LOGIC := '0';

    signal Q_SR, Q_D, Q_JK, Q_T : STD_LOGIC;
    signal QB_SR, QB_D, QB_JK, QB_T : STD_LOGIC;

    constant CLK_PERIOD : time := 10 ns;

begin

    -- Clock Generation Process
    CLK_PROCESS : process
    begin
        while now < 100 ns loop
            CLK <= '0';
            wait for CLK_PERIOD / 2;
            CLK <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
        wait;
    end process;

    -- SR Flip-Flop
    U1 : entity work.SR_FF
        port map (
            CLK => CLK,
            S   => S,
            R   => R,
            Q   => Q_SR,
            QB  => QB_SR
        );

    -- D Flip-Flop
    U2 : entity work.D_FF
        port map (
            CLK => CLK,
            D   => D,
            Q   => Q_D,
            QB  => QB_D
        );

    -- JK Flip-Flop
    U3 : entity work.JK_FF
        port map (
            CLK => CLK,
            J   => J,
            K   => K,
            Q   => Q_JK,
            QB  => QB_JK
        );

    -- T Flip-Flop
    U4 : entity work.T_FF
        port map (
            CLK => CLK,
            T   => T,
            Q   => Q_T,
            QB  => QB_T
        );

    -- Stimulus Process
    STIMULUS : process
    begin

        -- SR Flip-Flop Test
        S <= '1'; R <= '0'; wait for 10 ns;
        S <= '0'; R <= '1'; wait for 10 ns;
        S <= '0'; R <= '0'; wait for 10 ns;

        -- D Flip-Flop Test
        D <= '1'; wait for 10 ns;
        D <= '0'; wait for 10 ns;

        -- JK Flip-Flop Test
        J <= '1'; K <= '0'; wait for 10 ns;
        J <= '1'; K <= '1'; wait for 10 ns;
        J <= '0'; K <= '1'; wait for 10 ns;

        -- T Flip-Flop Test
        T <= '1'; wait for 10 ns;
        T <= '0'; wait for 10 ns;

        assert false report "Simulation finished" severity failure;
    end process;

end architecture Simulation;
