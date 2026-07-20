-- Clf Lexer (LPG)
%Options list
%Options fp=ClfLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.clf
%options template=LexerTemplateF.gi
%options filter=ClfKWLexer.gi
%Define
    $kw_lexer_class /.$ClfKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    LITERAL
    IP
    STRING
    DATETIME
    EOL
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
    Token ::= LITERAL  /. makeToken($_LITERAL); ./
            | DATETIME /. makeToken($_DATETIME); ./
            | IP       /. makeToken($_IP); ./
            | STRING   /. makeToken($_STRING); ./
            | EOL      /. makeToken($_EOL); ./
            | white    /. skipToken(); ./

    LITERAL ::= '"' LitBody '"'
    LitBody -> $empty | LitBody NotDQ
    NotDQ -> Letter | Digit | SpecialLit | Space | HT | FF | AfterASCII
    SpecialLit -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                  '%' | '&' | '^' | ':' | ';' | "'" | '|' | LeftBrace | RightBrace |
                  '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\' | '_'

    -- [20/Oct/2012:15:03:25 -0700]
    DATETIME ::= '[' Digits '/' Month '/' Digits ':' Digits ':' Digits ':' Digits Space TzSign Digits ']'
    Month ::= Letter Letter Letter
    TzSign -> '+' | '-'

    IP ::= Digits '.' Digits '.' Digits '.' Digits

    STRING ::= StringChar | STRING StringChar
    StringChar -> Letter | Digit | '(' | ')' | ';' | '.' | '_' | '-'

    Digits ::= Digit | Digits Digit
    EOL ::= LF | CR LF

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> Space | HT | FF | white Space | white HT | white FF
%End
