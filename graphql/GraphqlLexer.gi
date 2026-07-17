-- Graphql Lexer (LPG)
%Options list
%Options fp=GraphqlLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.graphql
%options template=LexerTemplateF.gi
%options filter=GraphqlKWLexer.gi
%Define
    $kw_lexer_class /.$GraphqlKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    NAME
    STRING
    BLOCK_STRING
    INT
    FLOAT
    SPREAD
    BANG
    DOLLAR
    LPAREN
    RPAREN
    COLON
    EQUAL
    AT
    LBRACKET
    RBRACKET
    LBRACE
    RBRACE
    BAR
    AMPERSAND
    QUERY
    MUTATION
    SUBSCRIPTION
    FRAGMENT
    ON
    TRUE
    FALSE
    NULLLITERAL
    SCHEMA
    EXTEND
    SCALAR
    TYPE
    INTERFACE
    UNION
    ENUM
    INPUT
    DIRECTIVE
    IMPLEMENTS
    REPEATABLE
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
    Token ::= '.' '.' '.' /. makeToken($_SPREAD); ./
            | '!'         /. makeToken($_BANG); ./
            | '$'         /. makeToken($_DOLLAR); ./
            | '('         /. makeToken($_LPAREN); ./
            | ')'         /. makeToken($_RPAREN); ./
            | ':'         /. makeToken($_COLON); ./
            | '='         /. makeToken($_EQUAL); ./
            | '@'         /. makeToken($_AT); ./
            | '['         /. makeToken($_LBRACKET); ./
            | ']'         /. makeToken($_RBRACKET); ./
            | LeftBrace   /. makeToken($_LBRACE); ./
            | RightBrace  /. makeToken($_RBRACE); ./
            | '|'         /. makeToken($_BAR); ./
            | '&'         /. makeToken($_AMPERSAND); ./
            | BLOCK_STRING /. makeToken($_BLOCK_STRING); ./
            | STRING      /. makeToken($_STRING); ./
            | FLOAT       /. makeToken($_FLOAT); ./
            | INT         /. makeToken($_INT); ./
            | identifier  /. checkForKeyWord(); ./
            | comment     /. skipToken(); ./
            | white       /. skipToken(); ./
            | ','         /. skipToken(); ./

    identifier ::= NameStart | identifier NameCont
    NameStart -> Letter | '_'
    NameCont -> Letter | Digit | '_'

    STRING ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ | SLBody EscapeSequence
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | LeftBrace | RightBrace |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'
    EscapeSequence ::= '\' EscapeChar
    EscapeChar -> '"' | '\' | '/' | 'b' | 'f' | 'n' | 'r' | 't'
                | 'u' Hex Hex Hex Hex
    Hex -> Digit | a | b | c | d | e | f | A | B | C | D | E | F

    BLOCK_STRING ::= '"' '"' '"' BSBody '"' '"' '"'
    BSBody -> $empty | BSBody BSChar
    BSChar -> Letter | Digit | SpecialNotDQ | Space | HT | FF | LF | CR | AfterASCII | '"'

    INT ::= OptMinus IntBody
    OptMinus -> $empty | '-'
    IntBody ::= '0' | NonZero DigitsOpt
    NonZero -> 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    DigitsOpt -> $empty | Digits
    Digits ::= Digit | Digits Digit

    FLOAT ::= INT '.' Digits
            | INT Exp
            | INT '.' Digits Exp
    Exp ::= LetterEe OptSign Digits
    LetterEe -> e | E
    OptSign -> $empty | '+' | '-'

    comment ::= '#' CommentBody
    CommentBody -> $empty | CommentBody CommentChar
    CommentChar -> Letter | Digit | SpecialNotDQ | Space | HT | FF | AfterASCII

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
