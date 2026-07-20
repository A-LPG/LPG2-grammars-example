-- XYZ Lexer (LPG)
-- Ported from antlr/grammars-v4 xyz/xyz.g4

%Options list
%Options fp=XyzLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.xyz
%options template=LexerTemplateF.gi
%options filter=XyzKWLexer.gi

%Define
    $kw_lexer_class /.$XyzKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    ATOMNAME
    NUM
    EOL
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
    Token ::= EOL        /. makeToken($_EOL); ./
            | NUM        /. makeToken($_NUM); ./
            | ATOMNAME   /. makeToken($_ATOMNAME); ./
            | white      /. skipToken(); ./

    ATOMNAME ::= Letter
               | ATOMNAME Letter

    Letter -> LowerCaseLetter
            | UpperCaseLetter

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    NUM ::= OptSign Digits OptFrac

    OptSign -> $empty
             | '+'
             | '-'

    Digits ::= Digit
             | Digits Digit

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    OptFrac -> $empty
             | '.' Digits

    EOL ::= LF
          | CR LF
          | CR
          | EOL LF
          | EOL CR

    white -> WSChar
           | white WSChar

    WSChar -> Space | HT | FF
%End
