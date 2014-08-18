--declaracion de librerias
library IEEE;
use IEEE.STD_LOGIC_1164.all;

--entidades
entity adder is
end entity;

--arquitectura
architecture test_bench of adder is
    component adder
    port(
        a: in std_logic_vector(31 downto 0);
        b: in std_logic_vector(31 downto 0);
        y: out std_logic_vector(31 downto 0)
    );
    end component;
    signal a_prima, b_prima, y_prima: std_logic_vector(31 downto 0);
begin
    adder0: adder port map (y=>y_prima, a=>a_prima, b=>b_prima);

    process begin
    a_prima <= x"FFFFFFFF" after 0 ns;
    b_prima <= x"FFFFFFFF" after 0 ns;
    end process;
end architecture;

-- Se compila haciendo:
-- ghdl -r adder_test_bench --stop-time=40ns --vcd =adder.vcd
