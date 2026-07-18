-- Real lexer for SqlAthenaParser (not token-stream soup). Keywords via SqlAthenaKWLexer.
%Options list
%Options fp=SqlAthenaLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.sql.athena
%options template=LexerTemplateF.gi
%options filter=SqlAthenaKWLexer.gi

%Define
    $kw_lexer_class /.$SqlAthenaKWLexer./
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
    ANALYZE
    AND
    ANDAND
    ANY
    ARRAY
    ARROW
    ARROWSTAR
    AS
    ASC
    AT
    ATEQ
    AVRO
    BACKSLASH
    BACKTICK
    BANG
    BETWEEN
    BIGINT
    BINARY
    BIN_PACK
    BITCLEAR
    BOOLEAN
    BUCKETS
    BY
    CARET
    CARETEQ
    CASCADE
    CASE
    CAST
    CHAR
    CHAR_LITERAL
    CLUSTERED
    COLLECTION
    COLON
    COLONCOLON
    COLONEQ
    COLUMNS
    COMMA
    COMMENT
    CREATE
    DATA
    DATABASE
    DATABASES
    DATE
    DBPROPERTIES
    DEALLOCATE
    DECIMAL
    DEFINED
    DELETE
    DELIMITED
    DESC
    DESCRIBE
    DISTINCT
    DISTRIBUTED
    DIVIDE
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DOUBLE
    DQUOTE
    DQ_STRING_LITERAL
    DROP
    ELLIPSIS
    ELSE
    END
    EQ
    EQEQ
    EQEQEQ
    ESCAPED
    EXCEPT
    EXECUTE
    EXISTS
    EXPLAIN
    EXTENDED
    EXTERNAL
    FALSE
    FATARROW
    FIELDS
    FIRST
    FLOAT
    FLOAT_LITERAL
    FORMAT
    FORMATTED
    FROM
    GRAPHVIZ
    GROUP
    GT
    GTEQ
    HASH
    HAVING
    IDENTIFIER
    IF
    IN
    INPUTFORMAT
    INSERT
    INT
    INTEGER
    INTEGRAL_LITERAL
    INTERSECT
    INTO
    IO
    ION
    IS
    ITEMS
    JSON
    KEYS
    LAST
    LBRACE
    LBRACKET
    LIKE
    LIMIT
    LINES
    LOCATION
    LOGICAL
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    MAP
    MATCHED
    MERGE
    MINUS
    MINUSEQ
    MINUSMINUS
    MODULE
    MSCK
    NO
    NOT
    NOTEQ
    NOTEQEQ
    NULLS
    NULL_
    NUMBER
    OFFSET
    ON
    OPTIMIZE
    OR
    ORC
    ORDER
    OROR
    OUTPUTFORMAT
    PARQUET
    PARTITION
    PARTITIONED
    PARTITIONS
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    PREPARE
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    RBRACE
    RBRACKET
    RCFILE
    REAL_LITERAL
    RECEIVE
    RENAME
    REPAIR
    REPLACE
    RESTRICT
    REWRITE
    ROW
    ROWS
    RPAREN
    RSHIFT
    RSHIFTEQ
    SCHEMA
    SCHEMAS
    SELECT
    SEMI
    SEQUENCEFILE
    SERDE
    SERDEPROPERTIES
    SET
    SHOW
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SMALLINT
    SOME
    SQUOTE
    SQ_STRING_LITERAL
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STORED
    STRING
    STRUCT
    TABLE
    TABLES
    TBLPROPERTIES
    TERMINATED
    TEXTFILE
    THEN
    TILDE
    TIMESTAMP
    TINYINT
    TO
    TRUE
    TYPE
    UNDERSCORE
    UNION
    UNLOAD
    UPDATE
    URSHIFT
    URSHIFTEQ
    USING
    VACUUM
    VALIDATE
    VALUES
    VARCHAR
    VIEW
    VIEWS
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
