-- Capnproto Lexer (LPG)
%Options list
%Options fp=CapnprotoLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.capnproto
%options template=LexerTemplateF.gi
%options filter=CapnprotoKWLexer.gi
%Define
    $kw_lexer_class /.$CapnprotoKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    FILE_ID LOCATOR TEXT INTEGER
    LBRACE RBRACE LPAREN RPAREN COLON SEMI AT DOT
    STRUCT
    ENUM
    INTERFACE
    CONST
    UNION
    IMPORT
    USING
    VOID
    TRUE
    FALSE
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

    Token ::= '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | ':' /. makeToken($_COLON); ./
            | ';' /. makeToken($_SEMI); ./
            | '.' /. makeToken($_DOT); ./
            | FILE_ID /. makeToken($_FILE_ID); ./
            | LOCATOR /. makeToken($_LOCATOR); ./
            | TEXT /. makeToken($_TEXT); ./
            | INTEGER /. makeToken($_INTEGER); ./
            | identifier /. checkForKeyWord(); ./
            | white /. skipToken(); ./
            | comment /. skipToken(); ./


    identifier ::= Letter LetterOrDigitStar
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z | _
    LetterOrDigitStar -> $empty | LetterOrDigitStar LetterOrDigit
    LetterOrDigit -> Letter | Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9


    FILE_ID ::= '@' '0' 'x' HexPlus
    LOCATOR ::= '@' DigitPlus
    HexPlus ::= Hex | HexPlus Hex
    Hex -> Digit | 'a' | 'b' | 'c' | 'd' | 'e' | 'f' | 'A' | 'B' | 'C' | 'D' | 'E' | 'F'
    DigitPlus ::= Digit | DigitPlus Digit
    TEXT ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | Special | Space | HT | FF
    Special -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
               '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' |
               '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | "'" | '_'
    INTEGER ::= DigitPlus
    comment ::= '#' NotNLStar
    NotNLStar -> $empty | NotNLStar NotNL
    NotNL -> Letter | Digit | Special | Space | HT | FF | AfterASCII | '"' | "'" | '\'


    white ::= WSChar | white WSChar
    WSChar -> Space | HT | FF | LF | CR

%End
