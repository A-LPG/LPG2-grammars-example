-- SUOKIF keywords
%options package=lpg.grammars.suokif
%options template=KeywordTemplateF.gi
%options fp=SuokifKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    NOT
    AND
    OR
    FORALL
    EXISTS
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= n o t /.$setResult($_NOT);./
              | a n d /.$setResult($_AND);./
              | o r /.$setResult($_OR);./
              | f o r a l l /.$setResult($_FORALL);./
              | e x i s t s /.$setResult($_EXISTS);./
%End
