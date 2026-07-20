-- Real lexer for Cql3Parser (not token-stream soup). Keywords via Cql3KWLexer.
%Options list
%Options fp=Cql3Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.cql3
%options template=LexerTemplateF.gi
%options filter=Cql3KWLexer.gi

%Define
    $kw_lexer_class /.$Cql3KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    AMP
    AMPEQ
    ANDAND
    ARROW
    ARROWSTAR
    AT
    ATEQ
    BACKSLASH
    BACKTICK
    BANG
    BITCLEAR
    CARET
    CARETEQ
    CHAR_LITERAL
    CODE_BLOCK
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    DECIMAL_LITERAL
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DQUOTE
    ELLIPSIS
    EQ
    EQEQ
    EQEQEQ
    FATARROW
    FLOAT_LITERAL
    GT
    GTEQ
    HASH
    HEXADECIMAL_LITERAL
    IDENTIFIER
    K_ADD
    K_AGGREGATE
    K_ALL
    K_ALLOW
    K_ALTER
    K_AND
    K_ANY
    K_APPLY
    K_AS
    K_ASC
    K_ASCII
    K_AUTHORIZE
    K_BATCH
    K_BEGIN
    K_BIGINT
    K_BLOB
    K_BOOLEAN
    K_BY
    K_CALLED
    K_CLUSTERING
    K_COLUMNFAMILY
    K_COMPACT
    K_CONSISTENCY
    K_CONTAINS
    K_COUNTER
    K_CREATE
    K_CUSTOM
    K_DATE
    K_DECIMAL
    K_DEFAULT
    K_DELETE
    K_DESC
    K_DESCRIBE
    K_DISTINCT
    K_DOUBLE
    K_DROP
    K_DURABLE_WRITES
    K_EACH_QUORUM
    K_ENTRIES
    K_EXECUTE
    K_EXISTS
    K_FALSE
    K_FILTERING
    K_FINALFUNC
    K_FLOAT
    K_FROM
    K_FROZEN
    K_FULL
    K_FUNCTION
    K_FUNCTIONS
    K_GRANT
    K_IF
    K_IN
    K_INDEX
    K_INET
    K_INFINITY
    K_INITCOND
    K_INPUT
    K_INSERT
    K_INT
    K_INTO
    K_IS
    K_JSON
    K_KEY
    K_KEYS
    K_KEYSPACE
    K_KEYSPACES
    K_LANGUAGE
    K_LEVEL
    K_LIMIT
    K_LIST
    K_LOCAL_ONE
    K_LOCAL_QUORUM
    K_LOGGED
    K_LOGIN
    K_MAP
    K_MASKED
    K_MATERIALIZED
    K_MODIFY
    K_NAN
    K_NORECURSIVE
    K_NOSUPERUSER
    K_NOT
    K_NULL
    K_OF
    K_ON
    K_ONE
    K_OPTIONS
    K_OR
    K_ORDER
    K_PARTITION
    K_PASSWORD
    K_PER
    K_PERMISSION
    K_PERMISSIONS
    K_PRIMARY
    K_QUORUM
    K_RENAME
    K_REPLACE
    K_REPLICATION
    K_RETURNS
    K_REVOKE
    K_ROLE
    K_ROLES
    K_SCHEMA
    K_SELECT
    K_SET
    K_SFUNC
    K_SMALLINT
    K_STATIC
    K_STORAGE
    K_STYPE
    K_SUPERUSER
    K_TABLE
    K_TEXT
    K_THREE
    K_TIME
    K_TIMESTAMP
    K_TIMEUUID
    K_TINYINT
    K_TO
    K_TOKEN
    K_TRIGGER
    K_TRUE
    K_TRUNCATE
    K_TTL
    K_TUPLE
    K_TWO
    K_TYPE
    K_UNLOGGED
    K_UPDATE
    K_USE
    K_USER
    K_USING
    K_UUID
    K_VALUES
    K_VARCHAR
    K_VARINT
    K_VECTOR
    K_VIEW
    K_WHERE
    K_WITH
    K_WRITETIME
    LBRACE
    LBRACKET
    LC_BRACKET
    LPAREN
    LR_BRACKET
    LSHIFT
    LSHIFTEQ
    LS_BRACKET
    LT
    LTEQ
    LTGT
    MINUS
    MINUSEQ
    MINUSMINUS
    NOTEQ
    NOTEQEQ
    NUMBER
    OBJECT_NAME
    OPERATOR_EQ
    OPERATOR_GT
    OPERATOR_GTE
    OPERATOR_LT
    OPERATOR_LTE
    OROR
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    RBRACE
    RBRACKET
    RC_BRACKET
    RECEIVE
    RPAREN
    RR_BRACKET
    RSHIFT
    RSHIFTEQ
    RS_BRACKET
    SEMI
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
    STRING_LITERAL
    TILDE
    UNDERSCORE
    URSHIFT
    URSHIFTEQ
    UUID
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
            | '=' /. makeToken($_OPERATOR_EQ); ./
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
    WSChar -> Space | LF | CR | HT | FF
%End
