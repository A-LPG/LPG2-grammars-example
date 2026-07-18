-- Keyword filter for SqlSnowflake (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.sql.snowflake
%options template=KeywordTemplateF.gi
%options fp=SqlSnowflakeKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ABORT
    ACCESS
    ACCOUNT
    ACCOUNTADMIN
    ACCOUNTS
    ACTION
    ADD
    AES
    AFTER
    ALERT
    ALERTS
    ALL
    ALTER
    AND
    ANY
    API
    APPEND
    APPLICATION
    APPLY
    ARRAY
    AS
    ASC
    ASOF
    ATTACH
    AT_KEYWORD
    AUTHORIZATION
    AUTHORIZATIONS
    AUTO
    AUTOCOMMIT
    AUTOINCREMENT
    AVG
    AVRO
    AZURE
    BASE64
    BEFORE
    BEGIN
    BERNOULLI
    BETWEEN
    BIGINT
    BINARY
    BLOCK
    BODY
    BOOLEAN
    BRANCHES
    BROTLI
    BY
    BYTEINT
    BZ2
    CA
    CALL
    CALLED
    CALLER
    CASCADE
    CASE
    CAST
    CEIL
    CHANGES
    CHANNELS
    CHAR
    CHARACTER
    CHARINDEX
    CHECK
    CHECKSUM
    CLONE
    CLUSTER
    CLUSTERING
    COALESCE
    COLLATE
    COLLECTION
    COLUMN
    COLUMNS
    COMMENT
    COMMIT
    COMPRESSION
    COMPUTE
    CONCAT
    CONDITION
    CONFIGURATION
    CONNECT
    CONNECTION
    CONNECTIONS
    CONSTRAINT
    CONTAINS
    CONTINUE
    COPY
    CORTEX
    COUNT
    CREATE
    CREDENTIALS
    CROSS
    CSV
    CUBE
    CURRENT
    CUSTOM
    DAILY
    DATA
    DATABASE
    DATABASES
    DATASET
    DATASETS
    DATE
    DATEADD
    DATEDIFF
    DATETIME
    DAYS
    DECIMAL_
    DECLARE
    DEFAULT
    DEFERRABLE
    DEFERRED
    DEFINE
    DEFINITION
    DEFLATE
    DELEGATED
    DELETE
    DELTA
    DESC
    DESCRIBE
    DIMENSIONS
    DIRECTED
    DIRECTION
    DIRECTORY
    DISABLE
    DISABLED
    DISTINCT
    DO
    DOUBLE
    DOWNSTREAM
    DROP
    DUMMY
    DYNAMIC
    ECONOMY
    EDITION
    ELSE
    EMAIL
    EMPTY_
    ENABLE
    ENABLED
    ENCODING
    ENCRYPTION
    END
    ENFORCED
    ENTERPRISE
    EQUALITY
    ESCAPE
    EVENT
    EXCEPT
    EXCHANGE
    EXCLUDE
    EXECUTION
    EXISTS
    EXPLAIN
    EXPR
    EXTENSION
    EXTERNAL
    FACTS
    FAILOVER
    FALSE
    FETCH
    FILE
    FILES
    FIRST
    FLATTEN
    FLOAT4
    FLOAT8
    FLOAT_
    FLOOR
    FOR
    FORCE
    FOREIGN
    FORMAT
    FORMATS
    FREQUENCY
    FROM
    FULL
    FUNCTION
    FUNCTIONS
    FUTURE
    GCS
    GENERIC
    GEO
    GEOGRAPHY
    GEOMETRY
    GET
    GETDATE
    GIT
    GLOBAL
    GRANT
    GRANTS
    GROUP
    GROUPING
    GROUPS
    GZIP
    HANDLER
    HASH
    HAVING
    HEADER
    HEADERS
    HEX
    HIGH
    HISTORY
    HOURS
    HYBRID
    IDENTIFIER
    IDENTITY
    IF
    IFF
    IFNULL
    IGNORE
    ILIKE
    IMAGE
    IMAGES
    IMMEDIATE
    IMMEDIATELY
    IMMUTABLE
    IMPLICIT
    IMPORT
    IMPORTED
    IMPORTS
    IN
    INCLUDE
    INCREMENT
    INCREMENTAL
    INDEX
    INDEXES
    INFORMATION
    INITIALIZE
    INITIALLY
    INNER
    INPUT
    INSERT
    INSTANCES
    INT
    INTEGER
    INTEGRATION
    INTEGRATIONS
    INTERSECT
    INTERVAL
    INTO
    IS
    JAVA
    JAVASCRIPT
    JOB
    JOBS
    JOIN
    JSON
    KEY
    KEYS
    LAG
    LANGUAGE
    LARGE
    LAST
    LATERAL
    LEAD
    LEFT
    LEN
    LENGTH
    LIKE
    LIMIT
    LINEAR
    LIST
    LISTAGG
    LISTING
    LOCAL
    LOCATION
    LOCKS
    LOOKER
    LOW
    LOWER
    LTRIM
    LZO
    MANAGE
    MANAGED
    MASKING
    MATCH
    MATCHED
    MATCHES
    MATERIALIZED
    MEASURES
    MEDIUM
    MEMOIZABLE
    MERGE
    METADATA
    METRIC
    METRICS
    MIN
    MINUS_
    MODE
    MODIFY
    MONITOR
    MONITORS
    MONTHLY
    MOVE
    NAME
    NATURAL
    NCHAR
    NETWORK
    NEVER
    NEXT
    NEXTVAL
    NO
    NONE
    NOORDER
    NORELY
    NOT
    NOTIFICATION
    NOTIFY
    NOVALIDATE
    NTILE
    NULLIF
    NULLS
    NULL_
    NUMBER
    NUMERIC
    NVARCHAR
    NVARCHAR2
    NVL
    NVL2
    OAUTH
    OAUTH2
    OBJECT
    OBJECTS
    OF
    OFFSET
    OKTA
    OLD
    OMIT
    ON
    ONE
    ONLY
    OPERATE
    OPTIMIZATION
    OPTION
    OR
    ORC
    ORDER
    ORGADMIN
    ORGANIZATION
    ORIGIN
    OUTBOUND
    OUTER
    OVER
    OVERRIDE
    OVERWRITE
    OWNER
    OWNERSHIP
    PACKAGE
    PACKAGES
    PARALLEL
    PARAMETERS
    PARQUET
    PARTIAL
    PARTITION
    PASSWORD
    PAST
    PATH_
    PATTERN
    PER
    PERCENT
    PIPE
    PIPES
    PIVOT
    POLICIES
    POLICY
    POOL
    PORT
    PREFIX
    PRIMARY
    PRIOR
    PRIORITY
    PRIVATE
    PRIVILEGES
    PROCEDURE
    PROCEDURES
    PROPERTY
    PROVIDER
    PUBLIC
    PURGE
    PUT
    PYTHON
    QUALIFY
    QUARTER
    QUERIES
    QUERY
    QUEUE
    RANK
    READ
    READER
    REAL_
    RECLUSTER
    RECURSIVE
    REFERENCES
    REFRESH
    REGION
    REGIONS
    RELATIONSHIPS
    RELY
    REMOVE
    RENAME
    REPEATABLE
    REPLACE
    REPLICA
    REPLICATION
    REPOSITORIES
    REPOSITORY
    RESET
    RESOURCE
    RESOURCES
    RESPECT
    RESTORE
    RESTRICT
    RESTRICTIONS
    RESULT
    RESUME
    RETRY
    RETURN
    RETURNS
    REVOKE
    RIGHT
    RLIKE
    ROLE
    ROLES
    ROLLBACK
    ROLLUP
    ROUND
    ROW
    ROWS
    RTRIM
    SAML2
    SAMPLE
    SCALE
    SCHEDULE
    SCHEMA
    SCHEMAS
    SCIM
    SEARCH
    SECONDARY
    SECRET
    SECRETS
    SECURE
    SECURITY
    SECURITYADMIN
    SEED
    SELECT
    SEMANTIC
    SEQUENCE
    SEQUENCES
    SERVICE
    SERVICES
    SESSION
    SET
    SETS
    SHARE
    SHARES
    SHOW
    SIMPLE
    SKIP_
    SMALL
    SMALLINT
    SNAPPY
    SNAPSHOT
    SOME
    SOURCE
    SPECIFICATION
    SPLIT
    SQL
    STAGE
    STAGES
    STANDARD
    START
    STARTS
    STATE
    STATEMENT
    STATS
    STATUS
    STORAGE
    STREAM
    STREAMS
    STRICT
    STRING_
    SUBSTR
    SUBSTRING
    SUM
    SUSPEND
    SUSPENDED
    SWAP
    SYNONYMS
    SYSADMIN
    SYSTEM
    TABLE
    TABLES
    TABLESAMPLE
    TABULAR
    TAG
    TAGS
    TASK
    TASKS
    TEMP
    TEMPORARY
    TERSE
    TEXT
    THEN
    TIME
    TIMEADD
    TIMEDIFF
    TIMESTAMP
    TIMESTAMPADD
    TIMESTAMPDIFF
    TIMEZONE
    TINYINT
    TO
    TOP
    TRANSACTION
    TRANSACTIONS
    TRANSIENT
    TRIGGERS
    TRIM
    TRUE
    TRUNC
    TRUNCATE
    TRUNCATECOLUMNS
    TYPE
    UNDROP
    UNION
    UNIQUE
    UNMATCHED
    UNPIVOT
    UNSET
    UPDATE
    UPPER
    URL
    USAGE
    USE
    USER
    USERADMIN
    USERNAME
    USERS
    USING
    UTF8
    VALIDATE
    VALUE
    VALUES
    VARBINARY
    VARCHAR
    VARIABLES
    VARIANT
    VECTOR
    VERSION
    VERSIONS
    VIEW
    VIEWS
    VISIBILITY
    VOLATILE
    VOLUME
    WAREHOUSE
    WAREHOUSES
    WEEKLY
    WHEN
    WHERE
    WITH
    WITHIN
    WORK
    WRITE
    X4LARGE
    X5LARGE
    X6LARGE
    XLARGE
    XML
    XSMALL
    XXLARGE
    XXXLARGE
    YEAR
    YEARLY
    ZSTD
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= t r u n c a t e c o l u m n s /.$setResult($_TRUNCATECOLUMNS);./
    Keyword ::= a u t h o r i z a t i o n s /.$setResult($_AUTHORIZATIONS);./
    Keyword ::= a u t h o r i z a t i o n /.$setResult($_AUTHORIZATION);./
    Keyword ::= a u t o i n c r e m e n t /.$setResult($_AUTOINCREMENT);./
    Keyword ::= c o n f i g u r a t i o n /.$setResult($_CONFIGURATION);./
    Keyword ::= r e l a t i o n s h i p s /.$setResult($_RELATIONSHIPS);./
    Keyword ::= s e c u r i t y a d m i n /.$setResult($_SECURITYADMIN);./
    Keyword ::= s p e c i f i c a t i o n /.$setResult($_SPECIFICATION);./
    Keyword ::= t i m e s t a m p d i f f /.$setResult($_TIMESTAMPDIFF);./
    Keyword ::= a c c o u n t a d m i n /.$setResult($_ACCOUNTADMIN);./
    Keyword ::= i n t e g r a t i o n s /.$setResult($_INTEGRATIONS);./
    Keyword ::= m a t e r i a l i z e d /.$setResult($_MATERIALIZED);./
    Keyword ::= n o t i f i c a t i o n /.$setResult($_NOTIFICATION);./
    Keyword ::= o p t i m i z a t i o n /.$setResult($_OPTIMIZATION);./
    Keyword ::= o r g a n i z a t i o n /.$setResult($_ORGANIZATION);./
    Keyword ::= r e p o s i t o r i e s /.$setResult($_REPOSITORIES);./
    Keyword ::= r e s t r i c t i o n s /.$setResult($_RESTRICTIONS);./
    Keyword ::= t i m e s t a m p a d d /.$setResult($_TIMESTAMPADD);./
    Keyword ::= t r a n s a c t i o n s /.$setResult($_TRANSACTIONS);./
    Keyword ::= a p p l i c a t i o n /.$setResult($_APPLICATION);./
    Keyword ::= c o m p r e s s i o n /.$setResult($_COMPRESSION);./
    Keyword ::= c o n n e c t i o n s /.$setResult($_CONNECTIONS);./
    Keyword ::= c r e d e n t i a l s /.$setResult($_CREDENTIALS);./
    Keyword ::= i m m e d i a t e l y /.$setResult($_IMMEDIATELY);./
    Keyword ::= i n c r e m e n t a l /.$setResult($_INCREMENTAL);./
    Keyword ::= i n f o r m a t i o n /.$setResult($_INFORMATION);./
    Keyword ::= i n t e g r a t i o n /.$setResult($_INTEGRATION);./
    Keyword ::= r e p l i c a t i o n /.$setResult($_REPLICATION);./
    Keyword ::= t a b l e s a m p l e /.$setResult($_TABLESAMPLE);./
    Keyword ::= t r a n s a c t i o n /.$setResult($_TRANSACTION);./
    Keyword ::= a u t o c o m m i t /.$setResult($_AUTOCOMMIT);./
    Keyword ::= c l u s t e r i n g /.$setResult($_CLUSTERING);./
    Keyword ::= c o l l e c t i o n /.$setResult($_COLLECTION);./
    Keyword ::= c o n n e c t i o n /.$setResult($_CONNECTION);./
    Keyword ::= c o n s t r a i n t /.$setResult($_CONSTRAINT);./
    Keyword ::= d e f e r r a b l e /.$setResult($_DEFERRABLE);./
    Keyword ::= d e f i n i t i o n /.$setResult($_DEFINITION);./
    Keyword ::= d i m e n s i o n s /.$setResult($_DIMENSIONS);./
    Keyword ::= d o w n s t r e a m /.$setResult($_DOWNSTREAM);./
    Keyword ::= e n c r y p t i o n /.$setResult($_ENCRYPTION);./
    Keyword ::= e n t e r p r i s e /.$setResult($_ENTERPRISE);./
    Keyword ::= i d e n t i f i e r /.$setResult($_IDENTIFIER);./
    Keyword ::= i n i t i a l i z e /.$setResult($_INITIALIZE);./
    Keyword ::= j a v a s c r i p t /.$setResult($_JAVASCRIPT);./
    Keyword ::= m e m o i z a b l e /.$setResult($_MEMOIZABLE);./
    Keyword ::= n o v a l i d a t e /.$setResult($_NOVALIDATE);./
    Keyword ::= p a r a m e t e r s /.$setResult($_PARAMETERS);./
    Keyword ::= p r i v i l e g e s /.$setResult($_PRIVILEGES);./
    Keyword ::= p r o c e d u r e s /.$setResult($_PROCEDURES);./
    Keyword ::= r e f e r e n c e s /.$setResult($_REFERENCES);./
    Keyword ::= r e p e a t a b l e /.$setResult($_REPEATABLE);./
    Keyword ::= r e p o s i t o r y /.$setResult($_REPOSITORY);./
    Keyword ::= v i s i b i l i t y /.$setResult($_VISIBILITY);./
    Keyword ::= w a r e h o u s e s /.$setResult($_WAREHOUSES);./
    Keyword ::= b e r n o u l l i /.$setResult($_BERNOULLI);./
    Keyword ::= c h a r a c t e r /.$setResult($_CHARACTER);./
    Keyword ::= c h a r i n d e x /.$setResult($_CHARINDEX);./
    Keyword ::= c o n d i t i o n /.$setResult($_CONDITION);./
    Keyword ::= d a t a b a s e s /.$setResult($_DATABASES);./
    Keyword ::= d e l e g a t e d /.$setResult($_DELEGATED);./
    Keyword ::= d i r e c t i o n /.$setResult($_DIRECTION);./
    Keyword ::= d i r e c t o r y /.$setResult($_DIRECTORY);./
    Keyword ::= e x e c u t i o n /.$setResult($_EXECUTION);./
    Keyword ::= e x t e n s i o n /.$setResult($_EXTENSION);./
    Keyword ::= f r e q u e n c y /.$setResult($_FREQUENCY);./
    Keyword ::= f u n c t i o n s /.$setResult($_FUNCTIONS);./
    Keyword ::= g e o g r a p h y /.$setResult($_GEOGRAPHY);./
    Keyword ::= i m m e d i a t e /.$setResult($_IMMEDIATE);./
    Keyword ::= i m m u t a b l e /.$setResult($_IMMUTABLE);./
    Keyword ::= i n c r e m e n t /.$setResult($_INCREMENT);./
    Keyword ::= i n i t i a l l y /.$setResult($_INITIALLY);./
    Keyword ::= i n s t a n c e s /.$setResult($_INSTANCES);./
    Keyword ::= i n t e r s e c t /.$setResult($_INTERSECT);./
    Keyword ::= n v a r c h a r 2 /.$setResult($_NVARCHAR2);./
    Keyword ::= o v e r w r i t e /.$setResult($_OVERWRITE);./
    Keyword ::= o w n e r s h i p /.$setResult($_OWNERSHIP);./
    Keyword ::= p a r t i t i o n /.$setResult($_PARTITION);./
    Keyword ::= p r o c e d u r e /.$setResult($_PROCEDURE);./
    Keyword ::= r e c l u s t e r /.$setResult($_RECLUSTER);./
    Keyword ::= r e c u r s i v e /.$setResult($_RECURSIVE);./
    Keyword ::= r e s o u r c e s /.$setResult($_RESOURCES);./
    Keyword ::= s e c o n d a r y /.$setResult($_SECONDARY);./
    Keyword ::= s e q u e n c e s /.$setResult($_SEQUENCES);./
    Keyword ::= s t a t e m e n t /.$setResult($_STATEMENT);./
    Keyword ::= s u b s t r i n g /.$setResult($_SUBSTRING);./
    Keyword ::= s u s p e n d e d /.$setResult($_SUSPENDED);./
    Keyword ::= t e m p o r a r y /.$setResult($_TEMPORARY);./
    Keyword ::= t i m e s t a m p /.$setResult($_TIMESTAMP);./
    Keyword ::= t r a n s i e n t /.$setResult($_TRANSIENT);./
    Keyword ::= u n m a t c h e d /.$setResult($_UNMATCHED);./
    Keyword ::= u s e r a d m i n /.$setResult($_USERADMIN);./
    Keyword ::= v a r b i n a r y /.$setResult($_VARBINARY);./
    Keyword ::= v a r i a b l e s /.$setResult($_VARIABLES);./
    Keyword ::= w a r e h o u s e /.$setResult($_WAREHOUSE);./
    Keyword ::= a c c o u n t s /.$setResult($_ACCOUNTS);./
    Keyword ::= b r a n c h e s /.$setResult($_BRANCHES);./
    Keyword ::= c h a n n e l s /.$setResult($_CHANNELS);./
    Keyword ::= c h e c k s u m /.$setResult($_CHECKSUM);./
    Keyword ::= c o a l e s c e /.$setResult($_COALESCE);./
    Keyword ::= c o n t a i n s /.$setResult($_CONTAINS);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= d a t a b a s e /.$setResult($_DATABASE);./
    Keyword ::= d a t a s e t s /.$setResult($_DATASETS);./
    Keyword ::= d a t e d i f f /.$setResult($_DATEDIFF);./
    Keyword ::= d a t e t i m e /.$setResult($_DATETIME);./
    Keyword ::= d e f e r r e d /.$setResult($_DEFERRED);./
    Keyword ::= d e s c r i b e /.$setResult($_DESCRIBE);./
    Keyword ::= d i r e c t e d /.$setResult($_DIRECTED);./
    Keyword ::= d i s a b l e d /.$setResult($_DISABLED);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT);./
    Keyword ::= e n c o d i n g /.$setResult($_ENCODING);./
    Keyword ::= e n f o r c e d /.$setResult($_ENFORCED);./
    Keyword ::= e q u a l i t y /.$setResult($_EQUALITY);./
    Keyword ::= e x c h a n g e /.$setResult($_EXCHANGE);./
    Keyword ::= e x t e r n a l /.$setResult($_EXTERNAL);./
    Keyword ::= f a i l o v e r /.$setResult($_FAILOVER);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= g e o m e t r y /.$setResult($_GEOMETRY);./
    Keyword ::= g r o u p i n g /.$setResult($_GROUPING);./
    Keyword ::= i d e n t i t y /.$setResult($_IDENTITY);./
    Keyword ::= i m p l i c i t /.$setResult($_IMPLICIT);./
    Keyword ::= i m p o r t e d /.$setResult($_IMPORTED);./
    Keyword ::= i n t e r v a l /.$setResult($_INTERVAL);./
    Keyword ::= l a n g u a g e /.$setResult($_LANGUAGE);./
    Keyword ::= l o c a t i o n /.$setResult($_LOCATION);./
    Keyword ::= m e a s u r e s /.$setResult($_MEASURES);./
    Keyword ::= m e t a d a t a /.$setResult($_METADATA);./
    Keyword ::= m o n i t o r s /.$setResult($_MONITORS);./
    Keyword ::= n v a r c h a r /.$setResult($_NVARCHAR);./
    Keyword ::= o r g a d m i n /.$setResult($_ORGADMIN);./
    Keyword ::= o u t b o u n d /.$setResult($_OUTBOUND);./
    Keyword ::= o v e r r i d e /.$setResult($_OVERRIDE);./
    Keyword ::= p a c k a g e s /.$setResult($_PACKAGES);./
    Keyword ::= p a r a l l e l /.$setResult($_PARALLEL);./
    Keyword ::= p a s s w o r d /.$setResult($_PASSWORD);./
    Keyword ::= p o l i c i e s /.$setResult($_POLICIES);./
    Keyword ::= p r i o r i t y /.$setResult($_PRIORITY);./
    Keyword ::= p r o p e r t y /.$setResult($_PROPERTY);./
    Keyword ::= p r o v i d e r /.$setResult($_PROVIDER);./
    Keyword ::= r e s o u r c e /.$setResult($_RESOURCE);./
    Keyword ::= r e s t r i c t /.$setResult($_RESTRICT);./
    Keyword ::= r o l l b a c k /.$setResult($_ROLLBACK);./
    Keyword ::= s c h e d u l e /.$setResult($_SCHEDULE);./
    Keyword ::= s e c u r i t y /.$setResult($_SECURITY);./
    Keyword ::= s e m a n t i c /.$setResult($_SEMANTIC);./
    Keyword ::= s e q u e n c e /.$setResult($_SEQUENCE);./
    Keyword ::= s e r v i c e s /.$setResult($_SERVICES);./
    Keyword ::= s m a l l i n t /.$setResult($_SMALLINT);./
    Keyword ::= s n a p s h o t /.$setResult($_SNAPSHOT);./
    Keyword ::= s t a n d a r d /.$setResult($_STANDARD);./
    Keyword ::= s y n o n y m s /.$setResult($_SYNONYMS);./
    Keyword ::= s y s a d m i n /.$setResult($_SYSADMIN);./
    Keyword ::= t i m e d i f f /.$setResult($_TIMEDIFF);./
    Keyword ::= t i m e z o n e /.$setResult($_TIMEZONE);./
    Keyword ::= t r i g g e r s /.$setResult($_TRIGGERS);./
    Keyword ::= t r u n c a t e /.$setResult($_TRUNCATE);./
    Keyword ::= u s e r n a m e /.$setResult($_USERNAME);./
    Keyword ::= v a l i d a t e /.$setResult($_VALIDATE);./
    Keyword ::= v e r s i o n s /.$setResult($_VERSIONS);./
    Keyword ::= v o l a t i l e /.$setResult($_VOLATILE);./
    Keyword ::= x x x l a r g e /.$setResult($_XXXLARGE);./
    Keyword ::= a c c o u n t /.$setResult($_ACCOUNT);./
    Keyword ::= b e t w e e n /.$setResult($_BETWEEN);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= b y t e i n t /.$setResult($_BYTEINT);./
    Keyword ::= c a s c a d e /.$setResult($_CASCADE);./
    Keyword ::= c h a n g e s /.$setResult($_CHANGES);./
    Keyword ::= c l u s t e r /.$setResult($_CLUSTER);./
    Keyword ::= c o l l a t e /.$setResult($_COLLATE);./
    Keyword ::= c o l u m n s /.$setResult($_COLUMNS);./
    Keyword ::= c o m m e n t /.$setResult($_COMMENT);./
    Keyword ::= c o m p u t e /.$setResult($_COMPUTE);./
    Keyword ::= c o n n e c t /.$setResult($_CONNECT);./
    Keyword ::= c u r r e n t /.$setResult($_CURRENT);./
    Keyword ::= d a t a s e t /.$setResult($_DATASET);./
    Keyword ::= d a t e a d d /.$setResult($_DATEADD);./
    Keyword ::= d e c i m a l /.$setResult($_DECIMAL_);./
    Keyword ::= d e c l a r e /.$setResult($_DECLARE);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= d e f l a t e /.$setResult($_DEFLATE);./
    Keyword ::= d i s a b l e /.$setResult($_DISABLE);./
    Keyword ::= d y n a m i c /.$setResult($_DYNAMIC);./
    Keyword ::= e c o n o m y /.$setResult($_ECONOMY);./
    Keyword ::= e d i t i o n /.$setResult($_EDITION);./
    Keyword ::= e n a b l e d /.$setResult($_ENABLED);./
    Keyword ::= e x c l u d e /.$setResult($_EXCLUDE);./
    Keyword ::= e x p l a i n /.$setResult($_EXPLAIN);./
    Keyword ::= f l a t t e n /.$setResult($_FLATTEN);./
    Keyword ::= f o r e i g n /.$setResult($_FOREIGN);./
    Keyword ::= f o r m a t s /.$setResult($_FORMATS);./
    Keyword ::= g e n e r i c /.$setResult($_GENERIC);./
    Keyword ::= g e t d a t e /.$setResult($_GETDATE);./
    Keyword ::= h a n d l e r /.$setResult($_HANDLER);./
    Keyword ::= h e a d e r s /.$setResult($_HEADERS);./
    Keyword ::= h i s t o r y /.$setResult($_HISTORY);./
    Keyword ::= i m p o r t s /.$setResult($_IMPORTS);./
    Keyword ::= i n c l u d e /.$setResult($_INCLUDE);./
    Keyword ::= i n d e x e s /.$setResult($_INDEXES);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= l a t e r a l /.$setResult($_LATERAL);./
    Keyword ::= l i s t a g g /.$setResult($_LISTAGG);./
    Keyword ::= l i s t i n g /.$setResult($_LISTING);./
    Keyword ::= m a n a g e d /.$setResult($_MANAGED);./
    Keyword ::= m a s k i n g /.$setResult($_MASKING);./
    Keyword ::= m a t c h e d /.$setResult($_MATCHED);./
    Keyword ::= m a t c h e s /.$setResult($_MATCHES);./
    Keyword ::= m e t r i c s /.$setResult($_METRICS);./
    Keyword ::= m o n i t o r /.$setResult($_MONITOR);./
    Keyword ::= m o n t h l y /.$setResult($_MONTHLY);./
    Keyword ::= n a t u r a l /.$setResult($_NATURAL);./
    Keyword ::= n e t w o r k /.$setResult($_NETWORK);./
    Keyword ::= n e x t v a l /.$setResult($_NEXTVAL);./
    Keyword ::= n o o r d e r /.$setResult($_NOORDER);./
    Keyword ::= n u m e r i c /.$setResult($_NUMERIC);./
    Keyword ::= o b j e c t s /.$setResult($_OBJECTS);./
    Keyword ::= o p e r a t e /.$setResult($_OPERATE);./
    Keyword ::= p a c k a g e /.$setResult($_PACKAGE);./
    Keyword ::= p a r q u e t /.$setResult($_PARQUET);./
    Keyword ::= p a r t i a l /.$setResult($_PARTIAL);./
    Keyword ::= p a t t e r n /.$setResult($_PATTERN);./
    Keyword ::= p e r c e n t /.$setResult($_PERCENT);./
    Keyword ::= p r i m a r y /.$setResult($_PRIMARY);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= q u a l i f y /.$setResult($_QUALIFY);./
    Keyword ::= q u a r t e r /.$setResult($_QUARTER);./
    Keyword ::= q u e r i e s /.$setResult($_QUERIES);./
    Keyword ::= r e f r e s h /.$setResult($_REFRESH);./
    Keyword ::= r e g i o n s /.$setResult($_REGIONS);./
    Keyword ::= r e p l a c e /.$setResult($_REPLACE);./
    Keyword ::= r e p l i c a /.$setResult($_REPLICA);./
    Keyword ::= r e s p e c t /.$setResult($_RESPECT);./
    Keyword ::= r e s t o r e /.$setResult($_RESTORE);./
    Keyword ::= r e t u r n s /.$setResult($_RETURNS);./
    Keyword ::= s c h e m a s /.$setResult($_SCHEMAS);./
    Keyword ::= s e c r e t s /.$setResult($_SECRETS);./
    Keyword ::= s e r v i c e /.$setResult($_SERVICE);./
    Keyword ::= s e s s i o n /.$setResult($_SESSION);./
    Keyword ::= s t o r a g e /.$setResult($_STORAGE);./
    Keyword ::= s t r e a m s /.$setResult($_STREAMS);./
    Keyword ::= s u s p e n d /.$setResult($_SUSPEND);./
    Keyword ::= t a b u l a r /.$setResult($_TABULAR);./
    Keyword ::= t i m e a d d /.$setResult($_TIMEADD);./
    Keyword ::= t i n y i n t /.$setResult($_TINYINT);./
    Keyword ::= u n p i v o t /.$setResult($_UNPIVOT);./
    Keyword ::= v a r c h a r /.$setResult($_VARCHAR);./
    Keyword ::= v a r i a n t /.$setResult($_VARIANT);./
    Keyword ::= v e r s i o n /.$setResult($_VERSION);./
    Keyword ::= x 4 l a r g e /.$setResult($_X4LARGE);./
    Keyword ::= x 5 l a r g e /.$setResult($_X5LARGE);./
    Keyword ::= x 6 l a r g e /.$setResult($_X6LARGE);./
    Keyword ::= x x l a r g e /.$setResult($_XXLARGE);./
    Keyword ::= a c c e s s /.$setResult($_ACCESS);./
    Keyword ::= a c t i o n /.$setResult($_ACTION);./
    Keyword ::= a l e r t s /.$setResult($_ALERTS);./
    Keyword ::= a p p e n d /.$setResult($_APPEND);./
    Keyword ::= a t t a c h /.$setResult($_ATTACH);./
    Keyword ::= b a s e 6 4 /.$setResult($_BASE64);./
    Keyword ::= b e f o r e /.$setResult($_BEFORE);./
    Keyword ::= b i g i n t /.$setResult($_BIGINT);./
    Keyword ::= b i n a r y /.$setResult($_BINARY);./
    Keyword ::= b r o t l i /.$setResult($_BROTLI);./
    Keyword ::= c a l l e d /.$setResult($_CALLED);./
    Keyword ::= c a l l e r /.$setResult($_CALLER);./
    Keyword ::= c o l u m n /.$setResult($_COLUMN);./
    Keyword ::= c o m m i t /.$setResult($_COMMIT);./
    Keyword ::= c o n c a t /.$setResult($_CONCAT);./
    Keyword ::= c o r t e x /.$setResult($_CORTEX);./
    Keyword ::= c r e a t e /.$setResult($_CREATE);./
    Keyword ::= c u s t o m /.$setResult($_CUSTOM);./
    Keyword ::= d e f i n e /.$setResult($_DEFINE);./
    Keyword ::= d e l e t e /.$setResult($_DELETE);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= e n a b l e /.$setResult($_ENABLE);./
    Keyword ::= e s c a p e /.$setResult($_ESCAPE);./
    Keyword ::= e x c e p t /.$setResult($_EXCEPT);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS);./
    Keyword ::= f l o a t 4 /.$setResult($_FLOAT4);./
    Keyword ::= f l o a t 8 /.$setResult($_FLOAT8);./
    Keyword ::= f o r m a t /.$setResult($_FORMAT);./
    Keyword ::= f u t u r e /.$setResult($_FUTURE);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= g r a n t s /.$setResult($_GRANTS);./
    Keyword ::= g r o u p s /.$setResult($_GROUPS);./
    Keyword ::= h a v i n g /.$setResult($_HAVING);./
    Keyword ::= h e a d e r /.$setResult($_HEADER);./
    Keyword ::= h y b r i d /.$setResult($_HYBRID);./
    Keyword ::= i f n u l l /.$setResult($_IFNULL);./
    Keyword ::= i g n o r e /.$setResult($_IGNORE);./
    Keyword ::= i m a g e s /.$setResult($_IMAGES);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= i n s e r t /.$setResult($_INSERT);./
    Keyword ::= l e n g t h /.$setResult($_LENGTH);./
    Keyword ::= l i n e a r /.$setResult($_LINEAR);./
    Keyword ::= l o o k e r /.$setResult($_LOOKER);./
    Keyword ::= m a n a g e /.$setResult($_MANAGE);./
    Keyword ::= m e d i u m /.$setResult($_MEDIUM);./
    Keyword ::= m e t r i c /.$setResult($_METRIC);./
    Keyword ::= m o d i f y /.$setResult($_MODIFY);./
    Keyword ::= n o r e l y /.$setResult($_NORELY);./
    Keyword ::= n o t i f y /.$setResult($_NOTIFY);./
    Keyword ::= n u l l i f /.$setResult($_NULLIF);./
    Keyword ::= n u m b e r /.$setResult($_NUMBER);./
    Keyword ::= o a u t h 2 /.$setResult($_OAUTH2);./
    Keyword ::= o b j e c t /.$setResult($_OBJECT);./
    Keyword ::= o f f s e t /.$setResult($_OFFSET);./
    Keyword ::= o p t i o n /.$setResult($_OPTION);./
    Keyword ::= o r i g i n /.$setResult($_ORIGIN);./
    Keyword ::= p o l i c y /.$setResult($_POLICY);./
    Keyword ::= p r e f i x /.$setResult($_PREFIX);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= p y t h o n /.$setResult($_PYTHON);./
    Keyword ::= r e a d e r /.$setResult($_READER);./
    Keyword ::= r e g i o n /.$setResult($_REGION);./
    Keyword ::= r e m o v e /.$setResult($_REMOVE);./
    Keyword ::= r e n a m e /.$setResult($_RENAME);./
    Keyword ::= r e s u l t /.$setResult($_RESULT);./
    Keyword ::= r e s u m e /.$setResult($_RESUME);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= r e v o k e /.$setResult($_REVOKE);./
    Keyword ::= r o l l u p /.$setResult($_ROLLUP);./
    Keyword ::= s a m p l e /.$setResult($_SAMPLE);./
    Keyword ::= s c h e m a /.$setResult($_SCHEMA);./
    Keyword ::= s e a r c h /.$setResult($_SEARCH);./
    Keyword ::= s e c r e t /.$setResult($_SECRET);./
    Keyword ::= s e c u r e /.$setResult($_SECURE);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s h a r e s /.$setResult($_SHARES);./
    Keyword ::= s i m p l e /.$setResult($_SIMPLE);./
    Keyword ::= s n a p p y /.$setResult($_SNAPPY);./
    Keyword ::= s o u r c e /.$setResult($_SOURCE);./
    Keyword ::= s t a g e s /.$setResult($_STAGES);./
    Keyword ::= s t a r t s /.$setResult($_STARTS);./
    Keyword ::= s t a t u s /.$setResult($_STATUS);./
    Keyword ::= s t r e a m /.$setResult($_STREAM);./
    Keyword ::= s t r i c t /.$setResult($_STRICT);./
    Keyword ::= s t r i n g /.$setResult($_STRING_);./
    Keyword ::= s u b s t r /.$setResult($_SUBSTR);./
    Keyword ::= s y s t e m /.$setResult($_SYSTEM);./
    Keyword ::= t a b l e s /.$setResult($_TABLES);./
    Keyword ::= u n d r o p /.$setResult($_UNDROP);./
    Keyword ::= u n i q u e /.$setResult($_UNIQUE);./
    Keyword ::= u p d a t e /.$setResult($_UPDATE);./
    Keyword ::= v a l u e s /.$setResult($_VALUES);./
    Keyword ::= v e c t o r /.$setResult($_VECTOR);./
    Keyword ::= v o l u m e /.$setResult($_VOLUME);./
    Keyword ::= w e e k l y /.$setResult($_WEEKLY);./
    Keyword ::= w i t h i n /.$setResult($_WITHIN);./
    Keyword ::= x l a r g e /.$setResult($_XLARGE);./
    Keyword ::= x s m a l l /.$setResult($_XSMALL);./
    Keyword ::= y e a r l y /.$setResult($_YEARLY);./
    Keyword ::= a b o r t /.$setResult($_ABORT);./
    Keyword ::= a f t e r /.$setResult($_AFTER);./
    Keyword ::= a l e r t /.$setResult($_ALERT);./
    Keyword ::= a l t e r /.$setResult($_ALTER);./
    Keyword ::= a p p l y /.$setResult($_APPLY);./
    Keyword ::= a r r a y /.$setResult($_ARRAY);./
    Keyword ::= a z u r e /.$setResult($_AZURE);./
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
    Keyword ::= b l o c k /.$setResult($_BLOCK);./
    Keyword ::= c h e c k /.$setResult($_CHECK);./
    Keyword ::= c l o n e /.$setResult($_CLONE);./
    Keyword ::= c o u n t /.$setResult($_COUNT);./
    Keyword ::= c r o s s /.$setResult($_CROSS);./
    Keyword ::= d a i l y /.$setResult($_DAILY);./
    Keyword ::= d e l t a /.$setResult($_DELTA);./
    Keyword ::= d u m m y /.$setResult($_DUMMY);./
    Keyword ::= e m a i l /.$setResult($_EMAIL);./
    Keyword ::= e m p t y /.$setResult($_EMPTY_);./
    Keyword ::= e v e n t /.$setResult($_EVENT);./
    Keyword ::= f a c t s /.$setResult($_FACTS);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f e t c h /.$setResult($_FETCH);./
    Keyword ::= f i l e s /.$setResult($_FILES);./
    Keyword ::= f i r s t /.$setResult($_FIRST);./
    Keyword ::= f l o a t /.$setResult($_FLOAT_);./
    Keyword ::= f l o o r /.$setResult($_FLOOR);./
    Keyword ::= f o r c e /.$setResult($_FORCE);./
    Keyword ::= g r a n t /.$setResult($_GRANT);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= h o u r s /.$setResult($_HOURS);./
    Keyword ::= i l i k e /.$setResult($_ILIKE);./
    Keyword ::= i m a g e /.$setResult($_IMAGE);./
    Keyword ::= i n d e x /.$setResult($_INDEX);./
    Keyword ::= i n n e r /.$setResult($_INNER);./
    Keyword ::= i n p u t /.$setResult($_INPUT);./
    Keyword ::= l a r g e /.$setResult($_LARGE);./
    Keyword ::= l i m i t /.$setResult($_LIMIT);./
    Keyword ::= l o c a l /.$setResult($_LOCAL);./
    Keyword ::= l o c k s /.$setResult($_LOCKS);./
    Keyword ::= l o w e r /.$setResult($_LOWER);./
    Keyword ::= l t r i m /.$setResult($_LTRIM);./
    Keyword ::= m a t c h /.$setResult($_MATCH);./
    Keyword ::= m e r g e /.$setResult($_MERGE);./
    Keyword ::= m i n u s /.$setResult($_MINUS_);./
    Keyword ::= n c h a r /.$setResult($_NCHAR);./
    Keyword ::= n e v e r /.$setResult($_NEVER);./
    Keyword ::= n t i l e /.$setResult($_NTILE);./
    Keyword ::= n u l l s /.$setResult($_NULLS);./
    Keyword ::= o a u t h /.$setResult($_OAUTH);./
    Keyword ::= o r d e r /.$setResult($_ORDER);./
    Keyword ::= o u t e r /.$setResult($_OUTER);./
    Keyword ::= o w n e r /.$setResult($_OWNER);./
    Keyword ::= p i p e s /.$setResult($_PIPES);./
    Keyword ::= p i v o t /.$setResult($_PIVOT);./
    Keyword ::= p r i o r /.$setResult($_PRIOR);./
    Keyword ::= p u r g e /.$setResult($_PURGE);./
    Keyword ::= q u e r y /.$setResult($_QUERY);./
    Keyword ::= q u e u e /.$setResult($_QUEUE);./
    Keyword ::= r e s e t /.$setResult($_RESET);./
    Keyword ::= r e t r y /.$setResult($_RETRY);./
    Keyword ::= r i g h t /.$setResult($_RIGHT);./
    Keyword ::= r l i k e /.$setResult($_RLIKE);./
    Keyword ::= r o l e s /.$setResult($_ROLES);./
    Keyword ::= r o u n d /.$setResult($_ROUND);./
    Keyword ::= r t r i m /.$setResult($_RTRIM);./
    Keyword ::= s a m l 2 /.$setResult($_SAML2);./
    Keyword ::= s c a l e /.$setResult($_SCALE);./
    Keyword ::= s h a r e /.$setResult($_SHARE);./
    Keyword ::= s m a l l /.$setResult($_SMALL);./
    Keyword ::= s p l i t /.$setResult($_SPLIT);./
    Keyword ::= s t a g e /.$setResult($_STAGE);./
    Keyword ::= s t a r t /.$setResult($_START);./
    Keyword ::= s t a t e /.$setResult($_STATE);./
    Keyword ::= s t a t s /.$setResult($_STATS);./
    Keyword ::= t a b l e /.$setResult($_TABLE);./
    Keyword ::= t a s k s /.$setResult($_TASKS);./
    Keyword ::= t e r s e /.$setResult($_TERSE);./
    Keyword ::= t r u n c /.$setResult($_TRUNC);./
    Keyword ::= u n i o n /.$setResult($_UNION);./
    Keyword ::= u n s e t /.$setResult($_UNSET);./
    Keyword ::= u p p e r /.$setResult($_UPPER);./
    Keyword ::= u s a g e /.$setResult($_USAGE);./
    Keyword ::= u s e r s /.$setResult($_USERS);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= v a l u e /.$setResult($_VALUE);./
    Keyword ::= v i e w s /.$setResult($_VIEWS);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= w r i t e /.$setResult($_WRITE);./
    Keyword ::= a s o f /.$setResult($_ASOF);./
    Keyword ::= a u t o /.$setResult($_AUTO);./
    Keyword ::= a v r o /.$setResult($_AVRO);./
    Keyword ::= b o d y /.$setResult($_BODY);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c a s t /.$setResult($_CAST);./
    Keyword ::= c e i l /.$setResult($_CEIL);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= c o p y /.$setResult($_COPY);./
    Keyword ::= c u b e /.$setResult($_CUBE);./
    Keyword ::= d a t a /.$setResult($_DATA);./
    Keyword ::= d a t e /.$setResult($_DATE);./
    Keyword ::= d a y s /.$setResult($_DAYS);./
    Keyword ::= d e s c /.$setResult($_DESC);./
    Keyword ::= d r o p /.$setResult($_DROP);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e x p r /.$setResult($_EXPR);./
    Keyword ::= f i l e /.$setResult($_FILE);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= f u l l /.$setResult($_FULL);./
    Keyword ::= g z i p /.$setResult($_GZIP);./
    Keyword ::= h a s h /.$setResult($_HASH);./
    Keyword ::= h i g h /.$setResult($_HIGH);./
    Keyword ::= i n t o /.$setResult($_INTO);./
    Keyword ::= j a v a /.$setResult($_JAVA);./
    Keyword ::= j o b s /.$setResult($_JOBS);./
    Keyword ::= j o i n /.$setResult($_JOIN);./
    Keyword ::= j s o n /.$setResult($_JSON);./
    Keyword ::= k e y s /.$setResult($_KEYS);./
    Keyword ::= l a s t /.$setResult($_LAST);./
    Keyword ::= l e a d /.$setResult($_LEAD);./
    Keyword ::= l e f t /.$setResult($_LEFT);./
    Keyword ::= l i k e /.$setResult($_LIKE);./
    Keyword ::= l i s t /.$setResult($_LIST);./
    Keyword ::= m o d e /.$setResult($_MODE);./
    Keyword ::= m o v e /.$setResult($_MOVE);./
    Keyword ::= n a m e /.$setResult($_NAME);./
    Keyword ::= n e x t /.$setResult($_NEXT);./
    Keyword ::= n o n e /.$setResult($_NONE);./
    Keyword ::= n u l l /.$setResult($_NULL_);./
    Keyword ::= n v l 2 /.$setResult($_NVL2);./
    Keyword ::= o k t a /.$setResult($_OKTA);./
    Keyword ::= o m i t /.$setResult($_OMIT);./
    Keyword ::= o n l y /.$setResult($_ONLY);./
    Keyword ::= o v e r /.$setResult($_OVER);./
    Keyword ::= p a s t /.$setResult($_PAST);./
    Keyword ::= p a t h /.$setResult($_PATH_);./
    Keyword ::= p i p e /.$setResult($_PIPE);./
    Keyword ::= p o o l /.$setResult($_POOL);./
    Keyword ::= p o r t /.$setResult($_PORT);./
    Keyword ::= r a n k /.$setResult($_RANK);./
    Keyword ::= r e a d /.$setResult($_READ);./
    Keyword ::= r e a l /.$setResult($_REAL_);./
    Keyword ::= r e l y /.$setResult($_RELY);./
    Keyword ::= r o l e /.$setResult($_ROLE);./
    Keyword ::= r o w s /.$setResult($_ROWS);./
    Keyword ::= s c i m /.$setResult($_SCIM);./
    Keyword ::= s e e d /.$setResult($_SEED);./
    Keyword ::= s e t s /.$setResult($_SETS);./
    Keyword ::= s h o w /.$setResult($_SHOW);./
    Keyword ::= s k i p /.$setResult($_SKIP_);./
    Keyword ::= s o m e /.$setResult($_SOME);./
    Keyword ::= s w a p /.$setResult($_SWAP);./
    Keyword ::= t a g s /.$setResult($_TAGS);./
    Keyword ::= t a s k /.$setResult($_TASK);./
    Keyword ::= t e m p /.$setResult($_TEMP);./
    Keyword ::= t e x t /.$setResult($_TEXT);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t i m e /.$setResult($_TIME);./
    Keyword ::= t r i m /.$setResult($_TRIM);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= u s e r /.$setResult($_USER);./
    Keyword ::= u t f 8 /.$setResult($_UTF8);./
    Keyword ::= v i e w /.$setResult($_VIEW);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= w o r k /.$setResult($_WORK);./
    Keyword ::= y e a r /.$setResult($_YEAR);./
    Keyword ::= z s t d /.$setResult($_ZSTD);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a e s /.$setResult($_AES);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= a p i /.$setResult($_API);./
    Keyword ::= a s c /.$setResult($_ASC);./
    Keyword ::= a v g /.$setResult($_AVG);./
    Keyword ::= b z 2 /.$setResult($_BZ2);./
    Keyword ::= c s v /.$setResult($_CSV);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= g c s /.$setResult($_GCS);./
    Keyword ::= g e o /.$setResult($_GEO);./
    Keyword ::= g e t /.$setResult($_GET);./
    Keyword ::= g i t /.$setResult($_GIT);./
    Keyword ::= h e x /.$setResult($_HEX);./
    Keyword ::= i f f /.$setResult($_IFF);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= j o b /.$setResult($_JOB);./
    Keyword ::= k e y /.$setResult($_KEY);./
    Keyword ::= l a g /.$setResult($_LAG);./
    Keyword ::= l e n /.$setResult($_LEN);./
    Keyword ::= l o w /.$setResult($_LOW);./
    Keyword ::= l z o /.$setResult($_LZO);./
    Keyword ::= m i n /.$setResult($_MIN);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= n v l /.$setResult($_NVL);./
    Keyword ::= o l d /.$setResult($_OLD);./
    Keyword ::= o n e /.$setResult($_ONE);./
    Keyword ::= o r c /.$setResult($_ORC);./
    Keyword ::= p e r /.$setResult($_PER);./
    Keyword ::= p u t /.$setResult($_PUT);./
    Keyword ::= r o w /.$setResult($_ROW);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= s q l /.$setResult($_SQL);./
    Keyword ::= s u m /.$setResult($_SUM);./
    Keyword ::= t a g /.$setResult($_TAG);./
    Keyword ::= t o p /.$setResult($_TOP);./
    Keyword ::= u r l /.$setResult($_URL);./
    Keyword ::= u s e /.$setResult($_USE);./
    Keyword ::= x m l /.$setResult($_XML);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= a t /.$setResult($_AT_KEYWORD);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= c a /.$setResult($_CA);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= n o /.$setResult($_NO);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
