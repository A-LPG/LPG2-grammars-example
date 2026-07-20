-- LogoLexer (LPG)
%Options list
%Options fp=LogoLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.logo.logo
%options template=LexerTemplateF.gi
%options filter=LogoKWLexer.gi
%Define
    $kw_lexer_class /.$LogoKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    REPEAT
    FD
    FORWARD
    BK
    BACKWARD
    RT
    RIGHT
    LT
    LEFT
    CS
    CLEARSCREEN
    PU
    PENUP
    PD
    PENDOWN
    HT
    HIDETURTLE
    ST
    SHOWTURTLE
    HOME
    STOP
    LABEL
    SETXY
    MAKE
    PRINT
    IF
    FOR
    TO
    END
    RANDOM
    STRING
    STRINGLITERAL
    NUMBER
    COMMENT
    EOL
    LBRACKET
    RBRACKET
    COLON
    COMMA
    PLUS
    MINUS
    STAR
    SLASH
    LT
    GT
    EQUAL
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

    Token ::= EOL /. makeToken($_EOL); ./
            | COMMENT /. makeToken($_COMMENT); ./
            | STRINGLITERAL /. makeToken($_STRINGLITERAL); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | ':' /. makeToken($_COLON); ./
            | ',' /. makeToken($_COMMA); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_STAR); ./
            | '/' /. makeToken($_SLASH); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | '=' /. makeToken($_EQUAL); ./
            | identifier /. checkForKeyWord(); ./
            | white /. skipToken(); ./

    EOL ::= LF | CR LF | CR

    COMMENT ::= ';' CommentBody
    CommentBody -> $empty | CommentBody CommentChar
    CommentChar -> Letter | Digit | SpecialNotNL | Space | HT | FF
    SpecialNotNL -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | LeftBrace | RightBrace |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | '"'

    STRINGLITERAL ::= '"' identifier_body
    identifier_body ::= Letter | identifier_body Letter | identifier_body Digit | identifier_body '_'

    NUMBER ::= Digit | NUMBER Digit

    identifier ::= Letter | identifier Letter | identifier Digit | identifier '_'

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- Do not skip newlines (EOL tokens); skip spaces/tabs only
    white -> Space | HT | white Space | white HT

%End
