-- Real lexer for CorundumParser (not token-stream soup). Keywords via CorundumKWLexer.
%Options list
%Options fp=CorundumLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.corundum
%options template=LexerTemplateF.gi
%options filter=CorundumKWLexer.gi

%Define
    $kw_lexer_class /.$CorundumKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    AMP
    AMPEQ
    AND
    ANDAND
    ARROW
    ARROWSTAR
    ASSIGN
    AT
    ATEQ
    BACKSLASH
    BACKTICK
    BANG
    BITCLEAR
    BIT_AND
    BIT_NOT
    BIT_OR
    BIT_SHL
    BIT_SHR
    BIT_XOR
    BREAK
    CARET
    CARETEQ
    CHAR_LITERAL
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    CRLF
    DEF
    DIV
    DIV_ASSIGN
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DQUOTE
    ELLIPSIS
    ELSE
    ELSIF
    END
    EQ
    EQEQ
    EQEQEQ
    EQUAL
    EXP
    EXP_ASSIGN
    FALSE
    FATARROW
    FLOAT
    FOR
    GREATER
    GREATER_EQUAL
    GT
    GTEQ
    HASH
    ID
    IDENTIFIER
    ID_FUNCTION
    ID_GLOBAL
    IF
    INT
    LBRACE
    LBRACKET
    LEFT_RBRACKET
    LEFT_SBRACKET
    LESS
    LESS_EQUAL
    LITERAL
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    MINUS
    MINUSEQ
    MINUSMINUS
    MINUS_ASSIGN
    MOD
    MOD_ASSIGN
    MUL
    MUL_ASSIGN
    NIL
    NOT
    NOTEQ
    NOTEQEQ
    NOT_EQUAL
    NUMBER
    OR
    OROR
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PIR
    PLUS
    PLUSEQ
    PLUSPLUS
    PLUS_ASSIGN
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    RBRACE
    RBRACKET
    RECEIVE
    REQUIRE
    RETRY
    RETURN
    RIGHT_RBRACKET
    RIGHT_SBRACKET
    RPAREN
    RSHIFT
    RSHIFTEQ
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
    TILDE
    TRUE
    UNDERSCORE
    UNLESS
    URSHIFT
    URSHIFTEQ
    WHILE
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
    Token ::= LF /. makeToken($_CRLF); ./
            | CR LF /. makeToken($_CRLF); ./
            | CR /. makeToken($_CRLF); ./
            | DollarSign identifier /. makeToken($_ID_GLOBAL); ./
            | identifier QuestionMark /. makeToken($_ID_FUNCTION); ./
            | identifier /. checkForKeyWord($_ID); ./
            | float_number /. makeToken($_FLOAT); ./
            | int_number /. makeToken($_INT); ./
            | string     /. makeToken($_LITERAL); ./
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
            | '=' '=' /. makeToken($_EQUAL); ./
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
            | '(' /. makeToken($_LEFT_RBRACKET); ./
            | ')' /. makeToken($_RIGHT_RBRACKET); ./
            | '*' /. makeToken($_STAR); ./
            | '+' /. makeToken($_PLUS); ./
            | ',' /. makeToken($_COMMA); ./
            | '-' /. makeToken($_MINUS); ./
            | '.' /. makeToken($_DOT); ./
            | '/' /. makeToken($_SLASH); ./
            | ':' /. makeToken($_COLON); ./
            | ';' /. makeToken($_SEMICOLON); ./
            | '<' /. makeToken($_LT); ./
            | '=' /. makeToken($_ASSIGN); ./
            | '>' /. makeToken($_GT); ./
            | '?' /. makeToken($_QUESTION); ./
            | '@' /. makeToken($_AT); ./
            | '[' /. makeToken($_LEFT_SBRACKET); ./
            | '\' /. makeToken($_BACKSLASH); ./
            | ']' /. makeToken($_RIGHT_SBRACKET); ./
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
    WSChar -> Space | HT | FF
    int_number ::= Digit
                 | int_number Digit
                 | int_number '_' Digit

    float_number ::= int_number '.' Digits
                   | '.' Digits

%End
