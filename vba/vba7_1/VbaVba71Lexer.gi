-- Real lexer for VbaVba71Parser (not token-stream soup). Keywords via VbaVba71KWLexer.
%Options list
%Options fp=VbaVba71Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.vba.vba7_1
%options template=LexerTemplateF.gi
%options filter=VbaVba71KWLexer.gi

%Define
    $kw_lexer_class /.$VbaVba71KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ABS
    ACCESS
    ADDRESSOF
    ALIAS
    AMP
    AMPEQ
    AMPERSAND
    AND
    ANDAND
    ANY
    APPACTIVATE
    APPEND
    ARRAY
    ARROW
    ARROWSTAR
    AS
    ASSERT
    ASSIGN
    AT
    ATEQ
    ATTRIBUTE
    BACKSLASH
    BACKTICK
    BANG
    BASE
    BEEP
    BEGIN
    BEGINPROPERTY
    BINARY
    BITCLEAR
    BOOLEAN
    BOOLEAN_B
    BYREF
    BYTE
    BYTE_B
    BYVAL
    CALL
    CARET
    CARETEQ
    CASE
    CBOOL
    CBYTE
    CCUR
    CDATE
    CDBL
    CDEC
    CDECL
    CHAR_LITERAL
    CHDIR
    CHDRIVE
    CINT
    CIRCLE
    CLASS
    CLASS_INITIALIZE
    CLASS_TERMINATE
    CLNG
    CLNGLNG
    CLNGPTR
    CLOSE
    COLLECTION
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    COMMENT
    COMPARE
    CONST
    CSNG
    CSTR
    CURRENCY
    CURRENCY_B
    CVAR
    CVERR
    DATABASE
    DATE
    DATELITERAL
    DATE_B
    DEBUG
    DECIMAL
    DECLARE
    DEFBOOL
    DEFBYTE
    DEFCUR
    DEFDATE
    DEFDBL
    DEFDEC
    DEFINT
    DEFLNG
    DEFLNGLNG
    DEFLNGPTR
    DEFOBJ
    DEFSNG
    DEFSTR
    DEFVAR
    DELETESETTING
    DIM
    DIV
    DO
    DOEVENTS
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DOUBLE
    DOUBLE_B
    DQUOTE
    EACH
    ELLIPSIS
    ELSE
    ELSEIF
    EMPTY_X
    END
    ENDIF
    ENDPROPERTY
    ENUM
    EQ
    EQEQ
    EQEQEQ
    EQV
    ERASE
    ERROR
    EVENT
    EXIT
    EXPLICIT
    FALSE
    FATARROW
    FILECOPY
    FILEOFFSET
    FIX
    FLOATLITERAL
    FOR
    FOREIGN_NAME
    FRIEND
    FUNCTION
    GEQ
    GET
    GLOBAL
    GO
    GOSUB
    GOTO
    GT
    GTEQ
    GUID
    HASH
    IDENTIFIER
    IF
    IMP
    IMPLEMENTS
    IN
    INPUT
    INPUTB
    INT
    INTEGER
    INTEGERLITERAL
    INTEGER_B
    IS
    KILL
    LBOUND
    LBRACE
    LBRACKET
    LEN
    LENB
    LEQ
    LET
    LIB
    LIKE
    LINE
    LINEINPUT
    LINE_CONTINUATION
    LOAD
    LOCK
    LONG
    LONGLONG
    LONGLONG_B
    LONGPTR
    LONGPTR_B
    LONG_B
    LOOP
    LPAREN
    LSET
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    ME
    MID
    MIDB
    MIDB_D
    MID_D
    MINUS
    MINUSEQ
    MINUSMINUS
    MKDIR
    MOD
    MODULE
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
    OBJECT_B
    ON
    OPEN
    OPTION
    OPTIONAL
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
    POW
    PRESERVE
    PRINT
    PRIVATE
    PROPERTY
    PSET
    PTRSAFE
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
    RECEIVE
    REDIM
    REM
    REMCOMMENT
    RESET
    RESUME
    RETURN
    RMDIR
    RPAREN
    RSET
    RSHIFT
    RSHIFTEQ
    SAVEPICTURE
    SAVESETTING
    SCALE
    SEEK
    SELECT
    SEMI
    SENDKEYS
    SET
    SETATTR
    SGN
    SHARED
    SINGLE
    SINGLE_B
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
    STRING_B
    SUB
    TAB
    THEN
    TILDE
    TIME
    TO
    TRUE
    TYPE
    TYPEOF
    UBOUND
    UNDERSCORE
    UNLOAD
    UNLOCK
    UNTIL
    URSHIFT
    URSHIFTEQ
    VARIANT
    VARIANT_B
    VB_BASE
    VB_CONTROL
    VB_CREATABLE
    VB_CUSTOMIZABLE
    VB_DESCRIPTION
    VB_EXPOSED
    VB_EXT_KEY
    VB_GLOBALNAMESPACE
    VB_HELPID
    VB_INVOKE_FUNC
    VB_INVOKE_PROPERTY
    VB_INVOKE_PROPERTYPUT
    VB_INVOKE_PROPERTYPUTREF
    VB_MEMBERFLAGS
    VB_NAME
    VB_PREDECLAREDID
    VB_PROCDATA
    VB_TEMPLATEDERIVED
    VB_USERMEMID
    VB_VARDESCRIPTION
    VB_VARHELPID
    VB_VARMEMBERFLAGS
    VB_VARPROCDATA
    VB_VARUSERMEMID
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
            | VbNameTok /. makeToken($_VB_NAME); ./
            | identifier /. checkForKeyWord(); ./
            | number     /. makeToken($_NUMBER); ./
            | string     /. makeToken($_STRINGLITERAL); ./
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

    VbNameTok ::= 'V' 'B' '_' 'N' 'a' 'm' 'e'

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
