----Shubham Prakash
----EC - B
----Roll: 36
----Reg.: 20319084
-----Full Adder testBench (Structural)


library ieee;
use ieee.std_logic_1164.all;

entity full_adder_tb is
end full_adder_tb;

architecture testArch of full_adder_tb is
    component full_adder is
        port(
        in1, in2, c_in : in std_logic;
        sum, c_out : out std_logic
    );
    end component;

    signal a, b, c : std_logic;
    signal sum, cout : std_logic;
begin
    uut : full_adder port map (in1 => a,in2 => b,c_in => c,sum => sum,c_out => cout);

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