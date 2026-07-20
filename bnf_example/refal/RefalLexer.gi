-- Refal Lexer (LPG)
%Options list
%Options fp=RefalLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.refal
%options template=LexerTemplateF.gi
%options filter=RefalKWLexer.gi
%Define
    $kw_lexer_class /.$RefalKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    DIGITS
    STRING
    STRING2
    CHAR
    DOLLAR
    LBRACE
    RBRACE
    LANGLE
    RANGLE
    SEMI
    COMMA
    EQUAL
    DOT
    COLON
    ENTRY
    EXTERNAL
    EXTERN
    EXTRN
    SVAR
    TVAR
    EVAR
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
    Token ::= '$' /. makeToken($_DOLLAR); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '<' /. makeToken($_LANGLE); ./
            | '>' /. makeToken($_RANGLE); ./
            | ';' /. makeToken($_SEMI); ./
            | ',' /. makeToken($_COMMA); ./
            | '=' /. makeToken($_EQUAL); ./
            | '.' /. makeToken($_DOT); ./
            | ':' /. makeToken($_COLON); ./
            | CHAR /. makeToken($_CHAR); ./
            | STRING /. makeToken($_STRING); ./
            | STRING2 /. makeToken($_STRING2); ./
            | DIGITS /. makeToken($_DIGITS); ./
            | identifier /. checkForKeyWord($_IDENTIFIER); ./
            | line_comment /. skipToken(); ./
            | block_comment /. skipToken(); ./
            | white /. skipToken(); ./

    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit
                 | identifier '-'
                 | identifier '_'

    DIGITS ::= Digit | DIGITS Digit

    STRING ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | AfterASCII
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'


    STRING2 ::= "'" SQBody "'"
    SQBody -> $empty | SQBody NotSQ
    NotSQ -> Letter | Digit | SpecialNotSQ | Space | HT | FF | AfterASCII
    SpecialNotSQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '"' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'


    CHAR ::= BackSlash SingleQuote
           | BackSlash DoubleQuote
           | BackSlash BackSlash
           | BackSlash n
           | BackSlash r
           | BackSlash t
           | BackSlash x Digit Digit

    line_comment ::= '*' NotNLsOpt
    NotNLsOpt -> $empty | NotNLs
    NotNLs -> NotNL | NotNLs NotNL
    NotNL -> Letter | Digit | SpecialNotNL | Space | HT | FF | AfterASCII
    SpecialNotNL -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | BackSlash | '_'


    block_comment ::= '/' '*' BCBody '*' '/'
    BCBody -> $empty | BCBody BCChar
    BCChar -> Letter | Digit | SpecialNotNL | Space | HT | FF | LF | CR | AfterASCII


    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF

%End
