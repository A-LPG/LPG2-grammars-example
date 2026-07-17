-- RPN Lexer (LPG)
%Options list
%Options fp=RpnLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.rpn
%options template=LexerTemplateF.gi
%options filter=RpnKWLexer.gi
%Define
    $kw_lexer_class /.$RpnKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    SCIENTIFIC_NUMBER
    VARIABLE
    POW
    PLUS
    MINUS
    TIMES
    DIV
    COS
    SIN
    TAN
    ACOS
    ASIN
    ATAN
    LN
    LOG
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
    Token ::= '^' /. makeToken($_POW); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_TIMES); ./
            | '/' /. makeToken($_DIV); ./
            | SCIENTIFIC_NUMBER /. makeToken($_SCIENTIFIC_NUMBER); ./
            | identifier /. checkForKeyWord($_VARIABLE); ./
            | white /. skipToken(); ./

    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit

    SCIENTIFIC_NUMBER ::= Digits OptFrac OptExp
                       | '.' Digits OptExp

    Digits ::= Digit | Digits Digit
    OptFrac -> $empty | '.' Digits
    OptExp -> $empty | LetterEe OptSign Digits
    LetterEe -> e | E
    OptSign -> $empty | '+' | '-'


    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF

%End
