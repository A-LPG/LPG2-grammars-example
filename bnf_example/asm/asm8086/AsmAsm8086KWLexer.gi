-- Keyword filter for AsmAsm8086 (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.asm.asm8086
%options template=KeywordTemplateF.gi
%options fp=AsmAsm8086KWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    AAA
    AAD
    AAM
    AAS
    ADC
    ADD
    AH
    AL
    AND
    AX
    BH
    BL
    BP
    BX
    BYTE
    CALL
    CBW
    CH
    CI
    CL
    CLC
    CLD
    CLI
    CMC
    CMP
    CMPSB
    CMPSW
    CS
    CSEG
    CWD
    CX
    DAA
    DAS
    DB
    DD
    DEC
    DH
    DI
    DIV
    DL
    DS
    DSEG
    DW
    DWORD
    DX
    END
    ENDIF
    EQ
    EQU
    ES
    ESC
    HLT
    IDIV
    IF
    IMUL
    IN
    INC
    INCLUDE
    INT
    INTO
    IP
    IRET
    JA
    JAE
    JB
    JBE
    JC
    JCXZ
    JE
    JG
    JGE
    JL
    JLE
    JMP
    JMPF
    JMPS
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
    JS
    JZ
    LAHF
    LDS
    LEA
    LENGTH
    LES
    LOCK
    LODS
    LODSB
    LODSW
    LOOP
    LOOPE
    LOOPNE
    LOOPNZ
    LOOPZ
    MOD
    MOV
    MOVS
    MOVSB
    MOVSW
    MUL
    NE
    NEG
    NOP
    NOT
    OFFSET
    OR
    ORG
    OUT
    POP
    POPF
    PTR
    PUSH
    PUSHF
    RB
    RCL
    RCR
    REP
    REPE
    REPNE
    REPNZ
    REPZ
    RET
    RETF
    RETN
    ROL
    ROR
    RS
    RW
    SAHF
    SAL
    SALC
    SAR
    SBB
    SCASB
    SCASW
    SHL
    SHR
    SP
    SS
    STC
    STD
    STI
    STOSB
    STOSW
    SUB
    TEST
    TITLE
    WAIT
    WORD
    XCHG
    XLAT
    XOR
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= i n c l u d e /.$setResult($_INCLUDE);./
    Keyword ::= l e n g t h /.$setResult($_LENGTH);./
    Keyword ::= l o o p n e /.$setResult($_LOOPNE);./
    Keyword ::= l o o p n z /.$setResult($_LOOPNZ);./
    Keyword ::= o f f s e t /.$setResult($_OFFSET);./
    Keyword ::= c m p s b /.$setResult($_CMPSB);./
    Keyword ::= c m p s w /.$setResult($_CMPSW);./
    Keyword ::= d w o r d /.$setResult($_DWORD);./
    Keyword ::= e n d i f /.$setResult($_ENDIF);./
    Keyword ::= l o d s b /.$setResult($_LODSB);./
    Keyword ::= l o d s w /.$setResult($_LODSW);./
    Keyword ::= l o o p e /.$setResult($_LOOPE);./
    Keyword ::= l o o p z /.$setResult($_LOOPZ);./
    Keyword ::= m o v s b /.$setResult($_MOVSB);./
    Keyword ::= m o v s w /.$setResult($_MOVSW);./
    Keyword ::= p u s h f /.$setResult($_PUSHF);./
    Keyword ::= r e p n e /.$setResult($_REPNE);./
    Keyword ::= r e p n z /.$setResult($_REPNZ);./
    Keyword ::= s c a s b /.$setResult($_SCASB);./
    Keyword ::= s c a s w /.$setResult($_SCASW);./
    Keyword ::= s t o s b /.$setResult($_STOSB);./
    Keyword ::= s t o s w /.$setResult($_STOSW);./
    Keyword ::= t i t l e /.$setResult($_TITLE);./
    Keyword ::= b y t e /.$setResult($_BYTE);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= c s e g /.$setResult($_CSEG);./
    Keyword ::= d s e g /.$setResult($_DSEG);./
    Keyword ::= i d i v /.$setResult($_IDIV);./
    Keyword ::= i m u l /.$setResult($_IMUL);./
    Keyword ::= i n t o /.$setResult($_INTO);./
    Keyword ::= i r e t /.$setResult($_IRET);./
    Keyword ::= j c x z /.$setResult($_JCXZ);./
    Keyword ::= j m p f /.$setResult($_JMPF);./
    Keyword ::= j m p s /.$setResult($_JMPS);./
    Keyword ::= j n a e /.$setResult($_JNAE);./
    Keyword ::= j n b e /.$setResult($_JNBE);./
    Keyword ::= j n g e /.$setResult($_JNGE);./
    Keyword ::= j n l e /.$setResult($_JNLE);./
    Keyword ::= l a h f /.$setResult($_LAHF);./
    Keyword ::= l o c k /.$setResult($_LOCK);./
    Keyword ::= l o d s /.$setResult($_LODS);./
    Keyword ::= l o o p /.$setResult($_LOOP);./
    Keyword ::= m o v s /.$setResult($_MOVS);./
    Keyword ::= p o p f /.$setResult($_POPF);./
    Keyword ::= p u s h /.$setResult($_PUSH);./
    Keyword ::= r e p e /.$setResult($_REPE);./
    Keyword ::= r e p z /.$setResult($_REPZ);./
    Keyword ::= r e t f /.$setResult($_RETF);./
    Keyword ::= r e t n /.$setResult($_RETN);./
    Keyword ::= s a h f /.$setResult($_SAHF);./
    Keyword ::= s a l c /.$setResult($_SALC);./
    Keyword ::= t e s t /.$setResult($_TEST);./
    Keyword ::= w a i t /.$setResult($_WAIT);./
    Keyword ::= w o r d /.$setResult($_WORD);./
    Keyword ::= x c h g /.$setResult($_XCHG);./
    Keyword ::= x l a t /.$setResult($_XLAT);./
    Keyword ::= a a a /.$setResult($_AAA);./
    Keyword ::= a a d /.$setResult($_AAD);./
    Keyword ::= a a m /.$setResult($_AAM);./
    Keyword ::= a a s /.$setResult($_AAS);./
    Keyword ::= a d c /.$setResult($_ADC);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= c b w /.$setResult($_CBW);./
    Keyword ::= c l c /.$setResult($_CLC);./
    Keyword ::= c l d /.$setResult($_CLD);./
    Keyword ::= c l i /.$setResult($_CLI);./
    Keyword ::= c m c /.$setResult($_CMC);./
    Keyword ::= c m p /.$setResult($_CMP);./
    Keyword ::= c w d /.$setResult($_CWD);./
    Keyword ::= d a a /.$setResult($_DAA);./
    Keyword ::= d a s /.$setResult($_DAS);./
    Keyword ::= d e c /.$setResult($_DEC);./
    Keyword ::= d i v /.$setResult($_DIV);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= e q u /.$setResult($_EQU);./
    Keyword ::= e s c /.$setResult($_ESC);./
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
    Keyword ::= l d s /.$setResult($_LDS);./
    Keyword ::= l e a /.$setResult($_LEA);./
    Keyword ::= l e s /.$setResult($_LES);./
    Keyword ::= m o d /.$setResult($_MOD);./
    Keyword ::= m o v /.$setResult($_MOV);./
    Keyword ::= m u l /.$setResult($_MUL);./
    Keyword ::= n e g /.$setResult($_NEG);./
    Keyword ::= n o p /.$setResult($_NOP);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= o r g /.$setResult($_ORG);./
    Keyword ::= o u t /.$setResult($_OUT);./
    Keyword ::= p o p /.$setResult($_POP);./
    Keyword ::= p t r /.$setResult($_PTR);./
    Keyword ::= r c l /.$setResult($_RCL);./
    Keyword ::= r c r /.$setResult($_RCR);./
    Keyword ::= r e p /.$setResult($_REP);./
    Keyword ::= r e t /.$setResult($_RET);./
    Keyword ::= r o l /.$setResult($_ROL);./
    Keyword ::= r o r /.$setResult($_ROR);./
    Keyword ::= s a l /.$setResult($_SAL);./
    Keyword ::= s a r /.$setResult($_SAR);./
    Keyword ::= s b b /.$setResult($_SBB);./
    Keyword ::= s h l /.$setResult($_SHL);./
    Keyword ::= s h r /.$setResult($_SHR);./
    Keyword ::= s t c /.$setResult($_STC);./
    Keyword ::= s t d /.$setResult($_STD);./
    Keyword ::= s t i /.$setResult($_STI);./
    Keyword ::= s u b /.$setResult($_SUB);./
    Keyword ::= x o r /.$setResult($_XOR);./
    Keyword ::= a h /.$setResult($_AH);./
    Keyword ::= a l /.$setResult($_AL);./
    Keyword ::= a x /.$setResult($_AX);./
    Keyword ::= b h /.$setResult($_BH);./
    Keyword ::= b l /.$setResult($_BL);./
    Keyword ::= b p /.$setResult($_BP);./
    Keyword ::= b x /.$setResult($_BX);./
    Keyword ::= c h /.$setResult($_CH);./
    Keyword ::= c i /.$setResult($_CI);./
    Keyword ::= c l /.$setResult($_CL);./
    Keyword ::= c s /.$setResult($_CS);./
    Keyword ::= c x /.$setResult($_CX);./
    Keyword ::= d b /.$setResult($_DB);./
    Keyword ::= d d /.$setResult($_DD);./
    Keyword ::= d h /.$setResult($_DH);./
    Keyword ::= d i /.$setResult($_DI);./
    Keyword ::= d l /.$setResult($_DL);./
    Keyword ::= d s /.$setResult($_DS);./
    Keyword ::= d w /.$setResult($_DW);./
    Keyword ::= d x /.$setResult($_DX);./
    Keyword ::= e q /.$setResult($_EQ);./
    Keyword ::= e s /.$setResult($_ES);./
    Keyword ::= i f /.$setResult($_IF);./
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
    Keyword ::= n e /.$setResult($_NE);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= r b /.$setResult($_RB);./
    Keyword ::= r s /.$setResult($_RS);./
    Keyword ::= r w /.$setResult($_RW);./
    Keyword ::= s p /.$setResult($_SP);./
    Keyword ::= s s /.$setResult($_SS);./
%End
