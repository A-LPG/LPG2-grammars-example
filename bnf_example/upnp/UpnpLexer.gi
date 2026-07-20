-- UPnP Lexer (LPG)
%Options list
%Options fp=UpnpLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.upnp
%options template=LexerTemplateF.gi
%options filter=UpnpKWLexer.gi
%Define
    $kw_lexer_class /.$UpnpKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    WCHAR
    QUOTEDSTRING
    ASTERISK
    LPAREN
    RPAREN
    EQ
    NE
    LT
    LE
    GT
    GE
    AND
    OR
    CONTAINS
    DOESNOTCONTAIN
    DERIVEDFROM
    EXISTS
    TRUE
    FALSE
    PROP_UPNP_LONGDESCRIPTION
    PROP_UPNP_EPISODENUMBER
    PROP_UPNP_SERIESTITLE
    PROP_UPNP_CHANNELNAME
    PROP_RES_RESOLUTION
    PROP_DC_DESCRIPTION
    PROP_UPNP_CHANNELNR
    PROP_PV_CAPTUREDATE
    PROP_AT_PROTOCOLINFO
    PROP_PV_AVKEYWORDS
    PROP_UPNP_DIRECTOR
    PROP_RES_DURATION
    PROP_UPNP_ARTIST
    PROP_UPNP_AUTHOR
    PROP_UPNP_RATING
    PROP_DC_CREATOR
    PROP_UPNP_ACTOR
    PROP_UPNP_GENRE
    PROP_UPNP_ALBUM
    PROP_UPNP_CLASS
    PROP_PV_RATING
    PROP_PV_CUSTOM
    PROP_DC_TITLE
    PROP_DC_DATE
    PROP_AT_REFID
    PROP_AT_ID
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
    Token ::= 'u' 'p' 'n' 'p' ':' 'l' 'o' 'n' 'g' 'D' 'e' 's' 'c' 'r' 'i' 'p' 't' 'i' 'o' 'n' /. makeToken($_PROP_UPNP_LONGDESCRIPTION); ./
            | 'u' 'p' 'n' 'p' ':' 'e' 'p' 'i' 's' 'o' 'd' 'e' 'N' 'u' 'm' 'b' 'e' 'r' /. makeToken($_PROP_UPNP_EPISODENUMBER); ./
            | 'u' 'p' 'n' 'p' ':' 's' 'e' 'r' 'i' 'e' 's' 'T' 'i' 't' 'l' 'e' /. makeToken($_PROP_UPNP_SERIESTITLE); ./
            | 'u' 'p' 'n' 'p' ':' 'c' 'h' 'a' 'n' 'n' 'e' 'l' 'N' 'a' 'm' 'e' /. makeToken($_PROP_UPNP_CHANNELNAME); ./
            | 'r' 'e' 's' '@' 'r' 'e' 's' 'o' 'l' 'u' 't' 'i' 'o' 'n' /. makeToken($_PROP_RES_RESOLUTION); ./
            | 'd' 'c' ':' 'd' 'e' 's' 'c' 'r' 'i' 'p' 't' 'i' 'o' 'n' /. makeToken($_PROP_DC_DESCRIPTION); ./
            | 'u' 'p' 'n' 'p' ':' 'c' 'h' 'a' 'n' 'n' 'e' 'l' 'N' 'r' /. makeToken($_PROP_UPNP_CHANNELNR); ./
            | 'p' 'v' ':' 'c' 'a' 'p' 't' 'u' 'r' 'e' 'd' 'a' 't' 'e' /. makeToken($_PROP_PV_CAPTUREDATE); ./
            | '@' 'p' 'r' 'o' 't' 'o' 'c' 'o' 'l' 'I' 'n' 'f' 'o' /. makeToken($_PROP_AT_PROTOCOLINFO); ./
            | 'p' 'v' ':' 'a' 'v' 'K' 'e' 'y' 'w' 'o' 'r' 'd' 's' /. makeToken($_PROP_PV_AVKEYWORDS); ./
            | 'u' 'p' 'n' 'p' ':' 'd' 'i' 'r' 'e' 'c' 't' 'o' 'r' /. makeToken($_PROP_UPNP_DIRECTOR); ./
            | 'r' 'e' 's' '@' 'd' 'u' 'r' 'a' 't' 'i' 'o' 'n' /. makeToken($_PROP_RES_DURATION); ./
            | 'u' 'p' 'n' 'p' ':' 'a' 'r' 't' 'i' 's' 't' /. makeToken($_PROP_UPNP_ARTIST); ./
            | 'u' 'p' 'n' 'p' ':' 'a' 'u' 't' 'h' 'o' 'r' /. makeToken($_PROP_UPNP_AUTHOR); ./
            | 'u' 'p' 'n' 'p' ':' 'r' 'a' 't' 'i' 'n' 'g' /. makeToken($_PROP_UPNP_RATING); ./
            | 'd' 'c' ':' 'c' 'r' 'e' 'a' 't' 'o' 'r' /. makeToken($_PROP_DC_CREATOR); ./
            | 'u' 'p' 'n' 'p' ':' 'a' 'c' 't' 'o' 'r' /. makeToken($_PROP_UPNP_ACTOR); ./
            | 'u' 'p' 'n' 'p' ':' 'g' 'e' 'n' 'r' 'e' /. makeToken($_PROP_UPNP_GENRE); ./
            | 'u' 'p' 'n' 'p' ':' 'a' 'l' 'b' 'u' 'm' /. makeToken($_PROP_UPNP_ALBUM); ./
            | 'u' 'p' 'n' 'p' ':' 'c' 'l' 'a' 's' 's' /. makeToken($_PROP_UPNP_CLASS); ./
            | 'p' 'v' ':' 'r' 'a' 't' 'i' 'n' 'g' /. makeToken($_PROP_PV_RATING); ./
            | 'p' 'v' ':' 'c' 'u' 's' 't' 'o' 'm' /. makeToken($_PROP_PV_CUSTOM); ./
            | 'd' 'c' ':' 't' 'i' 't' 'l' 'e' /. makeToken($_PROP_DC_TITLE); ./
            | 'd' 'c' ':' 'd' 'a' 't' 'e' /. makeToken($_PROP_DC_DATE); ./
            | '@' 'r' 'e' 'f' 'I' 'D' /. makeToken($_PROP_AT_REFID); ./
            | '@' 'i' 'd' /. makeToken($_PROP_AT_ID); ./
            | '!' '=' /. makeToken($_NE); ./
            | '<' '=' /. makeToken($_LE); ./
            | '>' '=' /. makeToken($_GE); ./
            | '=' /. makeToken($_EQ); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | '*' /. makeToken($_ASTERISK); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | QUOTEDSTRING /. makeToken($_QUOTEDSTRING); ./
            | ' ' /. makeToken($_WCHAR); ./
            | HT /. makeToken($_WCHAR); ./
            | identifier /. checkForKeyWord(); ./
            | CR /. skipToken(); ./
            | LF /. skipToken(); ./

    identifier ::= Letter
                 | identifier Letter

    QUOTEDSTRING ::= '"' QSBody '"'
    QSBody -> $empty | QSBody QSChar | QSBody EscQuote
    EscQuote ::= BackSlash DoubleQuote
    QSChar -> Letter | Digit | Dot | Space | HT | FF | AfterASCII
            | '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~'
            | '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}'
            | '[' | ']' | '?' | ',' | '<' | '>' | '=' | '#' | '$' | '_'


    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF

%End
