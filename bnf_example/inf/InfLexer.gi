-- Inf Lexer (LPG)
%Options list
%Options fp=InfLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.inf
%options template=LexerTemplateF.gi
%options filter=InfKWLexer.gi
%Define
    $kw_lexer_class /.$InfKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    CHARS
    STRING
    LBRACKET
    RBRACKET
    EQUAL
    COMMA
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
    Token ::= '['     /. makeToken($_LBRACKET); ./
            | ']'     /. makeToken($_RBRACKET); ./
            | '='     /. makeToken($_EQUAL); ./
            | ','     /. makeToken($_COMMA); ./
            | EOL     /. makeToken($_EOL); ./
            | STRING  /. makeToken($_STRING); ./
            | CHARS   /. makeToken($_CHARS); ./
            | comment /. skipToken(); ./
            | white   /. skipToken(); ./

    EOL ::= LF | CR LF | CR

    comment ::= ';' CommentBody EOL
    CommentBody -> $empty | CommentBody CommentChar
    CommentChar -> Letter | Digit | SpecialComment | Space | HT | FF | AfterASCII
    SpecialComment -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                      '%' | '&' | '^' | ':' | "'" | '|' | '{' | '}' |
                      '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\' | '"'

    -- CHARS: alnum and selected punctuation (not = , [ ] space newline)
    CHARS ::= CharsChar | CHARS CharsChar
    CharsChar -> Letter | Digit | '.' | '%' | '"' | '\' | '/' | '*' | '@' | '&' | '_' |
                 '{' | '}' | '<' | '>' | '-'

    STRING ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | SpecialInString | Space | HT | FF | AfterASCII
    SpecialInString -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                       '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                       '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\' | '_'

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> Space | HT | FF | white Space | white HT | white FF
%End
