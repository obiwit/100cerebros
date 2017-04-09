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

-- DATE "04/09/2017 20:02:46"

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
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0)
	);
END CombShiftUnit_Demo;

-- Design Ports Information
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \inst|dataOut~2_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst|RotateLeft0~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~1_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst|RotateLeft0~2_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst|RotateLeft0~3_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~4_combout\ : std_logic;
SIGNAL \inst|RotateRight0~1_combout\ : std_logic;
SIGNAL \inst|RotateRight0~0_combout\ : std_logic;
SIGNAL \inst|RotateRight0~2_combout\ : std_logic;
SIGNAL \inst|RotateRight0~4_combout\ : std_logic;
SIGNAL \inst|RotateRight0~3_combout\ : std_logic;
SIGNAL \inst|RotateRight0~5_combout\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \inst|dataOut[7]~3_combout\ : std_logic;
SIGNAL \inst|dataOut[7]~4_combout\ : std_logic;
SIGNAL \inst|dataOut[7]~5_combout\ : std_logic;
SIGNAL \inst|dataOut[6]~7_combout\ : std_logic;
SIGNAL \inst|ShiftRight0~1_combout\ : std_logic;
SIGNAL \inst|RotateRight0~6_combout\ : std_logic;
SIGNAL \inst|RotateRight0~7_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \inst|dataOut[6]~8_combout\ : std_logic;
SIGNAL \inst|RotateRight0~9_combout\ : std_logic;
SIGNAL \inst|RotateRight0~8_combout\ : std_logic;
SIGNAL \inst|RotateRight0~10_combout\ : std_logic;
SIGNAL \inst|dataOut[6]~9_combout\ : std_logic;
SIGNAL \inst|dataOut[6]~10_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~8_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~9_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~10_combout\ : std_logic;
SIGNAL \inst|dataOut[6]~11_combout\ : std_logic;
SIGNAL \inst|ShiftRight0~0_combout\ : std_logic;
SIGNAL \inst|dataOut[6]~6_combout\ : std_logic;
SIGNAL \inst|dataOut[6]~12_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~5_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~6_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~7_combout\ : std_logic;
SIGNAL \inst|dataOut[6]~13_combout\ : std_logic;
SIGNAL \inst|RotateRight0~12_combout\ : std_logic;
SIGNAL \inst|RotateRight0~11_combout\ : std_logic;
SIGNAL \inst|dataOut[5]~14_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~11_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \inst|dataOut[5]~15_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \inst|dataOut[5]~16_combout\ : std_logic;
SIGNAL \inst|ShiftRight0~2_combout\ : std_logic;
SIGNAL \inst|dataOut[5]~17_combout\ : std_logic;
SIGNAL \inst|ShiftRight0~3_combout\ : std_logic;
SIGNAL \inst|RotateRight0~13_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~12_combout\ : std_logic;
SIGNAL \inst|dataOut[4]~20_combout\ : std_logic;
SIGNAL \inst|dataOut[6]~18_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \inst|dataOut[4]~19_combout\ : std_logic;
SIGNAL \inst|dataOut[4]~21_combout\ : std_logic;
SIGNAL \inst|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \inst|dataOut[4]~22_combout\ : std_logic;
SIGNAL \inst|dataOut[3]~23_combout\ : std_logic;
SIGNAL \inst|dataOut[3]~43_combout\ : std_logic;
SIGNAL \inst|dataOut[3]~24_combout\ : std_logic;
SIGNAL \inst|dataOut[3]~25_combout\ : std_logic;
SIGNAL \inst|dataOut[2]~31_combout\ : std_logic;
SIGNAL \inst|dataOut[2]~30_combout\ : std_logic;
SIGNAL \inst|dataOut[2]~27_combout\ : std_logic;
SIGNAL \inst|dataOut[2]~26_combout\ : std_logic;
SIGNAL \inst|dataOut[2]~28_combout\ : std_logic;
SIGNAL \inst|dataOut[2]~29_combout\ : std_logic;
SIGNAL \inst|dataOut[2]~32_combout\ : std_logic;
SIGNAL \inst|dataOut[2]~33_combout\ : std_logic;
SIGNAL \inst|dataOut[2]~34_combout\ : std_logic;
SIGNAL \inst|RotateLeft0~13_combout\ : std_logic;
SIGNAL \inst|dataOut[1]~35_combout\ : std_logic;
SIGNAL \inst|dataOut[1]~36_combout\ : std_logic;
SIGNAL \inst|dataOut[1]~37_combout\ : std_logic;
SIGNAL \inst|dataOut[1]~38_combout\ : std_logic;
SIGNAL \inst|dataOut[0]~40_combout\ : std_logic;
SIGNAL \inst|dataOut[0]~39_combout\ : std_logic;
SIGNAL \inst|dataOut[0]~41_combout\ : std_logic;
SIGNAL \inst|dataOut[0]~42_combout\ : std_logic;

BEGIN

LEDR <= ww_LEDR;
ww_KEY <= KEY;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dataOut[7]~5_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dataOut[6]~13_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dataOut[5]~17_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dataOut[4]~22_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dataOut[3]~25_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dataOut[2]~34_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dataOut[1]~38_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dataOut[0]~42_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

-- Location: LCCOMB_X110_Y20_N0
\inst|dataOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut~2_combout\ = (\KEY[1]~input_o\) # ((!\KEY[0]~input_o\ & !\KEY[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \KEY[2]~input_o\,
	combout => \inst|dataOut~2_combout\);

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

-- Location: LCCOMB_X109_Y17_N16
\inst|RotateLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~0_combout\ = (\SW[16]~input_o\ & ((\SW[15]~input_o\ & (\SW[0]~input_o\)) # (!\SW[15]~input_o\ & ((\SW[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|RotateLeft0~0_combout\);

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

-- Location: LCCOMB_X109_Y17_N26
\inst|ShiftLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~0_combout\ = (\SW[15]~input_o\ & ((\SW[2]~input_o\))) # (!\SW[15]~input_o\ & (\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	combout => \inst|ShiftLeft0~0_combout\);

-- Location: LCCOMB_X109_Y17_N12
\inst|RotateLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~1_combout\ = (\inst|RotateLeft0~0_combout\) # ((\inst|ShiftLeft0~0_combout\ & !\SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|RotateLeft0~0_combout\,
	datac => \inst|ShiftLeft0~0_combout\,
	datad => \SW[16]~input_o\,
	combout => \inst|RotateLeft0~1_combout\);

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

-- Location: LCCOMB_X109_Y17_N14
\inst|RotateLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~2_combout\ = (!\SW[16]~input_o\ & ((\SW[15]~input_o\ & (\SW[6]~input_o\)) # (!\SW[15]~input_o\ & ((\SW[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \inst|RotateLeft0~2_combout\);

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

-- Location: LCCOMB_X110_Y17_N24
\inst|RotateLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~3_combout\ = (\SW[15]~input_o\ & ((\SW[4]~input_o\))) # (!\SW[15]~input_o\ & (\SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	combout => \inst|RotateLeft0~3_combout\);

-- Location: LCCOMB_X109_Y21_N8
\inst|RotateLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~4_combout\ = (\inst|RotateLeft0~2_combout\) # ((\SW[16]~input_o\ & \inst|RotateLeft0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datac => \inst|RotateLeft0~2_combout\,
	datad => \inst|RotateLeft0~3_combout\,
	combout => \inst|RotateLeft0~4_combout\);

-- Location: LCCOMB_X110_Y17_N12
\inst|RotateRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~1_combout\ = (\SW[15]~input_o\ & ((\SW[4]~input_o\))) # (!\SW[15]~input_o\ & (\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[4]~input_o\,
	combout => \inst|RotateRight0~1_combout\);

-- Location: LCCOMB_X110_Y17_N18
\inst|RotateRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~0_combout\ = (\SW[15]~input_o\ & ((\SW[6]~input_o\))) # (!\SW[15]~input_o\ & (\SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	combout => \inst|RotateRight0~0_combout\);

-- Location: LCCOMB_X110_Y17_N14
\inst|RotateRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~2_combout\ = (\SW[16]~input_o\ & ((\inst|RotateRight0~0_combout\))) # (!\SW[16]~input_o\ & (\inst|RotateRight0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateRight0~1_combout\,
	datab => \inst|RotateRight0~0_combout\,
	datac => \SW[16]~input_o\,
	combout => \inst|RotateRight0~2_combout\);

-- Location: LCCOMB_X109_Y17_N10
\inst|RotateRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~4_combout\ = (\SW[15]~input_o\ & (\SW[0]~input_o\)) # (!\SW[15]~input_o\ & ((\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[7]~input_o\,
	combout => \inst|RotateRight0~4_combout\);

-- Location: LCCOMB_X109_Y17_N0
\inst|RotateRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~3_combout\ = (\SW[15]~input_o\ & ((\SW[2]~input_o\))) # (!\SW[15]~input_o\ & (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	combout => \inst|RotateRight0~3_combout\);

-- Location: LCCOMB_X109_Y17_N28
\inst|RotateRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~5_combout\ = (\SW[16]~input_o\ & ((\inst|RotateRight0~3_combout\))) # (!\SW[16]~input_o\ & (\inst|RotateRight0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateRight0~4_combout\,
	datab => \inst|RotateRight0~3_combout\,
	datad => \SW[16]~input_o\,
	combout => \inst|RotateRight0~5_combout\);

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

-- Location: LCCOMB_X109_Y21_N18
\inst|dataOut[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[7]~3_combout\ = (\inst|dataOut~2_combout\ & (((\SW[17]~input_o\)))) # (!\inst|dataOut~2_combout\ & ((\SW[17]~input_o\ & (\inst|RotateRight0~2_combout\)) # (!\SW[17]~input_o\ & ((\inst|RotateRight0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateRight0~2_combout\,
	datab => \inst|RotateRight0~5_combout\,
	datac => \inst|dataOut~2_combout\,
	datad => \SW[17]~input_o\,
	combout => \inst|dataOut[7]~3_combout\);

-- Location: LCCOMB_X109_Y21_N20
\inst|dataOut[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[7]~4_combout\ = (\inst|dataOut~2_combout\ & ((\inst|dataOut[7]~3_combout\ & (\inst|RotateLeft0~1_combout\)) # (!\inst|dataOut[7]~3_combout\ & ((\inst|RotateLeft0~4_combout\))))) # (!\inst|dataOut~2_combout\ & 
-- (((\inst|dataOut[7]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut~2_combout\,
	datab => \inst|RotateLeft0~1_combout\,
	datac => \inst|RotateLeft0~4_combout\,
	datad => \inst|dataOut[7]~3_combout\,
	combout => \inst|dataOut[7]~4_combout\);

-- Location: LCCOMB_X109_Y21_N14
\inst|dataOut[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[7]~5_combout\ = (\inst|dataOut~2_combout\ & (((\inst|dataOut[7]~4_combout\)))) # (!\inst|dataOut~2_combout\ & ((\KEY[0]~input_o\ & ((\inst|dataOut[7]~4_combout\))) # (!\KEY[0]~input_o\ & (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut~2_combout\,
	datab => \SW[7]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \inst|dataOut[7]~4_combout\,
	combout => \inst|dataOut[7]~5_combout\);

-- Location: LCCOMB_X109_Y21_N10
\inst|dataOut[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[6]~7_combout\ = (\KEY[2]~input_o\ & (!\KEY[0]~input_o\ & !\KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[2]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \inst|dataOut[6]~7_combout\);

-- Location: LCCOMB_X110_Y17_N30
\inst|ShiftRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftRight0~1_combout\ = (\SW[15]~input_o\ & (\SW[5]~input_o\)) # (!\SW[15]~input_o\ & ((\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	combout => \inst|ShiftRight0~1_combout\);

-- Location: LCCOMB_X109_Y17_N8
\inst|RotateRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~6_combout\ = (\SW[15]~input_o\ & (\SW[3]~input_o\)) # (!\SW[15]~input_o\ & ((\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	combout => \inst|RotateRight0~6_combout\);

-- Location: LCCOMB_X109_Y20_N16
\inst|RotateRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~7_combout\ = (\SW[16]~input_o\ & (\inst|ShiftRight0~1_combout\)) # (!\SW[16]~input_o\ & ((\inst|RotateRight0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ShiftRight0~1_combout\,
	datab => \inst|RotateRight0~6_combout\,
	datad => \SW[16]~input_o\,
	combout => \inst|RotateRight0~7_combout\);

-- Location: LCCOMB_X109_Y17_N18
\inst|ShiftLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~1_combout\ = (!\SW[15]~input_o\ & ((\SW[16]~input_o\ & ((\SW[0]~input_o\))) # (!\SW[16]~input_o\ & (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \inst|ShiftLeft0~1_combout\);

-- Location: LCCOMB_X109_Y17_N4
\inst|ShiftLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~2_combout\ = (\inst|ShiftLeft0~1_combout\) # ((\SW[15]~input_o\ & (!\SW[16]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \inst|ShiftLeft0~1_combout\,
	datad => \SW[1]~input_o\,
	combout => \inst|ShiftLeft0~2_combout\);

-- Location: LCCOMB_X110_Y20_N18
\inst|dataOut[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[6]~8_combout\ = (\KEY[0]~input_o\ & ((\SW[17]~input_o\) # (\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \inst|dataOut[6]~8_combout\);

-- Location: LCCOMB_X110_Y17_N16
\inst|RotateRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~9_combout\ = (\SW[15]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[15]~input_o\ & (\SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|RotateRight0~9_combout\);

-- Location: LCCOMB_X109_Y17_N30
\inst|RotateRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~8_combout\ = (\SW[15]~input_o\ & (\SW[1]~input_o\)) # (!\SW[15]~input_o\ & ((\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \inst|RotateRight0~8_combout\);

-- Location: LCCOMB_X109_Y20_N26
\inst|RotateRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~10_combout\ = (\SW[16]~input_o\ & ((\inst|RotateRight0~8_combout\))) # (!\SW[16]~input_o\ & (\inst|RotateRight0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|RotateRight0~9_combout\,
	datac => \inst|RotateRight0~8_combout\,
	datad => \SW[16]~input_o\,
	combout => \inst|RotateRight0~10_combout\);

-- Location: LCCOMB_X110_Y20_N4
\inst|dataOut[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[6]~9_combout\ = (\KEY[1]~input_o\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \inst|dataOut[6]~9_combout\);

-- Location: LCCOMB_X109_Y20_N28
\inst|dataOut[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[6]~10_combout\ = (\inst|dataOut[6]~8_combout\ & (((\inst|dataOut[6]~9_combout\)))) # (!\inst|dataOut[6]~8_combout\ & ((\inst|dataOut[6]~9_combout\ & (\inst|ShiftLeft0~2_combout\)) # (!\inst|dataOut[6]~9_combout\ & 
-- ((\inst|RotateRight0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ShiftLeft0~2_combout\,
	datab => \inst|dataOut[6]~8_combout\,
	datac => \inst|RotateRight0~10_combout\,
	datad => \inst|dataOut[6]~9_combout\,
	combout => \inst|dataOut[6]~10_combout\);

-- Location: LCCOMB_X110_Y17_N10
\inst|RotateLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~8_combout\ = (\SW[15]~input_o\ & (\SW[7]~input_o\)) # (!\SW[15]~input_o\ & ((\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|RotateLeft0~8_combout\);

-- Location: LCCOMB_X109_Y17_N24
\inst|RotateLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~9_combout\ = (\SW[15]~input_o\ & (\SW[1]~input_o\)) # (!\SW[15]~input_o\ & ((\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	combout => \inst|RotateLeft0~9_combout\);

-- Location: LCCOMB_X110_Y17_N20
\inst|RotateLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~10_combout\ = (\SW[16]~input_o\ & (\inst|RotateLeft0~8_combout\)) # (!\SW[16]~input_o\ & ((\inst|RotateLeft0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateLeft0~8_combout\,
	datab => \inst|RotateLeft0~9_combout\,
	datac => \SW[16]~input_o\,
	combout => \inst|RotateLeft0~10_combout\);

-- Location: LCCOMB_X109_Y20_N6
\inst|dataOut[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[6]~11_combout\ = (\inst|dataOut[6]~10_combout\ & (((\inst|RotateLeft0~10_combout\) # (!\inst|dataOut[6]~8_combout\)))) # (!\inst|dataOut[6]~10_combout\ & (\inst|RotateRight0~7_combout\ & ((\inst|dataOut[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateRight0~7_combout\,
	datab => \inst|dataOut[6]~10_combout\,
	datac => \inst|RotateLeft0~10_combout\,
	datad => \inst|dataOut[6]~8_combout\,
	combout => \inst|dataOut[6]~11_combout\);

-- Location: LCCOMB_X109_Y17_N6
\inst|ShiftRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftRight0~0_combout\ = (\SW[15]~input_o\ & (((\SW[7]~input_o\)))) # (!\SW[15]~input_o\ & ((\SW[16]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[16]~input_o\ & (\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \inst|ShiftRight0~0_combout\);

-- Location: LCCOMB_X109_Y21_N24
\inst|dataOut[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[6]~6_combout\ = (\KEY[1]~input_o\ & (!\SW[17]~input_o\)) # (!\KEY[1]~input_o\ & (!\KEY[0]~input_o\ & (\SW[17]~input_o\ $ (!\KEY[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \KEY[2]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \inst|dataOut[6]~6_combout\);

-- Location: LCCOMB_X109_Y21_N12
\inst|dataOut[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[6]~12_combout\ = (\inst|dataOut[6]~7_combout\ & (((\inst|ShiftRight0~0_combout\) # (\inst|dataOut[6]~6_combout\)))) # (!\inst|dataOut[6]~7_combout\ & (\inst|dataOut[6]~11_combout\ & ((!\inst|dataOut[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[6]~7_combout\,
	datab => \inst|dataOut[6]~11_combout\,
	datac => \inst|ShiftRight0~0_combout\,
	datad => \inst|dataOut[6]~6_combout\,
	combout => \inst|dataOut[6]~12_combout\);

-- Location: LCCOMB_X110_Y17_N8
\inst|RotateLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~5_combout\ = (\SW[15]~input_o\ & (\SW[3]~input_o\)) # (!\SW[15]~input_o\ & ((\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[4]~input_o\,
	combout => \inst|RotateLeft0~5_combout\);

-- Location: LCCOMB_X110_Y17_N26
\inst|RotateLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~6_combout\ = (\SW[15]~input_o\ & (\SW[5]~input_o\)) # (!\SW[15]~input_o\ & ((\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	combout => \inst|RotateLeft0~6_combout\);

-- Location: LCCOMB_X110_Y17_N28
\inst|RotateLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~7_combout\ = (\SW[16]~input_o\ & (\inst|RotateLeft0~5_combout\)) # (!\SW[16]~input_o\ & ((\inst|RotateLeft0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \inst|RotateLeft0~5_combout\,
	datac => \inst|RotateLeft0~6_combout\,
	combout => \inst|RotateLeft0~7_combout\);

-- Location: LCCOMB_X109_Y21_N22
\inst|dataOut[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[6]~13_combout\ = (\inst|dataOut[6]~12_combout\ & (((\SW[7]~input_o\)) # (!\inst|dataOut[6]~6_combout\))) # (!\inst|dataOut[6]~12_combout\ & (\inst|dataOut[6]~6_combout\ & ((\inst|RotateLeft0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[6]~12_combout\,
	datab => \inst|dataOut[6]~6_combout\,
	datac => \SW[7]~input_o\,
	datad => \inst|RotateLeft0~7_combout\,
	combout => \inst|dataOut[6]~13_combout\);

-- Location: LCCOMB_X109_Y17_N20
\inst|RotateRight0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~12_combout\ = (\SW[16]~input_o\ & (\inst|RotateRight0~4_combout\)) # (!\SW[16]~input_o\ & ((\inst|RotateRight0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateRight0~4_combout\,
	datab => \inst|RotateRight0~0_combout\,
	datad => \SW[16]~input_o\,
	combout => \inst|RotateRight0~12_combout\);

-- Location: LCCOMB_X110_Y17_N0
\inst|RotateRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~11_combout\ = (\SW[16]~input_o\ & ((\inst|RotateRight0~1_combout\))) # (!\SW[16]~input_o\ & (\inst|RotateRight0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateRight0~3_combout\,
	datac => \SW[16]~input_o\,
	datad => \inst|RotateRight0~1_combout\,
	combout => \inst|RotateRight0~11_combout\);

-- Location: LCCOMB_X109_Y20_N24
\inst|dataOut[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[5]~14_combout\ = (\inst|dataOut[6]~9_combout\ & (\inst|dataOut[6]~8_combout\)) # (!\inst|dataOut[6]~9_combout\ & ((\inst|dataOut[6]~8_combout\ & ((\inst|RotateRight0~11_combout\))) # (!\inst|dataOut[6]~8_combout\ & 
-- (\inst|RotateRight0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[6]~9_combout\,
	datab => \inst|dataOut[6]~8_combout\,
	datac => \inst|RotateRight0~12_combout\,
	datad => \inst|RotateRight0~11_combout\,
	combout => \inst|dataOut[5]~14_combout\);

-- Location: LCCOMB_X110_Y17_N22
\inst|RotateLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~11_combout\ = (\SW[16]~input_o\ & ((\SW[15]~input_o\ & (\SW[6]~input_o\)) # (!\SW[15]~input_o\ & ((\SW[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|RotateLeft0~11_combout\);

-- Location: LCCOMB_X109_Y17_N22
\inst|ShiftLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~4_combout\ = (!\SW[16]~input_o\ & ((\SW[15]~input_o\ & (\SW[0]~input_o\)) # (!\SW[15]~input_o\ & ((\SW[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X109_Y20_N10
\inst|dataOut[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[5]~15_combout\ = (\inst|dataOut[6]~9_combout\ & ((\inst|ShiftLeft0~4_combout\) # ((\inst|dataOut[5]~14_combout\ & \inst|RotateLeft0~11_combout\)))) # (!\inst|dataOut[6]~9_combout\ & (\inst|dataOut[5]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[6]~9_combout\,
	datab => \inst|dataOut[5]~14_combout\,
	datac => \inst|RotateLeft0~11_combout\,
	datad => \inst|ShiftLeft0~4_combout\,
	combout => \inst|dataOut[5]~15_combout\);

-- Location: LCCOMB_X109_Y21_N0
\inst|ShiftLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~3_combout\ = (\SW[16]~input_o\ & ((\inst|ShiftLeft0~0_combout\))) # (!\SW[16]~input_o\ & (\inst|RotateLeft0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \inst|RotateLeft0~3_combout\,
	datad => \inst|ShiftLeft0~0_combout\,
	combout => \inst|ShiftLeft0~3_combout\);

-- Location: LCCOMB_X109_Y21_N26
\inst|dataOut[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[5]~16_combout\ = (\inst|dataOut[6]~7_combout\ & (\inst|dataOut[6]~6_combout\)) # (!\inst|dataOut[6]~7_combout\ & ((\inst|dataOut[6]~6_combout\ & ((\inst|ShiftLeft0~3_combout\))) # (!\inst|dataOut[6]~6_combout\ & 
-- (\inst|dataOut[5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[6]~7_combout\,
	datab => \inst|dataOut[6]~6_combout\,
	datac => \inst|dataOut[5]~15_combout\,
	datad => \inst|ShiftLeft0~3_combout\,
	combout => \inst|dataOut[5]~16_combout\);

-- Location: LCCOMB_X109_Y17_N2
\inst|ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftRight0~2_combout\ = (\SW[16]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[16]~input_o\ & (\inst|RotateRight0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|RotateRight0~0_combout\,
	datac => \SW[7]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \inst|ShiftRight0~2_combout\);

-- Location: LCCOMB_X109_Y21_N4
\inst|dataOut[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[5]~17_combout\ = (\inst|dataOut[5]~16_combout\ & (((\SW[7]~input_o\) # (!\inst|dataOut[6]~7_combout\)))) # (!\inst|dataOut[5]~16_combout\ & (\inst|ShiftRight0~2_combout\ & ((\inst|dataOut[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[5]~16_combout\,
	datab => \inst|ShiftRight0~2_combout\,
	datac => \SW[7]~input_o\,
	datad => \inst|dataOut[6]~7_combout\,
	combout => \inst|dataOut[5]~17_combout\);

-- Location: LCCOMB_X110_Y17_N2
\inst|ShiftRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftRight0~3_combout\ = (\SW[16]~input_o\ & (\inst|RotateRight0~9_combout\)) # (!\SW[16]~input_o\ & ((\inst|ShiftRight0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \inst|RotateRight0~9_combout\,
	datac => \inst|ShiftRight0~1_combout\,
	combout => \inst|ShiftRight0~3_combout\);

-- Location: LCCOMB_X109_Y20_N12
\inst|RotateRight0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateRight0~13_combout\ = (\SW[16]~input_o\ & (\inst|RotateRight0~6_combout\)) # (!\SW[16]~input_o\ & ((\inst|RotateRight0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \inst|RotateRight0~6_combout\,
	datac => \inst|RotateRight0~8_combout\,
	combout => \inst|RotateRight0~13_combout\);

-- Location: LCCOMB_X110_Y17_N6
\inst|RotateLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~12_combout\ = (\SW[16]~input_o\ & (\inst|RotateLeft0~6_combout\)) # (!\SW[16]~input_o\ & ((\inst|RotateLeft0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateLeft0~6_combout\,
	datac => \SW[16]~input_o\,
	datad => \inst|RotateLeft0~8_combout\,
	combout => \inst|RotateLeft0~12_combout\);

-- Location: LCCOMB_X110_Y20_N10
\inst|dataOut[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[4]~20_combout\ = (\SW[17]~input_o\ & ((\KEY[1]~input_o\ & ((\inst|RotateLeft0~12_combout\))) # (!\KEY[1]~input_o\ & (\inst|RotateRight0~13_combout\)))) # (!\SW[17]~input_o\ & (((\KEY[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateRight0~13_combout\,
	datab => \SW[17]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \inst|RotateLeft0~12_combout\,
	combout => \inst|dataOut[4]~20_combout\);

-- Location: LCCOMB_X110_Y20_N30
\inst|dataOut[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[6]~18_combout\ = (!\KEY[1]~input_o\ & \KEY[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \KEY[2]~input_o\,
	combout => \inst|dataOut[6]~18_combout\);

-- Location: LCCOMB_X110_Y17_N4
\inst|ShiftLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~6_combout\ = (!\SW[15]~input_o\ & (!\SW[16]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X110_Y20_N16
\inst|dataOut[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[4]~19_combout\ = (\inst|dataOut[6]~18_combout\ & (((\SW[7]~input_o\) # (!\SW[17]~input_o\)))) # (!\inst|dataOut[6]~18_combout\ & (\inst|ShiftLeft0~6_combout\ & (\SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[6]~18_combout\,
	datab => \inst|ShiftLeft0~6_combout\,
	datac => \SW[17]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|dataOut[4]~19_combout\);

-- Location: LCCOMB_X110_Y20_N20
\inst|dataOut[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[4]~21_combout\ = (\KEY[0]~input_o\ & (\inst|dataOut[4]~20_combout\ $ (((!\SW[17]~input_o\))))) # (!\KEY[0]~input_o\ & (((\inst|dataOut[4]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[4]~20_combout\,
	datab => \inst|dataOut[4]~19_combout\,
	datac => \SW[17]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \inst|dataOut[4]~21_combout\);

-- Location: LCCOMB_X111_Y17_N24
\inst|ShiftLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ShiftLeft0~5_combout\ = (\SW[16]~input_o\ & ((\inst|RotateLeft0~9_combout\))) # (!\SW[16]~input_o\ & (\inst|RotateLeft0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateLeft0~5_combout\,
	datac => \inst|RotateLeft0~9_combout\,
	datad => \SW[16]~input_o\,
	combout => \inst|ShiftLeft0~5_combout\);

-- Location: LCCOMB_X110_Y20_N22
\inst|dataOut[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[4]~22_combout\ = (\inst|dataOut[4]~21_combout\ & ((\inst|ShiftRight0~3_combout\) # ((\SW[17]~input_o\)))) # (!\inst|dataOut[4]~21_combout\ & (((!\SW[17]~input_o\ & \inst|ShiftLeft0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ShiftRight0~3_combout\,
	datab => \inst|dataOut[4]~21_combout\,
	datac => \SW[17]~input_o\,
	datad => \inst|ShiftLeft0~5_combout\,
	combout => \inst|dataOut[4]~22_combout\);

-- Location: LCCOMB_X109_Y21_N6
\inst|dataOut[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[3]~23_combout\ = (\SW[17]~input_o\ & ((\KEY[1]~input_o\ & (\inst|RotateLeft0~4_combout\)) # (!\KEY[1]~input_o\ & ((\inst|RotateRight0~5_combout\))))) # (!\SW[17]~input_o\ & (((\KEY[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \inst|RotateLeft0~4_combout\,
	datac => \inst|RotateRight0~5_combout\,
	datad => \KEY[1]~input_o\,
	combout => \inst|dataOut[3]~23_combout\);

-- Location: LCCOMB_X109_Y21_N28
\inst|dataOut[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[3]~43_combout\ = (\KEY[2]~input_o\ & (!\KEY[1]~input_o\ & ((\SW[7]~input_o\) # (!\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \KEY[2]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \inst|dataOut[3]~43_combout\);

-- Location: LCCOMB_X109_Y21_N16
\inst|dataOut[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[3]~24_combout\ = (\KEY[0]~input_o\ & (\inst|dataOut[3]~23_combout\ $ (((!\SW[17]~input_o\))))) # (!\KEY[0]~input_o\ & (((\inst|dataOut[3]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[3]~23_combout\,
	datab => \inst|dataOut[3]~43_combout\,
	datac => \KEY[0]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \inst|dataOut[3]~24_combout\);

-- Location: LCCOMB_X109_Y21_N2
\inst|dataOut[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[3]~25_combout\ = (\SW[17]~input_o\ & (\inst|dataOut[3]~24_combout\)) # (!\SW[17]~input_o\ & ((\inst|dataOut[3]~24_combout\ & ((\inst|RotateRight0~2_combout\))) # (!\inst|dataOut[3]~24_combout\ & (\inst|RotateLeft0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \inst|dataOut[3]~24_combout\,
	datac => \inst|RotateLeft0~1_combout\,
	datad => \inst|RotateRight0~2_combout\,
	combout => \inst|dataOut[3]~25_combout\);

-- Location: LCCOMB_X110_Y20_N6
\inst|dataOut[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[2]~31_combout\ = (!\SW[17]~input_o\ & (!\KEY[1]~input_o\ & ((\KEY[0]~input_o\) # (\KEY[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \KEY[2]~input_o\,
	combout => \inst|dataOut[2]~31_combout\);

-- Location: LCCOMB_X110_Y20_N28
\inst|dataOut[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[2]~30_combout\ = (\KEY[1]~input_o\ & (\KEY[0]~input_o\)) # (!\KEY[1]~input_o\ & (\SW[17]~input_o\ & ((\KEY[0]~input_o\) # (\KEY[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \KEY[2]~input_o\,
	combout => \inst|dataOut[2]~30_combout\);

-- Location: LCCOMB_X110_Y20_N26
\inst|dataOut[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[2]~27_combout\ = (\KEY[1]~input_o\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \inst|dataOut[2]~27_combout\);

-- Location: LCCOMB_X110_Y20_N24
\inst|dataOut[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[2]~26_combout\ = (\KEY[0]~input_o\ & ((\SW[17]~input_o\) # (!\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \inst|dataOut[2]~26_combout\);

-- Location: LCCOMB_X109_Y20_N22
\inst|dataOut[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[2]~28_combout\ = (\inst|dataOut[2]~27_combout\ & ((\inst|RotateLeft0~10_combout\) # ((\inst|dataOut[2]~26_combout\)))) # (!\inst|dataOut[2]~27_combout\ & (((!\inst|dataOut[2]~26_combout\ & \inst|ShiftRight0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateLeft0~10_combout\,
	datab => \inst|dataOut[2]~27_combout\,
	datac => \inst|dataOut[2]~26_combout\,
	datad => \inst|ShiftRight0~0_combout\,
	combout => \inst|dataOut[2]~28_combout\);

-- Location: LCCOMB_X109_Y20_N0
\inst|dataOut[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[2]~29_combout\ = (\inst|dataOut[2]~28_combout\ & (((\inst|RotateLeft0~7_combout\)) # (!\inst|dataOut[2]~26_combout\))) # (!\inst|dataOut[2]~28_combout\ & (\inst|dataOut[2]~26_combout\ & (\inst|RotateRight0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[2]~28_combout\,
	datab => \inst|dataOut[2]~26_combout\,
	datac => \inst|RotateRight0~10_combout\,
	datad => \inst|RotateLeft0~7_combout\,
	combout => \inst|dataOut[2]~29_combout\);

-- Location: LCCOMB_X109_Y20_N18
\inst|dataOut[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[2]~32_combout\ = (\inst|dataOut[2]~31_combout\ & ((\inst|RotateRight0~7_combout\) # ((\inst|dataOut[2]~30_combout\ & \inst|dataOut[2]~29_combout\)))) # (!\inst|dataOut[2]~31_combout\ & (((\inst|dataOut[2]~30_combout\ & 
-- \inst|dataOut[2]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[2]~31_combout\,
	datab => \inst|RotateRight0~7_combout\,
	datac => \inst|dataOut[2]~30_combout\,
	datad => \inst|dataOut[2]~29_combout\,
	combout => \inst|dataOut[2]~32_combout\);

-- Location: LCCOMB_X110_Y20_N8
\inst|dataOut[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[2]~33_combout\ = (!\KEY[0]~input_o\ & (!\SW[17]~input_o\ & ((\KEY[1]~input_o\) # (!\KEY[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \KEY[2]~input_o\,
	combout => \inst|dataOut[2]~33_combout\);

-- Location: LCCOMB_X108_Y20_N0
\inst|dataOut[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[2]~34_combout\ = (\inst|dataOut[2]~32_combout\) # ((\inst|ShiftLeft0~2_combout\ & \inst|dataOut[2]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ShiftLeft0~2_combout\,
	datab => \inst|dataOut[2]~32_combout\,
	datac => \inst|dataOut[2]~33_combout\,
	combout => \inst|dataOut[2]~34_combout\);

-- Location: LCCOMB_X109_Y20_N20
\inst|RotateLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RotateLeft0~13_combout\ = (\inst|ShiftLeft0~4_combout\) # (\inst|RotateLeft0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ShiftLeft0~4_combout\,
	datad => \inst|RotateLeft0~11_combout\,
	combout => \inst|RotateLeft0~13_combout\);

-- Location: LCCOMB_X109_Y20_N30
\inst|dataOut[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[1]~35_combout\ = (\inst|dataOut[2]~26_combout\ & ((\inst|RotateRight0~12_combout\) # ((\inst|dataOut[2]~27_combout\)))) # (!\inst|dataOut[2]~26_combout\ & (((\inst|ShiftRight0~2_combout\ & !\inst|dataOut[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[2]~26_combout\,
	datab => \inst|RotateRight0~12_combout\,
	datac => \inst|ShiftRight0~2_combout\,
	datad => \inst|dataOut[2]~27_combout\,
	combout => \inst|dataOut[1]~35_combout\);

-- Location: LCCOMB_X109_Y20_N8
\inst|dataOut[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[1]~36_combout\ = (\inst|dataOut[1]~35_combout\ & ((\inst|ShiftLeft0~3_combout\) # ((!\inst|dataOut[2]~27_combout\)))) # (!\inst|dataOut[1]~35_combout\ & (((\inst|RotateLeft0~13_combout\ & \inst|dataOut[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ShiftLeft0~3_combout\,
	datab => \inst|RotateLeft0~13_combout\,
	datac => \inst|dataOut[1]~35_combout\,
	datad => \inst|dataOut[2]~27_combout\,
	combout => \inst|dataOut[1]~36_combout\);

-- Location: LCCOMB_X109_Y20_N2
\inst|dataOut[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[1]~37_combout\ = (\inst|dataOut[2]~30_combout\ & ((\inst|dataOut[1]~36_combout\) # ((\inst|dataOut[2]~33_combout\ & \inst|ShiftLeft0~4_combout\)))) # (!\inst|dataOut[2]~30_combout\ & (((\inst|dataOut[2]~33_combout\ & 
-- \inst|ShiftLeft0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[2]~30_combout\,
	datab => \inst|dataOut[1]~36_combout\,
	datac => \inst|dataOut[2]~33_combout\,
	datad => \inst|ShiftLeft0~4_combout\,
	combout => \inst|dataOut[1]~37_combout\);

-- Location: LCCOMB_X109_Y20_N4
\inst|dataOut[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[1]~38_combout\ = (\inst|dataOut[1]~37_combout\) # ((\inst|RotateRight0~11_combout\ & \inst|dataOut[2]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateRight0~11_combout\,
	datab => \inst|dataOut[1]~37_combout\,
	datad => \inst|dataOut[2]~31_combout\,
	combout => \inst|dataOut[1]~38_combout\);

-- Location: LCCOMB_X109_Y20_N14
\inst|dataOut[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[0]~40_combout\ = (!\inst|dataOut~2_combout\ & ((\SW[16]~input_o\ & ((\inst|RotateRight0~6_combout\))) # (!\SW[16]~input_o\ & (\inst|RotateRight0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateRight0~8_combout\,
	datab => \inst|RotateRight0~6_combout\,
	datac => \inst|dataOut~2_combout\,
	datad => \SW[16]~input_o\,
	combout => \inst|dataOut[0]~40_combout\);

-- Location: LCCOMB_X110_Y20_N2
\inst|dataOut[0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[0]~39_combout\ = (\inst|dataOut~2_combout\ & (((\inst|ShiftLeft0~5_combout\ & \KEY[0]~input_o\)))) # (!\inst|dataOut~2_combout\ & (\inst|ShiftRight0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ShiftRight0~3_combout\,
	datab => \inst|ShiftLeft0~5_combout\,
	datac => \inst|dataOut~2_combout\,
	datad => \KEY[0]~input_o\,
	combout => \inst|dataOut[0]~39_combout\);

-- Location: LCCOMB_X110_Y20_N12
\inst|dataOut[0]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[0]~41_combout\ = (\inst|dataOut~2_combout\ & ((\KEY[0]~input_o\ & (\inst|RotateLeft0~12_combout\)) # (!\KEY[0]~input_o\ & ((\inst|ShiftLeft0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RotateLeft0~12_combout\,
	datab => \inst|dataOut~2_combout\,
	datac => \inst|ShiftLeft0~6_combout\,
	datad => \KEY[0]~input_o\,
	combout => \inst|dataOut[0]~41_combout\);

-- Location: LCCOMB_X110_Y20_N14
\inst|dataOut[0]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut[0]~42_combout\ = (\SW[17]~input_o\ & (((\inst|dataOut[0]~39_combout\)))) # (!\SW[17]~input_o\ & ((\inst|dataOut[0]~40_combout\) # ((\inst|dataOut[0]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut[0]~40_combout\,
	datab => \inst|dataOut[0]~39_combout\,
	datac => \SW[17]~input_o\,
	datad => \inst|dataOut[0]~41_combout\,
	combout => \inst|dataOut[0]~42_combout\);

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

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


