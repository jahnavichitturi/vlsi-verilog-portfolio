# Digital Logic Design using Verilog (All Modeling Styles)

## 📌 Project Overview
This repository demonstrates the design and implementation of basic and combinational digital circuits using Verilog HDL. The project covers multiple modeling techniques including **Behavioral, Dataflow, and Structural modeling**, along with gate-level implementations using universal gates.

This project helps strengthen core concepts of digital design and RTL implementation used in VLSI systems.

---

## ⚙️ Implemented Modules

### 🔹 Basic Logic Gates
- AND Gate
- OR Gate
- NOT Gate
- XOR Gate
- NAND Gate
- NOR Gate

---

### 🔹 Universal Gate Implementations
- Basic logic gates using **NAND gates only**
- Basic logic gates using **NOR gates only**

---

### 🔹 Multiplexers
- 2:1 MUX
- 4:1 MUX
- MUX-based logic implementation

---

### 🔹 Adders (Extended)

- Half Adder
- Full Adder
- Full Adder using Half Adder
- 4-bit Ripple Carry Adder (RCA)
- 4-bit Carry Look-Ahead Adder (CLA)

---

## ⚡ 4-bit Ripple Carry Adder (RCA)
Implemented using cascading full adders where each carry ripples from LSB to MSB.

- Simple design
- Easy to implement
- Higher propagation delay due to sequential carry

---

## ⚡ 4-bit Carry Look-Ahead Adder (CLA)
Implemented using Generate (G) and Propagate (P) logic to compute carry in advance.

- Faster addition compared to RCA
- Reduces propagation delay
- Suitable for high-speed VLSI designs

### 🔹 Subtractors
- Half Subtractor
- Full Subtractor

---

## 🧠 Modeling Styles Used

This project implements all circuits using:

### 1️⃣ Behavioral Modeling
- Uses `always` blocks
- Describes **functionality of circuit**

### 2️⃣ Dataflow Modeling
- Uses **assign statements**
- Focuses on Boolean expressions

### 3️⃣ Structural Modeling
- Uses **gate-level instantiation**
- Builds circuits using basic logic gates

---

## 🛠️ Tools Used
- Verilog HDL
- ModelSim / Xilinx Vivado
- Digital Design Concepts

---

## 📂 Project Structure
