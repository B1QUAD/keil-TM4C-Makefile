# Disclaimer: Use this software at your own risk! 
## **Refer to the [LICENSE file](https://github.com/B1QUAD/keil-TM4C-Makefile/blob/main/LICENSE) for more information.**

Generic makefile for anyone running Keil through wine on linux. Tested working on using the TI TM4C123GH6PM as a build target.

Tested toolchain parameters:
- Linux kernel: kernel 5.16.8-arch1-1
- Keil version: Keil uVision 5
- ARM Compiler: default v5 compiler and V6.16 (ARMCLANG) (both worked)

## Usage:
- `make` or `make all` 
  - Since make runs the first target by default, both of these options just use keil to build the project.
- `make flash`
  - Flashes your firmware onto the TM4C
- `make all flash`
  - Does both steps
