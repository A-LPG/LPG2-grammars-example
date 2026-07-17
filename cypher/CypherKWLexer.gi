-- Keyword filter
%options package=lpg.grammars.cypher
%options template=KeywordTemplateF.gi
%options fp=CypherKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    MATCH
    RETURN
    WHERE
    CREATE
    DELETE
    SET
    WITH
    AS
    AND
    OR
    NOT
    NULLLITERAL
    TRUE
    FALSE
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= m a t c h /.$setResult($_MATCH);./
              | r e t u r n /.$setResult($_RETURN);./
              | w h e r e /.$setResult($_WHERE);./
              | c r e a t e /.$setResult($_CREATE);./
              | d e l e t e /.$setResult($_DELETE);./
              | s e t /.$setResult($_SET);./
              | w i t h /.$setResult($_WITH);./
              | a s /.$setResult($_AS);./
              | a n d /.$setResult($_AND);./
              | o r /.$setResult($_OR);./
              | n o t /.$setResult($_NOT);./
              | n u l l /.$setResult($_NULLLITERAL);./
              | t r u e /.$setResult($_TRUE);./
              | f a l s e /.$setResult($_FALSE);./
%End
