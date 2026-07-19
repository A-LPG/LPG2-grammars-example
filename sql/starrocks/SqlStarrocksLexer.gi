-- Real lexer for SqlStarrocksParser (not token-stream soup). Keywords via SqlStarrocksKWLexer.
%Options list
%Options fp=SqlStarrocksLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.sql.starrocks
%options template=LexerTemplateF.gi
%options filter=SqlStarrocksKWLexer.gi

%Define
    $kw_lexer_class /.$SqlStarrocksKWLexer./
%End

%Include
    LexerBasicMapF.gi
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
    AMP
    AMPEQ
    ANALYZE
    AND
    ANDAND
    ANTI
    APPLY
    ARRAY
    ARRAY_AGG
    ARRAY_AGG_DISTINCT
    ARRAY_ELEMENT
    ARROW
    ARROWSTAR
    AS
    ASC
    ASTERISK_SYMBOL
    ASYNC
    AT
    ATEQ
    AUTHENTICATION
    AUTHORS
    AUTO_INCREMENT
    AVG
    BACKEND
    BACKENDS
    BACKQUOTED_IDENTIFIER
    BACKSLASH
    BACKTICK
    BACKUP
    BANG
    BASE
    BEGIN
    BETWEEN
    BIGINT
    BINARY
    BINARY_DOUBLE_QUOTED_TEXT
    BINARY_SINGLE_QUOTED_TEXT
    BITAND
    BITCLEAR
    BITMAP
    BITMAP_UNION
    BITNOT
    BITOR
    BITXOR
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
    CARET
    CARETEQ
    CASE
    CAST
    CATALOG
    CATALOGS
    CEIL
    CHAIN
    CHAR
    CHARACTER
    CHAR_LITERAL
    CHECK
    CLEAN
    CLEAR
    CLUSTER
    CLUSTERS
    COLLATE
    COLLATION
    COLON
    COLONCOLON
    COLONEQ
    COLUMN
    COLUMNS
    COMMA
    COMMENT
    COMMIT
    COMMITTED
    COMPACT
    COMPACTION
    COMPUTE
    CONCAT
    CONFIG
    CONNECTION
    CONSISTENT
    CONVERT
    COSTS
    COUNT
    CREATE
    CROSS
    CUBE
    CUME_DIST
    CUMULATIVE
    CURRENT
    CURRENT_DATE
    CURRENT_ROLE
    CURRENT_TIME
    CURRENT_TIMESTAMP
    CURRENT_USER
    DATA
    DATABASE
    DATABASES
    DATACACHE
    DATE
    DATETIME
    DAY
    DEALLOCATE
    DECIMAL
    DECIMAL128
    DECIMAL32
    DECIMAL64
    DECIMALV2
    DECIMAL_VALUE
    DECOMMISSION
    DEFAULT
    DEFERRED
    DELETE
    DENSE_RANK
    DESC
    DESCRIBE
    DICTIONARY
    DICTIONARY_GET
    DIGIT_IDENTIFIER
    DISABLE
    DISK
    DISTINCT
    DISTRIBUTED
    DISTRIBUTION
    DOLLAR
    DOT
    DOTDOT
    DOTDOTDOT
    DOTSTAR
    DOT_IDENTIFIER
    DOUBLE
    DOUBLE_QUOTED_TEXT
    DOUBLE_VALUE
    DQUOTE
    DROP
    DUAL
    DUPLICATE
    DYNAMIC
    ELLIPSIS
    ELSE
    ENABLE
    ENCLOSE
    END
    ENGINE
    ENGINES
    EQ
    EQEQ
    EQEQEQ
    EQ_FOR_NULL
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
    FATARROW
    FIELD
    FIELDS
    FILE
    FILES
    FILTER
    FIRST
    FIRST_VALUE
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
    GROUPING_ID
    GROUPS
    GROUP_CONCAT
    GT
    GTE
    GTEQ
    HASH
    HAVING
    HELP
    HISTOGRAM
    HLL
    HLL_UNION
    HOST
    HOUR
    HUB
    IDENTIFIED
    IDENTIFIER
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
    INTEGER_VALUE
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
    LAST_VALUE
    LATERAL
    LBRACE
    LBRACKET
    LEAD
    LEFT
    LEFT_BRACE
    LEFT_BRACKET
    LEFT_PAREN
    LESS
    LETTER_IDENTIFIER
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
    LOGICAL_AND
    LOGICAL_NOT
    LOGICAL_OR
    LOGS
    LOW_PRIORITY
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTE
    LTEQ
    LTGT
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
    MINUSEQ
    MINUSMINUS
    MINUS_SYMBOL
    MINUTE
    MOD
    MODE
    MODIFY
    MONTH
    NAME
    NAMES
    NEGATIVE
    NEQ
    NGRAMBF
    NO
    NODE
    NODES
    NONE
    NOT
    NOTEQ
    NOTEQEQ
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
    OROR
    OUTER
    OUTFILE
    OVER
    OVERWRITE
    PARAMETER
    PARTITION
    PARTITIONS
    PASSWORD
    PATH
    PAUSE
    PENDING
    PERCENT
    PERCENTEQ
    PERCENTILE
    PERCENTILE_UNION
    PERCENT_RANK
    PERCENT_SYMBOL
    PIPE
    PIPEEQ
    PIPES
    PIVOT
    PLUGIN
    PLUGINS
    PLUS
    PLUSEQ
    PLUSPLUS
    PLUS_SYMBOL
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
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    QUEUE
    QUOTA
    RANDOM
    RANGE
    RANK
    RBRACE
    RBRACKET
    READ
    REASON
    RECEIVE
    RECOVER
    REFRESH
    REGEXP
    RELEASE
    REMOVE
    RENAME
    REPAIR
    REPEATABLE
    REPLACE
    REPLACE_IF_NOT_NULL
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
    RIGHT_BRACE
    RIGHT_BRACKET
    RIGHT_PAREN
    RLIKE
    ROLE
    ROLES
    ROLLBACK
    ROLLUP
    ROUTINE
    ROW
    ROWS
    ROW_NUMBER
    RPAREN
    RSHIFT
    RSHIFTEQ
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
    SEMICOLON
    SEPARATOR
    SERIALIZABLE
    SESSION
    SET
    SETS
    SET_VAR
    SHOW
    SIGNED
    SINGLE_QUOTED_TEXT
    SKIP_HEADER
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SLASH_SYMBOL
    SMALLINT
    SNAPSHOT
    SQLBLACKLIST
    SQUOTE
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
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
    SYSTEM_TIME
    TABLE
    TABLES
    TABLET
    TABLETS
    TASK
    TEMPORARY
    TERMINATED
    THAN
    THEN
    TILDE
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
    TRIM_SPACE
    TRUE
    TRUNCATE
    TYPE
    TYPES
    UNBOUNDED
    UNCOMMITTED
    UNDERSCORE
    UNINSTALL
    UNION
    UNIQUE
    UNLOCK
    UNSET
    UNSIGNED
    UPDATE
    URSHIFT
    URSHIFTEQ
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
    YIELDSTAR
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
    Token ::= identifier /. checkForKeyWord($_LETTER_IDENTIFIER); ./
            | number     /. makeToken($_DECIMAL_VALUE); ./
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
            | ';' /. makeToken($_SEMICOLON); ./
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
