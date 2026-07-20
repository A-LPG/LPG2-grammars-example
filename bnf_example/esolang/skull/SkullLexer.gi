-- Skull Lexer (LPG)

%Options list
%Options fp=SkullLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.skull
%options template=LexerTemplateF.gi
%options filter=SkullKWLexer.gi

%Define
    $kw_lexer_class /.$SkullKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    ASC
    NUM
    INT
    LBRACE
    RBRACE
    LBRACK
    RBRACK
    OR
    PLUS
    MINUS
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
    Token ::= ASC_TOK    /. makeToken($_ASC); ./
            | NUM_TOK    /. makeToken($_NUM); ./
            | '{'       /. makeToken($_LBRACE); ./
            | '}'       /. makeToken($_RBRACE); ./
            | '['        /. makeToken($_LBRACK); ./
            | ']'        /. makeToken($_RBRACK); ./
            | '|'        /. makeToken($_OR); ./
            | '+'        /. makeToken($_PLUS); ./
            | '-'        /. makeToken($_MINUS); ./
            | INT        /. makeToken($_INT); ./
            | white      /. skipToken(); ./
            | comment    /. skipToken(); ./

    -- :ASC: / :NUM:
    ASC_TOK ::= ':' A S C ':'
    NUM_TOK ::= ':' N U M ':'

    INT ::= Digit
          | INT Digit


    Letter -> LowerCaseLetter
            | UpperCaseLetter
            | _

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- // [ \t]+ ~[\r\n]*
    comment ::= '/' '/' CommentSpaces CommentBody

    CommentSpaces ::= Space
                    | HT
                    | CommentSpaces Space
                    | CommentSpaces HT

    CommentBody -> $empty
                 | CommentBody CommentChar

    CommentChar -> Letter | Digit | SpecialComment | Space | HT | FF | AfterASCII

    SpecialComment -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' | '%' | '&'
                    | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' | '[' | ']' | '?' | ','
                    | '.' | '<' | '>' | '=' | '#' | '$' | '\' | '_'

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
