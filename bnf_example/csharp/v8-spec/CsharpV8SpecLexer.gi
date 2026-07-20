-- CsharpV8Spec Lexer (LPG) — structural language subset
-- Not token-stream soup.

%Options list
%Options fp=CsharpV8SpecLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.csharp.v8_spec
%options template=LexerTemplateF.gi
%options filter=CsharpV8SpecKWLexer.gi

%Define
    $kw_lexer_class /.$CsharpV8SpecKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    IDENTIFIER
    STRING
    NUMBER
    LBRACE
    RBRACE
    LBRACKET
    RBRACKET
    COLON
    COMMA
    LPAREN
    RPAREN
    DOT
    SEMI
    PLUS
    MINUS
    STAR
    SLASH
    PERCENT
    EQ
    LT
    GT
    BANG
    NOTEQ
    LTEQ
    GTEQ
    EQEQ
    ANDAND
    OROR
    AT
    CLASS
    PUBLIC
    PRIVATE
    PROTECTED
    STATIC
    VOID
    INT
    BOOL
    STRING_KW
    IF
    ELSE
    RETURN
    TRUE
    FALSE
    NULL
    NEW
    THIS
    BASE
    NAMESPACE
    USING
    PARTIAL
    ABSTRACT
    SEALED
    OVERRIDE
    VIRTUAL
    ASYNC
    FOR
    WHILE
    FOREACH
    IN
    BREAK
    CONTINUE
    TRY
    CATCH
    FINALLY
    THROW
    VAR
    CONST
    READONLY
    INTERFACE
    STRUCT
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
    Token ::= identifier /. checkForKeyWord(); ./
            | number     /. makeToken($_NUMBER); ./
            | string     /. makeToken($_STRING); ./
            | LineComment /. skipToken(); ./
            | white /. skipToken(); ./
            | '!' '=' /. makeToken($_NOTEQ); ./
            | '<' '=' /. makeToken($_LTEQ); ./
            | '>' '=' /. makeToken($_GTEQ); ./
            | '=' '=' /. makeToken($_EQEQ); ./
            | '&' '&' /. makeToken($_ANDAND); ./
            | '|' '|' /. makeToken($_OROR); ./
            | LeftParen /. makeToken($_LPAREN); ./
            | RightParen /. makeToken($_RPAREN); ./
            | LeftBrace /. makeToken($_LBRACE); ./
            | RightBrace /. makeToken($_RBRACE); ./
            | LeftBracket /. makeToken($_LBRACKET); ./
            | RightBracket /. makeToken($_RBRACKET); ./
            | Comma /. makeToken($_COMMA); ./
            | Dot /. makeToken($_DOT); ./
            | Colon /. makeToken($_COLON); ./
            | SemiColon /. makeToken($_SEMI); ./
            | Plus /. makeToken($_PLUS); ./
            | Minus /. makeToken($_MINUS); ./
            | Star /. makeToken($_STAR); ./
            | Slash /. makeToken($_SLASH); ./
            | Percent /. makeToken($_PERCENT); ./
            | Equal /. makeToken($_EQ); ./
            | LessThan /. makeToken($_LT); ./
            | GreaterThan /. makeToken($_GT); ./
            | Exclamation /. makeToken($_BANG); ./
            | AtSign /. makeToken($_AT); ./

    identifier -> Letter | identifier Letter | identifier Digit
    Letter -> LowerCaseLetter | UpperCaseLetter | _ | AfterASCII
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
    number ::= Digit | number Digit
    string ::= DoubleQuote SLBody DoubleQuote
    SLBody -> $empty | SLBody NotDQ
    NotDQ -> Letter | Digit | Space | HT | SingleQuote | Comma | Dot | Colon | SemiColon | Plus | Minus |
             Star | Slash | Equal | _ | Exclamation | QuestionMark | AtSign | Sharp | DollarSign | Percent | Ampersand |
             VerticalBar | Caret | Tilde | LeftParen | RightParen | LeftBracket | RightBracket | LeftBrace | RightBrace |
             LessThan | GreaterThan
    LineComment ::= Slash Slash LineCommentBody
    LineCommentBody -> $empty | LineCommentBody NotNL
    NotNL -> Letter | Digit | Space | HT | SpecialNotNL
    SpecialNotNL -> Plus | Minus | Slash | Star | LeftParen | RightParen | Exclamation | AtSign | BackQuote | Tilde |
                    Percent | Ampersand | Caret | Colon | SemiColon | DoubleQuote | SingleQuote | VerticalBar |
                    LeftBrace | RightBrace | LeftBracket | RightBracket | QuestionMark | Comma | Dot | LessThan |
                    GreaterThan | Equal | Sharp | DollarSign | _ | BackSlash
    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
