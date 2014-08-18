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
        y <= std_logic_vector(SIGNED(a) + SIGNED(b));
    end process;
end architecture;

-- 
--para compilar tenemos
--ghdl -a -Wc,-m32 -Wa,--32 nombre.vhdl
     
