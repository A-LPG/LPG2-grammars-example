-- Redcode Lexer (LPG)
%Options list
%Options fp=RedcodeLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.redcode
%options template=LexerTemplateF.gi
%options filter=RedcodeKWLexer.gi
%Define
    $kw_lexer_class /.$RedcodeKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    NUMBER
    COMMENT
    EOL
    DOT
    COMMA
    PLUS
    MINUS
    HASH
    DOLLAR
    AT
    LT
    GT
    DAT
    MOV
    ADD
    SUB
    MUL
    DIV
    MOD
    JMP
    JMZ
    JMN
    DJN
    CMP
    SLT
    SPL
    ORG
    DJZ
    A
    B
    AB
    BA
    F
    X
    I
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
    Token ::= ';' NotNLsOpt /. makeToken($_COMMENT); ./
            | '.' /. makeToken($_DOT); ./
            | ',' /. makeToken($_COMMA); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '#' /. makeToken($_HASH); ./
            | '$' /. makeToken($_DOLLAR); ./
            | '@' /. makeToken($_AT); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | EOL /. makeToken($_EOL); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | identifier /. checkForKeyWord(); ./
            | space /. skipToken(); ./

    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit

    NUMBER ::= Digit
             | NUMBER Digit

    EOL ::= LF | CR | EOL LF | EOL CR

    NotNLsOpt -> $empty | NotNLs
    NotNLs -> NotNL | NotNLs NotNL
    NotNL -> Letter | Digit | SpecialNotNL | Space | HT | FF | AfterASCII
    SpecialNotNL -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\' | '_'

    space -> Space | HT | FF | space Space | space HT | space FF


    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF

%End
