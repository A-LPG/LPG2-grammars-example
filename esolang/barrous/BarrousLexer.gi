-- BarrousLexer (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

%Options list
%Options fp=BarrousLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.esolang.barrous
%options template=LexerTemplateF.gi
%options filter=BarrousKWLexer.gi

%Define
    $kw_lexer_class /.$BarrousKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
        QUESTION
IDENTIFIER
    INT
    GT
    LT
    PLUS
    MINUS
    SEMI
    COLON
    BANG
    EQ
    AT
    SHARP
    QMARK
    AMP
    PCT
    CARET
    PIPE
    HASH
    INDENTIFIER
    PERCENT
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
    Token ::= '>' /. makeToken($_GT); ./
            | '<' /. makeToken($_LT); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | ';' /. makeToken($_SEMI); ./
            | ':' /. makeToken($_COLON); ./
            | '!' /. makeToken($_BANG); ./
            | '=' /. makeToken($_EQ); ./
            | '@' /. makeToken($_AT); ./
            | '#' /. makeToken($_HASH); ./
            | '?' /. makeToken($_QUESTION); ./
            | '&' /. makeToken($_AMP); ./
            | '%' /. makeToken($_PERCENT); ./
            | '^' /. makeToken($_CARET); ./
            | '|' /. makeToken($_PIPE); ./
            | INT /. makeToken($_INT); ./
            | identifier /. makeToken($_INDENTIFIER); ./
            | white /. skipToken(); ./

    identifier ::= Letter
                 | identifier Letter


    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9


    INT ::= Digit
          | INT Digit

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
