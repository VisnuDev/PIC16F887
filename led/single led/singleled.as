opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 7503"

opt pagewidth 120

	opt lm

	processor	16F887
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNROOT	_main
	global	_PORTA
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"singleled.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	2
	global	main@a
main@a:	; 1 bytes @ 0x2
	ds	1
	global	main@i
main@i:	; 1 bytes @ 0x3
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       4
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 4     4      0      30
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      4       4       1       28.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 7 in file "D:\pic\programs\PIC16f887\led\single led\singleled.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    3[COMMON] unsigned char 
;;  a               1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\pic\programs\PIC16f887\led\single led\singleled.c"
	line	7
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0]
	line	9
	
l2190:	
;singleled.c: 9: TRISA=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	10
	
l2192:	
;singleled.c: 10: TRISC=0x07;
	movlw	(07h)
	movwf	(135)^080h	;volatile
	line	11
	
l2194:	
;singleled.c: 11: ANSEL=ANSELH=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	12
	
l2196:	
;singleled.c: 12: PORTA=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	13
	
l2198:	
;singleled.c: 13: PORTC=0;
	clrf	(7)	;volatile
	line	14
	
l2200:	
;singleled.c: 14: char a=0,i=0;
	clrf	(main@a)
	
l2202:	
	clrf	(main@i)
	goto	l1029
	line	15
;singleled.c: 15: while(1)
	
l1027:	
	goto	l1029
	line	17
;singleled.c: 16: {{{
;singleled.c: 17: again:
	
l1028:	
	line	18
;singleled.c: 18: while(RC0==0&&RC1==0);
	goto	l1029
	
l1030:	
	
l1029:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(56/8),(56)&7
	goto	u2141
	goto	u2140
u2141:
	goto	l1033
u2140:
	
l2204:	
	btfss	(57/8),(57)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l1029
u2150:
	goto	l1033
	
l1032:	
	
l1033:	
	line	19
;singleled.c: 19: if(RC0==1)
	btfss	(56/8),(56)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l2208
u2160:
	line	20
	
l2206:	
;singleled.c: 20: i++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	goto	l2208
	
l1034:	
	line	21
	
l2208:	
;singleled.c: 21: if(RC1==1)
	btfss	(57/8),(57)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l1037
u2170:
	line	23
	
l2210:	
;singleled.c: 22: {
;singleled.c: 23: a=i;
	movf	(main@i),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@a)
	line	24
;singleled.c: 24: goto glow;
	goto	l2232
	line	25
	
l1035:	
	line	26
;singleled.c: 25: }
;singleled.c: 26: while(RC0==1);
	goto	l1037
	
l1038:	
	
l1037:	
	btfsc	(56/8),(56)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l1037
u2180:
	goto	l2212
	
l1039:	
	line	27
	
l2212:	
;singleled.c: 27: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_main+0)+0+1),f
	movlw	221
movwf	((??_main+0)+0),f
u2207:
	decfsz	((??_main+0)+0),f
	goto	u2207
	decfsz	((??_main+0)+0+1),f
	goto	u2207
	nop2
opt asmopt_on

	line	28
;singleled.c: 28: goto again;
	goto	l1029
	line	32
;singleled.c: 29: }
;singleled.c: 30: }
;singleled.c: 32: glow:
	
l1036:	
	line	33
;singleled.c: 33: switch(a)
	goto	l2232
	line	35
;singleled.c: 34: {
;singleled.c: 35: case 1:PORTA=0x01;
	
l1041:	
	
l2214:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	36
;singleled.c: 36: break;
	goto	l1050
	line	37
;singleled.c: 37: case 2:PORTA=0x03;
	
l1043:	
	
l2216:	
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	38
;singleled.c: 38: break;
	goto	l1050
	line	39
;singleled.c: 39: case 3:PORTA=0x07;
	
l1044:	
	
l2218:	
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	40
;singleled.c: 40: break;
	goto	l1050
	line	41
;singleled.c: 41: case 4:PORTA=0x0F;
	
l1045:	
	
l2220:	
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	42
;singleled.c: 42: break;
	goto	l1050
	line	43
;singleled.c: 43: case 5:PORTA=0x1F;
	
l1046:	
	
l2222:	
	movlw	(01Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	44
;singleled.c: 44: break;
	goto	l1050
	line	45
;singleled.c: 45: case 6:PORTA=0x3F;
	
l1047:	
	
l2224:	
	movlw	(03Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	46
;singleled.c: 46: break;
	goto	l1050
	line	47
;singleled.c: 47: case 7:PORTA=0x7F;
	
l1048:	
	
l2226:	
	movlw	(07Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	48
;singleled.c: 48: break;
	goto	l1050
	line	49
;singleled.c: 49: case 8:PORTA=0xFF;
	
l1049:	
	
l2228:	
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	50
;singleled.c: 50: break;
	goto	l1050
	line	51
	
l2230:	
;singleled.c: 51: }
	goto	l1050
	line	33
	
l1040:	
	
l2232:	
	movf	(main@a),w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 1 to 8
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
; direct_byte           35    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l2214
	xorlw	2^1	; case 2
	skipnz
	goto	l2216
	xorlw	3^2	; case 3
	skipnz
	goto	l2218
	xorlw	4^3	; case 4
	skipnz
	goto	l2220
	xorlw	5^4	; case 5
	skipnz
	goto	l2222
	xorlw	6^5	; case 6
	skipnz
	goto	l2224
	xorlw	7^6	; case 7
	skipnz
	goto	l2226
	xorlw	8^7	; case 8
	skipnz
	goto	l2228
	goto	l1050
	opt asmopt_on

	line	51
	
l1042:	
	line	52
;singleled.c: 52: while(RC2==0);
	goto	l1050
	
l1051:	
	
l1050:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l1050
u2190:
	goto	l2234
	
l1052:	
	line	53
	
l2234:	
;singleled.c: 53: PORTA=0;
	clrf	(5)	;volatile
	line	54
	
l2236:	
;singleled.c: 54: i=0;
	clrf	(main@i)
	line	55
	
l2238:	
;singleled.c: 55: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_main+0)+0+1),f
	movlw	221
movwf	((??_main+0)+0),f
u2217:
	decfsz	((??_main+0)+0),f
	goto	u2217
	decfsz	((??_main+0)+0+1),f
	goto	u2217
	nop2
opt asmopt_on

	goto	l1029
	line	56
	
l1053:	
	line	15
	goto	l1029
	
l1054:	
	line	57
	
l1055:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
psect	maintext
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
