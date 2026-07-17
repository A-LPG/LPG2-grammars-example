-- SGF Lexer (LPG)
%Options list
%Options fp=SgfLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.sgf
%options template=LexerTemplateF.gi
%options filter=SgfKWLexer.gi
%Define
    $kw_lexer_class /.$SgfKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    NONE
    TEXT
    LPAREN
    RPAREN
    SEMI
    UCLETTER
    COLOR_W
    COLOR_B
    P_AB
    P_AE
    P_AN
    P_AP
    P_AR
    P_AS
    P_AW
    P_BL
    P_BM
    P_BR
    P_BT
    P_CA
    P_CP
    P_CR
    P_DD
    P_DM
    P_DO
    P_DT
    P_EV
    P_FF
    P_FG
    P_GB
    P_GC
    P_GM
    P_GN
    P_GW
    P_HA
    P_HO
    P_IP
    P_IT
    P_IY
    P_KM
    P_KO
    P_LB
    P_LN
    P_MA
    P_MN
    P_OB
    P_ON
    P_OT
    P_OW
    P_PB
    P_PC
    P_PL
    P_PM
    P_PW
    P_RE
    P_RO
    P_RU
    P_SE
    P_SL
    P_SO
    P_SQ
    P_ST
    P_SU
    P_SZ
    P_TB
    P_TE
    P_TM
    P_TR
    P_TW
    P_UC
    P_US
    P_VW
    P_WL
    P_WR
    P_WT
    P_C
    P_N
    P_V
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
    Token ::= '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | ';' /. makeToken($_SEMI); ./
            | NONE /. makeToken($_NONE); ./
            | TEXT /. makeToken($_TEXT); ./
            | identifier /. checkForKeyWord($_UCLETTER); ./
            | white /. skipToken(); ./

    -- [] empty value
    NONE ::= '[' ']'

    -- [ ... ] value, allow escaped ]
    TEXT ::= '[' TextBody ']'
    TextBody -> $empty | TextBody TextChar | TextBody EscBracket
    EscBracket ::= BackSlash ']'
    TextChar -> Letter | Digit | SpecialText | Space | HT | FF | LF | CR | AfterASCII
    SpecialText -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                   '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                   '[' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'

    identifier ::= UpperCaseLetter
                 | identifier UpperCaseLetter


    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF

%End
