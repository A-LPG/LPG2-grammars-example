-- Real lexer for Java (json-style; keywords via JavaKWLexer)
%Options list
%Options fp=JavaLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.java.java
%options template=LexerTemplateF.gi
%options filter=JavaKWLexer.gi

%Define
    $kw_lexer_class /.$JavaKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    URSHIFTEQ
    RSHIFTEQ
    LSHIFTEQ
    ABSTRACT
    AMP
    AMPEQ
    ANDAND
    ARROW
    ASSERT
    AT
    ATEQ
    AWAIT
    BANG
    BOOLEAN
    BOOL_LITERAL
    BREAK
    BYTE
    CARET
    CARETEQ
    CASE
    CATCH
    CHAR
    CHAR_LITERAL
    CLASS
    COLON
    COLONCOLON
    COMMA
    CONST
    CONTINUE
    DECIMAL_LITERAL
    DEFAULT
    DELETE
    DO
    DOT
    DOUBLE
    ELLIPSIS
    ELSE
    ENUM
    EQ
    EQEQ
    EQEQEQ
    EXPORTS
    EXTENDS
    FATARROW
    FINAL
    FINALLY
    FLOAT
    FOR
    GOTO
    GT
    GTEQ
    HASH
    IDENTIFIER
    IF
    IMPLEMENTS
    IMPORT
    INSTANCEOF
    INT
    INTERFACE
    LBRACE
    LBRACKET
    LONG
    LPAREN
    LSHIFT
    LT
    LTEQ
    MINUS
    MINUSEQ
    MINUSMINUS
    MODULE
    NATIVE
    NEW
    NON_SEALED
    NOTEQ
    NOTEQEQ
    NULL_LITERAL
    OPEN
    OPENS
    OROR
    PACKAGE
    PERCENT
    PERCENTEQ
    PERMITS
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    PRIVATE
    PROTECTED
    PROVIDES
    PUBLIC
    QUESTDOT
    QUESTION
    QUESTQUEST
    RBRACE
    RBRACKET
    RECORD
    REQUIRES
    RETURN
    RPAREN
    RSHIFT
    SEALED
    SEMI
    SHORT
    SLASH
    SLASHEQ
    SLASHSLASH
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STATIC
    STRICTFP
    STRING_LITERAL
    SUPER
    SWITCH
    SYNCHRONIZED
    THIS
    THROW
    THROWS
    TILDE
    TO
    TRANSIENT
    TRANSITIVE
    TRY
    TYPEOF
    URSHIFT
    USES
    VAR
    VOID
    VOLATILE
    WHEN
    WHILE
    WITH
    YIELD
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
            | number     /. makeToken($_DECIMAL_LITERAL); ./
            | string     /. makeToken($_STRING_LITERAL); ./
            | '/' '/' LineCommentBody /. skipToken(); ./
            | white /. skipToken(); ./
            | '.' '>' '=' /. makeToken($_URSHIFTEQ); ./
            | '>' '>' '>' /. makeToken($_URSHIFT); ./
            | '<' '<' '=' /. makeToken($_LSHIFTEQ); ./
            | '>' '>' '=' /. makeToken($_RSHIFTEQ); ./
            | '*' '*' '=' /. makeToken($_STARSTAREQ); ./
            | '=' '=' '=' /. makeToken($_EQEQEQ); ./
            | '!' '=' '=' /. makeToken($_NOTEQEQ); ./
            | '.' '.' '.' /. makeToken($_ELLIPSIS); ./
            | '<' '<' /. makeToken($_LSHIFT); ./
            | '>' '>' /. makeToken($_RSHIFT); ./
            | '*' '*' /. makeToken($_STARSTAR); ./
            | '+' '+' /. makeToken($_PLUSPLUS); ./
            | '-' '-' /. makeToken($_MINUSMINUS); ./
            | '+' '=' /. makeToken($_PLUSEQ); ./
            | '-' '=' /. makeToken($_MINUSEQ); ./
            | '*' '=' /. makeToken($_STAREQ); ./
            | '/' '=' /. makeToken($_SLASHEQ); ./
            | '%' '=' /. makeToken($_PERCENTEQ); ./
            | '&' '=' /. makeToken($_AMPEQ); ./
            | '|' '=' /. makeToken($_PIPEEQ); ./
            | '^' '=' /. makeToken($_CARETEQ); ./
            | '=' '=' /. makeToken($_EQEQ); ./
            | '!' '=' /. makeToken($_NOTEQ); ./
            | '<' '=' /. makeToken($_LTEQ); ./
            | '>' '=' /. makeToken($_GTEQ); ./
            | '&' '&' /. makeToken($_ANDAND); ./
            | '|' '|' /. makeToken($_OROR); ./
            | '-' '>' /. makeToken($_ARROW); ./
            | '=' '>' /. makeToken($_FATARROW); ./
            | ':' ':' /. makeToken($_COLONCOLON); ./
            | '?' '?' /. makeToken($_QUESTQUEST); ./
            | '?' '.' /. makeToken($_QUESTDOT); ./
            | '/' '/' /. makeToken($_SLASHSLASH); ./
            | '@' '=' /. makeToken($_ATEQ); ./
            | '{' /. makeToken($_LBRACE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '[' /. makeToken($_LBRACKET); ./
            | ']' /. makeToken($_RBRACKET); ./
            | ';' /. makeToken($_SEMI); ./
            | ',' /. makeToken($_COMMA); ./
            | '.' /. makeToken($_DOT); ./
            | ':' /. makeToken($_COLON); ./
            | '=' /. makeToken($_EQ); ./
            | '+' /. makeToken($_PLUS); ./
            | '-' /. makeToken($_MINUS); ./
            | '*' /. makeToken($_STAR); ./
            | '/' /. makeToken($_SLASH); ./
            | '%' /. makeToken($_PERCENT); ./
            | '<' /. makeToken($_LT); ./
            | '>' /. makeToken($_GT); ./
            | '!' /. makeToken($_BANG); ./
            | '?' /. makeToken($_QUESTION); ./
            | '&' /. makeToken($_AMP); ./
            | '|' /. makeToken($_PIPE); ./
            | '^' /. makeToken($_CARET); ./
            | '~' /. makeToken($_TILDE); ./
            | '@' /. makeToken($_AT); ./
            | '#' /. makeToken($_HASH); ./

    identifier -> Letter
                | identifier Letter
                | identifier Digit

    Letter -> LowerCaseLetter | UpperCaseLetter | _ | AfterASCII | DollarSign
    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z
    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z
    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    number ::= Digit
             | number Digit
             | number '.' Digit
             | '.' Digits
    Digits ::= Digit | Digits Digit

    string ::= '"' SLBody '"'
             | SingleQuote SLBodySQ SingleQuote
    SLBody -> $empty | SLBody NotDQ
    SLBodySQ -> $empty | SLBodySQ NotSQ
    NotDQ -> Letter | Digit | Space | HT | SingleQuote | SpecialNotDQ | Escape
    NotSQ -> Letter | Digit | Space | HT | DoubleQuote | SpecialNotDQ | Escape
    SpecialNotDQ -> '+' | '-' | '/' | '*' | '(' | ')' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' | '[' | ']' |
                    '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_'
    Escape ::= BackSlash EscapeChar
    EscapeChar -> DoubleQuote | SingleQuote | BackSlash | '/' | n | r | t | b | f

    LineCommentBody -> $empty
                     | LineCommentBody NotEol
    NotEol -> Letter | Digit | Space | HT | SpecialNotDQ | SingleQuote | DoubleQuote

    white -> WSChar
           | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
