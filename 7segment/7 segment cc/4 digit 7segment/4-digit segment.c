#include<pic.h>
#define disp PORTC
#define sel PORTD
#define _XTAL_FREQ 4000000
char s[10]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
char p[4]={0x0E, 0x0D, 0x0B, 0x07};

int a,b,c,d,i=0,j=0, temp=0;

void main()
{
TRISC=0x00;
TRISD=0x00;

ANSEL=ANSELH=0;

PORTC=PORTD=0;

while(1)
{

for(i=0; i<=9999;i++)
{
	a=i/1000;
	temp=i%1000;
	b=temp/100;
	temp=temp%100;
	c=temp/10;
	d=temp%10;
	
	for(j=0; j<10; j++)
	{

		sel=p[0];
		disp=s[d];
		__delay_ms(5);
	
		sel=p[1];
		disp=s[c];
		__delay_ms(5);
	
		sel=p[2];
		disp=s[b];
		__delay_ms(5);
	
		sel=p[3];
		disp=s[a];
		__delay_ms(5);
		
	}
	
} 

}

}
