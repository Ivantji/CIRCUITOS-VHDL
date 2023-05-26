----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:36:41 05/24/2023 
-- Design Name: 
-- Module Name:    MULTI - Behavioral 
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
use IEEE.std_logic_unsigned.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Multiplexor4x1 is
    port (
        a : in STD_LOGIC;
		  b : in STD_LOGIC;
		  i0 : in STD_LOGIC;
		  i1 : in STD_LOGIC;
		  i2 : in STD_LOGIC;
		  i3 : in STD_LOGIC;
        y : out STD_LOGIC);
		  
end Multiplexor4x1;

architecture Behavioral of Multiplexor4x1 is
begin

    y <= (not a and not b and i0) or
         (not a and b and i1) or
         (a and not b and i2) or
         (a and b and i3);
end architecture Behavioral;

end Behavioral;

