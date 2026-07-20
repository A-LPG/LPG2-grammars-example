-- Keyword filter for NA sample marker
%options package=lpg.grammars.databank
%options template=KeywordTemplateF.gi
%options fp=DatabankKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    NA
%End

%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= n a /.$setResult($_NA);./
%End
