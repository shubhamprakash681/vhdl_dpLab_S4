-----Shubham Prakash
------EC - B
------Roll: 36
-----Reg. no: 20319084
-----Full Adder (Behavioral)


library ieee;
use ieee.std_logic_1164.all;

entity fAdderBhv is
Port ( A : in  std_logic_vector (2 downto 0);
       O : out std_logic_vector (1 downto 0));
end fAdderBhv;

architecture bArch of fAdderBhv is

begin
process (A)
begin

if (A = "001" or A = "010" or A = "100" or A = "111") then
O(1) <= '1';

else
O(1) <= '0';
end if;

if (A = "011" or A = "101" or A = "110" or A = "111") then
O(0) <= '1';
else
O(0) <= '0';
end if;

end process;
end bArch;