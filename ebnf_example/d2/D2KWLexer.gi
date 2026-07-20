-- Keyword filter for D2 booleans.
%options package=lpg.grammars.d2
%options template=KeywordTemplateF.gi
%options fp=D2KWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
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
    Keyword ::= t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
%End
