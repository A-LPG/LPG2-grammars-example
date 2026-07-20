-- Real lexer for ArdenParser (not token-stream soup). Keywords via ArdenKWLexer.
%Options list
%Options fp=ArdenLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.arden
%options template=LexerTemplateF.gi
%options filter=ArdenKWLexer.gi

%Define
    $kw_lexer_class /.$ArdenKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ABS
    ACTION
    ADD
    ADSC
    AFTER
    AGGREGATE
    AGO
    ALL
    AMP
    AMPEQ
    AND
    ANDAND
    ANY
    APPLICABILITY
    ARCCOS
    ARCSIN
    ARCTAN
    ARDEN
    ARDEN_VERSION
    ARETRUE
    ARGUMENT
    ARROW
    ARROWSTAR
    AS
    ASSIGN
    AT
    ATEQ
    ATTIME
    ATTRIBUTE
    AUTHOR
    AVERAGE
    BACKSLASH
    BACKTICK
    BANG
    BE
    BEFORE
    BITCLEAR
    BOOLEAN
    BREAKLOOP
    BY
    CALL
    CARET
    CARETEQ
    CASE
    CEILING
    CHARACTERS
    CHAR_LITERAL
    CITATIONS
    CLONE
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    CONCLUDE
    COSINE
    COUNT
    CRISP
    CURRENTTIME
    DATA
    DATA_MAPPING
    DATE
    DAY
    DECREASE
    DEFAULT
    DEFAULT_SLOT
    DEFUZZIFIED
    DELAY
    DESTINATION
    DIV
    DO
    DOLLAR
    DOR
    DOT
    DOTDOT
    DOTSTAR
    DQUOTE
    DSC
    DURATION
    EARLIEST
    ELEMENTS
    ELLIPSIS
    ELSE
    ELSEIF
    END
    ENDDO
    ENDIF
    ENDSWITCH
    EQ
    EQEQ
    EQEQEQ
    EQUAL
    EVENT
    EVENTTIME
    EVERY
    EVOKE
    EXIST
    EXP
    EXPLANATION
    EXTRACT
    FALSE
    FATARROW
    FILENAME
    FIND
    FIRST
    FLOOR
    FOLLOWING
    FOR
    FORMATTED
    FROM
    FUZZIFIED
    FUZZY
    GE
    GREATER
    GT
    GTEQ
    HASH
    HOUR
    IDENTIFIER
    IF
    IN
    INCLUDE
    INCREASE
    INDEX
    INSTITUTION
    INSTITUTION_SLOT
    INT
    INTERFACE
    INTERVAL
    IS
    ISO_DATE
    ISO_DATE_TIME
    ISTRUE
    IT
    KEYWORDS
    KNOWLEDGE
    LANGUAGE
    LAST
    LATEST
    LBRACE
    LBRACK
    LBRACKET
    LE
    LEAST
    LEFT
    LENGTH
    LESS
    LET
    LIBRARY
    LINGUISTIC
    LINKS
    LIST
    LOCALIZED
    LOG
    LOG10
    LOGIC
    LOWERCASE
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    MAINTENANCE
    MATCHES
    MAXIMUM
    MEDIAN
    MERGE
    MESSAGE
    MINIMUM
    MINUS
    MINUSEQ
    MINUSMINUS
    MINUTE
    MLM
    MLMID
    MLMNAME
    MLM_SELF
    MONTH
    MOST
    MUL
    MlMCOLON
    NAMES
    NE
    NEAREST
    NEW
    NO
    NOT
    NOTEQ
    NOTEQEQ
    NOW
    NULL
    NUMBER
    NUMBEROP
    OBJECT
    OCCUR
    OF
    OR
    OROR
    PAST
    PATTERN
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    POWER
    PRECEDING
    PRESENT
    PRIORITY
    PURPOSE
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    RBRACE
    RBRACK
    RBRACKET
    READ
    RECEIVE
    REMOVE
    REPLACE
    RESOURCES
    RETURN
    REVERSE
    RIGHT
    ROUND
    RPAREN
    RSHIFT
    RSHIFTEQ
    SAME
    SC
    SECOND
    SEMI
    SEQTO
    SET
    SINE
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SLOPE
    SORT
    SPECIALIST
    SQRT
    SQUOTE
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STARTING
    STDDEV
    STRING
    STRINGOP
    SUBLIST
    SUBSTRING
    SUM
    SURROUNDING
    SWITCH
    TANGENT
    TERM
    TEXTMODECOLON
    THAN
    THE
    THEN
    TILDE
    TIME
    TIME_OF_DAY
    TITLE
    TO
    TODAY
    TOMORROW
    TRIGGERTIME
    TRIM
    TRUE
    TRUNCATE
    TRUTHVALUE
    TWOCHARCODE
    TWOCHARCOLON
    TYPE
    TYPE_CODE
    UNDERSCORE
    UNTIL
    UPPERCASE
    URGENCY
    URSHIFT
    URSHIFTEQ
    USING
    UTEXT
    VALIDATION
    VALIDATION_CODE
    VARIABLE
    VARIANCE
    VERSION
    WEEK
    WEEKDAYLITERAL
    WHERE
    WHILE
    WITH
    WITHIN
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
    Token ::= ';' ';' /. makeToken($_ADSC); ./
            | isoDateTime /. makeToken($_ISO_DATE_TIME); ./
            | isoDate /. makeToken($_ISO_DATE); ./
            | 'v' 'e' 'r' 's' 'i' 'o' 'n' Space '3' /. makeToken($_ARDEN_VERSION); ./
            | 'd' 'a' 't' 'a' Minus 'd' 'r' 'i' 'v' 'e' 'n' /. makeToken($_TYPE_CODE); ./
            | 't' 'e' 's' 't' 'i' 'n' 'g' /. makeToken($_VALIDATION_CODE); ./
            | 'p' 'r' 'o' 'd' 'u' 'c' 't' 'i' 'o' 'n' /. makeToken($_VALIDATION_CODE); ./
            | 'r' 'e' 's' 'e' 'a' 'r' 'c' 'h' /. makeToken($_VALIDATION_CODE); ./
            | 'e' 'x' 'p' 'i' 'r' 'e' 'd' /. makeToken($_VALIDATION_CODE); ./
            | identifier /. checkForKeyWord($_IDENTIFIER); ./
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
            | ':' '=' /. makeToken($_ASSIGN); ./
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

    isoDate ::= Digit Digit Digit Digit Minus Digit Digit Minus Digit Digit
    isoDateTime ::= Digit Digit Digit Digit Minus Digit Digit Minus Digit Digit
                    t Digit Digit Colon Digit Digit Colon Digit Digit isoTail
    isoTail -> $empty | isoTail isoTailChar
    isoTailChar -> Digit | Dot | Plus | Minus | Colon | Letter
%End
