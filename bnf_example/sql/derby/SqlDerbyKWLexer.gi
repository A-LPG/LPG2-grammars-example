-- Keyword filter for SqlDerby (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.sql.derby
%options template=KeywordTemplateF.gi
%options fp=SqlDerbyKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ABS
    ABSVAL
    ACOS
    ACTION
    ADD
    AGGREGATE
    ALL
    ALLOCATE
    ALTER
    ALWAYS
    AND
    ANY
    ARE
    AS
    ASC
    ASIN
    ASSERTION
    AT
    ATAN
    ATAN2
    AUTHORIZATION
    AVG
    BEGIN
    BETWEEN
    BIGINT
    BINARY
    BIT
    BLOB
    BOOLEAN
    BOTH
    BY
    CALL
    CALLED
    CASCADE
    CASCADED
    CASE
    CAST
    CEIL
    CEILING
    CHAR
    CHARACTER
    CHECK
    CLOB
    CLOSE
    COALESCE
    COLLATE
    COLLATION
    COLUMN
    COMMIT
    COMMITTED
    CONNECT
    CONNECTION
    CONSTRAINT
    CONSTRAINTS
    CONTAINS
    CONTINUE
    CONVERT
    CORRESPONDING
    COS
    COUNT
    CREATE
    CROSS
    CS
    CURRENT
    CURSOR
    CYCLE
    DATA
    DATE
    DAY
    DEALLOCATE
    DEC
    DECIMAL
    DECLARE
    DEFAULT
    DEFERRABLE
    DEFERRED
    DEFINER
    DEGREES
    DELETE
    DERBY
    DESC
    DESCRIBE
    DETERMINISTIC
    DIAGNOSTICS
    DIRTY
    DISCONNECT
    DISTINCT
    DOUBLE
    DROP
    DYNAMIC
    ELSE
    END
    ESCAPE
    EXCEPT
    EXCEPTION
    EXCLUSIVE
    EXEC
    EXISTS
    EXP
    EXPLAIN
    EXTERNAL
    FALSE
    FETCH
    FIRST
    FLOAT
    FLOOR
    FOR
    FOREIGN
    FOUND
    FROM
    FULL
    FUNCTION
    GENERATED
    GET
    GETCURRENTCONNECTION
    GIGA
    GLOBAL
    GO
    GOTO
    GRANT
    GROUP
    HAVING
    HOUR
    IDENTITY
    IMMEDIATE
    IN
    INCREMENT
    INDEX
    INDICATOR
    INITIALLY
    INNER
    INOUT
    INPUT
    INSENSITIVE
    INSERT
    INT
    INTEGER
    INTERSECT
    INTO
    INVOKER
    IS
    ISOLATION
    JAVA
    JOIN
    KEY
    KILO
    LANGUAGE
    LARGE
    LAST
    LCASE
    LEADING
    LEFT
    LENGTH
    LIKE
    LN
    LOCATE
    LOCK
    LOCKSIZE
    LOG
    LOG10
    LOGGED
    LONG
    LOWER
    LTRIM
    MATCH
    MATCHED
    MAX
    MAXVALUE
    MEGA
    MERGE
    MIN
    MINUTE
    MINVALUE
    MOD
    MODE
    MODIFIES
    MONTH
    NAME
    NATIONAL
    NATURAL
    NCHAR
    NEXT
    NO
    NONE
    NOT
    NULLIF
    NULLS
    NULL_
    NUMERIC
    NVARCHAR
    OBJECT
    OF
    OFFSET
    ON
    ONLY
    OPEN
    OPTION
    OR
    ORDER
    OUT
    OUTER
    OUTPUT
    OVERLAPS
    PAD
    PARAMETER
    PARTIAL
    PI
    PRECISION
    PREPARE
    PRESERVE
    PRIMARY
    PRIOR
    PRIVILEGES
    PROCEDURE
    PUBLIC
    RADIANS
    READ
    READS
    REAL
    REFERENCES
    RELATIVE
    RENAME
    REPEATABLE
    RESET
    RESTART
    RESTRICT
    RESULT
    RETURNS
    REVOKE
    RIGHT
    ROLE
    ROLLBACK
    ROLLUP
    ROW
    ROWS
    RR
    RS
    RTRIM
    SCHEMA
    SCROLL
    SECOND
    SECURITY
    SELECT
    SEQUENCE
    SERIALIZABLE
    SET
    SETS
    SHARE
    SIN
    SMALLINT
    SOME
    SPACE
    SQL
    SQLCODE
    SQLERROR
    SQLID
    SQLSTATE
    SQRT
    STABILITY
    START
    STYLE
    SUBSTR
    SUBSTRING
    SUM
    SYNONYM
    TABLE
    TAN
    TEMPORARY
    THEN
    TIME
    TIMESTAMP
    TO
    TRANSACTION
    TRANSLATE
    TRANSLATION
    TRIGGER
    TRIM
    TRUE
    TRUNCATE
    TYPE
    UCASE
    UNCOMMITTED
    UNION
    UNIQUE
    UNKNOWN
    UPDATE
    UPPER
    UR
    USAGE
    USER
    USING
    VALUES
    VARCHAR
    VARYING
    VIEW
    WHEN
    WHENEVER
    WHERE
    WINDOW
    WITH
    WORK
    WRITE
    XML
    XMLEXISTS
    XMLPARSE
    XMLQUERY
    XMLSERIALIZE
    YEAR
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= g e t c u r r e n t c o n n e c t i o n /.$setResult($_GETCURRENTCONNECTION);./
    Keyword ::= a u t h o r i z a t i o n /.$setResult($_AUTHORIZATION);./
    Keyword ::= c o r r e s p o n d i n g /.$setResult($_CORRESPONDING);./
    Keyword ::= d e t e r m i n i s t i c /.$setResult($_DETERMINISTIC);./
    Keyword ::= s e r i a l i z a b l e /.$setResult($_SERIALIZABLE);./
    Keyword ::= x m l s e r i a l i z e /.$setResult($_XMLSERIALIZE);./
    Keyword ::= c o n s t r a i n t s /.$setResult($_CONSTRAINTS);./
    Keyword ::= d i a g n o s t i c s /.$setResult($_DIAGNOSTICS);./
    Keyword ::= i n s e n s i t i v e /.$setResult($_INSENSITIVE);./
    Keyword ::= t r a n s a c t i o n /.$setResult($_TRANSACTION);./
    Keyword ::= t r a n s l a t i o n /.$setResult($_TRANSLATION);./
    Keyword ::= u n c o m m i t t e d /.$setResult($_UNCOMMITTED);./
    Keyword ::= c o n n e c t i o n /.$setResult($_CONNECTION);./
    Keyword ::= c o n s t r a i n t /.$setResult($_CONSTRAINT);./
    Keyword ::= d e a l l o c a t e /.$setResult($_DEALLOCATE);./
    Keyword ::= d e f e r r a b l e /.$setResult($_DEFERRABLE);./
    Keyword ::= d i s c o n n e c t /.$setResult($_DISCONNECT);./
    Keyword ::= p r i v i l e g e s /.$setResult($_PRIVILEGES);./
    Keyword ::= r e f e r e n c e s /.$setResult($_REFERENCES);./
    Keyword ::= r e p e a t a b l e /.$setResult($_REPEATABLE);./
    Keyword ::= a g g r e g a t e /.$setResult($_AGGREGATE);./
    Keyword ::= a s s e r t i o n /.$setResult($_ASSERTION);./
    Keyword ::= c h a r a c t e r /.$setResult($_CHARACTER);./
    Keyword ::= c o l l a t i o n /.$setResult($_COLLATION);./
    Keyword ::= c o m m i t t e d /.$setResult($_COMMITTED);./
    Keyword ::= e x c e p t i o n /.$setResult($_EXCEPTION);./
    Keyword ::= e x c l u s i v e /.$setResult($_EXCLUSIVE);./
    Keyword ::= g e n e r a t e d /.$setResult($_GENERATED);./
    Keyword ::= i m m e d i a t e /.$setResult($_IMMEDIATE);./
    Keyword ::= i n c r e m e n t /.$setResult($_INCREMENT);./
    Keyword ::= i n d i c a t o r /.$setResult($_INDICATOR);./
    Keyword ::= i n i t i a l l y /.$setResult($_INITIALLY);./
    Keyword ::= i n t e r s e c t /.$setResult($_INTERSECT);./
    Keyword ::= i s o l a t i o n /.$setResult($_ISOLATION);./
    Keyword ::= p a r a m e t e r /.$setResult($_PARAMETER);./
    Keyword ::= p r e c i s i o n /.$setResult($_PRECISION);./
    Keyword ::= p r o c e d u r e /.$setResult($_PROCEDURE);./
    Keyword ::= s t a b i l i t y /.$setResult($_STABILITY);./
    Keyword ::= s u b s t r i n g /.$setResult($_SUBSTRING);./
    Keyword ::= t e m p o r a r y /.$setResult($_TEMPORARY);./
    Keyword ::= t i m e s t a m p /.$setResult($_TIMESTAMP);./
    Keyword ::= t r a n s l a t e /.$setResult($_TRANSLATE);./
    Keyword ::= x m l e x i s t s /.$setResult($_XMLEXISTS);./
    Keyword ::= a l l o c a t e /.$setResult($_ALLOCATE);./
    Keyword ::= c a s c a d e d /.$setResult($_CASCADED);./
    Keyword ::= c o a l e s c e /.$setResult($_COALESCE);./
    Keyword ::= c o n t a i n s /.$setResult($_CONTAINS);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= d e f e r r e d /.$setResult($_DEFERRED);./
    Keyword ::= d e s c r i b e /.$setResult($_DESCRIBE);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT);./
    Keyword ::= e x t e r n a l /.$setResult($_EXTERNAL);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= i d e n t i t y /.$setResult($_IDENTITY);./
    Keyword ::= l a n g u a g e /.$setResult($_LANGUAGE);./
    Keyword ::= l o c k s i z e /.$setResult($_LOCKSIZE);./
    Keyword ::= m a x v a l u e /.$setResult($_MAXVALUE);./
    Keyword ::= m i n v a l u e /.$setResult($_MINVALUE);./
    Keyword ::= m o d i f i e s /.$setResult($_MODIFIES);./
    Keyword ::= n a t i o n a l /.$setResult($_NATIONAL);./
    Keyword ::= n v a r c h a r /.$setResult($_NVARCHAR);./
    Keyword ::= o v e r l a p s /.$setResult($_OVERLAPS);./
    Keyword ::= p r e s e r v e /.$setResult($_PRESERVE);./
    Keyword ::= r e l a t i v e /.$setResult($_RELATIVE);./
    Keyword ::= r e s t r i c t /.$setResult($_RESTRICT);./
    Keyword ::= r o l l b a c k /.$setResult($_ROLLBACK);./
    Keyword ::= s e c u r i t y /.$setResult($_SECURITY);./
    Keyword ::= s e q u e n c e /.$setResult($_SEQUENCE);./
    Keyword ::= s m a l l i n t /.$setResult($_SMALLINT);./
    Keyword ::= s q l e r r o r /.$setResult($_SQLERROR);./
    Keyword ::= s q l s t a t e /.$setResult($_SQLSTATE);./
    Keyword ::= t r u n c a t e /.$setResult($_TRUNCATE);./
    Keyword ::= w h e n e v e r /.$setResult($_WHENEVER);./
    Keyword ::= x m l p a r s e /.$setResult($_XMLPARSE);./
    Keyword ::= x m l q u e r y /.$setResult($_XMLQUERY);./
    Keyword ::= b e t w e e n /.$setResult($_BETWEEN);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= c a s c a d e /.$setResult($_CASCADE);./
    Keyword ::= c e i l i n g /.$setResult($_CEILING);./
    Keyword ::= c o l l a t e /.$setResult($_COLLATE);./
    Keyword ::= c o n n e c t /.$setResult($_CONNECT);./
    Keyword ::= c o n v e r t /.$setResult($_CONVERT);./
    Keyword ::= c u r r e n t /.$setResult($_CURRENT);./
    Keyword ::= d e c i m a l /.$setResult($_DECIMAL);./
    Keyword ::= d e c l a r e /.$setResult($_DECLARE);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= d e f i n e r /.$setResult($_DEFINER);./
    Keyword ::= d e g r e e s /.$setResult($_DEGREES);./
    Keyword ::= d y n a m i c /.$setResult($_DYNAMIC);./
    Keyword ::= e x p l a i n /.$setResult($_EXPLAIN);./
    Keyword ::= f o r e i g n /.$setResult($_FOREIGN);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= i n v o k e r /.$setResult($_INVOKER);./
    Keyword ::= l e a d i n g /.$setResult($_LEADING);./
    Keyword ::= m a t c h e d /.$setResult($_MATCHED);./
    Keyword ::= n a t u r a l /.$setResult($_NATURAL);./
    Keyword ::= n u m e r i c /.$setResult($_NUMERIC);./
    Keyword ::= p a r t i a l /.$setResult($_PARTIAL);./
    Keyword ::= p r e p a r e /.$setResult($_PREPARE);./
    Keyword ::= p r i m a r y /.$setResult($_PRIMARY);./
    Keyword ::= r a d i a n s /.$setResult($_RADIANS);./
    Keyword ::= r e s t a r t /.$setResult($_RESTART);./
    Keyword ::= r e t u r n s /.$setResult($_RETURNS);./
    Keyword ::= s q l c o d e /.$setResult($_SQLCODE);./
    Keyword ::= s y n o n y m /.$setResult($_SYNONYM);./
    Keyword ::= t r i g g e r /.$setResult($_TRIGGER);./
    Keyword ::= u n k n o w n /.$setResult($_UNKNOWN);./
    Keyword ::= v a r c h a r /.$setResult($_VARCHAR);./
    Keyword ::= v a r y i n g /.$setResult($_VARYING);./
    Keyword ::= a b s v a l /.$setResult($_ABSVAL);./
    Keyword ::= a c t i o n /.$setResult($_ACTION);./
    Keyword ::= a l w a y s /.$setResult($_ALWAYS);./
    Keyword ::= b i g i n t /.$setResult($_BIGINT);./
    Keyword ::= b i n a r y /.$setResult($_BINARY);./
    Keyword ::= c a l l e d /.$setResult($_CALLED);./
    Keyword ::= c o l u m n /.$setResult($_COLUMN);./
    Keyword ::= c o m m i t /.$setResult($_COMMIT);./
    Keyword ::= c r e a t e /.$setResult($_CREATE);./
    Keyword ::= c u r s o r /.$setResult($_CURSOR);./
    Keyword ::= d e l e t e /.$setResult($_DELETE);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= e s c a p e /.$setResult($_ESCAPE);./
    Keyword ::= e x c e p t /.$setResult($_EXCEPT);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= h a v i n g /.$setResult($_HAVING);./
    Keyword ::= i n s e r t /.$setResult($_INSERT);./
    Keyword ::= l e n g t h /.$setResult($_LENGTH);./
    Keyword ::= l o c a t e /.$setResult($_LOCATE);./
    Keyword ::= l o g g e d /.$setResult($_LOGGED);./
    Keyword ::= m i n u t e /.$setResult($_MINUTE);./
    Keyword ::= n u l l i f /.$setResult($_NULLIF);./
    Keyword ::= o b j e c t /.$setResult($_OBJECT);./
    Keyword ::= o f f s e t /.$setResult($_OFFSET);./
    Keyword ::= o p t i o n /.$setResult($_OPTION);./
    Keyword ::= o u t p u t /.$setResult($_OUTPUT);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= r e n a m e /.$setResult($_RENAME);./
    Keyword ::= r e s u l t /.$setResult($_RESULT);./
    Keyword ::= r e v o k e /.$setResult($_REVOKE);./
    Keyword ::= r o l l u p /.$setResult($_ROLLUP);./
    Keyword ::= s c h e m a /.$setResult($_SCHEMA);./
    Keyword ::= s c r o l l /.$setResult($_SCROLL);./
    Keyword ::= s e c o n d /.$setResult($_SECOND);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s u b s t r /.$setResult($_SUBSTR);./
    Keyword ::= u n i q u e /.$setResult($_UNIQUE);./
    Keyword ::= u p d a t e /.$setResult($_UPDATE);./
    Keyword ::= v a l u e s /.$setResult($_VALUES);./
    Keyword ::= w i n d o w /.$setResult($_WINDOW);./
    Keyword ::= a l t e r /.$setResult($_ALTER);./
    Keyword ::= a t a n 2 /.$setResult($_ATAN2);./
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
    Keyword ::= c h e c k /.$setResult($_CHECK);./
    Keyword ::= c l o s e /.$setResult($_CLOSE);./
    Keyword ::= c o u n t /.$setResult($_COUNT);./
    Keyword ::= c r o s s /.$setResult($_CROSS);./
    Keyword ::= c y c l e /.$setResult($_CYCLE);./
    Keyword ::= d e r b y /.$setResult($_DERBY);./
    Keyword ::= d i r t y /.$setResult($_DIRTY);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f e t c h /.$setResult($_FETCH);./
    Keyword ::= f i r s t /.$setResult($_FIRST);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= f l o o r /.$setResult($_FLOOR);./
    Keyword ::= f o u n d /.$setResult($_FOUND);./
    Keyword ::= g r a n t /.$setResult($_GRANT);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= i n d e x /.$setResult($_INDEX);./
    Keyword ::= i n n e r /.$setResult($_INNER);./
    Keyword ::= i n o u t /.$setResult($_INOUT);./
    Keyword ::= i n p u t /.$setResult($_INPUT);./
    Keyword ::= l a r g e /.$setResult($_LARGE);./
    Keyword ::= l c a s e /.$setResult($_LCASE);./
    Keyword ::= l o g 1 0 /.$setResult($_LOG10);./
    Keyword ::= l o w e r /.$setResult($_LOWER);./
    Keyword ::= l t r i m /.$setResult($_LTRIM);./
    Keyword ::= m a t c h /.$setResult($_MATCH);./
    Keyword ::= m e r g e /.$setResult($_MERGE);./
    Keyword ::= m o n t h /.$setResult($_MONTH);./
    Keyword ::= n c h a r /.$setResult($_NCHAR);./
    Keyword ::= n u l l s /.$setResult($_NULLS);./
    Keyword ::= o r d e r /.$setResult($_ORDER);./
    Keyword ::= o u t e r /.$setResult($_OUTER);./
    Keyword ::= p r i o r /.$setResult($_PRIOR);./
    Keyword ::= r e a d s /.$setResult($_READS);./
    Keyword ::= r e s e t /.$setResult($_RESET);./
    Keyword ::= r i g h t /.$setResult($_RIGHT);./
    Keyword ::= r t r i m /.$setResult($_RTRIM);./
    Keyword ::= s h a r e /.$setResult($_SHARE);./
    Keyword ::= s p a c e /.$setResult($_SPACE);./
    Keyword ::= s q l i d /.$setResult($_SQLID);./
    Keyword ::= s t a r t /.$setResult($_START);./
    Keyword ::= s t y l e /.$setResult($_STYLE);./
    Keyword ::= t a b l e /.$setResult($_TABLE);./
    Keyword ::= u c a s e /.$setResult($_UCASE);./
    Keyword ::= u n i o n /.$setResult($_UNION);./
    Keyword ::= u p p e r /.$setResult($_UPPER);./
    Keyword ::= u s a g e /.$setResult($_USAGE);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= w r i t e /.$setResult($_WRITE);./
    Keyword ::= a c o s /.$setResult($_ACOS);./
    Keyword ::= a s i n /.$setResult($_ASIN);./
    Keyword ::= a t a n /.$setResult($_ATAN);./
    Keyword ::= b l o b /.$setResult($_BLOB);./
    Keyword ::= b o t h /.$setResult($_BOTH);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c a s t /.$setResult($_CAST);./
    Keyword ::= c e i l /.$setResult($_CEIL);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= c l o b /.$setResult($_CLOB);./
    Keyword ::= d a t a /.$setResult($_DATA);./
    Keyword ::= d a t e /.$setResult($_DATE);./
    Keyword ::= d e s c /.$setResult($_DESC);./
    Keyword ::= d r o p /.$setResult($_DROP);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e x e c /.$setResult($_EXEC);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= f u l l /.$setResult($_FULL);./
    Keyword ::= g o t o /.$setResult($_GOTO);./
    Keyword ::= h o u r /.$setResult($_HOUR);./
    Keyword ::= i n t o /.$setResult($_INTO);./
    Keyword ::= j a v a /.$setResult($_JAVA);./
    Keyword ::= j o i n /.$setResult($_JOIN);./
    Keyword ::= l a s t /.$setResult($_LAST);./
    Keyword ::= l e f t /.$setResult($_LEFT);./
    Keyword ::= l i k e /.$setResult($_LIKE);./
    Keyword ::= l o c k /.$setResult($_LOCK);./
    Keyword ::= l o n g /.$setResult($_LONG);./
    Keyword ::= m o d e /.$setResult($_MODE);./
    Keyword ::= n a m e /.$setResult($_NAME);./
    Keyword ::= n e x t /.$setResult($_NEXT);./
    Keyword ::= n o n e /.$setResult($_NONE);./
    Keyword ::= n u l l /.$setResult($_NULL_);./
    Keyword ::= o n l y /.$setResult($_ONLY);./
    Keyword ::= o p e n /.$setResult($_OPEN);./
    Keyword ::= r e a d /.$setResult($_READ);./
    Keyword ::= r e a l /.$setResult($_REAL);./
    Keyword ::= r o l e /.$setResult($_ROLE);./
    Keyword ::= r o w s /.$setResult($_ROWS);./
    Keyword ::= s e t s /.$setResult($_SETS);./
    Keyword ::= s o m e /.$setResult($_SOME);./
    Keyword ::= s q r t /.$setResult($_SQRT);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t i m e /.$setResult($_TIME);./
    Keyword ::= t r i m /.$setResult($_TRIM);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= u s e r /.$setResult($_USER);./
    Keyword ::= v i e w /.$setResult($_VIEW);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= w o r k /.$setResult($_WORK);./
    Keyword ::= y e a r /.$setResult($_YEAR);./
    Keyword ::= a b s /.$setResult($_ABS);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= a r e /.$setResult($_ARE);./
    Keyword ::= a s c /.$setResult($_ASC);./
    Keyword ::= a v g /.$setResult($_AVG);./
    Keyword ::= b i t /.$setResult($_BIT);./
    Keyword ::= c o s /.$setResult($_COS);./
    Keyword ::= d a y /.$setResult($_DAY);./
    Keyword ::= d e c /.$setResult($_DEC);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= e x p /.$setResult($_EXP);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= g e t /.$setResult($_GET);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= k e y /.$setResult($_KEY);./
    Keyword ::= l o g /.$setResult($_LOG);./
    Keyword ::= m a x /.$setResult($_MAX);./
    Keyword ::= m i n /.$setResult($_MIN);./
    Keyword ::= m o d /.$setResult($_MOD);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= o u t /.$setResult($_OUT);./
    Keyword ::= p a d /.$setResult($_PAD);./
    Keyword ::= r o w /.$setResult($_ROW);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= s i n /.$setResult($_SIN);./
    Keyword ::= s q l /.$setResult($_SQL);./
    Keyword ::= s u m /.$setResult($_SUM);./
    Keyword ::= t a n /.$setResult($_TAN);./
    Keyword ::= x m l /.$setResult($_XML);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= a t /.$setResult($_AT);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= c s /.$setResult($_CS);./
    Keyword ::= g o /.$setResult($_GO);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= l n /.$setResult($_LN);./
    Keyword ::= n o /.$setResult($_NO);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= p i /.$setResult($_PI);./
    Keyword ::= r r /.$setResult($_RR);./
    Keyword ::= r s /.$setResult($_RS);./
    Keyword ::= t o /.$setResult($_TO);./
    Keyword ::= u r /.$setResult($_UR);./
    Keyword ::= g /.$setResult($_GIGA);./
    Keyword ::= k /.$setResult($_KILO);./
    Keyword ::= m /.$setResult($_MEGA);./
%End
