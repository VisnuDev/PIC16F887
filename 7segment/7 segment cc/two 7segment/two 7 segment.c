#include<pic.h>
#define g1 RD0
#define g2 RD1
#define seg PORTC
#define _XTAL_FREQ 4000000

char s[10]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};

int a,b,i,j;

void RSD(char d)
{
g1=0,g2=1;
seg=d;
}

void LSD(char d)
{
g1=1, g2=0;
seg=d;
}


void main()
{
TRISC=0x00;
TRISD=0x00;
ANSEL=ANSELH=0;
PORTC=0x00;
PORTD=0x00;

while(1)
{
	for(i=0; i<100; i++)
	{
		a=i/10;
		b=i%10;

		for(j=0; j<5; j++)
		{
			LSD(s[a]);
			__delay_ms(120);
			RSD(s[b]);
			__delay_ms(30);
		}
		if(i>99)
			i=0;
			
	}
}
}