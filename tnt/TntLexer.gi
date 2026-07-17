-- Tnt Lexer (LPG)
%Options list
%Options fp=TntLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.tnt
%options template=LexerTemplateF.gi
%options filter=TntKWLexer.gi
%Define
    $kw_lexer_class /.$TntKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    ZERO
    SUCCESSOR
    VAR_A
    VAR_B
    VAR_C
    VAR_D
    VAR_E
    FOREVERY
    EXISTS
    PRIME
    PLUS
    STAR
    LPAREN
    RPAREN
    TILDE
    COLON
    EQUAL
    X
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
    Token ::= '0'   /. makeToken($_ZERO); ./
            | 'S'   /. makeToken($_SUCCESSOR); ./
            | 'a'   /. makeToken($_VAR_A); ./
            | 'b'   /. makeToken($_VAR_B); ./
            | 'c'   /. makeToken($_VAR_C); ./
            | 'd'   /. makeToken($_VAR_D); ./
            | 'e'   /. makeToken($_VAR_E); ./
            | 'A'   /. makeToken($_FOREVERY); ./
            | 'E'   /. makeToken($_EXISTS); ./
            | "'"   /. makeToken($_PRIME); ./
            | '+'   /. makeToken($_PLUS); ./
            | '*'   /. makeToken($_STAR); ./
            | '('   /. makeToken($_LPAREN); ./
            | ')'   /. makeToken($_RPAREN); ./
            | '~'   /. makeToken($_TILDE); ./
            | ':'   /. makeToken($_COLON); ./
            | '='   /. makeToken($_EQUAL); ./
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
