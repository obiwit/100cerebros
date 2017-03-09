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

-- DATE "03/07/2017 21:37:06"

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

ENTITY 	ALUDemo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(10 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALUDemo;

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
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALUDemo IS
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
SIGNAL ww_SW : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \inst|Mux1~2_combout\ : std_logic;
SIGNAL \inst|Mux1~3_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~4_cout\ : std_logic;
SIGNAL \inst|Add0~6\ : std_logic;
SIGNAL \inst|Add0~8\ : std_logic;
SIGNAL \inst|Add0~9_combout\ : std_logic;
SIGNAL \inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\ : std_logic;
SIGNAL \inst|Mux2~2_combout\ : std_logic;
SIGNAL \inst|Mux2~3_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \inst|Add0~7_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux2~1_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|selnose[0]~2_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[15]~7_combout\ : std_logic;
SIGNAL \inst|Mux0~2_combout\ : std_logic;
SIGNAL \inst|Mux0~3_combout\ : std_logic;
SIGNAL \inst|Add0~11_combout\ : std_logic;
SIGNAL \inst|Add0~10\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Mux0~1_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|Mux3~2_combout\ : std_logic;
SIGNAL \inst|Mux3~3_combout\ : std_logic;
SIGNAL \inst|Mux3~4_combout\ : std_logic;
SIGNAL \inst|Add0~5_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \inst|Mux3~5_combout\ : std_logic;
SIGNAL \inst|Mux3~6_combout\ : std_logic;
SIGNAL \inst6|decOut_n~0_combout\ : std_logic;
SIGNAL \inst6|decOut_n~1_combout\ : std_logic;
SIGNAL \inst6|decOut_n~2_combout\ : std_logic;
SIGNAL \inst6|decOut_n~3_combout\ : std_logic;
SIGNAL \inst6|decOut_n~4_combout\ : std_logic;
SIGNAL \inst6|decOut_n~5_combout\ : std_logic;
SIGNAL \inst6|decOut_n~6_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \inst8|decOut_n~17_combout\ : std_logic;
SIGNAL \inst8|decOut_n~45_combout\ : std_logic;
SIGNAL \inst8|decOut_n~26_combout\ : std_logic;
SIGNAL \inst8|decOut_n~46_combout\ : std_logic;
SIGNAL \inst8|decOut_n~40_combout\ : std_logic;
SIGNAL \inst8|decOut_n~43_combout\ : std_logic;
SIGNAL \inst8|decOut_n~8_combout\ : std_logic;
SIGNAL \inst8|decOut_n~44_combout\ : std_logic;
SIGNAL \inst2|bcd_out_2[3]~2_combout\ : std_logic;
SIGNAL \inst2|bcd_out_2[3]~4_combout\ : std_logic;
SIGNAL \inst|m[1]~7_combout\ : std_logic;
SIGNAL \inst2|bcd_out_2[1]~5_combout\ : std_logic;
SIGNAL \inst|m[0]~6_combout\ : std_logic;
SIGNAL \inst|m[2]~8_combout\ : std_logic;
SIGNAL \inst2|bcd_out_2[2]~3_combout\ : std_logic;
SIGNAL \inst8|decOut_n~41_combout\ : std_logic;
SIGNAL \inst8|decOut_n~42_combout\ : std_logic;
SIGNAL \inst8|decOut_n~35_combout\ : std_logic;
SIGNAL \inst8|decOut_n~47_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|Mod0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst|Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst8|ALT_INV_decOut_n~46_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_decOut_n~41_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_decOut_n~4_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_decOut_n~1_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_decOut_n~0_combout\ : std_logic;

BEGIN

HEX0 <= ww_HEX0;
ww_SW <= SW;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst8|ALT_INV_decOut_n~46_combout\ <= NOT \inst8|decOut_n~46_combout\;
\inst8|ALT_INV_decOut_n~41_combout\ <= NOT \inst8|decOut_n~41_combout\;
\inst2|ALT_INV_LessThan0~0_combout\ <= NOT \inst2|LessThan0~0_combout\;
\inst6|ALT_INV_decOut_n~4_combout\ <= NOT \inst6|decOut_n~4_combout\;
\inst6|ALT_INV_decOut_n~1_combout\ <= NOT \inst6|decOut_n~1_combout\;
\inst6|ALT_INV_decOut_n~0_combout\ <= NOT \inst6|decOut_n~0_combout\;

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_decOut_n~0_combout\,
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
	i => \inst6|ALT_INV_decOut_n~1_combout\,
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
	i => \inst6|decOut_n~2_combout\,
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
	i => \inst6|decOut_n~3_combout\,
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
	i => \inst6|ALT_INV_decOut_n~4_combout\,
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
	i => \inst6|decOut_n~5_combout\,
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
	i => \inst6|decOut_n~6_combout\,
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
	i => VCC,
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
	i => \inst1|LessThan0~0_combout\,
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
	i => \inst1|LessThan0~0_combout\,
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
	i => \inst1|LessThan0~0_combout\,
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
	i => GND,
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
	i => GND,
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
	i => \inst1|LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|decOut_n~45_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_decOut_n~46_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|decOut_n~43_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|decOut_n~44_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_decOut_n~41_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|decOut_n~42_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|decOut_n~47_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|bcd_out_2[3]~2_combout\,
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
	i => \inst|m[2]~8_combout\,
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
	i => \inst|m[1]~7_combout\,
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
	i => \inst|m[0]~6_combout\,
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
	i => \inst|Mux0~1_combout\,
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
	i => \inst|Mux1~1_combout\,
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
	i => \inst|Mux2~1_combout\,
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
	i => \inst|Mux3~6_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

-- Location: LCCOMB_X113_Y18_N10
\inst|Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(0) = \SW[3]~input_o\ $ (((\SW[2]~input_o\ & ((\SW[1]~input_o\) # (\SW[4]~input_o\))) # (!\SW[2]~input_o\ & (\SW[1]~input_o\ & \SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(0));

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

-- Location: LCCOMB_X112_Y19_N0
\inst|Mult0|auto_generated|le3a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(2) = (\SW[0]~input_o\ & (\SW[6]~input_o\ $ (((\SW[1]~input_o\))))) # (!\SW[0]~input_o\ & (((!\SW[5]~input_o\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X112_Y18_N18
\inst|Mult0|auto_generated|le4a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(5) = \SW[3]~input_o\ $ (((\SW[2]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X112_Y19_N18
\inst|Mult0|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~0_combout\ = (\inst|Mult0|auto_generated|le3a\(2) & (\inst|Mult0|auto_generated|le4a\(5) $ (VCC))) # (!\inst|Mult0|auto_generated|le3a\(2) & (\inst|Mult0|auto_generated|le4a\(5) & VCC))
-- \inst|Mult0|auto_generated|op_1~1\ = CARRY((\inst|Mult0|auto_generated|le3a\(2) & \inst|Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le3a\(2),
	datab => \inst|Mult0|auto_generated|le4a\(5),
	datad => VCC,
	combout => \inst|Mult0|auto_generated|op_1~0_combout\,
	cout => \inst|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X113_Y19_N26
\inst|Mult0|auto_generated|le3a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(1) = (\SW[0]~input_o\ & (\SW[5]~input_o\ $ ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\SW[1]~input_o\ & !\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X113_Y19_N28
\inst|Mult0|auto_generated|le3a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(0) = \SW[1]~input_o\ $ (((\SW[4]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X113_Y19_N4
\inst|Mult0|auto_generated|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~0_combout\ = (\inst|Mult0|auto_generated|le3a\(0) & (\SW[1]~input_o\ $ (VCC))) # (!\inst|Mult0|auto_generated|le3a\(0) & (\SW[1]~input_o\ & VCC))
-- \inst|Mult0|auto_generated|op_3~1\ = CARRY((\inst|Mult0|auto_generated|le3a\(0) & \SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le3a\(0),
	datab => \SW[1]~input_o\,
	datad => VCC,
	combout => \inst|Mult0|auto_generated|op_3~0_combout\,
	cout => \inst|Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X113_Y19_N6
\inst|Mult0|auto_generated|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~2_combout\ = (\inst|Mult0|auto_generated|le3a\(1) & (!\inst|Mult0|auto_generated|op_3~1\)) # (!\inst|Mult0|auto_generated|le3a\(1) & ((\inst|Mult0|auto_generated|op_3~1\) # (GND)))
-- \inst|Mult0|auto_generated|op_3~3\ = CARRY((!\inst|Mult0|auto_generated|op_3~1\) # (!\inst|Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~1\,
	combout => \inst|Mult0|auto_generated|op_3~2_combout\,
	cout => \inst|Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X113_Y19_N8
\inst|Mult0|auto_generated|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~4_combout\ = ((\inst|Mult0|auto_generated|le4a\(0) $ (\inst|Mult0|auto_generated|op_1~0_combout\ $ (!\inst|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \inst|Mult0|auto_generated|op_3~5\ = CARRY((\inst|Mult0|auto_generated|le4a\(0) & ((\inst|Mult0|auto_generated|op_1~0_combout\) # (!\inst|Mult0|auto_generated|op_3~3\))) # (!\inst|Mult0|auto_generated|le4a\(0) & (\inst|Mult0|auto_generated|op_1~0_combout\ 
-- & !\inst|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le4a\(0),
	datab => \inst|Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~3\,
	combout => \inst|Mult0|auto_generated|op_3~4_combout\,
	cout => \inst|Mult0|auto_generated|op_3~5\);

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

-- Location: LCCOMB_X113_Y20_N16
\inst|Mod0|auto_generated|divider|divider|selnose[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\ = (\SW[3]~input_o\) # ((\SW[2]~input_o\) # ((\SW[1]~input_o\ & !\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\);

-- Location: LCCOMB_X113_Y20_N0
\inst|Mod0|auto_generated|divider|divider|selnose[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\ = (\inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # ((!\SW[6]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datac => \SW[6]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\);

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

-- Location: LCCOMB_X114_Y18_N8
\inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\SW[9]~input_o\ & !\SW[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \SW[10]~input_o\,
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X113_Y20_N4
\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\SW[1]~input_o\ & (!\SW[6]~input_o\ & \SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\);

-- Location: LCCOMB_X113_Y20_N6
\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ = (\SW[7]~input_o\ & ((\SW[3]~input_o\) # ((\SW[2]~input_o\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => \SW[7]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\);

-- Location: LCCOMB_X113_Y20_N26
\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ = (\SW[6]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datac => \SW[6]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\);

-- Location: LCCOMB_X112_Y18_N20
\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\SW[5]~input_o\ $ (VCC))) # (!\SW[0]~input_o\ & ((\SW[5]~input_o\) # (GND)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SW[5]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X112_Y18_N22
\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & ((\SW[1]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\SW[1]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & ((\SW[1]~input_o\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\SW[1]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & (\SW[1]~input_o\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & ((\SW[1]~input_o\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X112_Y18_N24
\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ $ (\SW[2]~input_o\ $ (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ & ((!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ & (!\SW[2]~input_o\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X112_Y18_N26
\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X112_Y18_N16
\inst|Mod0|auto_generated|divider|divider|StageOut[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\)))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\))) # (!\SW[3]~input_o\ & 
-- (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datac => \SW[3]~input_o\,
	datad => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\);

-- Location: LCCOMB_X112_Y18_N28
\inst|Mod0|auto_generated|divider|divider|StageOut[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\)))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\)) # (!\SW[3]~input_o\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \SW[3]~input_o\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\);

-- Location: LCCOMB_X112_Y18_N30
\inst|Mod0|auto_generated|divider|divider|StageOut[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\SW[5]~input_o\)) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\SW[3]~input_o\ & (\SW[5]~input_o\)) # (!\SW[3]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \SW[5]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\);

-- Location: LCCOMB_X112_Y18_N0
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\SW[4]~input_o\ $ (VCC))) # (!\SW[0]~input_o\ & ((\SW[4]~input_o\) # (GND)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X112_Y18_N2
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ & ((\SW[1]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\SW[1]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)))) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ & ((\SW[1]~input_o\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))) # (!\SW[1]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ & (\SW[1]~input_o\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ & ((\SW[1]~input_o\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X112_Y18_N4
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\inst|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\ $ (\SW[2]~input_o\ $ (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\ & ((!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\ & (!\SW[2]~input_o\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X112_Y18_N6
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & ((\SW[3]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\SW[3]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)))) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & ((\SW[3]~input_o\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))) # (!\SW[3]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & (\SW[3]~input_o\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & ((\SW[3]~input_o\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X112_Y18_N8
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X113_Y18_N8
\inst|Mod0|auto_generated|divider|divider|StageOut[14]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\);

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

-- Location: LCCOMB_X113_Y18_N18
\inst|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~2_combout\ = (\SW[6]~input_o\ & ((\SW[9]~input_o\ $ (\SW[2]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[6]~input_o\ & ((\SW[9]~input_o\ & ((\SW[2]~input_o\))) # (!\SW[9]~input_o\ & (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mux1~2_combout\);

-- Location: LCCOMB_X114_Y18_N30
\inst|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~3_combout\ = (\inst|Mux1~2_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\) # ((\SW[8]~input_o\) # (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \inst|Mux1~2_combout\,
	combout => \inst|Mux1~3_combout\);

-- Location: LCCOMB_X114_Y18_N28
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \SW[8]~input_o\ $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[8]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Add0~0_combout\);

-- Location: LCCOMB_X113_Y18_N2
\inst|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~1_combout\ = \SW[1]~input_o\ $ (\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[8]~input_o\,
	combout => \inst|Add0~1_combout\);

-- Location: LCCOMB_X113_Y18_N12
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = \SW[8]~input_o\ $ (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[8]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Add0~2_combout\);

-- Location: LCCOMB_X114_Y18_N10
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_cout\ = CARRY(\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datad => VCC,
	cout => \inst|Add0~4_cout\);

-- Location: LCCOMB_X114_Y18_N12
\inst|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~5_combout\ = (\inst|Add0~2_combout\ & ((\SW[4]~input_o\ & (\inst|Add0~4_cout\ & VCC)) # (!\SW[4]~input_o\ & (!\inst|Add0~4_cout\)))) # (!\inst|Add0~2_combout\ & ((\SW[4]~input_o\ & (!\inst|Add0~4_cout\)) # (!\SW[4]~input_o\ & 
-- ((\inst|Add0~4_cout\) # (GND)))))
-- \inst|Add0~6\ = CARRY((\inst|Add0~2_combout\ & (!\SW[4]~input_o\ & !\inst|Add0~4_cout\)) # (!\inst|Add0~2_combout\ & ((!\inst|Add0~4_cout\) # (!\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \inst|Add0~4_cout\,
	combout => \inst|Add0~5_combout\,
	cout => \inst|Add0~6\);

-- Location: LCCOMB_X114_Y18_N14
\inst|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~7_combout\ = ((\inst|Add0~1_combout\ $ (\SW[5]~input_o\ $ (!\inst|Add0~6\)))) # (GND)
-- \inst|Add0~8\ = CARRY((\inst|Add0~1_combout\ & ((\SW[5]~input_o\) # (!\inst|Add0~6\))) # (!\inst|Add0~1_combout\ & (\SW[5]~input_o\ & !\inst|Add0~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~1_combout\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	cin => \inst|Add0~6\,
	combout => \inst|Add0~7_combout\,
	cout => \inst|Add0~8\);

-- Location: LCCOMB_X114_Y18_N16
\inst|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~9_combout\ = (\inst|Add0~0_combout\ & ((\SW[6]~input_o\ & (\inst|Add0~8\ & VCC)) # (!\SW[6]~input_o\ & (!\inst|Add0~8\)))) # (!\inst|Add0~0_combout\ & ((\SW[6]~input_o\ & (!\inst|Add0~8\)) # (!\SW[6]~input_o\ & ((\inst|Add0~8\) # (GND)))))
-- \inst|Add0~10\ = CARRY((\inst|Add0~0_combout\ & (!\SW[6]~input_o\ & !\inst|Add0~8\)) # (!\inst|Add0~0_combout\ & ((!\inst|Add0~8\) # (!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~0_combout\,
	datab => \SW[6]~input_o\,
	datad => VCC,
	cin => \inst|Add0~8\,
	combout => \inst|Add0~9_combout\,
	cout => \inst|Add0~10\);

-- Location: LCCOMB_X114_Y18_N26
\inst|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_combout\ = (\SW[10]~input_o\) # ((\SW[8]~input_o\ & \SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	combout => \inst|Mux3~1_combout\);

-- Location: LCCOMB_X114_Y18_N6
\inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst|Mux3~0_combout\ & (((\inst|Mux3~1_combout\)))) # (!\inst|Mux3~0_combout\ & ((\inst|Mux3~1_combout\ & (\inst|Mux1~3_combout\)) # (!\inst|Mux3~1_combout\ & ((\inst|Add0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~3_combout\,
	datab => \inst|Add0~9_combout\,
	datac => \inst|Mux3~0_combout\,
	datad => \inst|Mux3~1_combout\,
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X113_Y20_N2
\inst|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~1_combout\ = (\inst|Mux3~0_combout\ & ((\inst|Mux1~0_combout\ & ((!\inst|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\))) # (!\inst|Mux1~0_combout\ & (\inst|Mult0|auto_generated|op_3~4_combout\)))) # (!\inst|Mux3~0_combout\ & 
-- (((\inst|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~4_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\,
	datac => \inst|Mux3~0_combout\,
	datad => \inst|Mux1~0_combout\,
	combout => \inst|Mux1~1_combout\);

-- Location: LCCOMB_X113_Y17_N12
\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[5]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[5]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SW[5]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X113_Y17_N14
\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\SW[1]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\SW[1]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & 
-- (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\SW[1]~input_o\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\))) # 
-- (!\SW[1]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X113_Y17_N16
\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ $ (\SW[2]~input_o\ $ (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ & (!\SW[2]~input_o\ & !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X113_Y17_N18
\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X113_Y17_N0
\inst|Div0|auto_generated|divider|divider|selnose[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|selnose\(10) = (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\) # (\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|selnose\(10));

-- Location: LCCOMB_X112_Y18_N10
\inst|Mod0|auto_generated|divider|divider|StageOut[13]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\);

-- Location: LCCOMB_X113_Y18_N6
\inst|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~2_combout\ = (\SW[1]~input_o\ & ((\SW[9]~input_o\ $ (\SW[5]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[1]~input_o\ & ((\SW[9]~input_o\ & ((\SW[5]~input_o\))) # (!\SW[9]~input_o\ & (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \inst|Mux2~2_combout\);

-- Location: LCCOMB_X113_Y18_N0
\inst|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~3_combout\ = (\inst|Mux2~2_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\) # ((\SW[8]~input_o\) # (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \inst|Mux2~2_combout\,
	combout => \inst|Mux2~3_combout\);

-- Location: LCCOMB_X114_Y18_N24
\inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\inst|Mux3~0_combout\ & ((\inst|Mult0|auto_generated|op_3~2_combout\) # ((\inst|Mux3~1_combout\)))) # (!\inst|Mux3~0_combout\ & (((\inst|Add0~7_combout\ & !\inst|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~2_combout\,
	datab => \inst|Add0~7_combout\,
	datac => \inst|Mux3~0_combout\,
	datad => \inst|Mux3~1_combout\,
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X113_Y18_N16
\inst|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~1_combout\ = (\inst|Mux3~1_combout\ & ((\inst|Mux2~0_combout\ & (!\inst|Div0|auto_generated|divider|divider|selnose\(10))) # (!\inst|Mux2~0_combout\ & ((\inst|Mux2~3_combout\))))) # (!\inst|Mux3~1_combout\ & (((\inst|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|selnose\(10),
	datab => \inst|Mux2~3_combout\,
	datac => \inst|Mux3~1_combout\,
	datad => \inst|Mux2~0_combout\,
	combout => \inst|Mux2~1_combout\);

-- Location: LCCOMB_X113_Y20_N28
\inst|Mod0|auto_generated|divider|divider|selnose[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|selnose[0]~2_combout\ = (!\SW[3]~input_o\ & !\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|selnose[0]~2_combout\);

-- Location: LCCOMB_X113_Y20_N22
\inst|Mod0|auto_generated|divider|divider|selnose[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|selnose\(0) = ((\SW[1]~input_o\) # ((!\SW[7]~input_o\ & \SW[0]~input_o\))) # (!\inst|Mod0|auto_generated|divider|divider|selnose[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \inst|Mod0|auto_generated|divider|divider|selnose[0]~2_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|selnose\(0));

-- Location: LCCOMB_X112_Y19_N2
\inst|Mult0|auto_generated|le3a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(3) = (\SW[0]~input_o\ & (\SW[7]~input_o\ $ (((\SW[1]~input_o\))))) # (!\SW[0]~input_o\ & (((!\SW[6]~input_o\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X112_Y19_N20
\inst|Mult0|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~2_combout\ = (\inst|Mult0|auto_generated|le3a\(3) & (!\inst|Mult0|auto_generated|op_1~1\)) # (!\inst|Mult0|auto_generated|le3a\(3) & ((\inst|Mult0|auto_generated|op_1~1\) # (GND)))
-- \inst|Mult0|auto_generated|op_1~3\ = CARRY((!\inst|Mult0|auto_generated|op_1~1\) # (!\inst|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_1~1\,
	combout => \inst|Mult0|auto_generated|op_1~2_combout\,
	cout => \inst|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X112_Y19_N12
\inst|Mult0|auto_generated|cs2a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|cs2a[1]~0_combout\ = \SW[2]~input_o\ $ (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X112_Y19_N6
\inst|Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(1) = (\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\inst|Mult0|auto_generated|le4a\(5) $ (\SW[5]~input_o\)))) # (!\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\SW[4]~input_o\ & 
-- (\inst|Mult0|auto_generated|le4a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \inst|Mult0|auto_generated|le4a\(5),
	datac => \SW[5]~input_o\,
	datad => \inst|Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \inst|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X113_Y19_N10
\inst|Mult0|auto_generated|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~6_combout\ = (\inst|Mult0|auto_generated|op_1~2_combout\ & ((\inst|Mult0|auto_generated|le4a\(1) & (\inst|Mult0|auto_generated|op_3~5\ & VCC)) # (!\inst|Mult0|auto_generated|le4a\(1) & 
-- (!\inst|Mult0|auto_generated|op_3~5\)))) # (!\inst|Mult0|auto_generated|op_1~2_combout\ & ((\inst|Mult0|auto_generated|le4a\(1) & (!\inst|Mult0|auto_generated|op_3~5\)) # (!\inst|Mult0|auto_generated|le4a\(1) & ((\inst|Mult0|auto_generated|op_3~5\) # 
-- (GND)))))
-- \inst|Mult0|auto_generated|op_3~7\ = CARRY((\inst|Mult0|auto_generated|op_1~2_combout\ & (!\inst|Mult0|auto_generated|le4a\(1) & !\inst|Mult0|auto_generated|op_3~5\)) # (!\inst|Mult0|auto_generated|op_1~2_combout\ & ((!\inst|Mult0|auto_generated|op_3~5\) 
-- # (!\inst|Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_1~2_combout\,
	datab => \inst|Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~5\,
	combout => \inst|Mult0|auto_generated|op_3~6_combout\,
	cout => \inst|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X113_Y18_N14
\inst|Mod0|auto_generated|divider|divider|StageOut[15]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[15]~7_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~7_combout\);

-- Location: LCCOMB_X114_Y18_N2
\inst|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~2_combout\ = (\SW[3]~input_o\ & ((\SW[9]~input_o\ $ (\SW[7]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[3]~input_o\ & ((\SW[9]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[9]~input_o\ & (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Mux0~2_combout\);

-- Location: LCCOMB_X114_Y18_N4
\inst|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~3_combout\ = (\inst|Mux0~2_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[15]~7_combout\) # ((\SW[8]~input_o\) # (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~7_combout\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \inst|Mux0~2_combout\,
	combout => \inst|Mux0~3_combout\);

-- Location: LCCOMB_X114_Y18_N0
\inst|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~11_combout\ = \SW[8]~input_o\ $ (\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[8]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|Add0~11_combout\);

-- Location: LCCOMB_X114_Y18_N18
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = \SW[7]~input_o\ $ (\inst|Add0~10\ $ (!\inst|Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datad => \inst|Add0~11_combout\,
	cin => \inst|Add0~10\,
	combout => \inst|Add0~12_combout\);

-- Location: LCCOMB_X114_Y18_N20
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst|Mux3~1_combout\ & ((\inst|Mux0~3_combout\) # ((\inst|Mux3~0_combout\)))) # (!\inst|Mux3~1_combout\ & (((!\inst|Mux3~0_combout\ & \inst|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~1_combout\,
	datab => \inst|Mux0~3_combout\,
	datac => \inst|Mux3~0_combout\,
	datad => \inst|Add0~12_combout\,
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X113_Y20_N24
\inst|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~1_combout\ = (\inst|Mux3~0_combout\ & ((\inst|Mux0~0_combout\ & (!\inst|Mod0|auto_generated|divider|divider|selnose\(0))) # (!\inst|Mux0~0_combout\ & ((\inst|Mult0|auto_generated|op_3~6_combout\))))) # (!\inst|Mux3~0_combout\ & 
-- (((\inst|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|selnose\(0),
	datab => \inst|Mux3~0_combout\,
	datac => \inst|Mult0|auto_generated|op_3~6_combout\,
	datad => \inst|Mux0~0_combout\,
	combout => \inst|Mux0~1_combout\);

-- Location: LCCOMB_X113_Y17_N24
\inst|Div0|auto_generated|divider|divider|StageOut[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\)) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\)) # (!\SW[3]~input_o\ & 
-- ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\);

-- Location: LCCOMB_X113_Y17_N20
\inst|Div0|auto_generated|divider|divider|StageOut[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ = (\SW[3]~input_o\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\)))) # (!\SW[3]~input_o\ & 
-- ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\))) # (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\);

-- Location: LCCOMB_X113_Y17_N30
\inst|Div0|auto_generated|divider|divider|StageOut[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\SW[5]~input_o\)))) # (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\SW[3]~input_o\ & ((\SW[5]~input_o\))) # (!\SW[3]~input_o\ & (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\);

-- Location: LCCOMB_X113_Y17_N2
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X113_Y17_N4
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\SW[1]~input_o\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\) # (!\inst|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\))) # 
-- (!\SW[1]~input_o\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X113_Y17_N6
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\) # (!\SW[2]~input_o\))) # 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & (!\SW[2]~input_o\ & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X113_Y17_N8
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\SW[3]~input_o\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\) # (!\inst|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\))) # 
-- (!\SW[3]~input_o\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X113_Y17_N10
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X113_Y18_N24
\inst|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~2_combout\ = (\SW[8]~input_o\ & (((\SW[4]~input_o\)))) # (!\SW[8]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\SW[4]~input_o\))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datab => \SW[8]~input_o\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mux3~2_combout\);

-- Location: LCCOMB_X113_Y18_N26
\inst|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~3_combout\ = (\SW[9]~input_o\ & (((\SW[8]~input_o\)))) # (!\SW[9]~input_o\ & (\inst|Mux3~2_combout\ & ((\SW[0]~input_o\) # (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~2_combout\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mux3~3_combout\);

-- Location: LCCOMB_X113_Y18_N20
\inst|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~4_combout\ = (\SW[9]~input_o\ & ((\SW[0]~input_o\ & ((!\SW[4]~input_o\) # (!\inst|Mux3~3_combout\))) # (!\SW[0]~input_o\ & ((\SW[4]~input_o\))))) # (!\SW[9]~input_o\ & (\inst|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~3_combout\,
	datab => \SW[0]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mux3~4_combout\);

-- Location: LCCOMB_X114_Y18_N22
\inst|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~5_combout\ = (\inst|Mux3~0_combout\ & (((\inst|Mult0|auto_generated|op_3~0_combout\) # (\inst|Mux3~1_combout\)))) # (!\inst|Mux3~0_combout\ & (\inst|Add0~5_combout\ & ((!\inst|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~5_combout\,
	datab => \inst|Mult0|auto_generated|op_3~0_combout\,
	datac => \inst|Mux3~0_combout\,
	datad => \inst|Mux3~1_combout\,
	combout => \inst|Mux3~5_combout\);

-- Location: LCCOMB_X113_Y18_N22
\inst|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~6_combout\ = (\inst|Mux3~1_combout\ & ((\inst|Mux3~5_combout\ & (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)) # (!\inst|Mux3~5_combout\ & ((\inst|Mux3~4_combout\))))) # (!\inst|Mux3~1_combout\ & 
-- (((\inst|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datab => \inst|Mux3~4_combout\,
	datac => \inst|Mux3~1_combout\,
	datad => \inst|Mux3~5_combout\,
	combout => \inst|Mux3~6_combout\);

-- Location: LCCOMB_X114_Y69_N8
\inst6|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n~0_combout\ = (\inst|Mux1~1_combout\ & (((\inst|Mux0~1_combout\) # (!\inst|Mux3~6_combout\)) # (!\inst|Mux2~1_combout\))) # (!\inst|Mux1~1_combout\ & (\inst|Mux2~1_combout\ $ ((\inst|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~1_combout\,
	datab => \inst|Mux2~1_combout\,
	datac => \inst|Mux0~1_combout\,
	datad => \inst|Mux3~6_combout\,
	combout => \inst6|decOut_n~0_combout\);

-- Location: LCCOMB_X114_Y69_N18
\inst6|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n~1_combout\ = (\inst|Mux1~1_combout\ & ((\inst|Mux2~1_combout\ & ((\inst|Mux0~1_combout\) # (!\inst|Mux3~6_combout\))) # (!\inst|Mux2~1_combout\ & (!\inst|Mux0~1_combout\)))) # (!\inst|Mux1~1_combout\ & ((\inst|Mux2~1_combout\ & 
-- (\inst|Mux0~1_combout\ & !\inst|Mux3~6_combout\)) # (!\inst|Mux2~1_combout\ & ((\inst|Mux0~1_combout\) # (!\inst|Mux3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~1_combout\,
	datab => \inst|Mux2~1_combout\,
	datac => \inst|Mux0~1_combout\,
	datad => \inst|Mux3~6_combout\,
	combout => \inst6|decOut_n~1_combout\);

-- Location: LCCOMB_X114_Y69_N4
\inst6|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n~2_combout\ = (\inst|Mux3~6_combout\) # ((\inst|Mux1~1_combout\ & (\inst|Mux2~1_combout\ $ (!\inst|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~1_combout\,
	datab => \inst|Mux2~1_combout\,
	datac => \inst|Mux0~1_combout\,
	datad => \inst|Mux3~6_combout\,
	combout => \inst6|decOut_n~2_combout\);

-- Location: LCCOMB_X114_Y69_N6
\inst6|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n~3_combout\ = (\inst|Mux1~1_combout\ & ((\inst|Mux2~1_combout\ & (\inst|Mux0~1_combout\ $ (\inst|Mux3~6_combout\))) # (!\inst|Mux2~1_combout\ & (!\inst|Mux0~1_combout\ & !\inst|Mux3~6_combout\)))) # (!\inst|Mux1~1_combout\ & 
-- (\inst|Mux3~6_combout\ & (\inst|Mux2~1_combout\ $ (!\inst|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~1_combout\,
	datab => \inst|Mux2~1_combout\,
	datac => \inst|Mux0~1_combout\,
	datad => \inst|Mux3~6_combout\,
	combout => \inst6|decOut_n~3_combout\);

-- Location: LCCOMB_X107_Y72_N0
\inst6|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n~4_combout\ = (\inst|Mux3~6_combout\) # ((\inst|Mux2~1_combout\ & ((\inst|Mux1~1_combout\) # (\inst|Mux0~1_combout\))) # (!\inst|Mux2~1_combout\ & ((!\inst|Mux0~1_combout\) # (!\inst|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~1_combout\,
	datab => \inst|Mux1~1_combout\,
	datac => \inst|Mux3~6_combout\,
	datad => \inst|Mux0~1_combout\,
	combout => \inst6|decOut_n~4_combout\);

-- Location: LCCOMB_X107_Y72_N2
\inst6|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n~5_combout\ = (\inst|Mux1~1_combout\ & ((\inst|Mux2~1_combout\ & (\inst|Mux3~6_combout\ $ (!\inst|Mux0~1_combout\))) # (!\inst|Mux2~1_combout\ & (\inst|Mux3~6_combout\ & !\inst|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~1_combout\,
	datab => \inst|Mux1~1_combout\,
	datac => \inst|Mux3~6_combout\,
	datad => \inst|Mux0~1_combout\,
	combout => \inst6|decOut_n~5_combout\);

-- Location: LCCOMB_X107_Y72_N4
\inst6|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n~6_combout\ = (\inst|Mux2~1_combout\ & (\inst|Mux0~1_combout\ & (\inst|Mux1~1_combout\ $ (\inst|Mux3~6_combout\)))) # (!\inst|Mux2~1_combout\ & (!\inst|Mux0~1_combout\ & (\inst|Mux1~1_combout\ $ (\inst|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~1_combout\,
	datab => \inst|Mux1~1_combout\,
	datac => \inst|Mux3~6_combout\,
	datad => \inst|Mux0~1_combout\,
	combout => \inst6|decOut_n~6_combout\);

-- Location: LCCOMB_X113_Y20_N10
\inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (\inst|Mux0~1_combout\ & ((\inst|Mux2~1_combout\) # (\inst|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~1_combout\,
	datab => \inst|Mux1~1_combout\,
	datad => \inst|Mux0~1_combout\,
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X112_Y19_N10
\inst|Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(3) = (\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\inst|Mult0|auto_generated|le4a\(5) $ (\SW[7]~input_o\)))) # (!\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\SW[6]~input_o\ & 
-- (\inst|Mult0|auto_generated|le4a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \SW[6]~input_o\,
	datac => \inst|Mult0|auto_generated|le4a\(5),
	datad => \SW[7]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X112_Y19_N4
\inst|Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(1) = (\SW[5]~input_o\ & ((\SW[3]~input_o\) # ((\SW[2]~input_o\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X112_Y18_N12
\inst|Mult0|auto_generated|le3a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(4) = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # (!\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X112_Y19_N16
\inst|Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(2) = (\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (\inst|Mult0|auto_generated|le4a\(5) $ (((\SW[6]~input_o\))))) # (!\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (\inst|Mult0|auto_generated|le4a\(5) & 
-- (!\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \inst|Mult0|auto_generated|le4a\(5),
	datac => \SW[5]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X112_Y19_N22
\inst|Mult0|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~4_combout\ = ((\inst|Mult0|auto_generated|le3a\(4) $ (\inst|Mult0|auto_generated|le4a\(2) $ (!\inst|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \inst|Mult0|auto_generated|op_1~5\ = CARRY((\inst|Mult0|auto_generated|le3a\(4) & ((\inst|Mult0|auto_generated|le4a\(2)) # (!\inst|Mult0|auto_generated|op_1~3\))) # (!\inst|Mult0|auto_generated|le3a\(4) & (\inst|Mult0|auto_generated|le4a\(2) & 
-- !\inst|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le3a\(4),
	datab => \inst|Mult0|auto_generated|le4a\(2),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_1~3\,
	combout => \inst|Mult0|auto_generated|op_1~4_combout\,
	cout => \inst|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X112_Y19_N24
\inst|Mult0|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~6_combout\ = (\inst|Mult0|auto_generated|le4a\(3) & ((\inst|Mult0|auto_generated|le5a\(1) & (\inst|Mult0|auto_generated|op_1~5\ & VCC)) # (!\inst|Mult0|auto_generated|le5a\(1) & (!\inst|Mult0|auto_generated|op_1~5\)))) # 
-- (!\inst|Mult0|auto_generated|le4a\(3) & ((\inst|Mult0|auto_generated|le5a\(1) & (!\inst|Mult0|auto_generated|op_1~5\)) # (!\inst|Mult0|auto_generated|le5a\(1) & ((\inst|Mult0|auto_generated|op_1~5\) # (GND)))))
-- \inst|Mult0|auto_generated|op_1~7\ = CARRY((\inst|Mult0|auto_generated|le4a\(3) & (!\inst|Mult0|auto_generated|le5a\(1) & !\inst|Mult0|auto_generated|op_1~5\)) # (!\inst|Mult0|auto_generated|le4a\(3) & ((!\inst|Mult0|auto_generated|op_1~5\) # 
-- (!\inst|Mult0|auto_generated|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le4a\(3),
	datab => \inst|Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_1~5\,
	combout => \inst|Mult0|auto_generated|op_1~6_combout\,
	cout => \inst|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X113_Y18_N4
\inst|Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(0) = (\SW[4]~input_o\ & ((\SW[3]~input_o\) # ((\SW[2]~input_o\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X113_Y19_N12
\inst|Mult0|auto_generated|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~8_combout\ = ((\inst|Mult0|auto_generated|op_1~4_combout\ $ (\inst|Mult0|auto_generated|le5a\(0) $ (!\inst|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \inst|Mult0|auto_generated|op_3~9\ = CARRY((\inst|Mult0|auto_generated|op_1~4_combout\ & ((\inst|Mult0|auto_generated|le5a\(0)) # (!\inst|Mult0|auto_generated|op_3~7\))) # (!\inst|Mult0|auto_generated|op_1~4_combout\ & (\inst|Mult0|auto_generated|le5a\(0) 
-- & !\inst|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_1~4_combout\,
	datab => \inst|Mult0|auto_generated|le5a\(0),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~7\,
	combout => \inst|Mult0|auto_generated|op_3~8_combout\,
	cout => \inst|Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X113_Y19_N14
\inst|Mult0|auto_generated|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~10_combout\ = (\inst|Mult0|auto_generated|op_1~6_combout\ & ((\SW[1]~input_o\ & (\inst|Mult0|auto_generated|op_3~9\ & VCC)) # (!\SW[1]~input_o\ & (!\inst|Mult0|auto_generated|op_3~9\)))) # 
-- (!\inst|Mult0|auto_generated|op_1~6_combout\ & ((\SW[1]~input_o\ & (!\inst|Mult0|auto_generated|op_3~9\)) # (!\SW[1]~input_o\ & ((\inst|Mult0|auto_generated|op_3~9\) # (GND)))))
-- \inst|Mult0|auto_generated|op_3~11\ = CARRY((\inst|Mult0|auto_generated|op_1~6_combout\ & (!\SW[1]~input_o\ & !\inst|Mult0|auto_generated|op_3~9\)) # (!\inst|Mult0|auto_generated|op_1~6_combout\ & ((!\inst|Mult0|auto_generated|op_3~9\) # 
-- (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_1~6_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~9\,
	combout => \inst|Mult0|auto_generated|op_3~10_combout\,
	cout => \inst|Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X112_Y19_N14
\inst|Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(3) = (\SW[7]~input_o\ & ((\SW[3]~input_o\) # ((\SW[2]~input_o\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X112_Y19_N30
\inst|Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(2) = (\SW[6]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X112_Y19_N8
\inst|Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(4) = (\SW[7]~input_o\ & (\SW[3]~input_o\ & (\SW[2]~input_o\ $ (\SW[1]~input_o\)))) # (!\SW[7]~input_o\ & (\SW[3]~input_o\ $ (((\SW[2]~input_o\ & \SW[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X112_Y19_N26
\inst|Mult0|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~8_combout\ = ((\inst|Mult0|auto_generated|le5a\(2) $ (\inst|Mult0|auto_generated|le4a\(4) $ (!\inst|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \inst|Mult0|auto_generated|op_1~9\ = CARRY((\inst|Mult0|auto_generated|le5a\(2) & ((\inst|Mult0|auto_generated|le4a\(4)) # (!\inst|Mult0|auto_generated|op_1~7\))) # (!\inst|Mult0|auto_generated|le5a\(2) & (\inst|Mult0|auto_generated|le4a\(4) & 
-- !\inst|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le5a\(2),
	datab => \inst|Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_1~7\,
	combout => \inst|Mult0|auto_generated|op_1~8_combout\,
	cout => \inst|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X112_Y19_N28
\inst|Mult0|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~10_combout\ = \inst|Mult0|auto_generated|le5a\(3) $ (\inst|Mult0|auto_generated|op_1~9\ $ (!\inst|Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|auto_generated|le5a\(3),
	datad => \inst|Mult0|auto_generated|le4a\(5),
	cin => \inst|Mult0|auto_generated|op_1~9\,
	combout => \inst|Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X113_Y19_N16
\inst|Mult0|auto_generated|op_3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~12_combout\ = ((\inst|Mult0|auto_generated|op_1~8_combout\ $ (\SW[1]~input_o\ $ (!\inst|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \inst|Mult0|auto_generated|op_3~13\ = CARRY((\inst|Mult0|auto_generated|op_1~8_combout\ & ((\SW[1]~input_o\) # (!\inst|Mult0|auto_generated|op_3~11\))) # (!\inst|Mult0|auto_generated|op_1~8_combout\ & (\SW[1]~input_o\ & 
-- !\inst|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_1~8_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~11\,
	combout => \inst|Mult0|auto_generated|op_3~12_combout\,
	cout => \inst|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X113_Y19_N18
\inst|Mult0|auto_generated|op_3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~14_combout\ = \inst|Mult0|auto_generated|op_1~10_combout\ $ (\inst|Mult0|auto_generated|op_3~13\ $ (!\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|auto_generated|op_1~10_combout\,
	datad => \SW[1]~input_o\,
	cin => \inst|Mult0|auto_generated|op_3~13\,
	combout => \inst|Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X114_Y19_N16
\inst8|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~17_combout\ = (\inst|Mult0|auto_generated|op_3~12_combout\ & (\inst|Mult0|auto_generated|op_3~10_combout\ & (!\inst|Mult0|auto_generated|op_3~14_combout\ & \inst|Mult0|auto_generated|op_3~8_combout\))) # 
-- (!\inst|Mult0|auto_generated|op_3~12_combout\ & (\inst|Mult0|auto_generated|op_3~10_combout\ $ ((!\inst|Mult0|auto_generated|op_3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~10_combout\,
	datab => \inst|Mult0|auto_generated|op_3~14_combout\,
	datac => \inst|Mult0|auto_generated|op_3~12_combout\,
	datad => \inst|Mult0|auto_generated|op_3~8_combout\,
	combout => \inst8|decOut_n~17_combout\);

-- Location: LCCOMB_X114_Y19_N10
\inst8|decOut_n~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~45_combout\ = (\SW[10]~input_o\) # ((\inst8|decOut_n~17_combout\) # ((\SW[8]~input_o\) # (!\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst8|decOut_n~17_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst8|decOut_n~45_combout\);

-- Location: LCCOMB_X114_Y19_N28
\inst8|decOut_n~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~26_combout\ = (\inst|Mult0|auto_generated|op_3~10_combout\ & ((\inst|Mult0|auto_generated|op_3~14_combout\ & ((\inst|Mult0|auto_generated|op_3~12_combout\) # (!\inst|Mult0|auto_generated|op_3~8_combout\))) # 
-- (!\inst|Mult0|auto_generated|op_3~14_combout\ & (\inst|Mult0|auto_generated|op_3~12_combout\ & !\inst|Mult0|auto_generated|op_3~8_combout\)))) # (!\inst|Mult0|auto_generated|op_3~10_combout\ & ((\inst|Mult0|auto_generated|op_3~14_combout\ & 
-- (!\inst|Mult0|auto_generated|op_3~12_combout\)) # (!\inst|Mult0|auto_generated|op_3~14_combout\ & ((\inst|Mult0|auto_generated|op_3~12_combout\) # (!\inst|Mult0|auto_generated|op_3~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~10_combout\,
	datab => \inst|Mult0|auto_generated|op_3~14_combout\,
	datac => \inst|Mult0|auto_generated|op_3~12_combout\,
	datad => \inst|Mult0|auto_generated|op_3~8_combout\,
	combout => \inst8|decOut_n~26_combout\);

-- Location: LCCOMB_X114_Y19_N22
\inst8|decOut_n~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~46_combout\ = (\SW[10]~input_o\) # ((\inst8|decOut_n~26_combout\) # ((\SW[8]~input_o\) # (!\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst8|decOut_n~26_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst8|decOut_n~46_combout\);

-- Location: LCCOMB_X114_Y19_N24
\inst8|decOut_n~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~40_combout\ = (\inst|Mult0|auto_generated|op_3~8_combout\) # ((\inst|Mult0|auto_generated|op_3~12_combout\ & (\inst|Mult0|auto_generated|op_3~10_combout\ $ (!\inst|Mult0|auto_generated|op_3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~10_combout\,
	datab => \inst|Mult0|auto_generated|op_3~14_combout\,
	datac => \inst|Mult0|auto_generated|op_3~12_combout\,
	datad => \inst|Mult0|auto_generated|op_3~8_combout\,
	combout => \inst8|decOut_n~40_combout\);

-- Location: LCCOMB_X114_Y19_N8
\inst8|decOut_n~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~43_combout\ = (!\SW[10]~input_o\ & (\inst8|decOut_n~40_combout\ & (\SW[9]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst8|decOut_n~40_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst8|decOut_n~43_combout\);

-- Location: LCCOMB_X114_Y19_N12
\inst8|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~8_combout\ = (\inst|Mult0|auto_generated|op_3~10_combout\ & ((\inst|Mult0|auto_generated|op_3~14_combout\ & (\inst|Mult0|auto_generated|op_3~12_combout\ $ (\inst|Mult0|auto_generated|op_3~8_combout\))) # 
-- (!\inst|Mult0|auto_generated|op_3~14_combout\ & (\inst|Mult0|auto_generated|op_3~12_combout\ & \inst|Mult0|auto_generated|op_3~8_combout\)))) # (!\inst|Mult0|auto_generated|op_3~10_combout\ & (!\inst|Mult0|auto_generated|op_3~14_combout\ & 
-- (\inst|Mult0|auto_generated|op_3~12_combout\ $ (\inst|Mult0|auto_generated|op_3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~10_combout\,
	datab => \inst|Mult0|auto_generated|op_3~14_combout\,
	datac => \inst|Mult0|auto_generated|op_3~12_combout\,
	datad => \inst|Mult0|auto_generated|op_3~8_combout\,
	combout => \inst8|decOut_n~8_combout\);

-- Location: LCCOMB_X114_Y19_N14
\inst8|decOut_n~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~44_combout\ = (\inst8|decOut_n~8_combout\ & (\SW[9]~input_o\ & (!\SW[10]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|decOut_n~8_combout\,
	datab => \SW[9]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst8|decOut_n~44_combout\);

-- Location: LCCOMB_X113_Y19_N0
\inst2|bcd_out_2[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bcd_out_2[3]~2_combout\ = (!\SW[10]~input_o\ & (\inst|Mult0|auto_generated|op_3~14_combout\ & (!\SW[8]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst|Mult0|auto_generated|op_3~14_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst2|bcd_out_2[3]~2_combout\);

-- Location: LCCOMB_X114_Y19_N26
\inst2|bcd_out_2[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bcd_out_2[3]~4_combout\ = (\inst2|bcd_out_2[3]~2_combout\ & (!\inst|Mult0|auto_generated|op_3~12_combout\ & !\inst|Mult0|auto_generated|op_3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bcd_out_2[3]~2_combout\,
	datac => \inst|Mult0|auto_generated|op_3~12_combout\,
	datad => \inst|Mult0|auto_generated|op_3~10_combout\,
	combout => \inst2|bcd_out_2[3]~4_combout\);

-- Location: LCCOMB_X113_Y19_N22
\inst|m[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|m[1]~7_combout\ = (!\SW[10]~input_o\ & (\inst|Mult0|auto_generated|op_3~10_combout\ & (!\SW[8]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst|Mult0|auto_generated|op_3~10_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst|m[1]~7_combout\);

-- Location: LCCOMB_X113_Y19_N30
\inst2|bcd_out_2[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bcd_out_2[1]~5_combout\ = \inst|m[1]~7_combout\ $ ((((!\inst|Mult0|auto_generated|op_3~10_combout\ & !\inst|Mult0|auto_generated|op_3~12_combout\)) # (!\inst2|bcd_out_2[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|m[1]~7_combout\,
	datab => \inst2|bcd_out_2[3]~2_combout\,
	datac => \inst|Mult0|auto_generated|op_3~10_combout\,
	datad => \inst|Mult0|auto_generated|op_3~12_combout\,
	combout => \inst2|bcd_out_2[1]~5_combout\);

-- Location: LCCOMB_X114_Y19_N30
\inst|m[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|m[0]~6_combout\ = (\inst|Mult0|auto_generated|op_3~8_combout\ & (\SW[9]~input_o\ & (!\SW[10]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~8_combout\,
	datab => \SW[9]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|m[0]~6_combout\);

-- Location: LCCOMB_X113_Y19_N2
\inst|m[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|m[2]~8_combout\ = (!\SW[10]~input_o\ & (\inst|Mult0|auto_generated|op_3~12_combout\ & (!\SW[8]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst|Mult0|auto_generated|op_3~12_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst|m[2]~8_combout\);

-- Location: LCCOMB_X113_Y19_N20
\inst2|bcd_out_2[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bcd_out_2[2]~3_combout\ = (\inst|m[2]~8_combout\ & ((\inst|m[1]~7_combout\) # (!\inst2|bcd_out_2[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|m[2]~8_combout\,
	datac => \inst|m[1]~7_combout\,
	datad => \inst2|bcd_out_2[3]~2_combout\,
	combout => \inst2|bcd_out_2[2]~3_combout\);

-- Location: LCCOMB_X114_Y19_N2
\inst8|decOut_n~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~41_combout\ = (\inst2|bcd_out_2[3]~4_combout\) # ((\inst2|bcd_out_2[1]~5_combout\) # ((\inst|m[0]~6_combout\) # (\inst2|bcd_out_2[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bcd_out_2[3]~4_combout\,
	datab => \inst2|bcd_out_2[1]~5_combout\,
	datac => \inst|m[0]~6_combout\,
	datad => \inst2|bcd_out_2[2]~3_combout\,
	combout => \inst8|decOut_n~41_combout\);

-- Location: LCCOMB_X114_Y19_N4
\inst8|decOut_n~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~42_combout\ = (!\inst2|bcd_out_2[3]~4_combout\ & (\inst2|bcd_out_2[2]~3_combout\ & (\inst2|bcd_out_2[1]~5_combout\ $ (!\inst|m[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bcd_out_2[3]~4_combout\,
	datab => \inst2|bcd_out_2[1]~5_combout\,
	datac => \inst|m[0]~6_combout\,
	datad => \inst2|bcd_out_2[2]~3_combout\,
	combout => \inst8|decOut_n~42_combout\);

-- Location: LCCOMB_X114_Y19_N0
\inst8|decOut_n~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~35_combout\ = (\inst|Mult0|auto_generated|op_3~10_combout\ & (\inst|Mult0|auto_generated|op_3~14_combout\ & (\inst|Mult0|auto_generated|op_3~12_combout\ $ (\inst|Mult0|auto_generated|op_3~8_combout\)))) # 
-- (!\inst|Mult0|auto_generated|op_3~10_combout\ & (!\inst|Mult0|auto_generated|op_3~14_combout\ & (\inst|Mult0|auto_generated|op_3~12_combout\ $ (\inst|Mult0|auto_generated|op_3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~10_combout\,
	datab => \inst|Mult0|auto_generated|op_3~14_combout\,
	datac => \inst|Mult0|auto_generated|op_3~12_combout\,
	datad => \inst|Mult0|auto_generated|op_3~8_combout\,
	combout => \inst8|decOut_n~35_combout\);

-- Location: LCCOMB_X114_Y19_N18
\inst8|decOut_n~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~47_combout\ = (!\SW[10]~input_o\ & (\inst8|decOut_n~35_combout\ & (\SW[9]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst8|decOut_n~35_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst8|decOut_n~47_combout\);

-- Location: LCCOMB_X113_Y19_N24
\inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = ((!\inst|Mult0|auto_generated|op_3~10_combout\ & !\inst|Mult0|auto_generated|op_3~12_combout\)) # (!\inst2|bcd_out_2[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|bcd_out_2[3]~2_combout\,
	datac => \inst|Mult0|auto_generated|op_3~10_combout\,
	datad => \inst|Mult0|auto_generated|op_3~12_combout\,
	combout => \inst2|LessThan0~0_combout\);

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

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


