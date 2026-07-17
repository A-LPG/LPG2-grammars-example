-- VMF Lexer (LPG)
-- Ported from antlr/grammars-v4 vmf/vmf.g4 for parse-level examples.

%Options list
%Options fp=VmfLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.vmf
%options template=LexerTemplateF.gi
%options filter=VmfKWLexer.gi

%Define
    $kw_lexer_class /.$VmfKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    QUOTEDSTRING
    STRING
    LBRACE
    RBRACE
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
    Token ::= '{'           /. makeToken($_LBRACE); ./
            | '}'           /. makeToken($_RBRACE); ./
            | QUOTEDSTRING  /. makeToken($_QUOTEDSTRING); ./
            | STRING        /. makeToken($_STRING); ./
            | white         /. skipToken(); ./

    -- QUOTEDSTTRING (upstream typo): '"' (~('"'|'\\'|'\r'|'\n') | '\\' ('"'|'\\'))* '"'
    QUOTEDSTRING ::= '"' QBody '"'

    QBody -> $empty
           | QBody QChar
           | QBody Escape

    Escape ::= '\' '"'
             | '\' '\'

    -- Include CtlCharNotWS so Valve ESC-delimited connection fields lex inside quotes.
    QChar -> Letter
           | Digit
           | SpecialInQuote
           | Space
           | HT
           | FF
           | AfterASCII
           | CtlCharNotWS


    -- STRING : [a-zA-Z0-9()_$@<>[\]\-/]+
    STRING ::= StringChar
             | STRING StringChar

    StringChar -> Letter
                | Digit
                | '_'
                | '$'
                | '@'
                | '<'
                | '>'
                | '['
                | ']'
                | '-'
                | '/'
                | '('
                | ')'

    Letter -> LowerCaseLetter
            | UpperCaseLetter

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    SpecialInQuote -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                      '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                      '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'

    white -> WSChar
           | white WSChar

    WSChar -> Space | LF | CR | HT
%End
