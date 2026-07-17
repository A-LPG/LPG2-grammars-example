-- Keyword filter for curated Scala2 subset (Wave C)
%options package=lpg.grammars.scala.scala2
%options template=KeywordTemplateF.gi
%options fp=Scala2KWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    OBJECT
    DEF
%End

%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
    _
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= o b j e c t /.$setResult($_OBJECT);./
              | d e f /.$setResult($_DEF);./
%End
