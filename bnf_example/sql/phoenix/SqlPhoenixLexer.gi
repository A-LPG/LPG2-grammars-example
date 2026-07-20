-- Real lexer for SqlPhoenixParser (not token-stream soup). Keywords via SqlPhoenixKWLexer.
%Options list
%Options fp=SqlPhoenixLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.sql.phoenix
%options template=LexerTemplateF.gi
%options filter=SqlPhoenixKWLexer.gi

%Define
    $kw_lexer_class /.$SqlPhoenixKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ADD
    ALL
    ALTER
    AMP
    AMPEQ
    AND
    ANDAND
    ANY
    APPROX_COUNT_DISTINCT
    ARRAY
    ARROW
    ARROWSTAR
    AS
    ASC
    ASYNC
    AT
    ATEQ
    AVG
    BACKSLASH
    BACKTICK
    BANG
    BETWEEN
    BIGINT
    BINARY
    BITCLEAR
    BY
    CACHE
    CARET
    CARETEQ
    CASCADE
    CASE
    CAST
    CHAR
    CHAR_LITERAL
    CLOSE
    COLON
    COLONCOLON
    COLONEQ
    COLUMN
    COMMA
    CONSTANT
    CONSTRAINT
    COUNT
    CREATE
    CURRENT
    CURSOR
    CYCLE
    DATE
    DECIMAL
    DECIMAL_LITERAL
    DECLARE
    DEFAULT
    DEFAULTVALUE
    DELETE
    DESC
    DISABLE
    DISTINCT
    DIV
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DOUBLE
    DOUBLE_QUOTE_ID
    DQUOTE
    DROP
    DUPLICATE
    ELLIPSIS
    ELSE
    END
    EQ
    EQEQ
    EQEQEQ
    EXISTS
    EXPLAIN
    FALSE
    FATARROW
    FETCH
    FIRST
    FIRST_VALUE
    FIRST_VALUES
    FLOAT
    FOR
    FROM
    FUNCTION
    GE
    GRANT
    GROUP
    GT
    GTEQ
    HASH
    HAVING
    ID
    IDENTIFIER
    IF
    IGNORE
    ILIKE
    IN
    INCLUDE
    INCREMENT
    INDEX
    INNER
    INTEGER
    INTO
    IS
    JAR
    JOIN
    KEY
    LAST
    LAST_VALUE
    LAST_VALUES
    LBRACE
    LBRACKET
    LE
    LEFT
    LIKE
    LIMIT
    LOCAL
    LP
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    MAX
    MAXVALUE
    MIN
    MINUS
    MINUSEQ
    MINUSMINUS
    MINVALUE
    MOD
    NE
    NE2
    NEXT
    NOT
    NOTEQ
    NOTEQEQ
    NO_CACHE
    NO_CHILD_PARENT_JOIN_OPTIMIZATION
    NO_INDEX
    NO_SEEK_TO_COLUMN
    NO_STAR_JOIN
    NTH_VALUE
    NULLS
    NULL_
    NUMBER
    OFFSET
    ON
    ONLY
    OPEN
    OR
    ORDER
    OROR
    OUTER
    PERCENT
    PERCENTEQ
    PERCENTILE_CONT
    PERCENTILE_DISC
    PERCENT_RANK
    PIPE
    PIPEEQ
    PIPEPIPE
    PLUS
    PLUSEQ
    PLUSPLUS
    PRIMARY
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    RANGE_SCAN
    RBRACE
    RBRACKET
    REBUILD
    RECEIVE
    RETURNS
    REVOKE
    RIGHT
    ROW
    ROWS
    ROW_TIMESTAMP
    RP
    RPAREN
    RSHIFT
    RSHIFTEQ
    SCHEMA
    SEEK_TO_COLUMN
    SELECT
    SEMI
    SEQUENCE
    SERIAL
    SET
    SKIP_SCAN
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SMALL
    SMALLINT
    SPLIT
    SQUOTE
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    START
    STATISTICS
    STDDEV_POP
    STDDEV_SAMP
    STRING
    STRING_LITERAL
    SUM
    TABLE
    TABLESAMPLE
    TEMPORARY
    THEN
    TILDE
    TIME
    TIMESTAMP
    TINYINT
    TO
    TRUE
    UNDERSCORE
    UNION
    UNSIGNED_DATE
    UNSIGNED_DOUBLE
    UNSIGNED_FLOAT
    UNSIGNED_INT
    UNSIGNED_LONG
    UNSIGNED_SMALLINT
    UNSIGNED_TIME
    UNSIGNED_TIMESTAMP
    UNSIGNED_TINYINT
    UNUSABLE
    UPDATE
    UPSERT
    URSHIFT
    URSHIFTEQ
    USABLE
    USE
    USE_DATA_OVER_INDEX_TABLE
    USE_INDEX_OVER_DATA_TABLE
    USE_SORT_MERGE_JOIN
    USING
    VALUE
    VALUES
    VARBINARY
    VARCHAR
    VIEW
    WHEN
    WHERE
    WITH
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
    Token ::= identifier /. checkForKeyWord($_ID); ./
            | number     /. makeToken($_DECIMAL_LITERAL); ./
            | string     /. makeToken($_STRING_LITERAL); ./
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
