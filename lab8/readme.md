# Lab 8: VHDL Code for Sequential Circuits – Counters

## Objective

- To design and simulate a 4-bit synchronous up counter using VHDL.
- To design and simulate a 4-bit synchronous up/down counter using VHDL.
- To verify the functionality of both sequential circuits using GHDL and GTKWave.

---

# Theory

A counter is a sequential circuit that cycles through a predefined sequence of states on every clock pulse. Counters are constructed using flip-flops and are widely used in digital systems for timing, event counting, frequency division, and control applications.

Unlike combinational circuits, sequential circuits depend on both the present inputs and the previous state of the circuit.

## 4-bit Synchronous Up Counter

A synchronous up counter increments its binary count by one on every rising edge of the clock signal. Since all flip-flops receive the same clock simultaneously, the counter operates faster and with less propagation delay than an asynchronous (ripple) counter. The counter counts from **0000 (0)** to **1111 (15)** before returning to **0000**.

## 4-bit Synchronous Up/Down Counter

A synchronous up/down counter can either increment or decrement its count depending on the value of the **UP** control signal.

- **UP = '1'** → Counter counts upward.
- **UP = '0'** → Counter counts downward.

This type of counter is commonly used in digital clocks, timers, frequency dividers, and control systems.

## Reset

The counters use an active-high synchronous reset. Whenever **RST = '1'**, the counter is reset to **0000** on the next rising edge of the clock.

---

# Discussion

The objective of this experiment was to design and simulate two sequential counters using VHDL and verify their operation using GHDL and GTKWave.

The **4-bit synchronous up counter** was implemented using a 4-bit unsigned signal that increments by one on every rising edge of the clock. A synchronous active-high reset was included to initialize the counter to zero whenever required. The simulation showed that the counter correctly counted upward from **0 to 15** before repeating the sequence.

The **4-bit synchronous up/down counter** was implemented by adding an **UP** control signal to the design. When **UP = '1'**, the counter incremented on each clock pulse, and when **UP = '0'**, it decremented. During simulation, the counter correctly changed its counting direction based on the value of the control signal.

The waveforms generated using GTKWave confirmed that both counters responded correctly to the clock, reset, and direction control signals. The observed outputs matched the expected theoretical behavior, demonstrating the correct implementation of both sequential circuits.

---

# Output

## Counter Waveform

![alt text](<Screenshot 2026-07-16 125037.png>)

### Observation

The waveform displays the operation of both the **4-bit synchronous up counter (COUNT_UP)** and the **4-bit synchronous up/down counter (COUNT_UD)**.

- Initially, the **RST** signal is asserted, resetting both counters to **0000 (0)**.
- After the reset is deasserted, **COUNT_UP** increments by one on every rising edge of the clock.
- The **COUNT_UD** signal also counts upward while **UP = '1'**.
- When the **UP** signal changes to **'0'**, **COUNT_UD** begins counting downward, while **COUNT_UP** continues incrementing normally.
- The **RST** signal is asserted again later in the simulation, causing both counters to reset to **0000**.
- After the reset is released and **UP** returns to **'1'**, both counters resume counting upward.
- The waveform verifies the correct operation of the clock, synchronous reset, and direction control signals, matching the expected behavior of both counters.

---

# Conclusion

This laboratory successfully demonstrated the design and simulation of a **4-bit synchronous up counter** and a **4-bit synchronous up/down counter** using VHDL and the open-source tools **GHDL** and **GTKWave**. The synchronous up counter correctly incremented its count on every rising edge of the clock, while the up/down counter correctly performed both incrementing and decrementing operations based on the **UP** control signal. The simulation waveform matched the expected theoretical behavior, confirming the correctness of the VHDL implementations and providing a clear understanding of sequential circuit design and verification.