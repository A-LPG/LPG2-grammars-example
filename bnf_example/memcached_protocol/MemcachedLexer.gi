-- MemcachedLexer (LPG)
%Options list
%Options fp=MemcachedLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.memcached_protocol
%options template=LexerTemplateF.gi
%options filter=MemcachedKWLexer.gi
%Define
    $kw_lexer_class /.$MemcachedKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    SET
    ADD
    REPLACE
    APPEND
    PREPEND
    CAS
    GET
    GETS
    DELETE
    INCR
    DECR
    STATS
    ITEMS
    SLABS
    SIZES
    FLUSH_ALL
    VERSION
    VERBOSITY
    QUIT
    NOREPLY
    INTEGER
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
    Token ::= 'f' 'l' 'u' 's' 'h' '_' 'a' 'l' 'l' /. makeToken($_FLUSH_ALL); ./
            | 'r' 'e' 'p' 'l' 'a' 'c' 'e' /. makeToken($_REPLACE); ./
            | 'a' 'p' 'p' 'e' 'n' 'd' /. makeToken($_APPEND); ./
            | 'p' 'r' 'e' 'p' 'e' 'n' 'd' /. makeToken($_PREPEND); ./
            | 'd' 'e' 'l' 'e' 't' 'e' /. makeToken($_DELETE); ./
            | 's' 't' 'a' 't' 's' /. makeToken($_STATS); ./
            | 'i' 't' 'e' 'm' 's' /. makeToken($_ITEMS); ./
            | 's' 'l' 'a' 'b' 's' /. makeToken($_SLABS); ./
            | 's' 'i' 'z' 'e' 's' /. makeToken($_SIZES); ./
            | 'v' 'e' 'r' 's' 'i' 'o' 'n' /. makeToken($_VERSION); ./
            | 'v' 'e' 'r' 'b' 'o' 's' 'i' 't' 'y' /. makeToken($_VERBOSITY); ./
            | 'n' 'o' 'r' 'e' 'p' 'l' 'y' /. makeToken($_NOREPLY); ./
            | 'g' 'e' 't' 's' /. makeToken($_GETS); ./
            | 'q' 'u' 'i' 't' /. makeToken($_QUIT); ./
            | 'i' 'n' 'c' 'r' /. makeToken($_INCR); ./
            | 'd' 'e' 'c' 'r' /. makeToken($_DECR); ./
            | 's' 'e' 't' /. makeToken($_SET); ./
            | 'a' 'd' 'd' /. makeToken($_ADD); ./
            | 'c' 'a' 's' /. makeToken($_CAS); ./
            | 'g' 'e' 't' /. makeToken($_GET); ./
            | INTEGER /. makeToken($_INTEGER); ./
            | identifier /. makeToken($_IDENTIFIER); ./
            | white /. skipToken(); ./

    INTEGER ::= Digit
              | INTEGER Digit

    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit
                 | identifier SpecialId

    SpecialId -> '_' | '-' | '.' | '!' | '#' | '$' | '%' | '&' | '*' | '+' |
                 '/' | '=' | '?' | '@' | '^' | '`' | '|' | '~'

    Letter -> LowerCaseLetter
            | UpperCaseLetter

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
