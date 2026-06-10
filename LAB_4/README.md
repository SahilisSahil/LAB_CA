# Lab 4: Design and Simulation of Multiplexer and Demultiplexer Using VHDL

## Objective

* Design a 4-to-1 Multiplexer (MUX) using VHDL.
* Design a 1-to-4 Demultiplexer (DEMUX) using VHDL.
* Verify the functionality of both circuits through simulation.

## Theory

### 4-to-1 Multiplexer (MUX)

A Multiplexer (MUX) is a combinational logic circuit that selects one input from multiple input lines and forwards it to a single output. The selection is controlled by select lines.

For a 4-to-1 MUX:

* Inputs: D0, D1, D2, D3
* Select Lines: S1, S0
* Output: Y

#### Truth Table

| S1 | S0 | Output (Y) |
| -- | -- | ---------- |
| 0  | 0  | D0         |
| 0  | 1  | D1         |
| 1  | 0  | D2         |
| 1  | 1  | D3         |

### 1-to-4 Demultiplexer (DEMUX)

A Demultiplexer (DEMUX) is a combinational circuit that routes a single input signal to one of several output lines according to the select inputs.

For a 1-to-4 DEMUX:

* Input: D
* Select Lines: S1, S0
* Outputs: Y0, Y1, Y2, Y3

#### Truth Table

| S1 | S0 | Active Output |
| -- | -- | ------------- |
| 0  | 0  | Y0 = D        |
| 0  | 1  | Y1 = D        |
| 1  | 0  | Y2 = D        |
| 1  | 1  | Y3 = D        |


## Discussion

The multiplexer successfully transferred the selected input to the output based on the values of the select lines. The simulation results matched the expected truth table, confirming the correct operation of the design.

Similarly, the demultiplexer directed the input signal to the chosen output line while keeping the remaining outputs inactive. This behavior verified that the select lines controlled the output routing correctly.

MUX and DEMUX circuits are widely used in digital systems for signal routing, communication channels, data selection, and memory interfacing. These components help reduce hardware complexity while improving data management efficiency.

## Conclusion

* Implemented a 4-to-1 Multiplexer and a 1-to-4 Demultiplexer using VHDL.
* Simulated both circuits and verified their operation through waveform analysis.
* Observed correct input selection in the MUX and proper signal distribution in the DEMUX.
* Gained practical understanding of combinational circuit design using VHDL.
