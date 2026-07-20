-- Keyword filter
%options package=lpg.grammars.http
%options template=KeywordTemplateF.gi
%options fp=HttpKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    HTTP
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
    _
    0    1    2    3    4    5    6    7    8    9
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= h t t p /.$setResult($_HTTP);./
%End
