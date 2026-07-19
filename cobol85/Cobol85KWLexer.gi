-- Keyword filter for Cobol85 (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.cobol85
%options template=KeywordTemplateF.gi
%options fp=Cobol85KWLexer

%Include
    KWLexerFoldedCaseMapF.gi
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
    ALPHANUMERIC
    ALSO
    ALTER
    ALTERNATE
    AND
    ANSI
    ANY
    APOST
    AR
    ARE
    AREA
    AREAS
    ARITH
    AS
    ASCENDING
    ASCII
    ASSIGN
    AT
    ATTRIBUTE
    AUTHOR
    AUTO
    AWO
    BASIS
    BEEP
    BEFORE
    BEGINNING
    BELL
    BIN
    BINARY
    BIT
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
    CICS
    CLASS
    CLOSE
    CO
    COBOL
    CODE
    CODEPAGE
    COL
    COLLATING
    COLUMN
    COMMA
    COMMITMENT
    COMMON
    COMMUNICATION
    COMP
    COMPAT
    COMPILE
    COMPUTATIONAL
    COMPUTE
    CONFIGURATION
    CONTAINS
    CONTENT
    CONTINUE
    CONTROL
    CONTROLS
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
    DATE
    DATEPROC
    DAY
    DBCS
    DD
    DE
    DEBUG
    DEBUGGING
    DECK
    DECLARATIVES
    DEFAULT
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
    DIVIDE
    DIVISION
    DLI
    DLL
    DONTCARE
    DOUBLE
    DOWN
    DP
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
    ELSE
    EMI
    EN
    ENABLE
    END
    ENDING
    ENGLISH
    ENTER
    ENTRY
    ENVIRONMENT
    EOL
    EOP
    EOS
    EPILOG
    EQUAL
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
    FD
    FEPI
    FILE
    FILLER
    FINAL
    FIRST
    FLAG
    FLAGSTD
    FOOTING
    FOR
    FROM
    FSRT
    FULL
    FUNCTION
    FUNCTIONNAME
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
    HEADING
    HIGHLIGHT
    HOOK
    ID
    IDENTIFICATION
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
    INSPECT
    INSTALLATION
    INTDATE
    INTEGER
    INTO
    INVALID
    INVOKE
    IS
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
    LC
    LD
    LEADING
    LEASM
    LEFT
    LEFTLINE
    LENGTH
    LESS
    LIB
    LIBACCESS
    LIBPARAMETER
    LIBRARY
    LILIAN
    LIMIT
    LIMITS
    LIN
    LINAGE
    LINE
    LINECOUNT
    LINES
    LINKAGE
    LIST
    LM
    LOCAL
    LOCK
    LONGMIXED
    LONGUPPER
    LOWER
    LOWLIGHT
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
    MIXED
    MMDDYYYY
    MODE
    MODULES
    MOVE
    MULTIPLE
    MULTIPLY
    NAME
    NAMED
    NAT
    NATIONAL
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
    NS
    NSEQ
    NSYMBOL
    NULLS
    NULL_
    NUM
    NUMBER
    NUMERIC
    NUMPROC
    OBJ
    OBJECT
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
    OTHER
    OUT
    OUTDD
    OUTPUT
    OVERFLOW
    OVERLINE
    OWN
    PADDING
    PAGE
    PASSWORD
    PERFORM
    PF
    PFD
    PGMN
    PGMNAME
    PH
    PIC
    PICTURE
    PLUS
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
    PROCEED
    PROCESS
    PROGRAM
    PROGRAM_ID
    PROLOG
    PROMPT
    PURGE
    QUEUE
    QUOTE
    QUOTES
    RANDOM
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
    REVERSED
    REWIND
    REWRITE
    RF
    RH
    RIGHT
    RMODE
    ROUNDED
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
    SELECT
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
    SHORT
    SIGN
    SIZE
    SORT
    SOURCE
    SP
    SPACE
    SPACES
    SPIE
    SQL
    SQLC
    SQLCCSID
    SQLIMS
    SS
    SSR
    SSRANGE
    STANDARD
    START
    STATUS
    STD
    STOP
    STRING
    SUBTRACT
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
    TEXT
    THAN
    THEN
    THREAD
    THROUGH
    THRU
    TIME
    TIMER
    TIMES
    TITLE
    TO
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
    UNIT
    UNSTRING
    UNTIL
    UP
    UPON
    UPPER
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
    YW
    YYYYDDD
    YYYYMMDD
    ZERO
    ZEROES
    ZEROS
    ZWB
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= s h a r e d b y r u n u n i t /.$setResult($_SHAREDBYRUNUNIT);./
    Keyword ::= i d e n t i f i c a t i o n /.$setResult($_IDENTIFICATION);./
    Keyword ::= c o m m u n i c a t i o n /.$setResult($_COMMUNICATION);./
    Keyword ::= c o m p u t a t i o n a l /.$setResult($_COMPUTATIONAL);./
    Keyword ::= c o n f i g u r a t i o n /.$setResult($_CONFIGURATION);./
    Keyword ::= c o r r e s p o n d i n g /.$setResult($_CORRESPONDING);./
    Keyword ::= a l p h a n u m e r i c /.$setResult($_ALPHANUMERIC);./
    Keyword ::= d e c l a r a t i v e s /.$setResult($_DECLARATIVES);./
    Keyword ::= f u n c t i o n n a m e /.$setResult($_FUNCTIONNAME);./
    Keyword ::= i n s t a l l a t i o n /.$setResult($_INSTALLATION);./
    Keyword ::= l i b p a r a m e t e r /.$setResult($_LIBPARAMETER);./
    Keyword ::= n o o p s e q u e n c e /.$setResult($_NOOPSEQUENCE);./
    Keyword ::= o r g a n i z a t i o n /.$setResult($_ORGANIZATION);./
    Keyword ::= s y n c h r o n i z e d /.$setResult($_SYNCHRONIZED);./
    Keyword ::= d e s t i n a t i o n /.$setResult($_DESTINATION);./
    Keyword ::= e n v i r o n m e n t /.$setResult($_ENVIRONMENT);./
    Keyword ::= n o d i a g t r u n c /.$setResult($_NODIAGTRUNC);./
    Keyword ::= n o e x p o r t a l l /.$setResult($_NOEXPORTALL);./
    Keyword ::= s h a r e d b y a l l /.$setResult($_SHAREDBYALL);./
    Keyword ::= a l p h a b e t i c /.$setResult($_ALPHABETIC);./
    Keyword ::= b y f u n c t i o n /.$setResult($_BYFUNCTION);./
    Keyword ::= c c s v e r s i o n /.$setResult($_CCSVERSION);./
    Keyword ::= c h a r a c t e r s /.$setResult($_CHARACTERS);./
    Keyword ::= c o m m i t m e n t /.$setResult($_COMMITMENT);./
    Keyword ::= c o n v e n t i o n /.$setResult($_CONVENTION);./
    Keyword ::= c o n v e r t i n g /.$setResult($_CONVERTING);./
    Keyword ::= d e f i n i t i o n /.$setResult($_DEFINITION);./
    Keyword ::= d e s c e n d i n g /.$setResult($_DESCENDING);./
    Keyword ::= d u p l i c a t e s /.$setResult($_DUPLICATES);./
    Keyword ::= i n i t i a l i z e /.$setResult($_INITIALIZE);./
    Keyword ::= n o c u r r e n c y /.$setResult($_NOCURRENCY);./
    Keyword ::= n o d a t e p r o c /.$setResult($_NODATEPROC);./
    Keyword ::= n o o p t i m i z e /.$setResult($_NOOPTIMIZE);./
    Keyword ::= n o s e p a r a t e /.$setResult($_NOSEPARATE);./
    Keyword ::= n o s e q u e n c e /.$setResult($_NOSEQUENCE);./
    Keyword ::= n o s q l c c s i d /.$setResult($_NOSQLCCSID);./
    Keyword ::= n o s t d t r u n c /.$setResult($_NOSTDTRUNC);./
    Keyword ::= n o t e r m i n a l /.$setResult($_NOTERMINAL);./
    Keyword ::= o p s e q u e n c e /.$setResult($_OPSEQUENCE);./
    Keyword ::= p r o c e d u r e s /.$setResult($_PROCEDURES);./
    Keyword ::= r e f e r e n c e s /.$setResult($_REFERENCES);./
    Keyword ::= s e q u e n t i a l /.$setResult($_SEQUENTIAL);./
    Keyword ::= y e a r w i n d o w /.$setResult($_YEARWINDOW);./
    Keyword ::= a d v a n c i n g /.$setResult($_ADVANCING);./
    Keyword ::= a l t e r n a t e /.$setResult($_ALTERNATE);./
    Keyword ::= a s c e n d i n g /.$setResult($_ASCENDING);./
    Keyword ::= a t t r i b u t e /.$setResult($_ATTRIBUTE);./
    Keyword ::= b e g i n n i n g /.$setResult($_BEGINNING);./
    Keyword ::= c h a r a c t e r /.$setResult($_CHARACTER);./
    Keyword ::= c o l l a t i n g /.$setResult($_COLLATING);./
    Keyword ::= d e b u g g i n g /.$setResult($_DEBUGGING);./
    Keyword ::= d e l i m i t e d /.$setResult($_DELIMITED);./
    Keyword ::= d e l i m i t e r /.$setResult($_DELIMITER);./
    Keyword ::= d e p e n d i n g /.$setResult($_DEPENDING);./
    Keyword ::= d i a g t r u n c /.$setResult($_DIAGTRUNC);./
    Keyword ::= e x c e p t i o n /.$setResult($_EXCEPTION);./
    Keyword ::= e x c l u s i v e /.$setResult($_EXCLUSIVE);./
    Keyword ::= e x p o r t a l l /.$setResult($_EXPORTALL);./
    Keyword ::= h i g h l i g h t /.$setResult($_HIGHLIGHT);./
    Keyword ::= j u s t i f i e d /.$setResult($_JUSTIFIED);./
    Keyword ::= l i b a c c e s s /.$setResult($_LIBACCESS);./
    Keyword ::= l i n e c o u n t /.$setResult($_LINECOUNT);./
    Keyword ::= l o n g m i x e d /.$setResult($_LONGMIXED);./
    Keyword ::= l o n g u p p e r /.$setResult($_LONGUPPER);./
    Keyword ::= n o c b l c a r d /.$setResult($_NOCBLCARD);./
    Keyword ::= n o c o m p i l e /.$setResult($_NOCOMPILE);./
    Keyword ::= n o f a s t s r t /.$setResult($_NOFASTSRT);./
    Keyword ::= n o f l a g m i g /.$setResult($_NOFLAGMIG);./
    Keyword ::= n o f l a g s t d /.$setResult($_NOFLAGSTD);./
    Keyword ::= n o g r a p h i c /.$setResult($_NOGRAPHIC);./
    Keyword ::= n o l i n k a g e /.$setResult($_NOLINKAGE);./
    Keyword ::= n o o p t i o n s /.$setResult($_NOOPTIONS);./
    Keyword ::= n o s s r a n g e /.$setResult($_NOSSRANGE);./
    Keyword ::= o p m a r g i n s /.$setResult($_OPMARGINS);./
    Keyword ::= p r o c e d u r e /.$setResult($_PROCEDURE);./
    Keyword ::= r e c o r d i n g /.$setResult($_RECORDING);./
    Keyword ::= r e c u r s i v e /.$setResult($_RECURSIVE);./
    Keyword ::= r e d e f i n e s /.$setResult($_REDEFINES);./
    Keyword ::= r e f e r e n c e /.$setResult($_REFERENCE);./
    Keyword ::= r e m a i n d e r /.$setResult($_REMAINDER);./
    Keyword ::= r e p l a c i n g /.$setResult($_REPLACING);./
    Keyword ::= r e p o r t i n g /.$setResult($_REPORTING);./
    Keyword ::= r e t u r n i n g /.$setResult($_RETURNING);./
    Keyword ::= t e r m i n a t e /.$setResult($_TERMINATE);./
    Keyword ::= t r u n c a t e d /.$setResult($_TRUNCATED);./
    Keyword ::= u n d e r l i n e /.$setResult($_UNDERLINE);./
    Keyword ::= a l p h a b e t /.$setResult($_ALPHABET);./
    Keyword ::= c h a i n i n g /.$setResult($_CHAINING);./
    Keyword ::= c o d e p a g e /.$setResult($_CODEPAGE);./
    Keyword ::= c o n t a i n s /.$setResult($_CONTAINS);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= c o n t r o l s /.$setResult($_CONTROLS);./
    Keyword ::= c u r r e n c y /.$setResult($_CURRENCY);./
    Keyword ::= d a t e p r o c /.$setResult($_DATEPROC);./
    Keyword ::= d f h v a l u e /.$setResult($_DFHVALUE);./
    Keyword ::= d i v i s i o n /.$setResult($_DIVISION);./
    Keyword ::= d o n t c a r e /.$setResult($_DONTCARE);./
    Keyword ::= e v a l u a t e /.$setResult($_EVALUATE);./
    Keyword ::= e x t e n d e d /.$setResult($_EXTENDED);./
    Keyword ::= e x t e r n a l /.$setResult($_EXTERNAL);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= g e n e r a t e /.$setResult($_GENERATE);./
    Keyword ::= i m p l i c i t /.$setResult($_IMPLICIT);./
    Keyword ::= i n d i c a t e /.$setResult($_INDICATE);./
    Keyword ::= i n i t i a t e /.$setResult($_INITIATE);./
    Keyword ::= k e y b o a r d /.$setResult($_KEYBOARD);./
    Keyword ::= l a n g u a g e /.$setResult($_LANGUAGE);./
    Keyword ::= l e f t l i n e /.$setResult($_LEFTLINE);./
    Keyword ::= l o w l i g h t /.$setResult($_LOWLIGHT);./
    Keyword ::= m m d d y y y y /.$setResult($_MMDDYYYY);./
    Keyword ::= m u l t i p l e /.$setResult($_MULTIPLE);./
    Keyword ::= m u l t i p l y /.$setResult($_MULTIPLY);./
    Keyword ::= n a t i o n a l /.$setResult($_NATIONAL);./
    Keyword ::= n e g a t i v e /.$setResult($_NEGATIVE);./
    Keyword ::= n o e p i l o g /.$setResult($_NOEPILOG);./
    Keyword ::= n o l e n g t h /.$setResult($_NOLENGTH);./
    Keyword ::= n o n u m b e r /.$setResult($_NONUMBER);./
    Keyword ::= n o o b j e c t /.$setResult($_NOOBJECT);./
    Keyword ::= n o o f f s e t /.$setResult($_NOOFFSET);./
    Keyword ::= n o p r o l o g /.$setResult($_NOPROLOG);./
    Keyword ::= n o s o u r c e /.$setResult($_NOSOURCE);./
    Keyword ::= n o t h r e a d /.$setResult($_NOTHREAD);./
    Keyword ::= o p t i m i z e /.$setResult($_OPTIMIZE);./
    Keyword ::= o p t i o n a l /.$setResult($_OPTIONAL);./
    Keyword ::= o v e r f l o w /.$setResult($_OVERFLOW);./
    Keyword ::= o v e r l i n e /.$setResult($_OVERLINE);./
    Keyword ::= p a s s w o r d /.$setResult($_PASSWORD);./
    Keyword ::= p o s i t i o n /.$setResult($_POSITION);./
    Keyword ::= p o s i t i v e /.$setResult($_POSITIVE);./
    Keyword ::= p r i n t i n g /.$setResult($_PRINTING);./
    Keyword ::= r e c e i v e d /.$setResult($_RECEIVED);./
    Keyword ::= r e l a t i v e /.$setResult($_RELATIVE);./
    Keyword ::= r e q u i r e d /.$setResult($_REQUIRED);./
    Keyword ::= r e v e r s e d /.$setResult($_REVERSED);./
    Keyword ::= s e c u r i t y /.$setResult($_SECURITY);./
    Keyword ::= s e n t e n c e /.$setResult($_SENTENCE);./
    Keyword ::= s e p a r a t e /.$setResult($_SEPARATE);./
    Keyword ::= s e q u e n c e /.$setResult($_SEQUENCE);./
    Keyword ::= s q l c c s i d /.$setResult($_SQLCCSID);./
    Keyword ::= s t a n d a r d /.$setResult($_STANDARD);./
    Keyword ::= s u b t r a c t /.$setResult($_SUBTRACT);./
    Keyword ::= s u p p r e s s /.$setResult($_SUPPRESS);./
    Keyword ::= s y m b o l i c /.$setResult($_SYMBOLIC);./
    Keyword ::= t a l l y i n g /.$setResult($_TALLYING);./
    Keyword ::= t e r m i n a l /.$setResult($_TERMINAL);./
    Keyword ::= t r a i l i n g /.$setResult($_TRAILING);./
    Keyword ::= u n s t r i n g /.$setResult($_UNSTRING);./
    Keyword ::= x m l p a r s e /.$setResult($_XMLPARSE);./
    Keyword ::= y y y y m m d d /.$setResult($_YYYYMMDD);./
    Keyword ::= a d d r e s s /.$setResult($_ADDRESS);./
    Keyword ::= a l i g n e d /.$setResult($_ALIGNED);./
    Keyword ::= b u f s i z e /.$setResult($_BUFSIZE);./
    Keyword ::= b y t i t l e /.$setResult($_BYTITLE);./
    Keyword ::= c a p a b l e /.$setResult($_CAPABLE);./
    Keyword ::= c b l c a r d /.$setResult($_CBLCARD);./
    Keyword ::= c h a n g e d /.$setResult($_CHANGED);./
    Keyword ::= c h a n n e l /.$setResult($_CHANNEL);./
    Keyword ::= c o m p i l e /.$setResult($_COMPILE);./
    Keyword ::= c o m p u t e /.$setResult($_COMPUTE);./
    Keyword ::= c o n t e n t /.$setResult($_CONTENT);./
    Keyword ::= c o n t r o l /.$setResult($_CONTROL);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= d f h r e s p /.$setResult($_DFHRESP);./
    Keyword ::= d i s a b l e /.$setResult($_DISABLE);./
    Keyword ::= d i s p l a y /.$setResult($_DISPLAY);./
    Keyword ::= d y n a m i c /.$setResult($_DYNAMIC);./
    Keyword ::= e n g l i s h /.$setResult($_ENGLISH);./
    Keyword ::= e x h i b i t /.$setResult($_EXHIBIT);./
    Keyword ::= f a s t s r t /.$setResult($_FASTSRT);./
    Keyword ::= f l a g s t d /.$setResult($_FLAGSTD);./
    Keyword ::= f o o t i n g /.$setResult($_FOOTING);./
    Keyword ::= g r a p h i c /.$setResult($_GRAPHIC);./
    Keyword ::= g r e a t e r /.$setResult($_GREATER);./
    Keyword ::= h e a d i n g /.$setResult($_HEADING);./
    Keyword ::= i n d e x e d /.$setResult($_INDEXED);./
    Keyword ::= i n i t i a l /.$setResult($_INITIAL);./
    Keyword ::= i n s p e c t /.$setResult($_INSPECT);./
    Keyword ::= i n t d a t e /.$setResult($_INTDATE);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= i n v a l i d /.$setResult($_INVALID);./
    Keyword ::= l e a d i n g /.$setResult($_LEADING);./
    Keyword ::= l i b r a r y /.$setResult($_LIBRARY);./
    Keyword ::= l i n k a g e /.$setResult($_LINKAGE);./
    Keyword ::= m a r g i n s /.$setResult($_MARGINS);./
    Keyword ::= m e s s a g e /.$setResult($_MESSAGE);./
    Keyword ::= m o d u l e s /.$setResult($_MODULES);./
    Keyword ::= n a t l a n g /.$setResult($_NATLANG);./
    Keyword ::= n e t w o r k /.$setResult($_NETWORK);./
    Keyword ::= n o a d a t a /.$setResult($_NOADATA);./
    Keyword ::= n o a l i a s /.$setResult($_NOALIAS);./
    Keyword ::= n o d e b u g /.$setResult($_NODEBUG);./
    Keyword ::= n o d y n a m /.$setResult($_NODYNAM);./
    Keyword ::= n o m d e c k /.$setResult($_NOMDECK);./
    Keyword ::= n o v b r e f /.$setResult($_NOVBREF);./
    Keyword ::= n s y m b o l /.$setResult($_NSYMBOL);./
    Keyword ::= n u m e r i c /.$setResult($_NUMERIC);./
    Keyword ::= n u m p r o c /.$setResult($_NUMPROC);./
    Keyword ::= o m i t t e d /.$setResult($_OMITTED);./
    Keyword ::= o p t f i l e /.$setResult($_OPTFILE);./
    Keyword ::= o p t i o n s /.$setResult($_OPTIONS);./
    Keyword ::= o r d e r l y /.$setResult($_ORDERLY);./
    Keyword ::= p a d d i n g /.$setResult($_PADDING);./
    Keyword ::= p e r f o r m /.$setResult($_PERFORM);./
    Keyword ::= p g m n a m e /.$setResult($_PGMNAME);./
    Keyword ::= p i c t u r e /.$setResult($_PICTURE);./
    Keyword ::= p o i n t e r /.$setResult($_POINTER);./
    Keyword ::= p r i n t e r /.$setResult($_PRINTER);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= p r o c e e d /.$setResult($_PROCEED);./
    Keyword ::= p r o c e s s /.$setResult($_PROCESS);./
    Keyword ::= w o r k i n g Minus s t o r a g e /.$setResult($_WORKING_STORAGE);./
    Keyword ::= p r o g r a m Minus i d /.$setResult($_PROGRAM_ID);./
    Keyword ::= p r o g r a m /.$setResult($_PROGRAM);./
    Keyword ::= r e c e i v e /.$setResult($_RECEIVE);./
    Keyword ::= r e c o r d s /.$setResult($_RECORDS);./
    Keyword ::= r e l e a s e /.$setResult($_RELEASE);./
    Keyword ::= r e m a r k s /.$setResult($_REMARKS);./
    Keyword ::= r e m o v a l /.$setResult($_REMOVAL);./
    Keyword ::= r e n a m e s /.$setResult($_RENAMES);./
    Keyword ::= r e p l a c e /.$setResult($_REPLACE);./
    Keyword ::= r e p o r t s /.$setResult($_REPORTS);./
    Keyword ::= r e s e r v e /.$setResult($_RESERVE);./
    Keyword ::= r e w r i t e /.$setResult($_REWRITE);./
    Keyword ::= r o u n d e d /.$setResult($_ROUNDED);./
    Keyword ::= s e c t i o n /.$setResult($_SECTION);./
    Keyword ::= s e g m e n t /.$setResult($_SEGMENT);./
    Keyword ::= s h a r i n g /.$setResult($_SHARING);./
    Keyword ::= s s r a n g e /.$setResult($_SSRANGE);./
    Keyword ::= t h r o u g h /.$setResult($_THROUGH);./
    Keyword ::= t y p e d e f /.$setResult($_TYPEDEF);./
    Keyword ::= v a r y i n g /.$setResult($_VARYING);./
    Keyword ::= v i r t u a l /.$setResult($_VIRTUAL);./
    Keyword ::= y y y y d d d /.$setResult($_YYYYDDD);./
    Keyword ::= a c c e p t /.$setResult($_ACCEPT);./
    Keyword ::= a c c e s s /.$setResult($_ACCESS);./
    Keyword ::= a s s i g n /.$setResult($_ASSIGN);./
    Keyword ::= a u t h o r /.$setResult($_AUTHOR);./
    Keyword ::= b e f o r e /.$setResult($_BEFORE);./
    Keyword ::= b i n a r y /.$setResult($_BINARY);./
    Keyword ::= b o t t o m /.$setResult($_BOTTOM);./
    Keyword ::= b o u n d s /.$setResult($_BOUNDS);./
    Keyword ::= c a n c e l /.$setResult($_CANCEL);./
    Keyword ::= c o l u m n /.$setResult($_COLUMN);./
    Keyword ::= c o m m o n /.$setResult($_COMMON);./
    Keyword ::= c o m p a t /.$setResult($_COMPAT);./
    Keyword ::= c r u n c h /.$setResult($_CRUNCH);./
    Keyword ::= c u r s o r /.$setResult($_CURSOR);./
    Keyword ::= d e l e t e /.$setResult($_DELETE);./
    Keyword ::= d e t a i l /.$setResult($_DETAIL);./
    Keyword ::= d i v i d e /.$setResult($_DIVIDE);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= e b c d i c /.$setResult($_EBCDIC);./
    Keyword ::= e n a b l e /.$setResult($_ENABLE);./
    Keyword ::= e n d i n f /.$setResult($_ENDING);./
    Keyword ::= e p i l o g /.$setResult($_EPILOG);./
    Keyword ::= e s c a p e /.$setResult($_ESCAPE);./
    Keyword ::= e x p o r t /.$setResult($_EXPORT);./
    Keyword ::= e x t e n d /.$setResult($_EXTEND);./
    Keyword ::= f i l l e r /.$setResult($_FILLER);./
    Keyword ::= g i v i n g /.$setResult($_GIVING);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= g o b a c k /.$setResult($_GOBACK);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= i n v o k e /.$setResult($_INVOKE);./
    Keyword ::= l e n g t h /.$setResult($_LENGTH);./
    Keyword ::= l i l i a n /.$setResult($_LILIAN);./
    Keyword ::= l i m i t s /.$setResult($_LIMITS);./
    Keyword ::= l i n a g e /.$setResult($_LINAGE);./
    Keyword ::= m e m o r y /.$setResult($_MEMORY);./
    Keyword ::= n a t i v e /.$setResult($_NATIVE);./
    Keyword ::= n o c i c s /.$setResult($_NOCICS);./
    Keyword ::= n o c p s m /.$setResult($_NOCPSM);./
    Keyword ::= n o c u r r /.$setResult($_NOCURR);./
    Keyword ::= n o d b c s /.$setResult($_NODBCS);./
    Keyword ::= n o d e c k /.$setResult($_NODECK);./
    Keyword ::= n o d u m p /.$setResult($_NODUMP);./
    Keyword ::= n o e j p d /.$setResult($_NOEJPD);./
    Keyword ::= n o e x i t /.$setResult($_NOEXIT);./
    Keyword ::= n o f e p i /.$setResult($_NOFEPI);./
    Keyword ::= n o f l a g /.$setResult($_NOFLAG);./
    Keyword ::= n o f s r t /.$setResult($_NOFSRT);./
    Keyword ::= n o h o o k /.$setResult($_NOHOOK);./
    Keyword ::= n o l i s t /.$setResult($_NOLIST);./
    Keyword ::= n o n a m e /.$setResult($_NONAME);./
    Keyword ::= n o r e n t /.$setResult($_NORENT);./
    Keyword ::= n o s p i e /.$setResult($_NOSPIE);./
    Keyword ::= n o s q l c /.$setResult($_NOSQLC);./
    Keyword ::= n o t e r m /.$setResult($_NOTERM);./
    Keyword ::= n o t e s t /.$setResult($_NOTEST);./
    Keyword ::= n o t r i g /.$setResult($_NOTRIG);./
    Keyword ::= n o w o r d /.$setResult($_NOWORD);./
    Keyword ::= n o x r e f /.$setResult($_NOXREF);./
    Keyword ::= n u m b e r /.$setResult($_NUMBER);./
    Keyword ::= o b j e c t /.$setResult($_OBJECT);./
    Keyword ::= o c c u r s /.$setResult($_OCCURS);./
    Keyword ::= o f f s e t /.$setResult($_OFFSET);./
    Keyword ::= o u t p u t /.$setResult($_OUTPUT);./
    Keyword ::= p p t d b g /.$setResult($_PPTDBG);./
    Keyword ::= p r o l o g /.$setResult($_PROLOG);./
    Keyword ::= p r o m p t /.$setResult($_PROMPT);./
    Keyword ::= q u o t e s /.$setResult($_QUOTES);./
    Keyword ::= r a n d o m /.$setResult($_RANDOM);./
    Keyword ::= r e a d e r /.$setResult($_READER);./
    Keyword ::= r e c o r d /.$setResult($_RECORD);./
    Keyword ::= r e m o t e /.$setResult($_REMOTE);./
    Keyword ::= r e m o v e /.$setResult($_REMOVE);./
    Keyword ::= r e p o r t /.$setResult($_REPORT);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= r e w i n d /.$setResult($_REWIND);./
    Keyword ::= s c r e e n /.$setResult($_SCREEN);./
    Keyword ::= s e a r c h /.$setResult($_SEARCH);./
    Keyword ::= s e c u r e /.$setResult($_SECURE);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s h a r e d /.$setResult($_SHARED);./
    Keyword ::= s o u r c e /.$setResult($_SOURCE);./
    Keyword ::= s p a c e s /.$setResult($_SPACES);./
    Keyword ::= s q l i m s /.$setResult($_SQLIMS);./
    Keyword ::= s t a t u s /.$setResult($_STATUS);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= s y m b o l /.$setResult($_SYMBOL);./
    Keyword ::= s y s e i b /.$setResult($_SYSEIB);./
    Keyword ::= t h r e a d /.$setResult($_THREAD);./
    Keyword ::= v a l u e s /.$setResult($_VALUES);./
    Keyword ::= z e r o e s /.$setResult($_ZEROES);./
    Keyword ::= a b o r t /.$setResult($_ABORT);./
    Keyword ::= a d a t a /.$setResult($_ADATA);./
    Keyword ::= a f t e r /.$setResult($_AFTER);./
    Keyword ::= a l i a s /.$setResult($_ALIAS);./
    Keyword ::= a l t e r /.$setResult($_ALTER);./
    Keyword ::= a p o s t /.$setResult($_APOST);./
    Keyword ::= a r e a s /.$setResult($_AREAS);./
    Keyword ::= a r i t h /.$setResult($_ARITH);./
    Keyword ::= a s c i i /.$setResult($_ASCII);./
    Keyword ::= b a s i s /.$setResult($_BASIS);./
    Keyword ::= b l a n k /.$setResult($_BLANK);./
    Keyword ::= b l i n k /.$setResult($_BLINK);./
    Keyword ::= b l o c k /.$setResult($_BLOCK);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= c l o s e /.$setResult($_CLOSE);./
    Keyword ::= c o b o l /.$setResult($_COBOL);./
    Keyword ::= c o m m a /.$setResult($_COMMA);./
    Keyword ::= c o u n t /.$setResult($_COUNT);./
    Keyword ::= d e b u g /.$setResult($_DEBUG);./
    Keyword ::= d y n a m /.$setResult($_DYNAM);./
    Keyword ::= e j e c t /.$setResult($_EJECT);./
    Keyword ::= e n t e r /.$setResult($_ENTER);./
    Keyword ::= e n t r y /.$setResult($_ENTRY);./
    Keyword ::= e q u a l /.$setResult($_EQUAL);./
    Keyword ::= e r a s e /.$setResult($_ERASE);./
    Keyword ::= e r r o r /.$setResult($_ERROR);./
    Keyword ::= e v e n t /.$setResult($_EVENT);./
    Keyword ::= e v e r y /.$setResult($_EVERY);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f i n a l /.$setResult($_FINAL);./
    Keyword ::= f i r s t /.$setResult($_FIRST);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= i n d e x /.$setResult($_INDEX);./
    Keyword ::= i n p u t /.$setResult($_INPUT);./
    Keyword ::= k a n j i /.$setResult($_KANJI);./
    Keyword ::= l a b e l /.$setResult($_LABEL);./
    Keyword ::= l e a s m /.$setResult($_LEASM);./
    Keyword ::= l i m i t /.$setResult($_LIMIT);./
    Keyword ::= l i n e s /.$setResult($_LINES);./
    Keyword ::= l o c a l /.$setResult($_LOCAL);./
    Keyword ::= l o w e r /.$setResult($_LOWER);./
    Keyword ::= m d e c k /.$setResult($_MDECK);./
    Keyword ::= m e r g e /.$setResult($_MERGE);./
    Keyword ::= m i x e d /.$setResult($_MIXED);./
    Keyword ::= n a m e d /.$setResult($_NAMED);./
    Keyword ::= n o a d v /.$setResult($_NOADV);./
    Keyword ::= n o a w o /.$setResult($_NOAWO);./
    Keyword ::= n o d l l /.$setResult($_NODLL);./
    Keyword ::= n o d t r /.$setResult($_NODTR);./
    Keyword ::= n o d y n /.$setResult($_NODYN);./
    Keyword ::= n o e d f /.$setResult($_NOEDF);./
    Keyword ::= n o e x p /.$setResult($_NOEXP);./
    Keyword ::= n o l i b /.$setResult($_NOLIB);./
    Keyword ::= n o m a p /.$setResult($_NOMAP);./
    Keyword ::= n o n u m /.$setResult($_NONUM);./
    Keyword ::= n o o b j /.$setResult($_NOOBJ);./
    Keyword ::= n o o f f /.$setResult($_NOOFF);./
    Keyword ::= n o o p t /.$setResult($_NOOPT);./
    Keyword ::= n o p f d /.$setResult($_NOPFD);./
    Keyword ::= n o s e p /.$setResult($_NOSEP);./
    Keyword ::= n o s e q /.$setResult($_NOSEQ);./
    Keyword ::= n o s q l /.$setResult($_NOSQL);./
    Keyword ::= n o s s r /.$setResult($_NOSSR);./
    Keyword ::= n o z w b /.$setResult($_NOZWB);./
    Keyword ::= n u l l s /.$setResult($_NULLS);./
    Keyword ::= o r d e r /.$setResult($_ORDER);./
    Keyword ::= o t h e r /.$setResult($_OTHER);./
    Keyword ::= o u t d d /.$setResult($_OUTDD);./
    Keyword ::= p u r g e /.$setResult($_PURGE);./
    Keyword ::= q u e u e /.$setResult($_QUEUE);./
    Keyword ::= q u o t e /.$setResult($_QUOTE);./
    Keyword ::= r e r u n /.$setResult($_RERUN);./
    Keyword ::= r e s e t /.$setResult($_RESET);./
    Keyword ::= r i g h t /.$setResult($_RIGHT);./
    Keyword ::= r m o d e /.$setResult($_RMODE);./
    Keyword ::= s h o r t /.$setResult($_SHORT);./
    Keyword ::= s p a c e /.$setResult($_SPACE);./
    Keyword ::= s t a r t /.$setResult($_START);./
    Keyword ::= t a b l e /.$setResult($_TABLE);./
    Keyword ::= t a l l y /.$setResult($_TALLY);./
    Keyword ::= t i m e r /.$setResult($_TIMER);./
    Keyword ::= t i m e s /.$setResult($_TIMES);./
    Keyword ::= t i t l e /.$setResult($_TITLE);./
    Keyword ::= t r u n c /.$setResult($_TRUNC);./
    Keyword ::= u n t i l /.$setResult($_UNTIL);./
    Keyword ::= u p p e r /.$setResult($_UPPER);./
    Keyword ::= u s a g e /.$setResult($_USAGE);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= v a l u e /.$setResult($_VALUE);./
    Keyword ::= v b r e f /.$setResult($_VBREF);./
    Keyword ::= w o r d s /.$setResult($_WORDS);./
    Keyword ::= w r i t e /.$setResult($_WRITE);./
    Keyword ::= x m l s s /.$setResult($_XMLSS);./
    Keyword ::= x o p t s /.$setResult($_XOPTS);./
    Keyword ::= z e r o s /.$setResult($_ZEROS);./
    Keyword ::= a l s o /.$setResult($_ALSO);./
    Keyword ::= a n s i /.$setResult($_ANSI);./
    Keyword ::= a r e a /.$setResult($_AREA);./
    Keyword ::= a u t o /.$setResult($_AUTO);./
    Keyword ::= b e e p /.$setResult($_BEEP);./
    Keyword ::= b e l l /.$setResult($_BELL);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= c i c s /.$setResult($_CICS);./
    Keyword ::= c o d e /.$setResult($_CODE);./
    Keyword ::= c o m p /.$setResult($_COMP);./
    Keyword ::= c o p y /.$setResult($_COPY);./
    Keyword ::= c o r r /.$setResult($_CORR);./
    Keyword ::= c p s m /.$setResult($_CPSM);./
    Keyword ::= c u r r /.$setResult($_CURR);./
    Keyword ::= d a t a /.$setResult($_DATA);./
    Keyword ::= d a t e /.$setResult($_DATE);./
    Keyword ::= d b c s /.$setResult($_DBCS);./
    Keyword ::= d e c k /.$setResult($_DECK);./
    Keyword ::= d i s k /.$setResult($_DISK);./
    Keyword ::= d o w n /.$setResult($_DOWN);./
    Keyword ::= d u m p /.$setResult($_DUMP);./
    Keyword ::= e g c s /.$setResult($_EGCS);./
    Keyword ::= e j p d /.$setResult($_EJPD);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e x c i /.$setResult($_EXCI);./
    Keyword ::= e x e c /.$setResult($_EXEC);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= f e p i /.$setResult($_FEPI);./
    Keyword ::= f i l e /.$setResult($_FILE);./
    Keyword ::= f l a g /.$setResult($_FLAG);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= f s r t /.$setResult($_FSRT);./
    Keyword ::= f u l l /.$setResult($_FULL);./
    Keyword ::= g r i d /.$setResult($_GRID);./
    Keyword ::= h o o k /.$setResult($_HOOK);./
    Keyword ::= i n t o /.$setResult($_INTO);./
    Keyword ::= j u s t /.$setResult($_JUST);./
    Keyword ::= k e p t /.$setResult($_KEPT);./
    Keyword ::= l a n g /.$setResult($_LANG);./
    Keyword ::= l a s t /.$setResult($_LAST);./
    Keyword ::= l e f t /.$setResult($_LEFT);./
    Keyword ::= l e s s /.$setResult($_LESS);./
    Keyword ::= l i n e /.$setResult($_LINE);./
    Keyword ::= l i s t /.$setResult($_LIST);./
    Keyword ::= l o c k /.$setResult($_LOCK);./
    Keyword ::= m o d e /.$setResult($_MODE);./
    Keyword ::= m o v e /.$setResult($_MOVE);./
    Keyword ::= n a m e /.$setResult($_NAME);./
    Keyword ::= n e x t /.$setResult($_NEXT);./
    Keyword ::= n o d e /.$setResult($_NODE);./
    Keyword ::= n o d p /.$setResult($_NODP);./
    Keyword ::= n o d u /.$setResult($_NODU);./
    Keyword ::= n o m d /.$setResult($_NOMD);./
    Keyword ::= n o w d /.$setResult($_NOWD);./
    Keyword ::= n s e q /.$setResult($_NSEQ);./
    Keyword ::= n u l l /.$setResult($_NULL_);./
    Keyword ::= o p e n /.$setResult($_OPEN);./
    Keyword ::= p a g e /.$setResult($_PAGE);./
    Keyword ::= p g m n /.$setResult($_PGMN);./
    Keyword ::= p l u s /.$setResult($_PLUS);./
    Keyword ::= p o r t /.$setResult($_PORT);./
    Keyword ::= r e a d /.$setResult($_READ);./
    Keyword ::= r e a l /.$setResult($_REAL);./
    Keyword ::= r e e l /.$setResult($_REEL);./
    Keyword ::= r e n t /.$setResult($_RENT);./
    Keyword ::= s a m e /.$setResult($_SAME);./
    Keyword ::= s a v e /.$setResult($_SAVE);./
    Keyword ::= s e n d /.$setResult($_SEND);./
    Keyword ::= s i g n /.$setResult($_SIGN);./
    Keyword ::= s i z e /.$setResult($_SIZE);./
    Keyword ::= s o r t /.$setResult($_SORT);./
    Keyword ::= s p i e /.$setResult($_SPIE);./
    Keyword ::= s q l c /.$setResult($_SQLC);./
    Keyword ::= s t o p /.$setResult($_STOP);./
    Keyword ::= s y n c /.$setResult($_SYNC);./
    Keyword ::= t a p e /.$setResult($_TAPE);./
    Keyword ::= t a s k /.$setResult($_TASK);./
    Keyword ::= t e r m /.$setResult($_TERM);./
    Keyword ::= t e s t /.$setResult($_TEST);./
    Keyword ::= t e x t /.$setResult($_TEXT);./
    Keyword ::= t h a n /.$setResult($_THAN);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t h r u /.$setResult($_THRU);./
    Keyword ::= t i m e /.$setResult($_TIME);./
    Keyword ::= t r i g /.$setResult($_TRIG);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= u n i t /.$setResult($_UNIT);./
    Keyword ::= u p o n /.$setResult($_UPON);./
    Keyword ::= w a i t /.$setResult($_WAIT);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= w o r d /.$setResult($_WORD);./
    Keyword ::= x r e f /.$setResult($_XREF);./
    Keyword ::= y e a r /.$setResult($_YEAR);./
    Keyword ::= z e r o /.$setResult($_ZERO);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a d v /.$setResult($_ADV);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= a r e /.$setResult($_ARE);./
    Keyword ::= a w o /.$setResult($_AWO);./
    Keyword ::= b i n /.$setResult($_BIN);./
    Keyword ::= b i t /.$setResult($_BIT);./
    Keyword ::= b u f /.$setResult($_BUF);./
    Keyword ::= c b l /.$setResult($_CBL);./
    Keyword ::= c o l /.$setResult($_COL);./
    Keyword ::= c p p /.$setResult($_CPP);./
    Keyword ::= d a y /.$setResult($_DAY);./
    Keyword ::= d l i /.$setResult($_DLI);./
    Keyword ::= d l l /.$setResult($_DLL);./
    Keyword ::= d t r /.$setResult($_DTR);./
    Keyword ::= d y n /.$setResult($_DYN);./
    Keyword ::= e d f /.$setResult($_EDF);./
    Keyword ::= e g i /.$setResult($_EGI);./
    Keyword ::= e m i /.$setResult($_EMI);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= e o l /.$setResult($_EOL);./
    Keyword ::= e o p /.$setResult($_EOP);./
    Keyword ::= e o s /.$setResult($_EOS);./
    Keyword ::= e s i /.$setResult($_ESI);./
    Keyword ::= e x p /.$setResult($_EXP);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= g d s /.$setResult($_GDS);./
    Keyword ::= k e y /.$setResult($_KEY);./
    Keyword ::= l i b /.$setResult($_LIB);./
    Keyword ::= l i n /.$setResult($_LIN);./
    Keyword ::= m a p /.$setResult($_MAP);./
    Keyword ::= m a x /.$setResult($_MAX);./
    Keyword ::= m i g /.$setResult($_MIG);./
    Keyword ::= n a t /.$setResult($_NAT);./
    Keyword ::= n o c /.$setResult($_NOC);./
    Keyword ::= n o d /.$setResult($_NOD);./
    Keyword ::= n o f /.$setResult($_NOF);./
    Keyword ::= n o p /.$setResult($_NOP);./
    Keyword ::= n o s /.$setResult($_NOS);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= n o x /.$setResult($_NOX);./
    Keyword ::= n u m /.$setResult($_NUM);./
    Keyword ::= o b j /.$setResult($_OBJ);./
    Keyword ::= o d t /.$setResult($_ODT);./
    Keyword ::= o f f /.$setResult($_OFF);./
    Keyword ::= o p t /.$setResult($_OPT);./
    Keyword ::= o u t /.$setResult($_OUT);./
    Keyword ::= o w n /.$setResult($_OWN);./
    Keyword ::= p f d /.$setResult($_PFD);./
    Keyword ::= p i c /.$setResult($_PIC);./
    Keyword ::= r e f /.$setResult($_REF);./
    Keyword ::= r u n /.$setResult($_RUN);./
    Keyword ::= s e p /.$setResult($_SEP);./
    Keyword ::= s e q /.$setResult($_SEQ);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= s q l /.$setResult($_SQL);./
    Keyword ::= s s r /.$setResult($_SSR);./
    Keyword ::= s t d /.$setResult($_STD);./
    Keyword ::= s u m /.$setResult($_SUM);./
    Keyword ::= t o p /.$setResult($_TOP);./
    Keyword ::= u s e /.$setResult($_USE);./
    Keyword ::= z w b /.$setResult($_ZWB);./
    Keyword ::= a r /.$setResult($_AR);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= a t /.$setResult($_AT);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= c d /.$setResult($_CD);./
    Keyword ::= c f /.$setResult($_CF);./
    Keyword ::= c h /.$setResult($_CH);./
    Keyword ::= c o /.$setResult($_CO);./
    Keyword ::= c p /.$setResult($_CP);./
    Keyword ::= c s /.$setResult($_CS);./
    Keyword ::= d d /.$setResult($_DD);./
    Keyword ::= d e /.$setResult($_DE);./
    Keyword ::= d p /.$setResult($_DP);./
    Keyword ::= d u /.$setResult($_DU);./
    Keyword ::= e n /.$setResult($_EN);./
    Keyword ::= f d /.$setResult($_FD);./
    Keyword ::= g o /.$setResult($_GO);./
    Keyword ::= i d /.$setResult($_ID);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= j a /.$setResult($_JA);./
    Keyword ::= j p /.$setResult($_JP);./
    Keyword ::= k a /.$setResult($_KA);./
    Keyword ::= l b /.$setResult($_LB);./
    Keyword ::= l c /.$setResult($_LC);./
    Keyword ::= l d /.$setResult($_LD);./
    Keyword ::= l m /.$setResult($_LM);./
    Keyword ::= l u /.$setResult($_LU);./
    Keyword ::= m d /.$setResult($_MD);./
    Keyword ::= n n /.$setResult($_NN);./
    Keyword ::= n o /.$setResult($_NO);./
    Keyword ::= n s /.$setResult($_NS);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o p /.$setResult($_OP);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= p f /.$setResult($_PF);./
    Keyword ::= p h /.$setResult($_PH);./
    Keyword ::= r d /.$setResult($_RD);./
    Keyword ::= r f /.$setResult($_RF);./
    Keyword ::= r h /.$setResult($_RH);./
    Keyword ::= s d /.$setResult($_SD);./
    Keyword ::= s p /.$setResult($_SP);./
    Keyword ::= s s /.$setResult($_SS);./
    Keyword ::= s z /.$setResult($_SZ);./
    Keyword ::= t o /.$setResult($_TO);./
    Keyword ::= u e /.$setResult($_UE);./
    Keyword ::= u p /.$setResult($_UP);./
    Keyword ::= w d /.$setResult($_WD);./
    Keyword ::= x p /.$setResult($_XP);./
    Keyword ::= y w /.$setResult($_YW);./
%End
