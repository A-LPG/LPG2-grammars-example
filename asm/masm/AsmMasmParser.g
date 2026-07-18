-- AUTO-GENERATED from antlr/grammars-v4 asm/masm by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=AsmMasmParser
%options package=lpg.grammars.asm.masm
%options template=dtParserTemplateF.gi
%options import_terminals=AsmMasmLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    compilationUnit
%End

%Rules
    smoke_insns ::= MOV AX COMMA NUMBER
           | MOV EAX COMMA NUMBER
           | smoke_insns ADD EAX COMMA NUMBER
           | smoke_insns ADD AX COMMA NUMBER
           | smoke_insns RET
           | RET


    compilationUnit ::= smoke_insns
           | listn0002 END IDENTIFIER

    segments ::= IDENTIFIER SEGMENTS PARA PUBLIC listn0004 IDENTIFIER ENDS

    proc ::= IDENTIFIER PROC listn0005 RET IDENTIFIER ENDP

    code ::= binary_exp1
           | binary_exp10_nt
           | binary_exp11_nt
           | binary_exp12_nt
           | binary_exp2
           | binary_exp3
           | binary_exp4
           | binary_exp5
           | binary_exp6
           | binary_exp7
           | binary_exp8
           | binary_exp9
           | unuary_exp1
           | unuary_exp2
           | unuary_exp3
           | unuary_exp4
           | unuary_exp5
           | notarguments
           | variabledeclaration
           | directive_exp1

    binary_exp1 ::= o register_ Separator grpn0006
           | o memory Separator grpn0007

    unuary_exp1 ::= op grpn0008

    unuary_exp2 ::= ope grpn0009

    binary_exp2 ::= oper register_ Separator grpn0010
           | oper memory Separator register_

    notarguments ::= opera

    binary_exp3 ::= operat grpn0011 Separator grpn0012

    unuary_exp3 ::= operato IDENTIFIER

    binary_exp4 ::= operator_ register_ Separator grpn0013

    binary_exp5 ::= l register_ Separator memory

    binary_exp6 ::= x grpn0014 Separator register_

    binary_exp7 ::= s grpn0015 Separator grpn0016

    binary_exp8 ::= sh grpn0017 Separator register_ Separator grpn0018

    binary_exp9 ::= b grpn0019 Separator grpn0020

    unuary_exp4 ::= call grpn0021

    unuary_exp5 ::= interruption Integer

    binary_exp10_nt ::= in_nt register_ Separator grpn0022

    binary_exp11_nt ::= outnt grpn0023 Separator register_

    binary_exp12_nt ::= re opera

    directive_exp1 ::= directives IDENTIFIER
           | directives

    variabledeclaration ::= IDENTIFIER ty grpn0024

    memory ::= LBRACKET grpn0025 optn0031 RBRACKET

    segmentos ::= DS
           | ES
           | CS
           | SS
           | GS
           | FS

    register_ ::= AH
           | AL
           | AX
           | BH
           | BL
           | BX
           | CH
           | CL
           | CX
           | DH
           | DL
           | DX
           | SI
           | DI
           | SP
           | BP
           | EAX
           | EBX
           | ECX
           | EDX
           | ESI
           | EDI
           | ESP
           | EBP

    o ::= MOV
           | CMP
           | TEST

    op ::= PUSH

    ope ::= POP
           | IDIV
           | INC
           | DEC
           | NEG
           | MUL
           | DIV
           | IMUL
           | NOT
           | SETPO
           | SETAE
           | SETNLE
           | SETC
           | SETNO
           | SETNB
           | SETP
           | SETNGE
           | SETL
           | SETGE
           | SETPE
           | SETNL
           | SETNZ
           | SETNE
           | SETNC
           | SETBE
           | SETNP
           | SETNS
           | SETO
           | SETNA
           | SETNAE
           | SETZ
           | SETLE
           | SETNBE
           | SETS
           | SETE
           | SETB
           | SETA
           | SETG
           | SETNG

    oper ::= XCHG

    opera ::= POPAD
           | AAA
           | POPA
           | POPFD
           | CWD
           | LAHF
           | PUSHAD
           | PUSHF
           | AAS
           | BSWAP
           | PUSHFD
           | CBW
           | CWDE
           | XLAT
           | AAM
           | AAD
           | CDQ
           | DAA
           | SAHF
           | DAS
           | INTO
           | IRET
           | CLC
           | STC
           | CMC
           | CLD
           | STD
           | CLI
           | STI
           | MOVSB
           | MOVSW
           | MOVSD
           | LODS
           | LODSB
           | LODSW
           | LODSD
           | STOS
           | STOSB
           | STOSW
           | SOTSD
           | SCAS
           | SCASB
           | SCASW
           | SCASD
           | CMPS
           | CMPSB
           | CMPSW
           | CMPSD
           | INSB
           | INSW
           | INSD
           | OUTSB
           | OUTSW
           | OUTSD

    operat ::= ADC
           | ADD
           | SUB
           | CBB
           | XOR
           | OR

    operato ::= JNBE
           | JNZ
           | JPO
           | JZ
           | JS
           | LOOPNZ
           | JGE
           | JB
           | JNB
           | JO
           | JP
           | JNO
           | JNL
           | JNAE
           | LOOPZ
           | JMP
           | JNP
           | LOOP
           | JL
           | JCXZ
           | JAE
           | JNGE
           | JA
           | LOOPNE
           | LOOPE
           | JG
           | JNLE
           | JE
           | JNC
           | JC
           | JNA
           | JBE
           | JLE
           | JPE
           | JNS
           | JECXZ
           | JNG

    operator_ ::= MOVZX
           | BSF
           | BSR

    l ::= LES
           | LEA
           | LDS
           | INS
           | OUTS

    x ::= XADD
           | CMPXCHG

    s ::= SHL
           | SHR
           | ROR
           | ROL
           | RCL
           | SAL
           | RCR
           | SAR

    sh ::= SHRD
           | SHLD

    b ::= BTR
           | BT
           | BTC

    call ::= CALL

    interruption ::= INT
           | RETN
           | RET
           | RETF

    in_nt ::= IN

    outnt ::= OUT

    re ::= REP
           | REPE
           | REPZ
           | REPNE
           | REPNZ

    directives ::= ALPHA
           | CONST
           | CREF
           | XCREF
           | DATA
           | DATA2
           | DOSSEG
           | ERR
           | ERR1
           | ERR2
           | ERRE
           | ERRNZ
           | ERRDEF
           | ERRNDEF
           | ERRB
           | ERRNB
           | ERRIDN
           | ERRDIF
           | EVEN
           | LIST
           | WIDTH
           | MASK
           | SEQ
           | XLIST
           | EXIT
           | MODEL

    ty ::= BYTE
           | SBYTE
           | DB
           | WORD
           | SWORD
           | DW
           | DWORD
           | SDWORD
           | DD
           | FWORD
           | DF
           | QWORD
           | DQ
           | TBYTE
           | DT
           | REAL4
           | REAL8
           | REAL
           | FAR
           | NEAR
           | PROC

    question ::= QUESTION

    time ::= TIMES

    grpn0001 ::= segments
           | directive_exp1

    listn0002 ::= $empty
           | listn0002 grpn0001

    grpn0003 ::= code
           | proc

    listn0004 ::= $empty
           | listn0004 grpn0003

    listn0005 ::= $empty
           | listn0005 code

    grpn0006 ::= register_
           | Integer
           | memory

    grpn0007 ::= register_
           | Integer

    grpn0008 ::= Integer
           | register_
           | memory

    grpn0009 ::= register_
           | memory

    grpn0010 ::= register_
           | memory

    grpn0011 ::= register_
           | memory

    grpn0012 ::= register_
           | Integer
           | memory

    grpn0013 ::= register_
           | memory

    grpn0014 ::= register_
           | memory

    grpn0015 ::= register_
           | memory

    grpn0016 ::= Integer
           | register_

    grpn0017 ::= register_
           | memory

    grpn0018 ::= register_
           | Integer

    grpn0019 ::= register_
           | memory

    grpn0020 ::= register_
           | memory

    grpn0021 ::= register_
           | memory
           | Integer

    grpn0022 ::= register_
           | Integer

    grpn0023 ::= register_
           | Integer

    grpn0024 ::= question
           | String_
           | Integer

    grpn0025 ::= register_
           | IDENTIFIER

    grpn0029 ::= Integer
           | Hexnum
           | Octalnum

    grpn0028 ::= PLUS grpn0029

    optn0030 ::= grpn0028
           | $empty

    grpn0027 ::= register_ optn0030
           | Integer
           | Hexnum
           | Octalnum

    grpn0026 ::= PLUS grpn0027

    optn0031 ::= grpn0026
           | $empty

%End
