-- JSON5 Lexer (LPG)
-- Ported from antlr/grammars-v4 json/JSON.g4 for parse-level examples.

%Options list
%Options fp=Json5Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.json5
%options template=LexerTemplateF.gi
%options filter=Json5KWLexer.gi

%Define
    $kw_lexer_class /.$Json5KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    STRING
    NUMBER
    TRUE
    FALSE
    NULLLITERAL
    INFINITY
    NAN
    PLUS
    MINUS
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
            | '+'        /. makeToken($_PLUS); ./
            | '-'        /. makeToken($_MINUS); ./
            | STRING     /. makeToken($_STRING); ./
            | NUMBER     /. makeToken($_NUMBER); ./
            | 'I' 'n' 'f' 'i' 'n' 'i' 't' 'y' /. makeToken($_INFINITY); ./
            | 'N' 'a' 'N' /. makeToken($_NAN); ./
            | identifier /. checkForKeyWord(); ./
            | line_comment /. skipToken(); ./
            | block_comment /. skipToken(); ./
            | white      /. skipToken(); ./

    identifier -> Letter
                | identifier Letter
                | identifier Digit

    Letter -> LowerCaseLetter
            | UpperCaseLetter
            | _
            | DollarSign
            | AfterASCII

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    STRING ::= '"' SLBody '"'
             | "'" SQBody "'"

    SLBody -> $empty
            | SLBody NotDQ

    SQBody -> $empty
            | SQBody NotSQ

    NotDQ -> Letter
           | Digit
           | SpecialNotDQ
           | Space
           | HT
           | FF
           | EscapeSequence

    NotSQ -> Letter
           | Digit
           | SpecialNotSQ
           | Space
           | HT
           | FF
           | EscapeSequence

    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'

    SpecialNotSQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '"' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'

    EscapeSequence ::= '\' EscapeChar

    EscapeChar ::= DoubleQuote | SingleQuote | BackSlash | Slash | b | f | n | r | t | v
                 | '0'
                 | u HexDigit HexDigit HexDigit HexDigit
                 | x HexDigit HexDigit

    HexDigit -> Digit
              | a | b | c | d | e | f | A | B | C | D | E | F

    NUMBER ::= IntPart OptFrac OptExp
             | '.' Digits OptExp
             | '0' HexX HexDigits

    HexX -> x | X
    HexDigits ::= HexDigit
                | HexDigits HexDigit

    IntPart ::= 0
              | NonZero DigitsOpt

    NonZero -> 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    DigitsOpt -> $empty
               | Digits

    Digits -> Digit
            | Digits Digit

    OptFrac -> $empty
             | '.' DigitsOpt

    OptExp -> $empty
            | Exp

    Exp ::= LetterEe OptSign DigitsOpt

    LetterEe -> e | E

    OptSign -> $empty
             | '+'
             | '-'

    line_comment ::= '/' '/' LineBody
    LineBody -> $empty | LineBody LineChar
    LineChar -> Letter | Digit | SpecialLine | Space | HT | FF | AfterASCII
    SpecialLine -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                   '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                   '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | '\'

    block_comment ::= '/' '*' BlockBody StarSlash
    StarSlash ::= '*' '/'
    BlockBody -> $empty | BlockBody BlockChar
    BlockChar -> Letter | Digit | SpecialBlock | Space | HT | FF | LF | CR | AfterASCII | '/' | '*'
    SpecialBlock -> '+' | '-' | '(' | ')' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | '\'

    white -> WSChar
           | white WSChar

    WSChar -> Space | LF | CR | HT | FF
%End
