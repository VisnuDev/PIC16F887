#include<pic.h>
#define b RA0
#define seg PORTC
#define _XTAL_FREQ 4000000

//Array with respective HEX values for 7 segment display
char s[10]= {0x3f, 0x06, 0x5B, 0x4f, 0x66, 0x6D, 0x7D, 0x07, 0x7f, 0x6f};

int i=0;


void main()
{
TRISA0=1;
TRISC=0x00;
PORTC=0x00;
ANSEL=ANSELH=0;

while(1)
{
while(b==0);
if(i>9)
{
i=0;
seg=s[i];
}
else
seg=s[i];

i++;
while(b==1);
__delay_ms(10);
} 

}
