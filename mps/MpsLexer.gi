-- MPS Lexer (LPG)
%Options list
%Options fp=MpsLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.mps
%options template=LexerTemplateF.gi
%options filter=MpsKWLexer.gi
%Define
    $kw_lexer_class /.$MpsKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    NUMERICALVALUE
    KEYWORDMARKER
    STARTMARKER
    ENDMARKER
    NAMEINDICATORCARD
    ROWINDICATORCARD
    COLUMNINDICATORCARD
    RHSINDICATORCARD
    RANGESINDICATORCARD
    BOUNDSINDICATORCARD
    ENDATAINDICATORCARD
    KEYWORDFREE
    BOUND_UP
    BOUND_LO
    BOUND_FX
    BOUND_LI
    BOUND_UI
    BOUND_SC
    BOUND_FR
    BOUND_BV
    BOUND_MI
    BOUND_PL
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
    Token ::= '*' NotNLsOpt /. skipToken(); ./
            | '$' NotNLsOpt /. skipToken(); ./
            | "'" 'M' 'A' 'R' 'K' 'E' 'R' "'" /. makeToken($_KEYWORDMARKER); ./
            | "'" 'I' 'N' 'T' 'O' 'R' 'G' "'" /. makeToken($_STARTMARKER); ./
            | "'" 'I' 'N' 'T' 'E' 'N' 'D' "'" /. makeToken($_ENDMARKER); ./
            | NUMERICALVALUE /. makeToken($_NUMERICALVALUE); ./
            | identifier /. checkForKeyWord(); ./
            | white /. skipToken(); ./

    NotNLsOpt ::= %Empty | NotNLs
    NotNLs ::= NotNL | NotNLs NotNL
    NotNL -> Letter | Digit | Special | Space | HT | FF | AfterASCII | '"' | "'"
    Special -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' | '%' | '&' | '^' |
               ':' | ';' | '|' | '{' | '}' | '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\' | '_'

    NUMERICALVALUE ::= NumStart NumRest
    NumStart -> Digit | '+' | '-' | '.' | ','
    NumRest ::= %Empty | NumRest NumChar
    NumChar -> Digit | '+' | '-' | '.' | ',' | 'D' | 'E' | 'e' | 'd'

    identifier ::= IdStart IdRest
    IdStart -> Letter | '/' | '#' | '@' | '(' | ')'
    IdRest ::= %Empty | IdRest IdChar
    IdChar -> Letter | Digit | '/' | '#' | '@' | '(' | ')' | '.'

    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z | _
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white ::= WSChar | white WSChar
    WSChar -> Space | HT | FF | LF | CR
%End
