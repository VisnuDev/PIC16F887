**# LED Control with Button Inputs**

**## Introduction**

This project demonstrates a simple application of controlling LEDs using button inputs on a PIC microcontroller. The PIC microcontroller used in this project is programmed using the MPLAB XC8 compiler.

**## Requirements**

PIC microcontroller (e.g., PIC16F877A)
MPLAB XC8 compiler
PICkit programmer or equivalent
LEDs
Resistors
Breadboard
Push buttons
Circuit Diagram
Proteus for Simulation

**## Code Explanation**

The provided code initializes two push buttons (b1 and b2) connected to pins RC0 and RC1 respectively. It then continuously monitors these buttons. When b1 is pressed, the code shifts a bit through PORTA LEDs in one direction. When b2 is pressed, the code shifts the bit in the opposite direction. The LEDs connected to PORTA represent the output.

**## How to Use**

Connect the PIC microcontroller to the circuit according to the provided circuit diagram.
Compile the code using MPLAB XC8 compiler.
Program the microcontroller using PICkit programmer or equivalent.
Power up the circuit.
Press button 1 to shift LEDs in one direction and button 2 to shift LEDs in the opposite direction.



https://github.com/VisnuDev/PIC16F887/assets/87351344/657ce114-4884-470d-bcb3-0571fa7e36c4




**## Notes**

Ensure that the delay function (__delay_ms()) is properly implemented for the specified delay time.
Adjust the delay time according to your preference or application requirements.

