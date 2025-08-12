library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity nand_and is
	port(a, b: in std_logic; output: out std_logic);
end nand_and;

architecture struct of nand_and is
	signal s1: std_logic;

Begin
	g1: NAND_2 port map (a, b, s1);
	g2: NAND_2 port map (s1, s1, output);
end struct;