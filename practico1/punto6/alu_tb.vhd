library ieee;
use ieee.std_logic_1164.all;
 
entity alu_tb is
end alu_tb;
 
architecture behav of alu_tb is
    component alu is
        port (
            a, b: in std_logic_vector (31 downto 0);
            alucontrol: in std_logic_vector (2 downto 0);
            result: out std_logic_vector (31 downto 0);
            zero: out std_logic
        );
    end component;
-- Luego de declarar los componentes y las señales,
signal a_s, b_s, result_s: std_logic_vector(31 downto 0);
signal alucontrol_s: std_logic_vector(2 downto 0);
signal zero_s: std_logic;
begin
    u0: ALU port map(a=>a_s, b=>b_s, alucontrol=>alucontrol_s, zero=>zero_s, result=>result_s);
    process
    begin
        alucontrol_s <= "011"; -- nada!!!
        wait for 5 ns;
        alucontrol_s <= "010"; --suma
        wait for 5 ns;
        alucontrol_s <= "100"; -- a and (not b)
        wait for 5 ns;
        alucontrol_s <= "001"; -- a or b
        wait for 5 ns;
    end process;
    process
    begin
        a_s <= x"66271000";
        wait for 5 ns;
        a_s <= x"66271000";
        wait for 5 ns;
        a_s <= x"11111111";
        wait for 5 ns;
        a_s <= x"11111100";
        wait for 5 ns;
    end process;
    process
    begin
        b_s <= x"AA110000";
        wait for 5 ns;
        b_s <= x"00000000";
        wait for 5 ns;
        b_s <= x"11111111";
        wait for 5 ns;
        b_s <= x"00000011";
        wait for 5 ns;
    end process;

end architecture;
