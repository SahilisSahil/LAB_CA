# Lab 2: Implementation of Fundamental Logic Gates Using VHDL

## Objective

* Design and implement the seven basic logic gates: AND, OR, NOT, NAND, NOR, XOR, and XNOR using VHDL.
* Create a testbench to verify the functionality of each logic gate.
* Simulate the design using GHDL and analyze the results with GTKWave.
* Compare simulation outputs with the expected truth tables.

## Theory

### Logic Gates in Digital Systems

Logic gates are the fundamental building blocks of digital circuits. They perform operations based on Boolean algebra and generate outputs according to their input conditions.

VHDL provides built-in logical operators that allow these gates to be described directly and efficiently. The most commonly used logic gates are:

* **AND** – Output is high only when all inputs are high.
* **OR** – Output is high when at least one input is high.
* **NOT** – Produces the complement of the input.
* **NAND** – Opposite of the AND operation.
* **NOR** – Opposite of the OR operation.
* **XOR** – Output is high when inputs are different.
* **XNOR** – Output is high when inputs are the same.

### Applications

* AND and OR gates are used in decision-making circuits.
* NAND and NOR gates are considered universal gates and can be used to construct any digital circuit.
* XOR and XNOR gates are commonly used in adders, parity checkers, and comparison circuits.

## Implementation

A single VHDL module was used to implement all seven logic gates. The design consists of two input signals (`A` and `B`) and separate output signals for each gate.

The architecture uses concurrent signal assignments, allowing all logic operations to execute simultaneously, similar to actual hardware behavior.

Example operations:

```vhdl
AND_OUT  <= A and B;
OR_OUT   <= A or B;
NOT_OUT  <= not A;
NAND_OUT <= A nand B;
NOR_OUT  <= A nor B;
XOR_OUT  <= A xor B;
XNOR_OUT <= A xnor B;
```

Since the NOT gate requires only one input, it was implemented using input `A`, while all other gates used both input signals.

## Output

### Logic Gate Simulation

![Logic Gates Waveform](images/logic_gates_waveform.png)

### GTKWave Verification

![GTKWave Output](images/gtkwave_logic_gates.png)

## Discussion

This experiment demonstrated the implementation of combinational logic circuits using VHDL's dataflow modeling approach. Each logic gate was represented using a simple Boolean expression and mapped directly to a corresponding output signal.

A testbench was developed to apply all possible combinations of input values (`00`, `01`, `10`, and `11`). The resulting outputs were observed through GTKWave after simulation.

The waveform analysis confirmed that every gate behaved according to its theoretical truth table. For instance, the XOR output became high only when the inputs differed, while the XNOR output remained high when both inputs were identical. Similarly, NAND and NOR produced outputs complementary to AND and OR respectively.

The simulation verified the concurrent nature of VHDL, where all outputs were updated immediately whenever the inputs changed.

## Conclusion

* Successfully implemented AND, OR, NOT, NAND, NOR, XOR, and XNOR gates using VHDL.
* Verified the functionality of each gate through simulation and waveform analysis.
* Observed correct combinational behavior for all possible input combinations.
* Improved understanding of Boolean logic, VHDL dataflow modeling, and digital circuit verification using GTKWave.
