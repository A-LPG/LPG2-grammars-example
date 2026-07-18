-- Real lexer for VhdlVhdl2008Parser (not token-stream soup). Keywords via VhdlVhdl2008KWLexer.
%Options list
%Options fp=VhdlVhdl2008Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.vhdl.vhdl2008
%options template=LexerTemplateF.gi
%options filter=VhdlVhdl2008KWLexer.gi

%Define
    $kw_lexer_class /.$VhdlVhdl2008KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ABS
    ACCESS
    ACROSS
    AFTER
    ALIAS
    ALL
    AMP
    AMPEQ
    AMPERSAND
    AND
    ANDAND
    APOSTROPHE
    ARCHITECTURE
    ARRAY
    ARROW
    ARROWSTAR
    ASSERT
    AT
    ATEQ
    ATTRIBUTE
    BACKSLASH
    BACKTICK
    BANG
    BAR
    BASED_LITERAL
    BASIC_IDENTIFIER
    BEGIN
    BITCLEAR
    BIT_STRING_LITERAL
    BLOCK
    BODY
    BOX
    BREAK
    BUFFER
    BUS
    CARET
    CARETEQ
    CASE
    CHARACTER_LITERAL
    CHAR_LITERAL
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    COMPONENT
    CONDITION_EQ
    CONDITION_GEQ
    CONDITION_GREATERTHAN
    CONDITION_LEQ
    CONDITION_LESSTHAN
    CONDITION_NEQ
    CONDITION_OPERATOR
    CONFIGURATION
    CONSTANT
    CONTEXT
    DECIMAL_LITERAL
    DEFAULT
    DISCONNECT
    DIV
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DOUBLESTAR
    DOWNTO
    DQUOTE
    ELLIPSIS
    ELSE
    ELSIF
    END
    ENTITY
    EQ
    EQEQ
    EQEQEQ
    EXIT
    EXTENDED_IDENTIFIER
    FATARROW
    FILE
    FOR
    FORCE
    FUNCTION
    GENERATE
    GENERIC
    GEQ
    GREATERTHAN
    GROUP
    GT
    GTEQ
    GUARDED
    HASH
    IDENTIFIER
    IF
    IMPURE
    IN
    INERTIAL
    INOUT
    INTEGER
    IS
    LABEL
    LBRACE
    LBRACKET
    LEQ
    LESSTHAN
    LIBRARY
    LIMIT
    LINKAGE
    LITERAL
    LOOP
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    MAP
    MINUS
    MINUSEQ
    MINUSMINUS
    MOD
    MUL
    NAND
    NATURE
    NEQ
    NEW
    NEXT
    NOISE
    NOR
    NOT
    NOTEQ
    NOTEQEQ
    NULL_
    NUMBER
    OF
    ON
    OPEN
    OR
    OROR
    OTHERS
    OUT
    PACKAGE
    PARAMETER
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    PORT
    POSTPONED
    PROCEDURAL
    PROCEDURE
    PROCESS
    PROTECTED
    PURE
    QUANTITY
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    RANGE
    RBRACE
    RBRACKET
    RECEIVE
    RECORD
    REFERENCE
    REGISTER
    REJECT
    RELEASE
    REM
    REPORT
    RETURN
    REVERSE_RANGE
    ROL
    ROR
    RPAREN
    RSHIFT
    RSHIFTEQ
    SELECT
    SEMI
    SEVERITY
    SHARED
    SIGNAL
    SLA
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SLL
    SPECTRUM
    SQUOTE
    SRA
    SRL
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STRING
    STRING_LITERAL
    SUBNATURE
    SUBTYPE
    TERMINAL
    THEN
    THROUGH
    TILDE
    TO
    TOLERANCE
    TRANSPORT
    TYPE
    UNAFFECTED
    UNDERSCORE
    UNITS
    UNTIL
    URSHIFT
    URSHIFTEQ
    USE
    VARIABLE
    WAIT
    WALRUS
    WHEN
    WHILE
    WITH
    XNOR
    XOR
    YIELDSTAR
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
            | charlit    /. makeToken($_CHAR_LITERAL); ./
            | LineComment /. skipToken(); ./
            | white /. skipToken(); ./
            | 'y' 'i' 'e' 'l' 'd' '*' /. makeToken($_YIELDSTAR); ./
            | '>' '>' '>' '=' /. makeToken($_URSHIFTEQ); ./
            | '!' '=' '=' /. makeToken($_NOTEQEQ); ./
            | '*' '*' '=' /. makeToken($_STARSTAREQ); ./
            | '-' '>' '*' /. makeToken($_ARROWSTAR); ./
            | '.' '.' '.' /. makeToken($_ELLIPSIS); ./
            | '/' '/' '=' /. makeToken($_SLASHSLASHEQ); ./
            | '<' '<' '=' /. makeToken($_LSHIFTEQ); ./
            | '=' '=' '=' /. makeToken($_EQEQEQ); ./
            | '>' '>' '=' /. makeToken($_RSHIFTEQ); ./
            | '>' '>' '>' /. makeToken($_URSHIFT); ./
            | '?' '?' '=' /. makeToken($_QUESTQUESTEQ); ./
            | '!' '=' /. makeToken($_NOTEQ); ./
            | '%' '=' /. makeToken($_PERCENTEQ); ./
            | '&' '&' /. makeToken($_ANDAND); ./
            | '&' '=' /. makeToken($_AMPEQ); ./
            | '&' '^' /. makeToken($_BITCLEAR); ./
            | '*' '*' /. makeToken($_STARSTAR); ./
            | '*' '=' /. makeToken($_STAREQ); ./
            | '+' '+' /. makeToken($_PLUSPLUS); ./
            | '+' '=' /. makeToken($_PLUSEQ); ./
            | '-' '-' /. makeToken($_MINUSMINUS); ./
            | '-' '=' /. makeToken($_MINUSEQ); ./
            | '-' '>' /. makeToken($_ARROW); ./
            | '.' '*' /. makeToken($_DOTSTAR); ./
            | '.' '.' /. makeToken($_DOTDOT); ./
            | '/' '/' /. makeToken($_SLASHSLASH); ./
            | '/' '=' /. makeToken($_SLASHEQ); ./
            | ':' ':' /. makeToken($_COLONCOLON); ./
            | ':' '=' /. makeToken($_COLONEQ); ./
            | '<' '-' /. makeToken($_RECEIVE); ./
            | '<' '<' /. makeToken($_LSHIFT); ./
            | '<' '=' /. makeToken($_LTEQ); ./
            | '<' '>' /. makeToken($_LTGT); ./
            | '=' '=' /. makeToken($_EQEQ); ./
            | '=' '>' /. makeToken($_FATARROW); ./
            | '>' '=' /. makeToken($_GTEQ); ./
            | '>' '>' /. makeToken($_RSHIFT); ./
            | '?' '.' /. makeToken($_QUESTDOT); ./
            | '?' '?' /. makeToken($_QUESTQUEST); ./
            | '@' '=' /. makeToken($_ATEQ); ./
            | '^' '=' /. makeToken($_CARETEQ); ./
            | '|' '=' /. makeToken($_PIPEEQ); ./
            | '|' '|' /. makeToken($_OROR); ./
            | '!' /. makeToken($_BANG); ./
            | '"' /. makeToken($_DQUOTE); ./
            | '#' /. makeToken($_HASH); ./
            | '%' /. makeToken($_PERCENT); ./
            | '&' /. makeToken($_AMP); ./
            | '(' /. makeToken($_LPAREN); ./
            | ')' /. makeToken($_RPAREN); ./
            | '*' /. makeToken($_STAR); ./
            | '+' /. makeToken($_PLUS); ./
            | ',' /. makeToken($_COMMA); ./
            | '-' /. makeToken($_MINUS); ./
            | '.' /. makeToken($_DOT); ./
            | '/' /. makeToken($_SLASH); ./
            | ':' /. makeToken($_COLON); ./
            | ';' /. makeToken($_SEMI); ./
            | '<' /. makeToken($_LT); ./
            | '=' /. makeToken($_EQ); ./
            | '>' /. makeToken($_GT); ./
            | '?' /. makeToken($_QUESTION); ./
            | '@' /. makeToken($_AT); ./
            | '[' /. makeToken($_LBRACKET); ./
            | '\' /. makeToken($_BACKSLASH); ./
            | ']' /. makeToken($_RBRACKET); ./
            | '^' /. makeToken($_CARET); ./
            | '`' /. makeToken($_BACKTICK); ./
            | '{' /. makeToken($_LBRACE); ./
            | '|' /. makeToken($_PIPE); ./
            | '}' /. makeToken($_RBRACE); ./
            | '~' /. makeToken($_TILDE); ./

    identifier -> Letter
                | identifier Letter
                | identifier Digit

    Letter -> LowerCaseLetter
            | UpperCaseLetter
            | _
            | AfterASCII
            | DollarSign

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    number ::= Digit
             | number Digit
             | number '_' Digit
             | number '.' Digit
             | number '.' Digits
             | '.' Digits

    Digits ::= Digit
             | Digits Digit

    string ::= '"' SLBody '"'
             | SingleQuote SLBodySQ SingleQuote

    SLBody -> $empty
            | SLBody NotDQ

    SLBodySQ -> $empty
              | SLBodySQ NotSQ

    NotDQ -> Letter | Digit | Space | HT | SingleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | Escape

    NotSQ -> Letter | Digit | Space | HT | DoubleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | Escape

    Escape ::= BackSlash EscapeChar
    EscapeChar -> DoubleQuote | SingleQuote | BackSlash | '/' | n | r | t | b | f

    charlit ::= SingleQuote NotSQ SingleQuote

    LineComment ::= '/' '/' LineCommentBody
    LineCommentBody -> $empty
                     | LineCommentBody NotNL
    NotNL -> Letter | Digit | Space | HT | SpecialNotNL
    SpecialNotNL -> '+' | '-' | '/' | '*' | '(' | ')' | '!' | '@' | '~' |
                    '%' | '&' | '^' | ':' | ';' | DoubleQuote | SingleQuote | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash

    white -> WSChar
           | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
