-----Shubham Prakash
------EC - B
------Roll: 36
-----Reg. no: 20319084
-----Full Adder testBench (Dataflow)


library ieee;
use ieee.std_logic_1164.all;

entity full_adder_tb is
end full_adder_tb;

architecture testArch of full_adder_tb is
    component fa is
        port (
        a: in std_logic;
        b: in std_logic;
        c: in std_logic;
        sum: out std_logic;
        cout: out std_logic
    );
    end component;

    signal a, b, c : std_logic;
    signal sum, cout : std_logic;
begin
    uut : fa port map (a, b, c, sum, cout);

    process
    begin
        a <= '0'; b <= '0'; c <= '0';
        wait for 1 ns;

        a <= '0'; b <= '0'; c <= '1';
        wait for 1 ns;
        
        a <= '0'; b <= '1'; c <= '0';
        wait for 1 ns;

        a <= '0'; b <= '1'; c <= '1';
        wait for 1 ns;
        
        a <= '1'; b <= '0'; c <= '0';
        wait for 1 ns;

        a <= '1'; b <= '0'; c <= '1';
        wait for 1 ns;
        
        a <= '1'; b <= '1'; c <= '0';
        wait for 1 ns;

        a <= '1'; b <= '1'; c <= '1';
        wait for 1 ns;

        a <= '0'; b <= '0'; c <= '0';
        wait;
        
    end process;
end testArch;