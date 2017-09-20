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

-- DATE "04/27/2017 12:23:02"

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
	LEDR : BUFFER std_logic_vector(0 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(8 DOWNTO 8)
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
SIGNAL \freqDiv|Add0~0_combout\ : std_logic;
SIGNAL \freqDiv|Add0~1\ : std_logic;
SIGNAL \freqDiv|Add0~2_combout\ : std_logic;
SIGNAL \freqDiv|Add0~3\ : std_logic;
SIGNAL \freqDiv|Add0~4_combout\ : std_logic;
SIGNAL \freqDiv|Add0~5\ : std_logic;
SIGNAL \freqDiv|Add0~6_combout\ : std_logic;
SIGNAL \freqDiv|Add0~7\ : std_logic;
SIGNAL \freqDiv|Add0~8_combout\ : std_logic;
SIGNAL \freqDiv|Add0~9\ : std_logic;
SIGNAL \freqDiv|Add0~10_combout\ : std_logic;
SIGNAL \freqDiv|Add0~11\ : std_logic;
SIGNAL \freqDiv|Add0~12_combout\ : std_logic;
SIGNAL \freqDiv|Add0~13\ : std_logic;
SIGNAL \freqDiv|Add0~14_combout\ : std_logic;
SIGNAL \freqDiv|s_count~7_combout\ : std_logic;
SIGNAL \freqDiv|Add0~15\ : std_logic;
SIGNAL \freqDiv|Add0~16_combout\ : std_logic;
SIGNAL \freqDiv|Add0~17\ : std_logic;
SIGNAL \freqDiv|Add0~18_combout\ : std_logic;
SIGNAL \freqDiv|Add0~19\ : std_logic;
SIGNAL \freqDiv|Add0~20_combout\ : std_logic;
SIGNAL \freqDiv|Add0~21\ : std_logic;
SIGNAL \freqDiv|Add0~22_combout\ : std_logic;
SIGNAL \freqDiv|Add0~23\ : std_logic;
SIGNAL \freqDiv|Add0~24_combout\ : std_logic;
SIGNAL \freqDiv|s_count~6_combout\ : std_logic;
SIGNAL \freqDiv|Add0~25\ : std_logic;
SIGNAL \freqDiv|Add0~26_combout\ : std_logic;
SIGNAL \freqDiv|s_count~5_combout\ : std_logic;
SIGNAL \freqDiv|Add0~27\ : std_logic;
SIGNAL \freqDiv|Add0~28_combout\ : std_logic;
SIGNAL \freqDiv|s_count~4_combout\ : std_logic;
SIGNAL \freqDiv|Add0~29\ : std_logic;
SIGNAL \freqDiv|Add0~30_combout\ : std_logic;
SIGNAL \freqDiv|s_count~11_combout\ : std_logic;
SIGNAL \freqDiv|Add0~31\ : std_logic;
SIGNAL \freqDiv|Add0~32_combout\ : std_logic;
SIGNAL \freqDiv|Add0~33\ : std_logic;
SIGNAL \freqDiv|Add0~34_combout\ : std_logic;
SIGNAL \freqDiv|s_count~10_combout\ : std_logic;
SIGNAL \freqDiv|Add0~35\ : std_logic;
SIGNAL \freqDiv|Add0~36_combout\ : std_logic;
SIGNAL \freqDiv|Add0~47\ : std_logic;
SIGNAL \freqDiv|Add0~48_combout\ : std_logic;
SIGNAL \freqDiv|Add0~49\ : std_logic;
SIGNAL \freqDiv|Add0~50_combout\ : std_logic;
SIGNAL \freqDiv|s_count~8_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~7_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~8_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~5_combout\ : std_logic;
SIGNAL \freqDiv|Add0~37\ : std_logic;
SIGNAL \freqDiv|Add0~38_combout\ : std_logic;
SIGNAL \freqDiv|s_count~3_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~2_combout\ : std_logic;
SIGNAL \freqDiv|Add0~39\ : std_logic;
SIGNAL \freqDiv|Add0~40_combout\ : std_logic;
SIGNAL \freqDiv|s_count~2_combout\ : std_logic;
SIGNAL \freqDiv|Add0~41\ : std_logic;
SIGNAL \freqDiv|Add0~42_combout\ : std_logic;
SIGNAL \freqDiv|s_count~1_combout\ : std_logic;
SIGNAL \freqDiv|Add0~51\ : std_logic;
SIGNAL \freqDiv|Add0~52_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~1_combout\ : std_logic;
SIGNAL \freqDiv|Add0~53\ : std_logic;
SIGNAL \freqDiv|Add0~54_combout\ : std_logic;
SIGNAL \freqDiv|Add0~55\ : std_logic;
SIGNAL \freqDiv|Add0~56_combout\ : std_logic;
SIGNAL \freqDiv|Add0~57\ : std_logic;
SIGNAL \freqDiv|Add0~58_combout\ : std_logic;
SIGNAL \freqDiv|Add0~59\ : std_logic;
SIGNAL \freqDiv|Add0~60_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~0_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~3_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~4_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~6_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~9_combout\ : std_logic;
SIGNAL \freqDiv|Add0~43\ : std_logic;
SIGNAL \freqDiv|Add0~44_combout\ : std_logic;
SIGNAL \freqDiv|s_count~0_combout\ : std_logic;
SIGNAL \freqDiv|Add0~45\ : std_logic;
SIGNAL \freqDiv|Add0~46_combout\ : std_logic;
SIGNAL \freqDiv|s_count~9_combout\ : std_logic;
SIGNAL \freqDiv|Equal1~0_combout\ : std_logic;
SIGNAL \freqDiv|Equal1~1_combout\ : std_logic;
SIGNAL \freqDiv|Equal1~2_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~0_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~feeder_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~q\ : std_logic;
SIGNAL \freqDiv|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \seqDet|pState.B~q\ : std_logic;
SIGNAL \seqDet|nState.C~0_combout\ : std_logic;
SIGNAL \seqDet|pState.C~q\ : std_logic;
SIGNAL \seqDet|nState.D~0_combout\ : std_logic;
SIGNAL \seqDet|pState.D~q\ : std_logic;
SIGNAL \seqDet|yout~1_combout\ : std_logic;
SIGNAL \freqDiv|s_count\ : std_logic_vector(30 DOWNTO 0);

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
	i => \seqDet|yout~1_combout\,
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

-- Location: LCCOMB_X41_Y67_N2
\freqDiv|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~0_combout\ = \freqDiv|s_count\(0) $ (VCC)
-- \freqDiv|Add0~1\ = CARRY(\freqDiv|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(0),
	datad => VCC,
	combout => \freqDiv|Add0~0_combout\,
	cout => \freqDiv|Add0~1\);

-- Location: FF_X41_Y67_N3
\freqDiv|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(0));

-- Location: LCCOMB_X41_Y67_N4
\freqDiv|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~2_combout\ = (\freqDiv|s_count\(1) & (!\freqDiv|Add0~1\)) # (!\freqDiv|s_count\(1) & ((\freqDiv|Add0~1\) # (GND)))
-- \freqDiv|Add0~3\ = CARRY((!\freqDiv|Add0~1\) # (!\freqDiv|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(1),
	datad => VCC,
	cin => \freqDiv|Add0~1\,
	combout => \freqDiv|Add0~2_combout\,
	cout => \freqDiv|Add0~3\);

-- Location: FF_X41_Y67_N5
\freqDiv|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(1));

-- Location: LCCOMB_X41_Y67_N6
\freqDiv|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~4_combout\ = (\freqDiv|s_count\(2) & (\freqDiv|Add0~3\ $ (GND))) # (!\freqDiv|s_count\(2) & (!\freqDiv|Add0~3\ & VCC))
-- \freqDiv|Add0~5\ = CARRY((\freqDiv|s_count\(2) & !\freqDiv|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(2),
	datad => VCC,
	cin => \freqDiv|Add0~3\,
	combout => \freqDiv|Add0~4_combout\,
	cout => \freqDiv|Add0~5\);

-- Location: FF_X41_Y67_N7
\freqDiv|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(2));

-- Location: LCCOMB_X41_Y67_N8
\freqDiv|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~6_combout\ = (\freqDiv|s_count\(3) & (!\freqDiv|Add0~5\)) # (!\freqDiv|s_count\(3) & ((\freqDiv|Add0~5\) # (GND)))
-- \freqDiv|Add0~7\ = CARRY((!\freqDiv|Add0~5\) # (!\freqDiv|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(3),
	datad => VCC,
	cin => \freqDiv|Add0~5\,
	combout => \freqDiv|Add0~6_combout\,
	cout => \freqDiv|Add0~7\);

-- Location: FF_X41_Y67_N9
\freqDiv|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(3));

-- Location: LCCOMB_X41_Y67_N10
\freqDiv|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~8_combout\ = (\freqDiv|s_count\(4) & (\freqDiv|Add0~7\ $ (GND))) # (!\freqDiv|s_count\(4) & (!\freqDiv|Add0~7\ & VCC))
-- \freqDiv|Add0~9\ = CARRY((\freqDiv|s_count\(4) & !\freqDiv|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(4),
	datad => VCC,
	cin => \freqDiv|Add0~7\,
	combout => \freqDiv|Add0~8_combout\,
	cout => \freqDiv|Add0~9\);

-- Location: FF_X41_Y67_N11
\freqDiv|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(4));

-- Location: LCCOMB_X41_Y67_N12
\freqDiv|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~10_combout\ = (\freqDiv|s_count\(5) & (!\freqDiv|Add0~9\)) # (!\freqDiv|s_count\(5) & ((\freqDiv|Add0~9\) # (GND)))
-- \freqDiv|Add0~11\ = CARRY((!\freqDiv|Add0~9\) # (!\freqDiv|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(5),
	datad => VCC,
	cin => \freqDiv|Add0~9\,
	combout => \freqDiv|Add0~10_combout\,
	cout => \freqDiv|Add0~11\);

-- Location: FF_X41_Y67_N13
\freqDiv|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(5));

-- Location: LCCOMB_X41_Y67_N14
\freqDiv|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~12_combout\ = (\freqDiv|s_count\(6) & (\freqDiv|Add0~11\ $ (GND))) # (!\freqDiv|s_count\(6) & (!\freqDiv|Add0~11\ & VCC))
-- \freqDiv|Add0~13\ = CARRY((\freqDiv|s_count\(6) & !\freqDiv|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(6),
	datad => VCC,
	cin => \freqDiv|Add0~11\,
	combout => \freqDiv|Add0~12_combout\,
	cout => \freqDiv|Add0~13\);

-- Location: FF_X41_Y67_N15
\freqDiv|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(6));

-- Location: LCCOMB_X41_Y67_N16
\freqDiv|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~14_combout\ = (\freqDiv|s_count\(7) & (!\freqDiv|Add0~13\)) # (!\freqDiv|s_count\(7) & ((\freqDiv|Add0~13\) # (GND)))
-- \freqDiv|Add0~15\ = CARRY((!\freqDiv|Add0~13\) # (!\freqDiv|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(7),
	datad => VCC,
	cin => \freqDiv|Add0~13\,
	combout => \freqDiv|Add0~14_combout\,
	cout => \freqDiv|Add0~15\);

-- Location: LCCOMB_X42_Y66_N0
\freqDiv|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~7_combout\ = (\freqDiv|Add0~14_combout\ & !\freqDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Add0~14_combout\,
	datad => \freqDiv|Equal0~9_combout\,
	combout => \freqDiv|s_count~7_combout\);

-- Location: FF_X42_Y66_N1
\freqDiv|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(7));

-- Location: LCCOMB_X41_Y67_N18
\freqDiv|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~16_combout\ = (\freqDiv|s_count\(8) & (\freqDiv|Add0~15\ $ (GND))) # (!\freqDiv|s_count\(8) & (!\freqDiv|Add0~15\ & VCC))
-- \freqDiv|Add0~17\ = CARRY((\freqDiv|s_count\(8) & !\freqDiv|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(8),
	datad => VCC,
	cin => \freqDiv|Add0~15\,
	combout => \freqDiv|Add0~16_combout\,
	cout => \freqDiv|Add0~17\);

-- Location: FF_X41_Y67_N19
\freqDiv|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(8));

-- Location: LCCOMB_X41_Y67_N20
\freqDiv|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~18_combout\ = (\freqDiv|s_count\(9) & (!\freqDiv|Add0~17\)) # (!\freqDiv|s_count\(9) & ((\freqDiv|Add0~17\) # (GND)))
-- \freqDiv|Add0~19\ = CARRY((!\freqDiv|Add0~17\) # (!\freqDiv|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(9),
	datad => VCC,
	cin => \freqDiv|Add0~17\,
	combout => \freqDiv|Add0~18_combout\,
	cout => \freqDiv|Add0~19\);

-- Location: FF_X41_Y67_N21
\freqDiv|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(9));

-- Location: LCCOMB_X41_Y67_N22
\freqDiv|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~20_combout\ = (\freqDiv|s_count\(10) & (\freqDiv|Add0~19\ $ (GND))) # (!\freqDiv|s_count\(10) & (!\freqDiv|Add0~19\ & VCC))
-- \freqDiv|Add0~21\ = CARRY((\freqDiv|s_count\(10) & !\freqDiv|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(10),
	datad => VCC,
	cin => \freqDiv|Add0~19\,
	combout => \freqDiv|Add0~20_combout\,
	cout => \freqDiv|Add0~21\);

-- Location: FF_X41_Y67_N23
\freqDiv|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(10));

-- Location: LCCOMB_X41_Y67_N24
\freqDiv|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~22_combout\ = (\freqDiv|s_count\(11) & (!\freqDiv|Add0~21\)) # (!\freqDiv|s_count\(11) & ((\freqDiv|Add0~21\) # (GND)))
-- \freqDiv|Add0~23\ = CARRY((!\freqDiv|Add0~21\) # (!\freqDiv|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(11),
	datad => VCC,
	cin => \freqDiv|Add0~21\,
	combout => \freqDiv|Add0~22_combout\,
	cout => \freqDiv|Add0~23\);

-- Location: FF_X41_Y67_N25
\freqDiv|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(11));

-- Location: LCCOMB_X41_Y67_N26
\freqDiv|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~24_combout\ = (\freqDiv|s_count\(12) & (\freqDiv|Add0~23\ $ (GND))) # (!\freqDiv|s_count\(12) & (!\freqDiv|Add0~23\ & VCC))
-- \freqDiv|Add0~25\ = CARRY((\freqDiv|s_count\(12) & !\freqDiv|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(12),
	datad => VCC,
	cin => \freqDiv|Add0~23\,
	combout => \freqDiv|Add0~24_combout\,
	cout => \freqDiv|Add0~25\);

-- Location: LCCOMB_X42_Y66_N16
\freqDiv|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~6_combout\ = (!\freqDiv|Equal0~9_combout\ & \freqDiv|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~9_combout\,
	datad => \freqDiv|Add0~24_combout\,
	combout => \freqDiv|s_count~6_combout\);

-- Location: FF_X42_Y66_N17
\freqDiv|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(12));

-- Location: LCCOMB_X41_Y67_N28
\freqDiv|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~26_combout\ = (\freqDiv|s_count\(13) & (!\freqDiv|Add0~25\)) # (!\freqDiv|s_count\(13) & ((\freqDiv|Add0~25\) # (GND)))
-- \freqDiv|Add0~27\ = CARRY((!\freqDiv|Add0~25\) # (!\freqDiv|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(13),
	datad => VCC,
	cin => \freqDiv|Add0~25\,
	combout => \freqDiv|Add0~26_combout\,
	cout => \freqDiv|Add0~27\);

-- Location: LCCOMB_X42_Y66_N22
\freqDiv|s_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~5_combout\ = (\freqDiv|Add0~26_combout\ & !\freqDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Add0~26_combout\,
	datad => \freqDiv|Equal0~9_combout\,
	combout => \freqDiv|s_count~5_combout\);

-- Location: FF_X42_Y66_N23
\freqDiv|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(13));

-- Location: LCCOMB_X41_Y67_N30
\freqDiv|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~28_combout\ = (\freqDiv|s_count\(14) & (\freqDiv|Add0~27\ $ (GND))) # (!\freqDiv|s_count\(14) & (!\freqDiv|Add0~27\ & VCC))
-- \freqDiv|Add0~29\ = CARRY((\freqDiv|s_count\(14) & !\freqDiv|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(14),
	datad => VCC,
	cin => \freqDiv|Add0~27\,
	combout => \freqDiv|Add0~28_combout\,
	cout => \freqDiv|Add0~29\);

-- Location: LCCOMB_X42_Y66_N12
\freqDiv|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~4_combout\ = (!\freqDiv|Equal0~9_combout\ & \freqDiv|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~9_combout\,
	datad => \freqDiv|Add0~28_combout\,
	combout => \freqDiv|s_count~4_combout\);

-- Location: FF_X42_Y66_N13
\freqDiv|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(14));

-- Location: LCCOMB_X41_Y66_N0
\freqDiv|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~30_combout\ = (\freqDiv|s_count\(15) & (!\freqDiv|Add0~29\)) # (!\freqDiv|s_count\(15) & ((\freqDiv|Add0~29\) # (GND)))
-- \freqDiv|Add0~31\ = CARRY((!\freqDiv|Add0~29\) # (!\freqDiv|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(15),
	datad => VCC,
	cin => \freqDiv|Add0~29\,
	combout => \freqDiv|Add0~30_combout\,
	cout => \freqDiv|Add0~31\);

-- Location: LCCOMB_X43_Y66_N10
\freqDiv|s_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~11_combout\ = (!\freqDiv|Equal0~9_combout\ & \freqDiv|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~9_combout\,
	datad => \freqDiv|Add0~30_combout\,
	combout => \freqDiv|s_count~11_combout\);

-- Location: FF_X43_Y66_N11
\freqDiv|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(15));

-- Location: LCCOMB_X41_Y66_N2
\freqDiv|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~32_combout\ = (\freqDiv|s_count\(16) & (\freqDiv|Add0~31\ $ (GND))) # (!\freqDiv|s_count\(16) & (!\freqDiv|Add0~31\ & VCC))
-- \freqDiv|Add0~33\ = CARRY((\freqDiv|s_count\(16) & !\freqDiv|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(16),
	datad => VCC,
	cin => \freqDiv|Add0~31\,
	combout => \freqDiv|Add0~32_combout\,
	cout => \freqDiv|Add0~33\);

-- Location: FF_X41_Y66_N3
\freqDiv|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(16));

-- Location: LCCOMB_X41_Y66_N4
\freqDiv|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~34_combout\ = (\freqDiv|s_count\(17) & (!\freqDiv|Add0~33\)) # (!\freqDiv|s_count\(17) & ((\freqDiv|Add0~33\) # (GND)))
-- \freqDiv|Add0~35\ = CARRY((!\freqDiv|Add0~33\) # (!\freqDiv|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(17),
	datad => VCC,
	cin => \freqDiv|Add0~33\,
	combout => \freqDiv|Add0~34_combout\,
	cout => \freqDiv|Add0~35\);

-- Location: LCCOMB_X43_Y66_N24
\freqDiv|s_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~10_combout\ = (!\freqDiv|Equal0~9_combout\ & \freqDiv|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~9_combout\,
	datad => \freqDiv|Add0~34_combout\,
	combout => \freqDiv|s_count~10_combout\);

-- Location: FF_X43_Y66_N25
\freqDiv|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(17));

-- Location: LCCOMB_X41_Y66_N6
\freqDiv|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~36_combout\ = (\freqDiv|s_count\(18) & (\freqDiv|Add0~35\ $ (GND))) # (!\freqDiv|s_count\(18) & (!\freqDiv|Add0~35\ & VCC))
-- \freqDiv|Add0~37\ = CARRY((\freqDiv|s_count\(18) & !\freqDiv|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(18),
	datad => VCC,
	cin => \freqDiv|Add0~35\,
	combout => \freqDiv|Add0~36_combout\,
	cout => \freqDiv|Add0~37\);

-- Location: FF_X41_Y66_N7
\freqDiv|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(18));

-- Location: LCCOMB_X41_Y66_N16
\freqDiv|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~46_combout\ = (\freqDiv|s_count\(23) & (!\freqDiv|Add0~45\)) # (!\freqDiv|s_count\(23) & ((\freqDiv|Add0~45\) # (GND)))
-- \freqDiv|Add0~47\ = CARRY((!\freqDiv|Add0~45\) # (!\freqDiv|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(23),
	datad => VCC,
	cin => \freqDiv|Add0~45\,
	combout => \freqDiv|Add0~46_combout\,
	cout => \freqDiv|Add0~47\);

-- Location: LCCOMB_X41_Y66_N18
\freqDiv|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~48_combout\ = (\freqDiv|s_count\(24) & (\freqDiv|Add0~47\ $ (GND))) # (!\freqDiv|s_count\(24) & (!\freqDiv|Add0~47\ & VCC))
-- \freqDiv|Add0~49\ = CARRY((\freqDiv|s_count\(24) & !\freqDiv|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(24),
	datad => VCC,
	cin => \freqDiv|Add0~47\,
	combout => \freqDiv|Add0~48_combout\,
	cout => \freqDiv|Add0~49\);

-- Location: FF_X41_Y66_N19
\freqDiv|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(24));

-- Location: LCCOMB_X41_Y66_N20
\freqDiv|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~50_combout\ = (\freqDiv|s_count\(25) & (!\freqDiv|Add0~49\)) # (!\freqDiv|s_count\(25) & ((\freqDiv|Add0~49\) # (GND)))
-- \freqDiv|Add0~51\ = CARRY((!\freqDiv|Add0~49\) # (!\freqDiv|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(25),
	datad => VCC,
	cin => \freqDiv|Add0~49\,
	combout => \freqDiv|Add0~50_combout\,
	cout => \freqDiv|Add0~51\);

-- Location: LCCOMB_X42_Y66_N20
\freqDiv|s_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~8_combout\ = (!\freqDiv|Equal0~9_combout\ & \freqDiv|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~9_combout\,
	datad => \freqDiv|Add0~50_combout\,
	combout => \freqDiv|s_count~8_combout\);

-- Location: FF_X42_Y66_N21
\freqDiv|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(25));

-- Location: LCCOMB_X43_Y66_N20
\freqDiv|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~7_combout\ = (\freqDiv|s_count\(23) & (!\freqDiv|s_count\(18) & (!\freqDiv|s_count\(24) & \freqDiv|s_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(23),
	datab => \freqDiv|s_count\(18),
	datac => \freqDiv|s_count\(24),
	datad => \freqDiv|s_count\(25),
	combout => \freqDiv|Equal0~7_combout\);

-- Location: LCCOMB_X43_Y66_N4
\freqDiv|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~8_combout\ = (\freqDiv|s_count\(15) & (!\freqDiv|s_count\(16) & (!\freqDiv|s_count\(11) & \freqDiv|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(15),
	datab => \freqDiv|s_count\(16),
	datac => \freqDiv|s_count\(11),
	datad => \freqDiv|s_count\(17),
	combout => \freqDiv|Equal0~8_combout\);

-- Location: LCCOMB_X41_Y67_N0
\freqDiv|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~5_combout\ = (\freqDiv|s_count\(4) & (\freqDiv|s_count\(3) & (\freqDiv|s_count\(2) & \freqDiv|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(4),
	datab => \freqDiv|s_count\(3),
	datac => \freqDiv|s_count\(2),
	datad => \freqDiv|s_count\(5),
	combout => \freqDiv|Equal0~5_combout\);

-- Location: LCCOMB_X41_Y66_N8
\freqDiv|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~38_combout\ = (\freqDiv|s_count\(19) & (!\freqDiv|Add0~37\)) # (!\freqDiv|s_count\(19) & ((\freqDiv|Add0~37\) # (GND)))
-- \freqDiv|Add0~39\ = CARRY((!\freqDiv|Add0~37\) # (!\freqDiv|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(19),
	datad => VCC,
	cin => \freqDiv|Add0~37\,
	combout => \freqDiv|Add0~38_combout\,
	cout => \freqDiv|Add0~39\);

-- Location: LCCOMB_X42_Y66_N26
\freqDiv|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~3_combout\ = (!\freqDiv|Equal0~9_combout\ & \freqDiv|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~9_combout\,
	datad => \freqDiv|Add0~38_combout\,
	combout => \freqDiv|s_count~3_combout\);

-- Location: FF_X42_Y66_N27
\freqDiv|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(19));

-- Location: LCCOMB_X42_Y66_N6
\freqDiv|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~2_combout\ = (\freqDiv|s_count\(19) & (\freqDiv|s_count\(12) & (\freqDiv|s_count\(13) & \freqDiv|s_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(19),
	datab => \freqDiv|s_count\(12),
	datac => \freqDiv|s_count\(13),
	datad => \freqDiv|s_count\(14),
	combout => \freqDiv|Equal0~2_combout\);

-- Location: LCCOMB_X41_Y66_N10
\freqDiv|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~40_combout\ = (\freqDiv|s_count\(20) & (\freqDiv|Add0~39\ $ (GND))) # (!\freqDiv|s_count\(20) & (!\freqDiv|Add0~39\ & VCC))
-- \freqDiv|Add0~41\ = CARRY((\freqDiv|s_count\(20) & !\freqDiv|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(20),
	datad => VCC,
	cin => \freqDiv|Add0~39\,
	combout => \freqDiv|Add0~40_combout\,
	cout => \freqDiv|Add0~41\);

-- Location: LCCOMB_X42_Y66_N30
\freqDiv|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~2_combout\ = (!\freqDiv|Equal0~9_combout\ & \freqDiv|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~9_combout\,
	datad => \freqDiv|Add0~40_combout\,
	combout => \freqDiv|s_count~2_combout\);

-- Location: FF_X42_Y66_N31
\freqDiv|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(20));

-- Location: LCCOMB_X41_Y66_N12
\freqDiv|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~42_combout\ = (\freqDiv|s_count\(21) & (!\freqDiv|Add0~41\)) # (!\freqDiv|s_count\(21) & ((\freqDiv|Add0~41\) # (GND)))
-- \freqDiv|Add0~43\ = CARRY((!\freqDiv|Add0~41\) # (!\freqDiv|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(21),
	datad => VCC,
	cin => \freqDiv|Add0~41\,
	combout => \freqDiv|Add0~42_combout\,
	cout => \freqDiv|Add0~43\);

-- Location: LCCOMB_X42_Y66_N4
\freqDiv|s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~1_combout\ = (!\freqDiv|Equal0~9_combout\ & \freqDiv|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~9_combout\,
	datad => \freqDiv|Add0~42_combout\,
	combout => \freqDiv|s_count~1_combout\);

-- Location: FF_X42_Y66_N5
\freqDiv|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(21));

-- Location: LCCOMB_X41_Y66_N22
\freqDiv|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~52_combout\ = (\freqDiv|s_count\(26) & (\freqDiv|Add0~51\ $ (GND))) # (!\freqDiv|s_count\(26) & (!\freqDiv|Add0~51\ & VCC))
-- \freqDiv|Add0~53\ = CARRY((\freqDiv|s_count\(26) & !\freqDiv|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(26),
	datad => VCC,
	cin => \freqDiv|Add0~51\,
	combout => \freqDiv|Add0~52_combout\,
	cout => \freqDiv|Add0~53\);

-- Location: FF_X41_Y66_N23
\freqDiv|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(26));

-- Location: LCCOMB_X42_Y66_N28
\freqDiv|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~1_combout\ = (\freqDiv|s_count\(20) & (\freqDiv|s_count\(22) & (\freqDiv|s_count\(21) & !\freqDiv|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(20),
	datab => \freqDiv|s_count\(22),
	datac => \freqDiv|s_count\(21),
	datad => \freqDiv|s_count\(26),
	combout => \freqDiv|Equal0~1_combout\);

-- Location: LCCOMB_X41_Y66_N24
\freqDiv|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~54_combout\ = (\freqDiv|s_count\(27) & (!\freqDiv|Add0~53\)) # (!\freqDiv|s_count\(27) & ((\freqDiv|Add0~53\) # (GND)))
-- \freqDiv|Add0~55\ = CARRY((!\freqDiv|Add0~53\) # (!\freqDiv|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(27),
	datad => VCC,
	cin => \freqDiv|Add0~53\,
	combout => \freqDiv|Add0~54_combout\,
	cout => \freqDiv|Add0~55\);

-- Location: FF_X41_Y66_N25
\freqDiv|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(27));

-- Location: LCCOMB_X41_Y66_N26
\freqDiv|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~56_combout\ = (\freqDiv|s_count\(28) & (\freqDiv|Add0~55\ $ (GND))) # (!\freqDiv|s_count\(28) & (!\freqDiv|Add0~55\ & VCC))
-- \freqDiv|Add0~57\ = CARRY((\freqDiv|s_count\(28) & !\freqDiv|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(28),
	datad => VCC,
	cin => \freqDiv|Add0~55\,
	combout => \freqDiv|Add0~56_combout\,
	cout => \freqDiv|Add0~57\);

-- Location: FF_X41_Y66_N27
\freqDiv|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(28));

-- Location: LCCOMB_X41_Y66_N28
\freqDiv|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~58_combout\ = (\freqDiv|s_count\(29) & (!\freqDiv|Add0~57\)) # (!\freqDiv|s_count\(29) & ((\freqDiv|Add0~57\) # (GND)))
-- \freqDiv|Add0~59\ = CARRY((!\freqDiv|Add0~57\) # (!\freqDiv|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(29),
	datad => VCC,
	cin => \freqDiv|Add0~57\,
	combout => \freqDiv|Add0~58_combout\,
	cout => \freqDiv|Add0~59\);

-- Location: FF_X41_Y66_N29
\freqDiv|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(29));

-- Location: LCCOMB_X41_Y66_N30
\freqDiv|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~60_combout\ = \freqDiv|s_count\(30) $ (!\freqDiv|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(30),
	cin => \freqDiv|Add0~59\,
	combout => \freqDiv|Add0~60_combout\);

-- Location: FF_X41_Y66_N31
\freqDiv|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(30));

-- Location: LCCOMB_X42_Y66_N8
\freqDiv|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~0_combout\ = (!\freqDiv|s_count\(28) & (!\freqDiv|s_count\(30) & (!\freqDiv|s_count\(29) & !\freqDiv|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(28),
	datab => \freqDiv|s_count\(30),
	datac => \freqDiv|s_count\(29),
	datad => \freqDiv|s_count\(27),
	combout => \freqDiv|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y66_N18
\freqDiv|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~3_combout\ = (!\freqDiv|s_count\(7) & (!\freqDiv|s_count\(10) & (!\freqDiv|s_count\(9) & !\freqDiv|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(7),
	datab => \freqDiv|s_count\(10),
	datac => \freqDiv|s_count\(9),
	datad => \freqDiv|s_count\(8),
	combout => \freqDiv|Equal0~3_combout\);

-- Location: LCCOMB_X42_Y66_N24
\freqDiv|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~4_combout\ = (\freqDiv|Equal0~2_combout\ & (\freqDiv|Equal0~1_combout\ & (\freqDiv|Equal0~0_combout\ & \freqDiv|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|Equal0~2_combout\,
	datab => \freqDiv|Equal0~1_combout\,
	datac => \freqDiv|Equal0~0_combout\,
	datad => \freqDiv|Equal0~3_combout\,
	combout => \freqDiv|Equal0~4_combout\);

-- Location: LCCOMB_X42_Y66_N10
\freqDiv|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~6_combout\ = (\freqDiv|s_count\(0) & (\freqDiv|Equal0~5_combout\ & (\freqDiv|s_count\(1) & \freqDiv|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(0),
	datab => \freqDiv|Equal0~5_combout\,
	datac => \freqDiv|s_count\(1),
	datad => \freqDiv|Equal0~4_combout\,
	combout => \freqDiv|Equal0~6_combout\);

-- Location: LCCOMB_X43_Y66_N28
\freqDiv|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~9_combout\ = (\freqDiv|s_count\(6) & (\freqDiv|Equal0~7_combout\ & (\freqDiv|Equal0~8_combout\ & \freqDiv|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(6),
	datab => \freqDiv|Equal0~7_combout\,
	datac => \freqDiv|Equal0~8_combout\,
	datad => \freqDiv|Equal0~6_combout\,
	combout => \freqDiv|Equal0~9_combout\);

-- Location: LCCOMB_X41_Y66_N14
\freqDiv|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~44_combout\ = (\freqDiv|s_count\(22) & (\freqDiv|Add0~43\ $ (GND))) # (!\freqDiv|s_count\(22) & (!\freqDiv|Add0~43\ & VCC))
-- \freqDiv|Add0~45\ = CARRY((\freqDiv|s_count\(22) & !\freqDiv|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(22),
	datad => VCC,
	cin => \freqDiv|Add0~43\,
	combout => \freqDiv|Add0~44_combout\,
	cout => \freqDiv|Add0~45\);

-- Location: LCCOMB_X42_Y66_N2
\freqDiv|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~0_combout\ = (!\freqDiv|Equal0~9_combout\ & \freqDiv|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~9_combout\,
	datad => \freqDiv|Add0~44_combout\,
	combout => \freqDiv|s_count~0_combout\);

-- Location: FF_X42_Y66_N3
\freqDiv|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(22));

-- Location: LCCOMB_X42_Y66_N14
\freqDiv|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~9_combout\ = (\freqDiv|Add0~46_combout\ & !\freqDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Add0~46_combout\,
	datad => \freqDiv|Equal0~9_combout\,
	combout => \freqDiv|s_count~9_combout\);

-- Location: FF_X42_Y66_N15
\freqDiv|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(23));

-- Location: LCCOMB_X43_Y66_N18
\freqDiv|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal1~0_combout\ = (!\freqDiv|s_count\(23) & (\freqDiv|s_count\(18) & (\freqDiv|s_count\(24) & !\freqDiv|s_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(23),
	datab => \freqDiv|s_count\(18),
	datac => \freqDiv|s_count\(24),
	datad => \freqDiv|s_count\(25),
	combout => \freqDiv|Equal1~0_combout\);

-- Location: LCCOMB_X43_Y66_N22
\freqDiv|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal1~1_combout\ = (!\freqDiv|s_count\(15) & (\freqDiv|s_count\(16) & (\freqDiv|s_count\(11) & !\freqDiv|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(15),
	datab => \freqDiv|s_count\(16),
	datac => \freqDiv|s_count\(11),
	datad => \freqDiv|s_count\(17),
	combout => \freqDiv|Equal1~1_combout\);

-- Location: LCCOMB_X43_Y66_N14
\freqDiv|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal1~2_combout\ = (!\freqDiv|s_count\(6) & (\freqDiv|Equal1~0_combout\ & (\freqDiv|Equal1~1_combout\ & \freqDiv|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(6),
	datab => \freqDiv|Equal1~0_combout\,
	datac => \freqDiv|Equal1~1_combout\,
	datad => \freqDiv|Equal0~6_combout\,
	combout => \freqDiv|Equal1~2_combout\);

-- Location: LCCOMB_X43_Y66_N2
\freqDiv|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~0_combout\ = (\freqDiv|Equal0~9_combout\) # ((!\freqDiv|Equal1~2_combout\ & \freqDiv|clkOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal1~2_combout\,
	datac => \freqDiv|clkOut~q\,
	datad => \freqDiv|Equal0~9_combout\,
	combout => \freqDiv|clkOut~0_combout\);

-- Location: LCCOMB_X43_Y66_N8
\freqDiv|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~feeder_combout\ = \freqDiv|clkOut~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|clkOut~0_combout\,
	combout => \freqDiv|clkOut~feeder_combout\);

-- Location: FF_X43_Y66_N9
\freqDiv|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|clkOut~q\);

-- Location: CLKCTRL_G14
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

-- Location: FF_X73_Y65_N19
\seqDet|pState.B\ : dffeas
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
	q => \seqDet|pState.B~q\);

-- Location: LCCOMB_X73_Y65_N12
\seqDet|nState.C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqDet|nState.C~0_combout\ = (!\SW[0]~input_o\ & \seqDet|pState.B~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \seqDet|pState.B~q\,
	combout => \seqDet|nState.C~0_combout\);

-- Location: FF_X73_Y65_N13
\seqDet|pState.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \seqDet|nState.C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seqDet|pState.C~q\);

-- Location: LCCOMB_X73_Y65_N28
\seqDet|nState.D~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqDet|nState.D~0_combout\ = (!\SW[0]~input_o\ & \seqDet|pState.C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \seqDet|pState.C~q\,
	combout => \seqDet|nState.D~0_combout\);

-- Location: FF_X73_Y65_N29
\seqDet|pState.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \seqDet|nState.D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seqDet|pState.D~q\);

-- Location: LCCOMB_X73_Y65_N14
\seqDet|yout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seqDet|yout~1_combout\ = (\seqDet|pState.D~q\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seqDet|pState.D~q\,
	datac => \SW[0]~input_o\,
	combout => \seqDet|yout~1_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;
END structure;


