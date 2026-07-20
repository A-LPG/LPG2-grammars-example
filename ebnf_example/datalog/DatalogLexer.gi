-- DatalogLexer (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

%Options list
%Options fp=DatalogLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.datalog
%options template=LexerTemplateF.gi
%options filter=DatalogKWLexer.gi

%Define
    $kw_lexer_class /.$DatalogKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    VARIABLE
    STRING
    INTEGER
    DOT
    TILDE
    QMARK
    LPAREN
    RPAREN
    COMMA
    COLON_MINUS
    EQ
    NE
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
    Token ::= '.' /. makeToken($_DOT); ./
            | '~' /. makeToken($_TILDE); ./
            | '?' /. makeToken($_QMARK); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | ',' /. makeToken($_COMMA); ./
            | ':' '-' /. makeToken($_COLON_MINUS); ./
            | '=' /. makeToken($_EQ); ./
            | '!' '=' /. makeToken($_NE); ./
            | STRING /. makeToken($_STRING); ./
            | INTEGER /. makeToken($_INTEGER); ./
            | VARIABLE /. makeToken($_VARIABLE); ./
            | identifier /. checkForKeyWord(); ./
            | comment /. skipToken(); ./
            | white /. skipToken(); ./

    VARIABLE ::= UpperCaseLetter
               | VARIABLE Letter
               | VARIABLE _

    identifier ::= LowerCaseLetter
                 | identifier Letter
                 | identifier Digit
                 | identifier '_'
                 | identifier '-'

    STRING ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | Space | HT | '.' | ',' | '-' | '_' | '(' | ')' | ':' | '/' | "'" | '+' | '=' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '*' | ';' | '<' | '>' | '[' | ']' | '{' | '}' | '|' | '\' | '`' | '~'

    INTEGER ::= Digit
              | INTEGER Digit

    comment ::= '#' CommentBody
    CommentBody -> $empty | CommentBody NotNL
    NotNL -> Letter | Digit | Space | HT | FF | Special
    Special -> '.' | ',' | '-' | '_' | '(' | ')' | ':' | '/' | "'" | '+' | '=' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '*' | ';' | '<' | '>' | '[' | ']' | '{' | '}' | '|' | '\' | '`' | '~' | DoubleQuote


    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9


    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
