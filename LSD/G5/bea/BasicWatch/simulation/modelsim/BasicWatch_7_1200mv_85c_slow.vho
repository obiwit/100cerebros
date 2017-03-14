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

-- DATE "03/13/2017 18:54:11"

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

ENTITY 	BasicWatch IS
    PORT (
	SW : IN std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(2 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 8)
	);
END BasicWatch;

-- Design Ports Information
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BasicWatch IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 8);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_div_4hz|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_div_4hz|Add0~0_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~1\ : std_logic;
SIGNAL \clk_div_4hz|Add0~2_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~3\ : std_logic;
SIGNAL \clk_div_4hz|Add0~4_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~5\ : std_logic;
SIGNAL \clk_div_4hz|Add0~6_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~7\ : std_logic;
SIGNAL \clk_div_4hz|Add0~8_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~9\ : std_logic;
SIGNAL \clk_div_4hz|Add0~10_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~7_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~11\ : std_logic;
SIGNAL \clk_div_4hz|Add0~12_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~13\ : std_logic;
SIGNAL \clk_div_4hz|Add0~14_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~15\ : std_logic;
SIGNAL \clk_div_4hz|Add0~16_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~17\ : std_logic;
SIGNAL \clk_div_4hz|Add0~18_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~19\ : std_logic;
SIGNAL \clk_div_4hz|Add0~20_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~6_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~21\ : std_logic;
SIGNAL \clk_div_4hz|Add0~22_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~5_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~23\ : std_logic;
SIGNAL \clk_div_4hz|Add0~24_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~4_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~25\ : std_logic;
SIGNAL \clk_div_4hz|Add0~26_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~11_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~27\ : std_logic;
SIGNAL \clk_div_4hz|Add0~28_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~29\ : std_logic;
SIGNAL \clk_div_4hz|Add0~30_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~10_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~31\ : std_logic;
SIGNAL \clk_div_4hz|Add0~32_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~45\ : std_logic;
SIGNAL \clk_div_4hz|Add0~46_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~8_combout\ : std_logic;
SIGNAL \clk_div_4hz|Equal0~7_combout\ : std_logic;
SIGNAL \clk_div_4hz|Equal0~8_combout\ : std_logic;
SIGNAL \clk_div_4hz|Equal0~5_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~33\ : std_logic;
SIGNAL \clk_div_4hz|Add0~34_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~3_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~35\ : std_logic;
SIGNAL \clk_div_4hz|Add0~36_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~2_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~37\ : std_logic;
SIGNAL \clk_div_4hz|Add0~38_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~1_combout\ : std_logic;
SIGNAL \clk_div_4hz|Equal0~2_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~47\ : std_logic;
SIGNAL \clk_div_4hz|Add0~48_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~49\ : std_logic;
SIGNAL \clk_div_4hz|Add0~50_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~39\ : std_logic;
SIGNAL \clk_div_4hz|Add0~40_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~0_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~51\ : std_logic;
SIGNAL \clk_div_4hz|Add0~52_combout\ : std_logic;
SIGNAL \clk_div_4hz|Equal0~1_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~53\ : std_logic;
SIGNAL \clk_div_4hz|Add0~54_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~55\ : std_logic;
SIGNAL \clk_div_4hz|Add0~56_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~57\ : std_logic;
SIGNAL \clk_div_4hz|Add0~58_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~59\ : std_logic;
SIGNAL \clk_div_4hz|Add0~60_combout\ : std_logic;
SIGNAL \clk_div_4hz|Equal0~0_combout\ : std_logic;
SIGNAL \clk_div_4hz|Equal0~3_combout\ : std_logic;
SIGNAL \clk_div_4hz|Equal0~4_combout\ : std_logic;
SIGNAL \clk_div_4hz|Equal0~6_combout\ : std_logic;
SIGNAL \clk_div_4hz|Equal0~9_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~41\ : std_logic;
SIGNAL \clk_div_4hz|Add0~42_combout\ : std_logic;
SIGNAL \clk_div_4hz|s_divCounter~9_combout\ : std_logic;
SIGNAL \clk_div_4hz|Add0~43\ : std_logic;
SIGNAL \clk_div_4hz|Add0~44_combout\ : std_logic;
SIGNAL \clk_div_4hz|clkOut~0_combout\ : std_logic;
SIGNAL \clk_div_4hz|clkOut~1_combout\ : std_logic;
SIGNAL \clk_div_4hz|clkOut~2_combout\ : std_logic;
SIGNAL \clk_div_4hz|clkOut~3_combout\ : std_logic;
SIGNAL \clk_div_4hz|clkOut~feeder_combout\ : std_logic;
SIGNAL \clk_div_4hz|clkOut~q\ : std_logic;
SIGNAL \clk_div_4hz|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \s_units_cnt|termCnt~0_combout\ : std_logic;
SIGNAL \clk_enb_gen|s_counter[0]~1_combout\ : std_logic;
SIGNAL \clk_enb_gen|s_counter[1]~0_combout\ : std_logic;
SIGNAL \s_units_cnt|s_value[3]~2_combout\ : std_logic;
SIGNAL \s_units_cnt|Add0~0_combout\ : std_logic;
SIGNAL \s_units_cnt|s_value~5_combout\ : std_logic;
SIGNAL \s_units_cnt|termCnt~1_combout\ : std_logic;
SIGNAL \s_units_cnt|s_value[3]~3_combout\ : std_logic;
SIGNAL \s_units_cnt|s_value~4_combout\ : std_logic;
SIGNAL \s_units_cnt|s_value~6_combout\ : std_logic;
SIGNAL \s_units_decod|Mux6~0_combout\ : std_logic;
SIGNAL \s_units_decod|Mux5~0_combout\ : std_logic;
SIGNAL \s_units_decod|Mux4~0_combout\ : std_logic;
SIGNAL \s_units_decod|Mux3~0_combout\ : std_logic;
SIGNAL \s_units_decod|Mux2~0_combout\ : std_logic;
SIGNAL \s_units_decod|Mux1~0_combout\ : std_logic;
SIGNAL \s_units_decod|Mux0~0_combout\ : std_logic;
SIGNAL \s_tens_cnt|termCnt~0_combout\ : std_logic;
SIGNAL \s_units_cnt|termCnt~2_combout\ : std_logic;
SIGNAL \s_units_cnt|termCnt~q\ : std_logic;
SIGNAL \clk_enb_gen|clkEnable~0_combout\ : std_logic;
SIGNAL \s_tens_cnt|s_value[2]~2_combout\ : std_logic;
SIGNAL \s_tens_cnt|s_value~6_combout\ : std_logic;
SIGNAL \s_tens_cnt|termCnt~1_combout\ : std_logic;
SIGNAL \s_tens_cnt|s_value[2]~3_combout\ : std_logic;
SIGNAL \s_tens_cnt|s_value~4_combout\ : std_logic;
SIGNAL \s_tens_cnt|Add0~0_combout\ : std_logic;
SIGNAL \s_tens_cnt|s_value~5_combout\ : std_logic;
SIGNAL \s_tens_decod|Mux6~0_combout\ : std_logic;
SIGNAL \s_tens_decod|Mux5~0_combout\ : std_logic;
SIGNAL \s_tens_decod|Mux4~0_combout\ : std_logic;
SIGNAL \s_tens_decod|Mux3~0_combout\ : std_logic;
SIGNAL \s_tens_decod|Mux2~0_combout\ : std_logic;
SIGNAL \s_tens_decod|Mux1~0_combout\ : std_logic;
SIGNAL \s_tens_decod|Mux0~0_combout\ : std_logic;
SIGNAL \m_units_cnt|s_value~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \s_tens_cnt|termCnt~2_combout\ : std_logic;
SIGNAL \s_tens_cnt|termCnt~q\ : std_logic;
SIGNAL \s_mUnitsEnb~0_combout\ : std_logic;
SIGNAL \m_units_cnt|s_value[0]~1_combout\ : std_logic;
SIGNAL \m_units_cnt|Add0~0_combout\ : std_logic;
SIGNAL \m_units_cnt|s_value~3_combout\ : std_logic;
SIGNAL \m_units_cnt|termCnt~0_combout\ : std_logic;
SIGNAL \m_units_cnt|s_value~2_combout\ : std_logic;
SIGNAL \m_units_cnt|Add0~1_combout\ : std_logic;
SIGNAL \m_units_cnt|s_value~4_combout\ : std_logic;
SIGNAL \m_units_decod|Mux6~0_combout\ : std_logic;
SIGNAL \m_units_decod|Mux5~0_combout\ : std_logic;
SIGNAL \m_units_decod|Mux4~0_combout\ : std_logic;
SIGNAL \m_units_decod|Mux3~0_combout\ : std_logic;
SIGNAL \m_units_decod|Mux2~0_combout\ : std_logic;
SIGNAL \m_units_decod|Mux1~0_combout\ : std_logic;
SIGNAL \m_units_decod|Mux0~0_combout\ : std_logic;
SIGNAL \m_tens_cnt|s_value~0_combout\ : std_logic;
SIGNAL \m_units_cnt|termCnt~1_combout\ : std_logic;
SIGNAL \m_units_cnt|termCnt~q\ : std_logic;
SIGNAL \m_tens_cnt|s_value[0]~1_combout\ : std_logic;
SIGNAL \m_tens_cnt|Add0~0_combout\ : std_logic;
SIGNAL \m_tens_cnt|s_value~3_combout\ : std_logic;
SIGNAL \m_tens_cnt|termCnt~0_combout\ : std_logic;
SIGNAL \m_tens_cnt|s_value~2_combout\ : std_logic;
SIGNAL \m_tens_cnt|Add0~1_combout\ : std_logic;
SIGNAL \m_tens_cnt|s_value~4_combout\ : std_logic;
SIGNAL \m_tens_decod|Mux6~0_combout\ : std_logic;
SIGNAL \m_tens_decod|Mux5~0_combout\ : std_logic;
SIGNAL \m_tens_decod|Mux4~0_combout\ : std_logic;
SIGNAL \m_tens_decod|Mux3~0_combout\ : std_logic;
SIGNAL \m_tens_decod|Mux2~0_combout\ : std_logic;
SIGNAL \m_tens_decod|Mux1~0_combout\ : std_logic;
SIGNAL \m_tens_decod|Mux0~0_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \m_tens_cnt|termCnt~1_combout\ : std_logic;
SIGNAL \m_tens_cnt|termCnt~q\ : std_logic;
SIGNAL \s_hUnitsEnb~0_combout\ : std_logic;
SIGNAL \s_hUnitsEnb~1_combout\ : std_logic;
SIGNAL \h_units_cnt|process_0~2_combout\ : std_logic;
SIGNAL \s_max_num_s_m~0_combout\ : std_logic;
SIGNAL \s_max_num_hours~0_combout\ : std_logic;
SIGNAL \s_max_num_hours~2_combout\ : std_logic;
SIGNAL \h_units_cnt|termCnt~0_combout\ : std_logic;
SIGNAL \h_units_cnt|termCnt~1_combout\ : std_logic;
SIGNAL \h_units_cnt|termCnt~2_combout\ : std_logic;
SIGNAL \h_units_cnt|s_value[1]~1_combout\ : std_logic;
SIGNAL \h_units_cnt|s_value[2]~3_combout\ : std_logic;
SIGNAL \h_units_cnt|Add0~0_combout\ : std_logic;
SIGNAL \h_units_cnt|s_value[3]~4_combout\ : std_logic;
SIGNAL \h_units_cnt|termCnt~3_combout\ : std_logic;
SIGNAL \h_units_cnt|termCnt~4_combout\ : std_logic;
SIGNAL \h_units_cnt|termCnt~q\ : std_logic;
SIGNAL \h_tens_cnt|s_value[3]~2_combout\ : std_logic;
SIGNAL \h_tens_cnt|s_value[3]~3_combout\ : std_logic;
SIGNAL \h_tens_cnt|s_value[0]~8_combout\ : std_logic;
SIGNAL \h_tens_cnt|s_value[3]~4_combout\ : std_logic;
SIGNAL \h_tens_cnt|s_value[1]~5_combout\ : std_logic;
SIGNAL \h_tens_cnt|Add0~0_combout\ : std_logic;
SIGNAL \h_tens_cnt|s_value[2]~6_combout\ : std_logic;
SIGNAL \h_tens_cnt|Add0~1_combout\ : std_logic;
SIGNAL \h_tens_cnt|s_value[3]~7_combout\ : std_logic;
SIGNAL \s_max_num_hours~1_combout\ : std_logic;
SIGNAL \s_max_num_hours~3_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \h_units_cnt|s_value[0]~0_combout\ : std_logic;
SIGNAL \h_units_cnt|s_value[1]~2_combout\ : std_logic;
SIGNAL \h_units_decod|Mux6~0_combout\ : std_logic;
SIGNAL \h_units_decod|Mux5~0_combout\ : std_logic;
SIGNAL \h_units_decod|Mux4~0_combout\ : std_logic;
SIGNAL \h_units_decod|Mux3~0_combout\ : std_logic;
SIGNAL \h_units_decod|Mux2~0_combout\ : std_logic;
SIGNAL \h_units_decod|Mux1~0_combout\ : std_logic;
SIGNAL \h_units_decod|Mux0~0_combout\ : std_logic;
SIGNAL \h_tens_decod|decOut_n[0]~14_combout\ : std_logic;
SIGNAL \h_tens_decod|decOut_n[1]~15_combout\ : std_logic;
SIGNAL \h_tens_decod|decOut_n[2]~16_combout\ : std_logic;
SIGNAL \h_tens_decod|decOut_n[3]~17_combout\ : std_logic;
SIGNAL \h_tens_decod|decOut_n[4]~18_combout\ : std_logic;
SIGNAL \h_tens_decod|decOut_n[5]~19_combout\ : std_logic;
SIGNAL \h_tens_decod|decOut_n[6]~20_combout\ : std_logic;
SIGNAL \m_units_cnt|s_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s_units_cnt|s_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \m_tens_cnt|s_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s_tens_cnt|s_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \h_units_cnt|s_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_div_4hz|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \h_tens_cnt|s_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_enb_gen|s_counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \h_units_decod|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \m_tens_decod|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \m_units_decod|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \s_tens_decod|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \s_units_decod|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clk_div_4hz|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_div_4hz|clkOut~q\);
\h_units_decod|ALT_INV_Mux0~0_combout\ <= NOT \h_units_decod|Mux0~0_combout\;
\m_tens_decod|ALT_INV_Mux0~0_combout\ <= NOT \m_tens_decod|Mux0~0_combout\;
\m_units_decod|ALT_INV_Mux0~0_combout\ <= NOT \m_units_decod|Mux0~0_combout\;
\s_tens_decod|ALT_INV_Mux0~0_combout\ <= NOT \s_tens_decod|Mux0~0_combout\;
\s_units_decod|ALT_INV_Mux0~0_combout\ <= NOT \s_units_decod|Mux0~0_combout\;

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_units_decod|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_units_decod|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_units_decod|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_units_decod|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_units_decod|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_units_decod|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_units_decod|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_tens_decod|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_tens_decod|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_tens_decod|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_tens_decod|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_tens_decod|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_tens_decod|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_tens_decod|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_units_decod|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_units_decod|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_units_decod|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_units_decod|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_units_decod|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_units_decod|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_units_decod|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_tens_decod|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_tens_decod|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_tens_decod|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_tens_decod|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_tens_decod|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_tens_decod|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_tens_decod|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_units_decod|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_units_decod|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_units_decod|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_units_decod|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_units_decod|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_units_decod|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_units_decod|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_tens_decod|decOut_n[0]~14_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_tens_decod|decOut_n[1]~15_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_tens_decod|decOut_n[2]~16_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_tens_decod|decOut_n[3]~17_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_tens_decod|decOut_n[4]~18_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_tens_decod|decOut_n[5]~19_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h_tens_decod|decOut_n[6]~20_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_enb_gen|s_counter\(1),
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

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

-- Location: LCCOMB_X53_Y6_N2
\clk_div_4hz|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~0_combout\ = \clk_div_4hz|s_divCounter\(0) $ (VCC)
-- \clk_div_4hz|Add0~1\ = CARRY(\clk_div_4hz|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(0),
	datad => VCC,
	combout => \clk_div_4hz|Add0~0_combout\,
	cout => \clk_div_4hz|Add0~1\);

-- Location: FF_X53_Y6_N3
\clk_div_4hz|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(0));

-- Location: LCCOMB_X53_Y6_N4
\clk_div_4hz|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~2_combout\ = (\clk_div_4hz|s_divCounter\(1) & (!\clk_div_4hz|Add0~1\)) # (!\clk_div_4hz|s_divCounter\(1) & ((\clk_div_4hz|Add0~1\) # (GND)))
-- \clk_div_4hz|Add0~3\ = CARRY((!\clk_div_4hz|Add0~1\) # (!\clk_div_4hz|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(1),
	datad => VCC,
	cin => \clk_div_4hz|Add0~1\,
	combout => \clk_div_4hz|Add0~2_combout\,
	cout => \clk_div_4hz|Add0~3\);

-- Location: FF_X53_Y6_N5
\clk_div_4hz|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(1));

-- Location: LCCOMB_X53_Y6_N6
\clk_div_4hz|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~4_combout\ = (\clk_div_4hz|s_divCounter\(2) & (\clk_div_4hz|Add0~3\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(2) & (!\clk_div_4hz|Add0~3\ & VCC))
-- \clk_div_4hz|Add0~5\ = CARRY((\clk_div_4hz|s_divCounter\(2) & !\clk_div_4hz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(2),
	datad => VCC,
	cin => \clk_div_4hz|Add0~3\,
	combout => \clk_div_4hz|Add0~4_combout\,
	cout => \clk_div_4hz|Add0~5\);

-- Location: FF_X53_Y6_N7
\clk_div_4hz|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(2));

-- Location: LCCOMB_X53_Y6_N8
\clk_div_4hz|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~6_combout\ = (\clk_div_4hz|s_divCounter\(3) & (!\clk_div_4hz|Add0~5\)) # (!\clk_div_4hz|s_divCounter\(3) & ((\clk_div_4hz|Add0~5\) # (GND)))
-- \clk_div_4hz|Add0~7\ = CARRY((!\clk_div_4hz|Add0~5\) # (!\clk_div_4hz|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(3),
	datad => VCC,
	cin => \clk_div_4hz|Add0~5\,
	combout => \clk_div_4hz|Add0~6_combout\,
	cout => \clk_div_4hz|Add0~7\);

-- Location: FF_X53_Y6_N9
\clk_div_4hz|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(3));

-- Location: LCCOMB_X53_Y6_N10
\clk_div_4hz|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~8_combout\ = (\clk_div_4hz|s_divCounter\(4) & (\clk_div_4hz|Add0~7\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(4) & (!\clk_div_4hz|Add0~7\ & VCC))
-- \clk_div_4hz|Add0~9\ = CARRY((\clk_div_4hz|s_divCounter\(4) & !\clk_div_4hz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(4),
	datad => VCC,
	cin => \clk_div_4hz|Add0~7\,
	combout => \clk_div_4hz|Add0~8_combout\,
	cout => \clk_div_4hz|Add0~9\);

-- Location: FF_X53_Y6_N11
\clk_div_4hz|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(4));

-- Location: LCCOMB_X53_Y6_N12
\clk_div_4hz|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~10_combout\ = (\clk_div_4hz|s_divCounter\(5) & (!\clk_div_4hz|Add0~9\)) # (!\clk_div_4hz|s_divCounter\(5) & ((\clk_div_4hz|Add0~9\) # (GND)))
-- \clk_div_4hz|Add0~11\ = CARRY((!\clk_div_4hz|Add0~9\) # (!\clk_div_4hz|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(5),
	datad => VCC,
	cin => \clk_div_4hz|Add0~9\,
	combout => \clk_div_4hz|Add0~10_combout\,
	cout => \clk_div_4hz|Add0~11\);

-- Location: LCCOMB_X53_Y6_N0
\clk_div_4hz|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~7_combout\ = (\clk_div_4hz|Add0~10_combout\ & !\clk_div_4hz|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|Add0~10_combout\,
	datad => \clk_div_4hz|Equal0~9_combout\,
	combout => \clk_div_4hz|s_divCounter~7_combout\);

-- Location: FF_X53_Y6_N1
\clk_div_4hz|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(5));

-- Location: LCCOMB_X53_Y6_N14
\clk_div_4hz|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~12_combout\ = (\clk_div_4hz|s_divCounter\(6) & (\clk_div_4hz|Add0~11\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(6) & (!\clk_div_4hz|Add0~11\ & VCC))
-- \clk_div_4hz|Add0~13\ = CARRY((\clk_div_4hz|s_divCounter\(6) & !\clk_div_4hz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(6),
	datad => VCC,
	cin => \clk_div_4hz|Add0~11\,
	combout => \clk_div_4hz|Add0~12_combout\,
	cout => \clk_div_4hz|Add0~13\);

-- Location: FF_X53_Y6_N15
\clk_div_4hz|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(6));

-- Location: LCCOMB_X53_Y6_N16
\clk_div_4hz|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~14_combout\ = (\clk_div_4hz|s_divCounter\(7) & (!\clk_div_4hz|Add0~13\)) # (!\clk_div_4hz|s_divCounter\(7) & ((\clk_div_4hz|Add0~13\) # (GND)))
-- \clk_div_4hz|Add0~15\ = CARRY((!\clk_div_4hz|Add0~13\) # (!\clk_div_4hz|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(7),
	datad => VCC,
	cin => \clk_div_4hz|Add0~13\,
	combout => \clk_div_4hz|Add0~14_combout\,
	cout => \clk_div_4hz|Add0~15\);

-- Location: FF_X53_Y6_N17
\clk_div_4hz|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(7));

-- Location: LCCOMB_X53_Y6_N18
\clk_div_4hz|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~16_combout\ = (\clk_div_4hz|s_divCounter\(8) & (\clk_div_4hz|Add0~15\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(8) & (!\clk_div_4hz|Add0~15\ & VCC))
-- \clk_div_4hz|Add0~17\ = CARRY((\clk_div_4hz|s_divCounter\(8) & !\clk_div_4hz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(8),
	datad => VCC,
	cin => \clk_div_4hz|Add0~15\,
	combout => \clk_div_4hz|Add0~16_combout\,
	cout => \clk_div_4hz|Add0~17\);

-- Location: FF_X53_Y6_N19
\clk_div_4hz|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(8));

-- Location: LCCOMB_X53_Y6_N20
\clk_div_4hz|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~18_combout\ = (\clk_div_4hz|s_divCounter\(9) & (!\clk_div_4hz|Add0~17\)) # (!\clk_div_4hz|s_divCounter\(9) & ((\clk_div_4hz|Add0~17\) # (GND)))
-- \clk_div_4hz|Add0~19\ = CARRY((!\clk_div_4hz|Add0~17\) # (!\clk_div_4hz|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(9),
	datad => VCC,
	cin => \clk_div_4hz|Add0~17\,
	combout => \clk_div_4hz|Add0~18_combout\,
	cout => \clk_div_4hz|Add0~19\);

-- Location: FF_X53_Y6_N21
\clk_div_4hz|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(9));

-- Location: LCCOMB_X53_Y6_N22
\clk_div_4hz|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~20_combout\ = (\clk_div_4hz|s_divCounter\(10) & (\clk_div_4hz|Add0~19\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(10) & (!\clk_div_4hz|Add0~19\ & VCC))
-- \clk_div_4hz|Add0~21\ = CARRY((\clk_div_4hz|s_divCounter\(10) & !\clk_div_4hz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(10),
	datad => VCC,
	cin => \clk_div_4hz|Add0~19\,
	combout => \clk_div_4hz|Add0~20_combout\,
	cout => \clk_div_4hz|Add0~21\);

-- Location: LCCOMB_X52_Y5_N22
\clk_div_4hz|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~6_combout\ = (\clk_div_4hz|Add0~20_combout\ & !\clk_div_4hz|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_4hz|Add0~20_combout\,
	datad => \clk_div_4hz|Equal0~9_combout\,
	combout => \clk_div_4hz|s_divCounter~6_combout\);

-- Location: FF_X52_Y5_N23
\clk_div_4hz|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(10));

-- Location: LCCOMB_X53_Y6_N24
\clk_div_4hz|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~22_combout\ = (\clk_div_4hz|s_divCounter\(11) & (!\clk_div_4hz|Add0~21\)) # (!\clk_div_4hz|s_divCounter\(11) & ((\clk_div_4hz|Add0~21\) # (GND)))
-- \clk_div_4hz|Add0~23\ = CARRY((!\clk_div_4hz|Add0~21\) # (!\clk_div_4hz|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(11),
	datad => VCC,
	cin => \clk_div_4hz|Add0~21\,
	combout => \clk_div_4hz|Add0~22_combout\,
	cout => \clk_div_4hz|Add0~23\);

-- Location: LCCOMB_X52_Y5_N12
\clk_div_4hz|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~5_combout\ = (\clk_div_4hz|Add0~22_combout\ & !\clk_div_4hz|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|Add0~22_combout\,
	datad => \clk_div_4hz|Equal0~9_combout\,
	combout => \clk_div_4hz|s_divCounter~5_combout\);

-- Location: FF_X52_Y5_N13
\clk_div_4hz|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(11));

-- Location: LCCOMB_X53_Y6_N26
\clk_div_4hz|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~24_combout\ = (\clk_div_4hz|s_divCounter\(12) & (\clk_div_4hz|Add0~23\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(12) & (!\clk_div_4hz|Add0~23\ & VCC))
-- \clk_div_4hz|Add0~25\ = CARRY((\clk_div_4hz|s_divCounter\(12) & !\clk_div_4hz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(12),
	datad => VCC,
	cin => \clk_div_4hz|Add0~23\,
	combout => \clk_div_4hz|Add0~24_combout\,
	cout => \clk_div_4hz|Add0~25\);

-- Location: LCCOMB_X52_Y5_N20
\clk_div_4hz|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~4_combout\ = (\clk_div_4hz|Add0~24_combout\ & !\clk_div_4hz|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_4hz|Add0~24_combout\,
	datad => \clk_div_4hz|Equal0~9_combout\,
	combout => \clk_div_4hz|s_divCounter~4_combout\);

-- Location: FF_X52_Y5_N21
\clk_div_4hz|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(12));

-- Location: LCCOMB_X53_Y6_N28
\clk_div_4hz|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~26_combout\ = (\clk_div_4hz|s_divCounter\(13) & (!\clk_div_4hz|Add0~25\)) # (!\clk_div_4hz|s_divCounter\(13) & ((\clk_div_4hz|Add0~25\) # (GND)))
-- \clk_div_4hz|Add0~27\ = CARRY((!\clk_div_4hz|Add0~25\) # (!\clk_div_4hz|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(13),
	datad => VCC,
	cin => \clk_div_4hz|Add0~25\,
	combout => \clk_div_4hz|Add0~26_combout\,
	cout => \clk_div_4hz|Add0~27\);

-- Location: LCCOMB_X54_Y5_N24
\clk_div_4hz|s_divCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~11_combout\ = (!\clk_div_4hz|Equal0~9_combout\ & \clk_div_4hz|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|Equal0~9_combout\,
	datac => \clk_div_4hz|Add0~26_combout\,
	combout => \clk_div_4hz|s_divCounter~11_combout\);

-- Location: FF_X54_Y5_N25
\clk_div_4hz|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|s_divCounter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(13));

-- Location: LCCOMB_X53_Y6_N30
\clk_div_4hz|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~28_combout\ = (\clk_div_4hz|s_divCounter\(14) & (\clk_div_4hz|Add0~27\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(14) & (!\clk_div_4hz|Add0~27\ & VCC))
-- \clk_div_4hz|Add0~29\ = CARRY((\clk_div_4hz|s_divCounter\(14) & !\clk_div_4hz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(14),
	datad => VCC,
	cin => \clk_div_4hz|Add0~27\,
	combout => \clk_div_4hz|Add0~28_combout\,
	cout => \clk_div_4hz|Add0~29\);

-- Location: FF_X53_Y6_N31
\clk_div_4hz|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(14));

-- Location: LCCOMB_X53_Y5_N0
\clk_div_4hz|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~30_combout\ = (\clk_div_4hz|s_divCounter\(15) & (!\clk_div_4hz|Add0~29\)) # (!\clk_div_4hz|s_divCounter\(15) & ((\clk_div_4hz|Add0~29\) # (GND)))
-- \clk_div_4hz|Add0~31\ = CARRY((!\clk_div_4hz|Add0~29\) # (!\clk_div_4hz|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(15),
	datad => VCC,
	cin => \clk_div_4hz|Add0~29\,
	combout => \clk_div_4hz|Add0~30_combout\,
	cout => \clk_div_4hz|Add0~31\);

-- Location: LCCOMB_X54_Y5_N26
\clk_div_4hz|s_divCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~10_combout\ = (!\clk_div_4hz|Equal0~9_combout\ & \clk_div_4hz|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|Equal0~9_combout\,
	datac => \clk_div_4hz|Add0~30_combout\,
	combout => \clk_div_4hz|s_divCounter~10_combout\);

-- Location: FF_X54_Y5_N27
\clk_div_4hz|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|s_divCounter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(15));

-- Location: LCCOMB_X53_Y5_N2
\clk_div_4hz|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~32_combout\ = (\clk_div_4hz|s_divCounter\(16) & (\clk_div_4hz|Add0~31\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(16) & (!\clk_div_4hz|Add0~31\ & VCC))
-- \clk_div_4hz|Add0~33\ = CARRY((\clk_div_4hz|s_divCounter\(16) & !\clk_div_4hz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(16),
	datad => VCC,
	cin => \clk_div_4hz|Add0~31\,
	combout => \clk_div_4hz|Add0~32_combout\,
	cout => \clk_div_4hz|Add0~33\);

-- Location: FF_X53_Y5_N3
\clk_div_4hz|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(16));

-- Location: LCCOMB_X53_Y5_N14
\clk_div_4hz|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~44_combout\ = (\clk_div_4hz|s_divCounter\(22) & (\clk_div_4hz|Add0~43\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(22) & (!\clk_div_4hz|Add0~43\ & VCC))
-- \clk_div_4hz|Add0~45\ = CARRY((\clk_div_4hz|s_divCounter\(22) & !\clk_div_4hz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(22),
	datad => VCC,
	cin => \clk_div_4hz|Add0~43\,
	combout => \clk_div_4hz|Add0~44_combout\,
	cout => \clk_div_4hz|Add0~45\);

-- Location: LCCOMB_X53_Y5_N16
\clk_div_4hz|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~46_combout\ = (\clk_div_4hz|s_divCounter\(23) & (!\clk_div_4hz|Add0~45\)) # (!\clk_div_4hz|s_divCounter\(23) & ((\clk_div_4hz|Add0~45\) # (GND)))
-- \clk_div_4hz|Add0~47\ = CARRY((!\clk_div_4hz|Add0~45\) # (!\clk_div_4hz|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(23),
	datad => VCC,
	cin => \clk_div_4hz|Add0~45\,
	combout => \clk_div_4hz|Add0~46_combout\,
	cout => \clk_div_4hz|Add0~47\);

-- Location: LCCOMB_X54_Y5_N22
\clk_div_4hz|s_divCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~8_combout\ = (!\clk_div_4hz|Equal0~9_combout\ & \clk_div_4hz|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|Equal0~9_combout\,
	datac => \clk_div_4hz|Add0~46_combout\,
	combout => \clk_div_4hz|s_divCounter~8_combout\);

-- Location: FF_X54_Y5_N23
\clk_div_4hz|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|s_divCounter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(23));

-- Location: LCCOMB_X54_Y5_N12
\clk_div_4hz|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Equal0~7_combout\ = (!\clk_div_4hz|s_divCounter\(22) & (\clk_div_4hz|s_divCounter\(21) & (!\clk_div_4hz|s_divCounter\(16) & \clk_div_4hz|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(22),
	datab => \clk_div_4hz|s_divCounter\(21),
	datac => \clk_div_4hz|s_divCounter\(16),
	datad => \clk_div_4hz|s_divCounter\(23),
	combout => \clk_div_4hz|Equal0~7_combout\);

-- Location: LCCOMB_X54_Y5_N16
\clk_div_4hz|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Equal0~8_combout\ = (\clk_div_4hz|s_divCounter\(15) & (\clk_div_4hz|s_divCounter\(13) & (!\clk_div_4hz|s_divCounter\(9) & !\clk_div_4hz|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(15),
	datab => \clk_div_4hz|s_divCounter\(13),
	datac => \clk_div_4hz|s_divCounter\(9),
	datad => \clk_div_4hz|s_divCounter\(14),
	combout => \clk_div_4hz|Equal0~8_combout\);

-- Location: LCCOMB_X52_Y5_N8
\clk_div_4hz|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Equal0~5_combout\ = (!\clk_div_4hz|s_divCounter\(6) & (\clk_div_4hz|s_divCounter\(2) & (!\clk_div_4hz|s_divCounter\(5) & \clk_div_4hz|s_divCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(6),
	datab => \clk_div_4hz|s_divCounter\(2),
	datac => \clk_div_4hz|s_divCounter\(5),
	datad => \clk_div_4hz|s_divCounter\(3),
	combout => \clk_div_4hz|Equal0~5_combout\);

-- Location: LCCOMB_X53_Y5_N4
\clk_div_4hz|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~34_combout\ = (\clk_div_4hz|s_divCounter\(17) & (!\clk_div_4hz|Add0~33\)) # (!\clk_div_4hz|s_divCounter\(17) & ((\clk_div_4hz|Add0~33\) # (GND)))
-- \clk_div_4hz|Add0~35\ = CARRY((!\clk_div_4hz|Add0~33\) # (!\clk_div_4hz|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(17),
	datad => VCC,
	cin => \clk_div_4hz|Add0~33\,
	combout => \clk_div_4hz|Add0~34_combout\,
	cout => \clk_div_4hz|Add0~35\);

-- Location: LCCOMB_X52_Y5_N14
\clk_div_4hz|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~3_combout\ = (\clk_div_4hz|Add0~34_combout\ & !\clk_div_4hz|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_4hz|Add0~34_combout\,
	datad => \clk_div_4hz|Equal0~9_combout\,
	combout => \clk_div_4hz|s_divCounter~3_combout\);

-- Location: FF_X52_Y5_N15
\clk_div_4hz|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(17));

-- Location: LCCOMB_X53_Y5_N6
\clk_div_4hz|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~36_combout\ = (\clk_div_4hz|s_divCounter\(18) & (\clk_div_4hz|Add0~35\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(18) & (!\clk_div_4hz|Add0~35\ & VCC))
-- \clk_div_4hz|Add0~37\ = CARRY((\clk_div_4hz|s_divCounter\(18) & !\clk_div_4hz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(18),
	datad => VCC,
	cin => \clk_div_4hz|Add0~35\,
	combout => \clk_div_4hz|Add0~36_combout\,
	cout => \clk_div_4hz|Add0~37\);

-- Location: LCCOMB_X52_Y5_N28
\clk_div_4hz|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~2_combout\ = (\clk_div_4hz|Add0~36_combout\ & !\clk_div_4hz|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_4hz|Add0~36_combout\,
	datad => \clk_div_4hz|Equal0~9_combout\,
	combout => \clk_div_4hz|s_divCounter~2_combout\);

-- Location: FF_X52_Y5_N29
\clk_div_4hz|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(18));

-- Location: LCCOMB_X53_Y5_N8
\clk_div_4hz|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~38_combout\ = (\clk_div_4hz|s_divCounter\(19) & (!\clk_div_4hz|Add0~37\)) # (!\clk_div_4hz|s_divCounter\(19) & ((\clk_div_4hz|Add0~37\) # (GND)))
-- \clk_div_4hz|Add0~39\ = CARRY((!\clk_div_4hz|Add0~37\) # (!\clk_div_4hz|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(19),
	datad => VCC,
	cin => \clk_div_4hz|Add0~37\,
	combout => \clk_div_4hz|Add0~38_combout\,
	cout => \clk_div_4hz|Add0~39\);

-- Location: LCCOMB_X52_Y5_N30
\clk_div_4hz|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~1_combout\ = (\clk_div_4hz|Add0~38_combout\ & !\clk_div_4hz|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_4hz|Add0~38_combout\,
	datad => \clk_div_4hz|Equal0~9_combout\,
	combout => \clk_div_4hz|s_divCounter~1_combout\);

-- Location: FF_X52_Y5_N31
\clk_div_4hz|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(19));

-- Location: LCCOMB_X52_Y5_N26
\clk_div_4hz|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Equal0~2_combout\ = (\clk_div_4hz|s_divCounter\(19) & (\clk_div_4hz|s_divCounter\(18) & (\clk_div_4hz|s_divCounter\(17) & \clk_div_4hz|s_divCounter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(19),
	datab => \clk_div_4hz|s_divCounter\(18),
	datac => \clk_div_4hz|s_divCounter\(17),
	datad => \clk_div_4hz|s_divCounter\(12),
	combout => \clk_div_4hz|Equal0~2_combout\);

-- Location: LCCOMB_X53_Y5_N18
\clk_div_4hz|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~48_combout\ = (\clk_div_4hz|s_divCounter\(24) & (\clk_div_4hz|Add0~47\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(24) & (!\clk_div_4hz|Add0~47\ & VCC))
-- \clk_div_4hz|Add0~49\ = CARRY((\clk_div_4hz|s_divCounter\(24) & !\clk_div_4hz|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(24),
	datad => VCC,
	cin => \clk_div_4hz|Add0~47\,
	combout => \clk_div_4hz|Add0~48_combout\,
	cout => \clk_div_4hz|Add0~49\);

-- Location: FF_X53_Y5_N19
\clk_div_4hz|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(24));

-- Location: LCCOMB_X53_Y5_N20
\clk_div_4hz|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~50_combout\ = (\clk_div_4hz|s_divCounter\(25) & (!\clk_div_4hz|Add0~49\)) # (!\clk_div_4hz|s_divCounter\(25) & ((\clk_div_4hz|Add0~49\) # (GND)))
-- \clk_div_4hz|Add0~51\ = CARRY((!\clk_div_4hz|Add0~49\) # (!\clk_div_4hz|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(25),
	datad => VCC,
	cin => \clk_div_4hz|Add0~49\,
	combout => \clk_div_4hz|Add0~50_combout\,
	cout => \clk_div_4hz|Add0~51\);

-- Location: FF_X53_Y5_N21
\clk_div_4hz|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(25));

-- Location: LCCOMB_X53_Y5_N10
\clk_div_4hz|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~40_combout\ = (\clk_div_4hz|s_divCounter\(20) & (\clk_div_4hz|Add0~39\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(20) & (!\clk_div_4hz|Add0~39\ & VCC))
-- \clk_div_4hz|Add0~41\ = CARRY((\clk_div_4hz|s_divCounter\(20) & !\clk_div_4hz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(20),
	datad => VCC,
	cin => \clk_div_4hz|Add0~39\,
	combout => \clk_div_4hz|Add0~40_combout\,
	cout => \clk_div_4hz|Add0~41\);

-- Location: LCCOMB_X52_Y5_N18
\clk_div_4hz|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~0_combout\ = (\clk_div_4hz|Add0~40_combout\ & !\clk_div_4hz|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_4hz|Add0~40_combout\,
	datad => \clk_div_4hz|Equal0~9_combout\,
	combout => \clk_div_4hz|s_divCounter~0_combout\);

-- Location: FF_X52_Y5_N19
\clk_div_4hz|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(20));

-- Location: LCCOMB_X53_Y5_N22
\clk_div_4hz|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~52_combout\ = (\clk_div_4hz|s_divCounter\(26) & (\clk_div_4hz|Add0~51\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(26) & (!\clk_div_4hz|Add0~51\ & VCC))
-- \clk_div_4hz|Add0~53\ = CARRY((\clk_div_4hz|s_divCounter\(26) & !\clk_div_4hz|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(26),
	datad => VCC,
	cin => \clk_div_4hz|Add0~51\,
	combout => \clk_div_4hz|Add0~52_combout\,
	cout => \clk_div_4hz|Add0~53\);

-- Location: FF_X53_Y5_N23
\clk_div_4hz|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(26));

-- Location: LCCOMB_X52_Y5_N24
\clk_div_4hz|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Equal0~1_combout\ = (!\clk_div_4hz|s_divCounter\(25) & (\clk_div_4hz|s_divCounter\(20) & (!\clk_div_4hz|s_divCounter\(24) & !\clk_div_4hz|s_divCounter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(25),
	datab => \clk_div_4hz|s_divCounter\(20),
	datac => \clk_div_4hz|s_divCounter\(24),
	datad => \clk_div_4hz|s_divCounter\(26),
	combout => \clk_div_4hz|Equal0~1_combout\);

-- Location: LCCOMB_X53_Y5_N24
\clk_div_4hz|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~54_combout\ = (\clk_div_4hz|s_divCounter\(27) & (!\clk_div_4hz|Add0~53\)) # (!\clk_div_4hz|s_divCounter\(27) & ((\clk_div_4hz|Add0~53\) # (GND)))
-- \clk_div_4hz|Add0~55\ = CARRY((!\clk_div_4hz|Add0~53\) # (!\clk_div_4hz|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(27),
	datad => VCC,
	cin => \clk_div_4hz|Add0~53\,
	combout => \clk_div_4hz|Add0~54_combout\,
	cout => \clk_div_4hz|Add0~55\);

-- Location: FF_X53_Y5_N25
\clk_div_4hz|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(27));

-- Location: LCCOMB_X53_Y5_N26
\clk_div_4hz|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~56_combout\ = (\clk_div_4hz|s_divCounter\(28) & (\clk_div_4hz|Add0~55\ $ (GND))) # (!\clk_div_4hz|s_divCounter\(28) & (!\clk_div_4hz|Add0~55\ & VCC))
-- \clk_div_4hz|Add0~57\ = CARRY((\clk_div_4hz|s_divCounter\(28) & !\clk_div_4hz|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(28),
	datad => VCC,
	cin => \clk_div_4hz|Add0~55\,
	combout => \clk_div_4hz|Add0~56_combout\,
	cout => \clk_div_4hz|Add0~57\);

-- Location: FF_X53_Y5_N27
\clk_div_4hz|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(28));

-- Location: LCCOMB_X53_Y5_N28
\clk_div_4hz|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~58_combout\ = (\clk_div_4hz|s_divCounter\(29) & (!\clk_div_4hz|Add0~57\)) # (!\clk_div_4hz|s_divCounter\(29) & ((\clk_div_4hz|Add0~57\) # (GND)))
-- \clk_div_4hz|Add0~59\ = CARRY((!\clk_div_4hz|Add0~57\) # (!\clk_div_4hz|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|s_divCounter\(29),
	datad => VCC,
	cin => \clk_div_4hz|Add0~57\,
	combout => \clk_div_4hz|Add0~58_combout\,
	cout => \clk_div_4hz|Add0~59\);

-- Location: FF_X53_Y5_N29
\clk_div_4hz|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(29));

-- Location: LCCOMB_X53_Y5_N30
\clk_div_4hz|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~60_combout\ = \clk_div_4hz|s_divCounter\(30) $ (!\clk_div_4hz|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(30),
	cin => \clk_div_4hz|Add0~59\,
	combout => \clk_div_4hz|Add0~60_combout\);

-- Location: FF_X53_Y5_N31
\clk_div_4hz|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(30));

-- Location: LCCOMB_X52_Y5_N4
\clk_div_4hz|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Equal0~0_combout\ = (!\clk_div_4hz|s_divCounter\(30) & (!\clk_div_4hz|s_divCounter\(27) & (!\clk_div_4hz|s_divCounter\(28) & !\clk_div_4hz|s_divCounter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(30),
	datab => \clk_div_4hz|s_divCounter\(27),
	datac => \clk_div_4hz|s_divCounter\(28),
	datad => \clk_div_4hz|s_divCounter\(29),
	combout => \clk_div_4hz|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y5_N16
\clk_div_4hz|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Equal0~3_combout\ = (!\clk_div_4hz|s_divCounter\(7) & (\clk_div_4hz|s_divCounter\(10) & (\clk_div_4hz|s_divCounter\(11) & !\clk_div_4hz|s_divCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(7),
	datab => \clk_div_4hz|s_divCounter\(10),
	datac => \clk_div_4hz|s_divCounter\(11),
	datad => \clk_div_4hz|s_divCounter\(8),
	combout => \clk_div_4hz|Equal0~3_combout\);

-- Location: LCCOMB_X52_Y5_N10
\clk_div_4hz|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Equal0~4_combout\ = (\clk_div_4hz|Equal0~2_combout\ & (\clk_div_4hz|Equal0~1_combout\ & (\clk_div_4hz|Equal0~0_combout\ & \clk_div_4hz|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|Equal0~2_combout\,
	datab => \clk_div_4hz|Equal0~1_combout\,
	datac => \clk_div_4hz|Equal0~0_combout\,
	datad => \clk_div_4hz|Equal0~3_combout\,
	combout => \clk_div_4hz|Equal0~4_combout\);

-- Location: LCCOMB_X52_Y5_N6
\clk_div_4hz|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Equal0~6_combout\ = (\clk_div_4hz|s_divCounter\(1) & (\clk_div_4hz|s_divCounter\(0) & (\clk_div_4hz|Equal0~5_combout\ & \clk_div_4hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(1),
	datab => \clk_div_4hz|s_divCounter\(0),
	datac => \clk_div_4hz|Equal0~5_combout\,
	datad => \clk_div_4hz|Equal0~4_combout\,
	combout => \clk_div_4hz|Equal0~6_combout\);

-- Location: LCCOMB_X54_Y5_N18
\clk_div_4hz|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Equal0~9_combout\ = (\clk_div_4hz|Equal0~7_combout\ & (\clk_div_4hz|Equal0~8_combout\ & (\clk_div_4hz|s_divCounter\(4) & \clk_div_4hz|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|Equal0~7_combout\,
	datab => \clk_div_4hz|Equal0~8_combout\,
	datac => \clk_div_4hz|s_divCounter\(4),
	datad => \clk_div_4hz|Equal0~6_combout\,
	combout => \clk_div_4hz|Equal0~9_combout\);

-- Location: LCCOMB_X53_Y5_N12
\clk_div_4hz|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|Add0~42_combout\ = (\clk_div_4hz|s_divCounter\(21) & (!\clk_div_4hz|Add0~41\)) # (!\clk_div_4hz|s_divCounter\(21) & ((\clk_div_4hz|Add0~41\) # (GND)))
-- \clk_div_4hz|Add0~43\ = CARRY((!\clk_div_4hz|Add0~41\) # (!\clk_div_4hz|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(21),
	datad => VCC,
	cin => \clk_div_4hz|Add0~41\,
	combout => \clk_div_4hz|Add0~42_combout\,
	cout => \clk_div_4hz|Add0~43\);

-- Location: LCCOMB_X54_Y5_N4
\clk_div_4hz|s_divCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|s_divCounter~9_combout\ = (!\clk_div_4hz|Equal0~9_combout\ & \clk_div_4hz|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_4hz|Equal0~9_combout\,
	datad => \clk_div_4hz|Add0~42_combout\,
	combout => \clk_div_4hz|s_divCounter~9_combout\);

-- Location: FF_X54_Y5_N5
\clk_div_4hz|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|s_divCounter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(21));

-- Location: FF_X53_Y5_N15
\clk_div_4hz|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|s_divCounter\(22));

-- Location: LCCOMB_X54_Y5_N20
\clk_div_4hz|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|clkOut~0_combout\ = (\clk_div_4hz|s_divCounter\(22) & (!\clk_div_4hz|s_divCounter\(21) & (\clk_div_4hz|s_divCounter\(16) & !\clk_div_4hz|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(22),
	datab => \clk_div_4hz|s_divCounter\(21),
	datac => \clk_div_4hz|s_divCounter\(16),
	datad => \clk_div_4hz|s_divCounter\(23),
	combout => \clk_div_4hz|clkOut~0_combout\);

-- Location: LCCOMB_X54_Y5_N28
\clk_div_4hz|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|clkOut~1_combout\ = (!\clk_div_4hz|s_divCounter\(15) & (!\clk_div_4hz|s_divCounter\(13) & (\clk_div_4hz|s_divCounter\(9) & \clk_div_4hz|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|s_divCounter\(15),
	datab => \clk_div_4hz|s_divCounter\(13),
	datac => \clk_div_4hz|s_divCounter\(9),
	datad => \clk_div_4hz|s_divCounter\(14),
	combout => \clk_div_4hz|clkOut~1_combout\);

-- Location: LCCOMB_X54_Y5_N10
\clk_div_4hz|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|clkOut~2_combout\ = (\clk_div_4hz|clkOut~0_combout\ & (!\clk_div_4hz|s_divCounter\(4) & \clk_div_4hz|clkOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_4hz|clkOut~0_combout\,
	datac => \clk_div_4hz|s_divCounter\(4),
	datad => \clk_div_4hz|clkOut~1_combout\,
	combout => \clk_div_4hz|clkOut~2_combout\);

-- Location: LCCOMB_X54_Y5_N14
\clk_div_4hz|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|clkOut~3_combout\ = (!\clk_div_4hz|Equal0~9_combout\ & ((\clk_div_4hz|clkOut~q\) # ((\clk_div_4hz|clkOut~2_combout\ & \clk_div_4hz|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_4hz|clkOut~2_combout\,
	datab => \clk_div_4hz|Equal0~6_combout\,
	datac => \clk_div_4hz|clkOut~q\,
	datad => \clk_div_4hz|Equal0~9_combout\,
	combout => \clk_div_4hz|clkOut~3_combout\);

-- Location: LCCOMB_X54_Y5_N30
\clk_div_4hz|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_4hz|clkOut~feeder_combout\ = \clk_div_4hz|clkOut~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_4hz|clkOut~3_combout\,
	combout => \clk_div_4hz|clkOut~feeder_combout\);

-- Location: FF_X54_Y5_N31
\clk_div_4hz|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_div_4hz|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_4hz|clkOut~q\);

-- Location: CLKCTRL_G16
\clk_div_4hz|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_div_4hz|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_div_4hz|clkOut~clkctrl_outclk\);

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

-- Location: LCCOMB_X84_Y2_N0
\s_units_cnt|termCnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_cnt|termCnt~0_combout\ = (!\SW[0]~input_o\ & (\KEY[1]~input_o\ & !\s_units_cnt|s_value\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \s_units_cnt|s_value\(0),
	combout => \s_units_cnt|termCnt~0_combout\);

-- Location: LCCOMB_X84_Y2_N10
\clk_enb_gen|s_counter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_enb_gen|s_counter[0]~1_combout\ = !\clk_enb_gen|s_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_enb_gen|s_counter\(0),
	combout => \clk_enb_gen|s_counter[0]~1_combout\);

-- Location: FF_X84_Y2_N11
\clk_enb_gen|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \clk_enb_gen|s_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_enb_gen|s_counter\(0));

-- Location: LCCOMB_X84_Y2_N4
\clk_enb_gen|s_counter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_enb_gen|s_counter[1]~0_combout\ = \clk_enb_gen|s_counter\(1) $ (\clk_enb_gen|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_enb_gen|s_counter\(1),
	datad => \clk_enb_gen|s_counter\(0),
	combout => \clk_enb_gen|s_counter[1]~0_combout\);

-- Location: FF_X84_Y2_N5
\clk_enb_gen|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \clk_enb_gen|s_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_enb_gen|s_counter\(1));

-- Location: LCCOMB_X84_Y2_N8
\s_units_cnt|s_value[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_cnt|s_value[3]~2_combout\ = ((\SW[0]~input_o\) # ((!\clk_enb_gen|s_counter\(0) & !\clk_enb_gen|s_counter\(1)))) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_enb_gen|s_counter\(0),
	datab => \clk_enb_gen|s_counter\(1),
	datac => \KEY[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \s_units_cnt|s_value[3]~2_combout\);

-- Location: FF_X84_Y2_N1
\s_units_cnt|s_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \s_units_cnt|termCnt~0_combout\,
	ena => \s_units_cnt|s_value[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_units_cnt|s_value\(0));

-- Location: LCCOMB_X84_Y2_N18
\s_units_cnt|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_cnt|Add0~0_combout\ = (\s_units_cnt|s_value\(1) & \s_units_cnt|s_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_units_cnt|s_value\(1),
	datad => \s_units_cnt|s_value\(0),
	combout => \s_units_cnt|Add0~0_combout\);

-- Location: LCCOMB_X84_Y2_N6
\s_units_cnt|s_value~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_cnt|s_value~5_combout\ = (\s_units_cnt|s_value[3]~3_combout\ & (\s_units_cnt|s_value\(3) $ (((\s_units_cnt|Add0~0_combout\ & \s_units_cnt|s_value\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units_cnt|Add0~0_combout\,
	datab => \s_units_cnt|s_value[3]~3_combout\,
	datac => \s_units_cnt|s_value\(3),
	datad => \s_units_cnt|s_value\(2),
	combout => \s_units_cnt|s_value~5_combout\);

-- Location: FF_X84_Y2_N7
\s_units_cnt|s_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \s_units_cnt|s_value~5_combout\,
	ena => \s_units_cnt|s_value[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_units_cnt|s_value\(3));

-- Location: LCCOMB_X84_Y2_N22
\s_units_cnt|termCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_cnt|termCnt~1_combout\ = (!\s_units_cnt|s_value\(2) & (!\s_units_cnt|s_value\(1) & \s_units_cnt|s_value\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units_cnt|s_value\(2),
	datac => \s_units_cnt|s_value\(1),
	datad => \s_units_cnt|s_value\(3),
	combout => \s_units_cnt|termCnt~1_combout\);

-- Location: LCCOMB_X84_Y2_N16
\s_units_cnt|s_value[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_cnt|s_value[3]~3_combout\ = (!\SW[0]~input_o\ & (\KEY[1]~input_o\ & ((!\s_units_cnt|s_value\(0)) # (!\s_units_cnt|termCnt~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \s_units_cnt|termCnt~1_combout\,
	datad => \s_units_cnt|s_value\(0),
	combout => \s_units_cnt|s_value[3]~3_combout\);

-- Location: LCCOMB_X84_Y2_N30
\s_units_cnt|s_value~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_cnt|s_value~4_combout\ = (\s_units_cnt|s_value[3]~3_combout\ & (\s_units_cnt|s_value\(0) $ (\s_units_cnt|s_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_units_cnt|s_value\(0),
	datac => \s_units_cnt|s_value\(1),
	datad => \s_units_cnt|s_value[3]~3_combout\,
	combout => \s_units_cnt|s_value~4_combout\);

-- Location: FF_X84_Y2_N31
\s_units_cnt|s_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \s_units_cnt|s_value~4_combout\,
	ena => \s_units_cnt|s_value[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_units_cnt|s_value\(1));

-- Location: LCCOMB_X84_Y2_N12
\s_units_cnt|s_value~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_cnt|s_value~6_combout\ = (\s_units_cnt|s_value[3]~3_combout\ & (\s_units_cnt|s_value\(2) $ (((\s_units_cnt|s_value\(1) & \s_units_cnt|s_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units_cnt|s_value\(1),
	datab => \s_units_cnt|s_value\(0),
	datac => \s_units_cnt|s_value\(2),
	datad => \s_units_cnt|s_value[3]~3_combout\,
	combout => \s_units_cnt|s_value~6_combout\);

-- Location: FF_X84_Y2_N13
\s_units_cnt|s_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \s_units_cnt|s_value~6_combout\,
	ena => \s_units_cnt|s_value[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_units_cnt|s_value\(2));

-- Location: LCCOMB_X114_Y19_N20
\s_units_decod|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_decod|Mux6~0_combout\ = (\s_units_cnt|s_value\(2) & (!\s_units_cnt|s_value\(1) & (\s_units_cnt|s_value\(3) $ (!\s_units_cnt|s_value\(0))))) # (!\s_units_cnt|s_value\(2) & (\s_units_cnt|s_value\(0) & (\s_units_cnt|s_value\(1) $ 
-- (!\s_units_cnt|s_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units_cnt|s_value\(2),
	datab => \s_units_cnt|s_value\(1),
	datac => \s_units_cnt|s_value\(3),
	datad => \s_units_cnt|s_value\(0),
	combout => \s_units_decod|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y19_N14
\s_units_decod|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_decod|Mux5~0_combout\ = (\s_units_cnt|s_value\(1) & ((\s_units_cnt|s_value\(0) & ((\s_units_cnt|s_value\(3)))) # (!\s_units_cnt|s_value\(0) & (\s_units_cnt|s_value\(2))))) # (!\s_units_cnt|s_value\(1) & (\s_units_cnt|s_value\(2) & 
-- (\s_units_cnt|s_value\(3) $ (\s_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units_cnt|s_value\(2),
	datab => \s_units_cnt|s_value\(1),
	datac => \s_units_cnt|s_value\(3),
	datad => \s_units_cnt|s_value\(0),
	combout => \s_units_decod|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y19_N4
\s_units_decod|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_decod|Mux4~0_combout\ = (\s_units_cnt|s_value\(2) & (\s_units_cnt|s_value\(3) & ((\s_units_cnt|s_value\(1)) # (!\s_units_cnt|s_value\(0))))) # (!\s_units_cnt|s_value\(2) & (\s_units_cnt|s_value\(1) & (!\s_units_cnt|s_value\(3) & 
-- !\s_units_cnt|s_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units_cnt|s_value\(2),
	datab => \s_units_cnt|s_value\(1),
	datac => \s_units_cnt|s_value\(3),
	datad => \s_units_cnt|s_value\(0),
	combout => \s_units_decod|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y19_N26
\s_units_decod|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_decod|Mux3~0_combout\ = (\s_units_cnt|s_value\(1) & ((\s_units_cnt|s_value\(2) & ((\s_units_cnt|s_value\(0)))) # (!\s_units_cnt|s_value\(2) & (\s_units_cnt|s_value\(3) & !\s_units_cnt|s_value\(0))))) # (!\s_units_cnt|s_value\(1) & 
-- (!\s_units_cnt|s_value\(3) & (\s_units_cnt|s_value\(2) $ (\s_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units_cnt|s_value\(2),
	datab => \s_units_cnt|s_value\(1),
	datac => \s_units_cnt|s_value\(3),
	datad => \s_units_cnt|s_value\(0),
	combout => \s_units_decod|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y19_N28
\s_units_decod|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_decod|Mux2~0_combout\ = (\s_units_cnt|s_value\(1) & (((!\s_units_cnt|s_value\(3) & \s_units_cnt|s_value\(0))))) # (!\s_units_cnt|s_value\(1) & ((\s_units_cnt|s_value\(2) & (!\s_units_cnt|s_value\(3))) # (!\s_units_cnt|s_value\(2) & 
-- ((\s_units_cnt|s_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units_cnt|s_value\(2),
	datab => \s_units_cnt|s_value\(1),
	datac => \s_units_cnt|s_value\(3),
	datad => \s_units_cnt|s_value\(0),
	combout => \s_units_decod|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y19_N10
\s_units_decod|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_decod|Mux1~0_combout\ = (\s_units_cnt|s_value\(2) & (\s_units_cnt|s_value\(0) & (\s_units_cnt|s_value\(1) $ (\s_units_cnt|s_value\(3))))) # (!\s_units_cnt|s_value\(2) & (!\s_units_cnt|s_value\(3) & ((\s_units_cnt|s_value\(1)) # 
-- (\s_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units_cnt|s_value\(2),
	datab => \s_units_cnt|s_value\(1),
	datac => \s_units_cnt|s_value\(3),
	datad => \s_units_cnt|s_value\(0),
	combout => \s_units_decod|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y19_N0
\s_units_decod|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_decod|Mux0~0_combout\ = (\s_units_cnt|s_value\(0) & ((\s_units_cnt|s_value\(3)) # (\s_units_cnt|s_value\(2) $ (\s_units_cnt|s_value\(1))))) # (!\s_units_cnt|s_value\(0) & ((\s_units_cnt|s_value\(1)) # (\s_units_cnt|s_value\(2) $ 
-- (\s_units_cnt|s_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units_cnt|s_value\(2),
	datab => \s_units_cnt|s_value\(1),
	datac => \s_units_cnt|s_value\(3),
	datad => \s_units_cnt|s_value\(0),
	combout => \s_units_decod|Mux0~0_combout\);

-- Location: LCCOMB_X88_Y2_N12
\s_tens_cnt|termCnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_cnt|termCnt~0_combout\ = (!\SW[0]~input_o\ & (\KEY[1]~input_o\ & !\s_tens_cnt|s_value\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \s_tens_cnt|s_value\(0),
	combout => \s_tens_cnt|termCnt~0_combout\);

-- Location: LCCOMB_X84_Y2_N14
\s_units_cnt|termCnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_units_cnt|termCnt~2_combout\ = (\s_units_cnt|termCnt~1_combout\ & (!\s_units_cnt|s_value\(0) & (\KEY[1]~input_o\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_units_cnt|termCnt~1_combout\,
	datab => \s_units_cnt|s_value\(0),
	datac => \KEY[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \s_units_cnt|termCnt~2_combout\);

-- Location: FF_X84_Y2_N15
\s_units_cnt|termCnt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \s_units_cnt|termCnt~2_combout\,
	ena => \s_units_cnt|s_value[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_units_cnt|termCnt~q\);

-- Location: LCCOMB_X84_Y2_N20
\clk_enb_gen|clkEnable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_enb_gen|clkEnable~0_combout\ = (\KEY[1]~input_o\ & ((\clk_enb_gen|s_counter\(1)) # (\clk_enb_gen|s_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \clk_enb_gen|s_counter\(1),
	datad => \clk_enb_gen|s_counter\(0),
	combout => \clk_enb_gen|clkEnable~0_combout\);

-- Location: LCCOMB_X84_Y2_N24
\s_tens_cnt|s_value[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_cnt|s_value[2]~2_combout\ = (\SW[0]~input_o\) # (((\s_units_cnt|termCnt~q\ & !\clk_enb_gen|clkEnable~0_combout\)) # (!\KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \s_units_cnt|termCnt~q\,
	datad => \clk_enb_gen|clkEnable~0_combout\,
	combout => \s_tens_cnt|s_value[2]~2_combout\);

-- Location: FF_X88_Y2_N13
\s_tens_cnt|s_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \s_tens_cnt|termCnt~0_combout\,
	ena => \s_tens_cnt|s_value[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tens_cnt|s_value\(0));

-- Location: LCCOMB_X88_Y2_N20
\s_tens_cnt|s_value~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_cnt|s_value~6_combout\ = (\s_tens_cnt|s_value[2]~3_combout\ & (\s_tens_cnt|s_value\(2) $ (((\s_tens_cnt|s_value\(1) & \s_tens_cnt|s_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|s_value\(1),
	datab => \s_tens_cnt|s_value[2]~3_combout\,
	datac => \s_tens_cnt|s_value\(2),
	datad => \s_tens_cnt|s_value\(0),
	combout => \s_tens_cnt|s_value~6_combout\);

-- Location: FF_X88_Y2_N21
\s_tens_cnt|s_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \s_tens_cnt|s_value~6_combout\,
	ena => \s_tens_cnt|s_value[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tens_cnt|s_value\(2));

-- Location: LCCOMB_X88_Y2_N18
\s_tens_cnt|termCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_cnt|termCnt~1_combout\ = (!\s_tens_cnt|s_value\(1) & (!\s_tens_cnt|s_value\(3) & \s_tens_cnt|s_value\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|s_value\(1),
	datac => \s_tens_cnt|s_value\(3),
	datad => \s_tens_cnt|s_value\(2),
	combout => \s_tens_cnt|termCnt~1_combout\);

-- Location: LCCOMB_X88_Y2_N24
\s_tens_cnt|s_value[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_cnt|s_value[2]~3_combout\ = (\KEY[1]~input_o\ & (!\SW[0]~input_o\ & ((!\s_tens_cnt|termCnt~1_combout\) # (!\s_tens_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|s_value\(0),
	datab => \s_tens_cnt|termCnt~1_combout\,
	datac => \KEY[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \s_tens_cnt|s_value[2]~3_combout\);

-- Location: LCCOMB_X88_Y2_N30
\s_tens_cnt|s_value~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_cnt|s_value~4_combout\ = (\s_tens_cnt|s_value[2]~3_combout\ & (\s_tens_cnt|s_value\(0) $ (\s_tens_cnt|s_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|s_value\(0),
	datac => \s_tens_cnt|s_value\(1),
	datad => \s_tens_cnt|s_value[2]~3_combout\,
	combout => \s_tens_cnt|s_value~4_combout\);

-- Location: FF_X88_Y2_N31
\s_tens_cnt|s_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \s_tens_cnt|s_value~4_combout\,
	ena => \s_tens_cnt|s_value[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tens_cnt|s_value\(1));

-- Location: LCCOMB_X88_Y2_N22
\s_tens_cnt|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_cnt|Add0~0_combout\ = (\s_tens_cnt|s_value\(1) & \s_tens_cnt|s_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_tens_cnt|s_value\(1),
	datad => \s_tens_cnt|s_value\(0),
	combout => \s_tens_cnt|Add0~0_combout\);

-- Location: LCCOMB_X88_Y2_N26
\s_tens_cnt|s_value~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_cnt|s_value~5_combout\ = (\s_tens_cnt|s_value[2]~3_combout\ & (\s_tens_cnt|s_value\(3) $ (((\s_tens_cnt|Add0~0_combout\ & \s_tens_cnt|s_value\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|Add0~0_combout\,
	datab => \s_tens_cnt|s_value\(2),
	datac => \s_tens_cnt|s_value\(3),
	datad => \s_tens_cnt|s_value[2]~3_combout\,
	combout => \s_tens_cnt|s_value~5_combout\);

-- Location: FF_X88_Y2_N27
\s_tens_cnt|s_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \s_tens_cnt|s_value~5_combout\,
	ena => \s_tens_cnt|s_value[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tens_cnt|s_value\(3));

-- Location: LCCOMB_X88_Y2_N16
\s_tens_decod|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_decod|Mux6~0_combout\ = (\s_tens_cnt|s_value\(3) & (\s_tens_cnt|s_value\(0) & (\s_tens_cnt|s_value\(2) $ (\s_tens_cnt|s_value\(1))))) # (!\s_tens_cnt|s_value\(3) & (!\s_tens_cnt|s_value\(1) & (\s_tens_cnt|s_value\(2) $ (\s_tens_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|s_value\(3),
	datab => \s_tens_cnt|s_value\(2),
	datac => \s_tens_cnt|s_value\(1),
	datad => \s_tens_cnt|s_value\(0),
	combout => \s_tens_decod|Mux6~0_combout\);

-- Location: LCCOMB_X88_Y2_N14
\s_tens_decod|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_decod|Mux5~0_combout\ = (\s_tens_cnt|s_value\(3) & ((\s_tens_cnt|s_value\(0) & ((\s_tens_cnt|s_value\(1)))) # (!\s_tens_cnt|s_value\(0) & (\s_tens_cnt|s_value\(2))))) # (!\s_tens_cnt|s_value\(3) & (\s_tens_cnt|s_value\(2) & 
-- (\s_tens_cnt|s_value\(1) $ (\s_tens_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|s_value\(3),
	datab => \s_tens_cnt|s_value\(2),
	datac => \s_tens_cnt|s_value\(1),
	datad => \s_tens_cnt|s_value\(0),
	combout => \s_tens_decod|Mux5~0_combout\);

-- Location: LCCOMB_X88_Y2_N0
\s_tens_decod|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_decod|Mux4~0_combout\ = (\s_tens_cnt|s_value\(3) & (\s_tens_cnt|s_value\(2) & ((\s_tens_cnt|s_value\(1)) # (!\s_tens_cnt|s_value\(0))))) # (!\s_tens_cnt|s_value\(3) & (!\s_tens_cnt|s_value\(2) & (\s_tens_cnt|s_value\(1) & 
-- !\s_tens_cnt|s_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|s_value\(3),
	datab => \s_tens_cnt|s_value\(2),
	datac => \s_tens_cnt|s_value\(1),
	datad => \s_tens_cnt|s_value\(0),
	combout => \s_tens_decod|Mux4~0_combout\);

-- Location: LCCOMB_X88_Y2_N10
\s_tens_decod|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_decod|Mux3~0_combout\ = (\s_tens_cnt|s_value\(1) & ((\s_tens_cnt|s_value\(2) & ((\s_tens_cnt|s_value\(0)))) # (!\s_tens_cnt|s_value\(2) & (\s_tens_cnt|s_value\(3) & !\s_tens_cnt|s_value\(0))))) # (!\s_tens_cnt|s_value\(1) & 
-- (!\s_tens_cnt|s_value\(3) & (\s_tens_cnt|s_value\(2) $ (\s_tens_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|s_value\(3),
	datab => \s_tens_cnt|s_value\(2),
	datac => \s_tens_cnt|s_value\(1),
	datad => \s_tens_cnt|s_value\(0),
	combout => \s_tens_decod|Mux3~0_combout\);

-- Location: LCCOMB_X88_Y2_N4
\s_tens_decod|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_decod|Mux2~0_combout\ = (\s_tens_cnt|s_value\(1) & (!\s_tens_cnt|s_value\(3) & ((\s_tens_cnt|s_value\(0))))) # (!\s_tens_cnt|s_value\(1) & ((\s_tens_cnt|s_value\(2) & (!\s_tens_cnt|s_value\(3))) # (!\s_tens_cnt|s_value\(2) & 
-- ((\s_tens_cnt|s_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|s_value\(3),
	datab => \s_tens_cnt|s_value\(2),
	datac => \s_tens_cnt|s_value\(1),
	datad => \s_tens_cnt|s_value\(0),
	combout => \s_tens_decod|Mux2~0_combout\);

-- Location: LCCOMB_X88_Y2_N2
\s_tens_decod|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_decod|Mux1~0_combout\ = (\s_tens_cnt|s_value\(2) & (\s_tens_cnt|s_value\(0) & (\s_tens_cnt|s_value\(3) $ (\s_tens_cnt|s_value\(1))))) # (!\s_tens_cnt|s_value\(2) & (!\s_tens_cnt|s_value\(3) & ((\s_tens_cnt|s_value\(1)) # 
-- (\s_tens_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|s_value\(3),
	datab => \s_tens_cnt|s_value\(2),
	datac => \s_tens_cnt|s_value\(1),
	datad => \s_tens_cnt|s_value\(0),
	combout => \s_tens_decod|Mux1~0_combout\);

-- Location: LCCOMB_X88_Y2_N28
\s_tens_decod|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_decod|Mux0~0_combout\ = (\s_tens_cnt|s_value\(0) & ((\s_tens_cnt|s_value\(3)) # (\s_tens_cnt|s_value\(2) $ (\s_tens_cnt|s_value\(1))))) # (!\s_tens_cnt|s_value\(0) & ((\s_tens_cnt|s_value\(1)) # (\s_tens_cnt|s_value\(3) $ 
-- (\s_tens_cnt|s_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|s_value\(3),
	datab => \s_tens_cnt|s_value\(2),
	datac => \s_tens_cnt|s_value\(1),
	datad => \s_tens_cnt|s_value\(0),
	combout => \s_tens_decod|Mux0~0_combout\);

-- Location: LCCOMB_X85_Y2_N16
\m_units_cnt|s_value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_cnt|s_value~0_combout\ = (!\SW[0]~input_o\ & !\m_units_cnt|s_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \m_units_cnt|s_value\(0),
	combout => \m_units_cnt|s_value~0_combout\);

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

-- Location: LCCOMB_X83_Y2_N2
\s_tens_cnt|termCnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_tens_cnt|termCnt~2_combout\ = (!\s_tens_cnt|s_value\(0) & (!\SW[0]~input_o\ & (\KEY[1]~input_o\ & \s_tens_cnt|termCnt~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|s_value\(0),
	datab => \SW[0]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \s_tens_cnt|termCnt~1_combout\,
	combout => \s_tens_cnt|termCnt~2_combout\);

-- Location: FF_X83_Y2_N3
\s_tens_cnt|termCnt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \s_tens_cnt|termCnt~2_combout\,
	ena => \s_tens_cnt|s_value[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tens_cnt|termCnt~q\);

-- Location: LCCOMB_X84_Y2_N26
\s_mUnitsEnb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_mUnitsEnb~0_combout\ = (\KEY[1]~input_o\ & (((\s_units_cnt|termCnt~q\ & \s_tens_cnt|termCnt~q\)))) # (!\KEY[1]~input_o\ & (!\KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \s_units_cnt|termCnt~q\,
	datad => \s_tens_cnt|termCnt~q\,
	combout => \s_mUnitsEnb~0_combout\);

-- Location: LCCOMB_X85_Y2_N18
\m_units_cnt|s_value[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_cnt|s_value[0]~1_combout\ = (\SW[0]~input_o\) # ((\s_mUnitsEnb~0_combout\ & !\clk_enb_gen|clkEnable~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \s_mUnitsEnb~0_combout\,
	datad => \clk_enb_gen|clkEnable~0_combout\,
	combout => \m_units_cnt|s_value[0]~1_combout\);

-- Location: FF_X85_Y2_N17
\m_units_cnt|s_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \m_units_cnt|s_value~0_combout\,
	ena => \m_units_cnt|s_value[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_units_cnt|s_value\(0));

-- Location: LCCOMB_X85_Y2_N22
\m_units_cnt|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_cnt|Add0~0_combout\ = \m_units_cnt|s_value\(2) $ (((\m_units_cnt|s_value\(1) & \m_units_cnt|s_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_units_cnt|s_value\(1),
	datac => \m_units_cnt|s_value\(2),
	datad => \m_units_cnt|s_value\(0),
	combout => \m_units_cnt|Add0~0_combout\);

-- Location: LCCOMB_X85_Y2_N4
\m_units_cnt|s_value~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_cnt|s_value~3_combout\ = (\m_units_cnt|Add0~0_combout\ & (!\SW[0]~input_o\ & ((!\m_units_cnt|termCnt~0_combout\) # (!\m_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units_cnt|Add0~0_combout\,
	datab => \m_units_cnt|s_value\(0),
	datac => \SW[0]~input_o\,
	datad => \m_units_cnt|termCnt~0_combout\,
	combout => \m_units_cnt|s_value~3_combout\);

-- Location: FF_X85_Y2_N5
\m_units_cnt|s_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \m_units_cnt|s_value~3_combout\,
	ena => \m_units_cnt|s_value[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_units_cnt|s_value\(2));

-- Location: LCCOMB_X85_Y2_N24
\m_units_cnt|termCnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_cnt|termCnt~0_combout\ = (\m_units_cnt|s_value\(3) & (!\m_units_cnt|s_value\(2) & !\m_units_cnt|s_value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units_cnt|s_value\(3),
	datac => \m_units_cnt|s_value\(2),
	datad => \m_units_cnt|s_value\(1),
	combout => \m_units_cnt|termCnt~0_combout\);

-- Location: LCCOMB_X85_Y2_N2
\m_units_cnt|s_value~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_cnt|s_value~2_combout\ = (!\SW[0]~input_o\ & ((\m_units_cnt|s_value\(1) & ((!\m_units_cnt|s_value\(0)))) # (!\m_units_cnt|s_value\(1) & (!\m_units_cnt|termCnt~0_combout\ & \m_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units_cnt|termCnt~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \m_units_cnt|s_value\(1),
	datad => \m_units_cnt|s_value\(0),
	combout => \m_units_cnt|s_value~2_combout\);

-- Location: FF_X85_Y2_N3
\m_units_cnt|s_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \m_units_cnt|s_value~2_combout\,
	ena => \m_units_cnt|s_value[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_units_cnt|s_value\(1));

-- Location: LCCOMB_X85_Y2_N12
\m_units_cnt|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_cnt|Add0~1_combout\ = \m_units_cnt|s_value\(3) $ (((\m_units_cnt|s_value\(1) & (\m_units_cnt|s_value\(2) & \m_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units_cnt|s_value\(3),
	datab => \m_units_cnt|s_value\(1),
	datac => \m_units_cnt|s_value\(2),
	datad => \m_units_cnt|s_value\(0),
	combout => \m_units_cnt|Add0~1_combout\);

-- Location: LCCOMB_X85_Y2_N6
\m_units_cnt|s_value~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_cnt|s_value~4_combout\ = (\m_units_cnt|Add0~1_combout\ & (!\SW[0]~input_o\ & ((!\m_units_cnt|termCnt~0_combout\) # (!\m_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units_cnt|Add0~1_combout\,
	datab => \m_units_cnt|s_value\(0),
	datac => \SW[0]~input_o\,
	datad => \m_units_cnt|termCnt~0_combout\,
	combout => \m_units_cnt|s_value~4_combout\);

-- Location: FF_X85_Y2_N7
\m_units_cnt|s_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \m_units_cnt|s_value~4_combout\,
	ena => \m_units_cnt|s_value[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_units_cnt|s_value\(3));

-- Location: LCCOMB_X85_Y2_N8
\m_units_decod|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_decod|Mux6~0_combout\ = (\m_units_cnt|s_value\(3) & (\m_units_cnt|s_value\(0) & (\m_units_cnt|s_value\(1) $ (\m_units_cnt|s_value\(2))))) # (!\m_units_cnt|s_value\(3) & (!\m_units_cnt|s_value\(1) & (\m_units_cnt|s_value\(2) $ 
-- (\m_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units_cnt|s_value\(3),
	datab => \m_units_cnt|s_value\(1),
	datac => \m_units_cnt|s_value\(2),
	datad => \m_units_cnt|s_value\(0),
	combout => \m_units_decod|Mux6~0_combout\);

-- Location: LCCOMB_X85_Y2_N14
\m_units_decod|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_decod|Mux5~0_combout\ = (\m_units_cnt|s_value\(3) & ((\m_units_cnt|s_value\(0) & (\m_units_cnt|s_value\(1))) # (!\m_units_cnt|s_value\(0) & ((\m_units_cnt|s_value\(2)))))) # (!\m_units_cnt|s_value\(3) & (\m_units_cnt|s_value\(2) & 
-- (\m_units_cnt|s_value\(1) $ (\m_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units_cnt|s_value\(3),
	datab => \m_units_cnt|s_value\(1),
	datac => \m_units_cnt|s_value\(2),
	datad => \m_units_cnt|s_value\(0),
	combout => \m_units_decod|Mux5~0_combout\);

-- Location: LCCOMB_X85_Y2_N28
\m_units_decod|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_decod|Mux4~0_combout\ = (\m_units_cnt|s_value\(3) & (\m_units_cnt|s_value\(2) & ((\m_units_cnt|s_value\(1)) # (!\m_units_cnt|s_value\(0))))) # (!\m_units_cnt|s_value\(3) & (\m_units_cnt|s_value\(1) & (!\m_units_cnt|s_value\(2) & 
-- !\m_units_cnt|s_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units_cnt|s_value\(3),
	datab => \m_units_cnt|s_value\(1),
	datac => \m_units_cnt|s_value\(2),
	datad => \m_units_cnt|s_value\(0),
	combout => \m_units_decod|Mux4~0_combout\);

-- Location: LCCOMB_X85_Y2_N30
\m_units_decod|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_decod|Mux3~0_combout\ = (\m_units_cnt|s_value\(1) & ((\m_units_cnt|s_value\(2) & ((\m_units_cnt|s_value\(0)))) # (!\m_units_cnt|s_value\(2) & (\m_units_cnt|s_value\(3) & !\m_units_cnt|s_value\(0))))) # (!\m_units_cnt|s_value\(1) & 
-- (!\m_units_cnt|s_value\(3) & (\m_units_cnt|s_value\(2) $ (\m_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units_cnt|s_value\(3),
	datab => \m_units_cnt|s_value\(1),
	datac => \m_units_cnt|s_value\(2),
	datad => \m_units_cnt|s_value\(0),
	combout => \m_units_decod|Mux3~0_combout\);

-- Location: LCCOMB_X85_Y2_N20
\m_units_decod|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_decod|Mux2~0_combout\ = (\m_units_cnt|s_value\(1) & (!\m_units_cnt|s_value\(3) & ((\m_units_cnt|s_value\(0))))) # (!\m_units_cnt|s_value\(1) & ((\m_units_cnt|s_value\(2) & (!\m_units_cnt|s_value\(3))) # (!\m_units_cnt|s_value\(2) & 
-- ((\m_units_cnt|s_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units_cnt|s_value\(3),
	datab => \m_units_cnt|s_value\(1),
	datac => \m_units_cnt|s_value\(2),
	datad => \m_units_cnt|s_value\(0),
	combout => \m_units_decod|Mux2~0_combout\);

-- Location: LCCOMB_X85_Y2_N26
\m_units_decod|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_decod|Mux1~0_combout\ = (\m_units_cnt|s_value\(1) & (!\m_units_cnt|s_value\(3) & ((\m_units_cnt|s_value\(0)) # (!\m_units_cnt|s_value\(2))))) # (!\m_units_cnt|s_value\(1) & (\m_units_cnt|s_value\(0) & (\m_units_cnt|s_value\(3) $ 
-- (!\m_units_cnt|s_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units_cnt|s_value\(3),
	datab => \m_units_cnt|s_value\(1),
	datac => \m_units_cnt|s_value\(2),
	datad => \m_units_cnt|s_value\(0),
	combout => \m_units_decod|Mux1~0_combout\);

-- Location: LCCOMB_X85_Y2_N0
\m_units_decod|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_decod|Mux0~0_combout\ = (\m_units_cnt|s_value\(0) & ((\m_units_cnt|s_value\(3)) # (\m_units_cnt|s_value\(1) $ (\m_units_cnt|s_value\(2))))) # (!\m_units_cnt|s_value\(0) & ((\m_units_cnt|s_value\(1)) # (\m_units_cnt|s_value\(3) $ 
-- (\m_units_cnt|s_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_units_cnt|s_value\(3),
	datab => \m_units_cnt|s_value\(1),
	datac => \m_units_cnt|s_value\(2),
	datad => \m_units_cnt|s_value\(0),
	combout => \m_units_decod|Mux0~0_combout\);

-- Location: LCCOMB_X83_Y2_N20
\m_tens_cnt|s_value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_cnt|s_value~0_combout\ = (!\SW[0]~input_o\ & !\m_tens_cnt|s_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \m_tens_cnt|s_value\(0),
	combout => \m_tens_cnt|s_value~0_combout\);

-- Location: LCCOMB_X85_Y2_N10
\m_units_cnt|termCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_units_cnt|termCnt~1_combout\ = (!\m_units_cnt|s_value\(0) & (!\SW[0]~input_o\ & \m_units_cnt|termCnt~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_units_cnt|s_value\(0),
	datac => \SW[0]~input_o\,
	datad => \m_units_cnt|termCnt~0_combout\,
	combout => \m_units_cnt|termCnt~1_combout\);

-- Location: FF_X85_Y2_N11
\m_units_cnt|termCnt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \m_units_cnt|termCnt~1_combout\,
	ena => \m_units_cnt|s_value[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_units_cnt|termCnt~q\);

-- Location: LCCOMB_X84_Y2_N28
\m_tens_cnt|s_value[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_cnt|s_value[0]~1_combout\ = (\SW[0]~input_o\) # ((\m_units_cnt|termCnt~q\ & (\s_mUnitsEnb~0_combout\ & !\clk_enb_gen|clkEnable~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \m_units_cnt|termCnt~q\,
	datac => \s_mUnitsEnb~0_combout\,
	datad => \clk_enb_gen|clkEnable~0_combout\,
	combout => \m_tens_cnt|s_value[0]~1_combout\);

-- Location: FF_X83_Y2_N21
\m_tens_cnt|s_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \m_tens_cnt|s_value~0_combout\,
	ena => \m_tens_cnt|s_value[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_tens_cnt|s_value\(0));

-- Location: LCCOMB_X83_Y1_N26
\m_tens_cnt|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_cnt|Add0~0_combout\ = \m_tens_cnt|s_value\(2) $ (((\m_tens_cnt|s_value\(1) & \m_tens_cnt|s_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_tens_cnt|s_value\(1),
	datac => \m_tens_cnt|s_value\(2),
	datad => \m_tens_cnt|s_value\(0),
	combout => \m_tens_cnt|Add0~0_combout\);

-- Location: LCCOMB_X83_Y1_N30
\m_tens_cnt|s_value~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_cnt|s_value~3_combout\ = (!\SW[0]~input_o\ & (\m_tens_cnt|Add0~0_combout\ & ((!\m_tens_cnt|s_value\(0)) # (!\m_tens_cnt|termCnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens_cnt|termCnt~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \m_tens_cnt|Add0~0_combout\,
	datad => \m_tens_cnt|s_value\(0),
	combout => \m_tens_cnt|s_value~3_combout\);

-- Location: FF_X83_Y1_N31
\m_tens_cnt|s_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \m_tens_cnt|s_value~3_combout\,
	ena => \m_tens_cnt|s_value[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_tens_cnt|s_value\(2));

-- Location: LCCOMB_X83_Y1_N0
\m_tens_cnt|termCnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_cnt|termCnt~0_combout\ = (!\m_tens_cnt|s_value\(1) & (\m_tens_cnt|s_value\(2) & !\m_tens_cnt|s_value\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_tens_cnt|s_value\(1),
	datac => \m_tens_cnt|s_value\(2),
	datad => \m_tens_cnt|s_value\(3),
	combout => \m_tens_cnt|termCnt~0_combout\);

-- Location: LCCOMB_X83_Y1_N28
\m_tens_cnt|s_value~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_cnt|s_value~2_combout\ = (!\SW[0]~input_o\ & ((\m_tens_cnt|s_value\(1) & ((!\m_tens_cnt|s_value\(0)))) # (!\m_tens_cnt|s_value\(1) & (!\m_tens_cnt|termCnt~0_combout\ & \m_tens_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \m_tens_cnt|termCnt~0_combout\,
	datac => \m_tens_cnt|s_value\(1),
	datad => \m_tens_cnt|s_value\(0),
	combout => \m_tens_cnt|s_value~2_combout\);

-- Location: FF_X83_Y1_N29
\m_tens_cnt|s_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \m_tens_cnt|s_value~2_combout\,
	ena => \m_tens_cnt|s_value[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_tens_cnt|s_value\(1));

-- Location: LCCOMB_X83_Y1_N12
\m_tens_cnt|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_cnt|Add0~1_combout\ = \m_tens_cnt|s_value\(3) $ (((\m_tens_cnt|s_value\(1) & (\m_tens_cnt|s_value\(2) & \m_tens_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens_cnt|s_value\(1),
	datab => \m_tens_cnt|s_value\(3),
	datac => \m_tens_cnt|s_value\(2),
	datad => \m_tens_cnt|s_value\(0),
	combout => \m_tens_cnt|Add0~1_combout\);

-- Location: LCCOMB_X83_Y1_N16
\m_tens_cnt|s_value~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_cnt|s_value~4_combout\ = (\m_tens_cnt|Add0~1_combout\ & (!\SW[0]~input_o\ & ((!\m_tens_cnt|s_value\(0)) # (!\m_tens_cnt|termCnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens_cnt|Add0~1_combout\,
	datab => \m_tens_cnt|termCnt~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \m_tens_cnt|s_value\(0),
	combout => \m_tens_cnt|s_value~4_combout\);

-- Location: FF_X83_Y1_N17
\m_tens_cnt|s_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \m_tens_cnt|s_value~4_combout\,
	ena => \m_tens_cnt|s_value[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_tens_cnt|s_value\(3));

-- Location: LCCOMB_X83_Y1_N10
\m_tens_decod|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_decod|Mux6~0_combout\ = (\m_tens_cnt|s_value\(3) & (\m_tens_cnt|s_value\(0) & (\m_tens_cnt|s_value\(2) $ (\m_tens_cnt|s_value\(1))))) # (!\m_tens_cnt|s_value\(3) & (!\m_tens_cnt|s_value\(1) & (\m_tens_cnt|s_value\(0) $ (\m_tens_cnt|s_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens_cnt|s_value\(0),
	datab => \m_tens_cnt|s_value\(3),
	datac => \m_tens_cnt|s_value\(2),
	datad => \m_tens_cnt|s_value\(1),
	combout => \m_tens_decod|Mux6~0_combout\);

-- Location: LCCOMB_X83_Y1_N20
\m_tens_decod|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_decod|Mux5~0_combout\ = (\m_tens_cnt|s_value\(3) & ((\m_tens_cnt|s_value\(0) & ((\m_tens_cnt|s_value\(1)))) # (!\m_tens_cnt|s_value\(0) & (\m_tens_cnt|s_value\(2))))) # (!\m_tens_cnt|s_value\(3) & (\m_tens_cnt|s_value\(2) & 
-- (\m_tens_cnt|s_value\(0) $ (\m_tens_cnt|s_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens_cnt|s_value\(0),
	datab => \m_tens_cnt|s_value\(3),
	datac => \m_tens_cnt|s_value\(2),
	datad => \m_tens_cnt|s_value\(1),
	combout => \m_tens_decod|Mux5~0_combout\);

-- Location: LCCOMB_X83_Y1_N2
\m_tens_decod|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_decod|Mux4~0_combout\ = (\m_tens_cnt|s_value\(3) & (\m_tens_cnt|s_value\(2) & ((\m_tens_cnt|s_value\(1)) # (!\m_tens_cnt|s_value\(0))))) # (!\m_tens_cnt|s_value\(3) & (!\m_tens_cnt|s_value\(0) & (!\m_tens_cnt|s_value\(2) & 
-- \m_tens_cnt|s_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens_cnt|s_value\(0),
	datab => \m_tens_cnt|s_value\(3),
	datac => \m_tens_cnt|s_value\(2),
	datad => \m_tens_cnt|s_value\(1),
	combout => \m_tens_decod|Mux4~0_combout\);

-- Location: LCCOMB_X83_Y1_N24
\m_tens_decod|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_decod|Mux3~0_combout\ = (\m_tens_cnt|s_value\(1) & ((\m_tens_cnt|s_value\(0) & ((\m_tens_cnt|s_value\(2)))) # (!\m_tens_cnt|s_value\(0) & (\m_tens_cnt|s_value\(3) & !\m_tens_cnt|s_value\(2))))) # (!\m_tens_cnt|s_value\(1) & 
-- (!\m_tens_cnt|s_value\(3) & (\m_tens_cnt|s_value\(0) $ (\m_tens_cnt|s_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens_cnt|s_value\(0),
	datab => \m_tens_cnt|s_value\(3),
	datac => \m_tens_cnt|s_value\(2),
	datad => \m_tens_cnt|s_value\(1),
	combout => \m_tens_decod|Mux3~0_combout\);

-- Location: LCCOMB_X83_Y1_N22
\m_tens_decod|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_decod|Mux2~0_combout\ = (\m_tens_cnt|s_value\(1) & (\m_tens_cnt|s_value\(0) & (!\m_tens_cnt|s_value\(3)))) # (!\m_tens_cnt|s_value\(1) & ((\m_tens_cnt|s_value\(2) & ((!\m_tens_cnt|s_value\(3)))) # (!\m_tens_cnt|s_value\(2) & 
-- (\m_tens_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens_cnt|s_value\(0),
	datab => \m_tens_cnt|s_value\(3),
	datac => \m_tens_cnt|s_value\(2),
	datad => \m_tens_cnt|s_value\(1),
	combout => \m_tens_decod|Mux2~0_combout\);

-- Location: LCCOMB_X83_Y1_N4
\m_tens_decod|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_decod|Mux1~0_combout\ = (\m_tens_cnt|s_value\(0) & (\m_tens_cnt|s_value\(3) $ (((\m_tens_cnt|s_value\(1)) # (!\m_tens_cnt|s_value\(2)))))) # (!\m_tens_cnt|s_value\(0) & (!\m_tens_cnt|s_value\(3) & (!\m_tens_cnt|s_value\(2) & 
-- \m_tens_cnt|s_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens_cnt|s_value\(0),
	datab => \m_tens_cnt|s_value\(3),
	datac => \m_tens_cnt|s_value\(2),
	datad => \m_tens_cnt|s_value\(1),
	combout => \m_tens_decod|Mux1~0_combout\);

-- Location: LCCOMB_X83_Y1_N18
\m_tens_decod|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_decod|Mux0~0_combout\ = (\m_tens_cnt|s_value\(0) & ((\m_tens_cnt|s_value\(3)) # (\m_tens_cnt|s_value\(2) $ (\m_tens_cnt|s_value\(1))))) # (!\m_tens_cnt|s_value\(0) & ((\m_tens_cnt|s_value\(1)) # (\m_tens_cnt|s_value\(3) $ 
-- (\m_tens_cnt|s_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens_cnt|s_value\(0),
	datab => \m_tens_cnt|s_value\(3),
	datac => \m_tens_cnt|s_value\(2),
	datad => \m_tens_cnt|s_value\(1),
	combout => \m_tens_decod|Mux0~0_combout\);

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

-- Location: LCCOMB_X83_Y2_N8
\m_tens_cnt|termCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_tens_cnt|termCnt~1_combout\ = (!\m_tens_cnt|s_value\(0) & (\m_tens_cnt|termCnt~0_combout\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_tens_cnt|s_value\(0),
	datab => \m_tens_cnt|termCnt~0_combout\,
	datac => \SW[0]~input_o\,
	combout => \m_tens_cnt|termCnt~1_combout\);

-- Location: FF_X83_Y2_N9
\m_tens_cnt|termCnt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \m_tens_cnt|termCnt~1_combout\,
	ena => \m_tens_cnt|s_value[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_tens_cnt|termCnt~q\);

-- Location: LCCOMB_X83_Y2_N22
\s_hUnitsEnb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_hUnitsEnb~0_combout\ = (\KEY[1]~input_o\ & (((\m_tens_cnt|termCnt~q\ & \s_tens_cnt|termCnt~q\)))) # (!\KEY[1]~input_o\ & (!\KEY[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \m_tens_cnt|termCnt~q\,
	datad => \s_tens_cnt|termCnt~q\,
	combout => \s_hUnitsEnb~0_combout\);

-- Location: LCCOMB_X83_Y2_N12
\s_hUnitsEnb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_hUnitsEnb~1_combout\ = (\s_hUnitsEnb~0_combout\ & (((\s_units_cnt|termCnt~q\ & \m_units_cnt|termCnt~q\)) # (!\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \s_units_cnt|termCnt~q\,
	datac => \s_hUnitsEnb~0_combout\,
	datad => \m_units_cnt|termCnt~q\,
	combout => \s_hUnitsEnb~1_combout\);

-- Location: LCCOMB_X83_Y2_N26
\h_units_cnt|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_cnt|process_0~2_combout\ = (\s_hUnitsEnb~1_combout\ & (((!\clk_enb_gen|s_counter\(1) & !\clk_enb_gen|s_counter\(0))) # (!\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_enb_gen|s_counter\(1),
	datab => \KEY[1]~input_o\,
	datac => \clk_enb_gen|s_counter\(0),
	datad => \s_hUnitsEnb~1_combout\,
	combout => \h_units_cnt|process_0~2_combout\);

-- Location: LCCOMB_X83_Y2_N18
\s_max_num_s_m~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_max_num_s_m~0_combout\ = (\s_tens_cnt|termCnt~q\ & (\m_tens_cnt|termCnt~q\ & (\s_units_cnt|termCnt~q\ & \m_units_cnt|termCnt~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tens_cnt|termCnt~q\,
	datab => \m_tens_cnt|termCnt~q\,
	datac => \s_units_cnt|termCnt~q\,
	datad => \m_units_cnt|termCnt~q\,
	combout => \s_max_num_s_m~0_combout\);

-- Location: LCCOMB_X83_Y2_N4
\s_max_num_hours~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_max_num_hours~0_combout\ = (\s_max_num_s_m~0_combout\) # (!\KEY[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[2]~input_o\,
	datad => \s_max_num_s_m~0_combout\,
	combout => \s_max_num_hours~0_combout\);

-- Location: LCCOMB_X83_Y2_N30
\s_max_num_hours~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_max_num_hours~2_combout\ = (\h_units_cnt|s_value\(1) & \h_units_cnt|s_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \h_units_cnt|s_value\(1),
	datad => \h_units_cnt|s_value\(0),
	combout => \s_max_num_hours~2_combout\);

-- Location: LCCOMB_X82_Y2_N22
\h_units_cnt|termCnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_cnt|termCnt~0_combout\ = (!\h_units_cnt|s_value\(1) & (\h_units_cnt|s_value\(3) & !\h_units_cnt|s_value\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|s_value\(1),
	datac => \h_units_cnt|s_value\(3),
	datad => \h_units_cnt|s_value\(2),
	combout => \h_units_cnt|termCnt~0_combout\);

-- Location: LCCOMB_X83_Y2_N10
\h_units_cnt|termCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_cnt|termCnt~1_combout\ = (\SW[0]~input_o\) # ((\clk_enb_gen|clkEnable~0_combout\) # ((\h_units_cnt|s_value\(0) & \h_units_cnt|termCnt~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \h_units_cnt|s_value\(0),
	datac => \clk_enb_gen|clkEnable~0_combout\,
	datad => \h_units_cnt|termCnt~0_combout\,
	combout => \h_units_cnt|termCnt~1_combout\);

-- Location: LCCOMB_X83_Y2_N16
\h_units_cnt|termCnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_cnt|termCnt~2_combout\ = (\s_hUnitsEnb~1_combout\ & (!\h_units_cnt|termCnt~1_combout\ & ((!\s_max_num_hours~3_combout\) # (!\s_max_num_hours~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_hUnitsEnb~1_combout\,
	datab => \s_max_num_hours~0_combout\,
	datac => \h_units_cnt|termCnt~1_combout\,
	datad => \s_max_num_hours~3_combout\,
	combout => \h_units_cnt|termCnt~2_combout\);

-- Location: LCCOMB_X83_Y2_N28
\h_units_cnt|s_value[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_cnt|s_value[1]~1_combout\ = (!\h_units_cnt|process_0~2_combout\ & !\comb~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \h_units_cnt|process_0~2_combout\,
	datad => \comb~0_combout\,
	combout => \h_units_cnt|s_value[1]~1_combout\);

-- Location: LCCOMB_X82_Y2_N28
\h_units_cnt|s_value[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_cnt|s_value[2]~3_combout\ = (\h_units_cnt|s_value\(2) & ((\h_units_cnt|s_value[1]~1_combout\) # ((!\s_max_num_hours~2_combout\ & \h_units_cnt|termCnt~2_combout\)))) # (!\h_units_cnt|s_value\(2) & (\s_max_num_hours~2_combout\ & 
-- (\h_units_cnt|termCnt~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_max_num_hours~2_combout\,
	datab => \h_units_cnt|termCnt~2_combout\,
	datac => \h_units_cnt|s_value\(2),
	datad => \h_units_cnt|s_value[1]~1_combout\,
	combout => \h_units_cnt|s_value[2]~3_combout\);

-- Location: FF_X82_Y2_N29
\h_units_cnt|s_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \h_units_cnt|s_value[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_units_cnt|s_value\(2));

-- Location: LCCOMB_X82_Y2_N12
\h_units_cnt|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_cnt|Add0~0_combout\ = \h_units_cnt|s_value\(3) $ (((\h_units_cnt|s_value\(1) & (\h_units_cnt|s_value\(0) & \h_units_cnt|s_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|s_value\(1),
	datab => \h_units_cnt|s_value\(0),
	datac => \h_units_cnt|s_value\(3),
	datad => \h_units_cnt|s_value\(2),
	combout => \h_units_cnt|Add0~0_combout\);

-- Location: LCCOMB_X82_Y2_N14
\h_units_cnt|s_value[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_cnt|s_value[3]~4_combout\ = (\h_units_cnt|Add0~0_combout\ & ((\h_units_cnt|termCnt~2_combout\) # ((\h_units_cnt|s_value\(3) & \h_units_cnt|s_value[1]~1_combout\)))) # (!\h_units_cnt|Add0~0_combout\ & (((\h_units_cnt|s_value\(3) & 
-- \h_units_cnt|s_value[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|Add0~0_combout\,
	datab => \h_units_cnt|termCnt~2_combout\,
	datac => \h_units_cnt|s_value\(3),
	datad => \h_units_cnt|s_value[1]~1_combout\,
	combout => \h_units_cnt|s_value[3]~4_combout\);

-- Location: FF_X82_Y2_N15
\h_units_cnt|s_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \h_units_cnt|s_value[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_units_cnt|s_value\(3));

-- Location: LCCOMB_X82_Y2_N4
\h_units_cnt|termCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_cnt|termCnt~3_combout\ = (!\h_units_cnt|s_value\(1) & (!\h_units_cnt|s_value\(0) & (\h_units_cnt|s_value\(3) & !\h_units_cnt|s_value\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|s_value\(1),
	datab => \h_units_cnt|s_value\(0),
	datac => \h_units_cnt|s_value\(3),
	datad => \h_units_cnt|s_value\(2),
	combout => \h_units_cnt|termCnt~3_combout\);

-- Location: LCCOMB_X82_Y2_N2
\h_units_cnt|termCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_cnt|termCnt~4_combout\ = (\h_units_cnt|termCnt~3_combout\ & ((\h_units_cnt|termCnt~2_combout\) # ((\h_units_cnt|termCnt~q\ & \h_units_cnt|s_value[1]~1_combout\)))) # (!\h_units_cnt|termCnt~3_combout\ & (((\h_units_cnt|termCnt~q\ & 
-- \h_units_cnt|s_value[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|termCnt~3_combout\,
	datab => \h_units_cnt|termCnt~2_combout\,
	datac => \h_units_cnt|termCnt~q\,
	datad => \h_units_cnt|s_value[1]~1_combout\,
	combout => \h_units_cnt|termCnt~4_combout\);

-- Location: FF_X82_Y2_N3
\h_units_cnt|termCnt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \h_units_cnt|termCnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_units_cnt|termCnt~q\);

-- Location: LCCOMB_X83_Y2_N14
\h_tens_cnt|s_value[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_cnt|s_value[3]~2_combout\ = ((\clk_enb_gen|clkEnable~0_combout\) # (!\s_hUnitsEnb~1_combout\)) # (!\h_units_cnt|termCnt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|termCnt~q\,
	datac => \clk_enb_gen|clkEnable~0_combout\,
	datad => \s_hUnitsEnb~1_combout\,
	combout => \h_tens_cnt|s_value[3]~2_combout\);

-- Location: LCCOMB_X83_Y2_N0
\h_tens_cnt|s_value[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_cnt|s_value[3]~3_combout\ = (!\SW[0]~input_o\ & (\h_tens_cnt|s_value[3]~2_combout\ & ((!\s_max_num_hours~3_combout\) # (!\s_max_num_hours~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \s_max_num_hours~0_combout\,
	datac => \h_tens_cnt|s_value[3]~2_combout\,
	datad => \s_max_num_hours~3_combout\,
	combout => \h_tens_cnt|s_value[3]~3_combout\);

-- Location: LCCOMB_X81_Y2_N10
\h_tens_cnt|s_value[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_cnt|s_value[0]~8_combout\ = (\h_tens_cnt|s_value[3]~3_combout\ & (((\h_tens_cnt|s_value\(0))))) # (!\h_tens_cnt|s_value[3]~3_combout\ & (!\SW[0]~input_o\ & (!\h_tens_cnt|s_value\(0) & !\s_max_num_hours~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \h_tens_cnt|s_value[3]~3_combout\,
	datac => \h_tens_cnt|s_value\(0),
	datad => \s_max_num_hours~1_combout\,
	combout => \h_tens_cnt|s_value[0]~8_combout\);

-- Location: FF_X81_Y2_N11
\h_tens_cnt|s_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \h_tens_cnt|s_value[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_tens_cnt|s_value\(0));

-- Location: LCCOMB_X81_Y2_N18
\h_tens_cnt|s_value[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_cnt|s_value[3]~4_combout\ = (!\SW[0]~input_o\ & !\s_max_num_hours~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \s_max_num_hours~1_combout\,
	combout => \h_tens_cnt|s_value[3]~4_combout\);

-- Location: LCCOMB_X81_Y2_N4
\h_tens_cnt|s_value[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_cnt|s_value[1]~5_combout\ = (\h_tens_cnt|s_value[3]~3_combout\ & (((\h_tens_cnt|s_value\(1))))) # (!\h_tens_cnt|s_value[3]~3_combout\ & (\h_tens_cnt|s_value[3]~4_combout\ & (\h_tens_cnt|s_value\(0) $ (\h_tens_cnt|s_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_tens_cnt|s_value\(0),
	datab => \h_tens_cnt|s_value[3]~3_combout\,
	datac => \h_tens_cnt|s_value\(1),
	datad => \h_tens_cnt|s_value[3]~4_combout\,
	combout => \h_tens_cnt|s_value[1]~5_combout\);

-- Location: FF_X81_Y2_N5
\h_tens_cnt|s_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \h_tens_cnt|s_value[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_tens_cnt|s_value\(1));

-- Location: LCCOMB_X81_Y2_N12
\h_tens_cnt|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_cnt|Add0~0_combout\ = \h_tens_cnt|s_value\(2) $ (((\h_tens_cnt|s_value\(0) & \h_tens_cnt|s_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_tens_cnt|s_value\(2),
	datab => \h_tens_cnt|s_value\(0),
	datac => \h_tens_cnt|s_value\(1),
	combout => \h_tens_cnt|Add0~0_combout\);

-- Location: LCCOMB_X81_Y2_N20
\h_tens_cnt|s_value[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_cnt|s_value[2]~6_combout\ = (\h_tens_cnt|s_value[3]~3_combout\ & (((\h_tens_cnt|s_value\(2))))) # (!\h_tens_cnt|s_value[3]~3_combout\ & (\h_tens_cnt|Add0~0_combout\ & ((\h_tens_cnt|s_value[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_tens_cnt|Add0~0_combout\,
	datab => \h_tens_cnt|s_value[3]~3_combout\,
	datac => \h_tens_cnt|s_value\(2),
	datad => \h_tens_cnt|s_value[3]~4_combout\,
	combout => \h_tens_cnt|s_value[2]~6_combout\);

-- Location: FF_X81_Y2_N21
\h_tens_cnt|s_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \h_tens_cnt|s_value[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_tens_cnt|s_value\(2));

-- Location: LCCOMB_X81_Y2_N14
\h_tens_cnt|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_cnt|Add0~1_combout\ = \h_tens_cnt|s_value\(3) $ (((\h_tens_cnt|s_value\(2) & (\h_tens_cnt|s_value\(0) & \h_tens_cnt|s_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_tens_cnt|s_value\(2),
	datab => \h_tens_cnt|s_value\(0),
	datac => \h_tens_cnt|s_value\(1),
	datad => \h_tens_cnt|s_value\(3),
	combout => \h_tens_cnt|Add0~1_combout\);

-- Location: LCCOMB_X81_Y2_N26
\h_tens_cnt|s_value[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_cnt|s_value[3]~7_combout\ = (\h_tens_cnt|s_value[3]~3_combout\ & (((\h_tens_cnt|s_value\(3))))) # (!\h_tens_cnt|s_value[3]~3_combout\ & (\h_tens_cnt|Add0~1_combout\ & ((\h_tens_cnt|s_value[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_tens_cnt|Add0~1_combout\,
	datab => \h_tens_cnt|s_value[3]~3_combout\,
	datac => \h_tens_cnt|s_value\(3),
	datad => \h_tens_cnt|s_value[3]~4_combout\,
	combout => \h_tens_cnt|s_value[3]~7_combout\);

-- Location: FF_X81_Y2_N27
\h_tens_cnt|s_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \h_tens_cnt|s_value[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_tens_cnt|s_value\(3));

-- Location: LCCOMB_X81_Y2_N8
\s_max_num_hours~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_max_num_hours~1_combout\ = (!\h_tens_cnt|s_value\(3) & (!\h_tens_cnt|s_value\(2) & (\h_tens_cnt|s_value\(1) & !\h_tens_cnt|s_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_tens_cnt|s_value\(3),
	datab => \h_tens_cnt|s_value\(2),
	datac => \h_tens_cnt|s_value\(1),
	datad => \h_tens_cnt|s_value\(0),
	combout => \s_max_num_hours~1_combout\);

-- Location: LCCOMB_X83_Y2_N24
\s_max_num_hours~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_max_num_hours~3_combout\ = (!\h_units_cnt|s_value\(3) & (!\h_units_cnt|s_value\(2) & (\s_max_num_hours~2_combout\ & \s_max_num_hours~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|s_value\(3),
	datab => \h_units_cnt|s_value\(2),
	datac => \s_max_num_hours~2_combout\,
	datad => \s_max_num_hours~1_combout\,
	combout => \s_max_num_hours~3_combout\);

-- Location: LCCOMB_X83_Y2_N6
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\SW[0]~input_o\) # ((\s_hUnitsEnb~1_combout\ & (\s_max_num_hours~0_combout\ & \s_max_num_hours~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_hUnitsEnb~1_combout\,
	datab => \SW[0]~input_o\,
	datac => \s_max_num_hours~0_combout\,
	datad => \s_max_num_hours~3_combout\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X82_Y2_N20
\h_units_cnt|s_value[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_cnt|s_value[0]~0_combout\ = (!\comb~0_combout\ & (\h_units_cnt|process_0~2_combout\ $ (\h_units_cnt|s_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \h_units_cnt|process_0~2_combout\,
	datac => \h_units_cnt|s_value\(0),
	datad => \comb~0_combout\,
	combout => \h_units_cnt|s_value[0]~0_combout\);

-- Location: FF_X82_Y2_N21
\h_units_cnt|s_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \h_units_cnt|s_value[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_units_cnt|s_value\(0));

-- Location: LCCOMB_X82_Y2_N6
\h_units_cnt|s_value[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_cnt|s_value[1]~2_combout\ = (\h_units_cnt|s_value\(1) & ((\h_units_cnt|s_value[1]~1_combout\) # ((!\h_units_cnt|s_value\(0) & \h_units_cnt|termCnt~2_combout\)))) # (!\h_units_cnt|s_value\(1) & (\h_units_cnt|s_value\(0) & 
-- (\h_units_cnt|termCnt~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|s_value\(0),
	datab => \h_units_cnt|termCnt~2_combout\,
	datac => \h_units_cnt|s_value\(1),
	datad => \h_units_cnt|s_value[1]~1_combout\,
	combout => \h_units_cnt|s_value[1]~2_combout\);

-- Location: FF_X82_Y2_N7
\h_units_cnt|s_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_4hz|clkOut~clkctrl_outclk\,
	d => \h_units_cnt|s_value[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_units_cnt|s_value\(1));

-- Location: LCCOMB_X82_Y2_N16
\h_units_decod|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_decod|Mux6~0_combout\ = (\h_units_cnt|s_value\(3) & (\h_units_cnt|s_value\(0) & (\h_units_cnt|s_value\(1) $ (\h_units_cnt|s_value\(2))))) # (!\h_units_cnt|s_value\(3) & (!\h_units_cnt|s_value\(1) & (\h_units_cnt|s_value\(0) $ 
-- (\h_units_cnt|s_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|s_value\(1),
	datab => \h_units_cnt|s_value\(0),
	datac => \h_units_cnt|s_value\(3),
	datad => \h_units_cnt|s_value\(2),
	combout => \h_units_decod|Mux6~0_combout\);

-- Location: LCCOMB_X82_Y2_N26
\h_units_decod|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_decod|Mux5~0_combout\ = (\h_units_cnt|s_value\(1) & ((\h_units_cnt|s_value\(0) & (\h_units_cnt|s_value\(3))) # (!\h_units_cnt|s_value\(0) & ((\h_units_cnt|s_value\(2)))))) # (!\h_units_cnt|s_value\(1) & (\h_units_cnt|s_value\(2) & 
-- (\h_units_cnt|s_value\(0) $ (\h_units_cnt|s_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|s_value\(1),
	datab => \h_units_cnt|s_value\(0),
	datac => \h_units_cnt|s_value\(3),
	datad => \h_units_cnt|s_value\(2),
	combout => \h_units_decod|Mux5~0_combout\);

-- Location: LCCOMB_X82_Y2_N0
\h_units_decod|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_decod|Mux4~0_combout\ = (\h_units_cnt|s_value\(3) & (\h_units_cnt|s_value\(2) & ((\h_units_cnt|s_value\(1)) # (!\h_units_cnt|s_value\(0))))) # (!\h_units_cnt|s_value\(3) & (\h_units_cnt|s_value\(1) & (!\h_units_cnt|s_value\(0) & 
-- !\h_units_cnt|s_value\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|s_value\(1),
	datab => \h_units_cnt|s_value\(0),
	datac => \h_units_cnt|s_value\(3),
	datad => \h_units_cnt|s_value\(2),
	combout => \h_units_decod|Mux4~0_combout\);

-- Location: LCCOMB_X82_Y2_N10
\h_units_decod|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_decod|Mux3~0_combout\ = (\h_units_cnt|s_value\(1) & ((\h_units_cnt|s_value\(0) & ((\h_units_cnt|s_value\(2)))) # (!\h_units_cnt|s_value\(0) & (\h_units_cnt|s_value\(3) & !\h_units_cnt|s_value\(2))))) # (!\h_units_cnt|s_value\(1) & 
-- (!\h_units_cnt|s_value\(3) & (\h_units_cnt|s_value\(0) $ (\h_units_cnt|s_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|s_value\(1),
	datab => \h_units_cnt|s_value\(0),
	datac => \h_units_cnt|s_value\(3),
	datad => \h_units_cnt|s_value\(2),
	combout => \h_units_decod|Mux3~0_combout\);

-- Location: LCCOMB_X82_Y2_N8
\h_units_decod|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_decod|Mux2~0_combout\ = (\h_units_cnt|s_value\(1) & (\h_units_cnt|s_value\(0) & (!\h_units_cnt|s_value\(3)))) # (!\h_units_cnt|s_value\(1) & ((\h_units_cnt|s_value\(2) & ((!\h_units_cnt|s_value\(3)))) # (!\h_units_cnt|s_value\(2) & 
-- (\h_units_cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|s_value\(1),
	datab => \h_units_cnt|s_value\(0),
	datac => \h_units_cnt|s_value\(3),
	datad => \h_units_cnt|s_value\(2),
	combout => \h_units_decod|Mux2~0_combout\);

-- Location: LCCOMB_X82_Y2_N30
\h_units_decod|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_decod|Mux1~0_combout\ = (\h_units_cnt|s_value\(1) & (!\h_units_cnt|s_value\(3) & ((\h_units_cnt|s_value\(0)) # (!\h_units_cnt|s_value\(2))))) # (!\h_units_cnt|s_value\(1) & (\h_units_cnt|s_value\(0) & (\h_units_cnt|s_value\(3) $ 
-- (!\h_units_cnt|s_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|s_value\(1),
	datab => \h_units_cnt|s_value\(0),
	datac => \h_units_cnt|s_value\(3),
	datad => \h_units_cnt|s_value\(2),
	combout => \h_units_decod|Mux1~0_combout\);

-- Location: LCCOMB_X82_Y2_N24
\h_units_decod|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_units_decod|Mux0~0_combout\ = (\h_units_cnt|s_value\(0) & ((\h_units_cnt|s_value\(3)) # (\h_units_cnt|s_value\(1) $ (\h_units_cnt|s_value\(2))))) # (!\h_units_cnt|s_value\(0) & ((\h_units_cnt|s_value\(1)) # (\h_units_cnt|s_value\(3) $ 
-- (\h_units_cnt|s_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_units_cnt|s_value\(1),
	datab => \h_units_cnt|s_value\(0),
	datac => \h_units_cnt|s_value\(3),
	datad => \h_units_cnt|s_value\(2),
	combout => \h_units_decod|Mux0~0_combout\);

-- Location: LCCOMB_X81_Y2_N24
\h_tens_decod|decOut_n[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_decod|decOut_n[0]~14_combout\ = (\h_tens_cnt|s_value\(1) & (\h_tens_cnt|s_value\(0) & (!\h_tens_cnt|s_value\(2) & \h_tens_cnt|s_value\(3)))) # (!\h_tens_cnt|s_value\(1) & (\h_tens_cnt|s_value\(3) $ (((!\h_tens_cnt|s_value\(2)) # 
-- (!\h_tens_cnt|s_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_tens_cnt|s_value\(1),
	datab => \h_tens_cnt|s_value\(0),
	datac => \h_tens_cnt|s_value\(2),
	datad => \h_tens_cnt|s_value\(3),
	combout => \h_tens_decod|decOut_n[0]~14_combout\);

-- Location: LCCOMB_X81_Y2_N2
\h_tens_decod|decOut_n[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_decod|decOut_n[1]~15_combout\ = (\h_tens_cnt|s_value\(0) & ((\h_tens_cnt|s_value\(1) & ((\h_tens_cnt|s_value\(3)))) # (!\h_tens_cnt|s_value\(1) & (\h_tens_cnt|s_value\(2) & !\h_tens_cnt|s_value\(3))))) # (!\h_tens_cnt|s_value\(0) & 
-- (\h_tens_cnt|s_value\(2) $ (((!\h_tens_cnt|s_value\(1) & !\h_tens_cnt|s_value\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_tens_cnt|s_value\(1),
	datab => \h_tens_cnt|s_value\(0),
	datac => \h_tens_cnt|s_value\(2),
	datad => \h_tens_cnt|s_value\(3),
	combout => \h_tens_decod|decOut_n[1]~15_combout\);

-- Location: LCCOMB_X81_Y2_N28
\h_tens_decod|decOut_n[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_decod|decOut_n[2]~16_combout\ = (\h_tens_cnt|s_value\(0) & (\h_tens_cnt|s_value\(1) & (\h_tens_cnt|s_value\(2) & \h_tens_cnt|s_value\(3)))) # (!\h_tens_cnt|s_value\(0) & ((\h_tens_cnt|s_value\(2) $ (!\h_tens_cnt|s_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_tens_cnt|s_value\(1),
	datab => \h_tens_cnt|s_value\(0),
	datac => \h_tens_cnt|s_value\(2),
	datad => \h_tens_cnt|s_value\(3),
	combout => \h_tens_decod|decOut_n[2]~16_combout\);

-- Location: LCCOMB_X81_Y2_N22
\h_tens_decod|decOut_n[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_decod|decOut_n[3]~17_combout\ = (\h_tens_cnt|s_value\(3) & (\h_tens_cnt|s_value\(1) & (\h_tens_cnt|s_value\(0) $ (!\h_tens_cnt|s_value\(2))))) # (!\h_tens_cnt|s_value\(3) & (\h_tens_cnt|s_value\(1) $ (((!\h_tens_cnt|s_value\(2)) # 
-- (!\h_tens_cnt|s_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_tens_cnt|s_value\(1),
	datab => \h_tens_cnt|s_value\(0),
	datac => \h_tens_cnt|s_value\(2),
	datad => \h_tens_cnt|s_value\(3),
	combout => \h_tens_decod|decOut_n[3]~17_combout\);

-- Location: LCCOMB_X81_Y2_N16
\h_tens_decod|decOut_n[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_decod|decOut_n[4]~18_combout\ = (\h_tens_cnt|s_value\(1) & (\h_tens_cnt|s_value\(0) & ((!\h_tens_cnt|s_value\(3))))) # (!\h_tens_cnt|s_value\(1) & (((\h_tens_cnt|s_value\(0) & !\h_tens_cnt|s_value\(2))) # (!\h_tens_cnt|s_value\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_tens_cnt|s_value\(1),
	datab => \h_tens_cnt|s_value\(0),
	datac => \h_tens_cnt|s_value\(2),
	datad => \h_tens_cnt|s_value\(3),
	combout => \h_tens_decod|decOut_n[4]~18_combout\);

-- Location: LCCOMB_X81_Y2_N30
\h_tens_decod|decOut_n[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_decod|decOut_n[5]~19_combout\ = (\h_tens_cnt|s_value\(2) & (\h_tens_cnt|s_value\(0) & (\h_tens_cnt|s_value\(1) $ (\h_tens_cnt|s_value\(3))))) # (!\h_tens_cnt|s_value\(2) & (((!\h_tens_cnt|s_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_tens_cnt|s_value\(1),
	datab => \h_tens_cnt|s_value\(0),
	datac => \h_tens_cnt|s_value\(2),
	datad => \h_tens_cnt|s_value\(3),
	combout => \h_tens_decod|decOut_n[5]~19_combout\);

-- Location: LCCOMB_X81_Y2_N0
\h_tens_decod|decOut_n[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \h_tens_decod|decOut_n[6]~20_combout\ = (\h_tens_cnt|s_value\(0) & (!\h_tens_cnt|s_value\(3) & (\h_tens_cnt|s_value\(1) $ (!\h_tens_cnt|s_value\(2))))) # (!\h_tens_cnt|s_value\(0) & (!\h_tens_cnt|s_value\(1) & (\h_tens_cnt|s_value\(2) $ 
-- (!\h_tens_cnt|s_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h_tens_cnt|s_value\(1),
	datab => \h_tens_cnt|s_value\(0),
	datac => \h_tens_cnt|s_value\(2),
	datad => \h_tens_cnt|s_value\(3),
	combout => \h_tens_decod|decOut_n[6]~20_combout\);

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;
END structure;


