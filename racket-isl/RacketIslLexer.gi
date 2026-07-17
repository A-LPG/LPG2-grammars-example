-- Racket-like Lexer (LPG)
-- Ported from antlr/grammars-v4 racket-bsl / racket-isl

%Options list
%Options fp=RacketIslLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.racket_isl
%options template=LexerTemplateF.gi
%options filter=RacketIslKWLexer.gi

%Define
    $kw_lexer_class /.$RacketIslKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    NAME
    NUMBER
    STRING
    BOOLEAN
    SYMBOL
    EMPTY_LIST
    LPAREN
    RPAREN
    LBRACKET
    RBRACKET
    DEFINE
    DEFINE_STRUCT
    LAMBDA
    COND
    ELSE
    IF
    AND
    OR
    REQUIRE
    CHECK_EXPECT
    BEGIN
    LOCAL
    LET
    QUOTE
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
    Token ::= langLine /. skipToken(); ./
            | comment /. skipToken(); ./
            | emptyList /. makeToken($_EMPTY_LIST); ./
            | boolean /. makeToken($_BOOLEAN); ./
            | string /. makeToken($_STRING); ./
            | number /. makeToken($_NUMBER); ./
            | symbol /. makeToken($_SYMBOL); ./
            | 'd' 'e' 'f' 'i' 'n' 'e' '-' 's' 't' 'r' 'u' 'c' 't' /. makeToken($_DEFINE_STRUCT); ./
            | 'c' 'h' 'e' 'c' 'k' '-' 'e' 'x' 'p' 'e' 'c' 't' /. makeToken($_CHECK_EXPECT); ./
            | 'd' 'e' 'f' 'i' 'n' 'e' /. makeToken($_DEFINE); ./
            | 'l' 'a' 'm' 'b' 'd' 'a' /. makeToken($_LAMBDA); ./
            | 'c' 'o' 'n' 'd' /. makeToken($_COND); ./
            | 'e' 'l' 's' 'e' /. makeToken($_ELSE); ./
            | 'i' 'f' /. makeToken($_IF); ./
            | 'a' 'n' 'd' /. makeToken($_AND); ./
            | 'o' 'r' /. makeToken($_OR); ./
            | 'r' 'e' 'q' 'u' 'i' 'r' 'e' /. makeToken($_REQUIRE); ./
            | 'b' 'e' 'g' 'i' 'n' /. makeToken($_BEGIN); ./
            | 'l' 'o' 'c' 'a' 'l' /. makeToken($_LOCAL); ./
            | 'l' 'e' 't' /. makeToken($_LET); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | SingleQuote /. makeToken($_QUOTE); ./
            | AfterASCII /. makeToken($_QUOTE); ./
            | name /. makeToken($_NAME); ./
            | white /. skipToken(); ./

    langLine ::= Sharp 'l' 'a' 'n' 'g' LangBody Eol
    LangBody -> $empty | LangBody NotNL
    NotNL -> Letter | Digit | NameSpecial | Space | HT | FF | AfterASCII | '_'

    comment ::= SemiColon CommentBody Eol
    CommentBody -> $empty | CommentBody NotNL

    emptyList ::= SingleQuote '(' ')'
               | AfterASCII '(' ')'

    boolean ::= Sharp 't' 'r' 'u' 'e'
              | Sharp 'f' 'a' 'l' 's' 'e'
              | Sharp 't'
              | Sharp 'T'
              | Sharp 'f'
              | Sharp 'F'

    string ::= DoubleQuote SLBody DoubleQuote
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | NameSpecial | Space | HT | FF | AfterASCII | '_'
           | '(' | ')' | '[' | ']' | SingleQuote | Sharp

    number ::= OptSign Digits OptFrac OptSlash
    OptSign -> $empty | '+' | '-'
    Digits -> Digit | Digits Digit
    OptFrac -> $empty | '.' Digits
    OptSlash -> $empty | '/' Digits

    symbol ::= SingleQuote name
             | AfterASCII name

    name ::= NameChar | name NameChar
    NameChar -> Letter | Digit | '_' | NameSpecial
    NameSpecial -> '-' | '>' | '<' | '!' | '?' | '*' | '+' | '=' | '.' | '/' | '~' | '^' | '%' | '&' | DollarSign

    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
              n | o | p | q | r | s | t | u | v | w | x | y | z |
              A | B | C | D | E | F | G | H | I | J | K | L | M |
              N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    Eol ::= LF | CR | CR LF
    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
