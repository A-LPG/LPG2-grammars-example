-- R lexer — mirrors grammars-v4 r/R.g4 token vocabulary

%Options list
%Options fp=RLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.r
%options template=LexerTemplateF.gi
%options filter=RKWLexer.gi

%Define
    $kw_lexer_class /.$RKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ID
    IDENTIFIER
    STRING
    NUMBER
    INT
    HEX
    FLOAT
    COMPLEX
    NL
    SEMICOLON
    ASSIGN
    EQUALS
    ELLIPSIS
    DOT
    LIST_ACCESS_START
    LIST_ACCESS_END
    ARRAY_ACCESS_START
    ARRAY_ACCESS_END
    NAMESPACE_ACCESS
    COMPONENT_ACCESS
    HELP
    NOT
    RANGE_OPERATOR
    MULT_DIV
    ADD_SUB
    COMPARATOR
    AND
    OR
    CARET
    TILDE
    USER_OP
    PAREN_L
    PAREN_R
    CURLY_L
    CURLY_R
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
    Token ::= identifier /. checkForKeyWord($_ID); ./
            | number     /. makeToken($_NUMBER); ./
            | string     /. makeToken($_STRING); ./
            | user_op    /. makeToken($_USER_OP); ./
            | HashComment /. makeToken($_NL); ./
            | nl         /. makeToken($_NL); ./
            | white      /. skipToken(); ./
            | '<' '<' '-' /. makeToken($_ASSIGN); ./
            | '-' '>' '>' /. makeToken($_ASSIGN); ./
            | '<' '-'    /. makeToken($_ASSIGN); ./
            | '-' '>'    /. makeToken($_ASSIGN); ./
            | ':' '='    /. makeToken($_ASSIGN); ./
            | '[' '['    /. makeToken($_LIST_ACCESS_START); ./
            | ']' ']'    /. makeToken($_LIST_ACCESS_END); ./
            | ':' ':' ':' /. makeToken($_NAMESPACE_ACCESS); ./
            | ':' ':'    /. makeToken($_NAMESPACE_ACCESS); ./
            | '>' '='    /. makeToken($_COMPARATOR); ./
            | '<' '='    /. makeToken($_COMPARATOR); ./
            | '=' '='    /. makeToken($_COMPARATOR); ./
            | '!' '='    /. makeToken($_COMPARATOR); ./
            | '&' '&'    /. makeToken($_AND); ./
            | '|' '|'    /. makeToken($_OR); ./
            | '.' '.' '.' /. makeToken($_ELLIPSIS); ./
            | '['        /. makeToken($_ARRAY_ACCESS_START); ./
            | ']'        /. makeToken($_ARRAY_ACCESS_END); ./
            | '('        /. makeToken($_PAREN_L); ./
            | ')'        /. makeToken($_PAREN_R); ./
            | '{'        /. makeToken($_CURLY_L); ./
            | '}'        /. makeToken($_CURLY_R); ./
            | ','        /. makeToken($_COMMA); ./
            | ';'        /. makeToken($_SEMICOLON); ./
            | ':'        /. makeToken($_RANGE_OPERATOR); ./
            | '*'        /. makeToken($_MULT_DIV); ./
            | '/'        /. makeToken($_MULT_DIV); ./
            | '+'        /. makeToken($_ADD_SUB); ./
            | '-'        /. makeToken($_ADD_SUB); ./
            | '>'        /. makeToken($_COMPARATOR); ./
            | '<'        /. makeToken($_COMPARATOR); ./
            | '='        /. makeToken($_EQUALS); ./
            | '!'        /. makeToken($_NOT); ./
            | '&'        /. makeToken($_AND); ./
            | '|'        /. makeToken($_OR); ./
            | '^'        /. makeToken($_CARET); ./
            | '~'        /. makeToken($_TILDE); ./
            | '?'        /. makeToken($_HELP); ./
            | '$'        /. makeToken($_COMPONENT_ACCESS); ./
            | '@'        /. makeToken($_COMPONENT_ACCESS); ./
            | '.'        /. makeToken($_DOT); ./

    identifier -> Letter
                | identifier Letter
                | identifier Digit
                | identifier '.'
                | '.' Letter
                | '.' identifier

    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
              n | o | p | q | r | s | t | u | v | w | x | y | z |
              A | B | C | D | E | F | G | H | I | J | K | L | M |
              N | O | P | Q | R | S | T | U | V | W | X | Y | Z | _

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    number ::= Digit
             | number Digit
             | number '.' Digit
             | number '.' Digits
             | '.' Digits

    Digits ::= Digit | Digits Digit

    string ::= '"' SLBody '"'
             | SingleQuote SLBodySQ SingleQuote
    SLBody -> $empty | SLBody NotDQ
    SLBodySQ -> $empty | SLBodySQ NotSQ
    NotDQ -> Letter | Digit | Space | HT | SpecialNotDQ | Escape
    NotSQ -> Letter | Digit | Space | HT | SpecialNotSQ | Escape
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'
    SpecialNotSQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | DoubleQuote | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'
    Escape ::= BackSlash EscapeChar
    EscapeChar -> DoubleQuote | SingleQuote | BackSlash | n | r | t | b | f

    user_op ::= '%' UserOpBody '%'
    UserOpBody -> NotPct | UserOpBody NotPct
    NotPct -> Letter | Digit | Space | HT | '+' | '-' | '/' | '*' | '_' | '.' | '<' | '>' | '='

    HashComment ::= Sharp CommentBody optNL
    CommentBody -> $empty | CommentBody NotNL
    optNL -> $empty | LF | CR | CR LF
    NotNL -> Letter | Digit | Space | HT | SpecialNotNL
    SpecialNotNL -> '+' | '-' | '/' | '*' | '(' | ')' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | DoubleQuote | SingleQuote | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '$' | '_' | BackSlash

    nl ::= LF | CR | CR LF
    white -> Space | HT | FF | white Space | white HT | white FF
%End
