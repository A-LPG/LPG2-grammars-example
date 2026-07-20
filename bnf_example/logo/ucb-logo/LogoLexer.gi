-- Logo lexer (LPG) — curated for UCB Logo subset
%Options list
%Options fp=LogoLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.logo.ucb_logo
%options template=LexerTemplateF.gi
%options filter=LogoKWLexer.gi

%Define
    $kw_lexer_class /.$LogoKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    NUMBER
    VARIABLE
    QUOTED_WORD
    LPAREN RPAREN LBRACKET RBRACKET LBRACE RBRACE
    PLUS MINUS STAR SLASH
    LT GT EQ LTEQ GTEQ LTGT
    TO
    MACRO
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
    Token ::= identifier /. checkForKeyWord(); ./
            | number     /. makeToken($_NUMBER); ./
            | variable   /. makeToken($_VARIABLE); ./
            | quoted_word /. makeToken($_QUOTED_WORD); ./
            | white /. skipToken(); ./
            | comment /. skipToken(); ./
            | '<' '=' /. makeToken($_LTEQ); ./
            | '>' '=' /. makeToken($_GTEQ); ./
            | '<' '>' /. makeToken($_LTGT); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_STAR); ./
            | '/' /. makeToken($_SLASH); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | '=' /. makeToken($_EQ); ./

    identifier ::= Letter LetterOrDigitStar
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z
            | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z
            | _
    LetterOrDigitStar -> %Empty | LetterOrDigitStar LetterOrDigit
    LetterOrDigit -> Letter | Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    number ::= DigitPlus OptFrac
    DigitPlus ::= Digit | DigitPlus Digit
    OptFrac -> %Empty | '.' DigitPlus

    variable ::= ':' identifier

    quoted_word ::= '"' identifier

    comment ::= ';' CommentBody
    CommentBody -> %Empty | CommentBody NotNL
    NotNL -> Letter | Digit | Space | HT | SpecialNotNL | AfterASCII | '"' | "'" | '\'
    SpecialNotNL -> '+' | '-' | '/' | '*' | '(' | ')' | '!' | '@' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'

    white ::= WSChar | white WSChar
    WSChar -> Space | HT | FF | LF | CR
%End
