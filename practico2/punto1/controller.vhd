library ieee;
use ieee.std_logic_1164.all;

--entidades
entity controller is
    port(
        Op, Funct: in std_logic_vector(5 downto 0);
        MemToReg, MemWrite, Branch, AluSrc, RegDst, RegWrite, Jump: out std_logic;
        AluControl: out std_logic_vector(2 downto 0)
        );
end entity;

--arquitectura
architecture controller_32 of controller is
    component aludec
        port(
            funct: in std_logic_vector(5 downto 0);
            aluop: in std_logic_vector(1 downto 0);
            alucontrol: out std_logic_vector(2 downto 0)
            );
    end component;

    component maindec
        port(
            Op: in std_logic_vector(5 downto 0);
            MemToReg, MemWrite, Branch, AluSrc, RegDst, RegWrite, Jump: out std_logic;
            AluOp: in std_logic_vector(1 downto 0)
            );
    end component;

    signal AluOp: std_logic_vector(1 downto 0);
begin
    u0: maindec port map(Op, MemToReg, MemWrite, Branch, AluSrc, RegDst, RegWrite, Jump, AluOp);
    u1: aludec port map(Funct=>funct, AluOp=>aluop, AluControl=>alucontrol);
end architecture;
