# 32-bit Arithmetic Logic Unit (ALU) for the Beta Processor

In this lab, we will build a 32-bit **Arithmetic and Logic Unit (ALU)** for the Beta processor. This ALU will be essential for your 1D Project Checkoff 1 and Lab 4, where we’ll expand on it to build a complete Beta CPU.

## Overview

The **Arithmetic Logic Unit (ALU)** is a **combinational logic device** responsible for performing arithmetic and logic operations within a CPU. Our ALU has two 32-bit inputs (`A` and `B`) and produces a 35-bit output:
- `alu[31:0]`: The primary 32-bit result of the operation.
- `Z`: Zero flag, indicating if the result is zero.
- `V`: Overflow flag.
- `N`: Negative flag.

## ALU Modules

To build the ALU modularly, we will create separate units for each core operation. These include:
1. **Addition/Subtraction Unit** - Handles basic addition and subtraction.
2. **Comparison Unit** - Used for branching by comparing values.
3. **Boolean Unit** - Performs bitwise operations like XOR and masking.
4. **Shifter Unit** - Supports bit shifts for division/multiplication by 2 and data manipulation.
5. **Multiplier Unit** - Responsible for multiplication, requiring a more complex design.

Each of these modules will generate its own 32-bit output, which we’ll later combine to produce a single ALU result.

Consult 50.002 lab handout for more information.
