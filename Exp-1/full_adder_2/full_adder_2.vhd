library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity full_adder_2 is
	port(A, B, Cin: in std_logic; S, Cout: out std_logic);
end full_adder_2;

architecture behavioral of full_adder_2 is	
	component half_adder_2 is
		port(A, B: in std_logic;
         S, C: out std_logic);
	end component;
	
	signal s1, s2, s3, c1, c2: std_logic;
	
	begin
	g1: half_adder_2 port map(A, B, s1, c1);
	g2: half_adder_2 port map(s1, Cin, S, c2);
	g3: NAND_2 port map(c1, c1, s2);
	g4: NAND_2 port map(c2, c2, s3);
	g5: NAND_2 port map(s2, s3, Cout);
end behavioral;