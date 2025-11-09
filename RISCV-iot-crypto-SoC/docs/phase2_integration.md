# 🧩 Phase 2 — SoC Integration (Top-Level Wrapper)

### 🎯 Objective
Integrate the AES core with a top-level SoC wrapper for IoT applications.

---

### 📁 Files Involved
| File | Description |
|:------|:-------------|
| `rtl/top.v` | Top-level module connecting AES core, control, and I/O |
| `tb/top_tb.v` | Testbench for complete SoC verification |

---

### ⚙️ Simulation Steps
```bash
iverilog -o top.vvp rtl/aes_core.v rtl/top.v tb/top_tb.v
vvp top.vvp
gtkwave soc_wave.vcd
