-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/07/2024 14:51:09"

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

ENTITY 	processor IS
    PORT (
	ck : IN std_logic;
	rst : IN std_logic;
	dataIN : IN std_logic_vector(15 DOWNTO 0);
	dataOUT : OUT std_logic_vector(15 DOWNTO 0);
	address : OUT std_logic_vector(15 DOWNTO 0);
	ce : OUT std_logic;
	rw : OUT std_logic
	);
END processor;

-- Design Ports Information
-- dataOUT[0]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOUT[1]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOUT[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOUT[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOUT[4]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOUT[5]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOUT[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOUT[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOUT[8]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOUT[9]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOUT[10]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOUT[11]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOUT[12]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOUT[13]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOUT[14]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOUT[15]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[9]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[10]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[11]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[12]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[13]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[14]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[15]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ce	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rw	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIN[0]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIN[9]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIN[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIN[12]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIN[13]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIN[14]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIN[15]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIN[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIN[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIN[8]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIN[11]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIN[10]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIN[4]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIN[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIN[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIN[7]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF processor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ck : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_dataIN : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dataOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_address : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ce : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ck~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dataOUT[0]~output_o\ : std_logic;
SIGNAL \dataOUT[1]~output_o\ : std_logic;
SIGNAL \dataOUT[2]~output_o\ : std_logic;
SIGNAL \dataOUT[3]~output_o\ : std_logic;
SIGNAL \dataOUT[4]~output_o\ : std_logic;
SIGNAL \dataOUT[5]~output_o\ : std_logic;
SIGNAL \dataOUT[6]~output_o\ : std_logic;
SIGNAL \dataOUT[7]~output_o\ : std_logic;
SIGNAL \dataOUT[8]~output_o\ : std_logic;
SIGNAL \dataOUT[9]~output_o\ : std_logic;
SIGNAL \dataOUT[10]~output_o\ : std_logic;
SIGNAL \dataOUT[11]~output_o\ : std_logic;
SIGNAL \dataOUT[12]~output_o\ : std_logic;
SIGNAL \dataOUT[13]~output_o\ : std_logic;
SIGNAL \dataOUT[14]~output_o\ : std_logic;
SIGNAL \dataOUT[15]~output_o\ : std_logic;
SIGNAL \address[0]~output_o\ : std_logic;
SIGNAL \address[1]~output_o\ : std_logic;
SIGNAL \address[2]~output_o\ : std_logic;
SIGNAL \address[3]~output_o\ : std_logic;
SIGNAL \address[4]~output_o\ : std_logic;
SIGNAL \address[5]~output_o\ : std_logic;
SIGNAL \address[6]~output_o\ : std_logic;
SIGNAL \address[7]~output_o\ : std_logic;
SIGNAL \address[8]~output_o\ : std_logic;
SIGNAL \address[9]~output_o\ : std_logic;
SIGNAL \address[10]~output_o\ : std_logic;
SIGNAL \address[11]~output_o\ : std_logic;
SIGNAL \address[12]~output_o\ : std_logic;
SIGNAL \address[13]~output_o\ : std_logic;
SIGNAL \address[14]~output_o\ : std_logic;
SIGNAL \address[15]~output_o\ : std_logic;
SIGNAL \ce~output_o\ : std_logic;
SIGNAL \rw~output_o\ : std_logic;
SIGNAL \ck~input_o\ : std_logic;
SIGNAL \ck~inputclkctrl_outclk\ : std_logic;
SIGNAL \dataIN[0]~input_o\ : std_logic;
SIGNAL \dataIN[2]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \dataIN[15]~input_o\ : std_logic;
SIGNAL \dataIN[12]~input_o\ : std_logic;
SIGNAL \dataIN[13]~input_o\ : std_logic;
SIGNAL \dataIN[14]~input_o\ : std_logic;
SIGNAL \ctrl|Equal31~0_combout\ : std_logic;
SIGNAL \dataIN[3]~input_o\ : std_logic;
SIGNAL \dataIN[1]~input_o\ : std_logic;
SIGNAL \ctrl|Equal14~8_combout\ : std_logic;
SIGNAL \ctrl|PE.Srreg~0_combout\ : std_logic;
SIGNAL \ctrl|EA.Srreg~q\ : std_logic;
SIGNAL \ctrl|EA.Salu~feeder_combout\ : std_logic;
SIGNAL \ctrl|EA.Salu~q\ : std_logic;
SIGNAL \ctrl|EA.Shalt~0_combout\ : std_logic;
SIGNAL \ctrl|EA.Shalt~q\ : std_logic;
SIGNAL \ctrl|WideOr1~0_combout\ : std_logic;
SIGNAL \ctrl|Equal14~0_combout\ : std_logic;
SIGNAL \ctrl|Equal31~1_combout\ : std_logic;
SIGNAL \ctrl|Equal14~2_combout\ : std_logic;
SIGNAL \dp|addA[8]~0_combout\ : std_logic;
SIGNAL \ctrl|Equal31~6_combout\ : std_logic;
SIGNAL \ctrl|i~4_combout\ : std_logic;
SIGNAL \ctrl|Equal31~4_combout\ : std_logic;
SIGNAL \ctrl|uins.mb[0]~0_combout\ : std_logic;
SIGNAL \ctrl|Equal31~2_combout\ : std_logic;
SIGNAL \ctrl|Equal14~11_combout\ : std_logic;
SIGNAL \dp|opB[0]~1_combout\ : std_logic;
SIGNAL \dp|opB[0]~5_combout\ : std_logic;
SIGNAL \dataIN[10]~input_o\ : std_logic;
SIGNAL \ctrl|inst_la2~0_combout\ : std_logic;
SIGNAL \ctrl|i.sl0~0_combout\ : std_logic;
SIGNAL \ctrl|Equal14~7_combout\ : std_logic;
SIGNAL \ctrl|Equal14~4_combout\ : std_logic;
SIGNAL \ctrl|Equal14~3_combout\ : std_logic;
SIGNAL \ctrl|i.jumpD~4_combout\ : std_logic;
SIGNAL \ctrl|PE.Sst~3_combout\ : std_logic;
SIGNAL \ctrl|Equal31~3_combout\ : std_logic;
SIGNAL \ctrl|PE.Sst~2_combout\ : std_logic;
SIGNAL \ctrl|EA.Sst~q\ : std_logic;
SIGNAL \ctrl|uins.ms2~0_combout\ : std_logic;
SIGNAL \dp|REGS|destB[2]~3_combout\ : std_logic;
SIGNAL \ctrl|Equal31~7_combout\ : std_logic;
SIGNAL \ctrl|Equal31~8_combout\ : std_logic;
SIGNAL \ctrl|Equal31~9_combout\ : std_logic;
SIGNAL \dataIN[4]~input_o\ : std_logic;
SIGNAL \dataIN[5]~input_o\ : std_logic;
SIGNAL \dataIN[11]~input_o\ : std_logic;
SIGNAL \dataIN[9]~input_o\ : std_logic;
SIGNAL \dataIN[8]~input_o\ : std_logic;
SIGNAL \ctrl|PE.Spop~0_combout\ : std_logic;
SIGNAL \ctrl|EA.Spop~q\ : std_logic;
SIGNAL \ctrl|i.ld~0_combout\ : std_logic;
SIGNAL \ctrl|PE.Swbk~0_combout\ : std_logic;
SIGNAL \ctrl|Equal14~6_combout\ : std_logic;
SIGNAL \ctrl|Equal14~5_combout\ : std_logic;
SIGNAL \ctrl|Equal14~10_combout\ : std_logic;
SIGNAL \ctrl|i.jumpD~5_combout\ : std_logic;
SIGNAL \ctrl|Equal31~12_combout\ : std_logic;
SIGNAL \ctrl|Equal14~1_combout\ : std_logic;
SIGNAL \ctrl|inst_la1~0_combout\ : std_logic;
SIGNAL \ctrl|Equal31~10_combout\ : std_logic;
SIGNAL \ctrl|i.sl0~1_combout\ : std_logic;
SIGNAL \ctrl|inst_la1~1_combout\ : std_logic;
SIGNAL \ctrl|inst_la1~combout\ : std_logic;
SIGNAL \ctrl|PE.Swbk~1_combout\ : std_logic;
SIGNAL \ctrl|EA.Swbk~q\ : std_logic;
SIGNAL \ctrl|PE.Sld~3_combout\ : std_logic;
SIGNAL \ctrl|PE.Sld~9_combout\ : std_logic;
SIGNAL \ctrl|EA.Sld~q\ : std_logic;
SIGNAL \ctrl|uins.wreg~combout\ : std_logic;
SIGNAL \dp|REGS|Equal0~4_combout\ : std_logic;
SIGNAL \dp|REGS|Equal0~5_combout\ : std_logic;
SIGNAL \dp|REGS|r1:9:rx|Q[15]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Equal0~2_combout\ : std_logic;
SIGNAL \dp|REGS|Equal0~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux0~0_combout\ : std_logic;
SIGNAL \dp|REGS|Equal0~6_combout\ : std_logic;
SIGNAL \dp|REGS|Equal0~7_combout\ : std_logic;
SIGNAL \dp|REGS|Equal0~0_combout\ : std_logic;
SIGNAL \dp|REGS|Equal0~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux0~1_combout\ : std_logic;
SIGNAL \dataIN[6]~input_o\ : std_logic;
SIGNAL \dp|REGS|Equal0~8_combout\ : std_logic;
SIGNAL \dp|REGS|Equal0~9_combout\ : std_logic;
SIGNAL \dp|REGS|Equal0~14_combout\ : std_logic;
SIGNAL \dp|REGS|Equal0~15_combout\ : std_logic;
SIGNAL \dp|REGS|r1:6:rx|Q[15]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Equal0~10_combout\ : std_logic;
SIGNAL \dp|REGS|Equal0~11_combout\ : std_logic;
SIGNAL \dp|REGS|Equal0~12_combout\ : std_logic;
SIGNAL \dp|REGS|Equal0~13_combout\ : std_logic;
SIGNAL \dp|REGS|Mux0~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux0~3_combout\ : std_logic;
SIGNAL \dataIN[7]~input_o\ : std_logic;
SIGNAL \dp|REGS|Equal0~16_combout\ : std_logic;
SIGNAL \dp|REGS|Equal0~18_combout\ : std_logic;
SIGNAL \dp|REGS|Equal0~17_combout\ : std_logic;
SIGNAL \dp|REGS|Mux0~4_combout\ : std_logic;
SIGNAL \dp|REGS|Equal0~19_combout\ : std_logic;
SIGNAL \dp|REGS|Mux0~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux0~6_combout\ : std_logic;
SIGNAL \dp|REGS|Equal0~22_combout\ : std_logic;
SIGNAL \dp|REGS|Equal0~21_combout\ : std_logic;
SIGNAL \dp|REGS|Mux0~7_combout\ : std_logic;
SIGNAL \dp|REGS|Equal0~20_combout\ : std_logic;
SIGNAL \dp|REGS|Mux0~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux0~9_combout\ : std_logic;
SIGNAL \ctrl|uins.ma~0_combout\ : std_logic;
SIGNAL \dp|opA[15]~15_combout\ : std_logic;
SIGNAL \dp|outalu[15]~0_combout\ : std_logic;
SIGNAL \dp|outalu[15]~1_combout\ : std_logic;
SIGNAL \ctrl|i~11_combout\ : std_logic;
SIGNAL \ctrl|Equal31~11_combout\ : std_logic;
SIGNAL \dp|outalu[10]~13_combout\ : std_logic;
SIGNAL \dp|outalu[7]~70_combout\ : std_logic;
SIGNAL \dp|outalu[7]~69_combout\ : std_logic;
SIGNAL \dp|outalu~3_combout\ : std_logic;
SIGNAL \ctrl|Equal14~9_combout\ : std_logic;
SIGNAL \ctrl|i~0_combout\ : std_logic;
SIGNAL \ctrl|uins.mreg~combout\ : std_logic;
SIGNAL \dp|dtreg[14]~14_combout\ : std_logic;
SIGNAL \dp|REGS|Mux1~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux1~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux1~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux1~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux1~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux1~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux1~1_combout\ : std_logic;
SIGNAL \dp|REGS|r1:13:rx|Q[14]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux1~7_combout\ : std_logic;
SIGNAL \dp|REGS|Equal0~23_combout\ : std_logic;
SIGNAL \dp|REGS|Mux1~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux1~9_combout\ : std_logic;
SIGNAL \dp|outalu[10]~16_combout\ : std_logic;
SIGNAL \dp|outalu[10]~15_combout\ : std_logic;
SIGNAL \dp|outalu[10]~14_combout\ : std_logic;
SIGNAL \dp|outalu[10]~17_combout\ : std_logic;
SIGNAL \dp|REGS|destB[1]~0_combout\ : std_logic;
SIGNAL \dp|REGS|destB[0]~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux17~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux17~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux17~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux17~8_combout\ : std_logic;
SIGNAL \dp|REGS|destB[3]~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux17~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux17~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux17~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux17~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux17~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux17~9_combout\ : std_logic;
SIGNAL \dp|RSP|Q[0]~16_combout\ : std_logic;
SIGNAL \ctrl|uins.msp~combout\ : std_logic;
SIGNAL \ctrl|PE.Sldsp~0_combout\ : std_logic;
SIGNAL \ctrl|EA.Sldsp~q\ : std_logic;
SIGNAL \ctrl|PE.Spush~0_combout\ : std_logic;
SIGNAL \ctrl|EA.Spush~q\ : std_logic;
SIGNAL \ctrl|PE.Sjmp~0_combout\ : std_logic;
SIGNAL \ctrl|PE.Ssbrt~0_combout\ : std_logic;
SIGNAL \ctrl|EA.Ssbrt~q\ : std_logic;
SIGNAL \ctrl|uins.mad[1]~0_combout\ : std_logic;
SIGNAL \ctrl|PE.Srts~0_combout\ : std_logic;
SIGNAL \ctrl|EA.Srts~q\ : std_logic;
SIGNAL \ctrl|uins.wsp~combout\ : std_logic;
SIGNAL \dp|RSP|Q[0]~17\ : std_logic;
SIGNAL \dp|RSP|Q[1]~18_combout\ : std_logic;
SIGNAL \dp|dtreg[1]~1_combout\ : std_logic;
SIGNAL \dp|REGS|r1:5:rx|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux14~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux14~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux14~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux14~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux14~6_combout\ : std_logic;
SIGNAL \dp|REGS|r1:15:rx|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|r1:14:rx|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux14~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux14~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux14~0_combout\ : std_logic;
SIGNAL \dp|REGS|r1:11:rx|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux14~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux14~9_combout\ : std_logic;
SIGNAL \dp|outalu[10]~30_combout\ : std_logic;
SIGNAL \dp|RPC|Q[0]~16_combout\ : std_logic;
SIGNAL \dp|dtpc[0]~0_combout\ : std_logic;
SIGNAL \ctrl|PE.Sjmp~1_combout\ : std_logic;
SIGNAL \ctrl|EA.Sjmp~q\ : std_logic;
SIGNAL \ctrl|uins.wpc~0_combout\ : std_logic;
SIGNAL \dp|RPC|Q[0]~17\ : std_logic;
SIGNAL \dp|RPC|Q[1]~18_combout\ : std_logic;
SIGNAL \dp|dtpc[1]~1_combout\ : std_logic;
SIGNAL \dp|opB[1]~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux30~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux30~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux30~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux30~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux30~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux30~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux30~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux30~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux30~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux30~9_combout\ : std_logic;
SIGNAL \dp|REG_B|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dp|opB[1]~6_combout\ : std_logic;
SIGNAL \dp|addB[1]~6_combout\ : std_logic;
SIGNAL \ctrl|Equal31~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux15~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux15~5_combout\ : std_logic;
SIGNAL \dp|REGS|r1:5:rx|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux15~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux15~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux15~6_combout\ : std_logic;
SIGNAL \dp|REGS|r1:7:rx|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux15~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux15~8_combout\ : std_logic;
SIGNAL \dp|REGS|r1:14:rx|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux15~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux15~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux15~9_combout\ : std_logic;
SIGNAL \dp|opA[0]~7_combout\ : std_logic;
SIGNAL \dp|opB[0]~0_combout\ : std_logic;
SIGNAL \dp|REG_B|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dp|opB[0]~2_combout\ : std_logic;
SIGNAL \dp|opB[0]~3_combout\ : std_logic;
SIGNAL \dp|carry~0_combout\ : std_logic;
SIGNAL \dp|opA[1]~6_combout\ : std_logic;
SIGNAL \dp|outalu[10]~23_combout\ : std_logic;
SIGNAL \dp|outalu[10]~24_combout\ : std_logic;
SIGNAL \dp|outalu[1]~129_combout\ : std_logic;
SIGNAL \dp|REGS|Mux29~7_combout\ : std_logic;
SIGNAL \dp|REGS|r1:15:rx|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux29~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux29~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux29~1_combout\ : std_logic;
SIGNAL \dp|REGS|r1:11:rx|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|r1:10:rx|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux29~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux29~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux29~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux29~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux29~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux29~9_combout\ : std_logic;
SIGNAL \dp|REG_B|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dp|RPC|Q[1]~19\ : std_logic;
SIGNAL \dp|RPC|Q[2]~20_combout\ : std_logic;
SIGNAL \dp|dtpc[2]~2_combout\ : std_logic;
SIGNAL \dp|opB[2]~7_combout\ : std_logic;
SIGNAL \dp|opB[2]~8_combout\ : std_logic;
SIGNAL \dp|addB[2]~5_combout\ : std_logic;
SIGNAL \dp|carry~1_combout\ : std_logic;
SIGNAL \dp|outalu[2]~97_combout\ : std_logic;
SIGNAL \dp|outalu[7]~19_combout\ : std_logic;
SIGNAL \dp|outalu[10]~20_combout\ : std_logic;
SIGNAL \dp|outalu[2]~98_combout\ : std_logic;
SIGNAL \dp|Add2~1\ : std_logic;
SIGNAL \dp|Add2~3\ : std_logic;
SIGNAL \dp|Add2~4_combout\ : std_logic;
SIGNAL \dp|REGS|r1:9:rx|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux28~0_combout\ : std_logic;
SIGNAL \dp|REGS|r1:5:rx|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux28~1_combout\ : std_logic;
SIGNAL \dp|REGS|r1:7:rx|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux28~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux28~8_combout\ : std_logic;
SIGNAL \dp|REGS|r1:10:rx|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|r1:2:rx|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux28~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux28~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux28~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux28~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux28~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux28~9_combout\ : std_logic;
SIGNAL \dp|RPC|Q[2]~21\ : std_logic;
SIGNAL \dp|RPC|Q[3]~22_combout\ : std_logic;
SIGNAL \dp|dtpc[3]~3_combout\ : std_logic;
SIGNAL \dp|opB[3]~9_combout\ : std_logic;
SIGNAL \dp|opB[3]~10_combout\ : std_logic;
SIGNAL \dp|addB[3]~4_combout\ : std_logic;
SIGNAL \dp|carry~2_combout\ : std_logic;
SIGNAL \dp|outalu[3]~136_combout\ : std_logic;
SIGNAL \dp|RPC|Q[3]~23\ : std_logic;
SIGNAL \dp|RPC|Q[4]~24_combout\ : std_logic;
SIGNAL \dp|dtpc[4]~4_combout\ : std_logic;
SIGNAL \dp|opB[4]~11_combout\ : std_logic;
SIGNAL \dp|REGS|Mux27~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux27~8_combout\ : std_logic;
SIGNAL \dp|REGS|r1:9:rx|Q[4]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux27~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux27~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux27~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux27~5_combout\ : std_logic;
SIGNAL \dp|REGS|r1:7:rx|Q[4]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux27~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux27~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux27~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux27~9_combout\ : std_logic;
SIGNAL \dp|opB[4]~12_combout\ : std_logic;
SIGNAL \dp|addB[4]~3_combout\ : std_logic;
SIGNAL \dp|carry~3_combout\ : std_logic;
SIGNAL \dp|outalu[4]~40_combout\ : std_logic;
SIGNAL \dp|RPC|Q[4]~25\ : std_logic;
SIGNAL \dp|RPC|Q[5]~26_combout\ : std_logic;
SIGNAL \dp|dtpc[5]~5_combout\ : std_logic;
SIGNAL \dp|opB[5]~13_combout\ : std_logic;
SIGNAL \dp|REGS|Mux26~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux26~8_combout\ : std_logic;
SIGNAL \dp|REGS|r1:14:rx|Q[5]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux26~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux26~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux26~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux26~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux26~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux26~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux26~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux26~9_combout\ : std_logic;
SIGNAL \dp|opB[5]~14_combout\ : std_logic;
SIGNAL \dp|carry~4_combout\ : std_logic;
SIGNAL \dp|addB[5]~2_combout\ : std_logic;
SIGNAL \dp|outalu[5]~113_combout\ : std_logic;
SIGNAL \dp|carry~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux25~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux25~5_combout\ : std_logic;
SIGNAL \dp|REGS|r1:11:rx|Q[6]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|r1:10:rx|Q[6]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux25~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux25~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux25~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux25~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux25~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux25~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux25~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux25~9_combout\ : std_logic;
SIGNAL \dp|RPC|Q[5]~27\ : std_logic;
SIGNAL \dp|RPC|Q[6]~28_combout\ : std_logic;
SIGNAL \dp|dtpc[6]~6_combout\ : std_logic;
SIGNAL \dp|opB[6]~15_combout\ : std_logic;
SIGNAL \dp|addB[6]~1_combout\ : std_logic;
SIGNAL \dp|outalu~32_combout\ : std_logic;
SIGNAL \dp|opB[6]~16_combout\ : std_logic;
SIGNAL \dp|outalu[6]~34_combout\ : std_logic;
SIGNAL \dp|outalu~33_combout\ : std_logic;
SIGNAL \dp|outalu[6]~35_combout\ : std_logic;
SIGNAL \dp|Add2~5\ : std_logic;
SIGNAL \dp|Add2~7\ : std_logic;
SIGNAL \dp|Add2~9\ : std_logic;
SIGNAL \dp|Add2~11\ : std_logic;
SIGNAL \dp|Add2~12_combout\ : std_logic;
SIGNAL \dp|outalu[6]~36_combout\ : std_logic;
SIGNAL \dp|outalu[6]~37_combout\ : std_logic;
SIGNAL \dp|outalu[6]~38_combout\ : std_logic;
SIGNAL \dp|outalu[6]~39_combout\ : std_logic;
SIGNAL \dp|outalu[6]~143_combout\ : std_logic;
SIGNAL \dp|dtreg[6]~6_combout\ : std_logic;
SIGNAL \dp|REGS|r1:9:rx|Q[6]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux9~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux9~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux9~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux9~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux9~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux9~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux9~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux9~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux9~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux9~9_combout\ : std_logic;
SIGNAL \dp|opA[6]~1_combout\ : std_logic;
SIGNAL \dp|outalu[5]~114_combout\ : std_logic;
SIGNAL \dp|Add2~10_combout\ : std_logic;
SIGNAL \dp|outalu[5]~115_combout\ : std_logic;
SIGNAL \dp|outalu[5]~116_combout\ : std_logic;
SIGNAL \dp|outalu[5]~117_combout\ : std_logic;
SIGNAL \dp|outalu[5]~118_combout\ : std_logic;
SIGNAL \dp|outalu[5]~119_combout\ : std_logic;
SIGNAL \dp|dtreg[5]~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux10~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux10~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux10~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux10~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux10~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux10~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux10~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux10~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux10~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux10~9_combout\ : std_logic;
SIGNAL \dp|opA[5]~2_combout\ : std_logic;
SIGNAL \dp|outalu[4]~41_combout\ : std_logic;
SIGNAL \dp|Add2~8_combout\ : std_logic;
SIGNAL \dp|outalu[4]~42_combout\ : std_logic;
SIGNAL \dp|outalu[4]~43_combout\ : std_logic;
SIGNAL \dp|outalu[4]~44_combout\ : std_logic;
SIGNAL \dp|outalu[4]~45_combout\ : std_logic;
SIGNAL \dp|outalu[4]~46_combout\ : std_logic;
SIGNAL \dp|dtreg[4]~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux11~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux11~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux11~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux11~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux11~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux11~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux11~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux11~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux11~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux11~9_combout\ : std_logic;
SIGNAL \dp|opA[4]~3_combout\ : std_logic;
SIGNAL \dp|Add2~6_combout\ : std_logic;
SIGNAL \dp|outalu[3]~137_combout\ : std_logic;
SIGNAL \dp|outalu[3]~138_combout\ : std_logic;
SIGNAL \dp|outalu[3]~139_combout\ : std_logic;
SIGNAL \dp|outalu[3]~140_combout\ : std_logic;
SIGNAL \dp|outalu[3]~141_combout\ : std_logic;
SIGNAL \dp|outalu[3]~142_combout\ : std_logic;
SIGNAL \dp|dtreg[3]~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux12~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux12~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux12~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux12~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux12~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux12~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux12~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux12~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux12~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux12~9_combout\ : std_logic;
SIGNAL \dp|REG_A|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dp|opA[3]~4_combout\ : std_logic;
SIGNAL \dp|outalu[2]~99_combout\ : std_logic;
SIGNAL \dp|outalu[2]~100_combout\ : std_logic;
SIGNAL \dp|outalu[2]~101_combout\ : std_logic;
SIGNAL \dp|outalu[2]~102_combout\ : std_logic;
SIGNAL \dp|outalu[2]~103_combout\ : std_logic;
SIGNAL \dp|dtreg[2]~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux13~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux13~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux13~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux13~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux13~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux13~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux13~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux13~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux13~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux13~9_combout\ : std_logic;
SIGNAL \dp|opA[2]~5_combout\ : std_logic;
SIGNAL \dp|outalu[1]~130_combout\ : std_logic;
SIGNAL \dp|Add2~2_combout\ : std_logic;
SIGNAL \dp|outalu[1]~131_combout\ : std_logic;
SIGNAL \dp|outalu[1]~132_combout\ : std_logic;
SIGNAL \dp|outalu[1]~133_combout\ : std_logic;
SIGNAL \dp|outalu[1]~134_combout\ : std_logic;
SIGNAL \dp|outalu[1]~135_combout\ : std_logic;
SIGNAL \dp|RSP|Q[1]~19\ : std_logic;
SIGNAL \dp|RSP|Q[2]~20_combout\ : std_logic;
SIGNAL \dp|RSP|Q[2]~21\ : std_logic;
SIGNAL \dp|RSP|Q[3]~22_combout\ : std_logic;
SIGNAL \dp|RSP|Q[3]~23\ : std_logic;
SIGNAL \dp|RSP|Q[4]~24_combout\ : std_logic;
SIGNAL \dp|RSP|Q[4]~25\ : std_logic;
SIGNAL \dp|RSP|Q[5]~26_combout\ : std_logic;
SIGNAL \dp|RSP|Q[5]~27\ : std_logic;
SIGNAL \dp|RSP|Q[6]~28_combout\ : std_logic;
SIGNAL \dp|RSP|Q[6]~29\ : std_logic;
SIGNAL \dp|RSP|Q[7]~30_combout\ : std_logic;
SIGNAL \dp|RSP|Q[7]~31\ : std_logic;
SIGNAL \dp|RSP|Q[8]~32_combout\ : std_logic;
SIGNAL \dp|dtreg[8]~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux7~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux7~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux7~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux7~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux7~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux7~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux7~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux7~7_combout\ : std_logic;
SIGNAL \dp|REGS|r1:14:rx|Q[8]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux7~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux7~9_combout\ : std_logic;
SIGNAL \dp|outalu[7]~72_combout\ : std_logic;
SIGNAL \dp|opA[8]~8_combout\ : std_logic;
SIGNAL \dp|outalu[7]~76_combout\ : std_logic;
SIGNAL \dp|REGS|Mux23~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux23~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux23~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux23~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux23~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux23~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux23~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux23~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux23~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux23~9_combout\ : std_logic;
SIGNAL \dp|REG_B|Q[8]~feeder_combout\ : std_logic;
SIGNAL \dp|RPC|Q[6]~29\ : std_logic;
SIGNAL \dp|RPC|Q[7]~30_combout\ : std_logic;
SIGNAL \dp|dtpc[7]~7_combout\ : std_logic;
SIGNAL \dp|RPC|Q[7]~31\ : std_logic;
SIGNAL \dp|RPC|Q[8]~32_combout\ : std_logic;
SIGNAL \dp|dtpc[8]~8_combout\ : std_logic;
SIGNAL \dp|opB[8]~19_combout\ : std_logic;
SIGNAL \dp|opB[8]~20_combout\ : std_logic;
SIGNAL \dp|opB[7]~17_combout\ : std_logic;
SIGNAL \dp|REGS|Mux24~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux24~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux24~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux24~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux24~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux24~5_combout\ : std_logic;
SIGNAL \dp|REGS|r1:14:rx|Q[7]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux24~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux24~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux24~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux24~9_combout\ : std_logic;
SIGNAL \dp|opB[7]~18_combout\ : std_logic;
SIGNAL \dp|Add2~13\ : std_logic;
SIGNAL \dp|Add2~15\ : std_logic;
SIGNAL \dp|Add2~16_combout\ : std_logic;
SIGNAL \dp|outalu[8]~84_combout\ : std_logic;
SIGNAL \dp|outalu[8]~85_combout\ : std_logic;
SIGNAL \dp|outalu[7]~73_combout\ : std_logic;
SIGNAL \dp|outalu[8]~82_combout\ : std_logic;
SIGNAL \dp|outalu[7]~71_combout\ : std_logic;
SIGNAL \dp|addA[8]~1_combout\ : std_logic;
SIGNAL \dp|addB[7]~0_combout\ : std_logic;
SIGNAL \dp|carry~6_combout\ : std_logic;
SIGNAL \dp|carry~7_combout\ : std_logic;
SIGNAL \dp|add[8]~2_combout\ : std_logic;
SIGNAL \dp|outalu[8]~83_combout\ : std_logic;
SIGNAL \dp|outalu[8]~86_combout\ : std_logic;
SIGNAL \dp|outalu[8]~87_combout\ : std_logic;
SIGNAL \dp|RSP|Q[8]~33\ : std_logic;
SIGNAL \dp|RSP|Q[9]~34_combout\ : std_logic;
SIGNAL \dp|dtreg[9]~9_combout\ : std_logic;
SIGNAL \dp|REGS|Mux6~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux6~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux6~2_combout\ : std_logic;
SIGNAL \dp|REGS|r1:10:rx|Q[9]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux6~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux6~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux6~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux6~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux6~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux6~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux6~9_combout\ : std_logic;
SIGNAL \dp|REGS|Mux22~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux22~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux22~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux22~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux22~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux22~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux22~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux22~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux22~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux22~9_combout\ : std_logic;
SIGNAL \dp|REG_B|Q[9]~feeder_combout\ : std_logic;
SIGNAL \dp|RPC|Q[8]~33\ : std_logic;
SIGNAL \dp|RPC|Q[9]~34_combout\ : std_logic;
SIGNAL \dp|dtpc[9]~9_combout\ : std_logic;
SIGNAL \dp|opB[9]~21_combout\ : std_logic;
SIGNAL \dp|opB[9]~22_combout\ : std_logic;
SIGNAL \dp|addA[9]~2_combout\ : std_logic;
SIGNAL \dp|carry~8_combout\ : std_logic;
SIGNAL \dp|add[9]~3_combout\ : std_logic;
SIGNAL \dp|outalu~120_combout\ : std_logic;
SIGNAL \dp|outalu[9]~123_combout\ : std_logic;
SIGNAL \dp|outalu[9]~124_combout\ : std_logic;
SIGNAL \dp|outalu[9]~121_combout\ : std_logic;
SIGNAL \dp|RPC|Q[9]~35\ : std_logic;
SIGNAL \dp|RPC|Q[10]~36_combout\ : std_logic;
SIGNAL \dp|dtpc[10]~10_combout\ : std_logic;
SIGNAL \dp|opB[10]~23_combout\ : std_logic;
SIGNAL \dp|REGS|r1:13:rx|Q[10]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux21~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux21~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux21~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux21~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux21~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux21~3_combout\ : std_logic;
SIGNAL \dp|REGS|r1:2:rx|Q[10]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux21~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux21~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux21~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux21~9_combout\ : std_logic;
SIGNAL \dp|opB[10]~24_combout\ : std_logic;
SIGNAL \dp|addA[10]~3_combout\ : std_logic;
SIGNAL \dp|addA[10]~4_combout\ : std_logic;
SIGNAL \dp|carry~9_combout\ : std_logic;
SIGNAL \dp|outalu~88_combout\ : std_logic;
SIGNAL \dp|outalu[10]~91_combout\ : std_logic;
SIGNAL \dp|outalu[10]~92_combout\ : std_logic;
SIGNAL \dp|REGS|Mux20~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux20~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux20~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux20~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux20~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux20~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux20~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux20~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux20~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux20~9_combout\ : std_logic;
SIGNAL \dp|REG_B|Q[11]~feeder_combout\ : std_logic;
SIGNAL \dp|RPC|Q[10]~37\ : std_logic;
SIGNAL \dp|RPC|Q[11]~38_combout\ : std_logic;
SIGNAL \dp|dtpc[11]~11_combout\ : std_logic;
SIGNAL \dp|opB[11]~25_combout\ : std_logic;
SIGNAL \dp|opB[11]~26_combout\ : std_logic;
SIGNAL \dp|outalu~104_combout\ : std_logic;
SIGNAL \dp|outalu[11]~107_combout\ : std_logic;
SIGNAL \dp|outalu[11]~108_combout\ : std_logic;
SIGNAL \dp|RPC|Q[11]~39\ : std_logic;
SIGNAL \dp|RPC|Q[12]~40_combout\ : std_logic;
SIGNAL \dp|dtpc[12]~12_combout\ : std_logic;
SIGNAL \dp|opB[12]~27_combout\ : std_logic;
SIGNAL \dp|REGS|Mux19~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux19~8_combout\ : std_logic;
SIGNAL \dp|REGS|r1:10:rx|Q[12]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux19~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux19~1_combout\ : std_logic;
SIGNAL \dp|REGS|r1:2:rx|Q[12]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux19~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux19~5_combout\ : std_logic;
SIGNAL \dp|REGS|r1:6:rx|Q[12]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux19~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux19~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux19~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux19~9_combout\ : std_logic;
SIGNAL \dp|REG_B|Q[12]~feeder_combout\ : std_logic;
SIGNAL \dp|opB[12]~28_combout\ : std_logic;
SIGNAL \dp|addA[12]~8_combout\ : std_logic;
SIGNAL \dp|addA[12]~7_combout\ : std_logic;
SIGNAL \dp|addA[12]~9_combout\ : std_logic;
SIGNAL \dp|addA[11]~5_combout\ : std_logic;
SIGNAL \dp|addA[11]~6_combout\ : std_logic;
SIGNAL \dp|carry~10_combout\ : std_logic;
SIGNAL \dp|carry~11_combout\ : std_logic;
SIGNAL \dp|outalu[12]~55_combout\ : std_logic;
SIGNAL \dp|REGS|Mux18~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux18~8_combout\ : std_logic;
SIGNAL \dp|REGS|r1:10:rx|Q[13]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux18~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux18~1_combout\ : std_logic;
SIGNAL \dp|REGS|r1:13:rx|Q[13]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux18~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux18~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux18~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux18~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux18~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux18~9_combout\ : std_logic;
SIGNAL \dp|RPC|Q[12]~41\ : std_logic;
SIGNAL \dp|RPC|Q[13]~42_combout\ : std_logic;
SIGNAL \dp|dtpc[13]~13_combout\ : std_logic;
SIGNAL \dp|opB[13]~29_combout\ : std_logic;
SIGNAL \dp|opB[13]~30_combout\ : std_logic;
SIGNAL \dp|outalu~47_combout\ : std_logic;
SIGNAL \dp|outalu[13]~50_combout\ : std_logic;
SIGNAL \dp|outalu[13]~51_combout\ : std_logic;
SIGNAL \dp|opA[14]~14_combout\ : std_logic;
SIGNAL \dp|outalu[13]~48_combout\ : std_logic;
SIGNAL \dp|Add2~17\ : std_logic;
SIGNAL \dp|Add2~19\ : std_logic;
SIGNAL \dp|Add2~21\ : std_logic;
SIGNAL \dp|Add2~23\ : std_logic;
SIGNAL \dp|Add2~25\ : std_logic;
SIGNAL \dp|Add2~26_combout\ : std_logic;
SIGNAL \dp|outalu[13]~49_combout\ : std_logic;
SIGNAL \dp|outalu[13]~52_combout\ : std_logic;
SIGNAL \dp|outalu[13]~53_combout\ : std_logic;
SIGNAL \dp|addA[13]~10_combout\ : std_logic;
SIGNAL \dp|addA[13]~11_combout\ : std_logic;
SIGNAL \dp|carry~12_combout\ : std_logic;
SIGNAL \dp|outalu[13]~54_combout\ : std_logic;
SIGNAL \dp|outalu[13]~144_combout\ : std_logic;
SIGNAL \dp|dtreg[13]~13_combout\ : std_logic;
SIGNAL \dp|REGS|r1:15:rx|Q[13]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux2~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux2~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux2~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux2~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux2~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux2~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux2~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux2~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux2~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux2~9_combout\ : std_logic;
SIGNAL \dp|opA[13]~13_combout\ : std_logic;
SIGNAL \dp|Add2~24_combout\ : std_logic;
SIGNAL \dp|outalu[12]~56_combout\ : std_logic;
SIGNAL \dp|outalu[12]~57_combout\ : std_logic;
SIGNAL \dp|outalu[12]~58_combout\ : std_logic;
SIGNAL \dp|outalu[12]~59_combout\ : std_logic;
SIGNAL \dp|outalu[12]~60_combout\ : std_logic;
SIGNAL \dp|outalu[12]~61_combout\ : std_logic;
SIGNAL \dp|dtreg[12]~12_combout\ : std_logic;
SIGNAL \dp|REGS|r1:14:rx|Q[12]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux3~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux3~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux3~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux3~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux3~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux3~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux3~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux3~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux3~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux3~9_combout\ : std_logic;
SIGNAL \dp|opA[12]~12_combout\ : std_logic;
SIGNAL \dp|outalu[11]~105_combout\ : std_logic;
SIGNAL \dp|Add2~22_combout\ : std_logic;
SIGNAL \dp|outalu[11]~106_combout\ : std_logic;
SIGNAL \dp|outalu[11]~109_combout\ : std_logic;
SIGNAL \dp|outalu[11]~110_combout\ : std_logic;
SIGNAL \dp|outalu[11]~111_combout\ : std_logic;
SIGNAL \dp|outalu[11]~112_combout\ : std_logic;
SIGNAL \dp|dtreg[11]~11_combout\ : std_logic;
SIGNAL \dp|REGS|r1:14:rx|Q[11]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux4~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux4~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux4~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux4~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux4~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux4~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux4~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux4~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux4~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux4~9_combout\ : std_logic;
SIGNAL \dp|opA[11]~11_combout\ : std_logic;
SIGNAL \dp|Add2~20_combout\ : std_logic;
SIGNAL \dp|outalu[10]~89_combout\ : std_logic;
SIGNAL \dp|outalu[10]~90_combout\ : std_logic;
SIGNAL \dp|outalu[10]~93_combout\ : std_logic;
SIGNAL \dp|outalu[10]~94_combout\ : std_logic;
SIGNAL \dp|outalu[10]~95_combout\ : std_logic;
SIGNAL \dp|outalu[10]~96_combout\ : std_logic;
SIGNAL \dp|dtreg[10]~10_combout\ : std_logic;
SIGNAL \dp|REGS|Mux5~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux5~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux5~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux5~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux5~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux5~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux5~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux5~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux5~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux5~9_combout\ : std_logic;
SIGNAL \dp|opA[10]~10_combout\ : std_logic;
SIGNAL \dp|Add2~18_combout\ : std_logic;
SIGNAL \dp|outalu[9]~122_combout\ : std_logic;
SIGNAL \dp|outalu[9]~125_combout\ : std_logic;
SIGNAL \dp|outalu[9]~126_combout\ : std_logic;
SIGNAL \dp|outalu[9]~127_combout\ : std_logic;
SIGNAL \dp|outalu[9]~128_combout\ : std_logic;
SIGNAL \dp|RSP|Q[9]~35\ : std_logic;
SIGNAL \dp|RSP|Q[10]~36_combout\ : std_logic;
SIGNAL \dp|RSP|Q[10]~37\ : std_logic;
SIGNAL \dp|RSP|Q[11]~38_combout\ : std_logic;
SIGNAL \dp|RSP|Q[11]~39\ : std_logic;
SIGNAL \dp|RSP|Q[12]~40_combout\ : std_logic;
SIGNAL \dp|RSP|Q[12]~41\ : std_logic;
SIGNAL \dp|RSP|Q[13]~42_combout\ : std_logic;
SIGNAL \dp|RSP|Q[13]~43\ : std_logic;
SIGNAL \dp|RSP|Q[14]~44_combout\ : std_logic;
SIGNAL \dp|RPC|Q[13]~43\ : std_logic;
SIGNAL \dp|RPC|Q[14]~44_combout\ : std_logic;
SIGNAL \dp|dtpc[14]~14_combout\ : std_logic;
SIGNAL \dp|opB[14]~31_combout\ : std_logic;
SIGNAL \dp|opB[14]~32_combout\ : std_logic;
SIGNAL \dp|outalu~18_combout\ : std_logic;
SIGNAL \dp|outalu[14]~25_combout\ : std_logic;
SIGNAL \dp|outalu[14]~26_combout\ : std_logic;
SIGNAL \dp|Add2~27\ : std_logic;
SIGNAL \dp|Add2~28_combout\ : std_logic;
SIGNAL \dp|outalu[14]~21_combout\ : std_logic;
SIGNAL \dp|outalu[14]~22_combout\ : std_logic;
SIGNAL \dp|outalu[14]~27_combout\ : std_logic;
SIGNAL \dp|outalu[14]~28_combout\ : std_logic;
SIGNAL \dp|addA[14]~12_combout\ : std_logic;
SIGNAL \dp|addA[14]~13_combout\ : std_logic;
SIGNAL \dp|carry~13_combout\ : std_logic;
SIGNAL \dp|outalu[14]~29_combout\ : std_logic;
SIGNAL \dp|outalu[14]~31_combout\ : std_logic;
SIGNAL \dp|Equal0~2_combout\ : std_logic;
SIGNAL \dp|Equal0~3_combout\ : std_logic;
SIGNAL \dp|Equal0~4_combout\ : std_logic;
SIGNAL \dp|Equal0~5_combout\ : std_logic;
SIGNAL \dp|Equal0~6_combout\ : std_logic;
SIGNAL \dp|Equal0~8_combout\ : std_logic;
SIGNAL \dp|Equal0~7_combout\ : std_logic;
SIGNAL \ctrl|uins.wnz~0_combout\ : std_logic;
SIGNAL \ctrl|i~2_combout\ : std_logic;
SIGNAL \ctrl|i~9_combout\ : std_logic;
SIGNAL \dp|outalu~4_combout\ : std_logic;
SIGNAL \dp|outalu[7]~80_combout\ : std_logic;
SIGNAL \dp|outalu[7]~74_combout\ : std_logic;
SIGNAL \dp|outalu[7]~75_combout\ : std_logic;
SIGNAL \dp|Add2~14_combout\ : std_logic;
SIGNAL \dp|outalu[7]~77_combout\ : std_logic;
SIGNAL \dp|outalu[7]~78_combout\ : std_logic;
SIGNAL \dp|outalu[7]~79_combout\ : std_logic;
SIGNAL \dp|outalu[7]~81_combout\ : std_logic;
SIGNAL \dp|dtreg[7]~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux8~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux8~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux8~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux8~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux8~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux8~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux8~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux8~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux8~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux8~9_combout\ : std_logic;
SIGNAL \dp|opA[7]~0_combout\ : std_logic;
SIGNAL \dp|outalu[15]~2_combout\ : std_logic;
SIGNAL \dp|outalu[15]~5_combout\ : std_logic;
SIGNAL \dp|Add2~29\ : std_logic;
SIGNAL \dp|Add2~30_combout\ : std_logic;
SIGNAL \dp|outalu[15]~6_combout\ : std_logic;
SIGNAL \dp|outalu[15]~7_combout\ : std_logic;
SIGNAL \dp|outalu[15]~8_combout\ : std_logic;
SIGNAL \dp|outalu[0]~9_combout\ : std_logic;
SIGNAL \dp|outalu[0]~10_combout\ : std_logic;
SIGNAL \dp|outalu[15]~11_combout\ : std_logic;
SIGNAL \dp|carry~14_combout\ : std_logic;
SIGNAL \dp|outalu[15]~12_combout\ : std_logic;
SIGNAL \dp|dtreg[15]~15_combout\ : std_logic;
SIGNAL \dp|REGS|r1:15:rx|Q[15]~feeder_combout\ : std_logic;
SIGNAL \dp|REGS|Mux16~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux16~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux16~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux16~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux16~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux16~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux16~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux16~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux16~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux16~9_combout\ : std_logic;
SIGNAL \dp|RPC|Q[14]~45\ : std_logic;
SIGNAL \dp|RPC|Q[15]~46_combout\ : std_logic;
SIGNAL \dp|dtpc[15]~15_combout\ : std_logic;
SIGNAL \dp|RSP|Q[14]~45\ : std_logic;
SIGNAL \dp|RSP|Q[15]~46_combout\ : std_logic;
SIGNAL \dp|opB[15]~33_combout\ : std_logic;
SIGNAL \dp|opB[15]~34_combout\ : std_logic;
SIGNAL \dp|overflow~combout\ : std_logic;
SIGNAL \ctrl|wcv~0_combout\ : std_logic;
SIGNAL \ctrl|uins.wcv~combout\ : std_logic;
SIGNAL \ctrl|i~5_combout\ : std_logic;
SIGNAL \ctrl|i~6_combout\ : std_logic;
SIGNAL \ctrl|i~7_combout\ : std_logic;
SIGNAL \ctrl|i.jumpD~0_combout\ : std_logic;
SIGNAL \ctrl|i.jumpD~1_combout\ : std_logic;
SIGNAL \ctrl|i~1_combout\ : std_logic;
SIGNAL \ctrl|i.jumpD~2_combout\ : std_logic;
SIGNAL \ctrl|i.jumpD~3_combout\ : std_logic;
SIGNAL \ctrl|i.jumpD~6_combout\ : std_logic;
SIGNAL \ctrl|i~8_combout\ : std_logic;
SIGNAL \ctrl|i.jumpD~7_combout\ : std_logic;
SIGNAL \ctrl|i.jumpD~8_combout\ : std_logic;
SIGNAL \dp|opA[9]~9_combout\ : std_logic;
SIGNAL \dp|addA[15]~14_combout\ : std_logic;
SIGNAL \dp|addA[15]~15_combout\ : std_logic;
SIGNAL \dp|cout~0_combout\ : std_logic;
SIGNAL \ctrl|i~3_combout\ : std_logic;
SIGNAL \ctrl|i~10_combout\ : std_logic;
SIGNAL \ctrl|mb~0_combout\ : std_logic;
SIGNAL \ctrl|Selector0~0_combout\ : std_logic;
SIGNAL \ctrl|Selector0~1_combout\ : std_logic;
SIGNAL \ctrl|EA.Sfetch~q\ : std_logic;
SIGNAL \dp|outalu~63_combout\ : std_logic;
SIGNAL \dp|outalu~62_combout\ : std_logic;
SIGNAL \dp|outalu[0]~145_combout\ : std_logic;
SIGNAL \dp|outalu[0]~64_combout\ : std_logic;
SIGNAL \dp|outalu[0]~67_combout\ : std_logic;
SIGNAL \dp|Add2~0_combout\ : std_logic;
SIGNAL \dp|outalu[0]~65_combout\ : std_logic;
SIGNAL \dp|outalu[0]~66_combout\ : std_logic;
SIGNAL \dp|outalu[0]~68_combout\ : std_logic;
SIGNAL \dp|outalu[0]~146_combout\ : std_logic;
SIGNAL \dp|dtreg[0]~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux31~7_combout\ : std_logic;
SIGNAL \dp|REGS|Mux31~8_combout\ : std_logic;
SIGNAL \dp|REGS|Mux31~4_combout\ : std_logic;
SIGNAL \dp|REGS|Mux31~5_combout\ : std_logic;
SIGNAL \dp|REGS|Mux31~2_combout\ : std_logic;
SIGNAL \dp|REGS|Mux31~3_combout\ : std_logic;
SIGNAL \dp|REGS|Mux31~6_combout\ : std_logic;
SIGNAL \dp|REGS|Mux31~0_combout\ : std_logic;
SIGNAL \dp|REGS|Mux31~1_combout\ : std_logic;
SIGNAL \dp|REGS|Mux31~9_combout\ : std_logic;
SIGNAL \dp|dataOUT[0]~0_combout\ : std_logic;
SIGNAL \dp|dataOUT[1]~1_combout\ : std_logic;
SIGNAL \dp|dataOUT[2]~2_combout\ : std_logic;
SIGNAL \dp|dataOUT[3]~3_combout\ : std_logic;
SIGNAL \dp|dataOUT[4]~4_combout\ : std_logic;
SIGNAL \dp|dataOUT[5]~5_combout\ : std_logic;
SIGNAL \dp|dataOUT[6]~6_combout\ : std_logic;
SIGNAL \dp|dataOUT[7]~7_combout\ : std_logic;
SIGNAL \dp|dataOUT[8]~8_combout\ : std_logic;
SIGNAL \dp|dataOUT[9]~9_combout\ : std_logic;
SIGNAL \dp|dataOUT[10]~10_combout\ : std_logic;
SIGNAL \dp|dataOUT[11]~11_combout\ : std_logic;
SIGNAL \dp|dataOUT[12]~12_combout\ : std_logic;
SIGNAL \dp|dataOUT[13]~13_combout\ : std_logic;
SIGNAL \dp|dataOUT[14]~14_combout\ : std_logic;
SIGNAL \dp|dataOUT[15]~15_combout\ : std_logic;
SIGNAL \dp|address[0]~32_combout\ : std_logic;
SIGNAL \dp|address[0]~48_combout\ : std_logic;
SIGNAL \dp|address[1]~33_combout\ : std_logic;
SIGNAL \dp|address[1]~49_combout\ : std_logic;
SIGNAL \dp|address[2]~34_combout\ : std_logic;
SIGNAL \dp|address[2]~50_combout\ : std_logic;
SIGNAL \dp|address[3]~35_combout\ : std_logic;
SIGNAL \dp|address[3]~51_combout\ : std_logic;
SIGNAL \dp|address[4]~36_combout\ : std_logic;
SIGNAL \dp|address[4]~52_combout\ : std_logic;
SIGNAL \dp|address[5]~37_combout\ : std_logic;
SIGNAL \dp|address[5]~53_combout\ : std_logic;
SIGNAL \dp|address[6]~38_combout\ : std_logic;
SIGNAL \dp|address[6]~54_combout\ : std_logic;
SIGNAL \dp|address[7]~39_combout\ : std_logic;
SIGNAL \dp|address[7]~55_combout\ : std_logic;
SIGNAL \dp|address[8]~40_combout\ : std_logic;
SIGNAL \dp|address[8]~56_combout\ : std_logic;
SIGNAL \dp|address[9]~41_combout\ : std_logic;
SIGNAL \dp|address[9]~57_combout\ : std_logic;
SIGNAL \dp|address[10]~42_combout\ : std_logic;
SIGNAL \dp|address[10]~58_combout\ : std_logic;
SIGNAL \dp|address[11]~43_combout\ : std_logic;
SIGNAL \dp|address[11]~59_combout\ : std_logic;
SIGNAL \dp|address[12]~44_combout\ : std_logic;
SIGNAL \dp|address[12]~60_combout\ : std_logic;
SIGNAL \dp|address[13]~45_combout\ : std_logic;
SIGNAL \dp|address[13]~61_combout\ : std_logic;
SIGNAL \dp|address[14]~46_combout\ : std_logic;
SIGNAL \dp|address[14]~62_combout\ : std_logic;
SIGNAL \dp|address[15]~47_combout\ : std_logic;
SIGNAL \dp|address[15]~63_combout\ : std_logic;
SIGNAL \ctrl|uins.rw~combout\ : std_logic;
SIGNAL \ctrl|uins.ce~0_combout\ : std_logic;
SIGNAL \dp|REGS|r1:9:rx|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|RSP|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|REGS|r1:8:rx|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|RPC|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|RIR|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|REGS|r1:10:rx|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|REGS|r1:11:rx|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|REGS|r1:5:rx|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|REGS|r1:6:rx|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|REGS|r1:4:rx|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|REGS|r1:7:rx|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|REGS|r1:2:rx|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|REGS|r1:1:rx|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|REGS|r1:0:rx|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|REGS|r1:3:rx|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|REGS|r1:13:rx|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|REGS|r1:14:rx|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|REGS|r1:12:rx|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|REGS|r1:15:rx|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|flag\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dp|REG_B|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|REG_alu|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|REG_A|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|add\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_ck~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ctrl|ALT_INV_EA.Sfetch~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ck <= ck;
ww_rst <= rst;
ww_dataIN <= dataIN;
dataOUT <= ww_dataOUT;
address <= ww_address;
ce <= ww_ce;
rw <= ww_rw;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\ck~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ck~input_o\);
\ALT_INV_ck~inputclkctrl_outclk\ <= NOT \ck~inputclkctrl_outclk\;
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ctrl|ALT_INV_EA.Sfetch~q\ <= NOT \ctrl|EA.Sfetch~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X60_Y73_N2
\dataOUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|dataOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \dataOUT[0]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\dataOUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|dataOUT[1]~1_combout\,
	devoe => ww_devoe,
	o => \dataOUT[1]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\dataOUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|dataOUT[2]~2_combout\,
	devoe => ww_devoe,
	o => \dataOUT[2]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\dataOUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|dataOUT[3]~3_combout\,
	devoe => ww_devoe,
	o => \dataOUT[3]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\dataOUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|dataOUT[4]~4_combout\,
	devoe => ww_devoe,
	o => \dataOUT[4]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\dataOUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|dataOUT[5]~5_combout\,
	devoe => ww_devoe,
	o => \dataOUT[5]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\dataOUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|dataOUT[6]~6_combout\,
	devoe => ww_devoe,
	o => \dataOUT[6]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\dataOUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|dataOUT[7]~7_combout\,
	devoe => ww_devoe,
	o => \dataOUT[7]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\dataOUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|dataOUT[8]~8_combout\,
	devoe => ww_devoe,
	o => \dataOUT[8]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\dataOUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|dataOUT[9]~9_combout\,
	devoe => ww_devoe,
	o => \dataOUT[9]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\dataOUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|dataOUT[10]~10_combout\,
	devoe => ww_devoe,
	o => \dataOUT[10]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\dataOUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|dataOUT[11]~11_combout\,
	devoe => ww_devoe,
	o => \dataOUT[11]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\dataOUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|dataOUT[12]~12_combout\,
	devoe => ww_devoe,
	o => \dataOUT[12]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\dataOUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|dataOUT[13]~13_combout\,
	devoe => ww_devoe,
	o => \dataOUT[13]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\dataOUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|dataOUT[14]~14_combout\,
	devoe => ww_devoe,
	o => \dataOUT[14]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\dataOUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|dataOUT[15]~15_combout\,
	devoe => ww_devoe,
	o => \dataOUT[15]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\address[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|address[0]~48_combout\,
	devoe => ww_devoe,
	o => \address[0]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\address[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|address[1]~49_combout\,
	devoe => ww_devoe,
	o => \address[1]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\address[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|address[2]~50_combout\,
	devoe => ww_devoe,
	o => \address[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\address[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|address[3]~51_combout\,
	devoe => ww_devoe,
	o => \address[3]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\address[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|address[4]~52_combout\,
	devoe => ww_devoe,
	o => \address[4]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\address[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|address[5]~53_combout\,
	devoe => ww_devoe,
	o => \address[5]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\address[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|address[6]~54_combout\,
	devoe => ww_devoe,
	o => \address[6]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\address[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|address[7]~55_combout\,
	devoe => ww_devoe,
	o => \address[7]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\address[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|address[8]~56_combout\,
	devoe => ww_devoe,
	o => \address[8]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\address[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|address[9]~57_combout\,
	devoe => ww_devoe,
	o => \address[9]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\address[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|address[10]~58_combout\,
	devoe => ww_devoe,
	o => \address[10]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\address[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|address[11]~59_combout\,
	devoe => ww_devoe,
	o => \address[11]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\address[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|address[12]~60_combout\,
	devoe => ww_devoe,
	o => \address[12]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\address[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|address[13]~61_combout\,
	devoe => ww_devoe,
	o => \address[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\address[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|address[14]~62_combout\,
	devoe => ww_devoe,
	o => \address[14]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\address[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|address[15]~63_combout\,
	devoe => ww_devoe,
	o => \address[15]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\ce~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl|uins.ce~0_combout\,
	devoe => ww_devoe,
	o => \ce~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl|uins.rw~combout\,
	devoe => ww_devoe,
	o => \rw~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\ck~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ck,
	o => \ck~input_o\);

-- Location: CLKCTRL_G2
\ck~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ck~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ck~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y37_N8
\dataIN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(0),
	o => \dataIN[0]~input_o\);

-- Location: IOIBUF_X33_Y73_N1
\dataIN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(2),
	o => \dataIN[2]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: IOIBUF_X25_Y73_N22
\dataIN[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(15),
	o => \dataIN[15]~input_o\);

-- Location: FF_X49_Y47_N7
\dp|RIR|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dataIN[15]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Sfetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RIR|Q\(15));

-- Location: IOIBUF_X29_Y73_N1
\dataIN[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(12),
	o => \dataIN[12]~input_o\);

-- Location: FF_X49_Y47_N17
\dp|RIR|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dataIN[12]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Sfetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RIR|Q\(12));

-- Location: IOIBUF_X23_Y73_N22
\dataIN[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(13),
	o => \dataIN[13]~input_o\);

-- Location: FF_X49_Y47_N15
\dp|RIR|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dataIN[13]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Sfetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RIR|Q\(13));

-- Location: IOIBUF_X27_Y73_N15
\dataIN[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(14),
	o => \dataIN[14]~input_o\);

-- Location: FF_X49_Y47_N1
\dp|RIR|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dataIN[14]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Sfetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RIR|Q\(14));

-- Location: LCCOMB_X49_Y47_N14
\ctrl|Equal31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal31~0_combout\ = (\dp|RIR|Q\(15) & (\dp|RIR|Q\(12) & (\dp|RIR|Q\(13) & !\dp|RIR|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(15),
	datab => \dp|RIR|Q\(12),
	datac => \dp|RIR|Q\(13),
	datad => \dp|RIR|Q\(14),
	combout => \ctrl|Equal31~0_combout\);

-- Location: IOIBUF_X27_Y73_N22
\dataIN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(3),
	o => \dataIN[3]~input_o\);

-- Location: FF_X49_Y47_N23
\dp|RIR|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dataIN[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Sfetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RIR|Q\(3));

-- Location: IOIBUF_X65_Y73_N8
\dataIN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(1),
	o => \dataIN[1]~input_o\);

-- Location: FF_X50_Y47_N5
\dp|RIR|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dataIN[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Sfetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RIR|Q\(1));

-- Location: FF_X50_Y47_N19
\dp|RIR|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dataIN[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Sfetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RIR|Q\(0));

-- Location: LCCOMB_X49_Y47_N12
\ctrl|Equal14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal14~8_combout\ = (!\dp|RIR|Q\(3) & (\dp|RIR|Q\(1) & (\dp|RIR|Q\(2) & !\dp|RIR|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(3),
	datab => \dp|RIR|Q\(1),
	datac => \dp|RIR|Q\(2),
	datad => \dp|RIR|Q\(0),
	combout => \ctrl|Equal14~8_combout\);

-- Location: LCCOMB_X50_Y46_N6
\ctrl|PE.Srreg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|PE.Srreg~0_combout\ = (\ctrl|EA.Sfetch~q\ & ((!\ctrl|Equal31~0_combout\) # (!\ctrl|Equal14~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|Equal14~8_combout\,
	datac => \ctrl|Equal31~0_combout\,
	datad => \ctrl|EA.Sfetch~q\,
	combout => \ctrl|PE.Srreg~0_combout\);

-- Location: FF_X50_Y46_N7
\ctrl|EA.Srreg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \ctrl|PE.Srreg~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|EA.Srreg~q\);

-- Location: LCCOMB_X49_Y45_N30
\ctrl|EA.Salu~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|EA.Salu~feeder_combout\ = \ctrl|EA.Srreg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl|EA.Srreg~q\,
	combout => \ctrl|EA.Salu~feeder_combout\);

-- Location: FF_X49_Y45_N31
\ctrl|EA.Salu\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \ctrl|EA.Salu~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|EA.Salu~q\);

-- Location: LCCOMB_X50_Y46_N24
\ctrl|EA.Shalt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|EA.Shalt~0_combout\ = (\ctrl|EA.Shalt~q\) # ((\ctrl|Equal31~0_combout\ & (\ctrl|Equal14~8_combout\ & \ctrl|EA.Sfetch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~0_combout\,
	datab => \ctrl|Equal14~8_combout\,
	datac => \ctrl|EA.Shalt~q\,
	datad => \ctrl|EA.Sfetch~q\,
	combout => \ctrl|EA.Shalt~0_combout\);

-- Location: FF_X50_Y46_N25
\ctrl|EA.Shalt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \ctrl|EA.Shalt~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|EA.Shalt~q\);

-- Location: LCCOMB_X49_Y46_N0
\ctrl|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|WideOr1~0_combout\ = (!\ctrl|EA.Salu~q\ & (!\ctrl|EA.Shalt~q\ & (!\ctrl|EA.Sfetch~q\ & !\ctrl|EA.Srreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Salu~q\,
	datab => \ctrl|EA.Shalt~q\,
	datac => \ctrl|EA.Sfetch~q\,
	datad => \ctrl|EA.Srreg~q\,
	combout => \ctrl|WideOr1~0_combout\);

-- Location: LCCOMB_X49_Y47_N22
\ctrl|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal14~0_combout\ = (!\dp|RIR|Q\(2) & (\dp|RIR|Q\(1) & (\dp|RIR|Q\(3) & !\dp|RIR|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(2),
	datab => \dp|RIR|Q\(1),
	datac => \dp|RIR|Q\(3),
	datad => \dp|RIR|Q\(0),
	combout => \ctrl|Equal14~0_combout\);

-- Location: LCCOMB_X49_Y47_N16
\ctrl|Equal31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal31~1_combout\ = (\dp|RIR|Q\(15) & (\dp|RIR|Q\(14) & (!\dp|RIR|Q\(12) & !\dp|RIR|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(15),
	datab => \dp|RIR|Q\(14),
	datac => \dp|RIR|Q\(12),
	datad => \dp|RIR|Q\(13),
	combout => \ctrl|Equal31~1_combout\);

-- Location: LCCOMB_X50_Y47_N0
\ctrl|Equal14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal14~2_combout\ = (!\dp|RIR|Q\(2) & (!\dp|RIR|Q\(0) & (!\dp|RIR|Q\(1) & !\dp|RIR|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(2),
	datab => \dp|RIR|Q\(0),
	datac => \dp|RIR|Q\(1),
	datad => \dp|RIR|Q\(3),
	combout => \ctrl|Equal14~2_combout\);

-- Location: LCCOMB_X49_Y45_N10
\dp|addA[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|addA[8]~0_combout\ = (\dp|RIR|Q\(14) & (!\dp|RIR|Q\(15) & (\dp|RIR|Q\(12) $ (\dp|RIR|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(12),
	datab => \dp|RIR|Q\(13),
	datac => \dp|RIR|Q\(14),
	datad => \dp|RIR|Q\(15),
	combout => \dp|addA[8]~0_combout\);

-- Location: LCCOMB_X49_Y45_N16
\ctrl|Equal31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal31~6_combout\ = (\dp|RIR|Q\(12) & (!\dp|RIR|Q\(13) & (\dp|RIR|Q\(14) & !\dp|RIR|Q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(12),
	datab => \dp|RIR|Q\(13),
	datac => \dp|RIR|Q\(14),
	datad => \dp|RIR|Q\(15),
	combout => \ctrl|Equal31~6_combout\);

-- Location: LCCOMB_X50_Y48_N4
\ctrl|i~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i~4_combout\ = (\dp|RIR|Q\(15) & \dp|RIR|Q\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|RIR|Q\(15),
	datad => \dp|RIR|Q\(14),
	combout => \ctrl|i~4_combout\);

-- Location: LCCOMB_X48_Y48_N30
\ctrl|Equal31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal31~4_combout\ = (!\dp|RIR|Q\(13) & (!\dp|RIR|Q\(14) & (!\dp|RIR|Q\(15) & \dp|RIR|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(13),
	datab => \dp|RIR|Q\(14),
	datac => \dp|RIR|Q\(15),
	datad => \dp|RIR|Q\(12),
	combout => \ctrl|Equal31~4_combout\);

-- Location: LCCOMB_X50_Y47_N24
\ctrl|uins.mb[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|uins.mb[0]~0_combout\ = (!\dp|RIR|Q\(2) & (\dp|RIR|Q\(3) & (!\dp|RIR|Q\(1) & \ctrl|Equal31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(2),
	datab => \dp|RIR|Q\(3),
	datac => \dp|RIR|Q\(1),
	datad => \ctrl|Equal31~0_combout\,
	combout => \ctrl|uins.mb[0]~0_combout\);

-- Location: LCCOMB_X49_Y47_N6
\ctrl|Equal31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal31~2_combout\ = (\dp|RIR|Q\(13) & (\dp|RIR|Q\(12) & (\dp|RIR|Q\(15) & \dp|RIR|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(13),
	datab => \dp|RIR|Q\(12),
	datac => \dp|RIR|Q\(15),
	datad => \dp|RIR|Q\(14),
	combout => \ctrl|Equal31~2_combout\);

-- Location: LCCOMB_X50_Y47_N4
\ctrl|Equal14~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal14~11_combout\ = (!\dp|RIR|Q\(2) & (\dp|RIR|Q\(0) & (\dp|RIR|Q\(1) & \dp|RIR|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(2),
	datab => \dp|RIR|Q\(0),
	datac => \dp|RIR|Q\(1),
	datad => \dp|RIR|Q\(3),
	combout => \ctrl|Equal14~11_combout\);

-- Location: LCCOMB_X49_Y47_N4
\dp|opB[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[0]~1_combout\ = (!\ctrl|Equal31~2_combout\ & (((!\ctrl|Equal14~11_combout\ & !\ctrl|Equal14~0_combout\)) # (!\ctrl|Equal31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~1_combout\,
	datab => \ctrl|Equal31~2_combout\,
	datac => \ctrl|Equal14~11_combout\,
	datad => \ctrl|Equal14~0_combout\,
	combout => \dp|opB[0]~1_combout\);

-- Location: LCCOMB_X49_Y47_N10
\dp|opB[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[0]~5_combout\ = (\ctrl|uins.mb[0]~0_combout\) # (((\ctrl|mb~0_combout\) # (\ctrl|i.jumpD~8_combout\)) # (!\dp|opB[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|uins.mb[0]~0_combout\,
	datab => \dp|opB[0]~1_combout\,
	datac => \ctrl|mb~0_combout\,
	datad => \ctrl|i.jumpD~8_combout\,
	combout => \dp|opB[0]~5_combout\);

-- Location: IOIBUF_X62_Y73_N22
\dataIN[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(10),
	o => \dataIN[10]~input_o\);

-- Location: FF_X50_Y48_N17
\dp|RIR|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dataIN[10]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Sfetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RIR|Q\(10));

-- Location: LCCOMB_X49_Y45_N20
\ctrl|inst_la2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|inst_la2~0_combout\ = (\dp|RIR|Q\(14) & (!\dp|RIR|Q\(15) & ((\dp|RIR|Q\(13)) # (\dp|RIR|Q\(12))))) # (!\dp|RIR|Q\(14) & (!\dp|RIR|Q\(13) & (!\dp|RIR|Q\(12) & \dp|RIR|Q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(13),
	datab => \dp|RIR|Q\(12),
	datac => \dp|RIR|Q\(14),
	datad => \dp|RIR|Q\(15),
	combout => \ctrl|inst_la2~0_combout\);

-- Location: LCCOMB_X49_Y50_N28
\ctrl|i.sl0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i.sl0~0_combout\ = (\dp|RIR|Q\(15) & (!\dp|RIR|Q\(14) & \dp|RIR|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(15),
	datac => \dp|RIR|Q\(14),
	datad => \dp|RIR|Q\(13),
	combout => \ctrl|i.sl0~0_combout\);

-- Location: LCCOMB_X49_Y47_N30
\ctrl|Equal14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal14~7_combout\ = (\dp|RIR|Q\(2) & (\dp|RIR|Q\(0) & (!\dp|RIR|Q\(3) & \dp|RIR|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(2),
	datab => \dp|RIR|Q\(0),
	datac => \dp|RIR|Q\(3),
	datad => \dp|RIR|Q\(1),
	combout => \ctrl|Equal14~7_combout\);

-- Location: LCCOMB_X50_Y47_N16
\ctrl|Equal14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal14~4_combout\ = (!\dp|RIR|Q\(2) & (!\dp|RIR|Q\(0) & (!\dp|RIR|Q\(1) & \dp|RIR|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(2),
	datab => \dp|RIR|Q\(0),
	datac => \dp|RIR|Q\(1),
	datad => \dp|RIR|Q\(3),
	combout => \ctrl|Equal14~4_combout\);

-- Location: LCCOMB_X50_Y47_N14
\ctrl|Equal14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal14~3_combout\ = (!\dp|RIR|Q\(2) & (\dp|RIR|Q\(0) & (!\dp|RIR|Q\(1) & \dp|RIR|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(2),
	datab => \dp|RIR|Q\(0),
	datac => \dp|RIR|Q\(1),
	datad => \dp|RIR|Q\(3),
	combout => \ctrl|Equal14~3_combout\);

-- Location: LCCOMB_X50_Y47_N26
\ctrl|i.jumpD~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i.jumpD~4_combout\ = ((!\ctrl|Equal14~4_combout\ & (!\ctrl|Equal14~3_combout\ & !\ctrl|Equal14~11_combout\))) # (!\ctrl|Equal31~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal14~4_combout\,
	datab => \ctrl|Equal14~3_combout\,
	datac => \ctrl|Equal14~11_combout\,
	datad => \ctrl|Equal31~0_combout\,
	combout => \ctrl|i.jumpD~4_combout\);

-- Location: LCCOMB_X49_Y46_N2
\ctrl|PE.Sst~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|PE.Sst~3_combout\ = (\ctrl|i.jumpD~4_combout\ & (\ctrl|EA.Salu~q\ & ((!\ctrl|Equal31~0_combout\) # (!\ctrl|Equal14~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal14~7_combout\,
	datab => \ctrl|Equal31~0_combout\,
	datac => \ctrl|i.jumpD~4_combout\,
	datad => \ctrl|EA.Salu~q\,
	combout => \ctrl|PE.Sst~3_combout\);

-- Location: LCCOMB_X49_Y50_N0
\ctrl|Equal31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal31~3_combout\ = (\dp|RIR|Q\(13) & (!\dp|RIR|Q\(12) & (!\dp|RIR|Q\(14) & \dp|RIR|Q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(13),
	datab => \dp|RIR|Q\(12),
	datac => \dp|RIR|Q\(14),
	datad => \dp|RIR|Q\(15),
	combout => \ctrl|Equal31~3_combout\);

-- Location: LCCOMB_X49_Y50_N20
\ctrl|PE.Sst~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|PE.Sst~2_combout\ = (\ctrl|i.sl0~0_combout\ & (\ctrl|PE.Sst~3_combout\ & \ctrl|Equal31~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|i.sl0~0_combout\,
	datac => \ctrl|PE.Sst~3_combout\,
	datad => \ctrl|Equal31~3_combout\,
	combout => \ctrl|PE.Sst~2_combout\);

-- Location: FF_X49_Y50_N21
\ctrl|EA.Sst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \ctrl|PE.Sst~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|EA.Sst~q\);

-- Location: LCCOMB_X49_Y50_N10
\ctrl|uins.ms2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|uins.ms2~0_combout\ = (\ctrl|inst_la2~0_combout\) # ((\ctrl|EA.Sst~q\) # ((\ctrl|Equal14~0_combout\ & \ctrl|Equal31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|inst_la2~0_combout\,
	datab => \ctrl|Equal14~0_combout\,
	datac => \ctrl|Equal31~0_combout\,
	datad => \ctrl|EA.Sst~q\,
	combout => \ctrl|uins.ms2~0_combout\);

-- Location: LCCOMB_X50_Y50_N30
\dp|REGS|destB[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|destB[2]~3_combout\ = (\ctrl|uins.ms2~0_combout\ & (\dp|RIR|Q\(10))) # (!\ctrl|uins.ms2~0_combout\ & ((\dp|RIR|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(10),
	datac => \dp|RIR|Q\(2),
	datad => \ctrl|uins.ms2~0_combout\,
	combout => \dp|REGS|destB[2]~3_combout\);

-- Location: LCCOMB_X45_Y46_N8
\ctrl|Equal31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal31~7_combout\ = (\dp|RIR|Q\(13) & (\dp|RIR|Q\(12) & (!\dp|RIR|Q\(15) & \dp|RIR|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(13),
	datab => \dp|RIR|Q\(12),
	datac => \dp|RIR|Q\(15),
	datad => \dp|RIR|Q\(14),
	combout => \ctrl|Equal31~7_combout\);

-- Location: LCCOMB_X48_Y46_N16
\ctrl|Equal31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal31~8_combout\ = (!\dp|RIR|Q\(15) & (!\dp|RIR|Q\(14) & (\dp|RIR|Q\(13) & \dp|RIR|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(15),
	datab => \dp|RIR|Q\(14),
	datac => \dp|RIR|Q\(13),
	datad => \dp|RIR|Q\(12),
	combout => \ctrl|Equal31~8_combout\);

-- Location: LCCOMB_X48_Y46_N22
\ctrl|Equal31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal31~9_combout\ = (!\dp|RIR|Q\(15) & (!\dp|RIR|Q\(14) & (\dp|RIR|Q\(13) & !\dp|RIR|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(15),
	datab => \dp|RIR|Q\(14),
	datac => \dp|RIR|Q\(13),
	datad => \dp|RIR|Q\(12),
	combout => \ctrl|Equal31~9_combout\);

-- Location: IOIBUF_X35_Y73_N22
\dataIN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(4),
	o => \dataIN[4]~input_o\);

-- Location: FF_X48_Y49_N9
\dp|RIR|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dataIN[4]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Sfetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RIR|Q\(4));

-- Location: IOIBUF_X31_Y73_N8
\dataIN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(5),
	o => \dataIN[5]~input_o\);

-- Location: FF_X48_Y49_N7
\dp|RIR|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dataIN[5]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Sfetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RIR|Q\(5));

-- Location: IOIBUF_X65_Y73_N15
\dataIN[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(11),
	o => \dataIN[11]~input_o\);

-- Location: FF_X50_Y48_N23
\dp|RIR|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dataIN[11]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Sfetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RIR|Q\(11));

-- Location: IOIBUF_X115_Y37_N1
\dataIN[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(9),
	o => \dataIN[9]~input_o\);

-- Location: FF_X48_Y49_N25
\dp|RIR|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dataIN[9]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Sfetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RIR|Q\(9));

-- Location: IOIBUF_X23_Y73_N1
\dataIN[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(8),
	o => \dataIN[8]~input_o\);

-- Location: FF_X50_Y48_N25
\dp|RIR|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dataIN[8]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Sfetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RIR|Q\(8));

-- Location: LCCOMB_X49_Y50_N24
\ctrl|PE.Spop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|PE.Spop~0_combout\ = (\ctrl|EA.Salu~q\ & (\ctrl|Equal31~0_combout\ & \ctrl|Equal14~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Salu~q\,
	datac => \ctrl|Equal31~0_combout\,
	datad => \ctrl|Equal14~3_combout\,
	combout => \ctrl|PE.Spop~0_combout\);

-- Location: FF_X49_Y50_N25
\ctrl|EA.Spop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \ctrl|PE.Spop~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|EA.Spop~q\);

-- Location: LCCOMB_X48_Y46_N24
\ctrl|i.ld~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i.ld~0_combout\ = (!\dp|RIR|Q\(13) & (\dp|RIR|Q\(12) & (\dp|RIR|Q\(15) & !\dp|RIR|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(13),
	datab => \dp|RIR|Q\(12),
	datac => \dp|RIR|Q\(15),
	datad => \dp|RIR|Q\(14),
	combout => \ctrl|i.ld~0_combout\);

-- Location: LCCOMB_X49_Y46_N22
\ctrl|PE.Swbk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|PE.Swbk~0_combout\ = (!\ctrl|i.ld~0_combout\ & (\ctrl|PE.Sst~3_combout\ & ((!\ctrl|Equal31~3_combout\) # (!\ctrl|i.sl0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|i.ld~0_combout\,
	datab => \ctrl|i.sl0~0_combout\,
	datac => \ctrl|Equal31~3_combout\,
	datad => \ctrl|PE.Sst~3_combout\,
	combout => \ctrl|PE.Swbk~0_combout\);

-- Location: LCCOMB_X50_Y47_N22
\ctrl|Equal14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal14~6_combout\ = (!\dp|RIR|Q\(2) & (\dp|RIR|Q\(0) & (!\dp|RIR|Q\(1) & !\dp|RIR|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(2),
	datab => \dp|RIR|Q\(0),
	datac => \dp|RIR|Q\(1),
	datad => \dp|RIR|Q\(3),
	combout => \ctrl|Equal14~6_combout\);

-- Location: LCCOMB_X50_Y47_N20
\ctrl|Equal14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal14~5_combout\ = (!\dp|RIR|Q\(2) & (!\dp|RIR|Q\(0) & (\dp|RIR|Q\(1) & !\dp|RIR|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(2),
	datab => \dp|RIR|Q\(0),
	datac => \dp|RIR|Q\(1),
	datad => \dp|RIR|Q\(3),
	combout => \ctrl|Equal14~5_combout\);

-- Location: LCCOMB_X50_Y47_N30
\ctrl|Equal14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal14~10_combout\ = (!\dp|RIR|Q\(2) & (\dp|RIR|Q\(0) & (\dp|RIR|Q\(1) & !\dp|RIR|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(2),
	datab => \dp|RIR|Q\(0),
	datac => \dp|RIR|Q\(1),
	datad => \dp|RIR|Q\(3),
	combout => \ctrl|Equal14~10_combout\);

-- Location: LCCOMB_X50_Y47_N28
\ctrl|i.jumpD~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i.jumpD~5_combout\ = ((!\ctrl|Equal14~6_combout\ & (!\ctrl|Equal14~5_combout\ & !\ctrl|Equal14~10_combout\))) # (!\ctrl|Equal31~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal14~6_combout\,
	datab => \ctrl|Equal14~5_combout\,
	datac => \ctrl|Equal14~10_combout\,
	datad => \ctrl|Equal31~0_combout\,
	combout => \ctrl|i.jumpD~5_combout\);

-- Location: LCCOMB_X48_Y46_N28
\ctrl|Equal31~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal31~12_combout\ = (!\dp|RIR|Q\(15) & (!\dp|RIR|Q\(12) & (!\dp|RIR|Q\(13) & !\dp|RIR|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(15),
	datab => \dp|RIR|Q\(12),
	datac => \dp|RIR|Q\(13),
	datad => \dp|RIR|Q\(14),
	combout => \ctrl|Equal31~12_combout\);

-- Location: LCCOMB_X50_Y47_N2
\ctrl|Equal14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal14~1_combout\ = (\dp|RIR|Q\(2) & (!\dp|RIR|Q\(0) & (!\dp|RIR|Q\(1) & !\dp|RIR|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(2),
	datab => \dp|RIR|Q\(0),
	datac => \dp|RIR|Q\(1),
	datad => \dp|RIR|Q\(3),
	combout => \ctrl|Equal14~1_combout\);

-- Location: LCCOMB_X49_Y46_N28
\ctrl|inst_la1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|inst_la1~0_combout\ = (!\ctrl|Equal31~8_combout\ & (!\ctrl|Equal31~9_combout\ & ((!\ctrl|Equal14~1_combout\) # (!\ctrl|Equal31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~8_combout\,
	datab => \ctrl|Equal31~0_combout\,
	datac => \ctrl|Equal14~1_combout\,
	datad => \ctrl|Equal31~9_combout\,
	combout => \ctrl|inst_la1~0_combout\);

-- Location: LCCOMB_X45_Y46_N4
\ctrl|Equal31~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal31~10_combout\ = (!\dp|RIR|Q\(13) & (\dp|RIR|Q\(14) & (!\dp|RIR|Q\(15) & !\dp|RIR|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(13),
	datab => \dp|RIR|Q\(14),
	datac => \dp|RIR|Q\(15),
	datad => \dp|RIR|Q\(12),
	combout => \ctrl|Equal31~10_combout\);

-- Location: LCCOMB_X49_Y46_N20
\ctrl|i.sl0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i.sl0~1_combout\ = (\dp|RIR|Q\(12) & (\ctrl|Equal31~0_combout\ & (\ctrl|Equal14~2_combout\ & \ctrl|i.sl0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(12),
	datab => \ctrl|Equal31~0_combout\,
	datac => \ctrl|Equal14~2_combout\,
	datad => \ctrl|i.sl0~0_combout\,
	combout => \ctrl|i.sl0~1_combout\);

-- Location: LCCOMB_X49_Y46_N10
\ctrl|inst_la1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|inst_la1~1_combout\ = (\ctrl|inst_la1~0_combout\ & (!\ctrl|Equal31~10_combout\ & !\ctrl|i.sl0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|inst_la1~0_combout\,
	datac => \ctrl|Equal31~10_combout\,
	datad => \ctrl|i.sl0~1_combout\,
	combout => \ctrl|inst_la1~1_combout\);

-- Location: LCCOMB_X49_Y46_N16
\ctrl|inst_la1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|inst_la1~combout\ = ((\ctrl|Equal31~12_combout\) # ((\ctrl|Equal31~4_combout\) # (!\ctrl|inst_la1~1_combout\))) # (!\ctrl|i.jumpD~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|i.jumpD~5_combout\,
	datab => \ctrl|Equal31~12_combout\,
	datac => \ctrl|Equal31~4_combout\,
	datad => \ctrl|inst_la1~1_combout\,
	combout => \ctrl|inst_la1~combout\);

-- Location: LCCOMB_X49_Y46_N26
\ctrl|PE.Swbk~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|PE.Swbk~1_combout\ = (\ctrl|PE.Swbk~0_combout\ & ((\ctrl|inst_la2~0_combout\) # (\ctrl|inst_la1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|inst_la2~0_combout\,
	datac => \ctrl|PE.Swbk~0_combout\,
	datad => \ctrl|inst_la1~combout\,
	combout => \ctrl|PE.Swbk~1_combout\);

-- Location: FF_X49_Y46_N27
\ctrl|EA.Swbk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \ctrl|PE.Swbk~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|EA.Swbk~q\);

-- Location: LCCOMB_X49_Y50_N14
\ctrl|PE.Sld~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|PE.Sld~3_combout\ = (!\dp|RIR|Q\(14) & \ctrl|EA.Salu~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|RIR|Q\(14),
	datad => \ctrl|EA.Salu~q\,
	combout => \ctrl|PE.Sld~3_combout\);

-- Location: LCCOMB_X49_Y50_N2
\ctrl|PE.Sld~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|PE.Sld~9_combout\ = (\dp|RIR|Q\(12) & (!\dp|RIR|Q\(13) & (\ctrl|PE.Sld~3_combout\ & \dp|RIR|Q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(12),
	datab => \dp|RIR|Q\(13),
	datac => \ctrl|PE.Sld~3_combout\,
	datad => \dp|RIR|Q\(15),
	combout => \ctrl|PE.Sld~9_combout\);

-- Location: FF_X49_Y50_N3
\ctrl|EA.Sld\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \ctrl|PE.Sld~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|EA.Sld~q\);

-- Location: LCCOMB_X50_Y48_N26
\ctrl|uins.wreg\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|uins.wreg~combout\ = (\ctrl|EA.Spop~q\) # ((\ctrl|EA.Swbk~q\) # (\ctrl|EA.Sld~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Spop~q\,
	datab => \ctrl|EA.Swbk~q\,
	datad => \ctrl|EA.Sld~q\,
	combout => \ctrl|uins.wreg~combout\);

-- Location: LCCOMB_X50_Y48_N0
\dp|REGS|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~4_combout\ = (!\dp|RIR|Q\(9) & (!\dp|RIR|Q\(8) & (!\dp|RIR|Q\(10) & \ctrl|uins.wreg~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(9),
	datab => \dp|RIR|Q\(8),
	datac => \dp|RIR|Q\(10),
	datad => \ctrl|uins.wreg~combout\,
	combout => \dp|REGS|Equal0~4_combout\);

-- Location: LCCOMB_X53_Y49_N10
\dp|REGS|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~5_combout\ = (\dp|RIR|Q\(11) & \dp|REGS|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(11),
	datad => \dp|REGS|Equal0~4_combout\,
	combout => \dp|REGS|Equal0~5_combout\);

-- Location: FF_X54_Y48_N27
\dp|REGS|r1:8:rx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[15]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:8:rx|Q\(15));

-- Location: LCCOMB_X55_Y48_N12
\dp|REGS|r1:9:rx|Q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:9:rx|Q[15]~feeder_combout\ = \dp|dtreg[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|dtreg[15]~15_combout\,
	combout => \dp|REGS|r1:9:rx|Q[15]~feeder_combout\);

-- Location: LCCOMB_X50_Y48_N6
\dp|REGS|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~2_combout\ = (!\dp|RIR|Q\(9) & (\dp|RIR|Q\(8) & (!\dp|RIR|Q\(10) & \ctrl|uins.wreg~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(9),
	datab => \dp|RIR|Q\(8),
	datac => \dp|RIR|Q\(10),
	datad => \ctrl|uins.wreg~combout\,
	combout => \dp|REGS|Equal0~2_combout\);

-- Location: LCCOMB_X50_Y49_N4
\dp|REGS|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~3_combout\ = (\dp|RIR|Q\(11) & \dp|REGS|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(11),
	datad => \dp|REGS|Equal0~2_combout\,
	combout => \dp|REGS|Equal0~3_combout\);

-- Location: FF_X55_Y48_N13
\dp|REGS|r1:9:rx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:9:rx|Q[15]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:9:rx|Q\(15));

-- Location: LCCOMB_X54_Y48_N26
\dp|REGS|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux0~0_combout\ = (\dp|RIR|Q\(4) & ((\dp|RIR|Q\(5)) # ((\dp|REGS|r1:9:rx|Q\(15))))) # (!\dp|RIR|Q\(4) & (!\dp|RIR|Q\(5) & (\dp|REGS|r1:8:rx|Q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(4),
	datab => \dp|RIR|Q\(5),
	datac => \dp|REGS|r1:8:rx|Q\(15),
	datad => \dp|REGS|r1:9:rx|Q\(15),
	combout => \dp|REGS|Mux0~0_combout\);

-- Location: LCCOMB_X50_Y48_N24
\dp|REGS|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~6_combout\ = (!\dp|RIR|Q\(10) & (\dp|RIR|Q\(9) & (\dp|RIR|Q\(8) & \ctrl|uins.wreg~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(10),
	datab => \dp|RIR|Q\(9),
	datac => \dp|RIR|Q\(8),
	datad => \ctrl|uins.wreg~combout\,
	combout => \dp|REGS|Equal0~6_combout\);

-- Location: LCCOMB_X53_Y48_N26
\dp|REGS|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~7_combout\ = (\dp|RIR|Q\(11) & \dp|REGS|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|RIR|Q\(11),
	datad => \dp|REGS|Equal0~6_combout\,
	combout => \dp|REGS|Equal0~7_combout\);

-- Location: FF_X54_Y52_N25
\dp|REGS|r1:11:rx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[15]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:11:rx|Q\(15));

-- Location: LCCOMB_X50_Y48_N8
\dp|REGS|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~0_combout\ = (\dp|RIR|Q\(9) & (!\dp|RIR|Q\(8) & (!\dp|RIR|Q\(10) & \ctrl|uins.wreg~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(9),
	datab => \dp|RIR|Q\(8),
	datac => \dp|RIR|Q\(10),
	datad => \ctrl|uins.wreg~combout\,
	combout => \dp|REGS|Equal0~0_combout\);

-- Location: LCCOMB_X53_Y48_N2
\dp|REGS|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~1_combout\ = (\dp|RIR|Q\(11) & \dp|REGS|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|RIR|Q\(11),
	datad => \dp|REGS|Equal0~0_combout\,
	combout => \dp|REGS|Equal0~1_combout\);

-- Location: FF_X55_Y52_N9
\dp|REGS|r1:10:rx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[15]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:10:rx|Q\(15));

-- Location: LCCOMB_X55_Y52_N8
\dp|REGS|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux0~1_combout\ = (\dp|REGS|Mux0~0_combout\ & ((\dp|REGS|r1:11:rx|Q\(15)) # ((!\dp|RIR|Q\(5))))) # (!\dp|REGS|Mux0~0_combout\ & (((\dp|REGS|r1:10:rx|Q\(15) & \dp|RIR|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux0~0_combout\,
	datab => \dp|REGS|r1:11:rx|Q\(15),
	datac => \dp|REGS|r1:10:rx|Q\(15),
	datad => \dp|RIR|Q\(5),
	combout => \dp|REGS|Mux0~1_combout\);

-- Location: IOIBUF_X23_Y73_N8
\dataIN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(6),
	o => \dataIN[6]~input_o\);

-- Location: FF_X48_Y49_N23
\dp|RIR|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dataIN[6]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Sfetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RIR|Q\(6));

-- Location: LCCOMB_X50_Y48_N2
\dp|REGS|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~8_combout\ = (!\dp|RIR|Q\(9) & (\dp|RIR|Q\(8) & (\dp|RIR|Q\(10) & \ctrl|uins.wreg~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(9),
	datab => \dp|RIR|Q\(8),
	datac => \dp|RIR|Q\(10),
	datad => \ctrl|uins.wreg~combout\,
	combout => \dp|REGS|Equal0~8_combout\);

-- Location: LCCOMB_X49_Y49_N0
\dp|REGS|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~9_combout\ = (!\dp|RIR|Q\(11) & \dp|REGS|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|RIR|Q\(11),
	datad => \dp|REGS|Equal0~8_combout\,
	combout => \dp|REGS|Equal0~9_combout\);

-- Location: FF_X50_Y52_N13
\dp|REGS|r1:5:rx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[15]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:5:rx|Q\(15));

-- Location: LCCOMB_X50_Y48_N28
\dp|REGS|Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~14_combout\ = (\dp|RIR|Q\(9) & (\dp|RIR|Q\(8) & (\dp|RIR|Q\(10) & \ctrl|uins.wreg~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(9),
	datab => \dp|RIR|Q\(8),
	datac => \dp|RIR|Q\(10),
	datad => \ctrl|uins.wreg~combout\,
	combout => \dp|REGS|Equal0~14_combout\);

-- Location: LCCOMB_X50_Y48_N16
\dp|REGS|Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~15_combout\ = (!\dp|RIR|Q\(11) & \dp|REGS|Equal0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|RIR|Q\(11),
	datad => \dp|REGS|Equal0~14_combout\,
	combout => \dp|REGS|Equal0~15_combout\);

-- Location: FF_X53_Y52_N21
\dp|REGS|r1:7:rx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[15]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:7:rx|Q\(15));

-- Location: LCCOMB_X55_Y51_N26
\dp|REGS|r1:6:rx|Q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:6:rx|Q[15]~feeder_combout\ = \dp|dtreg[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|dtreg[15]~15_combout\,
	combout => \dp|REGS|r1:6:rx|Q[15]~feeder_combout\);

-- Location: LCCOMB_X50_Y48_N12
\dp|REGS|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~10_combout\ = (\dp|RIR|Q\(9) & (!\dp|RIR|Q\(8) & (\dp|RIR|Q\(10) & \ctrl|uins.wreg~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(9),
	datab => \dp|RIR|Q\(8),
	datac => \dp|RIR|Q\(10),
	datad => \ctrl|uins.wreg~combout\,
	combout => \dp|REGS|Equal0~10_combout\);

-- Location: LCCOMB_X54_Y48_N12
\dp|REGS|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~11_combout\ = (!\dp|RIR|Q\(11) & \dp|REGS|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|RIR|Q\(11),
	datad => \dp|REGS|Equal0~10_combout\,
	combout => \dp|REGS|Equal0~11_combout\);

-- Location: FF_X55_Y51_N27
\dp|REGS|r1:6:rx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:6:rx|Q[15]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:6:rx|Q\(15));

-- Location: LCCOMB_X50_Y48_N14
\dp|REGS|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~12_combout\ = (!\dp|RIR|Q\(9) & (!\dp|RIR|Q\(8) & (\dp|RIR|Q\(10) & \ctrl|uins.wreg~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(9),
	datab => \dp|RIR|Q\(8),
	datac => \dp|RIR|Q\(10),
	datad => \ctrl|uins.wreg~combout\,
	combout => \dp|REGS|Equal0~12_combout\);

-- Location: LCCOMB_X50_Y50_N28
\dp|REGS|Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~13_combout\ = (!\dp|RIR|Q\(11) & \dp|REGS|Equal0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|RIR|Q\(11),
	datad => \dp|REGS|Equal0~12_combout\,
	combout => \dp|REGS|Equal0~13_combout\);

-- Location: FF_X52_Y52_N19
\dp|REGS|r1:4:rx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[15]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:4:rx|Q\(15));

-- Location: LCCOMB_X52_Y52_N18
\dp|REGS|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux0~2_combout\ = (\dp|RIR|Q\(4) & (((\dp|RIR|Q\(5))))) # (!\dp|RIR|Q\(4) & ((\dp|RIR|Q\(5) & (\dp|REGS|r1:6:rx|Q\(15))) # (!\dp|RIR|Q\(5) & ((\dp|REGS|r1:4:rx|Q\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(4),
	datab => \dp|REGS|r1:6:rx|Q\(15),
	datac => \dp|REGS|r1:4:rx|Q\(15),
	datad => \dp|RIR|Q\(5),
	combout => \dp|REGS|Mux0~2_combout\);

-- Location: LCCOMB_X53_Y52_N20
\dp|REGS|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux0~3_combout\ = (\dp|RIR|Q\(4) & ((\dp|REGS|Mux0~2_combout\ & ((\dp|REGS|r1:7:rx|Q\(15)))) # (!\dp|REGS|Mux0~2_combout\ & (\dp|REGS|r1:5:rx|Q\(15))))) # (!\dp|RIR|Q\(4) & (((\dp|REGS|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:5:rx|Q\(15),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:7:rx|Q\(15),
	datad => \dp|REGS|Mux0~2_combout\,
	combout => \dp|REGS|Mux0~3_combout\);

-- Location: IOIBUF_X47_Y73_N15
\dataIN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(7),
	o => \dataIN[7]~input_o\);

-- Location: FF_X48_Y49_N11
\dp|RIR|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dataIN[7]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Sfetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RIR|Q\(7));

-- Location: LCCOMB_X53_Y48_N8
\dp|REGS|Equal0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~16_combout\ = (!\dp|RIR|Q\(11) & \dp|REGS|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|RIR|Q\(11),
	datad => \dp|REGS|Equal0~0_combout\,
	combout => \dp|REGS|Equal0~16_combout\);

-- Location: FF_X52_Y52_N23
\dp|REGS|r1:2:rx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[15]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:2:rx|Q\(15));

-- Location: LCCOMB_X53_Y49_N28
\dp|REGS|Equal0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~18_combout\ = (!\dp|RIR|Q\(11) & \dp|REGS|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(11),
	datad => \dp|REGS|Equal0~4_combout\,
	combout => \dp|REGS|Equal0~18_combout\);

-- Location: FF_X53_Y48_N5
\dp|REGS|r1:0:rx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[15]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:0:rx|Q\(15));

-- Location: LCCOMB_X50_Y49_N24
\dp|REGS|Equal0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~17_combout\ = (!\dp|RIR|Q\(11) & \dp|REGS|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(11),
	datad => \dp|REGS|Equal0~2_combout\,
	combout => \dp|REGS|Equal0~17_combout\);

-- Location: FF_X53_Y48_N7
\dp|REGS|r1:1:rx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[15]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:1:rx|Q\(15));

-- Location: LCCOMB_X53_Y48_N4
\dp|REGS|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux0~4_combout\ = (\dp|RIR|Q\(5) & (\dp|RIR|Q\(4))) # (!\dp|RIR|Q\(5) & ((\dp|RIR|Q\(4) & ((\dp|REGS|r1:1:rx|Q\(15)))) # (!\dp|RIR|Q\(4) & (\dp|REGS|r1:0:rx|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:0:rx|Q\(15),
	datad => \dp|REGS|r1:1:rx|Q\(15),
	combout => \dp|REGS|Mux0~4_combout\);

-- Location: LCCOMB_X53_Y48_N22
\dp|REGS|Equal0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~19_combout\ = (!\dp|RIR|Q\(11) & \dp|REGS|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|RIR|Q\(11),
	datad => \dp|REGS|Equal0~6_combout\,
	combout => \dp|REGS|Equal0~19_combout\);

-- Location: FF_X54_Y52_N19
\dp|REGS|r1:3:rx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[15]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:3:rx|Q\(15));

-- Location: LCCOMB_X54_Y52_N18
\dp|REGS|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux0~5_combout\ = (\dp|REGS|Mux0~4_combout\ & (((\dp|REGS|r1:3:rx|Q\(15)) # (!\dp|RIR|Q\(5))))) # (!\dp|REGS|Mux0~4_combout\ & (\dp|REGS|r1:2:rx|Q\(15) & ((\dp|RIR|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:2:rx|Q\(15),
	datab => \dp|REGS|Mux0~4_combout\,
	datac => \dp|REGS|r1:3:rx|Q\(15),
	datad => \dp|RIR|Q\(5),
	combout => \dp|REGS|Mux0~5_combout\);

-- Location: LCCOMB_X53_Y52_N16
\dp|REGS|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux0~6_combout\ = (\dp|RIR|Q\(6) & ((\dp|REGS|Mux0~3_combout\) # ((\dp|RIR|Q\(7))))) # (!\dp|RIR|Q\(6) & (((!\dp|RIR|Q\(7) & \dp|REGS|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|REGS|Mux0~3_combout\,
	datac => \dp|RIR|Q\(7),
	datad => \dp|REGS|Mux0~5_combout\,
	combout => \dp|REGS|Mux0~6_combout\);

-- Location: LCCOMB_X50_Y49_N18
\dp|REGS|Equal0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~22_combout\ = (\dp|RIR|Q\(11) & \dp|REGS|Equal0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(11),
	datad => \dp|REGS|Equal0~12_combout\,
	combout => \dp|REGS|Equal0~22_combout\);

-- Location: FF_X50_Y50_N11
\dp|REGS|r1:12:rx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[15]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:12:rx|Q\(15));

-- Location: LCCOMB_X54_Y48_N24
\dp|REGS|Equal0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~21_combout\ = (\dp|RIR|Q\(11) & \dp|REGS|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|RIR|Q\(11),
	datad => \dp|REGS|Equal0~10_combout\,
	combout => \dp|REGS|Equal0~21_combout\);

-- Location: FF_X54_Y48_N25
\dp|REGS|r1:14:rx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[15]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:14:rx|Q\(15));

-- Location: LCCOMB_X50_Y50_N10
\dp|REGS|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux0~7_combout\ = (\dp|RIR|Q\(5) & ((\dp|RIR|Q\(4)) # ((\dp|REGS|r1:14:rx|Q\(15))))) # (!\dp|RIR|Q\(5) & (!\dp|RIR|Q\(4) & (\dp|REGS|r1:12:rx|Q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:12:rx|Q\(15),
	datad => \dp|REGS|r1:14:rx|Q\(15),
	combout => \dp|REGS|Mux0~7_combout\);

-- Location: LCCOMB_X49_Y49_N24
\dp|REGS|Equal0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~20_combout\ = (\dp|RIR|Q\(11) & \dp|REGS|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|RIR|Q\(11),
	datad => \dp|REGS|Equal0~8_combout\,
	combout => \dp|REGS|Equal0~20_combout\);

-- Location: FF_X49_Y52_N15
\dp|REGS|r1:13:rx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[15]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:13:rx|Q\(15));

-- Location: LCCOMB_X49_Y52_N14
\dp|REGS|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux0~8_combout\ = (\dp|REGS|Mux0~7_combout\ & ((\dp|REGS|r1:15:rx|Q\(15)) # ((!\dp|RIR|Q\(4))))) # (!\dp|REGS|Mux0~7_combout\ & (((\dp|REGS|r1:13:rx|Q\(15) & \dp|RIR|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:15:rx|Q\(15),
	datab => \dp|REGS|Mux0~7_combout\,
	datac => \dp|REGS|r1:13:rx|Q\(15),
	datad => \dp|RIR|Q\(4),
	combout => \dp|REGS|Mux0~8_combout\);

-- Location: LCCOMB_X53_Y52_N18
\dp|REGS|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux0~9_combout\ = (\dp|REGS|Mux0~6_combout\ & (((\dp|REGS|Mux0~8_combout\) # (!\dp|RIR|Q\(7))))) # (!\dp|REGS|Mux0~6_combout\ & (\dp|REGS|Mux0~1_combout\ & (\dp|RIR|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux0~1_combout\,
	datab => \dp|REGS|Mux0~6_combout\,
	datac => \dp|RIR|Q\(7),
	datad => \dp|REGS|Mux0~8_combout\,
	combout => \dp|REGS|Mux0~9_combout\);

-- Location: FF_X53_Y52_N19
\dp|REG_A|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|Mux0~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_A|Q\(15));

-- Location: LCCOMB_X49_Y45_N12
\ctrl|uins.ma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|uins.ma~0_combout\ = (\ctrl|Equal31~2_combout\) # (\ctrl|inst_la2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~2_combout\,
	datad => \ctrl|inst_la2~0_combout\,
	combout => \ctrl|uins.ma~0_combout\);

-- Location: LCCOMB_X49_Y45_N8
\dp|opA[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opA[15]~15_combout\ = (\ctrl|i.jumpD~8_combout\ & (\dp|RIR|Q\(15))) # (!\ctrl|i.jumpD~8_combout\ & ((\ctrl|uins.ma~0_combout\ & (\dp|RIR|Q\(15))) # (!\ctrl|uins.ma~0_combout\ & ((\dp|REG_A|Q\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(15),
	datab => \dp|REG_A|Q\(15),
	datac => \ctrl|i.jumpD~8_combout\,
	datad => \ctrl|uins.ma~0_combout\,
	combout => \dp|opA[15]~15_combout\);

-- Location: LCCOMB_X45_Y46_N18
\dp|outalu[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[15]~0_combout\ = (\ctrl|Equal31~7_combout\) # ((\ctrl|Equal31~8_combout\) # ((\ctrl|Equal31~9_combout\ & \dp|opA[15]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~7_combout\,
	datab => \ctrl|Equal31~8_combout\,
	datac => \ctrl|Equal31~9_combout\,
	datad => \dp|opA[15]~15_combout\,
	combout => \dp|outalu[15]~0_combout\);

-- Location: LCCOMB_X45_Y46_N10
\dp|outalu[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[15]~1_combout\ = (\dp|opB[15]~34_combout\ & ((\dp|outalu[15]~0_combout\) # ((!\dp|opA[15]~15_combout\ & \ctrl|Equal31~10_combout\)))) # (!\dp|opB[15]~34_combout\ & (((\dp|opA[15]~15_combout\ & \ctrl|Equal31~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[15]~0_combout\,
	datab => \dp|opA[15]~15_combout\,
	datac => \ctrl|Equal31~10_combout\,
	datad => \dp|opB[15]~34_combout\,
	combout => \dp|outalu[15]~1_combout\);

-- Location: LCCOMB_X49_Y46_N6
\ctrl|i~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i~11_combout\ = (\ctrl|Equal14~1_combout\ & \ctrl|Equal31~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|Equal14~1_combout\,
	datad => \ctrl|Equal31~0_combout\,
	combout => \ctrl|i~11_combout\);

-- Location: LCCOMB_X45_Y46_N12
\ctrl|Equal31~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal31~11_combout\ = (!\dp|RIR|Q\(13) & (!\dp|RIR|Q\(12) & (\dp|RIR|Q\(15) & !\dp|RIR|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(13),
	datab => \dp|RIR|Q\(12),
	datac => \dp|RIR|Q\(15),
	datad => \dp|RIR|Q\(14),
	combout => \ctrl|Equal31~11_combout\);

-- Location: LCCOMB_X50_Y46_N8
\dp|outalu[10]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[10]~13_combout\ = (\dp|RIR|Q\(1) & (((!\dp|RIR|Q\(2) & !\dp|RIR|Q\(3))))) # (!\dp|RIR|Q\(1) & (((!\dp|RIR|Q\(0) & !\dp|RIR|Q\(3))) # (!\dp|RIR|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(1),
	datab => \dp|RIR|Q\(0),
	datac => \dp|RIR|Q\(2),
	datad => \dp|RIR|Q\(3),
	combout => \dp|outalu[10]~13_combout\);

-- Location: LCCOMB_X46_Y46_N14
\dp|outalu[7]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[7]~70_combout\ = (\dp|RIR|Q\(14)) # ((\dp|RIR|Q\(12) & ((!\dp|outalu[10]~13_combout\) # (!\dp|RIR|Q\(13)))) # (!\dp|RIR|Q\(12) & (\dp|RIR|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(12),
	datab => \dp|RIR|Q\(13),
	datac => \dp|outalu[10]~13_combout\,
	datad => \dp|RIR|Q\(14),
	combout => \dp|outalu[7]~70_combout\);

-- Location: LCCOMB_X46_Y46_N8
\dp|outalu[7]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[7]~69_combout\ = (!\dp|RIR|Q\(15) & (\dp|RIR|Q\(13) $ (((\dp|RIR|Q\(12)) # (!\dp|RIR|Q\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(12),
	datab => \dp|RIR|Q\(13),
	datac => \dp|RIR|Q\(15),
	datad => \dp|RIR|Q\(14),
	combout => \dp|outalu[7]~69_combout\);

-- Location: LCCOMB_X50_Y46_N30
\dp|outalu~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu~3_combout\ = (\ctrl|Equal31~1_combout\ & ((\ctrl|Equal14~11_combout\) # ((\ctrl|Equal31~0_combout\ & \ctrl|Equal14~7_combout\)))) # (!\ctrl|Equal31~1_combout\ & (((\ctrl|Equal31~0_combout\ & \ctrl|Equal14~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~1_combout\,
	datab => \ctrl|Equal14~11_combout\,
	datac => \ctrl|Equal31~0_combout\,
	datad => \ctrl|Equal14~7_combout\,
	combout => \dp|outalu~3_combout\);

-- Location: LCCOMB_X50_Y47_N18
\ctrl|Equal14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal14~9_combout\ = (\dp|RIR|Q\(2) & (!\dp|RIR|Q\(1) & (\dp|RIR|Q\(0) & !\dp|RIR|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(2),
	datab => \dp|RIR|Q\(1),
	datac => \dp|RIR|Q\(0),
	datad => \dp|RIR|Q\(3),
	combout => \ctrl|Equal14~9_combout\);

-- Location: LCCOMB_X50_Y47_N10
\ctrl|i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i~0_combout\ = (\dp|flag\(2) & ((\ctrl|Equal14~4_combout\) # ((\dp|flag\(3) & \ctrl|Equal14~3_combout\)))) # (!\dp|flag\(2) & (\dp|flag\(3) & (\ctrl|Equal14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|flag\(2),
	datab => \dp|flag\(3),
	datac => \ctrl|Equal14~3_combout\,
	datad => \ctrl|Equal14~4_combout\,
	combout => \ctrl|i~0_combout\);

-- Location: LCCOMB_X49_Y50_N22
\ctrl|uins.mreg\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|uins.mreg~combout\ = (\ctrl|i.ld~0_combout\) # ((\ctrl|Equal14~3_combout\ & \ctrl|Equal31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal14~3_combout\,
	datab => \ctrl|Equal31~0_combout\,
	datad => \ctrl|i.ld~0_combout\,
	combout => \ctrl|uins.mreg~combout\);

-- Location: FF_X46_Y47_N5
\dp|REG_alu|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|outalu[14]~31_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Salu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_alu|Q\(14));

-- Location: LCCOMB_X49_Y51_N4
\dp|dtreg[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtreg[14]~14_combout\ = (\ctrl|uins.mreg~combout\ & (\dataIN[14]~input_o\)) # (!\ctrl|uins.mreg~combout\ & ((\dp|REG_alu|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|uins.mreg~combout\,
	datab => \dataIN[14]~input_o\,
	datad => \dp|REG_alu|Q\(14),
	combout => \dp|dtreg[14]~14_combout\);

-- Location: FF_X50_Y49_N25
\dp|REGS|r1:1:rx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[14]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:1:rx|Q\(14));

-- Location: FF_X50_Y49_N15
\dp|REGS|r1:3:rx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[14]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:3:rx|Q\(14));

-- Location: FF_X53_Y51_N17
\dp|REGS|r1:2:rx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[14]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:2:rx|Q\(14));

-- Location: FF_X53_Y51_N23
\dp|REGS|r1:0:rx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[14]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:0:rx|Q\(14));

-- Location: LCCOMB_X53_Y51_N22
\dp|REGS|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux1~4_combout\ = (\dp|RIR|Q\(5) & ((\dp|REGS|r1:2:rx|Q\(14)) # ((\dp|RIR|Q\(4))))) # (!\dp|RIR|Q\(5) & (((\dp|REGS|r1:0:rx|Q\(14) & !\dp|RIR|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|REGS|r1:2:rx|Q\(14),
	datac => \dp|REGS|r1:0:rx|Q\(14),
	datad => \dp|RIR|Q\(4),
	combout => \dp|REGS|Mux1~4_combout\);

-- Location: LCCOMB_X50_Y49_N14
\dp|REGS|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux1~5_combout\ = (\dp|RIR|Q\(4) & ((\dp|REGS|Mux1~4_combout\ & ((\dp|REGS|r1:3:rx|Q\(14)))) # (!\dp|REGS|Mux1~4_combout\ & (\dp|REGS|r1:1:rx|Q\(14))))) # (!\dp|RIR|Q\(4) & (((\dp|REGS|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(4),
	datab => \dp|REGS|r1:1:rx|Q\(14),
	datac => \dp|REGS|r1:3:rx|Q\(14),
	datad => \dp|REGS|Mux1~4_combout\,
	combout => \dp|REGS|Mux1~5_combout\);

-- Location: FF_X53_Y47_N19
\dp|REGS|r1:9:rx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[14]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:9:rx|Q\(14));

-- Location: FF_X54_Y47_N23
\dp|REGS|r1:11:rx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[14]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:11:rx|Q\(14));

-- Location: FF_X54_Y47_N29
\dp|REGS|r1:8:rx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[14]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:8:rx|Q\(14));

-- Location: FF_X53_Y47_N29
\dp|REGS|r1:10:rx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[14]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:10:rx|Q\(14));

-- Location: LCCOMB_X54_Y47_N28
\dp|REGS|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux1~2_combout\ = (\dp|RIR|Q\(5) & ((\dp|RIR|Q\(4)) # ((\dp|REGS|r1:10:rx|Q\(14))))) # (!\dp|RIR|Q\(5) & (!\dp|RIR|Q\(4) & (\dp|REGS|r1:8:rx|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:8:rx|Q\(14),
	datad => \dp|REGS|r1:10:rx|Q\(14),
	combout => \dp|REGS|Mux1~2_combout\);

-- Location: LCCOMB_X54_Y47_N22
\dp|REGS|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux1~3_combout\ = (\dp|RIR|Q\(4) & ((\dp|REGS|Mux1~2_combout\ & ((\dp|REGS|r1:11:rx|Q\(14)))) # (!\dp|REGS|Mux1~2_combout\ & (\dp|REGS|r1:9:rx|Q\(14))))) # (!\dp|RIR|Q\(4) & (((\dp|REGS|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(4),
	datab => \dp|REGS|r1:9:rx|Q\(14),
	datac => \dp|REGS|r1:11:rx|Q\(14),
	datad => \dp|REGS|Mux1~2_combout\,
	combout => \dp|REGS|Mux1~3_combout\);

-- Location: LCCOMB_X52_Y47_N10
\dp|REGS|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux1~6_combout\ = (\dp|RIR|Q\(6) & (\dp|RIR|Q\(7))) # (!\dp|RIR|Q\(6) & ((\dp|RIR|Q\(7) & ((\dp|REGS|Mux1~3_combout\))) # (!\dp|RIR|Q\(7) & (\dp|REGS|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|RIR|Q\(7),
	datac => \dp|REGS|Mux1~5_combout\,
	datad => \dp|REGS|Mux1~3_combout\,
	combout => \dp|REGS|Mux1~6_combout\);

-- Location: FF_X50_Y51_N23
\dp|REGS|r1:5:rx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[14]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:5:rx|Q\(14));

-- Location: FF_X50_Y50_N3
\dp|REGS|r1:4:rx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[14]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:4:rx|Q\(14));

-- Location: LCCOMB_X50_Y50_N2
\dp|REGS|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux1~0_combout\ = (\dp|RIR|Q\(4) & ((\dp|REGS|r1:5:rx|Q\(14)) # ((\dp|RIR|Q\(5))))) # (!\dp|RIR|Q\(4) & (((\dp|REGS|r1:4:rx|Q\(14) & !\dp|RIR|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:5:rx|Q\(14),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:4:rx|Q\(14),
	datad => \dp|RIR|Q\(5),
	combout => \dp|REGS|Mux1~0_combout\);

-- Location: FF_X52_Y51_N23
\dp|REGS|r1:6:rx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[14]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:6:rx|Q\(14));

-- Location: FF_X49_Y51_N29
\dp|REGS|r1:7:rx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[14]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:7:rx|Q\(14));

-- Location: LCCOMB_X52_Y51_N22
\dp|REGS|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux1~1_combout\ = (\dp|REGS|Mux1~0_combout\ & (((\dp|REGS|r1:7:rx|Q\(14))) # (!\dp|RIR|Q\(5)))) # (!\dp|REGS|Mux1~0_combout\ & (\dp|RIR|Q\(5) & (\dp|REGS|r1:6:rx|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux1~0_combout\,
	datab => \dp|RIR|Q\(5),
	datac => \dp|REGS|r1:6:rx|Q\(14),
	datad => \dp|REGS|r1:7:rx|Q\(14),
	combout => \dp|REGS|Mux1~1_combout\);

-- Location: FF_X50_Y50_N1
\dp|REGS|r1:12:rx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[14]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:12:rx|Q\(14));

-- Location: LCCOMB_X49_Y52_N12
\dp|REGS|r1:13:rx|Q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:13:rx|Q[14]~feeder_combout\ = \dp|dtreg[14]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|dtreg[14]~14_combout\,
	combout => \dp|REGS|r1:13:rx|Q[14]~feeder_combout\);

-- Location: FF_X49_Y52_N13
\dp|REGS|r1:13:rx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:13:rx|Q[14]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:13:rx|Q\(14));

-- Location: LCCOMB_X50_Y50_N0
\dp|REGS|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux1~7_combout\ = (\dp|RIR|Q\(5) & (\dp|RIR|Q\(4))) # (!\dp|RIR|Q\(5) & ((\dp|RIR|Q\(4) & ((\dp|REGS|r1:13:rx|Q\(14)))) # (!\dp|RIR|Q\(4) & (\dp|REGS|r1:12:rx|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:12:rx|Q\(14),
	datad => \dp|REGS|r1:13:rx|Q\(14),
	combout => \dp|REGS|Mux1~7_combout\);

-- Location: LCCOMB_X50_Y48_N22
\dp|REGS|Equal0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Equal0~23_combout\ = (\dp|RIR|Q\(11) & \dp|REGS|Equal0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|RIR|Q\(11),
	datad => \dp|REGS|Equal0~14_combout\,
	combout => \dp|REGS|Equal0~23_combout\);

-- Location: FF_X48_Y51_N5
\dp|REGS|r1:15:rx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[14]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:15:rx|Q\(14));

-- Location: FF_X55_Y51_N29
\dp|REGS|r1:14:rx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[14]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:14:rx|Q\(14));

-- Location: LCCOMB_X55_Y51_N28
\dp|REGS|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux1~8_combout\ = (\dp|REGS|Mux1~7_combout\ & ((\dp|REGS|r1:15:rx|Q\(14)) # ((!\dp|RIR|Q\(5))))) # (!\dp|REGS|Mux1~7_combout\ & (((\dp|REGS|r1:14:rx|Q\(14) & \dp|RIR|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux1~7_combout\,
	datab => \dp|REGS|r1:15:rx|Q\(14),
	datac => \dp|REGS|r1:14:rx|Q\(14),
	datad => \dp|RIR|Q\(5),
	combout => \dp|REGS|Mux1~8_combout\);

-- Location: LCCOMB_X52_Y47_N12
\dp|REGS|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux1~9_combout\ = (\dp|REGS|Mux1~6_combout\ & (((\dp|REGS|Mux1~8_combout\) # (!\dp|RIR|Q\(6))))) # (!\dp|REGS|Mux1~6_combout\ & (\dp|REGS|Mux1~1_combout\ & (\dp|RIR|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux1~6_combout\,
	datab => \dp|REGS|Mux1~1_combout\,
	datac => \dp|RIR|Q\(6),
	datad => \dp|REGS|Mux1~8_combout\,
	combout => \dp|REGS|Mux1~9_combout\);

-- Location: FF_X48_Y45_N15
\dp|REG_A|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|REGS|Mux1~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_A|Q\(14));

-- Location: LCCOMB_X45_Y46_N22
\dp|outalu[10]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[10]~16_combout\ = (!\dp|RIR|Q\(15) & (\dp|RIR|Q\(14) & (\dp|RIR|Q\(13) $ (!\dp|RIR|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(13),
	datab => \dp|RIR|Q\(12),
	datac => \dp|RIR|Q\(15),
	datad => \dp|RIR|Q\(14),
	combout => \dp|outalu[10]~16_combout\);

-- Location: LCCOMB_X48_Y46_N20
\dp|outalu[10]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[10]~15_combout\ = (\dp|RIR|Q\(12) & (((\dp|RIR|Q\(15) & \dp|RIR|Q\(14))) # (!\dp|RIR|Q\(13)))) # (!\dp|RIR|Q\(12) & (\dp|RIR|Q\(14) $ (((!\dp|RIR|Q\(15) & !\dp|RIR|Q\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(12),
	datab => \dp|RIR|Q\(15),
	datac => \dp|RIR|Q\(13),
	datad => \dp|RIR|Q\(14),
	combout => \dp|outalu[10]~15_combout\);

-- Location: LCCOMB_X48_Y46_N18
\dp|outalu[10]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[10]~14_combout\ = (\dp|RIR|Q\(13) & (\dp|RIR|Q\(15) & ((!\dp|outalu[10]~13_combout\) # (!\dp|RIR|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(12),
	datab => \dp|outalu[10]~13_combout\,
	datac => \dp|RIR|Q\(13),
	datad => \dp|RIR|Q\(15),
	combout => \dp|outalu[10]~14_combout\);

-- Location: LCCOMB_X48_Y46_N30
\dp|outalu[10]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[10]~17_combout\ = (\dp|outalu[10]~16_combout\ & (((\dp|RIR|Q\(13))))) # (!\dp|outalu[10]~16_combout\ & ((\dp|outalu[10]~15_combout\) # ((\dp|outalu[10]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~16_combout\,
	datab => \dp|outalu[10]~15_combout\,
	datac => \dp|RIR|Q\(13),
	datad => \dp|outalu[10]~14_combout\,
	combout => \dp|outalu[10]~17_combout\);

-- Location: LCCOMB_X52_Y50_N12
\dp|REGS|destB[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|destB[1]~0_combout\ = (\ctrl|uins.ms2~0_combout\ & ((\dp|RIR|Q\(9)))) # (!\ctrl|uins.ms2~0_combout\ & (\dp|RIR|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(1),
	datac => \dp|RIR|Q\(9),
	datad => \ctrl|uins.ms2~0_combout\,
	combout => \dp|REGS|destB[1]~0_combout\);

-- Location: LCCOMB_X52_Y50_N2
\dp|REGS|destB[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|destB[0]~1_combout\ = (\ctrl|uins.ms2~0_combout\ & (\dp|RIR|Q\(8))) # (!\ctrl|uins.ms2~0_combout\ & ((\dp|RIR|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|RIR|Q\(8),
	datac => \dp|RIR|Q\(0),
	datad => \ctrl|uins.ms2~0_combout\,
	combout => \dp|REGS|destB[0]~1_combout\);

-- Location: LCCOMB_X50_Y51_N22
\dp|REGS|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux17~0_combout\ = (\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|destB[0]~1_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|r1:5:rx|Q\(14)))) # (!\dp|REGS|destB[0]~1_combout\ & 
-- (\dp|REGS|r1:4:rx|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|r1:4:rx|Q\(14),
	datac => \dp|REGS|r1:5:rx|Q\(14),
	datad => \dp|REGS|destB[0]~1_combout\,
	combout => \dp|REGS|Mux17~0_combout\);

-- Location: LCCOMB_X49_Y51_N28
\dp|REGS|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux17~1_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|Mux17~0_combout\ & ((\dp|REGS|r1:7:rx|Q\(14)))) # (!\dp|REGS|Mux17~0_combout\ & (\dp|REGS|r1:6:rx|Q\(14))))) # (!\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|r1:6:rx|Q\(14),
	datac => \dp|REGS|r1:7:rx|Q\(14),
	datad => \dp|REGS|Mux17~0_combout\,
	combout => \dp|REGS|Mux17~1_combout\);

-- Location: LCCOMB_X50_Y51_N20
\dp|REGS|Mux17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux17~7_combout\ = (\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|destB[0]~1_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|r1:13:rx|Q\(14)))) # (!\dp|REGS|destB[0]~1_combout\ & 
-- (\dp|REGS|r1:12:rx|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|r1:12:rx|Q\(14),
	datac => \dp|REGS|r1:13:rx|Q\(14),
	datad => \dp|REGS|destB[0]~1_combout\,
	combout => \dp|REGS|Mux17~7_combout\);

-- Location: LCCOMB_X50_Y51_N14
\dp|REGS|Mux17~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux17~8_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|Mux17~7_combout\ & ((\dp|REGS|r1:15:rx|Q\(14)))) # (!\dp|REGS|Mux17~7_combout\ & (\dp|REGS|r1:14:rx|Q\(14))))) # (!\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|Mux17~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:14:rx|Q\(14),
	datab => \dp|REGS|r1:15:rx|Q\(14),
	datac => \dp|REGS|destB[1]~0_combout\,
	datad => \dp|REGS|Mux17~7_combout\,
	combout => \dp|REGS|Mux17~8_combout\);

-- Location: LCCOMB_X50_Y50_N8
\dp|REGS|destB[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|destB[3]~2_combout\ = (\ctrl|uins.ms2~0_combout\ & (\dp|RIR|Q\(11))) # (!\ctrl|uins.ms2~0_combout\ & ((\dp|RIR|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|RIR|Q\(11),
	datac => \dp|RIR|Q\(3),
	datad => \ctrl|uins.ms2~0_combout\,
	combout => \dp|REGS|destB[3]~2_combout\);

-- Location: LCCOMB_X53_Y51_N16
\dp|REGS|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux17~4_combout\ = (\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|r1:2:rx|Q\(14)) # (\dp|REGS|destB[0]~1_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & (\dp|REGS|r1:0:rx|Q\(14) & ((!\dp|REGS|destB[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:0:rx|Q\(14),
	datab => \dp|REGS|destB[1]~0_combout\,
	datac => \dp|REGS|r1:2:rx|Q\(14),
	datad => \dp|REGS|destB[0]~1_combout\,
	combout => \dp|REGS|Mux17~4_combout\);

-- Location: LCCOMB_X50_Y51_N4
\dp|REGS|Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux17~5_combout\ = (\dp|REGS|Mux17~4_combout\ & (((\dp|REGS|r1:3:rx|Q\(14)) # (!\dp|REGS|destB[0]~1_combout\)))) # (!\dp|REGS|Mux17~4_combout\ & (\dp|REGS|r1:1:rx|Q\(14) & ((\dp|REGS|destB[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:1:rx|Q\(14),
	datab => \dp|REGS|r1:3:rx|Q\(14),
	datac => \dp|REGS|Mux17~4_combout\,
	datad => \dp|REGS|destB[0]~1_combout\,
	combout => \dp|REGS|Mux17~5_combout\);

-- Location: LCCOMB_X53_Y47_N28
\dp|REGS|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux17~2_combout\ = (\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|destB[1]~0_combout\)))) # (!\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|r1:10:rx|Q\(14)))) # (!\dp|REGS|destB[1]~0_combout\ & 
-- (\dp|REGS|r1:8:rx|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:8:rx|Q\(14),
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|r1:10:rx|Q\(14),
	datad => \dp|REGS|destB[1]~0_combout\,
	combout => \dp|REGS|Mux17~2_combout\);

-- Location: LCCOMB_X53_Y47_N18
\dp|REGS|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux17~3_combout\ = (\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|Mux17~2_combout\ & (\dp|REGS|r1:11:rx|Q\(14))) # (!\dp|REGS|Mux17~2_combout\ & ((\dp|REGS|r1:9:rx|Q\(14)))))) # (!\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:11:rx|Q\(14),
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|r1:9:rx|Q\(14),
	datad => \dp|REGS|Mux17~2_combout\,
	combout => \dp|REGS|Mux17~3_combout\);

-- Location: LCCOMB_X50_Y51_N18
\dp|REGS|Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux17~6_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|destB[2]~3_combout\) # ((\dp|REGS|Mux17~3_combout\)))) # (!\dp|REGS|destB[3]~2_combout\ & (!\dp|REGS|destB[2]~3_combout\ & (\dp|REGS|Mux17~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[3]~2_combout\,
	datab => \dp|REGS|destB[2]~3_combout\,
	datac => \dp|REGS|Mux17~5_combout\,
	datad => \dp|REGS|Mux17~3_combout\,
	combout => \dp|REGS|Mux17~6_combout\);

-- Location: LCCOMB_X49_Y51_N22
\dp|REGS|Mux17~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux17~9_combout\ = (\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|Mux17~6_combout\ & ((\dp|REGS|Mux17~8_combout\))) # (!\dp|REGS|Mux17~6_combout\ & (\dp|REGS|Mux17~1_combout\)))) # (!\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|Mux17~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|Mux17~1_combout\,
	datac => \dp|REGS|Mux17~8_combout\,
	datad => \dp|REGS|Mux17~6_combout\,
	combout => \dp|REGS|Mux17~9_combout\);

-- Location: FF_X49_Y51_N5
\dp|REG_B|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|REGS|Mux17~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_B|Q\(14));

-- Location: LCCOMB_X45_Y50_N0
\dp|RSP|Q[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RSP|Q[0]~16_combout\ = \dp|RSP|Q\(0) $ (VCC)
-- \dp|RSP|Q[0]~17\ = CARRY(\dp|RSP|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|RSP|Q\(0),
	datad => VCC,
	combout => \dp|RSP|Q[0]~16_combout\,
	cout => \dp|RSP|Q[0]~17\);

-- Location: LCCOMB_X49_Y46_N8
\ctrl|uins.msp\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|uins.msp~combout\ = (\dp|opB[0]~1_combout\ & ((!\ctrl|Equal14~0_combout\) # (!\ctrl|Equal31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~0_combout\,
	datac => \ctrl|Equal14~0_combout\,
	datad => \dp|opB[0]~1_combout\,
	combout => \ctrl|uins.msp~combout\);

-- Location: LCCOMB_X49_Y50_N30
\ctrl|PE.Sldsp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|PE.Sldsp~0_combout\ = (\ctrl|Equal31~0_combout\ & (\ctrl|Equal14~7_combout\ & \ctrl|EA.Salu~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|Equal31~0_combout\,
	datac => \ctrl|Equal14~7_combout\,
	datad => \ctrl|EA.Salu~q\,
	combout => \ctrl|PE.Sldsp~0_combout\);

-- Location: FF_X49_Y50_N31
\ctrl|EA.Sldsp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \ctrl|PE.Sldsp~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|EA.Sldsp~q\);

-- Location: LCCOMB_X49_Y46_N14
\ctrl|PE.Spush~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|PE.Spush~0_combout\ = (\ctrl|Equal31~0_combout\ & (\ctrl|Equal14~0_combout\ & \ctrl|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|Equal31~0_combout\,
	datac => \ctrl|Equal14~0_combout\,
	datad => \ctrl|Selector0~0_combout\,
	combout => \ctrl|PE.Spush~0_combout\);

-- Location: FF_X49_Y46_N15
\ctrl|EA.Spush\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \ctrl|PE.Spush~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|EA.Spush~q\);

-- Location: LCCOMB_X49_Y46_N4
\ctrl|PE.Sjmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|PE.Sjmp~0_combout\ = (!\ctrl|inst_la2~0_combout\ & (\ctrl|PE.Swbk~0_combout\ & !\ctrl|inst_la1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|inst_la2~0_combout\,
	datac => \ctrl|PE.Swbk~0_combout\,
	datad => \ctrl|inst_la1~combout\,
	combout => \ctrl|PE.Sjmp~0_combout\);

-- Location: LCCOMB_X49_Y46_N24
\ctrl|PE.Ssbrt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|PE.Ssbrt~0_combout\ = (!\ctrl|mb~0_combout\ & (!\dp|opB[0]~1_combout\ & (\ctrl|PE.Sjmp~0_combout\ & !\ctrl|i.jumpD~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|mb~0_combout\,
	datab => \dp|opB[0]~1_combout\,
	datac => \ctrl|PE.Sjmp~0_combout\,
	datad => \ctrl|i.jumpD~8_combout\,
	combout => \ctrl|PE.Ssbrt~0_combout\);

-- Location: FF_X49_Y46_N25
\ctrl|EA.Ssbrt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \ctrl|PE.Ssbrt~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|EA.Ssbrt~q\);

-- Location: LCCOMB_X46_Y50_N24
\ctrl|uins.mad[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|uins.mad[1]~0_combout\ = (!\ctrl|EA.Spush~q\ & !\ctrl|EA.Ssbrt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|EA.Spush~q\,
	datad => \ctrl|EA.Ssbrt~q\,
	combout => \ctrl|uins.mad[1]~0_combout\);

-- Location: LCCOMB_X49_Y50_N18
\ctrl|PE.Srts~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|PE.Srts~0_combout\ = (\ctrl|EA.Salu~q\ & (\ctrl|Equal14~4_combout\ & \ctrl|Equal31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Salu~q\,
	datab => \ctrl|Equal14~4_combout\,
	datac => \ctrl|Equal31~0_combout\,
	combout => \ctrl|PE.Srts~0_combout\);

-- Location: FF_X49_Y50_N19
\ctrl|EA.Srts\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \ctrl|PE.Srts~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|EA.Srts~q\);

-- Location: LCCOMB_X49_Y50_N16
\ctrl|uins.wsp\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|uins.wsp~combout\ = (\ctrl|EA.Sldsp~q\) # ((\ctrl|EA.Spop~q\) # ((\ctrl|EA.Srts~q\) # (!\ctrl|uins.mad[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Sldsp~q\,
	datab => \ctrl|EA.Spop~q\,
	datac => \ctrl|uins.mad[1]~0_combout\,
	datad => \ctrl|EA.Srts~q\,
	combout => \ctrl|uins.wsp~combout\);

-- Location: FF_X45_Y50_N1
\dp|RSP|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RSP|Q[0]~16_combout\,
	asdata => \dp|REG_alu|Q\(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|uins.msp~combout\,
	ena => \ctrl|uins.wsp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RSP|Q\(0));

-- Location: LCCOMB_X45_Y50_N2
\dp|RSP|Q[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RSP|Q[1]~18_combout\ = (\dp|RSP|Q\(1) & (\dp|RSP|Q[0]~17\ & VCC)) # (!\dp|RSP|Q\(1) & (!\dp|RSP|Q[0]~17\))
-- \dp|RSP|Q[1]~19\ = CARRY((!\dp|RSP|Q\(1) & !\dp|RSP|Q[0]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|RSP|Q\(1),
	datad => VCC,
	cin => \dp|RSP|Q[0]~17\,
	combout => \dp|RSP|Q[1]~18_combout\,
	cout => \dp|RSP|Q[1]~19\);

-- Location: LCCOMB_X47_Y51_N26
\dp|dtreg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtreg[1]~1_combout\ = (\ctrl|uins.mreg~combout\ & ((\dataIN[1]~input_o\))) # (!\ctrl|uins.mreg~combout\ & (\dp|REG_alu|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|REG_alu|Q\(1),
	datac => \dataIN[1]~input_o\,
	datad => \ctrl|uins.mreg~combout\,
	combout => \dp|dtreg[1]~1_combout\);

-- Location: LCCOMB_X52_Y49_N24
\dp|REGS|r1:5:rx|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:5:rx|Q[1]~feeder_combout\ = \dp|dtreg[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|dtreg[1]~1_combout\,
	combout => \dp|REGS|r1:5:rx|Q[1]~feeder_combout\);

-- Location: FF_X52_Y49_N25
\dp|REGS|r1:5:rx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:5:rx|Q[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:5:rx|Q\(1));

-- Location: FF_X52_Y49_N19
\dp|REGS|r1:7:rx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[1]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:7:rx|Q\(1));

-- Location: FF_X56_Y49_N9
\dp|REGS|r1:6:rx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[1]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:6:rx|Q\(1));

-- Location: FF_X54_Y49_N27
\dp|REGS|r1:4:rx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[1]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:4:rx|Q\(1));

-- Location: LCCOMB_X54_Y49_N26
\dp|REGS|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux14~2_combout\ = (\dp|RIR|Q\(4) & (((\dp|RIR|Q\(5))))) # (!\dp|RIR|Q\(4) & ((\dp|RIR|Q\(5) & (\dp|REGS|r1:6:rx|Q\(1))) # (!\dp|RIR|Q\(5) & ((\dp|REGS|r1:4:rx|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(4),
	datab => \dp|REGS|r1:6:rx|Q\(1),
	datac => \dp|REGS|r1:4:rx|Q\(1),
	datad => \dp|RIR|Q\(5),
	combout => \dp|REGS|Mux14~2_combout\);

-- Location: LCCOMB_X52_Y49_N18
\dp|REGS|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux14~3_combout\ = (\dp|RIR|Q\(4) & ((\dp|REGS|Mux14~2_combout\ & ((\dp|REGS|r1:7:rx|Q\(1)))) # (!\dp|REGS|Mux14~2_combout\ & (\dp|REGS|r1:5:rx|Q\(1))))) # (!\dp|RIR|Q\(4) & (((\dp|REGS|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(4),
	datab => \dp|REGS|r1:5:rx|Q\(1),
	datac => \dp|REGS|r1:7:rx|Q\(1),
	datad => \dp|REGS|Mux14~2_combout\,
	combout => \dp|REGS|Mux14~3_combout\);

-- Location: FF_X53_Y51_N5
\dp|REGS|r1:2:rx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[1]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:2:rx|Q\(1));

-- Location: FF_X57_Y49_N7
\dp|REGS|r1:3:rx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[1]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:3:rx|Q\(1));

-- Location: FF_X55_Y49_N9
\dp|REGS|r1:0:rx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[1]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:0:rx|Q\(1));

-- Location: FF_X50_Y49_N7
\dp|REGS|r1:1:rx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[1]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:1:rx|Q\(1));

-- Location: LCCOMB_X55_Y49_N8
\dp|REGS|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux14~4_combout\ = (\dp|RIR|Q\(5) & (\dp|RIR|Q\(4))) # (!\dp|RIR|Q\(5) & ((\dp|RIR|Q\(4) & ((\dp|REGS|r1:1:rx|Q\(1)))) # (!\dp|RIR|Q\(4) & (\dp|REGS|r1:0:rx|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:0:rx|Q\(1),
	datad => \dp|REGS|r1:1:rx|Q\(1),
	combout => \dp|REGS|Mux14~4_combout\);

-- Location: LCCOMB_X57_Y49_N6
\dp|REGS|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux14~5_combout\ = (\dp|RIR|Q\(5) & ((\dp|REGS|Mux14~4_combout\ & ((\dp|REGS|r1:3:rx|Q\(1)))) # (!\dp|REGS|Mux14~4_combout\ & (\dp|REGS|r1:2:rx|Q\(1))))) # (!\dp|RIR|Q\(5) & (((\dp|REGS|Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|REGS|r1:2:rx|Q\(1),
	datac => \dp|REGS|r1:3:rx|Q\(1),
	datad => \dp|REGS|Mux14~4_combout\,
	combout => \dp|REGS|Mux14~5_combout\);

-- Location: LCCOMB_X53_Y49_N14
\dp|REGS|Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux14~6_combout\ = (\dp|RIR|Q\(6) & ((\dp|REGS|Mux14~3_combout\) # ((\dp|RIR|Q\(7))))) # (!\dp|RIR|Q\(6) & (((!\dp|RIR|Q\(7) & \dp|REGS|Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|REGS|Mux14~3_combout\,
	datac => \dp|RIR|Q\(7),
	datad => \dp|REGS|Mux14~5_combout\,
	combout => \dp|REGS|Mux14~6_combout\);

-- Location: FF_X49_Y49_N15
\dp|REGS|r1:13:rx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[1]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:13:rx|Q\(1));

-- Location: LCCOMB_X46_Y49_N20
\dp|REGS|r1:15:rx|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:15:rx|Q[1]~feeder_combout\ = \dp|dtreg[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|dtreg[1]~1_combout\,
	combout => \dp|REGS|r1:15:rx|Q[1]~feeder_combout\);

-- Location: FF_X46_Y49_N21
\dp|REGS|r1:15:rx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:15:rx|Q[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:15:rx|Q\(1));

-- Location: FF_X55_Y49_N15
\dp|REGS|r1:12:rx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[1]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:12:rx|Q\(1));

-- Location: LCCOMB_X57_Y49_N24
\dp|REGS|r1:14:rx|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:14:rx|Q[1]~feeder_combout\ = \dp|dtreg[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|dtreg[1]~1_combout\,
	combout => \dp|REGS|r1:14:rx|Q[1]~feeder_combout\);

-- Location: FF_X57_Y49_N25
\dp|REGS|r1:14:rx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:14:rx|Q[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:14:rx|Q\(1));

-- Location: LCCOMB_X55_Y49_N14
\dp|REGS|Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux14~7_combout\ = (\dp|RIR|Q\(5) & ((\dp|RIR|Q\(4)) # ((\dp|REGS|r1:14:rx|Q\(1))))) # (!\dp|RIR|Q\(5) & (!\dp|RIR|Q\(4) & (\dp|REGS|r1:12:rx|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:12:rx|Q\(1),
	datad => \dp|REGS|r1:14:rx|Q\(1),
	combout => \dp|REGS|Mux14~7_combout\);

-- Location: LCCOMB_X54_Y49_N14
\dp|REGS|Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux14~8_combout\ = (\dp|REGS|Mux14~7_combout\ & (((\dp|REGS|r1:15:rx|Q\(1)) # (!\dp|RIR|Q\(4))))) # (!\dp|REGS|Mux14~7_combout\ & (\dp|REGS|r1:13:rx|Q\(1) & ((\dp|RIR|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:13:rx|Q\(1),
	datab => \dp|REGS|r1:15:rx|Q\(1),
	datac => \dp|REGS|Mux14~7_combout\,
	datad => \dp|RIR|Q\(4),
	combout => \dp|REGS|Mux14~8_combout\);

-- Location: FF_X54_Y49_N21
\dp|REGS|r1:8:rx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[1]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:8:rx|Q\(1));

-- Location: FF_X49_Y49_N21
\dp|REGS|r1:9:rx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[1]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:9:rx|Q\(1));

-- Location: LCCOMB_X49_Y49_N20
\dp|REGS|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux14~0_combout\ = (\dp|RIR|Q\(5) & (((\dp|RIR|Q\(4))))) # (!\dp|RIR|Q\(5) & ((\dp|RIR|Q\(4) & ((\dp|REGS|r1:9:rx|Q\(1)))) # (!\dp|RIR|Q\(4) & (\dp|REGS|r1:8:rx|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:8:rx|Q\(1),
	datab => \dp|RIR|Q\(5),
	datac => \dp|REGS|r1:9:rx|Q\(1),
	datad => \dp|RIR|Q\(4),
	combout => \dp|REGS|Mux14~0_combout\);

-- Location: FF_X54_Y51_N29
\dp|REGS|r1:10:rx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[1]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:10:rx|Q\(1));

-- Location: LCCOMB_X54_Y51_N22
\dp|REGS|r1:11:rx|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:11:rx|Q[1]~feeder_combout\ = \dp|dtreg[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|dtreg[1]~1_combout\,
	combout => \dp|REGS|r1:11:rx|Q[1]~feeder_combout\);

-- Location: FF_X54_Y51_N23
\dp|REGS|r1:11:rx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:11:rx|Q[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:11:rx|Q\(1));

-- Location: LCCOMB_X54_Y51_N28
\dp|REGS|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux14~1_combout\ = (\dp|REGS|Mux14~0_combout\ & (((\dp|REGS|r1:11:rx|Q\(1))) # (!\dp|RIR|Q\(5)))) # (!\dp|REGS|Mux14~0_combout\ & (\dp|RIR|Q\(5) & (\dp|REGS|r1:10:rx|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux14~0_combout\,
	datab => \dp|RIR|Q\(5),
	datac => \dp|REGS|r1:10:rx|Q\(1),
	datad => \dp|REGS|r1:11:rx|Q\(1),
	combout => \dp|REGS|Mux14~1_combout\);

-- Location: LCCOMB_X48_Y49_N14
\dp|REGS|Mux14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux14~9_combout\ = (\dp|RIR|Q\(7) & ((\dp|REGS|Mux14~6_combout\ & (\dp|REGS|Mux14~8_combout\)) # (!\dp|REGS|Mux14~6_combout\ & ((\dp|REGS|Mux14~1_combout\))))) # (!\dp|RIR|Q\(7) & (\dp|REGS|Mux14~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(7),
	datab => \dp|REGS|Mux14~6_combout\,
	datac => \dp|REGS|Mux14~8_combout\,
	datad => \dp|REGS|Mux14~1_combout\,
	combout => \dp|REGS|Mux14~9_combout\);

-- Location: FF_X48_Y49_N15
\dp|REG_A|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|Mux14~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_A|Q\(1));

-- Location: LCCOMB_X48_Y46_N0
\dp|outalu[10]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[10]~30_combout\ = (\dp|outalu~4_combout\ & ((\dp|outalu[10]~15_combout\) # (\dp|outalu[10]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu~4_combout\,
	datab => \dp|outalu[10]~15_combout\,
	datad => \dp|outalu[10]~14_combout\,
	combout => \dp|outalu[10]~30_combout\);

-- Location: LCCOMB_X46_Y51_N0
\dp|RPC|Q[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RPC|Q[0]~16_combout\ = \dp|RPC|Q\(0) $ (VCC)
-- \dp|RPC|Q[0]~17\ = CARRY(\dp|RPC|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|RPC|Q\(0),
	datad => VCC,
	combout => \dp|RPC|Q[0]~16_combout\,
	cout => \dp|RPC|Q[0]~17\);

-- Location: LCCOMB_X47_Y51_N20
\dp|dtpc[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtpc[0]~0_combout\ = (\ctrl|EA.Srts~q\ & ((\ctrl|EA.Sfetch~q\ & ((\dp|REG_alu|Q\(0)))) # (!\ctrl|EA.Sfetch~q\ & (\dataIN[0]~input_o\)))) # (!\ctrl|EA.Srts~q\ & (((\dp|REG_alu|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIN[0]~input_o\,
	datab => \ctrl|EA.Srts~q\,
	datac => \dp|REG_alu|Q\(0),
	datad => \ctrl|EA.Sfetch~q\,
	combout => \dp|dtpc[0]~0_combout\);

-- Location: LCCOMB_X49_Y46_N30
\ctrl|PE.Sjmp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|PE.Sjmp~1_combout\ = (\ctrl|PE.Sjmp~0_combout\ & ((\ctrl|mb~0_combout\) # (\ctrl|i.jumpD~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|PE.Sjmp~0_combout\,
	datac => \ctrl|mb~0_combout\,
	datad => \ctrl|i.jumpD~8_combout\,
	combout => \ctrl|PE.Sjmp~1_combout\);

-- Location: FF_X49_Y46_N31
\ctrl|EA.Sjmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \ctrl|PE.Sjmp~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|EA.Sjmp~q\);

-- Location: LCCOMB_X46_Y50_N0
\ctrl|uins.wpc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|uins.wpc~0_combout\ = (\ctrl|EA.Sfetch~q\) # ((\ctrl|EA.Ssbrt~q\) # ((\ctrl|EA.Srts~q\) # (\ctrl|EA.Sjmp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Sfetch~q\,
	datab => \ctrl|EA.Ssbrt~q\,
	datac => \ctrl|EA.Srts~q\,
	datad => \ctrl|EA.Sjmp~q\,
	combout => \ctrl|uins.wpc~0_combout\);

-- Location: FF_X46_Y51_N1
\dp|RPC|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RPC|Q[0]~16_combout\,
	asdata => \dp|dtpc[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|ALT_INV_EA.Sfetch~q\,
	ena => \ctrl|uins.wpc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RPC|Q\(0));

-- Location: LCCOMB_X46_Y51_N2
\dp|RPC|Q[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RPC|Q[1]~18_combout\ = (\dp|RPC|Q\(1) & (!\dp|RPC|Q[0]~17\)) # (!\dp|RPC|Q\(1) & ((\dp|RPC|Q[0]~17\) # (GND)))
-- \dp|RPC|Q[1]~19\ = CARRY((!\dp|RPC|Q[0]~17\) # (!\dp|RPC|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|RPC|Q\(1),
	datad => VCC,
	cin => \dp|RPC|Q[0]~17\,
	combout => \dp|RPC|Q[1]~18_combout\,
	cout => \dp|RPC|Q[1]~19\);

-- Location: LCCOMB_X47_Y51_N8
\dp|dtpc[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtpc[1]~1_combout\ = (\ctrl|EA.Sfetch~q\ & (((\dp|REG_alu|Q\(1))))) # (!\ctrl|EA.Sfetch~q\ & ((\ctrl|EA.Srts~q\ & (\dataIN[1]~input_o\)) # (!\ctrl|EA.Srts~q\ & ((\dp|REG_alu|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Sfetch~q\,
	datab => \dataIN[1]~input_o\,
	datac => \ctrl|EA.Srts~q\,
	datad => \dp|REG_alu|Q\(1),
	combout => \dp|dtpc[1]~1_combout\);

-- Location: FF_X46_Y51_N3
\dp|RPC|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RPC|Q[1]~18_combout\,
	asdata => \dp|dtpc[1]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|ALT_INV_EA.Sfetch~q\,
	ena => \ctrl|uins.wpc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RPC|Q\(1));

-- Location: LCCOMB_X47_Y51_N6
\dp|opB[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[1]~4_combout\ = (\ctrl|uins.mb[0]~0_combout\ & ((\dp|RSP|Q\(1)))) # (!\ctrl|uins.mb[0]~0_combout\ & (\dp|RPC|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RPC|Q\(1),
	datac => \dp|RSP|Q\(1),
	datad => \ctrl|uins.mb[0]~0_combout\,
	combout => \dp|opB[1]~4_combout\);

-- Location: LCCOMB_X53_Y51_N4
\dp|REGS|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux30~0_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|r1:10:rx|Q\(1)) # ((\dp|REGS|destB[2]~3_combout\)))) # (!\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|r1:2:rx|Q\(1) & !\dp|REGS|destB[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:10:rx|Q\(1),
	datab => \dp|REGS|destB[3]~2_combout\,
	datac => \dp|REGS|r1:2:rx|Q\(1),
	datad => \dp|REGS|destB[2]~3_combout\,
	combout => \dp|REGS|Mux30~0_combout\);

-- Location: LCCOMB_X56_Y49_N8
\dp|REGS|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux30~1_combout\ = (\dp|REGS|Mux30~0_combout\ & ((\dp|REGS|r1:14:rx|Q\(1)) # ((!\dp|REGS|destB[2]~3_combout\)))) # (!\dp|REGS|Mux30~0_combout\ & (((\dp|REGS|r1:6:rx|Q\(1) & \dp|REGS|destB[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux30~0_combout\,
	datab => \dp|REGS|r1:14:rx|Q\(1),
	datac => \dp|REGS|r1:6:rx|Q\(1),
	datad => \dp|REGS|destB[2]~3_combout\,
	combout => \dp|REGS|Mux30~1_combout\);

-- Location: LCCOMB_X56_Y49_N16
\dp|REGS|Mux30~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux30~7_combout\ = (\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|destB[2]~3_combout\)))) # (!\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|r1:7:rx|Q\(1)))) # (!\dp|REGS|destB[2]~3_combout\ & (\dp|REGS|r1:3:rx|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[3]~2_combout\,
	datab => \dp|REGS|r1:3:rx|Q\(1),
	datac => \dp|REGS|r1:7:rx|Q\(1),
	datad => \dp|REGS|destB[2]~3_combout\,
	combout => \dp|REGS|Mux30~7_combout\);

-- Location: LCCOMB_X56_Y49_N26
\dp|REGS|Mux30~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux30~8_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|Mux30~7_combout\ & (\dp|REGS|r1:15:rx|Q\(1))) # (!\dp|REGS|Mux30~7_combout\ & ((\dp|REGS|r1:11:rx|Q\(1)))))) # (!\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|Mux30~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:15:rx|Q\(1),
	datab => \dp|REGS|r1:11:rx|Q\(1),
	datac => \dp|REGS|destB[3]~2_combout\,
	datad => \dp|REGS|Mux30~7_combout\,
	combout => \dp|REGS|Mux30~8_combout\);

-- Location: LCCOMB_X54_Y49_N20
\dp|REGS|Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux30~4_combout\ = (\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|destB[3]~2_combout\)))) # (!\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|r1:8:rx|Q\(1)))) # (!\dp|REGS|destB[3]~2_combout\ & (\dp|REGS|r1:0:rx|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|r1:0:rx|Q\(1),
	datac => \dp|REGS|r1:8:rx|Q\(1),
	datad => \dp|REGS|destB[3]~2_combout\,
	combout => \dp|REGS|Mux30~4_combout\);

-- Location: LCCOMB_X55_Y49_N16
\dp|REGS|Mux30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux30~5_combout\ = (\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|Mux30~4_combout\ & ((\dp|REGS|r1:12:rx|Q\(1)))) # (!\dp|REGS|Mux30~4_combout\ & (\dp|REGS|r1:4:rx|Q\(1))))) # (!\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|Mux30~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:4:rx|Q\(1),
	datab => \dp|REGS|r1:12:rx|Q\(1),
	datac => \dp|REGS|destB[2]~3_combout\,
	datad => \dp|REGS|Mux30~4_combout\,
	combout => \dp|REGS|Mux30~5_combout\);

-- Location: LCCOMB_X50_Y49_N6
\dp|REGS|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux30~2_combout\ = (\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|r1:5:rx|Q\(1)) # ((\dp|REGS|destB[3]~2_combout\)))) # (!\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|r1:1:rx|Q\(1) & !\dp|REGS|destB[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|r1:5:rx|Q\(1),
	datac => \dp|REGS|r1:1:rx|Q\(1),
	datad => \dp|REGS|destB[3]~2_combout\,
	combout => \dp|REGS|Mux30~2_combout\);

-- Location: LCCOMB_X49_Y49_N14
\dp|REGS|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux30~3_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|Mux30~2_combout\ & ((\dp|REGS|r1:13:rx|Q\(1)))) # (!\dp|REGS|Mux30~2_combout\ & (\dp|REGS|r1:9:rx|Q\(1))))) # (!\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[3]~2_combout\,
	datab => \dp|REGS|r1:9:rx|Q\(1),
	datac => \dp|REGS|r1:13:rx|Q\(1),
	datad => \dp|REGS|Mux30~2_combout\,
	combout => \dp|REGS|Mux30~3_combout\);

-- Location: LCCOMB_X56_Y49_N18
\dp|REGS|Mux30~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux30~6_combout\ = (\dp|REGS|destB[1]~0_combout\ & (\dp|REGS|destB[0]~1_combout\)) # (!\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|Mux30~3_combout\))) # (!\dp|REGS|destB[0]~1_combout\ & 
-- (\dp|REGS|Mux30~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|Mux30~5_combout\,
	datad => \dp|REGS|Mux30~3_combout\,
	combout => \dp|REGS|Mux30~6_combout\);

-- Location: LCCOMB_X56_Y49_N28
\dp|REGS|Mux30~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux30~9_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|Mux30~6_combout\ & ((\dp|REGS|Mux30~8_combout\))) # (!\dp|REGS|Mux30~6_combout\ & (\dp|REGS|Mux30~1_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|Mux30~1_combout\,
	datac => \dp|REGS|Mux30~8_combout\,
	datad => \dp|REGS|Mux30~6_combout\,
	combout => \dp|REGS|Mux30~9_combout\);

-- Location: LCCOMB_X56_Y49_N22
\dp|REG_B|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REG_B|Q[1]~feeder_combout\ = \dp|REGS|Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|REGS|Mux30~9_combout\,
	combout => \dp|REG_B|Q[1]~feeder_combout\);

-- Location: FF_X56_Y49_N23
\dp|REG_B|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REG_B|Q[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_B|Q\(1));

-- Location: LCCOMB_X48_Y48_N12
\dp|opB[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[1]~6_combout\ = (\dp|opB[0]~5_combout\ & (\dp|opB[1]~4_combout\)) # (!\dp|opB[0]~5_combout\ & ((\dp|REG_B|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[1]~4_combout\,
	datab => \dp|REG_B|Q\(1),
	datac => \dp|opB[0]~5_combout\,
	combout => \dp|opB[1]~6_combout\);

-- Location: LCCOMB_X48_Y47_N14
\dp|addB[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|addB[1]~6_combout\ = \ctrl|Equal31~4_combout\ $ (((\dp|opB[0]~5_combout\ & ((\dp|opB[1]~4_combout\))) # (!\dp|opB[0]~5_combout\ & (\dp|REG_B|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~4_combout\,
	datab => \dp|REG_B|Q\(1),
	datac => \dp|opB[0]~5_combout\,
	datad => \dp|opB[1]~4_combout\,
	combout => \dp|addB[1]~6_combout\);

-- Location: LCCOMB_X48_Y46_N2
\ctrl|Equal31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Equal31~5_combout\ = (!\dp|RIR|Q\(15) & (!\dp|RIR|Q\(12) & (\dp|RIR|Q\(13) & \dp|RIR|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(15),
	datab => \dp|RIR|Q\(12),
	datac => \dp|RIR|Q\(13),
	datad => \dp|RIR|Q\(14),
	combout => \ctrl|Equal31~5_combout\);

-- Location: FF_X52_Y50_N1
\dp|REGS|r1:4:rx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:4:rx|Q\(0));

-- Location: FF_X55_Y49_N19
\dp|REGS|r1:12:rx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:12:rx|Q\(0));

-- Location: FF_X54_Y49_N13
\dp|REGS|r1:8:rx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:8:rx|Q\(0));

-- Location: FF_X55_Y49_N21
\dp|REGS|r1:0:rx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:0:rx|Q\(0));

-- Location: LCCOMB_X55_Y49_N20
\dp|REGS|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux15~4_combout\ = (\dp|RIR|Q\(6) & (((\dp|RIR|Q\(7))))) # (!\dp|RIR|Q\(6) & ((\dp|RIR|Q\(7) & (\dp|REGS|r1:8:rx|Q\(0))) # (!\dp|RIR|Q\(7) & ((\dp|REGS|r1:0:rx|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:8:rx|Q\(0),
	datab => \dp|RIR|Q\(6),
	datac => \dp|REGS|r1:0:rx|Q\(0),
	datad => \dp|RIR|Q\(7),
	combout => \dp|REGS|Mux15~4_combout\);

-- Location: LCCOMB_X55_Y49_N18
\dp|REGS|Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux15~5_combout\ = (\dp|RIR|Q\(6) & ((\dp|REGS|Mux15~4_combout\ & ((\dp|REGS|r1:12:rx|Q\(0)))) # (!\dp|REGS|Mux15~4_combout\ & (\dp|REGS|r1:4:rx|Q\(0))))) # (!\dp|RIR|Q\(6) & (((\dp|REGS|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:4:rx|Q\(0),
	datab => \dp|RIR|Q\(6),
	datac => \dp|REGS|r1:12:rx|Q\(0),
	datad => \dp|REGS|Mux15~4_combout\,
	combout => \dp|REGS|Mux15~5_combout\);

-- Location: FF_X50_Y49_N21
\dp|REGS|r1:1:rx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:1:rx|Q\(0));

-- Location: LCCOMB_X52_Y49_N16
\dp|REGS|r1:5:rx|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:5:rx|Q[0]~feeder_combout\ = \dp|dtreg[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|dtreg[0]~0_combout\,
	combout => \dp|REGS|r1:5:rx|Q[0]~feeder_combout\);

-- Location: FF_X52_Y49_N17
\dp|REGS|r1:5:rx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:5:rx|Q[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:5:rx|Q\(0));

-- Location: LCCOMB_X50_Y49_N20
\dp|REGS|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux15~2_combout\ = (\dp|RIR|Q\(7) & (\dp|RIR|Q\(6))) # (!\dp|RIR|Q\(7) & ((\dp|RIR|Q\(6) & ((\dp|REGS|r1:5:rx|Q\(0)))) # (!\dp|RIR|Q\(6) & (\dp|REGS|r1:1:rx|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(7),
	datab => \dp|RIR|Q\(6),
	datac => \dp|REGS|r1:1:rx|Q\(0),
	datad => \dp|REGS|r1:5:rx|Q\(0),
	combout => \dp|REGS|Mux15~2_combout\);

-- Location: FF_X49_Y49_N25
\dp|REGS|r1:9:rx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:9:rx|Q\(0));

-- Location: FF_X49_Y49_N19
\dp|REGS|r1:13:rx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:13:rx|Q\(0));

-- Location: LCCOMB_X49_Y49_N18
\dp|REGS|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux15~3_combout\ = (\dp|REGS|Mux15~2_combout\ & (((\dp|REGS|r1:13:rx|Q\(0)) # (!\dp|RIR|Q\(7))))) # (!\dp|REGS|Mux15~2_combout\ & (\dp|REGS|r1:9:rx|Q\(0) & ((\dp|RIR|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux15~2_combout\,
	datab => \dp|REGS|r1:9:rx|Q\(0),
	datac => \dp|REGS|r1:13:rx|Q\(0),
	datad => \dp|RIR|Q\(7),
	combout => \dp|REGS|Mux15~3_combout\);

-- Location: LCCOMB_X54_Y49_N8
\dp|REGS|Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux15~6_combout\ = (\dp|RIR|Q\(4) & (((\dp|REGS|Mux15~3_combout\) # (\dp|RIR|Q\(5))))) # (!\dp|RIR|Q\(4) & (\dp|REGS|Mux15~5_combout\ & ((!\dp|RIR|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(4),
	datab => \dp|REGS|Mux15~5_combout\,
	datac => \dp|REGS|Mux15~3_combout\,
	datad => \dp|RIR|Q\(5),
	combout => \dp|REGS|Mux15~6_combout\);

-- Location: FF_X54_Y51_N15
\dp|REGS|r1:11:rx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:11:rx|Q\(0));

-- Location: FF_X52_Y48_N31
\dp|REGS|r1:3:rx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:3:rx|Q\(0));

-- Location: LCCOMB_X52_Y49_N30
\dp|REGS|r1:7:rx|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:7:rx|Q[0]~feeder_combout\ = \dp|dtreg[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|dtreg[0]~0_combout\,
	combout => \dp|REGS|r1:7:rx|Q[0]~feeder_combout\);

-- Location: FF_X52_Y49_N31
\dp|REGS|r1:7:rx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:7:rx|Q[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:7:rx|Q\(0));

-- Location: LCCOMB_X52_Y48_N30
\dp|REGS|Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux15~7_combout\ = (\dp|RIR|Q\(7) & (\dp|RIR|Q\(6))) # (!\dp|RIR|Q\(7) & ((\dp|RIR|Q\(6) & ((\dp|REGS|r1:7:rx|Q\(0)))) # (!\dp|RIR|Q\(6) & (\dp|REGS|r1:3:rx|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(7),
	datab => \dp|RIR|Q\(6),
	datac => \dp|REGS|r1:3:rx|Q\(0),
	datad => \dp|REGS|r1:7:rx|Q\(0),
	combout => \dp|REGS|Mux15~7_combout\);

-- Location: LCCOMB_X54_Y51_N14
\dp|REGS|Mux15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux15~8_combout\ = (\dp|RIR|Q\(7) & ((\dp|REGS|Mux15~7_combout\ & (\dp|REGS|r1:15:rx|Q\(0))) # (!\dp|REGS|Mux15~7_combout\ & ((\dp|REGS|r1:11:rx|Q\(0)))))) # (!\dp|RIR|Q\(7) & (((\dp|REGS|Mux15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:15:rx|Q\(0),
	datab => \dp|RIR|Q\(7),
	datac => \dp|REGS|r1:11:rx|Q\(0),
	datad => \dp|REGS|Mux15~7_combout\,
	combout => \dp|REGS|Mux15~8_combout\);

-- Location: LCCOMB_X54_Y48_N8
\dp|REGS|r1:14:rx|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:14:rx|Q[0]~feeder_combout\ = \dp|dtreg[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|dtreg[0]~0_combout\,
	combout => \dp|REGS|r1:14:rx|Q[0]~feeder_combout\);

-- Location: FF_X54_Y48_N9
\dp|REGS|r1:14:rx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:14:rx|Q[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:14:rx|Q\(0));

-- Location: FF_X55_Y48_N25
\dp|REGS|r1:6:rx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:6:rx|Q\(0));

-- Location: FF_X54_Y51_N1
\dp|REGS|r1:10:rx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:10:rx|Q\(0));

-- Location: FF_X52_Y48_N7
\dp|REGS|r1:2:rx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:2:rx|Q\(0));

-- Location: LCCOMB_X52_Y48_N6
\dp|REGS|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux15~0_combout\ = (\dp|RIR|Q\(7) & ((\dp|REGS|r1:10:rx|Q\(0)) # ((\dp|RIR|Q\(6))))) # (!\dp|RIR|Q\(7) & (((\dp|REGS|r1:2:rx|Q\(0) & !\dp|RIR|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(7),
	datab => \dp|REGS|r1:10:rx|Q\(0),
	datac => \dp|REGS|r1:2:rx|Q\(0),
	datad => \dp|RIR|Q\(6),
	combout => \dp|REGS|Mux15~0_combout\);

-- Location: LCCOMB_X55_Y48_N24
\dp|REGS|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux15~1_combout\ = (\dp|RIR|Q\(6) & ((\dp|REGS|Mux15~0_combout\ & (\dp|REGS|r1:14:rx|Q\(0))) # (!\dp|REGS|Mux15~0_combout\ & ((\dp|REGS|r1:6:rx|Q\(0)))))) # (!\dp|RIR|Q\(6) & (((\dp|REGS|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:14:rx|Q\(0),
	datab => \dp|RIR|Q\(6),
	datac => \dp|REGS|r1:6:rx|Q\(0),
	datad => \dp|REGS|Mux15~0_combout\,
	combout => \dp|REGS|Mux15~1_combout\);

-- Location: LCCOMB_X54_Y47_N24
\dp|REGS|Mux15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux15~9_combout\ = (\dp|RIR|Q\(5) & ((\dp|REGS|Mux15~6_combout\ & (\dp|REGS|Mux15~8_combout\)) # (!\dp|REGS|Mux15~6_combout\ & ((\dp|REGS|Mux15~1_combout\))))) # (!\dp|RIR|Q\(5) & (\dp|REGS|Mux15~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|REGS|Mux15~6_combout\,
	datac => \dp|REGS|Mux15~8_combout\,
	datad => \dp|REGS|Mux15~1_combout\,
	combout => \dp|REGS|Mux15~9_combout\);

-- Location: FF_X50_Y47_N7
\dp|REG_A|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|REGS|Mux15~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_A|Q\(0));

-- Location: LCCOMB_X48_Y47_N4
\dp|opA[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opA[0]~7_combout\ = (\ctrl|uins.ma~0_combout\ & (\dp|RIR|Q\(0))) # (!\ctrl|uins.ma~0_combout\ & ((\ctrl|i.jumpD~8_combout\ & (\dp|RIR|Q\(0))) # (!\ctrl|i.jumpD~8_combout\ & ((\dp|REG_A|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(0),
	datab => \ctrl|uins.ma~0_combout\,
	datac => \dp|REG_A|Q\(0),
	datad => \ctrl|i.jumpD~8_combout\,
	combout => \dp|opA[0]~7_combout\);

-- Location: LCCOMB_X48_Y47_N24
\dp|opB[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[0]~0_combout\ = (\ctrl|uins.mb[0]~0_combout\ & ((\dp|RSP|Q\(0)))) # (!\ctrl|uins.mb[0]~0_combout\ & (\dp|RPC|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RPC|Q\(0),
	datab => \dp|RSP|Q\(0),
	datad => \ctrl|uins.mb[0]~0_combout\,
	combout => \dp|opB[0]~0_combout\);

-- Location: LCCOMB_X49_Y51_N0
\dp|REG_B|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REG_B|Q[0]~feeder_combout\ = \dp|REGS|Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|REGS|Mux31~9_combout\,
	combout => \dp|REG_B|Q[0]~feeder_combout\);

-- Location: FF_X49_Y51_N1
\dp|REG_B|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REG_B|Q[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_B|Q\(0));

-- Location: LCCOMB_X48_Y47_N26
\dp|opB[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[0]~2_combout\ = (\dp|opB[0]~1_combout\ & ((\ctrl|uins.mb[0]~0_combout\ & ((\dp|opB[0]~0_combout\))) # (!\ctrl|uins.mb[0]~0_combout\ & (\dp|REG_B|Q\(0))))) # (!\dp|opB[0]~1_combout\ & (((\dp|opB[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[0]~1_combout\,
	datab => \ctrl|uins.mb[0]~0_combout\,
	datac => \dp|REG_B|Q\(0),
	datad => \dp|opB[0]~0_combout\,
	combout => \dp|opB[0]~2_combout\);

-- Location: LCCOMB_X48_Y47_N0
\dp|opB[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[0]~3_combout\ = (\ctrl|mb~0_combout\ & (\dp|opB[0]~0_combout\)) # (!\ctrl|mb~0_combout\ & ((\ctrl|i.jumpD~8_combout\ & (\dp|opB[0]~0_combout\)) # (!\ctrl|i.jumpD~8_combout\ & ((\dp|opB[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[0]~0_combout\,
	datab => \ctrl|mb~0_combout\,
	datac => \dp|opB[0]~2_combout\,
	datad => \ctrl|i.jumpD~8_combout\,
	combout => \dp|opB[0]~3_combout\);

-- Location: LCCOMB_X48_Y47_N18
\dp|carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|carry~0_combout\ = (\ctrl|Equal31~4_combout\ & ((\ctrl|Equal31~5_combout\ $ (\dp|opA[0]~7_combout\)) # (!\dp|opB[0]~3_combout\))) # (!\ctrl|Equal31~4_combout\ & ((\dp|opA[0]~7_combout\ & ((\dp|opB[0]~3_combout\))) # (!\dp|opA[0]~7_combout\ & 
-- (\ctrl|Equal31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~4_combout\,
	datab => \ctrl|Equal31~5_combout\,
	datac => \dp|opA[0]~7_combout\,
	datad => \dp|opB[0]~3_combout\,
	combout => \dp|carry~0_combout\);

-- Location: LCCOMB_X48_Y47_N8
\dp|opA[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opA[1]~6_combout\ = (\ctrl|uins.ma~0_combout\ & (\dp|RIR|Q\(1))) # (!\ctrl|uins.ma~0_combout\ & ((\ctrl|i.jumpD~8_combout\ & (\dp|RIR|Q\(1))) # (!\ctrl|i.jumpD~8_combout\ & ((\dp|REG_A|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|uins.ma~0_combout\,
	datab => \dp|RIR|Q\(1),
	datac => \dp|REG_A|Q\(1),
	datad => \ctrl|i.jumpD~8_combout\,
	combout => \dp|opA[1]~6_combout\);

-- Location: LCCOMB_X48_Y46_N26
\dp|add[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|add\(1) = \dp|addB[1]~6_combout\ $ (\dp|carry~0_combout\ $ (\ctrl|Equal31~5_combout\ $ (\dp|opA[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|addB[1]~6_combout\,
	datab => \dp|carry~0_combout\,
	datac => \ctrl|Equal31~5_combout\,
	datad => \dp|opA[1]~6_combout\,
	combout => \dp|add\(1));

-- Location: LCCOMB_X45_Y46_N24
\dp|outalu[10]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[10]~23_combout\ = (\dp|RIR|Q\(15)) # (!\dp|RIR|Q\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(13),
	datac => \dp|RIR|Q\(15),
	combout => \dp|outalu[10]~23_combout\);

-- Location: LCCOMB_X45_Y46_N26
\dp|outalu[10]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[10]~24_combout\ = (\dp|RIR|Q\(13) & ((\dp|RIR|Q\(15)) # (\dp|RIR|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(13),
	datac => \dp|RIR|Q\(15),
	datad => \dp|RIR|Q\(12),
	combout => \dp|outalu[10]~24_combout\);

-- Location: LCCOMB_X48_Y46_N8
\dp|outalu[1]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[1]~129_combout\ = (\dp|outalu[10]~23_combout\ & (((\dp|outalu[10]~24_combout\)))) # (!\dp|outalu[10]~23_combout\ & ((\dp|opA[1]~6_combout\ & ((\dp|outalu[10]~24_combout\) # (\dp|opB[1]~6_combout\))) # (!\dp|opA[1]~6_combout\ & 
-- (\dp|outalu[10]~24_combout\ & \dp|opB[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~23_combout\,
	datab => \dp|opA[1]~6_combout\,
	datac => \dp|outalu[10]~24_combout\,
	datad => \dp|opB[1]~6_combout\,
	combout => \dp|outalu[1]~129_combout\);

-- Location: FF_X54_Y48_N19
\dp|REGS|r1:14:rx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[2]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:14:rx|Q\(2));

-- Location: FF_X53_Y49_N21
\dp|REGS|r1:12:rx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[2]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:12:rx|Q\(2));

-- Location: LCCOMB_X49_Y49_N26
\dp|REGS|Mux29~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux29~7_combout\ = (\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|destB[0]~1_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|r1:13:rx|Q\(2)))) # (!\dp|REGS|destB[0]~1_combout\ & 
-- (\dp|REGS|r1:12:rx|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|r1:12:rx|Q\(2),
	datac => \dp|REGS|r1:13:rx|Q\(2),
	datad => \dp|REGS|destB[0]~1_combout\,
	combout => \dp|REGS|Mux29~7_combout\);

-- Location: LCCOMB_X46_Y49_N6
\dp|REGS|r1:15:rx|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:15:rx|Q[2]~feeder_combout\ = \dp|dtreg[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|dtreg[2]~2_combout\,
	combout => \dp|REGS|r1:15:rx|Q[2]~feeder_combout\);

-- Location: FF_X46_Y49_N7
\dp|REGS|r1:15:rx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:15:rx|Q[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:15:rx|Q\(2));

-- Location: LCCOMB_X48_Y49_N0
\dp|REGS|Mux29~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux29~8_combout\ = (\dp|REGS|Mux29~7_combout\ & (((\dp|REGS|r1:15:rx|Q\(2)) # (!\dp|REGS|destB[1]~0_combout\)))) # (!\dp|REGS|Mux29~7_combout\ & (\dp|REGS|r1:14:rx|Q\(2) & (\dp|REGS|destB[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:14:rx|Q\(2),
	datab => \dp|REGS|Mux29~7_combout\,
	datac => \dp|REGS|destB[1]~0_combout\,
	datad => \dp|REGS|r1:15:rx|Q\(2),
	combout => \dp|REGS|Mux29~8_combout\);

-- Location: FF_X52_Y49_N29
\dp|REGS|r1:7:rx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[2]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:7:rx|Q\(2));

-- Location: FF_X52_Y47_N25
\dp|REGS|r1:6:rx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[2]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:6:rx|Q\(2));

-- Location: FF_X50_Y51_N13
\dp|REGS|r1:5:rx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[2]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:5:rx|Q\(2));

-- Location: FF_X52_Y50_N19
\dp|REGS|r1:4:rx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[2]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:4:rx|Q\(2));

-- Location: LCCOMB_X52_Y50_N18
\dp|REGS|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux29~0_combout\ = (\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|destB[0]~1_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|destB[0]~1_combout\ & (\dp|REGS|r1:5:rx|Q\(2))) # (!\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|r1:4:rx|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|r1:5:rx|Q\(2),
	datac => \dp|REGS|r1:4:rx|Q\(2),
	datad => \dp|REGS|destB[0]~1_combout\,
	combout => \dp|REGS|Mux29~0_combout\);

-- Location: LCCOMB_X52_Y47_N24
\dp|REGS|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux29~1_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|Mux29~0_combout\ & (\dp|REGS|r1:7:rx|Q\(2))) # (!\dp|REGS|Mux29~0_combout\ & ((\dp|REGS|r1:6:rx|Q\(2)))))) # (!\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:7:rx|Q\(2),
	datab => \dp|REGS|destB[1]~0_combout\,
	datac => \dp|REGS|r1:6:rx|Q\(2),
	datad => \dp|REGS|Mux29~0_combout\,
	combout => \dp|REGS|Mux29~1_combout\);

-- Location: LCCOMB_X52_Y47_N30
\dp|REGS|r1:11:rx|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:11:rx|Q[2]~feeder_combout\ = \dp|dtreg[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|dtreg[2]~2_combout\,
	combout => \dp|REGS|r1:11:rx|Q[2]~feeder_combout\);

-- Location: FF_X52_Y47_N31
\dp|REGS|r1:11:rx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:11:rx|Q[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:11:rx|Q\(2));

-- Location: FF_X49_Y49_N9
\dp|REGS|r1:9:rx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[2]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:9:rx|Q\(2));

-- Location: LCCOMB_X53_Y47_N0
\dp|REGS|r1:10:rx|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:10:rx|Q[2]~feeder_combout\ = \dp|dtreg[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|dtreg[2]~2_combout\,
	combout => \dp|REGS|r1:10:rx|Q[2]~feeder_combout\);

-- Location: FF_X53_Y47_N1
\dp|REGS|r1:10:rx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:10:rx|Q[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:10:rx|Q\(2));

-- Location: FF_X52_Y50_N17
\dp|REGS|r1:8:rx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[2]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:8:rx|Q\(2));

-- Location: LCCOMB_X52_Y50_N16
\dp|REGS|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux29~2_combout\ = (\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|destB[1]~0_combout\)))) # (!\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|destB[1]~0_combout\ & (\dp|REGS|r1:10:rx|Q\(2))) # (!\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|r1:8:rx|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:10:rx|Q\(2),
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|r1:8:rx|Q\(2),
	datad => \dp|REGS|destB[1]~0_combout\,
	combout => \dp|REGS|Mux29~2_combout\);

-- Location: LCCOMB_X49_Y49_N8
\dp|REGS|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux29~3_combout\ = (\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|Mux29~2_combout\ & (\dp|REGS|r1:11:rx|Q\(2))) # (!\dp|REGS|Mux29~2_combout\ & ((\dp|REGS|r1:9:rx|Q\(2)))))) # (!\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:11:rx|Q\(2),
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|r1:9:rx|Q\(2),
	datad => \dp|REGS|Mux29~2_combout\,
	combout => \dp|REGS|Mux29~3_combout\);

-- Location: FF_X50_Y51_N11
\dp|REGS|r1:1:rx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[2]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:1:rx|Q\(2));

-- Location: FF_X53_Y49_N23
\dp|REGS|r1:0:rx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[2]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:0:rx|Q\(2));

-- Location: FF_X52_Y48_N25
\dp|REGS|r1:2:rx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[2]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:2:rx|Q\(2));

-- Location: LCCOMB_X53_Y49_N4
\dp|REGS|Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux29~4_combout\ = (\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|r1:2:rx|Q\(2)) # (\dp|REGS|destB[0]~1_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & (\dp|REGS|r1:0:rx|Q\(2) & ((!\dp|REGS|destB[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:0:rx|Q\(2),
	datab => \dp|REGS|r1:2:rx|Q\(2),
	datac => \dp|REGS|destB[1]~0_combout\,
	datad => \dp|REGS|destB[0]~1_combout\,
	combout => \dp|REGS|Mux29~4_combout\);

-- Location: FF_X50_Y49_N17
\dp|REGS|r1:3:rx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[2]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:3:rx|Q\(2));

-- Location: LCCOMB_X53_Y49_N2
\dp|REGS|Mux29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux29~5_combout\ = (\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|Mux29~4_combout\ & ((\dp|REGS|r1:3:rx|Q\(2)))) # (!\dp|REGS|Mux29~4_combout\ & (\dp|REGS|r1:1:rx|Q\(2))))) # (!\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|Mux29~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:1:rx|Q\(2),
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|Mux29~4_combout\,
	datad => \dp|REGS|r1:3:rx|Q\(2),
	combout => \dp|REGS|Mux29~5_combout\);

-- Location: LCCOMB_X48_Y49_N2
\dp|REGS|Mux29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux29~6_combout\ = (\dp|REGS|destB[2]~3_combout\ & (\dp|REGS|destB[3]~2_combout\)) # (!\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|destB[3]~2_combout\ & (\dp|REGS|Mux29~3_combout\)) # (!\dp|REGS|destB[3]~2_combout\ & 
-- ((\dp|REGS|Mux29~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|destB[3]~2_combout\,
	datac => \dp|REGS|Mux29~3_combout\,
	datad => \dp|REGS|Mux29~5_combout\,
	combout => \dp|REGS|Mux29~6_combout\);

-- Location: LCCOMB_X48_Y49_N18
\dp|REGS|Mux29~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux29~9_combout\ = (\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|Mux29~6_combout\ & (\dp|REGS|Mux29~8_combout\)) # (!\dp|REGS|Mux29~6_combout\ & ((\dp|REGS|Mux29~1_combout\))))) # (!\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|Mux29~8_combout\,
	datac => \dp|REGS|Mux29~1_combout\,
	datad => \dp|REGS|Mux29~6_combout\,
	combout => \dp|REGS|Mux29~9_combout\);

-- Location: LCCOMB_X48_Y49_N28
\dp|REG_B|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REG_B|Q[2]~feeder_combout\ = \dp|REGS|Mux29~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|REGS|Mux29~9_combout\,
	combout => \dp|REG_B|Q[2]~feeder_combout\);

-- Location: FF_X48_Y49_N29
\dp|REG_B|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REG_B|Q[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_B|Q\(2));

-- Location: LCCOMB_X46_Y51_N4
\dp|RPC|Q[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RPC|Q[2]~20_combout\ = (\dp|RPC|Q\(2) & (\dp|RPC|Q[1]~19\ $ (GND))) # (!\dp|RPC|Q\(2) & (!\dp|RPC|Q[1]~19\ & VCC))
-- \dp|RPC|Q[2]~21\ = CARRY((\dp|RPC|Q\(2) & !\dp|RPC|Q[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|RPC|Q\(2),
	datad => VCC,
	cin => \dp|RPC|Q[1]~19\,
	combout => \dp|RPC|Q[2]~20_combout\,
	cout => \dp|RPC|Q[2]~21\);

-- Location: LCCOMB_X46_Y50_N8
\dp|dtpc[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtpc[2]~2_combout\ = (\ctrl|EA.Sfetch~q\ & (\dp|REG_alu|Q\(2))) # (!\ctrl|EA.Sfetch~q\ & ((\ctrl|EA.Srts~q\ & ((\dataIN[2]~input_o\))) # (!\ctrl|EA.Srts~q\ & (\dp|REG_alu|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Sfetch~q\,
	datab => \dp|REG_alu|Q\(2),
	datac => \ctrl|EA.Srts~q\,
	datad => \dataIN[2]~input_o\,
	combout => \dp|dtpc[2]~2_combout\);

-- Location: FF_X46_Y51_N5
\dp|RPC|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RPC|Q[2]~20_combout\,
	asdata => \dp|dtpc[2]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|ALT_INV_EA.Sfetch~q\,
	ena => \ctrl|uins.wpc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RPC|Q\(2));

-- Location: LCCOMB_X46_Y50_N12
\dp|opB[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[2]~7_combout\ = (\ctrl|uins.mb[0]~0_combout\ & ((\dp|RSP|Q\(2)))) # (!\ctrl|uins.mb[0]~0_combout\ & (\dp|RPC|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RPC|Q\(2),
	datac => \dp|RSP|Q\(2),
	datad => \ctrl|uins.mb[0]~0_combout\,
	combout => \dp|opB[2]~7_combout\);

-- Location: LCCOMB_X47_Y49_N4
\dp|opB[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[2]~8_combout\ = (\dp|opB[0]~5_combout\ & ((\dp|opB[2]~7_combout\))) # (!\dp|opB[0]~5_combout\ & (\dp|REG_B|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_B|Q\(2),
	datab => \dp|opB[2]~7_combout\,
	datad => \dp|opB[0]~5_combout\,
	combout => \dp|opB[2]~8_combout\);

-- Location: LCCOMB_X48_Y47_N22
\dp|addB[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|addB[2]~5_combout\ = \ctrl|Equal31~4_combout\ $ (((\dp|opB[0]~5_combout\ & ((\dp|opB[2]~7_combout\))) # (!\dp|opB[0]~5_combout\ & (\dp|REG_B|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~4_combout\,
	datab => \dp|REG_B|Q\(2),
	datac => \dp|opB[0]~5_combout\,
	datad => \dp|opB[2]~7_combout\,
	combout => \dp|addB[2]~5_combout\);

-- Location: LCCOMB_X48_Y47_N20
\dp|carry~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|carry~1_combout\ = (\dp|addB[1]~6_combout\ & ((\dp|carry~0_combout\) # (\ctrl|Equal31~5_combout\ $ (\dp|opA[1]~6_combout\)))) # (!\dp|addB[1]~6_combout\ & (\dp|carry~0_combout\ & (\ctrl|Equal31~5_combout\ $ (\dp|opA[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~5_combout\,
	datab => \dp|opA[1]~6_combout\,
	datac => \dp|addB[1]~6_combout\,
	datad => \dp|carry~0_combout\,
	combout => \dp|carry~1_combout\);

-- Location: LCCOMB_X47_Y49_N18
\dp|add[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|add\(2) = \ctrl|Equal31~5_combout\ $ (\dp|addB[2]~5_combout\ $ (\dp|carry~1_combout\ $ (\dp|opA[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~5_combout\,
	datab => \dp|addB[2]~5_combout\,
	datac => \dp|carry~1_combout\,
	datad => \dp|opA[2]~5_combout\,
	combout => \dp|add\(2));

-- Location: LCCOMB_X47_Y49_N12
\dp|outalu[2]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[2]~97_combout\ = (\dp|outalu[10]~24_combout\ & ((\dp|outalu[10]~23_combout\) # ((\dp|opB[2]~8_combout\) # (\dp|opA[2]~5_combout\)))) # (!\dp|outalu[10]~24_combout\ & (!\dp|outalu[10]~23_combout\ & (\dp|opB[2]~8_combout\ & 
-- \dp|opA[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~24_combout\,
	datab => \dp|outalu[10]~23_combout\,
	datac => \dp|opB[2]~8_combout\,
	datad => \dp|opA[2]~5_combout\,
	combout => \dp|outalu[2]~97_combout\);

-- Location: LCCOMB_X50_Y46_N22
\dp|outalu[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[7]~19_combout\ = (\dp|RIR|Q\(2)) # (\dp|RIR|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|RIR|Q\(2),
	datad => \dp|RIR|Q\(3),
	combout => \dp|outalu[7]~19_combout\);

-- Location: LCCOMB_X50_Y46_N20
\dp|outalu[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[10]~20_combout\ = (\dp|RIR|Q\(3)) # ((\dp|RIR|Q\(1) & !\dp|RIR|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(3),
	datac => \dp|RIR|Q\(1),
	datad => \dp|RIR|Q\(2),
	combout => \dp|outalu[10]~20_combout\);

-- Location: LCCOMB_X47_Y49_N22
\dp|outalu[2]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[2]~98_combout\ = (\dp|outalu[7]~19_combout\ & ((\dp|outalu[10]~20_combout\) # ((!\dp|opA[2]~5_combout\)))) # (!\dp|outalu[7]~19_combout\ & (!\dp|outalu[10]~20_combout\ & (\dp|opA[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[7]~19_combout\,
	datab => \dp|outalu[10]~20_combout\,
	datac => \dp|opA[1]~6_combout\,
	datad => \dp|opA[2]~5_combout\,
	combout => \dp|outalu[2]~98_combout\);

-- Location: LCCOMB_X47_Y48_N0
\dp|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Add2~0_combout\ = \dp|opB[0]~3_combout\ $ (VCC)
-- \dp|Add2~1\ = CARRY(\dp|opB[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[0]~3_combout\,
	datad => VCC,
	combout => \dp|Add2~0_combout\,
	cout => \dp|Add2~1\);

-- Location: LCCOMB_X47_Y48_N2
\dp|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Add2~2_combout\ = (\dp|opB[1]~6_combout\ & (!\dp|Add2~1\)) # (!\dp|opB[1]~6_combout\ & ((\dp|Add2~1\) # (GND)))
-- \dp|Add2~3\ = CARRY((!\dp|Add2~1\) # (!\dp|opB[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|opB[1]~6_combout\,
	datad => VCC,
	cin => \dp|Add2~1\,
	combout => \dp|Add2~2_combout\,
	cout => \dp|Add2~3\);

-- Location: LCCOMB_X47_Y48_N4
\dp|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Add2~4_combout\ = (\dp|opB[2]~8_combout\ & (\dp|Add2~3\ $ (GND))) # (!\dp|opB[2]~8_combout\ & (!\dp|Add2~3\ & VCC))
-- \dp|Add2~5\ = CARRY((\dp|opB[2]~8_combout\ & !\dp|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[2]~8_combout\,
	datad => VCC,
	cin => \dp|Add2~3\,
	combout => \dp|Add2~4_combout\,
	cout => \dp|Add2~5\);

-- Location: LCCOMB_X49_Y49_N4
\dp|REGS|r1:9:rx|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:9:rx|Q[3]~feeder_combout\ = \dp|dtreg[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|dtreg[3]~3_combout\,
	combout => \dp|REGS|r1:9:rx|Q[3]~feeder_combout\);

-- Location: FF_X49_Y49_N5
\dp|REGS|r1:9:rx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:9:rx|Q[3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:9:rx|Q\(3));

-- Location: LCCOMB_X50_Y49_N30
\dp|REGS|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux28~0_combout\ = (\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|destB[3]~2_combout\)))) # (!\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|destB[3]~2_combout\ & (\dp|REGS|r1:9:rx|Q\(3))) # (!\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|r1:1:rx|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|r1:9:rx|Q\(3),
	datac => \dp|REGS|r1:1:rx|Q\(3),
	datad => \dp|REGS|destB[3]~2_combout\,
	combout => \dp|REGS|Mux28~0_combout\);

-- Location: LCCOMB_X52_Y49_N6
\dp|REGS|r1:5:rx|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:5:rx|Q[3]~feeder_combout\ = \dp|dtreg[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|dtreg[3]~3_combout\,
	combout => \dp|REGS|r1:5:rx|Q[3]~feeder_combout\);

-- Location: FF_X52_Y49_N7
\dp|REGS|r1:5:rx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:5:rx|Q[3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:5:rx|Q\(3));

-- Location: FF_X49_Y49_N31
\dp|REGS|r1:13:rx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[3]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:13:rx|Q\(3));

-- Location: LCCOMB_X49_Y49_N30
\dp|REGS|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux28~1_combout\ = (\dp|REGS|Mux28~0_combout\ & (((\dp|REGS|r1:13:rx|Q\(3)) # (!\dp|REGS|destB[2]~3_combout\)))) # (!\dp|REGS|Mux28~0_combout\ & (\dp|REGS|r1:5:rx|Q\(3) & ((\dp|REGS|destB[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux28~0_combout\,
	datab => \dp|REGS|r1:5:rx|Q\(3),
	datac => \dp|REGS|r1:13:rx|Q\(3),
	datad => \dp|REGS|destB[2]~3_combout\,
	combout => \dp|REGS|Mux28~1_combout\);

-- Location: FF_X47_Y50_N29
\dp|REGS|r1:15:rx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|dtreg[3]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:15:rx|Q\(3));

-- Location: LCCOMB_X52_Y49_N4
\dp|REGS|r1:7:rx|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:7:rx|Q[3]~feeder_combout\ = \dp|dtreg[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|dtreg[3]~3_combout\,
	combout => \dp|REGS|r1:7:rx|Q[3]~feeder_combout\);

-- Location: FF_X52_Y49_N5
\dp|REGS|r1:7:rx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:7:rx|Q[3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:7:rx|Q\(3));

-- Location: FF_X52_Y47_N21
\dp|REGS|r1:11:rx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[3]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:11:rx|Q\(3));

-- Location: FF_X52_Y48_N23
\dp|REGS|r1:3:rx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[3]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:3:rx|Q\(3));

-- Location: LCCOMB_X53_Y48_N14
\dp|REGS|Mux28~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux28~7_combout\ = (\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|destB[3]~2_combout\)))) # (!\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|destB[3]~2_combout\ & (\dp|REGS|r1:11:rx|Q\(3))) # (!\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|r1:3:rx|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:11:rx|Q\(3),
	datab => \dp|REGS|r1:3:rx|Q\(3),
	datac => \dp|REGS|destB[2]~3_combout\,
	datad => \dp|REGS|destB[3]~2_combout\,
	combout => \dp|REGS|Mux28~7_combout\);

-- Location: LCCOMB_X54_Y48_N14
\dp|REGS|Mux28~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux28~8_combout\ = (\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|Mux28~7_combout\ & (\dp|REGS|r1:15:rx|Q\(3))) # (!\dp|REGS|Mux28~7_combout\ & ((\dp|REGS|r1:7:rx|Q\(3)))))) # (!\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:15:rx|Q\(3),
	datab => \dp|REGS|r1:7:rx|Q\(3),
	datac => \dp|REGS|destB[2]~3_combout\,
	datad => \dp|REGS|Mux28~7_combout\,
	combout => \dp|REGS|Mux28~8_combout\);

-- Location: FF_X54_Y48_N23
\dp|REGS|r1:14:rx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[3]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:14:rx|Q\(3));

-- Location: LCCOMB_X53_Y47_N26
\dp|REGS|r1:10:rx|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:10:rx|Q[3]~feeder_combout\ = \dp|dtreg[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|dtreg[3]~3_combout\,
	combout => \dp|REGS|r1:10:rx|Q[3]~feeder_combout\);

-- Location: FF_X53_Y47_N27
\dp|REGS|r1:10:rx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:10:rx|Q[3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:10:rx|Q\(3));

-- Location: FF_X55_Y48_N7
\dp|REGS|r1:6:rx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[3]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:6:rx|Q\(3));

-- Location: LCCOMB_X53_Y51_N26
\dp|REGS|r1:2:rx|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:2:rx|Q[3]~feeder_combout\ = \dp|dtreg[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|dtreg[3]~3_combout\,
	combout => \dp|REGS|r1:2:rx|Q[3]~feeder_combout\);

-- Location: FF_X53_Y51_N27
\dp|REGS|r1:2:rx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:2:rx|Q[3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:2:rx|Q\(3));

-- Location: LCCOMB_X54_Y48_N16
\dp|REGS|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux28~2_combout\ = (\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|r1:6:rx|Q\(3)) # ((\dp|REGS|destB[3]~2_combout\)))) # (!\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|r1:2:rx|Q\(3) & !\dp|REGS|destB[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:6:rx|Q\(3),
	datab => \dp|REGS|r1:2:rx|Q\(3),
	datac => \dp|REGS|destB[2]~3_combout\,
	datad => \dp|REGS|destB[3]~2_combout\,
	combout => \dp|REGS|Mux28~2_combout\);

-- Location: LCCOMB_X54_Y48_N20
\dp|REGS|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux28~3_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|Mux28~2_combout\ & (\dp|REGS|r1:14:rx|Q\(3))) # (!\dp|REGS|Mux28~2_combout\ & ((\dp|REGS|r1:10:rx|Q\(3)))))) # (!\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:14:rx|Q\(3),
	datab => \dp|REGS|r1:10:rx|Q\(3),
	datac => \dp|REGS|destB[3]~2_combout\,
	datad => \dp|REGS|Mux28~2_combout\,
	combout => \dp|REGS|Mux28~3_combout\);

-- Location: FF_X53_Y49_N7
\dp|REGS|r1:12:rx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[3]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:12:rx|Q\(3));

-- Location: FF_X54_Y48_N31
\dp|REGS|r1:8:rx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[3]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:8:rx|Q\(3));

-- Location: FF_X54_Y49_N31
\dp|REGS|r1:4:rx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[3]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:4:rx|Q\(3));

-- Location: FF_X53_Y48_N25
\dp|REGS|r1:0:rx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[3]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:0:rx|Q\(3));

-- Location: LCCOMB_X54_Y48_N4
\dp|REGS|Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux28~4_combout\ = (\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|r1:4:rx|Q\(3)) # ((\dp|REGS|destB[3]~2_combout\)))) # (!\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|r1:0:rx|Q\(3) & !\dp|REGS|destB[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:4:rx|Q\(3),
	datab => \dp|REGS|r1:0:rx|Q\(3),
	datac => \dp|REGS|destB[2]~3_combout\,
	datad => \dp|REGS|destB[3]~2_combout\,
	combout => \dp|REGS|Mux28~4_combout\);

-- Location: LCCOMB_X53_Y48_N10
\dp|REGS|Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux28~5_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|Mux28~4_combout\ & (\dp|REGS|r1:12:rx|Q\(3))) # (!\dp|REGS|Mux28~4_combout\ & ((\dp|REGS|r1:8:rx|Q\(3)))))) # (!\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:12:rx|Q\(3),
	datab => \dp|REGS|destB[3]~2_combout\,
	datac => \dp|REGS|r1:8:rx|Q\(3),
	datad => \dp|REGS|Mux28~4_combout\,
	combout => \dp|REGS|Mux28~5_combout\);

-- Location: LCCOMB_X53_Y48_N16
\dp|REGS|Mux28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux28~6_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|destB[0]~1_combout\) # ((\dp|REGS|Mux28~3_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & (!\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|Mux28~3_combout\,
	datad => \dp|REGS|Mux28~5_combout\,
	combout => \dp|REGS|Mux28~6_combout\);

-- Location: LCCOMB_X49_Y48_N4
\dp|REGS|Mux28~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux28~9_combout\ = (\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|Mux28~6_combout\ & ((\dp|REGS|Mux28~8_combout\))) # (!\dp|REGS|Mux28~6_combout\ & (\dp|REGS|Mux28~1_combout\)))) # (!\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux28~1_combout\,
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|Mux28~8_combout\,
	datad => \dp|REGS|Mux28~6_combout\,
	combout => \dp|REGS|Mux28~9_combout\);

-- Location: FF_X49_Y48_N29
\dp|REG_B|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|REGS|Mux28~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_B|Q\(3));

-- Location: LCCOMB_X46_Y51_N6
\dp|RPC|Q[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RPC|Q[3]~22_combout\ = (\dp|RPC|Q\(3) & (!\dp|RPC|Q[2]~21\)) # (!\dp|RPC|Q\(3) & ((\dp|RPC|Q[2]~21\) # (GND)))
-- \dp|RPC|Q[3]~23\ = CARRY((!\dp|RPC|Q[2]~21\) # (!\dp|RPC|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RPC|Q\(3),
	datad => VCC,
	cin => \dp|RPC|Q[2]~21\,
	combout => \dp|RPC|Q[3]~22_combout\,
	cout => \dp|RPC|Q[3]~23\);

-- Location: LCCOMB_X45_Y51_N2
\dp|dtpc[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtpc[3]~3_combout\ = (\ctrl|EA.Srts~q\ & ((\ctrl|EA.Sfetch~q\ & ((\dp|REG_alu|Q\(3)))) # (!\ctrl|EA.Sfetch~q\ & (\dataIN[3]~input_o\)))) # (!\ctrl|EA.Srts~q\ & (((\dp|REG_alu|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIN[3]~input_o\,
	datab => \dp|REG_alu|Q\(3),
	datac => \ctrl|EA.Srts~q\,
	datad => \ctrl|EA.Sfetch~q\,
	combout => \dp|dtpc[3]~3_combout\);

-- Location: FF_X46_Y51_N7
\dp|RPC|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RPC|Q[3]~22_combout\,
	asdata => \dp|dtpc[3]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|ALT_INV_EA.Sfetch~q\,
	ena => \ctrl|uins.wpc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RPC|Q\(3));

-- Location: LCCOMB_X49_Y48_N22
\dp|opB[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[3]~9_combout\ = (\ctrl|uins.mb[0]~0_combout\ & (\dp|RSP|Q\(3))) # (!\ctrl|uins.mb[0]~0_combout\ & ((\dp|RPC|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|RSP|Q\(3),
	datac => \ctrl|uins.mb[0]~0_combout\,
	datad => \dp|RPC|Q\(3),
	combout => \dp|opB[3]~9_combout\);

-- Location: LCCOMB_X49_Y48_N10
\dp|opB[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[3]~10_combout\ = (\dp|opB[0]~5_combout\ & ((\dp|opB[3]~9_combout\))) # (!\dp|opB[0]~5_combout\ & (\dp|REG_B|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_B|Q\(3),
	datac => \dp|opB[3]~9_combout\,
	datad => \dp|opB[0]~5_combout\,
	combout => \dp|opB[3]~10_combout\);

-- Location: LCCOMB_X49_Y48_N20
\dp|addB[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|addB[3]~4_combout\ = \ctrl|Equal31~4_combout\ $ (((\dp|opB[0]~5_combout\ & ((\dp|opB[3]~9_combout\))) # (!\dp|opB[0]~5_combout\ & (\dp|REG_B|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_B|Q\(3),
	datab => \ctrl|Equal31~4_combout\,
	datac => \dp|opB[3]~9_combout\,
	datad => \dp|opB[0]~5_combout\,
	combout => \dp|addB[3]~4_combout\);

-- Location: LCCOMB_X48_Y47_N10
\dp|carry~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|carry~2_combout\ = (\dp|addB[2]~5_combout\ & ((\dp|carry~1_combout\) # (\ctrl|Equal31~5_combout\ $ (\dp|opA[2]~5_combout\)))) # (!\dp|addB[2]~5_combout\ & (\dp|carry~1_combout\ & (\ctrl|Equal31~5_combout\ $ (\dp|opA[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~5_combout\,
	datab => \dp|opA[2]~5_combout\,
	datac => \dp|addB[2]~5_combout\,
	datad => \dp|carry~1_combout\,
	combout => \dp|carry~2_combout\);

-- Location: LCCOMB_X49_Y48_N26
\dp|add[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|add\(3) = \ctrl|Equal31~5_combout\ $ (\dp|addB[3]~4_combout\ $ (\dp|carry~2_combout\ $ (\dp|opA[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~5_combout\,
	datab => \dp|addB[3]~4_combout\,
	datac => \dp|carry~2_combout\,
	datad => \dp|opA[3]~4_combout\,
	combout => \dp|add\(3));

-- Location: LCCOMB_X49_Y48_N8
\dp|outalu[3]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[3]~136_combout\ = (\dp|opB[3]~10_combout\ & ((\dp|outalu[10]~24_combout\) # ((!\dp|outalu[10]~23_combout\ & \dp|opA[3]~4_combout\)))) # (!\dp|opB[3]~10_combout\ & (\dp|outalu[10]~24_combout\ & ((\dp|outalu[10]~23_combout\) # 
-- (\dp|opA[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[3]~10_combout\,
	datab => \dp|outalu[10]~23_combout\,
	datac => \dp|outalu[10]~24_combout\,
	datad => \dp|opA[3]~4_combout\,
	combout => \dp|outalu[3]~136_combout\);

-- Location: LCCOMB_X46_Y51_N8
\dp|RPC|Q[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RPC|Q[4]~24_combout\ = (\dp|RPC|Q\(4) & (\dp|RPC|Q[3]~23\ $ (GND))) # (!\dp|RPC|Q\(4) & (!\dp|RPC|Q[3]~23\ & VCC))
-- \dp|RPC|Q[4]~25\ = CARRY((\dp|RPC|Q\(4) & !\dp|RPC|Q[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|RPC|Q\(4),
	datad => VCC,
	cin => \dp|RPC|Q[3]~23\,
	combout => \dp|RPC|Q[4]~24_combout\,
	cout => \dp|RPC|Q[4]~25\);

-- Location: LCCOMB_X47_Y51_N18
\dp|dtpc[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtpc[4]~4_combout\ = (\ctrl|EA.Srts~q\ & ((\ctrl|EA.Sfetch~q\ & (\dp|REG_alu|Q\(4))) # (!\ctrl|EA.Sfetch~q\ & ((\dataIN[4]~input_o\))))) # (!\ctrl|EA.Srts~q\ & (\dp|REG_alu|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_alu|Q\(4),
	datab => \ctrl|EA.Srts~q\,
	datac => \dataIN[4]~input_o\,
	datad => \ctrl|EA.Sfetch~q\,
	combout => \dp|dtpc[4]~4_combout\);

-- Location: FF_X46_Y51_N9
\dp|RPC|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RPC|Q[4]~24_combout\,
	asdata => \dp|dtpc[4]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|ALT_INV_EA.Sfetch~q\,
	ena => \ctrl|uins.wpc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RPC|Q\(4));

-- Location: LCCOMB_X45_Y47_N12
\dp|opB[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[4]~11_combout\ = (\ctrl|uins.mb[0]~0_combout\ & (\dp|RSP|Q\(4))) # (!\ctrl|uins.mb[0]~0_combout\ & ((\dp|RPC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RSP|Q\(4),
	datac => \dp|RPC|Q\(4),
	datad => \ctrl|uins.mb[0]~0_combout\,
	combout => \dp|opB[4]~11_combout\);

-- Location: FF_X47_Y50_N7
\dp|REGS|r1:15:rx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|dtreg[4]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:15:rx|Q\(4));

-- Location: FF_X49_Y49_N3
\dp|REGS|r1:13:rx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[4]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:13:rx|Q\(4));

-- Location: FF_X53_Y49_N1
\dp|REGS|r1:12:rx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[4]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:12:rx|Q\(4));

-- Location: LCCOMB_X52_Y51_N14
\dp|REGS|Mux27~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux27~7_combout\ = (\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|destB[1]~0_combout\)))) # (!\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|r1:14:rx|Q\(4)))) # (!\dp|REGS|destB[1]~0_combout\ & 
-- (\dp|REGS|r1:12:rx|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:12:rx|Q\(4),
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|r1:14:rx|Q\(4),
	datad => \dp|REGS|destB[1]~0_combout\,
	combout => \dp|REGS|Mux27~7_combout\);

-- Location: LCCOMB_X49_Y50_N26
\dp|REGS|Mux27~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux27~8_combout\ = (\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|Mux27~7_combout\ & (\dp|REGS|r1:15:rx|Q\(4))) # (!\dp|REGS|Mux27~7_combout\ & ((\dp|REGS|r1:13:rx|Q\(4)))))) # (!\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|Mux27~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:15:rx|Q\(4),
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|r1:13:rx|Q\(4),
	datad => \dp|REGS|Mux27~7_combout\,
	combout => \dp|REGS|Mux27~8_combout\);

-- Location: FF_X52_Y47_N27
\dp|REGS|r1:11:rx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[4]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:11:rx|Q\(4));

-- Location: FF_X53_Y47_N21
\dp|REGS|r1:10:rx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[4]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:10:rx|Q\(4));

-- Location: LCCOMB_X49_Y49_N16
\dp|REGS|r1:9:rx|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:9:rx|Q[4]~feeder_combout\ = \dp|dtreg[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|dtreg[4]~4_combout\,
	combout => \dp|REGS|r1:9:rx|Q[4]~feeder_combout\);

-- Location: FF_X49_Y49_N17
\dp|REGS|r1:9:rx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:9:rx|Q[4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:9:rx|Q\(4));

-- Location: FF_X52_Y50_N7
\dp|REGS|r1:8:rx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[4]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:8:rx|Q\(4));

-- Location: LCCOMB_X52_Y50_N6
\dp|REGS|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux27~0_combout\ = (\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|destB[0]~1_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|destB[0]~1_combout\ & (\dp|REGS|r1:9:rx|Q\(4))) # (!\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|r1:8:rx|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|r1:9:rx|Q\(4),
	datac => \dp|REGS|r1:8:rx|Q\(4),
	datad => \dp|REGS|destB[0]~1_combout\,
	combout => \dp|REGS|Mux27~0_combout\);

-- Location: LCCOMB_X53_Y47_N20
\dp|REGS|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux27~1_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|Mux27~0_combout\ & (\dp|REGS|r1:11:rx|Q\(4))) # (!\dp|REGS|Mux27~0_combout\ & ((\dp|REGS|r1:10:rx|Q\(4)))))) # (!\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|r1:11:rx|Q\(4),
	datac => \dp|REGS|r1:10:rx|Q\(4),
	datad => \dp|REGS|Mux27~0_combout\,
	combout => \dp|REGS|Mux27~1_combout\);

-- Location: FF_X52_Y48_N1
\dp|REGS|r1:3:rx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[4]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:3:rx|Q\(4));

-- Location: FF_X53_Y51_N29
\dp|REGS|r1:2:rx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[4]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:2:rx|Q\(4));

-- Location: FF_X50_Y49_N29
\dp|REGS|r1:1:rx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[4]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:1:rx|Q\(4));

-- Location: FF_X53_Y49_N17
\dp|REGS|r1:0:rx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[4]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:0:rx|Q\(4));

-- Location: LCCOMB_X53_Y49_N18
\dp|REGS|Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux27~4_combout\ = (\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|destB[0]~1_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|destB[0]~1_combout\ & (\dp|REGS|r1:1:rx|Q\(4))) # (!\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|r1:0:rx|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:1:rx|Q\(4),
	datab => \dp|REGS|r1:0:rx|Q\(4),
	datac => \dp|REGS|destB[1]~0_combout\,
	datad => \dp|REGS|destB[0]~1_combout\,
	combout => \dp|REGS|Mux27~4_combout\);

-- Location: LCCOMB_X53_Y49_N8
\dp|REGS|Mux27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux27~5_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|Mux27~4_combout\ & (\dp|REGS|r1:3:rx|Q\(4))) # (!\dp|REGS|Mux27~4_combout\ & ((\dp|REGS|r1:2:rx|Q\(4)))))) # (!\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|Mux27~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:3:rx|Q\(4),
	datab => \dp|REGS|destB[1]~0_combout\,
	datac => \dp|REGS|r1:2:rx|Q\(4),
	datad => \dp|REGS|Mux27~4_combout\,
	combout => \dp|REGS|Mux27~5_combout\);

-- Location: LCCOMB_X52_Y49_N8
\dp|REGS|r1:7:rx|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:7:rx|Q[4]~feeder_combout\ = \dp|dtreg[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|dtreg[4]~4_combout\,
	combout => \dp|REGS|r1:7:rx|Q[4]~feeder_combout\);

-- Location: FF_X52_Y49_N9
\dp|REGS|r1:7:rx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:7:rx|Q[4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:7:rx|Q\(4));

-- Location: FF_X52_Y49_N11
\dp|REGS|r1:5:rx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[4]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:5:rx|Q\(4));

-- Location: FF_X52_Y51_N9
\dp|REGS|r1:6:rx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[4]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:6:rx|Q\(4));

-- Location: FF_X52_Y50_N29
\dp|REGS|r1:4:rx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[4]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:4:rx|Q\(4));

-- Location: LCCOMB_X52_Y50_N28
\dp|REGS|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux27~2_combout\ = (\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|destB[1]~0_combout\)))) # (!\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|destB[1]~0_combout\ & (\dp|REGS|r1:6:rx|Q\(4))) # (!\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|r1:4:rx|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:6:rx|Q\(4),
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|r1:4:rx|Q\(4),
	datad => \dp|REGS|destB[1]~0_combout\,
	combout => \dp|REGS|Mux27~2_combout\);

-- Location: LCCOMB_X52_Y49_N10
\dp|REGS|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux27~3_combout\ = (\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|Mux27~2_combout\ & (\dp|REGS|r1:7:rx|Q\(4))) # (!\dp|REGS|Mux27~2_combout\ & ((\dp|REGS|r1:5:rx|Q\(4)))))) # (!\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[0]~1_combout\,
	datab => \dp|REGS|r1:7:rx|Q\(4),
	datac => \dp|REGS|r1:5:rx|Q\(4),
	datad => \dp|REGS|Mux27~2_combout\,
	combout => \dp|REGS|Mux27~3_combout\);

-- Location: LCCOMB_X53_Y49_N30
\dp|REGS|Mux27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux27~6_combout\ = (\dp|REGS|destB[3]~2_combout\ & (\dp|REGS|destB[2]~3_combout\)) # (!\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|Mux27~3_combout\))) # (!\dp|REGS|destB[2]~3_combout\ & 
-- (\dp|REGS|Mux27~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[3]~2_combout\,
	datab => \dp|REGS|destB[2]~3_combout\,
	datac => \dp|REGS|Mux27~5_combout\,
	datad => \dp|REGS|Mux27~3_combout\,
	combout => \dp|REGS|Mux27~6_combout\);

-- Location: LCCOMB_X49_Y50_N8
\dp|REGS|Mux27~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux27~9_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|Mux27~6_combout\ & (\dp|REGS|Mux27~8_combout\)) # (!\dp|REGS|Mux27~6_combout\ & ((\dp|REGS|Mux27~1_combout\))))) # (!\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|Mux27~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux27~8_combout\,
	datab => \dp|REGS|destB[3]~2_combout\,
	datac => \dp|REGS|Mux27~1_combout\,
	datad => \dp|REGS|Mux27~6_combout\,
	combout => \dp|REGS|Mux27~9_combout\);

-- Location: FF_X49_Y50_N23
\dp|REG_B|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|REGS|Mux27~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_B|Q\(4));

-- Location: LCCOMB_X45_Y47_N10
\dp|opB[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[4]~12_combout\ = (\dp|opB[0]~5_combout\ & (\dp|opB[4]~11_combout\)) # (!\dp|opB[0]~5_combout\ & ((\dp|REG_B|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[4]~11_combout\,
	datab => \dp|REG_B|Q\(4),
	datad => \dp|opB[0]~5_combout\,
	combout => \dp|opB[4]~12_combout\);

-- Location: LCCOMB_X45_Y47_N30
\dp|addB[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|addB[4]~3_combout\ = \ctrl|Equal31~4_combout\ $ (((\dp|opB[0]~5_combout\ & (\dp|opB[4]~11_combout\)) # (!\dp|opB[0]~5_combout\ & ((\dp|REG_B|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[4]~11_combout\,
	datab => \dp|REG_B|Q\(4),
	datac => \ctrl|Equal31~4_combout\,
	datad => \dp|opB[0]~5_combout\,
	combout => \dp|addB[4]~3_combout\);

-- Location: LCCOMB_X48_Y47_N12
\dp|carry~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|carry~3_combout\ = (\dp|addB[3]~4_combout\ & ((\dp|carry~2_combout\) # (\dp|opA[3]~4_combout\ $ (\ctrl|Equal31~5_combout\)))) # (!\dp|addB[3]~4_combout\ & (\dp|carry~2_combout\ & (\dp|opA[3]~4_combout\ $ (\ctrl|Equal31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[3]~4_combout\,
	datab => \ctrl|Equal31~5_combout\,
	datac => \dp|addB[3]~4_combout\,
	datad => \dp|carry~2_combout\,
	combout => \dp|carry~3_combout\);

-- Location: LCCOMB_X45_Y47_N8
\dp|add[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|add\(4) = \ctrl|Equal31~5_combout\ $ (\dp|opA[4]~3_combout\ $ (\dp|addB[4]~3_combout\ $ (\dp|carry~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~5_combout\,
	datab => \dp|opA[4]~3_combout\,
	datac => \dp|addB[4]~3_combout\,
	datad => \dp|carry~3_combout\,
	combout => \dp|add\(4));

-- Location: LCCOMB_X45_Y47_N14
\dp|outalu[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[4]~40_combout\ = (\dp|outalu[10]~23_combout\ & (\dp|outalu[10]~24_combout\)) # (!\dp|outalu[10]~23_combout\ & ((\dp|outalu[10]~24_combout\ & ((\dp|opA[4]~3_combout\) # (\dp|opB[4]~12_combout\))) # (!\dp|outalu[10]~24_combout\ & 
-- (\dp|opA[4]~3_combout\ & \dp|opB[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~23_combout\,
	datab => \dp|outalu[10]~24_combout\,
	datac => \dp|opA[4]~3_combout\,
	datad => \dp|opB[4]~12_combout\,
	combout => \dp|outalu[4]~40_combout\);

-- Location: LCCOMB_X46_Y51_N10
\dp|RPC|Q[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RPC|Q[5]~26_combout\ = (\dp|RPC|Q\(5) & (!\dp|RPC|Q[4]~25\)) # (!\dp|RPC|Q\(5) & ((\dp|RPC|Q[4]~25\) # (GND)))
-- \dp|RPC|Q[5]~27\ = CARRY((!\dp|RPC|Q[4]~25\) # (!\dp|RPC|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RPC|Q\(5),
	datad => VCC,
	cin => \dp|RPC|Q[4]~25\,
	combout => \dp|RPC|Q[5]~26_combout\,
	cout => \dp|RPC|Q[5]~27\);

-- Location: LCCOMB_X45_Y51_N16
\dp|dtpc[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtpc[5]~5_combout\ = (\ctrl|EA.Srts~q\ & ((\ctrl|EA.Sfetch~q\ & (\dp|REG_alu|Q\(5))) # (!\ctrl|EA.Sfetch~q\ & ((\dataIN[5]~input_o\))))) # (!\ctrl|EA.Srts~q\ & (\dp|REG_alu|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_alu|Q\(5),
	datab => \dataIN[5]~input_o\,
	datac => \ctrl|EA.Srts~q\,
	datad => \ctrl|EA.Sfetch~q\,
	combout => \dp|dtpc[5]~5_combout\);

-- Location: FF_X46_Y51_N11
\dp|RPC|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RPC|Q[5]~26_combout\,
	asdata => \dp|dtpc[5]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|ALT_INV_EA.Sfetch~q\,
	ena => \ctrl|uins.wpc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RPC|Q\(5));

-- Location: LCCOMB_X47_Y51_N16
\dp|opB[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[5]~13_combout\ = (\ctrl|uins.mb[0]~0_combout\ & ((\dp|RSP|Q\(5)))) # (!\ctrl|uins.mb[0]~0_combout\ & (\dp|RPC|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RPC|Q\(5),
	datab => \ctrl|uins.mb[0]~0_combout\,
	datad => \dp|RSP|Q\(5),
	combout => \dp|opB[5]~13_combout\);

-- Location: FF_X47_Y50_N5
\dp|REGS|r1:15:rx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|dtreg[5]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:15:rx|Q\(5));

-- Location: FF_X53_Y50_N1
\dp|REGS|r1:11:rx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[5]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:11:rx|Q\(5));

-- Location: FF_X54_Y50_N17
\dp|REGS|r1:3:rx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[5]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:3:rx|Q\(5));

-- Location: FF_X52_Y49_N23
\dp|REGS|r1:7:rx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[5]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:7:rx|Q\(5));

-- Location: LCCOMB_X53_Y50_N6
\dp|REGS|Mux26~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux26~7_combout\ = (\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|destB[2]~3_combout\)))) # (!\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|r1:7:rx|Q\(5)))) # (!\dp|REGS|destB[2]~3_combout\ & (\dp|REGS|r1:3:rx|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[3]~2_combout\,
	datab => \dp|REGS|r1:3:rx|Q\(5),
	datac => \dp|REGS|destB[2]~3_combout\,
	datad => \dp|REGS|r1:7:rx|Q\(5),
	combout => \dp|REGS|Mux26~7_combout\);

-- Location: LCCOMB_X53_Y50_N0
\dp|REGS|Mux26~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux26~8_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|Mux26~7_combout\ & (\dp|REGS|r1:15:rx|Q\(5))) # (!\dp|REGS|Mux26~7_combout\ & ((\dp|REGS|r1:11:rx|Q\(5)))))) # (!\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|Mux26~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[3]~2_combout\,
	datab => \dp|REGS|r1:15:rx|Q\(5),
	datac => \dp|REGS|r1:11:rx|Q\(5),
	datad => \dp|REGS|Mux26~7_combout\,
	combout => \dp|REGS|Mux26~8_combout\);

-- Location: LCCOMB_X56_Y50_N8
\dp|REGS|r1:14:rx|Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:14:rx|Q[5]~feeder_combout\ = \dp|dtreg[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|dtreg[5]~5_combout\,
	combout => \dp|REGS|r1:14:rx|Q[5]~feeder_combout\);

-- Location: FF_X56_Y50_N9
\dp|REGS|r1:14:rx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:14:rx|Q[5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:14:rx|Q\(5));

-- Location: FF_X56_Y49_N31
\dp|REGS|r1:6:rx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[5]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:6:rx|Q\(5));

-- Location: FF_X54_Y51_N17
\dp|REGS|r1:10:rx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[5]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:10:rx|Q\(5));

-- Location: FF_X53_Y51_N7
\dp|REGS|r1:2:rx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[5]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:2:rx|Q\(5));

-- Location: LCCOMB_X53_Y51_N6
\dp|REGS|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux26~0_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|r1:10:rx|Q\(5)) # ((\dp|REGS|destB[2]~3_combout\)))) # (!\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|r1:2:rx|Q\(5) & !\dp|REGS|destB[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:10:rx|Q\(5),
	datab => \dp|REGS|destB[3]~2_combout\,
	datac => \dp|REGS|r1:2:rx|Q\(5),
	datad => \dp|REGS|destB[2]~3_combout\,
	combout => \dp|REGS|Mux26~0_combout\);

-- Location: LCCOMB_X56_Y49_N30
\dp|REGS|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux26~1_combout\ = (\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|Mux26~0_combout\ & (\dp|REGS|r1:14:rx|Q\(5))) # (!\dp|REGS|Mux26~0_combout\ & ((\dp|REGS|r1:6:rx|Q\(5)))))) # (!\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|r1:14:rx|Q\(5),
	datac => \dp|REGS|r1:6:rx|Q\(5),
	datad => \dp|REGS|Mux26~0_combout\,
	combout => \dp|REGS|Mux26~1_combout\);

-- Location: FF_X54_Y49_N29
\dp|REGS|r1:4:rx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[5]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:4:rx|Q\(5));

-- Location: FF_X55_Y49_N3
\dp|REGS|r1:12:rx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[5]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:12:rx|Q\(5));

-- Location: FF_X53_Y49_N27
\dp|REGS|r1:0:rx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[5]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:0:rx|Q\(5));

-- Location: FF_X54_Y49_N19
\dp|REGS|r1:8:rx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[5]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:8:rx|Q\(5));

-- Location: LCCOMB_X54_Y49_N18
\dp|REGS|Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux26~4_combout\ = (\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|destB[3]~2_combout\)))) # (!\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|r1:8:rx|Q\(5)))) # (!\dp|REGS|destB[3]~2_combout\ & (\dp|REGS|r1:0:rx|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|r1:0:rx|Q\(5),
	datac => \dp|REGS|r1:8:rx|Q\(5),
	datad => \dp|REGS|destB[3]~2_combout\,
	combout => \dp|REGS|Mux26~4_combout\);

-- Location: LCCOMB_X55_Y49_N0
\dp|REGS|Mux26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux26~5_combout\ = (\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|Mux26~4_combout\ & ((\dp|REGS|r1:12:rx|Q\(5)))) # (!\dp|REGS|Mux26~4_combout\ & (\dp|REGS|r1:4:rx|Q\(5))))) # (!\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|Mux26~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:4:rx|Q\(5),
	datab => \dp|REGS|r1:12:rx|Q\(5),
	datac => \dp|REGS|destB[2]~3_combout\,
	datad => \dp|REGS|Mux26~4_combout\,
	combout => \dp|REGS|Mux26~5_combout\);

-- Location: FF_X49_Y49_N11
\dp|REGS|r1:13:rx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[5]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:13:rx|Q\(5));

-- Location: FF_X48_Y50_N15
\dp|REGS|r1:5:rx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[5]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:5:rx|Q\(5));

-- Location: FF_X50_Y49_N23
\dp|REGS|r1:1:rx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[5]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:1:rx|Q\(5));

-- Location: LCCOMB_X50_Y49_N22
\dp|REGS|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux26~2_combout\ = (\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|r1:5:rx|Q\(5)) # ((\dp|REGS|destB[3]~2_combout\)))) # (!\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|r1:1:rx|Q\(5) & !\dp|REGS|destB[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|r1:5:rx|Q\(5),
	datac => \dp|REGS|r1:1:rx|Q\(5),
	datad => \dp|REGS|destB[3]~2_combout\,
	combout => \dp|REGS|Mux26~2_combout\);

-- Location: LCCOMB_X49_Y49_N10
\dp|REGS|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux26~3_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|Mux26~2_combout\ & ((\dp|REGS|r1:13:rx|Q\(5)))) # (!\dp|REGS|Mux26~2_combout\ & (\dp|REGS|r1:9:rx|Q\(5))))) # (!\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:9:rx|Q\(5),
	datab => \dp|REGS|destB[3]~2_combout\,
	datac => \dp|REGS|r1:13:rx|Q\(5),
	datad => \dp|REGS|Mux26~2_combout\,
	combout => \dp|REGS|Mux26~3_combout\);

-- Location: LCCOMB_X56_Y49_N20
\dp|REGS|Mux26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux26~6_combout\ = (\dp|REGS|destB[1]~0_combout\ & (\dp|REGS|destB[0]~1_combout\)) # (!\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|Mux26~3_combout\))) # (!\dp|REGS|destB[0]~1_combout\ & 
-- (\dp|REGS|Mux26~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|Mux26~5_combout\,
	datad => \dp|REGS|Mux26~3_combout\,
	combout => \dp|REGS|Mux26~6_combout\);

-- Location: LCCOMB_X56_Y49_N14
\dp|REGS|Mux26~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux26~9_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|Mux26~6_combout\ & (\dp|REGS|Mux26~8_combout\)) # (!\dp|REGS|Mux26~6_combout\ & ((\dp|REGS|Mux26~1_combout\))))) # (!\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|Mux26~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|Mux26~8_combout\,
	datac => \dp|REGS|Mux26~1_combout\,
	datad => \dp|REGS|Mux26~6_combout\,
	combout => \dp|REGS|Mux26~9_combout\);

-- Location: FF_X56_Y49_N25
\dp|REG_B|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|REGS|Mux26~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_B|Q\(5));

-- Location: LCCOMB_X48_Y48_N14
\dp|opB[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[5]~14_combout\ = (\dp|opB[0]~5_combout\ & (\dp|opB[5]~13_combout\)) # (!\dp|opB[0]~5_combout\ & ((\dp|REG_B|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[5]~13_combout\,
	datab => \dp|REG_B|Q\(5),
	datac => \dp|opB[0]~5_combout\,
	combout => \dp|opB[5]~14_combout\);

-- Location: LCCOMB_X48_Y47_N2
\dp|carry~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|carry~4_combout\ = (\dp|addB[4]~3_combout\ & ((\dp|carry~3_combout\) # (\ctrl|Equal31~5_combout\ $ (\dp|opA[4]~3_combout\)))) # (!\dp|addB[4]~3_combout\ & (\dp|carry~3_combout\ & (\ctrl|Equal31~5_combout\ $ (\dp|opA[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~5_combout\,
	datab => \dp|opA[4]~3_combout\,
	datac => \dp|addB[4]~3_combout\,
	datad => \dp|carry~3_combout\,
	combout => \dp|carry~4_combout\);

-- Location: LCCOMB_X48_Y48_N20
\dp|addB[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|addB[5]~2_combout\ = \ctrl|Equal31~4_combout\ $ (((\dp|opB[0]~5_combout\ & ((\dp|opB[5]~13_combout\))) # (!\dp|opB[0]~5_combout\ & (\dp|REG_B|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~4_combout\,
	datab => \dp|REG_B|Q\(5),
	datac => \dp|opB[5]~13_combout\,
	datad => \dp|opB[0]~5_combout\,
	combout => \dp|addB[5]~2_combout\);

-- Location: LCCOMB_X48_Y48_N26
\dp|add[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|add\(5) = \dp|carry~4_combout\ $ (\ctrl|Equal31~5_combout\ $ (\dp|opA[5]~2_combout\ $ (\dp|addB[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|carry~4_combout\,
	datab => \ctrl|Equal31~5_combout\,
	datac => \dp|opA[5]~2_combout\,
	datad => \dp|addB[5]~2_combout\,
	combout => \dp|add\(5));

-- Location: LCCOMB_X48_Y48_N8
\dp|outalu[5]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[5]~113_combout\ = (\dp|opA[5]~2_combout\ & ((\dp|outalu[10]~24_combout\) # ((!\dp|outalu[10]~23_combout\ & \dp|opB[5]~14_combout\)))) # (!\dp|opA[5]~2_combout\ & (\dp|outalu[10]~24_combout\ & ((\dp|outalu[10]~23_combout\) # 
-- (\dp|opB[5]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[5]~2_combout\,
	datab => \dp|outalu[10]~23_combout\,
	datac => \dp|opB[5]~14_combout\,
	datad => \dp|outalu[10]~24_combout\,
	combout => \dp|outalu[5]~113_combout\);

-- Location: LCCOMB_X47_Y47_N10
\dp|carry~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|carry~5_combout\ = (\dp|addB[5]~2_combout\ & ((\dp|carry~4_combout\) # (\ctrl|Equal31~5_combout\ $ (\dp|opA[5]~2_combout\)))) # (!\dp|addB[5]~2_combout\ & (\dp|carry~4_combout\ & (\ctrl|Equal31~5_combout\ $ (\dp|opA[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~5_combout\,
	datab => \dp|addB[5]~2_combout\,
	datac => \dp|opA[5]~2_combout\,
	datad => \dp|carry~4_combout\,
	combout => \dp|carry~5_combout\);

-- Location: FF_X50_Y51_N27
\dp|REGS|r1:1:rx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[6]~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:1:rx|Q\(6));

-- Location: FF_X54_Y50_N21
\dp|REGS|r1:3:rx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[6]~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:3:rx|Q\(6));

-- Location: FF_X55_Y50_N21
\dp|REGS|r1:0:rx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[6]~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:0:rx|Q\(6));

-- Location: FF_X53_Y51_N25
\dp|REGS|r1:2:rx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[6]~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:2:rx|Q\(6));

-- Location: LCCOMB_X52_Y50_N14
\dp|REGS|Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux25~4_combout\ = (\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|destB[1]~0_combout\)))) # (!\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|r1:2:rx|Q\(6)))) # (!\dp|REGS|destB[1]~0_combout\ & (\dp|REGS|r1:0:rx|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:0:rx|Q\(6),
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|r1:2:rx|Q\(6),
	datad => \dp|REGS|destB[1]~0_combout\,
	combout => \dp|REGS|Mux25~4_combout\);

-- Location: LCCOMB_X49_Y50_N12
\dp|REGS|Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux25~5_combout\ = (\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|Mux25~4_combout\ & ((\dp|REGS|r1:3:rx|Q\(6)))) # (!\dp|REGS|Mux25~4_combout\ & (\dp|REGS|r1:1:rx|Q\(6))))) # (!\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|Mux25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:1:rx|Q\(6),
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|r1:3:rx|Q\(6),
	datad => \dp|REGS|Mux25~4_combout\,
	combout => \dp|REGS|Mux25~5_combout\);

-- Location: LCCOMB_X53_Y50_N16
\dp|REGS|r1:11:rx|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:11:rx|Q[6]~feeder_combout\ = \dp|dtreg[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|dtreg[6]~6_combout\,
	combout => \dp|REGS|r1:11:rx|Q[6]~feeder_combout\);

-- Location: FF_X53_Y50_N17
\dp|REGS|r1:11:rx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:11:rx|Q[6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:11:rx|Q\(6));

-- Location: LCCOMB_X54_Y51_N30
\dp|REGS|r1:10:rx|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:10:rx|Q[6]~feeder_combout\ = \dp|dtreg[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|dtreg[6]~6_combout\,
	combout => \dp|REGS|r1:10:rx|Q[6]~feeder_combout\);

-- Location: FF_X54_Y51_N31
\dp|REGS|r1:10:rx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:10:rx|Q[6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:10:rx|Q\(6));

-- Location: FF_X52_Y50_N5
\dp|REGS|r1:8:rx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[6]~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:8:rx|Q\(6));

-- Location: LCCOMB_X52_Y50_N4
\dp|REGS|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux25~2_combout\ = (\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|destB[1]~0_combout\)))) # (!\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|destB[1]~0_combout\ & (\dp|REGS|r1:10:rx|Q\(6))) # (!\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|r1:8:rx|Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:10:rx|Q\(6),
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|r1:8:rx|Q\(6),
	datad => \dp|REGS|destB[1]~0_combout\,
	combout => \dp|REGS|Mux25~2_combout\);

-- Location: LCCOMB_X48_Y50_N20
\dp|REGS|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux25~3_combout\ = (\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|Mux25~2_combout\ & (\dp|REGS|r1:11:rx|Q\(6))) # (!\dp|REGS|Mux25~2_combout\ & ((\dp|REGS|r1:9:rx|Q\(6)))))) # (!\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:11:rx|Q\(6),
	datab => \dp|REGS|r1:9:rx|Q\(6),
	datac => \dp|REGS|destB[0]~1_combout\,
	datad => \dp|REGS|Mux25~2_combout\,
	combout => \dp|REGS|Mux25~3_combout\);

-- Location: LCCOMB_X48_Y50_N10
\dp|REGS|Mux25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux25~6_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|destB[2]~3_combout\) # ((\dp|REGS|Mux25~3_combout\)))) # (!\dp|REGS|destB[3]~2_combout\ & (!\dp|REGS|destB[2]~3_combout\ & (\dp|REGS|Mux25~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[3]~2_combout\,
	datab => \dp|REGS|destB[2]~3_combout\,
	datac => \dp|REGS|Mux25~5_combout\,
	datad => \dp|REGS|Mux25~3_combout\,
	combout => \dp|REGS|Mux25~6_combout\);

-- Location: FF_X54_Y50_N27
\dp|REGS|r1:7:rx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[6]~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:7:rx|Q\(6));

-- Location: FF_X52_Y51_N29
\dp|REGS|r1:6:rx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[6]~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:6:rx|Q\(6));

-- Location: FF_X50_Y51_N25
\dp|REGS|r1:5:rx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[6]~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:5:rx|Q\(6));

-- Location: FF_X52_Y50_N23
\dp|REGS|r1:4:rx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[6]~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:4:rx|Q\(6));

-- Location: LCCOMB_X52_Y50_N22
\dp|REGS|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux25~0_combout\ = (\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|destB[0]~1_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|destB[0]~1_combout\ & (\dp|REGS|r1:5:rx|Q\(6))) # (!\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|r1:4:rx|Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|r1:5:rx|Q\(6),
	datac => \dp|REGS|r1:4:rx|Q\(6),
	datad => \dp|REGS|destB[0]~1_combout\,
	combout => \dp|REGS|Mux25~0_combout\);

-- Location: LCCOMB_X52_Y51_N28
\dp|REGS|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux25~1_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|Mux25~0_combout\ & (\dp|REGS|r1:7:rx|Q\(6))) # (!\dp|REGS|Mux25~0_combout\ & ((\dp|REGS|r1:6:rx|Q\(6)))))) # (!\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|r1:7:rx|Q\(6),
	datac => \dp|REGS|r1:6:rx|Q\(6),
	datad => \dp|REGS|Mux25~0_combout\,
	combout => \dp|REGS|Mux25~1_combout\);

-- Location: FF_X47_Y50_N23
\dp|REGS|r1:15:rx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|dtreg[6]~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:15:rx|Q\(6));

-- Location: FF_X52_Y51_N19
\dp|REGS|r1:14:rx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[6]~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:14:rx|Q\(6));

-- Location: FF_X55_Y49_N31
\dp|REGS|r1:12:rx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[6]~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:12:rx|Q\(6));

-- Location: FF_X49_Y52_N27
\dp|REGS|r1:13:rx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[6]~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:13:rx|Q\(6));

-- Location: LCCOMB_X49_Y52_N26
\dp|REGS|Mux25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux25~7_combout\ = (\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|destB[0]~1_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|r1:13:rx|Q\(6)))) # (!\dp|REGS|destB[0]~1_combout\ & 
-- (\dp|REGS|r1:12:rx|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:12:rx|Q\(6),
	datab => \dp|REGS|destB[1]~0_combout\,
	datac => \dp|REGS|r1:13:rx|Q\(6),
	datad => \dp|REGS|destB[0]~1_combout\,
	combout => \dp|REGS|Mux25~7_combout\);

-- Location: LCCOMB_X48_Y50_N12
\dp|REGS|Mux25~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux25~8_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|Mux25~7_combout\ & (\dp|REGS|r1:15:rx|Q\(6))) # (!\dp|REGS|Mux25~7_combout\ & ((\dp|REGS|r1:14:rx|Q\(6)))))) # (!\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|Mux25~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:15:rx|Q\(6),
	datab => \dp|REGS|destB[1]~0_combout\,
	datac => \dp|REGS|r1:14:rx|Q\(6),
	datad => \dp|REGS|Mux25~7_combout\,
	combout => \dp|REGS|Mux25~8_combout\);

-- Location: LCCOMB_X48_Y50_N22
\dp|REGS|Mux25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux25~9_combout\ = (\dp|REGS|Mux25~6_combout\ & (((\dp|REGS|Mux25~8_combout\)) # (!\dp|REGS|destB[2]~3_combout\))) # (!\dp|REGS|Mux25~6_combout\ & (\dp|REGS|destB[2]~3_combout\ & (\dp|REGS|Mux25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux25~6_combout\,
	datab => \dp|REGS|destB[2]~3_combout\,
	datac => \dp|REGS|Mux25~1_combout\,
	datad => \dp|REGS|Mux25~8_combout\,
	combout => \dp|REGS|Mux25~9_combout\);

-- Location: FF_X48_Y50_N27
\dp|REG_B|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|REGS|Mux25~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_B|Q\(6));

-- Location: LCCOMB_X46_Y51_N12
\dp|RPC|Q[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RPC|Q[6]~28_combout\ = (\dp|RPC|Q\(6) & (\dp|RPC|Q[5]~27\ $ (GND))) # (!\dp|RPC|Q\(6) & (!\dp|RPC|Q[5]~27\ & VCC))
-- \dp|RPC|Q[6]~29\ = CARRY((\dp|RPC|Q\(6) & !\dp|RPC|Q[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RPC|Q\(6),
	datad => VCC,
	cin => \dp|RPC|Q[5]~27\,
	combout => \dp|RPC|Q[6]~28_combout\,
	cout => \dp|RPC|Q[6]~29\);

-- Location: LCCOMB_X47_Y50_N24
\dp|dtpc[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtpc[6]~6_combout\ = (\ctrl|EA.Srts~q\ & ((\ctrl|EA.Sfetch~q\ & (\dp|REG_alu|Q\(6))) # (!\ctrl|EA.Sfetch~q\ & ((\dataIN[6]~input_o\))))) # (!\ctrl|EA.Srts~q\ & (((\dp|REG_alu|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Srts~q\,
	datab => \ctrl|EA.Sfetch~q\,
	datac => \dp|REG_alu|Q\(6),
	datad => \dataIN[6]~input_o\,
	combout => \dp|dtpc[6]~6_combout\);

-- Location: FF_X46_Y51_N13
\dp|RPC|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RPC|Q[6]~28_combout\,
	asdata => \dp|dtpc[6]~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|ALT_INV_EA.Sfetch~q\,
	ena => \ctrl|uins.wpc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RPC|Q\(6));

-- Location: LCCOMB_X48_Y50_N8
\dp|opB[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[6]~15_combout\ = (\ctrl|uins.mb[0]~0_combout\ & (\dp|RSP|Q\(6))) # (!\ctrl|uins.mb[0]~0_combout\ & ((\dp|RPC|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|RSP|Q\(6),
	datac => \dp|RPC|Q\(6),
	datad => \ctrl|uins.mb[0]~0_combout\,
	combout => \dp|opB[6]~15_combout\);

-- Location: LCCOMB_X48_Y50_N6
\dp|addB[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|addB[6]~1_combout\ = \ctrl|Equal31~4_combout\ $ (((\dp|opB[0]~5_combout\ & ((\dp|opB[6]~15_combout\))) # (!\dp|opB[0]~5_combout\ & (\dp|REG_B|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_B|Q\(6),
	datab => \dp|opB[6]~15_combout\,
	datac => \dp|opB[0]~5_combout\,
	datad => \ctrl|Equal31~4_combout\,
	combout => \dp|addB[6]~1_combout\);

-- Location: LCCOMB_X47_Y47_N4
\dp|add[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|add\(6) = \ctrl|Equal31~5_combout\ $ (\dp|opA[6]~1_combout\ $ (\dp|carry~5_combout\ $ (\dp|addB[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~5_combout\,
	datab => \dp|opA[6]~1_combout\,
	datac => \dp|carry~5_combout\,
	datad => \dp|addB[6]~1_combout\,
	combout => \dp|add\(6));

-- Location: LCCOMB_X47_Y50_N8
\dp|outalu~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu~32_combout\ = \dp|opA[6]~1_combout\ $ (((\dp|opB[0]~5_combout\ & (\dp|opB[6]~15_combout\)) # (!\dp|opB[0]~5_combout\ & ((\dp|REG_B|Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[0]~5_combout\,
	datab => \dp|opB[6]~15_combout\,
	datac => \dp|opA[6]~1_combout\,
	datad => \dp|REG_B|Q\(6),
	combout => \dp|outalu~32_combout\);

-- Location: LCCOMB_X48_Y50_N14
\dp|opB[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[6]~16_combout\ = (\dp|opB[0]~5_combout\ & ((\dp|opB[6]~15_combout\))) # (!\dp|opB[0]~5_combout\ & (\dp|REG_B|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_B|Q\(6),
	datab => \dp|opB[6]~15_combout\,
	datad => \dp|opB[0]~5_combout\,
	combout => \dp|opB[6]~16_combout\);

-- Location: LCCOMB_X48_Y48_N18
\dp|outalu[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[6]~34_combout\ = (\dp|outalu[10]~24_combout\ & (\dp|outalu[10]~23_combout\)) # (!\dp|outalu[10]~24_combout\ & (\dp|opB[6]~16_combout\ & ((\dp|outalu[10]~23_combout\) # (\dp|opA[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~23_combout\,
	datab => \dp|outalu[10]~24_combout\,
	datac => \dp|opA[6]~1_combout\,
	datad => \dp|opB[6]~16_combout\,
	combout => \dp|outalu[6]~34_combout\);

-- Location: LCCOMB_X47_Y50_N18
\dp|outalu~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu~33_combout\ = (\dp|opA[6]~1_combout\) # ((\dp|opB[0]~5_combout\ & (\dp|opB[6]~15_combout\)) # (!\dp|opB[0]~5_combout\ & ((\dp|REG_B|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[0]~5_combout\,
	datab => \dp|opB[6]~15_combout\,
	datac => \dp|opA[6]~1_combout\,
	datad => \dp|REG_B|Q\(6),
	combout => \dp|outalu~33_combout\);

-- Location: LCCOMB_X48_Y48_N28
\dp|outalu[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[6]~35_combout\ = (\dp|outalu[7]~19_combout\ & (\dp|outalu[10]~20_combout\)) # (!\dp|outalu[7]~19_combout\ & ((\dp|outalu[10]~20_combout\ & ((\dp|opA[7]~0_combout\))) # (!\dp|outalu[10]~20_combout\ & (\dp|opA[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[7]~19_combout\,
	datab => \dp|outalu[10]~20_combout\,
	datac => \dp|opA[5]~2_combout\,
	datad => \dp|opA[7]~0_combout\,
	combout => \dp|outalu[6]~35_combout\);

-- Location: LCCOMB_X47_Y48_N6
\dp|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Add2~6_combout\ = (\dp|opB[3]~10_combout\ & (!\dp|Add2~5\)) # (!\dp|opB[3]~10_combout\ & ((\dp|Add2~5\) # (GND)))
-- \dp|Add2~7\ = CARRY((!\dp|Add2~5\) # (!\dp|opB[3]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|opB[3]~10_combout\,
	datad => VCC,
	cin => \dp|Add2~5\,
	combout => \dp|Add2~6_combout\,
	cout => \dp|Add2~7\);

-- Location: LCCOMB_X47_Y48_N8
\dp|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Add2~8_combout\ = (\dp|opB[4]~12_combout\ & (\dp|Add2~7\ $ (GND))) # (!\dp|opB[4]~12_combout\ & (!\dp|Add2~7\ & VCC))
-- \dp|Add2~9\ = CARRY((\dp|opB[4]~12_combout\ & !\dp|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[4]~12_combout\,
	datad => VCC,
	cin => \dp|Add2~7\,
	combout => \dp|Add2~8_combout\,
	cout => \dp|Add2~9\);

-- Location: LCCOMB_X47_Y48_N10
\dp|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Add2~10_combout\ = (\dp|opB[5]~14_combout\ & (!\dp|Add2~9\)) # (!\dp|opB[5]~14_combout\ & ((\dp|Add2~9\) # (GND)))
-- \dp|Add2~11\ = CARRY((!\dp|Add2~9\) # (!\dp|opB[5]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|opB[5]~14_combout\,
	datad => VCC,
	cin => \dp|Add2~9\,
	combout => \dp|Add2~10_combout\,
	cout => \dp|Add2~11\);

-- Location: LCCOMB_X47_Y48_N12
\dp|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Add2~12_combout\ = (\dp|opB[6]~16_combout\ & (\dp|Add2~11\ $ (GND))) # (!\dp|opB[6]~16_combout\ & (!\dp|Add2~11\ & VCC))
-- \dp|Add2~13\ = CARRY((\dp|opB[6]~16_combout\ & !\dp|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|opB[6]~16_combout\,
	datad => VCC,
	cin => \dp|Add2~11\,
	combout => \dp|Add2~12_combout\,
	cout => \dp|Add2~13\);

-- Location: LCCOMB_X48_Y48_N10
\dp|outalu[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[6]~36_combout\ = (\dp|outalu[7]~19_combout\ & ((\dp|outalu[6]~35_combout\ & ((\dp|Add2~12_combout\))) # (!\dp|outalu[6]~35_combout\ & (!\dp|opA[6]~1_combout\)))) # (!\dp|outalu[7]~19_combout\ & (\dp|outalu[6]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[7]~19_combout\,
	datab => \dp|outalu[6]~35_combout\,
	datac => \dp|opA[6]~1_combout\,
	datad => \dp|Add2~12_combout\,
	combout => \dp|outalu[6]~36_combout\);

-- Location: LCCOMB_X48_Y48_N16
\dp|outalu[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[6]~37_combout\ = (\dp|outalu[6]~34_combout\ & (((\dp|outalu[6]~36_combout\)) # (!\dp|outalu[10]~24_combout\))) # (!\dp|outalu[6]~34_combout\ & (\dp|outalu[10]~24_combout\ & (\dp|outalu~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[6]~34_combout\,
	datab => \dp|outalu[10]~24_combout\,
	datac => \dp|outalu~33_combout\,
	datad => \dp|outalu[6]~36_combout\,
	combout => \dp|outalu[6]~37_combout\);

-- Location: LCCOMB_X45_Y47_N28
\dp|outalu[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[6]~38_combout\ = (\dp|outalu[10]~17_combout\ & (\dp|outalu[10]~16_combout\)) # (!\dp|outalu[10]~17_combout\ & ((\dp|outalu[10]~16_combout\ & (\dp|outalu~32_combout\)) # (!\dp|outalu[10]~16_combout\ & ((\dp|outalu[6]~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~17_combout\,
	datab => \dp|outalu[10]~16_combout\,
	datac => \dp|outalu~32_combout\,
	datad => \dp|outalu[6]~37_combout\,
	combout => \dp|outalu[6]~38_combout\);

-- Location: LCCOMB_X45_Y47_N26
\dp|outalu[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[6]~39_combout\ = (\dp|outalu[10]~17_combout\ & ((\dp|outalu[6]~38_combout\ & (\dp|opA[6]~1_combout\)) # (!\dp|outalu[6]~38_combout\ & ((\dp|add\(6)))))) # (!\dp|outalu[10]~17_combout\ & (((\dp|outalu[6]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[6]~1_combout\,
	datab => \dp|add\(6),
	datac => \dp|outalu[10]~17_combout\,
	datad => \dp|outalu[6]~38_combout\,
	combout => \dp|outalu[6]~39_combout\);

-- Location: LCCOMB_X45_Y47_N22
\dp|outalu[6]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[6]~143_combout\ = (\dp|outalu[10]~30_combout\ & (\dp|REG_A|Q\(6))) # (!\dp|outalu[10]~30_combout\ & ((\dp|outalu[6]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_A|Q\(6),
	datab => \dp|outalu[10]~30_combout\,
	datac => \dp|outalu[6]~39_combout\,
	combout => \dp|outalu[6]~143_combout\);

-- Location: FF_X45_Y47_N23
\dp|REG_alu|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|outalu[6]~143_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Salu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_alu|Q\(6));

-- Location: LCCOMB_X47_Y50_N22
\dp|dtreg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtreg[6]~6_combout\ = (\ctrl|uins.mreg~combout\ & (\dataIN[6]~input_o\)) # (!\ctrl|uins.mreg~combout\ & ((\dp|REG_alu|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIN[6]~input_o\,
	datac => \dp|REG_alu|Q\(6),
	datad => \ctrl|uins.mreg~combout\,
	combout => \dp|dtreg[6]~6_combout\);

-- Location: LCCOMB_X49_Y52_N8
\dp|REGS|r1:9:rx|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:9:rx|Q[6]~feeder_combout\ = \dp|dtreg[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|dtreg[6]~6_combout\,
	combout => \dp|REGS|r1:9:rx|Q[6]~feeder_combout\);

-- Location: FF_X49_Y52_N9
\dp|REGS|r1:9:rx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:9:rx|Q[6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:9:rx|Q\(6));

-- Location: LCCOMB_X50_Y51_N26
\dp|REGS|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux9~0_combout\ = (\dp|RIR|Q\(6) & (((\dp|RIR|Q\(7))))) # (!\dp|RIR|Q\(6) & ((\dp|RIR|Q\(7) & (\dp|REGS|r1:9:rx|Q\(6))) # (!\dp|RIR|Q\(7) & ((\dp|REGS|r1:1:rx|Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|REGS|r1:9:rx|Q\(6),
	datac => \dp|REGS|r1:1:rx|Q\(6),
	datad => \dp|RIR|Q\(7),
	combout => \dp|REGS|Mux9~0_combout\);

-- Location: LCCOMB_X50_Y51_N24
\dp|REGS|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux9~1_combout\ = (\dp|REGS|Mux9~0_combout\ & ((\dp|REGS|r1:13:rx|Q\(6)) # ((!\dp|RIR|Q\(6))))) # (!\dp|REGS|Mux9~0_combout\ & (((\dp|REGS|r1:5:rx|Q\(6) & \dp|RIR|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux9~0_combout\,
	datab => \dp|REGS|r1:13:rx|Q\(6),
	datac => \dp|REGS|r1:5:rx|Q\(6),
	datad => \dp|RIR|Q\(6),
	combout => \dp|REGS|Mux9~1_combout\);

-- Location: LCCOMB_X55_Y50_N20
\dp|REGS|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux9~4_combout\ = (\dp|RIR|Q\(7) & (\dp|RIR|Q\(6))) # (!\dp|RIR|Q\(7) & ((\dp|RIR|Q\(6) & ((\dp|REGS|r1:4:rx|Q\(6)))) # (!\dp|RIR|Q\(6) & (\dp|REGS|r1:0:rx|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(7),
	datab => \dp|RIR|Q\(6),
	datac => \dp|REGS|r1:0:rx|Q\(6),
	datad => \dp|REGS|r1:4:rx|Q\(6),
	combout => \dp|REGS|Mux9~4_combout\);

-- Location: LCCOMB_X55_Y49_N30
\dp|REGS|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux9~5_combout\ = (\dp|RIR|Q\(7) & ((\dp|REGS|Mux9~4_combout\ & ((\dp|REGS|r1:12:rx|Q\(6)))) # (!\dp|REGS|Mux9~4_combout\ & (\dp|REGS|r1:8:rx|Q\(6))))) # (!\dp|RIR|Q\(7) & (((\dp|REGS|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(7),
	datab => \dp|REGS|r1:8:rx|Q\(6),
	datac => \dp|REGS|r1:12:rx|Q\(6),
	datad => \dp|REGS|Mux9~4_combout\,
	combout => \dp|REGS|Mux9~5_combout\);

-- Location: LCCOMB_X53_Y51_N24
\dp|REGS|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux9~2_combout\ = (\dp|RIR|Q\(6) & ((\dp|REGS|r1:6:rx|Q\(6)) # ((\dp|RIR|Q\(7))))) # (!\dp|RIR|Q\(6) & (((\dp|REGS|r1:2:rx|Q\(6) & !\dp|RIR|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|REGS|r1:6:rx|Q\(6),
	datac => \dp|REGS|r1:2:rx|Q\(6),
	datad => \dp|RIR|Q\(7),
	combout => \dp|REGS|Mux9~2_combout\);

-- Location: LCCOMB_X52_Y51_N18
\dp|REGS|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux9~3_combout\ = (\dp|REGS|Mux9~2_combout\ & (((\dp|REGS|r1:14:rx|Q\(6)) # (!\dp|RIR|Q\(7))))) # (!\dp|REGS|Mux9~2_combout\ & (\dp|REGS|r1:10:rx|Q\(6) & ((\dp|RIR|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux9~2_combout\,
	datab => \dp|REGS|r1:10:rx|Q\(6),
	datac => \dp|REGS|r1:14:rx|Q\(6),
	datad => \dp|RIR|Q\(7),
	combout => \dp|REGS|Mux9~3_combout\);

-- Location: LCCOMB_X55_Y49_N12
\dp|REGS|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux9~6_combout\ = (\dp|RIR|Q\(5) & ((\dp|RIR|Q\(4)) # ((\dp|REGS|Mux9~3_combout\)))) # (!\dp|RIR|Q\(5) & (!\dp|RIR|Q\(4) & (\dp|REGS|Mux9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|Mux9~5_combout\,
	datad => \dp|REGS|Mux9~3_combout\,
	combout => \dp|REGS|Mux9~6_combout\);

-- Location: LCCOMB_X54_Y50_N20
\dp|REGS|Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux9~7_combout\ = (\dp|RIR|Q\(6) & (\dp|RIR|Q\(7))) # (!\dp|RIR|Q\(6) & ((\dp|RIR|Q\(7) & ((\dp|REGS|r1:11:rx|Q\(6)))) # (!\dp|RIR|Q\(7) & (\dp|REGS|r1:3:rx|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|RIR|Q\(7),
	datac => \dp|REGS|r1:3:rx|Q\(6),
	datad => \dp|REGS|r1:11:rx|Q\(6),
	combout => \dp|REGS|Mux9~7_combout\);

-- Location: LCCOMB_X54_Y50_N26
\dp|REGS|Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux9~8_combout\ = (\dp|RIR|Q\(6) & ((\dp|REGS|Mux9~7_combout\ & (\dp|REGS|r1:15:rx|Q\(6))) # (!\dp|REGS|Mux9~7_combout\ & ((\dp|REGS|r1:7:rx|Q\(6)))))) # (!\dp|RIR|Q\(6) & (((\dp|REGS|Mux9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|REGS|r1:15:rx|Q\(6),
	datac => \dp|REGS|r1:7:rx|Q\(6),
	datad => \dp|REGS|Mux9~7_combout\,
	combout => \dp|REGS|Mux9~8_combout\);

-- Location: LCCOMB_X48_Y49_N12
\dp|REGS|Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux9~9_combout\ = (\dp|REGS|Mux9~6_combout\ & (((\dp|REGS|Mux9~8_combout\) # (!\dp|RIR|Q\(4))))) # (!\dp|REGS|Mux9~6_combout\ & (\dp|REGS|Mux9~1_combout\ & ((\dp|RIR|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux9~1_combout\,
	datab => \dp|REGS|Mux9~6_combout\,
	datac => \dp|REGS|Mux9~8_combout\,
	datad => \dp|RIR|Q\(4),
	combout => \dp|REGS|Mux9~9_combout\);

-- Location: FF_X48_Y49_N13
\dp|REG_A|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|Mux9~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_A|Q\(6));

-- Location: LCCOMB_X48_Y49_N22
\dp|opA[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opA[6]~1_combout\ = (\ctrl|i.jumpD~8_combout\ & (((\dp|RIR|Q\(6))))) # (!\ctrl|i.jumpD~8_combout\ & ((\ctrl|uins.ma~0_combout\ & (\dp|RIR|Q\(6))) # (!\ctrl|uins.ma~0_combout\ & ((\dp|REG_A|Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|i.jumpD~8_combout\,
	datab => \ctrl|uins.ma~0_combout\,
	datac => \dp|RIR|Q\(6),
	datad => \dp|REG_A|Q\(6),
	combout => \dp|opA[6]~1_combout\);

-- Location: LCCOMB_X48_Y48_N22
\dp|outalu[5]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[5]~114_combout\ = (\dp|outalu[7]~19_combout\ & ((\dp|outalu[10]~20_combout\) # ((!\dp|opA[5]~2_combout\)))) # (!\dp|outalu[7]~19_combout\ & (!\dp|outalu[10]~20_combout\ & ((\dp|opA[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[7]~19_combout\,
	datab => \dp|outalu[10]~20_combout\,
	datac => \dp|opA[5]~2_combout\,
	datad => \dp|opA[4]~3_combout\,
	combout => \dp|outalu[5]~114_combout\);

-- Location: LCCOMB_X48_Y48_N24
\dp|outalu[5]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[5]~115_combout\ = (\dp|outalu[10]~20_combout\ & ((\dp|outalu[5]~114_combout\ & ((\dp|Add2~10_combout\))) # (!\dp|outalu[5]~114_combout\ & (\dp|opA[6]~1_combout\)))) # (!\dp|outalu[10]~20_combout\ & (((\dp|outalu[5]~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[6]~1_combout\,
	datab => \dp|outalu[10]~20_combout\,
	datac => \dp|outalu[5]~114_combout\,
	datad => \dp|Add2~10_combout\,
	combout => \dp|outalu[5]~115_combout\);

-- Location: LCCOMB_X48_Y48_N6
\dp|outalu[5]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[5]~116_combout\ = (\dp|outalu[10]~23_combout\ & ((\dp|outalu[5]~113_combout\ & ((\dp|outalu[5]~115_combout\))) # (!\dp|outalu[5]~113_combout\ & (\dp|opB[5]~14_combout\)))) # (!\dp|outalu[10]~23_combout\ & (((\dp|outalu[5]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~23_combout\,
	datab => \dp|opB[5]~14_combout\,
	datac => \dp|outalu[5]~113_combout\,
	datad => \dp|outalu[5]~115_combout\,
	combout => \dp|outalu[5]~116_combout\);

-- Location: LCCOMB_X48_Y48_N0
\dp|outalu[5]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[5]~117_combout\ = (\dp|outalu[10]~17_combout\ & ((\dp|outalu[10]~16_combout\) # ((\dp|add\(5))))) # (!\dp|outalu[10]~17_combout\ & (!\dp|outalu[10]~16_combout\ & ((\dp|outalu[5]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~17_combout\,
	datab => \dp|outalu[10]~16_combout\,
	datac => \dp|add\(5),
	datad => \dp|outalu[5]~116_combout\,
	combout => \dp|outalu[5]~117_combout\);

-- Location: LCCOMB_X48_Y48_N2
\dp|outalu[5]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[5]~118_combout\ = (\dp|outalu[10]~16_combout\ & (\dp|opA[5]~2_combout\ $ (((\dp|opB[5]~14_combout\ & !\dp|outalu[5]~117_combout\))))) # (!\dp|outalu[10]~16_combout\ & (((\dp|outalu[5]~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[5]~2_combout\,
	datab => \dp|outalu[10]~16_combout\,
	datac => \dp|opB[5]~14_combout\,
	datad => \dp|outalu[5]~117_combout\,
	combout => \dp|outalu[5]~118_combout\);

-- Location: LCCOMB_X48_Y48_N4
\dp|outalu[5]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[5]~119_combout\ = (\dp|outalu[10]~30_combout\ & (\dp|REG_A|Q\(5))) # (!\dp|outalu[10]~30_combout\ & ((\dp|outalu[5]~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|outalu[10]~30_combout\,
	datac => \dp|REG_A|Q\(5),
	datad => \dp|outalu[5]~118_combout\,
	combout => \dp|outalu[5]~119_combout\);

-- Location: FF_X48_Y48_N5
\dp|REG_alu|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|outalu[5]~119_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Salu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_alu|Q\(5));

-- Location: LCCOMB_X47_Y50_N4
\dp|dtreg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtreg[5]~5_combout\ = (\ctrl|uins.mreg~combout\ & ((\dataIN[5]~input_o\))) # (!\ctrl|uins.mreg~combout\ & (\dp|REG_alu|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|REG_alu|Q\(5),
	datac => \dataIN[5]~input_o\,
	datad => \ctrl|uins.mreg~combout\,
	combout => \dp|dtreg[5]~5_combout\);

-- Location: FF_X49_Y49_N13
\dp|REGS|r1:9:rx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[5]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:9:rx|Q\(5));

-- Location: LCCOMB_X49_Y49_N12
\dp|REGS|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux10~0_combout\ = (\dp|RIR|Q\(4) & ((\dp|RIR|Q\(5)) # ((\dp|REGS|r1:9:rx|Q\(5))))) # (!\dp|RIR|Q\(4) & (!\dp|RIR|Q\(5) & ((\dp|REGS|r1:8:rx|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(4),
	datab => \dp|RIR|Q\(5),
	datac => \dp|REGS|r1:9:rx|Q\(5),
	datad => \dp|REGS|r1:8:rx|Q\(5),
	combout => \dp|REGS|Mux10~0_combout\);

-- Location: LCCOMB_X54_Y51_N16
\dp|REGS|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux10~1_combout\ = (\dp|REGS|Mux10~0_combout\ & (((\dp|REGS|r1:11:rx|Q\(5))) # (!\dp|RIR|Q\(5)))) # (!\dp|REGS|Mux10~0_combout\ & (\dp|RIR|Q\(5) & (\dp|REGS|r1:10:rx|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux10~0_combout\,
	datab => \dp|RIR|Q\(5),
	datac => \dp|REGS|r1:10:rx|Q\(5),
	datad => \dp|REGS|r1:11:rx|Q\(5),
	combout => \dp|REGS|Mux10~1_combout\);

-- Location: LCCOMB_X55_Y49_N2
\dp|REGS|Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux10~7_combout\ = (\dp|RIR|Q\(5) & ((\dp|RIR|Q\(4)) # ((\dp|REGS|r1:14:rx|Q\(5))))) # (!\dp|RIR|Q\(5) & (!\dp|RIR|Q\(4) & (\dp|REGS|r1:12:rx|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:12:rx|Q\(5),
	datad => \dp|REGS|r1:14:rx|Q\(5),
	combout => \dp|REGS|Mux10~7_combout\);

-- Location: LCCOMB_X54_Y49_N4
\dp|REGS|Mux10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux10~8_combout\ = (\dp|RIR|Q\(4) & ((\dp|REGS|Mux10~7_combout\ & (\dp|REGS|r1:15:rx|Q\(5))) # (!\dp|REGS|Mux10~7_combout\ & ((\dp|REGS|r1:13:rx|Q\(5)))))) # (!\dp|RIR|Q\(4) & (((\dp|REGS|Mux10~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(4),
	datab => \dp|REGS|r1:15:rx|Q\(5),
	datac => \dp|REGS|r1:13:rx|Q\(5),
	datad => \dp|REGS|Mux10~7_combout\,
	combout => \dp|REGS|Mux10~8_combout\);

-- Location: LCCOMB_X53_Y49_N26
\dp|REGS|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux10~4_combout\ = (\dp|RIR|Q\(5) & (\dp|RIR|Q\(4))) # (!\dp|RIR|Q\(5) & ((\dp|RIR|Q\(4) & ((\dp|REGS|r1:1:rx|Q\(5)))) # (!\dp|RIR|Q\(4) & (\dp|REGS|r1:0:rx|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:0:rx|Q\(5),
	datad => \dp|REGS|r1:1:rx|Q\(5),
	combout => \dp|REGS|Mux10~4_combout\);

-- Location: LCCOMB_X54_Y50_N16
\dp|REGS|Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux10~5_combout\ = (\dp|REGS|Mux10~4_combout\ & (((\dp|REGS|r1:3:rx|Q\(5))) # (!\dp|RIR|Q\(5)))) # (!\dp|REGS|Mux10~4_combout\ & (\dp|RIR|Q\(5) & ((\dp|REGS|r1:2:rx|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux10~4_combout\,
	datab => \dp|RIR|Q\(5),
	datac => \dp|REGS|r1:3:rx|Q\(5),
	datad => \dp|REGS|r1:2:rx|Q\(5),
	combout => \dp|REGS|Mux10~5_combout\);

-- Location: LCCOMB_X54_Y49_N28
\dp|REGS|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux10~2_combout\ = (\dp|RIR|Q\(4) & (((\dp|RIR|Q\(5))))) # (!\dp|RIR|Q\(4) & ((\dp|RIR|Q\(5) & (\dp|REGS|r1:6:rx|Q\(5))) # (!\dp|RIR|Q\(5) & ((\dp|REGS|r1:4:rx|Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(4),
	datab => \dp|REGS|r1:6:rx|Q\(5),
	datac => \dp|REGS|r1:4:rx|Q\(5),
	datad => \dp|RIR|Q\(5),
	combout => \dp|REGS|Mux10~2_combout\);

-- Location: LCCOMB_X52_Y49_N22
\dp|REGS|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux10~3_combout\ = (\dp|REGS|Mux10~2_combout\ & (((\dp|REGS|r1:7:rx|Q\(5)) # (!\dp|RIR|Q\(4))))) # (!\dp|REGS|Mux10~2_combout\ & (\dp|REGS|r1:5:rx|Q\(5) & ((\dp|RIR|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux10~2_combout\,
	datab => \dp|REGS|r1:5:rx|Q\(5),
	datac => \dp|REGS|r1:7:rx|Q\(5),
	datad => \dp|RIR|Q\(4),
	combout => \dp|REGS|Mux10~3_combout\);

-- Location: LCCOMB_X55_Y49_N26
\dp|REGS|Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux10~6_combout\ = (\dp|RIR|Q\(7) & (((\dp|RIR|Q\(6))))) # (!\dp|RIR|Q\(7) & ((\dp|RIR|Q\(6) & ((\dp|REGS|Mux10~3_combout\))) # (!\dp|RIR|Q\(6) & (\dp|REGS|Mux10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(7),
	datab => \dp|REGS|Mux10~5_combout\,
	datac => \dp|REGS|Mux10~3_combout\,
	datad => \dp|RIR|Q\(6),
	combout => \dp|REGS|Mux10~6_combout\);

-- Location: LCCOMB_X48_Y49_N4
\dp|REGS|Mux10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux10~9_combout\ = (\dp|RIR|Q\(7) & ((\dp|REGS|Mux10~6_combout\ & ((\dp|REGS|Mux10~8_combout\))) # (!\dp|REGS|Mux10~6_combout\ & (\dp|REGS|Mux10~1_combout\)))) # (!\dp|RIR|Q\(7) & (((\dp|REGS|Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(7),
	datab => \dp|REGS|Mux10~1_combout\,
	datac => \dp|REGS|Mux10~8_combout\,
	datad => \dp|REGS|Mux10~6_combout\,
	combout => \dp|REGS|Mux10~9_combout\);

-- Location: FF_X48_Y49_N5
\dp|REG_A|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|Mux10~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_A|Q\(5));

-- Location: LCCOMB_X48_Y49_N30
\dp|opA[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opA[5]~2_combout\ = (\ctrl|i.jumpD~8_combout\ & (\dp|RIR|Q\(5))) # (!\ctrl|i.jumpD~8_combout\ & ((\ctrl|uins.ma~0_combout\ & (\dp|RIR|Q\(5))) # (!\ctrl|uins.ma~0_combout\ & ((\dp|REG_A|Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|REG_A|Q\(5),
	datac => \ctrl|i.jumpD~8_combout\,
	datad => \ctrl|uins.ma~0_combout\,
	combout => \dp|opA[5]~2_combout\);

-- Location: LCCOMB_X45_Y48_N30
\dp|outalu[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[4]~41_combout\ = (\dp|outalu[10]~20_combout\ & (\dp|outalu[7]~19_combout\)) # (!\dp|outalu[10]~20_combout\ & ((\dp|outalu[7]~19_combout\ & ((!\dp|opA[4]~3_combout\))) # (!\dp|outalu[7]~19_combout\ & (\dp|opA[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~20_combout\,
	datab => \dp|outalu[7]~19_combout\,
	datac => \dp|opA[3]~4_combout\,
	datad => \dp|opA[4]~3_combout\,
	combout => \dp|outalu[4]~41_combout\);

-- Location: LCCOMB_X45_Y47_N24
\dp|outalu[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[4]~42_combout\ = (\dp|outalu[10]~20_combout\ & ((\dp|outalu[4]~41_combout\ & ((\dp|Add2~8_combout\))) # (!\dp|outalu[4]~41_combout\ & (\dp|opA[5]~2_combout\)))) # (!\dp|outalu[10]~20_combout\ & (((\dp|outalu[4]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[5]~2_combout\,
	datab => \dp|outalu[10]~20_combout\,
	datac => \dp|outalu[4]~41_combout\,
	datad => \dp|Add2~8_combout\,
	combout => \dp|outalu[4]~42_combout\);

-- Location: LCCOMB_X45_Y47_N18
\dp|outalu[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[4]~43_combout\ = (\dp|outalu[4]~40_combout\ & (((\dp|outalu[4]~42_combout\) # (!\dp|outalu[10]~23_combout\)))) # (!\dp|outalu[4]~40_combout\ & (\dp|opB[4]~12_combout\ & (\dp|outalu[10]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[4]~12_combout\,
	datab => \dp|outalu[4]~40_combout\,
	datac => \dp|outalu[10]~23_combout\,
	datad => \dp|outalu[4]~42_combout\,
	combout => \dp|outalu[4]~43_combout\);

-- Location: LCCOMB_X45_Y47_N0
\dp|outalu[4]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[4]~44_combout\ = (\dp|outalu[10]~17_combout\ & ((\dp|add\(4)) # ((\dp|outalu[10]~16_combout\)))) # (!\dp|outalu[10]~17_combout\ & (((!\dp|outalu[10]~16_combout\ & \dp|outalu[4]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~17_combout\,
	datab => \dp|add\(4),
	datac => \dp|outalu[10]~16_combout\,
	datad => \dp|outalu[4]~43_combout\,
	combout => \dp|outalu[4]~44_combout\);

-- Location: LCCOMB_X45_Y47_N2
\dp|outalu[4]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[4]~45_combout\ = (\dp|outalu[10]~16_combout\ & (\dp|opA[4]~3_combout\ $ (((\dp|opB[4]~12_combout\ & !\dp|outalu[4]~44_combout\))))) # (!\dp|outalu[10]~16_combout\ & (((\dp|outalu[4]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[4]~12_combout\,
	datab => \dp|outalu[10]~16_combout\,
	datac => \dp|opA[4]~3_combout\,
	datad => \dp|outalu[4]~44_combout\,
	combout => \dp|outalu[4]~45_combout\);

-- Location: LCCOMB_X45_Y47_N20
\dp|outalu[4]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[4]~46_combout\ = (\dp|outalu[10]~30_combout\ & (\dp|REG_A|Q\(4))) # (!\dp|outalu[10]~30_combout\ & ((\dp|outalu[4]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|REG_A|Q\(4),
	datac => \dp|outalu[10]~30_combout\,
	datad => \dp|outalu[4]~45_combout\,
	combout => \dp|outalu[4]~46_combout\);

-- Location: FF_X45_Y47_N21
\dp|REG_alu|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|outalu[4]~46_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Salu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_alu|Q\(4));

-- Location: LCCOMB_X47_Y50_N6
\dp|dtreg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtreg[4]~4_combout\ = (\ctrl|uins.mreg~combout\ & (\dataIN[4]~input_o\)) # (!\ctrl|uins.mreg~combout\ & ((\dp|REG_alu|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dataIN[4]~input_o\,
	datac => \dp|REG_alu|Q\(4),
	datad => \ctrl|uins.mreg~combout\,
	combout => \dp|dtreg[4]~4_combout\);

-- Location: FF_X52_Y51_N15
\dp|REGS|r1:14:rx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[4]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:14:rx|Q\(4));

-- Location: LCCOMB_X53_Y51_N28
\dp|REGS|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux11~0_combout\ = (\dp|RIR|Q\(6) & (((\dp|RIR|Q\(7))))) # (!\dp|RIR|Q\(6) & ((\dp|RIR|Q\(7) & (\dp|REGS|r1:10:rx|Q\(4))) # (!\dp|RIR|Q\(7) & ((\dp|REGS|r1:2:rx|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|REGS|r1:10:rx|Q\(4),
	datac => \dp|REGS|r1:2:rx|Q\(4),
	datad => \dp|RIR|Q\(7),
	combout => \dp|REGS|Mux11~0_combout\);

-- Location: LCCOMB_X52_Y51_N8
\dp|REGS|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux11~1_combout\ = (\dp|RIR|Q\(6) & ((\dp|REGS|Mux11~0_combout\ & (\dp|REGS|r1:14:rx|Q\(4))) # (!\dp|REGS|Mux11~0_combout\ & ((\dp|REGS|r1:6:rx|Q\(4)))))) # (!\dp|RIR|Q\(6) & (((\dp|REGS|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|REGS|r1:14:rx|Q\(4),
	datac => \dp|REGS|r1:6:rx|Q\(4),
	datad => \dp|REGS|Mux11~0_combout\,
	combout => \dp|REGS|Mux11~1_combout\);

-- Location: LCCOMB_X52_Y48_N0
\dp|REGS|Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux11~7_combout\ = (\dp|RIR|Q\(7) & (\dp|RIR|Q\(6))) # (!\dp|RIR|Q\(7) & ((\dp|RIR|Q\(6) & ((\dp|REGS|r1:7:rx|Q\(4)))) # (!\dp|RIR|Q\(6) & (\dp|REGS|r1:3:rx|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(7),
	datab => \dp|RIR|Q\(6),
	datac => \dp|REGS|r1:3:rx|Q\(4),
	datad => \dp|REGS|r1:7:rx|Q\(4),
	combout => \dp|REGS|Mux11~7_combout\);

-- Location: LCCOMB_X52_Y47_N26
\dp|REGS|Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux11~8_combout\ = (\dp|RIR|Q\(7) & ((\dp|REGS|Mux11~7_combout\ & (\dp|REGS|r1:15:rx|Q\(4))) # (!\dp|REGS|Mux11~7_combout\ & ((\dp|REGS|r1:11:rx|Q\(4)))))) # (!\dp|RIR|Q\(7) & (((\dp|REGS|Mux11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:15:rx|Q\(4),
	datab => \dp|RIR|Q\(7),
	datac => \dp|REGS|r1:11:rx|Q\(4),
	datad => \dp|REGS|Mux11~7_combout\,
	combout => \dp|REGS|Mux11~8_combout\);

-- Location: LCCOMB_X53_Y49_N16
\dp|REGS|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux11~4_combout\ = (\dp|RIR|Q\(6) & (\dp|RIR|Q\(7))) # (!\dp|RIR|Q\(6) & ((\dp|RIR|Q\(7) & ((\dp|REGS|r1:8:rx|Q\(4)))) # (!\dp|RIR|Q\(7) & (\dp|REGS|r1:0:rx|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|RIR|Q\(7),
	datac => \dp|REGS|r1:0:rx|Q\(4),
	datad => \dp|REGS|r1:8:rx|Q\(4),
	combout => \dp|REGS|Mux11~4_combout\);

-- Location: LCCOMB_X53_Y49_N0
\dp|REGS|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux11~5_combout\ = (\dp|REGS|Mux11~4_combout\ & (((\dp|REGS|r1:12:rx|Q\(4)) # (!\dp|RIR|Q\(6))))) # (!\dp|REGS|Mux11~4_combout\ & (\dp|REGS|r1:4:rx|Q\(4) & ((\dp|RIR|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:4:rx|Q\(4),
	datab => \dp|REGS|Mux11~4_combout\,
	datac => \dp|REGS|r1:12:rx|Q\(4),
	datad => \dp|RIR|Q\(6),
	combout => \dp|REGS|Mux11~5_combout\);

-- Location: LCCOMB_X50_Y49_N28
\dp|REGS|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux11~2_combout\ = (\dp|RIR|Q\(7) & (\dp|RIR|Q\(6))) # (!\dp|RIR|Q\(7) & ((\dp|RIR|Q\(6) & ((\dp|REGS|r1:5:rx|Q\(4)))) # (!\dp|RIR|Q\(6) & (\dp|REGS|r1:1:rx|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(7),
	datab => \dp|RIR|Q\(6),
	datac => \dp|REGS|r1:1:rx|Q\(4),
	datad => \dp|REGS|r1:5:rx|Q\(4),
	combout => \dp|REGS|Mux11~2_combout\);

-- Location: LCCOMB_X49_Y49_N2
\dp|REGS|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux11~3_combout\ = (\dp|RIR|Q\(7) & ((\dp|REGS|Mux11~2_combout\ & ((\dp|REGS|r1:13:rx|Q\(4)))) # (!\dp|REGS|Mux11~2_combout\ & (\dp|REGS|r1:9:rx|Q\(4))))) # (!\dp|RIR|Q\(7) & (((\dp|REGS|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(7),
	datab => \dp|REGS|r1:9:rx|Q\(4),
	datac => \dp|REGS|r1:13:rx|Q\(4),
	datad => \dp|REGS|Mux11~2_combout\,
	combout => \dp|REGS|Mux11~3_combout\);

-- Location: LCCOMB_X49_Y49_N22
\dp|REGS|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux11~6_combout\ = (\dp|RIR|Q\(4) & ((\dp|RIR|Q\(5)) # ((\dp|REGS|Mux11~3_combout\)))) # (!\dp|RIR|Q\(4) & (!\dp|RIR|Q\(5) & (\dp|REGS|Mux11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(4),
	datab => \dp|RIR|Q\(5),
	datac => \dp|REGS|Mux11~5_combout\,
	datad => \dp|REGS|Mux11~3_combout\,
	combout => \dp|REGS|Mux11~6_combout\);

-- Location: LCCOMB_X48_Y49_N26
\dp|REGS|Mux11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux11~9_combout\ = (\dp|RIR|Q\(5) & ((\dp|REGS|Mux11~6_combout\ & ((\dp|REGS|Mux11~8_combout\))) # (!\dp|REGS|Mux11~6_combout\ & (\dp|REGS|Mux11~1_combout\)))) # (!\dp|RIR|Q\(5) & (((\dp|REGS|Mux11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|REGS|Mux11~1_combout\,
	datac => \dp|REGS|Mux11~8_combout\,
	datad => \dp|REGS|Mux11~6_combout\,
	combout => \dp|REGS|Mux11~9_combout\);

-- Location: FF_X48_Y49_N27
\dp|REG_A|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|Mux11~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_A|Q\(4));

-- Location: LCCOMB_X48_Y49_N20
\dp|opA[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opA[4]~3_combout\ = (\ctrl|i.jumpD~8_combout\ & (\dp|RIR|Q\(4))) # (!\ctrl|i.jumpD~8_combout\ & ((\ctrl|uins.ma~0_combout\ & (\dp|RIR|Q\(4))) # (!\ctrl|uins.ma~0_combout\ & ((\dp|REG_A|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(4),
	datab => \dp|REG_A|Q\(4),
	datac => \ctrl|i.jumpD~8_combout\,
	datad => \ctrl|uins.ma~0_combout\,
	combout => \dp|opA[4]~3_combout\);

-- Location: LCCOMB_X49_Y48_N18
\dp|outalu[3]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[3]~137_combout\ = (\dp|outalu[7]~19_combout\ & (((\dp|outalu[10]~20_combout\)) # (!\dp|opA[3]~4_combout\))) # (!\dp|outalu[7]~19_combout\ & (((!\dp|outalu[10]~20_combout\ & \dp|opA[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[7]~19_combout\,
	datab => \dp|opA[3]~4_combout\,
	datac => \dp|outalu[10]~20_combout\,
	datad => \dp|opA[2]~5_combout\,
	combout => \dp|outalu[3]~137_combout\);

-- Location: LCCOMB_X49_Y48_N12
\dp|outalu[3]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[3]~138_combout\ = (\dp|outalu[10]~20_combout\ & ((\dp|outalu[3]~137_combout\ & ((\dp|Add2~6_combout\))) # (!\dp|outalu[3]~137_combout\ & (\dp|opA[4]~3_combout\)))) # (!\dp|outalu[10]~20_combout\ & (((\dp|outalu[3]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~20_combout\,
	datab => \dp|opA[4]~3_combout\,
	datac => \dp|Add2~6_combout\,
	datad => \dp|outalu[3]~137_combout\,
	combout => \dp|outalu[3]~138_combout\);

-- Location: LCCOMB_X49_Y48_N6
\dp|outalu[3]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[3]~139_combout\ = (\dp|outalu[10]~23_combout\ & ((\dp|outalu[3]~136_combout\ & ((\dp|outalu[3]~138_combout\))) # (!\dp|outalu[3]~136_combout\ & (\dp|opB[3]~10_combout\)))) # (!\dp|outalu[10]~23_combout\ & (((\dp|outalu[3]~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[3]~10_combout\,
	datab => \dp|outalu[10]~23_combout\,
	datac => \dp|outalu[3]~136_combout\,
	datad => \dp|outalu[3]~138_combout\,
	combout => \dp|outalu[3]~139_combout\);

-- Location: LCCOMB_X49_Y48_N16
\dp|outalu[3]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[3]~140_combout\ = (\dp|outalu[10]~17_combout\ & ((\dp|outalu[10]~16_combout\) # ((\dp|add\(3))))) # (!\dp|outalu[10]~17_combout\ & (!\dp|outalu[10]~16_combout\ & ((\dp|outalu[3]~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~17_combout\,
	datab => \dp|outalu[10]~16_combout\,
	datac => \dp|add\(3),
	datad => \dp|outalu[3]~139_combout\,
	combout => \dp|outalu[3]~140_combout\);

-- Location: LCCOMB_X49_Y48_N2
\dp|outalu[3]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[3]~141_combout\ = (\dp|outalu[10]~16_combout\ & (\dp|opA[3]~4_combout\ $ (((\dp|opB[3]~10_combout\ & !\dp|outalu[3]~140_combout\))))) # (!\dp|outalu[10]~16_combout\ & (((\dp|outalu[3]~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[3]~10_combout\,
	datab => \dp|opA[3]~4_combout\,
	datac => \dp|outalu[10]~16_combout\,
	datad => \dp|outalu[3]~140_combout\,
	combout => \dp|outalu[3]~141_combout\);

-- Location: LCCOMB_X49_Y48_N24
\dp|outalu[3]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[3]~142_combout\ = (\dp|outalu[10]~30_combout\ & (\dp|REG_A|Q\(3))) # (!\dp|outalu[10]~30_combout\ & ((\dp|outalu[3]~141_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_A|Q\(3),
	datac => \dp|outalu[10]~30_combout\,
	datad => \dp|outalu[3]~141_combout\,
	combout => \dp|outalu[3]~142_combout\);

-- Location: FF_X49_Y48_N25
\dp|REG_alu|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|outalu[3]~142_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Salu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_alu|Q\(3));

-- Location: LCCOMB_X47_Y50_N28
\dp|dtreg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtreg[3]~3_combout\ = (\ctrl|uins.mreg~combout\ & ((\dataIN[3]~input_o\))) # (!\ctrl|uins.mreg~combout\ & (\dp|REG_alu|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|REG_alu|Q\(3),
	datac => \dataIN[3]~input_o\,
	datad => \ctrl|uins.mreg~combout\,
	combout => \dp|dtreg[3]~3_combout\);

-- Location: FF_X50_Y49_N31
\dp|REGS|r1:1:rx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[3]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:1:rx|Q\(3));

-- Location: LCCOMB_X53_Y48_N24
\dp|REGS|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux12~4_combout\ = (\dp|RIR|Q\(5) & ((\dp|RIR|Q\(4)) # ((\dp|REGS|r1:2:rx|Q\(3))))) # (!\dp|RIR|Q\(5) & (!\dp|RIR|Q\(4) & (\dp|REGS|r1:0:rx|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:0:rx|Q\(3),
	datad => \dp|REGS|r1:2:rx|Q\(3),
	combout => \dp|REGS|Mux12~4_combout\);

-- Location: LCCOMB_X52_Y48_N22
\dp|REGS|Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux12~5_combout\ = (\dp|RIR|Q\(4) & ((\dp|REGS|Mux12~4_combout\ & ((\dp|REGS|r1:3:rx|Q\(3)))) # (!\dp|REGS|Mux12~4_combout\ & (\dp|REGS|r1:1:rx|Q\(3))))) # (!\dp|RIR|Q\(4) & (((\dp|REGS|Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:1:rx|Q\(3),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:3:rx|Q\(3),
	datad => \dp|REGS|Mux12~4_combout\,
	combout => \dp|REGS|Mux12~5_combout\);

-- Location: LCCOMB_X54_Y48_N30
\dp|REGS|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux12~2_combout\ = (\dp|RIR|Q\(4) & (((\dp|RIR|Q\(5))))) # (!\dp|RIR|Q\(4) & ((\dp|RIR|Q\(5) & (\dp|REGS|r1:10:rx|Q\(3))) # (!\dp|RIR|Q\(5) & ((\dp|REGS|r1:8:rx|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(4),
	datab => \dp|REGS|r1:10:rx|Q\(3),
	datac => \dp|REGS|r1:8:rx|Q\(3),
	datad => \dp|RIR|Q\(5),
	combout => \dp|REGS|Mux12~2_combout\);

-- Location: LCCOMB_X52_Y47_N20
\dp|REGS|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux12~3_combout\ = (\dp|REGS|Mux12~2_combout\ & (((\dp|REGS|r1:11:rx|Q\(3)) # (!\dp|RIR|Q\(4))))) # (!\dp|REGS|Mux12~2_combout\ & (\dp|REGS|r1:9:rx|Q\(3) & ((\dp|RIR|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:9:rx|Q\(3),
	datab => \dp|REGS|Mux12~2_combout\,
	datac => \dp|REGS|r1:11:rx|Q\(3),
	datad => \dp|RIR|Q\(4),
	combout => \dp|REGS|Mux12~3_combout\);

-- Location: LCCOMB_X52_Y48_N2
\dp|REGS|Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux12~6_combout\ = (\dp|RIR|Q\(7) & ((\dp|RIR|Q\(6)) # ((\dp|REGS|Mux12~3_combout\)))) # (!\dp|RIR|Q\(7) & (!\dp|RIR|Q\(6) & (\dp|REGS|Mux12~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(7),
	datab => \dp|RIR|Q\(6),
	datac => \dp|REGS|Mux12~5_combout\,
	datad => \dp|REGS|Mux12~3_combout\,
	combout => \dp|REGS|Mux12~6_combout\);

-- Location: LCCOMB_X53_Y49_N6
\dp|REGS|Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux12~7_combout\ = (\dp|RIR|Q\(5) & (\dp|RIR|Q\(4))) # (!\dp|RIR|Q\(5) & ((\dp|RIR|Q\(4) & ((\dp|REGS|r1:13:rx|Q\(3)))) # (!\dp|RIR|Q\(4) & (\dp|REGS|r1:12:rx|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:12:rx|Q\(3),
	datad => \dp|REGS|r1:13:rx|Q\(3),
	combout => \dp|REGS|Mux12~7_combout\);

-- Location: LCCOMB_X54_Y48_N22
\dp|REGS|Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux12~8_combout\ = (\dp|REGS|Mux12~7_combout\ & (((\dp|REGS|r1:15:rx|Q\(3))) # (!\dp|RIR|Q\(5)))) # (!\dp|REGS|Mux12~7_combout\ & (\dp|RIR|Q\(5) & (\dp|REGS|r1:14:rx|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux12~7_combout\,
	datab => \dp|RIR|Q\(5),
	datac => \dp|REGS|r1:14:rx|Q\(3),
	datad => \dp|REGS|r1:15:rx|Q\(3),
	combout => \dp|REGS|Mux12~8_combout\);

-- Location: LCCOMB_X54_Y49_N30
\dp|REGS|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux12~0_combout\ = (\dp|RIR|Q\(4) & ((\dp|REGS|r1:5:rx|Q\(3)) # ((\dp|RIR|Q\(5))))) # (!\dp|RIR|Q\(4) & (((\dp|REGS|r1:4:rx|Q\(3) & !\dp|RIR|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(4),
	datab => \dp|REGS|r1:5:rx|Q\(3),
	datac => \dp|REGS|r1:4:rx|Q\(3),
	datad => \dp|RIR|Q\(5),
	combout => \dp|REGS|Mux12~0_combout\);

-- Location: LCCOMB_X55_Y48_N6
\dp|REGS|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux12~1_combout\ = (\dp|RIR|Q\(5) & ((\dp|REGS|Mux12~0_combout\ & ((\dp|REGS|r1:7:rx|Q\(3)))) # (!\dp|REGS|Mux12~0_combout\ & (\dp|REGS|r1:6:rx|Q\(3))))) # (!\dp|RIR|Q\(5) & (\dp|REGS|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|REGS|Mux12~0_combout\,
	datac => \dp|REGS|r1:6:rx|Q\(3),
	datad => \dp|REGS|r1:7:rx|Q\(3),
	combout => \dp|REGS|Mux12~1_combout\);

-- Location: LCCOMB_X53_Y48_N0
\dp|REGS|Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux12~9_combout\ = (\dp|REGS|Mux12~6_combout\ & ((\dp|REGS|Mux12~8_combout\) # ((!\dp|RIR|Q\(6))))) # (!\dp|REGS|Mux12~6_combout\ & (((\dp|REGS|Mux12~1_combout\ & \dp|RIR|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux12~6_combout\,
	datab => \dp|REGS|Mux12~8_combout\,
	datac => \dp|REGS|Mux12~1_combout\,
	datad => \dp|RIR|Q\(6),
	combout => \dp|REGS|Mux12~9_combout\);

-- Location: LCCOMB_X49_Y48_N30
\dp|REG_A|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REG_A|Q[3]~feeder_combout\ = \dp|REGS|Mux12~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|REGS|Mux12~9_combout\,
	combout => \dp|REG_A|Q[3]~feeder_combout\);

-- Location: FF_X49_Y48_N31
\dp|REG_A|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REG_A|Q[3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_A|Q\(3));

-- Location: LCCOMB_X48_Y47_N30
\dp|opA[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opA[3]~4_combout\ = (\ctrl|uins.ma~0_combout\ & (\dp|RIR|Q\(3))) # (!\ctrl|uins.ma~0_combout\ & ((\ctrl|i.jumpD~8_combout\ & (\dp|RIR|Q\(3))) # (!\ctrl|i.jumpD~8_combout\ & ((\dp|REG_A|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(3),
	datab => \dp|REG_A|Q\(3),
	datac => \ctrl|uins.ma~0_combout\,
	datad => \ctrl|i.jumpD~8_combout\,
	combout => \dp|opA[3]~4_combout\);

-- Location: LCCOMB_X47_Y49_N20
\dp|outalu[2]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[2]~99_combout\ = (\dp|outalu[2]~98_combout\ & (((\dp|Add2~4_combout\)) # (!\dp|outalu[10]~20_combout\))) # (!\dp|outalu[2]~98_combout\ & (\dp|outalu[10]~20_combout\ & ((\dp|opA[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[2]~98_combout\,
	datab => \dp|outalu[10]~20_combout\,
	datac => \dp|Add2~4_combout\,
	datad => \dp|opA[3]~4_combout\,
	combout => \dp|outalu[2]~99_combout\);

-- Location: LCCOMB_X47_Y49_N10
\dp|outalu[2]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[2]~100_combout\ = (\dp|outalu[2]~97_combout\ & (((\dp|outalu[2]~99_combout\)) # (!\dp|outalu[10]~23_combout\))) # (!\dp|outalu[2]~97_combout\ & (\dp|outalu[10]~23_combout\ & (\dp|opB[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[2]~97_combout\,
	datab => \dp|outalu[10]~23_combout\,
	datac => \dp|opB[2]~8_combout\,
	datad => \dp|outalu[2]~99_combout\,
	combout => \dp|outalu[2]~100_combout\);

-- Location: LCCOMB_X47_Y49_N28
\dp|outalu[2]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[2]~101_combout\ = (\dp|outalu[10]~16_combout\ & (((\dp|outalu[10]~17_combout\)))) # (!\dp|outalu[10]~16_combout\ & ((\dp|outalu[10]~17_combout\ & (\dp|add\(2))) # (!\dp|outalu[10]~17_combout\ & ((\dp|outalu[2]~100_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~16_combout\,
	datab => \dp|add\(2),
	datac => \dp|outalu[10]~17_combout\,
	datad => \dp|outalu[2]~100_combout\,
	combout => \dp|outalu[2]~101_combout\);

-- Location: LCCOMB_X47_Y49_N6
\dp|outalu[2]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[2]~102_combout\ = (\dp|outalu[10]~16_combout\ & (\dp|opA[2]~5_combout\ $ (((\dp|opB[2]~8_combout\ & !\dp|outalu[2]~101_combout\))))) # (!\dp|outalu[10]~16_combout\ & (((\dp|outalu[2]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~16_combout\,
	datab => \dp|opA[2]~5_combout\,
	datac => \dp|opB[2]~8_combout\,
	datad => \dp|outalu[2]~101_combout\,
	combout => \dp|outalu[2]~102_combout\);

-- Location: LCCOMB_X47_Y49_N24
\dp|outalu[2]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[2]~103_combout\ = (\dp|outalu[10]~30_combout\ & (\dp|REG_A|Q\(2))) # (!\dp|outalu[10]~30_combout\ & ((\dp|outalu[2]~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|REG_A|Q\(2),
	datac => \dp|outalu[10]~30_combout\,
	datad => \dp|outalu[2]~102_combout\,
	combout => \dp|outalu[2]~103_combout\);

-- Location: FF_X47_Y49_N25
\dp|REG_alu|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|outalu[2]~103_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Salu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_alu|Q\(2));

-- Location: LCCOMB_X46_Y50_N18
\dp|dtreg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtreg[2]~2_combout\ = (\ctrl|uins.mreg~combout\ & (\dataIN[2]~input_o\)) # (!\ctrl|uins.mreg~combout\ & ((\dp|REG_alu|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dataIN[2]~input_o\,
	datac => \dp|REG_alu|Q\(2),
	datad => \ctrl|uins.mreg~combout\,
	combout => \dp|dtreg[2]~2_combout\);

-- Location: FF_X49_Y49_N27
\dp|REGS|r1:13:rx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[2]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:13:rx|Q\(2));

-- Location: LCCOMB_X50_Y51_N10
\dp|REGS|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux13~0_combout\ = (\dp|RIR|Q\(6) & (\dp|RIR|Q\(7))) # (!\dp|RIR|Q\(6) & ((\dp|RIR|Q\(7) & ((\dp|REGS|r1:9:rx|Q\(2)))) # (!\dp|RIR|Q\(7) & (\dp|REGS|r1:1:rx|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|RIR|Q\(7),
	datac => \dp|REGS|r1:1:rx|Q\(2),
	datad => \dp|REGS|r1:9:rx|Q\(2),
	combout => \dp|REGS|Mux13~0_combout\);

-- Location: LCCOMB_X50_Y51_N12
\dp|REGS|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux13~1_combout\ = (\dp|RIR|Q\(6) & ((\dp|REGS|Mux13~0_combout\ & (\dp|REGS|r1:13:rx|Q\(2))) # (!\dp|REGS|Mux13~0_combout\ & ((\dp|REGS|r1:5:rx|Q\(2)))))) # (!\dp|RIR|Q\(6) & (((\dp|REGS|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|REGS|r1:13:rx|Q\(2),
	datac => \dp|REGS|r1:5:rx|Q\(2),
	datad => \dp|REGS|Mux13~0_combout\,
	combout => \dp|REGS|Mux13~1_combout\);

-- Location: LCCOMB_X50_Y49_N16
\dp|REGS|Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux13~7_combout\ = (\dp|RIR|Q\(7) & ((\dp|RIR|Q\(6)) # ((\dp|REGS|r1:11:rx|Q\(2))))) # (!\dp|RIR|Q\(7) & (!\dp|RIR|Q\(6) & (\dp|REGS|r1:3:rx|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(7),
	datab => \dp|RIR|Q\(6),
	datac => \dp|REGS|r1:3:rx|Q\(2),
	datad => \dp|REGS|r1:11:rx|Q\(2),
	combout => \dp|REGS|Mux13~7_combout\);

-- Location: LCCOMB_X52_Y49_N28
\dp|REGS|Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux13~8_combout\ = (\dp|RIR|Q\(6) & ((\dp|REGS|Mux13~7_combout\ & (\dp|REGS|r1:15:rx|Q\(2))) # (!\dp|REGS|Mux13~7_combout\ & ((\dp|REGS|r1:7:rx|Q\(2)))))) # (!\dp|RIR|Q\(6) & (((\dp|REGS|Mux13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:15:rx|Q\(2),
	datab => \dp|RIR|Q\(6),
	datac => \dp|REGS|r1:7:rx|Q\(2),
	datad => \dp|REGS|Mux13~7_combout\,
	combout => \dp|REGS|Mux13~8_combout\);

-- Location: LCCOMB_X53_Y49_N22
\dp|REGS|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux13~4_combout\ = (\dp|RIR|Q\(6) & ((\dp|RIR|Q\(7)) # ((\dp|REGS|r1:4:rx|Q\(2))))) # (!\dp|RIR|Q\(6) & (!\dp|RIR|Q\(7) & (\dp|REGS|r1:0:rx|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|RIR|Q\(7),
	datac => \dp|REGS|r1:0:rx|Q\(2),
	datad => \dp|REGS|r1:4:rx|Q\(2),
	combout => \dp|REGS|Mux13~4_combout\);

-- Location: LCCOMB_X53_Y49_N20
\dp|REGS|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux13~5_combout\ = (\dp|RIR|Q\(7) & ((\dp|REGS|Mux13~4_combout\ & ((\dp|REGS|r1:12:rx|Q\(2)))) # (!\dp|REGS|Mux13~4_combout\ & (\dp|REGS|r1:8:rx|Q\(2))))) # (!\dp|RIR|Q\(7) & (((\dp|REGS|Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:8:rx|Q\(2),
	datab => \dp|RIR|Q\(7),
	datac => \dp|REGS|r1:12:rx|Q\(2),
	datad => \dp|REGS|Mux13~4_combout\,
	combout => \dp|REGS|Mux13~5_combout\);

-- Location: LCCOMB_X52_Y48_N24
\dp|REGS|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux13~2_combout\ = (\dp|RIR|Q\(7) & (((\dp|RIR|Q\(6))))) # (!\dp|RIR|Q\(7) & ((\dp|RIR|Q\(6) & (\dp|REGS|r1:6:rx|Q\(2))) # (!\dp|RIR|Q\(6) & ((\dp|REGS|r1:2:rx|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(7),
	datab => \dp|REGS|r1:6:rx|Q\(2),
	datac => \dp|REGS|r1:2:rx|Q\(2),
	datad => \dp|RIR|Q\(6),
	combout => \dp|REGS|Mux13~2_combout\);

-- Location: LCCOMB_X54_Y48_N18
\dp|REGS|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux13~3_combout\ = (\dp|RIR|Q\(7) & ((\dp|REGS|Mux13~2_combout\ & ((\dp|REGS|r1:14:rx|Q\(2)))) # (!\dp|REGS|Mux13~2_combout\ & (\dp|REGS|r1:10:rx|Q\(2))))) # (!\dp|RIR|Q\(7) & (((\dp|REGS|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:10:rx|Q\(2),
	datab => \dp|RIR|Q\(7),
	datac => \dp|REGS|r1:14:rx|Q\(2),
	datad => \dp|REGS|Mux13~2_combout\,
	combout => \dp|REGS|Mux13~3_combout\);

-- Location: LCCOMB_X53_Y48_N30
\dp|REGS|Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux13~6_combout\ = (\dp|RIR|Q\(5) & ((\dp|RIR|Q\(4)) # ((\dp|REGS|Mux13~3_combout\)))) # (!\dp|RIR|Q\(5) & (!\dp|RIR|Q\(4) & (\dp|REGS|Mux13~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|Mux13~5_combout\,
	datad => \dp|REGS|Mux13~3_combout\,
	combout => \dp|REGS|Mux13~6_combout\);

-- Location: LCCOMB_X52_Y47_N16
\dp|REGS|Mux13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux13~9_combout\ = (\dp|RIR|Q\(4) & ((\dp|REGS|Mux13~6_combout\ & ((\dp|REGS|Mux13~8_combout\))) # (!\dp|REGS|Mux13~6_combout\ & (\dp|REGS|Mux13~1_combout\)))) # (!\dp|RIR|Q\(4) & (((\dp|REGS|Mux13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(4),
	datab => \dp|REGS|Mux13~1_combout\,
	datac => \dp|REGS|Mux13~8_combout\,
	datad => \dp|REGS|Mux13~6_combout\,
	combout => \dp|REGS|Mux13~9_combout\);

-- Location: FF_X48_Y47_N25
\dp|REG_A|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|REGS|Mux13~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_A|Q\(2));

-- Location: LCCOMB_X48_Y47_N28
\dp|opA[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opA[2]~5_combout\ = (\ctrl|uins.ma~0_combout\ & (((\dp|RIR|Q\(2))))) # (!\ctrl|uins.ma~0_combout\ & ((\ctrl|i.jumpD~8_combout\ & ((\dp|RIR|Q\(2)))) # (!\ctrl|i.jumpD~8_combout\ & (\dp|REG_A|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_A|Q\(2),
	datab => \dp|RIR|Q\(2),
	datac => \ctrl|uins.ma~0_combout\,
	datad => \ctrl|i.jumpD~8_combout\,
	combout => \dp|opA[2]~5_combout\);

-- Location: LCCOMB_X48_Y46_N14
\dp|outalu[1]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[1]~130_combout\ = (\dp|outalu[7]~19_combout\ & ((\dp|outalu[10]~20_combout\) # ((!\dp|opA[1]~6_combout\)))) # (!\dp|outalu[7]~19_combout\ & (!\dp|outalu[10]~20_combout\ & (\dp|opA[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[7]~19_combout\,
	datab => \dp|outalu[10]~20_combout\,
	datac => \dp|opA[0]~7_combout\,
	datad => \dp|opA[1]~6_combout\,
	combout => \dp|outalu[1]~130_combout\);

-- Location: LCCOMB_X48_Y46_N12
\dp|outalu[1]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[1]~131_combout\ = (\dp|outalu[10]~20_combout\ & ((\dp|outalu[1]~130_combout\ & ((\dp|Add2~2_combout\))) # (!\dp|outalu[1]~130_combout\ & (\dp|opA[2]~5_combout\)))) # (!\dp|outalu[10]~20_combout\ & (((\dp|outalu[1]~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[2]~5_combout\,
	datab => \dp|outalu[10]~20_combout\,
	datac => \dp|outalu[1]~130_combout\,
	datad => \dp|Add2~2_combout\,
	combout => \dp|outalu[1]~131_combout\);

-- Location: LCCOMB_X48_Y46_N10
\dp|outalu[1]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[1]~132_combout\ = (\dp|outalu[10]~23_combout\ & ((\dp|outalu[1]~129_combout\ & ((\dp|outalu[1]~131_combout\))) # (!\dp|outalu[1]~129_combout\ & (\dp|opB[1]~6_combout\)))) # (!\dp|outalu[10]~23_combout\ & (((\dp|outalu[1]~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~23_combout\,
	datab => \dp|opB[1]~6_combout\,
	datac => \dp|outalu[1]~129_combout\,
	datad => \dp|outalu[1]~131_combout\,
	combout => \dp|outalu[1]~132_combout\);

-- Location: LCCOMB_X48_Y46_N4
\dp|outalu[1]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[1]~133_combout\ = (\dp|outalu[10]~16_combout\ & (\dp|outalu[10]~17_combout\)) # (!\dp|outalu[10]~16_combout\ & ((\dp|outalu[10]~17_combout\ & (\dp|add\(1))) # (!\dp|outalu[10]~17_combout\ & ((\dp|outalu[1]~132_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~16_combout\,
	datab => \dp|outalu[10]~17_combout\,
	datac => \dp|add\(1),
	datad => \dp|outalu[1]~132_combout\,
	combout => \dp|outalu[1]~133_combout\);

-- Location: LCCOMB_X48_Y46_N6
\dp|outalu[1]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[1]~134_combout\ = (\dp|outalu[10]~16_combout\ & (\dp|opA[1]~6_combout\ $ (((\dp|opB[1]~6_combout\ & !\dp|outalu[1]~133_combout\))))) # (!\dp|outalu[10]~16_combout\ & (((\dp|outalu[1]~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~16_combout\,
	datab => \dp|opB[1]~6_combout\,
	datac => \dp|outalu[1]~133_combout\,
	datad => \dp|opA[1]~6_combout\,
	combout => \dp|outalu[1]~134_combout\);

-- Location: LCCOMB_X47_Y46_N0
\dp|outalu[1]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[1]~135_combout\ = (\dp|outalu[10]~30_combout\ & (\dp|REG_A|Q\(1))) # (!\dp|outalu[10]~30_combout\ & ((\dp|outalu[1]~134_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|REG_A|Q\(1),
	datac => \dp|outalu[10]~30_combout\,
	datad => \dp|outalu[1]~134_combout\,
	combout => \dp|outalu[1]~135_combout\);

-- Location: FF_X47_Y46_N1
\dp|REG_alu|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|outalu[1]~135_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Salu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_alu|Q\(1));

-- Location: FF_X45_Y50_N3
\dp|RSP|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RSP|Q[1]~18_combout\,
	asdata => \dp|REG_alu|Q\(1),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|uins.msp~combout\,
	ena => \ctrl|uins.wsp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RSP|Q\(1));

-- Location: LCCOMB_X45_Y50_N4
\dp|RSP|Q[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RSP|Q[2]~20_combout\ = (\dp|RSP|Q\(2) & ((GND) # (!\dp|RSP|Q[1]~19\))) # (!\dp|RSP|Q\(2) & (\dp|RSP|Q[1]~19\ $ (GND)))
-- \dp|RSP|Q[2]~21\ = CARRY((\dp|RSP|Q\(2)) # (!\dp|RSP|Q[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|RSP|Q\(2),
	datad => VCC,
	cin => \dp|RSP|Q[1]~19\,
	combout => \dp|RSP|Q[2]~20_combout\,
	cout => \dp|RSP|Q[2]~21\);

-- Location: FF_X45_Y50_N5
\dp|RSP|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RSP|Q[2]~20_combout\,
	asdata => \dp|REG_alu|Q\(2),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|uins.msp~combout\,
	ena => \ctrl|uins.wsp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RSP|Q\(2));

-- Location: LCCOMB_X45_Y50_N6
\dp|RSP|Q[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RSP|Q[3]~22_combout\ = (\dp|RSP|Q\(3) & (\dp|RSP|Q[2]~21\ & VCC)) # (!\dp|RSP|Q\(3) & (!\dp|RSP|Q[2]~21\))
-- \dp|RSP|Q[3]~23\ = CARRY((!\dp|RSP|Q\(3) & !\dp|RSP|Q[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RSP|Q\(3),
	datad => VCC,
	cin => \dp|RSP|Q[2]~21\,
	combout => \dp|RSP|Q[3]~22_combout\,
	cout => \dp|RSP|Q[3]~23\);

-- Location: FF_X45_Y50_N7
\dp|RSP|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RSP|Q[3]~22_combout\,
	asdata => \dp|REG_alu|Q\(3),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|uins.msp~combout\,
	ena => \ctrl|uins.wsp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RSP|Q\(3));

-- Location: LCCOMB_X45_Y50_N8
\dp|RSP|Q[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RSP|Q[4]~24_combout\ = (\dp|RSP|Q\(4) & ((GND) # (!\dp|RSP|Q[3]~23\))) # (!\dp|RSP|Q\(4) & (\dp|RSP|Q[3]~23\ $ (GND)))
-- \dp|RSP|Q[4]~25\ = CARRY((\dp|RSP|Q\(4)) # (!\dp|RSP|Q[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|RSP|Q\(4),
	datad => VCC,
	cin => \dp|RSP|Q[3]~23\,
	combout => \dp|RSP|Q[4]~24_combout\,
	cout => \dp|RSP|Q[4]~25\);

-- Location: FF_X45_Y50_N9
\dp|RSP|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RSP|Q[4]~24_combout\,
	asdata => \dp|REG_alu|Q\(4),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|uins.msp~combout\,
	ena => \ctrl|uins.wsp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RSP|Q\(4));

-- Location: LCCOMB_X45_Y50_N10
\dp|RSP|Q[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RSP|Q[5]~26_combout\ = (\dp|RSP|Q\(5) & (\dp|RSP|Q[4]~25\ & VCC)) # (!\dp|RSP|Q\(5) & (!\dp|RSP|Q[4]~25\))
-- \dp|RSP|Q[5]~27\ = CARRY((!\dp|RSP|Q\(5) & !\dp|RSP|Q[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RSP|Q\(5),
	datad => VCC,
	cin => \dp|RSP|Q[4]~25\,
	combout => \dp|RSP|Q[5]~26_combout\,
	cout => \dp|RSP|Q[5]~27\);

-- Location: FF_X45_Y50_N11
\dp|RSP|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RSP|Q[5]~26_combout\,
	asdata => \dp|REG_alu|Q\(5),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|uins.msp~combout\,
	ena => \ctrl|uins.wsp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RSP|Q\(5));

-- Location: LCCOMB_X45_Y50_N12
\dp|RSP|Q[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RSP|Q[6]~28_combout\ = (\dp|RSP|Q\(6) & ((GND) # (!\dp|RSP|Q[5]~27\))) # (!\dp|RSP|Q\(6) & (\dp|RSP|Q[5]~27\ $ (GND)))
-- \dp|RSP|Q[6]~29\ = CARRY((\dp|RSP|Q\(6)) # (!\dp|RSP|Q[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RSP|Q\(6),
	datad => VCC,
	cin => \dp|RSP|Q[5]~27\,
	combout => \dp|RSP|Q[6]~28_combout\,
	cout => \dp|RSP|Q[6]~29\);

-- Location: FF_X45_Y50_N13
\dp|RSP|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RSP|Q[6]~28_combout\,
	asdata => \dp|REG_alu|Q\(6),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|uins.msp~combout\,
	ena => \ctrl|uins.wsp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RSP|Q\(6));

-- Location: LCCOMB_X45_Y50_N14
\dp|RSP|Q[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RSP|Q[7]~30_combout\ = (\dp|RSP|Q\(7) & (\dp|RSP|Q[6]~29\ & VCC)) # (!\dp|RSP|Q\(7) & (!\dp|RSP|Q[6]~29\))
-- \dp|RSP|Q[7]~31\ = CARRY((!\dp|RSP|Q\(7) & !\dp|RSP|Q[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|RSP|Q\(7),
	datad => VCC,
	cin => \dp|RSP|Q[6]~29\,
	combout => \dp|RSP|Q[7]~30_combout\,
	cout => \dp|RSP|Q[7]~31\);

-- Location: FF_X45_Y50_N15
\dp|RSP|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RSP|Q[7]~30_combout\,
	asdata => \dp|REG_alu|Q\(7),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|uins.msp~combout\,
	ena => \ctrl|uins.wsp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RSP|Q\(7));

-- Location: LCCOMB_X45_Y50_N16
\dp|RSP|Q[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RSP|Q[8]~32_combout\ = (\dp|RSP|Q\(8) & ((GND) # (!\dp|RSP|Q[7]~31\))) # (!\dp|RSP|Q\(8) & (\dp|RSP|Q[7]~31\ $ (GND)))
-- \dp|RSP|Q[8]~33\ = CARRY((\dp|RSP|Q\(8)) # (!\dp|RSP|Q[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|RSP|Q\(8),
	datad => VCC,
	cin => \dp|RSP|Q[7]~31\,
	combout => \dp|RSP|Q[8]~32_combout\,
	cout => \dp|RSP|Q[8]~33\);

-- Location: LCCOMB_X47_Y50_N10
\dp|dtreg[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtreg[8]~8_combout\ = (\ctrl|uins.mreg~combout\ & ((\dataIN[8]~input_o\))) # (!\ctrl|uins.mreg~combout\ & (\dp|REG_alu|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|REG_alu|Q\(8),
	datac => \dataIN[8]~input_o\,
	datad => \ctrl|uins.mreg~combout\,
	combout => \dp|dtreg[8]~8_combout\);

-- Location: FF_X52_Y49_N3
\dp|REGS|r1:7:rx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[8]~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:7:rx|Q\(8));

-- Location: FF_X56_Y49_N11
\dp|REGS|r1:6:rx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[8]~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:6:rx|Q\(8));

-- Location: FF_X52_Y49_N21
\dp|REGS|r1:5:rx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[8]~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:5:rx|Q\(8));

-- Location: FF_X52_Y50_N31
\dp|REGS|r1:4:rx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[8]~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:4:rx|Q\(8));

-- Location: LCCOMB_X52_Y49_N20
\dp|REGS|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux7~0_combout\ = (\dp|RIR|Q\(5) & (\dp|RIR|Q\(4))) # (!\dp|RIR|Q\(5) & ((\dp|RIR|Q\(4) & (\dp|REGS|r1:5:rx|Q\(8))) # (!\dp|RIR|Q\(4) & ((\dp|REGS|r1:4:rx|Q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:5:rx|Q\(8),
	datad => \dp|REGS|r1:4:rx|Q\(8),
	combout => \dp|REGS|Mux7~0_combout\);

-- Location: LCCOMB_X56_Y49_N10
\dp|REGS|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux7~1_combout\ = (\dp|RIR|Q\(5) & ((\dp|REGS|Mux7~0_combout\ & (\dp|REGS|r1:7:rx|Q\(8))) # (!\dp|REGS|Mux7~0_combout\ & ((\dp|REGS|r1:6:rx|Q\(8)))))) # (!\dp|RIR|Q\(5) & (((\dp|REGS|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|REGS|r1:7:rx|Q\(8),
	datac => \dp|REGS|r1:6:rx|Q\(8),
	datad => \dp|REGS|Mux7~0_combout\,
	combout => \dp|REGS|Mux7~1_combout\);

-- Location: FF_X53_Y48_N29
\dp|REGS|r1:1:rx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[8]~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:1:rx|Q\(8));

-- Location: FF_X52_Y48_N17
\dp|REGS|r1:3:rx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[8]~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:3:rx|Q\(8));

-- Location: FF_X53_Y48_N19
\dp|REGS|r1:0:rx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[8]~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:0:rx|Q\(8));

-- Location: FF_X52_Y48_N19
\dp|REGS|r1:2:rx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[8]~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:2:rx|Q\(8));

-- Location: LCCOMB_X53_Y48_N18
\dp|REGS|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux7~4_combout\ = (\dp|RIR|Q\(5) & ((\dp|RIR|Q\(4)) # ((\dp|REGS|r1:2:rx|Q\(8))))) # (!\dp|RIR|Q\(5) & (!\dp|RIR|Q\(4) & (\dp|REGS|r1:0:rx|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:0:rx|Q\(8),
	datad => \dp|REGS|r1:2:rx|Q\(8),
	combout => \dp|REGS|Mux7~4_combout\);

-- Location: LCCOMB_X52_Y48_N16
\dp|REGS|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux7~5_combout\ = (\dp|RIR|Q\(4) & ((\dp|REGS|Mux7~4_combout\ & ((\dp|REGS|r1:3:rx|Q\(8)))) # (!\dp|REGS|Mux7~4_combout\ & (\dp|REGS|r1:1:rx|Q\(8))))) # (!\dp|RIR|Q\(4) & (((\dp|REGS|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:1:rx|Q\(8),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:3:rx|Q\(8),
	datad => \dp|REGS|Mux7~4_combout\,
	combout => \dp|REGS|Mux7~5_combout\);

-- Location: FF_X52_Y50_N21
\dp|REGS|r1:8:rx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[8]~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:8:rx|Q\(8));

-- Location: FF_X48_Y52_N29
\dp|REGS|r1:10:rx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[8]~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:10:rx|Q\(8));

-- Location: LCCOMB_X52_Y50_N20
\dp|REGS|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux7~2_combout\ = (\dp|RIR|Q\(5) & ((\dp|RIR|Q\(4)) # ((\dp|REGS|r1:10:rx|Q\(8))))) # (!\dp|RIR|Q\(5) & (!\dp|RIR|Q\(4) & (\dp|REGS|r1:8:rx|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:8:rx|Q\(8),
	datad => \dp|REGS|r1:10:rx|Q\(8),
	combout => \dp|REGS|Mux7~2_combout\);

-- Location: FF_X53_Y50_N31
\dp|REGS|r1:11:rx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[8]~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:11:rx|Q\(8));

-- Location: FF_X53_Y50_N13
\dp|REGS|r1:9:rx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[8]~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:9:rx|Q\(8));

-- Location: LCCOMB_X53_Y50_N30
\dp|REGS|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux7~3_combout\ = (\dp|RIR|Q\(4) & ((\dp|REGS|Mux7~2_combout\ & (\dp|REGS|r1:11:rx|Q\(8))) # (!\dp|REGS|Mux7~2_combout\ & ((\dp|REGS|r1:9:rx|Q\(8)))))) # (!\dp|RIR|Q\(4) & (\dp|REGS|Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(4),
	datab => \dp|REGS|Mux7~2_combout\,
	datac => \dp|REGS|r1:11:rx|Q\(8),
	datad => \dp|REGS|r1:9:rx|Q\(8),
	combout => \dp|REGS|Mux7~3_combout\);

-- Location: LCCOMB_X54_Y50_N30
\dp|REGS|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux7~6_combout\ = (\dp|RIR|Q\(6) & (\dp|RIR|Q\(7))) # (!\dp|RIR|Q\(6) & ((\dp|RIR|Q\(7) & ((\dp|REGS|Mux7~3_combout\))) # (!\dp|RIR|Q\(7) & (\dp|REGS|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|RIR|Q\(7),
	datac => \dp|REGS|Mux7~5_combout\,
	datad => \dp|REGS|Mux7~3_combout\,
	combout => \dp|REGS|Mux7~6_combout\);

-- Location: FF_X49_Y52_N5
\dp|REGS|r1:13:rx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[8]~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:13:rx|Q\(8));

-- Location: FF_X50_Y50_N21
\dp|REGS|r1:12:rx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[8]~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:12:rx|Q\(8));

-- Location: LCCOMB_X50_Y50_N20
\dp|REGS|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux7~7_combout\ = (\dp|RIR|Q\(4) & ((\dp|REGS|r1:13:rx|Q\(8)) # ((\dp|RIR|Q\(5))))) # (!\dp|RIR|Q\(4) & (((\dp|REGS|r1:12:rx|Q\(8) & !\dp|RIR|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:13:rx|Q\(8),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:12:rx|Q\(8),
	datad => \dp|RIR|Q\(5),
	combout => \dp|REGS|Mux7~7_combout\);

-- Location: FF_X47_Y50_N11
\dp|REGS|r1:15:rx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|dtreg[8]~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:15:rx|Q\(8));

-- Location: LCCOMB_X56_Y50_N6
\dp|REGS|r1:14:rx|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:14:rx|Q[8]~feeder_combout\ = \dp|dtreg[8]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|dtreg[8]~8_combout\,
	combout => \dp|REGS|r1:14:rx|Q[8]~feeder_combout\);

-- Location: FF_X56_Y50_N7
\dp|REGS|r1:14:rx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:14:rx|Q[8]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:14:rx|Q\(8));

-- Location: LCCOMB_X50_Y50_N26
\dp|REGS|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux7~8_combout\ = (\dp|RIR|Q\(5) & ((\dp|REGS|Mux7~7_combout\ & (\dp|REGS|r1:15:rx|Q\(8))) # (!\dp|REGS|Mux7~7_combout\ & ((\dp|REGS|r1:14:rx|Q\(8)))))) # (!\dp|RIR|Q\(5) & (\dp|REGS|Mux7~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|REGS|Mux7~7_combout\,
	datac => \dp|REGS|r1:15:rx|Q\(8),
	datad => \dp|REGS|r1:14:rx|Q\(8),
	combout => \dp|REGS|Mux7~8_combout\);

-- Location: LCCOMB_X55_Y50_N12
\dp|REGS|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux7~9_combout\ = (\dp|REGS|Mux7~6_combout\ & (((\dp|REGS|Mux7~8_combout\) # (!\dp|RIR|Q\(6))))) # (!\dp|REGS|Mux7~6_combout\ & (\dp|REGS|Mux7~1_combout\ & (\dp|RIR|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux7~1_combout\,
	datab => \dp|REGS|Mux7~6_combout\,
	datac => \dp|RIR|Q\(6),
	datad => \dp|REGS|Mux7~8_combout\,
	combout => \dp|REGS|Mux7~9_combout\);

-- Location: FF_X55_Y50_N13
\dp|REG_A|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|Mux7~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_A|Q\(8));

-- Location: LCCOMB_X47_Y46_N14
\dp|outalu[7]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[7]~72_combout\ = (\dp|RIR|Q\(15) & !\dp|outalu[7]~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|RIR|Q\(15),
	datad => \dp|outalu[7]~70_combout\,
	combout => \dp|outalu[7]~72_combout\);

-- Location: LCCOMB_X48_Y45_N12
\dp|opA[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opA[8]~8_combout\ = (\ctrl|uins.ma~0_combout\ & (((\dp|RIR|Q\(8))))) # (!\ctrl|uins.ma~0_combout\ & ((\ctrl|i.jumpD~8_combout\ & ((\dp|RIR|Q\(8)))) # (!\ctrl|i.jumpD~8_combout\ & (\dp|REG_A|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_A|Q\(8),
	datab => \dp|RIR|Q\(8),
	datac => \ctrl|uins.ma~0_combout\,
	datad => \ctrl|i.jumpD~8_combout\,
	combout => \dp|opA[8]~8_combout\);

-- Location: LCCOMB_X50_Y46_N12
\dp|outalu[7]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[7]~76_combout\ = (\dp|RIR|Q\(2)) # ((!\dp|RIR|Q\(3) & \dp|RIR|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(3),
	datac => \dp|RIR|Q\(1),
	datad => \dp|RIR|Q\(2),
	combout => \dp|outalu[7]~76_combout\);

-- Location: LCCOMB_X53_Y50_N12
\dp|REGS|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux23~0_combout\ = (\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|destB[0]~1_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|r1:9:rx|Q\(8)))) # (!\dp|REGS|destB[0]~1_combout\ & (\dp|REGS|r1:8:rx|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|r1:8:rx|Q\(8),
	datac => \dp|REGS|r1:9:rx|Q\(8),
	datad => \dp|REGS|destB[0]~1_combout\,
	combout => \dp|REGS|Mux23~0_combout\);

-- Location: LCCOMB_X48_Y52_N28
\dp|REGS|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux23~1_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|Mux23~0_combout\ & (\dp|REGS|r1:11:rx|Q\(8))) # (!\dp|REGS|Mux23~0_combout\ & ((\dp|REGS|r1:10:rx|Q\(8)))))) # (!\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:11:rx|Q\(8),
	datab => \dp|REGS|destB[1]~0_combout\,
	datac => \dp|REGS|r1:10:rx|Q\(8),
	datad => \dp|REGS|Mux23~0_combout\,
	combout => \dp|REGS|Mux23~1_combout\);

-- Location: LCCOMB_X50_Y50_N18
\dp|REGS|Mux23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux23~7_combout\ = (\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|destB[1]~0_combout\)))) # (!\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|destB[1]~0_combout\ & (\dp|REGS|r1:14:rx|Q\(8))) # (!\dp|REGS|destB[1]~0_combout\ & 
-- ((\dp|REGS|r1:12:rx|Q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:14:rx|Q\(8),
	datab => \dp|REGS|r1:12:rx|Q\(8),
	datac => \dp|REGS|destB[0]~1_combout\,
	datad => \dp|REGS|destB[1]~0_combout\,
	combout => \dp|REGS|Mux23~7_combout\);

-- Location: LCCOMB_X49_Y52_N4
\dp|REGS|Mux23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux23~8_combout\ = (\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|Mux23~7_combout\ & (\dp|REGS|r1:15:rx|Q\(8))) # (!\dp|REGS|Mux23~7_combout\ & ((\dp|REGS|r1:13:rx|Q\(8)))))) # (!\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|Mux23~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:15:rx|Q\(8),
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|r1:13:rx|Q\(8),
	datad => \dp|REGS|Mux23~7_combout\,
	combout => \dp|REGS|Mux23~8_combout\);

-- Location: LCCOMB_X52_Y50_N30
\dp|REGS|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux23~2_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|r1:6:rx|Q\(8)) # ((\dp|REGS|destB[0]~1_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|r1:4:rx|Q\(8) & !\dp|REGS|destB[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|r1:6:rx|Q\(8),
	datac => \dp|REGS|r1:4:rx|Q\(8),
	datad => \dp|REGS|destB[0]~1_combout\,
	combout => \dp|REGS|Mux23~2_combout\);

-- Location: LCCOMB_X52_Y49_N2
\dp|REGS|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux23~3_combout\ = (\dp|REGS|Mux23~2_combout\ & (((\dp|REGS|r1:7:rx|Q\(8)) # (!\dp|REGS|destB[0]~1_combout\)))) # (!\dp|REGS|Mux23~2_combout\ & (\dp|REGS|r1:5:rx|Q\(8) & ((\dp|REGS|destB[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux23~2_combout\,
	datab => \dp|REGS|r1:5:rx|Q\(8),
	datac => \dp|REGS|r1:7:rx|Q\(8),
	datad => \dp|REGS|destB[0]~1_combout\,
	combout => \dp|REGS|Mux23~3_combout\);

-- Location: LCCOMB_X53_Y48_N28
\dp|REGS|Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux23~4_combout\ = (\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|destB[0]~1_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|r1:1:rx|Q\(8)))) # (!\dp|REGS|destB[0]~1_combout\ & (\dp|REGS|r1:0:rx|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|r1:0:rx|Q\(8),
	datac => \dp|REGS|r1:1:rx|Q\(8),
	datad => \dp|REGS|destB[0]~1_combout\,
	combout => \dp|REGS|Mux23~4_combout\);

-- Location: LCCOMB_X52_Y48_N18
\dp|REGS|Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux23~5_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|Mux23~4_combout\ & (\dp|REGS|r1:3:rx|Q\(8))) # (!\dp|REGS|Mux23~4_combout\ & ((\dp|REGS|r1:2:rx|Q\(8)))))) # (!\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|Mux23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|r1:3:rx|Q\(8),
	datac => \dp|REGS|r1:2:rx|Q\(8),
	datad => \dp|REGS|Mux23~4_combout\,
	combout => \dp|REGS|Mux23~5_combout\);

-- Location: LCCOMB_X48_Y52_N6
\dp|REGS|Mux23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux23~6_combout\ = (\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|destB[3]~2_combout\) # ((\dp|REGS|Mux23~3_combout\)))) # (!\dp|REGS|destB[2]~3_combout\ & (!\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|Mux23~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|destB[3]~2_combout\,
	datac => \dp|REGS|Mux23~3_combout\,
	datad => \dp|REGS|Mux23~5_combout\,
	combout => \dp|REGS|Mux23~6_combout\);

-- Location: LCCOMB_X48_Y52_N16
\dp|REGS|Mux23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux23~9_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|Mux23~6_combout\ & ((\dp|REGS|Mux23~8_combout\))) # (!\dp|REGS|Mux23~6_combout\ & (\dp|REGS|Mux23~1_combout\)))) # (!\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|Mux23~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[3]~2_combout\,
	datab => \dp|REGS|Mux23~1_combout\,
	datac => \dp|REGS|Mux23~8_combout\,
	datad => \dp|REGS|Mux23~6_combout\,
	combout => \dp|REGS|Mux23~9_combout\);

-- Location: LCCOMB_X48_Y52_N18
\dp|REG_B|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REG_B|Q[8]~feeder_combout\ = \dp|REGS|Mux23~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|REGS|Mux23~9_combout\,
	combout => \dp|REG_B|Q[8]~feeder_combout\);

-- Location: FF_X48_Y52_N19
\dp|REG_B|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REG_B|Q[8]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_B|Q\(8));

-- Location: LCCOMB_X46_Y51_N14
\dp|RPC|Q[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RPC|Q[7]~30_combout\ = (\dp|RPC|Q\(7) & (!\dp|RPC|Q[6]~29\)) # (!\dp|RPC|Q\(7) & ((\dp|RPC|Q[6]~29\) # (GND)))
-- \dp|RPC|Q[7]~31\ = CARRY((!\dp|RPC|Q[6]~29\) # (!\dp|RPC|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|RPC|Q\(7),
	datad => VCC,
	cin => \dp|RPC|Q[6]~29\,
	combout => \dp|RPC|Q[7]~30_combout\,
	cout => \dp|RPC|Q[7]~31\);

-- Location: LCCOMB_X47_Y50_N14
\dp|dtpc[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtpc[7]~7_combout\ = (\ctrl|EA.Srts~q\ & ((\ctrl|EA.Sfetch~q\ & (\dp|REG_alu|Q\(7))) # (!\ctrl|EA.Sfetch~q\ & ((\dataIN[7]~input_o\))))) # (!\ctrl|EA.Srts~q\ & (((\dp|REG_alu|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Srts~q\,
	datab => \ctrl|EA.Sfetch~q\,
	datac => \dp|REG_alu|Q\(7),
	datad => \dataIN[7]~input_o\,
	combout => \dp|dtpc[7]~7_combout\);

-- Location: FF_X46_Y51_N15
\dp|RPC|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RPC|Q[7]~30_combout\,
	asdata => \dp|dtpc[7]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|ALT_INV_EA.Sfetch~q\,
	ena => \ctrl|uins.wpc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RPC|Q\(7));

-- Location: LCCOMB_X46_Y51_N16
\dp|RPC|Q[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RPC|Q[8]~32_combout\ = (\dp|RPC|Q\(8) & (\dp|RPC|Q[7]~31\ $ (GND))) # (!\dp|RPC|Q\(8) & (!\dp|RPC|Q[7]~31\ & VCC))
-- \dp|RPC|Q[8]~33\ = CARRY((\dp|RPC|Q\(8) & !\dp|RPC|Q[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|RPC|Q\(8),
	datad => VCC,
	cin => \dp|RPC|Q[7]~31\,
	combout => \dp|RPC|Q[8]~32_combout\,
	cout => \dp|RPC|Q[8]~33\);

-- Location: LCCOMB_X47_Y51_N4
\dp|dtpc[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtpc[8]~8_combout\ = (\ctrl|EA.Srts~q\ & ((\ctrl|EA.Sfetch~q\ & ((\dp|REG_alu|Q\(8)))) # (!\ctrl|EA.Sfetch~q\ & (\dataIN[8]~input_o\)))) # (!\ctrl|EA.Srts~q\ & (((\dp|REG_alu|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIN[8]~input_o\,
	datab => \ctrl|EA.Srts~q\,
	datac => \dp|REG_alu|Q\(8),
	datad => \ctrl|EA.Sfetch~q\,
	combout => \dp|dtpc[8]~8_combout\);

-- Location: FF_X46_Y51_N17
\dp|RPC|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RPC|Q[8]~32_combout\,
	asdata => \dp|dtpc[8]~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|ALT_INV_EA.Sfetch~q\,
	ena => \ctrl|uins.wpc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RPC|Q\(8));

-- Location: LCCOMB_X47_Y51_N0
\dp|opB[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[8]~19_combout\ = (\ctrl|uins.mb[0]~0_combout\ & ((\dp|RSP|Q\(8)))) # (!\ctrl|uins.mb[0]~0_combout\ & (\dp|RPC|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RPC|Q\(8),
	datab => \dp|RSP|Q\(8),
	datad => \ctrl|uins.mb[0]~0_combout\,
	combout => \dp|opB[8]~19_combout\);

-- Location: LCCOMB_X48_Y52_N8
\dp|opB[8]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[8]~20_combout\ = (\dp|opB[0]~5_combout\ & ((\dp|opB[8]~19_combout\))) # (!\dp|opB[0]~5_combout\ & (\dp|REG_B|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|REG_B|Q\(8),
	datac => \dp|opB[0]~5_combout\,
	datad => \dp|opB[8]~19_combout\,
	combout => \dp|opB[8]~20_combout\);

-- Location: LCCOMB_X48_Y50_N30
\dp|opB[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[7]~17_combout\ = (\ctrl|uins.mb[0]~0_combout\ & (\dp|RSP|Q\(7))) # (!\ctrl|uins.mb[0]~0_combout\ & ((\dp|RPC|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|RSP|Q\(7),
	datac => \dp|RPC|Q\(7),
	datad => \ctrl|uins.mb[0]~0_combout\,
	combout => \dp|opB[7]~17_combout\);

-- Location: FF_X47_Y50_N17
\dp|REGS|r1:15:rx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|dtreg[7]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:15:rx|Q\(7));

-- Location: FF_X54_Y50_N23
\dp|REGS|r1:7:rx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[7]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:7:rx|Q\(7));

-- Location: FF_X54_Y50_N9
\dp|REGS|r1:3:rx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[7]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:3:rx|Q\(7));

-- Location: LCCOMB_X53_Y50_N14
\dp|REGS|Mux24~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux24~7_combout\ = (\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|destB[3]~2_combout\)))) # (!\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|r1:11:rx|Q\(7)))) # (!\dp|REGS|destB[3]~2_combout\ & (\dp|REGS|r1:3:rx|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|r1:3:rx|Q\(7),
	datac => \dp|REGS|r1:11:rx|Q\(7),
	datad => \dp|REGS|destB[3]~2_combout\,
	combout => \dp|REGS|Mux24~7_combout\);

-- Location: LCCOMB_X54_Y50_N22
\dp|REGS|Mux24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux24~8_combout\ = (\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|Mux24~7_combout\ & (\dp|REGS|r1:15:rx|Q\(7))) # (!\dp|REGS|Mux24~7_combout\ & ((\dp|REGS|r1:7:rx|Q\(7)))))) # (!\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|Mux24~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|r1:15:rx|Q\(7),
	datac => \dp|REGS|r1:7:rx|Q\(7),
	datad => \dp|REGS|Mux24~7_combout\,
	combout => \dp|REGS|Mux24~8_combout\);

-- Location: FF_X49_Y52_N23
\dp|REGS|r1:13:rx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[7]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:13:rx|Q\(7));

-- Location: FF_X48_Y50_N1
\dp|REGS|r1:5:rx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[7]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:5:rx|Q\(7));

-- Location: FF_X50_Y51_N17
\dp|REGS|r1:1:rx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[7]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:1:rx|Q\(7));

-- Location: FF_X49_Y52_N21
\dp|REGS|r1:9:rx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[7]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:9:rx|Q\(7));

-- Location: LCCOMB_X49_Y52_N20
\dp|REGS|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux24~0_combout\ = (\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|r1:9:rx|Q\(7)) # (\dp|REGS|destB[2]~3_combout\)))) # (!\dp|REGS|destB[3]~2_combout\ & (\dp|REGS|r1:1:rx|Q\(7) & ((!\dp|REGS|destB[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:1:rx|Q\(7),
	datab => \dp|REGS|destB[3]~2_combout\,
	datac => \dp|REGS|r1:9:rx|Q\(7),
	datad => \dp|REGS|destB[2]~3_combout\,
	combout => \dp|REGS|Mux24~0_combout\);

-- Location: LCCOMB_X48_Y50_N0
\dp|REGS|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux24~1_combout\ = (\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|Mux24~0_combout\ & (\dp|REGS|r1:13:rx|Q\(7))) # (!\dp|REGS|Mux24~0_combout\ & ((\dp|REGS|r1:5:rx|Q\(7)))))) # (!\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:13:rx|Q\(7),
	datab => \dp|REGS|destB[2]~3_combout\,
	datac => \dp|REGS|r1:5:rx|Q\(7),
	datad => \dp|REGS|Mux24~0_combout\,
	combout => \dp|REGS|Mux24~1_combout\);

-- Location: FF_X55_Y49_N11
\dp|REGS|r1:12:rx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[7]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:12:rx|Q\(7));

-- Location: FF_X54_Y49_N1
\dp|REGS|r1:8:rx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[7]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:8:rx|Q\(7));

-- Location: FF_X55_Y49_N5
\dp|REGS|r1:0:rx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[7]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:0:rx|Q\(7));

-- Location: FF_X54_Y49_N11
\dp|REGS|r1:4:rx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[7]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:4:rx|Q\(7));

-- Location: LCCOMB_X54_Y49_N10
\dp|REGS|Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux24~4_combout\ = (\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|r1:4:rx|Q\(7)) # (\dp|REGS|destB[3]~2_combout\)))) # (!\dp|REGS|destB[2]~3_combout\ & (\dp|REGS|r1:0:rx|Q\(7) & ((!\dp|REGS|destB[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|r1:0:rx|Q\(7),
	datac => \dp|REGS|r1:4:rx|Q\(7),
	datad => \dp|REGS|destB[3]~2_combout\,
	combout => \dp|REGS|Mux24~4_combout\);

-- Location: LCCOMB_X54_Y49_N0
\dp|REGS|Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux24~5_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|Mux24~4_combout\ & (\dp|REGS|r1:12:rx|Q\(7))) # (!\dp|REGS|Mux24~4_combout\ & ((\dp|REGS|r1:8:rx|Q\(7)))))) # (!\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|Mux24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:12:rx|Q\(7),
	datab => \dp|REGS|destB[3]~2_combout\,
	datac => \dp|REGS|r1:8:rx|Q\(7),
	datad => \dp|REGS|Mux24~4_combout\,
	combout => \dp|REGS|Mux24~5_combout\);

-- Location: LCCOMB_X52_Y51_N26
\dp|REGS|r1:14:rx|Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:14:rx|Q[7]~feeder_combout\ = \dp|dtreg[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|dtreg[7]~7_combout\,
	combout => \dp|REGS|r1:14:rx|Q[7]~feeder_combout\);

-- Location: FF_X52_Y51_N27
\dp|REGS|r1:14:rx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:14:rx|Q[7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:14:rx|Q\(7));

-- Location: FF_X54_Y51_N25
\dp|REGS|r1:10:rx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[7]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:10:rx|Q\(7));

-- Location: FF_X52_Y51_N25
\dp|REGS|r1:6:rx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[7]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:6:rx|Q\(7));

-- Location: FF_X53_Y51_N19
\dp|REGS|r1:2:rx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[7]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:2:rx|Q\(7));

-- Location: LCCOMB_X53_Y51_N18
\dp|REGS|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux24~2_combout\ = (\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|destB[2]~3_combout\)))) # (!\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|destB[2]~3_combout\ & (\dp|REGS|r1:6:rx|Q\(7))) # (!\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|r1:2:rx|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:6:rx|Q\(7),
	datab => \dp|REGS|destB[3]~2_combout\,
	datac => \dp|REGS|r1:2:rx|Q\(7),
	datad => \dp|REGS|destB[2]~3_combout\,
	combout => \dp|REGS|Mux24~2_combout\);

-- Location: LCCOMB_X53_Y51_N8
\dp|REGS|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux24~3_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|Mux24~2_combout\ & (\dp|REGS|r1:14:rx|Q\(7))) # (!\dp|REGS|Mux24~2_combout\ & ((\dp|REGS|r1:10:rx|Q\(7)))))) # (!\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:14:rx|Q\(7),
	datab => \dp|REGS|r1:10:rx|Q\(7),
	datac => \dp|REGS|destB[3]~2_combout\,
	datad => \dp|REGS|Mux24~2_combout\,
	combout => \dp|REGS|Mux24~3_combout\);

-- Location: LCCOMB_X48_Y50_N2
\dp|REGS|Mux24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux24~6_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|destB[0]~1_combout\) # ((\dp|REGS|Mux24~3_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & (!\dp|REGS|destB[0]~1_combout\ & (\dp|REGS|Mux24~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|Mux24~5_combout\,
	datad => \dp|REGS|Mux24~3_combout\,
	combout => \dp|REGS|Mux24~6_combout\);

-- Location: LCCOMB_X48_Y50_N4
\dp|REGS|Mux24~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux24~9_combout\ = (\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|Mux24~6_combout\ & (\dp|REGS|Mux24~8_combout\)) # (!\dp|REGS|Mux24~6_combout\ & ((\dp|REGS|Mux24~1_combout\))))) # (!\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|Mux24~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux24~8_combout\,
	datab => \dp|REGS|Mux24~1_combout\,
	datac => \dp|REGS|destB[0]~1_combout\,
	datad => \dp|REGS|Mux24~6_combout\,
	combout => \dp|REGS|Mux24~9_combout\);

-- Location: FF_X48_Y50_N25
\dp|REG_B|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|REGS|Mux24~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_B|Q\(7));

-- Location: LCCOMB_X48_Y50_N18
\dp|opB[7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[7]~18_combout\ = (\dp|opB[0]~5_combout\ & (\dp|opB[7]~17_combout\)) # (!\dp|opB[0]~5_combout\ & ((\dp|REG_B|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[7]~17_combout\,
	datab => \dp|REG_B|Q\(7),
	datac => \dp|opB[0]~5_combout\,
	combout => \dp|opB[7]~18_combout\);

-- Location: LCCOMB_X47_Y48_N14
\dp|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Add2~14_combout\ = (\dp|opB[7]~18_combout\ & (!\dp|Add2~13\)) # (!\dp|opB[7]~18_combout\ & ((\dp|Add2~13\) # (GND)))
-- \dp|Add2~15\ = CARRY((!\dp|Add2~13\) # (!\dp|opB[7]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[7]~18_combout\,
	datad => VCC,
	cin => \dp|Add2~13\,
	combout => \dp|Add2~14_combout\,
	cout => \dp|Add2~15\);

-- Location: LCCOMB_X47_Y48_N16
\dp|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Add2~16_combout\ = (\dp|opB[8]~20_combout\ & (\dp|Add2~15\ $ (GND))) # (!\dp|opB[8]~20_combout\ & (!\dp|Add2~15\ & VCC))
-- \dp|Add2~17\ = CARRY((\dp|opB[8]~20_combout\ & !\dp|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|opB[8]~20_combout\,
	datad => VCC,
	cin => \dp|Add2~15\,
	combout => \dp|Add2~16_combout\,
	cout => \dp|Add2~17\);

-- Location: LCCOMB_X47_Y46_N26
\dp|outalu[8]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[8]~84_combout\ = (\dp|outalu[7]~76_combout\ & (((\dp|outalu[7]~19_combout\)))) # (!\dp|outalu[7]~76_combout\ & ((\dp|outalu[7]~19_combout\ & (\dp|Add2~16_combout\)) # (!\dp|outalu[7]~19_combout\ & ((\dp|opA[7]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Add2~16_combout\,
	datab => \dp|opA[7]~0_combout\,
	datac => \dp|outalu[7]~76_combout\,
	datad => \dp|outalu[7]~19_combout\,
	combout => \dp|outalu[8]~84_combout\);

-- Location: LCCOMB_X47_Y46_N8
\dp|outalu[8]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[8]~85_combout\ = (\dp|outalu[7]~76_combout\ & ((\dp|outalu[8]~84_combout\ & (!\dp|opA[8]~8_combout\)) # (!\dp|outalu[8]~84_combout\ & ((\dp|opA[9]~9_combout\))))) # (!\dp|outalu[7]~76_combout\ & (((\dp|outalu[8]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[8]~8_combout\,
	datab => \dp|outalu[7]~76_combout\,
	datac => \dp|outalu[8]~84_combout\,
	datad => \dp|opA[9]~9_combout\,
	combout => \dp|outalu[8]~85_combout\);

-- Location: LCCOMB_X45_Y46_N0
\dp|outalu[7]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[7]~73_combout\ = (\dp|RIR|Q\(12) & (\dp|RIR|Q\(14))) # (!\dp|RIR|Q\(12) & ((\dp|RIR|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|RIR|Q\(14),
	datac => \dp|RIR|Q\(13),
	datad => \dp|RIR|Q\(12),
	combout => \dp|outalu[7]~73_combout\);

-- Location: LCCOMB_X47_Y46_N10
\dp|outalu[8]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[8]~82_combout\ = (\dp|opB[8]~20_combout\ & ((\dp|RIR|Q\(12)) # (\dp|outalu[7]~73_combout\ $ (!\dp|opA[8]~8_combout\)))) # (!\dp|opB[8]~20_combout\ & (((!\dp|outalu[7]~73_combout\ & \dp|opA[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(12),
	datab => \dp|outalu[7]~73_combout\,
	datac => \dp|opB[8]~20_combout\,
	datad => \dp|opA[8]~8_combout\,
	combout => \dp|outalu[8]~82_combout\);

-- Location: LCCOMB_X47_Y46_N24
\dp|outalu[7]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[7]~71_combout\ = (\dp|RIR|Q\(15) & ((\dp|outalu[7]~70_combout\) # ((\dp|RIR|Q\(12))))) # (!\dp|RIR|Q\(15) & (((\dp|outalu[7]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[7]~70_combout\,
	datab => \dp|RIR|Q\(12),
	datac => \dp|RIR|Q\(15),
	datad => \dp|outalu[7]~69_combout\,
	combout => \dp|outalu[7]~71_combout\);

-- Location: LCCOMB_X48_Y45_N22
\dp|addA[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|addA[8]~1_combout\ = (\dp|addA[8]~0_combout\ & (!\ctrl|Equal31~6_combout\)) # (!\dp|addA[8]~0_combout\ & ((\dp|opA[8]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|Equal31~6_combout\,
	datac => \dp|addA[8]~0_combout\,
	datad => \dp|opA[8]~8_combout\,
	combout => \dp|addA[8]~1_combout\);

-- Location: LCCOMB_X48_Y50_N28
\dp|addB[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|addB[7]~0_combout\ = \ctrl|Equal31~4_combout\ $ (((\dp|opB[0]~5_combout\ & (\dp|opB[7]~17_combout\)) # (!\dp|opB[0]~5_combout\ & ((\dp|REG_B|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[7]~17_combout\,
	datab => \dp|REG_B|Q\(7),
	datac => \dp|opB[0]~5_combout\,
	datad => \ctrl|Equal31~4_combout\,
	combout => \dp|addB[7]~0_combout\);

-- Location: LCCOMB_X47_Y47_N28
\dp|carry~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|carry~6_combout\ = (\dp|addB[6]~1_combout\ & ((\dp|carry~5_combout\) # (\dp|opA[6]~1_combout\ $ (\ctrl|Equal31~5_combout\)))) # (!\dp|addB[6]~1_combout\ & (\dp|carry~5_combout\ & (\dp|opA[6]~1_combout\ $ (\ctrl|Equal31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|addB[6]~1_combout\,
	datab => \dp|opA[6]~1_combout\,
	datac => \ctrl|Equal31~5_combout\,
	datad => \dp|carry~5_combout\,
	combout => \dp|carry~6_combout\);

-- Location: LCCOMB_X47_Y47_N6
\dp|carry~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|carry~7_combout\ = (\dp|addB[7]~0_combout\ & ((\dp|carry~6_combout\) # (\ctrl|Equal31~5_combout\ $ (\dp|opA[7]~0_combout\)))) # (!\dp|addB[7]~0_combout\ & (\dp|carry~6_combout\ & (\ctrl|Equal31~5_combout\ $ (\dp|opA[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~5_combout\,
	datab => \dp|addB[7]~0_combout\,
	datac => \dp|opA[7]~0_combout\,
	datad => \dp|carry~6_combout\,
	combout => \dp|carry~7_combout\);

-- Location: LCCOMB_X47_Y47_N20
\dp|add[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|add[8]~2_combout\ = \ctrl|Equal31~4_combout\ $ (\dp|opB[8]~20_combout\ $ (\dp|addA[8]~1_combout\ $ (\dp|carry~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~4_combout\,
	datab => \dp|opB[8]~20_combout\,
	datac => \dp|addA[8]~1_combout\,
	datad => \dp|carry~7_combout\,
	combout => \dp|add[8]~2_combout\);

-- Location: LCCOMB_X47_Y46_N28
\dp|outalu[8]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[8]~83_combout\ = (\dp|outalu[7]~71_combout\ & (((\dp|outalu[7]~72_combout\) # (\dp|add[8]~2_combout\)))) # (!\dp|outalu[7]~71_combout\ & (\dp|outalu[8]~82_combout\ & (!\dp|outalu[7]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[8]~82_combout\,
	datab => \dp|outalu[7]~71_combout\,
	datac => \dp|outalu[7]~72_combout\,
	datad => \dp|add[8]~2_combout\,
	combout => \dp|outalu[8]~83_combout\);

-- Location: LCCOMB_X47_Y46_N18
\dp|outalu[8]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[8]~86_combout\ = (\dp|outalu[7]~72_combout\ & ((\dp|outalu[8]~83_combout\ & ((\dp|outalu[8]~85_combout\))) # (!\dp|outalu[8]~83_combout\ & (\dp|opA[0]~7_combout\)))) # (!\dp|outalu[7]~72_combout\ & (((\dp|outalu[8]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[0]~7_combout\,
	datab => \dp|outalu[7]~72_combout\,
	datac => \dp|outalu[8]~85_combout\,
	datad => \dp|outalu[8]~83_combout\,
	combout => \dp|outalu[8]~86_combout\);

-- Location: LCCOMB_X47_Y46_N4
\dp|outalu[8]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[8]~87_combout\ = (\dp|outalu[7]~80_combout\ & (\dp|REG_A|Q\(8))) # (!\dp|outalu[7]~80_combout\ & ((\dp|outalu[8]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|REG_A|Q\(8),
	datac => \dp|outalu[7]~80_combout\,
	datad => \dp|outalu[8]~86_combout\,
	combout => \dp|outalu[8]~87_combout\);

-- Location: FF_X47_Y46_N5
\dp|REG_alu|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|outalu[8]~87_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Salu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_alu|Q\(8));

-- Location: FF_X45_Y50_N17
\dp|RSP|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RSP|Q[8]~32_combout\,
	asdata => \dp|REG_alu|Q\(8),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|uins.msp~combout\,
	ena => \ctrl|uins.wsp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RSP|Q\(8));

-- Location: LCCOMB_X45_Y50_N18
\dp|RSP|Q[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RSP|Q[9]~34_combout\ = (\dp|RSP|Q\(9) & (\dp|RSP|Q[8]~33\ & VCC)) # (!\dp|RSP|Q\(9) & (!\dp|RSP|Q[8]~33\))
-- \dp|RSP|Q[9]~35\ = CARRY((!\dp|RSP|Q\(9) & !\dp|RSP|Q[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|RSP|Q\(9),
	datad => VCC,
	cin => \dp|RSP|Q[8]~33\,
	combout => \dp|RSP|Q[9]~34_combout\,
	cout => \dp|RSP|Q[9]~35\);

-- Location: LCCOMB_X47_Y50_N20
\dp|dtreg[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtreg[9]~9_combout\ = (\ctrl|uins.mreg~combout\ & (\dataIN[9]~input_o\)) # (!\ctrl|uins.mreg~combout\ & ((\dp|REG_alu|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|uins.mreg~combout\,
	datab => \dataIN[9]~input_o\,
	datad => \dp|REG_alu|Q\(9),
	combout => \dp|dtreg[9]~9_combout\);

-- Location: FF_X54_Y50_N5
\dp|REGS|r1:3:rx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[9]~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:3:rx|Q\(9));

-- Location: FF_X53_Y50_N29
\dp|REGS|r1:11:rx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[9]~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:11:rx|Q\(9));

-- Location: LCCOMB_X54_Y50_N4
\dp|REGS|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux6~7_combout\ = (\dp|RIR|Q\(6) & (\dp|RIR|Q\(7))) # (!\dp|RIR|Q\(6) & ((\dp|RIR|Q\(7) & ((\dp|REGS|r1:11:rx|Q\(9)))) # (!\dp|RIR|Q\(7) & (\dp|REGS|r1:3:rx|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|RIR|Q\(7),
	datac => \dp|REGS|r1:3:rx|Q\(9),
	datad => \dp|REGS|r1:11:rx|Q\(9),
	combout => \dp|REGS|Mux6~7_combout\);

-- Location: FF_X54_Y50_N15
\dp|REGS|r1:7:rx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[9]~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:7:rx|Q\(9));

-- Location: FF_X47_Y50_N21
\dp|REGS|r1:15:rx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|dtreg[9]~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:15:rx|Q\(9));

-- Location: LCCOMB_X54_Y50_N14
\dp|REGS|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux6~8_combout\ = (\dp|RIR|Q\(6) & ((\dp|REGS|Mux6~7_combout\ & ((\dp|REGS|r1:15:rx|Q\(9)))) # (!\dp|REGS|Mux6~7_combout\ & (\dp|REGS|r1:7:rx|Q\(9))))) # (!\dp|RIR|Q\(6) & (\dp|REGS|Mux6~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|REGS|Mux6~7_combout\,
	datac => \dp|REGS|r1:7:rx|Q\(9),
	datad => \dp|REGS|r1:15:rx|Q\(9),
	combout => \dp|REGS|Mux6~8_combout\);

-- Location: FF_X52_Y51_N1
\dp|REGS|r1:6:rx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[9]~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:6:rx|Q\(9));

-- Location: FF_X53_Y51_N3
\dp|REGS|r1:2:rx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[9]~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:2:rx|Q\(9));

-- Location: LCCOMB_X53_Y51_N2
\dp|REGS|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux6~2_combout\ = (\dp|RIR|Q\(6) & ((\dp|REGS|r1:6:rx|Q\(9)) # ((\dp|RIR|Q\(7))))) # (!\dp|RIR|Q\(6) & (((\dp|REGS|r1:2:rx|Q\(9) & !\dp|RIR|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|REGS|r1:6:rx|Q\(9),
	datac => \dp|REGS|r1:2:rx|Q\(9),
	datad => \dp|RIR|Q\(7),
	combout => \dp|REGS|Mux6~2_combout\);

-- Location: FF_X52_Y51_N17
\dp|REGS|r1:14:rx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[9]~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:14:rx|Q\(9));

-- Location: LCCOMB_X54_Y51_N26
\dp|REGS|r1:10:rx|Q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:10:rx|Q[9]~feeder_combout\ = \dp|dtreg[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|dtreg[9]~9_combout\,
	combout => \dp|REGS|r1:10:rx|Q[9]~feeder_combout\);

-- Location: FF_X54_Y51_N27
\dp|REGS|r1:10:rx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:10:rx|Q[9]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:10:rx|Q\(9));

-- Location: LCCOMB_X52_Y51_N16
\dp|REGS|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux6~3_combout\ = (\dp|RIR|Q\(7) & ((\dp|REGS|Mux6~2_combout\ & (\dp|REGS|r1:14:rx|Q\(9))) # (!\dp|REGS|Mux6~2_combout\ & ((\dp|REGS|r1:10:rx|Q\(9)))))) # (!\dp|RIR|Q\(7) & (\dp|REGS|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(7),
	datab => \dp|REGS|Mux6~2_combout\,
	datac => \dp|REGS|r1:14:rx|Q\(9),
	datad => \dp|REGS|r1:10:rx|Q\(9),
	combout => \dp|REGS|Mux6~3_combout\);

-- Location: FF_X54_Y49_N3
\dp|REGS|r1:8:rx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[9]~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:8:rx|Q\(9));

-- Location: FF_X54_Y49_N17
\dp|REGS|r1:4:rx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[9]~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:4:rx|Q\(9));

-- Location: FF_X55_Y49_N25
\dp|REGS|r1:0:rx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[9]~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:0:rx|Q\(9));

-- Location: LCCOMB_X55_Y49_N24
\dp|REGS|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux6~4_combout\ = (\dp|RIR|Q\(6) & ((\dp|REGS|r1:4:rx|Q\(9)) # ((\dp|RIR|Q\(7))))) # (!\dp|RIR|Q\(6) & (((\dp|REGS|r1:0:rx|Q\(9) & !\dp|RIR|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:4:rx|Q\(9),
	datab => \dp|RIR|Q\(6),
	datac => \dp|REGS|r1:0:rx|Q\(9),
	datad => \dp|RIR|Q\(7),
	combout => \dp|REGS|Mux6~4_combout\);

-- Location: FF_X55_Y49_N7
\dp|REGS|r1:12:rx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[9]~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:12:rx|Q\(9));

-- Location: LCCOMB_X55_Y49_N6
\dp|REGS|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux6~5_combout\ = (\dp|REGS|Mux6~4_combout\ & (((\dp|REGS|r1:12:rx|Q\(9)) # (!\dp|RIR|Q\(7))))) # (!\dp|REGS|Mux6~4_combout\ & (\dp|REGS|r1:8:rx|Q\(9) & ((\dp|RIR|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:8:rx|Q\(9),
	datab => \dp|REGS|Mux6~4_combout\,
	datac => \dp|REGS|r1:12:rx|Q\(9),
	datad => \dp|RIR|Q\(7),
	combout => \dp|REGS|Mux6~5_combout\);

-- Location: LCCOMB_X55_Y50_N22
\dp|REGS|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux6~6_combout\ = (\dp|RIR|Q\(4) & (((\dp|RIR|Q\(5))))) # (!\dp|RIR|Q\(4) & ((\dp|RIR|Q\(5) & (\dp|REGS|Mux6~3_combout\)) # (!\dp|RIR|Q\(5) & ((\dp|REGS|Mux6~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux6~3_combout\,
	datab => \dp|RIR|Q\(4),
	datac => \dp|RIR|Q\(5),
	datad => \dp|REGS|Mux6~5_combout\,
	combout => \dp|REGS|Mux6~6_combout\);

-- Location: FF_X49_Y52_N17
\dp|REGS|r1:13:rx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[9]~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:13:rx|Q\(9));

-- Location: FF_X50_Y52_N9
\dp|REGS|r1:5:rx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[9]~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:5:rx|Q\(9));

-- Location: FF_X50_Y51_N7
\dp|REGS|r1:1:rx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[9]~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:1:rx|Q\(9));

-- Location: FF_X49_Y52_N31
\dp|REGS|r1:9:rx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[9]~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:9:rx|Q\(9));

-- Location: LCCOMB_X49_Y52_N30
\dp|REGS|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux6~0_combout\ = (\dp|RIR|Q\(6) & (((\dp|RIR|Q\(7))))) # (!\dp|RIR|Q\(6) & ((\dp|RIR|Q\(7) & ((\dp|REGS|r1:9:rx|Q\(9)))) # (!\dp|RIR|Q\(7) & (\dp|REGS|r1:1:rx|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:1:rx|Q\(9),
	datab => \dp|RIR|Q\(6),
	datac => \dp|REGS|r1:9:rx|Q\(9),
	datad => \dp|RIR|Q\(7),
	combout => \dp|REGS|Mux6~0_combout\);

-- Location: LCCOMB_X50_Y52_N8
\dp|REGS|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux6~1_combout\ = (\dp|RIR|Q\(6) & ((\dp|REGS|Mux6~0_combout\ & (\dp|REGS|r1:13:rx|Q\(9))) # (!\dp|REGS|Mux6~0_combout\ & ((\dp|REGS|r1:5:rx|Q\(9)))))) # (!\dp|RIR|Q\(6) & (((\dp|REGS|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:13:rx|Q\(9),
	datab => \dp|RIR|Q\(6),
	datac => \dp|REGS|r1:5:rx|Q\(9),
	datad => \dp|REGS|Mux6~0_combout\,
	combout => \dp|REGS|Mux6~1_combout\);

-- Location: LCCOMB_X55_Y50_N30
\dp|REGS|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux6~9_combout\ = (\dp|RIR|Q\(4) & ((\dp|REGS|Mux6~6_combout\ & (\dp|REGS|Mux6~8_combout\)) # (!\dp|REGS|Mux6~6_combout\ & ((\dp|REGS|Mux6~1_combout\))))) # (!\dp|RIR|Q\(4) & (((\dp|REGS|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux6~8_combout\,
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|Mux6~6_combout\,
	datad => \dp|REGS|Mux6~1_combout\,
	combout => \dp|REGS|Mux6~9_combout\);

-- Location: FF_X55_Y50_N31
\dp|REG_A|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|Mux6~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_A|Q\(9));

-- Location: LCCOMB_X52_Y51_N6
\dp|REGS|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux22~0_combout\ = (\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|r1:10:rx|Q\(9)) # (\dp|REGS|destB[2]~3_combout\)))) # (!\dp|REGS|destB[3]~2_combout\ & (\dp|REGS|r1:2:rx|Q\(9) & ((!\dp|REGS|destB[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:2:rx|Q\(9),
	datab => \dp|REGS|r1:10:rx|Q\(9),
	datac => \dp|REGS|destB[3]~2_combout\,
	datad => \dp|REGS|destB[2]~3_combout\,
	combout => \dp|REGS|Mux22~0_combout\);

-- Location: LCCOMB_X52_Y51_N0
\dp|REGS|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux22~1_combout\ = (\dp|REGS|Mux22~0_combout\ & ((\dp|REGS|r1:14:rx|Q\(9)) # ((!\dp|REGS|destB[2]~3_combout\)))) # (!\dp|REGS|Mux22~0_combout\ & (((\dp|REGS|r1:6:rx|Q\(9) & \dp|REGS|destB[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux22~0_combout\,
	datab => \dp|REGS|r1:14:rx|Q\(9),
	datac => \dp|REGS|r1:6:rx|Q\(9),
	datad => \dp|REGS|destB[2]~3_combout\,
	combout => \dp|REGS|Mux22~1_combout\);

-- Location: LCCOMB_X53_Y50_N2
\dp|REGS|Mux22~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux22~7_combout\ = (\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|r1:7:rx|Q\(9)) # (\dp|REGS|destB[3]~2_combout\)))) # (!\dp|REGS|destB[2]~3_combout\ & (\dp|REGS|r1:3:rx|Q\(9) & ((!\dp|REGS|destB[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:3:rx|Q\(9),
	datab => \dp|REGS|r1:7:rx|Q\(9),
	datac => \dp|REGS|destB[2]~3_combout\,
	datad => \dp|REGS|destB[3]~2_combout\,
	combout => \dp|REGS|Mux22~7_combout\);

-- Location: LCCOMB_X53_Y50_N28
\dp|REGS|Mux22~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux22~8_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|Mux22~7_combout\ & (\dp|REGS|r1:15:rx|Q\(9))) # (!\dp|REGS|Mux22~7_combout\ & ((\dp|REGS|r1:11:rx|Q\(9)))))) # (!\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|Mux22~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[3]~2_combout\,
	datab => \dp|REGS|r1:15:rx|Q\(9),
	datac => \dp|REGS|r1:11:rx|Q\(9),
	datad => \dp|REGS|Mux22~7_combout\,
	combout => \dp|REGS|Mux22~8_combout\);

-- Location: LCCOMB_X50_Y51_N6
\dp|REGS|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux22~2_combout\ = (\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|destB[2]~3_combout\)))) # (!\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|destB[2]~3_combout\ & (\dp|REGS|r1:5:rx|Q\(9))) # (!\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|r1:1:rx|Q\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[3]~2_combout\,
	datab => \dp|REGS|r1:5:rx|Q\(9),
	datac => \dp|REGS|r1:1:rx|Q\(9),
	datad => \dp|REGS|destB[2]~3_combout\,
	combout => \dp|REGS|Mux22~2_combout\);

-- Location: LCCOMB_X49_Y52_N16
\dp|REGS|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux22~3_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|Mux22~2_combout\ & ((\dp|REGS|r1:13:rx|Q\(9)))) # (!\dp|REGS|Mux22~2_combout\ & (\dp|REGS|r1:9:rx|Q\(9))))) # (!\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:9:rx|Q\(9),
	datab => \dp|REGS|destB[3]~2_combout\,
	datac => \dp|REGS|r1:13:rx|Q\(9),
	datad => \dp|REGS|Mux22~2_combout\,
	combout => \dp|REGS|Mux22~3_combout\);

-- Location: LCCOMB_X54_Y49_N2
\dp|REGS|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux22~4_combout\ = (\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|destB[3]~2_combout\)))) # (!\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|r1:8:rx|Q\(9)))) # (!\dp|REGS|destB[3]~2_combout\ & (\dp|REGS|r1:0:rx|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|r1:0:rx|Q\(9),
	datac => \dp|REGS|r1:8:rx|Q\(9),
	datad => \dp|REGS|destB[3]~2_combout\,
	combout => \dp|REGS|Mux22~4_combout\);

-- Location: LCCOMB_X54_Y49_N16
\dp|REGS|Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux22~5_combout\ = (\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|Mux22~4_combout\ & (\dp|REGS|r1:12:rx|Q\(9))) # (!\dp|REGS|Mux22~4_combout\ & ((\dp|REGS|r1:4:rx|Q\(9)))))) # (!\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|Mux22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|r1:12:rx|Q\(9),
	datac => \dp|REGS|r1:4:rx|Q\(9),
	datad => \dp|REGS|Mux22~4_combout\,
	combout => \dp|REGS|Mux22~5_combout\);

-- Location: LCCOMB_X50_Y52_N6
\dp|REGS|Mux22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux22~6_combout\ = (\dp|REGS|destB[1]~0_combout\ & (\dp|REGS|destB[0]~1_combout\)) # (!\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|destB[0]~1_combout\ & (\dp|REGS|Mux22~3_combout\)) # (!\dp|REGS|destB[0]~1_combout\ & 
-- ((\dp|REGS|Mux22~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|Mux22~3_combout\,
	datad => \dp|REGS|Mux22~5_combout\,
	combout => \dp|REGS|Mux22~6_combout\);

-- Location: LCCOMB_X50_Y52_N20
\dp|REGS|Mux22~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux22~9_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|Mux22~6_combout\ & ((\dp|REGS|Mux22~8_combout\))) # (!\dp|REGS|Mux22~6_combout\ & (\dp|REGS|Mux22~1_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|Mux22~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux22~1_combout\,
	datab => \dp|REGS|destB[1]~0_combout\,
	datac => \dp|REGS|Mux22~8_combout\,
	datad => \dp|REGS|Mux22~6_combout\,
	combout => \dp|REGS|Mux22~9_combout\);

-- Location: LCCOMB_X50_Y52_N26
\dp|REG_B|Q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REG_B|Q[9]~feeder_combout\ = \dp|REGS|Mux22~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|REGS|Mux22~9_combout\,
	combout => \dp|REG_B|Q[9]~feeder_combout\);

-- Location: FF_X50_Y52_N27
\dp|REG_B|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REG_B|Q[9]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_B|Q\(9));

-- Location: LCCOMB_X46_Y51_N18
\dp|RPC|Q[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RPC|Q[9]~34_combout\ = (\dp|RPC|Q\(9) & (!\dp|RPC|Q[8]~33\)) # (!\dp|RPC|Q\(9) & ((\dp|RPC|Q[8]~33\) # (GND)))
-- \dp|RPC|Q[9]~35\ = CARRY((!\dp|RPC|Q[8]~33\) # (!\dp|RPC|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|RPC|Q\(9),
	datad => VCC,
	cin => \dp|RPC|Q[8]~33\,
	combout => \dp|RPC|Q[9]~34_combout\,
	cout => \dp|RPC|Q[9]~35\);

-- Location: LCCOMB_X47_Y50_N12
\dp|dtpc[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtpc[9]~9_combout\ = (\ctrl|EA.Srts~q\ & ((\ctrl|EA.Sfetch~q\ & (\dp|REG_alu|Q\(9))) # (!\ctrl|EA.Sfetch~q\ & ((\dataIN[9]~input_o\))))) # (!\ctrl|EA.Srts~q\ & (\dp|REG_alu|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_alu|Q\(9),
	datab => \dataIN[9]~input_o\,
	datac => \ctrl|EA.Srts~q\,
	datad => \ctrl|EA.Sfetch~q\,
	combout => \dp|dtpc[9]~9_combout\);

-- Location: FF_X46_Y51_N19
\dp|RPC|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RPC|Q[9]~34_combout\,
	asdata => \dp|dtpc[9]~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|ALT_INV_EA.Sfetch~q\,
	ena => \ctrl|uins.wpc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RPC|Q\(9));

-- Location: LCCOMB_X45_Y51_N20
\dp|opB[9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[9]~21_combout\ = (\ctrl|uins.mb[0]~0_combout\ & ((\dp|RSP|Q\(9)))) # (!\ctrl|uins.mb[0]~0_combout\ & (\dp|RPC|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|RPC|Q\(9),
	datac => \dp|RSP|Q\(9),
	datad => \ctrl|uins.mb[0]~0_combout\,
	combout => \dp|opB[9]~21_combout\);

-- Location: LCCOMB_X46_Y48_N8
\dp|opB[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[9]~22_combout\ = (\dp|opB[0]~5_combout\ & ((\dp|opB[9]~21_combout\))) # (!\dp|opB[0]~5_combout\ & (\dp|REG_B|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_B|Q\(9),
	datab => \dp|opB[9]~21_combout\,
	datad => \dp|opB[0]~5_combout\,
	combout => \dp|opB[9]~22_combout\);

-- Location: LCCOMB_X48_Y45_N24
\dp|addA[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|addA[9]~2_combout\ = (\dp|addA[8]~0_combout\ & ((!\ctrl|Equal31~6_combout\))) # (!\dp|addA[8]~0_combout\ & (\dp|opA[9]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[9]~9_combout\,
	datac => \dp|addA[8]~0_combout\,
	datad => \ctrl|Equal31~6_combout\,
	combout => \dp|addA[9]~2_combout\);

-- Location: LCCOMB_X47_Y47_N16
\dp|carry~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|carry~8_combout\ = (\dp|addA[8]~1_combout\ & ((\dp|carry~7_combout\) # (\ctrl|Equal31~4_combout\ $ (\dp|opB[8]~20_combout\)))) # (!\dp|addA[8]~1_combout\ & (\dp|carry~7_combout\ & (\ctrl|Equal31~4_combout\ $ (\dp|opB[8]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~4_combout\,
	datab => \dp|opB[8]~20_combout\,
	datac => \dp|addA[8]~1_combout\,
	datad => \dp|carry~7_combout\,
	combout => \dp|carry~8_combout\);

-- Location: LCCOMB_X47_Y47_N22
\dp|add[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|add[9]~3_combout\ = \dp|opB[9]~22_combout\ $ (\ctrl|Equal31~4_combout\ $ (\dp|addA[9]~2_combout\ $ (\dp|carry~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[9]~22_combout\,
	datab => \ctrl|Equal31~4_combout\,
	datac => \dp|addA[9]~2_combout\,
	datad => \dp|carry~8_combout\,
	combout => \dp|add[9]~3_combout\);

-- Location: LCCOMB_X46_Y48_N4
\dp|outalu~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu~120_combout\ = \dp|opA[9]~9_combout\ $ (((\dp|opB[0]~5_combout\ & ((\dp|opB[9]~21_combout\))) # (!\dp|opB[0]~5_combout\ & (\dp|REG_B|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_B|Q\(9),
	datab => \dp|opA[9]~9_combout\,
	datac => \dp|opB[9]~21_combout\,
	datad => \dp|opB[0]~5_combout\,
	combout => \dp|outalu~120_combout\);

-- Location: LCCOMB_X46_Y48_N6
\dp|outalu[9]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[9]~123_combout\ = (\dp|opB[0]~5_combout\ & ((\dp|opB[9]~21_combout\))) # (!\dp|opB[0]~5_combout\ & (\dp|REG_B|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_B|Q\(9),
	datab => \dp|opB[9]~21_combout\,
	datad => \dp|opB[0]~5_combout\,
	combout => \dp|outalu[9]~123_combout\);

-- Location: LCCOMB_X46_Y48_N16
\dp|outalu[9]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[9]~124_combout\ = (\dp|outalu[10]~23_combout\ & (\dp|outalu[10]~24_combout\)) # (!\dp|outalu[10]~23_combout\ & ((\dp|outalu[10]~24_combout\ & ((\dp|opA[9]~9_combout\) # (\dp|outalu[9]~123_combout\))) # (!\dp|outalu[10]~24_combout\ & 
-- (\dp|opA[9]~9_combout\ & \dp|outalu[9]~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~23_combout\,
	datab => \dp|outalu[10]~24_combout\,
	datac => \dp|opA[9]~9_combout\,
	datad => \dp|outalu[9]~123_combout\,
	combout => \dp|outalu[9]~124_combout\);

-- Location: LCCOMB_X46_Y48_N26
\dp|outalu[9]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[9]~121_combout\ = (\dp|outalu[7]~19_combout\ & (((\dp|outalu[10]~20_combout\) # (!\dp|opA[9]~9_combout\)))) # (!\dp|outalu[7]~19_combout\ & (\dp|opA[8]~8_combout\ & ((!\dp|outalu[10]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[7]~19_combout\,
	datab => \dp|opA[8]~8_combout\,
	datac => \dp|opA[9]~9_combout\,
	datad => \dp|outalu[10]~20_combout\,
	combout => \dp|outalu[9]~121_combout\);

-- Location: LCCOMB_X46_Y51_N20
\dp|RPC|Q[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RPC|Q[10]~36_combout\ = (\dp|RPC|Q\(10) & (\dp|RPC|Q[9]~35\ $ (GND))) # (!\dp|RPC|Q\(10) & (!\dp|RPC|Q[9]~35\ & VCC))
-- \dp|RPC|Q[10]~37\ = CARRY((\dp|RPC|Q\(10) & !\dp|RPC|Q[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|RPC|Q\(10),
	datad => VCC,
	cin => \dp|RPC|Q[9]~35\,
	combout => \dp|RPC|Q[10]~36_combout\,
	cout => \dp|RPC|Q[10]~37\);

-- Location: LCCOMB_X47_Y50_N26
\dp|dtpc[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtpc[10]~10_combout\ = (\ctrl|EA.Srts~q\ & ((\ctrl|EA.Sfetch~q\ & (\dp|REG_alu|Q\(10))) # (!\ctrl|EA.Sfetch~q\ & ((\dataIN[10]~input_o\))))) # (!\ctrl|EA.Srts~q\ & (\dp|REG_alu|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_alu|Q\(10),
	datab => \dataIN[10]~input_o\,
	datac => \ctrl|EA.Srts~q\,
	datad => \ctrl|EA.Sfetch~q\,
	combout => \dp|dtpc[10]~10_combout\);

-- Location: FF_X46_Y51_N21
\dp|RPC|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RPC|Q[10]~36_combout\,
	asdata => \dp|dtpc[10]~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|ALT_INV_EA.Sfetch~q\,
	ena => \ctrl|uins.wpc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RPC|Q\(10));

-- Location: LCCOMB_X48_Y51_N8
\dp|opB[10]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[10]~23_combout\ = (\ctrl|uins.mb[0]~0_combout\ & ((\dp|RSP|Q\(10)))) # (!\ctrl|uins.mb[0]~0_combout\ & (\dp|RPC|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|uins.mb[0]~0_combout\,
	datac => \dp|RPC|Q\(10),
	datad => \dp|RSP|Q\(10),
	combout => \dp|opB[10]~23_combout\);

-- Location: FF_X47_Y50_N31
\dp|REGS|r1:15:rx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|dtreg[10]~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:15:rx|Q\(10));

-- Location: FF_X50_Y50_N7
\dp|REGS|r1:12:rx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[10]~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:12:rx|Q\(10));

-- Location: LCCOMB_X49_Y52_N10
\dp|REGS|r1:13:rx|Q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:13:rx|Q[10]~feeder_combout\ = \dp|dtreg[10]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|dtreg[10]~10_combout\,
	combout => \dp|REGS|r1:13:rx|Q[10]~feeder_combout\);

-- Location: FF_X49_Y52_N11
\dp|REGS|r1:13:rx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:13:rx|Q[10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:13:rx|Q\(10));

-- Location: LCCOMB_X52_Y51_N20
\dp|REGS|Mux21~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux21~7_combout\ = (\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|r1:13:rx|Q\(10)) # (\dp|REGS|destB[1]~0_combout\)))) # (!\dp|REGS|destB[0]~1_combout\ & (\dp|REGS|r1:12:rx|Q\(10) & ((!\dp|REGS|destB[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:12:rx|Q\(10),
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|r1:13:rx|Q\(10),
	datad => \dp|REGS|destB[1]~0_combout\,
	combout => \dp|REGS|Mux21~7_combout\);

-- Location: FF_X52_Y51_N31
\dp|REGS|r1:14:rx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[10]~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:14:rx|Q\(10));

-- Location: LCCOMB_X52_Y51_N30
\dp|REGS|Mux21~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux21~8_combout\ = (\dp|REGS|Mux21~7_combout\ & ((\dp|REGS|r1:15:rx|Q\(10)) # ((!\dp|REGS|destB[1]~0_combout\)))) # (!\dp|REGS|Mux21~7_combout\ & (((\dp|REGS|r1:14:rx|Q\(10) & \dp|REGS|destB[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:15:rx|Q\(10),
	datab => \dp|REGS|Mux21~7_combout\,
	datac => \dp|REGS|r1:14:rx|Q\(10),
	datad => \dp|REGS|destB[1]~0_combout\,
	combout => \dp|REGS|Mux21~8_combout\);

-- Location: FF_X54_Y50_N3
\dp|REGS|r1:7:rx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[10]~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:7:rx|Q\(10));

-- Location: FF_X48_Y51_N7
\dp|REGS|r1:6:rx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[10]~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:6:rx|Q\(10));

-- Location: FF_X50_Y50_N25
\dp|REGS|r1:4:rx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[10]~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:4:rx|Q\(10));

-- Location: FF_X50_Y51_N9
\dp|REGS|r1:5:rx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[10]~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:5:rx|Q\(10));

-- Location: LCCOMB_X50_Y51_N8
\dp|REGS|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux21~0_combout\ = (\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|destB[0]~1_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|r1:5:rx|Q\(10)))) # (!\dp|REGS|destB[0]~1_combout\ & 
-- (\dp|REGS|r1:4:rx|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|r1:4:rx|Q\(10),
	datac => \dp|REGS|r1:5:rx|Q\(10),
	datad => \dp|REGS|destB[0]~1_combout\,
	combout => \dp|REGS|Mux21~0_combout\);

-- Location: LCCOMB_X48_Y51_N6
\dp|REGS|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux21~1_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|Mux21~0_combout\ & (\dp|REGS|r1:7:rx|Q\(10))) # (!\dp|REGS|Mux21~0_combout\ & ((\dp|REGS|r1:6:rx|Q\(10)))))) # (!\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:7:rx|Q\(10),
	datab => \dp|REGS|destB[1]~0_combout\,
	datac => \dp|REGS|r1:6:rx|Q\(10),
	datad => \dp|REGS|Mux21~0_combout\,
	combout => \dp|REGS|Mux21~1_combout\);

-- Location: FF_X53_Y50_N9
\dp|REGS|r1:9:rx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[10]~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:9:rx|Q\(10));

-- Location: FF_X53_Y50_N23
\dp|REGS|r1:11:rx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[10]~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:11:rx|Q\(10));

-- Location: FF_X54_Y51_N21
\dp|REGS|r1:10:rx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[10]~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:10:rx|Q\(10));

-- Location: LCCOMB_X52_Y50_N8
\dp|REGS|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux21~2_combout\ = (\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|destB[1]~0_combout\)))) # (!\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|destB[1]~0_combout\ & (\dp|REGS|r1:10:rx|Q\(10))) # (!\dp|REGS|destB[1]~0_combout\ & 
-- ((\dp|REGS|r1:8:rx|Q\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:10:rx|Q\(10),
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|r1:8:rx|Q\(10),
	datad => \dp|REGS|destB[1]~0_combout\,
	combout => \dp|REGS|Mux21~2_combout\);

-- Location: LCCOMB_X53_Y50_N22
\dp|REGS|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux21~3_combout\ = (\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|Mux21~2_combout\ & ((\dp|REGS|r1:11:rx|Q\(10)))) # (!\dp|REGS|Mux21~2_combout\ & (\dp|REGS|r1:9:rx|Q\(10))))) # (!\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[0]~1_combout\,
	datab => \dp|REGS|r1:9:rx|Q\(10),
	datac => \dp|REGS|r1:11:rx|Q\(10),
	datad => \dp|REGS|Mux21~2_combout\,
	combout => \dp|REGS|Mux21~3_combout\);

-- Location: FF_X50_Y49_N13
\dp|REGS|r1:3:rx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[10]~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:3:rx|Q\(10));

-- Location: FF_X50_Y49_N1
\dp|REGS|r1:1:rx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[10]~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:1:rx|Q\(10));

-- Location: LCCOMB_X53_Y51_N20
\dp|REGS|r1:2:rx|Q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:2:rx|Q[10]~feeder_combout\ = \dp|dtreg[10]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|dtreg[10]~10_combout\,
	combout => \dp|REGS|r1:2:rx|Q[10]~feeder_combout\);

-- Location: FF_X53_Y51_N21
\dp|REGS|r1:2:rx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:2:rx|Q[10]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:2:rx|Q\(10));

-- Location: FF_X53_Y49_N13
\dp|REGS|r1:0:rx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[10]~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:0:rx|Q\(10));

-- Location: LCCOMB_X50_Y49_N2
\dp|REGS|Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux21~4_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|r1:2:rx|Q\(10)) # ((\dp|REGS|destB[0]~1_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|r1:0:rx|Q\(10) & !\dp|REGS|destB[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:2:rx|Q\(10),
	datab => \dp|REGS|r1:0:rx|Q\(10),
	datac => \dp|REGS|destB[1]~0_combout\,
	datad => \dp|REGS|destB[0]~1_combout\,
	combout => \dp|REGS|Mux21~4_combout\);

-- Location: LCCOMB_X50_Y49_N0
\dp|REGS|Mux21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux21~5_combout\ = (\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|Mux21~4_combout\ & (\dp|REGS|r1:3:rx|Q\(10))) # (!\dp|REGS|Mux21~4_combout\ & ((\dp|REGS|r1:1:rx|Q\(10)))))) # (!\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|Mux21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:3:rx|Q\(10),
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|r1:1:rx|Q\(10),
	datad => \dp|REGS|Mux21~4_combout\,
	combout => \dp|REGS|Mux21~5_combout\);

-- Location: LCCOMB_X49_Y51_N10
\dp|REGS|Mux21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux21~6_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|Mux21~3_combout\) # ((\dp|REGS|destB[2]~3_combout\)))) # (!\dp|REGS|destB[3]~2_combout\ & (((!\dp|REGS|destB[2]~3_combout\ & \dp|REGS|Mux21~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux21~3_combout\,
	datab => \dp|REGS|destB[3]~2_combout\,
	datac => \dp|REGS|destB[2]~3_combout\,
	datad => \dp|REGS|Mux21~5_combout\,
	combout => \dp|REGS|Mux21~6_combout\);

-- Location: LCCOMB_X49_Y51_N8
\dp|REGS|Mux21~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux21~9_combout\ = (\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|Mux21~6_combout\ & (\dp|REGS|Mux21~8_combout\)) # (!\dp|REGS|Mux21~6_combout\ & ((\dp|REGS|Mux21~1_combout\))))) # (!\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|Mux21~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|Mux21~8_combout\,
	datac => \dp|REGS|Mux21~1_combout\,
	datad => \dp|REGS|Mux21~6_combout\,
	combout => \dp|REGS|Mux21~9_combout\);

-- Location: FF_X49_Y51_N15
\dp|REG_B|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|REGS|Mux21~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_B|Q\(10));

-- Location: LCCOMB_X48_Y51_N18
\dp|opB[10]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[10]~24_combout\ = (\dp|opB[0]~5_combout\ & (\dp|opB[10]~23_combout\)) # (!\dp|opB[0]~5_combout\ & ((\dp|REG_B|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|opB[10]~23_combout\,
	datac => \dp|opB[0]~5_combout\,
	datad => \dp|REG_B|Q\(10),
	combout => \dp|opB[10]~24_combout\);

-- Location: LCCOMB_X48_Y45_N18
\dp|addA[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|addA[10]~3_combout\ = (\ctrl|Equal31~2_combout\ & (((\dp|opA[10]~10_combout\)))) # (!\ctrl|Equal31~2_combout\ & ((\ctrl|i.jumpD~8_combout\ & (\dp|opA[9]~9_combout\)) # (!\ctrl|i.jumpD~8_combout\ & ((\dp|opA[10]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~2_combout\,
	datab => \ctrl|i.jumpD~8_combout\,
	datac => \dp|opA[9]~9_combout\,
	datad => \dp|opA[10]~10_combout\,
	combout => \dp|addA[10]~3_combout\);

-- Location: LCCOMB_X48_Y45_N8
\dp|addA[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|addA[10]~4_combout\ = (\dp|addA[8]~0_combout\ & (!\ctrl|Equal31~6_combout\)) # (!\dp|addA[8]~0_combout\ & ((\dp|addA[10]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|Equal31~6_combout\,
	datac => \dp|addA[8]~0_combout\,
	datad => \dp|addA[10]~3_combout\,
	combout => \dp|addA[10]~4_combout\);

-- Location: LCCOMB_X47_Y47_N2
\dp|carry~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|carry~9_combout\ = (\dp|addA[9]~2_combout\ & ((\dp|carry~8_combout\) # (\dp|opB[9]~22_combout\ $ (\ctrl|Equal31~4_combout\)))) # (!\dp|addA[9]~2_combout\ & (\dp|carry~8_combout\ & (\dp|opB[9]~22_combout\ $ (\ctrl|Equal31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[9]~22_combout\,
	datab => \ctrl|Equal31~4_combout\,
	datac => \dp|addA[9]~2_combout\,
	datad => \dp|carry~8_combout\,
	combout => \dp|carry~9_combout\);

-- Location: LCCOMB_X47_Y47_N30
\dp|add[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|add\(10) = \dp|opB[10]~24_combout\ $ (\ctrl|Equal31~4_combout\ $ (\dp|addA[10]~4_combout\ $ (\dp|carry~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[10]~24_combout\,
	datab => \ctrl|Equal31~4_combout\,
	datac => \dp|addA[10]~4_combout\,
	datad => \dp|carry~9_combout\,
	combout => \dp|add\(10));

-- Location: LCCOMB_X45_Y48_N6
\dp|outalu~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu~88_combout\ = \dp|opA[10]~10_combout\ $ (((\dp|opB[0]~5_combout\ & ((\dp|opB[10]~23_combout\))) # (!\dp|opB[0]~5_combout\ & (\dp|REG_B|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_B|Q\(10),
	datab => \dp|opA[10]~10_combout\,
	datac => \dp|opB[0]~5_combout\,
	datad => \dp|opB[10]~23_combout\,
	combout => \dp|outalu~88_combout\);

-- Location: LCCOMB_X49_Y48_N0
\dp|outalu[10]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[10]~91_combout\ = (\dp|opB[0]~5_combout\ & ((\dp|opB[10]~23_combout\))) # (!\dp|opB[0]~5_combout\ & (\dp|REG_B|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_B|Q\(10),
	datac => \dp|opB[10]~23_combout\,
	datad => \dp|opB[0]~5_combout\,
	combout => \dp|outalu[10]~91_combout\);

-- Location: LCCOMB_X46_Y48_N14
\dp|outalu[10]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[10]~92_combout\ = (\dp|outalu[10]~23_combout\ & (\dp|outalu[10]~24_combout\)) # (!\dp|outalu[10]~23_combout\ & ((\dp|outalu[10]~24_combout\ & ((\dp|opA[10]~10_combout\) # (\dp|outalu[10]~91_combout\))) # (!\dp|outalu[10]~24_combout\ & 
-- (\dp|opA[10]~10_combout\ & \dp|outalu[10]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~23_combout\,
	datab => \dp|outalu[10]~24_combout\,
	datac => \dp|opA[10]~10_combout\,
	datad => \dp|outalu[10]~91_combout\,
	combout => \dp|outalu[10]~92_combout\);

-- Location: FF_X49_Y52_N19
\dp|REGS|r1:13:rx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[11]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:13:rx|Q\(11));

-- Location: FF_X50_Y52_N17
\dp|REGS|r1:5:rx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[11]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:5:rx|Q\(11));

-- Location: FF_X50_Y51_N31
\dp|REGS|r1:1:rx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[11]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:1:rx|Q\(11));

-- Location: FF_X49_Y52_N25
\dp|REGS|r1:9:rx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[11]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:9:rx|Q\(11));

-- Location: LCCOMB_X49_Y52_N24
\dp|REGS|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux20~0_combout\ = (\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|r1:9:rx|Q\(11)) # (\dp|REGS|destB[2]~3_combout\)))) # (!\dp|REGS|destB[3]~2_combout\ & (\dp|REGS|r1:1:rx|Q\(11) & ((!\dp|REGS|destB[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:1:rx|Q\(11),
	datab => \dp|REGS|destB[3]~2_combout\,
	datac => \dp|REGS|r1:9:rx|Q\(11),
	datad => \dp|REGS|destB[2]~3_combout\,
	combout => \dp|REGS|Mux20~0_combout\);

-- Location: LCCOMB_X50_Y52_N16
\dp|REGS|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux20~1_combout\ = (\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|Mux20~0_combout\ & (\dp|REGS|r1:13:rx|Q\(11))) # (!\dp|REGS|Mux20~0_combout\ & ((\dp|REGS|r1:5:rx|Q\(11)))))) # (!\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|r1:13:rx|Q\(11),
	datac => \dp|REGS|r1:5:rx|Q\(11),
	datad => \dp|REGS|Mux20~0_combout\,
	combout => \dp|REGS|Mux20~1_combout\);

-- Location: FF_X47_Y50_N1
\dp|REGS|r1:15:rx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|dtreg[11]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:15:rx|Q\(11));

-- Location: FF_X54_Y50_N25
\dp|REGS|r1:7:rx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[11]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:7:rx|Q\(11));

-- Location: FF_X54_Y50_N11
\dp|REGS|r1:3:rx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[11]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:3:rx|Q\(11));

-- Location: FF_X53_Y50_N25
\dp|REGS|r1:11:rx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[11]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:11:rx|Q\(11));

-- Location: LCCOMB_X53_Y50_N24
\dp|REGS|Mux20~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux20~7_combout\ = (\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|destB[3]~2_combout\)))) # (!\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|r1:11:rx|Q\(11)))) # (!\dp|REGS|destB[3]~2_combout\ & 
-- (\dp|REGS|r1:3:rx|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|r1:3:rx|Q\(11),
	datac => \dp|REGS|r1:11:rx|Q\(11),
	datad => \dp|REGS|destB[3]~2_combout\,
	combout => \dp|REGS|Mux20~7_combout\);

-- Location: LCCOMB_X54_Y50_N24
\dp|REGS|Mux20~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux20~8_combout\ = (\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|Mux20~7_combout\ & (\dp|REGS|r1:15:rx|Q\(11))) # (!\dp|REGS|Mux20~7_combout\ & ((\dp|REGS|r1:7:rx|Q\(11)))))) # (!\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|Mux20~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:15:rx|Q\(11),
	datab => \dp|REGS|destB[2]~3_combout\,
	datac => \dp|REGS|r1:7:rx|Q\(11),
	datad => \dp|REGS|Mux20~7_combout\,
	combout => \dp|REGS|Mux20~8_combout\);

-- Location: FF_X54_Y51_N11
\dp|REGS|r1:10:rx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[11]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:10:rx|Q\(11));

-- Location: FF_X55_Y51_N25
\dp|REGS|r1:6:rx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[11]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:6:rx|Q\(11));

-- Location: FF_X53_Y51_N11
\dp|REGS|r1:2:rx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[11]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:2:rx|Q\(11));

-- Location: LCCOMB_X53_Y51_N10
\dp|REGS|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux20~2_combout\ = (\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|destB[2]~3_combout\)))) # (!\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|destB[2]~3_combout\ & (\dp|REGS|r1:6:rx|Q\(11))) # (!\dp|REGS|destB[2]~3_combout\ & 
-- ((\dp|REGS|r1:2:rx|Q\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:6:rx|Q\(11),
	datab => \dp|REGS|destB[3]~2_combout\,
	datac => \dp|REGS|r1:2:rx|Q\(11),
	datad => \dp|REGS|destB[2]~3_combout\,
	combout => \dp|REGS|Mux20~2_combout\);

-- Location: LCCOMB_X53_Y51_N0
\dp|REGS|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux20~3_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|Mux20~2_combout\ & ((\dp|REGS|r1:14:rx|Q\(11)))) # (!\dp|REGS|Mux20~2_combout\ & (\dp|REGS|r1:10:rx|Q\(11))))) # (!\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:10:rx|Q\(11),
	datab => \dp|REGS|r1:14:rx|Q\(11),
	datac => \dp|REGS|destB[3]~2_combout\,
	datad => \dp|REGS|Mux20~2_combout\,
	combout => \dp|REGS|Mux20~3_combout\);

-- Location: FF_X50_Y50_N23
\dp|REGS|r1:12:rx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[11]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:12:rx|Q\(11));

-- Location: FF_X52_Y50_N11
\dp|REGS|r1:8:rx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[11]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:8:rx|Q\(11));

-- Location: FF_X55_Y50_N19
\dp|REGS|r1:0:rx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[11]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:0:rx|Q\(11));

-- Location: FF_X50_Y50_N13
\dp|REGS|r1:4:rx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[11]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:4:rx|Q\(11));

-- Location: LCCOMB_X50_Y50_N12
\dp|REGS|Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux20~4_combout\ = (\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|destB[2]~3_combout\)))) # (!\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|r1:4:rx|Q\(11)))) # (!\dp|REGS|destB[2]~3_combout\ & 
-- (\dp|REGS|r1:0:rx|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:0:rx|Q\(11),
	datab => \dp|REGS|destB[3]~2_combout\,
	datac => \dp|REGS|r1:4:rx|Q\(11),
	datad => \dp|REGS|destB[2]~3_combout\,
	combout => \dp|REGS|Mux20~4_combout\);

-- Location: LCCOMB_X52_Y50_N10
\dp|REGS|Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux20~5_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|Mux20~4_combout\ & (\dp|REGS|r1:12:rx|Q\(11))) # (!\dp|REGS|Mux20~4_combout\ & ((\dp|REGS|r1:8:rx|Q\(11)))))) # (!\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[3]~2_combout\,
	datab => \dp|REGS|r1:12:rx|Q\(11),
	datac => \dp|REGS|r1:8:rx|Q\(11),
	datad => \dp|REGS|Mux20~4_combout\,
	combout => \dp|REGS|Mux20~5_combout\);

-- Location: LCCOMB_X52_Y52_N16
\dp|REGS|Mux20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux20~6_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|destB[0]~1_combout\) # ((\dp|REGS|Mux20~3_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & (!\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|Mux20~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|Mux20~3_combout\,
	datad => \dp|REGS|Mux20~5_combout\,
	combout => \dp|REGS|Mux20~6_combout\);

-- Location: LCCOMB_X50_Y52_N10
\dp|REGS|Mux20~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux20~9_combout\ = (\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|Mux20~6_combout\ & ((\dp|REGS|Mux20~8_combout\))) # (!\dp|REGS|Mux20~6_combout\ & (\dp|REGS|Mux20~1_combout\)))) # (!\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|Mux20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[0]~1_combout\,
	datab => \dp|REGS|Mux20~1_combout\,
	datac => \dp|REGS|Mux20~8_combout\,
	datad => \dp|REGS|Mux20~6_combout\,
	combout => \dp|REGS|Mux20~9_combout\);

-- Location: LCCOMB_X50_Y52_N24
\dp|REG_B|Q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REG_B|Q[11]~feeder_combout\ = \dp|REGS|Mux20~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|REGS|Mux20~9_combout\,
	combout => \dp|REG_B|Q[11]~feeder_combout\);

-- Location: FF_X50_Y52_N25
\dp|REG_B|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REG_B|Q[11]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_B|Q\(11));

-- Location: LCCOMB_X46_Y51_N22
\dp|RPC|Q[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RPC|Q[11]~38_combout\ = (\dp|RPC|Q\(11) & (!\dp|RPC|Q[10]~37\)) # (!\dp|RPC|Q\(11) & ((\dp|RPC|Q[10]~37\) # (GND)))
-- \dp|RPC|Q[11]~39\ = CARRY((!\dp|RPC|Q[10]~37\) # (!\dp|RPC|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RPC|Q\(11),
	datad => VCC,
	cin => \dp|RPC|Q[10]~37\,
	combout => \dp|RPC|Q[11]~38_combout\,
	cout => \dp|RPC|Q[11]~39\);

-- Location: LCCOMB_X45_Y51_N6
\dp|dtpc[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtpc[11]~11_combout\ = (\ctrl|EA.Sfetch~q\ & (((\dp|REG_alu|Q\(11))))) # (!\ctrl|EA.Sfetch~q\ & ((\ctrl|EA.Srts~q\ & (\dataIN[11]~input_o\)) # (!\ctrl|EA.Srts~q\ & ((\dp|REG_alu|Q\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIN[11]~input_o\,
	datab => \ctrl|EA.Sfetch~q\,
	datac => \ctrl|EA.Srts~q\,
	datad => \dp|REG_alu|Q\(11),
	combout => \dp|dtpc[11]~11_combout\);

-- Location: FF_X46_Y51_N23
\dp|RPC|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RPC|Q[11]~38_combout\,
	asdata => \dp|dtpc[11]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|ALT_INV_EA.Sfetch~q\,
	ena => \ctrl|uins.wpc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RPC|Q\(11));

-- Location: LCCOMB_X46_Y50_N30
\dp|opB[11]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[11]~25_combout\ = (\ctrl|uins.mb[0]~0_combout\ & (\dp|RSP|Q\(11))) # (!\ctrl|uins.mb[0]~0_combout\ & ((\dp|RPC|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|RSP|Q\(11),
	datac => \dp|RPC|Q\(11),
	datad => \ctrl|uins.mb[0]~0_combout\,
	combout => \dp|opB[11]~25_combout\);

-- Location: LCCOMB_X46_Y49_N16
\dp|opB[11]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[11]~26_combout\ = (\dp|opB[0]~5_combout\ & ((\dp|opB[11]~25_combout\))) # (!\dp|opB[0]~5_combout\ & (\dp|REG_B|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|REG_B|Q\(11),
	datac => \dp|opB[11]~25_combout\,
	datad => \dp|opB[0]~5_combout\,
	combout => \dp|opB[11]~26_combout\);

-- Location: LCCOMB_X46_Y49_N14
\dp|outalu~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu~104_combout\ = \dp|opA[11]~11_combout\ $ (((\dp|opB[0]~5_combout\ & ((\dp|opB[11]~25_combout\))) # (!\dp|opB[0]~5_combout\ & (\dp|REG_B|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[11]~11_combout\,
	datab => \dp|REG_B|Q\(11),
	datac => \dp|opB[11]~25_combout\,
	datad => \dp|opB[0]~5_combout\,
	combout => \dp|outalu~104_combout\);

-- Location: LCCOMB_X46_Y49_N8
\dp|outalu[11]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[11]~107_combout\ = (\dp|opB[0]~5_combout\ & ((\dp|opB[11]~25_combout\))) # (!\dp|opB[0]~5_combout\ & (\dp|REG_B|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|REG_B|Q\(11),
	datac => \dp|opB[11]~25_combout\,
	datad => \dp|opB[0]~5_combout\,
	combout => \dp|outalu[11]~107_combout\);

-- Location: LCCOMB_X46_Y49_N26
\dp|outalu[11]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[11]~108_combout\ = (\dp|outalu[10]~23_combout\ & (\dp|outalu[10]~24_combout\)) # (!\dp|outalu[10]~23_combout\ & ((\dp|outalu[10]~24_combout\ & ((\dp|outalu[11]~107_combout\) # (\dp|opA[11]~11_combout\))) # (!\dp|outalu[10]~24_combout\ & 
-- (\dp|outalu[11]~107_combout\ & \dp|opA[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~23_combout\,
	datab => \dp|outalu[10]~24_combout\,
	datac => \dp|outalu[11]~107_combout\,
	datad => \dp|opA[11]~11_combout\,
	combout => \dp|outalu[11]~108_combout\);

-- Location: LCCOMB_X46_Y51_N24
\dp|RPC|Q[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RPC|Q[12]~40_combout\ = (\dp|RPC|Q\(12) & (\dp|RPC|Q[11]~39\ $ (GND))) # (!\dp|RPC|Q\(12) & (!\dp|RPC|Q[11]~39\ & VCC))
-- \dp|RPC|Q[12]~41\ = CARRY((\dp|RPC|Q\(12) & !\dp|RPC|Q[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|RPC|Q\(12),
	datad => VCC,
	cin => \dp|RPC|Q[11]~39\,
	combout => \dp|RPC|Q[12]~40_combout\,
	cout => \dp|RPC|Q[12]~41\);

-- Location: LCCOMB_X47_Y51_N12
\dp|dtpc[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtpc[12]~12_combout\ = (\ctrl|EA.Sfetch~q\ & (((\dp|REG_alu|Q\(12))))) # (!\ctrl|EA.Sfetch~q\ & ((\ctrl|EA.Srts~q\ & (\dataIN[12]~input_o\)) # (!\ctrl|EA.Srts~q\ & ((\dp|REG_alu|Q\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Sfetch~q\,
	datab => \ctrl|EA.Srts~q\,
	datac => \dataIN[12]~input_o\,
	datad => \dp|REG_alu|Q\(12),
	combout => \dp|dtpc[12]~12_combout\);

-- Location: FF_X46_Y51_N25
\dp|RPC|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RPC|Q[12]~40_combout\,
	asdata => \dp|dtpc[12]~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|ALT_INV_EA.Sfetch~q\,
	ena => \ctrl|uins.wpc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RPC|Q\(12));

-- Location: LCCOMB_X48_Y51_N14
\dp|opB[12]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[12]~27_combout\ = (\ctrl|uins.mb[0]~0_combout\ & (\dp|RSP|Q\(12))) # (!\ctrl|uins.mb[0]~0_combout\ & ((\dp|RPC|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RSP|Q\(12),
	datac => \dp|RPC|Q\(12),
	datad => \ctrl|uins.mb[0]~0_combout\,
	combout => \dp|opB[12]~27_combout\);

-- Location: FF_X47_Y51_N17
\dp|REGS|r1:15:rx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[12]~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:15:rx|Q\(12));

-- Location: FF_X49_Y49_N1
\dp|REGS|r1:13:rx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[12]~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:13:rx|Q\(12));

-- Location: FF_X50_Y50_N5
\dp|REGS|r1:12:rx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[12]~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:12:rx|Q\(12));

-- Location: LCCOMB_X50_Y51_N28
\dp|REGS|Mux19~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux19~7_combout\ = (\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|r1:14:rx|Q\(12)) # (\dp|REGS|destB[0]~1_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & (\dp|REGS|r1:12:rx|Q\(12) & ((!\dp|REGS|destB[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:12:rx|Q\(12),
	datab => \dp|REGS|r1:14:rx|Q\(12),
	datac => \dp|REGS|destB[1]~0_combout\,
	datad => \dp|REGS|destB[0]~1_combout\,
	combout => \dp|REGS|Mux19~7_combout\);

-- Location: LCCOMB_X49_Y51_N6
\dp|REGS|Mux19~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux19~8_combout\ = (\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|Mux19~7_combout\ & (\dp|REGS|r1:15:rx|Q\(12))) # (!\dp|REGS|Mux19~7_combout\ & ((\dp|REGS|r1:13:rx|Q\(12)))))) # (!\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|Mux19~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:15:rx|Q\(12),
	datab => \dp|REGS|r1:13:rx|Q\(12),
	datac => \dp|REGS|destB[0]~1_combout\,
	datad => \dp|REGS|Mux19~7_combout\,
	combout => \dp|REGS|Mux19~8_combout\);

-- Location: LCCOMB_X54_Y51_N12
\dp|REGS|r1:10:rx|Q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:10:rx|Q[12]~feeder_combout\ = \dp|dtreg[12]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|dtreg[12]~12_combout\,
	combout => \dp|REGS|r1:10:rx|Q[12]~feeder_combout\);

-- Location: FF_X54_Y51_N13
\dp|REGS|r1:10:rx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:10:rx|Q[12]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:10:rx|Q\(12));

-- Location: FF_X52_Y50_N25
\dp|REGS|r1:8:rx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[12]~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:8:rx|Q\(12));

-- Location: FF_X53_Y50_N27
\dp|REGS|r1:9:rx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[12]~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:9:rx|Q\(12));

-- Location: LCCOMB_X53_Y50_N26
\dp|REGS|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux19~0_combout\ = (\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|r1:9:rx|Q\(12)) # (\dp|REGS|destB[1]~0_combout\)))) # (!\dp|REGS|destB[0]~1_combout\ & (\dp|REGS|r1:8:rx|Q\(12) & ((!\dp|REGS|destB[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[0]~1_combout\,
	datab => \dp|REGS|r1:8:rx|Q\(12),
	datac => \dp|REGS|r1:9:rx|Q\(12),
	datad => \dp|REGS|destB[1]~0_combout\,
	combout => \dp|REGS|Mux19~0_combout\);

-- Location: FF_X53_Y50_N21
\dp|REGS|r1:11:rx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[12]~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:11:rx|Q\(12));

-- Location: LCCOMB_X53_Y50_N18
\dp|REGS|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux19~1_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|Mux19~0_combout\ & ((\dp|REGS|r1:11:rx|Q\(12)))) # (!\dp|REGS|Mux19~0_combout\ & (\dp|REGS|r1:10:rx|Q\(12))))) # (!\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|r1:10:rx|Q\(12),
	datac => \dp|REGS|Mux19~0_combout\,
	datad => \dp|REGS|r1:11:rx|Q\(12),
	combout => \dp|REGS|Mux19~1_combout\);

-- Location: LCCOMB_X52_Y48_N14
\dp|REGS|r1:2:rx|Q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:2:rx|Q[12]~feeder_combout\ = \dp|dtreg[12]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|dtreg[12]~12_combout\,
	combout => \dp|REGS|r1:2:rx|Q[12]~feeder_combout\);

-- Location: FF_X52_Y48_N15
\dp|REGS|r1:2:rx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:2:rx|Q[12]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:2:rx|Q\(12));

-- Location: FF_X52_Y48_N5
\dp|REGS|r1:3:rx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[12]~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:3:rx|Q\(12));

-- Location: FF_X53_Y48_N27
\dp|REGS|r1:0:rx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[12]~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:0:rx|Q\(12));

-- Location: FF_X53_Y48_N13
\dp|REGS|r1:1:rx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[12]~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:1:rx|Q\(12));

-- Location: LCCOMB_X53_Y48_N12
\dp|REGS|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux19~4_combout\ = (\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|destB[0]~1_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|r1:1:rx|Q\(12)))) # (!\dp|REGS|destB[0]~1_combout\ & 
-- (\dp|REGS|r1:0:rx|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|r1:0:rx|Q\(12),
	datac => \dp|REGS|r1:1:rx|Q\(12),
	datad => \dp|REGS|destB[0]~1_combout\,
	combout => \dp|REGS|Mux19~4_combout\);

-- Location: LCCOMB_X53_Y48_N20
\dp|REGS|Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux19~5_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|Mux19~4_combout\ & ((\dp|REGS|r1:3:rx|Q\(12)))) # (!\dp|REGS|Mux19~4_combout\ & (\dp|REGS|r1:2:rx|Q\(12))))) # (!\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|Mux19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:2:rx|Q\(12),
	datab => \dp|REGS|r1:3:rx|Q\(12),
	datac => \dp|REGS|destB[1]~0_combout\,
	datad => \dp|REGS|Mux19~4_combout\,
	combout => \dp|REGS|Mux19~5_combout\);

-- Location: FF_X52_Y49_N13
\dp|REGS|r1:5:rx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[12]~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:5:rx|Q\(12));

-- Location: FF_X52_Y49_N15
\dp|REGS|r1:7:rx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[12]~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:7:rx|Q\(12));

-- Location: LCCOMB_X56_Y49_N12
\dp|REGS|r1:6:rx|Q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:6:rx|Q[12]~feeder_combout\ = \dp|dtreg[12]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|dtreg[12]~12_combout\,
	combout => \dp|REGS|r1:6:rx|Q[12]~feeder_combout\);

-- Location: FF_X56_Y49_N13
\dp|REGS|r1:6:rx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:6:rx|Q[12]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:6:rx|Q\(12));

-- Location: FF_X52_Y50_N27
\dp|REGS|r1:4:rx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[12]~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:4:rx|Q\(12));

-- Location: LCCOMB_X52_Y50_N26
\dp|REGS|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux19~2_combout\ = (\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|destB[1]~0_combout\)))) # (!\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|destB[1]~0_combout\ & (\dp|REGS|r1:6:rx|Q\(12))) # (!\dp|REGS|destB[1]~0_combout\ & 
-- ((\dp|REGS|r1:4:rx|Q\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:6:rx|Q\(12),
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|r1:4:rx|Q\(12),
	datad => \dp|REGS|destB[1]~0_combout\,
	combout => \dp|REGS|Mux19~2_combout\);

-- Location: LCCOMB_X52_Y49_N14
\dp|REGS|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux19~3_combout\ = (\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|Mux19~2_combout\ & ((\dp|REGS|r1:7:rx|Q\(12)))) # (!\dp|REGS|Mux19~2_combout\ & (\dp|REGS|r1:5:rx|Q\(12))))) # (!\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:5:rx|Q\(12),
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|r1:7:rx|Q\(12),
	datad => \dp|REGS|Mux19~2_combout\,
	combout => \dp|REGS|Mux19~3_combout\);

-- Location: LCCOMB_X49_Y51_N24
\dp|REGS|Mux19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux19~6_combout\ = (\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|destB[3]~2_combout\) # ((\dp|REGS|Mux19~3_combout\)))) # (!\dp|REGS|destB[2]~3_combout\ & (!\dp|REGS|destB[3]~2_combout\ & (\dp|REGS|Mux19~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|destB[3]~2_combout\,
	datac => \dp|REGS|Mux19~5_combout\,
	datad => \dp|REGS|Mux19~3_combout\,
	combout => \dp|REGS|Mux19~6_combout\);

-- Location: LCCOMB_X49_Y51_N16
\dp|REGS|Mux19~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux19~9_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|Mux19~6_combout\ & (\dp|REGS|Mux19~8_combout\)) # (!\dp|REGS|Mux19~6_combout\ & ((\dp|REGS|Mux19~1_combout\))))) # (!\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|Mux19~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux19~8_combout\,
	datab => \dp|REGS|destB[3]~2_combout\,
	datac => \dp|REGS|Mux19~1_combout\,
	datad => \dp|REGS|Mux19~6_combout\,
	combout => \dp|REGS|Mux19~9_combout\);

-- Location: LCCOMB_X49_Y51_N30
\dp|REG_B|Q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REG_B|Q[12]~feeder_combout\ = \dp|REGS|Mux19~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|REGS|Mux19~9_combout\,
	combout => \dp|REG_B|Q[12]~feeder_combout\);

-- Location: FF_X49_Y51_N31
\dp|REG_B|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REG_B|Q[12]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_B|Q\(12));

-- Location: LCCOMB_X48_Y51_N20
\dp|opB[12]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[12]~28_combout\ = (\dp|opB[0]~5_combout\ & (\dp|opB[12]~27_combout\)) # (!\dp|opB[0]~5_combout\ & ((\dp|REG_B|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|opB[12]~27_combout\,
	datac => \dp|opB[0]~5_combout\,
	datad => \dp|REG_B|Q\(12),
	combout => \dp|opB[12]~28_combout\);

-- Location: LCCOMB_X48_Y45_N30
\dp|addA[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|addA[12]~8_combout\ = (!\ctrl|Equal31~2_combout\ & ((\ctrl|i.jumpD~8_combout\ & (\dp|opA[9]~9_combout\)) # (!\ctrl|i.jumpD~8_combout\ & ((\dp|opA[12]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[9]~9_combout\,
	datab => \dp|opA[12]~12_combout\,
	datac => \ctrl|i.jumpD~8_combout\,
	datad => \ctrl|Equal31~2_combout\,
	combout => \dp|addA[12]~8_combout\);

-- Location: LCCOMB_X49_Y45_N6
\dp|addA[12]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|addA[12]~7_combout\ = (\ctrl|Equal31~2_combout\ & \dp|opA[11]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~2_combout\,
	datad => \dp|opA[11]~11_combout\,
	combout => \dp|addA[12]~7_combout\);

-- Location: LCCOMB_X48_Y45_N28
\dp|addA[12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|addA[12]~9_combout\ = (\dp|addA[8]~0_combout\ & (!\ctrl|Equal31~6_combout\)) # (!\dp|addA[8]~0_combout\ & (((\dp|addA[12]~8_combout\) # (\dp|addA[12]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~6_combout\,
	datab => \dp|addA[8]~0_combout\,
	datac => \dp|addA[12]~8_combout\,
	datad => \dp|addA[12]~7_combout\,
	combout => \dp|addA[12]~9_combout\);

-- Location: LCCOMB_X48_Y45_N10
\dp|addA[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|addA[11]~5_combout\ = (\ctrl|Equal31~2_combout\ & (((\dp|opA[11]~11_combout\)))) # (!\ctrl|Equal31~2_combout\ & ((\ctrl|i.jumpD~8_combout\ & (\dp|opA[9]~9_combout\)) # (!\ctrl|i.jumpD~8_combout\ & ((\dp|opA[11]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[9]~9_combout\,
	datab => \ctrl|Equal31~2_combout\,
	datac => \ctrl|i.jumpD~8_combout\,
	datad => \dp|opA[11]~11_combout\,
	combout => \dp|addA[11]~5_combout\);

-- Location: LCCOMB_X48_Y45_N0
\dp|addA[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|addA[11]~6_combout\ = (\dp|addA[8]~0_combout\ & (!\ctrl|Equal31~6_combout\)) # (!\dp|addA[8]~0_combout\ & ((\dp|addA[11]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|Equal31~6_combout\,
	datac => \dp|addA[8]~0_combout\,
	datad => \dp|addA[11]~5_combout\,
	combout => \dp|addA[11]~6_combout\);

-- Location: LCCOMB_X47_Y47_N0
\dp|carry~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|carry~10_combout\ = (\dp|addA[10]~4_combout\ & ((\dp|carry~9_combout\) # (\dp|opB[10]~24_combout\ $ (\ctrl|Equal31~4_combout\)))) # (!\dp|addA[10]~4_combout\ & (\dp|carry~9_combout\ & (\dp|opB[10]~24_combout\ $ (\ctrl|Equal31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[10]~24_combout\,
	datab => \ctrl|Equal31~4_combout\,
	datac => \dp|addA[10]~4_combout\,
	datad => \dp|carry~9_combout\,
	combout => \dp|carry~10_combout\);

-- Location: LCCOMB_X47_Y47_N18
\dp|carry~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|carry~11_combout\ = (\dp|addA[11]~6_combout\ & ((\dp|carry~10_combout\) # (\ctrl|Equal31~4_combout\ $ (\dp|opB[11]~26_combout\)))) # (!\dp|addA[11]~6_combout\ & (\dp|carry~10_combout\ & (\ctrl|Equal31~4_combout\ $ (\dp|opB[11]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~4_combout\,
	datab => \dp|addA[11]~6_combout\,
	datac => \dp|opB[11]~26_combout\,
	datad => \dp|carry~10_combout\,
	combout => \dp|carry~11_combout\);

-- Location: LCCOMB_X47_Y47_N14
\dp|add[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|add\(12) = \ctrl|Equal31~4_combout\ $ (\dp|opB[12]~28_combout\ $ (\dp|addA[12]~9_combout\ $ (\dp|carry~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~4_combout\,
	datab => \dp|opB[12]~28_combout\,
	datac => \dp|addA[12]~9_combout\,
	datad => \dp|carry~11_combout\,
	combout => \dp|add\(12));

-- Location: LCCOMB_X47_Y49_N30
\dp|outalu[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[12]~55_combout\ = (\dp|outalu[10]~24_combout\ & ((\dp|outalu[10]~23_combout\) # ((\dp|opB[12]~28_combout\) # (\dp|opA[12]~12_combout\)))) # (!\dp|outalu[10]~24_combout\ & (!\dp|outalu[10]~23_combout\ & (\dp|opB[12]~28_combout\ & 
-- \dp|opA[12]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~24_combout\,
	datab => \dp|outalu[10]~23_combout\,
	datac => \dp|opB[12]~28_combout\,
	datad => \dp|opA[12]~12_combout\,
	combout => \dp|outalu[12]~55_combout\);

-- Location: FF_X53_Y50_N5
\dp|REGS|r1:11:rx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[13]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:11:rx|Q\(13));

-- Location: FF_X54_Y50_N13
\dp|REGS|r1:7:rx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[13]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:7:rx|Q\(13));

-- Location: FF_X54_Y50_N19
\dp|REGS|r1:3:rx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[13]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:3:rx|Q\(13));

-- Location: LCCOMB_X53_Y50_N10
\dp|REGS|Mux18~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux18~7_combout\ = (\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|destB[2]~3_combout\)))) # (!\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|destB[2]~3_combout\ & (\dp|REGS|r1:7:rx|Q\(13))) # (!\dp|REGS|destB[2]~3_combout\ & 
-- ((\dp|REGS|r1:3:rx|Q\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[3]~2_combout\,
	datab => \dp|REGS|r1:7:rx|Q\(13),
	datac => \dp|REGS|destB[2]~3_combout\,
	datad => \dp|REGS|r1:3:rx|Q\(13),
	combout => \dp|REGS|Mux18~7_combout\);

-- Location: LCCOMB_X53_Y50_N4
\dp|REGS|Mux18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux18~8_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|Mux18~7_combout\ & (\dp|REGS|r1:15:rx|Q\(13))) # (!\dp|REGS|Mux18~7_combout\ & ((\dp|REGS|r1:11:rx|Q\(13)))))) # (!\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|Mux18~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[3]~2_combout\,
	datab => \dp|REGS|r1:15:rx|Q\(13),
	datac => \dp|REGS|r1:11:rx|Q\(13),
	datad => \dp|REGS|Mux18~7_combout\,
	combout => \dp|REGS|Mux18~8_combout\);

-- Location: FF_X52_Y51_N13
\dp|REGS|r1:14:rx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[13]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:14:rx|Q\(13));

-- Location: FF_X52_Y51_N5
\dp|REGS|r1:6:rx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[13]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:6:rx|Q\(13));

-- Location: FF_X53_Y51_N31
\dp|REGS|r1:2:rx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[13]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:2:rx|Q\(13));

-- Location: LCCOMB_X54_Y51_N18
\dp|REGS|r1:10:rx|Q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:10:rx|Q[13]~feeder_combout\ = \dp|dtreg[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|dtreg[13]~13_combout\,
	combout => \dp|REGS|r1:10:rx|Q[13]~feeder_combout\);

-- Location: FF_X54_Y51_N19
\dp|REGS|r1:10:rx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:10:rx|Q[13]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:10:rx|Q\(13));

-- Location: LCCOMB_X52_Y51_N2
\dp|REGS|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux18~0_combout\ = (\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|r1:10:rx|Q\(13)) # (\dp|REGS|destB[2]~3_combout\)))) # (!\dp|REGS|destB[3]~2_combout\ & (\dp|REGS|r1:2:rx|Q\(13) & ((!\dp|REGS|destB[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:2:rx|Q\(13),
	datab => \dp|REGS|r1:10:rx|Q\(13),
	datac => \dp|REGS|destB[3]~2_combout\,
	datad => \dp|REGS|destB[2]~3_combout\,
	combout => \dp|REGS|Mux18~0_combout\);

-- Location: LCCOMB_X52_Y51_N4
\dp|REGS|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux18~1_combout\ = (\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|Mux18~0_combout\ & (\dp|REGS|r1:14:rx|Q\(13))) # (!\dp|REGS|Mux18~0_combout\ & ((\dp|REGS|r1:6:rx|Q\(13)))))) # (!\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:14:rx|Q\(13),
	datab => \dp|REGS|destB[2]~3_combout\,
	datac => \dp|REGS|r1:6:rx|Q\(13),
	datad => \dp|REGS|Mux18~0_combout\,
	combout => \dp|REGS|Mux18~1_combout\);

-- Location: FF_X49_Y49_N7
\dp|REGS|r1:9:rx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[13]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:9:rx|Q\(13));

-- Location: LCCOMB_X49_Y49_N28
\dp|REGS|r1:13:rx|Q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:13:rx|Q[13]~feeder_combout\ = \dp|dtreg[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|dtreg[13]~13_combout\,
	combout => \dp|REGS|r1:13:rx|Q[13]~feeder_combout\);

-- Location: FF_X49_Y49_N29
\dp|REGS|r1:13:rx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:13:rx|Q[13]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:13:rx|Q\(13));

-- Location: FF_X52_Y49_N1
\dp|REGS|r1:5:rx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[13]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:5:rx|Q\(13));

-- Location: FF_X50_Y49_N11
\dp|REGS|r1:1:rx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[13]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:1:rx|Q\(13));

-- Location: LCCOMB_X50_Y49_N10
\dp|REGS|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux18~2_combout\ = (\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|r1:5:rx|Q\(13)) # ((\dp|REGS|destB[3]~2_combout\)))) # (!\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|r1:1:rx|Q\(13) & !\dp|REGS|destB[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|r1:5:rx|Q\(13),
	datac => \dp|REGS|r1:1:rx|Q\(13),
	datad => \dp|REGS|destB[3]~2_combout\,
	combout => \dp|REGS|Mux18~2_combout\);

-- Location: LCCOMB_X50_Y49_N8
\dp|REGS|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux18~3_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|Mux18~2_combout\ & ((\dp|REGS|r1:13:rx|Q\(13)))) # (!\dp|REGS|Mux18~2_combout\ & (\dp|REGS|r1:9:rx|Q\(13))))) # (!\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:9:rx|Q\(13),
	datab => \dp|REGS|destB[3]~2_combout\,
	datac => \dp|REGS|r1:13:rx|Q\(13),
	datad => \dp|REGS|Mux18~2_combout\,
	combout => \dp|REGS|Mux18~3_combout\);

-- Location: FF_X55_Y49_N23
\dp|REGS|r1:12:rx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[13]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:12:rx|Q\(13));

-- Location: FF_X54_Y49_N25
\dp|REGS|r1:4:rx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[13]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:4:rx|Q\(13));

-- Location: FF_X55_Y49_N29
\dp|REGS|r1:0:rx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[13]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:0:rx|Q\(13));

-- Location: FF_X54_Y49_N7
\dp|REGS|r1:8:rx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[13]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:8:rx|Q\(13));

-- Location: LCCOMB_X54_Y49_N6
\dp|REGS|Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux18~4_combout\ = (\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|destB[3]~2_combout\)))) # (!\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|r1:8:rx|Q\(13)))) # (!\dp|REGS|destB[3]~2_combout\ & 
-- (\dp|REGS|r1:0:rx|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|r1:0:rx|Q\(13),
	datac => \dp|REGS|r1:8:rx|Q\(13),
	datad => \dp|REGS|destB[3]~2_combout\,
	combout => \dp|REGS|Mux18~4_combout\);

-- Location: LCCOMB_X54_Y49_N24
\dp|REGS|Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux18~5_combout\ = (\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|Mux18~4_combout\ & (\dp|REGS|r1:12:rx|Q\(13))) # (!\dp|REGS|Mux18~4_combout\ & ((\dp|REGS|r1:4:rx|Q\(13)))))) # (!\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|Mux18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|r1:12:rx|Q\(13),
	datac => \dp|REGS|r1:4:rx|Q\(13),
	datad => \dp|REGS|Mux18~4_combout\,
	combout => \dp|REGS|Mux18~5_combout\);

-- Location: LCCOMB_X50_Y49_N26
\dp|REGS|Mux18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux18~6_combout\ = (\dp|REGS|destB[1]~0_combout\ & (\dp|REGS|destB[0]~1_combout\)) # (!\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|destB[0]~1_combout\ & (\dp|REGS|Mux18~3_combout\)) # (!\dp|REGS|destB[0]~1_combout\ & 
-- ((\dp|REGS|Mux18~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|Mux18~3_combout\,
	datad => \dp|REGS|Mux18~5_combout\,
	combout => \dp|REGS|Mux18~6_combout\);

-- Location: LCCOMB_X47_Y49_N8
\dp|REGS|Mux18~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux18~9_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|Mux18~6_combout\ & (\dp|REGS|Mux18~8_combout\)) # (!\dp|REGS|Mux18~6_combout\ & ((\dp|REGS|Mux18~1_combout\))))) # (!\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|Mux18~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux18~8_combout\,
	datab => \dp|REGS|destB[1]~0_combout\,
	datac => \dp|REGS|Mux18~1_combout\,
	datad => \dp|REGS|Mux18~6_combout\,
	combout => \dp|REGS|Mux18~9_combout\);

-- Location: FF_X47_Y49_N27
\dp|REG_B|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|REGS|Mux18~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_B|Q\(13));

-- Location: LCCOMB_X46_Y51_N26
\dp|RPC|Q[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RPC|Q[13]~42_combout\ = (\dp|RPC|Q\(13) & (!\dp|RPC|Q[12]~41\)) # (!\dp|RPC|Q\(13) & ((\dp|RPC|Q[12]~41\) # (GND)))
-- \dp|RPC|Q[13]~43\ = CARRY((!\dp|RPC|Q[12]~41\) # (!\dp|RPC|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RPC|Q\(13),
	datad => VCC,
	cin => \dp|RPC|Q[12]~41\,
	combout => \dp|RPC|Q[13]~42_combout\,
	cout => \dp|RPC|Q[13]~43\);

-- Location: LCCOMB_X45_Y51_N22
\dp|dtpc[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtpc[13]~13_combout\ = (\ctrl|EA.Srts~q\ & ((\ctrl|EA.Sfetch~q\ & (\dp|REG_alu|Q\(13))) # (!\ctrl|EA.Sfetch~q\ & ((\dataIN[13]~input_o\))))) # (!\ctrl|EA.Srts~q\ & (\dp|REG_alu|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_alu|Q\(13),
	datab => \ctrl|EA.Srts~q\,
	datac => \dataIN[13]~input_o\,
	datad => \ctrl|EA.Sfetch~q\,
	combout => \dp|dtpc[13]~13_combout\);

-- Location: FF_X46_Y51_N27
\dp|RPC|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RPC|Q[13]~42_combout\,
	asdata => \dp|dtpc[13]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|ALT_INV_EA.Sfetch~q\,
	ena => \ctrl|uins.wpc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RPC|Q\(13));

-- Location: LCCOMB_X45_Y51_N30
\dp|opB[13]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[13]~29_combout\ = (\ctrl|uins.mb[0]~0_combout\ & ((\dp|RSP|Q\(13)))) # (!\ctrl|uins.mb[0]~0_combout\ & (\dp|RPC|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|RPC|Q\(13),
	datac => \dp|RSP|Q\(13),
	datad => \ctrl|uins.mb[0]~0_combout\,
	combout => \dp|opB[13]~29_combout\);

-- Location: LCCOMB_X46_Y48_N22
\dp|opB[13]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[13]~30_combout\ = (\dp|opB[0]~5_combout\ & ((\dp|opB[13]~29_combout\))) # (!\dp|opB[0]~5_combout\ & (\dp|REG_B|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_B|Q\(13),
	datab => \dp|opB[13]~29_combout\,
	datad => \dp|opB[0]~5_combout\,
	combout => \dp|opB[13]~30_combout\);

-- Location: LCCOMB_X45_Y48_N4
\dp|outalu~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu~47_combout\ = \dp|opA[13]~13_combout\ $ (((\dp|opB[0]~5_combout\ & (\dp|opB[13]~29_combout\)) # (!\dp|opB[0]~5_combout\ & ((\dp|REG_B|Q\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[13]~29_combout\,
	datab => \dp|opB[0]~5_combout\,
	datac => \dp|REG_B|Q\(13),
	datad => \dp|opA[13]~13_combout\,
	combout => \dp|outalu~47_combout\);

-- Location: LCCOMB_X45_Y48_N26
\dp|outalu[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[13]~50_combout\ = (\dp|opB[0]~5_combout\ & (\dp|opB[13]~29_combout\)) # (!\dp|opB[0]~5_combout\ & ((\dp|REG_B|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[13]~29_combout\,
	datab => \dp|REG_B|Q\(13),
	datac => \dp|opB[0]~5_combout\,
	combout => \dp|outalu[13]~50_combout\);

-- Location: LCCOMB_X45_Y48_N24
\dp|outalu[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[13]~51_combout\ = (\dp|outalu[13]~50_combout\ & ((\dp|outalu[10]~24_combout\) # ((!\dp|outalu[10]~23_combout\ & \dp|opA[13]~13_combout\)))) # (!\dp|outalu[13]~50_combout\ & (\dp|outalu[10]~24_combout\ & ((\dp|outalu[10]~23_combout\) # 
-- (\dp|opA[13]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[13]~50_combout\,
	datab => \dp|outalu[10]~24_combout\,
	datac => \dp|outalu[10]~23_combout\,
	datad => \dp|opA[13]~13_combout\,
	combout => \dp|outalu[13]~51_combout\);

-- Location: LCCOMB_X48_Y45_N14
\dp|opA[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opA[14]~14_combout\ = (\ctrl|uins.ma~0_combout\ & (\dp|RIR|Q\(14))) # (!\ctrl|uins.ma~0_combout\ & ((\ctrl|i.jumpD~8_combout\ & (\dp|RIR|Q\(14))) # (!\ctrl|i.jumpD~8_combout\ & ((\dp|REG_A|Q\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(14),
	datab => \ctrl|uins.ma~0_combout\,
	datac => \dp|REG_A|Q\(14),
	datad => \ctrl|i.jumpD~8_combout\,
	combout => \dp|opA[14]~14_combout\);

-- Location: LCCOMB_X45_Y48_N22
\dp|outalu[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[13]~48_combout\ = (\dp|outalu[7]~19_combout\ & (((\dp|outalu[10]~20_combout\)))) # (!\dp|outalu[7]~19_combout\ & ((\dp|outalu[10]~20_combout\ & ((\dp|opA[14]~14_combout\))) # (!\dp|outalu[10]~20_combout\ & (\dp|opA[12]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[12]~12_combout\,
	datab => \dp|outalu[7]~19_combout\,
	datac => \dp|opA[14]~14_combout\,
	datad => \dp|outalu[10]~20_combout\,
	combout => \dp|outalu[13]~48_combout\);

-- Location: LCCOMB_X47_Y48_N18
\dp|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Add2~18_combout\ = (\dp|opB[9]~22_combout\ & (!\dp|Add2~17\)) # (!\dp|opB[9]~22_combout\ & ((\dp|Add2~17\) # (GND)))
-- \dp|Add2~19\ = CARRY((!\dp|Add2~17\) # (!\dp|opB[9]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[9]~22_combout\,
	datad => VCC,
	cin => \dp|Add2~17\,
	combout => \dp|Add2~18_combout\,
	cout => \dp|Add2~19\);

-- Location: LCCOMB_X47_Y48_N20
\dp|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Add2~20_combout\ = (\dp|opB[10]~24_combout\ & (\dp|Add2~19\ $ (GND))) # (!\dp|opB[10]~24_combout\ & (!\dp|Add2~19\ & VCC))
-- \dp|Add2~21\ = CARRY((\dp|opB[10]~24_combout\ & !\dp|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[10]~24_combout\,
	datad => VCC,
	cin => \dp|Add2~19\,
	combout => \dp|Add2~20_combout\,
	cout => \dp|Add2~21\);

-- Location: LCCOMB_X47_Y48_N22
\dp|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Add2~22_combout\ = (\dp|opB[11]~26_combout\ & (!\dp|Add2~21\)) # (!\dp|opB[11]~26_combout\ & ((\dp|Add2~21\) # (GND)))
-- \dp|Add2~23\ = CARRY((!\dp|Add2~21\) # (!\dp|opB[11]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|opB[11]~26_combout\,
	datad => VCC,
	cin => \dp|Add2~21\,
	combout => \dp|Add2~22_combout\,
	cout => \dp|Add2~23\);

-- Location: LCCOMB_X47_Y48_N24
\dp|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Add2~24_combout\ = (\dp|opB[12]~28_combout\ & (\dp|Add2~23\ $ (GND))) # (!\dp|opB[12]~28_combout\ & (!\dp|Add2~23\ & VCC))
-- \dp|Add2~25\ = CARRY((\dp|opB[12]~28_combout\ & !\dp|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|opB[12]~28_combout\,
	datad => VCC,
	cin => \dp|Add2~23\,
	combout => \dp|Add2~24_combout\,
	cout => \dp|Add2~25\);

-- Location: LCCOMB_X47_Y48_N26
\dp|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Add2~26_combout\ = (\dp|opB[13]~30_combout\ & (!\dp|Add2~25\)) # (!\dp|opB[13]~30_combout\ & ((\dp|Add2~25\) # (GND)))
-- \dp|Add2~27\ = CARRY((!\dp|Add2~25\) # (!\dp|opB[13]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|opB[13]~30_combout\,
	datad => VCC,
	cin => \dp|Add2~25\,
	combout => \dp|Add2~26_combout\,
	cout => \dp|Add2~27\);

-- Location: LCCOMB_X45_Y48_N20
\dp|outalu[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[13]~49_combout\ = (\dp|outalu[7]~19_combout\ & ((\dp|outalu[13]~48_combout\ & ((\dp|Add2~26_combout\))) # (!\dp|outalu[13]~48_combout\ & (!\dp|opA[13]~13_combout\)))) # (!\dp|outalu[7]~19_combout\ & (((\dp|outalu[13]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[13]~13_combout\,
	datab => \dp|outalu[7]~19_combout\,
	datac => \dp|outalu[13]~48_combout\,
	datad => \dp|Add2~26_combout\,
	combout => \dp|outalu[13]~49_combout\);

-- Location: LCCOMB_X45_Y48_N10
\dp|outalu[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[13]~52_combout\ = (\dp|outalu[10]~23_combout\ & ((\dp|outalu[13]~51_combout\ & ((\dp|outalu[13]~49_combout\))) # (!\dp|outalu[13]~51_combout\ & (\dp|opA[5]~2_combout\)))) # (!\dp|outalu[10]~23_combout\ & (\dp|outalu[13]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~23_combout\,
	datab => \dp|outalu[13]~51_combout\,
	datac => \dp|opA[5]~2_combout\,
	datad => \dp|outalu[13]~49_combout\,
	combout => \dp|outalu[13]~52_combout\);

-- Location: LCCOMB_X45_Y48_N28
\dp|outalu[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[13]~53_combout\ = (\dp|outalu[10]~17_combout\ & (\dp|outalu[10]~16_combout\)) # (!\dp|outalu[10]~17_combout\ & ((\dp|outalu[10]~16_combout\ & (\dp|outalu~47_combout\)) # (!\dp|outalu[10]~16_combout\ & ((\dp|outalu[13]~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~17_combout\,
	datab => \dp|outalu[10]~16_combout\,
	datac => \dp|outalu~47_combout\,
	datad => \dp|outalu[13]~52_combout\,
	combout => \dp|outalu[13]~53_combout\);

-- Location: LCCOMB_X48_Y45_N20
\dp|addA[13]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|addA[13]~10_combout\ = (!\ctrl|Equal31~2_combout\ & ((\ctrl|i.jumpD~8_combout\ & (\dp|opA[9]~9_combout\)) # (!\ctrl|i.jumpD~8_combout\ & ((\dp|opA[13]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[9]~9_combout\,
	datab => \ctrl|i.jumpD~8_combout\,
	datac => \dp|opA[13]~13_combout\,
	datad => \ctrl|Equal31~2_combout\,
	combout => \dp|addA[13]~10_combout\);

-- Location: LCCOMB_X49_Y45_N4
\dp|addA[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|addA[13]~11_combout\ = (\dp|addA[8]~0_combout\ & (!\ctrl|Equal31~6_combout\)) # (!\dp|addA[8]~0_combout\ & (((\dp|addA[13]~10_combout\) # (\dp|addA[12]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|addA[8]~0_combout\,
	datab => \ctrl|Equal31~6_combout\,
	datac => \dp|addA[13]~10_combout\,
	datad => \dp|addA[12]~7_combout\,
	combout => \dp|addA[13]~11_combout\);

-- Location: LCCOMB_X46_Y47_N0
\dp|carry~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|carry~12_combout\ = (\dp|addA[12]~9_combout\ & ((\dp|carry~11_combout\) # (\ctrl|Equal31~4_combout\ $ (\dp|opB[12]~28_combout\)))) # (!\dp|addA[12]~9_combout\ & (\dp|carry~11_combout\ & (\ctrl|Equal31~4_combout\ $ (\dp|opB[12]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~4_combout\,
	datab => \dp|opB[12]~28_combout\,
	datac => \dp|addA[12]~9_combout\,
	datad => \dp|carry~11_combout\,
	combout => \dp|carry~12_combout\);

-- Location: LCCOMB_X46_Y47_N20
\dp|add[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|add\(13) = \ctrl|Equal31~4_combout\ $ (\dp|opB[13]~30_combout\ $ (\dp|addA[13]~11_combout\ $ (\dp|carry~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~4_combout\,
	datab => \dp|opB[13]~30_combout\,
	datac => \dp|addA[13]~11_combout\,
	datad => \dp|carry~12_combout\,
	combout => \dp|add\(13));

-- Location: LCCOMB_X46_Y47_N26
\dp|outalu[13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[13]~54_combout\ = (\dp|outalu[10]~17_combout\ & ((\dp|outalu[13]~53_combout\ & (\dp|opB[13]~30_combout\)) # (!\dp|outalu[13]~53_combout\ & ((\dp|add\(13)))))) # (!\dp|outalu[10]~17_combout\ & (((\dp|outalu[13]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~17_combout\,
	datab => \dp|opB[13]~30_combout\,
	datac => \dp|outalu[13]~53_combout\,
	datad => \dp|add\(13),
	combout => \dp|outalu[13]~54_combout\);

-- Location: LCCOMB_X45_Y47_N16
\dp|outalu[13]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[13]~144_combout\ = (\dp|outalu[10]~30_combout\ & (\dp|REG_A|Q\(13))) # (!\dp|outalu[10]~30_combout\ & ((\dp|outalu[13]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|outalu[10]~30_combout\,
	datac => \dp|REG_A|Q\(13),
	datad => \dp|outalu[13]~54_combout\,
	combout => \dp|outalu[13]~144_combout\);

-- Location: FF_X45_Y47_N17
\dp|REG_alu|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|outalu[13]~144_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Salu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_alu|Q\(13));

-- Location: LCCOMB_X45_Y51_N4
\dp|dtreg[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtreg[13]~13_combout\ = (\ctrl|uins.mreg~combout\ & ((\dataIN[13]~input_o\))) # (!\ctrl|uins.mreg~combout\ & (\dp|REG_alu|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_alu|Q\(13),
	datac => \dataIN[13]~input_o\,
	datad => \ctrl|uins.mreg~combout\,
	combout => \dp|dtreg[13]~13_combout\);

-- Location: LCCOMB_X47_Y50_N2
\dp|REGS|r1:15:rx|Q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:15:rx|Q[13]~feeder_combout\ = \dp|dtreg[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|dtreg[13]~13_combout\,
	combout => \dp|REGS|r1:15:rx|Q[13]~feeder_combout\);

-- Location: FF_X47_Y50_N3
\dp|REGS|r1:15:rx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:15:rx|Q[13]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:15:rx|Q\(13));

-- Location: LCCOMB_X54_Y50_N18
\dp|REGS|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux2~7_combout\ = (\dp|RIR|Q\(6) & (((\dp|RIR|Q\(7))))) # (!\dp|RIR|Q\(6) & ((\dp|RIR|Q\(7) & (\dp|REGS|r1:11:rx|Q\(13))) # (!\dp|RIR|Q\(7) & ((\dp|REGS|r1:3:rx|Q\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|REGS|r1:11:rx|Q\(13),
	datac => \dp|REGS|r1:3:rx|Q\(13),
	datad => \dp|RIR|Q\(7),
	combout => \dp|REGS|Mux2~7_combout\);

-- Location: LCCOMB_X54_Y50_N12
\dp|REGS|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux2~8_combout\ = (\dp|REGS|Mux2~7_combout\ & ((\dp|REGS|r1:15:rx|Q\(13)) # ((!\dp|RIR|Q\(6))))) # (!\dp|REGS|Mux2~7_combout\ & (((\dp|REGS|r1:7:rx|Q\(13) & \dp|RIR|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:15:rx|Q\(13),
	datab => \dp|REGS|Mux2~7_combout\,
	datac => \dp|REGS|r1:7:rx|Q\(13),
	datad => \dp|RIR|Q\(6),
	combout => \dp|REGS|Mux2~8_combout\);

-- Location: LCCOMB_X49_Y49_N6
\dp|REGS|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux2~0_combout\ = (\dp|RIR|Q\(7) & (((\dp|REGS|r1:9:rx|Q\(13)) # (\dp|RIR|Q\(6))))) # (!\dp|RIR|Q\(7) & (\dp|REGS|r1:1:rx|Q\(13) & ((!\dp|RIR|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(7),
	datab => \dp|REGS|r1:1:rx|Q\(13),
	datac => \dp|REGS|r1:9:rx|Q\(13),
	datad => \dp|RIR|Q\(6),
	combout => \dp|REGS|Mux2~0_combout\);

-- Location: LCCOMB_X52_Y49_N0
\dp|REGS|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux2~1_combout\ = (\dp|RIR|Q\(6) & ((\dp|REGS|Mux2~0_combout\ & ((\dp|REGS|r1:13:rx|Q\(13)))) # (!\dp|REGS|Mux2~0_combout\ & (\dp|REGS|r1:5:rx|Q\(13))))) # (!\dp|RIR|Q\(6) & (\dp|REGS|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|REGS|Mux2~0_combout\,
	datac => \dp|REGS|r1:5:rx|Q\(13),
	datad => \dp|REGS|r1:13:rx|Q\(13),
	combout => \dp|REGS|Mux2~1_combout\);

-- Location: LCCOMB_X55_Y49_N28
\dp|REGS|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux2~4_combout\ = (\dp|RIR|Q\(7) & (\dp|RIR|Q\(6))) # (!\dp|RIR|Q\(7) & ((\dp|RIR|Q\(6) & ((\dp|REGS|r1:4:rx|Q\(13)))) # (!\dp|RIR|Q\(6) & (\dp|REGS|r1:0:rx|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(7),
	datab => \dp|RIR|Q\(6),
	datac => \dp|REGS|r1:0:rx|Q\(13),
	datad => \dp|REGS|r1:4:rx|Q\(13),
	combout => \dp|REGS|Mux2~4_combout\);

-- Location: LCCOMB_X55_Y49_N22
\dp|REGS|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux2~5_combout\ = (\dp|RIR|Q\(7) & ((\dp|REGS|Mux2~4_combout\ & ((\dp|REGS|r1:12:rx|Q\(13)))) # (!\dp|REGS|Mux2~4_combout\ & (\dp|REGS|r1:8:rx|Q\(13))))) # (!\dp|RIR|Q\(7) & (((\dp|REGS|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(7),
	datab => \dp|REGS|r1:8:rx|Q\(13),
	datac => \dp|REGS|r1:12:rx|Q\(13),
	datad => \dp|REGS|Mux2~4_combout\,
	combout => \dp|REGS|Mux2~5_combout\);

-- Location: LCCOMB_X53_Y51_N30
\dp|REGS|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux2~2_combout\ = (\dp|RIR|Q\(6) & ((\dp|REGS|r1:6:rx|Q\(13)) # ((\dp|RIR|Q\(7))))) # (!\dp|RIR|Q\(6) & (((\dp|REGS|r1:2:rx|Q\(13) & !\dp|RIR|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|REGS|r1:6:rx|Q\(13),
	datac => \dp|REGS|r1:2:rx|Q\(13),
	datad => \dp|RIR|Q\(7),
	combout => \dp|REGS|Mux2~2_combout\);

-- Location: LCCOMB_X52_Y51_N12
\dp|REGS|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux2~3_combout\ = (\dp|REGS|Mux2~2_combout\ & (((\dp|REGS|r1:14:rx|Q\(13)) # (!\dp|RIR|Q\(7))))) # (!\dp|REGS|Mux2~2_combout\ & (\dp|REGS|r1:10:rx|Q\(13) & ((\dp|RIR|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux2~2_combout\,
	datab => \dp|REGS|r1:10:rx|Q\(13),
	datac => \dp|REGS|r1:14:rx|Q\(13),
	datad => \dp|RIR|Q\(7),
	combout => \dp|REGS|Mux2~3_combout\);

-- Location: LCCOMB_X55_Y50_N16
\dp|REGS|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux2~6_combout\ = (\dp|RIR|Q\(5) & (((\dp|RIR|Q\(4)) # (\dp|REGS|Mux2~3_combout\)))) # (!\dp|RIR|Q\(5) & (\dp|REGS|Mux2~5_combout\ & (!\dp|RIR|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux2~5_combout\,
	datab => \dp|RIR|Q\(5),
	datac => \dp|RIR|Q\(4),
	datad => \dp|REGS|Mux2~3_combout\,
	combout => \dp|REGS|Mux2~6_combout\);

-- Location: LCCOMB_X55_Y50_N24
\dp|REGS|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux2~9_combout\ = (\dp|RIR|Q\(4) & ((\dp|REGS|Mux2~6_combout\ & (\dp|REGS|Mux2~8_combout\)) # (!\dp|REGS|Mux2~6_combout\ & ((\dp|REGS|Mux2~1_combout\))))) # (!\dp|RIR|Q\(4) & (((\dp|REGS|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux2~8_combout\,
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|Mux2~1_combout\,
	datad => \dp|REGS|Mux2~6_combout\,
	combout => \dp|REGS|Mux2~9_combout\);

-- Location: FF_X55_Y50_N25
\dp|REG_A|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|Mux2~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_A|Q\(13));

-- Location: LCCOMB_X48_Y45_N26
\dp|opA[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opA[13]~13_combout\ = (\ctrl|uins.ma~0_combout\ & (((\dp|RIR|Q\(13))))) # (!\ctrl|uins.ma~0_combout\ & ((\ctrl|i.jumpD~8_combout\ & ((\dp|RIR|Q\(13)))) # (!\ctrl|i.jumpD~8_combout\ & (\dp|REG_A|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_A|Q\(13),
	datab => \ctrl|uins.ma~0_combout\,
	datac => \dp|RIR|Q\(13),
	datad => \ctrl|i.jumpD~8_combout\,
	combout => \dp|opA[13]~13_combout\);

-- Location: LCCOMB_X47_Y49_N16
\dp|outalu[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[12]~56_combout\ = (\dp|outalu[10]~20_combout\ & (((\dp|outalu[7]~19_combout\)))) # (!\dp|outalu[10]~20_combout\ & ((\dp|outalu[7]~19_combout\ & (!\dp|opA[12]~12_combout\)) # (!\dp|outalu[7]~19_combout\ & ((\dp|opA[11]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[12]~12_combout\,
	datab => \dp|outalu[10]~20_combout\,
	datac => \dp|outalu[7]~19_combout\,
	datad => \dp|opA[11]~11_combout\,
	combout => \dp|outalu[12]~56_combout\);

-- Location: LCCOMB_X47_Y49_N2
\dp|outalu[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[12]~57_combout\ = (\dp|outalu[10]~20_combout\ & ((\dp|outalu[12]~56_combout\ & ((\dp|Add2~24_combout\))) # (!\dp|outalu[12]~56_combout\ & (\dp|opA[13]~13_combout\)))) # (!\dp|outalu[10]~20_combout\ & (((\dp|outalu[12]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[13]~13_combout\,
	datab => \dp|outalu[10]~20_combout\,
	datac => \dp|Add2~24_combout\,
	datad => \dp|outalu[12]~56_combout\,
	combout => \dp|outalu[12]~57_combout\);

-- Location: LCCOMB_X47_Y49_N0
\dp|outalu[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[12]~58_combout\ = (\dp|outalu[10]~23_combout\ & ((\dp|outalu[12]~55_combout\ & ((\dp|outalu[12]~57_combout\))) # (!\dp|outalu[12]~55_combout\ & (\dp|opA[4]~3_combout\)))) # (!\dp|outalu[10]~23_combout\ & (((\dp|outalu[12]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[4]~3_combout\,
	datab => \dp|outalu[10]~23_combout\,
	datac => \dp|outalu[12]~55_combout\,
	datad => \dp|outalu[12]~57_combout\,
	combout => \dp|outalu[12]~58_combout\);

-- Location: LCCOMB_X47_Y47_N12
\dp|outalu[12]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[12]~59_combout\ = (\dp|outalu[10]~17_combout\ & ((\dp|outalu[10]~16_combout\) # ((\dp|add\(12))))) # (!\dp|outalu[10]~17_combout\ & (!\dp|outalu[10]~16_combout\ & ((\dp|outalu[12]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~17_combout\,
	datab => \dp|outalu[10]~16_combout\,
	datac => \dp|add\(12),
	datad => \dp|outalu[12]~58_combout\,
	combout => \dp|outalu[12]~59_combout\);

-- Location: LCCOMB_X47_Y47_N26
\dp|outalu[12]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[12]~60_combout\ = (\dp|outalu[10]~16_combout\ & (\dp|opB[12]~28_combout\ $ (((\dp|opA[12]~12_combout\ & !\dp|outalu[12]~59_combout\))))) # (!\dp|outalu[10]~16_combout\ & (((\dp|outalu[12]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[12]~12_combout\,
	datab => \dp|opB[12]~28_combout\,
	datac => \dp|outalu[10]~16_combout\,
	datad => \dp|outalu[12]~59_combout\,
	combout => \dp|outalu[12]~60_combout\);

-- Location: LCCOMB_X47_Y47_N8
\dp|outalu[12]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[12]~61_combout\ = (\dp|outalu[10]~30_combout\ & (\dp|REG_A|Q\(12))) # (!\dp|outalu[10]~30_combout\ & ((\dp|outalu[12]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_A|Q\(12),
	datac => \dp|outalu[12]~60_combout\,
	datad => \dp|outalu[10]~30_combout\,
	combout => \dp|outalu[12]~61_combout\);

-- Location: FF_X47_Y47_N9
\dp|REG_alu|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|outalu[12]~61_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Salu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_alu|Q\(12));

-- Location: LCCOMB_X47_Y51_N30
\dp|dtreg[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtreg[12]~12_combout\ = (\ctrl|uins.mreg~combout\ & ((\dataIN[12]~input_o\))) # (!\ctrl|uins.mreg~combout\ & (\dp|REG_alu|Q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_alu|Q\(12),
	datac => \dataIN[12]~input_o\,
	datad => \ctrl|uins.mreg~combout\,
	combout => \dp|dtreg[12]~12_combout\);

-- Location: LCCOMB_X52_Y51_N10
\dp|REGS|r1:14:rx|Q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:14:rx|Q[12]~feeder_combout\ = \dp|dtreg[12]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|dtreg[12]~12_combout\,
	combout => \dp|REGS|r1:14:rx|Q[12]~feeder_combout\);

-- Location: FF_X52_Y51_N11
\dp|REGS|r1:14:rx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:14:rx|Q[12]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:14:rx|Q\(12));

-- Location: LCCOMB_X50_Y50_N4
\dp|REGS|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux3~7_combout\ = (\dp|RIR|Q\(4) & ((\dp|REGS|r1:13:rx|Q\(12)) # ((\dp|RIR|Q\(5))))) # (!\dp|RIR|Q\(4) & (((\dp|REGS|r1:12:rx|Q\(12) & !\dp|RIR|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:13:rx|Q\(12),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:12:rx|Q\(12),
	datad => \dp|RIR|Q\(5),
	combout => \dp|REGS|Mux3~7_combout\);

-- Location: LCCOMB_X49_Y51_N20
\dp|REGS|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux3~8_combout\ = (\dp|REGS|Mux3~7_combout\ & (((\dp|REGS|r1:15:rx|Q\(12)) # (!\dp|RIR|Q\(5))))) # (!\dp|REGS|Mux3~7_combout\ & (\dp|REGS|r1:14:rx|Q\(12) & ((\dp|RIR|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:14:rx|Q\(12),
	datab => \dp|REGS|Mux3~7_combout\,
	datac => \dp|REGS|r1:15:rx|Q\(12),
	datad => \dp|RIR|Q\(5),
	combout => \dp|REGS|Mux3~8_combout\);

-- Location: LCCOMB_X52_Y49_N12
\dp|REGS|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux3~0_combout\ = (\dp|RIR|Q\(5) & (\dp|RIR|Q\(4))) # (!\dp|RIR|Q\(5) & ((\dp|RIR|Q\(4) & (\dp|REGS|r1:5:rx|Q\(12))) # (!\dp|RIR|Q\(4) & ((\dp|REGS|r1:4:rx|Q\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:5:rx|Q\(12),
	datad => \dp|REGS|r1:4:rx|Q\(12),
	combout => \dp|REGS|Mux3~0_combout\);

-- Location: LCCOMB_X52_Y49_N26
\dp|REGS|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux3~1_combout\ = (\dp|RIR|Q\(5) & ((\dp|REGS|Mux3~0_combout\ & ((\dp|REGS|r1:7:rx|Q\(12)))) # (!\dp|REGS|Mux3~0_combout\ & (\dp|REGS|r1:6:rx|Q\(12))))) # (!\dp|RIR|Q\(5) & (((\dp|REGS|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:6:rx|Q\(12),
	datab => \dp|RIR|Q\(5),
	datac => \dp|REGS|r1:7:rx|Q\(12),
	datad => \dp|REGS|Mux3~0_combout\,
	combout => \dp|REGS|Mux3~1_combout\);

-- Location: LCCOMB_X52_Y48_N28
\dp|REGS|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux3~4_combout\ = (\dp|RIR|Q\(4) & (((\dp|RIR|Q\(5))))) # (!\dp|RIR|Q\(4) & ((\dp|RIR|Q\(5) & (\dp|REGS|r1:2:rx|Q\(12))) # (!\dp|RIR|Q\(5) & ((\dp|REGS|r1:0:rx|Q\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:2:rx|Q\(12),
	datab => \dp|REGS|r1:0:rx|Q\(12),
	datac => \dp|RIR|Q\(4),
	datad => \dp|RIR|Q\(5),
	combout => \dp|REGS|Mux3~4_combout\);

-- Location: LCCOMB_X52_Y48_N4
\dp|REGS|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux3~5_combout\ = (\dp|RIR|Q\(4) & ((\dp|REGS|Mux3~4_combout\ & ((\dp|REGS|r1:3:rx|Q\(12)))) # (!\dp|REGS|Mux3~4_combout\ & (\dp|REGS|r1:1:rx|Q\(12))))) # (!\dp|RIR|Q\(4) & (((\dp|REGS|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:1:rx|Q\(12),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:3:rx|Q\(12),
	datad => \dp|REGS|Mux3~4_combout\,
	combout => \dp|REGS|Mux3~5_combout\);

-- Location: LCCOMB_X52_Y50_N24
\dp|REGS|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux3~2_combout\ = (\dp|RIR|Q\(5) & ((\dp|RIR|Q\(4)) # ((\dp|REGS|r1:10:rx|Q\(12))))) # (!\dp|RIR|Q\(5) & (!\dp|RIR|Q\(4) & (\dp|REGS|r1:8:rx|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:8:rx|Q\(12),
	datad => \dp|REGS|r1:10:rx|Q\(12),
	combout => \dp|REGS|Mux3~2_combout\);

-- Location: LCCOMB_X53_Y50_N20
\dp|REGS|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux3~3_combout\ = (\dp|RIR|Q\(4) & ((\dp|REGS|Mux3~2_combout\ & (\dp|REGS|r1:11:rx|Q\(12))) # (!\dp|REGS|Mux3~2_combout\ & ((\dp|REGS|r1:9:rx|Q\(12)))))) # (!\dp|RIR|Q\(4) & (\dp|REGS|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(4),
	datab => \dp|REGS|Mux3~2_combout\,
	datac => \dp|REGS|r1:11:rx|Q\(12),
	datad => \dp|REGS|r1:9:rx|Q\(12),
	combout => \dp|REGS|Mux3~3_combout\);

-- Location: LCCOMB_X52_Y48_N26
\dp|REGS|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux3~6_combout\ = (\dp|RIR|Q\(7) & (((\dp|REGS|Mux3~3_combout\) # (\dp|RIR|Q\(6))))) # (!\dp|RIR|Q\(7) & (\dp|REGS|Mux3~5_combout\ & ((!\dp|RIR|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(7),
	datab => \dp|REGS|Mux3~5_combout\,
	datac => \dp|REGS|Mux3~3_combout\,
	datad => \dp|RIR|Q\(6),
	combout => \dp|REGS|Mux3~6_combout\);

-- Location: LCCOMB_X48_Y45_N2
\dp|REGS|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux3~9_combout\ = (\dp|RIR|Q\(6) & ((\dp|REGS|Mux3~6_combout\ & (\dp|REGS|Mux3~8_combout\)) # (!\dp|REGS|Mux3~6_combout\ & ((\dp|REGS|Mux3~1_combout\))))) # (!\dp|RIR|Q\(6) & (((\dp|REGS|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux3~8_combout\,
	datab => \dp|REGS|Mux3~1_combout\,
	datac => \dp|RIR|Q\(6),
	datad => \dp|REGS|Mux3~6_combout\,
	combout => \dp|REGS|Mux3~9_combout\);

-- Location: FF_X48_Y45_N3
\dp|REG_A|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|Mux3~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_A|Q\(12));

-- Location: LCCOMB_X48_Y45_N4
\dp|opA[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opA[12]~12_combout\ = (\ctrl|uins.ma~0_combout\ & (\dp|RIR|Q\(12))) # (!\ctrl|uins.ma~0_combout\ & ((\ctrl|i.jumpD~8_combout\ & (\dp|RIR|Q\(12))) # (!\ctrl|i.jumpD~8_combout\ & ((\dp|REG_A|Q\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(12),
	datab => \dp|REG_A|Q\(12),
	datac => \ctrl|uins.ma~0_combout\,
	datad => \ctrl|i.jumpD~8_combout\,
	combout => \dp|opA[12]~12_combout\);

-- Location: LCCOMB_X46_Y49_N4
\dp|outalu[11]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[11]~105_combout\ = (\dp|outalu[10]~20_combout\ & ((\dp|outalu[7]~19_combout\) # ((\dp|opA[12]~12_combout\)))) # (!\dp|outalu[10]~20_combout\ & (!\dp|outalu[7]~19_combout\ & ((\dp|opA[10]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~20_combout\,
	datab => \dp|outalu[7]~19_combout\,
	datac => \dp|opA[12]~12_combout\,
	datad => \dp|opA[10]~10_combout\,
	combout => \dp|outalu[11]~105_combout\);

-- Location: LCCOMB_X46_Y49_N18
\dp|outalu[11]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[11]~106_combout\ = (\dp|outalu[7]~19_combout\ & ((\dp|outalu[11]~105_combout\ & ((\dp|Add2~22_combout\))) # (!\dp|outalu[11]~105_combout\ & (!\dp|opA[11]~11_combout\)))) # (!\dp|outalu[7]~19_combout\ & (((\dp|outalu[11]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[11]~11_combout\,
	datab => \dp|outalu[7]~19_combout\,
	datac => \dp|outalu[11]~105_combout\,
	datad => \dp|Add2~22_combout\,
	combout => \dp|outalu[11]~106_combout\);

-- Location: LCCOMB_X46_Y49_N28
\dp|outalu[11]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[11]~109_combout\ = (\dp|outalu[10]~23_combout\ & ((\dp|outalu[11]~108_combout\ & ((\dp|outalu[11]~106_combout\))) # (!\dp|outalu[11]~108_combout\ & (\dp|opA[3]~4_combout\)))) # (!\dp|outalu[10]~23_combout\ & (((\dp|outalu[11]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~23_combout\,
	datab => \dp|opA[3]~4_combout\,
	datac => \dp|outalu[11]~108_combout\,
	datad => \dp|outalu[11]~106_combout\,
	combout => \dp|outalu[11]~109_combout\);

-- Location: LCCOMB_X46_Y49_N30
\dp|outalu[11]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[11]~110_combout\ = (\dp|outalu[10]~16_combout\ & ((\dp|outalu[10]~17_combout\) # ((\dp|outalu~104_combout\)))) # (!\dp|outalu[10]~16_combout\ & (!\dp|outalu[10]~17_combout\ & ((\dp|outalu[11]~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~16_combout\,
	datab => \dp|outalu[10]~17_combout\,
	datac => \dp|outalu~104_combout\,
	datad => \dp|outalu[11]~109_combout\,
	combout => \dp|outalu[11]~110_combout\);

-- Location: LCCOMB_X46_Y49_N24
\dp|add[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|add\(11) = \ctrl|Equal31~4_combout\ $ (\dp|opB[11]~26_combout\ $ (\dp|addA[11]~6_combout\ $ (\dp|carry~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~4_combout\,
	datab => \dp|opB[11]~26_combout\,
	datac => \dp|addA[11]~6_combout\,
	datad => \dp|carry~10_combout\,
	combout => \dp|add\(11));

-- Location: LCCOMB_X46_Y49_N12
\dp|outalu[11]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[11]~111_combout\ = (\dp|outalu[10]~17_combout\ & ((\dp|outalu[11]~110_combout\ & (\dp|opB[11]~26_combout\)) # (!\dp|outalu[11]~110_combout\ & ((\dp|add\(11)))))) # (!\dp|outalu[10]~17_combout\ & (((\dp|outalu[11]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~17_combout\,
	datab => \dp|opB[11]~26_combout\,
	datac => \dp|outalu[11]~110_combout\,
	datad => \dp|add\(11),
	combout => \dp|outalu[11]~111_combout\);

-- Location: LCCOMB_X46_Y49_N22
\dp|outalu[11]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[11]~112_combout\ = (\dp|outalu[10]~30_combout\ & (\dp|REG_A|Q\(11))) # (!\dp|outalu[10]~30_combout\ & ((\dp|outalu[11]~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|outalu[10]~30_combout\,
	datac => \dp|REG_A|Q\(11),
	datad => \dp|outalu[11]~111_combout\,
	combout => \dp|outalu[11]~112_combout\);

-- Location: FF_X46_Y49_N23
\dp|REG_alu|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|outalu[11]~112_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Salu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_alu|Q\(11));

-- Location: LCCOMB_X47_Y50_N0
\dp|dtreg[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtreg[11]~11_combout\ = (\ctrl|uins.mreg~combout\ & (\dataIN[11]~input_o\)) # (!\ctrl|uins.mreg~combout\ & ((\dp|REG_alu|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|uins.mreg~combout\,
	datac => \dataIN[11]~input_o\,
	datad => \dp|REG_alu|Q\(11),
	combout => \dp|dtreg[11]~11_combout\);

-- Location: LCCOMB_X55_Y51_N22
\dp|REGS|r1:14:rx|Q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:14:rx|Q[11]~feeder_combout\ = \dp|dtreg[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|dtreg[11]~11_combout\,
	combout => \dp|REGS|r1:14:rx|Q[11]~feeder_combout\);

-- Location: FF_X55_Y51_N23
\dp|REGS|r1:14:rx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:14:rx|Q[11]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:14:rx|Q\(11));

-- Location: LCCOMB_X54_Y51_N10
\dp|REGS|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux4~0_combout\ = (\dp|RIR|Q\(6) & (\dp|RIR|Q\(7))) # (!\dp|RIR|Q\(6) & ((\dp|RIR|Q\(7) & (\dp|REGS|r1:10:rx|Q\(11))) # (!\dp|RIR|Q\(7) & ((\dp|REGS|r1:2:rx|Q\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|RIR|Q\(7),
	datac => \dp|REGS|r1:10:rx|Q\(11),
	datad => \dp|REGS|r1:2:rx|Q\(11),
	combout => \dp|REGS|Mux4~0_combout\);

-- Location: LCCOMB_X55_Y51_N24
\dp|REGS|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux4~1_combout\ = (\dp|RIR|Q\(6) & ((\dp|REGS|Mux4~0_combout\ & (\dp|REGS|r1:14:rx|Q\(11))) # (!\dp|REGS|Mux4~0_combout\ & ((\dp|REGS|r1:6:rx|Q\(11)))))) # (!\dp|RIR|Q\(6) & (((\dp|REGS|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:14:rx|Q\(11),
	datab => \dp|RIR|Q\(6),
	datac => \dp|REGS|r1:6:rx|Q\(11),
	datad => \dp|REGS|Mux4~0_combout\,
	combout => \dp|REGS|Mux4~1_combout\);

-- Location: LCCOMB_X54_Y50_N10
\dp|REGS|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux4~7_combout\ = (\dp|RIR|Q\(6) & ((\dp|RIR|Q\(7)) # ((\dp|REGS|r1:7:rx|Q\(11))))) # (!\dp|RIR|Q\(6) & (!\dp|RIR|Q\(7) & (\dp|REGS|r1:3:rx|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|RIR|Q\(7),
	datac => \dp|REGS|r1:3:rx|Q\(11),
	datad => \dp|REGS|r1:7:rx|Q\(11),
	combout => \dp|REGS|Mux4~7_combout\);

-- Location: LCCOMB_X54_Y50_N6
\dp|REGS|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux4~8_combout\ = (\dp|REGS|Mux4~7_combout\ & (((\dp|REGS|r1:15:rx|Q\(11))) # (!\dp|RIR|Q\(7)))) # (!\dp|REGS|Mux4~7_combout\ & (\dp|RIR|Q\(7) & (\dp|REGS|r1:11:rx|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux4~7_combout\,
	datab => \dp|RIR|Q\(7),
	datac => \dp|REGS|r1:11:rx|Q\(11),
	datad => \dp|REGS|r1:15:rx|Q\(11),
	combout => \dp|REGS|Mux4~8_combout\);

-- Location: LCCOMB_X55_Y50_N18
\dp|REGS|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux4~4_combout\ = (\dp|RIR|Q\(7) & ((\dp|REGS|r1:8:rx|Q\(11)) # ((\dp|RIR|Q\(6))))) # (!\dp|RIR|Q\(7) & (((\dp|REGS|r1:0:rx|Q\(11) & !\dp|RIR|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(7),
	datab => \dp|REGS|r1:8:rx|Q\(11),
	datac => \dp|REGS|r1:0:rx|Q\(11),
	datad => \dp|RIR|Q\(6),
	combout => \dp|REGS|Mux4~4_combout\);

-- Location: LCCOMB_X50_Y50_N22
\dp|REGS|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux4~5_combout\ = (\dp|REGS|Mux4~4_combout\ & (((\dp|REGS|r1:12:rx|Q\(11)) # (!\dp|RIR|Q\(6))))) # (!\dp|REGS|Mux4~4_combout\ & (\dp|REGS|r1:4:rx|Q\(11) & ((\dp|RIR|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:4:rx|Q\(11),
	datab => \dp|REGS|Mux4~4_combout\,
	datac => \dp|REGS|r1:12:rx|Q\(11),
	datad => \dp|RIR|Q\(6),
	combout => \dp|REGS|Mux4~5_combout\);

-- Location: LCCOMB_X50_Y51_N30
\dp|REGS|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux4~2_combout\ = (\dp|RIR|Q\(7) & (((\dp|RIR|Q\(6))))) # (!\dp|RIR|Q\(7) & ((\dp|RIR|Q\(6) & (\dp|REGS|r1:5:rx|Q\(11))) # (!\dp|RIR|Q\(6) & ((\dp|REGS|r1:1:rx|Q\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:5:rx|Q\(11),
	datab => \dp|RIR|Q\(7),
	datac => \dp|REGS|r1:1:rx|Q\(11),
	datad => \dp|RIR|Q\(6),
	combout => \dp|REGS|Mux4~2_combout\);

-- Location: LCCOMB_X49_Y52_N18
\dp|REGS|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux4~3_combout\ = (\dp|RIR|Q\(7) & ((\dp|REGS|Mux4~2_combout\ & (\dp|REGS|r1:13:rx|Q\(11))) # (!\dp|REGS|Mux4~2_combout\ & ((\dp|REGS|r1:9:rx|Q\(11)))))) # (!\dp|RIR|Q\(7) & (\dp|REGS|Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(7),
	datab => \dp|REGS|Mux4~2_combout\,
	datac => \dp|REGS|r1:13:rx|Q\(11),
	datad => \dp|REGS|r1:9:rx|Q\(11),
	combout => \dp|REGS|Mux4~3_combout\);

-- Location: LCCOMB_X50_Y50_N14
\dp|REGS|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux4~6_combout\ = (\dp|RIR|Q\(5) & (\dp|RIR|Q\(4))) # (!\dp|RIR|Q\(5) & ((\dp|RIR|Q\(4) & ((\dp|REGS|Mux4~3_combout\))) # (!\dp|RIR|Q\(4) & (\dp|REGS|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|Mux4~5_combout\,
	datad => \dp|REGS|Mux4~3_combout\,
	combout => \dp|REGS|Mux4~6_combout\);

-- Location: LCCOMB_X55_Y50_N14
\dp|REGS|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux4~9_combout\ = (\dp|RIR|Q\(5) & ((\dp|REGS|Mux4~6_combout\ & ((\dp|REGS|Mux4~8_combout\))) # (!\dp|REGS|Mux4~6_combout\ & (\dp|REGS|Mux4~1_combout\)))) # (!\dp|RIR|Q\(5) & (((\dp|REGS|Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux4~1_combout\,
	datab => \dp|RIR|Q\(5),
	datac => \dp|REGS|Mux4~8_combout\,
	datad => \dp|REGS|Mux4~6_combout\,
	combout => \dp|REGS|Mux4~9_combout\);

-- Location: FF_X55_Y50_N15
\dp|REG_A|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|Mux4~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_A|Q\(11));

-- Location: LCCOMB_X50_Y48_N18
\dp|opA[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opA[11]~11_combout\ = (\ctrl|uins.ma~0_combout\ & (((\dp|RIR|Q\(11))))) # (!\ctrl|uins.ma~0_combout\ & ((\ctrl|i.jumpD~8_combout\ & ((\dp|RIR|Q\(11)))) # (!\ctrl|i.jumpD~8_combout\ & (\dp|REG_A|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_A|Q\(11),
	datab => \dp|RIR|Q\(11),
	datac => \ctrl|uins.ma~0_combout\,
	datad => \ctrl|i.jumpD~8_combout\,
	combout => \dp|opA[11]~11_combout\);

-- Location: LCCOMB_X46_Y48_N2
\dp|outalu[10]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[10]~89_combout\ = (\dp|outalu[10]~20_combout\ & (((\dp|outalu[7]~19_combout\)))) # (!\dp|outalu[10]~20_combout\ & ((\dp|outalu[7]~19_combout\ & (!\dp|opA[10]~10_combout\)) # (!\dp|outalu[7]~19_combout\ & ((\dp|opA[9]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[10]~10_combout\,
	datab => \dp|outalu[10]~20_combout\,
	datac => \dp|opA[9]~9_combout\,
	datad => \dp|outalu[7]~19_combout\,
	combout => \dp|outalu[10]~89_combout\);

-- Location: LCCOMB_X46_Y48_N0
\dp|outalu[10]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[10]~90_combout\ = (\dp|outalu[10]~20_combout\ & ((\dp|outalu[10]~89_combout\ & ((\dp|Add2~20_combout\))) # (!\dp|outalu[10]~89_combout\ & (\dp|opA[11]~11_combout\)))) # (!\dp|outalu[10]~20_combout\ & (((\dp|outalu[10]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[11]~11_combout\,
	datab => \dp|outalu[10]~20_combout\,
	datac => \dp|Add2~20_combout\,
	datad => \dp|outalu[10]~89_combout\,
	combout => \dp|outalu[10]~90_combout\);

-- Location: LCCOMB_X46_Y48_N28
\dp|outalu[10]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[10]~93_combout\ = (\dp|outalu[10]~23_combout\ & ((\dp|outalu[10]~92_combout\ & ((\dp|outalu[10]~90_combout\))) # (!\dp|outalu[10]~92_combout\ & (\dp|opA[2]~5_combout\)))) # (!\dp|outalu[10]~23_combout\ & (\dp|outalu[10]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~23_combout\,
	datab => \dp|outalu[10]~92_combout\,
	datac => \dp|opA[2]~5_combout\,
	datad => \dp|outalu[10]~90_combout\,
	combout => \dp|outalu[10]~93_combout\);

-- Location: LCCOMB_X46_Y48_N30
\dp|outalu[10]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[10]~94_combout\ = (\dp|outalu[10]~17_combout\ & (\dp|outalu[10]~16_combout\)) # (!\dp|outalu[10]~17_combout\ & ((\dp|outalu[10]~16_combout\ & (\dp|outalu~88_combout\)) # (!\dp|outalu[10]~16_combout\ & ((\dp|outalu[10]~93_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~17_combout\,
	datab => \dp|outalu[10]~16_combout\,
	datac => \dp|outalu~88_combout\,
	datad => \dp|outalu[10]~93_combout\,
	combout => \dp|outalu[10]~94_combout\);

-- Location: LCCOMB_X47_Y47_N24
\dp|outalu[10]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[10]~95_combout\ = (\dp|outalu[10]~17_combout\ & ((\dp|outalu[10]~94_combout\ & (\dp|opB[10]~24_combout\)) # (!\dp|outalu[10]~94_combout\ & ((\dp|add\(10)))))) # (!\dp|outalu[10]~17_combout\ & (((\dp|outalu[10]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[10]~24_combout\,
	datab => \dp|outalu[10]~17_combout\,
	datac => \dp|add\(10),
	datad => \dp|outalu[10]~94_combout\,
	combout => \dp|outalu[10]~95_combout\);

-- Location: LCCOMB_X46_Y47_N22
\dp|outalu[10]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[10]~96_combout\ = (\dp|outalu[10]~30_combout\ & (\dp|REG_A|Q\(10))) # (!\dp|outalu[10]~30_combout\ & ((\dp|outalu[10]~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_A|Q\(10),
	datab => \dp|outalu[10]~30_combout\,
	datad => \dp|outalu[10]~95_combout\,
	combout => \dp|outalu[10]~96_combout\);

-- Location: FF_X46_Y47_N23
\dp|REG_alu|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|outalu[10]~96_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Salu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_alu|Q\(10));

-- Location: LCCOMB_X47_Y50_N30
\dp|dtreg[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtreg[10]~10_combout\ = (\ctrl|uins.mreg~combout\ & (\dataIN[10]~input_o\)) # (!\ctrl|uins.mreg~combout\ & ((\dp|REG_alu|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dataIN[10]~input_o\,
	datac => \dp|REG_alu|Q\(10),
	datad => \ctrl|uins.mreg~combout\,
	combout => \dp|dtreg[10]~10_combout\);

-- Location: FF_X52_Y50_N9
\dp|REGS|r1:8:rx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[10]~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:8:rx|Q\(10));

-- Location: LCCOMB_X53_Y50_N8
\dp|REGS|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux5~0_combout\ = (\dp|RIR|Q\(5) & (((\dp|RIR|Q\(4))))) # (!\dp|RIR|Q\(5) & ((\dp|RIR|Q\(4) & ((\dp|REGS|r1:9:rx|Q\(10)))) # (!\dp|RIR|Q\(4) & (\dp|REGS|r1:8:rx|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:8:rx|Q\(10),
	datab => \dp|RIR|Q\(5),
	datac => \dp|REGS|r1:9:rx|Q\(10),
	datad => \dp|RIR|Q\(4),
	combout => \dp|REGS|Mux5~0_combout\);

-- Location: LCCOMB_X54_Y51_N20
\dp|REGS|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux5~1_combout\ = (\dp|REGS|Mux5~0_combout\ & (((\dp|REGS|r1:11:rx|Q\(10))) # (!\dp|RIR|Q\(5)))) # (!\dp|REGS|Mux5~0_combout\ & (\dp|RIR|Q\(5) & (\dp|REGS|r1:10:rx|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux5~0_combout\,
	datab => \dp|RIR|Q\(5),
	datac => \dp|REGS|r1:10:rx|Q\(10),
	datad => \dp|REGS|r1:11:rx|Q\(10),
	combout => \dp|REGS|Mux5~1_combout\);

-- Location: LCCOMB_X50_Y50_N24
\dp|REGS|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux5~2_combout\ = (\dp|RIR|Q\(4) & (((\dp|RIR|Q\(5))))) # (!\dp|RIR|Q\(4) & ((\dp|RIR|Q\(5) & (\dp|REGS|r1:6:rx|Q\(10))) # (!\dp|RIR|Q\(5) & ((\dp|REGS|r1:4:rx|Q\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:6:rx|Q\(10),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:4:rx|Q\(10),
	datad => \dp|RIR|Q\(5),
	combout => \dp|REGS|Mux5~2_combout\);

-- Location: LCCOMB_X54_Y50_N2
\dp|REGS|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux5~3_combout\ = (\dp|REGS|Mux5~2_combout\ & (((\dp|REGS|r1:7:rx|Q\(10)) # (!\dp|RIR|Q\(4))))) # (!\dp|REGS|Mux5~2_combout\ & (\dp|REGS|r1:5:rx|Q\(10) & ((\dp|RIR|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:5:rx|Q\(10),
	datab => \dp|REGS|Mux5~2_combout\,
	datac => \dp|REGS|r1:7:rx|Q\(10),
	datad => \dp|RIR|Q\(4),
	combout => \dp|REGS|Mux5~3_combout\);

-- Location: LCCOMB_X53_Y49_N12
\dp|REGS|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux5~4_combout\ = (\dp|RIR|Q\(5) & (\dp|RIR|Q\(4))) # (!\dp|RIR|Q\(5) & ((\dp|RIR|Q\(4) & ((\dp|REGS|r1:1:rx|Q\(10)))) # (!\dp|RIR|Q\(4) & (\dp|REGS|r1:0:rx|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:0:rx|Q\(10),
	datad => \dp|REGS|r1:1:rx|Q\(10),
	combout => \dp|REGS|Mux5~4_combout\);

-- Location: LCCOMB_X50_Y49_N12
\dp|REGS|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux5~5_combout\ = (\dp|REGS|Mux5~4_combout\ & (((\dp|REGS|r1:3:rx|Q\(10)) # (!\dp|RIR|Q\(5))))) # (!\dp|REGS|Mux5~4_combout\ & (\dp|REGS|r1:2:rx|Q\(10) & ((\dp|RIR|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:2:rx|Q\(10),
	datab => \dp|REGS|Mux5~4_combout\,
	datac => \dp|REGS|r1:3:rx|Q\(10),
	datad => \dp|RIR|Q\(5),
	combout => \dp|REGS|Mux5~5_combout\);

-- Location: LCCOMB_X54_Y50_N0
\dp|REGS|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux5~6_combout\ = (\dp|RIR|Q\(6) & ((\dp|REGS|Mux5~3_combout\) # ((\dp|RIR|Q\(7))))) # (!\dp|RIR|Q\(6) & (((\dp|REGS|Mux5~5_combout\ & !\dp|RIR|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|REGS|Mux5~3_combout\,
	datac => \dp|REGS|Mux5~5_combout\,
	datad => \dp|RIR|Q\(7),
	combout => \dp|REGS|Mux5~6_combout\);

-- Location: LCCOMB_X50_Y50_N6
\dp|REGS|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux5~7_combout\ = (\dp|RIR|Q\(5) & ((\dp|REGS|r1:14:rx|Q\(10)) # ((\dp|RIR|Q\(4))))) # (!\dp|RIR|Q\(5) & (((\dp|REGS|r1:12:rx|Q\(10) & !\dp|RIR|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|REGS|r1:14:rx|Q\(10),
	datac => \dp|REGS|r1:12:rx|Q\(10),
	datad => \dp|RIR|Q\(4),
	combout => \dp|REGS|Mux5~7_combout\);

-- Location: LCCOMB_X50_Y50_N16
\dp|REGS|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux5~8_combout\ = (\dp|REGS|Mux5~7_combout\ & (((\dp|REGS|r1:15:rx|Q\(10))) # (!\dp|RIR|Q\(4)))) # (!\dp|REGS|Mux5~7_combout\ & (\dp|RIR|Q\(4) & (\dp|REGS|r1:13:rx|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux5~7_combout\,
	datab => \dp|RIR|Q\(4),
	datac => \dp|REGS|r1:13:rx|Q\(10),
	datad => \dp|REGS|r1:15:rx|Q\(10),
	combout => \dp|REGS|Mux5~8_combout\);

-- Location: LCCOMB_X55_Y50_N28
\dp|REGS|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux5~9_combout\ = (\dp|RIR|Q\(7) & ((\dp|REGS|Mux5~6_combout\ & ((\dp|REGS|Mux5~8_combout\))) # (!\dp|REGS|Mux5~6_combout\ & (\dp|REGS|Mux5~1_combout\)))) # (!\dp|RIR|Q\(7) & (((\dp|REGS|Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(7),
	datab => \dp|REGS|Mux5~1_combout\,
	datac => \dp|REGS|Mux5~6_combout\,
	datad => \dp|REGS|Mux5~8_combout\,
	combout => \dp|REGS|Mux5~9_combout\);

-- Location: FF_X55_Y50_N29
\dp|REG_A|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|Mux5~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_A|Q\(10));

-- Location: LCCOMB_X49_Y48_N14
\dp|opA[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opA[10]~10_combout\ = (\ctrl|uins.ma~0_combout\ & (((\dp|RIR|Q\(10))))) # (!\ctrl|uins.ma~0_combout\ & ((\ctrl|i.jumpD~8_combout\ & ((\dp|RIR|Q\(10)))) # (!\ctrl|i.jumpD~8_combout\ & (\dp|REG_A|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_A|Q\(10),
	datab => \dp|RIR|Q\(10),
	datac => \ctrl|uins.ma~0_combout\,
	datad => \ctrl|i.jumpD~8_combout\,
	combout => \dp|opA[10]~10_combout\);

-- Location: LCCOMB_X46_Y48_N24
\dp|outalu[9]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[9]~122_combout\ = (\dp|outalu[9]~121_combout\ & (((\dp|Add2~18_combout\)) # (!\dp|outalu[10]~20_combout\))) # (!\dp|outalu[9]~121_combout\ & (\dp|outalu[10]~20_combout\ & (\dp|opA[10]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[9]~121_combout\,
	datab => \dp|outalu[10]~20_combout\,
	datac => \dp|opA[10]~10_combout\,
	datad => \dp|Add2~18_combout\,
	combout => \dp|outalu[9]~122_combout\);

-- Location: LCCOMB_X46_Y48_N10
\dp|outalu[9]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[9]~125_combout\ = (\dp|outalu[10]~23_combout\ & ((\dp|outalu[9]~124_combout\ & ((\dp|outalu[9]~122_combout\))) # (!\dp|outalu[9]~124_combout\ & (\dp|opA[1]~6_combout\)))) # (!\dp|outalu[10]~23_combout\ & (\dp|outalu[9]~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~23_combout\,
	datab => \dp|outalu[9]~124_combout\,
	datac => \dp|opA[1]~6_combout\,
	datad => \dp|outalu[9]~122_combout\,
	combout => \dp|outalu[9]~125_combout\);

-- Location: LCCOMB_X46_Y48_N20
\dp|outalu[9]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[9]~126_combout\ = (\dp|outalu[10]~17_combout\ & (\dp|outalu[10]~16_combout\)) # (!\dp|outalu[10]~17_combout\ & ((\dp|outalu[10]~16_combout\ & (\dp|outalu~120_combout\)) # (!\dp|outalu[10]~16_combout\ & ((\dp|outalu[9]~125_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~17_combout\,
	datab => \dp|outalu[10]~16_combout\,
	datac => \dp|outalu~120_combout\,
	datad => \dp|outalu[9]~125_combout\,
	combout => \dp|outalu[9]~126_combout\);

-- Location: LCCOMB_X46_Y48_N18
\dp|outalu[9]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[9]~127_combout\ = (\dp|outalu[10]~17_combout\ & ((\dp|outalu[9]~126_combout\ & (\dp|opB[9]~22_combout\)) # (!\dp|outalu[9]~126_combout\ & ((\dp|add[9]~3_combout\))))) # (!\dp|outalu[10]~17_combout\ & (((\dp|outalu[9]~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~17_combout\,
	datab => \dp|opB[9]~22_combout\,
	datac => \dp|add[9]~3_combout\,
	datad => \dp|outalu[9]~126_combout\,
	combout => \dp|outalu[9]~127_combout\);

-- Location: LCCOMB_X46_Y48_N12
\dp|outalu[9]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[9]~128_combout\ = (\dp|outalu[10]~30_combout\ & (\dp|REG_A|Q\(9))) # (!\dp|outalu[10]~30_combout\ & ((\dp|outalu[9]~127_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|REG_A|Q\(9),
	datac => \dp|outalu[10]~30_combout\,
	datad => \dp|outalu[9]~127_combout\,
	combout => \dp|outalu[9]~128_combout\);

-- Location: FF_X46_Y48_N13
\dp|REG_alu|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|outalu[9]~128_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Salu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_alu|Q\(9));

-- Location: FF_X45_Y50_N19
\dp|RSP|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RSP|Q[9]~34_combout\,
	asdata => \dp|REG_alu|Q\(9),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|uins.msp~combout\,
	ena => \ctrl|uins.wsp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RSP|Q\(9));

-- Location: LCCOMB_X45_Y50_N20
\dp|RSP|Q[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RSP|Q[10]~36_combout\ = (\dp|RSP|Q\(10) & ((GND) # (!\dp|RSP|Q[9]~35\))) # (!\dp|RSP|Q\(10) & (\dp|RSP|Q[9]~35\ $ (GND)))
-- \dp|RSP|Q[10]~37\ = CARRY((\dp|RSP|Q\(10)) # (!\dp|RSP|Q[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|RSP|Q\(10),
	datad => VCC,
	cin => \dp|RSP|Q[9]~35\,
	combout => \dp|RSP|Q[10]~36_combout\,
	cout => \dp|RSP|Q[10]~37\);

-- Location: FF_X45_Y50_N21
\dp|RSP|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RSP|Q[10]~36_combout\,
	asdata => \dp|REG_alu|Q\(10),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|uins.msp~combout\,
	ena => \ctrl|uins.wsp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RSP|Q\(10));

-- Location: LCCOMB_X45_Y50_N22
\dp|RSP|Q[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RSP|Q[11]~38_combout\ = (\dp|RSP|Q\(11) & (\dp|RSP|Q[10]~37\ & VCC)) # (!\dp|RSP|Q\(11) & (!\dp|RSP|Q[10]~37\))
-- \dp|RSP|Q[11]~39\ = CARRY((!\dp|RSP|Q\(11) & !\dp|RSP|Q[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RSP|Q\(11),
	datad => VCC,
	cin => \dp|RSP|Q[10]~37\,
	combout => \dp|RSP|Q[11]~38_combout\,
	cout => \dp|RSP|Q[11]~39\);

-- Location: FF_X45_Y50_N23
\dp|RSP|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RSP|Q[11]~38_combout\,
	asdata => \dp|REG_alu|Q\(11),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|uins.msp~combout\,
	ena => \ctrl|uins.wsp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RSP|Q\(11));

-- Location: LCCOMB_X45_Y50_N24
\dp|RSP|Q[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RSP|Q[12]~40_combout\ = (\dp|RSP|Q\(12) & ((GND) # (!\dp|RSP|Q[11]~39\))) # (!\dp|RSP|Q\(12) & (\dp|RSP|Q[11]~39\ $ (GND)))
-- \dp|RSP|Q[12]~41\ = CARRY((\dp|RSP|Q\(12)) # (!\dp|RSP|Q[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|RSP|Q\(12),
	datad => VCC,
	cin => \dp|RSP|Q[11]~39\,
	combout => \dp|RSP|Q[12]~40_combout\,
	cout => \dp|RSP|Q[12]~41\);

-- Location: FF_X45_Y50_N25
\dp|RSP|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RSP|Q[12]~40_combout\,
	asdata => \dp|REG_alu|Q\(12),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|uins.msp~combout\,
	ena => \ctrl|uins.wsp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RSP|Q\(12));

-- Location: LCCOMB_X45_Y50_N26
\dp|RSP|Q[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RSP|Q[13]~42_combout\ = (\dp|RSP|Q\(13) & (\dp|RSP|Q[12]~41\ & VCC)) # (!\dp|RSP|Q\(13) & (!\dp|RSP|Q[12]~41\))
-- \dp|RSP|Q[13]~43\ = CARRY((!\dp|RSP|Q\(13) & !\dp|RSP|Q[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RSP|Q\(13),
	datad => VCC,
	cin => \dp|RSP|Q[12]~41\,
	combout => \dp|RSP|Q[13]~42_combout\,
	cout => \dp|RSP|Q[13]~43\);

-- Location: FF_X45_Y50_N27
\dp|RSP|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RSP|Q[13]~42_combout\,
	asdata => \dp|REG_alu|Q\(13),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|uins.msp~combout\,
	ena => \ctrl|uins.wsp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RSP|Q\(13));

-- Location: LCCOMB_X45_Y50_N28
\dp|RSP|Q[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RSP|Q[14]~44_combout\ = (\dp|RSP|Q\(14) & ((GND) # (!\dp|RSP|Q[13]~43\))) # (!\dp|RSP|Q\(14) & (\dp|RSP|Q[13]~43\ $ (GND)))
-- \dp|RSP|Q[14]~45\ = CARRY((\dp|RSP|Q\(14)) # (!\dp|RSP|Q[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|RSP|Q\(14),
	datad => VCC,
	cin => \dp|RSP|Q[13]~43\,
	combout => \dp|RSP|Q[14]~44_combout\,
	cout => \dp|RSP|Q[14]~45\);

-- Location: FF_X45_Y50_N29
\dp|RSP|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RSP|Q[14]~44_combout\,
	asdata => \dp|REG_alu|Q\(14),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|uins.msp~combout\,
	ena => \ctrl|uins.wsp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RSP|Q\(14));

-- Location: LCCOMB_X46_Y51_N28
\dp|RPC|Q[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RPC|Q[14]~44_combout\ = (\dp|RPC|Q\(14) & (\dp|RPC|Q[13]~43\ $ (GND))) # (!\dp|RPC|Q\(14) & (!\dp|RPC|Q[13]~43\ & VCC))
-- \dp|RPC|Q[14]~45\ = CARRY((\dp|RPC|Q\(14) & !\dp|RPC|Q[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|RPC|Q\(14),
	datad => VCC,
	cin => \dp|RPC|Q[13]~43\,
	combout => \dp|RPC|Q[14]~44_combout\,
	cout => \dp|RPC|Q[14]~45\);

-- Location: LCCOMB_X49_Y51_N18
\dp|dtpc[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtpc[14]~14_combout\ = (\ctrl|EA.Sfetch~q\ & (\dp|REG_alu|Q\(14))) # (!\ctrl|EA.Sfetch~q\ & ((\ctrl|EA.Srts~q\ & ((\dataIN[14]~input_o\))) # (!\ctrl|EA.Srts~q\ & (\dp|REG_alu|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_alu|Q\(14),
	datab => \dataIN[14]~input_o\,
	datac => \ctrl|EA.Sfetch~q\,
	datad => \ctrl|EA.Srts~q\,
	combout => \dp|dtpc[14]~14_combout\);

-- Location: FF_X46_Y51_N29
\dp|RPC|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RPC|Q[14]~44_combout\,
	asdata => \dp|dtpc[14]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|ALT_INV_EA.Sfetch~q\,
	ena => \ctrl|uins.wpc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RPC|Q\(14));

-- Location: LCCOMB_X48_Y51_N4
\dp|opB[14]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[14]~31_combout\ = (\ctrl|uins.mb[0]~0_combout\ & (\dp|RSP|Q\(14))) # (!\ctrl|uins.mb[0]~0_combout\ & ((\dp|RPC|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RSP|Q\(14),
	datab => \dp|RPC|Q\(14),
	datad => \ctrl|uins.mb[0]~0_combout\,
	combout => \dp|opB[14]~31_combout\);

-- Location: LCCOMB_X48_Y51_N10
\dp|opB[14]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[14]~32_combout\ = (\dp|opB[0]~5_combout\ & ((\dp|opB[14]~31_combout\))) # (!\dp|opB[0]~5_combout\ & (\dp|REG_B|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_B|Q\(14),
	datab => \dp|opB[0]~5_combout\,
	datac => \dp|opB[14]~31_combout\,
	combout => \dp|opB[14]~32_combout\);

-- Location: LCCOMB_X45_Y48_N8
\dp|outalu~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu~18_combout\ = \dp|opA[14]~14_combout\ $ (((\dp|opB[0]~5_combout\ & (\dp|opB[14]~31_combout\)) # (!\dp|opB[0]~5_combout\ & ((\dp|REG_B|Q\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[14]~31_combout\,
	datab => \dp|opA[14]~14_combout\,
	datac => \dp|REG_B|Q\(14),
	datad => \dp|opB[0]~5_combout\,
	combout => \dp|outalu~18_combout\);

-- Location: LCCOMB_X45_Y48_N2
\dp|outalu[14]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[14]~25_combout\ = (\dp|opB[0]~5_combout\ & ((\dp|opB[14]~31_combout\))) # (!\dp|opB[0]~5_combout\ & (\dp|REG_B|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|opB[0]~5_combout\,
	datac => \dp|REG_B|Q\(14),
	datad => \dp|opB[14]~31_combout\,
	combout => \dp|outalu[14]~25_combout\);

-- Location: LCCOMB_X45_Y48_N16
\dp|outalu[14]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[14]~26_combout\ = (\dp|outalu[10]~23_combout\ & (\dp|outalu[10]~24_combout\)) # (!\dp|outalu[10]~23_combout\ & ((\dp|outalu[10]~24_combout\ & ((\dp|opA[14]~14_combout\) # (\dp|outalu[14]~25_combout\))) # (!\dp|outalu[10]~24_combout\ & 
-- (\dp|opA[14]~14_combout\ & \dp|outalu[14]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~23_combout\,
	datab => \dp|outalu[10]~24_combout\,
	datac => \dp|opA[14]~14_combout\,
	datad => \dp|outalu[14]~25_combout\,
	combout => \dp|outalu[14]~26_combout\);

-- Location: LCCOMB_X47_Y48_N28
\dp|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Add2~28_combout\ = (\dp|opB[14]~32_combout\ & (\dp|Add2~27\ $ (GND))) # (!\dp|opB[14]~32_combout\ & (!\dp|Add2~27\ & VCC))
-- \dp|Add2~29\ = CARRY((\dp|opB[14]~32_combout\ & !\dp|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|opB[14]~32_combout\,
	datad => VCC,
	cin => \dp|Add2~27\,
	combout => \dp|Add2~28_combout\,
	cout => \dp|Add2~29\);

-- Location: LCCOMB_X45_Y48_N14
\dp|outalu[14]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[14]~21_combout\ = (\dp|outalu[10]~20_combout\ & ((\dp|outalu[7]~19_combout\) # ((\dp|opA[15]~15_combout\)))) # (!\dp|outalu[10]~20_combout\ & (!\dp|outalu[7]~19_combout\ & ((\dp|opA[13]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~20_combout\,
	datab => \dp|outalu[7]~19_combout\,
	datac => \dp|opA[15]~15_combout\,
	datad => \dp|opA[13]~13_combout\,
	combout => \dp|outalu[14]~21_combout\);

-- Location: LCCOMB_X45_Y48_N0
\dp|outalu[14]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[14]~22_combout\ = (\dp|outalu[14]~21_combout\ & ((\dp|Add2~28_combout\) # ((!\dp|outalu[7]~19_combout\)))) # (!\dp|outalu[14]~21_combout\ & (((!\dp|opA[14]~14_combout\ & \dp|outalu[7]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Add2~28_combout\,
	datab => \dp|opA[14]~14_combout\,
	datac => \dp|outalu[14]~21_combout\,
	datad => \dp|outalu[7]~19_combout\,
	combout => \dp|outalu[14]~22_combout\);

-- Location: LCCOMB_X45_Y48_N18
\dp|outalu[14]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[14]~27_combout\ = (\dp|outalu[14]~26_combout\ & (((\dp|outalu[14]~22_combout\) # (!\dp|outalu[10]~23_combout\)))) # (!\dp|outalu[14]~26_combout\ & (\dp|opA[6]~1_combout\ & (\dp|outalu[10]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[6]~1_combout\,
	datab => \dp|outalu[14]~26_combout\,
	datac => \dp|outalu[10]~23_combout\,
	datad => \dp|outalu[14]~22_combout\,
	combout => \dp|outalu[14]~27_combout\);

-- Location: LCCOMB_X45_Y48_N12
\dp|outalu[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[14]~28_combout\ = (\dp|outalu[10]~17_combout\ & (\dp|outalu[10]~16_combout\)) # (!\dp|outalu[10]~17_combout\ & ((\dp|outalu[10]~16_combout\ & (\dp|outalu~18_combout\)) # (!\dp|outalu[10]~16_combout\ & ((\dp|outalu[14]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~17_combout\,
	datab => \dp|outalu[10]~16_combout\,
	datac => \dp|outalu~18_combout\,
	datad => \dp|outalu[14]~27_combout\,
	combout => \dp|outalu[14]~28_combout\);

-- Location: LCCOMB_X48_Y45_N16
\dp|addA[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|addA[14]~12_combout\ = (!\ctrl|Equal31~2_combout\ & ((\ctrl|i.jumpD~8_combout\ & (\dp|opA[9]~9_combout\)) # (!\ctrl|i.jumpD~8_combout\ & ((\dp|opA[14]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[9]~9_combout\,
	datab => \dp|opA[14]~14_combout\,
	datac => \ctrl|i.jumpD~8_combout\,
	datad => \ctrl|Equal31~2_combout\,
	combout => \dp|addA[14]~12_combout\);

-- Location: LCCOMB_X49_Y45_N22
\dp|addA[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|addA[14]~13_combout\ = (\dp|addA[8]~0_combout\ & (!\ctrl|Equal31~6_combout\)) # (!\dp|addA[8]~0_combout\ & (((\dp|addA[14]~12_combout\) # (\dp|addA[12]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|addA[8]~0_combout\,
	datab => \ctrl|Equal31~6_combout\,
	datac => \dp|addA[14]~12_combout\,
	datad => \dp|addA[12]~7_combout\,
	combout => \dp|addA[14]~13_combout\);

-- Location: LCCOMB_X46_Y47_N18
\dp|carry~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|carry~13_combout\ = (\dp|addA[13]~11_combout\ & ((\dp|carry~12_combout\) # (\ctrl|Equal31~4_combout\ $ (\dp|opB[13]~30_combout\)))) # (!\dp|addA[13]~11_combout\ & (\dp|carry~12_combout\ & (\ctrl|Equal31~4_combout\ $ (\dp|opB[13]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~4_combout\,
	datab => \dp|opB[13]~30_combout\,
	datac => \dp|addA[13]~11_combout\,
	datad => \dp|carry~12_combout\,
	combout => \dp|carry~13_combout\);

-- Location: LCCOMB_X46_Y47_N16
\dp|add[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|add\(14) = \ctrl|Equal31~4_combout\ $ (\dp|addA[14]~13_combout\ $ (\dp|opB[14]~32_combout\ $ (\dp|carry~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~4_combout\,
	datab => \dp|addA[14]~13_combout\,
	datac => \dp|opB[14]~32_combout\,
	datad => \dp|carry~13_combout\,
	combout => \dp|add\(14));

-- Location: LCCOMB_X46_Y47_N14
\dp|outalu[14]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[14]~29_combout\ = (\dp|outalu[10]~17_combout\ & ((\dp|outalu[14]~28_combout\ & (\dp|opB[14]~32_combout\)) # (!\dp|outalu[14]~28_combout\ & ((\dp|add\(14)))))) # (!\dp|outalu[10]~17_combout\ & (((\dp|outalu[14]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~17_combout\,
	datab => \dp|opB[14]~32_combout\,
	datac => \dp|outalu[14]~28_combout\,
	datad => \dp|add\(14),
	combout => \dp|outalu[14]~29_combout\);

-- Location: LCCOMB_X46_Y47_N4
\dp|outalu[14]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[14]~31_combout\ = (\dp|outalu[10]~30_combout\ & (\dp|REG_A|Q\(14))) # (!\dp|outalu[10]~30_combout\ & ((\dp|outalu[14]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_A|Q\(14),
	datac => \dp|outalu[14]~29_combout\,
	datad => \dp|outalu[10]~30_combout\,
	combout => \dp|outalu[14]~31_combout\);

-- Location: LCCOMB_X45_Y47_N4
\dp|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Equal0~2_combout\ = (!\dp|outalu[4]~46_combout\ & ((\dp|outalu[10]~30_combout\ & (!\dp|REG_A|Q\(6))) # (!\dp|outalu[10]~30_combout\ & ((!\dp|outalu[6]~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_A|Q\(6),
	datab => \dp|outalu[10]~30_combout\,
	datac => \dp|outalu[6]~39_combout\,
	datad => \dp|outalu[4]~46_combout\,
	combout => \dp|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y47_N6
\dp|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Equal0~3_combout\ = (\dp|Equal0~2_combout\ & ((\dp|outalu[10]~30_combout\ & (!\dp|REG_A|Q\(13))) # (!\dp|outalu[10]~30_combout\ & ((!\dp|outalu[13]~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_A|Q\(13),
	datab => \dp|outalu[10]~30_combout\,
	datac => \dp|Equal0~2_combout\,
	datad => \dp|outalu[13]~54_combout\,
	combout => \dp|Equal0~3_combout\);

-- Location: LCCOMB_X46_Y47_N8
\dp|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Equal0~4_combout\ = (!\dp|outalu[10]~96_combout\ & (!\dp|outalu[2]~103_combout\ & (!\dp|outalu[7]~81_combout\ & !\dp|outalu[8]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[10]~96_combout\,
	datab => \dp|outalu[2]~103_combout\,
	datac => \dp|outalu[7]~81_combout\,
	datad => \dp|outalu[8]~87_combout\,
	combout => \dp|Equal0~4_combout\);

-- Location: LCCOMB_X46_Y47_N2
\dp|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Equal0~5_combout\ = (!\dp|outalu[9]~128_combout\ & (!\dp|outalu[1]~135_combout\ & (!\dp|outalu[3]~142_combout\ & !\dp|outalu[5]~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[9]~128_combout\,
	datab => \dp|outalu[1]~135_combout\,
	datac => \dp|outalu[3]~142_combout\,
	datad => \dp|outalu[5]~119_combout\,
	combout => \dp|Equal0~5_combout\);

-- Location: LCCOMB_X46_Y47_N28
\dp|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Equal0~6_combout\ = (!\dp|outalu[0]~146_combout\ & (!\dp|outalu[11]~112_combout\ & (\dp|Equal0~4_combout\ & \dp|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[0]~146_combout\,
	datab => \dp|outalu[11]~112_combout\,
	datac => \dp|Equal0~4_combout\,
	datad => \dp|Equal0~5_combout\,
	combout => \dp|Equal0~6_combout\);

-- Location: LCCOMB_X46_Y47_N10
\dp|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Equal0~8_combout\ = (\dp|Equal0~6_combout\ & ((\dp|outalu[10]~30_combout\ & (!\dp|REG_A|Q\(12))) # (!\dp|outalu[10]~30_combout\ & ((!\dp|outalu[12]~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_A|Q\(12),
	datab => \dp|outalu[10]~30_combout\,
	datac => \dp|outalu[12]~60_combout\,
	datad => \dp|Equal0~6_combout\,
	combout => \dp|Equal0~8_combout\);

-- Location: LCCOMB_X46_Y47_N24
\dp|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Equal0~7_combout\ = (!\dp|outalu[15]~12_combout\ & (!\dp|outalu[14]~31_combout\ & (\dp|Equal0~3_combout\ & \dp|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[15]~12_combout\,
	datab => \dp|outalu[14]~31_combout\,
	datac => \dp|Equal0~3_combout\,
	datad => \dp|Equal0~8_combout\,
	combout => \dp|Equal0~7_combout\);

-- Location: LCCOMB_X49_Y45_N0
\ctrl|uins.wnz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|uins.wnz~0_combout\ = (\ctrl|EA.Salu~q\ & ((\ctrl|Equal31~6_combout\) # ((\ctrl|Equal31~5_combout\) # (\ctrl|inst_la1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Salu~q\,
	datab => \ctrl|Equal31~6_combout\,
	datac => \ctrl|Equal31~5_combout\,
	datad => \ctrl|inst_la1~combout\,
	combout => \ctrl|uins.wnz~0_combout\);

-- Location: FF_X46_Y47_N25
\dp|flag[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|Equal0~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|uins.wnz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|flag\(1));

-- Location: FF_X50_Y48_N27
\dp|flag[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|outalu[15]~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|uins.wnz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|flag\(0));

-- Location: LCCOMB_X49_Y47_N28
\ctrl|i~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i~2_combout\ = (\dp|flag\(1) & ((\ctrl|Equal14~7_combout\) # ((\dp|flag\(0) & \ctrl|Equal14~8_combout\)))) # (!\dp|flag\(1) & (\dp|flag\(0) & ((\ctrl|Equal14~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|flag\(1),
	datab => \dp|flag\(0),
	datac => \ctrl|Equal14~7_combout\,
	datad => \ctrl|Equal14~8_combout\,
	combout => \ctrl|i~2_combout\);

-- Location: LCCOMB_X48_Y47_N6
\ctrl|i~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i~9_combout\ = (\ctrl|Equal31~1_combout\ & ((\ctrl|Equal14~9_combout\) # ((\ctrl|i~0_combout\) # (\ctrl|i~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal14~9_combout\,
	datab => \ctrl|Equal31~1_combout\,
	datac => \ctrl|i~0_combout\,
	datad => \ctrl|i~2_combout\,
	combout => \ctrl|i~9_combout\);

-- Location: LCCOMB_X50_Y46_N16
\dp|outalu~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu~4_combout\ = (\dp|outalu~3_combout\) # ((!\ctrl|i~10_combout\ & \ctrl|i~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu~3_combout\,
	datab => \ctrl|i~10_combout\,
	datad => \ctrl|i~9_combout\,
	combout => \dp|outalu~4_combout\);

-- Location: LCCOMB_X46_Y46_N4
\dp|outalu[7]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[7]~80_combout\ = (\dp|outalu~4_combout\ & ((\dp|outalu[7]~69_combout\) # ((\dp|RIR|Q\(15) & \dp|outalu[7]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(15),
	datab => \dp|outalu[7]~70_combout\,
	datac => \dp|outalu[7]~69_combout\,
	datad => \dp|outalu~4_combout\,
	combout => \dp|outalu[7]~80_combout\);

-- Location: LCCOMB_X47_Y46_N20
\dp|outalu[7]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[7]~74_combout\ = (\dp|opA[7]~0_combout\ & ((\dp|RIR|Q\(12)) # (\dp|outalu[7]~73_combout\ $ (!\dp|opB[7]~18_combout\)))) # (!\dp|opA[7]~0_combout\ & (((!\dp|outalu[7]~73_combout\ & \dp|opB[7]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(12),
	datab => \dp|opA[7]~0_combout\,
	datac => \dp|outalu[7]~73_combout\,
	datad => \dp|opB[7]~18_combout\,
	combout => \dp|outalu[7]~74_combout\);

-- Location: LCCOMB_X47_Y46_N22
\dp|outalu[7]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[7]~75_combout\ = (\dp|outalu[7]~71_combout\ & (((\dp|outalu[7]~72_combout\)))) # (!\dp|outalu[7]~71_combout\ & ((\dp|outalu[7]~72_combout\ & ((\dp|opB[7]~18_combout\))) # (!\dp|outalu[7]~72_combout\ & (\dp|outalu[7]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[7]~74_combout\,
	datab => \dp|outalu[7]~71_combout\,
	datac => \dp|outalu[7]~72_combout\,
	datad => \dp|opB[7]~18_combout\,
	combout => \dp|outalu[7]~75_combout\);

-- Location: LCCOMB_X47_Y46_N30
\dp|add[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|add\(7) = \ctrl|Equal31~5_combout\ $ (\dp|opA[7]~0_combout\ $ (\dp|carry~6_combout\ $ (\dp|addB[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~5_combout\,
	datab => \dp|opA[7]~0_combout\,
	datac => \dp|carry~6_combout\,
	datad => \dp|addB[7]~0_combout\,
	combout => \dp|add\(7));

-- Location: LCCOMB_X47_Y46_N16
\dp|outalu[7]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[7]~77_combout\ = (\dp|outalu[7]~19_combout\ & (((\dp|outalu[7]~76_combout\) # (\dp|Add2~14_combout\)))) # (!\dp|outalu[7]~19_combout\ & (\dp|opA[6]~1_combout\ & (!\dp|outalu[7]~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[6]~1_combout\,
	datab => \dp|outalu[7]~19_combout\,
	datac => \dp|outalu[7]~76_combout\,
	datad => \dp|Add2~14_combout\,
	combout => \dp|outalu[7]~77_combout\);

-- Location: LCCOMB_X47_Y46_N2
\dp|outalu[7]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[7]~78_combout\ = (\dp|outalu[7]~76_combout\ & ((\dp|outalu[7]~77_combout\ & ((!\dp|opA[7]~0_combout\))) # (!\dp|outalu[7]~77_combout\ & (\dp|opA[8]~8_combout\)))) # (!\dp|outalu[7]~76_combout\ & (((\dp|outalu[7]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[8]~8_combout\,
	datab => \dp|outalu[7]~76_combout\,
	datac => \dp|opA[7]~0_combout\,
	datad => \dp|outalu[7]~77_combout\,
	combout => \dp|outalu[7]~78_combout\);

-- Location: LCCOMB_X47_Y46_N12
\dp|outalu[7]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[7]~79_combout\ = (\dp|outalu[7]~75_combout\ & (((\dp|outalu[7]~78_combout\)) # (!\dp|outalu[7]~71_combout\))) # (!\dp|outalu[7]~75_combout\ & (\dp|outalu[7]~71_combout\ & (\dp|add\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[7]~75_combout\,
	datab => \dp|outalu[7]~71_combout\,
	datac => \dp|add\(7),
	datad => \dp|outalu[7]~78_combout\,
	combout => \dp|outalu[7]~79_combout\);

-- Location: LCCOMB_X47_Y46_N6
\dp|outalu[7]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[7]~81_combout\ = (\dp|outalu[7]~80_combout\ & (\dp|REG_A|Q\(7))) # (!\dp|outalu[7]~80_combout\ & ((\dp|outalu[7]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_A|Q\(7),
	datac => \dp|outalu[7]~80_combout\,
	datad => \dp|outalu[7]~79_combout\,
	combout => \dp|outalu[7]~81_combout\);

-- Location: FF_X47_Y46_N7
\dp|REG_alu|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|outalu[7]~81_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Salu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_alu|Q\(7));

-- Location: LCCOMB_X47_Y50_N16
\dp|dtreg[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtreg[7]~7_combout\ = (\ctrl|uins.mreg~combout\ & (\dataIN[7]~input_o\)) # (!\ctrl|uins.mreg~combout\ & ((\dp|REG_alu|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIN[7]~input_o\,
	datac => \dp|REG_alu|Q\(7),
	datad => \ctrl|uins.mreg~combout\,
	combout => \dp|dtreg[7]~7_combout\);

-- Location: FF_X53_Y50_N15
\dp|REGS|r1:11:rx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[7]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:11:rx|Q\(7));

-- Location: LCCOMB_X54_Y50_N8
\dp|REGS|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux8~7_combout\ = (\dp|RIR|Q\(7) & (((\dp|RIR|Q\(6))))) # (!\dp|RIR|Q\(7) & ((\dp|RIR|Q\(6) & (\dp|REGS|r1:7:rx|Q\(7))) # (!\dp|RIR|Q\(6) & ((\dp|REGS|r1:3:rx|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:7:rx|Q\(7),
	datab => \dp|RIR|Q\(7),
	datac => \dp|REGS|r1:3:rx|Q\(7),
	datad => \dp|RIR|Q\(6),
	combout => \dp|REGS|Mux8~7_combout\);

-- Location: LCCOMB_X54_Y50_N28
\dp|REGS|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux8~8_combout\ = (\dp|REGS|Mux8~7_combout\ & (((\dp|REGS|r1:15:rx|Q\(7)) # (!\dp|RIR|Q\(7))))) # (!\dp|REGS|Mux8~7_combout\ & (\dp|REGS|r1:11:rx|Q\(7) & (\dp|RIR|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:11:rx|Q\(7),
	datab => \dp|REGS|Mux8~7_combout\,
	datac => \dp|RIR|Q\(7),
	datad => \dp|REGS|r1:15:rx|Q\(7),
	combout => \dp|REGS|Mux8~8_combout\);

-- Location: LCCOMB_X54_Y51_N24
\dp|REGS|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux8~0_combout\ = (\dp|RIR|Q\(6) & (((\dp|RIR|Q\(7))))) # (!\dp|RIR|Q\(6) & ((\dp|RIR|Q\(7) & ((\dp|REGS|r1:10:rx|Q\(7)))) # (!\dp|RIR|Q\(7) & (\dp|REGS|r1:2:rx|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(6),
	datab => \dp|REGS|r1:2:rx|Q\(7),
	datac => \dp|REGS|r1:10:rx|Q\(7),
	datad => \dp|RIR|Q\(7),
	combout => \dp|REGS|Mux8~0_combout\);

-- Location: LCCOMB_X52_Y51_N24
\dp|REGS|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux8~1_combout\ = (\dp|REGS|Mux8~0_combout\ & ((\dp|REGS|r1:14:rx|Q\(7)) # ((!\dp|RIR|Q\(6))))) # (!\dp|REGS|Mux8~0_combout\ & (((\dp|REGS|r1:6:rx|Q\(7) & \dp|RIR|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:14:rx|Q\(7),
	datab => \dp|REGS|Mux8~0_combout\,
	datac => \dp|REGS|r1:6:rx|Q\(7),
	datad => \dp|RIR|Q\(6),
	combout => \dp|REGS|Mux8~1_combout\);

-- Location: LCCOMB_X55_Y49_N4
\dp|REGS|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux8~4_combout\ = (\dp|RIR|Q\(6) & (((\dp|RIR|Q\(7))))) # (!\dp|RIR|Q\(6) & ((\dp|RIR|Q\(7) & (\dp|REGS|r1:8:rx|Q\(7))) # (!\dp|RIR|Q\(7) & ((\dp|REGS|r1:0:rx|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:8:rx|Q\(7),
	datab => \dp|RIR|Q\(6),
	datac => \dp|REGS|r1:0:rx|Q\(7),
	datad => \dp|RIR|Q\(7),
	combout => \dp|REGS|Mux8~4_combout\);

-- Location: LCCOMB_X55_Y49_N10
\dp|REGS|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux8~5_combout\ = (\dp|REGS|Mux8~4_combout\ & (((\dp|REGS|r1:12:rx|Q\(7)) # (!\dp|RIR|Q\(6))))) # (!\dp|REGS|Mux8~4_combout\ & (\dp|REGS|r1:4:rx|Q\(7) & ((\dp|RIR|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:4:rx|Q\(7),
	datab => \dp|REGS|Mux8~4_combout\,
	datac => \dp|REGS|r1:12:rx|Q\(7),
	datad => \dp|RIR|Q\(6),
	combout => \dp|REGS|Mux8~5_combout\);

-- Location: LCCOMB_X50_Y51_N16
\dp|REGS|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux8~2_combout\ = (\dp|RIR|Q\(7) & (((\dp|RIR|Q\(6))))) # (!\dp|RIR|Q\(7) & ((\dp|RIR|Q\(6) & (\dp|REGS|r1:5:rx|Q\(7))) # (!\dp|RIR|Q\(6) & ((\dp|REGS|r1:1:rx|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:5:rx|Q\(7),
	datab => \dp|RIR|Q\(7),
	datac => \dp|REGS|r1:1:rx|Q\(7),
	datad => \dp|RIR|Q\(6),
	combout => \dp|REGS|Mux8~2_combout\);

-- Location: LCCOMB_X49_Y52_N22
\dp|REGS|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux8~3_combout\ = (\dp|REGS|Mux8~2_combout\ & (((\dp|REGS|r1:13:rx|Q\(7)) # (!\dp|RIR|Q\(7))))) # (!\dp|REGS|Mux8~2_combout\ & (\dp|REGS|r1:9:rx|Q\(7) & ((\dp|RIR|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux8~2_combout\,
	datab => \dp|REGS|r1:9:rx|Q\(7),
	datac => \dp|REGS|r1:13:rx|Q\(7),
	datad => \dp|RIR|Q\(7),
	combout => \dp|REGS|Mux8~3_combout\);

-- Location: LCCOMB_X48_Y49_N8
\dp|REGS|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux8~6_combout\ = (\dp|RIR|Q\(5) & (((\dp|RIR|Q\(4))))) # (!\dp|RIR|Q\(5) & ((\dp|RIR|Q\(4) & ((\dp|REGS|Mux8~3_combout\))) # (!\dp|RIR|Q\(4) & (\dp|REGS|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(5),
	datab => \dp|REGS|Mux8~5_combout\,
	datac => \dp|RIR|Q\(4),
	datad => \dp|REGS|Mux8~3_combout\,
	combout => \dp|REGS|Mux8~6_combout\);

-- Location: LCCOMB_X48_Y49_N16
\dp|REGS|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux8~9_combout\ = (\dp|REGS|Mux8~6_combout\ & ((\dp|REGS|Mux8~8_combout\) # ((!\dp|RIR|Q\(5))))) # (!\dp|REGS|Mux8~6_combout\ & (((\dp|REGS|Mux8~1_combout\ & \dp|RIR|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux8~8_combout\,
	datab => \dp|REGS|Mux8~1_combout\,
	datac => \dp|REGS|Mux8~6_combout\,
	datad => \dp|RIR|Q\(5),
	combout => \dp|REGS|Mux8~9_combout\);

-- Location: FF_X48_Y49_N17
\dp|REG_A|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|Mux8~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_A|Q\(7));

-- Location: LCCOMB_X48_Y49_N10
\dp|opA[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opA[7]~0_combout\ = (\ctrl|i.jumpD~8_combout\ & (((\dp|RIR|Q\(7))))) # (!\ctrl|i.jumpD~8_combout\ & ((\ctrl|uins.ma~0_combout\ & ((\dp|RIR|Q\(7)))) # (!\ctrl|uins.ma~0_combout\ & (\dp|REG_A|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|i.jumpD~8_combout\,
	datab => \dp|REG_A|Q\(7),
	datac => \dp|RIR|Q\(7),
	datad => \ctrl|uins.ma~0_combout\,
	combout => \dp|opA[7]~0_combout\);

-- Location: LCCOMB_X46_Y46_N22
\dp|outalu[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[15]~2_combout\ = (\dp|opA[14]~14_combout\ & ((\ctrl|i.sl0~1_combout\) # ((\ctrl|Equal31~0_combout\ & \ctrl|Equal14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|i.sl0~1_combout\,
	datab => \ctrl|Equal31~0_combout\,
	datac => \ctrl|Equal14~6_combout\,
	datad => \dp|opA[14]~14_combout\,
	combout => \dp|outalu[15]~2_combout\);

-- Location: LCCOMB_X50_Y46_N18
\dp|outalu[15]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[15]~5_combout\ = (\ctrl|Equal31~0_combout\ & ((\ctrl|Equal14~10_combout\) # ((\dp|REG_A|Q\(15) & \dp|outalu~4_combout\)))) # (!\ctrl|Equal31~0_combout\ & (\dp|REG_A|Q\(15) & ((\dp|outalu~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~0_combout\,
	datab => \dp|REG_A|Q\(15),
	datac => \ctrl|Equal14~10_combout\,
	datad => \dp|outalu~4_combout\,
	combout => \dp|outalu[15]~5_combout\);

-- Location: LCCOMB_X47_Y48_N30
\dp|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Add2~30_combout\ = \dp|Add2~29\ $ (\dp|opB[15]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dp|opB[15]~34_combout\,
	cin => \dp|Add2~29\,
	combout => \dp|Add2~30_combout\);

-- Location: LCCOMB_X46_Y46_N24
\dp|outalu[15]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[15]~6_combout\ = (\dp|outalu[15]~5_combout\) # ((\ctrl|uins.mb[0]~0_combout\ & \dp|Add2~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|uins.mb[0]~0_combout\,
	datac => \dp|outalu[15]~5_combout\,
	datad => \dp|Add2~30_combout\,
	combout => \dp|outalu[15]~6_combout\);

-- Location: LCCOMB_X46_Y46_N10
\dp|outalu[15]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[15]~7_combout\ = (\dp|outalu[15]~2_combout\) # ((\dp|outalu[15]~6_combout\) # ((\ctrl|Equal31~11_combout\ & \dp|opA[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~11_combout\,
	datab => \dp|opA[7]~0_combout\,
	datac => \dp|outalu[15]~2_combout\,
	datad => \dp|outalu[15]~6_combout\,
	combout => \dp|outalu[15]~7_combout\);

-- Location: LCCOMB_X46_Y46_N0
\dp|outalu[15]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[15]~8_combout\ = (\dp|outalu[15]~7_combout\) # ((\dp|opA[15]~15_combout\ & (\ctrl|Equal31~8_combout\)) # (!\dp|opA[15]~15_combout\ & ((\ctrl|i~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~8_combout\,
	datab => \dp|opA[15]~15_combout\,
	datac => \ctrl|i~11_combout\,
	datad => \dp|outalu[15]~7_combout\,
	combout => \dp|outalu[15]~8_combout\);

-- Location: LCCOMB_X46_Y46_N30
\dp|outalu[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[0]~9_combout\ = (!\ctrl|Equal31~11_combout\ & !\ctrl|Equal31~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~11_combout\,
	datad => \ctrl|Equal31~7_combout\,
	combout => \dp|outalu[0]~9_combout\);

-- Location: LCCOMB_X46_Y46_N28
\dp|outalu[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[0]~10_combout\ = (!\ctrl|uins.mb[0]~0_combout\ & (\ctrl|inst_la1~1_combout\ & (\dp|outalu[0]~9_combout\ & !\dp|outalu~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|uins.mb[0]~0_combout\,
	datab => \ctrl|inst_la1~1_combout\,
	datac => \dp|outalu[0]~9_combout\,
	datad => \dp|outalu~4_combout\,
	combout => \dp|outalu[0]~10_combout\);

-- Location: LCCOMB_X46_Y46_N6
\dp|outalu[15]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[15]~11_combout\ = (\dp|outalu[0]~10_combout\ & (((!\ctrl|Equal14~5_combout\ & !\ctrl|Equal14~6_combout\)) # (!\ctrl|Equal31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal14~5_combout\,
	datab => \ctrl|Equal31~0_combout\,
	datac => \ctrl|Equal14~6_combout\,
	datad => \dp|outalu[0]~10_combout\,
	combout => \dp|outalu[15]~11_combout\);

-- Location: LCCOMB_X46_Y47_N12
\dp|carry~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|carry~14_combout\ = (\dp|addA[14]~13_combout\ & ((\dp|carry~13_combout\) # (\ctrl|Equal31~4_combout\ $ (\dp|opB[14]~32_combout\)))) # (!\dp|addA[14]~13_combout\ & (\dp|carry~13_combout\ & (\ctrl|Equal31~4_combout\ $ (\dp|opB[14]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~4_combout\,
	datab => \dp|addA[14]~13_combout\,
	datac => \dp|opB[14]~32_combout\,
	datad => \dp|carry~13_combout\,
	combout => \dp|carry~14_combout\);

-- Location: LCCOMB_X46_Y47_N6
\dp|add[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|add\(15) = \ctrl|Equal31~4_combout\ $ (\dp|opB[15]~34_combout\ $ (\dp|addA[15]~15_combout\ $ (\dp|carry~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~4_combout\,
	datab => \dp|opB[15]~34_combout\,
	datac => \dp|addA[15]~15_combout\,
	datad => \dp|carry~14_combout\,
	combout => \dp|add\(15));

-- Location: LCCOMB_X46_Y47_N30
\dp|outalu[15]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[15]~12_combout\ = (\dp|outalu[15]~1_combout\) # ((\dp|outalu[15]~8_combout\) # ((\dp|outalu[15]~11_combout\ & \dp|add\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[15]~1_combout\,
	datab => \dp|outalu[15]~8_combout\,
	datac => \dp|outalu[15]~11_combout\,
	datad => \dp|add\(15),
	combout => \dp|outalu[15]~12_combout\);

-- Location: FF_X46_Y47_N31
\dp|REG_alu|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|outalu[15]~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Salu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_alu|Q\(15));

-- Location: LCCOMB_X45_Y51_N12
\dp|dtreg[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtreg[15]~15_combout\ = (\ctrl|uins.mreg~combout\ & (\dataIN[15]~input_o\)) # (!\ctrl|uins.mreg~combout\ & ((\dp|REG_alu|Q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIN[15]~input_o\,
	datab => \dp|REG_alu|Q\(15),
	datad => \ctrl|uins.mreg~combout\,
	combout => \dp|dtreg[15]~15_combout\);

-- Location: LCCOMB_X47_Y52_N24
\dp|REGS|r1:15:rx|Q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|r1:15:rx|Q[15]~feeder_combout\ = \dp|dtreg[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|dtreg[15]~15_combout\,
	combout => \dp|REGS|r1:15:rx|Q[15]~feeder_combout\);

-- Location: FF_X47_Y52_N25
\dp|REGS|r1:15:rx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|r1:15:rx|Q[15]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dp|REGS|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:15:rx|Q\(15));

-- Location: LCCOMB_X54_Y52_N24
\dp|REGS|Mux16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux16~7_combout\ = (\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|destB[3]~2_combout\)))) # (!\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|r1:11:rx|Q\(15)))) # (!\dp|REGS|destB[3]~2_combout\ & 
-- (\dp|REGS|r1:3:rx|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|r1:3:rx|Q\(15),
	datac => \dp|REGS|r1:11:rx|Q\(15),
	datad => \dp|REGS|destB[3]~2_combout\,
	combout => \dp|REGS|Mux16~7_combout\);

-- Location: LCCOMB_X50_Y52_N22
\dp|REGS|Mux16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux16~8_combout\ = (\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|Mux16~7_combout\ & (\dp|REGS|r1:15:rx|Q\(15))) # (!\dp|REGS|Mux16~7_combout\ & ((\dp|REGS|r1:7:rx|Q\(15)))))) # (!\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|Mux16~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|r1:15:rx|Q\(15),
	datac => \dp|REGS|r1:7:rx|Q\(15),
	datad => \dp|REGS|Mux16~7_combout\,
	combout => \dp|REGS|Mux16~8_combout\);

-- Location: LCCOMB_X52_Y52_N20
\dp|REGS|Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux16~4_combout\ = (\dp|REGS|destB[2]~3_combout\ & (((\dp|REGS|r1:4:rx|Q\(15)) # (\dp|REGS|destB[3]~2_combout\)))) # (!\dp|REGS|destB[2]~3_combout\ & (\dp|REGS|r1:0:rx|Q\(15) & ((!\dp|REGS|destB[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:0:rx|Q\(15),
	datab => \dp|REGS|r1:4:rx|Q\(15),
	datac => \dp|REGS|destB[2]~3_combout\,
	datad => \dp|REGS|destB[3]~2_combout\,
	combout => \dp|REGS|Mux16~4_combout\);

-- Location: LCCOMB_X52_Y52_N30
\dp|REGS|Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux16~5_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|Mux16~4_combout\ & ((\dp|REGS|r1:12:rx|Q\(15)))) # (!\dp|REGS|Mux16~4_combout\ & (\dp|REGS|r1:8:rx|Q\(15))))) # (!\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|Mux16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[3]~2_combout\,
	datab => \dp|REGS|r1:8:rx|Q\(15),
	datac => \dp|REGS|r1:12:rx|Q\(15),
	datad => \dp|REGS|Mux16~4_combout\,
	combout => \dp|REGS|Mux16~5_combout\);

-- Location: LCCOMB_X52_Y52_N22
\dp|REGS|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux16~2_combout\ = (\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|destB[2]~3_combout\)))) # (!\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|destB[2]~3_combout\ & (\dp|REGS|r1:6:rx|Q\(15))) # (!\dp|REGS|destB[2]~3_combout\ & 
-- ((\dp|REGS|r1:2:rx|Q\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[3]~2_combout\,
	datab => \dp|REGS|r1:6:rx|Q\(15),
	datac => \dp|REGS|r1:2:rx|Q\(15),
	datad => \dp|REGS|destB[2]~3_combout\,
	combout => \dp|REGS|Mux16~2_combout\);

-- Location: LCCOMB_X52_Y52_N28
\dp|REGS|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux16~3_combout\ = (\dp|REGS|Mux16~2_combout\ & (((\dp|REGS|r1:14:rx|Q\(15)) # (!\dp|REGS|destB[3]~2_combout\)))) # (!\dp|REGS|Mux16~2_combout\ & (\dp|REGS|r1:10:rx|Q\(15) & ((\dp|REGS|destB[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:10:rx|Q\(15),
	datab => \dp|REGS|r1:14:rx|Q\(15),
	datac => \dp|REGS|Mux16~2_combout\,
	datad => \dp|REGS|destB[3]~2_combout\,
	combout => \dp|REGS|Mux16~3_combout\);

-- Location: LCCOMB_X52_Y52_N24
\dp|REGS|Mux16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux16~6_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|destB[0]~1_combout\) # ((\dp|REGS|Mux16~3_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & (!\dp|REGS|destB[0]~1_combout\ & (\dp|REGS|Mux16~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[1]~0_combout\,
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|Mux16~5_combout\,
	datad => \dp|REGS|Mux16~3_combout\,
	combout => \dp|REGS|Mux16~6_combout\);

-- Location: LCCOMB_X53_Y48_N6
\dp|REGS|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux16~0_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|r1:9:rx|Q\(15)) # ((\dp|REGS|destB[2]~3_combout\)))) # (!\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|r1:1:rx|Q\(15) & !\dp|REGS|destB[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:9:rx|Q\(15),
	datab => \dp|REGS|destB[3]~2_combout\,
	datac => \dp|REGS|r1:1:rx|Q\(15),
	datad => \dp|REGS|destB[2]~3_combout\,
	combout => \dp|REGS|Mux16~0_combout\);

-- Location: LCCOMB_X50_Y52_N12
\dp|REGS|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux16~1_combout\ = (\dp|REGS|Mux16~0_combout\ & ((\dp|REGS|r1:13:rx|Q\(15)) # ((!\dp|REGS|destB[2]~3_combout\)))) # (!\dp|REGS|Mux16~0_combout\ & (((\dp|REGS|r1:5:rx|Q\(15) & \dp|REGS|destB[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:13:rx|Q\(15),
	datab => \dp|REGS|Mux16~0_combout\,
	datac => \dp|REGS|r1:5:rx|Q\(15),
	datad => \dp|REGS|destB[2]~3_combout\,
	combout => \dp|REGS|Mux16~1_combout\);

-- Location: LCCOMB_X50_Y52_N28
\dp|REGS|Mux16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux16~9_combout\ = (\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|Mux16~6_combout\ & (\dp|REGS|Mux16~8_combout\)) # (!\dp|REGS|Mux16~6_combout\ & ((\dp|REGS|Mux16~1_combout\))))) # (!\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|Mux16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux16~8_combout\,
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|Mux16~6_combout\,
	datad => \dp|REGS|Mux16~1_combout\,
	combout => \dp|REGS|Mux16~9_combout\);

-- Location: FF_X50_Y52_N29
\dp|REG_B|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|REGS|Mux16~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Srreg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_B|Q\(15));

-- Location: LCCOMB_X46_Y51_N30
\dp|RPC|Q[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RPC|Q[15]~46_combout\ = \dp|RPC|Q\(15) $ (\dp|RPC|Q[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RPC|Q\(15),
	cin => \dp|RPC|Q[14]~45\,
	combout => \dp|RPC|Q[15]~46_combout\);

-- Location: LCCOMB_X45_Y51_N26
\dp|dtpc[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtpc[15]~15_combout\ = (\ctrl|EA.Srts~q\ & ((\ctrl|EA.Sfetch~q\ & ((\dp|REG_alu|Q\(15)))) # (!\ctrl|EA.Sfetch~q\ & (\dataIN[15]~input_o\)))) # (!\ctrl|EA.Srts~q\ & (((\dp|REG_alu|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIN[15]~input_o\,
	datab => \dp|REG_alu|Q\(15),
	datac => \ctrl|EA.Srts~q\,
	datad => \ctrl|EA.Sfetch~q\,
	combout => \dp|dtpc[15]~15_combout\);

-- Location: FF_X46_Y51_N31
\dp|RPC|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RPC|Q[15]~46_combout\,
	asdata => \dp|dtpc[15]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|ALT_INV_EA.Sfetch~q\,
	ena => \ctrl|uins.wpc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RPC|Q\(15));

-- Location: LCCOMB_X45_Y50_N30
\dp|RSP|Q[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RSP|Q[15]~46_combout\ = \dp|RSP|Q\(15) $ (!\dp|RSP|Q[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RSP|Q\(15),
	cin => \dp|RSP|Q[14]~45\,
	combout => \dp|RSP|Q[15]~46_combout\);

-- Location: FF_X45_Y50_N31
\dp|RSP|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|RSP|Q[15]~46_combout\,
	asdata => \dp|REG_alu|Q\(15),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ctrl|uins.msp~combout\,
	ena => \ctrl|uins.wsp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RSP|Q\(15));

-- Location: LCCOMB_X46_Y52_N28
\dp|opB[15]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[15]~33_combout\ = (\ctrl|uins.mb[0]~0_combout\ & ((\dp|RSP|Q\(15)))) # (!\ctrl|uins.mb[0]~0_combout\ & (\dp|RPC|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RPC|Q\(15),
	datac => \ctrl|uins.mb[0]~0_combout\,
	datad => \dp|RSP|Q\(15),
	combout => \dp|opB[15]~33_combout\);

-- Location: LCCOMB_X46_Y52_N18
\dp|opB[15]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opB[15]~34_combout\ = (\dp|opB[0]~5_combout\ & ((\dp|opB[15]~33_combout\))) # (!\dp|opB[0]~5_combout\ & (\dp|REG_B|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[0]~5_combout\,
	datab => \dp|REG_B|Q\(15),
	datad => \dp|opB[15]~33_combout\,
	combout => \dp|opB[15]~34_combout\);

-- Location: LCCOMB_X49_Y45_N24
\dp|overflow\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|overflow~combout\ = (\dp|addA[15]~15_combout\ & (!\dp|carry~14_combout\ & (\ctrl|Equal31~4_combout\ $ (\dp|opB[15]~34_combout\)))) # (!\dp|addA[15]~15_combout\ & (\dp|carry~14_combout\ & (\ctrl|Equal31~4_combout\ $ (!\dp|opB[15]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|addA[15]~15_combout\,
	datab => \ctrl|Equal31~4_combout\,
	datac => \dp|opB[15]~34_combout\,
	datad => \dp|carry~14_combout\,
	combout => \dp|overflow~combout\);

-- Location: LCCOMB_X49_Y45_N28
\ctrl|wcv~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|wcv~0_combout\ = (\dp|RIR|Q\(15)) # (\dp|RIR|Q\(13) $ (((\dp|RIR|Q\(14) & !\dp|RIR|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(14),
	datab => \dp|RIR|Q\(12),
	datac => \dp|RIR|Q\(13),
	datad => \dp|RIR|Q\(15),
	combout => \ctrl|wcv~0_combout\);

-- Location: LCCOMB_X49_Y45_N26
\ctrl|uins.wcv\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|uins.wcv~combout\ = (\ctrl|EA.Salu~q\ & !\ctrl|wcv~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|EA.Salu~q\,
	datad => \ctrl|wcv~0_combout\,
	combout => \ctrl|uins.wcv~combout\);

-- Location: FF_X49_Y45_N25
\dp|flag[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|overflow~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|uins.wcv~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|flag\(3));

-- Location: LCCOMB_X50_Y48_N10
\ctrl|i~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i~5_combout\ = (\dp|RIR|Q\(11) & ((\dp|RIR|Q\(10)) # ((\dp|flag\(2))))) # (!\dp|RIR|Q\(11) & (!\dp|RIR|Q\(10) & (\dp|flag\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(11),
	datab => \dp|RIR|Q\(10),
	datac => \dp|flag\(0),
	datad => \dp|flag\(2),
	combout => \ctrl|i~5_combout\);

-- Location: LCCOMB_X50_Y48_N20
\ctrl|i~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i~6_combout\ = (\dp|RIR|Q\(10) & ((\ctrl|i~5_combout\ & (\dp|flag\(3))) # (!\ctrl|i~5_combout\ & ((\dp|flag\(1)))))) # (!\dp|RIR|Q\(10) & (((\ctrl|i~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|flag\(3),
	datab => \dp|RIR|Q\(10),
	datac => \dp|flag\(1),
	datad => \ctrl|i~5_combout\,
	combout => \ctrl|i~6_combout\);

-- Location: LCCOMB_X50_Y48_N30
\ctrl|i~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i~7_combout\ = (\ctrl|i~4_combout\ & ((\dp|RIR|Q\(13) & (!\dp|RIR|Q\(12) & \ctrl|i~6_combout\)) # (!\dp|RIR|Q\(13) & (\dp|RIR|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(13),
	datab => \dp|RIR|Q\(12),
	datac => \ctrl|i~4_combout\,
	datad => \ctrl|i~6_combout\,
	combout => \ctrl|i~7_combout\);

-- Location: LCCOMB_X49_Y47_N0
\ctrl|i.jumpD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i.jumpD~0_combout\ = (\dp|RIR|Q\(15) & ((\dp|RIR|Q\(14)) # ((\dp|RIR|Q\(13) & \dp|RIR|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(13),
	datab => \dp|RIR|Q\(12),
	datac => \dp|RIR|Q\(14),
	datad => \dp|RIR|Q\(15),
	combout => \ctrl|i.jumpD~0_combout\);

-- Location: LCCOMB_X49_Y47_N24
\ctrl|i.jumpD~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i.jumpD~1_combout\ = (\ctrl|i.jumpD~0_combout\ & (((!\ctrl|Equal14~2_combout\ & !\ctrl|Equal14~1_combout\)) # (!\ctrl|Equal31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~0_combout\,
	datab => \ctrl|Equal14~2_combout\,
	datac => \ctrl|Equal14~1_combout\,
	datad => \ctrl|i.jumpD~0_combout\,
	combout => \ctrl|i.jumpD~1_combout\);

-- Location: LCCOMB_X50_Y47_N12
\ctrl|i~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i~1_combout\ = (\dp|flag\(1) & ((\ctrl|Equal14~5_combout\) # ((\dp|flag\(0) & \ctrl|Equal14~6_combout\)))) # (!\dp|flag\(1) & (\dp|flag\(0) & (\ctrl|Equal14~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|flag\(1),
	datab => \dp|flag\(0),
	datac => \ctrl|Equal14~6_combout\,
	datad => \ctrl|Equal14~5_combout\,
	combout => \ctrl|i~1_combout\);

-- Location: LCCOMB_X49_Y47_N2
\ctrl|i.jumpD~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i.jumpD~2_combout\ = (!\ctrl|Equal14~9_combout\ & (!\ctrl|Equal14~2_combout\ & (!\ctrl|i~3_combout\ & !\ctrl|i~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal14~9_combout\,
	datab => \ctrl|Equal14~2_combout\,
	datac => \ctrl|i~3_combout\,
	datad => \ctrl|i~2_combout\,
	combout => \ctrl|i.jumpD~2_combout\);

-- Location: LCCOMB_X49_Y47_N8
\ctrl|i.jumpD~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i.jumpD~3_combout\ = ((!\ctrl|i~0_combout\ & (!\ctrl|i~1_combout\ & \ctrl|i.jumpD~2_combout\))) # (!\ctrl|Equal31~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|i~0_combout\,
	datab => \ctrl|i~1_combout\,
	datac => \ctrl|Equal31~1_combout\,
	datad => \ctrl|i.jumpD~2_combout\,
	combout => \ctrl|i.jumpD~3_combout\);

-- Location: LCCOMB_X49_Y47_N26
\ctrl|i.jumpD~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i.jumpD~6_combout\ = ((!\ctrl|Equal14~9_combout\ & (!\ctrl|Equal14~0_combout\ & !\ctrl|Equal14~8_combout\))) # (!\ctrl|Equal31~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal14~9_combout\,
	datab => \ctrl|Equal14~0_combout\,
	datac => \ctrl|Equal31~0_combout\,
	datad => \ctrl|Equal14~8_combout\,
	combout => \ctrl|i.jumpD~6_combout\);

-- Location: LCCOMB_X50_Y46_N0
\ctrl|i~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i~8_combout\ = (\ctrl|Equal31~0_combout\ & \ctrl|Equal14~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|Equal31~0_combout\,
	datad => \ctrl|Equal14~7_combout\,
	combout => \ctrl|i~8_combout\);

-- Location: LCCOMB_X49_Y47_N20
\ctrl|i.jumpD~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i.jumpD~7_combout\ = (\ctrl|i.jumpD~4_combout\ & (\ctrl|i.jumpD~5_combout\ & (\ctrl|i.jumpD~6_combout\ & !\ctrl|i~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|i.jumpD~4_combout\,
	datab => \ctrl|i.jumpD~5_combout\,
	datac => \ctrl|i.jumpD~6_combout\,
	datad => \ctrl|i~8_combout\,
	combout => \ctrl|i.jumpD~7_combout\);

-- Location: LCCOMB_X49_Y47_N18
\ctrl|i.jumpD~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i.jumpD~8_combout\ = (\ctrl|i~7_combout\ & (\ctrl|i.jumpD~1_combout\ & (\ctrl|i.jumpD~3_combout\ & \ctrl|i.jumpD~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|i~7_combout\,
	datab => \ctrl|i.jumpD~1_combout\,
	datac => \ctrl|i.jumpD~3_combout\,
	datad => \ctrl|i.jumpD~7_combout\,
	combout => \ctrl|i.jumpD~8_combout\);

-- Location: LCCOMB_X48_Y49_N24
\dp|opA[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|opA[9]~9_combout\ = (\ctrl|i.jumpD~8_combout\ & (((\dp|RIR|Q\(9))))) # (!\ctrl|i.jumpD~8_combout\ & ((\ctrl|uins.ma~0_combout\ & (\dp|RIR|Q\(9))) # (!\ctrl|uins.ma~0_combout\ & ((\dp|REG_A|Q\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|i.jumpD~8_combout\,
	datab => \ctrl|uins.ma~0_combout\,
	datac => \dp|RIR|Q\(9),
	datad => \dp|REG_A|Q\(9),
	combout => \dp|opA[9]~9_combout\);

-- Location: LCCOMB_X48_Y45_N6
\dp|addA[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|addA[15]~14_combout\ = (!\ctrl|Equal31~2_combout\ & ((\ctrl|i.jumpD~8_combout\ & (\dp|opA[9]~9_combout\)) # (!\ctrl|i.jumpD~8_combout\ & ((\dp|opA[15]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[9]~9_combout\,
	datab => \ctrl|i.jumpD~8_combout\,
	datac => \dp|opA[15]~15_combout\,
	datad => \ctrl|Equal31~2_combout\,
	combout => \dp|addA[15]~14_combout\);

-- Location: LCCOMB_X49_Y45_N14
\dp|addA[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|addA[15]~15_combout\ = (\dp|addA[8]~0_combout\ & (!\ctrl|Equal31~6_combout\)) # (!\dp|addA[8]~0_combout\ & (((\dp|addA[15]~14_combout\) # (\dp|addA[12]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|addA[8]~0_combout\,
	datab => \ctrl|Equal31~6_combout\,
	datac => \dp|addA[15]~14_combout\,
	datad => \dp|addA[12]~7_combout\,
	combout => \dp|addA[15]~15_combout\);

-- Location: LCCOMB_X49_Y45_N18
\dp|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|cout~0_combout\ = (\dp|addA[15]~15_combout\ & ((\dp|carry~14_combout\) # (\ctrl|Equal31~4_combout\ $ (\dp|opB[15]~34_combout\)))) # (!\dp|addA[15]~15_combout\ & (\dp|carry~14_combout\ & (\ctrl|Equal31~4_combout\ $ (\dp|opB[15]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|addA[15]~15_combout\,
	datab => \ctrl|Equal31~4_combout\,
	datac => \dp|opB[15]~34_combout\,
	datad => \dp|carry~14_combout\,
	combout => \dp|cout~0_combout\);

-- Location: FF_X49_Y45_N19
\dp|flag[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|cout~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|uins.wcv~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|flag\(2));

-- Location: LCCOMB_X50_Y47_N8
\ctrl|i~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i~3_combout\ = (\dp|flag\(2) & ((\ctrl|Equal14~10_combout\) # ((\dp|flag\(3) & \ctrl|Equal14~1_combout\)))) # (!\dp|flag\(2) & (\dp|flag\(3) & ((\ctrl|Equal14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|flag\(2),
	datab => \dp|flag\(3),
	datac => \ctrl|Equal14~10_combout\,
	datad => \ctrl|Equal14~1_combout\,
	combout => \ctrl|i~3_combout\);

-- Location: LCCOMB_X50_Y47_N6
\ctrl|i~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|i~10_combout\ = (\ctrl|Equal14~2_combout\) # ((\ctrl|i~3_combout\) # (\ctrl|i~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal14~2_combout\,
	datab => \ctrl|i~3_combout\,
	datad => \ctrl|i~1_combout\,
	combout => \ctrl|i~10_combout\);

-- Location: LCCOMB_X48_Y47_N16
\ctrl|mb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|mb~0_combout\ = (\ctrl|i~10_combout\ & (\ctrl|Equal31~1_combout\)) # (!\ctrl|i~10_combout\ & ((\ctrl|i~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|Equal31~1_combout\,
	datac => \ctrl|i~10_combout\,
	datad => \ctrl|i~9_combout\,
	combout => \ctrl|mb~0_combout\);

-- Location: LCCOMB_X49_Y46_N18
\ctrl|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Selector0~0_combout\ = (!\ctrl|mb~0_combout\ & (\dp|opB[0]~1_combout\ & (\ctrl|PE.Sjmp~0_combout\ & !\ctrl|i.jumpD~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|mb~0_combout\,
	datab => \dp|opB[0]~1_combout\,
	datac => \ctrl|PE.Sjmp~0_combout\,
	datad => \ctrl|i.jumpD~8_combout\,
	combout => \ctrl|Selector0~0_combout\);

-- Location: LCCOMB_X49_Y46_N12
\ctrl|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|Selector0~1_combout\ = (\ctrl|WideOr1~0_combout\) # ((\ctrl|Selector0~0_combout\ & ((!\ctrl|Equal14~0_combout\) # (!\ctrl|Equal31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~0_combout\,
	datab => \ctrl|WideOr1~0_combout\,
	datac => \ctrl|Equal14~0_combout\,
	datad => \ctrl|Selector0~0_combout\,
	combout => \ctrl|Selector0~1_combout\);

-- Location: FF_X49_Y46_N13
\ctrl|EA.Sfetch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \ctrl|Selector0~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|EA.Sfetch~q\);

-- Location: FF_X49_Y47_N13
\dp|RIR|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dataIN[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|EA.Sfetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|RIR|Q\(2));

-- Location: LCCOMB_X50_Y46_N26
\dp|outalu~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu~63_combout\ = (!\dp|RIR|Q\(2) & (\dp|RIR|Q\(1) & (\ctrl|Equal31~0_combout\ & !\dp|RIR|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RIR|Q\(2),
	datab => \dp|RIR|Q\(1),
	datac => \ctrl|Equal31~0_combout\,
	datad => \dp|RIR|Q\(3),
	combout => \dp|outalu~63_combout\);

-- Location: LCCOMB_X45_Y46_N20
\dp|outalu~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu~62_combout\ = \dp|opA[0]~7_combout\ $ (((\dp|opB[0]~5_combout\ & ((\dp|opB[0]~0_combout\))) # (!\dp|opB[0]~5_combout\ & (\dp|REG_B|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_B|Q\(0),
	datab => \dp|opB[0]~5_combout\,
	datac => \dp|opA[0]~7_combout\,
	datad => \dp|opB[0]~0_combout\,
	combout => \dp|outalu~62_combout\);

-- Location: LCCOMB_X46_Y46_N26
\dp|outalu[0]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[0]~145_combout\ = (\dp|outalu~62_combout\ & ((\ctrl|Equal31~10_combout\) # ((!\dp|outalu~63_combout\ & \dp|outalu[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu~63_combout\,
	datab => \dp|outalu[0]~10_combout\,
	datac => \ctrl|Equal31~10_combout\,
	datad => \dp|outalu~62_combout\,
	combout => \dp|outalu[0]~145_combout\);

-- Location: LCCOMB_X45_Y46_N30
\dp|outalu[0]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[0]~64_combout\ = (\ctrl|Equal31~8_combout\) # ((\ctrl|Equal31~11_combout\) # ((\ctrl|Equal31~9_combout\ & \dp|opA[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~9_combout\,
	datab => \ctrl|Equal31~8_combout\,
	datac => \dp|opA[0]~7_combout\,
	datad => \ctrl|Equal31~11_combout\,
	combout => \dp|outalu[0]~64_combout\);

-- Location: LCCOMB_X46_Y46_N20
\dp|outalu[0]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[0]~67_combout\ = (\dp|opA[0]~7_combout\ & ((\ctrl|Equal31~7_combout\) # ((\ctrl|Equal31~8_combout\)))) # (!\dp|opA[0]~7_combout\ & (((\ctrl|i~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~7_combout\,
	datab => \dp|opA[0]~7_combout\,
	datac => \ctrl|i~11_combout\,
	datad => \ctrl|Equal31~8_combout\,
	combout => \dp|outalu[0]~67_combout\);

-- Location: LCCOMB_X46_Y46_N16
\dp|outalu[0]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[0]~65_combout\ = (\ctrl|Equal14~6_combout\ & ((\ctrl|Equal31~0_combout\) # ((\dp|Add2~0_combout\ & \ctrl|uins.mb[0]~0_combout\)))) # (!\ctrl|Equal14~6_combout\ & (((\dp|Add2~0_combout\ & \ctrl|uins.mb[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal14~6_combout\,
	datab => \ctrl|Equal31~0_combout\,
	datac => \dp|Add2~0_combout\,
	datad => \ctrl|uins.mb[0]~0_combout\,
	combout => \dp|outalu[0]~65_combout\);

-- Location: LCCOMB_X46_Y46_N2
\dp|outalu[0]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[0]~66_combout\ = (\dp|outalu[0]~65_combout\) # ((\dp|outalu~4_combout\ & \dp|REG_A|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu~4_combout\,
	datab => \dp|REG_A|Q\(0),
	datad => \dp|outalu[0]~65_combout\,
	combout => \dp|outalu[0]~66_combout\);

-- Location: LCCOMB_X46_Y46_N18
\dp|outalu[0]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[0]~68_combout\ = (\dp|outalu[0]~67_combout\) # ((\dp|outalu[0]~66_combout\) # ((\dp|opA[1]~6_combout\ & \dp|outalu~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opA[1]~6_combout\,
	datab => \dp|outalu[0]~67_combout\,
	datac => \dp|outalu~63_combout\,
	datad => \dp|outalu[0]~66_combout\,
	combout => \dp|outalu[0]~68_combout\);

-- Location: LCCOMB_X46_Y46_N12
\dp|outalu[0]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|outalu[0]~146_combout\ = (\dp|outalu[0]~145_combout\) # ((\dp|outalu[0]~68_combout\) # ((\dp|outalu[0]~64_combout\ & \dp|opB[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|outalu[0]~145_combout\,
	datab => \dp|outalu[0]~64_combout\,
	datac => \dp|opB[0]~3_combout\,
	datad => \dp|outalu[0]~68_combout\,
	combout => \dp|outalu[0]~146_combout\);

-- Location: FF_X46_Y46_N13
\dp|REG_alu|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	d => \dp|outalu[0]~146_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|EA.Salu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REG_alu|Q\(0));

-- Location: LCCOMB_X47_Y51_N22
\dp|dtreg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dtreg[0]~0_combout\ = (\ctrl|uins.mreg~combout\ & (\dataIN[0]~input_o\)) # (!\ctrl|uins.mreg~combout\ & ((\dp|REG_alu|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIN[0]~input_o\,
	datac => \dp|REG_alu|Q\(0),
	datad => \ctrl|uins.mreg~combout\,
	combout => \dp|dtreg[0]~0_combout\);

-- Location: FF_X47_Y51_N1
\dp|REGS|r1:15:rx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ck~inputclkctrl_outclk\,
	asdata => \dp|dtreg[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \dp|REGS|Equal0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|REGS|r1:15:rx|Q\(0));

-- Location: LCCOMB_X53_Y49_N24
\dp|REGS|Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux31~7_combout\ = (\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|destB[1]~0_combout\)))) # (!\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|r1:14:rx|Q\(0)))) # (!\dp|REGS|destB[1]~0_combout\ & 
-- (\dp|REGS|r1:12:rx|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:12:rx|Q\(0),
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|r1:14:rx|Q\(0),
	datad => \dp|REGS|destB[1]~0_combout\,
	combout => \dp|REGS|Mux31~7_combout\);

-- Location: LCCOMB_X49_Y51_N12
\dp|REGS|Mux31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux31~8_combout\ = (\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|Mux31~7_combout\ & (\dp|REGS|r1:15:rx|Q\(0))) # (!\dp|REGS|Mux31~7_combout\ & ((\dp|REGS|r1:13:rx|Q\(0)))))) # (!\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|Mux31~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:15:rx|Q\(0),
	datab => \dp|REGS|r1:13:rx|Q\(0),
	datac => \dp|REGS|destB[0]~1_combout\,
	datad => \dp|REGS|Mux31~7_combout\,
	combout => \dp|REGS|Mux31~8_combout\);

-- Location: LCCOMB_X52_Y48_N12
\dp|REGS|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux31~4_combout\ = (\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|r1:1:rx|Q\(0)) # ((\dp|REGS|destB[1]~0_combout\)))) # (!\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|r1:0:rx|Q\(0) & !\dp|REGS|destB[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:1:rx|Q\(0),
	datab => \dp|REGS|r1:0:rx|Q\(0),
	datac => \dp|REGS|destB[0]~1_combout\,
	datad => \dp|REGS|destB[1]~0_combout\,
	combout => \dp|REGS|Mux31~4_combout\);

-- Location: LCCOMB_X52_Y48_N8
\dp|REGS|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux31~5_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|Mux31~4_combout\ & ((\dp|REGS|r1:3:rx|Q\(0)))) # (!\dp|REGS|Mux31~4_combout\ & (\dp|REGS|r1:2:rx|Q\(0))))) # (!\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:2:rx|Q\(0),
	datab => \dp|REGS|destB[1]~0_combout\,
	datac => \dp|REGS|r1:3:rx|Q\(0),
	datad => \dp|REGS|Mux31~4_combout\,
	combout => \dp|REGS|Mux31~5_combout\);

-- Location: LCCOMB_X52_Y50_N0
\dp|REGS|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux31~2_combout\ = (\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|destB[1]~0_combout\)))) # (!\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|destB[1]~0_combout\ & (\dp|REGS|r1:6:rx|Q\(0))) # (!\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|r1:4:rx|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:6:rx|Q\(0),
	datab => \dp|REGS|destB[0]~1_combout\,
	datac => \dp|REGS|r1:4:rx|Q\(0),
	datad => \dp|REGS|destB[1]~0_combout\,
	combout => \dp|REGS|Mux31~2_combout\);

-- Location: LCCOMB_X52_Y48_N20
\dp|REGS|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux31~3_combout\ = (\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|Mux31~2_combout\ & (\dp|REGS|r1:7:rx|Q\(0))) # (!\dp|REGS|Mux31~2_combout\ & ((\dp|REGS|r1:5:rx|Q\(0)))))) # (!\dp|REGS|destB[0]~1_combout\ & (((\dp|REGS|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:7:rx|Q\(0),
	datab => \dp|REGS|r1:5:rx|Q\(0),
	datac => \dp|REGS|destB[0]~1_combout\,
	datad => \dp|REGS|Mux31~2_combout\,
	combout => \dp|REGS|Mux31~3_combout\);

-- Location: LCCOMB_X52_Y48_N10
\dp|REGS|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux31~6_combout\ = (\dp|REGS|destB[2]~3_combout\ & ((\dp|REGS|destB[3]~2_combout\) # ((\dp|REGS|Mux31~3_combout\)))) # (!\dp|REGS|destB[2]~3_combout\ & (!\dp|REGS|destB[3]~2_combout\ & (\dp|REGS|Mux31~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|destB[2]~3_combout\,
	datab => \dp|REGS|destB[3]~2_combout\,
	datac => \dp|REGS|Mux31~5_combout\,
	datad => \dp|REGS|Mux31~3_combout\,
	combout => \dp|REGS|Mux31~6_combout\);

-- Location: LCCOMB_X54_Y49_N12
\dp|REGS|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux31~0_combout\ = (\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|destB[0]~1_combout\)))) # (!\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|destB[0]~1_combout\ & (\dp|REGS|r1:9:rx|Q\(0))) # (!\dp|REGS|destB[0]~1_combout\ & ((\dp|REGS|r1:8:rx|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:9:rx|Q\(0),
	datab => \dp|REGS|destB[1]~0_combout\,
	datac => \dp|REGS|r1:8:rx|Q\(0),
	datad => \dp|REGS|destB[0]~1_combout\,
	combout => \dp|REGS|Mux31~0_combout\);

-- Location: LCCOMB_X54_Y51_N0
\dp|REGS|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux31~1_combout\ = (\dp|REGS|destB[1]~0_combout\ & ((\dp|REGS|Mux31~0_combout\ & (\dp|REGS|r1:11:rx|Q\(0))) # (!\dp|REGS|Mux31~0_combout\ & ((\dp|REGS|r1:10:rx|Q\(0)))))) # (!\dp|REGS|destB[1]~0_combout\ & (((\dp|REGS|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|r1:11:rx|Q\(0),
	datab => \dp|REGS|destB[1]~0_combout\,
	datac => \dp|REGS|r1:10:rx|Q\(0),
	datad => \dp|REGS|Mux31~0_combout\,
	combout => \dp|REGS|Mux31~1_combout\);

-- Location: LCCOMB_X49_Y51_N2
\dp|REGS|Mux31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|REGS|Mux31~9_combout\ = (\dp|REGS|destB[3]~2_combout\ & ((\dp|REGS|Mux31~6_combout\ & (\dp|REGS|Mux31~8_combout\)) # (!\dp|REGS|Mux31~6_combout\ & ((\dp|REGS|Mux31~1_combout\))))) # (!\dp|REGS|destB[3]~2_combout\ & (((\dp|REGS|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux31~8_combout\,
	datab => \dp|REGS|destB[3]~2_combout\,
	datac => \dp|REGS|Mux31~6_combout\,
	datad => \dp|REGS|Mux31~1_combout\,
	combout => \dp|REGS|Mux31~9_combout\);

-- Location: LCCOMB_X48_Y51_N12
\dp|dataOUT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dataOUT[0]~0_combout\ = (\ctrl|Equal31~3_combout\ & (\dp|REGS|Mux31~9_combout\)) # (!\ctrl|Equal31~3_combout\ & ((\dp|opB[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux31~9_combout\,
	datac => \dp|opB[0]~3_combout\,
	datad => \ctrl|Equal31~3_combout\,
	combout => \dp|dataOUT[0]~0_combout\);

-- Location: LCCOMB_X56_Y49_N24
\dp|dataOUT[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dataOUT[1]~1_combout\ = (\ctrl|Equal31~3_combout\ & ((\dp|REGS|Mux30~9_combout\))) # (!\ctrl|Equal31~3_combout\ & (\dp|opB[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[1]~6_combout\,
	datab => \dp|REGS|Mux30~9_combout\,
	datad => \ctrl|Equal31~3_combout\,
	combout => \dp|dataOUT[1]~1_combout\);

-- Location: LCCOMB_X47_Y49_N26
\dp|dataOUT[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dataOUT[2]~2_combout\ = (\ctrl|Equal31~3_combout\ & (\dp|REGS|Mux29~9_combout\)) # (!\ctrl|Equal31~3_combout\ & ((\dp|opB[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux29~9_combout\,
	datab => \dp|opB[2]~8_combout\,
	datad => \ctrl|Equal31~3_combout\,
	combout => \dp|dataOUT[2]~2_combout\);

-- Location: LCCOMB_X49_Y48_N28
\dp|dataOUT[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dataOUT[3]~3_combout\ = (\ctrl|Equal31~3_combout\ & (\dp|REGS|Mux28~9_combout\)) # (!\ctrl|Equal31~3_combout\ & ((\dp|opB[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~3_combout\,
	datac => \dp|REGS|Mux28~9_combout\,
	datad => \dp|opB[3]~10_combout\,
	combout => \dp|dataOUT[3]~3_combout\);

-- Location: LCCOMB_X48_Y50_N16
\dp|dataOUT[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dataOUT[4]~4_combout\ = (\ctrl|Equal31~3_combout\ & ((\dp|REGS|Mux27~9_combout\))) # (!\ctrl|Equal31~3_combout\ & (\dp|opB[4]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[4]~12_combout\,
	datab => \ctrl|Equal31~3_combout\,
	datad => \dp|REGS|Mux27~9_combout\,
	combout => \dp|dataOUT[4]~4_combout\);

-- Location: LCCOMB_X56_Y49_N4
\dp|dataOUT[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dataOUT[5]~5_combout\ = (\ctrl|Equal31~3_combout\ & ((\dp|REGS|Mux26~9_combout\))) # (!\ctrl|Equal31~3_combout\ & (\dp|opB[5]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|opB[5]~14_combout\,
	datac => \dp|REGS|Mux26~9_combout\,
	datad => \ctrl|Equal31~3_combout\,
	combout => \dp|dataOUT[5]~5_combout\);

-- Location: LCCOMB_X48_Y50_N26
\dp|dataOUT[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dataOUT[6]~6_combout\ = (\ctrl|Equal31~3_combout\ & ((\dp|REGS|Mux25~9_combout\))) # (!\ctrl|Equal31~3_combout\ & (\dp|opB[6]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|opB[6]~16_combout\,
	datac => \dp|REGS|Mux25~9_combout\,
	datad => \ctrl|Equal31~3_combout\,
	combout => \dp|dataOUT[6]~6_combout\);

-- Location: LCCOMB_X48_Y50_N24
\dp|dataOUT[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dataOUT[7]~7_combout\ = (\ctrl|Equal31~3_combout\ & (\dp|REGS|Mux24~9_combout\)) # (!\ctrl|Equal31~3_combout\ & ((\dp|opB[7]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|Equal31~3_combout\,
	datac => \dp|REGS|Mux24~9_combout\,
	datad => \dp|opB[7]~18_combout\,
	combout => \dp|dataOUT[7]~7_combout\);

-- Location: LCCOMB_X48_Y52_N10
\dp|dataOUT[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dataOUT[8]~8_combout\ = (\ctrl|Equal31~3_combout\ & (\dp|REGS|Mux23~9_combout\)) # (!\ctrl|Equal31~3_combout\ & ((\dp|opB[8]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|REGS|Mux23~9_combout\,
	datac => \dp|opB[8]~20_combout\,
	datad => \ctrl|Equal31~3_combout\,
	combout => \dp|dataOUT[8]~8_combout\);

-- Location: LCCOMB_X48_Y52_N12
\dp|dataOUT[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dataOUT[9]~9_combout\ = (\ctrl|Equal31~3_combout\ & ((\dp|REGS|Mux22~9_combout\))) # (!\ctrl|Equal31~3_combout\ & (\dp|opB[9]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|opB[9]~22_combout\,
	datac => \dp|REGS|Mux22~9_combout\,
	datad => \ctrl|Equal31~3_combout\,
	combout => \dp|dataOUT[9]~9_combout\);

-- Location: LCCOMB_X48_Y51_N24
\dp|dataOUT[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dataOUT[10]~10_combout\ = (\ctrl|Equal31~3_combout\ & (\dp|REGS|Mux21~9_combout\)) # (!\ctrl|Equal31~3_combout\ & ((\dp|opB[10]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~3_combout\,
	datac => \dp|REGS|Mux21~9_combout\,
	datad => \dp|opB[10]~24_combout\,
	combout => \dp|dataOUT[10]~10_combout\);

-- Location: LCCOMB_X50_Y52_N14
\dp|dataOUT[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dataOUT[11]~11_combout\ = (\ctrl|Equal31~3_combout\ & (\dp|REGS|Mux20~9_combout\)) # (!\ctrl|Equal31~3_combout\ & ((\dp|opB[11]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux20~9_combout\,
	datac => \ctrl|Equal31~3_combout\,
	datad => \dp|opB[11]~26_combout\,
	combout => \dp|dataOUT[11]~11_combout\);

-- Location: LCCOMB_X48_Y51_N26
\dp|dataOUT[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dataOUT[12]~12_combout\ = (\ctrl|Equal31~3_combout\ & (\dp|REGS|Mux19~9_combout\)) # (!\ctrl|Equal31~3_combout\ & ((\dp|opB[12]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|Equal31~3_combout\,
	datab => \dp|REGS|Mux19~9_combout\,
	datad => \dp|opB[12]~28_combout\,
	combout => \dp|dataOUT[12]~12_combout\);

-- Location: LCCOMB_X47_Y49_N14
\dp|dataOUT[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dataOUT[13]~13_combout\ = (\ctrl|Equal31~3_combout\ & (\dp|REGS|Mux18~9_combout\)) # (!\ctrl|Equal31~3_combout\ & ((\dp|opB[13]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|REGS|Mux18~9_combout\,
	datac => \dp|opB[13]~30_combout\,
	datad => \ctrl|Equal31~3_combout\,
	combout => \dp|dataOUT[13]~13_combout\);

-- Location: LCCOMB_X49_Y51_N14
\dp|dataOUT[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dataOUT[14]~14_combout\ = (\ctrl|Equal31~3_combout\ & (\dp|REGS|Mux17~9_combout\)) # (!\ctrl|Equal31~3_combout\ & ((\dp|opB[14]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REGS|Mux17~9_combout\,
	datab => \ctrl|Equal31~3_combout\,
	datad => \dp|opB[14]~32_combout\,
	combout => \dp|dataOUT[14]~14_combout\);

-- Location: LCCOMB_X50_Y52_N18
\dp|dataOUT[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|dataOUT[15]~15_combout\ = (\ctrl|Equal31~3_combout\ & ((\dp|REGS|Mux16~9_combout\))) # (!\ctrl|Equal31~3_combout\ & (\dp|opB[15]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|opB[15]~34_combout\,
	datac => \ctrl|Equal31~3_combout\,
	datad => \dp|REGS|Mux16~9_combout\,
	combout => \dp|dataOUT[15]~15_combout\);

-- Location: LCCOMB_X47_Y51_N14
\dp|address[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[0]~32_combout\ = (\ctrl|uins.mad[1]~0_combout\ & ((\ctrl|EA.Sfetch~q\ & (\dp|RPC|Q\(0))) # (!\ctrl|EA.Sfetch~q\ & ((\dp|REG_alu|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RPC|Q\(0),
	datab => \dp|REG_alu|Q\(0),
	datac => \ctrl|uins.mad[1]~0_combout\,
	datad => \ctrl|EA.Sfetch~q\,
	combout => \dp|address[0]~32_combout\);

-- Location: LCCOMB_X43_Y51_N4
\dp|address[0]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[0]~48_combout\ = (\dp|address[0]~32_combout\) # ((\dp|RSP|Q\(0) & ((\ctrl|EA.Ssbrt~q\) # (\ctrl|EA.Spush~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RSP|Q\(0),
	datab => \ctrl|EA.Ssbrt~q\,
	datac => \dp|address[0]~32_combout\,
	datad => \ctrl|EA.Spush~q\,
	combout => \dp|address[0]~48_combout\);

-- Location: LCCOMB_X47_Y51_N24
\dp|address[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[1]~33_combout\ = (\ctrl|uins.mad[1]~0_combout\ & ((\ctrl|EA.Sfetch~q\ & (\dp|RPC|Q\(1))) # (!\ctrl|EA.Sfetch~q\ & ((\dp|REG_alu|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RPC|Q\(1),
	datab => \ctrl|uins.mad[1]~0_combout\,
	datac => \dp|REG_alu|Q\(1),
	datad => \ctrl|EA.Sfetch~q\,
	combout => \dp|address[1]~33_combout\);

-- Location: LCCOMB_X46_Y52_N0
\dp|address[1]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[1]~49_combout\ = (\dp|address[1]~33_combout\) # ((\dp|RSP|Q\(1) & ((\ctrl|EA.Ssbrt~q\) # (\ctrl|EA.Spush~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RSP|Q\(1),
	datab => \ctrl|EA.Ssbrt~q\,
	datac => \ctrl|EA.Spush~q\,
	datad => \dp|address[1]~33_combout\,
	combout => \dp|address[1]~49_combout\);

-- Location: LCCOMB_X46_Y50_N6
\dp|address[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[2]~34_combout\ = (\ctrl|uins.mad[1]~0_combout\ & ((\ctrl|EA.Sfetch~q\ & ((\dp|RPC|Q\(2)))) # (!\ctrl|EA.Sfetch~q\ & (\dp|REG_alu|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Sfetch~q\,
	datab => \dp|REG_alu|Q\(2),
	datac => \dp|RPC|Q\(2),
	datad => \ctrl|uins.mad[1]~0_combout\,
	combout => \dp|address[2]~34_combout\);

-- Location: LCCOMB_X46_Y50_N2
\dp|address[2]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[2]~50_combout\ = (\dp|address[2]~34_combout\) # ((\dp|RSP|Q\(2) & ((\ctrl|EA.Spush~q\) # (\ctrl|EA.Ssbrt~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|address[2]~34_combout\,
	datab => \dp|RSP|Q\(2),
	datac => \ctrl|EA.Spush~q\,
	datad => \ctrl|EA.Ssbrt~q\,
	combout => \dp|address[2]~50_combout\);

-- Location: LCCOMB_X46_Y50_N28
\dp|address[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[3]~35_combout\ = (\ctrl|uins.mad[1]~0_combout\ & ((\ctrl|EA.Sfetch~q\ & (\dp|RPC|Q\(3))) # (!\ctrl|EA.Sfetch~q\ & ((\dp|REG_alu|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Sfetch~q\,
	datab => \ctrl|uins.mad[1]~0_combout\,
	datac => \dp|RPC|Q\(3),
	datad => \dp|REG_alu|Q\(3),
	combout => \dp|address[3]~35_combout\);

-- Location: LCCOMB_X46_Y50_N20
\dp|address[3]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[3]~51_combout\ = (\dp|address[3]~35_combout\) # ((\dp|RSP|Q\(3) & ((\ctrl|EA.Spush~q\) # (\ctrl|EA.Ssbrt~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|address[3]~35_combout\,
	datab => \dp|RSP|Q\(3),
	datac => \ctrl|EA.Spush~q\,
	datad => \ctrl|EA.Ssbrt~q\,
	combout => \dp|address[3]~51_combout\);

-- Location: LCCOMB_X45_Y51_N28
\dp|address[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[4]~36_combout\ = (\ctrl|uins.mad[1]~0_combout\ & ((\ctrl|EA.Sfetch~q\ & ((\dp|RPC|Q\(4)))) # (!\ctrl|EA.Sfetch~q\ & (\dp|REG_alu|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|uins.mad[1]~0_combout\,
	datab => \dp|REG_alu|Q\(4),
	datac => \dp|RPC|Q\(4),
	datad => \ctrl|EA.Sfetch~q\,
	combout => \dp|address[4]~36_combout\);

-- Location: LCCOMB_X45_Y51_N8
\dp|address[4]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[4]~52_combout\ = (\dp|address[4]~36_combout\) # ((\dp|RSP|Q\(4) & ((\ctrl|EA.Spush~q\) # (\ctrl|EA.Ssbrt~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Spush~q\,
	datab => \dp|address[4]~36_combout\,
	datac => \ctrl|EA.Ssbrt~q\,
	datad => \dp|RSP|Q\(4),
	combout => \dp|address[4]~52_combout\);

-- Location: LCCOMB_X47_Y51_N2
\dp|address[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[5]~37_combout\ = (\ctrl|uins.mad[1]~0_combout\ & ((\ctrl|EA.Sfetch~q\ & (\dp|RPC|Q\(5))) # (!\ctrl|EA.Sfetch~q\ & ((\dp|REG_alu|Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RPC|Q\(5),
	datab => \dp|REG_alu|Q\(5),
	datac => \ctrl|uins.mad[1]~0_combout\,
	datad => \ctrl|EA.Sfetch~q\,
	combout => \dp|address[5]~37_combout\);

-- Location: LCCOMB_X47_Y51_N10
\dp|address[5]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[5]~53_combout\ = (\dp|address[5]~37_combout\) # ((\dp|RSP|Q\(5) & ((\ctrl|EA.Ssbrt~q\) # (\ctrl|EA.Spush~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RSP|Q\(5),
	datab => \dp|address[5]~37_combout\,
	datac => \ctrl|EA.Ssbrt~q\,
	datad => \ctrl|EA.Spush~q\,
	combout => \dp|address[5]~53_combout\);

-- Location: LCCOMB_X46_Y50_N26
\dp|address[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[6]~38_combout\ = (\ctrl|uins.mad[1]~0_combout\ & ((\ctrl|EA.Sfetch~q\ & ((\dp|RPC|Q\(6)))) # (!\ctrl|EA.Sfetch~q\ & (\dp|REG_alu|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Sfetch~q\,
	datab => \ctrl|uins.mad[1]~0_combout\,
	datac => \dp|REG_alu|Q\(6),
	datad => \dp|RPC|Q\(6),
	combout => \dp|address[6]~38_combout\);

-- Location: LCCOMB_X46_Y50_N10
\dp|address[6]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[6]~54_combout\ = (\dp|address[6]~38_combout\) # ((\dp|RSP|Q\(6) & ((\ctrl|EA.Spush~q\) # (\ctrl|EA.Ssbrt~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RSP|Q\(6),
	datab => \ctrl|EA.Spush~q\,
	datac => \dp|address[6]~38_combout\,
	datad => \ctrl|EA.Ssbrt~q\,
	combout => \dp|address[6]~54_combout\);

-- Location: LCCOMB_X46_Y50_N16
\dp|address[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[7]~39_combout\ = (\ctrl|uins.mad[1]~0_combout\ & ((\ctrl|EA.Sfetch~q\ & (\dp|RPC|Q\(7))) # (!\ctrl|EA.Sfetch~q\ & ((\dp|REG_alu|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Sfetch~q\,
	datab => \ctrl|uins.mad[1]~0_combout\,
	datac => \dp|RPC|Q\(7),
	datad => \dp|REG_alu|Q\(7),
	combout => \dp|address[7]~39_combout\);

-- Location: LCCOMB_X46_Y50_N4
\dp|address[7]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[7]~55_combout\ = (\dp|address[7]~39_combout\) # ((\dp|RSP|Q\(7) & ((\ctrl|EA.Ssbrt~q\) # (\ctrl|EA.Spush~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|address[7]~39_combout\,
	datab => \ctrl|EA.Ssbrt~q\,
	datac => \ctrl|EA.Spush~q\,
	datad => \dp|RSP|Q\(7),
	combout => \dp|address[7]~55_combout\);

-- Location: LCCOMB_X45_Y51_N14
\dp|address[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[8]~40_combout\ = (\ctrl|uins.mad[1]~0_combout\ & ((\ctrl|EA.Sfetch~q\ & (\dp|RPC|Q\(8))) # (!\ctrl|EA.Sfetch~q\ & ((\dp|REG_alu|Q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RPC|Q\(8),
	datab => \dp|REG_alu|Q\(8),
	datac => \ctrl|uins.mad[1]~0_combout\,
	datad => \ctrl|EA.Sfetch~q\,
	combout => \dp|address[8]~40_combout\);

-- Location: LCCOMB_X43_Y51_N18
\dp|address[8]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[8]~56_combout\ = (\dp|address[8]~40_combout\) # ((\dp|RSP|Q\(8) & ((\ctrl|EA.Spush~q\) # (\ctrl|EA.Ssbrt~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Spush~q\,
	datab => \ctrl|EA.Ssbrt~q\,
	datac => \dp|RSP|Q\(8),
	datad => \dp|address[8]~40_combout\,
	combout => \dp|address[8]~56_combout\);

-- Location: LCCOMB_X45_Y51_N24
\dp|address[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[9]~41_combout\ = (\ctrl|uins.mad[1]~0_combout\ & ((\ctrl|EA.Sfetch~q\ & ((\dp|RPC|Q\(9)))) # (!\ctrl|EA.Sfetch~q\ & (\dp|REG_alu|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Sfetch~q\,
	datab => \dp|REG_alu|Q\(9),
	datac => \ctrl|uins.mad[1]~0_combout\,
	datad => \dp|RPC|Q\(9),
	combout => \dp|address[9]~41_combout\);

-- Location: LCCOMB_X45_Y51_N10
\dp|address[9]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[9]~57_combout\ = (\dp|address[9]~41_combout\) # ((\dp|RSP|Q\(9) & ((\ctrl|EA.Spush~q\) # (\ctrl|EA.Ssbrt~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Spush~q\,
	datab => \ctrl|EA.Ssbrt~q\,
	datac => \dp|RSP|Q\(9),
	datad => \dp|address[9]~41_combout\,
	combout => \dp|address[9]~57_combout\);

-- Location: LCCOMB_X48_Y51_N16
\dp|address[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[10]~42_combout\ = (\ctrl|uins.mad[1]~0_combout\ & ((\ctrl|EA.Sfetch~q\ & ((\dp|RPC|Q\(10)))) # (!\ctrl|EA.Sfetch~q\ & (\dp|REG_alu|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|uins.mad[1]~0_combout\,
	datab => \dp|REG_alu|Q\(10),
	datac => \dp|RPC|Q\(10),
	datad => \ctrl|EA.Sfetch~q\,
	combout => \dp|address[10]~42_combout\);

-- Location: LCCOMB_X48_Y51_N28
\dp|address[10]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[10]~58_combout\ = (\dp|address[10]~42_combout\) # ((\dp|RSP|Q\(10) & ((\ctrl|EA.Ssbrt~q\) # (\ctrl|EA.Spush~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Ssbrt~q\,
	datab => \dp|address[10]~42_combout\,
	datac => \dp|RSP|Q\(10),
	datad => \ctrl|EA.Spush~q\,
	combout => \dp|address[10]~58_combout\);

-- Location: LCCOMB_X46_Y50_N14
\dp|address[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[11]~43_combout\ = (\ctrl|uins.mad[1]~0_combout\ & ((\ctrl|EA.Sfetch~q\ & ((\dp|RPC|Q\(11)))) # (!\ctrl|EA.Sfetch~q\ & (\dp|REG_alu|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_alu|Q\(11),
	datab => \dp|RPC|Q\(11),
	datac => \ctrl|uins.mad[1]~0_combout\,
	datad => \ctrl|EA.Sfetch~q\,
	combout => \dp|address[11]~43_combout\);

-- Location: LCCOMB_X46_Y50_N22
\dp|address[11]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[11]~59_combout\ = (\dp|address[11]~43_combout\) # ((\dp|RSP|Q\(11) & ((\ctrl|EA.Spush~q\) # (\ctrl|EA.Ssbrt~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Spush~q\,
	datab => \dp|RSP|Q\(11),
	datac => \dp|address[11]~43_combout\,
	datad => \ctrl|EA.Ssbrt~q\,
	combout => \dp|address[11]~59_combout\);

-- Location: LCCOMB_X47_Y51_N28
\dp|address[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[12]~44_combout\ = (\ctrl|uins.mad[1]~0_combout\ & ((\ctrl|EA.Sfetch~q\ & ((\dp|RPC|Q\(12)))) # (!\ctrl|EA.Sfetch~q\ & (\dp|REG_alu|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_alu|Q\(12),
	datab => \dp|RPC|Q\(12),
	datac => \ctrl|uins.mad[1]~0_combout\,
	datad => \ctrl|EA.Sfetch~q\,
	combout => \dp|address[12]~44_combout\);

-- Location: LCCOMB_X48_Y51_N22
\dp|address[12]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[12]~60_combout\ = (\dp|address[12]~44_combout\) # ((\dp|RSP|Q\(12) & ((\ctrl|EA.Spush~q\) # (\ctrl|EA.Ssbrt~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Spush~q\,
	datab => \dp|address[12]~44_combout\,
	datac => \dp|RSP|Q\(12),
	datad => \ctrl|EA.Ssbrt~q\,
	combout => \dp|address[12]~60_combout\);

-- Location: LCCOMB_X45_Y51_N18
\dp|address[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[13]~45_combout\ = (\ctrl|uins.mad[1]~0_combout\ & ((\ctrl|EA.Sfetch~q\ & ((\dp|RPC|Q\(13)))) # (!\ctrl|EA.Sfetch~q\ & (\dp|REG_alu|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_alu|Q\(13),
	datab => \dp|RPC|Q\(13),
	datac => \ctrl|uins.mad[1]~0_combout\,
	datad => \ctrl|EA.Sfetch~q\,
	combout => \dp|address[13]~45_combout\);

-- Location: LCCOMB_X46_Y52_N6
\dp|address[13]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[13]~61_combout\ = (\dp|address[13]~45_combout\) # ((\dp|RSP|Q\(13) & ((\ctrl|EA.Ssbrt~q\) # (\ctrl|EA.Spush~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RSP|Q\(13),
	datab => \ctrl|EA.Ssbrt~q\,
	datac => \ctrl|EA.Spush~q\,
	datad => \dp|address[13]~45_combout\,
	combout => \dp|address[13]~61_combout\);

-- Location: LCCOMB_X48_Y51_N30
\dp|address[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[14]~46_combout\ = (\ctrl|uins.mad[1]~0_combout\ & ((\ctrl|EA.Sfetch~q\ & ((\dp|RPC|Q\(14)))) # (!\ctrl|EA.Sfetch~q\ & (\dp|REG_alu|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|REG_alu|Q\(14),
	datab => \dp|RPC|Q\(14),
	datac => \ctrl|uins.mad[1]~0_combout\,
	datad => \ctrl|EA.Sfetch~q\,
	combout => \dp|address[14]~46_combout\);

-- Location: LCCOMB_X48_Y51_N0
\dp|address[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[14]~62_combout\ = (\dp|address[14]~46_combout\) # ((\dp|RSP|Q\(14) & ((\ctrl|EA.Spush~q\) # (\ctrl|EA.Ssbrt~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Spush~q\,
	datab => \ctrl|EA.Ssbrt~q\,
	datac => \dp|address[14]~46_combout\,
	datad => \dp|RSP|Q\(14),
	combout => \dp|address[14]~62_combout\);

-- Location: LCCOMB_X45_Y51_N0
\dp|address[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[15]~47_combout\ = (\ctrl|uins.mad[1]~0_combout\ & ((\ctrl|EA.Sfetch~q\ & (\dp|RPC|Q\(15))) # (!\ctrl|EA.Sfetch~q\ & ((\dp|REG_alu|Q\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RPC|Q\(15),
	datab => \dp|REG_alu|Q\(15),
	datac => \ctrl|uins.mad[1]~0_combout\,
	datad => \ctrl|EA.Sfetch~q\,
	combout => \dp|address[15]~47_combout\);

-- Location: LCCOMB_X46_Y52_N24
\dp|address[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|address[15]~63_combout\ = (\dp|address[15]~47_combout\) # ((\dp|RSP|Q\(15) & ((\ctrl|EA.Ssbrt~q\) # (\ctrl|EA.Spush~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|address[15]~47_combout\,
	datab => \ctrl|EA.Ssbrt~q\,
	datac => \ctrl|EA.Spush~q\,
	datad => \dp|RSP|Q\(15),
	combout => \dp|address[15]~63_combout\);

-- Location: LCCOMB_X49_Y50_N4
\ctrl|uins.rw\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|uins.rw~combout\ = (\ctrl|EA.Srts~q\) # ((\ctrl|EA.Spop~q\) # ((\ctrl|EA.Sfetch~q\) # (\ctrl|EA.Sld~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|EA.Srts~q\,
	datab => \ctrl|EA.Spop~q\,
	datac => \ctrl|EA.Sfetch~q\,
	datad => \ctrl|EA.Sld~q\,
	combout => \ctrl|uins.rw~combout\);

-- Location: LCCOMB_X49_Y50_N6
\ctrl|uins.ce~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|uins.ce~0_combout\ = (!\rst~input_o\ & ((\ctrl|EA.Sst~q\) # ((\ctrl|uins.rw~combout\) # (!\ctrl|uins.mad[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \ctrl|EA.Sst~q\,
	datac => \ctrl|uins.rw~combout\,
	datad => \ctrl|uins.mad[1]~0_combout\,
	combout => \ctrl|uins.ce~0_combout\);

ww_dataOUT(0) <= \dataOUT[0]~output_o\;

ww_dataOUT(1) <= \dataOUT[1]~output_o\;

ww_dataOUT(2) <= \dataOUT[2]~output_o\;

ww_dataOUT(3) <= \dataOUT[3]~output_o\;

ww_dataOUT(4) <= \dataOUT[4]~output_o\;

ww_dataOUT(5) <= \dataOUT[5]~output_o\;

ww_dataOUT(6) <= \dataOUT[6]~output_o\;

ww_dataOUT(7) <= \dataOUT[7]~output_o\;

ww_dataOUT(8) <= \dataOUT[8]~output_o\;

ww_dataOUT(9) <= \dataOUT[9]~output_o\;

ww_dataOUT(10) <= \dataOUT[10]~output_o\;

ww_dataOUT(11) <= \dataOUT[11]~output_o\;

ww_dataOUT(12) <= \dataOUT[12]~output_o\;

ww_dataOUT(13) <= \dataOUT[13]~output_o\;

ww_dataOUT(14) <= \dataOUT[14]~output_o\;

ww_dataOUT(15) <= \dataOUT[15]~output_o\;

ww_address(0) <= \address[0]~output_o\;

ww_address(1) <= \address[1]~output_o\;

ww_address(2) <= \address[2]~output_o\;

ww_address(3) <= \address[3]~output_o\;

ww_address(4) <= \address[4]~output_o\;

ww_address(5) <= \address[5]~output_o\;

ww_address(6) <= \address[6]~output_o\;

ww_address(7) <= \address[7]~output_o\;

ww_address(8) <= \address[8]~output_o\;

ww_address(9) <= \address[9]~output_o\;

ww_address(10) <= \address[10]~output_o\;

ww_address(11) <= \address[11]~output_o\;

ww_address(12) <= \address[12]~output_o\;

ww_address(13) <= \address[13]~output_o\;

ww_address(14) <= \address[14]~output_o\;

ww_address(15) <= \address[15]~output_o\;

ww_ce <= \ce~output_o\;

ww_rw <= \rw~output_o\;
END structure;


