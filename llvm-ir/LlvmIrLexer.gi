-- Generated parse-level lexer (generic token stream)
%Options list
%Options fp=LlvmIrLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.llvm_ir
%options template=LexerTemplateF.gi
%options filter=LlvmIrKWLexer.gi

%Define
    $kw_lexer_class /.$LlvmIrKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
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
    ACQUIRE
    ADD
    ADDRSPACE
    ADDRSPACECAST
    AFN
    ALIAS
    ALIGN
    ALIGNSTACK
    ALLOCA
    ALLOCALIGN
    ALLOCATED_
    ALLOCKIND
    ALLOCPTR
    ALLOCSIZE
    ALWAYSINLINE
    AND
    ANNOTATIONS_
    ANY
    ANYREGCC
    APINOTES_
    APPENDING
    ARCP
    ARGMEMONLY
    ARG_
    ASHR
    ASM
    ASSOCIATED_
    ASYNC
    ATOMIC
    ATOMICRMW
    ATTRIBUTES
    AttrGroupId
    BASETYPE_
    BFLOAT
    BITCAST
    BLOCKADDRESS
    BR
    BUILTIN
    BYREF
    BYVAL
    CALL
    CALLBR
    CALLER
    CATCH
    CATCHPAD
    CATCHRET
    CATCHSWITCH
    CC
    CCC
    CHECKSUM_
    CLEANUP
    CLEANUPPAD
    CLEANUPRET
    CMPXCHG
    COLD
    COLDCC
    COLUMN_
    COMDAT
    COMMON
    CONFIGMACROS_
    CONTAININGTYPE_
    CONTRACT
    CONVERGENT
    COUNT_
    ChecksumKind
    ComdatName
    DATALAYOUT
    DATALOCATION_
    DEBUGDIRECTIVESONLY
    DEBUGINFOFORPROFILING_
    DECLARATION_
    DECLARE
    DEFAULT
    DEFAULTED_
    DEFINE
    DEREFERENCEABLE
    DIRECTORY_
    DISCRIMINATOR_
    DISTINCT
    DLLEXPORT
    DLLIMPORT
    DOUBLE
    DWARFADDRESSSPACE_
    DWOID_
    DiFlag
    DispFlag
    DwarfAttEncoding
    DwarfCc
    DwarfLang
    DwarfMacinfo
    DwarfOp
    DwarfTag
    DwarfVirtuality
    ELEMENTS_
    ELEMENTTYPE
    EMISSIONKIND_
    ENCODING_
    ENTITY_
    ENUMS_
    EXACT
    EXACTMATCH
    EXPORTSYMBOLS_
    EXPR_
    EXTERNAL
    EXTRACTELEMENT
    EXTRACTVALUE
    EXTRADATA_
    FADD
    FALSE
    FAST
    FASTCC
    FCMP
    FDIV
    FENCE
    FILENAME_
    FILE_
    FILTER
    FLAGS_
    FLOAT
    FMAX
    FMIN
    FMUL
    FNEG
    FPEXT
    FPTOSI
    FPTOUI
    FPTRUNC
    FREEZE
    FREM
    FROM
    FSUB
    FULLDEBUG
    FloatLit
    GC
    GETELEMENTPTR
    GETTER_
    GHCCC
    GLOBAL
    GLOBALS_
    GNU
    GlobalIdent
    HALF
    HEADER_
    HHVMCC
    HIDDEN
    HOT
    ICMP
    IDENTIFIER_
    IFUNC
    IMMARG
    IMPORTS_
    INACCESSIBLEMEMONLY
    INALLOCA
    INBOUNDS
    INCLUDEPATH_
    INDIRECTBR
    INITIALEXEC
    INLINEDAT_
    INLINEHINT
    INRANGE
    INREG
    INSERTELEMENT
    INSERTVALUE
    INTELDIALECT
    INTERNAL
    INTTOPTR
    INVOKE
    ISDECL_
    ISDEFINITION_
    ISIMPLICITCODE_
    ISLOCAL_
    ISOPTIMIZED_
    ISUNSIGNED_
    IntLit
    IntType
    JUMPTABLE
    LABEL
    LANDINGPAD
    LANGUAGE_
    LARGEST
    LINETABLESONLY
    LINE_
    LINKAGENAME_
    LINKONCE
    LOAD
    LOCALDYNAMIC
    LOCALEXEC
    LOWERBOUND_
    LSHR
    LabelIdent
    LocalIdent
    MACROS_
    MAX
    METADATA
    MIN
    MINSIZE
    MODULE
    MONOTONIC
    MUL
    MUSTPROGRESS
    MUSTTAIL
    MetadataId
    MetadataName
    NAKED
    NAMETABLEKIND_
    NAME_
    NAND
    NE
    NEST
    NINF
    NNAN
    NOALIAS
    NOBUILTIN
    NOCALLBACK
    NOCAPTURE
    NODEBUG
    NODEDUPLICATE
    NODES_
    NODUPLICATE
    NOFREE
    NOIMPLICITFLOAT
    NOINLINE
    NOMERGE
    NONE
    NONLAZYBIND
    NONNULL
    NOPROFILE
    NORECURSE
    NOREDZONE
    NORETURN
    NOSYNC
    NOTAIL
    NOUNDEF
    NOUNWIND
    NSW
    NSZ
    NUW
    OFFSET_
    OGE
    OGT
    OLE
    OLT
    ONE
    OPAQUE
    OPERANDS_
    OPTFORFUZZING
    OPTNONE
    OPTSIZE
    OR
    ORD
    PARTITION
    PERSONALITY
    PHI
    PIPE
    POISON
    PREALLOCATED
    PREFIX
    PRESPLITCOROUTINE
    PRIVATE
    PRODUCER_
    PROLOGUE
    PROTECTED
    PTR
    PTRTOINT
    RANGESBASEADDRESS_
    RANK_
    READNONE
    READONLY
    REASSOC
    RELEASE
    RESUME
    RET
    RETAINEDNODES_
    RETAINEDTYPES_
    RETURNED
    RUNTIMELANG_
    RUNTIMEVERSION_
    SAFESTACK
    SAMESIZE
    SCOPELINE_
    SCOPE_
    SDIV
    SDK_
    SECTION
    SELECT
    SETTER_
    SEXT
    SGE
    SGT
    SHADOWCALLSTACK
    SHL
    SHUFFLEVECTOR
    SIDEEFFECT
    SIGNEXT
    SITOFP
    SIZE_
    SLE
    SLT
    SOURCE_
    SPECULATABLE
    SPFLAGS_
    SPLITDEBUGFILENAME_
    SPLITDEBUGINLINING_
    SREM
    SRET
    SSP
    SSPSTRONG
    STORE
    STRICTFP
    STRIDE_
    STRINGLENGTHEXPRESSION_
    STRINGLENGTH_
    STRINGLOCATIONEXPRESSION_
    SUB
    SWIFTASYNC
    SWIFTCC
    SWIFTERROR
    SWIFTSELF
    SWIFTTAILCC
    SWITCH
    SYNC
    SYNCSCOPE
    SYSROOT_
    StringLit
    TAG_
    TAIL
    TAILCC
    TARGET
    TARGETFUNCNAME_
    TEMPLATEPARAMS_
    THISADJUSTMENT_
    THROWNTYPES_
    TO
    TOKEN
    TRIPLE
    TRUE
    TRUNC
    TYPES_
    TYPE_
    UDIV
    UGE
    UGT
    UITOFP
    ULE
    ULT
    UMAX
    UMIN
    UNDEF
    UNE
    UNIT_
    UNO
    UNORDERED
    UNREACHABLE
    UNWIND
    UPPERBOUND_
    UREM
    USELISTORDER
    UWTABLE
    VALUE_
    VAR_
    VIRTUALINDEX_
    VIRTUALITY_
    VOID
    VOLATILE
    VSCALE
    VTABLEHOLDER_
    WEAK
    WILLRETURN
    WITHIN
    WRITEONLY
    XCHG
    XOR
    ZEROEXT
    ZEROINITIALIZER
    ZEXT
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
    Token ::= GlobalIdent /. makeToken($_GlobalIdent); ./
            | LocalIdent /. makeToken($_LocalIdent); ./
            | IntType /. makeToken($_IntType); ./
            | IntLit /. makeToken($_IntLit); ./
            | STRING /. makeToken($_StringLit); ./
            | NUMBER /. makeToken($_IntLit); ./
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
            | '|' /. makeToken($_BAR); ./
            | '^' /. makeToken($_CARET); ./
            | '!' /. makeToken($_BANG); ./
            | '?' /. makeToken($_QUEST); ./
                        | '$' /. makeToken($_DOLLAR); ./
                        | '~' /. makeToken($_TILDE); ./
            | '`' /. makeToken($_BACKTICK); ./
            | ';' /. makeToken($_SEMI); ./
            | '#' /. makeToken($_HASH); ./
            | "'" /. makeToken($_QUOTE); ./
            | BackSlash /. makeToken($_BACKSLASH); ./
            | SLComment     /. skipToken(); ./
            | MLComment     /. skipToken(); ./

            | white /. skipToken(); ./


    GlobalIdent ::= '@' IdStart
                  | GlobalIdent IdStart
                  | GlobalIdent Digit
                  | '@' Digits
    LocalIdent ::= '%' IdStart
                 | LocalIdent IdStart
                 | LocalIdent Digit
                 | '%' Digits

    IntType ::= 'i' Digits

    IntLit ::= Digits

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
             | Digits '.' Digits
             | 0 x HexDigits
             | 0 X HexDigits

    HexDigits ::= HexDigit | HexDigits HexDigit
    HexDigit -> Digit | a | b | c | d | e | f | A | B | C | D | E | F
    Digits ::= Digit | Digits Digit

    STRING ::= '"' SLBody '"'
    SLBody -> $empty | SLBody NotDQ | SLBody Escape
    Escape ::= BackSlash EscapeAny
    EscapeAny -> Letter | Digit | DoubleQuote | SingleQuote | BackSlash | Space | '/' | SpecialEsc
    SpecialEsc -> '+' | '-' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                  '%' | '&' | '^' | ':' | ';' | '|' | '{' | '}' |
                  '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$'
    NotDQ -> Letter | Digit | SpecialNotDQ | Space | HT | FF | LF | CR | AfterASCII | '_'
    SpecialNotDQ -> '+' | '-' | '/' | '(' | ')' | '*' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | "'" | '|' | '{' | '}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$'

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
