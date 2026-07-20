-- Arithmetic Lexer (LPG)
-- Ported from antlr/grammars-v4 arithmetic/arithmetic.g4

%Options list
%Options fp=ArithmeticLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.arithmetic
%options template=LexerTemplateF.gi
%options filter=ArithmeticKWLexer.gi

%Define
    $kw_lexer_class /.$ArithmeticKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    VARIABLE
    SCIENTIFIC_NUMBER
    LPAREN
    RPAREN
    PLUS
    MINUS
    TIMES
    DIV
    GT
    LT
    EQ
    POW
    X
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
    Token ::= '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_TIMES); ./
            | '/' /. makeToken($_DIV); ./
            | '>' /. makeToken($_GT); ./
            | '<' /. makeToken($_LT); ./
            | '=' /. makeToken($_EQ); ./
            | '^' /. makeToken($_POW); ./
            | SCIENTIFIC_NUMBER /. makeToken($_SCIENTIFIC_NUMBER); ./
            | VARIABLE /. makeToken($_VARIABLE); ./
            | white /. skipToken(); ./

    VARIABLE ::= Letter
               | VARIABLE Letter
               | VARIABLE Digit

    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    SCIENTIFIC_NUMBER ::= Digits OptFrac OptExp

    Digits ::= Digit
             | Digits Digit

    OptFrac -> $empty
             | '.' Digits

    OptExp -> $empty
            | LetterEe OptSign Digits

    LetterEe -> e | E

    OptSign -> $empty
             | '+'
             | '-'

    white -> WSChar
           | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
