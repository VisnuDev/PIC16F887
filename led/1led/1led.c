#include<pic.h>
#define led RA0
#define b1 RC0
#define _XTAL_FREQ 4000000
void main()
{
TRISA=0x00;
TRISC=0x01;
ANSEL=ANSELH=0;
PORTA=0;
PORTC=0;
while(1)
{
while(b1==0);
if(led==0)
led=1;
else
led=0;
while(b1==1);
}
}

