-- Smiles Lexer (LPG)
%Options list
%Options fp=SmilesLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.smiles
%options template=LexerTemplateF.gi
%options filter=SmilesKWLexer.gi
%Define
    $kw_lexer_class /.$SmilesKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    LBRACKET
    RBRACKET
    LPAREN
    RPAREN
    EQ
    HASH
    COLON
    SLASH
    BSLASH
    ATAT
    AT
    PLUS
    MINUS
    PERCENT
    STAR
    DOT
    DIGIT
    LETTER
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
    Token ::= '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '=' /. makeToken($_EQ); ./
            | '#' /. makeToken($_HASH); ./
            | ':' /. makeToken($_COLON); ./
            | '/' /. makeToken($_SLASH); ./
            | BackSlash /. makeToken($_BSLASH); ./
            | '@' '@' /. makeToken($_ATAT); ./
            | '@' /. makeToken($_AT); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '%' /. makeToken($_PERCENT); ./
            | '*' /. makeToken($_STAR); ./
            | '.' /. makeToken($_DOT); ./
            | Digit /. makeToken($_DIGIT); ./
            | Letter /. makeToken($_LETTER); ./
            | white /. skipToken(); ./

    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
              n | o | p | q | r | s | t | u | v | w | x | y | z |
              A | B | C | D | E | F | G | H | I | J | K | L | M |
              N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
