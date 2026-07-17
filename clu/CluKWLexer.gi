%options package=lpg.grammars.clu
%options template=KeywordTemplateF.gi
%options fp=CluKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    PROC
    END
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= p r o c /.$setResult($_PROC);./
              | e n d /.$setResult($_END);./
%End
