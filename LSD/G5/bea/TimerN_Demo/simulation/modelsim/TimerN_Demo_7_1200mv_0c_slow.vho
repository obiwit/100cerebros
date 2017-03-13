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

-- DATE "03/13/2017 00:12:26"

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

ENTITY 	TimerN_Demo IS
    PORT (
	LEDR : OUT std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(2 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END TimerN_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TimerN_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|s_count[0]~14_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|s_count[15]~11_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|s_count[18]~9_combout\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|Add0~39\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|s_count[20]~8_combout\ : std_logic;
SIGNAL \inst|Add0~41\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|s_count[21]~7_combout\ : std_logic;
SIGNAL \inst|Add0~43\ : std_logic;
SIGNAL \inst|Add0~44_combout\ : std_logic;
SIGNAL \inst|s_count[22]~6_combout\ : std_logic;
SIGNAL \inst|Add0~45\ : std_logic;
SIGNAL \inst|Add0~46_combout\ : std_logic;
SIGNAL \inst|s_count[23]~5_combout\ : std_logic;
SIGNAL \inst|Add0~47\ : std_logic;
SIGNAL \inst|Add0~48_combout\ : std_logic;
SIGNAL \inst|s_count[24]~4_combout\ : std_logic;
SIGNAL \inst|Add0~49\ : std_logic;
SIGNAL \inst|Add0~50_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|s_count[0]~0_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|s_count[8]~1_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|s_count[13]~13_combout\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|s_count[14]~12_combout\ : std_logic;
SIGNAL \inst|counter~2_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst|s_count[26]~2_combout\ : std_logic;
SIGNAL \inst|Add0~51\ : std_logic;
SIGNAL \inst|Add0~52_combout\ : std_logic;
SIGNAL \inst|s_count[26]~3_combout\ : std_logic;
SIGNAL \inst|counter~0_combout\ : std_logic;
SIGNAL \inst|counter~1_combout\ : std_logic;
SIGNAL \inst|counter~3_combout\ : std_logic;
SIGNAL \inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|Equal0~9_combout\ : std_logic;
SIGNAL \inst|timerOut~1_combout\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|s_count[16]~10_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|Equal0~8_combout\ : std_logic;
SIGNAL \inst|timerOut~0_combout\ : std_logic;
SIGNAL \inst|timerOut~q\ : std_logic;
SIGNAL \inst|s_count\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_timerOut~q\ : std_logic;

BEGIN

LEDR <= ww_LEDR;
ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\inst|ALT_INV_timerOut~q\ <= NOT \inst|timerOut~q\;

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_timerOut~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

-- Location: LCCOMB_X90_Y69_N6
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|s_count\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X90_Y69_N0
\inst|s_count[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[0]~14_combout\ = (\inst|Add0~0_combout\ & ((\inst|timerOut~1_combout\) # ((!\SW[0]~input_o\ & \inst|s_count\(0))))) # (!\inst|Add0~0_combout\ & (!\SW[0]~input_o\ & (\inst|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \inst|s_count\(0),
	datad => \inst|timerOut~1_combout\,
	combout => \inst|s_count[0]~14_combout\);

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

-- Location: FF_X90_Y69_N1
\inst|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[0]~14_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(0));

-- Location: LCCOMB_X90_Y69_N8
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|s_count\(1) & (!\inst|Add0~1\)) # (!\inst|s_count\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X90_Y69_N2
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|s_count\(10) & (!\inst|s_count\(9) & (!\inst|s_count\(12) & !\inst|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(10),
	datab => \inst|s_count\(9),
	datac => \inst|s_count\(12),
	datad => \inst|s_count\(11),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X91_Y69_N14
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (!\inst|s_count\(3) & (!\inst|s_count\(1) & !\inst|s_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(3),
	datac => \inst|s_count\(1),
	datad => \inst|s_count\(2),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X90_Y69_N4
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|s_count\(5) & (!\inst|s_count\(6) & (!\inst|s_count\(4) & !\inst|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(5),
	datab => \inst|s_count\(6),
	datac => \inst|s_count\(4),
	datad => \inst|s_count\(7),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X90_Y68_N2
\inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|s_count\(14) & (\inst|Add0~27\ $ (GND))) # (!\inst|s_count\(14) & (!\inst|Add0~27\ & VCC))
-- \inst|Add0~29\ = CARRY((\inst|s_count\(14) & !\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(14),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCCOMB_X90_Y68_N4
\inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|s_count\(15) & (!\inst|Add0~29\)) # (!\inst|s_count\(15) & ((\inst|Add0~29\) # (GND)))
-- \inst|Add0~31\ = CARRY((!\inst|Add0~29\) # (!\inst|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(15),
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: LCCOMB_X91_Y68_N20
\inst|s_count[15]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[15]~11_combout\ = (\SW[0]~input_o\ & (\inst|timerOut~1_combout\ & ((\inst|Add0~30_combout\)))) # (!\SW[0]~input_o\ & ((\inst|s_count\(15)) # ((\inst|timerOut~1_combout\ & \inst|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|timerOut~1_combout\,
	datac => \inst|s_count\(15),
	datad => \inst|Add0~30_combout\,
	combout => \inst|s_count[15]~11_combout\);

-- Location: FF_X91_Y68_N21
\inst|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[15]~11_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(15));

-- Location: LCCOMB_X90_Y68_N6
\inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|s_count\(16) & (\inst|Add0~31\ $ (GND))) # (!\inst|s_count\(16) & (!\inst|Add0~31\ & VCC))
-- \inst|Add0~33\ = CARRY((\inst|s_count\(16) & !\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(16),
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: LCCOMB_X90_Y68_N8
\inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|s_count\(17) & (!\inst|Add0~33\)) # (!\inst|s_count\(17) & ((\inst|Add0~33\) # (GND)))
-- \inst|Add0~35\ = CARRY((!\inst|Add0~33\) # (!\inst|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(17),
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: FF_X90_Y68_N9
\inst|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~34_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \inst|s_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(17));

-- Location: LCCOMB_X90_Y68_N10
\inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|s_count\(18) & (\inst|Add0~35\ $ (GND))) # (!\inst|s_count\(18) & (!\inst|Add0~35\ & VCC))
-- \inst|Add0~37\ = CARRY((\inst|s_count\(18) & !\inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(18),
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: LCCOMB_X91_Y69_N26
\inst|s_count[18]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[18]~9_combout\ = (\inst|timerOut~1_combout\ & ((\inst|Add0~36_combout\) # ((!\SW[0]~input_o\ & \inst|s_count\(18))))) # (!\inst|timerOut~1_combout\ & (!\SW[0]~input_o\ & (\inst|s_count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|timerOut~1_combout\,
	datab => \SW[0]~input_o\,
	datac => \inst|s_count\(18),
	datad => \inst|Add0~36_combout\,
	combout => \inst|s_count[18]~9_combout\);

-- Location: FF_X91_Y69_N27
\inst|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[18]~9_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(18));

-- Location: LCCOMB_X90_Y68_N12
\inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (\inst|s_count\(19) & (!\inst|Add0~37\)) # (!\inst|s_count\(19) & ((\inst|Add0~37\) # (GND)))
-- \inst|Add0~39\ = CARRY((!\inst|Add0~37\) # (!\inst|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(19),
	datad => VCC,
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\,
	cout => \inst|Add0~39\);

-- Location: FF_X90_Y68_N13
\inst|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~38_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \inst|s_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(19));

-- Location: LCCOMB_X90_Y68_N14
\inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\inst|s_count\(20) & (\inst|Add0~39\ $ (GND))) # (!\inst|s_count\(20) & (!\inst|Add0~39\ & VCC))
-- \inst|Add0~41\ = CARRY((\inst|s_count\(20) & !\inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(20),
	datad => VCC,
	cin => \inst|Add0~39\,
	combout => \inst|Add0~40_combout\,
	cout => \inst|Add0~41\);

-- Location: LCCOMB_X90_Y68_N30
\inst|s_count[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[20]~8_combout\ = (\SW[0]~input_o\ & (\inst|Add0~40_combout\ & ((\inst|timerOut~1_combout\)))) # (!\SW[0]~input_o\ & ((\inst|s_count\(20)) # ((\inst|Add0~40_combout\ & \inst|timerOut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|Add0~40_combout\,
	datac => \inst|s_count\(20),
	datad => \inst|timerOut~1_combout\,
	combout => \inst|s_count[20]~8_combout\);

-- Location: FF_X90_Y68_N31
\inst|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[20]~8_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(20));

-- Location: LCCOMB_X90_Y68_N16
\inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (\inst|s_count\(21) & (!\inst|Add0~41\)) # (!\inst|s_count\(21) & ((\inst|Add0~41\) # (GND)))
-- \inst|Add0~43\ = CARRY((!\inst|Add0~41\) # (!\inst|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(21),
	datad => VCC,
	cin => \inst|Add0~41\,
	combout => \inst|Add0~42_combout\,
	cout => \inst|Add0~43\);

-- Location: LCCOMB_X91_Y68_N2
\inst|s_count[21]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[21]~7_combout\ = (\inst|Add0~42_combout\ & ((\inst|timerOut~1_combout\) # ((\inst|s_count\(21) & !\SW[0]~input_o\)))) # (!\inst|Add0~42_combout\ & (((\inst|s_count\(21) & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~42_combout\,
	datab => \inst|timerOut~1_combout\,
	datac => \inst|s_count\(21),
	datad => \SW[0]~input_o\,
	combout => \inst|s_count[21]~7_combout\);

-- Location: FF_X91_Y68_N3
\inst|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[21]~7_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(21));

-- Location: LCCOMB_X90_Y68_N18
\inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~44_combout\ = (\inst|s_count\(22) & (\inst|Add0~43\ $ (GND))) # (!\inst|s_count\(22) & (!\inst|Add0~43\ & VCC))
-- \inst|Add0~45\ = CARRY((\inst|s_count\(22) & !\inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(22),
	datad => VCC,
	cin => \inst|Add0~43\,
	combout => \inst|Add0~44_combout\,
	cout => \inst|Add0~45\);

-- Location: LCCOMB_X91_Y68_N0
\inst|s_count[22]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[22]~6_combout\ = (\SW[0]~input_o\ & (\inst|timerOut~1_combout\ & ((\inst|Add0~44_combout\)))) # (!\SW[0]~input_o\ & ((\inst|s_count\(22)) # ((\inst|timerOut~1_combout\ & \inst|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|timerOut~1_combout\,
	datac => \inst|s_count\(22),
	datad => \inst|Add0~44_combout\,
	combout => \inst|s_count[22]~6_combout\);

-- Location: FF_X91_Y68_N1
\inst|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[22]~6_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(22));

-- Location: LCCOMB_X90_Y68_N20
\inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~46_combout\ = (\inst|s_count\(23) & (!\inst|Add0~45\)) # (!\inst|s_count\(23) & ((\inst|Add0~45\) # (GND)))
-- \inst|Add0~47\ = CARRY((!\inst|Add0~45\) # (!\inst|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(23),
	datad => VCC,
	cin => \inst|Add0~45\,
	combout => \inst|Add0~46_combout\,
	cout => \inst|Add0~47\);

-- Location: LCCOMB_X90_Y68_N28
\inst|s_count[23]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[23]~5_combout\ = (\SW[0]~input_o\ & (\inst|timerOut~1_combout\ & ((\inst|Add0~46_combout\)))) # (!\SW[0]~input_o\ & ((\inst|s_count\(23)) # ((\inst|timerOut~1_combout\ & \inst|Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|timerOut~1_combout\,
	datac => \inst|s_count\(23),
	datad => \inst|Add0~46_combout\,
	combout => \inst|s_count[23]~5_combout\);

-- Location: FF_X90_Y68_N29
\inst|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[23]~5_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(23));

-- Location: LCCOMB_X90_Y68_N22
\inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~48_combout\ = (\inst|s_count\(24) & (\inst|Add0~47\ $ (GND))) # (!\inst|s_count\(24) & (!\inst|Add0~47\ & VCC))
-- \inst|Add0~49\ = CARRY((\inst|s_count\(24) & !\inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(24),
	datad => VCC,
	cin => \inst|Add0~47\,
	combout => \inst|Add0~48_combout\,
	cout => \inst|Add0~49\);

-- Location: LCCOMB_X91_Y68_N24
\inst|s_count[24]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[24]~4_combout\ = (\SW[0]~input_o\ & (\inst|timerOut~1_combout\ & ((\inst|Add0~48_combout\)))) # (!\SW[0]~input_o\ & ((\inst|s_count\(24)) # ((\inst|timerOut~1_combout\ & \inst|Add0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|timerOut~1_combout\,
	datac => \inst|s_count\(24),
	datad => \inst|Add0~48_combout\,
	combout => \inst|s_count[24]~4_combout\);

-- Location: FF_X91_Y68_N25
\inst|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[24]~4_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(24));

-- Location: LCCOMB_X90_Y68_N24
\inst|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~50_combout\ = (\inst|s_count\(25) & (!\inst|Add0~49\)) # (!\inst|s_count\(25) & ((\inst|Add0~49\) # (GND)))
-- \inst|Add0~51\ = CARRY((!\inst|Add0~49\) # (!\inst|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(25),
	datad => VCC,
	cin => \inst|Add0~49\,
	combout => \inst|Add0~50_combout\,
	cout => \inst|Add0~51\);

-- Location: FF_X90_Y68_N25
\inst|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~50_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \inst|s_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(25));

-- Location: LCCOMB_X91_Y69_N20
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|s_count\(0) & (!\inst|s_count\(19) & (!\inst|s_count\(25) & !\inst|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(0),
	datab => \inst|s_count\(19),
	datac => \inst|s_count\(25),
	datad => \inst|s_count\(17),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X91_Y69_N4
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|Equal0~1_combout\ & (\inst|Equal0~3_combout\ & (\inst|Equal0~2_combout\ & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|Equal0~3_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X91_Y69_N6
\inst|s_count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[0]~0_combout\ = (\SW[0]~input_o\ & ((\inst|counter~3_combout\) # (!\inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \inst|Equal0~4_combout\,
	datad => \inst|counter~3_combout\,
	combout => \inst|s_count[0]~0_combout\);

-- Location: FF_X90_Y69_N9
\inst|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~2_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \inst|s_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(1));

-- Location: LCCOMB_X90_Y69_N10
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|s_count\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|s_count\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|s_count\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: FF_X90_Y69_N11
\inst|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~4_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \inst|s_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(2));

-- Location: LCCOMB_X90_Y69_N12
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|s_count\(3) & (!\inst|Add0~5\)) # (!\inst|s_count\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: FF_X90_Y69_N13
\inst|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~6_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \inst|s_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(3));

-- Location: LCCOMB_X90_Y69_N14
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|s_count\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|s_count\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|s_count\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: FF_X90_Y69_N15
\inst|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~8_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \inst|s_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(4));

-- Location: LCCOMB_X90_Y69_N16
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|s_count\(5) & (!\inst|Add0~9\)) # (!\inst|s_count\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: FF_X90_Y69_N17
\inst|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~10_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \inst|s_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(5));

-- Location: LCCOMB_X90_Y69_N18
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|s_count\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|s_count\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|s_count\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: FF_X90_Y69_N19
\inst|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~12_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \inst|s_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(6));

-- Location: LCCOMB_X90_Y69_N20
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|s_count\(7) & (!\inst|Add0~13\)) # (!\inst|s_count\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: FF_X90_Y69_N21
\inst|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~14_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \inst|s_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(7));

-- Location: LCCOMB_X90_Y69_N22
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|s_count\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|s_count\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|s_count\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCCOMB_X91_Y69_N8
\inst|s_count[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[8]~1_combout\ = (\inst|Add0~16_combout\ & ((\inst|timerOut~1_combout\) # ((!\SW[0]~input_o\ & \inst|s_count\(8))))) # (!\inst|Add0~16_combout\ & (!\SW[0]~input_o\ & (\inst|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~16_combout\,
	datab => \SW[0]~input_o\,
	datac => \inst|s_count\(8),
	datad => \inst|timerOut~1_combout\,
	combout => \inst|s_count[8]~1_combout\);

-- Location: FF_X91_Y69_N9
\inst|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[8]~1_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(8));

-- Location: LCCOMB_X90_Y69_N24
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|s_count\(9) & (!\inst|Add0~17\)) # (!\inst|s_count\(9) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: FF_X90_Y69_N25
\inst|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~18_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \inst|s_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(9));

-- Location: LCCOMB_X90_Y69_N26
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|s_count\(10) & (\inst|Add0~19\ $ (GND))) # (!\inst|s_count\(10) & (!\inst|Add0~19\ & VCC))
-- \inst|Add0~21\ = CARRY((\inst|s_count\(10) & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: FF_X90_Y69_N27
\inst|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~20_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \inst|s_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(10));

-- Location: LCCOMB_X90_Y69_N28
\inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|s_count\(11) & (!\inst|Add0~21\)) # (!\inst|s_count\(11) & ((\inst|Add0~21\) # (GND)))
-- \inst|Add0~23\ = CARRY((!\inst|Add0~21\) # (!\inst|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(11),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: FF_X90_Y69_N29
\inst|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~22_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \inst|s_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(11));

-- Location: LCCOMB_X90_Y69_N30
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|s_count\(12) & (\inst|Add0~23\ $ (GND))) # (!\inst|s_count\(12) & (!\inst|Add0~23\ & VCC))
-- \inst|Add0~25\ = CARRY((\inst|s_count\(12) & !\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(12),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: FF_X90_Y69_N31
\inst|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~24_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	ena => \inst|s_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(12));

-- Location: LCCOMB_X90_Y68_N0
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|s_count\(13) & (!\inst|Add0~25\)) # (!\inst|s_count\(13) & ((\inst|Add0~25\) # (GND)))
-- \inst|Add0~27\ = CARRY((!\inst|Add0~25\) # (!\inst|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(13),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: LCCOMB_X91_Y69_N30
\inst|s_count[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[13]~13_combout\ = (\inst|timerOut~1_combout\ & ((\inst|Add0~26_combout\) # ((!\SW[0]~input_o\ & \inst|s_count\(13))))) # (!\inst|timerOut~1_combout\ & (!\SW[0]~input_o\ & (\inst|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|timerOut~1_combout\,
	datab => \SW[0]~input_o\,
	datac => \inst|s_count\(13),
	datad => \inst|Add0~26_combout\,
	combout => \inst|s_count[13]~13_combout\);

-- Location: FF_X91_Y69_N31
\inst|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[13]~13_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(13));

-- Location: LCCOMB_X91_Y69_N28
\inst|s_count[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[14]~12_combout\ = (\inst|timerOut~1_combout\ & ((\inst|Add0~28_combout\) # ((!\SW[0]~input_o\ & \inst|s_count\(14))))) # (!\inst|timerOut~1_combout\ & (!\SW[0]~input_o\ & (\inst|s_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|timerOut~1_combout\,
	datab => \SW[0]~input_o\,
	datac => \inst|s_count\(14),
	datad => \inst|Add0~28_combout\,
	combout => \inst|s_count[14]~12_combout\);

-- Location: FF_X91_Y69_N29
\inst|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[14]~12_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(14));

-- Location: LCCOMB_X91_Y69_N12
\inst|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~2_combout\ = (\inst|s_count\(16)) # ((\inst|s_count\(14)) # ((\inst|s_count\(13)) # (\inst|s_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(16),
	datab => \inst|s_count\(14),
	datac => \inst|s_count\(13),
	datad => \inst|s_count\(15),
	combout => \inst|counter~2_combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X91_Y68_N30
\inst|s_count[26]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[26]~2_combout\ = (\inst|s_count\(26) & !\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(26),
	datac => \SW[0]~input_o\,
	combout => \inst|s_count[26]~2_combout\);

-- Location: LCCOMB_X90_Y68_N26
\inst|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~52_combout\ = \inst|Add0~51\ $ (!\inst|s_count\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|s_count\(26),
	cin => \inst|Add0~51\,
	combout => \inst|Add0~52_combout\);

-- Location: LCCOMB_X91_Y68_N26
\inst|s_count[26]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[26]~3_combout\ = (\inst|s_count[26]~2_combout\) # ((!\inst|Equal0~8_combout\ & (\inst|Add0~52_combout\ & \inst|s_count[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count[26]~2_combout\,
	datab => \inst|Equal0~8_combout\,
	datac => \inst|Add0~52_combout\,
	datad => \inst|s_count[0]~0_combout\,
	combout => \inst|s_count[26]~3_combout\);

-- Location: FF_X91_Y68_N27
\inst|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[26]~3_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(26));

-- Location: LCCOMB_X91_Y68_N22
\inst|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~0_combout\ = (\SW[2]~input_o\) # ((\inst|s_count\(24)) # ((\inst|s_count\(26)) # (\inst|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|s_count\(24),
	datac => \inst|s_count\(26),
	datad => \inst|s_count\(23),
	combout => \inst|counter~0_combout\);

-- Location: LCCOMB_X91_Y69_N24
\inst|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~1_combout\ = (\inst|s_count\(18)) # ((\inst|s_count\(22)) # ((\inst|s_count\(21)) # (\inst|s_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(18),
	datab => \inst|s_count\(22),
	datac => \inst|s_count\(21),
	datad => \inst|s_count\(20),
	combout => \inst|counter~1_combout\);

-- Location: LCCOMB_X91_Y69_N2
\inst|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~3_combout\ = (\inst|counter~2_combout\) # ((\inst|s_count\(8)) # ((\inst|counter~0_combout\) # (\inst|counter~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~2_combout\,
	datab => \inst|s_count\(8),
	datac => \inst|counter~0_combout\,
	datad => \inst|counter~1_combout\,
	combout => \inst|counter~3_combout\);

-- Location: LCCOMB_X91_Y69_N22
\inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~7_combout\ = (\inst|s_count\(13) & (\inst|s_count\(14) & (\inst|s_count\(8) & \inst|s_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(13),
	datab => \inst|s_count\(14),
	datac => \inst|s_count\(8),
	datad => \inst|s_count\(15),
	combout => \inst|Equal0~7_combout\);

-- Location: LCCOMB_X91_Y68_N14
\inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (\inst|s_count\(26) & (\inst|s_count\(24) & (\inst|s_count\(22) & \inst|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(26),
	datab => \inst|s_count\(24),
	datac => \inst|s_count\(22),
	datad => \inst|s_count\(23),
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X91_Y69_N0
\inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~9_combout\ = (\inst|Equal0~7_combout\ & (\inst|Equal0~5_combout\ & \inst|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~7_combout\,
	datac => \inst|Equal0~5_combout\,
	datad => \inst|Equal0~6_combout\,
	combout => \inst|Equal0~9_combout\);

-- Location: LCCOMB_X91_Y69_N18
\inst|timerOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|timerOut~1_combout\ = (\SW[0]~input_o\ & (((\inst|counter~3_combout\ & !\inst|Equal0~9_combout\)) # (!\inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|counter~3_combout\,
	datac => \inst|Equal0~4_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|timerOut~1_combout\);

-- Location: LCCOMB_X91_Y69_N10
\inst|s_count[16]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[16]~10_combout\ = (\inst|timerOut~1_combout\ & ((\inst|Add0~32_combout\) # ((!\SW[0]~input_o\ & \inst|s_count\(16))))) # (!\inst|timerOut~1_combout\ & (!\SW[0]~input_o\ & (\inst|s_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|timerOut~1_combout\,
	datab => \SW[0]~input_o\,
	datac => \inst|s_count\(16),
	datad => \inst|Add0~32_combout\,
	combout => \inst|s_count[16]~10_combout\);

-- Location: FF_X91_Y69_N11
\inst|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[16]~10_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(16));

-- Location: LCCOMB_X91_Y69_N16
\inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (\inst|s_count\(16) & (\inst|s_count\(21) & (\inst|s_count\(18) & \inst|s_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(16),
	datab => \inst|s_count\(21),
	datac => \inst|s_count\(18),
	datad => \inst|s_count\(20),
	combout => \inst|Equal0~6_combout\);

-- Location: LCCOMB_X91_Y68_N28
\inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~8_combout\ = (\inst|Equal0~6_combout\ & (\inst|Equal0~5_combout\ & (\inst|Equal0~4_combout\ & \inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~6_combout\,
	datab => \inst|Equal0~5_combout\,
	datac => \inst|Equal0~4_combout\,
	datad => \inst|Equal0~7_combout\,
	combout => \inst|Equal0~8_combout\);

-- Location: LCCOMB_X91_Y68_N8
\inst|timerOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|timerOut~0_combout\ = (\inst|Equal0~8_combout\ & ((\SW[0]~input_o\) # ((\inst|timerOut~q\)))) # (!\inst|Equal0~8_combout\ & (((\inst|timerOut~q\ & !\inst|s_count[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|Equal0~8_combout\,
	datac => \inst|timerOut~q\,
	datad => \inst|s_count[0]~0_combout\,
	combout => \inst|timerOut~0_combout\);

-- Location: FF_X91_Y68_N9
\inst|timerOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|timerOut~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|timerOut~q\);

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


