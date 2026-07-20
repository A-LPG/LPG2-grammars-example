-- Real lexer for SqlTsqlParser (not token-stream soup). Keywords via SqlTsqlKWLexer.
%Options list
%Options fp=SqlTsqlLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.sql.tsql
%options template=LexerTemplateF.gi
%options filter=SqlTsqlKWLexer.gi

%Define
    $kw_lexer_class /.$SqlTsqlKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ABORT
    ABORT_AFTER_WAIT
    ABS
    ABSENT
    ABSOLUTE
    ACCELERATED_DATABASE_RECOVERY
    ACCENT_SENSITIVITY
    ACCESS
    ACOS
    ACTION
    ACTIVATION
    ACTIVE
    ADD
    ADDRESS
    ADMINISTER
    AES
    AES_128
    AES_192
    AES_256
    AFFINITY
    AFTER
    AGGREGATE
    ALGORITHM
    ALL
    ALLOWED
    ALLOW_CONNECTIONS
    ALLOW_ENCRYPTED_VALUE_MODIFICATIONS
    ALLOW_MULTIPLE_EVENT_LOSS
    ALLOW_PAGE_LOCKS
    ALLOW_ROW_LOCKS
    ALLOW_SINGLE_EVENT_LOSS
    ALLOW_SNAPSHOT_ISOLATION
    ALL_CONSTRAINTS
    ALL_ERRORMSGS
    ALL_INDEXES
    ALL_LEVELS
    ALTER
    ALWAYS
    AMP
    AMPEQ
    AND
    ANDAND
    ANONYMOUS
    ANSI_DEFAULTS
    ANSI_NULLS
    ANSI_NULL_DEFAULT
    ANSI_NULL_DFLT_OFF
    ANSI_NULL_DFLT_ON
    ANSI_PADDING
    ANSI_WARNINGS
    ANY
    APPEND
    APPLICATION
    APPLICATION_LOG
    APPLOCK_MODE
    APPLOCK_TEST
    APPLY
    APP_NAME
    ARITHABORT
    ARITHIGNORE
    ARROW
    ARROWSTAR
    AS
    ASC
    ASCII
    ASIN
    ASSEMBLY
    ASSEMBLYPROPERTY
    ASYMMETRIC
    ASYNCHRONOUS_COMMIT
    AT
    ATAN
    ATEQ
    ATN2
    AT_KEYWORD
    AUDIT
    AUDIT_GUID
    AUTHENTICATE
    AUTHENTICATION
    AUTHORIZATION
    AUTO
    AUTOGROW_ALL_FILES
    AUTOGROW_SINGLE_FILE
    AUTOMATED_BACKUP_PREFERENCE
    AUTOMATIC
    AUTO_CLEANUP
    AUTO_CLOSE
    AUTO_CREATE_STATISTICS
    AUTO_DROP
    AUTO_SHRINK
    AUTO_UPDATE_STATISTICS
    AUTO_UPDATE_STATISTICS_ASYNC
    AVAILABILITY
    AVAILABILITY_MODE
    AVG
    BACKSLASH
    BACKTICK
    BACKUP
    BACKUP_CLONEDB
    BACKUP_PRIORITY
    BANG
    BASE64
    BEFORE
    BEGIN
    BEGIN_DIALOG
    BETWEEN
    BIGINT
    BINARY
    BINARY_CHECKSUM
    BINARY_KEYWORD
    BINDING
    BITCLEAR
    BLOB_STORAGE
    BLOCK
    BLOCKERS
    BLOCKING_HIERARCHY
    BLOCKSIZE
    BREAK
    BROKER
    BROKER_INSTANCE
    BROWSE
    BUFFER
    BUFFERCOUNT
    BULK
    BULK_LOGGED
    BY
    CACHE
    CALLED
    CALLER
    CAP_CPU_PERCENT
    CARET
    CARETEQ
    CASCADE
    CASE
    CAST
    CATALOG
    CATCH
    CEILING
    CERTENCODED
    CERTIFICATE
    CERTPRIVATEKEY
    CERT_ID
    CHANGE
    CHANGES
    CHANGETABLE
    CHANGE_RETENTION
    CHANGE_TRACKING
    CHAR
    CHARINDEX
    CHAR_LITERAL
    CHECK
    CHECKALLOC
    CHECKCATALOG
    CHECKCONSTRAINTS
    CHECKDB
    CHECKFILEGROUP
    CHECKPOINT
    CHECKSUM
    CHECKSUM_AGG
    CHECKTABLE
    CHECK_EXPIRATION
    CHECK_POLICY
    CLASSIFIER_FUNCTION
    CLEANTABLE
    CLEANUP
    CLONEDATABASE
    CLOSE
    CLUSTER
    CLUSTERED
    COALESCE
    COLLATE
    COLLECTION
    COLON
    COLONCOLON
    COLONEQ
    COLUMN
    COLUMNPROPERTY
    COLUMNS
    COLUMNSTORE
    COLUMNSTORE_ARCHIVE
    COLUMN_ENCRYPTION_KEY
    COLUMN_MASTER_KEY
    COL_LENGTH
    COL_NAME
    COMMA
    COMMIT
    COMMITTED
    COMPATIBILITY_LEVEL
    COMPRESS
    COMPRESSION
    COMPRESSION_DELAY
    COMPRESS_ALL_ROW_GROUPS
    COMPUTE
    CONCAT
    CONCAT_NULL_YIELDS_NULL
    CONCAT_WS
    CONFIGURATION
    CONNECT
    CONNECTION
    CONNECTIONPROPERTY
    CONSTRAINT
    CONTAINMENT
    CONTAINS
    CONTAINSTABLE
    CONTENT
    CONTEXT
    CONTEXT_INFO
    CONTINUE
    CONTINUE_AFTER_ERROR
    CONTRACT
    CONTRACT_NAME
    CONTROL
    CONVERSATION
    CONVERT
    COOKIE
    COPY_ONLY
    COS
    COT
    COUNT
    COUNTER
    COUNT_BIG
    CPU
    CREATE
    CREATE_NEW
    CREATION_DISPOSITION
    CREDENTIAL
    CROSS
    CRYPTOGRAPHIC
    CUME_DIST
    CURRENT
    CURRENT_DATE
    CURRENT_REQUEST_ID
    CURRENT_TIME
    CURRENT_TIMESTAMP
    CURRENT_TIMEZONE
    CURRENT_TIMEZONE_ID
    CURRENT_TRANSACTION_ID
    CURRENT_USER
    CURSOR
    CURSOR_CLOSE_ON_COMMIT
    CURSOR_DEFAULT
    CURSOR_ROWS
    CURSOR_STATUS
    CYCLE
    DATA
    DATABASE
    DATABASEPROPERTYEX
    DATABASE_MIRRORING
    DATABASE_PRINCIPAL_ID
    DATALENGTH
    DATASPACE
    DATA_COMPRESSION
    DATA_PURITY
    DATA_SOURCE
    DATEADD
    DATEDIFF
    DATEDIFF_BIG
    DATEFROMPARTS
    DATENAME
    DATEPART
    DATETIME2FROMPARTS
    DATETIMEFROMPARTS
    DATETIMEOFFSETFROMPARTS
    DATETRUNC
    DATE_BUCKET
    DATE_CORRELATION_OPTIMIZATION
    DAY
    DAYOFYEAR
    DAYOFYEAR_ABBR
    DAYS
    DAY_ABBR
    DBCC
    DBREINDEX
    DB_CHAINING
    DB_FAILOVER
    DB_ID
    DB_NAME
    DDL
    DEALLOCATE
    DECIMAL
    DECLARE
    DECOMPRESS
    DECRYPTION
    DEFAULT
    DEFAULT_DATABASE
    DEFAULT_DOUBLE_QUOTE
    DEFAULT_FULLTEXT_LANGUAGE
    DEFAULT_LANGUAGE
    DEFAULT_SCHEMA
    DEFINITION
    DEGREES
    DELAY
    DELAYED_DURABILITY
    DELETE
    DELETED
    DENSE_RANK
    DENY
    DEPENDENTS
    DES
    DESC
    DESCRIPTION
    DESX
    DETERMINISTIC
    DHCP
    DIAGNOSTICS
    DIALOG
    DIFFERENCE
    DIFFERENTIAL
    DIRECTORY_NAME
    DISABLE
    DISABLED
    DISABLE_BROKER
    DISK
    DISK_DRIVE
    DISTINCT
    DISTRIBUTED
    DISTRIBUTION
    DOCUMENT
    DOLLAR
    DOLLAR_ACTION
    DOLLAR_PARTITION
    DOT
    DOTDOT
    DOTSTAR
    DOUBLE
    DOUBLE_BACK_SLASH
    DOUBLE_COLON
    DOUBLE_FORWARD_SLASH
    DOUBLE_QUOTE_BLANK
    DOUBLE_QUOTE_ID
    DQUOTE
    DROP
    DROPCLEANBUFFERS
    DROP_EXISTING
    DTC_SUPPORT
    DUMP
    DYNAMIC
    ELEMENTS
    ELLIPSIS
    ELSE
    EMERGENCY
    EMPTY
    ENABLE
    ENABLED
    ENABLE_BROKER
    ENCRYPTED
    ENCRYPTED_VALUE
    ENCRYPTION
    ENCRYPTION_TYPE
    END
    ENDPOINT
    ENDPOINT_URL
    EOMONTH
    EQ
    EQEQ
    EQEQEQ
    EQUAL
    ERRLVL
    ERROR
    ERROR_BROKER_CONVERSATIONS
    ERROR_LINE
    ERROR_MESSAGE
    ERROR_NUMBER
    ERROR_PROCEDURE
    ERROR_SEVERITY
    ERROR_STATE
    ESCAPE
    ESTIMATEONLY
    EVENT
    EVENTDATA
    EVENT_RETENTION_MODE
    EXCEPT
    EXCLAMATION
    EXCLUSIVE
    EXECUTABLE
    EXECUTABLE_FILE
    EXECUTE
    EXIST
    EXISTS
    EXIST_SQUARE_BRACKET
    EXIT
    EXP
    EXPAND
    EXPIREDATE
    EXPIRY_DATE
    EXPLICIT
    EXTENDED_LOGICAL_CHECKS
    EXTENSION
    EXTERNAL
    EXTERNAL_ACCESS
    FAILOVER
    FAILOVER_MODE
    FAILURE
    FAILURECONDITIONLEVEL
    FAILURE_CONDITION_LEVEL
    FAIL_OPERATION
    FAN_IN
    FAST
    FAST_FORWARD
    FATARROW
    FETCH
    FETCH_STATUS
    FILE
    FILEGROUP
    FILEGROUPPROPERTY
    FILEGROUP_ID
    FILEGROUP_NAME
    FILEGROWTH
    FILENAME
    FILEPATH
    FILEPROPERTY
    FILEPROPERTYEX
    FILESTREAM
    FILESTREAM_ON
    FILE_ID
    FILE_IDEX
    FILE_NAME
    FILE_SNAPSHOT
    FILLFACTOR
    FILTER
    FIRST
    FIRST_VALUE
    FLOAT
    FLOOR
    FMTONLY
    FOLLOWING
    FOR
    FORCE
    FORCED
    FORCEPLAN
    FORCESCAN
    FORCESEEK
    FORCE_FAILOVER_ALLOW_DATA_LOSS
    FORCE_SERVICE_ALLOW_DATA_LOSS
    FOREIGN
    FORMAT
    FORMATMESSAGE
    FORWARD_ONLY
    FREE
    FREETEXT
    FREETEXTTABLE
    FROM
    FULL
    FULLSCAN
    FULLTEXT
    FULLTEXTCATALOGPROPERTY
    FULLTEXTSERVICEPROPERTY
    FUNCTION
    GB
    GENERATED
    GET
    GETANCESTOR
    GETANSINULL
    GETDATE
    GETDESCENDANT
    GETLEVEL
    GETREPARENTEDVALUE
    GETROOT
    GETUTCDATE
    GET_FILESTREAM_TRANSACTION_CONTEXT
    GLOBAL
    GO
    GOTO
    GOVERNOR
    GRANT
    GREATER
    GREATEST
    GROUP
    GROUPING
    GROUPING_ID
    GROUP_MAX_REQUESTS
    GT
    GTEQ
    HADR
    HASH
    HASHED
    HAS_DBACCESS
    HAS_PERMS_BY_NAME
    HAVING
    HEALTHCHECKTIMEOUT
    HEALTH_CHECK_TIMEOUT
    HEAP
    HIDDEN_KEYWORD
    HIERARCHYID
    HIGH
    HOLDLOCK
    HONOR_BROKER_PRIORITY
    HOST_ID
    HOST_NAME
    HOUR
    HOURS
    HOUR_ABBR
    ID
    IDENTIFIER
    IDENTITY
    IDENTITYCOL
    IDENTITY_INSERT
    IDENTITY_VALUE
    IDENT_CURRENT
    IDENT_INCR
    IDENT_SEED
    IF
    IGNORE_CONSTRAINTS
    IGNORE_DUP_KEY
    IGNORE_NONCLUSTERED_COLUMNSTORE_INDEX
    IGNORE_REPLICATED_TABLE_CACHE
    IGNORE_TRIGGERS
    IIF
    IMMEDIATE
    IMPERSONATE
    IMPLICIT_TRANSACTIONS
    IMPORTANCE
    IN
    INCLUDE
    INCLUDE_NULL_VALUES
    INCREMENT
    INCREMENTAL
    INDEX
    INDEXKEY_PROPERTY
    INDEXPROPERTY
    INDEX_COL
    INFINITE
    INIT
    INITIATOR
    INNER
    INPUT
    INSENSITIVE
    INSERT
    INSERTED
    INSTEAD
    INT
    INTERSECT
    INTO
    IO
    IP
    IPV4_ADDR
    IS
    ISDATE
    ISDESCENDANTOF
    ISJSON
    ISNULL
    ISNUMERIC
    ISOLATION
    ISO_WEEK
    ISO_WEEK_ABBR
    IS_MEMBER
    IS_ROLEMEMBER
    IS_SRVROLEMEMBER
    JOB
    JOIN
    JSON
    JSON_ARRAY
    JSON_MODIFY
    JSON_OBJECT
    JSON_PATH_EXISTS
    JSON_QUERY
    JSON_VALUE
    KB
    KEEP
    KEEPDEFAULTS
    KEEPFIXED
    KEEPIDENTITY
    KERBEROS
    KEY
    KEYS
    KEYSET
    KEY_PATH
    KEY_SOURCE
    KEY_STORE_PROVIDER_NAME
    KILL
    LAG
    LANGUAGE
    LAST
    LAST_VALUE
    LBRACE
    LBRACKET
    LEAD
    LEAST
    LEFT
    LEN
    LESS
    LEVEL
    LIBRARY
    LIFETIME
    LIKE
    LINENO
    LINKED
    LINUX
    LIST
    LISTENER
    LISTENER_IP
    LISTENER_PORT
    LISTENER_URL
    LOAD
    LOB_COMPACTION
    LOCAL
    LOCAL_ID
    LOCAL_SERVICE_NAME
    LOCATION
    LOCK
    LOCK_ESCALATION
    LOG
    LOG10
    LOGIN
    LOGINPROPERTY
    LOOP
    LOW
    LOWER
    LPAREN
    LR_BRACKET
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    LTRIM
    MANUAL
    MARK
    MASK
    MASKED
    MASTER
    MATCHED
    MATERIALIZED
    MAX
    MAXDOP
    MAXRECURSION
    MAXSIZE
    MAXTRANSFER
    MAXVALUE
    MAX_CPU_PERCENT
    MAX_DISPATCH_LATENCY
    MAX_DOP
    MAX_DURATION
    MAX_EVENT_SIZE
    MAX_FILES
    MAX_IOPS_PER_VOLUME
    MAX_MEMORY
    MAX_MEMORY_PERCENT
    MAX_OUTSTANDING_IO_PER_VOLUME
    MAX_PROCESSES
    MAX_QUEUE_READERS
    MAX_ROLLOVER_FILES
    MAX_SIZE
    MB
    MEDIADESCRIPTION
    MEDIANAME
    MEDIUM
    MEMBER
    MEMORY_OPTIMIZED_DATA
    MEMORY_PARTITION_MODE
    MERGE
    MESSAGE
    MESSAGE_FORWARDING
    MESSAGE_FORWARD_SIZE
    MICROSECOND
    MICROSECOND_ABBR
    MILLISECOND
    MILLISECOND_ABBR
    MIN
    MINUS
    MINUSEQ
    MINUSMINUS
    MINUTE
    MINUTES
    MINUTE_ABBR
    MINVALUE
    MIN_ACTIVE_ROWVERSION
    MIN_CPU_PERCENT
    MIN_IOPS_PER_VOLUME
    MIN_MEMORY_PERCENT
    MIRROR
    MIRROR_ADDRESS
    MIXED_PAGE_ALLOCATION
    MODE
    MODIFY
    MODIFY_SQUARE_BRACKET
    MONTH
    MONTH_ABBR
    MOVE
    MULTI_USER
    MULT_ASSIGN
    MUST_CHANGE
    NAME
    NANOSECOND
    NANOSECOND_ABBR
    NATIONAL
    NCHAR
    NEGOTIATE
    NESTED_TRIGGERS
    NEWID
    NEWNAME
    NEWSEQUENTIALID
    NEW_ACCOUNT
    NEW_BROKER
    NEW_PASSWORD
    NEXT
    NO
    NOCHECK
    NOCOUNT
    NODES
    NOEXEC
    NOEXPAND
    NOFORMAT
    NOHOLDLOCK
    NOINDEX
    NOINIT
    NOLOCK
    NONCLUSTERED
    NONE
    NON_TRANSACTED_ACCESS
    NORECOMPUTE
    NORECOVERY
    NOREWIND
    NOSKIP
    NOT
    NOTEQ
    NOTEQEQ
    NOTIFICATION
    NOTIFICATIONS
    NOUNLOAD
    NOWAIT
    NO_CHECKSUM
    NO_COMPRESSION
    NO_EVENT_LOSS
    NO_INFOMSGS
    NO_QUERYSTORE
    NO_STATISTICS
    NO_TRUNCATE
    NO_WAIT
    NTILE
    NTLM
    NULLIF
    NULL_
    NULL_DOUBLE_QUOTE
    NUMANODE
    NUMBER
    NUMERIC_ROUNDABORT
    NVARCHAR
    OBJECT
    OBJECTPROPERTY
    OBJECTPROPERTYEX
    OBJECT_DEFINITION
    OBJECT_ID
    OBJECT_NAME
    OBJECT_SCHEMA_NAME
    OF
    OFF
    OFFLINE
    OFFSET
    OFFSETS
    OLD_ACCOUNT
    OLD_PASSWORD
    ON
    ONLINE
    ONLY
    ON_FAILURE
    OPEN
    OPENDATASOURCE
    OPENJSON
    OPENQUERY
    OPENROWSET
    OPENXML
    OPEN_EXISTING
    OPERATIONS
    OPTIMISTIC
    OPTIMIZE
    OPTIMIZE_FOR_SEQUENTIAL_KEY
    OPTION
    OR
    ORDER
    ORIGINAL_DB_NAME
    ORIGINAL_LOGIN
    OROR
    OUT
    OUTER
    OUTPUT
    OVER
    OVERRIDE
    OWNER
    OWNERSHIP
    PAD_INDEX
    PAGE
    PAGECOUNT
    PAGE_VERIFY
    PAGLOCK
    PARAMETERIZATION
    PARAM_NODE
    PARSE
    PARSENAME
    PARSEONLY
    PARTIAL
    PARTITION
    PARTITIONS
    PARTNER
    PASSWORD
    PATH
    PATINDEX
    PAUSE
    PDW_SHOWSPACEUSED
    PERCENT
    PERCENTEQ
    PERCENTILE_CONT
    PERCENTILE_DISC
    PERCENT_RANK
    PERMISSIONS
    PERMISSION_SET
    PERSISTED
    PERSIST_SAMPLE_PERCENT
    PER_CPU
    PER_DB
    PER_NODE
    PHYSICAL_ONLY
    PI
    PIPE
    PIPEEQ
    PIVOT
    PLACEHOLDER
    PLAN
    PLATFORM
    PLUS
    PLUSEQ
    PLUSPLUS
    POISON_MESSAGE_HANDLING
    POLICY
    POOL
    PORT
    POWER
    PRECEDING
    PRECISION
    PREDICATE
    PRIMARY
    PRIMARY_ROLE
    PRINT
    PRIOR
    PRIORITY
    PRIORITY_LEVEL
    PRIVATE
    PRIVATE_KEY
    PRIVILEGES
    PROC
    PROCCACHE
    PROCEDURE
    PROCEDURE_NAME
    PROCESS
    PROFILE
    PROPERTY
    PROVIDER
    PROVIDER_KEY_NAME
    PUBLIC
    PWDCOMPARE
    PWDENCRYPT
    PYTHON
    QUARTER
    QUARTER_ABBR
    QUERY
    QUERY_SQUARE_BRACKET
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    QUEUE
    QUEUE_DELAY
    QUOTED_IDENTIFIER
    QUOTENAME
    R
    RADIANS
    RAISERROR
    RAND
    RANDOMIZED
    RANGE
    RANK
    RAW
    RBRACE
    RBRACKET
    RC2
    RC4
    RC4_128
    READ
    READCOMMITTED
    READCOMMITTEDLOCK
    READONLY
    READPAST
    READTEXT
    READUNCOMMITTED
    READWRITE
    READ_COMMITTED_SNAPSHOT
    READ_ONLY
    READ_ONLY_ROUTING_LIST
    READ_WRITE
    READ_WRITE_FILEGROUPS
    REAL
    REBUILD
    RECEIVE
    RECOMPILE
    RECONFIGURE
    RECOVERY
    RECURSIVE_TRIGGERS
    REFERENCES
    REGENERATE
    RELATED_CONVERSATION
    RELATED_CONVERSATION_GROUP
    RELATIVE
    REMOTE
    REMOTE_PROC_TRANSACTIONS
    REMOTE_SERVICE_NAME
    REMOVE
    REORGANIZE
    REPAIR_ALLOW_DATA_LOSS
    REPAIR_FAST
    REPAIR_REBUILD
    REPEATABLE
    REPEATABLEREAD
    REPLACE
    REPLICA
    REPLICATE
    REPLICATION
    REQUEST_MAX_CPU_TIME_SEC
    REQUEST_MAX_MEMORY_GRANT_PERCENT
    REQUEST_MEMORY_GRANT_TIMEOUT_SEC
    REQUIRED
    REQUIRED_SYNCHRONIZED_SECONDARIES_TO_COMMIT
    RESAMPLE
    RESERVE_DISK_SPACE
    RESET
    RESOURCE
    RESOURCES
    RESOURCE_MANAGER_LOCATION
    RESTART
    RESTORE
    RESTRICT
    RESTRICTED_USER
    RESUMABLE
    RESUME
    RETAINDAYS
    RETENTION
    RETURN
    RETURNS
    REVERSE
    REVERT
    REVOKE
    REWIND
    RIGHT
    ROBUST
    ROLE
    ROLLBACK
    ROOT
    ROUND
    ROUND_ROBIN
    ROUTE
    ROW
    ROWCOUNT
    ROWCOUNT_BIG
    ROWGUID
    ROWGUIDCOL
    ROWLOCK
    ROWS
    ROW_NUMBER
    RPAREN
    RR_BRACKET
    RSA_1024
    RSA_2048
    RSA_3072
    RSA_4096
    RSA_512
    RSHIFT
    RSHIFTEQ
    RTRIM
    RULE
    SAFE
    SAFETY
    SAMPLE
    SAVE
    SCHEDULER
    SCHEMA
    SCHEMABINDING
    SCHEMA_ID
    SCHEMA_NAME
    SCHEME
    SCOPED
    SCOPE_IDENTITY
    SCRIPT
    SCROLL
    SCROLL_LOCKS
    SEARCH
    SECOND
    SECONDARY
    SECONDARY_ONLY
    SECONDARY_ROLE
    SECONDS
    SECOND_ABBR
    SECRET
    SECURABLES
    SECURITY
    SECURITYAUDIT
    SECURITY_LOG
    SEEDING_MODE
    SELECT
    SELF
    SEMANTICKEYPHRASETABLE
    SEMANTICSIMILARITYDETAILSTABLE
    SEMANTICSIMILARITYTABLE
    SEMI
    SEMI_SENSITIVE
    SEND
    SENT
    SEQUENCE
    SEQUENCE_NUMBER
    SERIALIZABLE
    SERVER
    SERVERPROPERTY
    SERVICE
    SERVICEBROKER
    SERVICE_BROKER
    SERVICE_NAME
    SESSION
    SESSIONPROPERTY
    SESSION_CONTEXT
    SESSION_TIMEOUT
    SESSION_USER
    SET
    SETERROR
    SETS
    SETTINGS
    SETUSER
    SHARE
    SHARED
    SHOWCONTIG
    SHOWPLAN
    SHOWPLAN_ALL
    SHOWPLAN_TEXT
    SHOWPLAN_XML
    SHRINKLOG
    SHUTDOWN
    SID
    SIGN
    SIGNATURE
    SIMPLE
    SIN
    SINGLE_QUOTE
    SINGLE_USER
    SIZE
    SKIP_KEYWORD
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SMALLDATETIMEFROMPARTS
    SMALLINT
    SNAPSHOT
    SOFTNUMA
    SOME
    SORT_IN_TEMPDB
    SOUNDEX
    SOURCE
    SPACE_KEYWORD
    SPARSE
    SPATIAL_WINDOW_MAX_CELLS
    SPECIFICATION
    SPLIT
    SP_EXECUTESQL
    SQL
    SQLDUMPERFLAGS
    SQLDUMPERPATH
    SQLDUMPERTIMEOUT
    SQL_VARIANT_PROPERTY
    SQRT
    SQUARE
    SQUARE_BRACKET_ID
    SQUOTE
    STANDBY
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    START
    STARTED
    STARTUP_STATE
    START_DATE
    STATE
    STATIC
    STATISTICS
    STATISTICS_INCREMENTAL
    STATISTICS_NORECOMPUTE
    STATS
    STATS_DATE
    STATS_STREAM
    STATUS
    STATUSONLY
    STDEV
    STDEVP
    STOP
    STOPLIST
    STOPPED
    STOP_ON_ERROR
    STR
    STRING
    STRING_AGG
    STRING_ESCAPE
    STUFF
    SUBJECT
    SUBSCRIBE
    SUBSCRIPTION
    SUBSTRING
    SUM
    SUPPORTED
    SUSER_ID
    SUSER_NAME
    SUSER_SID
    SUSER_SNAME
    SUSPEND
    SWITCH
    SWITCHOFFSET
    SYMMETRIC
    SYNCHRONOUS_COMMIT
    SYNONYM
    SYSDATETIME
    SYSDATETIMEOFFSET
    SYSTEM
    SYSTEM_USER
    SYSUTCDATETIME
    TABLE
    TABLERESULTS
    TABLESAMPLE
    TABLOCK
    TABLOCKX
    TAKE
    TAN
    TAPE
    TARGET
    TARGET_RECOVERY_TIME
    TB
    TCP
    TEMP_ID
    TEXTIMAGE_ON
    TEXTSIZE
    THEN
    THROW
    TIES
    TILDE
    TIME
    TIMEFROMPARTS
    TIMEOUT
    TIMER
    TINYINT
    TO
    TODATETIMEOFFSET
    TOP
    TORN_PAGE_DETECTION
    TOSTRING
    TRACE
    TRACKING
    TRACK_CAUSALITY
    TRAN
    TRANSACTION
    TRANSACTION_ID
    TRANSFER
    TRANSFORM_NOISE_WORDS
    TRANSLATE
    TRIGGER
    TRIM
    TRIPLE_DES
    TRIPLE_DES_3KEY
    TRUNCATE
    TRUSTWORTHY
    TRY
    TRY_CAST
    TSEQUAL
    TSQL
    TWO_DIGIT_YEAR_CUTOFF
    TYPE
    TYPEPROPERTY
    TYPE_ID
    TYPE_NAME
    TYPE_WARNING
    TZOFFSET
    TZOFFSET_ABBR
    UNBOUNDED
    UNCHECKED
    UNCOMMITTED
    UNDERSCORE
    UNICODE
    UNION
    UNIQUE
    UNKNOWN
    UNLIMITED
    UNLOCK
    UNMASK
    UNPIVOT
    UNSAFE
    UOW
    UPDATE
    UPDATETEXT
    UPDLOCK
    UPPER
    URL
    URSHIFT
    URSHIFTEQ
    USE
    USED
    USER
    USER_ID
    USER_NAME
    USING
    VALIDATION
    VALID_XML
    VALUE
    VALUES
    VALUE_SQUARE_BRACKET
    VAR
    VARBINARY_KEYWORD
    VARCHAR
    VARP
    VARYING
    VERBOSELOGGING
    VERIFY_CLONEDB
    VERSION
    VIEW
    VIEWS
    VIEW_METADATA
    VISIBILITY
    WAIT
    WAITFOR
    WAIT_AT_LOW_PRIORITY
    WEEK
    WEEKDAY
    WEEKDAY_ABBR
    WEEK_ABBR
    WELL_FORMED_XML
    WHEN
    WHERE
    WHILE
    WINDOWS
    WITH
    WITHIN
    WITHOUT
    WITHOUT_ARRAY_WRAPPER
    WITNESS
    WORK
    WORKLOAD
    WRITETEXT
    XACT_ABORT
    XACT_STATE
    XLOCK
    XML
    XMLDATA
    XMLNAMESPACES
    XMLSCHEMA
    XML_COMPRESSION
    XSINIL
    YEAR
    YEAR_ABBR
    YIELDSTAR
    ZONE
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
            | number     /. makeToken($_DECIMAL); ./
            | string     /. makeToken($_STRING); ./
            | LineComment /. skipToken(); ./
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
            | BackSlash BackSlash /. makeToken($_BACKSLASH); ./
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

    string ::= '"' SLBody '"'
             | SingleQuote SLBodySQ SingleQuote

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

    charlit ::= SingleQuote NotSQ SingleQuote

    LineComment ::= '/' '/' LineCommentBody
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
