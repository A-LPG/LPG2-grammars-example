-- DCM Lexer (LPG) — subset covering synthesized examples
%Options list
%Options fp=DcmLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.dcm
%options template=LexerTemplateF.gi
%options filter=DcmKWLexer.gi
%Define
    $kw_lexer_class /.$DcmKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER TEXT INT FLOAT NL HEADER
    MODULKOPF FUNKTIONEN END FKT
    VARIANTENKODIERUNG KRITERIUM FESTWERT WERT TEXTKW
    EINHEIT_W LANGNAME DISPLAYNAME
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
    Token ::= HEADER /. makeToken($_HEADER); ./
            | NL /. makeToken($_NL); ./
            | TEXT /. makeToken($_TEXT); ./
            | FLOAT /. makeToken($_FLOAT); ./
            | INT /. makeToken($_INT); ./
            | identifier /. checkForKeyWord(); ./
            | comment /. skipToken(); ./
            | white /. skipToken(); ./

    -- 'KONSERVIERUNG_FORMAT 2.0'
    HEADER ::= 'K' 'O' 'N' 'S' 'E' 'R' 'V' 'I' 'E' 'R' 'U' 'N' 'G' '_'
               'F' 'O' 'R' 'M' 'A' 'T' Space '2' '.' '0'

    NL ::= LF | CR LF | CR

    identifier ::= Letter | identifier Letter | identifier Digit
                 | identifier '_' | identifier '[' | identifier ']' | identifier '.'

    INT ::= OptMinus Digits
    FLOAT ::= OptMinus Digits '.' DigitsOpt | OptMinus '.' Digits
    OptMinus -> $empty | '-'
    Digits ::= Digit | Digits Digit
    DigitsOpt -> $empty | Digits

    TEXT ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ | SLBody Escape
    Escape ::= '\' EscapeChar
    EscapeChar -> b | t | n | f | r | DoubleQuote | SingleQuote | BackSlash
    NotDQ -> Letter | Digit | Special | Space | HT | FF | AfterASCII | '_'
    Special -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '~' | '%' | '&' | '^' | ':' | ';' | '|' |
               '{' | '}' | '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$'

    comment ::= '*' CommentBody | '!' CommentBody
    CommentBody -> $empty | CommentBody CommentChar
    CommentChar -> Letter | Digit | Special | Space | HT | FF | AfterASCII | '_' | '"' | "'"

    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    white -> Space | HT | FF | white Space | white HT | white FF
%End
