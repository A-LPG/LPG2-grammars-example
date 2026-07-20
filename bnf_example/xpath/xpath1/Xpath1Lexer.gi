-- Xpath1 Lexer (LPG)
%Options list
%Options fp=Xpath1Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.xpath.xpath1
%options template=LexerTemplateF.gi
%options filter=Xpath1KWLexer.gi
%Define
    $kw_lexer_class /.$Xpath1KWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    NUMBER LITERAL
    SLASH DSLASH DOT DOTDOT AT DOLLAR
    LPAREN RPAREN LBRACKET RBRACKET
    COLON COLONCOLON COMMA STAR
    PLUS MINUS LT GT LE GE EQ NEQ
    AND OR MOD DIV COMMENT TEXT NODE
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

    Token ::= '/' '/' /. makeToken($_DSLASH); ./
            | '/' /. makeToken($_SLASH); ./
            | '.' '.' /. makeToken($_DOTDOT); ./
            | '.' /. makeToken($_DOT); ./
            | '@' /. makeToken($_AT); ./
            | '$' /. makeToken($_DOLLAR); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | ':' ':' /. makeToken($_COLONCOLON); ./
            | ':' /. makeToken($_COLON); ./
            | ',' /. makeToken($_COMMA); ./
            | '*' /. makeToken($_STAR); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '<' '=' /. makeToken($_LE); ./
            | '>' '=' /. makeToken($_GE); ./
            | '!' '=' /. makeToken($_NEQ); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | '=' /. makeToken($_EQ); ./
            | LITERAL /. makeToken($_LITERAL); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | identifier /. checkForKeyWord(); ./
            | white /. skipToken(); ./


    identifier ::= Letter LetterOrDigitStar
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z | _
    LetterOrDigitStar -> $empty | LetterOrDigitStar LetterOrDigit
    LetterOrDigit -> Letter | Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9


    LITERAL ::= '"' SLBody '"' | "'" SQBody "'"
    SLBody -> $empty | SLBody NotDQ
    SQBody -> $empty | SQBody NotSQ
    NotDQ -> Letter | Digit | Special | Space | HT | FF
    NotSQ -> Letter | Digit | Special | Space | HT | FF | '"'
    Special -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
               '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' |
               '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'
    NUMBER ::= DigitPlus OptFrac
    DigitPlus ::= Digit | DigitPlus Digit
    OptFrac -> $empty | '.' DigitPlus


    white ::= WSChar | white WSChar
    WSChar -> Space | HT | FF | LF | CR

%End
