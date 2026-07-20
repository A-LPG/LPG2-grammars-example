-- Robotwars Lexer (LPG)
%Options list
%Options fp=RobotwarsLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.robotwars
%options template=LexerTemplateF.gi
%options filter=RobotwarsKWLexer.gi
%Define
    $kw_lexer_class /.$RobotwarsKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    ID
    NUMBER
    COMMENT
    EOL
    DOT
    COMMA
    PLUS
    MINUS
    STAR
    SLASH
    LT
    GT
    EQ
    HASH
    R_A
    R_B
    R_C
    R_D
    R_E
    R_F
    R_G
    R_H
    R_I
    R_J
    R_K
    R_L
    R_M
    R_N
    R_O
    R_P
    R_Q
    R_R
    R_S
    R_T
    R_U
    R_V
    R_W
    R_X
    R_Y
    R_Z
    R_SPEEDX
    R_SPEEDY
    R_RANDOM
    R_DAMAGE
    R_RADAR
    R_INDEX
    R_SHOT
    R_DATA
    R_AIM
    GOSUB
    GOTO
    ENDSUB
    TO
    IF
    R_SPEEDX
    R_SPEEDY
    R_RANDOM
    R_DAMAGE
    R_RADAR
    R_INDEX
    R_SHOT
    R_DATA
    R_AIM
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
    Token ::= ';' NotNLsOpt /. makeToken($_COMMENT); ./
            | '.' /. makeToken($_DOT); ./
            | ',' /. makeToken($_COMMA); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_STAR); ./
            | '/' /. makeToken($_SLASH); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | '=' /. makeToken($_EQ); ./
            | '#' /. makeToken($_HASH); ./
            | EOL /. makeToken($_EOL); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | identifier /. checkForKeyWord($_ID); ./
            | 'A' /. makeToken($_R_A); ./
            | 'B' /. makeToken($_R_B); ./
            | 'C' /. makeToken($_R_C); ./
            | 'D' /. makeToken($_R_D); ./
            | 'E' /. makeToken($_R_E); ./
            | 'F' /. makeToken($_R_F); ./
            | 'G' /. makeToken($_R_G); ./
            | 'H' /. makeToken($_R_H); ./
            | 'I' /. makeToken($_R_I); ./
            | 'J' /. makeToken($_R_J); ./
            | 'K' /. makeToken($_R_K); ./
            | 'L' /. makeToken($_R_L); ./
            | 'M' /. makeToken($_R_M); ./
            | 'N' /. makeToken($_R_N); ./
            | 'O' /. makeToken($_R_O); ./
            | 'P' /. makeToken($_R_P); ./
            | 'Q' /. makeToken($_R_Q); ./
            | 'R' /. makeToken($_R_R); ./
            | 'S' /. makeToken($_R_S); ./
            | 'T' /. makeToken($_R_T); ./
            | 'U' /. makeToken($_R_U); ./
            | 'V' /. makeToken($_R_V); ./
            | 'W' /. makeToken($_R_W); ./
            | 'X' /. makeToken($_R_X); ./
            | 'Y' /. makeToken($_R_Y); ./
            | 'Z' /. makeToken($_R_Z); ./
            | white /. skipToken(); ./

    NotNLsOpt ::= %Empty | NotNLs
    NotNLs ::= NotNL | NotNLs NotNL
    NotNL -> Letter | Digit | Special | Space | HT | FF | AfterASCII | '"' | "'"
    Special -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' | '%' | '&' | '^' | ':' | ';' |
               '|' | '{' | '}' | '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\' | '_'

    EOL ::= LF | CR LF | CR
    NUMBER ::= Digit | NUMBER Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- labels / keywords / multi-char registers: 2+ alphanumerics
    identifier ::= Letter LetterOrDigit More
    More ::= %Empty | More LetterOrDigit
    LetterOrDigit -> Letter | Digit
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    white ::= Space | HT | FF | white Space | white HT | white FF
%End
