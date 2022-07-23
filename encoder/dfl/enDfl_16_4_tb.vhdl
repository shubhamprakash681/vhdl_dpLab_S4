----Shubham Prakash
----EC-B
----Roll:36
----Reg.: 20319084
----16:4 Encoder testBench (Dataflow)

library ieee;
use ieee.std_logic_1164.all;

entity enDfl_16_4_tb is
end enDfl_16_4_tb;

architecture dflTest of enDfl_16_4_tb is
    component enDfl_16_4 is
        port(
            A : in std_logic_vector(15 downto 0);
            Y : out std_logic_vector(3 downto 0)
        );
    end component;
    signal A : std_logic_vector(15 downto 0);
    signal Y : std_logic_vector(3 downto 0);

begin
    my_16_4_encoder : enDfl_16_4 port map (A=>A, Y=>Y);
    process
    begin
        A<= "0000000000000001";
        wait for 1 ns;

        A<= "0000000000000010";
        wait for 1 ns;
        
        A<= "0000000000000100";
        wait for 1 ns;
        
        A<= "0000000000001000";
        wait for 1 ns;

        A<= "0000000000010000";
        wait for 1 ns;
        
        A<= "0000000000100000";
        wait for 1 ns;
        
        A<= "0000000001000000";
        wait for 1 ns;
        
        A<= "0000000010000000";
        wait for 1 ns;
        
        A<= "0000000100000000";
        wait for 1 ns;
        
        A<= "0000001000000000";
        wait for 1 ns;
        
        A<= "0000010000000000";
        wait for 1 ns;
        
        A<= "0000100000000000";
        wait for 1 ns;
        
        A<= "0001000000000000";
        wait for 1 ns;
        
        A<= "0010000000000000";
        wait for 1 ns;

        A<= "0100000000000000";
        wait for 1 ns;
        
        A<= "1000000000000000";
        wait;
    end process;
end dflTest;