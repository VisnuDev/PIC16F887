# LED Control with Button Inputs

## Introduction
This project demonstrates a simple application of controlling LEDs using button inputs on a PIC microcontroller. The PIC microcontroller used in this project is programmed using the MPLAB XC8 compiler.

# Requirements
PIC microcontroller (e.g., PIC16F877A).

MPLAB XC8 compiler.

PICkit programmer.

LEDs.

Resistors.

Breadboard.

Push buttons.

Circuit Diagram.

Proteus simulation software.


## Code Explanation
The provided code initializes two push buttons (b1 and b2) connected to pins RC0 and RC1 respectively. It then continuously monitors these buttons. When b1 is pressed, the code shifts a bit through PORTA LEDs in one direction. When b2 is pressed, the code shifts the bit in the opposite direction. The LEDs connected to PORTA represent the output.

## Embedded C- Bitwise operator

The code used in the project is available in the 8led.c file. The led increment/decrement operation was implemented through logical bitwise operators (<< and >>). The knowledge of these bitwise operators is required to understand or build the project.

## Proteus simulation

The Project is simulated in proteus simulation software. 

https://github.com/VisnuDev/PIC16F887/assets/87351344/00950281-4a54-400e-b4a9-82851ebf50c7



## How to Use
Connect the PIC microcontroller to the circuit according to the provided circuit diagram.

Compile the code using MPLAB XC8 compiler.

Program the microcontroller using PICkit programmer or equivalent.

Power up the circuit.

Press button 1 to shift LEDs in one direction and button 2 to shift LEDs in the opposite direction.



## Notes

Ensure that the delay function (__delay_ms()) is properly implemented for the specified delay time.
Adjust the delay time according to your preference or application requirements.
