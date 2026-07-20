-- B Lexer (LPG)
-- Ported from antlr/grammars-v4 b/b.g4

%Options list
%Options fp=BLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.b
%options template=LexerTemplateF.gi
%options filter=BKWLexer.gi

%Define
    $kw_lexer_class /.$BKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    INT
    STRING1
    STRING2
    LPAREN
    RPAREN
    LBRACE
    RBRACE
    LBRACKET
    RBRACKET
    SEMI
    COMMA
    COLON
    QUESTION
    EQ
    OR
    AND
    EQEQ
    NEQ
    LT
    LTE
    GT
    GTE
    LSHIFT
    RSHIFT
    PLUS
    MINUS
    STAR
    SLASH
    PERCENT
    NOT
    PLUSPLUS
    MINUSMINUS
    AUTO
    EXTRN
    CASE
    IF
    ELSE
    WHILE
    SWITCH
    GOTO
    RETURN
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
    Token ::= PLUSPLUS /. makeToken($_PLUSPLUS); ./
            | MINUSMINUS /. makeToken($_MINUSMINUS); ./
            | LSHIFT /. makeToken($_LSHIFT); ./
            | RSHIFT /. makeToken($_RSHIFT); ./
            | EQEQ /. makeToken($_EQEQ); ./
            | NEQ /. makeToken($_NEQ); ./
            | LTE /. makeToken($_LTE); ./
            | GTE /. makeToken($_GTE); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | ';' /. makeToken($_SEMI); ./
            | ',' /. makeToken($_COMMA); ./
            | ':' /. makeToken($_COLON); ./
            | '?' /. makeToken($_QUESTION); ./
            | '=' /. makeToken($_EQ); ./
            | '|' /. makeToken($_OR); ./
            | '&' /. makeToken($_AND); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_STAR); ./
            | '/' /. makeToken($_SLASH); ./
            | '%' /. makeToken($_PERCENT); ./
            | '!' /. makeToken($_NOT); ./
            | STRING1 /. makeToken($_STRING1); ./
            | STRING2 /. makeToken($_STRING2); ./
            | INT /. makeToken($_INT); ./
            | identifier /. checkForKeyWord(); ./
            | comment /. skipToken(); ./
            | white /. skipToken(); ./

    PLUSPLUS ::= '+' '+'
    MINUSMINUS ::= '-' '-'
    LSHIFT ::= '<' '<'
    RSHIFT ::= '>' '>'
    EQEQ ::= '=' '='
    NEQ ::= '!' '='
    LTE ::= '<' '='
    GTE ::= '>' '='

    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit
                 | identifier '_'

    INT ::= Digit | INT Digit

    STRING1 ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | SpecialStr | Space | HT | FF | AfterASCII | '_'
    SpecialStr -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                  '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                  '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\'

    STRING2 ::= "'" SQBody "'"
    SQBody -> $empty | SQBody NotSQ
    NotSQ -> Letter | Digit | SpecialSQ | Space | HT | FF | AfterASCII | '_'
    SpecialSQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                 '%' | '&' | '^' | ':' | ';' | '"' | '|' | '{' | '}' |
                 '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '\'

    comment ::= '/' '*' CommentBody '*' '/'
    CommentBody -> $empty | CommentBody CommentChar
    CommentChar -> Letter | Digit | SpecialStr | Space | HT | FF | LF | CR | AfterASCII | _
                 | DoubleQuote | '/' 

    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
