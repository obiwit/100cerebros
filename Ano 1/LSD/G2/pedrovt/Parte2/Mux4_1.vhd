library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux4_1 is
	port(sel 	 : in std_logic_vector (1 downto 0);
		  dataln	 : in std_logic_vector (3 downto 0);
		  out1    : out std_logic);

end Mux4_1;

architecture BehavProc of Mux4_1 is
begin
	process(sel, dataln)
	begin
		if (sel = "00") then
			out1 <= dataln(0);
		elsif (sel = "01") then
			out1 <= dataln(1);
		elsif (sel = "10") then
			out1 <= dataln(2);
		elsif (sel = "11") then
			out1 <= dataln(3);
		end if;
	end process;
end BehavProc;
