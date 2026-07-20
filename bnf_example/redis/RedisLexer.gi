-- Redis lexer (LPG) — keywords via FoldedCase RedisKWLexer; NEWLINE kept for command sep.
%Options list
%Options fp=RedisLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.redis
%options template=LexerTemplateF.gi
%options filter=RedisKWLexer.gi

%Define
    $kw_lexer_class /.$RedisKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    NEWLINE
    POSITIVE_DECIMAL_LITERAL
    DECIMAL_LITERAL
    DECIMAL_SCORE_LITERAL
    STRING
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
            | positiveDecimal /. makeToken($_POSITIVE_DECIMAL_LITERAL); ./
            | decimalLiteral /. makeToken($_DECIMAL_LITERAL); ./
            | scoreLiteral /. makeToken($_DECIMAL_SCORE_LITERAL); ./
            | string /. makeToken($_STRING); ./
            | NewlineSeq /. makeToken($_NEWLINE); ./
            | white /. skipToken(); ./

    identifier ::= IdStart
                 | identifier IdBody

    IdStart -> Letter | '_' | AfterASCII | DollarSign | Star | QuestionMark | AtSign | Sharp | Percent | Tilde | Colon
    IdBody -> Letter | Digit | '_' | AfterASCII | DollarSign | Star | QuestionMark | Minus | Dot | Colon | AtSign | Sharp | Percent

    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    positiveDecimal ::= Digits
    Digits ::= Digit | Digits Digit

    decimalLiteral ::= '-' Digits

    scoreLiteral ::= '+' 'i' 'n' 'f'
                   | '-' 'i' 'n' 'f'
                   | '(' decimalLiteral
                   | '(' positiveDecimal

    string ::= '"' SLBody '"'
             | SingleQuote SQBody SingleQuote
    SLBody -> $empty | SLBody NotDQ | SLBody Escape
    SQBody -> $empty | SQBody NotSQ | SQBody Escape
    Escape ::= BackSlash EscapeAny
    EscapeAny -> Letter | Digit | DoubleQuote | SingleQuote | BackSlash | Space | '/' | 'n' | 'r' | 't'
    NotDQ -> Letter | Digit | Space | HT | SingleQuote | AfterASCII | '_' |
             '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
             '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' | '[' | ']' |
             '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$'
    NotSQ -> Letter | Digit | Space | HT | DoubleQuote | AfterASCII | '_' |
             '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
             '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' | '[' | ']' |
             '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$'

    NewlineSeq ::= LF | CR | CR LF

    white -> Space | HT | FF | white Space | white HT | white FF
%End
