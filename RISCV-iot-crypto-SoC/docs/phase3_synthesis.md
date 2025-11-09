# 🧩 Phase 3 — Logic Synthesis (Yosys + Sky130)

### 🎯 Objective
Synthesize the AES-based SoC using Yosys with the Sky130 PDK library.

---

### 📁 Files Involved
| File | Description |
|:------|:-------------|
| `synth/synth.ys` | Yosys synthesis script |
| `reports/synth.log` | Full synthesis log output |
| `images/synth_success.png` | Screenshot of successful synthesis execution |

---

### ⚙️ Commands Used
```bash
cd ~/RISCV-iot-crypto-SoC/synth
yosys -s synth.ys | tee ../reports/synth.log
