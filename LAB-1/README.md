
Lab 1: Introduction to VHDL Programming and Open-Source Simulation Environment


1. Objective
To set up, configure, and navigate the open-source VHDL development toolchain (VS Code, GHDL, and GTKWave).

To understand the fundamental structural blocks of a VHDL design (Libraries, Entities, and Architectures).

To write, compile, simulate, and visually verify a basic VHDL circuit.

2. Theory
VHDL stands for VHSIC Hardware Description Language (where VHSIC refers to Very High Speed Integrated Circuits). It is an IEEE industry-standard language used to model digital systems across various levels of abstraction, from high-level algorithmic behavior down to gate-level netlists.

Unlike conventional sequential programming languages (such as C or Python), VHDL is inherently concurrent. It allows hardware designers to accurately model the parallel flow of electrical signals through logic gates and registers simultaneously.

The Three Pillars of a VHDL Design
A standard VHDL source file consists of three distinct, sequential sections:

Library and Packages: Imports predefined data types, operators, and functions.

Entity: Defines the external interface ("black box" view) of the circuit, specifying input/output ports.

Architecture: Details the internal logic, behavior, or structure of the entity.

3. Core Structural Components
A. Libraries and Packages
Libraries act as compiled repositories for reusable design units. The two most fundamental libraries are:

std Library: Implicitly included in every design. It provides basic data types (bit, integer, boolean, character) and standard logical/arithmetic operators.

IEEE Library: Must be explicitly declared. It provides robust logic types essential for real-world hardware modeling.

VHDL
library IEEE;
use IEEE.STD_LOGIC_1164.ALL; -- Provides standard logic types (std_logic)
use IEEE.NUMERIC_STD.ALL;    -- Enables arithmetic operations on std_logic
B. Entity
The entity outlines the input and output boundaries of the component. It declares names, data types, and signal directions (modes):

in: Signals flowing into the component.

out: Signals flowing out of the component.

inout: Bidirectional signals (e.g., shared data buses).

General Syntax & Example (2-Input AND Gate):
VHDL
-- General Syntax
entity <entity_name> is
    port (
        <port_name> : <direction> <data_type>;
        <port_name> : <direction> <data_type> -- Note: No trailing semicolon here
    );
end entity <entity_name>;

-- Example: AND Gate Entity
entity AND_GATE is
    port (
        A : in  std_logic;
        B : in  std_logic;
        Y : out std_logic
    );
end entity AND_GATE;
C. Architecture
The architecture defines what happens inside the entity's black box. While an entity can have multiple architectural descriptions (e.g., one optimized for simulation and one for synthesis), only one can be actively bound at a time.

VHDL
architecture <arch_name> of <entity_name> is
    -- Declarations: Internal wires (signals), constants, components
begin
    -- Concurrent execution statements go here
end architecture <arch_name>;
4. Modeling Styles in VHDL
VHDL supports three primary architectural modeling abstractions to describe the exact same physical circuit:

1. Behavioral Model
The most abstract style, closely resembling traditional software. It utilizes sequential statements executed inside a specialized process block.

VHDL
architecture Behavioral of AND_GATE is
begin
    process(A, B)
    begin
        Y <= A and B; -- Evaluates sequentially within the process
    end process;
end architecture Behavioral;
2. Dataflow Model
Describes how data moves through gates using continuous, concurrent signal assignments. This lab focuses primarily on this style for its simplicity and direct hardware mapping.

VHDL
architecture Dataflow of AND_GATE is
begin
    Y <= A and B; -- Executes concurrently whenever A or B changes
end architecture Dataflow;
3. Structural Model
The lowest level of abstraction, acting as a digital schematic or netlist. It instantiates pre-existing sub-components and wires them together.

VHDL
architecture Structural of AND_GATE is
    component AND2 
        port(X, Z : in std_logic; W : out std_logic);
    end component;
begin
    -- Mapping design ports to component ports
    U1 : AND2 port map (X => A, Z => B, W => Y);
end architecture Structural;
5. Basic Data Types and Internal Signals
std_logic: A 9-valued logic state system (defined in IEEE 1164). Unlike the basic binary bit ('0' or '1'), it handles realistic hardware states like 'Z' (High Impedance) and 'U' (Uninitialized).

std_logic_vector: Represents a multi-bit parallel bus. For example, std_logic_vector(7 downto 0) specifies an 8-bit bus where index 7 is the Most Significant Bit (MSB).

Signals: Internal connections (wires) used to bridge components or statements within an architecture. They are declared before the begin keyword.

VHDL
architecture Behavioral of MY_CIRCUIT is
    signal internal_wire : std_logic;                    -- 1-bit internal wire
    signal data_bus      : std_logic_vector(7 downto 0); -- 8-bit parallel bus
begin
    -- Logic implementation
end architecture Behavioral;
6. The VHDL Simulation Design Cycle
To validate hardware logic without physical programming chips, a strict EDA (Electronic Design Automation) pipeline is followed:

[ Source Code (.vhd) ] ──> [ 1. Analysis (vcom/ghdl -a) ]
                                    │ (Syntax & Grammar Check)
                                    ▼
                           [ 2. Elaboration (ghdl -e) ]
                                    │ (Building Netlist Hierarchy)
                                    ▼
                           [ 3. Simulation (ghdl -r) ] ──> [ Generates VCD Waveform ]
                                                                       │
                                                                       ▼
                                                           [ 4. GTKWave Visualization ]
Analysis (Compilation): The compiler parses the code, checking for syntax violations and semantic rule adherence.

Elaboration: Connects the design units, maps the hierarchy, binds entities to architectures, and prepares a flat simulation executable.

Simulation: Applies test inputs (stimuli) over a defined timeline to calculate output logic responses.

Visual Verification: A waveform viewer (such as GTKWave) reads the resulting .vcd (Value Change Dump) file to generate timing diagrams for debug and validation.

7. Discussion
The primary objective of this experiment was to transition from conceptual digital logic to hands-on hardware modeling using an open-source toolchain. Setting up the workspace combining VS Code, GHDL, and GTKWave provided a lean, cross-platform alternative to heavy commercial IDEs.

During simulation, the fundamental divergence between software programming and hardware description became highly evident. While a software program updates variables sequentially line-by-line, the VHDL architecture updates assignments concurrently. The wave diagrams generated in GTKWave visually confirmed this parallel signal propagation: changing an input signal resulted in immediate, concurrent recalculations of output paths without artificial sequential delay, matching true physical gate behaviors.

8. Conclusion
This laboratory successfully demonstrated the complete design, compilation, and validation pipeline of a basic digital circuit using VHDL. By mastering the fundamental syntax structure—Libraries, Entities, and Dataflow Architectures—a functional digital module was built from scratch. Utilizing GHDL for execution and GTKWave for timing-diagram visualization successfully proved that open-source utilities offer a highly effective and precise environment for checking digital hardware logic prior to physical synthesis.