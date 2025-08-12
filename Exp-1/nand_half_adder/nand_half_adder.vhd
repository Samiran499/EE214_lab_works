library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity nand_half_adder is
	port(a, b: in std_logic; S, C: out std_logic);
end nand_half_adder;

architecture struct of nand_half_adder is
	signal s1, s2, s3: std_logic;
	
	Begin
		g1: NAND_2 port map(a, b, s1);
		g2: NAND_2 port map (a, s1, s2);
		g3: NAND_2 port map (b, s1, s3);
		g4: NAND_2 port map (s2, s3, S);
		g5: NAND_2 port map (s1, s1, C);
end struct;