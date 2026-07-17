-- Keyword filter
%options package=lpg.grammars.dif
%options template=KeywordTemplateF.gi
%options fp=DifKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    TABLE
    VECTORS
    TUPLES
    DATA
    BOT
    EOD
    V
%End

%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= t a b l e /.$setResult($_TABLE);./
              | v e c t o r s /.$setResult($_VECTORS);./
              | t u p l e s /.$setResult($_TUPLES);./
              | d a t a /.$setResult($_DATA);./
              | b o t /.$setResult($_BOT);./
              | e o d /.$setResult($_EOD);./
              | v /.$setResult($_V);./
%End
