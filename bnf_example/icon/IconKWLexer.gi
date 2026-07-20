-- Keyword filter
%options package=lpg.grammars.icon
%options template=KeywordTemplateF.gi
%options fp=IconKWLexer
%Include
    KWLexerLowerCaseMapF.gi
%End
%Export
    PROCEDURE
    END
    WRITE
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= p r o c e d u r e /.$setResult($_PROCEDURE);./
              | e n d /.$setResult($_END);./
              | w r i t e /.$setResult($_WRITE);./
%End
