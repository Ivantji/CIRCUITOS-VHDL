----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:38:15 05/25/2023 
-- Design Name: 
-- Module Name:    SUM4B - Behavioral 
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

entity SUM4B is
	port (
        A, B : in std_logic_vector(3 downto 0);
        S : in std_logic;
        C_out : out std_logic;
        Suma : out std_logic_vector(3 downto 0));
end SUM4B;

architecture Behavioral of SUM4B is

begin

  process (A, B, S)
        variable Carry : std_logic := '0';
    begin
        if (S = '0') then -- Suma
            for i in 0 to 3 loop
                Suma(i) <= A(i) xor B(i) xor Carry;
                Carry := (A(i) and B(i)) or (Carry and (A(i) xor B(i)));
            end loop;
        else -- Resta
            for i in 0 to 3 loop
                Suma(i) <= A(i) xor B(i) xor not Carry;
                Carry := (A(i) and not B(i)) or (Carry and (A(i) xor B(i)));
            end loop;
        end if;
        
        C_out <= Carry;
    end process;


end Behavioral;

