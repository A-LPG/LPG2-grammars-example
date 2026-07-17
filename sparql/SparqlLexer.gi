-- Sparql Lexer (LPG)
%Options list
%Options fp=SparqlLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.sparql
%options template=LexerTemplateF.gi
%options filter=SparqlKWLexer.gi
%Define
    $kw_lexer_class /.$SparqlKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    NUMBER
    STRING
    EQ
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
    LT
    GT
    BANG
    QUESTION
    DOLLAR
    SEMI
    CARET
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
            | hashComment /. skipToken(); ./
            | '=' /. makeToken($_EQ); ./
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
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | '!' /. makeToken($_BANG); ./
            | '?' /. makeToken($_QUESTION); ./
            | '$' /. makeToken($_DOLLAR); ./
            | ';' /. makeToken($_SEMI); ./
            | '^' /. makeToken($_CARET); ./
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

    number ::= OptSign Digits OptFrac OptExp
    OptSign -> $empty | '+' | '-'
    Digits ::= Digit | Digits Digit
    OptFrac -> $empty | '.' Digits
    OptExp -> $empty | Exp
    Exp ::= LetterEe OptSign Digits
    LetterEe -> e | E

    string ::= '"' DQBody '"'
             | "'" SQBody "'"
    DQBody -> $empty | DQBody NotDQ
    SQBody -> $empty | SQBody NotSQ
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | AfterASCII
    NotSQ -> Letter | Digit | SpecialNotSQ | Space | HT | FF | AfterASCII
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash
    SpecialNotSQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '"' | '|' | '{' | '}' |
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

    hashComment ::= '#' NotNLs

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF

%End
