-- FocalLexer (LPG)
%Options list
%Options fp=FocalLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.focal
%options template=LexerTemplateF.gi
%options filter=FocalKWLexer.gi
%Define
    $kw_lexer_class /.$FocalKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    ASK
    A_CMD
    DO
    D_CMD
    FOR
    F_CMD
    SET
    S_CMD
    QUIT
    GOTO
    G_CMD
    IF
    TYPE
    T_CMD
    RETURN
    WRITE
    ALL
    FSIN
    FCOS
    FEXP
    FLOG
    FATN
    FSQT
    FABS
    FSGN
    FITR
    FRAN
    INTEGER
    STRING_LITERAL
    COMMENT
    PLUSMIN
    MULOP
    EQUAL
    COMMA
    SEMI
    LPAREN
    RPAREN
    LBRACKET
    RBRACKET
    LT
    GT
    DOT
    BANG
    HASH
    PERCENT
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

    Token ::= COMMENT /. makeToken($_COMMENT); ./
            | STRING_LITERAL /. makeToken($_STRING_LITERAL); ./
            | INTEGER /. makeToken($_INTEGER); ./
            | '+' /. makeToken($_PLUSMIN); ./
            | '-' /. makeToken($_PLUSMIN); ./
            | '*' /. makeToken($_MULOP); ./
            | '/' /. makeToken($_MULOP); ./
            | '^' /. makeToken($_MULOP); ./
            | '=' /. makeToken($_EQUAL); ./
            | ',' /. makeToken($_COMMA); ./
            | ';' /. makeToken($_SEMI); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | '.' /. makeToken($_DOT); ./
            | '!' /. makeToken($_BANG); ./
            | '#' /. makeToken($_HASH); ./
            | '%' /. makeToken($_PERCENT); ./
            | identifier /. checkForKeyWord(); ./
            | white /. skipToken(); ./

    COMMENT ::= 'C' 'O' 'M' 'M' 'E' 'N' 'T' CommentBody
    CommentBody -> $empty | CommentBody CommentChar
    CommentChar -> Letter | Digit | SpecialNotNL | Space | HT | FF
    SpecialNotNL -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | LeftBrace | RightBrace |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | '"'

    STRING_LITERAL ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | LeftBrace | RightBrace |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'

    INTEGER ::= Digit | INTEGER Digit

    identifier ::= Letter | identifier Letter | identifier Digit

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF

%End
