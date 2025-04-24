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

-- DATE "03/25/2025 09:29:23"

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

ENTITY 	FreqDivider_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	LEDR : BUFFER std_logic_vector(17 DOWNTO 0)
	);
END FreqDivider_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FreqDivider_Demo IS
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
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \U1|Add2~0_combout\ : std_logic;
SIGNAL \U1|Add2~1\ : std_logic;
SIGNAL \U1|Add2~2_combout\ : std_logic;
SIGNAL \U1|Add2~3\ : std_logic;
SIGNAL \U1|Add2~4_combout\ : std_logic;
SIGNAL \U1|Add2~5\ : std_logic;
SIGNAL \U1|Add2~6_combout\ : std_logic;
SIGNAL \U1|Add2~7\ : std_logic;
SIGNAL \U1|Add2~8_combout\ : std_logic;
SIGNAL \U1|Add2~9\ : std_logic;
SIGNAL \U1|Add2~10_combout\ : std_logic;
SIGNAL \U1|Add2~11\ : std_logic;
SIGNAL \U1|Add2~12_combout\ : std_logic;
SIGNAL \U1|Equal0~6_combout\ : std_logic;
SIGNAL \U1|Add2~15\ : std_logic;
SIGNAL \U1|Add2~16_combout\ : std_logic;
SIGNAL \U1|Add2~17\ : std_logic;
SIGNAL \U1|Add2~18_combout\ : std_logic;
SIGNAL \U1|Add2~19\ : std_logic;
SIGNAL \U1|Add2~20_combout\ : std_logic;
SIGNAL \U1|Add2~21\ : std_logic;
SIGNAL \U1|Add2~22_combout\ : std_logic;
SIGNAL \U1|s_counter~6_combout\ : std_logic;
SIGNAL \U1|Add2~23\ : std_logic;
SIGNAL \U1|Add2~24_combout\ : std_logic;
SIGNAL \U1|s_counter~5_combout\ : std_logic;
SIGNAL \U1|Add2~25\ : std_logic;
SIGNAL \U1|Add2~26_combout\ : std_logic;
SIGNAL \U1|s_counter~4_combout\ : std_logic;
SIGNAL \U1|Add2~27\ : std_logic;
SIGNAL \U1|Add2~28_combout\ : std_logic;
SIGNAL \U1|s_counter~11_combout\ : std_logic;
SIGNAL \U1|Add2~29\ : std_logic;
SIGNAL \U1|Add2~30_combout\ : std_logic;
SIGNAL \U1|Add2~31\ : std_logic;
SIGNAL \U1|Add2~32_combout\ : std_logic;
SIGNAL \U1|s_counter~10_combout\ : std_logic;
SIGNAL \U1|Add2~33\ : std_logic;
SIGNAL \U1|Add2~34_combout\ : std_logic;
SIGNAL \U1|Add2~35\ : std_logic;
SIGNAL \U1|Add2~36_combout\ : std_logic;
SIGNAL \U1|s_counter~3_combout\ : std_logic;
SIGNAL \U1|Add2~37\ : std_logic;
SIGNAL \U1|Add2~38_combout\ : std_logic;
SIGNAL \U1|s_counter~2_combout\ : std_logic;
SIGNAL \U1|Add2~39\ : std_logic;
SIGNAL \U1|Add2~40_combout\ : std_logic;
SIGNAL \U1|s_counter~1_combout\ : std_logic;
SIGNAL \U1|Add2~41\ : std_logic;
SIGNAL \U1|Add2~42_combout\ : std_logic;
SIGNAL \U1|s_counter~0_combout\ : std_logic;
SIGNAL \U1|Add2~43\ : std_logic;
SIGNAL \U1|Add2~44_combout\ : std_logic;
SIGNAL \U1|s_counter~9_combout\ : std_logic;
SIGNAL \U1|Add2~45\ : std_logic;
SIGNAL \U1|Add2~46_combout\ : std_logic;
SIGNAL \U1|Add2~47\ : std_logic;
SIGNAL \U1|Add2~48_combout\ : std_logic;
SIGNAL \U1|s_counter~8_combout\ : std_logic;
SIGNAL \U1|Equal0~8_combout\ : std_logic;
SIGNAL \U1|Equal0~9_combout\ : std_logic;
SIGNAL \U1|Equal0~10_combout\ : std_logic;
SIGNAL \U1|Add2~49\ : std_logic;
SIGNAL \U1|Add2~50_combout\ : std_logic;
SIGNAL \U1|Add2~51\ : std_logic;
SIGNAL \U1|Add2~52_combout\ : std_logic;
SIGNAL \U1|Add2~53\ : std_logic;
SIGNAL \U1|Add2~54_combout\ : std_logic;
SIGNAL \U1|Equal0~1_combout\ : std_logic;
SIGNAL \U1|Equal0~2_combout\ : std_logic;
SIGNAL \U1|Add2~55\ : std_logic;
SIGNAL \U1|Add2~56_combout\ : std_logic;
SIGNAL \U1|Add2~57\ : std_logic;
SIGNAL \U1|Add2~58_combout\ : std_logic;
SIGNAL \U1|Add2~59\ : std_logic;
SIGNAL \U1|Add2~60_combout\ : std_logic;
SIGNAL \U1|Add2~61\ : std_logic;
SIGNAL \U1|Add2~62_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|Equal0~3_combout\ : std_logic;
SIGNAL \U1|Equal0~4_combout\ : std_logic;
SIGNAL \U1|Equal0~11_combout\ : std_logic;
SIGNAL \U1|s_counter~7_combout\ : std_logic;
SIGNAL \U1|Add2~13\ : std_logic;
SIGNAL \U1|Add2~14_combout\ : std_logic;
SIGNAL \U1|Equal0~5_combout\ : std_logic;
SIGNAL \U1|Equal0~7_combout\ : std_logic;
SIGNAL \U1|s_clkOut~0_combout\ : std_logic;
SIGNAL \U1|s_clkOut~1_combout\ : std_logic;
SIGNAL \U1|s_clkOut~2_combout\ : std_logic;
SIGNAL \U1|s_clkOut~3_combout\ : std_logic;
SIGNAL \U1|s_clkOut~q\ : std_logic;
SIGNAL \U1|s_counter\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
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
	i => \U1|s_clkOut~q\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

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

-- Location: LCCOMB_X81_Y70_N0
\U1|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~0_combout\ = \U1|s_counter\(0) $ (VCC)
-- \U1|Add2~1\ = CARRY(\U1|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|s_counter\(0),
	datad => VCC,
	combout => \U1|Add2~0_combout\,
	cout => \U1|Add2~1\);

-- Location: FF_X81_Y70_N1
\U1|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(0));

-- Location: LCCOMB_X81_Y70_N2
\U1|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~2_combout\ = (\U1|s_counter\(1) & (!\U1|Add2~1\)) # (!\U1|s_counter\(1) & ((\U1|Add2~1\) # (GND)))
-- \U1|Add2~3\ = CARRY((!\U1|Add2~1\) # (!\U1|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|s_counter\(1),
	datad => VCC,
	cin => \U1|Add2~1\,
	combout => \U1|Add2~2_combout\,
	cout => \U1|Add2~3\);

-- Location: FF_X81_Y70_N3
\U1|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(1));

-- Location: LCCOMB_X81_Y70_N4
\U1|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~4_combout\ = (\U1|s_counter\(2) & (\U1|Add2~3\ $ (GND))) # (!\U1|s_counter\(2) & (!\U1|Add2~3\ & VCC))
-- \U1|Add2~5\ = CARRY((\U1|s_counter\(2) & !\U1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|s_counter\(2),
	datad => VCC,
	cin => \U1|Add2~3\,
	combout => \U1|Add2~4_combout\,
	cout => \U1|Add2~5\);

-- Location: FF_X81_Y70_N5
\U1|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(2));

-- Location: LCCOMB_X81_Y70_N6
\U1|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~6_combout\ = (\U1|s_counter\(3) & (!\U1|Add2~5\)) # (!\U1|s_counter\(3) & ((\U1|Add2~5\) # (GND)))
-- \U1|Add2~7\ = CARRY((!\U1|Add2~5\) # (!\U1|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(3),
	datad => VCC,
	cin => \U1|Add2~5\,
	combout => \U1|Add2~6_combout\,
	cout => \U1|Add2~7\);

-- Location: FF_X81_Y70_N7
\U1|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(3));

-- Location: LCCOMB_X81_Y70_N8
\U1|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~8_combout\ = (\U1|s_counter\(4) & (\U1|Add2~7\ $ (GND))) # (!\U1|s_counter\(4) & (!\U1|Add2~7\ & VCC))
-- \U1|Add2~9\ = CARRY((\U1|s_counter\(4) & !\U1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|s_counter\(4),
	datad => VCC,
	cin => \U1|Add2~7\,
	combout => \U1|Add2~8_combout\,
	cout => \U1|Add2~9\);

-- Location: FF_X81_Y70_N9
\U1|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(4));

-- Location: LCCOMB_X81_Y70_N10
\U1|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~10_combout\ = (\U1|s_counter\(5) & (!\U1|Add2~9\)) # (!\U1|s_counter\(5) & ((\U1|Add2~9\) # (GND)))
-- \U1|Add2~11\ = CARRY((!\U1|Add2~9\) # (!\U1|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(5),
	datad => VCC,
	cin => \U1|Add2~9\,
	combout => \U1|Add2~10_combout\,
	cout => \U1|Add2~11\);

-- Location: FF_X81_Y70_N11
\U1|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(5));

-- Location: LCCOMB_X81_Y70_N12
\U1|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~12_combout\ = (\U1|s_counter\(6) & (\U1|Add2~11\ $ (GND))) # (!\U1|s_counter\(6) & (!\U1|Add2~11\ & VCC))
-- \U1|Add2~13\ = CARRY((\U1|s_counter\(6) & !\U1|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|s_counter\(6),
	datad => VCC,
	cin => \U1|Add2~11\,
	combout => \U1|Add2~12_combout\,
	cout => \U1|Add2~13\);

-- Location: LCCOMB_X80_Y70_N30
\U1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~6_combout\ = (\U1|s_counter\(1) & (\U1|s_counter\(0) & \U1|s_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(1),
	datac => \U1|s_counter\(0),
	datad => \U1|s_counter\(2),
	combout => \U1|Equal0~6_combout\);

-- Location: LCCOMB_X81_Y70_N14
\U1|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~14_combout\ = (\U1|s_counter\(7) & (!\U1|Add2~13\)) # (!\U1|s_counter\(7) & ((\U1|Add2~13\) # (GND)))
-- \U1|Add2~15\ = CARRY((!\U1|Add2~13\) # (!\U1|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|s_counter\(7),
	datad => VCC,
	cin => \U1|Add2~13\,
	combout => \U1|Add2~14_combout\,
	cout => \U1|Add2~15\);

-- Location: LCCOMB_X81_Y70_N16
\U1|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~16_combout\ = (\U1|s_counter\(8) & (\U1|Add2~15\ $ (GND))) # (!\U1|s_counter\(8) & (!\U1|Add2~15\ & VCC))
-- \U1|Add2~17\ = CARRY((\U1|s_counter\(8) & !\U1|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|s_counter\(8),
	datad => VCC,
	cin => \U1|Add2~15\,
	combout => \U1|Add2~16_combout\,
	cout => \U1|Add2~17\);

-- Location: FF_X81_Y70_N17
\U1|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(8));

-- Location: LCCOMB_X81_Y70_N18
\U1|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~18_combout\ = (\U1|s_counter\(9) & (!\U1|Add2~17\)) # (!\U1|s_counter\(9) & ((\U1|Add2~17\) # (GND)))
-- \U1|Add2~19\ = CARRY((!\U1|Add2~17\) # (!\U1|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|s_counter\(9),
	datad => VCC,
	cin => \U1|Add2~17\,
	combout => \U1|Add2~18_combout\,
	cout => \U1|Add2~19\);

-- Location: FF_X81_Y70_N19
\U1|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(9));

-- Location: LCCOMB_X81_Y70_N20
\U1|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~20_combout\ = (\U1|s_counter\(10) & (\U1|Add2~19\ $ (GND))) # (!\U1|s_counter\(10) & (!\U1|Add2~19\ & VCC))
-- \U1|Add2~21\ = CARRY((\U1|s_counter\(10) & !\U1|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|s_counter\(10),
	datad => VCC,
	cin => \U1|Add2~19\,
	combout => \U1|Add2~20_combout\,
	cout => \U1|Add2~21\);

-- Location: FF_X81_Y70_N21
\U1|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(10));

-- Location: LCCOMB_X81_Y70_N22
\U1|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~22_combout\ = (\U1|s_counter\(11) & (!\U1|Add2~21\)) # (!\U1|s_counter\(11) & ((\U1|Add2~21\) # (GND)))
-- \U1|Add2~23\ = CARRY((!\U1|Add2~21\) # (!\U1|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|s_counter\(11),
	datad => VCC,
	cin => \U1|Add2~21\,
	combout => \U1|Add2~22_combout\,
	cout => \U1|Add2~23\);

-- Location: LCCOMB_X82_Y69_N26
\U1|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|s_counter~6_combout\ = (\U1|Add2~22_combout\ & !\U1|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~22_combout\,
	datad => \U1|Equal0~11_combout\,
	combout => \U1|s_counter~6_combout\);

-- Location: FF_X82_Y69_N27
\U1|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(11));

-- Location: LCCOMB_X81_Y70_N24
\U1|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~24_combout\ = (\U1|s_counter\(12) & (\U1|Add2~23\ $ (GND))) # (!\U1|s_counter\(12) & (!\U1|Add2~23\ & VCC))
-- \U1|Add2~25\ = CARRY((\U1|s_counter\(12) & !\U1|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(12),
	datad => VCC,
	cin => \U1|Add2~23\,
	combout => \U1|Add2~24_combout\,
	cout => \U1|Add2~25\);

-- Location: LCCOMB_X82_Y69_N0
\U1|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|s_counter~5_combout\ = (\U1|Add2~24_combout\ & !\U1|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~24_combout\,
	datad => \U1|Equal0~11_combout\,
	combout => \U1|s_counter~5_combout\);

-- Location: FF_X82_Y69_N1
\U1|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(12));

-- Location: LCCOMB_X81_Y70_N26
\U1|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~26_combout\ = (\U1|s_counter\(13) & (!\U1|Add2~25\)) # (!\U1|s_counter\(13) & ((\U1|Add2~25\) # (GND)))
-- \U1|Add2~27\ = CARRY((!\U1|Add2~25\) # (!\U1|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|s_counter\(13),
	datad => VCC,
	cin => \U1|Add2~25\,
	combout => \U1|Add2~26_combout\,
	cout => \U1|Add2~27\);

-- Location: LCCOMB_X82_Y69_N4
\U1|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|s_counter~4_combout\ = (\U1|Add2~26_combout\ & !\U1|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~26_combout\,
	datad => \U1|Equal0~11_combout\,
	combout => \U1|s_counter~4_combout\);

-- Location: FF_X82_Y69_N5
\U1|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(13));

-- Location: LCCOMB_X81_Y70_N28
\U1|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~28_combout\ = (\U1|s_counter\(14) & (\U1|Add2~27\ $ (GND))) # (!\U1|s_counter\(14) & (!\U1|Add2~27\ & VCC))
-- \U1|Add2~29\ = CARRY((\U1|s_counter\(14) & !\U1|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(14),
	datad => VCC,
	cin => \U1|Add2~27\,
	combout => \U1|Add2~28_combout\,
	cout => \U1|Add2~29\);

-- Location: LCCOMB_X80_Y69_N4
\U1|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|s_counter~11_combout\ = (!\U1|Equal0~11_combout\ & \U1|Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~11_combout\,
	datad => \U1|Add2~28_combout\,
	combout => \U1|s_counter~11_combout\);

-- Location: FF_X80_Y69_N5
\U1|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(14));

-- Location: LCCOMB_X81_Y70_N30
\U1|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~30_combout\ = (\U1|s_counter\(15) & (!\U1|Add2~29\)) # (!\U1|s_counter\(15) & ((\U1|Add2~29\) # (GND)))
-- \U1|Add2~31\ = CARRY((!\U1|Add2~29\) # (!\U1|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(15),
	datad => VCC,
	cin => \U1|Add2~29\,
	combout => \U1|Add2~30_combout\,
	cout => \U1|Add2~31\);

-- Location: FF_X81_Y70_N31
\U1|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(15));

-- Location: LCCOMB_X81_Y69_N0
\U1|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~32_combout\ = (\U1|s_counter\(16) & (\U1|Add2~31\ $ (GND))) # (!\U1|s_counter\(16) & (!\U1|Add2~31\ & VCC))
-- \U1|Add2~33\ = CARRY((\U1|s_counter\(16) & !\U1|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(16),
	datad => VCC,
	cin => \U1|Add2~31\,
	combout => \U1|Add2~32_combout\,
	cout => \U1|Add2~33\);

-- Location: LCCOMB_X80_Y69_N26
\U1|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|s_counter~10_combout\ = (\U1|Add2~32_combout\ & !\U1|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~32_combout\,
	datad => \U1|Equal0~11_combout\,
	combout => \U1|s_counter~10_combout\);

-- Location: FF_X80_Y69_N27
\U1|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(16));

-- Location: LCCOMB_X81_Y69_N2
\U1|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~34_combout\ = (\U1|s_counter\(17) & (!\U1|Add2~33\)) # (!\U1|s_counter\(17) & ((\U1|Add2~33\) # (GND)))
-- \U1|Add2~35\ = CARRY((!\U1|Add2~33\) # (!\U1|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|s_counter\(17),
	datad => VCC,
	cin => \U1|Add2~33\,
	combout => \U1|Add2~34_combout\,
	cout => \U1|Add2~35\);

-- Location: FF_X81_Y69_N3
\U1|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(17));

-- Location: LCCOMB_X81_Y69_N4
\U1|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~36_combout\ = (\U1|s_counter\(18) & (\U1|Add2~35\ $ (GND))) # (!\U1|s_counter\(18) & (!\U1|Add2~35\ & VCC))
-- \U1|Add2~37\ = CARRY((\U1|s_counter\(18) & !\U1|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(18),
	datad => VCC,
	cin => \U1|Add2~35\,
	combout => \U1|Add2~36_combout\,
	cout => \U1|Add2~37\);

-- Location: LCCOMB_X82_Y69_N6
\U1|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|s_counter~3_combout\ = (\U1|Add2~36_combout\ & !\U1|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~36_combout\,
	datad => \U1|Equal0~11_combout\,
	combout => \U1|s_counter~3_combout\);

-- Location: FF_X82_Y69_N7
\U1|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(18));

-- Location: LCCOMB_X81_Y69_N6
\U1|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~38_combout\ = (\U1|s_counter\(19) & (!\U1|Add2~37\)) # (!\U1|s_counter\(19) & ((\U1|Add2~37\) # (GND)))
-- \U1|Add2~39\ = CARRY((!\U1|Add2~37\) # (!\U1|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(19),
	datad => VCC,
	cin => \U1|Add2~37\,
	combout => \U1|Add2~38_combout\,
	cout => \U1|Add2~39\);

-- Location: LCCOMB_X82_Y69_N20
\U1|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|s_counter~2_combout\ = (\U1|Add2~38_combout\ & !\U1|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~38_combout\,
	datad => \U1|Equal0~11_combout\,
	combout => \U1|s_counter~2_combout\);

-- Location: FF_X82_Y69_N21
\U1|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(19));

-- Location: LCCOMB_X81_Y69_N8
\U1|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~40_combout\ = (\U1|s_counter\(20) & (\U1|Add2~39\ $ (GND))) # (!\U1|s_counter\(20) & (!\U1|Add2~39\ & VCC))
-- \U1|Add2~41\ = CARRY((\U1|s_counter\(20) & !\U1|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(20),
	datad => VCC,
	cin => \U1|Add2~39\,
	combout => \U1|Add2~40_combout\,
	cout => \U1|Add2~41\);

-- Location: LCCOMB_X82_Y69_N30
\U1|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|s_counter~1_combout\ = (!\U1|Equal0~11_combout\ & \U1|Add2~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal0~11_combout\,
	datad => \U1|Add2~40_combout\,
	combout => \U1|s_counter~1_combout\);

-- Location: FF_X82_Y69_N31
\U1|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(20));

-- Location: LCCOMB_X81_Y69_N10
\U1|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~42_combout\ = (\U1|s_counter\(21) & (!\U1|Add2~41\)) # (!\U1|s_counter\(21) & ((\U1|Add2~41\) # (GND)))
-- \U1|Add2~43\ = CARRY((!\U1|Add2~41\) # (!\U1|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|s_counter\(21),
	datad => VCC,
	cin => \U1|Add2~41\,
	combout => \U1|Add2~42_combout\,
	cout => \U1|Add2~43\);

-- Location: LCCOMB_X82_Y69_N22
\U1|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|s_counter~0_combout\ = (!\U1|Equal0~11_combout\ & \U1|Add2~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal0~11_combout\,
	datad => \U1|Add2~42_combout\,
	combout => \U1|s_counter~0_combout\);

-- Location: FF_X82_Y69_N23
\U1|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(21));

-- Location: LCCOMB_X81_Y69_N12
\U1|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~44_combout\ = (\U1|s_counter\(22) & (\U1|Add2~43\ $ (GND))) # (!\U1|s_counter\(22) & (!\U1|Add2~43\ & VCC))
-- \U1|Add2~45\ = CARRY((\U1|s_counter\(22) & !\U1|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(22),
	datad => VCC,
	cin => \U1|Add2~43\,
	combout => \U1|Add2~44_combout\,
	cout => \U1|Add2~45\);

-- Location: LCCOMB_X80_Y69_N10
\U1|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|s_counter~9_combout\ = (\U1|Add2~44_combout\ & !\U1|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~44_combout\,
	datad => \U1|Equal0~11_combout\,
	combout => \U1|s_counter~9_combout\);

-- Location: FF_X80_Y69_N11
\U1|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(22));

-- Location: LCCOMB_X81_Y69_N14
\U1|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~46_combout\ = (\U1|s_counter\(23) & (!\U1|Add2~45\)) # (!\U1|s_counter\(23) & ((\U1|Add2~45\) # (GND)))
-- \U1|Add2~47\ = CARRY((!\U1|Add2~45\) # (!\U1|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|s_counter\(23),
	datad => VCC,
	cin => \U1|Add2~45\,
	combout => \U1|Add2~46_combout\,
	cout => \U1|Add2~47\);

-- Location: FF_X81_Y69_N15
\U1|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(23));

-- Location: LCCOMB_X81_Y69_N16
\U1|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~48_combout\ = (\U1|s_counter\(24) & (\U1|Add2~47\ $ (GND))) # (!\U1|s_counter\(24) & (!\U1|Add2~47\ & VCC))
-- \U1|Add2~49\ = CARRY((\U1|s_counter\(24) & !\U1|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(24),
	datad => VCC,
	cin => \U1|Add2~47\,
	combout => \U1|Add2~48_combout\,
	cout => \U1|Add2~49\);

-- Location: LCCOMB_X80_Y69_N16
\U1|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|s_counter~8_combout\ = (!\U1|Equal0~11_combout\ & \U1|Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~11_combout\,
	datad => \U1|Add2~48_combout\,
	combout => \U1|s_counter~8_combout\);

-- Location: FF_X80_Y69_N17
\U1|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(24));

-- Location: LCCOMB_X80_Y69_N30
\U1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~8_combout\ = (\U1|s_counter\(22) & (\U1|s_counter\(24) & (!\U1|s_counter\(23) & !\U1|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(22),
	datab => \U1|s_counter\(24),
	datac => \U1|s_counter\(23),
	datad => \U1|s_counter\(17),
	combout => \U1|Equal0~8_combout\);

-- Location: LCCOMB_X80_Y69_N24
\U1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~9_combout\ = (\U1|s_counter\(16) & (\U1|s_counter\(14) & (!\U1|s_counter\(15) & !\U1|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(16),
	datab => \U1|s_counter\(14),
	datac => \U1|s_counter\(15),
	datad => \U1|s_counter\(10),
	combout => \U1|Equal0~9_combout\);

-- Location: LCCOMB_X80_Y69_N14
\U1|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~10_combout\ = (\U1|s_counter\(5) & (\U1|Equal0~8_combout\ & \U1|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|s_counter\(5),
	datac => \U1|Equal0~8_combout\,
	datad => \U1|Equal0~9_combout\,
	combout => \U1|Equal0~10_combout\);

-- Location: LCCOMB_X81_Y69_N18
\U1|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~50_combout\ = (\U1|s_counter\(25) & (!\U1|Add2~49\)) # (!\U1|s_counter\(25) & ((\U1|Add2~49\) # (GND)))
-- \U1|Add2~51\ = CARRY((!\U1|Add2~49\) # (!\U1|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|s_counter\(25),
	datad => VCC,
	cin => \U1|Add2~49\,
	combout => \U1|Add2~50_combout\,
	cout => \U1|Add2~51\);

-- Location: FF_X81_Y69_N19
\U1|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(25));

-- Location: LCCOMB_X81_Y69_N20
\U1|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~52_combout\ = (\U1|s_counter\(26) & (\U1|Add2~51\ $ (GND))) # (!\U1|s_counter\(26) & (!\U1|Add2~51\ & VCC))
-- \U1|Add2~53\ = CARRY((\U1|s_counter\(26) & !\U1|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|s_counter\(26),
	datad => VCC,
	cin => \U1|Add2~51\,
	combout => \U1|Add2~52_combout\,
	cout => \U1|Add2~53\);

-- Location: FF_X81_Y69_N21
\U1|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(26));

-- Location: LCCOMB_X81_Y69_N22
\U1|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~54_combout\ = (\U1|s_counter\(27) & (!\U1|Add2~53\)) # (!\U1|s_counter\(27) & ((\U1|Add2~53\) # (GND)))
-- \U1|Add2~55\ = CARRY((!\U1|Add2~53\) # (!\U1|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(27),
	datad => VCC,
	cin => \U1|Add2~53\,
	combout => \U1|Add2~54_combout\,
	cout => \U1|Add2~55\);

-- Location: FF_X81_Y69_N23
\U1|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(27));

-- Location: LCCOMB_X82_Y69_N12
\U1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~1_combout\ = (\U1|s_counter\(21) & (!\U1|s_counter\(26) & (!\U1|s_counter\(27) & !\U1|s_counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(21),
	datab => \U1|s_counter\(26),
	datac => \U1|s_counter\(27),
	datad => \U1|s_counter\(25),
	combout => \U1|Equal0~1_combout\);

-- Location: LCCOMB_X82_Y69_N18
\U1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~2_combout\ = (\U1|s_counter\(20) & (\U1|s_counter\(19) & (\U1|s_counter\(13) & \U1|s_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(20),
	datab => \U1|s_counter\(19),
	datac => \U1|s_counter\(13),
	datad => \U1|s_counter\(18),
	combout => \U1|Equal0~2_combout\);

-- Location: LCCOMB_X81_Y69_N24
\U1|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~56_combout\ = (\U1|s_counter\(28) & (\U1|Add2~55\ $ (GND))) # (!\U1|s_counter\(28) & (!\U1|Add2~55\ & VCC))
-- \U1|Add2~57\ = CARRY((\U1|s_counter\(28) & !\U1|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|s_counter\(28),
	datad => VCC,
	cin => \U1|Add2~55\,
	combout => \U1|Add2~56_combout\,
	cout => \U1|Add2~57\);

-- Location: FF_X81_Y69_N25
\U1|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(28));

-- Location: LCCOMB_X81_Y69_N26
\U1|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~58_combout\ = (\U1|s_counter\(29) & (!\U1|Add2~57\)) # (!\U1|s_counter\(29) & ((\U1|Add2~57\) # (GND)))
-- \U1|Add2~59\ = CARRY((!\U1|Add2~57\) # (!\U1|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(29),
	datad => VCC,
	cin => \U1|Add2~57\,
	combout => \U1|Add2~58_combout\,
	cout => \U1|Add2~59\);

-- Location: FF_X81_Y69_N27
\U1|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(29));

-- Location: LCCOMB_X81_Y69_N28
\U1|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~60_combout\ = (\U1|s_counter\(30) & (\U1|Add2~59\ $ (GND))) # (!\U1|s_counter\(30) & (!\U1|Add2~59\ & VCC))
-- \U1|Add2~61\ = CARRY((\U1|s_counter\(30) & !\U1|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|s_counter\(30),
	datad => VCC,
	cin => \U1|Add2~59\,
	combout => \U1|Add2~60_combout\,
	cout => \U1|Add2~61\);

-- Location: FF_X81_Y69_N29
\U1|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(30));

-- Location: LCCOMB_X81_Y69_N30
\U1|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add2~62_combout\ = \U1|s_counter\(31) $ (\U1|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(31),
	cin => \U1|Add2~61\,
	combout => \U1|Add2~62_combout\);

-- Location: FF_X81_Y69_N31
\U1|s_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(31));

-- Location: LCCOMB_X82_Y69_N8
\U1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (!\U1|s_counter\(29) & (!\U1|s_counter\(28) & (!\U1|s_counter\(30) & !\U1|s_counter\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(29),
	datab => \U1|s_counter\(28),
	datac => \U1|s_counter\(30),
	datad => \U1|s_counter\(31),
	combout => \U1|Equal0~0_combout\);

-- Location: LCCOMB_X82_Y69_N24
\U1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~3_combout\ = (\U1|s_counter\(11) & (\U1|s_counter\(12) & (!\U1|s_counter\(8) & !\U1|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(11),
	datab => \U1|s_counter\(12),
	datac => \U1|s_counter\(8),
	datad => \U1|s_counter\(9),
	combout => \U1|Equal0~3_combout\);

-- Location: LCCOMB_X82_Y69_N10
\U1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~4_combout\ = (\U1|Equal0~1_combout\ & (\U1|Equal0~2_combout\ & (\U1|Equal0~0_combout\ & \U1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~1_combout\,
	datab => \U1|Equal0~2_combout\,
	datac => \U1|Equal0~0_combout\,
	datad => \U1|Equal0~3_combout\,
	combout => \U1|Equal0~4_combout\);

-- Location: LCCOMB_X80_Y69_N28
\U1|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~11_combout\ = (\U1|Equal0~6_combout\ & (\U1|Equal0~5_combout\ & (\U1|Equal0~10_combout\ & \U1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~6_combout\,
	datab => \U1|Equal0~5_combout\,
	datac => \U1|Equal0~10_combout\,
	datad => \U1|Equal0~4_combout\,
	combout => \U1|Equal0~11_combout\);

-- Location: LCCOMB_X80_Y69_N2
\U1|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|s_counter~7_combout\ = (\U1|Add2~12_combout\ & !\U1|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add2~12_combout\,
	datad => \U1|Equal0~11_combout\,
	combout => \U1|s_counter~7_combout\);

-- Location: FF_X81_Y70_N29
\U1|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U1|s_counter~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(6));

-- Location: FF_X81_Y70_N15
\U1|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|Add2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_counter\(7));

-- Location: LCCOMB_X80_Y70_N4
\U1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~5_combout\ = (\U1|s_counter\(3) & (\U1|s_counter\(4) & (!\U1|s_counter\(7) & !\U1|s_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(3),
	datab => \U1|s_counter\(4),
	datac => \U1|s_counter\(7),
	datad => \U1|s_counter\(6),
	combout => \U1|Equal0~5_combout\);

-- Location: LCCOMB_X80_Y69_N22
\U1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~7_combout\ = (\U1|Equal0~5_combout\ & (\U1|Equal0~6_combout\ & \U1|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~5_combout\,
	datac => \U1|Equal0~6_combout\,
	datad => \U1|Equal0~4_combout\,
	combout => \U1|Equal0~7_combout\);

-- Location: LCCOMB_X80_Y69_N8
\U1|s_clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|s_clkOut~0_combout\ = (!\U1|s_counter\(22) & (!\U1|s_counter\(24) & (\U1|s_counter\(23) & \U1|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(22),
	datab => \U1|s_counter\(24),
	datac => \U1|s_counter\(23),
	datad => \U1|s_counter\(17),
	combout => \U1|s_clkOut~0_combout\);

-- Location: LCCOMB_X80_Y69_N18
\U1|s_clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|s_clkOut~1_combout\ = (!\U1|s_counter\(16) & (!\U1|s_counter\(14) & (\U1|s_counter\(15) & \U1|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|s_counter\(16),
	datab => \U1|s_counter\(14),
	datac => \U1|s_counter\(15),
	datad => \U1|s_counter\(10),
	combout => \U1|s_clkOut~1_combout\);

-- Location: LCCOMB_X80_Y69_N20
\U1|s_clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|s_clkOut~2_combout\ = (!\U1|s_counter\(5) & (\U1|s_clkOut~0_combout\ & \U1|s_clkOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|s_counter\(5),
	datac => \U1|s_clkOut~0_combout\,
	datad => \U1|s_clkOut~1_combout\,
	combout => \U1|s_clkOut~2_combout\);

-- Location: LCCOMB_X80_Y69_N12
\U1|s_clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|s_clkOut~3_combout\ = (!\U1|Equal0~11_combout\ & ((\U1|s_clkOut~q\) # ((\U1|Equal0~7_combout\ & \U1|s_clkOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~7_combout\,
	datab => \U1|s_clkOut~2_combout\,
	datac => \U1|s_clkOut~q\,
	datad => \U1|Equal0~11_combout\,
	combout => \U1|s_clkOut~3_combout\);

-- Location: FF_X80_Y69_N13
\U1|s_clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U1|s_clkOut~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|s_clkOut~q\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;
END structure;


