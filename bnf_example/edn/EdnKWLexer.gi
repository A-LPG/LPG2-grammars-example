-- Keyword filter for EDN literals nil/true/false.
%options package=lpg.grammars.edn
%options template=KeywordTemplateF.gi
%options fp=EdnKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    NIL
    TRUE
    FALSE
%End

%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= n i l /.$setResult($_NIL);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
%End
