----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:01:57 10/26/2018 
-- Design Name: 
-- Module Name:    ADDER1_BCD - Behavioral 
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
use IEEE.std_logic_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADDER1_BCD is
    Port ( X : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           Z : out STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end ADDER1_BCD;

architecture Behavioral of ADDER1_BCD is

signal A, B, C, D : STD_LOGIC_VECTOR (4 downto 0);

begin

A <= "0" & X;
B <= "0" & Y;

C <= A + B;
D <= C - "01010";


SOMA:process (C, D)
begin
	if (C < "01010") then
		Z <= C(3 downto 0);
	else
		Z <= D(3 downto 0);
		cout <= '1';
	end if;
end process;
end Behavioral;

