-- Thrift Lexer (LPG)
%Options list
%Options fp=ThriftLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.thrift
%options template=LexerTemplateF.gi
%options filter=ThriftKWLexer.gi
%Define
    $kw_lexer_class /.$ThriftKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    LITERAL INTEGER
    LBRACE RBRACE LPAREN RPAREN LBRACKET RBRACKET
    LT GT COMMA COLON EQ STAR SEMI
    TYPEDEF
    STRUCT
    EXCEPTION
    SERVICE
    REQUIRED
    OPTIONAL
    VOID
    BOOL
    BYTE
    I16
    I32
    I64
    DOUBLE
    STRING
    BINARY
    MAP
    SET
    LIST
    ENUM
    CONST
    INCLUDE
    NAMESPACE
    EXTENDS
    THROWS
    ONEWAY
    UNION
    SENUM
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
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | ',' /. makeToken($_COMMA); ./
            | ':' /. makeToken($_COLON); ./
            | '=' /. makeToken($_EQ); ./
            | '*' /. makeToken($_STAR); ./
            | ';' /. makeToken($_SEMI); ./
            | LITERAL /. makeToken($_LITERAL); ./
            | INTEGER /. makeToken($_INTEGER); ./
            | identifier /. checkForKeyWord(); ./
            | white /. skipToken(); ./
            | line_comment /. skipToken(); ./
            | hash_comment /. skipToken(); ./


    identifier ::= Letter LetterOrDigitStar
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z | _
    LetterOrDigitStar -> $empty | LetterOrDigitStar LetterOrDigit
    LetterOrDigit -> Letter | Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9


    LITERAL ::= '"' SLBody '"' | "'" SQBody "'"
    SLBody -> $empty | SLBody NotDQ
    SQBody -> $empty | SQBody NotSQ
    NotDQ -> Letter | Digit | Special | Space | HT | FF | Escape
    NotSQ -> Letter | Digit | Special | Space | HT | FF | '"' | Escape
    Escape ::= '\' EscapeChar
    EscapeChar -> '"' | "'" | '\' | '/' | 'b' | 'f' | 'n' | 'r' | 't' | Letter | Digit
    Special -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
               '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' |
               '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'
    INTEGER ::= DigitPlus
    DigitPlus ::= Digit | DigitPlus Digit
    line_comment ::= '/' '/' NotNLStar
    hash_comment ::= '#' NotNLStar
    NotNLStar -> $empty | NotNLStar NotNL
    NotNL -> Letter | Digit | Special | Space | HT | FF | AfterASCII | '"' | "'" | '\'


    white ::= WSChar | white WSChar
    WSChar -> Space | HT | FF | LF | CR

%End
