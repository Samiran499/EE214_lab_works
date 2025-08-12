library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
--use work.XOR_gate;

entity half_adder_2 is
	port(A, B: in std_logic;
         S, C: out std_logic);
end half_adder_2;

architecture behavioral of half_adder_2 is

	component XOR_gate is
		port(a, b: in std_logic; output: out std_logic);
	end component;

	signal s1: std_logic;
	
	begin
	g1: XOR_gate port map(A, B, S);
	g2: NAND_2 port map(A, B, s1);
	g3: NAND_2 port map(s1, s1, C);
end behavioral;