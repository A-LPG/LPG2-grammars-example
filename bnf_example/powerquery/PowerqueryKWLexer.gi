-- Keyword filter
%options package=lpg.grammars.powerquery
%options template=KeywordTemplateF.gi
%options fp=PowerqueryKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    SECTION
    SHARED
    LET
    IN
    IF
    THEN
    ELSE
    TRUE
    FALSE
    NULLLITERAL
    TYPE
    AS
    EACH
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= s e c t i o n /.$setResult($_SECTION);./
              | s h a r e d /.$setResult($_SHARED);./
              | l e t /.$setResult($_LET);./
              | i n /.$setResult($_IN);./
              | i f /.$setResult($_IF);./
              | t h e n /.$setResult($_THEN);./
              | e l s e /.$setResult($_ELSE);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
              | n u l l /.$setResult($_NULLLITERAL);./
              | t y p e /.$setResult($_TYPE);./
              | a s /.$setResult($_AS);./
              | e a c h /.$setResult($_EACH);./
%End
