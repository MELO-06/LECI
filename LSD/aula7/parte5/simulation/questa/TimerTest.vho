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

-- DATE "04/15/2025 09:32:10"

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
-- AUD_ADCDAT	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK2_50	=>  Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK3_50	=>  Location: PIN_AG15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET0_INT_N	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_LINK100	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET0_MDIO	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CLK	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_COL	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CRS	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DV	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_ER	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_CLK	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_INT_N	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_LINK100	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET1_MDIO	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CLK	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_COL	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CRS	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[0]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[2]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[3]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DV	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_ER	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_CLK	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENETCLK_25	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FL_RY	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HSMC_CLKIN0	=>  Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IRDA_RXD	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_INT	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SD_WP_N	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SMA_CLKIN	=>  Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TD_CLK27	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[0]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[2]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[3]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[4]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[5]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[6]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[7]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_HS	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_VS	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RTS	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RXD	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \AUD_ADCDAT~padout\ : std_logic;
SIGNAL \CLOCK2_50~padout\ : std_logic;
SIGNAL \CLOCK3_50~padout\ : std_logic;
SIGNAL \ENET0_INT_N~padout\ : std_logic;
SIGNAL \ENET0_LINK100~padout\ : std_logic;
SIGNAL \ENET0_MDIO~padout\ : std_logic;
SIGNAL \ENET0_RX_CLK~padout\ : std_logic;
SIGNAL \ENET0_RX_COL~padout\ : std_logic;
SIGNAL \ENET0_RX_CRS~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~padout\ : std_logic;
SIGNAL \ENET0_RX_DV~padout\ : std_logic;
SIGNAL \ENET0_RX_ER~padout\ : std_logic;
SIGNAL \ENET0_TX_CLK~padout\ : std_logic;
SIGNAL \ENET1_INT_N~padout\ : std_logic;
SIGNAL \ENET1_LINK100~padout\ : std_logic;
SIGNAL \ENET1_MDIO~padout\ : std_logic;
SIGNAL \ENET1_RX_CLK~padout\ : std_logic;
SIGNAL \ENET1_RX_COL~padout\ : std_logic;
SIGNAL \ENET1_RX_CRS~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[0]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[1]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[2]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[3]~padout\ : std_logic;
SIGNAL \ENET1_RX_DV~padout\ : std_logic;
SIGNAL \ENET1_RX_ER~padout\ : std_logic;
SIGNAL \ENET1_TX_CLK~padout\ : std_logic;
SIGNAL \ENETCLK_25~padout\ : std_logic;
SIGNAL \FL_RY~padout\ : std_logic;
SIGNAL \HSMC_CLKIN0~padout\ : std_logic;
SIGNAL \IRDA_RXD~padout\ : std_logic;
SIGNAL \OTG_INT~padout\ : std_logic;
SIGNAL \SD_WP_N~padout\ : std_logic;
SIGNAL \SMA_CLKIN~padout\ : std_logic;
SIGNAL \SW[0]~padout\ : std_logic;
SIGNAL \SW[10]~padout\ : std_logic;
SIGNAL \SW[11]~padout\ : std_logic;
SIGNAL \SW[12]~padout\ : std_logic;
SIGNAL \SW[13]~padout\ : std_logic;
SIGNAL \SW[14]~padout\ : std_logic;
SIGNAL \SW[15]~padout\ : std_logic;
SIGNAL \SW[16]~padout\ : std_logic;
SIGNAL \SW[17]~padout\ : std_logic;
SIGNAL \SW[1]~padout\ : std_logic;
SIGNAL \SW[2]~padout\ : std_logic;
SIGNAL \SW[3]~padout\ : std_logic;
SIGNAL \SW[4]~padout\ : std_logic;
SIGNAL \SW[5]~padout\ : std_logic;
SIGNAL \SW[6]~padout\ : std_logic;
SIGNAL \SW[7]~padout\ : std_logic;
SIGNAL \SW[8]~padout\ : std_logic;
SIGNAL \SW[9]~padout\ : std_logic;
SIGNAL \TD_CLK27~padout\ : std_logic;
SIGNAL \TD_DATA[0]~padout\ : std_logic;
SIGNAL \TD_DATA[1]~padout\ : std_logic;
SIGNAL \TD_DATA[2]~padout\ : std_logic;
SIGNAL \TD_DATA[3]~padout\ : std_logic;
SIGNAL \TD_DATA[4]~padout\ : std_logic;
SIGNAL \TD_DATA[5]~padout\ : std_logic;
SIGNAL \TD_DATA[6]~padout\ : std_logic;
SIGNAL \TD_DATA[7]~padout\ : std_logic;
SIGNAL \TD_HS~padout\ : std_logic;
SIGNAL \TD_VS~padout\ : std_logic;
SIGNAL \UART_RTS~padout\ : std_logic;
SIGNAL \UART_RXD~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \AUD_ADCDAT~ibuf_o\ : std_logic;
SIGNAL \CLOCK2_50~ibuf_o\ : std_logic;
SIGNAL \CLOCK3_50~ibuf_o\ : std_logic;
SIGNAL \ENET0_INT_N~ibuf_o\ : std_logic;
SIGNAL \ENET0_LINK100~ibuf_o\ : std_logic;
SIGNAL \ENET0_MDIO~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_COL~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_CRS~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DV~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_ER~ibuf_o\ : std_logic;
SIGNAL \ENET0_TX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET1_INT_N~ibuf_o\ : std_logic;
SIGNAL \ENET1_LINK100~ibuf_o\ : std_logic;
SIGNAL \ENET1_MDIO~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_COL~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_CRS~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DV~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_ER~ibuf_o\ : std_logic;
SIGNAL \ENET1_TX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENETCLK_25~ibuf_o\ : std_logic;
SIGNAL \FL_RY~ibuf_o\ : std_logic;
SIGNAL \HSMC_CLKIN0~ibuf_o\ : std_logic;
SIGNAL \IRDA_RXD~ibuf_o\ : std_logic;
SIGNAL \KEY[1]~ibuf_o\ : std_logic;
SIGNAL \KEY[2]~ibuf_o\ : std_logic;
SIGNAL \KEY[3]~ibuf_o\ : std_logic;
SIGNAL \OTG_INT~ibuf_o\ : std_logic;
SIGNAL \SD_WP_N~ibuf_o\ : std_logic;
SIGNAL \SMA_CLKIN~ibuf_o\ : std_logic;
SIGNAL \SW[0]~ibuf_o\ : std_logic;
SIGNAL \SW[10]~ibuf_o\ : std_logic;
SIGNAL \SW[11]~ibuf_o\ : std_logic;
SIGNAL \SW[12]~ibuf_o\ : std_logic;
SIGNAL \SW[13]~ibuf_o\ : std_logic;
SIGNAL \SW[14]~ibuf_o\ : std_logic;
SIGNAL \SW[15]~ibuf_o\ : std_logic;
SIGNAL \SW[16]~ibuf_o\ : std_logic;
SIGNAL \SW[17]~ibuf_o\ : std_logic;
SIGNAL \SW[1]~ibuf_o\ : std_logic;
SIGNAL \SW[2]~ibuf_o\ : std_logic;
SIGNAL \SW[3]~ibuf_o\ : std_logic;
SIGNAL \SW[4]~ibuf_o\ : std_logic;
SIGNAL \SW[5]~ibuf_o\ : std_logic;
SIGNAL \SW[6]~ibuf_o\ : std_logic;
SIGNAL \SW[7]~ibuf_o\ : std_logic;
SIGNAL \SW[8]~ibuf_o\ : std_logic;
SIGNAL \SW[9]~ibuf_o\ : std_logic;
SIGNAL \TD_CLK27~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[4]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[5]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[6]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[7]~ibuf_o\ : std_logic;
SIGNAL \TD_HS~ibuf_o\ : std_logic;
SIGNAL \TD_VS~ibuf_o\ : std_logic;
SIGNAL \UART_RTS~ibuf_o\ : std_logic;
SIGNAL \UART_RXD~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL KEY : std_logic_vector(0 DOWNTO 0);

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

ENTITY 	TimerTest IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	LEDG : OUT std_logic_vector(0 DOWNTO 0)
	);
END TimerTest;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TimerTest IS
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
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \timer_inst|counter[0]~34_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \timer_inst|active~2_combout\ : std_logic;
SIGNAL \timer_inst|active~q\ : std_logic;
SIGNAL \timer_inst|process_0~0_combout\ : std_logic;
SIGNAL \timer_inst|counter[31]~99_combout\ : std_logic;
SIGNAL \timer_inst|counter[31]~70_combout\ : std_logic;
SIGNAL \timer_inst|counter[0]~35\ : std_logic;
SIGNAL \timer_inst|counter[1]~36_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \timer_inst|counter[1]~37\ : std_logic;
SIGNAL \timer_inst|counter[2]~38_combout\ : std_logic;
SIGNAL \timer_inst|counter[2]~39\ : std_logic;
SIGNAL \timer_inst|counter[3]~40_combout\ : std_logic;
SIGNAL \timer_inst|counter[3]~41\ : std_logic;
SIGNAL \timer_inst|counter[4]~42_combout\ : std_logic;
SIGNAL \timer_inst|counter[4]~43\ : std_logic;
SIGNAL \timer_inst|counter[5]~44_combout\ : std_logic;
SIGNAL \timer_inst|counter[5]~45\ : std_logic;
SIGNAL \timer_inst|counter[6]~46_combout\ : std_logic;
SIGNAL \timer_inst|counter[6]~47\ : std_logic;
SIGNAL \timer_inst|counter[7]~48_combout\ : std_logic;
SIGNAL \timer_inst|counter[7]~49\ : std_logic;
SIGNAL \timer_inst|counter[8]~50_combout\ : std_logic;
SIGNAL \timer_inst|counter[8]~51\ : std_logic;
SIGNAL \timer_inst|counter[9]~52_combout\ : std_logic;
SIGNAL \timer_inst|counter[9]~53\ : std_logic;
SIGNAL \timer_inst|counter[10]~54_combout\ : std_logic;
SIGNAL \timer_inst|counter[10]~55\ : std_logic;
SIGNAL \timer_inst|counter[11]~56_combout\ : std_logic;
SIGNAL \timer_inst|counter[11]~57\ : std_logic;
SIGNAL \timer_inst|counter[12]~58_combout\ : std_logic;
SIGNAL \timer_inst|counter[12]~59\ : std_logic;
SIGNAL \timer_inst|counter[13]~60_combout\ : std_logic;
SIGNAL \timer_inst|counter[13]~61\ : std_logic;
SIGNAL \timer_inst|counter[14]~62_combout\ : std_logic;
SIGNAL \timer_inst|counter[14]~feeder_combout\ : std_logic;
SIGNAL \timer_inst|counter[14]~63\ : std_logic;
SIGNAL \timer_inst|counter[15]~64_combout\ : std_logic;
SIGNAL \timer_inst|counter[15]~65\ : std_logic;
SIGNAL \timer_inst|counter[16]~66_combout\ : std_logic;
SIGNAL \timer_inst|counter[16]~feeder_combout\ : std_logic;
SIGNAL \timer_inst|counter[16]~67\ : std_logic;
SIGNAL \timer_inst|counter[17]~68_combout\ : std_logic;
SIGNAL \timer_inst|counter[17]~69\ : std_logic;
SIGNAL \timer_inst|counter[18]~71_combout\ : std_logic;
SIGNAL \timer_inst|counter[18]~72\ : std_logic;
SIGNAL \timer_inst|counter[19]~73_combout\ : std_logic;
SIGNAL \timer_inst|counter[19]~74\ : std_logic;
SIGNAL \timer_inst|counter[20]~75_combout\ : std_logic;
SIGNAL \timer_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \timer_inst|counter[20]~76\ : std_logic;
SIGNAL \timer_inst|counter[21]~77_combout\ : std_logic;
SIGNAL \timer_inst|counter[21]~78\ : std_logic;
SIGNAL \timer_inst|counter[22]~79_combout\ : std_logic;
SIGNAL \timer_inst|counter[22]~80\ : std_logic;
SIGNAL \timer_inst|counter[23]~81_combout\ : std_logic;
SIGNAL \timer_inst|counter[23]~82\ : std_logic;
SIGNAL \timer_inst|counter[24]~83_combout\ : std_logic;
SIGNAL \timer_inst|counter[24]~84\ : std_logic;
SIGNAL \timer_inst|counter[25]~85_combout\ : std_logic;
SIGNAL \timer_inst|counter[25]~86\ : std_logic;
SIGNAL \timer_inst|counter[26]~87_combout\ : std_logic;
SIGNAL \timer_inst|counter[26]~88\ : std_logic;
SIGNAL \timer_inst|counter[27]~89_combout\ : std_logic;
SIGNAL \timer_inst|counter[27]~90\ : std_logic;
SIGNAL \timer_inst|counter[28]~91_combout\ : std_logic;
SIGNAL \timer_inst|counter[28]~92\ : std_logic;
SIGNAL \timer_inst|counter[29]~93_combout\ : std_logic;
SIGNAL \timer_inst|counter[29]~94\ : std_logic;
SIGNAL \timer_inst|counter[30]~95_combout\ : std_logic;
SIGNAL \timer_inst|counter[30]~96\ : std_logic;
SIGNAL \timer_inst|counter[31]~97_combout\ : std_logic;
SIGNAL \timer_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \timer_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \timer_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \timer_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \timer_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \timer_inst|LessThan0~6_combout\ : std_logic;
SIGNAL \timer_inst|LessThan0~7_combout\ : std_logic;
SIGNAL \timer_inst|LessThan0~8_combout\ : std_logic;
SIGNAL \timer_inst|LessThan0~9_combout\ : std_logic;
SIGNAL \timer_inst|pulse_out~2_combout\ : std_logic;
SIGNAL \timer_inst|pulse_out~q\ : std_logic;
SIGNAL \timer_inst|counter\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timer_inst|pulse_out~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

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

-- Location: LCCOMB_X42_Y27_N0
\timer_inst|counter[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[0]~34_combout\ = \timer_inst|counter\(0) $ (VCC)
-- \timer_inst|counter[0]~35\ = CARRY(\timer_inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_inst|counter\(0),
	datad => VCC,
	combout => \timer_inst|counter[0]~34_combout\,
	cout => \timer_inst|counter[0]~35\);

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

-- Location: LCCOMB_X43_Y27_N14
\timer_inst|active~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|active~2_combout\ = (\timer_inst|active~q\ & ((\timer_inst|LessThan0~9_combout\))) # (!\timer_inst|active~q\ & (!\KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \timer_inst|active~q\,
	datad => \timer_inst|LessThan0~9_combout\,
	combout => \timer_inst|active~2_combout\);

-- Location: FF_X43_Y27_N15
\timer_inst|active\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|active~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|active~q\);

-- Location: LCCOMB_X41_Y27_N16
\timer_inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|process_0~0_combout\ = (!\timer_inst|active~q\ & !\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_inst|active~q\,
	datad => \KEY[0]~input_o\,
	combout => \timer_inst|process_0~0_combout\);

-- Location: LCCOMB_X43_Y27_N18
\timer_inst|counter[31]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[31]~99_combout\ = ((!\KEY[0]~input_o\ & !\timer_inst|active~q\)) # (!\timer_inst|LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \timer_inst|active~q\,
	datad => \timer_inst|LessThan0~9_combout\,
	combout => \timer_inst|counter[31]~99_combout\);

-- Location: LCCOMB_X43_Y27_N16
\timer_inst|counter[31]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[31]~70_combout\ = (\timer_inst|active~q\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_inst|active~q\,
	datad => \KEY[0]~input_o\,
	combout => \timer_inst|counter[31]~70_combout\);

-- Location: FF_X42_Y27_N1
\timer_inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[0]~34_combout\,
	asdata => \timer_inst|process_0~0_combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(0));

-- Location: LCCOMB_X42_Y27_N2
\timer_inst|counter[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[1]~36_combout\ = (\timer_inst|counter\(1) & (!\timer_inst|counter[0]~35\)) # (!\timer_inst|counter\(1) & ((\timer_inst|counter[0]~35\) # (GND)))
-- \timer_inst|counter[1]~37\ = CARRY((!\timer_inst|counter[0]~35\) # (!\timer_inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_inst|counter\(1),
	datad => VCC,
	cin => \timer_inst|counter[0]~35\,
	combout => \timer_inst|counter[1]~36_combout\,
	cout => \timer_inst|counter[1]~37\);

-- Location: LCCOMB_X43_Y26_N8
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X42_Y27_N3
\timer_inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[1]~36_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(1));

-- Location: LCCOMB_X42_Y27_N4
\timer_inst|counter[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[2]~38_combout\ = (\timer_inst|counter\(2) & (\timer_inst|counter[1]~37\ $ (GND))) # (!\timer_inst|counter\(2) & (!\timer_inst|counter[1]~37\ & VCC))
-- \timer_inst|counter[2]~39\ = CARRY((\timer_inst|counter\(2) & !\timer_inst|counter[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_inst|counter\(2),
	datad => VCC,
	cin => \timer_inst|counter[1]~37\,
	combout => \timer_inst|counter[2]~38_combout\,
	cout => \timer_inst|counter[2]~39\);

-- Location: FF_X42_Y27_N5
\timer_inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[2]~38_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(2));

-- Location: LCCOMB_X42_Y27_N6
\timer_inst|counter[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[3]~40_combout\ = (\timer_inst|counter\(3) & (!\timer_inst|counter[2]~39\)) # (!\timer_inst|counter\(3) & ((\timer_inst|counter[2]~39\) # (GND)))
-- \timer_inst|counter[3]~41\ = CARRY((!\timer_inst|counter[2]~39\) # (!\timer_inst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|counter\(3),
	datad => VCC,
	cin => \timer_inst|counter[2]~39\,
	combout => \timer_inst|counter[3]~40_combout\,
	cout => \timer_inst|counter[3]~41\);

-- Location: FF_X42_Y27_N7
\timer_inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[3]~40_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(3));

-- Location: LCCOMB_X42_Y27_N8
\timer_inst|counter[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[4]~42_combout\ = (\timer_inst|counter\(4) & (\timer_inst|counter[3]~41\ $ (GND))) # (!\timer_inst|counter\(4) & (!\timer_inst|counter[3]~41\ & VCC))
-- \timer_inst|counter[4]~43\ = CARRY((\timer_inst|counter\(4) & !\timer_inst|counter[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_inst|counter\(4),
	datad => VCC,
	cin => \timer_inst|counter[3]~41\,
	combout => \timer_inst|counter[4]~42_combout\,
	cout => \timer_inst|counter[4]~43\);

-- Location: FF_X42_Y27_N9
\timer_inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[4]~42_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(4));

-- Location: LCCOMB_X42_Y27_N10
\timer_inst|counter[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[5]~44_combout\ = (\timer_inst|counter\(5) & (!\timer_inst|counter[4]~43\)) # (!\timer_inst|counter\(5) & ((\timer_inst|counter[4]~43\) # (GND)))
-- \timer_inst|counter[5]~45\ = CARRY((!\timer_inst|counter[4]~43\) # (!\timer_inst|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|counter\(5),
	datad => VCC,
	cin => \timer_inst|counter[4]~43\,
	combout => \timer_inst|counter[5]~44_combout\,
	cout => \timer_inst|counter[5]~45\);

-- Location: FF_X42_Y27_N11
\timer_inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[5]~44_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(5));

-- Location: LCCOMB_X42_Y27_N12
\timer_inst|counter[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[6]~46_combout\ = (\timer_inst|counter\(6) & (\timer_inst|counter[5]~45\ $ (GND))) # (!\timer_inst|counter\(6) & (!\timer_inst|counter[5]~45\ & VCC))
-- \timer_inst|counter[6]~47\ = CARRY((\timer_inst|counter\(6) & !\timer_inst|counter[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|counter\(6),
	datad => VCC,
	cin => \timer_inst|counter[5]~45\,
	combout => \timer_inst|counter[6]~46_combout\,
	cout => \timer_inst|counter[6]~47\);

-- Location: FF_X42_Y27_N13
\timer_inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[6]~46_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(6));

-- Location: LCCOMB_X42_Y27_N14
\timer_inst|counter[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[7]~48_combout\ = (\timer_inst|counter\(7) & (!\timer_inst|counter[6]~47\)) # (!\timer_inst|counter\(7) & ((\timer_inst|counter[6]~47\) # (GND)))
-- \timer_inst|counter[7]~49\ = CARRY((!\timer_inst|counter[6]~47\) # (!\timer_inst|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_inst|counter\(7),
	datad => VCC,
	cin => \timer_inst|counter[6]~47\,
	combout => \timer_inst|counter[7]~48_combout\,
	cout => \timer_inst|counter[7]~49\);

-- Location: FF_X42_Y27_N15
\timer_inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[7]~48_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(7));

-- Location: LCCOMB_X42_Y27_N16
\timer_inst|counter[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[8]~50_combout\ = (\timer_inst|counter\(8) & (\timer_inst|counter[7]~49\ $ (GND))) # (!\timer_inst|counter\(8) & (!\timer_inst|counter[7]~49\ & VCC))
-- \timer_inst|counter[8]~51\ = CARRY((\timer_inst|counter\(8) & !\timer_inst|counter[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_inst|counter\(8),
	datad => VCC,
	cin => \timer_inst|counter[7]~49\,
	combout => \timer_inst|counter[8]~50_combout\,
	cout => \timer_inst|counter[8]~51\);

-- Location: FF_X42_Y27_N17
\timer_inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[8]~50_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(8));

-- Location: LCCOMB_X42_Y27_N18
\timer_inst|counter[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[9]~52_combout\ = (\timer_inst|counter\(9) & (!\timer_inst|counter[8]~51\)) # (!\timer_inst|counter\(9) & ((\timer_inst|counter[8]~51\) # (GND)))
-- \timer_inst|counter[9]~53\ = CARRY((!\timer_inst|counter[8]~51\) # (!\timer_inst|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_inst|counter\(9),
	datad => VCC,
	cin => \timer_inst|counter[8]~51\,
	combout => \timer_inst|counter[9]~52_combout\,
	cout => \timer_inst|counter[9]~53\);

-- Location: FF_X42_Y27_N19
\timer_inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[9]~52_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(9));

-- Location: LCCOMB_X42_Y27_N20
\timer_inst|counter[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[10]~54_combout\ = (\timer_inst|counter\(10) & (\timer_inst|counter[9]~53\ $ (GND))) # (!\timer_inst|counter\(10) & (!\timer_inst|counter[9]~53\ & VCC))
-- \timer_inst|counter[10]~55\ = CARRY((\timer_inst|counter\(10) & !\timer_inst|counter[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_inst|counter\(10),
	datad => VCC,
	cin => \timer_inst|counter[9]~53\,
	combout => \timer_inst|counter[10]~54_combout\,
	cout => \timer_inst|counter[10]~55\);

-- Location: FF_X42_Y27_N21
\timer_inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[10]~54_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(10));

-- Location: LCCOMB_X42_Y27_N22
\timer_inst|counter[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[11]~56_combout\ = (\timer_inst|counter\(11) & (!\timer_inst|counter[10]~55\)) # (!\timer_inst|counter\(11) & ((\timer_inst|counter[10]~55\) # (GND)))
-- \timer_inst|counter[11]~57\ = CARRY((!\timer_inst|counter[10]~55\) # (!\timer_inst|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|counter\(11),
	datad => VCC,
	cin => \timer_inst|counter[10]~55\,
	combout => \timer_inst|counter[11]~56_combout\,
	cout => \timer_inst|counter[11]~57\);

-- Location: FF_X42_Y27_N23
\timer_inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[11]~56_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(11));

-- Location: LCCOMB_X42_Y27_N24
\timer_inst|counter[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[12]~58_combout\ = (\timer_inst|counter\(12) & (\timer_inst|counter[11]~57\ $ (GND))) # (!\timer_inst|counter\(12) & (!\timer_inst|counter[11]~57\ & VCC))
-- \timer_inst|counter[12]~59\ = CARRY((\timer_inst|counter\(12) & !\timer_inst|counter[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_inst|counter\(12),
	datad => VCC,
	cin => \timer_inst|counter[11]~57\,
	combout => \timer_inst|counter[12]~58_combout\,
	cout => \timer_inst|counter[12]~59\);

-- Location: FF_X42_Y27_N25
\timer_inst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[12]~58_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(12));

-- Location: LCCOMB_X42_Y27_N26
\timer_inst|counter[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[13]~60_combout\ = (\timer_inst|counter\(13) & (!\timer_inst|counter[12]~59\)) # (!\timer_inst|counter\(13) & ((\timer_inst|counter[12]~59\) # (GND)))
-- \timer_inst|counter[13]~61\ = CARRY((!\timer_inst|counter[12]~59\) # (!\timer_inst|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|counter\(13),
	datad => VCC,
	cin => \timer_inst|counter[12]~59\,
	combout => \timer_inst|counter[13]~60_combout\,
	cout => \timer_inst|counter[13]~61\);

-- Location: FF_X42_Y27_N27
\timer_inst|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[13]~60_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(13));

-- Location: LCCOMB_X42_Y27_N28
\timer_inst|counter[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[14]~62_combout\ = (\timer_inst|counter\(14) & (\timer_inst|counter[13]~61\ $ (GND))) # (!\timer_inst|counter\(14) & (!\timer_inst|counter[13]~61\ & VCC))
-- \timer_inst|counter[14]~63\ = CARRY((\timer_inst|counter\(14) & !\timer_inst|counter[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_inst|counter\(14),
	datad => VCC,
	cin => \timer_inst|counter[13]~61\,
	combout => \timer_inst|counter[14]~62_combout\,
	cout => \timer_inst|counter[14]~63\);

-- Location: LCCOMB_X43_Y27_N0
\timer_inst|counter[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[14]~feeder_combout\ = \timer_inst|counter[14]~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \timer_inst|counter[14]~62_combout\,
	combout => \timer_inst|counter[14]~feeder_combout\);

-- Location: FF_X43_Y27_N1
\timer_inst|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[14]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(14));

-- Location: LCCOMB_X42_Y27_N30
\timer_inst|counter[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[15]~64_combout\ = (\timer_inst|counter\(15) & (!\timer_inst|counter[14]~63\)) # (!\timer_inst|counter\(15) & ((\timer_inst|counter[14]~63\) # (GND)))
-- \timer_inst|counter[15]~65\ = CARRY((!\timer_inst|counter[14]~63\) # (!\timer_inst|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|counter\(15),
	datad => VCC,
	cin => \timer_inst|counter[14]~63\,
	combout => \timer_inst|counter[15]~64_combout\,
	cout => \timer_inst|counter[15]~65\);

-- Location: FF_X42_Y27_N31
\timer_inst|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[15]~64_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(15));

-- Location: LCCOMB_X42_Y26_N0
\timer_inst|counter[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[16]~66_combout\ = (\timer_inst|counter\(16) & (\timer_inst|counter[15]~65\ $ (GND))) # (!\timer_inst|counter\(16) & (!\timer_inst|counter[15]~65\ & VCC))
-- \timer_inst|counter[16]~67\ = CARRY((\timer_inst|counter\(16) & !\timer_inst|counter[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|counter\(16),
	datad => VCC,
	cin => \timer_inst|counter[15]~65\,
	combout => \timer_inst|counter[16]~66_combout\,
	cout => \timer_inst|counter[16]~67\);

-- Location: LCCOMB_X43_Y27_N22
\timer_inst|counter[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[16]~feeder_combout\ = \timer_inst|counter[16]~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|counter[16]~66_combout\,
	combout => \timer_inst|counter[16]~feeder_combout\);

-- Location: FF_X43_Y27_N23
\timer_inst|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[16]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(16));

-- Location: LCCOMB_X42_Y26_N2
\timer_inst|counter[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[17]~68_combout\ = (\timer_inst|counter\(17) & (!\timer_inst|counter[16]~67\)) # (!\timer_inst|counter\(17) & ((\timer_inst|counter[16]~67\) # (GND)))
-- \timer_inst|counter[17]~69\ = CARRY((!\timer_inst|counter[16]~67\) # (!\timer_inst|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_inst|counter\(17),
	datad => VCC,
	cin => \timer_inst|counter[16]~67\,
	combout => \timer_inst|counter[17]~68_combout\,
	cout => \timer_inst|counter[17]~69\);

-- Location: FF_X42_Y26_N3
\timer_inst|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[17]~68_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(17));

-- Location: LCCOMB_X42_Y26_N4
\timer_inst|counter[18]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[18]~71_combout\ = (\timer_inst|counter\(18) & (\timer_inst|counter[17]~69\ $ (GND))) # (!\timer_inst|counter\(18) & (!\timer_inst|counter[17]~69\ & VCC))
-- \timer_inst|counter[18]~72\ = CARRY((\timer_inst|counter\(18) & !\timer_inst|counter[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_inst|counter\(18),
	datad => VCC,
	cin => \timer_inst|counter[17]~69\,
	combout => \timer_inst|counter[18]~71_combout\,
	cout => \timer_inst|counter[18]~72\);

-- Location: FF_X42_Y26_N5
\timer_inst|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[18]~71_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(18));

-- Location: LCCOMB_X42_Y26_N6
\timer_inst|counter[19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[19]~73_combout\ = (\timer_inst|counter\(19) & (!\timer_inst|counter[18]~72\)) # (!\timer_inst|counter\(19) & ((\timer_inst|counter[18]~72\) # (GND)))
-- \timer_inst|counter[19]~74\ = CARRY((!\timer_inst|counter[18]~72\) # (!\timer_inst|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|counter\(19),
	datad => VCC,
	cin => \timer_inst|counter[18]~72\,
	combout => \timer_inst|counter[19]~73_combout\,
	cout => \timer_inst|counter[19]~74\);

-- Location: FF_X42_Y26_N7
\timer_inst|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[19]~73_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(19));

-- Location: LCCOMB_X42_Y26_N8
\timer_inst|counter[20]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[20]~75_combout\ = (\timer_inst|counter\(20) & (\timer_inst|counter[19]~74\ $ (GND))) # (!\timer_inst|counter\(20) & (!\timer_inst|counter[19]~74\ & VCC))
-- \timer_inst|counter[20]~76\ = CARRY((\timer_inst|counter\(20) & !\timer_inst|counter[19]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_inst|counter\(20),
	datad => VCC,
	cin => \timer_inst|counter[19]~74\,
	combout => \timer_inst|counter[20]~75_combout\,
	cout => \timer_inst|counter[20]~76\);

-- Location: FF_X42_Y26_N9
\timer_inst|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[20]~75_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(20));

-- Location: LCCOMB_X43_Y27_N26
\timer_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|LessThan0~0_combout\ = (!\timer_inst|counter\(20) & (!\timer_inst|counter\(19) & (!\timer_inst|counter\(17) & !\timer_inst|counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|counter\(20),
	datab => \timer_inst|counter\(19),
	datac => \timer_inst|counter\(17),
	datad => \timer_inst|counter\(18),
	combout => \timer_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X42_Y26_N10
\timer_inst|counter[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[21]~77_combout\ = (\timer_inst|counter\(21) & (!\timer_inst|counter[20]~76\)) # (!\timer_inst|counter\(21) & ((\timer_inst|counter[20]~76\) # (GND)))
-- \timer_inst|counter[21]~78\ = CARRY((!\timer_inst|counter[20]~76\) # (!\timer_inst|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|counter\(21),
	datad => VCC,
	cin => \timer_inst|counter[20]~76\,
	combout => \timer_inst|counter[21]~77_combout\,
	cout => \timer_inst|counter[21]~78\);

-- Location: FF_X42_Y26_N11
\timer_inst|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[21]~77_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(21));

-- Location: LCCOMB_X42_Y26_N12
\timer_inst|counter[22]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[22]~79_combout\ = (\timer_inst|counter\(22) & (\timer_inst|counter[21]~78\ $ (GND))) # (!\timer_inst|counter\(22) & (!\timer_inst|counter[21]~78\ & VCC))
-- \timer_inst|counter[22]~80\ = CARRY((\timer_inst|counter\(22) & !\timer_inst|counter[21]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|counter\(22),
	datad => VCC,
	cin => \timer_inst|counter[21]~78\,
	combout => \timer_inst|counter[22]~79_combout\,
	cout => \timer_inst|counter[22]~80\);

-- Location: FF_X42_Y26_N13
\timer_inst|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[22]~79_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(22));

-- Location: LCCOMB_X42_Y26_N14
\timer_inst|counter[23]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[23]~81_combout\ = (\timer_inst|counter\(23) & (!\timer_inst|counter[22]~80\)) # (!\timer_inst|counter\(23) & ((\timer_inst|counter[22]~80\) # (GND)))
-- \timer_inst|counter[23]~82\ = CARRY((!\timer_inst|counter[22]~80\) # (!\timer_inst|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_inst|counter\(23),
	datad => VCC,
	cin => \timer_inst|counter[22]~80\,
	combout => \timer_inst|counter[23]~81_combout\,
	cout => \timer_inst|counter[23]~82\);

-- Location: FF_X42_Y26_N15
\timer_inst|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[23]~81_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(23));

-- Location: LCCOMB_X42_Y26_N16
\timer_inst|counter[24]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[24]~83_combout\ = (\timer_inst|counter\(24) & (\timer_inst|counter[23]~82\ $ (GND))) # (!\timer_inst|counter\(24) & (!\timer_inst|counter[23]~82\ & VCC))
-- \timer_inst|counter[24]~84\ = CARRY((\timer_inst|counter\(24) & !\timer_inst|counter[23]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_inst|counter\(24),
	datad => VCC,
	cin => \timer_inst|counter[23]~82\,
	combout => \timer_inst|counter[24]~83_combout\,
	cout => \timer_inst|counter[24]~84\);

-- Location: FF_X42_Y26_N17
\timer_inst|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[24]~83_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(24));

-- Location: LCCOMB_X42_Y26_N18
\timer_inst|counter[25]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[25]~85_combout\ = (\timer_inst|counter\(25) & (!\timer_inst|counter[24]~84\)) # (!\timer_inst|counter\(25) & ((\timer_inst|counter[24]~84\) # (GND)))
-- \timer_inst|counter[25]~86\ = CARRY((!\timer_inst|counter[24]~84\) # (!\timer_inst|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_inst|counter\(25),
	datad => VCC,
	cin => \timer_inst|counter[24]~84\,
	combout => \timer_inst|counter[25]~85_combout\,
	cout => \timer_inst|counter[25]~86\);

-- Location: FF_X42_Y26_N19
\timer_inst|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[25]~85_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(25));

-- Location: LCCOMB_X42_Y26_N20
\timer_inst|counter[26]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[26]~87_combout\ = (\timer_inst|counter\(26) & (\timer_inst|counter[25]~86\ $ (GND))) # (!\timer_inst|counter\(26) & (!\timer_inst|counter[25]~86\ & VCC))
-- \timer_inst|counter[26]~88\ = CARRY((\timer_inst|counter\(26) & !\timer_inst|counter[25]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_inst|counter\(26),
	datad => VCC,
	cin => \timer_inst|counter[25]~86\,
	combout => \timer_inst|counter[26]~87_combout\,
	cout => \timer_inst|counter[26]~88\);

-- Location: FF_X42_Y26_N21
\timer_inst|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[26]~87_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(26));

-- Location: LCCOMB_X42_Y26_N22
\timer_inst|counter[27]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[27]~89_combout\ = (\timer_inst|counter\(27) & (!\timer_inst|counter[26]~88\)) # (!\timer_inst|counter\(27) & ((\timer_inst|counter[26]~88\) # (GND)))
-- \timer_inst|counter[27]~90\ = CARRY((!\timer_inst|counter[26]~88\) # (!\timer_inst|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|counter\(27),
	datad => VCC,
	cin => \timer_inst|counter[26]~88\,
	combout => \timer_inst|counter[27]~89_combout\,
	cout => \timer_inst|counter[27]~90\);

-- Location: FF_X42_Y26_N23
\timer_inst|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[27]~89_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(27));

-- Location: LCCOMB_X42_Y26_N24
\timer_inst|counter[28]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[28]~91_combout\ = (\timer_inst|counter\(28) & (\timer_inst|counter[27]~90\ $ (GND))) # (!\timer_inst|counter\(28) & (!\timer_inst|counter[27]~90\ & VCC))
-- \timer_inst|counter[28]~92\ = CARRY((\timer_inst|counter\(28) & !\timer_inst|counter[27]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_inst|counter\(28),
	datad => VCC,
	cin => \timer_inst|counter[27]~90\,
	combout => \timer_inst|counter[28]~91_combout\,
	cout => \timer_inst|counter[28]~92\);

-- Location: FF_X42_Y26_N25
\timer_inst|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[28]~91_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(28));

-- Location: LCCOMB_X42_Y26_N26
\timer_inst|counter[29]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[29]~93_combout\ = (\timer_inst|counter\(29) & (!\timer_inst|counter[28]~92\)) # (!\timer_inst|counter\(29) & ((\timer_inst|counter[28]~92\) # (GND)))
-- \timer_inst|counter[29]~94\ = CARRY((!\timer_inst|counter[28]~92\) # (!\timer_inst|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|counter\(29),
	datad => VCC,
	cin => \timer_inst|counter[28]~92\,
	combout => \timer_inst|counter[29]~93_combout\,
	cout => \timer_inst|counter[29]~94\);

-- Location: FF_X42_Y26_N27
\timer_inst|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[29]~93_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(29));

-- Location: LCCOMB_X42_Y26_N28
\timer_inst|counter[30]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[30]~95_combout\ = (\timer_inst|counter\(30) & (\timer_inst|counter[29]~94\ $ (GND))) # (!\timer_inst|counter\(30) & (!\timer_inst|counter[29]~94\ & VCC))
-- \timer_inst|counter[30]~96\ = CARRY((\timer_inst|counter\(30) & !\timer_inst|counter[29]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_inst|counter\(30),
	datad => VCC,
	cin => \timer_inst|counter[29]~94\,
	combout => \timer_inst|counter[30]~95_combout\,
	cout => \timer_inst|counter[30]~96\);

-- Location: FF_X42_Y26_N29
\timer_inst|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[30]~95_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(30));

-- Location: LCCOMB_X42_Y26_N30
\timer_inst|counter[31]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|counter[31]~97_combout\ = \timer_inst|counter\(31) $ (\timer_inst|counter[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|counter\(31),
	cin => \timer_inst|counter[30]~96\,
	combout => \timer_inst|counter[31]~97_combout\);

-- Location: FF_X42_Y26_N31
\timer_inst|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|counter[31]~97_combout\,
	asdata => \~GND~combout\,
	sload => \timer_inst|counter[31]~99_combout\,
	ena => \timer_inst|counter[31]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|counter\(31));

-- Location: LCCOMB_X43_Y27_N10
\timer_inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|LessThan0~4_combout\ = (!\timer_inst|counter\(16) & (!\timer_inst|counter\(14) & (!\timer_inst|counter\(13) & !\timer_inst|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|counter\(16),
	datab => \timer_inst|counter\(14),
	datac => \timer_inst|counter\(13),
	datad => \timer_inst|counter\(15),
	combout => \timer_inst|LessThan0~4_combout\);

-- Location: LCCOMB_X43_Y27_N20
\timer_inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|LessThan0~1_combout\ = (!\timer_inst|counter\(4) & (((!\timer_inst|counter\(1) & !\timer_inst|counter\(2))) # (!\timer_inst|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|counter\(1),
	datab => \timer_inst|counter\(3),
	datac => \timer_inst|counter\(2),
	datad => \timer_inst|counter\(4),
	combout => \timer_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X43_Y27_N4
\timer_inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|LessThan0~3_combout\ = (!\timer_inst|counter\(9) & (!\timer_inst|counter\(11) & (!\timer_inst|counter\(10) & !\timer_inst|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|counter\(9),
	datab => \timer_inst|counter\(11),
	datac => \timer_inst|counter\(10),
	datad => \timer_inst|counter\(12),
	combout => \timer_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X43_Y27_N6
\timer_inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|LessThan0~2_combout\ = (!\timer_inst|counter\(5) & (!\timer_inst|counter\(8) & (!\timer_inst|counter\(7) & !\timer_inst|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|counter\(5),
	datab => \timer_inst|counter\(8),
	datac => \timer_inst|counter\(7),
	datad => \timer_inst|counter\(6),
	combout => \timer_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X43_Y27_N8
\timer_inst|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|LessThan0~5_combout\ = (\timer_inst|LessThan0~4_combout\ & (\timer_inst|LessThan0~1_combout\ & (\timer_inst|LessThan0~3_combout\ & \timer_inst|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|LessThan0~4_combout\,
	datab => \timer_inst|LessThan0~1_combout\,
	datac => \timer_inst|LessThan0~3_combout\,
	datad => \timer_inst|LessThan0~2_combout\,
	combout => \timer_inst|LessThan0~5_combout\);

-- Location: LCCOMB_X43_Y27_N30
\timer_inst|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|LessThan0~6_combout\ = (!\timer_inst|counter\(25) & (!\timer_inst|counter\(27) & (!\timer_inst|counter\(26) & !\timer_inst|counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|counter\(25),
	datab => \timer_inst|counter\(27),
	datac => \timer_inst|counter\(26),
	datad => \timer_inst|counter\(28),
	combout => \timer_inst|LessThan0~6_combout\);

-- Location: LCCOMB_X43_Y27_N24
\timer_inst|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|LessThan0~7_combout\ = (\timer_inst|counter\(29)) # ((\timer_inst|counter\(23)) # ((\timer_inst|counter\(22)) # (\timer_inst|counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|counter\(29),
	datab => \timer_inst|counter\(23),
	datac => \timer_inst|counter\(22),
	datad => \timer_inst|counter\(30),
	combout => \timer_inst|LessThan0~7_combout\);

-- Location: LCCOMB_X43_Y27_N2
\timer_inst|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|LessThan0~8_combout\ = (!\timer_inst|counter\(24) & (!\timer_inst|counter\(21) & (\timer_inst|LessThan0~6_combout\ & !\timer_inst|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|counter\(24),
	datab => \timer_inst|counter\(21),
	datac => \timer_inst|LessThan0~6_combout\,
	datad => \timer_inst|LessThan0~7_combout\,
	combout => \timer_inst|LessThan0~8_combout\);

-- Location: LCCOMB_X43_Y27_N12
\timer_inst|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|LessThan0~9_combout\ = (\timer_inst|counter\(31)) # ((\timer_inst|LessThan0~0_combout\ & (\timer_inst|LessThan0~5_combout\ & \timer_inst|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|LessThan0~0_combout\,
	datab => \timer_inst|counter\(31),
	datac => \timer_inst|LessThan0~5_combout\,
	datad => \timer_inst|LessThan0~8_combout\,
	combout => \timer_inst|LessThan0~9_combout\);

-- Location: LCCOMB_X43_Y27_N28
\timer_inst|pulse_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_inst|pulse_out~2_combout\ = (\timer_inst|active~q\ & (\timer_inst|LessThan0~9_combout\ & (\timer_inst|pulse_out~q\))) # (!\timer_inst|active~q\ & (((\timer_inst|pulse_out~q\) # (!\KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_inst|LessThan0~9_combout\,
	datab => \timer_inst|active~q\,
	datac => \timer_inst|pulse_out~q\,
	datad => \KEY[0]~input_o\,
	combout => \timer_inst|pulse_out~2_combout\);

-- Location: FF_X43_Y27_N29
\timer_inst|pulse_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer_inst|pulse_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_inst|pulse_out~q\);

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


