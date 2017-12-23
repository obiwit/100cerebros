library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2N is
	 generic(N : positive := 32);
    port(sel     : in  std_logic;
         input0  : in  std_logic_vector(N-1 downto 0);
         input1  : in  std_logic_vector(N-1 downto 0);
         muxOut : out std_logic_vector(N-1 downto 0));
end Mux2N;

architecture BehavAssign of Mux2N is
begin
	 muxOut <= input0 when (sel = '0')  else
              input1;
end BehavAssign;