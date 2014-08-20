--declaracion de librerias
library IEEE;
use IEEE.STD_LOGIC_1164.all;

--definicion de las entidades
entity multp is
port (
    s: in std_logic;
    d0, d1: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0);
);
end entity;

--arquitectura
architecture multp_32 of multp is begin
    process begin -- no se quieda esperando por los valores s,d0,d1
        if s="0" then
            y<=d0;
        else
            y<=d1;
        end if;
    end process;
end architecture;
