-- WKT CRS v1 Lexer (LPG)
%Options list
%Options fp=WktCrsV1Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.wkt_crs_v1
%options template=LexerTemplateF.gi
%options filter=WktCrsV1KWLexer.gi
%Define
    $kw_lexer_class /.$WktCrsV1KWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    NUMBER
    TEXT
    PKEY
    COMMENT_LINE
    COMMA
    LPAR
    RPAR
    EQ
    KW_COMPD_CS
    KW_PROJCS
    KW_GEOCCS
    KW_GEOGCS
    KW_VERT_CS
    KW_LOCAL_CS
    KW_DATUM
    KW_VERT_DATUM
    KW_LOCAL_DATUM
    KW_SPHEROID
    KW_TOWGS84
    KW_AUTHORITY
    KW_PRIMEM
    KW_UNIT
    KW_AXIS
    KW_PROJECTION
    KW_PARAMETER
    KW_EAST
    KW_WEST
    KW_NORTH
    KW_SOUTH
    KW_NORTH_EAST
    KW_NORTH_WEST
    KW_UP
    KW_DOWN
    KW_GEOCENTRIC_X
    KW_GEOCENTRIC_Y
    KW_GEOCENTRIC_Z
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
    Token ::= '#' NotNLsOpt /. makeToken($_COMMENT_LINE); ./
            | ',' /. makeToken($_COMMA); ./
            | '[' /. makeToken($_LPAR); ./
            | '(' /. makeToken($_LPAR); ./
            | ']' /. makeToken($_RPAR); ./
            | ')' /. makeToken($_RPAR); ./
            | '=' /. makeToken($_EQ); ./
            | TEXT /. makeToken($_TEXT); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | 'G' 'E' 'O' 'C' 'E' 'N' 'T' 'R' 'I' 'C' '_' 'X' /. makeToken($_KW_GEOCENTRIC_X); ./
            | 'G' 'E' 'O' 'C' 'E' 'N' 'T' 'R' 'I' 'C' '_' 'Y' /. makeToken($_KW_GEOCENTRIC_Y); ./
            | 'G' 'E' 'O' 'C' 'E' 'N' 'T' 'R' 'I' 'C' '_' 'Z' /. makeToken($_KW_GEOCENTRIC_Z); ./
            | 'L' 'O' 'C' 'A' 'L' '_' 'D' 'A' 'T' 'U' 'M' /. makeToken($_KW_LOCAL_DATUM); ./
            | 'N' 'O' 'R' 'T' 'H' '_' 'E' 'A' 'S' 'T' /. makeToken($_KW_NORTH_EAST); ./
            | 'N' 'O' 'R' 'T' 'H' '_' 'W' 'E' 'S' 'T' /. makeToken($_KW_NORTH_WEST); ./
            | 'P' 'R' 'O' 'J' 'E' 'C' 'T' 'I' 'O' 'N' /. makeToken($_KW_PROJECTION); ./
            | 'V' 'E' 'R' 'T' '_' 'D' 'A' 'T' 'U' 'M' /. makeToken($_KW_VERT_DATUM); ./
            | 'A' 'U' 'T' 'H' 'O' 'R' 'I' 'T' 'Y' /. makeToken($_KW_AUTHORITY); ./
            | 'P' 'A' 'R' 'A' 'M' 'E' 'T' 'E' 'R' /. makeToken($_KW_PARAMETER); ./
            | 'C' 'O' 'M' 'P' 'D' '_' 'C' 'S' /. makeToken($_KW_COMPD_CS); ./
            | 'L' 'O' 'C' 'A' 'L' '_' 'C' 'S' /. makeToken($_KW_LOCAL_CS); ./
            | 'S' 'P' 'H' 'E' 'R' 'O' 'I' 'D' /. makeToken($_KW_SPHEROID); ./
            | 'T' 'O' 'W' 'G' 'S' '8' '4' /. makeToken($_KW_TOWGS84); ./
            | 'V' 'E' 'R' 'T' '_' 'C' 'S' /. makeToken($_KW_VERT_CS); ./
            | 'G' 'E' 'O' 'C' 'C' 'S' /. makeToken($_KW_GEOCCS); ./
            | 'G' 'E' 'O' 'G' 'C' 'S' /. makeToken($_KW_GEOGCS); ./
            | 'P' 'R' 'I' 'M' 'E' 'M' /. makeToken($_KW_PRIMEM); ./
            | 'P' 'R' 'O' 'J' 'C' 'S' /. makeToken($_KW_PROJCS); ./
            | 'D' 'A' 'T' 'U' 'M' /. makeToken($_KW_DATUM); ./
            | 'N' 'O' 'R' 'T' 'H' /. makeToken($_KW_NORTH); ./
            | 'S' 'O' 'U' 'T' 'H' /. makeToken($_KW_SOUTH); ./
            | 'A' 'X' 'I' 'S' /. makeToken($_KW_AXIS); ./
            | 'D' 'O' 'W' 'N' /. makeToken($_KW_DOWN); ./
            | 'E' 'A' 'S' 'T' /. makeToken($_KW_EAST); ./
            | 'U' 'N' 'I' 'T' /. makeToken($_KW_UNIT); ./
            | 'W' 'E' 'S' 'T' /. makeToken($_KW_WEST); ./
            | 'U' 'P' /. makeToken($_KW_UP); ./
            | PKEY /. makeToken($_PKEY); ./
            | white /. skipToken(); ./

    NotNLsOpt ::= %Empty | NotNLs
    NotNLs ::= NotNL | NotNLs NotNL
    NotNL -> Letter | Digit | Special | Space | HT | FF | AfterASCII | '"' | "'"
    Special -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' | '%' | '&' | '^' | ':' | ';' |
               '|' | '{' | '}' | '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '$' | '\' | '_'

    TEXT ::= '"' TQBody '"'
    TQBody ::= %Empty | TQBody TQChar
    TQChar ::= '"' '"' | NotDQ
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | AfterASCII | "'"
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' | '%' | '&' | '^' | ':' | ';' |
                    '|' | '{' | '}' | '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\' | '_'

    NUMBER ::= opt_sign Digits opt_frac opt_exp
    opt_sign ::= %Empty | '+' | '-'
    Digits ::= Digit | Digits Digit
    opt_frac ::= %Empty | '.' Digits
    opt_exp ::= %Empty | Exp
    Exp ::= 'E' opt_sign Digits | 'e' opt_sign Digits

    PKEY ::= Upper PKeyRest
    PKeyRest ::= PKeyChar | PKeyRest PKeyChar
    PKeyChar -> Upper | Digit
    Upper -> A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z | _
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    white ::= Space | HT | FF | LF | CR | white Space | white HT | white FF | white LF | white CR
%End
