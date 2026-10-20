# 8-bit to 4-bit Converter

## Overview

This project implements an **8-bit to 4-bit converter (multiplexer-based data selector)** using Verilog HDL. The design selects either the upper nibble (`din[7:4]`) or lower nibble (`din[3:0]`) of an 8-bit input based on a select signal.

The project also includes the complete ASIC physical design flow, from RTL design to signoff, with screenshots and results from each implementation stage.

---

## Design Specification

### Inputs
- `din[7:0]` : 8-bit input data
- `sel` : Select signal

### Output
- `dout[3:0]` : 4-bit output data

### Functionality

| sel | Output |
|------|---------|
| 0 | `din[7:4]` |
| 1 | `din[3:0]` |

### Verilog Logic

```verilog
assign dout = sel ? din[3:0] : din[7:4];
```

---

## Simulation

### Test Cases

| Input (din) | sel | Expected Output |
|------------|-----|----------------|
| 10110100 | 1 | 0100 |
| 10110100 | 0 | 1011 |
| 11001010 | 1 | 1010 |
| 11001010 | 0 | 1100 |

### Waveform Result

The simulation waveform verifies the correct selection of the upper and lower 4-bit portions of the 8-bit input according to the select signal.

![Simulation](Simulation/Xcelium.png)

---

## ASIC Physical Design Flow

This project demonstrates the complete RTL-to-GDSII flow.

### 1. Synthesis
Converts RTL Verilog code into a gate-level netlist and generates timing reports.

### 2. Floorplanning
Defines the chip layout boundary, core area, and placement regions.

### 3. Power Planning
Creates VDD and VSS power distribution networks.

### 4. Placement
Places standard cells within the floorplan.

### 5. Clock Tree Synthesis (CTS)
Builds a clock distribution network while minimizing clock skew.

### 6. Routing
Connects all placed cells according to the netlist.

### 7. Signoff
Performs final verification including timing, DRC, and LVS checks.

---

## Tools Used

- Verilog HDL
- Cadence Xcelium
- Cadence Genus
- Cadence Innovus

---

## Results

- Functional verification completed successfully.
- Correct 8-bit to 4-bit data selection achieved.
- RTL-to-GDSII implementation flow completed.
- Timing requirements satisfied after physical design and signoff.

---

## Author

**Sency Antony**

B.Tech Electronics Engineering with VLSI Design and Technology
Government Model Engineering College

GitHub: https://github.com/SencyAntony
