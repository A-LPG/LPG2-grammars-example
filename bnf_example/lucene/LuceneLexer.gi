-- Lucene Lexer (LPG)
-- Ported from antlr/grammars-v4 lucene/LuceneLexer.g4 (DEFAULT mode subset).

%Options list
%Options fp=LuceneLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.lucene
%options template=LexerTemplateF.gi
%options filter=LuceneKWLexer.gi

%Define
    $kw_lexer_class /.$LuceneKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    AND
    OR
    NOT
    TO
    NUMBER
    QUOTED
    REGEXPTERM
    PLUS
    MINUS
    LPAREN
    RPAREN
    OP_COLON
    OP_EQUAL
    OP_LESSTHAN
    OP_LESSTHANEQ
    OP_MORETHAN
    OP_MORETHANEQ
    CARAT
    TILDE
    RANGEIN_START
    RANGEEX_START
    RANGEIN_END
    RANGEEX_END
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
    Token ::= term_tok   /. checkForKeyWord(); ./
            | number     /. makeToken($_NUMBER); ./
            | quoted     /. makeToken($_QUOTED); ./
            | regexp     /. makeToken($_REGEXPTERM); ./
            | white      /. skipToken(); ./
            | '&' '&'    /. makeToken($_AND); ./
            | '|' '|'    /. makeToken($_OR); ./
            | '!'        /. makeToken($_NOT); ./
            | '+'        /. makeToken($_PLUS); ./
            | '-'        /. makeToken($_MINUS); ./
            | '('        /. makeToken($_LPAREN); ./
            | ')'        /. makeToken($_RPAREN); ./
            | ':'        /. makeToken($_OP_COLON); ./
            | '='        /. makeToken($_OP_EQUAL); ./
            | '<' '='    /. makeToken($_OP_LESSTHANEQ); ./
            | '>' '='    /. makeToken($_OP_MORETHANEQ); ./
            | '<'        /. makeToken($_OP_LESSTHAN); ./
            | '>'        /. makeToken($_OP_MORETHAN); ./
            | '^'        /. makeToken($_CARAT); ./
            | '~'        /. makeToken($_TILDE); ./
            | '['        /. makeToken($_RANGEIN_START); ./
            | '{'        /. makeToken($_RANGEEX_START); ./
            | ']'        /. makeToken($_RANGEIN_END); ./
            | '}'        /. makeToken($_RANGEEX_END); ./

    term_tok ::= TermStart
               | term_tok TermChar

    TermStart -> Letter | '_' | '*' | '?'

    TermChar -> Letter | Digit | '_' | '*' | '?' | '.' | '-'

    Letter -> LowerCaseLetter | UpperCaseLetter | AfterASCII

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    number ::= Digit
             | number Digit
             | number '.' Digit
             | number '.' Digits

    Digits ::= Digit
             | Digits Digit

    quoted ::= '"' QBody '"'

    QBody -> $empty
           | QBody QChar

    QChar -> Letter | Digit | Space | HT | "'" | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '`' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' |
             Escape

    Escape ::= BackSlash EscapeChar
    EscapeChar -> DoubleQuote | SingleQuote | BackSlash | '/' | n | r | t | b | f

    regexp ::= '/' RBody '/'

    RBody -> $empty
           | RBody RChar

    RChar -> Letter | Digit | Space | HT | "'" | DoubleQuote | ',' | '.' | ':' | ';' |
             '+' | '-' | '*' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' |
             '|' | '^' | '~' | '`' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' |
             Escape

    white -> WSChar
           | white WSChar

    WSChar -> Space | LF | CR | HT | FF
%End
