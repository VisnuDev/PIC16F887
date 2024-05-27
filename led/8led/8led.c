#include<pic.h>
#define b1 RC0
#define b2 RC1
#define _XTAL_FREQ 4000000


void main()
{
TRISA=0X00;
TRISC=0x03;
ANSEL=ANSELH=0;
PORTA=0;
PORTC=0;
char i=0, move=0x00, get=0x01;

while(1)
{
move=0x00;get=0x01;
while(b1==0);
PORTA=0x00;
if(PORTA==0x00)
{
	for(i=0; i<9; i++)
	{
		move = get << i;
		PORTA |= move;
		__delay_ms(250);
	}
}
while(b2==0);
if(PORTA==0xff)
{
	get=0xff;
	move=0x00;
	for(i=1; i<9; i++)
	{
		move= get >>i;
		PORTA &= move;
		__delay_ms(250);
	} 
}

}
}