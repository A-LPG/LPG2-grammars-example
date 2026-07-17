-- Prolog Lexer (LPG) — covers examples/example1.txt
%Options list
%Options fp=PrologLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.prolog
%options template=LexerTemplateF.gi
%options filter=PrologKWLexer.gi
%Define
    $kw_lexer_class /.$PrologKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    ATOM
    VARIABLE
    INTEGER
    FLOAT
    LPAREN RPAREN LBRACKET RBRACKET LBRACE RBRACE
    COMMA DOT PIPE
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
            | ',' /. makeToken($_COMMA); ./
            | '.' /. makeToken($_DOT); ./
            | '|' /. makeToken($_PIPE); ./
            | VARIABLE /. makeToken($_VARIABLE); ./
            | FLOAT /. makeToken($_FLOAT); ./
            | INTEGER /. makeToken($_INTEGER); ./
            | atom /. makeToken($_IDENTIFIER); ./
            | white /. skipToken(); ./
            | comment /. skipToken(); ./

    VARIABLE ::= Upper LetterOrDigitStar
               | '_' LetterOrDigitPlus

    Upper -> A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    LetterOrDigitStar -> $empty | LetterOrDigitStar LetterOrDigit
    LetterOrDigitPlus ::= LetterOrDigit | LetterOrDigitPlus LetterOrDigit
    LetterOrDigit -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | _

    atom ::= Lower LetterOrDigitStar
    Lower -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z

    INTEGER ::= DigitPlus
    DigitPlus ::= Digit | DigitPlus Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    FLOAT ::= DigitPlus '.' DigitPlus

    comment ::= '%' NotNLStar
    NotNLStar -> $empty | NotNLStar NotNL
    NotNL -> Letter | Digit | Special | Space | HT | FF
           | AfterASCII | '"' | "'" | '\'
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z | _
    Special -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~'
             | '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}'
             | '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$'

    white ::= WSChar | white WSChar
    WSChar -> Space | HT | FF | LF | CR
%End
