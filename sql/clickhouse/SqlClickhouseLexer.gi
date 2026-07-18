-- Real lexer for SqlClickhouseParser (not token-stream soup). Keywords via SqlClickhouseKWLexer.
%Options list
%Options fp=SqlClickhouseLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.sql.clickhouse
%options template=LexerTemplateF.gi
%options filter=SqlClickhouseKWLexer.gi

%Define
    $kw_lexer_class /.$SqlClickhouseKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ACCESS
    ADD
    AFTER
    ALIAS
    ALL
    ALTER
    AMP
    AMPEQ
    AND
    ANDAND
    ANTI
    ANY
    ARRAY
    ARROW
    ARROWSTAR
    AS
    ASCENDING
    ASOF
    AST
    ASTERISK
    ASYNC
    AT
    ATEQ
    ATTACH
    BACKSLASH
    BACKTICK
    BANG
    BETWEEN
    BITCLEAR
    BOTH
    BY
    CACHES
    CARET
    CARETEQ
    CASE
    CAST
    CHANGED
    CHAR_LITERAL
    CHECK
    CLEAR
    CLUSTER
    CLUSTERS
    CODEC
    COLLATE
    COLON
    COLONCOLON
    COLONEQ
    COLUMN
    COLUMNS
    COMMA
    COMMENT
    CONCAT
    CONSTRAINT
    CREATE
    CROSS
    CUBE
    CURRENT
    CURRENT_USER
    DASH
    DATABASE
    DATABASES
    DATE
    DAY
    DECIMAL_LITERAL
    DEDUPLICATE
    DEFAULT
    DELAY
    DELETE
    DESC
    DESCENDING
    DESCRIBE
    DETACH
    DICTIONARIES
    DICTIONARY
    DISK
    DISTINCT
    DISTRIBUTED
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DOUBLE_COLON
    DQUOTE
    DROP
    ELLIPSIS
    ELSE
    ENABLED
    END
    ENGINE
    ENGINES
    EQ
    EQEQ
    EQEQEQ
    EQ_DOUBLE
    EQ_SINGLE
    ESTIMATE
    EVENTS
    EXCEPT
    EXISTS
    EXPLAIN
    EXPRESSION
    EXTENDED
    EXTRACT
    FATARROW
    FETCHES
    FIELDS
    FILESYSTEM
    FILL
    FINAL
    FIRST
    FLOATING_LITERAL
    FLUSH
    FOLLOWING
    FOR
    FORMAT
    FREEZE
    FROM
    FULL
    FUNCTION
    FUNCTIONS
    GE
    GLOBAL
    GRANTS
    GRANULARITY
    GROUP
    GROUPING
    GT
    GTEQ
    HASH
    HAVING
    HEXADECIMAL_NUMERIC_LITERAL
    HIERARCHICAL
    HOUR
    ID
    IDENTIFIER
    IF
    ILIKE
    IMPLICIT
    IN
    INDEX
    INDEXES
    INDICES
    INF
    INJECTIVE
    INNER
    INSERT
    INTERPOLATE
    INTERVAL
    INTO
    IS
    IS_OBJECT_ID
    JOIN
    JSON_FALSE
    JSON_TRUE
    KEY
    KEYS
    KILL
    LAST
    LAYOUT
    LBRACE
    LBRACKET
    LE
    LEADING
    LEFT
    LIFETIME
    LIKE
    LIMIT
    LIVE
    LOCAL
    LOGS
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    MATERIALIZE
    MATERIALIZED
    MAX
    MERGES
    MICROSECOND
    MILLISECOND
    MIN
    MINUS
    MINUSEQ
    MINUSMINUS
    MINUTE
    MODIFY
    MONTH
    MOVE
    MUTATION
    NAN_SQL
    NO
    NOT
    NOTEQ
    NOTEQEQ
    NOT_EQ
    NULLS
    NULL_SQL
    NUMBER
    OCTAL_LITERAL
    OFFSET
    ON
    OPTIMIZE
    OR
    ORDER
    OROR
    OUTER
    OUTFILE
    OVER
    OVERRIDE
    PARTITION
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PIPELINE
    PLAN
    PLUS
    PLUSEQ
    PLUSPLUS
    POLICIES
    POLICY
    POPULATE
    PRECEDING
    PREWHERE
    PRIMARY
    PRIVILEGES
    PROCESSLIST
    PROFILE
    PROFILES
    PROJECTION
    QUARTER
    QUERY
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    QUOTA
    QUOTAS
    RANGE
    RBRACE
    RBRACKET
    RECEIVE
    RECURSIVE
    RELOAD
    REMOVE
    RENAME
    REPLACE
    REPLICA
    REPLICATED
    RIGHT
    ROLE
    ROLES
    ROLLUP
    ROW
    ROWS
    RPAREN
    RSHIFT
    RSHIFTEQ
    SAMPLE
    SECOND
    SELECT
    SEMI
    SEMICOLON
    SENDS
    SET
    SETTING
    SETTINGS
    SHOW
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SOURCE
    SQUOTE
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    START
    STEP
    STOP
    STRING
    STRING_LITERAL
    SUBSTRING
    SYNC
    SYNTAX
    SYSTEM
    TABLE
    TABLES
    TEMPORARY
    TEST
    THEN
    TIES
    TILDE
    TIMEOUT
    TIMESTAMP
    TO
    TOP
    TOTALS
    TRAILING
    TREE
    TRIM
    TRUNCATE
    TTL
    TYPE
    UNBOUNDED
    UNDERSCORE
    UNION
    UPDATE
    URSHIFT
    URSHIFTEQ
    USE
    USER
    USERS
    USING
    UUID
    VALUES
    VIEW
    VOLUME
    WATCH
    WEEK
    WHEN
    WHERE
    WINDOW
    WITH
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
