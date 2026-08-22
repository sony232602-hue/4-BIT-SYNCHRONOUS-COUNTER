# 4-Bit Synchronous Counter Using Verilog

## Overview

This project implements a 4-bit synchronous binary counter using Verilog HDL.

A synchronous counter is a digital counter in which all flip-flops receive the same clock signal. Therefore, all counter bits are updated synchronously with the active clock edge.

The counter has 16 possible states and counts from 0 to 15 before returning to 0.

## Features

- 4-bit binary up counter
- Synchronous counting
- Asynchronous active-high reset
- MOD-16 operation
- Verilog RTL implementation
- Verilog testbench
- Simulation waveform generation
- Compatible with Icarus Verilog and GTKWave

## Block Diagram

```text
                  ┌─────────────────────┐
                  │                     │
             ┌───►│  4-Bit Counter      │───► Q[3:0]
             │    │                     │
             │    └─────────────────────┘
             │
          Clock
          
          Reset ────────────────────────►
