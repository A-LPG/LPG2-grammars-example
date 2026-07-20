-- Keyword filter for AsmMasm (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.asm.masm
%options template=KeywordTemplateF.gi
%options fp=AsmMasmKWLexer

%Include
    KWLexerLowerCaseMapF.gi
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
    AX
    BH
    BL
    BP
    BSF
    BSR
    BSWAP
    BT
    BTC
    BTR
    BX
    BYTE
    CALL
    CBB
    CBW
    CDQ
    CH
    CL
    CLC
    CLD
    CLI
    CMC
    CMP
    CMPS
    CMPSB
    CMPSD
    CMPSW
    CMPXCHG
    CS
    CWD
    CWDE
    CX
    DAA
    DAS
    DATA
    DB
    DD
    DEC
    DF
    DH
    DI
    DIV
    DL
    DOSSEG
    DQ
    DS
    DT
    DW
    DWORD
    DX
    EAX
    EBP
    EBX
    ECX
    EDI
    EDX
    END
    ENDP
    ENDS
    ES
    ESI
    ESP
    EVEN
    FAR
    FS
    FWORD
    GS
    IDIV
    IMUL
    IN
    INC
    INS
    INSB
    INSD
    INSW
    INT
    INTO
    IRET
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
    JNA
    JNAE
    JNB
    JNBE
    JNC
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
    LES
    LODS
    LODSB
    LODSD
    LODSW
    LOOP
    LOOPE
    LOOPNE
    LOOPNZ
    LOOPZ
    MASK
    MOV
    MOVSB
    MOVSD
    MOVSW
    MOVZX
    MUL
    NEAR
    NEG
    NOT
    OR
    OUT
    OUTS
    OUTSB
    OUTSD
    OUTSW
    PARA
    POP
    POPA
    POPAD
    POPFD
    PROC
    PUBLIC
    PUSH
    PUSHAD
    PUSHF
    PUSHFD
    QWORD
    RCL
    RCR
    REAL
    REAL4
    REAL8
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
    SAHF
    SAL
    SAR
    SBYTE
    SCAS
    SCASB
    SCASD
    SCASW
    SDWORD
    SEGMENTS
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
    SETZ
    SHL
    SHLD
    SHR
    SHRD
    SI
    SOTSD
    SP
    SS
    STC
    STD
    STI
    STOS
    STOSB
    STOSW
    SUB
    SWORD
    TBYTE
    TEST
    TIMES
    WIDTH
    WORD
    XADD
    XCHG
    XLAT
    XOR
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= s e g m e n t s /.$setResult($_SEGMENTS);./
    Keyword ::= c m p x c h g /.$setResult($_CMPXCHG);./
    Keyword ::= d o s s e g /.$setResult($_DOSSEG);./
    Keyword ::= l o o p n e /.$setResult($_LOOPNE);./
    Keyword ::= l o o p n z /.$setResult($_LOOPNZ);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= p u s h a d /.$setResult($_PUSHAD);./
    Keyword ::= p u s h f d /.$setResult($_PUSHFD);./
    Keyword ::= s d w o r d /.$setResult($_SDWORD);./
    Keyword ::= s e t n a e /.$setResult($_SETNAE);./
    Keyword ::= s e t n b e /.$setResult($_SETNBE);./
    Keyword ::= s e t n g e /.$setResult($_SETNGE);./
    Keyword ::= s e t n l e /.$setResult($_SETNLE);./
    Keyword ::= b s w a p /.$setResult($_BSWAP);./
    Keyword ::= c m p s b /.$setResult($_CMPSB);./
    Keyword ::= c m p s d /.$setResult($_CMPSD);./
    Keyword ::= c m p s w /.$setResult($_CMPSW);./
    Keyword ::= d w o r d /.$setResult($_DWORD);./
    Keyword ::= f w o r d /.$setResult($_FWORD);./
    Keyword ::= j e c x z /.$setResult($_JECXZ);./
    Keyword ::= l o d s b /.$setResult($_LODSB);./
    Keyword ::= l o d s d /.$setResult($_LODSD);./
    Keyword ::= l o d s w /.$setResult($_LODSW);./
    Keyword ::= l o o p e /.$setResult($_LOOPE);./
    Keyword ::= l o o p z /.$setResult($_LOOPZ);./
    Keyword ::= m o v s b /.$setResult($_MOVSB);./
    Keyword ::= m o v s d /.$setResult($_MOVSD);./
    Keyword ::= m o v s w /.$setResult($_MOVSW);./
    Keyword ::= m o v z x /.$setResult($_MOVZX);./
    Keyword ::= o u t s b /.$setResult($_OUTSB);./
    Keyword ::= o u t s d /.$setResult($_OUTSD);./
    Keyword ::= o u t s w /.$setResult($_OUTSW);./
    Keyword ::= p o p a d /.$setResult($_POPAD);./
    Keyword ::= p o p f d /.$setResult($_POPFD);./
    Keyword ::= p u s h f /.$setResult($_PUSHF);./
    Keyword ::= q w o r d /.$setResult($_QWORD);./
    Keyword ::= r e a l 4 /.$setResult($_REAL4);./
    Keyword ::= r e a l 8 /.$setResult($_REAL8);./
    Keyword ::= r e p n e /.$setResult($_REPNE);./
    Keyword ::= r e p n z /.$setResult($_REPNZ);./
    Keyword ::= s b y t e /.$setResult($_SBYTE);./
    Keyword ::= s c a s b /.$setResult($_SCASB);./
    Keyword ::= s c a s d /.$setResult($_SCASD);./
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
    Keyword ::= s o t s d /.$setResult($_SOTSD);./
    Keyword ::= s t o s b /.$setResult($_STOSB);./
    Keyword ::= s t o s w /.$setResult($_STOSW);./
    Keyword ::= s w o r d /.$setResult($_SWORD);./
    Keyword ::= t b y t e /.$setResult($_TBYTE);./
    Keyword ::= t i m e s /.$setResult($_TIMES);./
    Keyword ::= w i d t h /.$setResult($_WIDTH);./
    Keyword ::= b y t e /.$setResult($_BYTE);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= c m p s /.$setResult($_CMPS);./
    Keyword ::= c w d e /.$setResult($_CWDE);./
    Keyword ::= d a t a /.$setResult($_DATA);./
    Keyword ::= e n d p /.$setResult($_ENDP);./
    Keyword ::= e n d s /.$setResult($_ENDS);./
    Keyword ::= e v e n /.$setResult($_EVEN);./
    Keyword ::= i d i v /.$setResult($_IDIV);./
    Keyword ::= i m u l /.$setResult($_IMUL);./
    Keyword ::= i n s b /.$setResult($_INSB);./
    Keyword ::= i n s d /.$setResult($_INSD);./
    Keyword ::= i n s w /.$setResult($_INSW);./
    Keyword ::= i n t o /.$setResult($_INTO);./
    Keyword ::= i r e t /.$setResult($_IRET);./
    Keyword ::= j c x z /.$setResult($_JCXZ);./
    Keyword ::= j n a e /.$setResult($_JNAE);./
    Keyword ::= j n b e /.$setResult($_JNBE);./
    Keyword ::= j n g e /.$setResult($_JNGE);./
    Keyword ::= j n l e /.$setResult($_JNLE);./
    Keyword ::= l a h f /.$setResult($_LAHF);./
    Keyword ::= l o d s /.$setResult($_LODS);./
    Keyword ::= l o o p /.$setResult($_LOOP);./
    Keyword ::= m a s k /.$setResult($_MASK);./
    Keyword ::= n e a r /.$setResult($_NEAR);./
    Keyword ::= o u t s /.$setResult($_OUTS);./
    Keyword ::= p a r a /.$setResult($_PARA);./
    Keyword ::= p o p a /.$setResult($_POPA);./
    Keyword ::= p r o c /.$setResult($_PROC);./
    Keyword ::= p u s h /.$setResult($_PUSH);./
    Keyword ::= r e a l /.$setResult($_REAL);./
    Keyword ::= r e p e /.$setResult($_REPE);./
    Keyword ::= r e p z /.$setResult($_REPZ);./
    Keyword ::= r e t f /.$setResult($_RETF);./
    Keyword ::= r e t n /.$setResult($_RETN);./
    Keyword ::= s a h f /.$setResult($_SAHF);./
    Keyword ::= s c a s /.$setResult($_SCAS);./
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
    Keyword ::= s h l d /.$setResult($_SHLD);./
    Keyword ::= s h r d /.$setResult($_SHRD);./
    Keyword ::= s t o s /.$setResult($_STOS);./
    Keyword ::= t e s t /.$setResult($_TEST);./
    Keyword ::= w o r d /.$setResult($_WORD);./
    Keyword ::= x a d d /.$setResult($_XADD);./
    Keyword ::= x c h g /.$setResult($_XCHG);./
    Keyword ::= x l a t /.$setResult($_XLAT);./
    Keyword ::= a a a /.$setResult($_AAA);./
    Keyword ::= a a d /.$setResult($_AAD);./
    Keyword ::= a a m /.$setResult($_AAM);./
    Keyword ::= a a s /.$setResult($_AAS);./
    Keyword ::= a d c /.$setResult($_ADC);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= b s f /.$setResult($_BSF);./
    Keyword ::= b s r /.$setResult($_BSR);./
    Keyword ::= b t c /.$setResult($_BTC);./
    Keyword ::= b t r /.$setResult($_BTR);./
    Keyword ::= c b b /.$setResult($_CBB);./
    Keyword ::= c b w /.$setResult($_CBW);./
    Keyword ::= c d q /.$setResult($_CDQ);./
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
    Keyword ::= e a x /.$setResult($_EAX);./
    Keyword ::= e b p /.$setResult($_EBP);./
    Keyword ::= e b x /.$setResult($_EBX);./
    Keyword ::= e c x /.$setResult($_ECX);./
    Keyword ::= e d i /.$setResult($_EDI);./
    Keyword ::= e d x /.$setResult($_EDX);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= e s i /.$setResult($_ESI);./
    Keyword ::= e s p /.$setResult($_ESP);./
    Keyword ::= f a r /.$setResult($_FAR);./
    Keyword ::= i n c /.$setResult($_INC);./
    Keyword ::= i n s /.$setResult($_INS);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= j a e /.$setResult($_JAE);./
    Keyword ::= j b e /.$setResult($_JBE);./
    Keyword ::= j g e /.$setResult($_JGE);./
    Keyword ::= j l e /.$setResult($_JLE);./
    Keyword ::= j m p /.$setResult($_JMP);./
    Keyword ::= j n a /.$setResult($_JNA);./
    Keyword ::= j n b /.$setResult($_JNB);./
    Keyword ::= j n c /.$setResult($_JNC);./
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
    Keyword ::= m o v /.$setResult($_MOV);./
    Keyword ::= m u l /.$setResult($_MUL);./
    Keyword ::= n e g /.$setResult($_NEG);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= o u t /.$setResult($_OUT);./
    Keyword ::= p o p /.$setResult($_POP);./
    Keyword ::= r c l /.$setResult($_RCL);./
    Keyword ::= r c r /.$setResult($_RCR);./
    Keyword ::= r e p /.$setResult($_REP);./
    Keyword ::= r e t /.$setResult($_RET);./
    Keyword ::= r o l /.$setResult($_ROL);./
    Keyword ::= r o r /.$setResult($_ROR);./
    Keyword ::= s a l /.$setResult($_SAL);./
    Keyword ::= s a r /.$setResult($_SAR);./
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
    Keyword ::= b t /.$setResult($_BT);./
    Keyword ::= b x /.$setResult($_BX);./
    Keyword ::= c h /.$setResult($_CH);./
    Keyword ::= c l /.$setResult($_CL);./
    Keyword ::= c s /.$setResult($_CS);./
    Keyword ::= c x /.$setResult($_CX);./
    Keyword ::= d b /.$setResult($_DB);./
    Keyword ::= d d /.$setResult($_DD);./
    Keyword ::= d f /.$setResult($_DF);./
    Keyword ::= d h /.$setResult($_DH);./
    Keyword ::= d i /.$setResult($_DI);./
    Keyword ::= d l /.$setResult($_DL);./
    Keyword ::= d q /.$setResult($_DQ);./
    Keyword ::= d s /.$setResult($_DS);./
    Keyword ::= d t /.$setResult($_DT);./
    Keyword ::= d w /.$setResult($_DW);./
    Keyword ::= d x /.$setResult($_DX);./
    Keyword ::= e s /.$setResult($_ES);./
    Keyword ::= f s /.$setResult($_FS);./
    Keyword ::= g s /.$setResult($_GS);./
    Keyword ::= i n /.$setResult($_IN);./
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
%End
