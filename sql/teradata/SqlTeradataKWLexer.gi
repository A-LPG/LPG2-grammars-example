-- Keyword filter for SqlTeradata (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.sql.teradata
%options template=KeywordTemplateF.gi
%options fp=SqlTeradataKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ABORT
    ABORTSESSION
    ABORTSESSIONS
    ABS
    ABSENT
    ACCESS
    ACCORDING
    ACCOUNT
    ACCUMULATE
    ACOS
    ACOSH
    ADD
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
    ANALYSIS
    ANCHOR
    AND
    ANSIDATE
    ANY
    APPLNAME
    ARCHIVE
    ARGLPAREN
    ARRAY
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
    ATANH
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
    BEFORE
    BEGIN
    BETWEEN
    BIGINT
    BINARY
    BITAND
    BITNOT
    BITOR
    BITXOR
    BLOB
    BLOCKCOMPRESSION
    BLOCKCOMPRESSIONALGORITHM
    BLOCKCOMPRESSIONLEVEL
    BOM
    BOTH
    BOTTOM
    BSON
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
    CAPTURE
    CARDINALITY
    CASE
    CASESPECIFIC
    CAST
    CD
    CEIL
    CEILING
    CHANGERATE
    CHAR
    CHARACTER
    CHARACTERISTICS
    CHARACTERS
    CHARS
    CHARSET
    CHECK
    CHECKPOINT
    CHECKSUM
    CHR
    CLASS
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
    COLUMN
    COLUMNMETA
    COLUMNS
    COLUMNSPERINDEX
    COLUMNSPERJOININDEX
    COMBINE
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
    CORR
    COS
    COSH
    COST
    COSTS
    COUNT
    COUNTSET
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
    CT
    CTCONTROL
    CUBE
    CURDATE
    CURRENT
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
    DAY
    DAYOFMONTH
    DAYS
    DBA
    DBC
    DEALLOCATE
    DEBUG
    DEC
    DECAMSET
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
    DEMOGRAPHICS
    DENIALS
    DENSE
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
    DOMAIN
    DOT
    DOUBLE
    DOWN
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
    ELSE
    ELSEIF
    EMITNULL
    EMPTY
    ENABLED
    ENCODE
    ENCODING
    ENCRYPT
    END
    EQ
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
    FEATUREINFO
    FETCH
    FILE
    FILL
    FILTER
    FINAL
    FIRST
    FLOAT
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
    HANDLER
    HASH
    HASHAMP
    HASHBAKAMP
    HASHBUCKET
    HASHROW
    HAVING
    HEADER
    HELP
    HIGH
    HOST
    HOUR
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
    INCLUDING
    INCONSISTENT
    INCREMENT
    INCREMENTAL
    INDENT
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
    JOIN
    JOURNAL
    JSON
    JSONEXTRACT
    JSONEXTRACTLARGEVALUE
    JSONEXTRACTVALUE
    JSONGETVALUE
    JSONMETADATA
    K
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
    LATIN
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
    LT
    LTRIM
    LZCOMP
    LZDECOMP
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
    MCHARACTERS
    MDIFF
    MEDIAN
    MEDIUM
    MEETS
    MEMBER
    MERGE
    MERGEBLOCKRATIO
    METADATA
    METHOD
    MIN
    MINCHAR
    MINDEX
    MINIMUM
    MINUS
    MINUTE
    MINVALUE
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
    NEXT
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
    NOW
    NOWAIT
    NPATH
    NTH
    NULL
    NULLIF
    NULLIFZERO
    NULLS
    NUMBER
    NUMERIC
    NUMFPFNS
    NUMTODSINTERVAL
    NUMTOYMINTERVAL
    NVL
    NVP
    OA
    OBJECT
    OBJECTS
    OCOUNT
    ODELETE
    OEXISTS
    OEXTEND
    OF
    OFF
    OFIRST
    OLAST
    OLD
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
    ORDERING
    ORDINALITY
    OREPLACE
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
    PASS
    PASSING
    PASSWORD
    PATH
    PATHPATTERN
    PATTERN
    PAYLOAD
    PERCENT
    PERCENTILE
    PERIOD
    PERM
    PERMANENT
    PHRASE
    PIVOT
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
    PROFILE
    PROTECTED
    PROTECTION
    PUBLIC
    QUALIFIED
    QUALIFY
    QUANTILE
    QUERY
    QUEUE
    QUOTECHAR
    QUOTES
    RADIANS
    RANDOM
    RANDOMIZED
    RANGE
    RANK
    RAPIDFIRE
    RDIFF
    READ
    READS
    REAL
    RECALC
    RECURSIVE
    REFERENCES
    REFERENCING
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
    ROWS
    RPAD
    RTRIM
    RU
    RULES
    RULESET
    SAMPLE
    SAMPLEID
    SAMPLES
    SAS
    SATURDAY
    SCHEMA
    SCRIPT
    SCROLL
    SEARCHSPACE
    SEARCHUIFDBPATH
    SECOND
    SECURITY
    SEED
    SEL
    SELECT
    SELF
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
    SMALLINT
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
    SR
    SS
    START
    STARTUP
    STAT
    STATEMENT
    STATIC
    STATISTICS
    STATS
    STATSUSAGE
    STEPINFO
    STORAGE
    STOREDAS
    STRIP
    STRTOK
    STYLE
    SUBBITSTR
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
    SYSUDTLIB
    TABLE
    TAN
    TANH
    TARGET
    TDWMEVENT
    TDWMEXCEPTION
    TDWMHISTORY
    TEMPORARY
    TERMINATE
    TEXT
    THEN
    THRESHOLD
    THRESHOLDPERCENT
    THROUGH
    THURSDAY
    TIES
    TIME
    TIMECODE
    TIMECOLUMN
    TIMEDATEWZCONTROL
    TIMEOUT
    TIMESTAMP
    TIMESTAMPCOLUMN
    TITLE
    TO
    TOP
    TOTOKEN
    TPA
    TRACE
    TRAILING
    TRANSACTION
    TRANSACTIONTIME
    TRANSFORM
    TRANSLATE
    TRIGGER
    TRIM
    TRUE
    TRUNC
    TRUNCATE
    TRUST
    TRUSTED
    TRYCAST
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
    UNDO
    UNICODE
    UNION
    UNIQUE
    UNKNOWN
    UNNEST
    UNPIVOT
    UNTIL
    UPD
    UPDATE
    UPPER
    UPPERCASE
    USAGE
    USE
    USECOUNT
    USER
    USING
    UTILITYINFO
    VALIDTIME
    VALUE
    VALUES
    VARBYTE
    VARCHAR
    VARGRAPHIC
    VARIANT
    VARRAY
    VARYING
    VERBOSE
    VERSION
    VERSIONING
    VIEW
    VOLATILE
    WAIT
    WARNING
    WEDNESDAY
    WEEK
    WHEN
    WHERE
    WHILE
    WHITESPACE
    WIDTH
    WINDOWSIZE
    WITH
    WITHIN
    WITHOUT
    WORK
    WORKLOAD
    WRITE
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
    ZEROIFNULL
    ZLIB
    ZONE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= b l o c k c o m p r e s s i o n a l g o r i t h m /.$setResult($_BLOCKCOMPRESSIONALGORITHM);./
    Keyword ::= c r e a t e n o n s c h e m a b a s e d x m l /.$setResult($_CREATENONSCHEMABASEDXML);./
    Keyword ::= g e t t i m e z o n e d i s p l a c e m e n t /.$setResult($_GETTIMEZONEDISPLACEMENT);./
    Keyword ::= b l o c k c o m p r e s s i o n l e v e l /.$setResult($_BLOCKCOMPRESSIONLEVEL);./
    Keyword ::= j s o n e x t r a c t l a r g e v a l u e /.$setResult($_JSONEXTRACTLARGEVALUE);./
    Keyword ::= n o s e x t r a c t v a r f r o m p a t h /.$setResult($_NOSEXTRACTVARFROMPATH);./
    Keyword ::= c r e a t e s c h e m a b a s e d x m l /.$setResult($_CREATESCHEMABASEDXML);./
    Keyword ::= a g g g e o m i n t e r s e c t i o n /.$setResult($_AGGGEOMINTERSECTION);./
    Keyword ::= c o l u m n s p e r j o i n i n d e x /.$setResult($_COLUMNSPERJOININDEX);./
    Keyword ::= f u n c t i o n d e s c r i p t o r /.$setResult($_FUNCTIONDESCRIPTOR);./
    Keyword ::= m o n i t o r s e s s i o n r a t e /.$setResult($_MONITORSESSIONRATE);./
    Keyword ::= c o n t i g u o u s m a p a m p s /.$setResult($_CONTIGUOUSMAPAMPS);./
    Keyword ::= f u n c t i o n p a r a m e t e r /.$setResult($_FUNCTIONPARAMETER);./
    Keyword ::= g e t q u e r y b a n d v a l u e /.$setResult($_GETQUERYBANDVALUE);./
    Keyword ::= i s s c h e m a v a l i d a t e d /.$setResult($_ISSCHEMAVALIDATED);./
    Keyword ::= s e t s e s s i o n a c c o u n t /.$setResult($_SETSESSIONACCOUNT);./
    Keyword ::= t i m e d a t e w z c o n t r o l /.$setResult($_TIMEDATEWZCONTROL);./
    Keyword ::= b l o c k c o m p r e s s i o n /.$setResult($_BLOCKCOMPRESSION);./
    Keyword ::= i d e n t i f y d a t a b a s e /.$setResult($_IDENTIFYDATABASE);./
    Keyword ::= j s o n e x t r a c t v a l u e /.$setResult($_JSONEXTRACTVALUE);./
    Keyword ::= l o c k e d u s e r e x p i r e /.$setResult($_LOCKEDUSEREXPIRE);./
    Keyword ::= m a x l o g o n a t t e m p t s /.$setResult($_MAXLOGONATTEMPTS);./
    Keyword ::= m o n i t o r q u e r y b a n d /.$setResult($_MONITORQUERYBAND);./
    Keyword ::= t h r e s h o l d p e r c e n t /.$setResult($_THRESHOLDPERCENT);./
    Keyword ::= c h a r a c t e r i s t i c s /.$setResult($_CHARACTERISTICS);./
    Keyword ::= c o l u m n s p e r i n d e x /.$setResult($_COLUMNSPERINDEX);./
    Keyword ::= f o r e i g n f u n c t i o n /.$setResult($_FOREIGNFUNCTION);./
    Keyword ::= g e o j s o n f r o m g e o m /.$setResult($_GEOJSONFROMGEOM);./
    Keyword ::= g e o m f r o m g e o j s o n /.$setResult($_GEOMFROMGEOJSON);./
    Keyword ::= i d e n t i f y s e s s i o n /.$setResult($_IDENTIFYSESSION);./
    Keyword ::= i n d e x e s p e r t a b l e /.$setResult($_INDEXESPERTABLE);./
    Keyword ::= m e r g e b l o c k r a t i o /.$setResult($_MERGEBLOCKRATIO);./
    Keyword ::= n u m t o d s i n t e r v a l /.$setResult($_NUMTODSINTERVAL);./
    Keyword ::= n u m t o y m i n t e r v a l /.$setResult($_NUMTOYMINTERVAL);./
    Keyword ::= s e a r c h u i f d b p a t h /.$setResult($_SEARCHUIFDBPATH);./
    Keyword ::= s e t r e s o u r c e r a t e /.$setResult($_SETRESOURCERATE);./
    Keyword ::= s p a r s e t a b l e a m p s /.$setResult($_SPARSETABLEAMPS);./
    Keyword ::= t i m e s t a m p c o l u m n /.$setResult($_TIMESTAMPCOLUMN);./
    Keyword ::= t r a n s a c t i o n t i m e /.$setResult($_TRANSACTIONTIME);./
    Keyword ::= c o n t a i n e d t o k e n /.$setResult($_CONTAINEDTOKEN);./
    Keyword ::= i n d e x m a i n t m o d e /.$setResult($_INDEXMAINTMODE);./
    Keyword ::= m a x v a l u e l e n g t h /.$setResult($_MAXVALUELENGTH);./
    Keyword ::= m o n i t o r v e r s i o n /.$setResult($_MONITORVERSION);./
    Keyword ::= p a r t i t i o n n a m e s /.$setResult($_PARTITIONNAMES);./
    Keyword ::= s e t s e s s i o n r a t e /.$setResult($_SETSESSIONRATE);./
    Keyword ::= x m l d e c l a r a t i o n /.$setResult($_XMLDECLARATION);./
    Keyword ::= a b o r t s e s s i o n s /.$setResult($_ABORTSESSIONS);./
    Keyword ::= a u t h o r i z a t i o n /.$setResult($_AUTHORIZATION);./
    Keyword ::= c r e a t e d a t a s e t /.$setResult($_CREATEDATASET);./
    Keyword ::= d a t a b l o c k s i z e /.$setResult($_DATABLOCKSIZE);./
    Keyword ::= d e t e r m i n i s t i c /.$setResult($_DETERMINISTIC);./
    Keyword ::= g e t p s f v e r s i o n /.$setResult($_GETPSFVERSION);./
    Keyword ::= i d e n t i f y t a b l e /.$setResult($_IDENTIFYTABLE);./
    Keyword ::= i s s c h e m a v a l i d /.$setResult($_ISSCHEMAVALID);./
    Keyword ::= m a x o b j e c t s i z e /.$setResult($_MAXOBJECTSIZE);./
    Keyword ::= m u l t i n a t i o n a l /.$setResult($_MULTINATIONAL);./
    Keyword ::= o r d e r b y v a l u e s /.$setResult($_ORDERBYVALUES);./
    Keyword ::= r e s t r i c t w o r d s /.$setResult($_RESTRICTWORDS);./
    Keyword ::= s p a r s e m a p a m p s /.$setResult($_SPARSEMAPAMPS);./
    Keyword ::= t d w m e x c e p t i o n /.$setResult($_TDWMEXCEPTION);./
    Keyword ::= t t g r a n u l a r i t y /.$setResult($_TTGRANULARITY);./
    Keyword ::= u d f s e a r c h p a t h /.$setResult($_UDFSEARCHPATH);./
    Keyword ::= u d t c a s t l p a r e n /.$setResult($_UDTCASTLPAREN);./
    Keyword ::= x m l a t t r i b u t e s /.$setResult($_XMLATTRIBUTES);./
    Keyword ::= x m l n a m e s p a c e s /.$setResult($_XMLNAMESPACES);./
    Keyword ::= a b o r t s e s s i o n /.$setResult($_ABORTSESSION);./
    Keyword ::= a g g g e o m u n i o n /.$setResult($_AGGGEOMUNION);./
    Keyword ::= c a s e s p e c i f i c /.$setResult($_CASESPECIFIC);./
    Keyword ::= d e m o g r a p h i c s /.$setResult($_DEMOGRAPHICS);./
    Keyword ::= e d i t d i s t a n c e /.$setResult($_EDITDISTANCE);./
    Keyword ::= g e t q u e r y b a n d /.$setResult($_GETQUERYBAND);./
    Keyword ::= i d e n t i f y u s e r /.$setResult($_IDENTIFYUSER);./
    Keyword ::= i n c o n s i s t e n t /.$setResult($_INCONSISTENT);./
    Keyword ::= i n s t a n t i a b l e /.$setResult($_INSTANTIABLE);./
    Keyword ::= j s o n g e t v a l u e /.$setResult($_JSONGETVALUE);./
    Keyword ::= j s o n m e t a d a t a /.$setResult($_JSONMETADATA);./
    Keyword ::= m a n i f e s t f i l e /.$setResult($_MANIFESTFILE);./
    Keyword ::= m a n i f e s t o n l y /.$setResult($_MANIFESTONLY);./
    Keyword ::= m a x i n t e r v a l s /.$setResult($_MAXINTERVALS);./
    Keyword ::= n o n s e q u e n c e d /.$setResult($_NONSEQUENCED);./
    Keyword ::= s e r i a l i z a b l e /.$setResult($_SERIALIZABLE);./
    Keyword ::= s q l e x c e p t i o n /.$setResult($_SQLEXCEPTION);./
    Keyword ::= x m l s e r i a l i z e /.$setResult($_XMLSERIALIZE);./
    Keyword ::= x m l t r a n s f o r m /.$setResult($_XMLTRANSFORM);./
    Keyword ::= a t t r i b u t i o n /.$setResult($_ATTRIBUTION);./
    Keyword ::= c a r d i n a l i t y /.$setResult($_CARDINALITY);./
    Keyword ::= c o m p r e s s i o n /.$setResult($_COMPRESSION);./
    Keyword ::= c o n s t r u c t o r /.$setResult($_CONSTRUCTOR);./
    Keyword ::= c p u t i m e n o r m /.$setResult($_CPUTIMENORM);./
    Keyword ::= d i a g n o s t i c s /.$setResult($_DIAGNOSTICS);./
    Keyword ::= d u p c o u n t c u m /.$setResult($_DUPCOUNTCUM);./
    Keyword ::= e l a p s e d t i m e /.$setResult($_ELAPSEDTIME);./
    Keyword ::= e r r o r t a b l e s /.$setResult($_ERRORTABLES);./
    Keyword ::= e v e n t c o l u m n /.$setResult($_EVENTCOLUMN);./
    Keyword ::= e x p o r t w i d t h /.$setResult($_EXPORTWIDTH);./
    Keyword ::= f e a t u r e i n f o /.$setResult($_FEATUREINFO);./
    Keyword ::= i m m e d i a t e l y /.$setResult($_IMMEDIATELY);./
    Keyword ::= i n c r e m e n t a l /.$setResult($_INCREMENTAL);./
    Keyword ::= i n t e g e r d a t e /.$setResult($_INTEGERDATE);./
    Keyword ::= j s o n e x t r a c t /.$setResult($_JSONEXTRACT);./
    Keyword ::= m c h a r a c t e r s /.$setResult($_MCHARACTERS);./
    Keyword ::= m o n r e s o u r c e /.$setResult($_MONRESOURCE);./
    Keyword ::= n o n t e m p o r a l /.$setResult($_NONTEMPORAL);./
    Keyword ::= p a r t i t i o n e d /.$setResult($_PARTITIONED);./
    Keyword ::= p a t h p a t t e r n /.$setResult($_PATHPATTERN);./
    Keyword ::= r e f e r e n c i n g /.$setResult($_REFERENCING);./
    Keyword ::= r e p l a c e m e n t /.$setResult($_REPLACEMENT);./
    Keyword ::= r e p l c o n t r o l /.$setResult($_REPLCONTROL);./
    Keyword ::= r e p l i c a t i o n /.$setResult($_REPLICATION);./
    Keyword ::= r e t u r n t y p e s /.$setResult($_RETURNTYPES);./
    Keyword ::= r o l l f o r w a r d /.$setResult($_ROLLFORWARD);./
    Keyword ::= r o t a t e r i g h t /.$setResult($_ROTATERIGHT);./
    Keyword ::= s e a r c h s p a c e /.$setResult($_SEARCHSPACE);./
    Keyword ::= s e t s e s s r a t e /.$setResult($_SETSESSRATE);./
    Keyword ::= s u m m a r y o n l y /.$setResult($_SUMMARYONLY);./
    Keyword ::= t d w m h i s t o r y /.$setResult($_TDWMHISTORY);./
    Keyword ::= t r a n s a c t i o n /.$setResult($_TRANSACTION);./
    Keyword ::= u n c o m m i t t e d /.$setResult($_UNCOMMITTED);./
    Keyword ::= u t i l i t y i n f o /.$setResult($_UTILITYINFO);./
    Keyword ::= x m l d o c u m e n t /.$setResult($_XMLDOCUMENT);./
    Keyword ::= x m l v a l i d a t e /.$setResult($_XMLVALIDATE);./
    Keyword ::= a c c u m u l a t e /.$setResult($_ACCUMULATE);./
    Keyword ::= a l l o c a t i o n /.$setResult($_ALLOCATION);./
    Keyword ::= a s b s o n t e x t /.$setResult($_ASBSONTEXT);./
    Keyword ::= a s s i g n m e n t /.$setResult($_ASSIGNMENT);./
    Keyword ::= a t t r i b u t e s /.$setResult($_ATTRIBUTES);./
    Keyword ::= b u f f e r s i z e /.$setResult($_BUFFERSIZE);./
    Keyword ::= c a l c m a t r i x /.$setResult($_CALCMATRIX);./
    Keyword ::= c h a n g e r a t e /.$setResult($_CHANGERATE);./
    Keyword ::= c h a r a c t e r s /.$setResult($_CHARACTERS);./
    Keyword ::= c h e c k p o i n t /.$setResult($_CHECKPOINT);./
    Keyword ::= c o l u m n m e t a /.$setResult($_COLUMNMETA);./
    Keyword ::= c o m p a r i s o n /.$setResult($_COMPARISON);./
    Keyword ::= c o n c u r r e n t /.$setResult($_CONCURRENT);./
    Keyword ::= c o n s t r a i n t /.$setResult($_CONSTRAINT);./
    Keyword ::= c o n t i g u o u s /.$setResult($_CONTIGUOUS);./
    Keyword ::= d a y o f m o n t h /.$setResult($_DAYOFMONTH);./
    Keyword ::= d e a l l o c a t e /.$setResult($_DEALLOCATE);./
    Keyword ::= d e c o m p r e s s /.$setResult($_DECOMPRESS);./
    Keyword ::= d e f i n i t i o n /.$setResult($_DEFINITION);./
    Keyword ::= d e s c r i p t o r /.$setResult($_DESCRIPTOR);./
    Keyword ::= d i a g n o s t i c /.$setResult($_DIAGNOSTIC);./
    Keyword ::= d i c t i o n a r y /.$setResult($_DICTIONARY);./
    Keyword ::= e l a p s e d s e c /.$setResult($_ELAPSEDSEC);./
    Keyword ::= e r r o r f i l e s /.$setResult($_ERRORFILES);./
    Keyword ::= e x i s t s n o d e /.$setResult($_EXISTSNODE);./
    Keyword ::= e x i s t v a l u e /.$setResult($_EXISTVALUE);./
    Keyword ::= f a s t e x p o r t /.$setResult($_FASTEXPORT);./
    Keyword ::= h a s h b a k a m p /.$setResult($_HASHBAKAMP);./
    Keyword ::= h a s h b u c k e t /.$setResult($_HASHBUCKET);./
    Keyword ::= i p a r t i t i o n /.$setResult($_IPARTITION);./
    Keyword ::= i s d o c u m e n t /.$setResult($_ISDOCUMENT);./
    Keyword ::= m o n s e s s i o n /.$setResult($_MONSESSION);./
    Keyword ::= n o n o p t c o s t /.$setResult($_NONOPTCOST);./
    Keyword ::= n o n o p t i n i t /.$setResult($_NONOPTINIT);./
    Keyword ::= n u l l i f z e r o /.$setResult($_NULLIFZERO);./
    Keyword ::= o r d i n a l i t y /.$setResult($_ORDINALITY);./
    Keyword ::= o t r a n s l a t e /.$setResult($_OTRANSLATE);./
    Keyword ::= p e r c e n t i l e /.$setResult($_PERCENTILE);./
    Keyword ::= p r i v i l e g e s /.$setResult($_PRIVILEGES);./
    Keyword ::= p r o t e c t i o n /.$setResult($_PROTECTION);./
    Keyword ::= r a n d o m i z e d /.$setResult($_RANDOMIZED);./
    Keyword ::= r e f e r e n c e s /.$setResult($_REFERENCES);./
    Keyword ::= r e t u r n t y p e /.$setResult($_RETURNTYPE);./
    Keyword ::= r e v a l i d a t e /.$setResult($_REVALIDATE);./
    Keyword ::= r o t a t e l e f t /.$setResult($_ROTATELEFT);./
    Keyword ::= s e s s i o n i z e /.$setResult($_SESSIONIZE);./
    Keyword ::= s e t r e s r a t e /.$setResult($_SETRESRATE);./
    Keyword ::= s h i f t r i g h t /.$setResult($_SHIFTRIGHT);./
    Keyword ::= s q l w a r n i n g /.$setResult($_SQLWARNING);./
    Keyword ::= s t a t i s t i c s /.$setResult($_STATISTICS);./
    Keyword ::= s t a t s u s a g e /.$setResult($_STATSUSAGE);./
    Keyword ::= s u b s c r i b e r /.$setResult($_SUBSCRIBER);./
    Keyword ::= s y s t e m t e s t /.$setResult($_SYSTEMTEST);./
    Keyword ::= t i m e c o l u m n /.$setResult($_TIMECOLUMN);./
    Keyword ::= v a r g r a p h i c /.$setResult($_VARGRAPHIC);./
    Keyword ::= v e r s i o n i n g /.$setResult($_VERSIONING);./
    Keyword ::= w h i t e s p a c e /.$setResult($_WHITESPACE);./
    Keyword ::= w i n d o w s i z e /.$setResult($_WINDOWSIZE);./
    Keyword ::= x m l c o m m e n t /.$setResult($_XMLCOMMENT);./
    Keyword ::= x m l e l e m e n t /.$setResult($_XMLELEMENT);./
    Keyword ::= x m l e x t r a c t /.$setResult($_XMLEXTRACT);./
    Keyword ::= x m l p u b l i s h /.$setResult($_XMLPUBLISH);./
    Keyword ::= z e r o i f n u l l /.$setResult($_ZEROIFNULL);./
    Keyword ::= a c c o r d i n g /.$setResult($_ACCORDING);./
    Keyword ::= a g g r e g a t e /.$setResult($_AGGREGATE);./
    Keyword ::= a l l p a r a m s /.$setResult($_ALLPARAMS);./
    Keyword ::= a r g l p a r e n /.$setResult($_ARGLPAREN);./
    Keyword ::= a t t r i b u t e /.$setResult($_ATTRIBUTE);./
    Keyword ::= c h a r a c t e r /.$setResult($_CHARACTER);./
    Keyword ::= c o l l a t i o n /.$setResult($_COLLATION);./
    Keyword ::= c o m m i t t e d /.$setResult($_COMMITTED);./
    Keyword ::= c o n d i t i o n /.$setResult($_CONDITION);./
    Keyword ::= c o n t a i n e d /.$setResult($_CONTAINED);./
    Keyword ::= c r e a t e x m l /.$setResult($_CREATEXML);./
    Keyword ::= c t c o n t r o l /.$setResult($_CTCONTROL);./
    Keyword ::= d e l i m i t e r /.$setResult($_DELIMITER);./
    Keyword ::= d i m e n s i o n /.$setResult($_DIMENSION);./
    Keyword ::= e x c e p t i o n /.$setResult($_EXCEPTION);./
    Keyword ::= e x c l u d i n g /.$setResult($_EXCLUDING);./
    Keyword ::= e x c l u s i v e /.$setResult($_EXCLUSIVE);./
    Keyword ::= e x p a n d i n g /.$setResult($_EXPANDING);./
    Keyword ::= f o l l o w i n g /.$setResult($_FOLLOWING);./
    Keyword ::= f r e e s p a c e /.$setResult($_FREESPACE);./
    Keyword ::= g e n e r a t e d /.$setResult($_GENERATED);./
    Keyword ::= i m m e d i a t e /.$setResult($_IMMEDIATE);./
    Keyword ::= i n c l u d i n g /.$setResult($_INCLUDING);./
    Keyword ::= i n c r e m e n t /.$setResult($_INCREMENT);./
    Keyword ::= i n d i c a t o r /.$setResult($_INDICATOR);./
    Keyword ::= i n t e r s e c t /.$setResult($_INTERSECT);./
    Keyword ::= i s c o n t e n t /.$setResult($_ISCONTENT);./
    Keyword ::= i s o l a t i o n /.$setResult($_ISOLATION);./
    Keyword ::= k a n j i s j i s /.$setResult($_KANJISJIS);./
    Keyword ::= k i l o b y t e s /.$setResult($_KILOBYTES);./
    Keyword ::= n a m e s p a c e /.$setResult($_NAMESPACE);./
    Keyword ::= n o d d l t e x t /.$setResult($_NODDLTEXT);./
    Keyword ::= n o r m a l i z e /.$setResult($_NORMALIZE);./
    Keyword ::= o v e r w r i t e /.$setResult($_OVERWRITE);./
    Keyword ::= p a r a m e t e r /.$setResult($_PARAMETER);./
    Keyword ::= p a r a m i n f o /.$setResult($_PARAMINFO);./
    Keyword ::= p a r t i t i o n /.$setResult($_PARTITION);./
    Keyword ::= p e r m a n e n t /.$setResult($_PERMANENT);./
    Keyword ::= p r e c e d i n g /.$setResult($_PRECEDING);./
    Keyword ::= p r e c i s i o n /.$setResult($_PRECISION);./
    Keyword ::= p r o c e d u r e /.$setResult($_PROCEDURE);./
    Keyword ::= p r o t e c t e d /.$setResult($_PROTECTED);./
    Keyword ::= q u a l i f i e d /.$setResult($_QUALIFIED);./
    Keyword ::= q u o t e c h a r /.$setResult($_QUOTECHAR);./
    Keyword ::= r a p i d f i r e /.$setResult($_RAPIDFIRE);./
    Keyword ::= r e c u r s i v e /.$setResult($_RECURSIVE);./
    Keyword ::= r e t u r n i n g /.$setResult($_RETURNING);./
    Keyword ::= r o w f o r m a t /.$setResult($_ROWFORMAT);./
    Keyword ::= s e q u e n c e d /.$setResult($_SEQUENCED);./
    Keyword ::= s h i f t l e f t /.$setResult($_SHIFTLEFT);./
    Keyword ::= s t a t e m e n t /.$setResult($_STATEMENT);./
    Keyword ::= s u b b i t s t r /.$setResult($_SUBBITSTR);./
    Keyword ::= s u b s t r i n g /.$setResult($_SUBSTRING);./
    Keyword ::= s y s u d t l i b /.$setResult($_SYSUDTLIB);./
    Keyword ::= t d w m e v e n t /.$setResult($_TDWMEVENT);./
    Keyword ::= t e m p o r a r y /.$setResult($_TEMPORARY);./
    Keyword ::= t e r m i n a t e /.$setResult($_TERMINATE);./
    Keyword ::= t h r e s h o l d /.$setResult($_THRESHOLD);./
    Keyword ::= t i m e s t a m p /.$setResult($_TIMESTAMP);./
    Keyword ::= t r a n s f o r m /.$setResult($_TRANSFORM);./
    Keyword ::= t r a n s l a t e /.$setResult($_TRANSLATE);./
    Keyword ::= u d t c a s t a s /.$setResult($_UDTCASTAS);./
    Keyword ::= u d t m e t h o d /.$setResult($_UDTMETHOD);./
    Keyword ::= u n b o u n d e d /.$setResult($_UNBOUNDED);./
    Keyword ::= u n d e f i n e d /.$setResult($_UNDEFINED);./
    Keyword ::= u p p e r c a s e /.$setResult($_UPPERCASE);./
    Keyword ::= v a l i d t i m e /.$setResult($_VALIDTIME);./
    Keyword ::= w e d n e s d a y /.$setResult($_WEDNESDAY);./
    Keyword ::= x m l c o n c a t /.$setResult($_XMLCONCAT);./
    Keyword ::= x m l f o r e s t /.$setResult($_XMLFOREST);./
    Keyword ::= x m l s c h e m a /.$setResult($_XMLSCHEMA);./
    Keyword ::= a l l o c a t e /.$setResult($_ALLOCATE);./
    Keyword ::= a m p c o u n t /.$setResult($_AMPCOUNT);./
    Keyword ::= a n a l y s i s /.$setResult($_ANALYSIS);./
    Keyword ::= a n s i d a t e /.$setResult($_ANSIDATE);./
    Keyword ::= a p p l n a m e /.$setResult($_APPLNAME);./
    Keyword ::= a u t o t e m p /.$setResult($_AUTOTEMP);./
    Keyword ::= c a l c t y p e /.$setResult($_CALCTYPE);./
    Keyword ::= c a l e n d a r /.$setResult($_CALENDAR);./
    Keyword ::= c h e c k s u m /.$setResult($_CHECKSUM);./
    Keyword ::= c l i c k l a g /.$setResult($_CLICKLAG);./
    Keyword ::= c o a l e s c e /.$setResult($_COALESCE);./
    Keyword ::= c o l o c a t e /.$setResult($_COLOCATE);./
    Keyword ::= c o m p r e s s /.$setResult($_COMPRESS);./
    Keyword ::= c o n t a i n s /.$setResult($_CONTAINS);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= c o u n t s e t /.$setResult($_COUNTSET);./
    Keyword ::= d a t a b a s e /.$setResult($_DATABASE);./
    Keyword ::= d a t a s i z e /.$setResult($_DATASIZE);./
    Keyword ::= d a t e f o r m /.$setResult($_DATEFORM);./
    Keyword ::= d e c a m s e t /.$setResult($_DECAMSET);./
    Keyword ::= d e f e r r e d /.$setResult($_DEFERRED);./
    Keyword ::= d e s c r i b e /.$setResult($_DESCRIBE);./
    Keyword ::= d e t a i l e d /.$setResult($_DETAILED);./
    Keyword ::= d i s a b l e d /.$setResult($_DISABLED);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT);./
    Keyword ::= d o c u m e n t /.$setResult($_DOCUMENT);./
    Keyword ::= d u p c o u n t /.$setResult($_DUPCOUNT);./
    Keyword ::= e m i t n u l l /.$setResult($_EMITNULL);./
    Keyword ::= e n c o d i n g /.$setResult($_ENCODING);./
    Keyword ::= e r r o r t b l /.$setResult($_ERRORTBL);./
    Keyword ::= e x t e r n a l /.$setResult($_EXTERNAL);./
    Keyword ::= f a l l b a c k /.$setResult($_FALLBACK);./
    Keyword ::= f o r t o k e n /.$setResult($_FORTOKEN);./
    Keyword ::= f u l l s c a n /.$setResult($_FULLSCAN);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= g r e a t e s t /.$setResult($_GREATEST);./
    Keyword ::= g r o u p i n g /.$setResult($_GROUPING);./
    Keyword ::= i d e n t i t y /.$setResult($_IDENTITY);./
    Keyword ::= i n i t i a t e /.$setResult($_INITIATE);./
    Keyword ::= i n s t a n c e /.$setResult($_INSTANCE);./
    Keyword ::= i n t e r n a l /.$setResult($_INTERNAL);./
    Keyword ::= i n t e r v a l /.$setResult($_INTERVAL);./
    Keyword ::= i s o l a t e d /.$setResult($_ISOLATED);./
    Keyword ::= k e y c o u n t /.$setResult($_KEYCOUNT);./
    Keyword ::= k u r t o s i s /.$setResult($_KURTOSIS);./
    Keyword ::= l a n g u a g e /.$setResult($_LANGUAGE);./
    Keyword ::= l o c a t i o n /.$setResult($_LOCATION);./
    Keyword ::= l z d e c o m p /.$setResult($_LZDECOMP);./
    Keyword ::= m a n i f e s t /.$setResult($_MANIFEST);./
    Keyword ::= m a x v a l u e /.$setResult($_MAXVALUE);./
    Keyword ::= m e t a d a t a /.$setResult($_METADATA);./
    Keyword ::= m i n v a l u e /.$setResult($_MINVALUE);./
    Keyword ::= m o d i f i e d /.$setResult($_MODIFIED);./
    Keyword ::= m o d i f i e s /.$setResult($_MODIFIES);./
    Keyword ::= m u l t i p l e /.$setResult($_MULTIPLE);./
    Keyword ::= m u l t i s e t /.$setResult($_MULTISET);./
    Keyword ::= n o t a t i o n /.$setResult($_NOTATION);./
    Keyword ::= n u m f p f n s /.$setResult($_NUMFPFNS);./
    Keyword ::= o r d e r i n g /.$setResult($_ORDERING);./
    Keyword ::= o r e p l a c e /.$setResult($_OREPLACE);./
    Keyword ::= o v e r l a p s /.$setResult($_OVERLAPS);./
    Keyword ::= o v e r l a y s /.$setResult($_OVERLAYS);./
    Keyword ::= o v e r r i d e /.$setResult($_OVERRIDE);./
    Keyword ::= p a s s w o r d /.$setResult($_PASSWORD);./
    Keyword ::= p o s i t i o n /.$setResult($_POSITION);./
    Keyword ::= p r e c e d e s /.$setResult($_PRECEDES);./
    Keyword ::= p r e s e r v e /.$setResult($_PRESERVE);./
    Keyword ::= q u a n t i l e /.$setResult($_QUANTILE);./
    Keyword ::= r e l a t i v e /.$setResult($_RELATIVE);./
    Keyword ::= r e s i g n a l /.$setResult($_RESIGNAL);./
    Keyword ::= r e t r i e v e /.$setResult($_RETRIEVE);./
    Keyword ::= r o l l b a c k /.$setResult($_ROLLBACK);./
    Keyword ::= r o w i d g e n /.$setResult($_ROWIDGEN);./
    Keyword ::= s a m p l e i d /.$setResult($_SAMPLEID);./
    Keyword ::= s a t u r d a y /.$setResult($_SATURDAY);./
    Keyword ::= s e c u r i t y /.$setResult($_SECURITY);./
    Keyword ::= s e q u e n c e /.$setResult($_SEQUENCE);./
    Keyword ::= s m a l l i n t /.$setResult($_SMALLINT);./
    Keyword ::= s p e c c h a r /.$setResult($_SPECCHAR);./
    Keyword ::= s p e c i f i c /.$setResult($_SPECIFIC);./
    Keyword ::= s q l s t a t e /.$setResult($_SQLSTATE);./
    Keyword ::= s q l t a b l e /.$setResult($_SQLTABLE);./
    Keyword ::= s t e p i n f o /.$setResult($_STEPINFO);./
    Keyword ::= s t o r e d a s /.$setResult($_STOREDAS);./
    Keyword ::= s u c c e e d s /.$setResult($_SUCCEEDS);./
    Keyword ::= t h u r s d a y /.$setResult($_THURSDAY);./
    Keyword ::= t i m e c o d e /.$setResult($_TIMECODE);./
    Keyword ::= t r a i l i n g /.$setResult($_TRAILING);./
    Keyword ::= t r u n c a t e /.$setResult($_TRUNCATE);./
    Keyword ::= u d t u s a g e /.$setResult($_UDTUSAGE);./
    Keyword ::= u s e c o u n t /.$setResult($_USECOUNT);./
    Keyword ::= v o l a t i l e /.$setResult($_VOLATILE);./
    Keyword ::= w o r k l o a d /.$setResult($_WORKLOAD);./
    Keyword ::= x m l p a r s e /.$setResult($_XMLPARSE);./
    Keyword ::= x m l q u e r y /.$setResult($_XMLQUERY);./
    Keyword ::= x m l s p l i t /.$setResult($_XMLSPLIT);./
    Keyword ::= x m l t a b l e /.$setResult($_XMLTABLE);./
    Keyword ::= a c c o u n t /.$setResult($_ACCOUNT);./
    Keyword ::= a l l d b q l /.$setResult($_ALLDBQL);./
    Keyword ::= a l l t d w m /.$setResult($_ALLTDWM);./
    Keyword ::= a r c h i v e /.$setResult($_ARCHIVE);./
    Keyword ::= a v e r a g e /.$setResult($_AVERAGE);./
    Keyword ::= b e t w e e n /.$setResult($_BETWEEN);./
    Keyword ::= b y t e i n t /.$setResult($_BYTEINT);./
    Keyword ::= c a p t u r e /.$setResult($_CAPTURE);./
    Keyword ::= c e i l i n g /.$setResult($_CEILING);./
    Keyword ::= c h a r s e t /.$setResult($_CHARSET);./
    Keyword ::= c l u s t e r /.$setResult($_CLUSTER);./
    Keyword ::= c o l e x p r /.$setResult($_COLEXPR);./
    Keyword ::= c o l l e c t /.$setResult($_COLLECT);./
    Keyword ::= c o l u m n s /.$setResult($_COLUMNS);./
    Keyword ::= c o m b i n e /.$setResult($_COMBINE);./
    Keyword ::= c o m m e n t /.$setResult($_COMMENT);./
    Keyword ::= c o m p i l e /.$setResult($_COMPILE);./
    Keyword ::= c o n n e c t /.$setResult($_CONNECT);./
    Keyword ::= c o n s u m e /.$setResult($_CONSUME);./
    Keyword ::= c o n t e n t /.$setResult($_CONTENT);./
    Keyword ::= c p u t i m e /.$setResult($_CPUTIME);./
    Keyword ::= c r e a t o r /.$setResult($_CREATOR);./
    Keyword ::= c u r d a t e /.$setResult($_CURDATE);./
    Keyword ::= c u r r e n t /.$setResult($_CURRENT);./
    Keyword ::= c u r t i m e /.$setResult($_CURTIME);./
    Keyword ::= d a t a s e t /.$setResult($_DATASET);./
    Keyword ::= d e c i m a l /.$setResult($_DECIMAL);./
    Keyword ::= d e c l a r e /.$setResult($_DECLARE);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= d e f i n e r /.$setResult($_DEFINER);./
    Keyword ::= d e g r e e s /.$setResult($_DEGREES);./
    Keyword ::= d e l e t e d /.$setResult($_DELETED);./
    Keyword ::= d e n i a l s /.$setResult($_DENIALS);./
    Keyword ::= d y n a m i c /.$setResult($_DYNAMIC);./
    Keyword ::= e l e m e n t /.$setResult($_ELEMENT);./
    Keyword ::= e n a b l e d /.$setResult($_ENABLED);./
    Keyword ::= e n c r y p t /.$setResult($_ENCRYPT);./
    Keyword ::= e x c l u d e /.$setResult($_EXCLUDE);./
    Keyword ::= e x e c u t e /.$setResult($_EXECUTE);./
    Keyword ::= e x p l a i n /.$setResult($_EXPLAIN);./
    Keyword ::= e x t r a c t /.$setResult($_EXTRACT);./
    Keyword ::= f o r e i g n /.$setResult($_FOREIGN);./
    Keyword ::= g r a p h i c /.$setResult($_GRAPHIC);./
    Keyword ::= h a n d l e r /.$setResult($_HANDLER);./
    Keyword ::= h a s h a m p /.$setResult($_HASHAMP);./
    Keyword ::= h a s h r o w /.$setResult($_HASHROW);./
    Keyword ::= i n c l u d e /.$setResult($_INCLUDE);./
    Keyword ::= i n i t c a p /.$setResult($_INITCAP);./
    Keyword ::= i n s t e a d /.$setResult($_INSTEAD);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= i n v o k e r /.$setResult($_INVOKER);./
    Keyword ::= i o c o u n t /.$setResult($_IOCOUNT);./
    Keyword ::= i t e r a t e /.$setResult($_ITERATE);./
    Keyword ::= j o u r n a l /.$setResult($_JOURNAL);./
    Keyword ::= l e a d i n g /.$setResult($_LEADING);./
    Keyword ::= l i s t a g g /.$setResult($_LISTAGG);./
    Keyword ::= l o a d i n g /.$setResult($_LOADING);./
    Keyword ::= l o c a t o r /.$setResult($_LOCATOR);./
    Keyword ::= l o c k i n g /.$setResult($_LOCKING);./
    Keyword ::= l o g g i n g /.$setResult($_LOGGING);./
    Keyword ::= m a p p i n g /.$setResult($_MAPPING);./
    Keyword ::= m a t c h e d /.$setResult($_MATCHED);./
    Keyword ::= m a x c h a r /.$setResult($_MAXCHAR);./
    Keyword ::= m a x i m u m /.$setResult($_MAXIMUM);./
    Keyword ::= m i n c h a r /.$setResult($_MINCHAR);./
    Keyword ::= m i n i m u m /.$setResult($_MINIMUM);./
    Keyword ::= m l i n r e g /.$setResult($_MLINREG);./
    Keyword ::= m o n i t o r /.$setResult($_MONITOR);./
    Keyword ::= m s u b s t r /.$setResult($_MSUBSTR);./
    Keyword ::= n a t u r a l /.$setResult($_NATURAL);./
    Keyword ::= n o r i g h t /.$setResult($_NORIGHT);./
    Keyword ::= n u m e r i c /.$setResult($_NUMERIC);./
    Keyword ::= o b j e c t s /.$setResult($_OBJECTS);./
    Keyword ::= o d e l e t e /.$setResult($_ODELETE);./
    Keyword ::= o e x i s t s /.$setResult($_OEXISTS);./
    Keyword ::= o e x t e n d /.$setResult($_OEXTEND);./
    Keyword ::= o p t i o n s /.$setResult($_OPTIONS);./
    Keyword ::= p a r a m i d /.$setResult($_PARAMID);./
    Keyword ::= p a s s i n g /.$setResult($_PASSING);./
    Keyword ::= p a t t e r n /.$setResult($_PATTERN);./
    Keyword ::= p a y l o a d /.$setResult($_PAYLOAD);./
    Keyword ::= p e r c e n t /.$setResult($_PERCENT);./
    Keyword ::= p o r t i o n /.$setResult($_PORTION);./
    Keyword ::= p r e p a r e /.$setResult($_PREPARE);./
    Keyword ::= p r i m a r y /.$setResult($_PRIMARY);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= p r o f i l e /.$setResult($_PROFILE);./
    Keyword ::= q u a l i f y /.$setResult($_QUALIFY);./
    Keyword ::= r a d i a n s /.$setResult($_RADIANS);./
    Keyword ::= r e l e a s e /.$setResult($_RELEASE);./
    Keyword ::= r e p l a c e /.$setResult($_REPLACE);./
    Keyword ::= r e q u e s t /.$setResult($_REQUEST);./
    Keyword ::= r e s p e c t /.$setResult($_RESPECT);./
    Keyword ::= r e s t a r t /.$setResult($_RESTART);./
    Keyword ::= r e s t o r e /.$setResult($_RESTORE);./
    Keyword ::= r e t u r n s /.$setResult($_RETURNS);./
    Keyword ::= r e v e r s e /.$setResult($_REVERSE);./
    Keyword ::= r o w e x p r /.$setResult($_ROWEXPR);./
    Keyword ::= r u l e s e t /.$setResult($_RULESET);./
    Keyword ::= s a m p l e s /.$setResult($_SAMPLES);./
    Keyword ::= s e s s i o n /.$setResult($_SESSION);./
    Keyword ::= s o u n d e x /.$setResult($_SOUNDEX);./
    Keyword ::= s q l t e x t /.$setResult($_SQLTEXT);./
    Keyword ::= s t a r t u p /.$setResult($_STARTUP);./
    Keyword ::= s t o r a g e /.$setResult($_STORAGE);./
    Keyword ::= s u m m a r y /.$setResult($_SUMMARY);./
    Keyword ::= s u s p e n d /.$setResult($_SUSPEND);./
    Keyword ::= s y m b o l s /.$setResult($_SYMBOLS);./
    Keyword ::= t h r o u g h /.$setResult($_THROUGH);./
    Keyword ::= t i m e o u t /.$setResult($_TIMEOUT);./
    Keyword ::= t o t o k e n /.$setResult($_TOTOKEN);./
    Keyword ::= t r i g g e r /.$setResult($_TRIGGER);./
    Keyword ::= t r u s t e d /.$setResult($_TRUSTED);./
    Keyword ::= t r y c a s t /.$setResult($_TRYCAST);./
    Keyword ::= t u e s d a y /.$setResult($_TUESDAY);./
    Keyword ::= u d t t y p e /.$setResult($_UDTTYPE);./
    Keyword ::= u e s c a p e /.$setResult($_UESCAPE);./
    Keyword ::= u n i c o d e /.$setResult($_UNICODE);./
    Keyword ::= u n k n o w n /.$setResult($_UNKNOWN);./
    Keyword ::= u n p i v o t /.$setResult($_UNPIVOT);./
    Keyword ::= v a r b y t e /.$setResult($_VARBYTE);./
    Keyword ::= v a r c h a r /.$setResult($_VARCHAR);./
    Keyword ::= v a r i a n t /.$setResult($_VARIANT);./
    Keyword ::= v a r y i n g /.$setResult($_VARYING);./
    Keyword ::= v e r b o s e /.$setResult($_VERBOSE);./
    Keyword ::= v e r s i o n /.$setResult($_VERSION);./
    Keyword ::= w a r n i n g /.$setResult($_WARNING);./
    Keyword ::= w i t h o u t /.$setResult($_WITHOUT);./
    Keyword ::= x m l p l a n /.$setResult($_XMLPLAN);./
    Keyword ::= x m l t e x t /.$setResult($_XMLTEXT);./
    Keyword ::= x m l t y p e /.$setResult($_XMLTYPE);./
    Keyword ::= a b s e n t /.$setResult($_ABSENT);./
    Keyword ::= a c c e s s /.$setResult($_ACCESS);./
    Keyword ::= a l w a y s /.$setResult($_ALWAYS);./
    Keyword ::= a n c h o r /.$setResult($_ANCHOR);./
    Keyword ::= a s b s o n /.$setResult($_ASBSON);./
    Keyword ::= a t o m i c /.$setResult($_ATOMIC);./
    Keyword ::= b e f o r e /.$setResult($_BEFORE);./
    Keyword ::= b i g i n t /.$setResult($_BIGINT);./
    Keyword ::= b i n a r y /.$setResult($_BINARY);./
    Keyword ::= b i t a n d /.$setResult($_BITAND);./
    Keyword ::= b i t n o t /.$setResult($_BITNOT);./
    Keyword ::= b i t x o r /.$setResult($_BITXOR);./
    Keyword ::= b o t t o m /.$setResult($_BOTTOM);./
    Keyword ::= b u c k e t /.$setResult($_BUCKET);./
    Keyword ::= c a l l e d /.$setResult($_CALLED);./
    Keyword ::= c a l l e r /.$setResult($_CALLER);./
    Keyword ::= c a m s e t /.$setResult($_CAMSET);./
    Keyword ::= c l i e n t /.$setResult($_CLIENT);./
    Keyword ::= c o l u m n /.$setResult($_COLUMN);./
    Keyword ::= c o m m i t /.$setResult($_COMMIT);./
    Keyword ::= c o n c a t /.$setResult($_CONCAT);./
    Keyword ::= c r e a t e /.$setResult($_CREATE);./
    Keyword ::= c u r s o r /.$setResult($_CURSOR);./
    Keyword ::= d e c o d e /.$setResult($_DECODE);./
    Keyword ::= d e l e t e /.$setResult($_DELETE);./
    Keyword ::= d i g i t s /.$setResult($_DIGITS);./
    Keyword ::= d o m a i n /.$setResult($_DOMAIN);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= e b c d i c /.$setResult($_EBCDIC);./
    Keyword ::= e l s e i f /.$setResult($_ELSEIF);./
    Keyword ::= e n c o d e /.$setResult($_ENCODE);./
    Keyword ::= e q u a l s /.$setResult($_EQUALS);./
    Keyword ::= e r r o r s /.$setResult($_ERRORS);./
    Keyword ::= e s c a p e /.$setResult($_ESCAPE);./
    Keyword ::= e x c e p t /.$setResult($_EXCEPT);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS);./
    Keyword ::= e x p a n d /.$setResult($_EXPAND);./
    Keyword ::= e x p i r e /.$setResult($_EXPIRE);./
    Keyword ::= e x p o r t /.$setResult($_EXPORT);./
    Keyword ::= f i l t e r /.$setResult($_FILTER);./
    Keyword ::= f o r m a t /.$setResult($_FORMAT);./
    Keyword ::= f r i d a y /.$setResult($_FRIDAY);./
    Keyword ::= g e t b i t /.$setResult($_GETBIT);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= h a v i n g /.$setResult($_HAVING);./
    Keyword ::= h e a d e r /.$setResult($_HEADER);./
    Keyword ::= i g n o r e /.$setResult($_IGNORE);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= i n d e n t /.$setResult($_INDENT);./
    Keyword ::= i n l i n e /.$setResult($_INLINE);./
    Keyword ::= i n s e r t /.$setResult($_INSERT);./
    Keyword ::= k b y t e s /.$setResult($_KBYTES);./
    Keyword ::= l e n g t h /.$setResult($_LENGTH);./
    Keyword ::= l o c a t e /.$setResult($_LOCATE);./
    Keyword ::= l z c o m p /.$setResult($_LZCOMP);./
    Keyword ::= m a n u a l /.$setResult($_MANUAL);./
    Keyword ::= m e d i a n /.$setResult($_MEDIAN);./
    Keyword ::= m e d i u m /.$setResult($_MEDIUM);./
    Keyword ::= m e m b e r /.$setResult($_MEMBER);./
    Keyword ::= m e t h o d /.$setResult($_METHOD);./
    Keyword ::= m i n d e x /.$setResult($_MINDEX);./
    Keyword ::= m i n u t e /.$setResult($_MINUTE);./
    Keyword ::= m o d i f y /.$setResult($_MODIFY);./
    Keyword ::= m o n d a y /.$setResult($_MONDAY);./
    Keyword ::= n a m i n g /.$setResult($_NAMING);./
    Keyword ::= n o c a s e /.$setResult($_NOCASE);./
    Keyword ::= n o w a i t /.$setResult($_NOWAIT);./
    Keyword ::= n u l l i f /.$setResult($_NULLIF);./
    Keyword ::= n u m b e r /.$setResult($_NUMBER);./
    Keyword ::= o b j e c t /.$setResult($_OBJECT);./
    Keyword ::= o c o u n t /.$setResult($_OCOUNT);./
    Keyword ::= o f i r s t /.$setResult($_OFIRST);./
    Keyword ::= o l i m i t /.$setResult($_OLIMIT);./
    Keyword ::= o n l i n e /.$setResult($_ONLINE);./
    Keyword ::= o p r i o r /.$setResult($_OPRIOR);./
    Keyword ::= o p t i o n /.$setResult($_OPTION);./
    Keyword ::= o u t p u t /.$setResult($_OUTPUT);./
    Keyword ::= p a r e n t /.$setResult($_PARENT);./
    Keyword ::= p e r i o d /.$setResult($_PERIOD);./
    Keyword ::= p h r a s e /.$setResult($_PHRASE);./
    Keyword ::= p r e f i x /.$setResult($_PREFIX);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= q u o t e s /.$setResult($_QUOTES);./
    Keyword ::= r a n d o m /.$setResult($_RANDOM);./
    Keyword ::= r e c a l c /.$setResult($_RECALC);./
    Keyword ::= r e n a m e /.$setResult($_RENAME);./
    Keyword ::= r e p e a t /.$setResult($_REPEAT);./
    Keyword ::= r e s u l t /.$setResult($_RESULT);./
    Keyword ::= r e s u m e /.$setResult($_RESUME);./
    Keyword ::= r e t a i n /.$setResult($_RETAIN);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= r e v o k e /.$setResult($_REVOKE);./
    Keyword ::= r i g h t s /.$setResult($_RIGHTS);./
    Keyword ::= r o l l u p /.$setResult($_ROLLUP);./
    Keyword ::= s a m p l e /.$setResult($_SAMPLE);./
    Keyword ::= s c h e m a /.$setResult($_SCHEMA);./
    Keyword ::= s c r i p t /.$setResult($_SCRIPT);./
    Keyword ::= s c r o l l /.$setResult($_SCROLL);./
    Keyword ::= s e c o n d /.$setResult($_SECOND);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s e r v e r /.$setResult($_SERVER);./
    Keyword ::= s e t b i t /.$setResult($_SETBIT);./
    Keyword ::= s i g n a l /.$setResult($_SIGNAL);./
    Keyword ::= s i n g l e /.$setResult($_SINGLE);./
    Keyword ::= s o u r c e /.$setResult($_SOURCE);./
    Keyword ::= s p a r s e /.$setResult($_SPARSE);./
    Keyword ::= s t a t i c /.$setResult($_STATIC);./
    Keyword ::= s t r t o k /.$setResult($_STRTOK);./
    Keyword ::= s u b s t r /.$setResult($_SUBSTR);./
    Keyword ::= s u n d a y /.$setResult($_SUNDAY);./
    Keyword ::= s y s l i b /.$setResult($_SYSLIB);./
    Keyword ::= s y s t e m /.$setResult($_SYSTEM);./
    Keyword ::= t a r g e t /.$setResult($_TARGET);./
    Keyword ::= u b j s o n /.$setResult($_UBJSON);./
    Keyword ::= u n i q u e /.$setResult($_UNIQUE);./
    Keyword ::= u n n e s t /.$setResult($_UNNEST);./
    Keyword ::= u p d a t e /.$setResult($_UPDATE);./
    Keyword ::= v a l u e s /.$setResult($_VALUES);./
    Keyword ::= v a r r a y /.$setResult($_VARRAY);./
    Keyword ::= w i t h i n /.$setResult($_WITHIN);./
    Keyword ::= x m l a g g /.$setResult($_XMLAGG);./
    Keyword ::= a b o r t /.$setResult($_ABORT);./
    Keyword ::= a c o s h /.$setResult($_ACOSH);./
    Keyword ::= a d m i n /.$setResult($_ADMIN);./
    Keyword ::= a f t e r /.$setResult($_AFTER);./
    Keyword ::= a l i a s /.$setResult($_ALIAS);./
    Keyword ::= a l l o w /.$setResult($_ALLOW);./
    Keyword ::= a l t e r /.$setResult($_ALTER);./
    Keyword ::= a r r a y /.$setResult($_ARRAY);./
    Keyword ::= a s c i i /.$setResult($_ASCII);./
    Keyword ::= a s i n h /.$setResult($_ASINH);./
    Keyword ::= a t a n h /.$setResult($_ATANH);./
    Keyword ::= a t t r s /.$setResult($_ATTRS);./
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
    Keyword ::= b i t o r /.$setResult($_BITOR);./
    Keyword ::= b y t e s /.$setResult($_BYTES);./
    Keyword ::= c h a r s /.$setResult($_CHARS);./
    Keyword ::= c h e c k /.$setResult($_CHECK);./
    Keyword ::= c l a s s /.$setResult($_CLASS);./
    Keyword ::= c l o s e /.$setResult($_CLOSE);./
    Keyword ::= c o s t s /.$setResult($_COSTS);./
    Keyword ::= c o u n t /.$setResult($_COUNT);./
    Keyword ::= c r o s s /.$setResult($_CROSS);./
    Keyword ::= c s v l d /.$setResult($_CSVLD);./
    Keyword ::= c y c l e /.$setResult($_CYCLE);./
    Keyword ::= d e b u g /.$setResult($_DEBUG);./
    Keyword ::= d e n s e /.$setResult($_DENSE);./
    Keyword ::= d e p t h /.$setResult($_DEPTH);./
    Keyword ::= e m p t y /.$setResult($_EMPTY);./
    Keyword ::= e r r o r /.$setResult($_ERROR);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f e t c h /.$setResult($_FETCH);./
    Keyword ::= f i n a l /.$setResult($_FINAL);./
    Keyword ::= f i r s t /.$setResult($_FIRST);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= f l o o r /.$setResult($_FLOOR);./
    Keyword ::= f l u s h /.$setResult($_FLUSH);./
    Keyword ::= f o u n d /.$setResult($_FOUND);./
    Keyword ::= g r a n t /.$setResult($_GRANT);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= i n d e x /.$setResult($_INDEX);./
    Keyword ::= i n n e r /.$setResult($_INNER);./
    Keyword ::= i n o u t /.$setResult($_INOUT);./
    Keyword ::= i n p u t /.$setResult($_INPUT);./
    Keyword ::= i n s t r /.$setResult($_INSTR);./
    Keyword ::= k b y t e /.$setResult($_KBYTE);./
    Keyword ::= l a r g e /.$setResult($_LARGE);./
    Keyword ::= l a t i n /.$setResult($_LATIN);./
    Keyword ::= l d i f f /.$setResult($_LDIFF);./
    Keyword ::= l e a s t /.$setResult($_LEAST);./
    Keyword ::= l e a v e /.$setResult($_LEAVE);./
    Keyword ::= l e v e l /.$setResult($_LEVEL);./
    Keyword ::= l i m i t /.$setResult($_LIMIT);./
    Keyword ::= l o c a l /.$setResult($_LOCAL);./
    Keyword ::= l o g o n /.$setResult($_LOGON);./
    Keyword ::= l o w e r /.$setResult($_LOWER);./
    Keyword ::= l t r i m /.$setResult($_LTRIM);./
    Keyword ::= m a c r o /.$setResult($_MACRO);./
    Keyword ::= m d i f f /.$setResult($_MDIFF);./
    Keyword ::= m e e t s /.$setResult($_MEETS);./
    Keyword ::= m e r g e /.$setResult($_MERGE);./
    Keyword ::= m i n u s /.$setResult($_MINUS);./
    Keyword ::= m l o a d /.$setResult($_MLOAD);./
    Keyword ::= m o n t h /.$setResult($_MONTH);./
    Keyword ::= n a m e d /.$setResult($_NAMED);./
    Keyword ::= n e v e r /.$setResult($_NEVER);./
    Keyword ::= n g r a m /.$setResult($_NGRAM);./
    Keyword ::= n p a t h /.$setResult($_NPATH);./
    Keyword ::= n u l l s /.$setResult($_NULLS);./
    Keyword ::= o l a s t /.$setResult($_OLAST);./
    Keyword ::= o n e x t /.$setResult($_ONEXT);./
    Keyword ::= o r d e r /.$setResult($_ORDER);./
    Keyword ::= o t r i m /.$setResult($_OTRIM);./
    Keyword ::= o u t e r /.$setResult($_OUTER);./
    Keyword ::= o w n e r /.$setResult($_OWNER);./
    Keyword ::= p i v o t /.$setResult($_PIVOT);./
    Keyword ::= p o w e r /.$setResult($_POWER);./
    Keyword ::= p r i n t /.$setResult($_PRINT);./
    Keyword ::= p r i o r /.$setResult($_PRIOR);./
    Keyword ::= q u e r y /.$setResult($_QUERY);./
    Keyword ::= q u e u e /.$setResult($_QUEUE);./
    Keyword ::= r a n g e /.$setResult($_RANGE);./
    Keyword ::= r d i f f /.$setResult($_RDIFF);./
    Keyword ::= r e a d s /.$setResult($_READS);./
    Keyword ::= r e s e t /.$setResult($_RESET);./
    Keyword ::= r e u s e /.$setResult($_REUSE);./
    Keyword ::= r i g h t /.$setResult($_RIGHT);./
    Keyword ::= r o u n d /.$setResult($_ROUND);./
    Keyword ::= r o w i d /.$setResult($_ROWID);./
    Keyword ::= r t r i m /.$setResult($_RTRIM);./
    Keyword ::= r u l e s /.$setResult($_RULES);./
    Keyword ::= s h a r e /.$setResult($_SHARE);./
    Keyword ::= s p o o l /.$setResult($_SPOOL);./
    Keyword ::= s t a r t /.$setResult($_START);./
    Keyword ::= s t a t s /.$setResult($_STATS);./
    Keyword ::= s t r i p /.$setResult($_STRIP);./
    Keyword ::= s t y l e /.$setResult($_STYLE);./
    Keyword ::= t a b l e /.$setResult($_TABLE);./
    Keyword ::= t i t l e /.$setResult($_TITLE);./
    Keyword ::= t r a c e /.$setResult($_TRACE);./
    Keyword ::= t r u n c /.$setResult($_TRUNC);./
    Keyword ::= t r u s t /.$setResult($_TRUST);./
    Keyword ::= u c a s e /.$setResult($_UCASE);./
    Keyword ::= u n i o n /.$setResult($_UNION);./
    Keyword ::= u n t i l /.$setResult($_UNTIL);./
    Keyword ::= u p p e r /.$setResult($_UPPER);./
    Keyword ::= u s a g e /.$setResult($_USAGE);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= v a l u e /.$setResult($_VALUE);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= w i d t h /.$setResult($_WIDTH);./
    Keyword ::= w r i t e /.$setResult($_WRITE);./
    Keyword ::= x m l p i /.$setResult($_XMLPI);./
    Keyword ::= a c o s /.$setResult($_ACOS);./
    Keyword ::= a s i n /.$setResult($_ASIN);./
    Keyword ::= a t a n /.$setResult($_ATAN);./
    Keyword ::= a t t r /.$setResult($_ATTR);./
    Keyword ::= a u t h /.$setResult($_AUTH);./
    Keyword ::= a u t o /.$setResult($_AUTO);./
    Keyword ::= a v r o /.$setResult($_AVRO);./
    Keyword ::= b l o b /.$setResult($_BLOB);./
    Keyword ::= b o t h /.$setResult($_BOTH);./
    Keyword ::= b s o n /.$setResult($_BSON);./
    Keyword ::= b y t e /.$setResult($_BYTE);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c a s t /.$setResult($_CAST);./
    Keyword ::= c e i l /.$setResult($_CEIL);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= c l o b /.$setResult($_CLOB);./
    Keyword ::= c o r r /.$setResult($_CORR);./
    Keyword ::= c o s h /.$setResult($_COSH);./
    Keyword ::= c o s t /.$setResult($_COST);./
    Keyword ::= c s u m /.$setResult($_CSUM);./
    Keyword ::= c u b e /.$setResult($_CUBE);./
    Keyword ::= d a t a /.$setResult($_DATA);./
    Keyword ::= d a t e /.$setResult($_DATE);./
    Keyword ::= d a y s /.$setResult($_DAYS);./
    Keyword ::= d e s c /.$setResult($_DESC);./
    Keyword ::= d o w n /.$setResult($_DOWN);./
    Keyword ::= d r o p /.$setResult($_DROP);./
    Keyword ::= d u a l /.$setResult($_DUAL);./
    Keyword ::= d u m p /.$setResult($_DUMP);./
    Keyword ::= e a c h /.$setResult($_EACH);./
    Keyword ::= e c h o /.$setResult($_ECHO);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e x c l /.$setResult($_EXCL);./
    Keyword ::= e x e c /.$setResult($_EXEC);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= f a s t /.$setResult($_FAST);./
    Keyword ::= f i l e /.$setResult($_FILE);./
    Keyword ::= f i l l /.$setResult($_FILL);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= f u l l /.$setResult($_FULL);./
    Keyword ::= g i v e /.$setResult($_GIVE);./
    Keyword ::= g l o p /.$setResult($_GLOP);./
    Keyword ::= g o t o /.$setResult($_GOTO);./
    Keyword ::= h a s h /.$setResult($_HASH);./
    Keyword ::= h e l p /.$setResult($_HELP);./
    Keyword ::= h i g h /.$setResult($_HIGH);./
    Keyword ::= h o s t /.$setResult($_HOST);./
    Keyword ::= h o u r /.$setResult($_HOUR);./
    Keyword ::= i n i t /.$setResult($_INIT);./
    Keyword ::= i n t o /.$setResult($_INTO);./
    Keyword ::= j a v a /.$setResult($_JAVA);./
    Keyword ::= j o i n /.$setResult($_JOIN);./
    Keyword ::= j s o n /.$setResult($_JSON);./
    Keyword ::= k e e p /.$setResult($_KEEP);./
    Keyword ::= l a s t /.$setResult($_LAST);./
    Keyword ::= l e a d /.$setResult($_LEAD);./
    Keyword ::= l e f t /.$setResult($_LEFT);./
    Keyword ::= l i k e /.$setResult($_LIKE);./
    Keyword ::= l i n k /.$setResult($_LINK);./
    Keyword ::= l i s t /.$setResult($_LIST);./
    Keyword ::= l o a d /.$setResult($_LOAD);./
    Keyword ::= l o c k /.$setResult($_LOCK);./
    Keyword ::= l o n g /.$setResult($_LONG);./
    Keyword ::= l o o p /.$setResult($_LOOP);./
    Keyword ::= l p a d /.$setResult($_LPAD);./
    Keyword ::= m a v g /.$setResult($_MAVG);./
    Keyword ::= m o d e /.$setResult($_MODE);./
    Keyword ::= m o r e /.$setResult($_MORE_);./
    Keyword ::= m s u m /.$setResult($_MSUM);./
    Keyword ::= n a m e /.$setResult($_NAME);./
    Keyword ::= n e x t /.$setResult($_NEXT);./
    Keyword ::= n o d e /.$setResult($_NODE);./
    Keyword ::= n o n e /.$setResult($_NONE);./
    Keyword ::= n u l l /.$setResult($_NULL);./
    Keyword ::= o n l y /.$setResult($_ONLY);./
    Keyword ::= o p e n /.$setResult($_OPEN);./
    Keyword ::= o v e r /.$setResult($_OVER);./
    Keyword ::= p a s s /.$setResult($_PASS);./
    Keyword ::= p a t h /.$setResult($_PATH);./
    Keyword ::= p e r m /.$setResult($_PERM);./
    Keyword ::= r a n k /.$setResult($_RANK);./
    Keyword ::= r e a d /.$setResult($_READ);./
    Keyword ::= r e a l /.$setResult($_REAL);./
    Keyword ::= r o l e /.$setResult($_ROLE);./
    Keyword ::= r o o t /.$setResult($_ROOT);./
    Keyword ::= r o w s /.$setResult($_ROWS);./
    Keyword ::= r p a d /.$setResult($_RPAD);./
    Keyword ::= s e e d /.$setResult($_SEED);./
    Keyword ::= s e l f /.$setResult($_SELF);./
    Keyword ::= s e t s /.$setResult($_SETS);./
    Keyword ::= s h o w /.$setResult($_SHOW);./
    Keyword ::= s i g n /.$setResult($_SIGN);./
    Keyword ::= s i n h /.$setResult($_SINH);./
    Keyword ::= s i z e /.$setResult($_SIZE);./
    Keyword ::= s k e w /.$setResult($_SKEW);./
    Keyword ::= s o m e /.$setResult($_SOME);./
    Keyword ::= s q r t /.$setResult($_SQRT);./
    Keyword ::= s t a t /.$setResult($_STAT);./
    Keyword ::= t a n h /.$setResult($_TANH);./
    Keyword ::= t e x t /.$setResult($_TEXT);./
    Keyword ::= t h e n /.$setResult($_THEN);./
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
    Keyword ::= z l i b /.$setResult($_ZLIB);./
    Keyword ::= z o n e /.$setResult($_ZONE);./
    Keyword ::= a b s /.$setResult($_ABS);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a m p /.$setResult($_AMP);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= a s c /.$setResult($_ASC);./
    Keyword ::= a v e /.$setResult($_AVE);./
    Keyword ::= a v g /.$setResult($_AVG);./
    Keyword ::= b o m /.$setResult($_BOM);./
    Keyword ::= b u t /.$setResult($_BUT);./
    Keyword ::= c h r /.$setResult($_CHR);./
    Keyword ::= c n t /.$setResult($_CNT);./
    Keyword ::= c o s /.$setResult($_COS);./
    Keyword ::= c p p /.$setResult($_CPP);./
    Keyword ::= c s v /.$setResult($_CSV);./
    Keyword ::= d a y /.$setResult($_DAY);./
    Keyword ::= d b a /.$setResult($_DBA);./
    Keyword ::= d b c /.$setResult($_DBC);./
    Keyword ::= d e c /.$setResult($_DEC);./
    Keyword ::= d e l /.$setResult($_DEL);./
    Keyword ::= d o t /.$setResult($_DOT);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= e x p /.$setResult($_EXP);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= g e t /.$setResult($_GET);./
    Keyword ::= i f p /.$setResult($_IFP);./
    Keyword ::= i n s /.$setResult($_INS);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= j a r /.$setResult($_JAR);./
    Keyword ::= k e y /.$setResult($_KEY);./
    Keyword ::= l a g /.$setResult($_LAG);./
    Keyword ::= l o g /.$setResult($_LOG);./
    Keyword ::= l o w /.$setResult($_LOW);./
    Keyword ::= m a d /.$setResult($_MAD);./
    Keyword ::= m a p /.$setResult($_MAP);./
    Keyword ::= m a x /.$setResult($_MAX);./
    Keyword ::= m i n /.$setResult($_MIN);./
    Keyword ::= m o d /.$setResult($_MOD);./
    Keyword ::= n e w /.$setResult($_NEW);./
    Keyword ::= n i l /.$setResult($_NIL);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= n o w /.$setResult($_NOW);./
    Keyword ::= n t h /.$setResult($_NTH);./
    Keyword ::= n v l /.$setResult($_NVL);./
    Keyword ::= n v p /.$setResult($_NVP);./
    Keyword ::= o f f /.$setResult($_OFF);./
    Keyword ::= o l d /.$setResult($_OLD);./
    Keyword ::= o u t /.$setResult($_OUT);./
    Keyword ::= r e t /.$setResult($_RET);./
    Keyword ::= r l s /.$setResult($_RLS);./
    Keyword ::= r o w /.$setResult($_ROW);./
    Keyword ::= s a s /.$setResult($_SAS);./
    Keyword ::= s e l /.$setResult($_SEL);./
    Keyword ::= s e q /.$setResult($_SEQ);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= s i n /.$setResult($_SIN);./
    Keyword ::= s p l /.$setResult($_SPL);./
    Keyword ::= s q l /.$setResult($_SQL);./
    Keyword ::= s u m /.$setResult($_SUM);./
    Keyword ::= t a n /.$setResult($_TAN);./
    Keyword ::= t o p /.$setResult($_TOP);./
    Keyword ::= t p a /.$setResult($_TPA);./
    Keyword ::= u d t /.$setResult($_UDT);./
    Keyword ::= u p d /.$setResult($_UPD);./
    Keyword ::= u s e /.$setResult($_USE);./
    Keyword ::= x m l /.$setResult($_XML);./
    Keyword ::= a g /.$setResult($_AG);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= a t /.$setResult($_AT);./
    Keyword ::= b t /.$setResult($_BT);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= c d /.$setResult($_CD);./
    Keyword ::= c m /.$setResult($_CM);./
    Keyword ::= c s /.$setResult($_CS);./
    Keyword ::= c t /.$setResult($_CT);./
    Keyword ::= c v /.$setResult($_CV);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= d r /.$setResult($_DR);./
    Keyword ::= e q /.$setResult($_EQ);./
    Keyword ::= e t /.$setResult($_ET);./
    Keyword ::= g e /.$setResult($_GE);./
    Keyword ::= g o /.$setResult($_GO);./
    Keyword ::= g t /.$setResult($_GT);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= l e /.$setResult($_LE);./
    Keyword ::= l n /.$setResult($_LN);./
    Keyword ::= l t /.$setResult($_LT);./
    Keyword ::= n e /.$setResult($_NE);./
    Keyword ::= n o /.$setResult($_NO);./
    Keyword ::= o a /.$setResult($_OA);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= r u /.$setResult($_RU);./
    Keyword ::= s r /.$setResult($_SR);./
    Keyword ::= s s /.$setResult($_SS);./
    Keyword ::= t o /.$setResult($_TO);./
    Keyword ::= u c /.$setResult($_UC);./
    Keyword ::= c /.$setResult($_C);./
    Keyword ::= g /.$setResult($_G);./
    Keyword ::= k /.$setResult($_K);./
    Keyword ::= m /.$setResult($_M);./
%End
