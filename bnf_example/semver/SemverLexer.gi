-- SemanticVersion Lexer (LPG)
-- Ported from antlr/grammars-v4 semver/SemanticVersionLexer.g4

%Options list
%Options fp=SemverLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.semver
%options template=LexerTemplateF.gi
%options filter=SemverKWLexer.gi

%Define
    $kw_lexer_class /.$SemverKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    DASH
    PLUS
    DOT
    NUMBER
    IDENTIFIER
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
    Token ::= '-'          /. makeToken($_DASH); ./
            | '+'          /. makeToken($_PLUS); ./
            | '.'          /. makeToken($_DOT); ./
            | number       /. makeToken($_NUMBER); ./
            | identifier   /. checkForKeyWord(); ./
            | white        /. skipToken(); ./

    number ::= '0'
             | NonZero DigitsOpt

    NonZero -> 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    DigitsOpt -> $empty | Digits
    Digits -> Digit | Digits Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    identifier ::= Letter
                 | identifier Letter

    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
              n | o | p | q | r | s | t | u | v | w | x | y | z |
              A | B | C | D | E | F | G | H | I | J | K | L | M |
              N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
