-- Real lexer for SqlCockroachdbParser (not token-stream soup). Keywords via SqlCockroachdbKWLexer.
%Options list
%Options fp=SqlCockroachdbLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.sql.cockroachdb
%options template=LexerTemplateF.gi
%options filter=SqlCockroachdbKWLexer.gi

%Define
    $kw_lexer_class /.$SqlCockroachdbKWLexer./
%End

%Include
    LexerBasicMapF.gi
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
    AMP
    AMPEQ
    ANALYSE
    ANALYZE
    AND
    ANDAND
    AND_AND
    ANNOTATE_TYPE
    ANY
    ARRAY
    ARROW
    ARROWSTAR
    AS
    ASC
    ASENSITIVE
    ASYMMETRIC
    AS_JSON
    AT
    ATEQ
    ATOMIC
    ATTRIBUTE
    AT_AT
    AUTHORIZATION
    AUTOMATIC
    AVAILABILITY
    AVOID_FULL_SCAN
    B
    BACKSLASH
    BACKTICK
    BACKUP
    BACKUPS
    BACKWARD
    BANG
    BATCH
    BEFORE
    BEGIN
    BETWEEN
    BIDIRECTIONAL
    BIGINT
    BINARY
    BINARY_LITERAL
    BIT
    BITCLEAR
    BOOLEAN
    BOTH
    BOX2D
    BUCKET_COUNT
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
    CARET
    CARETEQ
    CASCADE
    CASE
    CAST
    CBRT
    CHANGEFEED
    CHAR
    CHARACTER
    CHARACTERISTICS
    CHAR_LITERAL
    CHECK
    CHECK_FILES
    CLOSE
    CLUSTER
    CLUSTERS
    COALESCE
    COLLATE
    COLLATION
    COLON
    COLONCOLON
    COLONEQ
    COLUMN
    COLUMNS
    COMMA
    COMMENT
    COMMENTS
    COMMIT
    COMMITTED
    COMPACT
    COMPLETE
    COMPLETIONS
    CONCAT
    CONCURRENTLY
    CONFIGURATION
    CONFIGURATIONS
    CONFIGURE
    CONFLICT
    CONNECTION
    CONNECTIONS
    CONSTRAINT
    CONSTRAINTS
    CONTAINED_BY
    CONTAINS
    CONTROLCHANGEFEED
    CONTROLJOB
    CONVERSION
    CONVERT
    COPY
    COST
    COS_DISTANCE
    COVERING
    CREATE
    CREATEDB
    CREATELOGIN
    CREATEROLE
    CROSS
    CSV
    CUBE
    CURRENT
    CURRENT_CATALOG
    CURRENT_DATE
    CURRENT_ROLE
    CURRENT_SCHEMA
    CURRENT_TIME
    CURRENT_TIMESTAMP
    CURRENT_USER
    CURSOR
    CYCLE
    DATA
    DATABASE
    DATABASES
    DATE
    DAY
    DEALLOCATE
    DEBUG_IDS
    DEC
    DECIMAL
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
    DISTANCE
    DISTINCT
    DO
    DOLLAR
    DOMAIN_
    DOT
    DOTDOT
    DOTSTAR
    DOUBLE
    DQUOTE
    DROP
    EACH
    ELLIPSIS
    ELSE
    ENABLE
    ENCODING
    ENCRYPTED
    ENCRYPTION_INFO_DIR
    ENCRYPTION_PASSPHRASE
    END
    ENUM
    ENUMS
    EQ
    EQEQ
    EQEQEQ
    ERRORS
    ESCAPE
    EXCEPT
    EXCLUDE
    EXCLUDING
    EXECUTE
    EXECUTION
    EXISTS
    EXPERIMENTAL
    EXPERIMENTAL_AUDIT
    EXPERIMENTAL_FINGERPRINTS
    EXPERIMENTAL_RELOCATE
    EXPERIMENTAL_REPLICA
    EXPIRATION
    EXPLAIN
    EXPORT
    EXTENSION
    EXTERNAL
    EXTRACT
    EXTRACT_DURATION
    EXTREMES
    FAILURE
    FALSE
    FAMILTY
    FAMILY
    FATARROW
    FETCH
    FETCHTEXT
    FETCHTEXT_PATH
    FETCHVAL
    FETCHVAL_PATH
    FILES
    FILTER
    FIRST
    FLOAT
    FLOORDIV
    FOLLOWING
    FOR
    FORCE
    FORCE_INDEX
    FORCE_INVERTED_INDEX
    FORCE_NOT_NULL
    FORCE_NULL
    FORCE_QUOTE
    FORCE_ZIGZAG
    FOREIGN
    FORMAT
    FORWARD
    FOR_JOB
    FOR_TABLE
    FREEZE
    FROM
    FULL
    FUNCTION
    FUNCTIONS
    GENERATED
    GENERATED_ALWAYS
    GENERATED_BY_DEFAULT
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
    GREATER_EQUALS
    GREATEST
    GROUP
    GROUPING
    GROUPS
    GT
    GTEQ
    HASH
    HAVING
    HEADER
    HIGH
    HISTOGRAM
    HOLD
    HOUR
    ID
    IDENTIFIER
    IDENTITY
    IF
    IFERROR
    IFNULL
    IGNORE_FOREIGN_KEYS
    ILIKE
    IMMEDIATE
    IMMEDIATELY
    IMMUTABLE
    IMPORT
    IN
    INCLUDE
    INCLUDE_ALL_SECONDARY_TENANTS
    INCLUDE_ALL_VIRTUAL_CLUSTERS
    INCLUDING
    INCREMENT
    INCREMENTAL
    INCREMENTAL_LOCATION
    INCREMENT_LOCATION
    INDEX
    INDEXES
    INET_CONTAINED_BY_OR_EQUALS
    INET_CONTAINS_OR_EQUALS
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
    INTO_DB
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
    JSON_ALL_EXISTS
    JSON_SOME_EXISTS
    KEY
    KEYS
    KMS
    KV
    LABEL
    LANGUAGE
    LAST
    LATERAL
    LATEST
    LBRACE
    LBRACKET
    LC_COLLATE_
    LC_CTYPE_
    LEADING
    LEAKPROOF
    LEASE
    LEAST
    LEFT
    LESS
    LESS_EQUALS
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
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    MATCH
    MATERIALIZED
    MAXVALUE
    MERGE
    METHOD
    MINUS
    MINUSEQ
    MINUSMINUS
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
    NEG_INNER_PRODUCT
    NEVER
    NEW
    NEW_DB_NAME
    NEW_KMS
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
    NOTEQ
    NOTEQEQ
    NOTHING
    NOTNULL
    NOT_EQUALS
    NOT_REGIMATCH
    NOT_REGMATCH
    NOVIEWACTIVITY
    NOVIEWACTIVITYREDACTED
    NOVIEWCLUSTERSETTING
    NOWAIT
    NO_FULL_SCAN
    NO_INDEX_JOIN
    NO_ZIGZAG_JOIN
    NULLIF
    NULLS
    NULL_
    NUMBER
    NUMERIC
    OF
    OFF
    OFFSET
    OIDS
    OLD
    OLD_KMS
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
    OROR
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
    PERCENT
    PERCENTEQ
    PERMISSIVE
    PHYSICAL
    PIPE
    PIPEEQ
    PLACEHOLDER
    PLACEMENT
    PLACING
    PLAN
    PLANS
    PLUS
    PLUSEQ
    PLUSPLUS
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
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    QUOTE
    RANGE
    RANGES
    RBRACE
    RBRACKET
    READ
    REAL
    REASON
    REASSIGN
    RECEIVE
    RECURRING
    RECURSIVE
    REDACT
    REF
    REFERENCES
    REFERENCING
    REFRESH
    REGIMATCH
    REGION
    REGIONAL
    REGIONS
    REINDEX
    RELATIVE
    RELEASE
    RELOCATE
    REMOVE_PATH
    REMOVE_REGIONS
    RENAME
    REPEATABLE
    REPLACE
    REPLICATED
    REPLICATION
    RESET
    RESET_ALL
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
    REVISION_HISTORY
    REVOKE
    RIGHT
    ROLE
    ROLES
    ROLE_ALL
    ROLLBACK
    ROLLUP
    ROUTINES
    ROW
    ROWS
    RPAREN
    RSHIFT
    RSHIFTEQ
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
    SCHEMA_ONLY
    SCROLL
    SCRUB
    SEARCH
    SECOND
    SECONDARY
    SECURITY
    SECURITY_INVOKER
    SELECT
    SEMI
    SEQUENCE
    SEQUENCES
    SERIALIZABLE
    SERVER
    SERVICE
    SESSION
    SESSIONS
    SESSION_USER
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
    SKIP_LOCALITIES_CHECK
    SKIP_MISSING_FOREIGN_KEYS
    SKIP_MISSING_SEQUENCES
    SKIP_MISSING_SEQUENCE_OWNERS
    SKIP_MISSING_UDFS
    SKIP_MISSING_VIEWS
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SMALLINT
    SNAPSHOT
    SOME
    SOUCE
    SOURCE
    SPLIT
    SQL
    SQLLOGIN
    SQRT
    SQUOTE
    STABLE
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
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
    STRING_LITERAL
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
    TENANT_NAME
    TESTING_RELOCATE
    THEN
    THROTTLING
    TIES
    TILDE
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
    TYPEANNOTATE
    TYPECAST
    TYPES
    UNBOUNDED
    UNCOMMITTED
    UNDERSCORE
    UNIDIRECTIONAL
    UNION
    UNIQUE
    UNKNOWN
    UNLISTEN
    UNLOGGED
    UNSAFE_RESTORE_INCOMPATIBLE_VERSION
    UNSET
    UNSPLIT
    UNTIL
    UPDATE
    UPDATES_CLUSTER_MONITORING_METRICS
    UPSERT
    URSHIFT
    URSHIFTEQ
    USE
    USER
    USERS
    USER_ALL
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
    VERIFY_BACKUP_TABLE_DATA
    VIEW
    VIEWACTIVITY
    VIEWACTIVITYREDACTED
    VIEWCLUSTERSETTING
    VIRTUAL
    VIRTUAL_CLUSTER
    VIRTUAL_CLUSTER_NAME
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
