-- Quake map Lexer (LPG)

%Options list
%Options fp=QuakemapLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.quakemap
%options template=LexerTemplateF.gi
%options filter=QuakemapKWLexer.gi

%Define
    $kw_lexer_class /.$QuakemapKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    TEXT
    NUMBER
    STRING
    LBRACE
    RBRACE
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
    Token ::= '{'       /. makeToken($_LBRACE); ./
            | '}'       /. makeToken($_RBRACE); ./
            | '('        /. makeToken($_LPAREN); ./
            | ')'        /. makeToken($_RPAREN); ./
            | STRING     /. makeToken($_STRING); ./
            | NUMBER     /. makeToken($_NUMBER); ./
            | TEXT       /. makeToken($_TEXT); ./
            | white      /. skipToken(); ./

    -- TEXT: [a-zA-Z] [a-zA-Z0-9_]+
    TEXT ::= LetterAlpha IdCont IdConts
    IdConts -> $empty | IdConts IdCont
    IdCont -> LetterAlpha | Digit | _
    LetterAlpha -> LowerCaseLetter | UpperCaseLetter

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- NUMBER: ('+'|'-')? digits ('.' digits)?
    NUMBER ::= OptSign Digits OptFrac
    OptSign -> $empty | '+' | '-'
    Digits ::= Digit | Digits Digit
    OptFrac -> $empty | '.' Digits

    -- STRING: '"' ('""' | ~'"')* '"'
    STRING ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ | SLBody EscapedQuote
    EscapedQuote ::= '"' '"'
    NotDQ -> LetterAlpha | Digit | SpecialInString | Space | HT | FF | LF | CR | AfterASCII | _
    SpecialInString -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' | '%' | '&'
                     | '^' | ':' | ';' | "'" | '|' | '{' | '}' | '[' | ']' | '?' | ',' | '.'
                     | '<' | '>' | '=' | '#' | '$' | '\'

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
