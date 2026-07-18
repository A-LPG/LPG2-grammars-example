-- Real lexer for SqlHiveV2Parser (not token-stream soup). Keywords via SqlHiveV2KWLexer.
%Options list
%Options fp=SqlHiveV2Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.sql.hive.v2
%options template=LexerTemplateF.gi
%options filter=SqlHiveV2KWLexer.gi

%Define
    $kw_lexer_class /.$SqlHiveV2KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    AMP
    AMPEQ
    AMPERSAND
    ANDAND
    ARROW
    ARROWSTAR
    AT
    ATEQ
    BACKSLASH
    BACKTICK
    BANG
    BITCLEAR
    BITWISEOR
    BITWISEXOR
    ByteLengthLiteral
    CARET
    CARETEQ
    CHAR_LITERAL
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    CONCATENATE
    CharSetLiteral
    CharSetName
    DIV
    DIVIDE
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DQUOTE
    ELLIPSIS
    EQ
    EQEQ
    EQEQEQ
    EQUAL
    EQUAL_NS
    FATARROW
    GREATERTHAN
    GREATERTHANOREQUALTO
    GT
    GTEQ
    HASH
    IDENTIFIER
    Identifier
    IntegralLiteral
    KW_ABORT
    KW_ACTIVATE
    KW_ACTIVE
    KW_ADD
    KW_ADMIN
    KW_AFTER
    KW_ALL
    KW_ALLOC_FRACTION
    KW_ALTER
    KW_ANALYZE
    KW_AND
    KW_ANY
    KW_APPLICATION
    KW_ARCHIVE
    KW_ARRAY
    KW_AS
    KW_ASC
    KW_AUTHORIZATION
    KW_AUTOCOMMIT
    KW_BEFORE
    KW_BETWEEN
    KW_BIGINT
    KW_BINARY
    KW_BOOLEAN
    KW_BOTH
    KW_BUCKET
    KW_BUCKETS
    KW_BY
    KW_CACHE
    KW_CASCADE
    KW_CASE
    KW_CAST
    KW_CHANGE
    KW_CHAR
    KW_CHECK
    KW_CLUSTER
    KW_CLUSTERED
    KW_CLUSTERSTATUS
    KW_COLLECTION
    KW_COLUMN
    KW_COLUMNS
    KW_COMMENT
    KW_COMMIT
    KW_COMPACT
    KW_COMPACTIONS
    KW_COMPUTE
    KW_CONCATENATE
    KW_CONF
    KW_CONSTRAINT
    KW_CONTINUE
    KW_CREATE
    KW_CROSS
    KW_CUBE
    KW_CURRENT
    KW_CURRENT_DATE
    KW_CURRENT_TIMESTAMP
    KW_CURSOR
    KW_DATA
    KW_DATABASE
    KW_DATABASES
    KW_DATE
    KW_DATETIME
    KW_DAY
    KW_DBPROPERTIES
    KW_DECIMAL
    KW_DEFAULT
    KW_DEFERRED
    KW_DEFINED
    KW_DELETE
    KW_DELIMITED
    KW_DEPENDENCY
    KW_DESC
    KW_DESCRIBE
    KW_DETAIL
    KW_DIRECTORIES
    KW_DIRECTORY
    KW_DISABLE
    KW_DISTINCT
    KW_DISTRIBUTE
    KW_DO
    KW_DOUBLE
    KW_DOW
    KW_DROP
    KW_DUMP
    KW_ELEM_TYPE
    KW_ELSE
    KW_ENABLE
    KW_END
    KW_ENFORCED
    KW_ESCAPED
    KW_EXCEPT
    KW_EXCHANGE
    KW_EXCLUSIVE
    KW_EXISTS
    KW_EXPLAIN
    KW_EXPORT
    KW_EXPRESSION
    KW_EXTENDED
    KW_EXTERNAL
    KW_EXTRACT
    KW_FALSE
    KW_FETCH
    KW_FIELDS
    KW_FILE
    KW_FILEFORMAT
    KW_FIRST
    KW_FLOAT
    KW_FLOOR
    KW_FOLLOWING
    KW_FOR
    KW_FOREIGN
    KW_FORMAT
    KW_FORMATTED
    KW_FROM
    KW_FULL
    KW_FUNCTION
    KW_FUNCTIONS
    KW_GRANT
    KW_GROUP
    KW_GROUPING
    KW_HAVING
    KW_HOUR
    KW_IDXPROPERTIES
    KW_IF
    KW_IMPORT
    KW_IN
    KW_INDEX
    KW_INDEXES
    KW_INNER
    KW_INPATH
    KW_INPUTDRIVER
    KW_INPUTFORMAT
    KW_INSERT
    KW_INT
    KW_INTERSECT
    KW_INTERVAL
    KW_INTO
    KW_IS
    KW_ISOLATION
    KW_ITEMS
    KW_JAR
    KW_JOIN
    KW_KEY
    KW_KEYS
    KW_KEY_TYPE
    KW_KILL
    KW_LAST
    KW_LATERAL
    KW_LEFT
    KW_LESS
    KW_LEVEL
    KW_LIKE
    KW_LIMIT
    KW_LINES
    KW_LOAD
    KW_LOCAL
    KW_LOCATION
    KW_LOCK
    KW_LOCKS
    KW_LOGICAL
    KW_LONG
    KW_MACRO
    KW_MANAGEMENT
    KW_MAP
    KW_MAPJOIN
    KW_MAPPING
    KW_MATCHED
    KW_MATERIALIZED
    KW_MERGE
    KW_METADATA
    KW_MINUS
    KW_MINUTE
    KW_MONTH
    KW_MORE
    KW_MOVE
    KW_MSCK
    KW_NONE
    KW_NORELY
    KW_NOSCAN
    KW_NOT
    KW_NOVALIDATE
    KW_NULL
    KW_NULLS
    KW_OF
    KW_OFFSET
    KW_ON
    KW_ONLY
    KW_OPERATOR
    KW_OPTION
    KW_OR
    KW_ORDER
    KW_OUT
    KW_OUTER
    KW_OUTPUTDRIVER
    KW_OUTPUTFORMAT
    KW_OVER
    KW_OVERWRITE
    KW_OWNER
    KW_PARTITION
    KW_PARTITIONED
    KW_PARTITIONS
    KW_PATH
    KW_PERCENT
    KW_PLAN
    KW_PLANS
    KW_PLUS
    KW_POOL
    KW_PRECEDING
    KW_PRECISION
    KW_PRESERVE
    KW_PRIMARY
    KW_PRINCIPALS
    KW_PROCEDURE
    KW_PURGE
    KW_QUARTER
    KW_QUERY
    KW_QUERY_PARALLELISM
    KW_RANGE
    KW_READ
    KW_READS
    KW_REBUILD
    KW_RECORDREADER
    KW_RECORDWRITER
    KW_REDUCE
    KW_REFERENCES
    KW_REGEXP
    KW_RELOAD
    KW_RELY
    KW_RENAME
    KW_REOPTIMIZATION
    KW_REPAIR
    KW_REPL
    KW_REPLACE
    KW_REPLICATION
    KW_RESOURCE
    KW_RESTRICT
    KW_REVOKE
    KW_REWRITE
    KW_RIGHT
    KW_RLIKE
    KW_ROLE
    KW_ROLES
    KW_ROLLBACK
    KW_ROLLUP
    KW_ROW
    KW_ROWS
    KW_SCHEDULING_POLICY
    KW_SCHEMA
    KW_SCHEMAS
    KW_SECOND
    KW_SELECT
    KW_SEMI
    KW_SERDE
    KW_SERDEPROPERTIES
    KW_SERVER
    KW_SET
    KW_SETS
    KW_SHARED
    KW_SHOW
    KW_SHOW_DATABASE
    KW_SKEWED
    KW_SMALLINT
    KW_SNAPSHOT
    KW_SORT
    KW_SORTED
    KW_SSL
    KW_START
    KW_STATISTICS
    KW_STATUS
    KW_STORED
    KW_STREAMTABLE
    KW_STRING
    KW_STRUCT
    KW_SUMMARY
    KW_SYNC
    KW_TABLE
    KW_TABLES
    KW_TABLESAMPLE
    KW_TBLPROPERTIES
    KW_TEMPORARY
    KW_TERMINATED
    KW_THEN
    KW_TIME
    KW_TIMESTAMP
    KW_TIMESTAMPLOCALTZ
    KW_TINYINT
    KW_TO
    KW_TOUCH
    KW_TRANSACTION
    KW_TRANSACTIONS
    KW_TRANSFORM
    KW_TRIGGER
    KW_TRUE
    KW_TRUNCATE
    KW_UNARCHIVE
    KW_UNBOUNDED
    KW_UNDO
    KW_UNION
    KW_UNIONTYPE
    KW_UNIQUE
    KW_UNIQUEJOIN
    KW_UNLOCK
    KW_UNMANAGED
    KW_UNSET
    KW_UNSIGNED
    KW_UPDATE
    KW_URI
    KW_USE
    KW_USER
    KW_USING
    KW_UTC
    KW_UTCTIMESTAMP
    KW_VALIDATE
    KW_VALUES
    KW_VALUE_TYPE
    KW_VARCHAR
    KW_VECTORIZATION
    KW_VIEW
    KW_VIEWS
    KW_WAIT
    KW_WEEK
    KW_WHEN
    KW_WHERE
    KW_WHILE
    KW_WINDOW
    KW_WITH
    KW_WORK
    KW_WORKLOAD
    KW_WRITE
    KW_YEAR
    KW_ZONE
    LBRACE
    LBRACKET
    LESSTHAN
    LESSTHANOREQUALTO
    LPAREN
    LSHIFT
    LSHIFTEQ
    LSQUARE
    LT
    LTEQ
    LTGT
    MINUS
    MINUSEQ
    MINUSMINUS
    MOD
    NOTEQ
    NOTEQEQ
    NOTEQUAL
    NUMBER
    Number
    NumberLiteral
    OROR
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    QUERY_HINT
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    QuotedIdentifier
    RBRACE
    RBRACKET
    RECEIVE
    RPAREN
    RSHIFT
    RSHIFTEQ
    RSQUARE
    SEMI
    SEMICOLON
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SQUOTE
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STRING
    StringLiteral
    TILDE
    UNDERSCORE
    URSHIFT
    URSHIFTEQ
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
