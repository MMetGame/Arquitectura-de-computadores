--declaracion de librerias
library IEEE;
use IEEE.STD_LOGIC_1164.all;

--definicion de las entidades
entity desplazador is
port (
    a: in std_logic_vector(0 to 31);
    y: out std_logic_vector(0 to 31)
);
end entity;

--arquitectura
architecture despl_32 of desplazador is begin
    process 
        variable temp: std_logic_vector(0 to 31);
        variable length: integer;
    begin
        length := a'LENGTH;
        temp(0) := '0'; --posicion 1
        temp(1) := '0'; --posicion 2
        for i in 2 to length-1 loop
            temp(i) := a(i);
        end loop;
        y<=temp;
    end process;
end architecture;
-- preguntar big endian o little endian???

