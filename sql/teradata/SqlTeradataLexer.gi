-- Real lexer for SqlTeradataParser (not token-stream soup). Keywords via SqlTeradataKWLexer.
%Options list
%Options fp=SqlTeradataLexer
%options single_productions
%options conflicts
%options package=lpg.grammars.sql.teradata
%options template=LexerTemplateF.gi
%options filter=SqlTeradataKWLexer.gi

%Define
    $kw_lexer_class /.$SqlTeradataKWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
    ABORT
    ABORTSESSION
    ABORTSESSIONS
    ABS
    ABSENT
    ACCESS
    ACCESS_LOCK
    ACCORDING
    ACCOUNT
    ACCUMULATE
    ACOS
    ACOSH
    ADD
    ADD_MONTHS
    ADMIN
    AFTER
    AG
    AGGGEOMINTERSECTION
    AGGGEOMUNION
    AGGREGATE
    ALIAS
    ALL
    ALLDBQL
    ALLOCATE
    ALLOCATION
    ALLOW
    ALLPARAMS
    ALLTDWM
    ALTER
    ALWAYS
    AMP
    AMPCOUNT
    AMPEQ
    ANALYSIS
    ANCHOR
    ANCHOR_HOUR
    ANCHOR_MILLISECOND
    ANCHOR_MINUTE
    ANCHOR_SECOND
    AND
    ANDAND
    ANSIDATE
    ANY
    APPLNAME
    ARCHIVE
    ARGLPAREN
    ARRAY
    ARRAY_ADD
    ARRAY_AGG
    ARRAY_AVG
    ARRAY_COMPARE
    ARRAY_CONCAT
    ARRAY_COUNT_DISTINCT
    ARRAY_DIV
    ARRAY_EQ
    ARRAY_GE
    ARRAY_GET
    ARRAY_GT
    ARRAY_LE
    ARRAY_LT
    ARRAY_MAX
    ARRAY_MIN
    ARRAY_MOD
    ARRAY_MUL
    ARRAY_NE
    ARRAY_SUB
    ARRAY_SUM
    ARRAY_TO_JSON
    ARRAY_UPDATE
    ARRAY_UPDATE_STRIDE
    ARROW
    ARROWSTAR
    AS
    ASBSON
    ASBSONTEXT
    ASC
    ASCII
    ASIN
    ASINH
    ASSIGNMENT
    AT
    ATAN
    ATAN2
    ATANH
    ATEQ
    ATOMIC
    ATTR
    ATTRIBUTE
    ATTRIBUTES
    ATTRIBUTION
    ATTRS
    AUTH
    AUTHORIZATION
    AUTO
    AUTOTEMP
    AVE
    AVERAGE
    AVG
    AVRO
    BACKSLASH
    BACKTICK
    BANG
    BEFORE
    BEGIN
    BETWEEN
    BIGINT
    BINARY
    BITAND
    BITCLEAR
    BITNOT
    BITOR
    BITXOR
    BIT_LENGTH
    BLOB
    BLOCKCOMPRESSION
    BLOCKCOMPRESSIONALGORITHM
    BLOCKCOMPRESSIONLEVEL
    BOM
    BOTH
    BOTTOM
    BROKEN_CONCATENATE
    BSON
    BSON_CHECK
    BT
    BUCKET
    BUFFERSIZE
    BUT
    BY
    BYTE
    BYTEINT
    BYTES
    C
    CALCMATRIX
    CALCTYPE
    CALENDAR
    CALL
    CALLED
    CALLER
    CAMSET
    CAMSET_L
    CAPTURE
    CARDINALITY
    CARET
    CARETEQ
    CASE
    CASESPECIFIC
    CASE_N
    CAST
    CD
    CEIL
    CEILING
    CHANGERATE
    CHAR
    CHAR2HEXINT
    CHARACTER
    CHARACTERISTICS
    CHARACTERS
    CHARACTER_LENGTH
    CHARS
    CHARSET_COLL
    CHAR_LENGTH
    CHAR_LITERAL
    CHAR_STRING
    CHECK
    CHECKPOINT
    CHECKSUM
    CHR
    CLASS
    CLASS_ORIGIN
    CLICKLAG
    CLIENT
    CLOB
    CLOSE
    CLUSTER
    CM
    CNT
    COALESCE
    COLEXPR
    COLLATION
    COLLECT
    COLOCATE
    COLON
    COLONCOLON
    COLONEQ
    COLUMN
    COLUMNMETA
    COLUMNS
    COLUMNSPERINDEX
    COLUMNSPERJOININDEX
    COLUMN_ALIAS_LIST
    COLUMN_LIST
    COMBINE
    COMMA
    COMMAND_FUNCTION
    COMMAND_FUNCTION_CODE
    COMMENT
    COMMIT
    COMMITTED
    COMPARISON
    COMPILE
    COMPRESS
    COMPRESSION
    CONCAT
    CONCURRENT
    CONDITION
    CONDITION_IDENTIFIER
    CONDITION_NUMBER
    CONNECT
    CONSTRAINT
    CONSTRUCTOR
    CONSUME
    CONTAINED
    CONTAINEDTOKEN
    CONTAINS
    CONTENT
    CONTIGUOUS
    CONTIGUOUSMAPAMPS
    CONTINUE
    CONVERT_TABLE_HEADER
    CORR
    COS
    COSH
    COST
    COSTS
    COUNT
    COUNTSET
    COVAR_POP
    COVAR_SAMP
    CPP
    CPUTIME
    CPUTIMENORM
    CREATE
    CREATEDATASET
    CREATENONSCHEMABASEDXML
    CREATESCHEMABASEDXML
    CREATEXML
    CREATOR
    CROSS
    CS
    CSUM
    CSV
    CSVLD
    CS_GRAPHIC
    CS_KANJISJIS
    CS_LATIN
    CS_UNICODE
    CT
    CTCONTROL
    CUBE
    CUME_DIST
    CURDATE
    CURRENT
    CURRENT_DATE
    CURRENT_ROLE
    CURRENT_TIME
    CURRENT_TIMESTAMP
    CURRENT_USER
    CURSOR
    CURTIME
    CV
    CYCLE
    DATA
    DATABASE
    DATABLOCKSIZE
    DATASET
    DATASIZE
    DATE
    DATEFORM
    DATE_STRING
    DAY
    DAYNUMBER_OF_CALENDAR
    DAYNUMBER_OF_MONTH
    DAYNUMBER_OF_WEEK
    DAYNUMBER_OF_YEAR
    DAYOCCURRENCE_OF_MONTH
    DAYOFMONTH
    DAYS
    DAY_OF_CALENDAR
    DAY_OF_MONTH
    DAY_OF_WEEK
    DAY_OF_YEAR
    DBA
    DBC
    DEALLOCATE
    DEBUG
    DEC
    DECAMSET
    DECAMSET_L
    DECIMAL
    DECLARE
    DECODE
    DECOMPRESS
    DEFAULT
    DEFERRED
    DEFINER
    DEFINITION
    DEGREES
    DEL
    DELETE
    DELETED
    DELIMITER
    DELTA_T
    DEMOGRAPHICS
    DENIALS
    DENSE
    DENSE_RANK
    DEPTH
    DESC
    DESCRIBE
    DESCRIPTOR
    DETAILED
    DETERMINISTIC
    DIAGNOSTIC
    DIAGNOSTICS
    DICTIONARY
    DIGITS
    DIMENSION
    DISABLED
    DISTINCT
    DO
    DOCUMENT
    DOLLAR
    DOMAIN
    DOT
    DOTDOT
    DOTSTAR
    DOUBLE
    DOWN
    DQUOTE
    DR
    DROP
    DUAL
    DUMP
    DUPCOUNT
    DUPCOUNTCUM
    DYNAMIC
    EACH
    EBCDIC
    ECHO
    EDITDISTANCE
    ELAPSEDSEC
    ELAPSEDTIME
    ELEMENT
    ELLIPSIS
    ELSE
    ELSEIF
    ELZS_H
    EMITNULL
    EMPTY
    EMPTY_BLOB
    EMPTY_CLOB
    ENABLED
    ENCODE
    ENCODING
    ENCRYPT
    END
    EQ
    EQEQ
    EQEQEQ
    EQUALS
    ERROR
    ERRORFILES
    ERRORS
    ERRORTABLES
    ERRORTBL
    ESCAPE
    ET
    EVENTCOLUMN
    EXCEPT
    EXCEPTION
    EXCL
    EXCLUDE
    EXCLUDING
    EXCLUSIVE
    EXEC
    EXECUTE
    EXISTS
    EXISTSNODE
    EXISTVALUE
    EXIT
    EXP
    EXPAND
    EXPANDING
    EXPIRE
    EXPLAIN
    EXPORT
    EXPORTWIDTH
    EXTERNAL
    EXTRACT
    FALLBACK
    FALSE
    FAST
    FASTEXPORT
    FATARROW
    FEATUREINFO
    FETCH
    FILE
    FILL
    FILTER
    FINAL
    FIRST
    FIRST_NOTNULL
    FIRST_VALUE
    FLOAT
    FLOAT_LITERAL
    FLOOR
    FLUSH
    FOLLOWING
    FOR
    FOREIGN
    FOREIGNFUNCTION
    FORMAT
    FORTOKEN
    FOUND
    FREESPACE
    FRIDAY
    FROM
    FROM_BYTES
    FULL
    FULLSCAN
    FUNCTION
    FUNCTIONDESCRIPTOR
    FUNCTIONPARAMETER
    G
    GE
    GENERATED
    GEOJSONFROMGEOM
    GEOMFROMGEOJSON
    GET
    GETBIT
    GETPSFVERSION
    GETQUERYBAND
    GETQUERYBANDVALUE
    GETTIMEZONEDISPLACEMENT
    GIVE
    GLOBAL
    GLOP
    GO
    GOTO
    GRANT
    GRAPHIC
    GREATEST
    GROUP
    GROUPING
    GT
    GTEQ
    HANDLER
    HASH
    HASHAMP
    HASHBAKAMP
    HASHBUCKET
    HASHROW
    HAVING
    HEADER
    HELP
    HEX_BYTE_LITERAL
    HEX_INTEGER_LITERAL
    HEX_STRING
    HIGH
    HOST
    HOUR
    ID2BIGINT
    IDENTIFIER
    IDENTIFYDATABASE
    IDENTIFYSESSION
    IDENTIFYTABLE
    IDENTIFYUSER
    IDENTITY
    IF
    IFP
    IGNORE
    IMMEDIATE
    IMMEDIATELY
    IMPORT
    IN
    INCLUDE
    INCLUDE_HASHBY
    INCLUDE_NULLS
    INCLUDE_ORDERING
    INCLUDING
    INCONSISTENT
    INCREMENT
    INCREMENTAL
    INDEX
    INDEXESPERTABLE
    INDEXMAINTMODE
    INDICATOR
    INIT
    INITCAP
    INITIATE
    INLINE
    INNER
    INOUT
    INPUT
    INS
    INSERT
    INSTANCE
    INSTANTIABLE
    INSTEAD
    INSTR
    INT
    INTEGER
    INTEGERDATE
    INTERNAL
    INTERSECT
    INTERVAL
    INTO
    INVOKER
    IOCOUNT
    IPARTITION
    IS
    ISCONTENT
    ISDOCUMENT
    ISOLATED
    ISOLATION
    ISSCHEMAVALID
    ISSCHEMAVALIDATED
    ITERATE
    JAR
    JAVA
    JIS_COLL
    JOIN
    JOURNAL
    JSON
    JSONEXTRACT
    JSONEXTRACTLARGEVALUE
    JSONEXTRACTVALUE
    JSONGETVALUE
    JSONMETADATA
    JSON_AGG
    JSON_CHECK
    JSON_COMPOSE
    JSON_COMPRESS
    JSON_DECOMPRESS
    JSON_KEYS
    JSON_TABLE
    K
    KANJI1
    KANJISJIS
    KBYTE
    KBYTES
    KEEP
    KEY
    KEYCOUNT
    KILOBYTES
    KURTOSIS
    LAG
    LANGUAGE
    LARGE
    LAST
    LAST_DAY
    LAST_NOTNULL
    LAST_VALUE
    LATIN
    LATIN_TO_UNICODE
    LBRACE
    LBRACKET
    LDIFF
    LE
    LEAD
    LEADING
    LEAST
    LEAVE
    LEFT
    LENGTH
    LEVEL
    LIKE
    LIMIT
    LINK
    LIST
    LISTAGG
    LN
    LOAD
    LOADING
    LOCAL
    LOCALE_TO_UNICODE
    LOCATE
    LOCATION
    LOCATOR
    LOCK
    LOCKEDUSEREXPIRE
    LOCKING
    LOG
    LOGGING
    LOGON
    LONG
    LOOP
    LOW
    LOWER
    LPAD
    LPAREN
    LSHIFT
    LSHIFTEQ
    LT
    LTEQ
    LTGT
    LTRIM
    LZCOMP
    LZCOMP_L
    LZDECOMP
    LZDECOMP_L
    M
    MACRO
    MAD
    MANIFEST
    MANIFESTFILE
    MANIFESTONLY
    MANUAL
    MAP
    MAPPING
    MATCHED
    MAVG
    MAX
    MAXCHAR
    MAXIMUM
    MAXINTERVALS
    MAXLOGONATTEMPTS
    MAXOBJECTSIZE
    MAXVALUE
    MAXVALUELENGTH
    MAX_CHOOSE
    MCHARACTERS
    MDIFF
    MEDIAN
    MEDIUM
    MEETS
    MEMBER
    MERGE
    MERGEBLOCKRATIO
    MESSAGE_LENGTH
    MESSAGE_TEXT
    METADATA
    METHOD
    MIN
    MINCHAR
    MINDEX
    MINIMUM
    MINUS
    MINUSEQ
    MINUSMINUS
    MINUTE
    MINVALUE
    MIN_CHOOSE
    MLINREG
    MLOAD
    MOD
    MODE
    MODIFIED
    MODIFIES
    MODIFY
    MONDAY
    MONITOR
    MONITORQUERYBAND
    MONITORSESSIONRATE
    MONITORVERSION
    MONRESOURCE
    MONSESSION
    MONTH
    MONTHNUMBER_OF_CALENDAR
    MONTHNUMBER_OF_QUARTER
    MONTHNUMBER_OF_YEAR
    MONTHS_BETWEEN
    MONTH_BEGIN
    MONTH_END
    MONTH_OF_CALENDAR
    MONTH_OF_QUARTER
    MONTH_OF_YEAR
    MORE_
    MSUBSTR
    MSUM
    MULTINATIONAL
    MULTIPLE
    MULTISET
    NAME
    NAMED
    NAMESPACE
    NAMING
    NATURAL
    NE
    NEVER
    NEW
    NEW_TABLE
    NEXT
    NEXT_DAY
    NGRAM
    NIL
    NO
    NOCASE
    NODDLTEXT
    NODE
    NONE
    NONOPTCOST
    NONOPTINIT
    NONSEQUENCED
    NONTEMPORAL
    NORIGHT
    NORMALIZE
    NOSEXTRACTVARFROMPATH
    NOT
    NOTATION
    NOTEQ
    NOTEQEQ
    NOW
    NOWAIT
    NPATH
    NTH
    NULL
    NULLIF
    NULLIFZERO
    NULLS
    NULL_HANDLING
    NUMBER
    NUMERIC
    NUMFPFNS
    NUMTODSINTERVAL
    NUMTOYMINTERVAL
    NVL
    NVL2
    NVP
    NVP2JSON
    OA
    OADD_MONTHS
    OBJECT
    OBJECTS
    OBJECT_NAME
    OCOUNT
    OCTET_LENGTH
    ODELETE
    OEXISTS
    OEXTEND
    OF
    OFF
    OFIRST
    OLAST
    OLD
    OLD_NEW_TABLE
    OLD_TABLE
    OLIMIT
    ON
    ONEXT
    ONLINE
    ONLY
    OPEN
    OPRIOR
    OPTION
    OPTIONS
    OR
    ORDER
    ORDERBYVALUES
    ORDERED_ANALYTIC
    ORDERING
    ORDINALITY
    OREPLACE
    OROR
    OTRANSLATE
    OTRIM
    OUT
    OUTER
    OUTPUT
    OVER
    OVERLAPS
    OVERLAYS
    OVERRIDE
    OVERWRITE
    OWNER
    PARAMETER
    PARAMID
    PARAMINFO
    PARENT
    PARTITION
    PARTITIONED
    PARTITIONNAMES
    PARTITION_L
    PASS
    PASSING
    PASSWORD
    PASSWORD_STRING
    PATH
    PATHPATTERN
    PATH_GENERATOR
    PATH_START
    PATH_SUMMARIZER
    PATTERN
    PAYLOAD
    PERCENT
    PERCENTEQ
    PERCENTILE
    PERCENTILE_CONT
    PERCENTILE_DISC
    PERCENT_RANK
    PERIOD
    PERIOD_STRING
    PERM
    PERMANENT
    PHRASE
    PIPE
    PIPEEQ
    PIVOT
    PLUS
    PLUSEQ
    PLUSPLUS
    PORTION
    POSITION
    POWER
    PRECEDES
    PRECEDING
    PRECISION
    PREFIX
    PREPARE
    PRESERVE
    PRIMARY
    PRINT
    PRIOR
    PRIVATE
    PRIVILEGES
    PROCEDURE
    PROC_ID
    PROFILE
    PROTECTED
    PROTECTION
    PUBLIC
    P_INTERSECT
    P_NORMALIZE
    QUALIFIED
    QUALIFY
    QUANTILE
    QUARTERNUMBER_OF_CALENDAR
    QUARTERNUMBER_OF_YEAR
    QUARTER_BEGIN
    QUARTER_END
    QUARTER_OF_CALENDAR
    QUARTER_OF_YEAR
    QUERY
    QUERY_BAND
    QUESTDOT
    QUESTION
    QUESTQUEST
    QUESTQUESTEQ
    QUEUE
    QUOTECHAR
    QUOTES
    RADIANS
    RANDOM
    RANDOMIZED
    RANGE
    RANGE_L
    RANGE_N
    RANK
    RAPIDFIRE
    RBRACE
    RBRACKET
    RDIFF
    READ
    READS
    READ_NOS
    REAL
    RECALC
    RECEIVE
    RECURSIVE
    REFERENCES
    REFERENCING
    REGEXP_INSTR
    REGEXP_REPLACE
    REGEXP_SIMILAR
    REGEXP_SPLIT_TO_TABLE
    REGEXP_SUBSTR
    REGR_AVGX
    REGR_AVGY
    REGR_COUNT
    REGR_INTERCEPT
    REGR_R2
    REGR_SLOPE
    REGR_SXX
    REGR_SXY
    REGR_SYY
    RELATIVE
    RELEASE
    RENAME
    REPEAT
    REPLACE
    REPLACEMENT
    REPLCONTROL
    REPLICATION
    REQUEST
    RESET
    RESIGNAL
    RESPECT
    RESTART
    RESTORE
    RESTRICTWORDS
    RESULT
    RESUME
    RET
    RETAIN
    RETRIEVE
    RETURN
    RETURNED_SQLSTATE
    RETURNING
    RETURNS
    RETURNTYPE
    RETURNTYPES
    REUSE
    REVALIDATE
    REVERSE
    REVOKE
    RIGHT
    RIGHTS
    RLS
    ROLE
    ROLLBACK
    ROLLFORWARD
    ROLLUP
    ROOT
    ROTATELEFT
    ROTATERIGHT
    ROUND
    ROW
    ROWEXPR
    ROWFORMAT
    ROWID
    ROWIDGEN
    ROWIDGEN2
    ROWS
    ROW_COUNT
    ROW_NUMBER
    RPAD
    RPAREN
    RSHIFT
    RSHIFTEQ
    RTRIM
    RU
    RULES
    RULESET
    SAMPLE
    SAMPLEID
    SAMPLES
    SAMPLE_PERC
    SAS
    SATURDAY
    SCHEMA
    SCRIPT
    SCRIPT_COMMAND
    SCROLL
    SEARCHSPACE
    SEARCHUIFDBPATH
    SECOND
    SECURITY
    SEED
    SEL
    SELECT
    SELF
    SEMI
    SEQ
    SEQUENCE
    SEQUENCED
    SERIALIZABLE
    SERVER
    SESSION
    SESSIONIZE
    SET
    SETBIT
    SETRESOURCERATE
    SETRESRATE
    SETS
    SETSESSIONACCOUNT
    SETSESSIONRATE
    SETSESSRATE
    SHARE
    SHIFTLEFT
    SHIFTRIGHT
    SHOW
    SIGN
    SIGNAL
    SIN
    SINGLE
    SINH
    SIZE
    SKEW
    SLASH
    SLASHEQ
    SLASHSLASH
    SLASHSLASHEQ
    SMALLINT
    SNAPPY_COMPRESS
    SNAPPY_DECOMPRESS
    SOME
    SOUNDEX
    SOURCE
    SPARSE
    SPARSEMAPAMPS
    SPARSETABLEAMPS
    SPECCHAR
    SPECIFIC
    SPL
    SPOOL
    SQL
    SQLEXCEPTION
    SQLSTATE
    SQLTABLE
    SQLTEXT
    SQLWARNING
    SQRT
    SQUOTE
    SR
    SS
    STAR
    STAREQ
    STARSTAR
    STARSTAREQ
    START
    STARTUP
    STAT
    STATEMENT
    STATIC
    STATISTICS
    STATS
    STATSUSAGE
    STDDEV_POP
    STDDEV_SAMP
    STEPINFO
    STORAGE
    STORAGE_SIZE
    STOREDAS
    STRING
    STRING_CS
    STRIP
    STRIP_ENCLOSING_CHAR
    STRIP_EXTERIOR_SPACES
    STRTOK
    STRTOK_SPLIT_TO_TABLE
    STYLE
    ST_GEOMETRY
    SUBBITSTR
    SUBCLASS_ORIGIN
    SUBSCRIBER
    SUBSTR
    SUBSTRING
    SUCCEEDS
    SUM
    SUMMARY
    SUMMARYONLY
    SUNDAY
    SUSPEND
    SYMBOLS
    SYSLIB
    SYSTEM
    SYSTEMTEST
    SYSTEM_TIME
    SYSUDTLIB
    TABLE
    TAN
    TANH
    TARGET
    TBL_CS
    TDWMEVENT
    TDWMEXCEPTION
    TDWMHISTORY
    TD_ANYTYPE
    TD_ARRAY2P
    TD_AUTHID
    TD_DATASET
    TD_DAY_OF_CALENDAR
    TD_DAY_OF_MONTH
    TD_DAY_OF_WEEK
    TD_DAY_OF_YEAR
    TD_GENERAL
    TD_GETTIMEBUCKET
    TD_HOST
    TD_INTERNAL
    TD_JSONSHRED
    TD_LZ_COMPRESS
    TD_LZ_DECOMPRESS
    TD_MONTH_OF_CALENDAR
    TD_MONTH_OF_QUARTER
    TD_MONTH_OF_YEAR
    TD_QUARTER_OF_CALENDAR
    TD_QUARTER_OF_YEAR
    TD_ROWLOADID
    TD_ROWREVISION
    TD_ROWSIZE
    TD_SERVER_DB
    TD_SYSFNLIB
    TD_SYSXML
    TD_TIME_BUCKET_NUMBER
    TD_UNPIVOT
    TD_VALIST
    TD_WEEKDAY_OF_MONTH
    TD_WEEK_OF_CALENDAR
    TD_WEEK_OF_MONTH
    TD_WEEK_OF_YEAR
    TD_YEAR_OF_CALENDAR
    TEMPORAL_DATE
    TEMPORAL_TIMESTAMP
    TEMPORARY
    TERMINATE
    THEN
    THRESHOLD
    THRESHOLDPERCENT
    THROUGH
    THURSDAY
    TIES
    TILDE
    TIME
    TIMECODE
    TIMECOLUMN
    TIMEDATEWZCONTROL
    TIMEOUT
    TIMESTAMP
    TIMESTAMPCOLUMN
    TIMESTAMP_STRING
    TIMEZONE_HOUR
    TIMEZONE_MINUTE
    TIME_STRING
    TITLE
    TO
    TOP
    TOTOKEN
    TO_BYTE
    TO_BYTES
    TO_CHAR
    TO_DATE
    TO_DSINTERVAL
    TO_NUMBER
    TO_TIMESTAMP
    TO_TIMESTAMP_TZ
    TO_YMINTERVAL
    TPA
    TRACE
    TRAILING
    TRANSACTION
    TRANSACTIONTIME
    TRANSACTION_ACTIVE
    TRANSFORM
    TRANSLATE
    TRANSLATE_CHK
    TRANSUNICODETOUTF8
    TRANSUTF8TOUNICODE
    TRIGGER
    TRIM
    TRUE
    TRUNC
    TRUNCATE
    TRUST
    TRUSTED
    TRUST_ONLY
    TRYCAST
    TS_COMPRESS
    TS_DECOMPRESS
    TTGRANULARITY
    TUESDAY
    TYPE
    UBJSON
    UC
    UCASE
    UDFSEARCHPATH
    UDT
    UDTCASTAS
    UDTCASTLPAREN
    UDTMETHOD
    UDTTYPE
    UDTUSAGE
    UESCAPE
    UNBOUNDED
    UNCOMMITTED
    UNDEFINED
    UNDERSCORE
    UNDO
    UNICODE
    UNICODE_STRING_LEADING
    UNICODE_TO_LATIN
    UNICODE_TO_LOCALE
    UNION
    UNIQUE
    UNKNOWN
    UNNEST
    UNPIVOT
    UNPIVOT_COLUMN
    UNSIGNED_INTEGER
    UNTIL
    UNTIL_CHANGED
    UNTIL_CLOSED
    UPD
    UPDATE
    UPPER
    UPPERCASE
    URSHIFT
    URSHIFTEQ
    USAGE
    USE
    USECOUNT
    USER
    USING
    UTILITYINFO
    VALIDTIME
    VALUE
    VALUES
    VALUE_COLUMNS
    VARBYTE
    VARCHAR
    VARGRAPHIC
    VARIANT
    VARIANT_TYPE
    VARRAY
    VARYING
    VAR_POP
    VAR_SAMP
    VERBOSE
    VERSION
    VERSIONING
    VIEW
    VOLATILE
    WAIT
    WARNING
    WEDNESDAY
    WEEK
    WEEKDAY_OF_MONTH
    WEEKNUMBER_OF_CALENDAR
    WEEKNUMBER_OF_MONTH
    WEEKNUMBER_OF_QUARTER
    WEEKNUMBER_OF_YEAR
    WEEK_BEGIN
    WEEK_END
    WEEK_OF_CALENDAR
    WEEK_OF_MONTH
    WEEK_OF_YEAR
    WHEN
    WHERE
    WHILE
    WHITESPACE
    WIDTH
    WIDTH_BUCKET
    WINDOWSIZE
    WITH
    WITHIN
    WITHOUT
    WORK
    WORKLOAD
    WRITE
    WRITE_NOS
    XML
    XMLAGG
    XMLATTRIBUTES
    XMLCOMMENT
    XMLCONCAT
    XMLDECLARATION
    XMLDOCUMENT
    XMLELEMENT
    XMLEXTRACT
    XMLFOREST
    XMLNAMESPACES
    XMLPARSE
    XMLPI
    XMLPLAN
    XMLPUBLISH
    XMLPUBLISH_STREAM
    XMLQUERY
    XMLSCHEMA
    XMLSERIALIZE
    XMLSPLIT
    XMLTABLE
    XMLTEXT
    XMLTRANSFORM
    XMLTYPE
    XMLVALIDATE
    YEAR
    YEARNUMBER_OF_CALENDAR
    YEAR_BEGIN
    YEAR_END
    YEAR_OF_CALENDAR
    YIELDSTAR
    ZEROIFNULL
    ZLIB
    ZONE
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
            | white /. skipToken(); ./
            | 'T' 'D' '_' 'S' 'Y' 'S' 'F' 'N' 'L' 'I' 'B' /. makeToken($_TD_SYSFNLIB); ./
            | 'T' 'D' '_' 'S' 'Y' 'S' 'X' 'M' 'L' /. makeToken($_TD_SYSXML); ./
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
