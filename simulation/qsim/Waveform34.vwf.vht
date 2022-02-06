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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/12/2021 22:16:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SAMPLE
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SAMPLE_vhd_vec_tst IS
END SAMPLE_vhd_vec_tst;
ARCHITECTURE SAMPLE_arch OF SAMPLE_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL button1 : STD_LOGIC;
SIGNAL button2 : STD_LOGIC;
SIGNAL button3 : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL dioda1 : STD_LOGIC;
SIGNAL dioda2 : STD_LOGIC;
SIGNAL dioda3 : STD_LOGIC;
SIGNAL dioda4 : STD_LOGIC;
SIGNAL Display_1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Display_2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Display_3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Display_4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL output : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL suwak1 : STD_LOGIC;
SIGNAL suwak2 : STD_LOGIC;
SIGNAL suwak3 : STD_LOGIC;
SIGNAL suwak4 : STD_LOGIC;
SIGNAL test : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT SAMPLE
	PORT (
	button1 : IN STD_LOGIC;
	button2 : IN STD_LOGIC;
	button3 : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	dioda1 : OUT STD_LOGIC;
	dioda2 : OUT STD_LOGIC;
	dioda3 : OUT STD_LOGIC;
	dioda4 : OUT STD_LOGIC;
	Display_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Display_2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Display_3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Display_4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	output : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	suwak1 : IN STD_LOGIC;
	suwak2 : IN STD_LOGIC;
	suwak3 : IN STD_LOGIC;
	suwak4 : IN STD_LOGIC;
	test : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SAMPLE
	PORT MAP (
-- list connections between master ports and signals
	button1 => button1,
	button2 => button2,
	button3 => button3,
	clk => clk,
	dioda1 => dioda1,
	dioda2 => dioda2,
	dioda3 => dioda3,
	dioda4 => dioda4,
	Display_1 => Display_1,
	Display_2 => Display_2,
	Display_3 => Display_3,
	Display_4 => Display_4,
	output => output,
	suwak1 => suwak1,
	suwak2 => suwak2,
	suwak3 => suwak3,
	suwak4 => suwak4,
	test => test
	);

-- button1
t_prcs_button1: PROCESS
BEGIN
LOOP
	button1 <= '0';
	WAIT FOR 20000 ps;
	button1 <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_button1;

-- button2
t_prcs_button2: PROCESS
BEGIN
	button2 <= '0';
WAIT;
END PROCESS t_prcs_button2;

-- button3
t_prcs_button3: PROCESS
BEGIN
LOOP
	button3 <= '0';
	WAIT FOR 50000 ps;
	button3 <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_button3;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 1000 ps;
	clk <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- suwak1
t_prcs_suwak1: PROCESS
BEGIN
	suwak1 <= '1';
WAIT;
END PROCESS t_prcs_suwak1;

-- suwak2
t_prcs_suwak2: PROCESS
BEGIN
	suwak2 <= '0';
WAIT;
END PROCESS t_prcs_suwak2;

-- suwak3
t_prcs_suwak3: PROCESS
BEGIN
	suwak3 <= '1';
WAIT;
END PROCESS t_prcs_suwak3;

-- suwak4
t_prcs_suwak4: PROCESS
BEGIN
	suwak4 <= '0';
WAIT;
END PROCESS t_prcs_suwak4;
END SAMPLE_arch;
