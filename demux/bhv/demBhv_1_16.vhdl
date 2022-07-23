----Shubham Prakash
----EC-B
----Roll:36
----Reg.: 20319084
----16:4 Encoder (Behavioral)

library ieee;
use ieee.std_logic_1164.all;

entity demBhv_1_16 is
    port(
        I : in std_logic;
        S : in std_logic_vector(3 downto 0);
        O : out std_logic_vector(15 downto 0)
    );
end demBhv_1_16;

architecture bhvArch of demBhv_1_16 is
begin
    process (S, I) is
    begin
            O <= "0000000000000000";
            if (S="0000") then O(0) <=I;
            elsif (S="0001") then O(1) <=I;
            elsif (S="0010") then O(2) <=I;
            elsif (S="0011") then O(3) <=I;
            elsif (S="0100") then O(4) <=I;
            elsif (S="0101") then O(5) <=I;
            elsif (S="0110") then O(6) <=I;
            elsif (S="0111") then O(7) <=I;
            elsif (S="1000") then O(8) <=I;
            elsif (S="1001") then O(9) <=I;
            elsif (S="1010") then O(10) <=I;
            elsif (S="1011") then O(11) <=I;
            elsif (S="1100") then O(12) <=I;
            elsif (S="1101") then O(13) <=I;
            elsif (S="1110") then O(14) <=I;
            elsif (S="1111") then O(15) <=I;
        end if;
    end process;
end bhvArch;