-- Real lexer for SqlSnowflakeParser (not token-stream soup). Keywords via SqlSnowflakeKWLexer.
%Options list
%Options fp=SqlSnowflakeLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.sql.snowflake
%options template=LexerTemplateF.gi
%options filter=SqlSnowflakeKWLexer.gi

%Define
    $kw_lexer_class /.$SqlSnowflakeKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    AAD_PROVISIONER_Q
    ABORT
    ABORT_DETACHED_QUERY
    ABORT_STATEMENT
    ACCESS
    ACCOUNT
    ACCOUNTADMIN
    ACCOUNTS
    ACTION
    ADD
    ADMIN_NAME
    ADMIN_PASSWORD
    AES
    AFTER
    ALERT
    ALERTS
    ALL
    ALLOWED_ACCOUNTS
    ALLOWED_DATABASES
    ALLOWED_INTEGRATION_TYPES
    ALLOWED_IP_LIST
    ALLOWED_SHARES
    ALLOWED_VALUES
    ALLOW_CLIENT_MFA_CACHING
    ALLOW_DUPLICATE
    ALLOW_ID_TOKEN
    ALLOW_OVERLAPPING_EXECUTION
    ALTER
    AMP
    AMPEQ
    AND
    ANDAND
    ANY
    ANY_VALUE
    API
    API_ALLOWED_PREFIXES
    API_AUTHENTICATION
    API_AWS_ROLE_ARN
    API_BLOCKED_PREFIXES
    API_INTEGRATION
    API_KEY
    API_PROVIDER
    APPEND
    APPEND_ONLY
    APPLICATION
    APPLY
    ARRAY
    ARRAY_AGG
    ARRAY_Q
    ARROW
    ARROWSTAR
    AS
    ASC
    ASOF
    ASSOC
    AT
    ATEQ
    ATTACH
    AT_KEYWORD
    AT_Q
    AUTHORIZATION
    AUTHORIZATIONS
    AUTO
    AUTOCOMMIT
    AUTOCOMMIT_API_SUPPORTED
    AUTOINCREMENT
    AUTO_COMPRESS
    AUTO_DETECT
    AUTO_INGEST
    AUTO_Q
    AUTO_REFRESH
    AUTO_RESUME
    AUTO_SUSPEND
    AUTO_SUSPEND_SECS
    AVG
    AVRO
    AVRO_Q
    AWS_KEY_ID
    AWS_ROLE
    AWS_SECRET_KEY
    AWS_SNS
    AWS_SNS_ROLE_ARN
    AWS_SNS_TOPIC
    AWS_SNS_TOPIC_ARN
    AWS_TOKEN
    AZURE
    AZURE_AD_APPLICATION_ID
    AZURE_CSE_Q
    AZURE_EVENT_GRID
    AZURE_EVENT_GRID_TOPIC_ENDPOINT
    AZURE_PATH
    AZURE_Q
    AZURE_SAS_TOKEN
    AZURE_STORAGE_QUEUE_PRIMARY_URI
    AZURE_TENANT_ID
    BACKSLASH
    BACKTICK
    BANG
    BASE64
    BEFORE
    BEGIN
    BERNOULLI
    BETWEEN
    BIGINT
    BINARY
    BINARY_AS_TEXT
    BINARY_FORMAT
    BINARY_INPUT_FORMAT
    BINARY_OUTPUT_FORMAT
    BITCLEAR
    BLOCK
    BLOCKED_IP_LIST
    BLOCKED_ROLES_LIST
    BODY
    BOOLEAN
    BOTH_Q
    BRANCHES
    BROTLI
    BUSINESS_CRITICAL
    BY
    BYTEINT
    BZ2
    CA
    CALL
    CALLED
    CALLER
    CARET
    CARETEQ
    CASCADE
    CASE
    CASE_INSENSITIVE
    CASE_SENSITIVE
    CAST
    CEIL
    CHANGES
    CHANGE_TRACKING
    CHANNELS
    CHAR
    CHARACTER
    CHARINDEX
    CHAR_LITERAL
    CHAR_VARYING
    CHECK
    CHECKSUM
    CLIENT_ENABLE_LOG_INFO_STATEMENT_PARAMETERS
    CLIENT_ENCRYPTION_KEY_SIZE
    CLIENT_MEMORY_LIMIT
    CLIENT_METADATA_REQUEST_USE_CONNECTION_CTX
    CLIENT_METADATA_USE_SESSION_DATABASE
    CLIENT_PREFETCH_THREADS
    CLIENT_RESULT_CHUNK_SIZE
    CLIENT_RESULT_COLUMN_CASE_INSENSITIVE
    CLIENT_SESSION_KEEP_ALIVE
    CLIENT_SESSION_KEEP_ALIVE_HEARTBEAT_FREQUENCY
    CLIENT_TIMESTAMP_TYPE_MAPPING
    CLONE
    CLOUD_PROVIDER_TOKEN
    CLUSTER
    CLUSTERING
    COALESCE
    COLLATE
    COLLECTION
    COLON
    COLONCOLON
    COLONEQ
    COLON_COLON
    COLUMN
    COLUMNS
    COMMA
    COMMENT
    COMMIT
    COMPRESSION
    COMPUTE
    CONCAT
    CONCAT_WS
    CONDITION
    CONFIGURATION
    CONNECT
    CONNECTION
    CONNECTIONS
    CONSTRAINT
    CONTAINS
    CONTEXT_HEADERS
    CONTINUE
    COPY
    COPY_OPTIONS_
    CORTEX
    COUNT
    CREATE
    CREDENTIALS
    CREDIT_QUOTA
    CROSS
    CSV
    CSV_Q
    CUBE
    CURRENT
    CURRENT_DATE
    CURRENT_TIME
    CURRENT_TIMESTAMP
    CUSTOM
    DAILY
    DATA
    DATABASE
    DATABASES
    DATASET
    DATASETS
    DATA_RETENTION_TIME_IN_DAYS
    DATE
    DATEADD
    DATEDIFF
    DATETIME
    DATE_FORMAT
    DATE_INPUT_FORMAT
    DATE_OUTPUT_FORMAT
    DATE_PART
    DAYS
    DAYS_TO_EXPIRY
    DBL_DOLLAR
    DECIMAL
    DECIMAL_
    DECLARE
    DEFAULT
    DEFAULT_DDL_COLLATION_
    DEFAULT_NAMESPACE
    DEFAULT_ROLE
    DEFAULT_WAREHOUSE
    DEFERRABLE
    DEFERRED
    DEFINE
    DEFINITION
    DEFLATE
    DELEGATED
    DELETE
    DELTA
    DENSE_RANK
    DESC
    DESCRIBE
    DIMENSIONS
    DIRECTED
    DIRECTION
    DIRECTORY
    DISABLE
    DISABLED
    DISABLE_AUTO_CONVERT
    DISABLE_SNOWFLAKE_DATA
    DISPLAY_NAME
    DISTINCT
    DIVIDE
    DO
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DOUBLE
    DOUBLE_PRECISION
    DOUBLE_QUOTE_BLANK
    DOUBLE_QUOTE_ID
    DOWNSTREAM
    DQUOTE
    DROP
    DUMMY
    DYNAMIC
    ECONOMY
    EDITION
    ELLIPSIS
    ELSE
    EMAIL
    EMPTY_
    EMPTY_FIELD_AS_NULL
    ENABLE
    ENABLED
    ENABLE_FOR_PRIVILEGE
    ENABLE_INTERNAL_STAGES_PRIVATELINK
    ENABLE_OCTAL
    ENABLE_QUERY_ACCELERATION
    ENABLE_UNLOAD_PHYSICAL_TYPE_OPTIMIZATION
    ENCODING
    ENCRYPTION
    END
    END_TIMESTAMP
    ENFORCED
    ENFORCE_LENGTH
    ENFORCE_SESSION_POLICY
    ENTERPRISE
    EQ
    EQEQ
    EQEQEQ
    EQUALITY
    EQUAL_NULL
    ERROR_INTEGRATION
    ERROR_ON_COLUMN_COUNT_MISMATCH
    ERROR_ON_NONDETERMINISTIC_MERGE
    ERROR_ON_NONDETERMINISTIC_UPDATE
    ESCAPE
    ESCAPE_UNENCLOSED_FIELD
    EVENT
    EXCEPT
    EXCHANGE
    EXCLUDE
    EXECUTE
    EXECUTION
    EXISTS
    EXPIRY_DATE
    EXPLAIN
    EXPR
    EXTENSION
    EXTERNAL
    EXTERNAL_ACCESS_INTEGRATIONS
    EXTERNAL_OAUTH
    EXTERNAL_OAUTH_ADD_PRIVILEGED_ROLES_TO_BLOCKED_LIST
    EXTERNAL_OAUTH_ALLOWED_ROLES_LIST
    EXTERNAL_OAUTH_ANY_ROLE_MODE
    EXTERNAL_OAUTH_AUDIENCE_LIST
    EXTERNAL_OAUTH_BLOCKED_ROLES_LIST
    EXTERNAL_OAUTH_ISSUER
    EXTERNAL_OAUTH_JWS_KEYS_URL
    EXTERNAL_OAUTH_RSA_PUBLIC_KEY
    EXTERNAL_OAUTH_RSA_PUBLIC_KEY_2
    EXTERNAL_OAUTH_SCOPE_DELIMITER
    EXTERNAL_OAUTH_SNOWFLAKE_USER_MAPPING_ATTRIBUTE
    EXTERNAL_OAUTH_TOKEN_USER_MAPPING_CLAIM
    EXTERNAL_OAUTH_TYPE
    EXTERNAL_STAGE
    FACTS
    FAILOVER
    FALSE
    FATARROW
    FETCH
    FIELD_DELIMITER
    FIELD_OPTIONALLY_ENCLOSED_BY
    FILE
    FILES
    FILE_EXTENSION
    FILE_FORMAT
    FILE_PATH
    FIRST
    FIRST_NAME
    FIRST_VALUE
    FLATTEN
    FLOAT
    FLOAT4
    FLOAT8
    FLOAT_
    FLOOR
    FLOW
    FOR
    FORCE
    FOREIGN
    FORMAT
    FORMATS
    FORMAT_NAME
    FREQUENCY
    FROM
    FULL
    FUNCTION
    FUNCTIONS
    FUTURE
    GCP_PUBSUB
    GCP_PUBSUB_SUBSCRIPTION_NAME
    GCP_PUBSUB_TOPIC_NAME
    GCS
    GCS_PATH
    GCS_SSE_KMS_Q
    GE
    GENERIC
    GENERIC_Q
    GENERIC_SCIM_PROVISIONER_Q
    GENERIC_STRING
    GEO
    GEOGRAPHY
    GEOGRAPHY_OUTPUT_FORMAT
    GEOMETRY
    GEOMETRY_OUTPUT_FORMAT
    GET
    GETDATE
    GIT
    GIT_CREDENTIALS
    GLOBAL
    GOOGLE_AUDIENCE
    GRANT
    GRANTS
    GROUP
    GROUPING
    GROUPS
    GT
    GTEQ
    GZIP
    HALF_AWAY_FROM_ZERO_Q
    HALF_TO_EVEN_Q
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
    ID
    ID2
    IDENTIFIER
    IDENTITY
    IF
    IFF
    IFNULL
    IGNORE
    IGNORE_UTF8_ERRORS
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
    INITIALLY_SUSPENDED
    INITIAL_REPLICATION_SIZE_LIMIT_IN_TB
    INNER
    INPUT
    INSERT
    INSERT_ONLY
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
    JDBC_TREAT_DECIMAL_AS_INT
    JDBC_TREAT_TIMESTAMP_NTZ_AS_UTC
    JDBC_USE_SESSION_TIMEZONE
    JOB
    JOBS
    JOIN
    JSON
    JSON_INDENT
    JSON_Q
    JS_TREAT_INTEGER_AS_BIGINT
    KEY
    KEYS
    KMS_KEY_ID
    LAG
    LANGUAGE
    LARGE
    LAST
    LAST_NAME
    LAST_QUERY_ID
    LAST_VALUE
    LATERAL
    LBRACE
    LBRACKET
    LCB
    LE
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
    LOCK_TIMEOUT
    LOGIN_NAME
    LOG_LEVEL
    LOOKER
    LOW
    LOWER
    LPAREN
    LR_BRACKET
    LSB
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    LTRIM
    LZO
    MANAGE
    MANAGED
    MASKING
    MASTER_KEY
    MATCH
    MATCHED
    MATCHES
    MATCH_BY_COLUMN_NAME
    MATCH_CONDITION
    MATCH_RECOGNIZE
    MATERIALIZED
    MAX_BATCH_ROWS
    MAX_CLUSTER_COUNT
    MAX_CONCURRENCY_LEVEL
    MAX_DATA_EXTENSION_TIME_IN_DAYS
    MAX_INSTANCES
    MAX_SIZE
    MEASURES
    MEDIUM
    MEMOIZABLE
    MERGE
    METADATA
    METRIC
    METRICS
    MIDDLE_NAME
    MIN
    MINS_TO_BYPASS_MFA
    MINS_TO_UNLOCK
    MINUS
    MINUSEQ
    MINUSMINUS
    MINUS_
    MIN_CLUSTER_COUNT
    MIN_DATA_RETENTION_TIME_IN_DAYS
    MIN_INSTANCES
    MIN_READY_INSTANCES
    MODE
    MODIFIED_AFTER
    MODIFY
    MODULE
    MONITOR
    MONITORS
    MONTHLY
    MOVE
    MULTI_STATEMENT_COUNT
    MUST_CHANGE_PASSWORD
    NAME
    NATURAL
    NCHAR
    NCHAR_VARYING
    NE
    NETWORK
    NETWORK_POLICY
    NEVER
    NEXT
    NEXTVAL
    NO
    NONE
    NONE_Q
    NOORDER
    NORELY
    NOT
    NOTEQ
    NOTEQEQ
    NOTIFICATION
    NOTIFICATION_INTEGRATION
    NOTIFICATION_PROVIDER
    NOTIFY
    NOTIFY_USERS
    NOVALIDATE
    NTILE
    NULLIF
    NULLS
    NULL_
    NULL_IF
    NUMBER
    NUMERIC
    NVARCHAR
    NVARCHAR2
    NVL
    NVL2
    OAUTH
    OAUTH2
    OAUTH_ALLOW_NON_TLS_REDIRECT_URI
    OAUTH_CLIENT
    OAUTH_CLIENT_RSA_PUBLIC_KEY
    OAUTH_CLIENT_RSA_PUBLIC_KEY_2
    OAUTH_ENFORCE_PKCE
    OAUTH_ISSUE_REFRESH_TOKENS
    OAUTH_REDIRECT_URI
    OAUTH_REFRESH_TOKEN
    OAUTH_REFRESH_TOKEN_EXPIRY_TIME
    OAUTH_REFRESH_TOKEN_VALIDITY
    OAUTH_SCOPES
    OAUTH_USE_SECONDARY_ROLES
    OBJECT
    OBJECTS
    OBJECT_Q
    OBJECT_TYPES
    OF
    OFFSET
    OKTA
    OKTA_PROVISIONER_Q
    OKTA_Q
    OLD
    OMIT
    ON
    ONE
    ONLY
    ON_CREATE
    ON_ERROR
    ON_SCHEDULE
    OPERATE
    OPTIMIZATION
    OPTION
    OR
    ORC
    ORC_Q
    ORDER
    ORGADMIN
    ORGANIZATION
    ORIGIN
    OROR
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
    PARQUET_Q
    PARTIAL
    PARTITION
    PARTITION_TYPE
    PASSWORD
    PASSWORD_HISTORY
    PASSWORD_LOCKOUT_TIME_MINS
    PASSWORD_MAX_AGE_DAYS
    PASSWORD_MAX_LENGTH
    PASSWORD_MAX_RETRIES
    PASSWORD_MIN_AGE_DAYS
    PASSWORD_MIN_LENGTH
    PASSWORD_MIN_LOWER_CASE_CHARS
    PASSWORD_MIN_NUMERIC_CHARS
    PASSWORD_MIN_SPECIAL_CHARS
    PASSWORD_MIN_UPPER_CASE_CHARS
    PAST
    PATH_
    PATTERN
    PER
    PERCENT
    PERCENTEQ
    PERIODIC_DATA_REKEYING
    PING_FEDERATE
    PIPE
    PIPEEQ
    PIPES
    PIPE_EXECUTION_PAUSED
    PIPE_PIPE
    PIVOT
    PLUS
    PLUSEQ
    PLUSPLUS
    POLICIES
    POLICY
    POOL
    PORT
    PREFIX
    PRESERVE_SPACE
    PREVENT_UNLOAD_TO_INLINE_URL
    PREVENT_UNLOAD_TO_INTERNAL_STAGES
    PRE_AUTHORIZED_ROLES_LIST
    PRIMARY
    PRIOR
    PRIORITY
    PRIVATE
    PRIVILEGES
    PROCEDURE
    PROCEDURES
    PROCEDURE_NAME
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
    QUERY_ACCELERATION_MAX_SCALE_FACTOR
    QUERY_TAG
    QUERY_WAREHOUSE
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    QUEUE
    QUOTED_IDENTIFIERS_IGNORE_CASE
    RANK
    RAW_DEFLATE
    RBRACE
    RBRACKET
    RCB
    READ
    READER
    REAL
    REAL_
    RECEIVE
    RECLUSTER
    RECORD_DELIMITER
    RECURSIVE
    REFERENCES
    REFERENCE_USAGE
    REFRESH
    REFRESH_MODE
    REFRESH_ON_CREATE
    REGION
    REGIONS
    REGION_GROUP
    RELATIONSHIPS
    RELY
    REMOVE
    RENAME
    REPEATABLE
    REPLACE
    REPLACE_INVALID_CHARACTERS
    REPLICA
    REPLICATION
    REPLICATION_SCHEDULE
    REPOSITORIES
    REPOSITORY
    REQUEST_TRANSLATOR
    REQUIRE_STORAGE_INTEGRATION_FOR_STAGE_CREATION
    REQUIRE_STORAGE_INTEGRATION_FOR_STAGE_OPERATION
    RESET
    RESOURCE
    RESOURCES
    RESOURCE_MONITOR
    RESPECT
    RESPONSE_TRANSLATOR
    RESTORE
    RESTRICT
    RESTRICTIONS
    RESULT
    RESUME
    RETRY
    RETURN
    RETURNS
    RETURN_ALL_ERRORS
    RETURN_ERRORS
    RETURN_FAILED_ONLY
    RETURN_N_ROWS
    RETURN_ROWS
    REVOKE
    RIGHT
    RLIKE
    ROLE
    ROLES
    ROLLBACK
    ROLLUP
    ROUND
    ROUNDING_MODE
    ROW
    ROWS
    ROWS_PER_RESULTSET
    ROW_NUMBER
    RPAREN
    RR_BRACKET
    RSA_PUBLIC_KEY
    RSA_PUBLIC_KEY_2
    RSB
    RSHIFT
    RSHIFTEQ
    RTRIM
    RUNTIME_VERSION
    RUN_AS_ROLE
    S3
    S3GOV_PATH
    S3_PATH
    SAML2
    SAML2_ENABLE_SP_INITIATED
    SAML2_FORCE_AUTHN
    SAML2_ISSUER
    SAML2_POST_LOGOUT_REDIRECT_URL
    SAML2_PROVIDER
    SAML2_REQUESTED_NAMEID_FORMAT
    SAML2_SIGN_REQUEST
    SAML2_SNOWFLAKE_ACS_URL
    SAML2_SNOWFLAKE_ISSUER_URL
    SAML2_SNOWFLAKE_X509_CERT
    SAML2_SP_INITIATED_LOGIN_PAGE_LABEL
    SAML2_SSO_URL
    SAML2_X509_CERT
    SAML_IDENTITY_PROVIDER
    SAMPLE
    SAVE_OLD_URL
    SCALE
    SCALING_POLICY
    SCHEDULE
    SCHEMA
    SCHEMAS
    SCIM
    SCIM_CLIENT
    SEARCH
    SECONDARY
    SECRET
    SECRETS
    SECRET_STRING
    SECURE
    SECURITY
    SECURITYADMIN
    SEED
    SELECT
    SEMANTIC
    SEMI
    SEQUENCE
    SEQUENCES
    SERVICE
    SERVICES
    SESSION
    SESSION_IDLE_TIMEOUT_MINS
    SESSION_POLICY
    SESSION_UI_IDLE_TIMEOUT_MINS
    SET
    SETS
    SHARE
    SHARES
    SHARE_RESTRICTIONS
    SHOW
    SHOW_INITIAL_ROWS
    SIMPLE
    SIMULATED_DATA_SHARING_CONSUMER
    SINGLE_QUOTE
    SIZE_LIMIT
    SKIP_
    SKIP_BLANK_LINES
    SKIP_BYTE_ORDER_MARK
    SKIP_FILE
    SKIP_FILE_N
    SKIP_HEADER
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SMALL
    SMALLINT
    SNAPPY
    SNAPPY_COMPRESSION
    SNAPSHOT
    SNOWFLAKE_FULL_Q
    SNOWFLAKE_SSE_Q
    SNOWPARK_OPTIMIZED
    SOME
    SOURCE
    SOURCE_COMPRESSION
    SPECIFICATION
    SPECIFICATION_FILE
    SPECIFICATION_TEMPLATE
    SPECIFICATION_TEMPLATE_FILE
    SPLIT
    SPLIT_PART
    SPLIT_TO_TABLE
    SQL
    SQUOTE
    SSO_LOGIN_PAGE
    STAGE
    STAGES
    STAGE_COPY_OPTIONS
    STAGE_FILE_FORMAT
    STANDARD
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    START
    STARTS
    START_DATE
    START_TIMESTAMP
    STATE
    STATEMENT
    STATEMENT_QUEUED_TIMEOUT_IN_SECONDS
    STATEMENT_TIMEOUT_IN_SECONDS
    STATS
    STATUS
    STORAGE
    STORAGE_ALLOWED_LOCATIONS
    STORAGE_AWS_OBJECT_ACL
    STORAGE_AWS_ROLE_ARN
    STORAGE_BLOCKED_LOCATIONS
    STORAGE_INTEGRATION
    STORAGE_PROVIDER
    STREAM
    STREAMS
    STRICT
    STRICT_JSON_OUTPUT
    STRING
    STRING_
    STRIP_NULL_VALUES
    STRIP_OUTER_ARRAY
    STRIP_OUTER_ELEMENT
    SUBSTR
    SUBSTRING
    SUM
    SUSPEND
    SUSPENDED
    SUSPEND_IMMEDIATE
    SUSPEND_TASK_AFTER_NUM_FAILURES
    SWAP
    SYMMETRIC_KEY
    SYNC_PASSWORD
    SYNONYMS
    SYSADMIN
    SYSTEM
    TABLE
    TABLEAU_DESKTOP
    TABLEAU_SERVER
    TABLES
    TABLESAMPLE
    TABLE_FORMAT
    TABULAR
    TAG
    TAGS
    TARGET_LAG
    TASK
    TASKS
    TEMP
    TEMPORARY
    TERSE
    THEN
    TILDA
    TILDE
    TIME
    TIMEADD
    TIMEDIFF
    TIMESTAMP
    TIMESTAMPADD
    TIMESTAMPDIFF
    TIMESTAMP_DAY_IS_ALWAYS_24H
    TIMESTAMP_FORMAT
    TIMESTAMP_INPUT_FORMAT
    TIMESTAMP_LTZ
    TIMESTAMP_LTZ_OUTPUT_FORMAT
    TIMESTAMP_NTZ
    TIMESTAMP_NTZ_OUTPUT_FORMAT
    TIMESTAMP_OUTPUT_FORMAT
    TIMESTAMP_TYPE_MAPPING
    TIMESTAMP_TZ
    TIMESTAMP_TZ_OUTPUT_FORMAT
    TIMEZONE
    TIME_FORMAT
    TIME_INPUT_FORMAT
    TIME_OUTPUT_FORMAT
    TINYINT
    TO
    TOP
    TO_BOOLEAN
    TO_DATE
    TO_TIMESTAMP
    TRANSACTION
    TRANSACTIONS
    TRANSACTION_ABORT_ON_ERROR
    TRANSACTION_DEFAULT_ISOLATION_LEVEL
    TRANSIENT
    TRIGGERS
    TRIM
    TRIM_SPACE
    TRUE
    TRUNC
    TRUNCATE
    TRUNCATECOLUMNS
    TRY_CAST
    TWO_DIGIT_CENTURY_START
    TYPE
    UNDERSCORE
    UNDROP
    UNION
    UNIQUE
    UNMATCHED
    UNPIVOT
    UNSET
    UNSUPPORTED_DDL_ACTION
    UPDATE
    UPPER
    URL
    URSHIFT
    URSHIFTEQ
    USAGE
    USE
    USER
    USERADMIN
    USERNAME
    USERS
    USER_SPECIFIED
    USER_TASK_MANAGED_INITIAL_WAREHOUSE_SIZE
    USER_TASK_TIMEOUT_MS
    USE_ANY_ROLE
    USE_CACHED_RESULT
    USING
    UTF8
    VALIDATE
    VALIDATION_MODE
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
    WAREHOUSE_SIZE
    WAREHOUSE_TYPE
    WEEKLY
    WEEK_OF_YEAR_POLICY
    WEEK_START
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
    XML_Q
    XSMALL
    XXLARGE
    XXXLARGE
    YEAR
    YEARLY
    YIELDSTAR
    ZSTD
    STRING_LITERAL
%End

%Terminals
    CtlCharNotWS

    LF   CR   HT   FF

    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
    _

    A    B    C    D    E    F    G    H    I    J    K    L    M
    N    O    P    Q    R    S    T    U    V    W    X    Y    Z

    0    1    2    3    4    5    6    7    8    9

    AfterASCII   ::= '\u0080..\ufffe'
    Space        ::= ' '
    LF           ::= NewLine
    CR           ::= Return
    HT           ::= HorizontalTab
    FF           ::= FormFeed
    DoubleQuote  ::= '"'
    SingleQuote  ::= "'"
    Percent      ::= '%'
    VerticalBar  ::= '|'
    Exclamation  ::= '!'
    AtSign       ::= '@'
    BackQuote    ::= '`'
    Tilde        ::= '~'
    Sharp        ::= '#'
    DollarSign   ::= '$'
    Ampersand    ::= '&'
    Caret        ::= '^'
    Colon        ::= ':'
    SemiColon    ::= ';'
    BackSlash    ::= '\'
    LeftBrace    ::= '{'
    RightBrace   ::= '}'
    LeftBracket  ::= '['
    RightBracket ::= ']'
    QuestionMark ::= '?'
    Comma        ::= ','
    Dot          ::= '.'
    LessThan     ::= '<'
    GreaterThan  ::= '>'
    Plus         ::= '+'
    Minus        ::= '-'
    Slash        ::= '/'
    Star         ::= '*'
    Equal        ::= '='
    LeftParen    ::= '('
    RightParen   ::= ')'
%End

%Start
    Token
%End

%Rules
    Token ::= identifier /. checkForKeyWord(); ./
            | number     /. makeToken($_NUMBER); ./
            | string     /. makeToken($_STRING_LITERAL); ./
            | LineComment /. skipToken(); ./
            | HashComment /. skipToken(); ./
            | white /. skipToken(); ./
            | 'y' 'i' 'e' 'l' 'd' '*' /. makeToken($_YIELDSTAR); ./
            | '>' '>' '>' '=' /. makeToken($_URSHIFTEQ); ./
            | '!' '=' '=' /. makeToken($_NOTEQEQ); ./
            | '*' '*' '=' /. makeToken($_STARSTAREQ); ./
            | '-' '>' '*' /. makeToken($_ARROWSTAR); ./
            | '.' '.' '.' /. makeToken($_ELLIPSIS); ./
            | '/' '/' '=' /. makeToken($_SLASHSLASHEQ); ./
            | '<' '<' '=' /. makeToken($_LSHIFTEQ); ./
            | '=' '=' '=' /. makeToken($_EQEQEQ); ./
            | '>' '>' '=' /. makeToken($_RSHIFTEQ); ./
            | '>' '>' '>' /. makeToken($_URSHIFT); ./
            | '?' '?' '=' /. makeToken($_QUESTQUESTEQ); ./
            | '!' '=' /. makeToken($_NOTEQ); ./
            | '%' '=' /. makeToken($_PERCENTEQ); ./
            | '&' '&' /. makeToken($_ANDAND); ./
            | '&' '=' /. makeToken($_AMPEQ); ./
            | '&' '^' /. makeToken($_BITCLEAR); ./
            | '*' '*' /. makeToken($_STARSTAR); ./
            | '*' '=' /. makeToken($_STAREQ); ./
            | '+' '+' /. makeToken($_PLUSPLUS); ./
            | '+' '=' /. makeToken($_PLUSEQ); ./
            | '-' '-' /. makeToken($_MINUSMINUS); ./
            | '-' '=' /. makeToken($_MINUSEQ); ./
            | '-' '>' /. makeToken($_ARROW); ./
            | '.' '*' /. makeToken($_DOTSTAR); ./
            | '.' '.' /. makeToken($_DOTDOT); ./
            | '/' '/' /. makeToken($_SLASHSLASH); ./
            | '/' '=' /. makeToken($_SLASHEQ); ./
            | ':' ':' /. makeToken($_COLONCOLON); ./
            | ':' '=' /. makeToken($_COLONEQ); ./
            | '<' '-' /. makeToken($_RECEIVE); ./
            | '<' '<' /. makeToken($_LSHIFT); ./
            | '<' '=' /. makeToken($_LTEQ); ./
            | '<' '>' /. makeToken($_LTGT); ./
            | '=' '=' /. makeToken($_EQEQ); ./
            | '=' '>' /. makeToken($_FATARROW); ./
            | '>' '=' /. makeToken($_GTEQ); ./
            | '>' '>' /. makeToken($_RSHIFT); ./
            | '?' '.' /. makeToken($_QUESTDOT); ./
            | '?' '?' /. makeToken($_QUESTQUEST); ./
            | '@' '=' /. makeToken($_ATEQ); ./
            | '^' '=' /. makeToken($_CARETEQ); ./
            | '|' '=' /. makeToken($_PIPEEQ); ./
            | '|' '|' /. makeToken($_OROR); ./
            | '!' /. makeToken($_BANG); ./
            | '"' /. makeToken($_DQUOTE); ./
            | '#' /. makeToken($_HASH); ./
            | '%' /. makeToken($_PERCENT); ./
            | '&' /. makeToken($_AMP); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '*' /. makeToken($_STAR); ./
            | '+' /. makeToken($_PLUS); ./
            | ',' /. makeToken($_COMMA); ./
            | '-' /. makeToken($_MINUS); ./
            | '.' /. makeToken($_DOT); ./
            | '/' /. makeToken($_SLASH); ./
            | ':' /. makeToken($_COLON); ./
            | ';' /. makeToken($_SEMI); ./
            | '<' /. makeToken($_LT); ./
            | '=' /. makeToken($_EQ); ./
            | '>' /. makeToken($_GT); ./
            | '?' /. makeToken($_QUESTION); ./
            | '@' /. makeToken($_AT); ./
            | '[' /. makeToken($_LBRACKET); ./
            | '\' /. makeToken($_BACKSLASH); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '^' /. makeToken($_CARET); ./
            | '`' /. makeToken($_BACKTICK); ./
            | '{' /. makeToken($_LBRACE); ./
            | '|' /. makeToken($_PIPE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '~' /. makeToken($_TILDE); ./

    identifier -> Letter
                | identifier Letter
                | identifier Digit
                | identifier '-' Letter
                | identifier '-' Digit

    Letter -> LowerCaseLetter
            | UpperCaseLetter
            | _
            | AfterASCII
            | DollarSign

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    number ::= Digit
             | number Digit
             | number '_' Digit
             | number '.' Digit
             | number '.' Digits
             | '.' Digits

    Digits ::= Digit
             | Digits Digit

    string ::= SingleQuote SLBodySQ SingleQuote
             | '"' SLBody '"'

    SLBody -> $empty
            | SLBody NotDQ

    SLBodySQ -> $empty
              | SLBodySQ NotSQ

    NotDQ -> Letter | Digit | Space | HT | SingleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | Escape

    NotSQ -> Letter | Digit | Space | HT | DoubleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | Escape

    Escape ::= BackSlash EscapeChar
    EscapeChar -> DoubleQuote | SingleQuote | BackSlash | '/' | n | r | t | b | f

    LineComment ::= '/' '/' LineCommentBody
    HashComment ::= Sharp HashCommentBody
    HashCommentBody -> $empty
                     | HashCommentBody NotNL
    LineCommentBody -> $empty
                     | LineCommentBody NotNL
    NotNL -> Letter | Digit | Space | HT | SpecialNotNL
    SpecialNotNL -> '+' | '-' | '/' | '*' | '(' | ')' | '!' | '@' | '~' |
                    '%' | '&' | '^' | ':' | ';' | DoubleQuote | SingleQuote | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash

    white -> WSChar
           | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
