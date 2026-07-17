-- ASL Intrinsic Lexer (LPG)
-- Ported from antlr/grammars-v4 amazon-states-language-intrinsic-functions

%Options list
%Options fp=AslIntrinsicLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.amazon_states_language_intrinsic_functions
%options template=LexerTemplateF.gi
%options filter=AslIntrinsicKWLexer.gi

%Define
    $kw_lexer_class /.$AslIntrinsicKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    CONTEXT_PATH
    JSON_PATH
    STRING
    INT
    NUMBER
    DOLLAR
    LPAREN
    RPAREN
    COMMA
    DOT
    STATES
    FORMAT
    STRINGTOJSON
    JSONTOSTRING
    ARRAY
    ARRAYPARTITION
    ARRAYCONTAINS
    ARRAYRANGE
    ARRAYGETITEM
    ARRAYLENGTH
    ARRAYUNIQUE
    BASE64ENCODE
    BASE64DECODE
    HASH
    JSONMERGE
    MATHRANDOM
    MATHADD
    STRINGSPLIT
    UUID
    TRUE
    FALSE
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
    Token ::= contextPath  /. makeToken($_CONTEXT_PATH); ./
            | jsonPath     /. makeToken($_JSON_PATH); ./
            | base64Enc    /. makeToken($_BASE64ENCODE); ./
            | base64Dec    /. makeToken($_BASE64DECODE); ./
            | '$'          /. makeToken($_DOLLAR); ./
            | '('          /. makeToken($_LPAREN); ./
            | ')'          /. makeToken($_RPAREN); ./
            | ','          /. makeToken($_COMMA); ./
            | '.'          /. makeToken($_DOT); ./
            | string       /. makeToken($_STRING); ./
            | floatNum     /. makeToken($_NUMBER); ./
            | intNum       /. makeToken($_INT); ./
            | identifier   /. checkForKeyWord(); ./
            | white        /. skipToken(); ./

    -- Simplified paths covering all examples: $./$$. Ident (. Ident)*
    contextPath ::= '$' '$' pathTail
    jsonPath ::= '$' pathTail
    pathTail ::= '.' PathIdent pathMoreOpt
    pathMoreOpt -> $empty | pathMore
    pathMore -> '.' PathIdent | pathMore '.' PathIdent
    PathIdent ::= Letter PathIdentRestOpt
    PathIdentRestOpt -> $empty | PathIdentRest
    PathIdentRest -> PathIdentChar | PathIdentRest PathIdentChar
    PathIdentChar -> Letter | Digit | '_'

    base64Enc ::= 'B' 'a' 's' 'e' '6' '4' 'E' 'n' 'c' 'o' 'd' 'e'
    base64Dec ::= 'B' 'a' 's' 'e' '6' '4' 'D' 'e' 'c' 'o' 'd' 'e'

    string ::= "'" SLBody "'"
    SLBody -> $empty | SLBody NotSQ
    NotSQ -> Letter | Digit | SpecialNotSQ | Space | HT | FF | AfterASCII | '_'
           | Escape
    Escape ::= '\' EscapeChar
    EscapeChar -> SingleQuote | BackSlash | n | t | r | u Hex Hex Hex Hex
                | Letter | Digit
    Hex -> Digit | a | b | c | d | e | f | A | B | C | D | E | F
    SpecialNotSQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '"' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$'

    floatNum ::= OptMinus intBody '.' Digits OptExp
               | OptMinus intBody Exp
    intNum ::= OptMinus intBody
    OptMinus -> $empty | '-'
    intBody ::= '0' | NonZero DigitsOpt
    NonZero -> 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    DigitsOpt -> $empty | Digits
    Digits -> Digit | Digits Digit
    OptExp -> $empty | Exp
    Exp ::= LetterEe OptSign Digits
    LetterEe -> e | E
    OptSign -> $empty | '+' | '-'

    identifier ::= Letter IdRestOpt
    IdRestOpt -> $empty | IdRest
    IdRest -> IdChar | IdRest IdChar
    IdChar -> Letter | Digit | '_'

    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
              n | o | p | q | r | s | t | u | v | w | x | y | z |
              A | B | C | D | E | F | G | H | I | J | K | L | M |
              N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
