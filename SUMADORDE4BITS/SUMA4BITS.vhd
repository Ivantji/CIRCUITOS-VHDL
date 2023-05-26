----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:13:50 05/24/2023 
-- Design Name: 
-- Module Name:    SUMA4BITS - Behavioral 
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

entity SUMA4BITS is
    port (
        A : in STD_LOGIC_VECTOR(3 downto 0);
        B : in STD_LOGIC_VECTOR(3 downto 0);
        Cin : in STD_LOGIC;
        Sum : out STD_LOGIC_VECTOR(3 downto 0);
        Cout : out STD_LOGIC);
end SUMA4BITS;

architecture Behavioral of SUMA4BITS is

begin

process (A, B, Cin)
	variable temp : STD_LOGIC_VECTOR(3 downto 0);
begin
    temp := ('0' & A) + ('0' & B) + Cin;
	 Sum <= temp(3 downto 0);
	 Cout <= temp(4);
	 
end process;

end Behavioral;


