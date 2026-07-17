-- Telephone Lexer (LPG)
-- Ported from antlr/grammars-v4 telephone/telephone.g4

%Options list
%Options fp=TelephoneLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.telephone
%options template=LexerTemplateF.gi
%options filter=TelephoneKWLexer.gi

%Define
    $kw_lexer_class /.$TelephoneKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    PLUS1
    PLUS
    PREFIX011
    PREFIX010
    DIGIT
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
    Token ::= '+' '1'    /. makeToken($_PLUS1); ./
            | '+'        /. makeToken($_PLUS); ./
            | '0' '1' '1' /. makeToken($_PREFIX011); ./
            | '0' '1' '0' /. makeToken($_PREFIX010); ./
            | DIGIT      /. makeToken($_DIGIT); ./
            | white      /. skipToken(); ./

    DIGIT ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar
           | white WSChar

    WSChar -> Space | LF | CR | HT | FF
%End
