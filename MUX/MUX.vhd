----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:37:14 05/25/2023 
-- Design Name: 
-- Module Name:    MUX - Behavioral 
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

entity MUX is
    port (
        D0, D1, D2, D3 : in std_logic_vector(3 downto 0);
        S : in std_logic_vector(1 downto 0);
        Y : out std_logic_vector(3 downto 0));
end MUX;

architecture Behavioral of MUX is

begin

process (D0, D1, D2, D3, S)
    begin
        case S is
            when "00" =>
                Y <= D0;
            when "01" =>
                Y <= D1;
            when "10" =>
                Y <= D2;
            when others =>
                Y <= D3;
        end case;
    end process;

end Behavioral;

