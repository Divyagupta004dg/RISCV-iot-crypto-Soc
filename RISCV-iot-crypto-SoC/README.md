# 🚀 RISC-V IoT Crypto SoC (Sky130)

### 👩‍💻 Author: Divya Gupta  
**Goal:** Complete RTL-to-GDSII implementation of a **RISC-V IoT Crypto System-on-Chip (SoC)** featuring AES encryption, designed using **open-source EDA tools** on **Sky130 PDK**.

---

## 🧭 Project Overview

This repository documents the **complete chip design flow** — from **RTL design** to **final GDSII layout** — of a RISC-V-based SoC with a built-in AES Crypto Engine.

Each phase includes:
- Detailed documentation (Markdown)
- Verilog / Tcl / Yosys scripts
- Tool commands
- Reports & screenshots

---

## 🧱 Repository Structure

| Folder | Description |
|:--------|:-------------|
| **rtl/** | RTL Verilog design files (AES core, top-level SoC) |
| **tb/** | Testbenches and simulation inputs |
| **synth/** | Yosys synthesis scripts and netlists |
| **sta/** | OpenSTA timing analysis scripts |
| **openlane/** | OpenLane flow files (floorplan, placement, routing) |
| **reports/** | Tool output logs, timing reports, metrics |
| **images/** | Waveforms, tool screenshots, layout images |
| **docs/** | Detailed phase-wise documentation |

---

## 📘 Phase-Wise Progress Tracker

| Phase | Description | Status | Report |
|:------|:-------------|:--------|:--------|
| **1** | AES Core RTL Design | ✅ Completed | [View](docs/phase1_aes_core.md) |
| **2** | SoC Integration (Top-Level Wrapper) | ✅ Completed | [View](docs/phase2_integration.md) |
| **3** | Logic Synthesis (Yosys + Sky130) | ✅ Completed | [View](docs/phase3_synthesis.md) |
| **4** | Static Timing Analysis (OpenSTA) | 🟡 In Progress | [View](docs/phase4_sta.md) |
| **5** | Floorplanning (OpenLane) | 🔜 Upcoming | [View](docs/phase5_floorplan.md) |
| **6** | Placement & Routing | 🔜 Upcoming | — |
| **7** | GDSII Generation & Verification | 🔜 Upcoming | — |

---

## 🧰 Tools & Environment

| Category | Tool / Version |
|-----------|----------------|
| **PDK** | Sky130A (SkyWater 130nm) |
| **Synthesis** | Yosys 0.33 |
| **Timing Analysis** | OpenSTA |
| **Physical Design** | OpenLane |
| **Layout Tools** | Magic, KLayout |
| **Simulation** | GTKWave, Verilator |
| **OS** | Ubuntu 22.04 (VirtualBox) |

---

## 🧠 Learning Focus

- RISC-V ISA (RV32I/M)
- AES Cryptography in Hardware
- RTL to GDSII Flow
- Static Timing Analysis
- Floorplanning, Placement & Routing
- Clock Tree Synthesis
- DRC/LVS Checks

---

## 🧩 Phase Links Quick Access

> Each phase includes commands, screenshots, results, and interview notes.

- 🔹 [Phase 1 — AES Core RTL Design](docs/phase1_aes_core.md)
- 🔹 [Phase 2 — SoC Integration](docs/phase2_integration.md)
- 🔹 [Phase 3 — Logic Synthesis](docs/phase3_synthesis.md)
- 🔹 [Phase 4 — Static Timing Analysis](docs/phase4_sta.md)
- 🔹 [Phase 5 — Floorplanning (OpenLane)](docs/phase5_floorplan.md)

---

## 🎨 Simulation Results

### 🧩 AES Encryption Core (RTL Simulation)

The following waveform shows the **AES encryption process** simulation.  
Here, the input `plaintext` is XORed with `key` in this simplified version to produce `ciphertext`.  
When the encryption completes, the signal `done` goes HIGH.

![AES Waveform](images/aes_wave.png)

---

### 🧩 Top-Level SoC Integration Simulation

This waveform shows the complete SoC operation with AES integrated.  
When `start` is asserted, encryption begins, and the `done` signal goes HIGH to indicate successful encryption.

![SoC Waveform](images/soc_wave.png)

---

## 📜 License
This project uses the **SkyWater 130nm PDK (open-source)** and follows the guidelines of open-source hardware design.

---

> **Note:** This project is part of a self-directed VLSI design learning journey by *Divya Gupta*, aimed at building industry-ready open-source SoC design experience.
