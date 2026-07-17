-- Roman numerals Lexer (LPG)
%Options list
%Options fp=RomanLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.romannumerals
%options template=LexerTemplateF.gi
%options filter=RomanKWLexer.gi
%Define
    $kw_lexer_class /.$RomanKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    M
    CM
    CD
    D
    CCC
    CC
    C
    XC
    XL
    L
    XXX
    XX
    X
    IX
    IV
    V
    III
    II
    I
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
    Token ::= 'M' /. makeToken($_M); ./
            | 'C' 'M' /. makeToken($_CM); ./
            | 'C' 'D' /. makeToken($_CD); ./
            | 'D' /. makeToken($_D); ./
            | 'C' 'C' 'C' /. makeToken($_CCC); ./
            | 'C' 'C' /. makeToken($_CC); ./
            | 'C' /. makeToken($_C); ./
            | 'X' 'C' /. makeToken($_XC); ./
            | 'X' 'L' /. makeToken($_XL); ./
            | 'L' /. makeToken($_L); ./
            | 'X' 'X' 'X' /. makeToken($_XXX); ./
            | 'X' 'X' /. makeToken($_XX); ./
            | 'X' /. makeToken($_X); ./
            | 'I' 'X' /. makeToken($_IX); ./
            | 'I' 'V' /. makeToken($_IV); ./
            | 'V' /. makeToken($_V); ./
            | 'I' 'I' 'I' /. makeToken($_III); ./
            | 'I' 'I' /. makeToken($_II); ./
            | 'I' /. makeToken($_I); ./
            | white /. skipToken(); ./

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF

%End
