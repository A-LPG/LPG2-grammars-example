-- Keyword filter
%options package=lpg.grammars.lucene
%options template=KeywordTemplateF.gi
%options fp=LuceneKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    AND
    OR
    NOT
    TO
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= a n d /.$setResult($_AND);./
              | o r /.$setResult($_OR);./
              | n o t /.$setResult($_NOT);./
              | t o /.$setResult($_TO);./
%End
