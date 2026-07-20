-- RPN keyword filter
%options package=lpg.grammars.rpn
%options template=KeywordTemplateF.gi
%options fp=RpnKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    COS
    SIN
    TAN
    ACOS
    ASIN
    ATAN
    LN
    LOG
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= c o s /.$setResult($_COS);./
              | s i n /.$setResult($_SIN);./
              | t a n /.$setResult($_TAN);./
              | a c o s /.$setResult($_ACOS);./
              | a s i n /.$setResult($_ASIN);./
              | a t a n /.$setResult($_ATAN);./
              | l n /.$setResult($_LN);./
              | l o g /.$setResult($_LOG);./
%End
