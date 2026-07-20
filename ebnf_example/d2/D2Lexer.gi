-- D2 Lexer (LPG)
-- Ported from antlr/grammars-v4 d2/D2.g4

%Options list
%Options fp=D2Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.d2
%options template=LexerTemplateF.gi
%options filter=D2KWLexer.gi

%Define
    $kw_lexer_class /.$D2KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    NUMBER
    STRING
    LBRACK
    RBRACK
    LBRACE
    RBRACE
    COLON
    COMMA
    DOT
    ARROW
    LARROW
    DASH
    TRUE
    FALSE
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
    Token ::= '[' /. makeToken($_LBRACK); ./
            | ']' /. makeToken($_RBRACK); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | ':' /. makeToken($_COLON); ./
            | ',' /. makeToken($_COMMA); ./
            | '.' /. makeToken($_DOT); ./
            | ARROW /. makeToken($_ARROW); ./
            | LARROW /. makeToken($_LARROW); ./
            | DASH /. makeToken($_DASH); ./
            | STRING /. makeToken($_STRING); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | identifier /. checkForKeyWord(); ./
            | comment /. skipToken(); ./
            | white /. skipToken(); ./

    ARROW ::= '-' '>'
    LARROW ::= '<' '-'
    DASH ::= '-' '-'

    identifier ::= IdStart
                 | identifier IdChar

    IdStart -> Letter | _
    IdChar -> Letter | Digit | _ | "'" | '-'

    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    NUMBER ::= OptMinus Digits OptFrac
    OptMinus -> $empty | '-'
    Digits ::= Digit | Digits Digit
    OptFrac -> $empty | '.' Digits

    STRING ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ | SLBody EscapeSequence
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | AfterASCII | _
    EscapeSequence ::= '\' EscapeChar
    EscapeChar -> DoubleQuote | BackSlash | Slash | b | f | n | r | t
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$'

    comment ::= '#' CommentBody
    CommentBody -> $empty | CommentBody CommentChar
    CommentChar -> Letter | Digit | SpecialNotDQ | Space | HT | FF | AfterASCII | _
                 | DoubleQuote | BackSlash

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
