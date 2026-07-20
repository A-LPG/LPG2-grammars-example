-- XPath 1.0 Lexer (LPG)
-- Ported from antlr/grammars-v4 xpath/xpath1/xpath.g4

%Options list
%Options fp=XpathLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.xpath.xpath1
%options template=LexerTemplateF.gi
%options filter=XpathKWLexer.gi

%Define
    $kw_lexer_class /.$XpathKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    NUMBER
    LITERAL
    SLASH
    DSLASH
    LPAREN
    RPAREN
    LBRACKET
    RBRACKET
    MINUS
    PLUS
    DOT
    DOTDOT
    STAR
    AT
    COMMA
    PIPE
    LT
    GT
    LE
    GE
    COLON
    DCOLON
    DOLLAR
    EQ
    NE
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
    Token ::= '/' '/'     /. makeToken($_DSLASH); ./
            | '.' '.'     /. makeToken($_DOTDOT); ./
            | ':' ':'     /. makeToken($_DCOLON); ./
            | '<' '='     /. makeToken($_LE); ./
            | '>' '='     /. makeToken($_GE); ./
            | '!' '='     /. makeToken($_NE); ./
            | '/'         /. makeToken($_SLASH); ./
            | '('         /. makeToken($_LPAREN); ./
            | ')'         /. makeToken($_RPAREN); ./
            | '['         /. makeToken($_LBRACKET); ./
            | ']'         /. makeToken($_RBRACKET); ./
            | '-'         /. makeToken($_MINUS); ./
            | '+'         /. makeToken($_PLUS); ./
            | '.'         /. makeToken($_DOT); ./
            | '*'         /. makeToken($_STAR); ./
            | '@'         /. makeToken($_AT); ./
            | ','         /. makeToken($_COMMA); ./
            | '|'         /. makeToken($_PIPE); ./
            | '<'         /. makeToken($_LT); ./
            | '>'         /. makeToken($_GT); ./
            | ':'         /. makeToken($_COLON); ./
            | '$'         /. makeToken($_DOLLAR); ./
            | '='         /. makeToken($_EQ); ./
            | literal     /. makeToken($_LITERAL); ./
            | number      /. makeToken($_NUMBER); ./
            | identifier  /. checkForKeyWord(); ./
            | white       /. skipToken(); ./

    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit
                 | identifier '_'
                 | identifier '-'
                 | identifier '.'

    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
              n | o | p | q | r | s | t | u | v | w | x | y | z |
              A | B | C | D | E | F | G | H | I | J | K | L | M |
              N | O | P | Q | R | S | T | U | V | W | X | Y | Z |
              AfterASCII

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    number ::= Digits
             | Digits '.' DigitsOpt
             | '.' Digits

    Digits ::= Digit
             | Digits Digit

    DigitsOpt -> $empty | Digits

    literal ::= '"' DQBody '"'
              | "'" SQBody "'"

    DQBody -> $empty | DQBody NotDQ
    SQBody -> $empty | SQBody NotSQ

    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | AfterASCII
    NotSQ -> Letter | Digit | SpecialNotSQ | Space | HT | FF | AfterASCII

    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'
    SpecialNotSQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '"' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
