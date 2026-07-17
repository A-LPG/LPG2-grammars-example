-- FDO91 Lexer (LPG)

%Options list
%Options fp=Fdo91Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.fdo91
%options template=LexerTemplateF.gi
%options filter=Fdo91KWLexer.gi

%Define
    $kw_lexer_class /.$Fdo91KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    ATOM_DOLLAR
    ID
    GID
    NUMBER
    STRING
    LT
    GT
    COMMA
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
    Token ::= ATOM_DOLLAR /. makeToken($_ATOM_DOLLAR); ./
            | GID         /. makeToken($_GID); ./
            | NUMBER      /. makeToken($_NUMBER); ./
            | STRING      /. makeToken($_STRING); ./
            | ID          /. makeToken($_ID); ./
            | '<'         /. makeToken($_LT); ./
            | '>'         /. makeToken($_GT); ./
            | ','         /. makeToken($_COMMA); ./
            | white       /. skipToken(); ./
            | comment     /. skipToken(); ./

    -- 'atom$'
    ATOM_DOLLAR ::= a t o m '$'

    -- ID: [a-zA-Z_]+
    ID ::= IdChar
         | ID IdChar
    IdChar -> LowerCaseLetter | UpperCaseLetter | _

    -- GID: NUMBER '-' NUMBER ('-' NUMBER)?
    GID ::= Digits '-' Digits
          | Digits '-' Digits '-' Digits

    -- NUMBER: [0-9]+
    NUMBER ::= Digits
    Digits ::= Digit | Digits Digit

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    -- STRING: '"' ~["\r\n]* '"'
    STRING ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> LowerCaseLetter | UpperCaseLetter | Digit | SpecialNotDQ | Space | HT | FF | AfterASCII | _
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' | '%' | '&' | '^'
                  | ':' | ';' | "'" | '|' | '{' | '}' | '[' | ']' | '?' | ',' | '.' | '<' | '>'
                  | '=' | '#' | '$' | '\'

    -- # ~[\r\n]*
    comment ::= '#' CommentBody
    CommentBody -> $empty | CommentBody CommentChar
    CommentChar -> LowerCaseLetter | UpperCaseLetter | Digit | SpecialComment | Space | HT | FF | AfterASCII | _
    SpecialComment -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' | '%' | '&' | '^'
                    | ':' | ';' | "'" | '"' | '|' | '{' | '}' | '[' | ']' | '?' | ',' | '.' | '<' | '>'
                    | '=' | '$' | '\'

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
