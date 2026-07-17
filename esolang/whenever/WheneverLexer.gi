-- WheneverLexer (LPG)
%Options list
%Options fp=WheneverLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.esolang.whenever
%options template=LexerTemplateF.gi
%options filter=WheneverKWLexer.gi
%Define
    $kw_lexer_class /.$WheneverKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    DEFER
    AGAIN
    FORGET
    PRINT
    READ
    COMPARE
    NOT
    MULT_OP
    ADD_OP
    QUOTED_STRING
    NUMBER
    EOL
    HASH
    COMMA
    LPAREN
    RPAREN
    NFUNC
    UFUNC
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

    Token ::= 'd' 'e' 'f' 'e' 'r' /. makeToken($_DEFER); ./
            | 'a' 'g' 'a' 'i' 'n' /. makeToken($_AGAIN); ./
            | 'f' 'o' 'r' 'g' 'e' 't' /. makeToken($_FORGET); ./
            | 'p' 'r' 'i' 'n' 't' /. makeToken($_PRINT); ./
            | 'r' 'e' 'a' 'd' /. makeToken($_READ); ./
            | 'N' /. makeToken($_NFUNC); ./
            | 'U' /. makeToken($_UFUNC); ./
            | '<' '=' /. makeToken($_COMPARE); ./
            | '>' '=' /. makeToken($_COMPARE); ./
            | '=' '=' /. makeToken($_COMPARE); ./
            | '|' '|' /. makeToken($_COMPARE); ./
            | '&' '&' /. makeToken($_COMPARE); ./
            | '<' /. makeToken($_COMPARE); ./
            | '>' /. makeToken($_COMPARE); ./
            | '!' /. makeToken($_NOT); ./
            | '*' /. makeToken($_MULT_OP); ./
            | '/' /. makeToken($_MULT_OP); ./
            | '+' /. makeToken($_ADD_OP); ./
            | '-' /. makeToken($_ADD_OP); ./
            | '#' /. makeToken($_HASH); ./
            | ',' /. makeToken($_COMMA); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | ';' /. skipToken(); ./
            | QUOTED_STRING /. makeToken($_QUOTED_STRING); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | EOL /. makeToken($_EOL); ./
            | white /. skipToken(); ./

    QUOTED_STRING ::= '"' SQBody '"'
    SQBody -> $empty | SQBody NotDQ
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | LeftBrace | RightBrace |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'

    NUMBER ::= Digit
           | NUMBER Digit

    EOL ::= LF | CR LF | CR


    Letter -> LowerCaseLetter
            | UpperCaseLetter
            | _

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> Space | HT | white Space | white HT

%End
