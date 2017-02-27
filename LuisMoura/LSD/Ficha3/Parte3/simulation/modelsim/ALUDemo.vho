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

-- DATE "02/27/2017 18:21:53"

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
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \inst|Add3~1_combout\ : std_logic;
SIGNAL \inst|Add3~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[11]~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\ : std_logic;
SIGNAL \inst|Add2~1_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[18]~9_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[17]~10_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|s_r~0_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \inst|Add0~15_combout\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~17_cout\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Add0~27_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[0]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|quotient[0]~1_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|Add0~41_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|cs3a[1]~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[0]~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[0]~1\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[1]~3\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[2]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|diff_signs~combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|quotient[2]~0_combout\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|Add0~5_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~7_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~9_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|Add0~11_combout\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~13_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|Add0~25_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|quotient[3]~3_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[0]~1\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[1]~2_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[2]~5\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[3]~6_combout\ : std_logic;
SIGNAL \inst|RESULT~0_combout\ : std_logic;
SIGNAL \inst|Mux0~1_combout\ : std_logic;
SIGNAL \inst|Mux0~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|Add0~35_combout\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|Add0~33_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~37_combout\ : std_logic;
SIGNAL \inst|Add0~39_combout\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|Add0~29_combout\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[1]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|quotient[1]~2_combout\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|Add0~31_combout\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst1|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \inst1|decOut_n[5]~1_combout\ : std_logic;
SIGNAL \inst1|decOut_n[4]~2_combout\ : std_logic;
SIGNAL \inst1|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \inst1|decOut_n[2]~4_combout\ : std_logic;
SIGNAL \inst1|decOut_n[1]~5_combout\ : std_logic;
SIGNAL \inst1|decOut_n[0]~6_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[1]~3\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[2]~5\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[3]~7\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[4]~8_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[3]~6_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[2]~4_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[3]~7\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[4]~9\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[5]~11\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[6]~12_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[4]~8_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[6]~13\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[7]~14_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[5]~10_combout\ : std_logic;
SIGNAL \inst3|decOut_n[6]~26_combout\ : std_logic;
SIGNAL \inst3|decOut_n[6]~31_combout\ : std_logic;
SIGNAL \inst3|decOut_n[5]~12_combout\ : std_logic;
SIGNAL \inst3|decOut_n[5]~35_combout\ : std_logic;
SIGNAL \inst3|decOut_n[4]~27_combout\ : std_logic;
SIGNAL \inst3|decOut_n[4]~32_combout\ : std_logic;
SIGNAL \inst3|decOut_n[3]~28_combout\ : std_logic;
SIGNAL \inst3|decOut_n[3]~33_combout\ : std_logic;
SIGNAL \inst3|decOut_n[2]~21_combout\ : std_logic;
SIGNAL \inst3|decOut_n[2]~36_combout\ : std_logic;
SIGNAL \inst3|decOut_n[1]~29_combout\ : std_logic;
SIGNAL \inst3|decOut_n[1]~34_combout\ : std_logic;
SIGNAL \inst|m[2]~9_combout\ : std_logic;
SIGNAL \inst|m[1]~11_combout\ : std_logic;
SIGNAL \inst|m[3]~10_combout\ : std_logic;
SIGNAL \inst|m[0]~8_combout\ : std_logic;
SIGNAL \inst3|decOut_n[0]~30_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|le4a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|Div0|auto_generated|divider|divider|sel\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|le2a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|ALT_INV_m[0]~8_combout\ : std_logic;

BEGIN

HEX0 <= ww_HEX0;
ww_SW <= SW;
HEX1 <= ww_HEX1;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_m[0]~8_combout\ <= NOT \inst|m[0]~8_combout\;

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
	i => \inst3|decOut_n[6]~31_combout\,
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
	i => \inst3|decOut_n[5]~35_combout\,
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
	i => \inst3|decOut_n[4]~32_combout\,
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
	i => \inst3|decOut_n[3]~33_combout\,
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
	i => \inst3|decOut_n[2]~36_combout\,
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
	i => \inst3|decOut_n[1]~34_combout\,
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
	i => \inst3|decOut_n[0]~30_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|m[3]~10_combout\,
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
	i => \inst|m[2]~9_combout\,
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
	i => \inst|m[1]~11_combout\,
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
	i => \inst|ALT_INV_m[0]~8_combout\,
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
	i => \inst|Add0~40_combout\,
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
	i => \inst|Add0~26_combout\,
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
	i => \inst|Add0~32_combout\,
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
	i => \inst|Add0~28_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

-- Location: LCCOMB_X113_Y14_N8
\inst|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = (\SW[3]~input_o\ & (!\SW[2]~input_o\ & (!\SW[1]~input_o\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Add3~0_combout\);

-- Location: LCCOMB_X110_Y15_N4
\inst|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~1_combout\ = \SW[2]~input_o\ $ ((((!\SW[1]~input_o\ & !\SW[0]~input_o\)) # (!\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Add3~1_combout\);

-- Location: LCCOMB_X113_Y14_N12
\inst|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~2_combout\ = \SW[1]~input_o\ $ (((\SW[3]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Add3~2_combout\);

-- Location: LCCOMB_X112_Y15_N8
\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ = ((\SW[1]~input_o\ & ((!\SW[2]~input_o\) # (!\SW[3]~input_o\))) # (!\SW[1]~input_o\ & ((\SW[3]~input_o\) # (\SW[2]~input_o\)))) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\);

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

-- Location: LCCOMB_X113_Y14_N2
\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ = (!\SW[5]~input_o\ & (!\SW[6]~input_o\ & (\SW[7]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\);

-- Location: LCCOMB_X112_Y14_N24
\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ & \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\);

-- Location: LCCOMB_X110_Y15_N18
\inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = \SW[6]~input_o\ $ ((((!\SW[5]~input_o\ & !\SW[4]~input_o\)) # (!\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Add2~0_combout\);

-- Location: LCCOMB_X111_Y14_N22
\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\inst|Add2~0_combout\ $ (GND))) # (!\SW[0]~input_o\ & ((GND) # (!\inst|Add2~0_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((!\inst|Add2~0_combout\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|Add2~0_combout\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X111_Y14_N24
\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\inst|Add3~2_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\inst|Add3~2_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & 
-- (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\inst|Add3~2_combout\ & ((!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\))) # 
-- (!\inst|Add3~2_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~2_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X111_Y14_N26
\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = (\inst|Add3~1_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ $ (GND))) # (!\inst|Add3~1_combout\ & 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ & VCC))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\inst|Add3~1_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add3~1_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X111_Y14_N28
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

-- Location: LCCOMB_X111_Y14_N2
\inst|Mod0|auto_generated|divider|divider|StageOut[12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\ = (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ & !\inst|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datad => \inst|Add3~0_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\);

-- Location: LCCOMB_X111_Y14_N20
\inst|Mod0|auto_generated|divider|divider|StageOut[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[11]~6_combout\ = (\inst|Add3~0_combout\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\)))) # (!\inst|Add3~0_combout\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~0_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[11]~6_combout\);

-- Location: LCCOMB_X111_Y14_N8
\inst|Mod0|auto_generated|divider|divider|StageOut[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\ = (\inst|Add3~0_combout\ & (!\inst|Add2~0_combout\)) # (!\inst|Add3~0_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (!\inst|Add2~0_combout\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~0_combout\,
	datab => \inst|Add2~0_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\);

-- Location: LCCOMB_X113_Y14_N22
\inst|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~1_combout\ = \SW[5]~input_o\ $ (((\SW[7]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Add2~1_combout\);

-- Location: LCCOMB_X111_Y14_N10
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\inst|Add2~1_combout\ $ (VCC))) # (!\SW[0]~input_o\ & ((\inst|Add2~1_combout\) # (GND)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\inst|Add2~1_combout\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|Add2~1_combout\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X111_Y14_N12
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\inst|Add3~2_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))))) # (!\inst|Add3~2_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\ & 
-- (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\inst|Add3~2_combout\ & ((!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\))) # 
-- (!\inst|Add3~2_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~2_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X111_Y14_N14
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\inst|Add3~1_combout\ $ (\inst|Mod0|auto_generated|divider|divider|StageOut[11]~6_combout\ $ (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # 
-- (GND)
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\inst|Add3~1_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[11]~6_combout\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))) # 
-- (!\inst|Add3~1_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[11]~6_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~1_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[11]~6_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X111_Y14_N16
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\inst|Add3~0_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))))) # (!\inst|Add3~0_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\ & 
-- (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\inst|Add3~0_combout\ & ((!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\))) # 
-- (!\inst|Add3~0_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~0_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X111_Y14_N18
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

-- Location: LCCOMB_X111_Y14_N30
\inst|Mod0|auto_generated|divider|divider|StageOut[18]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\ = (!\inst|Add3~0_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ & 
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~0_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\);

-- Location: LCCOMB_X112_Y14_N26
\inst|Mod0|auto_generated|divider|divider|StageOut[18]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[18]~9_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~9_combout\);

-- Location: LCCOMB_X111_Y14_N4
\inst|Mod0|auto_generated|divider|divider|StageOut[17]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[17]~10_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[11]~6_combout\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[11]~6_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[17]~10_combout\);

-- Location: LCCOMB_X111_Y14_N6
\inst|Mod0|auto_generated|divider|divider|StageOut[16]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\);

-- Location: LCCOMB_X111_Y14_N0
\inst|Mod0|auto_generated|divider|divider|StageOut[15]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|Add2~1_combout\))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ 
-- & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \inst|Add2~1_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\);

-- Location: LCCOMB_X110_Y14_N6
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\SW[4]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[4]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

-- Location: LCCOMB_X110_Y14_N8
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\inst|Add3~2_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))))) # (!\inst|Add3~2_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\ & 
-- (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\inst|Add3~2_combout\ & ((!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\))) # 
-- (!\inst|Add3~2_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~2_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X110_Y14_N10
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\inst|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ $ (\inst|Add3~1_combout\ $ (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # 
-- (GND)
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ & ((\inst|Add3~1_combout\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ & (\inst|Add3~1_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\,
	datab => \inst|Add3~1_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X110_Y14_N12
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[17]~10_combout\ & ((\inst|Add3~0_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # 
-- (!\inst|Add3~0_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)))) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[17]~10_combout\ & ((\inst|Add3~0_combout\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))) # (!\inst|Add3~0_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[17]~10_combout\ & (\inst|Add3~0_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[17]~10_combout\ & ((\inst|Add3~0_combout\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[17]~10_combout\,
	datab => \inst|Add3~0_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X110_Y14_N14
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\) # ((\inst|Mod0|auto_generated|divider|divider|StageOut[18]~9_combout\) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~9_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\);

-- Location: LCCOMB_X110_Y14_N16
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: LCCOMB_X110_Y14_N0
\inst|s_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r~0_combout\ = \SW[7]~input_o\ $ (((\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\SW[4]~input_o\))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	datad => \SW[4]~input_o\,
	combout => \inst|s_r~0_combout\);

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

-- Location: LCCOMB_X109_Y16_N30
\inst|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~15_combout\ = (\SW[10]~input_o\ & (\inst|s_r~0_combout\)) # (!\SW[10]~input_o\ & ((\SW[8]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_r~0_combout\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Add0~15_combout\);

-- Location: LCCOMB_X110_Y15_N14
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\SW[10]~input_o\ & (\SW[7]~input_o\)) # (!\SW[10]~input_o\ & ((\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Add0~14_combout\);

-- Location: LCCOMB_X109_Y16_N16
\inst|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~17_cout\ = CARRY(\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datad => VCC,
	cout => \inst|Add0~17_cout\);

-- Location: LCCOMB_X109_Y16_N18
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|Add0~15_combout\ & ((\inst|Add0~14_combout\ & (\inst|Add0~17_cout\ & VCC)) # (!\inst|Add0~14_combout\ & (!\inst|Add0~17_cout\)))) # (!\inst|Add0~15_combout\ & ((\inst|Add0~14_combout\ & (!\inst|Add0~17_cout\)) # 
-- (!\inst|Add0~14_combout\ & ((\inst|Add0~17_cout\) # (GND)))))
-- \inst|Add0~19\ = CARRY((\inst|Add0~15_combout\ & (!\inst|Add0~14_combout\ & !\inst|Add0~17_cout\)) # (!\inst|Add0~15_combout\ & ((!\inst|Add0~17_cout\) # (!\inst|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~15_combout\,
	datab => \inst|Add0~14_combout\,
	datad => VCC,
	cin => \inst|Add0~17_cout\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCCOMB_X110_Y15_N8
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (!\SW[8]~input_o\) # (!\SW[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y15_N10
\inst|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~27_combout\ = (\inst|Mux0~0_combout\ & (\inst|Add0~18_combout\)) # (!\inst|Mux0~0_combout\ & (((\SW[0]~input_o\ & \SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~18_combout\,
	datab => \inst|Mux0~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Add0~27_combout\);

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

-- Location: LCCOMB_X112_Y16_N20
\inst|Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(0) = \SW[1]~input_o\ $ (((\SW[4]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X111_Y16_N8
\inst|Mult0|auto_generated|add6_result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[0]~0_combout\ = (\inst|Mult0|auto_generated|le5a\(0) & (\SW[1]~input_o\ $ (VCC))) # (!\inst|Mult0|auto_generated|le5a\(0) & (\SW[1]~input_o\ & VCC))
-- \inst|Mult0|auto_generated|add6_result[0]~1\ = CARRY((\inst|Mult0|auto_generated|le5a\(0) & \SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le5a\(0),
	datab => \SW[1]~input_o\,
	datad => VCC,
	combout => \inst|Mult0|auto_generated|add6_result[0]~0_combout\,
	cout => \inst|Mult0|auto_generated|add6_result[0]~1\);

-- Location: LCCOMB_X113_Y14_N0
\inst|Div0|auto_generated|divider|divider|sel[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|sel\(5) = (\SW[3]~input_o\ & (((!\SW[1]~input_o\ & !\SW[0]~input_o\)) # (!\SW[2]~input_o\))) # (!\SW[3]~input_o\ & (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|sel\(5));

-- Location: LCCOMB_X113_Y14_N10
\inst|Div0|auto_generated|divider|divider|StageOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ = (\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ & (((\inst|Add3~2_combout\) # (\inst|Div0|auto_generated|divider|divider|sel\(5))) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datac => \inst|Add3~2_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|sel\(5),
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\);

-- Location: LCCOMB_X113_Y14_N4
\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\ = \SW[6]~input_o\ $ (((\SW[7]~input_o\ & ((\SW[5]~input_o\) # (\SW[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\);

-- Location: LCCOMB_X114_Y14_N10
\inst|Div0|auto_generated|divider|divider|add_sub_1|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\ = (\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\,
	datad => \SW[0]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\);

-- Location: LCCOMB_X113_Y14_N30
\inst|Div0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ & ((\inst|Div0|auto_generated|divider|divider|sel\(5)) # (\inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\ 
-- $ (\inst|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|sel\(5),
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\,
	datad => \inst|Add3~2_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\);

-- Location: LCCOMB_X112_Y15_N18
\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\ = \SW[2]~input_o\ $ (((\SW[3]~input_o\ & ((\SW[1]~input_o\) # (\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\);

-- Location: LCCOMB_X114_Y14_N8
\inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ = (\inst|Add3~2_combout\ & (\inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ & ((\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\) # 
-- (!\SW[0]~input_o\)))) # (!\inst|Add3~2_combout\ & ((\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\) # ((\inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~2_combout\,
	datab => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\);

-- Location: LCCOMB_X114_Y14_N12
\inst|Div0|auto_generated|divider|divider|StageOut[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ = \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\ $ (((!\inst|Div0|auto_generated|divider|divider|sel\(5) & 
-- (\inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|sel\(5),
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datac => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\,
	datad => \SW[0]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\);

-- Location: LCCOMB_X113_Y14_N14
\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\inst|Add2~1_combout\ $ (VCC))) # (!\SW[0]~input_o\ & ((\inst|Add2~1_combout\) # (GND)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\inst|Add2~1_combout\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|Add2~1_combout\,
	datad => VCC,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X113_Y14_N16
\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\inst|Add3~2_combout\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\inst|Add3~2_combout\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & 
-- (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\inst|Add3~2_combout\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (!\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\))) # 
-- (!\inst|Add3~2_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~2_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X113_Y14_N18
\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ (\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\ $ 
-- (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # 
-- (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\))) # (!\inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ & (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datab => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X113_Y14_N20
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

-- Location: LCCOMB_X113_Y14_N24
\inst|Div0|auto_generated|divider|divider|StageOut[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ = (\inst|Add3~0_combout\ & (\inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # (!\inst|Add3~0_combout\ & 
-- ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datac => \inst|Add3~0_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\);

-- Location: LCCOMB_X114_Y14_N6
\inst|Div0|auto_generated|divider|divider|StageOut[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ = (\inst|Add3~0_combout\ & (((\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\)))) # (!\inst|Add3~0_combout\ & 
-- ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\))) # (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~0_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\);

-- Location: LCCOMB_X113_Y14_N26
\inst|Div0|auto_generated|divider|divider|StageOut[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ = (\inst|Add3~0_combout\ & (\inst|Add2~1_combout\)) # (!\inst|Add3~0_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst|Add2~1_combout\)) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~1_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \inst|Add3~0_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\);

-- Location: LCCOMB_X114_Y14_N22
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X114_Y14_N24
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\inst|Add3~2_combout\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\) # 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\))) # (!\inst|Add3~2_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~2_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X114_Y14_N26
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\) # 
-- (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\))) # (!\inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ & (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datab => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X114_Y14_N28
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\inst|Add3~0_combout\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\) # 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\))) # (!\inst|Add3~0_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~0_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X114_Y14_N30
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

-- Location: LCCOMB_X114_Y14_N14
\inst|Div0|auto_generated|divider|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|op_1~0_combout\ = \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ $ (VCC)
-- \inst|Div0|auto_generated|divider|op_1~1\ = CARRY(\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => VCC,
	combout => \inst|Div0|auto_generated|divider|op_1~0_combout\,
	cout => \inst|Div0|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X110_Y16_N10
\inst|Div0|auto_generated|divider|quotient[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|quotient[0]~1_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Div0|auto_generated|divider|op_1~0_combout\ & (\SW[3]~input_o\ $ (\SW[7]~input_o\)))) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|Div0|auto_generated|divider|op_1~0_combout\) # (\SW[3]~input_o\ $ (!\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datab => \inst|Div0|auto_generated|divider|op_1~0_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Div0|auto_generated|divider|quotient[0]~1_combout\);

-- Location: LCCOMB_X110_Y16_N20
\inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\SW[8]~input_o\ & (((\SW[10]~input_o\) # (\inst|Div0|auto_generated|divider|quotient[0]~1_combout\)))) # (!\SW[8]~input_o\ & (\inst|Mult0|auto_generated|add6_result[0]~0_combout\ & (!\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst|Mult0|auto_generated|add6_result[0]~0_combout\,
	datac => \SW[10]~input_o\,
	datad => \inst|Div0|auto_generated|divider|quotient[0]~1_combout\,
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X110_Y15_N24
\inst|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_combout\ = (\SW[10]~input_o\ & ((\SW[0]~input_o\ & ((!\SW[4]~input_o\) # (!\inst|Mux3~0_combout\))) # (!\SW[0]~input_o\ & ((\SW[4]~input_o\))))) # (!\SW[10]~input_o\ & (\inst|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~0_combout\,
	datab => \SW[10]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mux3~1_combout\);

-- Location: LCCOMB_X110_Y15_N20
\inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\SW[9]~input_o\ & ((\inst|Mux3~1_combout\))) # (!\SW[9]~input_o\ & (\inst|Add0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~27_combout\,
	datab => \SW[9]~input_o\,
	datad => \inst|Mux3~1_combout\,
	combout => \inst|Add0~28_combout\);

-- Location: LCCOMB_X109_Y16_N6
\inst|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~41_combout\ = (\SW[10]~input_o\ & ((\SW[9]~input_o\) # (!\SW[8]~input_o\))) # (!\SW[10]~input_o\ & ((!\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst|Add0~41_combout\);

-- Location: LCCOMB_X110_Y15_N12
\inst|Mult0|auto_generated|cs3a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|cs3a[1]~0_combout\ = \SW[1]~input_o\ $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|cs3a[1]~0_combout\);

-- Location: LCCOMB_X110_Y15_N2
\inst|Mult0|auto_generated|le2a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le2a\(0) = (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (!\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|le2a\(0));

-- Location: LCCOMB_X110_Y15_N22
\inst|Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(0) = (\inst|Mult0|auto_generated|le2a\(0)) # ((\inst|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[3]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|cs3a[1]~0_combout\,
	datab => \inst|Mult0|auto_generated|le2a\(0),
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X112_Y16_N0
\inst|Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(2) = (\SW[0]~input_o\ & ((\SW[1]~input_o\ $ (\SW[6]~input_o\)))) # (!\SW[0]~input_o\ & (!\SW[5]~input_o\ & (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X112_Y16_N10
\inst|Mult0|auto_generated|add10_result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add10_result[0]~0_combout\ = (\inst|Mult0|auto_generated|le5a\(2) & (\SW[3]~input_o\ $ (VCC))) # (!\inst|Mult0|auto_generated|le5a\(2) & (\SW[3]~input_o\ & VCC))
-- \inst|Mult0|auto_generated|add10_result[0]~1\ = CARRY((\inst|Mult0|auto_generated|le5a\(2) & \SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le5a\(2),
	datab => \SW[3]~input_o\,
	datad => VCC,
	combout => \inst|Mult0|auto_generated|add10_result[0]~0_combout\,
	cout => \inst|Mult0|auto_generated|add10_result[0]~1\);

-- Location: LCCOMB_X112_Y16_N2
\inst|Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(1) = (\SW[0]~input_o\ & (\SW[5]~input_o\ $ ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\SW[1]~input_o\ & !\SW[4]~input_o\))))

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
	combout => \inst|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X111_Y16_N10
\inst|Mult0|auto_generated|add6_result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[1]~2_combout\ = (\inst|Mult0|auto_generated|le5a\(1) & (!\inst|Mult0|auto_generated|add6_result[0]~1\)) # (!\inst|Mult0|auto_generated|le5a\(1) & ((\inst|Mult0|auto_generated|add6_result[0]~1\) # (GND)))
-- \inst|Mult0|auto_generated|add6_result[1]~3\ = CARRY((!\inst|Mult0|auto_generated|add6_result[0]~1\) # (!\inst|Mult0|auto_generated|le5a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add6_result[0]~1\,
	combout => \inst|Mult0|auto_generated|add6_result[1]~2_combout\,
	cout => \inst|Mult0|auto_generated|add6_result[1]~3\);

-- Location: LCCOMB_X111_Y16_N12
\inst|Mult0|auto_generated|add6_result[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[2]~4_combout\ = ((\inst|Mult0|auto_generated|le4a\(0) $ (\inst|Mult0|auto_generated|add10_result[0]~0_combout\ $ (!\inst|Mult0|auto_generated|add6_result[1]~3\)))) # (GND)
-- \inst|Mult0|auto_generated|add6_result[2]~5\ = CARRY((\inst|Mult0|auto_generated|le4a\(0) & ((\inst|Mult0|auto_generated|add10_result[0]~0_combout\) # (!\inst|Mult0|auto_generated|add6_result[1]~3\))) # (!\inst|Mult0|auto_generated|le4a\(0) & 
-- (\inst|Mult0|auto_generated|add10_result[0]~0_combout\ & !\inst|Mult0|auto_generated|add6_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le4a\(0),
	datab => \inst|Mult0|auto_generated|add10_result[0]~0_combout\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add6_result[1]~3\,
	combout => \inst|Mult0|auto_generated|add6_result[2]~4_combout\,
	cout => \inst|Mult0|auto_generated|add6_result[2]~5\);

-- Location: LCCOMB_X111_Y15_N24
\inst|Div0|auto_generated|divider|diff_signs\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|diff_signs~combout\ = \SW[3]~input_o\ $ (\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Div0|auto_generated|divider|diff_signs~combout\);

-- Location: LCCOMB_X114_Y14_N16
\inst|Div0|auto_generated|divider|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|op_1~2_combout\ = (\inst|Add3~0_combout\ & (((!\inst|Div0|auto_generated|divider|op_1~1\)))) # (!\inst|Add3~0_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (!\inst|Div0|auto_generated|divider|op_1~1\)) # (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|Div0|auto_generated|divider|op_1~1\) # (GND)))))
-- \inst|Div0|auto_generated|divider|op_1~3\ = CARRY(((!\inst|Add3~0_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\)) # (!\inst|Div0|auto_generated|divider|op_1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~0_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|op_1~1\,
	combout => \inst|Div0|auto_generated|divider|op_1~2_combout\,
	cout => \inst|Div0|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X114_Y14_N18
\inst|Div0|auto_generated|divider|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|op_1~4_combout\ = (\inst|Div0|auto_generated|divider|op_1~3\ & (((\inst|Div0|auto_generated|divider|divider|sel\(5)) # (!\inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\)))) # 
-- (!\inst|Div0|auto_generated|divider|op_1~3\ & ((((\inst|Div0|auto_generated|divider|divider|sel\(5)) # (!\inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\)))))
-- \inst|Div0|auto_generated|divider|op_1~5\ = CARRY((!\inst|Div0|auto_generated|divider|op_1~3\ & ((\inst|Div0|auto_generated|divider|divider|sel\(5)) # (!\inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|sel\(5),
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|op_1~3\,
	combout => \inst|Div0|auto_generated|divider|op_1~4_combout\,
	cout => \inst|Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X114_Y14_N0
\inst|Div0|auto_generated|divider|quotient[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|quotient[2]~0_combout\ = (\inst|Div0|auto_generated|divider|diff_signs~combout\ & (((\inst|Div0|auto_generated|divider|op_1~4_combout\)))) # (!\inst|Div0|auto_generated|divider|diff_signs~combout\ & 
-- (!\inst|Div0|auto_generated|divider|divider|sel\(5) & (\inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|sel\(5),
	datab => \inst|Div0|auto_generated|divider|diff_signs~combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datad => \inst|Div0|auto_generated|divider|op_1~4_combout\,
	combout => \inst|Div0|auto_generated|divider|quotient[2]~0_combout\);

-- Location: LCCOMB_X109_Y16_N0
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\SW[8]~input_o\ & ((\inst|Div0|auto_generated|divider|quotient[2]~0_combout\))) # (!\SW[8]~input_o\ & (\inst|Mult0|auto_generated|add6_result[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|auto_generated|add6_result[2]~4_combout\,
	datac => \SW[8]~input_o\,
	datad => \inst|Div0|auto_generated|divider|quotient[2]~0_combout\,
	combout => \inst|Add0~24_combout\);

-- Location: LCCOMB_X109_Y16_N8
\inst|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~5_combout\ = (!\SW[10]~input_o\ & \SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[10]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst|Add0~5_combout\);

-- Location: LCCOMB_X110_Y14_N24
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\SW[10]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	datad => \SW[7]~input_o\,
	combout => \inst|Add0~6_combout\);

-- Location: LCCOMB_X110_Y14_N2
\inst|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~7_combout\ = (\inst|Add0~6_combout\) # ((!\SW[10]~input_o\ & (\SW[2]~input_o\ $ (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst|Add0~6_combout\,
	datac => \SW[2]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|Add0~7_combout\);

-- Location: LCCOMB_X110_Y14_N4
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & \SW[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \SW[10]~input_o\,
	combout => \inst|Add0~8_combout\);

-- Location: LCCOMB_X110_Y14_N26
\inst|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~9_combout\ = (\inst|Add0~7_combout\) # ((\inst|Add0~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\,
	datab => \inst|Add0~7_combout\,
	datac => \inst|Add0~8_combout\,
	datad => \SW[7]~input_o\,
	combout => \inst|Add0~9_combout\);

-- Location: LCCOMB_X109_Y16_N10
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (!\SW[10]~input_o\ & \SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[10]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \inst|Add0~10_combout\);

-- Location: LCCOMB_X110_Y14_N20
\inst|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~11_combout\ = (\SW[10]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datad => \SW[7]~input_o\,
	combout => \inst|Add0~11_combout\);

-- Location: LCCOMB_X109_Y16_N12
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|Add0~11_combout\) # ((!\SW[10]~input_o\ & (\SW[8]~input_o\ $ (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~11_combout\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|Add0~12_combout\);

-- Location: LCCOMB_X110_Y14_N22
\inst|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~13_combout\ = (\inst|Add0~12_combout\) # ((\inst|Add0~8_combout\ & (\SW[7]~input_o\ $ (\inst|Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \inst|Add0~8_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\,
	datad => \inst|Add0~12_combout\,
	combout => \inst|Add0~13_combout\);

-- Location: LCCOMB_X109_Y16_N20
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = ((\inst|Add0~10_combout\ $ (\inst|Add0~13_combout\ $ (!\inst|Add0~19\)))) # (GND)
-- \inst|Add0~21\ = CARRY((\inst|Add0~10_combout\ & ((\inst|Add0~13_combout\) # (!\inst|Add0~19\))) # (!\inst|Add0~10_combout\ & (\inst|Add0~13_combout\ & !\inst|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~10_combout\,
	datab => \inst|Add0~13_combout\,
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: LCCOMB_X109_Y16_N22
\inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|Add0~5_combout\ & ((\inst|Add0~9_combout\ & (\inst|Add0~21\ & VCC)) # (!\inst|Add0~9_combout\ & (!\inst|Add0~21\)))) # (!\inst|Add0~5_combout\ & ((\inst|Add0~9_combout\ & (!\inst|Add0~21\)) # (!\inst|Add0~9_combout\ & 
-- ((\inst|Add0~21\) # (GND)))))
-- \inst|Add0~23\ = CARRY((\inst|Add0~5_combout\ & (!\inst|Add0~9_combout\ & !\inst|Add0~21\)) # (!\inst|Add0~5_combout\ & ((!\inst|Add0~21\) # (!\inst|Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~5_combout\,
	datab => \inst|Add0~9_combout\,
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: LCCOMB_X109_Y16_N2
\inst|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~25_combout\ = (\inst|Add0~41_combout\ & ((\inst|Add0~22_combout\))) # (!\inst|Add0~41_combout\ & (\inst|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~24_combout\,
	datac => \inst|Add0~22_combout\,
	datad => \inst|Add0~41_combout\,
	combout => \inst|Add0~25_combout\);

-- Location: LCCOMB_X110_Y16_N16
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\SW[6]~input_o\ & ((\SW[9]~input_o\ & ((!\SW[2]~input_o\) # (!\SW[8]~input_o\))) # (!\SW[9]~input_o\ & ((\SW[2]~input_o\))))) # (!\SW[6]~input_o\ & (\SW[9]~input_o\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Add0~4_combout\);

-- Location: LCCOMB_X109_Y16_N28
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|Add0~41_combout\ & ((\SW[9]~input_o\ & ((\inst|Add0~4_combout\))) # (!\SW[9]~input_o\ & (\inst|Add0~25_combout\)))) # (!\inst|Add0~41_combout\ & ((\SW[9]~input_o\ & (\inst|Add0~25_combout\)) # (!\SW[9]~input_o\ & 
-- ((\inst|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~41_combout\,
	datab => \inst|Add0~25_combout\,
	datac => \inst|Add0~4_combout\,
	datad => \SW[9]~input_o\,
	combout => \inst|Add0~26_combout\);

-- Location: LCCOMB_X113_Y14_N6
\inst|Div0|auto_generated|divider|divider|add_sub_0|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ = (\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\);

-- Location: LCCOMB_X113_Y14_N28
\inst|Div0|auto_generated|divider|divider|sel[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|sel\(0) = (\SW[3]~input_o\ & (((!\SW[0]~input_o\) # (!\SW[1]~input_o\)) # (!\SW[2]~input_o\))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|sel\(0));

-- Location: LCCOMB_X114_Y14_N20
\inst|Div0|auto_generated|divider|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|op_1~6_combout\ = \inst|Div0|auto_generated|divider|op_1~5\ $ (((\inst|Div0|auto_generated|divider|divider|sel\(0)) # (!\inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|sel\(0),
	cin => \inst|Div0|auto_generated|divider|op_1~5\,
	combout => \inst|Div0|auto_generated|divider|op_1~6_combout\);

-- Location: LCCOMB_X114_Y14_N4
\inst|Div0|auto_generated|divider|quotient[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|quotient[3]~3_combout\ = (\inst|Div0|auto_generated|divider|diff_signs~combout\ & (\inst|Div0|auto_generated|divider|op_1~6_combout\)) # (!\inst|Div0|auto_generated|divider|diff_signs~combout\ & 
-- (((\inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ & !\inst|Div0|auto_generated|divider|divider|sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|op_1~6_combout\,
	datab => \inst|Div0|auto_generated|divider|diff_signs~combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|sel\(0),
	combout => \inst|Div0|auto_generated|divider|quotient[3]~3_combout\);

-- Location: LCCOMB_X112_Y16_N30
\inst|Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(3) = (\SW[0]~input_o\ & (\SW[7]~input_o\ $ ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\SW[1]~input_o\ & !\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X112_Y16_N12
\inst|Mult0|auto_generated|add10_result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add10_result[1]~2_combout\ = (\inst|Mult0|auto_generated|le5a\(3) & (!\inst|Mult0|auto_generated|add10_result[0]~1\)) # (!\inst|Mult0|auto_generated|le5a\(3) & ((\inst|Mult0|auto_generated|add10_result[0]~1\) # (GND)))
-- \inst|Mult0|auto_generated|add10_result[1]~3\ = CARRY((!\inst|Mult0|auto_generated|add10_result[0]~1\) # (!\inst|Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le5a\(3),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add10_result[0]~1\,
	combout => \inst|Mult0|auto_generated|add10_result[1]~2_combout\,
	cout => \inst|Mult0|auto_generated|add10_result[1]~3\);

-- Location: LCCOMB_X110_Y15_N28
\inst|Mult0|auto_generated|le2a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le2a\(1) = (\SW[4]~input_o\ & (\SW[2]~input_o\ & (\SW[1]~input_o\))) # (!\SW[4]~input_o\ & (\SW[3]~input_o\ & (\SW[2]~input_o\ $ (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|auto_generated|le2a\(1));

-- Location: LCCOMB_X110_Y15_N0
\inst|Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(1) = (\inst|Mult0|auto_generated|le2a\(1)) # ((\inst|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[3]~input_o\ $ (\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|cs3a[1]~0_combout\,
	datab => \SW[3]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \inst|Mult0|auto_generated|le2a\(1),
	combout => \inst|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X111_Y16_N14
\inst|Mult0|auto_generated|add6_result[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[3]~6_combout\ = (\inst|Mult0|auto_generated|add10_result[1]~2_combout\ & ((\inst|Mult0|auto_generated|le4a\(1) & (\inst|Mult0|auto_generated|add6_result[2]~5\ & VCC)) # (!\inst|Mult0|auto_generated|le4a\(1) & 
-- (!\inst|Mult0|auto_generated|add6_result[2]~5\)))) # (!\inst|Mult0|auto_generated|add10_result[1]~2_combout\ & ((\inst|Mult0|auto_generated|le4a\(1) & (!\inst|Mult0|auto_generated|add6_result[2]~5\)) # (!\inst|Mult0|auto_generated|le4a\(1) & 
-- ((\inst|Mult0|auto_generated|add6_result[2]~5\) # (GND)))))
-- \inst|Mult0|auto_generated|add6_result[3]~7\ = CARRY((\inst|Mult0|auto_generated|add10_result[1]~2_combout\ & (!\inst|Mult0|auto_generated|le4a\(1) & !\inst|Mult0|auto_generated|add6_result[2]~5\)) # (!\inst|Mult0|auto_generated|add10_result[1]~2_combout\ 
-- & ((!\inst|Mult0|auto_generated|add6_result[2]~5\) # (!\inst|Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add10_result[1]~2_combout\,
	datab => \inst|Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add6_result[2]~5\,
	combout => \inst|Mult0|auto_generated|add6_result[3]~6_combout\,
	cout => \inst|Mult0|auto_generated|add6_result[3]~7\);

-- Location: LCCOMB_X110_Y16_N6
\inst|RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RESULT~0_combout\ = (\SW[3]~input_o\) # (\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|RESULT~0_combout\);

-- Location: LCCOMB_X110_Y16_N24
\inst|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~1_combout\ = (\SW[8]~input_o\ & (((\SW[10]~input_o\)))) # (!\SW[8]~input_o\ & ((\SW[10]~input_o\ & ((\inst|RESULT~0_combout\))) # (!\SW[10]~input_o\ & (\inst|Mult0|auto_generated|add6_result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst|Mult0|auto_generated|add6_result[3]~6_combout\,
	datac => \SW[10]~input_o\,
	datad => \inst|RESULT~0_combout\,
	combout => \inst|Mux0~1_combout\);

-- Location: LCCOMB_X110_Y15_N6
\inst|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~2_combout\ = (\inst|Mux0~1_combout\ & (((\inst|Div0|auto_generated|divider|diff_signs~combout\) # (!\SW[8]~input_o\)))) # (!\inst|Mux0~1_combout\ & (\inst|Div0|auto_generated|divider|quotient[3]~3_combout\ & ((\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|quotient[3]~3_combout\,
	datab => \inst|Div0|auto_generated|divider|diff_signs~combout\,
	datac => \inst|Mux0~1_combout\,
	datad => \SW[8]~input_o\,
	combout => \inst|Mux0~2_combout\);

-- Location: LCCOMB_X110_Y14_N18
\inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\SW[10]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	datad => \SW[7]~input_o\,
	combout => \inst|Add0~34_combout\);

-- Location: LCCOMB_X110_Y14_N28
\inst|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~35_combout\ = (\inst|Add0~34_combout\) # ((!\SW[10]~input_o\ & (\SW[3]~input_o\ $ (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst|Add0~34_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|Add0~35_combout\);

-- Location: LCCOMB_X110_Y14_N30
\inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|Add0~35_combout\) # ((\inst|Add0~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[17]~10_combout\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[17]~10_combout\,
	datab => \inst|Add0~35_combout\,
	datac => \inst|Add0~8_combout\,
	datad => \SW[7]~input_o\,
	combout => \inst|Add0~36_combout\);

-- Location: LCCOMB_X110_Y16_N2
\inst|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~33_combout\ = (!\SW[10]~input_o\ & \SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Add0~33_combout\);

-- Location: LCCOMB_X109_Y16_N24
\inst|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~37_combout\ = \inst|Add0~36_combout\ $ (\inst|Add0~23\ $ (!\inst|Add0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~36_combout\,
	datad => \inst|Add0~33_combout\,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~37_combout\);

-- Location: LCCOMB_X110_Y15_N16
\inst|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~39_combout\ = (\inst|Mux0~0_combout\ & (\inst|Add0~37_combout\)) # (!\inst|Mux0~0_combout\ & (((\SW[3]~input_o\ & \SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~37_combout\,
	datab => \inst|Mux0~0_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Add0~39_combout\);

-- Location: LCCOMB_X110_Y15_N26
\inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\SW[9]~input_o\ & (\inst|Mux0~2_combout\)) # (!\SW[9]~input_o\ & ((\inst|Add0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~2_combout\,
	datab => \inst|Add0~39_combout\,
	datad => \SW[9]~input_o\,
	combout => \inst|Add0~40_combout\);

-- Location: LCCOMB_X109_Y16_N14
\inst|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~29_combout\ = (\SW[1]~input_o\ & ((\SW[5]~input_o\ & ((!\SW[9]~input_o\) # (!\SW[8]~input_o\))) # (!\SW[5]~input_o\ & ((\SW[9]~input_o\))))) # (!\SW[1]~input_o\ & (\SW[5]~input_o\ & ((\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst|Add0~29_combout\);

-- Location: LCCOMB_X114_Y14_N2
\inst|Div0|auto_generated|divider|quotient[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|quotient[1]~2_combout\ = (\inst|Div0|auto_generated|divider|diff_signs~combout\ & (((\inst|Div0|auto_generated|divider|op_1~2_combout\)))) # (!\inst|Div0|auto_generated|divider|diff_signs~combout\ & 
-- (!\inst|Add3~0_combout\ & (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~0_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \inst|Div0|auto_generated|divider|diff_signs~combout\,
	datad => \inst|Div0|auto_generated|divider|op_1~2_combout\,
	combout => \inst|Div0|auto_generated|divider|quotient[1]~2_combout\);

-- Location: LCCOMB_X111_Y16_N24
\inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\SW[8]~input_o\ & ((\inst|Div0|auto_generated|divider|quotient[1]~2_combout\))) # (!\SW[8]~input_o\ & (\inst|Mult0|auto_generated|add6_result[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add6_result[1]~2_combout\,
	datab => \inst|Div0|auto_generated|divider|quotient[1]~2_combout\,
	datad => \SW[8]~input_o\,
	combout => \inst|Add0~30_combout\);

-- Location: LCCOMB_X109_Y16_N26
\inst|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~31_combout\ = (\inst|Add0~41_combout\ & (\inst|Add0~20_combout\)) # (!\inst|Add0~41_combout\ & ((\inst|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~41_combout\,
	datab => \inst|Add0~20_combout\,
	datac => \inst|Add0~30_combout\,
	combout => \inst|Add0~31_combout\);

-- Location: LCCOMB_X109_Y16_N4
\inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|Add0~41_combout\ & ((\SW[9]~input_o\ & (\inst|Add0~29_combout\)) # (!\SW[9]~input_o\ & ((\inst|Add0~31_combout\))))) # (!\inst|Add0~41_combout\ & ((\SW[9]~input_o\ & ((\inst|Add0~31_combout\))) # (!\SW[9]~input_o\ & 
-- (\inst|Add0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~41_combout\,
	datab => \inst|Add0~29_combout\,
	datac => \inst|Add0~31_combout\,
	datad => \SW[9]~input_o\,
	combout => \inst|Add0~32_combout\);

-- Location: LCCOMB_X109_Y69_N24
\inst1|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[6]~0_combout\ = (\inst|Add0~28_combout\ & (!\inst|Add0~40_combout\ & (\inst|Add0~26_combout\ $ (!\inst|Add0~32_combout\)))) # (!\inst|Add0~28_combout\ & (!\inst|Add0~32_combout\ & (\inst|Add0~26_combout\ $ (!\inst|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~28_combout\,
	datab => \inst|Add0~26_combout\,
	datac => \inst|Add0~40_combout\,
	datad => \inst|Add0~32_combout\,
	combout => \inst1|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X109_Y69_N26
\inst1|decOut_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[5]~1_combout\ = (\inst|Add0~28_combout\ & (\inst|Add0~40_combout\ $ (((\inst|Add0~32_combout\) # (!\inst|Add0~26_combout\))))) # (!\inst|Add0~28_combout\ & (!\inst|Add0~26_combout\ & (!\inst|Add0~40_combout\ & \inst|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~28_combout\,
	datab => \inst|Add0~26_combout\,
	datac => \inst|Add0~40_combout\,
	datad => \inst|Add0~32_combout\,
	combout => \inst1|decOut_n[5]~1_combout\);

-- Location: LCCOMB_X109_Y69_N20
\inst1|decOut_n[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[4]~2_combout\ = (\inst|Add0~32_combout\ & (\inst|Add0~28_combout\ & ((!\inst|Add0~40_combout\)))) # (!\inst|Add0~32_combout\ & ((\inst|Add0~26_combout\ & ((!\inst|Add0~40_combout\))) # (!\inst|Add0~26_combout\ & (\inst|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~28_combout\,
	datab => \inst|Add0~26_combout\,
	datac => \inst|Add0~40_combout\,
	datad => \inst|Add0~32_combout\,
	combout => \inst1|decOut_n[4]~2_combout\);

-- Location: LCCOMB_X109_Y69_N14
\inst1|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[3]~3_combout\ = (\inst|Add0~32_combout\ & ((\inst|Add0~28_combout\ & (\inst|Add0~26_combout\)) # (!\inst|Add0~28_combout\ & (!\inst|Add0~26_combout\ & \inst|Add0~40_combout\)))) # (!\inst|Add0~32_combout\ & (!\inst|Add0~40_combout\ & 
-- (\inst|Add0~28_combout\ $ (\inst|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~28_combout\,
	datab => \inst|Add0~26_combout\,
	datac => \inst|Add0~40_combout\,
	datad => \inst|Add0~32_combout\,
	combout => \inst1|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X109_Y69_N0
\inst1|decOut_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[2]~4_combout\ = (\inst|Add0~26_combout\ & (\inst|Add0~40_combout\ & ((\inst|Add0~32_combout\) # (!\inst|Add0~28_combout\)))) # (!\inst|Add0~26_combout\ & (!\inst|Add0~28_combout\ & (!\inst|Add0~40_combout\ & \inst|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~28_combout\,
	datab => \inst|Add0~26_combout\,
	datac => \inst|Add0~40_combout\,
	datad => \inst|Add0~32_combout\,
	combout => \inst1|decOut_n[2]~4_combout\);

-- Location: LCCOMB_X109_Y69_N2
\inst1|decOut_n[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[1]~5_combout\ = (\inst|Add0~40_combout\ & ((\inst|Add0~28_combout\ & ((\inst|Add0~32_combout\))) # (!\inst|Add0~28_combout\ & (\inst|Add0~26_combout\)))) # (!\inst|Add0~40_combout\ & (\inst|Add0~26_combout\ & (\inst|Add0~28_combout\ $ 
-- (\inst|Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~28_combout\,
	datab => \inst|Add0~26_combout\,
	datac => \inst|Add0~40_combout\,
	datad => \inst|Add0~32_combout\,
	combout => \inst1|decOut_n[1]~5_combout\);

-- Location: LCCOMB_X109_Y69_N12
\inst1|decOut_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[0]~6_combout\ = (\inst|Add0~26_combout\ & (!\inst|Add0~32_combout\ & (\inst|Add0~28_combout\ $ (!\inst|Add0~40_combout\)))) # (!\inst|Add0~26_combout\ & (\inst|Add0~28_combout\ & (\inst|Add0~40_combout\ $ (!\inst|Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~28_combout\,
	datab => \inst|Add0~26_combout\,
	datac => \inst|Add0~40_combout\,
	datad => \inst|Add0~32_combout\,
	combout => \inst1|decOut_n[0]~6_combout\);

-- Location: LCCOMB_X112_Y16_N22
\inst|Mult0|auto_generated|le2a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le2a\(4) = (\SW[7]~input_o\ & (((\SW[1]~input_o\ & \SW[2]~input_o\)))) # (!\SW[7]~input_o\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|le2a\(4));

-- Location: LCCOMB_X112_Y16_N28
\inst|Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(4) = (\inst|Mult0|auto_generated|le2a\(4)) # ((\inst|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[3]~input_o\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le2a\(4),
	datab => \SW[3]~input_o\,
	datac => \inst|Mult0|auto_generated|cs3a[1]~0_combout\,
	datad => \SW[7]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X112_Y16_N8
\inst|Mult0|auto_generated|le5a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(4) = (\SW[7]~input_o\ & (!\SW[1]~input_o\ & \SW[0]~input_o\)) # (!\SW[7]~input_o\ & (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(4));

-- Location: LCCOMB_X112_Y16_N14
\inst|Mult0|auto_generated|add10_result[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add10_result[2]~4_combout\ = (\inst|Mult0|auto_generated|le5a\(4) & (\inst|Mult0|auto_generated|add10_result[1]~3\ $ (GND))) # (!\inst|Mult0|auto_generated|le5a\(4) & ((GND) # (!\inst|Mult0|auto_generated|add10_result[1]~3\)))
-- \inst|Mult0|auto_generated|add10_result[2]~5\ = CARRY((!\inst|Mult0|auto_generated|add10_result[1]~3\) # (!\inst|Mult0|auto_generated|le5a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|auto_generated|le5a\(4),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add10_result[1]~3\,
	combout => \inst|Mult0|auto_generated|add10_result[2]~4_combout\,
	cout => \inst|Mult0|auto_generated|add10_result[2]~5\);

-- Location: LCCOMB_X112_Y16_N16
\inst|Mult0|auto_generated|add10_result[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add10_result[3]~6_combout\ = !\inst|Mult0|auto_generated|add10_result[2]~5\
-- \inst|Mult0|auto_generated|add10_result[3]~7\ = CARRY(!\inst|Mult0|auto_generated|add10_result[2]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add10_result[2]~5\,
	combout => \inst|Mult0|auto_generated|add10_result[3]~6_combout\,
	cout => \inst|Mult0|auto_generated|add10_result[3]~7\);

-- Location: LCCOMB_X112_Y16_N18
\inst|Mult0|auto_generated|add10_result[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add10_result[4]~8_combout\ = !\inst|Mult0|auto_generated|add10_result[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mult0|auto_generated|add10_result[3]~7\,
	combout => \inst|Mult0|auto_generated|add10_result[4]~8_combout\);

-- Location: LCCOMB_X112_Y16_N24
\inst|Mult0|auto_generated|le2a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le2a\(3) = (\SW[6]~input_o\ & (((\SW[1]~input_o\ & \SW[2]~input_o\)))) # (!\SW[6]~input_o\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|le2a\(3));

-- Location: LCCOMB_X112_Y16_N6
\inst|Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(3) = (\inst|Mult0|auto_generated|le2a\(3)) # ((\inst|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[3]~input_o\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|cs3a[1]~0_combout\,
	datab => \inst|Mult0|auto_generated|le2a\(3),
	datac => \SW[3]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X112_Y16_N26
\inst|Mult0|auto_generated|le2a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le2a\(2) = (\SW[5]~input_o\ & (((\SW[1]~input_o\ & \SW[2]~input_o\)))) # (!\SW[5]~input_o\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|le2a\(2));

-- Location: LCCOMB_X112_Y16_N4
\inst|Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(2) = (\inst|Mult0|auto_generated|le2a\(2)) # ((\inst|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[3]~input_o\ $ (\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le2a\(2),
	datab => \SW[3]~input_o\,
	datac => \inst|Mult0|auto_generated|cs3a[1]~0_combout\,
	datad => \SW[6]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X111_Y16_N16
\inst|Mult0|auto_generated|add6_result[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[4]~8_combout\ = ((\inst|Mult0|auto_generated|le4a\(2) $ (\inst|Mult0|auto_generated|add10_result[2]~4_combout\ $ (!\inst|Mult0|auto_generated|add6_result[3]~7\)))) # (GND)
-- \inst|Mult0|auto_generated|add6_result[4]~9\ = CARRY((\inst|Mult0|auto_generated|le4a\(2) & ((\inst|Mult0|auto_generated|add10_result[2]~4_combout\) # (!\inst|Mult0|auto_generated|add6_result[3]~7\))) # (!\inst|Mult0|auto_generated|le4a\(2) & 
-- (\inst|Mult0|auto_generated|add10_result[2]~4_combout\ & !\inst|Mult0|auto_generated|add6_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le4a\(2),
	datab => \inst|Mult0|auto_generated|add10_result[2]~4_combout\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add6_result[3]~7\,
	combout => \inst|Mult0|auto_generated|add6_result[4]~8_combout\,
	cout => \inst|Mult0|auto_generated|add6_result[4]~9\);

-- Location: LCCOMB_X111_Y16_N18
\inst|Mult0|auto_generated|add6_result[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[5]~10_combout\ = (\inst|Mult0|auto_generated|le4a\(3) & ((\inst|Mult0|auto_generated|add10_result[3]~6_combout\ & (\inst|Mult0|auto_generated|add6_result[4]~9\ & VCC)) # 
-- (!\inst|Mult0|auto_generated|add10_result[3]~6_combout\ & (!\inst|Mult0|auto_generated|add6_result[4]~9\)))) # (!\inst|Mult0|auto_generated|le4a\(3) & ((\inst|Mult0|auto_generated|add10_result[3]~6_combout\ & 
-- (!\inst|Mult0|auto_generated|add6_result[4]~9\)) # (!\inst|Mult0|auto_generated|add10_result[3]~6_combout\ & ((\inst|Mult0|auto_generated|add6_result[4]~9\) # (GND)))))
-- \inst|Mult0|auto_generated|add6_result[5]~11\ = CARRY((\inst|Mult0|auto_generated|le4a\(3) & (!\inst|Mult0|auto_generated|add10_result[3]~6_combout\ & !\inst|Mult0|auto_generated|add6_result[4]~9\)) # (!\inst|Mult0|auto_generated|le4a\(3) & 
-- ((!\inst|Mult0|auto_generated|add6_result[4]~9\) # (!\inst|Mult0|auto_generated|add10_result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le4a\(3),
	datab => \inst|Mult0|auto_generated|add10_result[3]~6_combout\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add6_result[4]~9\,
	combout => \inst|Mult0|auto_generated|add6_result[5]~10_combout\,
	cout => \inst|Mult0|auto_generated|add6_result[5]~11\);

-- Location: LCCOMB_X111_Y16_N20
\inst|Mult0|auto_generated|add6_result[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[6]~12_combout\ = ((\inst|Mult0|auto_generated|le4a\(4) $ (\inst|Mult0|auto_generated|add10_result[4]~8_combout\ $ (\inst|Mult0|auto_generated|add6_result[5]~11\)))) # (GND)
-- \inst|Mult0|auto_generated|add6_result[6]~13\ = CARRY((\inst|Mult0|auto_generated|le4a\(4) & (\inst|Mult0|auto_generated|add10_result[4]~8_combout\ & !\inst|Mult0|auto_generated|add6_result[5]~11\)) # (!\inst|Mult0|auto_generated|le4a\(4) & 
-- ((\inst|Mult0|auto_generated|add10_result[4]~8_combout\) # (!\inst|Mult0|auto_generated|add6_result[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le4a\(4),
	datab => \inst|Mult0|auto_generated|add10_result[4]~8_combout\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add6_result[5]~11\,
	combout => \inst|Mult0|auto_generated|add6_result[6]~12_combout\,
	cout => \inst|Mult0|auto_generated|add6_result[6]~13\);

-- Location: LCCOMB_X111_Y16_N22
\inst|Mult0|auto_generated|add6_result[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[7]~14_combout\ = !\inst|Mult0|auto_generated|add6_result[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mult0|auto_generated|add6_result[6]~13\,
	combout => \inst|Mult0|auto_generated|add6_result[7]~14_combout\);

-- Location: LCCOMB_X111_Y16_N2
\inst3|decOut_n[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[6]~26_combout\ = (\inst|Mult0|auto_generated|add6_result[4]~8_combout\ & (!\inst|Mult0|auto_generated|add6_result[7]~14_combout\ & (\inst|Mult0|auto_generated|add6_result[6]~12_combout\ $ 
-- (!\inst|Mult0|auto_generated|add6_result[5]~10_combout\)))) # (!\inst|Mult0|auto_generated|add6_result[4]~8_combout\ & (!\inst|Mult0|auto_generated|add6_result[5]~10_combout\ & (\inst|Mult0|auto_generated|add6_result[6]~12_combout\ $ 
-- (!\inst|Mult0|auto_generated|add6_result[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add6_result[6]~12_combout\,
	datab => \inst|Mult0|auto_generated|add6_result[4]~8_combout\,
	datac => \inst|Mult0|auto_generated|add6_result[7]~14_combout\,
	datad => \inst|Mult0|auto_generated|add6_result[5]~10_combout\,
	combout => \inst3|decOut_n[6]~26_combout\);

-- Location: LCCOMB_X111_Y16_N30
\inst3|decOut_n[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[6]~31_combout\ = (\SW[10]~input_o\) # ((\inst3|decOut_n[6]~26_combout\) # ((\SW[8]~input_o\) # (!\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst3|decOut_n[6]~26_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst3|decOut_n[6]~31_combout\);

-- Location: LCCOMB_X110_Y16_N4
\inst3|decOut_n[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[5]~12_combout\ = (\inst|Mult0|auto_generated|add6_result[4]~8_combout\ & (\inst|Mult0|auto_generated|add6_result[7]~14_combout\ $ (((\inst|Mult0|auto_generated|add6_result[5]~10_combout\) # 
-- (!\inst|Mult0|auto_generated|add6_result[6]~12_combout\))))) # (!\inst|Mult0|auto_generated|add6_result[4]~8_combout\ & (!\inst|Mult0|auto_generated|add6_result[7]~14_combout\ & (!\inst|Mult0|auto_generated|add6_result[6]~12_combout\ & 
-- \inst|Mult0|auto_generated|add6_result[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add6_result[7]~14_combout\,
	datab => \inst|Mult0|auto_generated|add6_result[4]~8_combout\,
	datac => \inst|Mult0|auto_generated|add6_result[6]~12_combout\,
	datad => \inst|Mult0|auto_generated|add6_result[5]~10_combout\,
	combout => \inst3|decOut_n[5]~12_combout\);

-- Location: LCCOMB_X111_Y16_N28
\inst3|decOut_n[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[5]~35_combout\ = (!\SW[10]~input_o\ & (\inst3|decOut_n[5]~12_combout\ & (\SW[9]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst3|decOut_n[5]~12_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst3|decOut_n[5]~35_combout\);

-- Location: LCCOMB_X110_Y16_N28
\inst3|decOut_n[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[4]~27_combout\ = (\inst|Mult0|auto_generated|add6_result[5]~10_combout\ & (!\inst|Mult0|auto_generated|add6_result[7]~14_combout\ & (\inst|Mult0|auto_generated|add6_result[4]~8_combout\))) # 
-- (!\inst|Mult0|auto_generated|add6_result[5]~10_combout\ & ((\inst|Mult0|auto_generated|add6_result[6]~12_combout\ & (!\inst|Mult0|auto_generated|add6_result[7]~14_combout\)) # (!\inst|Mult0|auto_generated|add6_result[6]~12_combout\ & 
-- ((\inst|Mult0|auto_generated|add6_result[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add6_result[7]~14_combout\,
	datab => \inst|Mult0|auto_generated|add6_result[4]~8_combout\,
	datac => \inst|Mult0|auto_generated|add6_result[6]~12_combout\,
	datad => \inst|Mult0|auto_generated|add6_result[5]~10_combout\,
	combout => \inst3|decOut_n[4]~27_combout\);

-- Location: LCCOMB_X111_Y16_N0
\inst3|decOut_n[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[4]~32_combout\ = (!\SW[10]~input_o\ & (\inst3|decOut_n[4]~27_combout\ & (\SW[9]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst3|decOut_n[4]~27_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst3|decOut_n[4]~32_combout\);

-- Location: LCCOMB_X111_Y16_N4
\inst3|decOut_n[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[3]~28_combout\ = (\inst|Mult0|auto_generated|add6_result[5]~10_combout\ & ((\inst|Mult0|auto_generated|add6_result[6]~12_combout\ & (\inst|Mult0|auto_generated|add6_result[4]~8_combout\)) # 
-- (!\inst|Mult0|auto_generated|add6_result[6]~12_combout\ & (!\inst|Mult0|auto_generated|add6_result[4]~8_combout\ & \inst|Mult0|auto_generated|add6_result[7]~14_combout\)))) # (!\inst|Mult0|auto_generated|add6_result[5]~10_combout\ & 
-- (!\inst|Mult0|auto_generated|add6_result[7]~14_combout\ & (\inst|Mult0|auto_generated|add6_result[6]~12_combout\ $ (\inst|Mult0|auto_generated|add6_result[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add6_result[6]~12_combout\,
	datab => \inst|Mult0|auto_generated|add6_result[4]~8_combout\,
	datac => \inst|Mult0|auto_generated|add6_result[7]~14_combout\,
	datad => \inst|Mult0|auto_generated|add6_result[5]~10_combout\,
	combout => \inst3|decOut_n[3]~28_combout\);

-- Location: LCCOMB_X111_Y16_N26
\inst3|decOut_n[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[3]~33_combout\ = (!\SW[10]~input_o\ & (\inst3|decOut_n[3]~28_combout\ & (\SW[9]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst3|decOut_n[3]~28_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst3|decOut_n[3]~33_combout\);

-- Location: LCCOMB_X110_Y16_N14
\inst3|decOut_n[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[2]~21_combout\ = (\inst|Mult0|auto_generated|add6_result[7]~14_combout\ & (\inst|Mult0|auto_generated|add6_result[6]~12_combout\ & ((\inst|Mult0|auto_generated|add6_result[5]~10_combout\) # 
-- (!\inst|Mult0|auto_generated|add6_result[4]~8_combout\)))) # (!\inst|Mult0|auto_generated|add6_result[7]~14_combout\ & (!\inst|Mult0|auto_generated|add6_result[4]~8_combout\ & (!\inst|Mult0|auto_generated|add6_result[6]~12_combout\ & 
-- \inst|Mult0|auto_generated|add6_result[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add6_result[7]~14_combout\,
	datab => \inst|Mult0|auto_generated|add6_result[4]~8_combout\,
	datac => \inst|Mult0|auto_generated|add6_result[6]~12_combout\,
	datad => \inst|Mult0|auto_generated|add6_result[5]~10_combout\,
	combout => \inst3|decOut_n[2]~21_combout\);

-- Location: LCCOMB_X111_Y16_N6
\inst3|decOut_n[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[2]~36_combout\ = (!\SW[10]~input_o\ & (!\SW[8]~input_o\ & (\SW[9]~input_o\ & \inst3|decOut_n[2]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \inst3|decOut_n[2]~21_combout\,
	combout => \inst3|decOut_n[2]~36_combout\);

-- Location: LCCOMB_X110_Y16_N30
\inst3|decOut_n[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[1]~29_combout\ = (\inst|Mult0|auto_generated|add6_result[7]~14_combout\ & ((\inst|Mult0|auto_generated|add6_result[4]~8_combout\ & ((\inst|Mult0|auto_generated|add6_result[5]~10_combout\))) # 
-- (!\inst|Mult0|auto_generated|add6_result[4]~8_combout\ & (\inst|Mult0|auto_generated|add6_result[6]~12_combout\)))) # (!\inst|Mult0|auto_generated|add6_result[7]~14_combout\ & (\inst|Mult0|auto_generated|add6_result[6]~12_combout\ & 
-- (\inst|Mult0|auto_generated|add6_result[4]~8_combout\ $ (\inst|Mult0|auto_generated|add6_result[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add6_result[7]~14_combout\,
	datab => \inst|Mult0|auto_generated|add6_result[4]~8_combout\,
	datac => \inst|Mult0|auto_generated|add6_result[6]~12_combout\,
	datad => \inst|Mult0|auto_generated|add6_result[5]~10_combout\,
	combout => \inst3|decOut_n[1]~29_combout\);

-- Location: LCCOMB_X110_Y16_N18
\inst3|decOut_n[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[1]~34_combout\ = (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & (\SW[9]~input_o\ & \inst3|decOut_n[1]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \inst3|decOut_n[1]~29_combout\,
	combout => \inst3|decOut_n[1]~34_combout\);

-- Location: LCCOMB_X110_Y16_N12
\inst|m[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|m[2]~9_combout\ = (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & (\SW[9]~input_o\ & \inst|Mult0|auto_generated|add6_result[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \inst|Mult0|auto_generated|add6_result[6]~12_combout\,
	combout => \inst|m[2]~9_combout\);

-- Location: LCCOMB_X110_Y16_N0
\inst|m[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|m[1]~11_combout\ = (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & (\SW[9]~input_o\ & \inst|Mult0|auto_generated|add6_result[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \inst|Mult0|auto_generated|add6_result[5]~10_combout\,
	combout => \inst|m[1]~11_combout\);

-- Location: LCCOMB_X110_Y16_N22
\inst|m[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|m[3]~10_combout\ = (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & (\SW[9]~input_o\ & \inst|Mult0|auto_generated|add6_result[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \inst|Mult0|auto_generated|add6_result[7]~14_combout\,
	combout => \inst|m[3]~10_combout\);

-- Location: LCCOMB_X110_Y16_N26
\inst|m[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|m[0]~8_combout\ = (\SW[8]~input_o\) # ((\SW[10]~input_o\) # ((!\inst|Mult0|auto_generated|add6_result[4]~8_combout\) # (!\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \inst|Mult0|auto_generated|add6_result[4]~8_combout\,
	combout => \inst|m[0]~8_combout\);

-- Location: LCCOMB_X110_Y16_N8
\inst3|decOut_n[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n[0]~30_combout\ = (\inst|m[2]~9_combout\ & (!\inst|m[1]~11_combout\ & (\inst|m[3]~10_combout\ $ (\inst|m[0]~8_combout\)))) # (!\inst|m[2]~9_combout\ & (!\inst|m[0]~8_combout\ & (\inst|m[1]~11_combout\ $ (!\inst|m[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|m[2]~9_combout\,
	datab => \inst|m[1]~11_combout\,
	datac => \inst|m[3]~10_combout\,
	datad => \inst|m[0]~8_combout\,
	combout => \inst3|decOut_n[0]~30_combout\);

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

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


