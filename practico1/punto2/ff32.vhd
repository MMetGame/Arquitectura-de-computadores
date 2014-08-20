--declaracion de las librerias--
library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.NUMERIC_STD.all; --función (+) y UNSIGNED

--definicion de las entidades--
entity ff32 is
port (
    d: in std_logic_vector(31 downto 0);
    q: out std_logic_vector(31 downto 0);
    reset, clk: in std_logic
);
end entity;

--definicion de la arquitectura--
architecture ff_32_arch of ff32 is begin
    process (reset, clk) begin
        if (reset = '1') then
            q<=x"00000001";
        elsif (clk'EVENT and clk='1') then
            q<=d;
        end if;
    end process;

end architecture;
