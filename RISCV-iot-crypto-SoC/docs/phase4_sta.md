# 🧩 Phase 4 — Static Timing Analysis (OpenSTA)

**Goal:**  
Perform Static Timing Analysis (STA) on the synthesized netlist of the RISC-V IoT Crypto SoC using **OpenSTA** with **Sky130 PDK**.

---

## 🧠 Objective

To verify whether the synthesized design meets the timing requirements at the chosen clock frequency (10ns → 100 MHz).

This analysis checks **setup and hold constraints**, ensuring the circuit functions reliably within the specified timing limits.

---

## ⚙️ Files Involved

| File | Purpose |
|------|----------|
| `sta/sta.tcl` | OpenSTA timing analysis script |
| `synth/synth.v` | Synthesized gate-level netlist |
| `reports/sta_report.txt` | Final timing report (WNS/TNS results) |
| `reports/sta_console.log` | Full console output from STA run |
| `images/sta_success.png` | Screenshot of successful STA execution |

---

## 🧩 Commands Used

```bash
cd ~/RISCV-iot-crypto-SoC/sta
sta sta.tcl | tee ../reports/sta_console.log
