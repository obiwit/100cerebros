-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.1 Build 189 12/02/2015 SJ Lite Edition"

-- DATE "04/18/2017 18:43:59"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DrinksMachine IS
    PORT (
	LEDG : OUT std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(1 DOWNTO 0)
	);
END DrinksMachine;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DrinksMachine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|s_count[0]~31_combout\ : std_logic;
SIGNAL \inst3|s_count[0]~32\ : std_logic;
SIGNAL \inst3|s_count[1]~33_combout\ : std_logic;
SIGNAL \inst3|s_count[1]~34\ : std_logic;
SIGNAL \inst3|s_count[2]~35_combout\ : std_logic;
SIGNAL \inst3|s_count[2]~36\ : std_logic;
SIGNAL \inst3|s_count[3]~37_combout\ : std_logic;
SIGNAL \inst3|s_count[3]~38\ : std_logic;
SIGNAL \inst3|s_count[4]~39_combout\ : std_logic;
SIGNAL \inst3|s_count[4]~40\ : std_logic;
SIGNAL \inst3|s_count[5]~41_combout\ : std_logic;
SIGNAL \inst3|s_count[5]~42\ : std_logic;
SIGNAL \inst3|s_count[6]~43_combout\ : std_logic;
SIGNAL \inst3|s_count[6]~44\ : std_logic;
SIGNAL \inst3|s_count[7]~45_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst2|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst2|s_dirtyIn~q\ : std_logic;
SIGNAL \inst2|s_previousIn~q\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[0]~0_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst2|Add0~19\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst2|Add0~21\ : std_logic;
SIGNAL \inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst2|Add0~23\ : std_logic;
SIGNAL \inst2|Add0~24_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst2|Add0~25\ : std_logic;
SIGNAL \inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \inst2|Add0~27\ : std_logic;
SIGNAL \inst2|Add0~28_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst2|Add0~29\ : std_logic;
SIGNAL \inst2|Add0~30_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst2|Add0~31\ : std_logic;
SIGNAL \inst2|Add0~32_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst2|Add0~33\ : std_logic;
SIGNAL \inst2|Add0~34_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst2|Add0~35\ : std_logic;
SIGNAL \inst2|Add0~36_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \inst2|LessThan0~4_combout\ : std_logic;
SIGNAL \inst2|LessThan0~5_combout\ : std_logic;
SIGNAL \inst2|LessThan0~6_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|LessThan0~3_combout\ : std_logic;
SIGNAL \inst2|LessThan0~7_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[0]~4_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[0]~2_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[0]~3_combout\ : std_logic;
SIGNAL \inst2|Add0~37\ : std_logic;
SIGNAL \inst2|Add0~38_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \inst2|Add0~39\ : std_logic;
SIGNAL \inst2|Add0~40_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \inst2|Add0~41\ : std_logic;
SIGNAL \inst2|Add0~42_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \inst2|Add0~43\ : std_logic;
SIGNAL \inst2|Add0~44_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst2|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst2|s_pulsedOut~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst1|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst1|s_dirtyIn~q\ : std_logic;
SIGNAL \inst1|s_previousIn~q\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \inst1|Add0~27\ : std_logic;
SIGNAL \inst1|Add0~28_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst1|Add0~29\ : std_logic;
SIGNAL \inst1|Add0~30_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst1|Add0~31\ : std_logic;
SIGNAL \inst1|Add0~32_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst1|Add0~33\ : std_logic;
SIGNAL \inst1|Add0~34_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst1|Add0~35\ : std_logic;
SIGNAL \inst1|Add0~36_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \inst1|Add0~37\ : std_logic;
SIGNAL \inst1|Add0~38_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst1|Add0~39\ : std_logic;
SIGNAL \inst1|Add0~40_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[18]~2_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[18]~3_combout\ : std_logic;
SIGNAL \inst1|Add0~41\ : std_logic;
SIGNAL \inst1|Add0~42_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \inst1|LessThan0~4_combout\ : std_logic;
SIGNAL \inst1|LessThan0~5_combout\ : std_logic;
SIGNAL \inst1|LessThan0~6_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|LessThan0~3_combout\ : std_logic;
SIGNAL \inst1|LessThan0~7_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[18]~0_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst1|Add0~43\ : std_logic;
SIGNAL \inst1|Add0~44_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[18]~4_combout\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~q\ : std_logic;
SIGNAL \inst|pState~12_combout\ : std_logic;
SIGNAL \inst|pState~13_combout\ : std_logic;
SIGNAL \inst|pState.S0~q\ : std_logic;
SIGNAL \inst|pState~10_combout\ : std_logic;
SIGNAL \inst|pState~11_combout\ : std_logic;
SIGNAL \inst|pState.S1~q\ : std_logic;
SIGNAL \inst|pState~8_combout\ : std_logic;
SIGNAL \inst|pState~9_combout\ : std_logic;
SIGNAL \inst|pState.S2~q\ : std_logic;
SIGNAL \inst|pState~6_combout\ : std_logic;
SIGNAL \inst|pState~7_combout\ : std_logic;
SIGNAL \inst|pState.S3~q\ : std_logic;
SIGNAL \inst3|s_count[7]~46\ : std_logic;
SIGNAL \inst3|s_count[8]~47_combout\ : std_logic;
SIGNAL \inst3|s_count[8]~48\ : std_logic;
SIGNAL \inst3|s_count[9]~49_combout\ : std_logic;
SIGNAL \inst3|s_count[9]~50\ : std_logic;
SIGNAL \inst3|s_count[10]~51_combout\ : std_logic;
SIGNAL \inst3|s_count[10]~52\ : std_logic;
SIGNAL \inst3|s_count[11]~53_combout\ : std_logic;
SIGNAL \inst3|s_count[11]~54\ : std_logic;
SIGNAL \inst3|s_count[12]~55_combout\ : std_logic;
SIGNAL \inst3|p1~0_combout\ : std_logic;
SIGNAL \inst3|s_count[12]~56\ : std_logic;
SIGNAL \inst3|s_count[13]~57_combout\ : std_logic;
SIGNAL \inst3|s_count[13]~58\ : std_logic;
SIGNAL \inst3|s_count[14]~59_combout\ : std_logic;
SIGNAL \inst3|s_count[14]~60\ : std_logic;
SIGNAL \inst3|s_count[15]~61_combout\ : std_logic;
SIGNAL \inst3|s_count[15]~62\ : std_logic;
SIGNAL \inst3|s_count[16]~63_combout\ : std_logic;
SIGNAL \inst3|s_count[16]~64\ : std_logic;
SIGNAL \inst3|s_count[17]~65_combout\ : std_logic;
SIGNAL \inst3|s_count[17]~66\ : std_logic;
SIGNAL \inst3|s_count[18]~67_combout\ : std_logic;
SIGNAL \inst3|s_count[18]~68\ : std_logic;
SIGNAL \inst3|s_count[19]~69_combout\ : std_logic;
SIGNAL \inst3|s_count[19]~70\ : std_logic;
SIGNAL \inst3|s_count[20]~71_combout\ : std_logic;
SIGNAL \inst3|s_count[20]~72\ : std_logic;
SIGNAL \inst3|s_count[21]~73_combout\ : std_logic;
SIGNAL \inst3|s_count[21]~74\ : std_logic;
SIGNAL \inst3|s_count[22]~75_combout\ : std_logic;
SIGNAL \inst3|s_count[22]~76\ : std_logic;
SIGNAL \inst3|s_count[23]~77_combout\ : std_logic;
SIGNAL \inst3|s_count[23]~78\ : std_logic;
SIGNAL \inst3|s_count[24]~79_combout\ : std_logic;
SIGNAL \inst3|s_count[24]~80\ : std_logic;
SIGNAL \inst3|s_count[25]~81_combout\ : std_logic;
SIGNAL \inst3|s_count[25]~82\ : std_logic;
SIGNAL \inst3|s_count[26]~83_combout\ : std_logic;
SIGNAL \inst3|s_count[26]~84\ : std_logic;
SIGNAL \inst3|s_count[27]~85_combout\ : std_logic;
SIGNAL \inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|p1~1_combout\ : std_logic;
SIGNAL \inst3|p1~2_combout\ : std_logic;
SIGNAL \inst3|s_count[27]~86\ : std_logic;
SIGNAL \inst3|s_count[28]~87_combout\ : std_logic;
SIGNAL \inst3|s_count[28]~88\ : std_logic;
SIGNAL \inst3|s_count[29]~89_combout\ : std_logic;
SIGNAL \inst3|s_count[29]~90\ : std_logic;
SIGNAL \inst3|s_count[30]~91_combout\ : std_logic;
SIGNAL \inst3|Equal0~8_combout\ : std_logic;
SIGNAL \inst3|Equal0~4_combout\ : std_logic;
SIGNAL \inst3|Equal0~6_combout\ : std_logic;
SIGNAL \inst3|Equal0~3_combout\ : std_logic;
SIGNAL \inst3|Equal0~5_combout\ : std_logic;
SIGNAL \inst3|Equal0~7_combout\ : std_logic;
SIGNAL \inst3|Equal0~9_combout\ : std_logic;
SIGNAL \inst3|pulseOut~0_combout\ : std_logic;
SIGNAL \inst3|pulseOut~feeder_combout\ : std_logic;
SIGNAL \inst3|pulseOut~q\ : std_logic;
SIGNAL \inst3|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst1|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst2|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst3|ALT_INV_pulseOut~0_combout\ : std_logic;

BEGIN

LEDG <= ww_LEDG;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\inst3|ALT_INV_pulseOut~0_combout\ <= NOT \inst3|pulseOut~0_combout\;

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|pulseOut~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X99_Y41_N2
\inst3|s_count[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[0]~31_combout\ = \inst3|s_count\(0) $ (VCC)
-- \inst3|s_count[0]~32\ = CARRY(\inst3|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_count\(0),
	datad => VCC,
	combout => \inst3|s_count[0]~31_combout\,
	cout => \inst3|s_count[0]~32\);

-- Location: FF_X99_Y41_N3
\inst3|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[0]~31_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(0));

-- Location: LCCOMB_X99_Y41_N4
\inst3|s_count[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[1]~33_combout\ = (\inst3|s_count\(1) & (!\inst3|s_count[0]~32\)) # (!\inst3|s_count\(1) & ((\inst3|s_count[0]~32\) # (GND)))
-- \inst3|s_count[1]~34\ = CARRY((!\inst3|s_count[0]~32\) # (!\inst3|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_count\(1),
	datad => VCC,
	cin => \inst3|s_count[0]~32\,
	combout => \inst3|s_count[1]~33_combout\,
	cout => \inst3|s_count[1]~34\);

-- Location: FF_X99_Y41_N5
\inst3|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[1]~33_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(1));

-- Location: LCCOMB_X99_Y41_N6
\inst3|s_count[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[2]~35_combout\ = (\inst3|s_count\(2) & (\inst3|s_count[1]~34\ $ (GND))) # (!\inst3|s_count\(2) & (!\inst3|s_count[1]~34\ & VCC))
-- \inst3|s_count[2]~36\ = CARRY((\inst3|s_count\(2) & !\inst3|s_count[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_count\(2),
	datad => VCC,
	cin => \inst3|s_count[1]~34\,
	combout => \inst3|s_count[2]~35_combout\,
	cout => \inst3|s_count[2]~36\);

-- Location: FF_X99_Y41_N7
\inst3|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[2]~35_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(2));

-- Location: LCCOMB_X99_Y41_N8
\inst3|s_count[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[3]~37_combout\ = (\inst3|s_count\(3) & (!\inst3|s_count[2]~36\)) # (!\inst3|s_count\(3) & ((\inst3|s_count[2]~36\) # (GND)))
-- \inst3|s_count[3]~38\ = CARRY((!\inst3|s_count[2]~36\) # (!\inst3|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_count\(3),
	datad => VCC,
	cin => \inst3|s_count[2]~36\,
	combout => \inst3|s_count[3]~37_combout\,
	cout => \inst3|s_count[3]~38\);

-- Location: FF_X99_Y41_N9
\inst3|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[3]~37_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(3));

-- Location: LCCOMB_X99_Y41_N10
\inst3|s_count[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[4]~39_combout\ = (\inst3|s_count\(4) & (\inst3|s_count[3]~38\ $ (GND))) # (!\inst3|s_count\(4) & (!\inst3|s_count[3]~38\ & VCC))
-- \inst3|s_count[4]~40\ = CARRY((\inst3|s_count\(4) & !\inst3|s_count[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_count\(4),
	datad => VCC,
	cin => \inst3|s_count[3]~38\,
	combout => \inst3|s_count[4]~39_combout\,
	cout => \inst3|s_count[4]~40\);

-- Location: FF_X99_Y41_N11
\inst3|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[4]~39_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(4));

-- Location: LCCOMB_X99_Y41_N12
\inst3|s_count[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[5]~41_combout\ = (\inst3|s_count\(5) & (!\inst3|s_count[4]~40\)) # (!\inst3|s_count\(5) & ((\inst3|s_count[4]~40\) # (GND)))
-- \inst3|s_count[5]~42\ = CARRY((!\inst3|s_count[4]~40\) # (!\inst3|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_count\(5),
	datad => VCC,
	cin => \inst3|s_count[4]~40\,
	combout => \inst3|s_count[5]~41_combout\,
	cout => \inst3|s_count[5]~42\);

-- Location: FF_X99_Y41_N13
\inst3|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[5]~41_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(5));

-- Location: LCCOMB_X99_Y41_N14
\inst3|s_count[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[6]~43_combout\ = (\inst3|s_count\(6) & (\inst3|s_count[5]~42\ $ (GND))) # (!\inst3|s_count\(6) & (!\inst3|s_count[5]~42\ & VCC))
-- \inst3|s_count[6]~44\ = CARRY((\inst3|s_count\(6) & !\inst3|s_count[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_count\(6),
	datad => VCC,
	cin => \inst3|s_count[5]~42\,
	combout => \inst3|s_count[6]~43_combout\,
	cout => \inst3|s_count[6]~44\);

-- Location: FF_X99_Y41_N15
\inst3|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[6]~43_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(6));

-- Location: LCCOMB_X99_Y41_N16
\inst3|s_count[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[7]~45_combout\ = (\inst3|s_count\(7) & (!\inst3|s_count[6]~44\)) # (!\inst3|s_count\(7) & ((\inst3|s_count[6]~44\) # (GND)))
-- \inst3|s_count[7]~46\ = CARRY((!\inst3|s_count[6]~44\) # (!\inst3|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_count\(7),
	datad => VCC,
	cin => \inst3|s_count[6]~44\,
	combout => \inst3|s_count[7]~45_combout\,
	cout => \inst3|s_count[7]~46\);

-- Location: FF_X99_Y41_N17
\inst3|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[7]~45_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(7));

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X114_Y20_N24
\inst2|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_dirtyIn~0_combout\ = !\SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \inst2|s_dirtyIn~0_combout\);

-- Location: FF_X114_Y20_N25
\inst2|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_dirtyIn~q\);

-- Location: FF_X110_Y20_N13
\inst2|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_previousIn~q\);

-- Location: LCCOMB_X111_Y20_N10
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|s_debounceCnt\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X112_Y20_N30
\inst2|s_debounceCnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[0]~0_combout\ = (\inst2|s_dirtyIn~q\ & ((!\inst2|LessThan0~7_combout\) # (!\inst2|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(22),
	datac => \inst2|s_dirtyIn~q\,
	datad => \inst2|LessThan0~7_combout\,
	combout => \inst2|s_debounceCnt[0]~0_combout\);

-- Location: LCCOMB_X111_Y20_N12
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|s_debounceCnt\(1) & (\inst2|Add0~1\ & VCC)) # (!\inst2|s_debounceCnt\(1) & (!\inst2|Add0~1\))
-- \inst2|Add0~3\ = CARRY((!\inst2|s_debounceCnt\(1) & !\inst2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X111_Y20_N2
\inst2|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~20_combout\ = (\inst2|Add0~2_combout\ & \inst2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~2_combout\,
	datad => \inst2|s_debounceCnt[0]~4_combout\,
	combout => \inst2|s_debounceCnt~20_combout\);

-- Location: FF_X111_Y20_N3
\inst2|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~20_combout\,
	ena => \inst2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(1));

-- Location: LCCOMB_X111_Y20_N14
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|s_debounceCnt\(2) & ((GND) # (!\inst2|Add0~3\))) # (!\inst2|s_debounceCnt\(2) & (\inst2|Add0~3\ $ (GND)))
-- \inst2|Add0~5\ = CARRY((\inst2|s_debounceCnt\(2)) # (!\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X110_Y20_N6
\inst2|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~21_combout\ = (\inst2|Add0~4_combout\ & \inst2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~4_combout\,
	datad => \inst2|s_debounceCnt[0]~4_combout\,
	combout => \inst2|s_debounceCnt~21_combout\);

-- Location: FF_X110_Y20_N7
\inst2|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~21_combout\,
	ena => \inst2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(2));

-- Location: LCCOMB_X111_Y20_N16
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|s_debounceCnt\(3) & (\inst2|Add0~5\ & VCC)) # (!\inst2|s_debounceCnt\(3) & (!\inst2|Add0~5\))
-- \inst2|Add0~7\ = CARRY((!\inst2|s_debounceCnt\(3) & !\inst2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X111_Y20_N0
\inst2|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~22_combout\ = (\inst2|Add0~6_combout\ & \inst2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~6_combout\,
	datad => \inst2|s_debounceCnt[0]~4_combout\,
	combout => \inst2|s_debounceCnt~22_combout\);

-- Location: FF_X111_Y20_N1
\inst2|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~22_combout\,
	ena => \inst2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(3));

-- Location: LCCOMB_X111_Y20_N18
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|s_debounceCnt\(4) & ((GND) # (!\inst2|Add0~7\))) # (!\inst2|s_debounceCnt\(4) & (\inst2|Add0~7\ $ (GND)))
-- \inst2|Add0~9\ = CARRY((\inst2|s_debounceCnt\(4)) # (!\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X110_Y20_N8
\inst2|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~23_combout\ = (\inst2|Add0~8_combout\ & \inst2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~8_combout\,
	datad => \inst2|s_debounceCnt[0]~4_combout\,
	combout => \inst2|s_debounceCnt~23_combout\);

-- Location: FF_X110_Y20_N9
\inst2|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~23_combout\,
	ena => \inst2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(4));

-- Location: LCCOMB_X111_Y20_N20
\inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|s_debounceCnt\(5) & (\inst2|Add0~9\ & VCC)) # (!\inst2|s_debounceCnt\(5) & (!\inst2|Add0~9\))
-- \inst2|Add0~11\ = CARRY((!\inst2|s_debounceCnt\(5) & !\inst2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X111_Y20_N4
\inst2|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~27_combout\ = (\inst2|Add0~10_combout\ & \inst2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~10_combout\,
	datad => \inst2|s_debounceCnt[0]~4_combout\,
	combout => \inst2|s_debounceCnt~27_combout\);

-- Location: FF_X111_Y20_N5
\inst2|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~27_combout\,
	ena => \inst2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(5));

-- Location: LCCOMB_X111_Y20_N22
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|s_debounceCnt\(6) & ((GND) # (!\inst2|Add0~11\))) # (!\inst2|s_debounceCnt\(6) & (\inst2|Add0~11\ $ (GND)))
-- \inst2|Add0~13\ = CARRY((\inst2|s_debounceCnt\(6)) # (!\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X112_Y20_N20
\inst2|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~1_combout\ = (\inst2|s_debounceCnt[0]~0_combout\ & ((\inst2|Add0~12_combout\) # (!\inst2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_previousIn~q\,
	datac => \inst2|s_debounceCnt[0]~0_combout\,
	datad => \inst2|Add0~12_combout\,
	combout => \inst2|s_debounceCnt~1_combout\);

-- Location: FF_X112_Y20_N21
\inst2|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~1_combout\,
	ena => \inst2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(6));

-- Location: LCCOMB_X111_Y20_N24
\inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|s_debounceCnt\(7) & (\inst2|Add0~13\ & VCC)) # (!\inst2|s_debounceCnt\(7) & (!\inst2|Add0~13\))
-- \inst2|Add0~15\ = CARRY((!\inst2|s_debounceCnt\(7) & !\inst2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCCOMB_X111_Y20_N8
\inst2|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~12_combout\ = (\inst2|Add0~14_combout\ & \inst2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~14_combout\,
	datad => \inst2|s_debounceCnt[0]~4_combout\,
	combout => \inst2|s_debounceCnt~12_combout\);

-- Location: FF_X111_Y20_N9
\inst2|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~12_combout\,
	ena => \inst2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(7));

-- Location: LCCOMB_X111_Y20_N26
\inst2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|s_debounceCnt\(8) & ((GND) # (!\inst2|Add0~15\))) # (!\inst2|s_debounceCnt\(8) & (\inst2|Add0~15\ $ (GND)))
-- \inst2|Add0~17\ = CARRY((\inst2|s_debounceCnt\(8)) # (!\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: LCCOMB_X110_Y20_N14
\inst2|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~13_combout\ = (\inst2|s_debounceCnt[0]~0_combout\ & ((\inst2|Add0~16_combout\) # (!\inst2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~16_combout\,
	datac => \inst2|s_previousIn~q\,
	datad => \inst2|s_debounceCnt[0]~0_combout\,
	combout => \inst2|s_debounceCnt~13_combout\);

-- Location: FF_X110_Y20_N15
\inst2|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~13_combout\,
	ena => \inst2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(8));

-- Location: LCCOMB_X111_Y20_N28
\inst2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = (\inst2|s_debounceCnt\(9) & (\inst2|Add0~17\ & VCC)) # (!\inst2|s_debounceCnt\(9) & (!\inst2|Add0~17\))
-- \inst2|Add0~19\ = CARRY((!\inst2|s_debounceCnt\(9) & !\inst2|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\,
	cout => \inst2|Add0~19\);

-- Location: LCCOMB_X110_Y20_N24
\inst2|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~14_combout\ = (\inst2|s_debounceCnt[0]~0_combout\ & ((\inst2|Add0~18_combout\) # (!\inst2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~18_combout\,
	datac => \inst2|s_previousIn~q\,
	datad => \inst2|s_debounceCnt[0]~0_combout\,
	combout => \inst2|s_debounceCnt~14_combout\);

-- Location: FF_X110_Y20_N25
\inst2|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~14_combout\,
	ena => \inst2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(9));

-- Location: LCCOMB_X111_Y20_N30
\inst2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = (\inst2|s_debounceCnt\(10) & ((GND) # (!\inst2|Add0~19\))) # (!\inst2|s_debounceCnt\(10) & (\inst2|Add0~19\ $ (GND)))
-- \inst2|Add0~21\ = CARRY((\inst2|s_debounceCnt\(10)) # (!\inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~20_combout\,
	cout => \inst2|Add0~21\);

-- Location: LCCOMB_X110_Y20_N22
\inst2|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~15_combout\ = (\inst2|Add0~20_combout\ & \inst2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~20_combout\,
	datad => \inst2|s_debounceCnt[0]~4_combout\,
	combout => \inst2|s_debounceCnt~15_combout\);

-- Location: FF_X110_Y20_N23
\inst2|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~15_combout\,
	ena => \inst2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(10));

-- Location: LCCOMB_X111_Y19_N0
\inst2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~22_combout\ = (\inst2|s_debounceCnt\(11) & (\inst2|Add0~21\ & VCC)) # (!\inst2|s_debounceCnt\(11) & (!\inst2|Add0~21\))
-- \inst2|Add0~23\ = CARRY((!\inst2|s_debounceCnt\(11) & !\inst2|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst2|Add0~21\,
	combout => \inst2|Add0~22_combout\,
	cout => \inst2|Add0~23\);

-- Location: LCCOMB_X110_Y20_N30
\inst2|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~16_combout\ = (\inst2|s_debounceCnt[0]~0_combout\ & ((\inst2|Add0~22_combout\) # (!\inst2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_previousIn~q\,
	datac => \inst2|Add0~22_combout\,
	datad => \inst2|s_debounceCnt[0]~0_combout\,
	combout => \inst2|s_debounceCnt~16_combout\);

-- Location: FF_X110_Y20_N31
\inst2|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~16_combout\,
	ena => \inst2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(11));

-- Location: LCCOMB_X111_Y19_N2
\inst2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~24_combout\ = (\inst2|s_debounceCnt\(12) & ((GND) # (!\inst2|Add0~23\))) # (!\inst2|s_debounceCnt\(12) & (\inst2|Add0~23\ $ (GND)))
-- \inst2|Add0~25\ = CARRY((\inst2|s_debounceCnt\(12)) # (!\inst2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst2|Add0~23\,
	combout => \inst2|Add0~24_combout\,
	cout => \inst2|Add0~25\);

-- Location: LCCOMB_X110_Y20_N0
\inst2|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~8_combout\ = (\inst2|Add0~24_combout\ & \inst2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~24_combout\,
	datad => \inst2|s_debounceCnt[0]~4_combout\,
	combout => \inst2|s_debounceCnt~8_combout\);

-- Location: FF_X110_Y20_N1
\inst2|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~8_combout\,
	ena => \inst2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(12));

-- Location: LCCOMB_X111_Y19_N4
\inst2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~26_combout\ = (\inst2|s_debounceCnt\(13) & (\inst2|Add0~25\ & VCC)) # (!\inst2|s_debounceCnt\(13) & (!\inst2|Add0~25\))
-- \inst2|Add0~27\ = CARRY((!\inst2|s_debounceCnt\(13) & !\inst2|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst2|Add0~25\,
	combout => \inst2|Add0~26_combout\,
	cout => \inst2|Add0~27\);

-- Location: LCCOMB_X110_Y20_N26
\inst2|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~9_combout\ = (\inst2|Add0~26_combout\ & \inst2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~26_combout\,
	datad => \inst2|s_debounceCnt[0]~4_combout\,
	combout => \inst2|s_debounceCnt~9_combout\);

-- Location: FF_X110_Y20_N27
\inst2|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~9_combout\,
	ena => \inst2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(13));

-- Location: LCCOMB_X111_Y19_N6
\inst2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~28_combout\ = (\inst2|s_debounceCnt\(14) & ((GND) # (!\inst2|Add0~27\))) # (!\inst2|s_debounceCnt\(14) & (\inst2|Add0~27\ $ (GND)))
-- \inst2|Add0~29\ = CARRY((\inst2|s_debounceCnt\(14)) # (!\inst2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst2|Add0~27\,
	combout => \inst2|Add0~28_combout\,
	cout => \inst2|Add0~29\);

-- Location: LCCOMB_X111_Y19_N28
\inst2|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~17_combout\ = (\inst2|s_debounceCnt[0]~0_combout\ & ((\inst2|Add0~28_combout\) # (!\inst2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_previousIn~q\,
	datac => \inst2|s_debounceCnt[0]~0_combout\,
	datad => \inst2|Add0~28_combout\,
	combout => \inst2|s_debounceCnt~17_combout\);

-- Location: FF_X111_Y19_N29
\inst2|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~17_combout\,
	ena => \inst2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(14));

-- Location: LCCOMB_X111_Y19_N8
\inst2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~30_combout\ = (\inst2|s_debounceCnt\(15) & (\inst2|Add0~29\ & VCC)) # (!\inst2|s_debounceCnt\(15) & (!\inst2|Add0~29\))
-- \inst2|Add0~31\ = CARRY((!\inst2|s_debounceCnt\(15) & !\inst2|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst2|Add0~29\,
	combout => \inst2|Add0~30_combout\,
	cout => \inst2|Add0~31\);

-- Location: LCCOMB_X112_Y20_N14
\inst2|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~5_combout\ = (\inst2|s_debounceCnt[0]~4_combout\ & \inst2|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt[0]~4_combout\,
	datad => \inst2|Add0~30_combout\,
	combout => \inst2|s_debounceCnt~5_combout\);

-- Location: FF_X112_Y20_N15
\inst2|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~5_combout\,
	ena => \inst2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(15));

-- Location: LCCOMB_X111_Y19_N10
\inst2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~32_combout\ = (\inst2|s_debounceCnt\(16) & ((GND) # (!\inst2|Add0~31\))) # (!\inst2|s_debounceCnt\(16) & (\inst2|Add0~31\ $ (GND)))
-- \inst2|Add0~33\ = CARRY((\inst2|s_debounceCnt\(16)) # (!\inst2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst2|Add0~31\,
	combout => \inst2|Add0~32_combout\,
	cout => \inst2|Add0~33\);

-- Location: LCCOMB_X112_Y20_N24
\inst2|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~6_combout\ = (\inst2|s_debounceCnt[0]~4_combout\ & \inst2|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt[0]~4_combout\,
	datad => \inst2|Add0~32_combout\,
	combout => \inst2|s_debounceCnt~6_combout\);

-- Location: FF_X112_Y20_N25
\inst2|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~6_combout\,
	ena => \inst2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(16));

-- Location: LCCOMB_X111_Y19_N12
\inst2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~34_combout\ = (\inst2|s_debounceCnt\(17) & (\inst2|Add0~33\ & VCC)) # (!\inst2|s_debounceCnt\(17) & (!\inst2|Add0~33\))
-- \inst2|Add0~35\ = CARRY((!\inst2|s_debounceCnt\(17) & !\inst2|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst2|Add0~33\,
	combout => \inst2|Add0~34_combout\,
	cout => \inst2|Add0~35\);

-- Location: LCCOMB_X112_Y20_N26
\inst2|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~7_combout\ = (\inst2|Add0~34_combout\ & \inst2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~34_combout\,
	datad => \inst2|s_debounceCnt[0]~4_combout\,
	combout => \inst2|s_debounceCnt~7_combout\);

-- Location: FF_X112_Y20_N27
\inst2|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~7_combout\,
	ena => \inst2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(17));

-- Location: LCCOMB_X111_Y19_N14
\inst2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~36_combout\ = (\inst2|s_debounceCnt\(18) & ((GND) # (!\inst2|Add0~35\))) # (!\inst2|s_debounceCnt\(18) & (\inst2|Add0~35\ $ (GND)))
-- \inst2|Add0~37\ = CARRY((\inst2|s_debounceCnt\(18)) # (!\inst2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst2|Add0~35\,
	combout => \inst2|Add0~36_combout\,
	cout => \inst2|Add0~37\);

-- Location: LCCOMB_X112_Y20_N10
\inst2|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[18]~18_combout\ = (\inst2|s_debounceCnt[0]~3_combout\ & (\inst2|s_debounceCnt[0]~0_combout\ & ((\inst2|Add0~36_combout\) # (!\inst2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt[0]~3_combout\,
	datab => \inst2|s_previousIn~q\,
	datac => \inst2|s_debounceCnt[0]~0_combout\,
	datad => \inst2|Add0~36_combout\,
	combout => \inst2|s_debounceCnt[18]~18_combout\);

-- Location: FF_X112_Y20_N11
\inst2|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(18));

-- Location: LCCOMB_X112_Y20_N18
\inst2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~4_combout\ = (\inst2|s_debounceCnt\(13)) # ((\inst2|s_debounceCnt\(12)) # ((\inst2|s_debounceCnt\(10) & \inst2|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(13),
	datab => \inst2|s_debounceCnt\(12),
	datac => \inst2|s_debounceCnt\(10),
	datad => \inst2|s_debounceCnt\(11),
	combout => \inst2|LessThan0~4_combout\);

-- Location: LCCOMB_X112_Y20_N0
\inst2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~5_combout\ = (\inst2|s_debounceCnt\(15)) # ((\inst2|s_debounceCnt\(16)) # ((\inst2|s_debounceCnt\(14) & \inst2|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(15),
	datab => \inst2|s_debounceCnt\(16),
	datac => \inst2|s_debounceCnt\(14),
	datad => \inst2|LessThan0~4_combout\,
	combout => \inst2|LessThan0~5_combout\);

-- Location: LCCOMB_X112_Y20_N22
\inst2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~6_combout\ = (\inst2|s_debounceCnt\(18) & (\inst2|s_debounceCnt\(19) & ((\inst2|s_debounceCnt\(17)) # (\inst2|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(18),
	datab => \inst2|s_debounceCnt\(19),
	datac => \inst2|s_debounceCnt\(17),
	datad => \inst2|LessThan0~5_combout\,
	combout => \inst2|LessThan0~6_combout\);

-- Location: LCCOMB_X112_Y20_N8
\inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (\inst2|s_debounceCnt\(19) & (\inst2|s_debounceCnt\(8) & (\inst2|s_debounceCnt\(14) & \inst2|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(19),
	datab => \inst2|s_debounceCnt\(8),
	datac => \inst2|s_debounceCnt\(14),
	datad => \inst2|s_debounceCnt\(18),
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X113_Y20_N0
\inst2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = (\inst2|s_debounceCnt\(9) & \inst2|s_debounceCnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_debounceCnt\(9),
	datad => \inst2|s_debounceCnt\(11),
	combout => \inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X110_Y20_N2
\inst2|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~5_combout\ = (!\inst2|s_debounceCnt\(2) & (!\inst2|s_debounceCnt\(4) & (!\inst2|s_debounceCnt\(3) & !\inst2|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(2),
	datab => \inst2|s_debounceCnt\(4),
	datac => \inst2|s_debounceCnt\(3),
	datad => \inst2|s_debounceCnt\(1),
	combout => \inst2|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X112_Y20_N6
\inst2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~2_combout\ = (\inst2|s_debounceCnt\(6) & ((\inst2|s_debounceCnt\(5)) # ((\inst2|s_debounceCnt\(0)) # (!\inst2|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(6),
	datab => \inst2|s_debounceCnt\(5),
	datac => \inst2|s_debounceCnt\(0),
	datad => \inst2|s_pulsedOut~5_combout\,
	combout => \inst2|LessThan0~2_combout\);

-- Location: LCCOMB_X112_Y20_N28
\inst2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~3_combout\ = (\inst2|LessThan0~0_combout\ & (\inst2|LessThan0~1_combout\ & ((\inst2|s_debounceCnt\(7)) # (\inst2|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(7),
	datab => \inst2|LessThan0~0_combout\,
	datac => \inst2|LessThan0~1_combout\,
	datad => \inst2|LessThan0~2_combout\,
	combout => \inst2|LessThan0~3_combout\);

-- Location: LCCOMB_X112_Y20_N12
\inst2|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~7_combout\ = (\inst2|s_debounceCnt\(21)) # ((\inst2|s_debounceCnt\(20)) # ((\inst2|LessThan0~6_combout\) # (\inst2|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(21),
	datab => \inst2|s_debounceCnt\(20),
	datac => \inst2|LessThan0~6_combout\,
	datad => \inst2|LessThan0~3_combout\,
	combout => \inst2|LessThan0~7_combout\);

-- Location: LCCOMB_X112_Y20_N16
\inst2|s_debounceCnt[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[0]~4_combout\ = (\inst2|s_dirtyIn~q\ & (\inst2|s_previousIn~q\ & ((!\inst2|LessThan0~7_combout\) # (!\inst2|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_dirtyIn~q\,
	datab => \inst2|s_previousIn~q\,
	datac => \inst2|s_debounceCnt\(22),
	datad => \inst2|LessThan0~7_combout\,
	combout => \inst2|s_debounceCnt[0]~4_combout\);

-- Location: LCCOMB_X111_Y20_N6
\inst2|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt~24_combout\ = (\inst2|Add0~0_combout\ & \inst2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~0_combout\,
	datad => \inst2|s_debounceCnt[0]~4_combout\,
	combout => \inst2|s_debounceCnt~24_combout\);

-- Location: FF_X111_Y20_N7
\inst2|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt~24_combout\,
	ena => \inst2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(0));

-- Location: LCCOMB_X110_Y20_N10
\inst2|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~3_combout\ = (!\inst2|s_debounceCnt\(11) & (!\inst2|s_debounceCnt\(19) & (!\inst2|s_debounceCnt\(14) & !\inst2|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(11),
	datab => \inst2|s_debounceCnt\(19),
	datac => \inst2|s_debounceCnt\(14),
	datad => \inst2|s_debounceCnt\(18),
	combout => \inst2|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X110_Y20_N4
\inst2|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~2_combout\ = (!\inst2|s_debounceCnt\(10) & (!\inst2|s_debounceCnt\(8) & (!\inst2|s_debounceCnt\(7) & !\inst2|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(10),
	datab => \inst2|s_debounceCnt\(8),
	datac => \inst2|s_debounceCnt\(7),
	datad => \inst2|s_debounceCnt\(9),
	combout => \inst2|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X112_Y20_N4
\inst2|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~0_combout\ = (!\inst2|s_debounceCnt\(17) & (!\inst2|s_debounceCnt\(6) & (!\inst2|s_debounceCnt\(15) & !\inst2|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(17),
	datab => \inst2|s_debounceCnt\(6),
	datac => \inst2|s_debounceCnt\(15),
	datad => \inst2|s_debounceCnt\(16),
	combout => \inst2|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X110_Y20_N20
\inst2|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~1_combout\ = (!\inst2|s_debounceCnt\(13) & (!\inst2|s_debounceCnt\(12) & (!\inst2|s_debounceCnt\(21) & !\inst2|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(13),
	datab => \inst2|s_debounceCnt\(12),
	datac => \inst2|s_debounceCnt\(21),
	datad => \inst2|s_debounceCnt\(20),
	combout => \inst2|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X110_Y20_N16
\inst2|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~4_combout\ = (\inst2|s_pulsedOut~3_combout\ & (\inst2|s_pulsedOut~2_combout\ & (\inst2|s_pulsedOut~0_combout\ & \inst2|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_pulsedOut~3_combout\,
	datab => \inst2|s_pulsedOut~2_combout\,
	datac => \inst2|s_pulsedOut~0_combout\,
	datad => \inst2|s_pulsedOut~1_combout\,
	combout => \inst2|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X110_Y20_N18
\inst2|s_debounceCnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[0]~2_combout\ = (\inst2|s_debounceCnt\(0)) # ((\inst2|s_debounceCnt\(5)) # ((!\inst2|s_pulsedOut~4_combout\) # (!\inst2|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(0),
	datab => \inst2|s_debounceCnt\(5),
	datac => \inst2|s_pulsedOut~5_combout\,
	datad => \inst2|s_pulsedOut~4_combout\,
	combout => \inst2|s_debounceCnt[0]~2_combout\);

-- Location: LCCOMB_X110_Y20_N12
\inst2|s_debounceCnt[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[0]~3_combout\ = ((\inst2|s_debounceCnt\(22)) # ((\inst2|s_debounceCnt[0]~2_combout\) # (!\inst2|s_previousIn~q\))) # (!\inst2|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_dirtyIn~q\,
	datab => \inst2|s_debounceCnt\(22),
	datac => \inst2|s_previousIn~q\,
	datad => \inst2|s_debounceCnt[0]~2_combout\,
	combout => \inst2|s_debounceCnt[0]~3_combout\);

-- Location: LCCOMB_X111_Y19_N16
\inst2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~38_combout\ = (\inst2|s_debounceCnt\(19) & (\inst2|Add0~37\ & VCC)) # (!\inst2|s_debounceCnt\(19) & (!\inst2|Add0~37\))
-- \inst2|Add0~39\ = CARRY((!\inst2|s_debounceCnt\(19) & !\inst2|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst2|Add0~37\,
	combout => \inst2|Add0~38_combout\,
	cout => \inst2|Add0~39\);

-- Location: LCCOMB_X110_Y20_N28
\inst2|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[19]~19_combout\ = (\inst2|s_debounceCnt[0]~3_combout\ & (\inst2|s_debounceCnt[0]~0_combout\ & ((\inst2|Add0~38_combout\) # (!\inst2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt[0]~3_combout\,
	datab => \inst2|s_previousIn~q\,
	datac => \inst2|Add0~38_combout\,
	datad => \inst2|s_debounceCnt[0]~0_combout\,
	combout => \inst2|s_debounceCnt[19]~19_combout\);

-- Location: FF_X110_Y20_N29
\inst2|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(19));

-- Location: LCCOMB_X111_Y19_N18
\inst2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~40_combout\ = (\inst2|s_debounceCnt\(20) & ((GND) # (!\inst2|Add0~39\))) # (!\inst2|s_debounceCnt\(20) & (\inst2|Add0~39\ $ (GND)))
-- \inst2|Add0~41\ = CARRY((\inst2|s_debounceCnt\(20)) # (!\inst2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst2|Add0~39\,
	combout => \inst2|Add0~40_combout\,
	cout => \inst2|Add0~41\);

-- Location: LCCOMB_X111_Y19_N24
\inst2|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[20]~10_combout\ = (\inst2|Add0~40_combout\ & (\inst2|s_debounceCnt[0]~3_combout\ & \inst2|s_debounceCnt[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~40_combout\,
	datac => \inst2|s_debounceCnt[0]~3_combout\,
	datad => \inst2|s_debounceCnt[0]~4_combout\,
	combout => \inst2|s_debounceCnt[20]~10_combout\);

-- Location: FF_X111_Y19_N25
\inst2|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(20));

-- Location: LCCOMB_X111_Y19_N20
\inst2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~42_combout\ = (\inst2|s_debounceCnt\(21) & (\inst2|Add0~41\ & VCC)) # (!\inst2|s_debounceCnt\(21) & (!\inst2|Add0~41\))
-- \inst2|Add0~43\ = CARRY((!\inst2|s_debounceCnt\(21) & !\inst2|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst2|Add0~41\,
	combout => \inst2|Add0~42_combout\,
	cout => \inst2|Add0~43\);

-- Location: LCCOMB_X111_Y19_N30
\inst2|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[21]~11_combout\ = (\inst2|Add0~42_combout\ & (\inst2|s_debounceCnt[0]~3_combout\ & \inst2|s_debounceCnt[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~42_combout\,
	datac => \inst2|s_debounceCnt[0]~3_combout\,
	datad => \inst2|s_debounceCnt[0]~4_combout\,
	combout => \inst2|s_debounceCnt[21]~11_combout\);

-- Location: FF_X111_Y19_N31
\inst2|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(21));

-- Location: LCCOMB_X111_Y19_N22
\inst2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~44_combout\ = \inst2|s_debounceCnt\(22) $ (\inst2|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(22),
	cin => \inst2|Add0~43\,
	combout => \inst2|Add0~44_combout\);

-- Location: LCCOMB_X112_Y20_N2
\inst2|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[22]~25_combout\ = (\inst2|s_dirtyIn~q\ & ((\inst2|s_debounceCnt\(22) & ((!\inst2|LessThan0~7_combout\))) # (!\inst2|s_debounceCnt\(22) & (\inst2|s_debounceCnt[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_dirtyIn~q\,
	datab => \inst2|s_debounceCnt\(22),
	datac => \inst2|s_debounceCnt[0]~2_combout\,
	datad => \inst2|LessThan0~7_combout\,
	combout => \inst2|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X111_Y19_N26
\inst2|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_debounceCnt[22]~26_combout\ = (\inst2|s_previousIn~q\ & (\inst2|Add0~44_combout\ & ((\inst2|s_debounceCnt[22]~25_combout\)))) # (!\inst2|s_previousIn~q\ & (((\inst2|s_debounceCnt[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~44_combout\,
	datab => \inst2|s_previousIn~q\,
	datac => \inst2|s_debounceCnt[0]~0_combout\,
	datad => \inst2|s_debounceCnt[22]~25_combout\,
	combout => \inst2|s_debounceCnt[22]~26_combout\);

-- Location: FF_X111_Y19_N27
\inst2|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_debounceCnt\(22));

-- Location: LCCOMB_X109_Y20_N30
\inst2|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~6_combout\ = (!\inst2|s_debounceCnt\(22) & (\inst2|s_debounceCnt\(0) & (\inst2|s_previousIn~q\ & \inst2|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_debounceCnt\(22),
	datab => \inst2|s_debounceCnt\(0),
	datac => \inst2|s_previousIn~q\,
	datad => \inst2|s_dirtyIn~q\,
	combout => \inst2|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X109_Y20_N28
\inst2|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_pulsedOut~7_combout\ = (\inst2|s_pulsedOut~6_combout\ & (\inst2|s_pulsedOut~5_combout\ & (\inst2|s_pulsedOut~4_combout\ & !\inst2|s_debounceCnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_pulsedOut~6_combout\,
	datab => \inst2|s_pulsedOut~5_combout\,
	datac => \inst2|s_pulsedOut~4_combout\,
	datad => \inst2|s_debounceCnt\(5),
	combout => \inst2|s_pulsedOut~7_combout\);

-- Location: FF_X109_Y20_N29
\inst2|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_pulsedOut~q\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X100_Y38_N26
\inst1|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_dirtyIn~0_combout\ = !\SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \inst1|s_dirtyIn~0_combout\);

-- Location: FF_X100_Y38_N27
\inst1|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_dirtyIn~q\);

-- Location: FF_X101_Y38_N1
\inst1|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst1|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_previousIn~q\);

-- Location: LCCOMB_X102_Y39_N10
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|s_debounceCnt\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X103_Y39_N12
\inst1|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~24_combout\ = (\inst1|Add0~0_combout\ & \inst1|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~0_combout\,
	datad => \inst1|s_debounceCnt[18]~4_combout\,
	combout => \inst1|s_debounceCnt~24_combout\);

-- Location: FF_X103_Y39_N13
\inst1|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~24_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(0));

-- Location: LCCOMB_X102_Y39_N12
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|s_debounceCnt\(1) & (\inst1|Add0~1\ & VCC)) # (!\inst1|s_debounceCnt\(1) & (!\inst1|Add0~1\))
-- \inst1|Add0~3\ = CARRY((!\inst1|s_debounceCnt\(1) & !\inst1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X102_Y39_N8
\inst1|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~20_combout\ = (\inst1|Add0~2_combout\ & \inst1|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~2_combout\,
	datad => \inst1|s_debounceCnt[18]~4_combout\,
	combout => \inst1|s_debounceCnt~20_combout\);

-- Location: FF_X102_Y39_N9
\inst1|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~20_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(1));

-- Location: LCCOMB_X102_Y39_N14
\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|s_debounceCnt\(2) & ((GND) # (!\inst1|Add0~3\))) # (!\inst1|s_debounceCnt\(2) & (\inst1|Add0~3\ $ (GND)))
-- \inst1|Add0~5\ = CARRY((\inst1|s_debounceCnt\(2)) # (!\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X102_Y39_N2
\inst1|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~21_combout\ = (\inst1|Add0~4_combout\ & \inst1|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~4_combout\,
	datad => \inst1|s_debounceCnt[18]~4_combout\,
	combout => \inst1|s_debounceCnt~21_combout\);

-- Location: FF_X102_Y39_N3
\inst1|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~21_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(2));

-- Location: LCCOMB_X102_Y39_N16
\inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|s_debounceCnt\(3) & (\inst1|Add0~5\ & VCC)) # (!\inst1|s_debounceCnt\(3) & (!\inst1|Add0~5\))
-- \inst1|Add0~7\ = CARRY((!\inst1|s_debounceCnt\(3) & !\inst1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X102_Y39_N4
\inst1|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~22_combout\ = (\inst1|Add0~6_combout\ & \inst1|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~6_combout\,
	datad => \inst1|s_debounceCnt[18]~4_combout\,
	combout => \inst1|s_debounceCnt~22_combout\);

-- Location: FF_X102_Y39_N5
\inst1|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~22_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(3));

-- Location: LCCOMB_X102_Y39_N18
\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|s_debounceCnt\(4) & ((GND) # (!\inst1|Add0~7\))) # (!\inst1|s_debounceCnt\(4) & (\inst1|Add0~7\ $ (GND)))
-- \inst1|Add0~9\ = CARRY((\inst1|s_debounceCnt\(4)) # (!\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X102_Y39_N6
\inst1|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~23_combout\ = (\inst1|Add0~8_combout\ & \inst1|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~8_combout\,
	datad => \inst1|s_debounceCnt[18]~4_combout\,
	combout => \inst1|s_debounceCnt~23_combout\);

-- Location: FF_X102_Y39_N7
\inst1|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~23_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(4));

-- Location: LCCOMB_X102_Y39_N0
\inst1|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~5_combout\ = (!\inst1|s_debounceCnt\(4) & (!\inst1|s_debounceCnt\(1) & (!\inst1|s_debounceCnt\(3) & !\inst1|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(4),
	datab => \inst1|s_debounceCnt\(1),
	datac => \inst1|s_debounceCnt\(3),
	datad => \inst1|s_debounceCnt\(2),
	combout => \inst1|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X102_Y39_N20
\inst1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|s_debounceCnt\(5) & (\inst1|Add0~9\ & VCC)) # (!\inst1|s_debounceCnt\(5) & (!\inst1|Add0~9\))
-- \inst1|Add0~11\ = CARRY((!\inst1|s_debounceCnt\(5) & !\inst1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X102_Y39_N22
\inst1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|s_debounceCnt\(6) & ((GND) # (!\inst1|Add0~11\))) # (!\inst1|s_debounceCnt\(6) & (\inst1|Add0~11\ $ (GND)))
-- \inst1|Add0~13\ = CARRY((\inst1|s_debounceCnt\(6)) # (!\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X101_Y38_N16
\inst1|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~1_combout\ = (\inst1|s_debounceCnt[18]~0_combout\ & ((\inst1|Add0~12_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datac => \inst1|Add0~12_combout\,
	datad => \inst1|s_debounceCnt[18]~0_combout\,
	combout => \inst1|s_debounceCnt~1_combout\);

-- Location: FF_X101_Y38_N17
\inst1|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~1_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(6));

-- Location: LCCOMB_X102_Y39_N24
\inst1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|s_debounceCnt\(7) & (\inst1|Add0~13\ & VCC)) # (!\inst1|s_debounceCnt\(7) & (!\inst1|Add0~13\))
-- \inst1|Add0~15\ = CARRY((!\inst1|s_debounceCnt\(7) & !\inst1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X101_Y38_N22
\inst1|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~12_combout\ = (\inst1|Add0~14_combout\ & \inst1|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~14_combout\,
	datad => \inst1|s_debounceCnt[18]~4_combout\,
	combout => \inst1|s_debounceCnt~12_combout\);

-- Location: FF_X101_Y38_N23
\inst1|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~12_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(7));

-- Location: LCCOMB_X102_Y39_N26
\inst1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|s_debounceCnt\(8) & ((GND) # (!\inst1|Add0~15\))) # (!\inst1|s_debounceCnt\(8) & (\inst1|Add0~15\ $ (GND)))
-- \inst1|Add0~17\ = CARRY((\inst1|s_debounceCnt\(8)) # (!\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X101_Y38_N28
\inst1|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~13_combout\ = (\inst1|s_debounceCnt[18]~0_combout\ & ((\inst1|Add0~16_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~16_combout\,
	datac => \inst1|s_previousIn~q\,
	datad => \inst1|s_debounceCnt[18]~0_combout\,
	combout => \inst1|s_debounceCnt~13_combout\);

-- Location: FF_X101_Y38_N29
\inst1|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~13_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(8));

-- Location: LCCOMB_X102_Y39_N28
\inst1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|s_debounceCnt\(9) & (\inst1|Add0~17\ & VCC)) # (!\inst1|s_debounceCnt\(9) & (!\inst1|Add0~17\))
-- \inst1|Add0~19\ = CARRY((!\inst1|s_debounceCnt\(9) & !\inst1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: LCCOMB_X101_Y38_N26
\inst1|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~14_combout\ = (\inst1|s_debounceCnt[18]~0_combout\ & ((\inst1|Add0~18_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datac => \inst1|Add0~18_combout\,
	datad => \inst1|s_debounceCnt[18]~0_combout\,
	combout => \inst1|s_debounceCnt~14_combout\);

-- Location: FF_X101_Y38_N27
\inst1|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~14_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(9));

-- Location: LCCOMB_X102_Y39_N30
\inst1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst1|s_debounceCnt\(10) & ((GND) # (!\inst1|Add0~19\))) # (!\inst1|s_debounceCnt\(10) & (\inst1|Add0~19\ $ (GND)))
-- \inst1|Add0~21\ = CARRY((\inst1|s_debounceCnt\(10)) # (!\inst1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: LCCOMB_X101_Y38_N20
\inst1|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~15_combout\ = (\inst1|Add0~20_combout\ & \inst1|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~20_combout\,
	datad => \inst1|s_debounceCnt[18]~4_combout\,
	combout => \inst1|s_debounceCnt~15_combout\);

-- Location: FF_X101_Y38_N21
\inst1|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~15_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(10));

-- Location: LCCOMB_X102_Y38_N0
\inst1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = (\inst1|s_debounceCnt\(11) & (\inst1|Add0~21\ & VCC)) # (!\inst1|s_debounceCnt\(11) & (!\inst1|Add0~21\))
-- \inst1|Add0~23\ = CARRY((!\inst1|s_debounceCnt\(11) & !\inst1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\,
	cout => \inst1|Add0~23\);

-- Location: LCCOMB_X101_Y38_N4
\inst1|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~16_combout\ = (\inst1|s_debounceCnt[18]~0_combout\ & ((\inst1|Add0~22_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datac => \inst1|Add0~22_combout\,
	datad => \inst1|s_debounceCnt[18]~0_combout\,
	combout => \inst1|s_debounceCnt~16_combout\);

-- Location: FF_X101_Y38_N5
\inst1|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~16_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(11));

-- Location: LCCOMB_X102_Y38_N2
\inst1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = (\inst1|s_debounceCnt\(12) & ((GND) # (!\inst1|Add0~23\))) # (!\inst1|s_debounceCnt\(12) & (\inst1|Add0~23\ $ (GND)))
-- \inst1|Add0~25\ = CARRY((\inst1|s_debounceCnt\(12)) # (!\inst1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst1|Add0~23\,
	combout => \inst1|Add0~24_combout\,
	cout => \inst1|Add0~25\);

-- Location: LCCOMB_X101_Y38_N6
\inst1|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~8_combout\ = (\inst1|Add0~24_combout\ & \inst1|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~24_combout\,
	datad => \inst1|s_debounceCnt[18]~4_combout\,
	combout => \inst1|s_debounceCnt~8_combout\);

-- Location: FF_X101_Y38_N7
\inst1|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~8_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(12));

-- Location: LCCOMB_X102_Y38_N4
\inst1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = (\inst1|s_debounceCnt\(13) & (\inst1|Add0~25\ & VCC)) # (!\inst1|s_debounceCnt\(13) & (!\inst1|Add0~25\))
-- \inst1|Add0~27\ = CARRY((!\inst1|s_debounceCnt\(13) & !\inst1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~26_combout\,
	cout => \inst1|Add0~27\);

-- Location: LCCOMB_X101_Y38_N24
\inst1|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~9_combout\ = (\inst1|Add0~26_combout\ & \inst1|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~26_combout\,
	datad => \inst1|s_debounceCnt[18]~4_combout\,
	combout => \inst1|s_debounceCnt~9_combout\);

-- Location: FF_X101_Y38_N25
\inst1|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~9_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(13));

-- Location: LCCOMB_X102_Y38_N6
\inst1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~28_combout\ = (\inst1|s_debounceCnt\(14) & ((GND) # (!\inst1|Add0~27\))) # (!\inst1|s_debounceCnt\(14) & (\inst1|Add0~27\ $ (GND)))
-- \inst1|Add0~29\ = CARRY((\inst1|s_debounceCnt\(14)) # (!\inst1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst1|Add0~27\,
	combout => \inst1|Add0~28_combout\,
	cout => \inst1|Add0~29\);

-- Location: LCCOMB_X101_Y38_N18
\inst1|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~17_combout\ = (\inst1|s_debounceCnt[18]~0_combout\ & ((\inst1|Add0~28_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~28_combout\,
	datac => \inst1|s_previousIn~q\,
	datad => \inst1|s_debounceCnt[18]~0_combout\,
	combout => \inst1|s_debounceCnt~17_combout\);

-- Location: FF_X101_Y38_N19
\inst1|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~17_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(14));

-- Location: LCCOMB_X102_Y38_N8
\inst1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~30_combout\ = (\inst1|s_debounceCnt\(15) & (\inst1|Add0~29\ & VCC)) # (!\inst1|s_debounceCnt\(15) & (!\inst1|Add0~29\))
-- \inst1|Add0~31\ = CARRY((!\inst1|s_debounceCnt\(15) & !\inst1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst1|Add0~29\,
	combout => \inst1|Add0~30_combout\,
	cout => \inst1|Add0~31\);

-- Location: LCCOMB_X102_Y38_N28
\inst1|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~5_combout\ = (\inst1|Add0~30_combout\ & \inst1|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~30_combout\,
	datad => \inst1|s_debounceCnt[18]~4_combout\,
	combout => \inst1|s_debounceCnt~5_combout\);

-- Location: FF_X102_Y38_N29
\inst1|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~5_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(15));

-- Location: LCCOMB_X102_Y38_N10
\inst1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~32_combout\ = (\inst1|s_debounceCnt\(16) & ((GND) # (!\inst1|Add0~31\))) # (!\inst1|s_debounceCnt\(16) & (\inst1|Add0~31\ $ (GND)))
-- \inst1|Add0~33\ = CARRY((\inst1|s_debounceCnt\(16)) # (!\inst1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst1|Add0~31\,
	combout => \inst1|Add0~32_combout\,
	cout => \inst1|Add0~33\);

-- Location: LCCOMB_X103_Y38_N28
\inst1|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~6_combout\ = (\inst1|s_debounceCnt[18]~4_combout\ & \inst1|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_debounceCnt[18]~4_combout\,
	datad => \inst1|Add0~32_combout\,
	combout => \inst1|s_debounceCnt~6_combout\);

-- Location: FF_X103_Y38_N29
\inst1|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~6_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(16));

-- Location: LCCOMB_X102_Y38_N12
\inst1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~34_combout\ = (\inst1|s_debounceCnt\(17) & (\inst1|Add0~33\ & VCC)) # (!\inst1|s_debounceCnt\(17) & (!\inst1|Add0~33\))
-- \inst1|Add0~35\ = CARRY((!\inst1|s_debounceCnt\(17) & !\inst1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst1|Add0~33\,
	combout => \inst1|Add0~34_combout\,
	cout => \inst1|Add0~35\);

-- Location: LCCOMB_X101_Y38_N30
\inst1|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~7_combout\ = (\inst1|Add0~34_combout\ & \inst1|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~34_combout\,
	datad => \inst1|s_debounceCnt[18]~4_combout\,
	combout => \inst1|s_debounceCnt~7_combout\);

-- Location: FF_X101_Y38_N31
\inst1|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~7_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(17));

-- Location: LCCOMB_X102_Y38_N14
\inst1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~36_combout\ = (\inst1|s_debounceCnt\(18) & ((GND) # (!\inst1|Add0~35\))) # (!\inst1|s_debounceCnt\(18) & (\inst1|Add0~35\ $ (GND)))
-- \inst1|Add0~37\ = CARRY((\inst1|s_debounceCnt\(18)) # (!\inst1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst1|Add0~35\,
	combout => \inst1|Add0~36_combout\,
	cout => \inst1|Add0~37\);

-- Location: LCCOMB_X100_Y38_N24
\inst1|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[18]~18_combout\ = (\inst1|s_debounceCnt[18]~3_combout\ & (\inst1|s_debounceCnt[18]~0_combout\ & ((\inst1|Add0~36_combout\) # (!\inst1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datab => \inst1|s_debounceCnt[18]~3_combout\,
	datac => \inst1|Add0~36_combout\,
	datad => \inst1|s_debounceCnt[18]~0_combout\,
	combout => \inst1|s_debounceCnt[18]~18_combout\);

-- Location: FF_X100_Y38_N25
\inst1|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(18));

-- Location: LCCOMB_X102_Y38_N16
\inst1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~38_combout\ = (\inst1|s_debounceCnt\(19) & (\inst1|Add0~37\ & VCC)) # (!\inst1|s_debounceCnt\(19) & (!\inst1|Add0~37\))
-- \inst1|Add0~39\ = CARRY((!\inst1|s_debounceCnt\(19) & !\inst1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst1|Add0~37\,
	combout => \inst1|Add0~38_combout\,
	cout => \inst1|Add0~39\);

-- Location: LCCOMB_X103_Y38_N30
\inst1|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[19]~19_combout\ = (\inst1|s_debounceCnt[18]~0_combout\ & (\inst1|s_debounceCnt[18]~3_combout\ & ((\inst1|Add0~38_combout\) # (!\inst1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datab => \inst1|s_debounceCnt[18]~0_combout\,
	datac => \inst1|Add0~38_combout\,
	datad => \inst1|s_debounceCnt[18]~3_combout\,
	combout => \inst1|s_debounceCnt[19]~19_combout\);

-- Location: FF_X103_Y38_N31
\inst1|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(19));

-- Location: LCCOMB_X101_Y38_N12
\inst1|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~3_combout\ = (!\inst1|s_debounceCnt\(14) & (!\inst1|s_debounceCnt\(11) & (!\inst1|s_debounceCnt\(19) & !\inst1|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(14),
	datab => \inst1|s_debounceCnt\(11),
	datac => \inst1|s_debounceCnt\(19),
	datad => \inst1|s_debounceCnt\(18),
	combout => \inst1|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X101_Y38_N14
\inst1|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~2_combout\ = (!\inst1|s_debounceCnt\(9) & (!\inst1|s_debounceCnt\(8) & (!\inst1|s_debounceCnt\(7) & !\inst1|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(9),
	datab => \inst1|s_debounceCnt\(8),
	datac => \inst1|s_debounceCnt\(7),
	datad => \inst1|s_debounceCnt\(10),
	combout => \inst1|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X101_Y38_N8
\inst1|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~0_combout\ = (!\inst1|s_debounceCnt\(17) & (!\inst1|s_debounceCnt\(6) & (!\inst1|s_debounceCnt\(16) & !\inst1|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(17),
	datab => \inst1|s_debounceCnt\(6),
	datac => \inst1|s_debounceCnt\(16),
	datad => \inst1|s_debounceCnt\(15),
	combout => \inst1|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X102_Y38_N18
\inst1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~40_combout\ = (\inst1|s_debounceCnt\(20) & ((GND) # (!\inst1|Add0~39\))) # (!\inst1|s_debounceCnt\(20) & (\inst1|Add0~39\ $ (GND)))
-- \inst1|Add0~41\ = CARRY((\inst1|s_debounceCnt\(20)) # (!\inst1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst1|Add0~39\,
	combout => \inst1|Add0~40_combout\,
	cout => \inst1|Add0~41\);

-- Location: LCCOMB_X102_Y38_N30
\inst1|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[20]~10_combout\ = (\inst1|Add0~40_combout\ & (\inst1|s_debounceCnt[18]~3_combout\ & \inst1|s_debounceCnt[18]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~40_combout\,
	datac => \inst1|s_debounceCnt[18]~3_combout\,
	datad => \inst1|s_debounceCnt[18]~4_combout\,
	combout => \inst1|s_debounceCnt[20]~10_combout\);

-- Location: FF_X102_Y38_N31
\inst1|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(20));

-- Location: LCCOMB_X102_Y38_N26
\inst1|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~1_combout\ = (!\inst1|s_debounceCnt\(20) & (!\inst1|s_debounceCnt\(21) & (!\inst1|s_debounceCnt\(12) & !\inst1|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(20),
	datab => \inst1|s_debounceCnt\(21),
	datac => \inst1|s_debounceCnt\(12),
	datad => \inst1|s_debounceCnt\(13),
	combout => \inst1|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X101_Y38_N10
\inst1|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~4_combout\ = (\inst1|s_pulsedOut~3_combout\ & (\inst1|s_pulsedOut~2_combout\ & (\inst1|s_pulsedOut~0_combout\ & \inst1|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~3_combout\,
	datab => \inst1|s_pulsedOut~2_combout\,
	datac => \inst1|s_pulsedOut~0_combout\,
	datad => \inst1|s_pulsedOut~1_combout\,
	combout => \inst1|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X101_Y38_N2
\inst1|s_debounceCnt[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[18]~2_combout\ = (\inst1|s_debounceCnt\(0)) # ((\inst1|s_debounceCnt\(5)) # ((!\inst1|s_pulsedOut~4_combout\) # (!\inst1|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(0),
	datab => \inst1|s_debounceCnt\(5),
	datac => \inst1|s_pulsedOut~5_combout\,
	datad => \inst1|s_pulsedOut~4_combout\,
	combout => \inst1|s_debounceCnt[18]~2_combout\);

-- Location: LCCOMB_X101_Y38_N0
\inst1|s_debounceCnt[18]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[18]~3_combout\ = ((\inst1|s_debounceCnt\(22)) # ((\inst1|s_debounceCnt[18]~2_combout\) # (!\inst1|s_previousIn~q\))) # (!\inst1|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_dirtyIn~q\,
	datab => \inst1|s_debounceCnt\(22),
	datac => \inst1|s_previousIn~q\,
	datad => \inst1|s_debounceCnt[18]~2_combout\,
	combout => \inst1|s_debounceCnt[18]~3_combout\);

-- Location: LCCOMB_X102_Y38_N20
\inst1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~42_combout\ = (\inst1|s_debounceCnt\(21) & (\inst1|Add0~41\ & VCC)) # (!\inst1|s_debounceCnt\(21) & (!\inst1|Add0~41\))
-- \inst1|Add0~43\ = CARRY((!\inst1|s_debounceCnt\(21) & !\inst1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst1|Add0~41\,
	combout => \inst1|Add0~42_combout\,
	cout => \inst1|Add0~43\);

-- Location: LCCOMB_X102_Y38_N24
\inst1|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[21]~11_combout\ = (\inst1|s_debounceCnt[18]~4_combout\ & (\inst1|s_debounceCnt[18]~3_combout\ & \inst1|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt[18]~4_combout\,
	datac => \inst1|s_debounceCnt[18]~3_combout\,
	datad => \inst1|Add0~42_combout\,
	combout => \inst1|s_debounceCnt[21]~11_combout\);

-- Location: FF_X102_Y38_N25
\inst1|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(21));

-- Location: LCCOMB_X103_Y38_N10
\inst1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~4_combout\ = (\inst1|s_debounceCnt\(13)) # ((\inst1|s_debounceCnt\(12)) # ((\inst1|s_debounceCnt\(11) & \inst1|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(13),
	datab => \inst1|s_debounceCnt\(12),
	datac => \inst1|s_debounceCnt\(11),
	datad => \inst1|s_debounceCnt\(10),
	combout => \inst1|LessThan0~4_combout\);

-- Location: LCCOMB_X103_Y38_N24
\inst1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~5_combout\ = (\inst1|s_debounceCnt\(16)) # ((\inst1|s_debounceCnt\(15)) # ((\inst1|s_debounceCnt\(14) & \inst1|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(14),
	datab => \inst1|s_debounceCnt\(16),
	datac => \inst1|s_debounceCnt\(15),
	datad => \inst1|LessThan0~4_combout\,
	combout => \inst1|LessThan0~5_combout\);

-- Location: LCCOMB_X103_Y38_N26
\inst1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~6_combout\ = (\inst1|s_debounceCnt\(19) & (\inst1|s_debounceCnt\(18) & ((\inst1|s_debounceCnt\(17)) # (\inst1|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(19),
	datab => \inst1|s_debounceCnt\(18),
	datac => \inst1|s_debounceCnt\(17),
	datad => \inst1|LessThan0~5_combout\,
	combout => \inst1|LessThan0~6_combout\);

-- Location: LCCOMB_X103_Y38_N2
\inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (\inst1|s_debounceCnt\(19) & (\inst1|s_debounceCnt\(18) & (\inst1|s_debounceCnt\(8) & \inst1|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(19),
	datab => \inst1|s_debounceCnt\(18),
	datac => \inst1|s_debounceCnt\(8),
	datad => \inst1|s_debounceCnt\(14),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X103_Y38_N8
\inst1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_combout\ = (\inst1|s_debounceCnt\(11) & \inst1|s_debounceCnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_debounceCnt\(11),
	datad => \inst1|s_debounceCnt\(9),
	combout => \inst1|LessThan0~1_combout\);

-- Location: LCCOMB_X103_Y38_N18
\inst1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~2_combout\ = (\inst1|s_debounceCnt\(6) & ((\inst1|s_debounceCnt\(0)) # ((\inst1|s_debounceCnt\(5)) # (!\inst1|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(0),
	datab => \inst1|s_debounceCnt\(5),
	datac => \inst1|s_debounceCnt\(6),
	datad => \inst1|s_pulsedOut~5_combout\,
	combout => \inst1|LessThan0~2_combout\);

-- Location: LCCOMB_X103_Y38_N12
\inst1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~3_combout\ = (\inst1|LessThan0~0_combout\ & (\inst1|LessThan0~1_combout\ & ((\inst1|s_debounceCnt\(7)) # (\inst1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(7),
	datab => \inst1|LessThan0~0_combout\,
	datac => \inst1|LessThan0~1_combout\,
	datad => \inst1|LessThan0~2_combout\,
	combout => \inst1|LessThan0~3_combout\);

-- Location: LCCOMB_X103_Y38_N20
\inst1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~7_combout\ = (\inst1|s_debounceCnt\(21)) # ((\inst1|s_debounceCnt\(20)) # ((\inst1|LessThan0~6_combout\) # (\inst1|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(21),
	datab => \inst1|s_debounceCnt\(20),
	datac => \inst1|LessThan0~6_combout\,
	datad => \inst1|LessThan0~3_combout\,
	combout => \inst1|LessThan0~7_combout\);

-- Location: LCCOMB_X103_Y38_N14
\inst1|s_debounceCnt[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[18]~0_combout\ = (\inst1|s_dirtyIn~q\ & ((!\inst1|LessThan0~7_combout\) # (!\inst1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(22),
	datab => \inst1|s_dirtyIn~q\,
	datad => \inst1|LessThan0~7_combout\,
	combout => \inst1|s_debounceCnt[18]~0_combout\);

-- Location: LCCOMB_X103_Y38_N22
\inst1|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[22]~25_combout\ = (\inst1|s_dirtyIn~q\ & ((\inst1|s_debounceCnt\(22) & ((!\inst1|LessThan0~7_combout\))) # (!\inst1|s_debounceCnt\(22) & (\inst1|s_debounceCnt[18]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(22),
	datab => \inst1|s_dirtyIn~q\,
	datac => \inst1|s_debounceCnt[18]~2_combout\,
	datad => \inst1|LessThan0~7_combout\,
	combout => \inst1|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X102_Y38_N22
\inst1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~44_combout\ = \inst1|Add0~43\ $ (\inst1|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_debounceCnt\(22),
	cin => \inst1|Add0~43\,
	combout => \inst1|Add0~44_combout\);

-- Location: LCCOMB_X103_Y38_N16
\inst1|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[22]~26_combout\ = (\inst1|s_previousIn~q\ & (((\inst1|s_debounceCnt[22]~25_combout\ & \inst1|Add0~44_combout\)))) # (!\inst1|s_previousIn~q\ & (\inst1|s_debounceCnt[18]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datab => \inst1|s_debounceCnt[18]~0_combout\,
	datac => \inst1|s_debounceCnt[22]~25_combout\,
	datad => \inst1|Add0~44_combout\,
	combout => \inst1|s_debounceCnt[22]~26_combout\);

-- Location: FF_X103_Y38_N17
\inst1|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(22));

-- Location: LCCOMB_X103_Y38_N4
\inst1|s_debounceCnt[18]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[18]~4_combout\ = (\inst1|s_dirtyIn~q\ & (\inst1|s_previousIn~q\ & ((!\inst1|LessThan0~7_combout\) # (!\inst1|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(22),
	datab => \inst1|s_dirtyIn~q\,
	datac => \inst1|s_previousIn~q\,
	datad => \inst1|LessThan0~7_combout\,
	combout => \inst1|s_debounceCnt[18]~4_combout\);

-- Location: LCCOMB_X103_Y38_N0
\inst1|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~27_combout\ = (\inst1|s_debounceCnt[18]~4_combout\ & \inst1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_debounceCnt[18]~4_combout\,
	datad => \inst1|Add0~10_combout\,
	combout => \inst1|s_debounceCnt~27_combout\);

-- Location: FF_X103_Y38_N1
\inst1|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~27_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(5));

-- Location: LCCOMB_X103_Y38_N6
\inst1|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~6_combout\ = (!\inst1|s_debounceCnt\(22) & (\inst1|s_dirtyIn~q\ & (\inst1|s_debounceCnt\(0) & \inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(22),
	datab => \inst1|s_dirtyIn~q\,
	datac => \inst1|s_debounceCnt\(0),
	datad => \inst1|s_previousIn~q\,
	combout => \inst1|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X105_Y38_N16
\inst1|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~7_combout\ = (!\inst1|s_debounceCnt\(5) & (\inst1|s_pulsedOut~5_combout\ & (\inst1|s_pulsedOut~4_combout\ & \inst1|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(5),
	datab => \inst1|s_pulsedOut~5_combout\,
	datac => \inst1|s_pulsedOut~4_combout\,
	datad => \inst1|s_pulsedOut~6_combout\,
	combout => \inst1|s_pulsedOut~7_combout\);

-- Location: FF_X105_Y38_N17
\inst1|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_pulsedOut~q\);

-- Location: LCCOMB_X105_Y40_N10
\inst|pState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pState~12_combout\ = ((!\inst|pState.S0~q\ & (!\inst1|s_pulsedOut~q\ & !\inst2|s_pulsedOut~q\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pState.S0~q\,
	datab => \inst1|s_pulsedOut~q\,
	datac => \KEY[0]~input_o\,
	datad => \inst2|s_pulsedOut~q\,
	combout => \inst|pState~12_combout\);

-- Location: LCCOMB_X105_Y40_N12
\inst|pState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pState~13_combout\ = (!\inst|pState.S3~q\ & !\inst|pState~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|pState.S3~q\,
	datad => \inst|pState~12_combout\,
	combout => \inst|pState~13_combout\);

-- Location: FF_X105_Y40_N13
\inst|pState.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|pState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pState.S0~q\);

-- Location: LCCOMB_X105_Y40_N20
\inst|pState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pState~10_combout\ = (\inst1|s_pulsedOut~q\ & (!\inst|pState.S0~q\)) # (!\inst1|s_pulsedOut~q\ & (((\inst|pState.S1~q\ & !\inst2|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pState.S0~q\,
	datab => \inst|pState.S1~q\,
	datac => \inst1|s_pulsedOut~q\,
	datad => \inst2|s_pulsedOut~q\,
	combout => \inst|pState~10_combout\);

-- Location: LCCOMB_X105_Y40_N28
\inst|pState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pState~11_combout\ = (\KEY[0]~input_o\ & \inst|pState~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \inst|pState~10_combout\,
	combout => \inst|pState~11_combout\);

-- Location: FF_X105_Y40_N29
\inst|pState.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|pState~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pState.S1~q\);

-- Location: LCCOMB_X105_Y40_N6
\inst|pState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pState~8_combout\ = (!\inst1|s_pulsedOut~q\ & ((\inst2|s_pulsedOut~q\ & (!\inst|pState.S0~q\)) # (!\inst2|s_pulsedOut~q\ & ((\inst|pState.S2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pState.S0~q\,
	datab => \inst|pState.S2~q\,
	datac => \inst1|s_pulsedOut~q\,
	datad => \inst2|s_pulsedOut~q\,
	combout => \inst|pState~8_combout\);

-- Location: LCCOMB_X105_Y40_N18
\inst|pState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pState~9_combout\ = (\KEY[0]~input_o\ & ((\inst|pState~8_combout\) # ((\inst|pState.S1~q\ & \inst1|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst|pState.S1~q\,
	datac => \inst1|s_pulsedOut~q\,
	datad => \inst|pState~8_combout\,
	combout => \inst|pState~9_combout\);

-- Location: FF_X105_Y40_N19
\inst|pState.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|pState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pState.S2~q\);

-- Location: LCCOMB_X105_Y40_N2
\inst|pState~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pState~6_combout\ = (\inst1|s_pulsedOut~q\ & (((\inst|pState.S2~q\)))) # (!\inst1|s_pulsedOut~q\ & (\inst2|s_pulsedOut~q\ & ((\inst|pState.S2~q\) # (\inst|pState.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_pulsedOut~q\,
	datab => \inst|pState.S2~q\,
	datac => \inst1|s_pulsedOut~q\,
	datad => \inst|pState.S1~q\,
	combout => \inst|pState~6_combout\);

-- Location: LCCOMB_X105_Y40_N8
\inst|pState~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pState~7_combout\ = (\KEY[0]~input_o\ & \inst|pState~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \inst|pState~6_combout\,
	combout => \inst|pState~7_combout\);

-- Location: FF_X105_Y40_N9
\inst|pState.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|pState~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pState.S3~q\);

-- Location: LCCOMB_X99_Y41_N18
\inst3|s_count[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[8]~47_combout\ = (\inst3|s_count\(8) & (\inst3|s_count[7]~46\ $ (GND))) # (!\inst3|s_count\(8) & (!\inst3|s_count[7]~46\ & VCC))
-- \inst3|s_count[8]~48\ = CARRY((\inst3|s_count\(8) & !\inst3|s_count[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_count\(8),
	datad => VCC,
	cin => \inst3|s_count[7]~46\,
	combout => \inst3|s_count[8]~47_combout\,
	cout => \inst3|s_count[8]~48\);

-- Location: FF_X99_Y41_N19
\inst3|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[8]~47_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(8));

-- Location: LCCOMB_X99_Y41_N20
\inst3|s_count[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[9]~49_combout\ = (\inst3|s_count\(9) & (!\inst3|s_count[8]~48\)) # (!\inst3|s_count\(9) & ((\inst3|s_count[8]~48\) # (GND)))
-- \inst3|s_count[9]~50\ = CARRY((!\inst3|s_count[8]~48\) # (!\inst3|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_count\(9),
	datad => VCC,
	cin => \inst3|s_count[8]~48\,
	combout => \inst3|s_count[9]~49_combout\,
	cout => \inst3|s_count[9]~50\);

-- Location: FF_X99_Y41_N21
\inst3|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[9]~49_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(9));

-- Location: LCCOMB_X99_Y41_N22
\inst3|s_count[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[10]~51_combout\ = (\inst3|s_count\(10) & (\inst3|s_count[9]~50\ $ (GND))) # (!\inst3|s_count\(10) & (!\inst3|s_count[9]~50\ & VCC))
-- \inst3|s_count[10]~52\ = CARRY((\inst3|s_count\(10) & !\inst3|s_count[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_count\(10),
	datad => VCC,
	cin => \inst3|s_count[9]~50\,
	combout => \inst3|s_count[10]~51_combout\,
	cout => \inst3|s_count[10]~52\);

-- Location: FF_X99_Y41_N23
\inst3|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[10]~51_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(10));

-- Location: LCCOMB_X99_Y41_N24
\inst3|s_count[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[11]~53_combout\ = (\inst3|s_count\(11) & (!\inst3|s_count[10]~52\)) # (!\inst3|s_count\(11) & ((\inst3|s_count[10]~52\) # (GND)))
-- \inst3|s_count[11]~54\ = CARRY((!\inst3|s_count[10]~52\) # (!\inst3|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_count\(11),
	datad => VCC,
	cin => \inst3|s_count[10]~52\,
	combout => \inst3|s_count[11]~53_combout\,
	cout => \inst3|s_count[11]~54\);

-- Location: FF_X99_Y41_N25
\inst3|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[11]~53_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(11));

-- Location: LCCOMB_X99_Y41_N26
\inst3|s_count[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[12]~55_combout\ = (\inst3|s_count\(12) & (\inst3|s_count[11]~54\ $ (GND))) # (!\inst3|s_count\(12) & (!\inst3|s_count[11]~54\ & VCC))
-- \inst3|s_count[12]~56\ = CARRY((\inst3|s_count\(12) & !\inst3|s_count[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_count\(12),
	datad => VCC,
	cin => \inst3|s_count[11]~54\,
	combout => \inst3|s_count[12]~55_combout\,
	cout => \inst3|s_count[12]~56\);

-- Location: FF_X99_Y41_N27
\inst3|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[12]~55_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(12));

-- Location: LCCOMB_X100_Y40_N10
\inst3|p1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|p1~0_combout\ = (\inst3|s_count\(7)) # ((\inst|pState.S3~q\) # ((\inst3|s_count\(12)) # (\inst3|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_count\(7),
	datab => \inst|pState.S3~q\,
	datac => \inst3|s_count\(12),
	datad => \inst3|s_count\(8),
	combout => \inst3|p1~0_combout\);

-- Location: LCCOMB_X99_Y41_N28
\inst3|s_count[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[13]~57_combout\ = (\inst3|s_count\(13) & (!\inst3|s_count[12]~56\)) # (!\inst3|s_count\(13) & ((\inst3|s_count[12]~56\) # (GND)))
-- \inst3|s_count[13]~58\ = CARRY((!\inst3|s_count[12]~56\) # (!\inst3|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_count\(13),
	datad => VCC,
	cin => \inst3|s_count[12]~56\,
	combout => \inst3|s_count[13]~57_combout\,
	cout => \inst3|s_count[13]~58\);

-- Location: FF_X99_Y41_N29
\inst3|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[13]~57_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(13));

-- Location: LCCOMB_X99_Y41_N30
\inst3|s_count[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[14]~59_combout\ = (\inst3|s_count\(14) & (\inst3|s_count[13]~58\ $ (GND))) # (!\inst3|s_count\(14) & (!\inst3|s_count[13]~58\ & VCC))
-- \inst3|s_count[14]~60\ = CARRY((\inst3|s_count\(14) & !\inst3|s_count[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_count\(14),
	datad => VCC,
	cin => \inst3|s_count[13]~58\,
	combout => \inst3|s_count[14]~59_combout\,
	cout => \inst3|s_count[14]~60\);

-- Location: FF_X99_Y41_N31
\inst3|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[14]~59_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(14));

-- Location: LCCOMB_X99_Y40_N0
\inst3|s_count[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[15]~61_combout\ = (\inst3|s_count\(15) & (!\inst3|s_count[14]~60\)) # (!\inst3|s_count\(15) & ((\inst3|s_count[14]~60\) # (GND)))
-- \inst3|s_count[15]~62\ = CARRY((!\inst3|s_count[14]~60\) # (!\inst3|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_count\(15),
	datad => VCC,
	cin => \inst3|s_count[14]~60\,
	combout => \inst3|s_count[15]~61_combout\,
	cout => \inst3|s_count[15]~62\);

-- Location: FF_X99_Y40_N1
\inst3|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[15]~61_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(15));

-- Location: LCCOMB_X99_Y40_N2
\inst3|s_count[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[16]~63_combout\ = (\inst3|s_count\(16) & (\inst3|s_count[15]~62\ $ (GND))) # (!\inst3|s_count\(16) & (!\inst3|s_count[15]~62\ & VCC))
-- \inst3|s_count[16]~64\ = CARRY((\inst3|s_count\(16) & !\inst3|s_count[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_count\(16),
	datad => VCC,
	cin => \inst3|s_count[15]~62\,
	combout => \inst3|s_count[16]~63_combout\,
	cout => \inst3|s_count[16]~64\);

-- Location: FF_X99_Y40_N3
\inst3|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[16]~63_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(16));

-- Location: LCCOMB_X99_Y40_N4
\inst3|s_count[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[17]~65_combout\ = (\inst3|s_count\(17) & (!\inst3|s_count[16]~64\)) # (!\inst3|s_count\(17) & ((\inst3|s_count[16]~64\) # (GND)))
-- \inst3|s_count[17]~66\ = CARRY((!\inst3|s_count[16]~64\) # (!\inst3|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_count\(17),
	datad => VCC,
	cin => \inst3|s_count[16]~64\,
	combout => \inst3|s_count[17]~65_combout\,
	cout => \inst3|s_count[17]~66\);

-- Location: FF_X99_Y40_N5
\inst3|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[17]~65_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(17));

-- Location: LCCOMB_X99_Y40_N6
\inst3|s_count[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[18]~67_combout\ = (\inst3|s_count\(18) & (\inst3|s_count[17]~66\ $ (GND))) # (!\inst3|s_count\(18) & (!\inst3|s_count[17]~66\ & VCC))
-- \inst3|s_count[18]~68\ = CARRY((\inst3|s_count\(18) & !\inst3|s_count[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_count\(18),
	datad => VCC,
	cin => \inst3|s_count[17]~66\,
	combout => \inst3|s_count[18]~67_combout\,
	cout => \inst3|s_count[18]~68\);

-- Location: FF_X99_Y40_N7
\inst3|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[18]~67_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(18));

-- Location: LCCOMB_X99_Y40_N8
\inst3|s_count[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[19]~69_combout\ = (\inst3|s_count\(19) & (!\inst3|s_count[18]~68\)) # (!\inst3|s_count\(19) & ((\inst3|s_count[18]~68\) # (GND)))
-- \inst3|s_count[19]~70\ = CARRY((!\inst3|s_count[18]~68\) # (!\inst3|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_count\(19),
	datad => VCC,
	cin => \inst3|s_count[18]~68\,
	combout => \inst3|s_count[19]~69_combout\,
	cout => \inst3|s_count[19]~70\);

-- Location: FF_X99_Y40_N9
\inst3|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[19]~69_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(19));

-- Location: LCCOMB_X99_Y40_N10
\inst3|s_count[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[20]~71_combout\ = (\inst3|s_count\(20) & (\inst3|s_count[19]~70\ $ (GND))) # (!\inst3|s_count\(20) & (!\inst3|s_count[19]~70\ & VCC))
-- \inst3|s_count[20]~72\ = CARRY((\inst3|s_count\(20) & !\inst3|s_count[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_count\(20),
	datad => VCC,
	cin => \inst3|s_count[19]~70\,
	combout => \inst3|s_count[20]~71_combout\,
	cout => \inst3|s_count[20]~72\);

-- Location: FF_X99_Y40_N11
\inst3|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[20]~71_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(20));

-- Location: LCCOMB_X99_Y40_N12
\inst3|s_count[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[21]~73_combout\ = (\inst3|s_count\(21) & (!\inst3|s_count[20]~72\)) # (!\inst3|s_count\(21) & ((\inst3|s_count[20]~72\) # (GND)))
-- \inst3|s_count[21]~74\ = CARRY((!\inst3|s_count[20]~72\) # (!\inst3|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_count\(21),
	datad => VCC,
	cin => \inst3|s_count[20]~72\,
	combout => \inst3|s_count[21]~73_combout\,
	cout => \inst3|s_count[21]~74\);

-- Location: FF_X99_Y40_N13
\inst3|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[21]~73_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(21));

-- Location: LCCOMB_X99_Y40_N14
\inst3|s_count[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[22]~75_combout\ = (\inst3|s_count\(22) & (\inst3|s_count[21]~74\ $ (GND))) # (!\inst3|s_count\(22) & (!\inst3|s_count[21]~74\ & VCC))
-- \inst3|s_count[22]~76\ = CARRY((\inst3|s_count\(22) & !\inst3|s_count[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_count\(22),
	datad => VCC,
	cin => \inst3|s_count[21]~74\,
	combout => \inst3|s_count[22]~75_combout\,
	cout => \inst3|s_count[22]~76\);

-- Location: FF_X99_Y40_N15
\inst3|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[22]~75_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(22));

-- Location: LCCOMB_X99_Y40_N16
\inst3|s_count[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[23]~77_combout\ = (\inst3|s_count\(23) & (!\inst3|s_count[22]~76\)) # (!\inst3|s_count\(23) & ((\inst3|s_count[22]~76\) # (GND)))
-- \inst3|s_count[23]~78\ = CARRY((!\inst3|s_count[22]~76\) # (!\inst3|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_count\(23),
	datad => VCC,
	cin => \inst3|s_count[22]~76\,
	combout => \inst3|s_count[23]~77_combout\,
	cout => \inst3|s_count[23]~78\);

-- Location: FF_X99_Y40_N17
\inst3|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[23]~77_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(23));

-- Location: LCCOMB_X99_Y40_N18
\inst3|s_count[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[24]~79_combout\ = (\inst3|s_count\(24) & (\inst3|s_count[23]~78\ $ (GND))) # (!\inst3|s_count\(24) & (!\inst3|s_count[23]~78\ & VCC))
-- \inst3|s_count[24]~80\ = CARRY((\inst3|s_count\(24) & !\inst3|s_count[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_count\(24),
	datad => VCC,
	cin => \inst3|s_count[23]~78\,
	combout => \inst3|s_count[24]~79_combout\,
	cout => \inst3|s_count[24]~80\);

-- Location: FF_X99_Y40_N19
\inst3|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[24]~79_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(24));

-- Location: LCCOMB_X99_Y40_N20
\inst3|s_count[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[25]~81_combout\ = (\inst3|s_count\(25) & (!\inst3|s_count[24]~80\)) # (!\inst3|s_count\(25) & ((\inst3|s_count[24]~80\) # (GND)))
-- \inst3|s_count[25]~82\ = CARRY((!\inst3|s_count[24]~80\) # (!\inst3|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_count\(25),
	datad => VCC,
	cin => \inst3|s_count[24]~80\,
	combout => \inst3|s_count[25]~81_combout\,
	cout => \inst3|s_count[25]~82\);

-- Location: FF_X99_Y40_N21
\inst3|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[25]~81_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(25));

-- Location: LCCOMB_X99_Y40_N22
\inst3|s_count[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[26]~83_combout\ = (\inst3|s_count\(26) & (\inst3|s_count[25]~82\ $ (GND))) # (!\inst3|s_count\(26) & (!\inst3|s_count[25]~82\ & VCC))
-- \inst3|s_count[26]~84\ = CARRY((\inst3|s_count\(26) & !\inst3|s_count[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_count\(26),
	datad => VCC,
	cin => \inst3|s_count[25]~82\,
	combout => \inst3|s_count[26]~83_combout\,
	cout => \inst3|s_count[26]~84\);

-- Location: FF_X99_Y40_N23
\inst3|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[26]~83_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(26));

-- Location: LCCOMB_X99_Y40_N24
\inst3|s_count[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[27]~85_combout\ = (\inst3|s_count\(27) & (!\inst3|s_count[26]~84\)) # (!\inst3|s_count\(27) & ((\inst3|s_count[26]~84\) # (GND)))
-- \inst3|s_count[27]~86\ = CARRY((!\inst3|s_count[26]~84\) # (!\inst3|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_count\(27),
	datad => VCC,
	cin => \inst3|s_count[26]~84\,
	combout => \inst3|s_count[27]~85_combout\,
	cout => \inst3|s_count[27]~86\);

-- Location: FF_X99_Y40_N25
\inst3|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[27]~85_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(27));

-- Location: LCCOMB_X100_Y40_N22
\inst3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~1_combout\ = (\inst3|s_count\(20) & (\inst3|s_count\(22) & (\inst3|s_count\(15) & \inst3|s_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_count\(20),
	datab => \inst3|s_count\(22),
	datac => \inst3|s_count\(15),
	datad => \inst3|s_count\(21),
	combout => \inst3|Equal0~1_combout\);

-- Location: LCCOMB_X100_Y40_N0
\inst3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (\inst3|s_count\(8) & (\inst3|s_count\(7) & (\inst3|s_count\(12) & \inst3|s_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_count\(8),
	datab => \inst3|s_count\(7),
	datac => \inst3|s_count\(12),
	datad => \inst3|s_count\(14),
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X100_Y40_N8
\inst3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~2_combout\ = (\inst3|s_count\(23) & (\inst3|s_count\(27) & (\inst3|Equal0~1_combout\ & \inst3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_count\(23),
	datab => \inst3|s_count\(27),
	datac => \inst3|Equal0~1_combout\,
	datad => \inst3|Equal0~0_combout\,
	combout => \inst3|Equal0~2_combout\);

-- Location: LCCOMB_X100_Y40_N12
\inst3|p1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|p1~1_combout\ = (\inst3|s_count\(20)) # ((\inst3|s_count\(21)) # ((\inst3|s_count\(15)) # (\inst3|s_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_count\(20),
	datab => \inst3|s_count\(21),
	datac => \inst3|s_count\(15),
	datad => \inst3|s_count\(14),
	combout => \inst3|p1~1_combout\);

-- Location: LCCOMB_X100_Y40_N26
\inst3|p1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|p1~2_combout\ = (\inst3|s_count\(22)) # ((\inst3|s_count\(27)) # ((\inst3|s_count\(23)) # (\inst3|p1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_count\(22),
	datab => \inst3|s_count\(27),
	datac => \inst3|s_count\(23),
	datad => \inst3|p1~1_combout\,
	combout => \inst3|p1~2_combout\);

-- Location: LCCOMB_X99_Y40_N26
\inst3|s_count[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[28]~87_combout\ = (\inst3|s_count\(28) & (\inst3|s_count[27]~86\ $ (GND))) # (!\inst3|s_count\(28) & (!\inst3|s_count[27]~86\ & VCC))
-- \inst3|s_count[28]~88\ = CARRY((\inst3|s_count\(28) & !\inst3|s_count[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_count\(28),
	datad => VCC,
	cin => \inst3|s_count[27]~86\,
	combout => \inst3|s_count[28]~87_combout\,
	cout => \inst3|s_count[28]~88\);

-- Location: FF_X99_Y40_N27
\inst3|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[28]~87_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(28));

-- Location: LCCOMB_X99_Y40_N28
\inst3|s_count[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[29]~89_combout\ = (\inst3|s_count\(29) & (!\inst3|s_count[28]~88\)) # (!\inst3|s_count\(29) & ((\inst3|s_count[28]~88\) # (GND)))
-- \inst3|s_count[29]~90\ = CARRY((!\inst3|s_count[28]~88\) # (!\inst3|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_count\(29),
	datad => VCC,
	cin => \inst3|s_count[28]~88\,
	combout => \inst3|s_count[29]~89_combout\,
	cout => \inst3|s_count[29]~90\);

-- Location: FF_X99_Y40_N29
\inst3|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[29]~89_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(29));

-- Location: LCCOMB_X99_Y40_N30
\inst3|s_count[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_count[30]~91_combout\ = \inst3|s_count\(30) $ (!\inst3|s_count[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_count\(30),
	cin => \inst3|s_count[29]~90\,
	combout => \inst3|s_count[30]~91_combout\);

-- Location: FF_X99_Y40_N31
\inst3|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_count[30]~91_combout\,
	sclr => \inst3|ALT_INV_pulseOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_count\(30));

-- Location: LCCOMB_X100_Y40_N14
\inst3|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~8_combout\ = (!\inst3|s_count\(29) & (!\inst3|s_count\(25) & (!\inst3|s_count\(28) & !\inst3|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_count\(29),
	datab => \inst3|s_count\(25),
	datac => \inst3|s_count\(28),
	datad => \inst3|s_count\(26),
	combout => \inst3|Equal0~8_combout\);

-- Location: LCCOMB_X99_Y41_N0
\inst3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~4_combout\ = (!\inst3|s_count\(5) & (!\inst3|s_count\(9) & (!\inst3|s_count\(6) & !\inst3|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_count\(5),
	datab => \inst3|s_count\(9),
	datac => \inst3|s_count\(6),
	datad => \inst3|s_count\(4),
	combout => \inst3|Equal0~4_combout\);

-- Location: LCCOMB_X100_Y40_N18
\inst3|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~6_combout\ = (!\inst3|s_count\(19) & (!\inst3|s_count\(17) & (!\inst3|s_count\(18) & !\inst3|s_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_count\(19),
	datab => \inst3|s_count\(17),
	datac => \inst3|s_count\(18),
	datad => \inst3|s_count\(24),
	combout => \inst3|Equal0~6_combout\);

-- Location: LCCOMB_X100_Y40_N30
\inst3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~3_combout\ = (!\inst3|s_count\(2) & (!\inst3|s_count\(1) & (!\inst3|s_count\(0) & !\inst3|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_count\(2),
	datab => \inst3|s_count\(1),
	datac => \inst3|s_count\(0),
	datad => \inst3|s_count\(3),
	combout => \inst3|Equal0~3_combout\);

-- Location: LCCOMB_X100_Y40_N20
\inst3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~5_combout\ = (!\inst3|s_count\(16) & (!\inst3|s_count\(13) & (!\inst3|s_count\(10) & !\inst3|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_count\(16),
	datab => \inst3|s_count\(13),
	datac => \inst3|s_count\(10),
	datad => \inst3|s_count\(11),
	combout => \inst3|Equal0~5_combout\);

-- Location: LCCOMB_X100_Y40_N24
\inst3|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~7_combout\ = (\inst3|Equal0~4_combout\ & (\inst3|Equal0~6_combout\ & (\inst3|Equal0~3_combout\ & \inst3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~4_combout\,
	datab => \inst3|Equal0~6_combout\,
	datac => \inst3|Equal0~3_combout\,
	datad => \inst3|Equal0~5_combout\,
	combout => \inst3|Equal0~7_combout\);

-- Location: LCCOMB_X100_Y40_N16
\inst3|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~9_combout\ = (!\inst3|s_count\(30) & (\inst3|Equal0~8_combout\ & \inst3|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_count\(30),
	datac => \inst3|Equal0~8_combout\,
	datad => \inst3|Equal0~7_combout\,
	combout => \inst3|Equal0~9_combout\);

-- Location: LCCOMB_X100_Y40_N2
\inst3|pulseOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|pulseOut~0_combout\ = (\inst3|Equal0~2_combout\ $ (((\inst3|p1~0_combout\) # (\inst3|p1~2_combout\)))) # (!\inst3|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|p1~0_combout\,
	datab => \inst3|Equal0~2_combout\,
	datac => \inst3|p1~2_combout\,
	datad => \inst3|Equal0~9_combout\,
	combout => \inst3|pulseOut~0_combout\);

-- Location: LCCOMB_X100_Y40_N28
\inst3|pulseOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|pulseOut~feeder_combout\ = \inst3|pulseOut~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|pulseOut~0_combout\,
	combout => \inst3|pulseOut~feeder_combout\);

-- Location: FF_X100_Y40_N29
\inst3|pulseOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|pulseOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pulseOut~q\);

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


