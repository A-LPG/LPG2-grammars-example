-- MetricLexer (LPG)
-- Ported from antlr/grammars-v4 metric/metric.g4
-- Case-sensitive unit/prefix tokens (s vs S, m vs M, etc.).

%Options list
%Options fp=MetricLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.metric
%options template=LexerTemplateF.gi
%options filter=MetricKWLexer.gi

%Define
    $kw_lexer_class /.$MetricKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    INTE
    STAR
    SLASH
    CARET
    E
    P
    T
    G
    CAP_M
    K
    H
    DA
    D
    C
    M
    N
    PICO
    F
    A_PREFIX
    UNIT_G
    UNIT_S
    UNIT_A
    UNIT_K
    UNIT_MOL
    UNIT_CD
    UNIT_RAD
    UNIT_HZ
    UNIT_SR
    UNIT_N
    UNIT_PA
    UNIT_J
    UNIT_W
    UNIT_C
    UNIT_V
    UNIT_F
    UNIT_OHM
    UNIT_SIEMENS
    UNIT_WB
    UNIT_H
    UNIT_LM
    UNIT_LX
    UNIT_BQ
    UNIT_GY
    UNIT_SV
    UNIT_KAT
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
    Token ::= '*' /. makeToken($_STAR); ./
            | '/' /. makeToken($_SLASH); ./
            | '^' /. makeToken($_CARET); ./
            | INTE /. makeToken($_INTE); ./
            | AfterASCII /. makeToken($_UNIT_OHM); ./
            | 'd' 'a' /. makeToken($_DA); ./
            | 'm' 'o' 'l' /. makeToken($_UNIT_MOL); ./
            | 'c' 'd' /. makeToken($_UNIT_CD); ./
            | 'r' 'a' 'd' /. makeToken($_UNIT_RAD); ./
            | 'H' 'z' /. makeToken($_UNIT_HZ); ./
            | 's' 'r' /. makeToken($_UNIT_SR); ./
            | 'P' 'a' /. makeToken($_UNIT_PA); ./
            | 'W' 'b' /. makeToken($_UNIT_WB); ./
            | 'l' 'm' /. makeToken($_UNIT_LM); ./
            | 'l' 'x' /. makeToken($_UNIT_LX); ./
            | 'B' 'q' /. makeToken($_UNIT_BQ); ./
            | 'G' 'y' /. makeToken($_UNIT_GY); ./
            | 'S' 'v' /. makeToken($_UNIT_SV); ./
            | 'k' 'a' 't' /. makeToken($_UNIT_KAT); ./
            | 'E' /. makeToken($_E); ./
            | 'P' /. makeToken($_P); ./
            | 'T' /. makeToken($_T); ./
            | 'G' /. makeToken($_G); ./
            | 'M' /. makeToken($_CAP_M); ./
            | 'k' /. makeToken($_K); ./
            | 'h' /. makeToken($_H); ./
            | 'd' /. makeToken($_D); ./
            | 'c' /. makeToken($_C); ./
            | 'm' /. makeToken($_M); ./
            | 'n' /. makeToken($_N); ./
            | 'p' /. makeToken($_PICO); ./
            | 'f' /. makeToken($_F); ./
            | 'a' /. makeToken($_A_PREFIX); ./
            | 'g' /. makeToken($_UNIT_G); ./
            | 's' /. makeToken($_UNIT_S); ./
            | 'A' /. makeToken($_UNIT_A); ./
            | 'K' /. makeToken($_UNIT_K); ./
            | 'N' /. makeToken($_UNIT_N); ./
            | 'J' /. makeToken($_UNIT_J); ./
            | 'W' /. makeToken($_UNIT_W); ./
            | 'C' /. makeToken($_UNIT_C); ./
            | 'V' /. makeToken($_UNIT_V); ./
            | 'F' /. makeToken($_UNIT_F); ./
            | 'S' /. makeToken($_UNIT_SIEMENS); ./
            | 'H' /. makeToken($_UNIT_H); ./
            | white /. skipToken(); ./

    INTE ::= Digit
           | INTE Digit

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
