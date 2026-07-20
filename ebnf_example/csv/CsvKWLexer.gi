-- Dummy keyword filter for CSV (no real keywords).
-- LexerBasicMapF requires a KWLexer; IDENTIFIER default is unused (no checkForKeyWord).
-- Dummy keyword X matches "xxx" which does not appear in examples.

%options package=lpg.grammars.csv
%options template=KeywordTemplateF.gi
%options fp=CsvKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    X
%End

%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= x x x /.$setResult($_X);./
%End
