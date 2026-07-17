-- Janus Lexer (LPG)
-- Ported from antlr/grammars-v4 janus/janus.g4

%Options list
%Options fp=JanusLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.janus
%options template=LexerTemplateF.gi
%options filter=JanusKWLexer.gi

%Define
    $kw_lexer_class /.$JanusKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    NUM
    PROCEDURE
    IF
    THEN
    ELSE
    FI
    FROM
    DO
    LOOP
    UNTIL
    CALL
    UNCALL
    READ
    WRITE
    PLUS_EQ
    MINUS_EQ
    BANG_EQ
    SWAP_EQ
    COLON
    LPAREN
    RPAREN
    LBRACKET
    RBRACKET
    TILDE
    MINUS
    BINOP
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
    Token ::= 'P' 'R' 'O' 'C' 'E' 'D' 'U' 'R' 'E' /. makeToken($_PROCEDURE); ./
            | 'I' 'F' /. makeToken($_IF); ./
            | 'T' 'H' 'E' 'N' /. makeToken($_THEN); ./
            | 'E' 'L' 'S' 'E' /. makeToken($_ELSE); ./
            | 'F' 'I' /. makeToken($_FI); ./
            | 'F' 'R' 'O' 'M' /. makeToken($_FROM); ./
            | 'D' 'O' /. makeToken($_DO); ./
            | 'L' 'O' 'O' 'P' /. makeToken($_LOOP); ./
            | 'U' 'N' 'T' 'I' 'L' /. makeToken($_UNTIL); ./
            | 'U' 'N' 'C' 'A' 'L' 'L' /. makeToken($_UNCALL); ./
            | 'C' 'A' 'L' 'L' /. makeToken($_CALL); ./
            | 'R' 'E' 'A' 'D' /. makeToken($_READ); ./
            | 'W' 'R' 'I' 'T' 'E' /. makeToken($_WRITE); ./
            | '+' '=' /. makeToken($_PLUS_EQ); ./
            | '-' '=' /. makeToken($_MINUS_EQ); ./
            | '!' '=' /. makeToken($_BANG_EQ); ./
            | '<' '=' '>' /. makeToken($_SWAP_EQ); ./
            | '<' '=' /. makeToken($_BINOP); ./
            | '>' '=' /. makeToken($_BINOP); ./
            | '+' /. makeToken($_BINOP); ./
            | '-' /. makeToken($_MINUS); ./
            | '!' /. makeToken($_BINOP); ./
            | '<' /. makeToken($_BINOP); ./
            | '>' /. makeToken($_BINOP); ./
            | '&' /. makeToken($_BINOP); ./
            | '|' /. makeToken($_BINOP); ./
            | '=' /. makeToken($_BINOP); ./
            | '#' /. makeToken($_BINOP); ./
            | '*' /. makeToken($_BINOP); ./
            | '/' /. makeToken($_BINOP); ./
            | ':' /. makeToken($_COLON); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '~' /. makeToken($_TILDE); ./
            | NUM /. makeToken($_NUM); ./
            | identifier /. makeToken($_IDENTIFIER); ./
            | comment /. skipToken(); ./
            | white /. skipToken(); ./

    NUM ::= Digit

    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit

    Letter -> LowerCaseLetter
            | UpperCaseLetter

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    comment ::= ';' CommentBody
    CommentBody -> $empty
                 | CommentBody CommentChar
    CommentChar -> Letter
                 | Digit
                 | SpecialNotNL
                 | Space
                 | HT
                 | FF
                 | AfterASCII
    SpecialNotNL -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | LeftBrace | RightBrace |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | '"'

    white -> WSChar
           | white WSChar

    WSChar -> Space | LF | CR | HT | FF
%End
