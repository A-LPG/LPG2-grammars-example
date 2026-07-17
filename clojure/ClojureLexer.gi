-- Clojure Lexer (LPG)
%Options list
%Options fp=ClojureLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.clojure
%options template=LexerTemplateF.gi
%options filter=ClojureKWLexer.gi
%Define
    $kw_lexer_class /.$ClojureKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    STRING NUMBER CHARACTER KEYWORD
    LPAREN RPAREN LBRACKET RBRACKET LBRACE RBRACE
    QUOTE BACKTICK TILDE AT CARET HASH
    NIL TRUE FALSE
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
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | SingleQuote /. makeToken($_QUOTE); ./
            | '`' /. makeToken($_BACKTICK); ./
            | '~' /. makeToken($_TILDE); ./
            | '@' /. makeToken($_AT); ./
            | '^' /. makeToken($_CARET); ./
            | '#' /. makeToken($_HASH); ./
            | STRING /. makeToken($_STRING); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | CHARACTER /. makeToken($_CHARACTER); ./
            | KEYWORD /. makeToken($_KEYWORD); ./
            | identifier /. checkForKeyWord(); ./
            | white /. skipToken(); ./
            | comment /. skipToken(); ./


    identifier ::= Letter LetterOrDigitStar
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z | _
    LetterOrDigitStar -> $empty | LetterOrDigitStar LetterOrDigit
    LetterOrDigit -> Letter | Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9


    STRING ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | Special | Space | HT | FF | Escape
    Escape ::= '\' EscapeChar
    EscapeChar -> '"' | '\' | '/' | 'b' | 'f' | 'n' | 'r' | 't' | Letter | Digit
    Special -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
               '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' |
               '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | "'" | '_'

    NUMBER ::= DigitPlus OptFrac
    DigitPlus ::= Digit | DigitPlus Digit
    OptFrac -> $empty | '.' DigitPlus

    CHARACTER ::= '\' Letter
    KEYWORD ::= ':' identifier

    comment ::= ';' NotNLStar
    NotNLStar -> $empty | NotNLStar NotNL
    NotNL -> Letter | Digit | Special | Space | HT | FF | AfterASCII | '"' | "'" | '\'


    white ::= WSChar | white WSChar
    WSChar -> Space | HT | FF | LF | CR

%End
