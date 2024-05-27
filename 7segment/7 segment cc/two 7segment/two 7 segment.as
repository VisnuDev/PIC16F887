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
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,_LSD
	FNCALL	_main,_RSD
	FNROOT	_main
	global	_s
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\pic\PIC programs\PIC16f887\7segment\7 segment cc\two 7segment\two 7 segment.c"
	line	7

;initializer for _s
	retlw	03Fh
	retlw	06h
	retlw	05Bh
	retlw	04Fh
	retlw	066h
	retlw	06Dh
	retlw	07Dh
	retlw	07h
	retlw	07Fh
	retlw	06Fh
	global	_a
	global	_b
	global	_j
	global	_i
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_i:
       ds      2

	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"two 7 segment.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_a:
       ds      2

_b:
       ds      2

_j:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\pic\PIC programs\PIC16f887\7segment\7 segment cc\two 7segment\two 7 segment.c"
_s:
       ds      10

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+10)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_RSD
?_RSD:	; 0 bytes @ 0x0
	global	??_RSD
??_RSD:	; 0 bytes @ 0x0
	global	?_LSD
?_LSD:	; 0 bytes @ 0x0
	global	??_LSD
??_LSD:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	RSD@d
RSD@d:	; 1 bytes @ 0x0
	global	LSD@d
LSD@d:	; 1 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x9
	ds	2
;;Data sizes: Strings 0, constant 0, data 10, bss 6, persistent 2 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      13
;; BANK0           80      0      16
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awdiv
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
;; (0) _main                                                 2     2      0     640
;;                                              9 COMMON     2     2      0
;;                            ___awdiv
;;                            ___awmod
;;                                _LSD
;;                                _RSD
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (1) _LSD                                                  1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _RSD                                                  1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   ___awdiv
;;   ___awmod
;;   _LSD
;;   _RSD
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      1E      12        0.0%
;;ABS                  0      0      1D       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               50      0      10       5       20.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      B       D       1       92.9%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 25 in file "D:\pic\PIC programs\PIC16f887\7segment\7 segment cc\two 7segment\two 7 segment.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_LSD
;;		_RSD
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\pic\PIC programs\PIC16f887\7segment\7 segment cc\two 7segment\two 7 segment.c"
	line	25
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	26
	
l2338:	
;two 7 segment.c: 26: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	27
;two 7 segment.c: 27: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	28
;two 7 segment.c: 28: ANSEL=ANSELH=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	29
;two 7 segment.c: 29: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	30
;two 7 segment.c: 30: PORTD=0x00;
	clrf	(8)	;volatile
	line	32
;two 7 segment.c: 32: while(1)
	
l1043:	
	line	34
;two 7 segment.c: 33: {
;two 7 segment.c: 34: for(i=0; i<100; i++)
	clrf	(_i)
	clrf	(_i+1)
	
l2340:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2385
	movlw	low(064h)
	subwf	(_i),w
u2385:

	skipc
	goto	u2381
	goto	u2380
u2381:
	goto	l2344
u2380:
	goto	l1043
	
l2342:	
	goto	l1043
	line	35
	
l1044:	
	line	36
	
l2344:	
;two 7 segment.c: 35: {
;two 7 segment.c: 36: a=i/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_i+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_i),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_a+1)
	addwf	(_a+1)
	movf	(0+(?___awdiv)),w
	clrf	(_a)
	addwf	(_a)

	line	37
;two 7 segment.c: 37: b=i%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_i+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_i),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b+1)
	addwf	(_b+1)
	movf	(0+(?___awmod)),w
	clrf	(_b)
	addwf	(_b)

	line	39
	
l2346:	
;two 7 segment.c: 39: for(j=0; j<5; j++)
	clrf	(_j)
	clrf	(_j+1)
	
l2348:	
	movf	(_j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2395
	movlw	low(05h)
	subwf	(_j),w
u2395:

	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l2352
u2390:
	goto	l2360
	
l2350:	
	goto	l2360
	line	40
	
l1046:	
	line	41
	
l2352:	
;two 7 segment.c: 40: {
;two 7 segment.c: 41: LSD(s[a]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a),w
	addlw	_s&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_LSD
	line	42
	
l2354:	
;two 7 segment.c: 42: _delay((unsigned long)((120)*(4000000/4000.0)));
	opt asmopt_off
movlw	156
movwf	((??_main+0)+0+1),f
	movlw	215
movwf	((??_main+0)+0),f
u2437:
	decfsz	((??_main+0)+0),f
	goto	u2437
	decfsz	((??_main+0)+0+1),f
	goto	u2437
opt asmopt_on

	line	43
	
l2356:	
;two 7 segment.c: 43: RSD(s[b]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_b),w
	addlw	_s&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_RSD
	line	44
;two 7 segment.c: 44: _delay((unsigned long)((30)*(4000000/4000.0)));
	opt asmopt_off
movlw	39
movwf	((??_main+0)+0+1),f
	movlw	245
movwf	((??_main+0)+0),f
u2447:
	decfsz	((??_main+0)+0),f
	goto	u2447
	decfsz	((??_main+0)+0+1),f
	goto	u2447
opt asmopt_on

	line	39
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	
l2358:	
	movf	(_j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2405
	movlw	low(05h)
	subwf	(_j),w
u2405:

	skipc
	goto	u2401
	goto	u2400
u2401:
	goto	l2352
u2400:
	goto	l2360
	
l1047:	
	line	46
	
l2360:	
;two 7 segment.c: 45: }
;two 7 segment.c: 46: if(i>99)
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2415
	movlw	low(064h)
	subwf	(_i),w
u2415:

	skipc
	goto	u2411
	goto	u2410
u2411:
	goto	l2364
u2410:
	line	47
	
l2362:	
;two 7 segment.c: 47: i=0;
	clrf	(_i)
	clrf	(_i+1)
	goto	l2364
	
l1048:	
	line	34
	
l2364:	
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	
l2366:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2425
	movlw	low(064h)
	subwf	(_i),w
u2425:

	skipc
	goto	u2421
	goto	u2420
u2421:
	goto	l2344
u2420:
	goto	l1043
	
l1045:	
	goto	l1043
	line	50
	
l1049:	
	line	32
	goto	l1043
	
l1050:	
	line	51
	
l1051:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	___awmod
psect	text131,local,class=CODE,delta=2
global __ptext131
__ptext131:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text131
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2304:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2291
	goto	u2290
u2291:
	goto	l2308
u2290:
	line	10
	
l2306:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2308
	line	12
	
l1268:	
	line	13
	
l2308:	
	btfss	(___awmod@divisor+1),7
	goto	u2301
	goto	u2300
u2301:
	goto	l2312
u2300:
	line	14
	
l2310:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2312
	
l1269:	
	line	15
	
l2312:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2311
	goto	u2310
u2311:
	goto	l2330
u2310:
	line	16
	
l2314:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2320
	
l1272:	
	line	18
	
l2316:	
	movlw	01h
	
u2325:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2325
	line	19
	
l2318:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2320
	line	20
	
l1271:	
	line	17
	
l2320:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l2316
u2330:
	goto	l2322
	
l1273:	
	goto	l2322
	line	21
	
l1274:	
	line	22
	
l2322:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2345
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2345:
	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l2326
u2340:
	line	23
	
l2324:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2326
	
l1275:	
	line	24
	
l2326:	
	movlw	01h
	
u2355:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2355
	line	25
	
l2328:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2361
	goto	u2360
u2361:
	goto	l2322
u2360:
	goto	l2330
	
l1276:	
	goto	l2330
	line	26
	
l1270:	
	line	27
	
l2330:	
	movf	(___awmod@sign),w
	skipz
	goto	u2370
	goto	l2334
u2370:
	line	28
	
l2332:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2334
	
l1277:	
	line	29
	
l2334:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1278
	
l2336:	
	line	30
	
l1278:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text132,local,class=CODE,delta=2
global __ptext132
__ptext132:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text132
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2264:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2191
	goto	u2190
u2191:
	goto	l2268
u2190:
	line	11
	
l2266:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2268
	line	13
	
l1200:	
	line	14
	
l2268:	
	btfss	(___awdiv@dividend+1),7
	goto	u2201
	goto	u2200
u2201:
	goto	l2274
u2200:
	line	15
	
l2270:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2272:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2274
	line	17
	
l1201:	
	line	18
	
l2274:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2276:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2211
	goto	u2210
u2211:
	goto	l2296
u2210:
	line	20
	
l2278:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2284
	
l1204:	
	line	22
	
l2280:	
	movlw	01h
	
u2225:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2225
	line	23
	
l2282:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2284
	line	24
	
l1203:	
	line	21
	
l2284:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l2280
u2230:
	goto	l2286
	
l1205:	
	goto	l2286
	line	25
	
l1206:	
	line	26
	
l2286:	
	movlw	01h
	
u2245:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2245
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2255
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2255:
	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l2292
u2250:
	line	28
	
l2288:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2290:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2292
	line	30
	
l1207:	
	line	31
	
l2292:	
	movlw	01h
	
u2265:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2265
	line	32
	
l2294:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2271
	goto	u2270
u2271:
	goto	l2286
u2270:
	goto	l2296
	
l1208:	
	goto	l2296
	line	33
	
l1202:	
	line	34
	
l2296:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2280
	goto	l2300
u2280:
	line	35
	
l2298:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2300
	
l1209:	
	line	36
	
l2300:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1210
	
l2302:	
	line	37
	
l1210:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_LSD
psect	text133,local,class=CODE,delta=2
global __ptext133
__ptext133:

;; *************** function _LSD *****************
;; Defined at:
;;		line 18 in file "D:\pic\PIC programs\PIC16f887\7segment\7 segment cc\two 7segment\two 7 segment.c"
;; Parameters:    Size  Location     Type
;;  d               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  d               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text133
	file	"D:\pic\PIC programs\PIC16f887\7segment\7 segment cc\two 7segment\two 7 segment.c"
	line	18
	global	__size_of_LSD
	__size_of_LSD	equ	__end_of_LSD-_LSD
	
_LSD:	
	opt	stack 7
; Regs used in _LSD: [wreg]
;LSD@d stored from wreg
	movwf	(LSD@d)
	line	19
	
l2260:	
;two 7 segment.c: 19: RD0=1, RD1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	bcf	(65/8),(65)&7
	line	20
	
l2262:	
;two 7 segment.c: 20: PORTC=d;
	movf	(LSD@d),w
	movwf	(7)	;volatile
	line	21
	
l1040:	
	return
	opt stack 0
GLOBAL	__end_of_LSD
	__end_of_LSD:
;; =============== function _LSD ends ============

	signat	_LSD,4216
	global	_RSD
psect	text134,local,class=CODE,delta=2
global __ptext134
__ptext134:

;; *************** function _RSD *****************
;; Defined at:
;;		line 12 in file "D:\pic\PIC programs\PIC16f887\7segment\7 segment cc\two 7segment\two 7 segment.c"
;; Parameters:    Size  Location     Type
;;  d               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  d               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text134
	file	"D:\pic\PIC programs\PIC16f887\7segment\7 segment cc\two 7segment\two 7 segment.c"
	line	12
	global	__size_of_RSD
	__size_of_RSD	equ	__end_of_RSD-_RSD
	
_RSD:	
	opt	stack 7
; Regs used in _RSD: [wreg]
;RSD@d stored from wreg
	movwf	(RSD@d)
	line	13
	
l2256:	
;two 7 segment.c: 13: RD0=0,RD1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	bsf	(65/8),(65)&7
	line	14
	
l2258:	
;two 7 segment.c: 14: PORTC=d;
	movf	(RSD@d),w
	movwf	(7)	;volatile
	line	15
	
l1037:	
	return
	opt stack 0
GLOBAL	__end_of_RSD
	__end_of_RSD:
;; =============== function _RSD ends ============

	signat	_RSD,4216
psect	text135,local,class=CODE,delta=2
global __ptext135
__ptext135:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
