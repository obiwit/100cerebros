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

-- DATE "03/27/2017 00:14:14"

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

ENTITY 	TimerTest IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(2 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(0 DOWNTO 0)
	);
END TimerTest;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TimerTest IS
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
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \timerN|s_count[0]~32_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \timerN|s_count[0]~38_combout\ : std_logic;
SIGNAL \timerN|s_count[0]~39_combout\ : std_logic;
SIGNAL \timerN|s_count[0]~40_combout\ : std_logic;
SIGNAL \timerN|s_count[0]~33\ : std_logic;
SIGNAL \timerN|s_count[1]~34_combout\ : std_logic;
SIGNAL \timerN|s_count[1]~35\ : std_logic;
SIGNAL \timerN|s_count[2]~36_combout\ : std_logic;
SIGNAL \timerN|s_count[2]~37\ : std_logic;
SIGNAL \timerN|s_count[3]~41_combout\ : std_logic;
SIGNAL \timerN|s_count[3]~42\ : std_logic;
SIGNAL \timerN|s_count[4]~43_combout\ : std_logic;
SIGNAL \timerN|s_count[4]~44\ : std_logic;
SIGNAL \timerN|s_count[5]~45_combout\ : std_logic;
SIGNAL \timerN|s_count[5]~46\ : std_logic;
SIGNAL \timerN|s_count[6]~47_combout\ : std_logic;
SIGNAL \timerN|s_count[6]~48\ : std_logic;
SIGNAL \timerN|s_count[7]~49_combout\ : std_logic;
SIGNAL \timerN|s_count[7]~50\ : std_logic;
SIGNAL \timerN|s_count[8]~51_combout\ : std_logic;
SIGNAL \timerN|s_count[8]~52\ : std_logic;
SIGNAL \timerN|s_count[9]~53_combout\ : std_logic;
SIGNAL \timerN|s_count[9]~54\ : std_logic;
SIGNAL \timerN|s_count[10]~55_combout\ : std_logic;
SIGNAL \timerN|s_count[10]~56\ : std_logic;
SIGNAL \timerN|s_count[11]~57_combout\ : std_logic;
SIGNAL \timerN|s_count[11]~58\ : std_logic;
SIGNAL \timerN|s_count[12]~59_combout\ : std_logic;
SIGNAL \timerN|s_count[12]~60\ : std_logic;
SIGNAL \timerN|s_count[13]~61_combout\ : std_logic;
SIGNAL \timerN|s_count[13]~62\ : std_logic;
SIGNAL \timerN|s_count[14]~63_combout\ : std_logic;
SIGNAL \timerN|s_count[14]~64\ : std_logic;
SIGNAL \timerN|s_count[15]~65_combout\ : std_logic;
SIGNAL \timerN|s_count[15]~66\ : std_logic;
SIGNAL \timerN|s_count[16]~67_combout\ : std_logic;
SIGNAL \timerN|s_count[16]~68\ : std_logic;
SIGNAL \timerN|s_count[17]~69_combout\ : std_logic;
SIGNAL \timerN|s_count[17]~70\ : std_logic;
SIGNAL \timerN|s_count[18]~71_combout\ : std_logic;
SIGNAL \timerN|s_count[18]~72\ : std_logic;
SIGNAL \timerN|s_count[19]~73_combout\ : std_logic;
SIGNAL \timerN|s_count[19]~74\ : std_logic;
SIGNAL \timerN|s_count[20]~75_combout\ : std_logic;
SIGNAL \timerN|s_count[20]~76\ : std_logic;
SIGNAL \timerN|s_count[21]~77_combout\ : std_logic;
SIGNAL \timerN|s_count[21]~78\ : std_logic;
SIGNAL \timerN|s_count[22]~79_combout\ : std_logic;
SIGNAL \timerN|s_count[22]~80\ : std_logic;
SIGNAL \timerN|s_count[23]~81_combout\ : std_logic;
SIGNAL \timerN|s_count[23]~82\ : std_logic;
SIGNAL \timerN|s_count[24]~83_combout\ : std_logic;
SIGNAL \timerN|Equal0~6_combout\ : std_logic;
SIGNAL \timerN|Equal0~5_combout\ : std_logic;
SIGNAL \timerN|s_count[24]~84\ : std_logic;
SIGNAL \timerN|s_count[25]~85_combout\ : std_logic;
SIGNAL \timerN|s_count[25]~86\ : std_logic;
SIGNAL \timerN|s_count[26]~87_combout\ : std_logic;
SIGNAL \timerN|s_count[26]~88\ : std_logic;
SIGNAL \timerN|s_count[27]~89_combout\ : std_logic;
SIGNAL \timerN|s_count[27]~90\ : std_logic;
SIGNAL \timerN|s_count[28]~91_combout\ : std_logic;
SIGNAL \timerN|s_count[28]~92\ : std_logic;
SIGNAL \timerN|s_count[29]~93_combout\ : std_logic;
SIGNAL \timerN|s_count[29]~94\ : std_logic;
SIGNAL \timerN|s_count[30]~95_combout\ : std_logic;
SIGNAL \timerN|s_count[30]~96\ : std_logic;
SIGNAL \timerN|s_count[31]~97_combout\ : std_logic;
SIGNAL \timerN|Equal0~7_combout\ : std_logic;
SIGNAL \timerN|Equal0~8_combout\ : std_logic;
SIGNAL \timerN|Equal0~1_combout\ : std_logic;
SIGNAL \timerN|Equal0~2_combout\ : std_logic;
SIGNAL \timerN|Equal0~3_combout\ : std_logic;
SIGNAL \timerN|Equal0~0_combout\ : std_logic;
SIGNAL \timerN|Equal0~4_combout\ : std_logic;
SIGNAL \timerN|Equal0~9_combout\ : std_logic;
SIGNAL \timerN|timerOut~0_combout\ : std_logic;
SIGNAL \timerN|timerOut~1_combout\ : std_logic;
SIGNAL \timerN|timerOut~q\ : std_logic;
SIGNAL \timerN|s_count\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timerN|timerOut~q\,
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

-- Location: LCCOMB_X92_Y66_N0
\timerN|s_count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[0]~32_combout\ = \timerN|s_count\(0) $ (VCC)
-- \timerN|s_count[0]~33\ = CARRY(\timerN|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timerN|s_count\(0),
	datad => VCC,
	combout => \timerN|s_count[0]~32_combout\,
	cout => \timerN|s_count[0]~33\);

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

-- Location: LCCOMB_X91_Y65_N26
\timerN|s_count[0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[0]~38_combout\ = (\SW[0]~input_o\) # ((\timerN|Equal0~9_combout\ & ((\timerN|s_count\(2)) # (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \timerN|Equal0~9_combout\,
	datac => \SW[0]~input_o\,
	datad => \timerN|s_count\(2),
	combout => \timerN|s_count[0]~38_combout\);

-- Location: LCCOMB_X91_Y65_N20
\timerN|s_count[0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[0]~39_combout\ = (!\SW[2]~input_o\ & (!\timerN|s_count\(2) & \timerN|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \timerN|s_count\(2),
	datad => \timerN|Equal0~9_combout\,
	combout => \timerN|s_count[0]~39_combout\);

-- Location: LCCOMB_X91_Y65_N2
\timerN|s_count[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[0]~40_combout\ = (\SW[0]~input_o\) # ((\SW[1]~input_o\ & !\timerN|s_count[0]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \timerN|s_count[0]~39_combout\,
	combout => \timerN|s_count[0]~40_combout\);

-- Location: FF_X92_Y66_N1
\timerN|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[0]~32_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(0));

-- Location: LCCOMB_X92_Y66_N2
\timerN|s_count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[1]~34_combout\ = (\timerN|s_count\(1) & (!\timerN|s_count[0]~33\)) # (!\timerN|s_count\(1) & ((\timerN|s_count[0]~33\) # (GND)))
-- \timerN|s_count[1]~35\ = CARRY((!\timerN|s_count[0]~33\) # (!\timerN|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerN|s_count\(1),
	datad => VCC,
	cin => \timerN|s_count[0]~33\,
	combout => \timerN|s_count[1]~34_combout\,
	cout => \timerN|s_count[1]~35\);

-- Location: FF_X92_Y66_N3
\timerN|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[1]~34_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(1));

-- Location: LCCOMB_X92_Y66_N4
\timerN|s_count[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[2]~36_combout\ = (\timerN|s_count\(2) & (\timerN|s_count[1]~35\ $ (GND))) # (!\timerN|s_count\(2) & (!\timerN|s_count[1]~35\ & VCC))
-- \timerN|s_count[2]~37\ = CARRY((\timerN|s_count\(2) & !\timerN|s_count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerN|s_count\(2),
	datad => VCC,
	cin => \timerN|s_count[1]~35\,
	combout => \timerN|s_count[2]~36_combout\,
	cout => \timerN|s_count[2]~37\);

-- Location: FF_X92_Y66_N5
\timerN|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[2]~36_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(2));

-- Location: LCCOMB_X92_Y66_N6
\timerN|s_count[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[3]~41_combout\ = (\timerN|s_count\(3) & (!\timerN|s_count[2]~37\)) # (!\timerN|s_count\(3) & ((\timerN|s_count[2]~37\) # (GND)))
-- \timerN|s_count[3]~42\ = CARRY((!\timerN|s_count[2]~37\) # (!\timerN|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerN|s_count\(3),
	datad => VCC,
	cin => \timerN|s_count[2]~37\,
	combout => \timerN|s_count[3]~41_combout\,
	cout => \timerN|s_count[3]~42\);

-- Location: FF_X92_Y66_N7
\timerN|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[3]~41_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(3));

-- Location: LCCOMB_X92_Y66_N8
\timerN|s_count[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[4]~43_combout\ = (\timerN|s_count\(4) & (\timerN|s_count[3]~42\ $ (GND))) # (!\timerN|s_count\(4) & (!\timerN|s_count[3]~42\ & VCC))
-- \timerN|s_count[4]~44\ = CARRY((\timerN|s_count\(4) & !\timerN|s_count[3]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerN|s_count\(4),
	datad => VCC,
	cin => \timerN|s_count[3]~42\,
	combout => \timerN|s_count[4]~43_combout\,
	cout => \timerN|s_count[4]~44\);

-- Location: FF_X92_Y66_N9
\timerN|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[4]~43_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(4));

-- Location: LCCOMB_X92_Y66_N10
\timerN|s_count[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[5]~45_combout\ = (\timerN|s_count\(5) & (!\timerN|s_count[4]~44\)) # (!\timerN|s_count\(5) & ((\timerN|s_count[4]~44\) # (GND)))
-- \timerN|s_count[5]~46\ = CARRY((!\timerN|s_count[4]~44\) # (!\timerN|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerN|s_count\(5),
	datad => VCC,
	cin => \timerN|s_count[4]~44\,
	combout => \timerN|s_count[5]~45_combout\,
	cout => \timerN|s_count[5]~46\);

-- Location: FF_X92_Y66_N11
\timerN|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[5]~45_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(5));

-- Location: LCCOMB_X92_Y66_N12
\timerN|s_count[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[6]~47_combout\ = (\timerN|s_count\(6) & (\timerN|s_count[5]~46\ $ (GND))) # (!\timerN|s_count\(6) & (!\timerN|s_count[5]~46\ & VCC))
-- \timerN|s_count[6]~48\ = CARRY((\timerN|s_count\(6) & !\timerN|s_count[5]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerN|s_count\(6),
	datad => VCC,
	cin => \timerN|s_count[5]~46\,
	combout => \timerN|s_count[6]~47_combout\,
	cout => \timerN|s_count[6]~48\);

-- Location: FF_X92_Y66_N13
\timerN|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[6]~47_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(6));

-- Location: LCCOMB_X92_Y66_N14
\timerN|s_count[7]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[7]~49_combout\ = (\timerN|s_count\(7) & (!\timerN|s_count[6]~48\)) # (!\timerN|s_count\(7) & ((\timerN|s_count[6]~48\) # (GND)))
-- \timerN|s_count[7]~50\ = CARRY((!\timerN|s_count[6]~48\) # (!\timerN|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerN|s_count\(7),
	datad => VCC,
	cin => \timerN|s_count[6]~48\,
	combout => \timerN|s_count[7]~49_combout\,
	cout => \timerN|s_count[7]~50\);

-- Location: FF_X92_Y66_N15
\timerN|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[7]~49_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(7));

-- Location: LCCOMB_X92_Y66_N16
\timerN|s_count[8]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[8]~51_combout\ = (\timerN|s_count\(8) & (\timerN|s_count[7]~50\ $ (GND))) # (!\timerN|s_count\(8) & (!\timerN|s_count[7]~50\ & VCC))
-- \timerN|s_count[8]~52\ = CARRY((\timerN|s_count\(8) & !\timerN|s_count[7]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerN|s_count\(8),
	datad => VCC,
	cin => \timerN|s_count[7]~50\,
	combout => \timerN|s_count[8]~51_combout\,
	cout => \timerN|s_count[8]~52\);

-- Location: FF_X92_Y66_N17
\timerN|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[8]~51_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(8));

-- Location: LCCOMB_X92_Y66_N18
\timerN|s_count[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[9]~53_combout\ = (\timerN|s_count\(9) & (!\timerN|s_count[8]~52\)) # (!\timerN|s_count\(9) & ((\timerN|s_count[8]~52\) # (GND)))
-- \timerN|s_count[9]~54\ = CARRY((!\timerN|s_count[8]~52\) # (!\timerN|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerN|s_count\(9),
	datad => VCC,
	cin => \timerN|s_count[8]~52\,
	combout => \timerN|s_count[9]~53_combout\,
	cout => \timerN|s_count[9]~54\);

-- Location: FF_X92_Y66_N19
\timerN|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[9]~53_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(9));

-- Location: LCCOMB_X92_Y66_N20
\timerN|s_count[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[10]~55_combout\ = (\timerN|s_count\(10) & (\timerN|s_count[9]~54\ $ (GND))) # (!\timerN|s_count\(10) & (!\timerN|s_count[9]~54\ & VCC))
-- \timerN|s_count[10]~56\ = CARRY((\timerN|s_count\(10) & !\timerN|s_count[9]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerN|s_count\(10),
	datad => VCC,
	cin => \timerN|s_count[9]~54\,
	combout => \timerN|s_count[10]~55_combout\,
	cout => \timerN|s_count[10]~56\);

-- Location: FF_X91_Y65_N5
\timerN|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \timerN|s_count[10]~55_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	sload => VCC,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(10));

-- Location: LCCOMB_X92_Y66_N22
\timerN|s_count[11]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[11]~57_combout\ = (\timerN|s_count\(11) & (!\timerN|s_count[10]~56\)) # (!\timerN|s_count\(11) & ((\timerN|s_count[10]~56\) # (GND)))
-- \timerN|s_count[11]~58\ = CARRY((!\timerN|s_count[10]~56\) # (!\timerN|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerN|s_count\(11),
	datad => VCC,
	cin => \timerN|s_count[10]~56\,
	combout => \timerN|s_count[11]~57_combout\,
	cout => \timerN|s_count[11]~58\);

-- Location: FF_X90_Y65_N1
\timerN|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \timerN|s_count[11]~57_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	sload => VCC,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(11));

-- Location: LCCOMB_X92_Y66_N24
\timerN|s_count[12]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[12]~59_combout\ = (\timerN|s_count\(12) & (\timerN|s_count[11]~58\ $ (GND))) # (!\timerN|s_count\(12) & (!\timerN|s_count[11]~58\ & VCC))
-- \timerN|s_count[12]~60\ = CARRY((\timerN|s_count\(12) & !\timerN|s_count[11]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerN|s_count\(12),
	datad => VCC,
	cin => \timerN|s_count[11]~58\,
	combout => \timerN|s_count[12]~59_combout\,
	cout => \timerN|s_count[12]~60\);

-- Location: FF_X90_Y65_N7
\timerN|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \timerN|s_count[12]~59_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	sload => VCC,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(12));

-- Location: LCCOMB_X92_Y66_N26
\timerN|s_count[13]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[13]~61_combout\ = (\timerN|s_count\(13) & (!\timerN|s_count[12]~60\)) # (!\timerN|s_count\(13) & ((\timerN|s_count[12]~60\) # (GND)))
-- \timerN|s_count[13]~62\ = CARRY((!\timerN|s_count[12]~60\) # (!\timerN|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerN|s_count\(13),
	datad => VCC,
	cin => \timerN|s_count[12]~60\,
	combout => \timerN|s_count[13]~61_combout\,
	cout => \timerN|s_count[13]~62\);

-- Location: FF_X91_Y65_N15
\timerN|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \timerN|s_count[13]~61_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	sload => VCC,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(13));

-- Location: LCCOMB_X92_Y66_N28
\timerN|s_count[14]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[14]~63_combout\ = (\timerN|s_count\(14) & (\timerN|s_count[13]~62\ $ (GND))) # (!\timerN|s_count\(14) & (!\timerN|s_count[13]~62\ & VCC))
-- \timerN|s_count[14]~64\ = CARRY((\timerN|s_count\(14) & !\timerN|s_count[13]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerN|s_count\(14),
	datad => VCC,
	cin => \timerN|s_count[13]~62\,
	combout => \timerN|s_count[14]~63_combout\,
	cout => \timerN|s_count[14]~64\);

-- Location: FF_X91_Y65_N9
\timerN|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \timerN|s_count[14]~63_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	sload => VCC,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(14));

-- Location: LCCOMB_X92_Y66_N30
\timerN|s_count[15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[15]~65_combout\ = (\timerN|s_count\(15) & (!\timerN|s_count[14]~64\)) # (!\timerN|s_count\(15) & ((\timerN|s_count[14]~64\) # (GND)))
-- \timerN|s_count[15]~66\ = CARRY((!\timerN|s_count[14]~64\) # (!\timerN|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerN|s_count\(15),
	datad => VCC,
	cin => \timerN|s_count[14]~64\,
	combout => \timerN|s_count[15]~65_combout\,
	cout => \timerN|s_count[15]~66\);

-- Location: FF_X91_Y65_N19
\timerN|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \timerN|s_count[15]~65_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	sload => VCC,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(15));

-- Location: LCCOMB_X92_Y65_N0
\timerN|s_count[16]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[16]~67_combout\ = (\timerN|s_count\(16) & (\timerN|s_count[15]~66\ $ (GND))) # (!\timerN|s_count\(16) & (!\timerN|s_count[15]~66\ & VCC))
-- \timerN|s_count[16]~68\ = CARRY((\timerN|s_count\(16) & !\timerN|s_count[15]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerN|s_count\(16),
	datad => VCC,
	cin => \timerN|s_count[15]~66\,
	combout => \timerN|s_count[16]~67_combout\,
	cout => \timerN|s_count[16]~68\);

-- Location: FF_X92_Y65_N1
\timerN|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[16]~67_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(16));

-- Location: LCCOMB_X92_Y65_N2
\timerN|s_count[17]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[17]~69_combout\ = (\timerN|s_count\(17) & (!\timerN|s_count[16]~68\)) # (!\timerN|s_count\(17) & ((\timerN|s_count[16]~68\) # (GND)))
-- \timerN|s_count[17]~70\ = CARRY((!\timerN|s_count[16]~68\) # (!\timerN|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerN|s_count\(17),
	datad => VCC,
	cin => \timerN|s_count[16]~68\,
	combout => \timerN|s_count[17]~69_combout\,
	cout => \timerN|s_count[17]~70\);

-- Location: FF_X92_Y65_N3
\timerN|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[17]~69_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(17));

-- Location: LCCOMB_X92_Y65_N4
\timerN|s_count[18]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[18]~71_combout\ = (\timerN|s_count\(18) & (\timerN|s_count[17]~70\ $ (GND))) # (!\timerN|s_count\(18) & (!\timerN|s_count[17]~70\ & VCC))
-- \timerN|s_count[18]~72\ = CARRY((\timerN|s_count\(18) & !\timerN|s_count[17]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerN|s_count\(18),
	datad => VCC,
	cin => \timerN|s_count[17]~70\,
	combout => \timerN|s_count[18]~71_combout\,
	cout => \timerN|s_count[18]~72\);

-- Location: FF_X92_Y65_N5
\timerN|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[18]~71_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(18));

-- Location: LCCOMB_X92_Y65_N6
\timerN|s_count[19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[19]~73_combout\ = (\timerN|s_count\(19) & (!\timerN|s_count[18]~72\)) # (!\timerN|s_count\(19) & ((\timerN|s_count[18]~72\) # (GND)))
-- \timerN|s_count[19]~74\ = CARRY((!\timerN|s_count[18]~72\) # (!\timerN|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerN|s_count\(19),
	datad => VCC,
	cin => \timerN|s_count[18]~72\,
	combout => \timerN|s_count[19]~73_combout\,
	cout => \timerN|s_count[19]~74\);

-- Location: FF_X92_Y65_N7
\timerN|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[19]~73_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(19));

-- Location: LCCOMB_X92_Y65_N8
\timerN|s_count[20]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[20]~75_combout\ = (\timerN|s_count\(20) & (\timerN|s_count[19]~74\ $ (GND))) # (!\timerN|s_count\(20) & (!\timerN|s_count[19]~74\ & VCC))
-- \timerN|s_count[20]~76\ = CARRY((\timerN|s_count\(20) & !\timerN|s_count[19]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerN|s_count\(20),
	datad => VCC,
	cin => \timerN|s_count[19]~74\,
	combout => \timerN|s_count[20]~75_combout\,
	cout => \timerN|s_count[20]~76\);

-- Location: FF_X92_Y65_N9
\timerN|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[20]~75_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(20));

-- Location: LCCOMB_X92_Y65_N10
\timerN|s_count[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[21]~77_combout\ = (\timerN|s_count\(21) & (!\timerN|s_count[20]~76\)) # (!\timerN|s_count\(21) & ((\timerN|s_count[20]~76\) # (GND)))
-- \timerN|s_count[21]~78\ = CARRY((!\timerN|s_count[20]~76\) # (!\timerN|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerN|s_count\(21),
	datad => VCC,
	cin => \timerN|s_count[20]~76\,
	combout => \timerN|s_count[21]~77_combout\,
	cout => \timerN|s_count[21]~78\);

-- Location: FF_X92_Y65_N11
\timerN|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[21]~77_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(21));

-- Location: LCCOMB_X92_Y65_N12
\timerN|s_count[22]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[22]~79_combout\ = (\timerN|s_count\(22) & (\timerN|s_count[21]~78\ $ (GND))) # (!\timerN|s_count\(22) & (!\timerN|s_count[21]~78\ & VCC))
-- \timerN|s_count[22]~80\ = CARRY((\timerN|s_count\(22) & !\timerN|s_count[21]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerN|s_count\(22),
	datad => VCC,
	cin => \timerN|s_count[21]~78\,
	combout => \timerN|s_count[22]~79_combout\,
	cout => \timerN|s_count[22]~80\);

-- Location: FF_X92_Y65_N13
\timerN|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[22]~79_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(22));

-- Location: LCCOMB_X92_Y65_N14
\timerN|s_count[23]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[23]~81_combout\ = (\timerN|s_count\(23) & (!\timerN|s_count[22]~80\)) # (!\timerN|s_count\(23) & ((\timerN|s_count[22]~80\) # (GND)))
-- \timerN|s_count[23]~82\ = CARRY((!\timerN|s_count[22]~80\) # (!\timerN|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerN|s_count\(23),
	datad => VCC,
	cin => \timerN|s_count[22]~80\,
	combout => \timerN|s_count[23]~81_combout\,
	cout => \timerN|s_count[23]~82\);

-- Location: FF_X92_Y65_N15
\timerN|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[23]~81_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(23));

-- Location: LCCOMB_X92_Y65_N16
\timerN|s_count[24]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[24]~83_combout\ = (\timerN|s_count\(24) & (\timerN|s_count[23]~82\ $ (GND))) # (!\timerN|s_count\(24) & (!\timerN|s_count[23]~82\ & VCC))
-- \timerN|s_count[24]~84\ = CARRY((\timerN|s_count\(24) & !\timerN|s_count[23]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerN|s_count\(24),
	datad => VCC,
	cin => \timerN|s_count[23]~82\,
	combout => \timerN|s_count[24]~83_combout\,
	cout => \timerN|s_count[24]~84\);

-- Location: FF_X92_Y65_N17
\timerN|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[24]~83_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(24));

-- Location: LCCOMB_X91_Y65_N30
\timerN|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|Equal0~6_combout\ = (!\timerN|s_count\(22) & (!\timerN|s_count\(23) & (!\timerN|s_count\(21) & !\timerN|s_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerN|s_count\(22),
	datab => \timerN|s_count\(23),
	datac => \timerN|s_count\(21),
	datad => \timerN|s_count\(24),
	combout => \timerN|Equal0~6_combout\);

-- Location: LCCOMB_X91_Y65_N24
\timerN|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|Equal0~5_combout\ = (!\timerN|s_count\(17) & (!\timerN|s_count\(20) & (!\timerN|s_count\(18) & !\timerN|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerN|s_count\(17),
	datab => \timerN|s_count\(20),
	datac => \timerN|s_count\(18),
	datad => \timerN|s_count\(19),
	combout => \timerN|Equal0~5_combout\);

-- Location: LCCOMB_X92_Y65_N18
\timerN|s_count[25]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[25]~85_combout\ = (\timerN|s_count\(25) & (!\timerN|s_count[24]~84\)) # (!\timerN|s_count\(25) & ((\timerN|s_count[24]~84\) # (GND)))
-- \timerN|s_count[25]~86\ = CARRY((!\timerN|s_count[24]~84\) # (!\timerN|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerN|s_count\(25),
	datad => VCC,
	cin => \timerN|s_count[24]~84\,
	combout => \timerN|s_count[25]~85_combout\,
	cout => \timerN|s_count[25]~86\);

-- Location: FF_X92_Y65_N19
\timerN|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[25]~85_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(25));

-- Location: LCCOMB_X92_Y65_N20
\timerN|s_count[26]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[26]~87_combout\ = (\timerN|s_count\(26) & (\timerN|s_count[25]~86\ $ (GND))) # (!\timerN|s_count\(26) & (!\timerN|s_count[25]~86\ & VCC))
-- \timerN|s_count[26]~88\ = CARRY((\timerN|s_count\(26) & !\timerN|s_count[25]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerN|s_count\(26),
	datad => VCC,
	cin => \timerN|s_count[25]~86\,
	combout => \timerN|s_count[26]~87_combout\,
	cout => \timerN|s_count[26]~88\);

-- Location: FF_X92_Y65_N21
\timerN|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[26]~87_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(26));

-- Location: LCCOMB_X92_Y65_N22
\timerN|s_count[27]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[27]~89_combout\ = (\timerN|s_count\(27) & (!\timerN|s_count[26]~88\)) # (!\timerN|s_count\(27) & ((\timerN|s_count[26]~88\) # (GND)))
-- \timerN|s_count[27]~90\ = CARRY((!\timerN|s_count[26]~88\) # (!\timerN|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerN|s_count\(27),
	datad => VCC,
	cin => \timerN|s_count[26]~88\,
	combout => \timerN|s_count[27]~89_combout\,
	cout => \timerN|s_count[27]~90\);

-- Location: FF_X92_Y65_N23
\timerN|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[27]~89_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(27));

-- Location: LCCOMB_X92_Y65_N24
\timerN|s_count[28]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[28]~91_combout\ = (\timerN|s_count\(28) & (\timerN|s_count[27]~90\ $ (GND))) # (!\timerN|s_count\(28) & (!\timerN|s_count[27]~90\ & VCC))
-- \timerN|s_count[28]~92\ = CARRY((\timerN|s_count\(28) & !\timerN|s_count[27]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerN|s_count\(28),
	datad => VCC,
	cin => \timerN|s_count[27]~90\,
	combout => \timerN|s_count[28]~91_combout\,
	cout => \timerN|s_count[28]~92\);

-- Location: FF_X92_Y65_N25
\timerN|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[28]~91_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(28));

-- Location: LCCOMB_X92_Y65_N26
\timerN|s_count[29]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[29]~93_combout\ = (\timerN|s_count\(29) & (!\timerN|s_count[28]~92\)) # (!\timerN|s_count\(29) & ((\timerN|s_count[28]~92\) # (GND)))
-- \timerN|s_count[29]~94\ = CARRY((!\timerN|s_count[28]~92\) # (!\timerN|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerN|s_count\(29),
	datad => VCC,
	cin => \timerN|s_count[28]~92\,
	combout => \timerN|s_count[29]~93_combout\,
	cout => \timerN|s_count[29]~94\);

-- Location: FF_X92_Y65_N27
\timerN|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[29]~93_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(29));

-- Location: LCCOMB_X92_Y65_N28
\timerN|s_count[30]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[30]~95_combout\ = (\timerN|s_count\(30) & (\timerN|s_count[29]~94\ $ (GND))) # (!\timerN|s_count\(30) & (!\timerN|s_count[29]~94\ & VCC))
-- \timerN|s_count[30]~96\ = CARRY((\timerN|s_count\(30) & !\timerN|s_count[29]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerN|s_count\(30),
	datad => VCC,
	cin => \timerN|s_count[29]~94\,
	combout => \timerN|s_count[30]~95_combout\,
	cout => \timerN|s_count[30]~96\);

-- Location: FF_X92_Y65_N29
\timerN|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[30]~95_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(30));

-- Location: LCCOMB_X92_Y65_N30
\timerN|s_count[31]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|s_count[31]~97_combout\ = \timerN|s_count\(31) $ (\timerN|s_count[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerN|s_count\(31),
	cin => \timerN|s_count[30]~96\,
	combout => \timerN|s_count[31]~97_combout\);

-- Location: FF_X92_Y65_N31
\timerN|s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|s_count[31]~97_combout\,
	sclr => \timerN|s_count[0]~38_combout\,
	ena => \timerN|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|s_count\(31));

-- Location: LCCOMB_X91_Y65_N16
\timerN|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|Equal0~7_combout\ = (!\timerN|s_count\(26) & (!\timerN|s_count\(28) & (!\timerN|s_count\(27) & !\timerN|s_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerN|s_count\(26),
	datab => \timerN|s_count\(28),
	datac => \timerN|s_count\(27),
	datad => \timerN|s_count\(25),
	combout => \timerN|Equal0~7_combout\);

-- Location: LCCOMB_X91_Y65_N22
\timerN|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|Equal0~8_combout\ = (!\timerN|s_count\(31) & (!\timerN|s_count\(30) & (!\timerN|s_count\(29) & \timerN|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerN|s_count\(31),
	datab => \timerN|s_count\(30),
	datac => \timerN|s_count\(29),
	datad => \timerN|Equal0~7_combout\,
	combout => \timerN|Equal0~8_combout\);

-- Location: LCCOMB_X91_Y65_N12
\timerN|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|Equal0~1_combout\ = (!\timerN|s_count\(8) & (!\timerN|s_count\(7) & (!\timerN|s_count\(6) & !\timerN|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerN|s_count\(8),
	datab => \timerN|s_count\(7),
	datac => \timerN|s_count\(6),
	datad => \timerN|s_count\(5),
	combout => \timerN|Equal0~1_combout\);

-- Location: LCCOMB_X91_Y65_N4
\timerN|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|Equal0~2_combout\ = (!\timerN|s_count\(11) & (!\timerN|s_count\(12) & (!\timerN|s_count\(10) & !\timerN|s_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerN|s_count\(11),
	datab => \timerN|s_count\(12),
	datac => \timerN|s_count\(10),
	datad => \timerN|s_count\(9),
	combout => \timerN|Equal0~2_combout\);

-- Location: LCCOMB_X91_Y65_N8
\timerN|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|Equal0~3_combout\ = (!\timerN|s_count\(16) & (!\timerN|s_count\(13) & (!\timerN|s_count\(14) & !\timerN|s_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerN|s_count\(16),
	datab => \timerN|s_count\(13),
	datac => \timerN|s_count\(14),
	datad => \timerN|s_count\(15),
	combout => \timerN|Equal0~3_combout\);

-- Location: LCCOMB_X91_Y65_N6
\timerN|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|Equal0~0_combout\ = (!\timerN|s_count\(1) & (!\timerN|s_count\(4) & (!\timerN|s_count\(3) & !\timerN|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerN|s_count\(1),
	datab => \timerN|s_count\(4),
	datac => \timerN|s_count\(3),
	datad => \timerN|s_count\(0),
	combout => \timerN|Equal0~0_combout\);

-- Location: LCCOMB_X91_Y65_N10
\timerN|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|Equal0~4_combout\ = (\timerN|Equal0~1_combout\ & (\timerN|Equal0~2_combout\ & (\timerN|Equal0~3_combout\ & \timerN|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerN|Equal0~1_combout\,
	datab => \timerN|Equal0~2_combout\,
	datac => \timerN|Equal0~3_combout\,
	datad => \timerN|Equal0~0_combout\,
	combout => \timerN|Equal0~4_combout\);

-- Location: LCCOMB_X91_Y65_N28
\timerN|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|Equal0~9_combout\ = (\timerN|Equal0~6_combout\ & (\timerN|Equal0~5_combout\ & (\timerN|Equal0~8_combout\ & \timerN|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerN|Equal0~6_combout\,
	datab => \timerN|Equal0~5_combout\,
	datac => \timerN|Equal0~8_combout\,
	datad => \timerN|Equal0~4_combout\,
	combout => \timerN|Equal0~9_combout\);

-- Location: LCCOMB_X91_Y65_N14
\timerN|timerOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|timerOut~0_combout\ = (\SW[0]~input_o\) # ((\timerN|timerOut~q\ & !\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \timerN|timerOut~q\,
	datad => \SW[1]~input_o\,
	combout => \timerN|timerOut~0_combout\);

-- Location: LCCOMB_X91_Y65_N0
\timerN|timerOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerN|timerOut~1_combout\ = (\timerN|timerOut~0_combout\) # ((\SW[1]~input_o\ & ((!\timerN|s_count\(2)) # (!\timerN|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \timerN|Equal0~9_combout\,
	datac => \timerN|timerOut~0_combout\,
	datad => \timerN|s_count\(2),
	combout => \timerN|timerOut~1_combout\);

-- Location: FF_X91_Y65_N1
\timerN|timerOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerN|timerOut~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerN|timerOut~q\);

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


