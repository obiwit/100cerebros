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

-- DATE "03/05/2017 18:38:41"

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

ENTITY 	Counter_Demo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	SW0 : IN std_logic;
	SW1 : IN std_logic;
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	SW17 : IN std_logic;
	SW14 : IN std_logic;
	SW15 : IN std_logic;
	SW16 : IN std_logic;
	SW13 : IN std_logic;
	SW12 : IN std_logic;
	SW11 : IN std_logic;
	SW10 : IN std_logic;
	LEDG : OUT std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(3 DOWNTO 0)
	);
END Counter_Demo;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW0	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW17	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW12	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW14	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW16	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW15	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW10	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW11	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW13	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Counter_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW0 : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW17 : std_logic;
SIGNAL ww_SW14 : std_logic;
SIGNAL ww_SW15 : std_logic;
SIGNAL ww_SW16 : std_logic;
SIGNAL ww_SW13 : std_logic;
SIGNAL ww_SW12 : std_logic;
SIGNAL ww_SW11 : std_logic;
SIGNAL ww_SW10 : std_logic;
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \inst|s_count~9_combout\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \inst|s_count[1]~4_cout\ : std_logic;
SIGNAL \inst|s_count[1]~5_combout\ : std_logic;
SIGNAL \inst|s_count[1]~6\ : std_logic;
SIGNAL \inst|s_count[2]~7_combout\ : std_logic;
SIGNAL \inst|s_count[2]~8\ : std_logic;
SIGNAL \inst|s_count[3]~10_combout\ : std_logic;
SIGNAL \inst1|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \inst1|decOut_n[5]~1_combout\ : std_logic;
SIGNAL \inst1|decOut_n[4]~2_combout\ : std_logic;
SIGNAL \inst1|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \inst1|decOut_n[2]~4_combout\ : std_logic;
SIGNAL \inst1|decOut_n[1]~5_combout\ : std_logic;
SIGNAL \inst1|decOut_n[0]~6_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW14~input_o\ : std_logic;
SIGNAL \SW15~input_o\ : std_logic;
SIGNAL \SW16~input_o\ : std_logic;
SIGNAL \SW10~input_o\ : std_logic;
SIGNAL \inst2|s_count[0]~10_combout\ : std_logic;
SIGNAL \inst2|s_count[0]~11_combout\ : std_logic;
SIGNAL \SW17~input_o\ : std_logic;
SIGNAL \inst2|s_count[1]~4_cout\ : std_logic;
SIGNAL \inst2|s_count[1]~5_combout\ : std_logic;
SIGNAL \SW11~input_o\ : std_logic;
SIGNAL \inst2|s_count[3]~9_combout\ : std_logic;
SIGNAL \inst2|s_count[1]~6\ : std_logic;
SIGNAL \inst2|s_count[2]~7_combout\ : std_logic;
SIGNAL \SW12~input_o\ : std_logic;
SIGNAL \inst2|s_count[2]~8\ : std_logic;
SIGNAL \inst2|s_count[3]~12_combout\ : std_logic;
SIGNAL \SW13~input_o\ : std_logic;
SIGNAL \inst3|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \inst3|decOut_n[5]~1_combout\ : std_logic;
SIGNAL \inst3|decOut_n[4]~2_combout\ : std_logic;
SIGNAL \inst3|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \inst3|decOut_n[2]~4_combout\ : std_logic;
SIGNAL \inst3|decOut_n[1]~5_combout\ : std_logic;
SIGNAL \inst3|decOut_n[0]~6_combout\ : std_logic;
SIGNAL \inst|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|s_count\ : std_logic_vector(3 DOWNTO 0);

BEGIN

HEX0 <= ww_HEX0;
ww_KEY <= KEY;
ww_SW0 <= SW0;
ww_SW1 <= SW1;
HEX1 <= ww_HEX1;
ww_SW17 <= SW17;
ww_SW14 <= SW14;
ww_SW15 <= SW15;
ww_SW16 <= SW16;
ww_SW13 <= SW13;
ww_SW12 <= SW12;
ww_SW11 <= SW11;
ww_SW10 <= SW10;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|decOut_n[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|decOut_n[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|decOut_n[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|decOut_n[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|decOut_n[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|decOut_n[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_count\(3),
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_count\(2),
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_count\(1),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_count\(0),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_count\(3),
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
	i => \inst2|s_count\(2),
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
	i => \inst2|s_count\(1),
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
	i => \inst2|s_count\(0),
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

-- Location: IOIBUF_X115_Y51_N8
\SW1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

-- Location: LCCOMB_X114_Y51_N12
\inst|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count~9_combout\ = (!\inst|s_count\(0) & !\SW1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_count\(0),
	datad => \SW1~input_o\,
	combout => \inst|s_count~9_combout\);

-- Location: FF_X114_Y51_N13
\inst|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(0));

-- Location: IOIBUF_X115_Y51_N1
\SW0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

-- Location: LCCOMB_X114_Y51_N22
\inst|s_count[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[1]~4_cout\ = CARRY(\inst|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(0),
	datad => VCC,
	cout => \inst|s_count[1]~4_cout\);

-- Location: LCCOMB_X114_Y51_N24
\inst|s_count[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[1]~5_combout\ = (\SW0~input_o\ & ((\inst|s_count\(1) & (\inst|s_count[1]~4_cout\ & VCC)) # (!\inst|s_count\(1) & (!\inst|s_count[1]~4_cout\)))) # (!\SW0~input_o\ & ((\inst|s_count\(1) & (!\inst|s_count[1]~4_cout\)) # (!\inst|s_count\(1) & 
-- ((\inst|s_count[1]~4_cout\) # (GND)))))
-- \inst|s_count[1]~6\ = CARRY((\SW0~input_o\ & (!\inst|s_count\(1) & !\inst|s_count[1]~4_cout\)) # (!\SW0~input_o\ & ((!\inst|s_count[1]~4_cout\) # (!\inst|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst|s_count\(1),
	datad => VCC,
	cin => \inst|s_count[1]~4_cout\,
	combout => \inst|s_count[1]~5_combout\,
	cout => \inst|s_count[1]~6\);

-- Location: FF_X114_Y51_N25
\inst|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[1]~5_combout\,
	sclr => \SW1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(1));

-- Location: LCCOMB_X114_Y51_N26
\inst|s_count[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[2]~7_combout\ = ((\inst|s_count\(2) $ (\SW0~input_o\ $ (!\inst|s_count[1]~6\)))) # (GND)
-- \inst|s_count[2]~8\ = CARRY((\inst|s_count\(2) & ((\SW0~input_o\) # (!\inst|s_count[1]~6\))) # (!\inst|s_count\(2) & (\SW0~input_o\ & !\inst|s_count[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(2),
	datab => \SW0~input_o\,
	datad => VCC,
	cin => \inst|s_count[1]~6\,
	combout => \inst|s_count[2]~7_combout\,
	cout => \inst|s_count[2]~8\);

-- Location: FF_X114_Y51_N27
\inst|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[2]~7_combout\,
	sclr => \SW1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(2));

-- Location: LCCOMB_X114_Y51_N28
\inst|s_count[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[3]~10_combout\ = \SW0~input_o\ $ (\inst|s_count[2]~8\ $ (\inst|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datad => \inst|s_count\(3),
	cin => \inst|s_count[2]~8\,
	combout => \inst|s_count[3]~10_combout\);

-- Location: FF_X114_Y51_N29
\inst|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[3]~10_combout\,
	sclr => \SW1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(3));

-- Location: LCCOMB_X114_Y67_N28
\inst1|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[6]~0_combout\ = (\inst|s_count\(0) & (!\inst|s_count\(3) & (\inst|s_count\(1) $ (!\inst|s_count\(2))))) # (!\inst|s_count\(0) & (!\inst|s_count\(1) & (\inst|s_count\(2) $ (!\inst|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(0),
	datab => \inst|s_count\(1),
	datac => \inst|s_count\(2),
	datad => \inst|s_count\(3),
	combout => \inst1|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X114_Y67_N22
\inst1|decOut_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[5]~1_combout\ = (\inst|s_count\(0) & (!\inst|s_count\(3) & ((\inst|s_count\(1)) # (!\inst|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(0),
	datab => \inst|s_count\(1),
	datac => \inst|s_count\(2),
	datad => \inst|s_count\(3),
	combout => \inst1|decOut_n[5]~1_combout\);

-- Location: LCCOMB_X114_Y51_N10
\inst1|decOut_n[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[4]~2_combout\ = (\inst|s_count\(1) & (!\inst|s_count\(3) & ((\inst|s_count\(0)) # (!\inst|s_count\(2))))) # (!\inst|s_count\(1) & ((\inst|s_count\(2) & ((!\inst|s_count\(3)))) # (!\inst|s_count\(2) & (\inst|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(1),
	datab => \inst|s_count\(0),
	datac => \inst|s_count\(2),
	datad => \inst|s_count\(3),
	combout => \inst1|decOut_n[4]~2_combout\);

-- Location: LCCOMB_X114_Y51_N4
\inst1|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[3]~3_combout\ = (\inst|s_count\(1) & ((\inst|s_count\(0) & (\inst|s_count\(2))) # (!\inst|s_count\(0) & (!\inst|s_count\(2) & \inst|s_count\(3))))) # (!\inst|s_count\(1) & (!\inst|s_count\(3) & (\inst|s_count\(0) $ (\inst|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(1),
	datab => \inst|s_count\(0),
	datac => \inst|s_count\(2),
	datad => \inst|s_count\(3),
	combout => \inst1|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X114_Y67_N20
\inst1|decOut_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[2]~4_combout\ = (\inst|s_count\(2) & (\inst|s_count\(3) & ((\inst|s_count\(1)) # (!\inst|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(0),
	datab => \inst|s_count\(1),
	datac => \inst|s_count\(2),
	datad => \inst|s_count\(3),
	combout => \inst1|decOut_n[2]~4_combout\);

-- Location: LCCOMB_X114_Y67_N30
\inst1|decOut_n[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[1]~5_combout\ = (\inst|s_count\(0) & ((\inst|s_count\(1) & ((\inst|s_count\(3)))) # (!\inst|s_count\(1) & (\inst|s_count\(2) & !\inst|s_count\(3))))) # (!\inst|s_count\(0) & ((\inst|s_count\(3) & ((\inst|s_count\(2)))) # 
-- (!\inst|s_count\(3) & (\inst|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(0),
	datab => \inst|s_count\(1),
	datac => \inst|s_count\(2),
	datad => \inst|s_count\(3),
	combout => \inst1|decOut_n[1]~5_combout\);

-- Location: LCCOMB_X114_Y67_N12
\inst1|decOut_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[0]~6_combout\ = (\inst|s_count\(2) & (!\inst|s_count\(1) & (\inst|s_count\(0) $ (!\inst|s_count\(3))))) # (!\inst|s_count\(2) & (\inst|s_count\(0) & (\inst|s_count\(1) $ (!\inst|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(0),
	datab => \inst|s_count\(1),
	datac => \inst|s_count\(2),
	datad => \inst|s_count\(3),
	combout => \inst1|decOut_n[0]~6_combout\);

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

-- Location: IOIBUF_X115_Y52_N8
\SW14~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW14,
	o => \SW14~input_o\);

-- Location: IOIBUF_X115_Y57_N22
\SW15~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW15,
	o => \SW15~input_o\);

-- Location: IOIBUF_X115_Y50_N8
\SW16~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW16,
	o => \SW16~input_o\);

-- Location: IOIBUF_X115_Y56_N15
\SW10~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW10,
	o => \SW10~input_o\);

-- Location: LCCOMB_X114_Y53_N26
\inst2|s_count[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[0]~10_combout\ = (!\SW14~input_o\ & ((\SW16~input_o\ & ((\SW10~input_o\))) # (!\SW16~input_o\ & (!\inst2|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW14~input_o\,
	datab => \SW16~input_o\,
	datac => \inst2|s_count\(0),
	datad => \SW10~input_o\,
	combout => \inst2|s_count[0]~10_combout\);

-- Location: LCCOMB_X113_Y53_N16
\inst2|s_count[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[0]~11_combout\ = (\SW14~input_o\ & (((\inst2|s_count[0]~10_combout\)))) # (!\SW14~input_o\ & ((\SW15~input_o\ & ((\inst2|s_count[0]~10_combout\))) # (!\SW15~input_o\ & (\inst2|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW14~input_o\,
	datab => \SW15~input_o\,
	datac => \inst2|s_count\(0),
	datad => \inst2|s_count[0]~10_combout\,
	combout => \inst2|s_count[0]~11_combout\);

-- Location: FF_X113_Y53_N17
\inst2|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \inst2|s_count[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(0));

-- Location: IOIBUF_X115_Y55_N22
\SW17~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW17,
	o => \SW17~input_o\);

-- Location: LCCOMB_X114_Y53_N6
\inst2|s_count[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[1]~4_cout\ = CARRY(\inst2|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(0),
	datad => VCC,
	cout => \inst2|s_count[1]~4_cout\);

-- Location: LCCOMB_X114_Y53_N8
\inst2|s_count[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[1]~5_combout\ = (\SW17~input_o\ & ((\inst2|s_count\(1) & (\inst2|s_count[1]~4_cout\ & VCC)) # (!\inst2|s_count\(1) & (!\inst2|s_count[1]~4_cout\)))) # (!\SW17~input_o\ & ((\inst2|s_count\(1) & (!\inst2|s_count[1]~4_cout\)) # 
-- (!\inst2|s_count\(1) & ((\inst2|s_count[1]~4_cout\) # (GND)))))
-- \inst2|s_count[1]~6\ = CARRY((\SW17~input_o\ & (!\inst2|s_count\(1) & !\inst2|s_count[1]~4_cout\)) # (!\SW17~input_o\ & ((!\inst2|s_count[1]~4_cout\) # (!\inst2|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \inst2|s_count\(1),
	datad => VCC,
	cin => \inst2|s_count[1]~4_cout\,
	combout => \inst2|s_count[1]~5_combout\,
	cout => \inst2|s_count[1]~6\);

-- Location: IOIBUF_X115_Y56_N22
\SW11~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW11,
	o => \SW11~input_o\);

-- Location: LCCOMB_X113_Y53_N14
\inst2|s_count[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[3]~9_combout\ = (\SW15~input_o\) # (\SW14~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW15~input_o\,
	datac => \SW14~input_o\,
	combout => \inst2|s_count[3]~9_combout\);

-- Location: FF_X114_Y53_N9
\inst2|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \inst2|s_count[1]~5_combout\,
	asdata => \SW11~input_o\,
	sclr => \SW14~input_o\,
	sload => \SW16~input_o\,
	ena => \inst2|s_count[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(1));

-- Location: LCCOMB_X114_Y53_N10
\inst2|s_count[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[2]~7_combout\ = ((\SW17~input_o\ $ (\inst2|s_count\(2) $ (!\inst2|s_count[1]~6\)))) # (GND)
-- \inst2|s_count[2]~8\ = CARRY((\SW17~input_o\ & ((\inst2|s_count\(2)) # (!\inst2|s_count[1]~6\))) # (!\SW17~input_o\ & (\inst2|s_count\(2) & !\inst2|s_count[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \inst2|s_count\(2),
	datad => VCC,
	cin => \inst2|s_count[1]~6\,
	combout => \inst2|s_count[2]~7_combout\,
	cout => \inst2|s_count[2]~8\);

-- Location: IOIBUF_X115_Y52_N1
\SW12~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW12,
	o => \SW12~input_o\);

-- Location: FF_X114_Y53_N11
\inst2|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \inst2|s_count[2]~7_combout\,
	asdata => \SW12~input_o\,
	sclr => \SW14~input_o\,
	sload => \SW16~input_o\,
	ena => \inst2|s_count[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(2));

-- Location: LCCOMB_X114_Y53_N12
\inst2|s_count[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[3]~12_combout\ = \inst2|s_count\(3) $ (\inst2|s_count[2]~8\ $ (\SW17~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(3),
	datad => \SW17~input_o\,
	cin => \inst2|s_count[2]~8\,
	combout => \inst2|s_count[3]~12_combout\);

-- Location: IOIBUF_X115_Y55_N15
\SW13~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW13,
	o => \SW13~input_o\);

-- Location: FF_X114_Y53_N13
\inst2|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \inst2|s_count[3]~12_combout\,
	asdata => \SW13~input_o\,
	sclr => \SW14~input_o\,
	sload => \SW16~input_o\,
	ena => \inst2|s_count[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(3));

-- Location: LCCOMB_X114_Y53_N16
\inst3|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[6]~0_combout\ = (\inst2|s_count\(0) & (!\inst2|s_count\(3) & (\inst2|s_count\(1) $ (!\inst2|s_count\(2))))) # (!\inst2|s_count\(0) & (!\inst2|s_count\(1) & (\inst2|s_count\(2) $ (!\inst2|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(0),
	datab => \inst2|s_count\(1),
	datac => \inst2|s_count\(2),
	datad => \inst2|s_count\(3),
	combout => \inst3|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X114_Y53_N14
\inst3|decOut_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[5]~1_combout\ = (\inst2|s_count\(0) & (!\inst2|s_count\(3) & ((\inst2|s_count\(1)) # (!\inst2|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(0),
	datab => \inst2|s_count\(1),
	datac => \inst2|s_count\(2),
	datad => \inst2|s_count\(3),
	combout => \inst3|decOut_n[5]~1_combout\);

-- Location: LCCOMB_X114_Y53_N4
\inst3|decOut_n[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[4]~2_combout\ = (\inst2|s_count\(0) & (((!\inst2|s_count\(1) & !\inst2|s_count\(2))) # (!\inst2|s_count\(3)))) # (!\inst2|s_count\(0) & (!\inst2|s_count\(3) & (\inst2|s_count\(1) $ (\inst2|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(0),
	datab => \inst2|s_count\(1),
	datac => \inst2|s_count\(2),
	datad => \inst2|s_count\(3),
	combout => \inst3|decOut_n[4]~2_combout\);

-- Location: LCCOMB_X114_Y53_N22
\inst3|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[3]~3_combout\ = (\inst2|s_count\(1) & ((\inst2|s_count\(0) & (\inst2|s_count\(2))) # (!\inst2|s_count\(0) & (!\inst2|s_count\(2) & \inst2|s_count\(3))))) # (!\inst2|s_count\(1) & (!\inst2|s_count\(3) & (\inst2|s_count\(0) $ 
-- (\inst2|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(0),
	datab => \inst2|s_count\(1),
	datac => \inst2|s_count\(2),
	datad => \inst2|s_count\(3),
	combout => \inst3|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X114_Y53_N24
\inst3|decOut_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[2]~4_combout\ = (\inst2|s_count\(2) & (\inst2|s_count\(3) & ((\inst2|s_count\(1)) # (!\inst2|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(0),
	datab => \inst2|s_count\(1),
	datac => \inst2|s_count\(2),
	datad => \inst2|s_count\(3),
	combout => \inst3|decOut_n[2]~4_combout\);

-- Location: LCCOMB_X114_Y53_N18
\inst3|decOut_n[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[1]~5_combout\ = (\inst2|s_count\(0) & ((\inst2|s_count\(1) & ((\inst2|s_count\(3)))) # (!\inst2|s_count\(1) & (\inst2|s_count\(2) & !\inst2|s_count\(3))))) # (!\inst2|s_count\(0) & ((\inst2|s_count\(3) & ((\inst2|s_count\(2)))) # 
-- (!\inst2|s_count\(3) & (\inst2|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(0),
	datab => \inst2|s_count\(1),
	datac => \inst2|s_count\(2),
	datad => \inst2|s_count\(3),
	combout => \inst3|decOut_n[1]~5_combout\);

-- Location: LCCOMB_X114_Y53_N28
\inst3|decOut_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[0]~6_combout\ = (\inst2|s_count\(2) & (!\inst2|s_count\(1) & (\inst2|s_count\(0) $ (!\inst2|s_count\(3))))) # (!\inst2|s_count\(2) & (\inst2|s_count\(0) & (\inst2|s_count\(1) $ (!\inst2|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(0),
	datab => \inst2|s_count\(1),
	datac => \inst2|s_count\(2),
	datad => \inst2|s_count\(3),
	combout => \inst3|decOut_n[0]~6_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


