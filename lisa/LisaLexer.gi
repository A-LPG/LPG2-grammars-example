-- LisaLexer (LPG)
%Options list
%Options fp=LisaLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.lisa
%options template=LexerTemplateF.gi
%options filter=LisaKWLexer.gi
%Define
    $kw_lexer_class /.$LisaKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    DECLARE
    PROGRAM
    GENERATE
    RANDOM
    ENUMERATE
    BREAK
    CONTINUE
    IF
    WHILE
    TRUE
    FALSE
    NEXT
    HASNEXT
    INT
    DFA
    NFA
    REGEX
    BOOL
    STRING_T
    INTEGER
    STRINGLITERAL
    ID
    LBRACE
    RBRACE
    LPAREN
    RPAREN
    SEMI
    COMMA
    ASSIGN
    PLUS_EQ
    MINUS_PLUS
    STAR_EQ
    SLASH_EQ
    OROR
    ANDAND
    NOT
    LE
    GE
    EQEQ
    NE
    GT
    LT
    PLUS
    MINUS
    STAR
    SLASH
    PERCENT
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
    Token ::= '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | ';' /. makeToken($_SEMI); ./
            | ',' /. makeToken($_COMMA); ./
            | '+' '=' /. makeToken($_PLUS_EQ); ./
            | '-' '+' /. makeToken($_MINUS_PLUS); ./
            | '*' '=' /. makeToken($_STAR_EQ); ./
            | '/' '=' /. makeToken($_SLASH_EQ); ./
            | '=' '=' /. makeToken($_EQEQ); ./
            | '=' /. makeToken($_ASSIGN); ./
            | '|' '|' /. makeToken($_OROR); ./
            | '&' '&' /. makeToken($_ANDAND); ./
            | '!' '=' /. makeToken($_NE); ./
            | '!' /. makeToken($_NOT); ./
            | '<' '=' /. makeToken($_LE); ./
            | '>' '=' /. makeToken($_GE); ./
            | '>' /. makeToken($_GT); ./
            | '<' /. makeToken($_LT); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_STAR); ./
            | line_comment /. skipToken(); ./
            | '/' /. makeToken($_SLASH); ./
            | '%' /. makeToken($_PERCENT); ./
            | STRINGLITERAL /. makeToken($_STRINGLITERAL); ./
            | INTEGER /. makeToken($_INTEGER); ./
            | identifier /. checkForKeyWord(); ./
            | white /. skipToken(); ./

    STRINGLITERAL ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | LeftBrace | RightBrace |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'

    INTEGER ::= NonZero DigitsOpt
    NonZero -> 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    DigitsOpt -> $empty | Digits
    Digits ::= Digit | Digits Digit

    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit
                 | identifier '_'

    line_comment ::= '/' '/' LineBody
    LineBody -> $empty | LineBody LineChar
    LineChar -> Letter | Digit | SpecialLine | Space | HT | FF
    SpecialLine -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                   '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | LeftBrace | RightBrace |
                   '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'

    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
