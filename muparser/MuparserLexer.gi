-- MuParser Lexer (LPG)
%Options list
%Options fp=MuparserLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.muparser
%options template=LexerTemplateF.gi
%options filter=MuparserKWLexer.gi
%Define
    $kw_lexer_class /.$MuparserKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    ID
    INT
    FLOAT
    FUNCTION
    FUNCTIONMULTI
    TRUE FALSE E PI
    ASSIGN ASSIGNADD ASSIGNSUB ASSIGNMUL ASSIGNDIV
    AND OR LTEQ GTEQ NEQ EQ LT GT
    ADD SUB MUL DIV POW NOT QUESTION COLON OPAR CPAR COMMA
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
    Token ::= '+' '=' /. makeToken($_ASSIGNADD); ./
            | '-' '=' /. makeToken($_ASSIGNSUB); ./
            | '*' '=' /. makeToken($_ASSIGNMUL); ./
            | '/' '=' /. makeToken($_ASSIGNDIV); ./
            | '&' '&' /. makeToken($_AND); ./
            | '|' '|' /. makeToken($_OR); ./
            | '<' '=' /. makeToken($_LTEQ); ./
            | '>' '=' /. makeToken($_GTEQ); ./
            | '!' '=' /. makeToken($_NEQ); ./
            | '=' '=' /. makeToken($_EQ); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | '=' /. makeToken($_ASSIGN); ./
            | '+' /. makeToken($_ADD); ./
            | '-' /. makeToken($_SUB); ./
            | '*' /. makeToken($_MUL); ./
            | '/' /. makeToken($_DIV); ./
            | '^' /. makeToken($_POW); ./
            | '!' /. makeToken($_NOT); ./
            | '?' /. makeToken($_QUESTION); ./
            | ':' /. makeToken($_COLON); ./
            | '(' /. makeToken($_OPAR); ./
            | ')' /. makeToken($_CPAR); ./
            | ',' /. makeToken($_COMMA); ./
            | 't' 'r' 'u' 'e' /. makeToken($_TRUE); ./
            | 'f' 'a' 'l' 's' 'e' /. makeToken($_FALSE); ./
            | '_' 'e' /. makeToken($_E); ./
            | '_' 'p' 'i' /. makeToken($_PI); ./
            | 'a' 'c' 'o' 's' 'h' /. makeToken($_FUNCTION); ./
            | 'a' 's' 'i' 'n' 'h' /. makeToken($_FUNCTION); ./
            | 'a' 't' 'a' 'n' 'h' /. makeToken($_FUNCTION); ./
            | 'l' 'o' 'g' '1' '0' /. makeToken($_FUNCTION); ./
            | 'a' 'c' 'o' 's' /. makeToken($_FUNCTION); ./
            | 'a' 's' 'i' 'n' /. makeToken($_FUNCTION); ./
            | 'a' 't' 'a' 'n' /. makeToken($_FUNCTION); ./
            | 'c' 'o' 's' 'h' /. makeToken($_FUNCTION); ./
            | 'l' 'o' 'g' '2' /. makeToken($_FUNCTION); ./
            | 'r' 'i' 'n' 't' /. makeToken($_FUNCTION); ./
            | 's' 'i' 'g' 'n' /. makeToken($_FUNCTION); ./
            | 's' 'i' 'n' 'h' /. makeToken($_FUNCTION); ./
            | 's' 'q' 'r' 't' /. makeToken($_FUNCTION); ./
            | 't' 'a' 'n' 'h' /. makeToken($_FUNCTION); ./
            | 'a' 'b' 's' /. makeToken($_FUNCTION); ./
            | 'c' 'o' 's' /. makeToken($_FUNCTION); ./
            | 'e' 'x' 'p' /. makeToken($_FUNCTION); ./
            | 'l' 'o' 'g' /. makeToken($_FUNCTION); ./
            | 's' 'i' 'n' /. makeToken($_FUNCTION); ./
            | 't' 'a' 'n' /. makeToken($_FUNCTION); ./
            | 'l' 'n' /. makeToken($_FUNCTION); ./
            | 'a' 'v' 'g' /. makeToken($_FUNCTIONMULTI); ./
            | 'm' 'a' 'x' /. makeToken($_FUNCTIONMULTI); ./
            | 'm' 'i' 'n' /. makeToken($_FUNCTIONMULTI); ./
            | 's' 'u' 'm' /. makeToken($_FUNCTIONMULTI); ./
            | FLOAT /. makeToken($_FLOAT); ./
            | INT /. makeToken($_INT); ./
            | identifier /. makeToken($_ID); ./
            | white /. skipToken(); ./

    FLOAT ::= Digits '.' DigitsOpt
            | '.' Digits
    DigitsOpt ::= $empty | Digits
    INT ::= Digits
    Digits ::= Digit | Digits Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    identifier ::= IdStart IdRest
    IdStart -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z | _
    IdRest ::= $empty | IdRest IdChar
    IdChar -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z | _ | Digit

    white ::= WSChar | white WSChar
    WSChar -> Space | HT | FF | LF | CR
%End
