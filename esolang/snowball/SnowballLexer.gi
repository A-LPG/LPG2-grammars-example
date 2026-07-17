-- SnowballLexer (LPG)
%Options list
%Options fp=SnowballLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.esolang.snowball
%options template=LexerTemplateF.gi
%options filter=SnowballKWLexer.gi
%Define
    $kw_lexer_class /.$SnowballKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    STRINGS
    INTEGERS
    BOOLEANS
    ROUTINES
    EXTERNALS
    GROUPINGS
    DEFINE
    AS
    BACKWARDMODE
    OR
    AND
    NOT
    TEST
    TRY
    DO
    FAIL
    GOTO
    GOPAST
    REPEAT
    LOOP
    ATLEAST
    INSERT
    ATTACH
    DELETE
    HOP
    NEXT
    SETMARK
    TOMARK
    ATMARK
    TOLIMIT
    ATLIMIT
    SETLIMIT
    FOR
    BACKWARDS
    REVERSE
    SUBSTRING
    AMONG
    SET
    UNSET
    NON
    TRUE
    FALSE
    MAXINT
    MININT
    CURSOR
    LIMIT
    SIZE
    SIZEOF
    NAME
    NUMBER
    LITERAL_STRING
    LPAREN
    RPAREN
    PLUS
    MINUS
    STAR
    SLASH
    EQUAL
    PLUS_EQ
    MINUS_EQ
    STAR_EQ
    SLASH_EQ
    EQEQ
    NE
    GT
    GE
    LT
    LE
    DOLLAR
    QUESTION
    LBRACKET
    RBRACKET
    ARROW_L
    ARROW_R
    ASSIGN_GT
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

    Token ::= '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '+' '=' /. makeToken($_PLUS_EQ); ./
            | '-' '=' /. makeToken($_MINUS_EQ); ./
            | '*' '=' /. makeToken($_STAR_EQ); ./
            | '/' '=' /. makeToken($_SLASH_EQ); ./
            | '=' '=' /. makeToken($_EQEQ); ./
            | '!' '=' /. makeToken($_NE); ./
            | '>' '=' /. makeToken($_GE); ./
            | '<' '=' /. makeToken($_LE); ./
            | '<' '-' /. makeToken($_ARROW_L); ./
            | '-' '>' /. makeToken($_ARROW_R); ./
            | '=' '>' /. makeToken($_ASSIGN_GT); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_STAR); ./
            | '/' /. makeToken($_SLASH); ./
            | '=' /. makeToken($_EQUAL); ./
            | '>' /. makeToken($_GT); ./
            | '<' /. makeToken($_LT); ./
            | '$' /. makeToken($_DOLLAR); ./
            | '?' /. makeToken($_QUESTION); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | LITERAL_STRING /. makeToken($_LITERAL_STRING); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | identifier /. checkForKeyWord(); ./
            | white /. skipToken(); ./

    LITERAL_STRING ::= "'" SQBody "'"
    SQBody -> $empty | SQBody NotSQ
    NotSQ -> Letter | Digit | SpecialNotSQ | Space | HT | FF
    SpecialNotSQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '"' | '|' | LeftBrace | RightBrace |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'

    NUMBER ::= Digit | NUMBER Digit

    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit
                 | identifier '_'

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF

%End
