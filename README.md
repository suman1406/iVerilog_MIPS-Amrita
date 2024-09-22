# iVerilog MIPS - Amrita

This repository contains laboratory exercises and evaluation materials for the MIPS architecture simulation using iVerilog at Amrita University. The content is designed to help students understand the MIPS architecture, its instructions, and how to simulate and test MIPS operations using the iVerilog simulation tool.

## Contents

- **Lab1:** Contains files and exercises for basic MIPS instructions and simulation.
- **Lab2:** Contains more advanced MIPS instructions and simulations.
- **Lab4:** Focuses on more complex MIPS operations and handling.
- **Lab5:** Advanced MIPS lab exercises, testing multiple functionalities.
- **LabEval1:** Evaluation questions and answers related to MIPS architecture for lab assessments.

## Prerequisites

- **iVerilog:** Ensure you have iVerilog installed to run the Verilog simulations. You can download and install iVerilog from [here](http://iverilog.icarus.com/).

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/suman1406/iVerilog_MIPS-Amrita.git
   ```

2. Navigate to the specific lab directory (e.g., `Lab1`, `Lab2`):
   ```bash
   cd Lab1
   ```

3. Compile the Verilog files using iVerilog:
   ```bash
   iverilog -o output_file testbench.v module.v
   ```

4. Run the simulation:
   ```bash
   vvp output_file
   ```

## Learning Outcomes

- Understand and simulate MIPS instructions using Verilog.
- Practice writing Verilog code for MIPS modules and testbenches.
- Learn how to use iVerilog for simulating MIPS architecture.
- Analyze simulation results using GTKWave.

## Contributors

- Suman Panigrahi
- Sravani Oruganti

## License

This project is licensed under the MIT License.
