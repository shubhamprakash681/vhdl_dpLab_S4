----Shubham Prakash
----EC-B
----Roll:36
----Reg.: 20319084
----1:16 demux (Dataflow)

library ieee;
use ieee.std_logic_1164.all;

entity demDfl_1_16 is
    port(
        I : in std_logic;
        S : in std_logic_vector(3 downto 0);
        O : out std_logic_vector(15 downto 0)
    );
end demDfl_1_16;

architecture dflArch of demDfl_1_16 is
begin
    O(0) <= (not S(3)) and (not S(2)) and (not S(1)) and (not S(0)) and I;
    O(1) <= (not S(3)) and (not S(2)) and (not S(1)) and (S(0)) and I;
    O(2) <= (not S(3)) and (not S(2)) and (S(1)) and (not S(0)) and I;
    O(3) <= (not S(3)) and (not S(2)) and (S(1)) and (S(0)) and I;
    O(4) <= (not S(3)) and (S(2)) and (not S(1)) and (not S(0)) and I;
    O(5) <= (not S(3)) and (S(2)) and (not S(1)) and (S(0)) and I;
    O(6) <= (not S(3)) and (S(2)) and (S(1)) and (not S(0)) and I;
    O(7) <= (not S(3)) and (S(2)) and (S(1)) and (S(0)) and I;
    O(8) <= (S(3)) and (not S(2)) and (not S(1)) and (not S(0)) and I;
    O(9) <= (S(3)) and (not S(2)) and (not S(1)) and (S(0)) and I;
    O(10) <= (S(3)) and (not S(2)) and (S(1)) and (not S(0)) and I;
    O(11) <= (S(3)) and (not S(2)) and (S(1)) and (S(0)) and I;
    O(12) <= (S(3)) and (S(2)) and (not S(1)) and (not S(0)) and I;
    O(13) <= (S(3)) and (S(2)) and (not S(1)) and (S(0)) and I;
    O(14) <= (S(3)) and (S(2)) and (S(1)) and (not S(0)) and I;
    O(15) <= (S(3)) and (S(2)) and (S(1)) and (S(0)) and I;
    
end dflArch;