
# 1 "mcc_generated_files/opa1.c"

# 18 "/opt/microchip/xc8/v2.00/pic/include/xc.h"
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);


# 13 "/opt/microchip/xc8/v2.00/pic/include/c90/xc8debug.h"
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);

# 52 "/opt/microchip/xc8/v2.00/pic/include/pic16lf1708.h"
extern volatile unsigned char INDF0 __at(0x000);

asm("INDF0 equ 00h");


typedef union {
struct {
unsigned INDF0 :8;
};
} INDF0bits_t;
extern volatile INDF0bits_t INDF0bits __at(0x000);

# 72
extern volatile unsigned char INDF1 __at(0x001);

asm("INDF1 equ 01h");


typedef union {
struct {
unsigned INDF1 :8;
};
} INDF1bits_t;
extern volatile INDF1bits_t INDF1bits __at(0x001);

# 92
extern volatile unsigned char PCL __at(0x002);

asm("PCL equ 02h");


typedef union {
struct {
unsigned PCL :8;
};
} PCLbits_t;
extern volatile PCLbits_t PCLbits __at(0x002);

# 112
extern volatile unsigned char STATUS __at(0x003);

asm("STATUS equ 03h");


typedef union {
struct {
unsigned C :1;
unsigned DC :1;
unsigned Z :1;
unsigned nPD :1;
unsigned nTO :1;
};
struct {
unsigned CARRY :1;
unsigned :1;
unsigned ZERO :1;
};
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __at(0x003);

# 171
extern volatile unsigned short FSR0 __at(0x004);



extern volatile unsigned char FSR0L __at(0x004);

asm("FSR0L equ 04h");


typedef union {
struct {
unsigned FSR0L :8;
};
} FSR0Lbits_t;
extern volatile FSR0Lbits_t FSR0Lbits __at(0x004);

# 195
extern volatile unsigned char FSR0H __at(0x005);

asm("FSR0H equ 05h");


typedef union {
struct {
unsigned FSR0H :8;
};
} FSR0Hbits_t;
extern volatile FSR0Hbits_t FSR0Hbits __at(0x005);

# 215
extern volatile unsigned short FSR1 __at(0x006);



extern volatile unsigned char FSR1L __at(0x006);

asm("FSR1L equ 06h");


typedef union {
struct {
unsigned FSR1L :8;
};
} FSR1Lbits_t;
extern volatile FSR1Lbits_t FSR1Lbits __at(0x006);

# 239
extern volatile unsigned char FSR1H __at(0x007);

asm("FSR1H equ 07h");


typedef union {
struct {
unsigned FSR1H :8;
};
} FSR1Hbits_t;
extern volatile FSR1Hbits_t FSR1Hbits __at(0x007);

# 259
extern volatile unsigned char BSR __at(0x008);

asm("BSR equ 08h");


typedef union {
struct {
unsigned BSR :5;
};
struct {
unsigned BSR0 :1;
unsigned BSR1 :1;
unsigned BSR2 :1;
unsigned BSR3 :1;
unsigned BSR4 :1;
};
} BSRbits_t;
extern volatile BSRbits_t BSRbits __at(0x008);

# 311
extern volatile unsigned char WREG __at(0x009);

asm("WREG equ 09h");


typedef union {
struct {
unsigned WREG0 :8;
};
} WREGbits_t;
extern volatile WREGbits_t WREGbits __at(0x009);

# 331
extern volatile unsigned char PCLATH __at(0x00A);

asm("PCLATH equ 0Ah");


typedef union {
struct {
unsigned PCLATH :7;
};
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __at(0x00A);

# 351
extern volatile unsigned char INTCON __at(0x00B);

asm("INTCON equ 0Bh");


typedef union {
struct {
unsigned IOCIF :1;
unsigned INTF :1;
unsigned TMR0IF :1;
unsigned IOCIE :1;
unsigned INTE :1;
unsigned TMR0IE :1;
unsigned PEIE :1;
unsigned GIE :1;
};
struct {
unsigned :2;
unsigned T0IF :1;
unsigned :2;
unsigned T0IE :1;
};
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __at(0x00B);

# 429
extern volatile unsigned char PORTA __at(0x00C);

asm("PORTA equ 0Ch");


typedef union {
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
};
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __at(0x00C);

# 479
extern volatile unsigned char PORTB __at(0x00D);

asm("PORTB equ 0Dh");


typedef union {
struct {
unsigned :4;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __at(0x00D);

# 518
extern volatile unsigned char PORTC __at(0x00E);

asm("PORTC equ 0Eh");


typedef union {
struct {
unsigned RC0 :1;
unsigned RC1 :1;
unsigned RC2 :1;
unsigned RC3 :1;
unsigned RC4 :1;
unsigned RC5 :1;
unsigned RC6 :1;
unsigned RC7 :1;
};
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __at(0x00E);

# 580
extern volatile unsigned char PIR1 __at(0x011);

asm("PIR1 equ 011h");


typedef union {
struct {
unsigned TMR1IF :1;
unsigned TMR2IF :1;
unsigned CCP1IF :1;
unsigned SSP1IF :1;
unsigned TXIF :1;
unsigned RCIF :1;
unsigned ADIF :1;
unsigned TMR1GIF :1;
};
struct {
unsigned :2;
unsigned CCPIF :1;
};
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __at(0x011);

# 651
extern volatile unsigned char PIR2 __at(0x012);

asm("PIR2 equ 012h");


typedef union {
struct {
unsigned CCP2IF :1;
unsigned TMR4IF :1;
unsigned TMR6IF :1;
unsigned BCL1IF :1;
unsigned :1;
unsigned C1IF :1;
unsigned C2IF :1;
unsigned OSFIF :1;
};
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __at(0x012);

# 708
extern volatile unsigned char PIR3 __at(0x013);

asm("PIR3 equ 013h");


typedef union {
struct {
unsigned CLC1IF :1;
unsigned CLC2IF :1;
unsigned CLC3IF :1;
unsigned :1;
unsigned ZCDIF :1;
unsigned COGIF :1;
};
} PIR3bits_t;
extern volatile PIR3bits_t PIR3bits __at(0x013);

# 753
extern volatile unsigned char TMR0 __at(0x015);

asm("TMR0 equ 015h");


typedef union {
struct {
unsigned TMR0 :8;
};
} TMR0bits_t;
extern volatile TMR0bits_t TMR0bits __at(0x015);

# 773
extern volatile unsigned short TMR1 __at(0x016);

asm("TMR1 equ 016h");




extern volatile unsigned char TMR1L __at(0x016);

asm("TMR1L equ 016h");


typedef union {
struct {
unsigned TMR1L :8;
};
} TMR1Lbits_t;
extern volatile TMR1Lbits_t TMR1Lbits __at(0x016);

# 800
extern volatile unsigned char TMR1H __at(0x017);

asm("TMR1H equ 017h");


typedef union {
struct {
unsigned TMR1H :8;
};
} TMR1Hbits_t;
extern volatile TMR1Hbits_t TMR1Hbits __at(0x017);

# 820
extern volatile unsigned char T1CON __at(0x018);

asm("T1CON equ 018h");


typedef union {
struct {
unsigned TMR1ON :1;
unsigned :1;
unsigned nT1SYNC :1;
unsigned T1OSCEN :1;
unsigned T1CKPS :2;
unsigned TMR1CS :2;
};
struct {
unsigned :4;
unsigned T1CKPS0 :1;
unsigned T1CKPS1 :1;
unsigned TMR1CS0 :1;
unsigned TMR1CS1 :1;
};
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __at(0x018);

# 892
extern volatile unsigned char T1GCON __at(0x019);

asm("T1GCON equ 019h");


typedef union {
struct {
unsigned T1GSS :2;
unsigned T1GVAL :1;
unsigned T1GGO_nDONE :1;
unsigned T1GSPM :1;
unsigned T1GTM :1;
unsigned T1GPOL :1;
unsigned TMR1GE :1;
};
struct {
unsigned T1GSS0 :1;
unsigned T1GSS1 :1;
};
} T1GCONbits_t;
extern volatile T1GCONbits_t T1GCONbits __at(0x019);

# 962
extern volatile unsigned char TMR2 __at(0x01A);

asm("TMR2 equ 01Ah");


typedef union {
struct {
unsigned TMR2 :8;
};
} TMR2bits_t;
extern volatile TMR2bits_t TMR2bits __at(0x01A);

# 982
extern volatile unsigned char PR2 __at(0x01B);

asm("PR2 equ 01Bh");


typedef union {
struct {
unsigned PR2 :8;
};
} PR2bits_t;
extern volatile PR2bits_t PR2bits __at(0x01B);

# 1002
extern volatile unsigned char T2CON __at(0x01C);

asm("T2CON equ 01Ch");


typedef union {
struct {
unsigned T2CKPS :2;
unsigned TMR2ON :1;
unsigned T2OUTPS :4;
};
struct {
unsigned T2CKPS0 :1;
unsigned T2CKPS1 :1;
unsigned :1;
unsigned T2OUTPS0 :1;
unsigned T2OUTPS1 :1;
unsigned T2OUTPS2 :1;
unsigned T2OUTPS3 :1;
};
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __at(0x01C);

# 1073
extern volatile unsigned char TRISA __at(0x08C);

asm("TRISA equ 08Ch");


typedef union {
struct {
unsigned TRISA0 :1;
unsigned TRISA1 :1;
unsigned TRISA2 :1;
unsigned :1;
unsigned TRISA4 :1;
unsigned TRISA5 :1;
};
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __at(0x08C);

# 1118
extern volatile unsigned char TRISB __at(0x08D);

asm("TRISB equ 08Dh");


typedef union {
struct {
unsigned :4;
unsigned TRISB4 :1;
unsigned TRISB5 :1;
unsigned TRISB6 :1;
unsigned TRISB7 :1;
};
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __at(0x08D);

# 1157
extern volatile unsigned char TRISC __at(0x08E);

asm("TRISC equ 08Eh");


typedef union {
struct {
unsigned TRISC0 :1;
unsigned TRISC1 :1;
unsigned TRISC2 :1;
unsigned TRISC3 :1;
unsigned TRISC4 :1;
unsigned TRISC5 :1;
unsigned TRISC6 :1;
unsigned TRISC7 :1;
};
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __at(0x08E);

# 1219
extern volatile unsigned char PIE1 __at(0x091);

asm("PIE1 equ 091h");


typedef union {
struct {
unsigned TMR1IE :1;
unsigned TMR2IE :1;
unsigned CCP1IE :1;
unsigned SSP1IE :1;
unsigned TXIE :1;
unsigned RCIE :1;
unsigned ADIE :1;
unsigned TMR1GIE :1;
};
struct {
unsigned :2;
unsigned CCPIE :1;
};
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __at(0x091);

# 1290
extern volatile unsigned char PIE2 __at(0x092);

asm("PIE2 equ 092h");


typedef union {
struct {
unsigned CCP2IE :1;
unsigned TMR4IE :1;
unsigned TMR6IE :1;
unsigned BCL1IE :1;
unsigned :1;
unsigned C1IE :1;
unsigned C2IE :1;
unsigned OSFIE :1;
};
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __at(0x092);

# 1347
extern volatile unsigned char PIE3 __at(0x093);

asm("PIE3 equ 093h");


typedef union {
struct {
unsigned CLC1IE :1;
unsigned CLC2IE :1;
unsigned CLC3IE :1;
unsigned :1;
unsigned ZCDIE :1;
unsigned COGIE :1;
};
} PIE3bits_t;
extern volatile PIE3bits_t PIE3bits __at(0x093);

# 1392
extern volatile unsigned char OPTION_REG __at(0x095);

asm("OPTION_REG equ 095h");


typedef union {
struct {
unsigned PS :3;
unsigned PSA :1;
unsigned TMR0SE :1;
unsigned TMR0CS :1;
unsigned INTEDG :1;
unsigned nWPUEN :1;
};
struct {
unsigned PS0 :1;
unsigned PS1 :1;
unsigned PS2 :1;
unsigned :1;
unsigned T0SE :1;
unsigned T0CS :1;
};
} OPTION_REGbits_t;
extern volatile OPTION_REGbits_t OPTION_REGbits __at(0x095);

# 1475
extern volatile unsigned char PCON __at(0x096);

asm("PCON equ 096h");


typedef union {
struct {
unsigned nBOR :1;
unsigned nPOR :1;
unsigned nRI :1;
unsigned nRMCLR :1;
unsigned nRWDT :1;
unsigned :1;
unsigned STKUNF :1;
unsigned STKOVF :1;
};
} PCONbits_t;
extern volatile PCONbits_t PCONbits __at(0x096);

# 1532
extern volatile unsigned char WDTCON __at(0x097);

asm("WDTCON equ 097h");


typedef union {
struct {
unsigned SWDTEN :1;
unsigned WDTPS :5;
};
struct {
unsigned :1;
unsigned WDTPS0 :1;
unsigned WDTPS1 :1;
unsigned WDTPS2 :1;
unsigned WDTPS3 :1;
unsigned WDTPS4 :1;
};
} WDTCONbits_t;
extern volatile WDTCONbits_t WDTCONbits __at(0x097);

# 1591
extern volatile unsigned char OSCTUNE __at(0x098);

asm("OSCTUNE equ 098h");


typedef union {
struct {
unsigned TUN :6;
};
struct {
unsigned TUN0 :1;
unsigned TUN1 :1;
unsigned TUN2 :1;
unsigned TUN3 :1;
unsigned TUN4 :1;
unsigned TUN5 :1;
};
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __at(0x098);

# 1649
extern volatile unsigned char OSCCON __at(0x099);

asm("OSCCON equ 099h");


typedef union {
struct {
unsigned SCS :2;
unsigned :1;
unsigned IRCF :4;
unsigned SPLLEN :1;
};
struct {
unsigned SCS0 :1;
unsigned SCS1 :1;
unsigned :1;
unsigned IRCF0 :1;
unsigned IRCF1 :1;
unsigned IRCF2 :1;
unsigned IRCF3 :1;
};
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __at(0x099);

# 1721
extern volatile unsigned char OSCSTAT __at(0x09A);

asm("OSCSTAT equ 09Ah");


typedef union {
struct {
unsigned HFIOFS :1;
unsigned LFIOFR :1;
unsigned MFIOFR :1;
unsigned HFIOFL :1;
unsigned HFIOFR :1;
unsigned OSTS :1;
unsigned PLLR :1;
unsigned SOSCR :1;
};
} OSCSTATbits_t;
extern volatile OSCSTATbits_t OSCSTATbits __at(0x09A);

# 1783
extern volatile unsigned short ADRES __at(0x09B);

asm("ADRES equ 09Bh");




extern volatile unsigned char ADRESL __at(0x09B);

asm("ADRESL equ 09Bh");


typedef union {
struct {
unsigned ADRESL :8;
};
} ADRESLbits_t;
extern volatile ADRESLbits_t ADRESLbits __at(0x09B);

# 1810
extern volatile unsigned char ADRESH __at(0x09C);

asm("ADRESH equ 09Ch");


typedef union {
struct {
unsigned ADRESH :8;
};
} ADRESHbits_t;
extern volatile ADRESHbits_t ADRESHbits __at(0x09C);

# 1830
extern volatile unsigned char ADCON0 __at(0x09D);

asm("ADCON0 equ 09Dh");


typedef union {
struct {
unsigned ADON :1;
unsigned GO_nDONE :1;
unsigned CHS :5;
};
struct {
unsigned :1;
unsigned ADGO :1;
unsigned CHS0 :1;
unsigned CHS1 :1;
unsigned CHS2 :1;
unsigned CHS3 :1;
unsigned CHS4 :1;
};
struct {
unsigned :1;
unsigned GO :1;
};
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __at(0x09D);

# 1910
extern volatile unsigned char ADCON1 __at(0x09E);

asm("ADCON1 equ 09Eh");


typedef union {
struct {
unsigned ADPREF :2;
unsigned ADNREF :1;
unsigned :1;
unsigned ADCS :3;
unsigned ADFM :1;
};
struct {
unsigned ADPREF0 :1;
unsigned ADPREF1 :1;
unsigned :2;
unsigned ADCS0 :1;
unsigned ADCS1 :1;
unsigned ADCS2 :1;
};
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __at(0x09E);

# 1982
extern volatile unsigned char ADCON2 __at(0x09F);

asm("ADCON2 equ 09Fh");


typedef union {
struct {
unsigned :4;
unsigned TRIGSEL :4;
};
struct {
unsigned :4;
unsigned TRIGSEL0 :1;
unsigned TRIGSEL1 :1;
unsigned TRIGSEL2 :1;
unsigned TRIGSEL3 :1;
};
} ADCON2bits_t;
extern volatile ADCON2bits_t ADCON2bits __at(0x09F);

# 2030
extern volatile unsigned char LATA __at(0x10C);

asm("LATA equ 010Ch");


typedef union {
struct {
unsigned LATA0 :1;
unsigned LATA1 :1;
unsigned LATA2 :1;
unsigned :1;
unsigned LATA4 :1;
unsigned LATA5 :1;
};
} LATAbits_t;
extern volatile LATAbits_t LATAbits __at(0x10C);

# 2075
extern volatile unsigned char LATB __at(0x10D);

asm("LATB equ 010Dh");


typedef union {
struct {
unsigned :4;
unsigned LATB4 :1;
unsigned LATB5 :1;
unsigned LATB6 :1;
unsigned LATB7 :1;
};
} LATBbits_t;
extern volatile LATBbits_t LATBbits __at(0x10D);

# 2114
extern volatile unsigned char LATC __at(0x10E);

asm("LATC equ 010Eh");


typedef union {
struct {
unsigned LATC0 :1;
unsigned LATC1 :1;
unsigned LATC2 :1;
unsigned LATC3 :1;
unsigned LATC4 :1;
unsigned LATC5 :1;
unsigned LATC6 :1;
unsigned LATC7 :1;
};
} LATCbits_t;
extern volatile LATCbits_t LATCbits __at(0x10E);

# 2176
extern volatile unsigned char CM1CON0 __at(0x111);

asm("CM1CON0 equ 0111h");


typedef union {
struct {
unsigned C1SYNC :1;
unsigned C1HYS :1;
unsigned C1SP :1;
unsigned C1ZLF :1;
unsigned C1POL :1;
unsigned :1;
unsigned C1OUT :1;
unsigned C1ON :1;
};
} CM1CON0bits_t;
extern volatile CM1CON0bits_t CM1CON0bits __at(0x111);

# 2233
extern volatile unsigned char CM1CON1 __at(0x112);

asm("CM1CON1 equ 0112h");


typedef union {
struct {
unsigned C1NCH :3;
unsigned C1PCH :3;
unsigned C1INTN :1;
unsigned C1INTP :1;
};
struct {
unsigned C1NCH0 :1;
unsigned C1NCH1 :1;
unsigned C1NCH2 :1;
unsigned C1PCH0 :1;
unsigned C1PCH1 :1;
unsigned C1PCH2 :1;
};
} CM1CON1bits_t;
extern volatile CM1CON1bits_t CM1CON1bits __at(0x112);

# 2309
extern volatile unsigned char CM2CON0 __at(0x113);

asm("CM2CON0 equ 0113h");


typedef union {
struct {
unsigned C2SYNC :1;
unsigned C2HYS :1;
unsigned C2SP :1;
unsigned C2ZLF :1;
unsigned C2POL :1;
unsigned :1;
unsigned C2OUT :1;
unsigned C2ON :1;
};
} CM2CON0bits_t;
extern volatile CM2CON0bits_t CM2CON0bits __at(0x113);

# 2366
extern volatile unsigned char CM2CON1 __at(0x114);

asm("CM2CON1 equ 0114h");


typedef union {
struct {
unsigned C2NCH :3;
unsigned C2PCH :3;
unsigned C2INTN :1;
unsigned C2INTP :1;
};
struct {
unsigned C2NCH0 :1;
unsigned C2NCH1 :1;
unsigned C2NCH2 :1;
unsigned C2PCH0 :1;
unsigned C2PCH1 :1;
unsigned C2PCH2 :1;
};
} CM2CON1bits_t;
extern volatile CM2CON1bits_t CM2CON1bits __at(0x114);

# 2442
extern volatile unsigned char CMOUT __at(0x115);

asm("CMOUT equ 0115h");


typedef union {
struct {
unsigned MC1OUT :1;
unsigned MC2OUT :1;
};
} CMOUTbits_t;
extern volatile CMOUTbits_t CMOUTbits __at(0x115);

# 2468
extern volatile unsigned char BORCON __at(0x116);

asm("BORCON equ 0116h");


typedef union {
struct {
unsigned BORRDY :1;
unsigned :5;
unsigned BORFS :1;
unsigned SBOREN :1;
};
} BORCONbits_t;
extern volatile BORCONbits_t BORCONbits __at(0x116);

# 2501
extern volatile unsigned char FVRCON __at(0x117);

asm("FVRCON equ 0117h");


typedef union {
struct {
unsigned ADFVR :2;
unsigned CDAFVR :2;
unsigned TSRNG :1;
unsigned TSEN :1;
unsigned FVRRDY :1;
unsigned FVREN :1;
};
struct {
unsigned ADFVR0 :1;
unsigned ADFVR1 :1;
unsigned CDAFVR0 :1;
unsigned CDAFVR1 :1;
};
} FVRCONbits_t;
extern volatile FVRCONbits_t FVRCONbits __at(0x117);

# 2577
extern volatile unsigned char DAC1CON0 __at(0x118);

asm("DAC1CON0 equ 0118h");


typedef union {
struct {
unsigned DAC1NSS :1;
unsigned :1;
unsigned DAC1PSS :2;
unsigned DAC1OE2 :1;
unsigned DAC1OE1 :1;
unsigned :1;
unsigned DAC1EN :1;
};
struct {
unsigned :2;
unsigned DAC1PSS0 :1;
unsigned DAC1PSS1 :1;
};
struct {
unsigned DACNSS :1;
unsigned :1;
unsigned DACPSS :2;
unsigned DACOE0 :1;
unsigned DACOE1 :1;
unsigned :1;
unsigned DACEN :1;
};
struct {
unsigned :2;
unsigned DACPSS0 :1;
unsigned DACPSS1 :1;
};
} DAC1CON0bits_t;
extern volatile DAC1CON0bits_t DAC1CON0bits __at(0x118);

# 2687
extern volatile unsigned char DAC1CON1 __at(0x119);

asm("DAC1CON1 equ 0119h");


typedef union {
struct {
unsigned DAC1R :8;
};
struct {
unsigned DAC1R0 :1;
unsigned DAC1R1 :1;
unsigned DAC1R2 :1;
unsigned DAC1R3 :1;
unsigned DAC1R4 :1;
unsigned DAC1R5 :1;
unsigned DAC1R6 :1;
unsigned DAC1R7 :1;
};
struct {
unsigned DACR0 :1;
unsigned DACR1 :1;
unsigned DACR2 :1;
unsigned DACR3 :1;
unsigned DACR4 :1;
unsigned DACR5 :1;
unsigned DACR6 :1;
unsigned DACR7 :1;
};
} DAC1CON1bits_t;
extern volatile DAC1CON1bits_t DAC1CON1bits __at(0x119);

# 2807
extern volatile unsigned char ZCD1CON __at(0x11C);

asm("ZCD1CON equ 011Ch");


typedef union {
struct {
unsigned ZCD1INTN :1;
unsigned ZCD1INTP :1;
unsigned :2;
unsigned ZCD1POL :1;
unsigned ZCD1OUT :1;
unsigned :1;
unsigned ZCD1EN :1;
};
} ZCD1CONbits_t;
extern volatile ZCD1CONbits_t ZCD1CONbits __at(0x11C);

# 2853
extern volatile unsigned char ANSELA __at(0x18C);

asm("ANSELA equ 018Ch");


typedef union {
struct {
unsigned ANSA0 :1;
unsigned ANSA1 :1;
unsigned ANSA2 :1;
unsigned :1;
unsigned ANSA4 :1;
unsigned ANS5 :1;
};
} ANSELAbits_t;
extern volatile ANSELAbits_t ANSELAbits __at(0x18C);

# 2898
extern volatile unsigned char ANSELB __at(0x18D);

asm("ANSELB equ 018Dh");


typedef union {
struct {
unsigned :4;
unsigned ANSB4 :1;
unsigned ANSB5 :1;
unsigned ANSB6 :1;
unsigned ANSB7 :1;
};
} ANSELBbits_t;
extern volatile ANSELBbits_t ANSELBbits __at(0x18D);

# 2937
extern volatile unsigned char ANSELC __at(0x18E);

asm("ANSELC equ 018Eh");


typedef union {
struct {
unsigned ANSC0 :1;
unsigned ANSC1 :1;
unsigned ANSC2 :1;
unsigned ANSC3 :1;
unsigned :2;
unsigned ANSC6 :1;
unsigned ANSC7 :1;
};
} ANSELCbits_t;
extern volatile ANSELCbits_t ANSELCbits __at(0x18E);

# 2988
extern volatile unsigned short PMADR __at(0x191);

asm("PMADR equ 0191h");




extern volatile unsigned char PMADRL __at(0x191);

asm("PMADRL equ 0191h");


typedef union {
struct {
unsigned PMADRL :8;
};
} PMADRLbits_t;
extern volatile PMADRLbits_t PMADRLbits __at(0x191);

# 3015
extern volatile unsigned char PMADRH __at(0x192);

asm("PMADRH equ 0192h");


typedef union {
struct {
unsigned PMADRH :7;
};
} PMADRHbits_t;
extern volatile PMADRHbits_t PMADRHbits __at(0x192);

# 3035
extern volatile unsigned short PMDAT __at(0x193);

asm("PMDAT equ 0193h");




extern volatile unsigned char PMDATL __at(0x193);

asm("PMDATL equ 0193h");


typedef union {
struct {
unsigned PMDATL :8;
};
} PMDATLbits_t;
extern volatile PMDATLbits_t PMDATLbits __at(0x193);

# 3062
extern volatile unsigned char PMDATH __at(0x194);

asm("PMDATH equ 0194h");


typedef union {
struct {
unsigned PMDATH :6;
};
} PMDATHbits_t;
extern volatile PMDATHbits_t PMDATHbits __at(0x194);

# 3082
extern volatile unsigned char PMCON1 __at(0x195);

asm("PMCON1 equ 0195h");


typedef union {
struct {
unsigned RD :1;
unsigned WR :1;
unsigned WREN :1;
unsigned WRERR :1;
unsigned FREE :1;
unsigned LWLO :1;
unsigned CFGS :1;
};
} PMCON1bits_t;
extern volatile PMCON1bits_t PMCON1bits __at(0x195);

# 3138
extern volatile unsigned char PMCON2 __at(0x196);

asm("PMCON2 equ 0196h");


typedef union {
struct {
unsigned PMCON2 :8;
};
} PMCON2bits_t;
extern volatile PMCON2bits_t PMCON2bits __at(0x196);

# 3158
extern volatile unsigned char RC1REG __at(0x199);

asm("RC1REG equ 0199h");


extern volatile unsigned char RCREG __at(0x199);

asm("RCREG equ 0199h");

extern volatile unsigned char RCREG1 __at(0x199);

asm("RCREG1 equ 0199h");


typedef union {
struct {
unsigned RC1REG :8;
};
} RC1REGbits_t;
extern volatile RC1REGbits_t RC1REGbits __at(0x199);

# 3185
typedef union {
struct {
unsigned RC1REG :8;
};
} RCREGbits_t;
extern volatile RCREGbits_t RCREGbits __at(0x199);

# 3197
typedef union {
struct {
unsigned RC1REG :8;
};
} RCREG1bits_t;
extern volatile RCREG1bits_t RCREG1bits __at(0x199);

# 3212
extern volatile unsigned char TX1REG __at(0x19A);

asm("TX1REG equ 019Ah");


extern volatile unsigned char TXREG1 __at(0x19A);

asm("TXREG1 equ 019Ah");

extern volatile unsigned char TXREG __at(0x19A);

asm("TXREG equ 019Ah");


typedef union {
struct {
unsigned TX1REG :8;
};
} TX1REGbits_t;
extern volatile TX1REGbits_t TX1REGbits __at(0x19A);

# 3239
typedef union {
struct {
unsigned TX1REG :8;
};
} TXREG1bits_t;
extern volatile TXREG1bits_t TXREG1bits __at(0x19A);

# 3251
typedef union {
struct {
unsigned TX1REG :8;
};
} TXREGbits_t;
extern volatile TXREGbits_t TXREGbits __at(0x19A);

# 3266
extern volatile unsigned short SP1BRG __at(0x19B);

asm("SP1BRG equ 019Bh");




extern volatile unsigned char SP1BRGL __at(0x19B);

asm("SP1BRGL equ 019Bh");


extern volatile unsigned char SPBRG __at(0x19B);

asm("SPBRG equ 019Bh");

extern volatile unsigned char SPBRG1 __at(0x19B);

asm("SPBRG1 equ 019Bh");

extern volatile unsigned char SPBRGL __at(0x19B);

asm("SPBRGL equ 019Bh");


typedef union {
struct {
unsigned SP1BRGL :8;
};
} SP1BRGLbits_t;
extern volatile SP1BRGLbits_t SP1BRGLbits __at(0x19B);

# 3304
typedef union {
struct {
unsigned SP1BRGL :8;
};
} SPBRGbits_t;
extern volatile SPBRGbits_t SPBRGbits __at(0x19B);

# 3316
typedef union {
struct {
unsigned SP1BRGL :8;
};
} SPBRG1bits_t;
extern volatile SPBRG1bits_t SPBRG1bits __at(0x19B);

# 3328
typedef union {
struct {
unsigned SP1BRGL :8;
};
} SPBRGLbits_t;
extern volatile SPBRGLbits_t SPBRGLbits __at(0x19B);

# 3343
extern volatile unsigned char SP1BRGH __at(0x19C);

asm("SP1BRGH equ 019Ch");


extern volatile unsigned char SPBRGH __at(0x19C);

asm("SPBRGH equ 019Ch");

extern volatile unsigned char SPBRGH1 __at(0x19C);

asm("SPBRGH1 equ 019Ch");


typedef union {
struct {
unsigned SP1BRGH :8;
};
} SP1BRGHbits_t;
extern volatile SP1BRGHbits_t SP1BRGHbits __at(0x19C);

# 3370
typedef union {
struct {
unsigned SP1BRGH :8;
};
} SPBRGHbits_t;
extern volatile SPBRGHbits_t SPBRGHbits __at(0x19C);

# 3382
typedef union {
struct {
unsigned SP1BRGH :8;
};
} SPBRGH1bits_t;
extern volatile SPBRGH1bits_t SPBRGH1bits __at(0x19C);

# 3397
extern volatile unsigned char RC1STA __at(0x19D);

asm("RC1STA equ 019Dh");


extern volatile unsigned char RCSTA1 __at(0x19D);

asm("RCSTA1 equ 019Dh");

extern volatile unsigned char RCSTA __at(0x19D);

asm("RCSTA equ 019Dh");


typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
} RC1STAbits_t;
extern volatile RC1STAbits_t RC1STAbits __at(0x19D);

# 3466
typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
} RCSTA1bits_t;
extern volatile RCSTA1bits_t RCSTA1bits __at(0x19D);

# 3520
typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __at(0x19D);

# 3577
extern volatile unsigned char TX1STA __at(0x19E);

asm("TX1STA equ 019Eh");


extern volatile unsigned char TXSTA1 __at(0x19E);

asm("TXSTA1 equ 019Eh");

extern volatile unsigned char TXSTA __at(0x19E);

asm("TXSTA equ 019Eh");


typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
} TX1STAbits_t;
extern volatile TX1STAbits_t TX1STAbits __at(0x19E);

# 3646
typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
} TXSTA1bits_t;
extern volatile TXSTA1bits_t TXSTA1bits __at(0x19E);

# 3700
typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __at(0x19E);

# 3757
extern volatile unsigned char BAUD1CON __at(0x19F);

asm("BAUD1CON equ 019Fh");


extern volatile unsigned char BAUDCON1 __at(0x19F);

asm("BAUDCON1 equ 019Fh");

extern volatile unsigned char BAUDCTL1 __at(0x19F);

asm("BAUDCTL1 equ 019Fh");

extern volatile unsigned char BAUDCON __at(0x19F);

asm("BAUDCON equ 019Fh");

extern volatile unsigned char BAUDCTL __at(0x19F);

asm("BAUDCTL equ 019Fh");


typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned SCKP :1;
unsigned :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
} BAUD1CONbits_t;
extern volatile BAUD1CONbits_t BAUD1CONbits __at(0x19F);

# 3824
typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned SCKP :1;
unsigned :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
} BAUDCON1bits_t;
extern volatile BAUDCON1bits_t BAUDCON1bits __at(0x19F);

# 3868
typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned SCKP :1;
unsigned :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
} BAUDCTL1bits_t;
extern volatile BAUDCTL1bits_t BAUDCTL1bits __at(0x19F);

# 3912
typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned SCKP :1;
unsigned :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
} BAUDCONbits_t;
extern volatile BAUDCONbits_t BAUDCONbits __at(0x19F);

# 3956
typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned SCKP :1;
unsigned :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
} BAUDCTLbits_t;
extern volatile BAUDCTLbits_t BAUDCTLbits __at(0x19F);

# 4003
extern volatile unsigned char WPUA __at(0x20C);

asm("WPUA equ 020Ch");


typedef union {
struct {
unsigned WPUA0 :1;
unsigned WPUA1 :1;
unsigned WPUA2 :1;
unsigned WPUA3 :1;
unsigned WPUA4 :1;
unsigned WPUA5 :1;
};
} WPUAbits_t;
extern volatile WPUAbits_t WPUAbits __at(0x20C);

# 4053
extern volatile unsigned char WPUB __at(0x20D);

asm("WPUB equ 020Dh");


typedef union {
struct {
unsigned :4;
unsigned WPUB4 :1;
unsigned WPUB5 :1;
unsigned WPUB6 :1;
unsigned WPUB7 :1;
};
} WPUBbits_t;
extern volatile WPUBbits_t WPUBbits __at(0x20D);

# 4092
extern volatile unsigned char WPUC __at(0x20E);

asm("WPUC equ 020Eh");


typedef union {
struct {
unsigned WPUC0 :1;
unsigned WPUC1 :1;
unsigned WPUC2 :1;
unsigned WPUC3 :1;
unsigned WPUC4 :1;
unsigned WPUC5 :1;
unsigned WPUC6 :1;
unsigned WPUC7 :1;
};
} WPUCbits_t;
extern volatile WPUCbits_t WPUCbits __at(0x20E);

# 4154
extern volatile unsigned char SSP1BUF __at(0x211);

asm("SSP1BUF equ 0211h");


extern volatile unsigned char SSPBUF __at(0x211);

asm("SSPBUF equ 0211h");


typedef union {
struct {
unsigned SSP1BUF0 :1;
unsigned SSP1BUF1 :1;
unsigned SSP1BUF2 :1;
unsigned SSP1BUF3 :1;
unsigned SSP1BUF4 :1;
unsigned SSP1BUF5 :1;
unsigned SSP1BUF6 :1;
unsigned SSP1BUF7 :1;
};
struct {
unsigned BUF :8;
};
struct {
unsigned BUF0 :1;
unsigned BUF1 :1;
unsigned BUF2 :1;
unsigned BUF3 :1;
unsigned BUF4 :1;
unsigned BUF5 :1;
unsigned BUF6 :1;
unsigned BUF7 :1;
};
struct {
unsigned SSP1BUF :8;
};
} SSP1BUFbits_t;
extern volatile SSP1BUFbits_t SSP1BUFbits __at(0x211);

# 4285
typedef union {
struct {
unsigned SSP1BUF0 :1;
unsigned SSP1BUF1 :1;
unsigned SSP1BUF2 :1;
unsigned SSP1BUF3 :1;
unsigned SSP1BUF4 :1;
unsigned SSP1BUF5 :1;
unsigned SSP1BUF6 :1;
unsigned SSP1BUF7 :1;
};
struct {
unsigned BUF :8;
};
struct {
unsigned BUF0 :1;
unsigned BUF1 :1;
unsigned BUF2 :1;
unsigned BUF3 :1;
unsigned BUF4 :1;
unsigned BUF5 :1;
unsigned BUF6 :1;
unsigned BUF7 :1;
};
struct {
unsigned SSP1BUF :8;
};
} SSPBUFbits_t;
extern volatile SSPBUFbits_t SSPBUFbits __at(0x211);

# 4408
extern volatile unsigned char SSP1ADD __at(0x212);

asm("SSP1ADD equ 0212h");


extern volatile unsigned char SSPADD __at(0x212);

asm("SSPADD equ 0212h");


typedef union {
struct {
unsigned SSP1ADD0 :1;
unsigned SSP1ADD1 :1;
unsigned SSP1ADD2 :1;
unsigned SSP1ADD3 :1;
unsigned SSP1ADD4 :1;
unsigned SSP1ADD5 :1;
unsigned SSP1ADD6 :1;
unsigned SSP1ADD7 :1;
};
struct {
unsigned ADD :8;
};
struct {
unsigned ADD0 :1;
unsigned ADD1 :1;
unsigned ADD2 :1;
unsigned ADD3 :1;
unsigned ADD4 :1;
unsigned ADD5 :1;
unsigned ADD6 :1;
unsigned ADD7 :1;
};
struct {
unsigned SSP1ADD :8;
};
} SSP1ADDbits_t;
extern volatile SSP1ADDbits_t SSP1ADDbits __at(0x212);

# 4539
typedef union {
struct {
unsigned SSP1ADD0 :1;
unsigned SSP1ADD1 :1;
unsigned SSP1ADD2 :1;
unsigned SSP1ADD3 :1;
unsigned SSP1ADD4 :1;
unsigned SSP1ADD5 :1;
unsigned SSP1ADD6 :1;
unsigned SSP1ADD7 :1;
};
struct {
unsigned ADD :8;
};
struct {
unsigned ADD0 :1;
unsigned ADD1 :1;
unsigned ADD2 :1;
unsigned ADD3 :1;
unsigned ADD4 :1;
unsigned ADD5 :1;
unsigned ADD6 :1;
unsigned ADD7 :1;
};
struct {
unsigned SSP1ADD :8;
};
} SSPADDbits_t;
extern volatile SSPADDbits_t SSPADDbits __at(0x212);

# 4662
extern volatile unsigned char SSP1MSK __at(0x213);

asm("SSP1MSK equ 0213h");


extern volatile unsigned char SSPMSK __at(0x213);

asm("SSPMSK equ 0213h");


typedef union {
struct {
unsigned SSP1MSK0 :1;
unsigned SSP1MSK1 :1;
unsigned SSP1MSK2 :1;
unsigned SSP1MSK3 :1;
unsigned SSP1MSK4 :1;
unsigned SSP1MSK5 :1;
unsigned SSP1MSK6 :1;
unsigned SSP1MSK7 :1;
};
struct {
unsigned MSK :8;
};
struct {
unsigned MSK0 :1;
unsigned MSK1 :1;
unsigned MSK2 :1;
unsigned MSK3 :1;
unsigned MSK4 :1;
unsigned MSK5 :1;
unsigned MSK6 :1;
unsigned MSK7 :1;
};
struct {
unsigned SSP1MSK :8;
};
} SSP1MSKbits_t;
extern volatile SSP1MSKbits_t SSP1MSKbits __at(0x213);

# 4793
typedef union {
struct {
unsigned SSP1MSK0 :1;
unsigned SSP1MSK1 :1;
unsigned SSP1MSK2 :1;
unsigned SSP1MSK3 :1;
unsigned SSP1MSK4 :1;
unsigned SSP1MSK5 :1;
unsigned SSP1MSK6 :1;
unsigned SSP1MSK7 :1;
};
struct {
unsigned MSK :8;
};
struct {
unsigned MSK0 :1;
unsigned MSK1 :1;
unsigned MSK2 :1;
unsigned MSK3 :1;
unsigned MSK4 :1;
unsigned MSK5 :1;
unsigned MSK6 :1;
unsigned MSK7 :1;
};
struct {
unsigned SSP1MSK :8;
};
} SSPMSKbits_t;
extern volatile SSPMSKbits_t SSPMSKbits __at(0x213);

# 4916
extern volatile unsigned char SSP1STAT __at(0x214);

asm("SSP1STAT equ 0214h");


extern volatile unsigned char SSPSTAT __at(0x214);

asm("SSPSTAT equ 0214h");


typedef union {
struct {
unsigned BF :1;
unsigned UA :1;
unsigned R_nW :1;
unsigned S :1;
unsigned P :1;
unsigned D_nA :1;
unsigned CKE :1;
unsigned SMP :1;
};
} SSP1STATbits_t;
extern volatile SSP1STATbits_t SSP1STATbits __at(0x214);

# 4981
typedef union {
struct {
unsigned BF :1;
unsigned UA :1;
unsigned R_nW :1;
unsigned S :1;
unsigned P :1;
unsigned D_nA :1;
unsigned CKE :1;
unsigned SMP :1;
};
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __at(0x214);

# 5038
extern volatile unsigned char SSP1CON1 __at(0x215);

asm("SSP1CON1 equ 0215h");


extern volatile unsigned char SSPCON __at(0x215);

asm("SSPCON equ 0215h");

extern volatile unsigned char SSPCON1 __at(0x215);

asm("SSPCON1 equ 0215h");

extern volatile unsigned char SSP1CON __at(0x215);

asm("SSP1CON equ 0215h");


typedef union {
struct {
unsigned SSPM :4;
unsigned CKP :1;
unsigned SSPEN :1;
unsigned SSPOV :1;
unsigned WCOL :1;
};
struct {
unsigned SSPM0 :1;
unsigned SSPM1 :1;
unsigned SSPM2 :1;
unsigned SSPM3 :1;
};
} SSP1CON1bits_t;
extern volatile SSP1CON1bits_t SSP1CON1bits __at(0x215);

# 5119
typedef union {
struct {
unsigned SSPM :4;
unsigned CKP :1;
unsigned SSPEN :1;
unsigned SSPOV :1;
unsigned WCOL :1;
};
struct {
unsigned SSPM0 :1;
unsigned SSPM1 :1;
unsigned SSPM2 :1;
unsigned SSPM3 :1;
};
} SSPCONbits_t;
extern volatile SSPCONbits_t SSPCONbits __at(0x215);

# 5181
typedef union {
struct {
unsigned SSPM :4;
unsigned CKP :1;
unsigned SSPEN :1;
unsigned SSPOV :1;
unsigned WCOL :1;
};
struct {
unsigned SSPM0 :1;
unsigned SSPM1 :1;
unsigned SSPM2 :1;
unsigned SSPM3 :1;
};
} SSPCON1bits_t;
extern volatile SSPCON1bits_t SSPCON1bits __at(0x215);

# 5243
typedef union {
struct {
unsigned SSPM :4;
unsigned CKP :1;
unsigned SSPEN :1;
unsigned SSPOV :1;
unsigned WCOL :1;
};
struct {
unsigned SSPM0 :1;
unsigned SSPM1 :1;
unsigned SSPM2 :1;
unsigned SSPM3 :1;
};
} SSP1CONbits_t;
extern volatile SSP1CONbits_t SSP1CONbits __at(0x215);

# 5308
extern volatile unsigned char SSP1CON2 __at(0x216);

asm("SSP1CON2 equ 0216h");


extern volatile unsigned char SSPCON2 __at(0x216);

asm("SSPCON2 equ 0216h");


typedef union {
struct {
unsigned SEN :1;
unsigned RSEN :1;
unsigned PEN :1;
unsigned RCEN :1;
unsigned ACKEN :1;
unsigned ACKDT :1;
unsigned ACKSTAT :1;
unsigned GCEN :1;
};
} SSP1CON2bits_t;
extern volatile SSP1CON2bits_t SSP1CON2bits __at(0x216);

# 5373
typedef union {
struct {
unsigned SEN :1;
unsigned RSEN :1;
unsigned PEN :1;
unsigned RCEN :1;
unsigned ACKEN :1;
unsigned ACKDT :1;
unsigned ACKSTAT :1;
unsigned GCEN :1;
};
} SSPCON2bits_t;
extern volatile SSPCON2bits_t SSPCON2bits __at(0x216);

# 5430
extern volatile unsigned char SSP1CON3 __at(0x217);

asm("SSP1CON3 equ 0217h");


extern volatile unsigned char SSPCON3 __at(0x217);

asm("SSPCON3 equ 0217h");


typedef union {
struct {
unsigned DHEN :1;
unsigned AHEN :1;
unsigned SBCDE :1;
unsigned SDAHT :1;
unsigned BOEN :1;
unsigned SCIE :1;
unsigned PCIE :1;
unsigned ACKTIM :1;
};
} SSP1CON3bits_t;
extern volatile SSP1CON3bits_t SSP1CON3bits __at(0x217);

# 5495
typedef union {
struct {
unsigned DHEN :1;
unsigned AHEN :1;
unsigned SBCDE :1;
unsigned SDAHT :1;
unsigned BOEN :1;
unsigned SCIE :1;
unsigned PCIE :1;
unsigned ACKTIM :1;
};
} SSPCON3bits_t;
extern volatile SSPCON3bits_t SSPCON3bits __at(0x217);

# 5552
extern volatile unsigned char ODCONA __at(0x28C);

asm("ODCONA equ 028Ch");


typedef union {
struct {
unsigned ODA0 :1;
unsigned ODA1 :1;
unsigned ODA2 :1;
unsigned :1;
unsigned ODA4 :1;
unsigned ODA5 :1;
};
} ODCONAbits_t;
extern volatile ODCONAbits_t ODCONAbits __at(0x28C);

# 5597
extern volatile unsigned char ODCONB __at(0x28D);

asm("ODCONB equ 028Dh");


typedef union {
struct {
unsigned :4;
unsigned ODB4 :1;
unsigned ODB5 :1;
unsigned ODB6 :1;
unsigned ODB7 :1;
};
} ODCONBbits_t;
extern volatile ODCONBbits_t ODCONBbits __at(0x28D);

# 5636
extern volatile unsigned char ODCONC __at(0x28E);

asm("ODCONC equ 028Eh");


typedef union {
struct {
unsigned ODC0 :1;
unsigned ODC1 :1;
unsigned ODC2 :1;
unsigned ODC3 :1;
unsigned ODC4 :1;
unsigned ODC5 :1;
unsigned ODC6 :1;
unsigned ODC7 :1;
};
} ODCONCbits_t;
extern volatile ODCONCbits_t ODCONCbits __at(0x28E);

# 5698
extern volatile unsigned short CCPR1 __at(0x291);

asm("CCPR1 equ 0291h");




extern volatile unsigned char CCPR1L __at(0x291);

asm("CCPR1L equ 0291h");


typedef union {
struct {
unsigned CCPR1L :8;
};
} CCPR1Lbits_t;
extern volatile CCPR1Lbits_t CCPR1Lbits __at(0x291);

# 5725
extern volatile unsigned char CCPR1H __at(0x292);

asm("CCPR1H equ 0292h");


typedef union {
struct {
unsigned CCPR1H :8;
};
} CCPR1Hbits_t;
extern volatile CCPR1Hbits_t CCPR1Hbits __at(0x292);

# 5745
extern volatile unsigned char CCP1CON __at(0x293);

asm("CCP1CON equ 0293h");


extern volatile unsigned char ECCP1CON __at(0x293);

asm("ECCP1CON equ 0293h");


typedef union {
struct {
unsigned CCP1M :4;
unsigned DC1B :2;
};
struct {
unsigned CCP1M0 :1;
unsigned CCP1M1 :1;
unsigned CCP1M2 :1;
unsigned CCP1M3 :1;
unsigned DC1B0 :1;
unsigned DC1B1 :1;
};
struct {
unsigned :4;
unsigned CCP1Y :1;
unsigned CCP1X :1;
};
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __at(0x293);

# 5827
typedef union {
struct {
unsigned CCP1M :4;
unsigned DC1B :2;
};
struct {
unsigned CCP1M0 :1;
unsigned CCP1M1 :1;
unsigned CCP1M2 :1;
unsigned CCP1M3 :1;
unsigned DC1B0 :1;
unsigned DC1B1 :1;
};
struct {
unsigned :4;
unsigned CCP1Y :1;
unsigned CCP1X :1;
};
} ECCP1CONbits_t;
extern volatile ECCP1CONbits_t ECCP1CONbits __at(0x293);

# 5901
extern volatile unsigned short CCPR2 __at(0x298);

asm("CCPR2 equ 0298h");




extern volatile unsigned char CCPR2L __at(0x298);

asm("CCPR2L equ 0298h");


typedef union {
struct {
unsigned CCPR2L :8;
};
} CCPR2Lbits_t;
extern volatile CCPR2Lbits_t CCPR2Lbits __at(0x298);

# 5928
extern volatile unsigned char CCPR2H __at(0x299);

asm("CCPR2H equ 0299h");


typedef union {
struct {
unsigned CCPR2H :8;
};
} CCPR2Hbits_t;
extern volatile CCPR2Hbits_t CCPR2Hbits __at(0x299);

# 5948
extern volatile unsigned char CCP2CON __at(0x29A);

asm("CCP2CON equ 029Ah");


extern volatile unsigned char ECCP2CON __at(0x29A);

asm("ECCP2CON equ 029Ah");


typedef union {
struct {
unsigned CCP2M :4;
unsigned DC2B :2;
};
struct {
unsigned CCP2M0 :1;
unsigned CCP2M1 :1;
unsigned CCP2M2 :1;
unsigned CCP2M3 :1;
unsigned DC2B0 :1;
unsigned DC2B1 :1;
};
struct {
unsigned :4;
unsigned CCP2Y :1;
unsigned CCP2X :1;
};
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __at(0x29A);

# 6030
typedef union {
struct {
unsigned CCP2M :4;
unsigned DC2B :2;
};
struct {
unsigned CCP2M0 :1;
unsigned CCP2M1 :1;
unsigned CCP2M2 :1;
unsigned CCP2M3 :1;
unsigned DC2B0 :1;
unsigned DC2B1 :1;
};
struct {
unsigned :4;
unsigned CCP2Y :1;
unsigned CCP2X :1;
};
} ECCP2CONbits_t;
extern volatile ECCP2CONbits_t ECCP2CONbits __at(0x29A);

# 6104
extern volatile unsigned char CCPTMRS __at(0x29E);

asm("CCPTMRS equ 029Eh");


typedef union {
struct {
unsigned C1TSEL :2;
unsigned C2TSEL :2;
unsigned P3TSEL :2;
unsigned P4TSEL :2;
};
struct {
unsigned C1TSEL0 :1;
unsigned C1TSEL1 :1;
unsigned C2TSEL0 :1;
unsigned C2TSEL1 :1;
unsigned P3TSEL0 :1;
unsigned P3TSEL1 :1;
unsigned P4TSEL0 :1;
unsigned P4TSEL1 :1;
};
} CCPTMRSbits_t;
extern volatile CCPTMRSbits_t CCPTMRSbits __at(0x29E);

# 6192
extern volatile unsigned char SLRCONA __at(0x30C);

asm("SLRCONA equ 030Ch");


typedef union {
struct {
unsigned SLRA0 :1;
unsigned SLRA1 :1;
unsigned SLRA2 :1;
unsigned :1;
unsigned SLRA4 :1;
unsigned SLRA5 :1;
};
} SLRCONAbits_t;
extern volatile SLRCONAbits_t SLRCONAbits __at(0x30C);

# 6237
extern volatile unsigned char SLRCONB __at(0x30D);

asm("SLRCONB equ 030Dh");


typedef union {
struct {
unsigned :4;
unsigned SLRB4 :1;
unsigned SLRB5 :1;
unsigned SLRB6 :1;
unsigned SLRB7 :1;
};
} SLRCONBbits_t;
extern volatile SLRCONBbits_t SLRCONBbits __at(0x30D);

# 6276
extern volatile unsigned char SLRCONC __at(0x30E);

asm("SLRCONC equ 030Eh");


typedef union {
struct {
unsigned SLRC0 :1;
unsigned SLRC1 :1;
unsigned SLRC2 :1;
unsigned SLRC3 :1;
unsigned SLRC4 :1;
unsigned SLRC5 :1;
unsigned SLRC6 :1;
unsigned SLRC7 :1;
};
} SLRCONCbits_t;
extern volatile SLRCONCbits_t SLRCONCbits __at(0x30E);

# 6338
extern volatile unsigned char INLVLA __at(0x38C);

asm("INLVLA equ 038Ch");


typedef union {
struct {
unsigned INLVLA0 :1;
unsigned INLVLA1 :1;
unsigned INLVLA2 :1;
unsigned INLVLA3 :1;
unsigned INLVLA4 :1;
unsigned INLVLA5 :1;
};
} INLVLAbits_t;
extern volatile INLVLAbits_t INLVLAbits __at(0x38C);

# 6388
extern volatile unsigned char INLVLB __at(0x38D);

asm("INLVLB equ 038Dh");


typedef union {
struct {
unsigned :4;
unsigned INLVLB4 :1;
unsigned INLVLB5 :1;
unsigned INLVLB6 :1;
unsigned INLVLB7 :1;
};
} INLVLBbits_t;
extern volatile INLVLBbits_t INLVLBbits __at(0x38D);

# 6427
extern volatile unsigned char INLVLC __at(0x38E);

asm("INLVLC equ 038Eh");


typedef union {
struct {
unsigned INLVLC0 :1;
unsigned INLVLC1 :1;
unsigned INLVLC2 :1;
unsigned INLVLC3 :1;
unsigned INLVLC4 :1;
unsigned INLVLC5 :1;
unsigned INLVLC6 :1;
unsigned INLVLC7 :1;
};
} INLVLCbits_t;
extern volatile INLVLCbits_t INLVLCbits __at(0x38E);

# 6489
extern volatile unsigned char IOCAP __at(0x391);

asm("IOCAP equ 0391h");


typedef union {
struct {
unsigned IOCAP0 :1;
unsigned IOCAP1 :1;
unsigned IOCAP2 :1;
unsigned IOCAP3 :1;
unsigned IOCAP4 :1;
unsigned IOCAP5 :1;
};
} IOCAPbits_t;
extern volatile IOCAPbits_t IOCAPbits __at(0x391);

# 6539
extern volatile unsigned char IOCAN __at(0x392);

asm("IOCAN equ 0392h");


typedef union {
struct {
unsigned IOCAN0 :1;
unsigned IOCAN1 :1;
unsigned IOCAN2 :1;
unsigned IOCAN3 :1;
unsigned IOCAN4 :1;
unsigned IOCAN5 :1;
};
} IOCANbits_t;
extern volatile IOCANbits_t IOCANbits __at(0x392);

# 6589
extern volatile unsigned char IOCAF __at(0x393);

asm("IOCAF equ 0393h");


typedef union {
struct {
unsigned IOCAF0 :1;
unsigned IOCAF1 :1;
unsigned IOCAF2 :1;
unsigned IOCAF3 :1;
unsigned IOCAF4 :1;
unsigned IOCAF5 :1;
};
} IOCAFbits_t;
extern volatile IOCAFbits_t IOCAFbits __at(0x393);

# 6639
extern volatile unsigned char IOCBP __at(0x394);

asm("IOCBP equ 0394h");


typedef union {
struct {
unsigned :4;
unsigned IOCBP4 :1;
unsigned IOCBP5 :1;
unsigned IOCBP6 :1;
unsigned IOCBP7 :1;
};
} IOCBPbits_t;
extern volatile IOCBPbits_t IOCBPbits __at(0x394);

# 6678
extern volatile unsigned char IOCBN __at(0x395);

asm("IOCBN equ 0395h");


typedef union {
struct {
unsigned :4;
unsigned IOCBN4 :1;
unsigned IOCBN5 :1;
unsigned IOCBN6 :1;
unsigned IOCBN7 :1;
};
} IOCBNbits_t;
extern volatile IOCBNbits_t IOCBNbits __at(0x395);

# 6717
extern volatile unsigned char IOCBF __at(0x396);

asm("IOCBF equ 0396h");


typedef union {
struct {
unsigned :4;
unsigned IOCBF4 :1;
unsigned IOCBF5 :1;
unsigned IOCBF6 :1;
unsigned IOCBF7 :1;
};
} IOCBFbits_t;
extern volatile IOCBFbits_t IOCBFbits __at(0x396);

# 6756
extern volatile unsigned char IOCCP __at(0x397);

asm("IOCCP equ 0397h");


typedef union {
struct {
unsigned IOCCP0 :1;
unsigned IOCCP1 :1;
unsigned IOCCP2 :1;
unsigned IOCCP3 :1;
unsigned IOCCP4 :1;
unsigned IOCCP5 :1;
unsigned IOCCP6 :1;
unsigned IOCCP7 :1;
};
} IOCCPbits_t;
extern volatile IOCCPbits_t IOCCPbits __at(0x397);

# 6818
extern volatile unsigned char IOCCN __at(0x398);

asm("IOCCN equ 0398h");


typedef union {
struct {
unsigned IOCCN0 :1;
unsigned IOCCN1 :1;
unsigned IOCCN2 :1;
unsigned IOCCN3 :1;
unsigned IOCCN4 :1;
unsigned IOCCN5 :1;
unsigned IOCCN6 :1;
unsigned IOCCN7 :1;
};
} IOCCNbits_t;
extern volatile IOCCNbits_t IOCCNbits __at(0x398);

# 6880
extern volatile unsigned char IOCCF __at(0x399);

asm("IOCCF equ 0399h");


typedef union {
struct {
unsigned IOCCF0 :1;
unsigned IOCCF1 :1;
unsigned IOCCF2 :1;
unsigned IOCCF3 :1;
unsigned IOCCF4 :1;
unsigned IOCCF5 :1;
unsigned IOCCF6 :1;
unsigned IOCCF7 :1;
};
} IOCCFbits_t;
extern volatile IOCCFbits_t IOCCFbits __at(0x399);

# 6942
extern volatile unsigned char TMR4 __at(0x415);

asm("TMR4 equ 0415h");


typedef union {
struct {
unsigned TMR4 :8;
};
} TMR4bits_t;
extern volatile TMR4bits_t TMR4bits __at(0x415);

# 6962
extern volatile unsigned char PR4 __at(0x416);

asm("PR4 equ 0416h");


typedef union {
struct {
unsigned PR4 :8;
};
} PR4bits_t;
extern volatile PR4bits_t PR4bits __at(0x416);

# 6982
extern volatile unsigned char T4CON __at(0x417);

asm("T4CON equ 0417h");


typedef union {
struct {
unsigned T4CKPS :2;
unsigned TMR4ON :1;
unsigned T4OUTPS :4;
};
struct {
unsigned T4CKPS0 :1;
unsigned T4CKPS1 :1;
unsigned :1;
unsigned T4OUTPS0 :1;
unsigned T4OUTPS1 :1;
unsigned T4OUTPS2 :1;
unsigned T4OUTPS3 :1;
};
} T4CONbits_t;
extern volatile T4CONbits_t T4CONbits __at(0x417);

# 7053
extern volatile unsigned char TMR6 __at(0x41C);

asm("TMR6 equ 041Ch");


typedef union {
struct {
unsigned TMR6 :8;
};
} TMR6bits_t;
extern volatile TMR6bits_t TMR6bits __at(0x41C);

# 7073
extern volatile unsigned char PR6 __at(0x41D);

asm("PR6 equ 041Dh");


typedef union {
struct {
unsigned PR6 :8;
};
} PR6bits_t;
extern volatile PR6bits_t PR6bits __at(0x41D);

# 7093
extern volatile unsigned char T6CON __at(0x41E);

asm("T6CON equ 041Eh");


typedef union {
struct {
unsigned T6CKPS :2;
unsigned TMR6ON :1;
unsigned T6OUTPS :4;
};
struct {
unsigned T6CKPS0 :1;
unsigned T6CKPS1 :1;
unsigned :1;
unsigned T6OUTPS0 :1;
unsigned T6OUTPS1 :1;
unsigned T6OUTPS2 :1;
unsigned T6OUTPS3 :1;
};
} T6CONbits_t;
extern volatile T6CONbits_t T6CONbits __at(0x41E);

# 7164
extern volatile unsigned char OPA1CON __at(0x511);

asm("OPA1CON equ 0511h");


typedef union {
struct {
unsigned OPA1PCH :2;
unsigned :2;
unsigned OPA1UG :1;
unsigned :1;
unsigned OPA1SP :1;
unsigned OPA1EN :1;
};
struct {
unsigned OPA1PCH0 :1;
unsigned OPA1PCH1 :1;
};
} OPA1CONbits_t;
extern volatile OPA1CONbits_t OPA1CONbits __at(0x511);

# 7218
extern volatile unsigned char OPA2CON __at(0x515);

asm("OPA2CON equ 0515h");


typedef union {
struct {
unsigned OPA2PCH :2;
unsigned :2;
unsigned OPA2UG :1;
unsigned :1;
unsigned OPA2SP :1;
unsigned OPA2EN :1;
};
struct {
unsigned OPA2PCH0 :1;
unsigned OPA2PCH1 :1;
};
} OPA2CONbits_t;
extern volatile OPA2CONbits_t OPA2CONbits __at(0x515);

# 7272
extern volatile unsigned char PWM3DCL __at(0x617);

asm("PWM3DCL equ 0617h");


typedef union {
struct {
unsigned :6;
unsigned PWM3DCL :2;
};
struct {
unsigned :6;
unsigned PWM3DCL0 :1;
unsigned PWM3DCL1 :1;
};
} PWM3DCLbits_t;
extern volatile PWM3DCLbits_t PWM3DCLbits __at(0x617);

# 7308
extern volatile unsigned char PWM3DCH __at(0x618);

asm("PWM3DCH equ 0618h");


typedef union {
struct {
unsigned PWM3DCH :8;
};
struct {
unsigned PWM3DCH0 :1;
unsigned PWM3DCH1 :1;
unsigned PWM3DCH2 :1;
unsigned PWM3DCH3 :1;
unsigned PWM3DCH4 :1;
unsigned PWM3DCH5 :1;
unsigned PWM3DCH6 :1;
unsigned PWM3DCH7 :1;
};
} PWM3DCHbits_t;
extern volatile PWM3DCHbits_t PWM3DCHbits __at(0x618);

# 7378
extern volatile unsigned char PWM3CON __at(0x619);

asm("PWM3CON equ 0619h");


extern volatile unsigned char PWM3CON0 __at(0x619);

asm("PWM3CON0 equ 0619h");


typedef union {
struct {
unsigned :4;
unsigned PWM3POL :1;
unsigned PWM3OUT :1;
unsigned :1;
unsigned PWM3EN :1;
};
} PWM3CONbits_t;
extern volatile PWM3CONbits_t PWM3CONbits __at(0x619);

# 7415
typedef union {
struct {
unsigned :4;
unsigned PWM3POL :1;
unsigned PWM3OUT :1;
unsigned :1;
unsigned PWM3EN :1;
};
} PWM3CON0bits_t;
extern volatile PWM3CON0bits_t PWM3CON0bits __at(0x619);

# 7444
extern volatile unsigned char PWM4DCL __at(0x61A);

asm("PWM4DCL equ 061Ah");


typedef union {
struct {
unsigned :6;
unsigned PWM4DCL :2;
};
struct {
unsigned :6;
unsigned PWM4DCL0 :1;
unsigned PWM4DCL1 :1;
};
} PWM4DCLbits_t;
extern volatile PWM4DCLbits_t PWM4DCLbits __at(0x61A);

# 7480
extern volatile unsigned char PWM4DCH __at(0x61B);

asm("PWM4DCH equ 061Bh");


typedef union {
struct {
unsigned PWM4DCH :8;
};
struct {
unsigned PWM4DCH0 :1;
unsigned PWM4DCH1 :1;
unsigned PWM4DCH2 :1;
unsigned PWM4DCH3 :1;
unsigned PWM4DCH4 :1;
unsigned PWM4DCH5 :1;
unsigned PWM4DCH6 :1;
unsigned PWM4DCH7 :1;
};
} PWM4DCHbits_t;
extern volatile PWM4DCHbits_t PWM4DCHbits __at(0x61B);

# 7550
extern volatile unsigned char PWM4CON __at(0x61C);

asm("PWM4CON equ 061Ch");


extern volatile unsigned char PWM4CON0 __at(0x61C);

asm("PWM4CON0 equ 061Ch");


typedef union {
struct {
unsigned :4;
unsigned PWM4POL :1;
unsigned PWM4OUT :1;
unsigned :1;
unsigned PWM4EN :1;
};
} PWM4CONbits_t;
extern volatile PWM4CONbits_t PWM4CONbits __at(0x61C);

# 7587
typedef union {
struct {
unsigned :4;
unsigned PWM4POL :1;
unsigned PWM4OUT :1;
unsigned :1;
unsigned PWM4EN :1;
};
} PWM4CON0bits_t;
extern volatile PWM4CON0bits_t PWM4CON0bits __at(0x61C);

# 7616
extern volatile unsigned char COG1PHR __at(0x691);

asm("COG1PHR equ 0691h");


typedef union {
struct {
unsigned G1PHR :6;
};
struct {
unsigned G1PHR0 :1;
unsigned G1PHR1 :1;
unsigned G1PHR2 :1;
unsigned G1PHR3 :1;
unsigned G1PHR4 :1;
unsigned G1PHR5 :1;
};
} COG1PHRbits_t;
extern volatile COG1PHRbits_t COG1PHRbits __at(0x691);

# 7674
extern volatile unsigned char COG1PHF __at(0x692);

asm("COG1PHF equ 0692h");


typedef union {
struct {
unsigned G1PHF :6;
};
struct {
unsigned G1PHF0 :1;
unsigned G1PHF1 :1;
unsigned G1PHF2 :1;
unsigned G1PHF3 :1;
unsigned G1PHF4 :1;
unsigned G1PHF5 :1;
};
} COG1PHFbits_t;
extern volatile COG1PHFbits_t COG1PHFbits __at(0x692);

# 7732
extern volatile unsigned char COG1BLKR __at(0x693);

asm("COG1BLKR equ 0693h");


typedef union {
struct {
unsigned G1BLKR :6;
};
struct {
unsigned G1BLKR0 :1;
unsigned G1BLKR1 :1;
unsigned G1BLKR2 :1;
unsigned G1BLKR3 :1;
unsigned G1BLKR4 :1;
unsigned G1BLKR5 :1;
};
} COG1BLKRbits_t;
extern volatile COG1BLKRbits_t COG1BLKRbits __at(0x693);

# 7790
extern volatile unsigned char COG1BLKF __at(0x694);

asm("COG1BLKF equ 0694h");


typedef union {
struct {
unsigned G1BLKF :6;
};
struct {
unsigned G1BLKF0 :1;
unsigned G1BLKF1 :1;
unsigned G1BLKF2 :1;
unsigned G1BLKF3 :1;
unsigned G1BLKF4 :1;
unsigned G1BLKF5 :1;
};
} COG1BLKFbits_t;
extern volatile COG1BLKFbits_t COG1BLKFbits __at(0x694);

# 7848
extern volatile unsigned char COG1DBR __at(0x695);

asm("COG1DBR equ 0695h");


typedef union {
struct {
unsigned G1DBR :6;
};
struct {
unsigned G1DBR0 :1;
unsigned G1DBR1 :1;
unsigned G1DBR2 :1;
unsigned G1DBR3 :1;
unsigned G1DBR4 :1;
unsigned G1DBR5 :1;
};
} COG1DBRbits_t;
extern volatile COG1DBRbits_t COG1DBRbits __at(0x695);

# 7906
extern volatile unsigned char COG1DBF __at(0x696);

asm("COG1DBF equ 0696h");


typedef union {
struct {
unsigned G1DBF :6;
};
struct {
unsigned G1DBF0 :1;
unsigned G1DBF1 :1;
unsigned G1DBF2 :1;
unsigned G1DBF3 :1;
unsigned G1DBF4 :1;
unsigned G1DBF5 :1;
};
} COG1DBFbits_t;
extern volatile COG1DBFbits_t COG1DBFbits __at(0x696);

# 7964
extern volatile unsigned char COG1CON0 __at(0x697);

asm("COG1CON0 equ 0697h");


typedef union {
struct {
unsigned G1MD :3;
unsigned G1CS :2;
unsigned :1;
unsigned G1LD :1;
unsigned G1EN :1;
};
struct {
unsigned G1MD0 :1;
unsigned G1MD1 :1;
unsigned G1MD2 :1;
unsigned G1CS0 :1;
unsigned G1CS1 :1;
};
} COG1CON0bits_t;
extern volatile COG1CON0bits_t COG1CON0bits __at(0x697);

# 8035
extern volatile unsigned char COG1CON1 __at(0x698);

asm("COG1CON1 equ 0698h");


typedef union {
struct {
unsigned G1POLA :1;
unsigned G1POLB :1;
unsigned G1POLC :1;
unsigned G1POLD :1;
unsigned :2;
unsigned G1FDBS :1;
unsigned G1RDBS :1;
};
} COG1CON1bits_t;
extern volatile COG1CON1bits_t COG1CON1bits __at(0x698);

# 8086
extern volatile unsigned char COG1RIS __at(0x699);

asm("COG1RIS equ 0699h");


typedef union {
struct {
unsigned G1RIS0 :1;
unsigned G1RIS1 :1;
unsigned G1RIS2 :1;
unsigned G1RIS3 :1;
unsigned G1RIS4 :1;
unsigned G1RIS5 :1;
unsigned G1RIS6 :1;
};
} COG1RISbits_t;
extern volatile COG1RISbits_t COG1RISbits __at(0x699);

# 8142
extern volatile unsigned char COG1RSIM __at(0x69A);

asm("COG1RSIM equ 069Ah");


typedef union {
struct {
unsigned G1RSIM0 :1;
unsigned G1RSIM1 :1;
unsigned G1RSIM2 :1;
unsigned G1RSIM3 :1;
unsigned G1RSIM4 :1;
unsigned G1RSIM5 :1;
unsigned G1RSIM6 :1;
};
} COG1RSIMbits_t;
extern volatile COG1RSIMbits_t COG1RSIMbits __at(0x69A);

# 8198
extern volatile unsigned char COG1FIS __at(0x69B);

asm("COG1FIS equ 069Bh");


typedef union {
struct {
unsigned G1FIS0 :1;
unsigned G1FIS1 :1;
unsigned G1FIS2 :1;
unsigned G1FIS3 :1;
unsigned G1FIS4 :1;
unsigned G1FIS5 :1;
unsigned G1FIS6 :1;
};
} COG1FISbits_t;
extern volatile COG1FISbits_t COG1FISbits __at(0x69B);

# 8254
extern volatile unsigned char COG1FSIM __at(0x69C);

asm("COG1FSIM equ 069Ch");


typedef union {
struct {
unsigned G1FSIM0 :1;
unsigned G1FSIM1 :1;
unsigned G1FSIM2 :1;
unsigned G1FSIM3 :1;
unsigned G1FSIM4 :1;
unsigned G1FSIM5 :1;
unsigned G1FSIM6 :1;
};
} COG1FSIMbits_t;
extern volatile COG1FSIMbits_t COG1FSIMbits __at(0x69C);

# 8310
extern volatile unsigned char COG1ASD0 __at(0x69D);

asm("COG1ASD0 equ 069Dh");


typedef union {
struct {
unsigned :2;
unsigned G1ASDAC :2;
unsigned G1ASDBD :2;
unsigned G1ARSEN :1;
unsigned G1ASE :1;
};
struct {
unsigned :2;
unsigned G1ASDAC0 :1;
unsigned G1ASDAC1 :1;
unsigned G1ASDBD0 :1;
unsigned G1ASDBD1 :1;
};
} COG1ASD0bits_t;
extern volatile COG1ASD0bits_t COG1ASD0bits __at(0x69D);

# 8376
extern volatile unsigned char COG1ASD1 __at(0x69E);

asm("COG1ASD1 equ 069Eh");


typedef union {
struct {
unsigned G1AS0E :1;
unsigned G1AS1E :1;
unsigned G1AS2E :1;
unsigned G1AS3E :1;
};
} COG1ASD1bits_t;
extern volatile COG1ASD1bits_t COG1ASD1bits __at(0x69E);

# 8414
extern volatile unsigned char COG1STR __at(0x69F);

asm("COG1STR equ 069Fh");


typedef union {
struct {
unsigned G1STRA :1;
unsigned G1STRB :1;
unsigned G1STRC :1;
unsigned G1STRD :1;
unsigned G1SDATA :1;
unsigned G1SDATB :1;
unsigned G1SDATC :1;
unsigned G1SDATD :1;
};
} COG1STRbits_t;
extern volatile COG1STRbits_t COG1STRbits __at(0x69F);

# 8476
extern volatile unsigned char PPSLOCK __at(0xE0F);

asm("PPSLOCK equ 0E0Fh");


typedef union {
struct {
unsigned PPSLOCKED :1;
};
} PPSLOCKbits_t;
extern volatile PPSLOCKbits_t PPSLOCKbits __at(0xE0F);

# 8496
extern volatile unsigned char INTPPS __at(0xE10);

asm("INTPPS equ 0E10h");


typedef union {
struct {
unsigned INTPPS :5;
};
} INTPPSbits_t;
extern volatile INTPPSbits_t INTPPSbits __at(0xE10);

# 8516
extern volatile unsigned char T0CKIPPS __at(0xE11);

asm("T0CKIPPS equ 0E11h");


typedef union {
struct {
unsigned T0CKIPPS :5;
};
} T0CKIPPSbits_t;
extern volatile T0CKIPPSbits_t T0CKIPPSbits __at(0xE11);

# 8536
extern volatile unsigned char T1CKIPPS __at(0xE12);

asm("T1CKIPPS equ 0E12h");


typedef union {
struct {
unsigned T1CKIPPS :5;
};
} T1CKIPPSbits_t;
extern volatile T1CKIPPSbits_t T1CKIPPSbits __at(0xE12);

# 8556
extern volatile unsigned char T1GPPS __at(0xE13);

asm("T1GPPS equ 0E13h");


typedef union {
struct {
unsigned T1GPPS :5;
};
} T1GPPSbits_t;
extern volatile T1GPPSbits_t T1GPPSbits __at(0xE13);

# 8576
extern volatile unsigned char CCP1PPS __at(0xE14);

asm("CCP1PPS equ 0E14h");


typedef union {
struct {
unsigned CCP1PPS :5;
};
} CCP1PPSbits_t;
extern volatile CCP1PPSbits_t CCP1PPSbits __at(0xE14);

# 8596
extern volatile unsigned char CCP2PPS __at(0xE15);

asm("CCP2PPS equ 0E15h");


typedef union {
struct {
unsigned CCP2PPS :5;
};
} CCP2PPSbits_t;
extern volatile CCP2PPSbits_t CCP2PPSbits __at(0xE15);

# 8616
extern volatile unsigned char COGINPPS __at(0xE17);

asm("COGINPPS equ 0E17h");


typedef union {
struct {
unsigned COGINPPS :5;
};
} COGINPPSbits_t;
extern volatile COGINPPSbits_t COGINPPSbits __at(0xE17);

# 8636
extern volatile unsigned char SSPCLKPPS __at(0xE20);

asm("SSPCLKPPS equ 0E20h");


typedef union {
struct {
unsigned SSPCLKPPS :5;
};
} SSPCLKPPSbits_t;
extern volatile SSPCLKPPSbits_t SSPCLKPPSbits __at(0xE20);

# 8656
extern volatile unsigned char SSPDATPPS __at(0xE21);

asm("SSPDATPPS equ 0E21h");


typedef union {
struct {
unsigned SSPDATPPS :5;
};
} SSPDATPPSbits_t;
extern volatile SSPDATPPSbits_t SSPDATPPSbits __at(0xE21);

# 8676
extern volatile unsigned char SSPSSPPS __at(0xE22);

asm("SSPSSPPS equ 0E22h");


typedef union {
struct {
unsigned SSPSSPPS :5;
};
} SSPSSPPSbits_t;
extern volatile SSPSSPPSbits_t SSPSSPPSbits __at(0xE22);

# 8696
extern volatile unsigned char RXPPS __at(0xE24);

asm("RXPPS equ 0E24h");


typedef union {
struct {
unsigned RXPPS :5;
};
} RXPPSbits_t;
extern volatile RXPPSbits_t RXPPSbits __at(0xE24);

# 8716
extern volatile unsigned char CKPPS __at(0xE25);

asm("CKPPS equ 0E25h");


typedef union {
struct {
unsigned CKPPS :5;
};
} CKPPSbits_t;
extern volatile CKPPSbits_t CKPPSbits __at(0xE25);

# 8736
extern volatile unsigned char CLCIN0PPS __at(0xE28);

asm("CLCIN0PPS equ 0E28h");


typedef union {
struct {
unsigned CLCIN0PPS :5;
};
} CLCIN0PPSbits_t;
extern volatile CLCIN0PPSbits_t CLCIN0PPSbits __at(0xE28);

# 8756
extern volatile unsigned char CLCIN1PPS __at(0xE29);

asm("CLCIN1PPS equ 0E29h");


typedef union {
struct {
unsigned CLCIN1PPS :5;
};
} CLCIN1PPSbits_t;
extern volatile CLCIN1PPSbits_t CLCIN1PPSbits __at(0xE29);

# 8776
extern volatile unsigned char CLCIN2PPS __at(0xE2A);

asm("CLCIN2PPS equ 0E2Ah");


typedef union {
struct {
unsigned CLCIN2PPS :5;
};
} CLCIN2PPSbits_t;
extern volatile CLCIN2PPSbits_t CLCIN2PPSbits __at(0xE2A);

# 8796
extern volatile unsigned char CLCIN3PPS __at(0xE2B);

asm("CLCIN3PPS equ 0E2Bh");


typedef union {
struct {
unsigned CLCIN3PPS :5;
};
} CLCIN3PPSbits_t;
extern volatile CLCIN3PPSbits_t CLCIN3PPSbits __at(0xE2B);

# 8816
extern volatile unsigned char RA0PPS __at(0xE90);

asm("RA0PPS equ 0E90h");


typedef union {
struct {
unsigned RA0PPS :5;
};
} RA0PPSbits_t;
extern volatile RA0PPSbits_t RA0PPSbits __at(0xE90);

# 8836
extern volatile unsigned char RA1PPS __at(0xE91);

asm("RA1PPS equ 0E91h");


typedef union {
struct {
unsigned RA1PPS :5;
};
} RA1PPSbits_t;
extern volatile RA1PPSbits_t RA1PPSbits __at(0xE91);

# 8856
extern volatile unsigned char RA2PPS __at(0xE92);

asm("RA2PPS equ 0E92h");


typedef union {
struct {
unsigned RA2PPS :5;
};
} RA2PPSbits_t;
extern volatile RA2PPSbits_t RA2PPSbits __at(0xE92);

# 8876
extern volatile unsigned char RA4PPS __at(0xE94);

asm("RA4PPS equ 0E94h");


typedef union {
struct {
unsigned RA4PPS :5;
};
} RA4PPSbits_t;
extern volatile RA4PPSbits_t RA4PPSbits __at(0xE94);

# 8896
extern volatile unsigned char RA5PPS __at(0xE95);

asm("RA5PPS equ 0E95h");


typedef union {
struct {
unsigned RA5PPS :5;
};
} RA5PPSbits_t;
extern volatile RA5PPSbits_t RA5PPSbits __at(0xE95);

# 8916
extern volatile unsigned char RB4PPS __at(0xE9C);

asm("RB4PPS equ 0E9Ch");


typedef union {
struct {
unsigned RB4PPS :5;
};
} RB4PPSbits_t;
extern volatile RB4PPSbits_t RB4PPSbits __at(0xE9C);

# 8936
extern volatile unsigned char RB5PPS __at(0xE9D);

asm("RB5PPS equ 0E9Dh");


typedef union {
struct {
unsigned RB5PPS :5;
};
} RB5PPSbits_t;
extern volatile RB5PPSbits_t RB5PPSbits __at(0xE9D);

# 8956
extern volatile unsigned char RB6PPS __at(0xE9E);

asm("RB6PPS equ 0E9Eh");


typedef union {
struct {
unsigned RB6PPS :5;
};
} RB6PPSbits_t;
extern volatile RB6PPSbits_t RB6PPSbits __at(0xE9E);

# 8976
extern volatile unsigned char RB7PPS __at(0xE9F);

asm("RB7PPS equ 0E9Fh");


typedef union {
struct {
unsigned RB7PPS :5;
};
} RB7PPSbits_t;
extern volatile RB7PPSbits_t RB7PPSbits __at(0xE9F);

# 8996
extern volatile unsigned char RC0PPS __at(0xEA0);

asm("RC0PPS equ 0EA0h");


typedef union {
struct {
unsigned RC0PPS :5;
};
} RC0PPSbits_t;
extern volatile RC0PPSbits_t RC0PPSbits __at(0xEA0);

# 9016
extern volatile unsigned char RC1PPS __at(0xEA1);

asm("RC1PPS equ 0EA1h");


typedef union {
struct {
unsigned RC1PPS :5;
};
} RC1PPSbits_t;
extern volatile RC1PPSbits_t RC1PPSbits __at(0xEA1);

# 9036
extern volatile unsigned char RC2PPS __at(0xEA2);

asm("RC2PPS equ 0EA2h");


typedef union {
struct {
unsigned RC2PPS :5;
};
} RC2PPSbits_t;
extern volatile RC2PPSbits_t RC2PPSbits __at(0xEA2);

# 9056
extern volatile unsigned char RC3PPS __at(0xEA3);

asm("RC3PPS equ 0EA3h");


typedef union {
struct {
unsigned RC3PPS :5;
};
} RC3PPSbits_t;
extern volatile RC3PPSbits_t RC3PPSbits __at(0xEA3);

# 9076
extern volatile unsigned char RC4PPS __at(0xEA4);

asm("RC4PPS equ 0EA4h");


typedef union {
struct {
unsigned RC4PPS :5;
};
} RC4PPSbits_t;
extern volatile RC4PPSbits_t RC4PPSbits __at(0xEA4);

# 9096
extern volatile unsigned char RC5PPS __at(0xEA5);

asm("RC5PPS equ 0EA5h");


typedef union {
struct {
unsigned RC5PPS :5;
};
} RC5PPSbits_t;
extern volatile RC5PPSbits_t RC5PPSbits __at(0xEA5);

# 9116
extern volatile unsigned char RC6PPS __at(0xEA6);

asm("RC6PPS equ 0EA6h");


typedef union {
struct {
unsigned RC6PPS :5;
};
} RC6PPSbits_t;
extern volatile RC6PPSbits_t RC6PPSbits __at(0xEA6);

# 9136
extern volatile unsigned char RC7PPS __at(0xEA7);

asm("RC7PPS equ 0EA7h");


typedef union {
struct {
unsigned RC7PPS :5;
};
} RC7PPSbits_t;
extern volatile RC7PPSbits_t RC7PPSbits __at(0xEA7);

# 9156
extern volatile unsigned char CLCDATA __at(0xF0F);

asm("CLCDATA equ 0F0Fh");


typedef union {
struct {
unsigned MCLC1OUT :1;
unsigned MCLC2OUT :1;
unsigned MCLC3OUT :1;
};
} CLCDATAbits_t;
extern volatile CLCDATAbits_t CLCDATAbits __at(0xF0F);

# 9188
extern volatile unsigned char CLC1CON __at(0xF10);

asm("CLC1CON equ 0F10h");


typedef union {
struct {
unsigned LC1MODE :3;
unsigned LC1INTN :1;
unsigned LC1INTP :1;
unsigned LC1OUT :1;
unsigned :1;
unsigned LC1EN :1;
};
struct {
unsigned LC1MODE0 :1;
unsigned LC1MODE1 :1;
unsigned LC1MODE2 :1;
};
struct {
unsigned MODE :3;
unsigned INTN :1;
unsigned INTP :1;
unsigned OUT :1;
unsigned :1;
unsigned EN :1;
};
struct {
unsigned MODE0 :1;
unsigned MODE1 :1;
unsigned MODE2 :1;
};
} CLC1CONbits_t;
extern volatile CLC1CONbits_t CLC1CONbits __at(0xF10);

# 9306
extern volatile unsigned char CLC1POL __at(0xF11);

asm("CLC1POL equ 0F11h");


typedef union {
struct {
unsigned LC1G1POL :1;
unsigned LC1G2POL :1;
unsigned LC1G3POL :1;
unsigned LC1G4POL :1;
unsigned :3;
unsigned LC1POL :1;
};
struct {
unsigned G1POL :1;
unsigned G2POL :1;
unsigned G3POL :1;
unsigned G4POL :1;
unsigned :3;
unsigned POL :1;
};
} CLC1POLbits_t;
extern volatile CLC1POLbits_t CLC1POLbits __at(0xF11);

# 9384
extern volatile unsigned char CLC1SEL0 __at(0xF12);

asm("CLC1SEL0 equ 0F12h");


typedef union {
struct {
unsigned LC1D1S0 :1;
unsigned LC1D1S1 :1;
unsigned LC1D1S2 :1;
unsigned LC1D1S3 :1;
unsigned LC1D1S4 :1;
};
struct {
unsigned LC1D1S :8;
};
struct {
unsigned D1S :8;
};
struct {
unsigned D1S0 :1;
unsigned D1S1 :1;
unsigned D1S2 :1;
unsigned D1S3 :1;
unsigned D1S4 :1;
};
} CLC1SEL0bits_t;
extern volatile CLC1SEL0bits_t CLC1SEL0bits __at(0xF12);

# 9476
extern volatile unsigned char CLC1SEL1 __at(0xF13);

asm("CLC1SEL1 equ 0F13h");


typedef union {
struct {
unsigned LC1D2S0 :1;
unsigned LC1D2S1 :1;
unsigned LC1D2S2 :1;
unsigned LC1D2S3 :1;
unsigned LC1D2S4 :1;
};
struct {
unsigned LC1D2S :8;
};
struct {
unsigned D2S :8;
};
struct {
unsigned D2S0 :1;
unsigned D2S1 :1;
unsigned D2S2 :1;
unsigned D2S3 :1;
unsigned D2S4 :1;
};
} CLC1SEL1bits_t;
extern volatile CLC1SEL1bits_t CLC1SEL1bits __at(0xF13);

# 9568
extern volatile unsigned char CLC1SEL2 __at(0xF14);

asm("CLC1SEL2 equ 0F14h");


typedef union {
struct {
unsigned LC1D3S0 :1;
unsigned LC1D3S1 :1;
unsigned LC1D3S2 :1;
unsigned LC1D3S3 :1;
unsigned LC1D3S4 :1;
};
struct {
unsigned LC1D3S :8;
};
struct {
unsigned D3S :8;
};
struct {
unsigned D3S0 :1;
unsigned D3S1 :1;
unsigned D3S2 :1;
unsigned D3S3 :1;
unsigned D3S4 :1;
};
} CLC1SEL2bits_t;
extern volatile CLC1SEL2bits_t CLC1SEL2bits __at(0xF14);

# 9660
extern volatile unsigned char CLC1SEL3 __at(0xF15);

asm("CLC1SEL3 equ 0F15h");


typedef union {
struct {
unsigned LC1D4S0 :1;
unsigned LC1D4S1 :1;
unsigned LC1D4S2 :1;
unsigned LC1D4S3 :1;
unsigned LC1D4S4 :1;
};
struct {
unsigned LC1D4S :8;
};
struct {
unsigned D4S :8;
};
struct {
unsigned D4S0 :1;
unsigned D4S1 :1;
unsigned D4S2 :1;
unsigned D4S3 :1;
unsigned D4S4 :1;
};
} CLC1SEL3bits_t;
extern volatile CLC1SEL3bits_t CLC1SEL3bits __at(0xF15);

# 9752
extern volatile unsigned char CLC1GLS0 __at(0xF16);

asm("CLC1GLS0 equ 0F16h");


typedef union {
struct {
unsigned LC1G1D1N :1;
unsigned LC1G1D1T :1;
unsigned LC1G1D2N :1;
unsigned LC1G1D2T :1;
unsigned LC1G1D3N :1;
unsigned LC1G1D3T :1;
unsigned LC1G1D4N :1;
unsigned LC1G1D4T :1;
};
struct {
unsigned D1N :1;
unsigned D1T :1;
unsigned D2N :1;
unsigned D2T :1;
unsigned D3N :1;
unsigned D3T :1;
unsigned D4N :1;
unsigned D4T :1;
};
} CLC1GLS0bits_t;
extern volatile CLC1GLS0bits_t CLC1GLS0bits __at(0xF16);

# 9864
extern volatile unsigned char CLC1GLS1 __at(0xF17);

asm("CLC1GLS1 equ 0F17h");


typedef union {
struct {
unsigned LC1G2D1N :1;
unsigned LC1G2D1T :1;
unsigned LC1G2D2N :1;
unsigned LC1G2D2T :1;
unsigned LC1G2D3N :1;
unsigned LC1G2D3T :1;
unsigned LC1G2D4N :1;
unsigned LC1G2D4T :1;
};
struct {
unsigned D1N :1;
unsigned D1T :1;
unsigned D2N :1;
unsigned D2T :1;
unsigned D3N :1;
unsigned D3T :1;
unsigned D4N :1;
unsigned D4T :1;
};
} CLC1GLS1bits_t;
extern volatile CLC1GLS1bits_t CLC1GLS1bits __at(0xF17);

# 9976
extern volatile unsigned char CLC1GLS2 __at(0xF18);

asm("CLC1GLS2 equ 0F18h");


typedef union {
struct {
unsigned LC1G3D1N :1;
unsigned LC1G3D1T :1;
unsigned LC1G3D2N :1;
unsigned LC1G3D2T :1;
unsigned LC1G3D3N :1;
unsigned LC1G3D3T :1;
unsigned LC1G3D4N :1;
unsigned LC1G3D4T :1;
};
struct {
unsigned D1N :1;
unsigned D1T :1;
unsigned D2N :1;
unsigned D2T :1;
unsigned D3N :1;
unsigned D3T :1;
unsigned D4N :1;
unsigned D4T :1;
};
} CLC1GLS2bits_t;
extern volatile CLC1GLS2bits_t CLC1GLS2bits __at(0xF18);

# 10088
extern volatile unsigned char CLC1GLS3 __at(0xF19);

asm("CLC1GLS3 equ 0F19h");


typedef union {
struct {
unsigned LC1G4D1N :1;
unsigned LC1G4D1T :1;
unsigned LC1G4D2N :1;
unsigned LC1G4D2T :1;
unsigned LC1G4D3N :1;
unsigned LC1G4D3T :1;
unsigned LC1G4D4N :1;
unsigned LC1G4D4T :1;
};
struct {
unsigned G4D1N :1;
unsigned G4D1T :1;
unsigned G4D2N :1;
unsigned G4D2T :1;
unsigned G4D3N :1;
unsigned G4D3T :1;
unsigned G4D4N :1;
unsigned G4D4T :1;
};
} CLC1GLS3bits_t;
extern volatile CLC1GLS3bits_t CLC1GLS3bits __at(0xF19);

# 10200
extern volatile unsigned char CLC2CON __at(0xF1A);

asm("CLC2CON equ 0F1Ah");


typedef union {
struct {
unsigned LC2MODE :3;
unsigned LC2INTN :1;
unsigned LC2INTP :1;
unsigned LC2OUT :1;
unsigned :1;
unsigned LC2EN :1;
};
struct {
unsigned LC2MODE0 :1;
unsigned LC2MODE1 :1;
unsigned LC2MODE2 :1;
};
struct {
unsigned MODE :3;
unsigned INTN :1;
unsigned INTP :1;
unsigned OUT :1;
unsigned :1;
unsigned EN :1;
};
struct {
unsigned MODE0 :1;
unsigned MODE1 :1;
unsigned MODE2 :1;
};
} CLC2CONbits_t;
extern volatile CLC2CONbits_t CLC2CONbits __at(0xF1A);

# 10318
extern volatile unsigned char CLC2POL __at(0xF1B);

asm("CLC2POL equ 0F1Bh");


typedef union {
struct {
unsigned LC2G1POL :1;
unsigned LC2G2POL :1;
unsigned LC2G3POL :1;
unsigned LC2G4POL :1;
unsigned :3;
unsigned LC2POL :1;
};
struct {
unsigned G1POL :1;
unsigned G2POL :1;
unsigned G3POL :1;
unsigned G4POL :1;
unsigned :3;
unsigned POL :1;
};
} CLC2POLbits_t;
extern volatile CLC2POLbits_t CLC2POLbits __at(0xF1B);

# 10396
extern volatile unsigned char CLC2SEL0 __at(0xF1C);

asm("CLC2SEL0 equ 0F1Ch");


typedef union {
struct {
unsigned LC2D1S0 :1;
unsigned LC2D1S1 :1;
unsigned LC2D1S2 :1;
unsigned LC2D1S3 :1;
unsigned LC2D1S4 :1;
};
struct {
unsigned LC2D1S :8;
};
struct {
unsigned D1S :8;
};
struct {
unsigned D1S0 :1;
unsigned D1S1 :1;
unsigned D1S2 :1;
unsigned D1S3 :1;
unsigned D1S4 :1;
};
} CLC2SEL0bits_t;
extern volatile CLC2SEL0bits_t CLC2SEL0bits __at(0xF1C);

# 10488
extern volatile unsigned char CLC2SEL1 __at(0xF1D);

asm("CLC2SEL1 equ 0F1Dh");


typedef union {
struct {
unsigned LC2D2S0 :1;
unsigned LC2D2S1 :1;
unsigned LC2D2S2 :1;
unsigned LC2D2S3 :1;
unsigned LC2D2S4 :1;
};
struct {
unsigned LC2D2S :8;
};
struct {
unsigned D2S :8;
};
struct {
unsigned D2S0 :1;
unsigned D2S1 :1;
unsigned D2S2 :1;
unsigned D2S3 :1;
unsigned D2S4 :1;
};
} CLC2SEL1bits_t;
extern volatile CLC2SEL1bits_t CLC2SEL1bits __at(0xF1D);

# 10580
extern volatile unsigned char CLC2SEL2 __at(0xF1E);

asm("CLC2SEL2 equ 0F1Eh");


typedef union {
struct {
unsigned LC2D3S0 :1;
unsigned LC2D3S1 :1;
unsigned LC2D3S2 :1;
unsigned LC2D3S3 :1;
unsigned LC2D3S4 :1;
};
struct {
unsigned LC2D3S :8;
};
struct {
unsigned D3S :8;
};
struct {
unsigned D3S0 :1;
unsigned D3S1 :1;
unsigned D3S2 :1;
unsigned D3S3 :1;
unsigned D3S4 :1;
};
} CLC2SEL2bits_t;
extern volatile CLC2SEL2bits_t CLC2SEL2bits __at(0xF1E);

# 10672
extern volatile unsigned char CLC2SEL3 __at(0xF1F);

asm("CLC2SEL3 equ 0F1Fh");


typedef union {
struct {
unsigned LC2D4S0 :1;
unsigned LC2D4S1 :1;
unsigned LC2D4S2 :1;
unsigned LC2D4S3 :1;
unsigned LC2D4S4 :1;
};
struct {
unsigned LC2D4S :8;
};
struct {
unsigned D4S :8;
};
struct {
unsigned D4S0 :1;
unsigned D4S1 :1;
unsigned D4S2 :1;
unsigned D4S3 :1;
unsigned D4S4 :1;
};
} CLC2SEL3bits_t;
extern volatile CLC2SEL3bits_t CLC2SEL3bits __at(0xF1F);

# 10764
extern volatile unsigned char CLC2GLS0 __at(0xF20);

asm("CLC2GLS0 equ 0F20h");


typedef union {
struct {
unsigned LC2G1D1N :1;
unsigned LC2G1D1T :1;
unsigned LC2G1D2N :1;
unsigned LC2G1D2T :1;
unsigned LC2G1D3N :1;
unsigned LC2G1D3T :1;
unsigned LC2G1D4N :1;
unsigned LC2G1D4T :1;
};
struct {
unsigned D1N :1;
unsigned D1T :1;
unsigned D2N :1;
unsigned D2T :1;
unsigned D3N :1;
unsigned D3T :1;
unsigned D4N :1;
unsigned D4T :1;
};
} CLC2GLS0bits_t;
extern volatile CLC2GLS0bits_t CLC2GLS0bits __at(0xF20);

# 10876
extern volatile unsigned char CLC2GLS1 __at(0xF21);

asm("CLC2GLS1 equ 0F21h");


typedef union {
struct {
unsigned LC2G2D1N :1;
unsigned LC2G2D1T :1;
unsigned LC2G2D2N :1;
unsigned LC2G2D2T :1;
unsigned LC2G2D3N :1;
unsigned LC2G2D3T :1;
unsigned LC2G2D4N :1;
unsigned LC2G2D4T :1;
};
struct {
unsigned D1N :1;
unsigned D1T :1;
unsigned D2N :1;
unsigned D2T :1;
unsigned D3N :1;
unsigned D3T :1;
unsigned D4N :1;
unsigned D4T :1;
};
} CLC2GLS1bits_t;
extern volatile CLC2GLS1bits_t CLC2GLS1bits __at(0xF21);

# 10988
extern volatile unsigned char CLC2GLS2 __at(0xF22);

asm("CLC2GLS2 equ 0F22h");


typedef union {
struct {
unsigned LC2G3D1N :1;
unsigned LC2G3D1T :1;
unsigned LC2G3D2N :1;
unsigned LC2G3D2T :1;
unsigned LC2G3D3N :1;
unsigned LC2G3D3T :1;
unsigned LC2G3D4N :1;
unsigned LC2G3D4T :1;
};
struct {
unsigned D1N :1;
unsigned D1T :1;
unsigned D2N :1;
unsigned D2T :1;
unsigned D3N :1;
unsigned D3T :1;
unsigned D4N :1;
unsigned D4T :1;
};
} CLC2GLS2bits_t;
extern volatile CLC2GLS2bits_t CLC2GLS2bits __at(0xF22);

# 11100
extern volatile unsigned char CLC2GLS3 __at(0xF23);

asm("CLC2GLS3 equ 0F23h");


typedef union {
struct {
unsigned LC2G4D1N :1;
unsigned LC2G4D1T :1;
unsigned LC2G4D2N :1;
unsigned LC2G4D2T :1;
unsigned LC2G4D3N :1;
unsigned LC2G4D3T :1;
unsigned LC2G4D4N :1;
unsigned LC2G4D4T :1;
};
struct {
unsigned G4D1N :1;
unsigned G4D1T :1;
unsigned G4D2N :1;
unsigned G4D2T :1;
unsigned G4D3N :1;
unsigned G4D3T :1;
unsigned G4D4N :1;
unsigned G4D4T :1;
};
} CLC2GLS3bits_t;
extern volatile CLC2GLS3bits_t CLC2GLS3bits __at(0xF23);

# 11212
extern volatile unsigned char CLC3CON __at(0xF24);

asm("CLC3CON equ 0F24h");


typedef union {
struct {
unsigned LC3MODE :3;
unsigned LC3INTN :1;
unsigned LC3INTP :1;
unsigned LC3OUT :1;
unsigned :1;
unsigned LC3EN :1;
};
struct {
unsigned LC3MODE0 :1;
unsigned LC3MODE1 :1;
unsigned LC3MODE2 :1;
};
struct {
unsigned MODE :3;
unsigned INTN :1;
unsigned INTP :1;
unsigned OUT :1;
unsigned :1;
unsigned EN :1;
};
struct {
unsigned MODE0 :1;
unsigned MODE1 :1;
unsigned MODE2 :1;
};
} CLC3CONbits_t;
extern volatile CLC3CONbits_t CLC3CONbits __at(0xF24);

# 11330
extern volatile unsigned char CLC3POL __at(0xF25);

asm("CLC3POL equ 0F25h");


typedef union {
struct {
unsigned LC3G1POL :1;
unsigned LC3G2POL :1;
unsigned LC3G3POL :1;
unsigned LC3G4POL :1;
unsigned :3;
unsigned LC3POL :1;
};
struct {
unsigned G1POL :1;
unsigned G2POL :1;
unsigned G3POL :1;
unsigned G4POL :1;
unsigned :3;
unsigned POL :1;
};
} CLC3POLbits_t;
extern volatile CLC3POLbits_t CLC3POLbits __at(0xF25);

# 11408
extern volatile unsigned char CLC3SEL0 __at(0xF26);

asm("CLC3SEL0 equ 0F26h");


typedef union {
struct {
unsigned LC3D1S0 :1;
unsigned LC3D1S1 :1;
unsigned LC3D1S2 :1;
unsigned LC3D1S3 :1;
unsigned LC3D1S4 :1;
};
struct {
unsigned LC3D1S :8;
};
struct {
unsigned D1S :8;
};
struct {
unsigned D1S0 :1;
unsigned D1S1 :1;
unsigned D1S2 :1;
unsigned D1S3 :1;
unsigned D1S4 :1;
};
} CLC3SEL0bits_t;
extern volatile CLC3SEL0bits_t CLC3SEL0bits __at(0xF26);

# 11500
extern volatile unsigned char CLC3SEL1 __at(0xF27);

asm("CLC3SEL1 equ 0F27h");


typedef union {
struct {
unsigned LC3D2S0 :1;
unsigned LC3D2S1 :1;
unsigned LC3D2S2 :1;
unsigned LC3D2S3 :1;
unsigned LC3D2S4 :1;
};
struct {
unsigned LC3D2S :8;
};
struct {
unsigned D2S :8;
};
struct {
unsigned D2S0 :1;
unsigned D2S1 :1;
unsigned D2S2 :1;
unsigned D2S3 :1;
unsigned D2S4 :1;
};
} CLC3SEL1bits_t;
extern volatile CLC3SEL1bits_t CLC3SEL1bits __at(0xF27);

# 11592
extern volatile unsigned char CLC3SEL2 __at(0xF28);

asm("CLC3SEL2 equ 0F28h");


typedef union {
struct {
unsigned LC3D3S0 :1;
unsigned LC3D3S1 :1;
unsigned LC3D3S2 :1;
unsigned LC3D3S3 :1;
unsigned LC3D3S4 :1;
};
struct {
unsigned LC3D3S :8;
};
struct {
unsigned D3S :8;
};
struct {
unsigned D3S0 :1;
unsigned D3S1 :1;
unsigned D3S2 :1;
unsigned D3S3 :1;
unsigned D3S4 :1;
};
} CLC3SEL2bits_t;
extern volatile CLC3SEL2bits_t CLC3SEL2bits __at(0xF28);

# 11684
extern volatile unsigned char CLC3SEL3 __at(0xF29);

asm("CLC3SEL3 equ 0F29h");


typedef union {
struct {
unsigned LC3D4S0 :1;
unsigned LC3D4S1 :1;
unsigned LC3D4S2 :1;
unsigned LC3D4S3 :1;
unsigned LC3D4S4 :1;
};
struct {
unsigned LC3D4S :8;
};
struct {
unsigned D4S :8;
};
struct {
unsigned D4S0 :1;
unsigned D4S1 :1;
unsigned D4S2 :1;
unsigned D4S3 :1;
unsigned D4S4 :1;
};
} CLC3SEL3bits_t;
extern volatile CLC3SEL3bits_t CLC3SEL3bits __at(0xF29);

# 11776
extern volatile unsigned char CLC3GLS0 __at(0xF2A);

asm("CLC3GLS0 equ 0F2Ah");


typedef union {
struct {
unsigned LC3G1D1N :1;
unsigned LC3G1D1T :1;
unsigned LC3G1D2N :1;
unsigned LC3G1D2T :1;
unsigned LC3G1D3N :1;
unsigned LC3G1D3T :1;
unsigned LC3G1D4N :1;
unsigned LC3G1D4T :1;
};
struct {
unsigned D1N :1;
unsigned D1T :1;
unsigned D2N :1;
unsigned D2T :1;
unsigned D3N :1;
unsigned D3T :1;
unsigned D4N :1;
unsigned D4T :1;
};
} CLC3GLS0bits_t;
extern volatile CLC3GLS0bits_t CLC3GLS0bits __at(0xF2A);

# 11888
extern volatile unsigned char CLC3GLS1 __at(0xF2B);

asm("CLC3GLS1 equ 0F2Bh");


typedef union {
struct {
unsigned LC3G2D1N :1;
unsigned LC3G2D1T :1;
unsigned LC3G2D2N :1;
unsigned LC3G2D2T :1;
unsigned LC3G2D3N :1;
unsigned LC3G2D3T :1;
unsigned LC3G2D4N :1;
unsigned LC3G2D4T :1;
};
struct {
unsigned D1N :1;
unsigned D1T :1;
unsigned D2N :1;
unsigned D2T :1;
unsigned D3N :1;
unsigned D3T :1;
unsigned D4N :1;
unsigned D4T :1;
};
} CLC3GLS1bits_t;
extern volatile CLC3GLS1bits_t CLC3GLS1bits __at(0xF2B);

# 12000
extern volatile unsigned char CLC3GLS2 __at(0xF2C);

asm("CLC3GLS2 equ 0F2Ch");


typedef union {
struct {
unsigned LC3G3D1N :1;
unsigned LC3G3D1T :1;
unsigned LC3G3D2N :1;
unsigned LC3G3D2T :1;
unsigned LC3G3D3N :1;
unsigned LC3G3D3T :1;
unsigned LC3G3D4N :1;
unsigned LC3G3D4T :1;
};
struct {
unsigned D1N :1;
unsigned D1T :1;
unsigned D2N :1;
unsigned D2T :1;
unsigned D3N :1;
unsigned D3T :1;
unsigned D4N :1;
unsigned D4T :1;
};
} CLC3GLS2bits_t;
extern volatile CLC3GLS2bits_t CLC3GLS2bits __at(0xF2C);

# 12112
extern volatile unsigned char CLC3GLS3 __at(0xF2D);

asm("CLC3GLS3 equ 0F2Dh");


typedef union {
struct {
unsigned LC3G4D1N :1;
unsigned LC3G4D1T :1;
unsigned LC3G4D2N :1;
unsigned LC3G4D2T :1;
unsigned LC3G4D3N :1;
unsigned LC3G4D3T :1;
unsigned LC3G4D4N :1;
unsigned LC3G4D4T :1;
};
struct {
unsigned G4D1N :1;
unsigned G4D1T :1;
unsigned G4D2N :1;
unsigned G4D2T :1;
unsigned G4D3N :1;
unsigned G4D3T :1;
unsigned G4D4N :1;
unsigned G4D4T :1;
};
} CLC3GLS3bits_t;
extern volatile CLC3GLS3bits_t CLC3GLS3bits __at(0xF2D);

# 12224
extern volatile unsigned char STATUS_SHAD __at(0xFE4);

asm("STATUS_SHAD equ 0FE4h");


typedef union {
struct {
unsigned C_SHAD :1;
unsigned DC_SHAD :1;
unsigned Z_SHAD :1;
};
} STATUS_SHADbits_t;
extern volatile STATUS_SHADbits_t STATUS_SHADbits __at(0xFE4);

# 12256
extern volatile unsigned char WREG_SHAD __at(0xFE5);

asm("WREG_SHAD equ 0FE5h");


typedef union {
struct {
unsigned WREG_SHAD :8;
};
} WREG_SHADbits_t;
extern volatile WREG_SHADbits_t WREG_SHADbits __at(0xFE5);

# 12276
extern volatile unsigned char BSR_SHAD __at(0xFE6);

asm("BSR_SHAD equ 0FE6h");


typedef union {
struct {
unsigned BSR_SHAD :5;
};
} BSR_SHADbits_t;
extern volatile BSR_SHADbits_t BSR_SHADbits __at(0xFE6);

# 12296
extern volatile unsigned char PCLATH_SHAD __at(0xFE7);

asm("PCLATH_SHAD equ 0FE7h");


typedef union {
struct {
unsigned PCLATH_SHAD :7;
};
} PCLATH_SHADbits_t;
extern volatile PCLATH_SHADbits_t PCLATH_SHADbits __at(0xFE7);

# 12316
extern volatile unsigned char FSR0L_SHAD __at(0xFE8);

asm("FSR0L_SHAD equ 0FE8h");


typedef union {
struct {
unsigned FSR0L_SHAD :8;
};
} FSR0L_SHADbits_t;
extern volatile FSR0L_SHADbits_t FSR0L_SHADbits __at(0xFE8);

# 12336
extern volatile unsigned char FSR0H_SHAD __at(0xFE9);

asm("FSR0H_SHAD equ 0FE9h");


typedef union {
struct {
unsigned FSR0H_SHAD :8;
};
} FSR0H_SHADbits_t;
extern volatile FSR0H_SHADbits_t FSR0H_SHADbits __at(0xFE9);

# 12356
extern volatile unsigned char FSR1L_SHAD __at(0xFEA);

asm("FSR1L_SHAD equ 0FEAh");


typedef union {
struct {
unsigned FSR1L_SHAD :8;
};
} FSR1L_SHADbits_t;
extern volatile FSR1L_SHADbits_t FSR1L_SHADbits __at(0xFEA);

# 12376
extern volatile unsigned char FSR1H_SHAD __at(0xFEB);

asm("FSR1H_SHAD equ 0FEBh");


typedef union {
struct {
unsigned FSR1H_SHAD :8;
};
} FSR1H_SHADbits_t;
extern volatile FSR1H_SHADbits_t FSR1H_SHADbits __at(0xFEB);

# 12396
extern volatile unsigned char STKPTR __at(0xFED);

asm("STKPTR equ 0FEDh");


typedef union {
struct {
unsigned STKPTR :5;
};
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __at(0xFED);

# 12416
extern volatile unsigned char TOSL __at(0xFEE);

asm("TOSL equ 0FEEh");


typedef union {
struct {
unsigned TOSL :8;
};
} TOSLbits_t;
extern volatile TOSLbits_t TOSLbits __at(0xFEE);

# 12436
extern volatile unsigned char TOSH __at(0xFEF);

asm("TOSH equ 0FEFh");


typedef union {
struct {
unsigned TOSH :7;
};
} TOSHbits_t;
extern volatile TOSHbits_t TOSHbits __at(0xFEF);

# 12462
extern volatile __bit ABDEN __at(0xCF8);


extern volatile __bit ABDOVF __at(0xCFF);


extern volatile __bit ACKDT __at(0x10B5);


extern volatile __bit ACKEN __at(0x10B4);


extern volatile __bit ACKSTAT __at(0x10B6);


extern volatile __bit ACKTIM __at(0x10BF);


extern volatile __bit ADCS0 __at(0x4F4);


extern volatile __bit ADCS1 __at(0x4F5);


extern volatile __bit ADCS2 __at(0x4F6);


extern volatile __bit ADD0 __at(0x1090);


extern volatile __bit ADD1 __at(0x1091);


extern volatile __bit ADD2 __at(0x1092);


extern volatile __bit ADD3 __at(0x1093);


extern volatile __bit ADD4 __at(0x1094);


extern volatile __bit ADD5 __at(0x1095);


extern volatile __bit ADD6 __at(0x1096);


extern volatile __bit ADD7 __at(0x1097);


extern volatile __bit ADDEN __at(0xCEB);


extern volatile __bit ADFM __at(0x4F7);


extern volatile __bit ADFVR0 __at(0x8B8);


extern volatile __bit ADFVR1 __at(0x8B9);


extern volatile __bit ADGO __at(0x4E9);


extern volatile __bit ADIE __at(0x48E);


extern volatile __bit ADIF __at(0x8E);


extern volatile __bit ADNREF __at(0x4F2);


extern volatile __bit ADON __at(0x4E8);


extern volatile __bit ADPREF0 __at(0x4F0);


extern volatile __bit ADPREF1 __at(0x4F1);


extern volatile __bit AHEN __at(0x10B9);


extern volatile __bit ANS5 __at(0xC65);


extern volatile __bit ANSA0 __at(0xC60);


extern volatile __bit ANSA1 __at(0xC61);


extern volatile __bit ANSA2 __at(0xC62);


extern volatile __bit ANSA4 __at(0xC64);


extern volatile __bit ANSB4 __at(0xC6C);


extern volatile __bit ANSB5 __at(0xC6D);


extern volatile __bit ANSB6 __at(0xC6E);


extern volatile __bit ANSB7 __at(0xC6F);


extern volatile __bit ANSC0 __at(0xC70);


extern volatile __bit ANSC1 __at(0xC71);


extern volatile __bit ANSC2 __at(0xC72);


extern volatile __bit ANSC3 __at(0xC73);


extern volatile __bit ANSC6 __at(0xC76);


extern volatile __bit ANSC7 __at(0xC77);


extern volatile __bit BCL1IE __at(0x493);


extern volatile __bit BCL1IF __at(0x93);


extern volatile __bit BF __at(0x10A0);


extern volatile __bit BOEN __at(0x10BC);


extern volatile __bit BORFS __at(0x8B6);


extern volatile __bit BORRDY __at(0x8B0);


extern volatile __bit BRG16 __at(0xCFB);


extern volatile __bit BRGH __at(0xCF2);


extern volatile __bit BSR0 __at(0x40);


extern volatile __bit BSR1 __at(0x41);


extern volatile __bit BSR2 __at(0x42);


extern volatile __bit BSR3 __at(0x43);


extern volatile __bit BSR4 __at(0x44);


extern volatile __bit BUF0 __at(0x1088);


extern volatile __bit BUF1 __at(0x1089);


extern volatile __bit BUF2 __at(0x108A);


extern volatile __bit BUF3 __at(0x108B);


extern volatile __bit BUF4 __at(0x108C);


extern volatile __bit BUF5 __at(0x108D);


extern volatile __bit BUF6 __at(0x108E);


extern volatile __bit BUF7 __at(0x108F);


extern volatile __bit C1HYS __at(0x889);


extern volatile __bit C1IE __at(0x495);


extern volatile __bit C1IF __at(0x95);


extern volatile __bit C1INTN __at(0x896);


extern volatile __bit C1INTP __at(0x897);


extern volatile __bit C1NCH0 __at(0x890);


extern volatile __bit C1NCH1 __at(0x891);


extern volatile __bit C1NCH2 __at(0x892);


extern volatile __bit C1ON __at(0x88F);


extern volatile __bit C1OUT __at(0x88E);


extern volatile __bit C1PCH0 __at(0x893);


extern volatile __bit C1PCH1 __at(0x894);


extern volatile __bit C1PCH2 __at(0x895);


extern volatile __bit C1POL __at(0x88C);


extern volatile __bit C1SP __at(0x88A);


extern volatile __bit C1SYNC __at(0x888);


extern volatile __bit C1TSEL0 __at(0x14F0);


extern volatile __bit C1TSEL1 __at(0x14F1);


extern volatile __bit C1ZLF __at(0x88B);


extern volatile __bit C2HYS __at(0x899);


extern volatile __bit C2IE __at(0x496);


extern volatile __bit C2IF __at(0x96);


extern volatile __bit C2INTN __at(0x8A6);


extern volatile __bit C2INTP __at(0x8A7);


extern volatile __bit C2NCH0 __at(0x8A0);


extern volatile __bit C2NCH1 __at(0x8A1);


extern volatile __bit C2NCH2 __at(0x8A2);


extern volatile __bit C2ON __at(0x89F);


extern volatile __bit C2OUT __at(0x89E);


extern volatile __bit C2PCH0 __at(0x8A3);


extern volatile __bit C2PCH1 __at(0x8A4);


extern volatile __bit C2PCH2 __at(0x8A5);


extern volatile __bit C2POL __at(0x89C);


extern volatile __bit C2SP __at(0x89A);


extern volatile __bit C2SYNC __at(0x898);


extern volatile __bit C2TSEL0 __at(0x14F2);


extern volatile __bit C2TSEL1 __at(0x14F3);


extern volatile __bit C2ZLF __at(0x89B);


extern volatile __bit CARRY __at(0x18);


extern volatile __bit CCP1IE __at(0x48A);


extern volatile __bit CCP1IF __at(0x8A);


extern volatile __bit CCP1M0 __at(0x1498);


extern volatile __bit CCP1M1 __at(0x1499);


extern volatile __bit CCP1M2 __at(0x149A);


extern volatile __bit CCP1M3 __at(0x149B);


extern volatile __bit CCP1X __at(0x149D);


extern volatile __bit CCP1Y __at(0x149C);


extern volatile __bit CCP2IE __at(0x490);


extern volatile __bit CCP2IF __at(0x90);


extern volatile __bit CCP2M0 __at(0x14D0);


extern volatile __bit CCP2M1 __at(0x14D1);


extern volatile __bit CCP2M2 __at(0x14D2);


extern volatile __bit CCP2M3 __at(0x14D3);


extern volatile __bit CCP2X __at(0x14D5);


extern volatile __bit CCP2Y __at(0x14D4);


extern volatile __bit CCPIE __at(0x48A);


extern volatile __bit CCPIF __at(0x8A);


extern volatile __bit CDAFVR0 __at(0x8BA);


extern volatile __bit CDAFVR1 __at(0x8BB);


extern volatile __bit CFGS __at(0xCAE);


extern volatile __bit CHS0 __at(0x4EA);


extern volatile __bit CHS1 __at(0x4EB);


extern volatile __bit CHS2 __at(0x4EC);


extern volatile __bit CHS3 __at(0x4ED);


extern volatile __bit CHS4 __at(0x4EE);


extern volatile __bit CKE __at(0x10A6);


extern volatile __bit CKP __at(0x10AC);


extern volatile __bit CLC1IE __at(0x498);


extern volatile __bit CLC1IF __at(0x98);


extern volatile __bit CLC2IE __at(0x499);


extern volatile __bit CLC2IF __at(0x99);


extern volatile __bit CLC3IE __at(0x49A);


extern volatile __bit CLC3IF __at(0x9A);


extern volatile __bit COGIE __at(0x49D);


extern volatile __bit COGIF __at(0x9D);


extern volatile __bit CREN __at(0xCEC);


extern volatile __bit CSRC __at(0xCF7);


extern volatile __bit C_SHAD __at(0x7F20);


extern volatile __bit DAC1EN __at(0x8C7);


extern volatile __bit DAC1NSS __at(0x8C0);


extern volatile __bit DAC1OE1 __at(0x8C5);


extern volatile __bit DAC1OE2 __at(0x8C4);


extern volatile __bit DAC1PSS0 __at(0x8C2);


extern volatile __bit DAC1PSS1 __at(0x8C3);


extern volatile __bit DAC1R0 __at(0x8C8);


extern volatile __bit DAC1R1 __at(0x8C9);


extern volatile __bit DAC1R2 __at(0x8CA);


extern volatile __bit DAC1R3 __at(0x8CB);


extern volatile __bit DAC1R4 __at(0x8CC);


extern volatile __bit DAC1R5 __at(0x8CD);


extern volatile __bit DAC1R6 __at(0x8CE);


extern volatile __bit DAC1R7 __at(0x8CF);


extern volatile __bit DACEN __at(0x8C7);


extern volatile __bit DACNSS __at(0x8C0);


extern volatile __bit DACOE0 __at(0x8C4);


extern volatile __bit DACOE1 __at(0x8C5);


extern volatile __bit DACPSS0 __at(0x8C2);


extern volatile __bit DACPSS1 __at(0x8C3);


extern volatile __bit DACR0 __at(0x8C8);


extern volatile __bit DACR1 __at(0x8C9);


extern volatile __bit DACR2 __at(0x8CA);


extern volatile __bit DACR3 __at(0x8CB);


extern volatile __bit DACR4 __at(0x8CC);


extern volatile __bit DACR5 __at(0x8CD);


extern volatile __bit DACR6 __at(0x8CE);


extern volatile __bit DACR7 __at(0x8CF);


extern volatile __bit DC __at(0x19);


extern volatile __bit DC1B0 __at(0x149C);


extern volatile __bit DC1B1 __at(0x149D);


extern volatile __bit DC2B0 __at(0x14D4);


extern volatile __bit DC2B1 __at(0x14D5);


extern volatile __bit DC_SHAD __at(0x7F21);


extern volatile __bit DHEN __at(0x10B8);


extern volatile __bit D_nA __at(0x10A5);


extern volatile __bit FERR __at(0xCEA);


extern volatile __bit FREE __at(0xCAC);


extern volatile __bit FVREN __at(0x8BF);


extern volatile __bit FVRRDY __at(0x8BE);


extern volatile __bit G1ARSEN __at(0x34EE);


extern volatile __bit G1AS0E __at(0x34F0);


extern volatile __bit G1AS1E __at(0x34F1);


extern volatile __bit G1AS2E __at(0x34F2);


extern volatile __bit G1AS3E __at(0x34F3);


extern volatile __bit G1ASDAC0 __at(0x34EA);


extern volatile __bit G1ASDAC1 __at(0x34EB);


extern volatile __bit G1ASDBD0 __at(0x34EC);


extern volatile __bit G1ASDBD1 __at(0x34ED);


extern volatile __bit G1ASE __at(0x34EF);


extern volatile __bit G1BLKF0 __at(0x34A0);


extern volatile __bit G1BLKF1 __at(0x34A1);


extern volatile __bit G1BLKF2 __at(0x34A2);


extern volatile __bit G1BLKF3 __at(0x34A3);


extern volatile __bit G1BLKF4 __at(0x34A4);


extern volatile __bit G1BLKF5 __at(0x34A5);


extern volatile __bit G1BLKR0 __at(0x3498);


extern volatile __bit G1BLKR1 __at(0x3499);


extern volatile __bit G1BLKR2 __at(0x349A);


extern volatile __bit G1BLKR3 __at(0x349B);


extern volatile __bit G1BLKR4 __at(0x349C);


extern volatile __bit G1BLKR5 __at(0x349D);


extern volatile __bit G1CS0 __at(0x34BB);


extern volatile __bit G1CS1 __at(0x34BC);


extern volatile __bit G1DBF0 __at(0x34B0);


extern volatile __bit G1DBF1 __at(0x34B1);


extern volatile __bit G1DBF2 __at(0x34B2);


extern volatile __bit G1DBF3 __at(0x34B3);


extern volatile __bit G1DBF4 __at(0x34B4);


extern volatile __bit G1DBF5 __at(0x34B5);


extern volatile __bit G1DBR0 __at(0x34A8);


extern volatile __bit G1DBR1 __at(0x34A9);


extern volatile __bit G1DBR2 __at(0x34AA);


extern volatile __bit G1DBR3 __at(0x34AB);


extern volatile __bit G1DBR4 __at(0x34AC);


extern volatile __bit G1DBR5 __at(0x34AD);


extern volatile __bit G1EN __at(0x34BF);


extern volatile __bit G1FDBS __at(0x34C6);


extern volatile __bit G1FIS0 __at(0x34D8);


extern volatile __bit G1FIS1 __at(0x34D9);


extern volatile __bit G1FIS2 __at(0x34DA);


extern volatile __bit G1FIS3 __at(0x34DB);


extern volatile __bit G1FIS4 __at(0x34DC);


extern volatile __bit G1FIS5 __at(0x34DD);


extern volatile __bit G1FIS6 __at(0x34DE);


extern volatile __bit G1FSIM0 __at(0x34E0);


extern volatile __bit G1FSIM1 __at(0x34E1);


extern volatile __bit G1FSIM2 __at(0x34E2);


extern volatile __bit G1FSIM3 __at(0x34E3);


extern volatile __bit G1FSIM4 __at(0x34E4);


extern volatile __bit G1FSIM5 __at(0x34E5);


extern volatile __bit G1FSIM6 __at(0x34E6);


extern volatile __bit G1LD __at(0x34BE);


extern volatile __bit G1MD0 __at(0x34B8);


extern volatile __bit G1MD1 __at(0x34B9);


extern volatile __bit G1MD2 __at(0x34BA);


extern volatile __bit G1PHF0 __at(0x3490);


extern volatile __bit G1PHF1 __at(0x3491);


extern volatile __bit G1PHF2 __at(0x3492);


extern volatile __bit G1PHF3 __at(0x3493);


extern volatile __bit G1PHF4 __at(0x3494);


extern volatile __bit G1PHF5 __at(0x3495);


extern volatile __bit G1PHR0 __at(0x3488);


extern volatile __bit G1PHR1 __at(0x3489);


extern volatile __bit G1PHR2 __at(0x348A);


extern volatile __bit G1PHR3 __at(0x348B);


extern volatile __bit G1PHR4 __at(0x348C);


extern volatile __bit G1PHR5 __at(0x348D);


extern volatile __bit G1POLA __at(0x34C0);


extern volatile __bit G1POLB __at(0x34C1);


extern volatile __bit G1POLC __at(0x34C2);


extern volatile __bit G1POLD __at(0x34C3);


extern volatile __bit G1RDBS __at(0x34C7);


extern volatile __bit G1RIS0 __at(0x34C8);


extern volatile __bit G1RIS1 __at(0x34C9);


extern volatile __bit G1RIS2 __at(0x34CA);


extern volatile __bit G1RIS3 __at(0x34CB);


extern volatile __bit G1RIS4 __at(0x34CC);


extern volatile __bit G1RIS5 __at(0x34CD);


extern volatile __bit G1RIS6 __at(0x34CE);


extern volatile __bit G1RSIM0 __at(0x34D0);


extern volatile __bit G1RSIM1 __at(0x34D1);


extern volatile __bit G1RSIM2 __at(0x34D2);


extern volatile __bit G1RSIM3 __at(0x34D3);


extern volatile __bit G1RSIM4 __at(0x34D4);


extern volatile __bit G1RSIM5 __at(0x34D5);


extern volatile __bit G1RSIM6 __at(0x34D6);


extern volatile __bit G1SDATA __at(0x34FC);


extern volatile __bit G1SDATB __at(0x34FD);


extern volatile __bit G1SDATC __at(0x34FE);


extern volatile __bit G1SDATD __at(0x34FF);


extern volatile __bit G1STRA __at(0x34F8);


extern volatile __bit G1STRB __at(0x34F9);


extern volatile __bit G1STRC __at(0x34FA);


extern volatile __bit G1STRD __at(0x34FB);


extern volatile __bit GCEN __at(0x10B7);


extern volatile __bit GIE __at(0x5F);


extern volatile __bit GO __at(0x4E9);


extern volatile __bit GO_nDONE __at(0x4E9);


extern volatile __bit HFIOFL __at(0x4D3);


extern volatile __bit HFIOFR __at(0x4D4);


extern volatile __bit HFIOFS __at(0x4D0);


extern volatile __bit INLVLA0 __at(0x1C60);


extern volatile __bit INLVLA1 __at(0x1C61);


extern volatile __bit INLVLA2 __at(0x1C62);


extern volatile __bit INLVLA3 __at(0x1C63);


extern volatile __bit INLVLA4 __at(0x1C64);


extern volatile __bit INLVLA5 __at(0x1C65);


extern volatile __bit INLVLB4 __at(0x1C6C);


extern volatile __bit INLVLB5 __at(0x1C6D);


extern volatile __bit INLVLB6 __at(0x1C6E);


extern volatile __bit INLVLB7 __at(0x1C6F);


extern volatile __bit INLVLC0 __at(0x1C70);


extern volatile __bit INLVLC1 __at(0x1C71);


extern volatile __bit INLVLC2 __at(0x1C72);


extern volatile __bit INLVLC3 __at(0x1C73);


extern volatile __bit INLVLC4 __at(0x1C74);


extern volatile __bit INLVLC5 __at(0x1C75);


extern volatile __bit INLVLC6 __at(0x1C76);


extern volatile __bit INLVLC7 __at(0x1C77);


extern volatile __bit INTE __at(0x5C);


extern volatile __bit INTEDG __at(0x4AE);


extern volatile __bit INTF __at(0x59);


extern volatile __bit IOCAF0 __at(0x1C98);


extern volatile __bit IOCAF1 __at(0x1C99);


extern volatile __bit IOCAF2 __at(0x1C9A);


extern volatile __bit IOCAF3 __at(0x1C9B);


extern volatile __bit IOCAF4 __at(0x1C9C);


extern volatile __bit IOCAF5 __at(0x1C9D);


extern volatile __bit IOCAN0 __at(0x1C90);


extern volatile __bit IOCAN1 __at(0x1C91);


extern volatile __bit IOCAN2 __at(0x1C92);


extern volatile __bit IOCAN3 __at(0x1C93);


extern volatile __bit IOCAN4 __at(0x1C94);


extern volatile __bit IOCAN5 __at(0x1C95);


extern volatile __bit IOCAP0 __at(0x1C88);


extern volatile __bit IOCAP1 __at(0x1C89);


extern volatile __bit IOCAP2 __at(0x1C8A);


extern volatile __bit IOCAP3 __at(0x1C8B);


extern volatile __bit IOCAP4 __at(0x1C8C);


extern volatile __bit IOCAP5 __at(0x1C8D);


extern volatile __bit IOCBF4 __at(0x1CB4);


extern volatile __bit IOCBF5 __at(0x1CB5);


extern volatile __bit IOCBF6 __at(0x1CB6);


extern volatile __bit IOCBF7 __at(0x1CB7);


extern volatile __bit IOCBN4 __at(0x1CAC);


extern volatile __bit IOCBN5 __at(0x1CAD);


extern volatile __bit IOCBN6 __at(0x1CAE);


extern volatile __bit IOCBN7 __at(0x1CAF);


extern volatile __bit IOCBP4 __at(0x1CA4);


extern volatile __bit IOCBP5 __at(0x1CA5);


extern volatile __bit IOCBP6 __at(0x1CA6);


extern volatile __bit IOCBP7 __at(0x1CA7);


extern volatile __bit IOCCF0 __at(0x1CC8);


extern volatile __bit IOCCF1 __at(0x1CC9);


extern volatile __bit IOCCF2 __at(0x1CCA);


extern volatile __bit IOCCF3 __at(0x1CCB);


extern volatile __bit IOCCF4 __at(0x1CCC);


extern volatile __bit IOCCF5 __at(0x1CCD);


extern volatile __bit IOCCF6 __at(0x1CCE);


extern volatile __bit IOCCF7 __at(0x1CCF);


extern volatile __bit IOCCN0 __at(0x1CC0);


extern volatile __bit IOCCN1 __at(0x1CC1);


extern volatile __bit IOCCN2 __at(0x1CC2);


extern volatile __bit IOCCN3 __at(0x1CC3);


extern volatile __bit IOCCN4 __at(0x1CC4);


extern volatile __bit IOCCN5 __at(0x1CC5);


extern volatile __bit IOCCN6 __at(0x1CC6);


extern volatile __bit IOCCN7 __at(0x1CC7);


extern volatile __bit IOCCP0 __at(0x1CB8);


extern volatile __bit IOCCP1 __at(0x1CB9);


extern volatile __bit IOCCP2 __at(0x1CBA);


extern volatile __bit IOCCP3 __at(0x1CBB);


extern volatile __bit IOCCP4 __at(0x1CBC);


extern volatile __bit IOCCP5 __at(0x1CBD);


extern volatile __bit IOCCP6 __at(0x1CBE);


extern volatile __bit IOCCP7 __at(0x1CBF);


extern volatile __bit IOCIE __at(0x5B);


extern volatile __bit IOCIF __at(0x58);


extern volatile __bit IRCF0 __at(0x4CB);


extern volatile __bit IRCF1 __at(0x4CC);


extern volatile __bit IRCF2 __at(0x4CD);


extern volatile __bit IRCF3 __at(0x4CE);


extern volatile __bit LATA0 __at(0x860);


extern volatile __bit LATA1 __at(0x861);


extern volatile __bit LATA2 __at(0x862);


extern volatile __bit LATA4 __at(0x864);


extern volatile __bit LATA5 __at(0x865);


extern volatile __bit LATB4 __at(0x86C);


extern volatile __bit LATB5 __at(0x86D);


extern volatile __bit LATB6 __at(0x86E);


extern volatile __bit LATB7 __at(0x86F);


extern volatile __bit LATC0 __at(0x870);


extern volatile __bit LATC1 __at(0x871);


extern volatile __bit LATC2 __at(0x872);


extern volatile __bit LATC3 __at(0x873);


extern volatile __bit LATC4 __at(0x874);


extern volatile __bit LATC5 __at(0x875);


extern volatile __bit LATC6 __at(0x876);


extern volatile __bit LATC7 __at(0x877);


extern volatile __bit LC1D1S0 __at(0x7890);


extern volatile __bit LC1D1S1 __at(0x7891);


extern volatile __bit LC1D1S2 __at(0x7892);


extern volatile __bit LC1D1S3 __at(0x7893);


extern volatile __bit LC1D1S4 __at(0x7894);


extern volatile __bit LC1D2S0 __at(0x7898);


extern volatile __bit LC1D2S1 __at(0x7899);


extern volatile __bit LC1D2S2 __at(0x789A);


extern volatile __bit LC1D2S3 __at(0x789B);


extern volatile __bit LC1D2S4 __at(0x789C);


extern volatile __bit LC1D3S0 __at(0x78A0);


extern volatile __bit LC1D3S1 __at(0x78A1);


extern volatile __bit LC1D3S2 __at(0x78A2);


extern volatile __bit LC1D3S3 __at(0x78A3);


extern volatile __bit LC1D3S4 __at(0x78A4);


extern volatile __bit LC1D4S0 __at(0x78A8);


extern volatile __bit LC1D4S1 __at(0x78A9);


extern volatile __bit LC1D4S2 __at(0x78AA);


extern volatile __bit LC1D4S3 __at(0x78AB);


extern volatile __bit LC1D4S4 __at(0x78AC);


extern volatile __bit LC1EN __at(0x7887);


extern volatile __bit LC1G1D1N __at(0x78B0);


extern volatile __bit LC1G1D1T __at(0x78B1);


extern volatile __bit LC1G1D2N __at(0x78B2);


extern volatile __bit LC1G1D2T __at(0x78B3);


extern volatile __bit LC1G1D3N __at(0x78B4);


extern volatile __bit LC1G1D3T __at(0x78B5);


extern volatile __bit LC1G1D4N __at(0x78B6);


extern volatile __bit LC1G1D4T __at(0x78B7);


extern volatile __bit LC1G1POL __at(0x7888);


extern volatile __bit LC1G2D1N __at(0x78B8);


extern volatile __bit LC1G2D1T __at(0x78B9);


extern volatile __bit LC1G2D2N __at(0x78BA);


extern volatile __bit LC1G2D2T __at(0x78BB);


extern volatile __bit LC1G2D3N __at(0x78BC);


extern volatile __bit LC1G2D3T __at(0x78BD);


extern volatile __bit LC1G2D4N __at(0x78BE);


extern volatile __bit LC1G2D4T __at(0x78BF);


extern volatile __bit LC1G2POL __at(0x7889);


extern volatile __bit LC1G3D1N __at(0x78C0);


extern volatile __bit LC1G3D1T __at(0x78C1);


extern volatile __bit LC1G3D2N __at(0x78C2);


extern volatile __bit LC1G3D2T __at(0x78C3);


extern volatile __bit LC1G3D3N __at(0x78C4);


extern volatile __bit LC1G3D3T __at(0x78C5);


extern volatile __bit LC1G3D4N __at(0x78C6);


extern volatile __bit LC1G3D4T __at(0x78C7);


extern volatile __bit LC1G3POL __at(0x788A);


extern volatile __bit LC1G4D1N __at(0x78C8);


extern volatile __bit LC1G4D1T __at(0x78C9);


extern volatile __bit LC1G4D2N __at(0x78CA);


extern volatile __bit LC1G4D2T __at(0x78CB);


extern volatile __bit LC1G4D3N __at(0x78CC);


extern volatile __bit LC1G4D3T __at(0x78CD);


extern volatile __bit LC1G4D4N __at(0x78CE);


extern volatile __bit LC1G4D4T __at(0x78CF);


extern volatile __bit LC1G4POL __at(0x788B);


extern volatile __bit LC1INTN __at(0x7883);


extern volatile __bit LC1INTP __at(0x7884);


extern volatile __bit LC1MODE0 __at(0x7880);


extern volatile __bit LC1MODE1 __at(0x7881);


extern volatile __bit LC1MODE2 __at(0x7882);


extern volatile __bit LC1OUT __at(0x7885);


extern volatile __bit LC1POL __at(0x788F);


extern volatile __bit LC2D1S0 __at(0x78E0);


extern volatile __bit LC2D1S1 __at(0x78E1);


extern volatile __bit LC2D1S2 __at(0x78E2);


extern volatile __bit LC2D1S3 __at(0x78E3);


extern volatile __bit LC2D1S4 __at(0x78E4);


extern volatile __bit LC2D2S0 __at(0x78E8);


extern volatile __bit LC2D2S1 __at(0x78E9);


extern volatile __bit LC2D2S2 __at(0x78EA);


extern volatile __bit LC2D2S3 __at(0x78EB);


extern volatile __bit LC2D2S4 __at(0x78EC);


extern volatile __bit LC2D3S0 __at(0x78F0);


extern volatile __bit LC2D3S1 __at(0x78F1);


extern volatile __bit LC2D3S2 __at(0x78F2);


extern volatile __bit LC2D3S3 __at(0x78F3);


extern volatile __bit LC2D3S4 __at(0x78F4);


extern volatile __bit LC2D4S0 __at(0x78F8);


extern volatile __bit LC2D4S1 __at(0x78F9);


extern volatile __bit LC2D4S2 __at(0x78FA);


extern volatile __bit LC2D4S3 __at(0x78FB);


extern volatile __bit LC2D4S4 __at(0x78FC);


extern volatile __bit LC2EN __at(0x78D7);


extern volatile __bit LC2G1D1N __at(0x7900);


extern volatile __bit LC2G1D1T __at(0x7901);


extern volatile __bit LC2G1D2N __at(0x7902);


extern volatile __bit LC2G1D2T __at(0x7903);


extern volatile __bit LC2G1D3N __at(0x7904);


extern volatile __bit LC2G1D3T __at(0x7905);


extern volatile __bit LC2G1D4N __at(0x7906);


extern volatile __bit LC2G1D4T __at(0x7907);


extern volatile __bit LC2G1POL __at(0x78D8);


extern volatile __bit LC2G2D1N __at(0x7908);


extern volatile __bit LC2G2D1T __at(0x7909);


extern volatile __bit LC2G2D2N __at(0x790A);


extern volatile __bit LC2G2D2T __at(0x790B);


extern volatile __bit LC2G2D3N __at(0x790C);


extern volatile __bit LC2G2D3T __at(0x790D);


extern volatile __bit LC2G2D4N __at(0x790E);


extern volatile __bit LC2G2D4T __at(0x790F);


extern volatile __bit LC2G2POL __at(0x78D9);


extern volatile __bit LC2G3D1N __at(0x7910);


extern volatile __bit LC2G3D1T __at(0x7911);


extern volatile __bit LC2G3D2N __at(0x7912);


extern volatile __bit LC2G3D2T __at(0x7913);


extern volatile __bit LC2G3D3N __at(0x7914);


extern volatile __bit LC2G3D3T __at(0x7915);


extern volatile __bit LC2G3D4N __at(0x7916);


extern volatile __bit LC2G3D4T __at(0x7917);


extern volatile __bit LC2G3POL __at(0x78DA);


extern volatile __bit LC2G4D1N __at(0x7918);


extern volatile __bit LC2G4D1T __at(0x7919);


extern volatile __bit LC2G4D2N __at(0x791A);


extern volatile __bit LC2G4D2T __at(0x791B);


extern volatile __bit LC2G4D3N __at(0x791C);


extern volatile __bit LC2G4D3T __at(0x791D);


extern volatile __bit LC2G4D4N __at(0x791E);


extern volatile __bit LC2G4D4T __at(0x791F);


extern volatile __bit LC2G4POL __at(0x78DB);


extern volatile __bit LC2INTN __at(0x78D3);


extern volatile __bit LC2INTP __at(0x78D4);


extern volatile __bit LC2MODE0 __at(0x78D0);


extern volatile __bit LC2MODE1 __at(0x78D1);


extern volatile __bit LC2MODE2 __at(0x78D2);


extern volatile __bit LC2OUT __at(0x78D5);


extern volatile __bit LC2POL __at(0x78DF);


extern volatile __bit LC3D1S0 __at(0x7930);


extern volatile __bit LC3D1S1 __at(0x7931);


extern volatile __bit LC3D1S2 __at(0x7932);


extern volatile __bit LC3D1S3 __at(0x7933);


extern volatile __bit LC3D1S4 __at(0x7934);


extern volatile __bit LC3D2S0 __at(0x7938);


extern volatile __bit LC3D2S1 __at(0x7939);


extern volatile __bit LC3D2S2 __at(0x793A);


extern volatile __bit LC3D2S3 __at(0x793B);


extern volatile __bit LC3D2S4 __at(0x793C);


extern volatile __bit LC3D3S0 __at(0x7940);


extern volatile __bit LC3D3S1 __at(0x7941);


extern volatile __bit LC3D3S2 __at(0x7942);


extern volatile __bit LC3D3S3 __at(0x7943);


extern volatile __bit LC3D3S4 __at(0x7944);


extern volatile __bit LC3D4S0 __at(0x7948);


extern volatile __bit LC3D4S1 __at(0x7949);


extern volatile __bit LC3D4S2 __at(0x794A);


extern volatile __bit LC3D4S3 __at(0x794B);


extern volatile __bit LC3D4S4 __at(0x794C);


extern volatile __bit LC3EN __at(0x7927);


extern volatile __bit LC3G1D1N __at(0x7950);


extern volatile __bit LC3G1D1T __at(0x7951);


extern volatile __bit LC3G1D2N __at(0x7952);


extern volatile __bit LC3G1D2T __at(0x7953);


extern volatile __bit LC3G1D3N __at(0x7954);


extern volatile __bit LC3G1D3T __at(0x7955);


extern volatile __bit LC3G1D4N __at(0x7956);


extern volatile __bit LC3G1D4T __at(0x7957);


extern volatile __bit LC3G1POL __at(0x7928);


extern volatile __bit LC3G2D1N __at(0x7958);


extern volatile __bit LC3G2D1T __at(0x7959);


extern volatile __bit LC3G2D2N __at(0x795A);


extern volatile __bit LC3G2D2T __at(0x795B);


extern volatile __bit LC3G2D3N __at(0x795C);


extern volatile __bit LC3G2D3T __at(0x795D);


extern volatile __bit LC3G2D4N __at(0x795E);


extern volatile __bit LC3G2D4T __at(0x795F);


extern volatile __bit LC3G2POL __at(0x7929);


extern volatile __bit LC3G3D1N __at(0x7960);


extern volatile __bit LC3G3D1T __at(0x7961);


extern volatile __bit LC3G3D2N __at(0x7962);


extern volatile __bit LC3G3D2T __at(0x7963);


extern volatile __bit LC3G3D3N __at(0x7964);


extern volatile __bit LC3G3D3T __at(0x7965);


extern volatile __bit LC3G3D4N __at(0x7966);


extern volatile __bit LC3G3D4T __at(0x7967);


extern volatile __bit LC3G3POL __at(0x792A);


extern volatile __bit LC3G4D1N __at(0x7968);


extern volatile __bit LC3G4D1T __at(0x7969);


extern volatile __bit LC3G4D2N __at(0x796A);


extern volatile __bit LC3G4D2T __at(0x796B);


extern volatile __bit LC3G4D3N __at(0x796C);


extern volatile __bit LC3G4D3T __at(0x796D);


extern volatile __bit LC3G4D4N __at(0x796E);


extern volatile __bit LC3G4D4T __at(0x796F);


extern volatile __bit LC3G4POL __at(0x792B);


extern volatile __bit LC3INTN __at(0x7923);


extern volatile __bit LC3INTP __at(0x7924);


extern volatile __bit LC3MODE0 __at(0x7920);


extern volatile __bit LC3MODE1 __at(0x7921);


extern volatile __bit LC3MODE2 __at(0x7922);


extern volatile __bit LC3OUT __at(0x7925);


extern volatile __bit LC3POL __at(0x792F);


extern volatile __bit LFIOFR __at(0x4D1);


extern volatile __bit LWLO __at(0xCAD);


extern volatile __bit MC1OUT __at(0x8A8);


extern volatile __bit MC2OUT __at(0x8A9);


extern volatile __bit MCLC1OUT __at(0x7878);


extern volatile __bit MCLC2OUT __at(0x7879);


extern volatile __bit MCLC3OUT __at(0x787A);


extern volatile __bit MFIOFR __at(0x4D2);


extern volatile __bit MSK0 __at(0x1098);


extern volatile __bit MSK1 __at(0x1099);


extern volatile __bit MSK2 __at(0x109A);


extern volatile __bit MSK3 __at(0x109B);


extern volatile __bit MSK4 __at(0x109C);


extern volatile __bit MSK5 __at(0x109D);


extern volatile __bit MSK6 __at(0x109E);


extern volatile __bit MSK7 __at(0x109F);


extern volatile __bit ODA0 __at(0x1460);


extern volatile __bit ODA1 __at(0x1461);


extern volatile __bit ODA2 __at(0x1462);


extern volatile __bit ODA4 __at(0x1464);


extern volatile __bit ODA5 __at(0x1465);


extern volatile __bit ODB4 __at(0x146C);


extern volatile __bit ODB5 __at(0x146D);


extern volatile __bit ODB6 __at(0x146E);


extern volatile __bit ODB7 __at(0x146F);


extern volatile __bit ODC0 __at(0x1470);


extern volatile __bit ODC1 __at(0x1471);


extern volatile __bit ODC2 __at(0x1472);


extern volatile __bit ODC3 __at(0x1473);


extern volatile __bit ODC4 __at(0x1474);


extern volatile __bit ODC5 __at(0x1475);


extern volatile __bit ODC6 __at(0x1476);


extern volatile __bit ODC7 __at(0x1477);


extern volatile __bit OERR __at(0xCE9);


extern volatile __bit OPA1EN __at(0x288F);


extern volatile __bit OPA1PCH0 __at(0x2888);


extern volatile __bit OPA1PCH1 __at(0x2889);


extern volatile __bit OPA1SP __at(0x288E);


extern volatile __bit OPA1UG __at(0x288C);


extern volatile __bit OPA2EN __at(0x28AF);


extern volatile __bit OPA2PCH0 __at(0x28A8);


extern volatile __bit OPA2PCH1 __at(0x28A9);


extern volatile __bit OPA2SP __at(0x28AE);


extern volatile __bit OPA2UG __at(0x28AC);


extern volatile __bit OSFIE __at(0x497);


extern volatile __bit OSFIF __at(0x97);


extern volatile __bit OSTS __at(0x4D5);


extern volatile __bit P3TSEL0 __at(0x14F4);


extern volatile __bit P3TSEL1 __at(0x14F5);


extern volatile __bit P4TSEL0 __at(0x14F6);


extern volatile __bit P4TSEL1 __at(0x14F7);


extern volatile __bit PCIE __at(0x10BE);


extern volatile __bit PEIE __at(0x5E);


extern volatile __bit PEN __at(0x10B2);


extern volatile __bit PLLR __at(0x4D6);


extern volatile __bit PPSLOCKED __at(0x7078);


extern volatile __bit PS0 __at(0x4A8);


extern volatile __bit PS1 __at(0x4A9);


extern volatile __bit PS2 __at(0x4AA);


extern volatile __bit PSA __at(0x4AB);


extern volatile __bit PWM3DCH0 __at(0x30C0);


extern volatile __bit PWM3DCH1 __at(0x30C1);


extern volatile __bit PWM3DCH2 __at(0x30C2);


extern volatile __bit PWM3DCH3 __at(0x30C3);


extern volatile __bit PWM3DCH4 __at(0x30C4);


extern volatile __bit PWM3DCH5 __at(0x30C5);


extern volatile __bit PWM3DCH6 __at(0x30C6);


extern volatile __bit PWM3DCH7 __at(0x30C7);


extern volatile __bit PWM3DCL0 __at(0x30BE);


extern volatile __bit PWM3DCL1 __at(0x30BF);


extern volatile __bit PWM3EN __at(0x30CF);


extern volatile __bit PWM3OUT __at(0x30CD);


extern volatile __bit PWM3POL __at(0x30CC);


extern volatile __bit PWM4DCH0 __at(0x30D8);


extern volatile __bit PWM4DCH1 __at(0x30D9);


extern volatile __bit PWM4DCH2 __at(0x30DA);


extern volatile __bit PWM4DCH3 __at(0x30DB);


extern volatile __bit PWM4DCH4 __at(0x30DC);


extern volatile __bit PWM4DCH5 __at(0x30DD);


extern volatile __bit PWM4DCH6 __at(0x30DE);


extern volatile __bit PWM4DCH7 __at(0x30DF);


extern volatile __bit PWM4DCL0 __at(0x30D6);


extern volatile __bit PWM4DCL1 __at(0x30D7);


extern volatile __bit PWM4EN __at(0x30E7);


extern volatile __bit PWM4OUT __at(0x30E5);


extern volatile __bit PWM4POL __at(0x30E4);


extern volatile __bit RA0 __at(0x60);


extern volatile __bit RA1 __at(0x61);


extern volatile __bit RA2 __at(0x62);


extern volatile __bit RA3 __at(0x63);


extern volatile __bit RA4 __at(0x64);


extern volatile __bit RA5 __at(0x65);


extern volatile __bit RB4 __at(0x6C);


extern volatile __bit RB5 __at(0x6D);


extern volatile __bit RB6 __at(0x6E);


extern volatile __bit RB7 __at(0x6F);


extern volatile __bit RC0 __at(0x70);


extern volatile __bit RC1 __at(0x71);


extern volatile __bit RC2 __at(0x72);


extern volatile __bit RC3 __at(0x73);


extern volatile __bit RC4 __at(0x74);


extern volatile __bit RC5 __at(0x75);


extern volatile __bit RC6 __at(0x76);


extern volatile __bit RC7 __at(0x77);


extern volatile __bit RCEN __at(0x10B3);


extern volatile __bit RCIDL __at(0xCFE);


extern volatile __bit RCIE __at(0x48D);


extern volatile __bit RCIF __at(0x8D);


extern volatile __bit RD __at(0xCA8);


extern volatile __bit RSEN __at(0x10B1);


extern volatile __bit RX9 __at(0xCEE);


extern volatile __bit RX9D __at(0xCE8);


extern volatile __bit R_nW __at(0x10A2);


extern volatile __bit SBCDE __at(0x10BA);


extern volatile __bit SBOREN __at(0x8B7);


extern volatile __bit SCIE __at(0x10BD);


extern volatile __bit SCKP __at(0xCFC);


extern volatile __bit SCS0 __at(0x4C8);


extern volatile __bit SCS1 __at(0x4C9);


extern volatile __bit SDAHT __at(0x10BB);


extern volatile __bit SEN __at(0x10B0);


extern volatile __bit SENDB __at(0xCF3);


extern volatile __bit SLRA0 __at(0x1860);


extern volatile __bit SLRA1 __at(0x1861);


extern volatile __bit SLRA2 __at(0x1862);


extern volatile __bit SLRA4 __at(0x1864);


extern volatile __bit SLRA5 __at(0x1865);


extern volatile __bit SLRB4 __at(0x186C);


extern volatile __bit SLRB5 __at(0x186D);


extern volatile __bit SLRB6 __at(0x186E);


extern volatile __bit SLRB7 __at(0x186F);


extern volatile __bit SLRC0 __at(0x1870);


extern volatile __bit SLRC1 __at(0x1871);


extern volatile __bit SLRC2 __at(0x1872);


extern volatile __bit SLRC3 __at(0x1873);


extern volatile __bit SLRC4 __at(0x1874);


extern volatile __bit SLRC5 __at(0x1875);


extern volatile __bit SLRC6 __at(0x1876);


extern volatile __bit SLRC7 __at(0x1877);


extern volatile __bit SMP __at(0x10A7);


extern volatile __bit SOSCR __at(0x4D7);


extern volatile __bit SPEN __at(0xCEF);


extern volatile __bit SPLLEN __at(0x4CF);


extern volatile __bit SREN __at(0xCED);


extern volatile __bit SSP1ADD0 __at(0x1090);


extern volatile __bit SSP1ADD1 __at(0x1091);


extern volatile __bit SSP1ADD2 __at(0x1092);


extern volatile __bit SSP1ADD3 __at(0x1093);


extern volatile __bit SSP1ADD4 __at(0x1094);


extern volatile __bit SSP1ADD5 __at(0x1095);


extern volatile __bit SSP1ADD6 __at(0x1096);


extern volatile __bit SSP1ADD7 __at(0x1097);


extern volatile __bit SSP1BUF0 __at(0x1088);


extern volatile __bit SSP1BUF1 __at(0x1089);


extern volatile __bit SSP1BUF2 __at(0x108A);


extern volatile __bit SSP1BUF3 __at(0x108B);


extern volatile __bit SSP1BUF4 __at(0x108C);


extern volatile __bit SSP1BUF5 __at(0x108D);


extern volatile __bit SSP1BUF6 __at(0x108E);


extern volatile __bit SSP1BUF7 __at(0x108F);


extern volatile __bit SSP1IE __at(0x48B);


extern volatile __bit SSP1IF __at(0x8B);


extern volatile __bit SSP1MSK0 __at(0x1098);


extern volatile __bit SSP1MSK1 __at(0x1099);


extern volatile __bit SSP1MSK2 __at(0x109A);


extern volatile __bit SSP1MSK3 __at(0x109B);


extern volatile __bit SSP1MSK4 __at(0x109C);


extern volatile __bit SSP1MSK5 __at(0x109D);


extern volatile __bit SSP1MSK6 __at(0x109E);


extern volatile __bit SSP1MSK7 __at(0x109F);


extern volatile __bit SSPEN __at(0x10AD);


extern volatile __bit SSPM0 __at(0x10A8);


extern volatile __bit SSPM1 __at(0x10A9);


extern volatile __bit SSPM2 __at(0x10AA);


extern volatile __bit SSPM3 __at(0x10AB);


extern volatile __bit SSPOV __at(0x10AE);


extern volatile __bit STKOVF __at(0x4B7);


extern volatile __bit STKUNF __at(0x4B6);


extern volatile __bit SWDTEN __at(0x4B8);


extern volatile __bit SYNC __at(0xCF4);


extern volatile __bit T0CS __at(0x4AD);


extern volatile __bit T0IE __at(0x5D);


extern volatile __bit T0IF __at(0x5A);


extern volatile __bit T0SE __at(0x4AC);


extern volatile __bit T1CKPS0 __at(0xC4);


extern volatile __bit T1CKPS1 __at(0xC5);


extern volatile __bit T1GGO_nDONE __at(0xCB);


extern volatile __bit T1GPOL __at(0xCE);


extern volatile __bit T1GSPM __at(0xCC);


extern volatile __bit T1GSS0 __at(0xC8);


extern volatile __bit T1GSS1 __at(0xC9);


extern volatile __bit T1GTM __at(0xCD);


extern volatile __bit T1GVAL __at(0xCA);


extern volatile __bit T1OSCEN __at(0xC3);


extern volatile __bit T2CKPS0 __at(0xE0);


extern volatile __bit T2CKPS1 __at(0xE1);


extern volatile __bit T2OUTPS0 __at(0xE3);


extern volatile __bit T2OUTPS1 __at(0xE4);


extern volatile __bit T2OUTPS2 __at(0xE5);


extern volatile __bit T2OUTPS3 __at(0xE6);


extern volatile __bit T4CKPS0 __at(0x20B8);


extern volatile __bit T4CKPS1 __at(0x20B9);


extern volatile __bit T4OUTPS0 __at(0x20BB);


extern volatile __bit T4OUTPS1 __at(0x20BC);


extern volatile __bit T4OUTPS2 __at(0x20BD);


extern volatile __bit T4OUTPS3 __at(0x20BE);


extern volatile __bit T6CKPS0 __at(0x20F0);


extern volatile __bit T6CKPS1 __at(0x20F1);


extern volatile __bit T6OUTPS0 __at(0x20F3);


extern volatile __bit T6OUTPS1 __at(0x20F4);


extern volatile __bit T6OUTPS2 __at(0x20F5);


extern volatile __bit T6OUTPS3 __at(0x20F6);


extern volatile __bit TMR0CS __at(0x4AD);


extern volatile __bit TMR0IE __at(0x5D);


extern volatile __bit TMR0IF __at(0x5A);


extern volatile __bit TMR0SE __at(0x4AC);


extern volatile __bit TMR1CS0 __at(0xC6);


extern volatile __bit TMR1CS1 __at(0xC7);


extern volatile __bit TMR1GE __at(0xCF);


extern volatile __bit TMR1GIE __at(0x48F);


extern volatile __bit TMR1GIF __at(0x8F);


extern volatile __bit TMR1IE __at(0x488);


extern volatile __bit TMR1IF __at(0x88);


extern volatile __bit TMR1ON __at(0xC0);


extern volatile __bit TMR2IE __at(0x489);


extern volatile __bit TMR2IF __at(0x89);


extern volatile __bit TMR2ON __at(0xE2);


extern volatile __bit TMR4IE __at(0x491);


extern volatile __bit TMR4IF __at(0x91);


extern volatile __bit TMR4ON __at(0x20BA);


extern volatile __bit TMR6IE __at(0x492);


extern volatile __bit TMR6IF __at(0x92);


extern volatile __bit TMR6ON __at(0x20F2);


extern volatile __bit TRIGSEL0 __at(0x4FC);


extern volatile __bit TRIGSEL1 __at(0x4FD);


extern volatile __bit TRIGSEL2 __at(0x4FE);


extern volatile __bit TRIGSEL3 __at(0x4FF);


extern volatile __bit TRISA0 __at(0x460);


extern volatile __bit TRISA1 __at(0x461);


extern volatile __bit TRISA2 __at(0x462);


extern volatile __bit TRISA4 __at(0x464);


extern volatile __bit TRISA5 __at(0x465);


extern volatile __bit TRISB4 __at(0x46C);


extern volatile __bit TRISB5 __at(0x46D);


extern volatile __bit TRISB6 __at(0x46E);


extern volatile __bit TRISB7 __at(0x46F);


extern volatile __bit TRISC0 __at(0x470);


extern volatile __bit TRISC1 __at(0x471);


extern volatile __bit TRISC2 __at(0x472);


extern volatile __bit TRISC3 __at(0x473);


extern volatile __bit TRISC4 __at(0x474);


extern volatile __bit TRISC5 __at(0x475);


extern volatile __bit TRISC6 __at(0x476);


extern volatile __bit TRISC7 __at(0x477);


extern volatile __bit TRMT __at(0xCF1);


extern volatile __bit TSEN __at(0x8BD);


extern volatile __bit TSRNG __at(0x8BC);


extern volatile __bit TUN0 __at(0x4C0);


extern volatile __bit TUN1 __at(0x4C1);


extern volatile __bit TUN2 __at(0x4C2);


extern volatile __bit TUN3 __at(0x4C3);


extern volatile __bit TUN4 __at(0x4C4);


extern volatile __bit TUN5 __at(0x4C5);


extern volatile __bit TX9 __at(0xCF6);


extern volatile __bit TX9D __at(0xCF0);


extern volatile __bit TXEN __at(0xCF5);


extern volatile __bit TXIE __at(0x48C);


extern volatile __bit TXIF __at(0x8C);


extern volatile __bit UA __at(0x10A1);


extern volatile __bit WCOL __at(0x10AF);


extern volatile __bit WDTPS0 __at(0x4B9);


extern volatile __bit WDTPS1 __at(0x4BA);


extern volatile __bit WDTPS2 __at(0x4BB);


extern volatile __bit WDTPS3 __at(0x4BC);


extern volatile __bit WDTPS4 __at(0x4BD);


extern volatile __bit WPUA0 __at(0x1060);


extern volatile __bit WPUA1 __at(0x1061);


extern volatile __bit WPUA2 __at(0x1062);


extern volatile __bit WPUA3 __at(0x1063);


extern volatile __bit WPUA4 __at(0x1064);


extern volatile __bit WPUA5 __at(0x1065);


extern volatile __bit WPUB4 __at(0x106C);


extern volatile __bit WPUB5 __at(0x106D);


extern volatile __bit WPUB6 __at(0x106E);


extern volatile __bit WPUB7 __at(0x106F);


extern volatile __bit WPUC0 __at(0x1070);


extern volatile __bit WPUC1 __at(0x1071);


extern volatile __bit WPUC2 __at(0x1072);


extern volatile __bit WPUC3 __at(0x1073);


extern volatile __bit WPUC4 __at(0x1074);


extern volatile __bit WPUC5 __at(0x1075);


extern volatile __bit WPUC6 __at(0x1076);


extern volatile __bit WPUC7 __at(0x1077);


extern volatile __bit WR __at(0xCA9);


extern volatile __bit WREN __at(0xCAA);


extern volatile __bit WRERR __at(0xCAB);


extern volatile __bit WUE __at(0xCF9);


extern volatile __bit ZCD1EN __at(0x8E7);


extern volatile __bit ZCD1INTN __at(0x8E0);


extern volatile __bit ZCD1INTP __at(0x8E1);


extern volatile __bit ZCD1OUT __at(0x8E5);


extern volatile __bit ZCD1POL __at(0x8E4);


extern volatile __bit ZCDIE __at(0x49C);


extern volatile __bit ZCDIF __at(0x9C);


extern volatile __bit ZERO __at(0x1A);


extern volatile __bit Z_SHAD __at(0x7F22);


extern volatile __bit nBOR __at(0x4B0);


extern volatile __bit nPD __at(0x1B);


extern volatile __bit nPOR __at(0x4B1);


extern volatile __bit nRI __at(0x4B2);


extern volatile __bit nRMCLR __at(0x4B3);


extern volatile __bit nRWDT __at(0x4B4);


extern volatile __bit nT1SYNC __at(0xC2);


extern volatile __bit nTO __at(0x1C);


extern volatile __bit nWPUEN __at(0x4AF);


# 30 "/opt/microchip/xc8/v2.00/pic/include/pic.h"
#pragma intrinsic(__nop)
extern void __nop(void);

# 78
__attribute__((__unsupported__("The " "FLASH_READ" " macro function is no longer supported. Please use the MPLAB X MCC."))) unsigned char __flash_read(unsigned short addr);

__attribute__((__unsupported__("The " "FLASH_WRITE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_write(unsigned short addr, unsigned short data);

__attribute__((__unsupported__("The " "FLASH_ERASE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_erase(unsigned short addr);


# 91
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(unsigned long);

#pragma intrinsic(_delay3)
extern __nonreentrant void _delay3(unsigned char);

# 137
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;

# 13 "/opt/microchip/xc8/v2.00/pic/include/c90/stdbool.h"
typedef unsigned char bool;

# 13 "/opt/microchip/xc8/v2.00/pic/include/c90/stdint.h"
typedef signed char int8_t;

# 20
typedef signed int int16_t;

# 28
typedef __int24 int24_t;

# 36
typedef signed long int int32_t;

# 52
typedef unsigned char uint8_t;

# 58
typedef unsigned int uint16_t;

# 65
typedef __uint24 uint24_t;

# 72
typedef unsigned long int uint32_t;

# 88
typedef signed char int_least8_t;

# 96
typedef signed int int_least16_t;

# 109
typedef __int24 int_least24_t;

# 118
typedef signed long int int_least32_t;

# 136
typedef unsigned char uint_least8_t;

# 143
typedef unsigned int uint_least16_t;

# 154
typedef __uint24 uint_least24_t;

# 162
typedef unsigned long int uint_least32_t;

# 181
typedef signed char int_fast8_t;

# 188
typedef signed int int_fast16_t;

# 200
typedef __int24 int_fast24_t;

# 208
typedef signed long int int_fast32_t;

# 224
typedef unsigned char uint_fast8_t;

# 230
typedef unsigned int uint_fast16_t;

# 240
typedef __uint24 uint_fast24_t;

# 247
typedef unsigned long int uint_fast32_t;

# 268
typedef int32_t intmax_t;

# 282
typedef uint32_t uintmax_t;

# 289
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;

# 93 "mcc_generated_files/opa1.h"
void OPA1_Initialize(void);

# 58 "mcc_generated_files/opa1.c"
void OPA1_Initialize(void)
{

OPA1CON = 0xD2;
}

