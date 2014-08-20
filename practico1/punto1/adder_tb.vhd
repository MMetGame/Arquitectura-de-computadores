--declaracion de librerias
library IEEE;
use IEEE.STD_LOGIC_1164.all;

--un test_bench no tiene puertos
entity adder_tb is
end entity;

--arquitectura
architecture test_bench of adder_tb is
    --declaracion del componente que sera instanciado
    component sum
    port(
        a,b: in std_logic_vector(31 downto 0);
        y: out std_logic_vector(31 downto 0)
    );
    end component;
    signal a_tb, b_tb, y_tb: std_logic_vector(31 downto 0);
begin
    process
    begin
    a_tb <= a;
    b_tb <= b;
    y_tb <= y;
    u0: sum port map (a_tb, b_tb, y_tb);
    a_tb <= x"00000007" after 0 fs, x"00000014" after 5 fs, x"00000001" after 10 fs;
    b_tb <= x"FF000000" after 0 fs, x"EEFF0010" after 5 fs, x"FFFFFFFF" after 10 fs;
    end process;
end architecture;

-- Se compila haciendo:
-- ghdl -r adder_test_bench --stop-time=40ns --vcd =adder.vcd
