library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder is
	port(enable	  : in std_logic;
		  binInput : in std_logic_vector(3 downto 0);
		  decOut_n : out std_logic_vector(6 downto 0));
end Bin7SegDecoder;

architecture Behavioral of Bin7SegDecoder is
begin
	
	decOut_n <= "1111001" when ((binInput = "0001") and (enable = '1')) else --1

	-- determine o valor das saídas para o dígito 2
	"0100100" when ((binInput = "0010") and (enable = '1')) else --2
	"0110000" when ((binInput = "0011") and (enable = '1')) else --3
	"0011001" when ((binInput = "0100") and (enable = '1')) else --4
	"0010010" when ((binInput = "0101") and (enable = '1')) else --5
	"0000010" when ((binInput = "0110") and (enable = '1')) else --6
	"1111000" when ((binInput = "0111") and (enable = '1')) else --7
	"0000000" when ((binInput = "1000") and (enable = '1')) else --8
	"0010000" when ((binInput = "1001") and (enable = '1')) else --9
	"0001000" when ((binInput = "1010") and (enable = '1')) else --A
	"0000011" when ((binInput = "1011") and (enable = '1')) else --B
	"1000110" when ((binInput = "1100") and (enable = '1')) else --C
	"0100001" when ((binInput = "1101") and (enable = '1')) else --D
	-- determine o valor das saídas para o dígito D
	"0000110" when ((binInput = "1110") and (enable = '1')) else --E
	"0001110" when ((binInput = "1111") and (enable = '1')) else --F
	"1000000"; --0
end Behavioral;