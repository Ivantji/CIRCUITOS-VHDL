----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:24:06 05/25/2023 
-- Design Name: 
-- Module Name:    CODI7SEG - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CODI7SEG is
	port (
        D : in STD_LOGIC;
		  C : in STD_LOGIC;
		  B : in STD_LOGIC;
		  A : in STD_LOGIC;
        a : out STD_LOGIC;
		  b : out STD_LOGIC;
		  c : out STD_LOGIC;
		  d : out STD_LOGIC;
		  e : out STD_LOGIC;
		  f : out STD_LOGIC;
		  g : out STD_LOGIC);
end CODI7SEG;

architecture Behavioral of CODI7SEG is

begin

process (D, C, B, A)
    begin
        case (D, C, B, A) is
            when "0000" =>
                a <= '1';
                b <= '1';
                c <= '1';
                d <= '1';
                e <= '1';
                f <= '1';
                g <= '0';
            when "0001" =>
                a <= '0';
                b <= '1';
                c <= '1';
                d <= '0';
                e <= '0';
                f <= '0';
                g <= '0';
            when "0010" =>
                a <= '1';
                b <= '1';
                c <= '0';
                d <= '1';
                e <= '1';
                f <= '0';
                g <= '1';
            -- Resto de los casos para las combinaciones del 3 al 9

            when others =>
                a <= '0';
                b <= '0';
                c <= '0';
                d <= '0';
                e <= '0';
                f <= '0';
                g <= '1';
        end case;
    end process;

end Behavioral;

