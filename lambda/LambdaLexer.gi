-- Lambda Lexer (LPG)
-- Ported from antlr/grammars-v4 lambda/lambda.g4

%Options list
%Options fp=LambdaLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.lambda
%options template=LexerTemplateF.gi
%options filter=LambdaKWLexer.gi

%Define
    $kw_lexer_class /.$LambdaKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    VARIABLE
    LAMBDA
    DOT
    LPAREN
    RPAREN
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
    Token ::= VARIABLE   /. makeToken($_VARIABLE); ./
            | AfterASCII /. makeToken($_LAMBDA); ./
            | '.'       /. makeToken($_DOT); ./
            | '('        /. makeToken($_LPAREN); ./
            | ')'        /. makeToken($_RPAREN); ./
            | white      /. skipToken(); ./

    -- VARIABLE: [a-z][a-zA-Z0-9]*
    VARIABLE ::= LowerCaseLetter
               | VARIABLE LetterOrDigit

    LetterOrDigit -> LowerCaseLetter | UpperCaseLetter | Digit

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar
           | white WSChar

    WSChar -> Space | LF | CR | HT | FF
%End
