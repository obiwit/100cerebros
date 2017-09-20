library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity Mux2_1 is
    port(sel     : in  std_logic;
         inputs  : in  std_logic_vector(1 downto 0);
         muxOut : out std_logic);
end Mux2_1;

architecture BehavAssign of Mux2_1 is
begin
	 muxOut <= inputs(0) when (sel = '0')  else
              inputs(1);
end BehavAssign;