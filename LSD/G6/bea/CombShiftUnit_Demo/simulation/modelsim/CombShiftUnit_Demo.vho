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

-- DATE "03/19/2017 04:28:46"

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

ENTITY 	CombShiftUnit_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END CombShiftUnit_Demo;

-- Design Ports Information
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CombShiftUnit_Demo IS
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
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \freqDiv|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
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
SIGNAL \freqDiv|s_divCounter[0]~26_combout\ : std_logic;
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
SIGNAL \freqDiv|LessThan0~0_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~1_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~1_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~2_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~3_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~2_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~3_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~4_combout\ : std_logic;
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
SIGNAL \freqDiv|clkOut~0_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~4_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~5_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~6_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~7_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~8_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~9_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~feeder_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~q\ : std_logic;
SIGNAL \freqDiv|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \shifter|s_shiftReg[5]~2_combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \shifter|s_shiftReg[5]~3_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \shifter|RotateLeft0~10_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \shifter|s_shiftReg~22_combout\ : std_logic;
SIGNAL \shifter|s_shiftReg~23_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~0_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~15_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~12_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~3_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~14_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~16_combout\ : std_logic;
SIGNAL \shifter|s_shiftReg~24_combout\ : std_logic;
SIGNAL \shifter|s_shiftReg~25_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~6_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~11_combout\ : std_logic;
SIGNAL \shifter|s_shiftReg~7_combout\ : std_logic;
SIGNAL \shifter|s_shiftReg~8_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \shifter|s_shiftReg~9_combout\ : std_logic;
SIGNAL \shifter|s_shiftReg~10_combout\ : std_logic;
SIGNAL \shifter|s_shiftReg~11_combout\ : std_logic;
SIGNAL \shifter|s_shiftReg~12_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~8_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~13_combout\ : std_logic;
SIGNAL \shifter|s_shiftReg~19_combout\ : std_logic;
SIGNAL \shifter|s_shiftReg~20_combout\ : std_logic;
SIGNAL \shifter|s_shiftReg~21_combout\ : std_logic;
SIGNAL \shifter|s_shiftReg~16_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~4_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~7_combout\ : std_logic;
SIGNAL \shifter|s_shiftReg~17_combout\ : std_logic;
SIGNAL \shifter|s_shiftReg~18_combout\ : std_logic;
SIGNAL \shifter|s_shiftReg~13_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~5_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~2_combout\ : std_logic;
SIGNAL \shifter|s_shiftReg~14_combout\ : std_logic;
SIGNAL \shifter|s_shiftReg~15_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~1_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~9_combout\ : std_logic;
SIGNAL \shifter|s_shiftReg~4_combout\ : std_logic;
SIGNAL \shifter|s_shiftReg~5_combout\ : std_logic;
SIGNAL \shifter|s_shiftReg~6_combout\ : std_logic;
SIGNAL \shifter|s_shiftReg~1_combout\ : std_logic;
SIGNAL \shifter|s_shiftReg[0]~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \shifter|s_shiftReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \freqDiv|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \freqDiv|ALT_INV_clkOut~clkctrl_outclk\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\freqDiv|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \freqDiv|clkOut~q\);
\freqDiv|ALT_INV_clkOut~clkctrl_outclk\ <= NOT \freqDiv|clkOut~clkctrl_outclk\;

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shifter|s_shiftReg\(0),
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
	i => \shifter|s_shiftReg\(1),
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
	i => \shifter|s_shiftReg\(2),
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
	i => \shifter|s_shiftReg\(3),
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
	i => \shifter|s_shiftReg\(4),
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
	i => \shifter|s_shiftReg\(5),
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
	i => \shifter|s_shiftReg\(6),
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
	i => \shifter|s_shiftReg\(7),
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

-- Location: LCCOMB_X55_Y3_N6
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

-- Location: LCCOMB_X55_Y2_N12
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

-- Location: LCCOMB_X55_Y2_N14
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

-- Location: FF_X55_Y2_N15
\freqDiv|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[20]~66_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(20));

-- Location: LCCOMB_X55_Y2_N16
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

-- Location: FF_X55_Y2_N17
\freqDiv|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[21]~68_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(21));

-- Location: LCCOMB_X55_Y2_N18
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

-- Location: FF_X55_Y2_N19
\freqDiv|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[22]~70_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(22));

-- Location: LCCOMB_X55_Y2_N20
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

-- Location: FF_X55_Y2_N21
\freqDiv|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[23]~72_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(23));

-- Location: LCCOMB_X55_Y2_N22
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

-- Location: FF_X55_Y2_N23
\freqDiv|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[24]~74_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(24));

-- Location: LCCOMB_X55_Y2_N24
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

-- Location: FF_X55_Y2_N25
\freqDiv|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[25]~76_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(25));

-- Location: LCCOMB_X56_Y3_N14
\freqDiv|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~0_combout\ = (((!\freqDiv|s_divCounter\(18) & !\freqDiv|s_divCounter\(17))) # (!\freqDiv|clkOut~0_combout\)) # (!\freqDiv|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(18),
	datab => \freqDiv|s_divCounter\(23),
	datac => \freqDiv|s_divCounter\(17),
	datad => \freqDiv|clkOut~0_combout\,
	combout => \freqDiv|LessThan0~0_combout\);

-- Location: LCCOMB_X56_Y3_N26
\freqDiv|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~1_combout\ = (((!\freqDiv|s_divCounter\(12)) # (!\freqDiv|s_divCounter\(15))) # (!\freqDiv|s_divCounter\(14))) # (!\freqDiv|s_divCounter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(13),
	datab => \freqDiv|s_divCounter\(14),
	datac => \freqDiv|s_divCounter\(15),
	datad => \freqDiv|s_divCounter\(12),
	combout => \freqDiv|LessThan0~1_combout\);

-- Location: LCCOMB_X55_Y3_N0
\freqDiv|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~1_combout\ = (!\freqDiv|s_divCounter\(8) & (!\freqDiv|s_divCounter\(7) & (!\freqDiv|s_divCounter\(10) & !\freqDiv|s_divCounter\(9))))

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
	combout => \freqDiv|clkOut~1_combout\);

-- Location: LCCOMB_X55_Y3_N2
\freqDiv|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~2_combout\ = (\freqDiv|s_divCounter\(3) & (\freqDiv|s_divCounter\(1) & (\freqDiv|s_divCounter\(0) & \freqDiv|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(3),
	datab => \freqDiv|s_divCounter\(1),
	datac => \freqDiv|s_divCounter\(0),
	datad => \freqDiv|s_divCounter\(2),
	combout => \freqDiv|clkOut~2_combout\);

-- Location: LCCOMB_X55_Y3_N4
\freqDiv|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~3_combout\ = (\freqDiv|s_divCounter\(5) & (\freqDiv|s_divCounter\(4) & \freqDiv|clkOut~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(5),
	datac => \freqDiv|s_divCounter\(4),
	datad => \freqDiv|clkOut~2_combout\,
	combout => \freqDiv|clkOut~3_combout\);

-- Location: LCCOMB_X56_Y3_N18
\freqDiv|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~2_combout\ = (\freqDiv|clkOut~1_combout\ & (!\freqDiv|s_divCounter\(11) & ((!\freqDiv|s_divCounter\(6)) # (!\freqDiv|clkOut~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|clkOut~1_combout\,
	datab => \freqDiv|s_divCounter\(11),
	datac => \freqDiv|clkOut~3_combout\,
	datad => \freqDiv|s_divCounter\(6),
	combout => \freqDiv|LessThan0~2_combout\);

-- Location: LCCOMB_X56_Y3_N24
\freqDiv|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~3_combout\ = (!\freqDiv|s_divCounter\(18) & (!\freqDiv|s_divCounter\(16) & ((\freqDiv|LessThan0~1_combout\) # (\freqDiv|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(18),
	datab => \freqDiv|s_divCounter\(16),
	datac => \freqDiv|LessThan0~1_combout\,
	datad => \freqDiv|LessThan0~2_combout\,
	combout => \freqDiv|LessThan0~3_combout\);

-- Location: LCCOMB_X56_Y3_N10
\freqDiv|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~4_combout\ = (\freqDiv|s_divCounter\(25) & ((\freqDiv|s_divCounter\(24)) # ((!\freqDiv|LessThan0~0_combout\ & !\freqDiv|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(24),
	datab => \freqDiv|s_divCounter\(25),
	datac => \freqDiv|LessThan0~0_combout\,
	datad => \freqDiv|LessThan0~3_combout\,
	combout => \freqDiv|LessThan0~4_combout\);

-- Location: FF_X55_Y3_N7
\freqDiv|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[0]~26_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(0));

-- Location: LCCOMB_X55_Y3_N8
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

-- Location: FF_X55_Y3_N9
\freqDiv|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[1]~28_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(1));

-- Location: LCCOMB_X55_Y3_N10
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

-- Location: FF_X55_Y3_N11
\freqDiv|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[2]~30_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(2));

-- Location: LCCOMB_X55_Y3_N12
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

-- Location: FF_X55_Y3_N13
\freqDiv|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[3]~32_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(3));

-- Location: LCCOMB_X55_Y3_N14
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

-- Location: FF_X55_Y3_N15
\freqDiv|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[4]~34_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(4));

-- Location: LCCOMB_X55_Y3_N16
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

-- Location: FF_X55_Y3_N17
\freqDiv|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[5]~36_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(5));

-- Location: LCCOMB_X55_Y3_N18
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

-- Location: FF_X55_Y3_N19
\freqDiv|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[6]~38_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(6));

-- Location: LCCOMB_X55_Y3_N20
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

-- Location: FF_X55_Y3_N21
\freqDiv|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[7]~40_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(7));

-- Location: LCCOMB_X55_Y3_N22
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

-- Location: FF_X55_Y3_N23
\freqDiv|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[8]~42_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(8));

-- Location: LCCOMB_X55_Y3_N24
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

-- Location: FF_X55_Y3_N25
\freqDiv|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[9]~44_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(9));

-- Location: LCCOMB_X55_Y3_N26
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

-- Location: FF_X55_Y3_N27
\freqDiv|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[10]~46_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(10));

-- Location: LCCOMB_X55_Y3_N28
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

-- Location: FF_X55_Y3_N29
\freqDiv|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[11]~48_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(11));

-- Location: LCCOMB_X55_Y3_N30
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

-- Location: FF_X55_Y3_N31
\freqDiv|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[12]~50_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(12));

-- Location: LCCOMB_X55_Y2_N0
\freqDiv|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[13]~52_combout\ = (\freqDiv|s_divCounter\(13) & (!\freqDiv|s_divCounter[12]~51\)) # (!\freqDiv|s_divCounter\(13) & ((\freqDiv|s_divCounter[12]~51\) # (GND)))
-- \freqDiv|s_divCounter[13]~53\ = CARRY((!\freqDiv|s_divCounter[12]~51\) # (!\freqDiv|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(13),
	datad => VCC,
	cin => \freqDiv|s_divCounter[12]~51\,
	combout => \freqDiv|s_divCounter[13]~52_combout\,
	cout => \freqDiv|s_divCounter[13]~53\);

-- Location: FF_X56_Y3_N21
\freqDiv|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \freqDiv|s_divCounter[13]~52_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(13));

-- Location: LCCOMB_X55_Y2_N2
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

-- Location: FF_X56_Y3_N29
\freqDiv|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \freqDiv|s_divCounter[14]~54_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(14));

-- Location: LCCOMB_X55_Y2_N4
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

-- Location: FF_X56_Y3_N31
\freqDiv|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \freqDiv|s_divCounter[15]~56_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(15));

-- Location: LCCOMB_X55_Y2_N6
\freqDiv|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[16]~58_combout\ = (\freqDiv|s_divCounter\(16) & (\freqDiv|s_divCounter[15]~57\ $ (GND))) # (!\freqDiv|s_divCounter\(16) & (!\freqDiv|s_divCounter[15]~57\ & VCC))
-- \freqDiv|s_divCounter[16]~59\ = CARRY((\freqDiv|s_divCounter\(16) & !\freqDiv|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(16),
	datad => VCC,
	cin => \freqDiv|s_divCounter[15]~57\,
	combout => \freqDiv|s_divCounter[16]~58_combout\,
	cout => \freqDiv|s_divCounter[16]~59\);

-- Location: FF_X56_Y3_N9
\freqDiv|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \freqDiv|s_divCounter[16]~58_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(16));

-- Location: LCCOMB_X55_Y2_N8
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

-- Location: FF_X55_Y2_N9
\freqDiv|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[17]~60_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(17));

-- Location: LCCOMB_X55_Y2_N10
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

-- Location: FF_X55_Y2_N11
\freqDiv|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[18]~62_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(18));

-- Location: FF_X55_Y2_N13
\freqDiv|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[19]~64_combout\,
	sclr => \freqDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(19));

-- Location: LCCOMB_X55_Y2_N30
\freqDiv|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~0_combout\ = (\freqDiv|s_divCounter\(19) & (\freqDiv|s_divCounter\(21) & (\freqDiv|s_divCounter\(20) & \freqDiv|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(19),
	datab => \freqDiv|s_divCounter\(21),
	datac => \freqDiv|s_divCounter\(20),
	datad => \freqDiv|s_divCounter\(22),
	combout => \freqDiv|clkOut~0_combout\);

-- Location: LCCOMB_X56_Y3_N0
\freqDiv|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~4_combout\ = (\freqDiv|s_divCounter\(13) & (\freqDiv|s_divCounter\(14) & (!\freqDiv|s_divCounter\(6) & \freqDiv|s_divCounter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(13),
	datab => \freqDiv|s_divCounter\(14),
	datac => \freqDiv|s_divCounter\(6),
	datad => \freqDiv|s_divCounter\(12),
	combout => \freqDiv|clkOut~4_combout\);

-- Location: LCCOMB_X56_Y3_N22
\freqDiv|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~5_combout\ = (!\freqDiv|s_divCounter\(17) & (\freqDiv|s_divCounter\(16) & (!\freqDiv|s_divCounter\(15) & \freqDiv|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(17),
	datab => \freqDiv|s_divCounter\(16),
	datac => \freqDiv|s_divCounter\(15),
	datad => \freqDiv|s_divCounter\(11),
	combout => \freqDiv|clkOut~5_combout\);

-- Location: LCCOMB_X55_Y2_N28
\freqDiv|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~6_combout\ = (\freqDiv|s_divCounter\(18) & (!\freqDiv|s_divCounter\(25) & (\freqDiv|s_divCounter\(24) & !\freqDiv|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(18),
	datab => \freqDiv|s_divCounter\(25),
	datac => \freqDiv|s_divCounter\(24),
	datad => \freqDiv|s_divCounter\(23),
	combout => \freqDiv|clkOut~6_combout\);

-- Location: LCCOMB_X56_Y3_N16
\freqDiv|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~7_combout\ = (\freqDiv|clkOut~4_combout\ & (\freqDiv|clkOut~5_combout\ & \freqDiv|clkOut~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|clkOut~4_combout\,
	datac => \freqDiv|clkOut~5_combout\,
	datad => \freqDiv|clkOut~6_combout\,
	combout => \freqDiv|clkOut~7_combout\);

-- Location: LCCOMB_X56_Y3_N4
\freqDiv|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~8_combout\ = (\freqDiv|clkOut~0_combout\ & (\freqDiv|clkOut~3_combout\ & (\freqDiv|clkOut~1_combout\ & \freqDiv|clkOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|clkOut~0_combout\,
	datab => \freqDiv|clkOut~3_combout\,
	datac => \freqDiv|clkOut~1_combout\,
	datad => \freqDiv|clkOut~7_combout\,
	combout => \freqDiv|clkOut~8_combout\);

-- Location: LCCOMB_X56_Y3_N12
\freqDiv|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~9_combout\ = (!\freqDiv|LessThan0~4_combout\ & ((\freqDiv|clkOut~q\) # (\freqDiv|clkOut~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|clkOut~q\,
	datac => \freqDiv|clkOut~8_combout\,
	datad => \freqDiv|LessThan0~4_combout\,
	combout => \freqDiv|clkOut~9_combout\);

-- Location: LCCOMB_X56_Y3_N6
\freqDiv|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~feeder_combout\ = \freqDiv|clkOut~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|clkOut~9_combout\,
	combout => \freqDiv|clkOut~feeder_combout\);

-- Location: FF_X56_Y3_N7
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

-- Location: CLKCTRL_G16
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

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

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

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

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

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: LCCOMB_X108_Y22_N24
\shifter|s_shiftReg[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg[5]~2_combout\ = ((\KEY[0]~input_o\ & \SW[17]~input_o\)) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \SW[17]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \shifter|s_shiftReg[5]~2_combout\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X108_Y22_N6
\shifter|s_shiftReg[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg[5]~3_combout\ = (\KEY[0]~input_o\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \shifter|s_shiftReg[5]~3_combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X107_Y22_N26
\shifter|RotateLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~10_combout\ = (\SW[16]~input_o\ & (\shifter|s_shiftReg\(0))) # (!\SW[16]~input_o\ & ((\shifter|s_shiftReg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shifter|s_shiftReg\(0),
	datac => \SW[16]~input_o\,
	datad => \shifter|s_shiftReg\(2),
	combout => \shifter|RotateLeft0~10_combout\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X108_Y22_N18
\shifter|s_shiftReg~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg~22_combout\ = (\KEY[2]~input_o\ & \shifter|s_shiftReg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[2]~input_o\,
	datad => \shifter|s_shiftReg\(7),
	combout => \shifter|s_shiftReg~22_combout\);

-- Location: LCCOMB_X108_Y22_N8
\shifter|s_shiftReg~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg~23_combout\ = (\KEY[1]~input_o\ & ((\KEY[0]~input_o\) # ((\shifter|s_shiftReg\(6))))) # (!\KEY[1]~input_o\ & (!\KEY[0]~input_o\ & ((\shifter|s_shiftReg~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \KEY[0]~input_o\,
	datac => \shifter|s_shiftReg\(6),
	datad => \shifter|s_shiftReg~22_combout\,
	combout => \shifter|s_shiftReg~23_combout\);

-- Location: LCCOMB_X107_Y22_N6
\shifter|RotateLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~0_combout\ = (\SW[16]~input_o\ & ((\shifter|s_shiftReg\(1)))) # (!\SW[16]~input_o\ & (\shifter|s_shiftReg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datac => \shifter|s_shiftReg\(3),
	datad => \shifter|s_shiftReg\(1),
	combout => \shifter|RotateLeft0~0_combout\);

-- Location: LCCOMB_X107_Y22_N16
\shifter|RotateLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~15_combout\ = (\SW[15]~input_o\ & (\shifter|RotateLeft0~10_combout\)) # (!\SW[15]~input_o\ & ((\shifter|RotateLeft0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datac => \shifter|RotateLeft0~10_combout\,
	datad => \shifter|RotateLeft0~0_combout\,
	combout => \shifter|RotateLeft0~15_combout\);

-- Location: LCCOMB_X106_Y22_N8
\shifter|RotateLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~12_combout\ = (\SW[16]~input_o\ & ((\shifter|s_shiftReg\(4)))) # (!\SW[16]~input_o\ & (\shifter|s_shiftReg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \shifter|s_shiftReg\(6),
	datad => \shifter|s_shiftReg\(4),
	combout => \shifter|RotateLeft0~12_combout\);

-- Location: LCCOMB_X106_Y22_N24
\shifter|RotateLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~3_combout\ = (\SW[16]~input_o\ & (\shifter|s_shiftReg\(5))) # (!\SW[16]~input_o\ & ((\shifter|s_shiftReg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \shifter|s_shiftReg\(5),
	datad => \shifter|s_shiftReg\(7),
	combout => \shifter|RotateLeft0~3_combout\);

-- Location: LCCOMB_X106_Y22_N20
\shifter|RotateLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~14_combout\ = (\SW[15]~input_o\ & (\shifter|RotateLeft0~12_combout\)) # (!\SW[15]~input_o\ & ((\shifter|RotateLeft0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datac => \shifter|RotateLeft0~12_combout\,
	datad => \shifter|RotateLeft0~3_combout\,
	combout => \shifter|RotateLeft0~14_combout\);

-- Location: LCCOMB_X108_Y22_N2
\shifter|RotateLeft0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~16_combout\ = (\SW[17]~input_o\ & (\shifter|RotateLeft0~15_combout\)) # (!\SW[17]~input_o\ & ((\shifter|RotateLeft0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datac => \shifter|RotateLeft0~15_combout\,
	datad => \shifter|RotateLeft0~14_combout\,
	combout => \shifter|RotateLeft0~16_combout\);

-- Location: LCCOMB_X108_Y22_N16
\shifter|s_shiftReg~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg~24_combout\ = (\KEY[0]~input_o\ & ((\shifter|s_shiftReg~23_combout\ & ((\shifter|RotateLeft0~16_combout\))) # (!\shifter|s_shiftReg~23_combout\ & (\shifter|s_shiftReg\(0))))) # (!\KEY[0]~input_o\ & 
-- (((\shifter|s_shiftReg~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|s_shiftReg\(0),
	datab => \KEY[0]~input_o\,
	datac => \shifter|s_shiftReg~23_combout\,
	datad => \shifter|RotateLeft0~16_combout\,
	combout => \shifter|s_shiftReg~24_combout\);

-- Location: LCCOMB_X108_Y22_N28
\shifter|s_shiftReg~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg~25_combout\ = (\SW[10]~input_o\ & (\SW[7]~input_o\)) # (!\SW[10]~input_o\ & ((\shifter|s_shiftReg~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \shifter|s_shiftReg~24_combout\,
	combout => \shifter|s_shiftReg~25_combout\);

-- Location: FF_X108_Y22_N29
\shifter|s_shiftReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|ALT_INV_clkOut~clkctrl_outclk\,
	d => \shifter|s_shiftReg~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifter|s_shiftReg\(7));

-- Location: LCCOMB_X107_Y22_N28
\shifter|RotateLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~6_combout\ = (\SW[16]~input_o\ & ((\shifter|s_shiftReg\(7)))) # (!\SW[16]~input_o\ & (\shifter|s_shiftReg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shifter|s_shiftReg\(1),
	datac => \SW[16]~input_o\,
	datad => \shifter|s_shiftReg\(7),
	combout => \shifter|RotateLeft0~6_combout\);

-- Location: LCCOMB_X107_Y22_N12
\shifter|RotateLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~11_combout\ = (\SW[15]~input_o\ & ((\shifter|RotateLeft0~6_combout\))) # (!\SW[15]~input_o\ & (\shifter|RotateLeft0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datac => \shifter|RotateLeft0~10_combout\,
	datad => \shifter|RotateLeft0~6_combout\,
	combout => \shifter|RotateLeft0~11_combout\);

-- Location: LCCOMB_X108_Y22_N12
\shifter|s_shiftReg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg~7_combout\ = (\shifter|s_shiftReg[5]~3_combout\ & (\shifter|s_shiftReg[5]~2_combout\)) # (!\shifter|s_shiftReg[5]~3_combout\ & ((\shifter|s_shiftReg[5]~2_combout\ & ((\shifter|s_shiftReg\(3)))) # (!\shifter|s_shiftReg[5]~2_combout\ & 
-- (\shifter|s_shiftReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|s_shiftReg[5]~3_combout\,
	datab => \shifter|s_shiftReg[5]~2_combout\,
	datac => \shifter|s_shiftReg\(1),
	datad => \shifter|s_shiftReg\(3),
	combout => \shifter|s_shiftReg~7_combout\);

-- Location: LCCOMB_X107_Y22_N30
\shifter|s_shiftReg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg~8_combout\ = (\shifter|s_shiftReg[5]~3_combout\ & ((\shifter|s_shiftReg~7_combout\ & ((\shifter|RotateLeft0~13_combout\))) # (!\shifter|s_shiftReg~7_combout\ & (\shifter|RotateLeft0~11_combout\)))) # (!\shifter|s_shiftReg[5]~3_combout\ 
-- & (((\shifter|s_shiftReg~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|RotateLeft0~11_combout\,
	datab => \shifter|s_shiftReg[5]~3_combout\,
	datac => \shifter|s_shiftReg~7_combout\,
	datad => \shifter|RotateLeft0~13_combout\,
	combout => \shifter|s_shiftReg~8_combout\);

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

-- Location: LCCOMB_X107_Y22_N0
\shifter|s_shiftReg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg~9_combout\ = (\SW[10]~input_o\ & ((\SW[2]~input_o\))) # (!\SW[10]~input_o\ & (\shifter|s_shiftReg~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datac => \shifter|s_shiftReg~8_combout\,
	datad => \SW[2]~input_o\,
	combout => \shifter|s_shiftReg~9_combout\);

-- Location: FF_X107_Y22_N1
\shifter|s_shiftReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|ALT_INV_clkOut~clkctrl_outclk\,
	d => \shifter|s_shiftReg~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifter|s_shiftReg\(2));

-- Location: LCCOMB_X107_Y22_N22
\shifter|s_shiftReg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg~10_combout\ = (\shifter|s_shiftReg[5]~2_combout\ & ((\shifter|s_shiftReg\(4)) # ((\shifter|s_shiftReg[5]~3_combout\)))) # (!\shifter|s_shiftReg[5]~2_combout\ & (((!\shifter|s_shiftReg[5]~3_combout\ & \shifter|s_shiftReg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|s_shiftReg[5]~2_combout\,
	datab => \shifter|s_shiftReg\(4),
	datac => \shifter|s_shiftReg[5]~3_combout\,
	datad => \shifter|s_shiftReg\(2),
	combout => \shifter|s_shiftReg~10_combout\);

-- Location: LCCOMB_X107_Y22_N20
\shifter|s_shiftReg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg~11_combout\ = (\shifter|s_shiftReg~10_combout\ & (((\shifter|RotateLeft0~14_combout\) # (!\shifter|s_shiftReg[5]~3_combout\)))) # (!\shifter|s_shiftReg~10_combout\ & (\shifter|RotateLeft0~15_combout\ & 
-- (\shifter|s_shiftReg[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|s_shiftReg~10_combout\,
	datab => \shifter|RotateLeft0~15_combout\,
	datac => \shifter|s_shiftReg[5]~3_combout\,
	datad => \shifter|RotateLeft0~14_combout\,
	combout => \shifter|s_shiftReg~11_combout\);

-- Location: LCCOMB_X107_Y22_N14
\shifter|s_shiftReg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg~12_combout\ = (\SW[10]~input_o\ & (\SW[3]~input_o\)) # (!\SW[10]~input_o\ & ((\shifter|s_shiftReg~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \shifter|s_shiftReg~11_combout\,
	combout => \shifter|s_shiftReg~12_combout\);

-- Location: FF_X107_Y22_N15
\shifter|s_shiftReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|ALT_INV_clkOut~clkctrl_outclk\,
	d => \shifter|s_shiftReg~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifter|s_shiftReg\(3));

-- Location: LCCOMB_X106_Y22_N18
\shifter|RotateLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~8_combout\ = (\SW[16]~input_o\ & (\shifter|s_shiftReg\(3))) # (!\SW[16]~input_o\ & ((\shifter|s_shiftReg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \shifter|s_shiftReg\(3),
	datad => \shifter|s_shiftReg\(5),
	combout => \shifter|RotateLeft0~8_combout\);

-- Location: LCCOMB_X106_Y22_N30
\shifter|RotateLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~13_combout\ = (\SW[15]~input_o\ & (\shifter|RotateLeft0~8_combout\)) # (!\SW[15]~input_o\ & ((\shifter|RotateLeft0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \shifter|RotateLeft0~8_combout\,
	datac => \shifter|RotateLeft0~12_combout\,
	combout => \shifter|RotateLeft0~13_combout\);

-- Location: LCCOMB_X108_Y22_N20
\shifter|s_shiftReg~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg~19_combout\ = (\shifter|s_shiftReg[5]~3_combout\ & (\shifter|s_shiftReg[5]~2_combout\)) # (!\shifter|s_shiftReg[5]~3_combout\ & ((\shifter|s_shiftReg[5]~2_combout\ & ((\shifter|s_shiftReg\(7)))) # (!\shifter|s_shiftReg[5]~2_combout\ & 
-- (\shifter|s_shiftReg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|s_shiftReg[5]~3_combout\,
	datab => \shifter|s_shiftReg[5]~2_combout\,
	datac => \shifter|s_shiftReg\(5),
	datad => \shifter|s_shiftReg\(7),
	combout => \shifter|s_shiftReg~19_combout\);

-- Location: LCCOMB_X106_Y22_N6
\shifter|s_shiftReg~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg~20_combout\ = (\shifter|s_shiftReg[5]~3_combout\ & ((\shifter|s_shiftReg~19_combout\ & ((\shifter|RotateLeft0~11_combout\))) # (!\shifter|s_shiftReg~19_combout\ & (\shifter|RotateLeft0~13_combout\)))) # 
-- (!\shifter|s_shiftReg[5]~3_combout\ & (((\shifter|s_shiftReg~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|RotateLeft0~13_combout\,
	datab => \shifter|s_shiftReg[5]~3_combout\,
	datac => \shifter|RotateLeft0~11_combout\,
	datad => \shifter|s_shiftReg~19_combout\,
	combout => \shifter|s_shiftReg~20_combout\);

-- Location: LCCOMB_X106_Y22_N22
\shifter|s_shiftReg~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg~21_combout\ = (\SW[10]~input_o\ & (\SW[6]~input_o\)) # (!\SW[10]~input_o\ & ((\shifter|s_shiftReg~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \shifter|s_shiftReg~20_combout\,
	combout => \shifter|s_shiftReg~21_combout\);

-- Location: FF_X106_Y22_N23
\shifter|s_shiftReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|ALT_INV_clkOut~clkctrl_outclk\,
	d => \shifter|s_shiftReg~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifter|s_shiftReg\(6));

-- Location: LCCOMB_X106_Y22_N26
\shifter|s_shiftReg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg~16_combout\ = (\shifter|s_shiftReg[5]~2_combout\ & (((\shifter|s_shiftReg[5]~3_combout\)))) # (!\shifter|s_shiftReg[5]~2_combout\ & ((\shifter|s_shiftReg[5]~3_combout\ & ((\shifter|RotateLeft0~9_combout\))) # 
-- (!\shifter|s_shiftReg[5]~3_combout\ & (\shifter|s_shiftReg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|s_shiftReg\(4),
	datab => \shifter|s_shiftReg[5]~2_combout\,
	datac => \shifter|s_shiftReg[5]~3_combout\,
	datad => \shifter|RotateLeft0~9_combout\,
	combout => \shifter|s_shiftReg~16_combout\);

-- Location: LCCOMB_X106_Y22_N2
\shifter|RotateLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~4_combout\ = (\SW[16]~input_o\ & (\shifter|s_shiftReg\(6))) # (!\SW[16]~input_o\ & ((\shifter|s_shiftReg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \shifter|s_shiftReg\(6),
	datad => \shifter|s_shiftReg\(0),
	combout => \shifter|RotateLeft0~4_combout\);

-- Location: LCCOMB_X106_Y22_N10
\shifter|RotateLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~7_combout\ = (\SW[15]~input_o\ & (\shifter|RotateLeft0~4_combout\)) # (!\SW[15]~input_o\ & ((\shifter|RotateLeft0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shifter|RotateLeft0~4_combout\,
	datac => \SW[15]~input_o\,
	datad => \shifter|RotateLeft0~6_combout\,
	combout => \shifter|RotateLeft0~7_combout\);

-- Location: LCCOMB_X106_Y22_N28
\shifter|s_shiftReg~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg~17_combout\ = (\shifter|s_shiftReg[5]~2_combout\ & ((\shifter|s_shiftReg~16_combout\ & ((\shifter|RotateLeft0~7_combout\))) # (!\shifter|s_shiftReg~16_combout\ & (\shifter|s_shiftReg\(6))))) # (!\shifter|s_shiftReg[5]~2_combout\ & 
-- (((\shifter|s_shiftReg~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|s_shiftReg\(6),
	datab => \shifter|s_shiftReg[5]~2_combout\,
	datac => \shifter|s_shiftReg~16_combout\,
	datad => \shifter|RotateLeft0~7_combout\,
	combout => \shifter|s_shiftReg~17_combout\);

-- Location: LCCOMB_X106_Y22_N4
\shifter|s_shiftReg~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg~18_combout\ = (\SW[10]~input_o\ & (\SW[5]~input_o\)) # (!\SW[10]~input_o\ & ((\shifter|s_shiftReg~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \shifter|s_shiftReg~17_combout\,
	combout => \shifter|s_shiftReg~18_combout\);

-- Location: FF_X106_Y22_N5
\shifter|s_shiftReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|ALT_INV_clkOut~clkctrl_outclk\,
	d => \shifter|s_shiftReg~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifter|s_shiftReg\(5));

-- Location: LCCOMB_X108_Y22_N30
\shifter|s_shiftReg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg~13_combout\ = (\shifter|s_shiftReg[5]~3_combout\ & (\shifter|s_shiftReg[5]~2_combout\)) # (!\shifter|s_shiftReg[5]~3_combout\ & ((\shifter|s_shiftReg[5]~2_combout\ & (\shifter|s_shiftReg\(5))) # (!\shifter|s_shiftReg[5]~2_combout\ & 
-- ((\shifter|s_shiftReg\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|s_shiftReg[5]~3_combout\,
	datab => \shifter|s_shiftReg[5]~2_combout\,
	datac => \shifter|s_shiftReg\(5),
	datad => \shifter|s_shiftReg\(3),
	combout => \shifter|s_shiftReg~13_combout\);

-- Location: LCCOMB_X106_Y22_N16
\shifter|RotateLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~5_combout\ = (\SW[15]~input_o\ & ((\shifter|RotateLeft0~3_combout\))) # (!\SW[15]~input_o\ & (\shifter|RotateLeft0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \shifter|RotateLeft0~4_combout\,
	datad => \shifter|RotateLeft0~3_combout\,
	combout => \shifter|RotateLeft0~5_combout\);

-- Location: LCCOMB_X108_Y22_N22
\shifter|RotateLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~2_combout\ = (\SW[15]~input_o\ & (\shifter|RotateLeft0~0_combout\)) # (!\SW[15]~input_o\ & ((\shifter|RotateLeft0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \shifter|RotateLeft0~0_combout\,
	datad => \shifter|RotateLeft0~1_combout\,
	combout => \shifter|RotateLeft0~2_combout\);

-- Location: LCCOMB_X107_Y22_N18
\shifter|s_shiftReg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg~14_combout\ = (\shifter|s_shiftReg~13_combout\ & (((\shifter|RotateLeft0~5_combout\)) # (!\shifter|s_shiftReg[5]~3_combout\))) # (!\shifter|s_shiftReg~13_combout\ & (\shifter|s_shiftReg[5]~3_combout\ & 
-- ((\shifter|RotateLeft0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|s_shiftReg~13_combout\,
	datab => \shifter|s_shiftReg[5]~3_combout\,
	datac => \shifter|RotateLeft0~5_combout\,
	datad => \shifter|RotateLeft0~2_combout\,
	combout => \shifter|s_shiftReg~14_combout\);

-- Location: LCCOMB_X107_Y22_N4
\shifter|s_shiftReg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg~15_combout\ = (\SW[10]~input_o\ & (\SW[4]~input_o\)) # (!\SW[10]~input_o\ & ((\shifter|s_shiftReg~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \shifter|s_shiftReg~14_combout\,
	combout => \shifter|s_shiftReg~15_combout\);

-- Location: FF_X107_Y22_N5
\shifter|s_shiftReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|ALT_INV_clkOut~clkctrl_outclk\,
	d => \shifter|s_shiftReg~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifter|s_shiftReg\(4));

-- Location: LCCOMB_X107_Y22_N8
\shifter|RotateLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~1_combout\ = (\SW[16]~input_o\ & ((\shifter|s_shiftReg\(2)))) # (!\SW[16]~input_o\ & (\shifter|s_shiftReg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datac => \shifter|s_shiftReg\(4),
	datad => \shifter|s_shiftReg\(2),
	combout => \shifter|RotateLeft0~1_combout\);

-- Location: LCCOMB_X106_Y22_N0
\shifter|RotateLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~9_combout\ = (\SW[15]~input_o\ & (\shifter|RotateLeft0~1_combout\)) # (!\SW[15]~input_o\ & ((\shifter|RotateLeft0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datac => \shifter|RotateLeft0~1_combout\,
	datad => \shifter|RotateLeft0~8_combout\,
	combout => \shifter|RotateLeft0~9_combout\);

-- Location: LCCOMB_X106_Y22_N12
\shifter|s_shiftReg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg~4_combout\ = (\shifter|s_shiftReg[5]~2_combout\ & (((\shifter|s_shiftReg[5]~3_combout\)))) # (!\shifter|s_shiftReg[5]~2_combout\ & ((\shifter|s_shiftReg[5]~3_combout\ & ((\shifter|RotateLeft0~7_combout\))) # 
-- (!\shifter|s_shiftReg[5]~3_combout\ & (\shifter|s_shiftReg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|s_shiftReg[5]~2_combout\,
	datab => \shifter|s_shiftReg\(0),
	datac => \shifter|s_shiftReg[5]~3_combout\,
	datad => \shifter|RotateLeft0~7_combout\,
	combout => \shifter|s_shiftReg~4_combout\);

-- Location: LCCOMB_X106_Y22_N14
\shifter|s_shiftReg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg~5_combout\ = (\shifter|s_shiftReg[5]~2_combout\ & ((\shifter|s_shiftReg~4_combout\ & (\shifter|RotateLeft0~9_combout\)) # (!\shifter|s_shiftReg~4_combout\ & ((\shifter|s_shiftReg\(2)))))) # (!\shifter|s_shiftReg[5]~2_combout\ & 
-- (((\shifter|s_shiftReg~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|s_shiftReg[5]~2_combout\,
	datab => \shifter|RotateLeft0~9_combout\,
	datac => \shifter|s_shiftReg\(2),
	datad => \shifter|s_shiftReg~4_combout\,
	combout => \shifter|s_shiftReg~5_combout\);

-- Location: LCCOMB_X107_Y22_N2
\shifter|s_shiftReg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg~6_combout\ = (\SW[10]~input_o\ & (\SW[1]~input_o\)) # (!\SW[10]~input_o\ & ((\shifter|s_shiftReg~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \shifter|s_shiftReg~5_combout\,
	combout => \shifter|s_shiftReg~6_combout\);

-- Location: FF_X107_Y22_N3
\shifter|s_shiftReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|ALT_INV_clkOut~clkctrl_outclk\,
	d => \shifter|s_shiftReg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifter|s_shiftReg\(1));

-- Location: LCCOMB_X107_Y22_N10
\shifter|s_shiftReg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg~1_combout\ = (\KEY[0]~input_o\ & ((\SW[17]~input_o\ & ((\shifter|RotateLeft0~2_combout\))) # (!\SW[17]~input_o\ & (\shifter|RotateLeft0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \KEY[0]~input_o\,
	datac => \shifter|RotateLeft0~5_combout\,
	datad => \shifter|RotateLeft0~2_combout\,
	combout => \shifter|s_shiftReg~1_combout\);

-- Location: LCCOMB_X107_Y22_N24
\shifter|s_shiftReg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|s_shiftReg[0]~0_combout\ = (\KEY[1]~input_o\ & ((\shifter|s_shiftReg~1_combout\))) # (!\KEY[1]~input_o\ & (\shifter|s_shiftReg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \shifter|s_shiftReg\(1),
	datad => \shifter|s_shiftReg~1_combout\,
	combout => \shifter|s_shiftReg[0]~0_combout\);

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

-- Location: FF_X107_Y22_N25
\shifter|s_shiftReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|ALT_INV_clkOut~clkctrl_outclk\,
	d => \shifter|s_shiftReg[0]~0_combout\,
	asdata => \SW[0]~input_o\,
	sload => \SW[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifter|s_shiftReg\(0));

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


