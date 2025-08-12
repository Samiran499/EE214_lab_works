-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
   component nand_full_adder is
     port(A, B, C: in std_logic;
         Sum, Carry: out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: nand_full_adder
			port map (
					-- order of inputs B A
					C => input_vector(0),
					B => input_vector(1),
					A => input_vector(2),
               -- order of output OUTPUT
					Sum => output_vector(1),
					Carry => output_vector(0));
end DutWrap;