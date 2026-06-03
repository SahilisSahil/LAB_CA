Lab 2: Structural and Behavioral Realization of Fundamental Logic Gates in VHDL


1. Objective

The purpose of this lab is to design individual VHDL implementations for the seven fundamental logic gates: AND, OR, NOT, NAND, NOR, XOR, and XNOR.

Another goal is to create behavioral test benches to simulate all possible input combinations and observe the corresponding outputs for each gate.

Finally, the simulation results are analyzed using GTKWave to verify that the waveform outputs match the expected Boolean truth tables.

2. Theoretical Background

Digital systems are built upon logic gates, which are basic circuits that perform operations based on Boolean algebra. In VHDL, these operations are directly represented using built-in logical operators, making hardware description more intuitive and efficient.

The basic gates like AND, OR, and NOT form the foundation of digital logic design. NAND and NOR are considered universal gates because any digital system can be implemented using only one of these types. On the other hand, XOR and XNOR are widely used in arithmetic circuits such as adders, parity generators, and comparators due to their ability to detect differences and equivalence between signals.

Each logic function in VHDL directly corresponds to a Boolean expression:

AND produces a high output only when both inputs are high.
OR gives a high output if at least one input is high.
NOT inverts the input signal.
NAND outputs low only when both inputs are high, otherwise high.
NOR outputs high only when both inputs are low.
XOR outputs high when inputs are different.
XNOR outputs high when inputs are identical.
3. Implementation Overview

Instead of writing separate modules for each gate, a combined dataflow-based VHDL design can be used where all gates operate in parallel within a single architecture.

In this design, an entity is defined with two input signals (A and B) and multiple output signals corresponding to each logic gate. The architecture then assigns each output using concurrent signal assignment statements.

The NOT gate is slightly different because it operates on a single input, while all other gates use both A and B.

The VHDL code follows a simple structure where each output continuously reflects the result of its corresponding logical operation. This ensures real-time hardware-like behavior during simulation.

4. Discussion

This experiment demonstrated how Boolean algebra can be directly translated into VHDL concurrent statements, which represent real hardware behavior rather than sequential software execution.

During simulation, a testbench was used to apply all possible input combinations: 00, 01, 10, and 11. The output responses were observed using GTKWave after compiling with GHDL.

The results showed that each gate behaved exactly as expected. For example, the XOR output became high only when the inputs were different, while the NAND output remained high for all cases except when both inputs were 1.

The waveforms confirmed that the outputs changed immediately with input variations, demonstrating correct combinational logic behavior without delays or inconsistencies.

5. Conclusion

The implementation of the seven fundamental logic gates using VHDL was successfully completed.

By using a dataflow modeling approach, each Boolean expression was directly mapped to hardware-like signal behavior. Simulation results verified that all outputs matched their theoretical truth tables.

This lab strengthened understanding of VHDL syntax, combinational logic design, and waveform analysis using GTKWave, providing a solid foundation for more advanced digital system design.
