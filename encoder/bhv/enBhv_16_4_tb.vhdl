----Shubham Prakash
----EC-B
----Roll:36
----Reg.: 20319084
----16:4 Encoder testBench (Behavioral)

library ieee;
use ieee.std_logic_1164.all;

entity enBhv_16_4_tb is
end enBhv_16_4_tb;

architecture tbArch of enBhv_16_4_tb is
    component enBhv_16_4 is
        port(
            I : in std_logic_vector(15 downto 0);
            O : out std_logic_vector(3 downto 0)
        );
    end component;
    signal I : std_logic_vector(15 downto 0);
    signal O : std_logic_vector(3 downto 0);

begin
    my_16_4_encoder : enBhv_16_4 port map (I=>I, O=>O);
    process
    begin
        i<= "0000000000000001";
        wait for 1 ns;

        i<= "0000000000000010";
        wait for 1 ns;
        
        i<= "0000000000000100";
        wait for 1 ns;
        
        i<= "0000000000001000";
        wait for 1 ns;

        i<= "0000000000010000";
        wait for 1 ns;
        
        i<= "0000000000100000";
        wait for 1 ns;
        
        i<= "0000000001000000";
        wait for 1 ns;
        
        i<= "0000000010000000";
        wait for 1 ns;
        
        i<= "0000000100000000";
        wait for 1 ns;
        
        i<= "0000001000000000";
        wait for 1 ns;
        
        i<= "0000010000000000";
        wait for 1 ns;
        
        i<= "0000100000000000";
        wait for 1 ns;
        
        i<= "0001000000000000";
        wait for 1 ns;
        
        i<= "0010000000000000";
        wait for 1 ns;

        i<= "0100000000000000";
        wait for 1 ns;
        
        i<= "1000000000000000";
        wait;
    end process;

end tbArch;