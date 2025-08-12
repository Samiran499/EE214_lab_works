library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity nand_or is
	port(a, b: in std_logic; output: out std_logic);
end nand_or;

architecture struct of nand_or is
	signal s1, s2: std_logic;
	
	Begin
		g1: NAND_2 port map (a, a, s1);
		g2: NAND_2 port map (b, b, s2);
		g3: NAND_2 port map (s1, s2, output);
end struct;