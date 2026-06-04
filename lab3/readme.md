# Experiment: Design and Simulation of 4-to-1 Multiplexer (MUX) and 1-to-4 Demultiplexer (DEMUX)

## Aim

* To design and simulate a 4-to-1 Multiplexer (MUX).
* To design and simulate a 1-to-4 Demultiplexer (DEMUX).
* To verify the functionality of both circuits through simulation.

---

# Objectives

1. To understand the operation of multiplexers and demultiplexers.
2. To study the role of select lines in data routing.
3. To implement and simulate combinational logic circuits.
4. To analyze the simulation results and compare them with theoretical expectations.

---

# Theory

## Multiplexer (MUX)

A Multiplexer (MUX) is a combinational logic circuit that selects one input from multiple input lines and forwards it to a single output line. The selection process is controlled by select lines.

A 4-to-1 Multiplexer consists of:

* Four data inputs: D0, D1, D2, and D3
* Two select lines: S1 and S0
* One output: Y

The output depends on the combination of select lines.

### Truth Table of 4-to-1 MUX

| S1 | S0 | Output (Y) |
| -- | -- | ---------- |
| 0  | 0  | D0         |
| 0  | 1  | D1         |
| 1  | 0  | D2         |
| 1  | 1  | D3         |

### Applications of Multiplexer

* Data routing in communication systems
* Resource sharing in digital systems
* Parallel-to-serial data conversion
* Processor and memory interfacing

---

## Demultiplexer (DEMUX)

A Demultiplexer (DEMUX) is a combinational logic circuit that routes a single input signal to one of several output lines. The destination output is determined by the select lines.

A 1-to-4 Demultiplexer consists of:

* One data input: D
* Two select lines: S1 and S0
* Four outputs: Y0, Y1, Y2, and Y3

### Truth Table of 1-to-4 DEMUX

| S1 | S0 | Active Output |
| -- | -- | ------------- |
| 0  | 0  | Y0 = D        |
| 0  | 1  | Y1 = D        |
| 1  | 0  | Y2 = D        |
| 1  | 1  | Y3 = D        |

### Applications of Demultiplexer

* Data distribution systems
* Communication networks
* Memory address decoding
* Serial-to-parallel data conversion

---

# Software Required

* Xilinx Vivado / ModelSim / Quartus Prime
* VHDL Simulation Environment

---

# Procedure

### For 4-to-1 Multiplexer

1. Create a new project in the simulation software.
2. Design the 4-to-1 Multiplexer circuit.
3. Assign four input signals and two select lines.
4. Compile the design.
5. Apply different combinations of select lines.
6. Observe the output waveform.
7. Verify that the output corresponds to the selected input.

### For 1-to-4 Demultiplexer

1. Design the 1-to-4 Demultiplexer circuit.
2. Assign one input signal and two select lines.
3. Compile the design.
4. Apply different select-line combinations.
5. Observe the output waveforms.
6. Verify that the input signal is routed to the correct output line.

---

# Simulation Results

## 4-to-1 Multiplexer

The simulation confirmed that the output followed the selected input according to the values of the select lines. For each combination of S1 and S0, the corresponding input was successfully transferred to the output.

### Observation Table

| S1 | S0 | Selected Input | Output |
| -- | -- | -------------- | ------ |
| 0  | 0  | D0             | D0     |
| 0  | 1  | D1             | D1     |
| 1  | 0  | D2             | D2     |
| 1  | 1  | D3             | D3     |

---

## 1-to-4 Demultiplexer

The simulation verified that the single input signal was routed to the appropriate output based on the select-line combination. Only one output was active at a time.

### Observation Table

| S1 | S0 | Active Output |
| -- | -- | ------------- |
| 0  | 0  | Y0            |
| 0  | 1  | Y1            |
| 1  | 0  | Y2            |
| 1  | 1  | Y3            |

---

#output
![image](encoder.jpg)
encoder

![image](decoder.jpg)
decoder


# Discussion

The experiment successfully demonstrated the operation of both a 4-to-1 Multiplexer and a 1-to-4 Demultiplexer. The Multiplexer selected one of four input signals and directed it to a single output based on the values of the select lines. The simulation results matched the theoretical truth table, confirming correct functionality.

Similarly, the Demultiplexer directed a single input signal to one of four output lines. The output selection depended entirely on the select-line combination. During simulation, only the designated output became active while all other outputs remained inactive.

The experiment provided practical knowledge of combinational logic circuits and highlighted the importance of multiplexers and demultiplexers in digital communication and data-routing applications.

---

# Conclusion

The design and simulation of the 4-to-1 Multiplexer and the 1-to-4 Demultiplexer were successfully completed. The simulation results matched the expected theoretical behavior of both circuits.

The Multiplexer correctly selected one input from four available inputs and transmitted it to a single output, while the Demultiplexer correctly routed a single input signal to one of four outputs. This experiment enhanced the understanding of data selection and data distribution techniques used in digital systems and reinforced concepts of combinational logic design.

---

