-- TSV Lexer (LPG)
-- Ported from antlr/grammars-v4 tsv/tsv.g4 for parse-level examples.

%Options list
%Options fp=TsvLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.tsv
%options template=LexerTemplateF.gi
%options filter=TsvKWLexer.gi

%Define
    $kw_lexer_class /.$TsvKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    TEXT
    STRING
    TAB
    EOL
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
    Token ::= TAB    /. makeToken($_TAB); ./
            | EOL    /. makeToken($_EOL); ./
            | STRING /. makeToken($_STRING); ./
            | TEXT   /. makeToken($_TEXT); ./

    TAB ::= HT

    -- EOL : [\n\r]+
    EOL ::= EOLChar
          | EOL EOLChar

    EOLChar -> LF | CR

    -- TEXT: exclude tab/newline/quote so TAB and EOL remain distinct.
    -- Upstream `~[,\n\r"]+` also excludes comma (CSV heritage); keep that.
    TEXT ::= TextChar
           | TEXT TextChar

    TextChar -> Letter
              | Digit
              | SpecialNotTabQuote
              | Space
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

    SpecialNotTabQuote -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                          '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                          '[' | ']' | '?' | '.' | '<' | '>' | '=' | '#' | '$' | '\'

    -- STRING: '"' ('""' | ~'"')* '"'
    STRING ::= '"' SLBody '"'

    SLBody -> $empty
            | SLBody NotDQ
            | SLBody EscapedQuote

    EscapedQuote ::= '"' '"'

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
