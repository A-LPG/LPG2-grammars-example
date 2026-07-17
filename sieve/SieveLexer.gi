-- Sieve Lexer (LPG)
%Options list
%Options fp=SieveLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.sieve
%options template=LexerTemplateF.gi
%options filter=SieveKWLexer.gi
%Define
    $kw_lexer_class /.$SieveKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    NUMBER
    TAG
    QUOTEDSTRING
    SEMI
    COMMA
    LPAREN
    RPAREN
    LBRACE
    RBRACE
    LBRACKET
    RBRACKET
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
    Token ::= ';' /. makeToken($_SEMI); ./
            | ',' /. makeToken($_COMMA); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | TAG /. makeToken($_TAG); ./
            | QUOTEDSTRING /. makeToken($_QUOTEDSTRING); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | identifier /. makeToken($_IDENTIFIER); ./
            | comment /. skipToken(); ./
            | white /. skipToken(); ./

    identifier ::= IdStart
                 | identifier IdChar
    IdStart -> Letter
    IdChar -> Letter | Digit

    TAG ::= ':' identifier

    QUOTEDSTRING ::= '"' QSBody '"'
    QSBody ::= QSChar | QSBody QSChar
    QSChar -> Letter | Digit | SpecialQS | Space | HT | FF | AfterASCII
    SpecialQS -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'

    NUMBER ::= Digits OptQuant
    Digits ::= Digit | Digits Digit
    OptQuant -> $empty | K | M | G | k | m | g

    comment ::= '#' NotNLsOpt
    NotNLsOpt -> $empty | NotNLs
    NotNLs -> NotNL | NotNLs NotNL
    NotNL -> Letter | Digit | SpecialNotNL | Space | HT | FF | AfterASCII
    SpecialNotNL -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\' | '_'


    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF

%End
