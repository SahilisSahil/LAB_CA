# Lab 1: Introduction to VHDL Programming and Open-Source Simulation Environment

## Objective

* Set up and configure the VHDL development environment using VS Code, GHDL, and GTKWave.
* Understand the basic structure of a VHDL program, including Libraries, Entities, and Architectures.
* Write, compile, simulate, and verify a simple VHDL design.

## Theory

### What is VHDL?

VHDL (VHSIC Hardware Description Language) is a hardware description language used for modeling and designing digital circuits. Unlike traditional programming languages, VHDL describes hardware behavior where multiple operations can occur simultaneously.

A VHDL design is generally divided into three main sections:

* **Library and Package Declarations** – Provide predefined data types and functions.
* **Entity** – Defines the input and output ports of the circuit.
* **Architecture** – Describes the internal behavior and logic of the design.

## Core Components of VHDL

### Libraries and Packages

Libraries contain reusable resources that can be accessed in a VHDL design. The IEEE library is commonly used for digital circuit development.

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
```

### Entity

An entity specifies the external interface of a circuit by defining its inputs and outputs.

```vhdl
entity AND_GATE is
    port (
        A : in std_logic;
        B : in std_logic;
        Y : out std_logic
    );
end entity AND_GATE;
```

### Architecture

The architecture describes how the circuit operates internally.

```vhdl
architecture Dataflow of AND_GATE is
begin
    Y <= A and B;
end architecture Dataflow;
```

## VHDL Modeling Styles

### Behavioral Modeling

Describes circuit behavior using sequential statements inside a process block.

```vhdl
architecture Behavioral of AND_GATE is
begin
    process(A, B)
    begin
        Y <= A and B;
    end process;
end architecture Behavioral;
```

### Dataflow Modeling

Represents logic through concurrent signal assignments.

```vhdl
architecture Dataflow of AND_GATE is
begin
    Y <= A and B;
end architecture Dataflow;
```

### Structural Modeling

Builds larger circuits by connecting smaller components.

```vhdl
architecture Structural of AND_GATE is
    component AND2
        port(X, Z : in std_logic; W : out std_logic);
    end component;
begin
    U1 : AND2 port map (X => A, Z => B, W => Y);
end architecture Structural;
```

## Data Types and Signals

### std_logic

A standard logic type capable of representing multiple logic states such as:

* '0' : Logic Low
* '1' : Logic High
* 'Z' : High Impedance
* 'U' : Uninitialized

### std_logic_vector

Used to represent multiple bits as a bus.

```vhdl
signal data_bus : std_logic_vector(7 downto 0);
```

### Signals

Signals act as internal connections within a design.

```vhdl
signal internal_wire : std_logic;
```

## VHDL Simulation Flow

The simulation process follows these steps:

```text
Source Code (.vhd)
        │
        ▼
Analysis (ghdl -a)
        │
        ▼
Elaboration (ghdl -e)
        │
        ▼
Simulation (ghdl -r)
        │
        ▼
VCD Waveform File
        │
        ▼
GTKWave Visualization
```

### Analysis

Checks the design for syntax and semantic errors.

### Elaboration

Builds the design hierarchy and prepares the simulation model.

### Simulation

Executes the design and generates waveform data.

### Visualization

GTKWave displays signal transitions for verification and debugging.

## Output

### VHDL Compilation

![Compilation Output](images/compilation.png)

### GTKWave Simulation

![Simulation Waveform](images/waveform.png)

## Discussion

This experiment introduced the complete workflow of VHDL-based digital design using open-source tools. The combination of VS Code, GHDL, and GTKWave provided an efficient environment for writing, simulating, and verifying hardware descriptions.

The simulation results demonstrated the concurrent nature of VHDL. Unlike conventional software programs that execute instructions sequentially, VHDL models hardware where multiple operations occur simultaneously. The generated waveforms confirmed the expected behavior of the designed circuit and provided a clear understanding of signal interactions.

## Conclusion

* Successfully configured the VHDL development environment using VS Code, GHDL, and GTKWave.
* Learned the fundamental structure of VHDL designs, including Libraries, Entities, and Architectures.
* Implemented and simulated a basic digital circuit.
* Verified circuit behavior through waveform analysis using GTKWave.
* Gained practical experience with the VHDL design and simulation workflow.
