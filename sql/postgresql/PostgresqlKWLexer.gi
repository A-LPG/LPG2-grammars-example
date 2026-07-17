-- Keyword filter
%options package=lpg.grammars.sql.postgresql
%options template=KeywordTemplateF.gi
%options fp=PostgresqlKWLexer
%Include
    KWLexerFoldedCaseMapF.gi
%End
%Export
    SELECT
    INSERT
    INTO
    VALUES
    CREATE
    TABLE
    DROP
    FROM
    WHERE
    AND
    OR
    AS
    JOIN
    LEFT
    UPDATE
    SET
    DELETE
    NULLLITERAL
    NOT
    PRIMARY
    KEY
    INT
    INTEGER
    VARCHAR
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
              | i n s e r t /.$setResult($_INSERT);./
              | i n t o /.$setResult($_INTO);./
              | v a l u e s /.$setResult($_VALUES);./
              | c r e a t e /.$setResult($_CREATE);./
              | t a b l e /.$setResult($_TABLE);./
              | d r o p /.$setResult($_DROP);./
              | f r o m /.$setResult($_FROM);./
              | w h e r e /.$setResult($_WHERE);./
              | a n d /.$setResult($_AND);./
              | o r /.$setResult($_OR);./
              | a s /.$setResult($_AS);./
              | j o i n /.$setResult($_JOIN);./
              | l e f t /.$setResult($_LEFT);./
              | u p d a t e /.$setResult($_UPDATE);./
              | s e t /.$setResult($_SET);./
              | d e l e t e /.$setResult($_DELETE);./
              | n u l l /.$setResult($_NULLLITERAL);./
              | n o t /.$setResult($_NOT);./
              | p r i m a r y /.$setResult($_PRIMARY);./
              | k e y /.$setResult($_KEY);./
              | i n t /.$setResult($_INT);./
              | i n t e g e r /.$setResult($_INTEGER);./
              | v a r c h a r /.$setResult($_VARCHAR);./
%End
