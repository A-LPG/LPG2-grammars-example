-- DOT Lexer (LPG)
%Options list
%Options fp=DotLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.dot
%options template=LexerTemplateF.gi
%options filter=DotKWLexer.gi
%Define
    $kw_lexer_class /.$DotKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER ID NUMBER STRING HTML_STRING
    ARROW DASH LBRACE RBRACE LBRACKET RBRACKET COLON SEMI COMMA EQ
    STRICT GRAPH DIGRAPH NODE EDGE SUBGRAPH
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
    Token ::= ARROW /. makeToken($_ARROW); ./
            | DASH /. makeToken($_DASH); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | ':' /. makeToken($_COLON); ./
            | ';' /. makeToken($_SEMI); ./
            | ',' /. makeToken($_COMMA); ./
            | '=' /. makeToken($_EQ); ./
            | STRING /. makeToken($_STRING); ./
            | HTML_STRING /. makeToken($_HTML_STRING); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | identifier /. checkForKeyWord(); ./
            | comment /. skipToken(); ./
            | line_comment /. skipToken(); ./
            | preproc /. skipToken(); ./
            | white /. skipToken(); ./

    ARROW ::= '-' '>'
    DASH ::= '-' '-'

    identifier ::= Letter | identifier Letter | identifier Digit | identifier '_'
    NUMBER ::= OptMinus NumBody
    OptMinus -> $empty | '-'
    NumBody ::= Digits OptFrac | '.' Digits
    Digits ::= Digit | Digits Digit
    OptFrac -> $empty | '.' DigitsOpt
    DigitsOpt -> $empty | Digits

    STRING ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ | SLBody Escape
    Escape ::= '\' EscapeAny
    EscapeAny -> Letter | Digit | Special | '"' | '\' | Space | '/'
    NotDQ -> Letter | Digit | Special | Space | HT | FF | AfterASCII | '_'
    Special -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' | '%' | '&' | '^' |
               ':' | ';' | "'" | '|' | '{' | '}' | '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$'

    HTML_STRING ::= '<' HtmlBody '>'
    HtmlBody -> $empty | HtmlBody HtmlChar
    HtmlChar -> Letter | Digit | Special | Space | HT | FF | LF | CR | AfterASCII | '_' | '"' | "'"

    comment ::= '/' '*' CommentBody '*' '/'
    CommentBody -> $empty | CommentBody CommentChar
    CommentChar -> Letter | Digit | Special | Space | HT | FF | LF | CR | AfterASCII | '_' | '"' | "'" | '/'

    line_comment ::= '/' '/' LineBody
    LineBody -> $empty | LineBody LineChar
    LineChar -> Letter | Digit | Special | Space | HT | FF | AfterASCII | '_' | '"' | "'"

    preproc ::= '#' LineBody

    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
