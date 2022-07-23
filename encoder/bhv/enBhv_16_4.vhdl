----Shubham Prakash
----EC-B
----Roll:36
----Reg.: 20319084
----16:4 Encoder (Behavioral)

library ieee;
use ieee.std_logic_1164.all;

entity enBhv_16_4 is
    port(
        I : in std_logic_vector(15 downto 0);
        O : out std_logic_vector(3 downto 0)
    );
end enBhv_16_4;

architecture bhvArch of enBhv_16_4 is
begin
    process(i)
    begin
        if i="0000000000000001" then O<= "0000";
            elsif i="0000000000000010" then O<= "0001";
            elsif i="0000000000000100" then O<= "0010";
            elsif i="0000000000001000" then O<= "0011";
            elsif i="0000000000010000" then O<= "0100";
            elsif i="0000000000100000" then O<= "0101";
            elsif i="0000000001000000" then O<= "0110";
            elsif i="0000000010000000" then O<= "0111";
            elsif i="0000000100000000" then O<= "1000";
            elsif i="0000001000000000" then O<= "1001";
            elsif i="0000010000000000" then O<= "1010";
            elsif i="0000100000000000" then O<= "1011";
            elsif i="0001000000000000" then O<= "1100";
            elsif i="0010000000000000" then O<= "1101";
            elsif i="0100000000000000" then O<= "1110";
            else O<= "1111";
        end if;
    end process;
end bhvArch;