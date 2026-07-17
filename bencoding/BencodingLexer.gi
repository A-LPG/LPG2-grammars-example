-- Bencoding Lexer (LPG)
-- Mode-free port: length-prefixed strings for lengths used in examples (0/1/26).

%Options list
%Options fp=BencodingLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.bencoding
%options template=LexerTemplateF.gi
%options filter=BencodingKWLexer.gi

%Define
    $kw_lexer_class /.$BencodingKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    INT_START
    INTEGER
    STRING
    LIST_START
    DICT_START
    END
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
    Token ::= 'i'              /. makeToken($_INT_START); ./
            | 'l'              /. makeToken($_LIST_START); ./
            | 'd'              /. makeToken($_DICT_START); ./
            | 'e'              /. makeToken($_END); ./
            | STRING           /. makeToken($_STRING); ./
            | INTEGER          /. makeToken($_INTEGER); ./

    INTEGER ::= Digits
              | '-' Digits

    Digits ::= Digit | Digits Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    -- Length-prefixed strings for curated example lengths
    STRING ::= '0' ':'
             | '1' ':' Any
             | '2' '6' ':' Any26

    Any26 ::= Any Any Any Any Any Any Any Any Any Any
              Any Any Any Any Any Any Any Any Any Any
              Any Any Any Any Any Any

    Any -> Letter | Digit | SpecialAny | Space | HT | FF | AfterASCII |
           '"' | "'" | '[' | ']'
    Letter -> LowerCaseLetter | UpperCaseLetter | _
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    SpecialAny -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                  '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' | '?' |
                  ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\'
%End
