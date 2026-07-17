-- CSV Lexer (LPG)
-- Ported from antlr/grammars-v4 csv/CSV.g4 for parse-level examples.

%Options list
%Options fp=CsvLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.csv
%options template=LexerTemplateF.gi
%options filter=CsvKWLexer.gi

%Define
    $kw_lexer_class /.$CsvKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    TEXT
    STRING
    COMMA
    NL
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
    Token ::= ','        /. makeToken($_COMMA); ./
            | NL         /. makeToken($_NL); ./
            | STRING     /. makeToken($_STRING); ./
            | TEXT       /. makeToken($_TEXT); ./

    -- '\r'? '\n'
    NL ::= LF
         | CR LF

    -- TEXT: ~[,\n\r"]+
    TEXT ::= TextChar
           | TEXT TextChar

    TextChar -> Letter
              | Digit
              | SpecialNotCommaQuote
              | Space
              | HT
              | FF
              | AfterASCII

    Letter -> LowerCaseLetter
            | UpperCaseLetter
            | _

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    SpecialNotCommaQuote -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                            '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                            '[' | ']' | '?' | '.' | '<' | '>' | '=' | '#' | '$' | '\'

    -- STRING: '"' ('""' | ~'"')* '"'
    STRING ::= '"' SLBody '"'

    SLBody -> $empty
            | SLBody NotDQ
            | SLBody EscapedQuote

    EscapedQuote ::= '"' '"'

    -- ~'"' (newlines and commas allowed inside strings)
    NotDQ -> Letter
           | Digit
           | SpecialInString
           | Space
           | HT
           | FF
           | LF
           | CR
           | AfterASCII

    SpecialInString -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                       '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                       '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\' | '_'
%End
