--librerias
library ieee;
use ieee.std_logic_1164.all;

--entidades
entity rom_tb is
    generic (bits: integer := 32; words: integer := 64; bits_in: integer := 6); 
end rom_tb;

--arquitectura
architecture behav of rom_tb is
    component rom is
        port (
                a: in std_logic_vector(bits_in-1 downto 0);
                y: out std_logic_vector(bits-1 downto 0)
        );
    end component;
signal a_s: std_logic_vector(bits_in-1 downto 0);
signal y_s: std_logic_vector(bits-1 downto 0);

begin
    u0: rom port map(a=>a_s, y=>y_s);
    process
    begin
        a_s <= "100000";
        wait for 5 ns;
        a_s <= "000100";
        wait for 5 ns;
        a_s <= "111000";
        wait for 5 ns;
        a_s <= "111111";
        wait for 5 ns;
        a_s <= "110000";
        wait for 5 ns;
        a_s <= "101010";
    end process;
end architecture;
