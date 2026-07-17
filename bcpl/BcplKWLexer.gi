-- Keyword filter
%options package=lpg.grammars.bcpl
%options template=KeywordTemplateF.gi
%options fp=BcplKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    GET
    LET
    AND
    VALOF
    RESULTIS
    FOR
    TO
    DO
    IF
    THEN
    ELSE
    BE
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= g e t /.$setResult($_GET);./
              | l e t /.$setResult($_LET);./
              | a n d /.$setResult($_AND);./
              | v a l o f /.$setResult($_VALOF);./
              | r e s u l t i s /.$setResult($_RESULTIS);./
              | f o r /.$setResult($_FOR);./
              | t o /.$setResult($_TO);./
              | d o /.$setResult($_DO);./
              | i f /.$setResult($_IF);./
              | t h e n /.$setResult($_THEN);./
              | e l s e /.$setResult($_ELSE);./
              | b e /.$setResult($_BE);./
%End
