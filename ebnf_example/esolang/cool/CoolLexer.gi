-- CoolLexer (LPG)
%Options list
%Options fp=CoolLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.esolang.cool
%options template=LexerTemplateF.gi
%options filter=CoolKWLexer.gi
%Define
    $kw_lexer_class /.$CoolKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    CLASS
    ELSE
    FI
    IF
    IN
    INHERITS
    ISVOID
    LET
    LOOP
    POOL
    THEN
    WHILE
    CASE
    ESAC
    NEW
    OF
    NOT
    TRUE
    FALSE
    TYPEID
    OBJECTID
    STRING
    INT
    ASSIGNMENT
    CASE_ARROW
    ADD
    MINUS
    MULTIPLY
    DIVISION
    LESS_THAN
    LESS_EQUAL
    EQUAL
    INTEGER_NEGATIVE
    LBRACE
    RBRACE
    LPAREN
    RPAREN
    COLON
    SEMI
    COMMA
    DOT
    AT
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

    Token ::= '<' '-' /. makeToken($_ASSIGNMENT); ./
            | '=' '>' /. makeToken($_CASE_ARROW); ./
            | '<' '=' /. makeToken($_LESS_EQUAL); ./
            | '<' /. makeToken($_LESS_THAN); ./
            | '=' /. makeToken($_EQUAL); ./
            | '+' /. makeToken($_ADD); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_MULTIPLY); ./
            | '/' /. makeToken($_DIVISION); ./
            | '~' /. makeToken($_INTEGER_NEGATIVE); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | ':' /. makeToken($_COLON); ./
            | ';' /. makeToken($_SEMI); ./
            | ',' /. makeToken($_COMMA); ./
            | '.' /. makeToken($_DOT); ./
            | '@' /. makeToken($_AT); ./
            | STRING /. makeToken($_STRING); ./
            | INT /. makeToken($_INT); ./
            | typeid /. checkForKeyWord($_TYPEID); ./
            | objectid /. checkForKeyWord($_OBJECTID); ./
            | nest_comment /. skipToken(); ./
            | line_comment /. skipToken(); ./
            | white /. skipToken(); ./

    STRING ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | EscapeSequence
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | LeftBrace | RightBrace |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'
    EscapeSequence ::= BackSlash EscapeChar
    EscapeChar ::= DoubleQuote | BackSlash | Slash | b | f | n | r | t
                 | u HexDigit HexDigit HexDigit HexDigit
    HexDigit -> Digit | a | b | c | d | e | f | A | B | C | D | E | F

    INT ::= Digit | INT Digit

    typeid ::= UpperCaseLetter | typeid Letter | typeid Digit | typeid '_'
    objectid ::= LowerCaseLetter | objectid Letter | objectid Digit | objectid '_'

    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- Nested comments simplified: non-nested (* ... *)
    nest_comment ::= '(' '*' CommentBody StarClose
    StarClose ::= '*' ')'
    CommentBody -> $empty | CommentBody CommentChar
    CommentChar -> Letter | Digit | SpecialComment | Space | HT | FF | LF | CR | '/' | '(' | ')' | '*'
    SpecialComment -> '+' | '-' | '!' | '@' | '`' | '~' | '%' | '&' | '^' | ':' | ';' |
                      "'" | '"' | '|' | LeftBrace | RightBrace | '[' | ']' | '?' | ',' |
                      '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash

    line_comment ::= '-' '-' LineBody
    LineBody -> $empty | LineBody LineChar
    LineChar -> Letter | Digit | SpecialNotNL | Space | HT | FF
    SpecialNotNL -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | LeftBrace | RightBrace |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF

%End
