library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity nand_full_adder is
	port(a, b, c: in std_logic; sum, carry: out std_logic);
end nand_full_adder;

architecture struct of nand_full_adder is
	signal s1, s2, s3, s4, s5, s6, s7: std_logic;
	
	Begin
	g1: NAND_2 port map(a, b, s1);
	g2: NAND_2 port map(a, s1, s2);
	g3: NAND_2 port map(b, s1, s3);
	g4: NAND_2 port map(s2, s3, s4);
	g5: NAND_2 port map(c, s4, s5);
	g6: NAND_2 port map(s4, s5, s6);
	g7: NAND_2 port map(s5, c, s7);
	g8: NAND_2 port map(s6, s7, sum);
	g9: NAND_2 port map(s1, s5, carry);
end struct;