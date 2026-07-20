-- MuMath Lexer (LPG)
%Options list
%Options fp=MumathLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.mumath
%options template=LexerTemplateF.gi
%options filter=MumathKWLexer.gi
%Define
    $kw_lexer_class /.$MumathKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    ID
    NUMBER
    STRING
    EQUATION QUOTE PLUS MINUS STAR SLASH COMMA SEMI DOLLAR COLON
    EQC NOT_EQUAL LT LE GE GT LPAREN RPAREN POWER
    BLOCK
    ENDBLOCK
    FUNCTION
    ENDFUN
    EQF
    LOOP
    ENDLOOP
    WHEN
    EXIT
    OR
    AND
    NOT
    MOD
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
    Token ::= '%' comment_body '%' /. skipToken(); ./
            | '"' SLBody '"' /. makeToken($_STRING); ./
            | '=' '=' /. makeToken($_EQUATION); ./
            | '<' '>' /. makeToken($_NOT_EQUAL); ./
            | '<' '=' /. makeToken($_LE); ./
            | '>' '=' /. makeToken($_GE); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | '=' /. makeToken($_EQC); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_STAR); ./
            | '/' /. makeToken($_SLASH); ./
            | ',' /. makeToken($_COMMA); ./
            | ';' /. makeToken($_SEMI); ./
            | '$' /. makeToken($_DOLLAR); ./
            | ':' /. makeToken($_COLON); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '^' /. makeToken($_POWER); ./
            | "'" /. makeToken($_QUOTE); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | identifier /. checkForKeyWord($_ID); ./
            | white /. skipToken(); ./

    comment_body ::= %Empty | comment_body NotPct
    NotPct -> Letter | Digit | SpecialNotPct | Space | HT | FF | LF | CR | AfterASCII | '"' | "'"
    SpecialNotPct -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' | '&' | '^' | ':' | ';' |
                     '|' | '{' | '}' | '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\' | '_'

    identifier ::= IdStart IdRest ArrOpt
    IdStart -> A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z | '@' | '{' | '#'
    IdRest ::= %Empty | IdRest IdRestChar
    IdRestChar -> A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z | Digit | '#' | '}'
    ArrOpt ::= %Empty | '[' NUMBER ']'

    NUMBER ::= Digit | NUMBER Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z | _

    SLBody ::= %Empty | SLBody NotDQ
    NotDQ -> Letter | Digit | SpecialInString | Space | HT | FF | LF | CR | AfterASCII
    SpecialInString -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' | '%' | '&' | '^' | ':' | ';' |
                       "'" | '|' | '{' | '}' | '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\' | '_'

    white ::= WSChar | white WSChar
    WSChar -> Space | HT | FF | LF | CR
%End
