-- Keyword filter
%options package=lpg.grammars.pl0
%options template=KeywordTemplateF.gi
%options fp=Pl0KWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    WRITE
    WHILE
    DO
    IF
    THEN
    ODD
    BEGIN
    END
    CALL
    CONST
    VAR
    PROCEDURE
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= w r i t e /.$setResult($_WRITE);./
              | w h i l e /.$setResult($_WHILE);./
              | d o /.$setResult($_DO);./
              | i f /.$setResult($_IF);./
              | t h e n /.$setResult($_THEN);./
              | o d d /.$setResult($_ODD);./
              | b e g i n /.$setResult($_BEGIN);./
              | e n d /.$setResult($_END);./
              | c a l l /.$setResult($_CALL);./
              | c o n s t /.$setResult($_CONST);./
              | v a r /.$setResult($_VAR);./
              | p r o c e d u r e /.$setResult($_PROCEDURE);./
%End
