library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1 is
	port(	sel : in std_logic;
			input0 : in std_logic;
			input1 : in std_logic;
			muxOut : out std_logic);
end Mux2_1;

architecture Behavioral of Mux2_1 is
begin
	process(sel, input0, input1)
	begin
		if (sel = '0') then
			 muxOut <= input0;
		else
			muxOut <= input1;
		end if;
	end process;
end Behavioral;