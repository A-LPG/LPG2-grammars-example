-- Real lexer for SqlDerbyParser (not token-stream soup). Keywords via SqlDerbyKWLexer.
%Options list
%Options fp=SqlDerbyLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.sql.derby
%options template=LexerTemplateF.gi
%options filter=SqlDerbyKWLexer.gi

%Define
    $kw_lexer_class /.$SqlDerbyKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ABS
    ABSVAL
    ACOS
    ACTION
    ADD
    AGGREGATE
    ALL
    ALLOCATE
    ALTER
    ALWAYS
    AMP
    AMPEQ
    AND
    ANDAND
    ANY
    ARE
    ARROW
    ARROWSTAR
    AS
    ASC
    ASIN
    ASSERTION
    AT
    ATAN
    ATAN2
    ATEQ
    AUTHORIZATION
    AVG
    BACKSLASH
    BACKTICK
    BANG
    BEGIN
    BETWEEN
    BIGINT
    BINARY
    BIT
    BITCLEAR
    BLOB
    BOOLEAN
    BOTH
    BY
    CALL
    CALLED
    CARET
    CARETEQ
    CASCADE
    CASCADED
    CASE
    CAST
    CEIL
    CEILING
    CHAR
    CHARACTER
    CHARACTER_LENGTH
    CHAR_LITERAL
    CHECK
    CLOB
    CLOSE
    COALESCE
    COLLATE
    COLLATION
    COLON
    COLONCOLON
    COLONEQ
    COLUMN
    COMMA
    COMMIT
    COMMITTED
    CONNECT
    CONNECTION
    CONSTRAINT
    CONSTRAINTS
    CONTAINS
    CONTINUE
    CONVERT
    CORRESPONDING
    COS
    COUNT
    CREATE
    CROSS
    CS
    CURRENT
    CURRENT_DATE
    CURRENT_ROLE
    CURRENT_TIME
    CURRENT_TIMESTAMP
    CURRENT_USER
    CURSOR
    CYCLE
    DATA
    DATE
    DAY
    DEALLOCATE
    DEC
    DECIMAL
    DECIMAL_LITERAL
    DECLARE
    DEFAULT
    DEFERRABLE
    DEFERRED
    DEFINER
    DEGREES
    DELETE
    DERBY
    DERBY_JDBC_RESULT_SET
    DESC
    DESCRIBE
    DETERMINISTIC
    DIAGNOSTICS
    DIRTY
    DISCONNECT
    DISTINCT
    DIVIDE
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DOUBLE
    DOUBLE_QUOTE_ID
    DQUOTE
    DROP
    DYNAMIC
    ELLIPSIS
    ELSE
    END
    END_EXEC
    EQ
    EQEQ
    EQEQEQ
    ESCAPE
    EXCEPT
    EXCEPTION
    EXCLUSIVE
    EXEC
    EXECUTE
    EXISTS
    EXP
    EXPLAIN
    EXTERNAL
    FALSE
    FATARROW
    FETCH
    FIRST
    FLOAT
    FLOAT_LITERAL
    FLOOR
    FOR
    FOREIGN
    FOUND
    FROM
    FULL
    FUNCTION
    GENERATED
    GET
    GETCURRENTCONNECTION
    GIGA
    GLOBAL
    GO
    GOTO
    GRANT
    GROUP
    GT
    GTEQ
    HASH
    HAVING
    HOUR
    ID
    IDENTIFIER
    IDENTITY
    IDENTITY_VAL_LOCAL
    IMMEDIATE
    IN
    INCREMENT
    INDEX
    INDICATOR
    INITIALLY
    INNER
    INOUT
    INPUT
    INSENSITIVE
    INSERT
    INT
    INTEGER
    INTERSECT
    INTO
    INVOKER
    IS
    ISOLATION
    JAVA
    JOIN
    KEY
    KILO
    LANGUAGE
    LARGE
    LAST
    LBRACE
    LBRACKET
    LCASE
    LEADING
    LEFT
    LENGTH
    LIKE
    LN
    LOCATE
    LOCK
    LOCKSIZE
    LOG
    LOG10
    LOGGED
    LONG
    LOWER
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    LTRIM
    MATCH
    MATCHED
    MAX
    MAXVALUE
    MEGA
    MERGE
    MIN
    MINUS
    MINUSEQ
    MINUSMINUS
    MINUTE
    MINVALUE
    MOD
    MODE
    MODIFIES
    MODULE
    MONTH
    NAME
    NATIONAL
    NATURAL
    NCHAR
    NEXT
    NO
    NONE
    NOT
    NOTEQ
    NOTEQEQ
    NULLIF
    NULLS
    NULL_
    NUMBER
    NUMERIC
    NVARCHAR
    OBJECT
    OF
    OFFSET
    ON
    ONLY
    OPEN
    OPTION
    OR
    ORDER
    OROR
    OUT
    OUTER
    OUTPUT
    OVERLAPS
    PAD
    PARAMETER
    PARTIAL
    PERCENT
    PERCENTEQ
    PI
    PIPE
    PIPEEQ
    PIPE_PIPE
    PLUS
    PLUSEQ
    PLUSPLUS
    PRECISION
    PREPARE
    PRESERVE
    PRIMARY
    PRIOR
    PRIVILEGES
    PROCEDURE
    PUBLIC
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    RADIANS
    RBRACE
    RBRACKET
    READ
    READS
    REAL
    REAL_LITERAL
    RECEIVE
    REFERENCES
    RELATIVE
    RENAME
    REPEATABLE
    RESET
    RESTART
    RESTRICT
    RESULT
    RETURNS
    REVOKE
    RIGHT
    ROLE
    ROLLBACK
    ROLLUP
    ROW
    ROWS
    RPAREN
    RR
    RS
    RSHIFT
    RSHIFTEQ
    RTRIM
    SCHEMA
    SCROLL
    SECOND
    SECURITY
    SELECT
    SEMI
    SEQUENCE
    SERIALIZABLE
    SESSION_USER
    SET
    SETS
    SHARE
    SIN
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SMALLINT
    SOME
    SPACE
    SQL
    SQLCODE
    SQLERROR
    SQLID
    SQLSTATE
    SQRT
    SQUOTE
    STABILITY
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    START
    STDDEV_POP
    STDDEV_SAMP
    STRING
    STRING_LITERAL
    STYLE
    SUBSTR
    SUBSTRING
    SUM
    SYNONYM
    SYSTEM_USER
    TABLE
    TAN
    TEMPORARY
    THEN
    TILDE
    TIME
    TIMESTAMP
    TIMEZONE_HOUR
    TIMEZONE_MINUTE
    TO
    TRANSACTION
    TRANSLATE
    TRANSLATION
    TRIGGER
    TRIM
    TRUE
    TRUNCATE
    TYPE
    UCASE
    UNCOMMITTED
    UNDERSCORE
    UNION
    UNIQUE
    UNKNOWN
    UPDATE
    UPPER
    UR
    URSHIFT
    URSHIFTEQ
    USAGE
    USER
    USING
    VALUES
    VARCHAR
    VARYING
    VAR_POP
    VAR_SAMP
    VIEW
    WHEN
    WHENEVER
    WHERE
    WINDOW
    WITH
    WORK
    WRITE
    XML
    XMLEXISTS
    XMLPARSE
    XMLQUERY
    XMLSERIALIZE
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
