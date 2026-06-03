Lab 2: Structural and Behavioral Realization of Fundamental Logic Gates in VHDL

1. Objective
To implement individual VHDL code blocks for the seven core digital logic gates: AND, OR, NOT, NAND, NOR, XOR, and XNOR.

To construct behavioral test benches to simulate the input-output combinations for each gate.

To analyze the resulting signal transitions in GTKWave and cross-verify the waveforms against theoretical Boolean truth tables.

2. Theoretical Background
Digital systems rely fundamentally on logic gates—hardware circuits that compute binary decisions based on Boolean algebra. In VHDL, these hardware primitives map directly to built-in concurrent operators.

While gates like AND, OR, and NOT form the basis of standard logic, universal gates (NAND and NOR) are critical for physical hardware manufacturing because any arbitrary Boolean equation can be constructed using only these gate types. XOR and XNOR serve as the structural backbone for arithmetic operations like adders, parity checkers, and comparators.


Core Gate Specifications and VHDL Native Operators

​| Gate Type | VHDL Operator | Boolean Formula               | Output Condition (How it Works)                             |
| --------- | ------------- | ----------------------------- | ----------------------------------------------------------- |
| AND       | `and`         | ( Y = A \cdot B )             | Outputs 1 only when both inputs are 1.                      |
| OR        | `or`          | ( Y = A + B )                 | Outputs 1 if at least one input is 1.                       |
| NOT       | `not`         | ( Y = \overline{A} )          | Inverts the input (turns 1 to 0, and 0 to 1).               |
| NAND      | `nand`        | ( Y = \overline{A \cdot B} )  | Inverted AND; outputs 0 only when both inputs are 1.        |
| NOR       | `nor`         | ( Y = \overline{A + B} )      | Inverted OR; outputs 1 only when both inputs are 0.         |
| XOR       | `xor`         | ( Y = A \oplus B )            | Outputs 1 only when the inputs are different.               |
| XNOR      | `xnor`        | ( Y = \overline{A \oplus B} ) | Inverted XOR; outputs 1 only when the inputs are identical. |

3. Implementation Syntax Example
While each gate can be separated into its own module, a combined parallel implementation layout using the Dataflow abstraction style is typically structured as follows:

VHDL
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LOGIC_GATES is
    port (
        A : in  std_logic;
        B : in  std_logic;
        Y_AND  : out std_logic;
        Y_OR   : out std_logic;
        Y_NOT  : out std_logic;
        Y_NAND : out std_logic;
        Y_NOR  : out std_logic;
        Y_XOR  : out std_logic;
        Y_XNOR : out std_logic
    );
end entity LOGIC_GATES;

architecture Dataflow of LOGIC_GATES is
begin
    Y_AND  <= A and B;
    Y_OR   <= A or B;
    Y_NOT  <= not A; -- Operates strictly on a single input
    Y_NAND <= A nand B;
    Y_NOR  <= A nor B;
    Y_XOR  <= A xor B;
    Y_XNOR <= A xnor B;
end architecture Dataflow;
4. Discussion
This experiment focused on mapping mathematical Boolean primitives to actual concurrent VHDL expressions. Writing hardware equations highlights the distinct difference between conditional branch programming in software and dataflow hardware propagation.

During the simulation phase, a testbench sequentially stepped through every physical state combination for the inputs: (A=0, B=0), (A=0, B=1), (A=1, B=0), and (A=1, B=1). When compiling via GHDL and evaluating the signal transitions using GTKWave, we verified that the outputs reacted instantaneously to any change on the input bus wires.

For instance, the XOR gate output shifted high exclusively when the inputs mismatched, whereas the NAND gate output remained strictly high for all states except the final 1-1 condition. This timing alignment confirmed that the software-simulated primitives exactly duplicate the physical voltage characteristics of hardware logic gates.

5. Conclusion
The functional realization of the seven basic logic gates was successfully achieved using VHDL. By defining the hardware constraints within the dataflow architecture, the direct mapping of mathematical operations to signal behavior was observed.

Visual validation via GTKWave confirmed that all simulated outputs matched their respective truth tables without logic discrepancies. This experiment successfully solidified our foundational skills in using VHDL syntax, writing basic test stimulation structures, and debugging complex bus logic interactions using open-source EDA tools.