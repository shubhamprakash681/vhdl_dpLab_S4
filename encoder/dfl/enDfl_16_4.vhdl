----Shubham Prakash
----EC-B
----Roll:36
----Reg.: 20319084
----16:4 Encoder (Dataflow)

library ieee;
use ieee.std_logic_1164.all;

entity enDfl_16_4 is
    port(
        A : in std_logic_vector(15 downto 0);
        Y : out std_logic_vector(3 downto 0)
    );
end enDfl_16_4;

architecture dflArch of enDfl_16_4 is
begin
    Y(0) <= A(1) or A(3) or A(5) or A(7) or A(9) or A(11) or A(13) or A(15);
    Y(1) <= A(2) or A(3) or A(6) or A(7) or A(10) or A(11) or A(14) or A(15);
    Y(2) <= A(4) or A(5) or A(6) or A(7) or A(12) or A(13) or A(14) or A(15);
    Y(3) <= A(8) or A(9) or A(10) or A(11) or A(12) or A(13) or A(14) or A(15);
end dflArch;