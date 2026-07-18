-- Generated parse-level lexer (generic token stream)
%Options list
%Options fp=Java9Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.java.java9
%options template=LexerTemplateF.gi
%options filter=Java9KWLexer.gi

%Define
    $kw_lexer_class /.$Java9KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    DECIMAL_LITERAL
    HEX_LITERAL
    OCT_LITERAL
    BINARY_LITERAL
    FLOAT_LITERAL
    STRING_LITERAL
    CHAR_LITERAL
    BooleanLiteral
    NullLiteral
    ARROW
    ELLIPSIS
    EQEQ
    NOTEQ
    LTEQ
    GTEQ
    AMPEQ
    CARETEQ
    LSHIFTEQ
    MINUSEQ
    PERCENTEQ
    PIPEEQ
    PLUSEQ
    RSHIFTEQ
    SLASHEQ
    STAREQ
    URSHIFTEQ
    QUESTION
    GT
    LT
    IDENTIFIER
    NUMBER
    STRING
    LPAREN
    RPAREN
    LBRACE
    RBRACE
    LBRACKET
    RBRACKET
    LANGLE
    RANGLE
    COMMA
    DOT
    COLON
    SEMI
    EQ
    PLUS
    MINUS
    STAR
    SLASH
    AMP
    BAR
    CARET
    BANG
    QUEST
    AT
    HASH
    DOLLAR
    PERCENT
    TILDE
    BACKTICK
    QUOTE
    BACKSLASH
    ABSTRACT
    ANDAND
    ASSERT
    BOOLEAN
    BREAK
    BYTE
    CASE
    CATCH
    CHAR
    CLASS
    COLONCOLON
    CONTINUE
    DEFAULT
    DO
    DOUBLE
    ELSE
    ENUM
    EXPORTS
    EXTENDS
    FINAL
    FINALLY
    FLOAT
    FOR
    IF
    IMPLEMENTS
    IMPORT
    INSTANCEOF
    INT
    INTERFACE
    LONG
    MINUSMINUS
    MODULE
    NATIVE
    NEW
    OPEN
    OPENS
    OROR
    PACKAGE
    PIPE
    PLUSPLUS
    PRIVATE
    PROTECTED
    PROVIDES
    PUBLIC
    REQUIRES
    RETURN
    SHORT
    STATIC
    STRICTFP
    SUPER
    SWITCH
    SYNCHRONIZED
    THIS
    THROW
    THROWS
    TO
    TRANSIENT
    TRANSITIVE
    TRY
    USES
    VOID
    VOLATILE
    WHILE
    WITH
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
            | NUMBER /. makeToken($_DECIMAL_LITERAL); ./
            | STRING /. makeToken($_STRING_LITERAL); ./
            | CHARACTER /. makeToken($_CHAR_LITERAL); ./
            | IDENTIFIER /. checkForKeyWord(); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | ',' /. makeToken($_COMMA); ./
            | '.' /. makeToken($_DOT); ./
            | ':' /. makeToken($_COLON); ./
            | '=' /. makeToken($_EQ); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_STAR); ./
            | '/' /. makeToken($_SLASH); ./
            | '&' /. makeToken($_AMP); ./
            | '|' /. makeToken($_PIPE); ./
            | '^' /. makeToken($_CARET); ./
            | '!' /. makeToken($_BANG); ./
            | '?' /. makeToken($_QUESTION); ./
            | '@' /. makeToken($_AT); ./
            | '$' /. makeToken($_DOLLAR); ./
            | '%' /. makeToken($_PERCENT); ./
            | '~' /. makeToken($_TILDE); ./
            | '`' /. makeToken($_BACKTICK); ./
            | ';' /. makeToken($_SEMI); ./
            | '#' /. makeToken($_HASH); ./
            | "'" /. makeToken($_QUOTE); ./
            | BackSlash /. makeToken($_BACKSLASH); ./
            | SLComment     /. skipToken(); ./
            | MLComment     /. skipToken(); ./

            | white /. skipToken(); ./

    IDENTIFIER ::= IdStart
                 | IDENTIFIER IdStart
                 | IDENTIFIER Digit

    IdStart -> Letter | '_' | AfterASCII
    Letter -> LowerCaseLetter | UpperCaseLetter
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    NUMBER ::= Digits

    FLOAT_LITERAL ::= Digits '.' Digits
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
    Digits ::= Digit | Digits Digit

    STRING ::= '"' SLBody '"'
    CHARACTER ::= SingleQuote SQBody SingleQuote
    SLBody -> $empty | SLBody NotDQ | SLBody Escape
    SQBody -> SQChar | BackSlash EscapeAny
    SQChar -> Letter | Digit | Space | AfterASCII | '_'
    Escape ::= BackSlash EscapeAny
    EscapeAny -> Letter | Digit | DoubleQuote | SingleQuote | BackSlash | Space | '/' | SpecialEsc
    SpecialEsc -> '+' | '-' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                  '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' |
                  '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$'
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | LF | CR | AfterASCII | '_'
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$'

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

    SLComment ::= '/' '/' SLCBody
    SLCBody -> $empty | SLCBody NotNL

    MLComment ::= '/' '*' MLCBody '*' '/'
    MLCBody -> $empty | MLCBody NotStar | MLCBody '*' NotSlash

    NotNL -> Letter | Digit | SpecialNotNL | Space | HT | FF | AfterASCII | '_'
    NotStar -> Letter | Digit | SpecialNotStar | Space | HT | FF | LF | CR | AfterASCII | '_' | "'" | '"'
    NotSlash -> Letter | Digit | SpecialNotSlash | Space | HT | FF | LF | CR | AfterASCII | '_' | '*' | "'" | '"'

    SpecialNotNL -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | BackSlash
    SpecialNotStar -> '+' | '-' | '/' | '(' | ')' | '!' | '@' | '`' | '~' |
                      '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                      '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | BackSlash
    SpecialNotSlash -> '+' | '-' | '(' | ')' | '!' | '@' | '`' | '~' |
                       '%' | '&' | '^' | ':' | ';' | "'" | '"' | '|' | '{' | '}' |
                       '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | BackSlash

    white -> WSChar | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
