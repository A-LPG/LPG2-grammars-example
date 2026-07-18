-- Iso8601 lexer — per-digit + designators (matches Iso8601Parser.g)

%Options list
%Options fp=Iso8601Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.iso8601
%options template=LexerTemplateF.gi
%options filter=Iso8601KWLexer.gi

%Define
    $kw_lexer_class /.$Iso8601KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    Digit
    Fraction
    T Z W P Y M D H S R
    MINUS PLUS COLON SLASH
    IDENTIFIER
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
    Token ::= digit /. makeToken($_Digit); ./
            | designator
            | fraction /. makeToken($_Fraction); ./
            | HashComment /. skipToken(); ./
            | white /. skipToken(); ./
            | '-' /. makeToken($_MINUS); ./
            | '+' /. makeToken($_PLUS); ./
            | ':' /. makeToken($_COLON); ./
            | '/' /. makeToken($_SLASH); ./

    digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    designator ::= 'T' /. makeToken($_T); ./
           | 't' /. makeToken($_T); ./
           | 'Z' /. makeToken($_Z); ./
           | 'z' /. makeToken($_Z); ./
           | 'W' /. makeToken($_W); ./
           | 'w' /. makeToken($_W); ./
           | 'P' /. makeToken($_P); ./
           | 'p' /. makeToken($_P); ./
           | 'Y' /. makeToken($_Y); ./
           | 'y' /. makeToken($_Y); ./
           | 'M' /. makeToken($_M); ./
           | 'm' /. makeToken($_M); ./
           | 'D' /. makeToken($_D); ./
           | 'd' /. makeToken($_D); ./
           | 'H' /. makeToken($_H); ./
           | 'h' /. makeToken($_H); ./
           | 'S' /. makeToken($_S); ./
           | 's' /. makeToken($_S); ./
           | 'R' /. makeToken($_R); ./
           | 'r' /. makeToken($_R); ./

    fraction ::= '.' Digits
               | ',' Digits
    Digits ::= digit | Digits digit

    HashComment ::= Sharp HashCommentBody
    HashCommentBody -> $empty | HashCommentBody NotNL
    NotNL -> Letter | digit | Space | HT | SpecialNotNL
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
              n | o | p | q | r | s | t | u | v | w | x | y | z |
              A | B | C | D | E | F | G | H | I | J | K | L | M |
              N | O | P | Q | R | S | T | U | V | W | X | Y | Z | _
    SpecialNotNL -> '+' | '-' | '/' | '*' | '(' | ')' | '!' | '@' | ':' | ';' |
                    ',' | '.' | '<' | '>' | '=' | '$'

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
