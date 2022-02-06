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
-- Generated on "12/12/2021 14:20:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PWM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PWM_vhd_vec_tst IS
END PWM_vhd_vec_tst;
ARCHITECTURE PWM_arch OF PWM_vhd_vec_tst IS
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
SIGNAL output : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL suwak1 : STD_LOGIC;
SIGNAL suwak2 : STD_LOGIC;
SIGNAL suwak3 : STD_LOGIC;
SIGNAL suwak4 : STD_LOGIC;
COMPONENT PWM
	PORT (
	button1 : IN STD_LOGIC;
	button2 : IN STD_LOGIC;
	button3 : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	dioda1 : OUT STD_LOGIC;
	dioda2 : OUT STD_LOGIC;
	dioda3 : OUT STD_LOGIC;
	dioda4 : OUT STD_LOGIC;
	output : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	suwak1 : IN STD_LOGIC;
	suwak2 : IN STD_LOGIC;
	suwak3 : IN STD_LOGIC;
	suwak4 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PWM
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
	output => output,
	suwak1 => suwak1,
	suwak2 => suwak2,
	suwak3 => suwak3,
	suwak4 => suwak4
	);

-- button1
t_prcs_button1: PROCESS
BEGIN
LOOP
	button1 <= '0';
	WAIT FOR 50000 ps;
	button1 <= '1';
	WAIT FOR 50000 ps;
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
	button3 <= '0';
	WAIT FOR 400000 ps;
	button3 <= '1';
	WAIT FOR 400000 ps;
	button3 <= '0';
WAIT;
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
END PWM_arch;
