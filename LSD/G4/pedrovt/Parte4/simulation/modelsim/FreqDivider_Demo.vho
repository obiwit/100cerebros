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

-- DATE "03/06/2017 18:56:57"

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

ENTITY 	FreqDivider_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	LEDR : OUT std_logic_vector(0 DOWNTO 0)
	);
END FreqDivider_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FreqDivider_Demo IS
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
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \freq_div|Add2~0_combout\ : std_logic;
SIGNAL \freq_div|Add2~1\ : std_logic;
SIGNAL \freq_div|Add2~2_combout\ : std_logic;
SIGNAL \freq_div|Add2~3\ : std_logic;
SIGNAL \freq_div|Add2~4_combout\ : std_logic;
SIGNAL \freq_div|Add2~5\ : std_logic;
SIGNAL \freq_div|Add2~6_combout\ : std_logic;
SIGNAL \freq_div|Add2~7\ : std_logic;
SIGNAL \freq_div|Add2~8_combout\ : std_logic;
SIGNAL \freq_div|Add2~9\ : std_logic;
SIGNAL \freq_div|Add2~10_combout\ : std_logic;
SIGNAL \freq_div|Add2~11\ : std_logic;
SIGNAL \freq_div|Add2~12_combout\ : std_logic;
SIGNAL \freq_div|s_counter~7_combout\ : std_logic;
SIGNAL \freq_div|Add2~13\ : std_logic;
SIGNAL \freq_div|Add2~14_combout\ : std_logic;
SIGNAL \freq_div|Add2~15\ : std_logic;
SIGNAL \freq_div|Add2~16_combout\ : std_logic;
SIGNAL \freq_div|Add2~17\ : std_logic;
SIGNAL \freq_div|Add2~18_combout\ : std_logic;
SIGNAL \freq_div|Add2~19\ : std_logic;
SIGNAL \freq_div|Add2~20_combout\ : std_logic;
SIGNAL \freq_div|Add2~21\ : std_logic;
SIGNAL \freq_div|Add2~22_combout\ : std_logic;
SIGNAL \freq_div|s_counter~6_combout\ : std_logic;
SIGNAL \freq_div|Add2~23\ : std_logic;
SIGNAL \freq_div|Add2~24_combout\ : std_logic;
SIGNAL \freq_div|s_counter~5_combout\ : std_logic;
SIGNAL \freq_div|Add2~25\ : std_logic;
SIGNAL \freq_div|Add2~26_combout\ : std_logic;
SIGNAL \freq_div|s_counter~4_combout\ : std_logic;
SIGNAL \freq_div|Add2~27\ : std_logic;
SIGNAL \freq_div|Add2~28_combout\ : std_logic;
SIGNAL \freq_div|s_counter~11_combout\ : std_logic;
SIGNAL \freq_div|Add2~29\ : std_logic;
SIGNAL \freq_div|Add2~30_combout\ : std_logic;
SIGNAL \freq_div|Add2~31\ : std_logic;
SIGNAL \freq_div|Add2~32_combout\ : std_logic;
SIGNAL \freq_div|s_counter~10_combout\ : std_logic;
SIGNAL \freq_div|Add2~33\ : std_logic;
SIGNAL \freq_div|Add2~34_combout\ : std_logic;
SIGNAL \freq_div|Add2~35\ : std_logic;
SIGNAL \freq_div|Add2~36_combout\ : std_logic;
SIGNAL \freq_div|s_counter~3_combout\ : std_logic;
SIGNAL \freq_div|Add2~37\ : std_logic;
SIGNAL \freq_div|Add2~38_combout\ : std_logic;
SIGNAL \freq_div|s_counter~2_combout\ : std_logic;
SIGNAL \freq_div|Add2~39\ : std_logic;
SIGNAL \freq_div|Add2~40_combout\ : std_logic;
SIGNAL \freq_div|s_counter~1_combout\ : std_logic;
SIGNAL \freq_div|Add2~41\ : std_logic;
SIGNAL \freq_div|Add2~42_combout\ : std_logic;
SIGNAL \freq_div|s_counter~0_combout\ : std_logic;
SIGNAL \freq_div|Add2~43\ : std_logic;
SIGNAL \freq_div|Add2~44_combout\ : std_logic;
SIGNAL \freq_div|s_counter~9_combout\ : std_logic;
SIGNAL \freq_div|Add2~45\ : std_logic;
SIGNAL \freq_div|Add2~46_combout\ : std_logic;
SIGNAL \freq_div|Add2~47\ : std_logic;
SIGNAL \freq_div|Add2~48_combout\ : std_logic;
SIGNAL \freq_div|s_counter~8_combout\ : std_logic;
SIGNAL \freq_div|Equal0~7_combout\ : std_logic;
SIGNAL \freq_div|Equal0~8_combout\ : std_logic;
SIGNAL \freq_div|Equal0~5_combout\ : std_logic;
SIGNAL \freq_div|Add2~49\ : std_logic;
SIGNAL \freq_div|Add2~50_combout\ : std_logic;
SIGNAL \freq_div|Add2~51\ : std_logic;
SIGNAL \freq_div|Add2~52_combout\ : std_logic;
SIGNAL \freq_div|Equal0~1_combout\ : std_logic;
SIGNAL \freq_div|Equal0~2_combout\ : std_logic;
SIGNAL \freq_div|Add2~53\ : std_logic;
SIGNAL \freq_div|Add2~54_combout\ : std_logic;
SIGNAL \freq_div|Add2~55\ : std_logic;
SIGNAL \freq_div|Add2~56_combout\ : std_logic;
SIGNAL \freq_div|Add2~57\ : std_logic;
SIGNAL \freq_div|Add2~58_combout\ : std_logic;
SIGNAL \freq_div|Add2~59\ : std_logic;
SIGNAL \freq_div|Add2~60_combout\ : std_logic;
SIGNAL \freq_div|Equal0~0_combout\ : std_logic;
SIGNAL \freq_div|Equal0~3_combout\ : std_logic;
SIGNAL \freq_div|Equal0~4_combout\ : std_logic;
SIGNAL \freq_div|Equal0~6_combout\ : std_logic;
SIGNAL \freq_div|Equal0~9_combout\ : std_logic;
SIGNAL \freq_div|clkOut~1_combout\ : std_logic;
SIGNAL \freq_div|clkOut~0_combout\ : std_logic;
SIGNAL \freq_div|clkOut~2_combout\ : std_logic;
SIGNAL \freq_div|clkOut~3_combout\ : std_logic;
SIGNAL \freq_div|clkOut~q\ : std_logic;
SIGNAL \freq_div|s_counter\ : std_logic_vector(30 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \freq_div|clkOut~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X66_Y65_N2
\freq_div|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~0_combout\ = \freq_div|s_counter\(0) $ (VCC)
-- \freq_div|Add2~1\ = CARRY(\freq_div|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_div|s_counter\(0),
	datad => VCC,
	combout => \freq_div|Add2~0_combout\,
	cout => \freq_div|Add2~1\);

-- Location: FF_X66_Y65_N3
\freq_div|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(0));

-- Location: LCCOMB_X66_Y65_N4
\freq_div|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~2_combout\ = (\freq_div|s_counter\(1) & (!\freq_div|Add2~1\)) # (!\freq_div|s_counter\(1) & ((\freq_div|Add2~1\) # (GND)))
-- \freq_div|Add2~3\ = CARRY((!\freq_div|Add2~1\) # (!\freq_div|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_div|s_counter\(1),
	datad => VCC,
	cin => \freq_div|Add2~1\,
	combout => \freq_div|Add2~2_combout\,
	cout => \freq_div|Add2~3\);

-- Location: FF_X66_Y65_N5
\freq_div|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(1));

-- Location: LCCOMB_X66_Y65_N6
\freq_div|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~4_combout\ = (\freq_div|s_counter\(2) & (\freq_div|Add2~3\ $ (GND))) # (!\freq_div|s_counter\(2) & (!\freq_div|Add2~3\ & VCC))
-- \freq_div|Add2~5\ = CARRY((\freq_div|s_counter\(2) & !\freq_div|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|s_counter\(2),
	datad => VCC,
	cin => \freq_div|Add2~3\,
	combout => \freq_div|Add2~4_combout\,
	cout => \freq_div|Add2~5\);

-- Location: FF_X66_Y65_N7
\freq_div|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(2));

-- Location: LCCOMB_X66_Y65_N8
\freq_div|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~6_combout\ = (\freq_div|s_counter\(3) & (!\freq_div|Add2~5\)) # (!\freq_div|s_counter\(3) & ((\freq_div|Add2~5\) # (GND)))
-- \freq_div|Add2~7\ = CARRY((!\freq_div|Add2~5\) # (!\freq_div|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_div|s_counter\(3),
	datad => VCC,
	cin => \freq_div|Add2~5\,
	combout => \freq_div|Add2~6_combout\,
	cout => \freq_div|Add2~7\);

-- Location: FF_X66_Y65_N9
\freq_div|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(3));

-- Location: LCCOMB_X66_Y65_N10
\freq_div|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~8_combout\ = (\freq_div|s_counter\(4) & (\freq_div|Add2~7\ $ (GND))) # (!\freq_div|s_counter\(4) & (!\freq_div|Add2~7\ & VCC))
-- \freq_div|Add2~9\ = CARRY((\freq_div|s_counter\(4) & !\freq_div|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|s_counter\(4),
	datad => VCC,
	cin => \freq_div|Add2~7\,
	combout => \freq_div|Add2~8_combout\,
	cout => \freq_div|Add2~9\);

-- Location: FF_X66_Y65_N11
\freq_div|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(4));

-- Location: LCCOMB_X66_Y65_N12
\freq_div|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~10_combout\ = (\freq_div|s_counter\(5) & (!\freq_div|Add2~9\)) # (!\freq_div|s_counter\(5) & ((\freq_div|Add2~9\) # (GND)))
-- \freq_div|Add2~11\ = CARRY((!\freq_div|Add2~9\) # (!\freq_div|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|s_counter\(5),
	datad => VCC,
	cin => \freq_div|Add2~9\,
	combout => \freq_div|Add2~10_combout\,
	cout => \freq_div|Add2~11\);

-- Location: FF_X66_Y65_N13
\freq_div|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(5));

-- Location: LCCOMB_X66_Y65_N14
\freq_div|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~12_combout\ = (\freq_div|s_counter\(6) & (\freq_div|Add2~11\ $ (GND))) # (!\freq_div|s_counter\(6) & (!\freq_div|Add2~11\ & VCC))
-- \freq_div|Add2~13\ = CARRY((\freq_div|s_counter\(6) & !\freq_div|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_div|s_counter\(6),
	datad => VCC,
	cin => \freq_div|Add2~11\,
	combout => \freq_div|Add2~12_combout\,
	cout => \freq_div|Add2~13\);

-- Location: LCCOMB_X66_Y65_N0
\freq_div|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|s_counter~7_combout\ = (\freq_div|Add2~12_combout\ & !\freq_div|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_div|Add2~12_combout\,
	datad => \freq_div|Equal0~9_combout\,
	combout => \freq_div|s_counter~7_combout\);

-- Location: FF_X66_Y65_N1
\freq_div|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|s_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(6));

-- Location: LCCOMB_X66_Y65_N16
\freq_div|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~14_combout\ = (\freq_div|s_counter\(7) & (!\freq_div|Add2~13\)) # (!\freq_div|s_counter\(7) & ((\freq_div|Add2~13\) # (GND)))
-- \freq_div|Add2~15\ = CARRY((!\freq_div|Add2~13\) # (!\freq_div|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_div|s_counter\(7),
	datad => VCC,
	cin => \freq_div|Add2~13\,
	combout => \freq_div|Add2~14_combout\,
	cout => \freq_div|Add2~15\);

-- Location: FF_X66_Y65_N17
\freq_div|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|Add2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(7));

-- Location: LCCOMB_X66_Y65_N18
\freq_div|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~16_combout\ = (\freq_div|s_counter\(8) & (\freq_div|Add2~15\ $ (GND))) # (!\freq_div|s_counter\(8) & (!\freq_div|Add2~15\ & VCC))
-- \freq_div|Add2~17\ = CARRY((\freq_div|s_counter\(8) & !\freq_div|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_div|s_counter\(8),
	datad => VCC,
	cin => \freq_div|Add2~15\,
	combout => \freq_div|Add2~16_combout\,
	cout => \freq_div|Add2~17\);

-- Location: FF_X66_Y65_N19
\freq_div|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|Add2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(8));

-- Location: LCCOMB_X66_Y65_N20
\freq_div|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~18_combout\ = (\freq_div|s_counter\(9) & (!\freq_div|Add2~17\)) # (!\freq_div|s_counter\(9) & ((\freq_div|Add2~17\) # (GND)))
-- \freq_div|Add2~19\ = CARRY((!\freq_div|Add2~17\) # (!\freq_div|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_div|s_counter\(9),
	datad => VCC,
	cin => \freq_div|Add2~17\,
	combout => \freq_div|Add2~18_combout\,
	cout => \freq_div|Add2~19\);

-- Location: FF_X66_Y65_N21
\freq_div|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(9));

-- Location: LCCOMB_X66_Y65_N22
\freq_div|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~20_combout\ = (\freq_div|s_counter\(10) & (\freq_div|Add2~19\ $ (GND))) # (!\freq_div|s_counter\(10) & (!\freq_div|Add2~19\ & VCC))
-- \freq_div|Add2~21\ = CARRY((\freq_div|s_counter\(10) & !\freq_div|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|s_counter\(10),
	datad => VCC,
	cin => \freq_div|Add2~19\,
	combout => \freq_div|Add2~20_combout\,
	cout => \freq_div|Add2~21\);

-- Location: FF_X66_Y65_N23
\freq_div|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(10));

-- Location: LCCOMB_X66_Y65_N24
\freq_div|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~22_combout\ = (\freq_div|s_counter\(11) & (!\freq_div|Add2~21\)) # (!\freq_div|s_counter\(11) & ((\freq_div|Add2~21\) # (GND)))
-- \freq_div|Add2~23\ = CARRY((!\freq_div|Add2~21\) # (!\freq_div|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|s_counter\(11),
	datad => VCC,
	cin => \freq_div|Add2~21\,
	combout => \freq_div|Add2~22_combout\,
	cout => \freq_div|Add2~23\);

-- Location: LCCOMB_X67_Y64_N10
\freq_div|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|s_counter~6_combout\ = (\freq_div|Add2~22_combout\ & !\freq_div|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_div|Add2~22_combout\,
	datad => \freq_div|Equal0~9_combout\,
	combout => \freq_div|s_counter~6_combout\);

-- Location: FF_X67_Y64_N11
\freq_div|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(11));

-- Location: LCCOMB_X66_Y65_N26
\freq_div|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~24_combout\ = (\freq_div|s_counter\(12) & (\freq_div|Add2~23\ $ (GND))) # (!\freq_div|s_counter\(12) & (!\freq_div|Add2~23\ & VCC))
-- \freq_div|Add2~25\ = CARRY((\freq_div|s_counter\(12) & !\freq_div|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_div|s_counter\(12),
	datad => VCC,
	cin => \freq_div|Add2~23\,
	combout => \freq_div|Add2~24_combout\,
	cout => \freq_div|Add2~25\);

-- Location: LCCOMB_X67_Y64_N30
\freq_div|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|s_counter~5_combout\ = (\freq_div|Add2~24_combout\ & !\freq_div|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_div|Add2~24_combout\,
	datad => \freq_div|Equal0~9_combout\,
	combout => \freq_div|s_counter~5_combout\);

-- Location: FF_X67_Y64_N31
\freq_div|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(12));

-- Location: LCCOMB_X66_Y65_N28
\freq_div|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~26_combout\ = (\freq_div|s_counter\(13) & (!\freq_div|Add2~25\)) # (!\freq_div|s_counter\(13) & ((\freq_div|Add2~25\) # (GND)))
-- \freq_div|Add2~27\ = CARRY((!\freq_div|Add2~25\) # (!\freq_div|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_div|s_counter\(13),
	datad => VCC,
	cin => \freq_div|Add2~25\,
	combout => \freq_div|Add2~26_combout\,
	cout => \freq_div|Add2~27\);

-- Location: LCCOMB_X67_Y64_N0
\freq_div|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|s_counter~4_combout\ = (\freq_div|Add2~26_combout\ & !\freq_div|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_div|Add2~26_combout\,
	datad => \freq_div|Equal0~9_combout\,
	combout => \freq_div|s_counter~4_combout\);

-- Location: FF_X67_Y64_N1
\freq_div|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(13));

-- Location: LCCOMB_X66_Y65_N30
\freq_div|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~28_combout\ = (\freq_div|s_counter\(14) & (\freq_div|Add2~27\ $ (GND))) # (!\freq_div|s_counter\(14) & (!\freq_div|Add2~27\ & VCC))
-- \freq_div|Add2~29\ = CARRY((\freq_div|s_counter\(14) & !\freq_div|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|s_counter\(14),
	datad => VCC,
	cin => \freq_div|Add2~27\,
	combout => \freq_div|Add2~28_combout\,
	cout => \freq_div|Add2~29\);

-- Location: LCCOMB_X65_Y64_N14
\freq_div|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|s_counter~11_combout\ = (\freq_div|Add2~28_combout\ & !\freq_div|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_div|Add2~28_combout\,
	datad => \freq_div|Equal0~9_combout\,
	combout => \freq_div|s_counter~11_combout\);

-- Location: FF_X65_Y64_N15
\freq_div|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(14));

-- Location: LCCOMB_X66_Y64_N0
\freq_div|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~30_combout\ = (\freq_div|s_counter\(15) & (!\freq_div|Add2~29\)) # (!\freq_div|s_counter\(15) & ((\freq_div|Add2~29\) # (GND)))
-- \freq_div|Add2~31\ = CARRY((!\freq_div|Add2~29\) # (!\freq_div|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_div|s_counter\(15),
	datad => VCC,
	cin => \freq_div|Add2~29\,
	combout => \freq_div|Add2~30_combout\,
	cout => \freq_div|Add2~31\);

-- Location: FF_X66_Y64_N1
\freq_div|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|Add2~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(15));

-- Location: LCCOMB_X66_Y64_N2
\freq_div|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~32_combout\ = (\freq_div|s_counter\(16) & (\freq_div|Add2~31\ $ (GND))) # (!\freq_div|s_counter\(16) & (!\freq_div|Add2~31\ & VCC))
-- \freq_div|Add2~33\ = CARRY((\freq_div|s_counter\(16) & !\freq_div|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_div|s_counter\(16),
	datad => VCC,
	cin => \freq_div|Add2~31\,
	combout => \freq_div|Add2~32_combout\,
	cout => \freq_div|Add2~33\);

-- Location: LCCOMB_X65_Y64_N20
\freq_div|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|s_counter~10_combout\ = (!\freq_div|Equal0~9_combout\ & \freq_div|Add2~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_div|Equal0~9_combout\,
	datad => \freq_div|Add2~32_combout\,
	combout => \freq_div|s_counter~10_combout\);

-- Location: FF_X65_Y64_N21
\freq_div|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(16));

-- Location: LCCOMB_X66_Y64_N4
\freq_div|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~34_combout\ = (\freq_div|s_counter\(17) & (!\freq_div|Add2~33\)) # (!\freq_div|s_counter\(17) & ((\freq_div|Add2~33\) # (GND)))
-- \freq_div|Add2~35\ = CARRY((!\freq_div|Add2~33\) # (!\freq_div|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_div|s_counter\(17),
	datad => VCC,
	cin => \freq_div|Add2~33\,
	combout => \freq_div|Add2~34_combout\,
	cout => \freq_div|Add2~35\);

-- Location: FF_X66_Y64_N5
\freq_div|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|Add2~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(17));

-- Location: LCCOMB_X66_Y64_N6
\freq_div|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~36_combout\ = (\freq_div|s_counter\(18) & (\freq_div|Add2~35\ $ (GND))) # (!\freq_div|s_counter\(18) & (!\freq_div|Add2~35\ & VCC))
-- \freq_div|Add2~37\ = CARRY((\freq_div|s_counter\(18) & !\freq_div|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|s_counter\(18),
	datad => VCC,
	cin => \freq_div|Add2~35\,
	combout => \freq_div|Add2~36_combout\,
	cout => \freq_div|Add2~37\);

-- Location: LCCOMB_X67_Y64_N22
\freq_div|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|s_counter~3_combout\ = (\freq_div|Add2~36_combout\ & !\freq_div|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_div|Add2~36_combout\,
	datad => \freq_div|Equal0~9_combout\,
	combout => \freq_div|s_counter~3_combout\);

-- Location: FF_X67_Y64_N23
\freq_div|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(18));

-- Location: LCCOMB_X66_Y64_N8
\freq_div|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~38_combout\ = (\freq_div|s_counter\(19) & (!\freq_div|Add2~37\)) # (!\freq_div|s_counter\(19) & ((\freq_div|Add2~37\) # (GND)))
-- \freq_div|Add2~39\ = CARRY((!\freq_div|Add2~37\) # (!\freq_div|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_div|s_counter\(19),
	datad => VCC,
	cin => \freq_div|Add2~37\,
	combout => \freq_div|Add2~38_combout\,
	cout => \freq_div|Add2~39\);

-- Location: LCCOMB_X67_Y64_N28
\freq_div|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|s_counter~2_combout\ = (\freq_div|Add2~38_combout\ & !\freq_div|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_div|Add2~38_combout\,
	datad => \freq_div|Equal0~9_combout\,
	combout => \freq_div|s_counter~2_combout\);

-- Location: FF_X67_Y64_N29
\freq_div|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(19));

-- Location: LCCOMB_X66_Y64_N10
\freq_div|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~40_combout\ = (\freq_div|s_counter\(20) & (\freq_div|Add2~39\ $ (GND))) # (!\freq_div|s_counter\(20) & (!\freq_div|Add2~39\ & VCC))
-- \freq_div|Add2~41\ = CARRY((\freq_div|s_counter\(20) & !\freq_div|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_div|s_counter\(20),
	datad => VCC,
	cin => \freq_div|Add2~39\,
	combout => \freq_div|Add2~40_combout\,
	cout => \freq_div|Add2~41\);

-- Location: LCCOMB_X67_Y64_N12
\freq_div|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|s_counter~1_combout\ = (!\freq_div|Equal0~9_combout\ & \freq_div|Add2~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_div|Equal0~9_combout\,
	datad => \freq_div|Add2~40_combout\,
	combout => \freq_div|s_counter~1_combout\);

-- Location: FF_X67_Y64_N13
\freq_div|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(20));

-- Location: LCCOMB_X66_Y64_N12
\freq_div|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~42_combout\ = (\freq_div|s_counter\(21) & (!\freq_div|Add2~41\)) # (!\freq_div|s_counter\(21) & ((\freq_div|Add2~41\) # (GND)))
-- \freq_div|Add2~43\ = CARRY((!\freq_div|Add2~41\) # (!\freq_div|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_div|s_counter\(21),
	datad => VCC,
	cin => \freq_div|Add2~41\,
	combout => \freq_div|Add2~42_combout\,
	cout => \freq_div|Add2~43\);

-- Location: LCCOMB_X67_Y64_N14
\freq_div|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|s_counter~0_combout\ = (!\freq_div|Equal0~9_combout\ & \freq_div|Add2~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_div|Equal0~9_combout\,
	datad => \freq_div|Add2~42_combout\,
	combout => \freq_div|s_counter~0_combout\);

-- Location: FF_X67_Y64_N15
\freq_div|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(21));

-- Location: LCCOMB_X66_Y64_N14
\freq_div|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~44_combout\ = (\freq_div|s_counter\(22) & (\freq_div|Add2~43\ $ (GND))) # (!\freq_div|s_counter\(22) & (!\freq_div|Add2~43\ & VCC))
-- \freq_div|Add2~45\ = CARRY((\freq_div|s_counter\(22) & !\freq_div|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|s_counter\(22),
	datad => VCC,
	cin => \freq_div|Add2~43\,
	combout => \freq_div|Add2~44_combout\,
	cout => \freq_div|Add2~45\);

-- Location: LCCOMB_X65_Y64_N16
\freq_div|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|s_counter~9_combout\ = (\freq_div|Add2~44_combout\ & !\freq_div|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_div|Add2~44_combout\,
	datad => \freq_div|Equal0~9_combout\,
	combout => \freq_div|s_counter~9_combout\);

-- Location: FF_X65_Y64_N17
\freq_div|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(22));

-- Location: LCCOMB_X66_Y64_N16
\freq_div|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~46_combout\ = (\freq_div|s_counter\(23) & (!\freq_div|Add2~45\)) # (!\freq_div|s_counter\(23) & ((\freq_div|Add2~45\) # (GND)))
-- \freq_div|Add2~47\ = CARRY((!\freq_div|Add2~45\) # (!\freq_div|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_div|s_counter\(23),
	datad => VCC,
	cin => \freq_div|Add2~45\,
	combout => \freq_div|Add2~46_combout\,
	cout => \freq_div|Add2~47\);

-- Location: FF_X66_Y64_N17
\freq_div|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|Add2~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(23));

-- Location: LCCOMB_X66_Y64_N18
\freq_div|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~48_combout\ = (\freq_div|s_counter\(24) & (\freq_div|Add2~47\ $ (GND))) # (!\freq_div|s_counter\(24) & (!\freq_div|Add2~47\ & VCC))
-- \freq_div|Add2~49\ = CARRY((\freq_div|s_counter\(24) & !\freq_div|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|s_counter\(24),
	datad => VCC,
	cin => \freq_div|Add2~47\,
	combout => \freq_div|Add2~48_combout\,
	cout => \freq_div|Add2~49\);

-- Location: LCCOMB_X65_Y64_N10
\freq_div|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|s_counter~8_combout\ = (!\freq_div|Equal0~9_combout\ & \freq_div|Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_div|Equal0~9_combout\,
	datad => \freq_div|Add2~48_combout\,
	combout => \freq_div|s_counter~8_combout\);

-- Location: FF_X65_Y64_N11
\freq_div|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(24));

-- Location: LCCOMB_X65_Y64_N12
\freq_div|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Equal0~7_combout\ = (\freq_div|s_counter\(24) & (\freq_div|s_counter\(22) & (!\freq_div|s_counter\(23) & !\freq_div|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|s_counter\(24),
	datab => \freq_div|s_counter\(22),
	datac => \freq_div|s_counter\(23),
	datad => \freq_div|s_counter\(17),
	combout => \freq_div|Equal0~7_combout\);

-- Location: LCCOMB_X65_Y64_N22
\freq_div|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Equal0~8_combout\ = (!\freq_div|s_counter\(10) & (\freq_div|s_counter\(14) & (!\freq_div|s_counter\(15) & \freq_div|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|s_counter\(10),
	datab => \freq_div|s_counter\(14),
	datac => \freq_div|s_counter\(15),
	datad => \freq_div|s_counter\(16),
	combout => \freq_div|Equal0~8_combout\);

-- Location: LCCOMB_X67_Y64_N8
\freq_div|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Equal0~5_combout\ = (\freq_div|s_counter\(4) & (\freq_div|s_counter\(3) & (!\freq_div|s_counter\(6) & \freq_div|s_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|s_counter\(4),
	datab => \freq_div|s_counter\(3),
	datac => \freq_div|s_counter\(6),
	datad => \freq_div|s_counter\(2),
	combout => \freq_div|Equal0~5_combout\);

-- Location: LCCOMB_X66_Y64_N20
\freq_div|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~50_combout\ = (\freq_div|s_counter\(25) & (!\freq_div|Add2~49\)) # (!\freq_div|s_counter\(25) & ((\freq_div|Add2~49\) # (GND)))
-- \freq_div|Add2~51\ = CARRY((!\freq_div|Add2~49\) # (!\freq_div|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_div|s_counter\(25),
	datad => VCC,
	cin => \freq_div|Add2~49\,
	combout => \freq_div|Add2~50_combout\,
	cout => \freq_div|Add2~51\);

-- Location: FF_X66_Y64_N21
\freq_div|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|Add2~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(25));

-- Location: LCCOMB_X66_Y64_N22
\freq_div|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~52_combout\ = (\freq_div|s_counter\(26) & (\freq_div|Add2~51\ $ (GND))) # (!\freq_div|s_counter\(26) & (!\freq_div|Add2~51\ & VCC))
-- \freq_div|Add2~53\ = CARRY((\freq_div|s_counter\(26) & !\freq_div|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|s_counter\(26),
	datad => VCC,
	cin => \freq_div|Add2~51\,
	combout => \freq_div|Add2~52_combout\,
	cout => \freq_div|Add2~53\);

-- Location: FF_X66_Y64_N23
\freq_div|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|Add2~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(26));

-- Location: LCCOMB_X67_Y64_N26
\freq_div|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Equal0~1_combout\ = (\freq_div|s_counter\(20) & (!\freq_div|s_counter\(25) & (\freq_div|s_counter\(21) & !\freq_div|s_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|s_counter\(20),
	datab => \freq_div|s_counter\(25),
	datac => \freq_div|s_counter\(21),
	datad => \freq_div|s_counter\(26),
	combout => \freq_div|Equal0~1_combout\);

-- Location: LCCOMB_X67_Y64_N20
\freq_div|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Equal0~2_combout\ = (\freq_div|s_counter\(18) & (\freq_div|s_counter\(19) & (\freq_div|s_counter\(12) & \freq_div|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|s_counter\(18),
	datab => \freq_div|s_counter\(19),
	datac => \freq_div|s_counter\(12),
	datad => \freq_div|s_counter\(13),
	combout => \freq_div|Equal0~2_combout\);

-- Location: LCCOMB_X66_Y64_N24
\freq_div|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~54_combout\ = (\freq_div|s_counter\(27) & (!\freq_div|Add2~53\)) # (!\freq_div|s_counter\(27) & ((\freq_div|Add2~53\) # (GND)))
-- \freq_div|Add2~55\ = CARRY((!\freq_div|Add2~53\) # (!\freq_div|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_div|s_counter\(27),
	datad => VCC,
	cin => \freq_div|Add2~53\,
	combout => \freq_div|Add2~54_combout\,
	cout => \freq_div|Add2~55\);

-- Location: FF_X66_Y64_N25
\freq_div|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|Add2~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(27));

-- Location: LCCOMB_X66_Y64_N26
\freq_div|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~56_combout\ = (\freq_div|s_counter\(28) & (\freq_div|Add2~55\ $ (GND))) # (!\freq_div|s_counter\(28) & (!\freq_div|Add2~55\ & VCC))
-- \freq_div|Add2~57\ = CARRY((\freq_div|s_counter\(28) & !\freq_div|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|s_counter\(28),
	datad => VCC,
	cin => \freq_div|Add2~55\,
	combout => \freq_div|Add2~56_combout\,
	cout => \freq_div|Add2~57\);

-- Location: FF_X66_Y64_N27
\freq_div|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|Add2~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(28));

-- Location: LCCOMB_X66_Y64_N28
\freq_div|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~58_combout\ = (\freq_div|s_counter\(29) & (!\freq_div|Add2~57\)) # (!\freq_div|s_counter\(29) & ((\freq_div|Add2~57\) # (GND)))
-- \freq_div|Add2~59\ = CARRY((!\freq_div|Add2~57\) # (!\freq_div|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_div|s_counter\(29),
	datad => VCC,
	cin => \freq_div|Add2~57\,
	combout => \freq_div|Add2~58_combout\,
	cout => \freq_div|Add2~59\);

-- Location: FF_X66_Y64_N29
\freq_div|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|Add2~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(29));

-- Location: LCCOMB_X66_Y64_N30
\freq_div|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Add2~60_combout\ = \freq_div|s_counter\(30) $ (!\freq_div|Add2~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|s_counter\(30),
	cin => \freq_div|Add2~59\,
	combout => \freq_div|Add2~60_combout\);

-- Location: FF_X66_Y64_N31
\freq_div|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|Add2~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|s_counter\(30));

-- Location: LCCOMB_X67_Y64_N4
\freq_div|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Equal0~0_combout\ = (!\freq_div|s_counter\(28) & (!\freq_div|s_counter\(30) & (!\freq_div|s_counter\(29) & !\freq_div|s_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|s_counter\(28),
	datab => \freq_div|s_counter\(30),
	datac => \freq_div|s_counter\(29),
	datad => \freq_div|s_counter\(27),
	combout => \freq_div|Equal0~0_combout\);

-- Location: LCCOMB_X67_Y64_N24
\freq_div|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Equal0~3_combout\ = (\freq_div|s_counter\(11) & (!\freq_div|s_counter\(7) & (!\freq_div|s_counter\(8) & !\freq_div|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|s_counter\(11),
	datab => \freq_div|s_counter\(7),
	datac => \freq_div|s_counter\(8),
	datad => \freq_div|s_counter\(9),
	combout => \freq_div|Equal0~3_combout\);

-- Location: LCCOMB_X67_Y64_N18
\freq_div|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Equal0~4_combout\ = (\freq_div|Equal0~1_combout\ & (\freq_div|Equal0~2_combout\ & (\freq_div|Equal0~0_combout\ & \freq_div|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|Equal0~1_combout\,
	datab => \freq_div|Equal0~2_combout\,
	datac => \freq_div|Equal0~0_combout\,
	datad => \freq_div|Equal0~3_combout\,
	combout => \freq_div|Equal0~4_combout\);

-- Location: LCCOMB_X67_Y64_N6
\freq_div|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Equal0~6_combout\ = (\freq_div|s_counter\(0) & (\freq_div|s_counter\(1) & (\freq_div|Equal0~5_combout\ & \freq_div|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|s_counter\(0),
	datab => \freq_div|s_counter\(1),
	datac => \freq_div|Equal0~5_combout\,
	datad => \freq_div|Equal0~4_combout\,
	combout => \freq_div|Equal0~6_combout\);

-- Location: LCCOMB_X65_Y64_N0
\freq_div|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|Equal0~9_combout\ = (\freq_div|Equal0~7_combout\ & (\freq_div|s_counter\(5) & (\freq_div|Equal0~8_combout\ & \freq_div|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|Equal0~7_combout\,
	datab => \freq_div|s_counter\(5),
	datac => \freq_div|Equal0~8_combout\,
	datad => \freq_div|Equal0~6_combout\,
	combout => \freq_div|Equal0~9_combout\);

-- Location: LCCOMB_X65_Y64_N28
\freq_div|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|clkOut~1_combout\ = (\freq_div|s_counter\(10) & (!\freq_div|s_counter\(14) & (\freq_div|s_counter\(15) & !\freq_div|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|s_counter\(10),
	datab => \freq_div|s_counter\(14),
	datac => \freq_div|s_counter\(15),
	datad => \freq_div|s_counter\(16),
	combout => \freq_div|clkOut~1_combout\);

-- Location: LCCOMB_X65_Y64_N26
\freq_div|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|clkOut~0_combout\ = (\freq_div|s_counter\(17) & (!\freq_div|s_counter\(22) & (\freq_div|s_counter\(23) & !\freq_div|s_counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|s_counter\(17),
	datab => \freq_div|s_counter\(22),
	datac => \freq_div|s_counter\(23),
	datad => \freq_div|s_counter\(24),
	combout => \freq_div|clkOut~0_combout\);

-- Location: LCCOMB_X65_Y64_N18
\freq_div|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|clkOut~2_combout\ = (!\freq_div|s_counter\(5) & (\freq_div|clkOut~1_combout\ & (\freq_div|clkOut~0_combout\ & \freq_div|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_div|s_counter\(5),
	datab => \freq_div|clkOut~1_combout\,
	datac => \freq_div|clkOut~0_combout\,
	datad => \freq_div|Equal0~6_combout\,
	combout => \freq_div|clkOut~2_combout\);

-- Location: LCCOMB_X65_Y64_N24
\freq_div|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_div|clkOut~3_combout\ = (!\freq_div|Equal0~9_combout\ & ((\freq_div|clkOut~q\) # (\freq_div|clkOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_div|Equal0~9_combout\,
	datac => \freq_div|clkOut~q\,
	datad => \freq_div|clkOut~2_combout\,
	combout => \freq_div|clkOut~3_combout\);

-- Location: FF_X65_Y64_N25
\freq_div|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freq_div|clkOut~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_div|clkOut~q\);

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


