--declaracion de librerias
library IEEE;
use IEEE.STD_LOGIC_1164.all;

--un test_bench no tiene puertos
entity adder_tb is
end entity;

--arquitectura
architecture test_bench of adder_tb is
    --declaracion del componente que sera instanciado
    component adder is
    port(
        a, b: in std_logic_vector(31 downto 0);
        y: out std_logic_vector(31 downto 0)
    );
    end component;
    signal a_tb, b_tb, y_tb: std_logic_vector(31 downto 0);
begin
    u0: adder port map (a => a_tb, b => b_tb, y => y_tb);
    process begin
    a_tb <= x"00000007";
    b_tb <= x"FF000000";
    wait for 10 ns;
    a_tb <= x"0000000F";
    --b_tb <= x"EEFF0010";
    b_tb <= x"FFFFFFFF";
    wait for 15 ns; 
    a_tb <= x"00000000";
    b_tb <= x"FFFFFFFF";
    end process;
end architecture;

-- Se compila haciendo:
-- ghdl -r adder_test_bench --stop-time=40ns --vcd =adder.vcd
