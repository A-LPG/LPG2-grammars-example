%options package=lpg.grammars.logo.logo
%options template=KeywordTemplateF.gi
%options fp=LogoKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    REPEAT
    FD
    FORWARD
    BK
    BACKWARD
    RT
    RIGHT
    LT
    LEFT
    CS
    CLEARSCREEN
    PU
    PENUP
    PD
    PENDOWN
    HT
    HIDETURTLE
    ST
    SHOWTURTLE
    HOME
    STOP
    LABEL
    SETXY
    MAKE
    PRINT
    IF
    FOR
    TO
    END
    RANDOM
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= r e p e a t /.$setResult($_REPEAT);./
              | f d /.$setResult($_FD);./
              | f o r w a r d /.$setResult($_FORWARD);./
              | b k /.$setResult($_BK);./
              | b a c k w a r d /.$setResult($_BACKWARD);./
              | r t /.$setResult($_RT);./
              | r i g h t /.$setResult($_RIGHT);./
              | l t /.$setResult($_LT);./
              | l e f t /.$setResult($_LEFT);./
              | c s /.$setResult($_CS);./
              | c l e a r s c r e e n /.$setResult($_CLEARSCREEN);./
              | p u /.$setResult($_PU);./
              | p e n u p /.$setResult($_PENUP);./
              | p d /.$setResult($_PD);./
              | p e n d o w n /.$setResult($_PENDOWN);./
              | h t /.$setResult($_HT);./
              | h i d e t u r t l e /.$setResult($_HIDETURTLE);./
              | s t /.$setResult($_ST);./
              | s h o w t u r t l e /.$setResult($_SHOWTURTLE);./
              | h o m e /.$setResult($_HOME);./
              | s t o p /.$setResult($_STOP);./
              | l a b e l /.$setResult($_LABEL);./
              | s e t x y /.$setResult($_SETXY);./
              | m a k e /.$setResult($_MAKE);./
              | p r i n t /.$setResult($_PRINT);./
              | i f /.$setResult($_IF);./
              | f o r /.$setResult($_FOR);./
              | t o /.$setResult($_TO);./
              | e n d /.$setResult($_END);./
              | r a n d o m /.$setResult($_RANDOM);./
%End
