-- Scotty Lexer (LPG) — IDENTIFIER/NUMBER for LALR-safe prefix arithmetic
%Options list
%Options fp=ScottyLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.scotty
%options template=LexerTemplateF.gi
%options filter=ScottyKWLexer.gi

%Define
    $kw_lexer_class /.$ScottyKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    NUMBER
    PLUS
    MINUS
    STAR
    SLASH
    LPAREN
    RPAREN
    EQUAL
    FUN
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
    Token ::= '+'              /. makeToken($_PLUS); ./
            | '-'              /. makeToken($_MINUS); ./
            | '*'              /. makeToken($_STAR); ./
            | '/'              /. makeToken($_SLASH); ./
            | '('              /. makeToken($_LPAREN); ./
            | ')'              /. makeToken($_RPAREN); ./
            | '='              /. makeToken($_EQUAL); ./
            | NUMBER           /. makeToken($_NUMBER); ./
            | identifier       /. checkForKeyWord(); ./
            | white            /. skipToken(); ./

    identifier ::= Letter LetterOrDigitStar
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
              n | o | p | q | r | s | t | u | v | w | x | y | z |
              A | B | C | D | E | F | G | H | I | J | K | L | M |
              N | O | P | Q | R | S | T | U | V | W | X | Y | Z | _
    LetterOrDigitStar -> $empty | LetterOrDigitStar LetterOrDigit
    LetterOrDigit -> Letter | Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    NUMBER ::= DigitPlus
    DigitPlus ::= Digit | DigitPlus Digit

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
