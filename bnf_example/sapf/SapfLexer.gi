-- sapf Lexer (LPG)
%Options list
%Options fp=SapfLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.sapf
%options template=LexerTemplateF.gi
%options filter=SapfKWLexer.gi
%Define
    $kw_lexer_class /.$SapfKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    NUMBER
    LITERAL
    STRING
    HASH
    LCURL
    RCURL
    LBRACK
    RBRACK
    LPAREN
    RPAREN
    PLUS
    MINUS
    TIMES
    DIV
    BACKSLASH
    COLON
    EQUAL
    BACKTICK
    QUOTE
    COMMA
    DOT
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
    Token ::= '#' /. makeToken($_HASH); ./
            | '{' /. makeToken($_LCURL); ./
            | '}' /. makeToken($_RCURL); ./
            | '[' /. makeToken($_LBRACK); ./
            | ']' /. makeToken($_RBRACK); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_TIMES); ./
            | '/' /. makeToken($_DIV); ./
            | BackSlash /. makeToken($_BACKSLASH); ./
            | ':' /. makeToken($_COLON); ./
            | '=' /. makeToken($_EQUAL); ./
            | '`' /. makeToken($_BACKTICK); ./
            | "'" /. makeToken($_QUOTE); ./
            | ',' /. makeToken($_COMMA); ./
            | '.' /. makeToken($_DOT); ./
            | STRING /. makeToken($_STRING); ./
            | NUMBER /. makeToken($_NUMBER); ./
            | identifier /. makeToken($_LITERAL); ./
            | comment /. skipToken(); ./
            | white /. skipToken(); ./

    identifier ::= Letter
                 | identifier Letter
                 | identifier '_'

    STRING ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | LF | CR | AfterASCII
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'


    -- numbers: int/frac/scientific/fraction with optional suffix letter
    NUMBER ::= OptMinus NumBody OptSuffix
    OptMinus -> $empty | '-'
    NumBody ::= Digits OptFrac OptExpOrFrac
              | '.' Digits
    Digits ::= Digit | Digits Digit
    OptFrac -> $empty | '.' DigitsOpt
    DigitsOpt -> $empty | Digits
    OptExpOrFrac -> $empty
                  | e OptSign Digits
                  | '/' decimal
    decimal ::= OptMinus Digits OptFrac
    OptSign -> $empty | '+' | '-'
    OptSuffix -> $empty | SuffixLetter
    SuffixLetter -> p i | M | k | h | c | m | u

    comment ::= ';' NotNLsOpt
    NotNLsOpt -> $empty | NotNLs
    NotNLs -> NotNL | NotNLs NotNL
    NotNL -> Letter | Digit | SpecialNotNL | Space | HT | FF | AfterASCII
    SpecialNotNL -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | BackSlash | '_'


    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF

%End
