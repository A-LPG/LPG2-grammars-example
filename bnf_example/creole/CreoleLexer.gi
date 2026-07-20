-- Creole Lexer (LPG) — marker tokens + TEXT runs
%Options list
%Options fp=CreoleLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.creole
%options template=LexerTemplateF.gi
%options filter=CreoleKWLexer.gi
%Define
    $kw_lexer_class /.$CreoleKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER TEXT NOWIKI
    BOLD HLINE LBRACKET RBRACKET LBRACE RBRACE
    STAR HASH EQ PIPE PIPEEQ RSLASH DBLSLASH NL
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
    Token ::= NOWIKI /. makeToken($_NOWIKI); ./
            | BOLD /. makeToken($_BOLD); ./
            | HLINE /. makeToken($_HLINE); ./
            | LBRACKET /. makeToken($_LBRACKET); ./
            | RBRACKET /. makeToken($_RBRACKET); ./
            | LBRACE /. makeToken($_LBRACE); ./
            | RBRACE /. makeToken($_RBRACE); ./
            | PIPEEQ /. makeToken($_PIPEEQ); ./
            | PIPE /. makeToken($_PIPE); ./
            | DBLSLASH /. makeToken($_DBLSLASH); ./
            | RSLASH /. makeToken($_RSLASH); ./
            | STAR /. makeToken($_STAR); ./
            | HASH /. makeToken($_HASH); ./
            | EQ /. makeToken($_EQ); ./
            | NL /. makeToken($_NL); ./
            | TEXT /. makeToken($_TEXT); ./

    NOWIKI ::= '{' '{' '{' NowikiBody '}' '}' '}'
    NowikiBody -> $empty | NowikiBody NowikiChar
    NowikiChar -> Letter | Digit | SpecialText | Space | HT | FF | LF | CR | AfterASCII | '_'
                | '*' | '#' | '=' | '/' | '|' | '[' | ']' | '"' | "'" | '{' | '}'

    BOLD ::= '*' '*'
    HLINE ::= '-' '-' '-' '-'
    LBRACKET ::= '[' '['
    RBRACKET ::= ']' ']'
    LBRACE ::= '{' '{'
    RBRACE ::= '}' '}'
    PIPEEQ ::= '|' '='
    PIPE ::= '|'
    DBLSLASH ::= BackSlash BackSlash
    RSLASH ::= '/'
    STAR ::= '*'
    HASH ::= '#'
    EQ ::= '='
    NL ::= LF | CR LF | CR

    TEXT ::= TextChar | TEXT TextChar
    TextChar -> Letter | Digit | SpecialText | Space | HT | FF | AfterASCII | '_'
    SpecialText -> '.' | ';' | ':' | ',' | '(' | ')' | '-' | "'" | '~' | '"' | '+' | '!' | '@'
                 | '%' | '&' | '^' | '?' | '`' | '$' | '<' | '>' 

    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
%End
