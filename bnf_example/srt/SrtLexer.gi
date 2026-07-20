-- SRT Lexer (LPG)
-- Ported from antlr/grammars-v4 srt/srt.g4

%Options list
%Options fp=SrtLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.srt
%options template=LexerTemplateF.gi
%options filter=SrtKWLexer.gi

%Define
    $kw_lexer_class /.$SrtKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    NUMBER
    TIMESTAMP
    TEXT
    NEWLINE
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
    Token ::= TIMESTAMP /. makeToken($_TIMESTAMP); ./
            | NUMBER    /. makeToken($_NUMBER); ./
            | NEWLINE   /. makeToken($_NEWLINE); ./
            | TEXT      /. makeToken($_TEXT); ./

    NEWLINE ::= LF
              | CR LF

    NUMBER ::= Digits

    Digits ::= Digit
             | Digits Digit

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- Full timestamp line body (ANTLR TIMESTAMP token)
    TIMESTAMP ::= Digits ':' Digits ':' Digits ',' Digits
                  ' ' '-' '-' '>' ' '
                  Digits ':' Digits ':' Digits ',' Digits

    -- TEXT: ~[\r\n]+ that is not pure digits (NUMBER) and not a TIMESTAMP
    TEXT ::= TextStart
           | TEXT TextChar

    TextStart -> Letter
               | SpecialNotDigitStart
               | Space
               | HT
               | FF
               | AfterASCII

    TextChar -> TextStart
              | Digit

    Letter -> LowerCaseLetter | UpperCaseLetter | _

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    -- exclude digits from start; ':' included so leftover lines can be TEXT if needed
    SpecialNotDigitStart -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                            '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                            '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\'
%End
