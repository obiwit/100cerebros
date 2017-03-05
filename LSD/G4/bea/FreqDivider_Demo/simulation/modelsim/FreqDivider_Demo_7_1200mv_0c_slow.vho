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

-- DATE "03/05/2017 22:52:06"

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
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic
	);
END FreqDivider_CounterDisplay_Demo;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_LEDG : std_logic;
SIGNAL \fq|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \LEDG~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \fq|s_counter[0]~90_combout\ : std_logic;
SIGNAL \fq|s_counter[1]~30_combout\ : std_logic;
SIGNAL \fq|s_counter[1]~31\ : std_logic;
SIGNAL \fq|s_counter[2]~32_combout\ : std_logic;
SIGNAL \fq|s_counter[2]~33\ : std_logic;
SIGNAL \fq|s_counter[3]~34_combout\ : std_logic;
SIGNAL \fq|s_counter[3]~35\ : std_logic;
SIGNAL \fq|s_counter[4]~36_combout\ : std_logic;
SIGNAL \fq|s_counter[4]~37\ : std_logic;
SIGNAL \fq|s_counter[5]~38_combout\ : std_logic;
SIGNAL \fq|s_counter[5]~39\ : std_logic;
SIGNAL \fq|s_counter[6]~40_combout\ : std_logic;
SIGNAL \fq|s_counter[6]~41\ : std_logic;
SIGNAL \fq|s_counter[7]~42_combout\ : std_logic;
SIGNAL \fq|s_counter[7]~43\ : std_logic;
SIGNAL \fq|s_counter[8]~44_combout\ : std_logic;
SIGNAL \fq|s_counter[8]~45\ : std_logic;
SIGNAL \fq|s_counter[9]~46_combout\ : std_logic;
SIGNAL \fq|s_counter[9]~47\ : std_logic;
SIGNAL \fq|s_counter[10]~48_combout\ : std_logic;
SIGNAL \fq|s_counter[10]~49\ : std_logic;
SIGNAL \fq|s_counter[11]~50_combout\ : std_logic;
SIGNAL \fq|s_counter[11]~51\ : std_logic;
SIGNAL \fq|s_counter[12]~52_combout\ : std_logic;
SIGNAL \fq|s_counter[12]~53\ : std_logic;
SIGNAL \fq|s_counter[13]~54_combout\ : std_logic;
SIGNAL \fq|s_counter[13]~55\ : std_logic;
SIGNAL \fq|s_counter[14]~56_combout\ : std_logic;
SIGNAL \fq|s_counter[14]~57\ : std_logic;
SIGNAL \fq|s_counter[15]~58_combout\ : std_logic;
SIGNAL \fq|Equal0~7_combout\ : std_logic;
SIGNAL \fq|s_counter[15]~59\ : std_logic;
SIGNAL \fq|s_counter[16]~60_combout\ : std_logic;
SIGNAL \fq|s_counter[16]~61\ : std_logic;
SIGNAL \fq|s_counter[17]~62_combout\ : std_logic;
SIGNAL \fq|s_counter[17]~63\ : std_logic;
SIGNAL \fq|s_counter[18]~64_combout\ : std_logic;
SIGNAL \fq|s_counter[18]~65\ : std_logic;
SIGNAL \fq|s_counter[19]~66_combout\ : std_logic;
SIGNAL \fq|s_counter[19]~67\ : std_logic;
SIGNAL \fq|s_counter[20]~68_combout\ : std_logic;
SIGNAL \fq|s_counter[20]~69\ : std_logic;
SIGNAL \fq|s_counter[21]~70_combout\ : std_logic;
SIGNAL \fq|s_counter[21]~71\ : std_logic;
SIGNAL \fq|s_counter[22]~72_combout\ : std_logic;
SIGNAL \fq|s_counter[22]~73\ : std_logic;
SIGNAL \fq|s_counter[23]~74_combout\ : std_logic;
SIGNAL \fq|s_counter[23]~75\ : std_logic;
SIGNAL \fq|s_counter[24]~76_combout\ : std_logic;
SIGNAL \fq|Equal0~8_combout\ : std_logic;
SIGNAL \fq|Equal0~6_combout\ : std_logic;
SIGNAL \fq|Equal0~9_combout\ : std_logic;
SIGNAL \fq|clkOut~1_combout\ : std_logic;
SIGNAL \fq|clkOut~2_combout\ : std_logic;
SIGNAL \fq|clkOut~0_combout\ : std_logic;
SIGNAL \fq|clkOut~3_combout\ : std_logic;
SIGNAL \fq|s_counter[24]~77\ : std_logic;
SIGNAL \fq|s_counter[25]~78_combout\ : std_logic;
SIGNAL \fq|s_counter[25]~79\ : std_logic;
SIGNAL \fq|s_counter[26]~80_combout\ : std_logic;
SIGNAL \fq|s_counter[26]~81\ : std_logic;
SIGNAL \fq|s_counter[27]~82_combout\ : std_logic;
SIGNAL \fq|s_counter[27]~83\ : std_logic;
SIGNAL \fq|s_counter[28]~84_combout\ : std_logic;
SIGNAL \fq|s_counter[28]~85\ : std_logic;
SIGNAL \fq|s_counter[29]~86_combout\ : std_logic;
SIGNAL \fq|s_counter[29]~87\ : std_logic;
SIGNAL \fq|s_counter[30]~88_combout\ : std_logic;
SIGNAL \fq|Equal0~0_combout\ : std_logic;
SIGNAL \fq|Equal0~2_combout\ : std_logic;
SIGNAL \fq|Equal0~1_combout\ : std_logic;
SIGNAL \fq|Equal0~3_combout\ : std_logic;
SIGNAL \fq|Equal0~4_combout\ : std_logic;
SIGNAL \fq|Equal0~5_combout\ : std_logic;
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

\fq|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fq|clkOut~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

-- Location: IOOBUF_X0_Y68_N2
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

-- Location: IOOBUF_X0_Y66_N23
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

-- Location: IOOBUF_X1_Y73_N16
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

-- Location: IOOBUF_X0_Y68_N9
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

-- Location: IOOBUF_X0_Y67_N23
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

-- Location: IOOBUF_X0_Y69_N9
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

-- Location: IOOBUF_X0_Y68_N16
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

-- Location: IOOBUF_X56_Y0_N2
\LEDG~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fq|clkOut~q\,
	devoe => ww_devoe,
	o => \LEDG~output_o\);

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

-- Location: LCCOMB_X59_Y2_N0
\fq|s_counter[0]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[0]~90_combout\ = !\fq|s_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fq|s_counter\(0),
	combout => \fq|s_counter[0]~90_combout\);

-- Location: FF_X59_Y2_N1
\fq|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[0]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(0));

-- Location: LCCOMB_X59_Y2_N2
\fq|s_counter[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[1]~30_combout\ = (\fq|s_counter\(0) & (\fq|s_counter\(1) $ (VCC))) # (!\fq|s_counter\(0) & (\fq|s_counter\(1) & VCC))
-- \fq|s_counter[1]~31\ = CARRY((\fq|s_counter\(0) & \fq|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(0),
	datab => \fq|s_counter\(1),
	datad => VCC,
	combout => \fq|s_counter[1]~30_combout\,
	cout => \fq|s_counter[1]~31\);

-- Location: FF_X59_Y2_N3
\fq|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(1));

-- Location: LCCOMB_X59_Y2_N4
\fq|s_counter[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[2]~32_combout\ = (\fq|s_counter\(2) & (!\fq|s_counter[1]~31\)) # (!\fq|s_counter\(2) & ((\fq|s_counter[1]~31\) # (GND)))
-- \fq|s_counter[2]~33\ = CARRY((!\fq|s_counter[1]~31\) # (!\fq|s_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(2),
	datad => VCC,
	cin => \fq|s_counter[1]~31\,
	combout => \fq|s_counter[2]~32_combout\,
	cout => \fq|s_counter[2]~33\);

-- Location: FF_X59_Y2_N5
\fq|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[2]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(2));

-- Location: LCCOMB_X59_Y2_N6
\fq|s_counter[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[3]~34_combout\ = (\fq|s_counter\(3) & (\fq|s_counter[2]~33\ $ (GND))) # (!\fq|s_counter\(3) & (!\fq|s_counter[2]~33\ & VCC))
-- \fq|s_counter[3]~35\ = CARRY((\fq|s_counter\(3) & !\fq|s_counter[2]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(3),
	datad => VCC,
	cin => \fq|s_counter[2]~33\,
	combout => \fq|s_counter[3]~34_combout\,
	cout => \fq|s_counter[3]~35\);

-- Location: FF_X59_Y2_N7
\fq|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[3]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(3));

-- Location: LCCOMB_X59_Y2_N8
\fq|s_counter[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[4]~36_combout\ = (\fq|s_counter\(4) & (!\fq|s_counter[3]~35\)) # (!\fq|s_counter\(4) & ((\fq|s_counter[3]~35\) # (GND)))
-- \fq|s_counter[4]~37\ = CARRY((!\fq|s_counter[3]~35\) # (!\fq|s_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(4),
	datad => VCC,
	cin => \fq|s_counter[3]~35\,
	combout => \fq|s_counter[4]~36_combout\,
	cout => \fq|s_counter[4]~37\);

-- Location: FF_X59_Y2_N9
\fq|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[4]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(4));

-- Location: LCCOMB_X59_Y2_N10
\fq|s_counter[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[5]~38_combout\ = (\fq|s_counter\(5) & (\fq|s_counter[4]~37\ $ (GND))) # (!\fq|s_counter\(5) & (!\fq|s_counter[4]~37\ & VCC))
-- \fq|s_counter[5]~39\ = CARRY((\fq|s_counter\(5) & !\fq|s_counter[4]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(5),
	datad => VCC,
	cin => \fq|s_counter[4]~37\,
	combout => \fq|s_counter[5]~38_combout\,
	cout => \fq|s_counter[5]~39\);

-- Location: FF_X59_Y2_N11
\fq|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(5));

-- Location: LCCOMB_X59_Y2_N12
\fq|s_counter[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[6]~40_combout\ = (\fq|s_counter\(6) & (!\fq|s_counter[5]~39\)) # (!\fq|s_counter\(6) & ((\fq|s_counter[5]~39\) # (GND)))
-- \fq|s_counter[6]~41\ = CARRY((!\fq|s_counter[5]~39\) # (!\fq|s_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(6),
	datad => VCC,
	cin => \fq|s_counter[5]~39\,
	combout => \fq|s_counter[6]~40_combout\,
	cout => \fq|s_counter[6]~41\);

-- Location: FF_X59_Y2_N13
\fq|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(6));

-- Location: LCCOMB_X59_Y2_N14
\fq|s_counter[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[7]~42_combout\ = (\fq|s_counter\(7) & (\fq|s_counter[6]~41\ $ (GND))) # (!\fq|s_counter\(7) & (!\fq|s_counter[6]~41\ & VCC))
-- \fq|s_counter[7]~43\ = CARRY((\fq|s_counter\(7) & !\fq|s_counter[6]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(7),
	datad => VCC,
	cin => \fq|s_counter[6]~41\,
	combout => \fq|s_counter[7]~42_combout\,
	cout => \fq|s_counter[7]~43\);

-- Location: FF_X59_Y2_N15
\fq|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[7]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(7));

-- Location: LCCOMB_X59_Y2_N16
\fq|s_counter[8]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[8]~44_combout\ = (\fq|s_counter\(8) & (!\fq|s_counter[7]~43\)) # (!\fq|s_counter\(8) & ((\fq|s_counter[7]~43\) # (GND)))
-- \fq|s_counter[8]~45\ = CARRY((!\fq|s_counter[7]~43\) # (!\fq|s_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(8),
	datad => VCC,
	cin => \fq|s_counter[7]~43\,
	combout => \fq|s_counter[8]~44_combout\,
	cout => \fq|s_counter[8]~45\);

-- Location: FF_X59_Y2_N17
\fq|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[8]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(8));

-- Location: LCCOMB_X59_Y2_N18
\fq|s_counter[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[9]~46_combout\ = (\fq|s_counter\(9) & (\fq|s_counter[8]~45\ $ (GND))) # (!\fq|s_counter\(9) & (!\fq|s_counter[8]~45\ & VCC))
-- \fq|s_counter[9]~47\ = CARRY((\fq|s_counter\(9) & !\fq|s_counter[8]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(9),
	datad => VCC,
	cin => \fq|s_counter[8]~45\,
	combout => \fq|s_counter[9]~46_combout\,
	cout => \fq|s_counter[9]~47\);

-- Location: FF_X59_Y2_N19
\fq|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[9]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(9));

-- Location: LCCOMB_X59_Y2_N20
\fq|s_counter[10]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[10]~48_combout\ = (\fq|s_counter\(10) & (!\fq|s_counter[9]~47\)) # (!\fq|s_counter\(10) & ((\fq|s_counter[9]~47\) # (GND)))
-- \fq|s_counter[10]~49\ = CARRY((!\fq|s_counter[9]~47\) # (!\fq|s_counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(10),
	datad => VCC,
	cin => \fq|s_counter[9]~47\,
	combout => \fq|s_counter[10]~48_combout\,
	cout => \fq|s_counter[10]~49\);

-- Location: FF_X59_Y2_N21
\fq|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[10]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(10));

-- Location: LCCOMB_X59_Y2_N22
\fq|s_counter[11]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[11]~50_combout\ = (\fq|s_counter\(11) & (\fq|s_counter[10]~49\ $ (GND))) # (!\fq|s_counter\(11) & (!\fq|s_counter[10]~49\ & VCC))
-- \fq|s_counter[11]~51\ = CARRY((\fq|s_counter\(11) & !\fq|s_counter[10]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(11),
	datad => VCC,
	cin => \fq|s_counter[10]~49\,
	combout => \fq|s_counter[11]~50_combout\,
	cout => \fq|s_counter[11]~51\);

-- Location: FF_X59_Y2_N23
\fq|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[11]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(11));

-- Location: LCCOMB_X59_Y2_N24
\fq|s_counter[12]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[12]~52_combout\ = (\fq|s_counter\(12) & (!\fq|s_counter[11]~51\)) # (!\fq|s_counter\(12) & ((\fq|s_counter[11]~51\) # (GND)))
-- \fq|s_counter[12]~53\ = CARRY((!\fq|s_counter[11]~51\) # (!\fq|s_counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(12),
	datad => VCC,
	cin => \fq|s_counter[11]~51\,
	combout => \fq|s_counter[12]~52_combout\,
	cout => \fq|s_counter[12]~53\);

-- Location: FF_X59_Y2_N25
\fq|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(12));

-- Location: LCCOMB_X59_Y2_N26
\fq|s_counter[13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[13]~54_combout\ = (\fq|s_counter\(13) & (\fq|s_counter[12]~53\ $ (GND))) # (!\fq|s_counter\(13) & (!\fq|s_counter[12]~53\ & VCC))
-- \fq|s_counter[13]~55\ = CARRY((\fq|s_counter\(13) & !\fq|s_counter[12]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(13),
	datad => VCC,
	cin => \fq|s_counter[12]~53\,
	combout => \fq|s_counter[13]~54_combout\,
	cout => \fq|s_counter[13]~55\);

-- Location: FF_X59_Y2_N27
\fq|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[13]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(13));

-- Location: LCCOMB_X59_Y2_N28
\fq|s_counter[14]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[14]~56_combout\ = (\fq|s_counter\(14) & (!\fq|s_counter[13]~55\)) # (!\fq|s_counter\(14) & ((\fq|s_counter[13]~55\) # (GND)))
-- \fq|s_counter[14]~57\ = CARRY((!\fq|s_counter[13]~55\) # (!\fq|s_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(14),
	datad => VCC,
	cin => \fq|s_counter[13]~55\,
	combout => \fq|s_counter[14]~56_combout\,
	cout => \fq|s_counter[14]~57\);

-- Location: FF_X59_Y2_N29
\fq|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[14]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(14));

-- Location: LCCOMB_X59_Y2_N30
\fq|s_counter[15]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[15]~58_combout\ = (\fq|s_counter\(15) & (\fq|s_counter[14]~57\ $ (GND))) # (!\fq|s_counter\(15) & (!\fq|s_counter[14]~57\ & VCC))
-- \fq|s_counter[15]~59\ = CARRY((\fq|s_counter\(15) & !\fq|s_counter[14]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(15),
	datad => VCC,
	cin => \fq|s_counter[14]~57\,
	combout => \fq|s_counter[15]~58_combout\,
	cout => \fq|s_counter[15]~59\);

-- Location: FF_X59_Y2_N31
\fq|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[15]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(15));

-- Location: LCCOMB_X58_Y2_N12
\fq|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Equal0~7_combout\ = (!\fq|s_counter\(10) & (\fq|s_counter\(14) & (!\fq|s_counter\(15) & \fq|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(10),
	datab => \fq|s_counter\(14),
	datac => \fq|s_counter\(15),
	datad => \fq|s_counter\(4),
	combout => \fq|Equal0~7_combout\);

-- Location: LCCOMB_X59_Y1_N0
\fq|s_counter[16]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[16]~60_combout\ = (\fq|s_counter\(16) & (!\fq|s_counter[15]~59\)) # (!\fq|s_counter\(16) & ((\fq|s_counter[15]~59\) # (GND)))
-- \fq|s_counter[16]~61\ = CARRY((!\fq|s_counter[15]~59\) # (!\fq|s_counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(16),
	datad => VCC,
	cin => \fq|s_counter[15]~59\,
	combout => \fq|s_counter[16]~60_combout\,
	cout => \fq|s_counter[16]~61\);

-- Location: FF_X59_Y1_N1
\fq|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[16]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(16));

-- Location: LCCOMB_X59_Y1_N2
\fq|s_counter[17]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[17]~62_combout\ = (\fq|s_counter\(17) & (\fq|s_counter[16]~61\ $ (GND))) # (!\fq|s_counter\(17) & (!\fq|s_counter[16]~61\ & VCC))
-- \fq|s_counter[17]~63\ = CARRY((\fq|s_counter\(17) & !\fq|s_counter[16]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(17),
	datad => VCC,
	cin => \fq|s_counter[16]~61\,
	combout => \fq|s_counter[17]~62_combout\,
	cout => \fq|s_counter[17]~63\);

-- Location: FF_X59_Y1_N3
\fq|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[17]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(17));

-- Location: LCCOMB_X59_Y1_N4
\fq|s_counter[18]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[18]~64_combout\ = (\fq|s_counter\(18) & (!\fq|s_counter[17]~63\)) # (!\fq|s_counter\(18) & ((\fq|s_counter[17]~63\) # (GND)))
-- \fq|s_counter[18]~65\ = CARRY((!\fq|s_counter[17]~63\) # (!\fq|s_counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(18),
	datad => VCC,
	cin => \fq|s_counter[17]~63\,
	combout => \fq|s_counter[18]~64_combout\,
	cout => \fq|s_counter[18]~65\);

-- Location: FF_X59_Y1_N5
\fq|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[18]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(18));

-- Location: LCCOMB_X59_Y1_N6
\fq|s_counter[19]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[19]~66_combout\ = (\fq|s_counter\(19) & (\fq|s_counter[18]~65\ $ (GND))) # (!\fq|s_counter\(19) & (!\fq|s_counter[18]~65\ & VCC))
-- \fq|s_counter[19]~67\ = CARRY((\fq|s_counter\(19) & !\fq|s_counter[18]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(19),
	datad => VCC,
	cin => \fq|s_counter[18]~65\,
	combout => \fq|s_counter[19]~66_combout\,
	cout => \fq|s_counter[19]~67\);

-- Location: FF_X59_Y1_N7
\fq|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[19]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(19));

-- Location: LCCOMB_X59_Y1_N8
\fq|s_counter[20]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[20]~68_combout\ = (\fq|s_counter\(20) & (!\fq|s_counter[19]~67\)) # (!\fq|s_counter\(20) & ((\fq|s_counter[19]~67\) # (GND)))
-- \fq|s_counter[20]~69\ = CARRY((!\fq|s_counter[19]~67\) # (!\fq|s_counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(20),
	datad => VCC,
	cin => \fq|s_counter[19]~67\,
	combout => \fq|s_counter[20]~68_combout\,
	cout => \fq|s_counter[20]~69\);

-- Location: FF_X59_Y1_N9
\fq|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[20]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(20));

-- Location: LCCOMB_X59_Y1_N10
\fq|s_counter[21]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[21]~70_combout\ = (\fq|s_counter\(21) & (\fq|s_counter[20]~69\ $ (GND))) # (!\fq|s_counter\(21) & (!\fq|s_counter[20]~69\ & VCC))
-- \fq|s_counter[21]~71\ = CARRY((\fq|s_counter\(21) & !\fq|s_counter[20]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(21),
	datad => VCC,
	cin => \fq|s_counter[20]~69\,
	combout => \fq|s_counter[21]~70_combout\,
	cout => \fq|s_counter[21]~71\);

-- Location: FF_X59_Y1_N11
\fq|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[21]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(21));

-- Location: LCCOMB_X59_Y1_N12
\fq|s_counter[22]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[22]~72_combout\ = (\fq|s_counter\(22) & (!\fq|s_counter[21]~71\)) # (!\fq|s_counter\(22) & ((\fq|s_counter[21]~71\) # (GND)))
-- \fq|s_counter[22]~73\ = CARRY((!\fq|s_counter[21]~71\) # (!\fq|s_counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(22),
	datad => VCC,
	cin => \fq|s_counter[21]~71\,
	combout => \fq|s_counter[22]~72_combout\,
	cout => \fq|s_counter[22]~73\);

-- Location: FF_X59_Y1_N13
\fq|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[22]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(22));

-- Location: LCCOMB_X59_Y1_N14
\fq|s_counter[23]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[23]~74_combout\ = (\fq|s_counter\(23) & (\fq|s_counter[22]~73\ $ (GND))) # (!\fq|s_counter\(23) & (!\fq|s_counter[22]~73\ & VCC))
-- \fq|s_counter[23]~75\ = CARRY((\fq|s_counter\(23) & !\fq|s_counter[22]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(23),
	datad => VCC,
	cin => \fq|s_counter[22]~73\,
	combout => \fq|s_counter[23]~74_combout\,
	cout => \fq|s_counter[23]~75\);

-- Location: FF_X59_Y1_N15
\fq|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[23]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(23));

-- Location: LCCOMB_X59_Y1_N16
\fq|s_counter[24]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[24]~76_combout\ = (\fq|s_counter\(24) & (!\fq|s_counter[23]~75\)) # (!\fq|s_counter\(24) & ((\fq|s_counter[23]~75\) # (GND)))
-- \fq|s_counter[24]~77\ = CARRY((!\fq|s_counter[23]~75\) # (!\fq|s_counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(24),
	datad => VCC,
	cin => \fq|s_counter[23]~75\,
	combout => \fq|s_counter[24]~76_combout\,
	cout => \fq|s_counter[24]~77\);

-- Location: FF_X59_Y1_N17
\fq|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[24]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(24));

-- Location: LCCOMB_X58_Y2_N26
\fq|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Equal0~8_combout\ = (\fq|s_counter\(22) & (!\fq|s_counter\(23) & (!\fq|s_counter\(17) & \fq|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(22),
	datab => \fq|s_counter\(23),
	datac => \fq|s_counter\(17),
	datad => \fq|s_counter\(16),
	combout => \fq|Equal0~8_combout\);

-- Location: LCCOMB_X58_Y2_N20
\fq|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Equal0~6_combout\ = (\fq|s_counter\(2) & (\fq|s_counter\(1) & (\fq|s_counter\(0) & \fq|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(2),
	datab => \fq|s_counter\(1),
	datac => \fq|s_counter\(0),
	datad => \fq|s_counter\(3),
	combout => \fq|Equal0~6_combout\);

-- Location: LCCOMB_X58_Y2_N6
\fq|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Equal0~9_combout\ = (\fq|Equal0~7_combout\ & (\fq|s_counter\(24) & (\fq|Equal0~8_combout\ & \fq|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|Equal0~7_combout\,
	datab => \fq|s_counter\(24),
	datac => \fq|Equal0~8_combout\,
	datad => \fq|Equal0~6_combout\,
	combout => \fq|Equal0~9_combout\);

-- Location: LCCOMB_X58_Y2_N10
\fq|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|clkOut~1_combout\ = (\fq|s_counter\(10) & (!\fq|s_counter\(4) & (\fq|s_counter\(15) & !\fq|s_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(10),
	datab => \fq|s_counter\(4),
	datac => \fq|s_counter\(15),
	datad => \fq|s_counter\(14),
	combout => \fq|clkOut~1_combout\);

-- Location: LCCOMB_X58_Y2_N4
\fq|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|clkOut~2_combout\ = (!\fq|s_counter\(22) & (\fq|s_counter\(23) & (\fq|s_counter\(17) & !\fq|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(22),
	datab => \fq|s_counter\(23),
	datac => \fq|s_counter\(17),
	datad => \fq|s_counter\(16),
	combout => \fq|clkOut~2_combout\);

-- Location: LCCOMB_X58_Y2_N16
\fq|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|clkOut~0_combout\ = (!\fq|s_counter\(2) & (!\fq|s_counter\(0) & (!\fq|s_counter\(1) & !\fq|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(2),
	datab => \fq|s_counter\(0),
	datac => \fq|s_counter\(1),
	datad => \fq|s_counter\(3),
	combout => \fq|clkOut~0_combout\);

-- Location: LCCOMB_X58_Y2_N30
\fq|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|clkOut~3_combout\ = (\fq|clkOut~1_combout\ & (!\fq|s_counter\(24) & (\fq|clkOut~2_combout\ & \fq|clkOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|clkOut~1_combout\,
	datab => \fq|s_counter\(24),
	datac => \fq|clkOut~2_combout\,
	datad => \fq|clkOut~0_combout\,
	combout => \fq|clkOut~3_combout\);

-- Location: LCCOMB_X59_Y1_N18
\fq|s_counter[25]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[25]~78_combout\ = (\fq|s_counter\(25) & (\fq|s_counter[24]~77\ $ (GND))) # (!\fq|s_counter\(25) & (!\fq|s_counter[24]~77\ & VCC))
-- \fq|s_counter[25]~79\ = CARRY((\fq|s_counter\(25) & !\fq|s_counter[24]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(25),
	datad => VCC,
	cin => \fq|s_counter[24]~77\,
	combout => \fq|s_counter[25]~78_combout\,
	cout => \fq|s_counter[25]~79\);

-- Location: FF_X59_Y1_N19
\fq|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[25]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(25));

-- Location: LCCOMB_X59_Y1_N20
\fq|s_counter[26]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[26]~80_combout\ = (\fq|s_counter\(26) & (!\fq|s_counter[25]~79\)) # (!\fq|s_counter\(26) & ((\fq|s_counter[25]~79\) # (GND)))
-- \fq|s_counter[26]~81\ = CARRY((!\fq|s_counter[25]~79\) # (!\fq|s_counter\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(26),
	datad => VCC,
	cin => \fq|s_counter[25]~79\,
	combout => \fq|s_counter[26]~80_combout\,
	cout => \fq|s_counter[26]~81\);

-- Location: FF_X59_Y1_N21
\fq|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[26]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(26));

-- Location: LCCOMB_X59_Y1_N22
\fq|s_counter[27]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[27]~82_combout\ = (\fq|s_counter\(27) & (\fq|s_counter[26]~81\ $ (GND))) # (!\fq|s_counter\(27) & (!\fq|s_counter[26]~81\ & VCC))
-- \fq|s_counter[27]~83\ = CARRY((\fq|s_counter\(27) & !\fq|s_counter[26]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(27),
	datad => VCC,
	cin => \fq|s_counter[26]~81\,
	combout => \fq|s_counter[27]~82_combout\,
	cout => \fq|s_counter[27]~83\);

-- Location: FF_X59_Y1_N23
\fq|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[27]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(27));

-- Location: LCCOMB_X59_Y1_N24
\fq|s_counter[28]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[28]~84_combout\ = (\fq|s_counter\(28) & (!\fq|s_counter[27]~83\)) # (!\fq|s_counter\(28) & ((\fq|s_counter[27]~83\) # (GND)))
-- \fq|s_counter[28]~85\ = CARRY((!\fq|s_counter[27]~83\) # (!\fq|s_counter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fq|s_counter\(28),
	datad => VCC,
	cin => \fq|s_counter[27]~83\,
	combout => \fq|s_counter[28]~84_combout\,
	cout => \fq|s_counter[28]~85\);

-- Location: FF_X59_Y1_N25
\fq|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[28]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(28));

-- Location: LCCOMB_X59_Y1_N26
\fq|s_counter[29]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[29]~86_combout\ = (\fq|s_counter\(29) & (\fq|s_counter[28]~85\ $ (GND))) # (!\fq|s_counter\(29) & (!\fq|s_counter[28]~85\ & VCC))
-- \fq|s_counter[29]~87\ = CARRY((\fq|s_counter\(29) & !\fq|s_counter[28]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(29),
	datad => VCC,
	cin => \fq|s_counter[28]~85\,
	combout => \fq|s_counter[29]~86_combout\,
	cout => \fq|s_counter[29]~87\);

-- Location: FF_X59_Y1_N27
\fq|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[29]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(29));

-- Location: LCCOMB_X59_Y1_N28
\fq|s_counter[30]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|s_counter[30]~88_combout\ = \fq|s_counter[29]~87\ $ (\fq|s_counter\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \fq|s_counter\(30),
	cin => \fq|s_counter[29]~87\,
	combout => \fq|s_counter[30]~88_combout\);

-- Location: FF_X59_Y1_N29
\fq|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fq|s_counter[30]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fq|s_counter\(30));

-- Location: LCCOMB_X58_Y2_N22
\fq|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Equal0~0_combout\ = (\fq|s_counter\(5) & (!\fq|s_counter\(7) & (!\fq|s_counter\(6) & !\fq|s_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(5),
	datab => \fq|s_counter\(7),
	datac => \fq|s_counter\(6),
	datad => \fq|s_counter\(8),
	combout => \fq|Equal0~0_combout\);

-- Location: LCCOMB_X58_Y1_N0
\fq|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Equal0~2_combout\ = (\fq|s_counter\(18) & (\fq|s_counter\(21) & (\fq|s_counter\(20) & \fq|s_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(18),
	datab => \fq|s_counter\(21),
	datac => \fq|s_counter\(20),
	datad => \fq|s_counter\(19),
	combout => \fq|Equal0~2_combout\);

-- Location: LCCOMB_X58_Y2_N14
\fq|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Equal0~1_combout\ = (\fq|s_counter\(11) & (\fq|s_counter\(12) & (\fq|s_counter\(13) & !\fq|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(11),
	datab => \fq|s_counter\(12),
	datac => \fq|s_counter\(13),
	datad => \fq|s_counter\(9),
	combout => \fq|Equal0~1_combout\);

-- Location: LCCOMB_X59_Y1_N30
\fq|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Equal0~3_combout\ = (!\fq|s_counter\(25) & (!\fq|s_counter\(26) & (!\fq|s_counter\(27) & !\fq|s_counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(25),
	datab => \fq|s_counter\(26),
	datac => \fq|s_counter\(27),
	datad => \fq|s_counter\(28),
	combout => \fq|Equal0~3_combout\);

-- Location: LCCOMB_X58_Y2_N18
\fq|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Equal0~4_combout\ = (\fq|Equal0~0_combout\ & (\fq|Equal0~2_combout\ & (\fq|Equal0~1_combout\ & \fq|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|Equal0~0_combout\,
	datab => \fq|Equal0~2_combout\,
	datac => \fq|Equal0~1_combout\,
	datad => \fq|Equal0~3_combout\,
	combout => \fq|Equal0~4_combout\);

-- Location: LCCOMB_X58_Y2_N28
\fq|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|Equal0~5_combout\ = (!\fq|s_counter\(30) & (!\fq|s_counter\(29) & \fq|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|s_counter\(30),
	datac => \fq|s_counter\(29),
	datad => \fq|Equal0~4_combout\,
	combout => \fq|Equal0~5_combout\);

-- Location: LCCOMB_X58_Y2_N24
\fq|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|clkOut~4_combout\ = (\fq|Equal0~5_combout\ & (!\fq|Equal0~9_combout\ & ((\fq|clkOut~q\) # (\fq|clkOut~3_combout\)))) # (!\fq|Equal0~5_combout\ & (((\fq|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fq|Equal0~9_combout\,
	datab => \fq|clkOut~q\,
	datac => \fq|clkOut~3_combout\,
	datad => \fq|Equal0~5_combout\,
	combout => \fq|clkOut~4_combout\);

-- Location: LCCOMB_X58_Y2_N8
\fq|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fq|clkOut~feeder_combout\ = \fq|clkOut~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fq|clkOut~4_combout\,
	combout => \fq|clkOut~feeder_combout\);

-- Location: FF_X58_Y2_N9
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

-- Location: CLKCTRL_G18
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

-- Location: IOIBUF_X1_Y73_N22
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X1_Y73_N8
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X1_Y69_N12
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

-- Location: FF_X1_Y69_N13
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

-- Location: LCCOMB_X1_Y69_N18
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

-- Location: LCCOMB_X1_Y69_N20
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

-- Location: FF_X1_Y69_N21
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

-- Location: LCCOMB_X1_Y69_N22
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

-- Location: FF_X1_Y69_N23
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

-- Location: LCCOMB_X1_Y69_N24
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

-- Location: FF_X1_Y69_N25
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

-- Location: LCCOMB_X1_Y69_N10
\dec|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|decOut_n[0]~0_combout\ = (\cnt|s_count\(2) & (!\cnt|s_count\(1) & (\cnt|s_count\(0) $ (!\cnt|s_count\(3))))) # (!\cnt|s_count\(2) & (\cnt|s_count\(0) & (\cnt|s_count\(1) $ (!\cnt|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_count\(1),
	datab => \cnt|s_count\(2),
	datac => \cnt|s_count\(0),
	datad => \cnt|s_count\(3),
	combout => \dec|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X1_Y69_N4
\dec|decOut_n[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|decOut_n[1]~1_combout\ = (\cnt|s_count\(1) & ((\cnt|s_count\(0) & ((\cnt|s_count\(3)))) # (!\cnt|s_count\(0) & ((\cnt|s_count\(2)) # (!\cnt|s_count\(3)))))) # (!\cnt|s_count\(1) & (\cnt|s_count\(2) & (\cnt|s_count\(0) $ (\cnt|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_count\(1),
	datab => \cnt|s_count\(2),
	datac => \cnt|s_count\(0),
	datad => \cnt|s_count\(3),
	combout => \dec|decOut_n[1]~1_combout\);

-- Location: LCCOMB_X1_Y69_N2
\dec|decOut_n[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|decOut_n[2]~2_combout\ = (\cnt|s_count\(2) & (\cnt|s_count\(3) & ((\cnt|s_count\(1)) # (!\cnt|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_count\(1),
	datab => \cnt|s_count\(2),
	datac => \cnt|s_count\(0),
	datad => \cnt|s_count\(3),
	combout => \dec|decOut_n[2]~2_combout\);

-- Location: LCCOMB_X1_Y69_N28
\dec|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|decOut_n[3]~3_combout\ = (\cnt|s_count\(1) & ((\cnt|s_count\(2) & (\cnt|s_count\(0))) # (!\cnt|s_count\(2) & (!\cnt|s_count\(0) & \cnt|s_count\(3))))) # (!\cnt|s_count\(1) & (!\cnt|s_count\(3) & (\cnt|s_count\(2) $ (\cnt|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_count\(1),
	datab => \cnt|s_count\(2),
	datac => \cnt|s_count\(0),
	datad => \cnt|s_count\(3),
	combout => \dec|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X1_Y69_N6
\dec|decOut_n[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|decOut_n[4]~4_combout\ = (\cnt|s_count\(1) & (!\cnt|s_count\(3) & ((\cnt|s_count\(0)) # (!\cnt|s_count\(2))))) # (!\cnt|s_count\(1) & ((\cnt|s_count\(2) & ((!\cnt|s_count\(3)))) # (!\cnt|s_count\(2) & (\cnt|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_count\(1),
	datab => \cnt|s_count\(2),
	datac => \cnt|s_count\(0),
	datad => \cnt|s_count\(3),
	combout => \dec|decOut_n[4]~4_combout\);

-- Location: LCCOMB_X1_Y69_N16
\dec|decOut_n[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|decOut_n[5]~5_combout\ = (\cnt|s_count\(0) & (!\cnt|s_count\(3) & ((\cnt|s_count\(1)) # (!\cnt|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_count\(1),
	datab => \cnt|s_count\(2),
	datac => \cnt|s_count\(0),
	datad => \cnt|s_count\(3),
	combout => \dec|decOut_n[5]~5_combout\);

-- Location: LCCOMB_X1_Y69_N30
\dec|decOut_n[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|decOut_n[6]~6_combout\ = (\cnt|s_count\(0) & (!\cnt|s_count\(3) & (\cnt|s_count\(1) $ (!\cnt|s_count\(2))))) # (!\cnt|s_count\(0) & (!\cnt|s_count\(1) & (\cnt|s_count\(2) $ (!\cnt|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_count\(1),
	datab => \cnt|s_count\(2),
	datac => \cnt|s_count\(0),
	datad => \cnt|s_count\(3),
	combout => \dec|decOut_n[6]~6_combout\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_LEDG <= \LEDG~output_o\;
END structure;


