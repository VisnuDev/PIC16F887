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
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"8led.as"
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
	ds	3
	global	main@get
main@get:	; 1 bytes @ 0x3
	ds	1
	global	main@move
main@move:	; 1 bytes @ 0x4
	ds	1
	global	main@i
main@i:	; 1 bytes @ 0x5
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       6
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 6     6      0     150
;;                                              0 COMMON     6     6      0
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
;;COMMON               E      6       6       1       42.9%
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
;;		line 8 in file "D:\pic\PIC programs\PIC16f887\led\8led\8led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[COMMON] unsigned char 
;;  move            1    4[COMMON] unsigned char 
;;  get             1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\pic\PIC programs\PIC16f887\led\8led\8led.c"
	line	8
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0]
	line	9
	
l2177:	
;8led.c: 9: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	10
	
l2179:	
;8led.c: 10: TRISC=0x03;
	movlw	(03h)
	movwf	(135)^080h	;volatile
	line	11
	
l2181:	
;8led.c: 11: ANSEL=ANSELH=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	12
	
l2183:	
;8led.c: 12: PORTA=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	13
	
l2185:	
;8led.c: 13: PORTC=0;
	clrf	(7)	;volatile
	line	14
	
l2187:	
;8led.c: 14: char i=0, move=0x00, get=0x01;
	clrf	(main@i)
	
l2189:	
	clrf	(main@move)
	
l2191:	
	clrf	(main@get)
	bsf	status,0
	rlf	(main@get),f
	goto	l2193
	line	16
;8led.c: 16: while(1)
	
l1027:	
	line	18
	
l2193:	
;8led.c: 17: {
;8led.c: 18: move=0x00;get=0x01;
	clrf	(main@move)
	
l2195:	
	clrf	(main@get)
	bsf	status,0
	rlf	(main@get),f
	line	19
;8led.c: 19: while(RC0==0);
	goto	l1028
	
l1029:	
	
l1028:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7
	goto	u2141
	goto	u2140
u2141:
	goto	l1028
u2140:
	goto	l2197
	
l1030:	
	line	20
	
l2197:	
;8led.c: 20: PORTA=0x00;
	clrf	(5)	;volatile
	line	21
	
l2199:	
;8led.c: 21: if(PORTA==0x00)
	movf	(5),f
	skipz	;volatile
	goto	u2151
	goto	u2150
u2151:
	goto	l1034
u2150:
	line	23
	
l2201:	
;8led.c: 22: {
;8led.c: 23: for(i=0; i<9; i++)
	clrf	(main@i)
	
l2203:	
	movlw	(09h)
	subwf	(main@i),w
	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l2207
u2160:
	goto	l1034
	
l2205:	
	goto	l1034
	line	24
	
l1032:	
	line	25
	
l2207:	
;8led.c: 24: {
;8led.c: 25: move = get << i;
	movf	(main@get),w
	movwf	(??_main+0)+0
	incf	(main@i),w
	goto	u2174
u2175:
	clrc
	rlf	(??_main+0)+0,f
u2174:
	addlw	-1
	skipz
	goto	u2175
	movf	0+(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@move)
	line	26
;8led.c: 26: PORTA |= move;
	movf	(main@move),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(5),f	;volatile
	line	27
	
l2209:	
;8led.c: 27: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	68
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u2247:
	decfsz	((??_main+0)+0),f
	goto	u2247
	decfsz	((??_main+0)+0+1),f
	goto	u2247
	decfsz	((??_main+0)+0+2),f
	goto	u2247
	clrwdt
opt asmopt_on

	line	23
	
l2211:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	movlw	(09h)
	subwf	(main@i),w
	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l2207
u2180:
	goto	l1034
	
l1033:	
	goto	l1034
	line	29
	
l1031:	
	line	30
;8led.c: 28: }
;8led.c: 29: }
;8led.c: 30: while(RC1==0);
	goto	l1034
	
l1035:	
	
l1034:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(57/8),(57)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l1034
u2190:
	goto	l2213
	
l1036:	
	line	31
	
l2213:	
;8led.c: 31: if(PORTA==0xff)
	movf	(5),w	;volatile
	xorlw	0FFh
	skipz
	goto	u2201
	goto	u2200
u2201:
	goto	l2193
u2200:
	line	33
	
l2215:	
;8led.c: 32: {
;8led.c: 33: get=0xff;
	movlw	(0FFh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@get)
	line	34
	
l2217:	
;8led.c: 34: move=0x00;
	clrf	(main@move)
	line	35
	
l2219:	
;8led.c: 35: for(i=1; i<9; i++)
	clrf	(main@i)
	bsf	status,0
	rlf	(main@i),f
	
l2221:	
	movlw	(09h)
	subwf	(main@i),w
	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l2225
u2210:
	goto	l2193
	
l2223:	
	goto	l2193
	line	36
	
l1038:	
	line	37
	
l2225:	
;8led.c: 36: {
;8led.c: 37: move= get >>i;
	movf	(main@get),w
	movwf	(??_main+0)+0
	incf	(main@i),w
	goto	u2224
u2225:
	clrc
	rrf	(??_main+0)+0,f
u2224:
	addlw	-1
	skipz
	goto	u2225
	movf	0+(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@move)
	line	38
;8led.c: 38: PORTA &= move;
	movf	(main@move),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(5),f	;volatile
	line	39
	
l2227:	
;8led.c: 39: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	68
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u2257:
	decfsz	((??_main+0)+0),f
	goto	u2257
	decfsz	((??_main+0)+0+1),f
	goto	u2257
	decfsz	((??_main+0)+0+2),f
	goto	u2257
	clrwdt
opt asmopt_on

	line	35
	
l2229:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	movlw	(09h)
	subwf	(main@i),w
	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l2225
u2230:
	goto	l2193
	
l1039:	
	goto	l2193
	line	41
	
l1037:	
	goto	l2193
	line	43
	
l1040:	
	line	16
	goto	l2193
	
l1041:	
	line	44
	
l1042:	
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
