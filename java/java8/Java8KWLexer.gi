-- Dummy keyword filter for java/java8
%options package=lpg.grammars.java.java8
%options template=KeywordTemplateF.gi
%options fp=Java8KWLexer
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
