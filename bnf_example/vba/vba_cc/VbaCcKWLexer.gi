-- Keyword filter
%options package=lpg.grammars.vba.vba_cc
%options template=KeywordTemplateF.gi
%options fp=VbaCcKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    ATTRIBUTE
    CONST
    IF
    THEN
    ELSE
    ELSEIF
    END
    DEBUG
    PRINT
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= a t t r i b u t e /.$setResult($_ATTRIBUTE);./
              | c o n s t /.$setResult($_CONST);./
              | i f /.$setResult($_IF);./
              | t h e n /.$setResult($_THEN);./
              | e l s e /.$setResult($_ELSE);./
              | e l s e i f /.$setResult($_ELSEIF);./
              | e n d /.$setResult($_END);./
              | d e b u g /.$setResult($_DEBUG);./
              | p r i n t /.$setResult($_PRINT);./
%End
