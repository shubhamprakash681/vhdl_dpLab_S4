-----Shubham Prakash
------EC - B
------Roll: 36
-----Reg. no: 20319084
-----Full Adder (Structural)


library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
    port(
        in1, in2, c_in : in std_logic;
        sum, c_out : out std_logic
    );
end full_adder;

library ieee;
use ieee.std_logic_1164.all;
entity  half_adder is
    port(
            x,y : in std_logic;
            sum, carry : out std_logic
        );
end  half_adder;

library ieee;
use ieee.std_logic_1164.all;
entity or_2 is
    port(
            x,y : in std_logic;
            z : out std_logic
        );
end or_2;

architecture haArch of half_adder is
begin
    sum <= x xor y;
    carry <= x and y;
end haArch;

architecture orArch of or_2 is
    begin
        z <= x or y;
end orArch;
    
architecture strArch of full_adder is
    component half_adder is
        port(
            x,y : in std_logic;
            sum, carry : out std_logic
        );
    end component;

    component or_2 is
        port(
            x,y : in std_logic;
            z : out std_logic
        );
    end component;

    signal s1, s2, s3 : std_logic;
    begin
        h1 : half_adder port map (in1, in2, s1, s2);
        h2 : half_adder port map (c_in, s1, sum, s3);
        or1 : or_2 port map (s2, s3, c_out);
end strArch;