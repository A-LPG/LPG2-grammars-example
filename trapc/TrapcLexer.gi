-- Generated parse-level lexer
%Options list
%Options fp=TrapcLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.trapc
%options template=LexerTemplateF.gi
%options filter=TrapcKWLexer.gi

%Define
    $kw_lexer_class /.$TrapcKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    NUMBER
    STRING
    LPAREN
    RPAREN
    LBRACE
    RBRACE
    LBRACKET
    RBRACKET
    LANGLE
    RANGLE
    COMMA
    DOT
    COLON
    SEMI
    EQ
    PLUS
    MINUS
    STAR
    SLASH
    AMP
    BAR
    CARET
    BANG
    QUEST
    AT
    HASH
    DOLLAR
    PERCENT
    TILDE
    BACKTICK
    QUOTE
    CHARLIT
    BACKSLASH
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
    Token ::= STRING /. makeToken($_STRING); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | IDENTIFIER /. makeToken($_IDENTIFIER); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '<' /. makeToken($_LANGLE); ./
            | '>' /. makeToken($_RANGLE); ./
            | ',' /. makeToken($_COMMA); ./
            | '.' /. makeToken($_DOT); ./
            | ':' /. makeToken($_COLON); ./
            | '=' /. makeToken($_EQ); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_STAR); ./
            | '/' /. makeToken($_SLASH); ./
            | '&' /. makeToken($_AMP); ./
            | '|' /. makeToken($_BAR); ./
            | '^' /. makeToken($_CARET); ./
            | '!' /. makeToken($_BANG); ./
            | '?' /. makeToken($_QUEST); ./
            | '@' /. makeToken($_AT); ./
            | '$' /. makeToken($_DOLLAR); ./
            | '%' /. makeToken($_PERCENT); ./
            | '~' /. makeToken($_TILDE); ./
            | '`' /. makeToken($_BACKTICK); ./
            | ';' /. makeToken($_SEMI); ./
            | '#' /. makeToken($_HASH); ./
            | "'" /. makeToken($_QUOTE); ./
            | BackSlash /. makeToken($_BACKSLASH); ./
            | SLComment     /. skipToken(); ./ | MLComment     /. skipToken(); ./
            | white /. skipToken(); ./

    IDENTIFIER ::= IdStart
                 | IDENTIFIER IdStart
                 | IDENTIFIER Digit

    IdStart -> Letter | '_' | AfterASCII
    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    NUMBER ::= Digits
             | Digits '.' Digits
             | 0 x HexDigits
             | 0 X HexDigits

    HexDigits ::= HexDigit | HexDigits HexDigit
    HexDigit -> Digit | a | b | c | d | e | f | A | B | C | D | E | F
    Digits ::= Digit | Digits Digit

    STRING ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ | SLBody Escape
    Escape ::= BackSlash EscapeAny
    EscapeAny -> Letter | Digit | DoubleQuote | SingleQuote | BackSlash | Space | '/' | SpecialEsc
    SpecialEsc -> '+' | '-' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                  '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' |
                  '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$'
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | LF | CR | AfterASCII | '_'
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$'



    SLComment ::= '/' '/' SLCBody
    SLCBody -> $empty | SLCBody NotNL

    MLComment ::= '/' '*' MLCBody '*' '/'
    MLCBody -> $empty | MLCBody NotStar | MLCBody '*' NotSlash

    NotNL -> Letter | Digit | SpecialNotNL | Space | HT | FF | AfterASCII | '_'
    NotStar -> Letter | Digit | SpecialNotStar | Space | HT | FF | LF | CR | AfterASCII | '_' | "'" | '"'
    NotSlash -> Letter | Digit | SpecialNotSlash | Space | HT | FF | LF | CR | AfterASCII | '_' | '*' | "'" | '"'

    SpecialNotNL -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | BackSlash
    SpecialNotStar -> '+' | '-' | '/' | '(' | ')' | '!' | '@' | '`' | '~' |
                      '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                      '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | BackSlash
    SpecialNotSlash -> '+' | '-' | '(' | ')' | '!' | '@' | '`' | '~' |
                       '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                       '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | BackSlash

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
