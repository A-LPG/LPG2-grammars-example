-- Real lexer for Cobol85Parser (not token-stream soup). Keywords via Cobol85KWLexer.
%Options list
%Options fp=Cobol85Lexer
%options single_productions
%options conflicts
%options package=lpg.grammars.cobol85
%options template=LexerTemplateF.gi
%options filter=Cobol85KWLexer.gi

%Define
    $kw_lexer_class /.$Cobol85KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ABORT
    ACCEPT
    ACCESS
    ADATA
    ADD
    ADDRESS
    ADV
    ADVANCING
    AFTER
    ALIAS
    ALIGNED
    ALL
    ALPHABET
    ALPHABETIC
    ALPHABETIC_LOWER
    ALPHABETIC_UPPER
    ALPHANUMERIC
    ALPHANUMERIC_EDITED
    ALSO
    ALTER
    ALTERNATE
    AMP
    AMPEQ
    AND
    ANDAND
    ANSI
    ANY
    APOST
    AR
    ARE
    AREA
    AREAS
    ARITH
    ARROW
    ARROWSTAR
    AS
    ASCENDING
    ASCII
    ASSIGN
    ASSOCIATED_DATA
    ASSOCIATED_DATA_LENGTH
    ASTERISKCHAR
    AT
    ATEQ
    ATTRIBUTE
    AUTHOR
    AUTO
    AUTO_SKIP
    AWO
    BACKGROUND_COLOR
    BACKGROUND_COLOUR
    BACKSLASH
    BACKTICK
    BANG
    BASIS
    BEEP
    BEFORE
    BEGINNING
    BELL
    BIN
    BINARY
    BIT
    BITCLEAR
    BLANK
    BLINK
    BLOCK
    BOTTOM
    BOUNDS
    BUF
    BUFSIZE
    BY
    BYFUNCTION
    BYTITLE
    CALL
    CANCEL
    CAPABLE
    CARET
    CARETEQ
    CBL
    CBLCARD
    CCSVERSION
    CD
    CF
    CH
    CHAINING
    CHANGED
    CHANNEL
    CHARACTER
    CHARACTERS
    CHAR_LITERAL
    CICS
    CLASS
    CLOCK_UNITS
    CLOSE
    CLOSE_DISPOSITION
    CO
    COBOL
    CODE
    CODEPAGE
    CODE_SET
    COL
    COLLATING
    COLON
    COLONCHAR
    COLONCOLON
    COLONEQ
    COLUMN
    COMMA
    COMMACHAR
    COMMENTENTRYLINE
    COMMITMENT
    COMMON
    COMMUNICATION
    COMP
    COMPAT
    COMPILE
    COMPUTATIONAL
    COMPUTATIONAL_1
    COMPUTATIONAL_2
    COMPUTATIONAL_3
    COMPUTATIONAL_4
    COMPUTATIONAL_5
    COMPUTE
    COMP_1
    COMP_2
    COMP_3
    COMP_4
    COMP_5
    CONFIGURATION
    CONTAINS
    CONTENT
    CONTINUE
    CONTROL
    CONTROLS
    CONTROL_POINT
    CONVENTION
    CONVERTING
    COPY
    CORR
    CORRESPONDING
    COUNT
    CP
    CPP
    CPSM
    CRUNCH
    CS
    CURR
    CURRENCY
    CURSOR
    DATA
    DATA_BASE
    DATE
    DATEPROC
    DATE_COMPILED
    DATE_WRITTEN
    DAY
    DAY_OF_WEEK
    DBCS
    DD
    DE
    DEBUG
    DEBUGGING
    DEBUG_CONTENTS
    DEBUG_ITEM
    DEBUG_LINE
    DEBUG_NAME
    DEBUG_SUB_1
    DEBUG_SUB_2
    DEBUG_SUB_3
    DECIMAL_POINT
    DECK
    DECLARATIVES
    DEFAULT
    DEFAULT_DISPLAY
    DEFINITION
    DELETE
    DELIMITED
    DELIMITER
    DEPENDING
    DESCENDING
    DESTINATION
    DETAIL
    DFHRESP
    DFHVALUE
    DIAGTRUNC
    DISABLE
    DISK
    DISPLAY
    DISPLAY_1
    DIVIDE
    DIVISION
    DLI
    DLL
    DOLLAR
    DOLLARCHAR
    DONTCARE
    DOT
    DOTDOT
    DOTSTAR
    DOT_FS
    DOUBLE
    DOUBLEASTERISKCHAR
    DOWN
    DP
    DQUOTE
    DTR
    DU
    DUMP
    DUPLICATES
    DYN
    DYNAM
    DYNAMIC
    EBCDIC
    EDF
    EGCS
    EGI
    EJECT
    EJPD
    ELLIPSIS
    ELSE
    EMI
    EMPTY_CHECK
    EN
    ENABLE
    END
    ENDING
    END_ACCEPT
    END_ADD
    END_CALL
    END_COMPUTE
    END_DELETE
    END_DIVIDE
    END_EVALUATE
    END_IF
    END_MULTIPLY
    END_OF_PAGE
    END_PERFORM
    END_READ
    END_RECEIVE
    END_RETURN
    END_REWRITE
    END_SEARCH
    END_START
    END_STRING
    END_SUBTRACT
    END_UNSTRING
    END_WRITE
    ENGLISH
    ENTER
    ENTRY
    ENTRY_PROCEDURE
    ENVIRONMENT
    EOL
    EOP
    EOS
    EPILOG
    EQ
    EQEQ
    EQEQEQ
    EQUAL
    EQUALCHAR
    ERASE
    ERROR
    ESCAPE
    ESI
    EVALUATE
    EVENT
    EVERY
    EXCEPTION
    EXCI
    EXCLUSIVE
    EXEC
    EXECCICSLINE
    EXECSQLIMSLINE
    EXECSQLLINE
    EXHIBIT
    EXIT
    EXP
    EXPORT
    EXPORTALL
    EXTEND
    EXTENDED
    EXTERNAL
    FALSE
    FASTSRT
    FATARROW
    FD
    FEPI
    FILE
    FILE_CONTROL
    FILLER
    FINAL
    FIRST
    FLAG
    FLAGSTD
    FOOTING
    FOR
    FOREGROUND_COLOR
    FOREGROUND_COLOUR
    FROM
    FSRT
    FULL
    FUNCTION
    FUNCTIONNAME
    FUNCTION_POINTER
    GDS
    GENERATE
    GIVING
    GLOBAL
    GO
    GOBACK
    GRAPHIC
    GREATER
    GRID
    GROUP
    GT
    GTEQ
    HASH
    HEADING
    HIGHLIGHT
    HIGH_VALUE
    HIGH_VALUES
    HOOK
    ID
    IDENTIFICATION
    IDENTIFIER
    IF
    IMPLICIT
    IMPORT
    IN
    INDEX
    INDEXED
    INDICATE
    INITIAL
    INITIALIZE
    INITIATE
    INPUT
    INPUT_OUTPUT
    INSPECT
    INSTALLATION
    INTDATE
    INTEGER
    INTEGERLITERAL
    INTO
    INVALID
    INVOKE
    IS
    I_O
    I_O_CONTROL
    JA
    JP
    JUST
    JUSTIFIED
    KA
    KANJI
    KEPT
    KEY
    KEYBOARD
    LABEL
    LANG
    LANGUAGE
    LAST
    LB
    LBRACE
    LBRACKET
    LC
    LD
    LEADING
    LEASM
    LEFT
    LEFTLINE
    LENGTH
    LENGTH_CHECK
    LESS
    LESSTHANCHAR
    LESSTHANOREQUAL
    LEVEL_NUMBER_66
    LEVEL_NUMBER_77
    LEVEL_NUMBER_88
    LIB
    LIBACCESS
    LIBPARAMETER
    LIBRARY
    LILIAN
    LIMIT
    LIMITS
    LIN
    LINAGE
    LINAGE_COUNTER
    LINE
    LINECOUNT
    LINES
    LINE_COUNTER
    LINKAGE
    LIST
    LM
    LOCAL
    LOCAL_STORAGE
    LOCK
    LONGMIXED
    LONGUPPER
    LONG_DATE
    LONG_TIME
    LOWER
    LOWLIGHT
    LOW_VALUE
    LOW_VALUES
    LPAREN
    LPARENCHAR
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    LU
    MAP
    MARGINS
    MAX
    MD
    MDECK
    MEMORY
    MERGE
    MESSAGE
    MIG
    MINUS
    MINUSCHAR
    MINUSEQ
    MINUSMINUS
    MIXED
    MMDDYYYY
    MODE
    MODULES
    MORETHANCHAR
    MORETHANOREQUAL
    MORE_LABELS
    MOVE
    MULTIPLE
    MULTIPLY
    NAME
    NAMED
    NAT
    NATIONAL
    NATIONAL_EDITED
    NATIVE
    NATLANG
    NEGATIVE
    NETWORK
    NEXT
    NN
    NO
    NOADATA
    NOADV
    NOALIAS
    NOAWO
    NOC
    NOCBLCARD
    NOCICS
    NOCOMPILE
    NOCPSM
    NOCURR
    NOCURRENCY
    NOD
    NODATEPROC
    NODBCS
    NODE
    NODEBUG
    NODECK
    NODIAGTRUNC
    NODLL
    NODP
    NODTR
    NODU
    NODUMP
    NODYN
    NODYNAM
    NOEDF
    NOEJPD
    NOEPILOG
    NOEXIT
    NOEXP
    NOEXPORTALL
    NOF
    NOFASTSRT
    NOFEPI
    NOFLAG
    NOFLAGMIG
    NOFLAGSTD
    NOFSRT
    NOGRAPHIC
    NOHOOK
    NOLENGTH
    NOLIB
    NOLINKAGE
    NOLIST
    NOMAP
    NOMD
    NOMDECK
    NONAME
    NONNUMERICLITERAL
    NONUM
    NONUMBER
    NOOBJ
    NOOBJECT
    NOOFF
    NOOFFSET
    NOOPSEQUENCE
    NOOPT
    NOOPTIMIZE
    NOOPTIONS
    NOP
    NOPFD
    NOPROLOG
    NORENT
    NOS
    NOSEP
    NOSEPARATE
    NOSEQ
    NOSEQUENCE
    NOSOURCE
    NOSPIE
    NOSQL
    NOSQLC
    NOSQLCCSID
    NOSSR
    NOSSRANGE
    NOSTDTRUNC
    NOT
    NOTEQ
    NOTEQEQ
    NOTEQUALCHAR
    NOTERM
    NOTERMINAL
    NOTEST
    NOTHREAD
    NOTRIG
    NOVBREF
    NOWD
    NOWORD
    NOX
    NOXREF
    NOZWB
    NO_ECHO
    NS
    NSEQ
    NSYMBOL
    NULLS
    NULL_
    NUM
    NUMBER
    NUMERIC
    NUMERICLITERAL
    NUMERIC_DATE
    NUMERIC_EDITED
    NUMERIC_TIME
    NUMPROC
    OBJ
    OBJECT
    OBJECT_COMPUTER
    OCCURS
    ODT
    OF
    OFF
    OFFSET
    OMITTED
    ON
    OP
    OPEN
    OPMARGINS
    OPSEQUENCE
    OPT
    OPTFILE
    OPTIMIZE
    OPTIONAL
    OPTIONS
    OR
    ORDER
    ORDERLY
    ORGANIZATION
    OROR
    OTHER
    OUT
    OUTDD
    OUTPUT
    OVERFLOW
    OVERLINE
    OWN
    PACKED_DECIMAL
    PADDING
    PAGE
    PAGE_COUNTER
    PASSWORD
    PERCENT
    PERCENTEQ
    PERFORM
    PF
    PFD
    PGMN
    PGMNAME
    PH
    PIC
    PICTURE
    PIPE
    PIPEEQ
    PLUS
    PLUSCHAR
    PLUSEQ
    PLUSPLUS
    POINTER
    PORT
    POSITION
    POSITIVE
    PPTDBG
    PRINTER
    PRINTING
    PRIVATE
    PROCEDURE
    PROCEDURES
    PROCEDURE_POINTER
    PROCEED
    PROCESS
    PROGRAM
    PROGRAM_ID
    PROGRAM_LIBRARY
    PROLOG
    PROMPT
    PURGE
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    QUEUE
    QUOTE
    QUOTES
    RANDOM
    RBRACE
    RBRACKET
    RD
    READ
    READER
    REAL
    RECEIVE
    RECEIVED
    RECORD
    RECORDING
    RECORDS
    RECURSIVE
    REDEFINES
    REEL
    REF
    REFERENCE
    REFERENCES
    RELATIVE
    RELEASE
    REMAINDER
    REMARKS
    REMOTE
    REMOVAL
    REMOVE
    RENAMES
    RENT
    REPLACE
    REPLACING
    REPORT
    REPORTING
    REPORTS
    REQUIRED
    RERUN
    RESERVE
    RESET
    RETURN
    RETURNING
    RETURN_CODE
    REVERSED
    REVERSE_VIDEO
    REWIND
    REWRITE
    RF
    RH
    RIGHT
    RMODE
    ROUNDED
    RPAREN
    RPARENCHAR
    RSHIFT
    RSHIFTEQ
    RUN
    SAME
    SAVE
    SCREEN
    SD
    SEARCH
    SECTION
    SECURE
    SECURITY
    SEGMENT
    SEGMENT_LIMIT
    SELECT
    SEMI
    SEND
    SENTENCE
    SEP
    SEPARATE
    SEQ
    SEQUENCE
    SEQUENTIAL
    SET
    SHARED
    SHAREDBYALL
    SHAREDBYRUNUNIT
    SHARING
    SHIFT_IN
    SHIFT_OUT
    SHORT
    SHORT_DATE
    SIGN
    SIZE
    SLASH
    SLASHCHAR
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SORT
    SORT_CONTROL
    SORT_CORE_SIZE
    SORT_FILE_SIZE
    SORT_MERGE
    SORT_MESSAGE
    SORT_MODE_SIZE
    SORT_RETURN
    SOURCE
    SOURCE_COMPUTER
    SP
    SPACE
    SPACES
    SPECIAL_NAMES
    SPIE
    SQL
    SQLC
    SQLCCSID
    SQLIMS
    SQUOTE
    SS
    SSR
    SSRANGE
    STANDARD
    STANDARD_1
    STANDARD_2
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    START
    STATUS
    STD
    STOP
    STRING
    SUBTRACT
    SUB_QUEUE_1
    SUB_QUEUE_2
    SUB_QUEUE_3
    SUM
    SUPPRESS
    SYMBOL
    SYMBOLIC
    SYNC
    SYNCHRONIZED
    SYSEIB
    SZ
    TABLE
    TALLY
    TALLYING
    TAPE
    TASK
    TERM
    TERMINAL
    TERMINATE
    TEST
    THAN
    THEN
    THREAD
    THREAD_LOCAL
    THROUGH
    THRU
    TILDE
    TIME
    TIMER
    TIMES
    TITLE
    TO
    TODAYS_DATE
    TODAYS_NAME
    TOP
    TRAILING
    TRIG
    TRUE
    TRUNC
    TRUNCATED
    TYPE
    TYPEDEF
    UE
    UNDERLINE
    UNDERSCORE
    UNIT
    UNSTRING
    UNTIL
    UP
    UPON
    UPPER
    URSHIFT
    URSHIFTEQ
    USAGE
    USE
    USING
    VALUE
    VALUES
    VARYING
    VBREF
    VIRTUAL
    WAIT
    WD
    WHEN
    WHEN_COMPILED
    WITH
    WORD
    WORDS
    WORKING_STORAGE
    WRITE
    XMLPARSE
    XMLSS
    XOPTS
    XP
    XREF
    YEAR
    YEARWINDOW
    YIELDSTAR
    YW
    YYYYDDD
    YYYYMMDD
    ZERO
    ZEROES
    ZEROS
    ZERO_FILL
    ZWB
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
    Token ::= Dot WSAfter /. makeToken($_DOT_FS); ./
            | Dot EolAfter /. makeToken($_DOT_FS); ./
            | levelNumber /. makeToken($_INTEGERLITERAL); ./
            | picDigit /. makeToken($_NUMERICLITERAL); ./
            | 'P' 'R' 'O' 'C' 'E' 'D' 'U' 'R' 'E' /. makeToken($_PROCEDURE); ./
            | 'I' 'D' 'E' 'N' 'T' 'I' 'F' 'I' 'C' 'A' 'T' 'I' 'O' 'N' /. makeToken($_IDENTIFICATION); ./
            | 'D' 'I' 'V' 'I' 'S' 'I' 'O' 'N' /. makeToken($_DIVISION); ./
            | 'D' 'A' 'T' 'A' /. makeToken($_DATA); ./
            | 'S' 'E' 'C' 'T' 'I' 'O' 'N' /. makeToken($_SECTION); ./
            | 'S' 'T' 'O' 'P' /. makeToken($_STOP); ./
            | 'R' 'U' 'N' /. makeToken($_RUN); ./
            | 'P' 'I' 'C' /. makeToken($_PIC); ./
            | 'P' 'R' 'O' 'G' 'R' 'A' 'M' Minus 'I' 'D' /. makeToken($_PROGRAM_ID); ./
            | 'W' 'O' 'R' 'K' 'I' 'N' 'G' Minus 'S' 'T' 'O' 'R' 'A' 'G' 'E' /. makeToken($_WORKING_STORAGE); ./
            | identifier /. checkForKeyWord(); ./
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

    WSAfter -> Space | HT
    EolAfter -> LF | CR
    levelNumber -> Zero Digit | Six Six | Seven Seven | Eight Eight | Digit Digit
    Zero -> 0
    picDigit -> 9

    white -> WSChar
           | white WSChar
    WSChar -> Space | LF | CR | HT | FF
%End
