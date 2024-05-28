# 4-Digit 7-Segment Display with PIC16F887

This code is designed for a PIC16F887 microcontroller to control a 4-digit 7-segment display. The microcontroller cycles through numbers from 0 to 9999, displaying each number on the 7-segment display for a short duration.

## Requirements
- PIC16F887 microcontroller
- 4-digit 7-segment display
- Crystal oscillator (4MHz)
- PIC C Compiler (e.g., MPLAB XC8)

## Circuit Connections
- Connect the 7-segment display common pins to PORTD pins of PIC16F887.
- Connect the 7-segment display segment pins to PORTC pins of PIC16F887.

## How it Works
- The code initializes the necessary ports and sets up the necessary variables.
- It then enters an infinite loop where it iterates through numbers from 0 to 9999.
- For each number, it extracts individual digits (thousands, hundreds, tens, and units).
- It cycles through each digit and displays it on the corresponding 7-segment display segment for a short duration, creating the effect of a 4-digit counter.

## Proteus simulation clip



https://github.com/VisnuDev/PIC16F887/assets/87351344/117a0e7e-6c22-476d-b6b1-ed21247cf7c1



## Usage
1. Compile the code using the PIC C Compiler.
2. Burn the compiled hex file onto the PIC16F887 microcontroller.
3. Connect the 7-segment display to the microcontroller according to the specified connections.
4. Power on the circuit.
5. The 4-digit counter will start displaying numbers from 0000 to 9999 repeatedly.

## Note
- Adjust the delay value (`__delay_ms(5)`) as per your display's refresh rate and visual preference.
