-- Keyword filter for SqlPhoenix (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.sql.phoenix
%options template=KeywordTemplateF.gi
%options fp=SqlPhoenixKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ADD
    ALL
    ALTER
    AND
    ANY
    ARRAY
    AS
    ASC
    ASYNC
    AVG
    BETWEEN
    BIGINT
    BINARY
    BY
    CACHE
    CASCADE
    CASE
    CAST
    CHAR
    CLOSE
    COLUMN
    CONSTANT
    CONSTRAINT
    COUNT
    CREATE
    CURRENT
    CURSOR
    CYCLE
    DATE
    DECIMAL
    DECLARE
    DEFAULT
    DEFAULTVALUE
    DELETE
    DESC
    DISABLE
    DISTINCT
    DOUBLE
    DROP
    DUPLICATE
    ELSE
    END
    EXISTS
    EXPLAIN
    FALSE
    FETCH
    FIRST
    FLOAT
    FOR
    FROM
    FUNCTION
    GRANT
    GROUP
    HAVING
    IF
    IGNORE
    ILIKE
    IN
    INCLUDE
    INCREMENT
    INDEX
    INNER
    INTEGER
    INTO
    IS
    JAR
    JOIN
    KEY
    LAST
    LEFT
    LIKE
    LIMIT
    LOCAL
    MAX
    MAXVALUE
    MIN
    MINVALUE
    NEXT
    NOT
    NULLS
    NULL_
    OFFSET
    ON
    ONLY
    OPEN
    OR
    ORDER
    OUTER
    PRIMARY
    REBUILD
    RETURNS
    REVOKE
    RIGHT
    ROW
    ROWS
    SCHEMA
    SELECT
    SEQUENCE
    SERIAL
    SET
    SMALL
    SMALLINT
    SPLIT
    START
    STATISTICS
    SUM
    TABLE
    TABLESAMPLE
    TEMPORARY
    THEN
    TIME
    TIMESTAMP
    TINYINT
    TO
    TRUE
    UNION
    UNUSABLE
    UPDATE
    UPSERT
    USABLE
    USE
    USING
    VALUE
    VALUES
    VARBINARY
    VARCHAR
    VIEW
    WHEN
    WHERE
    WITH
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= d e f a u l t v a l u e /.$setResult($_DEFAULTVALUE);./
    Keyword ::= t a b l e s a m p l e /.$setResult($_TABLESAMPLE);./
    Keyword ::= c o n s t r a i n t /.$setResult($_CONSTRAINT);./
    Keyword ::= s t a t i s t i c s /.$setResult($_STATISTICS);./
    Keyword ::= d u p l i c a t e /.$setResult($_DUPLICATE);./
    Keyword ::= i n c r e m e n t /.$setResult($_INCREMENT);./
    Keyword ::= t e m p o r a r y /.$setResult($_TEMPORARY);./
    Keyword ::= t i m e s t a m p /.$setResult($_TIMESTAMP);./
    Keyword ::= v a r b i n a r y /.$setResult($_VARBINARY);./
    Keyword ::= c o n s t a n t /.$setResult($_CONSTANT);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= m a x v a l u e /.$setResult($_MAXVALUE);./
    Keyword ::= m i n v a l u e /.$setResult($_MINVALUE);./
    Keyword ::= s e q u e n c e /.$setResult($_SEQUENCE);./
    Keyword ::= s m a l l i n t /.$setResult($_SMALLINT);./
    Keyword ::= u n u s a b l e /.$setResult($_UNUSABLE);./
    Keyword ::= b e t w e e n /.$setResult($_BETWEEN);./
    Keyword ::= c a s c a d e /.$setResult($_CASCADE);./
    Keyword ::= c u r r e n t /.$setResult($_CURRENT);./
    Keyword ::= d e c i m a l /.$setResult($_DECIMAL);./
    Keyword ::= d e c l a r e /.$setResult($_DECLARE);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= d i s a b l e /.$setResult($_DISABLE);./
    Keyword ::= e x p l a i n /.$setResult($_EXPLAIN);./
    Keyword ::= i n c l u d e /.$setResult($_INCLUDE);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= p r i m a r y /.$setResult($_PRIMARY);./
    Keyword ::= r e b u i l d /.$setResult($_REBUILD);./
    Keyword ::= r e t u r n s /.$setResult($_RETURNS);./
    Keyword ::= t i n y i n t /.$setResult($_TINYINT);./
    Keyword ::= v a r c h a r /.$setResult($_VARCHAR);./
    Keyword ::= b i g i n t /.$setResult($_BIGINT);./
    Keyword ::= b i n a r y /.$setResult($_BINARY);./
    Keyword ::= c o l u m n /.$setResult($_COLUMN);./
    Keyword ::= c r e a t e /.$setResult($_CREATE);./
    Keyword ::= c u r s o r /.$setResult($_CURSOR);./
    Keyword ::= d e l e t e /.$setResult($_DELETE);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS);./
    Keyword ::= h a v i n g /.$setResult($_HAVING);./
    Keyword ::= i g n o r e /.$setResult($_IGNORE);./
    Keyword ::= o f f s e t /.$setResult($_OFFSET);./
    Keyword ::= r e v o k e /.$setResult($_REVOKE);./
    Keyword ::= s c h e m a /.$setResult($_SCHEMA);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s e r i a l /.$setResult($_SERIAL);./
    Keyword ::= u p d a t e /.$setResult($_UPDATE);./
    Keyword ::= u p s e r t /.$setResult($_UPSERT);./
    Keyword ::= u s a b l e /.$setResult($_USABLE);./
    Keyword ::= v a l u e s /.$setResult($_VALUES);./
    Keyword ::= a l t e r /.$setResult($_ALTER);./
    Keyword ::= a r r a y /.$setResult($_ARRAY);./
    Keyword ::= a s y n c /.$setResult($_ASYNC);./
    Keyword ::= c a c h e /.$setResult($_CACHE);./
    Keyword ::= c l o s e /.$setResult($_CLOSE);./
    Keyword ::= c o u n t /.$setResult($_COUNT);./
    Keyword ::= c y c l e /.$setResult($_CYCLE);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f e t c h /.$setResult($_FETCH);./
    Keyword ::= f i r s t /.$setResult($_FIRST);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= g r a n t /.$setResult($_GRANT);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= i l i k e /.$setResult($_ILIKE);./
    Keyword ::= i n d e x /.$setResult($_INDEX);./
    Keyword ::= i n n e r /.$setResult($_INNER);./
    Keyword ::= l i m i t /.$setResult($_LIMIT);./
    Keyword ::= l o c a l /.$setResult($_LOCAL);./
    Keyword ::= n u l l s /.$setResult($_NULLS);./
    Keyword ::= o r d e r /.$setResult($_ORDER);./
    Keyword ::= o u t e r /.$setResult($_OUTER);./
    Keyword ::= r i g h t /.$setResult($_RIGHT);./
    Keyword ::= s m a l l /.$setResult($_SMALL);./
    Keyword ::= s p l i t /.$setResult($_SPLIT);./
    Keyword ::= s t a r t /.$setResult($_START);./
    Keyword ::= t a b l e /.$setResult($_TABLE);./
    Keyword ::= u n i o n /.$setResult($_UNION);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= v a l u e /.$setResult($_VALUE);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c a s t /.$setResult($_CAST);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= d a t e /.$setResult($_DATE);./
    Keyword ::= d e s c /.$setResult($_DESC);./
    Keyword ::= d r o p /.$setResult($_DROP);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= i n t o /.$setResult($_INTO);./
    Keyword ::= j o i n /.$setResult($_JOIN);./
    Keyword ::= l a s t /.$setResult($_LAST);./
    Keyword ::= l e f t /.$setResult($_LEFT);./
    Keyword ::= l i k e /.$setResult($_LIKE);./
    Keyword ::= n e x t /.$setResult($_NEXT);./
    Keyword ::= n u l l /.$setResult($_NULL_);./
    Keyword ::= o n l y /.$setResult($_ONLY);./
    Keyword ::= o p e n /.$setResult($_OPEN);./
    Keyword ::= r o w s /.$setResult($_ROWS);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t i m e /.$setResult($_TIME);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= v i e w /.$setResult($_VIEW);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= a s c /.$setResult($_ASC);./
    Keyword ::= a v g /.$setResult($_AVG);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= j a r /.$setResult($_JAR);./
    Keyword ::= k e y /.$setResult($_KEY);./
    Keyword ::= m a x /.$setResult($_MAX);./
    Keyword ::= m i n /.$setResult($_MIN);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= r o w /.$setResult($_ROW);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= s u m /.$setResult($_SUM);./
    Keyword ::= u s e /.$setResult($_USE);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
