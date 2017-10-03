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

-- DATE "05/15/2017 17:10:06"

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

ENTITY 	RAM_1P_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(12 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END RAM_1P_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RAM_1P_Demo IS
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
SIGNAL ww_SW : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkDiv|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clkDiv|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[0]~27\ : std_logic;
SIGNAL \clkDiv|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[1]~29\ : std_logic;
SIGNAL \clkDiv|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[2]~31\ : std_logic;
SIGNAL \clkDiv|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[3]~33\ : std_logic;
SIGNAL \clkDiv|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[4]~35\ : std_logic;
SIGNAL \clkDiv|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[5]~37\ : std_logic;
SIGNAL \clkDiv|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[6]~39\ : std_logic;
SIGNAL \clkDiv|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[7]~41\ : std_logic;
SIGNAL \clkDiv|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[8]~43\ : std_logic;
SIGNAL \clkDiv|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[9]~45\ : std_logic;
SIGNAL \clkDiv|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[10]~47\ : std_logic;
SIGNAL \clkDiv|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[11]~49\ : std_logic;
SIGNAL \clkDiv|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[12]~51\ : std_logic;
SIGNAL \clkDiv|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[13]~53\ : std_logic;
SIGNAL \clkDiv|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[14]~55\ : std_logic;
SIGNAL \clkDiv|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[15]~57\ : std_logic;
SIGNAL \clkDiv|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[16]~59\ : std_logic;
SIGNAL \clkDiv|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[17]~61\ : std_logic;
SIGNAL \clkDiv|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[18]~63\ : std_logic;
SIGNAL \clkDiv|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[19]~65\ : std_logic;
SIGNAL \clkDiv|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[20]~67\ : std_logic;
SIGNAL \clkDiv|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[21]~69\ : std_logic;
SIGNAL \clkDiv|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[22]~71\ : std_logic;
SIGNAL \clkDiv|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[23]~73\ : std_logic;
SIGNAL \clkDiv|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter[24]~75\ : std_logic;
SIGNAL \clkDiv|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \clkDiv|clkOut~0_combout\ : std_logic;
SIGNAL \clkDiv|LessThan0~0_combout\ : std_logic;
SIGNAL \clkDiv|LessThan0~1_combout\ : std_logic;
SIGNAL \clkDiv|clkOut~1_combout\ : std_logic;
SIGNAL \clkDiv|clkOut~2_combout\ : std_logic;
SIGNAL \clkDiv|clkOut~3_combout\ : std_logic;
SIGNAL \clkDiv|LessThan0~2_combout\ : std_logic;
SIGNAL \clkDiv|LessThan0~3_combout\ : std_logic;
SIGNAL \clkDiv|LessThan0~4_combout\ : std_logic;
SIGNAL \clkDiv|clkOut~4_combout\ : std_logic;
SIGNAL \clkDiv|clkOut~6_combout\ : std_logic;
SIGNAL \clkDiv|clkOut~5_combout\ : std_logic;
SIGNAL \clkDiv|clkOut~7_combout\ : std_logic;
SIGNAL \clkDiv|clkOut~8_combout\ : std_logic;
SIGNAL \clkDiv|clkOut~9_combout\ : std_logic;
SIGNAL \clkDiv|clkOut~feeder_combout\ : std_logic;
SIGNAL \clkDiv|clkOut~q\ : std_logic;
SIGNAL \clkDiv|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \ram16x8|s_memory~223_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \ram16x8|s_memory~224_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~85_q\ : std_logic;
SIGNAL \ram16x8|s_memory~225_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~226_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~77_q\ : std_logic;
SIGNAL \ram16x8|s_memory~141_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~93feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~221_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~222_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~93_q\ : std_logic;
SIGNAL \ram16x8|s_memory~227_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~228_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~101_q\ : std_logic;
SIGNAL \ram16x8|s_memory~142_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~229_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~230_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~53_q\ : std_logic;
SIGNAL \ram16x8|s_memory~235_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~236_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~69_q\ : std_logic;
SIGNAL \ram16x8|s_memory~61feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~231_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~232_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~61_q\ : std_logic;
SIGNAL \ram16x8|s_memory~233_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~234_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~45_q\ : std_logic;
SIGNAL \ram16x8|s_memory~143_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~144_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~239_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~240_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~21_q\ : std_logic;
SIGNAL \ram16x8|s_memory~241_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~242_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~13_q\ : std_logic;
SIGNAL \ram16x8|s_memory~145_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~29feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~237_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~238_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~29_q\ : std_logic;
SIGNAL \ram16x8|s_memory~243_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~244_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~37_q\ : std_logic;
SIGNAL \ram16x8|s_memory~146_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~147_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~245_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~246_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~117_q\ : std_logic;
SIGNAL \ram16x8|s_memory~251_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~252_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~133_q\ : std_logic;
SIGNAL \ram16x8|s_memory~249_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~250_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~109_q\ : std_logic;
SIGNAL \ram16x8|s_memory~247_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~248_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~125_q\ : std_logic;
SIGNAL \ram16x8|s_memory~148_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~149_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~150_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \ram16x8|s_memory~14_q\ : std_logic;
SIGNAL \ram16x8|s_memory~78feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~78_q\ : std_logic;
SIGNAL \ram16x8|s_memory~155_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~46_q\ : std_logic;
SIGNAL \ram16x8|s_memory~110_q\ : std_logic;
SIGNAL \ram16x8|s_memory~156_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~86feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~86_q\ : std_logic;
SIGNAL \ram16x8|s_memory~54_q\ : std_logic;
SIGNAL \ram16x8|s_memory~22_q\ : std_logic;
SIGNAL \ram16x8|s_memory~153_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~118_q\ : std_logic;
SIGNAL \ram16x8|s_memory~154_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~157_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~102_q\ : std_logic;
SIGNAL \ram16x8|s_memory~38_q\ : std_logic;
SIGNAL \ram16x8|s_memory~70_q\ : std_logic;
SIGNAL \ram16x8|s_memory~158_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~134_q\ : std_logic;
SIGNAL \ram16x8|s_memory~159_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~62_q\ : std_logic;
SIGNAL \ram16x8|s_memory~94_q\ : std_logic;
SIGNAL \ram16x8|s_memory~30_q\ : std_logic;
SIGNAL \ram16x8|s_memory~151_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~126_q\ : std_logic;
SIGNAL \ram16x8|s_memory~152_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~160_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \ram16x8|s_memory~63_q\ : std_logic;
SIGNAL \ram16x8|s_memory~71_q\ : std_logic;
SIGNAL \ram16x8|s_memory~55feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~55_q\ : std_logic;
SIGNAL \ram16x8|s_memory~47_q\ : std_logic;
SIGNAL \ram16x8|s_memory~161_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~162_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~87_q\ : std_logic;
SIGNAL \ram16x8|s_memory~95_q\ : std_logic;
SIGNAL \ram16x8|s_memory~79_q\ : std_logic;
SIGNAL \ram16x8|s_memory~163_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~103_q\ : std_logic;
SIGNAL \ram16x8|s_memory~164_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~31feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~31_q\ : std_logic;
SIGNAL \ram16x8|s_memory~15_q\ : std_logic;
SIGNAL \ram16x8|s_memory~165_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~39_q\ : std_logic;
SIGNAL \ram16x8|s_memory~23_q\ : std_logic;
SIGNAL \ram16x8|s_memory~166_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~167_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~111_q\ : std_logic;
SIGNAL \ram16x8|s_memory~119_q\ : std_logic;
SIGNAL \ram16x8|s_memory~168_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~135_q\ : std_logic;
SIGNAL \ram16x8|s_memory~127_q\ : std_logic;
SIGNAL \ram16x8|s_memory~169_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~170_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \ram16x8|s_memory~104_q\ : std_logic;
SIGNAL \ram16x8|s_memory~40_q\ : std_logic;
SIGNAL \ram16x8|s_memory~178_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~136_q\ : std_logic;
SIGNAL \ram16x8|s_memory~72feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~72_q\ : std_logic;
SIGNAL \ram16x8|s_memory~179_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~88feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~88_q\ : std_logic;
SIGNAL \ram16x8|s_memory~24_q\ : std_logic;
SIGNAL \ram16x8|s_memory~171_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~120_q\ : std_logic;
SIGNAL \ram16x8|s_memory~56_q\ : std_logic;
SIGNAL \ram16x8|s_memory~172_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~96_q\ : std_logic;
SIGNAL \ram16x8|s_memory~128_q\ : std_logic;
SIGNAL \ram16x8|s_memory~64feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~64_q\ : std_logic;
SIGNAL \ram16x8|s_memory~32_q\ : std_logic;
SIGNAL \ram16x8|s_memory~173_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~174_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~80feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~80_q\ : std_logic;
SIGNAL \ram16x8|s_memory~48feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~48_q\ : std_logic;
SIGNAL \ram16x8|s_memory~16_q\ : std_logic;
SIGNAL \ram16x8|s_memory~175_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~112_q\ : std_logic;
SIGNAL \ram16x8|s_memory~176_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~177_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~180_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \ram16x8|s_memory~33feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~33_q\ : std_logic;
SIGNAL \ram16x8|s_memory~17_q\ : std_logic;
SIGNAL \ram16x8|s_memory~25_q\ : std_logic;
SIGNAL \ram16x8|s_memory~185_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~41_q\ : std_logic;
SIGNAL \ram16x8|s_memory~186_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~65_q\ : std_logic;
SIGNAL \ram16x8|s_memory~49_q\ : std_logic;
SIGNAL \ram16x8|s_memory~183_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~73_q\ : std_logic;
SIGNAL \ram16x8|s_memory~57feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~57_q\ : std_logic;
SIGNAL \ram16x8|s_memory~184_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~187_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~97feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~97_q\ : std_logic;
SIGNAL \ram16x8|s_memory~89_q\ : std_logic;
SIGNAL \ram16x8|s_memory~81_q\ : std_logic;
SIGNAL \ram16x8|s_memory~181_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~105_q\ : std_logic;
SIGNAL \ram16x8|s_memory~182_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~121feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~121_q\ : std_logic;
SIGNAL \ram16x8|s_memory~137_q\ : std_logic;
SIGNAL \ram16x8|s_memory~129_q\ : std_logic;
SIGNAL \ram16x8|s_memory~113_q\ : std_logic;
SIGNAL \ram16x8|s_memory~188_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~189_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~190_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \ram16x8|s_memory~106_q\ : std_logic;
SIGNAL \ram16x8|s_memory~42_q\ : std_logic;
SIGNAL \ram16x8|s_memory~74feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~74_q\ : std_logic;
SIGNAL \ram16x8|s_memory~198_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~138_q\ : std_logic;
SIGNAL \ram16x8|s_memory~199_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~66feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~66_q\ : std_logic;
SIGNAL \ram16x8|s_memory~130_q\ : std_logic;
SIGNAL \ram16x8|s_memory~98feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~98_q\ : std_logic;
SIGNAL \ram16x8|s_memory~34_q\ : std_logic;
SIGNAL \ram16x8|s_memory~191_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~192_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~50feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~50_q\ : std_logic;
SIGNAL \ram16x8|s_memory~82feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~82_q\ : std_logic;
SIGNAL \ram16x8|s_memory~18_q\ : std_logic;
SIGNAL \ram16x8|s_memory~195_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~114_q\ : std_logic;
SIGNAL \ram16x8|s_memory~196_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~90feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~90_q\ : std_logic;
SIGNAL \ram16x8|s_memory~26_q\ : std_logic;
SIGNAL \ram16x8|s_memory~58_q\ : std_logic;
SIGNAL \ram16x8|s_memory~193_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~122_q\ : std_logic;
SIGNAL \ram16x8|s_memory~194_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~197_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~200_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \ram16x8|s_memory~59feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~59_q\ : std_logic;
SIGNAL \ram16x8|s_memory~51_q\ : std_logic;
SIGNAL \ram16x8|s_memory~201_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~67_q\ : std_logic;
SIGNAL \ram16x8|s_memory~75_q\ : std_logic;
SIGNAL \ram16x8|s_memory~202_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~35feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~35_q\ : std_logic;
SIGNAL \ram16x8|s_memory~19_q\ : std_logic;
SIGNAL \ram16x8|s_memory~205_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~27_q\ : std_logic;
SIGNAL \ram16x8|s_memory~43_q\ : std_logic;
SIGNAL \ram16x8|s_memory~206_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~91_q\ : std_logic;
SIGNAL \ram16x8|s_memory~107_q\ : std_logic;
SIGNAL \ram16x8|s_memory~99feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~99_q\ : std_logic;
SIGNAL \ram16x8|s_memory~83_q\ : std_logic;
SIGNAL \ram16x8|s_memory~203_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~204_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~207_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~123feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~123_q\ : std_logic;
SIGNAL \ram16x8|s_memory~115_q\ : std_logic;
SIGNAL \ram16x8|s_memory~208_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~139_q\ : std_logic;
SIGNAL \ram16x8|s_memory~131_q\ : std_logic;
SIGNAL \ram16x8|s_memory~209_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~210_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \ram16x8|s_memory~60_q\ : std_logic;
SIGNAL \ram16x8|s_memory~124_q\ : std_logic;
SIGNAL \ram16x8|s_memory~92feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~92_q\ : std_logic;
SIGNAL \ram16x8|s_memory~28_q\ : std_logic;
SIGNAL \ram16x8|s_memory~211_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~212_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~52_q\ : std_logic;
SIGNAL \ram16x8|s_memory~20_q\ : std_logic;
SIGNAL \ram16x8|s_memory~215_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~84feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~84_q\ : std_logic;
SIGNAL \ram16x8|s_memory~116_q\ : std_logic;
SIGNAL \ram16x8|s_memory~216_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~68_q\ : std_logic;
SIGNAL \ram16x8|s_memory~36_q\ : std_logic;
SIGNAL \ram16x8|s_memory~213_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~132_q\ : std_logic;
SIGNAL \ram16x8|s_memory~100feeder_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~100_q\ : std_logic;
SIGNAL \ram16x8|s_memory~214_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~217_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~76_q\ : std_logic;
SIGNAL \ram16x8|s_memory~140_q\ : std_logic;
SIGNAL \ram16x8|s_memory~108_q\ : std_logic;
SIGNAL \ram16x8|s_memory~44_q\ : std_logic;
SIGNAL \ram16x8|s_memory~218_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~219_combout\ : std_logic;
SIGNAL \ram16x8|s_memory~220_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter\ : std_logic_vector(25 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clkDiv|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkDiv|clkOut~q\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram16x8|s_memory~150_combout\,
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
	i => \ram16x8|s_memory~160_combout\,
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
	i => \ram16x8|s_memory~170_combout\,
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
	i => \ram16x8|s_memory~180_combout\,
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
	i => \ram16x8|s_memory~190_combout\,
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
	i => \ram16x8|s_memory~200_combout\,
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
	i => \ram16x8|s_memory~210_combout\,
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
	i => \ram16x8|s_memory~220_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

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

-- Location: LCCOMB_X73_Y62_N6
\clkDiv|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[0]~26_combout\ = \clkDiv|s_divCounter\(0) $ (VCC)
-- \clkDiv|s_divCounter[0]~27\ = CARRY(\clkDiv|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(0),
	datad => VCC,
	combout => \clkDiv|s_divCounter[0]~26_combout\,
	cout => \clkDiv|s_divCounter[0]~27\);

-- Location: FF_X73_Y62_N7
\clkDiv|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[0]~26_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(0));

-- Location: LCCOMB_X73_Y62_N8
\clkDiv|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[1]~28_combout\ = (\clkDiv|s_divCounter\(1) & (!\clkDiv|s_divCounter[0]~27\)) # (!\clkDiv|s_divCounter\(1) & ((\clkDiv|s_divCounter[0]~27\) # (GND)))
-- \clkDiv|s_divCounter[1]~29\ = CARRY((!\clkDiv|s_divCounter[0]~27\) # (!\clkDiv|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(1),
	datad => VCC,
	cin => \clkDiv|s_divCounter[0]~27\,
	combout => \clkDiv|s_divCounter[1]~28_combout\,
	cout => \clkDiv|s_divCounter[1]~29\);

-- Location: FF_X73_Y62_N9
\clkDiv|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[1]~28_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(1));

-- Location: LCCOMB_X73_Y62_N10
\clkDiv|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[2]~30_combout\ = (\clkDiv|s_divCounter\(2) & (\clkDiv|s_divCounter[1]~29\ $ (GND))) # (!\clkDiv|s_divCounter\(2) & (!\clkDiv|s_divCounter[1]~29\ & VCC))
-- \clkDiv|s_divCounter[2]~31\ = CARRY((\clkDiv|s_divCounter\(2) & !\clkDiv|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(2),
	datad => VCC,
	cin => \clkDiv|s_divCounter[1]~29\,
	combout => \clkDiv|s_divCounter[2]~30_combout\,
	cout => \clkDiv|s_divCounter[2]~31\);

-- Location: FF_X73_Y62_N11
\clkDiv|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[2]~30_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(2));

-- Location: LCCOMB_X73_Y62_N12
\clkDiv|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[3]~32_combout\ = (\clkDiv|s_divCounter\(3) & (!\clkDiv|s_divCounter[2]~31\)) # (!\clkDiv|s_divCounter\(3) & ((\clkDiv|s_divCounter[2]~31\) # (GND)))
-- \clkDiv|s_divCounter[3]~33\ = CARRY((!\clkDiv|s_divCounter[2]~31\) # (!\clkDiv|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(3),
	datad => VCC,
	cin => \clkDiv|s_divCounter[2]~31\,
	combout => \clkDiv|s_divCounter[3]~32_combout\,
	cout => \clkDiv|s_divCounter[3]~33\);

-- Location: FF_X73_Y62_N13
\clkDiv|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[3]~32_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(3));

-- Location: LCCOMB_X73_Y62_N14
\clkDiv|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[4]~34_combout\ = (\clkDiv|s_divCounter\(4) & (\clkDiv|s_divCounter[3]~33\ $ (GND))) # (!\clkDiv|s_divCounter\(4) & (!\clkDiv|s_divCounter[3]~33\ & VCC))
-- \clkDiv|s_divCounter[4]~35\ = CARRY((\clkDiv|s_divCounter\(4) & !\clkDiv|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(4),
	datad => VCC,
	cin => \clkDiv|s_divCounter[3]~33\,
	combout => \clkDiv|s_divCounter[4]~34_combout\,
	cout => \clkDiv|s_divCounter[4]~35\);

-- Location: FF_X73_Y62_N15
\clkDiv|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[4]~34_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(4));

-- Location: LCCOMB_X73_Y62_N16
\clkDiv|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[5]~36_combout\ = (\clkDiv|s_divCounter\(5) & (!\clkDiv|s_divCounter[4]~35\)) # (!\clkDiv|s_divCounter\(5) & ((\clkDiv|s_divCounter[4]~35\) # (GND)))
-- \clkDiv|s_divCounter[5]~37\ = CARRY((!\clkDiv|s_divCounter[4]~35\) # (!\clkDiv|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(5),
	datad => VCC,
	cin => \clkDiv|s_divCounter[4]~35\,
	combout => \clkDiv|s_divCounter[5]~36_combout\,
	cout => \clkDiv|s_divCounter[5]~37\);

-- Location: FF_X73_Y62_N17
\clkDiv|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[5]~36_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(5));

-- Location: LCCOMB_X73_Y62_N18
\clkDiv|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[6]~38_combout\ = (\clkDiv|s_divCounter\(6) & (\clkDiv|s_divCounter[5]~37\ $ (GND))) # (!\clkDiv|s_divCounter\(6) & (!\clkDiv|s_divCounter[5]~37\ & VCC))
-- \clkDiv|s_divCounter[6]~39\ = CARRY((\clkDiv|s_divCounter\(6) & !\clkDiv|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(6),
	datad => VCC,
	cin => \clkDiv|s_divCounter[5]~37\,
	combout => \clkDiv|s_divCounter[6]~38_combout\,
	cout => \clkDiv|s_divCounter[6]~39\);

-- Location: FF_X73_Y62_N19
\clkDiv|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[6]~38_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(6));

-- Location: LCCOMB_X73_Y62_N20
\clkDiv|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[7]~40_combout\ = (\clkDiv|s_divCounter\(7) & (!\clkDiv|s_divCounter[6]~39\)) # (!\clkDiv|s_divCounter\(7) & ((\clkDiv|s_divCounter[6]~39\) # (GND)))
-- \clkDiv|s_divCounter[7]~41\ = CARRY((!\clkDiv|s_divCounter[6]~39\) # (!\clkDiv|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(7),
	datad => VCC,
	cin => \clkDiv|s_divCounter[6]~39\,
	combout => \clkDiv|s_divCounter[7]~40_combout\,
	cout => \clkDiv|s_divCounter[7]~41\);

-- Location: FF_X73_Y62_N21
\clkDiv|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[7]~40_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(7));

-- Location: LCCOMB_X73_Y62_N22
\clkDiv|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[8]~42_combout\ = (\clkDiv|s_divCounter\(8) & (\clkDiv|s_divCounter[7]~41\ $ (GND))) # (!\clkDiv|s_divCounter\(8) & (!\clkDiv|s_divCounter[7]~41\ & VCC))
-- \clkDiv|s_divCounter[8]~43\ = CARRY((\clkDiv|s_divCounter\(8) & !\clkDiv|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(8),
	datad => VCC,
	cin => \clkDiv|s_divCounter[7]~41\,
	combout => \clkDiv|s_divCounter[8]~42_combout\,
	cout => \clkDiv|s_divCounter[8]~43\);

-- Location: FF_X73_Y62_N23
\clkDiv|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[8]~42_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(8));

-- Location: LCCOMB_X73_Y62_N24
\clkDiv|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[9]~44_combout\ = (\clkDiv|s_divCounter\(9) & (!\clkDiv|s_divCounter[8]~43\)) # (!\clkDiv|s_divCounter\(9) & ((\clkDiv|s_divCounter[8]~43\) # (GND)))
-- \clkDiv|s_divCounter[9]~45\ = CARRY((!\clkDiv|s_divCounter[8]~43\) # (!\clkDiv|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(9),
	datad => VCC,
	cin => \clkDiv|s_divCounter[8]~43\,
	combout => \clkDiv|s_divCounter[9]~44_combout\,
	cout => \clkDiv|s_divCounter[9]~45\);

-- Location: FF_X73_Y62_N25
\clkDiv|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[9]~44_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(9));

-- Location: LCCOMB_X73_Y62_N26
\clkDiv|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[10]~46_combout\ = (\clkDiv|s_divCounter\(10) & (\clkDiv|s_divCounter[9]~45\ $ (GND))) # (!\clkDiv|s_divCounter\(10) & (!\clkDiv|s_divCounter[9]~45\ & VCC))
-- \clkDiv|s_divCounter[10]~47\ = CARRY((\clkDiv|s_divCounter\(10) & !\clkDiv|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(10),
	datad => VCC,
	cin => \clkDiv|s_divCounter[9]~45\,
	combout => \clkDiv|s_divCounter[10]~46_combout\,
	cout => \clkDiv|s_divCounter[10]~47\);

-- Location: FF_X73_Y62_N27
\clkDiv|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[10]~46_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(10));

-- Location: LCCOMB_X73_Y62_N28
\clkDiv|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[11]~48_combout\ = (\clkDiv|s_divCounter\(11) & (!\clkDiv|s_divCounter[10]~47\)) # (!\clkDiv|s_divCounter\(11) & ((\clkDiv|s_divCounter[10]~47\) # (GND)))
-- \clkDiv|s_divCounter[11]~49\ = CARRY((!\clkDiv|s_divCounter[10]~47\) # (!\clkDiv|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(11),
	datad => VCC,
	cin => \clkDiv|s_divCounter[10]~47\,
	combout => \clkDiv|s_divCounter[11]~48_combout\,
	cout => \clkDiv|s_divCounter[11]~49\);

-- Location: FF_X73_Y62_N29
\clkDiv|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[11]~48_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(11));

-- Location: LCCOMB_X73_Y62_N30
\clkDiv|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[12]~50_combout\ = (\clkDiv|s_divCounter\(12) & (\clkDiv|s_divCounter[11]~49\ $ (GND))) # (!\clkDiv|s_divCounter\(12) & (!\clkDiv|s_divCounter[11]~49\ & VCC))
-- \clkDiv|s_divCounter[12]~51\ = CARRY((\clkDiv|s_divCounter\(12) & !\clkDiv|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(12),
	datad => VCC,
	cin => \clkDiv|s_divCounter[11]~49\,
	combout => \clkDiv|s_divCounter[12]~50_combout\,
	cout => \clkDiv|s_divCounter[12]~51\);

-- Location: FF_X73_Y62_N31
\clkDiv|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[12]~50_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(12));

-- Location: LCCOMB_X73_Y61_N0
\clkDiv|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[13]~52_combout\ = (\clkDiv|s_divCounter\(13) & (!\clkDiv|s_divCounter[12]~51\)) # (!\clkDiv|s_divCounter\(13) & ((\clkDiv|s_divCounter[12]~51\) # (GND)))
-- \clkDiv|s_divCounter[13]~53\ = CARRY((!\clkDiv|s_divCounter[12]~51\) # (!\clkDiv|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(13),
	datad => VCC,
	cin => \clkDiv|s_divCounter[12]~51\,
	combout => \clkDiv|s_divCounter[13]~52_combout\,
	cout => \clkDiv|s_divCounter[13]~53\);

-- Location: FF_X72_Y62_N1
\clkDiv|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkDiv|s_divCounter[13]~52_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(13));

-- Location: LCCOMB_X73_Y61_N2
\clkDiv|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[14]~54_combout\ = (\clkDiv|s_divCounter\(14) & (\clkDiv|s_divCounter[13]~53\ $ (GND))) # (!\clkDiv|s_divCounter\(14) & (!\clkDiv|s_divCounter[13]~53\ & VCC))
-- \clkDiv|s_divCounter[14]~55\ = CARRY((\clkDiv|s_divCounter\(14) & !\clkDiv|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(14),
	datad => VCC,
	cin => \clkDiv|s_divCounter[13]~53\,
	combout => \clkDiv|s_divCounter[14]~54_combout\,
	cout => \clkDiv|s_divCounter[14]~55\);

-- Location: FF_X72_Y62_N7
\clkDiv|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkDiv|s_divCounter[14]~54_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(14));

-- Location: LCCOMB_X73_Y61_N4
\clkDiv|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[15]~56_combout\ = (\clkDiv|s_divCounter\(15) & (!\clkDiv|s_divCounter[14]~55\)) # (!\clkDiv|s_divCounter\(15) & ((\clkDiv|s_divCounter[14]~55\) # (GND)))
-- \clkDiv|s_divCounter[15]~57\ = CARRY((!\clkDiv|s_divCounter[14]~55\) # (!\clkDiv|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(15),
	datad => VCC,
	cin => \clkDiv|s_divCounter[14]~55\,
	combout => \clkDiv|s_divCounter[15]~56_combout\,
	cout => \clkDiv|s_divCounter[15]~57\);

-- Location: FF_X72_Y62_N23
\clkDiv|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkDiv|s_divCounter[15]~56_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(15));

-- Location: LCCOMB_X73_Y61_N6
\clkDiv|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[16]~58_combout\ = (\clkDiv|s_divCounter\(16) & (\clkDiv|s_divCounter[15]~57\ $ (GND))) # (!\clkDiv|s_divCounter\(16) & (!\clkDiv|s_divCounter[15]~57\ & VCC))
-- \clkDiv|s_divCounter[16]~59\ = CARRY((\clkDiv|s_divCounter\(16) & !\clkDiv|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(16),
	datad => VCC,
	cin => \clkDiv|s_divCounter[15]~57\,
	combout => \clkDiv|s_divCounter[16]~58_combout\,
	cout => \clkDiv|s_divCounter[16]~59\);

-- Location: FF_X72_Y62_N19
\clkDiv|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkDiv|s_divCounter[16]~58_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(16));

-- Location: LCCOMB_X73_Y61_N8
\clkDiv|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[17]~60_combout\ = (\clkDiv|s_divCounter\(17) & (!\clkDiv|s_divCounter[16]~59\)) # (!\clkDiv|s_divCounter\(17) & ((\clkDiv|s_divCounter[16]~59\) # (GND)))
-- \clkDiv|s_divCounter[17]~61\ = CARRY((!\clkDiv|s_divCounter[16]~59\) # (!\clkDiv|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(17),
	datad => VCC,
	cin => \clkDiv|s_divCounter[16]~59\,
	combout => \clkDiv|s_divCounter[17]~60_combout\,
	cout => \clkDiv|s_divCounter[17]~61\);

-- Location: FF_X72_Y62_N31
\clkDiv|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkDiv|s_divCounter[17]~60_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(17));

-- Location: LCCOMB_X73_Y61_N10
\clkDiv|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[18]~62_combout\ = (\clkDiv|s_divCounter\(18) & (\clkDiv|s_divCounter[17]~61\ $ (GND))) # (!\clkDiv|s_divCounter\(18) & (!\clkDiv|s_divCounter[17]~61\ & VCC))
-- \clkDiv|s_divCounter[18]~63\ = CARRY((\clkDiv|s_divCounter\(18) & !\clkDiv|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(18),
	datad => VCC,
	cin => \clkDiv|s_divCounter[17]~61\,
	combout => \clkDiv|s_divCounter[18]~62_combout\,
	cout => \clkDiv|s_divCounter[18]~63\);

-- Location: FF_X73_Y61_N11
\clkDiv|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[18]~62_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(18));

-- Location: LCCOMB_X73_Y61_N12
\clkDiv|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[19]~64_combout\ = (\clkDiv|s_divCounter\(19) & (!\clkDiv|s_divCounter[18]~63\)) # (!\clkDiv|s_divCounter\(19) & ((\clkDiv|s_divCounter[18]~63\) # (GND)))
-- \clkDiv|s_divCounter[19]~65\ = CARRY((!\clkDiv|s_divCounter[18]~63\) # (!\clkDiv|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(19),
	datad => VCC,
	cin => \clkDiv|s_divCounter[18]~63\,
	combout => \clkDiv|s_divCounter[19]~64_combout\,
	cout => \clkDiv|s_divCounter[19]~65\);

-- Location: FF_X73_Y61_N13
\clkDiv|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[19]~64_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(19));

-- Location: LCCOMB_X73_Y61_N14
\clkDiv|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[20]~66_combout\ = (\clkDiv|s_divCounter\(20) & (\clkDiv|s_divCounter[19]~65\ $ (GND))) # (!\clkDiv|s_divCounter\(20) & (!\clkDiv|s_divCounter[19]~65\ & VCC))
-- \clkDiv|s_divCounter[20]~67\ = CARRY((\clkDiv|s_divCounter\(20) & !\clkDiv|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(20),
	datad => VCC,
	cin => \clkDiv|s_divCounter[19]~65\,
	combout => \clkDiv|s_divCounter[20]~66_combout\,
	cout => \clkDiv|s_divCounter[20]~67\);

-- Location: FF_X73_Y61_N15
\clkDiv|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[20]~66_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(20));

-- Location: LCCOMB_X73_Y61_N16
\clkDiv|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[21]~68_combout\ = (\clkDiv|s_divCounter\(21) & (!\clkDiv|s_divCounter[20]~67\)) # (!\clkDiv|s_divCounter\(21) & ((\clkDiv|s_divCounter[20]~67\) # (GND)))
-- \clkDiv|s_divCounter[21]~69\ = CARRY((!\clkDiv|s_divCounter[20]~67\) # (!\clkDiv|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(21),
	datad => VCC,
	cin => \clkDiv|s_divCounter[20]~67\,
	combout => \clkDiv|s_divCounter[21]~68_combout\,
	cout => \clkDiv|s_divCounter[21]~69\);

-- Location: FF_X73_Y61_N17
\clkDiv|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[21]~68_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(21));

-- Location: LCCOMB_X73_Y61_N18
\clkDiv|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[22]~70_combout\ = (\clkDiv|s_divCounter\(22) & (\clkDiv|s_divCounter[21]~69\ $ (GND))) # (!\clkDiv|s_divCounter\(22) & (!\clkDiv|s_divCounter[21]~69\ & VCC))
-- \clkDiv|s_divCounter[22]~71\ = CARRY((\clkDiv|s_divCounter\(22) & !\clkDiv|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(22),
	datad => VCC,
	cin => \clkDiv|s_divCounter[21]~69\,
	combout => \clkDiv|s_divCounter[22]~70_combout\,
	cout => \clkDiv|s_divCounter[22]~71\);

-- Location: FF_X73_Y61_N19
\clkDiv|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[22]~70_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(22));

-- Location: LCCOMB_X73_Y61_N20
\clkDiv|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[23]~72_combout\ = (\clkDiv|s_divCounter\(23) & (!\clkDiv|s_divCounter[22]~71\)) # (!\clkDiv|s_divCounter\(23) & ((\clkDiv|s_divCounter[22]~71\) # (GND)))
-- \clkDiv|s_divCounter[23]~73\ = CARRY((!\clkDiv|s_divCounter[22]~71\) # (!\clkDiv|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(23),
	datad => VCC,
	cin => \clkDiv|s_divCounter[22]~71\,
	combout => \clkDiv|s_divCounter[23]~72_combout\,
	cout => \clkDiv|s_divCounter[23]~73\);

-- Location: FF_X73_Y61_N21
\clkDiv|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[23]~72_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(23));

-- Location: LCCOMB_X73_Y61_N22
\clkDiv|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[24]~74_combout\ = (\clkDiv|s_divCounter\(24) & (\clkDiv|s_divCounter[23]~73\ $ (GND))) # (!\clkDiv|s_divCounter\(24) & (!\clkDiv|s_divCounter[23]~73\ & VCC))
-- \clkDiv|s_divCounter[24]~75\ = CARRY((\clkDiv|s_divCounter\(24) & !\clkDiv|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(24),
	datad => VCC,
	cin => \clkDiv|s_divCounter[23]~73\,
	combout => \clkDiv|s_divCounter[24]~74_combout\,
	cout => \clkDiv|s_divCounter[24]~75\);

-- Location: FF_X73_Y61_N23
\clkDiv|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[24]~74_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(24));

-- Location: LCCOMB_X73_Y61_N24
\clkDiv|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter[25]~76_combout\ = \clkDiv|s_divCounter[24]~75\ $ (\clkDiv|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clkDiv|s_divCounter\(25),
	cin => \clkDiv|s_divCounter[24]~75\,
	combout => \clkDiv|s_divCounter[25]~76_combout\);

-- Location: FF_X73_Y61_N25
\clkDiv|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter[25]~76_combout\,
	sclr => \clkDiv|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(25));

-- Location: LCCOMB_X73_Y61_N30
\clkDiv|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|clkOut~0_combout\ = (\clkDiv|s_divCounter\(19) & (\clkDiv|s_divCounter\(21) & (\clkDiv|s_divCounter\(20) & \clkDiv|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(19),
	datab => \clkDiv|s_divCounter\(21),
	datac => \clkDiv|s_divCounter\(20),
	datad => \clkDiv|s_divCounter\(22),
	combout => \clkDiv|clkOut~0_combout\);

-- Location: LCCOMB_X72_Y62_N8
\clkDiv|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|LessThan0~0_combout\ = (((!\clkDiv|s_divCounter\(17) & !\clkDiv|s_divCounter\(18))) # (!\clkDiv|clkOut~0_combout\)) # (!\clkDiv|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(17),
	datab => \clkDiv|s_divCounter\(23),
	datac => \clkDiv|s_divCounter\(18),
	datad => \clkDiv|clkOut~0_combout\,
	combout => \clkDiv|LessThan0~0_combout\);

-- Location: LCCOMB_X72_Y62_N26
\clkDiv|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|LessThan0~1_combout\ = (((!\clkDiv|s_divCounter\(14)) # (!\clkDiv|s_divCounter\(12))) # (!\clkDiv|s_divCounter\(13))) # (!\clkDiv|s_divCounter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(15),
	datab => \clkDiv|s_divCounter\(13),
	datac => \clkDiv|s_divCounter\(12),
	datad => \clkDiv|s_divCounter\(14),
	combout => \clkDiv|LessThan0~1_combout\);

-- Location: LCCOMB_X73_Y62_N0
\clkDiv|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|clkOut~1_combout\ = (!\clkDiv|s_divCounter\(10) & (!\clkDiv|s_divCounter\(9) & (!\clkDiv|s_divCounter\(8) & !\clkDiv|s_divCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(10),
	datab => \clkDiv|s_divCounter\(9),
	datac => \clkDiv|s_divCounter\(8),
	datad => \clkDiv|s_divCounter\(7),
	combout => \clkDiv|clkOut~1_combout\);

-- Location: LCCOMB_X73_Y62_N2
\clkDiv|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|clkOut~2_combout\ = (\clkDiv|s_divCounter\(0) & (\clkDiv|s_divCounter\(1) & (\clkDiv|s_divCounter\(2) & \clkDiv|s_divCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(0),
	datab => \clkDiv|s_divCounter\(1),
	datac => \clkDiv|s_divCounter\(2),
	datad => \clkDiv|s_divCounter\(3),
	combout => \clkDiv|clkOut~2_combout\);

-- Location: LCCOMB_X73_Y62_N4
\clkDiv|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|clkOut~3_combout\ = (\clkDiv|s_divCounter\(5) & (\clkDiv|s_divCounter\(4) & \clkDiv|clkOut~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(5),
	datac => \clkDiv|s_divCounter\(4),
	datad => \clkDiv|clkOut~2_combout\,
	combout => \clkDiv|clkOut~3_combout\);

-- Location: LCCOMB_X72_Y62_N28
\clkDiv|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|LessThan0~2_combout\ = (!\clkDiv|s_divCounter\(11) & (\clkDiv|clkOut~1_combout\ & ((!\clkDiv|clkOut~3_combout\) # (!\clkDiv|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(6),
	datab => \clkDiv|s_divCounter\(11),
	datac => \clkDiv|clkOut~1_combout\,
	datad => \clkDiv|clkOut~3_combout\,
	combout => \clkDiv|LessThan0~2_combout\);

-- Location: LCCOMB_X72_Y62_N24
\clkDiv|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|LessThan0~3_combout\ = (!\clkDiv|s_divCounter\(16) & (!\clkDiv|s_divCounter\(18) & ((\clkDiv|LessThan0~1_combout\) # (\clkDiv|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|LessThan0~1_combout\,
	datab => \clkDiv|s_divCounter\(16),
	datac => \clkDiv|s_divCounter\(18),
	datad => \clkDiv|LessThan0~2_combout\,
	combout => \clkDiv|LessThan0~3_combout\);

-- Location: LCCOMB_X72_Y62_N2
\clkDiv|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|LessThan0~4_combout\ = (\clkDiv|s_divCounter\(25) & ((\clkDiv|s_divCounter\(24)) # ((!\clkDiv|LessThan0~0_combout\ & !\clkDiv|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(25),
	datab => \clkDiv|s_divCounter\(24),
	datac => \clkDiv|LessThan0~0_combout\,
	datad => \clkDiv|LessThan0~3_combout\,
	combout => \clkDiv|LessThan0~4_combout\);

-- Location: LCCOMB_X72_Y62_N16
\clkDiv|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|clkOut~4_combout\ = (\clkDiv|s_divCounter\(14) & (!\clkDiv|s_divCounter\(6) & (\clkDiv|s_divCounter\(12) & \clkDiv|s_divCounter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(14),
	datab => \clkDiv|s_divCounter\(6),
	datac => \clkDiv|s_divCounter\(12),
	datad => \clkDiv|s_divCounter\(13),
	combout => \clkDiv|clkOut~4_combout\);

-- Location: LCCOMB_X73_Y61_N28
\clkDiv|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|clkOut~6_combout\ = (\clkDiv|s_divCounter\(18) & (!\clkDiv|s_divCounter\(23) & (\clkDiv|s_divCounter\(24) & !\clkDiv|s_divCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(18),
	datab => \clkDiv|s_divCounter\(23),
	datac => \clkDiv|s_divCounter\(24),
	datad => \clkDiv|s_divCounter\(25),
	combout => \clkDiv|clkOut~6_combout\);

-- Location: LCCOMB_X72_Y62_N4
\clkDiv|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|clkOut~5_combout\ = (!\clkDiv|s_divCounter\(15) & (\clkDiv|s_divCounter\(16) & (!\clkDiv|s_divCounter\(17) & \clkDiv|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(15),
	datab => \clkDiv|s_divCounter\(16),
	datac => \clkDiv|s_divCounter\(17),
	datad => \clkDiv|s_divCounter\(11),
	combout => \clkDiv|clkOut~5_combout\);

-- Location: LCCOMB_X72_Y62_N12
\clkDiv|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|clkOut~7_combout\ = (\clkDiv|clkOut~4_combout\ & (\clkDiv|clkOut~6_combout\ & \clkDiv|clkOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|clkOut~4_combout\,
	datac => \clkDiv|clkOut~6_combout\,
	datad => \clkDiv|clkOut~5_combout\,
	combout => \clkDiv|clkOut~7_combout\);

-- Location: LCCOMB_X72_Y62_N10
\clkDiv|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|clkOut~8_combout\ = (\clkDiv|clkOut~3_combout\ & (\clkDiv|clkOut~1_combout\ & (\clkDiv|clkOut~0_combout\ & \clkDiv|clkOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|clkOut~3_combout\,
	datab => \clkDiv|clkOut~1_combout\,
	datac => \clkDiv|clkOut~0_combout\,
	datad => \clkDiv|clkOut~7_combout\,
	combout => \clkDiv|clkOut~8_combout\);

-- Location: LCCOMB_X72_Y62_N20
\clkDiv|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|clkOut~9_combout\ = (!\clkDiv|LessThan0~4_combout\ & ((\clkDiv|clkOut~q\) # (\clkDiv|clkOut~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|LessThan0~4_combout\,
	datac => \clkDiv|clkOut~q\,
	datad => \clkDiv|clkOut~8_combout\,
	combout => \clkDiv|clkOut~9_combout\);

-- Location: LCCOMB_X72_Y62_N14
\clkDiv|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|clkOut~feeder_combout\ = \clkDiv|clkOut~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDiv|clkOut~9_combout\,
	combout => \clkDiv|clkOut~feeder_combout\);

-- Location: FF_X72_Y62_N15
\clkDiv|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|clkOut~q\);

-- Location: CLKCTRL_G10
\clkDiv|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkDiv|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkDiv|clkOut~clkctrl_outclk\);

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

-- Location: LCCOMB_X113_Y12_N16
\ram16x8|s_memory~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~223_combout\ = (\SW[12]~input_o\ & (!\SW[11]~input_o\ & (!\SW[10]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ram16x8|s_memory~223_combout\);

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

-- Location: LCCOMB_X113_Y12_N30
\ram16x8|s_memory~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~224_combout\ = (\ram16x8|s_memory~223_combout\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram16x8|s_memory~223_combout\,
	datad => \SW[0]~input_o\,
	combout => \ram16x8|s_memory~224_combout\);

-- Location: FF_X113_Y11_N25
\ram16x8|s_memory~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~85_q\);

-- Location: LCCOMB_X113_Y12_N0
\ram16x8|s_memory~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~225_combout\ = (\SW[12]~input_o\ & (!\SW[11]~input_o\ & (!\SW[10]~input_o\ & !\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ram16x8|s_memory~225_combout\);

-- Location: LCCOMB_X113_Y12_N14
\ram16x8|s_memory~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~226_combout\ = (\ram16x8|s_memory~225_combout\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram16x8|s_memory~225_combout\,
	datad => \SW[0]~input_o\,
	combout => \ram16x8|s_memory~226_combout\);

-- Location: FF_X113_Y11_N7
\ram16x8|s_memory~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~77_q\);

-- Location: LCCOMB_X113_Y11_N6
\ram16x8|s_memory~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~141_combout\ = (\SW[10]~input_o\ & (((\SW[9]~input_o\)))) # (!\SW[10]~input_o\ & ((\SW[9]~input_o\ & (\ram16x8|s_memory~85_q\)) # (!\SW[9]~input_o\ & ((\ram16x8|s_memory~77_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \ram16x8|s_memory~85_q\,
	datac => \ram16x8|s_memory~77_q\,
	datad => \SW[9]~input_o\,
	combout => \ram16x8|s_memory~141_combout\);

-- Location: LCCOMB_X112_Y12_N24
\ram16x8|s_memory~93feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~93feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \ram16x8|s_memory~93feeder_combout\);

-- Location: LCCOMB_X108_Y12_N4
\ram16x8|s_memory~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~221_combout\ = (\SW[12]~input_o\ & (\SW[10]~input_o\ & (!\SW[9]~input_o\ & !\SW[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \ram16x8|s_memory~221_combout\);

-- Location: LCCOMB_X108_Y12_N18
\ram16x8|s_memory~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~222_combout\ = (\ram16x8|s_memory~221_combout\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram16x8|s_memory~221_combout\,
	datad => \SW[0]~input_o\,
	combout => \ram16x8|s_memory~222_combout\);

-- Location: FF_X112_Y12_N25
\ram16x8|s_memory~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~93feeder_combout\,
	ena => \ram16x8|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~93_q\);

-- Location: LCCOMB_X113_Y12_N24
\ram16x8|s_memory~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~227_combout\ = (\SW[12]~input_o\ & (!\SW[11]~input_o\ & (\SW[10]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ram16x8|s_memory~227_combout\);

-- Location: LCCOMB_X113_Y12_N22
\ram16x8|s_memory~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~228_combout\ = (\ram16x8|s_memory~227_combout\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram16x8|s_memory~227_combout\,
	datad => \SW[0]~input_o\,
	combout => \ram16x8|s_memory~228_combout\);

-- Location: FF_X112_Y11_N1
\ram16x8|s_memory~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~101_q\);

-- Location: LCCOMB_X112_Y11_N0
\ram16x8|s_memory~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~142_combout\ = (\ram16x8|s_memory~141_combout\ & (((\ram16x8|s_memory~101_q\) # (!\SW[10]~input_o\)))) # (!\ram16x8|s_memory~141_combout\ & (\ram16x8|s_memory~93_q\ & ((\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~141_combout\,
	datab => \ram16x8|s_memory~93_q\,
	datac => \ram16x8|s_memory~101_q\,
	datad => \SW[10]~input_o\,
	combout => \ram16x8|s_memory~142_combout\);

-- Location: LCCOMB_X108_Y12_N12
\ram16x8|s_memory~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~229_combout\ = (!\SW[12]~input_o\ & (!\SW[10]~input_o\ & (\SW[9]~input_o\ & \SW[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \ram16x8|s_memory~229_combout\);

-- Location: LCCOMB_X108_Y12_N26
\ram16x8|s_memory~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~230_combout\ = (\ram16x8|s_memory~229_combout\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~229_combout\,
	datad => \SW[0]~input_o\,
	combout => \ram16x8|s_memory~230_combout\);

-- Location: FF_X108_Y12_N1
\ram16x8|s_memory~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~53_q\);

-- Location: LCCOMB_X108_Y12_N28
\ram16x8|s_memory~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~235_combout\ = (!\SW[12]~input_o\ & (\SW[10]~input_o\ & (\SW[9]~input_o\ & \SW[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \ram16x8|s_memory~235_combout\);

-- Location: LCCOMB_X108_Y12_N30
\ram16x8|s_memory~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~236_combout\ = (\ram16x8|s_memory~235_combout\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram16x8|s_memory~235_combout\,
	datad => \SW[0]~input_o\,
	combout => \ram16x8|s_memory~236_combout\);

-- Location: FF_X108_Y12_N11
\ram16x8|s_memory~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~69_q\);

-- Location: LCCOMB_X109_Y12_N12
\ram16x8|s_memory~61feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~61feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \ram16x8|s_memory~61feeder_combout\);

-- Location: LCCOMB_X108_Y12_N8
\ram16x8|s_memory~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~231_combout\ = (!\SW[12]~input_o\ & (\SW[10]~input_o\ & (!\SW[9]~input_o\ & \SW[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \ram16x8|s_memory~231_combout\);

-- Location: LCCOMB_X108_Y12_N22
\ram16x8|s_memory~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~232_combout\ = (\ram16x8|s_memory~231_combout\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram16x8|s_memory~231_combout\,
	datad => \SW[0]~input_o\,
	combout => \ram16x8|s_memory~232_combout\);

-- Location: FF_X109_Y12_N13
\ram16x8|s_memory~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~61feeder_combout\,
	ena => \ram16x8|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~61_q\);

-- Location: LCCOMB_X113_Y12_N12
\ram16x8|s_memory~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~233_combout\ = (!\SW[12]~input_o\ & (\SW[11]~input_o\ & (!\SW[10]~input_o\ & !\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ram16x8|s_memory~233_combout\);

-- Location: LCCOMB_X113_Y12_N6
\ram16x8|s_memory~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~234_combout\ = (\ram16x8|s_memory~233_combout\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~233_combout\,
	datad => \SW[0]~input_o\,
	combout => \ram16x8|s_memory~234_combout\);

-- Location: FF_X109_Y12_N7
\ram16x8|s_memory~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~45_q\);

-- Location: LCCOMB_X109_Y12_N6
\ram16x8|s_memory~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~143_combout\ = (\SW[10]~input_o\ & ((\ram16x8|s_memory~61_q\) # ((\SW[9]~input_o\)))) # (!\SW[10]~input_o\ & (((\ram16x8|s_memory~45_q\ & !\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~61_q\,
	datab => \SW[10]~input_o\,
	datac => \ram16x8|s_memory~45_q\,
	datad => \SW[9]~input_o\,
	combout => \ram16x8|s_memory~143_combout\);

-- Location: LCCOMB_X108_Y12_N10
\ram16x8|s_memory~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~144_combout\ = (\SW[9]~input_o\ & ((\ram16x8|s_memory~143_combout\ & ((\ram16x8|s_memory~69_q\))) # (!\ram16x8|s_memory~143_combout\ & (\ram16x8|s_memory~53_q\)))) # (!\SW[9]~input_o\ & (((\ram16x8|s_memory~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \ram16x8|s_memory~53_q\,
	datac => \ram16x8|s_memory~69_q\,
	datad => \ram16x8|s_memory~143_combout\,
	combout => \ram16x8|s_memory~144_combout\);

-- Location: LCCOMB_X108_Y11_N8
\ram16x8|s_memory~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~239_combout\ = (\SW[9]~input_o\ & (!\SW[11]~input_o\ & (!\SW[12]~input_o\ & !\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \ram16x8|s_memory~239_combout\);

-- Location: LCCOMB_X108_Y11_N18
\ram16x8|s_memory~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~240_combout\ = (\ram16x8|s_memory~239_combout\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram16x8|s_memory~239_combout\,
	datad => \SW[0]~input_o\,
	combout => \ram16x8|s_memory~240_combout\);

-- Location: FF_X111_Y11_N1
\ram16x8|s_memory~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~21_q\);

-- Location: LCCOMB_X108_Y11_N4
\ram16x8|s_memory~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~241_combout\ = (!\SW[9]~input_o\ & (!\SW[11]~input_o\ & (!\SW[12]~input_o\ & !\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \ram16x8|s_memory~241_combout\);

-- Location: LCCOMB_X108_Y11_N10
\ram16x8|s_memory~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~242_combout\ = (\ram16x8|s_memory~241_combout\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram16x8|s_memory~241_combout\,
	datad => \SW[0]~input_o\,
	combout => \ram16x8|s_memory~242_combout\);

-- Location: FF_X111_Y11_N31
\ram16x8|s_memory~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~13_q\);

-- Location: LCCOMB_X111_Y11_N30
\ram16x8|s_memory~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~145_combout\ = (\SW[9]~input_o\ & ((\ram16x8|s_memory~21_q\) # ((\SW[10]~input_o\)))) # (!\SW[9]~input_o\ & (((\ram16x8|s_memory~13_q\ & !\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \ram16x8|s_memory~21_q\,
	datac => \ram16x8|s_memory~13_q\,
	datad => \SW[10]~input_o\,
	combout => \ram16x8|s_memory~145_combout\);

-- Location: LCCOMB_X108_Y11_N16
\ram16x8|s_memory~29feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~29feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \ram16x8|s_memory~29feeder_combout\);

-- Location: LCCOMB_X108_Y11_N20
\ram16x8|s_memory~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~237_combout\ = (!\SW[9]~input_o\ & (!\SW[11]~input_o\ & (!\SW[12]~input_o\ & \SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \ram16x8|s_memory~237_combout\);

-- Location: LCCOMB_X108_Y11_N26
\ram16x8|s_memory~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~238_combout\ = (\ram16x8|s_memory~237_combout\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram16x8|s_memory~237_combout\,
	datad => \SW[0]~input_o\,
	combout => \ram16x8|s_memory~238_combout\);

-- Location: FF_X108_Y11_N17
\ram16x8|s_memory~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~29feeder_combout\,
	ena => \ram16x8|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~29_q\);

-- Location: LCCOMB_X108_Y11_N12
\ram16x8|s_memory~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~243_combout\ = (\SW[9]~input_o\ & (!\SW[11]~input_o\ & (!\SW[12]~input_o\ & \SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \ram16x8|s_memory~243_combout\);

-- Location: LCCOMB_X108_Y11_N6
\ram16x8|s_memory~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~244_combout\ = (\ram16x8|s_memory~243_combout\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~243_combout\,
	datad => \SW[0]~input_o\,
	combout => \ram16x8|s_memory~244_combout\);

-- Location: FF_X108_Y11_N23
\ram16x8|s_memory~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~37_q\);

-- Location: LCCOMB_X108_Y11_N22
\ram16x8|s_memory~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~146_combout\ = (\ram16x8|s_memory~145_combout\ & (((\ram16x8|s_memory~37_q\) # (!\SW[10]~input_o\)))) # (!\ram16x8|s_memory~145_combout\ & (\ram16x8|s_memory~29_q\ & ((\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~145_combout\,
	datab => \ram16x8|s_memory~29_q\,
	datac => \ram16x8|s_memory~37_q\,
	datad => \SW[10]~input_o\,
	combout => \ram16x8|s_memory~146_combout\);

-- Location: LCCOMB_X108_Y12_N20
\ram16x8|s_memory~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~147_combout\ = (\SW[11]~input_o\ & ((\ram16x8|s_memory~144_combout\) # ((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & (((\ram16x8|s_memory~146_combout\ & !\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~144_combout\,
	datab => \SW[11]~input_o\,
	datac => \ram16x8|s_memory~146_combout\,
	datad => \SW[12]~input_o\,
	combout => \ram16x8|s_memory~147_combout\);

-- Location: LCCOMB_X108_Y11_N24
\ram16x8|s_memory~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~245_combout\ = (\SW[9]~input_o\ & (\SW[11]~input_o\ & (\SW[12]~input_o\ & !\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \ram16x8|s_memory~245_combout\);

-- Location: LCCOMB_X109_Y11_N6
\ram16x8|s_memory~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~246_combout\ = (\ram16x8|s_memory~245_combout\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram16x8|s_memory~245_combout\,
	datad => \SW[0]~input_o\,
	combout => \ram16x8|s_memory~246_combout\);

-- Location: FF_X110_Y11_N5
\ram16x8|s_memory~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~117_q\);

-- Location: LCCOMB_X113_Y12_N4
\ram16x8|s_memory~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~251_combout\ = (\SW[12]~input_o\ & (\SW[11]~input_o\ & (\SW[10]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ram16x8|s_memory~251_combout\);

-- Location: LCCOMB_X113_Y12_N10
\ram16x8|s_memory~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~252_combout\ = (\ram16x8|s_memory~251_combout\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram16x8|s_memory~251_combout\,
	datad => \SW[0]~input_o\,
	combout => \ram16x8|s_memory~252_combout\);

-- Location: FF_X110_Y12_N25
\ram16x8|s_memory~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~133_q\);

-- Location: LCCOMB_X108_Y11_N14
\ram16x8|s_memory~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~249_combout\ = (!\SW[9]~input_o\ & (\SW[11]~input_o\ & (\SW[12]~input_o\ & !\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \ram16x8|s_memory~249_combout\);

-- Location: LCCOMB_X108_Y11_N0
\ram16x8|s_memory~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~250_combout\ = (\ram16x8|s_memory~249_combout\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram16x8|s_memory~249_combout\,
	datad => \SW[0]~input_o\,
	combout => \ram16x8|s_memory~250_combout\);

-- Location: FF_X111_Y12_N23
\ram16x8|s_memory~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~109_q\);

-- Location: LCCOMB_X113_Y12_N8
\ram16x8|s_memory~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~247_combout\ = (\SW[12]~input_o\ & (\SW[11]~input_o\ & (\SW[10]~input_o\ & !\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ram16x8|s_memory~247_combout\);

-- Location: LCCOMB_X113_Y12_N18
\ram16x8|s_memory~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~248_combout\ = (\ram16x8|s_memory~247_combout\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram16x8|s_memory~247_combout\,
	datad => \SW[0]~input_o\,
	combout => \ram16x8|s_memory~248_combout\);

-- Location: FF_X111_Y12_N17
\ram16x8|s_memory~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~125_q\);

-- Location: LCCOMB_X111_Y12_N22
\ram16x8|s_memory~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~148_combout\ = (\SW[10]~input_o\ & ((\SW[9]~input_o\) # ((\ram16x8|s_memory~125_q\)))) # (!\SW[10]~input_o\ & (!\SW[9]~input_o\ & (\ram16x8|s_memory~109_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \ram16x8|s_memory~109_q\,
	datad => \ram16x8|s_memory~125_q\,
	combout => \ram16x8|s_memory~148_combout\);

-- Location: LCCOMB_X110_Y12_N24
\ram16x8|s_memory~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~149_combout\ = (\SW[9]~input_o\ & ((\ram16x8|s_memory~148_combout\ & ((\ram16x8|s_memory~133_q\))) # (!\ram16x8|s_memory~148_combout\ & (\ram16x8|s_memory~117_q\)))) # (!\SW[9]~input_o\ & (((\ram16x8|s_memory~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \ram16x8|s_memory~117_q\,
	datac => \ram16x8|s_memory~133_q\,
	datad => \ram16x8|s_memory~148_combout\,
	combout => \ram16x8|s_memory~149_combout\);

-- Location: LCCOMB_X108_Y12_N2
\ram16x8|s_memory~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~150_combout\ = (\ram16x8|s_memory~147_combout\ & (((\ram16x8|s_memory~149_combout\) # (!\SW[12]~input_o\)))) # (!\ram16x8|s_memory~147_combout\ & (\ram16x8|s_memory~142_combout\ & ((\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~142_combout\,
	datab => \ram16x8|s_memory~147_combout\,
	datac => \ram16x8|s_memory~149_combout\,
	datad => \SW[12]~input_o\,
	combout => \ram16x8|s_memory~150_combout\);

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

-- Location: FF_X111_Y11_N11
\ram16x8|s_memory~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~14_q\);

-- Location: LCCOMB_X113_Y11_N14
\ram16x8|s_memory~78feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~78feeder_combout\ = \SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \ram16x8|s_memory~78feeder_combout\);

-- Location: FF_X113_Y11_N15
\ram16x8|s_memory~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~78feeder_combout\,
	ena => \ram16x8|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~78_q\);

-- Location: LCCOMB_X111_Y11_N10
\ram16x8|s_memory~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~155_combout\ = (\SW[11]~input_o\ & (\SW[12]~input_o\)) # (!\SW[11]~input_o\ & ((\SW[12]~input_o\ & ((\ram16x8|s_memory~78_q\))) # (!\SW[12]~input_o\ & (\ram16x8|s_memory~14_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \ram16x8|s_memory~14_q\,
	datad => \ram16x8|s_memory~78_q\,
	combout => \ram16x8|s_memory~155_combout\);

-- Location: FF_X109_Y12_N3
\ram16x8|s_memory~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~46_q\);

-- Location: FF_X111_Y12_N7
\ram16x8|s_memory~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~110_q\);

-- Location: LCCOMB_X111_Y12_N6
\ram16x8|s_memory~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~156_combout\ = (\ram16x8|s_memory~155_combout\ & (((\ram16x8|s_memory~110_q\) # (!\SW[11]~input_o\)))) # (!\ram16x8|s_memory~155_combout\ & (\ram16x8|s_memory~46_q\ & ((\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~155_combout\,
	datab => \ram16x8|s_memory~46_q\,
	datac => \ram16x8|s_memory~110_q\,
	datad => \SW[11]~input_o\,
	combout => \ram16x8|s_memory~156_combout\);

-- Location: LCCOMB_X113_Y11_N8
\ram16x8|s_memory~86feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~86feeder_combout\ = \SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \ram16x8|s_memory~86feeder_combout\);

-- Location: FF_X113_Y11_N9
\ram16x8|s_memory~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~86feeder_combout\,
	ena => \ram16x8|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~86_q\);

-- Location: FF_X110_Y11_N23
\ram16x8|s_memory~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~54_q\);

-- Location: FF_X111_Y11_N9
\ram16x8|s_memory~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~22_q\);

-- Location: LCCOMB_X111_Y11_N8
\ram16x8|s_memory~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~153_combout\ = (\SW[11]~input_o\ & ((\ram16x8|s_memory~54_q\) # ((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & (((\ram16x8|s_memory~22_q\ & !\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram16x8|s_memory~54_q\,
	datac => \ram16x8|s_memory~22_q\,
	datad => \SW[12]~input_o\,
	combout => \ram16x8|s_memory~153_combout\);

-- Location: FF_X110_Y11_N1
\ram16x8|s_memory~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~118_q\);

-- Location: LCCOMB_X110_Y11_N0
\ram16x8|s_memory~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~154_combout\ = (\ram16x8|s_memory~153_combout\ & (((\ram16x8|s_memory~118_q\) # (!\SW[12]~input_o\)))) # (!\ram16x8|s_memory~153_combout\ & (\ram16x8|s_memory~86_q\ & ((\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~86_q\,
	datab => \ram16x8|s_memory~153_combout\,
	datac => \ram16x8|s_memory~118_q\,
	datad => \SW[12]~input_o\,
	combout => \ram16x8|s_memory~154_combout\);

-- Location: LCCOMB_X110_Y12_N26
\ram16x8|s_memory~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~157_combout\ = (\SW[9]~input_o\ & (((\ram16x8|s_memory~154_combout\) # (\SW[10]~input_o\)))) # (!\SW[9]~input_o\ & (\ram16x8|s_memory~156_combout\ & ((!\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~156_combout\,
	datab => \ram16x8|s_memory~154_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \ram16x8|s_memory~157_combout\);

-- Location: FF_X114_Y12_N5
\ram16x8|s_memory~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~102_q\);

-- Location: FF_X109_Y11_N23
\ram16x8|s_memory~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~38_q\);

-- Location: FF_X109_Y11_N13
\ram16x8|s_memory~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~70_q\);

-- Location: LCCOMB_X109_Y11_N22
\ram16x8|s_memory~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~158_combout\ = (\SW[12]~input_o\ & (\SW[11]~input_o\)) # (!\SW[12]~input_o\ & ((\SW[11]~input_o\ & ((\ram16x8|s_memory~70_q\))) # (!\SW[11]~input_o\ & (\ram16x8|s_memory~38_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \ram16x8|s_memory~38_q\,
	datad => \ram16x8|s_memory~70_q\,
	combout => \ram16x8|s_memory~158_combout\);

-- Location: FF_X110_Y12_N17
\ram16x8|s_memory~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~134_q\);

-- Location: LCCOMB_X110_Y12_N16
\ram16x8|s_memory~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~159_combout\ = (\ram16x8|s_memory~158_combout\ & (((\ram16x8|s_memory~134_q\) # (!\SW[12]~input_o\)))) # (!\ram16x8|s_memory~158_combout\ & (\ram16x8|s_memory~102_q\ & ((\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~102_q\,
	datab => \ram16x8|s_memory~158_combout\,
	datac => \ram16x8|s_memory~134_q\,
	datad => \SW[12]~input_o\,
	combout => \ram16x8|s_memory~159_combout\);

-- Location: FF_X109_Y12_N1
\ram16x8|s_memory~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~62_q\);

-- Location: FF_X112_Y12_N11
\ram16x8|s_memory~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~94_q\);

-- Location: FF_X112_Y12_N1
\ram16x8|s_memory~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~30_q\);

-- Location: LCCOMB_X112_Y12_N0
\ram16x8|s_memory~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~151_combout\ = (\SW[11]~input_o\ & (((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & ((\SW[12]~input_o\ & (\ram16x8|s_memory~94_q\)) # (!\SW[12]~input_o\ & ((\ram16x8|s_memory~30_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~94_q\,
	datab => \SW[11]~input_o\,
	datac => \ram16x8|s_memory~30_q\,
	datad => \SW[12]~input_o\,
	combout => \ram16x8|s_memory~151_combout\);

-- Location: FF_X111_Y12_N1
\ram16x8|s_memory~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~126_q\);

-- Location: LCCOMB_X111_Y12_N0
\ram16x8|s_memory~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~152_combout\ = (\ram16x8|s_memory~151_combout\ & (((\ram16x8|s_memory~126_q\) # (!\SW[11]~input_o\)))) # (!\ram16x8|s_memory~151_combout\ & (\ram16x8|s_memory~62_q\ & ((\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~62_q\,
	datab => \ram16x8|s_memory~151_combout\,
	datac => \ram16x8|s_memory~126_q\,
	datad => \SW[11]~input_o\,
	combout => \ram16x8|s_memory~152_combout\);

-- Location: LCCOMB_X110_Y12_N2
\ram16x8|s_memory~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~160_combout\ = (\ram16x8|s_memory~157_combout\ & ((\ram16x8|s_memory~159_combout\) # ((!\SW[10]~input_o\)))) # (!\ram16x8|s_memory~157_combout\ & (((\ram16x8|s_memory~152_combout\ & \SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~157_combout\,
	datab => \ram16x8|s_memory~159_combout\,
	datac => \ram16x8|s_memory~152_combout\,
	datad => \SW[10]~input_o\,
	combout => \ram16x8|s_memory~160_combout\);

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

-- Location: FF_X109_Y12_N17
\ram16x8|s_memory~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~63_q\);

-- Location: FF_X108_Y12_N7
\ram16x8|s_memory~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~71_q\);

-- Location: LCCOMB_X108_Y12_N16
\ram16x8|s_memory~55feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~55feeder_combout\ = \SW[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[3]~input_o\,
	combout => \ram16x8|s_memory~55feeder_combout\);

-- Location: FF_X108_Y12_N17
\ram16x8|s_memory~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~55feeder_combout\,
	ena => \ram16x8|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~55_q\);

-- Location: FF_X109_Y12_N19
\ram16x8|s_memory~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~47_q\);

-- Location: LCCOMB_X109_Y12_N18
\ram16x8|s_memory~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~161_combout\ = (\SW[10]~input_o\ & (((\SW[9]~input_o\)))) # (!\SW[10]~input_o\ & ((\SW[9]~input_o\ & (\ram16x8|s_memory~55_q\)) # (!\SW[9]~input_o\ & ((\ram16x8|s_memory~47_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~55_q\,
	datab => \SW[10]~input_o\,
	datac => \ram16x8|s_memory~47_q\,
	datad => \SW[9]~input_o\,
	combout => \ram16x8|s_memory~161_combout\);

-- Location: LCCOMB_X108_Y12_N6
\ram16x8|s_memory~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~162_combout\ = (\SW[10]~input_o\ & ((\ram16x8|s_memory~161_combout\ & ((\ram16x8|s_memory~71_q\))) # (!\ram16x8|s_memory~161_combout\ & (\ram16x8|s_memory~63_q\)))) # (!\SW[10]~input_o\ & (((\ram16x8|s_memory~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~63_q\,
	datab => \SW[10]~input_o\,
	datac => \ram16x8|s_memory~71_q\,
	datad => \ram16x8|s_memory~161_combout\,
	combout => \ram16x8|s_memory~162_combout\);

-- Location: FF_X113_Y11_N21
\ram16x8|s_memory~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~87_q\);

-- Location: FF_X112_Y12_N15
\ram16x8|s_memory~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~95_q\);

-- Location: FF_X113_Y11_N27
\ram16x8|s_memory~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~79_q\);

-- Location: LCCOMB_X113_Y11_N26
\ram16x8|s_memory~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~163_combout\ = (\SW[10]~input_o\ & ((\ram16x8|s_memory~95_q\) # ((\SW[9]~input_o\)))) # (!\SW[10]~input_o\ & (((\ram16x8|s_memory~79_q\ & !\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \ram16x8|s_memory~95_q\,
	datac => \ram16x8|s_memory~79_q\,
	datad => \SW[9]~input_o\,
	combout => \ram16x8|s_memory~163_combout\);

-- Location: FF_X112_Y11_N19
\ram16x8|s_memory~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~103_q\);

-- Location: LCCOMB_X112_Y11_N18
\ram16x8|s_memory~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~164_combout\ = (\ram16x8|s_memory~163_combout\ & (((\ram16x8|s_memory~103_q\) # (!\SW[9]~input_o\)))) # (!\ram16x8|s_memory~163_combout\ & (\ram16x8|s_memory~87_q\ & ((\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~87_q\,
	datab => \ram16x8|s_memory~163_combout\,
	datac => \ram16x8|s_memory~103_q\,
	datad => \SW[9]~input_o\,
	combout => \ram16x8|s_memory~164_combout\);

-- Location: LCCOMB_X108_Y11_N28
\ram16x8|s_memory~31feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~31feeder_combout\ = \SW[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[3]~input_o\,
	combout => \ram16x8|s_memory~31feeder_combout\);

-- Location: FF_X108_Y11_N29
\ram16x8|s_memory~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~31feeder_combout\,
	ena => \ram16x8|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~31_q\);

-- Location: FF_X111_Y11_N19
\ram16x8|s_memory~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~15_q\);

-- Location: LCCOMB_X111_Y11_N18
\ram16x8|s_memory~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~165_combout\ = (\SW[10]~input_o\ & ((\ram16x8|s_memory~31_q\) # ((\SW[9]~input_o\)))) # (!\SW[10]~input_o\ & (((\ram16x8|s_memory~15_q\ & !\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~31_q\,
	datab => \SW[10]~input_o\,
	datac => \ram16x8|s_memory~15_q\,
	datad => \SW[9]~input_o\,
	combout => \ram16x8|s_memory~165_combout\);

-- Location: FF_X112_Y11_N29
\ram16x8|s_memory~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~39_q\);

-- Location: FF_X111_Y11_N25
\ram16x8|s_memory~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~23_q\);

-- Location: LCCOMB_X112_Y11_N28
\ram16x8|s_memory~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~166_combout\ = (\SW[9]~input_o\ & ((\ram16x8|s_memory~165_combout\ & (\ram16x8|s_memory~39_q\)) # (!\ram16x8|s_memory~165_combout\ & ((\ram16x8|s_memory~23_q\))))) # (!\SW[9]~input_o\ & (\ram16x8|s_memory~165_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \ram16x8|s_memory~165_combout\,
	datac => \ram16x8|s_memory~39_q\,
	datad => \ram16x8|s_memory~23_q\,
	combout => \ram16x8|s_memory~166_combout\);

-- Location: LCCOMB_X112_Y11_N10
\ram16x8|s_memory~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~167_combout\ = (\SW[11]~input_o\ & (((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & ((\SW[12]~input_o\ & (\ram16x8|s_memory~164_combout\)) # (!\SW[12]~input_o\ & ((\ram16x8|s_memory~166_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram16x8|s_memory~164_combout\,
	datac => \SW[12]~input_o\,
	datad => \ram16x8|s_memory~166_combout\,
	combout => \ram16x8|s_memory~167_combout\);

-- Location: FF_X111_Y12_N25
\ram16x8|s_memory~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~111_q\);

-- Location: FF_X110_Y11_N27
\ram16x8|s_memory~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~119_q\);

-- Location: LCCOMB_X111_Y12_N24
\ram16x8|s_memory~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~168_combout\ = (\SW[10]~input_o\ & (\SW[9]~input_o\)) # (!\SW[10]~input_o\ & ((\SW[9]~input_o\ & ((\ram16x8|s_memory~119_q\))) # (!\SW[9]~input_o\ & (\ram16x8|s_memory~111_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \ram16x8|s_memory~111_q\,
	datad => \ram16x8|s_memory~119_q\,
	combout => \ram16x8|s_memory~168_combout\);

-- Location: FF_X113_Y12_N27
\ram16x8|s_memory~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~135_q\);

-- Location: FF_X113_Y12_N29
\ram16x8|s_memory~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~127_q\);

-- Location: LCCOMB_X113_Y12_N26
\ram16x8|s_memory~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~169_combout\ = (\ram16x8|s_memory~168_combout\ & (((\ram16x8|s_memory~135_q\)) # (!\SW[10]~input_o\))) # (!\ram16x8|s_memory~168_combout\ & (\SW[10]~input_o\ & ((\ram16x8|s_memory~127_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~168_combout\,
	datab => \SW[10]~input_o\,
	datac => \ram16x8|s_memory~135_q\,
	datad => \ram16x8|s_memory~127_q\,
	combout => \ram16x8|s_memory~169_combout\);

-- Location: LCCOMB_X108_Y12_N24
\ram16x8|s_memory~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~170_combout\ = (\ram16x8|s_memory~167_combout\ & (((\ram16x8|s_memory~169_combout\) # (!\SW[11]~input_o\)))) # (!\ram16x8|s_memory~167_combout\ & (\ram16x8|s_memory~162_combout\ & ((\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~162_combout\,
	datab => \ram16x8|s_memory~167_combout\,
	datac => \ram16x8|s_memory~169_combout\,
	datad => \SW[11]~input_o\,
	combout => \ram16x8|s_memory~170_combout\);

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

-- Location: FF_X112_Y11_N17
\ram16x8|s_memory~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~104_q\);

-- Location: FF_X112_Y11_N23
\ram16x8|s_memory~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~40_q\);

-- Location: LCCOMB_X112_Y11_N22
\ram16x8|s_memory~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~178_combout\ = (\SW[12]~input_o\ & ((\ram16x8|s_memory~104_q\) # ((\SW[11]~input_o\)))) # (!\SW[12]~input_o\ & (((\ram16x8|s_memory~40_q\ & !\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ram16x8|s_memory~104_q\,
	datac => \ram16x8|s_memory~40_q\,
	datad => \SW[11]~input_o\,
	combout => \ram16x8|s_memory~178_combout\);

-- Location: FF_X110_Y12_N11
\ram16x8|s_memory~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~136_q\);

-- Location: LCCOMB_X110_Y12_N12
\ram16x8|s_memory~72feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~72feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \ram16x8|s_memory~72feeder_combout\);

-- Location: FF_X110_Y12_N13
\ram16x8|s_memory~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~72feeder_combout\,
	ena => \ram16x8|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~72_q\);

-- Location: LCCOMB_X110_Y12_N10
\ram16x8|s_memory~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~179_combout\ = (\SW[11]~input_o\ & ((\ram16x8|s_memory~178_combout\ & (\ram16x8|s_memory~136_q\)) # (!\ram16x8|s_memory~178_combout\ & ((\ram16x8|s_memory~72_q\))))) # (!\SW[11]~input_o\ & (\ram16x8|s_memory~178_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram16x8|s_memory~178_combout\,
	datac => \ram16x8|s_memory~136_q\,
	datad => \ram16x8|s_memory~72_q\,
	combout => \ram16x8|s_memory~179_combout\);

-- Location: LCCOMB_X113_Y11_N4
\ram16x8|s_memory~88feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~88feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \ram16x8|s_memory~88feeder_combout\);

-- Location: FF_X113_Y11_N5
\ram16x8|s_memory~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~88feeder_combout\,
	ena => \ram16x8|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~88_q\);

-- Location: FF_X111_Y11_N5
\ram16x8|s_memory~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~24_q\);

-- Location: LCCOMB_X111_Y11_N4
\ram16x8|s_memory~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~171_combout\ = (\SW[11]~input_o\ & (((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & ((\SW[12]~input_o\ & (\ram16x8|s_memory~88_q\)) # (!\SW[12]~input_o\ & ((\ram16x8|s_memory~24_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram16x8|s_memory~88_q\,
	datac => \ram16x8|s_memory~24_q\,
	datad => \SW[12]~input_o\,
	combout => \ram16x8|s_memory~171_combout\);

-- Location: FF_X110_Y11_N19
\ram16x8|s_memory~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~120_q\);

-- Location: FF_X110_Y11_N21
\ram16x8|s_memory~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~56_q\);

-- Location: LCCOMB_X110_Y11_N18
\ram16x8|s_memory~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~172_combout\ = (\ram16x8|s_memory~171_combout\ & (((\ram16x8|s_memory~120_q\)) # (!\SW[11]~input_o\))) # (!\ram16x8|s_memory~171_combout\ & (\SW[11]~input_o\ & ((\ram16x8|s_memory~56_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~171_combout\,
	datab => \SW[11]~input_o\,
	datac => \ram16x8|s_memory~120_q\,
	datad => \ram16x8|s_memory~56_q\,
	combout => \ram16x8|s_memory~172_combout\);

-- Location: FF_X112_Y12_N17
\ram16x8|s_memory~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~96_q\);

-- Location: FF_X111_Y12_N11
\ram16x8|s_memory~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~128_q\);

-- Location: LCCOMB_X109_Y12_N20
\ram16x8|s_memory~64feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~64feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \ram16x8|s_memory~64feeder_combout\);

-- Location: FF_X109_Y12_N21
\ram16x8|s_memory~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~64feeder_combout\,
	ena => \ram16x8|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~64_q\);

-- Location: FF_X112_Y12_N7
\ram16x8|s_memory~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~32_q\);

-- Location: LCCOMB_X112_Y12_N6
\ram16x8|s_memory~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~173_combout\ = (\SW[11]~input_o\ & ((\ram16x8|s_memory~64_q\) # ((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & (((\ram16x8|s_memory~32_q\ & !\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~64_q\,
	datab => \SW[11]~input_o\,
	datac => \ram16x8|s_memory~32_q\,
	datad => \SW[12]~input_o\,
	combout => \ram16x8|s_memory~173_combout\);

-- Location: LCCOMB_X111_Y12_N10
\ram16x8|s_memory~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~174_combout\ = (\SW[12]~input_o\ & ((\ram16x8|s_memory~173_combout\ & ((\ram16x8|s_memory~128_q\))) # (!\ram16x8|s_memory~173_combout\ & (\ram16x8|s_memory~96_q\)))) # (!\SW[12]~input_o\ & (((\ram16x8|s_memory~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ram16x8|s_memory~96_q\,
	datac => \ram16x8|s_memory~128_q\,
	datad => \ram16x8|s_memory~173_combout\,
	combout => \ram16x8|s_memory~174_combout\);

-- Location: LCCOMB_X114_Y12_N2
\ram16x8|s_memory~80feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~80feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \ram16x8|s_memory~80feeder_combout\);

-- Location: FF_X114_Y12_N3
\ram16x8|s_memory~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~80feeder_combout\,
	ena => \ram16x8|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~80_q\);

-- Location: LCCOMB_X109_Y12_N22
\ram16x8|s_memory~48feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~48feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \ram16x8|s_memory~48feeder_combout\);

-- Location: FF_X109_Y12_N23
\ram16x8|s_memory~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~48feeder_combout\,
	ena => \ram16x8|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~48_q\);

-- Location: FF_X111_Y11_N23
\ram16x8|s_memory~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~16_q\);

-- Location: LCCOMB_X111_Y11_N22
\ram16x8|s_memory~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~175_combout\ = (\SW[11]~input_o\ & ((\ram16x8|s_memory~48_q\) # ((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & (((\ram16x8|s_memory~16_q\ & !\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram16x8|s_memory~48_q\,
	datac => \ram16x8|s_memory~16_q\,
	datad => \SW[12]~input_o\,
	combout => \ram16x8|s_memory~175_combout\);

-- Location: FF_X111_Y12_N9
\ram16x8|s_memory~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~112_q\);

-- Location: LCCOMB_X111_Y12_N8
\ram16x8|s_memory~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~176_combout\ = (\ram16x8|s_memory~175_combout\ & (((\ram16x8|s_memory~112_q\) # (!\SW[12]~input_o\)))) # (!\ram16x8|s_memory~175_combout\ & (\ram16x8|s_memory~80_q\ & ((\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~80_q\,
	datab => \ram16x8|s_memory~175_combout\,
	datac => \ram16x8|s_memory~112_q\,
	datad => \SW[12]~input_o\,
	combout => \ram16x8|s_memory~176_combout\);

-- Location: LCCOMB_X111_Y12_N26
\ram16x8|s_memory~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~177_combout\ = (\SW[9]~input_o\ & (((\SW[10]~input_o\)))) # (!\SW[9]~input_o\ & ((\SW[10]~input_o\ & (\ram16x8|s_memory~174_combout\)) # (!\SW[10]~input_o\ & ((\ram16x8|s_memory~176_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~174_combout\,
	datab => \SW[9]~input_o\,
	datac => \ram16x8|s_memory~176_combout\,
	datad => \SW[10]~input_o\,
	combout => \ram16x8|s_memory~177_combout\);

-- Location: LCCOMB_X110_Y12_N4
\ram16x8|s_memory~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~180_combout\ = (\SW[9]~input_o\ & ((\ram16x8|s_memory~177_combout\ & (\ram16x8|s_memory~179_combout\)) # (!\ram16x8|s_memory~177_combout\ & ((\ram16x8|s_memory~172_combout\))))) # (!\SW[9]~input_o\ & (((\ram16x8|s_memory~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~179_combout\,
	datab => \ram16x8|s_memory~172_combout\,
	datac => \SW[9]~input_o\,
	datad => \ram16x8|s_memory~177_combout\,
	combout => \ram16x8|s_memory~180_combout\);

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

-- Location: LCCOMB_X112_Y12_N30
\ram16x8|s_memory~33feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~33feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \ram16x8|s_memory~33feeder_combout\);

-- Location: FF_X112_Y12_N31
\ram16x8|s_memory~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~33feeder_combout\,
	ena => \ram16x8|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~33_q\);

-- Location: FF_X111_Y11_N3
\ram16x8|s_memory~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~17_q\);

-- Location: FF_X111_Y11_N17
\ram16x8|s_memory~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~25_q\);

-- Location: LCCOMB_X111_Y11_N2
\ram16x8|s_memory~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~185_combout\ = (\SW[9]~input_o\ & ((\SW[10]~input_o\) # ((\ram16x8|s_memory~25_q\)))) # (!\SW[9]~input_o\ & (!\SW[10]~input_o\ & (\ram16x8|s_memory~17_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \ram16x8|s_memory~17_q\,
	datad => \ram16x8|s_memory~25_q\,
	combout => \ram16x8|s_memory~185_combout\);

-- Location: FF_X112_Y11_N27
\ram16x8|s_memory~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~41_q\);

-- Location: LCCOMB_X112_Y11_N26
\ram16x8|s_memory~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~186_combout\ = (\ram16x8|s_memory~185_combout\ & (((\ram16x8|s_memory~41_q\) # (!\SW[10]~input_o\)))) # (!\ram16x8|s_memory~185_combout\ & (\ram16x8|s_memory~33_q\ & ((\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~33_q\,
	datab => \ram16x8|s_memory~185_combout\,
	datac => \ram16x8|s_memory~41_q\,
	datad => \SW[10]~input_o\,
	combout => \ram16x8|s_memory~186_combout\);

-- Location: FF_X109_Y12_N9
\ram16x8|s_memory~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~65_q\);

-- Location: FF_X109_Y12_N31
\ram16x8|s_memory~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~49_q\);

-- Location: LCCOMB_X109_Y12_N30
\ram16x8|s_memory~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~183_combout\ = (\SW[10]~input_o\ & ((\ram16x8|s_memory~65_q\) # ((\SW[9]~input_o\)))) # (!\SW[10]~input_o\ & (((\ram16x8|s_memory~49_q\ & !\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~65_q\,
	datab => \SW[10]~input_o\,
	datac => \ram16x8|s_memory~49_q\,
	datad => \SW[9]~input_o\,
	combout => \ram16x8|s_memory~183_combout\);

-- Location: FF_X109_Y11_N29
\ram16x8|s_memory~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~73_q\);

-- Location: LCCOMB_X110_Y11_N16
\ram16x8|s_memory~57feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~57feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \ram16x8|s_memory~57feeder_combout\);

-- Location: FF_X110_Y11_N17
\ram16x8|s_memory~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~57feeder_combout\,
	ena => \ram16x8|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~57_q\);

-- Location: LCCOMB_X109_Y11_N28
\ram16x8|s_memory~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~184_combout\ = (\ram16x8|s_memory~183_combout\ & (((\ram16x8|s_memory~73_q\)) # (!\SW[9]~input_o\))) # (!\ram16x8|s_memory~183_combout\ & (\SW[9]~input_o\ & ((\ram16x8|s_memory~57_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~183_combout\,
	datab => \SW[9]~input_o\,
	datac => \ram16x8|s_memory~73_q\,
	datad => \ram16x8|s_memory~57_q\,
	combout => \ram16x8|s_memory~184_combout\);

-- Location: LCCOMB_X109_Y11_N26
\ram16x8|s_memory~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~187_combout\ = (\SW[11]~input_o\ & (((\SW[12]~input_o\) # (\ram16x8|s_memory~184_combout\)))) # (!\SW[11]~input_o\ & (\ram16x8|s_memory~186_combout\ & (!\SW[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~186_combout\,
	datab => \SW[11]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \ram16x8|s_memory~184_combout\,
	combout => \ram16x8|s_memory~187_combout\);

-- Location: LCCOMB_X112_Y12_N4
\ram16x8|s_memory~97feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~97feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \ram16x8|s_memory~97feeder_combout\);

-- Location: FF_X112_Y12_N5
\ram16x8|s_memory~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~97feeder_combout\,
	ena => \ram16x8|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~97_q\);

-- Location: FF_X113_Y11_N19
\ram16x8|s_memory~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~89_q\);

-- Location: FF_X113_Y11_N17
\ram16x8|s_memory~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~81_q\);

-- Location: LCCOMB_X113_Y11_N16
\ram16x8|s_memory~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~181_combout\ = (\SW[10]~input_o\ & (((\SW[9]~input_o\)))) # (!\SW[10]~input_o\ & ((\SW[9]~input_o\ & (\ram16x8|s_memory~89_q\)) # (!\SW[9]~input_o\ & ((\ram16x8|s_memory~81_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \ram16x8|s_memory~89_q\,
	datac => \ram16x8|s_memory~81_q\,
	datad => \SW[9]~input_o\,
	combout => \ram16x8|s_memory~181_combout\);

-- Location: FF_X112_Y11_N13
\ram16x8|s_memory~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~105_q\);

-- Location: LCCOMB_X112_Y11_N12
\ram16x8|s_memory~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~182_combout\ = (\ram16x8|s_memory~181_combout\ & (((\ram16x8|s_memory~105_q\) # (!\SW[10]~input_o\)))) # (!\ram16x8|s_memory~181_combout\ & (\ram16x8|s_memory~97_q\ & ((\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~97_q\,
	datab => \ram16x8|s_memory~181_combout\,
	datac => \ram16x8|s_memory~105_q\,
	datad => \SW[10]~input_o\,
	combout => \ram16x8|s_memory~182_combout\);

-- Location: LCCOMB_X110_Y11_N14
\ram16x8|s_memory~121feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~121feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \ram16x8|s_memory~121feeder_combout\);

-- Location: FF_X110_Y11_N15
\ram16x8|s_memory~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~121feeder_combout\,
	ena => \ram16x8|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~121_q\);

-- Location: FF_X110_Y12_N15
\ram16x8|s_memory~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~137_q\);

-- Location: FF_X111_Y12_N13
\ram16x8|s_memory~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~129_q\);

-- Location: FF_X111_Y12_N3
\ram16x8|s_memory~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~113_q\);

-- Location: LCCOMB_X111_Y12_N2
\ram16x8|s_memory~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~188_combout\ = (\SW[9]~input_o\ & (((\SW[10]~input_o\)))) # (!\SW[9]~input_o\ & ((\SW[10]~input_o\ & (\ram16x8|s_memory~129_q\)) # (!\SW[10]~input_o\ & ((\ram16x8|s_memory~113_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~129_q\,
	datab => \SW[9]~input_o\,
	datac => \ram16x8|s_memory~113_q\,
	datad => \SW[10]~input_o\,
	combout => \ram16x8|s_memory~188_combout\);

-- Location: LCCOMB_X110_Y12_N14
\ram16x8|s_memory~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~189_combout\ = (\SW[9]~input_o\ & ((\ram16x8|s_memory~188_combout\ & ((\ram16x8|s_memory~137_q\))) # (!\ram16x8|s_memory~188_combout\ & (\ram16x8|s_memory~121_q\)))) # (!\SW[9]~input_o\ & (((\ram16x8|s_memory~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \ram16x8|s_memory~121_q\,
	datac => \ram16x8|s_memory~137_q\,
	datad => \ram16x8|s_memory~188_combout\,
	combout => \ram16x8|s_memory~189_combout\);

-- Location: LCCOMB_X109_Y11_N4
\ram16x8|s_memory~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~190_combout\ = (\ram16x8|s_memory~187_combout\ & (((\ram16x8|s_memory~189_combout\) # (!\SW[12]~input_o\)))) # (!\ram16x8|s_memory~187_combout\ & (\ram16x8|s_memory~182_combout\ & (\SW[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~187_combout\,
	datab => \ram16x8|s_memory~182_combout\,
	datac => \SW[12]~input_o\,
	datad => \ram16x8|s_memory~189_combout\,
	combout => \ram16x8|s_memory~190_combout\);

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

-- Location: FF_X114_Y12_N25
\ram16x8|s_memory~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~106_q\);

-- Location: FF_X109_Y11_N25
\ram16x8|s_memory~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~42_q\);

-- Location: LCCOMB_X109_Y11_N18
\ram16x8|s_memory~74feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~74feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \ram16x8|s_memory~74feeder_combout\);

-- Location: FF_X109_Y11_N19
\ram16x8|s_memory~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~74feeder_combout\,
	ena => \ram16x8|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~74_q\);

-- Location: LCCOMB_X109_Y11_N24
\ram16x8|s_memory~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~198_combout\ = (\SW[12]~input_o\ & (\SW[11]~input_o\)) # (!\SW[12]~input_o\ & ((\SW[11]~input_o\ & ((\ram16x8|s_memory~74_q\))) # (!\SW[11]~input_o\ & (\ram16x8|s_memory~42_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \ram16x8|s_memory~42_q\,
	datad => \ram16x8|s_memory~74_q\,
	combout => \ram16x8|s_memory~198_combout\);

-- Location: FF_X110_Y12_N23
\ram16x8|s_memory~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~138_q\);

-- Location: LCCOMB_X110_Y12_N22
\ram16x8|s_memory~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~199_combout\ = (\ram16x8|s_memory~198_combout\ & (((\ram16x8|s_memory~138_q\) # (!\SW[12]~input_o\)))) # (!\ram16x8|s_memory~198_combout\ & (\ram16x8|s_memory~106_q\ & ((\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~106_q\,
	datab => \ram16x8|s_memory~198_combout\,
	datac => \ram16x8|s_memory~138_q\,
	datad => \SW[12]~input_o\,
	combout => \ram16x8|s_memory~199_combout\);

-- Location: LCCOMB_X109_Y12_N4
\ram16x8|s_memory~66feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~66feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \ram16x8|s_memory~66feeder_combout\);

-- Location: FF_X109_Y12_N5
\ram16x8|s_memory~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~66feeder_combout\,
	ena => \ram16x8|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~66_q\);

-- Location: FF_X111_Y12_N29
\ram16x8|s_memory~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~130_q\);

-- Location: LCCOMB_X112_Y12_N12
\ram16x8|s_memory~98feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~98feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \ram16x8|s_memory~98feeder_combout\);

-- Location: FF_X112_Y12_N13
\ram16x8|s_memory~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~98feeder_combout\,
	ena => \ram16x8|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~98_q\);

-- Location: FF_X112_Y12_N19
\ram16x8|s_memory~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~34_q\);

-- Location: LCCOMB_X112_Y12_N18
\ram16x8|s_memory~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~191_combout\ = (\SW[11]~input_o\ & (((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & ((\SW[12]~input_o\ & (\ram16x8|s_memory~98_q\)) # (!\SW[12]~input_o\ & ((\ram16x8|s_memory~34_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~98_q\,
	datab => \SW[11]~input_o\,
	datac => \ram16x8|s_memory~34_q\,
	datad => \SW[12]~input_o\,
	combout => \ram16x8|s_memory~191_combout\);

-- Location: LCCOMB_X111_Y12_N28
\ram16x8|s_memory~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~192_combout\ = (\SW[11]~input_o\ & ((\ram16x8|s_memory~191_combout\ & ((\ram16x8|s_memory~130_q\))) # (!\ram16x8|s_memory~191_combout\ & (\ram16x8|s_memory~66_q\)))) # (!\SW[11]~input_o\ & (((\ram16x8|s_memory~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram16x8|s_memory~66_q\,
	datac => \ram16x8|s_memory~130_q\,
	datad => \ram16x8|s_memory~191_combout\,
	combout => \ram16x8|s_memory~192_combout\);

-- Location: LCCOMB_X109_Y12_N10
\ram16x8|s_memory~50feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~50feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \ram16x8|s_memory~50feeder_combout\);

-- Location: FF_X109_Y12_N11
\ram16x8|s_memory~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~50feeder_combout\,
	ena => \ram16x8|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~50_q\);

-- Location: LCCOMB_X113_Y11_N12
\ram16x8|s_memory~82feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~82feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \ram16x8|s_memory~82feeder_combout\);

-- Location: FF_X113_Y11_N13
\ram16x8|s_memory~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~82feeder_combout\,
	ena => \ram16x8|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~82_q\);

-- Location: FF_X111_Y11_N27
\ram16x8|s_memory~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~18_q\);

-- Location: LCCOMB_X111_Y11_N26
\ram16x8|s_memory~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~195_combout\ = (\SW[11]~input_o\ & (((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & ((\SW[12]~input_o\ & (\ram16x8|s_memory~82_q\)) # (!\SW[12]~input_o\ & ((\ram16x8|s_memory~18_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram16x8|s_memory~82_q\,
	datac => \ram16x8|s_memory~18_q\,
	datad => \SW[12]~input_o\,
	combout => \ram16x8|s_memory~195_combout\);

-- Location: FF_X111_Y12_N31
\ram16x8|s_memory~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~114_q\);

-- Location: LCCOMB_X111_Y12_N30
\ram16x8|s_memory~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~196_combout\ = (\ram16x8|s_memory~195_combout\ & (((\ram16x8|s_memory~114_q\) # (!\SW[11]~input_o\)))) # (!\ram16x8|s_memory~195_combout\ & (\ram16x8|s_memory~50_q\ & ((\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~50_q\,
	datab => \ram16x8|s_memory~195_combout\,
	datac => \ram16x8|s_memory~114_q\,
	datad => \SW[11]~input_o\,
	combout => \ram16x8|s_memory~196_combout\);

-- Location: LCCOMB_X113_Y11_N30
\ram16x8|s_memory~90feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~90feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \ram16x8|s_memory~90feeder_combout\);

-- Location: FF_X113_Y11_N31
\ram16x8|s_memory~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~90feeder_combout\,
	ena => \ram16x8|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~90_q\);

-- Location: FF_X111_Y11_N13
\ram16x8|s_memory~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~26_q\);

-- Location: FF_X110_Y11_N29
\ram16x8|s_memory~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~58_q\);

-- Location: LCCOMB_X111_Y11_N12
\ram16x8|s_memory~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~193_combout\ = (\SW[11]~input_o\ & ((\SW[12]~input_o\) # ((\ram16x8|s_memory~58_q\)))) # (!\SW[11]~input_o\ & (!\SW[12]~input_o\ & (\ram16x8|s_memory~26_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \ram16x8|s_memory~26_q\,
	datad => \ram16x8|s_memory~58_q\,
	combout => \ram16x8|s_memory~193_combout\);

-- Location: FF_X110_Y11_N11
\ram16x8|s_memory~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~122_q\);

-- Location: LCCOMB_X110_Y11_N10
\ram16x8|s_memory~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~194_combout\ = (\ram16x8|s_memory~193_combout\ & (((\ram16x8|s_memory~122_q\) # (!\SW[12]~input_o\)))) # (!\ram16x8|s_memory~193_combout\ & (\ram16x8|s_memory~90_q\ & ((\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~90_q\,
	datab => \ram16x8|s_memory~193_combout\,
	datac => \ram16x8|s_memory~122_q\,
	datad => \SW[12]~input_o\,
	combout => \ram16x8|s_memory~194_combout\);

-- Location: LCCOMB_X110_Y12_N8
\ram16x8|s_memory~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~197_combout\ = (\SW[9]~input_o\ & (((\ram16x8|s_memory~194_combout\) # (\SW[10]~input_o\)))) # (!\SW[9]~input_o\ & (\ram16x8|s_memory~196_combout\ & ((!\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~196_combout\,
	datab => \ram16x8|s_memory~194_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \ram16x8|s_memory~197_combout\);

-- Location: LCCOMB_X110_Y12_N0
\ram16x8|s_memory~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~200_combout\ = (\ram16x8|s_memory~197_combout\ & ((\ram16x8|s_memory~199_combout\) # ((!\SW[10]~input_o\)))) # (!\ram16x8|s_memory~197_combout\ & (((\ram16x8|s_memory~192_combout\ & \SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~199_combout\,
	datab => \ram16x8|s_memory~192_combout\,
	datac => \ram16x8|s_memory~197_combout\,
	datad => \SW[10]~input_o\,
	combout => \ram16x8|s_memory~200_combout\);

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

-- Location: LCCOMB_X108_Y12_N14
\ram16x8|s_memory~59feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~59feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \ram16x8|s_memory~59feeder_combout\);

-- Location: FF_X108_Y12_N15
\ram16x8|s_memory~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~59feeder_combout\,
	ena => \ram16x8|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~59_q\);

-- Location: FF_X109_Y12_N15
\ram16x8|s_memory~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~51_q\);

-- Location: LCCOMB_X109_Y12_N14
\ram16x8|s_memory~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~201_combout\ = (\SW[10]~input_o\ & (((\SW[9]~input_o\)))) # (!\SW[10]~input_o\ & ((\SW[9]~input_o\ & (\ram16x8|s_memory~59_q\)) # (!\SW[9]~input_o\ & ((\ram16x8|s_memory~51_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~59_q\,
	datab => \SW[10]~input_o\,
	datac => \ram16x8|s_memory~51_q\,
	datad => \SW[9]~input_o\,
	combout => \ram16x8|s_memory~201_combout\);

-- Location: FF_X109_Y12_N25
\ram16x8|s_memory~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~67_q\);

-- Location: FF_X110_Y12_N31
\ram16x8|s_memory~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~75_q\);

-- Location: LCCOMB_X110_Y12_N30
\ram16x8|s_memory~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~202_combout\ = (\ram16x8|s_memory~201_combout\ & (((\ram16x8|s_memory~75_q\) # (!\SW[10]~input_o\)))) # (!\ram16x8|s_memory~201_combout\ & (\ram16x8|s_memory~67_q\ & ((\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~201_combout\,
	datab => \ram16x8|s_memory~67_q\,
	datac => \ram16x8|s_memory~75_q\,
	datad => \SW[10]~input_o\,
	combout => \ram16x8|s_memory~202_combout\);

-- Location: LCCOMB_X108_Y11_N30
\ram16x8|s_memory~35feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~35feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \ram16x8|s_memory~35feeder_combout\);

-- Location: FF_X108_Y11_N31
\ram16x8|s_memory~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~35feeder_combout\,
	ena => \ram16x8|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~35_q\);

-- Location: FF_X111_Y11_N15
\ram16x8|s_memory~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~19_q\);

-- Location: LCCOMB_X111_Y11_N14
\ram16x8|s_memory~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~205_combout\ = (\SW[9]~input_o\ & (((\SW[10]~input_o\)))) # (!\SW[9]~input_o\ & ((\SW[10]~input_o\ & (\ram16x8|s_memory~35_q\)) # (!\SW[10]~input_o\ & ((\ram16x8|s_memory~19_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \ram16x8|s_memory~35_q\,
	datac => \ram16x8|s_memory~19_q\,
	datad => \SW[10]~input_o\,
	combout => \ram16x8|s_memory~205_combout\);

-- Location: FF_X111_Y11_N21
\ram16x8|s_memory~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~27_q\);

-- Location: FF_X112_Y11_N31
\ram16x8|s_memory~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~43_q\);

-- Location: LCCOMB_X112_Y11_N30
\ram16x8|s_memory~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~206_combout\ = (\ram16x8|s_memory~205_combout\ & (((\ram16x8|s_memory~43_q\) # (!\SW[9]~input_o\)))) # (!\ram16x8|s_memory~205_combout\ & (\ram16x8|s_memory~27_q\ & ((\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~205_combout\,
	datab => \ram16x8|s_memory~27_q\,
	datac => \ram16x8|s_memory~43_q\,
	datad => \SW[9]~input_o\,
	combout => \ram16x8|s_memory~206_combout\);

-- Location: FF_X113_Y11_N11
\ram16x8|s_memory~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~91_q\);

-- Location: FF_X112_Y11_N9
\ram16x8|s_memory~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~107_q\);

-- Location: LCCOMB_X112_Y12_N8
\ram16x8|s_memory~99feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~99feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \ram16x8|s_memory~99feeder_combout\);

-- Location: FF_X112_Y12_N9
\ram16x8|s_memory~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~99feeder_combout\,
	ena => \ram16x8|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~99_q\);

-- Location: FF_X113_Y11_N29
\ram16x8|s_memory~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~83_q\);

-- Location: LCCOMB_X113_Y11_N28
\ram16x8|s_memory~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~203_combout\ = (\SW[10]~input_o\ & ((\ram16x8|s_memory~99_q\) # ((\SW[9]~input_o\)))) # (!\SW[10]~input_o\ & (((\ram16x8|s_memory~83_q\ & !\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \ram16x8|s_memory~99_q\,
	datac => \ram16x8|s_memory~83_q\,
	datad => \SW[9]~input_o\,
	combout => \ram16x8|s_memory~203_combout\);

-- Location: LCCOMB_X112_Y11_N8
\ram16x8|s_memory~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~204_combout\ = (\SW[9]~input_o\ & ((\ram16x8|s_memory~203_combout\ & ((\ram16x8|s_memory~107_q\))) # (!\ram16x8|s_memory~203_combout\ & (\ram16x8|s_memory~91_q\)))) # (!\SW[9]~input_o\ & (((\ram16x8|s_memory~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \ram16x8|s_memory~91_q\,
	datac => \ram16x8|s_memory~107_q\,
	datad => \ram16x8|s_memory~203_combout\,
	combout => \ram16x8|s_memory~204_combout\);

-- Location: LCCOMB_X112_Y11_N24
\ram16x8|s_memory~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~207_combout\ = (\SW[12]~input_o\ & (((\ram16x8|s_memory~204_combout\) # (\SW[11]~input_o\)))) # (!\SW[12]~input_o\ & (\ram16x8|s_memory~206_combout\ & ((!\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~206_combout\,
	datab => \ram16x8|s_memory~204_combout\,
	datac => \SW[12]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \ram16x8|s_memory~207_combout\);

-- Location: LCCOMB_X110_Y11_N24
\ram16x8|s_memory~123feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~123feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \ram16x8|s_memory~123feeder_combout\);

-- Location: FF_X110_Y11_N25
\ram16x8|s_memory~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~123feeder_combout\,
	ena => \ram16x8|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~123_q\);

-- Location: FF_X111_Y12_N21
\ram16x8|s_memory~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~115_q\);

-- Location: LCCOMB_X111_Y12_N20
\ram16x8|s_memory~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~208_combout\ = (\SW[9]~input_o\ & ((\ram16x8|s_memory~123_q\) # ((\SW[10]~input_o\)))) # (!\SW[9]~input_o\ & (((\ram16x8|s_memory~115_q\ & !\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~123_q\,
	datab => \SW[9]~input_o\,
	datac => \ram16x8|s_memory~115_q\,
	datad => \SW[10]~input_o\,
	combout => \ram16x8|s_memory~208_combout\);

-- Location: FF_X113_Y12_N3
\ram16x8|s_memory~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~139_q\);

-- Location: FF_X113_Y12_N21
\ram16x8|s_memory~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~131_q\);

-- Location: LCCOMB_X113_Y12_N2
\ram16x8|s_memory~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~209_combout\ = (\ram16x8|s_memory~208_combout\ & (((\ram16x8|s_memory~139_q\)) # (!\SW[10]~input_o\))) # (!\ram16x8|s_memory~208_combout\ & (\SW[10]~input_o\ & ((\ram16x8|s_memory~131_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~208_combout\,
	datab => \SW[10]~input_o\,
	datac => \ram16x8|s_memory~139_q\,
	datad => \ram16x8|s_memory~131_q\,
	combout => \ram16x8|s_memory~209_combout\);

-- Location: LCCOMB_X110_Y11_N30
\ram16x8|s_memory~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~210_combout\ = (\ram16x8|s_memory~207_combout\ & (((\ram16x8|s_memory~209_combout\) # (!\SW[11]~input_o\)))) # (!\ram16x8|s_memory~207_combout\ & (\ram16x8|s_memory~202_combout\ & (\SW[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~202_combout\,
	datab => \ram16x8|s_memory~207_combout\,
	datac => \SW[11]~input_o\,
	datad => \ram16x8|s_memory~209_combout\,
	combout => \ram16x8|s_memory~210_combout\);

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

-- Location: FF_X110_Y11_N13
\ram16x8|s_memory~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~60_q\);

-- Location: FF_X110_Y11_N3
\ram16x8|s_memory~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~124_q\);

-- Location: LCCOMB_X113_Y11_N22
\ram16x8|s_memory~92feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~92feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \ram16x8|s_memory~92feeder_combout\);

-- Location: FF_X113_Y11_N23
\ram16x8|s_memory~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~92feeder_combout\,
	ena => \ram16x8|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~92_q\);

-- Location: FF_X111_Y11_N29
\ram16x8|s_memory~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~28_q\);

-- Location: LCCOMB_X111_Y11_N28
\ram16x8|s_memory~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~211_combout\ = (\SW[11]~input_o\ & (((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & ((\SW[12]~input_o\ & (\ram16x8|s_memory~92_q\)) # (!\SW[12]~input_o\ & ((\ram16x8|s_memory~28_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram16x8|s_memory~92_q\,
	datac => \ram16x8|s_memory~28_q\,
	datad => \SW[12]~input_o\,
	combout => \ram16x8|s_memory~211_combout\);

-- Location: LCCOMB_X110_Y11_N2
\ram16x8|s_memory~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~212_combout\ = (\SW[11]~input_o\ & ((\ram16x8|s_memory~211_combout\ & ((\ram16x8|s_memory~124_q\))) # (!\ram16x8|s_memory~211_combout\ & (\ram16x8|s_memory~60_q\)))) # (!\SW[11]~input_o\ & (((\ram16x8|s_memory~211_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~60_q\,
	datab => \SW[11]~input_o\,
	datac => \ram16x8|s_memory~124_q\,
	datad => \ram16x8|s_memory~211_combout\,
	combout => \ram16x8|s_memory~212_combout\);

-- Location: FF_X109_Y12_N27
\ram16x8|s_memory~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~52_q\);

-- Location: FF_X111_Y11_N7
\ram16x8|s_memory~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~20_q\);

-- Location: LCCOMB_X111_Y11_N6
\ram16x8|s_memory~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~215_combout\ = (\SW[11]~input_o\ & ((\ram16x8|s_memory~52_q\) # ((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & (((\ram16x8|s_memory~20_q\ & !\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram16x8|s_memory~52_q\,
	datac => \ram16x8|s_memory~20_q\,
	datad => \SW[12]~input_o\,
	combout => \ram16x8|s_memory~215_combout\);

-- Location: LCCOMB_X114_Y12_N22
\ram16x8|s_memory~84feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~84feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \ram16x8|s_memory~84feeder_combout\);

-- Location: FF_X114_Y12_N23
\ram16x8|s_memory~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~84feeder_combout\,
	ena => \ram16x8|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~84_q\);

-- Location: FF_X111_Y12_N5
\ram16x8|s_memory~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~116_q\);

-- Location: LCCOMB_X111_Y12_N4
\ram16x8|s_memory~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~216_combout\ = (\ram16x8|s_memory~215_combout\ & (((\ram16x8|s_memory~116_q\) # (!\SW[12]~input_o\)))) # (!\ram16x8|s_memory~215_combout\ & (\ram16x8|s_memory~84_q\ & ((\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~215_combout\,
	datab => \ram16x8|s_memory~84_q\,
	datac => \ram16x8|s_memory~116_q\,
	datad => \SW[12]~input_o\,
	combout => \ram16x8|s_memory~216_combout\);

-- Location: FF_X109_Y12_N29
\ram16x8|s_memory~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~68_q\);

-- Location: FF_X112_Y12_N29
\ram16x8|s_memory~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~36_q\);

-- Location: LCCOMB_X112_Y12_N28
\ram16x8|s_memory~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~213_combout\ = (\SW[11]~input_o\ & ((\ram16x8|s_memory~68_q\) # ((\SW[12]~input_o\)))) # (!\SW[11]~input_o\ & (((\ram16x8|s_memory~36_q\ & !\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram16x8|s_memory~68_q\,
	datab => \SW[11]~input_o\,
	datac => \ram16x8|s_memory~36_q\,
	datad => \SW[12]~input_o\,
	combout => \ram16x8|s_memory~213_combout\);

-- Location: FF_X111_Y12_N19
\ram16x8|s_memory~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~132_q\);

-- Location: LCCOMB_X112_Y12_N22
\ram16x8|s_memory~100feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~100feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \ram16x8|s_memory~100feeder_combout\);

-- Location: FF_X112_Y12_N23
\ram16x8|s_memory~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	d => \ram16x8|s_memory~100feeder_combout\,
	ena => \ram16x8|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~100_q\);

-- Location: LCCOMB_X111_Y12_N18
\ram16x8|s_memory~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~214_combout\ = (\SW[12]~input_o\ & ((\ram16x8|s_memory~213_combout\ & (\ram16x8|s_memory~132_q\)) # (!\ram16x8|s_memory~213_combout\ & ((\ram16x8|s_memory~100_q\))))) # (!\SW[12]~input_o\ & (\ram16x8|s_memory~213_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ram16x8|s_memory~213_combout\,
	datac => \ram16x8|s_memory~132_q\,
	datad => \ram16x8|s_memory~100_q\,
	combout => \ram16x8|s_memory~214_combout\);

-- Location: LCCOMB_X111_Y12_N14
\ram16x8|s_memory~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~217_combout\ = (\SW[10]~input_o\ & (((\SW[9]~input_o\) # (\ram16x8|s_memory~214_combout\)))) # (!\SW[10]~input_o\ & (\ram16x8|s_memory~216_combout\ & (!\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \ram16x8|s_memory~216_combout\,
	datac => \SW[9]~input_o\,
	datad => \ram16x8|s_memory~214_combout\,
	combout => \ram16x8|s_memory~217_combout\);

-- Location: FF_X110_Y12_N21
\ram16x8|s_memory~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~76_q\);

-- Location: FF_X110_Y12_N7
\ram16x8|s_memory~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~140_q\);

-- Location: FF_X112_Y11_N3
\ram16x8|s_memory~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~108_q\);

-- Location: FF_X112_Y11_N21
\ram16x8|s_memory~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ram16x8|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram16x8|s_memory~44_q\);

-- Location: LCCOMB_X112_Y11_N20
\ram16x8|s_memory~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~218_combout\ = (\SW[12]~input_o\ & ((\ram16x8|s_memory~108_q\) # ((\SW[11]~input_o\)))) # (!\SW[12]~input_o\ & (((\ram16x8|s_memory~44_q\ & !\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ram16x8|s_memory~108_q\,
	datac => \ram16x8|s_memory~44_q\,
	datad => \SW[11]~input_o\,
	combout => \ram16x8|s_memory~218_combout\);

-- Location: LCCOMB_X110_Y12_N6
\ram16x8|s_memory~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~219_combout\ = (\SW[11]~input_o\ & ((\ram16x8|s_memory~218_combout\ & ((\ram16x8|s_memory~140_q\))) # (!\ram16x8|s_memory~218_combout\ & (\ram16x8|s_memory~76_q\)))) # (!\SW[11]~input_o\ & (((\ram16x8|s_memory~218_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ram16x8|s_memory~76_q\,
	datac => \ram16x8|s_memory~140_q\,
	datad => \ram16x8|s_memory~218_combout\,
	combout => \ram16x8|s_memory~219_combout\);

-- Location: LCCOMB_X110_Y12_N28
\ram16x8|s_memory~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram16x8|s_memory~220_combout\ = (\SW[9]~input_o\ & ((\ram16x8|s_memory~217_combout\ & ((\ram16x8|s_memory~219_combout\))) # (!\ram16x8|s_memory~217_combout\ & (\ram16x8|s_memory~212_combout\)))) # (!\SW[9]~input_o\ & (((\ram16x8|s_memory~217_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \ram16x8|s_memory~212_combout\,
	datac => \ram16x8|s_memory~217_combout\,
	datad => \ram16x8|s_memory~219_combout\,
	combout => \ram16x8|s_memory~220_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


