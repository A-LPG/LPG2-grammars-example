-- Propcalc Lexer (LPG)
-- Ported from antlr/grammars-v4 propcalc/propcalc.g4

%Options list
%Options fp=PropcalcLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.propcalc
%options template=LexerTemplateF.gi
%options filter=PropcalcKWLexer.gi

%Define
    $kw_lexer_class /.$PropcalcKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    LETTER
    AND
    OR
    NOT
    IMPLIES
    THEREFORE
    EQUIV
    LPAREN
    RPAREN
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
    Token ::= '<' '-' '>' /. makeToken($_EQUIV); ./
            | '-' '>'     /. makeToken($_IMPLIES); ./
            | '|' '-'     /. makeToken($_THEREFORE); ./
            | '^'         /. makeToken($_AND); ./
            | 'v'         /. makeToken($_OR); ./
            | '!'         /. makeToken($_NOT); ./
            | '('         /. makeToken($_LPAREN); ./
            | ')'         /. makeToken($_RPAREN); ./
            | Letter      /. makeToken($_LETTER); ./
            | white       /. skipToken(); ./

    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
              n | o | p | q | r | s | t | u | w | x | y | z |
              A | B | C | D | E | F | G | H | I | J | K | L | M |
              N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    white -> WSChar
           | white WSChar

    WSChar -> Space | LF | CR | HT | FF
%End
