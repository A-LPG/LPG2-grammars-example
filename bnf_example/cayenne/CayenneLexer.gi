-- Cayenne Lexer (LPG)
%Options list
%Options fp=CayenneLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.cayenne
%options template=LexerTemplateF.gi
%options filter=CayenneKWLexer.gi

%Define
    $kw_lexer_class /.$CayenneKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    LPAREN
    RPAREN
    DCOLON
    ARROW
    BACKSLASH
    BAR
    AT
    HASH
    DOT
    SEMI
    EQUAL
    DATA
    CASE
    OF
    SIG
    STRUCT
    PRIVATE
    PUBLIC
    ABSTRACT
    CONCRETE
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
    Token ::= '('        /. makeToken($_LPAREN); ./
            | ')'        /. makeToken($_RPAREN); ./
            | ':' ':'    /. makeToken($_DCOLON); ./
            | '-' '>'    /. makeToken($_ARROW); ./
            | '\'       /. makeToken($_BACKSLASH); ./
            | '|'        /. makeToken($_BAR); ./
            | '@'        /. makeToken($_AT); ./
            | '#'        /. makeToken($_HASH); ./
            | '.'        /. makeToken($_DOT); ./
            | ';'        /. makeToken($_SEMI); ./
            | '='        /. makeToken($_EQUAL); ./
            | identifier /. checkForKeyWord(); ./
            | white      /. skipToken(); ./

    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit

    Letter -> LowerCaseLetter | UpperCaseLetter | _

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
