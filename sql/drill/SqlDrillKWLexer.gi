-- Keyword filter for SqlDrill (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.sql.drill
%options template=KeywordTemplateF.gi
%options fp=SqlDrillKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ALL
    ALTER
    ANALYZE
    AND
    ANY
    AS
    ASC
    ASSIGN
    BETWEEN
    BIGINT
    BINARY
    BOOLEAN
    BY
    CAST
    CHAR
    CHARACTER
    COLUMNS
    COMPUTE
    CREATE
    CROSS
    DATABASE
    DATABASES
    DATE
    DAY
    DEC
    DECIMAL
    DEFAULT
    DESC
    DESCRIBE
    DISTINCT
    DOUBLE
    DROP
    ESCAPE
    ESTIMATE
    EXISTS
    FALSE
    FETCH
    FILES
    FIRST
    FLOAT
    FOR
    FORMAT
    FROM
    FULL
    FUNCTION
    GROUP
    HAVING
    HOUR
    IF
    IN
    INNER
    INT
    INTEGER
    INTERVAL
    IS
    JAR
    JOIN
    LAST
    LATERAL
    LEFT
    LEVEL
    LIKE
    LIMIT
    LOAD
    METADATA
    MINUTE
    MONTH
    NATURAL
    NEXT
    NONE
    NOT
    NULLS
    NULL_
    NUMERIC
    OFFSET
    ON
    OR
    ORDER
    OUTER
    OVER
    PARTITION
    PATH
    PERCENT
    PRECISION
    PROPERTIES
    REFRESH
    REPLACE
    RESET
    RIGHT
    ROW
    ROWS
    SAMPLE
    SCHEMA
    SCHEMAS
    SECOND
    SELECT
    SESSION
    SET
    SHOW
    SMALLINT
    SOME
    STATISTICS
    SYSTEM
    TABLE
    TABLES
    TEMPORARY
    TIME
    TIMESTAMP
    TRUE
    UNION
    UNNEST
    USE
    USING
    VARCHAR
    VARYING
    VIEW
    WHERE
    WITH
    YEAR
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= p r o p e r t i e s /.$setResult($_PROPERTIES);./
    Keyword ::= s t a t i s t i c s /.$setResult($_STATISTICS);./
    Keyword ::= c h a r a c t e r /.$setResult($_CHARACTER);./
    Keyword ::= d a t a b a s e s /.$setResult($_DATABASES);./
    Keyword ::= p a r t i t i o n /.$setResult($_PARTITION);./
    Keyword ::= p r e c i s i o n /.$setResult($_PRECISION);./
    Keyword ::= t e m p o r a r y /.$setResult($_TEMPORARY);./
    Keyword ::= t i m e s t a m p /.$setResult($_TIMESTAMP);./
    Keyword ::= d a t a b a s e /.$setResult($_DATABASE);./
    Keyword ::= d e s c r i b e /.$setResult($_DESCRIBE);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT);./
    Keyword ::= e s t i m a t e /.$setResult($_ESTIMATE);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= i n t e r v a l /.$setResult($_INTERVAL);./
    Keyword ::= m e t a d a t a /.$setResult($_METADATA);./
    Keyword ::= s m a l l i n t /.$setResult($_SMALLINT);./
    Keyword ::= a n a l y z e /.$setResult($_ANALYZE);./
    Keyword ::= b e t w e e n /.$setResult($_BETWEEN);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= c o l u m n s /.$setResult($_COLUMNS);./
    Keyword ::= c o m p u t e /.$setResult($_COMPUTE);./
    Keyword ::= d e c i m a l /.$setResult($_DECIMAL);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= l a t e r a l /.$setResult($_LATERAL);./
    Keyword ::= n a t u r a l /.$setResult($_NATURAL);./
    Keyword ::= n u m e r i c /.$setResult($_NUMERIC);./
    Keyword ::= p e r c e n t /.$setResult($_PERCENT);./
    Keyword ::= r e f r e s h /.$setResult($_REFRESH);./
    Keyword ::= r e p l a c e /.$setResult($_REPLACE);./
    Keyword ::= s c h e m a s /.$setResult($_SCHEMAS);./
    Keyword ::= s e s s i o n /.$setResult($_SESSION);./
    Keyword ::= v a r c h a r /.$setResult($_VARCHAR);./
    Keyword ::= v a r y i n g /.$setResult($_VARYING);./
    Keyword ::= a s s i g n /.$setResult($_ASSIGN);./
    Keyword ::= b i g i n t /.$setResult($_BIGINT);./
    Keyword ::= b i n a r y /.$setResult($_BINARY);./
    Keyword ::= c r e a t e /.$setResult($_CREATE);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= e s c a p e /.$setResult($_ESCAPE);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS);./
    Keyword ::= f o r m a t /.$setResult($_FORMAT);./
    Keyword ::= h a v i n g /.$setResult($_HAVING);./
    Keyword ::= m i n u t e /.$setResult($_MINUTE);./
    Keyword ::= o f f s e t /.$setResult($_OFFSET);./
    Keyword ::= s a m p l e /.$setResult($_SAMPLE);./
    Keyword ::= s c h e m a /.$setResult($_SCHEMA);./
    Keyword ::= s e c o n d /.$setResult($_SECOND);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s y s t e m /.$setResult($_SYSTEM);./
    Keyword ::= t a b l e s /.$setResult($_TABLES);./
    Keyword ::= u n n e s t /.$setResult($_UNNEST);./
    Keyword ::= a l t e r /.$setResult($_ALTER);./
    Keyword ::= c r o s s /.$setResult($_CROSS);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f e t c h /.$setResult($_FETCH);./
    Keyword ::= f i l e s /.$setResult($_FILES);./
    Keyword ::= f i r s t /.$setResult($_FIRST);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= i n n e r /.$setResult($_INNER);./
    Keyword ::= l e v e l /.$setResult($_LEVEL);./
    Keyword ::= l i m i t /.$setResult($_LIMIT);./
    Keyword ::= m o n t h /.$setResult($_MONTH);./
    Keyword ::= n u l l s /.$setResult($_NULLS);./
    Keyword ::= o r d e r /.$setResult($_ORDER);./
    Keyword ::= o u t e r /.$setResult($_OUTER);./
    Keyword ::= r e s e t /.$setResult($_RESET);./
    Keyword ::= r i g h t /.$setResult($_RIGHT);./
    Keyword ::= t a b l e /.$setResult($_TABLE);./
    Keyword ::= u n i o n /.$setResult($_UNION);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= c a s t /.$setResult($_CAST);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= d a t e /.$setResult($_DATE);./
    Keyword ::= d e s c /.$setResult($_DESC);./
    Keyword ::= d r o p /.$setResult($_DROP);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= f u l l /.$setResult($_FULL);./
    Keyword ::= h o u r /.$setResult($_HOUR);./
    Keyword ::= j o i n /.$setResult($_JOIN);./
    Keyword ::= l a s t /.$setResult($_LAST);./
    Keyword ::= l e f t /.$setResult($_LEFT);./
    Keyword ::= l i k e /.$setResult($_LIKE);./
    Keyword ::= l o a d /.$setResult($_LOAD);./
    Keyword ::= n e x t /.$setResult($_NEXT);./
    Keyword ::= n o n e /.$setResult($_NONE);./
    Keyword ::= n u l l /.$setResult($_NULL_);./
    Keyword ::= o v e r /.$setResult($_OVER);./
    Keyword ::= p a t h /.$setResult($_PATH);./
    Keyword ::= r o w s /.$setResult($_ROWS);./
    Keyword ::= s h o w /.$setResult($_SHOW);./
    Keyword ::= s o m e /.$setResult($_SOME);./
    Keyword ::= t i m e /.$setResult($_TIME);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= v i e w /.$setResult($_VIEW);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= y e a r /.$setResult($_YEAR);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= a s c /.$setResult($_ASC);./
    Keyword ::= d a y /.$setResult($_DAY);./
    Keyword ::= d e c /.$setResult($_DEC);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= j a r /.$setResult($_JAR);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= r o w /.$setResult($_ROW);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= u s e /.$setResult($_USE);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o r /.$setResult($_OR);./
%End
