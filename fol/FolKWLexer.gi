-- Keyword filter for FolKWLexer
%options package=lpg.grammars.fol
%options template=KeywordTemplateF.gi
%options fp=FolKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    FORALL
    EXISTS
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
    Keyword ::= f o r a l l /.$setResult($_FORALL);./
              | e x i s t s /.$setResult($_EXISTS);./
%End
