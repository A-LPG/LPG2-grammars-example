-- R Lexer (LPG)
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
    IDENTIFIER
    ID
    STRING
    INT
    FLOAT
    COMPLEX
    HEX
    NL
    SEMICOLON
    ELLIPSIS
    DOT
    USER_OP
    LIST_LB LIST_RB
    LB RB
    NS3 NS2
    COMPONENT_DOLLAR COMPONENT_AT
    ASSIGN_LEFT ASSIGN_LEFT2 ASSIGN_RIGHT ASSIGN_RIGHT2 ASSIGN_EQ
    EQUALS
    LE GE EQ NE LT GT
    AND2 OR2 AND OR
    PLUS MINUS STAR SLASH CARET
    COLON TILDE NOT HELP
    LPAREN RPAREN LBRACE RBRACE COMMA
    KW_FUNCTION
    KW_REPEAT
    KW_WHILE
    KW_BREAK
    KW_FALSE
    KW_TRUE
    KW_ELSE
    KW_NEXT
    KW_NULL
    KW_FOR
    KW_NAN
    KW_INF
    KW_NA
    KW_IF
    KW_IN
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
    -- Newlines are whitespace here (RFilter-like). Statement boundaries
    -- are expr juxtaposition / ';' ; 'else' is not separated by NL tokens.
    Token ::= comment /. skipToken(); ./
            | nl /. skipToken(); ./
            | white /. skipToken(); ./
            | '[' '[' /. makeToken($_LIST_LB); ./
            | ']' ']' /. makeToken($_LIST_RB); ./
            | '[' /. makeToken($_LB); ./
            | ']' /. makeToken($_RB); ./
            | ':' ':' ':' /. makeToken($_NS3); ./
            | ':' ':' /. makeToken($_NS2); ./
            | '<' '<' '-' /. makeToken($_ASSIGN_LEFT2); ./
            | '<' '-' /. makeToken($_ASSIGN_LEFT); ./
            | '-' '>' '>' /. makeToken($_ASSIGN_RIGHT2); ./
            | '-' '>' /. makeToken($_ASSIGN_RIGHT); ./
            | ':' '=' /. makeToken($_ASSIGN_EQ); ./
            | '>' '=' /. makeToken($_GE); ./
            | '<' '=' /. makeToken($_LE); ./
            | '=' '=' /. makeToken($_EQ); ./
            | '!' '=' /. makeToken($_NE); ./
            | '&' '&' /. makeToken($_AND2); ./
            | '|' '|' /. makeToken($_OR2); ./
            | USER_OP /. makeToken($_USER_OP); ./
            | ELLIPSIS /. makeToken($_ELLIPSIS); ./
            | STRING /. makeToken($_STRING); ./
            | HEX /. makeToken($_HEX); ./
            | COMPLEX /. makeToken($_COMPLEX); ./
            | FLOAT /. makeToken($_FLOAT); ./
            | INT /. makeToken($_INT); ./
            | ID /. checkForKeyWord($_ID); ./
            | '.' /. makeToken($_DOT); ./
            | ';' /. makeToken($_SEMICOLON); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | ',' /. makeToken($_COMMA); ./
            | '$' /. makeToken($_COMPONENT_DOLLAR); ./
            | '@' /. makeToken($_COMPONENT_AT); ./
            | '=' /. makeToken($_EQUALS); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_STAR); ./
            | '/' /. makeToken($_SLASH); ./
            | '^' /. makeToken($_CARET); ./
            | ':' /. makeToken($_COLON); ./
            | '~' /. makeToken($_TILDE); ./
            | '!' /. makeToken($_NOT); ./
            | '?' /. makeToken($_HELP); ./
            | '&' /. makeToken($_AND); ./
            | '|' /. makeToken($_OR); ./

    comment ::= '#' CommentBody opt_nl
    CommentBody ::= %Empty | CommentBody NotNL
    NotNL -> Letter | Digit | SpecialC | Space | HT | FF | AfterASCII |
             '"' | "'" | '/' | '*' | '+' | '<' | '>' | '#' | '%' | '`' |
             '|' | '!' | '@' | '~' | '$' | '&' | '^' | ':' | ';' | '\' |
             '{' | '}' | '[' | ']' | '?' | ',' | '.' | '=' | '_' | '-'
    opt_nl ::= %Empty | nl
    nl ::= LF | CR | CR LF

    white ::= Space | HT | FF | white Space | white HT | white FF

    USER_OP ::= '%' OpBody '%'
    OpBody ::= %Empty | OpBody OpChar
    OpChar -> Letter | Digit | '_' | '.' | '+' | '-' | '*' | '/' | '=' | '<' | '>' | '!' | '&' | '|' | '^' | '~' | ':' | '#'

    ELLIPSIS ::= '.' '.' '.'

    STRING ::= '"' DQBody '"' | "'" SQBody "'" | '`' BQBody '`'
    DQBody ::= %Empty | DQBody DQChar
    SQBody ::= %Empty | SQBody SQChar
    BQBody ::= %Empty | BQBody BQChar
    DQChar -> Letter | Digit | SpecialC | Space | HT | FF | AfterASCII | "'" | '`' | '/' | '*' | '+' | '<' | '>' | EscSeq
    SQChar -> Letter | Digit | SpecialC | Space | HT | FF | AfterASCII | '"' | '`' | '/' | '*' | '+' | '<' | '>' | EscSeq
    BQChar -> Letter | Digit | SpecialC | Space | HT | FF | AfterASCII | '"' | "'" | '/' | '*' | '+' | '<' | '>' | EscSeq
    EscSeq ::= '\' EscTail
    EscTail -> Letter | Digit | '"' | "'" | '`' | '\' | '/' | 'n' | 't' | 'r'

    SpecialC -> '-' | '(' | ')' | '!' | '@' | '~' | '%' | '&' | '^' | ':' | ';' |
                '|' | '{' | '}' | '[' | ']' | '?' | ',' | '.' | '=' | '#' | '$' | '_'

    HEX ::= '0' XMark HexDigits
    XMark -> 'x' | 'X'
    HexDigits ::= HexDigit | HexDigits HexDigit
    HexDigit -> Digit | a | b | c | d | e | f | A | B | C | D | E | F

    COMPLEX ::= INT 'i' | FLOAT 'i'

    FLOAT ::= Digits '.' DigitsOpt ExpOpt
            | '.' Digits ExpOpt
            | Digits Exp
    ExpOpt ::= %Empty | Exp
    Exp ::= EMark SignOpt Digits
    EMark -> 'e' | 'E'
    SignOpt ::= %Empty | '+' | '-'

    INT ::= Digits
    Digits ::= Digit | Digits Digit
    DigitsOpt ::= %Empty | Digits

    ID ::= Letter IdRest
         | '.' IdDotRest
    IdRest ::= %Empty | IdRest IdChar
    IdDotRest ::= IdDotStart IdRest
    IdDotStart -> Letter | '_' | '.'
    IdChar -> Letter | Digit | '_' | '.'
    Letter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z |
              A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
%End
