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

-- DATE "03/06/2017 17:54:55"

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

ENTITY 	FreqDivider_CounterDisplay_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(0 DOWNTO 0)
	);
END FreqDivider_CounterDisplay_Demo;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FreqDivider_CounterDisplay_Demo IS
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
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fq|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \fq|Add1~0_combout\ : std_logic;
SIGNAL \fq|Add1~1\ : std_logic;
SIGNAL \fq|Add1~2_combout\ : std_logic;
SIGNAL \fq|Add1~3\ : std_logic;
SIGNAL \fq|Add1~4_combout\ : std_logic;
SIGNAL \fq|Add1~5\ : std_logic;
SIGNAL \fq|Add1~6_combout\ : std_logic;
SIGNAL \fq|Add1~7\ : std_logic;
SIGNAL \fq|Add1~8_combout\ : std_logic;
SIGNAL \fq|Add1~9\ : std_logic;
SIGNAL \fq|Add1~10_combout\ : std_logic;
SIGNAL \fq|Add1~11\ : std_logic;
SIGNAL \fq|Add1~12_combout\ : std_logic;
SIGNAL \fq|Add1~13\ : std_logic;
SIGNAL \fq|Add1~14_combout\ : std_logic;
SIGNAL \fq|Add1~15\ : std_logic;
SIGNAL \fq|Add1~16_combout\ : std_logic;
SIGNAL \fq|Add1~17\ : std_logic;
SIGNAL \fq|Add1~18_combout\ : std_logic;
SIGNAL \fq|Add1~19\ : std_logic;
SIGNAL \fq|Add1~20_combout\ : std_logic;
SIGNAL \fq|Add1~21\ : std_logic;
SIGNAL \fq|Add1~22_combout\ : std_logic;
SIGNAL \fq|s_counter~6_combout\ : std_logic;
SIGNAL \fq|Add1~23\ : std_logic;
SIGNAL \fq|Add1~24_combout\ : std_logic;
SIGNAL \fq|s_counter~5_combout\ : std_logic;
SIGNAL \fq|Add1~25\ : std_logic;
SIGNAL \fq|Add1~26_combout\ : std_logic;
SIGNAL \fq|s_counter~4_combout\ : std_logic;
SIGNAL \fq|Add1~27\ : std_logic;
SIGNAL \fq|Add1~28_combout\ : std_logic;
SIGNAL \fq|s_counter~11_combout\ : std_logic;
SIGNAL \fq|Add1~29\ : std_logic;
SIGNAL \fq|Add1~30_combout\ : std_logic;
SIGNAL \fq|Add1~31\ : std_logic;
SIGNAL \fq|Add1~32_combout\ : std_logic;
SIGNAL \fq|s_counter~10_combout\ : std_logic;
SIGNAL \fq|Add1~33\ : std_logic;
SIGNAL \fq|Add1~34_combout\ : std_logic;
SIGNAL \fq|Add1~35\ : std_logic;
SIGNAL \fq|Add1~36_combout\ : std_logic;
SIGNAL \fq|s_counter~3_combout\ : std_logic;
SIGNAL \fq|Add1~37\ : std_logic;
SIGNAL \fq|Add1~38_combout\ : std_logic;
SIGNAL \fq|s_counter~2_combout\ : std_logic;
SIGNAL \fq|Add1~39\ : std_logic;
SIGNAL \fq|Add1~40_combout\ : std_logic;
SIGNAL \fq|s_counter~1_combout\ : std_logic;
SIGNAL \fq|Add1~41\ : std_logic;
SIGNAL \fq|Add1~42_combout\ : std_logic;
SIGNAL \fq|s_counter~0_combout\ : std_logic;
SIGNAL \fq|Add1~43\ : std_logic;
SIGNAL \fq|Add1~44_combout\ : std_logic;
SIGNAL \fq|s_counter~9_combout\ : std_logic;
SIGNAL \fq|Add1~45\ : std_logic;
SIGNAL \fq|Add1~46_combout\ : std_logic;
SIGNAL \fq|Add1~47\ : std_logic;
SIGNAL \fq|Add1~48_combout\ : std_logic;
SIGNAL \fq|s_counter~8_combout\ : std_logic;
SIGNAL \fq|Equal0~6_combout\ : std_logic;
SIGNAL \fq|Equal0~7_combout\ : std_logic;
SIGNAL \fq|Equal0~8_combout\ : std_logic;
SIGNAL \fq|Equal0~9_combout\ : std_logic;
SIGNAL \fq|Add1~49\ : std_logic;
SIGNAL \fq|Add1~50_combout\ : std_logic;
SIGNAL \fq|Add1~51\ : std_logic;
SIGNAL \fq|Add1~52_combout\ : std_logic;
SIGNAL \fq|Equal0~1_combout\ : std_logic;
SIGNAL \fq|Equal0~2_combout\ : std_logic;
SIGNAL \fq|Add1~53\ : std_logic;
SIGNAL \fq|Add1~54_combout\ : std_logic;
SIGNAL \fq|Add1~55\ : std_logic;
SIGNAL \fq|Add1~56_combout\ : std_logic;
SIGNAL \fq|Add1~57\ : std_logic;
SIGNAL \fq|Add1~58_combout\ : std_logic;
SIGNAL \fq|Add1~59\ : std_logic;
SIGNAL \fq|Add1~60_combout\ : std_logic;
SIGNAL \fq|Equal0~0_combout\ : std_logic;
SIGNAL \fq|Equal0~3_combout\ : std_logic;
SIGNAL \fq|Equal0~4_combout\ : std_logic;
SIGNAL \fq|Equal0~10_combout\ : std_logic;
SIGNAL \fq|s_counter~7_combout\ : std_logic;
SIGNAL \fq|Equal0~5_combout\ : std_logic;
SIGNAL \fq|clkOut~1_combout\ : std_logic;
SIGNAL \fq|clkOut~0_combout\ : std_logic;
SIGNAL \fq|clkOut~2_combout\ : std_logic;
SIGNAL \fq|clkOut~3_combout\ : std_logic;
SIGNAL \fq|clkOut~4_combout\ : std_logic;
SIGNAL \fq|clkOut~feeder_combout\ : std_logic;
SIGNAL \fq|clkOut~q\ : std_logic;
SIGNAL \fq|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \cnt|s_count~11_combout\ : std_logic;
SIGNAL \cnt|s_count[1]~4_cout\ : std_logic;
SIGNAL \cnt|s_count[1]~5_combout\ : std_logic;
SIGNAL \cnt|s_count[1]~6\ : std_logic;
SIGNAL \cnt|s_count[2]~7_combout\ : std_logic;
SIGNAL \cnt|s_count[2]~8\ : std_logic;
SIGNAL \cnt|s_count[3]~9_combout\ : std_logic;
SIGNAL \dec|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \dec|decOut_n[1]~1_combout\ : std_logic;
SIGNAL \dec|decOut_n[2]~2_combout\ : std_logic;
SIGNAL \dec|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \dec|decOut_n[4]~4_combout\ : std_logic;
SIGNAL \dec|decOut_n[5]~5_combout\ : std_logic;
SIGNAL \dec|decOut_n[6]~6_combout\ : std_logic;
SIGNAL \cnt|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fq|s_counter\ : std_logic_vector(30 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
HEX0 <= ww_HEX0;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\fq|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fq|clkOut~q\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|decOut_n[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|decOut_n[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|decOut_n[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|decOut_n[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|decOut_n[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fq|clkOut~q\,
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

-- Location: LCCOMB_X69_Y72_N2
\fq|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~0_combout\ = \fq|s_counter\(0) $ (VCC)
-- \fq|Add1~1\ = CARRY(\fq|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(0),
	datad => VCC,
	combout => \fq|Add1~0_combout\,
	cout => \fq|Add1~1\);

-- Location: FF_X69_Y72_N3
\fq|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(0));

-- Location: LCCOMB_X69_Y72_N4
\fq|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~2_combout\ = (\fq|s_counter\(1) & (!\fq|Add1~1\)) # (!\fq|s_counter\(1) & ((\fq|Add1~1\) # (GND)))
-- \fq|Add1~3\ = CARRY((!\fq|Add1~1\) # (!\fq|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(1),
	datad => VCC,
	cin => \fq|Add1~1\,
	combout => \fq|Add1~2_combout\,
	cout => \fq|Add1~3\);

-- Location: FF_X69_Y72_N5
\fq|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(1));

-- Location: LCCOMB_X69_Y72_N6
\fq|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~4_combout\ = (\fq|s_counter\(2) & (\fq|Add1~3\ $ (GND))) # (!\fq|s_counter\(2) & (!\fq|Add1~3\ & VCC))
-- \fq|Add1~5\ = CARRY((\fq|s_counter\(2) & !\fq|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(2),
	datad => VCC,
	cin => \fq|Add1~3\,
	combout => \fq|Add1~4_combout\,
	cout => \fq|Add1~5\);

-- Location: FF_X69_Y72_N7
\fq|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(2));

-- Location: LCCOMB_X69_Y72_N8
\fq|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~6_combout\ = (\fq|s_counter\(3) & (!\fq|Add1~5\)) # (!\fq|s_counter\(3) & ((\fq|Add1~5\) # (GND)))
-- \fq|Add1~7\ = CARRY((!\fq|Add1~5\) # (!\fq|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(3),
	datad => VCC,
	cin => \fq|Add1~5\,
	combout => \fq|Add1~6_combout\,
	cout => \fq|Add1~7\);

-- Location: FF_X69_Y72_N9
\fq|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(3));

-- Location: LCCOMB_X69_Y72_N10
\fq|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~8_combout\ = (\fq|s_counter\(4) & (\fq|Add1~7\ $ (GND))) # (!\fq|s_counter\(4) & (!\fq|Add1~7\ & VCC))
-- \fq|Add1~9\ = CARRY((\fq|s_counter\(4) & !\fq|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(4),
	datad => VCC,
	cin => \fq|Add1~7\,
	combout => \fq|Add1~8_combout\,
	cout => \fq|Add1~9\);

-- Location: FF_X69_Y72_N11
\fq|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(4));

-- Location: LCCOMB_X69_Y72_N12
\fq|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~10_combout\ = (\fq|s_counter\(5) & (!\fq|Add1~9\)) # (!\fq|s_counter\(5) & ((\fq|Add1~9\) # (GND)))
-- \fq|Add1~11\ = CARRY((!\fq|Add1~9\) # (!\fq|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(5),
	datad => VCC,
	cin => \fq|Add1~9\,
	combout => \fq|Add1~10_combout\,
	cout => \fq|Add1~11\);

-- Location: FF_X69_Y72_N13
\fq|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(5));

-- Location: LCCOMB_X69_Y72_N14
\fq|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~12_combout\ = (\fq|s_counter\(6) & (\fq|Add1~11\ $ (GND))) # (!\fq|s_counter\(6) & (!\fq|Add1~11\ & VCC))
-- \fq|Add1~13\ = CARRY((\fq|s_counter\(6) & !\fq|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(6),
	datad => VCC,
	cin => \fq|Add1~11\,
	combout => \fq|Add1~12_combout\,
	cout => \fq|Add1~13\);

-- Location: LCCOMB_X69_Y72_N16
\fq|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~14_combout\ = (\fq|s_counter\(7) & (!\fq|Add1~13\)) # (!\fq|s_counter\(7) & ((\fq|Add1~13\) # (GND)))
-- \fq|Add1~15\ = CARRY((!\fq|Add1~13\) # (!\fq|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(7),
	datad => VCC,
	cin => \fq|Add1~13\,
	combout => \fq|Add1~14_combout\,
	cout => \fq|Add1~15\);

-- Location: FF_X69_Y72_N17
\fq|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(7));

-- Location: LCCOMB_X69_Y72_N18
\fq|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~16_combout\ = (\fq|s_counter\(8) & (\fq|Add1~15\ $ (GND))) # (!\fq|s_counter\(8) & (!\fq|Add1~15\ & VCC))
-- \fq|Add1~17\ = CARRY((\fq|s_counter\(8) & !\fq|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(8),
	datad => VCC,
	cin => \fq|Add1~15\,
	combout => \fq|Add1~16_combout\,
	cout => \fq|Add1~17\);

-- Location: FF_X69_Y72_N19
\fq|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(8));

-- Location: LCCOMB_X69_Y72_N20
\fq|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~18_combout\ = (\fq|s_counter\(9) & (!\fq|Add1~17\)) # (!\fq|s_counter\(9) & ((\fq|Add1~17\) # (GND)))
-- \fq|Add1~19\ = CARRY((!\fq|Add1~17\) # (!\fq|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(9),
	datad => VCC,
	cin => \fq|Add1~17\,
	combout => \fq|Add1~18_combout\,
	cout => \fq|Add1~19\);

-- Location: FF_X69_Y72_N21
\fq|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(9));

-- Location: LCCOMB_X69_Y72_N22
\fq|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~20_combout\ = (\fq|s_counter\(10) & (\fq|Add1~19\ $ (GND))) # (!\fq|s_counter\(10) & (!\fq|Add1~19\ & VCC))
-- \fq|Add1~21\ = CARRY((\fq|s_counter\(10) & !\fq|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(10),
	datad => VCC,
	cin => \fq|Add1~19\,
	combout => \fq|Add1~20_combout\,
	cout => \fq|Add1~21\);

-- Location: FF_X69_Y72_N23
\fq|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(10));

-- Location: LCCOMB_X69_Y72_N24
\fq|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~22_combout\ = (\fq|s_counter\(11) & (!\fq|Add1~21\)) # (!\fq|s_counter\(11) & ((\fq|Add1~21\) # (GND)))
-- \fq|Add1~23\ = CARRY((!\fq|Add1~21\) # (!\fq|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(11),
	datad => VCC,
	cin => \fq|Add1~21\,
	combout => \fq|Add1~22_combout\,
	cout => \fq|Add1~23\);

-- Location: LCCOMB_X70_Y71_N10
\fq|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter~6_combout\ = (\fq|Add1~22_combout\ & !\fq|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fq|Add1~22_combout\,
	datad => \fq|Equal0~10_combout\,
	combout => \fq|s_counter~6_combout\);

-- Location: FF_X70_Y71_N11
\fq|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(11));

-- Location: LCCOMB_X69_Y72_N26
\fq|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~24_combout\ = (\fq|s_counter\(12) & (\fq|Add1~23\ $ (GND))) # (!\fq|s_counter\(12) & (!\fq|Add1~23\ & VCC))
-- \fq|Add1~25\ = CARRY((\fq|s_counter\(12) & !\fq|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(12),
	datad => VCC,
	cin => \fq|Add1~23\,
	combout => \fq|Add1~24_combout\,
	cout => \fq|Add1~25\);

-- Location: LCCOMB_X70_Y71_N6
\fq|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter~5_combout\ = (!\fq|Equal0~10_combout\ & \fq|Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fq|Equal0~10_combout\,
	datad => \fq|Add1~24_combout\,
	combout => \fq|s_counter~5_combout\);

-- Location: FF_X70_Y71_N7
\fq|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(12));

-- Location: LCCOMB_X69_Y72_N28
\fq|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~26_combout\ = (\fq|s_counter\(13) & (!\fq|Add1~25\)) # (!\fq|s_counter\(13) & ((\fq|Add1~25\) # (GND)))
-- \fq|Add1~27\ = CARRY((!\fq|Add1~25\) # (!\fq|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(13),
	datad => VCC,
	cin => \fq|Add1~25\,
	combout => \fq|Add1~26_combout\,
	cout => \fq|Add1~27\);

-- Location: LCCOMB_X70_Y71_N24
\fq|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter~4_combout\ = (\fq|Add1~26_combout\ & !\fq|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fq|Add1~26_combout\,
	datad => \fq|Equal0~10_combout\,
	combout => \fq|s_counter~4_combout\);

-- Location: FF_X70_Y71_N25
\fq|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(13));

-- Location: LCCOMB_X69_Y72_N30
\fq|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~28_combout\ = (\fq|s_counter\(14) & (\fq|Add1~27\ $ (GND))) # (!\fq|s_counter\(14) & (!\fq|Add1~27\ & VCC))
-- \fq|Add1~29\ = CARRY((\fq|s_counter\(14) & !\fq|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(14),
	datad => VCC,
	cin => \fq|Add1~27\,
	combout => \fq|Add1~28_combout\,
	cout => \fq|Add1~29\);

-- Location: LCCOMB_X68_Y71_N24
\fq|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter~11_combout\ = (!\fq|Equal0~10_combout\ & \fq|Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|Equal0~10_combout\,
	datac => \fq|Add1~28_combout\,
	combout => \fq|s_counter~11_combout\);

-- Location: FF_X68_Y71_N25
\fq|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(14));

-- Location: LCCOMB_X69_Y71_N0
\fq|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~30_combout\ = (\fq|s_counter\(15) & (!\fq|Add1~29\)) # (!\fq|s_counter\(15) & ((\fq|Add1~29\) # (GND)))
-- \fq|Add1~31\ = CARRY((!\fq|Add1~29\) # (!\fq|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(15),
	datad => VCC,
	cin => \fq|Add1~29\,
	combout => \fq|Add1~30_combout\,
	cout => \fq|Add1~31\);

-- Location: FF_X69_Y71_N1
\fq|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(15));

-- Location: LCCOMB_X69_Y71_N2
\fq|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~32_combout\ = (\fq|s_counter\(16) & (\fq|Add1~31\ $ (GND))) # (!\fq|s_counter\(16) & (!\fq|Add1~31\ & VCC))
-- \fq|Add1~33\ = CARRY((\fq|s_counter\(16) & !\fq|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(16),
	datad => VCC,
	cin => \fq|Add1~31\,
	combout => \fq|Add1~32_combout\,
	cout => \fq|Add1~33\);

-- Location: LCCOMB_X68_Y71_N18
\fq|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter~10_combout\ = (!\fq|Equal0~10_combout\ & \fq|Add1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fq|Equal0~10_combout\,
	datad => \fq|Add1~32_combout\,
	combout => \fq|s_counter~10_combout\);

-- Location: FF_X68_Y71_N19
\fq|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(16));

-- Location: LCCOMB_X69_Y71_N4
\fq|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~34_combout\ = (\fq|s_counter\(17) & (!\fq|Add1~33\)) # (!\fq|s_counter\(17) & ((\fq|Add1~33\) # (GND)))
-- \fq|Add1~35\ = CARRY((!\fq|Add1~33\) # (!\fq|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(17),
	datad => VCC,
	cin => \fq|Add1~33\,
	combout => \fq|Add1~34_combout\,
	cout => \fq|Add1~35\);

-- Location: FF_X69_Y71_N5
\fq|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(17));

-- Location: LCCOMB_X69_Y71_N6
\fq|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~36_combout\ = (\fq|s_counter\(18) & (\fq|Add1~35\ $ (GND))) # (!\fq|s_counter\(18) & (!\fq|Add1~35\ & VCC))
-- \fq|Add1~37\ = CARRY((\fq|s_counter\(18) & !\fq|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(18),
	datad => VCC,
	cin => \fq|Add1~35\,
	combout => \fq|Add1~36_combout\,
	cout => \fq|Add1~37\);

-- Location: LCCOMB_X70_Y71_N2
\fq|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter~3_combout\ = (\fq|Add1~36_combout\ & !\fq|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fq|Add1~36_combout\,
	datad => \fq|Equal0~10_combout\,
	combout => \fq|s_counter~3_combout\);

-- Location: FF_X70_Y71_N3
\fq|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(18));

-- Location: LCCOMB_X69_Y71_N8
\fq|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~38_combout\ = (\fq|s_counter\(19) & (!\fq|Add1~37\)) # (!\fq|s_counter\(19) & ((\fq|Add1~37\) # (GND)))
-- \fq|Add1~39\ = CARRY((!\fq|Add1~37\) # (!\fq|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(19),
	datad => VCC,
	cin => \fq|Add1~37\,
	combout => \fq|Add1~38_combout\,
	cout => \fq|Add1~39\);

-- Location: LCCOMB_X70_Y71_N4
\fq|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter~2_combout\ = (!\fq|Equal0~10_combout\ & \fq|Add1~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fq|Equal0~10_combout\,
	datad => \fq|Add1~38_combout\,
	combout => \fq|s_counter~2_combout\);

-- Location: FF_X70_Y71_N5
\fq|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(19));

-- Location: LCCOMB_X69_Y71_N10
\fq|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~40_combout\ = (\fq|s_counter\(20) & (\fq|Add1~39\ $ (GND))) # (!\fq|s_counter\(20) & (!\fq|Add1~39\ & VCC))
-- \fq|Add1~41\ = CARRY((\fq|s_counter\(20) & !\fq|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(20),
	datad => VCC,
	cin => \fq|Add1~39\,
	combout => \fq|Add1~40_combout\,
	cout => \fq|Add1~41\);

-- Location: LCCOMB_X70_Y71_N12
\fq|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter~1_combout\ = (!\fq|Equal0~10_combout\ & \fq|Add1~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fq|Equal0~10_combout\,
	datad => \fq|Add1~40_combout\,
	combout => \fq|s_counter~1_combout\);

-- Location: FF_X70_Y71_N13
\fq|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(20));

-- Location: LCCOMB_X69_Y71_N12
\fq|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~42_combout\ = (\fq|s_counter\(21) & (!\fq|Add1~41\)) # (!\fq|s_counter\(21) & ((\fq|Add1~41\) # (GND)))
-- \fq|Add1~43\ = CARRY((!\fq|Add1~41\) # (!\fq|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(21),
	datad => VCC,
	cin => \fq|Add1~41\,
	combout => \fq|Add1~42_combout\,
	cout => \fq|Add1~43\);

-- Location: LCCOMB_X70_Y71_N22
\fq|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter~0_combout\ = (!\fq|Equal0~10_combout\ & \fq|Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fq|Equal0~10_combout\,
	datad => \fq|Add1~42_combout\,
	combout => \fq|s_counter~0_combout\);

-- Location: FF_X70_Y71_N23
\fq|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(21));

-- Location: LCCOMB_X69_Y71_N14
\fq|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~44_combout\ = (\fq|s_counter\(22) & (\fq|Add1~43\ $ (GND))) # (!\fq|s_counter\(22) & (!\fq|Add1~43\ & VCC))
-- \fq|Add1~45\ = CARRY((\fq|s_counter\(22) & !\fq|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(22),
	datad => VCC,
	cin => \fq|Add1~43\,
	combout => \fq|Add1~44_combout\,
	cout => \fq|Add1~45\);

-- Location: LCCOMB_X68_Y71_N10
\fq|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter~9_combout\ = (!\fq|Equal0~10_combout\ & \fq|Add1~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|Equal0~10_combout\,
	datac => \fq|Add1~44_combout\,
	combout => \fq|s_counter~9_combout\);

-- Location: FF_X68_Y71_N11
\fq|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(22));

-- Location: LCCOMB_X69_Y71_N16
\fq|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~46_combout\ = (\fq|s_counter\(23) & (!\fq|Add1~45\)) # (!\fq|s_counter\(23) & ((\fq|Add1~45\) # (GND)))
-- \fq|Add1~47\ = CARRY((!\fq|Add1~45\) # (!\fq|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(23),
	datad => VCC,
	cin => \fq|Add1~45\,
	combout => \fq|Add1~46_combout\,
	cout => \fq|Add1~47\);

-- Location: FF_X69_Y71_N17
\fq|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(23));

-- Location: LCCOMB_X69_Y71_N18
\fq|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~48_combout\ = (\fq|s_counter\(24) & (\fq|Add1~47\ $ (GND))) # (!\fq|s_counter\(24) & (!\fq|Add1~47\ & VCC))
-- \fq|Add1~49\ = CARRY((\fq|s_counter\(24) & !\fq|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(24),
	datad => VCC,
	cin => \fq|Add1~47\,
	combout => \fq|Add1~48_combout\,
	cout => \fq|Add1~49\);

-- Location: LCCOMB_X68_Y71_N22
\fq|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter~8_combout\ = (!\fq|Equal0~10_combout\ & \fq|Add1~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fq|Equal0~10_combout\,
	datad => \fq|Add1~48_combout\,
	combout => \fq|s_counter~8_combout\);

-- Location: FF_X68_Y71_N23
\fq|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(24));

-- Location: LCCOMB_X68_Y71_N28
\fq|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Equal0~6_combout\ = (\fq|s_counter\(24) & (\fq|s_counter\(22) & (!\fq|s_counter\(23) & !\fq|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(24),
	datab => \fq|s_counter\(22),
	datac => \fq|s_counter\(23),
	datad => \fq|s_counter\(17),
	combout => \fq|Equal0~6_combout\);

-- Location: LCCOMB_X68_Y71_N4
\fq|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Equal0~7_combout\ = (!\fq|s_counter\(15) & (\fq|s_counter\(14) & (!\fq|s_counter\(10) & \fq|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(15),
	datab => \fq|s_counter\(14),
	datac => \fq|s_counter\(10),
	datad => \fq|s_counter\(16),
	combout => \fq|Equal0~7_combout\);

-- Location: LCCOMB_X69_Y72_N0
\fq|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Equal0~8_combout\ = (\fq|s_counter\(4) & (\fq|s_counter\(3) & (\fq|s_counter\(1) & \fq|s_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(4),
	datab => \fq|s_counter\(3),
	datac => \fq|s_counter\(1),
	datad => \fq|s_counter\(2),
	combout => \fq|Equal0~8_combout\);

-- Location: LCCOMB_X68_Y71_N14
\fq|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Equal0~9_combout\ = (\fq|s_counter\(0) & (\fq|Equal0~6_combout\ & (\fq|Equal0~7_combout\ & \fq|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(0),
	datab => \fq|Equal0~6_combout\,
	datac => \fq|Equal0~7_combout\,
	datad => \fq|Equal0~8_combout\,
	combout => \fq|Equal0~9_combout\);

-- Location: LCCOMB_X69_Y71_N20
\fq|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~50_combout\ = (\fq|s_counter\(25) & (!\fq|Add1~49\)) # (!\fq|s_counter\(25) & ((\fq|Add1~49\) # (GND)))
-- \fq|Add1~51\ = CARRY((!\fq|Add1~49\) # (!\fq|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(25),
	datad => VCC,
	cin => \fq|Add1~49\,
	combout => \fq|Add1~50_combout\,
	cout => \fq|Add1~51\);

-- Location: FF_X69_Y71_N21
\fq|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(25));

-- Location: LCCOMB_X69_Y71_N22
\fq|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~52_combout\ = (\fq|s_counter\(26) & (\fq|Add1~51\ $ (GND))) # (!\fq|s_counter\(26) & (!\fq|Add1~51\ & VCC))
-- \fq|Add1~53\ = CARRY((\fq|s_counter\(26) & !\fq|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(26),
	datad => VCC,
	cin => \fq|Add1~51\,
	combout => \fq|Add1~52_combout\,
	cout => \fq|Add1~53\);

-- Location: FF_X69_Y71_N23
\fq|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(26));

-- Location: LCCOMB_X70_Y71_N30
\fq|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Equal0~1_combout\ = (\fq|s_counter\(20) & (!\fq|s_counter\(25) & (\fq|s_counter\(21) & !\fq|s_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(20),
	datab => \fq|s_counter\(25),
	datac => \fq|s_counter\(21),
	datad => \fq|s_counter\(26),
	combout => \fq|Equal0~1_combout\);

-- Location: LCCOMB_X70_Y71_N28
\fq|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Equal0~2_combout\ = (\fq|s_counter\(12) & (\fq|s_counter\(18) & (\fq|s_counter\(19) & \fq|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(12),
	datab => \fq|s_counter\(18),
	datac => \fq|s_counter\(19),
	datad => \fq|s_counter\(13),
	combout => \fq|Equal0~2_combout\);

-- Location: LCCOMB_X69_Y71_N24
\fq|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~54_combout\ = (\fq|s_counter\(27) & (!\fq|Add1~53\)) # (!\fq|s_counter\(27) & ((\fq|Add1~53\) # (GND)))
-- \fq|Add1~55\ = CARRY((!\fq|Add1~53\) # (!\fq|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(27),
	datad => VCC,
	cin => \fq|Add1~53\,
	combout => \fq|Add1~54_combout\,
	cout => \fq|Add1~55\);

-- Location: FF_X69_Y71_N25
\fq|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|Add1~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(27));

-- Location: LCCOMB_X69_Y71_N26
\fq|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~56_combout\ = (\fq|s_counter\(28) & (\fq|Add1~55\ $ (GND))) # (!\fq|s_counter\(28) & (!\fq|Add1~55\ & VCC))
-- \fq|Add1~57\ = CARRY((\fq|s_counter\(28) & !\fq|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(28),
	datad => VCC,
	cin => \fq|Add1~55\,
	combout => \fq|Add1~56_combout\,
	cout => \fq|Add1~57\);

-- Location: FF_X69_Y71_N27
\fq|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|Add1~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(28));

-- Location: LCCOMB_X69_Y71_N28
\fq|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~58_combout\ = (\fq|s_counter\(29) & (!\fq|Add1~57\)) # (!\fq|s_counter\(29) & ((\fq|Add1~57\) # (GND)))
-- \fq|Add1~59\ = CARRY((!\fq|Add1~57\) # (!\fq|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(29),
	datad => VCC,
	cin => \fq|Add1~57\,
	combout => \fq|Add1~58_combout\,
	cout => \fq|Add1~59\);

-- Location: FF_X69_Y71_N29
\fq|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|Add1~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(29));

-- Location: LCCOMB_X69_Y71_N30
\fq|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Add1~60_combout\ = \fq|s_counter\(30) $ (!\fq|Add1~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(30),
	cin => \fq|Add1~59\,
	combout => \fq|Add1~60_combout\);

-- Location: FF_X69_Y71_N31
\fq|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|Add1~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(30));

-- Location: LCCOMB_X70_Y71_N8
\fq|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Equal0~0_combout\ = (!\fq|s_counter\(28) & (!\fq|s_counter\(30) & (!\fq|s_counter\(29) & !\fq|s_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(28),
	datab => \fq|s_counter\(30),
	datac => \fq|s_counter\(29),
	datad => \fq|s_counter\(27),
	combout => \fq|Equal0~0_combout\);

-- Location: LCCOMB_X70_Y71_N16
\fq|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Equal0~3_combout\ = (!\fq|s_counter\(8) & (\fq|s_counter\(11) & (!\fq|s_counter\(7) & !\fq|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(8),
	datab => \fq|s_counter\(11),
	datac => \fq|s_counter\(7),
	datad => \fq|s_counter\(9),
	combout => \fq|Equal0~3_combout\);

-- Location: LCCOMB_X70_Y71_N14
\fq|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Equal0~4_combout\ = (\fq|Equal0~1_combout\ & (\fq|Equal0~2_combout\ & (\fq|Equal0~0_combout\ & \fq|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|Equal0~1_combout\,
	datab => \fq|Equal0~2_combout\,
	datac => \fq|Equal0~0_combout\,
	datad => \fq|Equal0~3_combout\,
	combout => \fq|Equal0~4_combout\);

-- Location: LCCOMB_X68_Y71_N20
\fq|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Equal0~10_combout\ = (!\fq|s_counter\(6) & (\fq|s_counter\(5) & (\fq|Equal0~9_combout\ & \fq|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(6),
	datab => \fq|s_counter\(5),
	datac => \fq|Equal0~9_combout\,
	datad => \fq|Equal0~4_combout\,
	combout => \fq|Equal0~10_combout\);

-- Location: LCCOMB_X68_Y71_N2
\fq|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter~7_combout\ = (\fq|Add1~12_combout\ & !\fq|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fq|Add1~12_combout\,
	datad => \fq|Equal0~10_combout\,
	combout => \fq|s_counter~7_combout\);

-- Location: FF_X69_Y72_N25
\fq|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \fq|s_counter~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(6));

-- Location: LCCOMB_X68_Y71_N26
\fq|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Equal0~5_combout\ = (\fq|s_counter\(5) & (!\fq|s_counter\(6) & \fq|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(5),
	datac => \fq|s_counter\(6),
	datad => \fq|Equal0~4_combout\,
	combout => \fq|Equal0~5_combout\);

-- Location: LCCOMB_X68_Y71_N16
\fq|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|clkOut~1_combout\ = (\fq|s_counter\(15) & (!\fq|s_counter\(14) & (\fq|s_counter\(10) & !\fq|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(15),
	datab => \fq|s_counter\(14),
	datac => \fq|s_counter\(10),
	datad => \fq|s_counter\(16),
	combout => \fq|clkOut~1_combout\);

-- Location: LCCOMB_X68_Y71_N8
\fq|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|clkOut~0_combout\ = (!\fq|s_counter\(22) & (\fq|s_counter\(23) & (!\fq|s_counter\(24) & \fq|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(22),
	datab => \fq|s_counter\(23),
	datac => \fq|s_counter\(24),
	datad => \fq|s_counter\(17),
	combout => \fq|clkOut~0_combout\);

-- Location: LCCOMB_X68_Y72_N20
\fq|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|clkOut~2_combout\ = (!\fq|s_counter\(1) & (!\fq|s_counter\(3) & (!\fq|s_counter\(4) & !\fq|s_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(1),
	datab => \fq|s_counter\(3),
	datac => \fq|s_counter\(4),
	datad => \fq|s_counter\(2),
	combout => \fq|clkOut~2_combout\);

-- Location: LCCOMB_X68_Y71_N0
\fq|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|clkOut~3_combout\ = (!\fq|s_counter\(0) & (\fq|clkOut~1_combout\ & (\fq|clkOut~0_combout\ & \fq|clkOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(0),
	datab => \fq|clkOut~1_combout\,
	datac => \fq|clkOut~0_combout\,
	datad => \fq|clkOut~2_combout\,
	combout => \fq|clkOut~3_combout\);

-- Location: LCCOMB_X68_Y71_N12
\fq|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|clkOut~4_combout\ = (!\fq|Equal0~10_combout\ & ((\fq|clkOut~q\) # ((\fq|Equal0~5_combout\ & \fq|clkOut~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|Equal0~5_combout\,
	datab => \fq|clkOut~3_combout\,
	datac => \fq|clkOut~q\,
	datad => \fq|Equal0~10_combout\,
	combout => \fq|clkOut~4_combout\);

-- Location: LCCOMB_X68_Y71_N6
\fq|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|clkOut~feeder_combout\ = \fq|clkOut~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|clkOut~4_combout\,
	combout => \fq|clkOut~feeder_combout\);

-- Location: FF_X68_Y71_N7
\fq|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|clkOut~q\);

-- Location: CLKCTRL_G11
\fq|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fq|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fq|clkOut~clkctrl_outclk\);

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

-- Location: LCCOMB_X114_Y69_N12
\cnt|s_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt|s_count~11_combout\ = (!\cnt|s_count\(0) & !\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt|s_count\(0),
	datad => \SW[1]~input_o\,
	combout => \cnt|s_count~11_combout\);

-- Location: FF_X114_Y69_N13
\cnt|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fq|clkOut~clkctrl_outclk\,
	d => \cnt|s_count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|s_count\(0));

-- Location: LCCOMB_X114_Y69_N18
\cnt|s_count[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt|s_count[1]~4_cout\ = CARRY(\cnt|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_count\(0),
	datad => VCC,
	cout => \cnt|s_count[1]~4_cout\);

-- Location: LCCOMB_X114_Y69_N20
\cnt|s_count[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt|s_count[1]~5_combout\ = (\SW[0]~input_o\ & ((\cnt|s_count\(1) & (\cnt|s_count[1]~4_cout\ & VCC)) # (!\cnt|s_count\(1) & (!\cnt|s_count[1]~4_cout\)))) # (!\SW[0]~input_o\ & ((\cnt|s_count\(1) & (!\cnt|s_count[1]~4_cout\)) # (!\cnt|s_count\(1) & 
-- ((\cnt|s_count[1]~4_cout\) # (GND)))))
-- \cnt|s_count[1]~6\ = CARRY((\SW[0]~input_o\ & (!\cnt|s_count\(1) & !\cnt|s_count[1]~4_cout\)) # (!\SW[0]~input_o\ & ((!\cnt|s_count[1]~4_cout\) # (!\cnt|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \cnt|s_count\(1),
	datad => VCC,
	cin => \cnt|s_count[1]~4_cout\,
	combout => \cnt|s_count[1]~5_combout\,
	cout => \cnt|s_count[1]~6\);

-- Location: FF_X114_Y69_N21
\cnt|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fq|clkOut~clkctrl_outclk\,
	d => \cnt|s_count[1]~5_combout\,
	sclr => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|s_count\(1));

-- Location: LCCOMB_X114_Y69_N22
\cnt|s_count[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt|s_count[2]~7_combout\ = ((\cnt|s_count\(2) $ (\SW[0]~input_o\ $ (!\cnt|s_count[1]~6\)))) # (GND)
-- \cnt|s_count[2]~8\ = CARRY((\cnt|s_count\(2) & ((\SW[0]~input_o\) # (!\cnt|s_count[1]~6\))) # (!\cnt|s_count\(2) & (\SW[0]~input_o\ & !\cnt|s_count[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_count\(2),
	datab => \SW[0]~input_o\,
	datad => VCC,
	cin => \cnt|s_count[1]~6\,
	combout => \cnt|s_count[2]~7_combout\,
	cout => \cnt|s_count[2]~8\);

-- Location: FF_X114_Y69_N23
\cnt|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fq|clkOut~clkctrl_outclk\,
	d => \cnt|s_count[2]~7_combout\,
	sclr => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|s_count\(2));

-- Location: LCCOMB_X114_Y69_N24
\cnt|s_count[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt|s_count[3]~9_combout\ = \SW[0]~input_o\ $ (\cnt|s_count[2]~8\ $ (\cnt|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => \cnt|s_count\(3),
	cin => \cnt|s_count[2]~8\,
	combout => \cnt|s_count[3]~9_combout\);

-- Location: FF_X114_Y69_N25
\cnt|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fq|clkOut~clkctrl_outclk\,
	d => \cnt|s_count[3]~9_combout\,
	sclr => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|s_count\(3));

-- Location: LCCOMB_X114_Y69_N26
\dec|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|decOut_n[0]~0_combout\ = (\cnt|s_count\(2) & (!\cnt|s_count\(1) & (\cnt|s_count\(0) $ (!\cnt|s_count\(3))))) # (!\cnt|s_count\(2) & (\cnt|s_count\(0) & (\cnt|s_count\(1) $ (!\cnt|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_count\(1),
	datab => \cnt|s_count\(0),
	datac => \cnt|s_count\(2),
	datad => \cnt|s_count\(3),
	combout => \dec|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X114_Y69_N8
\dec|decOut_n[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|decOut_n[1]~1_combout\ = (\cnt|s_count\(1) & ((\cnt|s_count\(0) & ((\cnt|s_count\(3)))) # (!\cnt|s_count\(0) & (\cnt|s_count\(2))))) # (!\cnt|s_count\(1) & (\cnt|s_count\(2) & (\cnt|s_count\(0) $ (\cnt|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_count\(1),
	datab => \cnt|s_count\(0),
	datac => \cnt|s_count\(2),
	datad => \cnt|s_count\(3),
	combout => \dec|decOut_n[1]~1_combout\);

-- Location: LCCOMB_X114_Y69_N6
\dec|decOut_n[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|decOut_n[2]~2_combout\ = (\cnt|s_count\(2) & (\cnt|s_count\(3) & ((\cnt|s_count\(1)) # (!\cnt|s_count\(0))))) # (!\cnt|s_count\(2) & (\cnt|s_count\(1) & (!\cnt|s_count\(0) & !\cnt|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_count\(1),
	datab => \cnt|s_count\(0),
	datac => \cnt|s_count\(2),
	datad => \cnt|s_count\(3),
	combout => \dec|decOut_n[2]~2_combout\);

-- Location: LCCOMB_X114_Y69_N4
\dec|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|decOut_n[3]~3_combout\ = (\cnt|s_count\(1) & ((\cnt|s_count\(0) & (\cnt|s_count\(2))) # (!\cnt|s_count\(0) & (!\cnt|s_count\(2) & \cnt|s_count\(3))))) # (!\cnt|s_count\(1) & (!\cnt|s_count\(3) & (\cnt|s_count\(0) $ (\cnt|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_count\(1),
	datab => \cnt|s_count\(0),
	datac => \cnt|s_count\(2),
	datad => \cnt|s_count\(3),
	combout => \dec|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X114_Y69_N10
\dec|decOut_n[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|decOut_n[4]~4_combout\ = (\cnt|s_count\(1) & (\cnt|s_count\(0) & ((!\cnt|s_count\(3))))) # (!\cnt|s_count\(1) & ((\cnt|s_count\(2) & ((!\cnt|s_count\(3)))) # (!\cnt|s_count\(2) & (\cnt|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_count\(1),
	datab => \cnt|s_count\(0),
	datac => \cnt|s_count\(2),
	datad => \cnt|s_count\(3),
	combout => \dec|decOut_n[4]~4_combout\);

-- Location: LCCOMB_X114_Y69_N28
\dec|decOut_n[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|decOut_n[5]~5_combout\ = (\cnt|s_count\(1) & (!\cnt|s_count\(3) & ((\cnt|s_count\(0)) # (!\cnt|s_count\(2))))) # (!\cnt|s_count\(1) & (\cnt|s_count\(0) & (\cnt|s_count\(2) $ (!\cnt|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_count\(1),
	datab => \cnt|s_count\(0),
	datac => \cnt|s_count\(2),
	datad => \cnt|s_count\(3),
	combout => \dec|decOut_n[5]~5_combout\);

-- Location: LCCOMB_X114_Y69_N2
\dec|decOut_n[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|decOut_n[6]~6_combout\ = (\cnt|s_count\(0) & (!\cnt|s_count\(3) & (\cnt|s_count\(1) $ (!\cnt|s_count\(2))))) # (!\cnt|s_count\(0) & (!\cnt|s_count\(1) & (\cnt|s_count\(2) $ (!\cnt|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_count\(1),
	datab => \cnt|s_count\(0),
	datac => \cnt|s_count\(2),
	datad => \cnt|s_count\(3),
	combout => \dec|decOut_n[6]~6_combout\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


