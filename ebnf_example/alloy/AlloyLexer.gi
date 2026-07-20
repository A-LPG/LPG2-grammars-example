-- Alloy Lexer (LPG)
-- Ported from antlr/grammars-v4 alloy/alloy.g4

%Options list
%Options fp=AlloyLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.alloy
%options template=LexerTemplateF.gi
%options filter=AlloyKWLexer.gi

%Define
    $kw_lexer_class /.$AlloyKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    NUMBER
    BAR
    ARROW
    DOT
    AT
    MINUS
    PLUS
    STAR
    CARET
    HASH
    TILDE
    NOT_OP
    AMP
    PLUSPLUS
    DOMAIN
    RANGE
    IMPLIES_OP
    IFF_OP
    OR_OP
    AND_OP
    LTE
    GTE
    LT
    GT
    EQ
    LPAREN
    RPAREN
    LBRACE
    RBRACE
    LBRACKET
    RBRACKET
    COMMA
    COLON
    SLASH
    MODULE
    OPEN
    AS
    ABSTRACT
    SIG
    EXTENDS
    INN
    LONE
    SOME
    ONE
    DISJ
    FACT
    PRED
    FUN
    ASSERT
    RUN
    CHECK
    FOR
    BUT
    EXACTLY
    THIS
    NONE
    UNIV
    IDEN
    NOTT
    NO
    SET
    ALL
    SUM
    ORR
    ANDD
    IFF
    IMPLIES
    ELSE
    LET
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
    Token ::= OR_OP /. makeToken($_OR_OP); ./
            | AND_OP /. makeToken($_AND_OP); ./
            | IFF_OP /. makeToken($_IFF_OP); ./
            | IMPLIES_OP /. makeToken($_IMPLIES_OP); ./
            | PLUSPLUS /. makeToken($_PLUSPLUS); ./
            | DOMAIN /. makeToken($_DOMAIN); ./
            | RANGE /. makeToken($_RANGE); ./
            | ARROW /. makeToken($_ARROW); ./
            | LTE /. makeToken($_LTE); ./
            | GTE /. makeToken($_GTE); ./
            | '|' /. makeToken($_BAR); ./
            | '.' /. makeToken($_DOT); ./
            | '@' /. makeToken($_AT); ./
            | '-' /. makeToken($_MINUS); ./
            | '+' /. makeToken($_PLUS); ./
            | '*' /. makeToken($_STAR); ./
            | '^' /. makeToken($_CARET); ./
            | '#' /. makeToken($_HASH); ./
            | '~' /. makeToken($_TILDE); ./
            | '!' /. makeToken($_NOT_OP); ./
            | '&' /. makeToken($_AMP); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | '=' /. makeToken($_EQ); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | ',' /. makeToken($_COMMA); ./
            | ':' /. makeToken($_COLON); ./
            | '/' /. makeToken($_SLASH); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | identifier /. checkForKeyWord(); ./
            | comment /. skipToken(); ./
            | white /. skipToken(); ./

    OR_OP ::= '|' '|'
    AND_OP ::= '&' '&'
    IFF_OP ::= '<' '=' '>'
    IMPLIES_OP ::= '=' '>'
    PLUSPLUS ::= '+' '+'
    DOMAIN ::= '<' ':'
    RANGE ::= ':' '>'
    ARROW ::= '-' '>'
    LTE ::= '=' '<'
    GTE ::= '>' '='

    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit
                 | identifier '_'

    NUMBER ::= Digit
             | NUMBER Digit

    comment ::= '/' '/' CommentBody
    CommentBody -> $empty | CommentBody CommentChar
    CommentChar -> Letter | Digit | Space | HT | FF | AfterASCII | '_'
                 | '+' | '-' | '*' | '!' | '@' | '~' | '%' | '&' | '^' | ':' | ';' | '|'
                 | '{' | '}' | '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '/' | '"' | "'"

    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
