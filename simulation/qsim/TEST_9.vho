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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "01/13/2022 18:52:43"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SAMPLE IS
    PORT (
	clk : IN std_logic;
	button1 : IN std_logic;
	button2 : IN std_logic;
	button3 : IN std_logic;
	button4 : IN std_logic;
	suwak1 : IN std_logic;
	suwak2 : IN std_logic;
	suwak3 : IN std_logic;
	suwak4 : IN std_logic;
	dioda1 : OUT std_logic;
	dioda2 : OUT std_logic;
	dioda3 : OUT std_logic;
	dioda4 : OUT std_logic;
	suwak5 : IN std_logic;
	suwak6 : IN std_logic;
	suwak7 : IN std_logic;
	suwak8 : IN std_logic;
	suwak9 : IN std_logic;
	suwak10 : IN std_logic;
	dioda5 : OUT std_logic;
	dioda6 : OUT std_logic;
	dioda7 : OUT std_logic;
	dioda8 : OUT std_logic;
	dioda9 : OUT std_logic;
	dioda10 : OUT std_logic;
	Display_1 : OUT std_logic_vector(3 DOWNTO 0);
	Display_2 : OUT std_logic_vector(7 DOWNTO 0);
	Display_3 : OUT std_logic_vector(3 DOWNTO 0);
	Display_4 : OUT std_logic_vector(7 DOWNTO 0);
	Display_1_true : OUT std_logic_vector(7 DOWNTO 0);
	Display_3_true : OUT std_logic_vector(7 DOWNTO 0);
	output : OUT std_logic_vector(1 DOWNTO 0)
	);
END SAMPLE;

-- Design Ports Information
-- dioda1	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dioda2	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dioda3	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dioda4	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dioda5	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dioda6	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dioda7	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dioda8	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dioda9	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dioda10	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_1[0]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_1[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_1[2]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_1[3]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_2[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_2[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_2[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_2[3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_2[4]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_2[5]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_2[6]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_2[7]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_3[0]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_3[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_3[2]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_3[3]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_4[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_4[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_4[2]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_4[3]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_4[4]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_4[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_4[6]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_4[7]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_1_true[0]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_1_true[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_1_true[2]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_1_true[3]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_1_true[4]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_1_true[5]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_1_true[6]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_1_true[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_3_true[0]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_3_true[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_3_true[2]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_3_true[3]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_3_true[4]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_3_true[5]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_3_true[6]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display_3_true[7]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- suwak1	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- suwak2	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- suwak3	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- suwak4	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- suwak5	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- suwak6	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- suwak7	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- suwak8	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- suwak9	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- suwak10	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button3	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button4	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button1	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button2	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SAMPLE IS
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
SIGNAL ww_button1 : std_logic;
SIGNAL ww_button2 : std_logic;
SIGNAL ww_button3 : std_logic;
SIGNAL ww_button4 : std_logic;
SIGNAL ww_suwak1 : std_logic;
SIGNAL ww_suwak2 : std_logic;
SIGNAL ww_suwak3 : std_logic;
SIGNAL ww_suwak4 : std_logic;
SIGNAL ww_dioda1 : std_logic;
SIGNAL ww_dioda2 : std_logic;
SIGNAL ww_dioda3 : std_logic;
SIGNAL ww_dioda4 : std_logic;
SIGNAL ww_suwak5 : std_logic;
SIGNAL ww_suwak6 : std_logic;
SIGNAL ww_suwak7 : std_logic;
SIGNAL ww_suwak8 : std_logic;
SIGNAL ww_suwak9 : std_logic;
SIGNAL ww_suwak10 : std_logic;
SIGNAL ww_dioda5 : std_logic;
SIGNAL ww_dioda6 : std_logic;
SIGNAL ww_dioda7 : std_logic;
SIGNAL ww_dioda8 : std_logic;
SIGNAL ww_dioda9 : std_logic;
SIGNAL ww_dioda10 : std_logic;
SIGNAL ww_Display_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Display_2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Display_3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Display_4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Display_1_true : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Display_3_true : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \suwak1~input_o\ : std_logic;
SIGNAL \suwak2~input_o\ : std_logic;
SIGNAL \suwak3~input_o\ : std_logic;
SIGNAL \suwak4~input_o\ : std_logic;
SIGNAL \suwak5~input_o\ : std_logic;
SIGNAL \suwak6~input_o\ : std_logic;
SIGNAL \suwak7~input_o\ : std_logic;
SIGNAL \suwak8~input_o\ : std_logic;
SIGNAL \suwak9~input_o\ : std_logic;
SIGNAL \suwak10~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \button2~input_o\ : std_logic;
SIGNAL \button2_r[0]~feeder_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \button1~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \button4~input_o\ : std_logic;
SIGNAL \button4~inputCLKENA0_outclk\ : std_logic;
SIGNAL \sigDEncryption~0_combout\ : std_logic;
SIGNAL \output_i~5_combout\ : std_logic;
SIGNAL \button3~input_o\ : std_logic;
SIGNAL \button3_r[1]~feeder_combout\ : std_logic;
SIGNAL \button4_r[0]~feeder_combout\ : std_logic;
SIGNAL \output_i[0]~1_combout\ : std_logic;
SIGNAL \sigDEncryption~1_combout\ : std_logic;
SIGNAL \output_i~4_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \sigDEncryption~2_combout\ : std_logic;
SIGNAL \output_i~2_combout\ : std_logic;
SIGNAL \output_i[0]~0_combout\ : std_logic;
SIGNAL \sigDEncryption~3_combout\ : std_logic;
SIGNAL \output_i~3_combout\ : std_logic;
SIGNAL \button3~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Currstate~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \feedback~q\ : std_logic;
SIGNAL \Currstate~1_combout\ : std_logic;
SIGNAL \sigDisplay2[1]~DUPLICATE_q\ : std_logic;
SIGNAL \output_display_2[1]~0_combout\ : std_logic;
SIGNAL \output_display_2[1]~1_combout\ : std_logic;
SIGNAL \output_display_2[1]~2_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \output_display_2[2]~feeder_combout\ : std_logic;
SIGNAL \sigDisplay2[3]~1_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \sigDisplay2[6]~feeder_combout\ : std_logic;
SIGNAL \sigEncryption~0_combout\ : std_logic;
SIGNAL \sigEncryption~1_combout\ : std_logic;
SIGNAL \sigEncryption~2_combout\ : std_logic;
SIGNAL \sigEncryption~3_combout\ : std_logic;
SIGNAL \output_display_4[1]~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \output[0]~reg0_q\ : std_logic;
SIGNAL \output[1]~reg0_q\ : std_logic;
SIGNAL output_display_2 : std_logic_vector(7 DOWNTO 0);
SIGNAL output_display_3 : std_logic_vector(3 DOWNTO 0);
SIGNAL output_i : std_logic_vector(3 DOWNTO 0);
SIGNAL output_display_4 : std_logic_vector(7 DOWNTO 0);
SIGNAL sigDEncryption : std_logic_vector(3 DOWNTO 0);
SIGNAL button1_r : std_logic_vector(2 DOWNTO 0);
SIGNAL button2_r : std_logic_vector(2 DOWNTO 0);
SIGNAL button3_r : std_logic_vector(2 DOWNTO 0);
SIGNAL button4_r : std_logic_vector(2 DOWNTO 0);
SIGNAL sigDisplay2 : std_logic_vector(7 DOWNTO 0);
SIGNAL sigEncryption : std_logic_vector(3 DOWNTO 0);
SIGNAL Currstate : std_logic_vector(1 DOWNTO 0);
SIGNAL Nextstate : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_suwak1~input_o\ : std_logic;
SIGNAL ALT_INV_Nextstate : std_logic_vector(1 DOWNTO 1);
SIGNAL ALT_INV_button3_r : std_logic_vector(2 DOWNTO 0);
SIGNAL ALT_INV_Currstate : std_logic_vector(1 DOWNTO 0);
SIGNAL ALT_INV_sigDisplay2 : std_logic_vector(2 DOWNTO 1);
SIGNAL \ALT_INV_output_display_2[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_output_display_2[1]~0_combout\ : std_logic;
SIGNAL ALT_INV_sigDEncryption : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL ALT_INV_button4_r : std_logic_vector(2 DOWNTO 1);
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL ALT_INV_button2_r : std_logic_vector(2 DOWNTO 1);
SIGNAL \ALT_INV_output_i[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL ALT_INV_button1_r : std_logic_vector(2 DOWNTO 1);
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL ALT_INV_output_i : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_output_display_3 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_button2~input_o\ : std_logic;
SIGNAL \ALT_INV_button1~input_o\ : std_logic;
SIGNAL \ALT_INV_button4~input_o\ : std_logic;
SIGNAL \ALT_INV_suwak10~input_o\ : std_logic;
SIGNAL \ALT_INV_suwak9~input_o\ : std_logic;
SIGNAL \ALT_INV_suwak8~input_o\ : std_logic;
SIGNAL \ALT_INV_suwak7~input_o\ : std_logic;
SIGNAL \ALT_INV_suwak6~input_o\ : std_logic;
SIGNAL \ALT_INV_suwak5~input_o\ : std_logic;
SIGNAL \ALT_INV_suwak4~input_o\ : std_logic;
SIGNAL \ALT_INV_suwak3~input_o\ : std_logic;
SIGNAL \ALT_INV_suwak2~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_button1 <= button1;
ww_button2 <= button2;
ww_button3 <= button3;
ww_button4 <= button4;
ww_suwak1 <= suwak1;
ww_suwak2 <= suwak2;
ww_suwak3 <= suwak3;
ww_suwak4 <= suwak4;
dioda1 <= ww_dioda1;
dioda2 <= ww_dioda2;
dioda3 <= ww_dioda3;
dioda4 <= ww_dioda4;
ww_suwak5 <= suwak5;
ww_suwak6 <= suwak6;
ww_suwak7 <= suwak7;
ww_suwak8 <= suwak8;
ww_suwak9 <= suwak9;
ww_suwak10 <= suwak10;
dioda5 <= ww_dioda5;
dioda6 <= ww_dioda6;
dioda7 <= ww_dioda7;
dioda8 <= ww_dioda8;
dioda9 <= ww_dioda9;
dioda10 <= ww_dioda10;
Display_1 <= ww_Display_1;
Display_2 <= ww_Display_2;
Display_3 <= ww_Display_3;
Display_4 <= ww_Display_4;
Display_1_true <= ww_Display_1_true;
Display_3_true <= ww_Display_3_true;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_suwak1~input_o\ <= NOT \suwak1~input_o\;
ALT_INV_Nextstate(1) <= NOT Nextstate(1);
ALT_INV_button3_r(0) <= NOT button3_r(0);
ALT_INV_Currstate(1) <= NOT Currstate(1);
ALT_INV_Currstate(0) <= NOT Currstate(0);
ALT_INV_sigDisplay2(2) <= NOT sigDisplay2(2);
\ALT_INV_output_display_2[1]~1_combout\ <= NOT \output_display_2[1]~1_combout\;
\ALT_INV_output_display_2[1]~0_combout\ <= NOT \output_display_2[1]~0_combout\;
ALT_INV_sigDisplay2(1) <= NOT sigDisplay2(1);
ALT_INV_sigDEncryption(3) <= NOT sigDEncryption(3);
ALT_INV_sigDEncryption(2) <= NOT sigDEncryption(2);
\ALT_INV_Add0~0_combout\ <= NOT \Add0~0_combout\;
ALT_INV_sigDEncryption(1) <= NOT sigDEncryption(1);
ALT_INV_button4_r(2) <= NOT button4_r(2);
ALT_INV_button4_r(1) <= NOT button4_r(1);
ALT_INV_button3_r(2) <= NOT button3_r(2);
ALT_INV_button3_r(1) <= NOT button3_r(1);
ALT_INV_sigDEncryption(0) <= NOT sigDEncryption(0);
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
ALT_INV_button2_r(2) <= NOT button2_r(2);
ALT_INV_button2_r(1) <= NOT button2_r(1);
\ALT_INV_output_i[0]~0_combout\ <= NOT \output_i[0]~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_button1_r(2) <= NOT button1_r(2);
ALT_INV_button1_r(1) <= NOT button1_r(1);
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
ALT_INV_output_i(3) <= NOT output_i(3);
ALT_INV_output_i(2) <= NOT output_i(2);
ALT_INV_output_i(1) <= NOT output_i(1);
ALT_INV_output_i(0) <= NOT output_i(0);
ALT_INV_output_display_3(3) <= NOT output_display_3(3);
ALT_INV_output_display_3(2) <= NOT output_display_3(2);
ALT_INV_output_display_3(1) <= NOT output_display_3(1);
ALT_INV_output_display_3(0) <= NOT output_display_3(0);
\ALT_INV_button2~input_o\ <= NOT \button2~input_o\;
\ALT_INV_button1~input_o\ <= NOT \button1~input_o\;
\ALT_INV_button4~input_o\ <= NOT \button4~input_o\;
\ALT_INV_suwak10~input_o\ <= NOT \suwak10~input_o\;
\ALT_INV_suwak9~input_o\ <= NOT \suwak9~input_o\;
\ALT_INV_suwak8~input_o\ <= NOT \suwak8~input_o\;
\ALT_INV_suwak7~input_o\ <= NOT \suwak7~input_o\;
\ALT_INV_suwak6~input_o\ <= NOT \suwak6~input_o\;
\ALT_INV_suwak5~input_o\ <= NOT \suwak5~input_o\;
\ALT_INV_suwak4~input_o\ <= NOT \suwak4~input_o\;
\ALT_INV_suwak3~input_o\ <= NOT \suwak3~input_o\;
\ALT_INV_suwak2~input_o\ <= NOT \suwak2~input_o\;

-- Location: IOOBUF_X89_Y4_N62
\dioda1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \suwak1~input_o\,
	devoe => ww_devoe,
	o => ww_dioda1);

-- Location: IOOBUF_X78_Y81_N36
\dioda2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \suwak2~input_o\,
	devoe => ww_devoe,
	o => ww_dioda2);

-- Location: IOOBUF_X88_Y81_N54
\dioda3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \suwak3~input_o\,
	devoe => ww_devoe,
	o => ww_dioda3);

-- Location: IOOBUF_X72_Y0_N36
\dioda4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \suwak4~input_o\,
	devoe => ww_devoe,
	o => ww_dioda4);

-- Location: IOOBUF_X82_Y81_N76
\dioda5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \suwak5~input_o\,
	devoe => ww_devoe,
	o => ww_dioda5);

-- Location: IOOBUF_X82_Y81_N93
\dioda6~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \suwak6~input_o\,
	devoe => ww_devoe,
	o => ww_dioda6);

-- Location: IOOBUF_X66_Y0_N42
\dioda7~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \suwak7~input_o\,
	devoe => ww_devoe,
	o => ww_dioda7);

-- Location: IOOBUF_X68_Y0_N19
\dioda8~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \suwak8~input_o\,
	devoe => ww_devoe,
	o => ww_dioda8);

-- Location: IOOBUF_X84_Y81_N19
\dioda9~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \suwak9~input_o\,
	devoe => ww_devoe,
	o => ww_dioda9);

-- Location: IOOBUF_X84_Y81_N36
\dioda10~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \suwak10~input_o\,
	devoe => ww_devoe,
	o => ww_dioda10);

-- Location: IOOBUF_X89_Y37_N5
\Display_1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => output_i(0),
	devoe => ww_devoe,
	o => ww_Display_1(0));

-- Location: IOOBUF_X89_Y36_N56
\Display_1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => output_i(1),
	devoe => ww_devoe,
	o => ww_Display_1(1));

-- Location: IOOBUF_X89_Y36_N39
\Display_1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => output_i(2),
	devoe => ww_devoe,
	o => ww_Display_1(2));

-- Location: IOOBUF_X89_Y36_N22
\Display_1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => output_i(3),
	devoe => ww_devoe,
	o => ww_Display_1(3));

-- Location: IOOBUF_X54_Y0_N36
\Display_2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Display_2(0));

-- Location: IOOBUF_X89_Y38_N56
\Display_2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => output_display_2(1),
	devoe => ww_devoe,
	o => ww_Display_2(1));

-- Location: IOOBUF_X89_Y37_N39
\Display_2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => output_display_2(2),
	devoe => ww_devoe,
	o => ww_Display_2(2));

-- Location: IOOBUF_X89_Y35_N96
\Display_2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => output_display_2(3),
	devoe => ww_devoe,
	o => ww_Display_2(3));

-- Location: IOOBUF_X70_Y0_N53
\Display_2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => output_display_2(4),
	devoe => ww_devoe,
	o => ww_Display_2(4));

-- Location: IOOBUF_X89_Y38_N22
\Display_2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => output_display_2(5),
	devoe => ww_devoe,
	o => ww_Display_2(5));

-- Location: IOOBUF_X89_Y9_N5
\Display_2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => output_display_2(6),
	devoe => ww_devoe,
	o => ww_Display_2(6));

-- Location: IOOBUF_X70_Y0_N19
\Display_2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => output_display_2(4),
	devoe => ww_devoe,
	o => ww_Display_2(7));

-- Location: IOOBUF_X89_Y8_N22
\Display_3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => output_display_3(0),
	devoe => ww_devoe,
	o => ww_Display_3(0));

-- Location: IOOBUF_X89_Y36_N5
\Display_3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => output_display_3(1),
	devoe => ww_devoe,
	o => ww_Display_3(1));

-- Location: IOOBUF_X89_Y6_N39
\Display_3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => output_display_3(2),
	devoe => ww_devoe,
	o => ww_Display_3(2));

-- Location: IOOBUF_X89_Y37_N22
\Display_3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => output_display_3(3),
	devoe => ww_devoe,
	o => ww_Display_3(3));

-- Location: IOOBUF_X36_Y81_N2
\Display_4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Display_4(0));

-- Location: IOOBUF_X68_Y0_N2
\Display_4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => output_display_4(1),
	devoe => ww_devoe,
	o => ww_Display_4(1));

-- Location: IOOBUF_X89_Y6_N5
\Display_4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => output_display_4(2),
	devoe => ww_devoe,
	o => ww_Display_4(2));

-- Location: IOOBUF_X89_Y6_N56
\Display_4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => output_display_4(2),
	devoe => ww_devoe,
	o => ww_Display_4(3));

-- Location: IOOBUF_X89_Y9_N39
\Display_4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => output_display_4(4),
	devoe => ww_devoe,
	o => ww_Display_4(4));

-- Location: IOOBUF_X68_Y0_N53
\Display_4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => output_display_4(1),
	devoe => ww_devoe,
	o => ww_Display_4(5));

-- Location: IOOBUF_X70_Y0_N2
\Display_4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => output_display_4(1),
	devoe => ww_devoe,
	o => ww_Display_4(6));

-- Location: IOOBUF_X64_Y0_N53
\Display_4[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Display_4(7));

-- Location: IOOBUF_X72_Y81_N19
\Display_1_true[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Display_1_true(0));

-- Location: IOOBUF_X89_Y37_N56
\Display_1_true[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_Display_1_true(1));

-- Location: IOOBUF_X72_Y0_N2
\Display_1_true[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_Display_1_true(2));

-- Location: IOOBUF_X89_Y38_N39
\Display_1_true[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_Display_1_true(3));

-- Location: IOOBUF_X86_Y81_N53
\Display_1_true[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_Display_1_true(4));

-- Location: IOOBUF_X86_Y81_N2
\Display_1_true[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_Display_1_true(5));

-- Location: IOOBUF_X86_Y81_N19
\Display_1_true[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_Display_1_true(6));

-- Location: IOOBUF_X89_Y38_N5
\Display_1_true[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_Display_1_true(7));

-- Location: IOOBUF_X86_Y81_N36
\Display_3_true[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Display_3_true(0));

-- Location: IOOBUF_X72_Y0_N53
\Display_3_true[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_Display_3_true(1));

-- Location: IOOBUF_X89_Y8_N5
\Display_3_true[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_Display_3_true(2));

-- Location: IOOBUF_X89_Y4_N45
\Display_3_true[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_Display_3_true(3));

-- Location: IOOBUF_X89_Y8_N39
\Display_3_true[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_Display_3_true(4));

-- Location: IOOBUF_X89_Y35_N79
\Display_3_true[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_Display_3_true(5));

-- Location: IOOBUF_X89_Y9_N56
\Display_3_true[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_Display_3_true(6));

-- Location: IOOBUF_X89_Y9_N22
\Display_3_true[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_Display_3_true(7));

-- Location: IOOBUF_X89_Y8_N56
\output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_output(0));

-- Location: IOOBUF_X89_Y4_N79
\output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_output(1));

-- Location: IOIBUF_X89_Y4_N95
\suwak1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_suwak1,
	o => \suwak1~input_o\);

-- Location: IOIBUF_X78_Y81_N52
\suwak2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_suwak2,
	o => \suwak2~input_o\);

-- Location: IOIBUF_X88_Y81_N19
\suwak3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_suwak3,
	o => \suwak3~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\suwak4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_suwak4,
	o => \suwak4~input_o\);

-- Location: IOIBUF_X82_Y81_N41
\suwak5~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_suwak5,
	o => \suwak5~input_o\);

-- Location: IOIBUF_X82_Y81_N58
\suwak6~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_suwak6,
	o => \suwak6~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\suwak7~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_suwak7,
	o => \suwak7~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\suwak8~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_suwak8,
	o => \suwak8~input_o\);

-- Location: IOIBUF_X84_Y81_N52
\suwak9~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_suwak9,
	o => \suwak9~input_o\);

-- Location: IOIBUF_X84_Y81_N1
\suwak10~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_suwak10,
	o => \suwak10~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X70_Y0_N35
\button2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button2,
	o => \button2~input_o\);

-- Location: LABCELL_X81_Y36_N0
\button2_r[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \button2_r[0]~feeder_combout\ = ( \button2~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_button2~input_o\,
	combout => \button2_r[0]~feeder_combout\);

-- Location: FF_X81_Y36_N1
\button2_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \button2_r[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button2_r(0));

-- Location: FF_X87_Y36_N44
\button2_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => button2_r(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button2_r(1));

-- Location: FF_X87_Y36_N41
\button2_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => button2_r(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button2_r(2));

-- Location: MLABCELL_X87_Y36_N51
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( button2_r(2) ) # ( !button2_r(2) & ( !button2_r(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_button2_r(1),
	dataf => ALT_INV_button2_r(2),
	combout => \Equal2~0_combout\);

-- Location: IOIBUF_X89_Y6_N21
\button1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button1,
	o => \button1~input_o\);

-- Location: FF_X88_Y36_N38
\button1_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \button1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button1_r(0));

-- Location: FF_X87_Y36_N26
\button1_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => button1_r(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button1_r(1));

-- Location: FF_X87_Y36_N17
\button1_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => button1_r(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button1_r(2));

-- Location: MLABCELL_X87_Y36_N21
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( button1_r(1) & ( !button1_r(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_button1_r(2),
	dataf => ALT_INV_button1_r(1),
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X89_Y35_N44
\button4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button4,
	o => \button4~input_o\);

-- Location: CLKCTRL_G11
\button4~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \button4~input_o\,
	outclk => \button4~inputCLKENA0_outclk\);

-- Location: LABCELL_X85_Y36_N42
\sigDEncryption~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sigDEncryption~0_combout\ = ( \suwak1~input_o\ & ( !\suwak10~input_o\ $ (!\suwak6~input_o\ $ (!\suwak5~input_o\)) ) ) # ( !\suwak1~input_o\ & ( !\suwak10~input_o\ $ (!\suwak6~input_o\ $ (\suwak5~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_suwak10~input_o\,
	datac => \ALT_INV_suwak6~input_o\,
	datad => \ALT_INV_suwak5~input_o\,
	dataf => \ALT_INV_suwak1~input_o\,
	combout => \sigDEncryption~0_combout\);

-- Location: FF_X85_Y36_N43
\sigDEncryption[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \button4~inputCLKENA0_outclk\,
	d => \sigDEncryption~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sigDEncryption(0));

-- Location: LABCELL_X85_Y36_N48
\output_i~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \output_i~5_combout\ = ( output_i(0) & ( sigDEncryption(0) & ( (\Equal2~0_combout\ & !\Equal0~0_combout\) ) ) ) # ( !output_i(0) & ( sigDEncryption(0) & ( (\Equal0~0_combout\) # (\Equal2~0_combout\) ) ) ) # ( !output_i(0) & ( !sigDEncryption(0) & ( 
-- \Equal0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000111111001111110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datae => ALT_INV_output_i(0),
	dataf => ALT_INV_sigDEncryption(0),
	combout => \output_i~5_combout\);

-- Location: IOIBUF_X89_Y35_N61
\button3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button3,
	o => \button3~input_o\);

-- Location: FF_X88_Y36_N40
\button3_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \button3~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button3_r(0));

-- Location: MLABCELL_X87_Y36_N0
\button3_r[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \button3_r[1]~feeder_combout\ = ( button3_r(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_button3_r(0),
	combout => \button3_r[1]~feeder_combout\);

-- Location: FF_X87_Y36_N2
\button3_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \button3_r[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button3_r(1));

-- Location: FF_X87_Y36_N47
\button3_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => button3_r(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button3_r(2));

-- Location: MLABCELL_X87_Y36_N27
\button4_r[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \button4_r[0]~feeder_combout\ = ( \button4~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_button4~input_o\,
	combout => \button4_r[0]~feeder_combout\);

-- Location: FF_X87_Y36_N29
\button4_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \button4_r[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button4_r(0));

-- Location: FF_X87_Y36_N5
\button4_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => button4_r(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button4_r(1));

-- Location: FF_X87_Y36_N14
\button4_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => button4_r(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button4_r(2));

-- Location: MLABCELL_X87_Y36_N36
\output_i[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \output_i[0]~1_combout\ = ( \Equal0~0_combout\ & ( \Equal2~0_combout\ ) ) # ( !\Equal0~0_combout\ & ( \Equal2~0_combout\ & ( (button4_r(1) & (!button4_r(2) & ((!button3_r(1)) # (button3_r(2))))) ) ) ) # ( \Equal0~0_combout\ & ( !\Equal2~0_combout\ ) ) # ( 
-- !\Equal0~0_combout\ & ( !\Equal2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001011000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_button3_r(1),
	datab => ALT_INV_button3_r(2),
	datac => ALT_INV_button4_r(1),
	datad => ALT_INV_button4_r(2),
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \output_i[0]~1_combout\);

-- Location: FF_X85_Y36_N50
\output_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \output_i~5_combout\,
	ena => \output_i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_i(0));

-- Location: LABCELL_X85_Y36_N21
\sigDEncryption~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sigDEncryption~1_combout\ = ( \suwak5~input_o\ & ( !\suwak6~input_o\ $ (!\suwak9~input_o\ $ (!\suwak2~input_o\)) ) ) # ( !\suwak5~input_o\ & ( !\suwak6~input_o\ $ (!\suwak9~input_o\ $ (\suwak2~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001100101101001011001101001011010011001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_suwak6~input_o\,
	datab => \ALT_INV_suwak9~input_o\,
	datac => \ALT_INV_suwak2~input_o\,
	datae => \ALT_INV_suwak5~input_o\,
	combout => \sigDEncryption~1_combout\);

-- Location: FF_X85_Y36_N23
\sigDEncryption[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \button4~inputCLKENA0_outclk\,
	d => \sigDEncryption~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sigDEncryption(1));

-- Location: LABCELL_X85_Y36_N9
\output_i~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \output_i~4_combout\ = ( sigDEncryption(1) & ( (!\Equal0~0_combout\ & (((\Equal2~0_combout\)))) # (\Equal0~0_combout\ & (!output_i(0) $ (((!output_i(1)))))) ) ) # ( !sigDEncryption(1) & ( (\Equal0~0_combout\ & (!output_i(0) $ (!output_i(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000110101001110100011010100111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_output_i(0),
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => ALT_INV_output_i(1),
	dataf => ALT_INV_sigDEncryption(1),
	combout => \output_i~4_combout\);

-- Location: FF_X85_Y36_N11
\output_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \output_i~4_combout\,
	ena => \output_i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_i(1));

-- Location: LABCELL_X85_Y36_N57
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( output_i(0) & ( output_i(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_output_i(1),
	dataf => ALT_INV_output_i(0),
	combout => \Add0~0_combout\);

-- Location: LABCELL_X85_Y36_N24
\sigDEncryption~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sigDEncryption~2_combout\ = ( \suwak3~input_o\ & ( !\suwak8~input_o\ $ (!\suwak5~input_o\ $ (!\suwak6~input_o\)) ) ) # ( !\suwak3~input_o\ & ( !\suwak8~input_o\ $ (!\suwak5~input_o\ $ (\suwak6~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_suwak8~input_o\,
	datac => \ALT_INV_suwak5~input_o\,
	datad => \ALT_INV_suwak6~input_o\,
	dataf => \ALT_INV_suwak3~input_o\,
	combout => \sigDEncryption~2_combout\);

-- Location: FF_X85_Y36_N25
\sigDEncryption[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \button4~inputCLKENA0_outclk\,
	d => \sigDEncryption~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sigDEncryption(2));

-- Location: LABCELL_X85_Y36_N54
\output_i~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \output_i~2_combout\ = ( sigDEncryption(2) & ( (!\Equal0~0_combout\ & (((\Equal2~0_combout\)))) # (\Equal0~0_combout\ & (!\Add0~0_combout\ $ (((!output_i(2)))))) ) ) # ( !sigDEncryption(2) & ( (\Equal0~0_combout\ & (!\Add0~0_combout\ $ (!output_i(2)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010000011011010011100001101101001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Add0~0_combout\,
	datac => \ALT_INV_Equal2~0_combout\,
	datad => ALT_INV_output_i(2),
	dataf => ALT_INV_sigDEncryption(2),
	combout => \output_i~2_combout\);

-- Location: FF_X85_Y36_N56
\output_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \output_i~2_combout\,
	ena => \output_i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_i(2));

-- Location: LABCELL_X85_Y36_N39
\output_i[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \output_i[0]~0_combout\ = ( output_i(0) & ( (output_i(1) & output_i(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_output_i(1),
	datad => ALT_INV_output_i(2),
	dataf => ALT_INV_output_i(0),
	combout => \output_i[0]~0_combout\);

-- Location: LABCELL_X85_Y36_N15
\sigDEncryption~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sigDEncryption~3_combout\ = ( \suwak5~input_o\ & ( \suwak7~input_o\ & ( !\suwak6~input_o\ $ (!\suwak4~input_o\) ) ) ) # ( !\suwak5~input_o\ & ( \suwak7~input_o\ & ( !\suwak6~input_o\ $ (\suwak4~input_o\) ) ) ) # ( \suwak5~input_o\ & ( !\suwak7~input_o\ & 
-- ( !\suwak6~input_o\ $ (\suwak4~input_o\) ) ) ) # ( !\suwak5~input_o\ & ( !\suwak7~input_o\ & ( !\suwak6~input_o\ $ (!\suwak4~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010110100101101001010101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_suwak6~input_o\,
	datac => \ALT_INV_suwak4~input_o\,
	datae => \ALT_INV_suwak5~input_o\,
	dataf => \ALT_INV_suwak7~input_o\,
	combout => \sigDEncryption~3_combout\);

-- Location: FF_X85_Y36_N17
\sigDEncryption[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \button4~inputCLKENA0_outclk\,
	d => \sigDEncryption~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sigDEncryption(3));

-- Location: LABCELL_X85_Y36_N36
\output_i~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \output_i~3_combout\ = ( sigDEncryption(3) & ( (!\Equal0~0_combout\ & (\Equal2~0_combout\)) # (\Equal0~0_combout\ & ((!\output_i[0]~0_combout\ $ (!output_i(3))))) ) ) # ( !sigDEncryption(3) & ( (\Equal0~0_combout\ & (!\output_i[0]~0_combout\ $ 
-- (!output_i(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110001010011010111000101001101011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_output_i[0]~0_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => ALT_INV_output_i(3),
	dataf => ALT_INV_sigDEncryption(3),
	combout => \output_i~3_combout\);

-- Location: FF_X85_Y36_N38
\output_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \output_i~3_combout\,
	ena => \output_i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_i(3));

-- Location: CLKCTRL_G8
\button3~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \button3~input_o\,
	outclk => \button3~inputCLKENA0_outclk\);

-- Location: FF_X88_Y36_N31
\sigDisplay2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \button3~inputCLKENA0_outclk\,
	asdata => Currstate(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sigDisplay2(1));

-- Location: LABCELL_X88_Y36_N57
\Currstate~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Currstate~0_combout\ = ( sigDisplay2(1) ) # ( !sigDisplay2(1) & ( \button1~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_button1~input_o\,
	dataf => ALT_INV_sigDisplay2(1),
	combout => \Currstate~0_combout\);

-- Location: FF_X88_Y36_N59
\Currstate[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \button3~inputCLKENA0_outclk\,
	d => \Currstate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Currstate(0));

-- Location: LABCELL_X88_Y36_N3
\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( Currstate(1) & ( !Currstate(0) ) ) # ( !Currstate(1) & ( Currstate(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Currstate(0),
	dataf => ALT_INV_Currstate(1),
	combout => \Mux20~0_combout\);

-- Location: FF_X88_Y36_N5
feedback : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \button3~inputCLKENA0_outclk\,
	d => \Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \feedback~q\);

-- Location: FF_X87_Y36_N55
\Nextstate[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \button3~inputCLKENA0_outclk\,
	asdata => \feedback~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Nextstate(1));

-- Location: LABCELL_X88_Y36_N24
\Currstate~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Currstate~1_combout\ = ( Nextstate(1) & ( !\button1~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_button1~input_o\,
	dataf => ALT_INV_Nextstate(1),
	combout => \Currstate~1_combout\);

-- Location: FF_X88_Y36_N26
\Currstate[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \button3~inputCLKENA0_outclk\,
	d => \Currstate~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Currstate(1));

-- Location: FF_X88_Y36_N32
\sigDisplay2[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \button3~inputCLKENA0_outclk\,
	asdata => Currstate(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sigDisplay2[1]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y36_N18
\output_display_2[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \output_display_2[1]~0_combout\ = ( button2_r(1) & ( (!button2_r(2)) # ((!button3_r(1)) # (button3_r(2))) ) ) # ( !button2_r(1) & ( (!button3_r(1)) # (button3_r(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001111111011111110111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_button2_r(2),
	datab => ALT_INV_button3_r(2),
	datac => ALT_INV_button3_r(1),
	dataf => ALT_INV_button2_r(1),
	combout => \output_display_2[1]~0_combout\);

-- Location: MLABCELL_X87_Y36_N9
\output_display_2[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \output_display_2[1]~1_combout\ = ( button2_r(2) & ( (!button3_r(1)) # (button3_r(2)) ) ) # ( !button2_r(2) & ( (!button2_r(1) & ((!button3_r(1)) # (button3_r(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000110000111100000011000011111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_button3_r(2),
	datac => ALT_INV_button2_r(1),
	datad => ALT_INV_button3_r(1),
	dataf => ALT_INV_button2_r(2),
	combout => \output_display_2[1]~1_combout\);

-- Location: MLABCELL_X87_Y36_N30
\output_display_2[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \output_display_2[1]~2_combout\ = (!\Equal0~0_combout\ & ((!\output_display_2[1]~1_combout\) # ((button4_r(1) & !button4_r(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001000000111100000100000011110000010000001111000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_button4_r(1),
	datab => ALT_INV_button4_r(2),
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_output_display_2[1]~1_combout\,
	combout => \output_display_2[1]~2_combout\);

-- Location: FF_X87_Y36_N8
\output_display_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sigDisplay2[1]~DUPLICATE_q\,
	sclr => \output_display_2[1]~0_combout\,
	sload => VCC,
	ena => \output_display_2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_display_2(1));

-- Location: LABCELL_X88_Y36_N54
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( !Currstate(0) & ( !Currstate(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Currstate(1),
	dataf => ALT_INV_Currstate(0),
	combout => \Mux14~0_combout\);

-- Location: FF_X88_Y36_N55
\sigDisplay2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \button3~inputCLKENA0_outclk\,
	d => \Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sigDisplay2(2));

-- Location: MLABCELL_X87_Y36_N6
\output_display_2[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output_display_2[2]~feeder_combout\ = ( sigDisplay2(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_sigDisplay2(2),
	combout => \output_display_2[2]~feeder_combout\);

-- Location: FF_X87_Y36_N7
\output_display_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \output_display_2[2]~feeder_combout\,
	sclr => \output_display_2[1]~0_combout\,
	ena => \output_display_2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_display_2(2));

-- Location: MLABCELL_X87_Y36_N57
\sigDisplay2[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sigDisplay2[3]~1_combout\ = ( !Currstate(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_Currstate(0),
	combout => \sigDisplay2[3]~1_combout\);

-- Location: FF_X87_Y36_N59
\sigDisplay2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \button3~inputCLKENA0_outclk\,
	d => \sigDisplay2[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sigDisplay2(3));

-- Location: FF_X87_Y36_N49
\output_display_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => sigDisplay2(3),
	sclr => \output_display_2[1]~0_combout\,
	sload => VCC,
	ena => \output_display_2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_display_2(3));

-- Location: LABCELL_X88_Y36_N6
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( Currstate(1) ) # ( !Currstate(1) & ( !Currstate(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Currstate(0),
	dataf => ALT_INV_Currstate(1),
	combout => \Mux15~0_combout\);

-- Location: FF_X88_Y36_N7
\sigDisplay2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \button3~inputCLKENA0_outclk\,
	d => \Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sigDisplay2(4));

-- Location: FF_X87_Y36_N20
\output_display_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => sigDisplay2(4),
	sclr => \output_display_2[1]~0_combout\,
	sload => VCC,
	ena => \output_display_2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_display_2(4));

-- Location: LABCELL_X88_Y36_N9
\Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = ( Currstate(1) & ( Currstate(0) ) ) # ( !Currstate(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Currstate(0),
	dataf => ALT_INV_Currstate(1),
	combout => \Mux14~1_combout\);

-- Location: FF_X88_Y36_N11
\sigDisplay2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \button3~inputCLKENA0_outclk\,
	d => \Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sigDisplay2(5));

-- Location: FF_X87_Y36_N34
\output_display_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => sigDisplay2(5),
	sclr => \output_display_2[1]~0_combout\,
	sload => VCC,
	ena => \output_display_2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_display_2(5));

-- Location: LABCELL_X88_Y36_N15
\sigDisplay2[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sigDisplay2[6]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \sigDisplay2[6]~feeder_combout\);

-- Location: FF_X88_Y36_N17
\sigDisplay2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \button3~inputCLKENA0_outclk\,
	d => \sigDisplay2[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sigDisplay2(6));

-- Location: FF_X88_Y36_N44
\output_display_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => sigDisplay2(6),
	sclr => \output_display_2[1]~0_combout\,
	sload => VCC,
	ena => \output_display_2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_display_2(6));

-- Location: LABCELL_X88_Y36_N18
\sigEncryption~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sigEncryption~0_combout\ = ( Currstate(1) & ( !output_i(0) $ (!\suwak1~input_o\ $ (!Currstate(0))) ) ) # ( !Currstate(1) & ( !output_i(0) $ (!\suwak1~input_o\ $ (Currstate(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_output_i(0),
	datac => \ALT_INV_suwak1~input_o\,
	datad => ALT_INV_Currstate(0),
	dataf => ALT_INV_Currstate(1),
	combout => \sigEncryption~0_combout\);

-- Location: FF_X88_Y36_N19
\sigEncryption[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \button3~inputCLKENA0_outclk\,
	d => \sigEncryption~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sigEncryption(0));

-- Location: FF_X88_Y36_N47
\output_display_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => sigEncryption(0),
	sclr => \output_display_2[1]~0_combout\,
	sload => VCC,
	ena => \output_display_2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_display_3(0));

-- Location: LABCELL_X88_Y36_N0
\sigEncryption~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sigEncryption~1_combout\ = ( Currstate(1) & ( !output_i(1) $ (!\suwak2~input_o\ $ (!Currstate(0))) ) ) # ( !Currstate(1) & ( !output_i(1) $ (!\suwak2~input_o\ $ (Currstate(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_output_i(1),
	datac => \ALT_INV_suwak2~input_o\,
	datad => ALT_INV_Currstate(0),
	dataf => ALT_INV_Currstate(1),
	combout => \sigEncryption~1_combout\);

-- Location: FF_X88_Y36_N2
\sigEncryption[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \button3~inputCLKENA0_outclk\,
	d => \sigEncryption~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sigEncryption(1));

-- Location: FF_X87_Y36_N32
\output_display_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => sigEncryption(1),
	sclr => \output_display_2[1]~0_combout\,
	sload => VCC,
	ena => \output_display_2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_display_3(1));

-- Location: LABCELL_X88_Y36_N27
\sigEncryption~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sigEncryption~2_combout\ = ( Currstate(1) & ( !\suwak3~input_o\ $ (!output_i(2) $ (!Currstate(0))) ) ) # ( !Currstate(1) & ( !\suwak3~input_o\ $ (!output_i(2) $ (Currstate(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_suwak3~input_o\,
	datab => ALT_INV_output_i(2),
	datad => ALT_INV_Currstate(0),
	dataf => ALT_INV_Currstate(1),
	combout => \sigEncryption~2_combout\);

-- Location: FF_X88_Y36_N29
\sigEncryption[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \button3~inputCLKENA0_outclk\,
	d => \sigEncryption~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sigEncryption(2));

-- Location: FF_X88_Y36_N53
\output_display_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => sigEncryption(2),
	sclr => \output_display_2[1]~0_combout\,
	sload => VCC,
	ena => \output_display_2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_display_3(2));

-- Location: LABCELL_X88_Y36_N33
\sigEncryption~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sigEncryption~3_combout\ = ( Currstate(0) & ( Currstate(1) & ( !\suwak4~input_o\ $ (!output_i(3)) ) ) ) # ( !Currstate(0) & ( Currstate(1) & ( !\suwak4~input_o\ $ (output_i(3)) ) ) ) # ( Currstate(0) & ( !Currstate(1) & ( !\suwak4~input_o\ $ 
-- (output_i(3)) ) ) ) # ( !Currstate(0) & ( !Currstate(1) & ( !\suwak4~input_o\ $ (!output_i(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110100110011001100110011001100110010110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_suwak4~input_o\,
	datab => ALT_INV_output_i(3),
	datae => ALT_INV_Currstate(0),
	dataf => ALT_INV_Currstate(1),
	combout => \sigEncryption~3_combout\);

-- Location: FF_X88_Y36_N35
\sigEncryption[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \button3~inputCLKENA0_outclk\,
	d => \sigEncryption~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sigEncryption(3));

-- Location: FF_X88_Y36_N50
\output_display_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => sigEncryption(3),
	sclr => \output_display_2[1]~0_combout\,
	sload => VCC,
	ena => \output_display_2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_display_3(3));

-- Location: MLABCELL_X87_Y36_N54
\output_display_4[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \output_display_4[1]~0_combout\ = ( !\output_display_2[1]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_output_display_2[1]~0_combout\,
	combout => \output_display_4[1]~0_combout\);

-- Location: FF_X87_Y36_N23
\output_display_4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \output_display_4[1]~0_combout\,
	sload => VCC,
	ena => \output_display_2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_display_4(1));

-- Location: FF_X87_Y36_N53
\output_display_4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Equal2~0_combout\,
	ena => \output_display_2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_display_4(2));

-- Location: FF_X87_Y36_N11
\output_display_4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \output_display_2[1]~1_combout\,
	ena => \output_display_2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_display_4(4));

-- Location: MLABCELL_X87_Y36_N48
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( output_i(3) & ( ((!output_i(2)) # (output_i(1))) # (output_i(0)) ) ) # ( !output_i(3) & ( (!output_i(1) & ((output_i(2)))) # (output_i(1) & ((!output_i(0)) # (!output_i(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111000111110001111100011111011110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_output_i(0),
	datab => ALT_INV_output_i(1),
	datac => ALT_INV_output_i(2),
	dataf => ALT_INV_output_i(3),
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X85_Y36_N45
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( output_i(0) & ( !output_i(3) $ (((!output_i(1) & output_i(2)))) ) ) # ( !output_i(0) & ( (!output_i(3) & (output_i(1) & !output_i(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010101010010110101010101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_output_i(3),
	datac => ALT_INV_output_i(1),
	datad => ALT_INV_output_i(2),
	dataf => ALT_INV_output_i(0),
	combout => \Mux12~0_combout\);

-- Location: MLABCELL_X87_Y36_N42
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( output_i(2) & ( output_i(1) & ( (!output_i(3) & output_i(0)) ) ) ) # ( !output_i(2) & ( output_i(1) & ( (!output_i(3) & output_i(0)) ) ) ) # ( output_i(2) & ( !output_i(1) & ( !output_i(3) ) ) ) # ( !output_i(2) & ( !output_i(1) & ( 
-- output_i(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101010101010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_output_i(3),
	datac => ALT_INV_output_i(0),
	datae => ALT_INV_output_i(2),
	dataf => ALT_INV_output_i(1),
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X85_Y36_N30
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( output_i(2) & ( (!output_i(1) & (!output_i(3) & !output_i(0))) # (output_i(1) & ((output_i(0)))) ) ) # ( !output_i(2) & ( (!output_i(3) & (!output_i(1) & output_i(0))) # (output_i(3) & (output_i(1) & !output_i(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000011000100000111000001100011000000110001000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_output_i(3),
	datab => ALT_INV_output_i(1),
	datac => ALT_INV_output_i(0),
	datae => ALT_INV_output_i(2),
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X85_Y36_N6
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( output_i(1) & ( (!output_i(3) & (!output_i(0) & !output_i(2))) # (output_i(3) & ((output_i(2)))) ) ) # ( !output_i(1) & ( (!output_i(0) & (output_i(3) & output_i(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_output_i(0),
	datac => ALT_INV_output_i(3),
	datad => ALT_INV_output_i(2),
	dataf => ALT_INV_output_i(1),
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X85_Y36_N27
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( output_i(0) & ( (!output_i(3) & (!output_i(1) & output_i(2))) # (output_i(3) & (output_i(1))) ) ) # ( !output_i(0) & ( (output_i(2) & ((output_i(1)) # (output_i(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000101101001010000010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_output_i(3),
	datac => ALT_INV_output_i(1),
	datad => ALT_INV_output_i(2),
	dataf => ALT_INV_output_i(0),
	combout => \Mux8~0_combout\);

-- Location: MLABCELL_X87_Y36_N15
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( !output_i(2) & ( output_i(1) & ( (output_i(0) & output_i(3)) ) ) ) # ( output_i(2) & ( !output_i(1) & ( !output_i(0) $ (output_i(3)) ) ) ) # ( !output_i(2) & ( !output_i(1) & ( (output_i(0) & !output_i(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000101010100101010100000000010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_output_i(0),
	datad => ALT_INV_output_i(3),
	datae => ALT_INV_output_i(2),
	dataf => ALT_INV_output_i(1),
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X88_Y36_N42
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( output_display_3(1) & ( (!output_display_3(2)) # ((!output_display_3(0)) # (output_display_3(3))) ) ) # ( !output_display_3(1) & ( (!output_display_3(2) & ((output_display_3(3)))) # (output_display_3(2) & ((!output_display_3(3)) # 
-- (output_display_3(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101101011011010110110101101111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_output_display_3(2),
	datab => ALT_INV_output_display_3(0),
	datac => ALT_INV_output_display_3(3),
	dataf => ALT_INV_output_display_3(1),
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X88_Y36_N12
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( output_display_3(3) & ( (!output_display_3(1) & (output_display_3(0) & output_display_3(2))) ) ) # ( !output_display_3(3) & ( (!output_display_3(1) & (output_display_3(0) & !output_display_3(2))) # (output_display_3(1) & 
-- ((!output_display_3(2)) # (output_display_3(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_output_display_3(1),
	datab => ALT_INV_output_display_3(0),
	datac => ALT_INV_output_display_3(2),
	dataf => ALT_INV_output_display_3(3),
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X88_Y36_N21
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( output_display_3(2) & ( (!output_display_3(3) & ((!output_display_3(1)) # (output_display_3(0)))) ) ) # ( !output_display_3(2) & ( (output_display_3(0) & ((!output_display_3(1)) # (!output_display_3(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101010100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_output_display_3(1),
	datac => ALT_INV_output_display_3(3),
	datad => ALT_INV_output_display_3(0),
	dataf => ALT_INV_output_display_3(2),
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X88_Y36_N45
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( output_display_3(1) & ( (!output_display_3(2) & (output_display_3(3) & !output_display_3(0))) # (output_display_3(2) & ((output_display_3(0)))) ) ) # ( !output_display_3(1) & ( (!output_display_3(3) & (!output_display_3(2) $ 
-- (!output_display_3(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000001010010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_output_display_3(2),
	datac => ALT_INV_output_display_3(3),
	datad => ALT_INV_output_display_3(0),
	dataf => ALT_INV_output_display_3(1),
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X88_Y36_N39
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( output_display_3(1) & ( (!output_display_3(3) & (!output_display_3(0) & !output_display_3(2))) # (output_display_3(3) & ((output_display_3(2)))) ) ) # ( !output_display_3(1) & ( (output_display_3(3) & (!output_display_3(0) & 
-- output_display_3(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_output_display_3(3),
	datac => ALT_INV_output_display_3(0),
	datad => ALT_INV_output_display_3(2),
	dataf => ALT_INV_output_display_3(1),
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X88_Y36_N51
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!output_display_3(1) & (output_display_3(2) & (!output_display_3(0) $ (!output_display_3(3))))) # (output_display_3(1) & ((!output_display_3(0) & ((output_display_3(2)))) # (output_display_3(0) & (output_display_3(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101101000000010110110100000001011011010000000101101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_output_display_3(1),
	datab => ALT_INV_output_display_3(0),
	datac => ALT_INV_output_display_3(3),
	datad => ALT_INV_output_display_3(2),
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X88_Y36_N48
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( output_display_3(2) & ( (!output_display_3(1) & (!output_display_3(0) $ (output_display_3(3)))) ) ) # ( !output_display_3(2) & ( (output_display_3(0) & (!output_display_3(1) $ (output_display_3(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000010001001000100001000110001000001000101000100000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_output_display_3(1),
	datab => ALT_INV_output_display_3(0),
	datad => ALT_INV_output_display_3(3),
	dataf => ALT_INV_output_display_3(2),
	combout => \Mux0~0_combout\);

-- Location: FF_X88_Y36_N14
\output[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \button3~inputCLKENA0_outclk\,
	asdata => Currstate(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[0]~reg0_q\);

-- Location: FF_X88_Y36_N22
\output[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \button3~inputCLKENA0_outclk\,
	asdata => Currstate(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[1]~reg0_q\);

-- Location: LABCELL_X9_Y46_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


