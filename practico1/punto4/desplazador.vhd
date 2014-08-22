--declaracion de librerias
library IEEE;
use IEEE.STD_LOGIC_1164.all;

--definicion de las entidades
entity desplazador is
port (
    a: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0);
);
end entity;

--arquitectura
architecture despl_32 of desplazador is begin
    process 
        variable r: std_logic_vector(31 downto 0);
    begin
        r(0) := "0"; --posicion 1
        r(1) := "0"; --posicion 2
        for i in 2 to a'LENGTH-1 loop
            r(i) := a(i+2);
        end loop;
    end process;
end architecture;
-- preguntar big endian o little endian???
