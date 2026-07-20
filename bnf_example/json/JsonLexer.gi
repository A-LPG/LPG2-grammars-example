-- JSON Lexer (LPG)
-- Ported from antlr/grammars-v4 json/JSON.g4 for parse-level examples.

%Options list
%Options fp=JsonLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.json
%options template=LexerTemplateF.gi
%options filter=JsonKWLexer.gi

%Define
    $kw_lexer_class /.$JsonKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    STRING
    NUMBER
    LBRACE
    RBRACE
    LBRACKET
    RBRACKET
    COLON
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
    Token ::= '{'        /. makeToken($_LBRACE); ./
            | '}'        /. makeToken($_RBRACE); ./
            | '['        /. makeToken($_LBRACKET); ./
            | ']'        /. makeToken($_RBRACKET); ./
            | ':'        /. makeToken($_COLON); ./
            | ','        /. makeToken($_COMMA); ./
            | STRING     /. makeToken($_STRING); ./
            | NUMBER     /. makeToken($_NUMBER); ./
            | identifier /. checkForKeyWord(); ./
            | white      /. skipToken(); ./

    identifier -> Letter
                | identifier Letter
                | identifier Digit

    Letter -> LowerCaseLetter
            | UpperCaseLetter
            | _
            | AfterASCII

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    STRING ::= '"' SLBody '"'

    SLBody -> $empty
            | SLBody NotDQ

    NotDQ -> Letter
           | Digit
           | SpecialNotDQ
           | Space
           | HT
           | FF
           | EscapeSequence

    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'

    EscapeSequence ::= '\' EscapeChar

    EscapeChar ::= DoubleQuote | BackSlash | Slash | b | f | n | r | t
                 | u HexDigit HexDigit HexDigit HexDigit

    HexDigit -> Digit
              | a | b | c | d | e | f | A | B | C | D | E | F

    NUMBER ::= OptMinus IntPart OptFrac OptExp

    OptMinus -> $empty
              | '-'

    IntPart ::= 0
              | NonZero DigitsOpt

    NonZero -> 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    DigitsOpt -> $empty
               | Digits

    Digits -> Digit
            | Digits Digit

    OptFrac -> $empty
             | '.' Digits

    OptExp -> $empty
            | Exp

    Exp ::= LetterEe OptSign Digits

    LetterEe -> e | E

    OptSign -> $empty
             | '+'
             | '-'

    white -> WSChar
           | white WSChar

    WSChar -> Space | LF | CR | HT | FF
%End
