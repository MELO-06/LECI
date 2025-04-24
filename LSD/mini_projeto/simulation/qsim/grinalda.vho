-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "04/08/2025 09:48:38"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Grinalda IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(3 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(3 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Grinalda;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Grinalda IS
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
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[0]~29_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[9]~48\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[10]~49_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[10]~50\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[11]~51_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[11]~52\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[12]~53_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[12]~54\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[13]~55_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[13]~56\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[14]~57_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[14]~58\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[15]~59_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[15]~60\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[16]~61_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[16]~62\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[17]~63_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[17]~64\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[18]~65_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[18]~66\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[19]~67_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[19]~68\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[20]~69_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[20]~70\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[21]~71_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[21]~72\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[22]~73_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[22]~74\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[23]~75_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[23]~76\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[24]~77_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[24]~78\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[25]~79_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[25]~80\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[26]~81_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[26]~82\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[27]~83_combout\ : std_logic;
SIGNAL \clk_6s_period|LessThan0~2_combout\ : std_logic;
SIGNAL \clk_6s_period|LessThan0~12_combout\ : std_logic;
SIGNAL \clk_6s_period|LessThan0~11_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[0]~30\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[1]~31_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[1]~32\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[2]~33_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[2]~34\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[3]~35_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[3]~36\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[4]~37_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[4]~38\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[5]~39_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[5]~40\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[6]~41_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[6]~42\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[7]~43_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[7]~44\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[8]~45_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[8]~46\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[9]~47_combout\ : std_logic;
SIGNAL \clk_6s_period|LessThan0~7_combout\ : std_logic;
SIGNAL \clk_6s_period|LessThan0~8_combout\ : std_logic;
SIGNAL \clk_6s_period|clkOut~2_combout\ : std_logic;
SIGNAL \clk_6s_period|LessThan0~3_combout\ : std_logic;
SIGNAL \clk_6s_period|LessThan0~6_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[27]~84\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter[28]~85_combout\ : std_logic;
SIGNAL \clk_6s_period|LessThan0~4_combout\ : std_logic;
SIGNAL \clk_6s_period|LessThan0~5_combout\ : std_logic;
SIGNAL \clk_6s_period|clkOut~0_combout\ : std_logic;
SIGNAL \clk_6s_period|clkOut~1_combout\ : std_logic;
SIGNAL \clk_6s_period|LessThan0~9_combout\ : std_logic;
SIGNAL \clk_6s_period|LessThan0~10_combout\ : std_logic;
SIGNAL \clk_6s_period|clkOut~5_combout\ : std_logic;
SIGNAL \clk_6s_period|clkOut~6_combout\ : std_logic;
SIGNAL \clk_6s_period|clkOut~3_combout\ : std_logic;
SIGNAL \clk_6s_period|clkOut~4_combout\ : std_logic;
SIGNAL \clk_6s_period|clkOut~7_combout\ : std_logic;
SIGNAL \clk_6s_period|clkOut~8_combout\ : std_logic;
SIGNAL \clk_6s_period|clkOut~9_combout\ : std_logic;
SIGNAL \clk_6s_period|clkOut~10_combout\ : std_logic;
SIGNAL \clk_6s_period|clkOut~q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \enable_6s~0_combout\ : std_logic;
SIGNAL \enable_6s~q\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[0]~25_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[22]~70\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[23]~71_combout\ : std_logic;
SIGNAL \u_blink_2hz|LessThan0~2_combout\ : std_logic;
SIGNAL \u_blink_2hz|LessThan0~0_combout\ : std_logic;
SIGNAL \u_blink_2hz|LessThan0~1_combout\ : std_logic;
SIGNAL \u_blink_2hz|LessThan0~3_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[23]~72\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[24]~73_combout\ : std_logic;
SIGNAL \u_blink_2hz|LessThan0~5_combout\ : std_logic;
SIGNAL \LEDR~4_combout\ : std_logic;
SIGNAL \u_blink_2hz|LessThan0~4_combout\ : std_logic;
SIGNAL \u_blink_2hz|LessThan0~6_combout\ : std_logic;
SIGNAL \u_blink_2hz|LessThan0~7_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[0]~26\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[1]~27_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[1]~28\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[2]~29_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[2]~30\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[3]~31_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[3]~32\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[4]~33_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[4]~34\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[5]~35_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[5]~36\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[6]~37_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[6]~38\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[7]~39_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[7]~40\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[8]~41_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[8]~42\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[9]~43_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[9]~44\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[10]~45_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[10]~46\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[11]~47_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[11]~48\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[12]~49_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[12]~50\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[13]~51_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[13]~52\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[14]~53_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[14]~54\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[15]~55_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[15]~56\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[16]~57_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[16]~58\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[17]~59_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[17]~60\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[18]~61_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[18]~62\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[19]~63_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[19]~64\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[20]~65_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[20]~66\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[21]~67_combout\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[21]~68\ : std_logic;
SIGNAL \u_blink_2hz|s_counter[22]~69_combout\ : std_logic;
SIGNAL \LEDR~0_combout\ : std_logic;
SIGNAL \LEDR~1_combout\ : std_logic;
SIGNAL \LEDR~2_combout\ : std_logic;
SIGNAL \LEDR~3_combout\ : std_logic;
SIGNAL \LEDR~5_combout\ : std_logic;
SIGNAL \LEDR~6_combout\ : std_logic;
SIGNAL \LEDR~7_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[0]~26_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[17]~61\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[18]~62_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[18]~63\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[19]~64_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[19]~65\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[20]~66_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[20]~67\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[21]~68_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[21]~69\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[22]~70_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[22]~71\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[23]~72_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[23]~73\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[24]~74_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[24]~75\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[25]~76_combout\ : std_logic;
SIGNAL \LEDG~4_combout\ : std_logic;
SIGNAL \u_blink_1hz|LessThan0~1_combout\ : std_logic;
SIGNAL \u_blink_1hz|LessThan0~2_combout\ : std_logic;
SIGNAL \u_blink_1hz|LessThan0~3_combout\ : std_logic;
SIGNAL \u_blink_1hz|LessThan0~0_combout\ : std_logic;
SIGNAL \u_blink_1hz|LessThan0~4_combout\ : std_logic;
SIGNAL \u_blink_1hz|LessThan0~5_combout\ : std_logic;
SIGNAL \u_blink_1hz|LessThan0~6_combout\ : std_logic;
SIGNAL \u_blink_1hz|LessThan0~7_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[0]~27\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[1]~28_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[1]~29\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[2]~30_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[2]~31\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[3]~32_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[3]~33\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[4]~34_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[4]~35\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[5]~36_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[5]~37\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[6]~38_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[6]~39\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[7]~40_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[7]~41\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[8]~42_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[8]~43\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[9]~44_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[9]~45\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[10]~46_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[10]~47\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[11]~48_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[11]~49\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[12]~50_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[12]~51\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[13]~52_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[13]~53\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[14]~54_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[14]~55\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[15]~56_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[15]~57\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[16]~58_combout\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[16]~59\ : std_logic;
SIGNAL \u_blink_1hz|s_counter[17]~60_combout\ : std_logic;
SIGNAL \LEDG~3_combout\ : std_logic;
SIGNAL \LEDG~1_combout\ : std_logic;
SIGNAL \LEDG~2_combout\ : std_logic;
SIGNAL \LEDG~5_combout\ : std_logic;
SIGNAL \LEDG~0_combout\ : std_logic;
SIGNAL \LEDG~6_combout\ : std_logic;
SIGNAL \LEDG~7_combout\ : std_logic;
SIGNAL \LEDR~8_combout\ : std_logic;
SIGNAL \dec2_4|Equal2~0_combout\ : std_logic;
SIGNAL \bin_7seg|Mux1~0_combout\ : std_logic;
SIGNAL \bin_7seg|Mux0~0_combout\ : std_logic;
SIGNAL \clk_6s_period|s_divCounter\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \u_blink_2hz|s_counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \u_blink_1hz|s_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \bin_7seg|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LEDR~8_combout\ : std_logic;
SIGNAL \bin_7seg|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \dec2_4|ALT_INV_Equal2~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\bin_7seg|ALT_INV_Mux1~0_combout\ <= NOT \bin_7seg|Mux1~0_combout\;
\ALT_INV_LEDR~8_combout\ <= NOT \LEDR~8_combout\;
\bin_7seg|ALT_INV_Mux0~0_combout\ <= NOT \bin_7seg|Mux0~0_combout\;
\dec2_4|ALT_INV_Equal2~0_combout\ <= NOT \dec2_4|Equal2~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~7_combout\,
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
	i => \LEDR~7_combout\,
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
	i => \LEDR~7_combout\,
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
	i => \LEDR~7_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG~7_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG~7_combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG~7_combout\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG~7_combout\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LEDR~8_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
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

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec2_4|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LEDR~8_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec2_4|ALT_INV_Equal2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_7seg|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_7seg|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

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

-- Location: LCCOMB_X100_Y40_N4
\clk_6s_period|s_divCounter[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[0]~29_combout\ = \clk_6s_period|s_divCounter\(0) $ (VCC)
-- \clk_6s_period|s_divCounter[0]~30\ = CARRY(\clk_6s_period|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_6s_period|s_divCounter\(0),
	datad => VCC,
	combout => \clk_6s_period|s_divCounter[0]~29_combout\,
	cout => \clk_6s_period|s_divCounter[0]~30\);

-- Location: LCCOMB_X100_Y40_N22
\clk_6s_period|s_divCounter[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[9]~47_combout\ = (\clk_6s_period|s_divCounter\(9) & (!\clk_6s_period|s_divCounter[8]~46\)) # (!\clk_6s_period|s_divCounter\(9) & ((\clk_6s_period|s_divCounter[8]~46\) # (GND)))
-- \clk_6s_period|s_divCounter[9]~48\ = CARRY((!\clk_6s_period|s_divCounter[8]~46\) # (!\clk_6s_period|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(9),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[8]~46\,
	combout => \clk_6s_period|s_divCounter[9]~47_combout\,
	cout => \clk_6s_period|s_divCounter[9]~48\);

-- Location: LCCOMB_X100_Y40_N24
\clk_6s_period|s_divCounter[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[10]~49_combout\ = (\clk_6s_period|s_divCounter\(10) & (\clk_6s_period|s_divCounter[9]~48\ $ (GND))) # (!\clk_6s_period|s_divCounter\(10) & (!\clk_6s_period|s_divCounter[9]~48\ & VCC))
-- \clk_6s_period|s_divCounter[10]~50\ = CARRY((\clk_6s_period|s_divCounter\(10) & !\clk_6s_period|s_divCounter[9]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_6s_period|s_divCounter\(10),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[9]~48\,
	combout => \clk_6s_period|s_divCounter[10]~49_combout\,
	cout => \clk_6s_period|s_divCounter[10]~50\);

-- Location: FF_X100_Y40_N25
\clk_6s_period|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[10]~49_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(10));

-- Location: LCCOMB_X100_Y40_N26
\clk_6s_period|s_divCounter[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[11]~51_combout\ = (\clk_6s_period|s_divCounter\(11) & (!\clk_6s_period|s_divCounter[10]~50\)) # (!\clk_6s_period|s_divCounter\(11) & ((\clk_6s_period|s_divCounter[10]~50\) # (GND)))
-- \clk_6s_period|s_divCounter[11]~52\ = CARRY((!\clk_6s_period|s_divCounter[10]~50\) # (!\clk_6s_period|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(11),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[10]~50\,
	combout => \clk_6s_period|s_divCounter[11]~51_combout\,
	cout => \clk_6s_period|s_divCounter[11]~52\);

-- Location: FF_X100_Y40_N27
\clk_6s_period|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[11]~51_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(11));

-- Location: LCCOMB_X100_Y40_N28
\clk_6s_period|s_divCounter[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[12]~53_combout\ = (\clk_6s_period|s_divCounter\(12) & (\clk_6s_period|s_divCounter[11]~52\ $ (GND))) # (!\clk_6s_period|s_divCounter\(12) & (!\clk_6s_period|s_divCounter[11]~52\ & VCC))
-- \clk_6s_period|s_divCounter[12]~54\ = CARRY((\clk_6s_period|s_divCounter\(12) & !\clk_6s_period|s_divCounter[11]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_6s_period|s_divCounter\(12),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[11]~52\,
	combout => \clk_6s_period|s_divCounter[12]~53_combout\,
	cout => \clk_6s_period|s_divCounter[12]~54\);

-- Location: FF_X100_Y40_N29
\clk_6s_period|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[12]~53_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(12));

-- Location: LCCOMB_X100_Y40_N30
\clk_6s_period|s_divCounter[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[13]~55_combout\ = (\clk_6s_period|s_divCounter\(13) & (!\clk_6s_period|s_divCounter[12]~54\)) # (!\clk_6s_period|s_divCounter\(13) & ((\clk_6s_period|s_divCounter[12]~54\) # (GND)))
-- \clk_6s_period|s_divCounter[13]~56\ = CARRY((!\clk_6s_period|s_divCounter[12]~54\) # (!\clk_6s_period|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(13),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[12]~54\,
	combout => \clk_6s_period|s_divCounter[13]~55_combout\,
	cout => \clk_6s_period|s_divCounter[13]~56\);

-- Location: FF_X100_Y40_N31
\clk_6s_period|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[13]~55_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(13));

-- Location: LCCOMB_X100_Y39_N0
\clk_6s_period|s_divCounter[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[14]~57_combout\ = (\clk_6s_period|s_divCounter\(14) & (\clk_6s_period|s_divCounter[13]~56\ $ (GND))) # (!\clk_6s_period|s_divCounter\(14) & (!\clk_6s_period|s_divCounter[13]~56\ & VCC))
-- \clk_6s_period|s_divCounter[14]~58\ = CARRY((\clk_6s_period|s_divCounter\(14) & !\clk_6s_period|s_divCounter[13]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_6s_period|s_divCounter\(14),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[13]~56\,
	combout => \clk_6s_period|s_divCounter[14]~57_combout\,
	cout => \clk_6s_period|s_divCounter[14]~58\);

-- Location: FF_X100_Y39_N1
\clk_6s_period|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[14]~57_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(14));

-- Location: LCCOMB_X100_Y39_N2
\clk_6s_period|s_divCounter[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[15]~59_combout\ = (\clk_6s_period|s_divCounter\(15) & (!\clk_6s_period|s_divCounter[14]~58\)) # (!\clk_6s_period|s_divCounter\(15) & ((\clk_6s_period|s_divCounter[14]~58\) # (GND)))
-- \clk_6s_period|s_divCounter[15]~60\ = CARRY((!\clk_6s_period|s_divCounter[14]~58\) # (!\clk_6s_period|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_6s_period|s_divCounter\(15),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[14]~58\,
	combout => \clk_6s_period|s_divCounter[15]~59_combout\,
	cout => \clk_6s_period|s_divCounter[15]~60\);

-- Location: FF_X100_Y39_N3
\clk_6s_period|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[15]~59_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(15));

-- Location: LCCOMB_X100_Y39_N4
\clk_6s_period|s_divCounter[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[16]~61_combout\ = (\clk_6s_period|s_divCounter\(16) & (\clk_6s_period|s_divCounter[15]~60\ $ (GND))) # (!\clk_6s_period|s_divCounter\(16) & (!\clk_6s_period|s_divCounter[15]~60\ & VCC))
-- \clk_6s_period|s_divCounter[16]~62\ = CARRY((\clk_6s_period|s_divCounter\(16) & !\clk_6s_period|s_divCounter[15]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_6s_period|s_divCounter\(16),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[15]~60\,
	combout => \clk_6s_period|s_divCounter[16]~61_combout\,
	cout => \clk_6s_period|s_divCounter[16]~62\);

-- Location: FF_X100_Y39_N5
\clk_6s_period|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[16]~61_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(16));

-- Location: LCCOMB_X100_Y39_N6
\clk_6s_period|s_divCounter[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[17]~63_combout\ = (\clk_6s_period|s_divCounter\(17) & (!\clk_6s_period|s_divCounter[16]~62\)) # (!\clk_6s_period|s_divCounter\(17) & ((\clk_6s_period|s_divCounter[16]~62\) # (GND)))
-- \clk_6s_period|s_divCounter[17]~64\ = CARRY((!\clk_6s_period|s_divCounter[16]~62\) # (!\clk_6s_period|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(17),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[16]~62\,
	combout => \clk_6s_period|s_divCounter[17]~63_combout\,
	cout => \clk_6s_period|s_divCounter[17]~64\);

-- Location: FF_X100_Y39_N7
\clk_6s_period|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[17]~63_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(17));

-- Location: LCCOMB_X100_Y39_N8
\clk_6s_period|s_divCounter[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[18]~65_combout\ = (\clk_6s_period|s_divCounter\(18) & (\clk_6s_period|s_divCounter[17]~64\ $ (GND))) # (!\clk_6s_period|s_divCounter\(18) & (!\clk_6s_period|s_divCounter[17]~64\ & VCC))
-- \clk_6s_period|s_divCounter[18]~66\ = CARRY((\clk_6s_period|s_divCounter\(18) & !\clk_6s_period|s_divCounter[17]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_6s_period|s_divCounter\(18),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[17]~64\,
	combout => \clk_6s_period|s_divCounter[18]~65_combout\,
	cout => \clk_6s_period|s_divCounter[18]~66\);

-- Location: FF_X100_Y39_N9
\clk_6s_period|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[18]~65_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(18));

-- Location: LCCOMB_X100_Y39_N10
\clk_6s_period|s_divCounter[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[19]~67_combout\ = (\clk_6s_period|s_divCounter\(19) & (!\clk_6s_period|s_divCounter[18]~66\)) # (!\clk_6s_period|s_divCounter\(19) & ((\clk_6s_period|s_divCounter[18]~66\) # (GND)))
-- \clk_6s_period|s_divCounter[19]~68\ = CARRY((!\clk_6s_period|s_divCounter[18]~66\) # (!\clk_6s_period|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(19),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[18]~66\,
	combout => \clk_6s_period|s_divCounter[19]~67_combout\,
	cout => \clk_6s_period|s_divCounter[19]~68\);

-- Location: FF_X100_Y39_N11
\clk_6s_period|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[19]~67_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(19));

-- Location: LCCOMB_X100_Y39_N12
\clk_6s_period|s_divCounter[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[20]~69_combout\ = (\clk_6s_period|s_divCounter\(20) & (\clk_6s_period|s_divCounter[19]~68\ $ (GND))) # (!\clk_6s_period|s_divCounter\(20) & (!\clk_6s_period|s_divCounter[19]~68\ & VCC))
-- \clk_6s_period|s_divCounter[20]~70\ = CARRY((\clk_6s_period|s_divCounter\(20) & !\clk_6s_period|s_divCounter[19]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(20),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[19]~68\,
	combout => \clk_6s_period|s_divCounter[20]~69_combout\,
	cout => \clk_6s_period|s_divCounter[20]~70\);

-- Location: FF_X100_Y39_N13
\clk_6s_period|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[20]~69_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(20));

-- Location: LCCOMB_X100_Y39_N14
\clk_6s_period|s_divCounter[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[21]~71_combout\ = (\clk_6s_period|s_divCounter\(21) & (!\clk_6s_period|s_divCounter[20]~70\)) # (!\clk_6s_period|s_divCounter\(21) & ((\clk_6s_period|s_divCounter[20]~70\) # (GND)))
-- \clk_6s_period|s_divCounter[21]~72\ = CARRY((!\clk_6s_period|s_divCounter[20]~70\) # (!\clk_6s_period|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_6s_period|s_divCounter\(21),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[20]~70\,
	combout => \clk_6s_period|s_divCounter[21]~71_combout\,
	cout => \clk_6s_period|s_divCounter[21]~72\);

-- Location: FF_X100_Y39_N15
\clk_6s_period|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[21]~71_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(21));

-- Location: LCCOMB_X100_Y39_N16
\clk_6s_period|s_divCounter[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[22]~73_combout\ = (\clk_6s_period|s_divCounter\(22) & (\clk_6s_period|s_divCounter[21]~72\ $ (GND))) # (!\clk_6s_period|s_divCounter\(22) & (!\clk_6s_period|s_divCounter[21]~72\ & VCC))
-- \clk_6s_period|s_divCounter[22]~74\ = CARRY((\clk_6s_period|s_divCounter\(22) & !\clk_6s_period|s_divCounter[21]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_6s_period|s_divCounter\(22),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[21]~72\,
	combout => \clk_6s_period|s_divCounter[22]~73_combout\,
	cout => \clk_6s_period|s_divCounter[22]~74\);

-- Location: FF_X100_Y39_N17
\clk_6s_period|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[22]~73_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(22));

-- Location: LCCOMB_X100_Y39_N18
\clk_6s_period|s_divCounter[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[23]~75_combout\ = (\clk_6s_period|s_divCounter\(23) & (!\clk_6s_period|s_divCounter[22]~74\)) # (!\clk_6s_period|s_divCounter\(23) & ((\clk_6s_period|s_divCounter[22]~74\) # (GND)))
-- \clk_6s_period|s_divCounter[23]~76\ = CARRY((!\clk_6s_period|s_divCounter[22]~74\) # (!\clk_6s_period|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_6s_period|s_divCounter\(23),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[22]~74\,
	combout => \clk_6s_period|s_divCounter[23]~75_combout\,
	cout => \clk_6s_period|s_divCounter[23]~76\);

-- Location: FF_X100_Y39_N19
\clk_6s_period|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[23]~75_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(23));

-- Location: LCCOMB_X100_Y39_N20
\clk_6s_period|s_divCounter[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[24]~77_combout\ = (\clk_6s_period|s_divCounter\(24) & (\clk_6s_period|s_divCounter[23]~76\ $ (GND))) # (!\clk_6s_period|s_divCounter\(24) & (!\clk_6s_period|s_divCounter[23]~76\ & VCC))
-- \clk_6s_period|s_divCounter[24]~78\ = CARRY((\clk_6s_period|s_divCounter\(24) & !\clk_6s_period|s_divCounter[23]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_6s_period|s_divCounter\(24),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[23]~76\,
	combout => \clk_6s_period|s_divCounter[24]~77_combout\,
	cout => \clk_6s_period|s_divCounter[24]~78\);

-- Location: FF_X100_Y39_N21
\clk_6s_period|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[24]~77_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(24));

-- Location: LCCOMB_X100_Y39_N22
\clk_6s_period|s_divCounter[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[25]~79_combout\ = (\clk_6s_period|s_divCounter\(25) & (!\clk_6s_period|s_divCounter[24]~78\)) # (!\clk_6s_period|s_divCounter\(25) & ((\clk_6s_period|s_divCounter[24]~78\) # (GND)))
-- \clk_6s_period|s_divCounter[25]~80\ = CARRY((!\clk_6s_period|s_divCounter[24]~78\) # (!\clk_6s_period|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(25),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[24]~78\,
	combout => \clk_6s_period|s_divCounter[25]~79_combout\,
	cout => \clk_6s_period|s_divCounter[25]~80\);

-- Location: FF_X100_Y39_N23
\clk_6s_period|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[25]~79_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(25));

-- Location: LCCOMB_X100_Y39_N24
\clk_6s_period|s_divCounter[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[26]~81_combout\ = (\clk_6s_period|s_divCounter\(26) & (\clk_6s_period|s_divCounter[25]~80\ $ (GND))) # (!\clk_6s_period|s_divCounter\(26) & (!\clk_6s_period|s_divCounter[25]~80\ & VCC))
-- \clk_6s_period|s_divCounter[26]~82\ = CARRY((\clk_6s_period|s_divCounter\(26) & !\clk_6s_period|s_divCounter[25]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_6s_period|s_divCounter\(26),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[25]~80\,
	combout => \clk_6s_period|s_divCounter[26]~81_combout\,
	cout => \clk_6s_period|s_divCounter[26]~82\);

-- Location: FF_X100_Y39_N25
\clk_6s_period|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[26]~81_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(26));

-- Location: LCCOMB_X100_Y39_N26
\clk_6s_period|s_divCounter[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[27]~83_combout\ = (\clk_6s_period|s_divCounter\(27) & (!\clk_6s_period|s_divCounter[26]~82\)) # (!\clk_6s_period|s_divCounter\(27) & ((\clk_6s_period|s_divCounter[26]~82\) # (GND)))
-- \clk_6s_period|s_divCounter[27]~84\ = CARRY((!\clk_6s_period|s_divCounter[26]~82\) # (!\clk_6s_period|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(27),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[26]~82\,
	combout => \clk_6s_period|s_divCounter[27]~83_combout\,
	cout => \clk_6s_period|s_divCounter[27]~84\);

-- Location: FF_X100_Y39_N27
\clk_6s_period|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[27]~83_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(27));

-- Location: LCCOMB_X100_Y39_N30
\clk_6s_period|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|LessThan0~2_combout\ = (((!\clk_6s_period|s_divCounter\(24)) # (!\clk_6s_period|s_divCounter\(21))) # (!\clk_6s_period|s_divCounter\(22))) # (!\clk_6s_period|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(23),
	datab => \clk_6s_period|s_divCounter\(22),
	datac => \clk_6s_period|s_divCounter\(21),
	datad => \clk_6s_period|s_divCounter\(24),
	combout => \clk_6s_period|LessThan0~2_combout\);

-- Location: LCCOMB_X101_Y40_N18
\clk_6s_period|LessThan0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|LessThan0~12_combout\ = (!\clk_6s_period|s_divCounter\(25) & (!\clk_6s_period|s_divCounter\(26) & (!\clk_6s_period|s_divCounter\(27) & \clk_6s_period|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(25),
	datab => \clk_6s_period|s_divCounter\(26),
	datac => \clk_6s_period|s_divCounter\(27),
	datad => \clk_6s_period|LessThan0~2_combout\,
	combout => \clk_6s_period|LessThan0~12_combout\);

-- Location: LCCOMB_X101_Y40_N30
\clk_6s_period|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|LessThan0~11_combout\ = (!\clk_6s_period|LessThan0~12_combout\ & !\clk_6s_period|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_6s_period|LessThan0~12_combout\,
	datad => \clk_6s_period|LessThan0~10_combout\,
	combout => \clk_6s_period|LessThan0~11_combout\);

-- Location: FF_X100_Y40_N5
\clk_6s_period|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[0]~29_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(0));

-- Location: LCCOMB_X100_Y40_N6
\clk_6s_period|s_divCounter[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[1]~31_combout\ = (\clk_6s_period|s_divCounter\(1) & (!\clk_6s_period|s_divCounter[0]~30\)) # (!\clk_6s_period|s_divCounter\(1) & ((\clk_6s_period|s_divCounter[0]~30\) # (GND)))
-- \clk_6s_period|s_divCounter[1]~32\ = CARRY((!\clk_6s_period|s_divCounter[0]~30\) # (!\clk_6s_period|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(1),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[0]~30\,
	combout => \clk_6s_period|s_divCounter[1]~31_combout\,
	cout => \clk_6s_period|s_divCounter[1]~32\);

-- Location: FF_X100_Y40_N7
\clk_6s_period|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[1]~31_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(1));

-- Location: LCCOMB_X100_Y40_N8
\clk_6s_period|s_divCounter[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[2]~33_combout\ = (\clk_6s_period|s_divCounter\(2) & (\clk_6s_period|s_divCounter[1]~32\ $ (GND))) # (!\clk_6s_period|s_divCounter\(2) & (!\clk_6s_period|s_divCounter[1]~32\ & VCC))
-- \clk_6s_period|s_divCounter[2]~34\ = CARRY((\clk_6s_period|s_divCounter\(2) & !\clk_6s_period|s_divCounter[1]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_6s_period|s_divCounter\(2),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[1]~32\,
	combout => \clk_6s_period|s_divCounter[2]~33_combout\,
	cout => \clk_6s_period|s_divCounter[2]~34\);

-- Location: FF_X100_Y40_N9
\clk_6s_period|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[2]~33_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(2));

-- Location: LCCOMB_X100_Y40_N10
\clk_6s_period|s_divCounter[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[3]~35_combout\ = (\clk_6s_period|s_divCounter\(3) & (!\clk_6s_period|s_divCounter[2]~34\)) # (!\clk_6s_period|s_divCounter\(3) & ((\clk_6s_period|s_divCounter[2]~34\) # (GND)))
-- \clk_6s_period|s_divCounter[3]~36\ = CARRY((!\clk_6s_period|s_divCounter[2]~34\) # (!\clk_6s_period|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(3),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[2]~34\,
	combout => \clk_6s_period|s_divCounter[3]~35_combout\,
	cout => \clk_6s_period|s_divCounter[3]~36\);

-- Location: FF_X100_Y40_N11
\clk_6s_period|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[3]~35_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(3));

-- Location: LCCOMB_X100_Y40_N12
\clk_6s_period|s_divCounter[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[4]~37_combout\ = (\clk_6s_period|s_divCounter\(4) & (\clk_6s_period|s_divCounter[3]~36\ $ (GND))) # (!\clk_6s_period|s_divCounter\(4) & (!\clk_6s_period|s_divCounter[3]~36\ & VCC))
-- \clk_6s_period|s_divCounter[4]~38\ = CARRY((\clk_6s_period|s_divCounter\(4) & !\clk_6s_period|s_divCounter[3]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(4),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[3]~36\,
	combout => \clk_6s_period|s_divCounter[4]~37_combout\,
	cout => \clk_6s_period|s_divCounter[4]~38\);

-- Location: FF_X100_Y40_N13
\clk_6s_period|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[4]~37_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(4));

-- Location: LCCOMB_X100_Y40_N14
\clk_6s_period|s_divCounter[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[5]~39_combout\ = (\clk_6s_period|s_divCounter\(5) & (!\clk_6s_period|s_divCounter[4]~38\)) # (!\clk_6s_period|s_divCounter\(5) & ((\clk_6s_period|s_divCounter[4]~38\) # (GND)))
-- \clk_6s_period|s_divCounter[5]~40\ = CARRY((!\clk_6s_period|s_divCounter[4]~38\) # (!\clk_6s_period|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_6s_period|s_divCounter\(5),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[4]~38\,
	combout => \clk_6s_period|s_divCounter[5]~39_combout\,
	cout => \clk_6s_period|s_divCounter[5]~40\);

-- Location: FF_X100_Y40_N15
\clk_6s_period|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[5]~39_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(5));

-- Location: LCCOMB_X100_Y40_N16
\clk_6s_period|s_divCounter[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[6]~41_combout\ = (\clk_6s_period|s_divCounter\(6) & (\clk_6s_period|s_divCounter[5]~40\ $ (GND))) # (!\clk_6s_period|s_divCounter\(6) & (!\clk_6s_period|s_divCounter[5]~40\ & VCC))
-- \clk_6s_period|s_divCounter[6]~42\ = CARRY((\clk_6s_period|s_divCounter\(6) & !\clk_6s_period|s_divCounter[5]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_6s_period|s_divCounter\(6),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[5]~40\,
	combout => \clk_6s_period|s_divCounter[6]~41_combout\,
	cout => \clk_6s_period|s_divCounter[6]~42\);

-- Location: FF_X100_Y40_N17
\clk_6s_period|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[6]~41_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(6));

-- Location: LCCOMB_X100_Y40_N18
\clk_6s_period|s_divCounter[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[7]~43_combout\ = (\clk_6s_period|s_divCounter\(7) & (!\clk_6s_period|s_divCounter[6]~42\)) # (!\clk_6s_period|s_divCounter\(7) & ((\clk_6s_period|s_divCounter[6]~42\) # (GND)))
-- \clk_6s_period|s_divCounter[7]~44\ = CARRY((!\clk_6s_period|s_divCounter[6]~42\) # (!\clk_6s_period|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_6s_period|s_divCounter\(7),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[6]~42\,
	combout => \clk_6s_period|s_divCounter[7]~43_combout\,
	cout => \clk_6s_period|s_divCounter[7]~44\);

-- Location: FF_X100_Y40_N19
\clk_6s_period|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[7]~43_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(7));

-- Location: LCCOMB_X100_Y40_N20
\clk_6s_period|s_divCounter[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[8]~45_combout\ = (\clk_6s_period|s_divCounter\(8) & (\clk_6s_period|s_divCounter[7]~44\ $ (GND))) # (!\clk_6s_period|s_divCounter\(8) & (!\clk_6s_period|s_divCounter[7]~44\ & VCC))
-- \clk_6s_period|s_divCounter[8]~46\ = CARRY((\clk_6s_period|s_divCounter\(8) & !\clk_6s_period|s_divCounter[7]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_6s_period|s_divCounter\(8),
	datad => VCC,
	cin => \clk_6s_period|s_divCounter[7]~44\,
	combout => \clk_6s_period|s_divCounter[8]~45_combout\,
	cout => \clk_6s_period|s_divCounter[8]~46\);

-- Location: FF_X100_Y40_N21
\clk_6s_period|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[8]~45_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(8));

-- Location: FF_X100_Y40_N23
\clk_6s_period|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[9]~47_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(9));

-- Location: LCCOMB_X101_Y40_N16
\clk_6s_period|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|LessThan0~7_combout\ = (!\clk_6s_period|s_divCounter\(11) & (!\clk_6s_period|s_divCounter\(10) & !\clk_6s_period|s_divCounter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(11),
	datac => \clk_6s_period|s_divCounter\(10),
	datad => \clk_6s_period|s_divCounter\(12),
	combout => \clk_6s_period|LessThan0~7_combout\);

-- Location: LCCOMB_X101_Y40_N20
\clk_6s_period|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|LessThan0~8_combout\ = ((!\clk_6s_period|s_divCounter\(9) & \clk_6s_period|LessThan0~7_combout\)) # (!\clk_6s_period|s_divCounter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_6s_period|s_divCounter\(9),
	datac => \clk_6s_period|s_divCounter\(13),
	datad => \clk_6s_period|LessThan0~7_combout\,
	combout => \clk_6s_period|LessThan0~8_combout\);

-- Location: LCCOMB_X101_Y40_N14
\clk_6s_period|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|clkOut~2_combout\ = (!\clk_6s_period|s_divCounter\(19) & (!\clk_6s_period|s_divCounter\(18) & !\clk_6s_period|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(19),
	datac => \clk_6s_period|s_divCounter\(18),
	datad => \clk_6s_period|s_divCounter\(17),
	combout => \clk_6s_period|clkOut~2_combout\);

-- Location: LCCOMB_X101_Y40_N4
\clk_6s_period|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|LessThan0~3_combout\ = (!\clk_6s_period|s_divCounter\(26) & (!\clk_6s_period|s_divCounter\(27) & !\clk_6s_period|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_6s_period|s_divCounter\(26),
	datac => \clk_6s_period|s_divCounter\(27),
	datad => \clk_6s_period|s_divCounter\(25),
	combout => \clk_6s_period|LessThan0~3_combout\);

-- Location: LCCOMB_X101_Y40_N8
\clk_6s_period|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|LessThan0~6_combout\ = (!\clk_6s_period|s_divCounter\(20) & (!\clk_6s_period|s_divCounter\(14) & (\clk_6s_period|clkOut~2_combout\ & \clk_6s_period|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(20),
	datab => \clk_6s_period|s_divCounter\(14),
	datac => \clk_6s_period|clkOut~2_combout\,
	datad => \clk_6s_period|LessThan0~3_combout\,
	combout => \clk_6s_period|LessThan0~6_combout\);

-- Location: LCCOMB_X100_Y39_N28
\clk_6s_period|s_divCounter[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|s_divCounter[28]~85_combout\ = \clk_6s_period|s_divCounter[27]~84\ $ (!\clk_6s_period|s_divCounter\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clk_6s_period|s_divCounter\(28),
	cin => \clk_6s_period|s_divCounter[27]~84\,
	combout => \clk_6s_period|s_divCounter[28]~85_combout\);

-- Location: FF_X100_Y39_N29
\clk_6s_period|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_6s_period|s_divCounter[28]~85_combout\,
	sclr => \clk_6s_period|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|s_divCounter\(28));

-- Location: LCCOMB_X101_Y40_N12
\clk_6s_period|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|LessThan0~4_combout\ = (!\clk_6s_period|s_divCounter\(20) & ((!\clk_6s_period|s_divCounter\(16)) # (!\clk_6s_period|s_divCounter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_6s_period|s_divCounter\(15),
	datac => \clk_6s_period|s_divCounter\(16),
	datad => \clk_6s_period|s_divCounter\(20),
	combout => \clk_6s_period|LessThan0~4_combout\);

-- Location: LCCOMB_X101_Y40_N26
\clk_6s_period|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|LessThan0~5_combout\ = ((\clk_6s_period|clkOut~2_combout\ & (\clk_6s_period|LessThan0~3_combout\ & \clk_6s_period|LessThan0~4_combout\))) # (!\clk_6s_period|s_divCounter\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(28),
	datab => \clk_6s_period|clkOut~2_combout\,
	datac => \clk_6s_period|LessThan0~3_combout\,
	datad => \clk_6s_period|LessThan0~4_combout\,
	combout => \clk_6s_period|LessThan0~5_combout\);

-- Location: LCCOMB_X100_Y40_N0
\clk_6s_period|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|clkOut~0_combout\ = (\clk_6s_period|s_divCounter\(1) & (\clk_6s_period|s_divCounter\(0) & (\clk_6s_period|s_divCounter\(2) & \clk_6s_period|s_divCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(1),
	datab => \clk_6s_period|s_divCounter\(0),
	datac => \clk_6s_period|s_divCounter\(2),
	datad => \clk_6s_period|s_divCounter\(3),
	combout => \clk_6s_period|clkOut~0_combout\);

-- Location: LCCOMB_X100_Y40_N2
\clk_6s_period|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|clkOut~1_combout\ = (\clk_6s_period|s_divCounter\(4) & (\clk_6s_period|s_divCounter\(6) & (\clk_6s_period|s_divCounter\(5) & \clk_6s_period|clkOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(4),
	datab => \clk_6s_period|s_divCounter\(6),
	datac => \clk_6s_period|s_divCounter\(5),
	datad => \clk_6s_period|clkOut~0_combout\,
	combout => \clk_6s_period|clkOut~1_combout\);

-- Location: LCCOMB_X101_Y40_N28
\clk_6s_period|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|LessThan0~9_combout\ = (\clk_6s_period|LessThan0~7_combout\ & (!\clk_6s_period|s_divCounter\(8) & ((!\clk_6s_period|clkOut~1_combout\) # (!\clk_6s_period|s_divCounter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(7),
	datab => \clk_6s_period|LessThan0~7_combout\,
	datac => \clk_6s_period|s_divCounter\(8),
	datad => \clk_6s_period|clkOut~1_combout\,
	combout => \clk_6s_period|LessThan0~9_combout\);

-- Location: LCCOMB_X101_Y40_N10
\clk_6s_period|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|LessThan0~10_combout\ = (\clk_6s_period|LessThan0~5_combout\) # ((\clk_6s_period|LessThan0~6_combout\ & ((\clk_6s_period|LessThan0~8_combout\) # (\clk_6s_period|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|LessThan0~8_combout\,
	datab => \clk_6s_period|LessThan0~6_combout\,
	datac => \clk_6s_period|LessThan0~5_combout\,
	datad => \clk_6s_period|LessThan0~9_combout\,
	combout => \clk_6s_period|LessThan0~10_combout\);

-- Location: LCCOMB_X101_Y39_N0
\clk_6s_period|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|clkOut~5_combout\ = (\clk_6s_period|s_divCounter\(21) & (\clk_6s_period|s_divCounter\(23) & (\clk_6s_period|s_divCounter\(22) & \clk_6s_period|s_divCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(21),
	datab => \clk_6s_period|s_divCounter\(23),
	datac => \clk_6s_period|s_divCounter\(22),
	datad => \clk_6s_period|s_divCounter\(8),
	combout => \clk_6s_period|clkOut~5_combout\);

-- Location: LCCOMB_X102_Y40_N10
\clk_6s_period|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|clkOut~6_combout\ = (\clk_6s_period|s_divCounter\(14) & (\clk_6s_period|s_divCounter\(12) & (!\clk_6s_period|s_divCounter\(13) & !\clk_6s_period|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(14),
	datab => \clk_6s_period|s_divCounter\(12),
	datac => \clk_6s_period|s_divCounter\(13),
	datad => \clk_6s_period|s_divCounter\(9),
	combout => \clk_6s_period|clkOut~6_combout\);

-- Location: LCCOMB_X101_Y40_N22
\clk_6s_period|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|clkOut~3_combout\ = (!\clk_6s_period|s_divCounter\(11) & (!\clk_6s_period|s_divCounter\(26) & (!\clk_6s_period|s_divCounter\(10) & !\clk_6s_period|s_divCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(11),
	datab => \clk_6s_period|s_divCounter\(26),
	datac => \clk_6s_period|s_divCounter\(10),
	datad => \clk_6s_period|s_divCounter\(25),
	combout => \clk_6s_period|clkOut~3_combout\);

-- Location: LCCOMB_X101_Y40_N2
\clk_6s_period|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|clkOut~4_combout\ = (!\clk_6s_period|s_divCounter\(7) & (\clk_6s_period|clkOut~2_combout\ & (\clk_6s_period|clkOut~3_combout\ & \clk_6s_period|clkOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(7),
	datab => \clk_6s_period|clkOut~2_combout\,
	datac => \clk_6s_period|clkOut~3_combout\,
	datad => \clk_6s_period|clkOut~1_combout\,
	combout => \clk_6s_period|clkOut~4_combout\);

-- Location: LCCOMB_X101_Y39_N2
\clk_6s_period|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|clkOut~7_combout\ = (\clk_6s_period|s_divCounter\(20) & (!\clk_6s_period|s_divCounter\(24) & (!\clk_6s_period|s_divCounter\(16) & \clk_6s_period|s_divCounter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(20),
	datab => \clk_6s_period|s_divCounter\(24),
	datac => \clk_6s_period|s_divCounter\(16),
	datad => \clk_6s_period|s_divCounter\(15),
	combout => \clk_6s_period|clkOut~7_combout\);

-- Location: LCCOMB_X101_Y40_N24
\clk_6s_period|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|clkOut~8_combout\ = (\clk_6s_period|s_divCounter\(27) & (!\clk_6s_period|s_divCounter\(28) & \clk_6s_period|clkOut~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|s_divCounter\(27),
	datab => \clk_6s_period|s_divCounter\(28),
	datad => \clk_6s_period|clkOut~7_combout\,
	combout => \clk_6s_period|clkOut~8_combout\);

-- Location: LCCOMB_X101_Y40_N0
\clk_6s_period|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|clkOut~9_combout\ = (\clk_6s_period|clkOut~5_combout\ & (\clk_6s_period|clkOut~6_combout\ & (\clk_6s_period|clkOut~4_combout\ & \clk_6s_period|clkOut~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|clkOut~5_combout\,
	datab => \clk_6s_period|clkOut~6_combout\,
	datac => \clk_6s_period|clkOut~4_combout\,
	datad => \clk_6s_period|clkOut~8_combout\,
	combout => \clk_6s_period|clkOut~9_combout\);

-- Location: LCCOMB_X101_Y40_N6
\clk_6s_period|clkOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6s_period|clkOut~10_combout\ = (\clk_6s_period|LessThan0~10_combout\ & (((\clk_6s_period|clkOut~q\) # (\clk_6s_period|clkOut~9_combout\)))) # (!\clk_6s_period|LessThan0~10_combout\ & (\clk_6s_period|LessThan0~12_combout\ & ((\clk_6s_period|clkOut~q\) 
-- # (\clk_6s_period|clkOut~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_6s_period|LessThan0~10_combout\,
	datab => \clk_6s_period|LessThan0~12_combout\,
	datac => \clk_6s_period|clkOut~q\,
	datad => \clk_6s_period|clkOut~9_combout\,
	combout => \clk_6s_period|clkOut~10_combout\);

-- Location: FF_X101_Y40_N25
\clk_6s_period|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clk_6s_period|clkOut~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6s_period|clkOut~q\);

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

-- Location: LCCOMB_X102_Y40_N4
\enable_6s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable_6s~0_combout\ = \enable_6s~q\ $ (((\SW[1]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \enable_6s~q\,
	datad => \SW[0]~input_o\,
	combout => \enable_6s~0_combout\);

-- Location: FF_X102_Y40_N5
enable_6s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_6s_period|clkOut~q\,
	d => \enable_6s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_6s~q\);

-- Location: LCCOMB_X91_Y43_N8
\u_blink_2hz|s_counter[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[0]~25_combout\ = \u_blink_2hz|s_counter\(0) $ (VCC)
-- \u_blink_2hz|s_counter[0]~26\ = CARRY(\u_blink_2hz|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_2hz|s_counter\(0),
	datad => VCC,
	combout => \u_blink_2hz|s_counter[0]~25_combout\,
	cout => \u_blink_2hz|s_counter[0]~26\);

-- Location: LCCOMB_X91_Y42_N20
\u_blink_2hz|s_counter[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[22]~69_combout\ = (\u_blink_2hz|s_counter\(22) & (\u_blink_2hz|s_counter[21]~68\ $ (GND))) # (!\u_blink_2hz|s_counter\(22) & (!\u_blink_2hz|s_counter[21]~68\ & VCC))
-- \u_blink_2hz|s_counter[22]~70\ = CARRY((\u_blink_2hz|s_counter\(22) & !\u_blink_2hz|s_counter[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_2hz|s_counter\(22),
	datad => VCC,
	cin => \u_blink_2hz|s_counter[21]~68\,
	combout => \u_blink_2hz|s_counter[22]~69_combout\,
	cout => \u_blink_2hz|s_counter[22]~70\);

-- Location: LCCOMB_X91_Y42_N22
\u_blink_2hz|s_counter[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[23]~71_combout\ = (\u_blink_2hz|s_counter\(23) & (!\u_blink_2hz|s_counter[22]~70\)) # (!\u_blink_2hz|s_counter\(23) & ((\u_blink_2hz|s_counter[22]~70\) # (GND)))
-- \u_blink_2hz|s_counter[23]~72\ = CARRY((!\u_blink_2hz|s_counter[22]~70\) # (!\u_blink_2hz|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_2hz|s_counter\(23),
	datad => VCC,
	cin => \u_blink_2hz|s_counter[22]~70\,
	combout => \u_blink_2hz|s_counter[23]~71_combout\,
	cout => \u_blink_2hz|s_counter[23]~72\);

-- Location: FF_X91_Y42_N23
\u_blink_2hz|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_2hz|s_counter[23]~71_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(23));

-- Location: LCCOMB_X92_Y43_N10
\u_blink_2hz|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|LessThan0~2_combout\ = (((!\u_blink_2hz|s_counter\(1)) # (!\u_blink_2hz|s_counter\(2))) # (!\u_blink_2hz|s_counter\(5))) # (!\u_blink_2hz|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_2hz|s_counter\(0),
	datab => \u_blink_2hz|s_counter\(5),
	datac => \u_blink_2hz|s_counter\(2),
	datad => \u_blink_2hz|s_counter\(1),
	combout => \u_blink_2hz|LessThan0~2_combout\);

-- Location: LCCOMB_X91_Y43_N4
\u_blink_2hz|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|LessThan0~0_combout\ = (!\u_blink_2hz|s_counter\(7) & (!\u_blink_2hz|s_counter\(6) & (!\u_blink_2hz|s_counter\(9) & !\u_blink_2hz|s_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_2hz|s_counter\(7),
	datab => \u_blink_2hz|s_counter\(6),
	datac => \u_blink_2hz|s_counter\(9),
	datad => \u_blink_2hz|s_counter\(8),
	combout => \u_blink_2hz|LessThan0~0_combout\);

-- Location: LCCOMB_X91_Y43_N2
\u_blink_2hz|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|LessThan0~1_combout\ = (!\u_blink_2hz|s_counter\(15) & (!\u_blink_2hz|s_counter\(10) & (\u_blink_2hz|LessThan0~0_combout\ & !\u_blink_2hz|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_2hz|s_counter\(15),
	datab => \u_blink_2hz|s_counter\(10),
	datac => \u_blink_2hz|LessThan0~0_combout\,
	datad => \u_blink_2hz|s_counter\(17),
	combout => \u_blink_2hz|LessThan0~1_combout\);

-- Location: LCCOMB_X91_Y43_N0
\u_blink_2hz|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|LessThan0~3_combout\ = (\u_blink_2hz|LessThan0~1_combout\ & (((\u_blink_2hz|LessThan0~2_combout\) # (!\u_blink_2hz|s_counter\(4))) # (!\u_blink_2hz|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_2hz|s_counter\(3),
	datab => \u_blink_2hz|s_counter\(4),
	datac => \u_blink_2hz|LessThan0~2_combout\,
	datad => \u_blink_2hz|LessThan0~1_combout\,
	combout => \u_blink_2hz|LessThan0~3_combout\);

-- Location: LCCOMB_X91_Y42_N24
\u_blink_2hz|s_counter[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[24]~73_combout\ = \u_blink_2hz|s_counter[23]~72\ $ (!\u_blink_2hz|s_counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_blink_2hz|s_counter\(24),
	cin => \u_blink_2hz|s_counter[23]~72\,
	combout => \u_blink_2hz|s_counter[24]~73_combout\);

-- Location: FF_X91_Y42_N25
\u_blink_2hz|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_2hz|s_counter[24]~73_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(24));

-- Location: LCCOMB_X92_Y43_N14
\u_blink_2hz|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|LessThan0~5_combout\ = (((!\u_blink_2hz|s_counter\(12)) # (!\u_blink_2hz|s_counter\(13))) # (!\u_blink_2hz|s_counter\(11))) # (!\u_blink_2hz|s_counter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_2hz|s_counter\(14),
	datab => \u_blink_2hz|s_counter\(11),
	datac => \u_blink_2hz|s_counter\(13),
	datad => \u_blink_2hz|s_counter\(12),
	combout => \u_blink_2hz|LessThan0~5_combout\);

-- Location: LCCOMB_X91_Y42_N26
\LEDR~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~4_combout\ = (\u_blink_2hz|s_counter\(18) & (\u_blink_2hz|s_counter\(21) & (\u_blink_2hz|s_counter\(19) & \u_blink_2hz|s_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_2hz|s_counter\(18),
	datab => \u_blink_2hz|s_counter\(21),
	datac => \u_blink_2hz|s_counter\(19),
	datad => \u_blink_2hz|s_counter\(20),
	combout => \LEDR~4_combout\);

-- Location: LCCOMB_X92_Y43_N12
\u_blink_2hz|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|LessThan0~4_combout\ = (((!\u_blink_2hz|s_counter\(17) & !\u_blink_2hz|s_counter\(16))) # (!\LEDR~4_combout\)) # (!\u_blink_2hz|s_counter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_2hz|s_counter\(17),
	datab => \u_blink_2hz|s_counter\(22),
	datac => \u_blink_2hz|s_counter\(16),
	datad => \LEDR~4_combout\,
	combout => \u_blink_2hz|LessThan0~4_combout\);

-- Location: LCCOMB_X92_Y43_N28
\u_blink_2hz|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|LessThan0~6_combout\ = (\u_blink_2hz|LessThan0~4_combout\) # ((!\u_blink_2hz|s_counter\(15) & (\u_blink_2hz|LessThan0~5_combout\ & !\u_blink_2hz|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_2hz|s_counter\(15),
	datab => \u_blink_2hz|LessThan0~5_combout\,
	datac => \u_blink_2hz|s_counter\(17),
	datad => \u_blink_2hz|LessThan0~4_combout\,
	combout => \u_blink_2hz|LessThan0~6_combout\);

-- Location: LCCOMB_X91_Y43_N6
\u_blink_2hz|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|LessThan0~7_combout\ = (\u_blink_2hz|s_counter\(24) & ((\u_blink_2hz|s_counter\(23)) # ((!\u_blink_2hz|LessThan0~3_combout\ & !\u_blink_2hz|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_2hz|s_counter\(23),
	datab => \u_blink_2hz|LessThan0~3_combout\,
	datac => \u_blink_2hz|s_counter\(24),
	datad => \u_blink_2hz|LessThan0~6_combout\,
	combout => \u_blink_2hz|LessThan0~7_combout\);

-- Location: FF_X91_Y43_N9
\u_blink_2hz|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_2hz|s_counter[0]~25_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(0));

-- Location: LCCOMB_X91_Y43_N10
\u_blink_2hz|s_counter[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[1]~27_combout\ = (\u_blink_2hz|s_counter\(1) & (!\u_blink_2hz|s_counter[0]~26\)) # (!\u_blink_2hz|s_counter\(1) & ((\u_blink_2hz|s_counter[0]~26\) # (GND)))
-- \u_blink_2hz|s_counter[1]~28\ = CARRY((!\u_blink_2hz|s_counter[0]~26\) # (!\u_blink_2hz|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_2hz|s_counter\(1),
	datad => VCC,
	cin => \u_blink_2hz|s_counter[0]~26\,
	combout => \u_blink_2hz|s_counter[1]~27_combout\,
	cout => \u_blink_2hz|s_counter[1]~28\);

-- Location: FF_X91_Y43_N11
\u_blink_2hz|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_2hz|s_counter[1]~27_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(1));

-- Location: LCCOMB_X91_Y43_N12
\u_blink_2hz|s_counter[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[2]~29_combout\ = (\u_blink_2hz|s_counter\(2) & (\u_blink_2hz|s_counter[1]~28\ $ (GND))) # (!\u_blink_2hz|s_counter\(2) & (!\u_blink_2hz|s_counter[1]~28\ & VCC))
-- \u_blink_2hz|s_counter[2]~30\ = CARRY((\u_blink_2hz|s_counter\(2) & !\u_blink_2hz|s_counter[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_2hz|s_counter\(2),
	datad => VCC,
	cin => \u_blink_2hz|s_counter[1]~28\,
	combout => \u_blink_2hz|s_counter[2]~29_combout\,
	cout => \u_blink_2hz|s_counter[2]~30\);

-- Location: FF_X91_Y43_N13
\u_blink_2hz|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_2hz|s_counter[2]~29_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(2));

-- Location: LCCOMB_X91_Y43_N14
\u_blink_2hz|s_counter[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[3]~31_combout\ = (\u_blink_2hz|s_counter\(3) & (!\u_blink_2hz|s_counter[2]~30\)) # (!\u_blink_2hz|s_counter\(3) & ((\u_blink_2hz|s_counter[2]~30\) # (GND)))
-- \u_blink_2hz|s_counter[3]~32\ = CARRY((!\u_blink_2hz|s_counter[2]~30\) # (!\u_blink_2hz|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_2hz|s_counter\(3),
	datad => VCC,
	cin => \u_blink_2hz|s_counter[2]~30\,
	combout => \u_blink_2hz|s_counter[3]~31_combout\,
	cout => \u_blink_2hz|s_counter[3]~32\);

-- Location: FF_X91_Y43_N15
\u_blink_2hz|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_2hz|s_counter[3]~31_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(3));

-- Location: LCCOMB_X91_Y43_N16
\u_blink_2hz|s_counter[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[4]~33_combout\ = (\u_blink_2hz|s_counter\(4) & (\u_blink_2hz|s_counter[3]~32\ $ (GND))) # (!\u_blink_2hz|s_counter\(4) & (!\u_blink_2hz|s_counter[3]~32\ & VCC))
-- \u_blink_2hz|s_counter[4]~34\ = CARRY((\u_blink_2hz|s_counter\(4) & !\u_blink_2hz|s_counter[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_2hz|s_counter\(4),
	datad => VCC,
	cin => \u_blink_2hz|s_counter[3]~32\,
	combout => \u_blink_2hz|s_counter[4]~33_combout\,
	cout => \u_blink_2hz|s_counter[4]~34\);

-- Location: FF_X91_Y43_N17
\u_blink_2hz|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_2hz|s_counter[4]~33_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(4));

-- Location: LCCOMB_X91_Y43_N18
\u_blink_2hz|s_counter[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[5]~35_combout\ = (\u_blink_2hz|s_counter\(5) & (!\u_blink_2hz|s_counter[4]~34\)) # (!\u_blink_2hz|s_counter\(5) & ((\u_blink_2hz|s_counter[4]~34\) # (GND)))
-- \u_blink_2hz|s_counter[5]~36\ = CARRY((!\u_blink_2hz|s_counter[4]~34\) # (!\u_blink_2hz|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_2hz|s_counter\(5),
	datad => VCC,
	cin => \u_blink_2hz|s_counter[4]~34\,
	combout => \u_blink_2hz|s_counter[5]~35_combout\,
	cout => \u_blink_2hz|s_counter[5]~36\);

-- Location: FF_X91_Y43_N19
\u_blink_2hz|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_2hz|s_counter[5]~35_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(5));

-- Location: LCCOMB_X91_Y43_N20
\u_blink_2hz|s_counter[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[6]~37_combout\ = (\u_blink_2hz|s_counter\(6) & (\u_blink_2hz|s_counter[5]~36\ $ (GND))) # (!\u_blink_2hz|s_counter\(6) & (!\u_blink_2hz|s_counter[5]~36\ & VCC))
-- \u_blink_2hz|s_counter[6]~38\ = CARRY((\u_blink_2hz|s_counter\(6) & !\u_blink_2hz|s_counter[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_2hz|s_counter\(6),
	datad => VCC,
	cin => \u_blink_2hz|s_counter[5]~36\,
	combout => \u_blink_2hz|s_counter[6]~37_combout\,
	cout => \u_blink_2hz|s_counter[6]~38\);

-- Location: FF_X91_Y43_N21
\u_blink_2hz|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_2hz|s_counter[6]~37_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(6));

-- Location: LCCOMB_X91_Y43_N22
\u_blink_2hz|s_counter[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[7]~39_combout\ = (\u_blink_2hz|s_counter\(7) & (!\u_blink_2hz|s_counter[6]~38\)) # (!\u_blink_2hz|s_counter\(7) & ((\u_blink_2hz|s_counter[6]~38\) # (GND)))
-- \u_blink_2hz|s_counter[7]~40\ = CARRY((!\u_blink_2hz|s_counter[6]~38\) # (!\u_blink_2hz|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_2hz|s_counter\(7),
	datad => VCC,
	cin => \u_blink_2hz|s_counter[6]~38\,
	combout => \u_blink_2hz|s_counter[7]~39_combout\,
	cout => \u_blink_2hz|s_counter[7]~40\);

-- Location: FF_X91_Y43_N23
\u_blink_2hz|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_2hz|s_counter[7]~39_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(7));

-- Location: LCCOMB_X91_Y43_N24
\u_blink_2hz|s_counter[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[8]~41_combout\ = (\u_blink_2hz|s_counter\(8) & (\u_blink_2hz|s_counter[7]~40\ $ (GND))) # (!\u_blink_2hz|s_counter\(8) & (!\u_blink_2hz|s_counter[7]~40\ & VCC))
-- \u_blink_2hz|s_counter[8]~42\ = CARRY((\u_blink_2hz|s_counter\(8) & !\u_blink_2hz|s_counter[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_2hz|s_counter\(8),
	datad => VCC,
	cin => \u_blink_2hz|s_counter[7]~40\,
	combout => \u_blink_2hz|s_counter[8]~41_combout\,
	cout => \u_blink_2hz|s_counter[8]~42\);

-- Location: FF_X91_Y43_N25
\u_blink_2hz|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_2hz|s_counter[8]~41_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(8));

-- Location: LCCOMB_X91_Y43_N26
\u_blink_2hz|s_counter[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[9]~43_combout\ = (\u_blink_2hz|s_counter\(9) & (!\u_blink_2hz|s_counter[8]~42\)) # (!\u_blink_2hz|s_counter\(9) & ((\u_blink_2hz|s_counter[8]~42\) # (GND)))
-- \u_blink_2hz|s_counter[9]~44\ = CARRY((!\u_blink_2hz|s_counter[8]~42\) # (!\u_blink_2hz|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_2hz|s_counter\(9),
	datad => VCC,
	cin => \u_blink_2hz|s_counter[8]~42\,
	combout => \u_blink_2hz|s_counter[9]~43_combout\,
	cout => \u_blink_2hz|s_counter[9]~44\);

-- Location: FF_X91_Y43_N27
\u_blink_2hz|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_2hz|s_counter[9]~43_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(9));

-- Location: LCCOMB_X91_Y43_N28
\u_blink_2hz|s_counter[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[10]~45_combout\ = (\u_blink_2hz|s_counter\(10) & (\u_blink_2hz|s_counter[9]~44\ $ (GND))) # (!\u_blink_2hz|s_counter\(10) & (!\u_blink_2hz|s_counter[9]~44\ & VCC))
-- \u_blink_2hz|s_counter[10]~46\ = CARRY((\u_blink_2hz|s_counter\(10) & !\u_blink_2hz|s_counter[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_2hz|s_counter\(10),
	datad => VCC,
	cin => \u_blink_2hz|s_counter[9]~44\,
	combout => \u_blink_2hz|s_counter[10]~45_combout\,
	cout => \u_blink_2hz|s_counter[10]~46\);

-- Location: FF_X91_Y43_N29
\u_blink_2hz|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_2hz|s_counter[10]~45_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(10));

-- Location: LCCOMB_X91_Y43_N30
\u_blink_2hz|s_counter[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[11]~47_combout\ = (\u_blink_2hz|s_counter\(11) & (!\u_blink_2hz|s_counter[10]~46\)) # (!\u_blink_2hz|s_counter\(11) & ((\u_blink_2hz|s_counter[10]~46\) # (GND)))
-- \u_blink_2hz|s_counter[11]~48\ = CARRY((!\u_blink_2hz|s_counter[10]~46\) # (!\u_blink_2hz|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_2hz|s_counter\(11),
	datad => VCC,
	cin => \u_blink_2hz|s_counter[10]~46\,
	combout => \u_blink_2hz|s_counter[11]~47_combout\,
	cout => \u_blink_2hz|s_counter[11]~48\);

-- Location: FF_X91_Y43_N31
\u_blink_2hz|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_2hz|s_counter[11]~47_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(11));

-- Location: LCCOMB_X91_Y42_N0
\u_blink_2hz|s_counter[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[12]~49_combout\ = (\u_blink_2hz|s_counter\(12) & (\u_blink_2hz|s_counter[11]~48\ $ (GND))) # (!\u_blink_2hz|s_counter\(12) & (!\u_blink_2hz|s_counter[11]~48\ & VCC))
-- \u_blink_2hz|s_counter[12]~50\ = CARRY((\u_blink_2hz|s_counter\(12) & !\u_blink_2hz|s_counter[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_2hz|s_counter\(12),
	datad => VCC,
	cin => \u_blink_2hz|s_counter[11]~48\,
	combout => \u_blink_2hz|s_counter[12]~49_combout\,
	cout => \u_blink_2hz|s_counter[12]~50\);

-- Location: FF_X91_Y42_N1
\u_blink_2hz|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_2hz|s_counter[12]~49_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(12));

-- Location: LCCOMB_X91_Y42_N2
\u_blink_2hz|s_counter[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[13]~51_combout\ = (\u_blink_2hz|s_counter\(13) & (!\u_blink_2hz|s_counter[12]~50\)) # (!\u_blink_2hz|s_counter\(13) & ((\u_blink_2hz|s_counter[12]~50\) # (GND)))
-- \u_blink_2hz|s_counter[13]~52\ = CARRY((!\u_blink_2hz|s_counter[12]~50\) # (!\u_blink_2hz|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_2hz|s_counter\(13),
	datad => VCC,
	cin => \u_blink_2hz|s_counter[12]~50\,
	combout => \u_blink_2hz|s_counter[13]~51_combout\,
	cout => \u_blink_2hz|s_counter[13]~52\);

-- Location: FF_X92_Y43_N31
\u_blink_2hz|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_blink_2hz|s_counter[13]~51_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(13));

-- Location: LCCOMB_X91_Y42_N4
\u_blink_2hz|s_counter[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[14]~53_combout\ = (\u_blink_2hz|s_counter\(14) & (\u_blink_2hz|s_counter[13]~52\ $ (GND))) # (!\u_blink_2hz|s_counter\(14) & (!\u_blink_2hz|s_counter[13]~52\ & VCC))
-- \u_blink_2hz|s_counter[14]~54\ = CARRY((\u_blink_2hz|s_counter\(14) & !\u_blink_2hz|s_counter[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_2hz|s_counter\(14),
	datad => VCC,
	cin => \u_blink_2hz|s_counter[13]~52\,
	combout => \u_blink_2hz|s_counter[14]~53_combout\,
	cout => \u_blink_2hz|s_counter[14]~54\);

-- Location: FF_X91_Y42_N5
\u_blink_2hz|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_2hz|s_counter[14]~53_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(14));

-- Location: LCCOMB_X91_Y42_N6
\u_blink_2hz|s_counter[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[15]~55_combout\ = (\u_blink_2hz|s_counter\(15) & (!\u_blink_2hz|s_counter[14]~54\)) # (!\u_blink_2hz|s_counter\(15) & ((\u_blink_2hz|s_counter[14]~54\) # (GND)))
-- \u_blink_2hz|s_counter[15]~56\ = CARRY((!\u_blink_2hz|s_counter[14]~54\) # (!\u_blink_2hz|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_2hz|s_counter\(15),
	datad => VCC,
	cin => \u_blink_2hz|s_counter[14]~54\,
	combout => \u_blink_2hz|s_counter[15]~55_combout\,
	cout => \u_blink_2hz|s_counter[15]~56\);

-- Location: FF_X92_Y43_N25
\u_blink_2hz|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_blink_2hz|s_counter[15]~55_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(15));

-- Location: LCCOMB_X91_Y42_N8
\u_blink_2hz|s_counter[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[16]~57_combout\ = (\u_blink_2hz|s_counter\(16) & (\u_blink_2hz|s_counter[15]~56\ $ (GND))) # (!\u_blink_2hz|s_counter\(16) & (!\u_blink_2hz|s_counter[15]~56\ & VCC))
-- \u_blink_2hz|s_counter[16]~58\ = CARRY((\u_blink_2hz|s_counter\(16) & !\u_blink_2hz|s_counter[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_2hz|s_counter\(16),
	datad => VCC,
	cin => \u_blink_2hz|s_counter[15]~56\,
	combout => \u_blink_2hz|s_counter[16]~57_combout\,
	cout => \u_blink_2hz|s_counter[16]~58\);

-- Location: FF_X92_Y43_N17
\u_blink_2hz|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_blink_2hz|s_counter[16]~57_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(16));

-- Location: LCCOMB_X91_Y42_N10
\u_blink_2hz|s_counter[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[17]~59_combout\ = (\u_blink_2hz|s_counter\(17) & (!\u_blink_2hz|s_counter[16]~58\)) # (!\u_blink_2hz|s_counter\(17) & ((\u_blink_2hz|s_counter[16]~58\) # (GND)))
-- \u_blink_2hz|s_counter[17]~60\ = CARRY((!\u_blink_2hz|s_counter[16]~58\) # (!\u_blink_2hz|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_2hz|s_counter\(17),
	datad => VCC,
	cin => \u_blink_2hz|s_counter[16]~58\,
	combout => \u_blink_2hz|s_counter[17]~59_combout\,
	cout => \u_blink_2hz|s_counter[17]~60\);

-- Location: FF_X92_Y43_N27
\u_blink_2hz|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_blink_2hz|s_counter[17]~59_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(17));

-- Location: LCCOMB_X91_Y42_N12
\u_blink_2hz|s_counter[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[18]~61_combout\ = (\u_blink_2hz|s_counter\(18) & (\u_blink_2hz|s_counter[17]~60\ $ (GND))) # (!\u_blink_2hz|s_counter\(18) & (!\u_blink_2hz|s_counter[17]~60\ & VCC))
-- \u_blink_2hz|s_counter[18]~62\ = CARRY((\u_blink_2hz|s_counter\(18) & !\u_blink_2hz|s_counter[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_2hz|s_counter\(18),
	datad => VCC,
	cin => \u_blink_2hz|s_counter[17]~60\,
	combout => \u_blink_2hz|s_counter[18]~61_combout\,
	cout => \u_blink_2hz|s_counter[18]~62\);

-- Location: FF_X91_Y42_N13
\u_blink_2hz|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_2hz|s_counter[18]~61_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(18));

-- Location: LCCOMB_X91_Y42_N14
\u_blink_2hz|s_counter[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[19]~63_combout\ = (\u_blink_2hz|s_counter\(19) & (!\u_blink_2hz|s_counter[18]~62\)) # (!\u_blink_2hz|s_counter\(19) & ((\u_blink_2hz|s_counter[18]~62\) # (GND)))
-- \u_blink_2hz|s_counter[19]~64\ = CARRY((!\u_blink_2hz|s_counter[18]~62\) # (!\u_blink_2hz|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_2hz|s_counter\(19),
	datad => VCC,
	cin => \u_blink_2hz|s_counter[18]~62\,
	combout => \u_blink_2hz|s_counter[19]~63_combout\,
	cout => \u_blink_2hz|s_counter[19]~64\);

-- Location: FF_X91_Y42_N15
\u_blink_2hz|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_2hz|s_counter[19]~63_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(19));

-- Location: LCCOMB_X91_Y42_N16
\u_blink_2hz|s_counter[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[20]~65_combout\ = (\u_blink_2hz|s_counter\(20) & (\u_blink_2hz|s_counter[19]~64\ $ (GND))) # (!\u_blink_2hz|s_counter\(20) & (!\u_blink_2hz|s_counter[19]~64\ & VCC))
-- \u_blink_2hz|s_counter[20]~66\ = CARRY((\u_blink_2hz|s_counter\(20) & !\u_blink_2hz|s_counter[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_2hz|s_counter\(20),
	datad => VCC,
	cin => \u_blink_2hz|s_counter[19]~64\,
	combout => \u_blink_2hz|s_counter[20]~65_combout\,
	cout => \u_blink_2hz|s_counter[20]~66\);

-- Location: FF_X91_Y42_N17
\u_blink_2hz|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_2hz|s_counter[20]~65_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(20));

-- Location: LCCOMB_X91_Y42_N18
\u_blink_2hz|s_counter[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_2hz|s_counter[21]~67_combout\ = (\u_blink_2hz|s_counter\(21) & (!\u_blink_2hz|s_counter[20]~66\)) # (!\u_blink_2hz|s_counter\(21) & ((\u_blink_2hz|s_counter[20]~66\) # (GND)))
-- \u_blink_2hz|s_counter[21]~68\ = CARRY((!\u_blink_2hz|s_counter[20]~66\) # (!\u_blink_2hz|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_2hz|s_counter\(21),
	datad => VCC,
	cin => \u_blink_2hz|s_counter[20]~66\,
	combout => \u_blink_2hz|s_counter[21]~67_combout\,
	cout => \u_blink_2hz|s_counter[21]~68\);

-- Location: FF_X91_Y42_N19
\u_blink_2hz|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_2hz|s_counter[21]~67_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(21));

-- Location: FF_X91_Y42_N21
\u_blink_2hz|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_2hz|s_counter[22]~69_combout\,
	sclr => \u_blink_2hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_2hz|s_counter\(22));

-- Location: LCCOMB_X92_Y43_N8
\LEDR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~0_combout\ = (\u_blink_2hz|s_counter\(24)) # ((\u_blink_2hz|s_counter\(22) & \u_blink_2hz|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_2hz|s_counter\(22),
	datac => \u_blink_2hz|s_counter\(23),
	datad => \u_blink_2hz|s_counter\(24),
	combout => \LEDR~0_combout\);

-- Location: LCCOMB_X92_Y43_N30
\LEDR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~1_combout\ = (\u_blink_2hz|s_counter\(10) & (\u_blink_2hz|s_counter\(11) & (\u_blink_2hz|s_counter\(13) & \u_blink_2hz|s_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_2hz|s_counter\(10),
	datab => \u_blink_2hz|s_counter\(11),
	datac => \u_blink_2hz|s_counter\(13),
	datad => \u_blink_2hz|s_counter\(12),
	combout => \LEDR~1_combout\);

-- Location: LCCOMB_X92_Y43_N24
\LEDR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~2_combout\ = (\LEDR~1_combout\ & (\u_blink_2hz|s_counter\(15) & ((\u_blink_2hz|s_counter\(5)) # (!\u_blink_2hz|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR~1_combout\,
	datab => \u_blink_2hz|LessThan0~0_combout\,
	datac => \u_blink_2hz|s_counter\(15),
	datad => \u_blink_2hz|s_counter\(5),
	combout => \LEDR~2_combout\);

-- Location: LCCOMB_X92_Y43_N22
\LEDR~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~3_combout\ = (\u_blink_2hz|s_counter\(16)) # ((\LEDR~2_combout\) # ((\u_blink_2hz|s_counter\(14) & \u_blink_2hz|s_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_2hz|s_counter\(14),
	datab => \u_blink_2hz|s_counter\(16),
	datac => \u_blink_2hz|s_counter\(15),
	datad => \LEDR~2_combout\,
	combout => \LEDR~3_combout\);

-- Location: LCCOMB_X92_Y43_N26
\LEDR~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~5_combout\ = (\u_blink_2hz|s_counter\(23) & (\u_blink_2hz|s_counter\(17) & \LEDR~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_2hz|s_counter\(23),
	datac => \u_blink_2hz|s_counter\(17),
	datad => \LEDR~4_combout\,
	combout => \LEDR~5_combout\);

-- Location: LCCOMB_X92_Y43_N0
\LEDR~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~6_combout\ = (\LEDR~0_combout\) # ((\LEDR~3_combout\ & \LEDR~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LEDR~0_combout\,
	datac => \LEDR~3_combout\,
	datad => \LEDR~5_combout\,
	combout => \LEDR~6_combout\);

-- Location: LCCOMB_X103_Y44_N28
\LEDR~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~7_combout\ = (\SW[0]~input_o\ & (\LEDR~6_combout\ & ((!\SW[1]~input_o\) # (!\enable_6s~q\)))) # (!\SW[0]~input_o\ & (((!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_6s~q\,
	datab => \LEDR~6_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \LEDR~7_combout\);

-- Location: LCCOMB_X98_Y44_N6
\u_blink_1hz|s_counter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[0]~26_combout\ = \u_blink_1hz|s_counter\(0) $ (VCC)
-- \u_blink_1hz|s_counter[0]~27\ = CARRY(\u_blink_1hz|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_1hz|s_counter\(0),
	datad => VCC,
	combout => \u_blink_1hz|s_counter[0]~26_combout\,
	cout => \u_blink_1hz|s_counter[0]~27\);

-- Location: LCCOMB_X98_Y43_N8
\u_blink_1hz|s_counter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[17]~60_combout\ = (\u_blink_1hz|s_counter\(17) & (!\u_blink_1hz|s_counter[16]~59\)) # (!\u_blink_1hz|s_counter\(17) & ((\u_blink_1hz|s_counter[16]~59\) # (GND)))
-- \u_blink_1hz|s_counter[17]~61\ = CARRY((!\u_blink_1hz|s_counter[16]~59\) # (!\u_blink_1hz|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_1hz|s_counter\(17),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[16]~59\,
	combout => \u_blink_1hz|s_counter[17]~60_combout\,
	cout => \u_blink_1hz|s_counter[17]~61\);

-- Location: LCCOMB_X98_Y43_N10
\u_blink_1hz|s_counter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[18]~62_combout\ = (\u_blink_1hz|s_counter\(18) & (\u_blink_1hz|s_counter[17]~61\ $ (GND))) # (!\u_blink_1hz|s_counter\(18) & (!\u_blink_1hz|s_counter[17]~61\ & VCC))
-- \u_blink_1hz|s_counter[18]~63\ = CARRY((\u_blink_1hz|s_counter\(18) & !\u_blink_1hz|s_counter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_1hz|s_counter\(18),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[17]~61\,
	combout => \u_blink_1hz|s_counter[18]~62_combout\,
	cout => \u_blink_1hz|s_counter[18]~63\);

-- Location: FF_X98_Y43_N11
\u_blink_1hz|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_1hz|s_counter[18]~62_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(18));

-- Location: LCCOMB_X98_Y43_N12
\u_blink_1hz|s_counter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[19]~64_combout\ = (\u_blink_1hz|s_counter\(19) & (!\u_blink_1hz|s_counter[18]~63\)) # (!\u_blink_1hz|s_counter\(19) & ((\u_blink_1hz|s_counter[18]~63\) # (GND)))
-- \u_blink_1hz|s_counter[19]~65\ = CARRY((!\u_blink_1hz|s_counter[18]~63\) # (!\u_blink_1hz|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_1hz|s_counter\(19),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[18]~63\,
	combout => \u_blink_1hz|s_counter[19]~64_combout\,
	cout => \u_blink_1hz|s_counter[19]~65\);

-- Location: FF_X98_Y43_N13
\u_blink_1hz|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_1hz|s_counter[19]~64_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(19));

-- Location: LCCOMB_X98_Y43_N14
\u_blink_1hz|s_counter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[20]~66_combout\ = (\u_blink_1hz|s_counter\(20) & (\u_blink_1hz|s_counter[19]~65\ $ (GND))) # (!\u_blink_1hz|s_counter\(20) & (!\u_blink_1hz|s_counter[19]~65\ & VCC))
-- \u_blink_1hz|s_counter[20]~67\ = CARRY((\u_blink_1hz|s_counter\(20) & !\u_blink_1hz|s_counter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_1hz|s_counter\(20),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[19]~65\,
	combout => \u_blink_1hz|s_counter[20]~66_combout\,
	cout => \u_blink_1hz|s_counter[20]~67\);

-- Location: FF_X98_Y43_N15
\u_blink_1hz|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_1hz|s_counter[20]~66_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(20));

-- Location: LCCOMB_X98_Y43_N16
\u_blink_1hz|s_counter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[21]~68_combout\ = (\u_blink_1hz|s_counter\(21) & (!\u_blink_1hz|s_counter[20]~67\)) # (!\u_blink_1hz|s_counter\(21) & ((\u_blink_1hz|s_counter[20]~67\) # (GND)))
-- \u_blink_1hz|s_counter[21]~69\ = CARRY((!\u_blink_1hz|s_counter[20]~67\) # (!\u_blink_1hz|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_1hz|s_counter\(21),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[20]~67\,
	combout => \u_blink_1hz|s_counter[21]~68_combout\,
	cout => \u_blink_1hz|s_counter[21]~69\);

-- Location: FF_X98_Y43_N17
\u_blink_1hz|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_1hz|s_counter[21]~68_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(21));

-- Location: LCCOMB_X98_Y43_N18
\u_blink_1hz|s_counter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[22]~70_combout\ = (\u_blink_1hz|s_counter\(22) & (\u_blink_1hz|s_counter[21]~69\ $ (GND))) # (!\u_blink_1hz|s_counter\(22) & (!\u_blink_1hz|s_counter[21]~69\ & VCC))
-- \u_blink_1hz|s_counter[22]~71\ = CARRY((\u_blink_1hz|s_counter\(22) & !\u_blink_1hz|s_counter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_1hz|s_counter\(22),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[21]~69\,
	combout => \u_blink_1hz|s_counter[22]~70_combout\,
	cout => \u_blink_1hz|s_counter[22]~71\);

-- Location: FF_X98_Y43_N19
\u_blink_1hz|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_1hz|s_counter[22]~70_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(22));

-- Location: LCCOMB_X98_Y43_N20
\u_blink_1hz|s_counter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[23]~72_combout\ = (\u_blink_1hz|s_counter\(23) & (!\u_blink_1hz|s_counter[22]~71\)) # (!\u_blink_1hz|s_counter\(23) & ((\u_blink_1hz|s_counter[22]~71\) # (GND)))
-- \u_blink_1hz|s_counter[23]~73\ = CARRY((!\u_blink_1hz|s_counter[22]~71\) # (!\u_blink_1hz|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_1hz|s_counter\(23),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[22]~71\,
	combout => \u_blink_1hz|s_counter[23]~72_combout\,
	cout => \u_blink_1hz|s_counter[23]~73\);

-- Location: FF_X98_Y43_N21
\u_blink_1hz|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_1hz|s_counter[23]~72_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(23));

-- Location: LCCOMB_X98_Y43_N22
\u_blink_1hz|s_counter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[24]~74_combout\ = (\u_blink_1hz|s_counter\(24) & (\u_blink_1hz|s_counter[23]~73\ $ (GND))) # (!\u_blink_1hz|s_counter\(24) & (!\u_blink_1hz|s_counter[23]~73\ & VCC))
-- \u_blink_1hz|s_counter[24]~75\ = CARRY((\u_blink_1hz|s_counter\(24) & !\u_blink_1hz|s_counter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_1hz|s_counter\(24),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[23]~73\,
	combout => \u_blink_1hz|s_counter[24]~74_combout\,
	cout => \u_blink_1hz|s_counter[24]~75\);

-- Location: FF_X98_Y43_N23
\u_blink_1hz|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_1hz|s_counter[24]~74_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(24));

-- Location: LCCOMB_X98_Y43_N24
\u_blink_1hz|s_counter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[25]~76_combout\ = \u_blink_1hz|s_counter[24]~75\ $ (\u_blink_1hz|s_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_blink_1hz|s_counter\(25),
	cin => \u_blink_1hz|s_counter[24]~75\,
	combout => \u_blink_1hz|s_counter[25]~76_combout\);

-- Location: FF_X98_Y43_N25
\u_blink_1hz|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_1hz|s_counter[25]~76_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(25));

-- Location: LCCOMB_X98_Y43_N30
\LEDG~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG~4_combout\ = (\u_blink_1hz|s_counter\(19) & (\u_blink_1hz|s_counter\(22) & (\u_blink_1hz|s_counter\(20) & \u_blink_1hz|s_counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_1hz|s_counter\(19),
	datab => \u_blink_1hz|s_counter\(22),
	datac => \u_blink_1hz|s_counter\(20),
	datad => \u_blink_1hz|s_counter\(21),
	combout => \LEDG~4_combout\);

-- Location: LCCOMB_X99_Y44_N14
\u_blink_1hz|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|LessThan0~1_combout\ = (((!\u_blink_1hz|s_counter\(12)) # (!\u_blink_1hz|s_counter\(14))) # (!\u_blink_1hz|s_counter\(15))) # (!\u_blink_1hz|s_counter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_1hz|s_counter\(13),
	datab => \u_blink_1hz|s_counter\(15),
	datac => \u_blink_1hz|s_counter\(14),
	datad => \u_blink_1hz|s_counter\(12),
	combout => \u_blink_1hz|LessThan0~1_combout\);

-- Location: LCCOMB_X98_Y44_N2
\u_blink_1hz|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|LessThan0~2_combout\ = (((!\u_blink_1hz|s_counter\(0)) # (!\u_blink_1hz|s_counter\(1))) # (!\u_blink_1hz|s_counter\(6))) # (!\u_blink_1hz|s_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_1hz|s_counter\(2),
	datab => \u_blink_1hz|s_counter\(6),
	datac => \u_blink_1hz|s_counter\(1),
	datad => \u_blink_1hz|s_counter\(0),
	combout => \u_blink_1hz|LessThan0~2_combout\);

-- Location: LCCOMB_X98_Y44_N4
\u_blink_1hz|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|LessThan0~3_combout\ = (((\u_blink_1hz|LessThan0~2_combout\) # (!\u_blink_1hz|s_counter\(4))) # (!\u_blink_1hz|s_counter\(5))) # (!\u_blink_1hz|s_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_1hz|s_counter\(3),
	datab => \u_blink_1hz|s_counter\(5),
	datac => \u_blink_1hz|s_counter\(4),
	datad => \u_blink_1hz|LessThan0~2_combout\,
	combout => \u_blink_1hz|LessThan0~3_combout\);

-- Location: LCCOMB_X98_Y44_N0
\u_blink_1hz|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|LessThan0~0_combout\ = (!\u_blink_1hz|s_counter\(10) & (!\u_blink_1hz|s_counter\(7) & (!\u_blink_1hz|s_counter\(8) & !\u_blink_1hz|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_1hz|s_counter\(10),
	datab => \u_blink_1hz|s_counter\(7),
	datac => \u_blink_1hz|s_counter\(8),
	datad => \u_blink_1hz|s_counter\(9),
	combout => \u_blink_1hz|LessThan0~0_combout\);

-- Location: LCCOMB_X99_Y44_N12
\u_blink_1hz|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|LessThan0~4_combout\ = (!\u_blink_1hz|s_counter\(11) & (\u_blink_1hz|LessThan0~3_combout\ & \u_blink_1hz|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_1hz|s_counter\(11),
	datac => \u_blink_1hz|LessThan0~3_combout\,
	datad => \u_blink_1hz|LessThan0~0_combout\,
	combout => \u_blink_1hz|LessThan0~4_combout\);

-- Location: LCCOMB_X99_Y44_N2
\u_blink_1hz|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|LessThan0~5_combout\ = (\u_blink_1hz|s_counter\(17) & ((\u_blink_1hz|s_counter\(16)) # ((!\u_blink_1hz|LessThan0~1_combout\ & !\u_blink_1hz|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_1hz|s_counter\(17),
	datab => \u_blink_1hz|s_counter\(16),
	datac => \u_blink_1hz|LessThan0~1_combout\,
	datad => \u_blink_1hz|LessThan0~4_combout\,
	combout => \u_blink_1hz|LessThan0~5_combout\);

-- Location: LCCOMB_X99_Y44_N16
\u_blink_1hz|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|LessThan0~6_combout\ = (((!\u_blink_1hz|s_counter\(18) & !\u_blink_1hz|LessThan0~5_combout\)) # (!\LEDG~4_combout\)) # (!\u_blink_1hz|s_counter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_1hz|s_counter\(18),
	datab => \u_blink_1hz|s_counter\(23),
	datac => \LEDG~4_combout\,
	datad => \u_blink_1hz|LessThan0~5_combout\,
	combout => \u_blink_1hz|LessThan0~6_combout\);

-- Location: LCCOMB_X99_Y44_N30
\u_blink_1hz|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|LessThan0~7_combout\ = (\u_blink_1hz|s_counter\(25) & ((\u_blink_1hz|s_counter\(24)) # (!\u_blink_1hz|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_1hz|s_counter\(24),
	datac => \u_blink_1hz|s_counter\(25),
	datad => \u_blink_1hz|LessThan0~6_combout\,
	combout => \u_blink_1hz|LessThan0~7_combout\);

-- Location: FF_X98_Y44_N7
\u_blink_1hz|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_1hz|s_counter[0]~26_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(0));

-- Location: LCCOMB_X98_Y44_N8
\u_blink_1hz|s_counter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[1]~28_combout\ = (\u_blink_1hz|s_counter\(1) & (!\u_blink_1hz|s_counter[0]~27\)) # (!\u_blink_1hz|s_counter\(1) & ((\u_blink_1hz|s_counter[0]~27\) # (GND)))
-- \u_blink_1hz|s_counter[1]~29\ = CARRY((!\u_blink_1hz|s_counter[0]~27\) # (!\u_blink_1hz|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_1hz|s_counter\(1),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[0]~27\,
	combout => \u_blink_1hz|s_counter[1]~28_combout\,
	cout => \u_blink_1hz|s_counter[1]~29\);

-- Location: FF_X98_Y44_N9
\u_blink_1hz|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_1hz|s_counter[1]~28_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(1));

-- Location: LCCOMB_X98_Y44_N10
\u_blink_1hz|s_counter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[2]~30_combout\ = (\u_blink_1hz|s_counter\(2) & (\u_blink_1hz|s_counter[1]~29\ $ (GND))) # (!\u_blink_1hz|s_counter\(2) & (!\u_blink_1hz|s_counter[1]~29\ & VCC))
-- \u_blink_1hz|s_counter[2]~31\ = CARRY((\u_blink_1hz|s_counter\(2) & !\u_blink_1hz|s_counter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_1hz|s_counter\(2),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[1]~29\,
	combout => \u_blink_1hz|s_counter[2]~30_combout\,
	cout => \u_blink_1hz|s_counter[2]~31\);

-- Location: FF_X98_Y44_N11
\u_blink_1hz|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_1hz|s_counter[2]~30_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(2));

-- Location: LCCOMB_X98_Y44_N12
\u_blink_1hz|s_counter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[3]~32_combout\ = (\u_blink_1hz|s_counter\(3) & (!\u_blink_1hz|s_counter[2]~31\)) # (!\u_blink_1hz|s_counter\(3) & ((\u_blink_1hz|s_counter[2]~31\) # (GND)))
-- \u_blink_1hz|s_counter[3]~33\ = CARRY((!\u_blink_1hz|s_counter[2]~31\) # (!\u_blink_1hz|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_1hz|s_counter\(3),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[2]~31\,
	combout => \u_blink_1hz|s_counter[3]~32_combout\,
	cout => \u_blink_1hz|s_counter[3]~33\);

-- Location: FF_X98_Y44_N13
\u_blink_1hz|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_1hz|s_counter[3]~32_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(3));

-- Location: LCCOMB_X98_Y44_N14
\u_blink_1hz|s_counter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[4]~34_combout\ = (\u_blink_1hz|s_counter\(4) & (\u_blink_1hz|s_counter[3]~33\ $ (GND))) # (!\u_blink_1hz|s_counter\(4) & (!\u_blink_1hz|s_counter[3]~33\ & VCC))
-- \u_blink_1hz|s_counter[4]~35\ = CARRY((\u_blink_1hz|s_counter\(4) & !\u_blink_1hz|s_counter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_1hz|s_counter\(4),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[3]~33\,
	combout => \u_blink_1hz|s_counter[4]~34_combout\,
	cout => \u_blink_1hz|s_counter[4]~35\);

-- Location: FF_X98_Y44_N15
\u_blink_1hz|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_1hz|s_counter[4]~34_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(4));

-- Location: LCCOMB_X98_Y44_N16
\u_blink_1hz|s_counter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[5]~36_combout\ = (\u_blink_1hz|s_counter\(5) & (!\u_blink_1hz|s_counter[4]~35\)) # (!\u_blink_1hz|s_counter\(5) & ((\u_blink_1hz|s_counter[4]~35\) # (GND)))
-- \u_blink_1hz|s_counter[5]~37\ = CARRY((!\u_blink_1hz|s_counter[4]~35\) # (!\u_blink_1hz|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_1hz|s_counter\(5),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[4]~35\,
	combout => \u_blink_1hz|s_counter[5]~36_combout\,
	cout => \u_blink_1hz|s_counter[5]~37\);

-- Location: FF_X98_Y44_N17
\u_blink_1hz|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_1hz|s_counter[5]~36_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(5));

-- Location: LCCOMB_X98_Y44_N18
\u_blink_1hz|s_counter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[6]~38_combout\ = (\u_blink_1hz|s_counter\(6) & (\u_blink_1hz|s_counter[5]~37\ $ (GND))) # (!\u_blink_1hz|s_counter\(6) & (!\u_blink_1hz|s_counter[5]~37\ & VCC))
-- \u_blink_1hz|s_counter[6]~39\ = CARRY((\u_blink_1hz|s_counter\(6) & !\u_blink_1hz|s_counter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_1hz|s_counter\(6),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[5]~37\,
	combout => \u_blink_1hz|s_counter[6]~38_combout\,
	cout => \u_blink_1hz|s_counter[6]~39\);

-- Location: FF_X98_Y44_N19
\u_blink_1hz|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_1hz|s_counter[6]~38_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(6));

-- Location: LCCOMB_X98_Y44_N20
\u_blink_1hz|s_counter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[7]~40_combout\ = (\u_blink_1hz|s_counter\(7) & (!\u_blink_1hz|s_counter[6]~39\)) # (!\u_blink_1hz|s_counter\(7) & ((\u_blink_1hz|s_counter[6]~39\) # (GND)))
-- \u_blink_1hz|s_counter[7]~41\ = CARRY((!\u_blink_1hz|s_counter[6]~39\) # (!\u_blink_1hz|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_1hz|s_counter\(7),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[6]~39\,
	combout => \u_blink_1hz|s_counter[7]~40_combout\,
	cout => \u_blink_1hz|s_counter[7]~41\);

-- Location: FF_X98_Y44_N21
\u_blink_1hz|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_1hz|s_counter[7]~40_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(7));

-- Location: LCCOMB_X98_Y44_N22
\u_blink_1hz|s_counter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[8]~42_combout\ = (\u_blink_1hz|s_counter\(8) & (\u_blink_1hz|s_counter[7]~41\ $ (GND))) # (!\u_blink_1hz|s_counter\(8) & (!\u_blink_1hz|s_counter[7]~41\ & VCC))
-- \u_blink_1hz|s_counter[8]~43\ = CARRY((\u_blink_1hz|s_counter\(8) & !\u_blink_1hz|s_counter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_1hz|s_counter\(8),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[7]~41\,
	combout => \u_blink_1hz|s_counter[8]~42_combout\,
	cout => \u_blink_1hz|s_counter[8]~43\);

-- Location: FF_X98_Y44_N23
\u_blink_1hz|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_1hz|s_counter[8]~42_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(8));

-- Location: LCCOMB_X98_Y44_N24
\u_blink_1hz|s_counter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[9]~44_combout\ = (\u_blink_1hz|s_counter\(9) & (!\u_blink_1hz|s_counter[8]~43\)) # (!\u_blink_1hz|s_counter\(9) & ((\u_blink_1hz|s_counter[8]~43\) # (GND)))
-- \u_blink_1hz|s_counter[9]~45\ = CARRY((!\u_blink_1hz|s_counter[8]~43\) # (!\u_blink_1hz|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_1hz|s_counter\(9),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[8]~43\,
	combout => \u_blink_1hz|s_counter[9]~44_combout\,
	cout => \u_blink_1hz|s_counter[9]~45\);

-- Location: FF_X98_Y44_N25
\u_blink_1hz|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_1hz|s_counter[9]~44_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(9));

-- Location: LCCOMB_X98_Y44_N26
\u_blink_1hz|s_counter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[10]~46_combout\ = (\u_blink_1hz|s_counter\(10) & (\u_blink_1hz|s_counter[9]~45\ $ (GND))) # (!\u_blink_1hz|s_counter\(10) & (!\u_blink_1hz|s_counter[9]~45\ & VCC))
-- \u_blink_1hz|s_counter[10]~47\ = CARRY((\u_blink_1hz|s_counter\(10) & !\u_blink_1hz|s_counter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_1hz|s_counter\(10),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[9]~45\,
	combout => \u_blink_1hz|s_counter[10]~46_combout\,
	cout => \u_blink_1hz|s_counter[10]~47\);

-- Location: FF_X98_Y44_N27
\u_blink_1hz|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_1hz|s_counter[10]~46_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(10));

-- Location: LCCOMB_X98_Y44_N28
\u_blink_1hz|s_counter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[11]~48_combout\ = (\u_blink_1hz|s_counter\(11) & (!\u_blink_1hz|s_counter[10]~47\)) # (!\u_blink_1hz|s_counter\(11) & ((\u_blink_1hz|s_counter[10]~47\) # (GND)))
-- \u_blink_1hz|s_counter[11]~49\ = CARRY((!\u_blink_1hz|s_counter[10]~47\) # (!\u_blink_1hz|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_1hz|s_counter\(11),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[10]~47\,
	combout => \u_blink_1hz|s_counter[11]~48_combout\,
	cout => \u_blink_1hz|s_counter[11]~49\);

-- Location: FF_X98_Y44_N29
\u_blink_1hz|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_1hz|s_counter[11]~48_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(11));

-- Location: LCCOMB_X98_Y44_N30
\u_blink_1hz|s_counter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[12]~50_combout\ = (\u_blink_1hz|s_counter\(12) & (\u_blink_1hz|s_counter[11]~49\ $ (GND))) # (!\u_blink_1hz|s_counter\(12) & (!\u_blink_1hz|s_counter[11]~49\ & VCC))
-- \u_blink_1hz|s_counter[12]~51\ = CARRY((\u_blink_1hz|s_counter\(12) & !\u_blink_1hz|s_counter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_1hz|s_counter\(12),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[11]~49\,
	combout => \u_blink_1hz|s_counter[12]~50_combout\,
	cout => \u_blink_1hz|s_counter[12]~51\);

-- Location: FF_X98_Y44_N31
\u_blink_1hz|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_blink_1hz|s_counter[12]~50_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(12));

-- Location: LCCOMB_X98_Y43_N0
\u_blink_1hz|s_counter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[13]~52_combout\ = (\u_blink_1hz|s_counter\(13) & (!\u_blink_1hz|s_counter[12]~51\)) # (!\u_blink_1hz|s_counter\(13) & ((\u_blink_1hz|s_counter[12]~51\) # (GND)))
-- \u_blink_1hz|s_counter[13]~53\ = CARRY((!\u_blink_1hz|s_counter[12]~51\) # (!\u_blink_1hz|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_1hz|s_counter\(13),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[12]~51\,
	combout => \u_blink_1hz|s_counter[13]~52_combout\,
	cout => \u_blink_1hz|s_counter[13]~53\);

-- Location: FF_X99_Y44_N27
\u_blink_1hz|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_blink_1hz|s_counter[13]~52_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(13));

-- Location: LCCOMB_X98_Y43_N2
\u_blink_1hz|s_counter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[14]~54_combout\ = (\u_blink_1hz|s_counter\(14) & (\u_blink_1hz|s_counter[13]~53\ $ (GND))) # (!\u_blink_1hz|s_counter\(14) & (!\u_blink_1hz|s_counter[13]~53\ & VCC))
-- \u_blink_1hz|s_counter[14]~55\ = CARRY((\u_blink_1hz|s_counter\(14) & !\u_blink_1hz|s_counter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_1hz|s_counter\(14),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[13]~53\,
	combout => \u_blink_1hz|s_counter[14]~54_combout\,
	cout => \u_blink_1hz|s_counter[14]~55\);

-- Location: FF_X99_Y44_N25
\u_blink_1hz|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_blink_1hz|s_counter[14]~54_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(14));

-- Location: LCCOMB_X98_Y43_N4
\u_blink_1hz|s_counter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[15]~56_combout\ = (\u_blink_1hz|s_counter\(15) & (!\u_blink_1hz|s_counter[14]~55\)) # (!\u_blink_1hz|s_counter\(15) & ((\u_blink_1hz|s_counter[14]~55\) # (GND)))
-- \u_blink_1hz|s_counter[15]~57\ = CARRY((!\u_blink_1hz|s_counter[14]~55\) # (!\u_blink_1hz|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_1hz|s_counter\(15),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[14]~55\,
	combout => \u_blink_1hz|s_counter[15]~56_combout\,
	cout => \u_blink_1hz|s_counter[15]~57\);

-- Location: FF_X99_Y44_N9
\u_blink_1hz|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_blink_1hz|s_counter[15]~56_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(15));

-- Location: LCCOMB_X98_Y43_N6
\u_blink_1hz|s_counter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_blink_1hz|s_counter[16]~58_combout\ = (\u_blink_1hz|s_counter\(16) & (\u_blink_1hz|s_counter[15]~57\ $ (GND))) # (!\u_blink_1hz|s_counter\(16) & (!\u_blink_1hz|s_counter[15]~57\ & VCC))
-- \u_blink_1hz|s_counter[16]~59\ = CARRY((\u_blink_1hz|s_counter\(16) & !\u_blink_1hz|s_counter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_blink_1hz|s_counter\(16),
	datad => VCC,
	cin => \u_blink_1hz|s_counter[15]~57\,
	combout => \u_blink_1hz|s_counter[16]~58_combout\,
	cout => \u_blink_1hz|s_counter[16]~59\);

-- Location: FF_X99_Y44_N29
\u_blink_1hz|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_blink_1hz|s_counter[16]~58_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(16));

-- Location: FF_X99_Y44_N23
\u_blink_1hz|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_blink_1hz|s_counter[17]~60_combout\,
	sclr => \u_blink_1hz|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_blink_1hz|s_counter\(17));

-- Location: LCCOMB_X99_Y44_N24
\LEDG~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG~3_combout\ = (\u_blink_1hz|s_counter\(17)) # ((\u_blink_1hz|s_counter\(15) & \u_blink_1hz|s_counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_1hz|s_counter\(17),
	datab => \u_blink_1hz|s_counter\(15),
	datad => \u_blink_1hz|s_counter\(16),
	combout => \LEDG~3_combout\);

-- Location: LCCOMB_X99_Y44_N18
\LEDG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG~1_combout\ = (\u_blink_1hz|s_counter\(13) & (\u_blink_1hz|s_counter\(12) & (\u_blink_1hz|s_counter\(14) & \u_blink_1hz|s_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_1hz|s_counter\(13),
	datab => \u_blink_1hz|s_counter\(12),
	datac => \u_blink_1hz|s_counter\(14),
	datad => \u_blink_1hz|s_counter\(11),
	combout => \LEDG~1_combout\);

-- Location: LCCOMB_X99_Y44_N28
\LEDG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG~2_combout\ = (\u_blink_1hz|s_counter\(16) & (\LEDG~1_combout\ & ((\u_blink_1hz|s_counter\(6)) # (!\u_blink_1hz|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_1hz|LessThan0~0_combout\,
	datab => \u_blink_1hz|s_counter\(6),
	datac => \u_blink_1hz|s_counter\(16),
	datad => \LEDG~1_combout\,
	combout => \LEDG~2_combout\);

-- Location: LCCOMB_X99_Y44_N22
\LEDG~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG~5_combout\ = (\LEDG~4_combout\ & (\u_blink_1hz|s_counter\(24) & \u_blink_1hz|s_counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDG~4_combout\,
	datab => \u_blink_1hz|s_counter\(24),
	datad => \u_blink_1hz|s_counter\(18),
	combout => \LEDG~5_combout\);

-- Location: LCCOMB_X99_Y44_N26
\LEDG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG~0_combout\ = (\u_blink_1hz|s_counter\(25)) # ((\u_blink_1hz|s_counter\(23) & \u_blink_1hz|s_counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_blink_1hz|s_counter\(25),
	datab => \u_blink_1hz|s_counter\(23),
	datad => \u_blink_1hz|s_counter\(24),
	combout => \LEDG~0_combout\);

-- Location: LCCOMB_X99_Y44_N20
\LEDG~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG~6_combout\ = (\LEDG~0_combout\) # ((\LEDG~5_combout\ & ((\LEDG~3_combout\) # (\LEDG~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDG~3_combout\,
	datab => \LEDG~2_combout\,
	datac => \LEDG~5_combout\,
	datad => \LEDG~0_combout\,
	combout => \LEDG~6_combout\);

-- Location: LCCOMB_X103_Y44_N14
\LEDG~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG~7_combout\ = (\SW[1]~input_o\ & (\LEDG~6_combout\ & ((\enable_6s~q\) # (!\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDG~6_combout\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \enable_6s~q\,
	combout => \LEDG~7_combout\);

-- Location: LCCOMB_X103_Y44_N0
\LEDR~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~8_combout\ = \SW[1]~input_o\ $ (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \LEDR~8_combout\);

-- Location: LCCOMB_X103_Y44_N6
\dec2_4|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec2_4|Equal2~0_combout\ = (!\SW[1]~input_o\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \dec2_4|Equal2~0_combout\);

-- Location: LCCOMB_X103_Y44_N16
\bin_7seg|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_7seg|Mux1~0_combout\ = (\SW[1]~input_o\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \bin_7seg|Mux1~0_combout\);

-- Location: LCCOMB_X103_Y44_N26
\bin_7seg|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_7seg|Mux0~0_combout\ = (\SW[1]~input_o\) # (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \bin_7seg|Mux0~0_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;
END structure;


