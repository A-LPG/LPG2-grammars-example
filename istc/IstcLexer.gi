-- ISTC Lexer (LPG)
-- Ported from antlr/grammars-v4 istc/istc.g4

%Options list
%Options fp=IstcLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.istc
%options template=LexerTemplateF.gi
%options filter=IstcKWLexer.gi

%Define
    $kw_lexer_class /.$IstcKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    ISTC
    CHAR
    SEP
    SPACE
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
    Token ::= 'I' 'S' 'T' 'C' /. makeToken($_ISTC); ./
            | HexDigit        /. makeToken($_CHAR); ./
            | '-'             /. makeToken($_SEP); ./
            | ' '             /. makeToken($_SPACE); ./
            | white           /. skipToken(); ./

    HexDigit -> Digit
              | A | B | C | D | E | F

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- Skip CR/LF/HT only; significant spaces are SPACE tokens
    white -> WSChar
           | white WSChar

    WSChar -> LF | CR | HT | FF
%End
