library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1 is
	port(	sel		: in std_logic_vector(1 downto 0);
			inputs	: in std_logic_vector(1 downto 0);
			outputs	: out std_logic_vector(1 downto 0));
end Mux2_1;

architecture Behavioral of Mux2_1 is
begin
	