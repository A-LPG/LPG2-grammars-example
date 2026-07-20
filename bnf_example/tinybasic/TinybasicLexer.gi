-- Tinybasic Lexer (LPG)
%Options list
%Options fp=TinybasicLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.tinybasic
%options template=LexerTemplateF.gi
%options filter=TinybasicKWLexer.gi
%Define
    $kw_lexer_class /.$TinybasicKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    DIGIT
    STRING
    NL
    PLUS
    MINUS
    STAR
    SLASH
    EQUAL
    LESS
    GREATER
    COMMA
    PRINT
    IF
    THEN
    GOTO
    INPUT
    LET
    GOSUB
    RETURN
    CLEAR
    LIST
    RUN
    END
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
    Token ::= Digit     /. makeToken($_DIGIT); ./
            | STRING    /. makeToken($_STRING); ./
            | NL        /. makeToken($_NL); ./
            | '+'       /. makeToken($_PLUS); ./
            | '-'       /. makeToken($_MINUS); ./
            | '*'       /. makeToken($_STAR); ./
            | '/'       /. makeToken($_SLASH); ./
            | '='       /. makeToken($_EQUAL); ./
            | '<'       /. makeToken($_LESS); ./
            | '>'       /. makeToken($_GREATER); ./
            | ','       /. makeToken($_COMMA); ./
            | identifier /. checkForKeyWord(); ./
            | white     /. skipToken(); ./

    identifier ::= UpperCaseLetter
                 | identifier UpperCaseLetter

    STRING ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | LeftBrace | RightBrace |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'

    NL ::= LF | CR LF | CR

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> Space | HT | white Space | white HT
%End
