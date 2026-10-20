# 8-bit to 4-bit Converter

This project implements an **8-bit to 4-bit Converter** using Verilog HDL. The circuit selects either the upper nibble or lower nibble  of an 8-bit input word based on a single-bit select signal.
In addition to RTL design and functional verification, the complete **ASIC Physical Design Flow** has been carried out, including synthesis, floorplanning, power planning, placement, clock tree synthesis (CTS), routing, and signoff.

---

## Design Specifications

### Inputs

| Signal | Width | Description |
|----------|----------|-------------|
| din | 8-bit | Input data |
| sel | 1-bit | Selection signal |

### Output

| Signal | Width | Description |
|----------|----------|-------------|
| dout | 4-bit | Selected 4-bit output |

---

## Functional Description

The converter outputs one of the two 4-bit nibbles from the 8-bit input.

| sel | Output |
|------|--------|
| 0 | din[3:0] |
| 1 | din[7:4] |

### RTL Implementation

```verilog
assign dout = sel ? din[7:4] : din[3:0];
```

---

## Test Cases

| Input (din) | sel | Output (dout) |
|-------------|-----|---------------|
| 10110100 | 1 | 1011 |
| 10110100 | 0 | 0100 |
| 11001010 | 1 | 1100 |
| 11001010 | 0 | 1010 |

The simulation waveform confirms correct operation for all test cases.

---

## ASIC Physical Design Flow

### 1. RTL Design
The circuit functionality is described using Verilog HDL.

### 2. Functional Simulation
The design is verified using a dedicated testbench and simulated to ensure correct functionality.

### 3. Synthesis
RTL code is transformed into a gate-level netlist while satisfying design constraints.

### 4. Floorplanning
The chip boundary, core area, and placement regions are defined.

### 5. Power Planning
Power rings and power distribution networks are created to ensure reliable power delivery.

### 6. Placement
Standard cells are optimally placed within the floorplan.

### 7. Clock Tree Synthesis (CTS)
A balanced clock distribution network is generated to reduce clock skew and insertion delay.

### 8. Routing
Physical interconnections between placed cells are established.

### 9. Signoff
Final verification is performed to ensure the design is ready for fabrication.

---

## Tools Used

### Hardware Description
- Verilog HDL

### Functional Verification
- Cadence Xcelium

### Logic Synthesis
- Cadence Genus

### Physical Design and Signoff
- Cadence Innovus
  - Floorplanning
  - Power Planning
  - Placement
  - Clock Tree Synthesis (CTS)
  - Routing
  - Signoff Verification

### Platform
- Linux

---

## Results

 Successful RTL design implementation

 Functional verification completed using Xcelium

 Synthesis completed using Cadence Genus

 Floorplanning completed successfully

 Power planning completed successfully

 Placement completed successfully

 Clock Tree Synthesis (CTS) completed

 Routing completed successfully

 Signoff stage completed successfully

 End-to-end RTL-to-GDSII flow demonstrated


## Author

**Sency Antony**  

B.Tech Electronics Engineering with VLSI Design and Technology

Government Model Engineering College, Thrikkakara


