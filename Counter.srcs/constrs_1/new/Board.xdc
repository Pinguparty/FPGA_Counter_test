set_property CFGBVS Vcco [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

set_property PACKAGE_PIN E3 [get_ports clk100Mhz]
set_property IOSTANDARD LVCMOS33 [get_ports clk100Mhz]



set_property PACKAGE_PIN C12 [get_ports nreset]
set_property IOSTANDARD LVCMOS33 [get_ports nreset]


set_property PACKAGE_PIN H17 [get_ports {leds[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[0]}]
set_property SLEW FAST [get_ports {leds[0]}]

set_property PACKAGE_PIN K15 [get_ports {leds[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[1]}]
set_property SLEW FAST [get_ports {leds[1]}]

set_property PACKAGE_PIN J13 [get_ports {leds[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[2]}]
set_property SLEW FAST [get_ports {leds[2]}]

set_property PACKAGE_PIN N14 [get_ports {leds[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[3]}]
set_property SLEW FAST [get_ports {leds[3]}]
