--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: SUM4B_synthesis.vhd
-- /___/   /\     Timestamp: Thu May 25 19:41:57 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm SUM4B -w -dir netgen/synthesis -ofmt vhdl -sim SUM4B.ngc SUM4B_synthesis.vhd 
-- Device	: xc6slx9-3-csg225
-- Input file	: SUM4B.ngc
-- Output file	: D:\SEMESTRE V\CIRCUITOS LOGICOS\SUM4BIT\netgen\synthesis\SUM4B_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: SUM4B
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

entity SUM4B is
  port (
    S : in STD_LOGIC := 'X'; 
    C_out : out STD_LOGIC; 
    A : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    Suma : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end SUM4B;

architecture Structure of SUM4B is
  signal A_0_IBUF_0 : STD_LOGIC; 
  signal A_1_IBUF_1 : STD_LOGIC; 
  signal A_2_IBUF_2 : STD_LOGIC; 
  signal A_3_IBUF_3 : STD_LOGIC; 
  signal B_0_IBUF_4 : STD_LOGIC; 
  signal B_1_IBUF_5 : STD_LOGIC; 
  signal B_2_IBUF_6 : STD_LOGIC; 
  signal B_3_IBUF_7 : STD_LOGIC; 
  signal S_IBUF_8 : STD_LOGIC; 
  signal Suma_3_OBUF_9 : STD_LOGIC; 
  signal Suma_2_OBUF_10 : STD_LOGIC; 
  signal Suma_1_OBUF_11 : STD_LOGIC; 
  signal Suma_0_OBUF_12 : STD_LOGIC; 
  signal C_out_OBUF_13 : STD_LOGIC; 
  signal A_1_A_0_OR_2_o : STD_LOGIC; 
  signal A_1_A_0_OR_6_o : STD_LOGIC; 
  signal A_3_B_3_XOR_24_o : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
begin
  Mxor_A_3_B_3_XOR_24_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_3_IBUF_3,
      I1 => B_3_IBUF_7,
      O => A_3_B_3_XOR_24_o
    );
  A_1_A_0_OR_6_o1 : LUT5
    generic map(
      INIT => X"26622262"
    )
    port map (
      I0 => A_1_IBUF_1,
      I1 => B_1_IBUF_5,
      I2 => A_0_IBUF_0,
      I3 => B_0_IBUF_4,
      I4 => C_out_OBUF_13,
      O => A_1_A_0_OR_6_o
    );
  A_1_A_0_OR_2_o1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_1_IBUF_1,
      I1 => B_1_IBUF_5,
      I2 => B_0_IBUF_4,
      I3 => C_out_OBUF_13,
      I4 => A_0_IBUF_0,
      O => A_1_A_0_OR_2_o
    );
  Mmux_Suma11 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => A_0_IBUF_0,
      I1 => B_0_IBUF_4,
      I2 => C_out_OBUF_13,
      I3 => S_IBUF_8,
      O => Suma_0_OBUF_12
    );
  Mmux_Suma31 : LUT5
    generic map(
      INIT => X"69996696"
    )
    port map (
      I0 => A_2_IBUF_2,
      I1 => B_2_IBUF_6,
      I2 => S_IBUF_8,
      I3 => A_1_A_0_OR_6_o,
      I4 => A_1_A_0_OR_2_o,
      O => Suma_2_OBUF_10
    );
  Mmux_Suma41 : LUT6
    generic map(
      INIT => X"6566969A5556969A"
    )
    port map (
      I0 => A_3_B_3_XOR_24_o,
      I1 => A_2_IBUF_2,
      I2 => S_IBUF_8,
      I3 => A_1_A_0_OR_2_o,
      I4 => B_2_IBUF_6,
      I5 => A_1_A_0_OR_6_o,
      O => Suma_3_OBUF_9
    );
  Mmux_Carry1_SW0 : LUT5
    generic map(
      INIT => X"8999B7FF"
    )
    port map (
      I0 => S_IBUF_8,
      I1 => B_3_IBUF_7,
      I2 => B_2_IBUF_6,
      I3 => A_2_IBUF_2,
      I4 => A_3_IBUF_3,
      O => N2
    );
  Mmux_Carry1_SW1 : LUT5
    generic map(
      INIT => X"8999B77F"
    )
    port map (
      I0 => S_IBUF_8,
      I1 => B_3_IBUF_7,
      I2 => A_2_IBUF_2,
      I3 => B_2_IBUF_6,
      I4 => A_3_IBUF_3,
      O => N3
    );
  Mmux_Carry1_SW2 : LUT5
    generic map(
      INIT => X"8B838B9F"
    )
    port map (
      I0 => S_IBUF_8,
      I1 => B_3_IBUF_7,
      I2 => A_3_IBUF_3,
      I3 => B_2_IBUF_6,
      I4 => A_2_IBUF_2,
      O => N4
    );
  Mmux_Carry1_SW3 : LUT5
    generic map(
      INIT => X"8889B33F"
    )
    port map (
      I0 => S_IBUF_8,
      I1 => B_3_IBUF_7,
      I2 => A_2_IBUF_2,
      I3 => B_2_IBUF_6,
      I4 => A_3_IBUF_3,
      O => N5
    );
  Mmux_Carry1 : LUT6
    generic map(
      INIT => X"028A139B46CE57DF"
    )
    port map (
      I0 => A_1_A_0_OR_2_o,
      I1 => A_1_A_0_OR_6_o,
      I2 => N4,
      I3 => N5,
      I4 => N2,
      I5 => N3,
      O => C_out_OBUF_13
    );
  A_3_IBUF : IBUF
    port map (
      I => A(3),
      O => A_3_IBUF_3
    );
  A_2_IBUF : IBUF
    port map (
      I => A(2),
      O => A_2_IBUF_2
    );
  A_1_IBUF : IBUF
    port map (
      I => A(1),
      O => A_1_IBUF_1
    );
  A_0_IBUF : IBUF
    port map (
      I => A(0),
      O => A_0_IBUF_0
    );
  B_3_IBUF : IBUF
    port map (
      I => B(3),
      O => B_3_IBUF_7
    );
  B_2_IBUF : IBUF
    port map (
      I => B(2),
      O => B_2_IBUF_6
    );
  B_1_IBUF : IBUF
    port map (
      I => B(1),
      O => B_1_IBUF_5
    );
  B_0_IBUF : IBUF
    port map (
      I => B(0),
      O => B_0_IBUF_4
    );
  S_IBUF : IBUF
    port map (
      I => S,
      O => S_IBUF_8
    );
  Suma_3_OBUF : OBUF
    port map (
      I => Suma_3_OBUF_9,
      O => Suma(3)
    );
  Suma_2_OBUF : OBUF
    port map (
      I => Suma_2_OBUF_10,
      O => Suma(2)
    );
  Suma_1_OBUF : OBUF
    port map (
      I => Suma_1_OBUF_11,
      O => Suma(1)
    );
  Suma_0_OBUF : OBUF
    port map (
      I => Suma_0_OBUF_12,
      O => Suma(0)
    );
  C_out_OBUF : OBUF
    port map (
      I => C_out_OBUF_13,
      O => C_out
    );
  Mmux_Suma21 : LUT6
    generic map(
      INIT => X"9699699699966966"
    )
    port map (
      I0 => A_1_IBUF_1,
      I1 => B_1_IBUF_5,
      I2 => A_0_IBUF_0,
      I3 => S_IBUF_8,
      I4 => B_0_IBUF_4,
      I5 => C_out_OBUF_13,
      O => Suma_1_OBUF_11
    );

end Structure;

