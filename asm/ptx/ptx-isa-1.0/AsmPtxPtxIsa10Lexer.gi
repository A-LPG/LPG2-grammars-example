-- Real lexer for AsmPtxPtxIsa10Parser (not token-stream soup). Keywords via AsmPtxPtxIsa10KWLexer.
%Options list
%Options fp=AsmPtxPtxIsa10Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.asm.ptx.ptx_isa_1_0
%options template=LexerTemplateF.gi
%options filter=AsmPtxPtxIsa10KWLexer.gi

%Define
    $kw_lexer_class /.$AsmPtxPtxIsa10KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ABS
    ADD
    ADDC
    ALIGN
    AMP
    AMPEQ
    AND
    ANDAND
    ARROW
    ARROWSTAR
    AT
    ATEQ
    ATOM
    B16
    B32
    B64
    B8
    BACKSLASH
    BACKTICK
    BANG
    BAR
    BINARY_LITERAL
    BITCLEAR
    BRA
    BRKPT
    BYTE
    CALL
    CARET
    CARETEQ
    CAS
    CHAR_LITERAL
    CLOCK
    CNOT
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    COMPUTE_10
    COMPUTE_11
    CONST
    COS
    CROSS
    CTAID
    CVT
    DEBUG
    DEC
    DECIMAL_LITERAL
    DIV
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DOT_AND
    DOT_OR
    DOT_TEX
    DOT_XOR
    DOUBLE_PRECISION_FLOATING_POINT_LITERAL
    DQUOTE
    ELLIPSIS
    ENTRY
    EQ
    EQEQ
    EQEQEQ
    EQU
    EX2
    EXCH
    EXIT
    EXTERN
    EXTRACT
    F16
    F32
    F64
    FATARROW
    FILE
    FMA
    FRC
    FUNC
    G1D
    G2D
    G3D
    GE
    GEU
    GLOBAL
    GRIDID
    GT
    GTEQ
    GTU
    HASH
    HEXADECIMAL_LITERAL
    HI
    HS
    IDENTIFIER
    INC
    INSERT
    LABEL
    LANEID
    LBRACE
    LBRACKET
    LD
    LE
    LEU
    LG2
    LO
    LOC
    LOCAL
    LPAREN
    LS
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    LTU
    MAD
    MAD24
    MAP_F64_TO_F32
    MAX
    MEMBAR
    MIN
    MINUS
    MINUSEQ
    MINUSMINUS
    MOV
    MUL
    MUL24
    NAN_
    NCTAID
    NE
    NEG
    NEU
    NOP
    NOT
    NOTEQ
    NOTEQEQ
    NSMID
    NTID
    NUM
    NUMBER
    OCTAL_LITERAL
    OR
    OROR
    PARAM
    PARAM_VAR_NAME
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    PM
    PRED
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    RBRACE
    RBRACKET
    RCP
    REAL_LITERAL
    RECEIVE
    REG
    REM
    RET
    RM
    RMI
    RN
    RNI
    RP
    RPAREN
    RPI
    RSHIFT
    RSHIFTEQ
    RSQRT
    RZ
    RZI
    S16
    S32
    S64
    S8
    SAD
    SAT
    SECTION
    SELP
    SEMI
    SET
    SETP
    SHARED
    SHL
    SHR
    SIN
    SINGLE_PRECISION_FLOATING_POINT_LITERAL
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SLCT
    SMID
    SM_10
    SM_11
    SM_12
    SM_13
    SQRT
    SQUOTE
    SREG
    ST
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STRING
    STRUCT
    SUB
    SUBC
    SURF
    SYNC
    TARGET
    TEX
    TID
    TILDE
    TRAP
    U16
    U32
    U64
    U8
    UNDERSCORE
    UNI
    UNION
    URSHIFT
    URSHIFTEQ
    V2
    V3
    V4
    VER
    VERSION
    VISIBLE
    VOTE
    VRED
    WARPID
    WARP_SZ
    WIDE
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
            | HashComment /. skipToken(); ./
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
    HashComment ::= Sharp HashCommentBody
    HashCommentBody -> $empty
                     | HashCommentBody NotNL
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
