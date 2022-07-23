----Shubham Prakash
----EC-B
----Roll No.: 36
----Reg. No.: 20319084
----Mod-8 Up Counter (Behavioral)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cntBhv is
    port(
        en, clk, clr : in std_logic;
        q : inout unsigned(2 downto 0)
    );
end cntBhv;

architecture bhArch of cntBhv is
begin
    process(clk, clr)
    begin
        if (clr = '1') then q <= "000";
        elsif(rising_edge(clk)) then
            if(en = '1') then q <= q+1;
            end if;

            if(q="111") then q <= "000";
            end if;
        end if;
    end process;
end bhArch;