-- APT Lexer (LPG) — words + punctuation; URI assembled in parser
%Options list
%Options fp=AptLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.apt
%options template=LexerTemplateF.gi
%options filter=AptKWLexer.gi
%Define
    $kw_lexer_class /.$AptKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    WSS
    OPTIONS_START
    OPTIONS_END
    OPTION_SEP
    EQ
    COLON
    SLASH
    DOT
    COMMENT_MARK
    DEB
    DEB_SRC
    ARCH
    LANG
    TARGET
    TRUSTED
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
    Token ::= '[' /. makeToken($_OPTIONS_START); ./
            | ']' /. makeToken($_OPTIONS_END); ./
            | ',' /. makeToken($_OPTION_SEP); ./
            | '=' /. makeToken($_EQ); ./
            | ':' /. makeToken($_COLON); ./
            | '/' /. makeToken($_SLASH); ./
            | '.' /. makeToken($_DOT); ./
            | '#' /. makeToken($_COMMENT_MARK); ./
            | DEB_SRC /. makeToken($_DEB_SRC); ./
            | DEB /. makeToken($_DEB); ./
            | identifier /. checkForKeyWord(); ./
            | WSS /. makeToken($_WSS); ./

    DEB_SRC ::= 'd' 'e' 'b' '-' 's' 'r' 'c'
    DEB ::= 'd' 'e' 'b'

    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit
                 | identifier '_'
                 | identifier '-'

    WSS ::= WSChar | WSS WSChar
    WSChar -> Space | HT | FF | LF | CR

    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
%End
