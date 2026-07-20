-- PlyLexer (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

%Options list
%Options fp=PlyLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.ply
%options template=LexerTemplateF.gi
%options filter=PlyKWLexer.gi

%Define
    $kw_lexer_class /.$PlyKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    STRING
    NUMBER
    EOL
    ASCII_1_0
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
    Token ::= ASCII_1_0 /. makeToken($_ASCII_1_0); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | EOL /. makeToken($_EOL); ./
            | identifier /. checkForKeyWord(); ./
            | comment /. skipToken(); ./
            | white /. skipToken(); ./

    ASCII_1_0 ::= a s c i i Space '1' '.' '0'

    NUMBER ::= OptSign Digits OptFrac
    OptSign -> $empty | '+' | '-'
    Digits ::= Digit | Digits Digit
    OptFrac -> $empty | '.' Digits

    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit
                 | identifier '_'
                 | identifier '.'

    comment ::= c o m m e n t CommentBody EOL
    CommentBody -> $empty | CommentBody NotNL
    NotNL -> Letter | Digit | Space | HT | FF | Special
    Special -> '.' | ',' | '-' | '_' | '(' | ')' | ':' | '/' | "'" | '+' | '=' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '*' | ';' | '<' | '>' | '[' | ']' | '{' | '}' | '|' | '\' | '`' | '~' | DoubleQuote

    EOL ::= NLChar | EOL NLChar
    NLChar -> LF | CR


    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9


    white -> Space | HT | FF
           | white Space
           | white HT
           | white FF
%End
