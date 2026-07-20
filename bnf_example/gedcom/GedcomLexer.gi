-- GedcomLexer (LPG)
-- Ported from antlr/grammars-v4 for parse-level examples.

%Options list
%Options fp=GedcomLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.gedcom
%options template=LexerTemplateF.gi
%options filter=GedcomKWLexer.gi

%Define
    $kw_lexer_class /.$GedcomKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    ALPHA
    DIGIT
    AT
    SHARP
    ATAT
    EOL
    OTHERCHAR
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
    Token ::= '@' '@' /. makeToken($_ATAT); ./
            | '@' /. makeToken($_AT); ./
            | '#' /. makeToken($_SHARP); ./
            | DIGIT /. makeToken($_DIGIT); ./
            | ALPHA /. makeToken($_ALPHA); ./
            | OTHERCHAR /. makeToken($_OTHERCHAR); ./
            | EOL /. makeToken($_EOL); ./
            | white /. skipToken(); ./

    ALPHA ::= LetterUS
    LetterUS -> LowerCaseLetter | UpperCaseLetter | _

    DIGIT ::= Digit

    OTHERCHAR ::= '!' | DoubleQuote | '$' | '&' | "'" | '(' | ')' | '*' | '+' | '-' | ',' | '.' | '/'

    EOL ::= NLChar | EOL NLChar
    NLChar -> LF | CR


    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9


    white -> Space | HT
           | white Space
           | white HT
%End
