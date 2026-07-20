-- GTIN Lexer (LPG)
-- Ported from antlr/grammars-v4 gtin/gtin.g4

%Options list
%Options fp=GtinLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.gtin
%options template=LexerTemplateF.gi
%options filter=GtinKWLexer.gi

%Define
    $kw_lexer_class /.$GtinKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    DIGIT_0
    DIGIT_1
    DIGIT_2
    DIGIT_3
    DIGIT_4
    DIGIT_5
    DIGIT_6
    DIGIT_7
    DIGIT_8
    DIGIT_9
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
    Token ::= '0' /. makeToken($_DIGIT_0); ./
            | '1' /. makeToken($_DIGIT_1); ./
            | '2' /. makeToken($_DIGIT_2); ./
            | '3' /. makeToken($_DIGIT_3); ./
            | '4' /. makeToken($_DIGIT_4); ./
            | '5' /. makeToken($_DIGIT_5); ./
            | '6' /. makeToken($_DIGIT_6); ./
            | '7' /. makeToken($_DIGIT_7); ./
            | '8' /. makeToken($_DIGIT_8); ./
            | '9' /. makeToken($_DIGIT_9); ./
            | '-' /. skipToken(); ./
            | white /. skipToken(); ./

    white -> WSChar
           | white WSChar

    WSChar -> Space | LF | CR | HT | FF
%End
