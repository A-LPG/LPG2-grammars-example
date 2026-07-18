-- Keyword filter for AsmNasm (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.asm.nasm
%options template=KeywordTemplateF.gi
%options fp=AsmNasmKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    AAA
    AAD
    AADD
    AAM
    AAND
    AAS
    ABS
    ABSOLUTE
    ADC
    ADCX
    ADD
    ADDPD
    ADDPS
    ADDSD
    ADDSS
    ADDSUBPD
    ADDSUBPS
    ADOX
    AESDEC
    AESDECLAST
    AESENC
    AESENCLAST
    AESIMC
    AESKEYGENASSIST
    AH
    AL
    ALIGN
    ALL
    ALLOC
    AND
    ANDN
    ANDNPD
    ANDNPS
    ANDPD
    ANDPS
    ARPL
    AX
    AXOR
    BEXTR
    BH
    BITS
    BL
    BLCFILL
    BLCI
    BLCIC
    BLCMSK
    BLCS
    BLENDPD
    BLENDPS
    BLENDVPD
    BLENDVPS
    BLSFILL
    BLSI
    BLSIC
    BLSMSK
    BLSR
    BND
    BNDCL
    BNDCN
    BNDCU
    BNDLDX
    BNDMK
    BNDMOV
    BNDSTX
    BOUND
    BP
    BPL
    BRIEF
    BSF
    BSR
    BSS
    BSWAP
    BT
    BTC
    BTR
    BTS
    BX
    BYTE
    BZHI
    CALL
    CBW
    CDQ
    CDQE
    CH
    CL
    CLAC
    CLASS_
    CLC
    CLD
    CLDEMOTE
    CLFLUSH
    CLFLUSHOPT
    CLGI
    CLI
    CLRSSBSY
    CLTS
    CLUI
    CLWB
    CLZERO
    CMC
    CMOVA
    CMOVAE
    CMOVB
    CMOVBE
    CMOVC
    CMOVE
    CMOVGE
    CMOVL
    CMOVLE
    CMOVNA
    CMOVNAE
    CMOVNB
    CMOVNBE
    CMOVNC
    CMOVNE
    CMOVNG
    CMOVNGE
    CMOVNL
    CMOVNO
    CMOVNP
    CMOVNS
    CMOVNZ
    CMOVO
    CMOVP
    CMOVPE
    CMOVPO
    CMOVS
    CMOVZ
    CMP
    CMPEQPD
    CMPEQPS
    CMPEQSD
    CMPEQSS
    CMPLEPD
    CMPLEPS
    CMPLESD
    CMPLESS
    CMPLTPD
    CMPLTPS
    CMPLTSD
    CMPLTSS
    CMPNEQPD
    CMPNEQPS
    CMPNEQSD
    CMPNEQSS
    CMPNLEPD
    CMPNLEPS
    CMPNLESD
    CMPNLESS
    CMPNLTPD
    CMPNLTPS
    CMPNLTSD
    CMPNLTSS
    CMPNPXADD
    CMPNSXADD
    CMPNZXADD
    CMPORDPD
    CMPORDPS
    CMPORDSD
    CMPORDSS
    CMPOXADD
    CMPPD
    CMPPS
    CMPPXADD
    CMPSB
    CMPSD
    CMPSQ
    CMPSS
    CMPSW
    CMPSXADD
    CMPUNORDPD
    CMPUNORDPS
    CMPUNORDSD
    CMPUNORDSS
    CMPXCHG
    CMPZXADD
    CODE
    COMDAT
    COMISD
    COMISS
    COMMON
    CPU
    CPUID
    CQO
    CS
    CWD
    CWDE
    CX
    DAA
    DAS
    DATA
    DAZ
    DB
    DD
    DEBUG
    DEC
    DEFAULT
    DH
    DI
    DIL
    DIV
    DIVPD
    DIVPS
    DIVSD
    DIVSS
    DL
    DMINT
    DO
    DOWN
    DPPD
    DPPS
    DQ
    DS
    DT
    DUP
    DW
    DWORD
    DX
    DY
    DZ
    EAX
    EBP
    EBX
    ECX
    EDI
    EDX
    EIP
    EMMS
    ENCLS
    ENCLU
    ENCLV
    ENQCMD
    ENQCMDS
    ENTER
    EQU
    ES
    ESI
    ESP
    EXEC
    EXPORT
    EXTERN
    EXTRACTPS
    EXTRQ
    FABS
    FADD
    FADDP
    FAR
    FBLD
    FBSTP
    FCHS
    FCLEX
    FCMOVB
    FCMOVBE
    FCMOVE
    FCMOVNB
    FCMOVNBE
    FCMOVNE
    FCMOVNU
    FCMOVU
    FCOM
    FCOMI
    FCOMIP
    FCOMP
    FCOMPP
    FCOS
    FDECSTP
    FDISI
    FDIV
    FDIVP
    FDIVR
    FDIVRP
    FEMMS
    FENI
    FFREE
    FFREEP
    FIADD
    FICOM
    FICOMP
    FIDIV
    FIDIVR
    FILD
    FIMUL
    FINCSTP
    FINIT
    FIST
    FISTP
    FISTTP
    FISUB
    FISUBR
    FLAT
    FLD
    FLDCW
    FLDENV
    FLDPI
    FLDZ
    FLOAT_NAME
    FMUL
    FMULP
    FNCLEX
    FNDISI
    FNENI
    FNINIT
    FNOP
    FNSAVE
    FNSTCW
    FNSTENV
    FNSTSW
    FOLLOWS
    FPATAN
    FPREM
    FPTAN
    FRNDINT
    FRSTOR
    FS
    FSAVE
    FSCALE
    FSETPM
    FSIN
    FSINCOS
    FSQRT
    FST
    FSTCW
    FSTENV
    FSTP
    FSTSW
    FSUB
    FSUBP
    FSUBR
    FSUBRP
    FTST
    FUCOM
    FUCOMI
    FUCOMIP
    FUCOMP
    FUCOMPP
    FUNCTION
    FWAIT
    FXAM
    FXCH
    FXRSTOR
    FXSAVE
    FXTRACT
    GETSEC
    GLOBAL
    GROUP
    GS
    HADDPD
    HADDPS
    HIDDEN_
    HLT
    HRESET
    HSUBPD
    HSUBPS
    IBTS
    ICEBP
    IDIV
    IMPORT
    IMUL
    IN
    INC
    INCBIN
    INCSSPD
    INCSSPQ
    INFO
    INSB
    INSD
    INSERTPS
    INSERTQ
    INSW
    INT
    INTERNAL
    INTO
    INVD
    INVEPT
    INVLPG
    INVLPGA
    INVPCID
    INVVPID
    IP
    IRET
    IRETD
    IRETQ
    IRETW
    JA
    JAE
    JB
    JBE
    JC
    JCXZ
    JE
    JECXZ
    JG
    JGE
    JL
    JLE
    JMP
    JMPE
    JNA
    JNAE
    JNB
    JNBE
    JNC
    JNE
    JNG
    JNGE
    JNL
    JNLE
    JNO
    JNP
    JNS
    JNZ
    JO
    JP
    JPE
    JPO
    JRCXZ
    JS
    JZ
    KADD
    KADDB
    KADDD
    KADDQ
    KADDW
    KAND
    KANDB
    KANDD
    KANDN
    KANDNB
    KANDND
    KANDNQ
    KANDNW
    KANDQ
    KANDW
    KMOV
    KMOVB
    KMOVD
    KMOVQ
    KMOVW
    KNOT
    KNOTB
    KNOTD
    KNOTQ
    KNOTW
    KOR
    KORB
    KORD
    KORQ
    KORTEST
    KORTESTB
    KORTESTD
    KORTESTQ
    KORTESTW
    KORW
    KSHIFTL
    KSHIFTLB
    KSHIFTLD
    KSHIFTLQ
    KSHIFTLW
    KSHIFTR
    KSHIFTRB
    KSHIFTRD
    KSHIFTRQ
    KSHIFTRW
    KTEST
    KTESTB
    KTESTD
    KTESTQ
    KTESTW
    KUNPCK
    KUNPCKBW
    KUNPCKDQ
    KUNPCKWD
    KXNOR
    KXNORB
    KXNORD
    KXNORQ
    KXNORW
    KXOR
    KXORB
    KXORD
    KXORQ
    KXORW
    LAHF
    LAR
    LDDQU
    LDMXCSR
    LDS
    LDTILECFG
    LEA
    LEAVE
    LES
    LFENCE
    LFS
    LGDT
    LGS
    LIDT
    LLDT
    LLWPCB
    LMSW
    LOADALL
    LODSB
    LODSD
    LODSQ
    LODSW
    LOOP
    LOOPE
    LOOPNE
    LOOPNZ
    LOOPZ
    LSL
    LSS
    LTR
    LWPINS
    LWPVAL
    LZCNT
    MAP
    MASKMOVDQU
    MASKMOVQ
    MAXPD
    MAXPS
    MAXSD
    MAXSS
    MFENCE
    MINPD
    MINPS
    MINSD
    MINSS
    MIXED
    MONITOR
    MONITORX
    MONTMUL
    MOV
    MOVAPD
    MOVAPS
    MOVBE
    MOVD
    MOVDDUP
    MOVDIRI
    MOVDQA
    MOVDQU
    MOVHLPS
    MOVHPD
    MOVHPS
    MOVLHPS
    MOVLPD
    MOVLPS
    MOVMSKPD
    MOVMSKPS
    MOVNTDQ
    MOVNTDQA
    MOVNTI
    MOVNTPD
    MOVNTPS
    MOVNTQ
    MOVNTSD
    MOVNTSS
    MOVQ
    MOVSB
    MOVSD
    MOVSHDUP
    MOVSLDUP
    MOVSQ
    MOVSS
    MOVSW
    MOVSX
    MOVSXD
    MOVUPD
    MOVUPS
    MOVZX
    MPSADBW
    MUL
    MULPD
    MULPS
    MULSD
    MULSS
    MULX
    MWAIT
    MWAITX
    NEAR
    NEG
    NOALLOC
    NOBITS
    NOBND
    NODATA
    NODAZ
    NOEXEC
    NOP
    NOT
    NOTE
    NOWRITE
    OBJECT
    OR
    ORG
    ORPD
    ORPS
    OSABI
    OUT
    OUTSB
    OUTSD
    OUTSW
    OVERLAY
    OWORD
    PABSB
    PABSD
    PABSW
    PACKSSDW
    PACKSSWB
    PACKUSDW
    PACKUSWB
    PADDB
    PADDD
    PADDQ
    PADDSB
    PADDSIW
    PADDSW
    PADDUSB
    PADDUSW
    PADDW
    PALIGNR
    PAND
    PANDN
    PARM
    PAUSE
    PAVEB
    PAVGB
    PAVGUSB
    PAVGW
    PBLENDVB
    PBLENDW
    PCLMULHQHQDQ
    PCLMULHQLQDQ
    PCLMULLQHQDQ
    PCLMULLQLQDQ
    PCLMULQDQ
    PCMPEQB
    PCMPEQD
    PCMPEQQ
    PCMPEQW
    PCMPESTRI
    PCMPESTRM
    PCMPGTB
    PCMPGTD
    PCMPGTQ
    PCMPGTW
    PCMPISTRI
    PCMPISTRM
    PCOMMIT
    PCONFIG
    PDEP
    PDISTIB
    PEXT
    PEXTRB
    PEXTRD
    PEXTRQ
    PEXTRW
    PFACC
    PFADD
    PFCMPEQ
    PFCMPGE
    PFCMPGT
    PFMAX
    PFMIN
    PFMUL
    PFNACC
    PFPNACC
    PFRCP
    PFRCPV
    PFRSQRT
    PFRSQRTV
    PFSUB
    PFSUBR
    PHADDD
    PHADDSW
    PHADDW
    PHMINPOSUW
    PHSUBD
    PHSUBSW
    PHSUBW
    PINSRB
    PINSRD
    PINSRQ
    PINSRW
    PMACHRIW
    PMADDUBSW
    PMADDWD
    PMAGW
    PMAXSB
    PMAXSD
    PMAXSW
    PMAXUB
    PMAXUD
    PMAXUW
    PMINSB
    PMINSD
    PMINSW
    PMINUB
    PMINUD
    PMINUW
    PMOVMSKB
    PMOVSXBD
    PMOVSXBQ
    PMOVSXBW
    PMOVSXDQ
    PMOVSXWD
    PMOVSXWQ
    PMOVZXBD
    PMOVZXBQ
    PMOVZXBW
    PMOVZXDQ
    PMOVZXWD
    PMOVZXWQ
    PMULDQ
    PMULHRIW
    PMULHRSW
    PMULHRWA
    PMULHRWC
    PMULHUW
    PMULHW
    PMULLD
    PMULLW
    PMULUDQ
    PMVGEZB
    PMVLZB
    PMVNZB
    PMVZB
    POINTER
    POP
    POPA
    POPAD
    POPAW
    POPCNT
    POPF
    POPFD
    POPFQ
    POPFW
    POR
    PREFETCH
    PREFETCHNTA
    PREFETCHW
    PRIVATE
    PROGBITS
    PROTECTED
    PSADBW
    PSHUFB
    PSHUFD
    PSHUFHW
    PSHUFLW
    PSHUFW
    PSIGNB
    PSIGND
    PSIGNW
    PSLLD
    PSLLDQ
    PSLLQ
    PSLLW
    PSRAD
    PSRAW
    PSRLD
    PSRLDQ
    PSRLQ
    PSRLW
    PSUBB
    PSUBD
    PSUBQ
    PSUBSB
    PSUBSIW
    PSUBSW
    PSUBUSB
    PSUBUSW
    PSUBW
    PSWAPD
    PTEST
    PTWRITE
    PUBLIC
    PUNPCKHBW
    PUNPCKHDQ
    PUNPCKHQDQ
    PUNPCKHWD
    PUNPCKLBW
    PUNPCKLDQ
    PUNPCKLQDQ
    PUNPCKLWD
    PUSH
    PUSHA
    PUSHAD
    PUSHAW
    PUSHF
    PUSHFD
    PUSHFQ
    PUSHFW
    PVALIDATE
    PXOR
    QWORD
    RAX
    RBP
    RBX
    RCL
    RCPPS
    RCPSS
    RCR
    RCX
    RDATA
    RDFSBASE
    RDGSBASE
    RDI
    RDM
    RDMSR
    RDMSRLIST
    RDPID
    RDPKRU
    RDPMC
    RDRAND
    RDSEED
    RDSHR
    RDSSPD
    RDSSPQ
    RDTSC
    RDTSCP
    RDX
    REL
    REQUIRED
    RESB
    RESD
    RESIDENT
    RESO
    RESQ
    REST
    RESW
    RESY
    RESZ
    RET
    RETD
    RETF
    RETFD
    RETFQ
    RETFW
    RETN
    RETND
    RETNQ
    RETNW
    RETQ
    RETW
    RIP
    RMPADJUST
    ROL
    ROR
    RORX
    ROUNDPD
    ROUNDPS
    ROUNDSD
    ROUNDSS
    RSDC
    RSI
    RSLDT
    RSM
    RSP
    RSQRTPS
    RSQRTSS
    RSTORSSP
    RSTS
    SAFESEH
    SAHF
    SAL
    SALC
    SAR
    SARX
    SAVEPREVSSP
    SBB
    SCASB
    SCASD
    SCASQ
    SCASW
    SECTION
    SECTIONS
    SEGMENT
    SEGMENTS
    SENDUIPI
    SERIALIZE
    SETA
    SETAE
    SETB
    SETBE
    SETC
    SETE
    SETG
    SETGE
    SETL
    SETLE
    SETNA
    SETNAE
    SETNB
    SETNBE
    SETNC
    SETNE
    SETNG
    SETNGE
    SETNL
    SETNLE
    SETNO
    SETNP
    SETNS
    SETNZ
    SETO
    SETP
    SETPE
    SETPO
    SETS
    SETSSBSY
    SETZ
    SFENCE
    SGDT
    SHL
    SHLD
    SHLX
    SHR
    SHRD
    SHRX
    SHUFPD
    SHUFPS
    SI
    SIDT
    SIL
    SKINIT
    SLDT
    SLWPCB
    SMI
    SMINT
    SMINTOLD
    SMSW
    SP
    SPL
    SQRTPD
    SQRTPS
    SQRTSD
    SQRTSS
    SS
    STAC
    STACK
    START
    STATIC
    STC
    STD
    STGI
    STI
    STMXCSR
    STOSB
    STOSD
    STOSQ
    STOSW
    STR
    STRICT
    STRONG
    STTILECFG
    STUI
    SUB
    SUBPD
    SUBPS
    SUBSD
    SUBSS
    SVDC
    SVLDT
    SVTS
    SWAPGS
    SYMBOLS
    SYSCALL
    SYSENTER
    SYSEXIT
    SYSRET
    TDPBSSD
    TDPBSUD
    TDPBUSD
    TDPBUUD
    TEST
    TESTUI
    TEXT
    TILELOADD
    TILERELEASE
    TILESTORED
    TILEZERO
    TIMES
    TLS
    TPAUSE
    TWORD
    TZCNT
    TZMSK
    UCOMISD
    UCOMISS
    UIRET
    UMONITOR
    UMOV
    UMWAIT
    UNPCKHPD
    UNPCKHPS
    UNPCKLPD
    UNPCKLPS
    UP
    UPPERCASE
    VADDPD
    VADDPH
    VADDPS
    VADDSD
    VADDSH
    VADDSS
    VADDSUBPD
    VADDSUBPS
    VAESDEC
    VAESDECLAST
    VAESENC
    VAESENCLAST
    VAESIMC
    VAESKEYGENASSIST
    VALIGND
    VALIGNQ
    VANDNPD
    VANDNPS
    VANDPD
    VANDPS
    VBLENDMPD
    VBLENDMPS
    VBLENDPD
    VBLENDPS
    VBLENDVPD
    VBLENDVPS
    VBROADCASTSD
    VBROADCASTSS
    VCMPEQPD
    VCMPEQPS
    VCMPEQSD
    VCMPEQSS
    VCMPFALSEPD
    VCMPFALSEPS
    VCMPFALSESD
    VCMPFALSESS
    VCMPGEPD
    VCMPGEPS
    VCMPGESD
    VCMPGESS
    VCMPGTPD
    VCMPGTPS
    VCMPGTSD
    VCMPGTSS
    VCMPLEPD
    VCMPLEPS
    VCMPLESD
    VCMPLESS
    VCMPLTPD
    VCMPLTPS
    VCMPLTSD
    VCMPLTSS
    VCMPNEQPD
    VCMPNEQPS
    VCMPNEQSD
    VCMPNEQSS
    VCMPNGEPD
    VCMPNGEPS
    VCMPNGESD
    VCMPNGESS
    VCMPNGTPD
    VCMPNGTPS
    VCMPNGTSD
    VCMPNGTSS
    VCMPNLEPD
    VCMPNLEPS
    VCMPNLESD
    VCMPNLESS
    VCMPNLTPD
    VCMPNLTPS
    VCMPNLTSD
    VCMPNLTSS
    VCMPORDPD
    VCMPORDPS
    VCMPORDSD
    VCMPORDSS
    VCMPPD
    VCMPPH
    VCMPPS
    VCMPSD
    VCMPSH
    VCMPSS
    VCMPTRUEPD
    VCMPTRUEPS
    VCMPTRUESD
    VCMPTRUESS
    VCMPUNORDPD
    VCMPUNORDPS
    VCMPUNORDSD
    VCMPUNORDSS
    VCOMISD
    VCOMISH
    VCOMISS
    VCOMPRESSPD
    VCOMPRESSPS
    VDBPSADBW
    VDIVPD
    VDIVPH
    VDIVPS
    VDIVSD
    VDIVSH
    VDIVSS
    VDPPD
    VDPPS
    VENDSCALEPH
    VENDSCALESH
    VERR
    VERW
    VEXPANDPD
    VEXPANDPS
    VEXTRACTPS
    VFCMADDCPH
    VFCMADDCSH
    VFCMULCPCH
    VFCMULCSH
    VFIXUPIMMPD
    VFIXUPIMMPS
    VFIXUPIMMSD
    VFIXUPIMMSS
    VFMADDCPH
    VFMADDCSH
    VFMADDPD
    VFMADDPS
    VFMADDSD
    VFMADDSS
    VFMADDSUBPD
    VFMADDSUBPS
    VFMSUBADDPD
    VFMSUBADDPS
    VFMSUBPD
    VFMSUBPS
    VFMSUBSD
    VFMSUBSS
    VFMULCPCH
    VFMULCSH
    VFNMADDPD
    VFNMADDPS
    VFNMADDSD
    VFNMADDSS
    VFNMSUBPD
    VFNMSUBPS
    VFNMSUBSD
    VFNMSUBSS
    VFOLLOWS
    VFPCLASSPD
    VFPCLASSPH
    VFPCLASSPS
    VFPCLASSSD
    VFPCLASSSH
    VFPCLASSSS
    VFRCZPD
    VFRCZPS
    VFRCZSD
    VFRCZSS
    VGATHERDPD
    VGATHERDPS
    VGATHERQPD
    VGATHERQPS
    VGETEXPPD
    VGETEXPPH
    VGETEXPPS
    VGETEXPSD
    VGETEXPSH
    VGETEXPSS
    VGETMANTPD
    VGETMANTPH
    VGETMANTPS
    VGETMANTSD
    VGETMANTSH
    VGETMANTSS
    VGETMAXPH
    VGETMAXSH
    VGETMINPH
    VGETMINSH
    VHADDPD
    VHADDPS
    VHSUBPD
    VHSUBPS
    VINSERTPS
    VLDDQU
    VLDMXCSR
    VLDQQU
    VMASKMOVDQU
    VMASKMOVPD
    VMASKMOVPS
    VMAXPD
    VMAXPS
    VMAXSD
    VMAXSS
    VMCALL
    VMCLEAR
    VMFUNC
    VMGEXIT
    VMINPD
    VMINPS
    VMINSD
    VMINSS
    VMLAUNCH
    VMLOAD
    VMMCALL
    VMOVAPD
    VMOVAPS
    VMOVD
    VMOVDDUP
    VMOVDQA
    VMOVDQU
    VMOVHLPS
    VMOVHPD
    VMOVHPS
    VMOVLHPS
    VMOVLPD
    VMOVLPS
    VMOVMSKPD
    VMOVMSKPS
    VMOVNTDQ
    VMOVNTDQA
    VMOVNTPD
    VMOVNTPS
    VMOVNTQQ
    VMOVQ
    VMOVQQA
    VMOVQQU
    VMOVSD
    VMOVSH
    VMOVSHDUP
    VMOVSLDUP
    VMOVSS
    VMOVUPD
    VMOVUPS
    VMOVW
    VMPSADBW
    VMPTRLD
    VMPTRST
    VMREAD
    VMRESUME
    VMRUN
    VMSAVE
    VMULPD
    VMULPH
    VMULPS
    VMULSD
    VMULSH
    VMULSS
    VMWRITE
    VMXOFF
    VMXON
    VORPD
    VORPS
    VPABSB
    VPABSD
    VPABSQ
    VPABSW
    VPACKSSDW
    VPACKSSWB
    VPACKUSDW
    VPACKUSWB
    VPADDB
    VPADDD
    VPADDQ
    VPADDSB
    VPADDSW
    VPADDUSB
    VPADDUSW
    VPADDW
    VPALIGNR
    VPAND
    VPANDD
    VPANDN
    VPANDND
    VPANDNQ
    VPANDQ
    VPAVGB
    VPAVGW
    VPBLENDD
    VPBLENDMB
    VPBLENDMD
    VPBLENDMQ
    VPBLENDMW
    VPBLENDVB
    VPBLENDW
    VPBROADCASTB
    VPBROADCASTD
    VPBROADCASTQ
    VPBROADCASTW
    VPCLMULHQHQDQ
    VPCLMULHQLQDQ
    VPCLMULLQHQDQ
    VPCLMULLQLQDQ
    VPCLMULQDQ
    VPCMOV
    VPCMPB
    VPCMPD
    VPCMPEQB
    VPCMPEQD
    VPCMPEQQ
    VPCMPEQUB
    VPCMPEQUD
    VPCMPEQUQ
    VPCMPEQUW
    VPCMPEQW
    VPCMPESTRI
    VPCMPESTRM
    VPCMPGEB
    VPCMPGED
    VPCMPGEQ
    VPCMPGEUB
    VPCMPGEUD
    VPCMPGEUQ
    VPCMPGEUW
    VPCMPGEW
    VPCMPGTB
    VPCMPGTD
    VPCMPGTQ
    VPCMPGTUB
    VPCMPGTUD
    VPCMPGTUQ
    VPCMPGTUW
    VPCMPGTW
    VPCMPISTRI
    VPCMPISTRM
    VPCMPLEB
    VPCMPLED
    VPCMPLEQ
    VPCMPLEUB
    VPCMPLEUD
    VPCMPLEUQ
    VPCMPLEUW
    VPCMPLEW
    VPCMPLTB
    VPCMPLTD
    VPCMPLTQ
    VPCMPLTUB
    VPCMPLTUD
    VPCMPLTUQ
    VPCMPLTUW
    VPCMPLTW
    VPCMPNEQB
    VPCMPNEQD
    VPCMPNEQQ
    VPCMPNEQUB
    VPCMPNEQUD
    VPCMPNEQUQ
    VPCMPNEQUW
    VPCMPNEQW
    VPCMPNGTB
    VPCMPNGTD
    VPCMPNGTQ
    VPCMPNGTUB
    VPCMPNGTUD
    VPCMPNGTUQ
    VPCMPNGTUW
    VPCMPNGTW
    VPCMPNLEB
    VPCMPNLED
    VPCMPNLEQ
    VPCMPNLEUB
    VPCMPNLEUD
    VPCMPNLEUQ
    VPCMPNLEUW
    VPCMPNLEW
    VPCMPNLTB
    VPCMPNLTD
    VPCMPNLTQ
    VPCMPNLTUB
    VPCMPNLTUD
    VPCMPNLTUQ
    VPCMPNLTUW
    VPCMPNLTW
    VPCMPQ
    VPCMPUB
    VPCMPUD
    VPCMPUQ
    VPCMPUW
    VPCMPW
    VPCOMB
    VPCOMD
    VPCOMPRESSB
    VPCOMPRESSD
    VPCOMPRESSQ
    VPCOMPRESSW
    VPCOMQ
    VPCOMUB
    VPCOMUD
    VPCOMUQ
    VPCOMUW
    VPCOMW
    VPCONFLICTD
    VPCONFLICTQ
    VPDPBSSD
    VPDPBSSDS
    VPDPBSUD
    VPDPBSUDS
    VPDPBUSD
    VPDPBUSDS
    VPDPBUUD
    VPDPBUUDS
    VPDPWSSD
    VPDPWSSDS
    VPERMB
    VPERMD
    VPERMILPD
    VPERMILPS
    VPERMPD
    VPERMPS
    VPERMQ
    VPERMW
    VPEXPANDB
    VPEXPANDD
    VPEXPANDQ
    VPEXPANDW
    VPEXTRB
    VPEXTRD
    VPEXTRQ
    VPEXTRW
    VPGATHERDD
    VPGATHERDQ
    VPGATHERQD
    VPGATHERQQ
    VPHADDBD
    VPHADDBQ
    VPHADDBW
    VPHADDD
    VPHADDDQ
    VPHADDSW
    VPHADDUBD
    VPHADDUBQ
    VPHADDUBW
    VPHADDUDQ
    VPHADDUWD
    VPHADDUWQ
    VPHADDW
    VPHADDWD
    VPHADDWQ
    VPHMINPOSUW
    VPHSUBBW
    VPHSUBD
    VPHSUBDQ
    VPHSUBSW
    VPHSUBW
    VPHSUBWD
    VPINSRB
    VPINSRD
    VPINSRQ
    VPINSRW
    VPLZCNTD
    VPLZCNTQ
    VPMACSDD
    VPMACSDQH
    VPMACSDQL
    VPMACSSDD
    VPMACSSDQH
    VPMACSSDQL
    VPMACSSWD
    VPMACSSWW
    VPMACSWD
    VPMACSWW
    VPMADCSSWD
    VPMADCSWD
    VPMADDUBSW
    VPMADDWD
    VPMASKMOVD
    VPMASKMOVQ
    VPMAXSB
    VPMAXSD
    VPMAXSQ
    VPMAXSW
    VPMAXUB
    VPMAXUD
    VPMAXUQ
    VPMAXUW
    VPMINSB
    VPMINSD
    VPMINSQ
    VPMINSW
    VPMINUB
    VPMINUD
    VPMINUQ
    VPMINUW
    VPMOVDB
    VPMOVDW
    VPMOVMSKB
    VPMOVQB
    VPMOVQD
    VPMOVQW
    VPMOVSDB
    VPMOVSDW
    VPMOVSQB
    VPMOVSQD
    VPMOVSQW
    VPMOVSWB
    VPMOVSXBD
    VPMOVSXBQ
    VPMOVSXBW
    VPMOVSXDQ
    VPMOVSXWD
    VPMOVSXWQ
    VPMOVUSDB
    VPMOVUSDW
    VPMOVUSQB
    VPMOVUSQD
    VPMOVUSQW
    VPMOVUSWB
    VPMOVWB
    VPMOVZXBD
    VPMOVZXBQ
    VPMOVZXBW
    VPMOVZXDQ
    VPMOVZXWD
    VPMOVZXWQ
    VPMULDQ
    VPMULHRSW
    VPMULHUW
    VPMULHW
    VPMULLD
    VPMULLQ
    VPMULLW
    VPMULTISHIFTQB
    VPMULUDQ
    VPOPCNTB
    VPOPCNTD
    VPOPCNTQ
    VPOPCNTW
    VPOR
    VPORD
    VPORQ
    VPPERM
    VPROLD
    VPROLQ
    VPROLVD
    VPROLVQ
    VPRORD
    VPRORQ
    VPRORVD
    VPRORVQ
    VPROTB
    VPROTD
    VPROTQ
    VPROTW
    VPSADBW
    VPSCATTERDD
    VPSCATTERDQ
    VPSCATTERQD
    VPSCATTERQQ
    VPSHAB
    VPSHAD
    VPSHAQ
    VPSHAW
    VPSHLB
    VPSHLD
    VPSHLDD
    VPSHLDQ
    VPSHLDVD
    VPSHLDVQ
    VPSHLDVW
    VPSHLDW
    VPSHLQ
    VPSHLW
    VPSHRDD
    VPSHRDQ
    VPSHRDVD
    VPSHRDVQ
    VPSHRDVW
    VPSHRDW
    VPSHUFB
    VPSHUFBITQMB
    VPSHUFD
    VPSHUFHW
    VPSHUFLW
    VPSIGNB
    VPSIGND
    VPSIGNW
    VPSLLD
    VPSLLDQ
    VPSLLQ
    VPSLLVD
    VPSLLVQ
    VPSLLVW
    VPSLLW
    VPSRAD
    VPSRAQ
    VPSRAVD
    VPSRAVQ
    VPSRAVW
    VPSRAW
    VPSRLD
    VPSRLDQ
    VPSRLQ
    VPSRLVD
    VPSRLVQ
    VPSRLVW
    VPSRLW
    VPSUBB
    VPSUBD
    VPSUBQ
    VPSUBSB
    VPSUBSW
    VPSUBUSB
    VPSUBUSW
    VPSUBW
    VPTERNLOGD
    VPTERNLOGQ
    VPTEST
    VPTESTMB
    VPTESTMD
    VPTESTMQ
    VPTESTMW
    VPTESTNMB
    VPTESTNMD
    VPTESTNMQ
    VPTESTNMW
    VPUNPCKHBW
    VPUNPCKHDQ
    VPUNPCKHQDQ
    VPUNPCKHWD
    VPUNPCKLBW
    VPUNPCKLDQ
    VPUNPCKLQDQ
    VPUNPCKLWD
    VPXOR
    VPXORD
    VPXORQ
    VRANGEPD
    VRANGEPS
    VRANGESD
    VRANGESS
    VRCPPH
    VRCPPS
    VRCPSH
    VRCPSS
    VREDUCEPD
    VREDUCEPH
    VREDUCEPS
    VREDUCESD
    VREDUCESH
    VREDUCESS
    VRNDSCALEPD
    VRNDSCALEPS
    VRNDSCALESD
    VRNDSCALESS
    VROUNDPD
    VROUNDPS
    VROUNDSD
    VROUNDSS
    VRSQRTPH
    VRSQRTPS
    VRSQRTSH
    VRSQRTSS
    VSCALEFPD
    VSCALEFPH
    VSCALEFPS
    VSCALEFSD
    VSCALEFSH
    VSCALEFSS
    VSCATTERDPD
    VSCATTERDPS
    VSCATTERQPD
    VSCATTERQPS
    VSHUFPD
    VSHUFPS
    VSQRTPD
    VSQRTPH
    VSQRTPS
    VSQRTSD
    VSQRTSH
    VSQRTSS
    VSTART
    VSTMXCSR
    VSUBPD
    VSUBPH
    VSUBPS
    VSUBSD
    VSUBSH
    VSUBSS
    VTESTPD
    VTESTPS
    VUCOMISD
    VUCOMISH
    VUCOMISS
    VUNPCKHPD
    VUNPCKHPS
    VUNPCKLPD
    VUNPCKLPS
    VXORPD
    VXORPS
    VZEROALL
    VZEROUPPER
    WARNING
    WBINVD
    WBNOINVD
    WEAK
    WORD
    WRFSBASE
    WRGSBASE
    WRITE
    WRMSR
    WRMSRLIST
    WRMSRNS
    WRPKRU
    WRSHR
    WRSSD
    WRSSQ
    WRT
    WRUSSD
    WRUSSQ
    XABORT
    XADD
    XBEGIN
    XBTS
    XCHG
    XCRYPTCBC
    XCRYPTCFB
    XCRYPTCTR
    XCRYPTECB
    XCRYPTOFB
    XEND
    XGETBV
    XLAT
    XLATB
    XOR
    XORPD
    XORPS
    XRESLDTRK
    XRSTOR
    XRSTORS
    XSAVE
    XSAVEC
    XSAVEOPT
    XSAVES
    XSETBV
    XSTORE
    XSUSLDTRK
    XTEST
    YWORD
    ZERO
    ZEROFILL
    ZWORD
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= v a e s k e y g e n a s s i s t /.$setResult($_VAESKEYGENASSIST);./
    Keyword ::= a e s k e y g e n a s s i s t /.$setResult($_AESKEYGENASSIST);./
    Keyword ::= v p m u l t i s h i f t q b /.$setResult($_VPMULTISHIFTQB);./
    Keyword ::= v p c l m u l h q h q d q /.$setResult($_VPCLMULHQHQDQ);./
    Keyword ::= v p c l m u l h q l q d q /.$setResult($_VPCLMULHQLQDQ);./
    Keyword ::= v p c l m u l l q h q d q /.$setResult($_VPCLMULLQHQDQ);./
    Keyword ::= v p c l m u l l q l q d q /.$setResult($_VPCLMULLQLQDQ);./
    Keyword ::= p c l m u l h q h q d q /.$setResult($_PCLMULHQHQDQ);./
    Keyword ::= p c l m u l h q l q d q /.$setResult($_PCLMULHQLQDQ);./
    Keyword ::= p c l m u l l q h q d q /.$setResult($_PCLMULLQHQDQ);./
    Keyword ::= p c l m u l l q l q d q /.$setResult($_PCLMULLQLQDQ);./
    Keyword ::= v b r o a d c a s t s d /.$setResult($_VBROADCASTSD);./
    Keyword ::= v b r o a d c a s t s s /.$setResult($_VBROADCASTSS);./
    Keyword ::= v p b r o a d c a s t b /.$setResult($_VPBROADCASTB);./
    Keyword ::= v p b r o a d c a s t d /.$setResult($_VPBROADCASTD);./
    Keyword ::= v p b r o a d c a s t q /.$setResult($_VPBROADCASTQ);./
    Keyword ::= v p b r o a d c a s t w /.$setResult($_VPBROADCASTW);./
    Keyword ::= v p s h u f b i t q m b /.$setResult($_VPSHUFBITQMB);./
    Keyword ::= p r e f e t c h n t a /.$setResult($_PREFETCHNTA);./
    Keyword ::= s a v e p r e v s s p /.$setResult($_SAVEPREVSSP);./
    Keyword ::= t i l e r e l e a s e /.$setResult($_TILERELEASE);./
    Keyword ::= v a e s d e c l a s t /.$setResult($_VAESDECLAST);./
    Keyword ::= v a e s e n c l a s t /.$setResult($_VAESENCLAST);./
    Keyword ::= v c m p f a l s e p d /.$setResult($_VCMPFALSEPD);./
    Keyword ::= v c m p f a l s e p s /.$setResult($_VCMPFALSEPS);./
    Keyword ::= v c m p f a l s e s d /.$setResult($_VCMPFALSESD);./
    Keyword ::= v c m p f a l s e s s /.$setResult($_VCMPFALSESS);./
    Keyword ::= v c m p u n o r d p d /.$setResult($_VCMPUNORDPD);./
    Keyword ::= v c m p u n o r d p s /.$setResult($_VCMPUNORDPS);./
    Keyword ::= v c m p u n o r d s d /.$setResult($_VCMPUNORDSD);./
    Keyword ::= v c m p u n o r d s s /.$setResult($_VCMPUNORDSS);./
    Keyword ::= v c o m p r e s s p d /.$setResult($_VCOMPRESSPD);./
    Keyword ::= v c o m p r e s s p s /.$setResult($_VCOMPRESSPS);./
    Keyword ::= v e n d s c a l e p h /.$setResult($_VENDSCALEPH);./
    Keyword ::= v e n d s c a l e s h /.$setResult($_VENDSCALESH);./
    Keyword ::= v f i x u p i m m p d /.$setResult($_VFIXUPIMMPD);./
    Keyword ::= v f i x u p i m m p s /.$setResult($_VFIXUPIMMPS);./
    Keyword ::= v f i x u p i m m s d /.$setResult($_VFIXUPIMMSD);./
    Keyword ::= v f i x u p i m m s s /.$setResult($_VFIXUPIMMSS);./
    Keyword ::= v f m a d d s u b p d /.$setResult($_VFMADDSUBPD);./
    Keyword ::= v f m a d d s u b p s /.$setResult($_VFMADDSUBPS);./
    Keyword ::= v f m s u b a d d p d /.$setResult($_VFMSUBADDPD);./
    Keyword ::= v f m s u b a d d p s /.$setResult($_VFMSUBADDPS);./
    Keyword ::= v m a s k m o v d q u /.$setResult($_VMASKMOVDQU);./
    Keyword ::= v p c o m p r e s s b /.$setResult($_VPCOMPRESSB);./
    Keyword ::= v p c o m p r e s s d /.$setResult($_VPCOMPRESSD);./
    Keyword ::= v p c o m p r e s s q /.$setResult($_VPCOMPRESSQ);./
    Keyword ::= v p c o m p r e s s w /.$setResult($_VPCOMPRESSW);./
    Keyword ::= v p c o n f l i c t d /.$setResult($_VPCONFLICTD);./
    Keyword ::= v p c o n f l i c t q /.$setResult($_VPCONFLICTQ);./
    Keyword ::= v p h m i n p o s u w /.$setResult($_VPHMINPOSUW);./
    Keyword ::= v p s c a t t e r d d /.$setResult($_VPSCATTERDD);./
    Keyword ::= v p s c a t t e r d q /.$setResult($_VPSCATTERDQ);./
    Keyword ::= v p s c a t t e r q d /.$setResult($_VPSCATTERQD);./
    Keyword ::= v p s c a t t e r q q /.$setResult($_VPSCATTERQQ);./
    Keyword ::= v p u n p c k h q d q /.$setResult($_VPUNPCKHQDQ);./
    Keyword ::= v p u n p c k l q d q /.$setResult($_VPUNPCKLQDQ);./
    Keyword ::= v r n d s c a l e p d /.$setResult($_VRNDSCALEPD);./
    Keyword ::= v r n d s c a l e p s /.$setResult($_VRNDSCALEPS);./
    Keyword ::= v r n d s c a l e s d /.$setResult($_VRNDSCALESD);./
    Keyword ::= v r n d s c a l e s s /.$setResult($_VRNDSCALESS);./
    Keyword ::= v s c a t t e r d p d /.$setResult($_VSCATTERDPD);./
    Keyword ::= v s c a t t e r d p s /.$setResult($_VSCATTERDPS);./
    Keyword ::= v s c a t t e r q p d /.$setResult($_VSCATTERQPD);./
    Keyword ::= v s c a t t e r q p s /.$setResult($_VSCATTERQPS);./
    Keyword ::= a e s d e c l a s t /.$setResult($_AESDECLAST);./
    Keyword ::= a e s e n c l a s t /.$setResult($_AESENCLAST);./
    Keyword ::= c l f l u s h o p t /.$setResult($_CLFLUSHOPT);./
    Keyword ::= c m p u n o r d p d /.$setResult($_CMPUNORDPD);./
    Keyword ::= c m p u n o r d p s /.$setResult($_CMPUNORDPS);./
    Keyword ::= c m p u n o r d s d /.$setResult($_CMPUNORDSD);./
    Keyword ::= c m p u n o r d s s /.$setResult($_CMPUNORDSS);./
    Keyword ::= m a s k m o v d q u /.$setResult($_MASKMOVDQU);./
    Keyword ::= p h m i n p o s u w /.$setResult($_PHMINPOSUW);./
    Keyword ::= p u n p c k h q d q /.$setResult($_PUNPCKHQDQ);./
    Keyword ::= p u n p c k l q d q /.$setResult($_PUNPCKLQDQ);./
    Keyword ::= t i l e s t o r e d /.$setResult($_TILESTORED);./
    Keyword ::= v c m p t r u e p d /.$setResult($_VCMPTRUEPD);./
    Keyword ::= v c m p t r u e p s /.$setResult($_VCMPTRUEPS);./
    Keyword ::= v c m p t r u e s d /.$setResult($_VCMPTRUESD);./
    Keyword ::= v c m p t r u e s s /.$setResult($_VCMPTRUESS);./
    Keyword ::= v e x t r a c t p s /.$setResult($_VEXTRACTPS);./
    Keyword ::= v f c m a d d c p h /.$setResult($_VFCMADDCPH);./
    Keyword ::= v f c m a d d c s h /.$setResult($_VFCMADDCSH);./
    Keyword ::= v f c m u l c p c h /.$setResult($_VFCMULCPCH);./
    Keyword ::= v f p c l a s s p d /.$setResult($_VFPCLASSPD);./
    Keyword ::= v f p c l a s s p h /.$setResult($_VFPCLASSPH);./
    Keyword ::= v f p c l a s s p s /.$setResult($_VFPCLASSPS);./
    Keyword ::= v f p c l a s s s d /.$setResult($_VFPCLASSSD);./
    Keyword ::= v f p c l a s s s h /.$setResult($_VFPCLASSSH);./
    Keyword ::= v f p c l a s s s s /.$setResult($_VFPCLASSSS);./
    Keyword ::= v g a t h e r d p d /.$setResult($_VGATHERDPD);./
    Keyword ::= v g a t h e r d p s /.$setResult($_VGATHERDPS);./
    Keyword ::= v g a t h e r q p d /.$setResult($_VGATHERQPD);./
    Keyword ::= v g a t h e r q p s /.$setResult($_VGATHERQPS);./
    Keyword ::= v g e t m a n t p d /.$setResult($_VGETMANTPD);./
    Keyword ::= v g e t m a n t p h /.$setResult($_VGETMANTPH);./
    Keyword ::= v g e t m a n t p s /.$setResult($_VGETMANTPS);./
    Keyword ::= v g e t m a n t s d /.$setResult($_VGETMANTSD);./
    Keyword ::= v g e t m a n t s h /.$setResult($_VGETMANTSH);./
    Keyword ::= v g e t m a n t s s /.$setResult($_VGETMANTSS);./
    Keyword ::= v m a s k m o v p d /.$setResult($_VMASKMOVPD);./
    Keyword ::= v m a s k m o v p s /.$setResult($_VMASKMOVPS);./
    Keyword ::= v p c l m u l q d q /.$setResult($_VPCLMULQDQ);./
    Keyword ::= v p c m p e s t r i /.$setResult($_VPCMPESTRI);./
    Keyword ::= v p c m p e s t r m /.$setResult($_VPCMPESTRM);./
    Keyword ::= v p c m p i s t r i /.$setResult($_VPCMPISTRI);./
    Keyword ::= v p c m p i s t r m /.$setResult($_VPCMPISTRM);./
    Keyword ::= v p c m p n e q u b /.$setResult($_VPCMPNEQUB);./
    Keyword ::= v p c m p n e q u d /.$setResult($_VPCMPNEQUD);./
    Keyword ::= v p c m p n e q u q /.$setResult($_VPCMPNEQUQ);./
    Keyword ::= v p c m p n e q u w /.$setResult($_VPCMPNEQUW);./
    Keyword ::= v p c m p n g t u b /.$setResult($_VPCMPNGTUB);./
    Keyword ::= v p c m p n g t u d /.$setResult($_VPCMPNGTUD);./
    Keyword ::= v p c m p n g t u q /.$setResult($_VPCMPNGTUQ);./
    Keyword ::= v p c m p n g t u w /.$setResult($_VPCMPNGTUW);./
    Keyword ::= v p c m p n l e u b /.$setResult($_VPCMPNLEUB);./
    Keyword ::= v p c m p n l e u d /.$setResult($_VPCMPNLEUD);./
    Keyword ::= v p c m p n l e u q /.$setResult($_VPCMPNLEUQ);./
    Keyword ::= v p c m p n l e u w /.$setResult($_VPCMPNLEUW);./
    Keyword ::= v p c m p n l t u b /.$setResult($_VPCMPNLTUB);./
    Keyword ::= v p c m p n l t u d /.$setResult($_VPCMPNLTUD);./
    Keyword ::= v p c m p n l t u q /.$setResult($_VPCMPNLTUQ);./
    Keyword ::= v p c m p n l t u w /.$setResult($_VPCMPNLTUW);./
    Keyword ::= v p g a t h e r d d /.$setResult($_VPGATHERDD);./
    Keyword ::= v p g a t h e r d q /.$setResult($_VPGATHERDQ);./
    Keyword ::= v p g a t h e r q d /.$setResult($_VPGATHERQD);./
    Keyword ::= v p g a t h e r q q /.$setResult($_VPGATHERQQ);./
    Keyword ::= v p m a c s s d q h /.$setResult($_VPMACSSDQH);./
    Keyword ::= v p m a c s s d q l /.$setResult($_VPMACSSDQL);./
    Keyword ::= v p m a d c s s w d /.$setResult($_VPMADCSSWD);./
    Keyword ::= v p m a d d u b s w /.$setResult($_VPMADDUBSW);./
    Keyword ::= v p m a s k m o v d /.$setResult($_VPMASKMOVD);./
    Keyword ::= v p m a s k m o v q /.$setResult($_VPMASKMOVQ);./
    Keyword ::= v p t e r n l o g d /.$setResult($_VPTERNLOGD);./
    Keyword ::= v p t e r n l o g q /.$setResult($_VPTERNLOGQ);./
    Keyword ::= v p u n p c k h b w /.$setResult($_VPUNPCKHBW);./
    Keyword ::= v p u n p c k h d q /.$setResult($_VPUNPCKHDQ);./
    Keyword ::= v p u n p c k h w d /.$setResult($_VPUNPCKHWD);./
    Keyword ::= v p u n p c k l b w /.$setResult($_VPUNPCKLBW);./
    Keyword ::= v p u n p c k l d q /.$setResult($_VPUNPCKLDQ);./
    Keyword ::= v p u n p c k l w d /.$setResult($_VPUNPCKLWD);./
    Keyword ::= v z e r o u p p e r /.$setResult($_VZEROUPPER);./
    Keyword ::= c m p n p x a d d /.$setResult($_CMPNPXADD);./
    Keyword ::= c m p n s x a d d /.$setResult($_CMPNSXADD);./
    Keyword ::= c m p n z x a d d /.$setResult($_CMPNZXADD);./
    Keyword ::= e x t r a c t p s /.$setResult($_EXTRACTPS);./
    Keyword ::= l d t i l e c f g /.$setResult($_LDTILECFG);./
    Keyword ::= p c l m u l q d q /.$setResult($_PCLMULQDQ);./
    Keyword ::= p c m p e s t r i /.$setResult($_PCMPESTRI);./
    Keyword ::= p c m p e s t r m /.$setResult($_PCMPESTRM);./
    Keyword ::= p c m p i s t r i /.$setResult($_PCMPISTRI);./
    Keyword ::= p c m p i s t r m /.$setResult($_PCMPISTRM);./
    Keyword ::= p m a d d u b s w /.$setResult($_PMADDUBSW);./
    Keyword ::= p r e f e t c h w /.$setResult($_PREFETCHW);./
    Keyword ::= p r o t e c t e d /.$setResult($_PROTECTED);./
    Keyword ::= p u n p c k h b w /.$setResult($_PUNPCKHBW);./
    Keyword ::= p u n p c k h d q /.$setResult($_PUNPCKHDQ);./
    Keyword ::= p u n p c k h w d /.$setResult($_PUNPCKHWD);./
    Keyword ::= p u n p c k l b w /.$setResult($_PUNPCKLBW);./
    Keyword ::= p u n p c k l d q /.$setResult($_PUNPCKLDQ);./
    Keyword ::= p u n p c k l w d /.$setResult($_PUNPCKLWD);./
    Keyword ::= p v a l i d a t e /.$setResult($_PVALIDATE);./
    Keyword ::= r d m s r l i s t /.$setResult($_RDMSRLIST);./
    Keyword ::= r m p a d j u s t /.$setResult($_RMPADJUST);./
    Keyword ::= s e r i a l i z e /.$setResult($_SERIALIZE);./
    Keyword ::= s t t i l e c f g /.$setResult($_STTILECFG);./
    Keyword ::= t i l e l o a d d /.$setResult($_TILELOADD);./
    Keyword ::= u p p e r c a s e /.$setResult($_UPPERCASE);./
    Keyword ::= v a d d s u b p d /.$setResult($_VADDSUBPD);./
    Keyword ::= v a d d s u b p s /.$setResult($_VADDSUBPS);./
    Keyword ::= v b l e n d m p d /.$setResult($_VBLENDMPD);./
    Keyword ::= v b l e n d m p s /.$setResult($_VBLENDMPS);./
    Keyword ::= v b l e n d v p d /.$setResult($_VBLENDVPD);./
    Keyword ::= v b l e n d v p s /.$setResult($_VBLENDVPS);./
    Keyword ::= v c m p n e q p d /.$setResult($_VCMPNEQPD);./
    Keyword ::= v c m p n e q p s /.$setResult($_VCMPNEQPS);./
    Keyword ::= v c m p n e q s d /.$setResult($_VCMPNEQSD);./
    Keyword ::= v c m p n e q s s /.$setResult($_VCMPNEQSS);./
    Keyword ::= v c m p n g e p d /.$setResult($_VCMPNGEPD);./
    Keyword ::= v c m p n g e p s /.$setResult($_VCMPNGEPS);./
    Keyword ::= v c m p n g e s d /.$setResult($_VCMPNGESD);./
    Keyword ::= v c m p n g e s s /.$setResult($_VCMPNGESS);./
    Keyword ::= v c m p n g t p d /.$setResult($_VCMPNGTPD);./
    Keyword ::= v c m p n g t p s /.$setResult($_VCMPNGTPS);./
    Keyword ::= v c m p n g t s d /.$setResult($_VCMPNGTSD);./
    Keyword ::= v c m p n g t s s /.$setResult($_VCMPNGTSS);./
    Keyword ::= v c m p n l e p d /.$setResult($_VCMPNLEPD);./
    Keyword ::= v c m p n l e p s /.$setResult($_VCMPNLEPS);./
    Keyword ::= v c m p n l e s d /.$setResult($_VCMPNLESD);./
    Keyword ::= v c m p n l e s s /.$setResult($_VCMPNLESS);./
    Keyword ::= v c m p n l t p d /.$setResult($_VCMPNLTPD);./
    Keyword ::= v c m p n l t p s /.$setResult($_VCMPNLTPS);./
    Keyword ::= v c m p n l t s d /.$setResult($_VCMPNLTSD);./
    Keyword ::= v c m p n l t s s /.$setResult($_VCMPNLTSS);./
    Keyword ::= v c m p o r d p d /.$setResult($_VCMPORDPD);./
    Keyword ::= v c m p o r d p s /.$setResult($_VCMPORDPS);./
    Keyword ::= v c m p o r d s d /.$setResult($_VCMPORDSD);./
    Keyword ::= v c m p o r d s s /.$setResult($_VCMPORDSS);./
    Keyword ::= v d b p s a d b w /.$setResult($_VDBPSADBW);./
    Keyword ::= v e x p a n d p d /.$setResult($_VEXPANDPD);./
    Keyword ::= v e x p a n d p s /.$setResult($_VEXPANDPS);./
    Keyword ::= v f c m u l c s h /.$setResult($_VFCMULCSH);./
    Keyword ::= v f m a d d c p h /.$setResult($_VFMADDCPH);./
    Keyword ::= v f m a d d c s h /.$setResult($_VFMADDCSH);./
    Keyword ::= v f m u l c p c h /.$setResult($_VFMULCPCH);./
    Keyword ::= v f n m a d d p d /.$setResult($_VFNMADDPD);./
    Keyword ::= v f n m a d d p s /.$setResult($_VFNMADDPS);./
    Keyword ::= v f n m a d d s d /.$setResult($_VFNMADDSD);./
    Keyword ::= v f n m a d d s s /.$setResult($_VFNMADDSS);./
    Keyword ::= v f n m s u b p d /.$setResult($_VFNMSUBPD);./
    Keyword ::= v f n m s u b p s /.$setResult($_VFNMSUBPS);./
    Keyword ::= v f n m s u b s d /.$setResult($_VFNMSUBSD);./
    Keyword ::= v f n m s u b s s /.$setResult($_VFNMSUBSS);./
    Keyword ::= v g e t e x p p d /.$setResult($_VGETEXPPD);./
    Keyword ::= v g e t e x p p h /.$setResult($_VGETEXPPH);./
    Keyword ::= v g e t e x p p s /.$setResult($_VGETEXPPS);./
    Keyword ::= v g e t e x p s d /.$setResult($_VGETEXPSD);./
    Keyword ::= v g e t e x p s h /.$setResult($_VGETEXPSH);./
    Keyword ::= v g e t e x p s s /.$setResult($_VGETEXPSS);./
    Keyword ::= v g e t m a x p h /.$setResult($_VGETMAXPH);./
    Keyword ::= v g e t m a x s h /.$setResult($_VGETMAXSH);./
    Keyword ::= v g e t m i n p h /.$setResult($_VGETMINPH);./
    Keyword ::= v g e t m i n s h /.$setResult($_VGETMINSH);./
    Keyword ::= v i n s e r t p s /.$setResult($_VINSERTPS);./
    Keyword ::= v m o v m s k p d /.$setResult($_VMOVMSKPD);./
    Keyword ::= v m o v m s k p s /.$setResult($_VMOVMSKPS);./
    Keyword ::= v m o v n t d q a /.$setResult($_VMOVNTDQA);./
    Keyword ::= v m o v s h d u p /.$setResult($_VMOVSHDUP);./
    Keyword ::= v m o v s l d u p /.$setResult($_VMOVSLDUP);./
    Keyword ::= v p a c k s s d w /.$setResult($_VPACKSSDW);./
    Keyword ::= v p a c k s s w b /.$setResult($_VPACKSSWB);./
    Keyword ::= v p a c k u s d w /.$setResult($_VPACKUSDW);./
    Keyword ::= v p a c k u s w b /.$setResult($_VPACKUSWB);./
    Keyword ::= v p b l e n d m b /.$setResult($_VPBLENDMB);./
    Keyword ::= v p b l e n d m d /.$setResult($_VPBLENDMD);./
    Keyword ::= v p b l e n d m q /.$setResult($_VPBLENDMQ);./
    Keyword ::= v p b l e n d m w /.$setResult($_VPBLENDMW);./
    Keyword ::= v p b l e n d v b /.$setResult($_VPBLENDVB);./
    Keyword ::= v p c m p e q u b /.$setResult($_VPCMPEQUB);./
    Keyword ::= v p c m p e q u d /.$setResult($_VPCMPEQUD);./
    Keyword ::= v p c m p e q u q /.$setResult($_VPCMPEQUQ);./
    Keyword ::= v p c m p e q u w /.$setResult($_VPCMPEQUW);./
    Keyword ::= v p c m p g e u b /.$setResult($_VPCMPGEUB);./
    Keyword ::= v p c m p g e u d /.$setResult($_VPCMPGEUD);./
    Keyword ::= v p c m p g e u q /.$setResult($_VPCMPGEUQ);./
    Keyword ::= v p c m p g e u w /.$setResult($_VPCMPGEUW);./
    Keyword ::= v p c m p g t u b /.$setResult($_VPCMPGTUB);./
    Keyword ::= v p c m p g t u d /.$setResult($_VPCMPGTUD);./
    Keyword ::= v p c m p g t u q /.$setResult($_VPCMPGTUQ);./
    Keyword ::= v p c m p g t u w /.$setResult($_VPCMPGTUW);./
    Keyword ::= v p c m p l e u b /.$setResult($_VPCMPLEUB);./
    Keyword ::= v p c m p l e u d /.$setResult($_VPCMPLEUD);./
    Keyword ::= v p c m p l e u q /.$setResult($_VPCMPLEUQ);./
    Keyword ::= v p c m p l e u w /.$setResult($_VPCMPLEUW);./
    Keyword ::= v p c m p l t u b /.$setResult($_VPCMPLTUB);./
    Keyword ::= v p c m p l t u d /.$setResult($_VPCMPLTUD);./
    Keyword ::= v p c m p l t u q /.$setResult($_VPCMPLTUQ);./
    Keyword ::= v p c m p l t u w /.$setResult($_VPCMPLTUW);./
    Keyword ::= v p c m p n e q b /.$setResult($_VPCMPNEQB);./
    Keyword ::= v p c m p n e q d /.$setResult($_VPCMPNEQD);./
    Keyword ::= v p c m p n e q q /.$setResult($_VPCMPNEQQ);./
    Keyword ::= v p c m p n e q w /.$setResult($_VPCMPNEQW);./
    Keyword ::= v p c m p n g t b /.$setResult($_VPCMPNGTB);./
    Keyword ::= v p c m p n g t d /.$setResult($_VPCMPNGTD);./
    Keyword ::= v p c m p n g t q /.$setResult($_VPCMPNGTQ);./
    Keyword ::= v p c m p n g t w /.$setResult($_VPCMPNGTW);./
    Keyword ::= v p c m p n l e b /.$setResult($_VPCMPNLEB);./
    Keyword ::= v p c m p n l e d /.$setResult($_VPCMPNLED);./
    Keyword ::= v p c m p n l e q /.$setResult($_VPCMPNLEQ);./
    Keyword ::= v p c m p n l e w /.$setResult($_VPCMPNLEW);./
    Keyword ::= v p c m p n l t b /.$setResult($_VPCMPNLTB);./
    Keyword ::= v p c m p n l t d /.$setResult($_VPCMPNLTD);./
    Keyword ::= v p c m p n l t q /.$setResult($_VPCMPNLTQ);./
    Keyword ::= v p c m p n l t w /.$setResult($_VPCMPNLTW);./
    Keyword ::= v p d p b s s d s /.$setResult($_VPDPBSSDS);./
    Keyword ::= v p d p b s u d s /.$setResult($_VPDPBSUDS);./
    Keyword ::= v p d p b u s d s /.$setResult($_VPDPBUSDS);./
    Keyword ::= v p d p b u u d s /.$setResult($_VPDPBUUDS);./
    Keyword ::= v p d p w s s d s /.$setResult($_VPDPWSSDS);./
    Keyword ::= v p e r m i l p d /.$setResult($_VPERMILPD);./
    Keyword ::= v p e r m i l p s /.$setResult($_VPERMILPS);./
    Keyword ::= v p e x p a n d b /.$setResult($_VPEXPANDB);./
    Keyword ::= v p e x p a n d d /.$setResult($_VPEXPANDD);./
    Keyword ::= v p e x p a n d q /.$setResult($_VPEXPANDQ);./
    Keyword ::= v p e x p a n d w /.$setResult($_VPEXPANDW);./
    Keyword ::= v p h a d d u b d /.$setResult($_VPHADDUBD);./
    Keyword ::= v p h a d d u b q /.$setResult($_VPHADDUBQ);./
    Keyword ::= v p h a d d u b w /.$setResult($_VPHADDUBW);./
    Keyword ::= v p h a d d u d q /.$setResult($_VPHADDUDQ);./
    Keyword ::= v p h a d d u w d /.$setResult($_VPHADDUWD);./
    Keyword ::= v p h a d d u w q /.$setResult($_VPHADDUWQ);./
    Keyword ::= v p m a c s d q h /.$setResult($_VPMACSDQH);./
    Keyword ::= v p m a c s d q l /.$setResult($_VPMACSDQL);./
    Keyword ::= v p m a c s s d d /.$setResult($_VPMACSSDD);./
    Keyword ::= v p m a c s s w d /.$setResult($_VPMACSSWD);./
    Keyword ::= v p m a c s s w w /.$setResult($_VPMACSSWW);./
    Keyword ::= v p m a d c s w d /.$setResult($_VPMADCSWD);./
    Keyword ::= v p m o v m s k b /.$setResult($_VPMOVMSKB);./
    Keyword ::= v p m o v s x b d /.$setResult($_VPMOVSXBD);./
    Keyword ::= v p m o v s x b q /.$setResult($_VPMOVSXBQ);./
    Keyword ::= v p m o v s x b w /.$setResult($_VPMOVSXBW);./
    Keyword ::= v p m o v s x d q /.$setResult($_VPMOVSXDQ);./
    Keyword ::= v p m o v s x w d /.$setResult($_VPMOVSXWD);./
    Keyword ::= v p m o v s x w q /.$setResult($_VPMOVSXWQ);./
    Keyword ::= v p m o v u s d b /.$setResult($_VPMOVUSDB);./
    Keyword ::= v p m o v u s d w /.$setResult($_VPMOVUSDW);./
    Keyword ::= v p m o v u s q b /.$setResult($_VPMOVUSQB);./
    Keyword ::= v p m o v u s q d /.$setResult($_VPMOVUSQD);./
    Keyword ::= v p m o v u s q w /.$setResult($_VPMOVUSQW);./
    Keyword ::= v p m o v u s w b /.$setResult($_VPMOVUSWB);./
    Keyword ::= v p m o v z x b d /.$setResult($_VPMOVZXBD);./
    Keyword ::= v p m o v z x b q /.$setResult($_VPMOVZXBQ);./
    Keyword ::= v p m o v z x b w /.$setResult($_VPMOVZXBW);./
    Keyword ::= v p m o v z x d q /.$setResult($_VPMOVZXDQ);./
    Keyword ::= v p m o v z x w d /.$setResult($_VPMOVZXWD);./
    Keyword ::= v p m o v z x w q /.$setResult($_VPMOVZXWQ);./
    Keyword ::= v p m u l h r s w /.$setResult($_VPMULHRSW);./
    Keyword ::= v p t e s t n m b /.$setResult($_VPTESTNMB);./
    Keyword ::= v p t e s t n m d /.$setResult($_VPTESTNMD);./
    Keyword ::= v p t e s t n m q /.$setResult($_VPTESTNMQ);./
    Keyword ::= v p t e s t n m w /.$setResult($_VPTESTNMW);./
    Keyword ::= v r e d u c e p d /.$setResult($_VREDUCEPD);./
    Keyword ::= v r e d u c e p h /.$setResult($_VREDUCEPH);./
    Keyword ::= v r e d u c e p s /.$setResult($_VREDUCEPS);./
    Keyword ::= v r e d u c e s d /.$setResult($_VREDUCESD);./
    Keyword ::= v r e d u c e s h /.$setResult($_VREDUCESH);./
    Keyword ::= v r e d u c e s s /.$setResult($_VREDUCESS);./
    Keyword ::= v s c a l e f p d /.$setResult($_VSCALEFPD);./
    Keyword ::= v s c a l e f p h /.$setResult($_VSCALEFPH);./
    Keyword ::= v s c a l e f p s /.$setResult($_VSCALEFPS);./
    Keyword ::= v s c a l e f s d /.$setResult($_VSCALEFSD);./
    Keyword ::= v s c a l e f s h /.$setResult($_VSCALEFSH);./
    Keyword ::= v s c a l e f s s /.$setResult($_VSCALEFSS);./
    Keyword ::= v u n p c k h p d /.$setResult($_VUNPCKHPD);./
    Keyword ::= v u n p c k h p s /.$setResult($_VUNPCKHPS);./
    Keyword ::= v u n p c k l p d /.$setResult($_VUNPCKLPD);./
    Keyword ::= v u n p c k l p s /.$setResult($_VUNPCKLPS);./
    Keyword ::= w r m s r l i s t /.$setResult($_WRMSRLIST);./
    Keyword ::= x c r y p t c b c /.$setResult($_XCRYPTCBC);./
    Keyword ::= x c r y p t c f b /.$setResult($_XCRYPTCFB);./
    Keyword ::= x c r y p t c t r /.$setResult($_XCRYPTCTR);./
    Keyword ::= x c r y p t e c b /.$setResult($_XCRYPTECB);./
    Keyword ::= x c r y p t o f b /.$setResult($_XCRYPTOFB);./
    Keyword ::= x r e s l d t r k /.$setResult($_XRESLDTRK);./
    Keyword ::= x s u s l d t r k /.$setResult($_XSUSLDTRK);./
    Keyword ::= a b s o l u t e /.$setResult($_ABSOLUTE);./
    Keyword ::= a d d s u b p d /.$setResult($_ADDSUBPD);./
    Keyword ::= a d d s u b p s /.$setResult($_ADDSUBPS);./
    Keyword ::= b l e n d v p d /.$setResult($_BLENDVPD);./
    Keyword ::= b l e n d v p s /.$setResult($_BLENDVPS);./
    Keyword ::= c l d e m o t e /.$setResult($_CLDEMOTE);./
    Keyword ::= c l r s s b s y /.$setResult($_CLRSSBSY);./
    Keyword ::= c m p n e q p d /.$setResult($_CMPNEQPD);./
    Keyword ::= c m p n e q p s /.$setResult($_CMPNEQPS);./
    Keyword ::= c m p n e q s d /.$setResult($_CMPNEQSD);./
    Keyword ::= c m p n e q s s /.$setResult($_CMPNEQSS);./
    Keyword ::= c m p n l e p d /.$setResult($_CMPNLEPD);./
    Keyword ::= c m p n l e p s /.$setResult($_CMPNLEPS);./
    Keyword ::= c m p n l e s d /.$setResult($_CMPNLESD);./
    Keyword ::= c m p n l e s s /.$setResult($_CMPNLESS);./
    Keyword ::= c m p n l t p d /.$setResult($_CMPNLTPD);./
    Keyword ::= c m p n l t p s /.$setResult($_CMPNLTPS);./
    Keyword ::= c m p n l t s d /.$setResult($_CMPNLTSD);./
    Keyword ::= c m p n l t s s /.$setResult($_CMPNLTSS);./
    Keyword ::= c m p o r d p d /.$setResult($_CMPORDPD);./
    Keyword ::= c m p o r d p s /.$setResult($_CMPORDPS);./
    Keyword ::= c m p o r d s d /.$setResult($_CMPORDSD);./
    Keyword ::= c m p o r d s s /.$setResult($_CMPORDSS);./
    Keyword ::= c m p o x a d d /.$setResult($_CMPOXADD);./
    Keyword ::= c m p p x a d d /.$setResult($_CMPPXADD);./
    Keyword ::= c m p s x a d d /.$setResult($_CMPSXADD);./
    Keyword ::= c m p z x a d d /.$setResult($_CMPZXADD);./
    Keyword ::= f c m o v n b e /.$setResult($_FCMOVNBE);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= i n s e r t p s /.$setResult($_INSERTPS);./
    Keyword ::= i n t e r n a l /.$setResult($_INTERNAL);./
    Keyword ::= k o r t e s t b /.$setResult($_KORTESTB);./
    Keyword ::= k o r t e s t d /.$setResult($_KORTESTD);./
    Keyword ::= k o r t e s t q /.$setResult($_KORTESTQ);./
    Keyword ::= k o r t e s t w /.$setResult($_KORTESTW);./
    Keyword ::= k s h i f t l b /.$setResult($_KSHIFTLB);./
    Keyword ::= k s h i f t l d /.$setResult($_KSHIFTLD);./
    Keyword ::= k s h i f t l q /.$setResult($_KSHIFTLQ);./
    Keyword ::= k s h i f t l w /.$setResult($_KSHIFTLW);./
    Keyword ::= k s h i f t r b /.$setResult($_KSHIFTRB);./
    Keyword ::= k s h i f t r d /.$setResult($_KSHIFTRD);./
    Keyword ::= k s h i f t r q /.$setResult($_KSHIFTRQ);./
    Keyword ::= k s h i f t r w /.$setResult($_KSHIFTRW);./
    Keyword ::= k u n p c k b w /.$setResult($_KUNPCKBW);./
    Keyword ::= k u n p c k d q /.$setResult($_KUNPCKDQ);./
    Keyword ::= k u n p c k w d /.$setResult($_KUNPCKWD);./
    Keyword ::= m a s k m o v q /.$setResult($_MASKMOVQ);./
    Keyword ::= m o n i t o r x /.$setResult($_MONITORX);./
    Keyword ::= m o v m s k p d /.$setResult($_MOVMSKPD);./
    Keyword ::= m o v m s k p s /.$setResult($_MOVMSKPS);./
    Keyword ::= m o v n t d q a /.$setResult($_MOVNTDQA);./
    Keyword ::= m o v s h d u p /.$setResult($_MOVSHDUP);./
    Keyword ::= m o v s l d u p /.$setResult($_MOVSLDUP);./
    Keyword ::= p a c k s s d w /.$setResult($_PACKSSDW);./
    Keyword ::= p a c k s s w b /.$setResult($_PACKSSWB);./
    Keyword ::= p a c k u s d w /.$setResult($_PACKUSDW);./
    Keyword ::= p a c k u s w b /.$setResult($_PACKUSWB);./
    Keyword ::= p b l e n d v b /.$setResult($_PBLENDVB);./
    Keyword ::= p f r s q r t v /.$setResult($_PFRSQRTV);./
    Keyword ::= p m a c h r i w /.$setResult($_PMACHRIW);./
    Keyword ::= p m o v m s k b /.$setResult($_PMOVMSKB);./
    Keyword ::= p m o v s x b d /.$setResult($_PMOVSXBD);./
    Keyword ::= p m o v s x b q /.$setResult($_PMOVSXBQ);./
    Keyword ::= p m o v s x b w /.$setResult($_PMOVSXBW);./
    Keyword ::= p m o v s x d q /.$setResult($_PMOVSXDQ);./
    Keyword ::= p m o v s x w d /.$setResult($_PMOVSXWD);./
    Keyword ::= p m o v s x w q /.$setResult($_PMOVSXWQ);./
    Keyword ::= p m o v z x b d /.$setResult($_PMOVZXBD);./
    Keyword ::= p m o v z x b q /.$setResult($_PMOVZXBQ);./
    Keyword ::= p m o v z x b w /.$setResult($_PMOVZXBW);./
    Keyword ::= p m o v z x d q /.$setResult($_PMOVZXDQ);./
    Keyword ::= p m o v z x w d /.$setResult($_PMOVZXWD);./
    Keyword ::= p m o v z x w q /.$setResult($_PMOVZXWQ);./
    Keyword ::= p m u l h r i w /.$setResult($_PMULHRIW);./
    Keyword ::= p m u l h r s w /.$setResult($_PMULHRSW);./
    Keyword ::= p m u l h r w a /.$setResult($_PMULHRWA);./
    Keyword ::= p m u l h r w c /.$setResult($_PMULHRWC);./
    Keyword ::= p r e f e t c h /.$setResult($_PREFETCH);./
    Keyword ::= p r o g b i t s /.$setResult($_PROGBITS);./
    Keyword ::= r d f s b a s e /.$setResult($_RDFSBASE);./
    Keyword ::= r d g s b a s e /.$setResult($_RDGSBASE);./
    Keyword ::= r e q u i r e d /.$setResult($_REQUIRED);./
    Keyword ::= r e s i d e n t /.$setResult($_RESIDENT);./
    Keyword ::= r s t o r s s p /.$setResult($_RSTORSSP);./
    Keyword ::= s e c t i o n s /.$setResult($_SECTIONS);./
    Keyword ::= s e g m e n t s /.$setResult($_SEGMENTS);./
    Keyword ::= s e n d u i p i /.$setResult($_SENDUIPI);./
    Keyword ::= s e t s s b s y /.$setResult($_SETSSBSY);./
    Keyword ::= s m i n t o l d /.$setResult($_SMINTOLD);./
    Keyword ::= s y s e n t e r /.$setResult($_SYSENTER);./
    Keyword ::= t i l e z e r o /.$setResult($_TILEZERO);./
    Keyword ::= u m o n i t o r /.$setResult($_UMONITOR);./
    Keyword ::= u n p c k h p d /.$setResult($_UNPCKHPD);./
    Keyword ::= u n p c k h p s /.$setResult($_UNPCKHPS);./
    Keyword ::= u n p c k l p d /.$setResult($_UNPCKLPD);./
    Keyword ::= u n p c k l p s /.$setResult($_UNPCKLPS);./
    Keyword ::= v b l e n d p d /.$setResult($_VBLENDPD);./
    Keyword ::= v b l e n d p s /.$setResult($_VBLENDPS);./
    Keyword ::= v c m p e q p d /.$setResult($_VCMPEQPD);./
    Keyword ::= v c m p e q p s /.$setResult($_VCMPEQPS);./
    Keyword ::= v c m p e q s d /.$setResult($_VCMPEQSD);./
    Keyword ::= v c m p e q s s /.$setResult($_VCMPEQSS);./
    Keyword ::= v c m p g e p d /.$setResult($_VCMPGEPD);./
    Keyword ::= v c m p g e p s /.$setResult($_VCMPGEPS);./
    Keyword ::= v c m p g e s d /.$setResult($_VCMPGESD);./
    Keyword ::= v c m p g e s s /.$setResult($_VCMPGESS);./
    Keyword ::= v c m p g t p d /.$setResult($_VCMPGTPD);./
    Keyword ::= v c m p g t p s /.$setResult($_VCMPGTPS);./
    Keyword ::= v c m p g t s d /.$setResult($_VCMPGTSD);./
    Keyword ::= v c m p g t s s /.$setResult($_VCMPGTSS);./
    Keyword ::= v c m p l e p d /.$setResult($_VCMPLEPD);./
    Keyword ::= v c m p l e p s /.$setResult($_VCMPLEPS);./
    Keyword ::= v c m p l e s d /.$setResult($_VCMPLESD);./
    Keyword ::= v c m p l e s s /.$setResult($_VCMPLESS);./
    Keyword ::= v c m p l t p d /.$setResult($_VCMPLTPD);./
    Keyword ::= v c m p l t p s /.$setResult($_VCMPLTPS);./
    Keyword ::= v c m p l t s d /.$setResult($_VCMPLTSD);./
    Keyword ::= v c m p l t s s /.$setResult($_VCMPLTSS);./
    Keyword ::= v f m a d d p d /.$setResult($_VFMADDPD);./
    Keyword ::= v f m a d d p s /.$setResult($_VFMADDPS);./
    Keyword ::= v f m a d d s d /.$setResult($_VFMADDSD);./
    Keyword ::= v f m a d d s s /.$setResult($_VFMADDSS);./
    Keyword ::= v f m s u b p d /.$setResult($_VFMSUBPD);./
    Keyword ::= v f m s u b p s /.$setResult($_VFMSUBPS);./
    Keyword ::= v f m s u b s d /.$setResult($_VFMSUBSD);./
    Keyword ::= v f m s u b s s /.$setResult($_VFMSUBSS);./
    Keyword ::= v f m u l c s h /.$setResult($_VFMULCSH);./
    Keyword ::= v f o l l o w s /.$setResult($_VFOLLOWS);./
    Keyword ::= v l d m x c s r /.$setResult($_VLDMXCSR);./
    Keyword ::= v m l a u n c h /.$setResult($_VMLAUNCH);./
    Keyword ::= v m o v d d u p /.$setResult($_VMOVDDUP);./
    Keyword ::= v m o v h l p s /.$setResult($_VMOVHLPS);./
    Keyword ::= v m o v l h p s /.$setResult($_VMOVLHPS);./
    Keyword ::= v m o v n t d q /.$setResult($_VMOVNTDQ);./
    Keyword ::= v m o v n t p d /.$setResult($_VMOVNTPD);./
    Keyword ::= v m o v n t p s /.$setResult($_VMOVNTPS);./
    Keyword ::= v m o v n t q q /.$setResult($_VMOVNTQQ);./
    Keyword ::= v m p s a d b w /.$setResult($_VMPSADBW);./
    Keyword ::= v m r e s u m e /.$setResult($_VMRESUME);./
    Keyword ::= v p a d d u s b /.$setResult($_VPADDUSB);./
    Keyword ::= v p a d d u s w /.$setResult($_VPADDUSW);./
    Keyword ::= v p a l i g n r /.$setResult($_VPALIGNR);./
    Keyword ::= v p b l e n d d /.$setResult($_VPBLENDD);./
    Keyword ::= v p b l e n d w /.$setResult($_VPBLENDW);./
    Keyword ::= v p c m p e q b /.$setResult($_VPCMPEQB);./
    Keyword ::= v p c m p e q d /.$setResult($_VPCMPEQD);./
    Keyword ::= v p c m p e q q /.$setResult($_VPCMPEQQ);./
    Keyword ::= v p c m p e q w /.$setResult($_VPCMPEQW);./
    Keyword ::= v p c m p g e b /.$setResult($_VPCMPGEB);./
    Keyword ::= v p c m p g e d /.$setResult($_VPCMPGED);./
    Keyword ::= v p c m p g e q /.$setResult($_VPCMPGEQ);./
    Keyword ::= v p c m p g e w /.$setResult($_VPCMPGEW);./
    Keyword ::= v p c m p g t b /.$setResult($_VPCMPGTB);./
    Keyword ::= v p c m p g t d /.$setResult($_VPCMPGTD);./
    Keyword ::= v p c m p g t q /.$setResult($_VPCMPGTQ);./
    Keyword ::= v p c m p g t w /.$setResult($_VPCMPGTW);./
    Keyword ::= v p c m p l e b /.$setResult($_VPCMPLEB);./
    Keyword ::= v p c m p l e d /.$setResult($_VPCMPLED);./
    Keyword ::= v p c m p l e q /.$setResult($_VPCMPLEQ);./
    Keyword ::= v p c m p l e w /.$setResult($_VPCMPLEW);./
    Keyword ::= v p c m p l t b /.$setResult($_VPCMPLTB);./
    Keyword ::= v p c m p l t d /.$setResult($_VPCMPLTD);./
    Keyword ::= v p c m p l t q /.$setResult($_VPCMPLTQ);./
    Keyword ::= v p c m p l t w /.$setResult($_VPCMPLTW);./
    Keyword ::= v p d p b s s d /.$setResult($_VPDPBSSD);./
    Keyword ::= v p d p b s u d /.$setResult($_VPDPBSUD);./
    Keyword ::= v p d p b u s d /.$setResult($_VPDPBUSD);./
    Keyword ::= v p d p b u u d /.$setResult($_VPDPBUUD);./
    Keyword ::= v p d p w s s d /.$setResult($_VPDPWSSD);./
    Keyword ::= v p h a d d b d /.$setResult($_VPHADDBD);./
    Keyword ::= v p h a d d b q /.$setResult($_VPHADDBQ);./
    Keyword ::= v p h a d d b w /.$setResult($_VPHADDBW);./
    Keyword ::= v p h a d d d q /.$setResult($_VPHADDDQ);./
    Keyword ::= v p h a d d s w /.$setResult($_VPHADDSW);./
    Keyword ::= v p h a d d w d /.$setResult($_VPHADDWD);./
    Keyword ::= v p h a d d w q /.$setResult($_VPHADDWQ);./
    Keyword ::= v p h s u b b w /.$setResult($_VPHSUBBW);./
    Keyword ::= v p h s u b d q /.$setResult($_VPHSUBDQ);./
    Keyword ::= v p h s u b s w /.$setResult($_VPHSUBSW);./
    Keyword ::= v p h s u b w d /.$setResult($_VPHSUBWD);./
    Keyword ::= v p l z c n t d /.$setResult($_VPLZCNTD);./
    Keyword ::= v p l z c n t q /.$setResult($_VPLZCNTQ);./
    Keyword ::= v p m a c s d d /.$setResult($_VPMACSDD);./
    Keyword ::= v p m a c s w d /.$setResult($_VPMACSWD);./
    Keyword ::= v p m a c s w w /.$setResult($_VPMACSWW);./
    Keyword ::= v p m a d d w d /.$setResult($_VPMADDWD);./
    Keyword ::= v p m o v s d b /.$setResult($_VPMOVSDB);./
    Keyword ::= v p m o v s d w /.$setResult($_VPMOVSDW);./
    Keyword ::= v p m o v s q b /.$setResult($_VPMOVSQB);./
    Keyword ::= v p m o v s q d /.$setResult($_VPMOVSQD);./
    Keyword ::= v p m o v s q w /.$setResult($_VPMOVSQW);./
    Keyword ::= v p m o v s w b /.$setResult($_VPMOVSWB);./
    Keyword ::= v p m u l h u w /.$setResult($_VPMULHUW);./
    Keyword ::= v p m u l u d q /.$setResult($_VPMULUDQ);./
    Keyword ::= v p o p c n t b /.$setResult($_VPOPCNTB);./
    Keyword ::= v p o p c n t d /.$setResult($_VPOPCNTD);./
    Keyword ::= v p o p c n t q /.$setResult($_VPOPCNTQ);./
    Keyword ::= v p o p c n t w /.$setResult($_VPOPCNTW);./
    Keyword ::= v p s h l d v d /.$setResult($_VPSHLDVD);./
    Keyword ::= v p s h l d v q /.$setResult($_VPSHLDVQ);./
    Keyword ::= v p s h l d v w /.$setResult($_VPSHLDVW);./
    Keyword ::= v p s h r d v d /.$setResult($_VPSHRDVD);./
    Keyword ::= v p s h r d v q /.$setResult($_VPSHRDVQ);./
    Keyword ::= v p s h r d v w /.$setResult($_VPSHRDVW);./
    Keyword ::= v p s h u f h w /.$setResult($_VPSHUFHW);./
    Keyword ::= v p s h u f l w /.$setResult($_VPSHUFLW);./
    Keyword ::= v p s u b u s b /.$setResult($_VPSUBUSB);./
    Keyword ::= v p s u b u s w /.$setResult($_VPSUBUSW);./
    Keyword ::= v p t e s t m b /.$setResult($_VPTESTMB);./
    Keyword ::= v p t e s t m d /.$setResult($_VPTESTMD);./
    Keyword ::= v p t e s t m q /.$setResult($_VPTESTMQ);./
    Keyword ::= v p t e s t m w /.$setResult($_VPTESTMW);./
    Keyword ::= v r a n g e p d /.$setResult($_VRANGEPD);./
    Keyword ::= v r a n g e p s /.$setResult($_VRANGEPS);./
    Keyword ::= v r a n g e s d /.$setResult($_VRANGESD);./
    Keyword ::= v r a n g e s s /.$setResult($_VRANGESS);./
    Keyword ::= v r o u n d p d /.$setResult($_VROUNDPD);./
    Keyword ::= v r o u n d p s /.$setResult($_VROUNDPS);./
    Keyword ::= v r o u n d s d /.$setResult($_VROUNDSD);./
    Keyword ::= v r o u n d s s /.$setResult($_VROUNDSS);./
    Keyword ::= v r s q r t p h /.$setResult($_VRSQRTPH);./
    Keyword ::= v r s q r t p s /.$setResult($_VRSQRTPS);./
    Keyword ::= v r s q r t s h /.$setResult($_VRSQRTSH);./
    Keyword ::= v r s q r t s s /.$setResult($_VRSQRTSS);./
    Keyword ::= v s t m x c s r /.$setResult($_VSTMXCSR);./
    Keyword ::= v u c o m i s d /.$setResult($_VUCOMISD);./
    Keyword ::= v u c o m i s h /.$setResult($_VUCOMISH);./
    Keyword ::= v u c o m i s s /.$setResult($_VUCOMISS);./
    Keyword ::= v z e r o a l l /.$setResult($_VZEROALL);./
    Keyword ::= w b n o i n v d /.$setResult($_WBNOINVD);./
    Keyword ::= w r f s b a s e /.$setResult($_WRFSBASE);./
    Keyword ::= w r g s b a s e /.$setResult($_WRGSBASE);./
    Keyword ::= x s a v e o p t /.$setResult($_XSAVEOPT);./
    Keyword ::= z e r o f i l l /.$setResult($_ZEROFILL);./
    Keyword ::= b l c f i l l /.$setResult($_BLCFILL);./
    Keyword ::= b l e n d p d /.$setResult($_BLENDPD);./
    Keyword ::= b l e n d p s /.$setResult($_BLENDPS);./
    Keyword ::= b l s f i l l /.$setResult($_BLSFILL);./
    Keyword ::= c l f l u s h /.$setResult($_CLFLUSH);./
    Keyword ::= c m o v n a e /.$setResult($_CMOVNAE);./
    Keyword ::= c m o v n b e /.$setResult($_CMOVNBE);./
    Keyword ::= c m o v n g e /.$setResult($_CMOVNGE);./
    Keyword ::= c m p e q p d /.$setResult($_CMPEQPD);./
    Keyword ::= c m p e q p s /.$setResult($_CMPEQPS);./
    Keyword ::= c m p e q s d /.$setResult($_CMPEQSD);./
    Keyword ::= c m p e q s s /.$setResult($_CMPEQSS);./
    Keyword ::= c m p l e p d /.$setResult($_CMPLEPD);./
    Keyword ::= c m p l e p s /.$setResult($_CMPLEPS);./
    Keyword ::= c m p l e s d /.$setResult($_CMPLESD);./
    Keyword ::= c m p l e s s /.$setResult($_CMPLESS);./
    Keyword ::= c m p l t p d /.$setResult($_CMPLTPD);./
    Keyword ::= c m p l t p s /.$setResult($_CMPLTPS);./
    Keyword ::= c m p l t s d /.$setResult($_CMPLTSD);./
    Keyword ::= c m p l t s s /.$setResult($_CMPLTSS);./
    Keyword ::= c m p x c h g /.$setResult($_CMPXCHG);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= e n q c m d s /.$setResult($_ENQCMDS);./
    Keyword ::= f c m o v b e /.$setResult($_FCMOVBE);./
    Keyword ::= f c m o v n b /.$setResult($_FCMOVNB);./
    Keyword ::= f c m o v n e /.$setResult($_FCMOVNE);./
    Keyword ::= f c m o v n u /.$setResult($_FCMOVNU);./
    Keyword ::= f d e c s t p /.$setResult($_FDECSTP);./
    Keyword ::= f i n c s t p /.$setResult($_FINCSTP);./
    Keyword ::= f n s t e n v /.$setResult($_FNSTENV);./
    Keyword ::= f o l l o w s /.$setResult($_FOLLOWS);./
    Keyword ::= f r n d i n t /.$setResult($_FRNDINT);./
    Keyword ::= f s i n c o s /.$setResult($_FSINCOS);./
    Keyword ::= f u c o m i p /.$setResult($_FUCOMIP);./
    Keyword ::= f u c o m p p /.$setResult($_FUCOMPP);./
    Keyword ::= f x r s t o r /.$setResult($_FXRSTOR);./
    Keyword ::= f x t r a c t /.$setResult($_FXTRACT);./
    Keyword ::= i n c s s p d /.$setResult($_INCSSPD);./
    Keyword ::= i n c s s p q /.$setResult($_INCSSPQ);./
    Keyword ::= i n s e r t q /.$setResult($_INSERTQ);./
    Keyword ::= i n v l p g a /.$setResult($_INVLPGA);./
    Keyword ::= i n v p c i d /.$setResult($_INVPCID);./
    Keyword ::= i n v v p i d /.$setResult($_INVVPID);./
    Keyword ::= k o r t e s t /.$setResult($_KORTEST);./
    Keyword ::= k s h i f t l /.$setResult($_KSHIFTL);./
    Keyword ::= k s h i f t r /.$setResult($_KSHIFTR);./
    Keyword ::= l d m x c s r /.$setResult($_LDMXCSR);./
    Keyword ::= l o a d a l l /.$setResult($_LOADALL);./
    Keyword ::= m o n i t o r /.$setResult($_MONITOR);./
    Keyword ::= m o n t m u l /.$setResult($_MONTMUL);./
    Keyword ::= m o v d d u p /.$setResult($_MOVDDUP);./
    Keyword ::= m o v d i r i /.$setResult($_MOVDIRI);./
    Keyword ::= m o v h l p s /.$setResult($_MOVHLPS);./
    Keyword ::= m o v l h p s /.$setResult($_MOVLHPS);./
    Keyword ::= m o v n t d q /.$setResult($_MOVNTDQ);./
    Keyword ::= m o v n t p d /.$setResult($_MOVNTPD);./
    Keyword ::= m o v n t p s /.$setResult($_MOVNTPS);./
    Keyword ::= m o v n t s d /.$setResult($_MOVNTSD);./
    Keyword ::= m o v n t s s /.$setResult($_MOVNTSS);./
    Keyword ::= m p s a d b w /.$setResult($_MPSADBW);./
    Keyword ::= n o a l l o c /.$setResult($_NOALLOC);./
    Keyword ::= n o w r i t e /.$setResult($_NOWRITE);./
    Keyword ::= o v e r l a y /.$setResult($_OVERLAY);./
    Keyword ::= p a d d s i w /.$setResult($_PADDSIW);./
    Keyword ::= p a d d u s b /.$setResult($_PADDUSB);./
    Keyword ::= p a d d u s w /.$setResult($_PADDUSW);./
    Keyword ::= p a l i g n r /.$setResult($_PALIGNR);./
    Keyword ::= p a v g u s b /.$setResult($_PAVGUSB);./
    Keyword ::= p b l e n d w /.$setResult($_PBLENDW);./
    Keyword ::= p c m p e q b /.$setResult($_PCMPEQB);./
    Keyword ::= p c m p e q d /.$setResult($_PCMPEQD);./
    Keyword ::= p c m p e q q /.$setResult($_PCMPEQQ);./
    Keyword ::= p c m p e q w /.$setResult($_PCMPEQW);./
    Keyword ::= p c m p g t b /.$setResult($_PCMPGTB);./
    Keyword ::= p c m p g t d /.$setResult($_PCMPGTD);./
    Keyword ::= p c m p g t q /.$setResult($_PCMPGTQ);./
    Keyword ::= p c m p g t w /.$setResult($_PCMPGTW);./
    Keyword ::= p c o m m i t /.$setResult($_PCOMMIT);./
    Keyword ::= p c o n f i g /.$setResult($_PCONFIG);./
    Keyword ::= p d i s t i b /.$setResult($_PDISTIB);./
    Keyword ::= p f c m p e q /.$setResult($_PFCMPEQ);./
    Keyword ::= p f c m p g e /.$setResult($_PFCMPGE);./
    Keyword ::= p f c m p g t /.$setResult($_PFCMPGT);./
    Keyword ::= p f p n a c c /.$setResult($_PFPNACC);./
    Keyword ::= p f r s q r t /.$setResult($_PFRSQRT);./
    Keyword ::= p h a d d s w /.$setResult($_PHADDSW);./
    Keyword ::= p h s u b s w /.$setResult($_PHSUBSW);./
    Keyword ::= p m a d d w d /.$setResult($_PMADDWD);./
    Keyword ::= p m u l h u w /.$setResult($_PMULHUW);./
    Keyword ::= p m u l u d q /.$setResult($_PMULUDQ);./
    Keyword ::= p m v g e z b /.$setResult($_PMVGEZB);./
    Keyword ::= p o i n t e r /.$setResult($_POINTER);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= p s h u f h w /.$setResult($_PSHUFHW);./
    Keyword ::= p s h u f l w /.$setResult($_PSHUFLW);./
    Keyword ::= p s u b s i w /.$setResult($_PSUBSIW);./
    Keyword ::= p s u b u s b /.$setResult($_PSUBUSB);./
    Keyword ::= p s u b u s w /.$setResult($_PSUBUSW);./
    Keyword ::= p t w r i t e /.$setResult($_PTWRITE);./
    Keyword ::= r o u n d p d /.$setResult($_ROUNDPD);./
    Keyword ::= r o u n d p s /.$setResult($_ROUNDPS);./
    Keyword ::= r o u n d s d /.$setResult($_ROUNDSD);./
    Keyword ::= r o u n d s s /.$setResult($_ROUNDSS);./
    Keyword ::= r s q r t p s /.$setResult($_RSQRTPS);./
    Keyword ::= r s q r t s s /.$setResult($_RSQRTSS);./
    Keyword ::= s a f e s e h /.$setResult($_SAFESEH);./
    Keyword ::= s e c t i o n /.$setResult($_SECTION);./
    Keyword ::= s e g m e n t /.$setResult($_SEGMENT);./
    Keyword ::= s t m x c s r /.$setResult($_STMXCSR);./
    Keyword ::= s y m b o l s /.$setResult($_SYMBOLS);./
    Keyword ::= s y s c a l l /.$setResult($_SYSCALL);./
    Keyword ::= s y s e x i t /.$setResult($_SYSEXIT);./
    Keyword ::= t d p b s s d /.$setResult($_TDPBSSD);./
    Keyword ::= t d p b s u d /.$setResult($_TDPBSUD);./
    Keyword ::= t d p b u s d /.$setResult($_TDPBUSD);./
    Keyword ::= t d p b u u d /.$setResult($_TDPBUUD);./
    Keyword ::= u c o m i s d /.$setResult($_UCOMISD);./
    Keyword ::= u c o m i s s /.$setResult($_UCOMISS);./
    Keyword ::= v a e s d e c /.$setResult($_VAESDEC);./
    Keyword ::= v a e s e n c /.$setResult($_VAESENC);./
    Keyword ::= v a e s i m c /.$setResult($_VAESIMC);./
    Keyword ::= v a l i g n d /.$setResult($_VALIGND);./
    Keyword ::= v a l i g n q /.$setResult($_VALIGNQ);./
    Keyword ::= v a n d n p d /.$setResult($_VANDNPD);./
    Keyword ::= v a n d n p s /.$setResult($_VANDNPS);./
    Keyword ::= v c o m i s d /.$setResult($_VCOMISD);./
    Keyword ::= v c o m i s h /.$setResult($_VCOMISH);./
    Keyword ::= v c o m i s s /.$setResult($_VCOMISS);./
    Keyword ::= v f r c z p d /.$setResult($_VFRCZPD);./
    Keyword ::= v f r c z p s /.$setResult($_VFRCZPS);./
    Keyword ::= v f r c z s d /.$setResult($_VFRCZSD);./
    Keyword ::= v f r c z s s /.$setResult($_VFRCZSS);./
    Keyword ::= v h a d d p d /.$setResult($_VHADDPD);./
    Keyword ::= v h a d d p s /.$setResult($_VHADDPS);./
    Keyword ::= v h s u b p d /.$setResult($_VHSUBPD);./
    Keyword ::= v h s u b p s /.$setResult($_VHSUBPS);./
    Keyword ::= v m c l e a r /.$setResult($_VMCLEAR);./
    Keyword ::= v m g e x i t /.$setResult($_VMGEXIT);./
    Keyword ::= v m m c a l l /.$setResult($_VMMCALL);./
    Keyword ::= v m o v a p d /.$setResult($_VMOVAPD);./
    Keyword ::= v m o v a p s /.$setResult($_VMOVAPS);./
    Keyword ::= v m o v d q a /.$setResult($_VMOVDQA);./
    Keyword ::= v m o v d q u /.$setResult($_VMOVDQU);./
    Keyword ::= v m o v h p d /.$setResult($_VMOVHPD);./
    Keyword ::= v m o v h p s /.$setResult($_VMOVHPS);./
    Keyword ::= v m o v l p d /.$setResult($_VMOVLPD);./
    Keyword ::= v m o v l p s /.$setResult($_VMOVLPS);./
    Keyword ::= v m o v q q a /.$setResult($_VMOVQQA);./
    Keyword ::= v m o v q q u /.$setResult($_VMOVQQU);./
    Keyword ::= v m o v u p d /.$setResult($_VMOVUPD);./
    Keyword ::= v m o v u p s /.$setResult($_VMOVUPS);./
    Keyword ::= v m p t r l d /.$setResult($_VMPTRLD);./
    Keyword ::= v m p t r s t /.$setResult($_VMPTRST);./
    Keyword ::= v m w r i t e /.$setResult($_VMWRITE);./
    Keyword ::= v p a d d s b /.$setResult($_VPADDSB);./
    Keyword ::= v p a d d s w /.$setResult($_VPADDSW);./
    Keyword ::= v p a n d n d /.$setResult($_VPANDND);./
    Keyword ::= v p a n d n q /.$setResult($_VPANDNQ);./
    Keyword ::= v p c m p u b /.$setResult($_VPCMPUB);./
    Keyword ::= v p c m p u d /.$setResult($_VPCMPUD);./
    Keyword ::= v p c m p u q /.$setResult($_VPCMPUQ);./
    Keyword ::= v p c m p u w /.$setResult($_VPCMPUW);./
    Keyword ::= v p c o m u b /.$setResult($_VPCOMUB);./
    Keyword ::= v p c o m u d /.$setResult($_VPCOMUD);./
    Keyword ::= v p c o m u q /.$setResult($_VPCOMUQ);./
    Keyword ::= v p c o m u w /.$setResult($_VPCOMUW);./
    Keyword ::= v p e r m p d /.$setResult($_VPERMPD);./
    Keyword ::= v p e r m p s /.$setResult($_VPERMPS);./
    Keyword ::= v p e x t r b /.$setResult($_VPEXTRB);./
    Keyword ::= v p e x t r d /.$setResult($_VPEXTRD);./
    Keyword ::= v p e x t r q /.$setResult($_VPEXTRQ);./
    Keyword ::= v p e x t r w /.$setResult($_VPEXTRW);./
    Keyword ::= v p h a d d d /.$setResult($_VPHADDD);./
    Keyword ::= v p h a d d w /.$setResult($_VPHADDW);./
    Keyword ::= v p h s u b d /.$setResult($_VPHSUBD);./
    Keyword ::= v p h s u b w /.$setResult($_VPHSUBW);./
    Keyword ::= v p i n s r b /.$setResult($_VPINSRB);./
    Keyword ::= v p i n s r d /.$setResult($_VPINSRD);./
    Keyword ::= v p i n s r q /.$setResult($_VPINSRQ);./
    Keyword ::= v p i n s r w /.$setResult($_VPINSRW);./
    Keyword ::= v p m a x s b /.$setResult($_VPMAXSB);./
    Keyword ::= v p m a x s d /.$setResult($_VPMAXSD);./
    Keyword ::= v p m a x s q /.$setResult($_VPMAXSQ);./
    Keyword ::= v p m a x s w /.$setResult($_VPMAXSW);./
    Keyword ::= v p m a x u b /.$setResult($_VPMAXUB);./
    Keyword ::= v p m a x u d /.$setResult($_VPMAXUD);./
    Keyword ::= v p m a x u q /.$setResult($_VPMAXUQ);./
    Keyword ::= v p m a x u w /.$setResult($_VPMAXUW);./
    Keyword ::= v p m i n s b /.$setResult($_VPMINSB);./
    Keyword ::= v p m i n s d /.$setResult($_VPMINSD);./
    Keyword ::= v p m i n s q /.$setResult($_VPMINSQ);./
    Keyword ::= v p m i n s w /.$setResult($_VPMINSW);./
    Keyword ::= v p m i n u b /.$setResult($_VPMINUB);./
    Keyword ::= v p m i n u d /.$setResult($_VPMINUD);./
    Keyword ::= v p m i n u q /.$setResult($_VPMINUQ);./
    Keyword ::= v p m i n u w /.$setResult($_VPMINUW);./
    Keyword ::= v p m o v d b /.$setResult($_VPMOVDB);./
    Keyword ::= v p m o v d w /.$setResult($_VPMOVDW);./
    Keyword ::= v p m o v q b /.$setResult($_VPMOVQB);./
    Keyword ::= v p m o v q d /.$setResult($_VPMOVQD);./
    Keyword ::= v p m o v q w /.$setResult($_VPMOVQW);./
    Keyword ::= v p m o v w b /.$setResult($_VPMOVWB);./
    Keyword ::= v p m u l d q /.$setResult($_VPMULDQ);./
    Keyword ::= v p m u l h w /.$setResult($_VPMULHW);./
    Keyword ::= v p m u l l d /.$setResult($_VPMULLD);./
    Keyword ::= v p m u l l q /.$setResult($_VPMULLQ);./
    Keyword ::= v p m u l l w /.$setResult($_VPMULLW);./
    Keyword ::= v p r o l v d /.$setResult($_VPROLVD);./
    Keyword ::= v p r o l v q /.$setResult($_VPROLVQ);./
    Keyword ::= v p r o r v d /.$setResult($_VPRORVD);./
    Keyword ::= v p r o r v q /.$setResult($_VPRORVQ);./
    Keyword ::= v p s a d b w /.$setResult($_VPSADBW);./
    Keyword ::= v p s h l d d /.$setResult($_VPSHLDD);./
    Keyword ::= v p s h l d q /.$setResult($_VPSHLDQ);./
    Keyword ::= v p s h l d w /.$setResult($_VPSHLDW);./
    Keyword ::= v p s h r d d /.$setResult($_VPSHRDD);./
    Keyword ::= v p s h r d q /.$setResult($_VPSHRDQ);./
    Keyword ::= v p s h r d w /.$setResult($_VPSHRDW);./
    Keyword ::= v p s h u f b /.$setResult($_VPSHUFB);./
    Keyword ::= v p s h u f d /.$setResult($_VPSHUFD);./
    Keyword ::= v p s i g n b /.$setResult($_VPSIGNB);./
    Keyword ::= v p s i g n d /.$setResult($_VPSIGND);./
    Keyword ::= v p s i g n w /.$setResult($_VPSIGNW);./
    Keyword ::= v p s l l d q /.$setResult($_VPSLLDQ);./
    Keyword ::= v p s l l v d /.$setResult($_VPSLLVD);./
    Keyword ::= v p s l l v q /.$setResult($_VPSLLVQ);./
    Keyword ::= v p s l l v w /.$setResult($_VPSLLVW);./
    Keyword ::= v p s r a v d /.$setResult($_VPSRAVD);./
    Keyword ::= v p s r a v q /.$setResult($_VPSRAVQ);./
    Keyword ::= v p s r a v w /.$setResult($_VPSRAVW);./
    Keyword ::= v p s r l d q /.$setResult($_VPSRLDQ);./
    Keyword ::= v p s r l v d /.$setResult($_VPSRLVD);./
    Keyword ::= v p s r l v q /.$setResult($_VPSRLVQ);./
    Keyword ::= v p s r l v w /.$setResult($_VPSRLVW);./
    Keyword ::= v p s u b s b /.$setResult($_VPSUBSB);./
    Keyword ::= v p s u b s w /.$setResult($_VPSUBSW);./
    Keyword ::= v s h u f p d /.$setResult($_VSHUFPD);./
    Keyword ::= v s h u f p s /.$setResult($_VSHUFPS);./
    Keyword ::= v s q r t p d /.$setResult($_VSQRTPD);./
    Keyword ::= v s q r t p h /.$setResult($_VSQRTPH);./
    Keyword ::= v s q r t p s /.$setResult($_VSQRTPS);./
    Keyword ::= v s q r t s d /.$setResult($_VSQRTSD);./
    Keyword ::= v s q r t s h /.$setResult($_VSQRTSH);./
    Keyword ::= v s q r t s s /.$setResult($_VSQRTSS);./
    Keyword ::= v t e s t p d /.$setResult($_VTESTPD);./
    Keyword ::= v t e s t p s /.$setResult($_VTESTPS);./
    Keyword ::= w a r n i n g /.$setResult($_WARNING);./
    Keyword ::= w r m s r n s /.$setResult($_WRMSRNS);./
    Keyword ::= x r s t o r s /.$setResult($_XRSTORS);./
    Keyword ::= a e s d e c /.$setResult($_AESDEC);./
    Keyword ::= a e s e n c /.$setResult($_AESENC);./
    Keyword ::= a e s i m c /.$setResult($_AESIMC);./
    Keyword ::= a n d n p d /.$setResult($_ANDNPD);./
    Keyword ::= a n d n p s /.$setResult($_ANDNPS);./
    Keyword ::= b l c m s k /.$setResult($_BLCMSK);./
    Keyword ::= b l s m s k /.$setResult($_BLSMSK);./
    Keyword ::= b n d l d x /.$setResult($_BNDLDX);./
    Keyword ::= b n d m o v /.$setResult($_BNDMOV);./
    Keyword ::= b n d s t x /.$setResult($_BNDSTX);./
    Keyword ::= c l z e r o /.$setResult($_CLZERO);./
    Keyword ::= c m o v a e /.$setResult($_CMOVAE);./
    Keyword ::= c m o v b e /.$setResult($_CMOVBE);./
    Keyword ::= c m o v g e /.$setResult($_CMOVGE);./
    Keyword ::= c m o v l e /.$setResult($_CMOVLE);./
    Keyword ::= c m o v n a /.$setResult($_CMOVNA);./
    Keyword ::= c m o v n b /.$setResult($_CMOVNB);./
    Keyword ::= c m o v n c /.$setResult($_CMOVNC);./
    Keyword ::= c m o v n e /.$setResult($_CMOVNE);./
    Keyword ::= c m o v n g /.$setResult($_CMOVNG);./
    Keyword ::= c m o v n l /.$setResult($_CMOVNL);./
    Keyword ::= c m o v n o /.$setResult($_CMOVNO);./
    Keyword ::= c m o v n p /.$setResult($_CMOVNP);./
    Keyword ::= c m o v n s /.$setResult($_CMOVNS);./
    Keyword ::= c m o v n z /.$setResult($_CMOVNZ);./
    Keyword ::= c m o v p e /.$setResult($_CMOVPE);./
    Keyword ::= c m o v p o /.$setResult($_CMOVPO);./
    Keyword ::= c o m d a t /.$setResult($_COMDAT);./
    Keyword ::= c o m i s d /.$setResult($_COMISD);./
    Keyword ::= c o m i s s /.$setResult($_COMISS);./
    Keyword ::= c o m m o n /.$setResult($_COMMON);./
    Keyword ::= e n q c m d /.$setResult($_ENQCMD);./
    Keyword ::= e x p o r t /.$setResult($_EXPORT);./
    Keyword ::= e x t e r n /.$setResult($_EXTERN);./
    Keyword ::= f c m o v b /.$setResult($_FCMOVB);./
    Keyword ::= f c m o v e /.$setResult($_FCMOVE);./
    Keyword ::= f c m o v u /.$setResult($_FCMOVU);./
    Keyword ::= f c o m i p /.$setResult($_FCOMIP);./
    Keyword ::= f c o m p p /.$setResult($_FCOMPP);./
    Keyword ::= f d i v r p /.$setResult($_FDIVRP);./
    Keyword ::= f f r e e p /.$setResult($_FFREEP);./
    Keyword ::= f i c o m p /.$setResult($_FICOMP);./
    Keyword ::= f i d i v r /.$setResult($_FIDIVR);./
    Keyword ::= f i s t t p /.$setResult($_FISTTP);./
    Keyword ::= f i s u b r /.$setResult($_FISUBR);./
    Keyword ::= f l d e n v /.$setResult($_FLDENV);./
    Keyword ::= f n c l e x /.$setResult($_FNCLEX);./
    Keyword ::= f n d i s i /.$setResult($_FNDISI);./
    Keyword ::= f n i n i t /.$setResult($_FNINIT);./
    Keyword ::= f n s a v e /.$setResult($_FNSAVE);./
    Keyword ::= f n s t c w /.$setResult($_FNSTCW);./
    Keyword ::= f n s t s w /.$setResult($_FNSTSW);./
    Keyword ::= f p a t a n /.$setResult($_FPATAN);./
    Keyword ::= f r s t o r /.$setResult($_FRSTOR);./
    Keyword ::= f s c a l e /.$setResult($_FSCALE);./
    Keyword ::= f s e t p m /.$setResult($_FSETPM);./
    Keyword ::= f s t e n v /.$setResult($_FSTENV);./
    Keyword ::= f s u b r p /.$setResult($_FSUBRP);./
    Keyword ::= f u c o m i /.$setResult($_FUCOMI);./
    Keyword ::= f u c o m p /.$setResult($_FUCOMP);./
    Keyword ::= f x s a v e /.$setResult($_FXSAVE);./
    Keyword ::= g e t s e c /.$setResult($_GETSEC);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= h a d d p d /.$setResult($_HADDPD);./
    Keyword ::= h a d d p s /.$setResult($_HADDPS);./
    Keyword ::= h i d d e n /.$setResult($_HIDDEN_);./
    Keyword ::= h r e s e t /.$setResult($_HRESET);./
    Keyword ::= h s u b p d /.$setResult($_HSUBPD);./
    Keyword ::= h s u b p s /.$setResult($_HSUBPS);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= i n c b i n /.$setResult($_INCBIN);./
    Keyword ::= i n v e p t /.$setResult($_INVEPT);./
    Keyword ::= i n v l p g /.$setResult($_INVLPG);./
    Keyword ::= k a n d n b /.$setResult($_KANDNB);./
    Keyword ::= k a n d n d /.$setResult($_KANDND);./
    Keyword ::= k a n d n q /.$setResult($_KANDNQ);./
    Keyword ::= k a n d n w /.$setResult($_KANDNW);./
    Keyword ::= k t e s t b /.$setResult($_KTESTB);./
    Keyword ::= k t e s t d /.$setResult($_KTESTD);./
    Keyword ::= k t e s t q /.$setResult($_KTESTQ);./
    Keyword ::= k t e s t w /.$setResult($_KTESTW);./
    Keyword ::= k u n p c k /.$setResult($_KUNPCK);./
    Keyword ::= k x n o r b /.$setResult($_KXNORB);./
    Keyword ::= k x n o r d /.$setResult($_KXNORD);./
    Keyword ::= k x n o r q /.$setResult($_KXNORQ);./
    Keyword ::= k x n o r w /.$setResult($_KXNORW);./
    Keyword ::= l f e n c e /.$setResult($_LFENCE);./
    Keyword ::= l l w p c b /.$setResult($_LLWPCB);./
    Keyword ::= l o o p n e /.$setResult($_LOOPNE);./
    Keyword ::= l o o p n z /.$setResult($_LOOPNZ);./
    Keyword ::= l w p i n s /.$setResult($_LWPINS);./
    Keyword ::= l w p v a l /.$setResult($_LWPVAL);./
    Keyword ::= m f e n c e /.$setResult($_MFENCE);./
    Keyword ::= m o v a p d /.$setResult($_MOVAPD);./
    Keyword ::= m o v a p s /.$setResult($_MOVAPS);./
    Keyword ::= m o v d q a /.$setResult($_MOVDQA);./
    Keyword ::= m o v d q u /.$setResult($_MOVDQU);./
    Keyword ::= m o v h p d /.$setResult($_MOVHPD);./
    Keyword ::= m o v h p s /.$setResult($_MOVHPS);./
    Keyword ::= m o v l p d /.$setResult($_MOVLPD);./
    Keyword ::= m o v l p s /.$setResult($_MOVLPS);./
    Keyword ::= m o v n t i /.$setResult($_MOVNTI);./
    Keyword ::= m o v n t q /.$setResult($_MOVNTQ);./
    Keyword ::= m o v s x d /.$setResult($_MOVSXD);./
    Keyword ::= m o v u p d /.$setResult($_MOVUPD);./
    Keyword ::= m o v u p s /.$setResult($_MOVUPS);./
    Keyword ::= m w a i t x /.$setResult($_MWAITX);./
    Keyword ::= n o b i t s /.$setResult($_NOBITS);./
    Keyword ::= n o d a t a /.$setResult($_NODATA);./
    Keyword ::= n o e x e c /.$setResult($_NOEXEC);./
    Keyword ::= o b j e c t /.$setResult($_OBJECT);./
    Keyword ::= p a d d s b /.$setResult($_PADDSB);./
    Keyword ::= p a d d s w /.$setResult($_PADDSW);./
    Keyword ::= p e x t r b /.$setResult($_PEXTRB);./
    Keyword ::= p e x t r d /.$setResult($_PEXTRD);./
    Keyword ::= p e x t r q /.$setResult($_PEXTRQ);./
    Keyword ::= p e x t r w /.$setResult($_PEXTRW);./
    Keyword ::= p f n a c c /.$setResult($_PFNACC);./
    Keyword ::= p f r c p v /.$setResult($_PFRCPV);./
    Keyword ::= p f s u b r /.$setResult($_PFSUBR);./
    Keyword ::= p h a d d d /.$setResult($_PHADDD);./
    Keyword ::= p h a d d w /.$setResult($_PHADDW);./
    Keyword ::= p h s u b d /.$setResult($_PHSUBD);./
    Keyword ::= p h s u b w /.$setResult($_PHSUBW);./
    Keyword ::= p i n s r b /.$setResult($_PINSRB);./
    Keyword ::= p i n s r d /.$setResult($_PINSRD);./
    Keyword ::= p i n s r q /.$setResult($_PINSRQ);./
    Keyword ::= p i n s r w /.$setResult($_PINSRW);./
    Keyword ::= p m a x s b /.$setResult($_PMAXSB);./
    Keyword ::= p m a x s d /.$setResult($_PMAXSD);./
    Keyword ::= p m a x s w /.$setResult($_PMAXSW);./
    Keyword ::= p m a x u b /.$setResult($_PMAXUB);./
    Keyword ::= p m a x u d /.$setResult($_PMAXUD);./
    Keyword ::= p m a x u w /.$setResult($_PMAXUW);./
    Keyword ::= p m i n s b /.$setResult($_PMINSB);./
    Keyword ::= p m i n s d /.$setResult($_PMINSD);./
    Keyword ::= p m i n s w /.$setResult($_PMINSW);./
    Keyword ::= p m i n u b /.$setResult($_PMINUB);./
    Keyword ::= p m i n u d /.$setResult($_PMINUD);./
    Keyword ::= p m i n u w /.$setResult($_PMINUW);./
    Keyword ::= p m u l d q /.$setResult($_PMULDQ);./
    Keyword ::= p m u l h w /.$setResult($_PMULHW);./
    Keyword ::= p m u l l d /.$setResult($_PMULLD);./
    Keyword ::= p m u l l w /.$setResult($_PMULLW);./
    Keyword ::= p m v l z b /.$setResult($_PMVLZB);./
    Keyword ::= p m v n z b /.$setResult($_PMVNZB);./
    Keyword ::= p o p c n t /.$setResult($_POPCNT);./
    Keyword ::= p s a d b w /.$setResult($_PSADBW);./
    Keyword ::= p s h u f b /.$setResult($_PSHUFB);./
    Keyword ::= p s h u f d /.$setResult($_PSHUFD);./
    Keyword ::= p s h u f w /.$setResult($_PSHUFW);./
    Keyword ::= p s i g n b /.$setResult($_PSIGNB);./
    Keyword ::= p s i g n d /.$setResult($_PSIGND);./
    Keyword ::= p s i g n w /.$setResult($_PSIGNW);./
    Keyword ::= p s l l d q /.$setResult($_PSLLDQ);./
    Keyword ::= p s r l d q /.$setResult($_PSRLDQ);./
    Keyword ::= p s u b s b /.$setResult($_PSUBSB);./
    Keyword ::= p s u b s w /.$setResult($_PSUBSW);./
    Keyword ::= p s w a p d /.$setResult($_PSWAPD);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= p u s h a d /.$setResult($_PUSHAD);./
    Keyword ::= p u s h a w /.$setResult($_PUSHAW);./
    Keyword ::= p u s h f d /.$setResult($_PUSHFD);./
    Keyword ::= p u s h f q /.$setResult($_PUSHFQ);./
    Keyword ::= p u s h f w /.$setResult($_PUSHFW);./
    Keyword ::= r d p k r u /.$setResult($_RDPKRU);./
    Keyword ::= r d r a n d /.$setResult($_RDRAND);./
    Keyword ::= r d s e e d /.$setResult($_RDSEED);./
    Keyword ::= r d s s p d /.$setResult($_RDSSPD);./
    Keyword ::= r d s s p q /.$setResult($_RDSSPQ);./
    Keyword ::= r d t s c p /.$setResult($_RDTSCP);./
    Keyword ::= s e t n a e /.$setResult($_SETNAE);./
    Keyword ::= s e t n b e /.$setResult($_SETNBE);./
    Keyword ::= s e t n g e /.$setResult($_SETNGE);./
    Keyword ::= s e t n l e /.$setResult($_SETNLE);./
    Keyword ::= s f e n c e /.$setResult($_SFENCE);./
    Keyword ::= s h u f p d /.$setResult($_SHUFPD);./
    Keyword ::= s h u f p s /.$setResult($_SHUFPS);./
    Keyword ::= s k i n i t /.$setResult($_SKINIT);./
    Keyword ::= s l w p c b /.$setResult($_SLWPCB);./
    Keyword ::= s q r t p d /.$setResult($_SQRTPD);./
    Keyword ::= s q r t p s /.$setResult($_SQRTPS);./
    Keyword ::= s q r t s d /.$setResult($_SQRTSD);./
    Keyword ::= s q r t s s /.$setResult($_SQRTSS);./
    Keyword ::= s t a t i c /.$setResult($_STATIC);./
    Keyword ::= s t r i c t /.$setResult($_STRICT);./
    Keyword ::= s t r o n g /.$setResult($_STRONG);./
    Keyword ::= s w a p g s /.$setResult($_SWAPGS);./
    Keyword ::= s y s r e t /.$setResult($_SYSRET);./
    Keyword ::= t e s t u i /.$setResult($_TESTUI);./
    Keyword ::= t p a u s e /.$setResult($_TPAUSE);./
    Keyword ::= u m w a i t /.$setResult($_UMWAIT);./
    Keyword ::= v a d d p d /.$setResult($_VADDPD);./
    Keyword ::= v a d d p h /.$setResult($_VADDPH);./
    Keyword ::= v a d d p s /.$setResult($_VADDPS);./
    Keyword ::= v a d d s d /.$setResult($_VADDSD);./
    Keyword ::= v a d d s h /.$setResult($_VADDSH);./
    Keyword ::= v a d d s s /.$setResult($_VADDSS);./
    Keyword ::= v a n d p d /.$setResult($_VANDPD);./
    Keyword ::= v a n d p s /.$setResult($_VANDPS);./
    Keyword ::= v c m p p d /.$setResult($_VCMPPD);./
    Keyword ::= v c m p p h /.$setResult($_VCMPPH);./
    Keyword ::= v c m p p s /.$setResult($_VCMPPS);./
    Keyword ::= v c m p s d /.$setResult($_VCMPSD);./
    Keyword ::= v c m p s h /.$setResult($_VCMPSH);./
    Keyword ::= v c m p s s /.$setResult($_VCMPSS);./
    Keyword ::= v d i v p d /.$setResult($_VDIVPD);./
    Keyword ::= v d i v p h /.$setResult($_VDIVPH);./
    Keyword ::= v d i v p s /.$setResult($_VDIVPS);./
    Keyword ::= v d i v s d /.$setResult($_VDIVSD);./
    Keyword ::= v d i v s h /.$setResult($_VDIVSH);./
    Keyword ::= v d i v s s /.$setResult($_VDIVSS);./
    Keyword ::= v l d d q u /.$setResult($_VLDDQU);./
    Keyword ::= v l d q q u /.$setResult($_VLDQQU);./
    Keyword ::= v m a x p d /.$setResult($_VMAXPD);./
    Keyword ::= v m a x p s /.$setResult($_VMAXPS);./
    Keyword ::= v m a x s d /.$setResult($_VMAXSD);./
    Keyword ::= v m a x s s /.$setResult($_VMAXSS);./
    Keyword ::= v m c a l l /.$setResult($_VMCALL);./
    Keyword ::= v m f u n c /.$setResult($_VMFUNC);./
    Keyword ::= v m i n p d /.$setResult($_VMINPD);./
    Keyword ::= v m i n p s /.$setResult($_VMINPS);./
    Keyword ::= v m i n s d /.$setResult($_VMINSD);./
    Keyword ::= v m i n s s /.$setResult($_VMINSS);./
    Keyword ::= v m l o a d /.$setResult($_VMLOAD);./
    Keyword ::= v m o v s d /.$setResult($_VMOVSD);./
    Keyword ::= v m o v s h /.$setResult($_VMOVSH);./
    Keyword ::= v m o v s s /.$setResult($_VMOVSS);./
    Keyword ::= v m r e a d /.$setResult($_VMREAD);./
    Keyword ::= v m s a v e /.$setResult($_VMSAVE);./
    Keyword ::= v m u l p d /.$setResult($_VMULPD);./
    Keyword ::= v m u l p h /.$setResult($_VMULPH);./
    Keyword ::= v m u l p s /.$setResult($_VMULPS);./
    Keyword ::= v m u l s d /.$setResult($_VMULSD);./
    Keyword ::= v m u l s h /.$setResult($_VMULSH);./
    Keyword ::= v m u l s s /.$setResult($_VMULSS);./
    Keyword ::= v m x o f f /.$setResult($_VMXOFF);./
    Keyword ::= v p a b s b /.$setResult($_VPABSB);./
    Keyword ::= v p a b s d /.$setResult($_VPABSD);./
    Keyword ::= v p a b s q /.$setResult($_VPABSQ);./
    Keyword ::= v p a b s w /.$setResult($_VPABSW);./
    Keyword ::= v p a d d b /.$setResult($_VPADDB);./
    Keyword ::= v p a d d d /.$setResult($_VPADDD);./
    Keyword ::= v p a d d q /.$setResult($_VPADDQ);./
    Keyword ::= v p a d d w /.$setResult($_VPADDW);./
    Keyword ::= v p a n d d /.$setResult($_VPANDD);./
    Keyword ::= v p a n d n /.$setResult($_VPANDN);./
    Keyword ::= v p a n d q /.$setResult($_VPANDQ);./
    Keyword ::= v p a v g b /.$setResult($_VPAVGB);./
    Keyword ::= v p a v g w /.$setResult($_VPAVGW);./
    Keyword ::= v p c m o v /.$setResult($_VPCMOV);./
    Keyword ::= v p c m p b /.$setResult($_VPCMPB);./
    Keyword ::= v p c m p d /.$setResult($_VPCMPD);./
    Keyword ::= v p c m p q /.$setResult($_VPCMPQ);./
    Keyword ::= v p c m p w /.$setResult($_VPCMPW);./
    Keyword ::= v p c o m b /.$setResult($_VPCOMB);./
    Keyword ::= v p c o m d /.$setResult($_VPCOMD);./
    Keyword ::= v p c o m q /.$setResult($_VPCOMQ);./
    Keyword ::= v p c o m w /.$setResult($_VPCOMW);./
    Keyword ::= v p e r m b /.$setResult($_VPERMB);./
    Keyword ::= v p e r m d /.$setResult($_VPERMD);./
    Keyword ::= v p e r m q /.$setResult($_VPERMQ);./
    Keyword ::= v p e r m w /.$setResult($_VPERMW);./
    Keyword ::= v p p e r m /.$setResult($_VPPERM);./
    Keyword ::= v p r o l d /.$setResult($_VPROLD);./
    Keyword ::= v p r o l q /.$setResult($_VPROLQ);./
    Keyword ::= v p r o r d /.$setResult($_VPRORD);./
    Keyword ::= v p r o r q /.$setResult($_VPRORQ);./
    Keyword ::= v p r o t b /.$setResult($_VPROTB);./
    Keyword ::= v p r o t d /.$setResult($_VPROTD);./
    Keyword ::= v p r o t q /.$setResult($_VPROTQ);./
    Keyword ::= v p r o t w /.$setResult($_VPROTW);./
    Keyword ::= v p s h a b /.$setResult($_VPSHAB);./
    Keyword ::= v p s h a d /.$setResult($_VPSHAD);./
    Keyword ::= v p s h a q /.$setResult($_VPSHAQ);./
    Keyword ::= v p s h a w /.$setResult($_VPSHAW);./
    Keyword ::= v p s h l b /.$setResult($_VPSHLB);./
    Keyword ::= v p s h l d /.$setResult($_VPSHLD);./
    Keyword ::= v p s h l q /.$setResult($_VPSHLQ);./
    Keyword ::= v p s h l w /.$setResult($_VPSHLW);./
    Keyword ::= v p s l l d /.$setResult($_VPSLLD);./
    Keyword ::= v p s l l q /.$setResult($_VPSLLQ);./
    Keyword ::= v p s l l w /.$setResult($_VPSLLW);./
    Keyword ::= v p s r a d /.$setResult($_VPSRAD);./
    Keyword ::= v p s r a q /.$setResult($_VPSRAQ);./
    Keyword ::= v p s r a w /.$setResult($_VPSRAW);./
    Keyword ::= v p s r l d /.$setResult($_VPSRLD);./
    Keyword ::= v p s r l q /.$setResult($_VPSRLQ);./
    Keyword ::= v p s r l w /.$setResult($_VPSRLW);./
    Keyword ::= v p s u b b /.$setResult($_VPSUBB);./
    Keyword ::= v p s u b d /.$setResult($_VPSUBD);./
    Keyword ::= v p s u b q /.$setResult($_VPSUBQ);./
    Keyword ::= v p s u b w /.$setResult($_VPSUBW);./
    Keyword ::= v p t e s t /.$setResult($_VPTEST);./
    Keyword ::= v p x o r d /.$setResult($_VPXORD);./
    Keyword ::= v p x o r q /.$setResult($_VPXORQ);./
    Keyword ::= v r c p p h /.$setResult($_VRCPPH);./
    Keyword ::= v r c p p s /.$setResult($_VRCPPS);./
    Keyword ::= v r c p s h /.$setResult($_VRCPSH);./
    Keyword ::= v r c p s s /.$setResult($_VRCPSS);./
    Keyword ::= v s t a r t /.$setResult($_VSTART);./
    Keyword ::= v s u b p d /.$setResult($_VSUBPD);./
    Keyword ::= v s u b p h /.$setResult($_VSUBPH);./
    Keyword ::= v s u b p s /.$setResult($_VSUBPS);./
    Keyword ::= v s u b s d /.$setResult($_VSUBSD);./
    Keyword ::= v s u b s h /.$setResult($_VSUBSH);./
    Keyword ::= v s u b s s /.$setResult($_VSUBSS);./
    Keyword ::= v x o r p d /.$setResult($_VXORPD);./
    Keyword ::= v x o r p s /.$setResult($_VXORPS);./
    Keyword ::= w b i n v d /.$setResult($_WBINVD);./
    Keyword ::= w r p k r u /.$setResult($_WRPKRU);./
    Keyword ::= w r u s s d /.$setResult($_WRUSSD);./
    Keyword ::= w r u s s q /.$setResult($_WRUSSQ);./
    Keyword ::= x a b o r t /.$setResult($_XABORT);./
    Keyword ::= x b e g i n /.$setResult($_XBEGIN);./
    Keyword ::= x g e t b v /.$setResult($_XGETBV);./
    Keyword ::= x r s t o r /.$setResult($_XRSTOR);./
    Keyword ::= x s a v e c /.$setResult($_XSAVEC);./
    Keyword ::= x s a v e s /.$setResult($_XSAVES);./
    Keyword ::= x s e t b v /.$setResult($_XSETBV);./
    Keyword ::= x s t o r e /.$setResult($_XSTORE);./
    Keyword ::= a d d p d /.$setResult($_ADDPD);./
    Keyword ::= a d d p s /.$setResult($_ADDPS);./
    Keyword ::= a d d s d /.$setResult($_ADDSD);./
    Keyword ::= a d d s s /.$setResult($_ADDSS);./
    Keyword ::= a l i g n /.$setResult($_ALIGN);./
    Keyword ::= a l l o c /.$setResult($_ALLOC);./
    Keyword ::= a n d p d /.$setResult($_ANDPD);./
    Keyword ::= a n d p s /.$setResult($_ANDPS);./
    Keyword ::= b e x t r /.$setResult($_BEXTR);./
    Keyword ::= b l c i c /.$setResult($_BLCIC);./
    Keyword ::= b l s i c /.$setResult($_BLSIC);./
    Keyword ::= b n d c l /.$setResult($_BNDCL);./
    Keyword ::= b n d c n /.$setResult($_BNDCN);./
    Keyword ::= b n d c u /.$setResult($_BNDCU);./
    Keyword ::= b n d m k /.$setResult($_BNDMK);./
    Keyword ::= b o u n d /.$setResult($_BOUND);./
    Keyword ::= b r i e f /.$setResult($_BRIEF);./
    Keyword ::= b s w a p /.$setResult($_BSWAP);./
    Keyword ::= c l a s s /.$setResult($_CLASS_);./
    Keyword ::= c m o v a /.$setResult($_CMOVA);./
    Keyword ::= c m o v b /.$setResult($_CMOVB);./
    Keyword ::= c m o v c /.$setResult($_CMOVC);./
    Keyword ::= c m o v e /.$setResult($_CMOVE);./
    Keyword ::= c m o v l /.$setResult($_CMOVL);./
    Keyword ::= c m o v o /.$setResult($_CMOVO);./
    Keyword ::= c m o v p /.$setResult($_CMOVP);./
    Keyword ::= c m o v s /.$setResult($_CMOVS);./
    Keyword ::= c m o v z /.$setResult($_CMOVZ);./
    Keyword ::= c m p p d /.$setResult($_CMPPD);./
    Keyword ::= c m p p s /.$setResult($_CMPPS);./
    Keyword ::= c m p s b /.$setResult($_CMPSB);./
    Keyword ::= c m p s d /.$setResult($_CMPSD);./
    Keyword ::= c m p s q /.$setResult($_CMPSQ);./
    Keyword ::= c m p s s /.$setResult($_CMPSS);./
    Keyword ::= c m p s w /.$setResult($_CMPSW);./
    Keyword ::= c p u i d /.$setResult($_CPUID);./
    Keyword ::= d e b u g /.$setResult($_DEBUG);./
    Keyword ::= d i v p d /.$setResult($_DIVPD);./
    Keyword ::= d i v p s /.$setResult($_DIVPS);./
    Keyword ::= d i v s d /.$setResult($_DIVSD);./
    Keyword ::= d i v s s /.$setResult($_DIVSS);./
    Keyword ::= d m i n t /.$setResult($_DMINT);./
    Keyword ::= d w o r d /.$setResult($_DWORD);./
    Keyword ::= e n c l s /.$setResult($_ENCLS);./
    Keyword ::= e n c l u /.$setResult($_ENCLU);./
    Keyword ::= e n c l v /.$setResult($_ENCLV);./
    Keyword ::= e n t e r /.$setResult($_ENTER);./
    Keyword ::= e x t r q /.$setResult($_EXTRQ);./
    Keyword ::= f a d d p /.$setResult($_FADDP);./
    Keyword ::= f b s t p /.$setResult($_FBSTP);./
    Keyword ::= f c l e x /.$setResult($_FCLEX);./
    Keyword ::= f c o m i /.$setResult($_FCOMI);./
    Keyword ::= f c o m p /.$setResult($_FCOMP);./
    Keyword ::= f d i s i /.$setResult($_FDISI);./
    Keyword ::= f d i v p /.$setResult($_FDIVP);./
    Keyword ::= f d i v r /.$setResult($_FDIVR);./
    Keyword ::= f e m m s /.$setResult($_FEMMS);./
    Keyword ::= f f r e e /.$setResult($_FFREE);./
    Keyword ::= f i a d d /.$setResult($_FIADD);./
    Keyword ::= f i c o m /.$setResult($_FICOM);./
    Keyword ::= f i d i v /.$setResult($_FIDIV);./
    Keyword ::= f i m u l /.$setResult($_FIMUL);./
    Keyword ::= f i n i t /.$setResult($_FINIT);./
    Keyword ::= f i s t p /.$setResult($_FISTP);./
    Keyword ::= f i s u b /.$setResult($_FISUB);./
    Keyword ::= f l d c w /.$setResult($_FLDCW);./
    Keyword ::= f l d p i /.$setResult($_FLDPI);./
    Keyword ::= f l o a t /.$setResult($_FLOAT_NAME);./
    Keyword ::= f m u l p /.$setResult($_FMULP);./
    Keyword ::= f n e n i /.$setResult($_FNENI);./
    Keyword ::= f p r e m /.$setResult($_FPREM);./
    Keyword ::= f p t a n /.$setResult($_FPTAN);./
    Keyword ::= f s a v e /.$setResult($_FSAVE);./
    Keyword ::= f s q r t /.$setResult($_FSQRT);./
    Keyword ::= f s t c w /.$setResult($_FSTCW);./
    Keyword ::= f s t s w /.$setResult($_FSTSW);./
    Keyword ::= f s u b p /.$setResult($_FSUBP);./
    Keyword ::= f s u b r /.$setResult($_FSUBR);./
    Keyword ::= f u c o m /.$setResult($_FUCOM);./
    Keyword ::= f w a i t /.$setResult($_FWAIT);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= i c e b p /.$setResult($_ICEBP);./
    Keyword ::= i r e t d /.$setResult($_IRETD);./
    Keyword ::= i r e t q /.$setResult($_IRETQ);./
    Keyword ::= i r e t w /.$setResult($_IRETW);./
    Keyword ::= j e c x z /.$setResult($_JECXZ);./
    Keyword ::= j r c x z /.$setResult($_JRCXZ);./
    Keyword ::= k a d d b /.$setResult($_KADDB);./
    Keyword ::= k a d d d /.$setResult($_KADDD);./
    Keyword ::= k a d d q /.$setResult($_KADDQ);./
    Keyword ::= k a d d w /.$setResult($_KADDW);./
    Keyword ::= k a n d b /.$setResult($_KANDB);./
    Keyword ::= k a n d d /.$setResult($_KANDD);./
    Keyword ::= k a n d n /.$setResult($_KANDN);./
    Keyword ::= k a n d q /.$setResult($_KANDQ);./
    Keyword ::= k a n d w /.$setResult($_KANDW);./
    Keyword ::= k m o v b /.$setResult($_KMOVB);./
    Keyword ::= k m o v d /.$setResult($_KMOVD);./
    Keyword ::= k m o v q /.$setResult($_KMOVQ);./
    Keyword ::= k m o v w /.$setResult($_KMOVW);./
    Keyword ::= k n o t b /.$setResult($_KNOTB);./
    Keyword ::= k n o t d /.$setResult($_KNOTD);./
    Keyword ::= k n o t q /.$setResult($_KNOTQ);./
    Keyword ::= k n o t w /.$setResult($_KNOTW);./
    Keyword ::= k t e s t /.$setResult($_KTEST);./
    Keyword ::= k x n o r /.$setResult($_KXNOR);./
    Keyword ::= k x o r b /.$setResult($_KXORB);./
    Keyword ::= k x o r d /.$setResult($_KXORD);./
    Keyword ::= k x o r q /.$setResult($_KXORQ);./
    Keyword ::= k x o r w /.$setResult($_KXORW);./
    Keyword ::= l d d q u /.$setResult($_LDDQU);./
    Keyword ::= l e a v e /.$setResult($_LEAVE);./
    Keyword ::= l o d s b /.$setResult($_LODSB);./
    Keyword ::= l o d s d /.$setResult($_LODSD);./
    Keyword ::= l o d s q /.$setResult($_LODSQ);./
    Keyword ::= l o d s w /.$setResult($_LODSW);./
    Keyword ::= l o o p e /.$setResult($_LOOPE);./
    Keyword ::= l o o p z /.$setResult($_LOOPZ);./
    Keyword ::= l z c n t /.$setResult($_LZCNT);./
    Keyword ::= m a x p d /.$setResult($_MAXPD);./
    Keyword ::= m a x p s /.$setResult($_MAXPS);./
    Keyword ::= m a x s d /.$setResult($_MAXSD);./
    Keyword ::= m a x s s /.$setResult($_MAXSS);./
    Keyword ::= m i n p d /.$setResult($_MINPD);./
    Keyword ::= m i n p s /.$setResult($_MINPS);./
    Keyword ::= m i n s d /.$setResult($_MINSD);./
    Keyword ::= m i n s s /.$setResult($_MINSS);./
    Keyword ::= m i x e d /.$setResult($_MIXED);./
    Keyword ::= m o v b e /.$setResult($_MOVBE);./
    Keyword ::= m o v s b /.$setResult($_MOVSB);./
    Keyword ::= m o v s d /.$setResult($_MOVSD);./
    Keyword ::= m o v s q /.$setResult($_MOVSQ);./
    Keyword ::= m o v s s /.$setResult($_MOVSS);./
    Keyword ::= m o v s w /.$setResult($_MOVSW);./
    Keyword ::= m o v s x /.$setResult($_MOVSX);./
    Keyword ::= m o v z x /.$setResult($_MOVZX);./
    Keyword ::= m u l p d /.$setResult($_MULPD);./
    Keyword ::= m u l p s /.$setResult($_MULPS);./
    Keyword ::= m u l s d /.$setResult($_MULSD);./
    Keyword ::= m u l s s /.$setResult($_MULSS);./
    Keyword ::= m w a i t /.$setResult($_MWAIT);./
    Keyword ::= n o b n d /.$setResult($_NOBND);./
    Keyword ::= n o d a z /.$setResult($_NODAZ);./
    Keyword ::= o s a b i /.$setResult($_OSABI);./
    Keyword ::= o u t s b /.$setResult($_OUTSB);./
    Keyword ::= o u t s d /.$setResult($_OUTSD);./
    Keyword ::= o u t s w /.$setResult($_OUTSW);./
    Keyword ::= o w o r d /.$setResult($_OWORD);./
    Keyword ::= p a b s b /.$setResult($_PABSB);./
    Keyword ::= p a b s d /.$setResult($_PABSD);./
    Keyword ::= p a b s w /.$setResult($_PABSW);./
    Keyword ::= p a d d b /.$setResult($_PADDB);./
    Keyword ::= p a d d d /.$setResult($_PADDD);./
    Keyword ::= p a d d q /.$setResult($_PADDQ);./
    Keyword ::= p a d d w /.$setResult($_PADDW);./
    Keyword ::= p a n d n /.$setResult($_PANDN);./
    Keyword ::= p a u s e /.$setResult($_PAUSE);./
    Keyword ::= p a v e b /.$setResult($_PAVEB);./
    Keyword ::= p a v g b /.$setResult($_PAVGB);./
    Keyword ::= p a v g w /.$setResult($_PAVGW);./
    Keyword ::= p f a c c /.$setResult($_PFACC);./
    Keyword ::= p f a d d /.$setResult($_PFADD);./
    Keyword ::= p f m a x /.$setResult($_PFMAX);./
    Keyword ::= p f m i n /.$setResult($_PFMIN);./
    Keyword ::= p f m u l /.$setResult($_PFMUL);./
    Keyword ::= p f r c p /.$setResult($_PFRCP);./
    Keyword ::= p f s u b /.$setResult($_PFSUB);./
    Keyword ::= p m a g w /.$setResult($_PMAGW);./
    Keyword ::= p m v z b /.$setResult($_PMVZB);./
    Keyword ::= p o p a d /.$setResult($_POPAD);./
    Keyword ::= p o p a w /.$setResult($_POPAW);./
    Keyword ::= p o p f d /.$setResult($_POPFD);./
    Keyword ::= p o p f q /.$setResult($_POPFQ);./
    Keyword ::= p o p f w /.$setResult($_POPFW);./
    Keyword ::= p s l l d /.$setResult($_PSLLD);./
    Keyword ::= p s l l q /.$setResult($_PSLLQ);./
    Keyword ::= p s l l w /.$setResult($_PSLLW);./
    Keyword ::= p s r a d /.$setResult($_PSRAD);./
    Keyword ::= p s r a w /.$setResult($_PSRAW);./
    Keyword ::= p s r l d /.$setResult($_PSRLD);./
    Keyword ::= p s r l q /.$setResult($_PSRLQ);./
    Keyword ::= p s r l w /.$setResult($_PSRLW);./
    Keyword ::= p s u b b /.$setResult($_PSUBB);./
    Keyword ::= p s u b d /.$setResult($_PSUBD);./
    Keyword ::= p s u b q /.$setResult($_PSUBQ);./
    Keyword ::= p s u b w /.$setResult($_PSUBW);./
    Keyword ::= p t e s t /.$setResult($_PTEST);./
    Keyword ::= p u s h a /.$setResult($_PUSHA);./
    Keyword ::= p u s h f /.$setResult($_PUSHF);./
    Keyword ::= q w o r d /.$setResult($_QWORD);./
    Keyword ::= r c p p s /.$setResult($_RCPPS);./
    Keyword ::= r c p s s /.$setResult($_RCPSS);./
    Keyword ::= r d a t a /.$setResult($_RDATA);./
    Keyword ::= r d m s r /.$setResult($_RDMSR);./
    Keyword ::= r d p i d /.$setResult($_RDPID);./
    Keyword ::= r d p m c /.$setResult($_RDPMC);./
    Keyword ::= r d s h r /.$setResult($_RDSHR);./
    Keyword ::= r d t s c /.$setResult($_RDTSC);./
    Keyword ::= r e t f d /.$setResult($_RETFD);./
    Keyword ::= r e t f q /.$setResult($_RETFQ);./
    Keyword ::= r e t f w /.$setResult($_RETFW);./
    Keyword ::= r e t n d /.$setResult($_RETND);./
    Keyword ::= r e t n q /.$setResult($_RETNQ);./
    Keyword ::= r e t n w /.$setResult($_RETNW);./
    Keyword ::= r s l d t /.$setResult($_RSLDT);./
    Keyword ::= s c a s b /.$setResult($_SCASB);./
    Keyword ::= s c a s d /.$setResult($_SCASD);./
    Keyword ::= s c a s q /.$setResult($_SCASQ);./
    Keyword ::= s c a s w /.$setResult($_SCASW);./
    Keyword ::= s e t a e /.$setResult($_SETAE);./
    Keyword ::= s e t b e /.$setResult($_SETBE);./
    Keyword ::= s e t g e /.$setResult($_SETGE);./
    Keyword ::= s e t l e /.$setResult($_SETLE);./
    Keyword ::= s e t n a /.$setResult($_SETNA);./
    Keyword ::= s e t n b /.$setResult($_SETNB);./
    Keyword ::= s e t n c /.$setResult($_SETNC);./
    Keyword ::= s e t n e /.$setResult($_SETNE);./
    Keyword ::= s e t n g /.$setResult($_SETNG);./
    Keyword ::= s e t n l /.$setResult($_SETNL);./
    Keyword ::= s e t n o /.$setResult($_SETNO);./
    Keyword ::= s e t n p /.$setResult($_SETNP);./
    Keyword ::= s e t n s /.$setResult($_SETNS);./
    Keyword ::= s e t n z /.$setResult($_SETNZ);./
    Keyword ::= s e t p e /.$setResult($_SETPE);./
    Keyword ::= s e t p o /.$setResult($_SETPO);./
    Keyword ::= s m i n t /.$setResult($_SMINT);./
    Keyword ::= s t a c k /.$setResult($_STACK);./
    Keyword ::= s t a r t /.$setResult($_START);./
    Keyword ::= s t o s b /.$setResult($_STOSB);./
    Keyword ::= s t o s d /.$setResult($_STOSD);./
    Keyword ::= s t o s q /.$setResult($_STOSQ);./
    Keyword ::= s t o s w /.$setResult($_STOSW);./
    Keyword ::= s u b p d /.$setResult($_SUBPD);./
    Keyword ::= s u b p s /.$setResult($_SUBPS);./
    Keyword ::= s u b s d /.$setResult($_SUBSD);./
    Keyword ::= s u b s s /.$setResult($_SUBSS);./
    Keyword ::= s v l d t /.$setResult($_SVLDT);./
    Keyword ::= t i m e s /.$setResult($_TIMES);./
    Keyword ::= t w o r d /.$setResult($_TWORD);./
    Keyword ::= t z c n t /.$setResult($_TZCNT);./
    Keyword ::= t z m s k /.$setResult($_TZMSK);./
    Keyword ::= u i r e t /.$setResult($_UIRET);./
    Keyword ::= v d p p d /.$setResult($_VDPPD);./
    Keyword ::= v d p p s /.$setResult($_VDPPS);./
    Keyword ::= v m o v d /.$setResult($_VMOVD);./
    Keyword ::= v m o v q /.$setResult($_VMOVQ);./
    Keyword ::= v m o v w /.$setResult($_VMOVW);./
    Keyword ::= v m r u n /.$setResult($_VMRUN);./
    Keyword ::= v m x o n /.$setResult($_VMXON);./
    Keyword ::= v o r p d /.$setResult($_VORPD);./
    Keyword ::= v o r p s /.$setResult($_VORPS);./
    Keyword ::= v p a n d /.$setResult($_VPAND);./
    Keyword ::= v p o r d /.$setResult($_VPORD);./
    Keyword ::= v p o r q /.$setResult($_VPORQ);./
    Keyword ::= v p x o r /.$setResult($_VPXOR);./
    Keyword ::= w r i t e /.$setResult($_WRITE);./
    Keyword ::= w r m s r /.$setResult($_WRMSR);./
    Keyword ::= w r s h r /.$setResult($_WRSHR);./
    Keyword ::= w r s s d /.$setResult($_WRSSD);./
    Keyword ::= w r s s q /.$setResult($_WRSSQ);./
    Keyword ::= x l a t b /.$setResult($_XLATB);./
    Keyword ::= x o r p d /.$setResult($_XORPD);./
    Keyword ::= x o r p s /.$setResult($_XORPS);./
    Keyword ::= x s a v e /.$setResult($_XSAVE);./
    Keyword ::= x t e s t /.$setResult($_XTEST);./
    Keyword ::= y w o r d /.$setResult($_YWORD);./
    Keyword ::= z w o r d /.$setResult($_ZWORD);./
    Keyword ::= a a d d /.$setResult($_AADD);./
    Keyword ::= a a n d /.$setResult($_AAND);./
    Keyword ::= a d c x /.$setResult($_ADCX);./
    Keyword ::= a d o x /.$setResult($_ADOX);./
    Keyword ::= a n d n /.$setResult($_ANDN);./
    Keyword ::= a r p l /.$setResult($_ARPL);./
    Keyword ::= a x o r /.$setResult($_AXOR);./
    Keyword ::= b i t s /.$setResult($_BITS);./
    Keyword ::= b l c i /.$setResult($_BLCI);./
    Keyword ::= b l c s /.$setResult($_BLCS);./
    Keyword ::= b l s i /.$setResult($_BLSI);./
    Keyword ::= b l s r /.$setResult($_BLSR);./
    Keyword ::= b y t e /.$setResult($_BYTE);./
    Keyword ::= b z h i /.$setResult($_BZHI);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= c d q e /.$setResult($_CDQE);./
    Keyword ::= c l a c /.$setResult($_CLAC);./
    Keyword ::= c l g i /.$setResult($_CLGI);./
    Keyword ::= c l t s /.$setResult($_CLTS);./
    Keyword ::= c l u i /.$setResult($_CLUI);./
    Keyword ::= c l w b /.$setResult($_CLWB);./
    Keyword ::= c o d e /.$setResult($_CODE);./
    Keyword ::= c w d e /.$setResult($_CWDE);./
    Keyword ::= d a t a /.$setResult($_DATA);./
    Keyword ::= d o w n /.$setResult($_DOWN);./
    Keyword ::= d p p d /.$setResult($_DPPD);./
    Keyword ::= d p p s /.$setResult($_DPPS);./
    Keyword ::= e m m s /.$setResult($_EMMS);./
    Keyword ::= e x e c /.$setResult($_EXEC);./
    Keyword ::= f a b s /.$setResult($_FABS);./
    Keyword ::= f a d d /.$setResult($_FADD);./
    Keyword ::= f b l d /.$setResult($_FBLD);./
    Keyword ::= f c h s /.$setResult($_FCHS);./
    Keyword ::= f c o m /.$setResult($_FCOM);./
    Keyword ::= f c o s /.$setResult($_FCOS);./
    Keyword ::= f d i v /.$setResult($_FDIV);./
    Keyword ::= f e n i /.$setResult($_FENI);./
    Keyword ::= f i l d /.$setResult($_FILD);./
    Keyword ::= f i s t /.$setResult($_FIST);./
    Keyword ::= f l a t /.$setResult($_FLAT);./
    Keyword ::= f l d z /.$setResult($_FLDZ);./
    Keyword ::= f m u l /.$setResult($_FMUL);./
    Keyword ::= f n o p /.$setResult($_FNOP);./
    Keyword ::= f s i n /.$setResult($_FSIN);./
    Keyword ::= f s t p /.$setResult($_FSTP);./
    Keyword ::= f s u b /.$setResult($_FSUB);./
    Keyword ::= f t s t /.$setResult($_FTST);./
    Keyword ::= f x a m /.$setResult($_FXAM);./
    Keyword ::= f x c h /.$setResult($_FXCH);./
    Keyword ::= i b t s /.$setResult($_IBTS);./
    Keyword ::= i d i v /.$setResult($_IDIV);./
    Keyword ::= i m u l /.$setResult($_IMUL);./
    Keyword ::= i n f o /.$setResult($_INFO);./
    Keyword ::= i n s b /.$setResult($_INSB);./
    Keyword ::= i n s d /.$setResult($_INSD);./
    Keyword ::= i n s w /.$setResult($_INSW);./
    Keyword ::= i n t o /.$setResult($_INTO);./
    Keyword ::= i n v d /.$setResult($_INVD);./
    Keyword ::= i r e t /.$setResult($_IRET);./
    Keyword ::= j c x z /.$setResult($_JCXZ);./
    Keyword ::= j m p e /.$setResult($_JMPE);./
    Keyword ::= j n a e /.$setResult($_JNAE);./
    Keyword ::= j n b e /.$setResult($_JNBE);./
    Keyword ::= j n g e /.$setResult($_JNGE);./
    Keyword ::= j n l e /.$setResult($_JNLE);./
    Keyword ::= k a d d /.$setResult($_KADD);./
    Keyword ::= k a n d /.$setResult($_KAND);./
    Keyword ::= k m o v /.$setResult($_KMOV);./
    Keyword ::= k n o t /.$setResult($_KNOT);./
    Keyword ::= k o r b /.$setResult($_KORB);./
    Keyword ::= k o r d /.$setResult($_KORD);./
    Keyword ::= k o r q /.$setResult($_KORQ);./
    Keyword ::= k o r w /.$setResult($_KORW);./
    Keyword ::= k x o r /.$setResult($_KXOR);./
    Keyword ::= l a h f /.$setResult($_LAHF);./
    Keyword ::= l g d t /.$setResult($_LGDT);./
    Keyword ::= l i d t /.$setResult($_LIDT);./
    Keyword ::= l l d t /.$setResult($_LLDT);./
    Keyword ::= l m s w /.$setResult($_LMSW);./
    Keyword ::= l o o p /.$setResult($_LOOP);./
    Keyword ::= m o v d /.$setResult($_MOVD);./
    Keyword ::= m o v q /.$setResult($_MOVQ);./
    Keyword ::= m u l x /.$setResult($_MULX);./
    Keyword ::= n e a r /.$setResult($_NEAR);./
    Keyword ::= n o t e /.$setResult($_NOTE);./
    Keyword ::= o r p d /.$setResult($_ORPD);./
    Keyword ::= o r p s /.$setResult($_ORPS);./
    Keyword ::= p a n d /.$setResult($_PAND);./
    Keyword ::= p a r m /.$setResult($_PARM);./
    Keyword ::= p d e p /.$setResult($_PDEP);./
    Keyword ::= p e x t /.$setResult($_PEXT);./
    Keyword ::= p o p a /.$setResult($_POPA);./
    Keyword ::= p o p f /.$setResult($_POPF);./
    Keyword ::= p u s h /.$setResult($_PUSH);./
    Keyword ::= p x o r /.$setResult($_PXOR);./
    Keyword ::= r e s b /.$setResult($_RESB);./
    Keyword ::= r e s d /.$setResult($_RESD);./
    Keyword ::= r e s o /.$setResult($_RESO);./
    Keyword ::= r e s q /.$setResult($_RESQ);./
    Keyword ::= r e s t /.$setResult($_REST);./
    Keyword ::= r e s w /.$setResult($_RESW);./
    Keyword ::= r e s y /.$setResult($_RESY);./
    Keyword ::= r e s z /.$setResult($_RESZ);./
    Keyword ::= r e t d /.$setResult($_RETD);./
    Keyword ::= r e t f /.$setResult($_RETF);./
    Keyword ::= r e t n /.$setResult($_RETN);./
    Keyword ::= r e t q /.$setResult($_RETQ);./
    Keyword ::= r e t w /.$setResult($_RETW);./
    Keyword ::= r o r x /.$setResult($_RORX);./
    Keyword ::= r s d c /.$setResult($_RSDC);./
    Keyword ::= r s t s /.$setResult($_RSTS);./
    Keyword ::= s a h f /.$setResult($_SAHF);./
    Keyword ::= s a l c /.$setResult($_SALC);./
    Keyword ::= s a r x /.$setResult($_SARX);./
    Keyword ::= s e t a /.$setResult($_SETA);./
    Keyword ::= s e t b /.$setResult($_SETB);./
    Keyword ::= s e t c /.$setResult($_SETC);./
    Keyword ::= s e t e /.$setResult($_SETE);./
    Keyword ::= s e t g /.$setResult($_SETG);./
    Keyword ::= s e t l /.$setResult($_SETL);./
    Keyword ::= s e t o /.$setResult($_SETO);./
    Keyword ::= s e t p /.$setResult($_SETP);./
    Keyword ::= s e t s /.$setResult($_SETS);./
    Keyword ::= s e t z /.$setResult($_SETZ);./
    Keyword ::= s g d t /.$setResult($_SGDT);./
    Keyword ::= s h l d /.$setResult($_SHLD);./
    Keyword ::= s h l x /.$setResult($_SHLX);./
    Keyword ::= s h r d /.$setResult($_SHRD);./
    Keyword ::= s h r x /.$setResult($_SHRX);./
    Keyword ::= s i d t /.$setResult($_SIDT);./
    Keyword ::= s l d t /.$setResult($_SLDT);./
    Keyword ::= s m s w /.$setResult($_SMSW);./
    Keyword ::= s t a c /.$setResult($_STAC);./
    Keyword ::= s t g i /.$setResult($_STGI);./
    Keyword ::= s t u i /.$setResult($_STUI);./
    Keyword ::= s v d c /.$setResult($_SVDC);./
    Keyword ::= s v t s /.$setResult($_SVTS);./
    Keyword ::= t e s t /.$setResult($_TEST);./
    Keyword ::= t e x t /.$setResult($_TEXT);./
    Keyword ::= u m o v /.$setResult($_UMOV);./
    Keyword ::= v e r r /.$setResult($_VERR);./
    Keyword ::= v e r w /.$setResult($_VERW);./
    Keyword ::= v p o r /.$setResult($_VPOR);./
    Keyword ::= w e a k /.$setResult($_WEAK);./
    Keyword ::= w o r d /.$setResult($_WORD);./
    Keyword ::= x a d d /.$setResult($_XADD);./
    Keyword ::= x b t s /.$setResult($_XBTS);./
    Keyword ::= x c h g /.$setResult($_XCHG);./
    Keyword ::= x e n d /.$setResult($_XEND);./
    Keyword ::= x l a t /.$setResult($_XLAT);./
    Keyword ::= z e r o /.$setResult($_ZERO);./
    Keyword ::= a a a /.$setResult($_AAA);./
    Keyword ::= a a d /.$setResult($_AAD);./
    Keyword ::= a a m /.$setResult($_AAM);./
    Keyword ::= a a s /.$setResult($_AAS);./
    Keyword ::= a b s /.$setResult($_ABS);./
    Keyword ::= a d c /.$setResult($_ADC);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= b n d /.$setResult($_BND);./
    Keyword ::= b p l /.$setResult($_BPL);./
    Keyword ::= b s f /.$setResult($_BSF);./
    Keyword ::= b s r /.$setResult($_BSR);./
    Keyword ::= b s s /.$setResult($_BSS);./
    Keyword ::= b t c /.$setResult($_BTC);./
    Keyword ::= b t r /.$setResult($_BTR);./
    Keyword ::= b t s /.$setResult($_BTS);./
    Keyword ::= c b w /.$setResult($_CBW);./
    Keyword ::= c d q /.$setResult($_CDQ);./
    Keyword ::= c l c /.$setResult($_CLC);./
    Keyword ::= c l d /.$setResult($_CLD);./
    Keyword ::= c l i /.$setResult($_CLI);./
    Keyword ::= c m c /.$setResult($_CMC);./
    Keyword ::= c m p /.$setResult($_CMP);./
    Keyword ::= c p u /.$setResult($_CPU);./
    Keyword ::= c q o /.$setResult($_CQO);./
    Keyword ::= c w d /.$setResult($_CWD);./
    Keyword ::= d a a /.$setResult($_DAA);./
    Keyword ::= d a s /.$setResult($_DAS);./
    Keyword ::= d a z /.$setResult($_DAZ);./
    Keyword ::= d e c /.$setResult($_DEC);./
    Keyword ::= d i l /.$setResult($_DIL);./
    Keyword ::= d i v /.$setResult($_DIV);./
    Keyword ::= d u p /.$setResult($_DUP);./
    Keyword ::= e a x /.$setResult($_EAX);./
    Keyword ::= e b p /.$setResult($_EBP);./
    Keyword ::= e b x /.$setResult($_EBX);./
    Keyword ::= e c x /.$setResult($_ECX);./
    Keyword ::= e d i /.$setResult($_EDI);./
    Keyword ::= e d x /.$setResult($_EDX);./
    Keyword ::= e i p /.$setResult($_EIP);./
    Keyword ::= e q u /.$setResult($_EQU);./
    Keyword ::= e s i /.$setResult($_ESI);./
    Keyword ::= e s p /.$setResult($_ESP);./
    Keyword ::= f a r /.$setResult($_FAR);./
    Keyword ::= f l d /.$setResult($_FLD);./
    Keyword ::= f s t /.$setResult($_FST);./
    Keyword ::= h l t /.$setResult($_HLT);./
    Keyword ::= i n c /.$setResult($_INC);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= j a e /.$setResult($_JAE);./
    Keyword ::= j b e /.$setResult($_JBE);./
    Keyword ::= j g e /.$setResult($_JGE);./
    Keyword ::= j l e /.$setResult($_JLE);./
    Keyword ::= j m p /.$setResult($_JMP);./
    Keyword ::= j n a /.$setResult($_JNA);./
    Keyword ::= j n b /.$setResult($_JNB);./
    Keyword ::= j n c /.$setResult($_JNC);./
    Keyword ::= j n e /.$setResult($_JNE);./
    Keyword ::= j n g /.$setResult($_JNG);./
    Keyword ::= j n l /.$setResult($_JNL);./
    Keyword ::= j n o /.$setResult($_JNO);./
    Keyword ::= j n p /.$setResult($_JNP);./
    Keyword ::= j n s /.$setResult($_JNS);./
    Keyword ::= j n z /.$setResult($_JNZ);./
    Keyword ::= j p e /.$setResult($_JPE);./
    Keyword ::= j p o /.$setResult($_JPO);./
    Keyword ::= k o r /.$setResult($_KOR);./
    Keyword ::= l a r /.$setResult($_LAR);./
    Keyword ::= l d s /.$setResult($_LDS);./
    Keyword ::= l e a /.$setResult($_LEA);./
    Keyword ::= l e s /.$setResult($_LES);./
    Keyword ::= l f s /.$setResult($_LFS);./
    Keyword ::= l g s /.$setResult($_LGS);./
    Keyword ::= l s l /.$setResult($_LSL);./
    Keyword ::= l s s /.$setResult($_LSS);./
    Keyword ::= l t r /.$setResult($_LTR);./
    Keyword ::= m a p /.$setResult($_MAP);./
    Keyword ::= m o v /.$setResult($_MOV);./
    Keyword ::= m u l /.$setResult($_MUL);./
    Keyword ::= n e g /.$setResult($_NEG);./
    Keyword ::= n o p /.$setResult($_NOP);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= o r g /.$setResult($_ORG);./
    Keyword ::= o u t /.$setResult($_OUT);./
    Keyword ::= p o p /.$setResult($_POP);./
    Keyword ::= p o r /.$setResult($_POR);./
    Keyword ::= r a x /.$setResult($_RAX);./
    Keyword ::= r b p /.$setResult($_RBP);./
    Keyword ::= r b x /.$setResult($_RBX);./
    Keyword ::= r c l /.$setResult($_RCL);./
    Keyword ::= r c r /.$setResult($_RCR);./
    Keyword ::= r c x /.$setResult($_RCX);./
    Keyword ::= r d i /.$setResult($_RDI);./
    Keyword ::= r d m /.$setResult($_RDM);./
    Keyword ::= r d x /.$setResult($_RDX);./
    Keyword ::= r e l /.$setResult($_REL);./
    Keyword ::= r e t /.$setResult($_RET);./
    Keyword ::= r i p /.$setResult($_RIP);./
    Keyword ::= r o l /.$setResult($_ROL);./
    Keyword ::= r o r /.$setResult($_ROR);./
    Keyword ::= r s i /.$setResult($_RSI);./
    Keyword ::= r s m /.$setResult($_RSM);./
    Keyword ::= r s p /.$setResult($_RSP);./
    Keyword ::= s a l /.$setResult($_SAL);./
    Keyword ::= s a r /.$setResult($_SAR);./
    Keyword ::= s b b /.$setResult($_SBB);./
    Keyword ::= s h l /.$setResult($_SHL);./
    Keyword ::= s h r /.$setResult($_SHR);./
    Keyword ::= s i l /.$setResult($_SIL);./
    Keyword ::= s m i /.$setResult($_SMI);./
    Keyword ::= s p l /.$setResult($_SPL);./
    Keyword ::= s t c /.$setResult($_STC);./
    Keyword ::= s t d /.$setResult($_STD);./
    Keyword ::= s t i /.$setResult($_STI);./
    Keyword ::= s t r /.$setResult($_STR);./
    Keyword ::= s u b /.$setResult($_SUB);./
    Keyword ::= t l s /.$setResult($_TLS);./
    Keyword ::= w r t /.$setResult($_WRT);./
    Keyword ::= x o r /.$setResult($_XOR);./
    Keyword ::= a h /.$setResult($_AH);./
    Keyword ::= a l /.$setResult($_AL);./
    Keyword ::= a x /.$setResult($_AX);./
    Keyword ::= b h /.$setResult($_BH);./
    Keyword ::= b l /.$setResult($_BL);./
    Keyword ::= b p /.$setResult($_BP);./
    Keyword ::= b t /.$setResult($_BT);./
    Keyword ::= b x /.$setResult($_BX);./
    Keyword ::= c h /.$setResult($_CH);./
    Keyword ::= c l /.$setResult($_CL);./
    Keyword ::= c s /.$setResult($_CS);./
    Keyword ::= c x /.$setResult($_CX);./
    Keyword ::= d b /.$setResult($_DB);./
    Keyword ::= d d /.$setResult($_DD);./
    Keyword ::= d h /.$setResult($_DH);./
    Keyword ::= d i /.$setResult($_DI);./
    Keyword ::= d l /.$setResult($_DL);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= d q /.$setResult($_DQ);./
    Keyword ::= d s /.$setResult($_DS);./
    Keyword ::= d t /.$setResult($_DT);./
    Keyword ::= d w /.$setResult($_DW);./
    Keyword ::= d x /.$setResult($_DX);./
    Keyword ::= d y /.$setResult($_DY);./
    Keyword ::= d z /.$setResult($_DZ);./
    Keyword ::= e s /.$setResult($_ES);./
    Keyword ::= f s /.$setResult($_FS);./
    Keyword ::= g s /.$setResult($_GS);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i p /.$setResult($_IP);./
    Keyword ::= j a /.$setResult($_JA);./
    Keyword ::= j b /.$setResult($_JB);./
    Keyword ::= j c /.$setResult($_JC);./
    Keyword ::= j e /.$setResult($_JE);./
    Keyword ::= j g /.$setResult($_JG);./
    Keyword ::= j l /.$setResult($_JL);./
    Keyword ::= j o /.$setResult($_JO);./
    Keyword ::= j p /.$setResult($_JP);./
    Keyword ::= j s /.$setResult($_JS);./
    Keyword ::= j z /.$setResult($_JZ);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= s i /.$setResult($_SI);./
    Keyword ::= s p /.$setResult($_SP);./
    Keyword ::= s s /.$setResult($_SS);./
    Keyword ::= u p /.$setResult($_UP);./
%End
