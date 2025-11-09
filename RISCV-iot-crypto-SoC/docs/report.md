# RISC-V IoT Crypto SoC – Project Report

## 🧩 Phase 3 — Synthesis (Yosys + Sky130)

### 📘 Overview
The RTL design of the AES core integrated with the RISC-V SoC top module was synthesized using **Yosys 0.33** and the **Sky130 HD standard-cell library** (`sky130_fd_sc_hd__tt_025C_1v80.lib`).  
This phase converts the behavioral Verilog code into a gate-level netlist ready for timing analysis and place-and-route.

---

### ⚙️ Synthesis Flow
1. **Read Verilog RTL:**
   - `aes_core.v`
   - `top.v`
2. **Hierarchy setup**
3. **Process & Optimization passes**
4. **DFF mapping (`dfflibmap`)**
5. **Technology mapping (`abc`)**
6. **Write gate-level netlist**

---

### 📊 Final Synthesis Summary

=== aes_core ===
Number of cells: 642
sky130_fd_sc_hd__a21oi_1 : 128
sky130_fd_sc_hd__clkinv_1 : 129
sky130_fd_sc_hd__dfrtp_1 : 129
sky130_fd_sc_hd__nor2_1 : 128
sky130_fd_sc_hd__xnor2_1 : 128

=== top ===
Cells: 1 (aes_core)

Total cells: 642
Warnings: 26 unique, 234 total
End of script – Yosys finished successfully.


---

### 🖼️Screenshot
![Synthesis Result](../images/synth_success.png)

---

### 📄 Log File
Full Yosys log (complete output):  
[`reports/synth.log`](../reports/synth.log)

---

###  Key Takeaways

| Topic | Explanation |
|-------|--------------|
| **Synthesis** | Converts RTL into gate-level netlist using standard cells. |
| **Liberty (.lib)** | Describes timing/power of Sky130 cells used by Yosys. |
| **Mapped Cells** | D-FFs, NORs, XNORs, INV, A21OI logic gates. |
| **Output** | `synth_out.v` – gate-level netlist ready for STA & PnR. |
| **Warnings** | Non-fatal; ignored expressions in .lib definitions. |

---

###  Status
✔️ **Synthesis completed successfully** using Sky130 HD library.  
✔️ Gate-level netlist generated.  
✔️ No critical errors found.  

---

###  Next Step
Proceed to **Phase 4 — Static Timing Analysis (OpenSTA)** using the generated netlist and liberty file.

---

Author: Divya Gupta
Project: RISC-V IoT Crypto SoC

