library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all; -- BEA

entity BasicWatch is
	port(SW			: in  std_logic_vector(0 downto 0);
		  CLOCK_50	: in  std_logic;
		  KEY			: in  std_logic_vector(2 downto 0);
		  HEX2		: out std_logic_vector(6 downto 0);
		  HEX3		: out std_logic_vector(6 downto 0);
		  HEX4		: out std_logic_vector(6 downto 0);
		  HEX5		: out std_logic_vector(6 downto 0);
		  HEX6		: out std_logic_vector(6 downto 0);
		  HEX7		: out std_logic_vector(6 downto 0);
		  LEDG		: out std_logic_vector(8 downto 8));
end BasicWatch;

architecture Structural of BasicWatch is

	-- Global reset signal 
	signal s_globalRst : std_logic;
	
	-- Individual reset for the seconds counters ('1' while setting min/hours)
	signal s_sReset : std_logic;
	
	-- Control signals
	signal s_mode : std_logic; -- s_mode='0'-normal operation; s_mode='1'-set min/hours
	signal s_hSet : std_logic; -- s_hSet='1'-set (fast increment) hours
	signal s_mSet : std_logic; -- s_mSet='1'-set (fast increment) minutes
	
	-- Base 4 Hz clock signal
	signal s_clk4Hz : std_logic;
	
	-- Global enable (always '1' while setting min/hours;
	-- otherwise always repeating '1', '0', '0', '0')
	signal s_globalEnb : std_logic;

	-- Binary values of each counter
	signal s_sUnitsBin, s_sTensBin	: std_logic_vector(3 downto 0);
	signal s_mUnitsBin, s_mTensBin	: std_logic_vector(3 downto 0);
	signal s_hUnitsBin, s_hTensBin	: std_logic_vector(3 downto 0);

	-- Terminal count flags of each counter
	signal s_sUnitsTerm, s_sTensTerm	: std_logic;
	signal s_mUnitsTerm, s_mTensTerm	: std_logic;
	signal s_hUnitsTerm					: std_logic;

	-- Enable signals of each counter
	signal s_sUnitsEnb, s_sTensEnb	: std_logic;
	signal s_mUnitsEnb, s_mTensEnb	: std_logic;
	signal s_hUnitsEnb, s_hTensEnb	: std_logic;
	
	-- BEA : keep track of max num of hours (i.e. 3 (when hoursTens = 2) vs 9 (when = 0 or = 1))
	-- signal s_minHours, s_maxHours : std_logic;
	signal s_h_tens_display_en       : std_logic;
	signal s_max_num_hours           : std_logic;
	signal s_max_num_s_m             : std_logic;

begin										
	-- BEA : set up vars
	s_mode      <= not KEY(1); 
	s_hSet      <= not KEY(2);
	s_mSet      <= not KEY(0);
	s_globalRst	<= SW(0);
	s_sReset		<= s_globalRst or s_mode;
	
	
	
	-- BEA : set up clk								
	clk_div_4hz : entity work.ClkDividerN(RTL)
							generic map(k			=> 12500000) -- BEA : changed from 1250000 to 12500000
							port map(clkIn			=> CLOCK_50,
										clkOut		=> s_clk4Hz);

	clk_enb_gen : entity work.ClkEnableGenerator(RTL)
							port map(clkIn4Hz		=> s_clk4Hz,
										mode			=> s_mode,
										clkEnable	=> s_globalEnb,
										tick1Hz		=> LEDG(8));
	

	
	-- BEA : calc time
	s_sUnitsEnb	<= '1'; 

	s_units_cnt : entity work.Counter4Bits(RTL)
							generic map(MAX	=> 9)
							port map(reset		=> s_sReset,
										clk		=> s_clk4Hz,
										enable1	=> s_globalEnb,
										enable2	=> s_sUnitsEnb,
										--maxChoose=> '0',
										valOut	=> s_sUnitsBin,
										termCnt	=> s_sUnitsTerm);

	s_sTensEnb <= s_sUnitsTerm;

	s_tens_cnt : entity work.Counter4Bits(RTL)
							generic map(MAX	=> 5)
							port map(reset		=> s_sReset,
										clk		=> s_clk4Hz,
										enable1	=> s_globalEnb,
										enable2	=> s_sTensEnb,
										--maxChoose=> '0',
										valOut	=> s_sTensBin,
										termCnt	=> s_sTensTerm);

	s_mUnitsEnb <= ((s_sTensTerm and s_sUnitsTerm) and (not s_mode)) or
						(s_mode and s_mSet);

	m_units_cnt : entity work.Counter4Bits(RTL)
							generic map(MAX	=> 9)
							port map(reset		=> s_globalRst,
										clk		=> s_clk4Hz,
										enable1	=> s_globalEnb,
										enable2	=> s_mUnitsEnb,
										--maxChoose=> '0',
										valOut	=> s_mUnitsBin,
										termCnt	=> s_mUnitsTerm);

	s_mTensEnb <= (s_mUnitsTerm and s_mUnitsEnb);

	m_tens_cnt : entity work.Counter4Bits(RTL)
							generic map(MAX	=> 5)
							port map(reset		=> s_globalRst,
										clk		=> s_clk4Hz,
										enable1	=> s_globalEnb,
										enable2	=> s_mTensEnb,
										--maxChoose=> '0',
										valOut	=> s_mTensBin,
										termCnt	=> s_mTensTerm);
										
										
										
	-- BEA : control max hours num
	--h_units_max_choose : entity work.BEA_IsEqual(Behavioral)
	--								port map(hTens		 => to_integer(unsigned(s_hTensBin)),
	--											mode      => 2,
	--											maxChoose => s_maxHours);
	--h_units_min_choose : entity work.BEA_IsEqual(Behavioral)
	--								port map(hTens		 => to_integer(unsigned(s_hTensBin)),
	--											mode      => 0,
	--											maxChoose => s_minHours);
							 
	s_max_num_hours <= '1' when (s_hTensBin = "0010" and s_hUnitsBin = "0100") and --'24' horas
						else '0';
	
	s_hUnitsEnb <= ((s_mTensTerm and s_mTensEnb) and not s_mode) or
						(s_mode and s_hSet);

	h_units_cnt : entity work.Counter4Bits(RTL)
							generic map(MAX	=> 9)            -- , SEC_MAX => 3)
							port map(reset		=> (s_globalRst or s_max_num_hours),
										clk		=> s_clk4Hz,
										enable1	=> s_globalEnb,
										enable2	=> s_hUnitsEnb,
										--maxChoose=> s_maxHours,
										valOut	=> s_hUnitsBin,
										termCnt	=> s_hUnitsTerm);

	s_hTensEnb <= (s_hUnitsTerm and s_hUnitsEnb);

	h_tens_cnt : entity work.Counter4Bits(RTL)
							generic map(MAX	=> 2)
							port map(reset		=> (s_globalRst or s_max_num_hours),
										clk		=> s_clk4Hz,
										enable1	=> s_globalEnb,
										enable2	=> s_hTensEnb,
										--maxChoose=> '0',
										valOut	=> s_hTensBin,
										termCnt	=> open);

										
	-- BEA : print time
	s_units_decod : entity work.Bin7SegDecoder(RTL)
							port map(enable	=> '1',
										binInput	=> s_sUnitsBin,
										decOut_n	=> HEX2);

	s_tens_decod : entity work.Bin7SegDecoder(RTL)
							port map(enable	=> '1',
										binInput	=> s_sTensBin,
										decOut_n	=> HEX3);

	m_units_decod : entity work.Bin7SegDecoder(RTL)
							port map(enable	=> '1',
										binInput	=> s_mUnitsBin,
										decOut_n	=> HEX4);

	m_tens_decod : entity work.Bin7SegDecoder(RTL)
							port map(enable	=> '1',
										binInput	=> s_mTensBin,
										decOut_n	=> HEX5);

	h_units_decod : entity work.Bin7SegDecoder(RTL)
							port map(enable	=> '1',
										binInput	=> s_hUnitsBin,
										decOut_n	=> HEX6);

	-- not enable h_tens_display if h_tens = 0
	s_h_tens_display_en <= '0' when (s_hTensBin = "0000") else '1';
	
	h_tens_decod : entity work.Bin7SegDecoder(RTL)
							port map(enable	=> s_h_tens_display_en, --(not s_minHours),
										binInput	=> s_hTensBin,
										decOut_n	=> HEX7);
end Structural;
