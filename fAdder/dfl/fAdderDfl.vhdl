-----Shubham Prakash
------EC - B
------Roll: 36
-----Reg. no: 20319084
-----Full Adder (Dataflow)


library ieee;
use ieee.std_logic_1164.all;

entity fa is
    port (
        a: in std_logic;
        b: in std_logic;
        c: in std_logic;
        sum: out std_logic;
        cout: out std_logic
    );
end fa;

architecture dflArch1 of fa is
    begin
        sum<= (a xor b) xor c;
        cout<= (a and b) or (b and c) or (c and a);
end dflArch1;