-- BEEP Lexer (LPG)
%Options list
%Options fp=BeepLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.rfc3080
%options template=LexerTemplateF.gi
%options filter=BeepKWLexer.gi
%Define
    $kw_lexer_class /.$BeepKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    NUMBER
    SP
    DOT
    STAR
    PAYLOAD_TRAILER
    MSG
    RPY
    ERR
    ANS
    NUL
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
    Token ::= ' ' /. makeToken($_SP); ./
            | '.' /. makeToken($_DOT); ./
            | '*' /. makeToken($_STAR); ./
            | PAYLOAD_TRAILER /. makeToken($_PAYLOAD_TRAILER); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | identifier /. checkForKeyWord(); ./
            | HT /. skipToken(); ./
            | LF /. skipToken(); ./
            | CR /. skipToken(); ./

    identifier ::= Letter
                 | identifier Letter

    NUMBER ::= Digit | NUMBER Digit

    PAYLOAD_TRAILER ::= CRLF PayloadBody E N D
    CRLF ::= LF | CR | CR LF | LF CR

    PayloadBody -> $empty
                 | PayloadBody PayloadChar

    PayloadChar -> Letter | Digit | SpecialPay | Space | HT | FF | AfterASCII | LF | CR

    SpecialPay -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'


    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF

%End
