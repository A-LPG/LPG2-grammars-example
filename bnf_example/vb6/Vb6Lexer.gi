-- Real lexer for Vb6Parser (not token-stream soup). Keywords via Vb6KWLexer.
%Options list
%Options fp=Vb6Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.vb6
%options template=LexerTemplateF.gi
%options filter=Vb6KWLexer.gi

%Define
    $kw_lexer_class /.$Vb6KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ACCESS
    ADDRESSOF
    ALIAS
    AMP
    AMPEQ
    AMPERSAND
    AND
    ANDAND
    APPACTIVATE
    APPEND
    ARROW
    ARROWSTAR
    AS
    ASSIGN
    AT
    ATEQ
    ATTRIBUTE
    BACKSLASH
    BACKTICK
    BANG
    BEEP
    BEGIN
    BEGINPROPERTY
    BINARY
    BITCLEAR
    BOOLEAN
    BYREF
    BYTE
    BYVAL
    CALL
    CARET
    CARETEQ
    CASE
    CHAR_LITERAL
    CHDIR
    CHDRIVE
    CLASS
    CLOSE
    COLLECTION
    COLON
    COLONCOLON
    COLONEQ
    COLORLITERAL
    COMMA
    CONST
    DATE
    DATELITERAL
    DECLARE
    DEFBOOL
    DEFBYTE
    DEFCUR
    DEFDATE
    DEFDBL
    DEFDEC
    DEFINT
    DEFLNG
    DEFOBJ
    DEFSNG
    DEFSTR
    DEFVAR
    DELETESETTING
    DIM
    DIV
    DO
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DOUBLE
    DOUBLELITERAL
    DQUOTE
    EACH
    ELLIPSIS
    ELSE
    ELSEIF
    END
    ENDPROPERTY
    END_ENUM
    END_FUNCTION
    END_IF
    END_PROPERTY
    END_SELECT
    END_SUB
    END_TYPE
    END_WITH
    ENUM
    EQ
    EQEQ
    EQEQEQ
    EQV
    ERASE
    ERROR
    EVENT
    EXCLAMATIONMARK
    EXIT_DO
    EXIT_FOR
    EXIT_FUNCTION
    EXIT_PROPERTY
    EXIT_SUB
    FALSE
    FATARROW
    FILECOPY
    FILENUMBER
    FOR
    FRIEND
    FRX_OFFSET
    FUNCTION
    GEQ
    GET
    GLOBAL
    GOSUB
    GOTO
    GT
    GTEQ
    GUID
    HASH
    IDENTIFIER
    IDIV
    IF
    IMP
    IMPLEMENTS
    IN
    INPUT
    INTEGER
    INTEGERLITERAL
    IS
    KILL
    LBRACE
    LBRACKET
    LEN
    LEQ
    LET
    LIB
    LIKE
    LINE_INPUT
    LOAD
    LOCK
    LOCK_READ
    LOCK_READ_WRITE
    LOCK_WRITE
    LONG
    LOOP
    LPAREN
    LSET
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    L_SQUARE_BRACKET
    MACRO_ELSE
    MACRO_ELSEIF
    MACRO_END_IF
    MACRO_IF
    ME
    MID
    MINUS
    MINUSEQ
    MINUSMINUS
    MINUS_EQ
    MKDIR
    MOD
    MULT
    NAME
    NEQ
    NEW
    NEWLINE
    NEXT
    NOT
    NOTEQ
    NOTEQEQ
    NOTHING
    NULL_
    NUMBER
    OBJECT
    OCTALLITERAL
    ON
    ON_ERROR
    ON_LOCAL_ERROR
    OPEN
    OPTIONAL
    OPTION_BASE
    OPTION_COMPARE
    OPTION_EXPLICIT
    OPTION_PRIVATE_MODULE
    OR
    OROR
    OUTPUT
    PARAMARRAY
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    PLUS_EQ
    POW
    PRESERVE
    PRINT
    PRIVATE
    PROPERTY_GET
    PROPERTY_LET
    PROPERTY_SET
    PUBLIC
    PUT
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    RAISEEVENT
    RANDOM
    RANDOMIZE
    RBRACE
    RBRACKET
    READ
    READ_WRITE
    RECEIVE
    REDIM
    REM
    RESET
    RESUME
    RETURN
    RMDIR
    RPAREN
    RSET
    RSHIFT
    RSHIFTEQ
    R_SQUARE_BRACKET
    SAVEPICTURE
    SAVESETTING
    SEEK
    SELECT
    SEMI
    SEMICOLON
    SENDKEYS
    SET
    SETATTR
    SHARED
    SINGLE
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SPC
    SQUOTE
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STATIC
    STEP
    STOP
    STRING
    STRINGLITERAL
    SUB
    TAB
    THEN
    TILDE
    TIME
    TO
    TRUE
    TYPE
    TYPEOF
    UNDERSCORE
    UNLOAD
    UNLOCK
    UNTIL
    URSHIFT
    URSHIFTEQ
    VARIANT
    VERSION
    WEND
    WHILE
    WIDTH
    WITH
    WITHEVENTS
    WRITE
    WS
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
    Token ::= Space /. makeToken($_WS); ./
            | HT /. makeToken($_WS); ./
            | identifier /. checkForKeyWord(); ./
            | number     /. makeToken($_NUMBER); ./
            | string     /. makeToken($_STRING); ./
            | LineComment /. skipToken(); ./
            | HashComment /. skipToken(); ./
            | SpaceSpace /. skipToken(); ./
            | LF /. makeToken($_NEWLINE); ./
            | CR /. makeToken($_NEWLINE); ./
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
                | identifier '-' Letter
                | identifier '-' Digit

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
             '^' | '~' | '`' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | Escape

    NotSQ -> Letter | Digit | Space | HT | DoubleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '`' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | Escape

    Escape ::= BackSlash EscapeChar
    EscapeChar -> DoubleQuote | SingleQuote | BackSlash | '/' | n | r | t | b | f

    LineComment ::= '/' '/' LineCommentBody
    HashComment ::= Sharp HashCommentBody
    HashCommentBody -> $empty
                     | HashCommentBody NotNL
    LineCommentBody -> $empty
                     | LineCommentBody NotNL
    NotNL -> Letter | Digit | Space | HT | SpecialNotNL
    SpecialNotNL -> '+' | '-' | '/' | '*' | '(' | ')' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | DoubleQuote | SingleQuote | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash

    white -> Space | HT | FF
           | white Space
           | white HT
           | white FF
%End
