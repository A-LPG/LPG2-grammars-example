-- PCRE character-level lexer (LPG) — matches PcreParser letter/digit/punct terminals.
%Options list
%Options fp=PcreLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.pcre
%options template=LexerTemplateF.gi
%options filter=PcreKWLexer.gi

%Define
    $kw_lexer_class /.$PcreKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
    D0 D1 D2 D3 D4 D5 D6 D7 D8 D9
    LPAREN RPAREN LBRACE RBRACE LBRACKET RBRACKET
    LT GT PIPE QUESTION STAR PLUS
    DOT COMMA COLON SEMI EQ MINUS
    CARET DOLLAR HASH BACKSLASH
    AMP BANG SQUOTE UNDERSCORE OTHER
    OP_94308 OP_85042
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
    Token ::= '[' ':' /. makeToken($_OP_94308); ./
            | ':' ']' /. makeToken($_OP_85042); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | '|' /. makeToken($_PIPE); ./
            | '?' /. makeToken($_QUESTION); ./
            | '*' /. makeToken($_STAR); ./
            | '+' /. makeToken($_PLUS); ./
            | '.' /. makeToken($_DOT); ./
            | ',' /. makeToken($_COMMA); ./
            | ':' /. makeToken($_COLON); ./
            | ';' /. makeToken($_SEMI); ./
            | '=' /. makeToken($_EQ); ./
            | '-' /. makeToken($_MINUS); ./
            | '^' /. makeToken($_CARET); ./
            | '$' /. makeToken($_DOLLAR); ./
            | '#' /. makeToken($_HASH); ./
            | '&' /. makeToken($_AMP); ./
            | '!' /. makeToken($_BANG); ./
            | "'" /. makeToken($_SQUOTE); ./
            | '_' /. makeToken($_UNDERSCORE); ./
            | BackSlash /. makeToken($_BACKSLASH); ./
            | 'A' /. makeToken($_A); ./
            | 'B' /. makeToken($_B); ./
            | 'C' /. makeToken($_C); ./
            | 'D' /. makeToken($_D); ./
            | 'E' /. makeToken($_E); ./
            | 'F' /. makeToken($_F); ./
            | 'G' /. makeToken($_G); ./
            | 'H' /. makeToken($_H); ./
            | 'I' /. makeToken($_I); ./
            | 'J' /. makeToken($_J); ./
            | 'K' /. makeToken($_K); ./
            | 'L' /. makeToken($_L); ./
            | 'M' /. makeToken($_M); ./
            | 'N' /. makeToken($_N); ./
            | 'O' /. makeToken($_O); ./
            | 'P' /. makeToken($_P); ./
            | 'Q' /. makeToken($_Q); ./
            | 'R' /. makeToken($_R); ./
            | 'S' /. makeToken($_S); ./
            | 'T' /. makeToken($_T); ./
            | 'U' /. makeToken($_U); ./
            | 'V' /. makeToken($_V); ./
            | 'W' /. makeToken($_W); ./
            | 'X' /. makeToken($_X); ./
            | 'Y' /. makeToken($_Y); ./
            | 'Z' /. makeToken($_Z); ./
            | 'a' /. makeToken($_A); ./
            | 'b' /. makeToken($_B); ./
            | 'c' /. makeToken($_C); ./
            | 'd' /. makeToken($_D); ./
            | 'e' /. makeToken($_E); ./
            | 'f' /. makeToken($_F); ./
            | 'g' /. makeToken($_G); ./
            | 'h' /. makeToken($_H); ./
            | 'i' /. makeToken($_I); ./
            | 'j' /. makeToken($_J); ./
            | 'k' /. makeToken($_K); ./
            | 'l' /. makeToken($_L); ./
            | 'm' /. makeToken($_M); ./
            | 'n' /. makeToken($_N); ./
            | 'o' /. makeToken($_O); ./
            | 'p' /. makeToken($_P); ./
            | 'q' /. makeToken($_Q); ./
            | 'r' /. makeToken($_R); ./
            | 's' /. makeToken($_S); ./
            | 't' /. makeToken($_T); ./
            | 'u' /. makeToken($_U); ./
            | 'v' /. makeToken($_V); ./
            | 'w' /. makeToken($_W); ./
            | 'x' /. makeToken($_X); ./
            | 'y' /. makeToken($_Y); ./
            | 'z' /. makeToken($_Z); ./
            | '0' /. makeToken($_D0); ./
            | '1' /. makeToken($_D1); ./
            | '2' /. makeToken($_D2); ./
            | '3' /. makeToken($_D3); ./
            | '4' /. makeToken($_D4); ./
            | '5' /. makeToken($_D5); ./
            | '6' /. makeToken($_D6); ./
            | '7' /. makeToken($_D7); ./
            | '8' /. makeToken($_D8); ./
            | '9' /. makeToken($_D9); ./
            | AfterASCII /. makeToken($_OTHER); ./
            | white /. skipToken(); ./

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
