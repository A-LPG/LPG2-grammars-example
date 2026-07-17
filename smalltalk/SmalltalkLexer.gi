-- Smalltalk Lexer (LPG)
%Options list
%Options fp=SmalltalkLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.smalltalk
%options template=LexerTemplateF.gi
%options filter=SmalltalkKWLexer.gi
%Define
    $kw_lexer_class /.$SmalltalkKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    STRING
    NUMBER
    PERIOD PIPE CARROT SEMI_COLON ASSIGNMENT
    HASH LPAREN RPAREN LBRACKET RBRACKET
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
    Token ::= '.' /. makeToken($_PERIOD); ./
            | '|' /. makeToken($_PIPE); ./
            | '^' /. makeToken($_CARROT); ./
            | ';' /. makeToken($_SEMI_COLON); ./
            | ':' '=' /. makeToken($_ASSIGNMENT); ./
            | '#' /. makeToken($_HASH); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | STRING /. makeToken($_STRING); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | identifier /. makeToken($_IDENTIFIER); ./
            | white /. skipToken(); ./
            | comment /. skipToken(); ./

    identifier ::= Letter LetterOrDigitStar
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z | _
    LetterOrDigitStar -> $empty | LetterOrDigitStar LetterOrDigit
    LetterOrDigit -> Letter | Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    NUMBER ::= DigitPlus
    DigitPlus ::= Digit | DigitPlus Digit

    STRING ::= "'" SLBody "'"
    SLBody -> $empty | SLBody NotSQ
    NotSQ -> Letter | Digit | Special | Space | HT | FF | AfterASCII
           | '"' | '\' | '!' | '@' | '`' | '~' | '%' | '&' | '^' | ':' | ';'
           | '|' | '{' | '}' | '[' | ']' | '?' | ',' | '.' | '<' | '>' | '='
           | '#' | '$' | '+' | '-' | '/' | '(' | ')' | '*'
           | "'" "'"

    comment ::= '"' CommentBody '"'
    CommentBody -> $empty | CommentBody NotDQ
    NotDQ -> Letter | Digit | Special | Space | HT | FF | AfterASCII | "'" | '\'
           | '!' | '@' | '`' | '~' | '%' | '&' | '^' | ':' | ';' | '|'
           | '{' | '}' | '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$'
           | '+' | '-' | '/' | '(' | ')' | '*'

    Special -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~'
             | '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}'
             | '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$'

    white ::= WSChar | white WSChar
    WSChar -> Space | HT | FF | LF | CR
%End
