# RISC-V IoT Core with Integrated AES/SHA Crypto Engine


***This project designs a small RISC-V processor for IoT devices with a built-in AES-128 and SHA-256 hardware engine. It provides fast, low-power, and secure data communication for IoT systems such as smart health devices, smart meters, and automotive sensors.***

![Image](https://github.com/user-attachments/assets/c06eb770-50e3-46be-900a-c332d7025d23)

## Why This Project?

**Problem:** IoT devices send sensitive data but are easy to hack. Software encryption is too slow and consumes high power.

**Solution:** Hardware encryption directly inside the CPU core. This makes the chip more secure, faster, and energy-efficient.

**Impact:** Secure IoT communication for health, home, and automotive applications.

## **Project Scope (What we will build)**

- *RISC-V Core (RV32I or RV32IM)**

- *AES-128 Engine (encryption/decryption)**

- *SHA-256 Engine (hashing)**

- *Crypto Controller (key storage, access control)**

- *Peripherals: UART, SPI/I2C, GPIO, Timer**

- *Integration: All blocks connected with a simple memory-mapped bus**

- *Full RTL to GDSII Flow: Simulation → Synthesis → Place & Route → GDS layout**

## Flow

- Specification & Architecture

- RTL Coding (CPU, AES, SHA, Peripherals)

- Verification (directed + AES Known Answer Tests)

- Synthesis with Yosys

- Static Timing Analysis (OpenSTA)

- Place & Route with OpenLane/OpenROAD

- Clock Tree Synthesis

- DRC + LVS with Magic & Netgen

- Final GDSII Layout Export
