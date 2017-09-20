library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TriHex is
	port(bin0 : in  std_logic_vector(3 downto 0);
		  bin1 : in  std_logic_vector(3 downto 0);
		  dig0 : out std_logic_vector(3 downto 0);
		  dig1 : out std_logic_vector(3 downto 0);
		  dig2 : out std_logic_vector(3 downto 0));
end TriHex;

architecture Behavior of TriHex is
	signal s_bin            : std_logic_vector(7 downto 0);
	signal s_dig2           : unsigned(6 downto 0);
	signal s_dig1           : unsigned(5 downto 0);
	signal s_ubin, s_rDig2  : unsigned(7 downto 0);
	signal s_rDig1          : unsigned(3 downto 0);
begin
	s_bin  <= bin1 & bin0;
	s_ubin <= unsigned(s_bin);
	
	s_dig2  <= s_ubin  rem unsigned'("1100100");
	s_rDig2 <= s_ubin   /  unsigned'("1100100");
	s_dig1  <= s_rDig2 rem unsigned'("0001010");
	s_rDig1 <= s_rDig2  /  unsigned'("1100100");
	
	dig2    <= std_logic_vector(s_dig2(3 downto 0));
	dig1    <= std_logic_vector(s_dig1(3 downto 0));
	
	dig0    <= std_logic_vector(s_rDig1(3 downto 0));
	
end Behavior;