-- Keyword filter
%options package=lpg.grammars.cayenne
%options template=KeywordTemplateF.gi
%options fp=CayenneKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    DATA
    CASE
    OF
    SIG
    STRUCT
    PRIVATE
    PUBLIC
    ABSTRACT
    CONCRETE
%End

%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= d a t a /.$setResult($_DATA);./
              | c a s e /.$setResult($_CASE);./
              | o f /.$setResult($_OF);./
              | s i g /.$setResult($_SIG);./
              | s t r u c t /.$setResult($_STRUCT);./
              | p r i v a t e /.$setResult($_PRIVATE);./
              | p u b l i c /.$setResult($_PUBLIC);./
              | a b s t r a c t /.$setResult($_ABSTRACT);./
              | c o n c r e t e /.$setResult($_CONCRETE);./
%End
