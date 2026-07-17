-- Sexpression Lexer (LPG)
%Options list
%Options fp=SexpressionLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.sexpression
%options template=LexerTemplateF.gi
%options filter=SexpressionKWLexer.gi

%Define
    $kw_lexer_class /.$SexpressionKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    STRING
    SYMBOL
    NUMBER
    LPAREN
    RPAREN
    DOT
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
    Token ::= '('        /. makeToken($_LPAREN); ./
            | ')'        /. makeToken($_RPAREN); ./
            | '.'        /. makeToken($_DOT); ./
            | STRING     /. makeToken($_STRING); ./
            | NUMBER     /. makeToken($_NUMBER); ./
            | SYMBOL     /. makeToken($_SYMBOL); ./
            | white      /. skipToken(); ./

    SYMBOL ::= SymbolStart
             | SYMBOL SymbolStart
             | SYMBOL Digit

    SymbolStart -> LowerCaseLetter | UpperCaseLetter
                 | '+' | '-' | '*' | '/'

    NUMBER ::= OptSign Digits OptFrac
    OptSign -> $empty | '+' | '-'
    Digits ::= Digit | Digits Digit
    OptFrac -> $empty | '.' Digits

    STRING ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> LowerCaseLetter | UpperCaseLetter | Digit | SpecialNotDQ | Space | HT | FF | EscapeSeq
    EscapeSeq ::= '\' EscapeAny
    EscapeAny -> LowerCaseLetter | UpperCaseLetter | Digit | SpecialNotDQ | Space | '"' | '\'
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
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
