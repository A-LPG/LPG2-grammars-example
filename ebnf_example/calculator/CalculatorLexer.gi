-- Calculator Lexer (LPG)
-- Ported from antlr/grammars-v4 calculator/calculator.g4 for parse-level examples.
--
-- Identifiers go through CalculatorKWLexer (functions + pi/e/i).
-- SCIENTIFIC_NUMBER handles E/e exponents separately from the 'e' keyword.

%Options list
%Options fp=CalculatorLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.calculator
%options template=LexerTemplateF.gi
%options filter=CalculatorKWLexer.gi

%Define
    $kw_lexer_class /.$CalculatorKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    SCIENTIFIC_NUMBER
    LPAREN
    RPAREN
    PLUS
    MINUS
    TIMES
    DIV
    POW
    EQ
    GT
    LT
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
    Token ::= '('                 /. makeToken($_LPAREN); ./
            | ')'                 /. makeToken($_RPAREN); ./
            | '+'                 /. makeToken($_PLUS); ./
            | '-'                 /. makeToken($_MINUS); ./
            | '*'                 /. makeToken($_TIMES); ./
            | '/'                 /. makeToken($_DIV); ./
            | '^'                 /. makeToken($_POW); ./
            | '='                 /. makeToken($_EQ); ./
            | '>'                 /. makeToken($_GT); ./
            | '<'                 /. makeToken($_LT); ./
            | ','                 /. makeToken($_COMMA); ./
            | SCIENTIFIC_NUMBER   /. makeToken($_SCIENTIFIC_NUMBER); ./
            | identifier          /. checkForKeyWord(); ./
            | white               /. skipToken(); ./

    identifier -> Letter
                | identifier Letter
                | identifier Digit

    Letter -> LowerCaseLetter
            | UpperCaseLetter
            | _

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- ANTLR: NUMBER ((E|e) SIGN? NUMBER)?
    -- NUMBER: Digits ('.' Digits)?
    SCIENTIFIC_NUMBER ::= Digits OptFrac OptExp

    Digits -> Digit
            | Digits Digit

    OptFrac -> $empty
             | '.' Digits

    OptExp -> $empty
            | Exp

    Exp ::= LetterEe OptSign Digits OptFrac

    LetterEe -> e | E

    OptSign -> $empty
             | '+'
             | '-'

    white -> WSChar
           | white WSChar

    WSChar -> Space | LF | CR | HT | FF
%End
