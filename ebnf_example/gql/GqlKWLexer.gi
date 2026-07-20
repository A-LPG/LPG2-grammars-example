-- Keyword filter for Gql (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.gql
%options template=KeywordTemplateF.gi
%options fp=GqlKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ABS
    ABSTRACT
    ACOS
    ACYCLIC
    AGGREGATE
    AGGREGATES
    ALL
    ALTER
    AND
    ANY
    ARRAY
    AS
    ASC
    ASCENDING
    ASIN
    AT
    ATAN
    AVG
    BIG
    BIGINT
    BINARY
    BINDING
    BINDINGS
    BOOL
    BOOLEAN
    BOTH
    BTRIM
    BY
    BYTES
    CALL
    CARDINALITY
    CASE
    CAST
    CATALOG
    CEIL
    CEILING
    CHAR
    CHARACTERISTICS
    CLEAR
    CLONE
    CLOSE
    COALESCE
    COMMIT
    CONNECTING
    CONSTRAINT
    COPY
    COS
    COSH
    COT
    COUNT
    CREATE
    DATA
    DATE
    DATETIME
    DAY
    DEC
    DECIMAL
    DEGREES
    DELETE
    DESC
    DESCENDING
    DESTINATION
    DETACH
    DIFFERENT
    DIRECTED
    DIRECTORY
    DISTINCT
    DOUBLE
    DROP
    DRYRUN
    DURATION
    EDGE
    EDGES
    ELEMENT
    ELEMENTS
    ELSE
    END
    EXACT
    EXCEPT
    EXISTING
    EXISTS
    EXP
    FILTER
    FINISH
    FIRST
    FLOAT
    FLOAT128
    FLOAT16
    FLOAT256
    FLOAT32
    FLOAT64
    FLOOR
    FOR
    FROM
    FUNCTION
    GQLSTATUS
    GRANT
    GRAPH
    GROUP
    GROUPS
    HAVING
    HOUR
    IF
    IN
    INFINITY_KW
    INSERT
    INSTANT
    INT
    INT128
    INT16
    INT256
    INT32
    INT64
    INT8
    INTEGER
    INTEGER128
    INTEGER16
    INTEGER256
    INTEGER32
    INTEGER64
    INTEGER8
    INTERSECT
    INTERVAL
    IS
    KEEP
    LABEL
    LABELED
    LABELS
    LAST
    LEADING
    LEFT
    LET
    LIKE
    LIMIT
    LIST
    LN
    LOCAL
    LOG10
    LOG_KW
    LOWER
    LTRIM
    MATCH
    MAX
    MIN
    MINUTE
    MOD
    MONTH
    NEXT
    NFC
    NFD
    NFKC
    NFKD
    NO
    NODE
    NODETACH
    NORMALIZE
    NORMALIZED
    NOT
    NOTHING
    NULLIF
    NULLS
    NULL_KW
    NUMBER
    NUMERIC
    OF
    OFFSET
    ON
    ONLY
    OPEN
    OPTIONAL
    OR
    ORDER
    ORDINALITY
    OTHERWISE
    PARAMETER
    PARAMETERS
    PARTITION
    PATH
    PATHS
    POWER
    PRECISION
    PROCEDURE
    PRODUCT
    PROJECT
    PROPERTY
    QUERY
    RADIANS
    READ
    REAL
    RECORD
    RECORDS
    REFERENCE
    RELATIONSHIP
    RELATIONSHIPS
    REMOVE
    RENAME
    REPEATABLE
    REPLACE
    RESET
    RETURN
    REVOKE
    RIGHT
    ROLLBACK
    RTRIM
    SAME
    SCHEMA
    SECOND
    SELECT
    SESSION
    SET
    SHORTEST
    SIGNED
    SIMPLE
    SIN
    SINH
    SIZE
    SKIP_RESERVED_WORD
    SMALL
    SMALLINT
    SOURCE
    SQRT
    START
    STRING
    SUBSTRING
    SUM
    TABLE
    TAN
    TANH
    TEMPORAL
    THEN
    TIME
    TIMESTAMP
    TO
    TRAIL
    TRAILING
    TRANSACTION
    TRIM
    TYPE
    TYPED
    UBIGINT
    UINT
    UINT128
    UINT16
    UINT256
    UINT32
    UINT64
    UINT8
    UNDIRECTED
    UNION
    UNIQUE
    UNIT
    UNSIGNED
    UPPER
    USE
    USMALLINT
    VALUE
    VALUES
    VARBINARY
    VARCHAR
    VARIABLE
    VERTEX
    WALK
    WHEN
    WHERE
    WITH
    WITHOUT
    WRITE
    XOR
    YEAR
    YIELD
    ZONE
    ZONED
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= c h a r a c t e r i s t i c s /.$setResult($_CHARACTERISTICS);./
    Keyword ::= r e l a t i o n s h i p s /.$setResult($_RELATIONSHIPS);./
    Keyword ::= r e l a t i o n s h i p /.$setResult($_RELATIONSHIP);./
    Keyword ::= c a r d i n a l i t y /.$setResult($_CARDINALITY);./
    Keyword ::= d e s t i n a t i o n /.$setResult($_DESTINATION);./
    Keyword ::= t r a n s a c t i o n /.$setResult($_TRANSACTION);./
    Keyword ::= a g g r e g a t e s /.$setResult($_AGGREGATES);./
    Keyword ::= c o n n e c t i n g /.$setResult($_CONNECTING);./
    Keyword ::= c o n s t r a i n t /.$setResult($_CONSTRAINT);./
    Keyword ::= d e s c e n d i n g /.$setResult($_DESCENDING);./
    Keyword ::= i n t e g e r 1 2 8 /.$setResult($_INTEGER128);./
    Keyword ::= i n t e g e r 2 5 6 /.$setResult($_INTEGER256);./
    Keyword ::= n o r m a l i z e d /.$setResult($_NORMALIZED);./
    Keyword ::= o r d i n a l i t y /.$setResult($_ORDINALITY);./
    Keyword ::= p a r a m e t e r s /.$setResult($_PARAMETERS);./
    Keyword ::= r e p e a t a b l e /.$setResult($_REPEATABLE);./
    Keyword ::= u n d i r e c t e d /.$setResult($_UNDIRECTED);./
    Keyword ::= a g g r e g a t e /.$setResult($_AGGREGATE);./
    Keyword ::= a s c e n d i n g /.$setResult($_ASCENDING);./
    Keyword ::= d i f f e r e n t /.$setResult($_DIFFERENT);./
    Keyword ::= d i r e c t o r y /.$setResult($_DIRECTORY);./
    Keyword ::= g q l s t a t u s /.$setResult($_GQLSTATUS);./
    Keyword ::= i n t e g e r 1 6 /.$setResult($_INTEGER16);./
    Keyword ::= i n t e g e r 3 2 /.$setResult($_INTEGER32);./
    Keyword ::= i n t e g e r 6 4 /.$setResult($_INTEGER64);./
    Keyword ::= i n t e r s e c t /.$setResult($_INTERSECT);./
    Keyword ::= n o r m a l i z e /.$setResult($_NORMALIZE);./
    Keyword ::= o t h e r w i s e /.$setResult($_OTHERWISE);./
    Keyword ::= p a r a m e t e r /.$setResult($_PARAMETER);./
    Keyword ::= p a r t i t i o n /.$setResult($_PARTITION);./
    Keyword ::= p r e c i s i o n /.$setResult($_PRECISION);./
    Keyword ::= p r o c e d u r e /.$setResult($_PROCEDURE);./
    Keyword ::= r e f e r e n c e /.$setResult($_REFERENCE);./
    Keyword ::= s u b s t r i n g /.$setResult($_SUBSTRING);./
    Keyword ::= t i m e s t a m p /.$setResult($_TIMESTAMP);./
    Keyword ::= u s m a l l i n t /.$setResult($_USMALLINT);./
    Keyword ::= v a r b i n a r y /.$setResult($_VARBINARY);./
    Keyword ::= a b s t r a c t /.$setResult($_ABSTRACT);./
    Keyword ::= b i n d i n g s /.$setResult($_BINDINGS);./
    Keyword ::= c o a l e s c e /.$setResult($_COALESCE);./
    Keyword ::= d a t e t i m e /.$setResult($_DATETIME);./
    Keyword ::= d i r e c t e d /.$setResult($_DIRECTED);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT);./
    Keyword ::= d u r a t i o n /.$setResult($_DURATION);./
    Keyword ::= e l e m e n t s /.$setResult($_ELEMENTS);./
    Keyword ::= e x i s t i n g /.$setResult($_EXISTING);./
    Keyword ::= f l o a t 1 2 8 /.$setResult($_FLOAT128);./
    Keyword ::= f l o a t 2 5 6 /.$setResult($_FLOAT256);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= i n f i n i t y /.$setResult($_INFINITY_KW);./
    Keyword ::= i n t e g e r 8 /.$setResult($_INTEGER8);./
    Keyword ::= i n t e r v a l /.$setResult($_INTERVAL);./
    Keyword ::= n o d e t a c h /.$setResult($_NODETACH);./
    Keyword ::= o p t i o n a l /.$setResult($_OPTIONAL);./
    Keyword ::= p r o p e r t y /.$setResult($_PROPERTY);./
    Keyword ::= r o l l b a c k /.$setResult($_ROLLBACK);./
    Keyword ::= s h o r t e s t /.$setResult($_SHORTEST);./
    Keyword ::= s m a l l i n t /.$setResult($_SMALLINT);./
    Keyword ::= t e m p o r a l /.$setResult($_TEMPORAL);./
    Keyword ::= t r a i l i n g /.$setResult($_TRAILING);./
    Keyword ::= u n s i g n e d /.$setResult($_UNSIGNED);./
    Keyword ::= v a r i a b l e /.$setResult($_VARIABLE);./
    Keyword ::= a c y c l i c /.$setResult($_ACYCLIC);./
    Keyword ::= b i n d i n g /.$setResult($_BINDING);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= c a t a l o g /.$setResult($_CATALOG);./
    Keyword ::= c e i l i n g /.$setResult($_CEILING);./
    Keyword ::= d e c i m a l /.$setResult($_DECIMAL);./
    Keyword ::= d e g r e e s /.$setResult($_DEGREES);./
    Keyword ::= e l e m e n t /.$setResult($_ELEMENT);./
    Keyword ::= f l o a t 1 6 /.$setResult($_FLOAT16);./
    Keyword ::= f l o a t 3 2 /.$setResult($_FLOAT32);./
    Keyword ::= f l o a t 6 4 /.$setResult($_FLOAT64);./
    Keyword ::= i n s t a n t /.$setResult($_INSTANT);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= l a b e l e d /.$setResult($_LABELED);./
    Keyword ::= l e a d i n g /.$setResult($_LEADING);./
    Keyword ::= n o t h i n g /.$setResult($_NOTHING);./
    Keyword ::= n u m e r i c /.$setResult($_NUMERIC);./
    Keyword ::= p r o d u c t /.$setResult($_PRODUCT);./
    Keyword ::= p r o j e c t /.$setResult($_PROJECT);./
    Keyword ::= r a d i a n s /.$setResult($_RADIANS);./
    Keyword ::= r e c o r d s /.$setResult($_RECORDS);./
    Keyword ::= r e p l a c e /.$setResult($_REPLACE);./
    Keyword ::= s e s s i o n /.$setResult($_SESSION);./
    Keyword ::= u b i g i n t /.$setResult($_UBIGINT);./
    Keyword ::= u i n t 1 2 8 /.$setResult($_UINT128);./
    Keyword ::= u i n t 2 5 6 /.$setResult($_UINT256);./
    Keyword ::= v a r c h a r /.$setResult($_VARCHAR);./
    Keyword ::= w i t h o u t /.$setResult($_WITHOUT);./
    Keyword ::= b i g i n t /.$setResult($_BIGINT);./
    Keyword ::= b i n a r y /.$setResult($_BINARY);./
    Keyword ::= c o m m i t /.$setResult($_COMMIT);./
    Keyword ::= c r e a t e /.$setResult($_CREATE);./
    Keyword ::= d e l e t e /.$setResult($_DELETE);./
    Keyword ::= d e t a c h /.$setResult($_DETACH);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= d r y r u n /.$setResult($_DRYRUN);./
    Keyword ::= e x c e p t /.$setResult($_EXCEPT);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS);./
    Keyword ::= f i l t e r /.$setResult($_FILTER);./
    Keyword ::= f i n i s h /.$setResult($_FINISH);./
    Keyword ::= g r o u p s /.$setResult($_GROUPS);./
    Keyword ::= h a v i n g /.$setResult($_HAVING);./
    Keyword ::= i n s e r t /.$setResult($_INSERT);./
    Keyword ::= i n t 1 2 8 /.$setResult($_INT128);./
    Keyword ::= i n t 2 5 6 /.$setResult($_INT256);./
    Keyword ::= l a b e l s /.$setResult($_LABELS);./
    Keyword ::= m i n u t e /.$setResult($_MINUTE);./
    Keyword ::= n u l l i f /.$setResult($_NULLIF);./
    Keyword ::= n u m b e r /.$setResult($_NUMBER);./
    Keyword ::= o f f s e t /.$setResult($_OFFSET);./
    Keyword ::= r e c o r d /.$setResult($_RECORD);./
    Keyword ::= r e m o v e /.$setResult($_REMOVE);./
    Keyword ::= r e n a m e /.$setResult($_RENAME);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= r e v o k e /.$setResult($_REVOKE);./
    Keyword ::= s c h e m a /.$setResult($_SCHEMA);./
    Keyword ::= s e c o n d /.$setResult($_SECOND);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s i g n e d /.$setResult($_SIGNED);./
    Keyword ::= s i m p l e /.$setResult($_SIMPLE);./
    Keyword ::= s o u r c e /.$setResult($_SOURCE);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= u i n t 1 6 /.$setResult($_UINT16);./
    Keyword ::= u i n t 3 2 /.$setResult($_UINT32);./
    Keyword ::= u i n t 6 4 /.$setResult($_UINT64);./
    Keyword ::= u n i q u e /.$setResult($_UNIQUE);./
    Keyword ::= v a l u e s /.$setResult($_VALUES);./
    Keyword ::= v e r t e x /.$setResult($_VERTEX);./
    Keyword ::= a l t e r /.$setResult($_ALTER);./
    Keyword ::= a r r a y /.$setResult($_ARRAY);./
    Keyword ::= b t r i m /.$setResult($_BTRIM);./
    Keyword ::= b y t e s /.$setResult($_BYTES);./
    Keyword ::= c l e a r /.$setResult($_CLEAR);./
    Keyword ::= c l o n e /.$setResult($_CLONE);./
    Keyword ::= c l o s e /.$setResult($_CLOSE);./
    Keyword ::= c o u n t /.$setResult($_COUNT);./
    Keyword ::= e d g e s /.$setResult($_EDGES);./
    Keyword ::= e x a c t /.$setResult($_EXACT);./
    Keyword ::= f i r s t /.$setResult($_FIRST);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= f l o o r /.$setResult($_FLOOR);./
    Keyword ::= g r a n t /.$setResult($_GRANT);./
    Keyword ::= g r a p h /.$setResult($_GRAPH);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= i n t 1 6 /.$setResult($_INT16);./
    Keyword ::= i n t 3 2 /.$setResult($_INT32);./
    Keyword ::= i n t 6 4 /.$setResult($_INT64);./
    Keyword ::= l a b e l /.$setResult($_LABEL);./
    Keyword ::= l i m i t /.$setResult($_LIMIT);./
    Keyword ::= l o c a l /.$setResult($_LOCAL);./
    Keyword ::= l o g 1 0 /.$setResult($_LOG10);./
    Keyword ::= l o w e r /.$setResult($_LOWER);./
    Keyword ::= l t r i m /.$setResult($_LTRIM);./
    Keyword ::= m a t c h /.$setResult($_MATCH);./
    Keyword ::= m o n t h /.$setResult($_MONTH);./
    Keyword ::= n u l l s /.$setResult($_NULLS);./
    Keyword ::= o r d e r /.$setResult($_ORDER);./
    Keyword ::= p a t h s /.$setResult($_PATHS);./
    Keyword ::= p o w e r /.$setResult($_POWER);./
    Keyword ::= q u e r y /.$setResult($_QUERY);./
    Keyword ::= r e s e t /.$setResult($_RESET);./
    Keyword ::= r i g h t /.$setResult($_RIGHT);./
    Keyword ::= r t r i m /.$setResult($_RTRIM);./
    Keyword ::= s m a l l /.$setResult($_SMALL);./
    Keyword ::= s t a r t /.$setResult($_START);./
    Keyword ::= t a b l e /.$setResult($_TABLE);./
    Keyword ::= t r a i l /.$setResult($_TRAIL);./
    Keyword ::= t y p e d /.$setResult($_TYPED);./
    Keyword ::= u i n t 8 /.$setResult($_UINT8);./
    Keyword ::= u n i o n /.$setResult($_UNION);./
    Keyword ::= u p p e r /.$setResult($_UPPER);./
    Keyword ::= v a l u e /.$setResult($_VALUE);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= w r i t e /.$setResult($_WRITE);./
    Keyword ::= y i e l d /.$setResult($_YIELD);./
    Keyword ::= z o n e d /.$setResult($_ZONED);./
    Keyword ::= a c o s /.$setResult($_ACOS);./
    Keyword ::= a s i n /.$setResult($_ASIN);./
    Keyword ::= a t a n /.$setResult($_ATAN);./
    Keyword ::= b o o l /.$setResult($_BOOL);./
    Keyword ::= b o t h /.$setResult($_BOTH);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c a s t /.$setResult($_CAST);./
    Keyword ::= c e i l /.$setResult($_CEIL);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= c o p y /.$setResult($_COPY);./
    Keyword ::= c o s h /.$setResult($_COSH);./
    Keyword ::= d a t a /.$setResult($_DATA);./
    Keyword ::= d a t e /.$setResult($_DATE);./
    Keyword ::= d e s c /.$setResult($_DESC);./
    Keyword ::= d r o p /.$setResult($_DROP);./
    Keyword ::= e d g e /.$setResult($_EDGE);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= h o u r /.$setResult($_HOUR);./
    Keyword ::= i n t 8 /.$setResult($_INT8);./
    Keyword ::= k e e p /.$setResult($_KEEP);./
    Keyword ::= l a s t /.$setResult($_LAST);./
    Keyword ::= l e f t /.$setResult($_LEFT);./
    Keyword ::= l i k e /.$setResult($_LIKE);./
    Keyword ::= l i s t /.$setResult($_LIST);./
    Keyword ::= n e x t /.$setResult($_NEXT);./
    Keyword ::= n f k c /.$setResult($_NFKC);./
    Keyword ::= n f k d /.$setResult($_NFKD);./
    Keyword ::= n o d e /.$setResult($_NODE);./
    Keyword ::= n u l l /.$setResult($_NULL_KW);./
    Keyword ::= o n l y /.$setResult($_ONLY);./
    Keyword ::= o p e n /.$setResult($_OPEN);./
    Keyword ::= p a t h /.$setResult($_PATH);./
    Keyword ::= r e a d /.$setResult($_READ);./
    Keyword ::= r e a l /.$setResult($_REAL);./
    Keyword ::= s a m e /.$setResult($_SAME);./
    Keyword ::= s i n h /.$setResult($_SINH);./
    Keyword ::= s i z e /.$setResult($_SIZE);./
    Keyword ::= s k i p /.$setResult($_SKIP_RESERVED_WORD);./
    Keyword ::= s q r t /.$setResult($_SQRT);./
    Keyword ::= t a n h /.$setResult($_TANH);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t i m e /.$setResult($_TIME);./
    Keyword ::= t r i m /.$setResult($_TRIM);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= u i n t /.$setResult($_UINT);./
    Keyword ::= u n i t /.$setResult($_UNIT);./
    Keyword ::= w a l k /.$setResult($_WALK);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= y e a r /.$setResult($_YEAR);./
    Keyword ::= z o n e /.$setResult($_ZONE);./
    Keyword ::= a b s /.$setResult($_ABS);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= a s c /.$setResult($_ASC);./
    Keyword ::= a v g /.$setResult($_AVG);./
    Keyword ::= b i g /.$setResult($_BIG);./
    Keyword ::= c o s /.$setResult($_COS);./
    Keyword ::= c o t /.$setResult($_COT);./
    Keyword ::= d a y /.$setResult($_DAY);./
    Keyword ::= d e c /.$setResult($_DEC);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= e x p /.$setResult($_EXP);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= l e t /.$setResult($_LET);./
    Keyword ::= l o g /.$setResult($_LOG_KW);./
    Keyword ::= m a x /.$setResult($_MAX);./
    Keyword ::= m i n /.$setResult($_MIN);./
    Keyword ::= m o d /.$setResult($_MOD);./
    Keyword ::= n f c /.$setResult($_NFC);./
    Keyword ::= n f d /.$setResult($_NFD);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= s i n /.$setResult($_SIN);./
    Keyword ::= s u m /.$setResult($_SUM);./
    Keyword ::= t a n /.$setResult($_TAN);./
    Keyword ::= u s e /.$setResult($_USE);./
    Keyword ::= x o r /.$setResult($_XOR);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= a t /.$setResult($_AT);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= l n /.$setResult($_LN);./
    Keyword ::= n o /.$setResult($_NO);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
