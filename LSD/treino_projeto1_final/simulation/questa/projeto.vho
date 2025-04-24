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

-- DATE "04/07/2025 17:49:15"

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

ENTITY 	projeto IS
    PORT (
	CLK : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDR : OUT std_logic_vector(3 DOWNTO 0);
	LEDG : OUT std_logic_vector(3 DOWNTO 0)
	);
END projeto;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF projeto IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \fd_inst|s_divCounter[0]~25_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[23]~72\ : std_logic;
SIGNAL \fd_inst|s_divCounter[24]~73_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \ps_inst|Mux1~0_combout\ : std_logic;
SIGNAL \fd_inst|clkOut~0_combout\ : std_logic;
SIGNAL \fd_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \fd_inst|clkOut~2_combout\ : std_logic;
SIGNAL \fd_inst|clkOut~1_combout\ : std_logic;
SIGNAL \fd_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \fd_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \fd_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \fd_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[0]~26\ : std_logic;
SIGNAL \fd_inst|s_divCounter[1]~27_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[1]~28\ : std_logic;
SIGNAL \fd_inst|s_divCounter[2]~29_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[2]~30\ : std_logic;
SIGNAL \fd_inst|s_divCounter[3]~31_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[3]~32\ : std_logic;
SIGNAL \fd_inst|s_divCounter[4]~33_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[4]~34\ : std_logic;
SIGNAL \fd_inst|s_divCounter[5]~35_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[5]~36\ : std_logic;
SIGNAL \fd_inst|s_divCounter[6]~37_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[6]~38\ : std_logic;
SIGNAL \fd_inst|s_divCounter[7]~39_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[7]~40\ : std_logic;
SIGNAL \fd_inst|s_divCounter[8]~41_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[8]~42\ : std_logic;
SIGNAL \fd_inst|s_divCounter[9]~43_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[9]~44\ : std_logic;
SIGNAL \fd_inst|s_divCounter[10]~45_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[10]~46\ : std_logic;
SIGNAL \fd_inst|s_divCounter[11]~47_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[11]~48\ : std_logic;
SIGNAL \fd_inst|s_divCounter[12]~49_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[12]~50\ : std_logic;
SIGNAL \fd_inst|s_divCounter[13]~51_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[13]~52\ : std_logic;
SIGNAL \fd_inst|s_divCounter[14]~53_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[14]~54\ : std_logic;
SIGNAL \fd_inst|s_divCounter[15]~55_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[15]~56\ : std_logic;
SIGNAL \fd_inst|s_divCounter[16]~57_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[16]~58\ : std_logic;
SIGNAL \fd_inst|s_divCounter[17]~59_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[17]~60\ : std_logic;
SIGNAL \fd_inst|s_divCounter[18]~61_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[18]~62\ : std_logic;
SIGNAL \fd_inst|s_divCounter[19]~63_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[19]~64\ : std_logic;
SIGNAL \fd_inst|s_divCounter[20]~65_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[20]~66\ : std_logic;
SIGNAL \fd_inst|s_divCounter[21]~67_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[21]~68\ : std_logic;
SIGNAL \fd_inst|s_divCounter[22]~69_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter[22]~70\ : std_logic;
SIGNAL \fd_inst|s_divCounter[23]~71_combout\ : std_logic;
SIGNAL \fd_inst|clkOut~6_combout\ : std_logic;
SIGNAL \fd_inst|clkOut~4_combout\ : std_logic;
SIGNAL \fd_inst|clkOut~5_combout\ : std_logic;
SIGNAL \fd_inst|clkOut~3_combout\ : std_logic;
SIGNAL \fd_inst|clkOut~7_combout\ : std_logic;
SIGNAL \fd_inst|clkOut~8_combout\ : std_logic;
SIGNAL \fd_inst|clkOut~q\ : std_logic;
SIGNAL \LEDR~0_combout\ : std_logic;
SIGNAL \fd_inst|s_divCounter\ : std_logic_vector(24 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_SW <= SW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
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
	i => \LEDR~0_combout\,
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
	i => \LEDR~0_combout\,
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
	i => \LEDR~0_combout\,
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
	i => \LEDR~0_combout\,
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
	i => \LEDR~0_combout\,
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
	i => \LEDR~0_combout\,
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
	i => \LEDR~0_combout\,
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
	i => \LEDR~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

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

-- Location: IOIBUF_X115_Y37_N15
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G9
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X29_Y39_N8
\fd_inst|s_divCounter[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[0]~25_combout\ = \fd_inst|s_divCounter\(0) $ (VCC)
-- \fd_inst|s_divCounter[0]~26\ = CARRY(\fd_inst|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd_inst|s_divCounter\(0),
	datad => VCC,
	combout => \fd_inst|s_divCounter[0]~25_combout\,
	cout => \fd_inst|s_divCounter[0]~26\);

-- Location: LCCOMB_X29_Y38_N22
\fd_inst|s_divCounter[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[23]~71_combout\ = (\fd_inst|s_divCounter\(23) & (!\fd_inst|s_divCounter[22]~70\)) # (!\fd_inst|s_divCounter\(23) & ((\fd_inst|s_divCounter[22]~70\) # (GND)))
-- \fd_inst|s_divCounter[23]~72\ = CARRY((!\fd_inst|s_divCounter[22]~70\) # (!\fd_inst|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|s_divCounter\(23),
	datad => VCC,
	cin => \fd_inst|s_divCounter[22]~70\,
	combout => \fd_inst|s_divCounter[23]~71_combout\,
	cout => \fd_inst|s_divCounter[23]~72\);

-- Location: LCCOMB_X29_Y38_N24
\fd_inst|s_divCounter[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[24]~73_combout\ = \fd_inst|s_divCounter[23]~72\ $ (!\fd_inst|s_divCounter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \fd_inst|s_divCounter\(24),
	cin => \fd_inst|s_divCounter[23]~72\,
	combout => \fd_inst|s_divCounter[24]~73_combout\);

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

-- Location: LCCOMB_X73_Y39_N30
\ps_inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ps_inst|Mux1~0_combout\ = (!\SW[1]~input_o\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ps_inst|Mux1~0_combout\);

-- Location: FF_X29_Y38_N25
\fd_inst|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fd_inst|s_divCounter[24]~73_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(24));

-- Location: LCCOMB_X29_Y38_N30
\fd_inst|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|clkOut~0_combout\ = (\fd_inst|s_divCounter\(18) & (\fd_inst|s_divCounter\(21) & (\fd_inst|s_divCounter\(19) & \fd_inst|s_divCounter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|s_divCounter\(18),
	datab => \fd_inst|s_divCounter\(21),
	datac => \fd_inst|s_divCounter\(19),
	datad => \fd_inst|s_divCounter\(20),
	combout => \fd_inst|clkOut~0_combout\);

-- Location: LCCOMB_X28_Y39_N4
\fd_inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|LessThan0~1_combout\ = (((!\fd_inst|s_divCounter\(14)) # (!\fd_inst|s_divCounter\(11))) # (!\fd_inst|s_divCounter\(13))) # (!\fd_inst|s_divCounter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|s_divCounter\(12),
	datab => \fd_inst|s_divCounter\(13),
	datac => \fd_inst|s_divCounter\(11),
	datad => \fd_inst|s_divCounter\(14),
	combout => \fd_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X28_Y39_N6
\fd_inst|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|clkOut~2_combout\ = (\fd_inst|s_divCounter\(0) & (\fd_inst|s_divCounter\(1) & (\fd_inst|s_divCounter\(3) & \fd_inst|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|s_divCounter\(0),
	datab => \fd_inst|s_divCounter\(1),
	datac => \fd_inst|s_divCounter\(3),
	datad => \fd_inst|s_divCounter\(2),
	combout => \fd_inst|clkOut~2_combout\);

-- Location: LCCOMB_X28_Y39_N24
\fd_inst|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|clkOut~1_combout\ = (!\fd_inst|s_divCounter\(9) & (!\fd_inst|s_divCounter\(8) & (!\fd_inst|s_divCounter\(6) & !\fd_inst|s_divCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|s_divCounter\(9),
	datab => \fd_inst|s_divCounter\(8),
	datac => \fd_inst|s_divCounter\(6),
	datad => \fd_inst|s_divCounter\(7),
	combout => \fd_inst|clkOut~1_combout\);

-- Location: LCCOMB_X29_Y39_N4
\fd_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|LessThan0~0_combout\ = (\fd_inst|clkOut~1_combout\ & (((!\fd_inst|clkOut~2_combout\) # (!\fd_inst|s_divCounter\(5))) # (!\fd_inst|s_divCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|s_divCounter\(4),
	datab => \fd_inst|s_divCounter\(5),
	datac => \fd_inst|clkOut~2_combout\,
	datad => \fd_inst|clkOut~1_combout\,
	combout => \fd_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y39_N2
\fd_inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|LessThan0~2_combout\ = (!\fd_inst|s_divCounter\(15) & ((\fd_inst|LessThan0~1_combout\) # ((!\fd_inst|s_divCounter\(10) & \fd_inst|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|s_divCounter\(10),
	datab => \fd_inst|LessThan0~1_combout\,
	datac => \fd_inst|LessThan0~0_combout\,
	datad => \fd_inst|s_divCounter\(15),
	combout => \fd_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X29_Y39_N0
\fd_inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|LessThan0~3_combout\ = (\fd_inst|s_divCounter\(22) & ((\fd_inst|s_divCounter\(17)) # ((\fd_inst|s_divCounter\(16) & !\fd_inst|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|s_divCounter\(16),
	datab => \fd_inst|s_divCounter\(17),
	datac => \fd_inst|s_divCounter\(22),
	datad => \fd_inst|LessThan0~2_combout\,
	combout => \fd_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X29_Y39_N6
\fd_inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|LessThan0~4_combout\ = (\fd_inst|s_divCounter\(24) & ((\fd_inst|s_divCounter\(23)) # ((\fd_inst|clkOut~0_combout\ & \fd_inst|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|s_divCounter\(24),
	datab => \fd_inst|s_divCounter\(23),
	datac => \fd_inst|clkOut~0_combout\,
	datad => \fd_inst|LessThan0~3_combout\,
	combout => \fd_inst|LessThan0~4_combout\);

-- Location: FF_X29_Y39_N9
\fd_inst|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fd_inst|s_divCounter[0]~25_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(0));

-- Location: LCCOMB_X29_Y39_N10
\fd_inst|s_divCounter[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[1]~27_combout\ = (\fd_inst|s_divCounter\(1) & (!\fd_inst|s_divCounter[0]~26\)) # (!\fd_inst|s_divCounter\(1) & ((\fd_inst|s_divCounter[0]~26\) # (GND)))
-- \fd_inst|s_divCounter[1]~28\ = CARRY((!\fd_inst|s_divCounter[0]~26\) # (!\fd_inst|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|s_divCounter\(1),
	datad => VCC,
	cin => \fd_inst|s_divCounter[0]~26\,
	combout => \fd_inst|s_divCounter[1]~27_combout\,
	cout => \fd_inst|s_divCounter[1]~28\);

-- Location: FF_X29_Y39_N11
\fd_inst|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fd_inst|s_divCounter[1]~27_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(1));

-- Location: LCCOMB_X29_Y39_N12
\fd_inst|s_divCounter[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[2]~29_combout\ = (\fd_inst|s_divCounter\(2) & (\fd_inst|s_divCounter[1]~28\ $ (GND))) # (!\fd_inst|s_divCounter\(2) & (!\fd_inst|s_divCounter[1]~28\ & VCC))
-- \fd_inst|s_divCounter[2]~30\ = CARRY((\fd_inst|s_divCounter\(2) & !\fd_inst|s_divCounter[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_inst|s_divCounter\(2),
	datad => VCC,
	cin => \fd_inst|s_divCounter[1]~28\,
	combout => \fd_inst|s_divCounter[2]~29_combout\,
	cout => \fd_inst|s_divCounter[2]~30\);

-- Location: FF_X29_Y39_N13
\fd_inst|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fd_inst|s_divCounter[2]~29_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(2));

-- Location: LCCOMB_X29_Y39_N14
\fd_inst|s_divCounter[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[3]~31_combout\ = (\fd_inst|s_divCounter\(3) & (!\fd_inst|s_divCounter[2]~30\)) # (!\fd_inst|s_divCounter\(3) & ((\fd_inst|s_divCounter[2]~30\) # (GND)))
-- \fd_inst|s_divCounter[3]~32\ = CARRY((!\fd_inst|s_divCounter[2]~30\) # (!\fd_inst|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_inst|s_divCounter\(3),
	datad => VCC,
	cin => \fd_inst|s_divCounter[2]~30\,
	combout => \fd_inst|s_divCounter[3]~31_combout\,
	cout => \fd_inst|s_divCounter[3]~32\);

-- Location: FF_X29_Y39_N15
\fd_inst|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fd_inst|s_divCounter[3]~31_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(3));

-- Location: LCCOMB_X29_Y39_N16
\fd_inst|s_divCounter[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[4]~33_combout\ = (\fd_inst|s_divCounter\(4) & (\fd_inst|s_divCounter[3]~32\ $ (GND))) # (!\fd_inst|s_divCounter\(4) & (!\fd_inst|s_divCounter[3]~32\ & VCC))
-- \fd_inst|s_divCounter[4]~34\ = CARRY((\fd_inst|s_divCounter\(4) & !\fd_inst|s_divCounter[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_inst|s_divCounter\(4),
	datad => VCC,
	cin => \fd_inst|s_divCounter[3]~32\,
	combout => \fd_inst|s_divCounter[4]~33_combout\,
	cout => \fd_inst|s_divCounter[4]~34\);

-- Location: FF_X29_Y39_N17
\fd_inst|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fd_inst|s_divCounter[4]~33_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(4));

-- Location: LCCOMB_X29_Y39_N18
\fd_inst|s_divCounter[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[5]~35_combout\ = (\fd_inst|s_divCounter\(5) & (!\fd_inst|s_divCounter[4]~34\)) # (!\fd_inst|s_divCounter\(5) & ((\fd_inst|s_divCounter[4]~34\) # (GND)))
-- \fd_inst|s_divCounter[5]~36\ = CARRY((!\fd_inst|s_divCounter[4]~34\) # (!\fd_inst|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_inst|s_divCounter\(5),
	datad => VCC,
	cin => \fd_inst|s_divCounter[4]~34\,
	combout => \fd_inst|s_divCounter[5]~35_combout\,
	cout => \fd_inst|s_divCounter[5]~36\);

-- Location: FF_X29_Y39_N19
\fd_inst|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fd_inst|s_divCounter[5]~35_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(5));

-- Location: LCCOMB_X29_Y39_N20
\fd_inst|s_divCounter[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[6]~37_combout\ = (\fd_inst|s_divCounter\(6) & (\fd_inst|s_divCounter[5]~36\ $ (GND))) # (!\fd_inst|s_divCounter\(6) & (!\fd_inst|s_divCounter[5]~36\ & VCC))
-- \fd_inst|s_divCounter[6]~38\ = CARRY((\fd_inst|s_divCounter\(6) & !\fd_inst|s_divCounter[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_inst|s_divCounter\(6),
	datad => VCC,
	cin => \fd_inst|s_divCounter[5]~36\,
	combout => \fd_inst|s_divCounter[6]~37_combout\,
	cout => \fd_inst|s_divCounter[6]~38\);

-- Location: FF_X29_Y39_N21
\fd_inst|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fd_inst|s_divCounter[6]~37_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(6));

-- Location: LCCOMB_X29_Y39_N22
\fd_inst|s_divCounter[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[7]~39_combout\ = (\fd_inst|s_divCounter\(7) & (!\fd_inst|s_divCounter[6]~38\)) # (!\fd_inst|s_divCounter\(7) & ((\fd_inst|s_divCounter[6]~38\) # (GND)))
-- \fd_inst|s_divCounter[7]~40\ = CARRY((!\fd_inst|s_divCounter[6]~38\) # (!\fd_inst|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|s_divCounter\(7),
	datad => VCC,
	cin => \fd_inst|s_divCounter[6]~38\,
	combout => \fd_inst|s_divCounter[7]~39_combout\,
	cout => \fd_inst|s_divCounter[7]~40\);

-- Location: FF_X29_Y39_N23
\fd_inst|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fd_inst|s_divCounter[7]~39_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(7));

-- Location: LCCOMB_X29_Y39_N24
\fd_inst|s_divCounter[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[8]~41_combout\ = (\fd_inst|s_divCounter\(8) & (\fd_inst|s_divCounter[7]~40\ $ (GND))) # (!\fd_inst|s_divCounter\(8) & (!\fd_inst|s_divCounter[7]~40\ & VCC))
-- \fd_inst|s_divCounter[8]~42\ = CARRY((\fd_inst|s_divCounter\(8) & !\fd_inst|s_divCounter[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|s_divCounter\(8),
	datad => VCC,
	cin => \fd_inst|s_divCounter[7]~40\,
	combout => \fd_inst|s_divCounter[8]~41_combout\,
	cout => \fd_inst|s_divCounter[8]~42\);

-- Location: FF_X29_Y39_N25
\fd_inst|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fd_inst|s_divCounter[8]~41_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(8));

-- Location: LCCOMB_X29_Y39_N26
\fd_inst|s_divCounter[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[9]~43_combout\ = (\fd_inst|s_divCounter\(9) & (!\fd_inst|s_divCounter[8]~42\)) # (!\fd_inst|s_divCounter\(9) & ((\fd_inst|s_divCounter[8]~42\) # (GND)))
-- \fd_inst|s_divCounter[9]~44\ = CARRY((!\fd_inst|s_divCounter[8]~42\) # (!\fd_inst|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|s_divCounter\(9),
	datad => VCC,
	cin => \fd_inst|s_divCounter[8]~42\,
	combout => \fd_inst|s_divCounter[9]~43_combout\,
	cout => \fd_inst|s_divCounter[9]~44\);

-- Location: FF_X29_Y39_N27
\fd_inst|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fd_inst|s_divCounter[9]~43_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(9));

-- Location: LCCOMB_X29_Y39_N28
\fd_inst|s_divCounter[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[10]~45_combout\ = (\fd_inst|s_divCounter\(10) & (\fd_inst|s_divCounter[9]~44\ $ (GND))) # (!\fd_inst|s_divCounter\(10) & (!\fd_inst|s_divCounter[9]~44\ & VCC))
-- \fd_inst|s_divCounter[10]~46\ = CARRY((\fd_inst|s_divCounter\(10) & !\fd_inst|s_divCounter[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|s_divCounter\(10),
	datad => VCC,
	cin => \fd_inst|s_divCounter[9]~44\,
	combout => \fd_inst|s_divCounter[10]~45_combout\,
	cout => \fd_inst|s_divCounter[10]~46\);

-- Location: FF_X29_Y39_N29
\fd_inst|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fd_inst|s_divCounter[10]~45_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(10));

-- Location: LCCOMB_X29_Y39_N30
\fd_inst|s_divCounter[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[11]~47_combout\ = (\fd_inst|s_divCounter\(11) & (!\fd_inst|s_divCounter[10]~46\)) # (!\fd_inst|s_divCounter\(11) & ((\fd_inst|s_divCounter[10]~46\) # (GND)))
-- \fd_inst|s_divCounter[11]~48\ = CARRY((!\fd_inst|s_divCounter[10]~46\) # (!\fd_inst|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|s_divCounter\(11),
	datad => VCC,
	cin => \fd_inst|s_divCounter[10]~46\,
	combout => \fd_inst|s_divCounter[11]~47_combout\,
	cout => \fd_inst|s_divCounter[11]~48\);

-- Location: FF_X29_Y39_N31
\fd_inst|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fd_inst|s_divCounter[11]~47_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(11));

-- Location: LCCOMB_X29_Y38_N0
\fd_inst|s_divCounter[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[12]~49_combout\ = (\fd_inst|s_divCounter\(12) & (\fd_inst|s_divCounter[11]~48\ $ (GND))) # (!\fd_inst|s_divCounter\(12) & (!\fd_inst|s_divCounter[11]~48\ & VCC))
-- \fd_inst|s_divCounter[12]~50\ = CARRY((\fd_inst|s_divCounter\(12) & !\fd_inst|s_divCounter[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|s_divCounter\(12),
	datad => VCC,
	cin => \fd_inst|s_divCounter[11]~48\,
	combout => \fd_inst|s_divCounter[12]~49_combout\,
	cout => \fd_inst|s_divCounter[12]~50\);

-- Location: FF_X28_Y39_N27
\fd_inst|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \fd_inst|s_divCounter[12]~49_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	sload => VCC,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(12));

-- Location: LCCOMB_X29_Y38_N2
\fd_inst|s_divCounter[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[13]~51_combout\ = (\fd_inst|s_divCounter\(13) & (!\fd_inst|s_divCounter[12]~50\)) # (!\fd_inst|s_divCounter\(13) & ((\fd_inst|s_divCounter[12]~50\) # (GND)))
-- \fd_inst|s_divCounter[13]~52\ = CARRY((!\fd_inst|s_divCounter[12]~50\) # (!\fd_inst|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_inst|s_divCounter\(13),
	datad => VCC,
	cin => \fd_inst|s_divCounter[12]~50\,
	combout => \fd_inst|s_divCounter[13]~51_combout\,
	cout => \fd_inst|s_divCounter[13]~52\);

-- Location: FF_X28_Y39_N29
\fd_inst|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \fd_inst|s_divCounter[13]~51_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	sload => VCC,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(13));

-- Location: LCCOMB_X29_Y38_N4
\fd_inst|s_divCounter[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[14]~53_combout\ = (\fd_inst|s_divCounter\(14) & (\fd_inst|s_divCounter[13]~52\ $ (GND))) # (!\fd_inst|s_divCounter\(14) & (!\fd_inst|s_divCounter[13]~52\ & VCC))
-- \fd_inst|s_divCounter[14]~54\ = CARRY((\fd_inst|s_divCounter\(14) & !\fd_inst|s_divCounter[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_inst|s_divCounter\(14),
	datad => VCC,
	cin => \fd_inst|s_divCounter[13]~52\,
	combout => \fd_inst|s_divCounter[14]~53_combout\,
	cout => \fd_inst|s_divCounter[14]~54\);

-- Location: FF_X28_Y39_N31
\fd_inst|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \fd_inst|s_divCounter[14]~53_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	sload => VCC,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(14));

-- Location: LCCOMB_X29_Y38_N6
\fd_inst|s_divCounter[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[15]~55_combout\ = (\fd_inst|s_divCounter\(15) & (!\fd_inst|s_divCounter[14]~54\)) # (!\fd_inst|s_divCounter\(15) & ((\fd_inst|s_divCounter[14]~54\) # (GND)))
-- \fd_inst|s_divCounter[15]~56\ = CARRY((!\fd_inst|s_divCounter[14]~54\) # (!\fd_inst|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|s_divCounter\(15),
	datad => VCC,
	cin => \fd_inst|s_divCounter[14]~54\,
	combout => \fd_inst|s_divCounter[15]~55_combout\,
	cout => \fd_inst|s_divCounter[15]~56\);

-- Location: FF_X28_Y39_N21
\fd_inst|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \fd_inst|s_divCounter[15]~55_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	sload => VCC,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(15));

-- Location: LCCOMB_X29_Y38_N8
\fd_inst|s_divCounter[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[16]~57_combout\ = (\fd_inst|s_divCounter\(16) & (\fd_inst|s_divCounter[15]~56\ $ (GND))) # (!\fd_inst|s_divCounter\(16) & (!\fd_inst|s_divCounter[15]~56\ & VCC))
-- \fd_inst|s_divCounter[16]~58\ = CARRY((\fd_inst|s_divCounter\(16) & !\fd_inst|s_divCounter[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_inst|s_divCounter\(16),
	datad => VCC,
	cin => \fd_inst|s_divCounter[15]~56\,
	combout => \fd_inst|s_divCounter[16]~57_combout\,
	cout => \fd_inst|s_divCounter[16]~58\);

-- Location: FF_X29_Y38_N9
\fd_inst|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fd_inst|s_divCounter[16]~57_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(16));

-- Location: LCCOMB_X29_Y38_N10
\fd_inst|s_divCounter[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[17]~59_combout\ = (\fd_inst|s_divCounter\(17) & (!\fd_inst|s_divCounter[16]~58\)) # (!\fd_inst|s_divCounter\(17) & ((\fd_inst|s_divCounter[16]~58\) # (GND)))
-- \fd_inst|s_divCounter[17]~60\ = CARRY((!\fd_inst|s_divCounter[16]~58\) # (!\fd_inst|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|s_divCounter\(17),
	datad => VCC,
	cin => \fd_inst|s_divCounter[16]~58\,
	combout => \fd_inst|s_divCounter[17]~59_combout\,
	cout => \fd_inst|s_divCounter[17]~60\);

-- Location: FF_X29_Y38_N11
\fd_inst|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fd_inst|s_divCounter[17]~59_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(17));

-- Location: LCCOMB_X29_Y38_N12
\fd_inst|s_divCounter[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[18]~61_combout\ = (\fd_inst|s_divCounter\(18) & (\fd_inst|s_divCounter[17]~60\ $ (GND))) # (!\fd_inst|s_divCounter\(18) & (!\fd_inst|s_divCounter[17]~60\ & VCC))
-- \fd_inst|s_divCounter[18]~62\ = CARRY((\fd_inst|s_divCounter\(18) & !\fd_inst|s_divCounter[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|s_divCounter\(18),
	datad => VCC,
	cin => \fd_inst|s_divCounter[17]~60\,
	combout => \fd_inst|s_divCounter[18]~61_combout\,
	cout => \fd_inst|s_divCounter[18]~62\);

-- Location: FF_X29_Y38_N13
\fd_inst|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fd_inst|s_divCounter[18]~61_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(18));

-- Location: LCCOMB_X29_Y38_N14
\fd_inst|s_divCounter[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[19]~63_combout\ = (\fd_inst|s_divCounter\(19) & (!\fd_inst|s_divCounter[18]~62\)) # (!\fd_inst|s_divCounter\(19) & ((\fd_inst|s_divCounter[18]~62\) # (GND)))
-- \fd_inst|s_divCounter[19]~64\ = CARRY((!\fd_inst|s_divCounter[18]~62\) # (!\fd_inst|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_inst|s_divCounter\(19),
	datad => VCC,
	cin => \fd_inst|s_divCounter[18]~62\,
	combout => \fd_inst|s_divCounter[19]~63_combout\,
	cout => \fd_inst|s_divCounter[19]~64\);

-- Location: FF_X29_Y38_N15
\fd_inst|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fd_inst|s_divCounter[19]~63_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(19));

-- Location: LCCOMB_X29_Y38_N16
\fd_inst|s_divCounter[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[20]~65_combout\ = (\fd_inst|s_divCounter\(20) & (\fd_inst|s_divCounter[19]~64\ $ (GND))) # (!\fd_inst|s_divCounter\(20) & (!\fd_inst|s_divCounter[19]~64\ & VCC))
-- \fd_inst|s_divCounter[20]~66\ = CARRY((\fd_inst|s_divCounter\(20) & !\fd_inst|s_divCounter[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_inst|s_divCounter\(20),
	datad => VCC,
	cin => \fd_inst|s_divCounter[19]~64\,
	combout => \fd_inst|s_divCounter[20]~65_combout\,
	cout => \fd_inst|s_divCounter[20]~66\);

-- Location: FF_X29_Y38_N17
\fd_inst|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fd_inst|s_divCounter[20]~65_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(20));

-- Location: LCCOMB_X29_Y38_N18
\fd_inst|s_divCounter[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[21]~67_combout\ = (\fd_inst|s_divCounter\(21) & (!\fd_inst|s_divCounter[20]~66\)) # (!\fd_inst|s_divCounter\(21) & ((\fd_inst|s_divCounter[20]~66\) # (GND)))
-- \fd_inst|s_divCounter[21]~68\ = CARRY((!\fd_inst|s_divCounter[20]~66\) # (!\fd_inst|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_inst|s_divCounter\(21),
	datad => VCC,
	cin => \fd_inst|s_divCounter[20]~66\,
	combout => \fd_inst|s_divCounter[21]~67_combout\,
	cout => \fd_inst|s_divCounter[21]~68\);

-- Location: FF_X29_Y38_N19
\fd_inst|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fd_inst|s_divCounter[21]~67_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(21));

-- Location: LCCOMB_X29_Y38_N20
\fd_inst|s_divCounter[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|s_divCounter[22]~69_combout\ = (\fd_inst|s_divCounter\(22) & (\fd_inst|s_divCounter[21]~68\ $ (GND))) # (!\fd_inst|s_divCounter\(22) & (!\fd_inst|s_divCounter[21]~68\ & VCC))
-- \fd_inst|s_divCounter[22]~70\ = CARRY((\fd_inst|s_divCounter\(22) & !\fd_inst|s_divCounter[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_inst|s_divCounter\(22),
	datad => VCC,
	cin => \fd_inst|s_divCounter[21]~68\,
	combout => \fd_inst|s_divCounter[22]~69_combout\,
	cout => \fd_inst|s_divCounter[22]~70\);

-- Location: FF_X29_Y38_N21
\fd_inst|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fd_inst|s_divCounter[22]~69_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(22));

-- Location: FF_X29_Y38_N23
\fd_inst|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fd_inst|s_divCounter[23]~71_combout\,
	sclr => \fd_inst|LessThan0~4_combout\,
	ena => \ps_inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|s_divCounter\(23));

-- Location: LCCOMB_X28_Y39_N10
\fd_inst|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|clkOut~6_combout\ = (\fd_inst|s_divCounter\(23) & (!\fd_inst|s_divCounter\(14) & (!\fd_inst|s_divCounter\(24) & \fd_inst|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|s_divCounter\(23),
	datab => \fd_inst|s_divCounter\(14),
	datac => \fd_inst|s_divCounter\(24),
	datad => \fd_inst|s_divCounter\(10),
	combout => \fd_inst|clkOut~6_combout\);

-- Location: LCCOMB_X29_Y38_N28
\fd_inst|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|clkOut~4_combout\ = (\fd_inst|s_divCounter\(15) & (!\fd_inst|s_divCounter\(22) & (!\fd_inst|s_divCounter\(16) & \fd_inst|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|s_divCounter\(15),
	datab => \fd_inst|s_divCounter\(22),
	datac => \fd_inst|s_divCounter\(16),
	datad => \fd_inst|s_divCounter\(17),
	combout => \fd_inst|clkOut~4_combout\);

-- Location: LCCOMB_X28_Y39_N16
\fd_inst|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|clkOut~5_combout\ = (\fd_inst|clkOut~2_combout\ & (\fd_inst|clkOut~1_combout\ & (\fd_inst|s_divCounter\(4) & \fd_inst|clkOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|clkOut~2_combout\,
	datab => \fd_inst|clkOut~1_combout\,
	datac => \fd_inst|s_divCounter\(4),
	datad => \fd_inst|clkOut~0_combout\,
	combout => \fd_inst|clkOut~5_combout\);

-- Location: LCCOMB_X28_Y39_N18
\fd_inst|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|clkOut~3_combout\ = (\fd_inst|s_divCounter\(12) & (\fd_inst|s_divCounter\(13) & (\fd_inst|s_divCounter\(11) & !\fd_inst|s_divCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|s_divCounter\(12),
	datab => \fd_inst|s_divCounter\(13),
	datac => \fd_inst|s_divCounter\(11),
	datad => \fd_inst|s_divCounter\(5),
	combout => \fd_inst|clkOut~3_combout\);

-- Location: LCCOMB_X30_Y39_N10
\fd_inst|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|clkOut~7_combout\ = (\fd_inst|clkOut~6_combout\ & (\fd_inst|clkOut~4_combout\ & (\fd_inst|clkOut~5_combout\ & \fd_inst|clkOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|clkOut~6_combout\,
	datab => \fd_inst|clkOut~4_combout\,
	datac => \fd_inst|clkOut~5_combout\,
	datad => \fd_inst|clkOut~3_combout\,
	combout => \fd_inst|clkOut~7_combout\);

-- Location: LCCOMB_X30_Y39_N0
\fd_inst|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_inst|clkOut~8_combout\ = (\ps_inst|Mux1~0_combout\ & (!\fd_inst|LessThan0~4_combout\ & ((\fd_inst|clkOut~7_combout\) # (\fd_inst|clkOut~q\)))) # (!\ps_inst|Mux1~0_combout\ & (((\fd_inst|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_inst|clkOut~7_combout\,
	datab => \fd_inst|LessThan0~4_combout\,
	datac => \fd_inst|clkOut~q\,
	datad => \ps_inst|Mux1~0_combout\,
	combout => \fd_inst|clkOut~8_combout\);

-- Location: FF_X30_Y39_N1
\fd_inst|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fd_inst|clkOut~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_inst|clkOut~q\);

-- Location: LCCOMB_X73_Y39_N24
\LEDR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~0_combout\ = (!\SW[1]~input_o\ & ((\fd_inst|clkOut~q\) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \fd_inst|clkOut~q\,
	datad => \SW[0]~input_o\,
	combout => \LEDR~0_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;
END structure;


