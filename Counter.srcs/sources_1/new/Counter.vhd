----------------------------------------------------------------------------------
-- Company: Hochschule RheinMain
-- Engineer: Steffen Reith <Steffen.Reith@hs-rm.de>
-- 
-- Create Date: Mon May 2 20:23:33 CEST 2022
-- Design Name: Counter
-- Module Name: Counter - Behavioral
-- Project Name: CounterDemo
-- Target Devices: Artix7-100 auf Digilent Nexys4 DDR
-- Tool Versions: Vivado 19.0
-- Description: Kleines Demo eines Zählers
-- 
-- Dependencies: none
-- 
-- Revision: 1
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Counter is
    port ( clk100Mhz  : in  STD_LOGIC;
           nreset     : in  STD_LOGIC;
           leds       : out STD_LOGIC_VECTOR (3 downto 0) );
end Counter;

architecture Behavioral of Counter is

signal counter   : STD_LOGIC_VECTOR (25 downto 0);
signal counter_n : STD_LOGIC_VECTOR (25 downto 0);

begin

cnt : process(nreset, clk100Mhz)

begin

 -- Asynchron Reset
 if (nreset = '0') then

   -- Reset value
   counter <= (others => '0');
  
 else 

  -- Update value on rising edge
  if (rising_edge(clk100Mhz)) then 
  
    counter <= counter_n;
  
  end if;

 end if; 

end process;

 -- Next-state logic
 counter_n <= STD_LOGIC_VECTOR(unsigned(counter) + 1);

 -- Output logic
 leds <= counter(25 downto 22);

end Behavioral;

