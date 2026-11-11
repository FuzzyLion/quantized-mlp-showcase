# Run from any directory with: vsim -c -do /path/to/simulation/sim.tcl
cd [file dirname [file normalize [info script]]]
if {![file isdirectory work]} { vlib work }
vlog -sv ../rtl/*.sv testbench_net.sv
vsim -gtest_size=16 -ginputFile=./data/smoke/input.mif -goutputFile=./data/smoke/target.mif testbench_net
run -all
quit -f
