# ============================================================
# Custom SDC for RISC-V IoT Crypto SoC - top
# Author: Divya Gupta
# ============================================================
create_clock -name clk -period 10 [get_ports clk]

set_input_delay 2 -clock clk [all_inputs]
set_output_delay 2 -clock clk [all_outputs]

set_false_path -from [get_ports rst]
