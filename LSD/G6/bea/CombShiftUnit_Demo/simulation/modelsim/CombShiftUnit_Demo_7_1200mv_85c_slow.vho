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

-- DATE "03/20/2017 17:58:34"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CombShiftUnit_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END CombShiftUnit_Demo;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \shifter|ShiftRight0~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \shifter|RotateLeft0~4_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \shifter|RotateLeft0~3_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~5_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \shifter|dataOut[0]~1_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \shifter|RotateLeft0~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \shifter|RotateLeft0~1_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~2_combout\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \shifter|dataOut[0]~2_combout\ : std_logic;
SIGNAL \shifter|ShiftRight1~0_combout\ : std_logic;
SIGNAL \shifter|RotateRight0~0_combout\ : std_logic;
SIGNAL \shifter|ShiftRight1~1_combout\ : std_logic;
SIGNAL \shifter|ShiftRight1~2_combout\ : std_logic;
SIGNAL \shifter|RotateRight0~1_combout\ : std_logic;
SIGNAL \shifter|ShiftRight1~3_combout\ : std_logic;
SIGNAL \shifter|dataOut[0]~0_combout\ : std_logic;
SIGNAL \shifter|dataOut[0]~3_combout\ : std_logic;
SIGNAL \shifter|dataOut[2]~10_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \shifter|dataOut[2]~4_combout\ : std_logic;
SIGNAL \shifter|ShiftRight0~1_combout\ : std_logic;
SIGNAL \shifter|ShiftRight1~4_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~8_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~9_combout\ : std_logic;
SIGNAL \shifter|dataOut[2]~5_combout\ : std_logic;
SIGNAL \shifter|dataOut[2]~6_combout\ : std_logic;
SIGNAL \shifter|RotateRight0~2_combout\ : std_logic;
SIGNAL \shifter|RotateRight0~3_combout\ : std_logic;
SIGNAL \shifter|dataOut[2]~7_combout\ : std_logic;
SIGNAL \shifter|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \shifter|dataOut[1]~8_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~6_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~7_combout\ : std_logic;
SIGNAL \shifter|dataOut[1]~9_combout\ : std_logic;
SIGNAL \shifter|dataOut[1]~11_combout\ : std_logic;
SIGNAL \shifter|ShiftRight1~5_combout\ : std_logic;
SIGNAL \shifter|ShiftRight1~6_combout\ : std_logic;
SIGNAL \shifter|ShiftRight0~2_combout\ : std_logic;
SIGNAL \shifter|dataOut[1]~12_combout\ : std_logic;
SIGNAL \shifter|ShiftRight0~3_combout\ : std_logic;
SIGNAL \shifter|ShiftRight1~7_combout\ : std_logic;
SIGNAL \shifter|dataOut[2]~15_combout\ : std_logic;
SIGNAL \shifter|RotateRight0~6_combout\ : std_logic;
SIGNAL \shifter|RotateRight0~7_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~12_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~13_combout\ : std_logic;
SIGNAL \shifter|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~10_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~11_combout\ : std_logic;
SIGNAL \shifter|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \shifter|RotateRight0~4_combout\ : std_logic;
SIGNAL \shifter|RotateRight0~5_combout\ : std_logic;
SIGNAL \shifter|dataOut[2]~13_combout\ : std_logic;
SIGNAL \shifter|dataOut[2]~14_combout\ : std_logic;
SIGNAL \shifter|dataOut[2]~16_combout\ : std_logic;
SIGNAL \shifter|dataOut[3]~17_combout\ : std_logic;
SIGNAL \shifter|dataOut~18_combout\ : std_logic;
SIGNAL \shifter|RotateRight0~9_combout\ : std_logic;
SIGNAL \shifter|RotateRight0~10_combout\ : std_logic;
SIGNAL \shifter|dataOut[3]~19_combout\ : std_logic;
SIGNAL \shifter|RotateRight0~8_combout\ : std_logic;
SIGNAL \shifter|dataOut[3]~20_combout\ : std_logic;
SIGNAL \shifter|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~14_combout\ : std_logic;
SIGNAL \shifter|dataOut[3]~21_combout\ : std_logic;
SIGNAL \shifter|RotateRight0~11_combout\ : std_logic;
SIGNAL \shifter|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \shifter|RotateLeft0~15_combout\ : std_logic;
SIGNAL \shifter|dataOut~22_combout\ : std_logic;
SIGNAL \shifter|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \shifter|dataOut[4]~23_combout\ : std_logic;
SIGNAL \shifter|dataOut[4]~24_combout\ : std_logic;
SIGNAL \shifter|dataOut[5]~26_combout\ : std_logic;
SIGNAL \shifter|dataOut[5]~28_combout\ : std_logic;
SIGNAL \shifter|dataOut[5]~27_combout\ : std_logic;
SIGNAL \shifter|dataOut[5]~29_combout\ : std_logic;
SIGNAL \shifter|dataOut[5]~30_combout\ : std_logic;
SIGNAL \shifter|dataOut[5]~25_combout\ : std_logic;
SIGNAL \shifter|dataOut[5]~31_combout\ : std_logic;
SIGNAL \shifter|dataOut[5]~32_combout\ : std_logic;
SIGNAL \shifter|dataOut[5]~33_combout\ : std_logic;
SIGNAL \shifter|dataOut[5]~34_combout\ : std_logic;
SIGNAL \shifter|dataOut[6]~35_combout\ : std_logic;
SIGNAL \shifter|dataOut[6]~36_combout\ : std_logic;
SIGNAL \shifter|dataOut[6]~37_combout\ : std_logic;
SIGNAL \shifter|dataOut[6]~38_combout\ : std_logic;
SIGNAL \shifter|dataOut[6]~39_combout\ : std_logic;
SIGNAL \shifter|dataOut[7]~42_combout\ : std_logic;
SIGNAL \shifter|dataOut[7]~43_combout\ : std_logic;
SIGNAL \shifter|dataOut[7]~44_combout\ : std_logic;
SIGNAL \shifter|dataOut[7]~45_combout\ : std_logic;
SIGNAL \shifter|dataOut[7]~40_combout\ : std_logic;
SIGNAL \shifter|dataOut[7]~41_combout\ : std_logic;
SIGNAL \shifter|dataOut[7]~46_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shifter|dataOut[0]~3_combout\,
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
	i => \shifter|dataOut[1]~12_combout\,
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
	i => \shifter|dataOut[2]~16_combout\,
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
	i => \shifter|dataOut[3]~21_combout\,
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
	i => \shifter|dataOut[4]~24_combout\,
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
	i => \shifter|dataOut[5]~34_combout\,
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
	i => \shifter|dataOut[6]~39_combout\,
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
	i => \shifter|dataOut[7]~46_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

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

-- Location: LCCOMB_X112_Y12_N6
\shifter|ShiftRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|ShiftRight0~0_combout\ = (!\SW[12]~input_o\ & !\SW[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[12]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \shifter|ShiftRight0~0_combout\);

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

-- Location: LCCOMB_X112_Y12_N18
\shifter|RotateLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~4_combout\ = (\SW[12]~input_o\ & (\SW[5]~input_o\)) # (!\SW[12]~input_o\ & ((\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \shifter|RotateLeft0~4_combout\);

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

-- Location: LCCOMB_X112_Y12_N8
\shifter|RotateLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~3_combout\ = (!\SW[11]~input_o\ & ((\SW[12]~input_o\ & (\SW[6]~input_o\)) # (!\SW[12]~input_o\ & ((\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \shifter|RotateLeft0~3_combout\);

-- Location: LCCOMB_X112_Y12_N28
\shifter|RotateLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~5_combout\ = (\shifter|RotateLeft0~3_combout\) # ((\shifter|RotateLeft0~4_combout\ & \SW[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shifter|RotateLeft0~4_combout\,
	datac => \shifter|RotateLeft0~3_combout\,
	datad => \SW[11]~input_o\,
	combout => \shifter|RotateLeft0~5_combout\);

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

-- Location: LCCOMB_X109_Y15_N26
\shifter|dataOut[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[0]~1_combout\ = (\SW[8]~input_o\ & (((\shifter|RotateLeft0~5_combout\)))) # (!\SW[8]~input_o\ & (\shifter|ShiftRight0~0_combout\ & (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|ShiftRight0~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \shifter|RotateLeft0~5_combout\,
	datad => \SW[8]~input_o\,
	combout => \shifter|dataOut[0]~1_combout\);

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

-- Location: LCCOMB_X109_Y13_N20
\shifter|RotateLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~0_combout\ = (\SW[12]~input_o\ & (\SW[1]~input_o\)) # (!\SW[12]~input_o\ & ((\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[12]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \shifter|RotateLeft0~0_combout\);

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

-- Location: LCCOMB_X111_Y14_N28
\shifter|RotateLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~1_combout\ = (\SW[12]~input_o\ & (\SW[2]~input_o\)) # (!\SW[12]~input_o\ & ((\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \shifter|RotateLeft0~1_combout\);

-- Location: LCCOMB_X109_Y13_N30
\shifter|RotateLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~2_combout\ = (\SW[11]~input_o\ & (\shifter|RotateLeft0~0_combout\)) # (!\SW[11]~input_o\ & ((\shifter|RotateLeft0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \shifter|RotateLeft0~0_combout\,
	datac => \shifter|RotateLeft0~1_combout\,
	combout => \shifter|RotateLeft0~2_combout\);

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

-- Location: LCCOMB_X109_Y15_N20
\shifter|dataOut[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[0]~2_combout\ = (\SW[13]~input_o\ & (((\shifter|RotateLeft0~2_combout\ & \SW[8]~input_o\)))) # (!\SW[13]~input_o\ & (\shifter|dataOut[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|dataOut[0]~1_combout\,
	datab => \shifter|RotateLeft0~2_combout\,
	datac => \SW[13]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \shifter|dataOut[0]~2_combout\);

-- Location: LCCOMB_X109_Y13_N8
\shifter|ShiftRight1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|ShiftRight1~0_combout\ = (\SW[11]~input_o\ & ((\SW[12]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[12]~input_o\ & (\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \shifter|ShiftRight1~0_combout\);

-- Location: LCCOMB_X111_Y14_N0
\shifter|RotateRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateRight0~0_combout\ = (\SW[12]~input_o\ & (\SW[6]~input_o\)) # (!\SW[12]~input_o\ & ((\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \shifter|RotateRight0~0_combout\);

-- Location: LCCOMB_X110_Y11_N8
\shifter|ShiftRight1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|ShiftRight1~1_combout\ = (\shifter|ShiftRight1~0_combout\) # ((!\SW[11]~input_o\ & \shifter|RotateRight0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \shifter|ShiftRight1~0_combout\,
	datac => \shifter|RotateRight0~0_combout\,
	combout => \shifter|ShiftRight1~1_combout\);

-- Location: LCCOMB_X109_Y13_N26
\shifter|ShiftRight1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|ShiftRight1~2_combout\ = (\SW[12]~input_o\ & ((\SW[3]~input_o\))) # (!\SW[12]~input_o\ & (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[12]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \shifter|ShiftRight1~2_combout\);

-- Location: LCCOMB_X111_Y14_N18
\shifter|RotateRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateRight0~1_combout\ = (\SW[12]~input_o\ & (\SW[2]~input_o\)) # (!\SW[12]~input_o\ & ((\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \shifter|RotateRight0~1_combout\);

-- Location: LCCOMB_X110_Y11_N26
\shifter|ShiftRight1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|ShiftRight1~3_combout\ = (\SW[11]~input_o\ & (\shifter|ShiftRight1~2_combout\)) # (!\SW[11]~input_o\ & ((\shifter|RotateRight0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \shifter|ShiftRight1~2_combout\,
	datac => \shifter|RotateRight0~1_combout\,
	combout => \shifter|ShiftRight1~3_combout\);

-- Location: LCCOMB_X109_Y15_N24
\shifter|dataOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[0]~0_combout\ = (!\SW[9]~input_o\ & ((\SW[13]~input_o\ & (\shifter|ShiftRight1~1_combout\)) # (!\SW[13]~input_o\ & ((\shifter|ShiftRight1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \shifter|ShiftRight1~1_combout\,
	datac => \SW[13]~input_o\,
	datad => \shifter|ShiftRight1~3_combout\,
	combout => \shifter|dataOut[0]~0_combout\);

-- Location: LCCOMB_X109_Y15_N22
\shifter|dataOut[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[0]~3_combout\ = (\shifter|dataOut[0]~0_combout\) # ((\SW[9]~input_o\ & \shifter|dataOut[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \shifter|dataOut[0]~2_combout\,
	datad => \shifter|dataOut[0]~0_combout\,
	combout => \shifter|dataOut[0]~3_combout\);

-- Location: LCCOMB_X111_Y13_N10
\shifter|dataOut[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[2]~10_combout\ = ((\SW[9]~input_o\) # (\SW[8]~input_o\)) # (!\SW[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[13]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \shifter|dataOut[2]~10_combout\);

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

-- Location: LCCOMB_X111_Y13_N16
\shifter|dataOut[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[2]~4_combout\ = (!\SW[9]~input_o\ & (((\SW[10]~input_o\ & !\SW[8]~input_o\)) # (!\SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \shifter|dataOut[2]~4_combout\);

-- Location: LCCOMB_X112_Y12_N16
\shifter|ShiftRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|ShiftRight0~1_combout\ = (!\SW[12]~input_o\ & ((\SW[11]~input_o\ & (\SW[6]~input_o\)) # (!\SW[11]~input_o\ & ((\SW[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \shifter|ShiftRight0~1_combout\);

-- Location: LCCOMB_X112_Y12_N26
\shifter|ShiftRight1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|ShiftRight1~4_combout\ = (\shifter|ShiftRight0~1_combout\) # ((!\SW[11]~input_o\ & (\SW[12]~input_o\ & \SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \shifter|ShiftRight0~1_combout\,
	datac => \SW[12]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \shifter|ShiftRight1~4_combout\);

-- Location: LCCOMB_X109_Y13_N10
\shifter|RotateLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~8_combout\ = (\SW[12]~input_o\ & ((\SW[3]~input_o\))) # (!\SW[12]~input_o\ & (\SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \shifter|RotateLeft0~8_combout\);

-- Location: LCCOMB_X109_Y13_N12
\shifter|RotateLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~9_combout\ = (\SW[11]~input_o\ & (\shifter|RotateLeft0~1_combout\)) # (!\SW[11]~input_o\ & ((\shifter|RotateLeft0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|RotateLeft0~1_combout\,
	datac => \SW[11]~input_o\,
	datad => \shifter|RotateLeft0~8_combout\,
	combout => \shifter|RotateLeft0~9_combout\);

-- Location: LCCOMB_X112_Y13_N2
\shifter|dataOut[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[2]~5_combout\ = (\SW[8]~input_o\ & \SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \shifter|dataOut[2]~5_combout\);

-- Location: LCCOMB_X112_Y13_N12
\shifter|dataOut[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[2]~6_combout\ = (\SW[8]~input_o\ & ((!\SW[9]~input_o\))) # (!\SW[8]~input_o\ & (!\SW[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \shifter|dataOut[2]~6_combout\);

-- Location: LCCOMB_X112_Y12_N22
\shifter|RotateRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateRight0~2_combout\ = (\SW[12]~input_o\ & ((\SW[11]~input_o\ & ((\SW[0]~input_o\))) # (!\SW[11]~input_o\ & (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \shifter|RotateRight0~2_combout\);

-- Location: LCCOMB_X112_Y12_N0
\shifter|RotateRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateRight0~3_combout\ = (\shifter|RotateRight0~2_combout\) # (\shifter|ShiftRight0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shifter|RotateRight0~2_combout\,
	datad => \shifter|ShiftRight0~1_combout\,
	combout => \shifter|RotateRight0~3_combout\);

-- Location: LCCOMB_X112_Y13_N14
\shifter|dataOut[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[2]~7_combout\ = (\SW[8]~input_o\ & ((\SW[13]~input_o\) # (!\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \shifter|dataOut[2]~7_combout\);

-- Location: LCCOMB_X109_Y13_N24
\shifter|ShiftLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|ShiftLeft0~0_combout\ = (!\SW[12]~input_o\ & ((\SW[11]~input_o\ & (\SW[0]~input_o\)) # (!\SW[11]~input_o\ & ((\SW[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \shifter|ShiftLeft0~0_combout\);

-- Location: LCCOMB_X112_Y13_N0
\shifter|dataOut[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[1]~8_combout\ = (\shifter|dataOut[2]~6_combout\ & ((\shifter|dataOut[2]~7_combout\ & (\shifter|RotateRight0~3_combout\)) # (!\shifter|dataOut[2]~7_combout\ & ((\shifter|ShiftLeft0~0_combout\))))) # (!\shifter|dataOut[2]~6_combout\ & 
-- (((\shifter|dataOut[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|dataOut[2]~6_combout\,
	datab => \shifter|RotateRight0~3_combout\,
	datac => \shifter|dataOut[2]~7_combout\,
	datad => \shifter|ShiftLeft0~0_combout\,
	combout => \shifter|dataOut[1]~8_combout\);

-- Location: LCCOMB_X112_Y12_N4
\shifter|RotateLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~6_combout\ = (\SW[12]~input_o\ & ((\SW[11]~input_o\ & (\SW[6]~input_o\)) # (!\SW[11]~input_o\ & ((\SW[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \shifter|RotateLeft0~6_combout\);

-- Location: LCCOMB_X112_Y13_N24
\shifter|RotateLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~7_combout\ = (\shifter|ShiftLeft0~0_combout\) # (\shifter|RotateLeft0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shifter|ShiftLeft0~0_combout\,
	datac => \shifter|RotateLeft0~6_combout\,
	combout => \shifter|RotateLeft0~7_combout\);

-- Location: LCCOMB_X112_Y13_N18
\shifter|dataOut[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[1]~9_combout\ = (\shifter|dataOut[2]~5_combout\ & ((\shifter|dataOut[1]~8_combout\ & (\shifter|RotateLeft0~9_combout\)) # (!\shifter|dataOut[1]~8_combout\ & ((\shifter|RotateLeft0~7_combout\))))) # (!\shifter|dataOut[2]~5_combout\ & 
-- (((\shifter|dataOut[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|RotateLeft0~9_combout\,
	datab => \shifter|dataOut[2]~5_combout\,
	datac => \shifter|dataOut[1]~8_combout\,
	datad => \shifter|RotateLeft0~7_combout\,
	combout => \shifter|dataOut[1]~9_combout\);

-- Location: LCCOMB_X111_Y13_N12
\shifter|dataOut[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[1]~11_combout\ = (\shifter|dataOut[2]~10_combout\ & ((\shifter|dataOut[2]~4_combout\) # ((\shifter|dataOut[1]~9_combout\)))) # (!\shifter|dataOut[2]~10_combout\ & (!\shifter|dataOut[2]~4_combout\ & (\shifter|ShiftRight1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|dataOut[2]~10_combout\,
	datab => \shifter|dataOut[2]~4_combout\,
	datac => \shifter|ShiftRight1~4_combout\,
	datad => \shifter|dataOut[1]~9_combout\,
	combout => \shifter|dataOut[1]~11_combout\);

-- Location: LCCOMB_X111_Y14_N30
\shifter|ShiftRight1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|ShiftRight1~5_combout\ = (\SW[12]~input_o\ & ((\SW[4]~input_o\))) # (!\SW[12]~input_o\ & (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \shifter|ShiftRight1~5_combout\);

-- Location: LCCOMB_X111_Y13_N14
\shifter|ShiftRight1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|ShiftRight1~6_combout\ = (\SW[11]~input_o\ & ((\shifter|ShiftRight1~5_combout\))) # (!\SW[11]~input_o\ & (\shifter|ShiftRight1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shifter|ShiftRight1~2_combout\,
	datac => \shifter|ShiftRight1~5_combout\,
	datad => \SW[11]~input_o\,
	combout => \shifter|ShiftRight1~6_combout\);

-- Location: LCCOMB_X112_Y12_N10
\shifter|ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|ShiftRight0~2_combout\ = (\shifter|ShiftRight0~1_combout\) # ((\SW[12]~input_o\ & \SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shifter|ShiftRight0~1_combout\,
	datac => \SW[12]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \shifter|ShiftRight0~2_combout\);

-- Location: LCCOMB_X111_Y13_N24
\shifter|dataOut[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[1]~12_combout\ = (\shifter|dataOut[1]~11_combout\ & (((\shifter|ShiftRight1~6_combout\)) # (!\shifter|dataOut[2]~4_combout\))) # (!\shifter|dataOut[1]~11_combout\ & (\shifter|dataOut[2]~4_combout\ & ((\shifter|ShiftRight0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|dataOut[1]~11_combout\,
	datab => \shifter|dataOut[2]~4_combout\,
	datac => \shifter|ShiftRight1~6_combout\,
	datad => \shifter|ShiftRight0~2_combout\,
	combout => \shifter|dataOut[1]~12_combout\);

-- Location: LCCOMB_X112_Y12_N2
\shifter|ShiftRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|ShiftRight0~3_combout\ = (\SW[11]~input_o\ & (((\SW[7]~input_o\)))) # (!\SW[11]~input_o\ & ((\SW[12]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[12]~input_o\ & (\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \shifter|ShiftRight0~3_combout\);

-- Location: LCCOMB_X112_Y12_N12
\shifter|ShiftRight1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|ShiftRight1~7_combout\ = (!\SW[12]~input_o\ & ((\SW[11]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[11]~input_o\ & (\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \shifter|ShiftRight1~7_combout\);

-- Location: LCCOMB_X111_Y13_N28
\shifter|dataOut[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[2]~15_combout\ = (\shifter|dataOut[2]~10_combout\ & (\shifter|dataOut[2]~4_combout\)) # (!\shifter|dataOut[2]~10_combout\ & ((\shifter|dataOut[2]~4_combout\ & (\shifter|ShiftRight0~3_combout\)) # (!\shifter|dataOut[2]~4_combout\ & 
-- ((\shifter|ShiftRight1~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|dataOut[2]~10_combout\,
	datab => \shifter|dataOut[2]~4_combout\,
	datac => \shifter|ShiftRight0~3_combout\,
	datad => \shifter|ShiftRight1~7_combout\,
	combout => \shifter|dataOut[2]~15_combout\);

-- Location: LCCOMB_X109_Y13_N28
\shifter|RotateRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateRight0~6_combout\ = (\SW[12]~input_o\ & (\SW[5]~input_o\)) # (!\SW[12]~input_o\ & ((\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \shifter|RotateRight0~6_combout\);

-- Location: LCCOMB_X111_Y13_N6
\shifter|RotateRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateRight0~7_combout\ = (\SW[11]~input_o\ & (\shifter|RotateRight0~6_combout\)) # (!\SW[11]~input_o\ & ((\shifter|ShiftRight1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|RotateRight0~6_combout\,
	datac => \shifter|ShiftRight1~5_combout\,
	datad => \SW[11]~input_o\,
	combout => \shifter|RotateRight0~7_combout\);

-- Location: LCCOMB_X111_Y14_N26
\shifter|RotateLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~12_combout\ = (\SW[12]~input_o\ & ((\SW[4]~input_o\))) # (!\SW[12]~input_o\ & (\SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \shifter|RotateLeft0~12_combout\);

-- Location: LCCOMB_X111_Y13_N2
\shifter|RotateLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~13_combout\ = (\SW[11]~input_o\ & ((\shifter|RotateLeft0~8_combout\))) # (!\SW[11]~input_o\ & (\shifter|RotateLeft0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shifter|RotateLeft0~12_combout\,
	datac => \shifter|RotateLeft0~8_combout\,
	datad => \SW[11]~input_o\,
	combout => \shifter|RotateLeft0~13_combout\);

-- Location: LCCOMB_X111_Y14_N16
\shifter|ShiftLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|ShiftLeft0~1_combout\ = (\SW[12]~input_o\ & ((\SW[0]~input_o\))) # (!\SW[12]~input_o\ & (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \shifter|ShiftLeft0~1_combout\);

-- Location: LCCOMB_X109_Y13_N6
\shifter|RotateLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~10_combout\ = (\SW[11]~input_o\ & ((\SW[12]~input_o\ & (\SW[7]~input_o\)) # (!\SW[12]~input_o\ & ((\SW[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \shifter|RotateLeft0~10_combout\);

-- Location: LCCOMB_X109_Y13_N16
\shifter|RotateLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~11_combout\ = (\shifter|RotateLeft0~10_combout\) # ((\shifter|ShiftLeft0~1_combout\ & !\SW[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|ShiftLeft0~1_combout\,
	datac => \SW[11]~input_o\,
	datad => \shifter|RotateLeft0~10_combout\,
	combout => \shifter|RotateLeft0~11_combout\);

-- Location: LCCOMB_X109_Y13_N18
\shifter|ShiftLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|ShiftLeft0~2_combout\ = (\SW[11]~input_o\ & (!\SW[12]~input_o\ & ((\SW[1]~input_o\)))) # (!\SW[11]~input_o\ & (((\shifter|ShiftLeft0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \shifter|ShiftLeft0~1_combout\,
	datad => \SW[1]~input_o\,
	combout => \shifter|ShiftLeft0~2_combout\);

-- Location: LCCOMB_X112_Y12_N30
\shifter|RotateRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateRight0~4_combout\ = (\SW[12]~input_o\ & ((\SW[11]~input_o\ & (\SW[1]~input_o\)) # (!\SW[11]~input_o\ & ((\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \shifter|RotateRight0~4_combout\);

-- Location: LCCOMB_X112_Y12_N24
\shifter|RotateRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateRight0~5_combout\ = (\shifter|RotateRight0~4_combout\) # (\shifter|ShiftRight1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shifter|RotateRight0~4_combout\,
	datad => \shifter|ShiftRight1~7_combout\,
	combout => \shifter|RotateRight0~5_combout\);

-- Location: LCCOMB_X112_Y13_N4
\shifter|dataOut[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[2]~13_combout\ = (\shifter|dataOut[2]~7_combout\ & (((\shifter|RotateRight0~5_combout\) # (!\shifter|dataOut[2]~6_combout\)))) # (!\shifter|dataOut[2]~7_combout\ & (\shifter|ShiftLeft0~2_combout\ & ((\shifter|dataOut[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|ShiftLeft0~2_combout\,
	datab => \shifter|dataOut[2]~7_combout\,
	datac => \shifter|RotateRight0~5_combout\,
	datad => \shifter|dataOut[2]~6_combout\,
	combout => \shifter|dataOut[2]~13_combout\);

-- Location: LCCOMB_X112_Y13_N22
\shifter|dataOut[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[2]~14_combout\ = (\shifter|dataOut[2]~13_combout\ & ((\shifter|RotateLeft0~13_combout\) # ((!\shifter|dataOut[2]~5_combout\)))) # (!\shifter|dataOut[2]~13_combout\ & (((\shifter|RotateLeft0~11_combout\ & \shifter|dataOut[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|RotateLeft0~13_combout\,
	datab => \shifter|RotateLeft0~11_combout\,
	datac => \shifter|dataOut[2]~13_combout\,
	datad => \shifter|dataOut[2]~5_combout\,
	combout => \shifter|dataOut[2]~14_combout\);

-- Location: LCCOMB_X111_Y13_N0
\shifter|dataOut[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[2]~16_combout\ = (\shifter|dataOut[2]~10_combout\ & ((\shifter|dataOut[2]~15_combout\ & (\shifter|RotateRight0~7_combout\)) # (!\shifter|dataOut[2]~15_combout\ & ((\shifter|dataOut[2]~14_combout\))))) # (!\shifter|dataOut[2]~10_combout\ & 
-- (\shifter|dataOut[2]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|dataOut[2]~10_combout\,
	datab => \shifter|dataOut[2]~15_combout\,
	datac => \shifter|RotateRight0~7_combout\,
	datad => \shifter|dataOut[2]~14_combout\,
	combout => \shifter|dataOut[2]~16_combout\);

-- Location: LCCOMB_X110_Y11_N6
\shifter|dataOut[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[3]~17_combout\ = (\SW[13]~input_o\ & ((\SW[8]~input_o\) # (\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \shifter|dataOut[3]~17_combout\);

-- Location: LCCOMB_X110_Y11_N20
\shifter|dataOut~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut~18_combout\ = (\SW[10]~input_o\) # ((!\SW[11]~input_o\ & !\SW[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[12]~input_o\,
	combout => \shifter|dataOut~18_combout\);

-- Location: LCCOMB_X110_Y11_N24
\shifter|RotateRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateRight0~9_combout\ = (!\SW[11]~input_o\ & ((\SW[12]~input_o\ & (\SW[1]~input_o\)) # (!\SW[12]~input_o\ & ((\SW[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \shifter|RotateRight0~9_combout\);

-- Location: LCCOMB_X110_Y11_N18
\shifter|RotateRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateRight0~10_combout\ = (\shifter|RotateRight0~9_combout\) # ((\SW[11]~input_o\ & \shifter|RotateRight0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \shifter|RotateRight0~9_combout\,
	datac => \shifter|RotateRight0~1_combout\,
	combout => \shifter|RotateRight0~10_combout\);

-- Location: LCCOMB_X110_Y11_N22
\shifter|dataOut[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[3]~19_combout\ = (\SW[8]~input_o\ & (((\SW[9]~input_o\) # (\shifter|RotateRight0~10_combout\)))) # (!\SW[8]~input_o\ & (\shifter|dataOut~18_combout\ & (!\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \shifter|dataOut~18_combout\,
	datac => \SW[9]~input_o\,
	datad => \shifter|RotateRight0~10_combout\,
	combout => \shifter|dataOut[3]~19_combout\);

-- Location: LCCOMB_X110_Y11_N12
\shifter|RotateRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateRight0~8_combout\ = (!\SW[13]~input_o\ & ((\SW[11]~input_o\ & ((\shifter|RotateRight0~0_combout\))) # (!\SW[11]~input_o\ & (\shifter|RotateRight0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \shifter|RotateRight0~6_combout\,
	datac => \shifter|RotateRight0~0_combout\,
	datad => \SW[13]~input_o\,
	combout => \shifter|RotateRight0~8_combout\);

-- Location: LCCOMB_X110_Y11_N0
\shifter|dataOut[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[3]~20_combout\ = (\shifter|dataOut[3]~17_combout\ & ((\shifter|dataOut[3]~19_combout\) # ((!\SW[9]~input_o\ & \shifter|RotateRight0~8_combout\)))) # (!\shifter|dataOut[3]~17_combout\ & (!\SW[9]~input_o\ & 
-- ((\shifter|RotateRight0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|dataOut[3]~17_combout\,
	datab => \SW[9]~input_o\,
	datac => \shifter|dataOut[3]~19_combout\,
	datad => \shifter|RotateRight0~8_combout\,
	combout => \shifter|dataOut[3]~20_combout\);

-- Location: LCCOMB_X109_Y13_N22
\shifter|ShiftLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|ShiftLeft0~3_combout\ = (!\SW[13]~input_o\ & ((\SW[11]~input_o\ & ((\shifter|ShiftLeft0~1_combout\))) # (!\SW[11]~input_o\ & (\shifter|RotateLeft0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \shifter|RotateLeft0~0_combout\,
	datac => \shifter|ShiftLeft0~1_combout\,
	datad => \SW[13]~input_o\,
	combout => \shifter|ShiftLeft0~3_combout\);

-- Location: LCCOMB_X112_Y12_N20
\shifter|RotateLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~14_combout\ = (\SW[11]~input_o\ & (\shifter|RotateLeft0~12_combout\)) # (!\SW[11]~input_o\ & ((\shifter|RotateLeft0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \shifter|RotateLeft0~12_combout\,
	datad => \shifter|RotateLeft0~4_combout\,
	combout => \shifter|RotateLeft0~14_combout\);

-- Location: LCCOMB_X109_Y15_N0
\shifter|dataOut[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[3]~21_combout\ = (\SW[9]~input_o\ & ((\shifter|ShiftLeft0~3_combout\) # ((\shifter|dataOut[3]~20_combout\ & \shifter|RotateLeft0~14_combout\)))) # (!\SW[9]~input_o\ & (\shifter|dataOut[3]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \shifter|dataOut[3]~20_combout\,
	datac => \shifter|ShiftLeft0~3_combout\,
	datad => \shifter|RotateLeft0~14_combout\,
	combout => \shifter|dataOut[3]~21_combout\);

-- Location: LCCOMB_X109_Y15_N10
\shifter|RotateRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateRight0~11_combout\ = (\SW[13]~input_o\ & ((\shifter|ShiftRight1~3_combout\))) # (!\SW[13]~input_o\ & (\shifter|ShiftRight1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shifter|ShiftRight1~1_combout\,
	datac => \SW[13]~input_o\,
	datad => \shifter|ShiftRight1~3_combout\,
	combout => \shifter|RotateRight0~11_combout\);

-- Location: LCCOMB_X109_Y13_N0
\shifter|ShiftLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|ShiftLeft0~4_combout\ = (!\SW[13]~input_o\ & ((\SW[11]~input_o\ & (\shifter|RotateLeft0~0_combout\)) # (!\SW[11]~input_o\ & ((\shifter|RotateLeft0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \shifter|RotateLeft0~0_combout\,
	datac => \shifter|RotateLeft0~1_combout\,
	datad => \SW[13]~input_o\,
	combout => \shifter|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X109_Y15_N2
\shifter|RotateLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|RotateLeft0~15_combout\ = (\shifter|ShiftLeft0~4_combout\) # ((\shifter|RotateLeft0~5_combout\ & \SW[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|RotateLeft0~5_combout\,
	datab => \shifter|ShiftLeft0~4_combout\,
	datac => \SW[13]~input_o\,
	combout => \shifter|RotateLeft0~15_combout\);

-- Location: LCCOMB_X109_Y15_N14
\shifter|dataOut~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut~22_combout\ = (\SW[13]~input_o\ & (\SW[10]~input_o\ & ((\SW[7]~input_o\)))) # (!\SW[13]~input_o\ & (((\shifter|ShiftRight1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \shifter|ShiftRight1~1_combout\,
	datac => \SW[13]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \shifter|dataOut~22_combout\);

-- Location: LCCOMB_X109_Y15_N4
\shifter|ShiftLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|ShiftLeft0~5_combout\ = (\shifter|ShiftLeft0~4_combout\) # ((\shifter|ShiftRight0~0_combout\ & (\SW[13]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|ShiftRight0~0_combout\,
	datab => \shifter|ShiftLeft0~4_combout\,
	datac => \SW[13]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \shifter|ShiftLeft0~5_combout\);

-- Location: LCCOMB_X109_Y15_N16
\shifter|dataOut[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[4]~23_combout\ = (\SW[8]~input_o\ & (((\SW[9]~input_o\)))) # (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & ((\shifter|ShiftLeft0~5_combout\))) # (!\SW[9]~input_o\ & (\shifter|dataOut~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \shifter|dataOut~22_combout\,
	datac => \shifter|ShiftLeft0~5_combout\,
	datad => \SW[9]~input_o\,
	combout => \shifter|dataOut[4]~23_combout\);

-- Location: LCCOMB_X109_Y15_N12
\shifter|dataOut[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[4]~24_combout\ = (\shifter|dataOut[4]~23_combout\ & (((\shifter|RotateLeft0~15_combout\) # (!\SW[8]~input_o\)))) # (!\shifter|dataOut[4]~23_combout\ & (\shifter|RotateRight0~11_combout\ & ((\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|RotateRight0~11_combout\,
	datab => \shifter|RotateLeft0~15_combout\,
	datac => \shifter|dataOut[4]~23_combout\,
	datad => \SW[8]~input_o\,
	combout => \shifter|dataOut[4]~24_combout\);

-- Location: LCCOMB_X111_Y13_N18
\shifter|dataOut[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[5]~26_combout\ = (!\SW[9]~input_o\ & \SW[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \SW[10]~input_o\,
	combout => \shifter|dataOut[5]~26_combout\);

-- Location: LCCOMB_X111_Y13_N30
\shifter|dataOut[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[5]~28_combout\ = (\SW[9]~input_o\) # ((\SW[13]~input_o\ & \SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[13]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \shifter|dataOut[5]~28_combout\);

-- Location: LCCOMB_X111_Y13_N20
\shifter|dataOut[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[5]~27_combout\ = (\SW[9]~input_o\) # ((!\SW[13]~input_o\ & !\SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[13]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \shifter|dataOut[5]~27_combout\);

-- Location: LCCOMB_X111_Y13_N8
\shifter|dataOut[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[5]~29_combout\ = (\shifter|dataOut[5]~28_combout\ & (((\shifter|ShiftLeft0~0_combout\)) # (!\shifter|dataOut[5]~27_combout\))) # (!\shifter|dataOut[5]~28_combout\ & (\shifter|dataOut[5]~27_combout\ & (\shifter|ShiftRight1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|dataOut[5]~28_combout\,
	datab => \shifter|dataOut[5]~27_combout\,
	datac => \shifter|ShiftRight1~4_combout\,
	datad => \shifter|ShiftLeft0~0_combout\,
	combout => \shifter|dataOut[5]~29_combout\);

-- Location: LCCOMB_X111_Y13_N26
\shifter|dataOut[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[5]~30_combout\ = (\shifter|dataOut[5]~26_combout\ & ((\shifter|dataOut[5]~29_combout\ & ((\SW[7]~input_o\))) # (!\shifter|dataOut[5]~29_combout\ & (\shifter|ShiftRight0~2_combout\)))) # (!\shifter|dataOut[5]~26_combout\ & 
-- (((\shifter|dataOut[5]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|ShiftRight0~2_combout\,
	datab => \shifter|dataOut[5]~26_combout\,
	datac => \shifter|dataOut[5]~29_combout\,
	datad => \SW[7]~input_o\,
	combout => \shifter|dataOut[5]~30_combout\);

-- Location: LCCOMB_X112_Y13_N8
\shifter|dataOut[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[5]~25_combout\ = (\SW[8]~input_o\ & ((\SW[13]~input_o\) # (\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \shifter|dataOut[5]~25_combout\);

-- Location: LCCOMB_X112_Y13_N10
\shifter|dataOut[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[5]~31_combout\ = (\SW[9]~input_o\) # (!\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \shifter|dataOut[5]~31_combout\);

-- Location: LCCOMB_X112_Y13_N20
\shifter|dataOut[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[5]~32_combout\ = (\shifter|dataOut[5]~25_combout\ & (((\shifter|dataOut[5]~31_combout\)))) # (!\shifter|dataOut[5]~25_combout\ & ((\shifter|dataOut[5]~31_combout\ & (\shifter|dataOut[5]~30_combout\)) # (!\shifter|dataOut[5]~31_combout\ & 
-- ((\shifter|RotateRight0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|dataOut[5]~30_combout\,
	datab => \shifter|RotateRight0~3_combout\,
	datac => \shifter|dataOut[5]~25_combout\,
	datad => \shifter|dataOut[5]~31_combout\,
	combout => \shifter|dataOut[5]~32_combout\);

-- Location: LCCOMB_X112_Y13_N30
\shifter|dataOut[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[5]~33_combout\ = (\shifter|dataOut[5]~32_combout\ & (((\shifter|RotateLeft0~7_combout\) # (!\shifter|dataOut[5]~25_combout\)))) # (!\shifter|dataOut[5]~32_combout\ & (\shifter|ShiftRight1~6_combout\ & (\shifter|dataOut[5]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|ShiftRight1~6_combout\,
	datab => \shifter|dataOut[5]~32_combout\,
	datac => \shifter|dataOut[5]~25_combout\,
	datad => \shifter|RotateLeft0~7_combout\,
	combout => \shifter|dataOut[5]~33_combout\);

-- Location: LCCOMB_X112_Y13_N16
\shifter|dataOut[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[5]~34_combout\ = (\SW[13]~input_o\ & (((\shifter|dataOut[5]~33_combout\)))) # (!\SW[13]~input_o\ & ((\SW[9]~input_o\ & (\shifter|RotateLeft0~9_combout\)) # (!\SW[9]~input_o\ & ((\shifter|dataOut[5]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|RotateLeft0~9_combout\,
	datab => \SW[13]~input_o\,
	datac => \shifter|dataOut[5]~33_combout\,
	datad => \SW[9]~input_o\,
	combout => \shifter|dataOut[5]~34_combout\);

-- Location: LCCOMB_X111_Y13_N4
\shifter|dataOut[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[6]~35_combout\ = (\shifter|dataOut[5]~27_combout\ & ((\shifter|dataOut[5]~28_combout\ & (\shifter|ShiftLeft0~2_combout\)) # (!\shifter|dataOut[5]~28_combout\ & ((\shifter|ShiftRight1~7_combout\))))) # (!\shifter|dataOut[5]~27_combout\ & 
-- (((\shifter|dataOut[5]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|ShiftLeft0~2_combout\,
	datab => \shifter|dataOut[5]~27_combout\,
	datac => \shifter|dataOut[5]~28_combout\,
	datad => \shifter|ShiftRight1~7_combout\,
	combout => \shifter|dataOut[6]~35_combout\);

-- Location: LCCOMB_X111_Y13_N22
\shifter|dataOut[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[6]~36_combout\ = (\shifter|dataOut[6]~35_combout\ & ((\SW[7]~input_o\) # ((!\shifter|dataOut[5]~26_combout\)))) # (!\shifter|dataOut[6]~35_combout\ & (((\shifter|ShiftRight0~3_combout\ & \shifter|dataOut[5]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \shifter|dataOut[6]~35_combout\,
	datac => \shifter|ShiftRight0~3_combout\,
	datad => \shifter|dataOut[5]~26_combout\,
	combout => \shifter|dataOut[6]~36_combout\);

-- Location: LCCOMB_X112_Y13_N26
\shifter|dataOut[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[6]~37_combout\ = (\shifter|dataOut[5]~31_combout\ & (((\shifter|dataOut[5]~25_combout\)))) # (!\shifter|dataOut[5]~31_combout\ & ((\shifter|dataOut[5]~25_combout\ & ((\shifter|RotateRight0~7_combout\))) # (!\shifter|dataOut[5]~25_combout\ 
-- & (\shifter|RotateRight0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|dataOut[5]~31_combout\,
	datab => \shifter|RotateRight0~5_combout\,
	datac => \shifter|dataOut[5]~25_combout\,
	datad => \shifter|RotateRight0~7_combout\,
	combout => \shifter|dataOut[6]~37_combout\);

-- Location: LCCOMB_X112_Y13_N28
\shifter|dataOut[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[6]~38_combout\ = (\shifter|dataOut[5]~31_combout\ & ((\shifter|dataOut[6]~37_combout\ & ((\shifter|RotateLeft0~11_combout\))) # (!\shifter|dataOut[6]~37_combout\ & (\shifter|dataOut[6]~36_combout\)))) # (!\shifter|dataOut[5]~31_combout\ & 
-- (((\shifter|dataOut[6]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|dataOut[5]~31_combout\,
	datab => \shifter|dataOut[6]~36_combout\,
	datac => \shifter|dataOut[6]~37_combout\,
	datad => \shifter|RotateLeft0~11_combout\,
	combout => \shifter|dataOut[6]~38_combout\);

-- Location: LCCOMB_X112_Y13_N6
\shifter|dataOut[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[6]~39_combout\ = (\SW[13]~input_o\ & (((\shifter|dataOut[6]~38_combout\)))) # (!\SW[13]~input_o\ & ((\SW[9]~input_o\ & (\shifter|RotateLeft0~13_combout\)) # (!\SW[9]~input_o\ & ((\shifter|dataOut[6]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|RotateLeft0~13_combout\,
	datab => \shifter|dataOut[6]~38_combout\,
	datac => \SW[13]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \shifter|dataOut[6]~39_combout\);

-- Location: LCCOMB_X110_Y11_N10
\shifter|dataOut[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[7]~42_combout\ = (\SW[13]~input_o\ & ((\SW[11]~input_o\ & ((\shifter|RotateRight0~0_combout\))) # (!\SW[11]~input_o\ & (\shifter|RotateRight0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \shifter|RotateRight0~6_combout\,
	datac => \shifter|RotateRight0~0_combout\,
	datad => \SW[13]~input_o\,
	combout => \shifter|dataOut[7]~42_combout\);

-- Location: LCCOMB_X110_Y11_N4
\shifter|dataOut[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[7]~43_combout\ = (\SW[8]~input_o\ & ((\shifter|dataOut[7]~42_combout\) # ((\shifter|RotateRight0~10_combout\ & !\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|dataOut[7]~42_combout\,
	datab => \shifter|RotateRight0~10_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \shifter|dataOut[7]~43_combout\);

-- Location: LCCOMB_X109_Y15_N8
\shifter|dataOut[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[7]~44_combout\ = (!\SW[8]~input_o\ & \SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \shifter|dataOut[7]~44_combout\);

-- Location: LCCOMB_X109_Y15_N18
\shifter|dataOut[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[7]~45_combout\ = (\shifter|dataOut[7]~44_combout\ & ((\SW[10]~input_o\) # ((!\SW[13]~input_o\ & \shifter|ShiftRight0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \shifter|dataOut[7]~44_combout\,
	datac => \SW[13]~input_o\,
	datad => \shifter|ShiftRight0~0_combout\,
	combout => \shifter|dataOut[7]~45_combout\);

-- Location: LCCOMB_X109_Y13_N2
\shifter|dataOut[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[7]~40_combout\ = (\SW[13]~input_o\ & ((\SW[11]~input_o\ & ((\shifter|ShiftLeft0~1_combout\))) # (!\SW[11]~input_o\ & (\shifter|RotateLeft0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \shifter|RotateLeft0~0_combout\,
	datac => \shifter|ShiftLeft0~1_combout\,
	datad => \SW[13]~input_o\,
	combout => \shifter|dataOut[7]~40_combout\);

-- Location: LCCOMB_X109_Y15_N30
\shifter|dataOut[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[7]~41_combout\ = (\SW[9]~input_o\ & ((\shifter|dataOut[7]~40_combout\) # ((\shifter|RotateLeft0~14_combout\ & !\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|dataOut[7]~40_combout\,
	datab => \shifter|RotateLeft0~14_combout\,
	datac => \SW[13]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \shifter|dataOut[7]~41_combout\);

-- Location: LCCOMB_X109_Y15_N28
\shifter|dataOut[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \shifter|dataOut[7]~46_combout\ = (\shifter|dataOut[7]~41_combout\) # ((!\SW[9]~input_o\ & ((\shifter|dataOut[7]~43_combout\) # (\shifter|dataOut[7]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|dataOut[7]~43_combout\,
	datab => \shifter|dataOut[7]~45_combout\,
	datac => \shifter|dataOut[7]~41_combout\,
	datad => \SW[9]~input_o\,
	combout => \shifter|dataOut[7]~46_combout\);

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


