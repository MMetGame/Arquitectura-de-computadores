--declaracion de librerias
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all; --función (-) y SIGNED

--definicion de las entidades
entity alu is
port (
    a, b: in std_logic_vector(0 to 31);
    alucontrol: in std_logic_vector(0 to 2);
    zero: out std_logic;
    result: out std_logic_vector(0 to 31)
);
end entity;
--definicion de la arquitectura
architecture alu_32 of alu is

begin
    process(alucontrol,a,b)
        variable temp: std_logic_vector(31 downto 0);
    begin
        case alucontrol is
            when "000" => temp:= a and b;
            when "001" => temp:= a or b;
            when "010" => temp:= std_logic_vector(unsigned(a) + unsigned(b));
            when "100" => temp:= a and (not b);
            when "101" => temp:= a or (not b);
            when "110" => temp:= std_logic_vector(unsigned(a) - unsigned(b));
            when "111" => 
                if a<b then 
                    temp := x"00000001";
                else
                    temp := x"00000000";
                end if;
            when others => temp := "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU";
        end case;
        result <= temp;
        if temp = x"00000000" then
            zero <= '1';
        else
            zero <= '0';
        end if;
    end process;
end architecture;
