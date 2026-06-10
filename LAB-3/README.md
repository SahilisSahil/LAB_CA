# Lab 3: Design and Simulation of Encoder and Decoder Using VHDL

## Objective

* Design and implement a 4-to-2 Priority Encoder using VHDL.
* Design and implement a 2-to-4 Decoder using VHDL.
* Simulate both circuits and verify their operation through waveform analysis.
* Compare simulation results with the corresponding truth tables.

## Theory

### 4-to-2 Priority Encoder

An encoder is a combinational logic circuit that converts multiple input signals into a smaller binary representation. A 4-to-2 encoder accepts four input lines and generates a 2-bit output code.

In a priority encoder, inputs are assigned different priority levels. When multiple inputs become active at the same time, the encoder produces the binary code of the highest-priority input.

For a 4-to-2 priority encoder, the priority order is:

```text
I3 > I2 > I1 > I0
```

This means that if `I3` is active, it will be encoded regardless of the states of the lower-priority inputs.

### Priority Encoder Truth Table

| I3 | I2 | I1 | I0 | Y1 | Y0 |
| -- | -- | -- | -- | -- | -- |
| 0  | 0  | 0  | 1  | 0  | 0  |
| 0  | 0  | 1  | X  | 0  | 1  |
| 0  | 1  | X  | X  | 1  | 0  |
| 1  | X  | X  | X  | 1  | 1  |

---

### 2-to-4 Decoder

A decoder is a combinational circuit that converts binary input data into a unique output line. A 2-to-4 decoder takes a 2-bit input and activates one of four outputs corresponding to the input combination.

At any instant, only one output remains HIGH while all others remain LOW.

### Decoder Truth Table

| A1 | A0 | Y3 | Y2 | Y1 | Y0 |
| -- | -- | -- | -- | -- | -- |
| 0  | 0  | 0  | 0  | 0  | 1  |
| 0  | 1  | 0  | 0  | 1  | 0  |
| 1  | 0  | 0  | 1  | 0  | 0  |
| 1  | 1  | 1  | 0  | 0  | 0  |

## Implementation

The priority encoder was implemented using conditional statements that check the input signals according to their priority level. The highest active input determines the final output code.

The decoder was implemented using concurrent signal assignments that map each binary input combination to its corresponding output line.

Both designs were simulated using GHDL, and the resulting waveforms were analyzed using GTKWave.

## Output

### Priority Encoder Simulation

![Priority Encoder Waveform](encoder.png)

### Decoder Simulation

![Decoder Waveform](decoder.png)

## Discussion

The simulation results demonstrated the correct behavior of both combinational circuits.

For the priority encoder, the output always represented the highest-priority active input. When multiple inputs were asserted simultaneously, lower-priority inputs were ignored, ensuring deterministic operation.

The decoder successfully translated each 2-bit binary input into a unique active output line. For every input combination, only one output remained HIGH while the remaining outputs stayed LOW.

Waveform analysis confirmed that both circuits responded immediately to input changes, reflecting the expected behavior of combinational logic systems.

## Conclusion

* Successfully designed and implemented a 4-to-2 Priority Encoder using VHDL.
* Successfully designed and implemented a 2-to-4 Decoder using VHDL.
* Verified the functionality of both circuits through simulation and waveform analysis.
* Observed correct encoding and decoding operations for all valid input combinations.
* Gained practical experience with combinational circuit design and VHDL-based hardware modeling.
