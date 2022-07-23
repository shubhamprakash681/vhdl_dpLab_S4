----Shubham Prakash
----EC-B
----Roll No.: 36
----Reg. No.: 20319084
----Mod-8 Up-cum-Down Counter testbench (Behavioral)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cntBhv_tb is
end cntBhv_tb;

architecture tbArch of cntBhv_tb is
    component cntBhv is
        port(
            en, clk, modBit, clr : in std_logic;
            q : inout unsigned(2 downto 0)
        );
    end component;

    signal en, clk, modBit, clr : std_logic;
    signal q : unsigned(2 downto 0);
    
begin
    myCounter : cntBhv port map(en, clk, modBit, clr, q);

    clk_prcss : process
    begin
        en <= '1';
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

    sim_prcss : process
    begin
        clr <= '1';
        wait for 20 ns;
        clr <= '0';
        wait;
    end process;

    modBiot_prcss : process
    begin
        modBit <= '0';
        wait for 160 ns;
        modBit <= '1';
        wait for 160 ns;
    end process;
end tbArch;