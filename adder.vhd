--declaracion de las librerias--
library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.NUMERIC_STD.all; --función (+) y UNSIGNED

--definicion de las entidades--
entity adder is
port (
        a: in std_logic_vector(31 downto 0);
        b: in std_logic_vector(31 downto 0);
        y: out std_logic_vector(31 downto 0)
);
end entity;

--definicion de la arquitectura--
architecture adder_log of adder is begin
    process (a, b) is begin
        y <= std_logic_vector(UNSIGNED(a) + UNSIGNED(b));
    end process;
end architecture;

-- (+) es un operador que en este caso recibe dos std_logic_vector y devuelve un
-- std_logic_vector.
--
--para compilar tenemos
--ghdl -a -Wc,-m32 -Wa,--32 nombre.vhdl
     
