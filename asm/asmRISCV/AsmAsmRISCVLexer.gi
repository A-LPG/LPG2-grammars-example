-- Real lexer for AsmAsmRISCVParser (not token-stream soup). Keywords via AsmAsmRISCVKWLexer.
%Options list
%Options fp=AsmAsmRISCVLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.asm.asmRISCV
%options template=LexerTemplateF.gi
%options filter=AsmAsmRISCVKWLexer.gi

%Define
    $kw_lexer_class /.$AsmAsmRISCVKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ADD
    ADDI
    ADDIW
    ADDW
    AMOADD_D
    AMOADD_W
    AMOAND_D
    AMOAND_W
    AMOMAXU_D
    AMOMAXU_W
    AMOMAX_D
    AMOMAX_W
    AMOMINU_D
    AMOMINU_W
    AMOMIN_D
    AMOMIN_W
    AMOOR_D
    AMOOR_W
    AMOSWAP_D
    AMOSWAP_W
    AMOXOR_D
    AMOXOR_W
    AMP
    AMPEQ
    AND
    ANDAND
    ANDI
    ARROW
    ARROWSTAR
    AT
    ATEQ
    AUIPC
    BACKSLASH
    BACKTICK
    BANG
    BEQ
    BEQZ
    BGE
    BGEU
    BITCLEAR
    BLT
    BLTU
    BLTZ
    BNE
    BNEZ
    CARET
    CARETEQ
    CHAR_LITERAL
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    COMMENT
    CSRR
    CSRRC
    CSRRCI
    CSRREGS
    CSRRS
    CSRRSI
    CSRRW
    CSRRWI
    DIV
    DIVU
    DIVUW
    DIVW
    DOLLAR
    DOT
    DOTDOT
    DOTSTAR
    DQUOTE
    EBREAK
    ECALL
    ELLIPSIS
    EOL
    EQ
    EQEQ
    EQEQEQ
    EXTENSIONNAME
    FADD_D
    FADD_Q
    FADD_S
    FATARROW
    FCLASS_D
    FCLASS_Q
    FCLASS_S
    FCVT_D_L
    FCVT_D_LU
    FCVT_D_Q
    FCVT_D_S
    FCVT_D_W
    FCVT_D_WU
    FCVT_LU_D
    FCVT_LU_Q
    FCVT_LU_S
    FCVT_L_D
    FCVT_L_Q
    FCVT_L_S
    FCVT_Q_D
    FCVT_Q_L
    FCVT_Q_LU
    FCVT_Q_S
    FCVT_Q_W
    FCVT_Q_WU
    FCVT_S_D
    FCVT_S_L
    FCVT_S_LU
    FCVT_S_Q
    FCVT_S_W
    FCVT_S_WU
    FCVT_WU_D
    FCVT_WU_Q
    FCVT_WU_S
    FCVT_W_D
    FCVT_W_Q
    FCVT_W_S
    FDIV_D
    FDIV_Q
    FDIV_S
    FENCE
    FENCE_I
    FEQ_D
    FEQ_Q
    FEQ_S
    FLD
    FLE_D
    FLE_Q
    FLE_S
    FLQ
    FLT_D
    FLT_Q
    FLT_S
    FLW
    FMADD_D
    FMADD_Q
    FMADD_S
    FMAX_D
    FMAX_Q
    FMAX_S
    FMIN_D
    FMIN_Q
    FMIN_S
    FMSUB_D
    FMSUB_Q
    FMSUB_S
    FMUL_D
    FMUL_Q
    FMUL_S
    FMV_D_X
    FMV_Q_X
    FMV_W_X
    FMV_X_D
    FMV_X_Q
    FMV_X_W
    FNMADD_D
    FNMADD_Q
    FNMADD_S
    FNMSUB_D
    FNMSUB_Q
    FNMSUB_S
    FREGS
    FSD
    FSGNJN_D
    FSGNJN_Q
    FSGNJN_S
    FSGNJX_D
    FSGNJX_Q
    FSGNJX_S
    FSGNJ_D
    FSGNJ_Q
    FSGNJ_S
    FSQ
    FSQRT_D
    FSQRT_Q
    FSQRT_S
    FSUB_D
    FSUB_Q
    FSUB_S
    FSW
    GT
    GTEQ
    HASH
    IDENTIFIER
    J
    JAL
    JALR
    LA
    LB
    LBRACE
    LBRACKET
    LBU
    LD
    LH
    LHU
    LI
    LPAREN
    LR_D
    LR_W
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    LUI
    LW
    LWU
    MINUS
    MINUSEQ
    MINUSMINUS
    MRET
    MUL
    MULH
    MULHSU
    MULHU
    MULW
    MV
    NAME
    NOP
    NOTEQ
    NOTEQEQ
    NUMBER
    OP
    OPTIONARG
    OR
    ORI
    OROR
    P
    P2
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
    REM
    REMU
    REMUW
    REMW
    RET
    RPAREN
    RSHIFT
    RSHIFTEQ
    SB
    SC_D
    SC_W
    SD
    SEMI
    SFENCE_VMA
    SH
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SLL
    SLLI
    SLLIW
    SLLW
    SLT
    SLTI
    SLTIU
    SLTU
    SQUOTE
    SRA
    SRAI
    SRAIW
    SRAW
    SRET
    SRL
    SRLI
    SRLIW
    SRLW
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STRING
    SUB
    SUBW
    SW
    TILDE
    UNDERSCORE
    URET
    URSHIFT
    URSHIFTEQ
    WFI
    XOR
    XORI
    XREGS
    YIELDSTAR
    _2BYTE
    _4BYTE
    _8BYTE
    _ALIGN
    _ASSIC
    _ASSICZ
    _ATTRIBUTE
    _BALIGN
    _BSS
    _COMM
    _COMMON
    _DATA
    _DOUBLE
    _DTPRELDWORD
    _DTPRELWORD
    _DWORD
    _ENDM
    _EQU
    _FILE
    _FLOAT
    _GLOBAL
    _GLOBL
    _HALF
    _IDENT
    _INCLUDE
    _MACRO
    _OPTION
    _OPTION_ARCH
    _P2ALIGN
    _POPSECTION
    _PUSHSECTION
    _QUAD
    _RODATA
    _SECTION
    _SET
    _SIZE
    _SKIP
    _SLEB
    _SPACE
    _STRING
    _TEXT
    _TYPE
    _ULEB
    _VARIANT_CC
    _WEAK
    _WORD
    _ZERO
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
    Token ::= LF /. makeToken($_EOL); ./
            | CR /. makeToken($_EOL); ./
            | identifier /. checkForKeyWord(); ./
            | number     /. makeToken($_NUMBER); ./
            | string     /. makeToken($_STRING); ./
            | LineComment /. skipToken(); ./
            | HashComment /. skipToken(); ./
            | white /. skipToken(); ./
            | '.' 'd' 't' 'p' 'r' 'e' 'l' 'd' 'w' 'o' 'r' 'd' /. makeToken($__DTPRELDWORD); ./
            | '.' 'p' 'u' 's' 'h' 's' 'e' 'c' 't' 'i' 'o' 'n' /. makeToken($__PUSHSECTION); ./
            | '.' 'd' 't' 'p' 'r' 'e' 'l' 'w' 'o' 'r' 'd' /. makeToken($__DTPRELWORD); ./
            | '.' 'p' 'o' 'p' 's' 'e' 'c' 't' 'i' 'o' 'n' /. makeToken($__POPSECTION); ./
            | '.' 'v' 'a' 'r' 'i' 'a' 'n' 't' '_' 'c' 'c' /. makeToken($__VARIANT_CC); ./
            | '.' 'a' 't' 't' 'r' 'i' 'b' 'u' 't' 'e' /. makeToken($__ATTRIBUTE); ./
            | 's' 'f' 'e' 'n' 'c' 'e' '.' 'v' 'm' 'a' /. makeToken($_SFENCE_VMA); ./
            | 'a' 'm' 'o' 'm' 'a' 'x' 'u' '.' 'd' /. makeToken($_AMOMAXU_D); ./
            | 'a' 'm' 'o' 'm' 'a' 'x' 'u' '.' 'w' /. makeToken($_AMOMAXU_W); ./
            | 'a' 'm' 'o' 'm' 'i' 'n' 'u' '.' 'd' /. makeToken($_AMOMINU_D); ./
            | 'a' 'm' 'o' 'm' 'i' 'n' 'u' '.' 'w' /. makeToken($_AMOMINU_W); ./
            | 'a' 'm' 'o' 's' 'w' 'a' 'p' '.' 'd' /. makeToken($_AMOSWAP_D); ./
            | 'a' 'm' 'o' 's' 'w' 'a' 'p' '.' 'w' /. makeToken($_AMOSWAP_W); ./
            | 'f' 'c' 'v' 't' '.' 'd' '.' 'l' 'u' /. makeToken($_FCVT_D_LU); ./
            | 'f' 'c' 'v' 't' '.' 'd' '.' 'w' 'u' /. makeToken($_FCVT_D_WU); ./
            | 'f' 'c' 'v' 't' '.' 'l' 'u' '.' 'd' /. makeToken($_FCVT_LU_D); ./
            | 'f' 'c' 'v' 't' '.' 'l' 'u' '.' 'q' /. makeToken($_FCVT_LU_Q); ./
            | 'f' 'c' 'v' 't' '.' 'l' 'u' '.' 's' /. makeToken($_FCVT_LU_S); ./
            | 'f' 'c' 'v' 't' '.' 'q' '.' 'l' 'u' /. makeToken($_FCVT_Q_LU); ./
            | 'f' 'c' 'v' 't' '.' 'q' '.' 'w' 'u' /. makeToken($_FCVT_Q_WU); ./
            | 'f' 'c' 'v' 't' '.' 's' '.' 'l' 'u' /. makeToken($_FCVT_S_LU); ./
            | 'f' 'c' 'v' 't' '.' 's' '.' 'w' 'u' /. makeToken($_FCVT_S_WU); ./
            | 'f' 'c' 'v' 't' '.' 'w' 'u' '.' 'd' /. makeToken($_FCVT_WU_D); ./
            | 'f' 'c' 'v' 't' '.' 'w' 'u' '.' 'q' /. makeToken($_FCVT_WU_Q); ./
            | 'f' 'c' 'v' 't' '.' 'w' 'u' '.' 's' /. makeToken($_FCVT_WU_S); ./
            | '.' 'i' 'n' 'c' 'l' 'u' 'd' 'e' /. makeToken($__INCLUDE); ./
            | '.' 'p' '2' 'a' 'l' 'i' 'g' 'n' /. makeToken($__P2ALIGN); ./
            | '.' 's' 'e' 'c' 't' 'i' 'o' 'n' /. makeToken($__SECTION); ./
            | 'a' 'm' 'o' 'a' 'd' 'd' '.' 'd' /. makeToken($_AMOADD_D); ./
            | 'a' 'm' 'o' 'a' 'd' 'd' '.' 'w' /. makeToken($_AMOADD_W); ./
            | 'a' 'm' 'o' 'a' 'n' 'd' '.' 'd' /. makeToken($_AMOAND_D); ./
            | 'a' 'm' 'o' 'a' 'n' 'd' '.' 'w' /. makeToken($_AMOAND_W); ./
            | 'a' 'm' 'o' 'm' 'a' 'x' '.' 'd' /. makeToken($_AMOMAX_D); ./
            | 'a' 'm' 'o' 'm' 'a' 'x' '.' 'w' /. makeToken($_AMOMAX_W); ./
            | 'a' 'm' 'o' 'm' 'i' 'n' '.' 'd' /. makeToken($_AMOMIN_D); ./
            | 'a' 'm' 'o' 'm' 'i' 'n' '.' 'w' /. makeToken($_AMOMIN_W); ./
            | 'a' 'm' 'o' 'x' 'o' 'r' '.' 'd' /. makeToken($_AMOXOR_D); ./
            | 'a' 'm' 'o' 'x' 'o' 'r' '.' 'w' /. makeToken($_AMOXOR_W); ./
            | 'f' 'c' 'l' 'a' 's' 's' '.' 'd' /. makeToken($_FCLASS_D); ./
            | 'f' 'c' 'l' 'a' 's' 's' '.' 'q' /. makeToken($_FCLASS_Q); ./
            | 'f' 'c' 'l' 'a' 's' 's' '.' 's' /. makeToken($_FCLASS_S); ./
            | 'f' 'c' 'v' 't' '.' 'd' '.' 'l' /. makeToken($_FCVT_D_L); ./
            | 'f' 'c' 'v' 't' '.' 'd' '.' 'q' /. makeToken($_FCVT_D_Q); ./
            | 'f' 'c' 'v' 't' '.' 'd' '.' 's' /. makeToken($_FCVT_D_S); ./
            | 'f' 'c' 'v' 't' '.' 'd' '.' 'w' /. makeToken($_FCVT_D_W); ./
            | 'f' 'c' 'v' 't' '.' 'l' '.' 'd' /. makeToken($_FCVT_L_D); ./
            | 'f' 'c' 'v' 't' '.' 'l' '.' 'q' /. makeToken($_FCVT_L_Q); ./
            | 'f' 'c' 'v' 't' '.' 'l' '.' 's' /. makeToken($_FCVT_L_S); ./
            | 'f' 'c' 'v' 't' '.' 'q' '.' 'd' /. makeToken($_FCVT_Q_D); ./
            | 'f' 'c' 'v' 't' '.' 'q' '.' 'l' /. makeToken($_FCVT_Q_L); ./
            | 'f' 'c' 'v' 't' '.' 'q' '.' 's' /. makeToken($_FCVT_Q_S); ./
            | 'f' 'c' 'v' 't' '.' 'q' '.' 'w' /. makeToken($_FCVT_Q_W); ./
            | 'f' 'c' 'v' 't' '.' 's' '.' 'd' /. makeToken($_FCVT_S_D); ./
            | 'f' 'c' 'v' 't' '.' 's' '.' 'l' /. makeToken($_FCVT_S_L); ./
            | 'f' 'c' 'v' 't' '.' 's' '.' 'q' /. makeToken($_FCVT_S_Q); ./
            | 'f' 'c' 'v' 't' '.' 's' '.' 'w' /. makeToken($_FCVT_S_W); ./
            | 'f' 'c' 'v' 't' '.' 'w' '.' 'd' /. makeToken($_FCVT_W_D); ./
            | 'f' 'c' 'v' 't' '.' 'w' '.' 'q' /. makeToken($_FCVT_W_Q); ./
            | 'f' 'c' 'v' 't' '.' 'w' '.' 's' /. makeToken($_FCVT_W_S); ./
            | 'f' 'n' 'm' 'a' 'd' 'd' '.' 'd' /. makeToken($_FNMADD_D); ./
            | 'f' 'n' 'm' 'a' 'd' 'd' '.' 'q' /. makeToken($_FNMADD_Q); ./
            | 'f' 'n' 'm' 'a' 'd' 'd' '.' 's' /. makeToken($_FNMADD_S); ./
            | 'f' 'n' 'm' 's' 'u' 'b' '.' 'd' /. makeToken($_FNMSUB_D); ./
            | 'f' 'n' 'm' 's' 'u' 'b' '.' 'q' /. makeToken($_FNMSUB_Q); ./
            | 'f' 'n' 'm' 's' 'u' 'b' '.' 's' /. makeToken($_FNMSUB_S); ./
            | 'f' 's' 'g' 'n' 'j' 'n' '.' 'd' /. makeToken($_FSGNJN_D); ./
            | 'f' 's' 'g' 'n' 'j' 'n' '.' 'q' /. makeToken($_FSGNJN_Q); ./
            | 'f' 's' 'g' 'n' 'j' 'n' '.' 's' /. makeToken($_FSGNJN_S); ./
            | 'f' 's' 'g' 'n' 'j' 'x' '.' 'd' /. makeToken($_FSGNJX_D); ./
            | 'f' 's' 'g' 'n' 'j' 'x' '.' 'q' /. makeToken($_FSGNJX_Q); ./
            | 'f' 's' 'g' 'n' 'j' 'x' '.' 's' /. makeToken($_FSGNJX_S); ./
            | '.' 'a' 's' 's' 'i' 'c' 'z' /. makeToken($__ASSICZ); ./
            | '.' 'b' 'a' 'l' 'i' 'g' 'n' /. makeToken($__BALIGN); ./
            | '.' 'c' 'o' 'm' 'm' 'o' 'n' /. makeToken($__COMMON); ./
            | '.' 'd' 'o' 'u' 'b' 'l' 'e' /. makeToken($__DOUBLE); ./
            | '.' 'g' 'l' 'o' 'b' 'a' 'l' /. makeToken($__GLOBAL); ./
            | '.' 'o' 'p' 't' 'i' 'o' 'n' /. makeToken($__OPTION); ./
            | '.' 'r' 'o' 'd' 'a' 't' 'a' /. makeToken($__RODATA); ./
            | '.' 's' 't' 'r' 'i' 'n' 'g' /. makeToken($__STRING); ./
            | 'a' 'm' 'o' 'o' 'r' '.' 'd' /. makeToken($_AMOOR_D); ./
            | 'a' 'm' 'o' 'o' 'r' '.' 'w' /. makeToken($_AMOOR_W); ./
            | 'f' 'e' 'n' 'c' 'e' '.' 'i' /. makeToken($_FENCE_I); ./
            | 'f' 'm' 'a' 'd' 'd' '.' 'd' /. makeToken($_FMADD_D); ./
            | 'f' 'm' 'a' 'd' 'd' '.' 'q' /. makeToken($_FMADD_Q); ./
            | 'f' 'm' 'a' 'd' 'd' '.' 's' /. makeToken($_FMADD_S); ./
            | 'f' 'm' 's' 'u' 'b' '.' 'd' /. makeToken($_FMSUB_D); ./
            | 'f' 'm' 's' 'u' 'b' '.' 'q' /. makeToken($_FMSUB_Q); ./
            | 'f' 'm' 's' 'u' 'b' '.' 's' /. makeToken($_FMSUB_S); ./
            | 'f' 'm' 'v' '.' 'd' '.' 'x' /. makeToken($_FMV_D_X); ./
            | 'f' 'm' 'v' '.' 'q' '.' 'x' /. makeToken($_FMV_Q_X); ./
            | 'f' 'm' 'v' '.' 'w' '.' 'x' /. makeToken($_FMV_W_X); ./
            | 'f' 'm' 'v' '.' 'x' '.' 'd' /. makeToken($_FMV_X_D); ./
            | 'f' 'm' 'v' '.' 'x' '.' 'q' /. makeToken($_FMV_X_Q); ./
            | 'f' 'm' 'v' '.' 'x' '.' 'w' /. makeToken($_FMV_X_W); ./
            | 'f' 's' 'g' 'n' 'j' '.' 'd' /. makeToken($_FSGNJ_D); ./
            | 'f' 's' 'g' 'n' 'j' '.' 'q' /. makeToken($_FSGNJ_Q); ./
            | 'f' 's' 'g' 'n' 'j' '.' 's' /. makeToken($_FSGNJ_S); ./
            | 'f' 's' 'q' 'r' 't' '.' 'd' /. makeToken($_FSQRT_D); ./
            | 'f' 's' 'q' 'r' 't' '.' 'q' /. makeToken($_FSQRT_Q); ./
            | 'f' 's' 'q' 'r' 't' '.' 's' /. makeToken($_FSQRT_S); ./
            | '.' '2' 'b' 'y' 't' 'e' /. makeToken($__2BYTE); ./
            | '.' '4' 'b' 'y' 't' 'e' /. makeToken($__4BYTE); ./
            | '.' '8' 'b' 'y' 't' 'e' /. makeToken($__8BYTE); ./
            | '.' 'a' 'l' 'i' 'g' 'n' /. makeToken($__ALIGN); ./
            | '.' 'a' 's' 's' 'i' 'c' /. makeToken($__ASSIC); ./
            | '.' 'd' 'w' 'o' 'r' 'd' /. makeToken($__DWORD); ./
            | '.' 'f' 'l' 'o' 'a' 't' /. makeToken($__FLOAT); ./
            | '.' 'g' 'l' 'o' 'b' 'l' /. makeToken($__GLOBL); ./
            | '.' 'i' 'd' 'e' 'n' 't' /. makeToken($__IDENT); ./
            | '.' 'm' 'a' 'c' 'r' 'o' /. makeToken($__MACRO); ./
            | '.' 's' 'p' 'a' 'c' 'e' /. makeToken($__SPACE); ./
            | 'f' 'a' 'd' 'd' '.' 'd' /. makeToken($_FADD_D); ./
            | 'f' 'a' 'd' 'd' '.' 'q' /. makeToken($_FADD_Q); ./
            | 'f' 'a' 'd' 'd' '.' 's' /. makeToken($_FADD_S); ./
            | 'f' 'd' 'i' 'v' '.' 'd' /. makeToken($_FDIV_D); ./
            | 'f' 'd' 'i' 'v' '.' 'q' /. makeToken($_FDIV_Q); ./
            | 'f' 'd' 'i' 'v' '.' 's' /. makeToken($_FDIV_S); ./
            | 'f' 'm' 'a' 'x' '.' 'd' /. makeToken($_FMAX_D); ./
            | 'f' 'm' 'a' 'x' '.' 'q' /. makeToken($_FMAX_Q); ./
            | 'f' 'm' 'a' 'x' '.' 's' /. makeToken($_FMAX_S); ./
            | 'f' 'm' 'i' 'n' '.' 'd' /. makeToken($_FMIN_D); ./
            | 'f' 'm' 'i' 'n' '.' 'q' /. makeToken($_FMIN_Q); ./
            | 'f' 'm' 'i' 'n' '.' 's' /. makeToken($_FMIN_S); ./
            | 'f' 'm' 'u' 'l' '.' 'd' /. makeToken($_FMUL_D); ./
            | 'f' 'm' 'u' 'l' '.' 'q' /. makeToken($_FMUL_Q); ./
            | 'f' 'm' 'u' 'l' '.' 's' /. makeToken($_FMUL_S); ./
            | 'f' 's' 'u' 'b' '.' 'd' /. makeToken($_FSUB_D); ./
            | 'f' 's' 'u' 'b' '.' 'q' /. makeToken($_FSUB_Q); ./
            | 'f' 's' 'u' 'b' '.' 's' /. makeToken($_FSUB_S); ./
            | 'y' 'i' 'e' 'l' 'd' '*' /. makeToken($_YIELDSTAR); ./
            | '.' 'c' 'o' 'm' 'm' /. makeToken($__COMM); ./
            | '.' 'd' 'a' 't' 'a' /. makeToken($__DATA); ./
            | '.' 'e' 'n' 'd' 'm' /. makeToken($__ENDM); ./
            | '.' 'f' 'i' 'l' 'e' /. makeToken($__FILE); ./
            | '.' 'h' 'a' 'l' 'f' /. makeToken($__HALF); ./
            | '.' 'q' 'u' 'a' 'd' /. makeToken($__QUAD); ./
            | '.' 's' 'i' 'z' 'e' /. makeToken($__SIZE); ./
            | '.' 's' 'k' 'i' 'p' /. makeToken($__SKIP); ./
            | '.' 's' 'l' 'e' 'b' /. makeToken($__SLEB); ./
            | '.' 't' 'e' 'x' 't' /. makeToken($__TEXT); ./
            | '.' 't' 'y' 'p' 'e' /. makeToken($__TYPE); ./
            | '.' 'u' 'l' 'e' 'b' /. makeToken($__ULEB); ./
            | '.' 'w' 'e' 'a' 'k' /. makeToken($__WEAK); ./
            | '.' 'w' 'o' 'r' 'd' /. makeToken($__WORD); ./
            | '.' 'z' 'e' 'r' 'o' /. makeToken($__ZERO); ./
            | 'f' 'e' 'q' '.' 'd' /. makeToken($_FEQ_D); ./
            | 'f' 'e' 'q' '.' 'q' /. makeToken($_FEQ_Q); ./
            | 'f' 'e' 'q' '.' 's' /. makeToken($_FEQ_S); ./
            | 'f' 'l' 'e' '.' 'd' /. makeToken($_FLE_D); ./
            | 'f' 'l' 'e' '.' 'q' /. makeToken($_FLE_Q); ./
            | 'f' 'l' 'e' '.' 's' /. makeToken($_FLE_S); ./
            | 'f' 'l' 't' '.' 'd' /. makeToken($_FLT_D); ./
            | 'f' 'l' 't' '.' 'q' /. makeToken($_FLT_Q); ./
            | 'f' 'l' 't' '.' 's' /. makeToken($_FLT_S); ./
            | '.' 'b' 's' 's' /. makeToken($__BSS); ./
            | '.' 'e' 'q' 'u' /. makeToken($__EQU); ./
            | '.' 's' 'e' 't' /. makeToken($__SET); ./
            | '>' '>' '>' '=' /. makeToken($_URSHIFTEQ); ./
            | 'l' 'r' '.' 'd' /. makeToken($_LR_D); ./
            | 'l' 'r' '.' 'w' /. makeToken($_LR_W); ./
            | 's' 'c' '.' 'd' /. makeToken($_SC_D); ./
            | 's' 'c' '.' 'w' /. makeToken($_SC_W); ./
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
            | 'p' '2' /. makeToken($_P2); ./
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

    white -> WSChar
           | white WSChar
    WSChar -> Space | HT | FF
%End
