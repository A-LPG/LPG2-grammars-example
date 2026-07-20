-- Keyword filter for AsmPtxPtxIsa10 (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.asm.ptx.ptx_isa_1_0
%options template=KeywordTemplateF.gi
%options fp=AsmPtxPtxIsa10KWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ABS
    ADD
    ADDC
    AND
    ATOM
    BAR
    BRA
    BRKPT
    CALL
    CNOT
    COS
    CROSS
    CVT
    DEBUG
    DIV
    DOT
    EX2
    EXIT
    EXTRACT
    FMA
    FRC
    INSERT
    LD
    LG2
    MAD
    MAD24
    MAX
    MEMBAR
    MIN
    MOV
    MUL
    MUL24
    NEG
    NOP
    NOT
    OR
    RCP
    REM
    RET
    RSQRT
    SAD
    SELP
    SET
    SETP
    SHL
    SHR
    SIN
    SLCT
    SM_10
    SM_11
    SM_20
    SQRT
    ST
    SUB
    SUBC
    TEX
    TRAP
    VOTE
    VRED
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
    Keyword ::= e x t r a c t /.$setResult($_EXTRACT);./
    Keyword ::= i n s e r t /.$setResult($_INSERT);./
    Keyword ::= m e m b a r /.$setResult($_MEMBAR);./
    Keyword ::= b r k p t /.$setResult($_BRKPT);./
    Keyword ::= c r o s s /.$setResult($_CROSS);./
    Keyword ::= d e b u g /.$setResult($_DEBUG);./
    Keyword ::= m a d 2 4 /.$setResult($_MAD24);./
    Keyword ::= m u l 2 4 /.$setResult($_MUL24);./
    Keyword ::= r s q r t /.$setResult($_RSQRT);./
    Keyword ::= a d d c /.$setResult($_ADDC);./
    Keyword ::= a t o m /.$setResult($_ATOM);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= c n o t /.$setResult($_CNOT);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= s e l p /.$setResult($_SELP);./
    Keyword ::= s e t p /.$setResult($_SETP);./
    Keyword ::= s l c t /.$setResult($_SLCT);./
    Keyword ::= s q r t /.$setResult($_SQRT);./
    Keyword ::= s u b c /.$setResult($_SUBC);./
    Keyword ::= t r a p /.$setResult($_TRAP);./
    Keyword ::= v o t e /.$setResult($_VOTE);./
    Keyword ::= v r e d /.$setResult($_VRED);./
    Keyword ::= a b s /.$setResult($_ABS);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= b a r /.$setResult($_BAR);./
    Keyword ::= b r a /.$setResult($_BRA);./
    Keyword ::= c o s /.$setResult($_COS);./
    Keyword ::= c v t /.$setResult($_CVT);./
    Keyword ::= d i v /.$setResult($_DIV);./
    Keyword ::= d o t /.$setResult($_DOT);./
    Keyword ::= e x 2 /.$setResult($_EX2);./
    Keyword ::= f m a /.$setResult($_FMA);./
    Keyword ::= f r c /.$setResult($_FRC);./
    Keyword ::= l g 2 /.$setResult($_LG2);./
    Keyword ::= m a d /.$setResult($_MAD);./
    Keyword ::= m a x /.$setResult($_MAX);./
    Keyword ::= m i n /.$setResult($_MIN);./
    Keyword ::= m o v /.$setResult($_MOV);./
    Keyword ::= m u l /.$setResult($_MUL);./
    Keyword ::= n e g /.$setResult($_NEG);./
    Keyword ::= n o p /.$setResult($_NOP);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= r c p /.$setResult($_RCP);./
    Keyword ::= r e m /.$setResult($_REM);./
    Keyword ::= r e t /.$setResult($_RET);./
    Keyword ::= s a d /.$setResult($_SAD);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= s h l /.$setResult($_SHL);./
    Keyword ::= s h r /.$setResult($_SHR);./
    Keyword ::= s m _ 1 1 /.$setResult($_SM_11);./
    Keyword ::= s m _ 1 0 /.$setResult($_SM_10);./
    Keyword ::= s m _ 2 0 /.$setResult($_SM_20);./
    Keyword ::= s i n /.$setResult($_SIN);./
    Keyword ::= s u b /.$setResult($_SUB);./
    Keyword ::= t e x /.$setResult($_TEX);./
    Keyword ::= x o r /.$setResult($_XOR);./
    Keyword ::= l d /.$setResult($_LD);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= s t /.$setResult($_ST);./
%End
