-- Real lexer for GqlParser (not token-stream soup). Keywords via GqlKWLexer.
%Options list
%Options fp=GqlLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.gql
%options template=LexerTemplateF.gi
%options filter=GqlKWLexer.gi

%Define
    $kw_lexer_class /.$GqlKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ABS
    ABSTRACT
    ACCENT_QUOTED_CHARACTER_SEQUENCE
    ACOS
    ACYCLIC
    AGGREGATE
    AGGREGATES
    ALL
    ALL_DIFFERENT
    ALTER
    AMP
    AMPEQ
    AMPERSAND
    AND
    ANDAND
    ANY
    ARRAY
    ARROW
    ARROWSTAR
    AS
    ASC
    ASCENDING
    ASIN
    ASTERISK
    AT
    ATAN
    ATEQ
    AVG
    BACKSLASH
    BACKTICK
    BANG
    BIG
    BIGINT
    BINARY
    BINDING
    BINDINGS
    BITCLEAR
    BOOL
    BOOLEAN
    BOOLEAN_LITERAL
    BOTH
    BRACKET_RIGHT_ARROW
    BRACKET_TILDE_RIGHT_ARROW
    BTRIM
    BY
    BYTES
    BYTE_LENGTH
    BYTE_STRING_LITERAL
    CALL
    CARDINALITY
    CARET
    CARETEQ
    CASE
    CAST
    CATALOG
    CEIL
    CEILING
    CHAR
    CHARACTERISTICS
    CHARACTER_LENGTH
    CHAR_LENGTH
    CHAR_LITERAL
    CLEAR
    CLONE
    CLOSE
    COALESCE
    COLLECT_LIST
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    COMMIT
    CONCATENATION_OPERATOR
    CONNECTING
    CONSTRAINT
    COPY
    COS
    COSH
    COT
    COUNT
    CREATE
    CURRENT_DATE
    CURRENT_GRAPH
    CURRENT_PROPERTY_GRAPH
    CURRENT_ROLE
    CURRENT_SCHEMA
    CURRENT_TIME
    CURRENT_TIMESTAMP
    CURRENT_USER
    DATA
    DATE
    DATETIME
    DAY
    DEC
    DECIMAL
    DEGREES
    DELETE
    DESC
    DESCENDING
    DESTINATION
    DETACH
    DIFFERENT
    DIRECTED
    DIRECTORY
    DISTINCT
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DOUBLE
    DOUBLE_COLON
    DOUBLE_PERIOD
    DOUBLE_QUOTED_CHARACTER_SEQUENCE
    DQUOTE
    DROP
    DRYRUN
    DURATION
    DURATION_BETWEEN
    EDGE
    EDGES
    ELEMENT
    ELEMENTS
    ELEMENT_ID
    ELLIPSIS
    ELSE
    END
    EQ
    EQEQ
    EQEQEQ
    EQUALS_OPERATOR
    EXACT
    EXCEPT
    EXCLAMATION_MARK
    EXISTING
    EXISTS
    EXP
    FATARROW
    FILTER
    FINISH
    FIRST
    FLOAT
    FLOAT128
    FLOAT16
    FLOAT256
    FLOAT32
    FLOAT64
    FLOOR
    FOR
    FROM
    FUNCTION
    GENERAL_PARAMETER_REFERENCE
    GQLSTATUS
    GRANT
    GRAPH
    GREATER_THAN_OR_EQUALS_OPERATOR
    GROUP
    GROUPS
    GT
    GTEQ
    HASH
    HAVING
    HOME_GRAPH
    HOME_PROPERTY_GRAPH
    HOME_SCHEMA
    HOUR
    IDENTIFIER
    IF
    IMPLIES
    IN
    INFINITY_KW
    INSERT
    INSTANT
    INT
    INT128
    INT16
    INT256
    INT32
    INT64
    INT8
    INTEGER
    INTEGER128
    INTEGER16
    INTEGER256
    INTEGER32
    INTEGER64
    INTEGER8
    INTERSECT
    INTERVAL
    IS
    KEEP
    LABEL
    LABELED
    LABELS
    LAST
    LBRACE
    LBRACKET
    LEADING
    LEFT
    LEFT_ANGLE_BRACKET
    LEFT_ARROW
    LEFT_ARROW_BRACKET
    LEFT_ARROW_TILDE
    LEFT_ARROW_TILDE_BRACKET
    LEFT_BRACE
    LEFT_BRACKET
    LEFT_MINUS_RIGHT
    LEFT_MINUS_SLASH
    LEFT_PAREN
    LEFT_TILDE_SLASH
    LESS_THAN_OR_EQUALS_OPERATOR
    LET
    LIKE
    LIMIT
    LIST
    LN
    LOCAL
    LOCAL_DATETIME
    LOCAL_TIME
    LOCAL_TIMESTAMP
    LOG10
    LOG_KW
    LOWER
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    LTRIM
    MATCH
    MAX
    MIN
    MINUS
    MINUSEQ
    MINUSMINUS
    MINUS_LEFT_BRACKET
    MINUS_SIGN
    MINUS_SLASH
    MINUTE
    MOD
    MONTH
    MULTISET_ALTERNATION_OPERATOR
    NEXT
    NFC
    NFD
    NFKC
    NFKD
    NO
    NODE
    NODETACH
    NORMALIZE
    NORMALIZED
    NOT
    NOTEQ
    NOTEQEQ
    NOTHING
    NOT_EQUALS_OPERATOR
    NULLIF
    NULLS
    NULL_KW
    NUMBER
    NUMERIC
    OCTET_LENGTH
    OF
    OFFSET
    ON
    ONLY
    OPEN
    OPTIONAL
    OR
    ORDER
    ORDINALITY
    OROR
    OTHERWISE
    PARAMETER
    PARAMETERS
    PARTITION
    PATH
    PATHS
    PATH_LENGTH
    PERCENT
    PERCENTEQ
    PERCENTILE_CONT
    PERCENTILE_DISC
    PERIOD
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    PLUS_SIGN
    POWER
    PRECISION
    PROCEDURE
    PRODUCT
    PROJECT
    PROPERTY
    PROPERTY_EXISTS
    QUERY
    QUESTDOT
    QUESTION
    QUESTION_MARK
    QUESTQUEST
    QUESTQUESTEQ
    RADIANS
    RBRACE
    RBRACKET
    READ
    REAL
    RECEIVE
    RECORD
    RECORDS
    REFERENCE
    REGULAR_IDENTIFIER
    RELATIONSHIP
    RELATIONSHIPS
    REMOVE
    RENAME
    REPEATABLE
    REPLACE
    RESET
    RETURN
    REVOKE
    RIGHT
    RIGHT_ANGLE_BRACKET
    RIGHT_ARROW
    RIGHT_BRACE
    RIGHT_BRACKET
    RIGHT_BRACKET_MINUS
    RIGHT_BRACKET_TILDE
    RIGHT_PAREN
    ROLLBACK
    RPAREN
    RSHIFT
    RSHIFTEQ
    RTRIM
    SAME
    SCHEMA
    SECOND
    SELECT
    SEMI
    SESSION
    SESSION_USER
    SET
    SHORTEST
    SIGNED
    SIMPLE
    SIN
    SINGLE_QUOTED_CHARACTER_SEQUENCE
    SINH
    SIZE
    SKIP_RESERVED_WORD
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SLASH_MINUS
    SLASH_MINUS_RIGHT
    SLASH_TILDE
    SLASH_TILDE_RIGHT
    SMALL
    SMALLINT
    SOLIDUS
    SOURCE
    SQRT
    SQUOTE
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    START
    STDDEV_POP
    STDDEV_SAMP
    STRING
    SUBSTITUTED_PARAMETER_REFERENCE
    SUBSTRING
    SUM
    SYSTEM_USER
    TABLE
    TAN
    TANH
    TEMPORAL
    THEN
    TILDE
    TILDE_LEFT_BRACKET
    TILDE_RIGHT_ARROW
    TILDE_SLASH
    TIME
    TIMESTAMP
    TO
    TRAIL
    TRAILING
    TRANSACTION
    TRIM
    TYPE
    TYPED
    UBIGINT
    UINT
    UINT128
    UINT16
    UINT256
    UINT32
    UINT64
    UINT8
    UNDERSCORE
    UNDIRECTED
    UNION
    UNIQUE
    UNIT
    UNSIGNED
    UNSIGNED_BINARY_INTEGER
    UNSIGNED_DECIMAL_INTEGER
    UNSIGNED_DECIMAL_INTEGER_WITH_APPROXIMATE_NUMBER_SUFFIX
    UNSIGNED_DECIMAL_INTEGER_WITH_EXACT_NUMBER_SUFFIX
    UNSIGNED_DECIMAL_IN_COMMON_NOTATION_WITHOUT_SUFFIX
    UNSIGNED_DECIMAL_IN_COMMON_NOTATION_WITH_APPROXIMATE_NUMBER_SUFFIX
    UNSIGNED_DECIMAL_IN_COMMON_NOTATION_WITH_EXACT_NUMBER_SUFFIX
    UNSIGNED_DECIMAL_IN_SCIENTIFIC_NOTATION_WITHOUT_SUFFIX
    UNSIGNED_DECIMAL_IN_SCIENTIFIC_NOTATION_WITH_APPROXIMATE_NUMBER_SUFFIX
    UNSIGNED_DECIMAL_IN_SCIENTIFIC_NOTATION_WITH_EXACT_NUMBER_SUFFIX
    UNSIGNED_HEXADECIMAL_INTEGER
    UNSIGNED_OCTAL_INTEGER
    UPPER
    URSHIFT
    URSHIFTEQ
    USE
    USMALLINT
    VALUE
    VALUES
    VARBINARY
    VARCHAR
    VARIABLE
    VERTEX
    VERTICAL_BAR
    WALK
    WHEN
    WHERE
    WITH
    WITHOUT
    WRITE
    XOR
    YEAR
    YIELD
    YIELDSTAR
    ZONE
    ZONED
    ZONED_DATETIME
    ZONED_TIME
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
    Token ::= identifier /. checkForKeyWord($_REGULAR_IDENTIFIER); ./
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
            | '(' /. makeToken($_LEFT_PAREN); ./
            | ')' /. makeToken($_RIGHT_PAREN); ./
            | '*' /. makeToken($_STAR); ./
            | '+' /. makeToken($_PLUS); ./
            | ',' /. makeToken($_COMMA); ./
            | '-' /. makeToken($_MINUS); ./
            | '.' /. makeToken($_PERIOD); ./
            | '/' /. makeToken($_SLASH); ./
            | ':' /. makeToken($_COLON); ./
            | ';' /. makeToken($_SEMI); ./
            | '<' /. makeToken($_LT); ./
            | '=' /. makeToken($_EQUALS_OPERATOR); ./
            | '>' /. makeToken($_GT); ./
            | '?' /. makeToken($_QUESTION); ./
            | '@' /. makeToken($_AT); ./
            | '[' /. makeToken($_LEFT_BRACKET); ./
            | '\' /. makeToken($_BACKSLASH); ./
            | ']' /. makeToken($_RIGHT_BRACKET); ./
            | '^' /. makeToken($_CARET); ./
            | '`' /. makeToken($_BACKTICK); ./
            | '{' /. makeToken($_LEFT_BRACE); ./
            | '|' /. makeToken($_PIPE); ./
            | '}' /. makeToken($_RIGHT_BRACE); ./
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
