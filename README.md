# Wallace Tree Multiplier Physical Design (45nm)
<p align="center">
  <img
    src="https://github.com/user-attachments/assets/1d14312e-d308-445b-ac3c-abecb4e511af"
    width="392"
    height="334"
    alt="image"
  />
</p>
## Overview
This repository presents the **physical design and post-layout verification of an 8-bit Wallace Tree Multiplier** implemented in **gpdk45 CMOS technology** using **Cadence Virtuoso**. The design uses **transmission-gate (TG) full and half adders** for partial-product reduction and a **carry-lookahead adder (CLA)** for the final accumulation stage.

The project emphasizes **manufacturable layout**, **parasitic-aware sizing**, and **post-layout verification**. All reported performance metrics are based on **post-layout extracted simulations**.

---

## Architecture
The Wallace Tree Multiplier consists of three main blocks:
<p align="center">
  <img
    src="https://github.com/user-attachments/assets/12f77e4c-f47f-4985-b7c8-438a669c39c7"
    width="567"
    height="648"
    alt="fig_block_diagram"
  />
</p>
1. **Partial Product Generation**  
   An 8×8 AND array generating partial products.

2. **Wallace Tree Reduction Network**  
   Partial products are reduced using TG-based full and half adders arranged in multiple reduction layers, producing two rows of sum and carry.

3. **Final Adder**  
   A **carry-lookahead adder (CLA)** is used to minimize worst-case accumulation latency and meet timing constraints under parasitic effects.

The architecture was selected under the assumption that Wallace and Dadda trees provide comparable reduction depth and delay characteristics, while Wallace tree allows aggressive early reduction that simplifies floorplanning and routing.

---

## Transistor-Level Design
- **TG-PT Hybrid Full/Half Adders**  
  XOR/XNOR signals are generated in parallel to avoid sequential delay. Transmission gates provide rail-to-rail signal integrity and simplify layout abutment through shared diffusion and contiguous cell placement.

- **Driver Stages**  
  Buffer stages are inserted along long RC paths in the reduction network to mitigate interconnect delay and restore signal strength.

- **Final CLA Adder**  
  The final adder uses a hierarchical CLA structure to limit fan-in and logic depth, balancing delay, area, and design complexity.

---

## Physical Design Strategy
The layout follows a structured, data-driven approach:
- Cell abutment for diffusion and well sharing
- Vertical and horizontal alignment of adders
- Shared VDD/GND rails
- Contacted poly gates where density is required
- Unidirectional signal flow to reduce routing complexity

The design uses alternating standard-cell row orientation to maximize area efficiency.

---
<p align="center">
  <img
    src="https://github.com/user-attachments/assets/1c57f90d-eaa4-453b-9c9e-8e6b23772125"
    width="716"
    height="518"
    alt="Buffer Schematic and Layout"
  />
</p>


## Verification and Results
All verification is performed using **post-layout extracted parasitics**.

- **DRC/LVS**: Clean (Cadence PVS)
- **Worst-case propagation delay**: **2.2 ns**
- **Energy per multiplication**: **318 fJ**
- **Multiplier area**: **1332.67 µm²**

Worst-case delay is dominated by the physical placement of the full adder generating bit 10, which exhibits the longest interconnect path. Nanotime analysis identifies the same critical path observed in schematic-level analysis.

---

## Bonus: Multiply-Accumulate Unit (MAC)
A bonus **fused multiply-accumulate (MAC)** unit is implemented by integrating an additional **16-bit CLA adder** to perform:

s = a × b + c


Post-layout MAC performance:
- **Propagation delay**: 2.76 ns  
- **Energy**: 780.49 fJ  
- **Area**: 2040.15 µm²  

Future work includes integrating an output feedback path to support full accumulation:

c(i+1) = a × b + c(i)

---
## Layout

### Full Adder & Half Adder Cells
<p align="center">
  <img
    src="https://github.com/user-attachments/assets/d833f3db-2462-4bf4-8af7-65cdad05b181"
    width="520"
    alt="Full Adder Layout"
  />
</p>

<p align="center">
  <img
    src="https://github.com/user-attachments/assets/01be3749-e51c-4f64-93de-d91a24f332b0"
    width="520"
    alt="Half Adder Layout"
  />
</p>

---
### Partial Product Generator Cells
<p align="center">
  <img
    src="https://github.com/user-attachments/assets/e0700a4c-99f9-499d-a3ae-2a74975405d2"
    width="520"
    alt="Partial Product Generator Layout"
  />
</p>
---
### Final Adder
<p align="center">
  <img
    src="https://github.com/user-attachments/assets/5b664a48-66c9-437e-b8f7-cc867b65a0cc"
    width="800"
    alt="Final Adder Layout"
  />
</p>

---

### Multiply–Accumulate (MAC)
<p align="center">
  <img
    src="https://github.com/user-attachments/assets/41cffddb-3f2c-49cb-ad84-352a784bdbc4"
    width="800"
    alt="MAC Layout"
  />
</p>





