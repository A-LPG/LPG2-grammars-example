-- Bio Lexer (LPG)
-- Ported from antlr/grammars-v4 esolang/bio/bio.g4 for parse-level examples.

%Options list
%Options fp=BioLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.esolang.bio
%options template=LexerTemplateF.gi
%options filter=BioKWLexer.gi

%Define
    $kw_lexer_class /.$BioKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    ZERO_O
    ONE_O
    ZERO_I
    ONE_I
    BLOCK_X
    BLOCK_Y
    BLOCK_Z
    SEMI
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
    Token ::= ';'     /. makeToken($_SEMI); ./
            | '{'     /. makeToken($_LBRACE); ./
            | '}'     /. makeToken($_RBRACE); ./
            | ZERO_O  /. makeToken($_ZERO_O); ./
            | ONE_O   /. makeToken($_ONE_O); ./
            | ZERO_I  /. makeToken($_ZERO_I); ./
            | ONE_I   /. makeToken($_ONE_I); ./
            | BLOCK_X /. makeToken($_BLOCK_X); ./
            | BLOCK_Y /. makeToken($_BLOCK_Y); ./
            | BLOCK_Z /. makeToken($_BLOCK_Z); ./
            | white   /. skipToken(); ./
            | COMMENT /. skipToken(); ./

    ZERO_O ::= 0 o
    ONE_O ::= 1 o
    ZERO_I ::= 0 i
    ONE_I ::= 1 i

    BLOCK_X ::= x
    BLOCK_Y ::= y
    BLOCK_Z ::= z


    COMMENT ::= '/' '/' CommentBody

    CommentBody -> NotNL
                 | CommentBody NotNL

    NotNL -> Letter
           | Digit
           | SpecialNotNL
           | Space
           | HT
           | FF
           | AfterASCII

    Letter -> LowerCaseLetter
            | UpperCaseLetter
            | _

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    SpecialNotNL -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\' | '_'

    white -> WSChar
           | white WSChar

    WSChar -> Space | LF | CR | HT
%End
