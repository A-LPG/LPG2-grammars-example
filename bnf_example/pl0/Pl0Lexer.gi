-- PL/0 Lexer (LPG)
%Options list
%Options fp=Pl0Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.pl0
%options template=LexerTemplateF.gi
%options filter=Pl0KWLexer.gi
%Define
    $kw_lexer_class /.$Pl0KWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    NUMBER
    DOT COMMA SEMI ASSIGN EQ HASH LT LE GT GE
    PLUS MINUS STAR SLASH LPAREN RPAREN QUESTION BANG
    WRITE
    WHILE
    DO
    IF
    THEN
    ODD
    BEGIN
    END
    CALL
    CONST
    VAR
    PROCEDURE
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
    Token ::= '.' /. makeToken($_DOT); ./
            | ',' /. makeToken($_COMMA); ./
            | ';' /. makeToken($_SEMI); ./
            | ':' '=' /. makeToken($_ASSIGN); ./
            | '=' /. makeToken($_EQ); ./
            | '#' /. makeToken($_HASH); ./
            | '<' '=' /. makeToken($_LE); ./
            | '>' '=' /. makeToken($_GE); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_STAR); ./
            | '/' /. makeToken($_SLASH); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '?' /. makeToken($_QUESTION); ./
            | '!' /. makeToken($_BANG); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | identifier /. checkForKeyWord(); ./
            | white /. skipToken(); ./

    NUMBER ::= Digit | NUMBER Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    identifier ::= Letter | identifier Letter
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    white ::= WSChar | white WSChar
    WSChar -> Space | HT | FF | LF | CR
%End
