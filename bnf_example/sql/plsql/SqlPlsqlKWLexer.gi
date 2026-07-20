-- Keyword filter for SqlPlsql (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.sql.plsql
%options template=KeywordTemplateF.gi
%options fp=SqlPlsqlKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ABORT
    ABS
    ABSENT
    ACCESS
    ACCESSED
    ACCESSIBLE
    ACCOUNT
    ACL
    ACOS
    ACROSS
    ACTION
    ACTIONS
    ACTIVATE
    ACTIVE
    ACTIVITY
    ADD
    ADMIN
    ADMINISTER
    ADMINISTRATOR
    ADVANCED
    ADVISE
    ADVISOR
    AFTER
    AGENT
    AGGREGATE
    ALGORITHM
    ALIAS
    ALL
    ALLOCATE
    ALLOW
    ALTER
    ALTERNATE
    ALWAYS
    ANALYTIC
    ANALYZE
    ANCESTOR
    ANCILLARY
    AND
    ANNOTATIONS
    ANOMALY
    ANTIJOIN
    ANY
    ANYSCHEMA
    APPEND
    APPENDCHILDXML
    APPLICATION
    APPLY
    ARCHIVAL
    ARCHIVE
    ARCHIVED
    ARCHIVELOG
    ARE
    ARRAY
    AS
    ASC
    ASCII
    ASCIISTR
    ASIN
    ASIS
    ASSEMBLY
    ASSIGN
    ASSOCIATE
    ASYNC
    ASYNCHRONOUS
    AT
    ATAN
    ATTRIBUTE
    ATTRIBUTES
    AUDIT
    AUTHENTICATED
    AUTHENTICATION
    AUTHID
    AUTHORIZATION
    AUTO
    AUTOALLOCATE
    AUTOBACKUP
    AUTOEXTEND
    AUTOMATIC
    AVAILABILITY
    AVG
    AVRO
    A_LETTER
    BACKGROUND
    BACKINGFILE
    BACKUP
    BACKUPS
    BACKUPSET
    BADFILE
    BASIC
    BASICFILE
    BATCH
    BATCHSIZE
    BECOME
    BEFORE
    BEGIN
    BEGINNING
    BEHALF
    BEQUEATH
    BETWEEN
    BFILE
    BFILENAME
    BIG
    BIGFILE
    BIGINT
    BINARY
    BINDING
    BITAND
    BITMAP
    BITMAPS
    BITS
    BLANKS
    BLOB
    BLOCK
    BLOCKCHAIN
    BLOCKS
    BLOCKSIZE
    BODY
    BOOLEAN
    BOTH
    BOUND
    BRANCH
    BREADTH
    BROADCAST
    BSON
    BUFFER
    BUILD
    BULK
    BY
    BYTE
    BYTEORDERMARK
    BYTES
    CACHE
    CACHING
    CALCULATED
    CALL
    CALLBACK
    CANCEL
    CANONICAL
    CAPACITY
    CAPTION
    CARDINALITY
    CASCADE
    CASE
    CASESENSITIVE
    CAST
    CATEGORY
    CEIL
    CERTIFICATE
    CFILE
    CHAINED
    CHANGE
    CHANGETRACKING
    CHAR
    CHARACTER
    CHARACTERS
    CHARACTERSET
    CHARSETFORM
    CHARSETID
    CHARTOROWID
    CHECK
    CHECKPOINT
    CHILD
    CHOOSE
    CHR
    CHUNK
    CLASS
    CLASSIFICATION
    CLASSIFIER
    CLAUSE
    CLEAN
    CLEANUP
    CLEAR
    CLIENT
    CLOB
    CLONE
    CLOSE
    CLUSTER
    CLUSTERING
    COALESCE
    COARSE
    COLD
    COLLATE
    COLLATION
    COLLECT
    COLLECTION
    COLUMN
    COLUMNAR
    COLUMNS
    COMMENT
    COMMIT
    COMMITTED
    COMMON
    COMPACT
    COMPATIBILITY
    COMPATIBLE
    COMPILE
    COMPLETE
    COMPLIANCE
    COMPONENT
    COMPONENTS
    COMPOSE
    COMPOSITE
    COMPOUND
    COMPRESS
    COMPRESSION
    COMPUTATION
    COMPUTE
    CONCAT
    CONCURRENT
    CONDITION
    CONDITIONAL
    CONFIRM
    CONFORMING
    CONNECT
    CONSIDER
    CONSISTENT
    CONST
    CONSTANT
    CONSTRAINT
    CONSTRAINTS
    CONSTRUCTOR
    CONTAINER
    CONTAINERS
    CONTENT
    CONTENTS
    CONTEXT
    CONTINUE
    CONTROLFILE
    CONVERSION
    CONVERT
    COOKIE
    COPY
    CORR
    CORRUPTION
    COS
    COSH
    COST
    COUNT
    COUNTED
    CRASH
    CREATE
    CREATION
    CREDENTIAL
    CRITICAL
    CROSS
    CROSSEDITION
    CSCONVERT
    CSV
    CUBE
    CURRENT
    CURRENTV
    CURSOR
    CUSTOMDATUM
    CV
    CYCLE
    C_LETTER
    DANGLING
    DATA
    DATABASE
    DATAFILE
    DATAFILES
    DATAGUARDCONFIG
    DATAMOVEMENT
    DATAOBJNO
    DATAPUMP
    DATE
    DAY
    DAYS
    DBA
    DBLINK
    DBTIMEZONE
    DDL
    DEALLOCATE
    DEBUG
    DEBUGGER
    DEC
    DECIMAL
    DECLARE
    DECODE
    DECOMPOSE
    DECORRELATE
    DECR
    DECREMENT
    DECRYPT
    DEDUPLICATE
    DEFAULT
    DEFAULTIF
    DEFAULTS
    DEFERRABLE
    DEFERRED
    DEFINE
    DEFINED
    DEFINER
    DEFINITION
    DEGREE
    DELAY
    DELEGATE
    DELETE
    DELETEXML
    DELIMITED
    DEMAND
    DEPENDENT
    DEPRECATE
    DEPTH
    DEQUEUE
    DEREF
    DESC
    DESCRIPTION
    DESTROY
    DETACHED
    DETECTED
    DETERMINES
    DETERMINISTIC
    DICTIONARY
    DIMENSION
    DIMENSIONS
    DIRECTIO
    DIRECTORY
    DISABLE
    DISABLED
    DISALLOW
    DISASSOCIATE
    DISCARD
    DISCARDFILE
    DISCONNECT
    DISK
    DISKGROUP
    DISKS
    DISMOUNT
    DISTINCT
    DISTINGUISHED
    DISTRIBUTE
    DISTRIBUTED
    DML
    DOCFIDELITY
    DOCUMENT
    DOUBLE
    DOWNGRADE
    DROP
    DUMP
    DUMPSET
    DUPLICATE
    DUPLICATED
    DURATION
    DV
    DYNAMIC
    EACH
    EDITION
    EDITIONABLE
    EDITIONING
    EDITIONS
    ELEMENT
    ELSE
    ELSIF
    EM
    EMBEDDED
    EMPTY_
    ENABLE
    ENABLED
    ENCLOSED
    ENCODING
    ENCRYPT
    ENCRYPTION
    ENCRYPTPASSWORDISNULL
    END
    ENDIAN
    ENFORCE
    ENFORCED
    ENQUEUE
    ENTERPRISE
    ENTITYESCAPING
    ENTRY
    EQUIPART
    ERR
    ERROR
    ERRORS
    ESCAPE
    ESCAPED
    ESTIMATE
    EVAL
    EVALNAME
    EVALUATE
    EVALUATION
    EVENTS
    EVERY
    EXCEPT
    EXCEPTION
    EXCEPTIONS
    EXCHANGE
    EXCLUDE
    EXCLUDING
    EXCLUSIVE
    EXECUTE
    EXEMPT
    EXISTING
    EXISTS
    EXISTSNODE
    EXIT
    EXP
    EXPIRE
    EXPLAIN
    EXPLOSION
    EXPORT
    EXPRESS
    EXTEND
    EXTENDED
    EXTENDS
    EXTENT
    EXTENTS
    EXTERNAL
    EXTERNALLY
    EXTRA
    EXTRACT
    EXTRACTCLOBXML
    EXTRACTVALUE
    E_LETTER
    FACILITY
    FACT
    FACTOR
    FAILED
    FAILGROUP
    FAILOVER
    FAILURE
    FALSE
    FAMILY
    FAR
    FAST
    FASTSTART
    FBTSCAN
    FEATURE
    FETCH
    FIELD
    FIELDS
    FILE
    FILEGROUP
    FILESTORE
    FILTER
    FINAL
    FINE
    FINISH
    FIRST
    FIRSTM
    FIXED
    FLAGGER
    FLASHBACK
    FLEX
    FLOAT
    FLOB
    FLOOR
    FLUSH
    FOLDER
    FOLLOWING
    FOLLOWS
    FOR
    FORALL
    FORCE
    FOREIGN
    FOREVER
    FORMAT
    FORWARD
    FREELIST
    FREELISTS
    FREEPOOLS
    FRESH
    FROM
    FTP
    FULL
    FUNCTION
    FUNCTIONS
    GENERATED
    GET
    GLOBAL
    GLOBALLY
    GOTO
    GRANT
    GREATEST
    GROUP
    GROUPING
    GROUPS
    GUARANTEE
    GUARANTEED
    GUARD
    G_LETTER
    HASH
    HASHING
    HASHKEYS
    HAVING
    HEADER
    HEAP
    HELP
    HEXTORAW
    HEXTOREF
    HIDDEN_KEYWORD
    HIDE
    HIERARCHICAL
    HIERARCHIES
    HIERARCHY
    HIGH
    HOT
    HOUR
    HOURS
    HTTP
    HYBRID
    H_LETTER
    ID
    IDENTIFIED
    IDENTIFIER
    IDENTITY
    IDGENERATORS
    IDLE
    IF
    IGNORE
    ILM
    IMMEDIATE
    IMMUTABLE
    IMPACT
    IMPORT
    IN
    INACTIVE
    INCLUDE
    INCLUDING
    INCR
    INCREMENT
    INCREMENTAL
    INDENT
    INDEX
    INDEXED
    INDEXES
    INDEXING
    INDEXTYPE
    INDEXTYPES
    INDICATOR
    INDICES
    INFINITE
    INFORMATIONAL
    INHERIT
    INITCAP
    INITIAL
    INITIALIZED
    INITIALLY
    INITRANS
    INLINE
    INMEMORY
    INNER
    INOUT
    INPLACE
    INPUTFORMAT
    INSERT
    INSERTCHILDXML
    INSERTCHILDXMLAFTER
    INSERTCHILDXMLBEFORE
    INSERTXMLAFTER
    INSERTXMLBEFORE
    INSTANCE
    INSTANCES
    INSTANTIABLE
    INSTANTLY
    INSTEAD
    INSTR
    INSTRB
    INSTRC
    INT
    INTEGER
    INTERLEAVED
    INTERMEDIATE
    INTERNAL
    INTERPRETED
    INTERSECT
    INTERVAL
    INTO
    INVALIDATE
    INVALIDATION
    INVISIBLE
    IS
    ISOLATE
    ISOLATION
    ITEMS
    ITERATE
    JAVA
    JOB
    JOIN
    JSON
    JSONGET
    JSONPARSE
    KEEP
    KERBEROS
    KEY
    KEYS
    KEYSIZE
    KEYSTORE
    KILL
    K_LETTER
    LABEL
    LAG
    LANGUAGE
    LAST
    LATERAL
    LATEST
    LAX
    LAYER
    LDRTRIM
    LEAD
    LEADING
    LEAF
    LEAST
    LEFT
    LENGTH
    LENGTHB
    LENGTHC
    LESS
    LEVEL
    LEVELS
    LIBRARY
    LIFE
    LIFECYCLE
    LIFETIME
    LIKE
    LIKEC
    LIMIT
    LINEAR
    LINES
    LINK
    LIST
    LISTAGG
    LITTLE
    LLS
    LN
    LNNVL
    LOAD
    LOB
    LOBFILE
    LOBNVL
    LOBS
    LOCAL
    LOCALTIME
    LOCALTIMESTAMP
    LOCATION
    LOCATOR
    LOCK
    LOCKDOWN
    LOCKED
    LOCKING
    LOG
    LOGFILE
    LOGFILES
    LOGGING
    LOGICAL
    LOGMINING
    LOGOFF
    LOGON
    LONG
    LOOP
    LOST
    LOW
    LOWER
    LPAD
    LRTRIM
    LTRIM
    MAIN
    MANAGE
    MANAGED
    MANAGEMENT
    MANAGER
    MANDATORY
    MANUAL
    MAP
    MAPPING
    MASK
    MASTER
    MATCH
    MATCHED
    MATCHES
    MATERIALIZE
    MATERIALIZED
    MAX
    MAXARCHLOGS
    MAXDATAFILES
    MAXEXTENTS
    MAXIMIZE
    MAXINSTANCES
    MAXLEN
    MAXLOGFILES
    MAXLOGHISTORY
    MAXLOGMEMBERS
    MAXSIZE
    MAXTRANS
    MAXVALUE
    MEASURE
    MEASURES
    MEDIAN
    MEDIUM
    MEMBER
    MEMCOMPRESS
    MEMOPTIMIZE
    MEMORY
    MERGE
    METADATA
    METHOD
    MIGRATE
    MIGRATION
    MIN
    MINEXTENTS
    MINIMIZE
    MINIMUM
    MINING
    MINUS
    MINUTE
    MINUTES
    MINVALUE
    MIRROR
    MIRRORCOLD
    MIRRORHOT
    MISMATCH
    MISSING
    MLSLABEL
    MOD
    MODE
    MODEL
    MODIFICATION
    MODIFY
    MODULE
    MONITOR
    MONITORING
    MONTH
    MONTHS
    MOUNT
    MOUNTPATH
    MOUNTPOINT
    MOVE
    MOVEMENT
    MULTIDIMENSIONAL
    MULTISET
    M_LETTER
    NAME
    NAMED
    NAMESPACE
    NANVL
    NAN_
    NATIONAL
    NATIVE
    NATURAL
    NATURALN
    NAV
    NCHAR
    NCHR
    NCLOB
    NEEDED
    NEG
    NESTED
    NETWORK
    NEVER
    NEW
    NEWLINE_
    NEXT
    NLSSORT
    NO
    NOAPPEND
    NOARCHIVELOG
    NOAUDIT
    NOBADFILE
    NOCACHE
    NOCHECK
    NOCOMPRESS
    NOCOPY
    NOCYCLE
    NODELAY
    NODIRECTIO
    NODISCARDFILE
    NOENTITYESCAPING
    NOEXTEND
    NOFORCE
    NOGUARANTEE
    NOKEEP
    NOLOCAL
    NOLOG
    NOLOGFILE
    NOLOGGING
    NOMAPPING
    NOMAXVALUE
    NOMINIMIZE
    NOMINVALUE
    NOMONITORING
    NONBLOCKING
    NONE
    NONEDITIONABLE
    NONSCHEMA
    NONULLIF
    NOORDER
    NOOVERRIDE
    NOPARALLEL
    NOPARTITION
    NOPROMPT
    NORELOCATE
    NORELY
    NOREPAIR
    NOREPLAY
    NORESETLOGS
    NOREVERSE
    NOREWRITE
    NORMAL
    NOROWDEPENDENCIES
    NOSCALE
    NOSCHEMACHECK
    NOSEGMENT
    NOSHARD
    NOSORT
    NOSTRICT
    NOSWITCH
    NOT
    NOTHING
    NOTIFICATION
    NOTRIM
    NOVALIDATE
    NOWAIT
    NTILE
    NULLIF
    NULLS
    NULL_
    NUMBER
    NUMERIC
    NUMTODSINTERVAL
    NUMTOYMINTERVAL
    NVL
    OBJECT
    OBJNO
    OCCURENCES
    OF
    OFF
    OFFLINE
    OFFSET
    OID
    OIDINDEX
    OLAP
    OLD
    OLS
    OLTP
    OMIT
    ON
    ONE
    ONLINE
    ONLINELOG
    ONLY
    OPAQUE
    OPCODE
    OPEN
    OPERATIONS
    OPERATOR
    OPTIMAL
    OPTIMIZE
    OPTION
    OPTIONALLY
    OR
    ORADATA
    ORADEBUG
    ORC
    ORDER
    ORDERED
    ORDINALITY
    ORGANIZATION
    OSERROR
    OTHER
    OUT
    OUTER
    OUTLINE
    OUTPUTFORMAT
    OVER
    OVERFLOW_
    OVERLAPS
    OVERRIDE
    OVERRIDING
    OWN
    OWNER
    OWNERSHIP
    PACKAGE
    PACKAGES
    PARALLEL
    PARAM
    PARAMETERFILE
    PARAMETERS
    PARENT
    PARITY
    PARQUET
    PARTIAL
    PARTIALLY
    PARTITION
    PARTITIONS
    PASSING
    PASSWORD
    PAST
    PATCH
    PATH
    PATHS
    PATTERN
    PCTFREE
    PCTINCREASE
    PCTTHRESHOLD
    PCTUSED
    PCTVERSION
    PENDING
    PER
    PERCENT_KEYWORD
    PERFORMANCE
    PERIOD_KEYWORD
    PERMANENT
    PERMISSION
    PERMUTE
    PERSISTABLE
    PFILE
    PHYSICAL
    PIKEY
    PIPE
    PIPELINED
    PIVOT
    PLAN
    PLUGGABLE
    PMEM
    POINT
    POLICY
    POLYMORPHIC
    POSITION
    POSITIVE
    POSITIVEN
    POWER
    POWERMULTISET
    PRAGMA
    PREBUILT
    PRECEDES
    PRECEDING
    PRECISION
    PREDICTION
    PRELOAD
    PREPARE
    PREPROCESSOR
    PRESENT
    PRESENTNNV
    PRESENTV
    PRESERVE
    PRETTY
    PREV
    PREVIOUS
    PRIMARY
    PRINTBLOBTOCLOB
    PRIOR
    PRIORITY
    PRIVATE
    PRIVILEGE
    PRIVILEGED
    PRIVILEGES
    PROCEDURAL
    PROCEDURE
    PROCESS
    PROFILE
    PROGRAM
    PROJECT
    PROPAGATE
    PROPERTY
    PROTECTED
    PROTECTION
    PROTOCOL
    PROXY
    PRUNING
    PUBLIC
    PURGE
    P_LETTER
    QUARTERS
    QUERY
    QUEUE
    QUIESCE
    QUORUM
    QUOTA
    QUOTAGROUP
    RAISE
    RANDOM
    RANGE
    RANK
    RANKM
    RAPIDLY
    RAW
    RAWTOHEX
    RAWTONHEX
    RBA
    RCFILE
    RDBA
    READ
    READS
    READSIZE
    REAL
    REALM
    REBALANCE
    REBUILD
    RECORD
    RECORDS
    RECOVER
    RECOVERABLE
    RECOVERY
    RECYCLE
    RECYCLEBIN
    REDACTION
    REDEFINE
    REDO
    REDUCED
    REDUNDANCY
    REF
    REFERENCE
    REFERENCED
    REFERENCES
    REFERENCING
    REFRESH
    REFTOHEX
    REGISTER
    REGULAR
    REJECT
    REKEY
    RELATIONAL
    RELOCATE
    RELY
    REMAINDER
    REMOTE
    REMOVE
    RENAME
    REPAIR
    REPEAT
    REPLACE
    REPLICATION
    REQUIRED
    RESET
    RESETLOGS
    RESIZE
    RESOLVE
    RESOLVER
    RESOURCE
    RESPECT
    RESTART
    RESTORE
    RESTRICT
    RESTRICTED
    RESULT
    RESUMABLE
    RESUME
    RETENTION
    RETURN
    RETURNING
    REUSE
    REVERSE
    REVOKE
    REWRITE
    RIGHT
    ROLE
    ROLES
    ROLESET
    ROLLBACK
    ROLLING
    ROLLUP
    ROOT
    ROUND
    ROW
    ROWDEPENDENCIES
    ROWID
    ROWIDTOCHAR
    ROWIDTONCHAR
    ROWNUM
    ROWS
    RPAD
    RTRIM
    RULE
    RULES
    RUNNING
    SALT
    SAMPLE
    SAVE
    SAVEPOINT
    SCALE
    SCAN
    SCHEDULER
    SCHEMA
    SCHEMACHECK
    SCN
    SCOPE
    SCRUB
    SEARCH
    SECOND
    SECONDS
    SECRET
    SECUREFILE
    SECURITY
    SEED
    SEGMENT
    SELECT
    SELECTIVITY
    SELF
    SEMIJOIN
    SEQ
    SEQUENCE
    SEQUENCED
    SEQUENCEFILE
    SEQUENTIAL
    SERDE
    SERDEPROPERTIES
    SERIAL
    SERIALIZABLE
    SERVERERROR
    SERVICE
    SERVICES
    SESSION
    SESSIONTIMEZONE
    SESSIONTZNAME
    SET
    SETS
    SETTINGS
    SEVERE
    SHARD
    SHARDED
    SHARDSPACE
    SHARE
    SHARED
    SHARING
    SHELFLIFE
    SHOW
    SHRINK
    SHUTDOWN
    SIBLINGS
    SID
    SIGN
    SIGNTYPE
    SIMPLE
    SIN
    SINGLE
    SINGLETASK
    SINH
    SITE
    SIZE
    SIZES
    SKIP_
    SMALLFILE
    SMALLINT
    SNAPSHOT
    SOME
    SORT
    SOUNDEX
    SOURCE
    SPACE_KEYWORD
    SPECIFICATION
    SPFILE
    SPLIT
    SPREADSHEET
    SQL
    SQLDATA
    SQLERROR
    SQLLDR
    SQRT
    STALE
    STANDALONE
    STANDARD
    STANDBY
    STANDBYS
    STAR
    START
    STARTOF
    STARTUP
    STATE
    STATEMENT
    STATEMENTS
    STATIC
    STATISTICS
    STDDEV
    STOP
    STORAGE
    STORE
    STREAM
    STREAMS
    STRICT
    STRING
    STRIP
    STRUCT
    STRUCTURE
    SUBMULTISET
    SUBPARTITION
    SUBPARTITIONS
    SUBQUERIES
    SUBSCRIBE
    SUBSET
    SUBSTITUTABLE
    SUBSTR
    SUBSTRB
    SUBSTRC
    SUBTYPE
    SUCCESS
    SUCCESSFUL
    SUM
    SUMMARY
    SUPPLEMENTAL
    SUSPEND
    SWITCH
    SWITCHOVER
    SYNC
    SYNCHRONOUS
    SYNONYM
    SYS
    SYSASM
    SYSAUX
    SYSBACKUP
    SYSDATE
    SYSDBA
    SYSDG
    SYSGUID
    SYSKM
    SYSOBJ
    SYSOPER
    SYSTEM
    SYSTIMESTAMP
    TABLE
    TABLES
    TABLESPACE
    TABNO
    TAG
    TAN
    TANH
    TDO
    TEMPFILE
    TEMPLATE
    TEMPORARY
    TERMINATED
    TEST
    TEXT
    TEXTFILE
    THAN
    THE
    THEN
    THESE
    THREAD
    THROUGH
    TIER
    TIES
    TIME
    TIMEOUT
    TIMES
    TIMESTAMP
    TIMEZONE
    TIMING
    TINYINT
    TO
    TOPLEVEL
    TRACE
    TRACING
    TRACKING
    TRAILING
    TRANSACTION
    TRANSFORM
    TRANSFORMS
    TRANSITION
    TRANSITIONAL
    TRANSLATE
    TRANSLATION
    TREAT
    TRIGGER
    TRIGGERS
    TRIM
    TRUE
    TRUNC
    TRUNCATE
    TRUST
    TRUSTED
    TUNING
    TX
    TYPE
    TYPES
    T_LETTER
    UBA
    UDF
    UID
    UNARCHIVED
    UNBOUND
    UNBOUNDED
    UNCONDITIONAL
    UNDER
    UNDO
    UNDROP
    UNIFORM
    UNION
    UNIONTYPE
    UNIQUE
    UNISTR
    UNITE
    UNLIMITED
    UNLOAD
    UNLOCK
    UNMATCHED
    UNNEST
    UNPACKED
    UNPIVOT
    UNPLUG
    UNPROTECTED
    UNQUIESCE
    UNRECOVERABLE
    UNRESTRICTED
    UNSIGNED
    UNSUBSCRIBE
    UNTIL
    UNUSABLE
    UNUSED
    UPDATABLE
    UPDATE
    UPDATED
    UPDATEXML
    UPGRADE
    UPPER
    UPSERT
    UROWID
    USABLE
    USAGE
    USE
    USER
    USERENV
    USERGROUP
    USERS
    USING
    VALIDATE
    VALIDATION
    VALUE
    VALUES
    VARCHAR
    VARCHARC
    VARIABLE
    VARIANCE
    VARRAW
    VARRAWC
    VARRAY
    VARRAYS
    VARYING
    VERIFIER
    VERIFY
    VERSION
    VERSIONING
    VERSIONS
    VIEW
    VIOLATION
    VIRTUAL
    VISIBILITY
    VISIBLE
    VOLUME
    VSIZE
    WAIT
    WALLET
    WARNING
    WEEK
    WEEKS
    WELLFORMED
    WHEN
    WHENEVER
    WHERE
    WHILE
    WHITESPACE
    WITH
    WITHIN
    WITHOUT
    WORK
    WORKERID
    WRAPPED
    WRAPPER
    WRITE
    XDB
    XID
    XML
    XMLAGG
    XMLATTRIBUTES
    XMLCAST
    XMLCDATA
    XMLCOLATTVAL
    XMLCOMMENT
    XMLCONCAT
    XMLDIFF
    XMLELEMENT
    XMLEXISTS
    XMLFOREST
    XMLINDEX
    XMLISNODE
    XMLISVALID
    XMLNAMESPACES
    XMLPARSE
    XMLPATCH
    XMLPI
    XMLQUERY
    XMLQUERYVAL
    XMLROOT
    XMLSCHEMA
    XMLSERIALIZE
    XMLTABLE
    XMLTAG
    XMLTRANSFORM
    XMLTRANSFORMBLOB
    XMLTYPE
    XPATHTABLE
    XS
    XTRANSPORT
    YEAR
    YEARS
    YES
    ZONE
    ZONED
    ZONEMAP
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= e n c r y p t p a s s w o r d i s n u l l /.$setResult($_ENCRYPTPASSWORDISNULL);./
    Keyword ::= i n s e r t c h i l d x m l b e f o r e /.$setResult($_INSERTCHILDXMLBEFORE);./
    Keyword ::= i n s e r t c h i l d x m l a f t e r /.$setResult($_INSERTCHILDXMLAFTER);./
    Keyword ::= n o r o w d e p e n d e n c i e s /.$setResult($_NOROWDEPENDENCIES);./
    Keyword ::= m u l t i d i m e n s i o n a l /.$setResult($_MULTIDIMENSIONAL);./
    Keyword ::= n o e n t i t y e s c a p i n g /.$setResult($_NOENTITYESCAPING);./
    Keyword ::= x m l t r a n s f o r m b l o b /.$setResult($_XMLTRANSFORMBLOB);./
    Keyword ::= d a t a g u a r d c o n f i g /.$setResult($_DATAGUARDCONFIG);./
    Keyword ::= i n s e r t x m l b e f o r e /.$setResult($_INSERTXMLBEFORE);./
    Keyword ::= n u m t o d s i n t e r v a l /.$setResult($_NUMTODSINTERVAL);./
    Keyword ::= n u m t o y m i n t e r v a l /.$setResult($_NUMTOYMINTERVAL);./
    Keyword ::= p r i n t b l o b t o c l o b /.$setResult($_PRINTBLOBTOCLOB);./
    Keyword ::= r o w d e p e n d e n c i e s /.$setResult($_ROWDEPENDENCIES);./
    Keyword ::= s e r d e p r o p e r t i e s /.$setResult($_SERDEPROPERTIES);./
    Keyword ::= s e s s i o n t i m e z o n e /.$setResult($_SESSIONTIMEZONE);./
    Keyword ::= a p p e n d c h i l d x m l /.$setResult($_APPENDCHILDXML);./
    Keyword ::= a u t h e n t i c a t i o n /.$setResult($_AUTHENTICATION);./
    Keyword ::= c h a n g e t r a c k i n g /.$setResult($_CHANGETRACKING);./
    Keyword ::= c l a s s i f i c a t i o n /.$setResult($_CLASSIFICATION);./
    Keyword ::= e n t i t y e s c a p i n g /.$setResult($_ENTITYESCAPING);./
    Keyword ::= e x t r a c t c l o b x m l /.$setResult($_EXTRACTCLOBXML);./
    Keyword ::= i n s e r t c h i l d x m l /.$setResult($_INSERTCHILDXML);./
    Keyword ::= i n s e r t x m l a f t e r /.$setResult($_INSERTXMLAFTER);./
    Keyword ::= l o c a l t i m e s t a m p /.$setResult($_LOCALTIMESTAMP);./
    Keyword ::= n o n e d i t i o n a b l e /.$setResult($_NONEDITIONABLE);./
    Keyword ::= a d m i n i s t r a t o r /.$setResult($_ADMINISTRATOR);./
    Keyword ::= a u t h e n t i c a t e d /.$setResult($_AUTHENTICATED);./
    Keyword ::= a u t h o r i z a t i o n /.$setResult($_AUTHORIZATION);./
    Keyword ::= b y t e o r d e r m a r k /.$setResult($_BYTEORDERMARK);./
    Keyword ::= c a s e s e n s i t i v e /.$setResult($_CASESENSITIVE);./
    Keyword ::= c o m p a t i b i l i t y /.$setResult($_COMPATIBILITY);./
    Keyword ::= d e t e r m i n i s t i c /.$setResult($_DETERMINISTIC);./
    Keyword ::= d i s t i n g u i s h e d /.$setResult($_DISTINGUISHED);./
    Keyword ::= i n f o r m a t i o n a l /.$setResult($_INFORMATIONAL);./
    Keyword ::= m a x l o g h i s t o r y /.$setResult($_MAXLOGHISTORY);./
    Keyword ::= m a x l o g m e m b e r s /.$setResult($_MAXLOGMEMBERS);./
    Keyword ::= n o d i s c a r d f i l e /.$setResult($_NODISCARDFILE);./
    Keyword ::= n o s c h e m a c h e c k /.$setResult($_NOSCHEMACHECK);./
    Keyword ::= p a r a m e t e r f i l e /.$setResult($_PARAMETERFILE);./
    Keyword ::= p o w e r m u l t i s e t /.$setResult($_POWERMULTISET);./
    Keyword ::= s e s s i o n t z n a m e /.$setResult($_SESSIONTZNAME);./
    Keyword ::= s p e c i f i c a t i o n /.$setResult($_SPECIFICATION);./
    Keyword ::= s u b p a r t i t i o n s /.$setResult($_SUBPARTITIONS);./
    Keyword ::= s u b s t i t u t a b l e /.$setResult($_SUBSTITUTABLE);./
    Keyword ::= u n c o n d i t i o n a l /.$setResult($_UNCONDITIONAL);./
    Keyword ::= u n r e c o v e r a b l e /.$setResult($_UNRECOVERABLE);./
    Keyword ::= x m l a t t r i b u t e s /.$setResult($_XMLATTRIBUTES);./
    Keyword ::= x m l n a m e s p a c e s /.$setResult($_XMLNAMESPACES);./
    Keyword ::= a s y n c h r o n o u s /.$setResult($_ASYNCHRONOUS);./
    Keyword ::= a u t o a l l o c a t e /.$setResult($_AUTOALLOCATE);./
    Keyword ::= a v a i l a b i l i t y /.$setResult($_AVAILABILITY);./
    Keyword ::= c h a r a c t e r s e t /.$setResult($_CHARACTERSET);./
    Keyword ::= c r o s s e d i t i o n /.$setResult($_CROSSEDITION);./
    Keyword ::= d a t a m o v e m e n t /.$setResult($_DATAMOVEMENT);./
    Keyword ::= d i s a s s o c i a t e /.$setResult($_DISASSOCIATE);./
    Keyword ::= e x t r a c t v a l u e /.$setResult($_EXTRACTVALUE);./
    Keyword ::= h i e r a r c h i c a l /.$setResult($_HIERARCHICAL);./
    Keyword ::= i d g e n e r a t o r s /.$setResult($_IDGENERATORS);./
    Keyword ::= i n s t a n t i a b l e /.$setResult($_INSTANTIABLE);./
    Keyword ::= i n t e r m e d i a t e /.$setResult($_INTERMEDIATE);./
    Keyword ::= i n v a l i d a t i o n /.$setResult($_INVALIDATION);./
    Keyword ::= m a t e r i a l i z e d /.$setResult($_MATERIALIZED);./
    Keyword ::= m a x d a t a f i l e s /.$setResult($_MAXDATAFILES);./
    Keyword ::= m a x i n s t a n c e s /.$setResult($_MAXINSTANCES);./
    Keyword ::= m o d i f i c a t i o n /.$setResult($_MODIFICATION);./
    Keyword ::= n o a r c h i v e l o g /.$setResult($_NOARCHIVELOG);./
    Keyword ::= n o m o n i t o r i n g /.$setResult($_NOMONITORING);./
    Keyword ::= n o t i f i c a t i o n /.$setResult($_NOTIFICATION);./
    Keyword ::= o r g a n i z a t i o n /.$setResult($_ORGANIZATION);./
    Keyword ::= o u t p u t f o r m a t /.$setResult($_OUTPUTFORMAT);./
    Keyword ::= p c t t h r e s h o l d /.$setResult($_PCTTHRESHOLD);./
    Keyword ::= p r e p r o c e s s o r /.$setResult($_PREPROCESSOR);./
    Keyword ::= r o w i d t o n c h a r /.$setResult($_ROWIDTONCHAR);./
    Keyword ::= s e q u e n c e f i l e /.$setResult($_SEQUENCEFILE);./
    Keyword ::= s e r i a l i z a b l e /.$setResult($_SERIALIZABLE);./
    Keyword ::= s u b p a r t i t i o n /.$setResult($_SUBPARTITION);./
    Keyword ::= s u p p l e m e n t a l /.$setResult($_SUPPLEMENTAL);./
    Keyword ::= s y s t i m e s t a m p /.$setResult($_SYSTIMESTAMP);./
    Keyword ::= t r a n s i t i o n a l /.$setResult($_TRANSITIONAL);./
    Keyword ::= u n r e s t r i c t e d /.$setResult($_UNRESTRICTED);./
    Keyword ::= x m l c o l a t t v a l /.$setResult($_XMLCOLATTVAL);./
    Keyword ::= x m l s e r i a l i z e /.$setResult($_XMLSERIALIZE);./
    Keyword ::= x m l t r a n s f o r m /.$setResult($_XMLTRANSFORM);./
    Keyword ::= a n n o t a t i o n s /.$setResult($_ANNOTATIONS);./
    Keyword ::= a p p l i c a t i o n /.$setResult($_APPLICATION);./
    Keyword ::= b a c k i n g f i l e /.$setResult($_BACKINGFILE);./
    Keyword ::= c a r d i n a l i t y /.$setResult($_CARDINALITY);./
    Keyword ::= c e r t i f i c a t e /.$setResult($_CERTIFICATE);./
    Keyword ::= c h a r s e t f o r m /.$setResult($_CHARSETFORM);./
    Keyword ::= c h a r t o r o w i d /.$setResult($_CHARTOROWID);./
    Keyword ::= c o m p r e s s i o n /.$setResult($_COMPRESSION);./
    Keyword ::= c o m p u t a t i o n /.$setResult($_COMPUTATION);./
    Keyword ::= c o n d i t i o n a l /.$setResult($_CONDITIONAL);./
    Keyword ::= c o n s t r a i n t s /.$setResult($_CONSTRAINTS);./
    Keyword ::= c o n s t r u c t o r /.$setResult($_CONSTRUCTOR);./
    Keyword ::= c o n t r o l f i l e /.$setResult($_CONTROLFILE);./
    Keyword ::= c u s t o m d a t u m /.$setResult($_CUSTOMDATUM);./
    Keyword ::= d e c o r r e l a t e /.$setResult($_DECORRELATE);./
    Keyword ::= d e d u p l i c a t e /.$setResult($_DEDUPLICATE);./
    Keyword ::= d e s c r i p t i o n /.$setResult($_DESCRIPTION);./
    Keyword ::= d i s c a r d f i l e /.$setResult($_DISCARDFILE);./
    Keyword ::= d i s t r i b u t e d /.$setResult($_DISTRIBUTED);./
    Keyword ::= d o c f i d e l i t y /.$setResult($_DOCFIDELITY);./
    Keyword ::= e d i t i o n a b l e /.$setResult($_EDITIONABLE);./
    Keyword ::= h i e r a r c h i e s /.$setResult($_HIERARCHIES);./
    Keyword ::= i n c r e m e n t a l /.$setResult($_INCREMENTAL);./
    Keyword ::= i n i t i a l i z e d /.$setResult($_INITIALIZED);./
    Keyword ::= i n p u t f o r m a t /.$setResult($_INPUTFORMAT);./
    Keyword ::= i n t e r l e a v e d /.$setResult($_INTERLEAVED);./
    Keyword ::= i n t e r p r e t e d /.$setResult($_INTERPRETED);./
    Keyword ::= m a t e r i a l i z e /.$setResult($_MATERIALIZE);./
    Keyword ::= m a x a r c h l o g s /.$setResult($_MAXARCHLOGS);./
    Keyword ::= m a x l o g f i l e s /.$setResult($_MAXLOGFILES);./
    Keyword ::= m e m c o m p r e s s /.$setResult($_MEMCOMPRESS);./
    Keyword ::= m e m o p t i m i z e /.$setResult($_MEMOPTIMIZE);./
    Keyword ::= n o g u a r a n t e e /.$setResult($_NOGUARANTEE);./
    Keyword ::= n o n b l o c k i n g /.$setResult($_NONBLOCKING);./
    Keyword ::= n o p a r t i t i o n /.$setResult($_NOPARTITION);./
    Keyword ::= n o r e s e t l o g s /.$setResult($_NORESETLOGS);./
    Keyword ::= p c t i n c r e a s e /.$setResult($_PCTINCREASE);./
    Keyword ::= p e r f o r m a n c e /.$setResult($_PERFORMANCE);./
    Keyword ::= p e r s i s t a b l e /.$setResult($_PERSISTABLE);./
    Keyword ::= p o l y m o r p h i c /.$setResult($_POLYMORPHIC);./
    Keyword ::= r e c o v e r a b l e /.$setResult($_RECOVERABLE);./
    Keyword ::= r e f e r e n c i n g /.$setResult($_REFERENCING);./
    Keyword ::= r e p l i c a t i o n /.$setResult($_REPLICATION);./
    Keyword ::= r o w i d t o c h a r /.$setResult($_ROWIDTOCHAR);./
    Keyword ::= s c h e m a c h e c k /.$setResult($_SCHEMACHECK);./
    Keyword ::= s e l e c t i v i t y /.$setResult($_SELECTIVITY);./
    Keyword ::= s e r v e r e r r o r /.$setResult($_SERVERERROR);./
    Keyword ::= s p r e a d s h e e t /.$setResult($_SPREADSHEET);./
    Keyword ::= s u b m u l t i s e t /.$setResult($_SUBMULTISET);./
    Keyword ::= s y n c h r o n o u s /.$setResult($_SYNCHRONOUS);./
    Keyword ::= t r a n s a c t i o n /.$setResult($_TRANSACTION);./
    Keyword ::= t r a n s l a t i o n /.$setResult($_TRANSLATION);./
    Keyword ::= u n p r o t e c t e d /.$setResult($_UNPROTECTED);./
    Keyword ::= u n s u b s c r i b e /.$setResult($_UNSUBSCRIBE);./
    Keyword ::= x m l q u e r y v a l /.$setResult($_XMLQUERYVAL);./
    Keyword ::= a c c e s s i b l e /.$setResult($_ACCESSIBLE);./
    Keyword ::= a d m i n i s t e r /.$setResult($_ADMINISTER);./
    Keyword ::= a r c h i v e l o g /.$setResult($_ARCHIVELOG);./
    Keyword ::= a t t r i b u t e s /.$setResult($_ATTRIBUTES);./
    Keyword ::= a u t o b a c k u p /.$setResult($_AUTOBACKUP);./
    Keyword ::= a u t o e x t e n d /.$setResult($_AUTOEXTEND);./
    Keyword ::= b a c k g r o u n d /.$setResult($_BACKGROUND);./
    Keyword ::= b l o c k c h a i n /.$setResult($_BLOCKCHAIN);./
    Keyword ::= c a l c u l a t e d /.$setResult($_CALCULATED);./
    Keyword ::= c h a r a c t e r s /.$setResult($_CHARACTERS);./
    Keyword ::= c h e c k p o i n t /.$setResult($_CHECKPOINT);./
    Keyword ::= c l a s s i f i e r /.$setResult($_CLASSIFIER);./
    Keyword ::= c l u s t e r i n g /.$setResult($_CLUSTERING);./
    Keyword ::= c o l l e c t i o n /.$setResult($_COLLECTION);./
    Keyword ::= c o m p a t i b l e /.$setResult($_COMPATIBLE);./
    Keyword ::= c o m p l i a n c e /.$setResult($_COMPLIANCE);./
    Keyword ::= c o m p o n e n t s /.$setResult($_COMPONENTS);./
    Keyword ::= c o n c u r r e n t /.$setResult($_CONCURRENT);./
    Keyword ::= c o n f o r m i n g /.$setResult($_CONFORMING);./
    Keyword ::= c o n s i s t e n t /.$setResult($_CONSISTENT);./
    Keyword ::= c o n s t r a i n t /.$setResult($_CONSTRAINT);./
    Keyword ::= c o n t a i n e r s /.$setResult($_CONTAINERS);./
    Keyword ::= c o n v e r s i o n /.$setResult($_CONVERSION);./
    Keyword ::= c o r r u p t i o n /.$setResult($_CORRUPTION);./
    Keyword ::= c r e d e n t i a l /.$setResult($_CREDENTIAL);./
    Keyword ::= d b t i m e z o n e /.$setResult($_DBTIMEZONE);./
    Keyword ::= d e a l l o c a t e /.$setResult($_DEALLOCATE);./
    Keyword ::= d e f e r r a b l e /.$setResult($_DEFERRABLE);./
    Keyword ::= d e f i n i t i o n /.$setResult($_DEFINITION);./
    Keyword ::= d e t e r m i n e s /.$setResult($_DETERMINES);./
    Keyword ::= d i c t i o n a r y /.$setResult($_DICTIONARY);./
    Keyword ::= d i m e n s i o n s /.$setResult($_DIMENSIONS);./
    Keyword ::= d i s c o n n e c t /.$setResult($_DISCONNECT);./
    Keyword ::= d i s t r i b u t e /.$setResult($_DISTRIBUTE);./
    Keyword ::= d u p l i c a t e d /.$setResult($_DUPLICATED);./
    Keyword ::= e d i t i o n i n g /.$setResult($_EDITIONING);./
    Keyword ::= e n c r y p t i o n /.$setResult($_ENCRYPTION);./
    Keyword ::= e n t e r p r i s e /.$setResult($_ENTERPRISE);./
    Keyword ::= e v a l u a t i o n /.$setResult($_EVALUATION);./
    Keyword ::= e x c e p t i o n s /.$setResult($_EXCEPTIONS);./
    Keyword ::= e x i s t s n o d e /.$setResult($_EXISTSNODE);./
    Keyword ::= e x t e r n a l l y /.$setResult($_EXTERNALLY);./
    Keyword ::= g u a r a n t e e d /.$setResult($_GUARANTEED);./
    Keyword ::= i d e n t i f i e d /.$setResult($_IDENTIFIED);./
    Keyword ::= i d e n t i f i e r /.$setResult($_IDENTIFIER);./
    Keyword ::= i n d e x t y p e s /.$setResult($_INDEXTYPES);./
    Keyword ::= i n v a l i d a t e /.$setResult($_INVALIDATE);./
    Keyword ::= m a n a g e m e n t /.$setResult($_MANAGEMENT);./
    Keyword ::= m a x e x t e n t s /.$setResult($_MAXEXTENTS);./
    Keyword ::= m i n e x t e n t s /.$setResult($_MINEXTENTS);./
    Keyword ::= m i r r o r c o l d /.$setResult($_MIRRORCOLD);./
    Keyword ::= m o n i t o r i n g /.$setResult($_MONITORING);./
    Keyword ::= m o u n t p o i n t /.$setResult($_MOUNTPOINT);./
    Keyword ::= n o c o m p r e s s /.$setResult($_NOCOMPRESS);./
    Keyword ::= n o d i r e c t i o /.$setResult($_NODIRECTIO);./
    Keyword ::= n o m a x v a l u e /.$setResult($_NOMAXVALUE);./
    Keyword ::= n o m i n i m i z e /.$setResult($_NOMINIMIZE);./
    Keyword ::= n o m i n v a l u e /.$setResult($_NOMINVALUE);./
    Keyword ::= n o o v e r r i d e /.$setResult($_NOOVERRIDE);./
    Keyword ::= n o p a r a l l e l /.$setResult($_NOPARALLEL);./
    Keyword ::= n o r e l o c a t e /.$setResult($_NORELOCATE);./
    Keyword ::= n o v a l i d a t e /.$setResult($_NOVALIDATE);./
    Keyword ::= o c c u r e n c e s /.$setResult($_OCCURENCES);./
    Keyword ::= o p e r a t i o n s /.$setResult($_OPERATIONS);./
    Keyword ::= o p t i o n a l l y /.$setResult($_OPTIONALLY);./
    Keyword ::= o r d i n a l i t y /.$setResult($_ORDINALITY);./
    Keyword ::= o v e r r i d i n g /.$setResult($_OVERRIDING);./
    Keyword ::= p a r a m e t e r s /.$setResult($_PARAMETERS);./
    Keyword ::= p a r t i t i o n s /.$setResult($_PARTITIONS);./
    Keyword ::= p c t v e r s i o n /.$setResult($_PCTVERSION);./
    Keyword ::= p e r m i s s i o n /.$setResult($_PERMISSION);./
    Keyword ::= p r e d i c t i o n /.$setResult($_PREDICTION);./
    Keyword ::= p r e s e n t n n v /.$setResult($_PRESENTNNV);./
    Keyword ::= p r i v i l e g e d /.$setResult($_PRIVILEGED);./
    Keyword ::= p r i v i l e g e s /.$setResult($_PRIVILEGES);./
    Keyword ::= p r o c e d u r a l /.$setResult($_PROCEDURAL);./
    Keyword ::= p r o t e c t i o n /.$setResult($_PROTECTION);./
    Keyword ::= q u o t a g r o u p /.$setResult($_QUOTAGROUP);./
    Keyword ::= r e c y c l e b i n /.$setResult($_RECYCLEBIN);./
    Keyword ::= r e d u n d a n c y /.$setResult($_REDUNDANCY);./
    Keyword ::= r e f e r e n c e d /.$setResult($_REFERENCED);./
    Keyword ::= r e f e r e n c e s /.$setResult($_REFERENCES);./
    Keyword ::= r e l a t i o n a l /.$setResult($_RELATIONAL);./
    Keyword ::= r e s t r i c t e d /.$setResult($_RESTRICTED);./
    Keyword ::= s e c u r e f i l e /.$setResult($_SECUREFILE);./
    Keyword ::= s e q u e n t i a l /.$setResult($_SEQUENTIAL);./
    Keyword ::= s h a r d s p a c e /.$setResult($_SHARDSPACE);./
    Keyword ::= s i n g l e t a s k /.$setResult($_SINGLETASK);./
    Keyword ::= s t a n d a l o n e /.$setResult($_STANDALONE);./
    Keyword ::= s t a t e m e n t s /.$setResult($_STATEMENTS);./
    Keyword ::= s t a t i s t i c s /.$setResult($_STATISTICS);./
    Keyword ::= s u b q u e r i e s /.$setResult($_SUBQUERIES);./
    Keyword ::= s u c c e s s f u l /.$setResult($_SUCCESSFUL);./
    Keyword ::= s w i t c h o v e r /.$setResult($_SWITCHOVER);./
    Keyword ::= t a b l e s p a c e /.$setResult($_TABLESPACE);./
    Keyword ::= t e r m i n a t e d /.$setResult($_TERMINATED);./
    Keyword ::= t r a n s f o r m s /.$setResult($_TRANSFORMS);./
    Keyword ::= t r a n s i t i o n /.$setResult($_TRANSITION);./
    Keyword ::= u n a r c h i v e d /.$setResult($_UNARCHIVED);./
    Keyword ::= v a l i d a t i o n /.$setResult($_VALIDATION);./
    Keyword ::= v e r s i o n i n g /.$setResult($_VERSIONING);./
    Keyword ::= v i s i b i l i t y /.$setResult($_VISIBILITY);./
    Keyword ::= w e l l f o r m e d /.$setResult($_WELLFORMED);./
    Keyword ::= w h i t e s p a c e /.$setResult($_WHITESPACE);./
    Keyword ::= x m l c o m m e n t /.$setResult($_XMLCOMMENT);./
    Keyword ::= x m l e l e m e n t /.$setResult($_XMLELEMENT);./
    Keyword ::= x m l i s v a l i d /.$setResult($_XMLISVALID);./
    Keyword ::= x p a t h t a b l e /.$setResult($_XPATHTABLE);./
    Keyword ::= x t r a n s p o r t /.$setResult($_XTRANSPORT);./
    Keyword ::= a g g r e g a t e /.$setResult($_AGGREGATE);./
    Keyword ::= a l g o r i t h m /.$setResult($_ALGORITHM);./
    Keyword ::= a l t e r n a t e /.$setResult($_ALTERNATE);./
    Keyword ::= a n c i l l a r y /.$setResult($_ANCILLARY);./
    Keyword ::= a n y s c h e m a /.$setResult($_ANYSCHEMA);./
    Keyword ::= a s s o c i a t e /.$setResult($_ASSOCIATE);./
    Keyword ::= a t t r i b u t e /.$setResult($_ATTRIBUTE);./
    Keyword ::= a u t o m a t i c /.$setResult($_AUTOMATIC);./
    Keyword ::= b a c k u p s e t /.$setResult($_BACKUPSET);./
    Keyword ::= b a s i c f i l e /.$setResult($_BASICFILE);./
    Keyword ::= b a t c h s i z e /.$setResult($_BATCHSIZE);./
    Keyword ::= b e g i n n i n g /.$setResult($_BEGINNING);./
    Keyword ::= b f i l e n a m e /.$setResult($_BFILENAME);./
    Keyword ::= b l o c k s i z e /.$setResult($_BLOCKSIZE);./
    Keyword ::= b r o a d c a s t /.$setResult($_BROADCAST);./
    Keyword ::= c a n o n i c a l /.$setResult($_CANONICAL);./
    Keyword ::= c h a r a c t e r /.$setResult($_CHARACTER);./
    Keyword ::= c h a r s e t i d /.$setResult($_CHARSETID);./
    Keyword ::= c o l l a t i o n /.$setResult($_COLLATION);./
    Keyword ::= c o m m i t t e d /.$setResult($_COMMITTED);./
    Keyword ::= c o m p o n e n t /.$setResult($_COMPONENT);./
    Keyword ::= c o m p o s i t e /.$setResult($_COMPOSITE);./
    Keyword ::= c o n d i t i o n /.$setResult($_CONDITION);./
    Keyword ::= c o n t a i n e r /.$setResult($_CONTAINER);./
    Keyword ::= c s c o n v e r t /.$setResult($_CSCONVERT);./
    Keyword ::= d a t a f i l e s /.$setResult($_DATAFILES);./
    Keyword ::= d a t a o b j n o /.$setResult($_DATAOBJNO);./
    Keyword ::= d e c o m p o s e /.$setResult($_DECOMPOSE);./
    Keyword ::= d e c r e m e n t /.$setResult($_DECREMENT);./
    Keyword ::= d e f a u l t i f /.$setResult($_DEFAULTIF);./
    Keyword ::= d e l e t e x m l /.$setResult($_DELETEXML);./
    Keyword ::= d e l i m i t e d /.$setResult($_DELIMITED);./
    Keyword ::= d e p e n d e n t /.$setResult($_DEPENDENT);./
    Keyword ::= d e p r e c a t e /.$setResult($_DEPRECATE);./
    Keyword ::= d i m e n s i o n /.$setResult($_DIMENSION);./
    Keyword ::= d i r e c t o r y /.$setResult($_DIRECTORY);./
    Keyword ::= d i s k g r o u p /.$setResult($_DISKGROUP);./
    Keyword ::= d o w n g r a d e /.$setResult($_DOWNGRADE);./
    Keyword ::= d u p l i c a t e /.$setResult($_DUPLICATE);./
    Keyword ::= e x c e p t i o n /.$setResult($_EXCEPTION);./
    Keyword ::= e x c l u d i n g /.$setResult($_EXCLUDING);./
    Keyword ::= e x c l u s i v e /.$setResult($_EXCLUSIVE);./
    Keyword ::= e x p l o s i o n /.$setResult($_EXPLOSION);./
    Keyword ::= f a i l g r o u p /.$setResult($_FAILGROUP);./
    Keyword ::= f a s t s t a r t /.$setResult($_FASTSTART);./
    Keyword ::= f i l e g r o u p /.$setResult($_FILEGROUP);./
    Keyword ::= f i l e s t o r e /.$setResult($_FILESTORE);./
    Keyword ::= f l a s h b a c k /.$setResult($_FLASHBACK);./
    Keyword ::= f o l l o w i n g /.$setResult($_FOLLOWING);./
    Keyword ::= f r e e l i s t s /.$setResult($_FREELISTS);./
    Keyword ::= f r e e p o o l s /.$setResult($_FREEPOOLS);./
    Keyword ::= f u n c t i o n s /.$setResult($_FUNCTIONS);./
    Keyword ::= g e n e r a t e d /.$setResult($_GENERATED);./
    Keyword ::= g u a r a n t e e /.$setResult($_GUARANTEE);./
    Keyword ::= h i e r a r c h y /.$setResult($_HIERARCHY);./
    Keyword ::= i m m e d i a t e /.$setResult($_IMMEDIATE);./
    Keyword ::= i m m u t a b l e /.$setResult($_IMMUTABLE);./
    Keyword ::= i n c l u d i n g /.$setResult($_INCLUDING);./
    Keyword ::= i n c r e m e n t /.$setResult($_INCREMENT);./
    Keyword ::= i n d e x t y p e /.$setResult($_INDEXTYPE);./
    Keyword ::= i n d i c a t o r /.$setResult($_INDICATOR);./
    Keyword ::= i n i t i a l l y /.$setResult($_INITIALLY);./
    Keyword ::= i n s t a n c e s /.$setResult($_INSTANCES);./
    Keyword ::= i n s t a n t l y /.$setResult($_INSTANTLY);./
    Keyword ::= i n t e r s e c t /.$setResult($_INTERSECT);./
    Keyword ::= i n v i s i b l e /.$setResult($_INVISIBLE);./
    Keyword ::= i s o l a t i o n /.$setResult($_ISOLATION);./
    Keyword ::= j s o n p a r s e /.$setResult($_JSONPARSE);./
    Keyword ::= l i f e c y c l e /.$setResult($_LIFECYCLE);./
    Keyword ::= l o c a l t i m e /.$setResult($_LOCALTIME);./
    Keyword ::= l o g m i n i n g /.$setResult($_LOGMINING);./
    Keyword ::= m a n d a t o r y /.$setResult($_MANDATORY);./
    Keyword ::= m i g r a t i o n /.$setResult($_MIGRATION);./
    Keyword ::= m i r r o r h o t /.$setResult($_MIRRORHOT);./
    Keyword ::= m o u n t p a t h /.$setResult($_MOUNTPATH);./
    Keyword ::= n a m e s p a c e /.$setResult($_NAMESPACE);./
    Keyword ::= n o b a d f i l e /.$setResult($_NOBADFILE);./
    Keyword ::= n o l o g f i l e /.$setResult($_NOLOGFILE);./
    Keyword ::= n o l o g g i n g /.$setResult($_NOLOGGING);./
    Keyword ::= n o m a p p i n g /.$setResult($_NOMAPPING);./
    Keyword ::= n o n s c h e m a /.$setResult($_NONSCHEMA);./
    Keyword ::= n o r e v e r s e /.$setResult($_NOREVERSE);./
    Keyword ::= n o r e w r i t e /.$setResult($_NOREWRITE);./
    Keyword ::= n o s e g m e n t /.$setResult($_NOSEGMENT);./
    Keyword ::= o n l i n e l o g /.$setResult($_ONLINELOG);./
    Keyword ::= o w n e r s h i p /.$setResult($_OWNERSHIP);./
    Keyword ::= p a r t i a l l y /.$setResult($_PARTIALLY);./
    Keyword ::= p a r t i t i o n /.$setResult($_PARTITION);./
    Keyword ::= p e r m a n e n t /.$setResult($_PERMANENT);./
    Keyword ::= p i p e l i n e d /.$setResult($_PIPELINED);./
    Keyword ::= p l u g g a b l e /.$setResult($_PLUGGABLE);./
    Keyword ::= p o s i t i v e n /.$setResult($_POSITIVEN);./
    Keyword ::= p r e c e d i n g /.$setResult($_PRECEDING);./
    Keyword ::= p r e c i s i o n /.$setResult($_PRECISION);./
    Keyword ::= p r i v i l e g e /.$setResult($_PRIVILEGE);./
    Keyword ::= p r o c e d u r e /.$setResult($_PROCEDURE);./
    Keyword ::= p r o p a g a t e /.$setResult($_PROPAGATE);./
    Keyword ::= p r o t e c t e d /.$setResult($_PROTECTED);./
    Keyword ::= r a w t o n h e x /.$setResult($_RAWTONHEX);./
    Keyword ::= r e b a l a n c e /.$setResult($_REBALANCE);./
    Keyword ::= r e d a c t i o n /.$setResult($_REDACTION);./
    Keyword ::= r e f e r e n c e /.$setResult($_REFERENCE);./
    Keyword ::= r e m a i n d e r /.$setResult($_REMAINDER);./
    Keyword ::= r e s e t l o g s /.$setResult($_RESETLOGS);./
    Keyword ::= r e s u m a b l e /.$setResult($_RESUMABLE);./
    Keyword ::= r e t e n t i o n /.$setResult($_RETENTION);./
    Keyword ::= r e t u r n i n g /.$setResult($_RETURNING);./
    Keyword ::= s a v e p o i n t /.$setResult($_SAVEPOINT);./
    Keyword ::= s c h e d u l e r /.$setResult($_SCHEDULER);./
    Keyword ::= s e q u e n c e d /.$setResult($_SEQUENCED);./
    Keyword ::= s h e l f l i f e /.$setResult($_SHELFLIFE);./
    Keyword ::= s m a l l f i l e /.$setResult($_SMALLFILE);./
    Keyword ::= s t a t e m e n t /.$setResult($_STATEMENT);./
    Keyword ::= s t r u c t u r e /.$setResult($_STRUCTURE);./
    Keyword ::= s u b s c r i b e /.$setResult($_SUBSCRIBE);./
    Keyword ::= s y s b a c k u p /.$setResult($_SYSBACKUP);./
    Keyword ::= t e m p o r a r y /.$setResult($_TEMPORARY);./
    Keyword ::= t i m e s t a m p /.$setResult($_TIMESTAMP);./
    Keyword ::= t r a n s f o r m /.$setResult($_TRANSFORM);./
    Keyword ::= t r a n s l a t e /.$setResult($_TRANSLATE);./
    Keyword ::= u n b o u n d e d /.$setResult($_UNBOUNDED);./
    Keyword ::= u n i o n t y p e /.$setResult($_UNIONTYPE);./
    Keyword ::= u n l i m i t e d /.$setResult($_UNLIMITED);./
    Keyword ::= u n m a t c h e d /.$setResult($_UNMATCHED);./
    Keyword ::= u n q u i e s c e /.$setResult($_UNQUIESCE);./
    Keyword ::= u p d a t a b l e /.$setResult($_UPDATABLE);./
    Keyword ::= u p d a t e x m l /.$setResult($_UPDATEXML);./
    Keyword ::= u s e r g r o u p /.$setResult($_USERGROUP);./
    Keyword ::= v i o l a t i o n /.$setResult($_VIOLATION);./
    Keyword ::= x m l c o n c a t /.$setResult($_XMLCONCAT);./
    Keyword ::= x m l e x i s t s /.$setResult($_XMLEXISTS);./
    Keyword ::= x m l f o r e s t /.$setResult($_XMLFOREST);./
    Keyword ::= x m l i s n o d e /.$setResult($_XMLISNODE);./
    Keyword ::= x m l s c h e m a /.$setResult($_XMLSCHEMA);./
    Keyword ::= a c c e s s e d /.$setResult($_ACCESSED);./
    Keyword ::= a c t i v a t e /.$setResult($_ACTIVATE);./
    Keyword ::= a c t i v i t y /.$setResult($_ACTIVITY);./
    Keyword ::= a d v a n c e d /.$setResult($_ADVANCED);./
    Keyword ::= a l l o c a t e /.$setResult($_ALLOCATE);./
    Keyword ::= a n a l y t i c /.$setResult($_ANALYTIC);./
    Keyword ::= a n c e s t o r /.$setResult($_ANCESTOR);./
    Keyword ::= a n t i j o i n /.$setResult($_ANTIJOIN);./
    Keyword ::= a r c h i v a l /.$setResult($_ARCHIVAL);./
    Keyword ::= a r c h i v e d /.$setResult($_ARCHIVED);./
    Keyword ::= a s c i i s t r /.$setResult($_ASCIISTR);./
    Keyword ::= a s s e m b l y /.$setResult($_ASSEMBLY);./
    Keyword ::= b e q u e a t h /.$setResult($_BEQUEATH);./
    Keyword ::= c a l l b a c k /.$setResult($_CALLBACK);./
    Keyword ::= c a p a c i t y /.$setResult($_CAPACITY);./
    Keyword ::= c a t e g o r y /.$setResult($_CATEGORY);./
    Keyword ::= c o a l e s c e /.$setResult($_COALESCE);./
    Keyword ::= c o l u m n a r /.$setResult($_COLUMNAR);./
    Keyword ::= c o m p l e t e /.$setResult($_COMPLETE);./
    Keyword ::= c o m p o u n d /.$setResult($_COMPOUND);./
    Keyword ::= c o m p r e s s /.$setResult($_COMPRESS);./
    Keyword ::= c o n s i d e r /.$setResult($_CONSIDER);./
    Keyword ::= c o n s t a n t /.$setResult($_CONSTANT);./
    Keyword ::= c o n t e n t s /.$setResult($_CONTENTS);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= c r e a t i o n /.$setResult($_CREATION);./
    Keyword ::= c r i t i c a l /.$setResult($_CRITICAL);./
    Keyword ::= c u r r e n t v /.$setResult($_CURRENTV);./
    Keyword ::= d a n g l i n g /.$setResult($_DANGLING);./
    Keyword ::= d a t a b a s e /.$setResult($_DATABASE);./
    Keyword ::= d a t a f i l e /.$setResult($_DATAFILE);./
    Keyword ::= d a t a p u m p /.$setResult($_DATAPUMP);./
    Keyword ::= d e b u g g e r /.$setResult($_DEBUGGER);./
    Keyword ::= d e f a u l t s /.$setResult($_DEFAULTS);./
    Keyword ::= d e f e r r e d /.$setResult($_DEFERRED);./
    Keyword ::= d e l e g a t e /.$setResult($_DELEGATE);./
    Keyword ::= d e t a c h e d /.$setResult($_DETACHED);./
    Keyword ::= d e t e c t e d /.$setResult($_DETECTED);./
    Keyword ::= d i r e c t i o /.$setResult($_DIRECTIO);./
    Keyword ::= d i s a b l e d /.$setResult($_DISABLED);./
    Keyword ::= d i s a l l o w /.$setResult($_DISALLOW);./
    Keyword ::= d i s m o u n t /.$setResult($_DISMOUNT);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT);./
    Keyword ::= d o c u m e n t /.$setResult($_DOCUMENT);./
    Keyword ::= d u r a t i o n /.$setResult($_DURATION);./
    Keyword ::= e d i t i o n s /.$setResult($_EDITIONS);./
    Keyword ::= e m b e d d e d /.$setResult($_EMBEDDED);./
    Keyword ::= e n c l o s e d /.$setResult($_ENCLOSED);./
    Keyword ::= e n c o d i n g /.$setResult($_ENCODING);./
    Keyword ::= e n f o r c e d /.$setResult($_ENFORCED);./
    Keyword ::= e q u i p a r t /.$setResult($_EQUIPART);./
    Keyword ::= e s t i m a t e /.$setResult($_ESTIMATE);./
    Keyword ::= e v a l n a m e /.$setResult($_EVALNAME);./
    Keyword ::= e v a l u a t e /.$setResult($_EVALUATE);./
    Keyword ::= e x c h a n g e /.$setResult($_EXCHANGE);./
    Keyword ::= e x i s t i n g /.$setResult($_EXISTING);./
    Keyword ::= e x t e n d e d /.$setResult($_EXTENDED);./
    Keyword ::= e x t e r n a l /.$setResult($_EXTERNAL);./
    Keyword ::= f a c i l i t y /.$setResult($_FACILITY);./
    Keyword ::= f a i l o v e r /.$setResult($_FAILOVER);./
    Keyword ::= f r e e l i s t /.$setResult($_FREELIST);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= g l o b a l l y /.$setResult($_GLOBALLY);./
    Keyword ::= g r e a t e s t /.$setResult($_GREATEST);./
    Keyword ::= g r o u p i n g /.$setResult($_GROUPING);./
    Keyword ::= h a s h k e y s /.$setResult($_HASHKEYS);./
    Keyword ::= h e x t o r a w /.$setResult($_HEXTORAW);./
    Keyword ::= h e x t o r e f /.$setResult($_HEXTOREF);./
    Keyword ::= i d e n t i t y /.$setResult($_IDENTITY);./
    Keyword ::= i n a c t i v e /.$setResult($_INACTIVE);./
    Keyword ::= i n d e x i n g /.$setResult($_INDEXING);./
    Keyword ::= i n f i n i t e /.$setResult($_INFINITE);./
    Keyword ::= i n i t r a n s /.$setResult($_INITRANS);./
    Keyword ::= i n m e m o r y /.$setResult($_INMEMORY);./
    Keyword ::= i n s t a n c e /.$setResult($_INSTANCE);./
    Keyword ::= i n t e r n a l /.$setResult($_INTERNAL);./
    Keyword ::= i n t e r v a l /.$setResult($_INTERVAL);./
    Keyword ::= k e r b e r o s /.$setResult($_KERBEROS);./
    Keyword ::= k e y s t o r e /.$setResult($_KEYSTORE);./
    Keyword ::= l a n g u a g e /.$setResult($_LANGUAGE);./
    Keyword ::= l i f e t i m e /.$setResult($_LIFETIME);./
    Keyword ::= l o c a t i o n /.$setResult($_LOCATION);./
    Keyword ::= l o c k d o w n /.$setResult($_LOCKDOWN);./
    Keyword ::= l o g f i l e s /.$setResult($_LOGFILES);./
    Keyword ::= m a x i m i z e /.$setResult($_MAXIMIZE);./
    Keyword ::= m a x t r a n s /.$setResult($_MAXTRANS);./
    Keyword ::= m a x v a l u e /.$setResult($_MAXVALUE);./
    Keyword ::= m e a s u r e s /.$setResult($_MEASURES);./
    Keyword ::= m e t a d a t a /.$setResult($_METADATA);./
    Keyword ::= m i n i m i z e /.$setResult($_MINIMIZE);./
    Keyword ::= m i n v a l u e /.$setResult($_MINVALUE);./
    Keyword ::= m i s m a t c h /.$setResult($_MISMATCH);./
    Keyword ::= m l s l a b e l /.$setResult($_MLSLABEL);./
    Keyword ::= m o v e m e n t /.$setResult($_MOVEMENT);./
    Keyword ::= m u l t i s e t /.$setResult($_MULTISET);./
    Keyword ::= n a t i o n a l /.$setResult($_NATIONAL);./
    Keyword ::= n a t u r a l n /.$setResult($_NATURALN);./
    Keyword ::= n o a p p e n d /.$setResult($_NOAPPEND);./
    Keyword ::= n o e x t e n d /.$setResult($_NOEXTEND);./
    Keyword ::= n o n u l l i f /.$setResult($_NONULLIF);./
    Keyword ::= n o p r o m p t /.$setResult($_NOPROMPT);./
    Keyword ::= n o r e p a i r /.$setResult($_NOREPAIR);./
    Keyword ::= n o r e p l a y /.$setResult($_NOREPLAY);./
    Keyword ::= n o s t r i c t /.$setResult($_NOSTRICT);./
    Keyword ::= n o s w i t c h /.$setResult($_NOSWITCH);./
    Keyword ::= o i d i n d e x /.$setResult($_OIDINDEX);./
    Keyword ::= o p e r a t o r /.$setResult($_OPERATOR);./
    Keyword ::= o p t i m i z e /.$setResult($_OPTIMIZE);./
    Keyword ::= o r a d e b u g /.$setResult($_ORADEBUG);./
    Keyword ::= o v e r f l o w /.$setResult($_OVERFLOW_);./
    Keyword ::= o v e r l a p s /.$setResult($_OVERLAPS);./
    Keyword ::= o v e r r i d e /.$setResult($_OVERRIDE);./
    Keyword ::= p a c k a g e s /.$setResult($_PACKAGES);./
    Keyword ::= p a r a l l e l /.$setResult($_PARALLEL);./
    Keyword ::= p a s s w o r d /.$setResult($_PASSWORD);./
    Keyword ::= p h y s i c a l /.$setResult($_PHYSICAL);./
    Keyword ::= p o s i t i o n /.$setResult($_POSITION);./
    Keyword ::= p o s i t i v e /.$setResult($_POSITIVE);./
    Keyword ::= p r e b u i l t /.$setResult($_PREBUILT);./
    Keyword ::= p r e c e d e s /.$setResult($_PRECEDES);./
    Keyword ::= p r e s e n t v /.$setResult($_PRESENTV);./
    Keyword ::= p r e s e r v e /.$setResult($_PRESERVE);./
    Keyword ::= p r e v i o u s /.$setResult($_PREVIOUS);./
    Keyword ::= p r i o r i t y /.$setResult($_PRIORITY);./
    Keyword ::= p r o p e r t y /.$setResult($_PROPERTY);./
    Keyword ::= p r o t o c o l /.$setResult($_PROTOCOL);./
    Keyword ::= q u a r t e r s /.$setResult($_QUARTERS);./
    Keyword ::= r a w t o h e x /.$setResult($_RAWTOHEX);./
    Keyword ::= r e a d s i z e /.$setResult($_READSIZE);./
    Keyword ::= r e c o v e r y /.$setResult($_RECOVERY);./
    Keyword ::= r e d e f i n e /.$setResult($_REDEFINE);./
    Keyword ::= r e f t o h e x /.$setResult($_REFTOHEX);./
    Keyword ::= r e g i s t e r /.$setResult($_REGISTER);./
    Keyword ::= r e l o c a t e /.$setResult($_RELOCATE);./
    Keyword ::= r e q u i r e d /.$setResult($_REQUIRED);./
    Keyword ::= r e s o l v e r /.$setResult($_RESOLVER);./
    Keyword ::= r e s o u r c e /.$setResult($_RESOURCE);./
    Keyword ::= r e s t r i c t /.$setResult($_RESTRICT);./
    Keyword ::= r o l l b a c k /.$setResult($_ROLLBACK);./
    Keyword ::= s e c u r i t y /.$setResult($_SECURITY);./
    Keyword ::= s e m i j o i n /.$setResult($_SEMIJOIN);./
    Keyword ::= s e q u e n c e /.$setResult($_SEQUENCE);./
    Keyword ::= s e r v i c e s /.$setResult($_SERVICES);./
    Keyword ::= s e t t i n g s /.$setResult($_SETTINGS);./
    Keyword ::= s h u t d o w n /.$setResult($_SHUTDOWN);./
    Keyword ::= s i b l i n g s /.$setResult($_SIBLINGS);./
    Keyword ::= s i g n t y p e /.$setResult($_SIGNTYPE);./
    Keyword ::= s m a l l i n t /.$setResult($_SMALLINT);./
    Keyword ::= s n a p s h o t /.$setResult($_SNAPSHOT);./
    Keyword ::= s q l e r r o r /.$setResult($_SQLERROR);./
    Keyword ::= s t a n d a r d /.$setResult($_STANDARD);./
    Keyword ::= s t a n d b y s /.$setResult($_STANDBYS);./
    Keyword ::= t e m p f i l e /.$setResult($_TEMPFILE);./
    Keyword ::= t e m p l a t e /.$setResult($_TEMPLATE);./
    Keyword ::= t e x t f i l e /.$setResult($_TEXTFILE);./
    Keyword ::= t i m e z o n e /.$setResult($_TIMEZONE);./
    Keyword ::= t o p l e v e l /.$setResult($_TOPLEVEL);./
    Keyword ::= t r a c k i n g /.$setResult($_TRACKING);./
    Keyword ::= t r a i l i n g /.$setResult($_TRAILING);./
    Keyword ::= t r i g g e r s /.$setResult($_TRIGGERS);./
    Keyword ::= t r u n c a t e /.$setResult($_TRUNCATE);./
    Keyword ::= u n p a c k e d /.$setResult($_UNPACKED);./
    Keyword ::= u n s i g n e d /.$setResult($_UNSIGNED);./
    Keyword ::= u n u s a b l e /.$setResult($_UNUSABLE);./
    Keyword ::= v a l i d a t e /.$setResult($_VALIDATE);./
    Keyword ::= v a r c h a r c /.$setResult($_VARCHARC);./
    Keyword ::= v a r i a b l e /.$setResult($_VARIABLE);./
    Keyword ::= v a r i a n c e /.$setResult($_VARIANCE);./
    Keyword ::= v e r i f i e r /.$setResult($_VERIFIER);./
    Keyword ::= v e r s i o n s /.$setResult($_VERSIONS);./
    Keyword ::= w h e n e v e r /.$setResult($_WHENEVER);./
    Keyword ::= w o r k e r i d /.$setResult($_WORKERID);./
    Keyword ::= x m l c d a t a /.$setResult($_XMLCDATA);./
    Keyword ::= x m l i n d e x /.$setResult($_XMLINDEX);./
    Keyword ::= x m l p a r s e /.$setResult($_XMLPARSE);./
    Keyword ::= x m l p a t c h /.$setResult($_XMLPATCH);./
    Keyword ::= x m l q u e r y /.$setResult($_XMLQUERY);./
    Keyword ::= x m l t a b l e /.$setResult($_XMLTABLE);./
    Keyword ::= a c c o u n t /.$setResult($_ACCOUNT);./
    Keyword ::= a c t i o n s /.$setResult($_ACTIONS);./
    Keyword ::= a d v i s o r /.$setResult($_ADVISOR);./
    Keyword ::= a n a l y z e /.$setResult($_ANALYZE);./
    Keyword ::= a n o m a l y /.$setResult($_ANOMALY);./
    Keyword ::= a r c h i v e /.$setResult($_ARCHIVE);./
    Keyword ::= b a c k u p s /.$setResult($_BACKUPS);./
    Keyword ::= b a d f i l e /.$setResult($_BADFILE);./
    Keyword ::= b e t w e e n /.$setResult($_BETWEEN);./
    Keyword ::= b i g f i l e /.$setResult($_BIGFILE);./
    Keyword ::= b i n d i n g /.$setResult($_BINDING);./
    Keyword ::= b i t m a p s /.$setResult($_BITMAPS);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= b r e a d t h /.$setResult($_BREADTH);./
    Keyword ::= c a c h i n g /.$setResult($_CACHING);./
    Keyword ::= c a p t i o n /.$setResult($_CAPTION);./
    Keyword ::= c a s c a d e /.$setResult($_CASCADE);./
    Keyword ::= c h a i n e d /.$setResult($_CHAINED);./
    Keyword ::= c l e a n u p /.$setResult($_CLEANUP);./
    Keyword ::= c l u s t e r /.$setResult($_CLUSTER);./
    Keyword ::= c o l l a t e /.$setResult($_COLLATE);./
    Keyword ::= c o l l e c t /.$setResult($_COLLECT);./
    Keyword ::= c o l u m n s /.$setResult($_COLUMNS);./
    Keyword ::= c o m m e n t /.$setResult($_COMMENT);./
    Keyword ::= c o m p a c t /.$setResult($_COMPACT);./
    Keyword ::= c o m p i l e /.$setResult($_COMPILE);./
    Keyword ::= c o m p o s e /.$setResult($_COMPOSE);./
    Keyword ::= c o m p u t e /.$setResult($_COMPUTE);./
    Keyword ::= c o n f i r m /.$setResult($_CONFIRM);./
    Keyword ::= c o n n e c t /.$setResult($_CONNECT);./
    Keyword ::= c o n t e n t /.$setResult($_CONTENT);./
    Keyword ::= c o n t e x t /.$setResult($_CONTEXT);./
    Keyword ::= c o n v e r t /.$setResult($_CONVERT);./
    Keyword ::= c o u n t e d /.$setResult($_COUNTED);./
    Keyword ::= c u r r e n t /.$setResult($_CURRENT);./
    Keyword ::= d e c i m a l /.$setResult($_DECIMAL);./
    Keyword ::= d e c l a r e /.$setResult($_DECLARE);./
    Keyword ::= d e c r y p t /.$setResult($_DECRYPT);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= d e f i n e d /.$setResult($_DEFINED);./
    Keyword ::= d e f i n e r /.$setResult($_DEFINER);./
    Keyword ::= d e q u e u e /.$setResult($_DEQUEUE);./
    Keyword ::= d e s t r o y /.$setResult($_DESTROY);./
    Keyword ::= d i s a b l e /.$setResult($_DISABLE);./
    Keyword ::= d i s c a r d /.$setResult($_DISCARD);./
    Keyword ::= d u m p s e t /.$setResult($_DUMPSET);./
    Keyword ::= d y n a m i c /.$setResult($_DYNAMIC);./
    Keyword ::= e d i t i o n /.$setResult($_EDITION);./
    Keyword ::= e l e m e n t /.$setResult($_ELEMENT);./
    Keyword ::= e n a b l e d /.$setResult($_ENABLED);./
    Keyword ::= e n c r y p t /.$setResult($_ENCRYPT);./
    Keyword ::= e n f o r c e /.$setResult($_ENFORCE);./
    Keyword ::= e n q u e u e /.$setResult($_ENQUEUE);./
    Keyword ::= e s c a p e d /.$setResult($_ESCAPED);./
    Keyword ::= e x c l u d e /.$setResult($_EXCLUDE);./
    Keyword ::= e x e c u t e /.$setResult($_EXECUTE);./
    Keyword ::= e x p l a i n /.$setResult($_EXPLAIN);./
    Keyword ::= e x p r e s s /.$setResult($_EXPRESS);./
    Keyword ::= e x t e n d s /.$setResult($_EXTENDS);./
    Keyword ::= e x t e n t s /.$setResult($_EXTENTS);./
    Keyword ::= e x t r a c t /.$setResult($_EXTRACT);./
    Keyword ::= f a i l u r e /.$setResult($_FAILURE);./
    Keyword ::= f b t s c a n /.$setResult($_FBTSCAN);./
    Keyword ::= f e a t u r e /.$setResult($_FEATURE);./
    Keyword ::= f l a g g e r /.$setResult($_FLAGGER);./
    Keyword ::= f o l l o w s /.$setResult($_FOLLOWS);./
    Keyword ::= f o r e i g n /.$setResult($_FOREIGN);./
    Keyword ::= f o r e v e r /.$setResult($_FOREVER);./
    Keyword ::= f o r w a r d /.$setResult($_FORWARD);./
    Keyword ::= h a s h i n g /.$setResult($_HASHING);./
    Keyword ::= i n c l u d e /.$setResult($_INCLUDE);./
    Keyword ::= i n d e x e d /.$setResult($_INDEXED);./
    Keyword ::= i n d e x e s /.$setResult($_INDEXES);./
    Keyword ::= i n d i c e s /.$setResult($_INDICES);./
    Keyword ::= i n h e r i t /.$setResult($_INHERIT);./
    Keyword ::= i n i t c a p /.$setResult($_INITCAP);./
    Keyword ::= i n i t i a l /.$setResult($_INITIAL);./
    Keyword ::= i n p l a c e /.$setResult($_INPLACE);./
    Keyword ::= i n s t e a d /.$setResult($_INSTEAD);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= i s o l a t e /.$setResult($_ISOLATE);./
    Keyword ::= i t e r a t e /.$setResult($_ITERATE);./
    Keyword ::= j s o n g e t /.$setResult($_JSONGET);./
    Keyword ::= k e y s i z e /.$setResult($_KEYSIZE);./
    Keyword ::= l a t e r a l /.$setResult($_LATERAL);./
    Keyword ::= l d r t r i m /.$setResult($_LDRTRIM);./
    Keyword ::= l e a d i n g /.$setResult($_LEADING);./
    Keyword ::= l e n g t h b /.$setResult($_LENGTHB);./
    Keyword ::= l e n g t h c /.$setResult($_LENGTHC);./
    Keyword ::= l i b r a r y /.$setResult($_LIBRARY);./
    Keyword ::= l i s t a g g /.$setResult($_LISTAGG);./
    Keyword ::= l o b f i l e /.$setResult($_LOBFILE);./
    Keyword ::= l o c a t o r /.$setResult($_LOCATOR);./
    Keyword ::= l o c k i n g /.$setResult($_LOCKING);./
    Keyword ::= l o g f i l e /.$setResult($_LOGFILE);./
    Keyword ::= l o g g i n g /.$setResult($_LOGGING);./
    Keyword ::= l o g i c a l /.$setResult($_LOGICAL);./
    Keyword ::= m a n a g e d /.$setResult($_MANAGED);./
    Keyword ::= m a n a g e r /.$setResult($_MANAGER);./
    Keyword ::= m a p p i n g /.$setResult($_MAPPING);./
    Keyword ::= m a t c h e d /.$setResult($_MATCHED);./
    Keyword ::= m a t c h e s /.$setResult($_MATCHES);./
    Keyword ::= m a x s i z e /.$setResult($_MAXSIZE);./
    Keyword ::= m e a s u r e /.$setResult($_MEASURE);./
    Keyword ::= m i g r a t e /.$setResult($_MIGRATE);./
    Keyword ::= m i n i m u m /.$setResult($_MINIMUM);./
    Keyword ::= m i n u t e s /.$setResult($_MINUTES);./
    Keyword ::= m i s s i n g /.$setResult($_MISSING);./
    Keyword ::= m o n i t o r /.$setResult($_MONITOR);./
    Keyword ::= n a t u r a l /.$setResult($_NATURAL);./
    Keyword ::= n e t w o r k /.$setResult($_NETWORK);./
    Keyword ::= n e w l i n e /.$setResult($_NEWLINE_);./
    Keyword ::= n l s s o r t /.$setResult($_NLSSORT);./
    Keyword ::= n o a u d i t /.$setResult($_NOAUDIT);./
    Keyword ::= n o c a c h e /.$setResult($_NOCACHE);./
    Keyword ::= n o c h e c k /.$setResult($_NOCHECK);./
    Keyword ::= n o c y c l e /.$setResult($_NOCYCLE);./
    Keyword ::= n o d e l a y /.$setResult($_NODELAY);./
    Keyword ::= n o f o r c e /.$setResult($_NOFORCE);./
    Keyword ::= n o l o c a l /.$setResult($_NOLOCAL);./
    Keyword ::= n o o r d e r /.$setResult($_NOORDER);./
    Keyword ::= n o s c a l e /.$setResult($_NOSCALE);./
    Keyword ::= n o s h a r d /.$setResult($_NOSHARD);./
    Keyword ::= n o t h i n g /.$setResult($_NOTHING);./
    Keyword ::= n u m e r i c /.$setResult($_NUMERIC);./
    Keyword ::= o f f l i n e /.$setResult($_OFFLINE);./
    Keyword ::= o p t i m a l /.$setResult($_OPTIMAL);./
    Keyword ::= o r a d a t a /.$setResult($_ORADATA);./
    Keyword ::= o r d e r e d /.$setResult($_ORDERED);./
    Keyword ::= o s e r r o r /.$setResult($_OSERROR);./
    Keyword ::= o u t l i n e /.$setResult($_OUTLINE);./
    Keyword ::= p a c k a g e /.$setResult($_PACKAGE);./
    Keyword ::= p a r q u e t /.$setResult($_PARQUET);./
    Keyword ::= p a r t i a l /.$setResult($_PARTIAL);./
    Keyword ::= p a s s i n g /.$setResult($_PASSING);./
    Keyword ::= p a t t e r n /.$setResult($_PATTERN);./
    Keyword ::= p c t f r e e /.$setResult($_PCTFREE);./
    Keyword ::= p c t u s e d /.$setResult($_PCTUSED);./
    Keyword ::= p e n d i n g /.$setResult($_PENDING);./
    Keyword ::= p e r c e n t /.$setResult($_PERCENT_KEYWORD);./
    Keyword ::= p e r m u t e /.$setResult($_PERMUTE);./
    Keyword ::= p r e l o a d /.$setResult($_PRELOAD);./
    Keyword ::= p r e p a r e /.$setResult($_PREPARE);./
    Keyword ::= p r e s e n t /.$setResult($_PRESENT);./
    Keyword ::= p r i m a r y /.$setResult($_PRIMARY);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= p r o c e s s /.$setResult($_PROCESS);./
    Keyword ::= p r o f i l e /.$setResult($_PROFILE);./
    Keyword ::= p r o g r a m /.$setResult($_PROGRAM);./
    Keyword ::= p r o j e c t /.$setResult($_PROJECT);./
    Keyword ::= p r u n i n g /.$setResult($_PRUNING);./
    Keyword ::= q u i e s c e /.$setResult($_QUIESCE);./
    Keyword ::= r a p i d l y /.$setResult($_RAPIDLY);./
    Keyword ::= r e b u i l d /.$setResult($_REBUILD);./
    Keyword ::= r e c o r d s /.$setResult($_RECORDS);./
    Keyword ::= r e c o v e r /.$setResult($_RECOVER);./
    Keyword ::= r e c y c l e /.$setResult($_RECYCLE);./
    Keyword ::= r e d u c e d /.$setResult($_REDUCED);./
    Keyword ::= r e f r e s h /.$setResult($_REFRESH);./
    Keyword ::= r e g u l a r /.$setResult($_REGULAR);./
    Keyword ::= r e p l a c e /.$setResult($_REPLACE);./
    Keyword ::= r e s o l v e /.$setResult($_RESOLVE);./
    Keyword ::= r e s p e c t /.$setResult($_RESPECT);./
    Keyword ::= r e s t a r t /.$setResult($_RESTART);./
    Keyword ::= r e s t o r e /.$setResult($_RESTORE);./
    Keyword ::= r e v e r s e /.$setResult($_REVERSE);./
    Keyword ::= r e w r i t e /.$setResult($_REWRITE);./
    Keyword ::= r o l e s e t /.$setResult($_ROLESET);./
    Keyword ::= r o l l i n g /.$setResult($_ROLLING);./
    Keyword ::= r u n n i n g /.$setResult($_RUNNING);./
    Keyword ::= s e c o n d s /.$setResult($_SECONDS);./
    Keyword ::= s e g m e n t /.$setResult($_SEGMENT);./
    Keyword ::= s e r v i c e /.$setResult($_SERVICE);./
    Keyword ::= s e s s i o n /.$setResult($_SESSION);./
    Keyword ::= s h a r d e d /.$setResult($_SHARDED);./
    Keyword ::= s h a r i n g /.$setResult($_SHARING);./
    Keyword ::= s o u n d e x /.$setResult($_SOUNDEX);./
    Keyword ::= s q l d a t a /.$setResult($_SQLDATA);./
    Keyword ::= s t a n d b y /.$setResult($_STANDBY);./
    Keyword ::= s t a r t o f /.$setResult($_STARTOF);./
    Keyword ::= s t a r t u p /.$setResult($_STARTUP);./
    Keyword ::= s t o r a g e /.$setResult($_STORAGE);./
    Keyword ::= s t r e a m s /.$setResult($_STREAMS);./
    Keyword ::= s u b s t r b /.$setResult($_SUBSTRB);./
    Keyword ::= s u b s t r c /.$setResult($_SUBSTRC);./
    Keyword ::= s u b t y p e /.$setResult($_SUBTYPE);./
    Keyword ::= s u c c e s s /.$setResult($_SUCCESS);./
    Keyword ::= s u m m a r y /.$setResult($_SUMMARY);./
    Keyword ::= s u s p e n d /.$setResult($_SUSPEND);./
    Keyword ::= s y n o n y m /.$setResult($_SYNONYM);./
    Keyword ::= s y s d a t e /.$setResult($_SYSDATE);./
    Keyword ::= s y s g u i d /.$setResult($_SYSGUID);./
    Keyword ::= s y s o p e r /.$setResult($_SYSOPER);./
    Keyword ::= t h r o u g h /.$setResult($_THROUGH);./
    Keyword ::= t i m e o u t /.$setResult($_TIMEOUT);./
    Keyword ::= t i n y i n t /.$setResult($_TINYINT);./
    Keyword ::= t r a c i n g /.$setResult($_TRACING);./
    Keyword ::= t r i g g e r /.$setResult($_TRIGGER);./
    Keyword ::= t r u s t e d /.$setResult($_TRUSTED);./
    Keyword ::= u n b o u n d /.$setResult($_UNBOUND);./
    Keyword ::= u n i f o r m /.$setResult($_UNIFORM);./
    Keyword ::= u n p i v o t /.$setResult($_UNPIVOT);./
    Keyword ::= u p d a t e d /.$setResult($_UPDATED);./
    Keyword ::= u p g r a d e /.$setResult($_UPGRADE);./
    Keyword ::= u s e r e n v /.$setResult($_USERENV);./
    Keyword ::= v a r c h a r /.$setResult($_VARCHAR);./
    Keyword ::= v a r r a w c /.$setResult($_VARRAWC);./
    Keyword ::= v a r r a y s /.$setResult($_VARRAYS);./
    Keyword ::= v a r y i n g /.$setResult($_VARYING);./
    Keyword ::= v e r s i o n /.$setResult($_VERSION);./
    Keyword ::= v i r t u a l /.$setResult($_VIRTUAL);./
    Keyword ::= v i s i b l e /.$setResult($_VISIBLE);./
    Keyword ::= w a r n i n g /.$setResult($_WARNING);./
    Keyword ::= w i t h o u t /.$setResult($_WITHOUT);./
    Keyword ::= w r a p p e d /.$setResult($_WRAPPED);./
    Keyword ::= w r a p p e r /.$setResult($_WRAPPER);./
    Keyword ::= x m l c a s t /.$setResult($_XMLCAST);./
    Keyword ::= x m l d i f f /.$setResult($_XMLDIFF);./
    Keyword ::= x m l r o o t /.$setResult($_XMLROOT);./
    Keyword ::= x m l t y p e /.$setResult($_XMLTYPE);./
    Keyword ::= z o n e m a p /.$setResult($_ZONEMAP);./
    Keyword ::= a b s e n t /.$setResult($_ABSENT);./
    Keyword ::= a c c e s s /.$setResult($_ACCESS);./
    Keyword ::= a c r o s s /.$setResult($_ACROSS);./
    Keyword ::= a c t i o n /.$setResult($_ACTION);./
    Keyword ::= a c t i v e /.$setResult($_ACTIVE);./
    Keyword ::= a d v i s e /.$setResult($_ADVISE);./
    Keyword ::= a l w a y s /.$setResult($_ALWAYS);./
    Keyword ::= a p p e n d /.$setResult($_APPEND);./
    Keyword ::= a s s i g n /.$setResult($_ASSIGN);./
    Keyword ::= a u t h i d /.$setResult($_AUTHID);./
    Keyword ::= b a c k u p /.$setResult($_BACKUP);./
    Keyword ::= b e c o m e /.$setResult($_BECOME);./
    Keyword ::= b e f o r e /.$setResult($_BEFORE);./
    Keyword ::= b e h a l f /.$setResult($_BEHALF);./
    Keyword ::= b i g i n t /.$setResult($_BIGINT);./
    Keyword ::= b i n a r y /.$setResult($_BINARY);./
    Keyword ::= b i t a n d /.$setResult($_BITAND);./
    Keyword ::= b i t m a p /.$setResult($_BITMAP);./
    Keyword ::= b l a n k s /.$setResult($_BLANKS);./
    Keyword ::= b l o c k s /.$setResult($_BLOCKS);./
    Keyword ::= b r a n c h /.$setResult($_BRANCH);./
    Keyword ::= b u f f e r /.$setResult($_BUFFER);./
    Keyword ::= c a n c e l /.$setResult($_CANCEL);./
    Keyword ::= c h a n g e /.$setResult($_CHANGE);./
    Keyword ::= c h o o s e /.$setResult($_CHOOSE);./
    Keyword ::= c l a u s e /.$setResult($_CLAUSE);./
    Keyword ::= c l i e n t /.$setResult($_CLIENT);./
    Keyword ::= c o a r s e /.$setResult($_COARSE);./
    Keyword ::= c o l u m n /.$setResult($_COLUMN);./
    Keyword ::= c o m m i t /.$setResult($_COMMIT);./
    Keyword ::= c o m m o n /.$setResult($_COMMON);./
    Keyword ::= c o n c a t /.$setResult($_CONCAT);./
    Keyword ::= c o o k i e /.$setResult($_COOKIE);./
    Keyword ::= c r e a t e /.$setResult($_CREATE);./
    Keyword ::= c u r s o r /.$setResult($_CURSOR);./
    Keyword ::= d b l i n k /.$setResult($_DBLINK);./
    Keyword ::= d e c o d e /.$setResult($_DECODE);./
    Keyword ::= d e f i n e /.$setResult($_DEFINE);./
    Keyword ::= d e g r e e /.$setResult($_DEGREE);./
    Keyword ::= d e l e t e /.$setResult($_DELETE);./
    Keyword ::= d e m a n d /.$setResult($_DEMAND);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= e n a b l e /.$setResult($_ENABLE);./
    Keyword ::= e n d i a n /.$setResult($_ENDIAN);./
    Keyword ::= e r r o r s /.$setResult($_ERRORS);./
    Keyword ::= e s c a p e /.$setResult($_ESCAPE);./
    Keyword ::= e v e n t s /.$setResult($_EVENTS);./
    Keyword ::= e x c e p t /.$setResult($_EXCEPT);./
    Keyword ::= e x e m p t /.$setResult($_EXEMPT);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS);./
    Keyword ::= e x p i r e /.$setResult($_EXPIRE);./
    Keyword ::= e x p o r t /.$setResult($_EXPORT);./
    Keyword ::= e x t e n d /.$setResult($_EXTEND);./
    Keyword ::= e x t e n t /.$setResult($_EXTENT);./
    Keyword ::= f a c t o r /.$setResult($_FACTOR);./
    Keyword ::= f a i l e d /.$setResult($_FAILED);./
    Keyword ::= f a m i l y /.$setResult($_FAMILY);./
    Keyword ::= f i e l d s /.$setResult($_FIELDS);./
    Keyword ::= f i l t e r /.$setResult($_FILTER);./
    Keyword ::= f i n i s h /.$setResult($_FINISH);./
    Keyword ::= f i r s t m /.$setResult($_FIRSTM);./
    Keyword ::= f o l d e r /.$setResult($_FOLDER);./
    Keyword ::= f o r a l l /.$setResult($_FORALL);./
    Keyword ::= f o r m a t /.$setResult($_FORMAT);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= g r o u p s /.$setResult($_GROUPS);./
    Keyword ::= h a v i n g /.$setResult($_HAVING);./
    Keyword ::= h e a d e r /.$setResult($_HEADER);./
    Keyword ::= h i d d e n /.$setResult($_HIDDEN_KEYWORD);./
    Keyword ::= h y b r i d /.$setResult($_HYBRID);./
    Keyword ::= i g n o r e /.$setResult($_IGNORE);./
    Keyword ::= i m p a c t /.$setResult($_IMPACT);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= i n d e n t /.$setResult($_INDENT);./
    Keyword ::= i n l i n e /.$setResult($_INLINE);./
    Keyword ::= i n s e r t /.$setResult($_INSERT);./
    Keyword ::= i n s t r b /.$setResult($_INSTRB);./
    Keyword ::= i n s t r c /.$setResult($_INSTRC);./
    Keyword ::= l a t e s t /.$setResult($_LATEST);./
    Keyword ::= l e n g t h /.$setResult($_LENGTH);./
    Keyword ::= l e v e l s /.$setResult($_LEVELS);./
    Keyword ::= l i n e a r /.$setResult($_LINEAR);./
    Keyword ::= l i t t l e /.$setResult($_LITTLE);./
    Keyword ::= l o b n v l /.$setResult($_LOBNVL);./
    Keyword ::= l o c k e d /.$setResult($_LOCKED);./
    Keyword ::= l o g o f f /.$setResult($_LOGOFF);./
    Keyword ::= l r t r i m /.$setResult($_LRTRIM);./
    Keyword ::= m a n a g e /.$setResult($_MANAGE);./
    Keyword ::= m a n u a l /.$setResult($_MANUAL);./
    Keyword ::= m a s t e r /.$setResult($_MASTER);./
    Keyword ::= m a x l e n /.$setResult($_MAXLEN);./
    Keyword ::= m e d i a n /.$setResult($_MEDIAN);./
    Keyword ::= m e d i u m /.$setResult($_MEDIUM);./
    Keyword ::= m e m b e r /.$setResult($_MEMBER);./
    Keyword ::= m e m o r y /.$setResult($_MEMORY);./
    Keyword ::= m e t h o d /.$setResult($_METHOD);./
    Keyword ::= m i n i n g /.$setResult($_MINING);./
    Keyword ::= m i n u t e /.$setResult($_MINUTE);./
    Keyword ::= m i r r o r /.$setResult($_MIRROR);./
    Keyword ::= m o d i f y /.$setResult($_MODIFY);./
    Keyword ::= m o d u l e /.$setResult($_MODULE);./
    Keyword ::= m o n t h s /.$setResult($_MONTHS);./
    Keyword ::= n a t i v e /.$setResult($_NATIVE);./
    Keyword ::= n e e d e d /.$setResult($_NEEDED);./
    Keyword ::= n e s t e d /.$setResult($_NESTED);./
    Keyword ::= n o c o p y /.$setResult($_NOCOPY);./
    Keyword ::= n o k e e p /.$setResult($_NOKEEP);./
    Keyword ::= n o r e l y /.$setResult($_NORELY);./
    Keyword ::= n o r m a l /.$setResult($_NORMAL);./
    Keyword ::= n o s o r t /.$setResult($_NOSORT);./
    Keyword ::= n o t r i m /.$setResult($_NOTRIM);./
    Keyword ::= n o w a i t /.$setResult($_NOWAIT);./
    Keyword ::= n u l l i f /.$setResult($_NULLIF);./
    Keyword ::= n u m b e r /.$setResult($_NUMBER);./
    Keyword ::= o b j e c t /.$setResult($_OBJECT);./
    Keyword ::= o f f s e t /.$setResult($_OFFSET);./
    Keyword ::= o n l i n e /.$setResult($_ONLINE);./
    Keyword ::= o p a q u e /.$setResult($_OPAQUE);./
    Keyword ::= o p c o d e /.$setResult($_OPCODE);./
    Keyword ::= o p t i o n /.$setResult($_OPTION);./
    Keyword ::= p a r e n t /.$setResult($_PARENT);./
    Keyword ::= p a r i t y /.$setResult($_PARITY);./
    Keyword ::= p e r i o d /.$setResult($_PERIOD_KEYWORD);./
    Keyword ::= p o l i c y /.$setResult($_POLICY);./
    Keyword ::= p r a g m a /.$setResult($_PRAGMA);./
    Keyword ::= p r e t t y /.$setResult($_PRETTY);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= q u o r u m /.$setResult($_QUORUM);./
    Keyword ::= r a n d o m /.$setResult($_RANDOM);./
    Keyword ::= r c f i l e /.$setResult($_RCFILE);./
    Keyword ::= r e c o r d /.$setResult($_RECORD);./
    Keyword ::= r e j e c t /.$setResult($_REJECT);./
    Keyword ::= r e m o t e /.$setResult($_REMOTE);./
    Keyword ::= r e m o v e /.$setResult($_REMOVE);./
    Keyword ::= r e n a m e /.$setResult($_RENAME);./
    Keyword ::= r e p a i r /.$setResult($_REPAIR);./
    Keyword ::= r e p e a t /.$setResult($_REPEAT);./
    Keyword ::= r e s i z e /.$setResult($_RESIZE);./
    Keyword ::= r e s u l t /.$setResult($_RESULT);./
    Keyword ::= r e s u m e /.$setResult($_RESUME);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= r e v o k e /.$setResult($_REVOKE);./
    Keyword ::= r o l l u p /.$setResult($_ROLLUP);./
    Keyword ::= r o w n u m /.$setResult($_ROWNUM);./
    Keyword ::= s a m p l e /.$setResult($_SAMPLE);./
    Keyword ::= s c h e m a /.$setResult($_SCHEMA);./
    Keyword ::= s e a r c h /.$setResult($_SEARCH);./
    Keyword ::= s e c o n d /.$setResult($_SECOND);./
    Keyword ::= s e c r e t /.$setResult($_SECRET);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s e r i a l /.$setResult($_SERIAL);./
    Keyword ::= s e v e r e /.$setResult($_SEVERE);./
    Keyword ::= s h a r e d /.$setResult($_SHARED);./
    Keyword ::= s h r i n k /.$setResult($_SHRINK);./
    Keyword ::= s i m p l e /.$setResult($_SIMPLE);./
    Keyword ::= s i n g l e /.$setResult($_SINGLE);./
    Keyword ::= s o u r c e /.$setResult($_SOURCE);./
    Keyword ::= s p f i l e /.$setResult($_SPFILE);./
    Keyword ::= s q l l d r /.$setResult($_SQLLDR);./
    Keyword ::= s t a t i c /.$setResult($_STATIC);./
    Keyword ::= s t d d e v /.$setResult($_STDDEV);./
    Keyword ::= s t r e a m /.$setResult($_STREAM);./
    Keyword ::= s t r i c t /.$setResult($_STRICT);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= s t r u c t /.$setResult($_STRUCT);./
    Keyword ::= s u b s e t /.$setResult($_SUBSET);./
    Keyword ::= s u b s t r /.$setResult($_SUBSTR);./
    Keyword ::= s w i t c h /.$setResult($_SWITCH);./
    Keyword ::= s y s a s m /.$setResult($_SYSASM);./
    Keyword ::= s y s a u x /.$setResult($_SYSAUX);./
    Keyword ::= s y s d b a /.$setResult($_SYSDBA);./
    Keyword ::= s y s o b j /.$setResult($_SYSOBJ);./
    Keyword ::= s y s t e m /.$setResult($_SYSTEM);./
    Keyword ::= t a b l e s /.$setResult($_TABLES);./
    Keyword ::= t h r e a d /.$setResult($_THREAD);./
    Keyword ::= t i m i n g /.$setResult($_TIMING);./
    Keyword ::= t u n i n g /.$setResult($_TUNING);./
    Keyword ::= u n d r o p /.$setResult($_UNDROP);./
    Keyword ::= u n i q u e /.$setResult($_UNIQUE);./
    Keyword ::= u n i s t r /.$setResult($_UNISTR);./
    Keyword ::= u n l o a d /.$setResult($_UNLOAD);./
    Keyword ::= u n l o c k /.$setResult($_UNLOCK);./
    Keyword ::= u n n e s t /.$setResult($_UNNEST);./
    Keyword ::= u n p l u g /.$setResult($_UNPLUG);./
    Keyword ::= u n u s e d /.$setResult($_UNUSED);./
    Keyword ::= u p d a t e /.$setResult($_UPDATE);./
    Keyword ::= u p s e r t /.$setResult($_UPSERT);./
    Keyword ::= u r o w i d /.$setResult($_UROWID);./
    Keyword ::= u s a b l e /.$setResult($_USABLE);./
    Keyword ::= v a l u e s /.$setResult($_VALUES);./
    Keyword ::= v a r r a w /.$setResult($_VARRAW);./
    Keyword ::= v a r r a y /.$setResult($_VARRAY);./
    Keyword ::= v e r i f y /.$setResult($_VERIFY);./
    Keyword ::= v o l u m e /.$setResult($_VOLUME);./
    Keyword ::= w a l l e t /.$setResult($_WALLET);./
    Keyword ::= w i t h i n /.$setResult($_WITHIN);./
    Keyword ::= x m l a g g /.$setResult($_XMLAGG);./
    Keyword ::= x m l t a g /.$setResult($_XMLTAG);./
    Keyword ::= a b o r t /.$setResult($_ABORT);./
    Keyword ::= a d m i n /.$setResult($_ADMIN);./
    Keyword ::= a f t e r /.$setResult($_AFTER);./
    Keyword ::= a g e n t /.$setResult($_AGENT);./
    Keyword ::= a l i a s /.$setResult($_ALIAS);./
    Keyword ::= a l l o w /.$setResult($_ALLOW);./
    Keyword ::= a l t e r /.$setResult($_ALTER);./
    Keyword ::= a p p l y /.$setResult($_APPLY);./
    Keyword ::= a r r a y /.$setResult($_ARRAY);./
    Keyword ::= a s c i i /.$setResult($_ASCII);./
    Keyword ::= a s y n c /.$setResult($_ASYNC);./
    Keyword ::= a u d i t /.$setResult($_AUDIT);./
    Keyword ::= b a s i c /.$setResult($_BASIC);./
    Keyword ::= b a t c h /.$setResult($_BATCH);./
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
    Keyword ::= b f i l e /.$setResult($_BFILE);./
    Keyword ::= b l o c k /.$setResult($_BLOCK);./
    Keyword ::= b o u n d /.$setResult($_BOUND);./
    Keyword ::= b u i l d /.$setResult($_BUILD);./
    Keyword ::= b y t e s /.$setResult($_BYTES);./
    Keyword ::= c a c h e /.$setResult($_CACHE);./
    Keyword ::= c f i l e /.$setResult($_CFILE);./
    Keyword ::= c h e c k /.$setResult($_CHECK);./
    Keyword ::= c h i l d /.$setResult($_CHILD);./
    Keyword ::= c h u n k /.$setResult($_CHUNK);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= c l e a n /.$setResult($_CLEAN);./
    Keyword ::= c l e a r /.$setResult($_CLEAR);./
    Keyword ::= c l o n e /.$setResult($_CLONE);./
    Keyword ::= c l o s e /.$setResult($_CLOSE);./
    Keyword ::= c o n s t /.$setResult($_CONST);./
    Keyword ::= c o u n t /.$setResult($_COUNT);./
    Keyword ::= c r a s h /.$setResult($_CRASH);./
    Keyword ::= c r o s s /.$setResult($_CROSS);./
    Keyword ::= c y c l e /.$setResult($_CYCLE);./
    Keyword ::= d e b u g /.$setResult($_DEBUG);./
    Keyword ::= d e l a y /.$setResult($_DELAY);./
    Keyword ::= d e p t h /.$setResult($_DEPTH);./
    Keyword ::= d e r e f /.$setResult($_DEREF);./
    Keyword ::= d i s k s /.$setResult($_DISKS);./
    Keyword ::= e l s i f /.$setResult($_ELSIF);./
    Keyword ::= e m p t y /.$setResult($_EMPTY_);./
    Keyword ::= e n t r y /.$setResult($_ENTRY);./
    Keyword ::= e r r o r /.$setResult($_ERROR);./
    Keyword ::= e v e r y /.$setResult($_EVERY);./
    Keyword ::= e x t r a /.$setResult($_EXTRA);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f e t c h /.$setResult($_FETCH);./
    Keyword ::= f i e l d /.$setResult($_FIELD);./
    Keyword ::= f i n a l /.$setResult($_FINAL);./
    Keyword ::= f i r s t /.$setResult($_FIRST);./
    Keyword ::= f i x e d /.$setResult($_FIXED);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= f l o o r /.$setResult($_FLOOR);./
    Keyword ::= f l u s h /.$setResult($_FLUSH);./
    Keyword ::= f o r c e /.$setResult($_FORCE);./
    Keyword ::= f r e s h /.$setResult($_FRESH);./
    Keyword ::= g r a n t /.$setResult($_GRANT);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= g u a r d /.$setResult($_GUARD);./
    Keyword ::= h o u r s /.$setResult($_HOURS);./
    Keyword ::= i n d e x /.$setResult($_INDEX);./
    Keyword ::= i n n e r /.$setResult($_INNER);./
    Keyword ::= i n o u t /.$setResult($_INOUT);./
    Keyword ::= i n s t r /.$setResult($_INSTR);./
    Keyword ::= i t e m s /.$setResult($_ITEMS);./
    Keyword ::= l a b e l /.$setResult($_LABEL);./
    Keyword ::= l a y e r /.$setResult($_LAYER);./
    Keyword ::= l e a s t /.$setResult($_LEAST);./
    Keyword ::= l e v e l /.$setResult($_LEVEL);./
    Keyword ::= l i k e c /.$setResult($_LIKEC);./
    Keyword ::= l i m i t /.$setResult($_LIMIT);./
    Keyword ::= l i n e s /.$setResult($_LINES);./
    Keyword ::= l n n v l /.$setResult($_LNNVL);./
    Keyword ::= l o c a l /.$setResult($_LOCAL);./
    Keyword ::= l o g o n /.$setResult($_LOGON);./
    Keyword ::= l o w e r /.$setResult($_LOWER);./
    Keyword ::= l t r i m /.$setResult($_LTRIM);./
    Keyword ::= m a t c h /.$setResult($_MATCH);./
    Keyword ::= m e r g e /.$setResult($_MERGE);./
    Keyword ::= m i n u s /.$setResult($_MINUS);./
    Keyword ::= m o d e l /.$setResult($_MODEL);./
    Keyword ::= m o n t h /.$setResult($_MONTH);./
    Keyword ::= m o u n t /.$setResult($_MOUNT);./
    Keyword ::= n a m e d /.$setResult($_NAMED);./
    Keyword ::= n a n v l /.$setResult($_NANVL);./
    Keyword ::= n c h a r /.$setResult($_NCHAR);./
    Keyword ::= n c l o b /.$setResult($_NCLOB);./
    Keyword ::= n e v e r /.$setResult($_NEVER);./
    Keyword ::= n o l o g /.$setResult($_NOLOG);./
    Keyword ::= n t i l e /.$setResult($_NTILE);./
    Keyword ::= n u l l s /.$setResult($_NULLS);./
    Keyword ::= o b j n o /.$setResult($_OBJNO);./
    Keyword ::= o r d e r /.$setResult($_ORDER);./
    Keyword ::= o t h e r /.$setResult($_OTHER);./
    Keyword ::= o u t e r /.$setResult($_OUTER);./
    Keyword ::= o w n e r /.$setResult($_OWNER);./
    Keyword ::= p a r a m /.$setResult($_PARAM);./
    Keyword ::= p a t c h /.$setResult($_PATCH);./
    Keyword ::= p a t h s /.$setResult($_PATHS);./
    Keyword ::= p f i l e /.$setResult($_PFILE);./
    Keyword ::= p i k e y /.$setResult($_PIKEY);./
    Keyword ::= p i v o t /.$setResult($_PIVOT);./
    Keyword ::= p o i n t /.$setResult($_POINT);./
    Keyword ::= p o w e r /.$setResult($_POWER);./
    Keyword ::= p r i o r /.$setResult($_PRIOR);./
    Keyword ::= p r o x y /.$setResult($_PROXY);./
    Keyword ::= p u r g e /.$setResult($_PURGE);./
    Keyword ::= q u e r y /.$setResult($_QUERY);./
    Keyword ::= q u e u e /.$setResult($_QUEUE);./
    Keyword ::= q u o t a /.$setResult($_QUOTA);./
    Keyword ::= r a i s e /.$setResult($_RAISE);./
    Keyword ::= r a n g e /.$setResult($_RANGE);./
    Keyword ::= r a n k m /.$setResult($_RANKM);./
    Keyword ::= r e a d s /.$setResult($_READS);./
    Keyword ::= r e a l m /.$setResult($_REALM);./
    Keyword ::= r e k e y /.$setResult($_REKEY);./
    Keyword ::= r e s e t /.$setResult($_RESET);./
    Keyword ::= r e u s e /.$setResult($_REUSE);./
    Keyword ::= r i g h t /.$setResult($_RIGHT);./
    Keyword ::= r o l e s /.$setResult($_ROLES);./
    Keyword ::= r o u n d /.$setResult($_ROUND);./
    Keyword ::= r o w i d /.$setResult($_ROWID);./
    Keyword ::= r t r i m /.$setResult($_RTRIM);./
    Keyword ::= r u l e s /.$setResult($_RULES);./
    Keyword ::= s c a l e /.$setResult($_SCALE);./
    Keyword ::= s c o p e /.$setResult($_SCOPE);./
    Keyword ::= s c r u b /.$setResult($_SCRUB);./
    Keyword ::= s e r d e /.$setResult($_SERDE);./
    Keyword ::= s h a r d /.$setResult($_SHARD);./
    Keyword ::= s h a r e /.$setResult($_SHARE);./
    Keyword ::= s i z e s /.$setResult($_SIZES);./
    Keyword ::= s p a c e /.$setResult($_SPACE_KEYWORD);./
    Keyword ::= s p l i t /.$setResult($_SPLIT);./
    Keyword ::= s t a l e /.$setResult($_STALE);./
    Keyword ::= s t a r t /.$setResult($_START);./
    Keyword ::= s t a t e /.$setResult($_STATE);./
    Keyword ::= s t o r e /.$setResult($_STORE);./
    Keyword ::= s t r i p /.$setResult($_STRIP);./
    Keyword ::= s y s d g /.$setResult($_SYSDG);./
    Keyword ::= s y s k m /.$setResult($_SYSKM);./
    Keyword ::= t a b l e /.$setResult($_TABLE);./
    Keyword ::= t a b n o /.$setResult($_TABNO);./
    Keyword ::= t h e s e /.$setResult($_THESE);./
    Keyword ::= t i m e s /.$setResult($_TIMES);./
    Keyword ::= t r a c e /.$setResult($_TRACE);./
    Keyword ::= t r e a t /.$setResult($_TREAT);./
    Keyword ::= t r u n c /.$setResult($_TRUNC);./
    Keyword ::= t r u s t /.$setResult($_TRUST);./
    Keyword ::= t y p e s /.$setResult($_TYPES);./
    Keyword ::= u n d e r /.$setResult($_UNDER);./
    Keyword ::= u n i o n /.$setResult($_UNION);./
    Keyword ::= u n i t e /.$setResult($_UNITE);./
    Keyword ::= u n t i l /.$setResult($_UNTIL);./
    Keyword ::= u p p e r /.$setResult($_UPPER);./
    Keyword ::= u s a g e /.$setResult($_USAGE);./
    Keyword ::= u s e r s /.$setResult($_USERS);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= v a l u e /.$setResult($_VALUE);./
    Keyword ::= v s i z e /.$setResult($_VSIZE);./
    Keyword ::= w e e k s /.$setResult($_WEEKS);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= w r i t e /.$setResult($_WRITE);./
    Keyword ::= x m l p i /.$setResult($_XMLPI);./
    Keyword ::= y e a r s /.$setResult($_YEARS);./
    Keyword ::= z o n e d /.$setResult($_ZONED);./
    Keyword ::= a c o s /.$setResult($_ACOS);./
    Keyword ::= a s i n /.$setResult($_ASIN);./
    Keyword ::= a s i s /.$setResult($_ASIS);./
    Keyword ::= a t a n /.$setResult($_ATAN);./
    Keyword ::= a u t o /.$setResult($_AUTO);./
    Keyword ::= a v r o /.$setResult($_AVRO);./
    Keyword ::= b i t s /.$setResult($_BITS);./
    Keyword ::= b l o b /.$setResult($_BLOB);./
    Keyword ::= b o d y /.$setResult($_BODY);./
    Keyword ::= b o t h /.$setResult($_BOTH);./
    Keyword ::= b s o n /.$setResult($_BSON);./
    Keyword ::= b u l k /.$setResult($_BULK);./
    Keyword ::= b y t e /.$setResult($_BYTE);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c a s t /.$setResult($_CAST);./
    Keyword ::= c e i l /.$setResult($_CEIL);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= c l o b /.$setResult($_CLOB);./
    Keyword ::= c o l d /.$setResult($_COLD);./
    Keyword ::= c o p y /.$setResult($_COPY);./
    Keyword ::= c o r r /.$setResult($_CORR);./
    Keyword ::= c o s h /.$setResult($_COSH);./
    Keyword ::= c o s t /.$setResult($_COST);./
    Keyword ::= c u b e /.$setResult($_CUBE);./
    Keyword ::= d a t a /.$setResult($_DATA);./
    Keyword ::= d a t e /.$setResult($_DATE);./
    Keyword ::= d a y s /.$setResult($_DAYS);./
    Keyword ::= d e c r /.$setResult($_DECR);./
    Keyword ::= d e s c /.$setResult($_DESC);./
    Keyword ::= d i s k /.$setResult($_DISK);./
    Keyword ::= d r o p /.$setResult($_DROP);./
    Keyword ::= d u m p /.$setResult($_DUMP);./
    Keyword ::= e a c h /.$setResult($_EACH);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e v a l /.$setResult($_EVAL);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= f a c t /.$setResult($_FACT);./
    Keyword ::= f a s t /.$setResult($_FAST);./
    Keyword ::= f i l e /.$setResult($_FILE);./
    Keyword ::= f i n e /.$setResult($_FINE);./
    Keyword ::= f l e x /.$setResult($_FLEX);./
    Keyword ::= f l o b /.$setResult($_FLOB);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= f u l l /.$setResult($_FULL);./
    Keyword ::= g o t o /.$setResult($_GOTO);./
    Keyword ::= h a s h /.$setResult($_HASH);./
    Keyword ::= h e a p /.$setResult($_HEAP);./
    Keyword ::= h e l p /.$setResult($_HELP);./
    Keyword ::= h i d e /.$setResult($_HIDE);./
    Keyword ::= h i g h /.$setResult($_HIGH);./
    Keyword ::= h o u r /.$setResult($_HOUR);./
    Keyword ::= h t t p /.$setResult($_HTTP);./
    Keyword ::= i d l e /.$setResult($_IDLE);./
    Keyword ::= i n c r /.$setResult($_INCR);./
    Keyword ::= i n t o /.$setResult($_INTO);./
    Keyword ::= j a v a /.$setResult($_JAVA);./
    Keyword ::= j o i n /.$setResult($_JOIN);./
    Keyword ::= j s o n /.$setResult($_JSON);./
    Keyword ::= k e e p /.$setResult($_KEEP);./
    Keyword ::= k e y s /.$setResult($_KEYS);./
    Keyword ::= k i l l /.$setResult($_KILL);./
    Keyword ::= l a s t /.$setResult($_LAST);./
    Keyword ::= l e a d /.$setResult($_LEAD);./
    Keyword ::= l e a f /.$setResult($_LEAF);./
    Keyword ::= l e f t /.$setResult($_LEFT);./
    Keyword ::= l e s s /.$setResult($_LESS);./
    Keyword ::= l i f e /.$setResult($_LIFE);./
    Keyword ::= l i k e /.$setResult($_LIKE);./
    Keyword ::= l i n k /.$setResult($_LINK);./
    Keyword ::= l i s t /.$setResult($_LIST);./
    Keyword ::= l o a d /.$setResult($_LOAD);./
    Keyword ::= l o b s /.$setResult($_LOBS);./
    Keyword ::= l o c k /.$setResult($_LOCK);./
    Keyword ::= l o n g /.$setResult($_LONG);./
    Keyword ::= l o o p /.$setResult($_LOOP);./
    Keyword ::= l o s t /.$setResult($_LOST);./
    Keyword ::= l p a d /.$setResult($_LPAD);./
    Keyword ::= m a i n /.$setResult($_MAIN);./
    Keyword ::= m a s k /.$setResult($_MASK);./
    Keyword ::= m o d e /.$setResult($_MODE);./
    Keyword ::= m o v e /.$setResult($_MOVE);./
    Keyword ::= n a m e /.$setResult($_NAME);./
    Keyword ::= n c h r /.$setResult($_NCHR);./
    Keyword ::= n e x t /.$setResult($_NEXT);./
    Keyword ::= n o n e /.$setResult($_NONE);./
    Keyword ::= n u l l /.$setResult($_NULL_);./
    Keyword ::= o l a p /.$setResult($_OLAP);./
    Keyword ::= o l t p /.$setResult($_OLTP);./
    Keyword ::= o m i t /.$setResult($_OMIT);./
    Keyword ::= o n l y /.$setResult($_ONLY);./
    Keyword ::= o p e n /.$setResult($_OPEN);./
    Keyword ::= o v e r /.$setResult($_OVER);./
    Keyword ::= p a s t /.$setResult($_PAST);./
    Keyword ::= p a t h /.$setResult($_PATH);./
    Keyword ::= p i p e /.$setResult($_PIPE);./
    Keyword ::= p l a n /.$setResult($_PLAN);./
    Keyword ::= p m e m /.$setResult($_PMEM);./
    Keyword ::= p r e v /.$setResult($_PREV);./
    Keyword ::= r a n k /.$setResult($_RANK);./
    Keyword ::= r d b a /.$setResult($_RDBA);./
    Keyword ::= r e a d /.$setResult($_READ);./
    Keyword ::= r e a l /.$setResult($_REAL);./
    Keyword ::= r e d o /.$setResult($_REDO);./
    Keyword ::= r e l y /.$setResult($_RELY);./
    Keyword ::= r o l e /.$setResult($_ROLE);./
    Keyword ::= r o o t /.$setResult($_ROOT);./
    Keyword ::= r o w s /.$setResult($_ROWS);./
    Keyword ::= r p a d /.$setResult($_RPAD);./
    Keyword ::= r u l e /.$setResult($_RULE);./
    Keyword ::= s a l t /.$setResult($_SALT);./
    Keyword ::= s a v e /.$setResult($_SAVE);./
    Keyword ::= s c a n /.$setResult($_SCAN);./
    Keyword ::= s e e d /.$setResult($_SEED);./
    Keyword ::= s e l f /.$setResult($_SELF);./
    Keyword ::= s e t s /.$setResult($_SETS);./
    Keyword ::= s h o w /.$setResult($_SHOW);./
    Keyword ::= s i g n /.$setResult($_SIGN);./
    Keyword ::= s i n h /.$setResult($_SINH);./
    Keyword ::= s i t e /.$setResult($_SITE);./
    Keyword ::= s i z e /.$setResult($_SIZE);./
    Keyword ::= s k i p /.$setResult($_SKIP_);./
    Keyword ::= s o m e /.$setResult($_SOME);./
    Keyword ::= s o r t /.$setResult($_SORT);./
    Keyword ::= s q r t /.$setResult($_SQRT);./
    Keyword ::= s t a r /.$setResult($_STAR);./
    Keyword ::= s t o p /.$setResult($_STOP);./
    Keyword ::= s y n c /.$setResult($_SYNC);./
    Keyword ::= t a n h /.$setResult($_TANH);./
    Keyword ::= t e s t /.$setResult($_TEST);./
    Keyword ::= t e x t /.$setResult($_TEXT);./
    Keyword ::= t h a n /.$setResult($_THAN);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t i e r /.$setResult($_TIER);./
    Keyword ::= t i e s /.$setResult($_TIES);./
    Keyword ::= t i m e /.$setResult($_TIME);./
    Keyword ::= t r i m /.$setResult($_TRIM);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= u n d o /.$setResult($_UNDO);./
    Keyword ::= u s e r /.$setResult($_USER);./
    Keyword ::= v i e w /.$setResult($_VIEW);./
    Keyword ::= w a i t /.$setResult($_WAIT);./
    Keyword ::= w e e k /.$setResult($_WEEK);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= w o r k /.$setResult($_WORK);./
    Keyword ::= y e a r /.$setResult($_YEAR);./
    Keyword ::= z o n e /.$setResult($_ZONE);./
    Keyword ::= a b s /.$setResult($_ABS);./
    Keyword ::= a c l /.$setResult($_ACL);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= a r e /.$setResult($_ARE);./
    Keyword ::= a s c /.$setResult($_ASC);./
    Keyword ::= a v g /.$setResult($_AVG);./
    Keyword ::= b i g /.$setResult($_BIG);./
    Keyword ::= c h r /.$setResult($_CHR);./
    Keyword ::= c o s /.$setResult($_COS);./
    Keyword ::= c s v /.$setResult($_CSV);./
    Keyword ::= d a y /.$setResult($_DAY);./
    Keyword ::= d b a /.$setResult($_DBA);./
    Keyword ::= d d l /.$setResult($_DDL);./
    Keyword ::= d e c /.$setResult($_DEC);./
    Keyword ::= d m l /.$setResult($_DML);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= e r r /.$setResult($_ERR);./
    Keyword ::= e x p /.$setResult($_EXP);./
    Keyword ::= f a r /.$setResult($_FAR);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= f t p /.$setResult($_FTP);./
    Keyword ::= g e t /.$setResult($_GET);./
    Keyword ::= h o t /.$setResult($_HOT);./
    Keyword ::= i l m /.$setResult($_ILM);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= j o b /.$setResult($_JOB);./
    Keyword ::= k e y /.$setResult($_KEY);./
    Keyword ::= l a g /.$setResult($_LAG);./
    Keyword ::= l a x /.$setResult($_LAX);./
    Keyword ::= l l s /.$setResult($_LLS);./
    Keyword ::= l o b /.$setResult($_LOB);./
    Keyword ::= l o g /.$setResult($_LOG);./
    Keyword ::= l o w /.$setResult($_LOW);./
    Keyword ::= m a p /.$setResult($_MAP);./
    Keyword ::= m a x /.$setResult($_MAX);./
    Keyword ::= m i n /.$setResult($_MIN);./
    Keyword ::= m o d /.$setResult($_MOD);./
    Keyword ::= n a n /.$setResult($_NAN_);./
    Keyword ::= n a v /.$setResult($_NAV);./
    Keyword ::= n e g /.$setResult($_NEG);./
    Keyword ::= n e w /.$setResult($_NEW);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= n v l /.$setResult($_NVL);./
    Keyword ::= o f f /.$setResult($_OFF);./
    Keyword ::= o i d /.$setResult($_OID);./
    Keyword ::= o l d /.$setResult($_OLD);./
    Keyword ::= o l s /.$setResult($_OLS);./
    Keyword ::= o n e /.$setResult($_ONE);./
    Keyword ::= o r c /.$setResult($_ORC);./
    Keyword ::= o u t /.$setResult($_OUT);./
    Keyword ::= o w n /.$setResult($_OWN);./
    Keyword ::= p e r /.$setResult($_PER);./
    Keyword ::= r a w /.$setResult($_RAW);./
    Keyword ::= r b a /.$setResult($_RBA);./
    Keyword ::= r e f /.$setResult($_REF);./
    Keyword ::= r o w /.$setResult($_ROW);./
    Keyword ::= s c n /.$setResult($_SCN);./
    Keyword ::= s e q /.$setResult($_SEQ);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= s i d /.$setResult($_SID);./
    Keyword ::= s i n /.$setResult($_SIN);./
    Keyword ::= s q l /.$setResult($_SQL);./
    Keyword ::= s u m /.$setResult($_SUM);./
    Keyword ::= s y s /.$setResult($_SYS);./
    Keyword ::= t a g /.$setResult($_TAG);./
    Keyword ::= t a n /.$setResult($_TAN);./
    Keyword ::= t d o /.$setResult($_TDO);./
    Keyword ::= t h e /.$setResult($_THE);./
    Keyword ::= u b a /.$setResult($_UBA);./
    Keyword ::= u d f /.$setResult($_UDF);./
    Keyword ::= u i d /.$setResult($_UID);./
    Keyword ::= u s e /.$setResult($_USE);./
    Keyword ::= x d b /.$setResult($_XDB);./
    Keyword ::= x i d /.$setResult($_XID);./
    Keyword ::= x m l /.$setResult($_XML);./
    Keyword ::= y e s /.$setResult($_YES);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= a t /.$setResult($_AT);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= c v /.$setResult($_CV);./
    Keyword ::= d v /.$setResult($_DV);./
    Keyword ::= e m /.$setResult($_EM);./
    Keyword ::= i d /.$setResult($_ID);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= l n /.$setResult($_LN);./
    Keyword ::= n o /.$setResult($_NO);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
    Keyword ::= t x /.$setResult($_TX);./
    Keyword ::= x s /.$setResult($_XS);./
    Keyword ::= a /.$setResult($_A_LETTER);./
    Keyword ::= c /.$setResult($_C_LETTER);./
    Keyword ::= e /.$setResult($_E_LETTER);./
    Keyword ::= g /.$setResult($_G_LETTER);./
    Keyword ::= h /.$setResult($_H_LETTER);./
    Keyword ::= k /.$setResult($_K_LETTER);./
    Keyword ::= m /.$setResult($_M_LETTER);./
    Keyword ::= p /.$setResult($_P_LETTER);./
    Keyword ::= t /.$setResult($_T_LETTER);./
%End
