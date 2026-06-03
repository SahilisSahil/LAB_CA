Lab 3: Design and Simulation of Encoder and Decoder Using VHDL
Objective
To implement a 4-to-2 Priority Encoder using VHDL.
To implement a 2-to-4 Decoder using VHDL.
To verify their functionality through simulation.
Theory
4-to-2 Priority Encoder

An encoder is a combinational logic circuit that converts multiple input lines into a smaller number of output bits. A 4-to-2 encoder has four input lines (I0, I1, I2, and I3) and produces a 2-bit binary output.

In a priority encoder, if more than one input is active simultaneously, the input with the highest priority is encoded. For a 4-to-2 priority encoder, the priority order is:

I3 > I2 > I1 > I0

This ensures that only the highest-priority active input determines the output.

Truth Table
I3	I2	I1	I0	Y1	Y0
0	0	0	1	0	0
0	0	1	X	0	1
0	1	X	X	1	0
1	X	X	X	1	1
2-to-4 Decoder

A decoder is a combinational circuit that converts binary information into a unique output line. A 2-to-4 decoder accepts a 2-bit input and activates one of four output lines based on the input combination.

Only one output remains HIGH at any given time, while all others remain LOW.

Truth Table
A1	A0	Y3	Y2	Y1	Y0
0	0	0	0	0	1
0	1	0	0	1	0
1	0	0	1	0	0
1	1	1	0	0	0
Results
Encoder Simulation

(Insert Encoder Waveform Screenshot Here)

Decoder Simulation

(Insert Decoder Waveform Screenshot Here)

The simulation waveforms confirmed that both circuits operated according to their respective truth tables.

Discussion
The priority encoder successfully converted active input lines into a corresponding 2-bit binary code.
When multiple inputs were active, the highest-priority input was selected, ensuring reliable operation.
The decoder correctly translated each binary input combination into a unique output line.
Only one decoder output became active for each input combination, demonstrating proper decoding behavior.
The simulation results matched the expected theoretical outputs, validating the VHDL design.
Conclusion

The 4-to-2 priority encoder and 2-to-4 decoder were successfully designed and simulated using VHDL. The simulation results agreed with the theoretical truth tables, confirming correct circuit operation. This experiment provided practical understanding of combinational logic circuits and demonstrated how encoders and decoders are used in digital systems for data encoding and signal selection.