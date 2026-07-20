-- InfosapientLexer (LPG)
%Options list
%Options fp=InfosapientLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.infosapient
%options template=LexerTemplateF.gi
%options filter=InfosapientKWLexer.gi
%Define
    $kw_lexer_class /.$InfosapientKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    IF
    THEN
    ELSE
    SEMI
    LPAREN
    RPAREN
    S_POS
    ARE
    FP_LITERAL
    INTEGER
    ABOUT
    INCREASED
    DECREASED
    AND
    OR
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

    Token ::= 'i' 'f' /. makeToken($_IF); ./
            | 't' 'h' 'e' 'n' /. makeToken($_THEN); ./
            | 'e' 'l' 's' 'e' /. makeToken($_ELSE); ./
            | 'a' 'r' 'e' /. makeToken($_ARE); ./
            | 's' /. makeToken($_S_POS); ./
            | 'a' 'b' 'o' 'u' 't' /. makeToken($_ABOUT); ./
            | 'i' 'n' 'c' 'r' 'e' 'a' 's' 'e' 'd' /. makeToken($_INCREASED); ./
            | 'd' 'e' 'c' 'r' 'e' 'a' 's' 'e' 'd' /. makeToken($_DECREASED); ./
            | 'a' 'n' 'd' /. makeToken($_AND); ./
            | 'o' 'r' /. makeToken($_OR); ./
            | ';' /. makeToken($_SEMI); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | FP_LITERAL /. makeToken($_FP_LITERAL); ./
            | INTEGER /. makeToken($_INTEGER); ./
            | identifier /. makeToken($_IDENTIFIER); ./
            | white /. skipToken(); ./


    FP_LITERAL ::= DigitsOpt '.' DigitsOpt
    INTEGER ::= Digit | INTEGER Digit
    DigitsOpt -> $empty | Digits
    Digits ::= Digit | Digits Digit

    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF

%End
