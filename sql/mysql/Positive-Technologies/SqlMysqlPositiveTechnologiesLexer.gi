-- Real lexer for SqlMysqlPositiveTechnologiesParser (not token-stream soup). Keywords via SqlMysqlPositiveTechnologiesKWLexer.
%Options list
%Options fp=SqlMysqlPositiveTechnologiesLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.sql.mysql.Positive_Technologies
%options template=LexerTemplateF.gi
%options filter=SqlMysqlPositiveTechnologiesKWLexer.gi

%Define
    $kw_lexer_class /.$SqlMysqlPositiveTechnologiesKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ABS
    ACCOUNT
    ACOS
    ACTION
    ADD
    ADDDATE
    ADDTIME
    ADMIN
    AES_DECRYPT
    AES_ENCRYPT
    AFTER
    AGGREGATE
    ALGORITHM
    ALL
    ALTER
    ALWAYS
    AMP
    AMPEQ
    ANALYZE
    AND
    ANDAND
    ANY
    APPLICATION_PASSWORD_ADMIN
    ARCHIVE
    AREA
    ARMSCII8
    ARRAY
    ARROW
    ARROWSTAR
    AS
    ASBINARY
    ASC
    ASCII
    ASIN
    ASTEXT
    ASWKB
    ASWKT
    ASYMMETRIC_DECRYPT
    ASYMMETRIC_DERIVE
    ASYMMETRIC_ENCRYPT
    ASYMMETRIC_SIGN
    ASYMMETRIC_VERIFY
    AT
    ATAN
    ATAN2
    ATEQ
    ATTRIBUTE
    AUDIT_ABORT_EXEMPT
    AUDIT_ADMIN
    AUTHENTICATION_POLICY_ADMIN
    AUTHORS
    AUTOCOMMIT
    AUTOEXTEND_SIZE
    AUTO_INCREMENT
    AVG
    AVG_ROW_LENGTH
    BACKSLASH
    BACKTICK
    BACKUP_ADMIN
    BANG
    BEFORE
    BEGIN
    BENCHMARK
    BETWEEN
    BIG5
    BIGINT
    BIN
    BINARY
    BINLOG
    BINLOG_ADMIN
    BINLOG_ENCRYPTION_ADMIN
    BIT
    BITCLEAR
    BIT_AND
    BIT_COUNT
    BIT_LENGTH
    BIT_OR
    BIT_STRING
    BIT_XOR
    BLACKHOLE
    BLOB
    BLOCK
    BOOL
    BOOLEAN
    BOTH
    BTREE
    BUCKETS
    BUFFER
    BY
    CACHE
    CALL
    CARET
    CARETEQ
    CASCADE
    CASCADED
    CASE
    CAST
    CATALOG_NAME
    CEIL
    CEILING
    CENTROID
    CHAIN
    CHANGE
    CHANGED
    CHANNEL
    CHAR
    CHARACTER
    CHARACTER_LENGTH
    CHARSET_REVERSE_QOUTE_STRING
    CHAR_LENGTH
    CHAR_LITERAL
    CHECK
    CHECKSUM
    CIPHER
    CLASS_ORIGIN
    CLIENT
    CLONE_ADMIN
    CLOSE
    CLUSTERING
    COALESCE
    CODE
    COERCIBILITY
    COLLATE
    COLLATION
    COLON
    COLONCOLON
    COLONEQ
    COLUMN
    COLUMNS
    COLUMN_FORMAT
    COLUMN_NAME
    COMMA
    COMMENT
    COMMIT
    COMMITTED
    COMPACT
    COMPLETION
    COMPRESS
    COMPRESSED
    COMPRESSION
    CONCAT
    CONCAT_WS
    CONCURRENT
    CONDITION
    CONNECT
    CONNECTION
    CONNECTION_ADMIN
    CONNECTION_ID
    CONSISTENT
    CONSTRAINT
    CONSTRAINT_CATALOG
    CONSTRAINT_NAME
    CONSTRAINT_SCHEMA
    CONTAINS
    CONTEXT
    CONTINUE
    CONTRIBUTORS
    CONV
    CONVERT
    CONVERT_TZ
    COPY
    COS
    COT
    COUNT
    CP1250
    CP1251
    CP1256
    CP1257
    CP850
    CP852
    CP866
    CP932
    CPU
    CRC32
    CREATE
    CREATE_ASYMMETRIC_PRIV_KEY
    CREATE_ASYMMETRIC_PUB_KEY
    CREATE_DH_PARAMETERS
    CREATE_DIGEST
    CROSS
    CROSSES
    CSV
    CUME_DIST
    CURDATE
    CURRENT
    CURRENT_DATE
    CURRENT_ROLE
    CURRENT_TIME
    CURRENT_TIMESTAMP
    CURRENT_USER
    CURSOR
    CURSOR_NAME
    CURTIME
    CYCLE
    DATA
    DATABASE
    DATABASES
    DATAFILE
    DATE
    DATEDIFF
    DATETIME
    DATE_ADD
    DATE_FORMAT
    DATE_SUB
    DAY
    DAYNAME
    DAYOFMONTH
    DAYOFWEEK
    DAYOFYEAR
    DAY_HOUR
    DAY_MICROSECOND
    DAY_MINUTE
    DAY_SECOND
    DEALLOCATE
    DEC
    DEC8
    DECIMAL
    DECIMAL_LITERAL
    DECLARE
    DECODE
    DEFAULT
    DEFAULT_AUTH
    DEFINER
    DEGREES
    DELAYED
    DELAY_KEY_WRITE
    DELETE
    DENSE_RANK
    DESC
    DESCRIBE
    DES_DECRYPT
    DES_ENCRYPT
    DES_KEY_FILE
    DETERMINISTIC
    DIAGNOSTICS
    DIMENSION
    DIRECTORY
    DISABLE
    DISCARD
    DISJOINT
    DISK
    DISTANCE
    DISTINCT
    DISTINCTROW
    DIV
    DO
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DOT_ID
    DOUBLE
    DQUOTE
    DROP
    DUMPFILE
    DUPLICATE
    DYNAMIC
    EACH
    ELLIPSIS
    ELSE
    ELSEIF
    ELT
    EMPTY
    ENABLE
    ENCLOSED
    ENCODE
    ENCRYPT
    ENCRYPTED
    ENCRYPTION
    ENCRYPTION_KEY_ADMIN
    ENCRYPTION_KEY_ID
    END
    ENDPOINT
    ENDS
    ENFORCED
    ENGINE
    ENGINES
    ENGINE_ATTRIBUTE
    ENUM
    ENVELOPE
    EQ
    EQEQ
    EQEQEQ
    EQUALS
    EQUAL_SYMBOL
    ERROR
    ERRORS
    ESCAPE
    ESCAPED
    EUCJPMS
    EUCKR
    EUR
    EVEN
    EVENT
    EVENTS
    EVERY
    EXCEPT
    EXCHANGE
    EXCLUSIVE
    EXECUTE
    EXISTS
    EXIT
    EXP
    EXPIRE
    EXPLAIN
    EXPORT
    EXPORT_SET
    EXTENDED
    EXTENT_SIZE
    EXTERIORRING
    EXTRACT
    EXTRACTVALUE
    FAILED_LOGIN_ATTEMPTS
    FALSE
    FAST
    FATARROW
    FAULTS
    FEDERATED
    FETCH
    FIELD
    FIELDS
    FILE
    FILESIZE_LITERAL
    FILE_BLOCK_SIZE
    FILTER
    FIND_IN_SET
    FIREWALL_ADMIN
    FIREWALL_EXEMPT
    FIREWALL_RULES
    FIREWALL_USER
    FIRST
    FIRST_VALUE
    FIXED
    FLOAT
    FLOAT4
    FLOAT8
    FLOOR
    FLUSH
    FLUSH_OPTIMIZER_COSTS
    FLUSH_STATUS
    FLUSH_TABLES
    FLUSH_USER_RESOURCES
    FOLLOWING
    FOLLOWS
    FOR
    FORCE
    FOREIGN
    FORMAT
    FOUND
    FOUND_ROWS
    FROM
    FROM_BASE64
    FROM_DAYS
    FROM_UNIXTIME
    FULL
    FULLTEXT
    FUNCTION
    GB18030
    GB2312
    GBK
    GENERAL
    GENERATED
    GEOMCOLLECTION
    GEOMCOLLFROMTEXT
    GEOMCOLLFROMWKB
    GEOMETRY
    GEOMETRYCOLLECTION
    GEOMETRYCOLLECTIONFROMTEXT
    GEOMETRYCOLLECTIONFROMWKB
    GEOMETRYFROMTEXT
    GEOMETRYFROMWKB
    GEOMETRYN
    GEOMETRYTYPE
    GEOMFROMTEXT
    GEOMFROMWKB
    GEOSTD8
    GET
    GET_FORMAT
    GET_LOCK
    GLENGTH
    GLOBAL
    GLOBAL_ID
    GRANT
    GRANTS
    GREATEST
    GREEK
    GROUP
    GROUP_CONCAT
    GROUP_REPLICATION
    GROUP_REPLICATION_ADMIN
    GT
    GTEQ
    GTID_SUBSET
    GTID_SUBTRACT
    HANDLER
    HASH
    HAVING
    HEBREW
    HELP
    HEX
    HEXADECIMAL_LITERAL
    HIGH_PRIORITY
    HISTOGRAM
    HISTORY
    HOST
    HOSTS
    HOST_IP_ADDRESS
    HOUR
    HOUR_MICROSECOND
    HOUR_MINUTE
    HOUR_SECOND
    HP8
    ID
    IDENTIFIED
    IDENTIFIER
    IF
    IFNULL
    IGNORE
    IGNORED
    IGNORE_SERVER_IDS
    IMPORT
    IN
    INCREMENT
    INDEX
    INDEXES
    INET6_ATON
    INET6_NTOA
    INET_ATON
    INET_NTOA
    INFILE
    INITIAL_SIZE
    INNER
    INNODB
    INNODB_REDO_LOG_ARCHIVE
    INNODB_REDO_LOG_ENABLE
    INOUT
    INPLACE
    INSERT
    INSERT_METHOD
    INSTALL
    INSTANCE
    INSTANT
    INSTR
    INT
    INT1
    INT2
    INT3
    INT4
    INT8
    INTEGER
    INTERIORRINGN
    INTERNAL
    INTERSECTS
    INTERVAL
    INTO
    INVISIBLE
    INVOKE
    INVOKER
    IO
    IO_THREAD
    IPC
    IS
    ISCLOSED
    ISEMPTY
    ISNULL
    ISO
    ISOLATION
    ISSIMPLE
    ISSUER
    IS_FREE_LOCK
    IS_IPV4
    IS_IPV4_COMPAT
    IS_IPV4_MAPPED
    IS_IPV6
    IS_USED_LOCK
    ITERATE
    JIS
    JOIN
    JSON
    JSON_ARRAY
    JSON_ARRAYAGG
    JSON_ARRAY_APPEND
    JSON_ARRAY_INSERT
    JSON_CONTAINS
    JSON_CONTAINS_PATH
    JSON_DEPTH
    JSON_EXTRACT
    JSON_INSERT
    JSON_KEYS
    JSON_LENGTH
    JSON_MERGE
    JSON_MERGE_PATCH
    JSON_MERGE_PRESERVE
    JSON_OBJECT
    JSON_OBJECTAGG
    JSON_OVERLAPS
    JSON_PRETTY
    JSON_QUOTE
    JSON_REMOVE
    JSON_REPLACE
    JSON_SCHEMA_VALID
    JSON_SCHEMA_VALIDATION_REPORT
    JSON_SEARCH
    JSON_SET
    JSON_STORAGE_FREE
    JSON_STORAGE_SIZE
    JSON_TABLE
    JSON_TYPE
    JSON_UNQUOTE
    JSON_VALID
    JSON_VALUE
    KEY
    KEYBCS2
    KEYS
    KEY_BLOCK_SIZE
    KILL
    KOI8R
    KOI8U
    LAG
    LAMBDA
    LANGUAGE
    LAST
    LAST_INSERT_ID
    LAST_VALUE
    LATERAL
    LATIN1
    LATIN2
    LATIN5
    LATIN7
    LBRACE
    LBRACKET
    LCASE
    LEAD
    LEADING
    LEAST
    LEAVE
    LEAVES
    LEFT
    LENGTH
    LESS
    LEVEL
    LIKE
    LIMIT
    LINEAR
    LINEFROMTEXT
    LINEFROMWKB
    LINES
    LINESTRING
    LINESTRINGFROMTEXT
    LINESTRINGFROMWKB
    LIST
    LN
    LOAD
    LOAD_FILE
    LOCAL
    LOCALTIME
    LOCALTIMESTAMP
    LOCAL_ID
    LOCATE
    LOCK
    LOCKED
    LOG
    LOG10
    LOG2
    LOGFILE
    LOGS
    LONG
    LONGBLOB
    LONGTEXT
    LOOP
    LOWER
    LOW_PRIORITY
    LPAD
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    LTRIM
    MACCE
    MACROMAN
    MAKEDATE
    MAKETIME
    MAKE_SET
    MASTER
    MASTER_AUTO_POSITION
    MASTER_BIND
    MASTER_CONNECT_RETRY
    MASTER_DELAY
    MASTER_HEARTBEAT_PERIOD
    MASTER_HOST
    MASTER_LOG_FILE
    MASTER_LOG_POS
    MASTER_PASSWORD
    MASTER_PORT
    MASTER_POS_WAIT
    MASTER_RETRY_COUNT
    MASTER_SSL
    MASTER_SSL_CA
    MASTER_SSL_CAPATH
    MASTER_SSL_CERT
    MASTER_SSL_CIPHER
    MASTER_SSL_CRL
    MASTER_SSL_CRLPATH
    MASTER_SSL_KEY
    MASTER_SSL_VERIFY_SERVER_CERT
    MASTER_TLS_VERSION
    MASTER_USER
    MATCH
    MAX
    MAXVALUE
    MAX_CONNECTIONS_PER_HOUR
    MAX_QUERIES_PER_HOUR
    MAX_ROWS
    MAX_SIZE
    MAX_UPDATES_PER_HOUR
    MAX_USER_CONNECTIONS
    MBRCONTAINS
    MBRDISJOINT
    MBREQUAL
    MBRINTERSECTS
    MBROVERLAPS
    MBRTOUCHES
    MBRWITHIN
    MD5
    MEDIUM
    MEDIUMBLOB
    MEDIUMINT
    MEDIUMTEXT
    MEMBER
    MEMORY
    MERGE
    MESSAGE_TEXT
    MICROSECOND
    MID
    MIDDLEINT
    MIGRATE
    MIN
    MINUS
    MINUSEQ
    MINUSMINUS
    MINUTE
    MINUTE_MICROSECOND
    MINUTE_SECOND
    MINVALUE
    MIN_ROWS
    MLINEFROMTEXT
    MLINEFROMWKB
    MOD
    MODE
    MODIFIES
    MODIFY
    MONTH
    MONTHNAME
    MPOINTFROMTEXT
    MPOINTFROMWKB
    MPOLYFROMTEXT
    MPOLYFROMWKB
    MRG_MYISAM
    MULTILINESTRING
    MULTILINESTRINGFROMTEXT
    MULTILINESTRINGFROMWKB
    MULTIPOINT
    MULTIPOINTFROMTEXT
    MULTIPOINTFROMWKB
    MULTIPOLYGON
    MULTIPOLYGONFROMTEXT
    MULTIPOLYGONFROMWKB
    MUTEX
    MYISAM
    MYSQL
    MYSQL_ERRNO
    NAME
    NAMES
    NAME_CONST
    NATIONAL
    NATURAL
    NCHAR
    NDB
    NDBCLUSTER
    NDB_STORED_USER
    NESTED
    NEVER
    NEXT
    NO
    NOCACHE
    NOCOPY
    NOCYCLE
    NODEGROUP
    NOMAXVALUE
    NOMINVALUE
    NONE
    NOT
    NOTEQ
    NOTEQEQ
    NOW
    NOWAIT
    NO_WRITE_TO_BINLOG
    NTH_VALUE
    NTILE
    NULLIF
    NULL_LITERAL
    NULL_SPEC_LITERAL
    NUMBER
    NUMERIC
    NUMGEOMETRIES
    NUMINTERIORRINGS
    NUMPOINTS
    NVARCHAR
    OCT
    OCTET_LENGTH
    ODBC
    OF
    OFFLINE
    OFFSET
    OJ
    OLD_PASSWORD
    ON
    ONE
    ONE_DECIMAL
    ONLINE
    ONLY
    OPEN
    OPTIMIZE
    OPTIMIZER_COSTS
    OPTION
    OPTIONAL
    OPTIONALLY
    OPTIONS
    OR
    ORD
    ORDER
    ORDINALITY
    OROR
    OUT
    OUTER
    OUTFILE
    OVER
    OVERLAPS
    OWNER
    PACK_KEYS
    PAGE
    PAGE_CHECKSUM
    PAGE_COMPRESSED
    PAGE_COMPRESSION_LEVEL
    PARSER
    PARTIAL
    PARTITION
    PARTITIONING
    PARTITIONS
    PASSWORD
    PASSWORDLESS_USER_ADMIN
    PASSWORD_LOCK_TIME
    PATH
    PERCENT
    PERCENTEQ
    PERCENT_RANK
    PERCONA_SEQUENCE_TABLE
    PERFORMANCE_SCHEMA
    PERIOD_ADD
    PERIOD_DIFF
    PERSIST_RO_VARIABLES_ADMIN
    PHASE
    PI
    PIPE
    PIPEEQ
    PLUGIN
    PLUGINS
    PLUGIN_DIR
    PLUS
    PLUSEQ
    PLUSPLUS
    POINT
    POINTFROMTEXT
    POINTFROMWKB
    POINTN
    POLYFROMTEXT
    POLYFROMWKB
    POLYGON
    POLYGONFROMTEXT
    POLYGONFROMWKB
    PORT
    POSITION
    POW
    POWER
    PRECEDES
    PRECEDING
    PRECISION
    PREPARE
    PRESERVE
    PREV
    PRIMARY
    PRIVILEGES
    PROCEDURE
    PROCESS
    PROCESSLIST
    PROFILE
    PROFILES
    PROXY
    PURGE
    QUARTER
    QUERY
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    QUICK
    QUOTE
    RADIANS
    RAND
    RANDOM
    RANDOM_BYTES
    RANGE
    RANK
    RBRACE
    RBRACKET
    READ
    READS
    REAL
    REAL_LITERAL
    REBUILD
    RECEIVE
    RECOVER
    RECURSIVE
    REDO_BUFFER_SIZE
    REDUNDANT
    REFERENCES
    REGEXP
    RELAY
    RELAYLOG
    RELAY_LOG_FILE
    RELAY_LOG_POS
    RELEASE
    RELEASE_LOCK
    RELOAD
    REMOVE
    RENAME
    REORGANIZE
    REPAIR
    REPEAT
    REPEATABLE
    REPLACE
    REPLICATE_DO_DB
    REPLICATE_DO_TABLE
    REPLICATE_IGNORE_DB
    REPLICATE_IGNORE_TABLE
    REPLICATE_REWRITE_DB
    REPLICATE_WILD_DO_TABLE
    REPLICATE_WILD_IGNORE_TABLE
    REPLICATION
    REPLICATION_APPLIER
    REPLICATION_SLAVE_ADMIN
    REQUIRE
    RESET
    RESIGNAL
    RESOURCE_GROUP_ADMIN
    RESOURCE_GROUP_USER
    RESTART
    RESTRICT
    RESUME
    RETAIN
    RETURN
    RETURNED_SQLSTATE
    RETURNING
    RETURNS
    REUSE
    REVERSE
    REVERSE_QUOTE_ID
    REVOKE
    RIGHT
    RLIKE
    ROLE
    ROLE_ADMIN
    ROLLBACK
    ROLLUP
    ROTATE
    ROUND
    ROUTINE
    ROW
    ROWS
    ROW_COUNT
    ROW_FORMAT
    ROW_NUMBER
    RPAD
    RPAREN
    RSHIFT
    RSHIFTEQ
    RTREE
    RTRIM
    S3
    SAVEPOINT
    SCHEDULE
    SCHEMA
    SCHEMAS
    SCHEMA_NAME
    SECOND
    SECONDARY_ENGINE
    SECONDARY_ENGINE_ATTRIBUTE
    SECOND_MICROSECOND
    SECURITY
    SEC_TO_TIME
    SELECT
    SEMI
    SENSITIVE_VARIABLES_OBSERVER
    SEPARATOR
    SEQUENCE
    SEQUENCE_TABLE
    SERIAL
    SERIALIZABLE
    SERVER
    SERVICE_CONNECTION_ADMIN
    SESSION
    SESSION_USER
    SESSION_VARIABLES_ADMIN
    SET
    SET_USER_ID
    SHA
    SHA1
    SHA2
    SHARE
    SHARED
    SHOW
    SHOW_ROUTINE
    SHUTDOWN
    SIGN
    SIGNAL
    SIGNED
    SIMPLE
    SIN
    SJIS
    SKIP_
    SKIP_QUERY_REWRITE
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SLAVE
    SLEEP
    SLOW
    SMALLINT
    SNAPSHOT
    SOCKET
    SOME
    SONAME
    SOUNDEX
    SOUNDS
    SOURCE
    SPATIAL
    SQL
    SQLEXCEPTION
    SQLSTATE
    SQLWARNING
    SQL_AFTER_GTIDS
    SQL_AFTER_MTS_GAPS
    SQL_BEFORE_GTIDS
    SQL_BIG_RESULT
    SQL_BUFFER_RESULT
    SQL_CACHE
    SQL_CALC_FOUND_ROWS
    SQL_NO_CACHE
    SQL_SMALL_RESULT
    SQL_THREAD
    SQL_THREAD_WAIT_AFTER_GTIDS
    SQRT
    SQUOTE
    SRID
    SSL
    STACKED
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    START
    STARTING
    STARTPOINT
    STARTS
    START_NATIONAL_STRING_LITERAL
    STATEMENT
    STATS_AUTO_RECALC
    STATS_PERSISTENT
    STATS_SAMPLE_PAGES
    STATUS
    STD
    STDDEV
    STDDEV_POP
    STDDEV_SAMP
    STOP
    STORAGE
    STORED
    STRAIGHT_JOIN
    STRCMP
    STRING
    STRING_CHARSET_NAME
    STRING_LITERAL
    STRING_TO_VECTOR
    STR_TO_DATE
    ST_AREA
    ST_ASBINARY
    ST_ASTEXT
    ST_ASWKB
    ST_ASWKT
    ST_BUFFER
    ST_CENTROID
    ST_CONTAINS
    ST_CROSSES
    ST_DIFFERENCE
    ST_DIMENSION
    ST_DISJOINT
    ST_DISTANCE
    ST_ENDPOINT
    ST_ENVELOPE
    ST_EQUALS
    ST_EXTERIORRING
    ST_GEOMCOLLFROMTEXT
    ST_GEOMCOLLFROMTXT
    ST_GEOMCOLLFROMWKB
    ST_GEOMETRYCOLLECTIONFROMTEXT
    ST_GEOMETRYCOLLECTIONFROMWKB
    ST_GEOMETRYFROMTEXT
    ST_GEOMETRYFROMWKB
    ST_GEOMETRYN
    ST_GEOMETRYTYPE
    ST_GEOMFROMTEXT
    ST_GEOMFROMWKB
    ST_INTERIORRINGN
    ST_INTERSECTION
    ST_INTERSECTS
    ST_ISCLOSED
    ST_ISEMPTY
    ST_ISSIMPLE
    ST_LINEFROMTEXT
    ST_LINEFROMWKB
    ST_LINESTRINGFROMTEXT
    ST_LINESTRINGFROMWKB
    ST_NUMGEOMETRIES
    ST_NUMINTERIORRING
    ST_NUMINTERIORRINGS
    ST_NUMPOINTS
    ST_OVERLAPS
    ST_POINTFROMTEXT
    ST_POINTFROMWKB
    ST_POINTN
    ST_POLYFROMTEXT
    ST_POLYFROMWKB
    ST_POLYGONFROMTEXT
    ST_POLYGONFROMWKB
    ST_SRID
    ST_STARTPOINT
    ST_SYMDIFFERENCE
    ST_TOUCHES
    ST_UNION
    ST_WITHIN
    ST_X
    ST_Y
    SUBCLASS_ORIGIN
    SUBDATE
    SUBJECT
    SUBPARTITION
    SUBPARTITIONS
    SUBSTR
    SUBSTRING
    SUBSTRING_INDEX
    SUBTIME
    SUM
    SUPER
    SUSPEND
    SWAPS
    SWE7
    SWITCHES
    SYSDATE
    SYSTEM_USER
    SYSTEM_VARIABLES_ADMIN
    TABLE
    TABLES
    TABLESPACE
    TABLE_ENCRYPTION_ADMIN
    TABLE_NAME
    TABLE_TYPE
    TAN
    TELEMETRY_LOG_ADMIN
    TEMPORARY
    TEMPTABLE
    TERMINATED
    THAN
    THEN
    TILDE
    TIME
    TIMEDIFF
    TIMESTAMP
    TIMESTAMPADD
    TIMESTAMPDIFF
    TIME_FORMAT
    TIME_TO_SEC
    TINYBLOB
    TINYINT
    TINYTEXT
    TIS620
    TO
    TOKUDB
    TOUCHES
    TO_BASE64
    TO_DAYS
    TO_SECONDS
    TP_CONNECTION_ADMIN
    TRADITIONAL
    TRAILING
    TRANSACTION
    TRANSACTIONAL
    TRIGGER
    TRIGGERS
    TRIM
    TRUE
    TRUNCATE
    TWO_DECIMAL
    T_0
    T_1
    T_2
    UCASE
    UCS2
    UJIS
    UNBOUNDED
    UNCOMMITTED
    UNCOMPRESS
    UNCOMPRESSED_LENGTH
    UNDEFINED
    UNDERSCORE
    UNDO
    UNDOFILE
    UNDO_BUFFER_SIZE
    UNHEX
    UNINSTALL
    UNION
    UNIQUE
    UNIX_TIMESTAMP
    UNKNOWN
    UNLOCK
    UNSIGNED
    UNTIL
    UPDATE
    UPDATEXML
    UPGRADE
    UPPER
    URSHIFT
    URSHIFTEQ
    USA
    USAGE
    USE
    USER
    USER_RESOURCES
    USE_FRM
    USING
    UTC_DATE
    UTC_TIME
    UTC_TIMESTAMP
    UTF16
    UTF16LE
    UTF32
    UTF8
    UTF8MB3
    UTF8MB4
    UUID
    UUID_SHORT
    VALIDATE_PASSWORD_STRENGTH
    VALIDATION
    VALUE
    VALUES
    VARBINARY
    VARCHAR
    VARIABLES
    VARIANCE
    VARYING
    VAR_ASSIGN
    VAR_POP
    VAR_SAMP
    VECTOR
    VECTOR_DIM
    VECTOR_TO_STRING
    VERSION
    VERSION_TOKEN_ADMIN
    VIEW
    VIRTUAL
    VISIBLE
    WAIT
    WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS
    WARNINGS
    WEEK
    WEEKDAY
    WEEKOFYEAR
    WEIGHT_STRING
    WHEN
    WHERE
    WHILE
    WINDOW
    WITH
    WITHIN
    WITHOUT
    WORK
    WRAPPER
    WRITE
    X509
    XA
    XA_RECOVER_ADMIN
    XML
    XOR
    X_FUNCTION
    YEAR
    YEARWEEK
    YEAR_MONTH
    YES
    YIELDSTAR
    Y_FUNCTION
    ZEROFILL
    ZERO_DECIMAL
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
            | string     /. makeToken($_STRING); ./
            | charlit    /. makeToken($_CHAR_LITERAL); ./
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
