-- Real lexer for AsmMasmParser (not token-stream soup). Keywords via AsmMasmKWLexer.
%Options list
%Options fp=AsmMasmLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.asm.masm
%options template=LexerTemplateF.gi
%options filter=AsmMasmKWLexer.gi

%Define
    $kw_lexer_class /.$AsmMasmKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    AAA
    AAD
    AAM
    AAS
    ADC
    ADD
    AH
    AL
    ALPHA
    AMP
    AMPEQ
    ANDAND
    ARROW
    ARROWSTAR
    AT
    ATEQ
    AX
    BACKSLASH
    BACKTICK
    BANG
    BH
    BITCLEAR
    BL
    BP
    BSF
    BSR
    BSWAP
    BT
    BTC
    BTR
    BX
    BYTE
    CALL
    CARET
    CARETEQ
    CBB
    CBW
    CDQ
    CH
    CHAR_LITERAL
    CL
    CLC
    CLD
    CLI
    CMC
    CMP
    CMPS
    CMPSB
    CMPSD
    CMPSW
    CMPXCHG
    COLON
    COLONCOLON
    COLONEQ
    COMMA
    CONST
    CREF
    CS
    CWD
    CWDE
    CX
    DAA
    DAS
    DATA
    DATA2
    DB
    DD
    DEC
    DF
    DH
    DI
    DIV
    DL
    DOLLAR
    DOSSEG
    DOT
    DOTDOT
    DOTSTAR
    DQ
    DQUOTE
    DS
    DT
    DW
    DWORD
    DX
    EAX
    EBP
    EBX
    ECX
    EDI
    EDX
    ELLIPSIS
    END
    ENDP
    ENDS
    EQ
    EQEQ
    EQEQEQ
    ERR
    ERR1
    ERR2
    ERRB
    ERRDEF
    ERRDIF
    ERRE
    ERRIDN
    ERRNB
    ERRNDEF
    ERRNZ
    ES
    ESI
    ESP
    EVEN
    EXIT
    FAR
    FATARROW
    FS
    FWORD
    GS
    GT
    GTEQ
    HASH
    Hexnum
    IDENTIFIER
    IDIV
    IMUL
    IN
    INC
    INS
    INSB
    INSD
    INSW
    INT
    INTO
    IRET
    Integer
    JA
    JAE
    JB
    JBE
    JC
    JCXZ
    JE
    JECXZ
    JG
    JGE
    JL
    JLE
    JMP
    JNA
    JNAE
    JNB
    JNBE
    JNC
    JNG
    JNGE
    JNL
    JNLE
    JNO
    JNP
    JNS
    JNZ
    JO
    JP
    JPE
    JPO
    JS
    JZ
    LAHF
    LBRACE
    LBRACKET
    LDS
    LEA
    LES
    LIST
    LODS
    LODSB
    LODSD
    LODSW
    LOOP
    LOOPE
    LOOPNE
    LOOPNZ
    LOOPZ
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    MASK
    MINUS
    MINUSEQ
    MINUSMINUS
    MODEL
    MOV
    MOVSB
    MOVSD
    MOVSW
    MOVZX
    MUL
    NEAR
    NEG
    NOT
    NOTEQ
    NOTEQEQ
    NUMBER
    OR
    OROR
    OUT
    OUTS
    OUTSB
    OUTSD
    OUTSW
    Octalnum
    PARA
    PERCENT
    PERCENTEQ
    PIPE
    PIPEEQ
    PLUS
    PLUSEQ
    PLUSPLUS
    POP
    POPA
    POPAD
    POPFD
    PROC
    PUBLIC
    PUSH
    PUSHAD
    PUSHF
    PUSHFD
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    QWORD
    RBRACE
    RBRACKET
    RCL
    RCR
    REAL
    REAL4
    REAL8
    RECEIVE
    REP
    REPE
    REPNE
    REPNZ
    REPZ
    RET
    RETF
    RETN
    ROL
    ROR
    RPAREN
    RSHIFT
    RSHIFTEQ
    SAHF
    SAL
    SAR
    SBYTE
    SCAS
    SCASB
    SCASD
    SCASW
    SDWORD
    SEGMENTS
    SEMI
    SEQ
    SETA
    SETAE
    SETB
    SETBE
    SETC
    SETE
    SETG
    SETGE
    SETL
    SETLE
    SETNA
    SETNAE
    SETNB
    SETNBE
    SETNC
    SETNE
    SETNG
    SETNGE
    SETNL
    SETNLE
    SETNO
    SETNP
    SETNS
    SETNZ
    SETO
    SETP
    SETPE
    SETPO
    SETS
    SETZ
    SHL
    SHLD
    SHR
    SHRD
    SI
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SOTSD
    SP
    SQUOTE
    SS
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    STC
    STD
    STI
    STOS
    STOSB
    STOSW
    STRING
    SUB
    SWORD
    Separator
    String_
    TBYTE
    TEST
    TILDE
    TIMES
    UNDERSCORE
    URSHIFT
    URSHIFTEQ
    WIDTH
    WORD
    XADD
    XCHG
    XCREF
    XLAT
    XLIST
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
             '^' | '~' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | Escape

    NotSQ -> Letter | Digit | Space | HT | DoubleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '(' | ')' | '[' | ']' | '{' | '}' | '<' | '>' | Escape

    Escape ::= BackSlash EscapeChar
    EscapeChar -> DoubleQuote | SingleQuote | BackSlash | '/' | n | r | t | b | f

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
