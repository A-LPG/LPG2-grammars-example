-- Http Lexer (LPG)
%Options list
%Options fp=HttpLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.http
%options template=LexerTemplateF.gi
%options filter=HttpKWLexer.gi
%Define
    $kw_lexer_class /.$HttpKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    NUMBER
    STRING
    SLASH
    QUESTION
    COLON
    DOT
    EQ
    AMP
    PERCENT
    HASH
    BANG
    DOLLAR
    STAR
    PLUS
    MINUS
    CARET
    UNDERSCORE
    BACKTICK
    VBAR
    TILDE
    LPAREN
    RPAREN
    SEMI
    COMMA
    AT
    SQUOTE
    DQUOTE
    CRLF
    SP
    ALPHA
    AMPERSAND
    DIGIT
    HASHTAG
    HTAB
    HTTP
    LCOLUMN
    PERIOD
    RCOLUMN
    SEMICOLON
    VCHAR
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

    Token ::= lineComment /. skipToken(); ./
            | '/' /. makeToken($_SLASH); ./
            | '?' /. makeToken($_QUESTION); ./
            | ':' /. makeToken($_COLON); ./
            | '.' /. makeToken($_DOT); ./
            | '=' /. makeToken($_EQ); ./
            | '&' /. makeToken($_AMP); ./
            | '%' /. makeToken($_PERCENT); ./
            | '#' /. makeToken($_HASH); ./
            | '!' /. makeToken($_BANG); ./
            | '$' /. makeToken($_DOLLAR); ./
            | '*' /. makeToken($_STAR); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '^' /. makeToken($_CARET); ./
            | '_' /. makeToken($_UNDERSCORE); ./
            | '`' /. makeToken($_BACKTICK); ./
            | '|' /. makeToken($_VBAR); ./
            | '~' /. makeToken($_TILDE); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | ';' /. makeToken($_SEMI); ./
            | ',' /. makeToken($_COMMA); ./
            | '@' /. makeToken($_AT); ./
            | "'" /. makeToken($_SQUOTE); ./
            | '"' /. makeToken($_DQUOTE); ./
            | CRLF /. makeToken($_CRLF); ./
            | SP /. makeToken($_SP); ./
            | number /. makeToken($_NUMBER); ./
            | identifier /. checkForKeyWord(); ./
            | otherChar /. makeToken($_IDENTIFIER); ./
            | HT /. skipToken(); ./

    CRLF ::= CR LF | LF
    SP ::= Space | SP Space

    otherChar -> AfterASCII

    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit
                 | identifier '_'

    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
              n | o | p | q | r | s | t | u | v | w | x | y | z |
              A | B | C | D | E | F | G | H | I | J | K | L | M |
              N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    number ::= Digits
             | Digits '.' Digits
    Digits ::= Digit | Digits Digit

    lineComment ::= '/' '/' NotNLs
    NotNLs -> $empty | NotNLs NotNL
    NotNL -> Letter | Digit | Space | HT | AfterASCII |
             '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
             '%' | '&' | '^' | ':' | ';' | '"' | "'" | '|' | '{' | '}' |
             '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | '\'
%End
