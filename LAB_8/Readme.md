# Lab 8: VHDL Programming for Sequential Circuits — Counters

## Objective
- Design and simulate a 4-bit synchronous up counter using VHDL.
- Design and simulate a 4-bit synchronous up/down counter using VHDL.

## Theory
A counter is a sequential digital circuit that changes its output state with each clock pulse. Counters are implemented using flip-flops and are commonly used in digital systems for counting, timing, and control operations.

- **Synchronous Counter:** All flip-flops are triggered by the same clock signal, providing faster and more reliable operation than asynchronous (ripple) counters.
- **Up Counter:** Increments the count by one on every clock edge.
- **Up/Down Counter:** Can count upward or downward depending on the direction control input.
- **Reset:** A synchronous reset clears the counter to `0000` on the next clock edge.

## Output
![Simulation Output](counter.png)

## Discussion
The 4-bit synchronous up counter generates an increasing binary sequence on every clock cycle, making it suitable for applications such as digital clocks, timers, event counters, and frequency dividers. The up/down counter enhances this design by allowing the counting direction to be controlled through a dedicated input signal.

Simulation verifies the expected behavior of both counters:

- The up counter wraps from `1111` (15) back to `0000` (0).
- The up/down counter wraps from `0000` (0) to `1111` (15) while counting downward.

Using the `unsigned` data type simplifies increment and decrement operations while avoiding unnecessary type conversions. These designs demonstrate the advantages of synchronous sequential circuits, including predictable timing and improved performance.

## Conclusion
The 4-bit synchronous up counter and 4-bit synchronous up/down counter were successfully designed and simulated in VHDL. This experiment demonstrated the operation of synchronous counters and their significance in digital circuit design. These counters are essential building blocks for applications such as timers, frequency dividers, registers, and control units, while also serving as the foundation for more advanced sequential systems like state machines and digital clocks.