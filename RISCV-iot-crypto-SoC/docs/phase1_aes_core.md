# 🧩 Phase 1 — AES Core RTL Design

### 🎯 Objective
Design the AES encryption core in Verilog and verify its basic functionality.

---

### 📁 Files Involved
| File | Description |
|:------|:-------------|
| `rtl/aes_core.v` | RTL Verilog code implementing AES encryption logic |
| `tb/aes_core_tb.v` | Testbench for functional verification |

---

### ⚙️ Simulation Steps
```bash
# Compile and simulate AES core
iverilog -o aes_core.vvp rtl/aes_core.v tb/aes_core_tb.v
vvp aes_core.vvp
gtkwave aes_wave.vcd
