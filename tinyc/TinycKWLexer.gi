-- Keyword filter for TinycKWLexer
%options package=lpg.grammars.tinyc
%options template=KeywordTemplateF.gi
%options fp=TinycKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    IF
    ELSE
    WHILE
    DO
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
    Keyword ::= i f /.$setResult($_IF);./
              | e l s e /.$setResult($_ELSE);./
              | w h i l e /.$setResult($_WHILE);./
              | d o /.$setResult($_DO);./
%End
