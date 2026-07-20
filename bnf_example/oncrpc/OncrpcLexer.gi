-- ONC RPC Lexer (LPG)
%Options list
%Options fp=OncrpcLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.oncrpc
%options template=LexerTemplateF.gi
%options filter=OncrpcKWLexer.gi
%Define
    $kw_lexer_class /.$OncrpcKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    DECIMAL
    HEXADECIMAL
    OCTAL
    LBRACE RBRACE LBRACKET RBRACKET LT GT
    STAR EQ SEMI COMMA COLON LPAREN RPAREN
    UNSIGNED
    INT
    HYPER
    FLOAT
    DOUBLE
    QUADRUPLE
    BOOL
    ENUM
    STRUCT
    UNION
    SWITCH
    CASE
    DEFAULT
    CONST
    TYPEDEF
    OPAQUE
    STRING_KW
    VOID
    PROGRAM
    VERSION
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
    Token ::= '/' '*' comment_body '*' '/' /. skipToken(); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | '*' /. makeToken($_STAR); ./
            | '=' /. makeToken($_EQ); ./
            | ';' /. makeToken($_SEMI); ./
            | ',' /. makeToken($_COMMA); ./
            | ':' /. makeToken($_COLON); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | HEXADECIMAL /. makeToken($_HEXADECIMAL); ./
            | OCTAL /. makeToken($_OCTAL); ./
            | DECIMAL /. makeToken($_DECIMAL); ./
            | identifier /. checkForKeyWord(); ./
            | white /. skipToken(); ./

    comment_body ::= %Empty | comment_body NotStar | comment_body '*' NotSlash
    NotStar -> Letter | Digit | SpecialNotStar | Space | HT | FF | LF | CR | AfterASCII | '"' | "'"
    NotSlash -> Letter | Digit | SpecialNotStar | Space | HT | FF | LF | CR | AfterASCII | '"' | "'" | '*'
    SpecialNotStar -> '+' | '-' | '/' | '(' | ')' | '!' | '@' | '`' | '~' | '%' | '&' | '^' | ':' | ';' |
                      '|' | '{' | '}' | '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\' | '_'

    HEXADECIMAL ::= '0' 'x' HexDigits | '0' 'X' HexDigits
    HexDigits ::= HexDigit | HexDigits HexDigit
    HexDigit -> Digit | a | b | c | d | e | f | A | B | C | D | E | F

    OCTAL ::= '0' OctalDigit | OCTAL OctalDigit
    OctalDigit -> 1 | 2 | 3 | 4 | 5 | 6 | 7

    DECIMAL ::= opt_minus Digits
    opt_minus ::= %Empty | '-'
    Digits ::= Digit | Digits Digit

    identifier ::= Letter IdRest
    IdRest ::= %Empty | IdRest IdChar
    IdChar -> Letter | Digit | _
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    white ::= Space | HT | FF | LF | CR | white Space | white HT | white FF | white LF | white CR
%End
