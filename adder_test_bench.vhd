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
    signal
