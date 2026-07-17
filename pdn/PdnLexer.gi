-- Pdn Lexer (LPG)
%Options list
%Options fp=PdnLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.pdn
%options template=LexerTemplateF.gi
%options filter=PdnKWLexer.gi
%Define
    $kw_lexer_class /.$PdnKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    MOVE1
    MOVE2
    MOVENUM
    TEXT
    STRING
    DRAW
    LBRACKET
    RBRACKET
    STAR
    X
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
    Token ::= DRAW      /. makeToken($_DRAW); ./
            | MOVE1     /. makeToken($_MOVE1); ./
            | MOVE2     /. makeToken($_MOVE2); ./
            | MOVENUM   /. makeToken($_MOVENUM); ./
            | TEXT      /. makeToken($_TEXT); ./
            | STRING    /. makeToken($_STRING); ./
            | '['       /. makeToken($_LBRACKET); ./
            | ']'       /. makeToken($_RBRACKET); ./
            | '*'       /. makeToken($_STAR); ./
            | comment   /. skipToken(); ./
            | white     /. skipToken(); ./

    -- Draw result only (1-0 / 0-1 are MOVE2 tokens accepted in result_list)
    DRAW ::= '1' '/' '2' '-' '1' '/' '2'

    MOVE1 ::= Digits 'x' Digits
    MOVE2 ::= Digits '-' Digits
    MOVENUM ::= Digits '.'
    Digits ::= Digit | Digits Digit

    TEXT ::= Letter LetterOrDigit
           | TEXT LetterOrDigit
    LetterOrDigit -> Letter | Digit

    STRING ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ | SLBody EscQuote
    EscQuote ::= '"' '"'
    NotDQ -> Letter | Digit | SpecialInString | Space | HT | FF | LF | CR | AfterASCII
    SpecialInString -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                       '%' | '&' | '^' | ':' | ';' | "'" | '|' | LeftBrace | RightBrace |
                       '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\' | '_'

    comment ::= LeftBrace CommentBody RightBrace
    CommentBody -> $empty | CommentBody NotRBrace
    NotRBrace -> Letter | Digit | SpecialComment | Space | HT | FF | LF | CR | AfterASCII | '"'
    SpecialComment -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                      '%' | '&' | '^' | ':' | ';' | "'" | '|' |
                      '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\' | '_'

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
