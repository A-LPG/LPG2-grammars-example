-- STL Lexer (LPG)
-- Ported from antlr/grammars-v4 stl/STL.g4

%Options list
%Options fp=StlLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.stl
%options template=LexerTemplateF.gi
%options filter=StlKWLexer.gi

%Define
    $kw_lexer_class /.$StlKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    FLOAT
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
    Token ::= FLOAT      /. makeToken($_FLOAT); ./
            | identifier /. checkForKeyWord(); ./
            | white      /. skipToken(); ./

    identifier ::= LetterOrDigit
                 | identifier LetterOrDigit

    LetterOrDigit -> Letter | Digit

    Letter -> LowerCaseLetter | UpperCaseLetter

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- FLOAT with optional leading sign; prefer digits.digits so "0.0" is not "0." + "0"
    FLOAT ::= Digits '.' Digits OptExponent
            | Digits ExponentPart
            | Digits '.' OptExponent
            | Sign Digits '.' Digits OptExponent
            | Sign Digits ExponentPart
            | Sign Digits '.' OptExponent

    Digits -> Digit
            | Digits Digit

    OptExponent -> $empty
                 | ExponentPart

    ExponentPart ::= LetterEe OptExpSign Digits

    LetterEe -> e | E

    Sign -> '+' | '-'
    OptExpSign -> $empty | Sign

    white -> WSChar
           | white WSChar

    WSChar -> Space | LF | CR | HT | FF
%End
