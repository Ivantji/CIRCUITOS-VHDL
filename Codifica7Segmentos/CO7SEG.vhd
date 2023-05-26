----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:06:20 05/25/2023 
-- Design Name: 
-- Module Name:    CO7SEG - Behavioral 
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

entity CO7SEG is
     port (
        Input : in std_logic_vector(3 downto 0);
        Output : out std_logic_vector(6 downto 0));
end CO7SEG;

architecture Behavioral of CO7SEG is

begin

 process (Input)
    begin
        case Input is
            when "0000" =>
                Output <= "0000001"; -- 0
            when "0001" =>
                Output <= "1001111"; -- 1
            when "0010" =>
                Output <= "0010010"; -- 2
            when "0011" =>
                Output <= "0000110"; -- 3
            when "0100" =>
                Output <= "1001100"; -- 4
            when "0101" =>
                Output <= "0100100"; -- 5
            when "0110" =>
                Output <= "0100000"; -- 6
            when "0111" =>
                Output <= "0001111"; -- 7
            when "1000" =>
                Output <= "0000000"; -- 8
            when "1001" =>
                Output <= "0000100"; -- 9
            when "1010" =>
                Output <= "0001000"; -- A
            when "1011" =>
                Output <= "1100000"; -- B
            when "1100" =>
                Output <= "0110001"; -- C
            when "1101" =>
                Output <= "1000010"; -- D
            when "1110" =>
                Output <= "0110000"; -- E
            when "1111" =>
                Output <= "0111000"; -- F
            when others =>
                Output <= "-------"; -- Valor inválido
        end case;
    end process;
	 
end Behavioral;

