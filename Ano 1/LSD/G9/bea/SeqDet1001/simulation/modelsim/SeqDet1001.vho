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

-- DATE "04/24/2017 17:47:02"

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

ENTITY 	SeqDet1001 IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(0 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 8)
	);
END SeqDet1001;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SeqDet1001 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 8);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \freqDiv|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \freqDiv|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~4_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~5_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~2_combout\ : std_logic;
SIGNAL \freqDiv|LessThan1~0_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~3_combout\ : std_logic;
SIGNAL \freqDiv|LessThan1~4_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~0_combout\ : std_logic;
SIGNAL \freqDiv|LessThan1~2_combout\ : std_logic;
SIGNAL \freqDiv|LessThan1~3_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~1_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~6_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[0]~27\ : std_logic;
SIGNAL \freqDiv|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[1]~29\ : std_logic;
SIGNAL \freqDiv|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[2]~31\ : std_logic;
SIGNAL \freqDiv|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[3]~33\ : std_logic;
SIGNAL \freqDiv|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[4]~35\ : std_logic;
SIGNAL \freqDiv|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[5]~37\ : std_logic;
SIGNAL \freqDiv|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[6]~39\ : std_logic;
SIGNAL \freqDiv|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[7]~41\ : std_logic;
SIGNAL \freqDiv|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[8]~43\ : std_logic;
SIGNAL \freqDiv|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[9]~45\ : std_logic;
SIGNAL \freqDiv|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[10]~47\ : std_logic;
SIGNAL \freqDiv|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[11]~49\ : std_logic;
SIGNAL \freqDiv|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[12]~51\ : std_logic;
SIGNAL \freqDiv|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[13]~53\ : std_logic;
SIGNAL \freqDiv|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[14]~55\ : std_logic;
SIGNAL \freqDiv|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[15]~57\ : std_logic;
SIGNAL \freqDiv|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[16]~59\ : std_logic;
SIGNAL \freqDiv|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[17]~61\ : std_logic;
SIGNAL \freqDiv|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[18]~63\ : std_logic;
SIGNAL \freqDiv|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[19]~65\ : std_logic;
SIGNAL \freqDiv|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[20]~67\ : std_logic;
SIGNAL \freqDiv|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[21]~69\ : std_logic;
SIGNAL \freqDiv|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[22]~71\ : std_logic;
SIGNAL \freqDiv|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[23]~73\ : std_logic;
SIGNAL \freqDiv|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[24]~75\ : std_logic;
SIGNAL \freqDiv|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \freqDiv|LessThan1~1_combout\ : std_logic;
SIGNAL \freqDiv|LessThan1~5_combout\ : std_logic;
SIGNAL \freqDiv|LessThan1~6_combout\ : std_logic;
SIGNAL \freqDiv|LessThan1~7_combout\ : std_logic;
SIGNAL \freqDiv|LessThan1~8_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~q\ : std_logic;
SIGNAL \freqDiv|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \shifter|s_currentState.S1~q\ : std_logic;
SIGNAL \shifter|Selector1~0_combout\ : std_logic;
SIGNAL \shifter|s_currentState.S2~q\ : std_logic;
SIGNAL \shifter|s_nextState.S3~0_combout\ : std_logic;
SIGNAL \shifter|s_currentState.S3~q\ : std_logic;
SIGNAL \shifter|Yout~1_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter\ : std_logic_vector(25 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\freqDiv|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \freqDiv|clkOut~q\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shifter|Yout~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \freqDiv|clkOut~q\,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

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

-- Location: LCCOMB_X55_Y66_N6
\freqDiv|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[0]~26_combout\ = \freqDiv|s_divCounter\(0) $ (VCC)
-- \freqDiv|s_divCounter[0]~27\ = CARRY(\freqDiv|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(0),
	datad => VCC,
	combout => \freqDiv|s_divCounter[0]~26_combout\,
	cout => \freqDiv|s_divCounter[0]~27\);

-- Location: LCCOMB_X56_Y66_N12
\freqDiv|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~4_combout\ = (!\freqDiv|s_divCounter\(18) & (!\freqDiv|s_divCounter\(16) & !\freqDiv|s_divCounter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(18),
	datac => \freqDiv|s_divCounter\(16),
	datad => \freqDiv|s_divCounter\(24),
	combout => \freqDiv|LessThan0~4_combout\);

-- Location: LCCOMB_X56_Y66_N18
\freqDiv|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~5_combout\ = (((!\freqDiv|s_divCounter\(14)) # (!\freqDiv|s_divCounter\(13))) # (!\freqDiv|s_divCounter\(12))) # (!\freqDiv|s_divCounter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(15),
	datab => \freqDiv|s_divCounter\(12),
	datac => \freqDiv|s_divCounter\(13),
	datad => \freqDiv|s_divCounter\(14),
	combout => \freqDiv|LessThan0~5_combout\);

-- Location: LCCOMB_X55_Y65_N28
\freqDiv|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~2_combout\ = ((!\freqDiv|s_divCounter\(18) & !\freqDiv|s_divCounter\(17))) # (!\freqDiv|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(18),
	datac => \freqDiv|s_divCounter\(17),
	datad => \freqDiv|s_divCounter\(23),
	combout => \freqDiv|LessThan0~2_combout\);

-- Location: LCCOMB_X55_Y65_N26
\freqDiv|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan1~0_combout\ = (\freqDiv|s_divCounter\(19) & (\freqDiv|s_divCounter\(22) & (\freqDiv|s_divCounter\(20) & \freqDiv|s_divCounter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(19),
	datab => \freqDiv|s_divCounter\(22),
	datac => \freqDiv|s_divCounter\(20),
	datad => \freqDiv|s_divCounter\(21),
	combout => \freqDiv|LessThan1~0_combout\);

-- Location: LCCOMB_X56_Y66_N8
\freqDiv|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~3_combout\ = ((!\freqDiv|s_divCounter\(24) & ((\freqDiv|LessThan0~2_combout\) # (!\freqDiv|LessThan1~0_combout\)))) # (!\freqDiv|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(25),
	datab => \freqDiv|s_divCounter\(24),
	datac => \freqDiv|LessThan0~2_combout\,
	datad => \freqDiv|LessThan1~0_combout\,
	combout => \freqDiv|LessThan0~3_combout\);

-- Location: LCCOMB_X55_Y66_N4
\freqDiv|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan1~4_combout\ = (!\freqDiv|s_divCounter\(8) & (!\freqDiv|s_divCounter\(7) & (!\freqDiv|s_divCounter\(10) & !\freqDiv|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(8),
	datab => \freqDiv|s_divCounter\(7),
	datac => \freqDiv|s_divCounter\(10),
	datad => \freqDiv|s_divCounter\(9),
	combout => \freqDiv|LessThan1~4_combout\);

-- Location: LCCOMB_X56_Y66_N4
\freqDiv|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~0_combout\ = (!\freqDiv|s_divCounter\(16) & (!\freqDiv|s_divCounter\(11) & (!\freqDiv|s_divCounter\(18) & !\freqDiv|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(16),
	datab => \freqDiv|s_divCounter\(11),
	datac => \freqDiv|s_divCounter\(18),
	datad => \freqDiv|s_divCounter\(24),
	combout => \freqDiv|LessThan0~0_combout\);

-- Location: LCCOMB_X55_Y66_N0
\freqDiv|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan1~2_combout\ = (((!\freqDiv|s_divCounter\(3)) # (!\freqDiv|s_divCounter\(0))) # (!\freqDiv|s_divCounter\(1))) # (!\freqDiv|s_divCounter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(2),
	datab => \freqDiv|s_divCounter\(1),
	datac => \freqDiv|s_divCounter\(0),
	datad => \freqDiv|s_divCounter\(3),
	combout => \freqDiv|LessThan1~2_combout\);

-- Location: LCCOMB_X55_Y66_N2
\freqDiv|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan1~3_combout\ = ((\freqDiv|LessThan1~2_combout\) # (!\freqDiv|s_divCounter\(4))) # (!\freqDiv|s_divCounter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(5),
	datac => \freqDiv|s_divCounter\(4),
	datad => \freqDiv|LessThan1~2_combout\,
	combout => \freqDiv|LessThan1~3_combout\);

-- Location: LCCOMB_X56_Y66_N20
\freqDiv|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~1_combout\ = (\freqDiv|LessThan1~4_combout\ & (\freqDiv|LessThan0~0_combout\ & ((\freqDiv|LessThan1~3_combout\) # (!\freqDiv|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(6),
	datab => \freqDiv|LessThan1~4_combout\,
	datac => \freqDiv|LessThan0~0_combout\,
	datad => \freqDiv|LessThan1~3_combout\,
	combout => \freqDiv|LessThan0~1_combout\);

-- Location: LCCOMB_X56_Y66_N30
\freqDiv|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~6_combout\ = (!\freqDiv|LessThan0~3_combout\ & (!\freqDiv|LessThan0~1_combout\ & ((!\freqDiv|LessThan0~5_combout\) # (!\freqDiv|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|LessThan0~4_combout\,
	datab => \freqDiv|LessThan0~5_combout\,
	datac => \freqDiv|LessThan0~3_combout\,
	datad => \freqDiv|LessThan0~1_combout\,
	combout => \freqDiv|LessThan0~6_combout\);

-- Location: FF_X55_Y66_N7
\freqDiv|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[0]~26_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(0));

-- Location: LCCOMB_X55_Y66_N8
\freqDiv|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[1]~28_combout\ = (\freqDiv|s_divCounter\(1) & (!\freqDiv|s_divCounter[0]~27\)) # (!\freqDiv|s_divCounter\(1) & ((\freqDiv|s_divCounter[0]~27\) # (GND)))
-- \freqDiv|s_divCounter[1]~29\ = CARRY((!\freqDiv|s_divCounter[0]~27\) # (!\freqDiv|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(1),
	datad => VCC,
	cin => \freqDiv|s_divCounter[0]~27\,
	combout => \freqDiv|s_divCounter[1]~28_combout\,
	cout => \freqDiv|s_divCounter[1]~29\);

-- Location: FF_X55_Y66_N9
\freqDiv|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[1]~28_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(1));

-- Location: LCCOMB_X55_Y66_N10
\freqDiv|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[2]~30_combout\ = (\freqDiv|s_divCounter\(2) & (\freqDiv|s_divCounter[1]~29\ $ (GND))) # (!\freqDiv|s_divCounter\(2) & (!\freqDiv|s_divCounter[1]~29\ & VCC))
-- \freqDiv|s_divCounter[2]~31\ = CARRY((\freqDiv|s_divCounter\(2) & !\freqDiv|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(2),
	datad => VCC,
	cin => \freqDiv|s_divCounter[1]~29\,
	combout => \freqDiv|s_divCounter[2]~30_combout\,
	cout => \freqDiv|s_divCounter[2]~31\);

-- Location: FF_X55_Y66_N11
\freqDiv|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[2]~30_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(2));

-- Location: LCCOMB_X55_Y66_N12
\freqDiv|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[3]~32_combout\ = (\freqDiv|s_divCounter\(3) & (!\freqDiv|s_divCounter[2]~31\)) # (!\freqDiv|s_divCounter\(3) & ((\freqDiv|s_divCounter[2]~31\) # (GND)))
-- \freqDiv|s_divCounter[3]~33\ = CARRY((!\freqDiv|s_divCounter[2]~31\) # (!\freqDiv|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(3),
	datad => VCC,
	cin => \freqDiv|s_divCounter[2]~31\,
	combout => \freqDiv|s_divCounter[3]~32_combout\,
	cout => \freqDiv|s_divCounter[3]~33\);

-- Location: FF_X55_Y66_N13
\freqDiv|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[3]~32_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(3));

-- Location: LCCOMB_X55_Y66_N14
\freqDiv|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[4]~34_combout\ = (\freqDiv|s_divCounter\(4) & (\freqDiv|s_divCounter[3]~33\ $ (GND))) # (!\freqDiv|s_divCounter\(4) & (!\freqDiv|s_divCounter[3]~33\ & VCC))
-- \freqDiv|s_divCounter[4]~35\ = CARRY((\freqDiv|s_divCounter\(4) & !\freqDiv|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(4),
	datad => VCC,
	cin => \freqDiv|s_divCounter[3]~33\,
	combout => \freqDiv|s_divCounter[4]~34_combout\,
	cout => \freqDiv|s_divCounter[4]~35\);

-- Location: FF_X55_Y66_N15
\freqDiv|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[4]~34_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(4));

-- Location: LCCOMB_X55_Y66_N16
\freqDiv|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[5]~36_combout\ = (\freqDiv|s_divCounter\(5) & (!\freqDiv|s_divCounter[4]~35\)) # (!\freqDiv|s_divCounter\(5) & ((\freqDiv|s_divCounter[4]~35\) # (GND)))
-- \freqDiv|s_divCounter[5]~37\ = CARRY((!\freqDiv|s_divCounter[4]~35\) # (!\freqDiv|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(5),
	datad => VCC,
	cin => \freqDiv|s_divCounter[4]~35\,
	combout => \freqDiv|s_divCounter[5]~36_combout\,
	cout => \freqDiv|s_divCounter[5]~37\);

-- Location: FF_X55_Y66_N17
\freqDiv|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[5]~36_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(5));

-- Location: LCCOMB_X55_Y66_N18
\freqDiv|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[6]~38_combout\ = (\freqDiv|s_divCounter\(6) & (\freqDiv|s_divCounter[5]~37\ $ (GND))) # (!\freqDiv|s_divCounter\(6) & (!\freqDiv|s_divCounter[5]~37\ & VCC))
-- \freqDiv|s_divCounter[6]~39\ = CARRY((\freqDiv|s_divCounter\(6) & !\freqDiv|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(6),
	datad => VCC,
	cin => \freqDiv|s_divCounter[5]~37\,
	combout => \freqDiv|s_divCounter[6]~38_combout\,
	cout => \freqDiv|s_divCounter[6]~39\);

-- Location: FF_X55_Y66_N19
\freqDiv|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[6]~38_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(6));

-- Location: LCCOMB_X55_Y66_N20
\freqDiv|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[7]~40_combout\ = (\freqDiv|s_divCounter\(7) & (!\freqDiv|s_divCounter[6]~39\)) # (!\freqDiv|s_divCounter\(7) & ((\freqDiv|s_divCounter[6]~39\) # (GND)))
-- \freqDiv|s_divCounter[7]~41\ = CARRY((!\freqDiv|s_divCounter[6]~39\) # (!\freqDiv|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(7),
	datad => VCC,
	cin => \freqDiv|s_divCounter[6]~39\,
	combout => \freqDiv|s_divCounter[7]~40_combout\,
	cout => \freqDiv|s_divCounter[7]~41\);

-- Location: FF_X55_Y66_N21
\freqDiv|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[7]~40_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(7));

-- Location: LCCOMB_X55_Y66_N22
\freqDiv|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[8]~42_combout\ = (\freqDiv|s_divCounter\(8) & (\freqDiv|s_divCounter[7]~41\ $ (GND))) # (!\freqDiv|s_divCounter\(8) & (!\freqDiv|s_divCounter[7]~41\ & VCC))
-- \freqDiv|s_divCounter[8]~43\ = CARRY((\freqDiv|s_divCounter\(8) & !\freqDiv|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(8),
	datad => VCC,
	cin => \freqDiv|s_divCounter[7]~41\,
	combout => \freqDiv|s_divCounter[8]~42_combout\,
	cout => \freqDiv|s_divCounter[8]~43\);

-- Location: FF_X55_Y66_N23
\freqDiv|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[8]~42_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(8));

-- Location: LCCOMB_X55_Y66_N24
\freqDiv|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[9]~44_combout\ = (\freqDiv|s_divCounter\(9) & (!\freqDiv|s_divCounter[8]~43\)) # (!\freqDiv|s_divCounter\(9) & ((\freqDiv|s_divCounter[8]~43\) # (GND)))
-- \freqDiv|s_divCounter[9]~45\ = CARRY((!\freqDiv|s_divCounter[8]~43\) # (!\freqDiv|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(9),
	datad => VCC,
	cin => \freqDiv|s_divCounter[8]~43\,
	combout => \freqDiv|s_divCounter[9]~44_combout\,
	cout => \freqDiv|s_divCounter[9]~45\);

-- Location: FF_X55_Y66_N25
\freqDiv|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[9]~44_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(9));

-- Location: LCCOMB_X55_Y66_N26
\freqDiv|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[10]~46_combout\ = (\freqDiv|s_divCounter\(10) & (\freqDiv|s_divCounter[9]~45\ $ (GND))) # (!\freqDiv|s_divCounter\(10) & (!\freqDiv|s_divCounter[9]~45\ & VCC))
-- \freqDiv|s_divCounter[10]~47\ = CARRY((\freqDiv|s_divCounter\(10) & !\freqDiv|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(10),
	datad => VCC,
	cin => \freqDiv|s_divCounter[9]~45\,
	combout => \freqDiv|s_divCounter[10]~46_combout\,
	cout => \freqDiv|s_divCounter[10]~47\);

-- Location: FF_X55_Y66_N27
\freqDiv|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[10]~46_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(10));

-- Location: LCCOMB_X55_Y66_N28
\freqDiv|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[11]~48_combout\ = (\freqDiv|s_divCounter\(11) & (!\freqDiv|s_divCounter[10]~47\)) # (!\freqDiv|s_divCounter\(11) & ((\freqDiv|s_divCounter[10]~47\) # (GND)))
-- \freqDiv|s_divCounter[11]~49\ = CARRY((!\freqDiv|s_divCounter[10]~47\) # (!\freqDiv|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(11),
	datad => VCC,
	cin => \freqDiv|s_divCounter[10]~47\,
	combout => \freqDiv|s_divCounter[11]~48_combout\,
	cout => \freqDiv|s_divCounter[11]~49\);

-- Location: FF_X55_Y66_N29
\freqDiv|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[11]~48_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(11));

-- Location: LCCOMB_X55_Y66_N30
\freqDiv|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[12]~50_combout\ = (\freqDiv|s_divCounter\(12) & (\freqDiv|s_divCounter[11]~49\ $ (GND))) # (!\freqDiv|s_divCounter\(12) & (!\freqDiv|s_divCounter[11]~49\ & VCC))
-- \freqDiv|s_divCounter[12]~51\ = CARRY((\freqDiv|s_divCounter\(12) & !\freqDiv|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(12),
	datad => VCC,
	cin => \freqDiv|s_divCounter[11]~49\,
	combout => \freqDiv|s_divCounter[12]~50_combout\,
	cout => \freqDiv|s_divCounter[12]~51\);

-- Location: FF_X55_Y66_N31
\freqDiv|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[12]~50_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(12));

-- Location: LCCOMB_X55_Y65_N0
\freqDiv|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[13]~52_combout\ = (\freqDiv|s_divCounter\(13) & (!\freqDiv|s_divCounter[12]~51\)) # (!\freqDiv|s_divCounter\(13) & ((\freqDiv|s_divCounter[12]~51\) # (GND)))
-- \freqDiv|s_divCounter[13]~53\ = CARRY((!\freqDiv|s_divCounter[12]~51\) # (!\freqDiv|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(13),
	datad => VCC,
	cin => \freqDiv|s_divCounter[12]~51\,
	combout => \freqDiv|s_divCounter[13]~52_combout\,
	cout => \freqDiv|s_divCounter[13]~53\);

-- Location: FF_X56_Y66_N17
\freqDiv|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \freqDiv|s_divCounter[13]~52_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(13));

-- Location: LCCOMB_X55_Y65_N2
\freqDiv|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[14]~54_combout\ = (\freqDiv|s_divCounter\(14) & (\freqDiv|s_divCounter[13]~53\ $ (GND))) # (!\freqDiv|s_divCounter\(14) & (!\freqDiv|s_divCounter[13]~53\ & VCC))
-- \freqDiv|s_divCounter[14]~55\ = CARRY((\freqDiv|s_divCounter\(14) & !\freqDiv|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(14),
	datad => VCC,
	cin => \freqDiv|s_divCounter[13]~53\,
	combout => \freqDiv|s_divCounter[14]~54_combout\,
	cout => \freqDiv|s_divCounter[14]~55\);

-- Location: FF_X55_Y65_N3
\freqDiv|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[14]~54_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(14));

-- Location: LCCOMB_X55_Y65_N4
\freqDiv|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[15]~56_combout\ = (\freqDiv|s_divCounter\(15) & (!\freqDiv|s_divCounter[14]~55\)) # (!\freqDiv|s_divCounter\(15) & ((\freqDiv|s_divCounter[14]~55\) # (GND)))
-- \freqDiv|s_divCounter[15]~57\ = CARRY((!\freqDiv|s_divCounter[14]~55\) # (!\freqDiv|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(15),
	datad => VCC,
	cin => \freqDiv|s_divCounter[14]~55\,
	combout => \freqDiv|s_divCounter[15]~56_combout\,
	cout => \freqDiv|s_divCounter[15]~57\);

-- Location: FF_X55_Y65_N5
\freqDiv|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[15]~56_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(15));

-- Location: LCCOMB_X55_Y65_N6
\freqDiv|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[16]~58_combout\ = (\freqDiv|s_divCounter\(16) & (\freqDiv|s_divCounter[15]~57\ $ (GND))) # (!\freqDiv|s_divCounter\(16) & (!\freqDiv|s_divCounter[15]~57\ & VCC))
-- \freqDiv|s_divCounter[16]~59\ = CARRY((\freqDiv|s_divCounter\(16) & !\freqDiv|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(16),
	datad => VCC,
	cin => \freqDiv|s_divCounter[15]~57\,
	combout => \freqDiv|s_divCounter[16]~58_combout\,
	cout => \freqDiv|s_divCounter[16]~59\);

-- Location: FF_X55_Y65_N7
\freqDiv|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[16]~58_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(16));

-- Location: LCCOMB_X55_Y65_N8
\freqDiv|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[17]~60_combout\ = (\freqDiv|s_divCounter\(17) & (!\freqDiv|s_divCounter[16]~59\)) # (!\freqDiv|s_divCounter\(17) & ((\freqDiv|s_divCounter[16]~59\) # (GND)))
-- \freqDiv|s_divCounter[17]~61\ = CARRY((!\freqDiv|s_divCounter[16]~59\) # (!\freqDiv|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(17),
	datad => VCC,
	cin => \freqDiv|s_divCounter[16]~59\,
	combout => \freqDiv|s_divCounter[17]~60_combout\,
	cout => \freqDiv|s_divCounter[17]~61\);

-- Location: FF_X55_Y65_N9
\freqDiv|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[17]~60_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(17));

-- Location: LCCOMB_X55_Y65_N10
\freqDiv|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[18]~62_combout\ = (\freqDiv|s_divCounter\(18) & (\freqDiv|s_divCounter[17]~61\ $ (GND))) # (!\freqDiv|s_divCounter\(18) & (!\freqDiv|s_divCounter[17]~61\ & VCC))
-- \freqDiv|s_divCounter[18]~63\ = CARRY((\freqDiv|s_divCounter\(18) & !\freqDiv|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(18),
	datad => VCC,
	cin => \freqDiv|s_divCounter[17]~61\,
	combout => \freqDiv|s_divCounter[18]~62_combout\,
	cout => \freqDiv|s_divCounter[18]~63\);

-- Location: FF_X55_Y65_N11
\freqDiv|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[18]~62_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(18));

-- Location: LCCOMB_X55_Y65_N12
\freqDiv|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[19]~64_combout\ = (\freqDiv|s_divCounter\(19) & (!\freqDiv|s_divCounter[18]~63\)) # (!\freqDiv|s_divCounter\(19) & ((\freqDiv|s_divCounter[18]~63\) # (GND)))
-- \freqDiv|s_divCounter[19]~65\ = CARRY((!\freqDiv|s_divCounter[18]~63\) # (!\freqDiv|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(19),
	datad => VCC,
	cin => \freqDiv|s_divCounter[18]~63\,
	combout => \freqDiv|s_divCounter[19]~64_combout\,
	cout => \freqDiv|s_divCounter[19]~65\);

-- Location: FF_X55_Y65_N13
\freqDiv|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[19]~64_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(19));

-- Location: LCCOMB_X55_Y65_N14
\freqDiv|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[20]~66_combout\ = (\freqDiv|s_divCounter\(20) & (\freqDiv|s_divCounter[19]~65\ $ (GND))) # (!\freqDiv|s_divCounter\(20) & (!\freqDiv|s_divCounter[19]~65\ & VCC))
-- \freqDiv|s_divCounter[20]~67\ = CARRY((\freqDiv|s_divCounter\(20) & !\freqDiv|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(20),
	datad => VCC,
	cin => \freqDiv|s_divCounter[19]~65\,
	combout => \freqDiv|s_divCounter[20]~66_combout\,
	cout => \freqDiv|s_divCounter[20]~67\);

-- Location: FF_X55_Y65_N15
\freqDiv|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[20]~66_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(20));

-- Location: LCCOMB_X55_Y65_N16
\freqDiv|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[21]~68_combout\ = (\freqDiv|s_divCounter\(21) & (!\freqDiv|s_divCounter[20]~67\)) # (!\freqDiv|s_divCounter\(21) & ((\freqDiv|s_divCounter[20]~67\) # (GND)))
-- \freqDiv|s_divCounter[21]~69\ = CARRY((!\freqDiv|s_divCounter[20]~67\) # (!\freqDiv|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(21),
	datad => VCC,
	cin => \freqDiv|s_divCounter[20]~67\,
	combout => \freqDiv|s_divCounter[21]~68_combout\,
	cout => \freqDiv|s_divCounter[21]~69\);

-- Location: FF_X55_Y65_N17
\freqDiv|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[21]~68_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(21));

-- Location: LCCOMB_X55_Y65_N18
\freqDiv|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[22]~70_combout\ = (\freqDiv|s_divCounter\(22) & (\freqDiv|s_divCounter[21]~69\ $ (GND))) # (!\freqDiv|s_divCounter\(22) & (!\freqDiv|s_divCounter[21]~69\ & VCC))
-- \freqDiv|s_divCounter[22]~71\ = CARRY((\freqDiv|s_divCounter\(22) & !\freqDiv|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(22),
	datad => VCC,
	cin => \freqDiv|s_divCounter[21]~69\,
	combout => \freqDiv|s_divCounter[22]~70_combout\,
	cout => \freqDiv|s_divCounter[22]~71\);

-- Location: FF_X55_Y65_N19
\freqDiv|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[22]~70_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(22));

-- Location: LCCOMB_X55_Y65_N20
\freqDiv|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[23]~72_combout\ = (\freqDiv|s_divCounter\(23) & (!\freqDiv|s_divCounter[22]~71\)) # (!\freqDiv|s_divCounter\(23) & ((\freqDiv|s_divCounter[22]~71\) # (GND)))
-- \freqDiv|s_divCounter[23]~73\ = CARRY((!\freqDiv|s_divCounter[22]~71\) # (!\freqDiv|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(23),
	datad => VCC,
	cin => \freqDiv|s_divCounter[22]~71\,
	combout => \freqDiv|s_divCounter[23]~72_combout\,
	cout => \freqDiv|s_divCounter[23]~73\);

-- Location: FF_X55_Y65_N21
\freqDiv|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[23]~72_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(23));

-- Location: LCCOMB_X55_Y65_N22
\freqDiv|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[24]~74_combout\ = (\freqDiv|s_divCounter\(24) & (\freqDiv|s_divCounter[23]~73\ $ (GND))) # (!\freqDiv|s_divCounter\(24) & (!\freqDiv|s_divCounter[23]~73\ & VCC))
-- \freqDiv|s_divCounter[24]~75\ = CARRY((\freqDiv|s_divCounter\(24) & !\freqDiv|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(24),
	datad => VCC,
	cin => \freqDiv|s_divCounter[23]~73\,
	combout => \freqDiv|s_divCounter[24]~74_combout\,
	cout => \freqDiv|s_divCounter[24]~75\);

-- Location: FF_X55_Y65_N23
\freqDiv|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[24]~74_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(24));

-- Location: LCCOMB_X55_Y65_N24
\freqDiv|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[25]~76_combout\ = \freqDiv|s_divCounter[24]~75\ $ (\freqDiv|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \freqDiv|s_divCounter\(25),
	cin => \freqDiv|s_divCounter[24]~75\,
	combout => \freqDiv|s_divCounter[25]~76_combout\);

-- Location: FF_X55_Y65_N25
\freqDiv|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[25]~76_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(25));

-- Location: LCCOMB_X56_Y66_N26
\freqDiv|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan1~1_combout\ = (((!\freqDiv|s_divCounter\(14)) # (!\freqDiv|s_divCounter\(13))) # (!\freqDiv|s_divCounter\(11))) # (!\freqDiv|s_divCounter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(12),
	datab => \freqDiv|s_divCounter\(11),
	datac => \freqDiv|s_divCounter\(13),
	datad => \freqDiv|s_divCounter\(14),
	combout => \freqDiv|LessThan1~1_combout\);

-- Location: LCCOMB_X56_Y66_N6
\freqDiv|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan1~5_combout\ = (\freqDiv|LessThan1~1_combout\) # ((!\freqDiv|s_divCounter\(6) & (\freqDiv|LessThan1~4_combout\ & \freqDiv|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(6),
	datab => \freqDiv|LessThan1~4_combout\,
	datac => \freqDiv|LessThan1~1_combout\,
	datad => \freqDiv|LessThan1~3_combout\,
	combout => \freqDiv|LessThan1~5_combout\);

-- Location: LCCOMB_X56_Y66_N14
\freqDiv|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan1~6_combout\ = (\freqDiv|s_divCounter\(16) & ((\freqDiv|s_divCounter\(15)) # (!\freqDiv|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(15),
	datac => \freqDiv|s_divCounter\(16),
	datad => \freqDiv|LessThan1~5_combout\,
	combout => \freqDiv|LessThan1~6_combout\);

-- Location: LCCOMB_X56_Y66_N22
\freqDiv|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan1~7_combout\ = (\freqDiv|s_divCounter\(18) & (\freqDiv|LessThan1~0_combout\ & ((\freqDiv|s_divCounter\(17)) # (\freqDiv|LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(17),
	datab => \freqDiv|s_divCounter\(18),
	datac => \freqDiv|LessThan1~6_combout\,
	datad => \freqDiv|LessThan1~0_combout\,
	combout => \freqDiv|LessThan1~7_combout\);

-- Location: LCCOMB_X56_Y66_N24
\freqDiv|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan1~8_combout\ = (\freqDiv|s_divCounter\(25)) # ((\freqDiv|s_divCounter\(24) & ((\freqDiv|s_divCounter\(23)) # (\freqDiv|LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(25),
	datab => \freqDiv|s_divCounter\(23),
	datac => \freqDiv|LessThan1~7_combout\,
	datad => \freqDiv|s_divCounter\(24),
	combout => \freqDiv|LessThan1~8_combout\);

-- Location: FF_X56_Y66_N25
\freqDiv|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|clkOut~q\);

-- Location: CLKCTRL_G11
\freqDiv|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \freqDiv|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \freqDiv|clkOut~clkctrl_outclk\);

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

-- Location: FF_X69_Y49_N19
\shifter|s_currentState.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifter|s_currentState.S1~q\);

-- Location: LCCOMB_X69_Y49_N12
\shifter|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|Selector1~0_combout\ = (!\SW[0]~input_o\ & \shifter|s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \shifter|s_currentState.S1~q\,
	combout => \shifter|Selector1~0_combout\);

-- Location: FF_X69_Y49_N13
\shifter|s_currentState.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \shifter|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifter|s_currentState.S2~q\);

-- Location: LCCOMB_X69_Y49_N28
\shifter|s_nextState.S3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_nextState.S3~0_combout\ = (!\SW[0]~input_o\ & \shifter|s_currentState.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \shifter|s_currentState.S2~q\,
	combout => \shifter|s_nextState.S3~0_combout\);

-- Location: FF_X69_Y49_N29
\shifter|s_currentState.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \shifter|s_nextState.S3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifter|s_currentState.S3~q\);

-- Location: LCCOMB_X69_Y49_N30
\shifter|Yout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|Yout~1_combout\ = (\shifter|s_currentState.S3~q\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shifter|s_currentState.S3~q\,
	datac => \SW[0]~input_o\,
	combout => \shifter|Yout~1_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;
END structure;


