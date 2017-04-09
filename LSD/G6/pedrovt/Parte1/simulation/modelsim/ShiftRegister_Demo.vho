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

-- DATE "03/28/2017 17:52:45"

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

ENTITY 	ShiftRegister_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END ShiftRegister_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftRegister_Demo IS
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
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ClkDivider|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[0]~27\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[1]~29\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[2]~31\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[3]~33\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[4]~35\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[5]~37\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[6]~39\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[7]~41\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[8]~43\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[9]~45\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[10]~47\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[11]~49\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[12]~51\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[13]~53\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[14]~55\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[15]~57\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[16]~59\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[17]~61\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[18]~63\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[19]~65\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[20]~67\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[21]~69\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[22]~71\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[23]~73\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan0~4_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan0~5_combout\ : std_logic;
SIGNAL \ClkDivider|clkOut~0_combout\ : std_logic;
SIGNAL \ClkDivider|clkOut~1_combout\ : std_logic;
SIGNAL \ClkDivider|clkOut~2_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan0~0_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan0~1_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[24]~75\ : std_logic;
SIGNAL \ClkDivider|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan0~2_combout\ : std_logic;
SIGNAL \ClkDivider|clkOut~3_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan0~3_combout\ : std_logic;
SIGNAL \ClkDivider|LessThan0~6_combout\ : std_logic;
SIGNAL \ClkDivider|clkOut~4_combout\ : std_logic;
SIGNAL \ClkDivider|clkOut~5_combout\ : std_logic;
SIGNAL \ClkDivider|clkOut~6_combout\ : std_logic;
SIGNAL \ClkDivider|clkOut~7_combout\ : std_logic;
SIGNAL \ClkDivider|clkOut~8_combout\ : std_logic;
SIGNAL \ClkDivider|clkOut~9_combout\ : std_logic;
SIGNAL \ClkDivider|clkOut~feeder_combout\ : std_logic;
SIGNAL \ClkDivider|clkOut~q\ : std_logic;
SIGNAL \ClkDivider|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \ShiftRegister|s_data[1]~feeder_combout\ : std_logic;
SIGNAL \ShiftRegister|s_data[2]~feeder_combout\ : std_logic;
SIGNAL \ShiftRegister|s_data[3]~feeder_combout\ : std_logic;
SIGNAL \ShiftRegister|s_data[4]~feeder_combout\ : std_logic;
SIGNAL \ShiftRegister|s_data[5]~feeder_combout\ : std_logic;
SIGNAL \ShiftRegister|s_data[6]~feeder_combout\ : std_logic;
SIGNAL \ShiftRegister|s_data[7]~feeder_combout\ : std_logic;
SIGNAL \ClkDivider|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ShiftRegister|s_data\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\ClkDivider|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ClkDivider|clkOut~q\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister|s_data\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister|s_data\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister|s_data\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister|s_data\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister|s_data\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister|s_data\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister|s_data\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister|s_data\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

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

-- Location: LCCOMB_X49_Y14_N6
\ClkDivider|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[0]~26_combout\ = \ClkDivider|s_divCounter\(0) $ (VCC)
-- \ClkDivider|s_divCounter[0]~27\ = CARRY(\ClkDivider|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(0),
	datad => VCC,
	combout => \ClkDivider|s_divCounter[0]~26_combout\,
	cout => \ClkDivider|s_divCounter[0]~27\);

-- Location: FF_X49_Y14_N7
\ClkDivider|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[0]~26_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(0));

-- Location: LCCOMB_X49_Y14_N8
\ClkDivider|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[1]~28_combout\ = (\ClkDivider|s_divCounter\(1) & (!\ClkDivider|s_divCounter[0]~27\)) # (!\ClkDivider|s_divCounter\(1) & ((\ClkDivider|s_divCounter[0]~27\) # (GND)))
-- \ClkDivider|s_divCounter[1]~29\ = CARRY((!\ClkDivider|s_divCounter[0]~27\) # (!\ClkDivider|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(1),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[0]~27\,
	combout => \ClkDivider|s_divCounter[1]~28_combout\,
	cout => \ClkDivider|s_divCounter[1]~29\);

-- Location: FF_X49_Y14_N9
\ClkDivider|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[1]~28_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(1));

-- Location: LCCOMB_X49_Y14_N10
\ClkDivider|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[2]~30_combout\ = (\ClkDivider|s_divCounter\(2) & (\ClkDivider|s_divCounter[1]~29\ $ (GND))) # (!\ClkDivider|s_divCounter\(2) & (!\ClkDivider|s_divCounter[1]~29\ & VCC))
-- \ClkDivider|s_divCounter[2]~31\ = CARRY((\ClkDivider|s_divCounter\(2) & !\ClkDivider|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(2),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[1]~29\,
	combout => \ClkDivider|s_divCounter[2]~30_combout\,
	cout => \ClkDivider|s_divCounter[2]~31\);

-- Location: FF_X49_Y14_N11
\ClkDivider|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[2]~30_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(2));

-- Location: LCCOMB_X49_Y14_N12
\ClkDivider|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[3]~32_combout\ = (\ClkDivider|s_divCounter\(3) & (!\ClkDivider|s_divCounter[2]~31\)) # (!\ClkDivider|s_divCounter\(3) & ((\ClkDivider|s_divCounter[2]~31\) # (GND)))
-- \ClkDivider|s_divCounter[3]~33\ = CARRY((!\ClkDivider|s_divCounter[2]~31\) # (!\ClkDivider|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(3),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[2]~31\,
	combout => \ClkDivider|s_divCounter[3]~32_combout\,
	cout => \ClkDivider|s_divCounter[3]~33\);

-- Location: FF_X49_Y14_N13
\ClkDivider|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[3]~32_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(3));

-- Location: LCCOMB_X49_Y14_N14
\ClkDivider|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[4]~34_combout\ = (\ClkDivider|s_divCounter\(4) & (\ClkDivider|s_divCounter[3]~33\ $ (GND))) # (!\ClkDivider|s_divCounter\(4) & (!\ClkDivider|s_divCounter[3]~33\ & VCC))
-- \ClkDivider|s_divCounter[4]~35\ = CARRY((\ClkDivider|s_divCounter\(4) & !\ClkDivider|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(4),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[3]~33\,
	combout => \ClkDivider|s_divCounter[4]~34_combout\,
	cout => \ClkDivider|s_divCounter[4]~35\);

-- Location: FF_X49_Y14_N15
\ClkDivider|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[4]~34_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(4));

-- Location: LCCOMB_X49_Y14_N16
\ClkDivider|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[5]~36_combout\ = (\ClkDivider|s_divCounter\(5) & (!\ClkDivider|s_divCounter[4]~35\)) # (!\ClkDivider|s_divCounter\(5) & ((\ClkDivider|s_divCounter[4]~35\) # (GND)))
-- \ClkDivider|s_divCounter[5]~37\ = CARRY((!\ClkDivider|s_divCounter[4]~35\) # (!\ClkDivider|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(5),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[4]~35\,
	combout => \ClkDivider|s_divCounter[5]~36_combout\,
	cout => \ClkDivider|s_divCounter[5]~37\);

-- Location: FF_X49_Y14_N17
\ClkDivider|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[5]~36_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(5));

-- Location: LCCOMB_X49_Y14_N18
\ClkDivider|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[6]~38_combout\ = (\ClkDivider|s_divCounter\(6) & (\ClkDivider|s_divCounter[5]~37\ $ (GND))) # (!\ClkDivider|s_divCounter\(6) & (!\ClkDivider|s_divCounter[5]~37\ & VCC))
-- \ClkDivider|s_divCounter[6]~39\ = CARRY((\ClkDivider|s_divCounter\(6) & !\ClkDivider|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(6),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[5]~37\,
	combout => \ClkDivider|s_divCounter[6]~38_combout\,
	cout => \ClkDivider|s_divCounter[6]~39\);

-- Location: FF_X49_Y14_N19
\ClkDivider|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[6]~38_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(6));

-- Location: LCCOMB_X49_Y14_N20
\ClkDivider|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[7]~40_combout\ = (\ClkDivider|s_divCounter\(7) & (!\ClkDivider|s_divCounter[6]~39\)) # (!\ClkDivider|s_divCounter\(7) & ((\ClkDivider|s_divCounter[6]~39\) # (GND)))
-- \ClkDivider|s_divCounter[7]~41\ = CARRY((!\ClkDivider|s_divCounter[6]~39\) # (!\ClkDivider|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(7),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[6]~39\,
	combout => \ClkDivider|s_divCounter[7]~40_combout\,
	cout => \ClkDivider|s_divCounter[7]~41\);

-- Location: FF_X49_Y14_N21
\ClkDivider|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[7]~40_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(7));

-- Location: LCCOMB_X49_Y14_N22
\ClkDivider|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[8]~42_combout\ = (\ClkDivider|s_divCounter\(8) & (\ClkDivider|s_divCounter[7]~41\ $ (GND))) # (!\ClkDivider|s_divCounter\(8) & (!\ClkDivider|s_divCounter[7]~41\ & VCC))
-- \ClkDivider|s_divCounter[8]~43\ = CARRY((\ClkDivider|s_divCounter\(8) & !\ClkDivider|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(8),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[7]~41\,
	combout => \ClkDivider|s_divCounter[8]~42_combout\,
	cout => \ClkDivider|s_divCounter[8]~43\);

-- Location: FF_X49_Y14_N23
\ClkDivider|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[8]~42_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(8));

-- Location: LCCOMB_X49_Y14_N24
\ClkDivider|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[9]~44_combout\ = (\ClkDivider|s_divCounter\(9) & (!\ClkDivider|s_divCounter[8]~43\)) # (!\ClkDivider|s_divCounter\(9) & ((\ClkDivider|s_divCounter[8]~43\) # (GND)))
-- \ClkDivider|s_divCounter[9]~45\ = CARRY((!\ClkDivider|s_divCounter[8]~43\) # (!\ClkDivider|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(9),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[8]~43\,
	combout => \ClkDivider|s_divCounter[9]~44_combout\,
	cout => \ClkDivider|s_divCounter[9]~45\);

-- Location: FF_X49_Y14_N25
\ClkDivider|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[9]~44_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(9));

-- Location: LCCOMB_X49_Y14_N26
\ClkDivider|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[10]~46_combout\ = (\ClkDivider|s_divCounter\(10) & (\ClkDivider|s_divCounter[9]~45\ $ (GND))) # (!\ClkDivider|s_divCounter\(10) & (!\ClkDivider|s_divCounter[9]~45\ & VCC))
-- \ClkDivider|s_divCounter[10]~47\ = CARRY((\ClkDivider|s_divCounter\(10) & !\ClkDivider|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(10),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[9]~45\,
	combout => \ClkDivider|s_divCounter[10]~46_combout\,
	cout => \ClkDivider|s_divCounter[10]~47\);

-- Location: FF_X49_Y14_N27
\ClkDivider|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[10]~46_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(10));

-- Location: LCCOMB_X49_Y14_N28
\ClkDivider|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[11]~48_combout\ = (\ClkDivider|s_divCounter\(11) & (!\ClkDivider|s_divCounter[10]~47\)) # (!\ClkDivider|s_divCounter\(11) & ((\ClkDivider|s_divCounter[10]~47\) # (GND)))
-- \ClkDivider|s_divCounter[11]~49\ = CARRY((!\ClkDivider|s_divCounter[10]~47\) # (!\ClkDivider|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(11),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[10]~47\,
	combout => \ClkDivider|s_divCounter[11]~48_combout\,
	cout => \ClkDivider|s_divCounter[11]~49\);

-- Location: FF_X49_Y14_N29
\ClkDivider|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[11]~48_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(11));

-- Location: LCCOMB_X49_Y14_N30
\ClkDivider|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[12]~50_combout\ = (\ClkDivider|s_divCounter\(12) & (\ClkDivider|s_divCounter[11]~49\ $ (GND))) # (!\ClkDivider|s_divCounter\(12) & (!\ClkDivider|s_divCounter[11]~49\ & VCC))
-- \ClkDivider|s_divCounter[12]~51\ = CARRY((\ClkDivider|s_divCounter\(12) & !\ClkDivider|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(12),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[11]~49\,
	combout => \ClkDivider|s_divCounter[12]~50_combout\,
	cout => \ClkDivider|s_divCounter[12]~51\);

-- Location: FF_X49_Y14_N31
\ClkDivider|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[12]~50_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(12));

-- Location: LCCOMB_X49_Y13_N0
\ClkDivider|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[13]~52_combout\ = (\ClkDivider|s_divCounter\(13) & (!\ClkDivider|s_divCounter[12]~51\)) # (!\ClkDivider|s_divCounter\(13) & ((\ClkDivider|s_divCounter[12]~51\) # (GND)))
-- \ClkDivider|s_divCounter[13]~53\ = CARRY((!\ClkDivider|s_divCounter[12]~51\) # (!\ClkDivider|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(13),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[12]~51\,
	combout => \ClkDivider|s_divCounter[13]~52_combout\,
	cout => \ClkDivider|s_divCounter[13]~53\);

-- Location: FF_X50_Y14_N13
\ClkDivider|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ClkDivider|s_divCounter[13]~52_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(13));

-- Location: LCCOMB_X49_Y13_N2
\ClkDivider|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[14]~54_combout\ = (\ClkDivider|s_divCounter\(14) & (\ClkDivider|s_divCounter[13]~53\ $ (GND))) # (!\ClkDivider|s_divCounter\(14) & (!\ClkDivider|s_divCounter[13]~53\ & VCC))
-- \ClkDivider|s_divCounter[14]~55\ = CARRY((\ClkDivider|s_divCounter\(14) & !\ClkDivider|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(14),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[13]~53\,
	combout => \ClkDivider|s_divCounter[14]~54_combout\,
	cout => \ClkDivider|s_divCounter[14]~55\);

-- Location: FF_X49_Y13_N3
\ClkDivider|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[14]~54_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(14));

-- Location: LCCOMB_X49_Y13_N4
\ClkDivider|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[15]~56_combout\ = (\ClkDivider|s_divCounter\(15) & (!\ClkDivider|s_divCounter[14]~55\)) # (!\ClkDivider|s_divCounter\(15) & ((\ClkDivider|s_divCounter[14]~55\) # (GND)))
-- \ClkDivider|s_divCounter[15]~57\ = CARRY((!\ClkDivider|s_divCounter[14]~55\) # (!\ClkDivider|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(15),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[14]~55\,
	combout => \ClkDivider|s_divCounter[15]~56_combout\,
	cout => \ClkDivider|s_divCounter[15]~57\);

-- Location: FF_X49_Y13_N5
\ClkDivider|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[15]~56_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(15));

-- Location: LCCOMB_X49_Y13_N6
\ClkDivider|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[16]~58_combout\ = (\ClkDivider|s_divCounter\(16) & (\ClkDivider|s_divCounter[15]~57\ $ (GND))) # (!\ClkDivider|s_divCounter\(16) & (!\ClkDivider|s_divCounter[15]~57\ & VCC))
-- \ClkDivider|s_divCounter[16]~59\ = CARRY((\ClkDivider|s_divCounter\(16) & !\ClkDivider|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(16),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[15]~57\,
	combout => \ClkDivider|s_divCounter[16]~58_combout\,
	cout => \ClkDivider|s_divCounter[16]~59\);

-- Location: FF_X49_Y13_N7
\ClkDivider|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[16]~58_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(16));

-- Location: LCCOMB_X49_Y13_N8
\ClkDivider|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[17]~60_combout\ = (\ClkDivider|s_divCounter\(17) & (!\ClkDivider|s_divCounter[16]~59\)) # (!\ClkDivider|s_divCounter\(17) & ((\ClkDivider|s_divCounter[16]~59\) # (GND)))
-- \ClkDivider|s_divCounter[17]~61\ = CARRY((!\ClkDivider|s_divCounter[16]~59\) # (!\ClkDivider|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(17),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[16]~59\,
	combout => \ClkDivider|s_divCounter[17]~60_combout\,
	cout => \ClkDivider|s_divCounter[17]~61\);

-- Location: FF_X49_Y13_N9
\ClkDivider|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[17]~60_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(17));

-- Location: LCCOMB_X49_Y13_N10
\ClkDivider|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[18]~62_combout\ = (\ClkDivider|s_divCounter\(18) & (\ClkDivider|s_divCounter[17]~61\ $ (GND))) # (!\ClkDivider|s_divCounter\(18) & (!\ClkDivider|s_divCounter[17]~61\ & VCC))
-- \ClkDivider|s_divCounter[18]~63\ = CARRY((\ClkDivider|s_divCounter\(18) & !\ClkDivider|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(18),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[17]~61\,
	combout => \ClkDivider|s_divCounter[18]~62_combout\,
	cout => \ClkDivider|s_divCounter[18]~63\);

-- Location: FF_X49_Y13_N11
\ClkDivider|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[18]~62_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(18));

-- Location: LCCOMB_X49_Y13_N12
\ClkDivider|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[19]~64_combout\ = (\ClkDivider|s_divCounter\(19) & (!\ClkDivider|s_divCounter[18]~63\)) # (!\ClkDivider|s_divCounter\(19) & ((\ClkDivider|s_divCounter[18]~63\) # (GND)))
-- \ClkDivider|s_divCounter[19]~65\ = CARRY((!\ClkDivider|s_divCounter[18]~63\) # (!\ClkDivider|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(19),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[18]~63\,
	combout => \ClkDivider|s_divCounter[19]~64_combout\,
	cout => \ClkDivider|s_divCounter[19]~65\);

-- Location: FF_X49_Y13_N13
\ClkDivider|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[19]~64_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(19));

-- Location: LCCOMB_X49_Y13_N14
\ClkDivider|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[20]~66_combout\ = (\ClkDivider|s_divCounter\(20) & (\ClkDivider|s_divCounter[19]~65\ $ (GND))) # (!\ClkDivider|s_divCounter\(20) & (!\ClkDivider|s_divCounter[19]~65\ & VCC))
-- \ClkDivider|s_divCounter[20]~67\ = CARRY((\ClkDivider|s_divCounter\(20) & !\ClkDivider|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(20),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[19]~65\,
	combout => \ClkDivider|s_divCounter[20]~66_combout\,
	cout => \ClkDivider|s_divCounter[20]~67\);

-- Location: FF_X49_Y13_N15
\ClkDivider|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[20]~66_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(20));

-- Location: LCCOMB_X49_Y13_N16
\ClkDivider|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[21]~68_combout\ = (\ClkDivider|s_divCounter\(21) & (!\ClkDivider|s_divCounter[20]~67\)) # (!\ClkDivider|s_divCounter\(21) & ((\ClkDivider|s_divCounter[20]~67\) # (GND)))
-- \ClkDivider|s_divCounter[21]~69\ = CARRY((!\ClkDivider|s_divCounter[20]~67\) # (!\ClkDivider|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(21),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[20]~67\,
	combout => \ClkDivider|s_divCounter[21]~68_combout\,
	cout => \ClkDivider|s_divCounter[21]~69\);

-- Location: FF_X49_Y13_N17
\ClkDivider|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[21]~68_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(21));

-- Location: LCCOMB_X49_Y13_N18
\ClkDivider|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[22]~70_combout\ = (\ClkDivider|s_divCounter\(22) & (\ClkDivider|s_divCounter[21]~69\ $ (GND))) # (!\ClkDivider|s_divCounter\(22) & (!\ClkDivider|s_divCounter[21]~69\ & VCC))
-- \ClkDivider|s_divCounter[22]~71\ = CARRY((\ClkDivider|s_divCounter\(22) & !\ClkDivider|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(22),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[21]~69\,
	combout => \ClkDivider|s_divCounter[22]~70_combout\,
	cout => \ClkDivider|s_divCounter[22]~71\);

-- Location: FF_X49_Y13_N19
\ClkDivider|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[22]~70_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(22));

-- Location: LCCOMB_X49_Y13_N20
\ClkDivider|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[23]~72_combout\ = (\ClkDivider|s_divCounter\(23) & (!\ClkDivider|s_divCounter[22]~71\)) # (!\ClkDivider|s_divCounter\(23) & ((\ClkDivider|s_divCounter[22]~71\) # (GND)))
-- \ClkDivider|s_divCounter[23]~73\ = CARRY((!\ClkDivider|s_divCounter[22]~71\) # (!\ClkDivider|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(23),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[22]~71\,
	combout => \ClkDivider|s_divCounter[23]~72_combout\,
	cout => \ClkDivider|s_divCounter[23]~73\);

-- Location: FF_X49_Y13_N21
\ClkDivider|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[23]~72_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(23));

-- Location: LCCOMB_X49_Y13_N22
\ClkDivider|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[24]~74_combout\ = (\ClkDivider|s_divCounter\(24) & (\ClkDivider|s_divCounter[23]~73\ $ (GND))) # (!\ClkDivider|s_divCounter\(24) & (!\ClkDivider|s_divCounter[23]~73\ & VCC))
-- \ClkDivider|s_divCounter[24]~75\ = CARRY((\ClkDivider|s_divCounter\(24) & !\ClkDivider|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(24),
	datad => VCC,
	cin => \ClkDivider|s_divCounter[23]~73\,
	combout => \ClkDivider|s_divCounter[24]~74_combout\,
	cout => \ClkDivider|s_divCounter[24]~75\);

-- Location: FF_X49_Y13_N23
\ClkDivider|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[24]~74_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(24));

-- Location: LCCOMB_X50_Y14_N26
\ClkDivider|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan0~4_combout\ = (!\ClkDivider|s_divCounter\(24) & (!\ClkDivider|s_divCounter\(18) & !\ClkDivider|s_divCounter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(24),
	datac => \ClkDivider|s_divCounter\(18),
	datad => \ClkDivider|s_divCounter\(16),
	combout => \ClkDivider|LessThan0~4_combout\);

-- Location: LCCOMB_X50_Y14_N20
\ClkDivider|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan0~5_combout\ = (((!\ClkDivider|s_divCounter\(14)) # (!\ClkDivider|s_divCounter\(15))) # (!\ClkDivider|s_divCounter\(12))) # (!\ClkDivider|s_divCounter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(13),
	datab => \ClkDivider|s_divCounter\(12),
	datac => \ClkDivider|s_divCounter\(15),
	datad => \ClkDivider|s_divCounter\(14),
	combout => \ClkDivider|LessThan0~5_combout\);

-- Location: LCCOMB_X49_Y14_N0
\ClkDivider|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|clkOut~0_combout\ = (!\ClkDivider|s_divCounter\(8) & (!\ClkDivider|s_divCounter\(7) & (!\ClkDivider|s_divCounter\(10) & !\ClkDivider|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(8),
	datab => \ClkDivider|s_divCounter\(7),
	datac => \ClkDivider|s_divCounter\(10),
	datad => \ClkDivider|s_divCounter\(9),
	combout => \ClkDivider|clkOut~0_combout\);

-- Location: LCCOMB_X49_Y14_N2
\ClkDivider|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|clkOut~1_combout\ = (\ClkDivider|s_divCounter\(3) & (\ClkDivider|s_divCounter\(1) & (\ClkDivider|s_divCounter\(0) & \ClkDivider|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(3),
	datab => \ClkDivider|s_divCounter\(1),
	datac => \ClkDivider|s_divCounter\(0),
	datad => \ClkDivider|s_divCounter\(2),
	combout => \ClkDivider|clkOut~1_combout\);

-- Location: LCCOMB_X49_Y14_N4
\ClkDivider|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|clkOut~2_combout\ = (\ClkDivider|s_divCounter\(5) & (\ClkDivider|s_divCounter\(4) & \ClkDivider|clkOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|s_divCounter\(5),
	datac => \ClkDivider|s_divCounter\(4),
	datad => \ClkDivider|clkOut~1_combout\,
	combout => \ClkDivider|clkOut~2_combout\);

-- Location: LCCOMB_X50_Y14_N24
\ClkDivider|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan0~0_combout\ = (!\ClkDivider|s_divCounter\(24) & (!\ClkDivider|s_divCounter\(11) & (!\ClkDivider|s_divCounter\(18) & !\ClkDivider|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(24),
	datab => \ClkDivider|s_divCounter\(11),
	datac => \ClkDivider|s_divCounter\(18),
	datad => \ClkDivider|s_divCounter\(16),
	combout => \ClkDivider|LessThan0~0_combout\);

-- Location: LCCOMB_X50_Y14_N22
\ClkDivider|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan0~1_combout\ = (\ClkDivider|clkOut~0_combout\ & (\ClkDivider|LessThan0~0_combout\ & ((!\ClkDivider|clkOut~2_combout\) # (!\ClkDivider|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|clkOut~0_combout\,
	datab => \ClkDivider|s_divCounter\(6),
	datac => \ClkDivider|clkOut~2_combout\,
	datad => \ClkDivider|LessThan0~0_combout\,
	combout => \ClkDivider|LessThan0~1_combout\);

-- Location: LCCOMB_X49_Y13_N24
\ClkDivider|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|s_divCounter[25]~76_combout\ = \ClkDivider|s_divCounter[24]~75\ $ (\ClkDivider|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ClkDivider|s_divCounter\(25),
	cin => \ClkDivider|s_divCounter[24]~75\,
	combout => \ClkDivider|s_divCounter[25]~76_combout\);

-- Location: FF_X49_Y13_N25
\ClkDivider|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|s_divCounter[25]~76_combout\,
	sclr => \ClkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|s_divCounter\(25));

-- Location: LCCOMB_X49_Y13_N30
\ClkDivider|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan0~2_combout\ = ((!\ClkDivider|s_divCounter\(18) & !\ClkDivider|s_divCounter\(17))) # (!\ClkDivider|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(18),
	datac => \ClkDivider|s_divCounter\(17),
	datad => \ClkDivider|s_divCounter\(23),
	combout => \ClkDivider|LessThan0~2_combout\);

-- Location: LCCOMB_X49_Y13_N28
\ClkDivider|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|clkOut~3_combout\ = (\ClkDivider|s_divCounter\(19) & (\ClkDivider|s_divCounter\(21) & (\ClkDivider|s_divCounter\(20) & \ClkDivider|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(19),
	datab => \ClkDivider|s_divCounter\(21),
	datac => \ClkDivider|s_divCounter\(20),
	datad => \ClkDivider|s_divCounter\(22),
	combout => \ClkDivider|clkOut~3_combout\);

-- Location: LCCOMB_X50_Y14_N18
\ClkDivider|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan0~3_combout\ = ((!\ClkDivider|s_divCounter\(24) & ((\ClkDivider|LessThan0~2_combout\) # (!\ClkDivider|clkOut~3_combout\)))) # (!\ClkDivider|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(25),
	datab => \ClkDivider|s_divCounter\(24),
	datac => \ClkDivider|LessThan0~2_combout\,
	datad => \ClkDivider|clkOut~3_combout\,
	combout => \ClkDivider|LessThan0~3_combout\);

-- Location: LCCOMB_X50_Y14_N30
\ClkDivider|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|LessThan0~6_combout\ = (!\ClkDivider|LessThan0~1_combout\ & (!\ClkDivider|LessThan0~3_combout\ & ((!\ClkDivider|LessThan0~5_combout\) # (!\ClkDivider|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|LessThan0~4_combout\,
	datab => \ClkDivider|LessThan0~5_combout\,
	datac => \ClkDivider|LessThan0~1_combout\,
	datad => \ClkDivider|LessThan0~3_combout\,
	combout => \ClkDivider|LessThan0~6_combout\);

-- Location: LCCOMB_X50_Y14_N6
\ClkDivider|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|clkOut~4_combout\ = (\ClkDivider|s_divCounter\(13) & (\ClkDivider|s_divCounter\(12) & (!\ClkDivider|s_divCounter\(6) & \ClkDivider|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(13),
	datab => \ClkDivider|s_divCounter\(12),
	datac => \ClkDivider|s_divCounter\(6),
	datad => \ClkDivider|s_divCounter\(14),
	combout => \ClkDivider|clkOut~4_combout\);

-- Location: LCCOMB_X50_Y14_N8
\ClkDivider|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|clkOut~5_combout\ = (!\ClkDivider|s_divCounter\(17) & (\ClkDivider|s_divCounter\(11) & (!\ClkDivider|s_divCounter\(15) & \ClkDivider|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(17),
	datab => \ClkDivider|s_divCounter\(11),
	datac => \ClkDivider|s_divCounter\(15),
	datad => \ClkDivider|s_divCounter\(16),
	combout => \ClkDivider|clkOut~5_combout\);

-- Location: LCCOMB_X49_Y13_N26
\ClkDivider|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|clkOut~6_combout\ = (\ClkDivider|s_divCounter\(18) & (!\ClkDivider|s_divCounter\(23) & (\ClkDivider|s_divCounter\(24) & !\ClkDivider|s_divCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|s_divCounter\(18),
	datab => \ClkDivider|s_divCounter\(23),
	datac => \ClkDivider|s_divCounter\(24),
	datad => \ClkDivider|s_divCounter\(25),
	combout => \ClkDivider|clkOut~6_combout\);

-- Location: LCCOMB_X50_Y14_N16
\ClkDivider|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|clkOut~7_combout\ = (\ClkDivider|clkOut~4_combout\ & (\ClkDivider|clkOut~5_combout\ & \ClkDivider|clkOut~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|clkOut~4_combout\,
	datac => \ClkDivider|clkOut~5_combout\,
	datad => \ClkDivider|clkOut~6_combout\,
	combout => \ClkDivider|clkOut~7_combout\);

-- Location: LCCOMB_X50_Y14_N10
\ClkDivider|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|clkOut~8_combout\ = (\ClkDivider|clkOut~0_combout\ & (\ClkDivider|clkOut~2_combout\ & (\ClkDivider|clkOut~3_combout\ & \ClkDivider|clkOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|clkOut~0_combout\,
	datab => \ClkDivider|clkOut~2_combout\,
	datac => \ClkDivider|clkOut~3_combout\,
	datad => \ClkDivider|clkOut~7_combout\,
	combout => \ClkDivider|clkOut~8_combout\);

-- Location: LCCOMB_X50_Y14_N4
\ClkDivider|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|clkOut~9_combout\ = (!\ClkDivider|LessThan0~6_combout\ & ((\ClkDivider|clkOut~q\) # (\ClkDivider|clkOut~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDivider|LessThan0~6_combout\,
	datac => \ClkDivider|clkOut~q\,
	datad => \ClkDivider|clkOut~8_combout\,
	combout => \ClkDivider|clkOut~9_combout\);

-- Location: LCCOMB_X50_Y14_N28
\ClkDivider|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDivider|clkOut~feeder_combout\ = \ClkDivider|clkOut~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ClkDivider|clkOut~9_combout\,
	combout => \ClkDivider|clkOut~feeder_combout\);

-- Location: FF_X50_Y14_N29
\ClkDivider|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDivider|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDivider|clkOut~q\);

-- Location: CLKCTRL_G15
\ClkDivider|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ClkDivider|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ClkDivider|clkOut~clkctrl_outclk\);

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

-- Location: FF_X88_Y72_N21
\ShiftRegister|s_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivider|clkOut~clkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister|s_data\(0));

-- Location: LCCOMB_X88_Y72_N18
\ShiftRegister|s_data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRegister|s_data[1]~feeder_combout\ = \ShiftRegister|s_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftRegister|s_data\(0),
	combout => \ShiftRegister|s_data[1]~feeder_combout\);

-- Location: FF_X88_Y72_N19
\ShiftRegister|s_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivider|clkOut~clkctrl_outclk\,
	d => \ShiftRegister|s_data[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister|s_data\(1));

-- Location: LCCOMB_X88_Y72_N16
\ShiftRegister|s_data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRegister|s_data[2]~feeder_combout\ = \ShiftRegister|s_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftRegister|s_data\(1),
	combout => \ShiftRegister|s_data[2]~feeder_combout\);

-- Location: FF_X88_Y72_N17
\ShiftRegister|s_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivider|clkOut~clkctrl_outclk\,
	d => \ShiftRegister|s_data[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister|s_data\(2));

-- Location: LCCOMB_X88_Y72_N6
\ShiftRegister|s_data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRegister|s_data[3]~feeder_combout\ = \ShiftRegister|s_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftRegister|s_data\(2),
	combout => \ShiftRegister|s_data[3]~feeder_combout\);

-- Location: FF_X88_Y72_N7
\ShiftRegister|s_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivider|clkOut~clkctrl_outclk\,
	d => \ShiftRegister|s_data[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister|s_data\(3));

-- Location: LCCOMB_X88_Y72_N0
\ShiftRegister|s_data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRegister|s_data[4]~feeder_combout\ = \ShiftRegister|s_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftRegister|s_data\(3),
	combout => \ShiftRegister|s_data[4]~feeder_combout\);

-- Location: FF_X88_Y72_N1
\ShiftRegister|s_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivider|clkOut~clkctrl_outclk\,
	d => \ShiftRegister|s_data[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister|s_data\(4));

-- Location: LCCOMB_X88_Y72_N2
\ShiftRegister|s_data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRegister|s_data[5]~feeder_combout\ = \ShiftRegister|s_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftRegister|s_data\(4),
	combout => \ShiftRegister|s_data[5]~feeder_combout\);

-- Location: FF_X88_Y72_N3
\ShiftRegister|s_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivider|clkOut~clkctrl_outclk\,
	d => \ShiftRegister|s_data[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister|s_data\(5));

-- Location: LCCOMB_X88_Y72_N28
\ShiftRegister|s_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRegister|s_data[6]~feeder_combout\ = \ShiftRegister|s_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftRegister|s_data\(5),
	combout => \ShiftRegister|s_data[6]~feeder_combout\);

-- Location: FF_X88_Y72_N29
\ShiftRegister|s_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivider|clkOut~clkctrl_outclk\,
	d => \ShiftRegister|s_data[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister|s_data\(6));

-- Location: LCCOMB_X88_Y72_N22
\ShiftRegister|s_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRegister|s_data[7]~feeder_combout\ = \ShiftRegister|s_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftRegister|s_data\(6),
	combout => \ShiftRegister|s_data[7]~feeder_combout\);

-- Location: FF_X88_Y72_N23
\ShiftRegister|s_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivider|clkOut~clkctrl_outclk\,
	d => \ShiftRegister|s_data[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister|s_data\(7));

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


