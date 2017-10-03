library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1 is
	port(sel 	 : in std_logic;
		  dataln	 : in std_logic_vector (1 downto 0);
		  out1    : out std_logic);

end Mux2_1;

architecture BehavProc of Mux2_1 is
begin
	process(sel, dataln)
	begin
		if (sel = '0') then
			out1 <= dataln(0);
		else
			out1 <= dataln(1);
		end if;
	end process;
end BehavProc;
