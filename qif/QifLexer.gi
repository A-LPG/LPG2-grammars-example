-- QIF Lexer (LPG) — aligned to antlr/grammars-v4 qif/qifLexer.g4
%Options list
%Options fp=QifLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.qif
%options template=LexerTemplateF.gi
%options filter=QifKWLexer.gi

%Define
    $kw_lexer_class /.$QifKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    TYPE
    T
    C
    N
    M
    P
    L
    D
    XMARK
    CARET
    DATE
    NUM
    TEXT
    DATED
    TAMOUNT
    NAMOUNT
    MTEXT
    PTEXT
    LB
    RB
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
    Token ::= TypeTag  /. makeToken($_TYPE); ./
            | 'T'      /. makeToken($_T); ./
            | 'C'      /. makeToken($_C); ./
            | 'N'      /. makeToken($_N); ./
            | 'M'      /. makeToken($_M); ./
            | 'P'      /. makeToken($_P); ./
            | 'L'      /. makeToken($_L); ./
            | 'D'      /. makeToken($_D); ./
            | 'X'      /. makeToken($_XMARK); ./
            | 'x'      /. makeToken($_XMARK); ./
            | Star     /. makeToken($_XMARK); ./
            | Caret    /. makeToken($_CARET); ./
            | DatedLine /. makeToken($_DATED); ./
            | TAmountLine /. makeToken($_TAMOUNT); ./
            | NAmountLine /. makeToken($_NAMOUNT); ./
            | MTextLine /. makeToken($_MTEXT); ./
            | PTextLine /. makeToken($_PTEXT); ./
            | DateTok  /. makeToken($_DATE); ./
            | NumTok   /. makeToken($_NUM); ./
            | TextTok  /. makeToken($_TEXT); ./
            | LeftBracket /. makeToken($_LB); ./
            | RightBracket /. makeToken($_RB); ./
            | white    /. skipToken(); ./

    -- ACCNTCATNAME only exists in g4 ACCTCATE mode; line text is always TEXT here.

    TypeTag ::= Exclamation 'T' 'y' 'p' 'e' Colon

    DatedLine ::= 'D' DateTok
    TAmountLine ::= 'T' NumTok
    NAmountLine ::= 'N' NumTok
    MTextLine ::= 'M' TextTok
    PTextLine ::= 'P' TextTok

    DateTok ::= DigitPlus Slash DigitPlus Slash DigitPlus

    NumTok ::= OptMinus DigitPlus OptCommaDigits OptFrac
    OptMinus -> $empty | Minus
    OptCommaDigits -> $empty | Comma DigitPlus
    OptFrac -> $empty | Dot DigitPlus

    TextTok ::= NotNLPlus

    DigitPlus ::= Digit | DigitPlus Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    NotNLPlus ::= NotNLChar | NotNLPlus NotNLChar
    NotNLChar -> Letter | Digit | Space | HT | Slash | Minus | Dot | Comma |
                 Exclamation | Colon | LeftBracket | RightBracket | AfterASCII

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
