# Sobel-Edge-Detection-Hardware-Accelerator
RTL-Based Sobel Edge Detection Accelerator for Image Processing

# Sobel Edge Detection Hardware Accelerator (Verilog RTL)

This project implements a Sobel edge-detection engine using Verilog RTL. Input is a 100×88 grayscale image matrix, and gradients (Gx, Gy) are computed using Sobel kernels, as shown in the project report.

## Features
- RTL implementation of Sobel Filter (Gx & Gy convolution)
- Gradient magnitude computation
- Python visualization for hardware-software verification

## Files
- `RTL.v` – Verilog module for Sobel computation
- `Grayscale Matrix.txt` – Input grayscale pixel matrix
- `Grayscale to edge_detected.py` – Python code for converting filtered output to image
- `Report.pdf` – Detailed documentation and results

## Example Output
Filtered image emphasizing edges (from Sobel filter).

