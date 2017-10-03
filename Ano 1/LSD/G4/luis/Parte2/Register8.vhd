library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Register8 is
	port(	clk  : in std_logic;
			dataIn 	  : in std_logic_vector(7 downto 0);
			dataOut    : out std_logic_vector(7 downto 0);
			wrEN		  : in std_logic);
end Register8;

architecture Behavioral of Register8 is
begin
	process(wrEn, clk)
	begin
		if (wrEn = '0') then
			dataOut <= "00000000";
		elsif (rising_edge(clk)) then
			dataOut <= dataIn;
		end if;
	end process;
end Behavioral;