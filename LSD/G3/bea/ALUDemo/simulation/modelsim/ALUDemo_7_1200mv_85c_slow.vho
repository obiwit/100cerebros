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

-- DATE "02/26/2017 23:09:00"

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

ENTITY 	Bin2BCD IS
    PORT (
	bin : IN std_logic_vector(3 DOWNTO 0);
	bcd : OUT std_logic_vector(7 DOWNTO 0)
	);
END Bin2BCD;

-- Design Ports Information
-- bcd[0]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[1]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[2]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[3]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[4]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[5]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[6]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[7]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[1]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[3]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Bin2BCD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_bin : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_bcd : std_logic_vector(7 DOWNTO 0);
SIGNAL \bcd[0]~output_o\ : std_logic;
SIGNAL \bcd[1]~output_o\ : std_logic;
SIGNAL \bcd[2]~output_o\ : std_logic;
SIGNAL \bcd[3]~output_o\ : std_logic;
SIGNAL \bcd[4]~output_o\ : std_logic;
SIGNAL \bcd[5]~output_o\ : std_logic;
SIGNAL \bcd[6]~output_o\ : std_logic;
SIGNAL \bcd[7]~output_o\ : std_logic;
SIGNAL \bin[0]~input_o\ : std_logic;
SIGNAL \bin[1]~input_o\ : std_logic;
SIGNAL \bin[3]~input_o\ : std_logic;
SIGNAL \bin[2]~input_o\ : std_logic;
SIGNAL \bcd~0_combout\ : std_logic;
SIGNAL \bcd~1_combout\ : std_logic;
SIGNAL \bcd~2_combout\ : std_logic;
SIGNAL \bcd~3_combout\ : std_logic;

BEGIN

ww_bin <= bin;
bcd <= ww_bcd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X38_Y73_N16
\bcd[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin[0]~input_o\,
	devoe => ww_devoe,
	o => \bcd[0]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\bcd[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd~0_combout\,
	devoe => ww_devoe,
	o => \bcd[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\bcd[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd~1_combout\,
	devoe => ww_devoe,
	o => \bcd[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\bcd[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd~2_combout\,
	devoe => ww_devoe,
	o => \bcd[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\bcd[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd~3_combout\,
	devoe => ww_devoe,
	o => \bcd[4]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\bcd[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd[5]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\bcd[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd[6]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\bcd[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd[7]~output_o\);

-- Location: IOIBUF_X38_Y73_N1
\bin[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(0),
	o => \bin[0]~input_o\);

-- Location: IOIBUF_X0_Y24_N8
\bin[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(1),
	o => \bin[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\bin[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(3),
	o => \bin[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\bin[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(2),
	o => \bin[2]~input_o\);

-- Location: LCCOMB_X1_Y24_N16
\bcd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~0_combout\ = (\bin[1]~input_o\ & (!\bin[3]~input_o\)) # (!\bin[1]~input_o\ & (\bin[3]~input_o\ & \bin[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[1]~input_o\,
	datab => \bin[3]~input_o\,
	datac => \bin[2]~input_o\,
	combout => \bcd~0_combout\);

-- Location: LCCOMB_X1_Y24_N26
\bcd~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~1_combout\ = (\bin[2]~input_o\ & ((\bin[1]~input_o\) # (!\bin[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[1]~input_o\,
	datab => \bin[3]~input_o\,
	datac => \bin[2]~input_o\,
	combout => \bcd~1_combout\);

-- Location: LCCOMB_X1_Y24_N28
\bcd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~2_combout\ = (!\bin[1]~input_o\ & (\bin[3]~input_o\ & !\bin[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[1]~input_o\,
	datab => \bin[3]~input_o\,
	datac => \bin[2]~input_o\,
	combout => \bcd~2_combout\);

-- Location: LCCOMB_X1_Y24_N14
\bcd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~3_combout\ = (\bin[3]~input_o\ & ((\bin[1]~input_o\) # (\bin[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[1]~input_o\,
	datab => \bin[3]~input_o\,
	datac => \bin[2]~input_o\,
	combout => \bcd~3_combout\);

ww_bcd(0) <= \bcd[0]~output_o\;

ww_bcd(1) <= \bcd[1]~output_o\;

ww_bcd(2) <= \bcd[2]~output_o\;

ww_bcd(3) <= \bcd[3]~output_o\;

ww_bcd(4) <= \bcd[4]~output_o\;

ww_bcd(5) <= \bcd[5]~output_o\;

ww_bcd(6) <= \bcd[6]~output_o\;

ww_bcd(7) <= \bcd[7]~output_o\;
END structure;


