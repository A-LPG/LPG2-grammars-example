-- Keyword filter for SqlStarrocks (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.sql.starrocks
%options template=KeywordTemplateF.gi
%options fp=SqlStarrocksKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ACCESS
    ACTIVE
    ADD
    ADMIN
    AFTER
    AGGREGATE
    ALL
    ALTER
    ANALYZE
    AND
    ANTI
    APPLY
    ARRAY
    AS
    ASC
    ASYNC
    AUTHENTICATION
    AUTHORS
    AVG
    BACKEND
    BACKENDS
    BACKUP
    BASE
    BEGIN
    BETWEEN
    BIGINT
    BINARY
    BITMAP
    BIT_SHIFT_LEFT
    BIT_SHIFT_RIGHT
    BIT_SHIFT_RIGHT_LOGICAL
    BLACKHOLE
    BLACKLIST
    BODY
    BOOLEAN
    BOTH
    BROKER
    BUCKETS
    BUILTIN
    BY
    CACHE
    CANCEL
    CASE
    CAST
    CATALOG
    CATALOGS
    CEIL
    CHAIN
    CHAR
    CHARACTER
    CHARSET
    CHECK
    CLEAN
    CLEAR
    CLUSTER
    CLUSTERS
    COLLATE
    COLLATION
    COLUMN
    COLUMNS
    COMMENT
    COMMIT
    COMMITTED
    COMPACT
    COMPACTION
    COMPUTE
    CONFIG
    CONNECTION
    CONSISTENT
    CONVERT
    COSTS
    COUNT
    CREATE
    CROSS
    CUBE
    CUMULATIVE
    CURRENT
    DATA
    DATABASE
    DATABASES
    DATACACHE
    DATE
    DATETIME
    DAY
    DEALLOCATE
    DECIMAL
    DECOMMISSION
    DEFAULT
    DEFERRED
    DELETE
    DESC
    DESCRIBE
    DICTIONARY
    DISABLE
    DISK
    DISTINCT
    DISTRIBUTED
    DISTRIBUTION
    DOUBLE
    DROP
    DUAL
    DUPLICATE
    DYNAMIC
    ELSE
    ENABLE
    ENCLOSE
    END
    ENGINE
    ENGINES
    ERRORS
    ESCAPE
    EVENTS
    EVERY
    EXCEPT
    EXECUTE
    EXISTS
    EXPLAIN
    EXPORT
    EXTERNAL
    EXTRACT
    FAILPOINT
    FAILPOINTS
    FALSE
    FIELD
    FIELDS
    FILE
    FILES
    FILTER
    FIRST
    FLOAT
    FLOOR
    FN
    FOLLOWER
    FOLLOWING
    FOR
    FORCE
    FORMAT
    FREE
    FROM
    FRONTEND
    FRONTENDS
    FULL
    FUNCTION
    FUNCTIONS
    GIN
    GLOBAL
    GRANT
    GRANTS
    GROUP
    GROUPING
    GROUPS
    HASH
    HAVING
    HELP
    HISTOGRAM
    HLL
    HOST
    HOUR
    HUB
    IDENTIFIED
    IF
    IGNORE
    IMAGE
    IMMEDIATE
    IMPERSONATE
    IN
    INACTIVE
    INCREMENTAL
    INDEX
    INDEXES
    INFILE
    INNER
    INSERT
    INSTALL
    INT
    INTEGER
    INTEGRATION
    INTEGRATIONS
    INTERMEDIATE
    INTERSECT
    INTERVAL
    INTO
    INT_DIV
    IS
    ISOLATION
    JOB
    JOIN
    JSON
    KEY
    KEYS
    KILL
    LABEL
    LAG
    LARGEINT
    LAST
    LATERAL
    LEAD
    LEFT
    LESS
    LEVEL
    LIKE
    LIMIT
    LIST
    LOAD
    LOCAL
    LOCALTIME
    LOCALTIMESTAMP
    LOCATION
    LOCATIONS
    LOCK
    LOGICAL
    LOGS
    MANUAL
    MAP
    MAPPING
    MAPPINGS
    MASKING
    MATCH
    MATERIALIZED
    MAX
    MAXVALUE
    MERGE
    META
    MICROSECOND
    MILLISECOND
    MIN
    MINUS
    MINUTE
    MOD
    MODE
    MODIFY
    MONTH
    NAME
    NAMES
    NEGATIVE
    NGRAMBF
    NO
    NODE
    NODES
    NONE
    NOT
    NTILE
    NULLS
    NULL_
    NUMBER
    NUMERIC
    OBSERVER
    OF
    OFFSET
    ON
    ONLY
    OPEN
    OPERATE
    OPTIMIZE
    OPTIMIZER
    OPTION
    OR
    ORDER
    OUTER
    OUTFILE
    OVER
    OVERWRITE
    PARTITION
    PARTITIONS
    PASSWORD
    PATH
    PAUSE
    PENDING
    PERCENTILE
    PIPE
    PIPES
    PIVOT
    PLUGIN
    PLUGINS
    POLICIES
    POLICY
    PRECEDING
    PREPARE
    PRIMARY
    PRIORITY
    PRIVILEGES
    PROBABILITY
    PROC
    PROCEDURE
    PROCESSLIST
    PROFILE
    PROFILELIST
    PROPERTIES
    PROPERTY
    QUALIFY
    QUARTER
    QUERIES
    QUERY
    QUEUE
    QUOTA
    RANDOM
    RANGE
    RANK
    READ
    REASON
    RECOVER
    REFRESH
    REGEXP
    RELEASE
    REMOVE
    RENAME
    REPAIR
    REPEATABLE
    REPLACE
    REPLICA
    REPOSITORIES
    REPOSITORY
    RESOURCE
    RESOURCES
    RESTORE
    RESUME
    RETRY
    RETURNS
    REVERT
    REVOKE
    REWRITE
    RIGHT
    RLIKE
    ROLE
    ROLES
    ROLLBACK
    ROLLUP
    ROUTINE
    ROW
    ROWS
    RULE
    RULES
    RUNNING
    SAMPLE
    SCHEDULE
    SCHEDULER
    SCHEMA
    SCHEMAS
    SECOND
    SECURITY
    SELECT
    SEMI
    SEPARATOR
    SERIALIZABLE
    SESSION
    SET
    SETS
    SHOW
    SIGNED
    SMALLINT
    SNAPSHOT
    SQLBLACKLIST
    START
    STATS
    STATUS
    STOP
    STORAGE
    STREAM
    STRING
    STRUCT
    SUBMIT
    SUM
    SUSPEND
    SWAP
    SYNC
    SYSTEM
    TABLE
    TABLES
    TABLET
    TABLETS
    TASK
    TEMPORARY
    TERMINATED
    TEXT
    THAN
    THEN
    TIME
    TIMES
    TIMESTAMP
    TIMESTAMPADD
    TIMESTAMPDIFF
    TINYINT
    TO
    TRACE
    TRANSACTION
    TRIGGERS
    TRUE
    TRUNCATE
    TYPE
    TYPES
    UNBOUNDED
    UNCOMMITTED
    UNINSTALL
    UNION
    UNIQUE
    UNLOCK
    UNSET
    UNSIGNED
    UPDATE
    USAGE
    USE
    USER
    USERS
    USING
    VALUE
    VALUES
    VARBINARY
    VARCHAR
    VARIABLES
    VERBOSE
    VERSION
    VIEW
    VIEWS
    VOLUME
    VOLUMES
    WAREHOUSE
    WAREHOUSES
    WARNINGS
    WEEK
    WHEN
    WHERE
    WHITELIST
    WITH
    WORK
    WRITE
    YEAR
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= b i t s h i f t r i g h t l o g i c a l /.$setResult($_BIT_SHIFT_RIGHT_LOGICAL);./
    Keyword ::= a u t h e n t i c a t i o n /.$setResult($_AUTHENTICATION);./
    Keyword ::= l o c a l t i m e s t a m p /.$setResult($_LOCALTIMESTAMP);./
    Keyword ::= b i t s h i f t r i g h t /.$setResult($_BIT_SHIFT_RIGHT);./
    Keyword ::= t i m e s t a m p d i f f /.$setResult($_TIMESTAMPDIFF);./
    Keyword ::= b i t s h i f t l e f t /.$setResult($_BIT_SHIFT_LEFT);./
    Keyword ::= d e c o m m i s s i o n /.$setResult($_DECOMMISSION);./
    Keyword ::= d i s t r i b u t i o n /.$setResult($_DISTRIBUTION);./
    Keyword ::= i n t e g r a t i o n s /.$setResult($_INTEGRATIONS);./
    Keyword ::= i n t e r m e d i a t e /.$setResult($_INTERMEDIATE);./
    Keyword ::= m a t e r i a l i z e d /.$setResult($_MATERIALIZED);./
    Keyword ::= r e p o s i t o r i e s /.$setResult($_REPOSITORIES);./
    Keyword ::= s e r i a l i z a b l e /.$setResult($_SERIALIZABLE);./
    Keyword ::= s q l b l a c k l i s t /.$setResult($_SQLBLACKLIST);./
    Keyword ::= t i m e s t a m p a d d /.$setResult($_TIMESTAMPADD);./
    Keyword ::= d i s t r i b u t e d /.$setResult($_DISTRIBUTED);./
    Keyword ::= i m p e r s o n a t e /.$setResult($_IMPERSONATE);./
    Keyword ::= i n c r e m e n t a l /.$setResult($_INCREMENTAL);./
    Keyword ::= i n t e g r a t i o n /.$setResult($_INTEGRATION);./
    Keyword ::= m i c r o s e c o n d /.$setResult($_MICROSECOND);./
    Keyword ::= m i l l i s e c o n d /.$setResult($_MILLISECOND);./
    Keyword ::= p r o b a b i l i t y /.$setResult($_PROBABILITY);./
    Keyword ::= p r o c e s s l i s t /.$setResult($_PROCESSLIST);./
    Keyword ::= p r o f i l e l i s t /.$setResult($_PROFILELIST);./
    Keyword ::= t r a n s a c t i o n /.$setResult($_TRANSACTION);./
    Keyword ::= u n c o m m i t t e d /.$setResult($_UNCOMMITTED);./
    Keyword ::= c o m p a c t i o n /.$setResult($_COMPACTION);./
    Keyword ::= c o n n e c t i o n /.$setResult($_CONNECTION);./
    Keyword ::= c o n s i s t e n t /.$setResult($_CONSISTENT);./
    Keyword ::= c u m u l a t i v e /.$setResult($_CUMULATIVE);./
    Keyword ::= d e a l l o c a t e /.$setResult($_DEALLOCATE);./
    Keyword ::= d i c t i o n a r y /.$setResult($_DICTIONARY);./
    Keyword ::= f a i l p o i n t s /.$setResult($_FAILPOINTS);./
    Keyword ::= i d e n t i f i e d /.$setResult($_IDENTIFIED);./
    Keyword ::= p a r t i t i o n s /.$setResult($_PARTITIONS);./
    Keyword ::= p e r c e n t i l e /.$setResult($_PERCENTILE);./
    Keyword ::= p r i v i l e g e s /.$setResult($_PRIVILEGES);./
    Keyword ::= p r o p e r t i e s /.$setResult($_PROPERTIES);./
    Keyword ::= r e p e a t a b l e /.$setResult($_REPEATABLE);./
    Keyword ::= r e p o s i t o r y /.$setResult($_REPOSITORY);./
    Keyword ::= t e r m i n a t e d /.$setResult($_TERMINATED);./
    Keyword ::= w a r e h o u s e s /.$setResult($_WAREHOUSES);./
    Keyword ::= a g g r e g a t e /.$setResult($_AGGREGATE);./
    Keyword ::= b l a c k h o l e /.$setResult($_BLACKHOLE);./
    Keyword ::= b l a c k l i s t /.$setResult($_BLACKLIST);./
    Keyword ::= c h a r a c t e r /.$setResult($_CHARACTER);./
    Keyword ::= c o l l a t i o n /.$setResult($_COLLATION);./
    Keyword ::= c o m m i t t e d /.$setResult($_COMMITTED);./
    Keyword ::= d a t a b a s e s /.$setResult($_DATABASES);./
    Keyword ::= d a t a c a c h e /.$setResult($_DATACACHE);./
    Keyword ::= d u p l i c a t e /.$setResult($_DUPLICATE);./
    Keyword ::= f a i l p o i n t /.$setResult($_FAILPOINT);./
    Keyword ::= f o l l o w i n g /.$setResult($_FOLLOWING);./
    Keyword ::= f r o n t e n d s /.$setResult($_FRONTENDS);./
    Keyword ::= f u n c t i o n s /.$setResult($_FUNCTIONS);./
    Keyword ::= h i s t o g r a m /.$setResult($_HISTOGRAM);./
    Keyword ::= i m m e d i a t e /.$setResult($_IMMEDIATE);./
    Keyword ::= i n t e r s e c t /.$setResult($_INTERSECT);./
    Keyword ::= i s o l a t i o n /.$setResult($_ISOLATION);./
    Keyword ::= l o c a l t i m e /.$setResult($_LOCALTIME);./
    Keyword ::= l o c a t i o n s /.$setResult($_LOCATIONS);./
    Keyword ::= o p t i m i z e r /.$setResult($_OPTIMIZER);./
    Keyword ::= o v e r w r i t e /.$setResult($_OVERWRITE);./
    Keyword ::= p a r t i t i o n /.$setResult($_PARTITION);./
    Keyword ::= p r e c e d i n g /.$setResult($_PRECEDING);./
    Keyword ::= p r o c e d u r e /.$setResult($_PROCEDURE);./
    Keyword ::= r e s o u r c e s /.$setResult($_RESOURCES);./
    Keyword ::= s c h e d u l e r /.$setResult($_SCHEDULER);./
    Keyword ::= s e p a r a t o r /.$setResult($_SEPARATOR);./
    Keyword ::= t e m p o r a r y /.$setResult($_TEMPORARY);./
    Keyword ::= t i m e s t a m p /.$setResult($_TIMESTAMP);./
    Keyword ::= u n b o u n d e d /.$setResult($_UNBOUNDED);./
    Keyword ::= u n i n s t a l l /.$setResult($_UNINSTALL);./
    Keyword ::= v a r b i n a r y /.$setResult($_VARBINARY);./
    Keyword ::= v a r i a b l e s /.$setResult($_VARIABLES);./
    Keyword ::= w a r e h o u s e /.$setResult($_WAREHOUSE);./
    Keyword ::= w h i t e l i s t /.$setResult($_WHITELIST);./
    Keyword ::= b a c k e n d s /.$setResult($_BACKENDS);./
    Keyword ::= c a t a l o g s /.$setResult($_CATALOGS);./
    Keyword ::= c l u s t e r s /.$setResult($_CLUSTERS);./
    Keyword ::= d a t a b a s e /.$setResult($_DATABASE);./
    Keyword ::= d a t e t i m e /.$setResult($_DATETIME);./
    Keyword ::= d e f e r r e d /.$setResult($_DEFERRED);./
    Keyword ::= d e s c r i b e /.$setResult($_DESCRIBE);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT);./
    Keyword ::= e x t e r n a l /.$setResult($_EXTERNAL);./
    Keyword ::= f o l l o w e r /.$setResult($_FOLLOWER);./
    Keyword ::= f r o n t e n d /.$setResult($_FRONTEND);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= g r o u p i n g /.$setResult($_GROUPING);./
    Keyword ::= i n a c t i v e /.$setResult($_INACTIVE);./
    Keyword ::= i n t e r v a l /.$setResult($_INTERVAL);./
    Keyword ::= l a r g e i n t /.$setResult($_LARGEINT);./
    Keyword ::= l o c a t i o n /.$setResult($_LOCATION);./
    Keyword ::= m a p p i n g s /.$setResult($_MAPPINGS);./
    Keyword ::= m a x v a l u e /.$setResult($_MAXVALUE);./
    Keyword ::= n e g a t i v e /.$setResult($_NEGATIVE);./
    Keyword ::= o b s e r v e r /.$setResult($_OBSERVER);./
    Keyword ::= o p t i m i z e /.$setResult($_OPTIMIZE);./
    Keyword ::= p a s s w o r d /.$setResult($_PASSWORD);./
    Keyword ::= p o l i c i e s /.$setResult($_POLICIES);./
    Keyword ::= p r i o r i t y /.$setResult($_PRIORITY);./
    Keyword ::= p r o p e r t y /.$setResult($_PROPERTY);./
    Keyword ::= r e s o u r c e /.$setResult($_RESOURCE);./
    Keyword ::= r o l l b a c k /.$setResult($_ROLLBACK);./
    Keyword ::= s c h e d u l e /.$setResult($_SCHEDULE);./
    Keyword ::= s e c u r i t y /.$setResult($_SECURITY);./
    Keyword ::= s m a l l i n t /.$setResult($_SMALLINT);./
    Keyword ::= s n a p s h o t /.$setResult($_SNAPSHOT);./
    Keyword ::= t r i g g e r s /.$setResult($_TRIGGERS);./
    Keyword ::= t r u n c a t e /.$setResult($_TRUNCATE);./
    Keyword ::= u n s i g n e d /.$setResult($_UNSIGNED);./
    Keyword ::= w a r n i n g s /.$setResult($_WARNINGS);./
    Keyword ::= a n a l y z e /.$setResult($_ANALYZE);./
    Keyword ::= a u t h o r s /.$setResult($_AUTHORS);./
    Keyword ::= b a c k e n d /.$setResult($_BACKEND);./
    Keyword ::= b e t w e e n /.$setResult($_BETWEEN);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= b u c k e t s /.$setResult($_BUCKETS);./
    Keyword ::= b u i l t i n /.$setResult($_BUILTIN);./
    Keyword ::= c a t a l o g /.$setResult($_CATALOG);./
    Keyword ::= c h a r s e t /.$setResult($_CHARSET);./
    Keyword ::= c l u s t e r /.$setResult($_CLUSTER);./
    Keyword ::= c o l l a t e /.$setResult($_COLLATE);./
    Keyword ::= c o l u m n s /.$setResult($_COLUMNS);./
    Keyword ::= c o m m e n t /.$setResult($_COMMENT);./
    Keyword ::= c o m p a c t /.$setResult($_COMPACT);./
    Keyword ::= c o m p u t e /.$setResult($_COMPUTE);./
    Keyword ::= c o n v e r t /.$setResult($_CONVERT);./
    Keyword ::= c u r r e n t /.$setResult($_CURRENT);./
    Keyword ::= d e c i m a l /.$setResult($_DECIMAL);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= d i s a b l e /.$setResult($_DISABLE);./
    Keyword ::= d y n a m i c /.$setResult($_DYNAMIC);./
    Keyword ::= e n c l o s e /.$setResult($_ENCLOSE);./
    Keyword ::= e n g i n e s /.$setResult($_ENGINES);./
    Keyword ::= e x e c u t e /.$setResult($_EXECUTE);./
    Keyword ::= e x p l a i n /.$setResult($_EXPLAIN);./
    Keyword ::= e x t r a c t /.$setResult($_EXTRACT);./
    Keyword ::= i n d e x e s /.$setResult($_INDEXES);./
    Keyword ::= i n s t a l l /.$setResult($_INSTALL);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= l a t e r a l /.$setResult($_LATERAL);./
    Keyword ::= l o g i c a l /.$setResult($_LOGICAL);./
    Keyword ::= m a p p i n g /.$setResult($_MAPPING);./
    Keyword ::= m a s k i n g /.$setResult($_MASKING);./
    Keyword ::= n g r a m b f /.$setResult($_NGRAMBF);./
    Keyword ::= n u m e r i c /.$setResult($_NUMERIC);./
    Keyword ::= o p e r a t e /.$setResult($_OPERATE);./
    Keyword ::= o u t f i l e /.$setResult($_OUTFILE);./
    Keyword ::= p e n d i n g /.$setResult($_PENDING);./
    Keyword ::= p l u g i n s /.$setResult($_PLUGINS);./
    Keyword ::= p r e p a r e /.$setResult($_PREPARE);./
    Keyword ::= p r i m a r y /.$setResult($_PRIMARY);./
    Keyword ::= p r o f i l e /.$setResult($_PROFILE);./
    Keyword ::= q u a l i f y /.$setResult($_QUALIFY);./
    Keyword ::= q u a r t e r /.$setResult($_QUARTER);./
    Keyword ::= q u e r i e s /.$setResult($_QUERIES);./
    Keyword ::= r e c o v e r /.$setResult($_RECOVER);./
    Keyword ::= r e f r e s h /.$setResult($_REFRESH);./
    Keyword ::= r e l e a s e /.$setResult($_RELEASE);./
    Keyword ::= r e p l a c e /.$setResult($_REPLACE);./
    Keyword ::= r e p l i c a /.$setResult($_REPLICA);./
    Keyword ::= r e s t o r e /.$setResult($_RESTORE);./
    Keyword ::= r e t u r n s /.$setResult($_RETURNS);./
    Keyword ::= r e w r i t e /.$setResult($_REWRITE);./
    Keyword ::= r o u t i n e /.$setResult($_ROUTINE);./
    Keyword ::= r u n n i n g /.$setResult($_RUNNING);./
    Keyword ::= s c h e m a s /.$setResult($_SCHEMAS);./
    Keyword ::= s e s s i o n /.$setResult($_SESSION);./
    Keyword ::= s t o r a g e /.$setResult($_STORAGE);./
    Keyword ::= s u s p e n d /.$setResult($_SUSPEND);./
    Keyword ::= t a b l e t s /.$setResult($_TABLETS);./
    Keyword ::= t i n y i n t /.$setResult($_TINYINT);./
    Keyword ::= v a r c h a r /.$setResult($_VARCHAR);./
    Keyword ::= v e r b o s e /.$setResult($_VERBOSE);./
    Keyword ::= v e r s i o n /.$setResult($_VERSION);./
    Keyword ::= v o l u m e s /.$setResult($_VOLUMES);./
    Keyword ::= a c c e s s /.$setResult($_ACCESS);./
    Keyword ::= a c t i v e /.$setResult($_ACTIVE);./
    Keyword ::= b a c k u p /.$setResult($_BACKUP);./
    Keyword ::= b i g i n t /.$setResult($_BIGINT);./
    Keyword ::= b i n a r y /.$setResult($_BINARY);./
    Keyword ::= b i t m a p /.$setResult($_BITMAP);./
    Keyword ::= b r o k e r /.$setResult($_BROKER);./
    Keyword ::= c a n c e l /.$setResult($_CANCEL);./
    Keyword ::= c o l u m n /.$setResult($_COLUMN);./
    Keyword ::= c o m m i t /.$setResult($_COMMIT);./
    Keyword ::= c o n f i g /.$setResult($_CONFIG);./
    Keyword ::= c r e a t e /.$setResult($_CREATE);./
    Keyword ::= d e l e t e /.$setResult($_DELETE);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= e n a b l e /.$setResult($_ENABLE);./
    Keyword ::= e n g i n e /.$setResult($_ENGINE);./
    Keyword ::= e r r o r s /.$setResult($_ERRORS);./
    Keyword ::= e s c a p e /.$setResult($_ESCAPE);./
    Keyword ::= e v e n t s /.$setResult($_EVENTS);./
    Keyword ::= e x c e p t /.$setResult($_EXCEPT);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS);./
    Keyword ::= e x p o r t /.$setResult($_EXPORT);./
    Keyword ::= f i e l d s /.$setResult($_FIELDS);./
    Keyword ::= f i l t e r /.$setResult($_FILTER);./
    Keyword ::= f o r m a t /.$setResult($_FORMAT);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= g r a n t s /.$setResult($_GRANTS);./
    Keyword ::= g r o u p s /.$setResult($_GROUPS);./
    Keyword ::= h a v i n g /.$setResult($_HAVING);./
    Keyword ::= i g n o r e /.$setResult($_IGNORE);./
    Keyword ::= i n f i l e /.$setResult($_INFILE);./
    Keyword ::= i n s e r t /.$setResult($_INSERT);./
    Keyword ::= m a n u a l /.$setResult($_MANUAL);./
    Keyword ::= m i n u t e /.$setResult($_MINUTE);./
    Keyword ::= m o d i f y /.$setResult($_MODIFY);./
    Keyword ::= n u m b e r /.$setResult($_NUMBER);./
    Keyword ::= o f f s e t /.$setResult($_OFFSET);./
    Keyword ::= o p t i o n /.$setResult($_OPTION);./
    Keyword ::= p l u g i n /.$setResult($_PLUGIN);./
    Keyword ::= p o l i c y /.$setResult($_POLICY);./
    Keyword ::= r a n d o m /.$setResult($_RANDOM);./
    Keyword ::= r e a s o n /.$setResult($_REASON);./
    Keyword ::= r e g e x p /.$setResult($_REGEXP);./
    Keyword ::= r e m o v e /.$setResult($_REMOVE);./
    Keyword ::= r e n a m e /.$setResult($_RENAME);./
    Keyword ::= r e p a i r /.$setResult($_REPAIR);./
    Keyword ::= r e s u m e /.$setResult($_RESUME);./
    Keyword ::= r e v e r t /.$setResult($_REVERT);./
    Keyword ::= r e v o k e /.$setResult($_REVOKE);./
    Keyword ::= r o l l u p /.$setResult($_ROLLUP);./
    Keyword ::= s a m p l e /.$setResult($_SAMPLE);./
    Keyword ::= s c h e m a /.$setResult($_SCHEMA);./
    Keyword ::= s e c o n d /.$setResult($_SECOND);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s i g n e d /.$setResult($_SIGNED);./
    Keyword ::= s t a t u s /.$setResult($_STATUS);./
    Keyword ::= s t r e a m /.$setResult($_STREAM);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= s t r u c t /.$setResult($_STRUCT);./
    Keyword ::= s u b m i t /.$setResult($_SUBMIT);./
    Keyword ::= s y s t e m /.$setResult($_SYSTEM);./
    Keyword ::= t a b l e s /.$setResult($_TABLES);./
    Keyword ::= t a b l e t /.$setResult($_TABLET);./
    Keyword ::= u n i q u e /.$setResult($_UNIQUE);./
    Keyword ::= u n l o c k /.$setResult($_UNLOCK);./
    Keyword ::= u p d a t e /.$setResult($_UPDATE);./
    Keyword ::= v a l u e s /.$setResult($_VALUES);./
    Keyword ::= v o l u m e /.$setResult($_VOLUME);./
    Keyword ::= a d m i n /.$setResult($_ADMIN);./
    Keyword ::= a f t e r /.$setResult($_AFTER);./
    Keyword ::= a l t e r /.$setResult($_ALTER);./
    Keyword ::= a p p l y /.$setResult($_APPLY);./
    Keyword ::= a r r a y /.$setResult($_ARRAY);./
    Keyword ::= a s y n c /.$setResult($_ASYNC);./
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
    Keyword ::= c a c h e /.$setResult($_CACHE);./
    Keyword ::= c h a i n /.$setResult($_CHAIN);./
    Keyword ::= c h e c k /.$setResult($_CHECK);./
    Keyword ::= c l e a n /.$setResult($_CLEAN);./
    Keyword ::= c l e a r /.$setResult($_CLEAR);./
    Keyword ::= c o s t s /.$setResult($_COSTS);./
    Keyword ::= c o u n t /.$setResult($_COUNT);./
    Keyword ::= c r o s s /.$setResult($_CROSS);./
    Keyword ::= e v e r y /.$setResult($_EVERY);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f i e l d /.$setResult($_FIELD);./
    Keyword ::= f i l e s /.$setResult($_FILES);./
    Keyword ::= f i r s t /.$setResult($_FIRST);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= f l o o r /.$setResult($_FLOOR);./
    Keyword ::= f o r c e /.$setResult($_FORCE);./
    Keyword ::= g r a n t /.$setResult($_GRANT);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= i m a g e /.$setResult($_IMAGE);./
    Keyword ::= i n d e x /.$setResult($_INDEX);./
    Keyword ::= i n n e r /.$setResult($_INNER);./
    Keyword ::= l a b e l /.$setResult($_LABEL);./
    Keyword ::= l e v e l /.$setResult($_LEVEL);./
    Keyword ::= l i m i t /.$setResult($_LIMIT);./
    Keyword ::= l o c a l /.$setResult($_LOCAL);./
    Keyword ::= m a t c h /.$setResult($_MATCH);./
    Keyword ::= m e r g e /.$setResult($_MERGE);./
    Keyword ::= m i n u s /.$setResult($_MINUS);./
    Keyword ::= m o n t h /.$setResult($_MONTH);./
    Keyword ::= n a m e s /.$setResult($_NAMES);./
    Keyword ::= n o d e s /.$setResult($_NODES);./
    Keyword ::= n t i l e /.$setResult($_NTILE);./
    Keyword ::= n u l l s /.$setResult($_NULLS);./
    Keyword ::= o r d e r /.$setResult($_ORDER);./
    Keyword ::= o u t e r /.$setResult($_OUTER);./
    Keyword ::= p a u s e /.$setResult($_PAUSE);./
    Keyword ::= p i p e s /.$setResult($_PIPES);./
    Keyword ::= p i v o t /.$setResult($_PIVOT);./
    Keyword ::= q u e r y /.$setResult($_QUERY);./
    Keyword ::= q u e u e /.$setResult($_QUEUE);./
    Keyword ::= q u o t a /.$setResult($_QUOTA);./
    Keyword ::= r a n g e /.$setResult($_RANGE);./
    Keyword ::= r e t r y /.$setResult($_RETRY);./
    Keyword ::= r i g h t /.$setResult($_RIGHT);./
    Keyword ::= r l i k e /.$setResult($_RLIKE);./
    Keyword ::= r o l e s /.$setResult($_ROLES);./
    Keyword ::= r u l e s /.$setResult($_RULES);./
    Keyword ::= s t a r t /.$setResult($_START);./
    Keyword ::= s t a t s /.$setResult($_STATS);./
    Keyword ::= t a b l e /.$setResult($_TABLE);./
    Keyword ::= t i m e s /.$setResult($_TIMES);./
    Keyword ::= t r a c e /.$setResult($_TRACE);./
    Keyword ::= t y p e s /.$setResult($_TYPES);./
    Keyword ::= u n i o n /.$setResult($_UNION);./
    Keyword ::= u n s e t /.$setResult($_UNSET);./
    Keyword ::= u s a g e /.$setResult($_USAGE);./
    Keyword ::= u s e r s /.$setResult($_USERS);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= v a l u e /.$setResult($_VALUE);./
    Keyword ::= v i e w s /.$setResult($_VIEWS);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= w r i t e /.$setResult($_WRITE);./
    Keyword ::= a n t i /.$setResult($_ANTI);./
    Keyword ::= b a s e /.$setResult($_BASE);./
    Keyword ::= b o d y /.$setResult($_BODY);./
    Keyword ::= b o t h /.$setResult($_BOTH);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c a s t /.$setResult($_CAST);./
    Keyword ::= c e i l /.$setResult($_CEIL);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= c u b e /.$setResult($_CUBE);./
    Keyword ::= d a t a /.$setResult($_DATA);./
    Keyword ::= d a t e /.$setResult($_DATE);./
    Keyword ::= d e s c /.$setResult($_DESC);./
    Keyword ::= d i s k /.$setResult($_DISK);./
    Keyword ::= d r o p /.$setResult($_DROP);./
    Keyword ::= d u a l /.$setResult($_DUAL);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= f i l e /.$setResult($_FILE);./
    Keyword ::= f r e e /.$setResult($_FREE);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= f u l l /.$setResult($_FULL);./
    Keyword ::= h a s h /.$setResult($_HASH);./
    Keyword ::= h e l p /.$setResult($_HELP);./
    Keyword ::= h o s t /.$setResult($_HOST);./
    Keyword ::= h o u r /.$setResult($_HOUR);./
    Keyword ::= i n t o /.$setResult($_INTO);./
    Keyword ::= j o i n /.$setResult($_JOIN);./
    Keyword ::= j s o n /.$setResult($_JSON);./
    Keyword ::= k e y s /.$setResult($_KEYS);./
    Keyword ::= k i l l /.$setResult($_KILL);./
    Keyword ::= l a s t /.$setResult($_LAST);./
    Keyword ::= l e a d /.$setResult($_LEAD);./
    Keyword ::= l e f t /.$setResult($_LEFT);./
    Keyword ::= l e s s /.$setResult($_LESS);./
    Keyword ::= l i k e /.$setResult($_LIKE);./
    Keyword ::= l i s t /.$setResult($_LIST);./
    Keyword ::= l o a d /.$setResult($_LOAD);./
    Keyword ::= l o c k /.$setResult($_LOCK);./
    Keyword ::= l o g s /.$setResult($_LOGS);./
    Keyword ::= m e t a /.$setResult($_META);./
    Keyword ::= m o d e /.$setResult($_MODE);./
    Keyword ::= n a m e /.$setResult($_NAME);./
    Keyword ::= n o d e /.$setResult($_NODE);./
    Keyword ::= n o n e /.$setResult($_NONE);./
    Keyword ::= n u l l /.$setResult($_NULL_);./
    Keyword ::= o n l y /.$setResult($_ONLY);./
    Keyword ::= o p e n /.$setResult($_OPEN);./
    Keyword ::= o v e r /.$setResult($_OVER);./
    Keyword ::= p a t h /.$setResult($_PATH);./
    Keyword ::= p i p e /.$setResult($_PIPE);./
    Keyword ::= p r o c /.$setResult($_PROC);./
    Keyword ::= r a n k /.$setResult($_RANK);./
    Keyword ::= r e a d /.$setResult($_READ);./
    Keyword ::= r o l e /.$setResult($_ROLE);./
    Keyword ::= r o w s /.$setResult($_ROWS);./
    Keyword ::= r u l e /.$setResult($_RULE);./
    Keyword ::= s e m i /.$setResult($_SEMI);./
    Keyword ::= s e t s /.$setResult($_SETS);./
    Keyword ::= s h o w /.$setResult($_SHOW);./
    Keyword ::= s t o p /.$setResult($_STOP);./
    Keyword ::= s w a p /.$setResult($_SWAP);./
    Keyword ::= s y n c /.$setResult($_SYNC);./
    Keyword ::= t a s k /.$setResult($_TASK);./
    Keyword ::= t e x t /.$setResult($_TEXT);./
    Keyword ::= t h a n /.$setResult($_THAN);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t i m e /.$setResult($_TIME);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= u s e r /.$setResult($_USER);./
    Keyword ::= v i e w /.$setResult($_VIEW);./
    Keyword ::= w e e k /.$setResult($_WEEK);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= w o r k /.$setResult($_WORK);./
    Keyword ::= y e a r /.$setResult($_YEAR);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a s c /.$setResult($_ASC);./
    Keyword ::= a v g /.$setResult($_AVG);./
    Keyword ::= d a y /.$setResult($_DAY);./
    Keyword ::= d i v /.$setResult($_INT_DIV);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= g i n /.$setResult($_GIN);./
    Keyword ::= h l l /.$setResult($_HLL);./
    Keyword ::= h u b /.$setResult($_HUB);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= j o b /.$setResult($_JOB);./
    Keyword ::= k e y /.$setResult($_KEY);./
    Keyword ::= l a g /.$setResult($_LAG);./
    Keyword ::= m a p /.$setResult($_MAP);./
    Keyword ::= m a x /.$setResult($_MAX);./
    Keyword ::= m i n /.$setResult($_MIN);./
    Keyword ::= m o d /.$setResult($_MOD);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= r o w /.$setResult($_ROW);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= s u m /.$setResult($_SUM);./
    Keyword ::= u s e /.$setResult($_USE);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= f n /.$setResult($_FN);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= n o /.$setResult($_NO);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
