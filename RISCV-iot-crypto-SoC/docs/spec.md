# 📘 Project Specification — RISC-V IoT Crypto SoC

## 1. Overview
A lightweight 32-bit RISC-V SoC (RV32IM) for IoT applications with integrated AES-128 and SHA-256 crypto engines for secure data communication.

## 2. Objectives
- Implement a secure, low-power RISC-V IoT core.
- Integrate hardware crypto engines for AES/SHA.
- Complete full ASIC flow using open-source tools (RTL → GDSII).

## 3. Architecture
- RV32IM Core  
- AES-128 Encryption Engine  
- SHA-256 Hash Engine  
- Crypto Controller  
- UART, Timer, GPIO  
- On-chip SRAM  

![Architecture Diagram](../images/arch.png)

## 4. Memory Map
| Address Range | Module | Description |
|----------------|---------|-------------|
| 0x1000_0000 | AES_CTRL | AES Control |
| 0x1000_0010 | AES_KEY  | Write-only Key Register |
| 0x1000_0020 | SHA_CTRL | SHA Control |
| 0x2000_0000 | UART | UART Registers |

## 5. Toolchain
| Stage | Tool |
|--------|------|
| Simulation | Icarus Verilog / Verilator / GTKWave |
| Synthesis | Yosys |
| STA | OpenSTA |
| PnR | OpenLane / OpenROAD |
| DRC / LVS | Magic + Netgen |
| Layout Viewer | KLayout |
| PDK | SkyWater 130 nm (sky130A) |

## 6. Deliverables
- RTL code and testbenches  
- Simulation waveforms  
- Synthesis, timing, and area reports  
- Final GDSII layout
