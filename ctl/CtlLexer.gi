-- CtlLexer (LPG)
-- Ported from antlr/grammars-v4 ctl/ctl.g4
-- Unicode operators all map to CTL_OP (AfterASCII), matching ltl pattern.

%Options list
%Options fp=CtlLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.ctl
%options template=LexerTemplateF.gi
%options filter=CtlKWLexer.gi

%Define
    $kw_lexer_class /.$CtlKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
        CTL_NOT
    CTL_LEFT_RIGHT_DOUBLE_ARROW
    CTL_RIGHTWARDS_DOUBLE_ARROW
    CTL_OR
    CTL_AND
IDENTIFIER
    ATOMIC
    CTL_UNTIL
    CTL_GLOBALLY
    CTL_FINALLY
    CTL_NEXT
    CTL_INEVITABLE
    CTL_EXISTS
    CTL_OP
    LPAREN
    RPAREN
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
    Token ::= 'U' /. makeToken($_CTL_UNTIL); ./
            | 'G' /. makeToken($_CTL_GLOBALLY); ./
            | 'F' /. makeToken($_CTL_FINALLY); ./
            | 'X' /. makeToken($_CTL_NEXT); ./
            | 'A' /. makeToken($_CTL_INEVITABLE); ./
            | 'E' /. makeToken($_CTL_EXISTS); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '&' '&' /. makeToken($_CTL_AND); ./
            | '|' '|' /. makeToken($_CTL_OR); ./
            | '-' '>' /. makeToken($_CTL_RIGHTWARDS_DOUBLE_ARROW); ./
            | '<' '-' '>' /. makeToken($_CTL_LEFT_RIGHT_DOUBLE_ARROW); ./
            | '!' /. makeToken($_CTL_NOT); ./
            | AfterASCII /. makeToken($_CTL_OP); ./
            | ATOMIC /. makeToken($_ATOMIC); ./
            | white /. skipToken(); ./

    ATOMIC ::= LowerCaseLetter
             | ATOMIC LowerCaseLetter

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
