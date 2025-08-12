library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity XOR_gate is
	port(a, b: in std_logic; output: out std_logic);
end XOR_gate;

architecture struct of XOR_gate is
	signal s1, s2, s3: std_logic;
	
Begin
	g1: NAND_2 port map (a, b, s1);
	g2: NAND_2 port map (a, s1, s2);
	g3: NAND_2 port map (b, s1, s3);
	g4: NAND_2 port map (s2, s3, output);
end struct;