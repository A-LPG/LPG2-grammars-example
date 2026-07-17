-- Keyword filter for CQL (case-insensitive).
%options package=lpg.grammars.cql
%options template=KeywordTemplateF.gi
%options fp=CqlKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    AND
    OR
    NOT
    PROX
    SORTBY
%End

%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= a n d /.$setResult($_AND);./
              | o r /.$setResult($_OR);./
              | n o t /.$setResult($_NOT);./
              | p r o x /.$setResult($_PROX);./
              | s o r t b y /.$setResult($_SORTBY);./
%End
