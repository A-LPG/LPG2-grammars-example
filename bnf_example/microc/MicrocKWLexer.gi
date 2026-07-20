-- Keyword filter
%options package=lpg.grammars.microc
%options template=KeywordTemplateF.gi
%options fp=MicrocKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    IF
    ELSE
    WHILE
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= i f /.$setResult($_IF);./
              | e l s e /.$setResult($_ELSE);./
              | w h i l e /.$setResult($_WHILE);./
%End
