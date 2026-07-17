-- Javadoc Lexer (LPG)
%Options list
%Options fp=JavadocLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.javadoc
%options template=LexerTemplateF.gi
%options filter=JavadocKWLexer.gi
%Define
    $kw_lexer_class /.$JavadocKWLexer./
%End
%Include
    LexerBasicMapF.gi
%End
%Export
    IDENTIFIER
    NAME TEXT_CONTENT
    JAVADOC_START JAVADOC_END
    AT STAR SLASH
    BRACE_OPEN BRACE_CLOSE
    SPACE NEWLINE
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

    Token ::= '/' '*' '*' /. makeToken($_JAVADOC_START); ./
            | '@' '@' '@' /. makeToken($_JAVADOC_END); ./
            | '@' /. makeToken($_AT); ./
            | '*' /. makeToken($_STAR); ./
            | '/' /. makeToken($_SLASH); ./
            | '{' /. makeToken($_BRACE_OPEN); ./
            | '}' /. makeToken($_BRACE_CLOSE); ./
            | SPACE /. makeToken($_SPACE); ./
            | NEWLINE /. makeToken($_NEWLINE); ./
            | NAME /. makeToken($_NAME); ./
            | TEXT_CONTENT /. makeToken($_TEXT_CONTENT); ./


    identifier ::= Letter LetterOrDigitStar
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z | _
    LetterOrDigitStar -> $empty | LetterOrDigitStar LetterOrDigit
    LetterOrDigit -> Letter | Digit
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9


    NAME ::= Letter LetterStar
    LetterStar -> $empty | LetterStar Letter
    SPACE ::= SpacePlus | HTPlus
    SpacePlus ::= Space | SpacePlus Space
    HTPlus ::= HT | HTPlus HT
    NEWLINE ::= LF | CR | CR LF
    TEXT_CONTENT ::= TextChar TextStar
    TextStar -> $empty | TextStar TextChar
    TextChar -> Digit | Special
    Special -> '+' | '-' | '(' | ')' | '!' | '`' | '~' | '%' | '&' | '^' |
               ':' | ';' | '|' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' |
               "'" | '"' | '_' | '\'


    white ::= WSChar | white WSChar
    WSChar -> Space | HT | FF | LF | CR

%End
