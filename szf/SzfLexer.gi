-- SZF Lexer (LPG)

%Options list
%Options fp=SzfLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.szf
%options template=LexerTemplateF.gi
%options filter=SzfKWLexer.gi

%Define
    $kw_lexer_class /.$SzfKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    HEADER_START
    REGION_START
    ID
    NUM
    EQUAL
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
    Token ::= HEADER_START /. makeToken($_HEADER_START); ./
            | REGION_START /. makeToken($_REGION_START); ./
            | '='          /. makeToken($_EQUAL); ./
            | NUM          /. makeToken($_NUM); ./
            | ID           /. makeToken($_ID); ./
            | white        /. skipToken(); ./
            | comment      /. skipToken(); ./

    HEADER_START ::= '<' g r o u p '>'
    REGION_START ::= '<' r e g i o n '>'

    -- ID: [a-zA-Z] [a-zA-Z0-9._/#]*
    ID ::= IdStart
         | ID IdCont

    IdStart -> LowerCaseLetter | UpperCaseLetter
    IdCont -> LowerCaseLetter | UpperCaseLetter | Digit | '.' | '_' | '/' | '#'

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- NUM: [0-9]+ ('.' [0-9]+)?
    NUM ::= Digits
          | Digits '.' Digits
    Digits ::= Digit | Digits Digit

    -- // ~[\r\n]*
    comment ::= '/' '/' CommentBody
    CommentBody -> $empty | CommentBody CommentChar
    CommentChar -> Letter | Digit | SpecialComment | Space | HT | FF | AfterASCII
                 | '=' | '<' | '>'
    Letter -> LowerCaseLetter | UpperCaseLetter | _
    SpecialComment -> '+' | '-' | '(' | ')' | '*' | '!' | '@' | '`' | '~' | '%' | '&'
                    | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' | '[' | ']' | '?'
                    | ',' | '.' | '#' | '$' | '\' | '_' | '/'

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
