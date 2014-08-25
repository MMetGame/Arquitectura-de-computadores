--librerias
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--entidades
entity rom is
    generic (bits: integer := 32; words: integer := 64; bits_in: integer := 6); 
    port (
            a: in std_logic_vector(bits_in-1 downto 0);
            y: out std_logic_vector(bits-1 downto 0)
    );
end entity;

--arquitectura
architecture rom_32 of rom is
    type type_mem is array (0 to words-1) of std_logic_vector(bits-1 downto 0); --Es una matriz
begin
    process(a) 
        variable mem: type_mem;
    begin
        for var in 0 to words-1 loop
            --Converts a non-negative INTEGER to an UNSIGNED vector withthe specified SIZE.
            mem(var) := std_logic_vector(to_unsigned(var, bits));
        end loop;
        report "puto";
        y<=mem(to_integer(unsigned(a)));
        report "nunca llego"; 
    end process;
end architecture;
