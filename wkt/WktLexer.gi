-- WKT Lexer (LPG)
%Options list
%Options fp=WktLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.wkt
%options template=LexerTemplateF.gi
%options filter=WktKWLexer.gi
%Define
    $kw_lexer_class /.$WktKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    NUMBER
    LPAREN
    RPAREN
    COMMA
    MINUS
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
    Token ::= '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | ',' /. makeToken($_COMMA); ./
            | '-' /. makeToken($_MINUS); ./
            | number /. makeToken($_NUMBER); ./
            | identifier /. checkForKeyWord(); ./
            | white /. skipToken(); ./

    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit

    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
              n | o | p | q | r | s | t | u | v | w | x | y | z |
              A | B | C | D | E | F | G | H | I | J | K | L | M |
              N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    number ::= Digits OptFrac OptExp
    Digits ::= Digit | Digits Digit
    OptFrac -> $empty | '.' Digits
    OptExp -> $empty | Exp
    Exp ::= LetterEe OptSign Digits
    LetterEe -> e | E
    OptSign -> $empty | '+' | '-'

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
