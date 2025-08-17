library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity encoder_4_to_2 is
	port(A, B, C, D, En: in std_logic; Y1, Y0: out std_logic);
end encoder_4_to_2;

architecture behavioral of encoder_4_to_2 is
	signal s0, s1: std_logic;
	Begin
		g1: OR_2 port map (A, C, s0);
		g2: OR_2 port map (A, B, s1);
		g3: AND_2 port map (s0, En, Y0);
		g4: AND_2 port map (s1, En, Y1);
end behavioral;