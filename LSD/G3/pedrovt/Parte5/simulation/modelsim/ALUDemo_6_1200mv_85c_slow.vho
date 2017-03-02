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

-- DATE "02/28/2017 01:18:34"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALUDemo_2 IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(10 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALUDemo_2;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALUDemo_2 IS
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
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \ALU1|Add3~1_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\ : std_logic;
SIGNAL \ALU1|Add3~0_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ : std_logic;
SIGNAL \ALU1|Add2~1_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|diff_signs~combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|quotient[1]~1_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \ALU1|Mux2~1_combout\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add6_result[0]~1\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add6_result[1]~2_combout\ : std_logic;
SIGNAL \ALU1|Mux2~2_combout\ : std_logic;
SIGNAL \ALU1|Add3~2_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ : std_logic;
SIGNAL \ALU1|Add2~0_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|StageOut[12]~6_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|StageOut[11]~4_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|StageOut[18]~10_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|StageOut[16]~8_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \ALU1|Add0~4_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \ALU1|Add0~11_combout\ : std_logic;
SIGNAL \ALU1|Add0~12_combout\ : std_logic;
SIGNAL \ALU1|Add0~13_combout\ : std_logic;
SIGNAL \ALU1|Add0~10_combout\ : std_logic;
SIGNAL \ALU1|Add0~14_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \ALU1|s_r~0_combout\ : std_logic;
SIGNAL \ALU1|Add0~15_combout\ : std_logic;
SIGNAL \ALU1|Add0~17_cout\ : std_logic;
SIGNAL \ALU1|Add0~19\ : std_logic;
SIGNAL \ALU1|Add0~20_combout\ : std_logic;
SIGNAL \ALU1|Mux2~0_combout\ : std_logic;
SIGNAL \ALU1|Add0~26_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \ALU1|Mux2~3_combout\ : std_logic;
SIGNAL \ALU1|RESULT~0_combout\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|cs3a[1]~0_combout\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add10_result[0]~1\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add10_result[1]~2_combout\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add10_result[0]~0_combout\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add6_result[1]~3\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add6_result[2]~5\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add6_result[3]~6_combout\ : std_logic;
SIGNAL \ALU1|Mux0~1_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|quotient[3]~0_combout\ : std_logic;
SIGNAL \ALU1|Mux0~2_combout\ : std_logic;
SIGNAL \ALU1|Add0~0_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \ALU1|Add0~2_combout\ : std_logic;
SIGNAL \ALU1|Add0~3_combout\ : std_logic;
SIGNAL \ALU1|Add0~5_combout\ : std_logic;
SIGNAL \ALU1|Add0~1_combout\ : std_logic;
SIGNAL \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \ALU1|Add0~7_combout\ : std_logic;
SIGNAL \ALU1|Add0~8_combout\ : std_logic;
SIGNAL \ALU1|Add0~9_combout\ : std_logic;
SIGNAL \ALU1|Add0~6_combout\ : std_logic;
SIGNAL \ALU1|Add0~21\ : std_logic;
SIGNAL \ALU1|Add0~23\ : std_logic;
SIGNAL \ALU1|Add0~24_combout\ : std_logic;
SIGNAL \ALU1|Mux0~0_combout\ : std_logic;
SIGNAL \ALU1|Mux0~3_combout\ : std_logic;
SIGNAL \ALU1|Mux1~6_combout\ : std_logic;
SIGNAL \ALU1|Mux1~2_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|quotient[2]~2_combout\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add6_result[2]~4_combout\ : std_logic;
SIGNAL \ALU1|Mux1~3_combout\ : std_logic;
SIGNAL \ALU1|Add0~22_combout\ : std_logic;
SIGNAL \ALU1|Mux1~4_combout\ : std_logic;
SIGNAL \ALU1|Mux1~5_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|bcd_out_2[3]~0_combout\ : std_logic;
SIGNAL \inst|bcd_out_2[3]~1_combout\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add6_result[0]~0_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \ALU1|Div0|auto_generated|divider|quotient[0]~3_combout\ : std_logic;
SIGNAL \ALU1|Mux3~0_combout\ : std_logic;
SIGNAL \ALU1|Mux3~1_combout\ : std_logic;
SIGNAL \ALU1|Add0~18_combout\ : std_logic;
SIGNAL \ALU1|Mux3~2_combout\ : std_logic;
SIGNAL \ALU1|Mux3~3_combout\ : std_logic;
SIGNAL \Decoder2|decOut_n~0_combout\ : std_logic;
SIGNAL \Decoder2|decOut_n~1_combout\ : std_logic;
SIGNAL \inst|bcd_out_2[2]~2_combout\ : std_logic;
SIGNAL \inst|bcd_out_2[1]~3_combout\ : std_logic;
SIGNAL \Decoder2|decOut_n~2_combout\ : std_logic;
SIGNAL \Decoder2|decOut_n~3_combout\ : std_logic;
SIGNAL \Decoder2|decOut_n~4_combout\ : std_logic;
SIGNAL \Decoder2|decOut_n~5_combout\ : std_logic;
SIGNAL \Decoder2|decOut_n~6_combout\ : std_logic;
SIGNAL \Decoder2|decOut_n~7_combout\ : std_logic;
SIGNAL \Decoder2|decOut_n~8_combout\ : std_logic;
SIGNAL \Decoder2|decOut_n~9_combout\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add10_result[1]~3\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add10_result[2]~5\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add10_result[3]~7\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add10_result[4]~8_combout\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add10_result[3]~6_combout\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add10_result[2]~4_combout\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add6_result[3]~7\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add6_result[4]~9\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add6_result[5]~11\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add6_result[6]~12_combout\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add6_result[6]~13\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add6_result[7]~14_combout\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add6_result[5]~10_combout\ : std_logic;
SIGNAL \ALU1|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|add6_result[4]~8_combout\ : std_logic;
SIGNAL \Decoder4|decOut_n~15_combout\ : std_logic;
SIGNAL \Decoder4|decOut_n~43_combout\ : std_logic;
SIGNAL \Decoder4|decOut_n~24_combout\ : std_logic;
SIGNAL \Decoder4|decOut_n~44_combout\ : std_logic;
SIGNAL \Decoder4|decOut_n~38_combout\ : std_logic;
SIGNAL \Decoder4|decOut_n~41_combout\ : std_logic;
SIGNAL \Decoder4|decOut_n~6_combout\ : std_logic;
SIGNAL \Decoder4|decOut_n~42_combout\ : std_logic;
SIGNAL \inst2|bcd_out_2[2]~3_combout\ : std_logic;
SIGNAL \inst2|bcd_out_2[1]~2_combout\ : std_logic;
SIGNAL \inst2|bcd_out_2[3]~1_combout\ : std_logic;
SIGNAL \ALU1|m[0]~6_combout\ : std_logic;
SIGNAL \Decoder4|decOut_n~39_combout\ : std_logic;
SIGNAL \Decoder4|decOut_n~40_combout\ : std_logic;
SIGNAL \Decoder4|decOut_n~33_combout\ : std_logic;
SIGNAL \Decoder4|decOut_n~45_combout\ : std_logic;
SIGNAL \inst2|bcd_out_2[3]~0_combout\ : std_logic;
SIGNAL \ALU1|m[2]~8_combout\ : std_logic;
SIGNAL \ALU1|m[1]~7_combout\ : std_logic;
SIGNAL \ALU1|Mult0|auto_generated|le4a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALU1|Div0|auto_generated|divider|divider|sel\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALU1|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALU1|Mult0|auto_generated|le2a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Decoder4|ALT_INV_decOut_n~44_combout\ : std_logic;
SIGNAL \Decoder4|ALT_INV_decOut_n~39_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \Decoder2|ALT_INV_decOut_n~7_combout\ : std_logic;
SIGNAL \Decoder2|ALT_INV_decOut_n~2_combout\ : std_logic;
SIGNAL \Decoder2|ALT_INV_decOut_n~1_combout\ : std_logic;

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
\Decoder4|ALT_INV_decOut_n~44_combout\ <= NOT \Decoder4|decOut_n~44_combout\;
\Decoder4|ALT_INV_decOut_n~39_combout\ <= NOT \Decoder4|decOut_n~39_combout\;
\inst2|ALT_INV_LessThan0~0_combout\ <= NOT \inst2|LessThan0~0_combout\;
\Decoder2|ALT_INV_decOut_n~7_combout\ <= NOT \Decoder2|decOut_n~7_combout\;
\Decoder2|ALT_INV_decOut_n~2_combout\ <= NOT \Decoder2|decOut_n~2_combout\;
\Decoder2|ALT_INV_decOut_n~1_combout\ <= NOT \Decoder2|decOut_n~1_combout\;

-- Location: IOOBUF_X34_Y2_N16
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder2|ALT_INV_decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder2|ALT_INV_decOut_n~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder2|decOut_n~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder2|decOut_n~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder2|ALT_INV_decOut_n~7_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder2|decOut_n~8_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder2|decOut_n~9_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder4|decOut_n~43_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder4|ALT_INV_decOut_n~44_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder4|decOut_n~41_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder4|decOut_n~42_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder4|ALT_INV_decOut_n~39_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder4|decOut_n~40_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder4|decOut_n~45_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|bcd_out_2[3]~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU1|m[2]~8_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU1|m[1]~7_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU1|m[0]~6_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU1|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU1|Mux1~5_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU1|Mux2~3_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU1|Mux3~3_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X11_Y24_N15
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X21_Y20_N14
\ALU1|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add3~1_combout\ = (!\SW[2]~input_o\ & (!\SW[0]~input_o\ & (\SW[3]~input_o\ & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \ALU1|Add3~1_combout\);

-- Location: LCCOMB_X21_Y20_N10
\ALU1|Div0|auto_generated|divider|divider|sel[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|divider|sel\(5) = (\SW[2]~input_o\ & (((!\SW[0]~input_o\ & !\SW[1]~input_o\)) # (!\SW[3]~input_o\))) # (!\SW[2]~input_o\ & (((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \ALU1|Div0|auto_generated|divider|divider|sel\(5));

-- Location: IOIBUF_X23_Y24_N1
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X21_Y20_N28
\ALU1|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\ = \SW[6]~input_o\ $ (((\SW[7]~input_o\ & ((\SW[4]~input_o\) # (\SW[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \ALU1|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\);

-- Location: LCCOMB_X21_Y20_N0
\ALU1|Div0|auto_generated|divider|divider|add_sub_1|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\ = (\ALU1|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => \ALU1|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\,
	combout => \ALU1|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\);

-- Location: LCCOMB_X21_Y20_N4
\ALU1|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add3~0_combout\ = \SW[1]~input_o\ $ (((\SW[0]~input_o\ & \SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \ALU1|Add3~0_combout\);

-- Location: LCCOMB_X21_Y20_N8
\ALU1|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ = (!\SW[4]~input_o\ & (!\SW[6]~input_o\ & (\SW[7]~input_o\ & !\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \ALU1|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\);

-- Location: LCCOMB_X22_Y20_N16
\ALU1|Div0|auto_generated|divider|divider|StageOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ = (\ALU1|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ & ((\ALU1|Div0|auto_generated|divider|divider|sel\(5)) # ((\ALU1|Add3~0_combout\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Div0|auto_generated|divider|divider|sel\(5),
	datab => \SW[0]~input_o\,
	datac => \ALU1|Add3~0_combout\,
	datad => \ALU1|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	combout => \ALU1|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\);

-- Location: LCCOMB_X21_Y20_N26
\ALU1|Div0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\ALU1|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ & ((\ALU1|Div0|auto_generated|divider|divider|sel\(5)) # (\ALU1|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\ 
-- $ (\ALU1|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Div0|auto_generated|divider|divider|sel\(5),
	datab => \ALU1|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\,
	datac => \ALU1|Add3~0_combout\,
	datad => \ALU1|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\,
	combout => \ALU1|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\);

-- Location: LCCOMB_X21_Y20_N30
\ALU1|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\ = \SW[2]~input_o\ $ (((\SW[3]~input_o\ & ((\SW[0]~input_o\) # (\SW[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \ALU1|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\);

-- Location: LCCOMB_X22_Y20_N2
\ALU1|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ = (\ALU1|Add3~0_combout\ & (\ALU1|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ & ((\ALU1|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\) # 
-- (!\SW[0]~input_o\)))) # (!\ALU1|Add3~0_combout\ & ((\ALU1|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\) # ((\ALU1|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\,
	datab => \SW[0]~input_o\,
	datac => \ALU1|Add3~0_combout\,
	datad => \ALU1|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\,
	combout => \ALU1|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\);

-- Location: LCCOMB_X22_Y20_N28
\ALU1|Div0|auto_generated|divider|divider|StageOut[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ = \ALU1|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\ $ (((!\ALU1|Div0|auto_generated|divider|divider|sel\(5) & (\SW[0]~input_o\ & 
-- \ALU1|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Div0|auto_generated|divider|divider|sel\(5),
	datab => \SW[0]~input_o\,
	datac => \ALU1|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\,
	datad => \ALU1|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	combout => \ALU1|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\);

-- Location: LCCOMB_X21_Y20_N16
\ALU1|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add2~1_combout\ = \SW[5]~input_o\ $ (((\SW[4]~input_o\ & \SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \ALU1|Add2~1_combout\);

-- Location: LCCOMB_X21_Y20_N18
\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\ALU1|Add2~1_combout\ & ((GND) # (!\SW[0]~input_o\))) # (!\ALU1|Add2~1_combout\ & (\SW[0]~input_o\ $ (GND)))
-- \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\ALU1|Add2~1_combout\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Add2~1_combout\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X21_Y20_N20
\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\ALU1|Add3~0_combout\ & ((\ALU1|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (!\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\ALU1|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\ALU1|Add3~0_combout\ & ((\ALU1|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & 
-- (\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\ALU1|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (!\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\ALU1|Add3~0_combout\ & ((!\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (!\ALU1|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\))) # 
-- (!\ALU1|Add3~0_combout\ & (!\ALU1|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & !\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Add3~0_combout\,
	datab => \ALU1|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datad => VCC,
	cin => \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X21_Y20_N22
\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\ALU1|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ (\ALU1|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\ $ 
-- (\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\ALU1|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ & ((!\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # 
-- (!\ALU1|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\))) # (!\ALU1|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ & (!\ALU1|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\ & 
-- !\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datab => \ALU1|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\,
	datad => VCC,
	cin => \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X21_Y20_N24
\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X21_Y20_N12
\ALU1|Div0|auto_generated|divider|divider|StageOut[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ = (\ALU1|Add3~1_combout\ & (((\ALU1|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\)))) # (!\ALU1|Add3~1_combout\ & 
-- ((\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\ALU1|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\))) # (!\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datab => \ALU1|Add3~1_combout\,
	datac => \ALU1|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \ALU1|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\);

-- Location: LCCOMB_X22_Y20_N30
\ALU1|Div0|auto_generated|divider|divider|StageOut[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ = (\ALU1|Add3~1_combout\ & (((\ALU1|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\)))) # (!\ALU1|Add3~1_combout\ & 
-- ((\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\ALU1|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\))) # (!\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Add3~1_combout\,
	datab => \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datac => \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \ALU1|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	combout => \ALU1|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\);

-- Location: LCCOMB_X21_Y20_N6
\ALU1|Div0|auto_generated|divider|divider|StageOut[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ = (\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\ALU1|Add2~1_combout\)))) # 
-- (!\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\ALU1|Add3~1_combout\ & ((\ALU1|Add2~1_combout\))) # (!\ALU1|Add3~1_combout\ & (\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \ALU1|Add3~1_combout\,
	datad => \ALU1|Add2~1_combout\,
	combout => \ALU1|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\);

-- Location: LCCOMB_X22_Y20_N18
\ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	cout => \ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X22_Y20_N20
\ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\ALU1|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ & (\ALU1|Add3~0_combout\ & !\ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)) # 
-- (!\ALU1|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ & ((\ALU1|Add3~0_combout\) # (!\ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	datab => \ALU1|Add3~0_combout\,
	datad => VCC,
	cin => \ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X22_Y20_N22
\ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\ALU1|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ & ((!\ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\) # 
-- (!\ALU1|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\))) # (!\ALU1|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ & (!\ALU1|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\ & 
-- !\ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datab => \ALU1|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~0_combout\,
	datad => VCC,
	cin => \ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X22_Y20_N24
\ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\ALU1|Add3~1_combout\ & ((!\ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\) # 
-- (!\ALU1|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\))) # (!\ALU1|Add3~1_combout\ & (!\ALU1|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ & !\ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Add3~1_combout\,
	datab => \ALU1|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\,
	datad => VCC,
	cin => \ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X22_Y20_N26
\ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\,
	combout => \ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X22_Y20_N4
\ALU1|Div0|auto_generated|divider|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|op_1~0_combout\ = \ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ $ (VCC)
-- \ALU1|Div0|auto_generated|divider|op_1~1\ = CARRY(\ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => VCC,
	combout => \ALU1|Div0|auto_generated|divider|op_1~0_combout\,
	cout => \ALU1|Div0|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X22_Y20_N6
\ALU1|Div0|auto_generated|divider|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|op_1~2_combout\ = (\ALU1|Add3~1_combout\ & (((!\ALU1|Div0|auto_generated|divider|op_1~1\)))) # (!\ALU1|Add3~1_combout\ & ((\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (!\ALU1|Div0|auto_generated|divider|op_1~1\)) # (!\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\ALU1|Div0|auto_generated|divider|op_1~1\) # (GND)))))
-- \ALU1|Div0|auto_generated|divider|op_1~3\ = CARRY(((!\ALU1|Add3~1_combout\ & !\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\)) # (!\ALU1|Div0|auto_generated|divider|op_1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Add3~1_combout\,
	datab => \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => VCC,
	cin => \ALU1|Div0|auto_generated|divider|op_1~1\,
	combout => \ALU1|Div0|auto_generated|divider|op_1~2_combout\,
	cout => \ALU1|Div0|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X23_Y20_N4
\ALU1|Div0|auto_generated|divider|diff_signs\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|diff_signs~combout\ = \SW[7]~input_o\ $ (\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \ALU1|Div0|auto_generated|divider|diff_signs~combout\);

-- Location: LCCOMB_X22_Y20_N12
\ALU1|Div0|auto_generated|divider|quotient[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|quotient[1]~1_combout\ = (\ALU1|Div0|auto_generated|divider|diff_signs~combout\ & (\ALU1|Div0|auto_generated|divider|op_1~2_combout\)) # (!\ALU1|Div0|auto_generated|divider|diff_signs~combout\ & (((!\ALU1|Add3~1_combout\ 
-- & !\ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Div0|auto_generated|divider|op_1~2_combout\,
	datab => \ALU1|Add3~1_combout\,
	datac => \ALU1|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \ALU1|Div0|auto_generated|divider|diff_signs~combout\,
	combout => \ALU1|Div0|auto_generated|divider|quotient[1]~1_combout\);

-- Location: IOIBUF_X28_Y24_N1
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X24_Y20_N0
\ALU1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux2~1_combout\ = (\SW[10]~input_o\ & ((\SW[5]~input_o\ & ((!\SW[8]~input_o\) # (!\SW[1]~input_o\))) # (!\SW[5]~input_o\ & (\SW[1]~input_o\)))) # (!\SW[10]~input_o\ & (((\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \ALU1|Mux2~1_combout\);

-- Location: LCCOMB_X22_Y19_N26
\ALU1|Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|le5a\(1) = (\SW[0]~input_o\ & (\SW[1]~input_o\ $ (((\SW[5]~input_o\))))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\ & (!\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \ALU1|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X22_Y19_N4
\ALU1|Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|le5a\(0) = \SW[1]~input_o\ $ (((\SW[4]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ALU1|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X22_Y18_N10
\ALU1|Mult0|auto_generated|add6_result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|add6_result[0]~0_combout\ = (\SW[1]~input_o\ & (\ALU1|Mult0|auto_generated|le5a\(0) $ (VCC))) # (!\SW[1]~input_o\ & (\ALU1|Mult0|auto_generated|le5a\(0) & VCC))
-- \ALU1|Mult0|auto_generated|add6_result[0]~1\ = CARRY((\SW[1]~input_o\ & \ALU1|Mult0|auto_generated|le5a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \ALU1|Mult0|auto_generated|le5a\(0),
	datad => VCC,
	combout => \ALU1|Mult0|auto_generated|add6_result[0]~0_combout\,
	cout => \ALU1|Mult0|auto_generated|add6_result[0]~1\);

-- Location: LCCOMB_X22_Y18_N12
\ALU1|Mult0|auto_generated|add6_result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|add6_result[1]~2_combout\ = (\ALU1|Mult0|auto_generated|le5a\(1) & (!\ALU1|Mult0|auto_generated|add6_result[0]~1\)) # (!\ALU1|Mult0|auto_generated|le5a\(1) & ((\ALU1|Mult0|auto_generated|add6_result[0]~1\) # (GND)))
-- \ALU1|Mult0|auto_generated|add6_result[1]~3\ = CARRY((!\ALU1|Mult0|auto_generated|add6_result[0]~1\) # (!\ALU1|Mult0|auto_generated|le5a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \ALU1|Mult0|auto_generated|add6_result[0]~1\,
	combout => \ALU1|Mult0|auto_generated|add6_result[1]~2_combout\,
	cout => \ALU1|Mult0|auto_generated|add6_result[1]~3\);

-- Location: LCCOMB_X23_Y20_N22
\ALU1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux2~2_combout\ = (\ALU1|Mux2~1_combout\ & ((\ALU1|Div0|auto_generated|divider|quotient[1]~1_combout\) # ((\SW[10]~input_o\)))) # (!\ALU1|Mux2~1_combout\ & (((!\SW[10]~input_o\ & \ALU1|Mult0|auto_generated|add6_result[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Div0|auto_generated|divider|quotient[1]~1_combout\,
	datab => \ALU1|Mux2~1_combout\,
	datac => \SW[10]~input_o\,
	datad => \ALU1|Mult0|auto_generated|add6_result[1]~2_combout\,
	combout => \ALU1|Mux2~2_combout\);

-- Location: LCCOMB_X22_Y19_N2
\ALU1|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add3~2_combout\ = \SW[2]~input_o\ $ ((((!\SW[1]~input_o\ & !\SW[0]~input_o\)) # (!\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ALU1|Add3~2_combout\);

-- Location: LCCOMB_X21_Y20_N2
\ALU1|Mod0|auto_generated|divider|divider|StageOut[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ = ((\SW[2]~input_o\ & ((!\SW[1]~input_o\) # (!\SW[3]~input_o\))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\) # (\SW[1]~input_o\)))) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \ALU1|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\);

-- Location: LCCOMB_X26_Y19_N16
\ALU1|Mod0|auto_generated|divider|divider|StageOut[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ = (\ALU1|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ & \ALU1|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU1|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datac => \ALU1|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	combout => \ALU1|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\);

-- Location: LCCOMB_X22_Y19_N0
\ALU1|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add2~0_combout\ = \SW[6]~input_o\ $ ((((!\SW[4]~input_o\ & !\SW[5]~input_o\)) # (!\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \ALU1|Add2~0_combout\);

-- Location: LCCOMB_X24_Y19_N6
\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\ALU1|Add2~0_combout\ & (\SW[0]~input_o\ $ (GND))) # (!\ALU1|Add2~0_combout\ & ((GND) # (!\SW[0]~input_o\)))
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((!\SW[0]~input_o\) # (!\ALU1|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Add2~0_combout\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X24_Y19_N8
\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\ALU1|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & ((\ALU1|Add3~0_combout\ & (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\ALU1|Add3~0_combout\ & (\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\ALU1|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & ((\ALU1|Add3~0_combout\ & 
-- ((\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\ALU1|Add3~0_combout\ & (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\ALU1|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & (\ALU1|Add3~0_combout\ & !\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\ALU1|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & ((\ALU1|Add3~0_combout\) # (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\,
	datab => \ALU1|Add3~0_combout\,
	datad => VCC,
	cin => \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X24_Y19_N10
\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = (\ALU1|Add3~2_combout\ & (\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ $ (GND))) # (!\ALU1|Add3~2_combout\ & 
-- (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ & VCC))
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\ALU1|Add3~2_combout\ & !\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ALU1|Add3~2_combout\,
	datad => VCC,
	cin => \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X24_Y19_N12
\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X24_Y19_N28
\ALU1|Mod0|auto_generated|divider|divider|StageOut[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|StageOut[12]~6_combout\ = (\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ & (!\ALU1|Add3~1_combout\ & !\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datab => \ALU1|Add3~1_combout\,
	datad => \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \ALU1|Mod0|auto_generated|divider|divider|StageOut[12]~6_combout\);

-- Location: LCCOMB_X24_Y19_N0
\ALU1|Mod0|auto_generated|divider|divider|StageOut[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|StageOut[11]~4_combout\ = (\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\ALU1|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\)))) # 
-- (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\ALU1|Add3~1_combout\ & ((\ALU1|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\))) # (!\ALU1|Add3~1_combout\ & 
-- (\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \ALU1|Add3~1_combout\,
	datac => \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datad => \ALU1|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\,
	combout => \ALU1|Mod0|auto_generated|divider|divider|StageOut[11]~4_combout\);

-- Location: LCCOMB_X24_Y19_N26
\ALU1|Mod0|auto_generated|divider|divider|StageOut[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ = (\ALU1|Add3~1_combout\ & (((!\ALU1|Add2~0_combout\)))) # (!\ALU1|Add3~1_combout\ & ((\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((!\ALU1|Add2~0_combout\))) # (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datab => \ALU1|Add3~1_combout\,
	datac => \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \ALU1|Add2~0_combout\,
	combout => \ALU1|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\);

-- Location: LCCOMB_X24_Y19_N16
\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\ALU1|Add2~1_combout\ $ (VCC))) # (!\SW[0]~input_o\ & ((\ALU1|Add2~1_combout\) # (GND)))
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\ALU1|Add2~1_combout\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \ALU1|Add2~1_combout\,
	datad => VCC,
	combout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X24_Y19_N18
\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\ALU1|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & ((\ALU1|Add3~0_combout\ & (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\ALU1|Add3~0_combout\ & (\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)))) # (!\ALU1|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & ((\ALU1|Add3~0_combout\ & 
-- ((\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))) # (!\ALU1|Add3~0_combout\ & (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\ALU1|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & (\ALU1|Add3~0_combout\ & !\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\ALU1|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & ((\ALU1|Add3~0_combout\) # (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\,
	datab => \ALU1|Add3~0_combout\,
	datad => VCC,
	cin => \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X24_Y19_N20
\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\ALU1|Mod0|auto_generated|divider|divider|StageOut[11]~4_combout\ $ (\ALU1|Add3~2_combout\ $ (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # 
-- (GND)
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\ALU1|Mod0|auto_generated|divider|divider|StageOut[11]~4_combout\ & ((\ALU1|Add3~2_combout\) # (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))) # 
-- (!\ALU1|Mod0|auto_generated|divider|divider|StageOut[11]~4_combout\ & (\ALU1|Add3~2_combout\ & !\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mod0|auto_generated|divider|divider|StageOut[11]~4_combout\,
	datab => \ALU1|Add3~2_combout\,
	datad => VCC,
	cin => \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X24_Y19_N22
\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\ALU1|Mod0|auto_generated|divider|divider|StageOut[12]~6_combout\ & ((\ALU1|Add3~1_combout\ & (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\ALU1|Add3~1_combout\ & (\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)))) # (!\ALU1|Mod0|auto_generated|divider|divider|StageOut[12]~6_combout\ & ((\ALU1|Add3~1_combout\ & 
-- ((\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))) # (!\ALU1|Add3~1_combout\ & (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\ALU1|Mod0|auto_generated|divider|divider|StageOut[12]~6_combout\ & (\ALU1|Add3~1_combout\ & !\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\ALU1|Mod0|auto_generated|divider|divider|StageOut[12]~6_combout\ & ((\ALU1|Add3~1_combout\) # (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mod0|auto_generated|divider|divider|StageOut[12]~6_combout\,
	datab => \ALU1|Add3~1_combout\,
	datad => VCC,
	cin => \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X24_Y19_N24
\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X25_Y19_N24
\ALU1|Mod0|auto_generated|divider|divider|StageOut[18]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|StageOut[18]~10_combout\ = (\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ & !\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	datad => \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \ALU1|Mod0|auto_generated|divider|divider|StageOut[18]~10_combout\);

-- Location: LCCOMB_X24_Y19_N14
\ALU1|Mod0|auto_generated|divider|divider|StageOut[18]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\ = (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (!\ALU1|Add3~1_combout\ & (\ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ & 
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \ALU1|Add3~1_combout\,
	datac => \ALU1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datad => \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \ALU1|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\);

-- Location: LCCOMB_X24_Y19_N30
\ALU1|Mod0|auto_generated|divider|divider|StageOut[17]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\ = (\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\ALU1|Mod0|auto_generated|divider|divider|StageOut[11]~4_combout\))) # 
-- (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datac => \ALU1|Mod0|auto_generated|divider|divider|StageOut[11]~4_combout\,
	datad => \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \ALU1|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\);

-- Location: LCCOMB_X24_Y19_N2
\ALU1|Mod0|auto_generated|divider|divider|StageOut[16]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|StageOut[16]~8_combout\ = (\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\ALU1|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\))) # 
-- (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datac => \ALU1|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\,
	datad => \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \ALU1|Mod0|auto_generated|divider|divider|StageOut[16]~8_combout\);

-- Location: LCCOMB_X24_Y19_N4
\ALU1|Mod0|auto_generated|divider|divider|StageOut[15]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\ = (\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\ALU1|Add2~1_combout\))) # (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ 
-- & (\ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datac => \ALU1|Add2~1_combout\,
	datad => \ALU1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \ALU1|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\);

-- Location: LCCOMB_X23_Y19_N12
\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\SW[4]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[4]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

-- Location: LCCOMB_X23_Y19_N14
\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\ALU1|Add3~0_combout\ & ((\ALU1|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\ & (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # 
-- (!\ALU1|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\ & ((\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))))) # (!\ALU1|Add3~0_combout\ & ((\ALU1|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\ & 
-- (\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)) # (!\ALU1|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\ & (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\ALU1|Add3~0_combout\ & ((!\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (!\ALU1|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\))) # 
-- (!\ALU1|Add3~0_combout\ & (!\ALU1|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\ & !\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Add3~0_combout\,
	datab => \ALU1|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\,
	datad => VCC,
	cin => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X23_Y19_N16
\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\ALU1|Mod0|auto_generated|divider|divider|StageOut[16]~8_combout\ $ (\ALU1|Add3~2_combout\ $ (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # 
-- (GND)
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\ALU1|Mod0|auto_generated|divider|divider|StageOut[16]~8_combout\ & ((\ALU1|Add3~2_combout\) # (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\))) # 
-- (!\ALU1|Mod0|auto_generated|divider|divider|StageOut[16]~8_combout\ & (\ALU1|Add3~2_combout\ & !\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mod0|auto_generated|divider|divider|StageOut[16]~8_combout\,
	datab => \ALU1|Add3~2_combout\,
	datad => VCC,
	cin => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X23_Y19_N18
\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\ALU1|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\ & ((\ALU1|Add3~1_combout\ & (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # 
-- (!\ALU1|Add3~1_combout\ & (\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)))) # (!\ALU1|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\ & ((\ALU1|Add3~1_combout\ & 
-- ((\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))) # (!\ALU1|Add3~1_combout\ & (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\ALU1|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\ & (\ALU1|Add3~1_combout\ & !\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # 
-- (!\ALU1|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\ & ((\ALU1|Add3~1_combout\) # (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\,
	datab => \ALU1|Add3~1_combout\,
	datad => VCC,
	cin => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X23_Y19_N20
\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\ = CARRY((\ALU1|Mod0|auto_generated|divider|divider|StageOut[18]~10_combout\) # ((\ALU1|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\) # 
-- (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mod0|auto_generated|divider|divider|StageOut[18]~10_combout\,
	datab => \ALU1|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\,
	datad => VCC,
	cin => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	cout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\);

-- Location: LCCOMB_X23_Y19_N22
\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\,
	combout => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: LCCOMB_X23_Y19_N28
\ALU1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add0~4_combout\ = (\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & \SW[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \SW[10]~input_o\,
	combout => \ALU1|Add0~4_combout\);

-- Location: LCCOMB_X23_Y19_N26
\ALU1|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add0~11_combout\ = (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\SW[10]~input_o\ & (\SW[7]~input_o\ $ (\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datac => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \SW[10]~input_o\,
	combout => \ALU1|Add0~11_combout\);

-- Location: LCCOMB_X24_Y20_N16
\ALU1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add0~12_combout\ = (\ALU1|Add0~11_combout\) # ((!\SW[10]~input_o\ & (\SW[1]~input_o\ $ (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \ALU1|Add0~11_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \ALU1|Add0~12_combout\);

-- Location: LCCOMB_X23_Y19_N4
\ALU1|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add0~13_combout\ = (\ALU1|Add0~12_combout\) # ((\ALU1|Add0~4_combout\ & (\SW[7]~input_o\ $ (\ALU1|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \ALU1|Add0~4_combout\,
	datac => \ALU1|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\,
	datad => \ALU1|Add0~12_combout\,
	combout => \ALU1|Add0~13_combout\);

-- Location: LCCOMB_X24_Y20_N20
\ALU1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add0~10_combout\ = (\SW[5]~input_o\ & !\SW[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \ALU1|Add0~10_combout\);

-- Location: LCCOMB_X24_Y20_N26
\ALU1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add0~14_combout\ = (\SW[10]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[10]~input_o\ & (\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \ALU1|Add0~14_combout\);

-- Location: LCCOMB_X23_Y19_N30
\ALU1|s_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|s_r~0_combout\ = \SW[7]~input_o\ $ (((\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\SW[4]~input_o\))) # (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	datab => \SW[7]~input_o\,
	datac => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \SW[4]~input_o\,
	combout => \ALU1|s_r~0_combout\);

-- Location: LCCOMB_X24_Y20_N28
\ALU1|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add0~15_combout\ = (\SW[10]~input_o\ & (\ALU1|s_r~0_combout\)) # (!\SW[10]~input_o\ & ((\SW[0]~input_o\ $ (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \ALU1|s_r~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \ALU1|Add0~15_combout\);

-- Location: LCCOMB_X24_Y20_N6
\ALU1|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add0~17_cout\ = CARRY(\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datad => VCC,
	cout => \ALU1|Add0~17_cout\);

-- Location: LCCOMB_X24_Y20_N8
\ALU1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add0~18_combout\ = (\ALU1|Add0~14_combout\ & ((\ALU1|Add0~15_combout\ & (\ALU1|Add0~17_cout\ & VCC)) # (!\ALU1|Add0~15_combout\ & (!\ALU1|Add0~17_cout\)))) # (!\ALU1|Add0~14_combout\ & ((\ALU1|Add0~15_combout\ & (!\ALU1|Add0~17_cout\)) # 
-- (!\ALU1|Add0~15_combout\ & ((\ALU1|Add0~17_cout\) # (GND)))))
-- \ALU1|Add0~19\ = CARRY((\ALU1|Add0~14_combout\ & (!\ALU1|Add0~15_combout\ & !\ALU1|Add0~17_cout\)) # (!\ALU1|Add0~14_combout\ & ((!\ALU1|Add0~17_cout\) # (!\ALU1|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Add0~14_combout\,
	datab => \ALU1|Add0~15_combout\,
	datad => VCC,
	cin => \ALU1|Add0~17_cout\,
	combout => \ALU1|Add0~18_combout\,
	cout => \ALU1|Add0~19\);

-- Location: LCCOMB_X24_Y20_N10
\ALU1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add0~20_combout\ = ((\ALU1|Add0~13_combout\ $ (\ALU1|Add0~10_combout\ $ (!\ALU1|Add0~19\)))) # (GND)
-- \ALU1|Add0~21\ = CARRY((\ALU1|Add0~13_combout\ & ((\ALU1|Add0~10_combout\) # (!\ALU1|Add0~19\))) # (!\ALU1|Add0~13_combout\ & (\ALU1|Add0~10_combout\ & !\ALU1|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Add0~13_combout\,
	datab => \ALU1|Add0~10_combout\,
	datad => VCC,
	cin => \ALU1|Add0~19\,
	combout => \ALU1|Add0~20_combout\,
	cout => \ALU1|Add0~21\);

-- Location: LCCOMB_X24_Y20_N24
\ALU1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux2~0_combout\ = (!\SW[8]~input_o\) # (!\SW[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \ALU1|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y20_N18
\ALU1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add0~26_combout\ = (\ALU1|Mux2~0_combout\ & (\ALU1|Add0~20_combout\)) # (!\ALU1|Mux2~0_combout\ & (((\SW[5]~input_o\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Add0~20_combout\,
	datab => \SW[5]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \ALU1|Mux2~0_combout\,
	combout => \ALU1|Add0~26_combout\);

-- Location: IOIBUF_X34_Y17_N1
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X23_Y20_N0
\ALU1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux2~3_combout\ = (\SW[9]~input_o\ & (\ALU1|Mux2~2_combout\)) # (!\SW[9]~input_o\ & ((\ALU1|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux2~2_combout\,
	datab => \ALU1|Add0~26_combout\,
	datad => \SW[9]~input_o\,
	combout => \ALU1|Mux2~3_combout\);

-- Location: LCCOMB_X23_Y20_N6
\ALU1|RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|RESULT~0_combout\ = (\SW[7]~input_o\) # (\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \ALU1|RESULT~0_combout\);

-- Location: LCCOMB_X23_Y18_N0
\ALU1|Mult0|auto_generated|le2a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|le2a\(1) = (\SW[4]~input_o\ & (\SW[2]~input_o\ & ((\SW[1]~input_o\)))) # (!\SW[4]~input_o\ & (\SW[3]~input_o\ & (\SW[2]~input_o\ $ (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ALU1|Mult0|auto_generated|le2a\(1));

-- Location: LCCOMB_X23_Y18_N8
\ALU1|Mult0|auto_generated|cs3a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|cs3a[1]~0_combout\ = \SW[2]~input_o\ $ (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \ALU1|Mult0|auto_generated|cs3a[1]~0_combout\);

-- Location: LCCOMB_X23_Y18_N2
\ALU1|Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|le4a\(1) = (\ALU1|Mult0|auto_generated|le2a\(1)) # ((\ALU1|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[3]~input_o\ $ (\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mult0|auto_generated|le2a\(1),
	datab => \SW[3]~input_o\,
	datac => \ALU1|Mult0|auto_generated|cs3a[1]~0_combout\,
	datad => \SW[5]~input_o\,
	combout => \ALU1|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X22_Y19_N30
\ALU1|Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|le5a\(3) = (\SW[0]~input_o\ & ((\SW[7]~input_o\ $ (\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (!\SW[6]~input_o\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \ALU1|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X22_Y19_N24
\ALU1|Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|le5a\(2) = (\SW[0]~input_o\ & (\SW[1]~input_o\ $ ((\SW[6]~input_o\)))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\ & ((!\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \ALU1|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X22_Y18_N0
\ALU1|Mult0|auto_generated|add10_result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|add10_result[0]~0_combout\ = (\SW[3]~input_o\ & (\ALU1|Mult0|auto_generated|le5a\(2) $ (VCC))) # (!\SW[3]~input_o\ & (\ALU1|Mult0|auto_generated|le5a\(2) & VCC))
-- \ALU1|Mult0|auto_generated|add10_result[0]~1\ = CARRY((\SW[3]~input_o\ & \ALU1|Mult0|auto_generated|le5a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \ALU1|Mult0|auto_generated|le5a\(2),
	datad => VCC,
	combout => \ALU1|Mult0|auto_generated|add10_result[0]~0_combout\,
	cout => \ALU1|Mult0|auto_generated|add10_result[0]~1\);

-- Location: LCCOMB_X22_Y18_N2
\ALU1|Mult0|auto_generated|add10_result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|add10_result[1]~2_combout\ = (\ALU1|Mult0|auto_generated|le5a\(3) & (!\ALU1|Mult0|auto_generated|add10_result[0]~1\)) # (!\ALU1|Mult0|auto_generated|le5a\(3) & ((\ALU1|Mult0|auto_generated|add10_result[0]~1\) # (GND)))
-- \ALU1|Mult0|auto_generated|add10_result[1]~3\ = CARRY((!\ALU1|Mult0|auto_generated|add10_result[0]~1\) # (!\ALU1|Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mult0|auto_generated|le5a\(3),
	datad => VCC,
	cin => \ALU1|Mult0|auto_generated|add10_result[0]~1\,
	combout => \ALU1|Mult0|auto_generated|add10_result[1]~2_combout\,
	cout => \ALU1|Mult0|auto_generated|add10_result[1]~3\);

-- Location: LCCOMB_X23_Y18_N10
\ALU1|Mult0|auto_generated|le2a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|le2a\(0) = (\SW[3]~input_o\ & (\SW[2]~input_o\ $ (!\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \ALU1|Mult0|auto_generated|le2a\(0));

-- Location: LCCOMB_X23_Y18_N20
\ALU1|Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|le4a\(0) = (\ALU1|Mult0|auto_generated|le2a\(0)) # ((\ALU1|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[3]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mult0|auto_generated|le2a\(0),
	datab => \SW[3]~input_o\,
	datac => \ALU1|Mult0|auto_generated|cs3a[1]~0_combout\,
	datad => \SW[4]~input_o\,
	combout => \ALU1|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X22_Y18_N14
\ALU1|Mult0|auto_generated|add6_result[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|add6_result[2]~4_combout\ = ((\ALU1|Mult0|auto_generated|le4a\(0) $ (\ALU1|Mult0|auto_generated|add10_result[0]~0_combout\ $ (!\ALU1|Mult0|auto_generated|add6_result[1]~3\)))) # (GND)
-- \ALU1|Mult0|auto_generated|add6_result[2]~5\ = CARRY((\ALU1|Mult0|auto_generated|le4a\(0) & ((\ALU1|Mult0|auto_generated|add10_result[0]~0_combout\) # (!\ALU1|Mult0|auto_generated|add6_result[1]~3\))) # (!\ALU1|Mult0|auto_generated|le4a\(0) & 
-- (\ALU1|Mult0|auto_generated|add10_result[0]~0_combout\ & !\ALU1|Mult0|auto_generated|add6_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mult0|auto_generated|le4a\(0),
	datab => \ALU1|Mult0|auto_generated|add10_result[0]~0_combout\,
	datad => VCC,
	cin => \ALU1|Mult0|auto_generated|add6_result[1]~3\,
	combout => \ALU1|Mult0|auto_generated|add6_result[2]~4_combout\,
	cout => \ALU1|Mult0|auto_generated|add6_result[2]~5\);

-- Location: LCCOMB_X22_Y18_N16
\ALU1|Mult0|auto_generated|add6_result[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|add6_result[3]~6_combout\ = (\ALU1|Mult0|auto_generated|le4a\(1) & ((\ALU1|Mult0|auto_generated|add10_result[1]~2_combout\ & (\ALU1|Mult0|auto_generated|add6_result[2]~5\ & VCC)) # 
-- (!\ALU1|Mult0|auto_generated|add10_result[1]~2_combout\ & (!\ALU1|Mult0|auto_generated|add6_result[2]~5\)))) # (!\ALU1|Mult0|auto_generated|le4a\(1) & ((\ALU1|Mult0|auto_generated|add10_result[1]~2_combout\ & 
-- (!\ALU1|Mult0|auto_generated|add6_result[2]~5\)) # (!\ALU1|Mult0|auto_generated|add10_result[1]~2_combout\ & ((\ALU1|Mult0|auto_generated|add6_result[2]~5\) # (GND)))))
-- \ALU1|Mult0|auto_generated|add6_result[3]~7\ = CARRY((\ALU1|Mult0|auto_generated|le4a\(1) & (!\ALU1|Mult0|auto_generated|add10_result[1]~2_combout\ & !\ALU1|Mult0|auto_generated|add6_result[2]~5\)) # (!\ALU1|Mult0|auto_generated|le4a\(1) & 
-- ((!\ALU1|Mult0|auto_generated|add6_result[2]~5\) # (!\ALU1|Mult0|auto_generated|add10_result[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mult0|auto_generated|le4a\(1),
	datab => \ALU1|Mult0|auto_generated|add10_result[1]~2_combout\,
	datad => VCC,
	cin => \ALU1|Mult0|auto_generated|add6_result[2]~5\,
	combout => \ALU1|Mult0|auto_generated|add6_result[3]~6_combout\,
	cout => \ALU1|Mult0|auto_generated|add6_result[3]~7\);

-- Location: LCCOMB_X23_Y20_N24
\ALU1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux0~1_combout\ = (\SW[10]~input_o\ & ((\ALU1|RESULT~0_combout\) # ((\SW[8]~input_o\)))) # (!\SW[10]~input_o\ & (((!\SW[8]~input_o\ & \ALU1|Mult0|auto_generated|add6_result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|RESULT~0_combout\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \ALU1|Mult0|auto_generated|add6_result[3]~6_combout\,
	combout => \ALU1|Mux0~1_combout\);

-- Location: LCCOMB_X22_Y19_N14
\ALU1|Div0|auto_generated|divider|divider|sel[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|divider|sel\(0) = (\SW[1]~input_o\ & (((!\SW[0]~input_o\) # (!\SW[3]~input_o\)) # (!\SW[2]~input_o\))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\) # ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ALU1|Div0|auto_generated|divider|divider|sel\(0));

-- Location: LCCOMB_X24_Y20_N22
\ALU1|Div0|auto_generated|divider|divider|add_sub_0|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ = (\ALU1|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \ALU1|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\);

-- Location: LCCOMB_X22_Y20_N8
\ALU1|Div0|auto_generated|divider|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|op_1~4_combout\ = (\ALU1|Div0|auto_generated|divider|op_1~3\ & (((\ALU1|Div0|auto_generated|divider|divider|sel\(5)) # (!\ALU1|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\)))) # 
-- (!\ALU1|Div0|auto_generated|divider|op_1~3\ & ((((\ALU1|Div0|auto_generated|divider|divider|sel\(5)) # (!\ALU1|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\)))))
-- \ALU1|Div0|auto_generated|divider|op_1~5\ = CARRY((!\ALU1|Div0|auto_generated|divider|op_1~3\ & ((\ALU1|Div0|auto_generated|divider|divider|sel\(5)) # (!\ALU1|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Div0|auto_generated|divider|divider|sel\(5),
	datab => \ALU1|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datad => VCC,
	cin => \ALU1|Div0|auto_generated|divider|op_1~3\,
	combout => \ALU1|Div0|auto_generated|divider|op_1~4_combout\,
	cout => \ALU1|Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X22_Y20_N10
\ALU1|Div0|auto_generated|divider|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|op_1~6_combout\ = \ALU1|Div0|auto_generated|divider|op_1~5\ $ (((\ALU1|Div0|auto_generated|divider|divider|sel\(0)) # (!\ALU1|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Div0|auto_generated|divider|divider|sel\(0),
	datad => \ALU1|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\,
	cin => \ALU1|Div0|auto_generated|divider|op_1~5\,
	combout => \ALU1|Div0|auto_generated|divider|op_1~6_combout\);

-- Location: LCCOMB_X22_Y20_N0
\ALU1|Div0|auto_generated|divider|quotient[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|quotient[3]~0_combout\ = (\ALU1|Div0|auto_generated|divider|diff_signs~combout\ & (((\ALU1|Div0|auto_generated|divider|op_1~6_combout\)))) # (!\ALU1|Div0|auto_generated|divider|diff_signs~combout\ & 
-- (!\ALU1|Div0|auto_generated|divider|divider|sel\(0) & (\ALU1|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Div0|auto_generated|divider|divider|sel\(0),
	datab => \ALU1|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\,
	datac => \ALU1|Div0|auto_generated|divider|op_1~6_combout\,
	datad => \ALU1|Div0|auto_generated|divider|diff_signs~combout\,
	combout => \ALU1|Div0|auto_generated|divider|quotient[3]~0_combout\);

-- Location: LCCOMB_X23_Y20_N18
\ALU1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux0~2_combout\ = (\SW[8]~input_o\ & ((\ALU1|Mux0~1_combout\ & (\ALU1|Div0|auto_generated|divider|diff_signs~combout\)) # (!\ALU1|Mux0~1_combout\ & ((\ALU1|Div0|auto_generated|divider|quotient[3]~0_combout\))))) # (!\SW[8]~input_o\ & 
-- (\ALU1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \ALU1|Mux0~1_combout\,
	datac => \ALU1|Div0|auto_generated|divider|diff_signs~combout\,
	datad => \ALU1|Div0|auto_generated|divider|quotient[3]~0_combout\,
	combout => \ALU1|Mux0~2_combout\);

-- Location: LCCOMB_X23_Y20_N16
\ALU1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add0~0_combout\ = (\SW[7]~input_o\ & (\SW[10]~input_o\ & (\SW[8]~input_o\ & \SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \ALU1|Add0~0_combout\);

-- Location: LCCOMB_X23_Y19_N24
\ALU1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add0~2_combout\ = (\SW[10]~input_o\ & (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\SW[7]~input_o\ $ (\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	combout => \ALU1|Add0~2_combout\);

-- Location: LCCOMB_X23_Y19_N10
\ALU1|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add0~3_combout\ = (\ALU1|Add0~2_combout\) # ((!\SW[10]~input_o\ & (\SW[3]~input_o\ $ (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \ALU1|Add0~2_combout\,
	datad => \SW[8]~input_o\,
	combout => \ALU1|Add0~3_combout\);

-- Location: LCCOMB_X23_Y19_N6
\ALU1|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add0~5_combout\ = (\ALU1|Add0~3_combout\) # ((\ALU1|Add0~4_combout\ & (\SW[7]~input_o\ $ (\ALU1|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \ALU1|Add0~4_combout\,
	datac => \ALU1|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\,
	datad => \ALU1|Add0~3_combout\,
	combout => \ALU1|Add0~5_combout\);

-- Location: LCCOMB_X24_Y20_N2
\ALU1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add0~1_combout\ = (\SW[7]~input_o\ & !\SW[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[7]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \ALU1|Add0~1_combout\);

-- Location: LCCOMB_X23_Y19_N8
\ALU1|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add0~7_combout\ = (\SW[10]~input_o\ & (!\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\SW[7]~input_o\ $ (\ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \ALU1|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	combout => \ALU1|Add0~7_combout\);

-- Location: LCCOMB_X23_Y19_N2
\ALU1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add0~8_combout\ = (\ALU1|Add0~7_combout\) # ((!\SW[10]~input_o\ & (\SW[2]~input_o\ $ (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \ALU1|Add0~7_combout\,
	datad => \SW[8]~input_o\,
	combout => \ALU1|Add0~8_combout\);

-- Location: LCCOMB_X23_Y19_N0
\ALU1|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add0~9_combout\ = (\ALU1|Add0~8_combout\) # ((\ALU1|Add0~4_combout\ & (\ALU1|Mod0|auto_generated|divider|divider|StageOut[16]~8_combout\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mod0|auto_generated|divider|divider|StageOut[16]~8_combout\,
	datab => \ALU1|Add0~8_combout\,
	datac => \SW[7]~input_o\,
	datad => \ALU1|Add0~4_combout\,
	combout => \ALU1|Add0~9_combout\);

-- Location: LCCOMB_X22_Y19_N12
\ALU1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add0~6_combout\ = (!\SW[10]~input_o\ & \SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datac => \SW[6]~input_o\,
	combout => \ALU1|Add0~6_combout\);

-- Location: LCCOMB_X24_Y20_N12
\ALU1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add0~22_combout\ = (\ALU1|Add0~9_combout\ & ((\ALU1|Add0~6_combout\ & (\ALU1|Add0~21\ & VCC)) # (!\ALU1|Add0~6_combout\ & (!\ALU1|Add0~21\)))) # (!\ALU1|Add0~9_combout\ & ((\ALU1|Add0~6_combout\ & (!\ALU1|Add0~21\)) # (!\ALU1|Add0~6_combout\ & 
-- ((\ALU1|Add0~21\) # (GND)))))
-- \ALU1|Add0~23\ = CARRY((\ALU1|Add0~9_combout\ & (!\ALU1|Add0~6_combout\ & !\ALU1|Add0~21\)) # (!\ALU1|Add0~9_combout\ & ((!\ALU1|Add0~21\) # (!\ALU1|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Add0~9_combout\,
	datab => \ALU1|Add0~6_combout\,
	datad => VCC,
	cin => \ALU1|Add0~21\,
	combout => \ALU1|Add0~22_combout\,
	cout => \ALU1|Add0~23\);

-- Location: LCCOMB_X24_Y20_N14
\ALU1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Add0~24_combout\ = \ALU1|Add0~5_combout\ $ (\ALU1|Add0~23\ $ (!\ALU1|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Add0~5_combout\,
	datad => \ALU1|Add0~1_combout\,
	cin => \ALU1|Add0~23\,
	combout => \ALU1|Add0~24_combout\);

-- Location: LCCOMB_X23_Y20_N10
\ALU1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux0~0_combout\ = (!\SW[9]~input_o\ & ((\ALU1|Add0~0_combout\) # ((\ALU1|Add0~24_combout\ & \ALU1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \ALU1|Add0~0_combout\,
	datac => \ALU1|Add0~24_combout\,
	datad => \ALU1|Mux2~0_combout\,
	combout => \ALU1|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y20_N28
\ALU1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux0~3_combout\ = (\ALU1|Mux0~0_combout\) # ((\SW[9]~input_o\ & \ALU1|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \ALU1|Mux0~2_combout\,
	datad => \ALU1|Mux0~0_combout\,
	combout => \ALU1|Mux0~3_combout\);

-- Location: LCCOMB_X24_Y20_N30
\ALU1|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux1~6_combout\ = (\SW[10]~input_o\ & ((\SW[9]~input_o\) # (!\SW[8]~input_o\))) # (!\SW[10]~input_o\ & ((!\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ALU1|Mux1~6_combout\);

-- Location: LCCOMB_X23_Y20_N26
\ALU1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux1~2_combout\ = (\SW[2]~input_o\ & ((\SW[6]~input_o\ & ((!\SW[9]~input_o\) # (!\SW[8]~input_o\))) # (!\SW[6]~input_o\ & ((\SW[9]~input_o\))))) # (!\SW[2]~input_o\ & (\SW[6]~input_o\ & ((\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ALU1|Mux1~2_combout\);

-- Location: LCCOMB_X22_Y20_N14
\ALU1|Div0|auto_generated|divider|quotient[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|quotient[2]~2_combout\ = (\ALU1|Div0|auto_generated|divider|diff_signs~combout\ & (((\ALU1|Div0|auto_generated|divider|op_1~4_combout\)))) # (!\ALU1|Div0|auto_generated|divider|diff_signs~combout\ & 
-- (!\ALU1|Div0|auto_generated|divider|divider|sel\(5) & (\ALU1|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Div0|auto_generated|divider|divider|sel\(5),
	datab => \ALU1|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datac => \ALU1|Div0|auto_generated|divider|op_1~4_combout\,
	datad => \ALU1|Div0|auto_generated|divider|diff_signs~combout\,
	combout => \ALU1|Div0|auto_generated|divider|quotient[2]~2_combout\);

-- Location: LCCOMB_X22_Y18_N26
\ALU1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux1~3_combout\ = (\SW[8]~input_o\ & (\ALU1|Div0|auto_generated|divider|quotient[2]~2_combout\)) # (!\SW[8]~input_o\ & ((\ALU1|Mult0|auto_generated|add6_result[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU1|Div0|auto_generated|divider|quotient[2]~2_combout\,
	datac => \ALU1|Mult0|auto_generated|add6_result[2]~4_combout\,
	datad => \SW[8]~input_o\,
	combout => \ALU1|Mux1~3_combout\);

-- Location: LCCOMB_X25_Y20_N16
\ALU1|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux1~4_combout\ = (\ALU1|Mux1~6_combout\ & ((\ALU1|Add0~22_combout\))) # (!\ALU1|Mux1~6_combout\ & (\ALU1|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux1~3_combout\,
	datac => \ALU1|Add0~22_combout\,
	datad => \ALU1|Mux1~6_combout\,
	combout => \ALU1|Mux1~4_combout\);

-- Location: LCCOMB_X25_Y20_N26
\ALU1|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux1~5_combout\ = (\SW[9]~input_o\ & ((\ALU1|Mux1~6_combout\ & (\ALU1|Mux1~2_combout\)) # (!\ALU1|Mux1~6_combout\ & ((\ALU1|Mux1~4_combout\))))) # (!\SW[9]~input_o\ & ((\ALU1|Mux1~6_combout\ & ((\ALU1|Mux1~4_combout\))) # (!\ALU1|Mux1~6_combout\ & 
-- (\ALU1|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \ALU1|Mux1~6_combout\,
	datac => \ALU1|Mux1~2_combout\,
	datad => \ALU1|Mux1~4_combout\,
	combout => \ALU1|Mux1~5_combout\);

-- Location: LCCOMB_X25_Y20_N20
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (\ALU1|Mux0~3_combout\ & ((\ALU1|Mux2~3_combout\) # (\ALU1|Mux1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux2~3_combout\,
	datab => \ALU1|Mux0~3_combout\,
	datac => \ALU1|Mux1~5_combout\,
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y20_N20
\inst|bcd_out_2[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bcd_out_2[3]~0_combout\ = (!\ALU1|Mux2~2_combout\ & (\ALU1|Mux0~2_combout\ & \SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux2~2_combout\,
	datab => \ALU1|Mux0~2_combout\,
	datad => \SW[9]~input_o\,
	combout => \inst|bcd_out_2[3]~0_combout\);

-- Location: LCCOMB_X23_Y20_N30
\inst|bcd_out_2[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bcd_out_2[3]~1_combout\ = (!\ALU1|Mux1~5_combout\ & ((\inst|bcd_out_2[3]~0_combout\) # ((\ALU1|Mux0~0_combout\ & !\ALU1|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux0~0_combout\,
	datab => \inst|bcd_out_2[3]~0_combout\,
	datac => \ALU1|Mux1~5_combout\,
	datad => \ALU1|Add0~26_combout\,
	combout => \inst|bcd_out_2[3]~1_combout\);

-- Location: LCCOMB_X22_Y19_N16
\ALU1|Div0|auto_generated|divider|quotient[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Div0|auto_generated|divider|quotient[0]~3_combout\ = (\ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\ALU1|Div0|auto_generated|divider|op_1~0_combout\ & (\SW[7]~input_o\ $ (\SW[3]~input_o\)))) # 
-- (!\ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\ALU1|Div0|auto_generated|divider|op_1~0_combout\) # (\SW[7]~input_o\ $ (!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datab => \SW[7]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \ALU1|Div0|auto_generated|divider|op_1~0_combout\,
	combout => \ALU1|Div0|auto_generated|divider|quotient[0]~3_combout\);

-- Location: LCCOMB_X22_Y19_N10
\ALU1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux3~0_combout\ = (\SW[10]~input_o\ & (((\SW[8]~input_o\)))) # (!\SW[10]~input_o\ & ((\SW[8]~input_o\ & ((\ALU1|Div0|auto_generated|divider|quotient[0]~3_combout\))) # (!\SW[8]~input_o\ & (\ALU1|Mult0|auto_generated|add6_result[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mult0|auto_generated|add6_result[0]~0_combout\,
	datab => \ALU1|Div0|auto_generated|divider|quotient[0]~3_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \ALU1|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y19_N20
\ALU1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux3~1_combout\ = (\SW[10]~input_o\ & ((\SW[4]~input_o\ & ((!\SW[0]~input_o\) # (!\ALU1|Mux3~0_combout\))) # (!\SW[4]~input_o\ & ((\SW[0]~input_o\))))) # (!\SW[10]~input_o\ & (\ALU1|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux3~0_combout\,
	datab => \SW[4]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ALU1|Mux3~1_combout\);

-- Location: LCCOMB_X24_Y20_N4
\ALU1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux3~2_combout\ = (\ALU1|Mux2~0_combout\ & (((\ALU1|Add0~18_combout\)))) # (!\ALU1|Mux2~0_combout\ & (\SW[0]~input_o\ & (\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \ALU1|Add0~18_combout\,
	datad => \ALU1|Mux2~0_combout\,
	combout => \ALU1|Mux3~2_combout\);

-- Location: LCCOMB_X25_Y20_N6
\ALU1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mux3~3_combout\ = (\SW[9]~input_o\ & (\ALU1|Mux3~1_combout\)) # (!\SW[9]~input_o\ & ((\ALU1|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux3~1_combout\,
	datac => \ALU1|Mux3~2_combout\,
	datad => \SW[9]~input_o\,
	combout => \ALU1|Mux3~3_combout\);

-- Location: LCCOMB_X25_Y20_N8
\Decoder2|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder2|decOut_n~0_combout\ = (\ALU1|Mux3~3_combout\ & (\ALU1|Mux1~5_combout\ $ (((\ALU1|Mux2~3_combout\ & !\ALU1|Mux0~3_combout\))))) # (!\ALU1|Mux3~3_combout\ & ((\ALU1|Mux1~5_combout\) # (\ALU1|Mux2~3_combout\ $ (\ALU1|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux2~3_combout\,
	datab => \ALU1|Mux0~3_combout\,
	datac => \ALU1|Mux1~5_combout\,
	datad => \ALU1|Mux3~3_combout\,
	combout => \Decoder2|decOut_n~0_combout\);

-- Location: LCCOMB_X25_Y20_N2
\Decoder2|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder2|decOut_n~1_combout\ = (\Decoder2|decOut_n~0_combout\) # ((\inst|bcd_out_2[3]~1_combout\ & \ALU1|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bcd_out_2[3]~1_combout\,
	datac => \Decoder2|decOut_n~0_combout\,
	datad => \ALU1|Mux3~3_combout\,
	combout => \Decoder2|decOut_n~1_combout\);

-- Location: LCCOMB_X25_Y20_N12
\inst|bcd_out_2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bcd_out_2[2]~2_combout\ = (\ALU1|Mux1~5_combout\ & ((\ALU1|Mux2~3_combout\) # (!\ALU1|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux2~3_combout\,
	datab => \ALU1|Mux0~3_combout\,
	datac => \ALU1|Mux1~5_combout\,
	combout => \inst|bcd_out_2[2]~2_combout\);

-- Location: LCCOMB_X25_Y20_N22
\inst|bcd_out_2[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bcd_out_2[1]~3_combout\ = (\ALU1|Mux2~3_combout\ & (!\ALU1|Mux0~3_combout\)) # (!\ALU1|Mux2~3_combout\ & (\ALU1|Mux0~3_combout\ & \ALU1|Mux1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux2~3_combout\,
	datab => \ALU1|Mux0~3_combout\,
	datac => \ALU1|Mux1~5_combout\,
	combout => \inst|bcd_out_2[1]~3_combout\);

-- Location: LCCOMB_X25_Y20_N0
\Decoder2|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder2|decOut_n~2_combout\ = (\inst|bcd_out_2[3]~1_combout\) # ((\inst|bcd_out_2[2]~2_combout\ & ((!\ALU1|Mux3~3_combout\) # (!\inst|bcd_out_2[1]~3_combout\))) # (!\inst|bcd_out_2[2]~2_combout\ & (!\inst|bcd_out_2[1]~3_combout\ & 
-- !\ALU1|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_out_2[2]~2_combout\,
	datab => \inst|bcd_out_2[3]~1_combout\,
	datac => \inst|bcd_out_2[1]~3_combout\,
	datad => \ALU1|Mux3~3_combout\,
	combout => \Decoder2|decOut_n~2_combout\);

-- Location: LCCOMB_X25_Y20_N18
\Decoder2|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder2|decOut_n~3_combout\ = (\ALU1|Mux1~5_combout\ & ((\ALU1|Mux3~3_combout\) # (\ALU1|Mux2~3_combout\ $ (!\ALU1|Mux0~3_combout\)))) # (!\ALU1|Mux1~5_combout\ & (\ALU1|Mux3~3_combout\ & ((\ALU1|Mux2~3_combout\) # (!\ALU1|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux2~3_combout\,
	datab => \ALU1|Mux0~3_combout\,
	datac => \ALU1|Mux1~5_combout\,
	datad => \ALU1|Mux3~3_combout\,
	combout => \Decoder2|decOut_n~3_combout\);

-- Location: LCCOMB_X25_Y20_N28
\Decoder2|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder2|decOut_n~4_combout\ = (\Decoder2|decOut_n~3_combout\) # ((\ALU1|Mux3~3_combout\ & (!\inst|bcd_out_2[1]~3_combout\ & \inst|bcd_out_2[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux3~3_combout\,
	datab => \Decoder2|decOut_n~3_combout\,
	datac => \inst|bcd_out_2[1]~3_combout\,
	datad => \inst|bcd_out_2[3]~1_combout\,
	combout => \Decoder2|decOut_n~4_combout\);

-- Location: LCCOMB_X25_Y20_N30
\Decoder2|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder2|decOut_n~5_combout\ = (\ALU1|Mux2~3_combout\ & (!\ALU1|Mux0~3_combout\)) # (!\ALU1|Mux2~3_combout\ & (\ALU1|Mux0~3_combout\ & !\ALU1|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux2~3_combout\,
	datab => \ALU1|Mux0~3_combout\,
	datad => \ALU1|Mux3~3_combout\,
	combout => \Decoder2|decOut_n~5_combout\);

-- Location: LCCOMB_X25_Y20_N24
\Decoder2|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder2|decOut_n~6_combout\ = (\ALU1|Mux3~3_combout\ & (!\inst|bcd_out_2[3]~1_combout\ & (\ALU1|Mux1~5_combout\ $ (!\Decoder2|decOut_n~5_combout\)))) # (!\ALU1|Mux3~3_combout\ & (\ALU1|Mux1~5_combout\ & ((!\Decoder2|decOut_n~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux1~5_combout\,
	datab => \inst|bcd_out_2[3]~1_combout\,
	datac => \Decoder2|decOut_n~5_combout\,
	datad => \ALU1|Mux3~3_combout\,
	combout => \Decoder2|decOut_n~6_combout\);

-- Location: LCCOMB_X25_Y20_N10
\Decoder2|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder2|decOut_n~7_combout\ = (\inst|bcd_out_2[2]~2_combout\) # ((\inst|bcd_out_2[3]~1_combout\) # ((\ALU1|Mux3~3_combout\) # (!\inst|bcd_out_2[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_out_2[2]~2_combout\,
	datab => \inst|bcd_out_2[3]~1_combout\,
	datac => \inst|bcd_out_2[1]~3_combout\,
	datad => \ALU1|Mux3~3_combout\,
	combout => \Decoder2|decOut_n~7_combout\);

-- Location: LCCOMB_X25_Y20_N4
\Decoder2|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder2|decOut_n~8_combout\ = (\ALU1|Mux1~5_combout\ & ((\ALU1|Mux2~3_combout\ & (\ALU1|Mux0~3_combout\ $ (!\ALU1|Mux3~3_combout\))) # (!\ALU1|Mux2~3_combout\ & (!\ALU1|Mux0~3_combout\ & \ALU1|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mux2~3_combout\,
	datab => \ALU1|Mux0~3_combout\,
	datac => \ALU1|Mux1~5_combout\,
	datad => \ALU1|Mux3~3_combout\,
	combout => \Decoder2|decOut_n~8_combout\);

-- Location: LCCOMB_X25_Y20_N14
\Decoder2|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder2|decOut_n~9_combout\ = (!\inst|bcd_out_2[1]~3_combout\ & ((\inst|bcd_out_2[2]~2_combout\ & ((!\ALU1|Mux3~3_combout\))) # (!\inst|bcd_out_2[2]~2_combout\ & (!\inst|bcd_out_2[3]~1_combout\ & \ALU1|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_out_2[2]~2_combout\,
	datab => \inst|bcd_out_2[3]~1_combout\,
	datac => \inst|bcd_out_2[1]~3_combout\,
	datad => \ALU1|Mux3~3_combout\,
	combout => \Decoder2|decOut_n~9_combout\);

-- Location: LCCOMB_X23_Y18_N16
\ALU1|Mult0|auto_generated|le2a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|le2a\(4) = (\SW[7]~input_o\ & (\SW[2]~input_o\ & ((\SW[1]~input_o\)))) # (!\SW[7]~input_o\ & (\SW[3]~input_o\ & (\SW[2]~input_o\ $ (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \ALU1|Mult0|auto_generated|le2a\(4));

-- Location: LCCOMB_X23_Y18_N24
\ALU1|Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|le4a\(4) = (\ALU1|Mult0|auto_generated|le2a\(4)) # ((\ALU1|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[7]~input_o\ $ (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \ALU1|Mult0|auto_generated|le2a\(4),
	datac => \ALU1|Mult0|auto_generated|cs3a[1]~0_combout\,
	datad => \SW[3]~input_o\,
	combout => \ALU1|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X22_Y19_N22
\ALU1|Mult0|auto_generated|le5a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|le5a\(4) = (\SW[1]~input_o\ & ((!\SW[7]~input_o\))) # (!\SW[1]~input_o\ & (\SW[0]~input_o\ & \SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[7]~input_o\,
	combout => \ALU1|Mult0|auto_generated|le5a\(4));

-- Location: LCCOMB_X22_Y18_N4
\ALU1|Mult0|auto_generated|add10_result[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|add10_result[2]~4_combout\ = (\ALU1|Mult0|auto_generated|le5a\(4) & (\ALU1|Mult0|auto_generated|add10_result[1]~3\ $ (GND))) # (!\ALU1|Mult0|auto_generated|le5a\(4) & ((GND) # (!\ALU1|Mult0|auto_generated|add10_result[1]~3\)))
-- \ALU1|Mult0|auto_generated|add10_result[2]~5\ = CARRY((!\ALU1|Mult0|auto_generated|add10_result[1]~3\) # (!\ALU1|Mult0|auto_generated|le5a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mult0|auto_generated|le5a\(4),
	datad => VCC,
	cin => \ALU1|Mult0|auto_generated|add10_result[1]~3\,
	combout => \ALU1|Mult0|auto_generated|add10_result[2]~4_combout\,
	cout => \ALU1|Mult0|auto_generated|add10_result[2]~5\);

-- Location: LCCOMB_X22_Y18_N6
\ALU1|Mult0|auto_generated|add10_result[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|add10_result[3]~6_combout\ = !\ALU1|Mult0|auto_generated|add10_result[2]~5\
-- \ALU1|Mult0|auto_generated|add10_result[3]~7\ = CARRY(!\ALU1|Mult0|auto_generated|add10_result[2]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \ALU1|Mult0|auto_generated|add10_result[2]~5\,
	combout => \ALU1|Mult0|auto_generated|add10_result[3]~6_combout\,
	cout => \ALU1|Mult0|auto_generated|add10_result[3]~7\);

-- Location: LCCOMB_X22_Y18_N8
\ALU1|Mult0|auto_generated|add10_result[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|add10_result[4]~8_combout\ = !\ALU1|Mult0|auto_generated|add10_result[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ALU1|Mult0|auto_generated|add10_result[3]~7\,
	combout => \ALU1|Mult0|auto_generated|add10_result[4]~8_combout\);

-- Location: LCCOMB_X23_Y18_N12
\ALU1|Mult0|auto_generated|le2a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|le2a\(3) = (\SW[6]~input_o\ & (\SW[2]~input_o\ & (\SW[1]~input_o\))) # (!\SW[6]~input_o\ & (\SW[3]~input_o\ & (\SW[2]~input_o\ $ (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \ALU1|Mult0|auto_generated|le2a\(3));

-- Location: LCCOMB_X23_Y18_N14
\ALU1|Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|le4a\(3) = (\ALU1|Mult0|auto_generated|le2a\(3)) # ((\ALU1|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[7]~input_o\ $ (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \ALU1|Mult0|auto_generated|cs3a[1]~0_combout\,
	datad => \ALU1|Mult0|auto_generated|le2a\(3),
	combout => \ALU1|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X23_Y18_N30
\ALU1|Mult0|auto_generated|le2a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|le2a\(2) = (\SW[5]~input_o\ & (\SW[2]~input_o\ & ((\SW[1]~input_o\)))) # (!\SW[5]~input_o\ & (\SW[3]~input_o\ & (\SW[2]~input_o\ $ (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \ALU1|Mult0|auto_generated|le2a\(2));

-- Location: LCCOMB_X23_Y18_N6
\ALU1|Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|le4a\(2) = (\ALU1|Mult0|auto_generated|le2a\(2)) # ((\ALU1|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[6]~input_o\ $ (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mult0|auto_generated|le2a\(2),
	datab => \SW[6]~input_o\,
	datac => \ALU1|Mult0|auto_generated|cs3a[1]~0_combout\,
	datad => \SW[3]~input_o\,
	combout => \ALU1|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X22_Y18_N18
\ALU1|Mult0|auto_generated|add6_result[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|add6_result[4]~8_combout\ = ((\ALU1|Mult0|auto_generated|le4a\(2) $ (\ALU1|Mult0|auto_generated|add10_result[2]~4_combout\ $ (!\ALU1|Mult0|auto_generated|add6_result[3]~7\)))) # (GND)
-- \ALU1|Mult0|auto_generated|add6_result[4]~9\ = CARRY((\ALU1|Mult0|auto_generated|le4a\(2) & ((\ALU1|Mult0|auto_generated|add10_result[2]~4_combout\) # (!\ALU1|Mult0|auto_generated|add6_result[3]~7\))) # (!\ALU1|Mult0|auto_generated|le4a\(2) & 
-- (\ALU1|Mult0|auto_generated|add10_result[2]~4_combout\ & !\ALU1|Mult0|auto_generated|add6_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mult0|auto_generated|le4a\(2),
	datab => \ALU1|Mult0|auto_generated|add10_result[2]~4_combout\,
	datad => VCC,
	cin => \ALU1|Mult0|auto_generated|add6_result[3]~7\,
	combout => \ALU1|Mult0|auto_generated|add6_result[4]~8_combout\,
	cout => \ALU1|Mult0|auto_generated|add6_result[4]~9\);

-- Location: LCCOMB_X22_Y18_N20
\ALU1|Mult0|auto_generated|add6_result[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|add6_result[5]~10_combout\ = (\ALU1|Mult0|auto_generated|add10_result[3]~6_combout\ & ((\ALU1|Mult0|auto_generated|le4a\(3) & (\ALU1|Mult0|auto_generated|add6_result[4]~9\ & VCC)) # (!\ALU1|Mult0|auto_generated|le4a\(3) & 
-- (!\ALU1|Mult0|auto_generated|add6_result[4]~9\)))) # (!\ALU1|Mult0|auto_generated|add10_result[3]~6_combout\ & ((\ALU1|Mult0|auto_generated|le4a\(3) & (!\ALU1|Mult0|auto_generated|add6_result[4]~9\)) # (!\ALU1|Mult0|auto_generated|le4a\(3) & 
-- ((\ALU1|Mult0|auto_generated|add6_result[4]~9\) # (GND)))))
-- \ALU1|Mult0|auto_generated|add6_result[5]~11\ = CARRY((\ALU1|Mult0|auto_generated|add10_result[3]~6_combout\ & (!\ALU1|Mult0|auto_generated|le4a\(3) & !\ALU1|Mult0|auto_generated|add6_result[4]~9\)) # 
-- (!\ALU1|Mult0|auto_generated|add10_result[3]~6_combout\ & ((!\ALU1|Mult0|auto_generated|add6_result[4]~9\) # (!\ALU1|Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mult0|auto_generated|add10_result[3]~6_combout\,
	datab => \ALU1|Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \ALU1|Mult0|auto_generated|add6_result[4]~9\,
	combout => \ALU1|Mult0|auto_generated|add6_result[5]~10_combout\,
	cout => \ALU1|Mult0|auto_generated|add6_result[5]~11\);

-- Location: LCCOMB_X22_Y18_N22
\ALU1|Mult0|auto_generated|add6_result[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|add6_result[6]~12_combout\ = ((\ALU1|Mult0|auto_generated|le4a\(4) $ (\ALU1|Mult0|auto_generated|add10_result[4]~8_combout\ $ (\ALU1|Mult0|auto_generated|add6_result[5]~11\)))) # (GND)
-- \ALU1|Mult0|auto_generated|add6_result[6]~13\ = CARRY((\ALU1|Mult0|auto_generated|le4a\(4) & (\ALU1|Mult0|auto_generated|add10_result[4]~8_combout\ & !\ALU1|Mult0|auto_generated|add6_result[5]~11\)) # (!\ALU1|Mult0|auto_generated|le4a\(4) & 
-- ((\ALU1|Mult0|auto_generated|add10_result[4]~8_combout\) # (!\ALU1|Mult0|auto_generated|add6_result[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mult0|auto_generated|le4a\(4),
	datab => \ALU1|Mult0|auto_generated|add10_result[4]~8_combout\,
	datad => VCC,
	cin => \ALU1|Mult0|auto_generated|add6_result[5]~11\,
	combout => \ALU1|Mult0|auto_generated|add6_result[6]~12_combout\,
	cout => \ALU1|Mult0|auto_generated|add6_result[6]~13\);

-- Location: LCCOMB_X22_Y18_N24
\ALU1|Mult0|auto_generated|add6_result[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Mult0|auto_generated|add6_result[7]~14_combout\ = !\ALU1|Mult0|auto_generated|add6_result[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ALU1|Mult0|auto_generated|add6_result[6]~13\,
	combout => \ALU1|Mult0|auto_generated|add6_result[7]~14_combout\);

-- Location: LCCOMB_X26_Y18_N0
\ALU1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|Equal0~0_combout\ = (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & \SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ALU1|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y18_N2
\inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (((!\ALU1|Mult0|auto_generated|add6_result[6]~12_combout\ & !\ALU1|Mult0|auto_generated|add6_result[5]~10_combout\)) # (!\ALU1|Equal0~0_combout\)) # (!\ALU1|Mult0|auto_generated|add6_result[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mult0|auto_generated|add6_result[6]~12_combout\,
	datab => \ALU1|Mult0|auto_generated|add6_result[7]~14_combout\,
	datac => \ALU1|Mult0|auto_generated|add6_result[5]~10_combout\,
	datad => \ALU1|Equal0~0_combout\,
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y18_N16
\Decoder4|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder4|decOut_n~15_combout\ = (\ALU1|Mult0|auto_generated|add6_result[6]~12_combout\ & (!\ALU1|Mult0|auto_generated|add6_result[7]~14_combout\ & (\ALU1|Mult0|auto_generated|add6_result[5]~10_combout\ & 
-- \ALU1|Mult0|auto_generated|add6_result[4]~8_combout\))) # (!\ALU1|Mult0|auto_generated|add6_result[6]~12_combout\ & (\ALU1|Mult0|auto_generated|add6_result[7]~14_combout\ $ ((!\ALU1|Mult0|auto_generated|add6_result[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mult0|auto_generated|add6_result[6]~12_combout\,
	datab => \ALU1|Mult0|auto_generated|add6_result[7]~14_combout\,
	datac => \ALU1|Mult0|auto_generated|add6_result[5]~10_combout\,
	datad => \ALU1|Mult0|auto_generated|add6_result[4]~8_combout\,
	combout => \Decoder4|decOut_n~15_combout\);

-- Location: LCCOMB_X26_Y18_N10
\Decoder4|decOut_n~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder4|decOut_n~43_combout\ = (\SW[8]~input_o\) # ((\Decoder4|decOut_n~15_combout\) # ((\SW[10]~input_o\) # (!\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \Decoder4|decOut_n~15_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Decoder4|decOut_n~43_combout\);

-- Location: LCCOMB_X26_Y18_N20
\Decoder4|decOut_n~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder4|decOut_n~24_combout\ = (\ALU1|Mult0|auto_generated|add6_result[6]~12_combout\ & ((\ALU1|Mult0|auto_generated|add6_result[7]~14_combout\ & (\ALU1|Mult0|auto_generated|add6_result[5]~10_combout\)) # 
-- (!\ALU1|Mult0|auto_generated|add6_result[7]~14_combout\ & ((!\ALU1|Mult0|auto_generated|add6_result[4]~8_combout\) # (!\ALU1|Mult0|auto_generated|add6_result[5]~10_combout\))))) # (!\ALU1|Mult0|auto_generated|add6_result[6]~12_combout\ & 
-- ((\ALU1|Mult0|auto_generated|add6_result[7]~14_combout\ & ((!\ALU1|Mult0|auto_generated|add6_result[4]~8_combout\) # (!\ALU1|Mult0|auto_generated|add6_result[5]~10_combout\))) # (!\ALU1|Mult0|auto_generated|add6_result[7]~14_combout\ & 
-- (!\ALU1|Mult0|auto_generated|add6_result[5]~10_combout\ & !\ALU1|Mult0|auto_generated|add6_result[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mult0|auto_generated|add6_result[6]~12_combout\,
	datab => \ALU1|Mult0|auto_generated|add6_result[7]~14_combout\,
	datac => \ALU1|Mult0|auto_generated|add6_result[5]~10_combout\,
	datad => \ALU1|Mult0|auto_generated|add6_result[4]~8_combout\,
	combout => \Decoder4|decOut_n~24_combout\);

-- Location: LCCOMB_X26_Y18_N6
\Decoder4|decOut_n~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder4|decOut_n~44_combout\ = (\SW[8]~input_o\) # ((\Decoder4|decOut_n~24_combout\) # ((\SW[10]~input_o\) # (!\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \Decoder4|decOut_n~24_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Decoder4|decOut_n~44_combout\);

-- Location: LCCOMB_X26_Y18_N4
\Decoder4|decOut_n~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder4|decOut_n~38_combout\ = (\ALU1|Mult0|auto_generated|add6_result[4]~8_combout\) # ((\ALU1|Mult0|auto_generated|add6_result[6]~12_combout\ & (\ALU1|Mult0|auto_generated|add6_result[7]~14_combout\ $ 
-- (!\ALU1|Mult0|auto_generated|add6_result[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mult0|auto_generated|add6_result[6]~12_combout\,
	datab => \ALU1|Mult0|auto_generated|add6_result[7]~14_combout\,
	datac => \ALU1|Mult0|auto_generated|add6_result[5]~10_combout\,
	datad => \ALU1|Mult0|auto_generated|add6_result[4]~8_combout\,
	combout => \Decoder4|decOut_n~38_combout\);

-- Location: LCCOMB_X23_Y18_N28
\Decoder4|decOut_n~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder4|decOut_n~41_combout\ = (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & (\SW[9]~input_o\ & \Decoder4|decOut_n~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \Decoder4|decOut_n~38_combout\,
	combout => \Decoder4|decOut_n~41_combout\);

-- Location: LCCOMB_X26_Y18_N12
\Decoder4|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder4|decOut_n~6_combout\ = (\ALU1|Mult0|auto_generated|add6_result[6]~12_combout\ & ((\ALU1|Mult0|auto_generated|add6_result[7]~14_combout\ & (\ALU1|Mult0|auto_generated|add6_result[5]~10_combout\ & 
-- !\ALU1|Mult0|auto_generated|add6_result[4]~8_combout\)) # (!\ALU1|Mult0|auto_generated|add6_result[7]~14_combout\ & (\ALU1|Mult0|auto_generated|add6_result[5]~10_combout\ $ (!\ALU1|Mult0|auto_generated|add6_result[4]~8_combout\))))) # 
-- (!\ALU1|Mult0|auto_generated|add6_result[6]~12_combout\ & (\ALU1|Mult0|auto_generated|add6_result[4]~8_combout\ & (\ALU1|Mult0|auto_generated|add6_result[7]~14_combout\ $ (!\ALU1|Mult0|auto_generated|add6_result[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mult0|auto_generated|add6_result[6]~12_combout\,
	datab => \ALU1|Mult0|auto_generated|add6_result[7]~14_combout\,
	datac => \ALU1|Mult0|auto_generated|add6_result[5]~10_combout\,
	datad => \ALU1|Mult0|auto_generated|add6_result[4]~8_combout\,
	combout => \Decoder4|decOut_n~6_combout\);

-- Location: LCCOMB_X26_Y18_N22
\Decoder4|decOut_n~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder4|decOut_n~42_combout\ = (\Decoder4|decOut_n~6_combout\ & (!\SW[10]~input_o\ & (!\SW[8]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder4|decOut_n~6_combout\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Decoder4|decOut_n~42_combout\);

-- Location: LCCOMB_X26_Y18_N26
\inst2|bcd_out_2[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bcd_out_2[2]~3_combout\ = (\ALU1|Mult0|auto_generated|add6_result[6]~12_combout\ & (\ALU1|Equal0~0_combout\ & ((\ALU1|Mult0|auto_generated|add6_result[5]~10_combout\) # (!\ALU1|Mult0|auto_generated|add6_result[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mult0|auto_generated|add6_result[6]~12_combout\,
	datab => \ALU1|Mult0|auto_generated|add6_result[7]~14_combout\,
	datac => \ALU1|Mult0|auto_generated|add6_result[5]~10_combout\,
	datad => \ALU1|Equal0~0_combout\,
	combout => \inst2|bcd_out_2[2]~3_combout\);

-- Location: LCCOMB_X26_Y18_N8
\inst2|bcd_out_2[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bcd_out_2[1]~2_combout\ = ((\ALU1|Mult0|auto_generated|add6_result[7]~14_combout\ & ((\ALU1|Mult0|auto_generated|add6_result[5]~10_combout\) # (!\ALU1|Mult0|auto_generated|add6_result[6]~12_combout\))) # 
-- (!\ALU1|Mult0|auto_generated|add6_result[7]~14_combout\ & ((!\ALU1|Mult0|auto_generated|add6_result[5]~10_combout\)))) # (!\ALU1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mult0|auto_generated|add6_result[6]~12_combout\,
	datab => \ALU1|Mult0|auto_generated|add6_result[7]~14_combout\,
	datac => \ALU1|Mult0|auto_generated|add6_result[5]~10_combout\,
	datad => \ALU1|Equal0~0_combout\,
	combout => \inst2|bcd_out_2[1]~2_combout\);

-- Location: LCCOMB_X26_Y18_N14
\inst2|bcd_out_2[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bcd_out_2[3]~1_combout\ = (!\ALU1|Mult0|auto_generated|add6_result[6]~12_combout\ & (\ALU1|Mult0|auto_generated|add6_result[7]~14_combout\ & (!\ALU1|Mult0|auto_generated|add6_result[5]~10_combout\ & \ALU1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mult0|auto_generated|add6_result[6]~12_combout\,
	datab => \ALU1|Mult0|auto_generated|add6_result[7]~14_combout\,
	datac => \ALU1|Mult0|auto_generated|add6_result[5]~10_combout\,
	datad => \ALU1|Equal0~0_combout\,
	combout => \inst2|bcd_out_2[3]~1_combout\);

-- Location: LCCOMB_X26_Y18_N18
\ALU1|m[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|m[0]~6_combout\ = (!\SW[8]~input_o\ & (\ALU1|Mult0|auto_generated|add6_result[4]~8_combout\ & (!\SW[10]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \ALU1|Mult0|auto_generated|add6_result[4]~8_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ALU1|m[0]~6_combout\);

-- Location: LCCOMB_X26_Y18_N30
\Decoder4|decOut_n~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder4|decOut_n~39_combout\ = (\inst2|bcd_out_2[2]~3_combout\) # ((\inst2|bcd_out_2[1]~2_combout\) # ((\inst2|bcd_out_2[3]~1_combout\) # (\ALU1|m[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bcd_out_2[2]~3_combout\,
	datab => \inst2|bcd_out_2[1]~2_combout\,
	datac => \inst2|bcd_out_2[3]~1_combout\,
	datad => \ALU1|m[0]~6_combout\,
	combout => \Decoder4|decOut_n~39_combout\);

-- Location: LCCOMB_X26_Y18_N24
\Decoder4|decOut_n~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder4|decOut_n~40_combout\ = (\inst2|bcd_out_2[2]~3_combout\ & (!\inst2|bcd_out_2[3]~1_combout\ & (\inst2|bcd_out_2[1]~2_combout\ $ (!\ALU1|m[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bcd_out_2[2]~3_combout\,
	datab => \inst2|bcd_out_2[1]~2_combout\,
	datac => \inst2|bcd_out_2[3]~1_combout\,
	datad => \ALU1|m[0]~6_combout\,
	combout => \Decoder4|decOut_n~40_combout\);

-- Location: LCCOMB_X22_Y18_N30
\Decoder4|decOut_n~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder4|decOut_n~33_combout\ = (\ALU1|Mult0|auto_generated|add6_result[5]~10_combout\ & (\ALU1|Mult0|auto_generated|add6_result[7]~14_combout\ & (\ALU1|Mult0|auto_generated|add6_result[6]~12_combout\ $ 
-- (\ALU1|Mult0|auto_generated|add6_result[4]~8_combout\)))) # (!\ALU1|Mult0|auto_generated|add6_result[5]~10_combout\ & (!\ALU1|Mult0|auto_generated|add6_result[7]~14_combout\ & (\ALU1|Mult0|auto_generated|add6_result[6]~12_combout\ $ 
-- (\ALU1|Mult0|auto_generated|add6_result[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mult0|auto_generated|add6_result[5]~10_combout\,
	datab => \ALU1|Mult0|auto_generated|add6_result[7]~14_combout\,
	datac => \ALU1|Mult0|auto_generated|add6_result[6]~12_combout\,
	datad => \ALU1|Mult0|auto_generated|add6_result[4]~8_combout\,
	combout => \Decoder4|decOut_n~33_combout\);

-- Location: LCCOMB_X23_Y18_N18
\Decoder4|decOut_n~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder4|decOut_n~45_combout\ = (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & (\SW[9]~input_o\ & \Decoder4|decOut_n~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \Decoder4|decOut_n~33_combout\,
	combout => \Decoder4|decOut_n~45_combout\);

-- Location: LCCOMB_X22_Y18_N28
\inst2|bcd_out_2[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bcd_out_2[3]~0_combout\ = (!\SW[10]~input_o\ & (!\SW[8]~input_o\ & (\ALU1|Mult0|auto_generated|add6_result[7]~14_combout\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \ALU1|Mult0|auto_generated|add6_result[7]~14_combout\,
	datad => \SW[9]~input_o\,
	combout => \inst2|bcd_out_2[3]~0_combout\);

-- Location: LCCOMB_X26_Y18_N28
\ALU1|m[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|m[2]~8_combout\ = (\ALU1|Mult0|auto_generated|add6_result[6]~12_combout\ & (!\SW[10]~input_o\ & (!\SW[8]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|Mult0|auto_generated|add6_result[6]~12_combout\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ALU1|m[2]~8_combout\);

-- Location: LCCOMB_X23_Y18_N26
\ALU1|m[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU1|m[1]~7_combout\ = (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & (\SW[9]~input_o\ & \ALU1|Mult0|auto_generated|add6_result[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \ALU1|Mult0|auto_generated|add6_result[5]~10_combout\,
	combout => \ALU1|m[1]~7_combout\);

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


