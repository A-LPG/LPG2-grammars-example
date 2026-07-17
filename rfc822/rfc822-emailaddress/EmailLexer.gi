-- Email address Lexer (LPG)
%Options list
%Options fp=EmailLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.rfc822.rfc822_emailaddress
%options template=LexerTemplateF.gi
%options filter=EmailKWLexer.gi
%Define
    $kw_lexer_class /.$EmailKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    ATOM
    QUOTEDSTRING
    AT
    DOT
    LT
    GT
    COLON
    SEMI
    COMMA
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
    Token ::= '@' /. makeToken($_AT); ./
            | '.' /. makeToken($_DOT); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | ':' /. makeToken($_COLON); ./
            | ';' /. makeToken($_SEMI); ./
            | ',' /. makeToken($_COMMA); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | QUOTEDSTRING /. makeToken($_QUOTEDSTRING); ./
            | ATOM /. makeToken($_ATOM); ./
            | white /. skipToken(); ./

    ATOM ::= AtomChar
           | ATOM AtomChar

    AtomChar -> Letter | Digit | '+' | '-' | '_'

    QUOTEDSTRING ::= '"' QSBody '"'
    QSBody -> $empty | QSBody QSChar
    QSChar -> Letter | Digit | SpecialQS | Space | HT | FF | AfterASCII
    SpecialQS -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
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
