-- WLN Lexer (LPG)
%Options list
%Options fp=WlnLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.wln
%options template=LexerTemplateF.gi
%options filter=WlnKWLexer.gi
%Define
    $kw_lexer_class /.$WlnKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    BROMINE
    CHLORINE
    IODINE
    BENZENE
    TRIPLE
    DOUBLEBOND
    CARBONYL
    CARBONNON
    NITROGEN3PLUS
    CARBOSYCLIC
    IMINO
    NITROGEN4LESS
    OXYGEN
    HETEROCYCLIC
    DIOXO
    CARBON4
    CARBON3
    AMINO
    FLOURINE
    HYDROGEN
    HYDROXYL
    SULFER
    DIGIT
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
    Token ::= 'U' 'U' /. makeToken($_TRIPLE); ./
            | 'E' /. makeToken($_BROMINE); ./
            | 'G' /. makeToken($_CHLORINE); ./
            | 'I' /. makeToken($_IODINE); ./
            | 'R' /. makeToken($_BENZENE); ./
            | 'U' /. makeToken($_DOUBLEBOND); ./
            | 'V' /. makeToken($_CARBONYL); ./
            | 'C' /. makeToken($_CARBONNON); ./
            | 'K' /. makeToken($_NITROGEN3PLUS); ./
            | 'L' /. makeToken($_CARBOSYCLIC); ./
            | 'M' /. makeToken($_IMINO); ./
            | 'N' /. makeToken($_NITROGEN4LESS); ./
            | 'O' /. makeToken($_OXYGEN); ./
            | 'T' /. makeToken($_HETEROCYCLIC); ./
            | 'W' /. makeToken($_DIOXO); ./
            | 'X' /. makeToken($_CARBON4); ./
            | 'Y' /. makeToken($_CARBON3); ./
            | 'Z' /. makeToken($_AMINO); ./
            | 'F' /. makeToken($_FLOURINE); ./
            | 'H' /. makeToken($_HYDROGEN); ./
            | 'Q' /. makeToken($_HYDROXYL); ./
            | 'S' /. makeToken($_SULFER); ./
            | DIGIT /. makeToken($_DIGIT); ./
            | ' ' /. makeToken($_SPACE); ./
            | nl /. skipToken(); ./

    DIGIT -> 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    nl -> LF | CR | nl LF | nl CR
%End
