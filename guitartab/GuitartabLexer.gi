-- GuitartabLexer (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

%Options list
%Options fp=GuitartabLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.guitartab
%options template=LexerTemplateF.gi
%options filter=GuitartabKWLexer.gi

%Define
    $kw_lexer_class /.$GuitartabKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    BA
    BB
    BC
    BD
    BE
    BF
    BG
    LA
    LB
    LC
    LD
    LE
    LF
    LG
    FINGER
    BARLNE
    FRET
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
    Token ::= 'A' /. makeToken($_BA); ./
            | 'B' /. makeToken($_BB); ./
            | 'C' /. makeToken($_BC); ./
            | 'D' /. makeToken($_BD); ./
            | 'E' /. makeToken($_BE); ./
            | 'F' /. makeToken($_BF); ./
            | 'G' /. makeToken($_BG); ./
            | 'a' /. makeToken($_LA); ./
            | 'b' /. makeToken($_LB); ./
            | 'c' /. makeToken($_LC); ./
            | 'd' /. makeToken($_LD); ./
            | 'e' /. makeToken($_LE); ./
            | 'f' /. makeToken($_LF); ./
            | 'g' /. makeToken($_LG); ./
            | 'x' /. makeToken($_FINGER); ./
            | 'o' /. makeToken($_FINGER); ./
            | '-' /. makeToken($_BARLNE); ./
            | '|' /. makeToken($_FRET); ./
            | white /. skipToken(); ./

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
