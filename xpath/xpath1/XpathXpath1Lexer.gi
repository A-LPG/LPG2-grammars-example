-- XPath 1.0 lexer — mirrors grammars-v4 xpath/xpath1/xpath.g4 tokens.

%Options list
%Options fp=XpathXpath1Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.xpath.xpath1
%options template=LexerTemplateF.gi
%options filter=XpathXpath1KWLexer.gi

%Define
    $kw_lexer_class /.$XpathXpath1KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    STRING
    NUMBER
    SLASH
    SLASHSLASH
    LPAREN
    RPAREN
    LBRACKET
    RBRACKET
    DOT
    DOTDOT
    COLON
    COLONCOLON
    AT
    DOLLAR
    STAR
    PIPE
    PLUS
    MINUS
    EQ
    NOTEQ
    LT
    GT
    LTEQ
    GTEQ
    COMMA
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
    Token ::= identifier /. checkForKeyWord(); ./
            | number     /. makeToken($_NUMBER); ./
            | string     /. makeToken($_STRING); ./
            | white      /. skipToken(); ./
            | '/' '/'    /. makeToken($_SLASHSLASH); ./
            | ':' ':'    /. makeToken($_COLONCOLON); ./
            | '.' '.'    /. makeToken($_DOTDOT); ./
            | '!' '='    /. makeToken($_NOTEQ); ./
            | '<' '='    /. makeToken($_LTEQ); ./
            | '>' '='    /. makeToken($_GTEQ); ./
            | '/'        /. makeToken($_SLASH); ./
            | '('        /. makeToken($_LPAREN); ./
            | ')'        /. makeToken($_RPAREN); ./
            | '['        /. makeToken($_LBRACKET); ./
            | ']'        /. makeToken($_RBRACKET); ./
            | '.'        /. makeToken($_DOT); ./
            | ':'        /. makeToken($_COLON); ./
            | '@'        /. makeToken($_AT); ./
            | '$'        /. makeToken($_DOLLAR); ./
            | '*'        /. makeToken($_STAR); ./
            | '|'        /. makeToken($_PIPE); ./
            | '+'        /. makeToken($_PLUS); ./
            | '-'        /. makeToken($_MINUS); ./
            | '='        /. makeToken($_EQ); ./
            | '<'        /. makeToken($_LT); ./
            | '>'        /. makeToken($_GT); ./
            | ','        /. makeToken($_COMMA); ./

    identifier -> Letter
                | identifier Letter
                | identifier Digit
                | identifier '-'
                | identifier '_'

    Letter -> LowerCaseLetter
            | UpperCaseLetter
            | _

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    number ::= Digit
             | number Digit
             | number '.' Digit
             | number '.' Digits
             | '.' Digits

    Digits ::= Digit
             | Digits Digit

    string ::= '"' SLBody '"'
             | SingleQuote SLBodySQ SingleQuote

    SLBody -> $empty
            | SLBody NotDQ
    SLBodySQ -> $empty
              | SLBodySQ NotSQ

    NotDQ -> Letter | Digit | Space | HT | SpecialNotDQ
    NotSQ -> Letter | Digit | Space | HT | SpecialNotSQ

    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'
    SpecialNotSQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '~' |
                    '%' | '&' | '^' | ':' | ';' | DoubleQuote | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'

    white -> WSChar
           | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
