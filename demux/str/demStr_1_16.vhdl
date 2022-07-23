----Shubham Prakash
----EC-B
----Roll:36
----Reg.: 20319084
----1:16 demux (Structural)

library ieee;
use ieee.std_logic_1164.all;
entity demStr_1_16 is
    port(
        I : in std_logic;
        S : in std_logic_vector(3 downto 0);
        O : out std_logic_vector(15 downto 0)
    );
end demStr_1_16;

library ieee;
use ieee.std_logic_1164.all;
entity not_2 is
    port(
        a : in std_logic;
        a_bar : out std_logic
    );
end not_2;
architecture notArch of not_2 is
    begin
        a_bar <= not a;
end notArch;

library ieee;
use ieee.std_logic_1164.all;
entity and_5 is
    port(
        a : in std_logic;
        b : in std_logic;
        c : in std_logic;
        d : in std_logic;
        e : in std_logic;
        o : out std_logic
    );
end and_5;
architecture andArch of and_5 is
    begin
        o <= a and b and c and d and e;
end andArch;

architecture strArch of demStr_1_16 is
    component not_2 is
        port(
        a : in std_logic;
        a_bar : out std_logic
    );
    end component;

    component and_5 is
        port(
        a : in std_logic;
        b : in std_logic;
        c : in std_logic;
        d : in std_logic;
        e : in std_logic;
        o : out std_logic
    );
    end component;

    signal S3_bar : std_logic;
    signal S2_bar : std_logic;
    signal S1_bar : std_logic;
    signal S0_bar : std_logic;
    
    begin
    n1 : not_2 port map (S(3), S3_bar);
    n2 : not_2 port map (S(2), S2_bar);
    n3 : not_2 port map (S(1), S1_bar);
    n4 : not_2 port map (S(0), S0_bar);

    a0 : and_5 port map (S3_bar, S2_bar, S1_bar, S0_bar, I, O(0));
    a1 : and_5 port map (S3_bar, S2_bar, s1_bar, S(0), I, O(1));
    a2 : and_5 port map (S3_bar, S2_bar, S(1), S0_bar, I, O(2));
    a3 : and_5 port map (S3_bar, S2_bar, S(1), S(0), I, O(3));
    a4 : and_5 port map (S3_bar, S(2), S1_bar, S0_bar, I, O(4));
    a5 : and_5 port map (S3_bar, S(2), S1_bar, S(0), I, O(5));
    a6 : and_5 port map (S3_bar, S(2), S(1), S0_bar, I, O(6));
    a7 : and_5 port map (S3_bar, S(2), S(1), S(0), I, O(7));
    a8 : and_5 port map (S(3), S2_bar, S1_bar, S0_bar, I, O(8));
    a9 : and_5 port map (S(3), S2_bar, S1_bar, S(0), I, O(9));
    a10 : and_5 port map (S(3), S2_bar, S(1), S0_bar, I, O(10));
    a11 : and_5 port map (S(3), S2_bar, S(1), S(0), I, O(11));
    a12 : and_5 port map (S(3), S(2), S1_bar, S0_bar, I, O(12));
    a13 : and_5 port map (S(3), S(2), S1_bar, S(0), I, O(13));
    a14 : and_5 port map (S(3), S(2), S(1), S0_bar, I, O(14));
    a15 : and_5 port map (S(3), S(2), S(1), S(0), I, O(15));
    
end strArch;