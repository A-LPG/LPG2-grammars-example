-- Keyword filter for Basic (aligned to parser terminal names)
%options package=lpg.grammars.basic
%options template=KeywordTemplateF.gi
%options fp=BasicKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ABS
    AND
    ASC
    AT
    ATN
    CALL
    CLEAR
    CLS
    COLOR
    COS
    DATA
    DEF
    DIM
    DRAW
    END
    EXP
    FLASH
    FN
    FOR
    FRE
    GET
    GOSUB
    GOTO
    GR
    HCOLOR
    HGR
    HIMEM
    HLIN
    HOME
    HPLOT
    HTAB
    IF
    INCLUDE
    INPUT
    INTF
    INVERSE
    LEN
    LET
    LIST
    LOAD
    LOG
    LOMEM
    NEXT
    NORMAL
    NOT
    NOTRACE
    ON
    ONERR
    OR
    PDL
    PEEK
    PERCENT
    PLOT
    POKE
    POP
    POS
    PRINT
    READ
    RECALL
    REM
    RESTORE
    RETURN
    RND
    ROT
    RUN
    SAVE
    SCALE
    SCRN
    SGN
    SHLOAD
    SIN
    SPC
    SPEED
    SQR
    STEP
    STOP
    STORE
    STRING
    TAB
    TAN
    TEXT
    THEN
    TO
    TRACE
    USR
    VAL
    VLIN
    VPLOT
    VTAB
    WAIT
    XDRAW
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= i n c l u d e /.$setResult($_INCLUDE);./
    Keyword ::= i n v e r s e /.$setResult($_INVERSE);./
    Keyword ::= n o t r a c e /.$setResult($_NOTRACE);./
    Keyword ::= p e r c e n t /.$setResult($_PERCENT);./
    Keyword ::= r e s t o r e /.$setResult($_RESTORE);./
    Keyword ::= h c o l o r /.$setResult($_HCOLOR);./
    Keyword ::= n o r m a l /.$setResult($_NORMAL);./
    Keyword ::= r e c a l l /.$setResult($_RECALL);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= s h l o a d /.$setResult($_SHLOAD);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= c l e a r /.$setResult($_CLEAR);./
    Keyword ::= c o l o r /.$setResult($_COLOR);./
    Keyword ::= f l a s h /.$setResult($_FLASH);./
    Keyword ::= g o s u b /.$setResult($_GOSUB);./
    Keyword ::= h i m e m /.$setResult($_HIMEM);./
    Keyword ::= h p l o t /.$setResult($_HPLOT);./
    Keyword ::= i n p u t /.$setResult($_INPUT);./
    Keyword ::= l o m e m /.$setResult($_LOMEM);./
    Keyword ::= o n e r r /.$setResult($_ONERR);./
    Keyword ::= p r i n t /.$setResult($_PRINT);./
    Keyword ::= s c a l e /.$setResult($_SCALE);./
    Keyword ::= s p e e d /.$setResult($_SPEED);./
    Keyword ::= s t o r e /.$setResult($_STORE);./
    Keyword ::= t r a c e /.$setResult($_TRACE);./
    Keyword ::= v p l o t /.$setResult($_VPLOT);./
    Keyword ::= x d r a w /.$setResult($_XDRAW);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= d a t a /.$setResult($_DATA);./
    Keyword ::= d r a w /.$setResult($_DRAW);./
    Keyword ::= g o t o /.$setResult($_GOTO);./
    Keyword ::= h l i n /.$setResult($_HLIN);./
    Keyword ::= h o m e /.$setResult($_HOME);./
    Keyword ::= h t a b /.$setResult($_HTAB);./
    Keyword ::= i n t f /.$setResult($_INTF);./
    Keyword ::= l i s t /.$setResult($_LIST);./
    Keyword ::= l o a d /.$setResult($_LOAD);./
    Keyword ::= n e x t /.$setResult($_NEXT);./
    Keyword ::= p e e k /.$setResult($_PEEK);./
    Keyword ::= p l o t /.$setResult($_PLOT);./
    Keyword ::= p o k e /.$setResult($_POKE);./
    Keyword ::= r e a d /.$setResult($_READ);./
    Keyword ::= s a v e /.$setResult($_SAVE);./
    Keyword ::= s c r n /.$setResult($_SCRN);./
    Keyword ::= s t e p /.$setResult($_STEP);./
    Keyword ::= s t o p /.$setResult($_STOP);./
    Keyword ::= t e x t /.$setResult($_TEXT);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= v l i n /.$setResult($_VLIN);./
    Keyword ::= v t a b /.$setResult($_VTAB);./
    Keyword ::= w a i t /.$setResult($_WAIT);./
    Keyword ::= a b s /.$setResult($_ABS);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a s c /.$setResult($_ASC);./
    Keyword ::= a t n /.$setResult($_ATN);./
    Keyword ::= c l s /.$setResult($_CLS);./
    Keyword ::= c o s /.$setResult($_COS);./
    Keyword ::= d e f /.$setResult($_DEF);./
    Keyword ::= d i m /.$setResult($_DIM);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= e x p /.$setResult($_EXP);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= f r e /.$setResult($_FRE);./
    Keyword ::= g e t /.$setResult($_GET);./
    Keyword ::= h g r /.$setResult($_HGR);./
    Keyword ::= l e n /.$setResult($_LEN);./
    Keyword ::= l e t /.$setResult($_LET);./
    Keyword ::= l o g /.$setResult($_LOG);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= p d l /.$setResult($_PDL);./
    Keyword ::= p o p /.$setResult($_POP);./
    Keyword ::= p o s /.$setResult($_POS);./
    Keyword ::= r e m /.$setResult($_REM);./
    Keyword ::= r n d /.$setResult($_RND);./
    Keyword ::= r o t /.$setResult($_ROT);./
    Keyword ::= r u n /.$setResult($_RUN);./
    Keyword ::= s g n /.$setResult($_SGN);./
    Keyword ::= s i n /.$setResult($_SIN);./
    Keyword ::= s p c /.$setResult($_SPC);./
    Keyword ::= s q r /.$setResult($_SQR);./
    Keyword ::= t a b /.$setResult($_TAB);./
    Keyword ::= t a n /.$setResult($_TAN);./
    Keyword ::= u s r /.$setResult($_USR);./
    Keyword ::= v a l /.$setResult($_VAL);./
    Keyword ::= a t /.$setResult($_AT);./
    Keyword ::= f n /.$setResult($_FN);./
    Keyword ::= g r /.$setResult($_GR);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
