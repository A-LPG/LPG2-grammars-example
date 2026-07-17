-- TCP header Lexer (LPG)
-- Ported from antlr/grammars-v4 tcpheader/tcp.g4
-- BYTE is any octet; WS (space/tab/CR/LF) is skipped like the ANTLR grammar.

%Options list
%Options fp=TcpLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.tcpheader
%options template=LexerTemplateF.gi
%options filter=TcpKWLexer.gi

%Define
    $kw_lexer_class /.$TcpKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    BYTE
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
    Token ::= BYTE_CHAR /. makeToken($_BYTE); ./
            | white     /. skipToken(); ./

    BYTE_CHAR -> CtlCharNotWS | AfterASCII
               | Exclamation | DoubleQuote | Sharp | DollarSign | Percent | Ampersand
               | SingleQuote | LeftParen | RightParen | Star | Plus | Comma | Minus
               | Dot | Slash
               | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
               | Colon | SemiColon | LessThan | Equal | GreaterThan | QuestionMark | AtSign
               | A | B | C | D | E | F | G | H | I | J | K | L | M
               | N | O | P | Q | R | S | T | U | V | W | X | Y | Z
               | LeftBracket | BackSlash | RightBracket | Caret | _
               | BackQuote
               | a | b | c | d | e | f | g | h | i | j | k | l | m
               | n | o | p | q | r | s | t | u | v | w | x | y | z
               | LeftBrace | VerticalBar | RightBrace | Tilde

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
