-- Keyword filter for SqlPostgresql (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.sql.postgresql
%options template=KeywordTemplateF.gi
%options fp=SqlPostgresqlKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ABORT_P
    ABSENT
    ABSOLUTE_P
    ACCESS
    ACTION
    ADD_P
    ADMIN
    AFTER
    AGGREGATE
    ALL
    ALSO
    ALTER
    ALWAYS
    ANALYSE
    ANALYZE
    AND
    ANY
    ARRAY
    AS
    ASC
    ASENSITIVE
    ASSERT
    ASSERTION
    ASSIGNMENT
    ASYMMETRIC
    AT
    ATOMIC
    ATTACH
    ATTRIBUTE
    AUTHORIZATION
    BACKWARD
    BEFORE
    BEGIN_P
    BETWEEN
    BIGINT
    BINARY
    BIT
    BOOLEAN_P
    BOTH
    BREADTH
    BY
    CACHE
    CALL
    CALLED
    CASCADE
    CASCADED
    CASE
    CAST
    CATALOG
    CHAIN
    CHARACTER
    CHARACTERISTICS
    CHAR_P
    CHECK
    CHECKPOINT
    CLASS
    CLOSE
    CLUSTER
    COALESCE
    COLLATE
    COLLATION
    COLUMN
    COLUMNS
    COMMENT
    COMMENTS
    COMMIT
    COMMITTED
    COMPRESSION
    CONCURRENTLY
    CONDITIONAL
    CONFIGURATION
    CONFLICT
    CONNECTION
    CONSTANT
    CONSTRAINT
    CONSTRAINTS
    CONTENT_P
    CONTINUE_P
    CONVERSION_P
    COPY
    COST
    CREATE
    CROSS
    CSV
    CUBE
    CURRENT_P
    CURSOR
    CYCLE
    DATABASE
    DATA_P
    DAY_P
    DEALLOCATE
    DEBUG
    DEC
    DECIMAL_P
    DECLARE
    DEFAULT
    DEFAULTS
    DEFERRABLE
    DEFERRED
    DEFINER
    DELETE_P
    DELIMITER
    DELIMITERS
    DEPENDS
    DEPTH
    DESC
    DETACH
    DIAGNOSTICS
    DICTIONARY
    DISABLE_P
    DISCARD
    DISTINCT
    DO
    DOCUMENT_P
    DOMAIN_P
    DOUBLE_P
    DROP
    DUMP
    EACH
    ELSE
    ELSIF
    EMPTY_P
    ENABLE_P
    ENCODING
    ENCRYPTED
    END_P
    ENUM_P
    ERROR
    ESCAPE
    EVENT
    EXCEPT
    EXCEPTION
    EXCLUDE
    EXCLUDING
    EXCLUSIVE
    EXECUTE
    EXISTS
    EXIT
    EXPLAIN
    EXPRESSION
    EXTENSION
    EXTERNAL
    EXTRACT
    FALSE_P
    FAMILY
    FETCH
    FILTER
    FINALIZE
    FIRST_P
    FLOAT_P
    FOLLOWING
    FOR
    FORCE
    FOREACH
    FOREIGN
    FORMAT
    FORWARD
    FREEZE
    FROM
    FULL
    FUNCTION
    FUNCTIONS
    GENERATED
    GET
    GLOBAL
    GRANT
    GRANTED
    GREATEST
    GROUPING
    GROUPS
    GROUP_P
    HANDLER
    HAVING
    HEADER_P
    HOLD
    HOUR_P
    IDENTITY_P
    IF_P
    ILIKE
    IMMEDIATE
    IMMUTABLE
    IMPLICIT_P
    IMPORT_P
    INCLUDE
    INCLUDING
    INCREMENT
    INDENT
    INDEX
    INDEXES
    INFO
    INHERIT
    INHERITS
    INITIALLY
    INLINE_P
    INNER_P
    INOUT
    INPUT_P
    INSENSITIVE
    INSERT
    INSTEAD
    INTEGER
    INTERSECT
    INTERVAL
    INTO
    INT_P
    INVOKER
    IN_P
    IS
    ISNULL
    ISOLATION
    JOIN
    JSON
    KEEP
    KEY
    KEYS
    LABEL
    LANGUAGE
    LARGE_P
    LAST_P
    LATERAL_P
    LEADING
    LEAKPROOF
    LEAST
    LEFT
    LEVEL
    LIKE
    LIMIT
    LISTEN
    LOAD
    LOCAL
    LOCALTIME
    LOCALTIMESTAMP
    LOCATION
    LOCKED
    LOCK_P
    LOGGED
    LOOP
    MAPPING
    MATCH
    MATCHED
    MATERIALIZED
    MAXVALUE
    MERGE
    METHOD
    MINUTE_P
    MINVALUE
    MODE
    MONTH_P
    MOVE
    NAMES
    NAME_P
    NATIONAL
    NATURAL
    NCHAR
    NESTED
    NEW
    NEXT
    NFC
    NFD
    NFKC
    NFKD
    NO
    NONE
    NORMALIZE
    NORMALIZED
    NOT
    NOTHING
    NOTICE
    NOTIFY
    NOTNULL
    NOWAIT
    NULLIF
    NULLS_P
    NULL_P
    NUMERIC
    OBJECT_P
    OF
    OFF
    OFFSET
    OIDS
    OLD
    OMIT
    ON
    ONLY
    OPEN
    OPERATOR
    OPTION
    OPTIONS
    OR
    ORDER
    ORDINALITY
    OTHERS
    OUTER_P
    OUT_P
    OVER
    OVERLAPS
    OVERLAY
    OVERRIDING
    OWNED
    OWNER
    PARALLEL
    PARAMETER
    PARSER
    PARTIAL
    PARTITION
    PASSING
    PASSWORD
    PATH
    PERFORM
    PERIOD
    PLACING
    PLAN
    PLANS
    POLICY
    POSITION
    PRECEDING
    PRECISION
    PREPARE
    PREPARED
    PRESERVE
    PRIMARY
    PRIOR
    PRIVILEGES
    PROCEDURAL
    PROCEDURE
    PROCEDURES
    PROGRAM
    PUBLICATION
    QUOTE
    QUOTES
    RAISE
    RANGE
    READ
    REAL
    REASSIGN
    RECHECK
    RECURSIVE
    REF
    REFERENCES
    REFERENCING
    REFRESH
    REINDEX
    RELATIVE_P
    RELEASE
    RENAME
    REPEATABLE
    REPLACE
    REPLICA
    RESET
    RESTART
    RESTRICT
    RETURN
    RETURNING
    RETURNS
    REVOKE
    RIGHT
    ROLE
    ROLLBACK
    ROLLUP
    ROUTINE
    ROUTINES
    ROW
    ROWS
    ROWTYPE
    RULE
    SAVEPOINT
    SCALAR
    SCHEMA
    SCHEMAS
    SCROLL
    SEARCH
    SECOND_P
    SECURITY
    SELECT
    SEQUENCE
    SEQUENCES
    SERIALIZABLE
    SERVER
    SESSION
    SET
    SETOF
    SETS
    SHARE
    SHOW
    SIMILAR
    SIMPLE
    SKIP_P
    SLICE
    SMALLINT
    SNAPSHOT
    SOME
    SOURCE
    SQLSTATE
    SQL_P
    STABLE
    STACKED
    STANDALONE_P
    START
    STATEMENT
    STATISTICS
    STDIN
    STDOUT
    STORAGE
    STORED
    STRICT_P
    STRING_P
    STRIP_P
    SUBSCRIPTION
    SUBSTRING
    SUPPORT
    SYMMETRIC
    SYSID
    SYSTEM_P
    TABLE
    TABLES
    TABLESAMPLE
    TABLESPACE
    TARGET
    TEMP
    TEMPLATE
    TEMPORARY
    TEXT_P
    THEN
    TIES
    TIME
    TIMESTAMP
    TO
    TRAILING
    TRANSACTION
    TRANSFORM
    TREAT
    TRIGGER
    TRIM
    TRUE_P
    TRUNCATE
    TRUSTED
    TYPES_P
    TYPE_P
    UESCAPE
    UNBOUNDED
    UNCOMMITTED
    UNCONDITIONAL
    UNENCRYPTED
    UNION
    UNIQUE
    UNKNOWN
    UNLISTEN
    UNLOGGED
    UNTIL
    UPDATE
    USER
    USING
    VACUUM
    VALID
    VALIDATE
    VALIDATOR
    VALUES
    VALUE_P
    VARCHAR
    VARIADIC
    VARYING
    VERBOSE
    VERSION_P
    VIEW
    VIEWS
    VOLATILE
    WARNING
    WHEN
    WHERE
    WHILE
    WHITESPACE_P
    WINDOW
    WITH
    WITHIN
    WITHOUT
    WORK
    WRAPPER
    WRITE
    XMLAGG
    XMLATTRIBUTES
    XMLCOMMENT
    XMLCONCAT
    XMLELEMENT
    XMLEXISTS
    XMLFOREST
    XMLNAMESPACES
    XMLPARSE
    XMLPI
    XMLROOT
    XMLSERIALIZE
    XMLTABLE
    XML_P
    XPATH
    YEAR_P
    YES_P
    ZONE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= c h a r a c t e r i s t i c s /.$setResult($_CHARACTERISTICS);./
    Keyword ::= l o c a l t i m e s t a m p /.$setResult($_LOCALTIMESTAMP);./
    Keyword ::= a u t h o r i z a t i o n /.$setResult($_AUTHORIZATION);./
    Keyword ::= c o n f i g u r a t i o n /.$setResult($_CONFIGURATION);./
    Keyword ::= u n c o n d i t i o n a l /.$setResult($_UNCONDITIONAL);./
    Keyword ::= x m l a t t r i b u t e s /.$setResult($_XMLATTRIBUTES);./
    Keyword ::= x m l n a m e s p a c e s /.$setResult($_XMLNAMESPACES);./
    Keyword ::= c o n c u r r e n t l y /.$setResult($_CONCURRENTLY);./
    Keyword ::= m a t e r i a l i z e d /.$setResult($_MATERIALIZED);./
    Keyword ::= s e r i a l i z a b l e /.$setResult($_SERIALIZABLE);./
    Keyword ::= s u b s c r i p t i o n /.$setResult($_SUBSCRIPTION);./
    Keyword ::= x m l s e r i a l i z e /.$setResult($_XMLSERIALIZE);./
    Keyword ::= c o m p r e s s i o n /.$setResult($_COMPRESSION);./
    Keyword ::= c o n d i t i o n a l /.$setResult($_CONDITIONAL);./
    Keyword ::= c o n s t r a i n t s /.$setResult($_CONSTRAINTS);./
    Keyword ::= d i a g n o s t i c s /.$setResult($_DIAGNOSTICS);./
    Keyword ::= i n s e n s i t i v e /.$setResult($_INSENSITIVE);./
    Keyword ::= p u b l i c a t i o n /.$setResult($_PUBLICATION);./
    Keyword ::= r e f e r e n c i n g /.$setResult($_REFERENCING);./
    Keyword ::= t a b l e s a m p l e /.$setResult($_TABLESAMPLE);./
    Keyword ::= t r a n s a c t i o n /.$setResult($_TRANSACTION);./
    Keyword ::= u n c o m m i t t e d /.$setResult($_UNCOMMITTED);./
    Keyword ::= u n e n c r y p t e d /.$setResult($_UNENCRYPTED);./
    Keyword ::= a s e n s i t i v e /.$setResult($_ASENSITIVE);./
    Keyword ::= a s s i g n m e n t /.$setResult($_ASSIGNMENT);./
    Keyword ::= a s y m m e t r i c /.$setResult($_ASYMMETRIC);./
    Keyword ::= c h e c k p o i n t /.$setResult($_CHECKPOINT);./
    Keyword ::= c o n n e c t i o n /.$setResult($_CONNECTION);./
    Keyword ::= c o n s t r a i n t /.$setResult($_CONSTRAINT);./
    Keyword ::= c o n v e r s i o n /.$setResult($_CONVERSION_P);./
    Keyword ::= d e a l l o c a t e /.$setResult($_DEALLOCATE);./
    Keyword ::= d e f e r r a b l e /.$setResult($_DEFERRABLE);./
    Keyword ::= d e l i m i t e r s /.$setResult($_DELIMITERS);./
    Keyword ::= d i c t i o n a r y /.$setResult($_DICTIONARY);./
    Keyword ::= e x p r e s s i o n /.$setResult($_EXPRESSION);./
    Keyword ::= n o r m a l i z e d /.$setResult($_NORMALIZED);./
    Keyword ::= o r d i n a l i t y /.$setResult($_ORDINALITY);./
    Keyword ::= o v e r r i d i n g /.$setResult($_OVERRIDING);./
    Keyword ::= p r i v i l e g e s /.$setResult($_PRIVILEGES);./
    Keyword ::= p r o c e d u r a l /.$setResult($_PROCEDURAL);./
    Keyword ::= p r o c e d u r e s /.$setResult($_PROCEDURES);./
    Keyword ::= r e f e r e n c e s /.$setResult($_REFERENCES);./
    Keyword ::= r e p e a t a b l e /.$setResult($_REPEATABLE);./
    Keyword ::= s t a n d a l o n e /.$setResult($_STANDALONE_P);./
    Keyword ::= s t a t i s t i c s /.$setResult($_STATISTICS);./
    Keyword ::= t a b l e s p a c e /.$setResult($_TABLESPACE);./
    Keyword ::= w h i t e s p a c e /.$setResult($_WHITESPACE_P);./
    Keyword ::= x m l c o m m e n t /.$setResult($_XMLCOMMENT);./
    Keyword ::= x m l e l e m e n t /.$setResult($_XMLELEMENT);./
    Keyword ::= a g g r e g a t e /.$setResult($_AGGREGATE);./
    Keyword ::= a s s e r t i o n /.$setResult($_ASSERTION);./
    Keyword ::= a t t r i b u t e /.$setResult($_ATTRIBUTE);./
    Keyword ::= c h a r a c t e r /.$setResult($_CHARACTER);./
    Keyword ::= c o l l a t i o n /.$setResult($_COLLATION);./
    Keyword ::= c o m m i t t e d /.$setResult($_COMMITTED);./
    Keyword ::= d e l i m i t e r /.$setResult($_DELIMITER);./
    Keyword ::= e n c r y p t e d /.$setResult($_ENCRYPTED);./
    Keyword ::= e x c e p t i o n /.$setResult($_EXCEPTION);./
    Keyword ::= e x c l u d i n g /.$setResult($_EXCLUDING);./
    Keyword ::= e x c l u s i v e /.$setResult($_EXCLUSIVE);./
    Keyword ::= e x t e n s i o n /.$setResult($_EXTENSION);./
    Keyword ::= f o l l o w i n g /.$setResult($_FOLLOWING);./
    Keyword ::= f u n c t i o n s /.$setResult($_FUNCTIONS);./
    Keyword ::= g e n e r a t e d /.$setResult($_GENERATED);./
    Keyword ::= i m m e d i a t e /.$setResult($_IMMEDIATE);./
    Keyword ::= i m m u t a b l e /.$setResult($_IMMUTABLE);./
    Keyword ::= i n c l u d i n g /.$setResult($_INCLUDING);./
    Keyword ::= i n c r e m e n t /.$setResult($_INCREMENT);./
    Keyword ::= i n i t i a l l y /.$setResult($_INITIALLY);./
    Keyword ::= i n t e r s e c t /.$setResult($_INTERSECT);./
    Keyword ::= i s o l a t i o n /.$setResult($_ISOLATION);./
    Keyword ::= l e a k p r o o f /.$setResult($_LEAKPROOF);./
    Keyword ::= l o c a l t i m e /.$setResult($_LOCALTIME);./
    Keyword ::= n o r m a l i z e /.$setResult($_NORMALIZE);./
    Keyword ::= p a r a m e t e r /.$setResult($_PARAMETER);./
    Keyword ::= p a r t i t i o n /.$setResult($_PARTITION);./
    Keyword ::= p r e c e d i n g /.$setResult($_PRECEDING);./
    Keyword ::= p r e c i s i o n /.$setResult($_PRECISION);./
    Keyword ::= p r o c e d u r e /.$setResult($_PROCEDURE);./
    Keyword ::= r e c u r s i v e /.$setResult($_RECURSIVE);./
    Keyword ::= r e t u r n i n g /.$setResult($_RETURNING);./
    Keyword ::= s a v e p o i n t /.$setResult($_SAVEPOINT);./
    Keyword ::= s e q u e n c e s /.$setResult($_SEQUENCES);./
    Keyword ::= s t a t e m e n t /.$setResult($_STATEMENT);./
    Keyword ::= s u b s t r i n g /.$setResult($_SUBSTRING);./
    Keyword ::= s y m m e t r i c /.$setResult($_SYMMETRIC);./
    Keyword ::= t e m p o r a r y /.$setResult($_TEMPORARY);./
    Keyword ::= t i m e s t a m p /.$setResult($_TIMESTAMP);./
    Keyword ::= t r a n s f o r m /.$setResult($_TRANSFORM);./
    Keyword ::= u n b o u n d e d /.$setResult($_UNBOUNDED);./
    Keyword ::= v a l i d a t o r /.$setResult($_VALIDATOR);./
    Keyword ::= x m l c o n c a t /.$setResult($_XMLCONCAT);./
    Keyword ::= x m l e x i s t s /.$setResult($_XMLEXISTS);./
    Keyword ::= x m l f o r e s t /.$setResult($_XMLFOREST);./
    Keyword ::= a b s o l u t e /.$setResult($_ABSOLUTE_P);./
    Keyword ::= b a c k w a r d /.$setResult($_BACKWARD);./
    Keyword ::= c a s c a d e d /.$setResult($_CASCADED);./
    Keyword ::= c o a l e s c e /.$setResult($_COALESCE);./
    Keyword ::= c o m m e n t s /.$setResult($_COMMENTS);./
    Keyword ::= c o n f l i c t /.$setResult($_CONFLICT);./
    Keyword ::= c o n s t a n t /.$setResult($_CONSTANT);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE_P);./
    Keyword ::= d a t a b a s e /.$setResult($_DATABASE);./
    Keyword ::= d e f a u l t s /.$setResult($_DEFAULTS);./
    Keyword ::= d e f e r r e d /.$setResult($_DEFERRED);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT);./
    Keyword ::= d o c u m e n t /.$setResult($_DOCUMENT_P);./
    Keyword ::= e n c o d i n g /.$setResult($_ENCODING);./
    Keyword ::= e x t e r n a l /.$setResult($_EXTERNAL);./
    Keyword ::= f i n a l i z e /.$setResult($_FINALIZE);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= g r e a t e s t /.$setResult($_GREATEST);./
    Keyword ::= g r o u p i n g /.$setResult($_GROUPING);./
    Keyword ::= i d e n t i t y /.$setResult($_IDENTITY_P);./
    Keyword ::= i m p l i c i t /.$setResult($_IMPLICIT_P);./
    Keyword ::= i n h e r i t s /.$setResult($_INHERITS);./
    Keyword ::= i n t e r v a l /.$setResult($_INTERVAL);./
    Keyword ::= l a n g u a g e /.$setResult($_LANGUAGE);./
    Keyword ::= l o c a t i o n /.$setResult($_LOCATION);./
    Keyword ::= m a x v a l u e /.$setResult($_MAXVALUE);./
    Keyword ::= m i n v a l u e /.$setResult($_MINVALUE);./
    Keyword ::= n a t i o n a l /.$setResult($_NATIONAL);./
    Keyword ::= o p e r a t o r /.$setResult($_OPERATOR);./
    Keyword ::= o v e r l a p s /.$setResult($_OVERLAPS);./
    Keyword ::= p a r a l l e l /.$setResult($_PARALLEL);./
    Keyword ::= p a s s w o r d /.$setResult($_PASSWORD);./
    Keyword ::= p o s i t i o n /.$setResult($_POSITION);./
    Keyword ::= p r e p a r e d /.$setResult($_PREPARED);./
    Keyword ::= p r e s e r v e /.$setResult($_PRESERVE);./
    Keyword ::= r e a s s i g n /.$setResult($_REASSIGN);./
    Keyword ::= r e l a t i v e /.$setResult($_RELATIVE_P);./
    Keyword ::= r e s t r i c t /.$setResult($_RESTRICT);./
    Keyword ::= r o l l b a c k /.$setResult($_ROLLBACK);./
    Keyword ::= r o u t i n e s /.$setResult($_ROUTINES);./
    Keyword ::= s e c u r i t y /.$setResult($_SECURITY);./
    Keyword ::= s e q u e n c e /.$setResult($_SEQUENCE);./
    Keyword ::= s m a l l i n t /.$setResult($_SMALLINT);./
    Keyword ::= s n a p s h o t /.$setResult($_SNAPSHOT);./
    Keyword ::= s q l s t a t e /.$setResult($_SQLSTATE);./
    Keyword ::= t e m p l a t e /.$setResult($_TEMPLATE);./
    Keyword ::= t r a i l i n g /.$setResult($_TRAILING);./
    Keyword ::= t r u n c a t e /.$setResult($_TRUNCATE);./
    Keyword ::= u n l i s t e n /.$setResult($_UNLISTEN);./
    Keyword ::= u n l o g g e d /.$setResult($_UNLOGGED);./
    Keyword ::= v a l i d a t e /.$setResult($_VALIDATE);./
    Keyword ::= v a r i a d i c /.$setResult($_VARIADIC);./
    Keyword ::= v o l a t i l e /.$setResult($_VOLATILE);./
    Keyword ::= x m l p a r s e /.$setResult($_XMLPARSE);./
    Keyword ::= x m l t a b l e /.$setResult($_XMLTABLE);./
    Keyword ::= a n a l y s e /.$setResult($_ANALYSE);./
    Keyword ::= a n a l y z e /.$setResult($_ANALYZE);./
    Keyword ::= b e t w e e n /.$setResult($_BETWEEN);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN_P);./
    Keyword ::= c a s c a d e /.$setResult($_CASCADE);./
    Keyword ::= c a t a l o g /.$setResult($_CATALOG);./
    Keyword ::= c l u s t e r /.$setResult($_CLUSTER);./
    Keyword ::= c o l l a t e /.$setResult($_COLLATE);./
    Keyword ::= c o l u m n s /.$setResult($_COLUMNS);./
    Keyword ::= c o m m e n t /.$setResult($_COMMENT);./
    Keyword ::= c o n t e n t /.$setResult($_CONTENT_P);./
    Keyword ::= c u r r e n t /.$setResult($_CURRENT_P);./
    Keyword ::= d e c i m a l /.$setResult($_DECIMAL_P);./
    Keyword ::= d e c l a r e /.$setResult($_DECLARE);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= d e f i n e r /.$setResult($_DEFINER);./
    Keyword ::= d e p e n d s /.$setResult($_DEPENDS);./
    Keyword ::= d i s a b l e /.$setResult($_DISABLE_P);./
    Keyword ::= d i s c a r d /.$setResult($_DISCARD);./
    Keyword ::= e x c l u d e /.$setResult($_EXCLUDE);./
    Keyword ::= e x e c u t e /.$setResult($_EXECUTE);./
    Keyword ::= e x p l a i n /.$setResult($_EXPLAIN);./
    Keyword ::= e x t r a c t /.$setResult($_EXTRACT);./
    Keyword ::= f o r e a c h /.$setResult($_FOREACH);./
    Keyword ::= f o r e i g n /.$setResult($_FOREIGN);./
    Keyword ::= f o r w a r d /.$setResult($_FORWARD);./
    Keyword ::= g r a n t e d /.$setResult($_GRANTED);./
    Keyword ::= h a n d l e r /.$setResult($_HANDLER);./
    Keyword ::= i n c l u d e /.$setResult($_INCLUDE);./
    Keyword ::= i n d e x e s /.$setResult($_INDEXES);./
    Keyword ::= i n h e r i t /.$setResult($_INHERIT);./
    Keyword ::= i n s t e a d /.$setResult($_INSTEAD);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= i n v o k e r /.$setResult($_INVOKER);./
    Keyword ::= l a t e r a l /.$setResult($_LATERAL_P);./
    Keyword ::= l e a d i n g /.$setResult($_LEADING);./
    Keyword ::= m a p p i n g /.$setResult($_MAPPING);./
    Keyword ::= m a t c h e d /.$setResult($_MATCHED);./
    Keyword ::= n a t u r a l /.$setResult($_NATURAL);./
    Keyword ::= n o t h i n g /.$setResult($_NOTHING);./
    Keyword ::= n o t n u l l /.$setResult($_NOTNULL);./
    Keyword ::= n u m e r i c /.$setResult($_NUMERIC);./
    Keyword ::= o p t i o n s /.$setResult($_OPTIONS);./
    Keyword ::= o v e r l a y /.$setResult($_OVERLAY);./
    Keyword ::= p a r t i a l /.$setResult($_PARTIAL);./
    Keyword ::= p a s s i n g /.$setResult($_PASSING);./
    Keyword ::= p e r f o r m /.$setResult($_PERFORM);./
    Keyword ::= p l a c i n g /.$setResult($_PLACING);./
    Keyword ::= p r e p a r e /.$setResult($_PREPARE);./
    Keyword ::= p r i m a r y /.$setResult($_PRIMARY);./
    Keyword ::= p r o g r a m /.$setResult($_PROGRAM);./
    Keyword ::= r e c h e c k /.$setResult($_RECHECK);./
    Keyword ::= r e f r e s h /.$setResult($_REFRESH);./
    Keyword ::= r e i n d e x /.$setResult($_REINDEX);./
    Keyword ::= r e l e a s e /.$setResult($_RELEASE);./
    Keyword ::= r e p l a c e /.$setResult($_REPLACE);./
    Keyword ::= r e p l i c a /.$setResult($_REPLICA);./
    Keyword ::= r e s t a r t /.$setResult($_RESTART);./
    Keyword ::= r e t u r n s /.$setResult($_RETURNS);./
    Keyword ::= r o u t i n e /.$setResult($_ROUTINE);./
    Keyword ::= r o w t y p e /.$setResult($_ROWTYPE);./
    Keyword ::= s c h e m a s /.$setResult($_SCHEMAS);./
    Keyword ::= s e s s i o n /.$setResult($_SESSION);./
    Keyword ::= s i m i l a r /.$setResult($_SIMILAR);./
    Keyword ::= s t a c k e d /.$setResult($_STACKED);./
    Keyword ::= s t o r a g e /.$setResult($_STORAGE);./
    Keyword ::= s u p p o r t /.$setResult($_SUPPORT);./
    Keyword ::= t r i g g e r /.$setResult($_TRIGGER);./
    Keyword ::= t r u s t e d /.$setResult($_TRUSTED);./
    Keyword ::= u e s c a p e /.$setResult($_UESCAPE);./
    Keyword ::= u n k n o w n /.$setResult($_UNKNOWN);./
    Keyword ::= v a r c h a r /.$setResult($_VARCHAR);./
    Keyword ::= v a r y i n g /.$setResult($_VARYING);./
    Keyword ::= v e r b o s e /.$setResult($_VERBOSE);./
    Keyword ::= v e r s i o n /.$setResult($_VERSION_P);./
    Keyword ::= w a r n i n g /.$setResult($_WARNING);./
    Keyword ::= w i t h o u t /.$setResult($_WITHOUT);./
    Keyword ::= w r a p p e r /.$setResult($_WRAPPER);./
    Keyword ::= x m l r o o t /.$setResult($_XMLROOT);./
    Keyword ::= a b s e n t /.$setResult($_ABSENT);./
    Keyword ::= a c c e s s /.$setResult($_ACCESS);./
    Keyword ::= a c t i o n /.$setResult($_ACTION);./
    Keyword ::= a l w a y s /.$setResult($_ALWAYS);./
    Keyword ::= a s s e r t /.$setResult($_ASSERT);./
    Keyword ::= a t o m i c /.$setResult($_ATOMIC);./
    Keyword ::= a t t a c h /.$setResult($_ATTACH);./
    Keyword ::= b e f o r e /.$setResult($_BEFORE);./
    Keyword ::= b i g i n t /.$setResult($_BIGINT);./
    Keyword ::= b i n a r y /.$setResult($_BINARY);./
    Keyword ::= b r e a t h /.$setResult($_BREADTH);./
    Keyword ::= c a l l e d /.$setResult($_CALLED);./
    Keyword ::= c o l u m n /.$setResult($_COLUMN);./
    Keyword ::= c o m m i t /.$setResult($_COMMIT);./
    Keyword ::= c r e a t e /.$setResult($_CREATE);./
    Keyword ::= c u r s o r /.$setResult($_CURSOR);./
    Keyword ::= d e l e t e /.$setResult($_DELETE_P);./
    Keyword ::= d e t a c h /.$setResult($_DETACH);./
    Keyword ::= d o m a i n /.$setResult($_DOMAIN_P);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE_P);./
    Keyword ::= e n a b l e /.$setResult($_ENABLE_P);./
    Keyword ::= e s c a p e /.$setResult($_ESCAPE);./
    Keyword ::= e x c e p t /.$setResult($_EXCEPT);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS);./
    Keyword ::= f a m i l y /.$setResult($_FAMILY);./
    Keyword ::= f i l t e r /.$setResult($_FILTER);./
    Keyword ::= f o r m a t /.$setResult($_FORMAT);./
    Keyword ::= f r e e z e /.$setResult($_FREEZE);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= g r o u p s /.$setResult($_GROUPS);./
    Keyword ::= h a v i n g /.$setResult($_HAVING);./
    Keyword ::= h e a d e r /.$setResult($_HEADER_P);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT_P);./
    Keyword ::= i n d e n t /.$setResult($_INDENT);./
    Keyword ::= i n l i n e /.$setResult($_INLINE_P);./
    Keyword ::= i n s e r t /.$setResult($_INSERT);./
    Keyword ::= i s n u l l /.$setResult($_ISNULL);./
    Keyword ::= l i s t e n /.$setResult($_LISTEN);./
    Keyword ::= l o c k e d /.$setResult($_LOCKED);./
    Keyword ::= l o g g e d /.$setResult($_LOGGED);./
    Keyword ::= m e t h o d /.$setResult($_METHOD);./
    Keyword ::= m i n u t e /.$setResult($_MINUTE_P);./
    Keyword ::= n e s t e d /.$setResult($_NESTED);./
    Keyword ::= n o t i c e /.$setResult($_NOTICE);./
    Keyword ::= n o t i f y /.$setResult($_NOTIFY);./
    Keyword ::= n o w a i t /.$setResult($_NOWAIT);./
    Keyword ::= n u l l i f /.$setResult($_NULLIF);./
    Keyword ::= o b j e c t /.$setResult($_OBJECT_P);./
    Keyword ::= o f f s e t /.$setResult($_OFFSET);./
    Keyword ::= o p t i o n /.$setResult($_OPTION);./
    Keyword ::= o t h e r s /.$setResult($_OTHERS);./
    Keyword ::= p a r s e r /.$setResult($_PARSER);./
    Keyword ::= p e r i o d /.$setResult($_PERIOD);./
    Keyword ::= p o l i c y /.$setResult($_POLICY);./
    Keyword ::= q u o t e s /.$setResult($_QUOTES);./
    Keyword ::= r e n a m e /.$setResult($_RENAME);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= r e v o k e /.$setResult($_REVOKE);./
    Keyword ::= r o l l u p /.$setResult($_ROLLUP);./
    Keyword ::= s c a l a r /.$setResult($_SCALAR);./
    Keyword ::= s c h e m a /.$setResult($_SCHEMA);./
    Keyword ::= s c r o l l /.$setResult($_SCROLL);./
    Keyword ::= s e a r c h /.$setResult($_SEARCH);./
    Keyword ::= s e c o n d /.$setResult($_SECOND_P);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s e r v e r /.$setResult($_SERVER);./
    Keyword ::= s i m p l e /.$setResult($_SIMPLE);./
    Keyword ::= s o u r c e /.$setResult($_SOURCE);./
    Keyword ::= s t a b l e /.$setResult($_STABLE);./
    Keyword ::= s t d o u t /.$setResult($_STDOUT);./
    Keyword ::= s t o r e d /.$setResult($_STORED);./
    Keyword ::= s t r i c t /.$setResult($_STRICT_P);./
    Keyword ::= s t r i n g /.$setResult($_STRING_P);./
    Keyword ::= s y s t e m /.$setResult($_SYSTEM_P);./
    Keyword ::= t a b l e s /.$setResult($_TABLES);./
    Keyword ::= t a r g e t /.$setResult($_TARGET);./
    Keyword ::= u n i q u e /.$setResult($_UNIQUE);./
    Keyword ::= u p d a t e /.$setResult($_UPDATE);./
    Keyword ::= v a c u u m /.$setResult($_VACUUM);./
    Keyword ::= v a l u e s /.$setResult($_VALUES);./
    Keyword ::= w i n d o w /.$setResult($_WINDOW);./
    Keyword ::= w i t h i n /.$setResult($_WITHIN);./
    Keyword ::= x m l a g g /.$setResult($_XMLAGG);./
    Keyword ::= a b o r t /.$setResult($_ABORT_P);./
    Keyword ::= a d m i n /.$setResult($_ADMIN);./
    Keyword ::= a f t e r /.$setResult($_AFTER);./
    Keyword ::= a l t e r /.$setResult($_ALTER);./
    Keyword ::= a r r a y /.$setResult($_ARRAY);./
    Keyword ::= b e g i n /.$setResult($_BEGIN_P);./
    Keyword ::= c a c h e /.$setResult($_CACHE);./
    Keyword ::= c h a i n /.$setResult($_CHAIN);./
    Keyword ::= c h e c k /.$setResult($_CHECK);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= c l o s e /.$setResult($_CLOSE);./
    Keyword ::= c r o s s /.$setResult($_CROSS);./
    Keyword ::= c y c l e /.$setResult($_CYCLE);./
    Keyword ::= d e b u g /.$setResult($_DEBUG);./
    Keyword ::= d e p t h /.$setResult($_DEPTH);./
    Keyword ::= e l s i f /.$setResult($_ELSIF);./
    Keyword ::= e m p t y /.$setResult($_EMPTY_P);./
    Keyword ::= e r r o r /.$setResult($_ERROR);./
    Keyword ::= e v e n t /.$setResult($_EVENT);./
    Keyword ::= f a l s e /.$setResult($_FALSE_P);./
    Keyword ::= f e t c h /.$setResult($_FETCH);./
    Keyword ::= f i r s t /.$setResult($_FIRST_P);./
    Keyword ::= f l o a t /.$setResult($_FLOAT_P);./
    Keyword ::= f o r c e /.$setResult($_FORCE);./
    Keyword ::= g r a n t /.$setResult($_GRANT);./
    Keyword ::= g r o u p /.$setResult($_GROUP_P);./
    Keyword ::= i l i k e /.$setResult($_ILIKE);./
    Keyword ::= i n d e x /.$setResult($_INDEX);./
    Keyword ::= i n n e r /.$setResult($_INNER_P);./
    Keyword ::= i n o u t /.$setResult($_INOUT);./
    Keyword ::= i n p u t /.$setResult($_INPUT_P);./
    Keyword ::= l a b e l /.$setResult($_LABEL);./
    Keyword ::= l a r g e /.$setResult($_LARGE_P);./
    Keyword ::= l e a s t /.$setResult($_LEAST);./
    Keyword ::= l e v e l /.$setResult($_LEVEL);./
    Keyword ::= l i m i t /.$setResult($_LIMIT);./
    Keyword ::= l o c a l /.$setResult($_LOCAL);./
    Keyword ::= m a t c h /.$setResult($_MATCH);./
    Keyword ::= m e r g e /.$setResult($_MERGE);./
    Keyword ::= m o n t h /.$setResult($_MONTH_P);./
    Keyword ::= n a m e s /.$setResult($_NAMES);./
    Keyword ::= n c h a r /.$setResult($_NCHAR);./
    Keyword ::= n u l l s /.$setResult($_NULLS_P);./
    Keyword ::= o r d e r /.$setResult($_ORDER);./
    Keyword ::= o u t e r /.$setResult($_OUTER_P);./
    Keyword ::= o w n e d /.$setResult($_OWNED);./
    Keyword ::= o w n e r /.$setResult($_OWNER);./
    Keyword ::= p l a n s /.$setResult($_PLANS);./
    Keyword ::= p r i o r /.$setResult($_PRIOR);./
    Keyword ::= q u o t e /.$setResult($_QUOTE);./
    Keyword ::= r a i s e /.$setResult($_RAISE);./
    Keyword ::= r a n g e /.$setResult($_RANGE);./
    Keyword ::= r e s e t /.$setResult($_RESET);./
    Keyword ::= r i g h t /.$setResult($_RIGHT);./
    Keyword ::= s e t o f /.$setResult($_SETOF);./
    Keyword ::= s h a r e /.$setResult($_SHARE);./
    Keyword ::= s l i c e /.$setResult($_SLICE);./
    Keyword ::= s t a r t /.$setResult($_START);./
    Keyword ::= s t d i n /.$setResult($_STDIN);./
    Keyword ::= s t r i p /.$setResult($_STRIP_P);./
    Keyword ::= s y s i d /.$setResult($_SYSID);./
    Keyword ::= t a b l e /.$setResult($_TABLE);./
    Keyword ::= t r e a t /.$setResult($_TREAT);./
    Keyword ::= t y p e s /.$setResult($_TYPES_P);./
    Keyword ::= u n i o n /.$setResult($_UNION);./
    Keyword ::= u n t i l /.$setResult($_UNTIL);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= v a l i d /.$setResult($_VALID);./
    Keyword ::= v a l u e /.$setResult($_VALUE_P);./
    Keyword ::= v i e w s /.$setResult($_VIEWS);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= w r i t e /.$setResult($_WRITE);./
    Keyword ::= x m l p i /.$setResult($_XMLPI);./
    Keyword ::= x p a t h /.$setResult($_XPATH);./
    Keyword ::= a l s o /.$setResult($_ALSO);./
    Keyword ::= b o t h /.$setResult($_BOTH);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c a s t /.$setResult($_CAST);./
    Keyword ::= c h a r /.$setResult($_CHAR_P);./
    Keyword ::= c o p y /.$setResult($_COPY);./
    Keyword ::= c o s t /.$setResult($_COST);./
    Keyword ::= c u b e /.$setResult($_CUBE);./
    Keyword ::= d a t a /.$setResult($_DATA_P);./
    Keyword ::= d e s c /.$setResult($_DESC);./
    Keyword ::= d r o p /.$setResult($_DROP);./
    Keyword ::= d u m p /.$setResult($_DUMP);./
    Keyword ::= e a c h /.$setResult($_EACH);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e n u m /.$setResult($_ENUM_P);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= f u l l /.$setResult($_FULL);./
    Keyword ::= h o l d /.$setResult($_HOLD);./
    Keyword ::= h o u r /.$setResult($_HOUR_P);./
    Keyword ::= i n f o /.$setResult($_INFO);./
    Keyword ::= i n t o /.$setResult($_INTO);./
    Keyword ::= j o i n /.$setResult($_JOIN);./
    Keyword ::= j s o n /.$setResult($_JSON);./
    Keyword ::= k e e p /.$setResult($_KEEP);./
    Keyword ::= k e y s /.$setResult($_KEYS);./
    Keyword ::= l a s t /.$setResult($_LAST_P);./
    Keyword ::= l e f t /.$setResult($_LEFT);./
    Keyword ::= l i k e /.$setResult($_LIKE);./
    Keyword ::= l o a d /.$setResult($_LOAD);./
    Keyword ::= l o c k /.$setResult($_LOCK_P);./
    Keyword ::= l o o p /.$setResult($_LOOP);./
    Keyword ::= m o d e /.$setResult($_MODE);./
    Keyword ::= m o v e /.$setResult($_MOVE);./
    Keyword ::= n a m e /.$setResult($_NAME_P);./
    Keyword ::= n e x t /.$setResult($_NEXT);./
    Keyword ::= n f k c /.$setResult($_NFKC);./
    Keyword ::= n f k d /.$setResult($_NFKD);./
    Keyword ::= n o n e /.$setResult($_NONE);./
    Keyword ::= n u l l /.$setResult($_NULL_P);./
    Keyword ::= o i d s /.$setResult($_OIDS);./
    Keyword ::= o m i t /.$setResult($_OMIT);./
    Keyword ::= o n l y /.$setResult($_ONLY);./
    Keyword ::= o p e n /.$setResult($_OPEN);./
    Keyword ::= o v e r /.$setResult($_OVER);./
    Keyword ::= p a t h /.$setResult($_PATH);./
    Keyword ::= p l a n /.$setResult($_PLAN);./
    Keyword ::= r e a d /.$setResult($_READ);./
    Keyword ::= r e a l /.$setResult($_REAL);./
    Keyword ::= r o l e /.$setResult($_ROLE);./
    Keyword ::= r o w s /.$setResult($_ROWS);./
    Keyword ::= r u l e /.$setResult($_RULE);./
    Keyword ::= s e t s /.$setResult($_SETS);./
    Keyword ::= s h o w /.$setResult($_SHOW);./
    Keyword ::= s k i p /.$setResult($_SKIP_P);./
    Keyword ::= s o m e /.$setResult($_SOME);./
    Keyword ::= t e m p /.$setResult($_TEMP);./
    Keyword ::= t e x t /.$setResult($_TEXT_P);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t i e s /.$setResult($_TIES);./
    Keyword ::= t i m e /.$setResult($_TIME);./
    Keyword ::= t r i m /.$setResult($_TRIM);./
    Keyword ::= t r u e /.$setResult($_TRUE_P);./
    Keyword ::= t y p e /.$setResult($_TYPE_P);./
    Keyword ::= u s e r /.$setResult($_USER);./
    Keyword ::= v i e w /.$setResult($_VIEW);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= w o r k /.$setResult($_WORK);./
    Keyword ::= y e a r /.$setResult($_YEAR_P);./
    Keyword ::= z o n e /.$setResult($_ZONE);./
    Keyword ::= a d d /.$setResult($_ADD_P);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= a s c /.$setResult($_ASC);./
    Keyword ::= b i t /.$setResult($_BIT);./
    Keyword ::= c s v /.$setResult($_CSV);./
    Keyword ::= d a y /.$setResult($_DAY_P);./
    Keyword ::= d e c /.$setResult($_DEC);./
    Keyword ::= e n d /.$setResult($_END_P);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= g e t /.$setResult($_GET);./
    Keyword ::= i n t /.$setResult($_INT_P);./
    Keyword ::= k e y /.$setResult($_KEY);./
    Keyword ::= n e w /.$setResult($_NEW);./
    Keyword ::= n f c /.$setResult($_NFC);./
    Keyword ::= n f d /.$setResult($_NFD);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= o f f /.$setResult($_OFF);./
    Keyword ::= o l d /.$setResult($_OLD);./
    Keyword ::= o u t /.$setResult($_OUT_P);./
    Keyword ::= r e f /.$setResult($_REF);./
    Keyword ::= r o w /.$setResult($_ROW);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= s q l /.$setResult($_SQL_P);./
    Keyword ::= x m l /.$setResult($_XML_P);./
    Keyword ::= y e s /.$setResult($_YES_P);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= a t /.$setResult($_AT);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF_P);./
    Keyword ::= i n /.$setResult($_IN_P);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= n o /.$setResult($_NO);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
