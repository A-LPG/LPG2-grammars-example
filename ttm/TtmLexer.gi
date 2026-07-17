-- TTM Lexer (LPG)

%Options list
%Options fp=TtmLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.ttm
%options template=LexerTemplateF.gi
%options filter=TtmKWLexer.gi

%Define
    $kw_lexer_class /.$TtmKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    ACTIVE
    NEUTRAL
    ESCSTRING
    STRING
    SEMI
    LT
    GT
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
    Token ::= NEUTRAL   /. makeToken($_NEUTRAL); ./
            | ACTIVE    /. makeToken($_ACTIVE); ./
            | ESCSTRING /. makeToken($_ESCSTRING); ./
            | ';'       /. makeToken($_SEMI); ./
            | '>'       /. makeToken($_GT); ./
            | '<'       /. makeToken($_LT); ./
            | STRING    /. makeToken($_STRING); ./
            | white     /. skipToken(); ./

    -- ##< before #<
    NEUTRAL ::= '#' '#' '<'
    ACTIVE ::= '#' '<'

    -- ESCSTRING: '<' [a-zA-Z]+ '>'
    ESCSTRING ::= '<' Letters '>'
    Letters ::= LetterAlpha | Letters LetterAlpha
    LetterAlpha -> LowerCaseLetter | UpperCaseLetter

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- STRING: [a-zA-Z0-9@!#+\-*&$%'?=".|_ ]+
    STRING ::= StringChar
             | STRING StringChar

    StringChar -> LetterAlpha | Digit | StringSpecial | Space
    StringSpecial -> '@' | '!' | '#' | '+' | '-' | '*' | '&' | '$' | '%' | "'"
                   | '?' | '=' | '"' | '.' | '|' | '_'

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
