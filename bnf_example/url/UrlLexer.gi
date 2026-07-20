-- UrlLexer (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

%Options list
%Options fp=UrlLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.url
%options template=LexerTemplateF.gi
%options filter=UrlKWLexer.gi

%Define
    $kw_lexer_class /.$UrlKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    STRING
    DIGITS
    HEX
    COLON
    SLASH
    AT
    QMARK
    SHARP
    AMP
    EQ
    LBRACKET
    RBRACKET
    WS
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
    Token ::= ':' /. makeToken($_COLON); ./
            | '/' /. makeToken($_SLASH); ./
            | '@' /. makeToken($_AT); ./
            | '?' /. makeToken($_QMARK); ./
            | '#' /. makeToken($_SHARP); ./
            | '&' /. makeToken($_AMP); ./
            | '=' /. makeToken($_EQ); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | HEX /. makeToken($_HEX); ./
            | STRING /. makeToken($_STRING); ./
            | WS /. makeToken($_WS); ./

    HEX ::= '%' HexDigit HexDigit
          | HEX '%' HexDigit HexDigit

    HexDigit -> Digit | a | b | c | d | e | f | A | B | C | D | E | F

    DIGITS ::= Digit
             | DIGITS Digit

    -- STRING: ([a-zA-Z~0-9] | HEX) ([a-zA-Z0-9.+-] | HEX)*
    STRING ::= StringStart StringRest
    StringStart -> Letter | '~' | Digit | HEX
    StringRest -> $empty
                | StringRest StringCont
    StringCont -> Letter | Digit | '.' | '+' | '-' | HEX


    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9


    WS ::= LF
         | CR
         | WS LF
         | WS CR
%End
