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

-- DATE "03/06/2017 15:30:55"

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

ENTITY 	CounterUpDown4 IS
    PORT (
	clk : IN std_logic;
	upDown : IN std_logic;
	count : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END CounterUpDown4;

-- Design Ports Information
-- count[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- upDown	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CounterUpDown4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_upDown : std_logic;
SIGNAL ww_count : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \count[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \s_count[0]~11_combout\ : std_logic;
SIGNAL \upDown~input_o\ : std_logic;
SIGNAL \s_count[1]~4_cout\ : std_logic;
SIGNAL \s_count[1]~5_combout\ : std_logic;
SIGNAL \s_count[1]~6\ : std_logic;
SIGNAL \s_count[2]~7_combout\ : std_logic;
SIGNAL \s_count[2]~8\ : std_logic;
SIGNAL \s_count[3]~9_combout\ : std_logic;
SIGNAL s_count : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_upDown <= upDown;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X0_Y47_N16
\count[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(0),
	devoe => ww_devoe,
	o => \count[0]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\count[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(1),
	devoe => ww_devoe,
	o => \count[1]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\count[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(2),
	devoe => ww_devoe,
	o => \count[2]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\count[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(3),
	devoe => ww_devoe,
	o => \count[3]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y47_N16
\s_count[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[0]~11_combout\ = !s_count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_count(0),
	combout => \s_count[0]~11_combout\);

-- Location: FF_X1_Y47_N17
\s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(0));

-- Location: IOIBUF_X0_Y47_N1
\upDown~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_upDown,
	o => \upDown~input_o\);

-- Location: LCCOMB_X1_Y47_N6
\s_count[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[1]~4_cout\ = CARRY(s_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_count(0),
	datad => VCC,
	cout => \s_count[1]~4_cout\);

-- Location: LCCOMB_X1_Y47_N8
\s_count[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[1]~5_combout\ = (\upDown~input_o\ & ((s_count(1) & (!\s_count[1]~4_cout\)) # (!s_count(1) & ((\s_count[1]~4_cout\) # (GND))))) # (!\upDown~input_o\ & ((s_count(1) & (\s_count[1]~4_cout\ & VCC)) # (!s_count(1) & (!\s_count[1]~4_cout\))))
-- \s_count[1]~6\ = CARRY((\upDown~input_o\ & ((!\s_count[1]~4_cout\) # (!s_count(1)))) # (!\upDown~input_o\ & (!s_count(1) & !\s_count[1]~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upDown~input_o\,
	datab => s_count(1),
	datad => VCC,
	cin => \s_count[1]~4_cout\,
	combout => \s_count[1]~5_combout\,
	cout => \s_count[1]~6\);

-- Location: FF_X1_Y47_N9
\s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(1));

-- Location: LCCOMB_X1_Y47_N10
\s_count[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[2]~7_combout\ = ((s_count(2) $ (\upDown~input_o\ $ (\s_count[1]~6\)))) # (GND)
-- \s_count[2]~8\ = CARRY((s_count(2) & ((!\s_count[1]~6\) # (!\upDown~input_o\))) # (!s_count(2) & (!\upDown~input_o\ & !\s_count[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(2),
	datab => \upDown~input_o\,
	datad => VCC,
	cin => \s_count[1]~6\,
	combout => \s_count[2]~7_combout\,
	cout => \s_count[2]~8\);

-- Location: FF_X1_Y47_N11
\s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(2));

-- Location: LCCOMB_X1_Y47_N12
\s_count[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[3]~9_combout\ = \upDown~input_o\ $ (\s_count[2]~8\ $ (!s_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upDown~input_o\,
	datad => s_count(3),
	cin => \s_count[2]~8\,
	combout => \s_count[3]~9_combout\);

-- Location: FF_X1_Y47_N13
\s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(3));

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;

ww_count(3) <= \count[3]~output_o\;
END structure;


