-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:FIFOMGR:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_2_FIFOMGR_0_0 IS
  PORT (
    CLK : IN STD_LOGIC;
    RST : IN STD_LOGIC;
    CTRL_REG : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    TS : IN STD_LOGIC;
    LT : IN STD_LOGIC;
    TSS : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    TSF : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    ADC_DIN : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    FIFO_AFULL : IN STD_LOGIC;
    FIFO_FULL : IN STD_LOGIC;
    FIFO_AEMPTY : IN STD_LOGIC;
    FIFO_EMPTY : IN STD_LOGIC;
    FIFO_DATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    FIFO_WE : OUT STD_LOGIC;
    FIFO_CLR : OUT STD_LOGIC
  );
END design_2_FIFOMGR_0_0;

ARCHITECTURE design_2_FIFOMGR_0_0_arch OF design_2_FIFOMGR_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_2_FIFOMGR_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT FIFOMGR IS
    GENERIC (
      fifo_din_width : INTEGER;
      din_width : INTEGER;
      delay : INTEGER;
      fifo_depth : INTEGER
    );
    PORT (
      CLK : IN STD_LOGIC;
      RST : IN STD_LOGIC;
      CTRL_REG : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      TS : IN STD_LOGIC;
      LT : IN STD_LOGIC;
      TSS : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      TSF : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      ADC_DIN : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      FIFO_AFULL : IN STD_LOGIC;
      FIFO_FULL : IN STD_LOGIC;
      FIFO_AEMPTY : IN STD_LOGIC;
      FIFO_EMPTY : IN STD_LOGIC;
      FIFO_DATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      FIFO_WE : OUT STD_LOGIC;
      FIFO_CLR : OUT STD_LOGIC
    );
  END COMPONENT FIFOMGR;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_2_FIFOMGR_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF RST: SIGNAL IS "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF RST: SIGNAL IS "xilinx.com:signal:reset:1.0 RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF CLK: SIGNAL IS "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN design_2_CLK_IN1_D_clk_n";
  ATTRIBUTE X_INTERFACE_INFO OF CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK CLK";
BEGIN
  U0 : FIFOMGR
    GENERIC MAP (
      fifo_din_width => 32,
      din_width => 16,
      delay => 3,
      fifo_depth => 1536
    )
    PORT MAP (
      CLK => CLK,
      RST => RST,
      CTRL_REG => CTRL_REG,
      TS => TS,
      LT => LT,
      TSS => TSS,
      TSF => TSF,
      ADC_DIN => ADC_DIN,
      FIFO_AFULL => FIFO_AFULL,
      FIFO_FULL => FIFO_FULL,
      FIFO_AEMPTY => FIFO_AEMPTY,
      FIFO_EMPTY => FIFO_EMPTY,
      FIFO_DATA => FIFO_DATA,
      FIFO_WE => FIFO_WE,
      FIFO_CLR => FIFO_CLR
    );
END design_2_FIFOMGR_0_0_arch;
