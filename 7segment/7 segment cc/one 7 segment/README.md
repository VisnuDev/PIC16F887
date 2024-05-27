# 7-Segment Display Counter using PIC Microcontroller

## Introduction

This project demonstrates a simple application of controlling a 7-segment display using a PIC microcontroller. The PIC microcontroller used in this project is programmed using the MPLAB XC8 compiler.

## Requirements

PIC microcontroller (e.g., PIC16F887A)

MPLAB XC8 compiler

PICkit programmer or equivalent

7-segment display

Resistors

Push button

Circuit Diagram

Proteus Software

## Code Explanation

The provided code initializes a push button and a 7-segment display connected to the PIC microcontroller. 

It continuously increments a counter and displays its value on the 7-segment display.

b: This defines the pin connected to the push button.

seg: This defines the port connected to the 7-segment display.

s: This is an array containing hexadecimal values for each digit (0-9) to be displayed on the 7-segment display.

i: This variable holds the current value of the counter.

The main loop of the program waits for the push button to be pressed. When the button is pressed, the counter increments, and its value is displayed on the 7-segment display. If the counter exceeds 9, it resets to 0 and continues incrementing.

## Proteus Simulation



https://github.com/VisnuDev/PIC16F887/assets/87351344/29f3480c-383b-4a5a-bf2c-58c24323277b




## How to Use
Connect the PIC microcontroller to the circuit according to the provided circuit diagram.

Compile the code using MPLAB XC8 compiler.

Program the microcontroller using PICkit programmer or equivalent.

Power up the circuit.

Press the button to increment the counter and observe the value displayed on the 7-segment display.
