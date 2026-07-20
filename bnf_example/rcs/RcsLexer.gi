-- RCS Lexer (LPG)
%Options list
%Options fp=RcsLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.rcs
%options template=LexerTemplateF.gi
%options filter=RcsKWLexer.gi
%Define
    $kw_lexer_class /.$RcsKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    REVISION
    STRING
    SEMI
    COLON
    LITERAL_HEAD
    LITERAL_BRANCH
    LITERAL_ACCESS
    LITERAL_SYMBOLS
    LITERAL_LOCKS
    LITERAL_STRICT
    LITERAL_COMMENT
    LITERAL_EXPAND
    LITERAL_DATE
    LITERAL_AUTHOR
    LITERAL_STATE
    LITERAL_BRANCHES
    LITERAL_NEXT
    LITERAL_DESC
    LITERAL_LOG
    LITERAL_TEXT
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
    Token ::= STRING /. makeToken($_STRING); ./
            | ';' /. makeToken($_SEMI); ./
            | ':' /. makeToken($_COLON); ./
            | REVISION /. makeToken($_REVISION); ./
            | identifier /. checkForKeyWord(); ./
            | white /. skipToken(); ./

    STRING ::= '@' StringBody '@'
    StringBody ::= %Empty | StringBody StringChar
    StringChar ::= '@' '@' | NotAt
    NotAt -> Letter | Digit | SpecialNotAt | Space | HT | FF | LF | CR | AfterASCII | '"' | "'"
    SpecialNotAt -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '`' | '~' | '%' | '&' | '^' | ':' | ';' |
                    '|' | '{' | '}' | '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\' | '_'

    REVISION ::= INT rev_tail
    rev_tail ::= %Empty | rev_tail '.' INT
    INT ::= Digit | INT Digit

    identifier ::= IdChar | identifier IdChar
    IdChar -> Letter | Digit | SpecialId
    SpecialId -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '`' | '~' | '%' | '&' | '^' |
                 '|' | '{' | '}' | '[' | ']' | '?' | '<' | '>' | '=' | '#' | '\' | '_' | "'" | '"'

    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z | _
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white ::= WSChar | white WSChar
    WSChar -> Space | HT | FF | LF | CR
%End
