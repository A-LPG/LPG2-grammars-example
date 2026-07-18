-- Keyword filter for SqlCockroachdb (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.sql.cockroachdb
%options template=KeywordTemplateF.gi
%options fp=SqlCockroachdbKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ABORT
    ABSOLUTE
    ACCESS
    ACTION
    ADD
    ADMIN
    AFTER
    AGGREGATE
    ALL
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
    ASYMMETRIC
    ATOMIC
    ATTRIBUTE
    AUTHORIZATION
    AUTOMATIC
    AVAILABILITY
    BACKUP
    BACKUPS
    BACKWARD
    BATCH
    BEFORE
    BEGIN
    BETWEEN
    BIDIRECTIONAL
    BIGINT
    BINARY
    BIT
    BOOLEAN
    BOTH
    BY
    BYPASSRLS
    B_LETTER
    CACHE
    CALL
    CALLED
    CANCEL
    CANCELQUERY
    CAPABILITIES
    CAPABILITY
    CASCADE
    CASE
    CAST
    CBRT
    CHANGEFEED
    CHAR
    CHARACTER
    CHARACTERISTICS
    CHECK
    CLOSE
    CLUSTER
    CLUSTERS
    COALESCE
    COLLATE
    COLLATION
    COLUMN
    COLUMNS
    COMMENT
    COMMENTS
    COMMIT
    COMMITTED
    COMPACT
    COMPLETE
    COMPLETIONS
    CONCURRENTLY
    CONFIGURATION
    CONFIGURATIONS
    CONFIGURE
    CONFLICT
    CONNECTION
    CONNECTIONS
    CONSTRAINT
    CONSTRAINTS
    CONTROLCHANGEFEED
    CONTROLJOB
    CONVERSION
    CONVERT
    COPY
    COST
    COVERING
    CREATE
    CREATEDB
    CREATELOGIN
    CREATEROLE
    CROSS
    CSV
    CUBE
    CURRENT
    CURSOR
    CYCLE
    DATA
    DATABASE
    DATABASES
    DATE
    DAY
    DEALLOCATE
    DEC
    DECLARE
    DEFAULT
    DEFAULTS
    DEFERRABLE
    DEFERRED
    DEFINER
    DELETE
    DELIMITER
    DEPENDS
    DESC
    DESTINATION
    DETACHED
    DETAILS
    DISABLE
    DISCARD
    DISTINCT
    DO
    DOMAIN_
    DOUBLE
    DROP
    EACH
    ELSE
    ENABLE
    ENCODING
    ENCRYPTED
    END
    ENUM
    ENUMS
    ERRORS
    ESCAPE
    EXCEPT
    EXCLUDE
    EXCLUDING
    EXECUTE
    EXECUTION
    EXISTS
    EXPERIMENTAL
    EXPIRATION
    EXPLAIN
    EXPORT
    EXTENSION
    EXTERNAL
    EXTRACT
    EXTREMES
    FAILURE
    FALSE
    FAMILTY
    FAMILY
    FETCH
    FILES
    FILTER
    FIRST
    FOLLOWING
    FOR
    FORCE
    FOREIGN
    FORMAT
    FORWARD
    FREEZE
    FROM
    FULL
    FUNCTION
    FUNCTIONS
    GENERATED
    GEOGRAPGHY
    GEOGRAPHY
    GEOMETRY
    GEOMETRYCOLLECTION
    GEOMETRYCOLLECTIONM
    GEOMETRYCOLLECTIONZ
    GEOMETRYCOLLECTIONZM
    GEOMETRYM
    GEOMETRYZ
    GEOMETRYZM
    GLOBAL
    GOAL
    GRANT
    GRANTEE
    GRANTS
    GREATEST
    GROUP
    GROUPING
    GROUPS
    HAVING
    HEADER
    HIGH
    HISTOGRAM
    HOLD
    HOUR
    IDENTITY
    IF
    IFERROR
    IFNULL
    ILIKE
    IMMEDIATE
    IMMEDIATELY
    IMMUTABLE
    IMPORT
    IN
    INCLUDE
    INCLUDING
    INCREMENT
    INCREMENTAL
    INDEX
    INDEXES
    INHERITS
    INITIALLY
    INJECT
    INNER
    INOUT
    INPUT
    INSENSITIVE
    INSERT
    INSPECT
    INSTEAD
    INTEGER
    INTERSECT
    INTERVAL
    INTO
    INT_
    INVERTED
    INVISIBLE
    INVOKER
    IS
    ISERROR
    ISNULL
    ISOLATION
    JOB
    JOBS
    JOIN
    JSON
    KEY
    KEYS
    KMS
    KV
    LABEL
    LANGUAGE
    LAST
    LATERAL
    LATEST
    LEADING
    LEAKPROOF
    LEASE
    LEAST
    LEFT
    LESS
    LEVEL
    LIKE
    LIMIT
    LINESTRING
    LINESTRINGM
    LINESTRINGZ
    LINESTRINGZM
    LIST
    LOCAL
    LOCALITY
    LOCALTIME
    LOCALTIMESTAMP
    LOCKED
    LOGGED
    LOGICAL
    LOGICALLY
    LOGIN
    LOOKUP
    LOW
    MATCH
    MATERIALIZED
    MAXVALUE
    MERGE
    METHOD
    MINUTE
    MINVALUE
    MODE
    MODIFYCLUSTERSETTING
    MONTH
    MOVE
    MULTILINESTRING
    MULTILINESTRINGM
    MULTILINESTRINGZ
    MULTILINESTRINGZM
    MULTIPOINT
    MULTIPOINTM
    MULTIPOINTZ
    MULTIPOINTZM
    MULTIPOLYGON
    MULTIPOLYGONM
    MULTIPOLYGONZ
    MULTIPOLYGONZM
    NAMES
    NAN_
    NATURAL
    NEVER
    NEW
    NEXT
    NO
    NOBYPASSRLS
    NOCANCELQUERY
    NOCONTROLCHANGEFEED
    NOCONTROLJOB
    NOCREATEDB
    NOCREATELOGIN
    NOCREATEROLE
    NODE
    NOLOGIN
    NOMODIFYCLUSTERSETTING
    NONE
    NONVOTERS
    NOPT
    NOREPLICATION
    NORMAL
    NOSQLLOGIN
    NOT
    NOTHING
    NOTNULL
    NOVIEWACTIVITY
    NOVIEWACTIVITYREDACTED
    NOVIEWCLUSTERSETTING
    NOWAIT
    NULLIF
    NULLS
    NULL_
    NUMERIC
    OF
    OFF
    OFFSET
    OIDS
    OLD
    ON
    ONLY
    OPERATOR
    OPITON
    OPT
    OPTION
    OPTIONS
    OR
    ORDER
    ORDINALITY
    OTHERS
    OUT
    OUTER
    OVER
    OVERLAPS
    OVERLAY
    OWNED
    OWNER
    PARALLEL
    PARENT
    PARTIAL
    PARTITION
    PARTITIONS
    PASSWORD
    PAUSE
    PAUSED
    PER
    PERMISSIVE
    PHYSICAL
    PLACEHOLDER
    PLACEMENT
    PLACING
    PLAN
    PLANS
    POINT
    POINTM
    POINTZ
    POINTZM
    POLICIES
    POLICY
    POLYGON
    POLYGONM
    POLYGONZ
    POLYGONZM
    POSITION
    PRECEDING
    PRECISION
    PREPARE
    PREPARED
    PREPARRED
    PRESERVE
    PRIMARY
    PRIOR
    PRIORITY
    PRIVILEGES
    PROCEDURE
    PROCEDURES
    PROVISIONSRC
    PUBLIC
    PUBLICATION
    QUERIES
    QUERY
    QUOTE
    RANGE
    RANGES
    READ
    REASON
    REASSIGN
    RECURRING
    RECURSIVE
    REDACT
    REF
    REFERENCES
    REFERENCING
    REFRESH
    REGION
    REGIONAL
    REGIONS
    REINDEX
    RELATIVE
    RELEASE
    RELOCATE
    RENAME
    REPEATABLE
    REPLACE
    REPLICATED
    REPLICATION
    RESET
    RESTART
    RESTORE
    RESTRICT
    RESTRICTED
    RESTRICTIVE
    RESUME
    RETENTION
    RETURN
    RETURNING
    RETURNS
    REVOKE
    RIGHT
    ROLE
    ROLES
    ROLLBACK
    ROLLUP
    ROUTINES
    ROW
    ROWS
    RULE
    RUN
    RUNNING
    SAVEPOINT
    SCANS
    SCATTER
    SCHEDULE
    SCHEDULES
    SCHEMA
    SCHEMAS
    SCROLL
    SCRUB
    SEARCH
    SECOND
    SECONDARY
    SECURITY
    SELECT
    SEQUENCE
    SEQUENCES
    SERIALIZABLE
    SERVER
    SERVICE
    SESSION
    SESSIONS
    SET
    SETOF
    SETS
    SETTING
    SETTINGS
    SHARE
    SHARED
    SHOW
    SIMILAR
    SIMPLE
    SIZE
    SKIP_
    SMALLINT
    SNAPSHOT
    SOME
    SOUCE
    SOURCE
    SPLIT
    SQL
    SQLLOGIN
    SQRT
    STABLE
    START
    STATE
    STATEMENT
    STATEMENTS
    STATISTICS
    STATUS
    STDIN
    STDOUT
    STOP
    STORAGE
    STORE
    STORED
    STORING
    STRAIGHT
    STREAM
    STRICT
    STRING
    SUBJECT
    SUBSCRIPTION
    SUBSTRING
    SUPER
    SUPPORT
    SURVIVAL
    SURVIVE
    SYMMETRIC
    SYNTAX
    SYSTEM
    TABLE
    TABLES
    TABLESPACE
    TEMP
    TEMPLATE
    TEMPORARY
    TENANT
    TENANTS
    TEXT
    THEN
    THROTTLING
    TIES
    TIME
    TIMESTAMP
    TIMESTAMPTZ
    TIMETZ
    TO
    TRACE
    TRACING
    TRAILING
    TRANSACTION
    TRANSACTIONS
    TRANSFER
    TRANSFORM
    TREAT
    TRIGGER
    TRIGGERS
    TRIM
    TRUE
    TRUNCATE
    TRUSTED
    TYPE
    TYPES
    UNBOUNDED
    UNCOMMITTED
    UNIDIRECTIONAL
    UNION
    UNIQUE
    UNKNOWN
    UNLISTEN
    UNLOGGED
    UNSET
    UNSPLIT
    UNTIL
    UPDATE
    UPSERT
    USE
    USER
    USERS
    USING
    VALID
    VALIDATE
    VALUE
    VALUES
    VARBIT
    VARCHAR
    VARIABLES
    VARIADIC
    VARYING
    VECTOR
    VIEW
    VIEWACTIVITY
    VIEWACTIVITYREDACTED
    VIEWCLUSTERSETTING
    VIRTUAL
    VISIBILITY
    VISIBILTY
    VISIBLE
    VOLATILE
    VOTERS
    WHEN
    WHERE
    WINDOW
    WITH
    WITHIN
    WITHOUT
    WORK
    WRITE
    YEAR
    ZONE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= n o m o d i f y c l u s t e r s e t t i n g /.$setResult($_NOMODIFYCLUSTERSETTING);./
    Keyword ::= n o v i e w a c t i v i t y r e d a c t e d /.$setResult($_NOVIEWACTIVITYREDACTED);./
    Keyword ::= g e o m e t r y c o l l e c t i o n z m /.$setResult($_GEOMETRYCOLLECTIONZM);./
    Keyword ::= m o d i f y c l u s t e r s e t t i n g /.$setResult($_MODIFYCLUSTERSETTING);./
    Keyword ::= n o v i e w c l u s t e r s e t t i n g /.$setResult($_NOVIEWCLUSTERSETTING);./
    Keyword ::= v i e w a c t i v i t y r e d a c t e d /.$setResult($_VIEWACTIVITYREDACTED);./
    Keyword ::= g e o m e t r y c o l l e c t i o n m /.$setResult($_GEOMETRYCOLLECTIONM);./
    Keyword ::= g e o m e t r y c o l l e c t i o n z /.$setResult($_GEOMETRYCOLLECTIONZ);./
    Keyword ::= n o c o n t r o l c h a n g e f e e d /.$setResult($_NOCONTROLCHANGEFEED);./
    Keyword ::= g e o m e t r y c o l l e c t i o n /.$setResult($_GEOMETRYCOLLECTION);./
    Keyword ::= v i e w c l u s t e r s e t t i n g /.$setResult($_VIEWCLUSTERSETTING);./
    Keyword ::= c o n t r o l c h a n g e f e e d /.$setResult($_CONTROLCHANGEFEED);./
    Keyword ::= m u l t i l i n e s t r i n g z m /.$setResult($_MULTILINESTRINGZM);./
    Keyword ::= m u l t i l i n e s t r i n g m /.$setResult($_MULTILINESTRINGM);./
    Keyword ::= m u l t i l i n e s t r i n g z /.$setResult($_MULTILINESTRINGZ);./
    Keyword ::= c h a r a c t e r i s t i c s /.$setResult($_CHARACTERISTICS);./
    Keyword ::= m u l t i l i n e s t r i n g /.$setResult($_MULTILINESTRING);./
    Keyword ::= c o n f i g u r a t i o n s /.$setResult($_CONFIGURATIONS);./
    Keyword ::= l o c a l t i m e s t a m p /.$setResult($_LOCALTIMESTAMP);./
    Keyword ::= m u l t i p o l y g o n z m /.$setResult($_MULTIPOLYGONZM);./
    Keyword ::= n o v i e w a c t i v i t y /.$setResult($_NOVIEWACTIVITY);./
    Keyword ::= u n i d i r e c t i o n a l /.$setResult($_UNIDIRECTIONAL);./
    Keyword ::= a u t h o r i z a t i o n /.$setResult($_AUTHORIZATION);./
    Keyword ::= b i d i r e c t i o n a l /.$setResult($_BIDIRECTIONAL);./
    Keyword ::= c o n f i g u r a t i o n /.$setResult($_CONFIGURATION);./
    Keyword ::= m u l t i p o l y g o n m /.$setResult($_MULTIPOLYGONM);./
    Keyword ::= m u l t i p o l y g o n z /.$setResult($_MULTIPOLYGONZ);./
    Keyword ::= n o c a n c e l q u e r y /.$setResult($_NOCANCELQUERY);./
    Keyword ::= n o c r e a t e l o g i n /.$setResult($_NOCREATELOGIN);./
    Keyword ::= n o r e p l i c a t i o n /.$setResult($_NOREPLICATION);./
    Keyword ::= a v a i l a b i l i t y /.$setResult($_AVAILABILITY);./
    Keyword ::= c a p a b i l i t i e s /.$setResult($_CAPABILITIES);./
    Keyword ::= c o n c u r r e n t l y /.$setResult($_CONCURRENTLY);./
    Keyword ::= e x p e r i m e n t a l /.$setResult($_EXPERIMENTAL);./
    Keyword ::= l i n e s t r i n g z m /.$setResult($_LINESTRINGZM);./
    Keyword ::= m a t e r i a l i z e d /.$setResult($_MATERIALIZED);./
    Keyword ::= m u l t i p o i n t z m /.$setResult($_MULTIPOINTZM);./
    Keyword ::= m u l t i p o l y g o n /.$setResult($_MULTIPOLYGON);./
    Keyword ::= n o c o n t r o l j o b /.$setResult($_NOCONTROLJOB);./
    Keyword ::= n o c r e a t e r o l e /.$setResult($_NOCREATEROLE);./
    Keyword ::= p r o v i s i o n s r c /.$setResult($_PROVISIONSRC);./
    Keyword ::= s e r i a l i z a b l e /.$setResult($_SERIALIZABLE);./
    Keyword ::= s u b s c r i p t i o n /.$setResult($_SUBSCRIPTION);./
    Keyword ::= t r a n s a c t i o n s /.$setResult($_TRANSACTIONS);./
    Keyword ::= v i e w a c t i v i t y /.$setResult($_VIEWACTIVITY);./
    Keyword ::= c a n c e l q u e r y /.$setResult($_CANCELQUERY);./
    Keyword ::= c o m p l e t i o n s /.$setResult($_COMPLETIONS);./
    Keyword ::= c o n n e c t i o n s /.$setResult($_CONNECTIONS);./
    Keyword ::= c o n s t r a i n t s /.$setResult($_CONSTRAINTS);./
    Keyword ::= c r e a t e l o g i n /.$setResult($_CREATELOGIN);./
    Keyword ::= d e s t i n a t i o n /.$setResult($_DESTINATION);./
    Keyword ::= i m m e d i a t e l y /.$setResult($_IMMEDIATELY);./
    Keyword ::= i n c r e m e n t a l /.$setResult($_INCREMENTAL);./
    Keyword ::= i n s e n s i t i v e /.$setResult($_INSENSITIVE);./
    Keyword ::= l i n e s t r i n g m /.$setResult($_LINESTRINGM);./
    Keyword ::= l i n e s t r i n g z /.$setResult($_LINESTRINGZ);./
    Keyword ::= m u l t i p o i n t m /.$setResult($_MULTIPOINTM);./
    Keyword ::= m u l t i p o i n t z /.$setResult($_MULTIPOINTZ);./
    Keyword ::= n o b y p a s s r l s /.$setResult($_NOBYPASSRLS);./
    Keyword ::= p l a c e h o l d e r /.$setResult($_PLACEHOLDER);./
    Keyword ::= p u b l i c a t i o n /.$setResult($_PUBLICATION);./
    Keyword ::= r e f e r e n c i n g /.$setResult($_REFERENCING);./
    Keyword ::= r e p l i c a t i o n /.$setResult($_REPLICATION);./
    Keyword ::= r e s t r i c t i v e /.$setResult($_RESTRICTIVE);./
    Keyword ::= t i m e s t a m p t z /.$setResult($_TIMESTAMPTZ);./
    Keyword ::= t r a n s a c t i o n /.$setResult($_TRANSACTION);./
    Keyword ::= u n c o m m i t t e d /.$setResult($_UNCOMMITTED);./
    Keyword ::= a s e n s i t i v e /.$setResult($_ASENSITIVE);./
    Keyword ::= a s y m m e t r i c /.$setResult($_ASYMMETRIC);./
    Keyword ::= c a p a b i l i t y /.$setResult($_CAPABILITY);./
    Keyword ::= c h a n g e f e e d /.$setResult($_CHANGEFEED);./
    Keyword ::= c o n n e c t i o n /.$setResult($_CONNECTION);./
    Keyword ::= c o n s t r a i n t /.$setResult($_CONSTRAINT);./
    Keyword ::= c o n t r o l j o b /.$setResult($_CONTROLJOB);./
    Keyword ::= c o n v e r s i o n /.$setResult($_CONVERSION);./
    Keyword ::= c r e a t e r o l e /.$setResult($_CREATEROLE);./
    Keyword ::= d e a l l o c a t e /.$setResult($_DEALLOCATE);./
    Keyword ::= d e f e r r a b l e /.$setResult($_DEFERRABLE);./
    Keyword ::= e x p i r a t i o n /.$setResult($_EXPIRATION);./
    Keyword ::= g e o g r a p g h y /.$setResult($_GEOGRAPGHY);./
    Keyword ::= g e o m e t r y z m /.$setResult($_GEOMETRYZM);./
    Keyword ::= l i n e s t r i n g /.$setResult($_LINESTRING);./
    Keyword ::= m u l t i p o i n t /.$setResult($_MULTIPOINT);./
    Keyword ::= n o c r e a t e d b /.$setResult($_NOCREATEDB);./
    Keyword ::= n o s q l l o g i n /.$setResult($_NOSQLLOGIN);./
    Keyword ::= o r d i n a l i t y /.$setResult($_ORDINALITY);./
    Keyword ::= p a r t i t i o n s /.$setResult($_PARTITIONS);./
    Keyword ::= p e r m i s s i v e /.$setResult($_PERMISSIVE);./
    Keyword ::= p r i v i l e g e s /.$setResult($_PRIVILEGES);./
    Keyword ::= p r o c e d u r e s /.$setResult($_PROCEDURES);./
    Keyword ::= r e f e r e n c e s /.$setResult($_REFERENCES);./
    Keyword ::= r e p e a t a b l e /.$setResult($_REPEATABLE);./
    Keyword ::= r e p l i c a t e d /.$setResult($_REPLICATED);./
    Keyword ::= r e s t r i c t e d /.$setResult($_RESTRICTED);./
    Keyword ::= s t a t e m e n t s /.$setResult($_STATEMENTS);./
    Keyword ::= s t a t i s t i c s /.$setResult($_STATISTICS);./
    Keyword ::= t a b l e s p a c e /.$setResult($_TABLESPACE);./
    Keyword ::= t h r o t t l i n g /.$setResult($_THROTTLING);./
    Keyword ::= v i s i b i l i t y /.$setResult($_VISIBILITY);./
    Keyword ::= a g g r e g a t e /.$setResult($_AGGREGATE);./
    Keyword ::= a t t r i b u t e /.$setResult($_ATTRIBUTE);./
    Keyword ::= a u t o m a t i c /.$setResult($_AUTOMATIC);./
    Keyword ::= b y p a s s r l s /.$setResult($_BYPASSRLS);./
    Keyword ::= c h a r a c t e r /.$setResult($_CHARACTER);./
    Keyword ::= c o l l a t i o n /.$setResult($_COLLATION);./
    Keyword ::= c o m m i t t e d /.$setResult($_COMMITTED);./
    Keyword ::= c o n f i g u r e /.$setResult($_CONFIGURE);./
    Keyword ::= d a t a b a s e s /.$setResult($_DATABASES);./
    Keyword ::= d e l i m i t e r /.$setResult($_DELIMITER);./
    Keyword ::= e n c r y p t e d /.$setResult($_ENCRYPTED);./
    Keyword ::= e x c l u d i n g /.$setResult($_EXCLUDING);./
    Keyword ::= e x e c u t i o n /.$setResult($_EXECUTION);./
    Keyword ::= e x t e n s i o n /.$setResult($_EXTENSION);./
    Keyword ::= f o l l o w i n g /.$setResult($_FOLLOWING);./
    Keyword ::= f u n c t i o n s /.$setResult($_FUNCTIONS);./
    Keyword ::= g e n e r a t e d /.$setResult($_GENERATED);./
    Keyword ::= g e o g r a p h y /.$setResult($_GEOGRAPHY);./
    Keyword ::= g e o m e t r y m /.$setResult($_GEOMETRYM);./
    Keyword ::= g e o m e t r y z /.$setResult($_GEOMETRYZ);./
    Keyword ::= h i s t o g r a m /.$setResult($_HISTOGRAM);./
    Keyword ::= i m m e d i a t e /.$setResult($_IMMEDIATE);./
    Keyword ::= i m m u t a b l e /.$setResult($_IMMUTABLE);./
    Keyword ::= i n c l u d i n g /.$setResult($_INCLUDING);./
    Keyword ::= i n c r e m e n t /.$setResult($_INCREMENT);./
    Keyword ::= i n i t i a l l y /.$setResult($_INITIALLY);./
    Keyword ::= i n t e r s e c t /.$setResult($_INTERSECT);./
    Keyword ::= i n v i s i b l e /.$setResult($_INVISIBLE);./
    Keyword ::= i s o l a t i o n /.$setResult($_ISOLATION);./
    Keyword ::= l e a k p r o o f /.$setResult($_LEAKPROOF);./
    Keyword ::= l o c a l t i m e /.$setResult($_LOCALTIME);./
    Keyword ::= l o g i c a l l y /.$setResult($_LOGICALLY);./
    Keyword ::= n o n v o t e r s /.$setResult($_NONVOTERS);./
    Keyword ::= p a r t i t i o n /.$setResult($_PARTITION);./
    Keyword ::= p l a c e m e n t /.$setResult($_PLACEMENT);./
    Keyword ::= p o l y g o n z m /.$setResult($_POLYGONZM);./
    Keyword ::= p r e c e d i n g /.$setResult($_PRECEDING);./
    Keyword ::= p r e c i s i o n /.$setResult($_PRECISION);./
    Keyword ::= p r e p a r r e d /.$setResult($_PREPARRED);./
    Keyword ::= p r o c e d u r e /.$setResult($_PROCEDURE);./
    Keyword ::= r e c u r r i n g /.$setResult($_RECURRING);./
    Keyword ::= r e c u r s i v e /.$setResult($_RECURSIVE);./
    Keyword ::= r e t e n t i o n /.$setResult($_RETENTION);./
    Keyword ::= r e t u r n i n g /.$setResult($_RETURNING);./
    Keyword ::= s a v e p o i n t /.$setResult($_SAVEPOINT);./
    Keyword ::= s c h e d u l e s /.$setResult($_SCHEDULES);./
    Keyword ::= s e c o n d a r y /.$setResult($_SECONDARY);./
    Keyword ::= s e q u e n c e s /.$setResult($_SEQUENCES);./
    Keyword ::= s t a t e m e n t /.$setResult($_STATEMENT);./
    Keyword ::= s u b s t r i n g /.$setResult($_SUBSTRING);./
    Keyword ::= s y m m e t r i c /.$setResult($_SYMMETRIC);./
    Keyword ::= t e m p o r a r y /.$setResult($_TEMPORARY);./
    Keyword ::= t i m e s t a m p /.$setResult($_TIMESTAMP);./
    Keyword ::= t r a n s f o r m /.$setResult($_TRANSFORM);./
    Keyword ::= u n b o u n d e d /.$setResult($_UNBOUNDED);./
    Keyword ::= v a r i a b l e s /.$setResult($_VARIABLES);./
    Keyword ::= v i s i b i l t y /.$setResult($_VISIBILTY);./
    Keyword ::= a b s o l u t e /.$setResult($_ABSOLUTE);./
    Keyword ::= b a c k w a r d /.$setResult($_BACKWARD);./
    Keyword ::= c l u s t e r s /.$setResult($_CLUSTERS);./
    Keyword ::= c o a l e s c e /.$setResult($_COALESCE);./
    Keyword ::= c o m m e n t s /.$setResult($_COMMENTS);./
    Keyword ::= c o m p l e t e /.$setResult($_COMPLETE);./
    Keyword ::= c o n f l i c t /.$setResult($_CONFLICT);./
    Keyword ::= c o v e r i n g /.$setResult($_COVERING);./
    Keyword ::= c r e a t e d b /.$setResult($_CREATEDB);./
    Keyword ::= d a t a b a s e /.$setResult($_DATABASE);./
    Keyword ::= d e f a u l t s /.$setResult($_DEFAULTS);./
    Keyword ::= d e f e r r e d /.$setResult($_DEFERRED);./
    Keyword ::= d e t a c h e d /.$setResult($_DETACHED);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT);./
    Keyword ::= e n c o d i n g /.$setResult($_ENCODING);./
    Keyword ::= e x t e r n a l /.$setResult($_EXTERNAL);./
    Keyword ::= e x t r e m e s /.$setResult($_EXTREMES);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= g e o m e t r y /.$setResult($_GEOMETRY);./
    Keyword ::= g r e a t e s t /.$setResult($_GREATEST);./
    Keyword ::= g r o u p i n g /.$setResult($_GROUPING);./
    Keyword ::= i d e n t i t y /.$setResult($_IDENTITY);./
    Keyword ::= i n h e r i t s /.$setResult($_INHERITS);./
    Keyword ::= i n t e r v a l /.$setResult($_INTERVAL);./
    Keyword ::= i n v e r t e d /.$setResult($_INVERTED);./
    Keyword ::= l a n g u a g e /.$setResult($_LANGUAGE);./
    Keyword ::= l o c a l i t y /.$setResult($_LOCALITY);./
    Keyword ::= m a x v a l u e /.$setResult($_MAXVALUE);./
    Keyword ::= m i n v a l u e /.$setResult($_MINVALUE);./
    Keyword ::= o p e r a t o r /.$setResult($_OPERATOR);./
    Keyword ::= o v e r l a p s /.$setResult($_OVERLAPS);./
    Keyword ::= p a r a l l e l /.$setResult($_PARALLEL);./
    Keyword ::= p a s s w o r d /.$setResult($_PASSWORD);./
    Keyword ::= p h y s i c a l /.$setResult($_PHYSICAL);./
    Keyword ::= p o l i c i e s /.$setResult($_POLICIES);./
    Keyword ::= p o l y g o n m /.$setResult($_POLYGONM);./
    Keyword ::= p o l y g o n z /.$setResult($_POLYGONZ);./
    Keyword ::= p o s i t i o n /.$setResult($_POSITION);./
    Keyword ::= p r e p a r e d /.$setResult($_PREPARED);./
    Keyword ::= p r e s e r v e /.$setResult($_PRESERVE);./
    Keyword ::= p r i o r i t y /.$setResult($_PRIORITY);./
    Keyword ::= r e a s s i g n /.$setResult($_REASSIGN);./
    Keyword ::= r e g i o n a l /.$setResult($_REGIONAL);./
    Keyword ::= r e l a t i v e /.$setResult($_RELATIVE);./
    Keyword ::= r e l o c a t e /.$setResult($_RELOCATE);./
    Keyword ::= r e s t r i c t /.$setResult($_RESTRICT);./
    Keyword ::= r o l l b a c k /.$setResult($_ROLLBACK);./
    Keyword ::= r o u t i n e s /.$setResult($_ROUTINES);./
    Keyword ::= s c h e d u l e /.$setResult($_SCHEDULE);./
    Keyword ::= s e c u r i t y /.$setResult($_SECURITY);./
    Keyword ::= s e q u e n c e /.$setResult($_SEQUENCE);./
    Keyword ::= s e s s i o n s /.$setResult($_SESSIONS);./
    Keyword ::= s e t t i n g s /.$setResult($_SETTINGS);./
    Keyword ::= s m a l l i n t /.$setResult($_SMALLINT);./
    Keyword ::= s n a p s h o t /.$setResult($_SNAPSHOT);./
    Keyword ::= s q l l o g i n /.$setResult($_SQLLOGIN);./
    Keyword ::= s t r a i g h t /.$setResult($_STRAIGHT);./
    Keyword ::= s u r v i v a l /.$setResult($_SURVIVAL);./
    Keyword ::= t e m p l a t e /.$setResult($_TEMPLATE);./
    Keyword ::= t r a i l i n g /.$setResult($_TRAILING);./
    Keyword ::= t r a n s f e r /.$setResult($_TRANSFER);./
    Keyword ::= t r i g g e r s /.$setResult($_TRIGGERS);./
    Keyword ::= t r u n c a t e /.$setResult($_TRUNCATE);./
    Keyword ::= u n l i s t e n /.$setResult($_UNLISTEN);./
    Keyword ::= u n l o g g e d /.$setResult($_UNLOGGED);./
    Keyword ::= v a l i d a t e /.$setResult($_VALIDATE);./
    Keyword ::= v a r i a d i c /.$setResult($_VARIADIC);./
    Keyword ::= v o l a t i l e /.$setResult($_VOLATILE);./
    Keyword ::= a n a l y s e /.$setResult($_ANALYSE);./
    Keyword ::= a n a l y z e /.$setResult($_ANALYZE);./
    Keyword ::= b a c k u p s /.$setResult($_BACKUPS);./
    Keyword ::= b e t w e e n /.$setResult($_BETWEEN);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= c a s c a d e /.$setResult($_CASCADE);./
    Keyword ::= c l u s t e r /.$setResult($_CLUSTER);./
    Keyword ::= c o l l a t e /.$setResult($_COLLATE);./
    Keyword ::= c o l u m n s /.$setResult($_COLUMNS);./
    Keyword ::= c o m m e n t /.$setResult($_COMMENT);./
    Keyword ::= c o m p a c t /.$setResult($_COMPACT);./
    Keyword ::= c o n v e r t /.$setResult($_CONVERT);./
    Keyword ::= c u r r e n t /.$setResult($_CURRENT);./
    Keyword ::= d e c l a r e /.$setResult($_DECLARE);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= d e f i n e r /.$setResult($_DEFINER);./
    Keyword ::= d e p e n d s /.$setResult($_DEPENDS);./
    Keyword ::= d e t a i l s /.$setResult($_DETAILS);./
    Keyword ::= d i s a b l e /.$setResult($_DISABLE);./
    Keyword ::= d i s c a r d /.$setResult($_DISCARD);./
    Keyword ::= e x c l u d e /.$setResult($_EXCLUDE);./
    Keyword ::= e x e c u t e /.$setResult($_EXECUTE);./
    Keyword ::= e x p l a i n /.$setResult($_EXPLAIN);./
    Keyword ::= e x t r a c t /.$setResult($_EXTRACT);./
    Keyword ::= f a i l u r e /.$setResult($_FAILURE);./
    Keyword ::= f a m i l t y /.$setResult($_FAMILTY);./
    Keyword ::= f o r e i g n /.$setResult($_FOREIGN);./
    Keyword ::= f o r w a r d /.$setResult($_FORWARD);./
    Keyword ::= g r a n t e e /.$setResult($_GRANTEE);./
    Keyword ::= i f e r r o r /.$setResult($_IFERROR);./
    Keyword ::= i n c l u d e /.$setResult($_INCLUDE);./
    Keyword ::= i n d e x e s /.$setResult($_INDEXES);./
    Keyword ::= i n s p e c t /.$setResult($_INSPECT);./
    Keyword ::= i n s t e a d /.$setResult($_INSTEAD);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= i n v o k e r /.$setResult($_INVOKER);./
    Keyword ::= i s e r r o r /.$setResult($_ISERROR);./
    Keyword ::= l a t e r a l /.$setResult($_LATERAL);./
    Keyword ::= l e a d i n g /.$setResult($_LEADING);./
    Keyword ::= l o g i c a l /.$setResult($_LOGICAL);./
    Keyword ::= n a t u r a l /.$setResult($_NATURAL);./
    Keyword ::= n o l o g i n /.$setResult($_NOLOGIN);./
    Keyword ::= n o t h i n g /.$setResult($_NOTHING);./
    Keyword ::= n o t n u l l /.$setResult($_NOTNULL);./
    Keyword ::= n u m e r i c /.$setResult($_NUMERIC);./
    Keyword ::= o p t i o n s /.$setResult($_OPTIONS);./
    Keyword ::= o v e r l a y /.$setResult($_OVERLAY);./
    Keyword ::= p a r t i a l /.$setResult($_PARTIAL);./
    Keyword ::= p l a c i n g /.$setResult($_PLACING);./
    Keyword ::= p o i n t z m /.$setResult($_POINTZM);./
    Keyword ::= p o l y g o n /.$setResult($_POLYGON);./
    Keyword ::= p r e p a r e /.$setResult($_PREPARE);./
    Keyword ::= p r i m a r y /.$setResult($_PRIMARY);./
    Keyword ::= q u e r i e s /.$setResult($_QUERIES);./
    Keyword ::= r e f r e s h /.$setResult($_REFRESH);./
    Keyword ::= r e g i o n s /.$setResult($_REGIONS);./
    Keyword ::= r e i n d e x /.$setResult($_REINDEX);./
    Keyword ::= r e l e a s e /.$setResult($_RELEASE);./
    Keyword ::= r e p l a c e /.$setResult($_REPLACE);./
    Keyword ::= r e s t a r t /.$setResult($_RESTART);./
    Keyword ::= r e s t o r e /.$setResult($_RESTORE);./
    Keyword ::= r e t u r n s /.$setResult($_RETURNS);./
    Keyword ::= r u n n i n g /.$setResult($_RUNNING);./
    Keyword ::= s c a t t e r /.$setResult($_SCATTER);./
    Keyword ::= s c h e m a s /.$setResult($_SCHEMAS);./
    Keyword ::= s e r v i c e /.$setResult($_SERVICE);./
    Keyword ::= s e s s i o n /.$setResult($_SESSION);./
    Keyword ::= s e t t i n g /.$setResult($_SETTING);./
    Keyword ::= s i m i l a r /.$setResult($_SIMILAR);./
    Keyword ::= s t o r a g e /.$setResult($_STORAGE);./
    Keyword ::= s t o r i n g /.$setResult($_STORING);./
    Keyword ::= s u b j e c t /.$setResult($_SUBJECT);./
    Keyword ::= s u p p o r t /.$setResult($_SUPPORT);./
    Keyword ::= s u r v i v e /.$setResult($_SURVIVE);./
    Keyword ::= t e n a n t s /.$setResult($_TENANTS);./
    Keyword ::= t r a c i n g /.$setResult($_TRACING);./
    Keyword ::= t r i g g e r /.$setResult($_TRIGGER);./
    Keyword ::= t r u s t e d /.$setResult($_TRUSTED);./
    Keyword ::= u n k n o w n /.$setResult($_UNKNOWN);./
    Keyword ::= u n s p l i t /.$setResult($_UNSPLIT);./
    Keyword ::= v a r c h a r /.$setResult($_VARCHAR);./
    Keyword ::= v a r y i n g /.$setResult($_VARYING);./
    Keyword ::= v i r t u a l /.$setResult($_VIRTUAL);./
    Keyword ::= v i s i b l e /.$setResult($_VISIBLE);./
    Keyword ::= w i t h o u t /.$setResult($_WITHOUT);./
    Keyword ::= a c c e s s /.$setResult($_ACCESS);./
    Keyword ::= a c t i o n /.$setResult($_ACTION);./
    Keyword ::= a l w a y s /.$setResult($_ALWAYS);./
    Keyword ::= a t o m i c /.$setResult($_ATOMIC);./
    Keyword ::= b a c k u p /.$setResult($_BACKUP);./
    Keyword ::= b e f o r e /.$setResult($_BEFORE);./
    Keyword ::= b i g i n t /.$setResult($_BIGINT);./
    Keyword ::= b i n a r y /.$setResult($_BINARY);./
    Keyword ::= c a l l e d /.$setResult($_CALLED);./
    Keyword ::= c a n c e l /.$setResult($_CANCEL);./
    Keyword ::= c o l u m n /.$setResult($_COLUMN);./
    Keyword ::= c o m m i t /.$setResult($_COMMIT);./
    Keyword ::= c r e a t e /.$setResult($_CREATE);./
    Keyword ::= c u r s o r /.$setResult($_CURSOR);./
    Keyword ::= d e l e t e /.$setResult($_DELETE);./
    Keyword ::= d o m a i n /.$setResult($_DOMAIN_);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= e n a b l e /.$setResult($_ENABLE);./
    Keyword ::= e r r o r s /.$setResult($_ERRORS);./
    Keyword ::= e s c a p e /.$setResult($_ESCAPE);./
    Keyword ::= e x c e p t /.$setResult($_EXCEPT);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS);./
    Keyword ::= e x p o r t /.$setResult($_EXPORT);./
    Keyword ::= f a m i l y /.$setResult($_FAMILY);./
    Keyword ::= f i l t e r /.$setResult($_FILTER);./
    Keyword ::= f o r m a t /.$setResult($_FORMAT);./
    Keyword ::= f r e e z e /.$setResult($_FREEZE);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= g r a n t s /.$setResult($_GRANTS);./
    Keyword ::= g r o u p s /.$setResult($_GROUPS);./
    Keyword ::= h a v i n g /.$setResult($_HAVING);./
    Keyword ::= h e a d e r /.$setResult($_HEADER);./
    Keyword ::= i f n u l l /.$setResult($_IFNULL);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= i n j e c t /.$setResult($_INJECT);./
    Keyword ::= i n s e r t /.$setResult($_INSERT);./
    Keyword ::= i s n u l l /.$setResult($_ISNULL);./
    Keyword ::= l a t e s t /.$setResult($_LATEST);./
    Keyword ::= l o c k e d /.$setResult($_LOCKED);./
    Keyword ::= l o g g e d /.$setResult($_LOGGED);./
    Keyword ::= l o o k u p /.$setResult($_LOOKUP);./
    Keyword ::= m e t h o d /.$setResult($_METHOD);./
    Keyword ::= m i n u t e /.$setResult($_MINUTE);./
    Keyword ::= n o r m a l /.$setResult($_NORMAL);./
    Keyword ::= n o w a i t /.$setResult($_NOWAIT);./
    Keyword ::= n u l l i f /.$setResult($_NULLIF);./
    Keyword ::= o f f s e t /.$setResult($_OFFSET);./
    Keyword ::= o p i t o n /.$setResult($_OPITON);./
    Keyword ::= o p t i o n /.$setResult($_OPTION);./
    Keyword ::= o t h e r s /.$setResult($_OTHERS);./
    Keyword ::= p a r e n t /.$setResult($_PARENT);./
    Keyword ::= p a u s e d /.$setResult($_PAUSED);./
    Keyword ::= p o i n t m /.$setResult($_POINTM);./
    Keyword ::= p o i n t z /.$setResult($_POINTZ);./
    Keyword ::= p o l i c y /.$setResult($_POLICY);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= r a n g e s /.$setResult($_RANGES);./
    Keyword ::= r e a s o n /.$setResult($_REASON);./
    Keyword ::= r e d a c t /.$setResult($_REDACT);./
    Keyword ::= r e g i o n /.$setResult($_REGION);./
    Keyword ::= r e n a m e /.$setResult($_RENAME);./
    Keyword ::= r e s u m e /.$setResult($_RESUME);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= r e v o k e /.$setResult($_REVOKE);./
    Keyword ::= r o l l u p /.$setResult($_ROLLUP);./
    Keyword ::= s c h e m a /.$setResult($_SCHEMA);./
    Keyword ::= s c r o l l /.$setResult($_SCROLL);./
    Keyword ::= s e a r c h /.$setResult($_SEARCH);./
    Keyword ::= s e c o n d /.$setResult($_SECOND);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s e r v e r /.$setResult($_SERVER);./
    Keyword ::= s h a r e d /.$setResult($_SHARED);./
    Keyword ::= s i m p l e /.$setResult($_SIMPLE);./
    Keyword ::= s o u r c e /.$setResult($_SOURCE);./
    Keyword ::= s t a b l e /.$setResult($_STABLE);./
    Keyword ::= s t a t u s /.$setResult($_STATUS);./
    Keyword ::= s t d o u t /.$setResult($_STDOUT);./
    Keyword ::= s t o r e d /.$setResult($_STORED);./
    Keyword ::= s t r e a m /.$setResult($_STREAM);./
    Keyword ::= s t r i c t /.$setResult($_STRICT);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= s y n t a x /.$setResult($_SYNTAX);./
    Keyword ::= s y s t e m /.$setResult($_SYSTEM);./
    Keyword ::= t a b l e s /.$setResult($_TABLES);./
    Keyword ::= t e n a n t /.$setResult($_TENANT);./
    Keyword ::= t i m e t z /.$setResult($_TIMETZ);./
    Keyword ::= u n i q u e /.$setResult($_UNIQUE);./
    Keyword ::= u p d a t e /.$setResult($_UPDATE);./
    Keyword ::= u p s e r t /.$setResult($_UPSERT);./
    Keyword ::= v a l u e s /.$setResult($_VALUES);./
    Keyword ::= v a r b i t /.$setResult($_VARBIT);./
    Keyword ::= v e c t o r /.$setResult($_VECTOR);./
    Keyword ::= v o t e r s /.$setResult($_VOTERS);./
    Keyword ::= w i n d o w /.$setResult($_WINDOW);./
    Keyword ::= w i t h i n /.$setResult($_WITHIN);./
    Keyword ::= a b o r t /.$setResult($_ABORT);./
    Keyword ::= a d m i n /.$setResult($_ADMIN);./
    Keyword ::= a f t e r /.$setResult($_AFTER);./
    Keyword ::= a l t e r /.$setResult($_ALTER);./
    Keyword ::= a r r a y /.$setResult($_ARRAY);./
    Keyword ::= b a t c h /.$setResult($_BATCH);./
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
    Keyword ::= c a c h e /.$setResult($_CACHE);./
    Keyword ::= c h e c k /.$setResult($_CHECK);./
    Keyword ::= c l o s e /.$setResult($_CLOSE);./
    Keyword ::= c r o s s /.$setResult($_CROSS);./
    Keyword ::= c y c l e /.$setResult($_CYCLE);./
    Keyword ::= e n u m s /.$setResult($_ENUMS);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f e t c h /.$setResult($_FETCH);./
    Keyword ::= f i l e s /.$setResult($_FILES);./
    Keyword ::= f i r s t /.$setResult($_FIRST);./
    Keyword ::= f o r c e /.$setResult($_FORCE);./
    Keyword ::= g r a n t /.$setResult($_GRANT);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= i l i k e /.$setResult($_ILIKE);./
    Keyword ::= i n d e x /.$setResult($_INDEX);./
    Keyword ::= i n n e r /.$setResult($_INNER);./
    Keyword ::= i n o u t /.$setResult($_INOUT);./
    Keyword ::= i n p u t /.$setResult($_INPUT);./
    Keyword ::= l a b e l /.$setResult($_LABEL);./
    Keyword ::= l e a s e /.$setResult($_LEASE);./
    Keyword ::= l e a s t /.$setResult($_LEAST);./
    Keyword ::= l e v e l /.$setResult($_LEVEL);./
    Keyword ::= l i m i t /.$setResult($_LIMIT);./
    Keyword ::= l o c a l /.$setResult($_LOCAL);./
    Keyword ::= l o g i n /.$setResult($_LOGIN);./
    Keyword ::= m a t c h /.$setResult($_MATCH);./
    Keyword ::= m e r g e /.$setResult($_MERGE);./
    Keyword ::= m o n t h /.$setResult($_MONTH);./
    Keyword ::= n a m e s /.$setResult($_NAMES);./
    Keyword ::= n e v e r /.$setResult($_NEVER);./
    Keyword ::= n u l l s /.$setResult($_NULLS);./
    Keyword ::= o r d e r /.$setResult($_ORDER);./
    Keyword ::= o u t e r /.$setResult($_OUTER);./
    Keyword ::= o w n e d /.$setResult($_OWNED);./
    Keyword ::= o w n e r /.$setResult($_OWNER);./
    Keyword ::= p a u s e /.$setResult($_PAUSE);./
    Keyword ::= p l a n s /.$setResult($_PLANS);./
    Keyword ::= p o i n t /.$setResult($_POINT);./
    Keyword ::= p r i o r /.$setResult($_PRIOR);./
    Keyword ::= q u e r y /.$setResult($_QUERY);./
    Keyword ::= q u o t e /.$setResult($_QUOTE);./
    Keyword ::= r a n g e /.$setResult($_RANGE);./
    Keyword ::= r e s e t /.$setResult($_RESET);./
    Keyword ::= r i g h t /.$setResult($_RIGHT);./
    Keyword ::= r o l e s /.$setResult($_ROLES);./
    Keyword ::= s c a n s /.$setResult($_SCANS);./
    Keyword ::= s c r u b /.$setResult($_SCRUB);./
    Keyword ::= s e t o f /.$setResult($_SETOF);./
    Keyword ::= s h a r e /.$setResult($_SHARE);./
    Keyword ::= s o u c e /.$setResult($_SOUCE);./
    Keyword ::= s p l i t /.$setResult($_SPLIT);./
    Keyword ::= s t a r t /.$setResult($_START);./
    Keyword ::= s t a t e /.$setResult($_STATE);./
    Keyword ::= s t d i n /.$setResult($_STDIN);./
    Keyword ::= s t o r e /.$setResult($_STORE);./
    Keyword ::= s u p e r /.$setResult($_SUPER);./
    Keyword ::= t a b l e /.$setResult($_TABLE);./
    Keyword ::= t r a c e /.$setResult($_TRACE);./
    Keyword ::= t r e a t /.$setResult($_TREAT);./
    Keyword ::= t y p e s /.$setResult($_TYPES);./
    Keyword ::= u n i o n /.$setResult($_UNION);./
    Keyword ::= u n s e t /.$setResult($_UNSET);./
    Keyword ::= u n t i l /.$setResult($_UNTIL);./
    Keyword ::= u s e r s /.$setResult($_USERS);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= v a l i d /.$setResult($_VALID);./
    Keyword ::= v a l u e /.$setResult($_VALUE);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= w r i t e /.$setResult($_WRITE);./
    Keyword ::= b o t h /.$setResult($_BOTH);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c a s t /.$setResult($_CAST);./
    Keyword ::= c b r t /.$setResult($_CBRT);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= c o p y /.$setResult($_COPY);./
    Keyword ::= c o s t /.$setResult($_COST);./
    Keyword ::= c u b e /.$setResult($_CUBE);./
    Keyword ::= d a t a /.$setResult($_DATA);./
    Keyword ::= d a t e /.$setResult($_DATE);./
    Keyword ::= d e s c /.$setResult($_DESC);./
    Keyword ::= d r o p /.$setResult($_DROP);./
    Keyword ::= e a c h /.$setResult($_EACH);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e n u m /.$setResult($_ENUM);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= f u l l /.$setResult($_FULL);./
    Keyword ::= g o a l /.$setResult($_GOAL);./
    Keyword ::= h i g h /.$setResult($_HIGH);./
    Keyword ::= h o l d /.$setResult($_HOLD);./
    Keyword ::= h o u r /.$setResult($_HOUR);./
    Keyword ::= i n t o /.$setResult($_INTO);./
    Keyword ::= j o b s /.$setResult($_JOBS);./
    Keyword ::= j o i n /.$setResult($_JOIN);./
    Keyword ::= j s o n /.$setResult($_JSON);./
    Keyword ::= k e y s /.$setResult($_KEYS);./
    Keyword ::= l a s t /.$setResult($_LAST);./
    Keyword ::= l e f t /.$setResult($_LEFT);./
    Keyword ::= l e s s /.$setResult($_LESS);./
    Keyword ::= l i k e /.$setResult($_LIKE);./
    Keyword ::= l i s t /.$setResult($_LIST);./
    Keyword ::= m o d e /.$setResult($_MODE);./
    Keyword ::= m o v e /.$setResult($_MOVE);./
    Keyword ::= n e x t /.$setResult($_NEXT);./
    Keyword ::= n o d e /.$setResult($_NODE);./
    Keyword ::= n o n e /.$setResult($_NONE);./
    Keyword ::= n o p t /.$setResult($_NOPT);./
    Keyword ::= n u l l /.$setResult($_NULL_);./
    Keyword ::= o i d s /.$setResult($_OIDS);./
    Keyword ::= o n l y /.$setResult($_ONLY);./
    Keyword ::= o v e r /.$setResult($_OVER);./
    Keyword ::= p l a n /.$setResult($_PLAN);./
    Keyword ::= r e a d /.$setResult($_READ);./
    Keyword ::= r o l e /.$setResult($_ROLE);./
    Keyword ::= r o w s /.$setResult($_ROWS);./
    Keyword ::= r u l e /.$setResult($_RULE);./
    Keyword ::= s e t s /.$setResult($_SETS);./
    Keyword ::= s h o w /.$setResult($_SHOW);./
    Keyword ::= s i z e /.$setResult($_SIZE);./
    Keyword ::= s k i p /.$setResult($_SKIP_);./
    Keyword ::= s o m e /.$setResult($_SOME);./
    Keyword ::= s q r t /.$setResult($_SQRT);./
    Keyword ::= s t o p /.$setResult($_STOP);./
    Keyword ::= t e m p /.$setResult($_TEMP);./
    Keyword ::= t e x t /.$setResult($_TEXT);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t i e s /.$setResult($_TIES);./
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
    Keyword ::= z o n e /.$setResult($_ZONE);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= a s c /.$setResult($_ASC);./
    Keyword ::= b i t /.$setResult($_BIT);./
    Keyword ::= c s v /.$setResult($_CSV);./
    Keyword ::= d a y /.$setResult($_DAY);./
    Keyword ::= d e c /.$setResult($_DEC);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= i n t /.$setResult($_INT_);./
    Keyword ::= j o b /.$setResult($_JOB);./
    Keyword ::= k e y /.$setResult($_KEY);./
    Keyword ::= k m s /.$setResult($_KMS);./
    Keyword ::= l o w /.$setResult($_LOW);./
    Keyword ::= n a n /.$setResult($_NAN_);./
    Keyword ::= n e w /.$setResult($_NEW);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= o f f /.$setResult($_OFF);./
    Keyword ::= o l d /.$setResult($_OLD);./
    Keyword ::= o p t /.$setResult($_OPT);./
    Keyword ::= o u t /.$setResult($_OUT);./
    Keyword ::= p e r /.$setResult($_PER);./
    Keyword ::= r e f /.$setResult($_REF);./
    Keyword ::= r o w /.$setResult($_ROW);./
    Keyword ::= r u n /.$setResult($_RUN);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= s q l /.$setResult($_SQL);./
    Keyword ::= u s e /.$setResult($_USE);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= k v /.$setResult($_KV);./
    Keyword ::= n o /.$setResult($_NO);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
    Keyword ::= b /.$setResult($_B_LETTER);./
%End
