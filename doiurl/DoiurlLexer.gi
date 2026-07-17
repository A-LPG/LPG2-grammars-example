-- DoiurlLexer (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

%Options list
%Options fp=DoiurlLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.doiurl
%options template=LexerTemplateF.gi
%options filter=DoiurlKWLexer.gi

%Define
    $kw_lexer_class /.$DoiurlKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    DOI
    PCHAR
    COLON
    SLASH
    QMARK
    SHARP
    QUERYFRAG
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
    Token ::= d o i /. makeToken($_DOI); ./
            | ':' /. makeToken($_COLON); ./
            | '/' /. makeToken($_SLASH); ./
            | '?' /. makeToken($_QMARK); ./
            | '#' /. makeToken($_SHARP); ./
            | PCHAR /. makeToken($_PCHAR); ./
            | white /. skipToken(); ./

    PCHAR ::= Digit
            | Mark
            | Escaped
            | ';' | '@' | '&' | '=' | '+' | '$' | ','
            | LetterNotDoiStart

    -- letters are PCHAR; 'doi' as keyword via longer rule listed first - LPG uses grammar order/length
    -- Include Letter as PCHAR but DOI rule is longer (3 vs 1)

    LetterNotDoiStart -> Letter

    Mark -> '-' | '_' | '.' | '!' | '~' | '*' | "'" | '(' | ')'

    Escaped ::= '%' HexDigit HexDigit
    HexDigit -> Digit | a | b | c | d | e | f | A | B | C | D | E | F


    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9


    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
