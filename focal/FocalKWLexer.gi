%options package=lpg.grammars.focal
%options template=KeywordTemplateF.gi
%options fp=FocalKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    ASK
    A_CMD
    DO
    D_CMD
    FOR
    F_CMD
    SET
    S_CMD
    QUIT
    GOTO
    G_CMD
    IF
    TYPE
    T_CMD
    RETURN
    WRITE
    ALL
    FSIN
    FCOS
    FEXP
    FLOG
    FATN
    FSQT
    FABS
    FSGN
    FITR
    FRAN
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= a s k /.$setResult($_ASK);./
              | a /.$setResult($_A_CMD);./
              | d o /.$setResult($_DO);./
              | d /.$setResult($_D_CMD);./
              | f o r /.$setResult($_FOR);./
              | f /.$setResult($_F_CMD);./
              | s e t /.$setResult($_SET);./
              | s /.$setResult($_S_CMD);./
              | q u i t /.$setResult($_QUIT);./
              | g o t o /.$setResult($_GOTO);./
              | g /.$setResult($_G_CMD);./
              | i f /.$setResult($_IF);./
              | t y p e /.$setResult($_TYPE);./
              | t /.$setResult($_T_CMD);./
              | r e t u r n /.$setResult($_RETURN);./
              | w r i t e /.$setResult($_WRITE);./
              | a l l /.$setResult($_ALL);./
              | f s i n /.$setResult($_FSIN);./
              | f c o s /.$setResult($_FCOS);./
              | f e x p /.$setResult($_FEXP);./
              | f l o g /.$setResult($_FLOG);./
              | f a t n /.$setResult($_FATN);./
              | f s q t /.$setResult($_FSQT);./
              | f a b s /.$setResult($_FABS);./
              | f s g n /.$setResult($_FSGN);./
              | f i t r /.$setResult($_FITR);./
              | f r a n /.$setResult($_FRAN);./
%End
