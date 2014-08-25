--declaracion de librerias
library IEEE;
use IEEE.STD_LOGIC_1164.all;

--definicion de las entidades
entity signext is
port (
    a: in std_logic_vector(0 to 15);
    y: out std_logic_vector(0 to 31));
end entity;

--arquitectura
architecture signext_32 of signext is begin
    process
        --variables auxiliares
        variable temp: std_logic_vector(0 to 31);
        variable length: integer;
    begin
        length:=32;
        if (a(0)='0') then
            for i in 0 to (length/2)-1 loop
                temp(i) := '0';
            end loop;
        else
            for i in (length/2) to length-1 loop
                temp(i) := '1';
            end loop;
        end if;
        for i in (length)/2 to length-1 loop
            temp(i):=a(i);
        end loop;
        y<=temp;
    end process;
end architecture;

