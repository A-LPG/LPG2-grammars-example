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
    PREFIX_E
    PREFIX_P
    PREFIX_T
    PREFIX_G
    PREFIX_MEGA
    PREFIX_K
    PREFIX_H
    PREFIX_DA
    PREFIX_D
    PREFIX_C
    UNIT_M
    PREFIX_N
    PREFIX_PICO
    PREFIX_F
    PREFIX_A
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
    UNIT_T
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
            | 'o' 'h' 'm' /. makeToken($_UNIT_OHM); ./
            | AfterASCII /. makeToken($_UNIT_OHM); ./
            | 'd' 'a' /. makeToken($_PREFIX_DA); ./
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
            | 'E' /. makeToken($_PREFIX_E); ./
            | 'P' /. makeToken($_PREFIX_P); ./
            | 'T' /. makeToken($_PREFIX_T); ./
            | 'G' /. makeToken($_PREFIX_G); ./
            | 'M' /. makeToken($_PREFIX_MEGA); ./
            | 'k' /. makeToken($_PREFIX_K); ./
            | 'h' /. makeToken($_PREFIX_H); ./
            | 'd' /. makeToken($_PREFIX_D); ./
            | 'c' /. makeToken($_PREFIX_C); ./
            | 'm' /. makeToken($_UNIT_M); ./
            | 'n' /. makeToken($_PREFIX_N); ./
            | 'p' /. makeToken($_PREFIX_PICO); ./
            | 'f' /. makeToken($_PREFIX_F); ./
            | 'a' /. makeToken($_PREFIX_A); ./
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
