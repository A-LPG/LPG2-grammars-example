-- Keyword filter for STL ASCII keywords.

%options package=lpg.grammars.stl
%options template=KeywordTemplateF.gi
%options fp=StlKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    SOLID
    FACET
    NORMAL
    OUTER
    LOOP
    VERTEX
    ENDLOOP
    ENDFACET
    ENDSOLID
%End

%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= s o l i d           /.$setResult($_SOLID);./
              | f a c e t           /.$setResult($_FACET);./
              | n o r m a l         /.$setResult($_NORMAL);./
              | o u t e r           /.$setResult($_OUTER);./
              | l o o p             /.$setResult($_LOOP);./
              | v e r t e x         /.$setResult($_VERTEX);./
              | e n d l o o p       /.$setResult($_ENDLOOP);./
              | e n d f a c e t     /.$setResult($_ENDFACET);./
              | e n d s o l i d     /.$setResult($_ENDSOLID);./
%End
