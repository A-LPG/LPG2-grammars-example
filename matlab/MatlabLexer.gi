-- Matlab Lexer (LPG) — covers simple assignment examples
%Options list
%Options fp=MatlabLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.matlab
%options template=LexerTemplateF.gi
%options filter=MatlabKWLexer.gi
%Define
    $kw_lexer_class /.$MatlabKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    CONSTANT
    STRING_LITERAL
    EQ COMMA LPAREN RPAREN LBRACKET RBRACKET
    PLUS MINUS STAR SLASH
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
    Token ::= '=' /. makeToken($_EQ); ./
            | ',' /. makeToken($_COMMA); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_STAR); ./
            | '/' /. makeToken($_SLASH); ./
            | STRING_LITERAL /. makeToken($_STRING_LITERAL); ./
            | CONSTANT /. makeToken($_CONSTANT); ./
            | identifier /. makeToken($_IDENTIFIER); ./
            | white /. skipToken(); ./
            | comment /. skipToken(); ./

    identifier ::= Letter LetterOrDigitStar
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z | _
    LetterOrDigitStar -> $empty | LetterOrDigitStar LetterOrDigit
    LetterOrDigit -> Letter | Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    CONSTANT ::= DigitPlus OptFrac
    DigitPlus ::= Digit | DigitPlus Digit
    OptFrac -> $empty | '.' DigitPlus

    STRING_LITERAL ::= "'" SLBody "'"
    SLBody -> $empty | SLBody NotSQ
    NotSQ -> Letter | Digit | SpecialNotSQ | Space | HT | FF
    SpecialNotSQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~'
                  | '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}'
                  | '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '"'
                  | "'" "'"

    comment ::= '%' NotNLStar
    NotNLStar -> $empty | NotNLStar NotNL
    NotNL -> Letter | Digit | SpecialNotSQ | Space | HT | FF | AfterASCII | '\' | '"'

    white ::= WSChar | white WSChar
    WSChar -> Space | HT | FF | LF | CR
%End
