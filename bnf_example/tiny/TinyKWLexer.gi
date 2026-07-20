-- Keyword filter
%options package=lpg.grammars.tiny
%options template=KeywordTemplateF.gi
%options fp=TinyKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    BEGIN
    END
    READ
    WRITE
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
              | e n d /.$setResult($_END);./
              | r e a d /.$setResult($_READ);./
              | w r i t e /.$setResult($_WRITE);./
%End
