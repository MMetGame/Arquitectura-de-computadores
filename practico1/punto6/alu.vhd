--declaracion de librerias
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all; --función (-) y SIGNED

--definicion de las entidades
entity alu is
port (
    a, b: in std_logic_vector(0 to 31);
    alucontrol: out std_logic_vector(0 to 2);
    zero: out std_logic;
    result: out std_logic_vector(0 to 31);
);
end entity;
--definicion de la arquitectura
architecture alu_32 of alu is begin
    process
    begin
        with alucontrol select
            result <= (a and b) when "000",
                    (a or b) when "001",
                    std_logic_vector(SIGNED(a) + SIGNED(b)) when "001",
                    (a and not(b)) when "100",
                    (a or not(b)) when "101",
                    std_logic_vector(SIGNED(a)-SIGNED(b)) when "110",
                    (if a<b then result <= x'00000001';
                    else result <= x'00000000';
                    end if); when "111",
                    null when others;
        if result = x'00000000' then
            zero <= 1;
        else
            zero <= 0;
        end if;
end architecture;
