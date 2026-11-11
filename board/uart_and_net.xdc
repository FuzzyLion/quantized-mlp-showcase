# Assigns the clock pin, sets its voltage standard
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports clk]; # Assigns 100MHz clock input to pin E3 with LVCMOS33 standard

# Defines the characteristics of the primary system clock
create_clock -add -name sys_clk -period 10.00 -waveform {0 5} [get_ports clk]; # Creates a 100MHz system clock named sys_clk with a 50% duty cycle

# clk_net toggles every (max_cnt_clk_net + 1) = 6 sys_clk cycles.
# Its full period is 12 sys_clk cycles: 120 ns, approximately 8.333 MHz.
create_generated_clock -name net_clk -source [get_ports clk] -divide_by 12 [get_pins clk_net_reg/Q]

# sys_clk and net_clk are related clocks. Keep cross-clock paths timed.
# UART/reset/LED interface constraints require separate interface-specific review.

# Sets the pin and voltage standard for various inputs and outputs
set_property -dict { PACKAGE_PIN C4   IOSTANDARD LVCMOS33 } [get_ports din]; # Assigns input pin for data in
set_property -dict { PACKAGE_PIN D4   IOSTANDARD LVCMOS33 } [get_ports dout]; # Assigns output pin for data out
set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports rst]; # Assigns reset pin
set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports ledA]; # Assigns LED segment A
set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports ledB]; # Assigns LED segment B
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports ledC]; # Assigns LED segment C
set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports ledD]; # Assigns LED segment D
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports ledE]; # Assigns LED segment E
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports ledF]; # Assigns LED segment F
set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports ledG]; # Assigns LED segment G
set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports ledDP]; # Assigns LED decimal point
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports led]; # Assigns general LED pin
# Assigns pins for LED anodes, allowing for multiplexing across eight anodes
set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS33 } [get_ports {ledAN[0]}];
set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports {ledAN[1]}];
set_property -dict { PACKAGE_PIN T9   IOSTANDARD LVCMOS33 } [get_ports {ledAN[2]}];
set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports {ledAN[3]}];
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports {ledAN[4]}];
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports {ledAN[5]}];
set_property -dict { PACKAGE_PIN K2   IOSTANDARD LVCMOS33 } [get_ports {ledAN[6]}];
set_property -dict { PACKAGE_PIN U13   IOSTANDARD LVCMOS33 } [get_ports {ledAN[7]}]; # Sets up the last LED anode pin
