-- AQL Lexer (LPG) — hand tokens for ArangoDB AQL
-- Keeps IDENTIFIER in %Export for KW filter (TK_IDENTIFIER).

%Options list
%Options fp=AqlLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.aql
%options template=LexerTemplateF.gi
%options filter=AqlKWLexer.gi
%Define
    $kw_lexer_class /.$AqlKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    NUMBER
    STRING
    ASSIGN
    EQEQ
    NE
    LE
    GE
    LT
    GT
    COLON
    COMMA
    DOT
    LBRACE
    RBRACE
    LBRACKET
    RBRACKET
    LPAREN
    RPAREN
    PLUS
    MINUS
    STAR
    SLASH
    PERCENT
    BANG
    QUESTION
    AT
    AND_OP
    OR_OP
    RANGE
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
            | blockComment /. skipToken(); ./
            | '=' '=' /. makeToken($_EQEQ); ./
            | '!' '=' /. makeToken($_NE); ./
            | '<' '=' /. makeToken($_LE); ./
            | '>' '=' /. makeToken($_GE); ./
            | '&' '&' /. makeToken($_AND_OP); ./
            | '|' '|' /. makeToken($_OR_OP); ./
            | '.' '.' /. makeToken($_RANGE); ./
            | '=' /. makeToken($_ASSIGN); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | ':' /. makeToken($_COLON); ./
            | ',' /. makeToken($_COMMA); ./
            | '.' /. makeToken($_DOT); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_STAR); ./
            | '/' /. makeToken($_SLASH); ./
            | '%' /. makeToken($_PERCENT); ./
            | '!' /. makeToken($_BANG); ./
            | '?' /. makeToken($_QUESTION); ./
            | '@' /. makeToken($_AT); ./
            | string /. makeToken($_STRING); ./
            | number /. makeToken($_NUMBER); ./
            | identifier /. checkForKeyWord(); ./
            | white /. skipToken(); ./

    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit
                 | identifier '_'

    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
              n | o | p | q | r | s | t | u | v | w | x | y | z |
              A | B | C | D | E | F | G | H | I | J | K | L | M |
              N | O | P | Q | R | S | T | U | V | W | X | Y | Z |
              AfterASCII

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    number ::= Digits OptFrac OptExp
    Digits ::= Digit | Digits Digit
    OptFrac -> $empty | '.' Digits
    OptExp -> $empty | Exp
    Exp ::= LetterEe OptSign Digits
    LetterEe -> e | E
    OptSign -> $empty | '+' | '-'

    string ::= '"' DQBody '"'
             | "'" SQBody "'"
             | '`' BQBody '`'
    DQBody -> $empty | DQBody NotDQ
    SQBody -> $empty | SQBody NotSQ
    BQBody -> $empty | BQBody NotBQ
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | AfterASCII
    NotSQ -> Letter | Digit | SpecialNotSQ | Space | HT | FF | AfterASCII
    NotBQ -> Letter | Digit | SpecialNotBQ | Space | HT | FF | AfterASCII
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash
    SpecialNotSQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '"' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash
    SpecialNotBQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '"' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash

    lineComment ::= '/' '/' NotNLs
    NotNLs -> $empty | NotNLs NotNL
    NotNL -> Letter | Digit | SpecialAny | Space | HT | FF | AfterASCII
    SpecialAny -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                  '%' | '&' | '^' | ':' | ';' | '"' | "'" | '|' | '{' | '}' |
                  '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash

    blockComment ::= '/' '*' BlockBody StarSlash
    StarSlash ::= '*' '/'
    BlockBody -> $empty | BlockBody BlockChar
    BlockChar -> Letter | Digit | SpecialNotStarSlash | Space | HT | FF | LF | CR | AfterASCII
    SpecialNotStarSlash -> '+' | '-' | '(' | ')' | '!' | '@' | '`' | '~' |
                      '%' | '&' | '^' | ':' | ';' | '"' | "'" | '|' | '{' | '}' |
                      '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash
                 | '/' | '*'

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF

%End
