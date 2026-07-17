-- Corundum Lexer (LPG)
%Options list
%Options fp=CorundumLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.corundum
%options template=LexerTemplateF.gi
%options filter=CorundumKWLexer.gi
%Define
    $kw_lexer_class /.$CorundumKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    STRING NUMBER
    LPAREN RPAREN LBRACE RBRACE LBRACKET RBRACKET
    COMMA DOT COLON SEMI EQ PLUS MINUS STAR SLASH LT GT
    DEF
    END
    IF
    ELSE
    WHILE
    DO
    TRUE
    FALSE
    NIL
    CLASS
    RETURN
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

    Token ::= '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | ',' /. makeToken($_COMMA); ./
            | '.' /. makeToken($_DOT); ./
            | ':' /. makeToken($_COLON); ./
            | ';' /. makeToken($_SEMI); ./
            | '=' /. makeToken($_EQ); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_STAR); ./
            | '/' /. makeToken($_SLASH); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | STRING /. makeToken($_STRING); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | identifier /. checkForKeyWord(); ./
            | white /. skipToken(); ./
            | line_comment /. skipToken(); ./
            | hash_comment /. skipToken(); ./

    identifier ::= Letter LetterOrDigitStar
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z | _
    LetterOrDigitStar -> $empty | LetterOrDigitStar LetterOrDigit
    LetterOrDigit -> Letter | Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    STRING ::= '"' SLBody '"' | "'" SQBody "'"
    SLBody -> $empty | SLBody NotDQ
    SQBody -> $empty | SQBody NotSQ
    NotDQ -> Letter | Digit | Special | Space | HT | FF | Escape
    NotSQ -> Letter | Digit | Special | Space | HT | FF | '"' | Escape
    Escape ::= '\' EscapeChar
    EscapeChar -> '"' | "'" | '\' | '/' | 'b' | 'f' | 'n' | 'r' | 't' | Letter | Digit
    Special -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' | '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' | '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'
    NUMBER ::= DigitPlus OptFrac
    DigitPlus ::= Digit | DigitPlus Digit
    OptFrac -> $empty | '.' DigitPlus
    line_comment ::= '/' '/' NotNLStar
    hash_comment ::= '#' NotNLStar
    NotNLStar -> $empty | NotNLStar NotNL
    NotNL -> Letter | Digit | Special | Space | HT | FF | AfterASCII | '"' | "'" | '\'

    white ::= WSChar | white WSChar
    WSChar -> Space | HT | FF | LF | CR
%End
