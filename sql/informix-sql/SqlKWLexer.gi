-- Keyword filter for Sql (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.sql.informix_sql
%options template=KeywordTemplateF.gi
%options fp=SqlKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ABORT
    ACTION
    ADD
    AFTER
    AGGREGATE
    ALL
    ALTER
    ALWAYS
    ANALYZE
    AND
    APPEND
    AS
    ASC
    ATTACH
    AUTOFREE
    AUTOINCREMENT
    BEFORE
    BEGIN
    BETWEEN
    BY
    CASCADE
    CASE
    CAST
    CHECK
    CLOSE
    COLLATE
    COLLATION
    COLUMN
    COMMIT
    COMPONENT
    CONFLICT
    CONSTRAINT
    CONTEXT
    CREATE
    CROSS
    CURRENT
    DATABASE
    DATASKIP
    DEBUG
    DEFAULT
    DEFERRABLE
    DEFERRED
    DELETE
    DESC
    DETACH
    DISABLED
    DISTINCT
    DROP
    EACH
    ELSE
    ENABLED
    END
    ESCAPE
    EXCEPT
    EXCLUDE
    EXCLUSIVE
    EXISTS
    EXPLAIN
    FAIL
    FALSE
    FILE
    FILTER
    FIRST
    FOLLOWING
    FOR
    FOREIGN
    FROM
    FULL
    GENERATED
    GLOB
    GROUP
    GROUPS
    HAVING
    IF
    IGNORE
    IMMEDIATE
    IN
    INDEX
    INDEXED
    INITIALLY
    INNER
    INSERT
    INSTEAD
    INTERSECT
    INTO
    IS
    ISNULL
    JOIN
    KEY
    LABEL
    LAG
    LAST
    LEAD
    LEFT
    LIKE
    LIMIT
    MATCH
    NATURAL
    NO
    NOT
    NOTNULL
    NTILE
    NULL
    NULLS
    OF
    OFF
    OFFSET
    ON
    ONLINE
    OR
    ORDER
    OUTER
    OVER
    PARTITION
    PLAN
    POLICY
    PRAGMA
    PRECEDING
    PRIMARY
    QUERY
    RAISE
    RANGE
    RANK
    RECURSIVE
    REFERENCES
    REGEXP
    REINDEX
    RELEASE
    RENAME
    REPLACE
    RESTRICT
    RIGHT
    ROLE
    ROLLBACK
    ROW
    ROWS
    SAVEPOINT
    SECURITY
    SELECT
    SEQUENCE
    SET
    STORED
    SYNONYM
    TABLE
    TEMP
    TEMPORARY
    THEN
    TO
    TRANSACTION
    TRIGGER
    TRUE
    TRUSTED
    TYPE
    UNBOUNDED
    UNION
    UNIQUE
    UPDATE
    USER
    USING
    VACUUM
    VALUES
    VIEW
    VIRTUAL
    WHEN
    WHERE
    WINDOW
    WITH
    WITHOUT
    WORK
    XADATASOURCE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= a u t o i n c r e m e n t /.$setResult($_AUTOINCREMENT);./
    Keyword ::= x a d a t a s o u r c e /.$setResult($_XADATASOURCE);./
    Keyword ::= t r a n s a c t i o n /.$setResult($_TRANSACTION);./
    Keyword ::= c o n s t r a i n t /.$setResult($_CONSTRAINT);./
    Keyword ::= d e f e r r a b l e /.$setResult($_DEFERRABLE);./
    Keyword ::= r e f e r e n c e s /.$setResult($_REFERENCES);./
    Keyword ::= a g g r e g a t e /.$setResult($_AGGREGATE);./
    Keyword ::= c o l l a t i o n /.$setResult($_COLLATION);./
    Keyword ::= c o m p o n e n t /.$setResult($_COMPONENT);./
    Keyword ::= e x c l u s i v e /.$setResult($_EXCLUSIVE);./
    Keyword ::= f o l l o w i n g /.$setResult($_FOLLOWING);./
    Keyword ::= g e n e r a t e d /.$setResult($_GENERATED);./
    Keyword ::= i m m e d i a t e /.$setResult($_IMMEDIATE);./
    Keyword ::= i n i t i a l l y /.$setResult($_INITIALLY);./
    Keyword ::= i n t e r s e c t /.$setResult($_INTERSECT);./
    Keyword ::= p a r t i t i o n /.$setResult($_PARTITION);./
    Keyword ::= p r e c e d i n g /.$setResult($_PRECEDING);./
    Keyword ::= r e c u r s i v e /.$setResult($_RECURSIVE);./
    Keyword ::= s a v e p o i n t /.$setResult($_SAVEPOINT);./
    Keyword ::= t e m p o r a r y /.$setResult($_TEMPORARY);./
    Keyword ::= u n b o u n d e d /.$setResult($_UNBOUNDED);./
    Keyword ::= a u t o f r e e /.$setResult($_AUTOFREE);./
    Keyword ::= c o n f l i c t /.$setResult($_CONFLICT);./
    Keyword ::= d a t a b a s e /.$setResult($_DATABASE);./
    Keyword ::= d a t a s k i p /.$setResult($_DATASKIP);./
    Keyword ::= d e f e r r e d /.$setResult($_DEFERRED);./
    Keyword ::= d i s a b l e d /.$setResult($_DISABLED);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT);./
    Keyword ::= r e s t r i c t /.$setResult($_RESTRICT);./
    Keyword ::= r o l l b a c k /.$setResult($_ROLLBACK);./
    Keyword ::= s e c u r i t y /.$setResult($_SECURITY);./
    Keyword ::= s e q u e n c e /.$setResult($_SEQUENCE);./
    Keyword ::= a n a l y z e /.$setResult($_ANALYZE);./
    Keyword ::= b e t w e e n /.$setResult($_BETWEEN);./
    Keyword ::= c a s c a d e /.$setResult($_CASCADE);./
    Keyword ::= c o l l a t e /.$setResult($_COLLATE);./
    Keyword ::= c o n t e x t /.$setResult($_CONTEXT);./
    Keyword ::= c u r r e n t /.$setResult($_CURRENT);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= e n a b l e d /.$setResult($_ENABLED);./
    Keyword ::= e x c l u d e /.$setResult($_EXCLUDE);./
    Keyword ::= e x p l a i n /.$setResult($_EXPLAIN);./
    Keyword ::= f o r e i g n /.$setResult($_FOREIGN);./
    Keyword ::= i n d e x e d /.$setResult($_INDEXED);./
    Keyword ::= i n s t e a d /.$setResult($_INSTEAD);./
    Keyword ::= n a t u r a l /.$setResult($_NATURAL);./
    Keyword ::= n o t n u l l /.$setResult($_NOTNULL);./
    Keyword ::= p r i m a r y /.$setResult($_PRIMARY);./
    Keyword ::= r e i n d e x /.$setResult($_REINDEX);./
    Keyword ::= r e l e a s e /.$setResult($_RELEASE);./
    Keyword ::= r e p l a c e /.$setResult($_REPLACE);./
    Keyword ::= s y n o n y m /.$setResult($_SYNONYM);./
    Keyword ::= t r i g g e r /.$setResult($_TRIGGER);./
    Keyword ::= t r u s t e d /.$setResult($_TRUSTED);./
    Keyword ::= v i r t u a l /.$setResult($_VIRTUAL);./
    Keyword ::= w i t h o u t /.$setResult($_WITHOUT);./
    Keyword ::= a c t i o n /.$setResult($_ACTION);./
    Keyword ::= a l w a y s /.$setResult($_ALWAYS);./
    Keyword ::= a p p e n d /.$setResult($_APPEND);./
    Keyword ::= a t t a c h /.$setResult($_ATTACH);./
    Keyword ::= b e f o r e /.$setResult($_BEFORE);./
    Keyword ::= c o l u m n /.$setResult($_COLUMN);./
    Keyword ::= c o m m i t /.$setResult($_COMMIT);./
    Keyword ::= c r e a t e /.$setResult($_CREATE);./
    Keyword ::= d e l e t e /.$setResult($_DELETE);./
    Keyword ::= d e t a c h /.$setResult($_DETACH);./
    Keyword ::= e s c a p e /.$setResult($_ESCAPE);./
    Keyword ::= e x c e p t /.$setResult($_EXCEPT);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS);./
    Keyword ::= f i l t e r /.$setResult($_FILTER);./
    Keyword ::= g r o u p s /.$setResult($_GROUPS);./
    Keyword ::= h a v i n g /.$setResult($_HAVING);./
    Keyword ::= i g n o r e /.$setResult($_IGNORE);./
    Keyword ::= i n s e r t /.$setResult($_INSERT);./
    Keyword ::= i s n u l l /.$setResult($_ISNULL);./
    Keyword ::= o f f s e t /.$setResult($_OFFSET);./
    Keyword ::= o n l i n e /.$setResult($_ONLINE);./
    Keyword ::= p o l i c y /.$setResult($_POLICY);./
    Keyword ::= p r a g m a /.$setResult($_PRAGMA);./
    Keyword ::= r e g e x p /.$setResult($_REGEXP);./
    Keyword ::= r e n a m e /.$setResult($_RENAME);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s t o r e d /.$setResult($_STORED);./
    Keyword ::= u n i q u e /.$setResult($_UNIQUE);./
    Keyword ::= u p d a t e /.$setResult($_UPDATE);./
    Keyword ::= v a c u u m /.$setResult($_VACUUM);./
    Keyword ::= v a l u e s /.$setResult($_VALUES);./
    Keyword ::= w i n d o w /.$setResult($_WINDOW);./
    Keyword ::= a b o r t /.$setResult($_ABORT);./
    Keyword ::= a f t e r /.$setResult($_AFTER);./
    Keyword ::= a l t e r /.$setResult($_ALTER);./
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
    Keyword ::= c h e c k /.$setResult($_CHECK);./
    Keyword ::= c l o s e /.$setResult($_CLOSE);./
    Keyword ::= c r o s s /.$setResult($_CROSS);./
    Keyword ::= d e b u g /.$setResult($_DEBUG);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f i r s t /.$setResult($_FIRST);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= i n d e x /.$setResult($_INDEX);./
    Keyword ::= i n n e r /.$setResult($_INNER);./
    Keyword ::= l a b e l /.$setResult($_LABEL);./
    Keyword ::= l i m i t /.$setResult($_LIMIT);./
    Keyword ::= m a t c h /.$setResult($_MATCH);./
    Keyword ::= n t i l e /.$setResult($_NTILE);./
    Keyword ::= n u l l s /.$setResult($_NULLS);./
    Keyword ::= o r d e r /.$setResult($_ORDER);./
    Keyword ::= o u t e r /.$setResult($_OUTER);./
    Keyword ::= q u e r y /.$setResult($_QUERY);./
    Keyword ::= r a i s e /.$setResult($_RAISE);./
    Keyword ::= r a n g e /.$setResult($_RANGE);./
    Keyword ::= r i g h t /.$setResult($_RIGHT);./
    Keyword ::= t a b l e /.$setResult($_TABLE);./
    Keyword ::= u n i o n /.$setResult($_UNION);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c a s t /.$setResult($_CAST);./
    Keyword ::= d e s c /.$setResult($_DESC);./
    Keyword ::= d r o p /.$setResult($_DROP);./
    Keyword ::= e a c h /.$setResult($_EACH);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= f a i l /.$setResult($_FAIL);./
    Keyword ::= f i l e /.$setResult($_FILE);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= f u l l /.$setResult($_FULL);./
    Keyword ::= g l o b /.$setResult($_GLOB);./
    Keyword ::= i n t o /.$setResult($_INTO);./
    Keyword ::= j o i n /.$setResult($_JOIN);./
    Keyword ::= l a s t /.$setResult($_LAST);./
    Keyword ::= l e a d /.$setResult($_LEAD);./
    Keyword ::= l e f t /.$setResult($_LEFT);./
    Keyword ::= l i k e /.$setResult($_LIKE);./
    Keyword ::= n u l l /.$setResult($_NULL);./
    Keyword ::= o v e r /.$setResult($_OVER);./
    Keyword ::= p l a n /.$setResult($_PLAN);./
    Keyword ::= r a n k /.$setResult($_RANK);./
    Keyword ::= r o l e /.$setResult($_ROLE);./
    Keyword ::= r o w s /.$setResult($_ROWS);./
    Keyword ::= t e m p /.$setResult($_TEMP);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= u s e r /.$setResult($_USER);./
    Keyword ::= v i e w /.$setResult($_VIEW);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= w o r k /.$setResult($_WORK);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a s c /.$setResult($_ASC);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= k e y /.$setResult($_KEY);./
    Keyword ::= l a g /.$setResult($_LAG);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= o f f /.$setResult($_OFF);./
    Keyword ::= r o w /.$setResult($_ROW);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= n o /.$setResult($_NO);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
