-- Ltl Lexer (LPG)
%Options list
%Options fp=LtlLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.ltl
%options template=LexerTemplateF.gi
%options filter=LtlKWLexer.gi
%Define
    $kw_lexer_class /.$LtlKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    ATOMIC
    LTL_UNTIL
    LTL_GLOBALLY
    LTL_FINALLY
    LTL_NEXT
    LTL_WEAK
    LTL_RELEASE
    LTL_ARROW
    LTL_AND
    LTL_OR
    LTL_NOT
    TRUE
    FALSE
    LPAREN
    RPAREN
    X
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
    Token ::= 't' 'r' 'u' 'e'   /. makeToken($_TRUE); ./
            | 'f' 'a' 'l' 's' 'e' /. makeToken($_FALSE); ./
            | 'U' /. makeToken($_LTL_UNTIL); ./
            | 'G' /. makeToken($_LTL_GLOBALLY); ./
            | 'F' /. makeToken($_LTL_FINALLY); ./
            | 'X' /. makeToken($_LTL_NEXT); ./
            | 'W' /. makeToken($_LTL_WEAK); ./
            | 'R' /. makeToken($_LTL_RELEASE); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | ATOMIC /. makeToken($_ATOMIC); ./
            | AfterASCII /. makeToken($_LTL_ARROW); ./
            | white /. skipToken(); ./

    ATOMIC ::= LowerCaseLetter | ATOMIC LowerCaseLetter

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
