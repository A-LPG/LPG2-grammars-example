-- Real lexer for SqlDatabricksParser (not token-stream soup). Keywords via SqlDatabricksKWLexer.
%Options list
%Options fp=SqlDatabricksLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.sql.databricks
%options template=LexerTemplateF.gi
%options filter=SqlDatabricksKWLexer.gi

%Define
    $kw_lexer_class /.$SqlDatabricksKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ACCESS
    ADD
    ALL
    ALLOWLIST
    ALTER
    AMP
    AMPEQ
    AND
    ANDAND
    ANONYMOUS
    ANTI
    ANY
    APPLY
    ARCHIVE
    ARCHIVES
    ARRAY
    ARROW
    ARROWSTAR
    AS
    ASC
    ASSETS
    ASSOC
    ASYNC
    AT
    ATEQ
    BACKSLASH
    BACKTICK
    BANG
    BEGIN
    BETWEEN
    BIGINT
    BINARY
    BITCLEAR
    BLOOMFILTER
    BOOLEAN
    BROWSE
    BUCKET
    BY
    CALL
    CARET
    CARETEQ
    CASCADE
    CASE
    CAST
    CATALOG
    CATALOGS
    CHAR_LITERAL
    CLEAN
    CLUSTER
    CODEGEN
    COLLATE
    COLLATION
    COLON
    COLONCOLON
    COLONEQ
    COLON_COLON
    COLUMN
    COLUMNS
    COMMA
    COMMENT
    CONNECTION
    CONNECTIONS
    CONSTRAINT
    COPY
    COST
    CREATE
    CREDENTIAL
    CREDENTIALS
    CROSS
    CUBE
    DATABASE
    DATABASES
    DATABRICKS
    DATE
    DBFS
    DEC
    DECIMAL
    DECIMAL_
    DECLARE
    DEFAULT
    DEFINE
    DELETE
    DENY
    DESC
    DESCRIBE
    DIRECTORY
    DISABLE
    DISTINCT
    DISTRIBUTE
    DIVIDE
    DO
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DOUBLE
    DOUBLE_QUOTE_BLANK
    DQUOTE
    DROP
    DROPPED
    DRY
    ELLIPSIS
    ELSE
    EMAIL
    ENABLE
    ENABLED
    END
    EQ
    EQEQ
    EQEQEQ
    ESCAPE
    EXCEPT
    EXCLUDE
    EXECUTE
    EXISTS
    EXPLAIN
    EXPR
    EXTENDED
    EXTERNAL
    FALSE
    FATARROW
    FILE
    FILES
    FIRST
    FLOAT
    FLOAT_
    FOR
    FOREIGN
    FORMATTED
    FROM
    FULL
    FUNCTION
    FUNCTIONS
    GE
    GEOGRAPHY
    GEOMETRY
    GET
    GRANT
    GRANTS
    GROUP
    GROUPING
    GROUPS
    GT
    GTEQ
    HANDLER
    HASH
    HAVING
    HISTORY
    HTTP
    ID
    IDENTIFIER
    IDENTITY
    IF
    IFF
    IFNULL
    IMMEDIATE
    IMMEDIATELY
    IN
    INCLUDE
    INDEX
    INHERIT
    INNER
    INPUT
    INSERT
    INT
    INTERCEPT
    INTERSECT
    INTERVAL
    INTO
    IS
    JAR
    JARS
    JOIN
    JSON
    KEY
    KEYS
    LAG
    LANGUAGE
    LAST
    LATERAL
    LBRACE
    LBRACKET
    LE
    LEFT
    LEVEL
    LIKE
    LIMIT
    LIST
    LOCAL
    LOCATION
    LOCATIONS
    LPAREN
    LR_BRACKET
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    MANAGE
    MANAGED
    MAP
    MARKETPLACE
    MATCH
    MATCHED
    MATCHES
    MATERIALIZED
    MAX
    MERGE
    METADATA
    METASTORE
    MINUS
    MINUSEQ
    MINUSMINUS
    MINUS_
    MODE
    MODEL
    MODIFY
    MODULE
    MOVE
    MSCK
    MYSQL
    NAME
    NATURAL
    NE
    NOT
    NOTEQ
    NOTEQEQ
    NULLS
    NULL_
    NUMBER
    NUMERIC
    OBJECT
    OF
    OFFSET
    ON
    ONLY
    OPTIMIZATION
    OPTIONS
    OR
    ORDER
    OROR
    OUT
    OUTER
    OVER
    OVERWRITE
    OWNER
    PARTITION
    PARTITIONS
    PATH_
    PATTERN
    PERCENT
    PERCENTEQ
    PERMISSION
    PIPE
    PIPEEQ
    PIPE_PIPE
    PIVOT
    PLUS
    PLUSEQ
    PLUSPLUS
    PORT
    POSTGRESQL
    PREDICTIVE
    PRIMARY
    PRIVILEGES
    PROCEDURE
    PROCEDURES
    PROCEDURE_NAME
    PROPERTIES
    PROPERTY
    PROVIDER
    PROVIDERS
    PUBLIC
    PUT
    QUALIFY
    QUERY
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    RBRACE
    RBRACKET
    READ
    REAL
    REAL_
    RECEIVE
    RECIPIENT
    RECIPIENTS
    RECURSION
    RECURSIVE
    REDSHIFT
    REFERENCES
    REFRESH
    REMOVE
    RENAME
    REPAIR
    REPEATABLE
    REPLACE
    RESET_
    RESOLVE
    RESOURCE
    RESOURCES
    RESTRICT
    RETURNS
    REVOKE
    RIGHT
    ROLE
    ROLES
    ROLLBACK
    ROLLUP
    ROOM
    ROWS
    RPAREN
    RR_BRACKET
    RSHIFT
    RSHIFTEQ
    RUN
    SCHEMA
    SCHEMAS
    SECURABLE
    SELECT
    SEMI
    SEQUENCE
    SEQUENCES
    SERVER
    SERVICE
    SET
    SETS
    SHARE
    SHARES
    SHOW
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SMALLINT
    SNOWFLAKE
    SORT
    SQLDW
    SQLSERVER
    SQUOTE
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STORAGE
    STREAM
    STREAMING
    STREAMS
    STRING
    STRING_
    STRUCT
    SYNC
    SYSTEM
    TABLE
    TABLES
    TABLESAMPLE
    TAG
    TAGS
    TASK
    TBLPROPERTIES
    TEMP
    TEMPORARY
    THEN
    TILDE
    TIME
    TIMESTAMP
    TIMESTAMP_NTZ
    TIMEZONE
    TINYINT
    TO
    TODO
    TOP
    TRUE
    TRUNCATE
    TYPE
    UNDERSCORE
    UNDROP
    UNION
    UNIQUE
    UNPIVOT
    UNSET
    UPDATE
    URL
    URSHIFT
    URSHIFTEQ
    USAGE
    USE
    USER
    USERS
    USING
    VALUE
    VALUES
    VAR
    VARIABLE
    VARIANT
    VERSION
    VIEW
    VIEWS
    VOID_
    VOLUME
    VOLUMES
    WHEN
    WHERE
    WINDOW
    WITH
    WRITE
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
