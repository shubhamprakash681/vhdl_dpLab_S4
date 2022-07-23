----Shubham Prakash
----EC-B
----Roll:36
----Reg.: 20319084
----16:4 Encoder testBench (Behavioral)

library ieee;
use ieee.std_logic_1164.all;

entity demBhv_1_16_tb is
end demBhv_1_16_tb;

architecture tB of demBhv_1_16_tb is
    component demBhv_1_16 is
        port(
            I : in std_logic;
            S : in std_logic_vector(3 downto 0);
            O : out std_logic_vector(15 downto 0)
        );
    end component;
    signal I : std_logic;
    signal S : std_logic_vector(3 downto 0);
    signal O : std_logic_vector(15 downto 0);

begin
    my_1_16_demux : demBhv_1_16 port map (
        I => I,
        S => S,
        O => O
    );
    process
    begin
        I <= '1';

        S <= "0000";
        wait for 1 ns;

        S <= "0001";
        wait for 1 ns;
        
        S <= "0010";
        wait for 1 ns;
        
        S <= "0011";
        wait for 1 ns;
        
        S <= "0100";
        wait for 1 ns;
        
        S <= "0101";
        wait for 1 ns;
        
        S <= "0110";
        wait for 1 ns;
        
        S <= "0111";
        wait for 1 ns;
        
        S <= "1000";
        wait for 1 ns;
        
        S <= "1001";
        wait for 1 ns;
        
        S <= "1010";
        wait for 1 ns;
        
        S <= "1011";
        wait for 1 ns;
        
        S <= "1100";
        wait for 1 ns;
        
        S <= "1101";
        wait for 1 ns;
        
        S <= "1110";
        wait for 1 ns;
        
        S <= "1111";
        wait for 1 ns;
        

        I <= '0';

        S <= "0000";
        wait for 1 ns;

        S <= "0001";
        wait for 1 ns;
        
        S <= "0010";
        wait for 1 ns;
        
        S <= "0011";
        wait for 1 ns;
        
        S <= "0100";
        wait for 1 ns;
        
        S <= "0101";
        wait for 1 ns;
        
        S <= "0110";
        wait for 1 ns;
        
        S <= "0111";
        wait for 1 ns;
        
        S <= "1000";
        wait for 1 ns;
        
        S <= "1001";
        wait for 1 ns;
        
        S <= "1010";
        wait for 1 ns;
        
        S <= "1011";
        wait for 1 ns;
        
        S <= "1100";
        wait for 1 ns;
        
        S <= "1101";
        wait for 1 ns;
        
        S <= "1110";
        wait for 1 ns;
        
        S <= "1111";
        wait;
    end process;

end architecture;