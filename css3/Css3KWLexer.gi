-- Keyword filter
%options package=lpg.grammars.css3
%options template=KeywordTemplateF.gi
%options fp=Css3KWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    IMPORTANT
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= i m p o r t a n t /.$setResult($_IMPORTANT);./
%End
