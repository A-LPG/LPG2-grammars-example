-- Dummy keyword filter for istc (ISTC matched in main lexer).

%options package=lpg.grammars.istc
%options template=KeywordTemplateF.gi
%options fp=IstcKWLexer

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
