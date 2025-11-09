# ============================================================
#  OpenSTA Script for RISC-V IoT Crypto SoC
#  Author: Divya Gupta
#  Phase: 4 — Static Timing Analysis
# ============================================================

# 1. Read Liberty Timing Library
read_liberty /home/divya/VLSI/sky130RTLDesignAndSynthesisWorkshop/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

# 2. Read Synthesized Gate-Level Netlist
read_verilog ../synth/synth.v

# 3. Link the Top-Level Design
link_design top

# 4. Create Clock and Basic Timing Constraints
create_clock -name clk -period 10 [get_ports clk]

# Input and output delays (defined relative to clock)
# Exclude clock pin manually from inputs
foreach port [all_inputs] {
    if { $port ne "clk" } {
        set_input_delay 2 -clock clk $port
    }
}
set_output_delay 2 -clock clk [all_outputs]

# 5. Generate Timing Reports
report_checks -path_delay max -fields {slew capacitance} -digits 4 > ../reports/sta_report.txt
report_tns  >> ../reports/sta_report.txt
report_wns  >> ../reports/sta_report.txt

exit
