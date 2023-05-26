--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: MUX_synthesis.vhd
-- /___/   /\     Timestamp: Thu May 25 18:46:17 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm MUX -w -dir netgen/synthesis -ofmt vhdl -sim MUX.ngc MUX_synthesis.vhd 
-- Device	: xc6slx9-3-csg225
-- Input file	: MUX.ngc
-- Output file	: D:\SEMESTRE V\CIRCUITOS LOGICOS\MUX\netgen\synthesis\MUX_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: MUX
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity MUX is
  port (
    D0 : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    D1 : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    D2 : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    D3 : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    S : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    Y : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end MUX;

architecture Structure of MUX is
  signal D0_3_IBUF_0 : STD_LOGIC; 
  signal D0_2_IBUF_1 : STD_LOGIC; 
  signal D0_1_IBUF_2 : STD_LOGIC; 
  signal D0_0_IBUF_3 : STD_LOGIC; 
  signal D1_3_IBUF_4 : STD_LOGIC; 
  signal D1_2_IBUF_5 : STD_LOGIC; 
  signal D1_1_IBUF_6 : STD_LOGIC; 
  signal D1_0_IBUF_7 : STD_LOGIC; 
  signal D2_3_IBUF_8 : STD_LOGIC; 
  signal D2_2_IBUF_9 : STD_LOGIC; 
  signal D2_1_IBUF_10 : STD_LOGIC; 
  signal D2_0_IBUF_11 : STD_LOGIC; 
  signal D3_3_IBUF_12 : STD_LOGIC; 
  signal D3_2_IBUF_13 : STD_LOGIC; 
  signal D3_1_IBUF_14 : STD_LOGIC; 
  signal D3_0_IBUF_15 : STD_LOGIC; 
  signal S_1_IBUF_16 : STD_LOGIC; 
  signal S_0_IBUF_17 : STD_LOGIC; 
  signal Y_3_OBUF_18 : STD_LOGIC; 
  signal Y_2_OBUF_19 : STD_LOGIC; 
  signal Y_1_OBUF_20 : STD_LOGIC; 
  signal Y_0_OBUF_21 : STD_LOGIC; 
begin
  Mmux_Y11 : LUT6
    generic map(
      INIT => X"DFD5DAD08F858A80"
    )
    port map (
      I0 => S_0_IBUF_17,
      I1 => D3_0_IBUF_15,
      I2 => S_1_IBUF_16,
      I3 => D1_0_IBUF_7,
      I4 => D0_0_IBUF_3,
      I5 => D2_0_IBUF_11,
      O => Y_0_OBUF_21
    );
  Mmux_Y21 : LUT6
    generic map(
      INIT => X"DFD5DAD08F858A80"
    )
    port map (
      I0 => S_0_IBUF_17,
      I1 => D3_1_IBUF_14,
      I2 => S_1_IBUF_16,
      I3 => D1_1_IBUF_6,
      I4 => D0_1_IBUF_2,
      I5 => D2_1_IBUF_10,
      O => Y_1_OBUF_20
    );
  Mmux_Y31 : LUT6
    generic map(
      INIT => X"DFD5DAD08F858A80"
    )
    port map (
      I0 => S_0_IBUF_17,
      I1 => D3_2_IBUF_13,
      I2 => S_1_IBUF_16,
      I3 => D1_2_IBUF_5,
      I4 => D0_2_IBUF_1,
      I5 => D2_2_IBUF_9,
      O => Y_2_OBUF_19
    );
  Mmux_Y41 : LUT6
    generic map(
      INIT => X"DFD5DAD08F858A80"
    )
    port map (
      I0 => S_0_IBUF_17,
      I1 => D3_3_IBUF_12,
      I2 => S_1_IBUF_16,
      I3 => D1_3_IBUF_4,
      I4 => D0_3_IBUF_0,
      I5 => D2_3_IBUF_8,
      O => Y_3_OBUF_18
    );
  D0_3_IBUF : IBUF
    port map (
      I => D0(3),
      O => D0_3_IBUF_0
    );
  D0_2_IBUF : IBUF
    port map (
      I => D0(2),
      O => D0_2_IBUF_1
    );
  D0_1_IBUF : IBUF
    port map (
      I => D0(1),
      O => D0_1_IBUF_2
    );
  D0_0_IBUF : IBUF
    port map (
      I => D0(0),
      O => D0_0_IBUF_3
    );
  D1_3_IBUF : IBUF
    port map (
      I => D1(3),
      O => D1_3_IBUF_4
    );
  D1_2_IBUF : IBUF
    port map (
      I => D1(2),
      O => D1_2_IBUF_5
    );
  D1_1_IBUF : IBUF
    port map (
      I => D1(1),
      O => D1_1_IBUF_6
    );
  D1_0_IBUF : IBUF
    port map (
      I => D1(0),
      O => D1_0_IBUF_7
    );
  D2_3_IBUF : IBUF
    port map (
      I => D2(3),
      O => D2_3_IBUF_8
    );
  D2_2_IBUF : IBUF
    port map (
      I => D2(2),
      O => D2_2_IBUF_9
    );
  D2_1_IBUF : IBUF
    port map (
      I => D2(1),
      O => D2_1_IBUF_10
    );
  D2_0_IBUF : IBUF
    port map (
      I => D2(0),
      O => D2_0_IBUF_11
    );
  D3_3_IBUF : IBUF
    port map (
      I => D3(3),
      O => D3_3_IBUF_12
    );
  D3_2_IBUF : IBUF
    port map (
      I => D3(2),
      O => D3_2_IBUF_13
    );
  D3_1_IBUF : IBUF
    port map (
      I => D3(1),
      O => D3_1_IBUF_14
    );
  D3_0_IBUF : IBUF
    port map (
      I => D3(0),
      O => D3_0_IBUF_15
    );
  S_1_IBUF : IBUF
    port map (
      I => S(1),
      O => S_1_IBUF_16
    );
  S_0_IBUF : IBUF
    port map (
      I => S(0),
      O => S_0_IBUF_17
    );
  Y_3_OBUF : OBUF
    port map (
      I => Y_3_OBUF_18,
      O => Y(3)
    );
  Y_2_OBUF : OBUF
    port map (
      I => Y_2_OBUF_19,
      O => Y(2)
    );
  Y_1_OBUF : OBUF
    port map (
      I => Y_1_OBUF_20,
      O => Y(1)
    );
  Y_0_OBUF : OBUF
    port map (
      I => Y_0_OBUF_21,
      O => Y(0)
    );

end Structure;

