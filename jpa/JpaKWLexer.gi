-- Keyword filter
%options package=lpg.grammars.jpa
%options template=KeywordTemplateF.gi
%options fp=JpaKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    SELECT
    FROM
    WHERE
    AS
    JOIN
    INNER
    LEFT
    OUTER
    UPDATE
    DELETE
    SET
%End
%Terminals
    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
%End
%Start
    Keyword
%End
%Rules
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
              | f r o m /.$setResult($_FROM);./
              | w h e r e /.$setResult($_WHERE);./
              | a s /.$setResult($_AS);./
              | j o i n /.$setResult($_JOIN);./
              | i n n e r /.$setResult($_INNER);./
              | l e f t /.$setResult($_LEFT);./
              | o u t e r /.$setResult($_OUTER);./
              | u p d a t e /.$setResult($_UPDATE);./
              | d e l e t e /.$setResult($_DELETE);./
              | s e t /.$setResult($_SET);./
%End
