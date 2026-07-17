-- Properties Lexer (LPG) — mode-free port for curated key=value rows (Wave D)

%Options list
%Options fp=PropertiesLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.properties
%options template=LexerTemplateF.gi
%options filter=PropertiesKWLexer.gi

%Define
    $kw_lexer_class /.$PropertiesKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    CHARACTER
    COMMENT
    NEWLINE
    DELIMITER
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
    Token ::= COMMENT   /. makeToken($_COMMENT); ./
            | NEWLINE   /. makeToken($_NEWLINE); ./
            | '='       /. makeToken($_DELIMITER); ./
            | ':'       /. makeToken($_DELIMITER); ./
            | CHARACTER /. makeToken($_CHARACTER); ./

    COMMENT ::= '#' CommentBody
              | '!' CommentBody
    CommentBody -> $empty | CommentBody NotNL
    NotNL -> Letter | Digit | SpecialNotNL | Space | HT | FF | AfterASCII |
             '"' | "'" | '[' | ']'
    SpecialNotNL -> '+' | '-' | '/' | '(' | ')' | '*' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' | '?' |
                    ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | '\' | '!'

    NEWLINE ::= LF | CR LF | CR

    -- One CHARACTER token per run (spaces included); excludes delimiter/comment starters
    CHARACTER ::= Char | CHARACTER Char
    Char -> Letter | Digit | Space | HT | FF | AfterASCII | DotLike | OtherChar
    DotLike -> '.' | '_' | '-' | '/' | '%' | '{' | '}' | '[' | ']'
    OtherChar -> '+' | '*' | '(' | ')' | '@' | '`' | '~' | '&' | '^' | ';' |
                 '|' | '?' | ',' | '<' | '>' | '$' | '\' | '"' | "'"

    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
%End
