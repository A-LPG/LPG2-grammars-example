-- Real lexer for Java8 (not token-stream soup). Keywords via Java8KWLexer.
-- Ported from antlr/grammars-v4/java/java8
%Options list
%Options fp=Java8Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.java.java8
%options template=LexerTemplateF.gi
%options filter=Java8KWLexer.gi

%Define
    $kw_lexer_class /.$Java8KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    STRING_LITERAL
    CHAR_LITERAL
    DECIMAL_LITERAL
    HEX_LITERAL
    OCT_LITERAL
    BINARY_LITERAL
    FLOAT_LITERAL
    ARROW
    ELLIPSIS
    EQEQ
    NOTEQ
    LTEQ
    GTEQ
    AMP
    AT
    BANG
    CARET
    CLASS
    COLON
    COMMA
    DOLLAR
    DOT
    ELSE
    EQ
    EXTENDS
    FALSE
    FOR
    GT
    HASH
    IDENTIFIER
    IF
    IMPLEMENTS
    IMPORT
    INT
    INTERFACE
    LBRACE
    LBRACKET
    LPAREN
    LT
    MINUS
    NEW
    NULLLITERAL
    NUMBER
    PACKAGE
    PERCENT
    PIPE
    PLUS
    PRIVATE
    PUBLIC
    QUESTION
    RBRACE
    RBRACKET
    RETURN
    RPAREN
    SEMI
    SLASH
    STAR
    STATIC
    STRING
    TILDE
    TRUE
    VOID
    WHILE
    ABSTRACT
    AMPEQ
    ASSERT
    BOOLEAN
    BREAK
    BYTE
    BooleanLiteral
    CARETEQ
    CASE
    CATCH
    CHAR
    CONTINUE
    DEFAULT
    DO
    DOUBLE
    ENUM
    FINAL
    FINALLY
    FLOAT
    INSTANCEOF
    LONG
    LSHIFTEQ
    MINUSEQ
    NATIVE
    NOTEQ
    NullLiteral
    PERCENTEQ
    PIPEEQ
    PLUSEQ
    PROTECTED
    RSHIFTEQ
    SHORT
    SLASHEQ
    STAREQ
    STRICTFP
    SUPER
    SWITCH
    SYNCHRONIZED
    THIS
    THROW
    THROWS
    TRANSIENT
    TRY
    URSHIFTEQ
    VOLATILE
    ANDAND
    COLONCOLON
    MINUSMINUS
    OROR
    PLUSPLUS
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
    BackSlash    ::= '\\'
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
    Token ::= ELLIPSIS /. makeToken($_ELLIPSIS); ./
            | ARROW /. makeToken($_ARROW); ./
            | EQEQ /. makeToken($_EQEQ); ./
            | NOTEQ /. makeToken($_NOTEQ); ./
            | LTEQ /. makeToken($_LTEQ); ./
            | GTEQ /. makeToken($_GTEQ); ./
            | PLUSPLUS /. makeToken($_PLUSPLUS); ./
            | MINUSMINUS /. makeToken($_MINUSMINUS); ./
            | ANDAND /. makeToken($_ANDAND); ./
            | OROR /. makeToken($_OROR); ./
            | COLONCOLON /. makeToken($_COLONCOLON); ./
            | LSHIFTEQ /. makeToken($_LSHIFTEQ); ./
            | RSHIFTEQ /. makeToken($_RSHIFTEQ); ./
            | URSHIFTEQ /. makeToken($_URSHIFTEQ); ./
            | STAREQ /. makeToken($_STAREQ); ./
            | SLASHEQ /. makeToken($_SLASHEQ); ./
            | PERCENTEQ /. makeToken($_PERCENTEQ); ./
            | PLUSEQ /. makeToken($_PLUSEQ); ./
            | MINUSEQ /. makeToken($_MINUSEQ); ./
            | AMPEQ /. makeToken($_AMPEQ); ./
            | CARETEQ /. makeToken($_CARETEQ); ./
            | PIPEEQ /. makeToken($_PIPEEQ); ./
            | FLOAT_LITERAL /. makeToken($_FLOAT_LITERAL); ./
            | HEX_LITERAL /. makeToken($_HEX_LITERAL); ./
            | BINARY_LITERAL /. makeToken($_BINARY_LITERAL); ./
            | OCT_LITERAL /. makeToken($_OCT_LITERAL); ./
            | number     /. makeToken($_DECIMAL_LITERAL); ./
            | string     /. makeToken($_STRING_LITERAL); ./
            | character  /. makeToken($_CHAR_LITERAL); ./
            | identifier /. checkForKeyWord(); ./
            | LineComment /. skipToken(); ./
            | white      /. skipToken(); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | ';' /. makeToken($_SEMI); ./
            | ',' /. makeToken($_COMMA); ./
            | ':' /. makeToken($_COLON); ./
            | '.' /. makeToken($_DOT); ./
            | '=' /. makeToken($_EQ); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_STAR); ./
            | '/' /. makeToken($_SLASH); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | '@' /. makeToken($_AT); ./
            | '#' /. makeToken($_HASH); ./
            | '$' /. makeToken($_DOLLAR); ./
            | '^' /. makeToken($_CARET); ./
            | '&' /. makeToken($_AMP); ./
            | '|' /. makeToken($_PIPE); ./
            | '~' /. makeToken($_TILDE); ./
            | '?' /. makeToken($_QUESTION); ./
            | '%' /. makeToken($_PERCENT); ./
            | '!' /. makeToken($_BANG); ./


    Letter -> LowerCaseLetter
            | UpperCaseLetter
            | _
            | AfterASCII

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    identifier ::= Letter
                 | identifier Letter
                 | identifier Digit

    number ::= Digit
             | number Digit

    FLOAT_LITERAL ::= number '.' number
    HEX_LITERAL ::= 0 x HexDigits
                  | 0 X HexDigits
    BINARY_LITERAL ::= 0 b BinaryDigits
                     | 0 B BinaryDigits
    OCT_LITERAL ::= 0 OctDigits

    HexDigits ::= HexDigit | HexDigits HexDigit
    HexDigit -> Digit | a | b | c | d | e | f | A | B | C | D | E | F
    BinaryDigits ::= BinaryDigit | BinaryDigits BinaryDigit
    BinaryDigit -> 0 | 1
    OctDigits ::= OctDigit | OctDigits OctDigit
    OctDigit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7

    ELLIPSIS ::= '.' '.' '.'
    ARROW ::= '-' '>'
    EQEQ ::= '=' '='
    NOTEQ ::= '!' '='
    LTEQ ::= '<' '='
    GTEQ ::= '>' '='
    PLUSPLUS ::= '+' '+'
    MINUSMINUS ::= '-' '-'
    ANDAND ::= '&' '&'
    OROR ::= '|' '|'
    COLONCOLON ::= ':' ':'
    LSHIFTEQ ::= '<' '<' '='
    RSHIFTEQ ::= '>' '>' '='
    URSHIFTEQ ::= '>' '>' '>' '='
    STAREQ ::= '*' '='
    SLASHEQ ::= '/' '='
    PERCENTEQ ::= '%' '='
    PLUSEQ ::= '+' '='
    MINUSEQ ::= '-' '='
    AMPEQ ::= '&' '='
    CARETEQ ::= '^' '='
    PIPEEQ ::= '|' '='

    string ::= '"' SLBody '"'
    character ::= SingleQuote SQBody SingleQuote

    SLBody -> $empty
            | SLBody NotDQ

    SQBody -> $empty
            | SQBody NotSQ

    NotDQ -> Letter | Digit | Space | HT | SpecialNotDQ | SingleQuote
    NotSQ -> Letter | Digit | Space | HT | SpecialNotSQ | DoubleQuote

    SpecialNotDQ -> '+' | '-' | '/' | '*' | '(' | ')' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash
    SpecialNotSQ -> '+' | '-' | '/' | '*' | '(' | ')' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash

    white -> WSChar
           | white WSChar
    WSChar -> Space | LF | CR | HT | FF

    LineComment ::= '/' '/' CommentBody
    CommentBody -> $empty
                 | CommentBody NotNL
    NotNL -> Letter | Digit | Space | HT | SpecialNotDQ

%End
