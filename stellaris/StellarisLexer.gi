-- Stellaris Lexer (LPG)
-- Ported from antlr/grammars-v4 stellaris/stellaris.g4

%Options list
%Options fp=StellarisLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.stellaris
%options template=LexerTemplateF.gi
%options filter=StellarisKWLexer.gi

%Define
    $kw_lexer_class /.$StellarisKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    STRING
    INTEGER
    EQ
    GT
    LT
    DOT
    AT
    COLON
    LBRACE
    RBRACE
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
    Token ::= comment      /. skipToken(); ./
            | '='          /. makeToken($_EQ); ./
            | '>'          /. makeToken($_GT); ./
            | '<'          /. makeToken($_LT); ./
            | '.'          /. makeToken($_DOT); ./
            | '@'          /. makeToken($_AT); ./
            | ':'          /. makeToken($_COLON); ./
            | '{'          /. makeToken($_LBRACE); ./
            | '}'          /. makeToken($_RBRACE); ./
            | string       /. makeToken($_STRING); ./
            | integer      /. makeToken($_INTEGER); ./
            | identifier   /. makeToken($_IDENTIFIER); ./
            | white        /. skipToken(); ./

    comment ::= '#' CommentBody
    CommentBody -> $empty | CommentBody NotNL
    NotNL -> Letter | Digit | Special | Space | HT | FF | AfterASCII | '_'

    Special -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
               '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
               '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\'

    string ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | LF | CR | AfterASCII | '_'
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\'

    integer ::= OptSign Digits
    OptSign -> $empty | '+' | '-'
    Digits -> Digit | Digits Digit

    identifier ::= Letter IdBodyOpt
    IdBodyOpt -> $empty | IdBody
    IdBody -> IdChar | IdBody IdChar
    IdChar -> Letter | Digit | '_'

    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
              n | o | p | q | r | s | t | u | v | w | x | y | z |
              A | B | C | D | E | F | G | H | I | J | K | L | M |
              N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
