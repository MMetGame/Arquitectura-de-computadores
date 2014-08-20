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

end architecture;
