----------------------------------------------------------------------------------
-- Company: Hochschule RheinMain
-- Engineer: Steffen Reith <Steffen.Reith@hs-rm.de>
-- 
-- Create Date: Mon May 2 20:23:33 CEST 2022
-- Design Name: Counter
-- Module Name: Counter_TB - Behavioral
-- Project Name: CounterDemo - Simulation
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

entity Counter_TB is
end Counter_TB;

architecture Behavior of Counter_TB is

  --Inputs
  signal clk100Mhz : std_logic := '0';
  signal nreset    : std_logic := '0'; -- Negative reset
 
  --Outputs
  signal ledValues : std_logic_vector(3 downto 0);

  -- Clock period definitions (simulate a 100Mhz clock)
  constant clk_period : time := 10 ns;

begin

  -- Instantiate the Unit Under Test (UUT)
  uut : entity work.Counter(Behavioral)
    port map (clk100Mhz => clk100Mhz,
              nreset    => nreset,
              leds      => ledValues);

  -- Clock process definitions
  clk_process : process
  begin
    clk100Mhz <= '0';
    wait for clk_period / 2;
    clk100Mhz <= '1';
    wait for clk_period / 2;
  end process;

  -- Stimulus process
  stim_proc : process
  begin

    -- hold reset state for 42 ns (be careful the reset is low active) and wait
    -- after the reset is inactive
    nreset <= '0';
    wait for 42 ns;
    nreset <= '1';
    wait for 42 ns;

    -- Simulate for 2 sec
    wait for 2000 ms;

    -- Wait forever (terminate simulation)
    wait;

  end process;

end;
