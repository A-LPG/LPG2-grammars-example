-- Real lexer for InformixParser (not token-stream soup). Keywords via InformixKWLexer.
%Options list
%Options fp=InformixLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.informix
%options template=LexerTemplateF.gi
%options filter=InformixKWLexer.gi

%Define
    $kw_lexer_class /.$InformixKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ABSOLUTE
    ACCEPT
    AFTER
    AGGREGATE
    ALL
    ALLOCATE
    AMP
    AMPEQ
    AND
    ANDAND
    ANY
    ARRAY
    ARROW
    ARROWSTAR
    AS
    ASC
    ASCII
    AT
    ATEQ
    ATSYMBOL
    ATTRIBUTE
    ATTRIBUTES
    AVERAGE
    AVG
    BACKSLASH
    BACKTICK
    BANG
    BEFORE
    BEGIN
    BETWEEN
    BIGINT
    BITCLEAR
    BLACK
    BLINK
    BLUE
    BOLD
    BORDER
    BOTTOM
    BUFFERED
    BY
    BYTE
    CACHE
    CALL
    CARET
    CARETEQ
    CASE
    CHAR
    CHARACTER
    CHARARACTER
    CHAR_LITERAL
    CHECK
    CLEAR
    CLIPPED
    CLOSE
    CLUSTER
    COLON
    COLONCOLON
    COLONEQ
    COLUMN
    COLUMNS
    COMMA
    COMMAND
    COMMENT
    COMMIT
    COMMITTED
    CONSTANT
    CONSTRAINED
    CONSTRAINT
    CONSTRUCT
    CONTINUE
    COPY
    COUNT
    CRCOLS
    CREATE
    CURRENT
    CURSOR
    CYAN
    DATABASE
    DATE
    DATETIME
    DAY
    DEALLOCATE
    DEC
    DECIMAL
    DECLARE
    DECODE
    DEFAULT
    DEFAULTS
    DEFER
    DEFINE
    DELETE
    DELIMITER
    DESC
    DIM
    DIMENSIONS
    DIRTY
    DISPLAY
    DISTINCT
    DIV
    DO
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DOUBLE
    DOUBLEVERTBAR
    DOWN
    DQUOTE
    DROP
    DYNAMIC
    ELLIPSIS
    ELSE
    END
    EOL
    EQ
    EQEQ
    EQEQEQ
    EQUAL
    ERROR
    ESC
    ESCAPE
    EVERY
    EXCLUSIVE
    EXEC
    EXECUTE
    EXISTS
    EXIT
    EXPLAIN
    EXTEND
    EXTENT
    EXTERNAL
    FALSE
    FATARROW
    FETCH
    FIELD
    FILE
    FINISH
    FIRST
    FLOAT
    FLUSH
    FOR
    FOREACH
    FORM
    FORMAT
    FORMONLY
    FOUND
    FRACTION
    FREE
    FROM
    FUNCTION
    GE
    GET_FLDBUF
    GLOBALS
    GO
    GOTO
    GREEN
    GROUP
    GT
    GTEQ
    HASH
    HAVING
    HEADER
    HELP
    HIDE
    HOLD
    HOUR
    IDENT
    IDENTIFIER
    IF
    IN
    INDEX
    INDICATOR
    INFIELD
    INITIALIZE
    INNER
    INPUT
    INSERT
    INSTRUCTIONS
    INT
    INTEGER
    INTERRUPT
    INTERVAL
    INTO
    INT_FLAG
    INVISIBLE
    IS
    ISNULL
    ISOLATION
    JOIN
    KEY
    LABEL
    LAST
    LBRACE
    LBRACK
    LBRACKET
    LE
    LEFT
    LENGTH
    LET
    LIKE
    LINE
    LINENO
    LINES
    LOAD
    LOCATE
    LOCK
    LOG
    LONG
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    MAGENTA
    MAIN
    MARGIN
    MATCHES
    MAX
    MDY
    MEMORY
    MENU
    MESSAGE
    MIN
    MINUS
    MINUSEQ
    MINUSMINUS
    MINUTE
    MOD
    MODE
    MODULE
    MONEY
    MONTH
    NAME
    NCHAR
    NEED
    NEW
    NEXT
    NO
    NORMAL
    NOT
    NOTEQ
    NOTEQEQ
    NOTFOUND
    NOT_EQUAL
    NOW
    NULL_
    NUMBER
    NUMERIC
    NUM_INT
    NUM_REAL
    NVARCHAR
    NVL
    OF
    OFF
    ON
    OPEN
    OPTION
    OPTIONS
    OR
    ORD
    ORDER
    OROR
    OTHERWISE
    OUTER
    OUTPUT
    PAGE
    PAGENO
    PAUSE
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    PRECISION
    PREPARE
    PREVIOUS
    PRINT
    PRINTER
    PRIOR
    PROGRAM
    PROMPT
    PUT
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    QUIT
    QUOTED_STRING
    RBRACE
    RBRACK
    RBRACKET
    READ
    REAL
    RECEIVE
    RECORD
    RED
    RELATIVE
    REMOVE
    REOPTIMIZATION
    REPEAT
    REPEATABLE
    REPORT
    RESIZE
    RETURN
    RETURNING
    REVERSE
    RIGHT
    ROLLBACK
    ROW
    ROWS
    RPAREN
    RSHIFT
    RSHIFTEQ
    RUN
    SAME
    SCREEN
    SCROLL
    SECOND
    SECONDS
    SELECT
    SEMI
    SET
    SHARE
    SHOW
    SIZE
    SKIP2
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SLEEP
    SMALLFLOAT
    SMALLINT
    SPACE
    SPACES
    SQL
    SQLERROR
    SQLWARNING
    SQUOTE
    STABILITY
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    START
    STATISTICS
    STATUS
    STEP
    STOP
    STRING
    STRING_LITERAL
    SUM
    TABLE
    TABLES
    TEMP
    TERMINATE
    THEN
    THROUGH
    THRU
    TILDE
    TIME
    TO
    TODAY
    TOP
    TRAILER
    TRUE
    TYPE
    UNCONSTRAINED
    UNDERLINE
    UNDERSCORE
    UNION
    UNIQUE
    UNITS
    UNLOAD
    UP
    UPDATE
    URSHIFT
    URSHIFTEQ
    USER
    USING
    VALIDATE
    VALUES
    VARCHAR
    VIEW
    WAIT
    WAITING
    WARNING
    WEEKDAY
    WHEN
    WHENEVER
    WHERE
    WHILE
    WHITE
    WINDOW
    WITH
    WITHOUT
    WORDWRAP
    WORK
    WRAP
    YEAR
    YELLOW
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
    Token ::= identifier /. checkForKeyWord($_IDENT); ./
            | realNumber /. makeToken($_NUM_REAL); ./
            | intNumber  /. makeToken($_NUM_INT); ./
            | string     /. makeToken($_STRING); ./
            | LineComment /. skipToken(); ./
            | HashComment /. skipToken(); ./
            | newline    /. makeToken($_EOL); ./
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

    intNumber ::= Digit
                | intNumber Digit
                | intNumber '_' Digit

    realNumber ::= intNumber '.' Digit
                 | intNumber '.' Digits
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
             '^' | '~' | '`' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | Escape

    NotSQ -> Letter | Digit | Space | HT | DoubleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '`' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | Escape

    Escape ::= BackSlash EscapeChar
    EscapeChar -> DoubleQuote | SingleQuote | BackSlash | '/' | n | r | t | b | f

    LineComment ::= '/' '/' LineCommentBody
    HashComment ::= Sharp HashCommentBody
    HashCommentBody -> $empty
                     | HashCommentBody NotNL
    LineCommentBody -> $empty
                     | LineCommentBody NotNL
    NotNL -> Letter | Digit | Space | HT | SpecialNotNL
    SpecialNotNL -> '+' | '-' | '/' | '*' | '(' | ')' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | DoubleQuote | SingleQuote | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash

    white -> WSChar
           | white WSChar
    WSChar -> Space | HT | FF

    newline -> LF
             | CR LF
             | CR
%End
