#include<pic.h>
#define _XTAL_FREQ 4000000
#define b1 RC0
#define b2 RC1
#define b3 RC2
void main()
{

TRISA=0x00;
TRISC=0x07;
ANSEL=ANSELH=0;
PORTA=0;
PORTC=0;
char a=0,i=0;
while(1)
{{{
again:
while(b1==0&&b2==0);
if(b1==1)
i++;
if(b2==1)
{
a=i;
goto glow;
}
while(b1==1);
__delay_ms(100);
goto again;
}
}

glow:
switch(a)
{
case 1:PORTA=0x01;
break;
case 2:PORTA=0x03;
break;
case 3:PORTA=0x07;
break;
case 4:PORTA=0x0F;
break;
case 5:PORTA=0x1F;
break;
case 6:PORTA=0x3F;
break;
case 7:PORTA=0x7F;
break;
case 8:PORTA=0xFF;
break;
}
while(b3==0);
PORTA=0;
i=0;
__delay_ms(100);
}
}


