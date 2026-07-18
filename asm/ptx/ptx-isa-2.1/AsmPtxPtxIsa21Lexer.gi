-- Real lexer for AsmPtxPtxIsa21Parser (not token-stream soup). Keywords via AsmPtxPtxIsa21KWLexer.
%Options list
%Options fp=AsmPtxPtxIsa21Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.asm.ptx.ptx_isa_2_1
%options template=LexerTemplateF.gi
%options filter=AsmPtxPtxIsa21KWLexer.gi

%Define
    $kw_lexer_class /.$AsmPtxPtxIsa21KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    AMP
    AMPEQ
    ANDAND
    ARROW
    ARROWSTAR
    AT
    ATEQ
    BACKSLASH
    BACKTICK
    BANG
    BITCLEAR
    CARET
    CARETEQ
    CHAR_LITERAL
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DQUOTE
    ELLIPSIS
    EQ
    EQEQ
    EQEQEQ
    FATARROW
    GT
    GTEQ
    HASH
    IDENTIFIER
    KI_ABS
    KI_ADD
    KI_ADDC
    KI_AND
    KI_ATOM
    KI_BAR
    KI_BFE
    KI_BFI
    KI_BFIND
    KI_BRA
    KI_BREV
    KI_BRKPT
    KI_CALL
    KI_CLZ
    KI_CNOT
    KI_COPYSIGN
    KI_COS
    KI_CVT
    KI_CVTA
    KI_DIV
    KI_EX2
    KI_EXIT
    KI_FMA
    KI_ISSPACEP
    KI_LD
    KI_LDU
    KI_LG2
    KI_MAD
    KI_MAD24
    KI_MAX
    KI_MEMBAR
    KI_MIN
    KI_MOV
    KI_MUL
    KI_MUL24
    KI_NEG
    KI_NOT
    KI_OR
    KI_PMEVENT
    KI_POPC
    KI_PREFETCH
    KI_PREFETCHU
    KI_PRMT
    KI_RCP
    KI_RED
    KI_REM
    KI_RET
    KI_RSQRT
    KI_SAD
    KI_SELP
    KI_SET
    KI_SETP
    KI_SHL
    KI_SHR
    KI_SIN
    KI_SLCT
    KI_SQRT
    KI_ST
    KI_SUB
    KI_SUBC
    KI_SULD
    KI_SUQ
    KI_SURED
    KI_SUST
    KI_TESTP
    KI_TEX
    KI_TRAP
    KI_TXQ
    KI_VABSDIFF
    KI_VADD
    KI_VMAD
    KI_VMAX
    KI_VMIN
    KI_VOTE
    KI_VSET
    KI_VSHL
    KI_VSHR
    KI_VSUB
    KI_XOR
    K_1D
    K_2D
    K_3D
    K_A
    K_ADD
    K_ADDRESS_SIZE
    K_ADDR_MODE_0
    K_ADDR_MODE_1
    K_ADDR_MODE_2
    K_ALIGN
    K_ALL
    K_AND
    K_ANY
    K_APPROX
    K_ARRIVE
    K_B
    K_B16
    K_B32
    K_B4E
    K_B64
    K_B8
    K_BALLOT
    K_BRANCHTARGETS
    K_CA
    K_CALLPROTOTYPE
    K_CALLTARGETS
    K_CAS
    K_CC
    K_CG
    K_CHANNEL_DATA_TYPE
    K_CHANNEL_ORDER
    K_CLAMP
    K_CONST
    K_CS
    K_CTA
    K_CV
    K_DEC
    K_DEPTH
    K_DWARF
    K_ECL
    K_ECR
    K_ENTRY
    K_EQ
    K_EQU
    K_EXCH
    K_EXTERN
    K_F16
    K_F32
    K_F4E
    K_F64
    K_FILE
    K_FILTER_MODE
    K_FINITE
    K_FTZ
    K_FULL
    K_FUNC
    K_G
    K_GE
    K_GEU
    K_GL
    K_GLOBAL
    K_GT
    K_GTU
    K_HEIGHT
    K_HI
    K_HS
    K_INC
    K_INFINITE
    K_L1
    K_L2
    K_LE
    K_LEU
    K_LO
    K_LOC
    K_LOCAL
    K_LS
    K_LT
    K_LTU
    K_LU
    K_MAX
    K_MAXNREG
    K_MAXNTID
    K_MIN
    K_MINNCTAPERSM
    K_NAN
    K_NE
    K_NEU
    K_NORMAL
    K_NORMALIZED_COORDS
    K_NOTANUMBER
    K_NOUNROLL
    K_NUM
    K_NUMBER
    K_OR
    K_P
    K_PARAM
    K_POPC
    K_PRAGMA
    K_PRED
    K_R
    K_RC16
    K_RC8
    K_RED
    K_REG
    K_REQNTID
    K_RM
    K_RMI
    K_RN
    K_RNI
    K_RP
    K_RPI
    K_RZ
    K_RZI
    K_S16
    K_S32
    K_S64
    K_S8
    K_SAMPLERREF
    K_SAT
    K_SECTION
    K_SHARED
    K_SHIFTAMT
    K_SREG
    K_SUBNORMAL
    K_SURFREF
    K_SYNC
    K_SYS
    K_TARGET
    K_TEX
    K_TEXREF
    K_TO
    K_TRAP
    K_U16
    K_U32
    K_U64
    K_U8
    K_UNI
    K_V2
    K_V4
    K_VERSION
    K_VISIBLE
    K_VOLATILE
    K_W
    K_WB
    K_WIDE
    K_WIDTH
    K_WT
    K_X
    K_XOR
    K_Y
    K_Z
    K_ZERO
    LBRACE
    LBRACKET
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    MINUS
    MINUSEQ
    MINUSMINUS
    NOTEQ
    NOTEQEQ
    NUMBER
    OROR
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    RBRACE
    RBRACKET
    RECEIVE
    RPAREN
    RSHIFT
    RSHIFTEQ
    SEMI
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SQUOTE
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STRING
    TILDE
    T_AND
    T_ANDAND
    T_AT
    T_CB
    T_CC
    T_COLON
    T_COMMA
    T_CP
    T_DEC_LITERAL
    T_DOT
    T_ELLIPSIS
    T_EQ
    T_EQEQ
    T_FLT_LITERAL
    T_GE
    T_GT
    T_GTGT
    T_HEX_LITERAL
    T_LE
    T_LT
    T_LTLT
    T_MINUS
    T_NOT
    T_NOTEQ
    T_OB
    T_OC
    T_OCT_LITERAL
    T_OP
    T_OR
    T_OROR
    T_PERCENT
    T_PLUS
    T_QUESTION
    T_SEMICOLON
    T_SLASH
    T_STAR
    T_STRING
    T_TILDE
    T_UNDERSCORE
    T_WORD
    T_XOR
    UNDERSCORE
    URSHIFT
    URSHIFTEQ
    U_DEBUG_ABBREV
    U_DEBUG_INFO
    U_DEBUG_LINE
    U_DEBUG_LOC
    U_DEBUG_PUBNAMES
    U_DEBUG_RANGES
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
    -- Digit-leading dotted keywords (must not share prefix DFA with fltlit '.' Digits)
    Token ::= '.' '1' 'd' /. makeToken($_K_1D); ./
            | '.' '2' 'd' /. makeToken($_K_2D); ./
            | '.' '3' 'd' /. makeToken($_K_3D); ./
            | '.' '4' 'b' 'y' 't' 'e' /. makeToken($_U_4BYTE); ./
            | DotIdentifier /. checkForKeyWord($_T_WORD); ./
            | PercentWord /. makeToken($_T_WORD); ./
            | DollarWord /. makeToken($_T_WORD); ./
            | UnderscoreWord /. makeToken($_T_WORD); ./
            | identifier /. checkForKeyWord($_T_WORD); ./
            | hexlit /. makeToken($_T_HEX_LITERAL); ./
            | octlit /. makeToken($_T_OCT_LITERAL); ./
            | fltlit /. makeToken($_T_FLT_LITERAL); ./
            | declit /. makeToken($_T_DEC_LITERAL); ./
            | string /. makeToken($_T_STRING); ./
            | LineComment /. skipToken(); ./
            | BlockComment /. skipToken(); ./
            | white /. skipToken(); ./
            | '.' '.' '.' /. makeToken($_T_ELLIPSIS); ./
            | '&' '&' /. makeToken($_T_ANDAND); ./
            | '|' '|' /. makeToken($_T_OROR); ./
            | '<' '<' /. makeToken($_T_LTLT); ./
            | '>' '>' /. makeToken($_T_GTGT); ./
            | '=' '=' /. makeToken($_T_EQEQ); ./
            | '!' '=' /. makeToken($_T_NOTEQ); ./
            | '<' '=' /. makeToken($_T_LE); ./
            | '>' '=' /. makeToken($_T_GE); ./
            | '!' /. makeToken($_T_NOT); ./
            | '%' /. makeToken($_T_PERCENT); ./
            | '&' /. makeToken($_T_AND); ./
            | '(' /. makeToken($_T_OP); ./
            | ')' /. makeToken($_T_CP); ./
            | '*' /. makeToken($_T_STAR); ./
            | '+' /. makeToken($_T_PLUS); ./
            | ',' /. makeToken($_T_COMMA); ./
            | '-' /. makeToken($_T_MINUS); ./
            | '/' /. makeToken($_T_SLASH); ./
            | ':' /. makeToken($_T_COLON); ./
            | ';' /. makeToken($_T_SEMICOLON); ./
            | '<' /. makeToken($_T_LT); ./
            | '=' /. makeToken($_T_EQ); ./
            | '>' /. makeToken($_T_GT); ./
            | '?' /. makeToken($_T_QUESTION); ./
            | '@' /. makeToken($_T_AT); ./
            | '[' /. makeToken($_T_OB); ./
            | ']' /. makeToken($_T_CB); ./
            | '^' /. makeToken($_T_XOR); ./
            | '_' /. makeToken($_T_UNDERSCORE); ./
            | '{' /. makeToken($_T_OC); ./
            | '|' /. makeToken($_T_OR); ./
            | '}' /. makeToken($_T_CC); ./
            | '~' /. makeToken($_T_TILDE); ./

    -- Letter/_ after '.' only — avoids DFA clash with fltlit '.' Digits (which dropped DotIdentifier)
    DotIdentifier ::= '.' DotIdStart
                    | DotIdentifier DotIdContinue
    DotIdStart -> LetterNoPct | _
    DotIdContinue -> LetterNoPct | Digit | _

    -- T_WORD forms that start with % $ _
    PercentWord ::= '%' FollowSym | PercentWord FollowSym
    DollarWord ::= '$' FollowSym | DollarWord FollowSym
    UnderscoreWord ::= '_' FollowSym | UnderscoreWord FollowSym
    FollowSym -> Letter | Digit | _ | DollarSign | '%' 

    identifier -> LetterNoPct
                | identifier LetterNoPct
                | identifier Digit
                | identifier _
    LetterNoPct -> LowerCaseLetter | UpperCaseLetter | AfterASCII

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

    hexlit ::= 0 x HexDigits | 0 X HexDigits
    HexDigits ::= HexDigit | HexDigits HexDigit
    HexDigit -> Digit | a | b | c | d | e | f | A | B | C | D | E | F

    octlit ::= 0 OctDigits
    OctDigits ::= OctDigit | OctDigits OctDigit
    OctDigit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7

    fltlit ::= Digits '.' Digits
            | Digits '.'
            | '.' Digits

    declit ::= Digits
    Digits ::= Digit | Digits Digit

    string ::= '"' stringBody '"'
    stringBody -> $empty | stringBody stringChar
    stringChar -> NotDQ | BackSlash Printable

    charlit ::= "'" NotSQ "'"

    NotDQ -> Letter | Digit | Space | HT | SingleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '(' | ')' | '[' | ']' | '{' | '}' | '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' |
             '$' | '%' | '&' | '|' | '^' | '~' | AfterASCII
    NotSQ -> Letter | Digit | Space | HT | DoubleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '(' | ')' | '[' | ']' | '{' | '}' | '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' |
             '$' | '%' | '&' | '|' | '^' | '~' | AfterASCII
    Printable -> Letter | Digit | Special | Space | HT | AfterASCII
    Special -> '(' | ')' | '[' | ']' | '?' | ',' | '.' | ':' | ';' | '+' | '-' |
               '"' | SingleQuote | '~' | '!' | '@' | '#' | '$' | '%' | '&' | '|' |
               '{' | '}' | '^' | '_' | BackSlash | '/' | '*' | '='

    white ::= WhiteChar | white WhiteChar
    WhiteChar -> Space | HT | LF | CR | FF

    LineComment ::= '/' '/' LineCommentBody
    LineCommentBody -> $empty | LineCommentBody NotNL
    NotNL -> Letter | Digit | Special | Space | HT | AfterASCII

    BlockComment ::= '/' '*' BlockCommentBody '*' '/'
    BlockCommentBody -> $empty | BlockCommentBody BlockCommentChar
    BlockCommentChar -> NotStar | '*' NotSlash
    NotStar -> Letter | Digit | SpecialNoStar | Space | HT | LF | CR | FF | AfterASCII
    NotSlash -> Letter | Digit | SpecialNoSlash | Space | HT | LF | CR | FF | AfterASCII
    SpecialNoStar -> '(' | ')' | '[' | ']' | '?' | ',' | '.' | ':' | ';' | '+' | '-' |
                     '"' | SingleQuote | '~' | '!' | '@' | '#' | '$' | '%' | '&' | '|' |
                     '{' | '}' | '^' | '_' | BackSlash | '/' | '='
    SpecialNoSlash -> '(' | ')' | '[' | ']' | '?' | ',' | '.' | ':' | ';' | '+' | '-' |
                      '"' | SingleQuote | '~' | '!' | '@' | '#' | '$' | '%' | '&' | '|' |
                      '{' | '}' | '^' | '_' | BackSlash | '*' | '='
%End
