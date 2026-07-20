-- Keyword filter
%options package=lpg.grammars.mumath
%options template=KeywordTemplateF.gi
%options fp=MumathKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    BLOCK
    ENDBLOCK
    FUNCTION
    ENDFUN
    EQF
    LOOP
    ENDLOOP
    WHEN
    EXIT
    OR
    AND
    NOT
    MOD
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= b l o c k /.$setResult($_BLOCK);./
              | e n d b l o c k /.$setResult($_ENDBLOCK);./
              | f u n c t i o n /.$setResult($_FUNCTION);./
              | e n d f u n /.$setResult($_ENDFUN);./
              | e q /.$setResult($_EQF);./
              | l o o p /.$setResult($_LOOP);./
              | e n d l o o p /.$setResult($_ENDLOOP);./
              | w h e n /.$setResult($_WHEN);./
              | e x i t /.$setResult($_EXIT);./
              | o r /.$setResult($_OR);./
              | a n d /.$setResult($_AND);./
              | n o t /.$setResult($_NOT);./
              | m o d /.$setResult($_MOD);./
%End
