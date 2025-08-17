library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity priority_encoder_4_to_2 is
	port(A, B, C, D: in std_logic; Y1, Y0, V: out std_logic);
end priority_encoder_4_to_2;

architecture behavioral of priority_encoder_4_to_2 is
	signal s1, s2, s3, s4: std_logic;
	
	Begin
		g1: OR_2 port map(A, B, Y1);
		g2: INVERTER port map(B, s1);
		g3: AND_2 port map(s1, C, s2);
		g4: OR_2 port map(A, B, s4);
		g5: OR_2 port map(A, s2, Y0);
		g6: OR_2 port map(C, D, s3);
		g7: OR_2 port map(s4, s3, V);
end behavioral;