-- ALPACA Lexer (LPG)
-- Ported from antlr/grammars-v4 alpaca/alpaca.g4

%Options list
%Options fp=AlpacaLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.alpaca
%options template=LexerTemplateF.gi
%options filter=AlpacaKWLexer.gi

%Define
    $kw_lexer_class /.$AlpacaKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    QUOTEDCHAR
    NATURAL
    ARROW
    DOT
    SEMI
    COMMA
    LPAREN
    RPAREN
    EQ
    STATE
    CLASS
    NEIGHBOURHOOD
    IS
    TO
    WHEN
    ME
    AND
    OR
    XOR
    NOT
    TRUE
    FALSE
    GUESS
    IN
    BEGIN
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
    Token ::= '.' /. makeToken($_DOT); ./
            | ';' /. makeToken($_SEMI); ./
            | ',' /. makeToken($_COMMA); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '=' /. makeToken($_EQ); ./
            | QUOTEDCHAR /. makeToken($_QUOTEDCHAR); ./
            | ARROW /. makeToken($_ARROW); ./
            | NATURAL /. makeToken($_NATURAL); ./
            | identifier /. checkForKeyWord(); ./
            | comment /. skipToken(); ./
            | white /. skipToken(); ./

    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit

    NATURAL ::= Digit
              | NATURAL Digit

    -- ARROW: one of ^ v < >
    ARROW ::= '^' | 'v' | '<' | '>'

    QUOTEDCHAR ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | AfterASCII | _
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\'

    comment ::= '/' '*' CommentBody '*' '/'
    CommentBody -> $empty | CommentBody CommentChar
    CommentChar -> Letter | Digit | SpecialNotDQ | Space | HT | FF | LF | CR | AfterASCII | _
                 | DoubleQuote | '/' | "'"

    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
