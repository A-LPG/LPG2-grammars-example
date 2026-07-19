-- Dummy keyword filter
%options package=lpg.grammars.ada.ada2022
%options template=KeywordTemplateF.gi
%options fp=Ada2022KWLexer
%Include
    KWLexerFoldedCaseMapF.gi
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
