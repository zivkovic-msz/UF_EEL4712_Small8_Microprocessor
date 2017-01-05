-- Copyright (C) 1991-2010 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

-- DATE "04/13/2015 11:23:23"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	input_switch_sel : IN std_logic;
	input_switches : IN std_logic_vector(7 DOWNTO 0);
	led0 : OUT std_logic_vector(6 DOWNTO 0);
	led1 : OUT std_logic_vector(6 DOWNTO 0);
	led2 : OUT std_logic_vector(6 DOWNTO 0);
	led3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- led0[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_switches[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_switch_sel	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_switches[1]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_switches[2]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_switches[3]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_switches[4]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_switches[5]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_switches[6]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_switches[7]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_input_switch_sel : std_logic;
SIGNAL ww_input_switches : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \U_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[0]~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[1]~2_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[3]~6_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[5]~10_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[9]~18_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[10]~20_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[11]~22_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[12]~24_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[13]~26_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[5]~8_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[6]~10_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[8]~14_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add2~10_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add2~12_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add0~2_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add0~4_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add0~6_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add1~8_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add1~10_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add5~2_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add5~4_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add5~8_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add5~10_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add4~8_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add4~10_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[13]~24_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[14]~26_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~4_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~6_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~23\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~24_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~25\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~26_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~27\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~28_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~29\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~30_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~31\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~8_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~12_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~14_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~16_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~21\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~22_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~23\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~24_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~25\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~26_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~27\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~28_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~29\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~30_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~31\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~49_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~46_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector6~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector4~4_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector4~5_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector4~6_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.PC_ADD_TWO_2~q\ : std_logic;
SIGNAL \U_CPU|U_controller|PC_ADD_sel[1]~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux4~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux4~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux5~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux5~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[0]~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~2_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector6~2_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~3_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~3_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.ANDR_D~q\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux0~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux0~2_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux0~3_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux2~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux2~3_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux2~6_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux2~7_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux2~8_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|output_sig~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux2~9_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux2~10_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|output_sig~3_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux3~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux3~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux3~2_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux3~3_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux3~4_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|output_sig~4_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux3~5_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux3~6_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|output_sig~5_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr23~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr23~combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.BEQA_3~q\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[5]~10_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[5]~2_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[5]~11_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[5]~12_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~34_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[4]~13_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[3]~4_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~37_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~20_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[1]~25_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[7]~7_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~48_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_LD_MUX|Mux1~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_LD_MUX|Mux8~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_LD_MUX|Mux13~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~32_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~33_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~34_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~35_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~36_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~42_combout\ : std_logic;
SIGNAL \U_DECODER_SMALL8|ram_write_en~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal8~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal8~1_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.ANDR_D~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal5~1_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~4_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.SLRL~q\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~5_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.INCA~q\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal15~1_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal32~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~11_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~13_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~14_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~15_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~16_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~17_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~18_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~19_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~20_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.BCSA~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.BMIA~q\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector1~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.SLRL~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.INCA~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.BCSA~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.BMIA~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector4~13_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[0]~16_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[6]~17_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[5]~18_combout\ : std_logic;
SIGNAL \U_RAM_OUTPUT|output[1]~33_combout\ : std_logic;
SIGNAL \U_RAM_OUTPUT|output[2]~34_combout\ : std_logic;
SIGNAL \U_RAM_OUTPUT|output[3]~35_combout\ : std_logic;
SIGNAL \U_RAM_OUTPUT|output[5]~37_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.BEQA_3~feeder_combout\ : std_logic;
SIGNAL \U_REG_INPORT0|output[2]~feeder_combout\ : std_logic;
SIGNAL \U_REG_INPORT0|output[3]~feeder_combout\ : std_logic;
SIGNAL \U_REG_INPORT0|output[4]~feeder_combout\ : std_logic;
SIGNAL \led0[0]~output_o\ : std_logic;
SIGNAL \led0[1]~output_o\ : std_logic;
SIGNAL \led0[2]~output_o\ : std_logic;
SIGNAL \led0[3]~output_o\ : std_logic;
SIGNAL \led0[4]~output_o\ : std_logic;
SIGNAL \led0[5]~output_o\ : std_logic;
SIGNAL \led0[6]~output_o\ : std_logic;
SIGNAL \led1[0]~output_o\ : std_logic;
SIGNAL \led1[1]~output_o\ : std_logic;
SIGNAL \led1[2]~output_o\ : std_logic;
SIGNAL \led1[3]~output_o\ : std_logic;
SIGNAL \led1[4]~output_o\ : std_logic;
SIGNAL \led1[5]~output_o\ : std_logic;
SIGNAL \led1[6]~output_o\ : std_logic;
SIGNAL \led2[0]~output_o\ : std_logic;
SIGNAL \led2[1]~output_o\ : std_logic;
SIGNAL \led2[2]~output_o\ : std_logic;
SIGNAL \led2[3]~output_o\ : std_logic;
SIGNAL \led2[4]~output_o\ : std_logic;
SIGNAL \led2[5]~output_o\ : std_logic;
SIGNAL \led2[6]~output_o\ : std_logic;
SIGNAL \led3[0]~output_o\ : std_logic;
SIGNAL \led3[1]~output_o\ : std_logic;
SIGNAL \led3[2]~output_o\ : std_logic;
SIGNAL \led3[3]~output_o\ : std_logic;
SIGNAL \led3[4]~output_o\ : std_logic;
SIGNAL \led3[5]~output_o\ : std_logic;
SIGNAL \led3[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \U_CPU|U_controller|state.Call_5~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.Call_6~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.Call_7~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.Call_8~q\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr11~4_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.Call_9~q\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr31~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr33~combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~3_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal3~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.OPCODE_FETCH_4~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.DECODE~q\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.STAA~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.STAA~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.STAA_2~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.STAA_3~feeder_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.STAA_3~q\ : std_logic;
SIGNAL \U_RAM_OUTPUT|output[4]~36_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~45_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|ADDRL_en~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal0~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal24~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.LDXI~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.LDXI~q\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal34~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.DECX~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.DECX~q\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr35~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~47_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.INCX~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.INCX~q\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr35~combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~2\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~5\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~7\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~8_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~46_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~9\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~10_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~45_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~11\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~13\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~14_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~43_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~12_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~44_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal31~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.LDAA_X~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.LDAA_X~q\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[0]~1\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[1]~3\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[2]~5\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[3]~7\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[4]~9\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[5]~11\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[6]~12_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr15~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr13~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.LDAA_X_2~q\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr13~combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal2~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal4~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal5~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.XORR_D~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.XORR_D~q\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal9~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.ORR_D~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.ORR_D~q\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr25~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal6~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.CMPR_D~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.CMPR_D~q\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal23~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.DECA~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.DECA~q\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr26~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~3_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~4_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_D|output[4]~feeder_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.STAR_D~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.STAR_D~q\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_D|output[3]~feeder_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_D|output[0]~feeder_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|LessThan0~1_cout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|LessThan0~3_cout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|LessThan0~5_cout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|LessThan0~7_cout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|LessThan0~9_cout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|LessThan0~11_cout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|LessThan0~13_cout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|LessThan0~14_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.SBCR_D~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.SBCR_D~q\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr4~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr27~combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux0~13_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add0~1\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add0~3\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add0~5\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add0~7\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add0~9\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add0~11\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add0~13\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add0~15\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add0~16_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add0~14_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add0~12_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add0~10_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add0~8_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add0~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add1~1\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add1~3\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add1~5\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add1~7\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add1~9\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add1~11\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add1~13\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add1~15\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add1~16_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~2_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~5_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal15~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.BCCA~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.BCCA~q\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector4~8_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.BCCA_2~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.BCCA_3~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.BPLA_3~q\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux2~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux5~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux2~2_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add2~1_cout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add2~3\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add2~5\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add2~6_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux5~2_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux2~5_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add4~1\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add4~3\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add4~4_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add1~4_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux5~3_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux5~4_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux5~5_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux5~6_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux5~7_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux1~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add2~7\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add2~9\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add2~11\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add2~13\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add2~14_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux1~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add4~5\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add4~7\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add4~9\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add4~11\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add4~12_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add1~12_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux1~2_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add5~1\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add5~3\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add5~5\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add5~7\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add5~9\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add5~11\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add5~12_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux1~3_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux1~4_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux1~5_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux1~6_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux6~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add2~4_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|output_sig~2_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux6~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add1~2_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add4~2_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux2~4_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux6~2_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux6~3_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux6~4_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux6~5_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux6~6_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Equal0~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux0~12_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux0~10_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add2~2_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux0~11_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux7~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add1~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux0~9_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux7~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add4~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add5~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux7~2_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux7~3_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux7~4_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux0~4_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add1~14_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add2~15\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add2~16_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux0~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux0~5_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add5~13\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add5~14_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add4~13\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add4~14_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux0~6_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux0~7_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux0~8_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Equal0~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Equal0~2_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.ADCR_D~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.ADCR_D~q\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr4~1_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr21~combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector4~10_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.BNEA_2~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.BNEA_3~feeder_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.BNEA_3~q\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr11~6_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr11~combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_LD_MUX|Mux9~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal19~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.BVCA~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.BVCA~q\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.BVSA~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.BVSA~q\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.PC_ADD_THREE_1~combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.PC_ADD_THREE_1~q\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.STAA_X~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.STAA_X~q\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.BNEA~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.BNEA~q\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector1~1_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector1~2_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.PC_ADD_TWO_1~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.PC_ADD_ONE_1~q\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector3~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector4~12_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector3~1_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector6~1_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector6~3_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_LD_MUX|Mux14~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[0]~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_LD_MUX|Mux15~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[0]~1\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[1]~3\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[2]~5\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[3]~7\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[4]~9\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[5]~11\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[6]~12_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux9~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux9~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~48_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.LDSI_2~q\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr34~combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux0~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~51_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.LDXI_2~q\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr36~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~32_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~36_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~15\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~16_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~42_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~17\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~19\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~21\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~22_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~38_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~20_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~40_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~18_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~41_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_B|output[7]~feeder_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[6]~13\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[7]~15\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[8]~17\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[9]~19\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[10]~21\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[11]~23\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[12]~25\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[13]~27\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[14]~29\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[15]~30_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_LD_MUX|Mux0~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector2~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_LD_MUX|Mux2~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[6]~13\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[7]~15\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[8]~17\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[9]~18_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_LD_MUX|Mux6~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[9]~19\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[10]~20_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_LD_MUX|Mux5~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[10]~21\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[11]~22_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_LD_MUX|Mux4~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[11]~23\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[12]~25\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[13]~27\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[14]~29\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[15]~30_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux0~1_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.LDAA_3~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.LDAA_4~q\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr14~combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[5]~10_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux10~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux10~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[4]~8_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~2\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~5\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~7\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~9\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~10_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~41_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[4]~8_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux11~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux11~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[3]~6_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux12~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux12~1_combout\ : std_logic;
SIGNAL \U_DECODER_SMALL8|Equal0~2_combout\ : std_logic;
SIGNAL \U_DECODER_SMALL8|Equal0~3_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[12]~24_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux3~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux3~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[13]~26_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux2~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux2~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[14]~28_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[14]~28_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux1~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux1~1_combout\ : std_logic;
SIGNAL \U_DECODER_SMALL8|Equal0~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[7]~14_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[7]~14_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux8~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~39_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux8~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~40_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~11\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~13\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~15\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~17\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~18_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~38_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~19\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~20_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~37_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux6~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux6~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[8]~16_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[8]~16_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux7~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux7~1_combout\ : std_logic;
SIGNAL \U_DECODER_SMALL8|Equal0~1_combout\ : std_logic;
SIGNAL \U_DECODER_SMALL8|Equal1~0_combout\ : std_logic;
SIGNAL \U_DECODER_SMALL8|Equal0~4_combout\ : std_logic;
SIGNAL \U_DECODER_SMALL8|ram_read_en~0_combout\ : std_logic;
SIGNAL \U_DECODER_SMALL8|INPORT_TRI_en~0_combout\ : std_logic;
SIGNAL \input_switches[4]~input_o\ : std_logic;
SIGNAL \input_switch_sel~input_o\ : std_logic;
SIGNAL \U_INPORT_MUX2x1|output[3]~0_combout\ : std_logic;
SIGNAL \U_INPORT_TO_DATABUS|output[4]~4_combout\ : std_logic;
SIGNAL \U_RAM_OUTPUT|output[4]~28_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|tri_enable[5]~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[4]~14_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[4]~3_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_LD_MUX|Mux3~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_H|output[0]~feeder_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_LD_MUX|Mux7~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_LD_MUX|Mux10~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_LD_MUX|Mux11~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_LD_MUX|Mux12~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[1]~1\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[2]~3\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[3]~5\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[4]~7\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[5]~9\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[6]~11\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[7]~13\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[8]~15\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[9]~17\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[10]~19\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[11]~21\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[12]~22_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[4]~6_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[4]~19_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[4]~15_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~35_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal3~1_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal26~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.CLRC~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.CLRC~q\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.SETC~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.SETC~q\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal13~1_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.RORC~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.RORC~q\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr24~combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux5~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux4~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|output_sig~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add2~8_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux4~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add5~6_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add4~6_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Add1~6_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux4~2_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux4~3_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux4~4_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux4~5_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ALU|Mux4~6_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr4~combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.LOAD_ALU_TO_A~q\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.LDAD~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.LDAD~q\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~16_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[11]~20_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[3]~4_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[3]~20_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~17_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~18_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~19_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal25~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~21_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~22_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~23_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~27_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~24_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal27~5_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~9_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~10_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~12_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr19~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.PC_ADD_ONE_2~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.PC_ADD_THREE_2~q\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~26_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.INIT~feeder_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.INIT~q\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.SRRL~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.SRRL~q\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal11~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.ROLC~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.ROLC~q\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~6_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~7_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~8_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector0~25_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.OPCODE_FETCH~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.OPCODE_FETCH_2~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.OPCODE_FETCH_3~q\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal18~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.LDSI~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.LDSI~q\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr31~combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux15~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux15~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~4_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~44_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[1]~2_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux14~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux14~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~6_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_SP_ADDER|Add0~43_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[2]~4_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_PC_ADDER|output[2]~4_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux13~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_ADDRESS_MUX|Mux13~1_combout\ : std_logic;
SIGNAL \U_RAM_OUTPUT|output[6]~38_combout\ : std_logic;
SIGNAL \input_switches[6]~input_o\ : std_logic;
SIGNAL \U_REG_INPORT0|output[6]~feeder_combout\ : std_logic;
SIGNAL \U_INPORT_TO_DATABUS|output[6]~6_combout\ : std_logic;
SIGNAL \U_RAM_OUTPUT|output[6]~30_combout\ : std_logic;
SIGNAL \U_RAM_OUTPUT|output[7]~39_combout\ : std_logic;
SIGNAL \input_switches[7]~input_o\ : std_logic;
SIGNAL \U_INPORT_TO_DATABUS|output[7]~7_combout\ : std_logic;
SIGNAL \U_RAM_OUTPUT|output[7]~31_combout\ : std_logic;
SIGNAL \input_switches[2]~input_o\ : std_logic;
SIGNAL \U_INPORT_TO_DATABUS|output[2]~2_combout\ : std_logic;
SIGNAL \U_RAM_OUTPUT|output[2]~26_combout\ : std_logic;
SIGNAL \input_switches[1]~input_o\ : std_logic;
SIGNAL \U_INPORT_TO_DATABUS|output[1]~1_combout\ : std_logic;
SIGNAL \U_RAM_OUTPUT|output[1]~25_combout\ : std_logic;
SIGNAL \input_switches[5]~input_o\ : std_logic;
SIGNAL \U_REG_INPORT0|output[5]~feeder_combout\ : std_logic;
SIGNAL \U_INPORT_TO_DATABUS|output[5]~5_combout\ : std_logic;
SIGNAL \U_RAM_OUTPUT|output[5]~29_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~33_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal16~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal20~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.BPLA~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.BPLA~q\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector4~11_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.BPLA_2~q\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.BEQA~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.BEQA~q\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector4~9_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.BEQA_2~q\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector4~2_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr30~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[1]~6_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[1]~0_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[9]~16_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[1]~22_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[1]~24_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[1]~26_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_X_ADDER|Add0~39_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal27~4_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal1~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.LDAA~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.LDAA~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.LDAA_2~q\ : std_logic;
SIGNAL \U_CPU|U_controller|ADDRH_en~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.LDAA_X_3~q\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector4~3_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector4~7_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector5~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector5~1_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Selector5~2_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~6_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~7_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[6]~1_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~8_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~9_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal13~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal29~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.RET~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.RET~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.RET_2~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.RET_3~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.RET_4~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.RET_5~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.RET_6~q\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr11~5_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~4_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[2]~5_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~21_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[2]~2_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[10]~18_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[2]~21_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~22_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~23_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal0~1_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.LDAI~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.LDAI~q\ : std_logic;
SIGNAL \U_CPU|U_controller|WideOr19~combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~28_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~27_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[7]~12_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[12]~23\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[13]~25\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[14]~27\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[15]~28_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[7]~23_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~29_combout\ : std_logic;
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~30_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|Equal28~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|next_state.CALL~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|state.CALL~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.Call_2~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.Call_3~q\ : std_logic;
SIGNAL \U_CPU|U_controller|state.Call_4~q\ : std_logic;
SIGNAL \U_RAM_OUTPUT|output[0]~32_combout\ : std_logic;
SIGNAL \input_switches[0]~input_o\ : std_logic;
SIGNAL \U_INPORT_TO_DATABUS|output[0]~0_combout\ : std_logic;
SIGNAL \U_RAM_OUTPUT|output[0]~24_combout\ : std_logic;
SIGNAL \input_switches[3]~input_o\ : std_logic;
SIGNAL \U_INPORT_TO_DATABUS|output[3]~3_combout\ : std_logic;
SIGNAL \U_RAM_OUTPUT|output[3]~27_combout\ : std_logic;
SIGNAL \U_DECODER_SMALL8|process_0~2_combout\ : std_logic;
SIGNAL \U_LED0|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux0~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux0~0_combout\ : std_logic;
SIGNAL \U_DECODER_SMALL8|outport0_en~combout\ : std_logic;
SIGNAL \U_LED2|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux0~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux0~0_combout\ : std_logic;
SIGNAL \U_CPU|U_controller|X_LD_MUX_sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_CPU|U_datapath|U_STATUS_REG_CARRY|output\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_RAM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_REG_INPORT0|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_REG_OUTPORT1|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_REG_OUTPORT0|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_CPU|U_datapath|U_B|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_CPU|U_datapath|U_XL|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_CPU|U_datapath|U_XH|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_CPU|U_datapath|U_SPL|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_CPU|U_datapath|U_SPH|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_CPU|U_datapath|U_A|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_CPU|U_datapath|U_D|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_CPU|U_datapath|U_PCL|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_CPU|U_datapath|U_PCH|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_CPU|U_datapath|U_IR|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_CPU|U_datapath|U_ADDRH|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_CPU|U_datapath|U_ADDRL|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_CPU|U_datapath|U_STATUS_REG_ZERO|output\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_CPU|U_datapath|U_STATUS_REG_SIGNED|output\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_CPU|U_datapath|U_ALU_REG|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_REG_INPORT1|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_LED0|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U_LED1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U_LED2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U_LED3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_input_switch_sel~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_input_switch_sel <= input_switch_sel;
ww_input_switches <= input_switches;
led0 <= ww_led0;
led1 <= ww_led1;
led2 <= ww_led2;
led3 <= ww_led3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \U_RAM_OUTPUT|output[7]~31_combout\ & \U_RAM_OUTPUT|output[6]~30_combout\ & \U_RAM_OUTPUT|output[5]~29_combout\ & 
\U_RAM_OUTPUT|output[4]~28_combout\ & \U_RAM_OUTPUT|output[3]~27_combout\ & \U_RAM_OUTPUT|output[2]~26_combout\ & \U_RAM_OUTPUT|output[1]~25_combout\ & \U_RAM_OUTPUT|output[0]~24_combout\);

\U_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\U_CPU|U_datapath|U_ADDRESS_MUX|Mux8~1_combout\ & \U_CPU|U_datapath|U_ADDRESS_MUX|Mux9~1_combout\ & \U_CPU|U_datapath|U_ADDRESS_MUX|Mux10~1_combout\ & 
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux11~1_combout\ & \U_CPU|U_datapath|U_ADDRESS_MUX|Mux12~1_combout\ & \U_CPU|U_datapath|U_ADDRESS_MUX|Mux13~1_combout\ & \U_CPU|U_datapath|U_ADDRESS_MUX|Mux14~1_combout\ & \U_CPU|U_datapath|U_ADDRESS_MUX|Mux15~1_combout\);

\U_RAM|altsyncram_component|auto_generated|q_a\(0) <= \U_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\U_RAM|altsyncram_component|auto_generated|q_a\(1) <= \U_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\U_RAM|altsyncram_component|auto_generated|q_a\(2) <= \U_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\U_RAM|altsyncram_component|auto_generated|q_a\(3) <= \U_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\U_RAM|altsyncram_component|auto_generated|q_a\(4) <= \U_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\U_RAM|altsyncram_component|auto_generated|q_a\(5) <= \U_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\U_RAM|altsyncram_component|auto_generated|q_a\(6) <= \U_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\U_RAM|altsyncram_component|auto_generated|q_a\(7) <= \U_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\U_LED0|ALT_INV_Mux6~0_combout\ <= NOT \U_LED0|Mux6~0_combout\;
\U_LED1|ALT_INV_Mux6~0_combout\ <= NOT \U_LED1|Mux6~0_combout\;
\U_LED2|ALT_INV_Mux6~0_combout\ <= NOT \U_LED2|Mux6~0_combout\;
\U_LED3|ALT_INV_Mux6~0_combout\ <= NOT \U_LED3|Mux6~0_combout\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_input_switch_sel~input_o\ <= NOT \input_switch_sel~input_o\;

-- Location: LCCOMB_X22_Y18_N0
\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[0]~0_combout\ = (\U_CPU|U_datapath|U_XL|output\(0) & (\U_CPU|U_datapath|U_B|output\(0) $ (VCC))) # (!\U_CPU|U_datapath|U_XL|output\(0) & (\U_CPU|U_datapath|U_B|output\(0) & VCC))
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[0]~1\ = CARRY((\U_CPU|U_datapath|U_XL|output\(0) & \U_CPU|U_datapath|U_B|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_XL|output\(0),
	datab => \U_CPU|U_datapath|U_B|output\(0),
	datad => VCC,
	combout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[0]~0_combout\,
	cout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[0]~1\);

-- Location: LCCOMB_X22_Y18_N2
\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[1]~2_combout\ = (\U_CPU|U_datapath|U_XL|output\(1) & ((\U_CPU|U_datapath|U_B|output\(1) & (\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[0]~1\ & VCC)) # (!\U_CPU|U_datapath|U_B|output\(1) & 
-- (!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[0]~1\)))) # (!\U_CPU|U_datapath|U_XL|output\(1) & ((\U_CPU|U_datapath|U_B|output\(1) & (!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[0]~1\)) # (!\U_CPU|U_datapath|U_B|output\(1) & 
-- ((\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[0]~1\) # (GND)))))
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[1]~3\ = CARRY((\U_CPU|U_datapath|U_XL|output\(1) & (!\U_CPU|U_datapath|U_B|output\(1) & !\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[0]~1\)) # (!\U_CPU|U_datapath|U_XL|output\(1) & 
-- ((!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[0]~1\) # (!\U_CPU|U_datapath|U_B|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_XL|output\(1),
	datab => \U_CPU|U_datapath|U_B|output\(1),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[0]~1\,
	combout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[1]~2_combout\,
	cout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[1]~3\);

-- Location: LCCOMB_X22_Y18_N6
\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[3]~6_combout\ = (\U_CPU|U_datapath|U_B|output\(3) & ((\U_CPU|U_datapath|U_XL|output\(3) & (\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[2]~5\ & VCC)) # (!\U_CPU|U_datapath|U_XL|output\(3) & 
-- (!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[2]~5\)))) # (!\U_CPU|U_datapath|U_B|output\(3) & ((\U_CPU|U_datapath|U_XL|output\(3) & (!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[2]~5\)) # (!\U_CPU|U_datapath|U_XL|output\(3) & 
-- ((\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[2]~5\) # (GND)))))
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[3]~7\ = CARRY((\U_CPU|U_datapath|U_B|output\(3) & (!\U_CPU|U_datapath|U_XL|output\(3) & !\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[2]~5\)) # (!\U_CPU|U_datapath|U_B|output\(3) & 
-- ((!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[2]~5\) # (!\U_CPU|U_datapath|U_XL|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_B|output\(3),
	datab => \U_CPU|U_datapath|U_XL|output\(3),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[2]~5\,
	combout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[3]~6_combout\,
	cout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[3]~7\);

-- Location: LCCOMB_X22_Y18_N10
\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[5]~10_combout\ = (\U_CPU|U_datapath|U_B|output\(5) & ((\U_CPU|U_datapath|U_XL|output\(5) & (\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[4]~9\ & VCC)) # (!\U_CPU|U_datapath|U_XL|output\(5) & 
-- (!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[4]~9\)))) # (!\U_CPU|U_datapath|U_B|output\(5) & ((\U_CPU|U_datapath|U_XL|output\(5) & (!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[4]~9\)) # (!\U_CPU|U_datapath|U_XL|output\(5) & 
-- ((\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[4]~9\) # (GND)))))
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[5]~11\ = CARRY((\U_CPU|U_datapath|U_B|output\(5) & (!\U_CPU|U_datapath|U_XL|output\(5) & !\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[4]~9\)) # (!\U_CPU|U_datapath|U_B|output\(5) & 
-- ((!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[4]~9\) # (!\U_CPU|U_datapath|U_XL|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_B|output\(5),
	datab => \U_CPU|U_datapath|U_XL|output\(5),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[4]~9\,
	combout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[5]~10_combout\,
	cout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[5]~11\);

-- Location: LCCOMB_X22_Y18_N18
\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[9]~18_combout\ = (\U_CPU|U_datapath|U_XH|output\(1) & (!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[8]~17\)) # (!\U_CPU|U_datapath|U_XH|output\(1) & ((\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[8]~17\) # (GND)))
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[9]~19\ = CARRY((!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[8]~17\) # (!\U_CPU|U_datapath|U_XH|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_XH|output\(1),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[8]~17\,
	combout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[9]~18_combout\,
	cout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[9]~19\);

-- Location: LCCOMB_X22_Y18_N20
\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[10]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[10]~20_combout\ = (\U_CPU|U_datapath|U_XH|output\(2) & (\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[9]~19\ $ (GND))) # (!\U_CPU|U_datapath|U_XH|output\(2) & (!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[9]~19\ & VCC))
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[10]~21\ = CARRY((\U_CPU|U_datapath|U_XH|output\(2) & !\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_XH|output\(2),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[9]~19\,
	combout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[10]~20_combout\,
	cout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[10]~21\);

-- Location: LCCOMB_X22_Y18_N22
\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[11]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[11]~22_combout\ = (\U_CPU|U_datapath|U_XH|output\(3) & (!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[10]~21\)) # (!\U_CPU|U_datapath|U_XH|output\(3) & ((\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[10]~21\) # (GND)))
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[11]~23\ = CARRY((!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[10]~21\) # (!\U_CPU|U_datapath|U_XH|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_XH|output\(3),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[10]~21\,
	combout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[11]~22_combout\,
	cout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[11]~23\);

-- Location: LCCOMB_X22_Y18_N24
\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[12]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[12]~24_combout\ = (\U_CPU|U_datapath|U_XH|output\(4) & (\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[11]~23\ $ (GND))) # (!\U_CPU|U_datapath|U_XH|output\(4) & (!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[11]~23\ & 
-- VCC))
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[12]~25\ = CARRY((\U_CPU|U_datapath|U_XH|output\(4) & !\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_XH|output\(4),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[11]~23\,
	combout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[12]~24_combout\,
	cout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[12]~25\);

-- Location: LCCOMB_X22_Y19_N26
\U_CPU|U_datapath|U_PC_ADDER|output[13]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_ADDER|output[13]~26_combout\ = (\U_CPU|U_datapath|U_PCH|output\(5) & (!\U_CPU|U_datapath|U_PC_ADDER|output[12]~25\)) # (!\U_CPU|U_datapath|U_PCH|output\(5) & ((\U_CPU|U_datapath|U_PC_ADDER|output[12]~25\) # (GND)))
-- \U_CPU|U_datapath|U_PC_ADDER|output[13]~27\ = CARRY((!\U_CPU|U_datapath|U_PC_ADDER|output[12]~25\) # (!\U_CPU|U_datapath|U_PCH|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_PCH|output\(5),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_PC_ADDER|output[12]~25\,
	combout => \U_CPU|U_datapath|U_PC_ADDER|output[13]~26_combout\,
	cout => \U_CPU|U_datapath|U_PC_ADDER|output[13]~27\);

-- Location: LCCOMB_X20_Y19_N10
\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[5]~8_combout\ = (\U_CPU|U_datapath|U_PCL|output\(5) & (\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[4]~7\ $ (GND))) # (!\U_CPU|U_datapath|U_PCL|output\(5) & 
-- (!\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[4]~7\ & VCC))
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[5]~9\ = CARRY((\U_CPU|U_datapath|U_PCL|output\(5) & !\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_PCL|output\(5),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[4]~7\,
	combout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[5]~8_combout\,
	cout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[5]~9\);

-- Location: LCCOMB_X20_Y19_N12
\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[6]~10_combout\ = (\U_CPU|U_datapath|U_PCL|output\(6) & (!\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[5]~9\)) # (!\U_CPU|U_datapath|U_PCL|output\(6) & ((\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[5]~9\) 
-- # (GND)))
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[6]~11\ = CARRY((!\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[5]~9\) # (!\U_CPU|U_datapath|U_PCL|output\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_PCL|output\(6),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[5]~9\,
	combout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[6]~10_combout\,
	cout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[6]~11\);

-- Location: LCCOMB_X20_Y19_N16
\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[8]~14_combout\ = (\U_CPU|U_datapath|U_PCH|output\(0) & (!\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[7]~13\)) # (!\U_CPU|U_datapath|U_PCH|output\(0) & 
-- ((\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[7]~13\) # (GND)))
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[8]~15\ = CARRY((!\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[7]~13\) # (!\U_CPU|U_datapath|U_PCH|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_PCH|output\(0),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[7]~13\,
	combout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[8]~14_combout\,
	cout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[8]~15\);

-- Location: M9K_X25_Y21_N0
\U_RAM|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A0002400080001C00060001400040000C00020000400000007C00B0003E400FF003F800F60020400000003000B4003F00000000B400F6003EC0000000B40088003C400010000000BC003E400F1000000084000000023002280000000B400F6000280084",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "TextCase3.mif",
	init_file_layout => "port_a",
	logical_ram_name => "small8_ram:U_RAM|altsyncram:altsyncram_component|altsyncram_q7h1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U_DECODER_SMALL8|ram_write_en~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \U_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \U_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y18_N0
\U_CPU|U_datapath|U_X_ADDER|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~1_combout\ = \U_CPU|U_datapath|U_XL|output\(0) $ (VCC)
-- \U_CPU|U_datapath|U_X_ADDER|Add0~2\ = CARRY(\U_CPU|U_datapath|U_XL|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_XL|output\(0),
	datad => VCC,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~1_combout\,
	cout => \U_CPU|U_datapath|U_X_ADDER|Add0~2\);

-- Location: LCCOMB_X22_Y22_N16
\U_CPU|U_datapath|U_ALU|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add2~10_combout\ = (\U_CPU|U_datapath|U_A|output\(4) & ((\U_CPU|U_datapath|U_D|output\(4) & (!\U_CPU|U_datapath|U_ALU|Add2~9\)) # (!\U_CPU|U_datapath|U_D|output\(4) & (\U_CPU|U_datapath|U_ALU|Add2~9\ & VCC)))) # 
-- (!\U_CPU|U_datapath|U_A|output\(4) & ((\U_CPU|U_datapath|U_D|output\(4) & ((\U_CPU|U_datapath|U_ALU|Add2~9\) # (GND))) # (!\U_CPU|U_datapath|U_D|output\(4) & (!\U_CPU|U_datapath|U_ALU|Add2~9\))))
-- \U_CPU|U_datapath|U_ALU|Add2~11\ = CARRY((\U_CPU|U_datapath|U_A|output\(4) & (\U_CPU|U_datapath|U_D|output\(4) & !\U_CPU|U_datapath|U_ALU|Add2~9\)) # (!\U_CPU|U_datapath|U_A|output\(4) & ((\U_CPU|U_datapath|U_D|output\(4)) # 
-- (!\U_CPU|U_datapath|U_ALU|Add2~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_A|output\(4),
	datab => \U_CPU|U_datapath|U_D|output\(4),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add2~9\,
	combout => \U_CPU|U_datapath|U_ALU|Add2~10_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add2~11\);

-- Location: LCCOMB_X22_Y22_N18
\U_CPU|U_datapath|U_ALU|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add2~12_combout\ = ((\U_CPU|U_datapath|U_A|output\(5) $ (\U_CPU|U_datapath|U_D|output\(5) $ (\U_CPU|U_datapath|U_ALU|Add2~11\)))) # (GND)
-- \U_CPU|U_datapath|U_ALU|Add2~13\ = CARRY((\U_CPU|U_datapath|U_A|output\(5) & ((!\U_CPU|U_datapath|U_ALU|Add2~11\) # (!\U_CPU|U_datapath|U_D|output\(5)))) # (!\U_CPU|U_datapath|U_A|output\(5) & (!\U_CPU|U_datapath|U_D|output\(5) & 
-- !\U_CPU|U_datapath|U_ALU|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_A|output\(5),
	datab => \U_CPU|U_datapath|U_D|output\(5),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add2~11\,
	combout => \U_CPU|U_datapath|U_ALU|Add2~12_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add2~13\);

-- Location: LCCOMB_X22_Y20_N2
\U_CPU|U_datapath|U_ALU|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add0~2_combout\ = (\U_CPU|U_datapath|U_A|output\(1) & (!\U_CPU|U_datapath|U_ALU|Add0~1\)) # (!\U_CPU|U_datapath|U_A|output\(1) & ((\U_CPU|U_datapath|U_ALU|Add0~1\) # (GND)))
-- \U_CPU|U_datapath|U_ALU|Add0~3\ = CARRY((!\U_CPU|U_datapath|U_ALU|Add0~1\) # (!\U_CPU|U_datapath|U_A|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_A|output\(1),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add0~1\,
	combout => \U_CPU|U_datapath|U_ALU|Add0~2_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add0~3\);

-- Location: LCCOMB_X22_Y20_N4
\U_CPU|U_datapath|U_ALU|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add0~4_combout\ = (\U_CPU|U_datapath|U_A|output\(2) & (\U_CPU|U_datapath|U_ALU|Add0~3\ $ (GND))) # (!\U_CPU|U_datapath|U_A|output\(2) & (!\U_CPU|U_datapath|U_ALU|Add0~3\ & VCC))
-- \U_CPU|U_datapath|U_ALU|Add0~5\ = CARRY((\U_CPU|U_datapath|U_A|output\(2) & !\U_CPU|U_datapath|U_ALU|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_A|output\(2),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add0~3\,
	combout => \U_CPU|U_datapath|U_ALU|Add0~4_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add0~5\);

-- Location: LCCOMB_X22_Y20_N6
\U_CPU|U_datapath|U_ALU|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add0~6_combout\ = (\U_CPU|U_datapath|U_A|output\(3) & (!\U_CPU|U_datapath|U_ALU|Add0~5\)) # (!\U_CPU|U_datapath|U_A|output\(3) & ((\U_CPU|U_datapath|U_ALU|Add0~5\) # (GND)))
-- \U_CPU|U_datapath|U_ALU|Add0~7\ = CARRY((!\U_CPU|U_datapath|U_ALU|Add0~5\) # (!\U_CPU|U_datapath|U_A|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_A|output\(3),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add0~5\,
	combout => \U_CPU|U_datapath|U_ALU|Add0~6_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add0~7\);

-- Location: LCCOMB_X21_Y20_N12
\U_CPU|U_datapath|U_ALU|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add1~8_combout\ = ((\U_CPU|U_datapath|U_D|output\(4) $ (\U_CPU|U_datapath|U_ALU|Add0~8_combout\ $ (!\U_CPU|U_datapath|U_ALU|Add1~7\)))) # (GND)
-- \U_CPU|U_datapath|U_ALU|Add1~9\ = CARRY((\U_CPU|U_datapath|U_D|output\(4) & ((\U_CPU|U_datapath|U_ALU|Add0~8_combout\) # (!\U_CPU|U_datapath|U_ALU|Add1~7\))) # (!\U_CPU|U_datapath|U_D|output\(4) & (\U_CPU|U_datapath|U_ALU|Add0~8_combout\ & 
-- !\U_CPU|U_datapath|U_ALU|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_D|output\(4),
	datab => \U_CPU|U_datapath|U_ALU|Add0~8_combout\,
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add1~7\,
	combout => \U_CPU|U_datapath|U_ALU|Add1~8_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add1~9\);

-- Location: LCCOMB_X21_Y20_N14
\U_CPU|U_datapath|U_ALU|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add1~10_combout\ = (\U_CPU|U_datapath|U_D|output\(5) & ((\U_CPU|U_datapath|U_ALU|Add0~10_combout\ & (\U_CPU|U_datapath|U_ALU|Add1~9\ & VCC)) # (!\U_CPU|U_datapath|U_ALU|Add0~10_combout\ & (!\U_CPU|U_datapath|U_ALU|Add1~9\)))) # 
-- (!\U_CPU|U_datapath|U_D|output\(5) & ((\U_CPU|U_datapath|U_ALU|Add0~10_combout\ & (!\U_CPU|U_datapath|U_ALU|Add1~9\)) # (!\U_CPU|U_datapath|U_ALU|Add0~10_combout\ & ((\U_CPU|U_datapath|U_ALU|Add1~9\) # (GND)))))
-- \U_CPU|U_datapath|U_ALU|Add1~11\ = CARRY((\U_CPU|U_datapath|U_D|output\(5) & (!\U_CPU|U_datapath|U_ALU|Add0~10_combout\ & !\U_CPU|U_datapath|U_ALU|Add1~9\)) # (!\U_CPU|U_datapath|U_D|output\(5) & ((!\U_CPU|U_datapath|U_ALU|Add1~9\) # 
-- (!\U_CPU|U_datapath|U_ALU|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_D|output\(5),
	datab => \U_CPU|U_datapath|U_ALU|Add0~10_combout\,
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add1~9\,
	combout => \U_CPU|U_datapath|U_ALU|Add1~10_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add1~11\);

-- Location: LCCOMB_X20_Y22_N10
\U_CPU|U_datapath|U_ALU|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add5~2_combout\ = (\U_CPU|U_datapath|U_A|output\(1) & (!\U_CPU|U_datapath|U_ALU|Add5~1\)) # (!\U_CPU|U_datapath|U_A|output\(1) & ((\U_CPU|U_datapath|U_ALU|Add5~1\) # (GND)))
-- \U_CPU|U_datapath|U_ALU|Add5~3\ = CARRY((!\U_CPU|U_datapath|U_ALU|Add5~1\) # (!\U_CPU|U_datapath|U_A|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_A|output\(1),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add5~1\,
	combout => \U_CPU|U_datapath|U_ALU|Add5~2_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add5~3\);

-- Location: LCCOMB_X20_Y22_N12
\U_CPU|U_datapath|U_ALU|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add5~4_combout\ = (\U_CPU|U_datapath|U_A|output\(2) & (\U_CPU|U_datapath|U_ALU|Add5~3\ $ (GND))) # (!\U_CPU|U_datapath|U_A|output\(2) & (!\U_CPU|U_datapath|U_ALU|Add5~3\ & VCC))
-- \U_CPU|U_datapath|U_ALU|Add5~5\ = CARRY((\U_CPU|U_datapath|U_A|output\(2) & !\U_CPU|U_datapath|U_ALU|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_A|output\(2),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add5~3\,
	combout => \U_CPU|U_datapath|U_ALU|Add5~4_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add5~5\);

-- Location: LCCOMB_X20_Y22_N16
\U_CPU|U_datapath|U_ALU|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add5~8_combout\ = (\U_CPU|U_datapath|U_A|output\(4) & (\U_CPU|U_datapath|U_ALU|Add5~7\ $ (GND))) # (!\U_CPU|U_datapath|U_A|output\(4) & (!\U_CPU|U_datapath|U_ALU|Add5~7\ & VCC))
-- \U_CPU|U_datapath|U_ALU|Add5~9\ = CARRY((\U_CPU|U_datapath|U_A|output\(4) & !\U_CPU|U_datapath|U_ALU|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_A|output\(4),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add5~7\,
	combout => \U_CPU|U_datapath|U_ALU|Add5~8_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add5~9\);

-- Location: LCCOMB_X20_Y22_N18
\U_CPU|U_datapath|U_ALU|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add5~10_combout\ = (\U_CPU|U_datapath|U_A|output\(5) & (!\U_CPU|U_datapath|U_ALU|Add5~9\)) # (!\U_CPU|U_datapath|U_A|output\(5) & ((\U_CPU|U_datapath|U_ALU|Add5~9\) # (GND)))
-- \U_CPU|U_datapath|U_ALU|Add5~11\ = CARRY((!\U_CPU|U_datapath|U_ALU|Add5~9\) # (!\U_CPU|U_datapath|U_A|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_A|output\(5),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add5~9\,
	combout => \U_CPU|U_datapath|U_ALU|Add5~10_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add5~11\);

-- Location: LCCOMB_X21_Y22_N22
\U_CPU|U_datapath|U_ALU|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add4~8_combout\ = (\U_CPU|U_datapath|U_A|output\(4) & ((GND) # (!\U_CPU|U_datapath|U_ALU|Add4~7\))) # (!\U_CPU|U_datapath|U_A|output\(4) & (\U_CPU|U_datapath|U_ALU|Add4~7\ $ (GND)))
-- \U_CPU|U_datapath|U_ALU|Add4~9\ = CARRY((\U_CPU|U_datapath|U_A|output\(4)) # (!\U_CPU|U_datapath|U_ALU|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_A|output\(4),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add4~7\,
	combout => \U_CPU|U_datapath|U_ALU|Add4~8_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add4~9\);

-- Location: LCCOMB_X21_Y22_N24
\U_CPU|U_datapath|U_ALU|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add4~10_combout\ = (\U_CPU|U_datapath|U_A|output\(5) & (\U_CPU|U_datapath|U_ALU|Add4~9\ & VCC)) # (!\U_CPU|U_datapath|U_A|output\(5) & (!\U_CPU|U_datapath|U_ALU|Add4~9\))
-- \U_CPU|U_datapath|U_ALU|Add4~11\ = CARRY((!\U_CPU|U_datapath|U_A|output\(5) & !\U_CPU|U_datapath|U_ALU|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_A|output\(5),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add4~9\,
	combout => \U_CPU|U_datapath|U_ALU|Add4~10_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add4~11\);

-- Location: LCCOMB_X26_Y20_N0
\U_CPU|U_datapath|U_SP_ADDER|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~1_combout\ = \U_CPU|U_datapath|U_SPL|output\(0) $ (VCC)
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~2\ = CARRY(\U_CPU|U_datapath|U_SPL|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_SPL|output\(0),
	datad => VCC,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~1_combout\,
	cout => \U_CPU|U_datapath|U_SP_ADDER|Add0~2\);

-- Location: LCCOMB_X20_Y19_N26
\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[13]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[13]~24_combout\ = (\U_CPU|U_datapath|U_PCH|output\(5) & (\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[12]~23\ $ (GND))) # (!\U_CPU|U_datapath|U_PCH|output\(5) & 
-- (!\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[12]~23\ & VCC))
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[13]~25\ = CARRY((\U_CPU|U_datapath|U_PCH|output\(5) & !\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[12]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_PCH|output\(5),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[12]~23\,
	combout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[13]~24_combout\,
	cout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[13]~25\);

-- Location: LCCOMB_X20_Y19_N28
\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[14]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[14]~26_combout\ = (\U_CPU|U_datapath|U_PCH|output\(6) & (!\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[13]~25\)) # (!\U_CPU|U_datapath|U_PCH|output\(6) & 
-- ((\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[13]~25\) # (GND)))
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[14]~27\ = CARRY((!\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[13]~25\) # (!\U_CPU|U_datapath|U_PCH|output\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_PCH|output\(6),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[13]~25\,
	combout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[14]~26_combout\,
	cout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[14]~27\);

-- Location: LCCOMB_X24_Y18_N2
\U_CPU|U_datapath|U_X_ADDER|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~4_combout\ = (\U_CPU|U_datapath|U_XL|output\(1) & ((\U_CPU|U_controller|X_LD_MUX_sel\(0) & (\U_CPU|U_datapath|U_X_ADDER|Add0~2\ & VCC)) # (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & (!\U_CPU|U_datapath|U_X_ADDER|Add0~2\)))) # 
-- (!\U_CPU|U_datapath|U_XL|output\(1) & ((\U_CPU|U_controller|X_LD_MUX_sel\(0) & (!\U_CPU|U_datapath|U_X_ADDER|Add0~2\)) # (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & ((\U_CPU|U_datapath|U_X_ADDER|Add0~2\) # (GND)))))
-- \U_CPU|U_datapath|U_X_ADDER|Add0~5\ = CARRY((\U_CPU|U_datapath|U_XL|output\(1) & (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & !\U_CPU|U_datapath|U_X_ADDER|Add0~2\)) # (!\U_CPU|U_datapath|U_XL|output\(1) & ((!\U_CPU|U_datapath|U_X_ADDER|Add0~2\) # 
-- (!\U_CPU|U_controller|X_LD_MUX_sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_XL|output\(1),
	datab => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_ADDER|Add0~2\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~4_combout\,
	cout => \U_CPU|U_datapath|U_X_ADDER|Add0~5\);

-- Location: LCCOMB_X24_Y18_N4
\U_CPU|U_datapath|U_X_ADDER|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~6_combout\ = ((\U_CPU|U_controller|X_LD_MUX_sel\(0) $ (\U_CPU|U_datapath|U_XL|output\(2) $ (!\U_CPU|U_datapath|U_X_ADDER|Add0~5\)))) # (GND)
-- \U_CPU|U_datapath|U_X_ADDER|Add0~7\ = CARRY((\U_CPU|U_controller|X_LD_MUX_sel\(0) & ((\U_CPU|U_datapath|U_XL|output\(2)) # (!\U_CPU|U_datapath|U_X_ADDER|Add0~5\))) # (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & (\U_CPU|U_datapath|U_XL|output\(2) & 
-- !\U_CPU|U_datapath|U_X_ADDER|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datab => \U_CPU|U_datapath|U_XL|output\(2),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_ADDER|Add0~5\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~6_combout\,
	cout => \U_CPU|U_datapath|U_X_ADDER|Add0~7\);

-- Location: LCCOMB_X24_Y18_N20
\U_CPU|U_datapath|U_X_ADDER|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~22_combout\ = ((\U_CPU|U_datapath|U_XH|output\(2) $ (\U_CPU|U_controller|X_LD_MUX_sel\(0) $ (!\U_CPU|U_datapath|U_X_ADDER|Add0~21\)))) # (GND)
-- \U_CPU|U_datapath|U_X_ADDER|Add0~23\ = CARRY((\U_CPU|U_datapath|U_XH|output\(2) & ((\U_CPU|U_controller|X_LD_MUX_sel\(0)) # (!\U_CPU|U_datapath|U_X_ADDER|Add0~21\))) # (!\U_CPU|U_datapath|U_XH|output\(2) & (\U_CPU|U_controller|X_LD_MUX_sel\(0) & 
-- !\U_CPU|U_datapath|U_X_ADDER|Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_XH|output\(2),
	datab => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_ADDER|Add0~21\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~22_combout\,
	cout => \U_CPU|U_datapath|U_X_ADDER|Add0~23\);

-- Location: LCCOMB_X24_Y18_N22
\U_CPU|U_datapath|U_X_ADDER|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~24_combout\ = (\U_CPU|U_datapath|U_XH|output\(3) & ((\U_CPU|U_controller|X_LD_MUX_sel\(0) & (\U_CPU|U_datapath|U_X_ADDER|Add0~23\ & VCC)) # (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & 
-- (!\U_CPU|U_datapath|U_X_ADDER|Add0~23\)))) # (!\U_CPU|U_datapath|U_XH|output\(3) & ((\U_CPU|U_controller|X_LD_MUX_sel\(0) & (!\U_CPU|U_datapath|U_X_ADDER|Add0~23\)) # (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & ((\U_CPU|U_datapath|U_X_ADDER|Add0~23\) # 
-- (GND)))))
-- \U_CPU|U_datapath|U_X_ADDER|Add0~25\ = CARRY((\U_CPU|U_datapath|U_XH|output\(3) & (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & !\U_CPU|U_datapath|U_X_ADDER|Add0~23\)) # (!\U_CPU|U_datapath|U_XH|output\(3) & ((!\U_CPU|U_datapath|U_X_ADDER|Add0~23\) # 
-- (!\U_CPU|U_controller|X_LD_MUX_sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_XH|output\(3),
	datab => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_ADDER|Add0~23\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~24_combout\,
	cout => \U_CPU|U_datapath|U_X_ADDER|Add0~25\);

-- Location: LCCOMB_X24_Y18_N24
\U_CPU|U_datapath|U_X_ADDER|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~26_combout\ = ((\U_CPU|U_datapath|U_XH|output\(4) $ (\U_CPU|U_controller|X_LD_MUX_sel\(0) $ (!\U_CPU|U_datapath|U_X_ADDER|Add0~25\)))) # (GND)
-- \U_CPU|U_datapath|U_X_ADDER|Add0~27\ = CARRY((\U_CPU|U_datapath|U_XH|output\(4) & ((\U_CPU|U_controller|X_LD_MUX_sel\(0)) # (!\U_CPU|U_datapath|U_X_ADDER|Add0~25\))) # (!\U_CPU|U_datapath|U_XH|output\(4) & (\U_CPU|U_controller|X_LD_MUX_sel\(0) & 
-- !\U_CPU|U_datapath|U_X_ADDER|Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_XH|output\(4),
	datab => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_ADDER|Add0~25\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~26_combout\,
	cout => \U_CPU|U_datapath|U_X_ADDER|Add0~27\);

-- Location: LCCOMB_X24_Y18_N26
\U_CPU|U_datapath|U_X_ADDER|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~28_combout\ = (\U_CPU|U_controller|X_LD_MUX_sel\(0) & ((\U_CPU|U_datapath|U_XH|output\(5) & (\U_CPU|U_datapath|U_X_ADDER|Add0~27\ & VCC)) # (!\U_CPU|U_datapath|U_XH|output\(5) & (!\U_CPU|U_datapath|U_X_ADDER|Add0~27\)))) # 
-- (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & ((\U_CPU|U_datapath|U_XH|output\(5) & (!\U_CPU|U_datapath|U_X_ADDER|Add0~27\)) # (!\U_CPU|U_datapath|U_XH|output\(5) & ((\U_CPU|U_datapath|U_X_ADDER|Add0~27\) # (GND)))))
-- \U_CPU|U_datapath|U_X_ADDER|Add0~29\ = CARRY((\U_CPU|U_controller|X_LD_MUX_sel\(0) & (!\U_CPU|U_datapath|U_XH|output\(5) & !\U_CPU|U_datapath|U_X_ADDER|Add0~27\)) # (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & ((!\U_CPU|U_datapath|U_X_ADDER|Add0~27\) # 
-- (!\U_CPU|U_datapath|U_XH|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datab => \U_CPU|U_datapath|U_XH|output\(5),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_ADDER|Add0~27\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~28_combout\,
	cout => \U_CPU|U_datapath|U_X_ADDER|Add0~29\);

-- Location: LCCOMB_X24_Y18_N28
\U_CPU|U_datapath|U_X_ADDER|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~30_combout\ = ((\U_CPU|U_controller|X_LD_MUX_sel\(0) $ (\U_CPU|U_datapath|U_XH|output\(6) $ (!\U_CPU|U_datapath|U_X_ADDER|Add0~29\)))) # (GND)
-- \U_CPU|U_datapath|U_X_ADDER|Add0~31\ = CARRY((\U_CPU|U_controller|X_LD_MUX_sel\(0) & ((\U_CPU|U_datapath|U_XH|output\(6)) # (!\U_CPU|U_datapath|U_X_ADDER|Add0~29\))) # (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & (\U_CPU|U_datapath|U_XH|output\(6) & 
-- !\U_CPU|U_datapath|U_X_ADDER|Add0~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datab => \U_CPU|U_datapath|U_XH|output\(6),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_ADDER|Add0~29\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~30_combout\,
	cout => \U_CPU|U_datapath|U_X_ADDER|Add0~31\);

-- Location: LCCOMB_X26_Y20_N6
\U_CPU|U_datapath|U_SP_ADDER|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~8_combout\ = (\U_CPU|U_datapath|U_SPL|output\(3) & ((\U_CPU|U_controller|WideOr33~combout\ & (\U_CPU|U_datapath|U_SP_ADDER|Add0~7\ & VCC)) # (!\U_CPU|U_controller|WideOr33~combout\ & 
-- (!\U_CPU|U_datapath|U_SP_ADDER|Add0~7\)))) # (!\U_CPU|U_datapath|U_SPL|output\(3) & ((\U_CPU|U_controller|WideOr33~combout\ & (!\U_CPU|U_datapath|U_SP_ADDER|Add0~7\)) # (!\U_CPU|U_controller|WideOr33~combout\ & ((\U_CPU|U_datapath|U_SP_ADDER|Add0~7\) # 
-- (GND)))))
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~9\ = CARRY((\U_CPU|U_datapath|U_SPL|output\(3) & (!\U_CPU|U_controller|WideOr33~combout\ & !\U_CPU|U_datapath|U_SP_ADDER|Add0~7\)) # (!\U_CPU|U_datapath|U_SPL|output\(3) & ((!\U_CPU|U_datapath|U_SP_ADDER|Add0~7\) # 
-- (!\U_CPU|U_controller|WideOr33~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_SPL|output\(3),
	datab => \U_CPU|U_controller|WideOr33~combout\,
	datad => VCC,
	cin => \U_CPU|U_datapath|U_SP_ADDER|Add0~7\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~8_combout\,
	cout => \U_CPU|U_datapath|U_SP_ADDER|Add0~9\);

-- Location: LCCOMB_X26_Y20_N10
\U_CPU|U_datapath|U_SP_ADDER|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~12_combout\ = (\U_CPU|U_controller|WideOr33~combout\ & ((\U_CPU|U_datapath|U_SPL|output\(5) & (\U_CPU|U_datapath|U_SP_ADDER|Add0~11\ & VCC)) # (!\U_CPU|U_datapath|U_SPL|output\(5) & 
-- (!\U_CPU|U_datapath|U_SP_ADDER|Add0~11\)))) # (!\U_CPU|U_controller|WideOr33~combout\ & ((\U_CPU|U_datapath|U_SPL|output\(5) & (!\U_CPU|U_datapath|U_SP_ADDER|Add0~11\)) # (!\U_CPU|U_datapath|U_SPL|output\(5) & ((\U_CPU|U_datapath|U_SP_ADDER|Add0~11\) # 
-- (GND)))))
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~13\ = CARRY((\U_CPU|U_controller|WideOr33~combout\ & (!\U_CPU|U_datapath|U_SPL|output\(5) & !\U_CPU|U_datapath|U_SP_ADDER|Add0~11\)) # (!\U_CPU|U_controller|WideOr33~combout\ & ((!\U_CPU|U_datapath|U_SP_ADDER|Add0~11\) # 
-- (!\U_CPU|U_datapath|U_SPL|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr33~combout\,
	datab => \U_CPU|U_datapath|U_SPL|output\(5),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_SP_ADDER|Add0~11\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~12_combout\,
	cout => \U_CPU|U_datapath|U_SP_ADDER|Add0~13\);

-- Location: LCCOMB_X26_Y20_N12
\U_CPU|U_datapath|U_SP_ADDER|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~14_combout\ = ((\U_CPU|U_datapath|U_SPL|output\(6) $ (\U_CPU|U_controller|WideOr33~combout\ $ (!\U_CPU|U_datapath|U_SP_ADDER|Add0~13\)))) # (GND)
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~15\ = CARRY((\U_CPU|U_datapath|U_SPL|output\(6) & ((\U_CPU|U_controller|WideOr33~combout\) # (!\U_CPU|U_datapath|U_SP_ADDER|Add0~13\))) # (!\U_CPU|U_datapath|U_SPL|output\(6) & (\U_CPU|U_controller|WideOr33~combout\ & 
-- !\U_CPU|U_datapath|U_SP_ADDER|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_SPL|output\(6),
	datab => \U_CPU|U_controller|WideOr33~combout\,
	datad => VCC,
	cin => \U_CPU|U_datapath|U_SP_ADDER|Add0~13\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~14_combout\,
	cout => \U_CPU|U_datapath|U_SP_ADDER|Add0~15\);

-- Location: LCCOMB_X26_Y20_N14
\U_CPU|U_datapath|U_SP_ADDER|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~16_combout\ = (\U_CPU|U_datapath|U_SPL|output\(7) & ((\U_CPU|U_controller|WideOr33~combout\ & (\U_CPU|U_datapath|U_SP_ADDER|Add0~15\ & VCC)) # (!\U_CPU|U_controller|WideOr33~combout\ & 
-- (!\U_CPU|U_datapath|U_SP_ADDER|Add0~15\)))) # (!\U_CPU|U_datapath|U_SPL|output\(7) & ((\U_CPU|U_controller|WideOr33~combout\ & (!\U_CPU|U_datapath|U_SP_ADDER|Add0~15\)) # (!\U_CPU|U_controller|WideOr33~combout\ & ((\U_CPU|U_datapath|U_SP_ADDER|Add0~15\) # 
-- (GND)))))
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~17\ = CARRY((\U_CPU|U_datapath|U_SPL|output\(7) & (!\U_CPU|U_controller|WideOr33~combout\ & !\U_CPU|U_datapath|U_SP_ADDER|Add0~15\)) # (!\U_CPU|U_datapath|U_SPL|output\(7) & ((!\U_CPU|U_datapath|U_SP_ADDER|Add0~15\) # 
-- (!\U_CPU|U_controller|WideOr33~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_SPL|output\(7),
	datab => \U_CPU|U_controller|WideOr33~combout\,
	datad => VCC,
	cin => \U_CPU|U_datapath|U_SP_ADDER|Add0~15\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~16_combout\,
	cout => \U_CPU|U_datapath|U_SP_ADDER|Add0~17\);

-- Location: LCCOMB_X26_Y20_N18
\U_CPU|U_datapath|U_SP_ADDER|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~20_combout\ = (\U_CPU|U_controller|WideOr33~combout\ & ((\U_CPU|U_datapath|U_SPH|output\(1) & (\U_CPU|U_datapath|U_SP_ADDER|Add0~19\ & VCC)) # (!\U_CPU|U_datapath|U_SPH|output\(1) & 
-- (!\U_CPU|U_datapath|U_SP_ADDER|Add0~19\)))) # (!\U_CPU|U_controller|WideOr33~combout\ & ((\U_CPU|U_datapath|U_SPH|output\(1) & (!\U_CPU|U_datapath|U_SP_ADDER|Add0~19\)) # (!\U_CPU|U_datapath|U_SPH|output\(1) & ((\U_CPU|U_datapath|U_SP_ADDER|Add0~19\) # 
-- (GND)))))
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~21\ = CARRY((\U_CPU|U_controller|WideOr33~combout\ & (!\U_CPU|U_datapath|U_SPH|output\(1) & !\U_CPU|U_datapath|U_SP_ADDER|Add0~19\)) # (!\U_CPU|U_controller|WideOr33~combout\ & ((!\U_CPU|U_datapath|U_SP_ADDER|Add0~19\) # 
-- (!\U_CPU|U_datapath|U_SPH|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr33~combout\,
	datab => \U_CPU|U_datapath|U_SPH|output\(1),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_SP_ADDER|Add0~19\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~20_combout\,
	cout => \U_CPU|U_datapath|U_SP_ADDER|Add0~21\);

-- Location: LCCOMB_X26_Y20_N20
\U_CPU|U_datapath|U_SP_ADDER|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~22_combout\ = ((\U_CPU|U_controller|WideOr33~combout\ $ (\U_CPU|U_datapath|U_SPH|output\(2) $ (!\U_CPU|U_datapath|U_SP_ADDER|Add0~21\)))) # (GND)
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~23\ = CARRY((\U_CPU|U_controller|WideOr33~combout\ & ((\U_CPU|U_datapath|U_SPH|output\(2)) # (!\U_CPU|U_datapath|U_SP_ADDER|Add0~21\))) # (!\U_CPU|U_controller|WideOr33~combout\ & (\U_CPU|U_datapath|U_SPH|output\(2) & 
-- !\U_CPU|U_datapath|U_SP_ADDER|Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr33~combout\,
	datab => \U_CPU|U_datapath|U_SPH|output\(2),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_SP_ADDER|Add0~21\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~22_combout\,
	cout => \U_CPU|U_datapath|U_SP_ADDER|Add0~23\);

-- Location: LCCOMB_X26_Y20_N22
\U_CPU|U_datapath|U_SP_ADDER|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~24_combout\ = (\U_CPU|U_controller|WideOr33~combout\ & ((\U_CPU|U_datapath|U_SPH|output\(3) & (\U_CPU|U_datapath|U_SP_ADDER|Add0~23\ & VCC)) # (!\U_CPU|U_datapath|U_SPH|output\(3) & 
-- (!\U_CPU|U_datapath|U_SP_ADDER|Add0~23\)))) # (!\U_CPU|U_controller|WideOr33~combout\ & ((\U_CPU|U_datapath|U_SPH|output\(3) & (!\U_CPU|U_datapath|U_SP_ADDER|Add0~23\)) # (!\U_CPU|U_datapath|U_SPH|output\(3) & ((\U_CPU|U_datapath|U_SP_ADDER|Add0~23\) # 
-- (GND)))))
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~25\ = CARRY((\U_CPU|U_controller|WideOr33~combout\ & (!\U_CPU|U_datapath|U_SPH|output\(3) & !\U_CPU|U_datapath|U_SP_ADDER|Add0~23\)) # (!\U_CPU|U_controller|WideOr33~combout\ & ((!\U_CPU|U_datapath|U_SP_ADDER|Add0~23\) # 
-- (!\U_CPU|U_datapath|U_SPH|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr33~combout\,
	datab => \U_CPU|U_datapath|U_SPH|output\(3),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_SP_ADDER|Add0~23\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~24_combout\,
	cout => \U_CPU|U_datapath|U_SP_ADDER|Add0~25\);

-- Location: LCCOMB_X26_Y20_N24
\U_CPU|U_datapath|U_SP_ADDER|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~26_combout\ = ((\U_CPU|U_datapath|U_SPH|output\(4) $ (\U_CPU|U_controller|WideOr33~combout\ $ (!\U_CPU|U_datapath|U_SP_ADDER|Add0~25\)))) # (GND)
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~27\ = CARRY((\U_CPU|U_datapath|U_SPH|output\(4) & ((\U_CPU|U_controller|WideOr33~combout\) # (!\U_CPU|U_datapath|U_SP_ADDER|Add0~25\))) # (!\U_CPU|U_datapath|U_SPH|output\(4) & (\U_CPU|U_controller|WideOr33~combout\ & 
-- !\U_CPU|U_datapath|U_SP_ADDER|Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_SPH|output\(4),
	datab => \U_CPU|U_controller|WideOr33~combout\,
	datad => VCC,
	cin => \U_CPU|U_datapath|U_SP_ADDER|Add0~25\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~26_combout\,
	cout => \U_CPU|U_datapath|U_SP_ADDER|Add0~27\);

-- Location: LCCOMB_X26_Y20_N26
\U_CPU|U_datapath|U_SP_ADDER|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~28_combout\ = (\U_CPU|U_controller|WideOr33~combout\ & ((\U_CPU|U_datapath|U_SPH|output\(5) & (\U_CPU|U_datapath|U_SP_ADDER|Add0~27\ & VCC)) # (!\U_CPU|U_datapath|U_SPH|output\(5) & 
-- (!\U_CPU|U_datapath|U_SP_ADDER|Add0~27\)))) # (!\U_CPU|U_controller|WideOr33~combout\ & ((\U_CPU|U_datapath|U_SPH|output\(5) & (!\U_CPU|U_datapath|U_SP_ADDER|Add0~27\)) # (!\U_CPU|U_datapath|U_SPH|output\(5) & ((\U_CPU|U_datapath|U_SP_ADDER|Add0~27\) # 
-- (GND)))))
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~29\ = CARRY((\U_CPU|U_controller|WideOr33~combout\ & (!\U_CPU|U_datapath|U_SPH|output\(5) & !\U_CPU|U_datapath|U_SP_ADDER|Add0~27\)) # (!\U_CPU|U_controller|WideOr33~combout\ & ((!\U_CPU|U_datapath|U_SP_ADDER|Add0~27\) # 
-- (!\U_CPU|U_datapath|U_SPH|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr33~combout\,
	datab => \U_CPU|U_datapath|U_SPH|output\(5),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_SP_ADDER|Add0~27\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~28_combout\,
	cout => \U_CPU|U_datapath|U_SP_ADDER|Add0~29\);

-- Location: LCCOMB_X26_Y20_N28
\U_CPU|U_datapath|U_SP_ADDER|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~30_combout\ = ((\U_CPU|U_datapath|U_SPH|output\(6) $ (\U_CPU|U_controller|WideOr33~combout\ $ (!\U_CPU|U_datapath|U_SP_ADDER|Add0~29\)))) # (GND)
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~31\ = CARRY((\U_CPU|U_datapath|U_SPH|output\(6) & ((\U_CPU|U_controller|WideOr33~combout\) # (!\U_CPU|U_datapath|U_SP_ADDER|Add0~29\))) # (!\U_CPU|U_datapath|U_SPH|output\(6) & (\U_CPU|U_controller|WideOr33~combout\ & 
-- !\U_CPU|U_datapath|U_SP_ADDER|Add0~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_SPH|output\(6),
	datab => \U_CPU|U_controller|WideOr33~combout\,
	datad => VCC,
	cin => \U_CPU|U_datapath|U_SP_ADDER|Add0~29\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~30_combout\,
	cout => \U_CPU|U_datapath|U_SP_ADDER|Add0~31\);

-- Location: LCCOMB_X24_Y18_N30
\U_CPU|U_datapath|U_X_ADDER|Add0~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~49_combout\ = \U_CPU|U_controller|X_LD_MUX_sel\(0) $ (\U_CPU|U_datapath|U_X_ADDER|Add0~31\ $ (\U_CPU|U_datapath|U_XH|output\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datad => \U_CPU|U_datapath|U_XH|output\(7),
	cin => \U_CPU|U_datapath|U_X_ADDER|Add0~31\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~49_combout\);

-- Location: LCCOMB_X26_Y20_N30
\U_CPU|U_datapath|U_SP_ADDER|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~46_combout\ = \U_CPU|U_datapath|U_SPH|output\(7) $ (\U_CPU|U_datapath|U_SP_ADDER|Add0~31\ $ (\U_CPU|U_controller|WideOr33~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_SPH|output\(7),
	datad => \U_CPU|U_controller|WideOr33~combout\,
	cin => \U_CPU|U_datapath|U_SP_ADDER|Add0~31\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~46_combout\);

-- Location: FF_X23_Y21_N17
\U_CPU|U_datapath|U_XL|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_X_ADDER|Add0~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_XL|output\(0));

-- Location: LCCOMB_X16_Y18_N6
\U_CPU|U_controller|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector6~0_combout\ = (\U_CPU|U_controller|state.BPLA~q\ & (\U_CPU|U_datapath|U_STATUS_REG_SIGNED|output\(0) & ((\U_CPU|U_datapath|U_STATUS_REG_ZERO|output\(0)) # (!\U_CPU|U_controller|state.BNEA~q\)))) # 
-- (!\U_CPU|U_controller|state.BPLA~q\ & ((\U_CPU|U_datapath|U_STATUS_REG_ZERO|output\(0)) # ((!\U_CPU|U_controller|state.BNEA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.BPLA~q\,
	datab => \U_CPU|U_datapath|U_STATUS_REG_ZERO|output\(0),
	datac => \U_CPU|U_controller|state.BNEA~q\,
	datad => \U_CPU|U_datapath|U_STATUS_REG_SIGNED|output\(0),
	combout => \U_CPU|U_controller|Selector6~0_combout\);

-- Location: LCCOMB_X16_Y18_N26
\U_CPU|U_controller|Selector4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector4~4_combout\ = (\U_CPU|U_controller|state.PC_ADD_THREE_2~q\) # ((\U_CPU|U_controller|state.LDAA_X_3~q\) # ((\U_CPU|U_controller|state.Call_6~q\) # (\U_CPU|U_controller|state.PC_ADD_ONE_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.PC_ADD_THREE_2~q\,
	datab => \U_CPU|U_controller|state.LDAA_X_3~q\,
	datac => \U_CPU|U_controller|state.Call_6~q\,
	datad => \U_CPU|U_controller|state.PC_ADD_ONE_2~q\,
	combout => \U_CPU|U_controller|Selector4~4_combout\);

-- Location: LCCOMB_X16_Y18_N28
\U_CPU|U_controller|Selector4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector4~5_combout\ = ((\U_CPU|U_controller|Selector4~4_combout\) # ((\U_CPU|U_controller|state.OPCODE_FETCH_4~q\) # (\U_CPU|U_controller|ADDRL_en~0_combout\))) # (!\U_CPU|U_controller|Selector6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Selector6~0_combout\,
	datab => \U_CPU|U_controller|Selector4~4_combout\,
	datac => \U_CPU|U_controller|state.OPCODE_FETCH_4~q\,
	datad => \U_CPU|U_controller|ADDRL_en~0_combout\,
	combout => \U_CPU|U_controller|Selector4~5_combout\);

-- Location: LCCOMB_X16_Y18_N0
\U_CPU|U_controller|Selector4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector4~6_combout\ = (((\U_CPU|U_controller|Selector4~13_combout\) # (\U_CPU|U_controller|Selector4~5_combout\)) # (!\U_CPU|U_controller|Selector4~3_combout\)) # (!\U_CPU|U_controller|Selector4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Selector4~2_combout\,
	datab => \U_CPU|U_controller|Selector4~3_combout\,
	datac => \U_CPU|U_controller|Selector4~13_combout\,
	datad => \U_CPU|U_controller|Selector4~5_combout\,
	combout => \U_CPU|U_controller|Selector4~6_combout\);

-- Location: FF_X23_Y18_N3
\U_CPU|U_datapath|U_XH|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_X_ADDER|Add0~34_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_XH|output\(5));

-- Location: FF_X23_Y18_N7
\U_CPU|U_datapath|U_XH|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_X_ADDER|Add0~37_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_XH|output\(3));

-- Location: FF_X20_Y20_N17
\U_CPU|U_datapath|U_B|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|state.LDAA_X~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_B|output\(6));

-- Location: FF_X22_Y18_N11
\U_CPU|U_datapath|U_B|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_X_ADDER|Add0~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|state.LDAA_X~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_B|output\(5));

-- Location: FF_X22_Y18_N9
\U_CPU|U_datapath|U_B|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_X_ADDER|Add0~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|state.LDAA_X~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_B|output\(4));

-- Location: FF_X22_Y18_N7
\U_CPU|U_datapath|U_B|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|state.LDAA_X~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_B|output\(3));

-- Location: FF_X23_Y21_N23
\U_CPU|U_datapath|U_XL|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_X_ADDER|Add0~48_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_XL|output\(1));

-- Location: FF_X22_Y23_N9
\U_CPU|U_datapath|U_PCH|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_PC_LD_MUX|Mux1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_PCH|output\(6));

-- Location: FF_X21_Y19_N3
\U_CPU|U_datapath|U_PCL|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_PC_LD_MUX|Mux8~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_PCL|output\(7));

-- Location: FF_X21_Y19_N13
\U_CPU|U_datapath|U_PCL|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_PC_LD_MUX|Mux13~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_PCL|output\(2));

-- Location: FF_X15_Y18_N17
\U_CPU|U_controller|state.PC_ADD_TWO_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.PC_ADD_TWO_1~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.PC_ADD_TWO_2~q\);

-- Location: LCCOMB_X15_Y18_N0
\U_CPU|U_controller|PC_ADD_sel[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|PC_ADD_sel[1]~0_combout\ = (!\U_CPU|U_controller|state.PC_ADD_THREE_2~q\ & !\U_CPU|U_controller|state.PC_ADD_TWO_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_controller|state.PC_ADD_THREE_2~q\,
	datad => \U_CPU|U_controller|state.PC_ADD_TWO_2~q\,
	combout => \U_CPU|U_controller|PC_ADD_sel[1]~0_combout\);

-- Location: FF_X24_Y20_N19
\U_CPU|U_datapath|U_SPH|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_SP_ADDER|Add0~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr34~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_SPH|output\(6));

-- Location: FF_X24_Y20_N5
\U_CPU|U_datapath|U_SPH|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_SP_ADDER|Add0~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr34~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_SPH|output\(5));

-- Location: FF_X24_Y20_N31
\U_CPU|U_datapath|U_SPH|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_SP_ADDER|Add0~34_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr34~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_SPH|output\(4));

-- Location: FF_X23_Y19_N13
\U_CPU|U_datapath|U_ADDRH|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|ADDRH_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ADDRH|output\(3));

-- Location: LCCOMB_X23_Y19_N12
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux4~0_combout\ = (\U_CPU|U_controller|WideOr14~combout\ & ((\U_CPU|U_controller|WideOr13~combout\) # ((\U_CPU|U_datapath|U_ADDRH|output\(3))))) # (!\U_CPU|U_controller|WideOr14~combout\ & 
-- (!\U_CPU|U_controller|WideOr13~combout\ & ((\U_CPU|U_datapath|U_PC_ADDER|output[11]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr14~combout\,
	datab => \U_CPU|U_controller|WideOr13~combout\,
	datac => \U_CPU|U_datapath|U_ADDRH|output\(3),
	datad => \U_CPU|U_datapath|U_PC_ADDER|output[11]~22_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux4~0_combout\);

-- Location: FF_X24_Y20_N25
\U_CPU|U_datapath|U_SPH|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_SP_ADDER|Add0~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr34~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_SPH|output\(3));

-- Location: LCCOMB_X23_Y19_N22
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux4~1_combout\ = (\U_CPU|U_controller|WideOr13~combout\ & ((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux4~0_combout\ & ((\U_CPU|U_datapath|U_SPH|output\(3)))) # (!\U_CPU|U_datapath|U_ADDRESS_MUX|Mux4~0_combout\ & 
-- (\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[11]~22_combout\)))) # (!\U_CPU|U_controller|WideOr13~combout\ & (((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[11]~22_combout\,
	datab => \U_CPU|U_controller|WideOr13~combout\,
	datac => \U_CPU|U_datapath|U_SPH|output\(3),
	datad => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux4~0_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux4~1_combout\);

-- Location: FF_X22_Y21_N9
\U_CPU|U_datapath|U_ADDRH|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|ADDRH_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ADDRH|output\(2));

-- Location: LCCOMB_X22_Y21_N2
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux5~0_combout\ = (\U_CPU|U_controller|WideOr14~combout\ & (\U_CPU|U_controller|WideOr13~combout\)) # (!\U_CPU|U_controller|WideOr14~combout\ & ((\U_CPU|U_controller|WideOr13~combout\ & 
-- ((\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[10]~20_combout\))) # (!\U_CPU|U_controller|WideOr13~combout\ & (\U_CPU|U_datapath|U_PC_ADDER|output[10]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr14~combout\,
	datab => \U_CPU|U_controller|WideOr13~combout\,
	datac => \U_CPU|U_datapath|U_PC_ADDER|output[10]~20_combout\,
	datad => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[10]~20_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux5~0_combout\);

-- Location: FF_X24_Y20_N27
\U_CPU|U_datapath|U_SPH|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_SP_ADDER|Add0~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr34~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_SPH|output\(2));

-- Location: LCCOMB_X22_Y21_N8
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux5~1_combout\ = (\U_CPU|U_controller|WideOr14~combout\ & ((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux5~0_combout\ & (\U_CPU|U_datapath|U_SPH|output\(2))) # (!\U_CPU|U_datapath|U_ADDRESS_MUX|Mux5~0_combout\ & 
-- ((\U_CPU|U_datapath|U_ADDRH|output\(2)))))) # (!\U_CPU|U_controller|WideOr14~combout\ & (((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr14~combout\,
	datab => \U_CPU|U_datapath|U_SPH|output\(2),
	datac => \U_CPU|U_datapath|U_ADDRH|output\(2),
	datad => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux5~0_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux5~1_combout\);

-- Location: FF_X24_Y20_N15
\U_CPU|U_datapath|U_SPL|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_SP_ADDER|Add0~42_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_SPL|output\(3));

-- Location: FF_X23_Y21_N11
\U_CPU|U_datapath|U_ADDRL|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_X_ADDER|Add0~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|ADDRL_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ADDRL|output\(1));

-- Location: FF_X20_Y18_N27
\U_CPU|U_datapath|U_ALU_REG|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_ALU|Mux7~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ALU_REG|output\(0));

-- Location: LCCOMB_X23_Y20_N12
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~0_combout\ = (\U_CPU|U_controller|state.LDAD~q\ & (\U_CPU|U_datapath|U_D|output\(0) & ((\U_CPU|U_datapath|U_ALU_REG|output\(0)) # (!\U_CPU|U_controller|state.LOAD_ALU_TO_A~q\)))) # 
-- (!\U_CPU|U_controller|state.LDAD~q\ & ((\U_CPU|U_datapath|U_ALU_REG|output\(0)) # ((!\U_CPU|U_controller|state.LOAD_ALU_TO_A~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.LDAD~q\,
	datab => \U_CPU|U_datapath|U_ALU_REG|output\(0),
	datac => \U_CPU|U_controller|state.LOAD_ALU_TO_A~q\,
	datad => \U_CPU|U_datapath|U_D|output\(0),
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~0_combout\);

-- Location: LCCOMB_X19_Y18_N4
\U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[0]~0_combout\ = (\U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(0)) # ((!\U_CPU|U_controller|state.RET_6~q\ & !\U_CPU|U_controller|state.Call_9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.RET_6~q\,
	datab => \U_CPU|U_controller|state.Call_9~q\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(0),
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[0]~0_combout\);

-- Location: LCCOMB_X22_Y20_N18
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~1_combout\ = (\U_CPU|U_controller|tri_enable[5]~0_combout\ & ((\U_CPU|U_controller|WideOr11~4_combout\) # ((\U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(0))))) # 
-- (!\U_CPU|U_controller|tri_enable[5]~0_combout\ & (\U_CPU|U_datapath|U_A|output\(0) & ((\U_CPU|U_controller|WideOr11~4_combout\) # (\U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|tri_enable[5]~0_combout\,
	datab => \U_CPU|U_controller|WideOr11~4_combout\,
	datac => \U_CPU|U_datapath|U_A|output\(0),
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(0),
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~1_combout\);

-- Location: LCCOMB_X23_Y20_N6
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~2_combout\ = (\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~0_combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[0]~0_combout\ & (\U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[0]~16_combout\ 
-- & \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~0_combout\,
	datab => \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[0]~0_combout\,
	datac => \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[0]~16_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~1_combout\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~2_combout\);

-- Location: LCCOMB_X16_Y18_N18
\U_CPU|U_controller|Selector6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector6~2_combout\ = (\U_CPU|U_controller|Selector6~0_combout\ & (!\U_CPU|U_controller|state.Call_6~q\ & \U_CPU|U_controller|Selector6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Selector6~0_combout\,
	datab => \U_CPU|U_controller|state.Call_6~q\,
	datad => \U_CPU|U_controller|Selector6~1_combout\,
	combout => \U_CPU|U_controller|Selector6~2_combout\);

-- Location: LCCOMB_X21_Y21_N10
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~3_combout\ = (\U_CPU|U_controller|state.LOAD_ALU_TO_A~q\) # (((\U_CPU|U_controller|state.LDAD~q\) # (!\U_CPU|U_controller|WideOr15~0_combout\)) # (!\U_CPU|U_controller|tri_enable[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.LOAD_ALU_TO_A~q\,
	datab => \U_CPU|U_controller|tri_enable[5]~0_combout\,
	datac => \U_CPU|U_controller|state.LDAD~q\,
	datad => \U_CPU|U_controller|WideOr15~0_combout\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~3_combout\);

-- Location: FF_X24_Y22_N17
\U_REG_INPORT0|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_switches[0]~input_o\,
	sload => VCC,
	ena => \ALT_INV_input_switch_sel~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_INPORT0|output\(0));

-- Location: LCCOMB_X23_Y21_N16
\U_CPU|U_datapath|U_X_ADDER|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~3_combout\ = (\U_CPU|U_controller|WideOr35~0_combout\ & (\U_CPU|U_controller|X_LD_MUX_sel\(0) & ((\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5_combout\)))) # (!\U_CPU|U_controller|WideOr35~0_combout\ & 
-- (((\U_CPU|U_datapath|U_X_ADDER|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datab => \U_CPU|U_controller|WideOr35~0_combout\,
	datac => \U_CPU|U_datapath|U_X_ADDER|Add0~1_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5_combout\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~3_combout\);

-- Location: FF_X22_Y22_N23
\U_CPU|U_datapath|U_D|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|state.STAR_D~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_D|output\(7));

-- Location: FF_X16_Y21_N9
\U_CPU|U_controller|state.ANDR_D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.ANDR_D~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.ANDR_D~q\);

-- Location: LCCOMB_X17_Y21_N22
\U_CPU|U_datapath|U_ALU|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux0~1_combout\ = (!\U_CPU|U_controller|state.RORC~q\ & (!\U_CPU|U_controller|state.CLRC~q\ & (\U_CPU|U_datapath|U_A|output\(6) & \U_CPU|U_controller|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.RORC~q\,
	datab => \U_CPU|U_controller|state.CLRC~q\,
	datac => \U_CPU|U_datapath|U_A|output\(6),
	datad => \U_CPU|U_controller|WideOr4~0_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux0~1_combout\);

-- Location: LCCOMB_X22_Y22_N24
\U_CPU|U_datapath|U_ALU|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux0~2_combout\ = (\U_CPU|U_controller|WideOr27~combout\ & (\U_CPU|U_datapath|U_A|output\(7) & (\U_CPU|U_datapath|U_D|output\(7)))) # (!\U_CPU|U_controller|WideOr27~combout\ & (((\U_CPU|U_datapath|U_ALU|Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_A|output\(7),
	datab => \U_CPU|U_datapath|U_D|output\(7),
	datac => \U_CPU|U_datapath|U_ALU|Add2~16_combout\,
	datad => \U_CPU|U_controller|WideOr27~combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux0~2_combout\);

-- Location: LCCOMB_X21_Y22_N10
\U_CPU|U_datapath|U_ALU|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux0~3_combout\ = (\U_CPU|U_controller|WideOr26~0_combout\ & (((\U_CPU|U_controller|WideOr25~0_combout\)))) # (!\U_CPU|U_controller|WideOr26~0_combout\ & ((\U_CPU|U_controller|WideOr25~0_combout\ & 
-- ((\U_CPU|U_datapath|U_ALU|Mux0~1_combout\))) # (!\U_CPU|U_controller|WideOr25~0_combout\ & (\U_CPU|U_datapath|U_ALU|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr26~0_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Mux0~2_combout\,
	datac => \U_CPU|U_controller|WideOr25~0_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux0~1_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux0~3_combout\);

-- Location: LCCOMB_X19_Y22_N16
\U_CPU|U_datapath|U_ALU|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux2~1_combout\ = (!\U_CPU|U_datapath|U_ALU|Mux2~0_combout\ & ((\U_CPU|U_controller|WideOr27~combout\ & (\U_CPU|U_datapath|U_A|output\(6))) # (!\U_CPU|U_controller|WideOr27~combout\ & ((\U_CPU|U_datapath|U_A|output\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_A|output\(6),
	datab => \U_CPU|U_datapath|U_A|output\(4),
	datac => \U_CPU|U_controller|WideOr27~combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux2~0_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux2~1_combout\);

-- Location: LCCOMB_X23_Y22_N0
\U_CPU|U_datapath|U_ALU|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux2~3_combout\ = (\U_CPU|U_controller|WideOr25~0_combout\ & ((\U_CPU|U_datapath|U_A|output\(5)) # (\U_CPU|U_datapath|U_D|output\(5)))) # (!\U_CPU|U_controller|WideOr25~0_combout\ & (\U_CPU|U_datapath|U_A|output\(5) & 
-- \U_CPU|U_datapath|U_D|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr25~0_combout\,
	datab => \U_CPU|U_datapath|U_A|output\(5),
	datad => \U_CPU|U_datapath|U_D|output\(5),
	combout => \U_CPU|U_datapath|U_ALU|Mux2~3_combout\);

-- Location: LCCOMB_X20_Y22_N0
\U_CPU|U_datapath|U_ALU|Mux2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux2~6_combout\ = (\U_CPU|U_datapath|U_ALU|Mux2~4_combout\ & (((\U_CPU|U_datapath|U_ALU|Mux2~5_combout\)))) # (!\U_CPU|U_datapath|U_ALU|Mux2~4_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux2~5_combout\ & 
-- ((\U_CPU|U_datapath|U_ALU|Add5~10_combout\))) # (!\U_CPU|U_datapath|U_ALU|Mux2~5_combout\ & (\U_CPU|U_datapath|U_ALU|Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Add4~10_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Add5~10_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux2~4_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux2~5_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux2~6_combout\);

-- Location: LCCOMB_X23_Y22_N2
\U_CPU|U_datapath|U_ALU|Mux2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux2~7_combout\ = (\U_CPU|U_datapath|U_ALU|Mux2~4_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux2~6_combout\ & (\U_CPU|U_datapath|U_ALU|Mux2~3_combout\)) # (!\U_CPU|U_datapath|U_ALU|Mux2~6_combout\ & 
-- ((\U_CPU|U_datapath|U_ALU|Add1~10_combout\))))) # (!\U_CPU|U_datapath|U_ALU|Mux2~4_combout\ & (((\U_CPU|U_datapath|U_ALU|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Mux2~4_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Mux2~3_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Add1~10_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux2~6_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux2~7_combout\);

-- Location: LCCOMB_X23_Y22_N28
\U_CPU|U_datapath|U_ALU|Mux2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux2~8_combout\ = (\U_CPU|U_datapath|U_ALU|Mux2~2_combout\ & (((\U_CPU|U_controller|WideOr25~0_combout\)))) # (!\U_CPU|U_datapath|U_ALU|Mux2~2_combout\ & ((\U_CPU|U_controller|WideOr25~0_combout\ & 
-- (\U_CPU|U_datapath|U_ALU|Mux2~3_combout\)) # (!\U_CPU|U_controller|WideOr25~0_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux2~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Mux2~2_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Mux2~3_combout\,
	datac => \U_CPU|U_controller|WideOr25~0_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux2~7_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux2~8_combout\);

-- Location: LCCOMB_X20_Y20_N16
\U_CPU|U_datapath|U_ALU|output_sig~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|output_sig~0_combout\ = \U_CPU|U_datapath|U_D|output\(5) $ (\U_CPU|U_datapath|U_A|output\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_D|output\(5),
	datad => \U_CPU|U_datapath|U_A|output\(5),
	combout => \U_CPU|U_datapath|U_ALU|output_sig~0_combout\);

-- Location: LCCOMB_X23_Y22_N6
\U_CPU|U_datapath|U_ALU|Mux2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux2~9_combout\ = (\U_CPU|U_datapath|U_ALU|Mux2~2_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux2~8_combout\ & ((\U_CPU|U_datapath|U_ALU|output_sig~0_combout\))) # (!\U_CPU|U_datapath|U_ALU|Mux2~8_combout\ & 
-- (\U_CPU|U_datapath|U_ALU|Add2~12_combout\)))) # (!\U_CPU|U_datapath|U_ALU|Mux2~2_combout\ & (((\U_CPU|U_datapath|U_ALU|Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Mux2~2_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Add2~12_combout\,
	datac => \U_CPU|U_datapath|U_ALU|output_sig~0_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux2~8_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux2~9_combout\);

-- Location: LCCOMB_X19_Y22_N10
\U_CPU|U_datapath|U_ALU|Mux2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux2~10_combout\ = (\U_CPU|U_datapath|U_ALU|Mux2~1_combout\) # ((\U_CPU|U_datapath|U_ALU|Mux5~0_combout\ & \U_CPU|U_datapath|U_ALU|Mux2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_ALU|Mux5~0_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux2~9_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux2~1_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux2~10_combout\);

-- Location: LCCOMB_X22_Y22_N30
\U_CPU|U_datapath|U_ALU|output_sig~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|output_sig~3_combout\ = \U_CPU|U_datapath|U_A|output\(6) $ (\U_CPU|U_datapath|U_D|output\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_A|output\(6),
	datad => \U_CPU|U_datapath|U_D|output\(6),
	combout => \U_CPU|U_datapath|U_ALU|output_sig~3_combout\);

-- Location: LCCOMB_X19_Y22_N12
\U_CPU|U_datapath|U_ALU|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux3~0_combout\ = (!\U_CPU|U_datapath|U_ALU|Mux2~0_combout\ & ((\U_CPU|U_controller|WideOr27~combout\ & (\U_CPU|U_datapath|U_A|output\(5))) # (!\U_CPU|U_controller|WideOr27~combout\ & ((\U_CPU|U_datapath|U_A|output\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_A|output\(5),
	datab => \U_CPU|U_controller|WideOr27~combout\,
	datac => \U_CPU|U_datapath|U_A|output\(3),
	datad => \U_CPU|U_datapath|U_ALU|Mux2~0_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y20_N26
\U_CPU|U_datapath|U_ALU|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux3~1_combout\ = (\U_CPU|U_controller|WideOr25~0_combout\ & ((\U_CPU|U_datapath|U_A|output\(4)) # (\U_CPU|U_datapath|U_D|output\(4)))) # (!\U_CPU|U_controller|WideOr25~0_combout\ & (\U_CPU|U_datapath|U_A|output\(4) & 
-- \U_CPU|U_datapath|U_D|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr25~0_combout\,
	datab => \U_CPU|U_datapath|U_A|output\(4),
	datad => \U_CPU|U_datapath|U_D|output\(4),
	combout => \U_CPU|U_datapath|U_ALU|Mux3~1_combout\);

-- Location: LCCOMB_X21_Y20_N28
\U_CPU|U_datapath|U_ALU|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux3~2_combout\ = (\U_CPU|U_datapath|U_ALU|Mux2~5_combout\ & ((\U_CPU|U_datapath|U_ALU|Add5~8_combout\) # ((\U_CPU|U_datapath|U_ALU|Mux2~4_combout\)))) # (!\U_CPU|U_datapath|U_ALU|Mux2~5_combout\ & 
-- (((\U_CPU|U_datapath|U_ALU|Add4~8_combout\ & !\U_CPU|U_datapath|U_ALU|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Mux2~5_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Add5~8_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Add4~8_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux2~4_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux3~2_combout\);

-- Location: LCCOMB_X21_Y20_N22
\U_CPU|U_datapath|U_ALU|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux3~3_combout\ = (\U_CPU|U_datapath|U_ALU|Mux2~4_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux3~2_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux3~1_combout\))) # (!\U_CPU|U_datapath|U_ALU|Mux3~2_combout\ & 
-- (\U_CPU|U_datapath|U_ALU|Add1~8_combout\)))) # (!\U_CPU|U_datapath|U_ALU|Mux2~4_combout\ & (((\U_CPU|U_datapath|U_ALU|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Add1~8_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Mux2~4_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux3~1_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux3~2_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux3~3_combout\);

-- Location: LCCOMB_X20_Y18_N6
\U_CPU|U_datapath|U_ALU|Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux3~4_combout\ = (\U_CPU|U_datapath|U_ALU|Mux2~2_combout\ & (((\U_CPU|U_controller|WideOr25~0_combout\)))) # (!\U_CPU|U_datapath|U_ALU|Mux2~2_combout\ & ((\U_CPU|U_controller|WideOr25~0_combout\ & 
-- (\U_CPU|U_datapath|U_ALU|Mux3~1_combout\)) # (!\U_CPU|U_controller|WideOr25~0_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Mux3~1_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Mux2~2_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux3~3_combout\,
	datad => \U_CPU|U_controller|WideOr25~0_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux3~4_combout\);

-- Location: LCCOMB_X20_Y20_N10
\U_CPU|U_datapath|U_ALU|output_sig~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|output_sig~4_combout\ = \U_CPU|U_datapath|U_A|output\(4) $ (\U_CPU|U_datapath|U_D|output\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CPU|U_datapath|U_A|output\(4),
	datad => \U_CPU|U_datapath|U_D|output\(4),
	combout => \U_CPU|U_datapath|U_ALU|output_sig~4_combout\);

-- Location: LCCOMB_X19_Y22_N22
\U_CPU|U_datapath|U_ALU|Mux3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux3~5_combout\ = (\U_CPU|U_datapath|U_ALU|Mux2~2_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux3~4_combout\ & (\U_CPU|U_datapath|U_ALU|output_sig~4_combout\)) # (!\U_CPU|U_datapath|U_ALU|Mux3~4_combout\ & 
-- ((\U_CPU|U_datapath|U_ALU|Add2~10_combout\))))) # (!\U_CPU|U_datapath|U_ALU|Mux2~2_combout\ & (((\U_CPU|U_datapath|U_ALU|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|output_sig~4_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Add2~10_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux2~2_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux3~4_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux3~5_combout\);

-- Location: LCCOMB_X19_Y22_N24
\U_CPU|U_datapath|U_ALU|Mux3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux3~6_combout\ = (\U_CPU|U_datapath|U_ALU|Mux3~0_combout\) # ((\U_CPU|U_datapath|U_ALU|Mux3~5_combout\ & \U_CPU|U_datapath|U_ALU|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Mux3~0_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux3~5_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux5~0_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux3~6_combout\);

-- Location: LCCOMB_X23_Y20_N24
\U_CPU|U_datapath|U_ALU|output_sig~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|output_sig~5_combout\ = \U_CPU|U_datapath|U_D|output\(2) $ (\U_CPU|U_datapath|U_A|output\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_D|output\(2),
	datad => \U_CPU|U_datapath|U_A|output\(2),
	combout => \U_CPU|U_datapath|U_ALU|output_sig~5_combout\);

-- Location: LCCOMB_X17_Y21_N18
\U_CPU|U_controller|WideOr23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr23~0_combout\ = (\U_CPU|U_controller|state.SETC~q\) # ((\U_CPU|U_controller|state.ADCR_D~q\) # ((\U_CPU|U_controller|state.CLRC~q\) # (\U_CPU|U_controller|state.RORC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.SETC~q\,
	datab => \U_CPU|U_controller|state.ADCR_D~q\,
	datac => \U_CPU|U_controller|state.CLRC~q\,
	datad => \U_CPU|U_controller|state.RORC~q\,
	combout => \U_CPU|U_controller|WideOr23~0_combout\);

-- Location: LCCOMB_X17_Y21_N4
\U_CPU|U_controller|WideOr23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr23~combout\ = (\U_CPU|U_controller|WideOr23~0_combout\) # ((\U_CPU|U_controller|state.CMPR_D~q\) # (\U_CPU|U_controller|state.SBCR_D~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_controller|WideOr23~0_combout\,
	datac => \U_CPU|U_controller|state.CMPR_D~q\,
	datad => \U_CPU|U_controller|state.SBCR_D~q\,
	combout => \U_CPU|U_controller|WideOr23~combout\);

-- Location: FF_X19_Y18_N27
\U_CPU|U_controller|state.BEQA_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|state.BEQA_3~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.BEQA_3~q\);

-- Location: FF_X22_Y20_N13
\U_CPU|U_datapath|U_BRANCH_TARGET_L|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|Selector6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(6));

-- Location: FF_X19_Y22_N11
\U_CPU|U_datapath|U_ALU_REG|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_ALU|Mux2~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ALU_REG|output\(5));

-- Location: LCCOMB_X20_Y20_N20
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[5]~10_combout\ = (\U_CPU|U_datapath|U_D|output\(5) & (((\U_CPU|U_datapath|U_ALU_REG|output\(5)) # (!\U_CPU|U_controller|state.LOAD_ALU_TO_A~q\)))) # (!\U_CPU|U_datapath|U_D|output\(5) & 
-- (!\U_CPU|U_controller|state.LDAD~q\ & ((\U_CPU|U_datapath|U_ALU_REG|output\(5)) # (!\U_CPU|U_controller|state.LOAD_ALU_TO_A~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_D|output\(5),
	datab => \U_CPU|U_controller|state.LDAD~q\,
	datac => \U_CPU|U_controller|state.LOAD_ALU_TO_A~q\,
	datad => \U_CPU|U_datapath|U_ALU_REG|output\(5),
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[5]~10_combout\);

-- Location: LCCOMB_X20_Y20_N22
\U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[5]~2_combout\ = (\U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(5)) # ((!\U_CPU|U_controller|state.Call_9~q\ & !\U_CPU|U_controller|state.RET_6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.Call_9~q\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(5),
	datad => \U_CPU|U_controller|state.RET_6~q\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[5]~2_combout\);

-- Location: LCCOMB_X20_Y20_N24
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[5]~11_combout\ = (\U_CPU|U_controller|WideOr11~4_combout\ & ((\U_CPU|U_controller|tri_enable[5]~0_combout\) # ((\U_CPU|U_datapath|U_A|output\(5))))) # (!\U_CPU|U_controller|WideOr11~4_combout\ & 
-- (\U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(5) & ((\U_CPU|U_controller|tri_enable[5]~0_combout\) # (\U_CPU|U_datapath|U_A|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr11~4_combout\,
	datab => \U_CPU|U_controller|tri_enable[5]~0_combout\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(5),
	datad => \U_CPU|U_datapath|U_A|output\(5),
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[5]~11_combout\);

-- Location: LCCOMB_X20_Y20_N2
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[5]~12_combout\ = (\U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[5]~18_combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[5]~10_combout\ & 
-- (\U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[5]~2_combout\ & \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[5]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[5]~18_combout\,
	datab => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[5]~10_combout\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[5]~2_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[5]~11_combout\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[5]~12_combout\);

-- Location: LCCOMB_X23_Y18_N2
\U_CPU|U_datapath|U_X_ADDER|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~34_combout\ = (\U_CPU|U_controller|WideOr35~0_combout\ & (((\U_CPU|U_datapath|U_X_ADDER|Add0~33_combout\ & !\U_CPU|U_controller|X_LD_MUX_sel\(0))))) # (!\U_CPU|U_controller|WideOr35~0_combout\ & 
-- (\U_CPU|U_datapath|U_X_ADDER|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr35~0_combout\,
	datab => \U_CPU|U_datapath|U_X_ADDER|Add0~28_combout\,
	datac => \U_CPU|U_datapath|U_X_ADDER|Add0~33_combout\,
	datad => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~34_combout\);

-- Location: FF_X19_Y22_N25
\U_CPU|U_datapath|U_ALU_REG|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_ALU|Mux3~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ALU_REG|output\(4));

-- Location: LCCOMB_X20_Y20_N4
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[4]~13_combout\ = (\U_CPU|U_datapath|U_ALU_REG|output\(4) & (((\U_CPU|U_datapath|U_D|output\(4))) # (!\U_CPU|U_controller|state.LDAD~q\))) # (!\U_CPU|U_datapath|U_ALU_REG|output\(4) & 
-- (!\U_CPU|U_controller|state.LOAD_ALU_TO_A~q\ & ((\U_CPU|U_datapath|U_D|output\(4)) # (!\U_CPU|U_controller|state.LDAD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU_REG|output\(4),
	datab => \U_CPU|U_controller|state.LDAD~q\,
	datac => \U_CPU|U_controller|state.LOAD_ALU_TO_A~q\,
	datad => \U_CPU|U_datapath|U_D|output\(4),
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[4]~13_combout\);

-- Location: FF_X22_Y23_N13
\U_CPU|U_datapath|U_BRANCH_TARGET_H|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|WideOr30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(3));

-- Location: LCCOMB_X22_Y23_N12
\U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[3]~4_combout\ = (\U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(3)) # ((!\U_CPU|U_controller|state.RET_6~q\ & !\U_CPU|U_controller|state.Call_9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.RET_6~q\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(3),
	datad => \U_CPU|U_controller|state.Call_9~q\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[3]~4_combout\);

-- Location: LCCOMB_X23_Y18_N6
\U_CPU|U_datapath|U_X_ADDER|Add0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~37_combout\ = (\U_CPU|U_controller|WideOr35~0_combout\ & (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & ((\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~19_combout\)))) # (!\U_CPU|U_controller|WideOr35~0_combout\ & 
-- (((\U_CPU|U_datapath|U_X_ADDER|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datab => \U_CPU|U_datapath|U_X_ADDER|Add0~24_combout\,
	datac => \U_CPU|U_controller|WideOr35~0_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~19_combout\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~37_combout\);

-- Location: FF_X19_Y22_N15
\U_CPU|U_datapath|U_ALU_REG|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_ALU|Mux5~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ALU_REG|output\(2));

-- Location: LCCOMB_X23_Y20_N22
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~20_combout\ = (\U_CPU|U_controller|state.LOAD_ALU_TO_A~q\ & (\U_CPU|U_datapath|U_ALU_REG|output\(2) & ((\U_CPU|U_datapath|U_D|output\(2)) # (!\U_CPU|U_controller|state.LDAD~q\)))) # 
-- (!\U_CPU|U_controller|state.LOAD_ALU_TO_A~q\ & ((\U_CPU|U_datapath|U_D|output\(2)) # ((!\U_CPU|U_controller|state.LDAD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.LOAD_ALU_TO_A~q\,
	datab => \U_CPU|U_datapath|U_D|output\(2),
	datac => \U_CPU|U_datapath|U_ALU_REG|output\(2),
	datad => \U_CPU|U_controller|state.LDAD~q\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~20_combout\);

-- Location: FF_X19_Y22_N19
\U_CPU|U_datapath|U_ALU_REG|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_ALU|Mux6~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ALU_REG|output\(1));

-- Location: LCCOMB_X22_Y20_N26
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[1]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[1]~25_combout\ = (\U_CPU|U_controller|tri_enable[5]~0_combout\ & ((\U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(1)) # ((\U_CPU|U_controller|WideOr11~4_combout\)))) # 
-- (!\U_CPU|U_controller|tri_enable[5]~0_combout\ & (\U_CPU|U_datapath|U_A|output\(1) & ((\U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(1)) # (\U_CPU|U_controller|WideOr11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|tri_enable[5]~0_combout\,
	datab => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(1),
	datac => \U_CPU|U_datapath|U_A|output\(1),
	datad => \U_CPU|U_controller|WideOr11~4_combout\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[1]~25_combout\);

-- Location: LCCOMB_X22_Y23_N2
\U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[7]~7_combout\ = (\U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(7)) # ((!\U_CPU|U_controller|state.RET_6~q\ & !\U_CPU|U_controller|state.Call_9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.RET_6~q\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(7),
	datad => \U_CPU|U_controller|state.Call_9~q\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[7]~7_combout\);

-- Location: LCCOMB_X23_Y21_N22
\U_CPU|U_datapath|U_X_ADDER|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~48_combout\ = (\U_CPU|U_controller|WideOr35~0_combout\ & (((\U_CPU|U_controller|X_LD_MUX_sel\(0) & \U_CPU|U_datapath|U_X_ADDER|Add0~39_combout\)))) # (!\U_CPU|U_controller|WideOr35~0_combout\ & 
-- (\U_CPU|U_datapath|U_X_ADDER|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_X_ADDER|Add0~4_combout\,
	datab => \U_CPU|U_controller|WideOr35~0_combout\,
	datac => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datad => \U_CPU|U_datapath|U_X_ADDER|Add0~39_combout\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~48_combout\);

-- Location: LCCOMB_X22_Y23_N8
\U_CPU|U_datapath|U_PC_LD_MUX|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_LD_MUX|Mux1~0_combout\ = (\U_CPU|U_controller|WideOr11~combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(6))) # (!\U_CPU|U_controller|WideOr11~combout\ & ((\U_CPU|U_datapath|U_PC_ADDER|output[14]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(6),
	datac => \U_CPU|U_datapath|U_PC_ADDER|output[14]~28_combout\,
	datad => \U_CPU|U_controller|WideOr11~combout\,
	combout => \U_CPU|U_datapath|U_PC_LD_MUX|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y19_N2
\U_CPU|U_datapath|U_PC_LD_MUX|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_LD_MUX|Mux8~0_combout\ = (\U_CPU|U_controller|WideOr11~combout\ & ((\U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(7)))) # (!\U_CPU|U_controller|WideOr11~combout\ & (\U_CPU|U_datapath|U_PC_ADDER|output[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_PC_ADDER|output[7]~14_combout\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(7),
	datad => \U_CPU|U_controller|WideOr11~combout\,
	combout => \U_CPU|U_datapath|U_PC_LD_MUX|Mux8~0_combout\);

-- Location: LCCOMB_X21_Y19_N12
\U_CPU|U_datapath|U_PC_LD_MUX|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_LD_MUX|Mux13~0_combout\ = (\U_CPU|U_controller|WideOr11~combout\ & ((\U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(2)))) # (!\U_CPU|U_controller|WideOr11~combout\ & (\U_CPU|U_datapath|U_PC_ADDER|output[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr11~combout\,
	datac => \U_CPU|U_datapath|U_PC_ADDER|output[2]~4_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(2),
	combout => \U_CPU|U_datapath|U_PC_LD_MUX|Mux13~0_combout\);

-- Location: LCCOMB_X24_Y20_N18
\U_CPU|U_datapath|U_SP_ADDER|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~32_combout\ = (\U_CPU|U_controller|WideOr31~0_combout\ & (((!\U_CPU|U_controller|WideOr33~combout\ & \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~9_combout\)))) # (!\U_CPU|U_controller|WideOr31~0_combout\ & 
-- (\U_CPU|U_datapath|U_SP_ADDER|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_SP_ADDER|Add0~30_combout\,
	datab => \U_CPU|U_controller|WideOr33~combout\,
	datac => \U_CPU|U_controller|WideOr31~0_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~9_combout\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~32_combout\);

-- Location: LCCOMB_X24_Y20_N4
\U_CPU|U_datapath|U_SP_ADDER|Add0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~33_combout\ = (\U_CPU|U_controller|WideOr31~0_combout\ & (((!\U_CPU|U_controller|WideOr33~combout\ & \U_CPU|U_datapath|U_X_ADDER|Add0~33_combout\)))) # (!\U_CPU|U_controller|WideOr31~0_combout\ & 
-- (\U_CPU|U_datapath|U_SP_ADDER|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr31~0_combout\,
	datab => \U_CPU|U_datapath|U_SP_ADDER|Add0~28_combout\,
	datac => \U_CPU|U_controller|WideOr33~combout\,
	datad => \U_CPU|U_datapath|U_X_ADDER|Add0~33_combout\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~33_combout\);

-- Location: LCCOMB_X24_Y20_N30
\U_CPU|U_datapath|U_SP_ADDER|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~34_combout\ = (\U_CPU|U_controller|WideOr31~0_combout\ & (!\U_CPU|U_controller|WideOr33~combout\ & ((\U_CPU|U_datapath|U_X_ADDER|Add0~35_combout\)))) # (!\U_CPU|U_controller|WideOr31~0_combout\ & 
-- (((\U_CPU|U_datapath|U_SP_ADDER|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr33~combout\,
	datab => \U_CPU|U_datapath|U_SP_ADDER|Add0~26_combout\,
	datac => \U_CPU|U_controller|WideOr31~0_combout\,
	datad => \U_CPU|U_datapath|U_X_ADDER|Add0~35_combout\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~34_combout\);

-- Location: LCCOMB_X24_Y20_N24
\U_CPU|U_datapath|U_SP_ADDER|Add0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~35_combout\ = (\U_CPU|U_controller|WideOr31~0_combout\ & (((!\U_CPU|U_controller|WideOr33~combout\ & \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~19_combout\)))) # (!\U_CPU|U_controller|WideOr31~0_combout\ & 
-- (\U_CPU|U_datapath|U_SP_ADDER|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_SP_ADDER|Add0~24_combout\,
	datab => \U_CPU|U_controller|WideOr33~combout\,
	datac => \U_CPU|U_controller|WideOr31~0_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~19_combout\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~35_combout\);

-- Location: LCCOMB_X24_Y20_N26
\U_CPU|U_datapath|U_SP_ADDER|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~36_combout\ = (\U_CPU|U_controller|WideOr31~0_combout\ & (((!\U_CPU|U_controller|WideOr33~combout\ & \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~23_combout\)))) # (!\U_CPU|U_controller|WideOr31~0_combout\ & 
-- (\U_CPU|U_datapath|U_SP_ADDER|Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_SP_ADDER|Add0~22_combout\,
	datab => \U_CPU|U_controller|WideOr33~combout\,
	datac => \U_CPU|U_controller|WideOr31~0_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~23_combout\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~36_combout\);

-- Location: LCCOMB_X24_Y20_N14
\U_CPU|U_datapath|U_SP_ADDER|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~42_combout\ = (\U_CPU|U_controller|WideOr31~0_combout\ & (((\U_CPU|U_controller|WideOr33~combout\ & \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~19_combout\)))) # (!\U_CPU|U_controller|WideOr31~0_combout\ & 
-- (\U_CPU|U_datapath|U_SP_ADDER|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_SP_ADDER|Add0~8_combout\,
	datab => \U_CPU|U_controller|WideOr33~combout\,
	datac => \U_CPU|U_controller|WideOr31~0_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~19_combout\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~42_combout\);

-- Location: FF_X24_Y22_N21
\U_REG_INPORT0|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_REG_INPORT0|output[2]~feeder_combout\,
	ena => \ALT_INV_input_switch_sel~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_INPORT0|output\(2));

-- Location: FF_X24_Y22_N31
\U_REG_INPORT0|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_REG_INPORT0|output[3]~feeder_combout\,
	ena => \ALT_INV_input_switch_sel~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_INPORT0|output\(3));

-- Location: FF_X24_Y22_N9
\U_REG_INPORT0|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_REG_INPORT0|output[4]~feeder_combout\,
	ena => \ALT_INV_input_switch_sel~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_INPORT0|output\(4));

-- Location: LCCOMB_X23_Y21_N30
\U_DECODER_SMALL8|ram_write_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_DECODER_SMALL8|ram_write_en~0_combout\ = (!\U_DECODER_SMALL8|Equal0~4_combout\ & (!\U_DECODER_SMALL8|Equal1~0_combout\ & ((\U_CPU|U_controller|state.STAA_3~q\) # (!\U_CPU|U_controller|WideOr15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr15~0_combout\,
	datab => \U_CPU|U_controller|state.STAA_3~q\,
	datac => \U_DECODER_SMALL8|Equal0~4_combout\,
	datad => \U_DECODER_SMALL8|Equal1~0_combout\,
	combout => \U_DECODER_SMALL8|ram_write_en~0_combout\);

-- Location: LCCOMB_X19_Y20_N20
\U_CPU|U_controller|Equal8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal8~0_combout\ = (\U_CPU|U_datapath|U_IR|output\(5) & !\U_CPU|U_datapath|U_IR|output\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CPU|U_datapath|U_IR|output\(5),
	datad => \U_CPU|U_datapath|U_IR|output\(4),
	combout => \U_CPU|U_controller|Equal8~0_combout\);

-- Location: LCCOMB_X19_Y20_N24
\U_CPU|U_controller|Equal8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal8~1_combout\ = (\U_CPU|U_controller|Equal2~0_combout\ & (!\U_CPU|U_datapath|U_IR|output\(7) & (\U_CPU|U_controller|Equal8~0_combout\ & !\U_CPU|U_datapath|U_IR|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal2~0_combout\,
	datab => \U_CPU|U_datapath|U_IR|output\(7),
	datac => \U_CPU|U_controller|Equal8~0_combout\,
	datad => \U_CPU|U_datapath|U_IR|output\(6),
	combout => \U_CPU|U_controller|Equal8~1_combout\);

-- Location: LCCOMB_X16_Y21_N8
\U_CPU|U_controller|next_state.ANDR_D~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.ANDR_D~0_combout\ = (\U_CPU|U_controller|state.DECODE~q\ & \U_CPU|U_controller|Equal8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CPU|U_controller|state.DECODE~q\,
	datad => \U_CPU|U_controller|Equal8~1_combout\,
	combout => \U_CPU|U_controller|next_state.ANDR_D~0_combout\);

-- Location: LCCOMB_X17_Y20_N10
\U_CPU|U_controller|Equal5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal5~1_combout\ = (!\U_CPU|U_datapath|U_IR|output\(6) & \U_CPU|U_controller|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CPU|U_datapath|U_IR|output\(6),
	datad => \U_CPU|U_controller|Equal2~0_combout\,
	combout => \U_CPU|U_controller|Equal5~1_combout\);

-- Location: LCCOMB_X22_Y23_N30
\U_CPU|U_controller|Selector0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~4_combout\ = (\U_CPU|U_controller|state.RET_6~q\) # ((\U_CPU|U_controller|state.CLRC~q\) # ((\U_CPU|U_controller|state.SETC~q\) # (\U_CPU|U_controller|state.Call_9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.RET_6~q\,
	datab => \U_CPU|U_controller|state.CLRC~q\,
	datac => \U_CPU|U_controller|state.SETC~q\,
	datad => \U_CPU|U_controller|state.Call_9~q\,
	combout => \U_CPU|U_controller|Selector0~4_combout\);

-- Location: FF_X17_Y20_N13
\U_CPU|U_controller|state.SLRL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.SLRL~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.SLRL~q\);

-- Location: LCCOMB_X17_Y20_N22
\U_CPU|U_controller|Selector0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~5_combout\ = (\U_CPU|U_controller|state.SLRL~q\) # ((\U_CPU|U_controller|state.STAR_D~q\) # ((\U_CPU|U_controller|state.STAA_3~q\) # (\U_CPU|U_controller|state.CMPR_D~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.SLRL~q\,
	datab => \U_CPU|U_controller|state.STAR_D~q\,
	datac => \U_CPU|U_controller|state.STAA_3~q\,
	datad => \U_CPU|U_controller|state.CMPR_D~q\,
	combout => \U_CPU|U_controller|Selector0~5_combout\);

-- Location: FF_X17_Y18_N19
\U_CPU|U_controller|state.INCA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.INCA~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.INCA~q\);

-- Location: LCCOMB_X20_Y21_N6
\U_CPU|U_controller|Equal15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal15~1_combout\ = (\U_CPU|U_controller|Equal3~1_combout\ & (!\U_CPU|U_datapath|U_IR|output\(6) & !\U_CPU|U_datapath|U_IR|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_controller|Equal3~1_combout\,
	datac => \U_CPU|U_datapath|U_IR|output\(6),
	datad => \U_CPU|U_datapath|U_IR|output\(3),
	combout => \U_CPU|U_controller|Equal15~1_combout\);

-- Location: LCCOMB_X16_Y20_N6
\U_CPU|U_controller|Equal32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal32~0_combout\ = (\U_CPU|U_controller|Equal25~0_combout\ & (\U_CPU|U_controller|Equal8~0_combout\ & (\U_CPU|U_datapath|U_IR|output\(7) & \U_CPU|U_datapath|U_IR|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal25~0_combout\,
	datab => \U_CPU|U_controller|Equal8~0_combout\,
	datac => \U_CPU|U_datapath|U_IR|output\(7),
	datad => \U_CPU|U_datapath|U_IR|output\(2),
	combout => \U_CPU|U_controller|Equal32~0_combout\);

-- Location: LCCOMB_X17_Y18_N6
\U_CPU|U_controller|Selector0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~11_combout\ = (!\U_CPU|U_controller|Equal32~0_combout\ & (!\U_CPU|U_controller|Equal26~0_combout\ & (\U_CPU|U_controller|state.DECODE~q\ & !\U_CPU|U_controller|Equal34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal32~0_combout\,
	datab => \U_CPU|U_controller|Equal26~0_combout\,
	datac => \U_CPU|U_controller|state.DECODE~q\,
	datad => \U_CPU|U_controller|Equal34~0_combout\,
	combout => \U_CPU|U_controller|Selector0~11_combout\);

-- Location: LCCOMB_X19_Y20_N14
\U_CPU|U_controller|Selector0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~13_combout\ = (\U_CPU|U_controller|Equal2~0_combout\ & (\U_CPU|U_controller|Equal5~0_combout\ & (\U_CPU|U_datapath|U_IR|output\(5) $ (!\U_CPU|U_datapath|U_IR|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal2~0_combout\,
	datab => \U_CPU|U_datapath|U_IR|output\(5),
	datac => \U_CPU|U_controller|Equal5~0_combout\,
	datad => \U_CPU|U_datapath|U_IR|output\(6),
	combout => \U_CPU|U_controller|Selector0~13_combout\);

-- Location: LCCOMB_X16_Y20_N0
\U_CPU|U_controller|Selector0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~14_combout\ = (\U_CPU|U_controller|Equal8~1_combout\) # ((!\U_CPU|U_datapath|U_IR|output\(2) & (!\U_CPU|U_datapath|U_IR|output\(0) & \U_CPU|U_controller|Equal15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal8~1_combout\,
	datab => \U_CPU|U_datapath|U_IR|output\(2),
	datac => \U_CPU|U_datapath|U_IR|output\(0),
	datad => \U_CPU|U_controller|Equal15~1_combout\,
	combout => \U_CPU|U_controller|Selector0~14_combout\);

-- Location: LCCOMB_X15_Y18_N26
\U_CPU|U_controller|Selector0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~15_combout\ = (!\U_CPU|U_controller|Equal6~0_combout\ & (!\U_CPU|U_controller|Selector0~13_combout\ & (!\U_CPU|U_controller|Selector0~14_combout\ & !\U_CPU|U_controller|Equal19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal6~0_combout\,
	datab => \U_CPU|U_controller|Selector0~13_combout\,
	datac => \U_CPU|U_controller|Selector0~14_combout\,
	datad => \U_CPU|U_controller|Equal19~0_combout\,
	combout => \U_CPU|U_controller|Selector0~15_combout\);

-- Location: LCCOMB_X19_Y20_N8
\U_CPU|U_controller|Selector0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~16_combout\ = (((!\U_CPU|U_datapath|U_IR|output\(7) & \U_CPU|U_datapath|U_IR|output\(6))) # (!\U_CPU|U_controller|Equal2~0_combout\)) # (!\U_CPU|U_controller|Equal9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal9~0_combout\,
	datab => \U_CPU|U_datapath|U_IR|output\(7),
	datac => \U_CPU|U_datapath|U_IR|output\(6),
	datad => \U_CPU|U_controller|Equal2~0_combout\,
	combout => \U_CPU|U_controller|Selector0~16_combout\);

-- Location: LCCOMB_X16_Y20_N18
\U_CPU|U_controller|Selector0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~17_combout\ = ((!\U_CPU|U_controller|Equal15~1_combout\) # (!\U_CPU|U_datapath|U_IR|output\(2))) # (!\U_CPU|U_datapath|U_IR|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_IR|output\(0),
	datab => \U_CPU|U_datapath|U_IR|output\(2),
	datac => \U_CPU|U_controller|Equal15~1_combout\,
	combout => \U_CPU|U_controller|Selector0~17_combout\);

-- Location: LCCOMB_X19_Y20_N18
\U_CPU|U_controller|Selector0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~18_combout\ = (\U_CPU|U_datapath|U_IR|output\(7)) # ((\U_CPU|U_datapath|U_IR|output\(4) $ (!\U_CPU|U_datapath|U_IR|output\(5))) # (!\U_CPU|U_controller|Equal13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_IR|output\(4),
	datab => \U_CPU|U_datapath|U_IR|output\(7),
	datac => \U_CPU|U_controller|Equal13~1_combout\,
	datad => \U_CPU|U_datapath|U_IR|output\(5),
	combout => \U_CPU|U_controller|Selector0~18_combout\);

-- Location: LCCOMB_X16_Y20_N4
\U_CPU|U_controller|Selector0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~19_combout\ = ((\U_CPU|U_datapath|U_IR|output\(2)) # (!\U_CPU|U_datapath|U_IR|output\(1))) # (!\U_CPU|U_controller|Equal23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal23~0_combout\,
	datab => \U_CPU|U_datapath|U_IR|output\(1),
	datad => \U_CPU|U_datapath|U_IR|output\(2),
	combout => \U_CPU|U_controller|Selector0~19_combout\);

-- Location: LCCOMB_X16_Y20_N14
\U_CPU|U_controller|Selector0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~20_combout\ = (\U_CPU|U_controller|Selector0~16_combout\ & (\U_CPU|U_controller|Selector0~18_combout\ & (\U_CPU|U_controller|Selector0~19_combout\ & \U_CPU|U_controller|Selector0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Selector0~16_combout\,
	datab => \U_CPU|U_controller|Selector0~18_combout\,
	datac => \U_CPU|U_controller|Selector0~19_combout\,
	datad => \U_CPU|U_controller|Selector0~17_combout\,
	combout => \U_CPU|U_controller|Selector0~20_combout\);

-- Location: FF_X17_Y18_N25
\U_CPU|U_controller|state.BCSA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.BCSA~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.BCSA~q\);

-- Location: FF_X17_Y18_N11
\U_CPU|U_controller|state.BMIA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.BMIA~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.BMIA~q\);

-- Location: LCCOMB_X17_Y18_N28
\U_CPU|U_controller|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector1~0_combout\ = (\U_CPU|U_controller|state.BMIA~q\) # ((\U_CPU|U_controller|state.BCSA~q\) # ((\U_CPU|U_controller|state.BCCA~q\ & \U_CPU|U_datapath|U_STATUS_REG_CARRY|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.BMIA~q\,
	datab => \U_CPU|U_controller|state.BCCA~q\,
	datac => \U_CPU|U_datapath|U_STATUS_REG_CARRY|output\(0),
	datad => \U_CPU|U_controller|state.BCSA~q\,
	combout => \U_CPU|U_controller|Selector1~0_combout\);

-- Location: LCCOMB_X17_Y20_N12
\U_CPU|U_controller|next_state.SLRL~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.SLRL~0_combout\ = (\U_CPU|U_controller|Equal11~0_combout\ & (\U_CPU|U_controller|state.DECODE~q\ & (\U_CPU|U_datapath|U_IR|output\(6) & \U_CPU|U_controller|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal11~0_combout\,
	datab => \U_CPU|U_controller|state.DECODE~q\,
	datac => \U_CPU|U_datapath|U_IR|output\(6),
	datad => \U_CPU|U_controller|Equal2~0_combout\,
	combout => \U_CPU|U_controller|next_state.SLRL~0_combout\);

-- Location: LCCOMB_X17_Y18_N18
\U_CPU|U_controller|next_state.INCA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.INCA~0_combout\ = (\U_CPU|U_controller|state.DECODE~q\ & (\U_CPU|U_controller|Equal23~0_combout\ & \U_CPU|U_controller|Equal24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.DECODE~q\,
	datab => \U_CPU|U_controller|Equal23~0_combout\,
	datad => \U_CPU|U_controller|Equal24~0_combout\,
	combout => \U_CPU|U_controller|next_state.INCA~0_combout\);

-- Location: LCCOMB_X17_Y18_N24
\U_CPU|U_controller|next_state.BCSA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.BCSA~0_combout\ = (\U_CPU|U_controller|state.DECODE~q\ & (\U_CPU|U_controller|Equal2~0_combout\ & \U_CPU|U_controller|Equal16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.DECODE~q\,
	datab => \U_CPU|U_controller|Equal2~0_combout\,
	datac => \U_CPU|U_controller|Equal16~0_combout\,
	combout => \U_CPU|U_controller|next_state.BCSA~0_combout\);

-- Location: LCCOMB_X17_Y18_N10
\U_CPU|U_controller|next_state.BMIA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.BMIA~0_combout\ = (\U_CPU|U_controller|state.DECODE~q\ & (\U_CPU|U_controller|Equal18~0_combout\ & (\U_CPU|U_controller|Equal15~1_combout\ & \U_CPU|U_datapath|U_IR|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.DECODE~q\,
	datab => \U_CPU|U_controller|Equal18~0_combout\,
	datac => \U_CPU|U_controller|Equal15~1_combout\,
	datad => \U_CPU|U_datapath|U_IR|output\(1),
	combout => \U_CPU|U_controller|next_state.BMIA~0_combout\);

-- Location: LCCOMB_X16_Y18_N22
\U_CPU|U_controller|Selector4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector4~13_combout\ = (\U_CPU|U_controller|state.LDAA_2~q\) # ((\U_CPU|U_controller|state.STAA_2~q\) # (!\U_CPU|U_controller|Selector6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.LDAA_2~q\,
	datac => \U_CPU|U_controller|state.STAA_2~q\,
	datad => \U_CPU|U_controller|Selector6~1_combout\,
	combout => \U_CPU|U_controller|Selector4~13_combout\);

-- Location: LCCOMB_X17_Y19_N16
\U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[0]~16_combout\ = (\U_CPU|U_controller|state.Call_2~q\ & (((\U_CPU|U_datapath|U_PCL|output\(0))))) # (!\U_CPU|U_controller|state.Call_2~q\ & ((\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[8]~14_combout\) # 
-- ((!\U_CPU|U_controller|state.Call_4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[8]~14_combout\,
	datab => \U_CPU|U_controller|state.Call_2~q\,
	datac => \U_CPU|U_controller|state.Call_4~q\,
	datad => \U_CPU|U_datapath|U_PCL|output\(0),
	combout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[0]~16_combout\);

-- Location: LCCOMB_X20_Y20_N12
\U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[6]~17_combout\ = (\U_CPU|U_controller|state.Call_2~q\ & (((\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[6]~10_combout\)))) # (!\U_CPU|U_controller|state.Call_2~q\ & 
-- ((\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[14]~26_combout\) # ((!\U_CPU|U_controller|state.Call_4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[14]~26_combout\,
	datab => \U_CPU|U_controller|state.Call_4~q\,
	datac => \U_CPU|U_controller|state.Call_2~q\,
	datad => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[6]~10_combout\,
	combout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[6]~17_combout\);

-- Location: LCCOMB_X20_Y20_N30
\U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[5]~18_combout\ = (\U_CPU|U_controller|state.Call_2~q\ & (((\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[5]~8_combout\)))) # (!\U_CPU|U_controller|state.Call_2~q\ & 
-- ((\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[13]~24_combout\) # ((!\U_CPU|U_controller|state.Call_4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[13]~24_combout\,
	datab => \U_CPU|U_controller|state.Call_4~q\,
	datac => \U_CPU|U_controller|state.Call_2~q\,
	datad => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[5]~8_combout\,
	combout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[5]~18_combout\);

-- Location: LCCOMB_X24_Y21_N12
\U_RAM_OUTPUT|output[1]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_RAM_OUTPUT|output[1]~33_combout\ = (\U_CPU|U_datapath|U_X_ADDER|Add0~39_combout\) # ((!\U_CPU|U_controller|state.Call_4~q\ & (!\U_CPU|U_controller|state.Call_2~q\ & !\U_CPU|U_controller|state.STAA_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_X_ADDER|Add0~39_combout\,
	datab => \U_CPU|U_controller|state.Call_4~q\,
	datac => \U_CPU|U_controller|state.Call_2~q\,
	datad => \U_CPU|U_controller|state.STAA_3~q\,
	combout => \U_RAM_OUTPUT|output[1]~33_combout\);

-- Location: LCCOMB_X24_Y21_N30
\U_RAM_OUTPUT|output[2]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_RAM_OUTPUT|output[2]~34_combout\ = (\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~23_combout\) # ((!\U_CPU|U_controller|state.Call_2~q\ & (!\U_CPU|U_controller|state.Call_4~q\ & !\U_CPU|U_controller|state.STAA_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.Call_2~q\,
	datab => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~23_combout\,
	datac => \U_CPU|U_controller|state.Call_4~q\,
	datad => \U_CPU|U_controller|state.STAA_3~q\,
	combout => \U_RAM_OUTPUT|output[2]~34_combout\);

-- Location: LCCOMB_X21_Y21_N6
\U_RAM_OUTPUT|output[3]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_RAM_OUTPUT|output[3]~35_combout\ = (\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~19_combout\) # ((!\U_CPU|U_controller|state.Call_4~q\ & (!\U_CPU|U_controller|state.Call_2~q\ & !\U_CPU|U_controller|state.STAA_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.Call_4~q\,
	datab => \U_CPU|U_controller|state.Call_2~q\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~19_combout\,
	datad => \U_CPU|U_controller|state.STAA_3~q\,
	combout => \U_RAM_OUTPUT|output[3]~35_combout\);

-- Location: LCCOMB_X26_Y21_N10
\U_RAM_OUTPUT|output[5]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_RAM_OUTPUT|output[5]~37_combout\ = (\U_CPU|U_datapath|U_X_ADDER|Add0~33_combout\) # ((!\U_CPU|U_controller|state.Call_2~q\ & (!\U_CPU|U_controller|state.Call_4~q\ & !\U_CPU|U_controller|state.STAA_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.Call_2~q\,
	datab => \U_CPU|U_datapath|U_X_ADDER|Add0~33_combout\,
	datac => \U_CPU|U_controller|state.Call_4~q\,
	datad => \U_CPU|U_controller|state.STAA_3~q\,
	combout => \U_RAM_OUTPUT|output[5]~37_combout\);

-- Location: LCCOMB_X19_Y18_N26
\U_CPU|U_controller|state.BEQA_3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|state.BEQA_3~feeder_combout\ = \U_CPU|U_controller|state.BEQA_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_CPU|U_controller|state.BEQA_2~q\,
	combout => \U_CPU|U_controller|state.BEQA_3~feeder_combout\);

-- Location: LCCOMB_X24_Y22_N20
\U_REG_INPORT0|output[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REG_INPORT0|output[2]~feeder_combout\ = \input_switches[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_switches[2]~input_o\,
	combout => \U_REG_INPORT0|output[2]~feeder_combout\);

-- Location: LCCOMB_X24_Y22_N30
\U_REG_INPORT0|output[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REG_INPORT0|output[3]~feeder_combout\ = \input_switches[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_switches[3]~input_o\,
	combout => \U_REG_INPORT0|output[3]~feeder_combout\);

-- Location: LCCOMB_X24_Y22_N8
\U_REG_INPORT0|output[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REG_INPORT0|output[4]~feeder_combout\ = \input_switches[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_switches[4]~input_o\,
	combout => \U_REG_INPORT0|output[4]~feeder_combout\);

-- Location: IOOBUF_X26_Y29_N16
\led0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led0[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\led0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\led0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\led0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\led0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led0[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\led0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led0[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\led0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led0[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\led1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led1[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\led1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\led1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\led1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\led1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led1[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\led1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led1[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\led1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led1[6]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\led2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\led2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led2[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\led2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\led2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led2[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\led2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\led2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led2[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\led2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led2[6]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\led3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led3[0]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\led3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led3[1]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\led3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led3[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\led3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led3[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\led3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led3[4]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\led3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led3[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\led3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led3[6]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y24_N1
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X16_Y21_N19
\U_CPU|U_controller|state.Call_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.Call_4~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.Call_5~q\);

-- Location: FF_X16_Y18_N27
\U_CPU|U_controller|state.Call_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.Call_5~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.Call_6~q\);

-- Location: FF_X17_Y19_N11
\U_CPU|U_controller|state.Call_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.Call_6~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.Call_7~q\);

-- Location: FF_X19_Y18_N31
\U_CPU|U_controller|state.Call_8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.Call_7~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.Call_8~q\);

-- Location: LCCOMB_X17_Y19_N6
\U_CPU|U_controller|WideOr11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr11~4_combout\ = (!\U_CPU|U_controller|state.RET_5~q\ & !\U_CPU|U_controller|state.Call_8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.RET_5~q\,
	datad => \U_CPU|U_controller|state.Call_8~q\,
	combout => \U_CPU|U_controller|WideOr11~4_combout\);

-- Location: FF_X19_Y18_N15
\U_CPU|U_controller|state.Call_9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.Call_8~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.Call_9~q\);

-- Location: LCCOMB_X17_Y19_N30
\U_CPU|U_controller|WideOr31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr31~0_combout\ = (!\U_CPU|U_controller|state.RET_4~q\ & (!\U_CPU|U_controller|state.Call_3~q\ & (!\U_CPU|U_controller|state.RET_2~q\ & !\U_CPU|U_controller|state.CALL~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.RET_4~q\,
	datab => \U_CPU|U_controller|state.Call_3~q\,
	datac => \U_CPU|U_controller|state.RET_2~q\,
	datad => \U_CPU|U_controller|state.CALL~q\,
	combout => \U_CPU|U_controller|WideOr31~0_combout\);

-- Location: LCCOMB_X23_Y20_N0
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5_combout\ = ((\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~2_combout\ & ((\U_RAM_OUTPUT|output[0]~24_combout\) # (!\U_CPU|U_controller|Selector5~2_combout\)))) # 
-- (!\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~2_combout\,
	datab => \U_RAM_OUTPUT|output[0]~24_combout\,
	datac => \U_CPU|U_controller|Selector5~2_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~4_combout\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5_combout\);

-- Location: LCCOMB_X17_Y19_N0
\U_CPU|U_controller|WideOr33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr33~combout\ = (\U_CPU|U_controller|state.LDSI~q\) # ((\U_CPU|U_controller|state.Call_3~q\) # (\U_CPU|U_controller|state.CALL~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.LDSI~q\,
	datab => \U_CPU|U_controller|state.Call_3~q\,
	datad => \U_CPU|U_controller|state.CALL~q\,
	combout => \U_CPU|U_controller|WideOr33~combout\);

-- Location: LCCOMB_X24_Y20_N16
\U_CPU|U_datapath|U_SP_ADDER|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~3_combout\ = (\U_CPU|U_controller|WideOr31~0_combout\ & (((\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5_combout\ & \U_CPU|U_controller|WideOr33~combout\)))) # (!\U_CPU|U_controller|WideOr31~0_combout\ & 
-- (\U_CPU|U_datapath|U_SP_ADDER|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_SP_ADDER|Add0~1_combout\,
	datab => \U_CPU|U_controller|WideOr31~0_combout\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5_combout\,
	datad => \U_CPU|U_controller|WideOr33~combout\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~3_combout\);

-- Location: LCCOMB_X19_Y20_N10
\U_CPU|U_controller|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal3~0_combout\ = (\U_CPU|U_datapath|U_IR|output\(4) & (\U_CPU|U_datapath|U_IR|output\(7) & (\U_CPU|U_datapath|U_IR|output\(2) & \U_CPU|U_datapath|U_IR|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_IR|output\(4),
	datab => \U_CPU|U_datapath|U_IR|output\(7),
	datac => \U_CPU|U_datapath|U_IR|output\(2),
	datad => \U_CPU|U_datapath|U_IR|output\(5),
	combout => \U_CPU|U_controller|Equal3~0_combout\);

-- Location: FF_X16_Y18_N29
\U_CPU|U_controller|state.OPCODE_FETCH_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.OPCODE_FETCH_3~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.OPCODE_FETCH_4~q\);

-- Location: FF_X17_Y18_N7
\U_CPU|U_controller|state.DECODE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.OPCODE_FETCH_4~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.DECODE~q\);

-- Location: LCCOMB_X16_Y20_N24
\U_CPU|U_controller|next_state.STAA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.STAA~0_combout\ = (\U_CPU|U_controller|Equal13~0_combout\ & (\U_CPU|U_datapath|U_IR|output\(1) & (\U_CPU|U_controller|Equal3~0_combout\ & \U_CPU|U_controller|state.DECODE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal13~0_combout\,
	datab => \U_CPU|U_datapath|U_IR|output\(1),
	datac => \U_CPU|U_controller|Equal3~0_combout\,
	datad => \U_CPU|U_controller|state.DECODE~q\,
	combout => \U_CPU|U_controller|next_state.STAA~0_combout\);

-- Location: FF_X16_Y20_N25
\U_CPU|U_controller|state.STAA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.STAA~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.STAA~q\);

-- Location: FF_X16_Y18_N23
\U_CPU|U_controller|state.STAA_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.STAA~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.STAA_2~q\);

-- Location: LCCOMB_X17_Y19_N28
\U_CPU|U_controller|state.STAA_3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|state.STAA_3~feeder_combout\ = \U_CPU|U_controller|state.STAA_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_CPU|U_controller|state.STAA_2~q\,
	combout => \U_CPU|U_controller|state.STAA_3~feeder_combout\);

-- Location: FF_X17_Y19_N29
\U_CPU|U_controller|state.STAA_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|state.STAA_3~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.STAA_3~q\);

-- Location: LCCOMB_X26_Y21_N16
\U_RAM_OUTPUT|output[4]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_RAM_OUTPUT|output[4]~36_combout\ = (\U_CPU|U_datapath|U_X_ADDER|Add0~35_combout\) # ((!\U_CPU|U_controller|state.Call_2~q\ & (!\U_CPU|U_controller|state.Call_4~q\ & !\U_CPU|U_controller|state.STAA_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.Call_2~q\,
	datab => \U_CPU|U_datapath|U_X_ADDER|Add0~35_combout\,
	datac => \U_CPU|U_controller|state.Call_4~q\,
	datad => \U_CPU|U_controller|state.STAA_3~q\,
	combout => \U_RAM_OUTPUT|output[4]~36_combout\);

-- Location: LCCOMB_X24_Y20_N28
\U_CPU|U_datapath|U_SP_ADDER|Add0~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~45_combout\ = (\U_CPU|U_controller|WideOr31~0_combout\ & (((\U_CPU|U_controller|WideOr33~combout\ & \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~9_combout\)))) # (!\U_CPU|U_controller|WideOr31~0_combout\ & 
-- (\U_CPU|U_datapath|U_SP_ADDER|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_SP_ADDER|Add0~14_combout\,
	datab => \U_CPU|U_controller|WideOr33~combout\,
	datac => \U_CPU|U_controller|WideOr31~0_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~9_combout\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~45_combout\);

-- Location: FF_X24_Y20_N29
\U_CPU|U_datapath|U_SPL|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_SP_ADDER|Add0~45_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_SPL|output\(6));

-- Location: LCCOMB_X16_Y18_N12
\U_CPU|U_controller|ADDRL_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|ADDRL_en~0_combout\ = (\U_CPU|U_controller|state.LDAA~q\) # (\U_CPU|U_controller|state.STAA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CPU|U_controller|state.LDAA~q\,
	datad => \U_CPU|U_controller|state.STAA~q\,
	combout => \U_CPU|U_controller|ADDRL_en~0_combout\);

-- Location: FF_X24_Y19_N1
\U_CPU|U_datapath|U_ADDRL|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|ADDRL_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ADDRL|output\(6));

-- Location: LCCOMB_X19_Y20_N0
\U_CPU|U_controller|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal0~0_combout\ = (!\U_CPU|U_datapath|U_IR|output\(4) & (\U_CPU|U_datapath|U_IR|output\(7) & (!\U_CPU|U_datapath|U_IR|output\(6) & !\U_CPU|U_datapath|U_IR|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_IR|output\(4),
	datab => \U_CPU|U_datapath|U_IR|output\(7),
	datac => \U_CPU|U_datapath|U_IR|output\(6),
	datad => \U_CPU|U_datapath|U_IR|output\(5),
	combout => \U_CPU|U_controller|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y21_N10
\U_CPU|U_controller|Equal24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal24~0_combout\ = (!\U_CPU|U_datapath|U_IR|output\(2) & (\U_CPU|U_datapath|U_IR|output\(1) & !\U_CPU|U_datapath|U_IR|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_IR|output\(2),
	datac => \U_CPU|U_datapath|U_IR|output\(1),
	datad => \U_CPU|U_datapath|U_IR|output\(0),
	combout => \U_CPU|U_controller|Equal24~0_combout\);

-- Location: LCCOMB_X17_Y18_N12
\U_CPU|U_controller|next_state.LDXI~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.LDXI~0_combout\ = (\U_CPU|U_controller|state.DECODE~q\ & (\U_CPU|U_controller|Equal0~0_combout\ & (\U_CPU|U_datapath|U_IR|output\(3) & \U_CPU|U_controller|Equal24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.DECODE~q\,
	datab => \U_CPU|U_controller|Equal0~0_combout\,
	datac => \U_CPU|U_datapath|U_IR|output\(3),
	datad => \U_CPU|U_controller|Equal24~0_combout\,
	combout => \U_CPU|U_controller|next_state.LDXI~0_combout\);

-- Location: FF_X17_Y18_N13
\U_CPU|U_controller|state.LDXI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.LDXI~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.LDXI~q\);

-- Location: LCCOMB_X19_Y18_N14
\U_CPU|U_controller|X_LD_MUX_sel[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|X_LD_MUX_sel\(0) = (\U_CPU|U_controller|state.DECX~q\) # (\U_CPU|U_controller|state.LDXI~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.DECX~q\,
	datad => \U_CPU|U_controller|state.LDXI~q\,
	combout => \U_CPU|U_controller|X_LD_MUX_sel\(0));

-- Location: LCCOMB_X20_Y21_N8
\U_CPU|U_controller|Equal34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal34~0_combout\ = (\U_CPU|U_controller|Equal3~0_combout\ & (\U_CPU|U_datapath|U_IR|output\(6) & (\U_CPU|U_controller|Equal27~4_combout\ & \U_CPU|U_datapath|U_IR|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal3~0_combout\,
	datab => \U_CPU|U_datapath|U_IR|output\(6),
	datac => \U_CPU|U_controller|Equal27~4_combout\,
	datad => \U_CPU|U_datapath|U_IR|output\(0),
	combout => \U_CPU|U_controller|Equal34~0_combout\);

-- Location: LCCOMB_X19_Y18_N12
\U_CPU|U_controller|next_state.DECX~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.DECX~0_combout\ = (\U_CPU|U_controller|state.DECODE~q\ & \U_CPU|U_controller|Equal34~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.DECODE~q\,
	datad => \U_CPU|U_controller|Equal34~0_combout\,
	combout => \U_CPU|U_controller|next_state.DECX~0_combout\);

-- Location: FF_X19_Y18_N13
\U_CPU|U_controller|state.DECX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.DECX~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.DECX~q\);

-- Location: LCCOMB_X23_Y21_N12
\U_CPU|U_controller|WideOr35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr35~0_combout\ = (!\U_CPU|U_controller|state.INCX~q\ & !\U_CPU|U_controller|state.DECX~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.INCX~q\,
	datad => \U_CPU|U_controller|state.DECX~q\,
	combout => \U_CPU|U_controller|WideOr35~0_combout\);

-- Location: LCCOMB_X23_Y18_N24
\U_CPU|U_datapath|U_X_ADDER|Add0~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~47_combout\ = (\U_CPU|U_controller|WideOr35~0_combout\ & (((\U_CPU|U_controller|X_LD_MUX_sel\(0) & \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~23_combout\)))) # (!\U_CPU|U_controller|WideOr35~0_combout\ & 
-- (\U_CPU|U_datapath|U_X_ADDER|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_X_ADDER|Add0~6_combout\,
	datab => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datac => \U_CPU|U_controller|WideOr35~0_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~23_combout\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~47_combout\);

-- Location: LCCOMB_X16_Y20_N22
\U_CPU|U_controller|next_state.INCX~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.INCX~0_combout\ = (\U_CPU|U_controller|Equal3~0_combout\ & (\U_CPU|U_controller|Equal25~0_combout\ & \U_CPU|U_controller|state.DECODE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_controller|Equal3~0_combout\,
	datac => \U_CPU|U_controller|Equal25~0_combout\,
	datad => \U_CPU|U_controller|state.DECODE~q\,
	combout => \U_CPU|U_controller|next_state.INCX~0_combout\);

-- Location: FF_X16_Y20_N23
\U_CPU|U_controller|state.INCX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.INCX~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.INCX~q\);

-- Location: LCCOMB_X19_Y18_N8
\U_CPU|U_controller|WideOr35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr35~combout\ = (\U_CPU|U_controller|state.DECX~q\) # ((\U_CPU|U_controller|state.INCX~q\) # (\U_CPU|U_controller|state.LDXI~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.DECX~q\,
	datac => \U_CPU|U_controller|state.INCX~q\,
	datad => \U_CPU|U_controller|state.LDXI~q\,
	combout => \U_CPU|U_controller|WideOr35~combout\);

-- Location: FF_X23_Y18_N25
\U_CPU|U_datapath|U_XL|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_X_ADDER|Add0~47_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_XL|output\(2));

-- Location: LCCOMB_X24_Y18_N6
\U_CPU|U_datapath|U_X_ADDER|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~8_combout\ = (\U_CPU|U_controller|X_LD_MUX_sel\(0) & ((\U_CPU|U_datapath|U_XL|output\(3) & (\U_CPU|U_datapath|U_X_ADDER|Add0~7\ & VCC)) # (!\U_CPU|U_datapath|U_XL|output\(3) & (!\U_CPU|U_datapath|U_X_ADDER|Add0~7\)))) # 
-- (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & ((\U_CPU|U_datapath|U_XL|output\(3) & (!\U_CPU|U_datapath|U_X_ADDER|Add0~7\)) # (!\U_CPU|U_datapath|U_XL|output\(3) & ((\U_CPU|U_datapath|U_X_ADDER|Add0~7\) # (GND)))))
-- \U_CPU|U_datapath|U_X_ADDER|Add0~9\ = CARRY((\U_CPU|U_controller|X_LD_MUX_sel\(0) & (!\U_CPU|U_datapath|U_XL|output\(3) & !\U_CPU|U_datapath|U_X_ADDER|Add0~7\)) # (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & ((!\U_CPU|U_datapath|U_X_ADDER|Add0~7\) # 
-- (!\U_CPU|U_datapath|U_XL|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datab => \U_CPU|U_datapath|U_XL|output\(3),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_ADDER|Add0~7\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~8_combout\,
	cout => \U_CPU|U_datapath|U_X_ADDER|Add0~9\);

-- Location: LCCOMB_X23_Y18_N22
\U_CPU|U_datapath|U_X_ADDER|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~46_combout\ = (\U_CPU|U_controller|WideOr35~0_combout\ & (((\U_CPU|U_controller|X_LD_MUX_sel\(0) & \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~19_combout\)))) # (!\U_CPU|U_controller|WideOr35~0_combout\ & 
-- (\U_CPU|U_datapath|U_X_ADDER|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr35~0_combout\,
	datab => \U_CPU|U_datapath|U_X_ADDER|Add0~8_combout\,
	datac => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~19_combout\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~46_combout\);

-- Location: FF_X23_Y18_N23
\U_CPU|U_datapath|U_XL|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_X_ADDER|Add0~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_XL|output\(3));

-- Location: LCCOMB_X24_Y18_N8
\U_CPU|U_datapath|U_X_ADDER|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~10_combout\ = ((\U_CPU|U_controller|X_LD_MUX_sel\(0) $ (\U_CPU|U_datapath|U_XL|output\(4) $ (!\U_CPU|U_datapath|U_X_ADDER|Add0~9\)))) # (GND)
-- \U_CPU|U_datapath|U_X_ADDER|Add0~11\ = CARRY((\U_CPU|U_controller|X_LD_MUX_sel\(0) & ((\U_CPU|U_datapath|U_XL|output\(4)) # (!\U_CPU|U_datapath|U_X_ADDER|Add0~9\))) # (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & (\U_CPU|U_datapath|U_XL|output\(4) & 
-- !\U_CPU|U_datapath|U_X_ADDER|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datab => \U_CPU|U_datapath|U_XL|output\(4),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_ADDER|Add0~9\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~10_combout\,
	cout => \U_CPU|U_datapath|U_X_ADDER|Add0~11\);

-- Location: LCCOMB_X23_Y18_N12
\U_CPU|U_datapath|U_X_ADDER|Add0~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~45_combout\ = (\U_CPU|U_controller|WideOr35~0_combout\ & (\U_CPU|U_controller|X_LD_MUX_sel\(0) & ((\U_CPU|U_datapath|U_X_ADDER|Add0~35_combout\)))) # (!\U_CPU|U_controller|WideOr35~0_combout\ & 
-- (((\U_CPU|U_datapath|U_X_ADDER|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datab => \U_CPU|U_datapath|U_X_ADDER|Add0~10_combout\,
	datac => \U_CPU|U_controller|WideOr35~0_combout\,
	datad => \U_CPU|U_datapath|U_X_ADDER|Add0~35_combout\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~45_combout\);

-- Location: FF_X23_Y18_N13
\U_CPU|U_datapath|U_XL|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_X_ADDER|Add0~45_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_XL|output\(4));

-- Location: LCCOMB_X24_Y18_N10
\U_CPU|U_datapath|U_X_ADDER|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~12_combout\ = (\U_CPU|U_datapath|U_XL|output\(5) & ((\U_CPU|U_controller|X_LD_MUX_sel\(0) & (\U_CPU|U_datapath|U_X_ADDER|Add0~11\ & VCC)) # (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & 
-- (!\U_CPU|U_datapath|U_X_ADDER|Add0~11\)))) # (!\U_CPU|U_datapath|U_XL|output\(5) & ((\U_CPU|U_controller|X_LD_MUX_sel\(0) & (!\U_CPU|U_datapath|U_X_ADDER|Add0~11\)) # (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & ((\U_CPU|U_datapath|U_X_ADDER|Add0~11\) # 
-- (GND)))))
-- \U_CPU|U_datapath|U_X_ADDER|Add0~13\ = CARRY((\U_CPU|U_datapath|U_XL|output\(5) & (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & !\U_CPU|U_datapath|U_X_ADDER|Add0~11\)) # (!\U_CPU|U_datapath|U_XL|output\(5) & ((!\U_CPU|U_datapath|U_X_ADDER|Add0~11\) # 
-- (!\U_CPU|U_controller|X_LD_MUX_sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_XL|output\(5),
	datab => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_ADDER|Add0~11\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~12_combout\,
	cout => \U_CPU|U_datapath|U_X_ADDER|Add0~13\);

-- Location: LCCOMB_X24_Y18_N12
\U_CPU|U_datapath|U_X_ADDER|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~14_combout\ = ((\U_CPU|U_controller|X_LD_MUX_sel\(0) $ (\U_CPU|U_datapath|U_XL|output\(6) $ (!\U_CPU|U_datapath|U_X_ADDER|Add0~13\)))) # (GND)
-- \U_CPU|U_datapath|U_X_ADDER|Add0~15\ = CARRY((\U_CPU|U_controller|X_LD_MUX_sel\(0) & ((\U_CPU|U_datapath|U_XL|output\(6)) # (!\U_CPU|U_datapath|U_X_ADDER|Add0~13\))) # (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & (\U_CPU|U_datapath|U_XL|output\(6) & 
-- !\U_CPU|U_datapath|U_X_ADDER|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datab => \U_CPU|U_datapath|U_XL|output\(6),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_ADDER|Add0~13\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~14_combout\,
	cout => \U_CPU|U_datapath|U_X_ADDER|Add0~15\);

-- Location: LCCOMB_X23_Y18_N8
\U_CPU|U_datapath|U_X_ADDER|Add0~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~43_combout\ = (\U_CPU|U_controller|WideOr35~0_combout\ & (\U_CPU|U_controller|X_LD_MUX_sel\(0) & ((\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~9_combout\)))) # (!\U_CPU|U_controller|WideOr35~0_combout\ & 
-- (((\U_CPU|U_datapath|U_X_ADDER|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datab => \U_CPU|U_datapath|U_X_ADDER|Add0~14_combout\,
	datac => \U_CPU|U_controller|WideOr35~0_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~9_combout\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~43_combout\);

-- Location: FF_X23_Y18_N9
\U_CPU|U_datapath|U_XL|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_X_ADDER|Add0~43_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_XL|output\(6));

-- Location: LCCOMB_X23_Y18_N26
\U_CPU|U_datapath|U_X_ADDER|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~44_combout\ = (\U_CPU|U_controller|WideOr35~0_combout\ & (((\U_CPU|U_datapath|U_X_ADDER|Add0~33_combout\ & \U_CPU|U_controller|X_LD_MUX_sel\(0))))) # (!\U_CPU|U_controller|WideOr35~0_combout\ & 
-- (\U_CPU|U_datapath|U_X_ADDER|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr35~0_combout\,
	datab => \U_CPU|U_datapath|U_X_ADDER|Add0~12_combout\,
	datac => \U_CPU|U_datapath|U_X_ADDER|Add0~33_combout\,
	datad => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~44_combout\);

-- Location: FF_X23_Y18_N27
\U_CPU|U_datapath|U_XL|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_X_ADDER|Add0~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_XL|output\(5));

-- Location: LCCOMB_X20_Y21_N22
\U_CPU|U_controller|Equal31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal31~0_combout\ = (\U_CPU|U_controller|Equal16~0_combout\ & (\U_CPU|U_datapath|U_IR|output\(2) & (\U_CPU|U_controller|Equal27~4_combout\ & !\U_CPU|U_datapath|U_IR|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal16~0_combout\,
	datab => \U_CPU|U_datapath|U_IR|output\(2),
	datac => \U_CPU|U_controller|Equal27~4_combout\,
	datad => \U_CPU|U_datapath|U_IR|output\(0),
	combout => \U_CPU|U_controller|Equal31~0_combout\);

-- Location: LCCOMB_X19_Y18_N6
\U_CPU|U_controller|next_state.LDAA_X~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.LDAA_X~0_combout\ = (\U_CPU|U_controller|state.DECODE~q\ & \U_CPU|U_controller|Equal31~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.DECODE~q\,
	datad => \U_CPU|U_controller|Equal31~0_combout\,
	combout => \U_CPU|U_controller|next_state.LDAA_X~0_combout\);

-- Location: FF_X19_Y18_N7
\U_CPU|U_controller|state.LDAA_X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.LDAA_X~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.LDAA_X~q\);

-- Location: FF_X22_Y18_N5
\U_CPU|U_datapath|U_B|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|state.LDAA_X~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_B|output\(2));

-- Location: FF_X22_Y18_N3
\U_CPU|U_datapath|U_B|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_X_ADDER|Add0~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|state.LDAA_X~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_B|output\(1));

-- Location: FF_X23_Y20_N25
\U_CPU|U_datapath|U_B|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|state.LDAA_X~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_B|output\(0));

-- Location: LCCOMB_X22_Y18_N4
\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[2]~4_combout\ = ((\U_CPU|U_datapath|U_XL|output\(2) $ (\U_CPU|U_datapath|U_B|output\(2) $ (!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[1]~3\)))) # (GND)
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[2]~5\ = CARRY((\U_CPU|U_datapath|U_XL|output\(2) & ((\U_CPU|U_datapath|U_B|output\(2)) # (!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[1]~3\))) # (!\U_CPU|U_datapath|U_XL|output\(2) & 
-- (\U_CPU|U_datapath|U_B|output\(2) & !\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_XL|output\(2),
	datab => \U_CPU|U_datapath|U_B|output\(2),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[1]~3\,
	combout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[2]~4_combout\,
	cout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[2]~5\);

-- Location: LCCOMB_X22_Y18_N8
\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[4]~8_combout\ = ((\U_CPU|U_datapath|U_B|output\(4) $ (\U_CPU|U_datapath|U_XL|output\(4) $ (!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[3]~7\)))) # (GND)
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[4]~9\ = CARRY((\U_CPU|U_datapath|U_B|output\(4) & ((\U_CPU|U_datapath|U_XL|output\(4)) # (!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[3]~7\))) # (!\U_CPU|U_datapath|U_B|output\(4) & 
-- (\U_CPU|U_datapath|U_XL|output\(4) & !\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_B|output\(4),
	datab => \U_CPU|U_datapath|U_XL|output\(4),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[3]~7\,
	combout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[4]~8_combout\,
	cout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[4]~9\);

-- Location: LCCOMB_X22_Y18_N12
\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[6]~12_combout\ = ((\U_CPU|U_datapath|U_B|output\(6) $ (\U_CPU|U_datapath|U_XL|output\(6) $ (!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[5]~11\)))) # (GND)
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[6]~13\ = CARRY((\U_CPU|U_datapath|U_B|output\(6) & ((\U_CPU|U_datapath|U_XL|output\(6)) # (!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[5]~11\))) # (!\U_CPU|U_datapath|U_B|output\(6) & 
-- (\U_CPU|U_datapath|U_XL|output\(6) & !\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_B|output\(6),
	datab => \U_CPU|U_datapath|U_XL|output\(6),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[5]~11\,
	combout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[6]~12_combout\,
	cout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[6]~13\);

-- Location: LCCOMB_X17_Y19_N26
\U_CPU|U_controller|WideOr15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr15~0_combout\ = (!\U_CPU|U_controller|state.Call_2~q\ & !\U_CPU|U_controller|state.Call_4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_controller|state.Call_2~q\,
	datad => \U_CPU|U_controller|state.Call_4~q\,
	combout => \U_CPU|U_controller|WideOr15~0_combout\);

-- Location: LCCOMB_X17_Y19_N20
\U_CPU|U_controller|WideOr13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr13~0_combout\ = (!\U_CPU|U_controller|state.RET~q\ & (\U_CPU|U_controller|WideOr15~0_combout\ & (!\U_CPU|U_controller|state.RET_2~q\ & !\U_CPU|U_controller|state.RET_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.RET~q\,
	datab => \U_CPU|U_controller|WideOr15~0_combout\,
	datac => \U_CPU|U_controller|state.RET_2~q\,
	datad => \U_CPU|U_controller|state.RET_3~q\,
	combout => \U_CPU|U_controller|WideOr13~0_combout\);

-- Location: FF_X17_Y19_N1
\U_CPU|U_controller|state.LDAA_X_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.LDAA_X~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.LDAA_X_2~q\);

-- Location: LCCOMB_X17_Y19_N24
\U_CPU|U_controller|WideOr13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr13~combout\ = (\U_CPU|U_controller|state.LDAA_X_2~q\) # (!\U_CPU|U_controller|WideOr13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_controller|WideOr13~0_combout\,
	datad => \U_CPU|U_controller|state.LDAA_X_2~q\,
	combout => \U_CPU|U_controller|WideOr13~combout\);

-- Location: LCCOMB_X20_Y21_N20
\U_CPU|U_controller|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal2~0_combout\ = (!\U_CPU|U_datapath|U_IR|output\(3) & (!\U_CPU|U_datapath|U_IR|output\(1) & (!\U_CPU|U_datapath|U_IR|output\(2) & \U_CPU|U_datapath|U_IR|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_IR|output\(3),
	datab => \U_CPU|U_datapath|U_IR|output\(1),
	datac => \U_CPU|U_datapath|U_IR|output\(2),
	datad => \U_CPU|U_datapath|U_IR|output\(0),
	combout => \U_CPU|U_controller|Equal2~0_combout\);

-- Location: LCCOMB_X19_Y20_N26
\U_CPU|U_controller|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal4~0_combout\ = (\U_CPU|U_datapath|U_IR|output\(6) & \U_CPU|U_controller|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_IR|output\(6),
	datad => \U_CPU|U_controller|Equal2~0_combout\,
	combout => \U_CPU|U_controller|Equal4~0_combout\);

-- Location: LCCOMB_X19_Y20_N4
\U_CPU|U_controller|Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal5~0_combout\ = (!\U_CPU|U_datapath|U_IR|output\(4) & !\U_CPU|U_datapath|U_IR|output\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_IR|output\(4),
	datad => \U_CPU|U_datapath|U_IR|output\(7),
	combout => \U_CPU|U_controller|Equal5~0_combout\);

-- Location: LCCOMB_X17_Y20_N18
\U_CPU|U_controller|next_state.XORR_D~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.XORR_D~0_combout\ = (!\U_CPU|U_datapath|U_IR|output\(5) & (\U_CPU|U_controller|state.DECODE~q\ & (\U_CPU|U_controller|Equal4~0_combout\ & \U_CPU|U_controller|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_IR|output\(5),
	datab => \U_CPU|U_controller|state.DECODE~q\,
	datac => \U_CPU|U_controller|Equal4~0_combout\,
	datad => \U_CPU|U_controller|Equal5~0_combout\,
	combout => \U_CPU|U_controller|next_state.XORR_D~0_combout\);

-- Location: FF_X17_Y20_N19
\U_CPU|U_controller|state.XORR_D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.XORR_D~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.XORR_D~q\);

-- Location: LCCOMB_X19_Y20_N12
\U_CPU|U_controller|Equal9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal9~0_combout\ = (\U_CPU|U_datapath|U_IR|output\(4) & \U_CPU|U_datapath|U_IR|output\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_IR|output\(4),
	datad => \U_CPU|U_datapath|U_IR|output\(5),
	combout => \U_CPU|U_controller|Equal9~0_combout\);

-- Location: LCCOMB_X17_Y20_N14
\U_CPU|U_controller|next_state.ORR_D~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.ORR_D~0_combout\ = (\U_CPU|U_controller|Equal5~1_combout\ & (!\U_CPU|U_datapath|U_IR|output\(7) & (\U_CPU|U_controller|state.DECODE~q\ & \U_CPU|U_controller|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal5~1_combout\,
	datab => \U_CPU|U_datapath|U_IR|output\(7),
	datac => \U_CPU|U_controller|state.DECODE~q\,
	datad => \U_CPU|U_controller|Equal9~0_combout\,
	combout => \U_CPU|U_controller|next_state.ORR_D~0_combout\);

-- Location: FF_X17_Y20_N15
\U_CPU|U_controller|state.ORR_D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.ORR_D~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.ORR_D~q\);

-- Location: LCCOMB_X17_Y21_N8
\U_CPU|U_controller|WideOr25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr25~0_combout\ = (\U_CPU|U_controller|state.SETC~q\) # ((\U_CPU|U_controller|state.XORR_D~q\) # ((\U_CPU|U_controller|state.CLRC~q\) # (\U_CPU|U_controller|state.ORR_D~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.SETC~q\,
	datab => \U_CPU|U_controller|state.XORR_D~q\,
	datac => \U_CPU|U_controller|state.CLRC~q\,
	datad => \U_CPU|U_controller|state.ORR_D~q\,
	combout => \U_CPU|U_controller|WideOr25~0_combout\);

-- Location: FF_X22_Y20_N19
\U_CPU|U_datapath|U_A|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_A|output\(0));

-- Location: LCCOMB_X19_Y20_N30
\U_CPU|U_controller|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal6~0_combout\ = (\U_CPU|U_datapath|U_IR|output\(4) & (!\U_CPU|U_datapath|U_IR|output\(5) & (!\U_CPU|U_datapath|U_IR|output\(6) & \U_CPU|U_controller|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_IR|output\(4),
	datab => \U_CPU|U_datapath|U_IR|output\(5),
	datac => \U_CPU|U_datapath|U_IR|output\(6),
	datad => \U_CPU|U_controller|Equal2~0_combout\,
	combout => \U_CPU|U_controller|Equal6~0_combout\);

-- Location: LCCOMB_X19_Y18_N2
\U_CPU|U_controller|next_state.CMPR_D~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.CMPR_D~0_combout\ = (\U_CPU|U_controller|state.DECODE~q\ & (\U_CPU|U_datapath|U_IR|output\(7) & \U_CPU|U_controller|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.DECODE~q\,
	datac => \U_CPU|U_datapath|U_IR|output\(7),
	datad => \U_CPU|U_controller|Equal6~0_combout\,
	combout => \U_CPU|U_controller|next_state.CMPR_D~0_combout\);

-- Location: FF_X19_Y18_N3
\U_CPU|U_controller|state.CMPR_D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.CMPR_D~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.CMPR_D~q\);

-- Location: LCCOMB_X20_Y21_N28
\U_CPU|U_controller|Equal23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal23~0_combout\ = (\U_CPU|U_controller|Equal3~1_combout\ & (\U_CPU|U_datapath|U_IR|output\(6) & \U_CPU|U_datapath|U_IR|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_controller|Equal3~1_combout\,
	datac => \U_CPU|U_datapath|U_IR|output\(6),
	datad => \U_CPU|U_datapath|U_IR|output\(3),
	combout => \U_CPU|U_controller|Equal23~0_combout\);

-- Location: LCCOMB_X17_Y18_N8
\U_CPU|U_controller|next_state.DECA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.DECA~0_combout\ = (\U_CPU|U_controller|state.DECODE~q\ & (\U_CPU|U_controller|Equal18~0_combout\ & (\U_CPU|U_controller|Equal23~0_combout\ & \U_CPU|U_datapath|U_IR|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.DECODE~q\,
	datab => \U_CPU|U_controller|Equal18~0_combout\,
	datac => \U_CPU|U_controller|Equal23~0_combout\,
	datad => \U_CPU|U_datapath|U_IR|output\(1),
	combout => \U_CPU|U_controller|next_state.DECA~0_combout\);

-- Location: FF_X17_Y18_N9
\U_CPU|U_controller|state.DECA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.DECA~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.DECA~q\);

-- Location: LCCOMB_X17_Y21_N20
\U_CPU|U_controller|WideOr26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr26~0_combout\ = (!\U_CPU|U_controller|state.ANDR_D~q\ & (!\U_CPU|U_controller|state.CMPR_D~q\ & !\U_CPU|U_controller|state.DECA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.ANDR_D~q\,
	datac => \U_CPU|U_controller|state.CMPR_D~q\,
	datad => \U_CPU|U_controller|state.DECA~q\,
	combout => \U_CPU|U_controller|WideOr26~0_combout\);

-- Location: LCCOMB_X17_Y21_N12
\U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~3_combout\ = (\U_CPU|U_controller|WideOr26~0_combout\ & (!\U_CPU|U_controller|WideOr27~combout\ & ((!\U_CPU|U_controller|WideOr24~combout\)))) # (!\U_CPU|U_controller|WideOr26~0_combout\ & 
-- (\U_CPU|U_controller|WideOr24~combout\ & ((\U_CPU|U_controller|WideOr27~combout\) # (\U_CPU|U_datapath|U_A|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr27~combout\,
	datab => \U_CPU|U_controller|WideOr26~0_combout\,
	datac => \U_CPU|U_datapath|U_A|output\(7),
	datad => \U_CPU|U_controller|WideOr24~combout\,
	combout => \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~3_combout\);

-- Location: LCCOMB_X17_Y21_N6
\U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~4_combout\ = (\U_CPU|U_controller|WideOr25~0_combout\ & (\U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~3_combout\ & ((\U_CPU|U_datapath|U_A|output\(0)) # (!\U_CPU|U_controller|WideOr27~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr27~combout\,
	datab => \U_CPU|U_controller|WideOr25~0_combout\,
	datac => \U_CPU|U_datapath|U_A|output\(0),
	datad => \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~3_combout\,
	combout => \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~4_combout\);

-- Location: FF_X22_Y20_N29
\U_CPU|U_datapath|U_A|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_A|output\(6));

-- Location: FF_X22_Y20_N31
\U_CPU|U_datapath|U_A|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_X_ADDER|Add0~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_A|output\(5));

-- Location: LCCOMB_X21_Y20_N2
\U_CPU|U_datapath|U_D|output[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_D|output[4]~feeder_combout\ = \U_CPU|U_datapath|U_X_ADDER|Add0~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_CPU|U_datapath|U_X_ADDER|Add0~35_combout\,
	combout => \U_CPU|U_datapath|U_D|output[4]~feeder_combout\);

-- Location: LCCOMB_X17_Y20_N26
\U_CPU|U_controller|next_state.STAR_D~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.STAR_D~0_combout\ = (\U_CPU|U_controller|Equal3~1_combout\ & (\U_CPU|U_controller|state.DECODE~q\ & (\U_CPU|U_datapath|U_IR|output\(6) & \U_CPU|U_controller|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal3~1_combout\,
	datab => \U_CPU|U_controller|state.DECODE~q\,
	datac => \U_CPU|U_datapath|U_IR|output\(6),
	datad => \U_CPU|U_controller|Equal2~0_combout\,
	combout => \U_CPU|U_controller|next_state.STAR_D~0_combout\);

-- Location: FF_X17_Y20_N27
\U_CPU|U_controller|state.STAR_D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.STAR_D~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.STAR_D~q\);

-- Location: FF_X21_Y20_N3
\U_CPU|U_datapath|U_D|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_D|output[4]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|state.STAR_D~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_D|output\(4));

-- Location: LCCOMB_X21_Y20_N30
\U_CPU|U_datapath|U_D|output[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_D|output[3]~feeder_combout\ = \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~19_combout\,
	combout => \U_CPU|U_datapath|U_D|output[3]~feeder_combout\);

-- Location: FF_X21_Y20_N31
\U_CPU|U_datapath|U_D|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_D|output[3]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|state.STAR_D~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_D|output\(3));

-- Location: FF_X22_Y20_N25
\U_CPU|U_datapath|U_A|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_A|output\(2));

-- Location: FF_X21_Y20_N27
\U_CPU|U_datapath|U_D|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_X_ADDER|Add0~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|state.STAR_D~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_D|output\(1));

-- Location: LCCOMB_X21_Y20_N24
\U_CPU|U_datapath|U_D|output[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_D|output[0]~feeder_combout\ = \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5_combout\,
	combout => \U_CPU|U_datapath|U_D|output[0]~feeder_combout\);

-- Location: FF_X21_Y20_N25
\U_CPU|U_datapath|U_D|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_D|output[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|state.STAR_D~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_D|output\(0));

-- Location: LCCOMB_X23_Y22_N12
\U_CPU|U_datapath|U_ALU|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|LessThan0~1_cout\ = CARRY((!\U_CPU|U_datapath|U_A|output\(0) & \U_CPU|U_datapath|U_D|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_A|output\(0),
	datab => \U_CPU|U_datapath|U_D|output\(0),
	datad => VCC,
	cout => \U_CPU|U_datapath|U_ALU|LessThan0~1_cout\);

-- Location: LCCOMB_X23_Y22_N14
\U_CPU|U_datapath|U_ALU|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|LessThan0~3_cout\ = CARRY((\U_CPU|U_datapath|U_A|output\(1) & ((!\U_CPU|U_datapath|U_ALU|LessThan0~1_cout\) # (!\U_CPU|U_datapath|U_D|output\(1)))) # (!\U_CPU|U_datapath|U_A|output\(1) & (!\U_CPU|U_datapath|U_D|output\(1) & 
-- !\U_CPU|U_datapath|U_ALU|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_A|output\(1),
	datab => \U_CPU|U_datapath|U_D|output\(1),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|LessThan0~1_cout\,
	cout => \U_CPU|U_datapath|U_ALU|LessThan0~3_cout\);

-- Location: LCCOMB_X23_Y22_N16
\U_CPU|U_datapath|U_ALU|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|LessThan0~5_cout\ = CARRY((\U_CPU|U_datapath|U_D|output\(2) & ((!\U_CPU|U_datapath|U_ALU|LessThan0~3_cout\) # (!\U_CPU|U_datapath|U_A|output\(2)))) # (!\U_CPU|U_datapath|U_D|output\(2) & (!\U_CPU|U_datapath|U_A|output\(2) & 
-- !\U_CPU|U_datapath|U_ALU|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_D|output\(2),
	datab => \U_CPU|U_datapath|U_A|output\(2),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|LessThan0~3_cout\,
	cout => \U_CPU|U_datapath|U_ALU|LessThan0~5_cout\);

-- Location: LCCOMB_X23_Y22_N18
\U_CPU|U_datapath|U_ALU|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|LessThan0~7_cout\ = CARRY((\U_CPU|U_datapath|U_A|output\(3) & ((!\U_CPU|U_datapath|U_ALU|LessThan0~5_cout\) # (!\U_CPU|U_datapath|U_D|output\(3)))) # (!\U_CPU|U_datapath|U_A|output\(3) & (!\U_CPU|U_datapath|U_D|output\(3) & 
-- !\U_CPU|U_datapath|U_ALU|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_A|output\(3),
	datab => \U_CPU|U_datapath|U_D|output\(3),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|LessThan0~5_cout\,
	cout => \U_CPU|U_datapath|U_ALU|LessThan0~7_cout\);

-- Location: LCCOMB_X23_Y22_N20
\U_CPU|U_datapath|U_ALU|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|LessThan0~9_cout\ = CARRY((\U_CPU|U_datapath|U_A|output\(4) & (\U_CPU|U_datapath|U_D|output\(4) & !\U_CPU|U_datapath|U_ALU|LessThan0~7_cout\)) # (!\U_CPU|U_datapath|U_A|output\(4) & ((\U_CPU|U_datapath|U_D|output\(4)) # 
-- (!\U_CPU|U_datapath|U_ALU|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_A|output\(4),
	datab => \U_CPU|U_datapath|U_D|output\(4),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|LessThan0~7_cout\,
	cout => \U_CPU|U_datapath|U_ALU|LessThan0~9_cout\);

-- Location: LCCOMB_X23_Y22_N22
\U_CPU|U_datapath|U_ALU|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|LessThan0~11_cout\ = CARRY((\U_CPU|U_datapath|U_D|output\(5) & (\U_CPU|U_datapath|U_A|output\(5) & !\U_CPU|U_datapath|U_ALU|LessThan0~9_cout\)) # (!\U_CPU|U_datapath|U_D|output\(5) & ((\U_CPU|U_datapath|U_A|output\(5)) # 
-- (!\U_CPU|U_datapath|U_ALU|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_D|output\(5),
	datab => \U_CPU|U_datapath|U_A|output\(5),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|LessThan0~9_cout\,
	cout => \U_CPU|U_datapath|U_ALU|LessThan0~11_cout\);

-- Location: LCCOMB_X23_Y22_N24
\U_CPU|U_datapath|U_ALU|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|LessThan0~13_cout\ = CARRY((\U_CPU|U_datapath|U_D|output\(6) & ((!\U_CPU|U_datapath|U_ALU|LessThan0~11_cout\) # (!\U_CPU|U_datapath|U_A|output\(6)))) # (!\U_CPU|U_datapath|U_D|output\(6) & (!\U_CPU|U_datapath|U_A|output\(6) & 
-- !\U_CPU|U_datapath|U_ALU|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_D|output\(6),
	datab => \U_CPU|U_datapath|U_A|output\(6),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|LessThan0~11_cout\,
	cout => \U_CPU|U_datapath|U_ALU|LessThan0~13_cout\);

-- Location: LCCOMB_X23_Y22_N26
\U_CPU|U_datapath|U_ALU|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|LessThan0~14_combout\ = (\U_CPU|U_datapath|U_D|output\(7) & ((\U_CPU|U_datapath|U_ALU|LessThan0~13_cout\) # (!\U_CPU|U_datapath|U_A|output\(7)))) # (!\U_CPU|U_datapath|U_D|output\(7) & (!\U_CPU|U_datapath|U_A|output\(7) & 
-- \U_CPU|U_datapath|U_ALU|LessThan0~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_D|output\(7),
	datab => \U_CPU|U_datapath|U_A|output\(7),
	cin => \U_CPU|U_datapath|U_ALU|LessThan0~13_cout\,
	combout => \U_CPU|U_datapath|U_ALU|LessThan0~14_combout\);

-- Location: LCCOMB_X17_Y21_N14
\U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~0_combout\ = (\U_CPU|U_controller|WideOr24~combout\ & (\U_CPU|U_datapath|U_ALU|LessThan0~14_combout\ & (\U_CPU|U_controller|WideOr27~combout\ $ (!\U_CPU|U_controller|WideOr26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr27~combout\,
	datab => \U_CPU|U_controller|WideOr24~combout\,
	datac => \U_CPU|U_datapath|U_ALU|LessThan0~14_combout\,
	datad => \U_CPU|U_controller|WideOr26~0_combout\,
	combout => \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~0_combout\);

-- Location: LCCOMB_X19_Y18_N20
\U_CPU|U_controller|next_state.SBCR_D~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.SBCR_D~0_combout\ = (\U_CPU|U_controller|state.DECODE~q\ & (!\U_CPU|U_datapath|U_IR|output\(7) & \U_CPU|U_controller|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.DECODE~q\,
	datac => \U_CPU|U_datapath|U_IR|output\(7),
	datad => \U_CPU|U_controller|Equal6~0_combout\,
	combout => \U_CPU|U_controller|next_state.SBCR_D~0_combout\);

-- Location: FF_X19_Y18_N21
\U_CPU|U_controller|state.SBCR_D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.SBCR_D~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.SBCR_D~q\);

-- Location: LCCOMB_X17_Y21_N0
\U_CPU|U_controller|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr4~0_combout\ = (!\U_CPU|U_controller|state.ANDR_D~q\ & (!\U_CPU|U_controller|state.XORR_D~q\ & !\U_CPU|U_controller|state.SBCR_D~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.ANDR_D~q\,
	datac => \U_CPU|U_controller|state.XORR_D~q\,
	datad => \U_CPU|U_controller|state.SBCR_D~q\,
	combout => \U_CPU|U_controller|WideOr4~0_combout\);

-- Location: LCCOMB_X17_Y21_N10
\U_CPU|U_controller|WideOr27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr27~combout\ = (\U_CPU|U_controller|state.RORC~q\) # ((\U_CPU|U_controller|state.CLRC~q\) # (!\U_CPU|U_controller|WideOr4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.RORC~q\,
	datac => \U_CPU|U_controller|state.CLRC~q\,
	datad => \U_CPU|U_controller|WideOr4~0_combout\,
	combout => \U_CPU|U_controller|WideOr27~combout\);

-- Location: LCCOMB_X21_Y22_N6
\U_CPU|U_datapath|U_ALU|Mux0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux0~13_combout\ = (\U_CPU|U_controller|WideOr27~combout\ & ((\U_CPU|U_datapath|U_A|output\(0)))) # (!\U_CPU|U_controller|WideOr27~combout\ & (\U_CPU|U_datapath|U_A|output\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_A|output\(7),
	datac => \U_CPU|U_datapath|U_A|output\(0),
	datad => \U_CPU|U_controller|WideOr27~combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux0~13_combout\);

-- Location: FF_X22_Y20_N9
\U_CPU|U_datapath|U_A|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_X_ADDER|Add0~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_A|output\(4));

-- Location: LCCOMB_X22_Y20_N0
\U_CPU|U_datapath|U_ALU|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add0~0_combout\ = (\U_CPU|U_datapath|U_STATUS_REG_CARRY|output\(0) & (\U_CPU|U_datapath|U_A|output\(0) $ (VCC))) # (!\U_CPU|U_datapath|U_STATUS_REG_CARRY|output\(0) & (\U_CPU|U_datapath|U_A|output\(0) & VCC))
-- \U_CPU|U_datapath|U_ALU|Add0~1\ = CARRY((\U_CPU|U_datapath|U_STATUS_REG_CARRY|output\(0) & \U_CPU|U_datapath|U_A|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_STATUS_REG_CARRY|output\(0),
	datab => \U_CPU|U_datapath|U_A|output\(0),
	datad => VCC,
	combout => \U_CPU|U_datapath|U_ALU|Add0~0_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add0~1\);

-- Location: LCCOMB_X22_Y20_N8
\U_CPU|U_datapath|U_ALU|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add0~8_combout\ = (\U_CPU|U_datapath|U_A|output\(4) & (\U_CPU|U_datapath|U_ALU|Add0~7\ $ (GND))) # (!\U_CPU|U_datapath|U_A|output\(4) & (!\U_CPU|U_datapath|U_ALU|Add0~7\ & VCC))
-- \U_CPU|U_datapath|U_ALU|Add0~9\ = CARRY((\U_CPU|U_datapath|U_A|output\(4) & !\U_CPU|U_datapath|U_ALU|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_A|output\(4),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add0~7\,
	combout => \U_CPU|U_datapath|U_ALU|Add0~8_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add0~9\);

-- Location: LCCOMB_X22_Y20_N10
\U_CPU|U_datapath|U_ALU|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add0~10_combout\ = (\U_CPU|U_datapath|U_A|output\(5) & (!\U_CPU|U_datapath|U_ALU|Add0~9\)) # (!\U_CPU|U_datapath|U_A|output\(5) & ((\U_CPU|U_datapath|U_ALU|Add0~9\) # (GND)))
-- \U_CPU|U_datapath|U_ALU|Add0~11\ = CARRY((!\U_CPU|U_datapath|U_ALU|Add0~9\) # (!\U_CPU|U_datapath|U_A|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_A|output\(5),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add0~9\,
	combout => \U_CPU|U_datapath|U_ALU|Add0~10_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add0~11\);

-- Location: LCCOMB_X22_Y20_N12
\U_CPU|U_datapath|U_ALU|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add0~12_combout\ = (\U_CPU|U_datapath|U_A|output\(6) & (\U_CPU|U_datapath|U_ALU|Add0~11\ $ (GND))) # (!\U_CPU|U_datapath|U_A|output\(6) & (!\U_CPU|U_datapath|U_ALU|Add0~11\ & VCC))
-- \U_CPU|U_datapath|U_ALU|Add0~13\ = CARRY((\U_CPU|U_datapath|U_A|output\(6) & !\U_CPU|U_datapath|U_ALU|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_A|output\(6),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add0~11\,
	combout => \U_CPU|U_datapath|U_ALU|Add0~12_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add0~13\);

-- Location: LCCOMB_X22_Y20_N14
\U_CPU|U_datapath|U_ALU|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add0~14_combout\ = (\U_CPU|U_datapath|U_A|output\(7) & (!\U_CPU|U_datapath|U_ALU|Add0~13\)) # (!\U_CPU|U_datapath|U_A|output\(7) & ((\U_CPU|U_datapath|U_ALU|Add0~13\) # (GND)))
-- \U_CPU|U_datapath|U_ALU|Add0~15\ = CARRY((!\U_CPU|U_datapath|U_ALU|Add0~13\) # (!\U_CPU|U_datapath|U_A|output\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_A|output\(7),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add0~13\,
	combout => \U_CPU|U_datapath|U_ALU|Add0~14_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add0~15\);

-- Location: LCCOMB_X22_Y20_N16
\U_CPU|U_datapath|U_ALU|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add0~16_combout\ = !\U_CPU|U_datapath|U_ALU|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_CPU|U_datapath|U_ALU|Add0~15\,
	combout => \U_CPU|U_datapath|U_ALU|Add0~16_combout\);

-- Location: FF_X21_Y20_N1
\U_CPU|U_datapath|U_D|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|state.STAR_D~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_D|output\(2));

-- Location: LCCOMB_X21_Y20_N4
\U_CPU|U_datapath|U_ALU|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add1~0_combout\ = (\U_CPU|U_datapath|U_D|output\(0) & (\U_CPU|U_datapath|U_ALU|Add0~0_combout\ $ (VCC))) # (!\U_CPU|U_datapath|U_D|output\(0) & (\U_CPU|U_datapath|U_ALU|Add0~0_combout\ & VCC))
-- \U_CPU|U_datapath|U_ALU|Add1~1\ = CARRY((\U_CPU|U_datapath|U_D|output\(0) & \U_CPU|U_datapath|U_ALU|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_D|output\(0),
	datab => \U_CPU|U_datapath|U_ALU|Add0~0_combout\,
	datad => VCC,
	combout => \U_CPU|U_datapath|U_ALU|Add1~0_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add1~1\);

-- Location: LCCOMB_X21_Y20_N6
\U_CPU|U_datapath|U_ALU|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add1~2_combout\ = (\U_CPU|U_datapath|U_ALU|Add0~2_combout\ & ((\U_CPU|U_datapath|U_D|output\(1) & (\U_CPU|U_datapath|U_ALU|Add1~1\ & VCC)) # (!\U_CPU|U_datapath|U_D|output\(1) & (!\U_CPU|U_datapath|U_ALU|Add1~1\)))) # 
-- (!\U_CPU|U_datapath|U_ALU|Add0~2_combout\ & ((\U_CPU|U_datapath|U_D|output\(1) & (!\U_CPU|U_datapath|U_ALU|Add1~1\)) # (!\U_CPU|U_datapath|U_D|output\(1) & ((\U_CPU|U_datapath|U_ALU|Add1~1\) # (GND)))))
-- \U_CPU|U_datapath|U_ALU|Add1~3\ = CARRY((\U_CPU|U_datapath|U_ALU|Add0~2_combout\ & (!\U_CPU|U_datapath|U_D|output\(1) & !\U_CPU|U_datapath|U_ALU|Add1~1\)) # (!\U_CPU|U_datapath|U_ALU|Add0~2_combout\ & ((!\U_CPU|U_datapath|U_ALU|Add1~1\) # 
-- (!\U_CPU|U_datapath|U_D|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Add0~2_combout\,
	datab => \U_CPU|U_datapath|U_D|output\(1),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add1~1\,
	combout => \U_CPU|U_datapath|U_ALU|Add1~2_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add1~3\);

-- Location: LCCOMB_X21_Y20_N8
\U_CPU|U_datapath|U_ALU|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add1~4_combout\ = ((\U_CPU|U_datapath|U_ALU|Add0~4_combout\ $ (\U_CPU|U_datapath|U_D|output\(2) $ (!\U_CPU|U_datapath|U_ALU|Add1~3\)))) # (GND)
-- \U_CPU|U_datapath|U_ALU|Add1~5\ = CARRY((\U_CPU|U_datapath|U_ALU|Add0~4_combout\ & ((\U_CPU|U_datapath|U_D|output\(2)) # (!\U_CPU|U_datapath|U_ALU|Add1~3\))) # (!\U_CPU|U_datapath|U_ALU|Add0~4_combout\ & (\U_CPU|U_datapath|U_D|output\(2) & 
-- !\U_CPU|U_datapath|U_ALU|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Add0~4_combout\,
	datab => \U_CPU|U_datapath|U_D|output\(2),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add1~3\,
	combout => \U_CPU|U_datapath|U_ALU|Add1~4_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add1~5\);

-- Location: LCCOMB_X21_Y20_N10
\U_CPU|U_datapath|U_ALU|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add1~6_combout\ = (\U_CPU|U_datapath|U_ALU|Add0~6_combout\ & ((\U_CPU|U_datapath|U_D|output\(3) & (\U_CPU|U_datapath|U_ALU|Add1~5\ & VCC)) # (!\U_CPU|U_datapath|U_D|output\(3) & (!\U_CPU|U_datapath|U_ALU|Add1~5\)))) # 
-- (!\U_CPU|U_datapath|U_ALU|Add0~6_combout\ & ((\U_CPU|U_datapath|U_D|output\(3) & (!\U_CPU|U_datapath|U_ALU|Add1~5\)) # (!\U_CPU|U_datapath|U_D|output\(3) & ((\U_CPU|U_datapath|U_ALU|Add1~5\) # (GND)))))
-- \U_CPU|U_datapath|U_ALU|Add1~7\ = CARRY((\U_CPU|U_datapath|U_ALU|Add0~6_combout\ & (!\U_CPU|U_datapath|U_D|output\(3) & !\U_CPU|U_datapath|U_ALU|Add1~5\)) # (!\U_CPU|U_datapath|U_ALU|Add0~6_combout\ & ((!\U_CPU|U_datapath|U_ALU|Add1~5\) # 
-- (!\U_CPU|U_datapath|U_D|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Add0~6_combout\,
	datab => \U_CPU|U_datapath|U_D|output\(3),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add1~5\,
	combout => \U_CPU|U_datapath|U_ALU|Add1~6_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add1~7\);

-- Location: LCCOMB_X21_Y20_N16
\U_CPU|U_datapath|U_ALU|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add1~12_combout\ = ((\U_CPU|U_datapath|U_D|output\(6) $ (\U_CPU|U_datapath|U_ALU|Add0~12_combout\ $ (!\U_CPU|U_datapath|U_ALU|Add1~11\)))) # (GND)
-- \U_CPU|U_datapath|U_ALU|Add1~13\ = CARRY((\U_CPU|U_datapath|U_D|output\(6) & ((\U_CPU|U_datapath|U_ALU|Add0~12_combout\) # (!\U_CPU|U_datapath|U_ALU|Add1~11\))) # (!\U_CPU|U_datapath|U_D|output\(6) & (\U_CPU|U_datapath|U_ALU|Add0~12_combout\ & 
-- !\U_CPU|U_datapath|U_ALU|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_D|output\(6),
	datab => \U_CPU|U_datapath|U_ALU|Add0~12_combout\,
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add1~11\,
	combout => \U_CPU|U_datapath|U_ALU|Add1~12_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add1~13\);

-- Location: LCCOMB_X21_Y20_N18
\U_CPU|U_datapath|U_ALU|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add1~14_combout\ = (\U_CPU|U_datapath|U_D|output\(7) & ((\U_CPU|U_datapath|U_ALU|Add0~14_combout\ & (\U_CPU|U_datapath|U_ALU|Add1~13\ & VCC)) # (!\U_CPU|U_datapath|U_ALU|Add0~14_combout\ & (!\U_CPU|U_datapath|U_ALU|Add1~13\)))) # 
-- (!\U_CPU|U_datapath|U_D|output\(7) & ((\U_CPU|U_datapath|U_ALU|Add0~14_combout\ & (!\U_CPU|U_datapath|U_ALU|Add1~13\)) # (!\U_CPU|U_datapath|U_ALU|Add0~14_combout\ & ((\U_CPU|U_datapath|U_ALU|Add1~13\) # (GND)))))
-- \U_CPU|U_datapath|U_ALU|Add1~15\ = CARRY((\U_CPU|U_datapath|U_D|output\(7) & (!\U_CPU|U_datapath|U_ALU|Add0~14_combout\ & !\U_CPU|U_datapath|U_ALU|Add1~13\)) # (!\U_CPU|U_datapath|U_D|output\(7) & ((!\U_CPU|U_datapath|U_ALU|Add1~13\) # 
-- (!\U_CPU|U_datapath|U_ALU|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_D|output\(7),
	datab => \U_CPU|U_datapath|U_ALU|Add0~14_combout\,
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add1~13\,
	combout => \U_CPU|U_datapath|U_ALU|Add1~14_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add1~15\);

-- Location: LCCOMB_X21_Y20_N20
\U_CPU|U_datapath|U_ALU|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add1~16_combout\ = \U_CPU|U_datapath|U_ALU|Add1~15\ $ (!\U_CPU|U_datapath|U_ALU|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_CPU|U_datapath|U_ALU|Add0~16_combout\,
	cin => \U_CPU|U_datapath|U_ALU|Add1~15\,
	combout => \U_CPU|U_datapath|U_ALU|Add1~16_combout\);

-- Location: LCCOMB_X17_Y21_N24
\U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~1_combout\ = (\U_CPU|U_controller|WideOr24~combout\ & (!\U_CPU|U_controller|WideOr27~combout\ & ((\U_CPU|U_datapath|U_ALU|Add1~16_combout\)))) # (!\U_CPU|U_controller|WideOr24~combout\ & 
-- (((\U_CPU|U_datapath|U_ALU|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr27~combout\,
	datab => \U_CPU|U_controller|WideOr24~combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux0~13_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Add1~16_combout\,
	combout => \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~1_combout\);

-- Location: LCCOMB_X17_Y21_N26
\U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~2_combout\ = (!\U_CPU|U_controller|WideOr25~0_combout\ & ((\U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~0_combout\) # ((\U_CPU|U_controller|WideOr26~0_combout\ & 
-- \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr26~0_combout\,
	datab => \U_CPU|U_controller|WideOr25~0_combout\,
	datac => \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~0_combout\,
	datad => \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~1_combout\,
	combout => \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~2_combout\);

-- Location: LCCOMB_X17_Y18_N30
\U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~5_combout\ = (\U_CPU|U_controller|WideOr23~combout\ & ((\U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~4_combout\) # ((\U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~2_combout\)))) # 
-- (!\U_CPU|U_controller|WideOr23~combout\ & (((\U_CPU|U_datapath|U_STATUS_REG_CARRY|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr23~combout\,
	datab => \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~4_combout\,
	datac => \U_CPU|U_datapath|U_STATUS_REG_CARRY|output\(0),
	datad => \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~2_combout\,
	combout => \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~5_combout\);

-- Location: FF_X17_Y18_N31
\U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_STATUS_REG_CARRY|output[0]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_STATUS_REG_CARRY|output\(0));

-- Location: LCCOMB_X20_Y21_N18
\U_CPU|U_controller|Equal15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal15~0_combout\ = (\U_CPU|U_controller|Equal16~0_combout\ & (!\U_CPU|U_datapath|U_IR|output\(3) & !\U_CPU|U_datapath|U_IR|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal16~0_combout\,
	datab => \U_CPU|U_datapath|U_IR|output\(3),
	datad => \U_CPU|U_datapath|U_IR|output\(0),
	combout => \U_CPU|U_controller|Equal15~0_combout\);

-- Location: LCCOMB_X17_Y18_N16
\U_CPU|U_controller|next_state.BCCA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.BCCA~0_combout\ = (\U_CPU|U_controller|state.DECODE~q\ & (!\U_CPU|U_datapath|U_IR|output\(2) & (\U_CPU|U_controller|Equal15~0_combout\ & !\U_CPU|U_datapath|U_IR|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.DECODE~q\,
	datab => \U_CPU|U_datapath|U_IR|output\(2),
	datac => \U_CPU|U_controller|Equal15~0_combout\,
	datad => \U_CPU|U_datapath|U_IR|output\(1),
	combout => \U_CPU|U_controller|next_state.BCCA~0_combout\);

-- Location: FF_X17_Y18_N17
\U_CPU|U_controller|state.BCCA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.BCCA~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.BCCA~q\);

-- Location: LCCOMB_X17_Y18_N0
\U_CPU|U_controller|Selector4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector4~8_combout\ = (!\U_CPU|U_datapath|U_STATUS_REG_CARRY|output\(0) & \U_CPU|U_controller|state.BCCA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CPU|U_datapath|U_STATUS_REG_CARRY|output\(0),
	datad => \U_CPU|U_controller|state.BCCA~q\,
	combout => \U_CPU|U_controller|Selector4~8_combout\);

-- Location: FF_X17_Y18_N1
\U_CPU|U_controller|state.BCCA_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|Selector4~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.BCCA_2~q\);

-- Location: FF_X19_Y18_N25
\U_CPU|U_controller|state.BCCA_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.BCCA_2~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.BCCA_3~q\);

-- Location: FF_X19_Y18_N23
\U_CPU|U_controller|state.BPLA_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.BPLA_2~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.BPLA_3~q\);

-- Location: FF_X21_Y21_N7
\U_CPU|U_datapath|U_A|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_A|output\(3));

-- Location: LCCOMB_X20_Y18_N22
\U_CPU|U_datapath|U_ALU|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux2~0_combout\ = (\U_CPU|U_controller|WideOr26~0_combout\ & ((\U_CPU|U_controller|WideOr24~combout\) # (\U_CPU|U_controller|WideOr25~0_combout\))) # (!\U_CPU|U_controller|WideOr26~0_combout\ & 
-- ((!\U_CPU|U_controller|WideOr25~0_combout\) # (!\U_CPU|U_controller|WideOr24~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr26~0_combout\,
	datac => \U_CPU|U_controller|WideOr24~combout\,
	datad => \U_CPU|U_controller|WideOr25~0_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y22_N26
\U_CPU|U_datapath|U_ALU|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux5~1_combout\ = (!\U_CPU|U_datapath|U_ALU|Mux2~0_combout\ & ((\U_CPU|U_controller|WideOr27~combout\ & ((\U_CPU|U_datapath|U_A|output\(3)))) # (!\U_CPU|U_controller|WideOr27~combout\ & (\U_CPU|U_datapath|U_A|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_A|output\(1),
	datab => \U_CPU|U_controller|WideOr27~combout\,
	datac => \U_CPU|U_datapath|U_A|output\(3),
	datad => \U_CPU|U_datapath|U_ALU|Mux2~0_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux5~1_combout\);

-- Location: LCCOMB_X20_Y18_N0
\U_CPU|U_datapath|U_ALU|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux2~2_combout\ = (\U_CPU|U_controller|WideOr25~0_combout\ & (((\U_CPU|U_controller|WideOr27~combout\)))) # (!\U_CPU|U_controller|WideOr25~0_combout\ & ((\U_CPU|U_controller|WideOr26~0_combout\ & 
-- ((\U_CPU|U_controller|WideOr27~combout\))) # (!\U_CPU|U_controller|WideOr26~0_combout\ & (\U_CPU|U_controller|WideOr24~combout\ & !\U_CPU|U_controller|WideOr27~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr25~0_combout\,
	datab => \U_CPU|U_controller|WideOr26~0_combout\,
	datac => \U_CPU|U_controller|WideOr24~combout\,
	datad => \U_CPU|U_controller|WideOr27~combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux2~2_combout\);

-- Location: FF_X22_Y20_N27
\U_CPU|U_datapath|U_A|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_X_ADDER|Add0~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_A|output\(1));

-- Location: LCCOMB_X22_Y22_N6
\U_CPU|U_datapath|U_ALU|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add2~1_cout\ = CARRY(\U_CPU|U_datapath|U_STATUS_REG_CARRY|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_STATUS_REG_CARRY|output\(0),
	datad => VCC,
	cout => \U_CPU|U_datapath|U_ALU|Add2~1_cout\);

-- Location: LCCOMB_X22_Y22_N8
\U_CPU|U_datapath|U_ALU|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add2~2_combout\ = (\U_CPU|U_datapath|U_D|output\(0) & ((\U_CPU|U_datapath|U_A|output\(0) & (!\U_CPU|U_datapath|U_ALU|Add2~1_cout\)) # (!\U_CPU|U_datapath|U_A|output\(0) & ((\U_CPU|U_datapath|U_ALU|Add2~1_cout\) # (GND))))) # 
-- (!\U_CPU|U_datapath|U_D|output\(0) & ((\U_CPU|U_datapath|U_A|output\(0) & (\U_CPU|U_datapath|U_ALU|Add2~1_cout\ & VCC)) # (!\U_CPU|U_datapath|U_A|output\(0) & (!\U_CPU|U_datapath|U_ALU|Add2~1_cout\))))
-- \U_CPU|U_datapath|U_ALU|Add2~3\ = CARRY((\U_CPU|U_datapath|U_D|output\(0) & ((!\U_CPU|U_datapath|U_ALU|Add2~1_cout\) # (!\U_CPU|U_datapath|U_A|output\(0)))) # (!\U_CPU|U_datapath|U_D|output\(0) & (!\U_CPU|U_datapath|U_A|output\(0) & 
-- !\U_CPU|U_datapath|U_ALU|Add2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_D|output\(0),
	datab => \U_CPU|U_datapath|U_A|output\(0),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add2~1_cout\,
	combout => \U_CPU|U_datapath|U_ALU|Add2~2_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add2~3\);

-- Location: LCCOMB_X22_Y22_N10
\U_CPU|U_datapath|U_ALU|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add2~4_combout\ = ((\U_CPU|U_datapath|U_D|output\(1) $ (\U_CPU|U_datapath|U_A|output\(1) $ (\U_CPU|U_datapath|U_ALU|Add2~3\)))) # (GND)
-- \U_CPU|U_datapath|U_ALU|Add2~5\ = CARRY((\U_CPU|U_datapath|U_D|output\(1) & (\U_CPU|U_datapath|U_A|output\(1) & !\U_CPU|U_datapath|U_ALU|Add2~3\)) # (!\U_CPU|U_datapath|U_D|output\(1) & ((\U_CPU|U_datapath|U_A|output\(1)) # 
-- (!\U_CPU|U_datapath|U_ALU|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_D|output\(1),
	datab => \U_CPU|U_datapath|U_A|output\(1),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add2~3\,
	combout => \U_CPU|U_datapath|U_ALU|Add2~4_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add2~5\);

-- Location: LCCOMB_X22_Y22_N12
\U_CPU|U_datapath|U_ALU|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add2~6_combout\ = (\U_CPU|U_datapath|U_D|output\(2) & ((\U_CPU|U_datapath|U_A|output\(2) & (!\U_CPU|U_datapath|U_ALU|Add2~5\)) # (!\U_CPU|U_datapath|U_A|output\(2) & ((\U_CPU|U_datapath|U_ALU|Add2~5\) # (GND))))) # 
-- (!\U_CPU|U_datapath|U_D|output\(2) & ((\U_CPU|U_datapath|U_A|output\(2) & (\U_CPU|U_datapath|U_ALU|Add2~5\ & VCC)) # (!\U_CPU|U_datapath|U_A|output\(2) & (!\U_CPU|U_datapath|U_ALU|Add2~5\))))
-- \U_CPU|U_datapath|U_ALU|Add2~7\ = CARRY((\U_CPU|U_datapath|U_D|output\(2) & ((!\U_CPU|U_datapath|U_ALU|Add2~5\) # (!\U_CPU|U_datapath|U_A|output\(2)))) # (!\U_CPU|U_datapath|U_D|output\(2) & (!\U_CPU|U_datapath|U_A|output\(2) & 
-- !\U_CPU|U_datapath|U_ALU|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_D|output\(2),
	datab => \U_CPU|U_datapath|U_A|output\(2),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add2~5\,
	combout => \U_CPU|U_datapath|U_ALU|Add2~6_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add2~7\);

-- Location: LCCOMB_X23_Y22_N8
\U_CPU|U_datapath|U_ALU|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux5~2_combout\ = (\U_CPU|U_controller|WideOr25~0_combout\ & ((\U_CPU|U_datapath|U_D|output\(2)) # (\U_CPU|U_datapath|U_A|output\(2)))) # (!\U_CPU|U_controller|WideOr25~0_combout\ & (\U_CPU|U_datapath|U_D|output\(2) & 
-- \U_CPU|U_datapath|U_A|output\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr25~0_combout\,
	datac => \U_CPU|U_datapath|U_D|output\(2),
	datad => \U_CPU|U_datapath|U_A|output\(2),
	combout => \U_CPU|U_datapath|U_ALU|Mux5~2_combout\);

-- Location: LCCOMB_X20_Y18_N10
\U_CPU|U_datapath|U_ALU|Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux2~5_combout\ = (!\U_CPU|U_controller|WideOr26~0_combout\ & ((\U_CPU|U_controller|WideOr24~combout\) # (\U_CPU|U_controller|WideOr27~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr26~0_combout\,
	datac => \U_CPU|U_controller|WideOr24~combout\,
	datad => \U_CPU|U_controller|WideOr27~combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux2~5_combout\);

-- Location: LCCOMB_X21_Y22_N14
\U_CPU|U_datapath|U_ALU|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add4~0_combout\ = \U_CPU|U_datapath|U_A|output\(0) $ (VCC)
-- \U_CPU|U_datapath|U_ALU|Add4~1\ = CARRY(\U_CPU|U_datapath|U_A|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_A|output\(0),
	datad => VCC,
	combout => \U_CPU|U_datapath|U_ALU|Add4~0_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add4~1\);

-- Location: LCCOMB_X21_Y22_N16
\U_CPU|U_datapath|U_ALU|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add4~2_combout\ = (\U_CPU|U_datapath|U_A|output\(1) & (\U_CPU|U_datapath|U_ALU|Add4~1\ & VCC)) # (!\U_CPU|U_datapath|U_A|output\(1) & (!\U_CPU|U_datapath|U_ALU|Add4~1\))
-- \U_CPU|U_datapath|U_ALU|Add4~3\ = CARRY((!\U_CPU|U_datapath|U_A|output\(1) & !\U_CPU|U_datapath|U_ALU|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_A|output\(1),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add4~1\,
	combout => \U_CPU|U_datapath|U_ALU|Add4~2_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add4~3\);

-- Location: LCCOMB_X21_Y22_N18
\U_CPU|U_datapath|U_ALU|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add4~4_combout\ = (\U_CPU|U_datapath|U_A|output\(2) & ((GND) # (!\U_CPU|U_datapath|U_ALU|Add4~3\))) # (!\U_CPU|U_datapath|U_A|output\(2) & (\U_CPU|U_datapath|U_ALU|Add4~3\ $ (GND)))
-- \U_CPU|U_datapath|U_ALU|Add4~5\ = CARRY((\U_CPU|U_datapath|U_A|output\(2)) # (!\U_CPU|U_datapath|U_ALU|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_A|output\(2),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add4~3\,
	combout => \U_CPU|U_datapath|U_ALU|Add4~4_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add4~5\);

-- Location: LCCOMB_X23_Y22_N10
\U_CPU|U_datapath|U_ALU|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux5~3_combout\ = (\U_CPU|U_datapath|U_ALU|Mux2~4_combout\ & (((\U_CPU|U_datapath|U_ALU|Mux2~5_combout\) # (\U_CPU|U_datapath|U_ALU|Add1~4_combout\)))) # (!\U_CPU|U_datapath|U_ALU|Mux2~4_combout\ & 
-- (\U_CPU|U_datapath|U_ALU|Add4~4_combout\ & (!\U_CPU|U_datapath|U_ALU|Mux2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Mux2~4_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Add4~4_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux2~5_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Add1~4_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux5~3_combout\);

-- Location: LCCOMB_X23_Y22_N4
\U_CPU|U_datapath|U_ALU|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux5~4_combout\ = (\U_CPU|U_datapath|U_ALU|Mux2~5_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux5~3_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux5~2_combout\))) # (!\U_CPU|U_datapath|U_ALU|Mux5~3_combout\ & 
-- (\U_CPU|U_datapath|U_ALU|Add5~4_combout\)))) # (!\U_CPU|U_datapath|U_ALU|Mux2~5_combout\ & (((\U_CPU|U_datapath|U_ALU|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Add5~4_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Mux5~2_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux2~5_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux5~3_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux5~4_combout\);

-- Location: LCCOMB_X23_Y22_N30
\U_CPU|U_datapath|U_ALU|Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux5~5_combout\ = (\U_CPU|U_datapath|U_ALU|Mux2~2_combout\ & (((\U_CPU|U_controller|WideOr25~0_combout\)))) # (!\U_CPU|U_datapath|U_ALU|Mux2~2_combout\ & ((\U_CPU|U_controller|WideOr25~0_combout\ & 
-- (\U_CPU|U_datapath|U_ALU|Mux5~2_combout\)) # (!\U_CPU|U_controller|WideOr25~0_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux5~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Mux2~2_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Mux5~2_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux5~4_combout\,
	datad => \U_CPU|U_controller|WideOr25~0_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux5~5_combout\);

-- Location: LCCOMB_X19_Y22_N28
\U_CPU|U_datapath|U_ALU|Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux5~6_combout\ = (\U_CPU|U_datapath|U_ALU|Mux2~2_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux5~5_combout\ & (\U_CPU|U_datapath|U_ALU|output_sig~5_combout\)) # (!\U_CPU|U_datapath|U_ALU|Mux5~5_combout\ & 
-- ((\U_CPU|U_datapath|U_ALU|Add2~6_combout\))))) # (!\U_CPU|U_datapath|U_ALU|Mux2~2_combout\ & (((\U_CPU|U_datapath|U_ALU|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|output_sig~5_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Mux2~2_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Add2~6_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux5~5_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux5~6_combout\);

-- Location: LCCOMB_X19_Y22_N14
\U_CPU|U_datapath|U_ALU|Mux5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux5~7_combout\ = (\U_CPU|U_datapath|U_ALU|Mux5~1_combout\) # ((\U_CPU|U_datapath|U_ALU|Mux5~0_combout\ & \U_CPU|U_datapath|U_ALU|Mux5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_ALU|Mux5~0_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux5~1_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux5~6_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux5~7_combout\);

-- Location: LCCOMB_X19_Y22_N20
\U_CPU|U_datapath|U_ALU|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux1~0_combout\ = (!\U_CPU|U_datapath|U_ALU|Mux2~0_combout\ & ((\U_CPU|U_controller|WideOr27~combout\ & (\U_CPU|U_datapath|U_A|output\(7))) # (!\U_CPU|U_controller|WideOr27~combout\ & ((\U_CPU|U_datapath|U_A|output\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr27~combout\,
	datab => \U_CPU|U_datapath|U_A|output\(7),
	datac => \U_CPU|U_datapath|U_A|output\(5),
	datad => \U_CPU|U_datapath|U_ALU|Mux2~0_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux1~0_combout\);

-- Location: FF_X21_Y20_N15
\U_CPU|U_datapath|U_D|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_X_ADDER|Add0~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|state.STAR_D~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_D|output\(5));

-- Location: LCCOMB_X22_Y22_N14
\U_CPU|U_datapath|U_ALU|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add2~8_combout\ = ((\U_CPU|U_datapath|U_A|output\(3) $ (\U_CPU|U_datapath|U_D|output\(3) $ (\U_CPU|U_datapath|U_ALU|Add2~7\)))) # (GND)
-- \U_CPU|U_datapath|U_ALU|Add2~9\ = CARRY((\U_CPU|U_datapath|U_A|output\(3) & ((!\U_CPU|U_datapath|U_ALU|Add2~7\) # (!\U_CPU|U_datapath|U_D|output\(3)))) # (!\U_CPU|U_datapath|U_A|output\(3) & (!\U_CPU|U_datapath|U_D|output\(3) & 
-- !\U_CPU|U_datapath|U_ALU|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_A|output\(3),
	datab => \U_CPU|U_datapath|U_D|output\(3),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add2~7\,
	combout => \U_CPU|U_datapath|U_ALU|Add2~8_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add2~9\);

-- Location: LCCOMB_X22_Y22_N20
\U_CPU|U_datapath|U_ALU|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add2~14_combout\ = (\U_CPU|U_datapath|U_D|output\(6) & ((\U_CPU|U_datapath|U_A|output\(6) & (!\U_CPU|U_datapath|U_ALU|Add2~13\)) # (!\U_CPU|U_datapath|U_A|output\(6) & ((\U_CPU|U_datapath|U_ALU|Add2~13\) # (GND))))) # 
-- (!\U_CPU|U_datapath|U_D|output\(6) & ((\U_CPU|U_datapath|U_A|output\(6) & (\U_CPU|U_datapath|U_ALU|Add2~13\ & VCC)) # (!\U_CPU|U_datapath|U_A|output\(6) & (!\U_CPU|U_datapath|U_ALU|Add2~13\))))
-- \U_CPU|U_datapath|U_ALU|Add2~15\ = CARRY((\U_CPU|U_datapath|U_D|output\(6) & ((!\U_CPU|U_datapath|U_ALU|Add2~13\) # (!\U_CPU|U_datapath|U_A|output\(6)))) # (!\U_CPU|U_datapath|U_D|output\(6) & (!\U_CPU|U_datapath|U_A|output\(6) & 
-- !\U_CPU|U_datapath|U_ALU|Add2~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_D|output\(6),
	datab => \U_CPU|U_datapath|U_A|output\(6),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add2~13\,
	combout => \U_CPU|U_datapath|U_ALU|Add2~14_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add2~15\);

-- Location: FF_X21_Y20_N17
\U_CPU|U_datapath|U_D|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|state.STAR_D~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_D|output\(6));

-- Location: LCCOMB_X20_Y22_N24
\U_CPU|U_datapath|U_ALU|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux1~1_combout\ = (\U_CPU|U_controller|WideOr25~0_combout\ & ((\U_CPU|U_datapath|U_D|output\(6)) # (\U_CPU|U_datapath|U_A|output\(6)))) # (!\U_CPU|U_controller|WideOr25~0_combout\ & (\U_CPU|U_datapath|U_D|output\(6) & 
-- \U_CPU|U_datapath|U_A|output\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr25~0_combout\,
	datac => \U_CPU|U_datapath|U_D|output\(6),
	datad => \U_CPU|U_datapath|U_A|output\(6),
	combout => \U_CPU|U_datapath|U_ALU|Mux1~1_combout\);

-- Location: LCCOMB_X21_Y22_N20
\U_CPU|U_datapath|U_ALU|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add4~6_combout\ = (\U_CPU|U_datapath|U_A|output\(3) & (\U_CPU|U_datapath|U_ALU|Add4~5\ & VCC)) # (!\U_CPU|U_datapath|U_A|output\(3) & (!\U_CPU|U_datapath|U_ALU|Add4~5\))
-- \U_CPU|U_datapath|U_ALU|Add4~7\ = CARRY((!\U_CPU|U_datapath|U_A|output\(3) & !\U_CPU|U_datapath|U_ALU|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_A|output\(3),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add4~5\,
	combout => \U_CPU|U_datapath|U_ALU|Add4~6_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add4~7\);

-- Location: LCCOMB_X21_Y22_N26
\U_CPU|U_datapath|U_ALU|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add4~12_combout\ = (\U_CPU|U_datapath|U_A|output\(6) & ((GND) # (!\U_CPU|U_datapath|U_ALU|Add4~11\))) # (!\U_CPU|U_datapath|U_A|output\(6) & (\U_CPU|U_datapath|U_ALU|Add4~11\ $ (GND)))
-- \U_CPU|U_datapath|U_ALU|Add4~13\ = CARRY((\U_CPU|U_datapath|U_A|output\(6)) # (!\U_CPU|U_datapath|U_ALU|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_A|output\(6),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add4~11\,
	combout => \U_CPU|U_datapath|U_ALU|Add4~12_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add4~13\);

-- Location: LCCOMB_X20_Y22_N26
\U_CPU|U_datapath|U_ALU|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux1~2_combout\ = (\U_CPU|U_datapath|U_ALU|Mux2~4_combout\ & (((\U_CPU|U_datapath|U_ALU|Add1~12_combout\) # (\U_CPU|U_datapath|U_ALU|Mux2~5_combout\)))) # (!\U_CPU|U_datapath|U_ALU|Mux2~4_combout\ & 
-- (\U_CPU|U_datapath|U_ALU|Add4~12_combout\ & ((!\U_CPU|U_datapath|U_ALU|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Mux2~4_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Add4~12_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Add1~12_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux2~5_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux1~2_combout\);

-- Location: LCCOMB_X20_Y22_N8
\U_CPU|U_datapath|U_ALU|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add5~0_combout\ = \U_CPU|U_datapath|U_A|output\(0) $ (VCC)
-- \U_CPU|U_datapath|U_ALU|Add5~1\ = CARRY(\U_CPU|U_datapath|U_A|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_A|output\(0),
	datad => VCC,
	combout => \U_CPU|U_datapath|U_ALU|Add5~0_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add5~1\);

-- Location: LCCOMB_X20_Y22_N14
\U_CPU|U_datapath|U_ALU|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add5~6_combout\ = (\U_CPU|U_datapath|U_A|output\(3) & (!\U_CPU|U_datapath|U_ALU|Add5~5\)) # (!\U_CPU|U_datapath|U_A|output\(3) & ((\U_CPU|U_datapath|U_ALU|Add5~5\) # (GND)))
-- \U_CPU|U_datapath|U_ALU|Add5~7\ = CARRY((!\U_CPU|U_datapath|U_ALU|Add5~5\) # (!\U_CPU|U_datapath|U_A|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_A|output\(3),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add5~5\,
	combout => \U_CPU|U_datapath|U_ALU|Add5~6_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add5~7\);

-- Location: LCCOMB_X20_Y22_N20
\U_CPU|U_datapath|U_ALU|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add5~12_combout\ = (\U_CPU|U_datapath|U_A|output\(6) & (\U_CPU|U_datapath|U_ALU|Add5~11\ $ (GND))) # (!\U_CPU|U_datapath|U_A|output\(6) & (!\U_CPU|U_datapath|U_ALU|Add5~11\ & VCC))
-- \U_CPU|U_datapath|U_ALU|Add5~13\ = CARRY((\U_CPU|U_datapath|U_A|output\(6) & !\U_CPU|U_datapath|U_ALU|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_A|output\(6),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_ALU|Add5~11\,
	combout => \U_CPU|U_datapath|U_ALU|Add5~12_combout\,
	cout => \U_CPU|U_datapath|U_ALU|Add5~13\);

-- Location: LCCOMB_X20_Y22_N28
\U_CPU|U_datapath|U_ALU|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux1~3_combout\ = (\U_CPU|U_datapath|U_ALU|Mux2~5_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux1~2_combout\ & (\U_CPU|U_datapath|U_ALU|Mux1~1_combout\)) # (!\U_CPU|U_datapath|U_ALU|Mux1~2_combout\ & 
-- ((\U_CPU|U_datapath|U_ALU|Add5~12_combout\))))) # (!\U_CPU|U_datapath|U_ALU|Mux2~5_combout\ & (((\U_CPU|U_datapath|U_ALU|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Mux2~5_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Mux1~1_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux1~2_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Add5~12_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux1~3_combout\);

-- Location: LCCOMB_X20_Y22_N6
\U_CPU|U_datapath|U_ALU|Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux1~4_combout\ = (\U_CPU|U_datapath|U_ALU|Mux2~2_combout\ & (((\U_CPU|U_controller|WideOr25~0_combout\)))) # (!\U_CPU|U_datapath|U_ALU|Mux2~2_combout\ & ((\U_CPU|U_controller|WideOr25~0_combout\ & 
-- (\U_CPU|U_datapath|U_ALU|Mux1~1_combout\)) # (!\U_CPU|U_controller|WideOr25~0_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Mux2~2_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Mux1~1_combout\,
	datac => \U_CPU|U_controller|WideOr25~0_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux1~3_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux1~4_combout\);

-- Location: LCCOMB_X19_Y22_N6
\U_CPU|U_datapath|U_ALU|Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux1~5_combout\ = (\U_CPU|U_datapath|U_ALU|Mux2~2_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux1~4_combout\ & (\U_CPU|U_datapath|U_ALU|output_sig~3_combout\)) # (!\U_CPU|U_datapath|U_ALU|Mux1~4_combout\ & 
-- ((\U_CPU|U_datapath|U_ALU|Add2~14_combout\))))) # (!\U_CPU|U_datapath|U_ALU|Mux2~2_combout\ & (((\U_CPU|U_datapath|U_ALU|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|output_sig~3_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Add2~14_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux2~2_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux1~4_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux1~5_combout\);

-- Location: LCCOMB_X19_Y22_N8
\U_CPU|U_datapath|U_ALU|Mux1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux1~6_combout\ = (\U_CPU|U_datapath|U_ALU|Mux1~0_combout\) # ((\U_CPU|U_datapath|U_ALU|Mux5~0_combout\ & \U_CPU|U_datapath|U_ALU|Mux1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_ALU|Mux5~0_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux1~0_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux1~5_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux1~6_combout\);

-- Location: LCCOMB_X19_Y22_N0
\U_CPU|U_datapath|U_ALU|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux6~0_combout\ = (!\U_CPU|U_datapath|U_ALU|Mux2~0_combout\ & ((\U_CPU|U_controller|WideOr27~combout\ & ((\U_CPU|U_datapath|U_A|output\(2)))) # (!\U_CPU|U_controller|WideOr27~combout\ & (\U_CPU|U_datapath|U_A|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr27~combout\,
	datab => \U_CPU|U_datapath|U_A|output\(0),
	datac => \U_CPU|U_datapath|U_A|output\(2),
	datad => \U_CPU|U_datapath|U_ALU|Mux2~0_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y22_N4
\U_CPU|U_datapath|U_ALU|output_sig~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|output_sig~2_combout\ = \U_CPU|U_datapath|U_D|output\(1) $ (\U_CPU|U_datapath|U_A|output\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_D|output\(1),
	datac => \U_CPU|U_datapath|U_A|output\(1),
	combout => \U_CPU|U_datapath|U_ALU|output_sig~2_combout\);

-- Location: LCCOMB_X20_Y18_N14
\U_CPU|U_datapath|U_ALU|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux6~1_combout\ = (\U_CPU|U_controller|WideOr25~0_combout\ & ((\U_CPU|U_datapath|U_A|output\(1)) # (\U_CPU|U_datapath|U_D|output\(1)))) # (!\U_CPU|U_controller|WideOr25~0_combout\ & (\U_CPU|U_datapath|U_A|output\(1) & 
-- \U_CPU|U_datapath|U_D|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr25~0_combout\,
	datab => \U_CPU|U_datapath|U_A|output\(1),
	datad => \U_CPU|U_datapath|U_D|output\(1),
	combout => \U_CPU|U_datapath|U_ALU|Mux6~1_combout\);

-- Location: LCCOMB_X17_Y21_N16
\U_CPU|U_datapath|U_ALU|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux2~4_combout\ = (\U_CPU|U_controller|WideOr24~combout\) # ((!\U_CPU|U_controller|state.ANDR_D~q\ & (!\U_CPU|U_controller|state.CMPR_D~q\ & !\U_CPU|U_controller|state.DECA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.ANDR_D~q\,
	datab => \U_CPU|U_controller|WideOr24~combout\,
	datac => \U_CPU|U_controller|state.CMPR_D~q\,
	datad => \U_CPU|U_controller|state.DECA~q\,
	combout => \U_CPU|U_datapath|U_ALU|Mux2~4_combout\);

-- Location: LCCOMB_X20_Y22_N30
\U_CPU|U_datapath|U_ALU|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux6~2_combout\ = (\U_CPU|U_datapath|U_ALU|Mux2~4_combout\ & (((\U_CPU|U_datapath|U_ALU|Mux2~5_combout\)))) # (!\U_CPU|U_datapath|U_ALU|Mux2~4_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux2~5_combout\ & 
-- (\U_CPU|U_datapath|U_ALU|Add5~2_combout\)) # (!\U_CPU|U_datapath|U_ALU|Mux2~5_combout\ & ((\U_CPU|U_datapath|U_ALU|Add4~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Add5~2_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Add4~2_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux2~4_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux2~5_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux6~2_combout\);

-- Location: LCCOMB_X20_Y18_N24
\U_CPU|U_datapath|U_ALU|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux6~3_combout\ = (\U_CPU|U_datapath|U_ALU|Mux2~4_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux6~2_combout\ & (\U_CPU|U_datapath|U_ALU|Mux6~1_combout\)) # (!\U_CPU|U_datapath|U_ALU|Mux6~2_combout\ & 
-- ((\U_CPU|U_datapath|U_ALU|Add1~2_combout\))))) # (!\U_CPU|U_datapath|U_ALU|Mux2~4_combout\ & (((\U_CPU|U_datapath|U_ALU|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Mux2~4_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Mux6~1_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Add1~2_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux6~2_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux6~3_combout\);

-- Location: LCCOMB_X20_Y18_N18
\U_CPU|U_datapath|U_ALU|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux6~4_combout\ = (\U_CPU|U_controller|WideOr25~0_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux2~2_combout\) # ((\U_CPU|U_datapath|U_ALU|Mux6~1_combout\)))) # (!\U_CPU|U_controller|WideOr25~0_combout\ & 
-- (!\U_CPU|U_datapath|U_ALU|Mux2~2_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr25~0_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Mux2~2_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux6~1_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux6~3_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux6~4_combout\);

-- Location: LCCOMB_X20_Y18_N20
\U_CPU|U_datapath|U_ALU|Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux6~5_combout\ = (\U_CPU|U_datapath|U_ALU|Mux2~2_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux6~4_combout\ & ((\U_CPU|U_datapath|U_ALU|output_sig~2_combout\))) # (!\U_CPU|U_datapath|U_ALU|Mux6~4_combout\ & 
-- (\U_CPU|U_datapath|U_ALU|Add2~4_combout\)))) # (!\U_CPU|U_datapath|U_ALU|Mux2~2_combout\ & (((\U_CPU|U_datapath|U_ALU|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Mux2~2_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Add2~4_combout\,
	datac => \U_CPU|U_datapath|U_ALU|output_sig~2_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux6~4_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux6~5_combout\);

-- Location: LCCOMB_X19_Y22_N18
\U_CPU|U_datapath|U_ALU|Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux6~6_combout\ = (\U_CPU|U_datapath|U_ALU|Mux6~0_combout\) # ((\U_CPU|U_datapath|U_ALU|Mux6~5_combout\ & \U_CPU|U_datapath|U_ALU|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_ALU|Mux6~0_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux6~5_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux5~0_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux6~6_combout\);

-- Location: LCCOMB_X19_Y22_N2
\U_CPU|U_datapath|U_ALU|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Equal0~1_combout\ = (!\U_CPU|U_datapath|U_ALU|Mux2~10_combout\ & (!\U_CPU|U_datapath|U_ALU|Mux1~6_combout\ & (!\U_CPU|U_datapath|U_ALU|Mux4~6_combout\ & !\U_CPU|U_datapath|U_ALU|Mux6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Mux2~10_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Mux1~6_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux4~6_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux6~6_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y22_N12
\U_CPU|U_datapath|U_ALU|Mux0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux0~12_combout\ = (\U_CPU|U_datapath|U_A|output\(0) & ((!\U_CPU|U_datapath|U_D|output\(0)) # (!\U_CPU|U_controller|WideOr27~combout\))) # (!\U_CPU|U_datapath|U_A|output\(0) & ((\U_CPU|U_datapath|U_D|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_A|output\(0),
	datac => \U_CPU|U_controller|WideOr27~combout\,
	datad => \U_CPU|U_datapath|U_D|output\(0),
	combout => \U_CPU|U_datapath|U_ALU|Mux0~12_combout\);

-- Location: LCCOMB_X17_Y21_N30
\U_CPU|U_datapath|U_ALU|Mux0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux0~10_combout\ = (\U_CPU|U_datapath|U_A|output\(1) & ((\U_CPU|U_controller|state.RORC~q\) # ((\U_CPU|U_controller|state.CLRC~q\) # (!\U_CPU|U_controller|WideOr4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.RORC~q\,
	datab => \U_CPU|U_controller|state.CLRC~q\,
	datac => \U_CPU|U_datapath|U_A|output\(1),
	datad => \U_CPU|U_controller|WideOr4~0_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux0~10_combout\);

-- Location: LCCOMB_X22_Y22_N2
\U_CPU|U_datapath|U_ALU|Mux0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux0~11_combout\ = (\U_CPU|U_controller|WideOr27~combout\ & (\U_CPU|U_datapath|U_D|output\(0) & (\U_CPU|U_datapath|U_A|output\(0)))) # (!\U_CPU|U_controller|WideOr27~combout\ & (((\U_CPU|U_datapath|U_ALU|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_D|output\(0),
	datab => \U_CPU|U_datapath|U_A|output\(0),
	datac => \U_CPU|U_datapath|U_ALU|Add2~2_combout\,
	datad => \U_CPU|U_controller|WideOr27~combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux0~11_combout\);

-- Location: LCCOMB_X20_Y18_N30
\U_CPU|U_datapath|U_ALU|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux7~0_combout\ = (\U_CPU|U_controller|WideOr25~0_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux0~10_combout\) # ((\U_CPU|U_controller|WideOr26~0_combout\)))) # (!\U_CPU|U_controller|WideOr25~0_combout\ & 
-- (((!\U_CPU|U_controller|WideOr26~0_combout\ & \U_CPU|U_datapath|U_ALU|Mux0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr25~0_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Mux0~10_combout\,
	datac => \U_CPU|U_controller|WideOr26~0_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux0~11_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux7~0_combout\);

-- Location: LCCOMB_X21_Y23_N16
\U_CPU|U_datapath|U_ALU|Mux0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux0~9_combout\ = (\U_CPU|U_controller|WideOr27~combout\ & (\U_CPU|U_datapath|U_ALU|Add2~2_combout\)) # (!\U_CPU|U_controller|WideOr27~combout\ & ((\U_CPU|U_datapath|U_ALU|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr27~combout\,
	datac => \U_CPU|U_datapath|U_ALU|Add2~2_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Add1~0_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux0~9_combout\);

-- Location: LCCOMB_X20_Y18_N8
\U_CPU|U_datapath|U_ALU|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux7~1_combout\ = (\U_CPU|U_controller|WideOr26~0_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux7~0_combout\ & (\U_CPU|U_datapath|U_ALU|Mux0~12_combout\)) # (!\U_CPU|U_datapath|U_ALU|Mux7~0_combout\ & 
-- ((\U_CPU|U_datapath|U_ALU|Mux0~9_combout\))))) # (!\U_CPU|U_controller|WideOr26~0_combout\ & (((\U_CPU|U_datapath|U_ALU|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr26~0_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Mux0~12_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux7~0_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux0~9_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux7~1_combout\);

-- Location: LCCOMB_X20_Y18_N2
\U_CPU|U_datapath|U_ALU|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux7~2_combout\ = (!\U_CPU|U_controller|WideOr26~0_combout\ & ((\U_CPU|U_controller|WideOr27~combout\ & ((\U_CPU|U_datapath|U_ALU|Add5~0_combout\))) # (!\U_CPU|U_controller|WideOr27~combout\ & 
-- (\U_CPU|U_datapath|U_ALU|Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr26~0_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Add4~0_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Add5~0_combout\,
	datad => \U_CPU|U_controller|WideOr27~combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux7~2_combout\);

-- Location: LCCOMB_X20_Y18_N16
\U_CPU|U_datapath|U_ALU|Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux7~3_combout\ = (\U_CPU|U_datapath|U_ALU|Mux7~2_combout\) # ((\U_CPU|U_controller|WideOr26~0_combout\ & \U_CPU|U_datapath|U_A|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr26~0_combout\,
	datab => \U_CPU|U_datapath|U_A|output\(1),
	datad => \U_CPU|U_datapath|U_ALU|Mux7~2_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux7~3_combout\);

-- Location: LCCOMB_X20_Y18_N26
\U_CPU|U_datapath|U_ALU|Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux7~4_combout\ = (\U_CPU|U_controller|WideOr24~combout\ & (((\U_CPU|U_datapath|U_ALU|Mux7~1_combout\)))) # (!\U_CPU|U_controller|WideOr24~combout\ & (!\U_CPU|U_controller|WideOr25~0_combout\ & 
-- ((\U_CPU|U_datapath|U_ALU|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr25~0_combout\,
	datab => \U_CPU|U_controller|WideOr24~combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux7~1_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux7~3_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux7~4_combout\);

-- Location: LCCOMB_X21_Y22_N4
\U_CPU|U_datapath|U_ALU|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux0~4_combout\ = (\U_CPU|U_datapath|U_D|output\(7) & ((!\U_CPU|U_controller|WideOr27~combout\) # (!\U_CPU|U_datapath|U_A|output\(7)))) # (!\U_CPU|U_datapath|U_D|output\(7) & (\U_CPU|U_datapath|U_A|output\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_D|output\(7),
	datac => \U_CPU|U_datapath|U_A|output\(7),
	datad => \U_CPU|U_controller|WideOr27~combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux0~4_combout\);

-- Location: LCCOMB_X22_Y22_N22
\U_CPU|U_datapath|U_ALU|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add2~16_combout\ = \U_CPU|U_datapath|U_D|output\(7) $ (\U_CPU|U_datapath|U_ALU|Add2~15\ $ (\U_CPU|U_datapath|U_A|output\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_D|output\(7),
	datad => \U_CPU|U_datapath|U_A|output\(7),
	cin => \U_CPU|U_datapath|U_ALU|Add2~15\,
	combout => \U_CPU|U_datapath|U_ALU|Add2~16_combout\);

-- Location: LCCOMB_X21_Y22_N0
\U_CPU|U_datapath|U_ALU|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux0~0_combout\ = (\U_CPU|U_controller|WideOr27~combout\ & ((\U_CPU|U_datapath|U_ALU|Add2~16_combout\))) # (!\U_CPU|U_controller|WideOr27~combout\ & (\U_CPU|U_datapath|U_ALU|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr27~combout\,
	datac => \U_CPU|U_datapath|U_ALU|Add1~14_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Add2~16_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y22_N30
\U_CPU|U_datapath|U_ALU|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux0~5_combout\ = (\U_CPU|U_datapath|U_ALU|Mux0~3_combout\ & (((\U_CPU|U_datapath|U_ALU|Mux0~4_combout\)) # (!\U_CPU|U_controller|WideOr26~0_combout\))) # (!\U_CPU|U_datapath|U_ALU|Mux0~3_combout\ & 
-- (\U_CPU|U_controller|WideOr26~0_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Mux0~3_combout\,
	datab => \U_CPU|U_controller|WideOr26~0_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux0~4_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux0~0_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux0~5_combout\);

-- Location: LCCOMB_X20_Y22_N22
\U_CPU|U_datapath|U_ALU|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add5~14_combout\ = \U_CPU|U_datapath|U_ALU|Add5~13\ $ (\U_CPU|U_datapath|U_A|output\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_CPU|U_datapath|U_A|output\(7),
	cin => \U_CPU|U_datapath|U_ALU|Add5~13\,
	combout => \U_CPU|U_datapath|U_ALU|Add5~14_combout\);

-- Location: LCCOMB_X21_Y22_N28
\U_CPU|U_datapath|U_ALU|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Add4~14_combout\ = \U_CPU|U_datapath|U_A|output\(7) $ (!\U_CPU|U_datapath|U_ALU|Add4~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_A|output\(7),
	cin => \U_CPU|U_datapath|U_ALU|Add4~13\,
	combout => \U_CPU|U_datapath|U_ALU|Add4~14_combout\);

-- Location: LCCOMB_X21_Y22_N8
\U_CPU|U_datapath|U_ALU|Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux0~6_combout\ = (!\U_CPU|U_controller|WideOr26~0_combout\ & ((\U_CPU|U_controller|WideOr27~combout\ & (\U_CPU|U_datapath|U_ALU|Add5~14_combout\)) # (!\U_CPU|U_controller|WideOr27~combout\ & 
-- ((\U_CPU|U_datapath|U_ALU|Add4~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr26~0_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Add5~14_combout\,
	datac => \U_CPU|U_controller|WideOr27~combout\,
	datad => \U_CPU|U_datapath|U_ALU|Add4~14_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux0~6_combout\);

-- Location: LCCOMB_X21_Y22_N2
\U_CPU|U_datapath|U_ALU|Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux0~7_combout\ = (\U_CPU|U_datapath|U_ALU|Mux0~6_combout\) # ((\U_CPU|U_controller|WideOr26~0_combout\ & \U_CPU|U_datapath|U_STATUS_REG_CARRY|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr26~0_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Mux0~6_combout\,
	datad => \U_CPU|U_datapath|U_STATUS_REG_CARRY|output\(0),
	combout => \U_CPU|U_datapath|U_ALU|Mux0~7_combout\);

-- Location: LCCOMB_X20_Y18_N12
\U_CPU|U_datapath|U_ALU|Mux0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux0~8_combout\ = (\U_CPU|U_controller|WideOr24~combout\ & (((\U_CPU|U_datapath|U_ALU|Mux0~5_combout\)))) # (!\U_CPU|U_controller|WideOr24~combout\ & (!\U_CPU|U_controller|WideOr25~0_combout\ & 
-- ((\U_CPU|U_datapath|U_ALU|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr25~0_combout\,
	datab => \U_CPU|U_controller|WideOr24~combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux0~5_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux0~7_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux0~8_combout\);

-- Location: LCCOMB_X20_Y18_N4
\U_CPU|U_datapath|U_ALU|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Equal0~0_combout\ = (!\U_CPU|U_datapath|U_ALU|Mux7~4_combout\ & !\U_CPU|U_datapath|U_ALU|Mux0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CPU|U_datapath|U_ALU|Mux7~4_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux0~8_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y18_N14
\U_CPU|U_datapath|U_ALU|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Equal0~2_combout\ = (!\U_CPU|U_datapath|U_ALU|Mux3~6_combout\ & (!\U_CPU|U_datapath|U_ALU|Mux5~7_combout\ & (\U_CPU|U_datapath|U_ALU|Equal0~1_combout\ & \U_CPU|U_datapath|U_ALU|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Mux3~6_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Mux5~7_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Equal0~1_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Equal0~0_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y20_N0
\U_CPU|U_controller|next_state.ADCR_D~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.ADCR_D~0_combout\ = (\U_CPU|U_controller|Equal5~1_combout\ & (\U_CPU|U_controller|state.DECODE~q\ & (!\U_CPU|U_datapath|U_IR|output\(5) & \U_CPU|U_controller|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal5~1_combout\,
	datab => \U_CPU|U_controller|state.DECODE~q\,
	datac => \U_CPU|U_datapath|U_IR|output\(5),
	datad => \U_CPU|U_controller|Equal5~0_combout\,
	combout => \U_CPU|U_controller|next_state.ADCR_D~0_combout\);

-- Location: FF_X17_Y20_N1
\U_CPU|U_controller|state.ADCR_D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.ADCR_D~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.ADCR_D~q\);

-- Location: LCCOMB_X17_Y21_N28
\U_CPU|U_controller|WideOr4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr4~1_combout\ = (!\U_CPU|U_controller|state.ORR_D~q\ & (\U_CPU|U_controller|WideOr4~0_combout\ & (!\U_CPU|U_controller|state.ADCR_D~q\ & !\U_CPU|U_controller|state.DECA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.ORR_D~q\,
	datab => \U_CPU|U_controller|WideOr4~0_combout\,
	datac => \U_CPU|U_controller|state.ADCR_D~q\,
	datad => \U_CPU|U_controller|state.DECA~q\,
	combout => \U_CPU|U_controller|WideOr4~1_combout\);

-- Location: LCCOMB_X16_Y20_N26
\U_CPU|U_controller|WideOr21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr21~combout\ = (\U_CPU|U_controller|state.LDAD~q\) # ((\U_CPU|U_controller|state.CMPR_D~q\) # (!\U_CPU|U_controller|WideOr4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.LDAD~q\,
	datab => \U_CPU|U_controller|WideOr4~1_combout\,
	datac => \U_CPU|U_controller|state.CMPR_D~q\,
	combout => \U_CPU|U_controller|WideOr21~combout\);

-- Location: FF_X16_Y18_N15
\U_CPU|U_datapath|U_STATUS_REG_ZERO|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_ALU|Equal0~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_STATUS_REG_ZERO|output\(0));

-- Location: LCCOMB_X19_Y18_N18
\U_CPU|U_controller|Selector4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector4~10_combout\ = (\U_CPU|U_controller|state.BNEA~q\ & !\U_CPU|U_datapath|U_STATUS_REG_ZERO|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.BNEA~q\,
	datad => \U_CPU|U_datapath|U_STATUS_REG_ZERO|output\(0),
	combout => \U_CPU|U_controller|Selector4~10_combout\);

-- Location: FF_X19_Y18_N19
\U_CPU|U_controller|state.BNEA_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|Selector4~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.BNEA_2~q\);

-- Location: LCCOMB_X19_Y18_N16
\U_CPU|U_controller|state.BNEA_3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|state.BNEA_3~feeder_combout\ = \U_CPU|U_controller|state.BNEA_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_CPU|U_controller|state.BNEA_2~q\,
	combout => \U_CPU|U_controller|state.BNEA_3~feeder_combout\);

-- Location: FF_X19_Y18_N17
\U_CPU|U_controller|state.BNEA_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|state.BNEA_3~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.BNEA_3~q\);

-- Location: LCCOMB_X19_Y18_N22
\U_CPU|U_controller|WideOr11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr11~6_combout\ = (!\U_CPU|U_controller|state.BEQA_3~q\ & (!\U_CPU|U_controller|state.BCCA_3~q\ & (!\U_CPU|U_controller|state.BPLA_3~q\ & !\U_CPU|U_controller|state.BNEA_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.BEQA_3~q\,
	datab => \U_CPU|U_controller|state.BCCA_3~q\,
	datac => \U_CPU|U_controller|state.BPLA_3~q\,
	datad => \U_CPU|U_controller|state.BNEA_3~q\,
	combout => \U_CPU|U_controller|WideOr11~6_combout\);

-- Location: LCCOMB_X20_Y20_N26
\U_CPU|U_controller|WideOr11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr11~combout\ = (\U_CPU|U_controller|state.Call_9~q\) # (((\U_CPU|U_controller|state.RET_6~q\) # (!\U_CPU|U_controller|WideOr11~4_combout\)) # (!\U_CPU|U_controller|WideOr11~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.Call_9~q\,
	datab => \U_CPU|U_controller|WideOr11~6_combout\,
	datac => \U_CPU|U_controller|WideOr11~4_combout\,
	datad => \U_CPU|U_controller|state.RET_6~q\,
	combout => \U_CPU|U_controller|WideOr11~combout\);

-- Location: LCCOMB_X21_Y19_N20
\U_CPU|U_datapath|U_PC_LD_MUX|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_LD_MUX|Mux9~0_combout\ = (\U_CPU|U_controller|WideOr11~combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(6))) # (!\U_CPU|U_controller|WideOr11~combout\ & ((\U_CPU|U_datapath|U_PC_ADDER|output[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(6),
	datac => \U_CPU|U_controller|WideOr11~combout\,
	datad => \U_CPU|U_datapath|U_PC_ADDER|output[6]~12_combout\,
	combout => \U_CPU|U_datapath|U_PC_LD_MUX|Mux9~0_combout\);

-- Location: LCCOMB_X20_Y21_N4
\U_CPU|U_controller|Equal19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal19~0_combout\ = (!\U_CPU|U_datapath|U_IR|output\(3) & (\U_CPU|U_datapath|U_IR|output\(2) & (\U_CPU|U_controller|Equal16~0_combout\ & !\U_CPU|U_datapath|U_IR|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_IR|output\(3),
	datab => \U_CPU|U_datapath|U_IR|output\(2),
	datac => \U_CPU|U_controller|Equal16~0_combout\,
	datad => \U_CPU|U_datapath|U_IR|output\(0),
	combout => \U_CPU|U_controller|Equal19~0_combout\);

-- Location: LCCOMB_X15_Y18_N28
\U_CPU|U_controller|next_state.BVCA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.BVCA~0_combout\ = (\U_CPU|U_controller|state.DECODE~q\ & (\U_CPU|U_datapath|U_IR|output\(1) & \U_CPU|U_controller|Equal19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.DECODE~q\,
	datac => \U_CPU|U_datapath|U_IR|output\(1),
	datad => \U_CPU|U_controller|Equal19~0_combout\,
	combout => \U_CPU|U_controller|next_state.BVCA~0_combout\);

-- Location: FF_X15_Y18_N29
\U_CPU|U_controller|state.BVCA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.BVCA~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.BVCA~q\);

-- Location: LCCOMB_X15_Y18_N24
\U_CPU|U_controller|next_state.BVSA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.BVSA~0_combout\ = (\U_CPU|U_controller|state.DECODE~q\ & (\U_CPU|U_controller|Equal20~0_combout\ & \U_CPU|U_datapath|U_IR|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.DECODE~q\,
	datac => \U_CPU|U_controller|Equal20~0_combout\,
	datad => \U_CPU|U_datapath|U_IR|output\(1),
	combout => \U_CPU|U_controller|next_state.BVSA~0_combout\);

-- Location: FF_X15_Y18_N25
\U_CPU|U_controller|state.BVSA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.BVSA~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.BVSA~q\);

-- Location: LCCOMB_X15_Y18_N4
\U_CPU|U_controller|next_state.PC_ADD_THREE_1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.PC_ADD_THREE_1~combout\ = (\U_CPU|U_controller|state.BVCA~q\) # (\U_CPU|U_controller|state.BVSA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_controller|state.BVCA~q\,
	datad => \U_CPU|U_controller|state.BVSA~q\,
	combout => \U_CPU|U_controller|next_state.PC_ADD_THREE_1~combout\);

-- Location: FF_X15_Y18_N5
\U_CPU|U_controller|state.PC_ADD_THREE_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.PC_ADD_THREE_1~combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.PC_ADD_THREE_1~q\);

-- Location: LCCOMB_X16_Y20_N30
\U_CPU|U_controller|next_state.STAA_X~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.STAA_X~0_combout\ = (\U_CPU|U_controller|Equal32~0_combout\ & \U_CPU|U_controller|state.DECODE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal32~0_combout\,
	datad => \U_CPU|U_controller|state.DECODE~q\,
	combout => \U_CPU|U_controller|next_state.STAA_X~0_combout\);

-- Location: FF_X16_Y20_N31
\U_CPU|U_controller|state.STAA_X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.STAA_X~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.STAA_X~q\);

-- Location: LCCOMB_X15_Y18_N6
\U_CPU|U_controller|next_state.BNEA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.BNEA~0_combout\ = (\U_CPU|U_controller|state.DECODE~q\ & (!\U_CPU|U_datapath|U_IR|output\(1) & \U_CPU|U_controller|Equal19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.DECODE~q\,
	datac => \U_CPU|U_datapath|U_IR|output\(1),
	datad => \U_CPU|U_controller|Equal19~0_combout\,
	combout => \U_CPU|U_controller|next_state.BNEA~0_combout\);

-- Location: FF_X15_Y18_N7
\U_CPU|U_controller|state.BNEA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.BNEA~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.BNEA~q\);

-- Location: LCCOMB_X15_Y18_N20
\U_CPU|U_controller|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector1~1_combout\ = (\U_CPU|U_controller|state.STAA_X~q\) # ((\U_CPU|U_datapath|U_STATUS_REG_ZERO|output\(0) & ((\U_CPU|U_controller|state.BNEA~q\))) # (!\U_CPU|U_datapath|U_STATUS_REG_ZERO|output\(0) & 
-- (\U_CPU|U_controller|state.BEQA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.BEQA~q\,
	datab => \U_CPU|U_controller|state.STAA_X~q\,
	datac => \U_CPU|U_datapath|U_STATUS_REG_ZERO|output\(0),
	datad => \U_CPU|U_controller|state.BNEA~q\,
	combout => \U_CPU|U_controller|Selector1~1_combout\);

-- Location: FF_X20_Y18_N17
\U_CPU|U_datapath|U_STATUS_REG_SIGNED|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_ALU|Mux0~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|WideOr21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_STATUS_REG_SIGNED|output\(0));

-- Location: LCCOMB_X15_Y18_N30
\U_CPU|U_controller|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector1~2_combout\ = (\U_CPU|U_controller|Selector1~0_combout\) # ((\U_CPU|U_controller|Selector1~1_combout\) # ((\U_CPU|U_datapath|U_STATUS_REG_SIGNED|output\(0) & \U_CPU|U_controller|state.BPLA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Selector1~0_combout\,
	datab => \U_CPU|U_controller|Selector1~1_combout\,
	datac => \U_CPU|U_datapath|U_STATUS_REG_SIGNED|output\(0),
	datad => \U_CPU|U_controller|state.BPLA~q\,
	combout => \U_CPU|U_controller|Selector1~2_combout\);

-- Location: FF_X15_Y18_N31
\U_CPU|U_controller|state.PC_ADD_TWO_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|Selector1~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.PC_ADD_TWO_1~q\);

-- Location: FF_X15_Y18_N1
\U_CPU|U_controller|state.PC_ADD_ONE_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.LDAI~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.PC_ADD_ONE_1~q\);

-- Location: LCCOMB_X15_Y18_N16
\U_CPU|U_controller|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector3~0_combout\ = (!\U_CPU|U_controller|state.OPCODE_FETCH~q\ & (!\U_CPU|U_controller|state.PC_ADD_THREE_1~q\ & (!\U_CPU|U_controller|state.PC_ADD_TWO_1~q\ & !\U_CPU|U_controller|state.PC_ADD_ONE_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.OPCODE_FETCH~q\,
	datab => \U_CPU|U_controller|state.PC_ADD_THREE_1~q\,
	datac => \U_CPU|U_controller|state.PC_ADD_TWO_1~q\,
	datad => \U_CPU|U_controller|state.PC_ADD_ONE_1~q\,
	combout => \U_CPU|U_controller|Selector3~0_combout\);

-- Location: LCCOMB_X16_Y19_N26
\U_CPU|U_controller|Selector4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector4~12_combout\ = (\U_CPU|U_controller|Selector6~2_combout\ & (\U_CPU|U_controller|Selector4~7_combout\ & (\U_CPU|U_controller|Selector4~2_combout\ & !\U_CPU|U_controller|state.OPCODE_FETCH_4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Selector6~2_combout\,
	datab => \U_CPU|U_controller|Selector4~7_combout\,
	datac => \U_CPU|U_controller|Selector4~2_combout\,
	datad => \U_CPU|U_controller|state.OPCODE_FETCH_4~q\,
	combout => \U_CPU|U_controller|Selector4~12_combout\);

-- Location: LCCOMB_X22_Y23_N18
\U_CPU|U_controller|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector3~1_combout\ = (((!\U_CPU|U_controller|Selector4~12_combout\) # (!\U_CPU|U_controller|WideOr11~4_combout\)) # (!\U_CPU|U_controller|Selector3~0_combout\)) # (!\U_CPU|U_controller|Selector0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Selector0~26_combout\,
	datab => \U_CPU|U_controller|Selector3~0_combout\,
	datac => \U_CPU|U_controller|WideOr11~4_combout\,
	datad => \U_CPU|U_controller|Selector4~12_combout\,
	combout => \U_CPU|U_controller|Selector3~1_combout\);

-- Location: FF_X21_Y19_N21
\U_CPU|U_datapath|U_PCL|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_PC_LD_MUX|Mux9~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_PCL|output\(6));

-- Location: LCCOMB_X16_Y18_N20
\U_CPU|U_controller|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector6~1_combout\ = (\U_CPU|U_controller|state.BEQA~q\ & (!\U_CPU|U_datapath|U_STATUS_REG_ZERO|output\(0) & ((\U_CPU|U_datapath|U_STATUS_REG_CARRY|output\(0)) # (!\U_CPU|U_controller|state.BCCA~q\)))) # 
-- (!\U_CPU|U_controller|state.BEQA~q\ & (((\U_CPU|U_datapath|U_STATUS_REG_CARRY|output\(0)) # (!\U_CPU|U_controller|state.BCCA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.BEQA~q\,
	datab => \U_CPU|U_datapath|U_STATUS_REG_ZERO|output\(0),
	datac => \U_CPU|U_datapath|U_STATUS_REG_CARRY|output\(0),
	datad => \U_CPU|U_controller|state.BCCA~q\,
	combout => \U_CPU|U_controller|Selector6~1_combout\);

-- Location: LCCOMB_X17_Y19_N12
\U_CPU|U_controller|Selector6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector6~3_combout\ = (((\U_CPU|U_controller|state.RET_4~q\) # (\U_CPU|U_controller|state.Call_6~q\)) # (!\U_CPU|U_controller|Selector6~1_combout\)) # (!\U_CPU|U_controller|Selector6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Selector6~0_combout\,
	datab => \U_CPU|U_controller|Selector6~1_combout\,
	datac => \U_CPU|U_controller|state.RET_4~q\,
	datad => \U_CPU|U_controller|state.Call_6~q\,
	combout => \U_CPU|U_controller|Selector6~3_combout\);

-- Location: FF_X22_Y20_N3
\U_CPU|U_datapath|U_BRANCH_TARGET_L|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_X_ADDER|Add0~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|Selector6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(1));

-- Location: LCCOMB_X21_Y19_N30
\U_CPU|U_datapath|U_PC_LD_MUX|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_LD_MUX|Mux14~0_combout\ = (\U_CPU|U_controller|WideOr11~combout\ & ((\U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(1)))) # (!\U_CPU|U_controller|WideOr11~combout\ & (\U_CPU|U_datapath|U_PC_ADDER|output[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_PC_ADDER|output[1]~2_combout\,
	datac => \U_CPU|U_controller|WideOr11~combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(1),
	combout => \U_CPU|U_datapath|U_PC_LD_MUX|Mux14~0_combout\);

-- Location: FF_X21_Y19_N31
\U_CPU|U_datapath|U_PCL|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_PC_LD_MUX|Mux14~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_PCL|output\(1));

-- Location: LCCOMB_X22_Y19_N0
\U_CPU|U_datapath|U_PC_ADDER|output[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_ADDER|output[0]~0_combout\ = (\U_CPU|U_controller|Selector4~6_combout\ & (\U_CPU|U_datapath|U_PCL|output\(0) $ (VCC))) # (!\U_CPU|U_controller|Selector4~6_combout\ & (\U_CPU|U_datapath|U_PCL|output\(0) & VCC))
-- \U_CPU|U_datapath|U_PC_ADDER|output[0]~1\ = CARRY((\U_CPU|U_controller|Selector4~6_combout\ & \U_CPU|U_datapath|U_PCL|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Selector4~6_combout\,
	datab => \U_CPU|U_datapath|U_PCL|output\(0),
	datad => VCC,
	combout => \U_CPU|U_datapath|U_PC_ADDER|output[0]~0_combout\,
	cout => \U_CPU|U_datapath|U_PC_ADDER|output[0]~1\);

-- Location: FF_X22_Y20_N1
\U_CPU|U_datapath|U_BRANCH_TARGET_L|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|Selector6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(0));

-- Location: LCCOMB_X21_Y19_N24
\U_CPU|U_datapath|U_PC_LD_MUX|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_LD_MUX|Mux15~0_combout\ = (\U_CPU|U_controller|WideOr11~combout\ & ((\U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(0)))) # (!\U_CPU|U_controller|WideOr11~combout\ & (\U_CPU|U_datapath|U_PC_ADDER|output[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr11~combout\,
	datab => \U_CPU|U_datapath|U_PC_ADDER|output[0]~0_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(0),
	combout => \U_CPU|U_datapath|U_PC_LD_MUX|Mux15~0_combout\);

-- Location: FF_X21_Y19_N25
\U_CPU|U_datapath|U_PCL|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_PC_LD_MUX|Mux15~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_PCL|output\(0));

-- Location: LCCOMB_X22_Y19_N2
\U_CPU|U_datapath|U_PC_ADDER|output[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_ADDER|output[1]~2_combout\ = (\U_CPU|U_controller|PC_ADD_sel[1]~0_combout\ & ((\U_CPU|U_datapath|U_PCL|output\(1) & (!\U_CPU|U_datapath|U_PC_ADDER|output[0]~1\)) # (!\U_CPU|U_datapath|U_PCL|output\(1) & 
-- ((\U_CPU|U_datapath|U_PC_ADDER|output[0]~1\) # (GND))))) # (!\U_CPU|U_controller|PC_ADD_sel[1]~0_combout\ & ((\U_CPU|U_datapath|U_PCL|output\(1) & (\U_CPU|U_datapath|U_PC_ADDER|output[0]~1\ & VCC)) # (!\U_CPU|U_datapath|U_PCL|output\(1) & 
-- (!\U_CPU|U_datapath|U_PC_ADDER|output[0]~1\))))
-- \U_CPU|U_datapath|U_PC_ADDER|output[1]~3\ = CARRY((\U_CPU|U_controller|PC_ADD_sel[1]~0_combout\ & ((!\U_CPU|U_datapath|U_PC_ADDER|output[0]~1\) # (!\U_CPU|U_datapath|U_PCL|output\(1)))) # (!\U_CPU|U_controller|PC_ADD_sel[1]~0_combout\ & 
-- (!\U_CPU|U_datapath|U_PCL|output\(1) & !\U_CPU|U_datapath|U_PC_ADDER|output[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|PC_ADD_sel[1]~0_combout\,
	datab => \U_CPU|U_datapath|U_PCL|output\(1),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_PC_ADDER|output[0]~1\,
	combout => \U_CPU|U_datapath|U_PC_ADDER|output[1]~2_combout\,
	cout => \U_CPU|U_datapath|U_PC_ADDER|output[1]~3\);

-- Location: LCCOMB_X22_Y19_N4
\U_CPU|U_datapath|U_PC_ADDER|output[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_ADDER|output[2]~4_combout\ = (\U_CPU|U_datapath|U_PCL|output\(2) & (\U_CPU|U_datapath|U_PC_ADDER|output[1]~3\ $ (GND))) # (!\U_CPU|U_datapath|U_PCL|output\(2) & (!\U_CPU|U_datapath|U_PC_ADDER|output[1]~3\ & VCC))
-- \U_CPU|U_datapath|U_PC_ADDER|output[2]~5\ = CARRY((\U_CPU|U_datapath|U_PCL|output\(2) & !\U_CPU|U_datapath|U_PC_ADDER|output[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_PCL|output\(2),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_PC_ADDER|output[1]~3\,
	combout => \U_CPU|U_datapath|U_PC_ADDER|output[2]~4_combout\,
	cout => \U_CPU|U_datapath|U_PC_ADDER|output[2]~5\);

-- Location: LCCOMB_X22_Y19_N6
\U_CPU|U_datapath|U_PC_ADDER|output[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_ADDER|output[3]~6_combout\ = (\U_CPU|U_datapath|U_PCL|output\(3) & (!\U_CPU|U_datapath|U_PC_ADDER|output[2]~5\)) # (!\U_CPU|U_datapath|U_PCL|output\(3) & ((\U_CPU|U_datapath|U_PC_ADDER|output[2]~5\) # (GND)))
-- \U_CPU|U_datapath|U_PC_ADDER|output[3]~7\ = CARRY((!\U_CPU|U_datapath|U_PC_ADDER|output[2]~5\) # (!\U_CPU|U_datapath|U_PCL|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_PCL|output\(3),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_PC_ADDER|output[2]~5\,
	combout => \U_CPU|U_datapath|U_PC_ADDER|output[3]~6_combout\,
	cout => \U_CPU|U_datapath|U_PC_ADDER|output[3]~7\);

-- Location: LCCOMB_X22_Y19_N8
\U_CPU|U_datapath|U_PC_ADDER|output[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_ADDER|output[4]~8_combout\ = (\U_CPU|U_datapath|U_PCL|output\(4) & (\U_CPU|U_datapath|U_PC_ADDER|output[3]~7\ $ (GND))) # (!\U_CPU|U_datapath|U_PCL|output\(4) & (!\U_CPU|U_datapath|U_PC_ADDER|output[3]~7\ & VCC))
-- \U_CPU|U_datapath|U_PC_ADDER|output[4]~9\ = CARRY((\U_CPU|U_datapath|U_PCL|output\(4) & !\U_CPU|U_datapath|U_PC_ADDER|output[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_PCL|output\(4),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_PC_ADDER|output[3]~7\,
	combout => \U_CPU|U_datapath|U_PC_ADDER|output[4]~8_combout\,
	cout => \U_CPU|U_datapath|U_PC_ADDER|output[4]~9\);

-- Location: LCCOMB_X22_Y19_N10
\U_CPU|U_datapath|U_PC_ADDER|output[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_ADDER|output[5]~10_combout\ = (\U_CPU|U_datapath|U_PCL|output\(5) & (!\U_CPU|U_datapath|U_PC_ADDER|output[4]~9\)) # (!\U_CPU|U_datapath|U_PCL|output\(5) & ((\U_CPU|U_datapath|U_PC_ADDER|output[4]~9\) # (GND)))
-- \U_CPU|U_datapath|U_PC_ADDER|output[5]~11\ = CARRY((!\U_CPU|U_datapath|U_PC_ADDER|output[4]~9\) # (!\U_CPU|U_datapath|U_PCL|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_PCL|output\(5),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_PC_ADDER|output[4]~9\,
	combout => \U_CPU|U_datapath|U_PC_ADDER|output[5]~10_combout\,
	cout => \U_CPU|U_datapath|U_PC_ADDER|output[5]~11\);

-- Location: LCCOMB_X22_Y19_N12
\U_CPU|U_datapath|U_PC_ADDER|output[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_ADDER|output[6]~12_combout\ = (\U_CPU|U_datapath|U_PCL|output\(6) & (\U_CPU|U_datapath|U_PC_ADDER|output[5]~11\ $ (GND))) # (!\U_CPU|U_datapath|U_PCL|output\(6) & (!\U_CPU|U_datapath|U_PC_ADDER|output[5]~11\ & VCC))
-- \U_CPU|U_datapath|U_PC_ADDER|output[6]~13\ = CARRY((\U_CPU|U_datapath|U_PCL|output\(6) & !\U_CPU|U_datapath|U_PC_ADDER|output[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_PCL|output\(6),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_PC_ADDER|output[5]~11\,
	combout => \U_CPU|U_datapath|U_PC_ADDER|output[6]~12_combout\,
	cout => \U_CPU|U_datapath|U_PC_ADDER|output[6]~13\);

-- Location: LCCOMB_X23_Y19_N24
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux9~0_combout\ = (\U_CPU|U_controller|WideOr14~combout\ & (((\U_CPU|U_controller|WideOr13~combout\)))) # (!\U_CPU|U_controller|WideOr14~combout\ & ((\U_CPU|U_controller|WideOr13~combout\ & 
-- (\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[6]~12_combout\)) # (!\U_CPU|U_controller|WideOr13~combout\ & ((\U_CPU|U_datapath|U_PC_ADDER|output[6]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr14~combout\,
	datab => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[6]~12_combout\,
	datac => \U_CPU|U_controller|WideOr13~combout\,
	datad => \U_CPU|U_datapath|U_PC_ADDER|output[6]~12_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux9~0_combout\);

-- Location: LCCOMB_X24_Y19_N0
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux9~1_combout\ = (\U_CPU|U_controller|WideOr14~combout\ & ((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux9~0_combout\ & (\U_CPU|U_datapath|U_SPL|output\(6))) # (!\U_CPU|U_datapath|U_ADDRESS_MUX|Mux9~0_combout\ & 
-- ((\U_CPU|U_datapath|U_ADDRL|output\(6)))))) # (!\U_CPU|U_controller|WideOr14~combout\ & (((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr14~combout\,
	datab => \U_CPU|U_datapath|U_SPL|output\(6),
	datac => \U_CPU|U_datapath|U_ADDRL|output\(6),
	datad => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux9~0_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux9~1_combout\);

-- Location: FF_X23_Y19_N3
\U_CPU|U_datapath|U_ADDRH|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|ADDRH_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ADDRH|output\(7));

-- Location: LCCOMB_X24_Y20_N22
\U_CPU|U_datapath|U_SP_ADDER|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~48_combout\ = (\U_CPU|U_controller|WideOr31~0_combout\ & (((!\U_CPU|U_controller|WideOr33~combout\ & \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~30_combout\)))) # (!\U_CPU|U_controller|WideOr31~0_combout\ & 
-- (\U_CPU|U_datapath|U_SP_ADDER|Add0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_SP_ADDER|Add0~46_combout\,
	datab => \U_CPU|U_controller|WideOr33~combout\,
	datac => \U_CPU|U_controller|WideOr31~0_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~30_combout\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~48_combout\);

-- Location: FF_X17_Y20_N9
\U_CPU|U_controller|state.LDSI_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.LDSI~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.LDSI_2~q\);

-- Location: LCCOMB_X17_Y22_N26
\U_CPU|U_controller|WideOr34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr34~combout\ = (\U_CPU|U_controller|state.LDSI_2~q\) # (!\U_CPU|U_controller|WideOr31~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_controller|state.LDSI_2~q\,
	datad => \U_CPU|U_controller|WideOr31~0_combout\,
	combout => \U_CPU|U_controller|WideOr34~combout\);

-- Location: FF_X24_Y20_N23
\U_CPU|U_datapath|U_SPH|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_SP_ADDER|Add0~48_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr34~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_SPH|output\(7));

-- Location: LCCOMB_X23_Y19_N2
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux0~0_combout\ = (\U_CPU|U_controller|WideOr14~combout\ & ((\U_CPU|U_controller|WideOr13~combout\ & ((\U_CPU|U_datapath|U_SPH|output\(7)))) # (!\U_CPU|U_controller|WideOr13~combout\ & 
-- (\U_CPU|U_datapath|U_ADDRH|output\(7))))) # (!\U_CPU|U_controller|WideOr14~combout\ & (!\U_CPU|U_controller|WideOr13~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr14~combout\,
	datab => \U_CPU|U_controller|WideOr13~combout\,
	datac => \U_CPU|U_datapath|U_ADDRH|output\(7),
	datad => \U_CPU|U_datapath|U_SPH|output\(7),
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y18_N18
\U_CPU|U_datapath|U_X_ADDER|Add0~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~51_combout\ = (\U_CPU|U_controller|WideOr35~0_combout\ & (((\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~30_combout\ & !\U_CPU|U_controller|X_LD_MUX_sel\(0))))) # (!\U_CPU|U_controller|WideOr35~0_combout\ & 
-- (\U_CPU|U_datapath|U_X_ADDER|Add0~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_X_ADDER|Add0~49_combout\,
	datab => \U_CPU|U_controller|WideOr35~0_combout\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~30_combout\,
	datad => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~51_combout\);

-- Location: FF_X16_Y18_N3
\U_CPU|U_controller|state.LDXI_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.LDXI~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.LDXI_2~q\);

-- Location: LCCOMB_X19_Y18_N0
\U_CPU|U_controller|WideOr36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr36~0_combout\ = (\U_CPU|U_controller|state.DECX~q\) # ((\U_CPU|U_controller|state.INCX~q\) # (\U_CPU|U_controller|state.LDXI_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.DECX~q\,
	datac => \U_CPU|U_controller|state.INCX~q\,
	datad => \U_CPU|U_controller|state.LDXI_2~q\,
	combout => \U_CPU|U_controller|WideOr36~0_combout\);

-- Location: FF_X23_Y18_N19
\U_CPU|U_datapath|U_XH|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_X_ADDER|Add0~51_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_XH|output\(7));

-- Location: LCCOMB_X23_Y18_N0
\U_CPU|U_datapath|U_X_ADDER|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~32_combout\ = (\U_CPU|U_controller|WideOr35~0_combout\ & (((!\U_CPU|U_controller|X_LD_MUX_sel\(0) & \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~9_combout\)))) # (!\U_CPU|U_controller|WideOr35~0_combout\ & 
-- (\U_CPU|U_datapath|U_X_ADDER|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_X_ADDER|Add0~30_combout\,
	datab => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datac => \U_CPU|U_controller|WideOr35~0_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~9_combout\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~32_combout\);

-- Location: FF_X23_Y18_N1
\U_CPU|U_datapath|U_XH|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_X_ADDER|Add0~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_XH|output\(6));

-- Location: LCCOMB_X23_Y18_N20
\U_CPU|U_datapath|U_X_ADDER|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~36_combout\ = (\U_CPU|U_controller|WideOr35~0_combout\ & (((!\U_CPU|U_controller|X_LD_MUX_sel\(0) & \U_CPU|U_datapath|U_X_ADDER|Add0~35_combout\)))) # (!\U_CPU|U_controller|WideOr35~0_combout\ & 
-- (\U_CPU|U_datapath|U_X_ADDER|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_X_ADDER|Add0~26_combout\,
	datab => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datac => \U_CPU|U_controller|WideOr35~0_combout\,
	datad => \U_CPU|U_datapath|U_X_ADDER|Add0~35_combout\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~36_combout\);

-- Location: FF_X23_Y18_N21
\U_CPU|U_datapath|U_XH|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_X_ADDER|Add0~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_XH|output\(4));

-- Location: LCCOMB_X24_Y18_N14
\U_CPU|U_datapath|U_X_ADDER|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~16_combout\ = (\U_CPU|U_controller|X_LD_MUX_sel\(0) & ((\U_CPU|U_datapath|U_XL|output\(7) & (\U_CPU|U_datapath|U_X_ADDER|Add0~15\ & VCC)) # (!\U_CPU|U_datapath|U_XL|output\(7) & (!\U_CPU|U_datapath|U_X_ADDER|Add0~15\)))) # 
-- (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & ((\U_CPU|U_datapath|U_XL|output\(7) & (!\U_CPU|U_datapath|U_X_ADDER|Add0~15\)) # (!\U_CPU|U_datapath|U_XL|output\(7) & ((\U_CPU|U_datapath|U_X_ADDER|Add0~15\) # (GND)))))
-- \U_CPU|U_datapath|U_X_ADDER|Add0~17\ = CARRY((\U_CPU|U_controller|X_LD_MUX_sel\(0) & (!\U_CPU|U_datapath|U_XL|output\(7) & !\U_CPU|U_datapath|U_X_ADDER|Add0~15\)) # (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & ((!\U_CPU|U_datapath|U_X_ADDER|Add0~15\) # 
-- (!\U_CPU|U_datapath|U_XL|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datab => \U_CPU|U_datapath|U_XL|output\(7),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_ADDER|Add0~15\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~16_combout\,
	cout => \U_CPU|U_datapath|U_X_ADDER|Add0~17\);

-- Location: LCCOMB_X23_Y18_N14
\U_CPU|U_datapath|U_X_ADDER|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~42_combout\ = (\U_CPU|U_controller|WideOr35~0_combout\ & (\U_CPU|U_controller|X_LD_MUX_sel\(0) & ((\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~30_combout\)))) # (!\U_CPU|U_controller|WideOr35~0_combout\ & 
-- (((\U_CPU|U_datapath|U_X_ADDER|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datab => \U_CPU|U_datapath|U_X_ADDER|Add0~16_combout\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~30_combout\,
	datad => \U_CPU|U_controller|WideOr35~0_combout\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~42_combout\);

-- Location: FF_X23_Y18_N15
\U_CPU|U_datapath|U_XL|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_X_ADDER|Add0~42_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_XL|output\(7));

-- Location: LCCOMB_X24_Y18_N16
\U_CPU|U_datapath|U_X_ADDER|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~18_combout\ = ((\U_CPU|U_datapath|U_XH|output\(0) $ (\U_CPU|U_controller|X_LD_MUX_sel\(0) $ (!\U_CPU|U_datapath|U_X_ADDER|Add0~17\)))) # (GND)
-- \U_CPU|U_datapath|U_X_ADDER|Add0~19\ = CARRY((\U_CPU|U_datapath|U_XH|output\(0) & ((\U_CPU|U_controller|X_LD_MUX_sel\(0)) # (!\U_CPU|U_datapath|U_X_ADDER|Add0~17\))) # (!\U_CPU|U_datapath|U_XH|output\(0) & (\U_CPU|U_controller|X_LD_MUX_sel\(0) & 
-- !\U_CPU|U_datapath|U_X_ADDER|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_XH|output\(0),
	datab => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_ADDER|Add0~17\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~18_combout\,
	cout => \U_CPU|U_datapath|U_X_ADDER|Add0~19\);

-- Location: LCCOMB_X24_Y18_N18
\U_CPU|U_datapath|U_X_ADDER|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~20_combout\ = (\U_CPU|U_datapath|U_XH|output\(1) & ((\U_CPU|U_controller|X_LD_MUX_sel\(0) & (\U_CPU|U_datapath|U_X_ADDER|Add0~19\ & VCC)) # (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & 
-- (!\U_CPU|U_datapath|U_X_ADDER|Add0~19\)))) # (!\U_CPU|U_datapath|U_XH|output\(1) & ((\U_CPU|U_controller|X_LD_MUX_sel\(0) & (!\U_CPU|U_datapath|U_X_ADDER|Add0~19\)) # (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & ((\U_CPU|U_datapath|U_X_ADDER|Add0~19\) # 
-- (GND)))))
-- \U_CPU|U_datapath|U_X_ADDER|Add0~21\ = CARRY((\U_CPU|U_datapath|U_XH|output\(1) & (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & !\U_CPU|U_datapath|U_X_ADDER|Add0~19\)) # (!\U_CPU|U_datapath|U_XH|output\(1) & ((!\U_CPU|U_datapath|U_X_ADDER|Add0~19\) # 
-- (!\U_CPU|U_controller|X_LD_MUX_sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_XH|output\(1),
	datab => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_ADDER|Add0~19\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~20_combout\,
	cout => \U_CPU|U_datapath|U_X_ADDER|Add0~21\);

-- Location: LCCOMB_X23_Y18_N16
\U_CPU|U_datapath|U_X_ADDER|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~38_combout\ = (\U_CPU|U_controller|WideOr35~0_combout\ & (((!\U_CPU|U_controller|X_LD_MUX_sel\(0) & \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~23_combout\)))) # (!\U_CPU|U_controller|WideOr35~0_combout\ & 
-- (\U_CPU|U_datapath|U_X_ADDER|Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr35~0_combout\,
	datab => \U_CPU|U_datapath|U_X_ADDER|Add0~22_combout\,
	datac => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~23_combout\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~38_combout\);

-- Location: FF_X23_Y18_N17
\U_CPU|U_datapath|U_XH|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_X_ADDER|Add0~38_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_XH|output\(2));

-- Location: LCCOMB_X23_Y18_N10
\U_CPU|U_datapath|U_X_ADDER|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~40_combout\ = (\U_CPU|U_controller|WideOr35~0_combout\ & (((!\U_CPU|U_controller|X_LD_MUX_sel\(0) & \U_CPU|U_datapath|U_X_ADDER|Add0~39_combout\)))) # (!\U_CPU|U_controller|WideOr35~0_combout\ & 
-- (\U_CPU|U_datapath|U_X_ADDER|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr35~0_combout\,
	datab => \U_CPU|U_datapath|U_X_ADDER|Add0~20_combout\,
	datac => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datad => \U_CPU|U_datapath|U_X_ADDER|Add0~39_combout\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~40_combout\);

-- Location: FF_X23_Y18_N11
\U_CPU|U_datapath|U_XH|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_X_ADDER|Add0~40_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_XH|output\(1));

-- Location: LCCOMB_X23_Y18_N28
\U_CPU|U_datapath|U_X_ADDER|Add0~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~41_combout\ = (\U_CPU|U_controller|WideOr35~0_combout\ & (!\U_CPU|U_controller|X_LD_MUX_sel\(0) & ((\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5_combout\)))) # (!\U_CPU|U_controller|WideOr35~0_combout\ & 
-- (((\U_CPU|U_datapath|U_X_ADDER|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|X_LD_MUX_sel\(0),
	datab => \U_CPU|U_datapath|U_X_ADDER|Add0~18_combout\,
	datac => \U_CPU|U_controller|WideOr35~0_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5_combout\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~41_combout\);

-- Location: FF_X23_Y18_N29
\U_CPU|U_datapath|U_XH|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_X_ADDER|Add0~41_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_XH|output\(0));

-- Location: LCCOMB_X23_Y20_N26
\U_CPU|U_datapath|U_B|output[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_B|output[7]~feeder_combout\ = \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~30_combout\,
	combout => \U_CPU|U_datapath|U_B|output[7]~feeder_combout\);

-- Location: FF_X23_Y20_N27
\U_CPU|U_datapath|U_B|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_B|output[7]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|state.LDAA_X~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_B|output\(7));

-- Location: LCCOMB_X22_Y18_N14
\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[7]~14_combout\ = (\U_CPU|U_datapath|U_XL|output\(7) & ((\U_CPU|U_datapath|U_B|output\(7) & (\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[6]~13\ & VCC)) # (!\U_CPU|U_datapath|U_B|output\(7) & 
-- (!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[6]~13\)))) # (!\U_CPU|U_datapath|U_XL|output\(7) & ((\U_CPU|U_datapath|U_B|output\(7) & (!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[6]~13\)) # (!\U_CPU|U_datapath|U_B|output\(7) & 
-- ((\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[6]~13\) # (GND)))))
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[7]~15\ = CARRY((\U_CPU|U_datapath|U_XL|output\(7) & (!\U_CPU|U_datapath|U_B|output\(7) & !\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[6]~13\)) # (!\U_CPU|U_datapath|U_XL|output\(7) & 
-- ((!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[6]~13\) # (!\U_CPU|U_datapath|U_B|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_XL|output\(7),
	datab => \U_CPU|U_datapath|U_B|output\(7),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[6]~13\,
	combout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[7]~14_combout\,
	cout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[7]~15\);

-- Location: LCCOMB_X22_Y18_N16
\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[8]~16_combout\ = (\U_CPU|U_datapath|U_XH|output\(0) & (\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[7]~15\ $ (GND))) # (!\U_CPU|U_datapath|U_XH|output\(0) & (!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[7]~15\ & VCC))
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[8]~17\ = CARRY((\U_CPU|U_datapath|U_XH|output\(0) & !\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_XH|output\(0),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[7]~15\,
	combout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[8]~16_combout\,
	cout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[8]~17\);

-- Location: LCCOMB_X22_Y18_N26
\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[13]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[13]~26_combout\ = (\U_CPU|U_datapath|U_XH|output\(5) & (!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[12]~25\)) # (!\U_CPU|U_datapath|U_XH|output\(5) & ((\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[12]~25\) # (GND)))
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[13]~27\ = CARRY((!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[12]~25\) # (!\U_CPU|U_datapath|U_XH|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_XH|output\(5),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[12]~25\,
	combout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[13]~26_combout\,
	cout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[13]~27\);

-- Location: LCCOMB_X22_Y18_N28
\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[14]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[14]~28_combout\ = (\U_CPU|U_datapath|U_XH|output\(6) & (\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[13]~27\ $ (GND))) # (!\U_CPU|U_datapath|U_XH|output\(6) & (!\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[13]~27\ & 
-- VCC))
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[14]~29\ = CARRY((\U_CPU|U_datapath|U_XH|output\(6) & !\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_XH|output\(6),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[13]~27\,
	combout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[14]~28_combout\,
	cout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[14]~29\);

-- Location: LCCOMB_X22_Y18_N30
\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[15]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[15]~30_combout\ = \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[14]~29\ $ (\U_CPU|U_datapath|U_XH|output\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_CPU|U_datapath|U_XH|output\(7),
	cin => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[14]~29\,
	combout => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[15]~30_combout\);

-- Location: FF_X22_Y23_N3
\U_CPU|U_datapath|U_BRANCH_TARGET_H|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|WideOr30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(7));

-- Location: LCCOMB_X22_Y23_N6
\U_CPU|U_datapath|U_PC_LD_MUX|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_LD_MUX|Mux0~0_combout\ = (\U_CPU|U_controller|WideOr11~combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(7))) # (!\U_CPU|U_controller|WideOr11~combout\ & ((\U_CPU|U_datapath|U_PC_ADDER|output[15]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr11~combout\,
	datab => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(7),
	datad => \U_CPU|U_datapath|U_PC_ADDER|output[15]~30_combout\,
	combout => \U_CPU|U_datapath|U_PC_LD_MUX|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y23_N28
\U_CPU|U_controller|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector2~0_combout\ = (((!\U_CPU|U_controller|Selector4~12_combout\) # (!\U_CPU|U_controller|WideOr11~5_combout\)) # (!\U_CPU|U_controller|Selector3~0_combout\)) # (!\U_CPU|U_controller|Selector0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Selector0~26_combout\,
	datab => \U_CPU|U_controller|Selector3~0_combout\,
	datac => \U_CPU|U_controller|WideOr11~5_combout\,
	datad => \U_CPU|U_controller|Selector4~12_combout\,
	combout => \U_CPU|U_controller|Selector2~0_combout\);

-- Location: FF_X22_Y23_N7
\U_CPU|U_datapath|U_PCH|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_PC_LD_MUX|Mux0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_PCH|output\(7));

-- Location: FF_X20_Y20_N23
\U_CPU|U_datapath|U_BRANCH_TARGET_H|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_X_ADDER|Add0~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|WideOr30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(5));

-- Location: LCCOMB_X22_Y23_N26
\U_CPU|U_datapath|U_PC_LD_MUX|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_LD_MUX|Mux2~0_combout\ = (\U_CPU|U_controller|WideOr11~combout\ & ((\U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(5)))) # (!\U_CPU|U_controller|WideOr11~combout\ & (\U_CPU|U_datapath|U_PC_ADDER|output[13]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_PC_ADDER|output[13]~26_combout\,
	datab => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(5),
	datad => \U_CPU|U_controller|WideOr11~combout\,
	combout => \U_CPU|U_datapath|U_PC_LD_MUX|Mux2~0_combout\);

-- Location: FF_X22_Y23_N27
\U_CPU|U_datapath|U_PCH|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_PC_LD_MUX|Mux2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_PCH|output\(5));

-- Location: LCCOMB_X22_Y19_N14
\U_CPU|U_datapath|U_PC_ADDER|output[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_ADDER|output[7]~14_combout\ = (\U_CPU|U_datapath|U_PCL|output\(7) & (!\U_CPU|U_datapath|U_PC_ADDER|output[6]~13\)) # (!\U_CPU|U_datapath|U_PCL|output\(7) & ((\U_CPU|U_datapath|U_PC_ADDER|output[6]~13\) # (GND)))
-- \U_CPU|U_datapath|U_PC_ADDER|output[7]~15\ = CARRY((!\U_CPU|U_datapath|U_PC_ADDER|output[6]~13\) # (!\U_CPU|U_datapath|U_PCL|output\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_PCL|output\(7),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_PC_ADDER|output[6]~13\,
	combout => \U_CPU|U_datapath|U_PC_ADDER|output[7]~14_combout\,
	cout => \U_CPU|U_datapath|U_PC_ADDER|output[7]~15\);

-- Location: LCCOMB_X22_Y19_N16
\U_CPU|U_datapath|U_PC_ADDER|output[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_ADDER|output[8]~16_combout\ = (\U_CPU|U_datapath|U_PCH|output\(0) & (\U_CPU|U_datapath|U_PC_ADDER|output[7]~15\ $ (GND))) # (!\U_CPU|U_datapath|U_PCH|output\(0) & (!\U_CPU|U_datapath|U_PC_ADDER|output[7]~15\ & VCC))
-- \U_CPU|U_datapath|U_PC_ADDER|output[8]~17\ = CARRY((\U_CPU|U_datapath|U_PCH|output\(0) & !\U_CPU|U_datapath|U_PC_ADDER|output[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_PCH|output\(0),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_PC_ADDER|output[7]~15\,
	combout => \U_CPU|U_datapath|U_PC_ADDER|output[8]~16_combout\,
	cout => \U_CPU|U_datapath|U_PC_ADDER|output[8]~17\);

-- Location: LCCOMB_X22_Y19_N18
\U_CPU|U_datapath|U_PC_ADDER|output[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_ADDER|output[9]~18_combout\ = (\U_CPU|U_datapath|U_PCH|output\(1) & (!\U_CPU|U_datapath|U_PC_ADDER|output[8]~17\)) # (!\U_CPU|U_datapath|U_PCH|output\(1) & ((\U_CPU|U_datapath|U_PC_ADDER|output[8]~17\) # (GND)))
-- \U_CPU|U_datapath|U_PC_ADDER|output[9]~19\ = CARRY((!\U_CPU|U_datapath|U_PC_ADDER|output[8]~17\) # (!\U_CPU|U_datapath|U_PCH|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_PCH|output\(1),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_PC_ADDER|output[8]~17\,
	combout => \U_CPU|U_datapath|U_PC_ADDER|output[9]~18_combout\,
	cout => \U_CPU|U_datapath|U_PC_ADDER|output[9]~19\);

-- Location: LCCOMB_X22_Y23_N10
\U_CPU|U_datapath|U_PC_LD_MUX|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_LD_MUX|Mux6~0_combout\ = (\U_CPU|U_controller|WideOr11~combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(1))) # (!\U_CPU|U_controller|WideOr11~combout\ & ((\U_CPU|U_datapath|U_PC_ADDER|output[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr11~combout\,
	datab => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(1),
	datad => \U_CPU|U_datapath|U_PC_ADDER|output[9]~18_combout\,
	combout => \U_CPU|U_datapath|U_PC_LD_MUX|Mux6~0_combout\);

-- Location: FF_X22_Y23_N11
\U_CPU|U_datapath|U_PCH|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_PC_LD_MUX|Mux6~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_PCH|output\(1));

-- Location: LCCOMB_X22_Y19_N20
\U_CPU|U_datapath|U_PC_ADDER|output[10]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_ADDER|output[10]~20_combout\ = (\U_CPU|U_datapath|U_PCH|output\(2) & (\U_CPU|U_datapath|U_PC_ADDER|output[9]~19\ $ (GND))) # (!\U_CPU|U_datapath|U_PCH|output\(2) & (!\U_CPU|U_datapath|U_PC_ADDER|output[9]~19\ & VCC))
-- \U_CPU|U_datapath|U_PC_ADDER|output[10]~21\ = CARRY((\U_CPU|U_datapath|U_PCH|output\(2) & !\U_CPU|U_datapath|U_PC_ADDER|output[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_PCH|output\(2),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_PC_ADDER|output[9]~19\,
	combout => \U_CPU|U_datapath|U_PC_ADDER|output[10]~20_combout\,
	cout => \U_CPU|U_datapath|U_PC_ADDER|output[10]~21\);

-- Location: LCCOMB_X22_Y23_N24
\U_CPU|U_datapath|U_PC_LD_MUX|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_LD_MUX|Mux5~0_combout\ = (\U_CPU|U_controller|WideOr11~combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(2))) # (!\U_CPU|U_controller|WideOr11~combout\ & ((\U_CPU|U_datapath|U_PC_ADDER|output[10]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(2),
	datab => \U_CPU|U_datapath|U_PC_ADDER|output[10]~20_combout\,
	datad => \U_CPU|U_controller|WideOr11~combout\,
	combout => \U_CPU|U_datapath|U_PC_LD_MUX|Mux5~0_combout\);

-- Location: FF_X22_Y23_N25
\U_CPU|U_datapath|U_PCH|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_PC_LD_MUX|Mux5~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_PCH|output\(2));

-- Location: LCCOMB_X22_Y19_N22
\U_CPU|U_datapath|U_PC_ADDER|output[11]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_ADDER|output[11]~22_combout\ = (\U_CPU|U_datapath|U_PCH|output\(3) & (!\U_CPU|U_datapath|U_PC_ADDER|output[10]~21\)) # (!\U_CPU|U_datapath|U_PCH|output\(3) & ((\U_CPU|U_datapath|U_PC_ADDER|output[10]~21\) # (GND)))
-- \U_CPU|U_datapath|U_PC_ADDER|output[11]~23\ = CARRY((!\U_CPU|U_datapath|U_PC_ADDER|output[10]~21\) # (!\U_CPU|U_datapath|U_PCH|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_PCH|output\(3),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_PC_ADDER|output[10]~21\,
	combout => \U_CPU|U_datapath|U_PC_ADDER|output[11]~22_combout\,
	cout => \U_CPU|U_datapath|U_PC_ADDER|output[11]~23\);

-- Location: LCCOMB_X22_Y23_N14
\U_CPU|U_datapath|U_PC_LD_MUX|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_LD_MUX|Mux4~0_combout\ = (\U_CPU|U_controller|WideOr11~combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(3))) # (!\U_CPU|U_controller|WideOr11~combout\ & ((\U_CPU|U_datapath|U_PC_ADDER|output[11]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(3),
	datab => \U_CPU|U_datapath|U_PC_ADDER|output[11]~22_combout\,
	datad => \U_CPU|U_controller|WideOr11~combout\,
	combout => \U_CPU|U_datapath|U_PC_LD_MUX|Mux4~0_combout\);

-- Location: FF_X22_Y23_N15
\U_CPU|U_datapath|U_PCH|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_PC_LD_MUX|Mux4~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_PCH|output\(3));

-- Location: LCCOMB_X22_Y19_N24
\U_CPU|U_datapath|U_PC_ADDER|output[12]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_ADDER|output[12]~24_combout\ = (\U_CPU|U_datapath|U_PCH|output\(4) & (\U_CPU|U_datapath|U_PC_ADDER|output[11]~23\ $ (GND))) # (!\U_CPU|U_datapath|U_PCH|output\(4) & (!\U_CPU|U_datapath|U_PC_ADDER|output[11]~23\ & VCC))
-- \U_CPU|U_datapath|U_PC_ADDER|output[12]~25\ = CARRY((\U_CPU|U_datapath|U_PCH|output\(4) & !\U_CPU|U_datapath|U_PC_ADDER|output[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_PCH|output\(4),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_PC_ADDER|output[11]~23\,
	combout => \U_CPU|U_datapath|U_PC_ADDER|output[12]~24_combout\,
	cout => \U_CPU|U_datapath|U_PC_ADDER|output[12]~25\);

-- Location: LCCOMB_X22_Y19_N28
\U_CPU|U_datapath|U_PC_ADDER|output[14]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_ADDER|output[14]~28_combout\ = (\U_CPU|U_datapath|U_PCH|output\(6) & (\U_CPU|U_datapath|U_PC_ADDER|output[13]~27\ $ (GND))) # (!\U_CPU|U_datapath|U_PCH|output\(6) & (!\U_CPU|U_datapath|U_PC_ADDER|output[13]~27\ & VCC))
-- \U_CPU|U_datapath|U_PC_ADDER|output[14]~29\ = CARRY((\U_CPU|U_datapath|U_PCH|output\(6) & !\U_CPU|U_datapath|U_PC_ADDER|output[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_PCH|output\(6),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_PC_ADDER|output[13]~27\,
	combout => \U_CPU|U_datapath|U_PC_ADDER|output[14]~28_combout\,
	cout => \U_CPU|U_datapath|U_PC_ADDER|output[14]~29\);

-- Location: LCCOMB_X22_Y19_N30
\U_CPU|U_datapath|U_PC_ADDER|output[15]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_ADDER|output[15]~30_combout\ = \U_CPU|U_datapath|U_PC_ADDER|output[14]~29\ $ (\U_CPU|U_datapath|U_PCH|output\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_CPU|U_datapath|U_PCH|output\(7),
	cin => \U_CPU|U_datapath|U_PC_ADDER|output[14]~29\,
	combout => \U_CPU|U_datapath|U_PC_ADDER|output[15]~30_combout\);

-- Location: LCCOMB_X23_Y19_N20
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux0~1_combout\ = (\U_CPU|U_controller|WideOr14~combout\ & (\U_CPU|U_datapath|U_ADDRESS_MUX|Mux0~0_combout\)) # (!\U_CPU|U_controller|WideOr14~combout\ & ((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux0~0_combout\ & 
-- ((\U_CPU|U_datapath|U_PC_ADDER|output[15]~30_combout\))) # (!\U_CPU|U_datapath|U_ADDRESS_MUX|Mux0~0_combout\ & (\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[15]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr14~combout\,
	datab => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux0~0_combout\,
	datac => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[15]~30_combout\,
	datad => \U_CPU|U_datapath|U_PC_ADDER|output[15]~30_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux0~1_combout\);

-- Location: FF_X17_Y19_N5
\U_CPU|U_controller|state.LDAA_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.LDAA_2~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.LDAA_3~q\);

-- Location: FF_X17_Y19_N19
\U_CPU|U_controller|state.LDAA_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.LDAA_3~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.LDAA_4~q\);

-- Location: LCCOMB_X17_Y19_N4
\U_CPU|U_controller|WideOr14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr14~combout\ = (\U_CPU|U_controller|state.STAA_3~q\) # (((\U_CPU|U_controller|state.LDAA_3~q\) # (\U_CPU|U_controller|state.LDAA_4~q\)) # (!\U_CPU|U_controller|WideOr13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.STAA_3~q\,
	datab => \U_CPU|U_controller|WideOr13~0_combout\,
	datac => \U_CPU|U_controller|state.LDAA_3~q\,
	datad => \U_CPU|U_controller|state.LDAA_4~q\,
	combout => \U_CPU|U_controller|WideOr14~combout\);

-- Location: FF_X22_Y21_N21
\U_CPU|U_datapath|U_ADDRL|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_X_ADDER|Add0~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|ADDRL_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ADDRL|output\(5));

-- Location: LCCOMB_X22_Y21_N6
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux10~0_combout\ = (\U_CPU|U_controller|WideOr14~combout\ & (((\U_CPU|U_controller|WideOr13~combout\)))) # (!\U_CPU|U_controller|WideOr14~combout\ & ((\U_CPU|U_controller|WideOr13~combout\ & 
-- (\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[5]~10_combout\)) # (!\U_CPU|U_controller|WideOr13~combout\ & ((\U_CPU|U_datapath|U_PC_ADDER|output[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[5]~10_combout\,
	datab => \U_CPU|U_controller|WideOr14~combout\,
	datac => \U_CPU|U_controller|WideOr13~combout\,
	datad => \U_CPU|U_datapath|U_PC_ADDER|output[5]~10_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux10~0_combout\);

-- Location: LCCOMB_X22_Y21_N20
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux10~1_combout\ = (\U_CPU|U_controller|WideOr14~combout\ & ((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux10~0_combout\ & (\U_CPU|U_datapath|U_SPL|output\(5))) # (!\U_CPU|U_datapath|U_ADDRESS_MUX|Mux10~0_combout\ & 
-- ((\U_CPU|U_datapath|U_ADDRL|output\(5)))))) # (!\U_CPU|U_controller|WideOr14~combout\ & (((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_SPL|output\(5),
	datab => \U_CPU|U_controller|WideOr14~combout\,
	datac => \U_CPU|U_datapath|U_ADDRL|output\(5),
	datad => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux10~0_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux10~1_combout\);

-- Location: LCCOMB_X26_Y20_N2
\U_CPU|U_datapath|U_SP_ADDER|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~4_combout\ = (\U_CPU|U_datapath|U_SPL|output\(1) & ((\U_CPU|U_controller|WideOr33~combout\ & (\U_CPU|U_datapath|U_SP_ADDER|Add0~2\ & VCC)) # (!\U_CPU|U_controller|WideOr33~combout\ & 
-- (!\U_CPU|U_datapath|U_SP_ADDER|Add0~2\)))) # (!\U_CPU|U_datapath|U_SPL|output\(1) & ((\U_CPU|U_controller|WideOr33~combout\ & (!\U_CPU|U_datapath|U_SP_ADDER|Add0~2\)) # (!\U_CPU|U_controller|WideOr33~combout\ & ((\U_CPU|U_datapath|U_SP_ADDER|Add0~2\) # 
-- (GND)))))
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~5\ = CARRY((\U_CPU|U_datapath|U_SPL|output\(1) & (!\U_CPU|U_controller|WideOr33~combout\ & !\U_CPU|U_datapath|U_SP_ADDER|Add0~2\)) # (!\U_CPU|U_datapath|U_SPL|output\(1) & ((!\U_CPU|U_datapath|U_SP_ADDER|Add0~2\) # 
-- (!\U_CPU|U_controller|WideOr33~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_SPL|output\(1),
	datab => \U_CPU|U_controller|WideOr33~combout\,
	datad => VCC,
	cin => \U_CPU|U_datapath|U_SP_ADDER|Add0~2\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~4_combout\,
	cout => \U_CPU|U_datapath|U_SP_ADDER|Add0~5\);

-- Location: LCCOMB_X26_Y20_N4
\U_CPU|U_datapath|U_SP_ADDER|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~6_combout\ = ((\U_CPU|U_datapath|U_SPL|output\(2) $ (\U_CPU|U_controller|WideOr33~combout\ $ (!\U_CPU|U_datapath|U_SP_ADDER|Add0~5\)))) # (GND)
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~7\ = CARRY((\U_CPU|U_datapath|U_SPL|output\(2) & ((\U_CPU|U_controller|WideOr33~combout\) # (!\U_CPU|U_datapath|U_SP_ADDER|Add0~5\))) # (!\U_CPU|U_datapath|U_SPL|output\(2) & (\U_CPU|U_controller|WideOr33~combout\ & 
-- !\U_CPU|U_datapath|U_SP_ADDER|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_SPL|output\(2),
	datab => \U_CPU|U_controller|WideOr33~combout\,
	datad => VCC,
	cin => \U_CPU|U_datapath|U_SP_ADDER|Add0~5\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~6_combout\,
	cout => \U_CPU|U_datapath|U_SP_ADDER|Add0~7\);

-- Location: LCCOMB_X26_Y20_N8
\U_CPU|U_datapath|U_SP_ADDER|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~10_combout\ = ((\U_CPU|U_controller|WideOr33~combout\ $ (\U_CPU|U_datapath|U_SPL|output\(4) $ (!\U_CPU|U_datapath|U_SP_ADDER|Add0~9\)))) # (GND)
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~11\ = CARRY((\U_CPU|U_controller|WideOr33~combout\ & ((\U_CPU|U_datapath|U_SPL|output\(4)) # (!\U_CPU|U_datapath|U_SP_ADDER|Add0~9\))) # (!\U_CPU|U_controller|WideOr33~combout\ & (\U_CPU|U_datapath|U_SPL|output\(4) & 
-- !\U_CPU|U_datapath|U_SP_ADDER|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr33~combout\,
	datab => \U_CPU|U_datapath|U_SPL|output\(4),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_SP_ADDER|Add0~9\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~10_combout\,
	cout => \U_CPU|U_datapath|U_SP_ADDER|Add0~11\);

-- Location: LCCOMB_X24_Y20_N12
\U_CPU|U_datapath|U_SP_ADDER|Add0~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~41_combout\ = (\U_CPU|U_controller|WideOr31~0_combout\ & (\U_CPU|U_controller|WideOr33~combout\ & ((\U_CPU|U_datapath|U_X_ADDER|Add0~35_combout\)))) # (!\U_CPU|U_controller|WideOr31~0_combout\ & 
-- (((\U_CPU|U_datapath|U_SP_ADDER|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr33~combout\,
	datab => \U_CPU|U_datapath|U_SP_ADDER|Add0~10_combout\,
	datac => \U_CPU|U_controller|WideOr31~0_combout\,
	datad => \U_CPU|U_datapath|U_X_ADDER|Add0~35_combout\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~41_combout\);

-- Location: FF_X24_Y20_N13
\U_CPU|U_datapath|U_SPL|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_SP_ADDER|Add0~41_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_SPL|output\(4));

-- Location: FF_X22_Y21_N25
\U_CPU|U_datapath|U_ADDRL|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_X_ADDER|Add0~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|ADDRL_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ADDRL|output\(4));

-- Location: LCCOMB_X22_Y21_N24
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux11~0_combout\ = (\U_CPU|U_controller|WideOr14~combout\ & ((\U_CPU|U_controller|WideOr13~combout\) # ((\U_CPU|U_datapath|U_ADDRL|output\(4))))) # (!\U_CPU|U_controller|WideOr14~combout\ & 
-- (!\U_CPU|U_controller|WideOr13~combout\ & ((\U_CPU|U_datapath|U_PC_ADDER|output[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr14~combout\,
	datab => \U_CPU|U_controller|WideOr13~combout\,
	datac => \U_CPU|U_datapath|U_ADDRL|output\(4),
	datad => \U_CPU|U_datapath|U_PC_ADDER|output[4]~8_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux11~0_combout\);

-- Location: LCCOMB_X22_Y21_N26
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux11~1_combout\ = (\U_CPU|U_controller|WideOr13~combout\ & ((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux11~0_combout\ & ((\U_CPU|U_datapath|U_SPL|output\(4)))) # (!\U_CPU|U_datapath|U_ADDRESS_MUX|Mux11~0_combout\ & 
-- (\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[4]~8_combout\)))) # (!\U_CPU|U_controller|WideOr13~combout\ & (((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr13~combout\,
	datab => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[4]~8_combout\,
	datac => \U_CPU|U_datapath|U_SPL|output\(4),
	datad => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux11~0_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux11~1_combout\);

-- Location: FF_X22_Y21_N29
\U_CPU|U_datapath|U_ADDRL|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|ADDRL_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ADDRL|output\(3));

-- Location: LCCOMB_X22_Y21_N30
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux12~0_combout\ = (\U_CPU|U_controller|WideOr14~combout\ & (((\U_CPU|U_controller|WideOr13~combout\)))) # (!\U_CPU|U_controller|WideOr14~combout\ & ((\U_CPU|U_controller|WideOr13~combout\ & 
-- (\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[3]~6_combout\)) # (!\U_CPU|U_controller|WideOr13~combout\ & ((\U_CPU|U_datapath|U_PC_ADDER|output[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[3]~6_combout\,
	datab => \U_CPU|U_controller|WideOr14~combout\,
	datac => \U_CPU|U_controller|WideOr13~combout\,
	datad => \U_CPU|U_datapath|U_PC_ADDER|output[3]~6_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux12~0_combout\);

-- Location: LCCOMB_X22_Y21_N28
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux12~1_combout\ = (\U_CPU|U_controller|WideOr14~combout\ & ((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux12~0_combout\ & (\U_CPU|U_datapath|U_SPL|output\(3))) # (!\U_CPU|U_datapath|U_ADDRESS_MUX|Mux12~0_combout\ & 
-- ((\U_CPU|U_datapath|U_ADDRL|output\(3)))))) # (!\U_CPU|U_controller|WideOr14~combout\ & (((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_SPL|output\(3),
	datab => \U_CPU|U_controller|WideOr14~combout\,
	datac => \U_CPU|U_datapath|U_ADDRL|output\(3),
	datad => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux12~0_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux12~1_combout\);

-- Location: LCCOMB_X23_Y21_N0
\U_DECODER_SMALL8|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_DECODER_SMALL8|Equal0~2_combout\ = (\U_CPU|U_datapath|U_ADDRESS_MUX|Mux13~1_combout\ & (\U_CPU|U_datapath|U_ADDRESS_MUX|Mux10~1_combout\ & (\U_CPU|U_datapath|U_ADDRESS_MUX|Mux11~1_combout\ & \U_CPU|U_datapath|U_ADDRESS_MUX|Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux13~1_combout\,
	datab => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux10~1_combout\,
	datac => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux11~1_combout\,
	datad => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux12~1_combout\,
	combout => \U_DECODER_SMALL8|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y21_N8
\U_DECODER_SMALL8|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_DECODER_SMALL8|Equal0~3_combout\ = (\U_CPU|U_datapath|U_ADDRESS_MUX|Mux14~1_combout\ & (\U_CPU|U_datapath|U_ADDRESS_MUX|Mux9~1_combout\ & (\U_CPU|U_datapath|U_ADDRESS_MUX|Mux0~1_combout\ & \U_DECODER_SMALL8|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux14~1_combout\,
	datab => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux9~1_combout\,
	datac => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux0~1_combout\,
	datad => \U_DECODER_SMALL8|Equal0~2_combout\,
	combout => \U_DECODER_SMALL8|Equal0~3_combout\);

-- Location: FF_X23_Y19_N9
\U_CPU|U_datapath|U_ADDRH|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_X_ADDER|Add0~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|ADDRH_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ADDRH|output\(4));

-- Location: LCCOMB_X23_Y19_N10
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux3~0_combout\ = (\U_CPU|U_controller|WideOr14~combout\ & (((\U_CPU|U_controller|WideOr13~combout\)))) # (!\U_CPU|U_controller|WideOr14~combout\ & ((\U_CPU|U_controller|WideOr13~combout\ & 
-- (\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[12]~24_combout\)) # (!\U_CPU|U_controller|WideOr13~combout\ & ((\U_CPU|U_datapath|U_PC_ADDER|output[12]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[12]~24_combout\,
	datab => \U_CPU|U_controller|WideOr14~combout\,
	datac => \U_CPU|U_controller|WideOr13~combout\,
	datad => \U_CPU|U_datapath|U_PC_ADDER|output[12]~24_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y19_N8
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux3~1_combout\ = (\U_CPU|U_controller|WideOr14~combout\ & ((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux3~0_combout\ & (\U_CPU|U_datapath|U_SPH|output\(4))) # (!\U_CPU|U_datapath|U_ADDRESS_MUX|Mux3~0_combout\ & 
-- ((\U_CPU|U_datapath|U_ADDRH|output\(4)))))) # (!\U_CPU|U_controller|WideOr14~combout\ & (((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_SPH|output\(4),
	datab => \U_CPU|U_controller|WideOr14~combout\,
	datac => \U_CPU|U_datapath|U_ADDRH|output\(4),
	datad => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux3~0_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux3~1_combout\);

-- Location: FF_X23_Y19_N29
\U_CPU|U_datapath|U_ADDRH|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_X_ADDER|Add0~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|ADDRH_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ADDRH|output\(5));

-- Location: LCCOMB_X23_Y19_N28
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux2~0_combout\ = (\U_CPU|U_controller|WideOr13~combout\ & (((\U_CPU|U_controller|WideOr14~combout\)))) # (!\U_CPU|U_controller|WideOr13~combout\ & ((\U_CPU|U_controller|WideOr14~combout\ & 
-- ((\U_CPU|U_datapath|U_ADDRH|output\(5)))) # (!\U_CPU|U_controller|WideOr14~combout\ & (\U_CPU|U_datapath|U_PC_ADDER|output[13]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_PC_ADDER|output[13]~26_combout\,
	datab => \U_CPU|U_controller|WideOr13~combout\,
	datac => \U_CPU|U_datapath|U_ADDRH|output\(5),
	datad => \U_CPU|U_controller|WideOr14~combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y19_N30
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux2~1_combout\ = (\U_CPU|U_controller|WideOr13~combout\ & ((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux2~0_combout\ & (\U_CPU|U_datapath|U_SPH|output\(5))) # (!\U_CPU|U_datapath|U_ADDRESS_MUX|Mux2~0_combout\ & 
-- ((\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[13]~26_combout\))))) # (!\U_CPU|U_controller|WideOr13~combout\ & (((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_SPH|output\(5),
	datab => \U_CPU|U_controller|WideOr13~combout\,
	datac => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[13]~26_combout\,
	datad => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux2~0_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux2~1_combout\);

-- Location: FF_X23_Y19_N1
\U_CPU|U_datapath|U_ADDRH|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|ADDRH_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ADDRH|output\(6));

-- Location: LCCOMB_X23_Y19_N18
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux1~0_combout\ = (\U_CPU|U_controller|WideOr14~combout\ & (\U_CPU|U_controller|WideOr13~combout\)) # (!\U_CPU|U_controller|WideOr14~combout\ & ((\U_CPU|U_controller|WideOr13~combout\ & 
-- (\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[14]~28_combout\)) # (!\U_CPU|U_controller|WideOr13~combout\ & ((\U_CPU|U_datapath|U_PC_ADDER|output[14]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr14~combout\,
	datab => \U_CPU|U_controller|WideOr13~combout\,
	datac => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[14]~28_combout\,
	datad => \U_CPU|U_datapath|U_PC_ADDER|output[14]~28_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y19_N0
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux1~1_combout\ = (\U_CPU|U_controller|WideOr14~combout\ & ((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux1~0_combout\ & (\U_CPU|U_datapath|U_SPH|output\(6))) # (!\U_CPU|U_datapath|U_ADDRESS_MUX|Mux1~0_combout\ & 
-- ((\U_CPU|U_datapath|U_ADDRH|output\(6)))))) # (!\U_CPU|U_controller|WideOr14~combout\ & (((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_SPH|output\(6),
	datab => \U_CPU|U_controller|WideOr14~combout\,
	datac => \U_CPU|U_datapath|U_ADDRH|output\(6),
	datad => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux1~0_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux1~1_combout\);

-- Location: LCCOMB_X23_Y19_N16
\U_DECODER_SMALL8|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_DECODER_SMALL8|Equal0~0_combout\ = (\U_CPU|U_datapath|U_ADDRESS_MUX|Mux4~1_combout\ & (\U_CPU|U_datapath|U_ADDRESS_MUX|Mux3~1_combout\ & (\U_CPU|U_datapath|U_ADDRESS_MUX|Mux2~1_combout\ & \U_CPU|U_datapath|U_ADDRESS_MUX|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux4~1_combout\,
	datab => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux3~1_combout\,
	datac => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux2~1_combout\,
	datad => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux1~1_combout\,
	combout => \U_DECODER_SMALL8|Equal0~0_combout\);

-- Location: FF_X22_Y21_N23
\U_CPU|U_datapath|U_ADDRL|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|ADDRL_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ADDRL|output\(7));

-- Location: LCCOMB_X22_Y21_N22
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux8~0_combout\ = (\U_CPU|U_controller|WideOr14~combout\ & ((\U_CPU|U_controller|WideOr13~combout\) # ((\U_CPU|U_datapath|U_ADDRL|output\(7))))) # (!\U_CPU|U_controller|WideOr14~combout\ & 
-- (!\U_CPU|U_controller|WideOr13~combout\ & ((\U_CPU|U_datapath|U_PC_ADDER|output[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr14~combout\,
	datab => \U_CPU|U_controller|WideOr13~combout\,
	datac => \U_CPU|U_datapath|U_ADDRL|output\(7),
	datad => \U_CPU|U_datapath|U_PC_ADDER|output[7]~14_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux8~0_combout\);

-- Location: LCCOMB_X24_Y20_N8
\U_CPU|U_datapath|U_SP_ADDER|Add0~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~39_combout\ = (\U_CPU|U_controller|WideOr31~0_combout\ & (((\U_CPU|U_controller|WideOr33~combout\ & \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~30_combout\)))) # (!\U_CPU|U_controller|WideOr31~0_combout\ & 
-- (\U_CPU|U_datapath|U_SP_ADDER|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_SP_ADDER|Add0~16_combout\,
	datab => \U_CPU|U_controller|WideOr33~combout\,
	datac => \U_CPU|U_controller|WideOr31~0_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~30_combout\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~39_combout\);

-- Location: FF_X24_Y20_N9
\U_CPU|U_datapath|U_SPL|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_SP_ADDER|Add0~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_SPL|output\(7));

-- Location: LCCOMB_X22_Y21_N0
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux8~1_combout\ = (\U_CPU|U_controller|WideOr13~combout\ & ((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux8~0_combout\ & ((\U_CPU|U_datapath|U_SPL|output\(7)))) # (!\U_CPU|U_datapath|U_ADDRESS_MUX|Mux8~0_combout\ & 
-- (\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[7]~14_combout\)))) # (!\U_CPU|U_controller|WideOr13~combout\ & (((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr13~combout\,
	datab => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[7]~14_combout\,
	datac => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux8~0_combout\,
	datad => \U_CPU|U_datapath|U_SPL|output\(7),
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux8~1_combout\);

-- Location: LCCOMB_X24_Y20_N10
\U_CPU|U_datapath|U_SP_ADDER|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~40_combout\ = (\U_CPU|U_controller|WideOr31~0_combout\ & (((\U_CPU|U_controller|WideOr33~combout\ & \U_CPU|U_datapath|U_X_ADDER|Add0~33_combout\)))) # (!\U_CPU|U_controller|WideOr31~0_combout\ & 
-- (\U_CPU|U_datapath|U_SP_ADDER|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_SP_ADDER|Add0~12_combout\,
	datab => \U_CPU|U_controller|WideOr33~combout\,
	datac => \U_CPU|U_controller|WideOr31~0_combout\,
	datad => \U_CPU|U_datapath|U_X_ADDER|Add0~33_combout\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~40_combout\);

-- Location: FF_X24_Y20_N11
\U_CPU|U_datapath|U_SPL|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_SP_ADDER|Add0~40_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_SPL|output\(5));

-- Location: LCCOMB_X26_Y20_N16
\U_CPU|U_datapath|U_SP_ADDER|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~18_combout\ = ((\U_CPU|U_controller|WideOr33~combout\ $ (\U_CPU|U_datapath|U_SPH|output\(0) $ (!\U_CPU|U_datapath|U_SP_ADDER|Add0~17\)))) # (GND)
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~19\ = CARRY((\U_CPU|U_controller|WideOr33~combout\ & ((\U_CPU|U_datapath|U_SPH|output\(0)) # (!\U_CPU|U_datapath|U_SP_ADDER|Add0~17\))) # (!\U_CPU|U_controller|WideOr33~combout\ & (\U_CPU|U_datapath|U_SPH|output\(0) & 
-- !\U_CPU|U_datapath|U_SP_ADDER|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr33~combout\,
	datab => \U_CPU|U_datapath|U_SPH|output\(0),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_SP_ADDER|Add0~17\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~18_combout\,
	cout => \U_CPU|U_datapath|U_SP_ADDER|Add0~19\);

-- Location: LCCOMB_X24_Y20_N6
\U_CPU|U_datapath|U_SP_ADDER|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~38_combout\ = (\U_CPU|U_controller|WideOr31~0_combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5_combout\ & (!\U_CPU|U_controller|WideOr33~combout\))) # (!\U_CPU|U_controller|WideOr31~0_combout\ & 
-- (((\U_CPU|U_datapath|U_SP_ADDER|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5_combout\,
	datab => \U_CPU|U_controller|WideOr33~combout\,
	datac => \U_CPU|U_controller|WideOr31~0_combout\,
	datad => \U_CPU|U_datapath|U_SP_ADDER|Add0~18_combout\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~38_combout\);

-- Location: FF_X24_Y20_N7
\U_CPU|U_datapath|U_SPH|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_SP_ADDER|Add0~38_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr34~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_SPH|output\(0));

-- Location: LCCOMB_X24_Y20_N20
\U_CPU|U_datapath|U_SP_ADDER|Add0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~37_combout\ = (\U_CPU|U_controller|WideOr31~0_combout\ & (!\U_CPU|U_controller|WideOr33~combout\ & ((\U_CPU|U_datapath|U_X_ADDER|Add0~39_combout\)))) # (!\U_CPU|U_controller|WideOr31~0_combout\ & 
-- (((\U_CPU|U_datapath|U_SP_ADDER|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr31~0_combout\,
	datab => \U_CPU|U_controller|WideOr33~combout\,
	datac => \U_CPU|U_datapath|U_SP_ADDER|Add0~20_combout\,
	datad => \U_CPU|U_datapath|U_X_ADDER|Add0~39_combout\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~37_combout\);

-- Location: FF_X24_Y20_N21
\U_CPU|U_datapath|U_SPH|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_SP_ADDER|Add0~37_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr34~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_SPH|output\(1));

-- Location: FF_X23_Y19_N27
\U_CPU|U_datapath|U_ADDRH|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_X_ADDER|Add0~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|ADDRH_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ADDRH|output\(1));

-- Location: LCCOMB_X23_Y19_N26
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux6~0_combout\ = (\U_CPU|U_controller|WideOr14~combout\ & ((\U_CPU|U_controller|WideOr13~combout\) # ((\U_CPU|U_datapath|U_ADDRH|output\(1))))) # (!\U_CPU|U_controller|WideOr14~combout\ & 
-- (!\U_CPU|U_controller|WideOr13~combout\ & ((\U_CPU|U_datapath|U_PC_ADDER|output[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr14~combout\,
	datab => \U_CPU|U_controller|WideOr13~combout\,
	datac => \U_CPU|U_datapath|U_ADDRH|output\(1),
	datad => \U_CPU|U_datapath|U_PC_ADDER|output[9]~18_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y21_N4
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux6~1_combout\ = (\U_CPU|U_controller|WideOr13~combout\ & ((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux6~0_combout\ & ((\U_CPU|U_datapath|U_SPH|output\(1)))) # (!\U_CPU|U_datapath|U_ADDRESS_MUX|Mux6~0_combout\ & 
-- (\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[9]~18_combout\)))) # (!\U_CPU|U_controller|WideOr13~combout\ & (((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[9]~18_combout\,
	datab => \U_CPU|U_controller|WideOr13~combout\,
	datac => \U_CPU|U_datapath|U_SPH|output\(1),
	datad => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux6~0_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux6~1_combout\);

-- Location: FF_X23_Y19_N5
\U_CPU|U_datapath|U_ADDRH|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|ADDRH_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ADDRH|output\(0));

-- Location: LCCOMB_X23_Y19_N6
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux7~0_combout\ = (\U_CPU|U_controller|WideOr14~combout\ & (\U_CPU|U_controller|WideOr13~combout\)) # (!\U_CPU|U_controller|WideOr14~combout\ & ((\U_CPU|U_controller|WideOr13~combout\ & 
-- ((\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[8]~16_combout\))) # (!\U_CPU|U_controller|WideOr13~combout\ & (\U_CPU|U_datapath|U_PC_ADDER|output[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr14~combout\,
	datab => \U_CPU|U_controller|WideOr13~combout\,
	datac => \U_CPU|U_datapath|U_PC_ADDER|output[8]~16_combout\,
	datad => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[8]~16_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y19_N4
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux7~1_combout\ = (\U_CPU|U_controller|WideOr14~combout\ & ((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux7~0_combout\ & (\U_CPU|U_datapath|U_SPH|output\(0))) # (!\U_CPU|U_datapath|U_ADDRESS_MUX|Mux7~0_combout\ & 
-- ((\U_CPU|U_datapath|U_ADDRH|output\(0)))))) # (!\U_CPU|U_controller|WideOr14~combout\ & (((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr14~combout\,
	datab => \U_CPU|U_datapath|U_SPH|output\(0),
	datac => \U_CPU|U_datapath|U_ADDRH|output\(0),
	datad => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux7~0_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux7~1_combout\);

-- Location: LCCOMB_X22_Y21_N18
\U_DECODER_SMALL8|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_DECODER_SMALL8|Equal0~1_combout\ = (\U_CPU|U_datapath|U_ADDRESS_MUX|Mux5~1_combout\ & (\U_CPU|U_datapath|U_ADDRESS_MUX|Mux8~1_combout\ & (\U_CPU|U_datapath|U_ADDRESS_MUX|Mux6~1_combout\ & \U_CPU|U_datapath|U_ADDRESS_MUX|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux5~1_combout\,
	datab => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux8~1_combout\,
	datac => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux6~1_combout\,
	datad => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux7~1_combout\,
	combout => \U_DECODER_SMALL8|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y21_N2
\U_DECODER_SMALL8|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_DECODER_SMALL8|Equal1~0_combout\ = (\U_CPU|U_datapath|U_ADDRESS_MUX|Mux15~1_combout\ & (\U_DECODER_SMALL8|Equal0~3_combout\ & (\U_DECODER_SMALL8|Equal0~0_combout\ & \U_DECODER_SMALL8|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux15~1_combout\,
	datab => \U_DECODER_SMALL8|Equal0~3_combout\,
	datac => \U_DECODER_SMALL8|Equal0~0_combout\,
	datad => \U_DECODER_SMALL8|Equal0~1_combout\,
	combout => \U_DECODER_SMALL8|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y21_N4
\U_DECODER_SMALL8|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_DECODER_SMALL8|Equal0~4_combout\ = (!\U_CPU|U_datapath|U_ADDRESS_MUX|Mux15~1_combout\ & (\U_DECODER_SMALL8|Equal0~1_combout\ & (\U_DECODER_SMALL8|Equal0~3_combout\ & \U_DECODER_SMALL8|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux15~1_combout\,
	datab => \U_DECODER_SMALL8|Equal0~1_combout\,
	datac => \U_DECODER_SMALL8|Equal0~3_combout\,
	datad => \U_DECODER_SMALL8|Equal0~0_combout\,
	combout => \U_DECODER_SMALL8|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y21_N26
\U_DECODER_SMALL8|ram_read_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_DECODER_SMALL8|ram_read_en~0_combout\ = ((\U_DECODER_SMALL8|Equal1~0_combout\) # ((\U_DECODER_SMALL8|Equal0~4_combout\) # (\U_CPU|U_controller|state.STAA_3~q\))) # (!\U_CPU|U_controller|WideOr15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr15~0_combout\,
	datab => \U_DECODER_SMALL8|Equal1~0_combout\,
	datac => \U_DECODER_SMALL8|Equal0~4_combout\,
	datad => \U_CPU|U_controller|state.STAA_3~q\,
	combout => \U_DECODER_SMALL8|ram_read_en~0_combout\);

-- Location: LCCOMB_X23_Y21_N24
\U_DECODER_SMALL8|INPORT_TRI_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_DECODER_SMALL8|INPORT_TRI_en~0_combout\ = (\U_CPU|U_controller|WideOr15~0_combout\ & (!\U_CPU|U_controller|state.STAA_3~q\ & ((\U_DECODER_SMALL8|Equal0~4_combout\) # (\U_DECODER_SMALL8|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr15~0_combout\,
	datab => \U_CPU|U_controller|state.STAA_3~q\,
	datac => \U_DECODER_SMALL8|Equal0~4_combout\,
	datad => \U_DECODER_SMALL8|Equal1~0_combout\,
	combout => \U_DECODER_SMALL8|INPORT_TRI_en~0_combout\);

-- Location: IOIBUF_X0_Y25_N15
\input_switches[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_switches(4),
	o => \input_switches[4]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\input_switch_sel~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_switch_sel,
	o => \input_switch_sel~input_o\);

-- Location: FF_X26_Y21_N25
\U_REG_INPORT1|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_switches[4]~input_o\,
	sload => VCC,
	ena => \input_switch_sel~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_INPORT1|output\(4));

-- Location: LCCOMB_X23_Y21_N14
\U_INPORT_MUX2x1|output[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_INPORT_MUX2x1|output[3]~0_combout\ = (\U_CPU|U_controller|WideOr15~0_combout\ & (!\U_CPU|U_controller|state.STAA_3~q\ & (!\U_DECODER_SMALL8|Equal0~4_combout\ & \U_DECODER_SMALL8|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr15~0_combout\,
	datab => \U_CPU|U_controller|state.STAA_3~q\,
	datac => \U_DECODER_SMALL8|Equal0~4_combout\,
	datad => \U_DECODER_SMALL8|Equal1~0_combout\,
	combout => \U_INPORT_MUX2x1|output[3]~0_combout\);

-- Location: LCCOMB_X26_Y21_N24
\U_INPORT_TO_DATABUS|output[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_INPORT_TO_DATABUS|output[4]~4_combout\ = ((\U_INPORT_MUX2x1|output[3]~0_combout\ & ((\U_REG_INPORT1|output\(4)))) # (!\U_INPORT_MUX2x1|output[3]~0_combout\ & (\U_REG_INPORT0|output\(4)))) # (!\U_DECODER_SMALL8|INPORT_TRI_en~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_INPORT0|output\(4),
	datab => \U_DECODER_SMALL8|INPORT_TRI_en~0_combout\,
	datac => \U_REG_INPORT1|output\(4),
	datad => \U_INPORT_MUX2x1|output[3]~0_combout\,
	combout => \U_INPORT_TO_DATABUS|output[4]~4_combout\);

-- Location: LCCOMB_X26_Y21_N0
\U_RAM_OUTPUT|output[4]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_RAM_OUTPUT|output[4]~28_combout\ = (\U_RAM_OUTPUT|output[4]~36_combout\ & (\U_INPORT_TO_DATABUS|output[4]~4_combout\ & ((\U_RAM|altsyncram_component|auto_generated|q_a\(4)) # (\U_DECODER_SMALL8|ram_read_en~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|altsyncram_component|auto_generated|q_a\(4),
	datab => \U_RAM_OUTPUT|output[4]~36_combout\,
	datac => \U_DECODER_SMALL8|ram_read_en~0_combout\,
	datad => \U_INPORT_TO_DATABUS|output[4]~4_combout\,
	combout => \U_RAM_OUTPUT|output[4]~28_combout\);

-- Location: LCCOMB_X17_Y20_N4
\U_CPU|U_controller|tri_enable[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|tri_enable[5]~0_combout\ = (!\U_CPU|U_controller|state.STAA_3~q\ & !\U_CPU|U_controller|state.STAR_D~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.STAA_3~q\,
	datac => \U_CPU|U_controller|state.STAR_D~q\,
	combout => \U_CPU|U_controller|tri_enable[5]~0_combout\);

-- Location: FF_X23_Y20_N11
\U_CPU|U_datapath|U_BRANCH_TARGET_L|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_X_ADDER|Add0~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|Selector6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(4));

-- Location: LCCOMB_X20_Y20_N8
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[4]~14_combout\ = (\U_CPU|U_datapath|U_A|output\(4) & (((\U_CPU|U_controller|WideOr11~4_combout\) # (\U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(4))))) # (!\U_CPU|U_datapath|U_A|output\(4) & 
-- (\U_CPU|U_controller|tri_enable[5]~0_combout\ & ((\U_CPU|U_controller|WideOr11~4_combout\) # (\U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_A|output\(4),
	datab => \U_CPU|U_controller|tri_enable[5]~0_combout\,
	datac => \U_CPU|U_controller|WideOr11~4_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(4),
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[4]~14_combout\);

-- Location: FF_X20_Y20_N15
\U_CPU|U_datapath|U_BRANCH_TARGET_H|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_X_ADDER|Add0~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|WideOr30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(4));

-- Location: LCCOMB_X20_Y20_N14
\U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[4]~3_combout\ = (\U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(4)) # ((!\U_CPU|U_controller|state.Call_9~q\ & !\U_CPU|U_controller|state.RET_6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.Call_9~q\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(4),
	datad => \U_CPU|U_controller|state.RET_6~q\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[4]~3_combout\);

-- Location: LCCOMB_X22_Y23_N20
\U_CPU|U_datapath|U_PC_LD_MUX|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_LD_MUX|Mux3~0_combout\ = (\U_CPU|U_controller|WideOr11~combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(4))) # (!\U_CPU|U_controller|WideOr11~combout\ & ((\U_CPU|U_datapath|U_PC_ADDER|output[12]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr11~combout\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(4),
	datad => \U_CPU|U_datapath|U_PC_ADDER|output[12]~24_combout\,
	combout => \U_CPU|U_datapath|U_PC_LD_MUX|Mux3~0_combout\);

-- Location: FF_X22_Y23_N21
\U_CPU|U_datapath|U_PCH|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_PC_LD_MUX|Mux3~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_PCH|output\(4));

-- Location: LCCOMB_X22_Y23_N16
\U_CPU|U_datapath|U_BRANCH_TARGET_H|output[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_H|output[0]~feeder_combout\ = \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5_combout\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output[0]~feeder_combout\);

-- Location: FF_X22_Y23_N17
\U_CPU|U_datapath|U_BRANCH_TARGET_H|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(0));

-- Location: LCCOMB_X22_Y23_N4
\U_CPU|U_datapath|U_PC_LD_MUX|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_LD_MUX|Mux7~0_combout\ = (\U_CPU|U_controller|WideOr11~combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(0))) # (!\U_CPU|U_controller|WideOr11~combout\ & ((\U_CPU|U_datapath|U_PC_ADDER|output[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr11~combout\,
	datab => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(0),
	datad => \U_CPU|U_datapath|U_PC_ADDER|output[8]~16_combout\,
	combout => \U_CPU|U_datapath|U_PC_LD_MUX|Mux7~0_combout\);

-- Location: FF_X22_Y23_N5
\U_CPU|U_datapath|U_PCH|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_PC_LD_MUX|Mux7~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_PCH|output\(0));

-- Location: FF_X22_Y20_N11
\U_CPU|U_datapath|U_BRANCH_TARGET_L|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_X_ADDER|Add0~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|Selector6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(5));

-- Location: LCCOMB_X21_Y19_N14
\U_CPU|U_datapath|U_PC_LD_MUX|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_LD_MUX|Mux10~0_combout\ = (\U_CPU|U_controller|WideOr11~combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(5))) # (!\U_CPU|U_controller|WideOr11~combout\ & ((\U_CPU|U_datapath|U_PC_ADDER|output[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr11~combout\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(5),
	datad => \U_CPU|U_datapath|U_PC_ADDER|output[5]~10_combout\,
	combout => \U_CPU|U_datapath|U_PC_LD_MUX|Mux10~0_combout\);

-- Location: FF_X21_Y19_N15
\U_CPU|U_datapath|U_PCL|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_PC_LD_MUX|Mux10~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_PCL|output\(5));

-- Location: LCCOMB_X21_Y19_N16
\U_CPU|U_datapath|U_PC_LD_MUX|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_LD_MUX|Mux11~0_combout\ = (\U_CPU|U_controller|WideOr11~combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(4))) # (!\U_CPU|U_controller|WideOr11~combout\ & ((\U_CPU|U_datapath|U_PC_ADDER|output[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr11~combout\,
	datab => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(4),
	datad => \U_CPU|U_datapath|U_PC_ADDER|output[4]~8_combout\,
	combout => \U_CPU|U_datapath|U_PC_LD_MUX|Mux11~0_combout\);

-- Location: FF_X21_Y19_N17
\U_CPU|U_datapath|U_PCL|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_PC_LD_MUX|Mux11~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_PCL|output\(4));

-- Location: LCCOMB_X21_Y19_N26
\U_CPU|U_datapath|U_PC_LD_MUX|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_PC_LD_MUX|Mux12~0_combout\ = (\U_CPU|U_controller|WideOr11~combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(3))) # (!\U_CPU|U_controller|WideOr11~combout\ & ((\U_CPU|U_datapath|U_PC_ADDER|output[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(3),
	datac => \U_CPU|U_controller|WideOr11~combout\,
	datad => \U_CPU|U_datapath|U_PC_ADDER|output[3]~6_combout\,
	combout => \U_CPU|U_datapath|U_PC_LD_MUX|Mux12~0_combout\);

-- Location: FF_X21_Y19_N27
\U_CPU|U_datapath|U_PCL|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_PC_LD_MUX|Mux12~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_PCL|output\(3));

-- Location: LCCOMB_X20_Y19_N2
\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[1]~0_combout\ = \U_CPU|U_datapath|U_PCL|output\(1) $ (VCC)
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[1]~1\ = CARRY(\U_CPU|U_datapath|U_PCL|output\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_PCL|output\(1),
	datad => VCC,
	combout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[1]~0_combout\,
	cout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[1]~1\);

-- Location: LCCOMB_X20_Y19_N4
\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[2]~2_combout\ = (\U_CPU|U_datapath|U_PCL|output\(2) & (!\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[1]~1\)) # (!\U_CPU|U_datapath|U_PCL|output\(2) & ((\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[1]~1\) 
-- # (GND)))
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[2]~3\ = CARRY((!\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[1]~1\) # (!\U_CPU|U_datapath|U_PCL|output\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_PCL|output\(2),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[1]~1\,
	combout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[2]~2_combout\,
	cout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[2]~3\);

-- Location: LCCOMB_X20_Y19_N6
\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[3]~4_combout\ = (\U_CPU|U_datapath|U_PCL|output\(3) & (\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[2]~3\ $ (GND))) # (!\U_CPU|U_datapath|U_PCL|output\(3) & 
-- (!\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[2]~3\ & VCC))
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[3]~5\ = CARRY((\U_CPU|U_datapath|U_PCL|output\(3) & !\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_PCL|output\(3),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[2]~3\,
	combout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[3]~4_combout\,
	cout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[3]~5\);

-- Location: LCCOMB_X20_Y19_N8
\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[4]~6_combout\ = (\U_CPU|U_datapath|U_PCL|output\(4) & (!\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[3]~5\)) # (!\U_CPU|U_datapath|U_PCL|output\(4) & ((\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[3]~5\) 
-- # (GND)))
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[4]~7\ = CARRY((!\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[3]~5\) # (!\U_CPU|U_datapath|U_PCL|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_PCL|output\(4),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[3]~5\,
	combout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[4]~6_combout\,
	cout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[4]~7\);

-- Location: LCCOMB_X20_Y19_N14
\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[7]~12_combout\ = (\U_CPU|U_datapath|U_PCL|output\(7) & (\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[6]~11\ $ (GND))) # (!\U_CPU|U_datapath|U_PCL|output\(7) & 
-- (!\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[6]~11\ & VCC))
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[7]~13\ = CARRY((\U_CPU|U_datapath|U_PCL|output\(7) & !\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_PCL|output\(7),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[6]~11\,
	combout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[7]~12_combout\,
	cout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[7]~13\);

-- Location: LCCOMB_X20_Y19_N18
\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[9]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[9]~16_combout\ = (\U_CPU|U_datapath|U_PCH|output\(1) & (\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[8]~15\ $ (GND))) # (!\U_CPU|U_datapath|U_PCH|output\(1) & 
-- (!\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[8]~15\ & VCC))
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[9]~17\ = CARRY((\U_CPU|U_datapath|U_PCH|output\(1) & !\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[8]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_PCH|output\(1),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[8]~15\,
	combout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[9]~16_combout\,
	cout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[9]~17\);

-- Location: LCCOMB_X20_Y19_N20
\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[10]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[10]~18_combout\ = (\U_CPU|U_datapath|U_PCH|output\(2) & (!\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[9]~17\)) # (!\U_CPU|U_datapath|U_PCH|output\(2) & 
-- ((\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[9]~17\) # (GND)))
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[10]~19\ = CARRY((!\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[9]~17\) # (!\U_CPU|U_datapath|U_PCH|output\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_PCH|output\(2),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[9]~17\,
	combout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[10]~18_combout\,
	cout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[10]~19\);

-- Location: LCCOMB_X20_Y19_N22
\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[11]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[11]~20_combout\ = (\U_CPU|U_datapath|U_PCH|output\(3) & (\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[10]~19\ $ (GND))) # (!\U_CPU|U_datapath|U_PCH|output\(3) & 
-- (!\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[10]~19\ & VCC))
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[11]~21\ = CARRY((\U_CPU|U_datapath|U_PCH|output\(3) & !\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[10]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_PCH|output\(3),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[10]~19\,
	combout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[11]~20_combout\,
	cout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[11]~21\);

-- Location: LCCOMB_X20_Y19_N24
\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[12]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[12]~22_combout\ = (\U_CPU|U_datapath|U_PCH|output\(4) & (!\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[11]~21\)) # (!\U_CPU|U_datapath|U_PCH|output\(4) & 
-- ((\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[11]~21\) # (GND)))
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[12]~23\ = CARRY((!\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[11]~21\) # (!\U_CPU|U_datapath|U_PCH|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_PCH|output\(4),
	datad => VCC,
	cin => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[11]~21\,
	combout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[12]~22_combout\,
	cout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[12]~23\);

-- Location: LCCOMB_X23_Y20_N20
\U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[4]~19_combout\ = (\U_CPU|U_controller|state.Call_2~q\ & (((\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[4]~6_combout\)))) # (!\U_CPU|U_controller|state.Call_2~q\ & 
-- (((\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[12]~22_combout\)) # (!\U_CPU|U_controller|state.Call_4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.Call_4~q\,
	datab => \U_CPU|U_controller|state.Call_2~q\,
	datac => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[12]~22_combout\,
	datad => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[4]~6_combout\,
	combout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[4]~19_combout\);

-- Location: LCCOMB_X23_Y20_N28
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[4]~15_combout\ = (\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[4]~13_combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[4]~14_combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[4]~3_combout\ 
-- & \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[4]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[4]~13_combout\,
	datab => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[4]~14_combout\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[4]~3_combout\,
	datad => \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[4]~19_combout\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[4]~15_combout\);

-- Location: LCCOMB_X23_Y20_N10
\U_CPU|U_datapath|U_X_ADDER|Add0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~35_combout\ = ((\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[4]~15_combout\ & ((\U_RAM_OUTPUT|output[4]~28_combout\) # (!\U_CPU|U_controller|Selector5~2_combout\)))) # 
-- (!\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~4_combout\,
	datab => \U_RAM_OUTPUT|output[4]~28_combout\,
	datac => \U_CPU|U_controller|Selector5~2_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[4]~15_combout\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~35_combout\);

-- Location: FF_X19_Y20_N7
\U_CPU|U_datapath|U_IR|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_X_ADDER|Add0~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|state.OPCODE_FETCH_3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_IR|output\(4));

-- Location: LCCOMB_X19_Y20_N6
\U_CPU|U_controller|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal3~1_combout\ = (\U_CPU|U_datapath|U_IR|output\(7) & (\U_CPU|U_datapath|U_IR|output\(4) & \U_CPU|U_datapath|U_IR|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_IR|output\(7),
	datac => \U_CPU|U_datapath|U_IR|output\(4),
	datad => \U_CPU|U_datapath|U_IR|output\(5),
	combout => \U_CPU|U_controller|Equal3~1_combout\);

-- Location: LCCOMB_X20_Y21_N26
\U_CPU|U_controller|Equal26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal26~0_combout\ = (\U_CPU|U_datapath|U_IR|output\(6) & (\U_CPU|U_controller|Equal3~1_combout\ & (\U_CPU|U_controller|Equal27~4_combout\ & \U_CPU|U_controller|Equal18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_IR|output\(6),
	datab => \U_CPU|U_controller|Equal3~1_combout\,
	datac => \U_CPU|U_controller|Equal27~4_combout\,
	datad => \U_CPU|U_controller|Equal18~0_combout\,
	combout => \U_CPU|U_controller|Equal26~0_combout\);

-- Location: LCCOMB_X17_Y20_N16
\U_CPU|U_controller|next_state.CLRC~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.CLRC~0_combout\ = (\U_CPU|U_controller|Equal26~0_combout\ & \U_CPU|U_controller|state.DECODE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_controller|Equal26~0_combout\,
	datac => \U_CPU|U_controller|state.DECODE~q\,
	combout => \U_CPU|U_controller|next_state.CLRC~0_combout\);

-- Location: FF_X17_Y20_N17
\U_CPU|U_controller|state.CLRC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.CLRC~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.CLRC~q\);

-- Location: LCCOMB_X17_Y20_N28
\U_CPU|U_controller|next_state.SETC~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.SETC~0_combout\ = (!\U_CPU|U_datapath|U_IR|output\(2) & (\U_CPU|U_controller|Equal25~0_combout\ & (\U_CPU|U_controller|state.DECODE~q\ & \U_CPU|U_controller|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_IR|output\(2),
	datab => \U_CPU|U_controller|Equal25~0_combout\,
	datac => \U_CPU|U_controller|state.DECODE~q\,
	datad => \U_CPU|U_controller|Equal3~1_combout\,
	combout => \U_CPU|U_controller|next_state.SETC~0_combout\);

-- Location: FF_X17_Y20_N29
\U_CPU|U_controller|state.SETC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.SETC~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.SETC~q\);

-- Location: LCCOMB_X16_Y20_N12
\U_CPU|U_controller|Equal13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal13~1_combout\ = (\U_CPU|U_datapath|U_IR|output\(1) & (!\U_CPU|U_datapath|U_IR|output\(2) & \U_CPU|U_controller|Equal13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_IR|output\(1),
	datab => \U_CPU|U_datapath|U_IR|output\(2),
	datad => \U_CPU|U_controller|Equal13~0_combout\,
	combout => \U_CPU|U_controller|Equal13~1_combout\);

-- Location: LCCOMB_X17_Y20_N6
\U_CPU|U_controller|next_state.RORC~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.RORC~0_combout\ = (\U_CPU|U_datapath|U_IR|output\(5) & (\U_CPU|U_controller|state.DECODE~q\ & (\U_CPU|U_controller|Equal5~0_combout\ & \U_CPU|U_controller|Equal13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_IR|output\(5),
	datab => \U_CPU|U_controller|state.DECODE~q\,
	datac => \U_CPU|U_controller|Equal5~0_combout\,
	datad => \U_CPU|U_controller|Equal13~1_combout\,
	combout => \U_CPU|U_controller|next_state.RORC~0_combout\);

-- Location: FF_X17_Y20_N7
\U_CPU|U_controller|state.RORC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.RORC~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.RORC~q\);

-- Location: LCCOMB_X17_Y21_N2
\U_CPU|U_controller|WideOr24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr24~combout\ = (!\U_CPU|U_controller|state.DECA~q\ & (!\U_CPU|U_controller|state.CLRC~q\ & (!\U_CPU|U_controller|state.SETC~q\ & !\U_CPU|U_controller|state.RORC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.DECA~q\,
	datab => \U_CPU|U_controller|state.CLRC~q\,
	datac => \U_CPU|U_controller|state.SETC~q\,
	datad => \U_CPU|U_controller|state.RORC~q\,
	combout => \U_CPU|U_controller|WideOr24~combout\);

-- Location: LCCOMB_X20_Y18_N28
\U_CPU|U_datapath|U_ALU|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux5~0_combout\ = (\U_CPU|U_controller|WideOr26~0_combout\ & (\U_CPU|U_controller|WideOr24~combout\)) # (!\U_CPU|U_controller|WideOr26~0_combout\ & ((!\U_CPU|U_controller|WideOr25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr26~0_combout\,
	datab => \U_CPU|U_controller|WideOr24~combout\,
	datad => \U_CPU|U_controller|WideOr25~0_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y22_N4
\U_CPU|U_datapath|U_ALU|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux4~0_combout\ = (!\U_CPU|U_datapath|U_ALU|Mux2~0_combout\ & ((\U_CPU|U_controller|WideOr27~combout\ & ((\U_CPU|U_datapath|U_A|output\(4)))) # (!\U_CPU|U_controller|WideOr27~combout\ & (\U_CPU|U_datapath|U_A|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr27~combout\,
	datab => \U_CPU|U_datapath|U_A|output\(2),
	datac => \U_CPU|U_datapath|U_A|output\(4),
	datad => \U_CPU|U_datapath|U_ALU|Mux2~0_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y22_N0
\U_CPU|U_datapath|U_ALU|output_sig~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|output_sig~1_combout\ = \U_CPU|U_datapath|U_A|output\(3) $ (\U_CPU|U_datapath|U_D|output\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CPU|U_datapath|U_A|output\(3),
	datad => \U_CPU|U_datapath|U_D|output\(3),
	combout => \U_CPU|U_datapath|U_ALU|output_sig~1_combout\);

-- Location: LCCOMB_X16_Y22_N0
\U_CPU|U_datapath|U_ALU|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux4~1_combout\ = (\U_CPU|U_datapath|U_D|output\(3) & ((\U_CPU|U_controller|WideOr25~0_combout\) # (\U_CPU|U_datapath|U_A|output\(3)))) # (!\U_CPU|U_datapath|U_D|output\(3) & (\U_CPU|U_controller|WideOr25~0_combout\ & 
-- \U_CPU|U_datapath|U_A|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_D|output\(3),
	datac => \U_CPU|U_controller|WideOr25~0_combout\,
	datad => \U_CPU|U_datapath|U_A|output\(3),
	combout => \U_CPU|U_datapath|U_ALU|Mux4~1_combout\);

-- Location: LCCOMB_X20_Y22_N2
\U_CPU|U_datapath|U_ALU|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux4~2_combout\ = (\U_CPU|U_datapath|U_ALU|Mux2~5_combout\ & (\U_CPU|U_datapath|U_ALU|Mux2~4_combout\)) # (!\U_CPU|U_datapath|U_ALU|Mux2~5_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux2~4_combout\ & 
-- ((\U_CPU|U_datapath|U_ALU|Add1~6_combout\))) # (!\U_CPU|U_datapath|U_ALU|Mux2~4_combout\ & (\U_CPU|U_datapath|U_ALU|Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Mux2~5_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Mux2~4_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Add4~6_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Add1~6_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux4~2_combout\);

-- Location: LCCOMB_X20_Y22_N4
\U_CPU|U_datapath|U_ALU|Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux4~3_combout\ = (\U_CPU|U_datapath|U_ALU|Mux2~5_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux4~2_combout\ & (\U_CPU|U_datapath|U_ALU|Mux4~1_combout\)) # (!\U_CPU|U_datapath|U_ALU|Mux4~2_combout\ & 
-- ((\U_CPU|U_datapath|U_ALU|Add5~6_combout\))))) # (!\U_CPU|U_datapath|U_ALU|Mux2~5_combout\ & (((\U_CPU|U_datapath|U_ALU|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Mux2~5_combout\,
	datab => \U_CPU|U_datapath|U_ALU|Mux4~1_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Add5~6_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux4~2_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux4~3_combout\);

-- Location: LCCOMB_X22_Y22_N28
\U_CPU|U_datapath|U_ALU|Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux4~4_combout\ = (\U_CPU|U_controller|WideOr25~0_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux4~1_combout\) # ((\U_CPU|U_datapath|U_ALU|Mux2~2_combout\)))) # (!\U_CPU|U_controller|WideOr25~0_combout\ & 
-- (((\U_CPU|U_datapath|U_ALU|Mux4~3_combout\ & !\U_CPU|U_datapath|U_ALU|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Mux4~1_combout\,
	datab => \U_CPU|U_controller|WideOr25~0_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux4~3_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux2~2_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux4~4_combout\);

-- Location: LCCOMB_X22_Y22_N26
\U_CPU|U_datapath|U_ALU|Mux4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux4~5_combout\ = (\U_CPU|U_datapath|U_ALU|Mux2~2_combout\ & ((\U_CPU|U_datapath|U_ALU|Mux4~4_combout\ & (\U_CPU|U_datapath|U_ALU|output_sig~1_combout\)) # (!\U_CPU|U_datapath|U_ALU|Mux4~4_combout\ & 
-- ((\U_CPU|U_datapath|U_ALU|Add2~8_combout\))))) # (!\U_CPU|U_datapath|U_ALU|Mux2~2_combout\ & (((\U_CPU|U_datapath|U_ALU|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU|Mux2~2_combout\,
	datab => \U_CPU|U_datapath|U_ALU|output_sig~1_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Add2~8_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux4~4_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux4~5_combout\);

-- Location: LCCOMB_X19_Y22_N30
\U_CPU|U_datapath|U_ALU|Mux4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ALU|Mux4~6_combout\ = (\U_CPU|U_datapath|U_ALU|Mux4~0_combout\) # ((\U_CPU|U_datapath|U_ALU|Mux5~0_combout\ & \U_CPU|U_datapath|U_ALU|Mux4~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_ALU|Mux5~0_combout\,
	datac => \U_CPU|U_datapath|U_ALU|Mux4~0_combout\,
	datad => \U_CPU|U_datapath|U_ALU|Mux4~5_combout\,
	combout => \U_CPU|U_datapath|U_ALU|Mux4~6_combout\);

-- Location: LCCOMB_X16_Y20_N28
\U_CPU|U_controller|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr4~combout\ = (\U_CPU|U_controller|state.RORC~q\) # (!\U_CPU|U_controller|WideOr4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CPU|U_controller|WideOr4~1_combout\,
	datad => \U_CPU|U_controller|state.RORC~q\,
	combout => \U_CPU|U_controller|WideOr4~combout\);

-- Location: FF_X19_Y22_N31
\U_CPU|U_datapath|U_ALU_REG|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_ALU|Mux4~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ALU_REG|output\(3));

-- Location: FF_X16_Y20_N29
\U_CPU|U_controller|state.LOAD_ALU_TO_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|WideOr4~combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.LOAD_ALU_TO_A~q\);

-- Location: LCCOMB_X16_Y20_N10
\U_CPU|U_controller|next_state.LDAD~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.LDAD~0_combout\ = (\U_CPU|U_controller|state.DECODE~q\ & (\U_CPU|U_controller|Equal0~0_combout\ & \U_CPU|U_controller|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_controller|state.DECODE~q\,
	datac => \U_CPU|U_controller|Equal0~0_combout\,
	datad => \U_CPU|U_controller|Equal2~0_combout\,
	combout => \U_CPU|U_controller|next_state.LDAD~0_combout\);

-- Location: FF_X16_Y20_N11
\U_CPU|U_controller|state.LDAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.LDAD~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.LDAD~q\);

-- Location: LCCOMB_X21_Y21_N16
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~16_combout\ = (\U_CPU|U_datapath|U_D|output\(3) & ((\U_CPU|U_datapath|U_ALU_REG|output\(3)) # ((!\U_CPU|U_controller|state.LOAD_ALU_TO_A~q\)))) # (!\U_CPU|U_datapath|U_D|output\(3) & 
-- (!\U_CPU|U_controller|state.LDAD~q\ & ((\U_CPU|U_datapath|U_ALU_REG|output\(3)) # (!\U_CPU|U_controller|state.LOAD_ALU_TO_A~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_D|output\(3),
	datab => \U_CPU|U_datapath|U_ALU_REG|output\(3),
	datac => \U_CPU|U_controller|state.LOAD_ALU_TO_A~q\,
	datad => \U_CPU|U_controller|state.LDAD~q\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~16_combout\);

-- Location: LCCOMB_X21_Y21_N14
\U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[3]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[3]~20_combout\ = (\U_CPU|U_controller|state.Call_2~q\ & (((\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[3]~4_combout\)))) # (!\U_CPU|U_controller|state.Call_2~q\ & 
-- (((\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[11]~20_combout\)) # (!\U_CPU|U_controller|state.Call_4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.Call_4~q\,
	datab => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[11]~20_combout\,
	datac => \U_CPU|U_controller|state.Call_2~q\,
	datad => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[3]~4_combout\,
	combout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[3]~20_combout\);

-- Location: FF_X22_Y20_N21
\U_CPU|U_datapath|U_BRANCH_TARGET_L|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|Selector6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(3));

-- Location: LCCOMB_X22_Y20_N20
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~17_combout\ = (\U_CPU|U_datapath|U_A|output\(3) & ((\U_CPU|U_controller|WideOr11~4_combout\) # ((\U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(3))))) # (!\U_CPU|U_datapath|U_A|output\(3) & 
-- (\U_CPU|U_controller|tri_enable[5]~0_combout\ & ((\U_CPU|U_controller|WideOr11~4_combout\) # (\U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_A|output\(3),
	datab => \U_CPU|U_controller|WideOr11~4_combout\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(3),
	datad => \U_CPU|U_controller|tri_enable[5]~0_combout\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~17_combout\);

-- Location: LCCOMB_X21_Y21_N2
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~18_combout\ = (\U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[3]~4_combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~16_combout\ & 
-- (\U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[3]~20_combout\ & \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[3]~4_combout\,
	datab => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~16_combout\,
	datac => \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[3]~20_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~17_combout\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~18_combout\);

-- Location: LCCOMB_X21_Y21_N12
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~19_combout\ = ((\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~18_combout\ & ((\U_RAM_OUTPUT|output[3]~27_combout\) # (!\U_CPU|U_controller|Selector5~2_combout\)))) # 
-- (!\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Selector5~2_combout\,
	datab => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~4_combout\,
	datac => \U_RAM_OUTPUT|output[3]~27_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~18_combout\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~19_combout\);

-- Location: FF_X20_Y21_N1
\U_CPU|U_datapath|U_IR|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[3]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|state.OPCODE_FETCH_3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_IR|output\(3));

-- Location: LCCOMB_X20_Y21_N14
\U_CPU|U_controller|Equal25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal25~0_combout\ = (\U_CPU|U_datapath|U_IR|output\(6) & (\U_CPU|U_datapath|U_IR|output\(3) & (!\U_CPU|U_datapath|U_IR|output\(1) & !\U_CPU|U_datapath|U_IR|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_IR|output\(6),
	datab => \U_CPU|U_datapath|U_IR|output\(3),
	datac => \U_CPU|U_datapath|U_IR|output\(1),
	datad => \U_CPU|U_datapath|U_IR|output\(0),
	combout => \U_CPU|U_controller|Equal25~0_combout\);

-- Location: LCCOMB_X16_Y20_N8
\U_CPU|U_controller|Selector0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~21_combout\ = ((!\U_CPU|U_controller|Equal3~1_combout\ & ((\U_CPU|U_datapath|U_IR|output\(2)) # (!\U_CPU|U_controller|Equal28~0_combout\)))) # (!\U_CPU|U_controller|Equal25~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal28~0_combout\,
	datab => \U_CPU|U_datapath|U_IR|output\(2),
	datac => \U_CPU|U_controller|Equal25~0_combout\,
	datad => \U_CPU|U_controller|Equal3~1_combout\,
	combout => \U_CPU|U_controller|Selector0~21_combout\);

-- Location: LCCOMB_X16_Y20_N2
\U_CPU|U_controller|Selector0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~22_combout\ = (!\U_CPU|U_controller|Equal1~0_combout\ & (((!\U_CPU|U_controller|Equal13~0_combout\) # (!\U_CPU|U_controller|Equal3~0_combout\)) # (!\U_CPU|U_datapath|U_IR|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal1~0_combout\,
	datab => \U_CPU|U_datapath|U_IR|output\(1),
	datac => \U_CPU|U_controller|Equal3~0_combout\,
	datad => \U_CPU|U_controller|Equal13~0_combout\,
	combout => \U_CPU|U_controller|Selector0~22_combout\);

-- Location: LCCOMB_X16_Y20_N20
\U_CPU|U_controller|Selector0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~23_combout\ = (!\U_CPU|U_controller|Equal29~0_combout\ & (\U_CPU|U_controller|Selector0~22_combout\ & ((!\U_CPU|U_controller|Equal2~0_combout\) # (!\U_CPU|U_controller|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal29~0_combout\,
	datab => \U_CPU|U_controller|Selector0~22_combout\,
	datac => \U_CPU|U_controller|Equal0~0_combout\,
	datad => \U_CPU|U_controller|Equal2~0_combout\,
	combout => \U_CPU|U_controller|Selector0~23_combout\);

-- Location: LCCOMB_X19_Y20_N22
\U_CPU|U_controller|Selector0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~27_combout\ = ((\U_CPU|U_datapath|U_IR|output\(7)) # ((\U_CPU|U_datapath|U_IR|output\(5)) # (!\U_CPU|U_datapath|U_IR|output\(6)))) # (!\U_CPU|U_controller|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal2~0_combout\,
	datab => \U_CPU|U_datapath|U_IR|output\(7),
	datac => \U_CPU|U_datapath|U_IR|output\(6),
	datad => \U_CPU|U_datapath|U_IR|output\(5),
	combout => \U_CPU|U_controller|Selector0~27_combout\);

-- Location: LCCOMB_X15_Y18_N18
\U_CPU|U_controller|Selector0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~24_combout\ = (\U_CPU|U_controller|Selector0~20_combout\ & (\U_CPU|U_controller|Selector0~21_combout\ & (\U_CPU|U_controller|Selector0~23_combout\ & \U_CPU|U_controller|Selector0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Selector0~20_combout\,
	datab => \U_CPU|U_controller|Selector0~21_combout\,
	datac => \U_CPU|U_controller|Selector0~23_combout\,
	datad => \U_CPU|U_controller|Selector0~27_combout\,
	combout => \U_CPU|U_controller|Selector0~24_combout\);

-- Location: LCCOMB_X17_Y18_N22
\U_CPU|U_controller|Equal27~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal27~5_combout\ = (!\U_CPU|U_datapath|U_IR|output\(1) & (\U_CPU|U_controller|Equal18~0_combout\ & (\U_CPU|U_datapath|U_IR|output\(3) & \U_CPU|U_controller|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_IR|output\(1),
	datab => \U_CPU|U_controller|Equal18~0_combout\,
	datac => \U_CPU|U_datapath|U_IR|output\(3),
	datad => \U_CPU|U_controller|Equal0~0_combout\,
	combout => \U_CPU|U_controller|Equal27~5_combout\);

-- Location: LCCOMB_X17_Y18_N20
\U_CPU|U_controller|Selector0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~9_combout\ = (!\U_CPU|U_controller|Equal31~0_combout\ & (((!\U_CPU|U_datapath|U_IR|output\(1)) # (!\U_CPU|U_controller|Equal18~0_combout\)) # (!\U_CPU|U_controller|Equal15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal15~1_combout\,
	datab => \U_CPU|U_controller|Equal18~0_combout\,
	datac => \U_CPU|U_controller|Equal31~0_combout\,
	datad => \U_CPU|U_datapath|U_IR|output\(1),
	combout => \U_CPU|U_controller|Selector0~9_combout\);

-- Location: LCCOMB_X17_Y18_N14
\U_CPU|U_controller|Selector0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~10_combout\ = ((!\U_CPU|U_controller|Equal0~1_combout\ & ((!\U_CPU|U_controller|Equal24~0_combout\) # (!\U_CPU|U_datapath|U_IR|output\(3))))) # (!\U_CPU|U_controller|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal0~1_combout\,
	datab => \U_CPU|U_controller|Equal0~0_combout\,
	datac => \U_CPU|U_datapath|U_IR|output\(3),
	datad => \U_CPU|U_controller|Equal24~0_combout\,
	combout => \U_CPU|U_controller|Selector0~10_combout\);

-- Location: LCCOMB_X15_Y18_N14
\U_CPU|U_controller|Selector0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~12_combout\ = (\U_CPU|U_controller|Selector0~11_combout\ & (!\U_CPU|U_controller|Equal27~5_combout\ & (\U_CPU|U_controller|Selector0~9_combout\ & \U_CPU|U_controller|Selector0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Selector0~11_combout\,
	datab => \U_CPU|U_controller|Equal27~5_combout\,
	datac => \U_CPU|U_controller|Selector0~9_combout\,
	datad => \U_CPU|U_controller|Selector0~10_combout\,
	combout => \U_CPU|U_controller|Selector0~12_combout\);

-- Location: LCCOMB_X17_Y19_N18
\U_CPU|U_controller|WideOr19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr19~0_combout\ = (!\U_CPU|U_controller|state.LDAA_X_3~q\ & (!\U_CPU|U_controller|state.LOAD_ALU_TO_A~q\ & (!\U_CPU|U_controller|state.LDAA_4~q\ & !\U_CPU|U_controller|state.LDAD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.LDAA_X_3~q\,
	datab => \U_CPU|U_controller|state.LOAD_ALU_TO_A~q\,
	datac => \U_CPU|U_controller|state.LDAA_4~q\,
	datad => \U_CPU|U_controller|state.LDAD~q\,
	combout => \U_CPU|U_controller|WideOr19~0_combout\);

-- Location: FF_X16_Y18_N19
\U_CPU|U_controller|state.PC_ADD_ONE_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.PC_ADD_ONE_1~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.PC_ADD_ONE_2~q\);

-- Location: FF_X16_Y18_N25
\U_CPU|U_controller|state.PC_ADD_THREE_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.PC_ADD_THREE_1~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.PC_ADD_THREE_2~q\);

-- Location: LCCOMB_X16_Y18_N24
\U_CPU|U_controller|Selector0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~26_combout\ = (!\U_CPU|U_controller|state.PC_ADD_TWO_2~q\ & (!\U_CPU|U_controller|state.PC_ADD_ONE_2~q\ & (!\U_CPU|U_controller|state.PC_ADD_THREE_2~q\ & \U_CPU|U_controller|WideOr11~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.PC_ADD_TWO_2~q\,
	datab => \U_CPU|U_controller|state.PC_ADD_ONE_2~q\,
	datac => \U_CPU|U_controller|state.PC_ADD_THREE_2~q\,
	datad => \U_CPU|U_controller|WideOr11~6_combout\,
	combout => \U_CPU|U_controller|Selector0~26_combout\);

-- Location: LCCOMB_X17_Y20_N20
\U_CPU|U_controller|state.INIT~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|state.INIT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U_CPU|U_controller|state.INIT~feeder_combout\);

-- Location: FF_X17_Y20_N21
\U_CPU|U_controller|state.INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|state.INIT~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.INIT~q\);

-- Location: LCCOMB_X17_Y20_N24
\U_CPU|U_controller|next_state.SRRL~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.SRRL~0_combout\ = (\U_CPU|U_datapath|U_IR|output\(5) & (\U_CPU|U_controller|state.DECODE~q\ & (\U_CPU|U_controller|Equal4~0_combout\ & \U_CPU|U_controller|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_IR|output\(5),
	datab => \U_CPU|U_controller|state.DECODE~q\,
	datac => \U_CPU|U_controller|Equal4~0_combout\,
	datad => \U_CPU|U_controller|Equal5~0_combout\,
	combout => \U_CPU|U_controller|next_state.SRRL~0_combout\);

-- Location: FF_X17_Y20_N25
\U_CPU|U_controller|state.SRRL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.SRRL~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.SRRL~q\);

-- Location: LCCOMB_X19_Y20_N28
\U_CPU|U_controller|Equal11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal11~0_combout\ = (\U_CPU|U_datapath|U_IR|output\(4) & (!\U_CPU|U_datapath|U_IR|output\(7) & !\U_CPU|U_datapath|U_IR|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_IR|output\(4),
	datab => \U_CPU|U_datapath|U_IR|output\(7),
	datad => \U_CPU|U_datapath|U_IR|output\(5),
	combout => \U_CPU|U_controller|Equal11~0_combout\);

-- Location: LCCOMB_X17_Y20_N2
\U_CPU|U_controller|next_state.ROLC~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.ROLC~0_combout\ = (\U_CPU|U_controller|state.DECODE~q\ & (\U_CPU|U_controller|Equal13~1_combout\ & \U_CPU|U_controller|Equal11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_controller|state.DECODE~q\,
	datac => \U_CPU|U_controller|Equal13~1_combout\,
	datad => \U_CPU|U_controller|Equal11~0_combout\,
	combout => \U_CPU|U_controller|next_state.ROLC~0_combout\);

-- Location: FF_X17_Y20_N3
\U_CPU|U_controller|state.ROLC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.ROLC~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.ROLC~q\);

-- Location: LCCOMB_X17_Y20_N8
\U_CPU|U_controller|Selector0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~6_combout\ = (\U_CPU|U_controller|state.INCA~q\) # ((\U_CPU|U_controller|state.SRRL~q\) # ((\U_CPU|U_controller|state.LDSI_2~q\) # (\U_CPU|U_controller|state.ROLC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.INCA~q\,
	datab => \U_CPU|U_controller|state.SRRL~q\,
	datac => \U_CPU|U_controller|state.LDSI_2~q\,
	datad => \U_CPU|U_controller|state.ROLC~q\,
	combout => \U_CPU|U_controller|Selector0~6_combout\);

-- Location: LCCOMB_X17_Y20_N30
\U_CPU|U_controller|Selector0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~7_combout\ = (\U_CPU|U_controller|Selector0~5_combout\) # (((\U_CPU|U_controller|Selector0~6_combout\) # (\U_CPU|U_controller|WideOr36~0_combout\)) # (!\U_CPU|U_controller|state.INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Selector0~5_combout\,
	datab => \U_CPU|U_controller|state.INIT~q\,
	datac => \U_CPU|U_controller|Selector0~6_combout\,
	datad => \U_CPU|U_controller|WideOr36~0_combout\,
	combout => \U_CPU|U_controller|Selector0~7_combout\);

-- Location: LCCOMB_X15_Y18_N10
\U_CPU|U_controller|Selector0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~8_combout\ = (\U_CPU|U_controller|Selector0~4_combout\) # (((\U_CPU|U_controller|Selector0~7_combout\) # (!\U_CPU|U_controller|Selector0~26_combout\)) # (!\U_CPU|U_controller|WideOr19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Selector0~4_combout\,
	datab => \U_CPU|U_controller|WideOr19~0_combout\,
	datac => \U_CPU|U_controller|Selector0~26_combout\,
	datad => \U_CPU|U_controller|Selector0~7_combout\,
	combout => \U_CPU|U_controller|Selector0~8_combout\);

-- Location: LCCOMB_X15_Y18_N22
\U_CPU|U_controller|Selector0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector0~25_combout\ = (\U_CPU|U_controller|Selector0~8_combout\) # ((\U_CPU|U_controller|Selector0~15_combout\ & (\U_CPU|U_controller|Selector0~24_combout\ & \U_CPU|U_controller|Selector0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Selector0~15_combout\,
	datab => \U_CPU|U_controller|Selector0~24_combout\,
	datac => \U_CPU|U_controller|Selector0~12_combout\,
	datad => \U_CPU|U_controller|Selector0~8_combout\,
	combout => \U_CPU|U_controller|Selector0~25_combout\);

-- Location: FF_X15_Y18_N23
\U_CPU|U_controller|state.OPCODE_FETCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|Selector0~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.OPCODE_FETCH~q\);

-- Location: FF_X15_Y18_N9
\U_CPU|U_controller|state.OPCODE_FETCH_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.OPCODE_FETCH~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.OPCODE_FETCH_2~q\);

-- Location: FF_X17_Y19_N7
\U_CPU|U_controller|state.OPCODE_FETCH_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.OPCODE_FETCH_2~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.OPCODE_FETCH_3~q\);

-- Location: FF_X20_Y21_N3
\U_CPU|U_datapath|U_IR|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|state.OPCODE_FETCH_3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_IR|output\(0));

-- Location: LCCOMB_X20_Y21_N24
\U_CPU|U_controller|Equal18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal18~0_combout\ = (!\U_CPU|U_datapath|U_IR|output\(2) & \U_CPU|U_datapath|U_IR|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_IR|output\(2),
	datad => \U_CPU|U_datapath|U_IR|output\(0),
	combout => \U_CPU|U_controller|Equal18~0_combout\);

-- Location: LCCOMB_X17_Y18_N26
\U_CPU|U_controller|next_state.LDSI~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.LDSI~0_combout\ = (\U_CPU|U_controller|state.DECODE~q\ & (\U_CPU|U_controller|Equal18~0_combout\ & (\U_CPU|U_controller|Equal27~4_combout\ & \U_CPU|U_controller|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.DECODE~q\,
	datab => \U_CPU|U_controller|Equal18~0_combout\,
	datac => \U_CPU|U_controller|Equal27~4_combout\,
	datad => \U_CPU|U_controller|Equal0~0_combout\,
	combout => \U_CPU|U_controller|next_state.LDSI~0_combout\);

-- Location: FF_X17_Y18_N27
\U_CPU|U_controller|state.LDSI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.LDSI~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.LDSI~q\);

-- Location: LCCOMB_X17_Y22_N24
\U_CPU|U_controller|WideOr31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr31~combout\ = (\U_CPU|U_controller|state.LDSI~q\) # (!\U_CPU|U_controller|WideOr31~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CPU|U_controller|state.LDSI~q\,
	datad => \U_CPU|U_controller|WideOr31~0_combout\,
	combout => \U_CPU|U_controller|WideOr31~combout\);

-- Location: FF_X24_Y20_N17
\U_CPU|U_datapath|U_SPL|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_SP_ADDER|Add0~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_SPL|output\(0));

-- Location: FF_X23_Y21_N19
\U_CPU|U_datapath|U_ADDRL|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|ADDRL_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ADDRL|output\(0));

-- Location: LCCOMB_X23_Y21_N18
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux15~0_combout\ = (\U_CPU|U_controller|WideOr14~combout\ & ((\U_CPU|U_controller|WideOr13~combout\) # ((\U_CPU|U_datapath|U_ADDRL|output\(0))))) # (!\U_CPU|U_controller|WideOr14~combout\ & 
-- (!\U_CPU|U_controller|WideOr13~combout\ & ((\U_CPU|U_datapath|U_PC_ADDER|output[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr14~combout\,
	datab => \U_CPU|U_controller|WideOr13~combout\,
	datac => \U_CPU|U_datapath|U_ADDRL|output\(0),
	datad => \U_CPU|U_datapath|U_PC_ADDER|output[0]~0_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux15~0_combout\);

-- Location: LCCOMB_X23_Y21_N28
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux15~1_combout\ = (\U_CPU|U_controller|WideOr13~combout\ & ((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux15~0_combout\ & ((\U_CPU|U_datapath|U_SPL|output\(0)))) # (!\U_CPU|U_datapath|U_ADDRESS_MUX|Mux15~0_combout\ & 
-- (\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[0]~0_combout\)))) # (!\U_CPU|U_controller|WideOr13~combout\ & (((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[0]~0_combout\,
	datab => \U_CPU|U_datapath|U_SPL|output\(0),
	datac => \U_CPU|U_controller|WideOr13~combout\,
	datad => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux15~0_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux15~1_combout\);

-- Location: LCCOMB_X24_Y20_N2
\U_CPU|U_datapath|U_SP_ADDER|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~44_combout\ = (\U_CPU|U_controller|WideOr31~0_combout\ & (\U_CPU|U_controller|WideOr33~combout\ & ((\U_CPU|U_datapath|U_X_ADDER|Add0~39_combout\)))) # (!\U_CPU|U_controller|WideOr31~0_combout\ & 
-- (((\U_CPU|U_datapath|U_SP_ADDER|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr33~combout\,
	datab => \U_CPU|U_controller|WideOr31~0_combout\,
	datac => \U_CPU|U_datapath|U_SP_ADDER|Add0~4_combout\,
	datad => \U_CPU|U_datapath|U_X_ADDER|Add0~39_combout\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~44_combout\);

-- Location: FF_X24_Y20_N3
\U_CPU|U_datapath|U_SPL|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_SP_ADDER|Add0~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_SPL|output\(1));

-- Location: LCCOMB_X23_Y21_N20
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux14~0_combout\ = (\U_CPU|U_controller|WideOr13~combout\ & ((\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[1]~2_combout\) # ((\U_CPU|U_controller|WideOr14~combout\)))) # (!\U_CPU|U_controller|WideOr13~combout\ & 
-- (((!\U_CPU|U_controller|WideOr14~combout\ & \U_CPU|U_datapath|U_PC_ADDER|output[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[1]~2_combout\,
	datab => \U_CPU|U_controller|WideOr13~combout\,
	datac => \U_CPU|U_controller|WideOr14~combout\,
	datad => \U_CPU|U_datapath|U_PC_ADDER|output[1]~2_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux14~0_combout\);

-- Location: LCCOMB_X23_Y21_N6
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux14~1_combout\ = (\U_CPU|U_controller|WideOr14~combout\ & ((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux14~0_combout\ & ((\U_CPU|U_datapath|U_SPL|output\(1)))) # (!\U_CPU|U_datapath|U_ADDRESS_MUX|Mux14~0_combout\ & 
-- (\U_CPU|U_datapath|U_ADDRL|output\(1))))) # (!\U_CPU|U_controller|WideOr14~combout\ & (((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ADDRL|output\(1),
	datab => \U_CPU|U_datapath|U_SPL|output\(1),
	datac => \U_CPU|U_controller|WideOr14~combout\,
	datad => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux14~0_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux14~1_combout\);

-- Location: LCCOMB_X24_Y20_N0
\U_CPU|U_datapath|U_SP_ADDER|Add0~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_SP_ADDER|Add0~43_combout\ = (\U_CPU|U_controller|WideOr31~0_combout\ & (\U_CPU|U_controller|WideOr33~combout\ & ((\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~23_combout\)))) # (!\U_CPU|U_controller|WideOr31~0_combout\ & 
-- (((\U_CPU|U_datapath|U_SP_ADDER|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr31~0_combout\,
	datab => \U_CPU|U_controller|WideOr33~combout\,
	datac => \U_CPU|U_datapath|U_SP_ADDER|Add0~6_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~23_combout\,
	combout => \U_CPU|U_datapath|U_SP_ADDER|Add0~43_combout\);

-- Location: FF_X24_Y20_N1
\U_CPU|U_datapath|U_SPL|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_SP_ADDER|Add0~43_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_SPL|output\(2));

-- Location: FF_X22_Y21_N17
\U_CPU|U_datapath|U_ADDRL|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|ADDRL_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ADDRL|output\(2));

-- Location: LCCOMB_X22_Y21_N16
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux13~0_combout\ = (\U_CPU|U_controller|WideOr14~combout\ & ((\U_CPU|U_controller|WideOr13~combout\) # ((\U_CPU|U_datapath|U_ADDRL|output\(2))))) # (!\U_CPU|U_controller|WideOr14~combout\ & 
-- (!\U_CPU|U_controller|WideOr13~combout\ & ((\U_CPU|U_datapath|U_PC_ADDER|output[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr14~combout\,
	datab => \U_CPU|U_controller|WideOr13~combout\,
	datac => \U_CPU|U_datapath|U_ADDRL|output\(2),
	datad => \U_CPU|U_datapath|U_PC_ADDER|output[2]~4_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux13~0_combout\);

-- Location: LCCOMB_X22_Y21_N10
\U_CPU|U_datapath|U_ADDRESS_MUX|Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_ADDRESS_MUX|Mux13~1_combout\ = (\U_CPU|U_controller|WideOr13~combout\ & ((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux13~0_combout\ & (\U_CPU|U_datapath|U_SPL|output\(2))) # (!\U_CPU|U_datapath|U_ADDRESS_MUX|Mux13~0_combout\ & 
-- ((\U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[2]~4_combout\))))) # (!\U_CPU|U_controller|WideOr13~combout\ & (((\U_CPU|U_datapath|U_ADDRESS_MUX|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|WideOr13~combout\,
	datab => \U_CPU|U_datapath|U_SPL|output\(2),
	datac => \U_CPU|U_datapath|U_X_PLUS_B_ADDER|output[2]~4_combout\,
	datad => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux13~0_combout\,
	combout => \U_CPU|U_datapath|U_ADDRESS_MUX|Mux13~1_combout\);

-- Location: LCCOMB_X26_Y21_N28
\U_RAM_OUTPUT|output[6]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_RAM_OUTPUT|output[6]~38_combout\ = (\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~9_combout\) # ((!\U_CPU|U_controller|state.Call_2~q\ & (!\U_CPU|U_controller|state.Call_4~q\ & !\U_CPU|U_controller|state.STAA_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.Call_2~q\,
	datab => \U_CPU|U_controller|state.Call_4~q\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~9_combout\,
	datad => \U_CPU|U_controller|state.STAA_3~q\,
	combout => \U_RAM_OUTPUT|output[6]~38_combout\);

-- Location: IOIBUF_X0_Y26_N1
\input_switches[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_switches(6),
	o => \input_switches[6]~input_o\);

-- Location: LCCOMB_X24_Y22_N4
\U_REG_INPORT0|output[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REG_INPORT0|output[6]~feeder_combout\ = \input_switches[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_switches[6]~input_o\,
	combout => \U_REG_INPORT0|output[6]~feeder_combout\);

-- Location: FF_X24_Y22_N5
\U_REG_INPORT0|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_REG_INPORT0|output[6]~feeder_combout\,
	ena => \ALT_INV_input_switch_sel~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_INPORT0|output\(6));

-- Location: FF_X26_Y21_N21
\U_REG_INPORT1|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_switches[6]~input_o\,
	sload => VCC,
	ena => \input_switch_sel~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_INPORT1|output\(6));

-- Location: LCCOMB_X26_Y21_N20
\U_INPORT_TO_DATABUS|output[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_INPORT_TO_DATABUS|output[6]~6_combout\ = ((\U_INPORT_MUX2x1|output[3]~0_combout\ & ((\U_REG_INPORT1|output\(6)))) # (!\U_INPORT_MUX2x1|output[3]~0_combout\ & (\U_REG_INPORT0|output\(6)))) # (!\U_DECODER_SMALL8|INPORT_TRI_en~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DECODER_SMALL8|INPORT_TRI_en~0_combout\,
	datab => \U_REG_INPORT0|output\(6),
	datac => \U_REG_INPORT1|output\(6),
	datad => \U_INPORT_MUX2x1|output[3]~0_combout\,
	combout => \U_INPORT_TO_DATABUS|output[6]~6_combout\);

-- Location: LCCOMB_X26_Y21_N4
\U_RAM_OUTPUT|output[6]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_RAM_OUTPUT|output[6]~30_combout\ = (\U_RAM_OUTPUT|output[6]~38_combout\ & (\U_INPORT_TO_DATABUS|output[6]~6_combout\ & ((\U_RAM|altsyncram_component|auto_generated|q_a\(6)) # (\U_DECODER_SMALL8|ram_read_en~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|altsyncram_component|auto_generated|q_a\(6),
	datab => \U_RAM_OUTPUT|output[6]~38_combout\,
	datac => \U_DECODER_SMALL8|ram_read_en~0_combout\,
	datad => \U_INPORT_TO_DATABUS|output[6]~6_combout\,
	combout => \U_RAM_OUTPUT|output[6]~30_combout\);

-- Location: LCCOMB_X26_Y21_N14
\U_RAM_OUTPUT|output[7]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_RAM_OUTPUT|output[7]~39_combout\ = (\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~30_combout\) # ((!\U_CPU|U_controller|state.Call_2~q\ & (!\U_CPU|U_controller|state.Call_4~q\ & !\U_CPU|U_controller|state.STAA_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.Call_2~q\,
	datab => \U_CPU|U_controller|state.Call_4~q\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~30_combout\,
	datad => \U_CPU|U_controller|state.STAA_3~q\,
	combout => \U_RAM_OUTPUT|output[7]~39_combout\);

-- Location: IOIBUF_X0_Y25_N1
\input_switches[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_switches(7),
	o => \input_switches[7]~input_o\);

-- Location: FF_X24_Y22_N7
\U_REG_INPORT0|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_switches[7]~input_o\,
	sload => VCC,
	ena => \ALT_INV_input_switch_sel~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_INPORT0|output\(7));

-- Location: FF_X26_Y21_N7
\U_REG_INPORT1|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_switches[7]~input_o\,
	sload => VCC,
	ena => \input_switch_sel~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_INPORT1|output\(7));

-- Location: LCCOMB_X26_Y21_N6
\U_INPORT_TO_DATABUS|output[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_INPORT_TO_DATABUS|output[7]~7_combout\ = ((\U_INPORT_MUX2x1|output[3]~0_combout\ & ((\U_REG_INPORT1|output\(7)))) # (!\U_INPORT_MUX2x1|output[3]~0_combout\ & (\U_REG_INPORT0|output\(7)))) # (!\U_DECODER_SMALL8|INPORT_TRI_en~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DECODER_SMALL8|INPORT_TRI_en~0_combout\,
	datab => \U_REG_INPORT0|output\(7),
	datac => \U_REG_INPORT1|output\(7),
	datad => \U_INPORT_MUX2x1|output[3]~0_combout\,
	combout => \U_INPORT_TO_DATABUS|output[7]~7_combout\);

-- Location: LCCOMB_X26_Y21_N22
\U_RAM_OUTPUT|output[7]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_RAM_OUTPUT|output[7]~31_combout\ = (\U_RAM_OUTPUT|output[7]~39_combout\ & (\U_INPORT_TO_DATABUS|output[7]~7_combout\ & ((\U_RAM|altsyncram_component|auto_generated|q_a\(7)) # (\U_DECODER_SMALL8|ram_read_en~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|altsyncram_component|auto_generated|q_a\(7),
	datab => \U_RAM_OUTPUT|output[7]~39_combout\,
	datac => \U_DECODER_SMALL8|ram_read_en~0_combout\,
	datad => \U_INPORT_TO_DATABUS|output[7]~7_combout\,
	combout => \U_RAM_OUTPUT|output[7]~31_combout\);

-- Location: IOIBUF_X0_Y27_N22
\input_switches[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_switches(2),
	o => \input_switches[2]~input_o\);

-- Location: FF_X24_Y21_N7
\U_REG_INPORT1|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_switches[2]~input_o\,
	sload => VCC,
	ena => \input_switch_sel~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_INPORT1|output\(2));

-- Location: LCCOMB_X24_Y21_N6
\U_INPORT_TO_DATABUS|output[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_INPORT_TO_DATABUS|output[2]~2_combout\ = ((\U_INPORT_MUX2x1|output[3]~0_combout\ & ((\U_REG_INPORT1|output\(2)))) # (!\U_INPORT_MUX2x1|output[3]~0_combout\ & (\U_REG_INPORT0|output\(2)))) # (!\U_DECODER_SMALL8|INPORT_TRI_en~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_INPORT0|output\(2),
	datab => \U_DECODER_SMALL8|INPORT_TRI_en~0_combout\,
	datac => \U_REG_INPORT1|output\(2),
	datad => \U_INPORT_MUX2x1|output[3]~0_combout\,
	combout => \U_INPORT_TO_DATABUS|output[2]~2_combout\);

-- Location: LCCOMB_X24_Y21_N20
\U_RAM_OUTPUT|output[2]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_RAM_OUTPUT|output[2]~26_combout\ = (\U_RAM_OUTPUT|output[2]~34_combout\ & (\U_INPORT_TO_DATABUS|output[2]~2_combout\ & ((\U_RAM|altsyncram_component|auto_generated|q_a\(2)) # (\U_DECODER_SMALL8|ram_read_en~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM_OUTPUT|output[2]~34_combout\,
	datab => \U_RAM|altsyncram_component|auto_generated|q_a\(2),
	datac => \U_DECODER_SMALL8|ram_read_en~0_combout\,
	datad => \U_INPORT_TO_DATABUS|output[2]~2_combout\,
	combout => \U_RAM_OUTPUT|output[2]~26_combout\);

-- Location: IOIBUF_X0_Y23_N8
\input_switches[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_switches(1),
	o => \input_switches[1]~input_o\);

-- Location: FF_X24_Y22_N27
\U_REG_INPORT0|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_switches[1]~input_o\,
	sload => VCC,
	ena => \ALT_INV_input_switch_sel~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_INPORT0|output\(1));

-- Location: FF_X24_Y21_N29
\U_REG_INPORT1|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_switches[1]~input_o\,
	sload => VCC,
	ena => \input_switch_sel~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_INPORT1|output\(1));

-- Location: LCCOMB_X24_Y21_N28
\U_INPORT_TO_DATABUS|output[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_INPORT_TO_DATABUS|output[1]~1_combout\ = ((\U_INPORT_MUX2x1|output[3]~0_combout\ & ((\U_REG_INPORT1|output\(1)))) # (!\U_INPORT_MUX2x1|output[3]~0_combout\ & (\U_REG_INPORT0|output\(1)))) # (!\U_DECODER_SMALL8|INPORT_TRI_en~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_INPORT_MUX2x1|output[3]~0_combout\,
	datab => \U_REG_INPORT0|output\(1),
	datac => \U_REG_INPORT1|output\(1),
	datad => \U_DECODER_SMALL8|INPORT_TRI_en~0_combout\,
	combout => \U_INPORT_TO_DATABUS|output[1]~1_combout\);

-- Location: LCCOMB_X24_Y21_N2
\U_RAM_OUTPUT|output[1]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_RAM_OUTPUT|output[1]~25_combout\ = (\U_RAM_OUTPUT|output[1]~33_combout\ & (\U_INPORT_TO_DATABUS|output[1]~1_combout\ & ((\U_RAM|altsyncram_component|auto_generated|q_a\(1)) # (\U_DECODER_SMALL8|ram_read_en~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM_OUTPUT|output[1]~33_combout\,
	datab => \U_RAM|altsyncram_component|auto_generated|q_a\(1),
	datac => \U_DECODER_SMALL8|ram_read_en~0_combout\,
	datad => \U_INPORT_TO_DATABUS|output[1]~1_combout\,
	combout => \U_RAM_OUTPUT|output[1]~25_combout\);

-- Location: IOIBUF_X0_Y26_N8
\input_switches[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_switches(5),
	o => \input_switches[5]~input_o\);

-- Location: LCCOMB_X24_Y22_N10
\U_REG_INPORT0|output[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REG_INPORT0|output[5]~feeder_combout\ = \input_switches[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_switches[5]~input_o\,
	combout => \U_REG_INPORT0|output[5]~feeder_combout\);

-- Location: FF_X24_Y22_N11
\U_REG_INPORT0|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_REG_INPORT0|output[5]~feeder_combout\,
	ena => \ALT_INV_input_switch_sel~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_INPORT0|output\(5));

-- Location: FF_X26_Y21_N3
\U_REG_INPORT1|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_switches[5]~input_o\,
	sload => VCC,
	ena => \input_switch_sel~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_INPORT1|output\(5));

-- Location: LCCOMB_X26_Y21_N2
\U_INPORT_TO_DATABUS|output[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_INPORT_TO_DATABUS|output[5]~5_combout\ = ((\U_INPORT_MUX2x1|output[3]~0_combout\ & ((\U_REG_INPORT1|output\(5)))) # (!\U_INPORT_MUX2x1|output[3]~0_combout\ & (\U_REG_INPORT0|output\(5)))) # (!\U_DECODER_SMALL8|INPORT_TRI_en~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DECODER_SMALL8|INPORT_TRI_en~0_combout\,
	datab => \U_REG_INPORT0|output\(5),
	datac => \U_REG_INPORT1|output\(5),
	datad => \U_INPORT_MUX2x1|output[3]~0_combout\,
	combout => \U_INPORT_TO_DATABUS|output[5]~5_combout\);

-- Location: LCCOMB_X26_Y21_N26
\U_RAM_OUTPUT|output[5]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_RAM_OUTPUT|output[5]~29_combout\ = (\U_RAM_OUTPUT|output[5]~37_combout\ & (\U_INPORT_TO_DATABUS|output[5]~5_combout\ & ((\U_RAM|altsyncram_component|auto_generated|q_a\(5)) # (\U_DECODER_SMALL8|ram_read_en~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM_OUTPUT|output[5]~37_combout\,
	datab => \U_RAM|altsyncram_component|auto_generated|q_a\(5),
	datac => \U_DECODER_SMALL8|ram_read_en~0_combout\,
	datad => \U_INPORT_TO_DATABUS|output[5]~5_combout\,
	combout => \U_RAM_OUTPUT|output[5]~29_combout\);

-- Location: LCCOMB_X22_Y20_N30
\U_CPU|U_datapath|U_X_ADDER|Add0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~33_combout\ = ((\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[5]~12_combout\ & ((\U_RAM_OUTPUT|output[5]~29_combout\) # (!\U_CPU|U_controller|Selector5~2_combout\)))) # 
-- (!\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[5]~12_combout\,
	datab => \U_CPU|U_controller|Selector5~2_combout\,
	datac => \U_RAM_OUTPUT|output[5]~29_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~4_combout\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~33_combout\);

-- Location: FF_X19_Y20_N21
\U_CPU|U_datapath|U_IR|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_X_ADDER|Add0~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|state.OPCODE_FETCH_3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_IR|output\(5));

-- Location: LCCOMB_X19_Y20_N16
\U_CPU|U_controller|Equal16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal16~0_combout\ = (\U_CPU|U_datapath|U_IR|output\(4) & (\U_CPU|U_datapath|U_IR|output\(7) & (!\U_CPU|U_datapath|U_IR|output\(6) & \U_CPU|U_datapath|U_IR|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_IR|output\(4),
	datab => \U_CPU|U_datapath|U_IR|output\(7),
	datac => \U_CPU|U_datapath|U_IR|output\(6),
	datad => \U_CPU|U_datapath|U_IR|output\(5),
	combout => \U_CPU|U_controller|Equal16~0_combout\);

-- Location: LCCOMB_X20_Y21_N30
\U_CPU|U_controller|Equal20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal20~0_combout\ = (!\U_CPU|U_datapath|U_IR|output\(3) & (\U_CPU|U_datapath|U_IR|output\(2) & (\U_CPU|U_controller|Equal16~0_combout\ & \U_CPU|U_datapath|U_IR|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_IR|output\(3),
	datab => \U_CPU|U_datapath|U_IR|output\(2),
	datac => \U_CPU|U_controller|Equal16~0_combout\,
	datad => \U_CPU|U_datapath|U_IR|output\(0),
	combout => \U_CPU|U_controller|Equal20~0_combout\);

-- Location: LCCOMB_X15_Y18_N2
\U_CPU|U_controller|next_state.BPLA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.BPLA~0_combout\ = (\U_CPU|U_controller|state.DECODE~q\ & (\U_CPU|U_controller|Equal20~0_combout\ & !\U_CPU|U_datapath|U_IR|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.DECODE~q\,
	datac => \U_CPU|U_controller|Equal20~0_combout\,
	datad => \U_CPU|U_datapath|U_IR|output\(1),
	combout => \U_CPU|U_controller|next_state.BPLA~0_combout\);

-- Location: FF_X15_Y18_N3
\U_CPU|U_controller|state.BPLA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.BPLA~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.BPLA~q\);

-- Location: LCCOMB_X16_Y18_N8
\U_CPU|U_controller|Selector4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector4~11_combout\ = (!\U_CPU|U_datapath|U_STATUS_REG_SIGNED|output\(0) & \U_CPU|U_controller|state.BPLA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_STATUS_REG_SIGNED|output\(0),
	datad => \U_CPU|U_controller|state.BPLA~q\,
	combout => \U_CPU|U_controller|Selector4~11_combout\);

-- Location: FF_X16_Y18_N9
\U_CPU|U_controller|state.BPLA_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|Selector4~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.BPLA_2~q\);

-- Location: LCCOMB_X17_Y18_N2
\U_CPU|U_controller|next_state.BEQA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.BEQA~0_combout\ = (\U_CPU|U_controller|state.DECODE~q\ & (!\U_CPU|U_datapath|U_IR|output\(2) & (\U_CPU|U_controller|Equal15~0_combout\ & \U_CPU|U_datapath|U_IR|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.DECODE~q\,
	datab => \U_CPU|U_datapath|U_IR|output\(2),
	datac => \U_CPU|U_controller|Equal15~0_combout\,
	datad => \U_CPU|U_datapath|U_IR|output\(1),
	combout => \U_CPU|U_controller|next_state.BEQA~0_combout\);

-- Location: FF_X17_Y18_N3
\U_CPU|U_controller|state.BEQA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.BEQA~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.BEQA~q\);

-- Location: LCCOMB_X19_Y18_N28
\U_CPU|U_controller|Selector4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector4~9_combout\ = (\U_CPU|U_controller|state.BEQA~q\ & \U_CPU|U_datapath|U_STATUS_REG_ZERO|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_controller|state.BEQA~q\,
	datad => \U_CPU|U_datapath|U_STATUS_REG_ZERO|output\(0),
	combout => \U_CPU|U_controller|Selector4~9_combout\);

-- Location: FF_X19_Y18_N29
\U_CPU|U_controller|state.BEQA_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|Selector4~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.BEQA_2~q\);

-- Location: LCCOMB_X16_Y18_N30
\U_CPU|U_controller|Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector4~2_combout\ = (!\U_CPU|U_controller|state.BNEA_2~q\ & (!\U_CPU|U_controller|state.BPLA_2~q\ & (!\U_CPU|U_controller|state.BCCA_2~q\ & !\U_CPU|U_controller|state.BEQA_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.BNEA_2~q\,
	datab => \U_CPU|U_controller|state.BPLA_2~q\,
	datac => \U_CPU|U_controller|state.BCCA_2~q\,
	datad => \U_CPU|U_controller|state.BEQA_2~q\,
	combout => \U_CPU|U_controller|Selector4~2_combout\);

-- Location: LCCOMB_X17_Y19_N14
\U_CPU|U_controller|WideOr30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr30~0_combout\ = (\U_CPU|U_controller|state.Call_7~q\) # ((\U_CPU|U_controller|state.RET_2~q\) # (!\U_CPU|U_controller|Selector4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.Call_7~q\,
	datab => \U_CPU|U_controller|state.RET_2~q\,
	datad => \U_CPU|U_controller|Selector4~2_combout\,
	combout => \U_CPU|U_controller|WideOr30~0_combout\);

-- Location: FF_X22_Y23_N1
\U_CPU|U_datapath|U_BRANCH_TARGET_H|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_X_ADDER|Add0~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|WideOr30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(1));

-- Location: LCCOMB_X22_Y23_N0
\U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[1]~6_combout\ = (\U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(1)) # ((!\U_CPU|U_controller|state.RET_6~q\ & !\U_CPU|U_controller|state.Call_9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.RET_6~q\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(1),
	datad => \U_CPU|U_controller|state.Call_9~q\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[1]~6_combout\);

-- Location: LCCOMB_X20_Y19_N0
\U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[1]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[1]~22_combout\ = (\U_CPU|U_controller|state.Call_2~q\ & (((\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[1]~0_combout\)))) # (!\U_CPU|U_controller|state.Call_2~q\ & 
-- (((\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[9]~16_combout\)) # (!\U_CPU|U_controller|state.Call_4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.Call_4~q\,
	datab => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[1]~0_combout\,
	datac => \U_CPU|U_controller|state.Call_2~q\,
	datad => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[9]~16_combout\,
	combout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[1]~22_combout\);

-- Location: LCCOMB_X26_Y19_N0
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[1]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[1]~24_combout\ = (\U_CPU|U_datapath|U_ALU_REG|output\(1) & ((\U_CPU|U_datapath|U_D|output\(1)) # ((!\U_CPU|U_controller|state.LDAD~q\)))) # (!\U_CPU|U_datapath|U_ALU_REG|output\(1) & 
-- (!\U_CPU|U_controller|state.LOAD_ALU_TO_A~q\ & ((\U_CPU|U_datapath|U_D|output\(1)) # (!\U_CPU|U_controller|state.LDAD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_ALU_REG|output\(1),
	datab => \U_CPU|U_datapath|U_D|output\(1),
	datac => \U_CPU|U_controller|state.LOAD_ALU_TO_A~q\,
	datad => \U_CPU|U_controller|state.LDAD~q\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[1]~24_combout\);

-- Location: LCCOMB_X26_Y19_N10
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[1]~26_combout\ = (\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[1]~25_combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[1]~6_combout\ & 
-- (\U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[1]~22_combout\ & \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[1]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[1]~25_combout\,
	datab => \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[1]~6_combout\,
	datac => \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[1]~22_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[1]~24_combout\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[1]~26_combout\);

-- Location: LCCOMB_X23_Y21_N10
\U_CPU|U_datapath|U_X_ADDER|Add0~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_X_ADDER|Add0~39_combout\ = ((\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[1]~26_combout\ & ((\U_RAM_OUTPUT|output[1]~25_combout\) # (!\U_CPU|U_controller|Selector5~2_combout\)))) # 
-- (!\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM_OUTPUT|output[1]~25_combout\,
	datab => \U_CPU|U_controller|Selector5~2_combout\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~4_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[1]~26_combout\,
	combout => \U_CPU|U_datapath|U_X_ADDER|Add0~39_combout\);

-- Location: FF_X20_Y21_N15
\U_CPU|U_datapath|U_IR|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_X_ADDER|Add0~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|state.OPCODE_FETCH_3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_IR|output\(1));

-- Location: LCCOMB_X20_Y21_N0
\U_CPU|U_controller|Equal27~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal27~4_combout\ = (!\U_CPU|U_datapath|U_IR|output\(1) & \U_CPU|U_datapath|U_IR|output\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_IR|output\(1),
	datac => \U_CPU|U_datapath|U_IR|output\(3),
	combout => \U_CPU|U_controller|Equal27~4_combout\);

-- Location: LCCOMB_X20_Y21_N16
\U_CPU|U_controller|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal1~0_combout\ = (\U_CPU|U_controller|Equal0~0_combout\ & (!\U_CPU|U_datapath|U_IR|output\(2) & (\U_CPU|U_controller|Equal27~4_combout\ & !\U_CPU|U_datapath|U_IR|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Equal0~0_combout\,
	datab => \U_CPU|U_datapath|U_IR|output\(2),
	datac => \U_CPU|U_controller|Equal27~4_combout\,
	datad => \U_CPU|U_datapath|U_IR|output\(0),
	combout => \U_CPU|U_controller|Equal1~0_combout\);

-- Location: LCCOMB_X16_Y18_N4
\U_CPU|U_controller|next_state.LDAA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.LDAA~0_combout\ = (\U_CPU|U_controller|state.DECODE~q\ & \U_CPU|U_controller|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.DECODE~q\,
	datad => \U_CPU|U_controller|Equal1~0_combout\,
	combout => \U_CPU|U_controller|next_state.LDAA~0_combout\);

-- Location: FF_X16_Y18_N5
\U_CPU|U_controller|state.LDAA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.LDAA~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.LDAA~q\);

-- Location: FF_X16_Y18_N11
\U_CPU|U_controller|state.LDAA_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.LDAA~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.LDAA_2~q\);

-- Location: LCCOMB_X16_Y18_N10
\U_CPU|U_controller|ADDRH_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|ADDRH_en~0_combout\ = (\U_CPU|U_controller|state.LDAA_2~q\) # (\U_CPU|U_controller|state.STAA_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CPU|U_controller|state.LDAA_2~q\,
	datad => \U_CPU|U_controller|state.STAA_2~q\,
	combout => \U_CPU|U_controller|ADDRH_en~0_combout\);

-- Location: FF_X16_Y18_N17
\U_CPU|U_controller|state.LDAA_X_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.LDAA_X_2~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.LDAA_X_3~q\);

-- Location: LCCOMB_X16_Y18_N2
\U_CPU|U_controller|Selector4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector4~3_combout\ = (!\U_CPU|U_controller|state.LDXI~q\ & (!\U_CPU|U_controller|state.LDSI~q\ & (!\U_CPU|U_controller|state.LDXI_2~q\ & !\U_CPU|U_controller|state.LDSI_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.LDXI~q\,
	datab => \U_CPU|U_controller|state.LDSI~q\,
	datac => \U_CPU|U_controller|state.LDXI_2~q\,
	datad => \U_CPU|U_controller|state.LDSI_2~q\,
	combout => \U_CPU|U_controller|Selector4~3_combout\);

-- Location: LCCOMB_X16_Y18_N16
\U_CPU|U_controller|Selector4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector4~7_combout\ = (!\U_CPU|U_controller|ADDRL_en~0_combout\ & (!\U_CPU|U_controller|ADDRH_en~0_combout\ & (!\U_CPU|U_controller|state.LDAA_X_3~q\ & \U_CPU|U_controller|Selector4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|ADDRL_en~0_combout\,
	datab => \U_CPU|U_controller|ADDRH_en~0_combout\,
	datac => \U_CPU|U_controller|state.LDAA_X_3~q\,
	datad => \U_CPU|U_controller|Selector4~3_combout\,
	combout => \U_CPU|U_controller|Selector4~7_combout\);

-- Location: LCCOMB_X17_Y19_N8
\U_CPU|U_controller|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector5~0_combout\ = (\U_CPU|U_controller|state.RET_4~q\) # ((\U_CPU|U_controller|state.LDAI~q\) # ((\U_CPU|U_controller|state.RET_2~q\) # (\U_CPU|U_controller|state.OPCODE_FETCH_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.RET_4~q\,
	datab => \U_CPU|U_controller|state.LDAI~q\,
	datac => \U_CPU|U_controller|state.RET_2~q\,
	datad => \U_CPU|U_controller|state.OPCODE_FETCH_3~q\,
	combout => \U_CPU|U_controller|Selector5~0_combout\);

-- Location: LCCOMB_X17_Y19_N10
\U_CPU|U_controller|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector5~1_combout\ = (\U_CPU|U_controller|state.LDAA_X~q\) # ((\U_CPU|U_controller|state.LDAA_4~q\) # ((\U_CPU|U_controller|state.Call_7~q\) # (\U_CPU|U_controller|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.LDAA_X~q\,
	datab => \U_CPU|U_controller|state.LDAA_4~q\,
	datac => \U_CPU|U_controller|state.Call_7~q\,
	datad => \U_CPU|U_controller|Selector5~0_combout\,
	combout => \U_CPU|U_controller|Selector5~1_combout\);

-- Location: LCCOMB_X16_Y19_N8
\U_CPU|U_controller|Selector5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Selector5~2_combout\ = (((\U_CPU|U_controller|Selector5~1_combout\) # (!\U_CPU|U_controller|Selector4~2_combout\)) # (!\U_CPU|U_controller|Selector4~7_combout\)) # (!\U_CPU|U_controller|Selector6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Selector6~2_combout\,
	datab => \U_CPU|U_controller|Selector4~7_combout\,
	datac => \U_CPU|U_controller|Selector4~2_combout\,
	datad => \U_CPU|U_controller|Selector5~1_combout\,
	combout => \U_CPU|U_controller|Selector5~2_combout\);

-- Location: FF_X19_Y22_N9
\U_CPU|U_datapath|U_ALU_REG|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_datapath|U_ALU|Mux1~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_CPU|U_controller|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ALU_REG|output\(6));

-- Location: LCCOMB_X20_Y20_N28
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~6_combout\ = (\U_CPU|U_datapath|U_D|output\(6) & ((\U_CPU|U_datapath|U_ALU_REG|output\(6)) # ((!\U_CPU|U_controller|state.LOAD_ALU_TO_A~q\)))) # (!\U_CPU|U_datapath|U_D|output\(6) & 
-- (!\U_CPU|U_controller|state.LDAD~q\ & ((\U_CPU|U_datapath|U_ALU_REG|output\(6)) # (!\U_CPU|U_controller|state.LOAD_ALU_TO_A~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_D|output\(6),
	datab => \U_CPU|U_datapath|U_ALU_REG|output\(6),
	datac => \U_CPU|U_controller|state.LOAD_ALU_TO_A~q\,
	datad => \U_CPU|U_controller|state.LDAD~q\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~6_combout\);

-- Location: LCCOMB_X22_Y20_N28
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~7_combout\ = (\U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(6) & (((\U_CPU|U_datapath|U_A|output\(6)) # (\U_CPU|U_controller|tri_enable[5]~0_combout\)))) # (!\U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(6) & 
-- (\U_CPU|U_controller|WideOr11~4_combout\ & ((\U_CPU|U_datapath|U_A|output\(6)) # (\U_CPU|U_controller|tri_enable[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(6),
	datab => \U_CPU|U_controller|WideOr11~4_combout\,
	datac => \U_CPU|U_datapath|U_A|output\(6),
	datad => \U_CPU|U_controller|tri_enable[5]~0_combout\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~7_combout\);

-- Location: FF_X20_Y20_N7
\U_CPU|U_datapath|U_BRANCH_TARGET_H|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|WideOr30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(6));

-- Location: LCCOMB_X20_Y20_N6
\U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[6]~1_combout\ = (\U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(6)) # ((!\U_CPU|U_controller|state.Call_9~q\ & !\U_CPU|U_controller|state.RET_6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.Call_9~q\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(6),
	datad => \U_CPU|U_controller|state.RET_6~q\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[6]~1_combout\);

-- Location: LCCOMB_X20_Y20_N0
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~8_combout\ = (\U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[6]~17_combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~6_combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~7_combout\ 
-- & \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[6]~17_combout\,
	datab => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~6_combout\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~7_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[6]~1_combout\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~8_combout\);

-- Location: LCCOMB_X20_Y20_N18
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~9_combout\ = ((\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~8_combout\ & ((\U_RAM_OUTPUT|output[6]~30_combout\) # (!\U_CPU|U_controller|Selector5~2_combout\)))) # 
-- (!\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM_OUTPUT|output[6]~30_combout\,
	datab => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~4_combout\,
	datac => \U_CPU|U_controller|Selector5~2_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~8_combout\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~9_combout\);

-- Location: FF_X19_Y20_N1
\U_CPU|U_datapath|U_IR|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|state.OPCODE_FETCH_3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_IR|output\(6));

-- Location: LCCOMB_X20_Y21_N2
\U_CPU|U_controller|Equal13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal13~0_combout\ = (\U_CPU|U_datapath|U_IR|output\(6) & (!\U_CPU|U_datapath|U_IR|output\(0) & !\U_CPU|U_datapath|U_IR|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_IR|output\(6),
	datac => \U_CPU|U_datapath|U_IR|output\(0),
	datad => \U_CPU|U_datapath|U_IR|output\(3),
	combout => \U_CPU|U_controller|Equal13~0_combout\);

-- Location: LCCOMB_X16_Y20_N16
\U_CPU|U_controller|Equal29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal29~0_combout\ = (!\U_CPU|U_datapath|U_IR|output\(1) & (!\U_CPU|U_datapath|U_IR|output\(2) & (\U_CPU|U_controller|Equal28~0_combout\ & \U_CPU|U_controller|Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_IR|output\(1),
	datab => \U_CPU|U_datapath|U_IR|output\(2),
	datac => \U_CPU|U_controller|Equal28~0_combout\,
	datad => \U_CPU|U_controller|Equal13~0_combout\,
	combout => \U_CPU|U_controller|Equal29~0_combout\);

-- Location: LCCOMB_X17_Y19_N22
\U_CPU|U_controller|next_state.RET~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.RET~0_combout\ = (\U_CPU|U_controller|Equal29~0_combout\ & \U_CPU|U_controller|state.DECODE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CPU|U_controller|Equal29~0_combout\,
	datad => \U_CPU|U_controller|state.DECODE~q\,
	combout => \U_CPU|U_controller|next_state.RET~0_combout\);

-- Location: FF_X17_Y19_N23
\U_CPU|U_controller|state.RET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.RET~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.RET~q\);

-- Location: FF_X17_Y19_N31
\U_CPU|U_controller|state.RET_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.RET~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.RET_2~q\);

-- Location: FF_X17_Y19_N9
\U_CPU|U_controller|state.RET_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.RET_2~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.RET_3~q\);

-- Location: FF_X17_Y19_N27
\U_CPU|U_controller|state.RET_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.RET_3~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.RET_4~q\);

-- Location: FF_X17_Y19_N13
\U_CPU|U_controller|state.RET_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.RET_4~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.RET_5~q\);

-- Location: FF_X19_Y18_N11
\U_CPU|U_controller|state.RET_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.RET_5~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.RET_6~q\);

-- Location: LCCOMB_X19_Y18_N10
\U_CPU|U_controller|WideOr11~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr11~5_combout\ = (!\U_CPU|U_controller|state.Call_9~q\ & !\U_CPU|U_controller|state.RET_6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_controller|state.Call_9~q\,
	datac => \U_CPU|U_controller|state.RET_6~q\,
	combout => \U_CPU|U_controller|WideOr11~5_combout\);

-- Location: LCCOMB_X21_Y21_N4
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~4_combout\ = (\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~3_combout\) # (((\U_CPU|U_controller|Selector5~2_combout\) # (!\U_CPU|U_controller|WideOr11~5_combout\)) # 
-- (!\U_CPU|U_controller|WideOr11~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~3_combout\,
	datab => \U_CPU|U_controller|WideOr11~4_combout\,
	datac => \U_CPU|U_controller|WideOr11~5_combout\,
	datad => \U_CPU|U_controller|Selector5~2_combout\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~4_combout\);

-- Location: FF_X22_Y23_N23
\U_CPU|U_datapath|U_BRANCH_TARGET_H|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|WideOr30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(2));

-- Location: LCCOMB_X22_Y23_N22
\U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[2]~5_combout\ = (\U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(2)) # ((!\U_CPU|U_controller|state.RET_6~q\ & !\U_CPU|U_controller|state.Call_9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.RET_6~q\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_H|output\(2),
	datad => \U_CPU|U_controller|state.Call_9~q\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[2]~5_combout\);

-- Location: FF_X22_Y20_N5
\U_CPU|U_datapath|U_BRANCH_TARGET_L|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|Selector6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(2));

-- Location: LCCOMB_X22_Y20_N24
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~21_combout\ = (\U_CPU|U_controller|tri_enable[5]~0_combout\ & ((\U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(2)) # ((\U_CPU|U_controller|WideOr11~4_combout\)))) # 
-- (!\U_CPU|U_controller|tri_enable[5]~0_combout\ & (\U_CPU|U_datapath|U_A|output\(2) & ((\U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(2)) # (\U_CPU|U_controller|WideOr11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|tri_enable[5]~0_combout\,
	datab => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(2),
	datac => \U_CPU|U_datapath|U_A|output\(2),
	datad => \U_CPU|U_controller|WideOr11~4_combout\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~21_combout\);

-- Location: LCCOMB_X23_Y20_N30
\U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[2]~21_combout\ = (\U_CPU|U_controller|state.Call_2~q\ & (((\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[2]~2_combout\)))) # (!\U_CPU|U_controller|state.Call_2~q\ & 
-- (((\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[10]~18_combout\)) # (!\U_CPU|U_controller|state.Call_4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.Call_4~q\,
	datab => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[2]~2_combout\,
	datac => \U_CPU|U_controller|state.Call_2~q\,
	datad => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[10]~18_combout\,
	combout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[2]~21_combout\);

-- Location: LCCOMB_X19_Y21_N8
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~22_combout\ = (\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~20_combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[2]~5_combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~21_combout\ 
-- & \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[2]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~20_combout\,
	datab => \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[2]~5_combout\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~21_combout\,
	datad => \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[2]~21_combout\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~22_combout\);

-- Location: LCCOMB_X21_Y20_N0
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~23_combout\ = ((\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~22_combout\ & ((\U_RAM_OUTPUT|output[2]~26_combout\) # (!\U_CPU|U_controller|Selector5~2_combout\)))) # 
-- (!\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM_OUTPUT|output[2]~26_combout\,
	datab => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~4_combout\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~22_combout\,
	datad => \U_CPU|U_controller|Selector5~2_combout\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~23_combout\);

-- Location: FF_X20_Y21_N21
\U_CPU|U_datapath|U_IR|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[2]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|state.OPCODE_FETCH_3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_IR|output\(2));

-- Location: LCCOMB_X20_Y21_N12
\U_CPU|U_controller|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal0~1_combout\ = (!\U_CPU|U_datapath|U_IR|output\(3) & (\U_CPU|U_datapath|U_IR|output\(2) & (!\U_CPU|U_datapath|U_IR|output\(1) & !\U_CPU|U_datapath|U_IR|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_IR|output\(3),
	datab => \U_CPU|U_datapath|U_IR|output\(2),
	datac => \U_CPU|U_datapath|U_IR|output\(1),
	datad => \U_CPU|U_datapath|U_IR|output\(0),
	combout => \U_CPU|U_controller|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y18_N4
\U_CPU|U_controller|next_state.LDAI~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.LDAI~0_combout\ = (\U_CPU|U_controller|state.DECODE~q\ & (\U_CPU|U_controller|Equal0~1_combout\ & \U_CPU|U_controller|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.DECODE~q\,
	datac => \U_CPU|U_controller|Equal0~1_combout\,
	datad => \U_CPU|U_controller|Equal0~0_combout\,
	combout => \U_CPU|U_controller|next_state.LDAI~0_combout\);

-- Location: FF_X17_Y18_N5
\U_CPU|U_controller|state.LDAI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.LDAI~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.LDAI~q\);

-- Location: LCCOMB_X15_Y18_N12
\U_CPU|U_controller|WideOr19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|WideOr19~combout\ = (\U_CPU|U_controller|state.LDAI~q\) # (!\U_CPU|U_controller|WideOr19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_controller|state.LDAI~q\,
	datad => \U_CPU|U_controller|WideOr19~0_combout\,
	combout => \U_CPU|U_controller|WideOr19~combout\);

-- Location: FF_X22_Y20_N15
\U_CPU|U_datapath|U_A|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_A|output\(7));

-- Location: FF_X22_Y20_N23
\U_CPU|U_datapath|U_BRANCH_TARGET_L|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|Selector6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(7));

-- Location: LCCOMB_X22_Y20_N22
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~28_combout\ = (\U_CPU|U_controller|tri_enable[5]~0_combout\ & (((\U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(7)) # (\U_CPU|U_controller|WideOr11~4_combout\)))) # 
-- (!\U_CPU|U_controller|tri_enable[5]~0_combout\ & (\U_CPU|U_datapath|U_A|output\(7) & ((\U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(7)) # (\U_CPU|U_controller|WideOr11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|tri_enable[5]~0_combout\,
	datab => \U_CPU|U_datapath|U_A|output\(7),
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_L|output\(7),
	datad => \U_CPU|U_controller|WideOr11~4_combout\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~28_combout\);

-- Location: FF_X26_Y19_N13
\U_CPU|U_datapath|U_ALU_REG|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_ALU|Mux0~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_ALU_REG|output\(7));

-- Location: LCCOMB_X26_Y19_N12
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~27_combout\ = (\U_CPU|U_datapath|U_D|output\(7) & (((\U_CPU|U_datapath|U_ALU_REG|output\(7))) # (!\U_CPU|U_controller|state.LOAD_ALU_TO_A~q\))) # (!\U_CPU|U_datapath|U_D|output\(7) & 
-- (!\U_CPU|U_controller|state.LDAD~q\ & ((\U_CPU|U_datapath|U_ALU_REG|output\(7)) # (!\U_CPU|U_controller|state.LOAD_ALU_TO_A~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_D|output\(7),
	datab => \U_CPU|U_controller|state.LOAD_ALU_TO_A~q\,
	datac => \U_CPU|U_datapath|U_ALU_REG|output\(7),
	datad => \U_CPU|U_controller|state.LDAD~q\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~27_combout\);

-- Location: LCCOMB_X20_Y19_N30
\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[15]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[15]~28_combout\ = \U_CPU|U_datapath|U_PCH|output\(7) $ (!\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[14]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CPU|U_datapath|U_PCH|output\(7),
	cin => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[14]~27\,
	combout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[15]~28_combout\);

-- Location: LCCOMB_X23_Y20_N16
\U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[7]~23_combout\ = (\U_CPU|U_controller|state.Call_2~q\ & (((\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[7]~12_combout\)))) # (!\U_CPU|U_controller|state.Call_2~q\ & 
-- (((\U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[15]~28_combout\)) # (!\U_CPU|U_controller|state.Call_4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.Call_4~q\,
	datab => \U_CPU|U_controller|state.Call_2~q\,
	datac => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[7]~12_combout\,
	datad => \U_CPU|U_datapath|U_STACK_CALL_PC_ADDER|output[15]~28_combout\,
	combout => \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[7]~23_combout\);

-- Location: LCCOMB_X23_Y20_N8
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~29_combout\ = (\U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[7]~7_combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~28_combout\ & (\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~27_combout\ 
-- & \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[7]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_BRANCH_TARGET_H_OUT|output[7]~7_combout\,
	datab => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~28_combout\,
	datac => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~27_combout\,
	datad => \U_CPU|U_datapath|U_STACK_CALL_PC_ADD_OUT|output[7]~23_combout\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~29_combout\);

-- Location: LCCOMB_X23_Y20_N2
\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~30_combout\ = ((\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~29_combout\ & ((\U_RAM_OUTPUT|output[7]~31_combout\) # (!\U_CPU|U_controller|Selector5~2_combout\)))) # 
-- (!\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|Selector5~2_combout\,
	datab => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~29_combout\,
	datac => \U_RAM_OUTPUT|output[7]~31_combout\,
	datad => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[6]~4_combout\,
	combout => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~30_combout\);

-- Location: FF_X19_Y20_N3
\U_CPU|U_datapath|U_IR|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[7]~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_CPU|U_controller|state.OPCODE_FETCH_3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_datapath|U_IR|output\(7));

-- Location: LCCOMB_X19_Y20_N2
\U_CPU|U_controller|Equal28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|Equal28~0_combout\ = (!\U_CPU|U_datapath|U_IR|output\(4) & (\U_CPU|U_datapath|U_IR|output\(7) & !\U_CPU|U_datapath|U_IR|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_IR|output\(4),
	datac => \U_CPU|U_datapath|U_IR|output\(7),
	datad => \U_CPU|U_datapath|U_IR|output\(5),
	combout => \U_CPU|U_controller|Equal28~0_combout\);

-- Location: LCCOMB_X17_Y19_N2
\U_CPU|U_controller|next_state.CALL~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CPU|U_controller|next_state.CALL~0_combout\ = (\U_CPU|U_controller|state.DECODE~q\ & (\U_CPU|U_controller|Equal28~0_combout\ & (!\U_CPU|U_datapath|U_IR|output\(2) & \U_CPU|U_controller|Equal25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.DECODE~q\,
	datab => \U_CPU|U_controller|Equal28~0_combout\,
	datac => \U_CPU|U_datapath|U_IR|output\(2),
	datad => \U_CPU|U_controller|Equal25~0_combout\,
	combout => \U_CPU|U_controller|next_state.CALL~0_combout\);

-- Location: FF_X17_Y19_N3
\U_CPU|U_controller|state.CALL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CPU|U_controller|next_state.CALL~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.CALL~q\);

-- Location: FF_X17_Y19_N15
\U_CPU|U_controller|state.Call_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.CALL~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.Call_2~q\);

-- Location: FF_X17_Y19_N25
\U_CPU|U_controller|state.Call_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.Call_2~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.Call_3~q\);

-- Location: FF_X17_Y19_N17
\U_CPU|U_controller|state.Call_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_CPU|U_controller|state.Call_3~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CPU|U_controller|state.Call_4~q\);

-- Location: LCCOMB_X24_Y21_N26
\U_RAM_OUTPUT|output[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_RAM_OUTPUT|output[0]~32_combout\ = (\U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5_combout\) # ((!\U_CPU|U_controller|state.Call_4~q\ & (!\U_CPU|U_controller|state.Call_2~q\ & !\U_CPU|U_controller|state.STAA_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_datapath|U_BRANCH_TARGET_L_OUT|output[0]~5_combout\,
	datab => \U_CPU|U_controller|state.Call_4~q\,
	datac => \U_CPU|U_controller|state.Call_2~q\,
	datad => \U_CPU|U_controller|state.STAA_3~q\,
	combout => \U_RAM_OUTPUT|output[0]~32_combout\);

-- Location: IOIBUF_X0_Y25_N22
\input_switches[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_switches(0),
	o => \input_switches[0]~input_o\);

-- Location: FF_X24_Y21_N11
\U_REG_INPORT1|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_switches[0]~input_o\,
	sload => VCC,
	ena => \input_switch_sel~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_INPORT1|output\(0));

-- Location: LCCOMB_X24_Y21_N10
\U_INPORT_TO_DATABUS|output[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_INPORT_TO_DATABUS|output[0]~0_combout\ = ((\U_INPORT_MUX2x1|output[3]~0_combout\ & ((\U_REG_INPORT1|output\(0)))) # (!\U_INPORT_MUX2x1|output[3]~0_combout\ & (\U_REG_INPORT0|output\(0)))) # (!\U_DECODER_SMALL8|INPORT_TRI_en~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_INPORT0|output\(0),
	datab => \U_DECODER_SMALL8|INPORT_TRI_en~0_combout\,
	datac => \U_REG_INPORT1|output\(0),
	datad => \U_INPORT_MUX2x1|output[3]~0_combout\,
	combout => \U_INPORT_TO_DATABUS|output[0]~0_combout\);

-- Location: LCCOMB_X21_Y21_N8
\U_RAM_OUTPUT|output[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_RAM_OUTPUT|output[0]~24_combout\ = (\U_RAM_OUTPUT|output[0]~32_combout\ & (\U_INPORT_TO_DATABUS|output[0]~0_combout\ & ((\U_RAM|altsyncram_component|auto_generated|q_a\(0)) # (\U_DECODER_SMALL8|ram_read_en~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|altsyncram_component|auto_generated|q_a\(0),
	datab => \U_RAM_OUTPUT|output[0]~32_combout\,
	datac => \U_DECODER_SMALL8|ram_read_en~0_combout\,
	datad => \U_INPORT_TO_DATABUS|output[0]~0_combout\,
	combout => \U_RAM_OUTPUT|output[0]~24_combout\);

-- Location: IOIBUF_X0_Y22_N15
\input_switches[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_switches(3),
	o => \input_switches[3]~input_o\);

-- Location: FF_X24_Y21_N17
\U_REG_INPORT1|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input_switches[3]~input_o\,
	sload => VCC,
	ena => \input_switch_sel~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_INPORT1|output\(3));

-- Location: LCCOMB_X24_Y21_N16
\U_INPORT_TO_DATABUS|output[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_INPORT_TO_DATABUS|output[3]~3_combout\ = ((\U_INPORT_MUX2x1|output[3]~0_combout\ & ((\U_REG_INPORT1|output\(3)))) # (!\U_INPORT_MUX2x1|output[3]~0_combout\ & (\U_REG_INPORT0|output\(3)))) # (!\U_DECODER_SMALL8|INPORT_TRI_en~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_INPORT0|output\(3),
	datab => \U_DECODER_SMALL8|INPORT_TRI_en~0_combout\,
	datac => \U_REG_INPORT1|output\(3),
	datad => \U_INPORT_MUX2x1|output[3]~0_combout\,
	combout => \U_INPORT_TO_DATABUS|output[3]~3_combout\);

-- Location: LCCOMB_X21_Y21_N30
\U_RAM_OUTPUT|output[3]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_RAM_OUTPUT|output[3]~27_combout\ = (\U_RAM_OUTPUT|output[3]~35_combout\ & (\U_INPORT_TO_DATABUS|output[3]~3_combout\ & ((\U_RAM|altsyncram_component|auto_generated|q_a\(3)) # (\U_DECODER_SMALL8|ram_read_en~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM_OUTPUT|output[3]~35_combout\,
	datab => \U_RAM|altsyncram_component|auto_generated|q_a\(3),
	datac => \U_DECODER_SMALL8|ram_read_en~0_combout\,
	datad => \U_INPORT_TO_DATABUS|output[3]~3_combout\,
	combout => \U_RAM_OUTPUT|output[3]~27_combout\);

-- Location: LCCOMB_X28_Y21_N0
\U_DECODER_SMALL8|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_DECODER_SMALL8|process_0~2_combout\ = (\U_DECODER_SMALL8|Equal1~0_combout\ & ((\U_CPU|U_controller|state.Call_4~q\) # ((\U_CPU|U_controller|state.STAA_3~q\) # (\U_CPU|U_controller|state.Call_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.Call_4~q\,
	datab => \U_CPU|U_controller|state.STAA_3~q\,
	datac => \U_DECODER_SMALL8|Equal1~0_combout\,
	datad => \U_CPU|U_controller|state.Call_2~q\,
	combout => \U_DECODER_SMALL8|process_0~2_combout\);

-- Location: FF_X24_Y21_N23
\U_REG_OUTPORT1|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM_OUTPUT|output[3]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_DECODER_SMALL8|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_OUTPORT1|output\(3));

-- Location: FF_X24_Y21_N3
\U_REG_OUTPORT1|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM_OUTPUT|output[1]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_DECODER_SMALL8|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_OUTPORT1|output\(1));

-- Location: FF_X24_Y21_N9
\U_REG_OUTPORT1|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM_OUTPUT|output[0]~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_DECODER_SMALL8|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_OUTPORT1|output\(0));

-- Location: FF_X24_Y21_N21
\U_REG_OUTPORT1|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM_OUTPUT|output[2]~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_DECODER_SMALL8|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_OUTPORT1|output\(2));

-- Location: LCCOMB_X24_Y21_N0
\U_LED0|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|Mux6~0_combout\ = (\U_REG_OUTPORT1|output\(0) & ((\U_REG_OUTPORT1|output\(3)) # (\U_REG_OUTPORT1|output\(1) $ (\U_REG_OUTPORT1|output\(2))))) # (!\U_REG_OUTPORT1|output\(0) & ((\U_REG_OUTPORT1|output\(1)) # (\U_REG_OUTPORT1|output\(3) $ 
-- (\U_REG_OUTPORT1|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT1|output\(3),
	datab => \U_REG_OUTPORT1|output\(1),
	datac => \U_REG_OUTPORT1|output\(0),
	datad => \U_REG_OUTPORT1|output\(2),
	combout => \U_LED0|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y21_N18
\U_LED0|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|Mux5~0_combout\ = (\U_REG_OUTPORT1|output\(1) & (!\U_REG_OUTPORT1|output\(3) & ((\U_REG_OUTPORT1|output\(0)) # (!\U_REG_OUTPORT1|output\(2))))) # (!\U_REG_OUTPORT1|output\(1) & (\U_REG_OUTPORT1|output\(0) & (\U_REG_OUTPORT1|output\(3) $ 
-- (!\U_REG_OUTPORT1|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT1|output\(3),
	datab => \U_REG_OUTPORT1|output\(1),
	datac => \U_REG_OUTPORT1|output\(0),
	datad => \U_REG_OUTPORT1|output\(2),
	combout => \U_LED0|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y21_N4
\U_LED0|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|Mux4~0_combout\ = (\U_REG_OUTPORT1|output\(1) & (!\U_REG_OUTPORT1|output\(3) & (\U_REG_OUTPORT1|output\(0)))) # (!\U_REG_OUTPORT1|output\(1) & ((\U_REG_OUTPORT1|output\(2) & (!\U_REG_OUTPORT1|output\(3))) # (!\U_REG_OUTPORT1|output\(2) & 
-- ((\U_REG_OUTPORT1|output\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT1|output\(3),
	datab => \U_REG_OUTPORT1|output\(1),
	datac => \U_REG_OUTPORT1|output\(0),
	datad => \U_REG_OUTPORT1|output\(2),
	combout => \U_LED0|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y21_N14
\U_LED0|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|Mux3~0_combout\ = (\U_REG_OUTPORT1|output\(0) & ((\U_REG_OUTPORT1|output\(1) $ (!\U_REG_OUTPORT1|output\(2))))) # (!\U_REG_OUTPORT1|output\(0) & ((\U_REG_OUTPORT1|output\(3) & (\U_REG_OUTPORT1|output\(1) & !\U_REG_OUTPORT1|output\(2))) # 
-- (!\U_REG_OUTPORT1|output\(3) & (!\U_REG_OUTPORT1|output\(1) & \U_REG_OUTPORT1|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT1|output\(3),
	datab => \U_REG_OUTPORT1|output\(1),
	datac => \U_REG_OUTPORT1|output\(0),
	datad => \U_REG_OUTPORT1|output\(2),
	combout => \U_LED0|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y21_N24
\U_LED0|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|Mux2~0_combout\ = (\U_REG_OUTPORT1|output\(3) & (\U_REG_OUTPORT1|output\(2) & ((\U_REG_OUTPORT1|output\(1)) # (!\U_REG_OUTPORT1|output\(0))))) # (!\U_REG_OUTPORT1|output\(3) & (\U_REG_OUTPORT1|output\(1) & (!\U_REG_OUTPORT1|output\(0) & 
-- !\U_REG_OUTPORT1|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT1|output\(3),
	datab => \U_REG_OUTPORT1|output\(1),
	datac => \U_REG_OUTPORT1|output\(0),
	datad => \U_REG_OUTPORT1|output\(2),
	combout => \U_LED0|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y21_N8
\U_LED0|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|Mux1~0_combout\ = (\U_REG_OUTPORT1|output\(3) & ((\U_REG_OUTPORT1|output\(0) & ((\U_REG_OUTPORT1|output\(1)))) # (!\U_REG_OUTPORT1|output\(0) & (\U_REG_OUTPORT1|output\(2))))) # (!\U_REG_OUTPORT1|output\(3) & (\U_REG_OUTPORT1|output\(2) & 
-- (\U_REG_OUTPORT1|output\(0) $ (\U_REG_OUTPORT1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT1|output\(3),
	datab => \U_REG_OUTPORT1|output\(2),
	datac => \U_REG_OUTPORT1|output\(0),
	datad => \U_REG_OUTPORT1|output\(1),
	combout => \U_LED0|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y21_N22
\U_LED0|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|Mux0~0_combout\ = (\U_REG_OUTPORT1|output\(2) & (!\U_REG_OUTPORT1|output\(1) & (\U_REG_OUTPORT1|output\(0) $ (!\U_REG_OUTPORT1|output\(3))))) # (!\U_REG_OUTPORT1|output\(2) & (\U_REG_OUTPORT1|output\(0) & (\U_REG_OUTPORT1|output\(3) $ 
-- (!\U_REG_OUTPORT1|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT1|output\(2),
	datab => \U_REG_OUTPORT1|output\(0),
	datac => \U_REG_OUTPORT1|output\(3),
	datad => \U_REG_OUTPORT1|output\(1),
	combout => \U_LED0|Mux0~0_combout\);

-- Location: FF_X27_Y21_N7
\U_REG_OUTPORT1|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM_OUTPUT|output[7]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_DECODER_SMALL8|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_OUTPORT1|output\(7));

-- Location: FF_X27_Y21_N29
\U_REG_OUTPORT1|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM_OUTPUT|output[6]~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_DECODER_SMALL8|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_OUTPORT1|output\(6));

-- Location: FF_X27_Y21_N27
\U_REG_OUTPORT1|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM_OUTPUT|output[5]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_DECODER_SMALL8|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_OUTPORT1|output\(5));

-- Location: FF_X27_Y21_N25
\U_REG_OUTPORT1|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM_OUTPUT|output[4]~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_DECODER_SMALL8|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_OUTPORT1|output\(4));

-- Location: LCCOMB_X27_Y21_N0
\U_LED1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|Mux6~0_combout\ = (\U_REG_OUTPORT1|output\(4) & ((\U_REG_OUTPORT1|output\(7)) # (\U_REG_OUTPORT1|output\(6) $ (\U_REG_OUTPORT1|output\(5))))) # (!\U_REG_OUTPORT1|output\(4) & ((\U_REG_OUTPORT1|output\(5)) # (\U_REG_OUTPORT1|output\(7) $ 
-- (\U_REG_OUTPORT1|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT1|output\(7),
	datab => \U_REG_OUTPORT1|output\(6),
	datac => \U_REG_OUTPORT1|output\(5),
	datad => \U_REG_OUTPORT1|output\(4),
	combout => \U_LED1|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y21_N2
\U_LED1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|Mux5~0_combout\ = (\U_REG_OUTPORT1|output\(6) & (\U_REG_OUTPORT1|output\(4) & (\U_REG_OUTPORT1|output\(7) $ (\U_REG_OUTPORT1|output\(5))))) # (!\U_REG_OUTPORT1|output\(6) & (!\U_REG_OUTPORT1|output\(7) & ((\U_REG_OUTPORT1|output\(5)) # 
-- (\U_REG_OUTPORT1|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT1|output\(7),
	datab => \U_REG_OUTPORT1|output\(6),
	datac => \U_REG_OUTPORT1|output\(5),
	datad => \U_REG_OUTPORT1|output\(4),
	combout => \U_LED1|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y21_N12
\U_LED1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|Mux4~0_combout\ = (\U_REG_OUTPORT1|output\(5) & (!\U_REG_OUTPORT1|output\(7) & ((\U_REG_OUTPORT1|output\(4))))) # (!\U_REG_OUTPORT1|output\(5) & ((\U_REG_OUTPORT1|output\(6) & (!\U_REG_OUTPORT1|output\(7))) # (!\U_REG_OUTPORT1|output\(6) & 
-- ((\U_REG_OUTPORT1|output\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT1|output\(7),
	datab => \U_REG_OUTPORT1|output\(6),
	datac => \U_REG_OUTPORT1|output\(5),
	datad => \U_REG_OUTPORT1|output\(4),
	combout => \U_LED1|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y21_N6
\U_LED1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|Mux3~0_combout\ = (\U_REG_OUTPORT1|output\(4) & (\U_REG_OUTPORT1|output\(5) $ ((!\U_REG_OUTPORT1|output\(6))))) # (!\U_REG_OUTPORT1|output\(4) & ((\U_REG_OUTPORT1|output\(5) & (!\U_REG_OUTPORT1|output\(6) & \U_REG_OUTPORT1|output\(7))) # 
-- (!\U_REG_OUTPORT1|output\(5) & (\U_REG_OUTPORT1|output\(6) & !\U_REG_OUTPORT1|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT1|output\(5),
	datab => \U_REG_OUTPORT1|output\(6),
	datac => \U_REG_OUTPORT1|output\(7),
	datad => \U_REG_OUTPORT1|output\(4),
	combout => \U_LED1|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y21_N24
\U_LED1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|Mux2~0_combout\ = (\U_REG_OUTPORT1|output\(6) & (\U_REG_OUTPORT1|output\(7) & ((\U_REG_OUTPORT1|output\(5)) # (!\U_REG_OUTPORT1|output\(4))))) # (!\U_REG_OUTPORT1|output\(6) & (\U_REG_OUTPORT1|output\(5) & (!\U_REG_OUTPORT1|output\(4) & 
-- !\U_REG_OUTPORT1|output\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT1|output\(5),
	datab => \U_REG_OUTPORT1|output\(6),
	datac => \U_REG_OUTPORT1|output\(4),
	datad => \U_REG_OUTPORT1|output\(7),
	combout => \U_LED1|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y21_N26
\U_LED1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|Mux1~0_combout\ = (\U_REG_OUTPORT1|output\(7) & ((\U_REG_OUTPORT1|output\(4) & ((\U_REG_OUTPORT1|output\(5)))) # (!\U_REG_OUTPORT1|output\(4) & (\U_REG_OUTPORT1|output\(6))))) # (!\U_REG_OUTPORT1|output\(7) & (\U_REG_OUTPORT1|output\(6) & 
-- (\U_REG_OUTPORT1|output\(5) $ (\U_REG_OUTPORT1|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT1|output\(7),
	datab => \U_REG_OUTPORT1|output\(6),
	datac => \U_REG_OUTPORT1|output\(5),
	datad => \U_REG_OUTPORT1|output\(4),
	combout => \U_LED1|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y21_N28
\U_LED1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|Mux0~0_combout\ = (\U_REG_OUTPORT1|output\(6) & (!\U_REG_OUTPORT1|output\(5) & (\U_REG_OUTPORT1|output\(4) $ (!\U_REG_OUTPORT1|output\(7))))) # (!\U_REG_OUTPORT1|output\(6) & (\U_REG_OUTPORT1|output\(4) & (\U_REG_OUTPORT1|output\(5) $ 
-- (!\U_REG_OUTPORT1|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT1|output\(5),
	datab => \U_REG_OUTPORT1|output\(4),
	datac => \U_REG_OUTPORT1|output\(6),
	datad => \U_REG_OUTPORT1|output\(7),
	combout => \U_LED1|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y21_N2
\U_DECODER_SMALL8|outport0_en\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_DECODER_SMALL8|outport0_en~combout\ = (\U_DECODER_SMALL8|Equal0~4_combout\ & ((\U_CPU|U_controller|state.Call_2~q\) # ((\U_CPU|U_controller|state.STAA_3~q\) # (\U_CPU|U_controller|state.Call_4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CPU|U_controller|state.Call_2~q\,
	datab => \U_CPU|U_controller|state.STAA_3~q\,
	datac => \U_CPU|U_controller|state.Call_4~q\,
	datad => \U_DECODER_SMALL8|Equal0~4_combout\,
	combout => \U_DECODER_SMALL8|outport0_en~combout\);

-- Location: FF_X21_Y21_N27
\U_REG_OUTPORT0|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM_OUTPUT|output[1]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_DECODER_SMALL8|outport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_OUTPORT0|output\(1));

-- Location: FF_X21_Y21_N9
\U_REG_OUTPORT0|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM_OUTPUT|output[0]~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_DECODER_SMALL8|outport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_OUTPORT0|output\(0));

-- Location: FF_X21_Y21_N31
\U_REG_OUTPORT0|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM_OUTPUT|output[3]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_DECODER_SMALL8|outport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_OUTPORT0|output\(3));

-- Location: FF_X21_Y21_N21
\U_REG_OUTPORT0|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM_OUTPUT|output[2]~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \U_DECODER_SMALL8|outport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_OUTPORT0|output\(2));

-- Location: LCCOMB_X21_Y21_N0
\U_LED2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux6~0_combout\ = (\U_REG_OUTPORT0|output\(0) & ((\U_REG_OUTPORT0|output\(3)) # (\U_REG_OUTPORT0|output\(1) $ (\U_REG_OUTPORT0|output\(2))))) # (!\U_REG_OUTPORT0|output\(0) & ((\U_REG_OUTPORT0|output\(1)) # (\U_REG_OUTPORT0|output\(3) $ 
-- (\U_REG_OUTPORT0|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT0|output\(1),
	datab => \U_REG_OUTPORT0|output\(0),
	datac => \U_REG_OUTPORT0|output\(3),
	datad => \U_REG_OUTPORT0|output\(2),
	combout => \U_LED2|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y21_N18
\U_LED2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux5~0_combout\ = (\U_REG_OUTPORT0|output\(1) & (!\U_REG_OUTPORT0|output\(3) & ((\U_REG_OUTPORT0|output\(0)) # (!\U_REG_OUTPORT0|output\(2))))) # (!\U_REG_OUTPORT0|output\(1) & (\U_REG_OUTPORT0|output\(0) & (\U_REG_OUTPORT0|output\(3) $ 
-- (!\U_REG_OUTPORT0|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT0|output\(1),
	datab => \U_REG_OUTPORT0|output\(0),
	datac => \U_REG_OUTPORT0|output\(3),
	datad => \U_REG_OUTPORT0|output\(2),
	combout => \U_LED2|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y21_N28
\U_LED2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux4~0_combout\ = (\U_REG_OUTPORT0|output\(1) & (\U_REG_OUTPORT0|output\(0) & (!\U_REG_OUTPORT0|output\(3)))) # (!\U_REG_OUTPORT0|output\(1) & ((\U_REG_OUTPORT0|output\(2) & ((!\U_REG_OUTPORT0|output\(3)))) # (!\U_REG_OUTPORT0|output\(2) & 
-- (\U_REG_OUTPORT0|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT0|output\(1),
	datab => \U_REG_OUTPORT0|output\(0),
	datac => \U_REG_OUTPORT0|output\(3),
	datad => \U_REG_OUTPORT0|output\(2),
	combout => \U_LED2|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y21_N22
\U_LED2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux3~0_combout\ = (\U_REG_OUTPORT0|output\(0) & (\U_REG_OUTPORT0|output\(1) $ (((!\U_REG_OUTPORT0|output\(2)))))) # (!\U_REG_OUTPORT0|output\(0) & ((\U_REG_OUTPORT0|output\(1) & (\U_REG_OUTPORT0|output\(3) & !\U_REG_OUTPORT0|output\(2))) # 
-- (!\U_REG_OUTPORT0|output\(1) & (!\U_REG_OUTPORT0|output\(3) & \U_REG_OUTPORT0|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT0|output\(1),
	datab => \U_REG_OUTPORT0|output\(0),
	datac => \U_REG_OUTPORT0|output\(3),
	datad => \U_REG_OUTPORT0|output\(2),
	combout => \U_LED2|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y21_N24
\U_LED2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux2~0_combout\ = (\U_REG_OUTPORT0|output\(3) & (\U_REG_OUTPORT0|output\(2) & ((\U_REG_OUTPORT0|output\(1)) # (!\U_REG_OUTPORT0|output\(0))))) # (!\U_REG_OUTPORT0|output\(3) & (\U_REG_OUTPORT0|output\(1) & (!\U_REG_OUTPORT0|output\(0) & 
-- !\U_REG_OUTPORT0|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT0|output\(1),
	datab => \U_REG_OUTPORT0|output\(0),
	datac => \U_REG_OUTPORT0|output\(3),
	datad => \U_REG_OUTPORT0|output\(2),
	combout => \U_LED2|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y21_N26
\U_LED2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux1~0_combout\ = (\U_REG_OUTPORT0|output\(3) & ((\U_REG_OUTPORT0|output\(0) & (\U_REG_OUTPORT0|output\(1))) # (!\U_REG_OUTPORT0|output\(0) & ((\U_REG_OUTPORT0|output\(2)))))) # (!\U_REG_OUTPORT0|output\(3) & (\U_REG_OUTPORT0|output\(2) & 
-- (\U_REG_OUTPORT0|output\(0) $ (\U_REG_OUTPORT0|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT0|output\(3),
	datab => \U_REG_OUTPORT0|output\(0),
	datac => \U_REG_OUTPORT0|output\(1),
	datad => \U_REG_OUTPORT0|output\(2),
	combout => \U_LED2|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y21_N20
\U_LED2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux0~0_combout\ = (\U_REG_OUTPORT0|output\(3) & (\U_REG_OUTPORT0|output\(0) & (\U_REG_OUTPORT0|output\(2) $ (\U_REG_OUTPORT0|output\(1))))) # (!\U_REG_OUTPORT0|output\(3) & (!\U_REG_OUTPORT0|output\(1) & (\U_REG_OUTPORT0|output\(0) $ 
-- (\U_REG_OUTPORT0|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT0|output\(3),
	datab => \U_REG_OUTPORT0|output\(0),
	datac => \U_REG_OUTPORT0|output\(2),
	datad => \U_REG_OUTPORT0|output\(1),
	combout => \U_LED2|Mux0~0_combout\);

-- Location: FF_X26_Y21_N27
\U_REG_OUTPORT0|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM_OUTPUT|output[5]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_DECODER_SMALL8|outport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_OUTPORT0|output\(5));

-- Location: FF_X26_Y21_N5
\U_REG_OUTPORT0|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM_OUTPUT|output[6]~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_DECODER_SMALL8|outport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_OUTPORT0|output\(6));

-- Location: FF_X26_Y21_N23
\U_REG_OUTPORT0|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM_OUTPUT|output[7]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_DECODER_SMALL8|outport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_OUTPORT0|output\(7));

-- Location: FF_X26_Y21_N1
\U_REG_OUTPORT0|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM_OUTPUT|output[4]~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \U_DECODER_SMALL8|outport0_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_OUTPORT0|output\(4));

-- Location: LCCOMB_X26_Y21_N8
\U_LED3|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux6~0_combout\ = (\U_REG_OUTPORT0|output\(4) & ((\U_REG_OUTPORT0|output\(7)) # (\U_REG_OUTPORT0|output\(5) $ (\U_REG_OUTPORT0|output\(6))))) # (!\U_REG_OUTPORT0|output\(4) & ((\U_REG_OUTPORT0|output\(5)) # (\U_REG_OUTPORT0|output\(6) $ 
-- (\U_REG_OUTPORT0|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT0|output\(5),
	datab => \U_REG_OUTPORT0|output\(6),
	datac => \U_REG_OUTPORT0|output\(7),
	datad => \U_REG_OUTPORT0|output\(4),
	combout => \U_LED3|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y21_N18
\U_LED3|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux5~0_combout\ = (\U_REG_OUTPORT0|output\(5) & (!\U_REG_OUTPORT0|output\(7) & ((\U_REG_OUTPORT0|output\(4)) # (!\U_REG_OUTPORT0|output\(6))))) # (!\U_REG_OUTPORT0|output\(5) & (\U_REG_OUTPORT0|output\(4) & (\U_REG_OUTPORT0|output\(6) $ 
-- (!\U_REG_OUTPORT0|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT0|output\(5),
	datab => \U_REG_OUTPORT0|output\(6),
	datac => \U_REG_OUTPORT0|output\(7),
	datad => \U_REG_OUTPORT0|output\(4),
	combout => \U_LED3|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y21_N12
\U_LED3|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux4~0_combout\ = (\U_REG_OUTPORT0|output\(5) & (((!\U_REG_OUTPORT0|output\(7) & \U_REG_OUTPORT0|output\(4))))) # (!\U_REG_OUTPORT0|output\(5) & ((\U_REG_OUTPORT0|output\(6) & (!\U_REG_OUTPORT0|output\(7))) # (!\U_REG_OUTPORT0|output\(6) & 
-- ((\U_REG_OUTPORT0|output\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT0|output\(5),
	datab => \U_REG_OUTPORT0|output\(6),
	datac => \U_REG_OUTPORT0|output\(7),
	datad => \U_REG_OUTPORT0|output\(4),
	combout => \U_LED3|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y21_N30
\U_LED3|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux3~0_combout\ = (\U_REG_OUTPORT0|output\(4) & (\U_REG_OUTPORT0|output\(5) $ ((!\U_REG_OUTPORT0|output\(6))))) # (!\U_REG_OUTPORT0|output\(4) & ((\U_REG_OUTPORT0|output\(5) & (!\U_REG_OUTPORT0|output\(6) & \U_REG_OUTPORT0|output\(7))) # 
-- (!\U_REG_OUTPORT0|output\(5) & (\U_REG_OUTPORT0|output\(6) & !\U_REG_OUTPORT0|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT0|output\(5),
	datab => \U_REG_OUTPORT0|output\(6),
	datac => \U_REG_OUTPORT0|output\(7),
	datad => \U_REG_OUTPORT0|output\(4),
	combout => \U_LED3|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y23_N24
\U_LED3|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux2~0_combout\ = (\U_REG_OUTPORT0|output\(7) & (\U_REG_OUTPORT0|output\(6) & ((\U_REG_OUTPORT0|output\(5)) # (!\U_REG_OUTPORT0|output\(4))))) # (!\U_REG_OUTPORT0|output\(7) & (\U_REG_OUTPORT0|output\(5) & (!\U_REG_OUTPORT0|output\(6) & 
-- !\U_REG_OUTPORT0|output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT0|output\(7),
	datab => \U_REG_OUTPORT0|output\(5),
	datac => \U_REG_OUTPORT0|output\(6),
	datad => \U_REG_OUTPORT0|output\(4),
	combout => \U_LED3|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y23_N2
\U_LED3|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux1~0_combout\ = (\U_REG_OUTPORT0|output\(7) & ((\U_REG_OUTPORT0|output\(4) & (\U_REG_OUTPORT0|output\(5))) # (!\U_REG_OUTPORT0|output\(4) & ((\U_REG_OUTPORT0|output\(6)))))) # (!\U_REG_OUTPORT0|output\(7) & (\U_REG_OUTPORT0|output\(6) & 
-- (\U_REG_OUTPORT0|output\(5) $ (\U_REG_OUTPORT0|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT0|output\(7),
	datab => \U_REG_OUTPORT0|output\(5),
	datac => \U_REG_OUTPORT0|output\(6),
	datad => \U_REG_OUTPORT0|output\(4),
	combout => \U_LED3|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y23_N4
\U_LED3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux0~0_combout\ = (\U_REG_OUTPORT0|output\(7) & (\U_REG_OUTPORT0|output\(4) & (\U_REG_OUTPORT0|output\(5) $ (\U_REG_OUTPORT0|output\(6))))) # (!\U_REG_OUTPORT0|output\(7) & (!\U_REG_OUTPORT0|output\(5) & (\U_REG_OUTPORT0|output\(6) $ 
-- (\U_REG_OUTPORT0|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REG_OUTPORT0|output\(7),
	datab => \U_REG_OUTPORT0|output\(5),
	datac => \U_REG_OUTPORT0|output\(6),
	datad => \U_REG_OUTPORT0|output\(4),
	combout => \U_LED3|Mux0~0_combout\);

ww_led0(0) <= \led0[0]~output_o\;

ww_led0(1) <= \led0[1]~output_o\;

ww_led0(2) <= \led0[2]~output_o\;

ww_led0(3) <= \led0[3]~output_o\;

ww_led0(4) <= \led0[4]~output_o\;

ww_led0(5) <= \led0[5]~output_o\;

ww_led0(6) <= \led0[6]~output_o\;

ww_led1(0) <= \led1[0]~output_o\;

ww_led1(1) <= \led1[1]~output_o\;

ww_led1(2) <= \led1[2]~output_o\;

ww_led1(3) <= \led1[3]~output_o\;

ww_led1(4) <= \led1[4]~output_o\;

ww_led1(5) <= \led1[5]~output_o\;

ww_led1(6) <= \led1[6]~output_o\;

ww_led2(0) <= \led2[0]~output_o\;

ww_led2(1) <= \led2[1]~output_o\;

ww_led2(2) <= \led2[2]~output_o\;

ww_led2(3) <= \led2[3]~output_o\;

ww_led2(4) <= \led2[4]~output_o\;

ww_led2(5) <= \led2[5]~output_o\;

ww_led2(6) <= \led2[6]~output_o\;

ww_led3(0) <= \led3[0]~output_o\;

ww_led3(1) <= \led3[1]~output_o\;

ww_led3(2) <= \led3[2]~output_o\;

ww_led3(3) <= \led3[3]~output_o\;

ww_led3(4) <= \led3[4]~output_o\;

ww_led3(5) <= \led3[5]~output_o\;

ww_led3(6) <= \led3[6]~output_o\;
END structure;


