-----Shubham Prakash
------EC - B
------Roll: 36
-----Reg. no: 20319084
-----Full Adder testBench (Behavioral)


library ieee;
use ieee.std_logic_1164.all;

entity FullAdder_tb is
end entity;

architecture tb of FullAdder_tb is
component fAdderBhv is
Port ( A : in std_logic_vector (2 downto 0);
O : out std_logic_vector (1 downto 0));
end component;

signal A : std_logic_vector(2 downto 0);
signal O : std_logic_vector(1 downto 0);

begin

uut: fAdderBhv port map(
A => A, O => O);

stim: process
begin

A <= "000";
wait for 20 ns; 

A <= "001";
wait for 20 ns;

A <= "010";
wait for 20 ns;

A <= "011";
wait for 20 ns;

A <= "100";
wait for 20 ns;

A <= "101";
wait for 20 ns;

A <= "110";
wait for 20 ns;

A <= "111";
wait for 20 ns;

wait;

end process;
end tb;