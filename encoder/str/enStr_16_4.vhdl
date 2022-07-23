----Shubham Prakash
----EC-B
----Roll:36
----Reg.: 20319084
----16:4 Encoder (Structural)

library ieee;
use ieee.std_logic_1164.all;
entity enStr_16_4 is
    port(
        A : in std_logic_vector(15 downto 0);
        Y : out std_logic_vector(3 downto 0)
    );
end enStr_16_4;

library ieee;
use ieee.std_logic_1164.all;
entity myOrGate is
    port(
        I : in std_logic_vector(7 downto 0);
        or_Y : out std_logic
    );
end myOrGate;

architecture archOr of myOrGate is
begin
    or_Y <= I(0) or I(1) or I(2) or I(3) or I(4) or I(5) or I(6) or I(7);
end archOr;

architecture str_arch of enStr_16_4 is
    component myOrGate is
        port(
            I : in std_logic_vector(7 downto 0);
            or_Y : out std_logic
        );
    end component;

begin
    or1 : myOrGate port map(
        I(7) => A(8),
        I(6) => A(9),
        I(5) => A(10),
        I(4) => A(11),
        I(3) => A(12),
        I(2) => A(13),
        I(1) => A(14),
        I(0) => A(15),

        or_Y => Y(3)
    );
    or2 : myOrGate port map(
        I(7) => A(4),
        I(6) => A(5),
        I(5) => A(6),
        I(4) => A(7),
        I(3) => A(12),
        I(2) => A(13),
        I(1) => A(14),
        I(0) => A(15),

        or_Y => Y(2)
    );
    or3 : myOrGate port map(
        I(7) => A(2),
        I(6) => A(3),
        I(5) => A(6),
        I(4) => A(7),
        I(3) => A(10),
        I(2) => A(11),
        I(1) => A(14),
        I(0) => A(15),

        or_Y => Y(1)
    );
    or4 : myOrGate port map(
        I(7) => A(1),
        I(6) => A(3),
        I(5) => A(5),
        I(4) => A(7),
        I(3) => A(9),
        I(2) => A(11),
        I(1) => A(13),
        I(0) => A(15),

        or_Y => Y(0)
    );
end str_arch;