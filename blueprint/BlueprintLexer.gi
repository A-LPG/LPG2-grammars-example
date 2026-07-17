-- Blueprint Lexer (LPG)
-- Ported from antlr/grammars-v4 blueprint/blueprint.g4

%Options list
%Options fp=BlueprintLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.blueprint
%options template=LexerTemplateF.gi
%options filter=BlueprintKWLexer.gi

%Define
    $kw_lexer_class /.$BlueprintKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    STRING
    INTEGER
    TRUE
    FALSE
    SELECT
    ANY
    DEFAULT
    UNSET
    PLUS_EQ
    EQ
    COLON
    PLUS
    AT
    COMMA
    LBRACE
    RBRACE
    LPAREN
    RPAREN
    LBRACKET
    RBRACKET
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
    Token ::= lineComment  /. skipToken(); ./
            | blockComment /. skipToken(); ./
            | '+' '='      /. makeToken($_PLUS_EQ); ./
            | '='          /. makeToken($_EQ); ./
            | ':'          /. makeToken($_COLON); ./
            | '+'          /. makeToken($_PLUS); ./
            | '@'          /. makeToken($_AT); ./
            | ','          /. makeToken($_COMMA); ./
            | '{'          /. makeToken($_LBRACE); ./
            | '}'          /. makeToken($_RBRACE); ./
            | '('          /. makeToken($_LPAREN); ./
            | ')'          /. makeToken($_RPAREN); ./
            | '['          /. makeToken($_LBRACKET); ./
            | ']'          /. makeToken($_RBRACKET); ./
            | string       /. makeToken($_STRING); ./
            | integer      /. makeToken($_INTEGER); ./
            | identifier   /. checkForKeyWord(); ./
            | white        /. skipToken(); ./

    lineComment ::= '/' '/' LineCommentBody
    LineCommentBody -> $empty | LineCommentBody NotNL
    NotNL -> Letter | Digit | Special | Space | HT | FF | AfterASCII | '_'

    blockComment ::= '/' '*' BlockBody '*' '/'
    BlockBody -> $empty | BlockBody BlockChar
    BlockChar -> Letter | Digit | SpecialNotStar | Space | HT | FF | LF | CR | AfterASCII | '_' | '/'
               | '*' NotSlash
    NotSlash -> Letter | Digit | SpecialNotStar | Space | HT | FF | LF | CR | AfterASCII | '_' | '*'
    SpecialNotStar -> '+' | '-' | '(' | ')' | '!' | '@' | '`' | '~' |
                      '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                      '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\'

    Special -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
               '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
               '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\'

    string ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | LF | CR | AfterASCII | '_'
           | Escape
    Escape ::= '\' EscapeChar
    EscapeChar -> DoubleQuote | BackSlash | '/' | n | t | r
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$'

    integer ::= OptMinus Digits
    OptMinus -> $empty | '-'
    Digits -> Digit | Digits Digit

    identifier ::= IdStart IdRestOpt
    IdStart -> Letter | '_'
    IdRestOpt -> $empty | IdRest
    IdRest -> IdChar | IdRest IdChar
    IdChar -> Letter | Digit | '_' | '-'

    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
              n | o | p | q | r | s | t | u | v | w | x | y | z |
              A | B | C | D | E | F | G | H | I | J | K | L | M |
              N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
