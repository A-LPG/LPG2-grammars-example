-- Dummy keyword filter for vhdl/vhdl2008
%options package=lpg.grammars.vhdl.vhdl2008
%options template=KeywordTemplateF.gi
%options fp=Vhdl2008KWLexer
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
