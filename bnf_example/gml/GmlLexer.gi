-- GML Lexer (LPG)
-- Ported from antlr/grammars-v4 gml/gml.g4 for parse-level examples.

%Options list
%Options fp=GmlLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.gml
%options template=LexerTemplateF.gi
%options filter=GmlKWLexer.gi

%Define
    $kw_lexer_class /.$GmlKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    VALUE
    NUMBER
    STRINGLITERAL
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
    Token ::= '['           /. makeToken($_LBRACKET); ./
            | ']'           /. makeToken($_RBRACKET); ./
            | STRINGLITERAL /. makeToken($_STRINGLITERAL); ./
            | NUMBER        /. makeToken($_NUMBER); ./
            | VALUE         /. makeToken($_VALUE); ./
            | white         /. skipToken(); ./

    -- Letter-starting keys / unquoted strings: [a-zA-Z][a-zA-Z0-9]*
    VALUE ::= Letter
            | VALUE Letter
            | VALUE Digit

    Letter -> LowerCaseLetter
            | UpperCaseLetter

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- Integer or real (covers ANTLR integer + REAL)
    NUMBER ::= OptSign Digits OptFrac OptMantissa
             | OptSign '.' Digits OptMantissa

    OptSign -> $empty
             | '+'
             | '-'

    Digits ::= Digit
             | Digits Digit

    OptFrac -> $empty
             | '.' Digits

    OptMantissa -> $empty
                 | Eee OptSign Digits

    Eee -> e | E

    -- STRINGLITERAL: '"' ~'"'* '"'
    STRINGLITERAL ::= '"' SLBody '"'

    SLBody -> $empty
            | SLBody NotDQ

    NotDQ -> Letter
           | Digit
           | SpecialNotDQ
           | Space
           | HT
           | FF
           | _
           | AfterASCII

    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\'

    white -> WSChar
           | white WSChar

    WSChar -> Space | LF | CR | HT | FF
%End
