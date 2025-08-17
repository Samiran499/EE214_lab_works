library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity encoder_8_to_3 is
	port(Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7, En: in std_logic; A0, A1, A2: out std_logic);
end encoder_8_to_3;

architecture behavioral of encoder_8_to_3 is
	component encoder_4_to_2 is
		port(A, B, C, D, En: in std_logic; Y1, Y0: out std_logic);
	end component;
	
	signal s0, s1, s2, s3, s4, s5: std_logic;
	
	begin
		g1: encoder_4_to_2 port map(Y4, Y5, Y6, Y7, En, s5, s4);
		g2: encoder_4_to_2 port map(Y7, Y6, Y5, Y4, En, s3, s2);
		g3: encoder_4_to_2 port map(Y3, Y2, Y1, Y0, En, s1, s0);
		g4: OR_2 port map(s5, s3, A2);
		g5: OR_2 port map(s2, s0, A0);
		g6: OR_2 port map(s1, s3, A1);
end behavioral;