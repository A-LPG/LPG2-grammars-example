-- Newick Lexer (LPG)

%Options list
%Options fp=NewickLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.newick
%options template=LexerTemplateF.gi
%options filter=NewickKWLexer.gi

%Define
    $kw_lexer_class /.$NewickKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    STRING
    NUMBER
    LPAREN
    RPAREN
    COMMA
    COLON
    SEMI
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
            | ','        /. makeToken($_COMMA); ./
            | ':'        /. makeToken($_COLON); ./
            | ';'        /. makeToken($_SEMI); ./
            | NUMBER     /. makeToken($_NUMBER); ./
            | STRING     /. makeToken($_STRING); ./
            | white      /. skipToken(); ./

    -- STRING: [a-zA-Z][a-zA-Z0-9]*
    STRING ::= LetterAlpha
             | STRING LetterAlpha
             | STRING Digit

    LetterAlpha -> LowerCaseLetter | UpperCaseLetter

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- NUMBER: [0-9]+ ('.' [0-9]+)?
    NUMBER ::= Digits
             | Digits '.' Digits

    Digits ::= Digit
             | Digits Digit

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
