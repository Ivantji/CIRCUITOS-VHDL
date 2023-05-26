--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: CO7SEG_synthesis.vhd
-- /___/   /\     Timestamp: Thu May 25 19:14:34 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm CO7SEG -w -dir netgen/synthesis -ofmt vhdl -sim CO7SEG.ngc CO7SEG_synthesis.vhd 
-- Device	: xc6slx9-3-csg225
-- Input file	: CO7SEG.ngc
-- Output file	: D:\SEMESTRE V\CIRCUITOS LOGICOS\Codifica7Segmentos\netgen\synthesis\CO7SEG_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: CO7SEG
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

entity CO7SEG is
  port (
    Input : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    Output : out STD_LOGIC_VECTOR ( 6 downto 0 ) 
  );
end CO7SEG;

architecture Structure of CO7SEG is
  signal Input_3_IBUF_0 : STD_LOGIC; 
  signal Input_2_IBUF_1 : STD_LOGIC; 
  signal Input_1_IBUF_2 : STD_LOGIC; 
  signal Input_0_IBUF_3 : STD_LOGIC; 
  signal Output_6_OBUF_4 : STD_LOGIC; 
  signal Output_5_OBUF_5 : STD_LOGIC; 
  signal Output_4_OBUF_6 : STD_LOGIC; 
  signal Output_3_OBUF_7 : STD_LOGIC; 
  signal Output_2_OBUF_8 : STD_LOGIC; 
  signal Output_1_OBUF_9 : STD_LOGIC; 
  signal Output_0_OBUF_10 : STD_LOGIC; 
begin
  Mram_Output51 : LUT4
    generic map(
      INIT => X"E228"
    )
    port map (
      I0 => Input_2_IBUF_1,
      I1 => Input_0_IBUF_3,
      I2 => Input_1_IBUF_2,
      I3 => Input_3_IBUF_0,
      O => Output_5_OBUF_5
    );
  Mram_Output11 : LUT4
    generic map(
      INIT => X"0941"
    )
    port map (
      I0 => Input_1_IBUF_2,
      I1 => Input_2_IBUF_1,
      I2 => Input_3_IBUF_0,
      I3 => Input_0_IBUF_3,
      O => Output_0_OBUF_10
    );
  Mram_Output21 : LUT4
    generic map(
      INIT => X"02BA"
    )
    port map (
      I0 => Input_0_IBUF_3,
      I1 => Input_1_IBUF_2,
      I2 => Input_2_IBUF_1,
      I3 => Input_3_IBUF_0,
      O => Output_2_OBUF_8
    );
  Output_6_1 : LUT4
    generic map(
      INIT => X"4190"
    )
    port map (
      I0 => Input_1_IBUF_2,
      I1 => Input_3_IBUF_0,
      I2 => Input_0_IBUF_3,
      I3 => Input_2_IBUF_1,
      O => Output_6_OBUF_4
    );
  Output_3_1 : LUT4
    generic map(
      INIT => X"A118"
    )
    port map (
      I0 => Input_1_IBUF_2,
      I1 => Input_3_IBUF_0,
      I2 => Input_0_IBUF_3,
      I3 => Input_2_IBUF_1,
      O => Output_3_OBUF_7
    );
  Output_4_1 : LUT4
    generic map(
      INIT => X"C140"
    )
    port map (
      I0 => Input_0_IBUF_3,
      I1 => Input_3_IBUF_0,
      I2 => Input_2_IBUF_1,
      I3 => Input_1_IBUF_2,
      O => Output_4_OBUF_6
    );
  Output_1_1 : LUT4
    generic map(
      INIT => X"2382"
    )
    port map (
      I0 => Input_0_IBUF_3,
      I1 => Input_3_IBUF_0,
      I2 => Input_2_IBUF_1,
      I3 => Input_1_IBUF_2,
      O => Output_1_OBUF_9
    );
  Input_3_IBUF : IBUF
    port map (
      I => Input(3),
      O => Input_3_IBUF_0
    );
  Input_2_IBUF : IBUF
    port map (
      I => Input(2),
      O => Input_2_IBUF_1
    );
  Input_1_IBUF : IBUF
    port map (
      I => Input(1),
      O => Input_1_IBUF_2
    );
  Input_0_IBUF : IBUF
    port map (
      I => Input(0),
      O => Input_0_IBUF_3
    );
  Output_6_OBUF : OBUF
    port map (
      I => Output_6_OBUF_4,
      O => Output(6)
    );
  Output_5_OBUF : OBUF
    port map (
      I => Output_5_OBUF_5,
      O => Output(5)
    );
  Output_4_OBUF : OBUF
    port map (
      I => Output_4_OBUF_6,
      O => Output(4)
    );
  Output_3_OBUF : OBUF
    port map (
      I => Output_3_OBUF_7,
      O => Output(3)
    );
  Output_2_OBUF : OBUF
    port map (
      I => Output_2_OBUF_8,
      O => Output(2)
    );
  Output_1_OBUF : OBUF
    port map (
      I => Output_1_OBUF_9,
      O => Output(1)
    );
  Output_0_OBUF : OBUF
    port map (
      I => Output_0_OBUF_10,
      O => Output(0)
    );

end Structure;

