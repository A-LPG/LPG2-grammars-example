-- Keyword filter for SqlTsql (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.sql.tsql
%options template=KeywordTemplateF.gi
%options fp=SqlTsqlKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ABORT
    ABS
    ABSENT
    ABSOLUTE
    ACCESS
    ACOS
    ACTION
    ACTIVATION
    ACTIVE
    ADD
    ADDRESS
    ADMINISTER
    AES
    AFFINITY
    AFTER
    AGGREGATE
    ALGORITHM
    ALL
    ALLOWED
    ALTER
    ALWAYS
    AND
    ANONYMOUS
    ANY
    APPEND
    APPLICATION
    APPLY
    ARITHABORT
    ARITHIGNORE
    AS
    ASC
    ASCII
    ASIN
    ASSEMBLY
    ASSEMBLYPROPERTY
    ASYMMETRIC
    ATAN
    AT_KEYWORD
    AUDIT
    AUTHENTICATE
    AUTHENTICATION
    AUTHORIZATION
    AUTO
    AUTOMATIC
    AVAILABILITY
    AVG
    BACKUP
    BEFORE
    BEGIN
    BETWEEN
    BIGINT
    BINARY_KEYWORD
    BINDING
    BLOCK
    BLOCKERS
    BLOCKSIZE
    BREAK
    BROKER
    BROWSE
    BUFFER
    BUFFERCOUNT
    BULK
    BY
    CACHE
    CALLED
    CALLER
    CASCADE
    CASE
    CAST
    CATALOG
    CATCH
    CEILING
    CERTENCODED
    CERTIFICATE
    CERTPRIVATEKEY
    CHANGE
    CHANGES
    CHANGETABLE
    CHAR
    CHARINDEX
    CHECK
    CHECKALLOC
    CHECKCATALOG
    CHECKCONSTRAINTS
    CHECKDB
    CHECKFILEGROUP
    CHECKPOINT
    CHECKSUM
    CHECKTABLE
    CLEANTABLE
    CLEANUP
    CLONEDATABASE
    CLOSE
    CLUSTER
    CLUSTERED
    COALESCE
    COLLATE
    COLLECTION
    COLUMN
    COLUMNPROPERTY
    COLUMNS
    COLUMNSTORE
    COMMIT
    COMMITTED
    COMPRESS
    COMPRESSION
    COMPUTE
    CONCAT
    CONFIGURATION
    CONNECT
    CONNECTION
    CONNECTIONPROPERTY
    CONSTRAINT
    CONTAINMENT
    CONTAINS
    CONTAINSTABLE
    CONTENT
    CONTEXT
    CONTINUE
    CONTRACT
    CONTROL
    CONVERSATION
    COOKIE
    COS
    COT
    COUNT
    COUNTER
    CPU
    CREATE
    CREDENTIAL
    CROSS
    CRYPTOGRAPHIC
    CURRENT
    CURSOR
    CYCLE
    DATA
    DATABASE
    DATABASEPROPERTYEX
    DATALENGTH
    DATASPACE
    DATEADD
    DATEDIFF
    DATEFROMPARTS
    DATENAME
    DATEPART
    DATETIMEFROMPARTS
    DATETIMEOFFSETFROMPARTS
    DATETRUNC
    DAY
    DAYOFYEAR
    DAYOFYEAR_ABBR
    DAYS
    DAY_ABBR
    DBCC
    DBREINDEX
    DDL
    DEALLOCATE
    DECLARE
    DECOMPRESS
    DECRYPTION
    DEFAULT
    DEFINITION
    DEGREES
    DELAY
    DELETE
    DELETED
    DENY
    DEPENDENTS
    DES
    DESC
    DESCRIPTION
    DESX
    DETERMINISTIC
    DHCP
    DIAGNOSTICS
    DIALOG
    DIFFERENCE
    DIFFERENTIAL
    DISABLE
    DISABLED
    DISK
    DISTINCT
    DISTRIBUTED
    DISTRIBUTION
    DOCUMENT
    DOUBLE
    DROP
    DROPCLEANBUFFERS
    DUMP
    DYNAMIC
    ELEMENTS
    ELSE
    EMERGENCY
    EMPTY
    ENABLE
    ENABLED
    ENCRYPTED
    ENCRYPTION
    END
    ENDPOINT
    EOMONTH
    ERRLVL
    ERROR
    ESCAPE
    ESTIMATEONLY
    EVENT
    EVENTDATA
    EXCEPT
    EXCLUSIVE
    EXECUTABLE
    EXIST
    EXISTS
    EXIT
    EXP
    EXPAND
    EXPIREDATE
    EXPLICIT
    EXTENSION
    EXTERNAL
    FAILOVER
    FAILURE
    FAILURECONDITIONLEVEL
    FAST
    FETCH
    FILE
    FILEGROUP
    FILEGROUPPROPERTY
    FILEGROWTH
    FILENAME
    FILEPATH
    FILEPROPERTY
    FILEPROPERTYEX
    FILESTREAM
    FILLFACTOR
    FILTER
    FIRST
    FLOOR
    FMTONLY
    FOLLOWING
    FOR
    FORCE
    FORCED
    FORCEPLAN
    FORCESCAN
    FORCESEEK
    FOREIGN
    FORMAT
    FORMATMESSAGE
    FREE
    FREETEXT
    FREETEXTTABLE
    FROM
    FULL
    FULLSCAN
    FULLTEXT
    FULLTEXTCATALOGPROPERTY
    FULLTEXTSERVICEPROPERTY
    FUNCTION
    GB
    GENERATED
    GET
    GETANCESTOR
    GETANSINULL
    GETDATE
    GETDESCENDANT
    GETLEVEL
    GETREPARENTEDVALUE
    GETROOT
    GETUTCDATE
    GLOBAL
    GO
    GOTO
    GOVERNOR
    GRANT
    GREATEST
    GROUP
    GROUPING
    HADR
    HASH
    HASHED
    HAVING
    HEALTHCHECKTIMEOUT
    HEAP
    HIDDEN_KEYWORD
    HIERARCHYID
    HIGH
    HOLDLOCK
    HOUR
    HOURS
    HOUR_ABBR
    IDENTITY
    IDENTITYCOL
    IF
    IIF
    IMMEDIATE
    IMPERSONATE
    IMPORTANCE
    IN
    INCLUDE
    INCREMENT
    INCREMENTAL
    INDEX
    INDEXPROPERTY
    INFINITE
    INIT
    INITIATOR
    INNER
    INPUT
    INSENSITIVE
    INSERT
    INSERTED
    INSTEAD
    INT
    INTERSECT
    INTO
    IO
    IP
    IS
    ISDATE
    ISDESCENDANTOF
    ISJSON
    ISNULL
    ISNUMERIC
    ISOLATION
    ISO_WEEK_ABBR
    JOB
    JOIN
    JSON
    KB
    KEEP
    KEEPDEFAULTS
    KEEPFIXED
    KEEPIDENTITY
    KERBEROS
    KEY
    KEYS
    KEYSET
    KILL
    LAG
    LANGUAGE
    LAST
    LEAD
    LEAST
    LEFT
    LEN
    LEVEL
    LIBRARY
    LIFETIME
    LIKE
    LINENO
    LINKED
    LINUX
    LIST
    LISTENER
    LOAD
    LOCAL
    LOCATION
    LOCK
    LOG
    LOGIN
    LOGINPROPERTY
    LOOP
    LOW
    LOWER
    LTRIM
    MANUAL
    MARK
    MASK
    MASKED
    MASTER
    MATCHED
    MATERIALIZED
    MAX
    MAXDOP
    MAXRECURSION
    MAXSIZE
    MAXTRANSFER
    MAXVALUE
    MB
    MEDIADESCRIPTION
    MEDIANAME
    MEDIUM
    MEMBER
    MERGE
    MESSAGE
    MICROSECOND
    MICROSECOND_ABBR
    MILLISECOND
    MILLISECOND_ABBR
    MIN
    MINUTE
    MINUTES
    MINUTE_ABBR
    MINVALUE
    MIRROR
    MODE
    MODIFY
    MONTH
    MONTH_ABBR
    MOVE
    NAME
    NANOSECOND
    NANOSECOND_ABBR
    NATIONAL
    NCHAR
    NEGOTIATE
    NEWID
    NEWNAME
    NEWSEQUENTIALID
    NEXT
    NO
    NOCHECK
    NOCOUNT
    NODES
    NOEXEC
    NOEXPAND
    NOFORMAT
    NOHOLDLOCK
    NOINDEX
    NOINIT
    NOLOCK
    NONCLUSTERED
    NONE
    NORECOMPUTE
    NORECOVERY
    NOREWIND
    NOSKIP
    NOT
    NOTIFICATION
    NOTIFICATIONS
    NOUNLOAD
    NOWAIT
    NTILE
    NTLM
    NULLIF
    NULL_
    NUMANODE
    NUMBER
    NVARCHAR
    OBJECT
    OBJECTPROPERTY
    OBJECTPROPERTYEX
    OF
    OFF
    OFFLINE
    OFFSET
    OFFSETS
    ON
    ONLINE
    ONLY
    OPEN
    OPENDATASOURCE
    OPENJSON
    OPENQUERY
    OPENROWSET
    OPENXML
    OPERATIONS
    OPTIMISTIC
    OPTIMIZE
    OPTION
    OR
    ORDER
    OUT
    OUTER
    OUTPUT
    OVER
    OVERRIDE
    OWNER
    OWNERSHIP
    PAGE
    PAGECOUNT
    PAGLOCK
    PARAMETERIZATION
    PARSENAME
    PARSEONLY
    PARTIAL
    PARTITION
    PARTITIONS
    PARTNER
    PASSWORD
    PATH
    PATINDEX
    PAUSE
    PERCENT
    PERMISSIONS
    PERSISTED
    PI
    PIVOT
    PLAN
    PLATFORM
    POLICY
    POOL
    PORT
    POWER
    PRECEDING
    PRECISION
    PREDICATE
    PRIMARY
    PRINT
    PRIOR
    PRIORITY
    PRIVATE
    PRIVILEGES
    PROC
    PROCCACHE
    PROCEDURE
    PROCESS
    PROFILE
    PROPERTY
    PROVIDER
    PUBLIC
    PWDCOMPARE
    PWDENCRYPT
    PYTHON
    QUARTER
    QUARTER_ABBR
    QUERY
    QUEUE
    QUOTENAME
    R
    RADIANS
    RAISERROR
    RAND
    RANDOMIZED
    RANGE
    RANK
    RAW
    READ
    READCOMMITTED
    READCOMMITTEDLOCK
    READONLY
    READPAST
    READTEXT
    READUNCOMMITTED
    READWRITE
    REBUILD
    RECEIVE
    RECOMPILE
    RECONFIGURE
    RECOVERY
    REFERENCES
    REGENERATE
    RELATIVE
    REMOTE
    REMOVE
    REORGANIZE
    REPEATABLE
    REPEATABLEREAD
    REPLACE
    REPLICA
    REPLICATE
    REPLICATION
    REQUIRED
    RESAMPLE
    RESET
    RESOURCE
    RESOURCES
    RESTART
    RESTORE
    RESTRICT
    RESUMABLE
    RESUME
    RETAINDAYS
    RETENTION
    RETURN
    RETURNS
    REVERSE
    REVERT
    REVOKE
    REWIND
    RIGHT
    ROBUST
    ROLE
    ROLLBACK
    ROOT
    ROUND
    ROUTE
    ROW
    ROWCOUNT
    ROWGUID
    ROWGUIDCOL
    ROWLOCK
    ROWS
    RTRIM
    RULE
    SAFE
    SAFETY
    SAMPLE
    SAVE
    SCHEDULER
    SCHEMA
    SCHEMABINDING
    SCHEME
    SCOPED
    SCRIPT
    SCROLL
    SEARCH
    SECOND
    SECONDARY
    SECONDS
    SECOND_ABBR
    SECRET
    SECURABLES
    SECURITY
    SECURITYAUDIT
    SELECT
    SELF
    SEMANTICKEYPHRASETABLE
    SEMANTICSIMILARITYDETAILSTABLE
    SEMANTICSIMILARITYTABLE
    SEND
    SENT
    SEQUENCE
    SERIALIZABLE
    SERVER
    SERVERPROPERTY
    SERVICE
    SERVICEBROKER
    SESSION
    SESSIONPROPERTY
    SET
    SETERROR
    SETS
    SETTINGS
    SETUSER
    SHARE
    SHARED
    SHOWCONTIG
    SHOWPLAN
    SHRINKLOG
    SHUTDOWN
    SID
    SIGN
    SIGNATURE
    SIMPLE
    SIN
    SIZE
    SKIP_KEYWORD
    SMALLDATETIMEFROMPARTS
    SMALLINT
    SNAPSHOT
    SOFTNUMA
    SOME
    SOUNDEX
    SOURCE
    SPACE_KEYWORD
    SPARSE
    SPECIFICATION
    SPLIT
    SQL
    SQLDUMPERFLAGS
    SQLDUMPERPATH
    SQLDUMPERTIMEOUT
    SQRT
    SQUARE
    STANDBY
    START
    STARTED
    STATE
    STATIC
    STATISTICS
    STATS
    STATUS
    STATUSONLY
    STDEV
    STDEVP
    STOP
    STOPLIST
    STOPPED
    STR
    STUFF
    SUBJECT
    SUBSCRIBE
    SUBSCRIPTION
    SUBSTRING
    SUM
    SUPPORTED
    SUSPEND
    SWITCH
    SWITCHOFFSET
    SYMMETRIC
    SYNONYM
    SYSDATETIME
    SYSDATETIMEOFFSET
    SYSTEM
    SYSUTCDATETIME
    TABLE
    TABLERESULTS
    TABLESAMPLE
    TABLOCK
    TABLOCKX
    TAKE
    TAN
    TAPE
    TARGET
    TB
    TCP
    TEXTSIZE
    THEN
    THROW
    TIES
    TIME
    TIMEFROMPARTS
    TIMEOUT
    TIMER
    TINYINT
    TO
    TODATETIMEOFFSET
    TOP
    TOSTRING
    TRACE
    TRACKING
    TRAN
    TRANSACTION
    TRANSFER
    TRANSLATE
    TRIGGER
    TRIM
    TRUNCATE
    TRUSTWORTHY
    TRY
    TSEQUAL
    TSQL
    TYPE
    TYPEPROPERTY
    TZOFFSET
    TZOFFSET_ABBR
    UNBOUNDED
    UNCHECKED
    UNCOMMITTED
    UNICODE
    UNION
    UNIQUE
    UNKNOWN
    UNLIMITED
    UNLOCK
    UNMASK
    UNPIVOT
    UNSAFE
    UOW
    UPDATE
    UPDATETEXT
    UPDLOCK
    UPPER
    URL
    USE
    USED
    USER
    USING
    VALIDATION
    VALUE
    VALUES
    VAR
    VARBINARY_KEYWORD
    VARCHAR
    VARP
    VARYING
    VERBOSELOGGING
    VERSION
    VIEW
    VIEWS
    VISIBILITY
    WAIT
    WAITFOR
    WEEK
    WEEKDAY
    WEEKDAY_ABBR
    WEEK_ABBR
    WHEN
    WHERE
    WHILE
    WINDOWS
    WITH
    WITHIN
    WITHOUT
    WITNESS
    WORK
    WORKLOAD
    WRITETEXT
    XLOCK
    XML
    XMLDATA
    XMLNAMESPACES
    XMLSCHEMA
    XSINIL
    YEAR
    YEAR_ABBR
    ZONE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= s e m a n t i c s i m i l a r i t y d e t a i l s t a b l e /.$setResult($_SEMANTICSIMILARITYDETAILSTABLE);./
    Keyword ::= d a t e t i m e o f f s e t f r o m p a r t s /.$setResult($_DATETIMEOFFSETFROMPARTS);./
    Keyword ::= f u l l t e x t c a t a l o g p r o p e r t y /.$setResult($_FULLTEXTCATALOGPROPERTY);./
    Keyword ::= f u l l t e x t s e r v i c e p r o p e r t y /.$setResult($_FULLTEXTSERVICEPROPERTY);./
    Keyword ::= s e m a n t i c s i m i l a r i t y t a b l e /.$setResult($_SEMANTICSIMILARITYTABLE);./
    Keyword ::= s e m a n t i c k e y p h r a s e t a b l e /.$setResult($_SEMANTICKEYPHRASETABLE);./
    Keyword ::= s m a l l d a t e t i m e f r o m p a r t s /.$setResult($_SMALLDATETIMEFROMPARTS);./
    Keyword ::= f a i l u r e c o n d i t i o n l e v e l /.$setResult($_FAILURECONDITIONLEVEL);./
    Keyword ::= c o n n e c t i o n p r o p e r t y /.$setResult($_CONNECTIONPROPERTY);./
    Keyword ::= d a t a b a s e p r o p e r t y e x /.$setResult($_DATABASEPROPERTYEX);./
    Keyword ::= g e t r e p a r e n t e d v a l u e /.$setResult($_GETREPARENTEDVALUE);./
    Keyword ::= h e a l t h c h e c k t i m e o u t /.$setResult($_HEALTHCHECKTIMEOUT);./
    Keyword ::= d a t e t i m e f r o m p a r t s /.$setResult($_DATETIMEFROMPARTS);./
    Keyword ::= f i l e g r o u p p r o p e r t y /.$setResult($_FILEGROUPPROPERTY);./
    Keyword ::= r e a d c o m m i t t e d l o c k /.$setResult($_READCOMMITTEDLOCK);./
    Keyword ::= s y s d a t e t i m e o f f s e t /.$setResult($_SYSDATETIMEOFFSET);./
    Keyword ::= a s s e m b l y p r o p e r t y /.$setResult($_ASSEMBLYPROPERTY);./
    Keyword ::= c h e c k c o n s t r a i n t s /.$setResult($_CHECKCONSTRAINTS);./
    Keyword ::= d r o p c l e a n b u f f e r s /.$setResult($_DROPCLEANBUFFERS);./
    Keyword ::= m e d i a d e s c r i p t i o n /.$setResult($_MEDIADESCRIPTION);./
    Keyword ::= o b j e c t p r o p e r t y e x /.$setResult($_OBJECTPROPERTYEX);./
    Keyword ::= p a r a m e t e r i z a t i o n /.$setResult($_PARAMETERIZATION);./
    Keyword ::= s q l d u m p e r t i m e o u t /.$setResult($_SQLDUMPERTIMEOUT);./
    Keyword ::= t o d a t e t i m e o f f s e t /.$setResult($_TODATETIMEOFFSET);./
    Keyword ::= n e w s e q u e n t i a l i d /.$setResult($_NEWSEQUENTIALID);./
    Keyword ::= r e a d u n c o m m i t t e d /.$setResult($_READUNCOMMITTED);./
    Keyword ::= s e s s i o n p r o p e r t y /.$setResult($_SESSIONPROPERTY);./
    Keyword ::= a u t h e n t i c a t i o n /.$setResult($_AUTHENTICATION);./
    Keyword ::= c e r t p r i v a t e k e y /.$setResult($_CERTPRIVATEKEY);./
    Keyword ::= c h e c k f i l e g r o u p /.$setResult($_CHECKFILEGROUP);./
    Keyword ::= c o l u m n p r o p e r t y /.$setResult($_COLUMNPROPERTY);./
    Keyword ::= f i l e p r o p e r t y e x /.$setResult($_FILEPROPERTYEX);./
    Keyword ::= i s d e s c e n d a n t o f /.$setResult($_ISDESCENDANTOF);./
    Keyword ::= o b j e c t p r o p e r t y /.$setResult($_OBJECTPROPERTY);./
    Keyword ::= o p e n d a t a s o u r c e /.$setResult($_OPENDATASOURCE);./
    Keyword ::= r e p e a t a b l e r e a d /.$setResult($_REPEATABLEREAD);./
    Keyword ::= s e r v e r p r o p e r t y /.$setResult($_SERVERPROPERTY);./
    Keyword ::= s q l d u m p e r f l a g s /.$setResult($_SQLDUMPERFLAGS);./
    Keyword ::= s y s u t c d a t e t i m e /.$setResult($_SYSUTCDATETIME);./
    Keyword ::= v e r b o s e l o g g i n g /.$setResult($_VERBOSELOGGING);./
    Keyword ::= a u t h o r i z a t i o n /.$setResult($_AUTHORIZATION);./
    Keyword ::= c l o n e d a t a b a s e /.$setResult($_CLONEDATABASE);./
    Keyword ::= c o n f i g u r a t i o n /.$setResult($_CONFIGURATION);./
    Keyword ::= c o n t a i n s t a b l e /.$setResult($_CONTAINSTABLE);./
    Keyword ::= c r y p t o g r a p h i c /.$setResult($_CRYPTOGRAPHIC);./
    Keyword ::= d a t e f r o m p a r t s /.$setResult($_DATEFROMPARTS);./
    Keyword ::= d e t e r m i n i s t i c /.$setResult($_DETERMINISTIC);./
    Keyword ::= f o r m a t m e s s a g e /.$setResult($_FORMATMESSAGE);./
    Keyword ::= f r e e t e x t t a b l e /.$setResult($_FREETEXTTABLE);./
    Keyword ::= g e t d e s c e n d a n t /.$setResult($_GETDESCENDANT);./
    Keyword ::= i n d e x p r o p e r t y /.$setResult($_INDEXPROPERTY);./
    Keyword ::= l o g i n p r o p e r t y /.$setResult($_LOGINPROPERTY);./
    Keyword ::= n o t i f i c a t i o n s /.$setResult($_NOTIFICATIONS);./
    Keyword ::= r e a d c o m m i t t e d /.$setResult($_READCOMMITTED);./
    Keyword ::= s c h e m a b i n d i n g /.$setResult($_SCHEMABINDING);./
    Keyword ::= s e c u r i t y a u d i t /.$setResult($_SECURITYAUDIT);./
    Keyword ::= s e r v i c e b r o k e r /.$setResult($_SERVICEBROKER);./
    Keyword ::= s p e c i f i c a t i o n /.$setResult($_SPECIFICATION);./
    Keyword ::= s q l d u m p e r p a t h /.$setResult($_SQLDUMPERPATH);./
    Keyword ::= t i m e f r o m p a r t s /.$setResult($_TIMEFROMPARTS);./
    Keyword ::= x m l n a m e s p a c e s /.$setResult($_XMLNAMESPACES);./
    Keyword ::= a u t h e n t i c a t e /.$setResult($_AUTHENTICATE);./
    Keyword ::= a v a i l a b i l i t y /.$setResult($_AVAILABILITY);./
    Keyword ::= c h e c k c a t a l o g /.$setResult($_CHECKCATALOG);./
    Keyword ::= c o n v e r s a t i o n /.$setResult($_CONVERSATION);./
    Keyword ::= d i f f e r e n t i a l /.$setResult($_DIFFERENTIAL);./
    Keyword ::= d i s t r i b u t i o n /.$setResult($_DISTRIBUTION);./
    Keyword ::= e s t i m a t e o n l y /.$setResult($_ESTIMATEONLY);./
    Keyword ::= f i l e p r o p e r t y /.$setResult($_FILEPROPERTY);./
    Keyword ::= k e e p d e f a u l t s /.$setResult($_KEEPDEFAULTS);./
    Keyword ::= k e e p i d e n t i t y /.$setResult($_KEEPIDENTITY);./
    Keyword ::= m a t e r i a l i z e d /.$setResult($_MATERIALIZED);./
    Keyword ::= m a x r e c u r s i o n /.$setResult($_MAXRECURSION);./
    Keyword ::= n o n c l u s t e r e d /.$setResult($_NONCLUSTERED);./
    Keyword ::= n o t i f i c a t i o n /.$setResult($_NOTIFICATION);./
    Keyword ::= s e r i a l i z a b l e /.$setResult($_SERIALIZABLE);./
    Keyword ::= s u b s c r i p t i o n /.$setResult($_SUBSCRIPTION);./
    Keyword ::= s w i t c h o f f s e t /.$setResult($_SWITCHOFFSET);./
    Keyword ::= t a b l e r e s u l t s /.$setResult($_TABLERESULTS);./
    Keyword ::= t y p e p r o p e r t y /.$setResult($_TYPEPROPERTY);./
    Keyword ::= a p p l i c a t i o n /.$setResult($_APPLICATION);./
    Keyword ::= a r i t h i g n o r e /.$setResult($_ARITHIGNORE);./
    Keyword ::= b u f f e r c o u n t /.$setResult($_BUFFERCOUNT);./
    Keyword ::= c e r t e n c o d e d /.$setResult($_CERTENCODED);./
    Keyword ::= c e r t i f i c a t e /.$setResult($_CERTIFICATE);./
    Keyword ::= c h a n g e t a b l e /.$setResult($_CHANGETABLE);./
    Keyword ::= c o l u m n s t o r e /.$setResult($_COLUMNSTORE);./
    Keyword ::= c o m p r e s s i o n /.$setResult($_COMPRESSION);./
    Keyword ::= c o n t a i n m e n t /.$setResult($_CONTAINMENT);./
    Keyword ::= d e s c r i p t i o n /.$setResult($_DESCRIPTION);./
    Keyword ::= d i a g n o s t i c s /.$setResult($_DIAGNOSTICS);./
    Keyword ::= d i s t r i b u t e d /.$setResult($_DISTRIBUTED);./
    Keyword ::= g e t a n c e s t o r /.$setResult($_GETANCESTOR);./
    Keyword ::= g e t a n s i n u l l /.$setResult($_GETANSINULL);./
    Keyword ::= h i e r a r c h y i d /.$setResult($_HIERARCHYID);./
    Keyword ::= i d e n t i t y c o l /.$setResult($_IDENTITYCOL);./
    Keyword ::= i m p e r s o n a t e /.$setResult($_IMPERSONATE);./
    Keyword ::= i n c r e m e n t a l /.$setResult($_INCREMENTAL);./
    Keyword ::= i n s e n s i t i v e /.$setResult($_INSENSITIVE);./
    Keyword ::= m a x t r a n s f e r /.$setResult($_MAXTRANSFER);./
    Keyword ::= m i c r o s e c o n d /.$setResult($_MICROSECOND);./
    Keyword ::= m i l l i s e c o n d /.$setResult($_MILLISECOND);./
    Keyword ::= n o r e c o m p u t e /.$setResult($_NORECOMPUTE);./
    Keyword ::= p e r m i s s i o n s /.$setResult($_PERMISSIONS);./
    Keyword ::= r e c o n f i g u r e /.$setResult($_RECONFIGURE);./
    Keyword ::= r e p l i c a t i o n /.$setResult($_REPLICATION);./
    Keyword ::= s y s d a t e t i m e /.$setResult($_SYSDATETIME);./
    Keyword ::= t a b l e s a m p l e /.$setResult($_TABLESAMPLE);./
    Keyword ::= t r a n s a c t i o n /.$setResult($_TRANSACTION);./
    Keyword ::= t r u s t w o r t h y /.$setResult($_TRUSTWORTHY);./
    Keyword ::= u n c o m m i t t e d /.$setResult($_UNCOMMITTED);./
    Keyword ::= a c t i v a t i o n /.$setResult($_ACTIVATION);./
    Keyword ::= a d m i n i s t e r /.$setResult($_ADMINISTER);./
    Keyword ::= a r i t h a b o r t /.$setResult($_ARITHABORT);./
    Keyword ::= a s y m m e t r i c /.$setResult($_ASYMMETRIC);./
    Keyword ::= c h e c k a l l o c /.$setResult($_CHECKALLOC);./
    Keyword ::= c h e c k p o i n t /.$setResult($_CHECKPOINT);./
    Keyword ::= c h e c k t a b l e /.$setResult($_CHECKTABLE);./
    Keyword ::= c l e a n t a b l e /.$setResult($_CLEANTABLE);./
    Keyword ::= c o l l e c t i o n /.$setResult($_COLLECTION);./
    Keyword ::= c o n n e c t i o n /.$setResult($_CONNECTION);./
    Keyword ::= c o n s t r a i n t /.$setResult($_CONSTRAINT);./
    Keyword ::= c r e d e n t i a l /.$setResult($_CREDENTIAL);./
    Keyword ::= d a t a l e n g t h /.$setResult($_DATALENGTH);./
    Keyword ::= d e a l l o c a t e /.$setResult($_DEALLOCATE);./
    Keyword ::= d e c o m p r e s s /.$setResult($_DECOMPRESS);./
    Keyword ::= d e c r y p t i o n /.$setResult($_DECRYPTION);./
    Keyword ::= d e f i n i t i o n /.$setResult($_DEFINITION);./
    Keyword ::= d e p e n d e n t s /.$setResult($_DEPENDENTS);./
    Keyword ::= d i f f e r e n c e /.$setResult($_DIFFERENCE);./
    Keyword ::= e n c r y p t i o n /.$setResult($_ENCRYPTION);./
    Keyword ::= e x e c u t a b l e /.$setResult($_EXECUTABLE);./
    Keyword ::= e x p i r e d a t e /.$setResult($_EXPIREDATE);./
    Keyword ::= f i l e g r o w t h /.$setResult($_FILEGROWTH);./
    Keyword ::= f i l e s t r e a m /.$setResult($_FILESTREAM);./
    Keyword ::= f i l l f a c t o r /.$setResult($_FILLFACTOR);./
    Keyword ::= g e t u t c d a t e /.$setResult($_GETUTCDATE);./
    Keyword ::= i m p o r t a n c e /.$setResult($_IMPORTANCE);./
    Keyword ::= n a n o s e c o n d /.$setResult($_NANOSECOND);./
    Keyword ::= n o h o l d l o c k /.$setResult($_NOHOLDLOCK);./
    Keyword ::= n o r e c o v e r y /.$setResult($_NORECOVERY);./
    Keyword ::= o p e n r o w s e t /.$setResult($_OPENROWSET);./
    Keyword ::= o p e r a t i o n s /.$setResult($_OPERATIONS);./
    Keyword ::= o p t i m i s t i c /.$setResult($_OPTIMISTIC);./
    Keyword ::= p a r t i t i o n s /.$setResult($_PARTITIONS);./
    Keyword ::= p r i v i l e g e s /.$setResult($_PRIVILEGES);./
    Keyword ::= p w d c o m p a r e /.$setResult($_PWDCOMPARE);./
    Keyword ::= p w d e n c r y p t /.$setResult($_PWDENCRYPT);./
    Keyword ::= r a n d o m i z e d /.$setResult($_RANDOMIZED);./
    Keyword ::= r e f e r e n c e s /.$setResult($_REFERENCES);./
    Keyword ::= r e g e n e r a t e /.$setResult($_REGENERATE);./
    Keyword ::= r e o r g a n i z e /.$setResult($_REORGANIZE);./
    Keyword ::= r e p e a t a b l e /.$setResult($_REPEATABLE);./
    Keyword ::= r e t a i n d a y s /.$setResult($_RETAINDAYS);./
    Keyword ::= r o w g u i d c o l /.$setResult($_ROWGUIDCOL);./
    Keyword ::= s e c u r a b l e s /.$setResult($_SECURABLES);./
    Keyword ::= s h o w c o n t i g /.$setResult($_SHOWCONTIG);./
    Keyword ::= s t a t i s t i c s /.$setResult($_STATISTICS);./
    Keyword ::= s t a t u s o n l y /.$setResult($_STATUSONLY);./
    Keyword ::= u p d a t e t e x t /.$setResult($_UPDATETEXT);./
    Keyword ::= v a l i d a t i o n /.$setResult($_VALIDATION);./
    Keyword ::= v i s i b i l i t y /.$setResult($_VISIBILITY);./
    Keyword ::= a g g r e g a t e /.$setResult($_AGGREGATE);./
    Keyword ::= a l g o r i t h m /.$setResult($_ALGORITHM);./
    Keyword ::= a n o n y m o u s /.$setResult($_ANONYMOUS);./
    Keyword ::= a u t o m a t i c /.$setResult($_AUTOMATIC);./
    Keyword ::= b l o c k s i z e /.$setResult($_BLOCKSIZE);./
    Keyword ::= c h a r i n d e x /.$setResult($_CHARINDEX);./
    Keyword ::= c l u s t e r e d /.$setResult($_CLUSTERED);./
    Keyword ::= c o m m i t t e d /.$setResult($_COMMITTED);./
    Keyword ::= d a t a s p a c e /.$setResult($_DATASPACE);./
    Keyword ::= d a t e t r u n c /.$setResult($_DATETRUNC);./
    Keyword ::= d a y o f y e a r /.$setResult($_DAYOFYEAR);./
    Keyword ::= d b r e i n d e x /.$setResult($_DBREINDEX);./
    Keyword ::= e m e r g e n c y /.$setResult($_EMERGENCY);./
    Keyword ::= e n c r y p t e d /.$setResult($_ENCRYPTED);./
    Keyword ::= e v e n t d a t a /.$setResult($_EVENTDATA);./
    Keyword ::= e x c l u s i v e /.$setResult($_EXCLUSIVE);./
    Keyword ::= e x t e n s i o n /.$setResult($_EXTENSION);./
    Keyword ::= f i l e g r o u p /.$setResult($_FILEGROUP);./
    Keyword ::= f o l l o w i n g /.$setResult($_FOLLOWING);./
    Keyword ::= f o r c e p l a n /.$setResult($_FORCEPLAN);./
    Keyword ::= f o r c e s c a n /.$setResult($_FORCESCAN);./
    Keyword ::= f o r c e s e e k /.$setResult($_FORCESEEK);./
    Keyword ::= g e n e r a t e d /.$setResult($_GENERATED);./
    Keyword ::= i m m e d i a t e /.$setResult($_IMMEDIATE);./
    Keyword ::= i n c r e m e n t /.$setResult($_INCREMENT);./
    Keyword ::= i n i t i a t o r /.$setResult($_INITIATOR);./
    Keyword ::= i n t e r s e c t /.$setResult($_INTERSECT);./
    Keyword ::= i s n u m e r i c /.$setResult($_ISNUMERIC);./
    Keyword ::= i s o l a t i o n /.$setResult($_ISOLATION);./
    Keyword ::= k e e p f i x e d /.$setResult($_KEEPFIXED);./
    Keyword ::= m e d i a n a m e /.$setResult($_MEDIANAME);./
    Keyword ::= n e g o t i a t e /.$setResult($_NEGOTIATE);./
    Keyword ::= o p e n q u e r y /.$setResult($_OPENQUERY);./
    Keyword ::= o w n e r s h i p /.$setResult($_OWNERSHIP);./
    Keyword ::= p a g e c o u n t /.$setResult($_PAGECOUNT);./
    Keyword ::= p a r s e n a m e /.$setResult($_PARSENAME);./
    Keyword ::= p a r s e o n l y /.$setResult($_PARSEONLY);./
    Keyword ::= p a r t i t i o n /.$setResult($_PARTITION);./
    Keyword ::= p e r s i s t e d /.$setResult($_PERSISTED);./
    Keyword ::= p r e c e d i n g /.$setResult($_PRECEDING);./
    Keyword ::= p r e c i s i o n /.$setResult($_PRECISION);./
    Keyword ::= p r e d i c a t e /.$setResult($_PREDICATE);./
    Keyword ::= p r o c c a c h e /.$setResult($_PROCCACHE);./
    Keyword ::= p r o c e d u r e /.$setResult($_PROCEDURE);./
    Keyword ::= q u o t e n a m e /.$setResult($_QUOTENAME);./
    Keyword ::= r a i s e r r o r /.$setResult($_RAISERROR);./
    Keyword ::= r e a d w r i t e /.$setResult($_READWRITE);./
    Keyword ::= r e c o m p i l e /.$setResult($_RECOMPILE);./
    Keyword ::= r e p l i c a t e /.$setResult($_REPLICATE);./
    Keyword ::= r e s o u r c e s /.$setResult($_RESOURCES);./
    Keyword ::= r e s u m a b l e /.$setResult($_RESUMABLE);./
    Keyword ::= r e t e n t i o n /.$setResult($_RETENTION);./
    Keyword ::= s c h e d u l e r /.$setResult($_SCHEDULER);./
    Keyword ::= s e c o n d a r y /.$setResult($_SECONDARY);./
    Keyword ::= s h r i n k l o g /.$setResult($_SHRINKLOG);./
    Keyword ::= s i g n a t u r e /.$setResult($_SIGNATURE);./
    Keyword ::= s u b s c r i b e /.$setResult($_SUBSCRIBE);./
    Keyword ::= s u b s t r i n g /.$setResult($_SUBSTRING);./
    Keyword ::= s u p p o r t e d /.$setResult($_SUPPORTED);./
    Keyword ::= s y m m e t r i c /.$setResult($_SYMMETRIC);./
    Keyword ::= t r a n s l a t e /.$setResult($_TRANSLATE);./
    Keyword ::= u n b o u n d e d /.$setResult($_UNBOUNDED);./
    Keyword ::= u n c h e c k e d /.$setResult($_UNCHECKED);./
    Keyword ::= u n l i m i t e d /.$setResult($_UNLIMITED);./
    Keyword ::= v a r b i n a r y /.$setResult($_VARBINARY_KEYWORD);./
    Keyword ::= w r i t e t e x t /.$setResult($_WRITETEXT);./
    Keyword ::= x m l s c h e m a /.$setResult($_XMLSCHEMA);./
    Keyword ::= a b s o l u t e /.$setResult($_ABSOLUTE);./
    Keyword ::= a f f i n i t y /.$setResult($_AFFINITY);./
    Keyword ::= a s s e m b l y /.$setResult($_ASSEMBLY);./
    Keyword ::= b l o c k e r s /.$setResult($_BLOCKERS);./
    Keyword ::= c h e c k s u m /.$setResult($_CHECKSUM);./
    Keyword ::= c o a l e s c e /.$setResult($_COALESCE);./
    Keyword ::= c o m p r e s s /.$setResult($_COMPRESS);./
    Keyword ::= c o n t a i n s /.$setResult($_CONTAINS);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= c o n t r a c t /.$setResult($_CONTRACT);./
    Keyword ::= d a t a b a s e /.$setResult($_DATABASE);./
    Keyword ::= d a t e d i f f /.$setResult($_DATEDIFF);./
    Keyword ::= d a t e n a m e /.$setResult($_DATENAME);./
    Keyword ::= d a t e p a r t /.$setResult($_DATEPART);./
    Keyword ::= d i s a b l e d /.$setResult($_DISABLED);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT);./
    Keyword ::= d o c u m e n t /.$setResult($_DOCUMENT);./
    Keyword ::= e l e m e n t s /.$setResult($_ELEMENTS);./
    Keyword ::= e n d p o i n t /.$setResult($_ENDPOINT);./
    Keyword ::= e x p l i c i t /.$setResult($_EXPLICIT);./
    Keyword ::= e x t e r n a l /.$setResult($_EXTERNAL);./
    Keyword ::= f a i l o v e r /.$setResult($_FAILOVER);./
    Keyword ::= f i l e n a m e /.$setResult($_FILENAME);./
    Keyword ::= f i l e p a t h /.$setResult($_FILEPATH);./
    Keyword ::= f r e e t e x t /.$setResult($_FREETEXT);./
    Keyword ::= f u l l s c a n /.$setResult($_FULLSCAN);./
    Keyword ::= f u l l t e x t /.$setResult($_FULLTEXT);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= g e t l e v e l /.$setResult($_GETLEVEL);./
    Keyword ::= g o v e r n o r /.$setResult($_GOVERNOR);./
    Keyword ::= g r e a t e s t /.$setResult($_GREATEST);./
    Keyword ::= g r o u p i n g /.$setResult($_GROUPING);./
    Keyword ::= h o l d l o c k /.$setResult($_HOLDLOCK);./
    Keyword ::= i d e n t i t y /.$setResult($_IDENTITY);./
    Keyword ::= i n f i n i t e /.$setResult($_INFINITE);./
    Keyword ::= i n s e r t e d /.$setResult($_INSERTED);./
    Keyword ::= k e r b e r o s /.$setResult($_KERBEROS);./
    Keyword ::= l a n g u a g e /.$setResult($_LANGUAGE);./
    Keyword ::= l i f e t i m e /.$setResult($_LIFETIME);./
    Keyword ::= l i s t e n e r /.$setResult($_LISTENER);./
    Keyword ::= l o c a t i o n /.$setResult($_LOCATION);./
    Keyword ::= m a x v a l u e /.$setResult($_MAXVALUE);./
    Keyword ::= m i n v a l u e /.$setResult($_MINVALUE);./
    Keyword ::= n a t i o n a l /.$setResult($_NATIONAL);./
    Keyword ::= n o e x p a n d /.$setResult($_NOEXPAND);./
    Keyword ::= n o f o r m a t /.$setResult($_NOFORMAT);./
    Keyword ::= n o r e w i n d /.$setResult($_NOREWIND);./
    Keyword ::= n o u n l o a d /.$setResult($_NOUNLOAD);./
    Keyword ::= n u m a n o d e /.$setResult($_NUMANODE);./
    Keyword ::= n v a r c h a r /.$setResult($_NVARCHAR);./
    Keyword ::= o p e n j s o n /.$setResult($_OPENJSON);./
    Keyword ::= o p t i m i z e /.$setResult($_OPTIMIZE);./
    Keyword ::= o v e r r i d e /.$setResult($_OVERRIDE);./
    Keyword ::= p a s s w o r d /.$setResult($_PASSWORD);./
    Keyword ::= p a t i n d e x /.$setResult($_PATINDEX);./
    Keyword ::= p l a t f o r m /.$setResult($_PLATFORM);./
    Keyword ::= p r i o r i t y /.$setResult($_PRIORITY);./
    Keyword ::= p r o p e r t y /.$setResult($_PROPERTY);./
    Keyword ::= p r o v i d e r /.$setResult($_PROVIDER);./
    Keyword ::= r e a d o n l y /.$setResult($_READONLY);./
    Keyword ::= r e a d p a s t /.$setResult($_READPAST);./
    Keyword ::= r e a d t e x t /.$setResult($_READTEXT);./
    Keyword ::= r e c o v e r y /.$setResult($_RECOVERY);./
    Keyword ::= r e l a t i v e /.$setResult($_RELATIVE);./
    Keyword ::= r e q u i r e d /.$setResult($_REQUIRED);./
    Keyword ::= r e s a m p l e /.$setResult($_RESAMPLE);./
    Keyword ::= r e s o u r c e /.$setResult($_RESOURCE);./
    Keyword ::= r e s t r i c t /.$setResult($_RESTRICT);./
    Keyword ::= r o l l b a c k /.$setResult($_ROLLBACK);./
    Keyword ::= r o w c o u n t /.$setResult($_ROWCOUNT);./
    Keyword ::= s e c u r i t y /.$setResult($_SECURITY);./
    Keyword ::= s e q u e n c e /.$setResult($_SEQUENCE);./
    Keyword ::= s e t e r r o r /.$setResult($_SETERROR);./
    Keyword ::= s e t t i n g s /.$setResult($_SETTINGS);./
    Keyword ::= s h o w p l a n /.$setResult($_SHOWPLAN);./
    Keyword ::= s h u t d o w n /.$setResult($_SHUTDOWN);./
    Keyword ::= s m a l l i n t /.$setResult($_SMALLINT);./
    Keyword ::= s n a p s h o t /.$setResult($_SNAPSHOT);./
    Keyword ::= s o f t n u m a /.$setResult($_SOFTNUMA);./
    Keyword ::= s t o p l i s t /.$setResult($_STOPLIST);./
    Keyword ::= t a b l o c k x /.$setResult($_TABLOCKX);./
    Keyword ::= t e x t s i z e /.$setResult($_TEXTSIZE);./
    Keyword ::= t o s t r i n g /.$setResult($_TOSTRING);./
    Keyword ::= t r a c k i n g /.$setResult($_TRACKING);./
    Keyword ::= t r a n s f e r /.$setResult($_TRANSFER);./
    Keyword ::= t r u n c a t e /.$setResult($_TRUNCATE);./
    Keyword ::= t z o f f s e t /.$setResult($_TZOFFSET);./
    Keyword ::= w o r k l o a d /.$setResult($_WORKLOAD);./
    Keyword ::= a d d r e s s /.$setResult($_ADDRESS);./
    Keyword ::= a l l o w e d /.$setResult($_ALLOWED);./
    Keyword ::= b e t w e e n /.$setResult($_BETWEEN);./
    Keyword ::= b i n d i n g /.$setResult($_BINDING);./
    Keyword ::= c a s c a d e /.$setResult($_CASCADE);./
    Keyword ::= c a t a l o g /.$setResult($_CATALOG);./
    Keyword ::= c e i l i n g /.$setResult($_CEILING);./
    Keyword ::= c h a n g e s /.$setResult($_CHANGES);./
    Keyword ::= c h e c k d b /.$setResult($_CHECKDB);./
    Keyword ::= c l e a n u p /.$setResult($_CLEANUP);./
    Keyword ::= c l u s t e r /.$setResult($_CLUSTER);./
    Keyword ::= c o l l a t e /.$setResult($_COLLATE);./
    Keyword ::= c o l u m n s /.$setResult($_COLUMNS);./
    Keyword ::= c o m p u t e /.$setResult($_COMPUTE);./
    Keyword ::= c o n n e c t /.$setResult($_CONNECT);./
    Keyword ::= c o n t e n t /.$setResult($_CONTENT);./
    Keyword ::= c o n t e x t /.$setResult($_CONTEXT);./
    Keyword ::= c o n t r o l /.$setResult($_CONTROL);./
    Keyword ::= c o u n t e r /.$setResult($_COUNTER);./
    Keyword ::= c u r r e n t /.$setResult($_CURRENT);./
    Keyword ::= d a t e a d d /.$setResult($_DATEADD);./
    Keyword ::= d e c l a r e /.$setResult($_DECLARE);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= d e g r e e s /.$setResult($_DEGREES);./
    Keyword ::= d e l e t e d /.$setResult($_DELETED);./
    Keyword ::= d i s a b l e /.$setResult($_DISABLE);./
    Keyword ::= d y n a m i c /.$setResult($_DYNAMIC);./
    Keyword ::= e n a b l e d /.$setResult($_ENABLED);./
    Keyword ::= e o m o n t h /.$setResult($_EOMONTH);./
    Keyword ::= f a i l u r e /.$setResult($_FAILURE);./
    Keyword ::= f m t o n l y /.$setResult($_FMTONLY);./
    Keyword ::= f o r e i g n /.$setResult($_FOREIGN);./
    Keyword ::= g e t d a t e /.$setResult($_GETDATE);./
    Keyword ::= g e t r o o t /.$setResult($_GETROOT);./
    Keyword ::= i n c l u d e /.$setResult($_INCLUDE);./
    Keyword ::= i n s t e a d /.$setResult($_INSTEAD);./
    Keyword ::= l i b r a r y /.$setResult($_LIBRARY);./
    Keyword ::= m a t c h e d /.$setResult($_MATCHED);./
    Keyword ::= m a x s i z e /.$setResult($_MAXSIZE);./
    Keyword ::= m e s s a g e /.$setResult($_MESSAGE);./
    Keyword ::= m i n u t e s /.$setResult($_MINUTES);./
    Keyword ::= n e w n a m e /.$setResult($_NEWNAME);./
    Keyword ::= n o c h e c k /.$setResult($_NOCHECK);./
    Keyword ::= n o c o u n t /.$setResult($_NOCOUNT);./
    Keyword ::= n o i n d e x /.$setResult($_NOINDEX);./
    Keyword ::= o f f l i n e /.$setResult($_OFFLINE);./
    Keyword ::= o f f s e t s /.$setResult($_OFFSETS);./
    Keyword ::= o p e n x m l /.$setResult($_OPENXML);./
    Keyword ::= p a g l o c k /.$setResult($_PAGLOCK);./
    Keyword ::= p a r t i a l /.$setResult($_PARTIAL);./
    Keyword ::= p a r t n e r /.$setResult($_PARTNER);./
    Keyword ::= p e r c e n t /.$setResult($_PERCENT);./
    Keyword ::= p r i m a r y /.$setResult($_PRIMARY);./
    Keyword ::= p r i v a t e /.$setResult($_PRIVATE);./
    Keyword ::= p r o c e s s /.$setResult($_PROCESS);./
    Keyword ::= p r o f i l e /.$setResult($_PROFILE);./
    Keyword ::= q u a r t e r /.$setResult($_QUARTER);./
    Keyword ::= r a d i a n s /.$setResult($_RADIANS);./
    Keyword ::= r e b u i l d /.$setResult($_REBUILD);./
    Keyword ::= r e c e i v e /.$setResult($_RECEIVE);./
    Keyword ::= r e p l a c e /.$setResult($_REPLACE);./
    Keyword ::= r e p l i c a /.$setResult($_REPLICA);./
    Keyword ::= r e s t a r t /.$setResult($_RESTART);./
    Keyword ::= r e s t o r e /.$setResult($_RESTORE);./
    Keyword ::= r e t u r n s /.$setResult($_RETURNS);./
    Keyword ::= r e v e r s e /.$setResult($_REVERSE);./
    Keyword ::= r o w g u i d /.$setResult($_ROWGUID);./
    Keyword ::= r o w l o c k /.$setResult($_ROWLOCK);./
    Keyword ::= s e c o n d s /.$setResult($_SECONDS);./
    Keyword ::= s e r v i c e /.$setResult($_SERVICE);./
    Keyword ::= s e s s i o n /.$setResult($_SESSION);./
    Keyword ::= s e t u s e r /.$setResult($_SETUSER);./
    Keyword ::= s o u n d e x /.$setResult($_SOUNDEX);./
    Keyword ::= s t a n d b y /.$setResult($_STANDBY);./
    Keyword ::= s t a r t e d /.$setResult($_STARTED);./
    Keyword ::= s t o p p e d /.$setResult($_STOPPED);./
    Keyword ::= s u b j e c t /.$setResult($_SUBJECT);./
    Keyword ::= s u s p e n d /.$setResult($_SUSPEND);./
    Keyword ::= s y n o n y m /.$setResult($_SYNONYM);./
    Keyword ::= t a b l o c k /.$setResult($_TABLOCK);./
    Keyword ::= t i m e o u t /.$setResult($_TIMEOUT);./
    Keyword ::= t i n y i n t /.$setResult($_TINYINT);./
    Keyword ::= t r i g g e r /.$setResult($_TRIGGER);./
    Keyword ::= t s e q u a l /.$setResult($_TSEQUAL);./
    Keyword ::= u n i c o d e /.$setResult($_UNICODE);./
    Keyword ::= u n k n o w n /.$setResult($_UNKNOWN);./
    Keyword ::= u n p i v o t /.$setResult($_UNPIVOT);./
    Keyword ::= u p d l o c k /.$setResult($_UPDLOCK);./
    Keyword ::= v a r c h a r /.$setResult($_VARCHAR);./
    Keyword ::= v a r y i n g /.$setResult($_VARYING);./
    Keyword ::= v e r s i o n /.$setResult($_VERSION);./
    Keyword ::= w a i t f o r /.$setResult($_WAITFOR);./
    Keyword ::= w e e k d a y /.$setResult($_WEEKDAY);./
    Keyword ::= w i n d o w s /.$setResult($_WINDOWS);./
    Keyword ::= w i t h o u t /.$setResult($_WITHOUT);./
    Keyword ::= w i t n e s s /.$setResult($_WITNESS);./
    Keyword ::= x m l d a t a /.$setResult($_XMLDATA);./
    Keyword ::= a b s e n t /.$setResult($_ABSENT);./
    Keyword ::= a c c e s s /.$setResult($_ACCESS);./
    Keyword ::= a c t i o n /.$setResult($_ACTION);./
    Keyword ::= a c t i v e /.$setResult($_ACTIVE);./
    Keyword ::= a l w a y s /.$setResult($_ALWAYS);./
    Keyword ::= a p p e n d /.$setResult($_APPEND);./
    Keyword ::= b a c k u p /.$setResult($_BACKUP);./
    Keyword ::= b e f o r e /.$setResult($_BEFORE);./
    Keyword ::= b i g i n t /.$setResult($_BIGINT);./
    Keyword ::= b i n a r y /.$setResult($_BINARY_KEYWORD);./
    Keyword ::= b r o k e r /.$setResult($_BROKER);./
    Keyword ::= b r o w s e /.$setResult($_BROWSE);./
    Keyword ::= b u f f e r /.$setResult($_BUFFER);./
    Keyword ::= c a l l e d /.$setResult($_CALLED);./
    Keyword ::= c a l l e r /.$setResult($_CALLER);./
    Keyword ::= c h a n g e /.$setResult($_CHANGE);./
    Keyword ::= c o l u m n /.$setResult($_COLUMN);./
    Keyword ::= c o m m i t /.$setResult($_COMMIT);./
    Keyword ::= c o n c a t /.$setResult($_CONCAT);./
    Keyword ::= c o o k i e /.$setResult($_COOKIE);./
    Keyword ::= c r e a t e /.$setResult($_CREATE);./
    Keyword ::= c u r s o r /.$setResult($_CURSOR);./
    Keyword ::= d e l e t e /.$setResult($_DELETE);./
    Keyword ::= d i a l o g /.$setResult($_DIALOG);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= e n a b l e /.$setResult($_ENABLE);./
    Keyword ::= e r r l v l /.$setResult($_ERRLVL);./
    Keyword ::= e s c a p e /.$setResult($_ESCAPE);./
    Keyword ::= e x c e p t /.$setResult($_EXCEPT);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS);./
    Keyword ::= e x p a n d /.$setResult($_EXPAND);./
    Keyword ::= f i l t e r /.$setResult($_FILTER);./
    Keyword ::= f o r c e d /.$setResult($_FORCED);./
    Keyword ::= f o r m a t /.$setResult($_FORMAT);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= h a s h e d /.$setResult($_HASHED);./
    Keyword ::= h a v i n g /.$setResult($_HAVING);./
    Keyword ::= h i d d e n /.$setResult($_HIDDEN_KEYWORD);./
    Keyword ::= i n s e r t /.$setResult($_INSERT);./
    Keyword ::= i s d a t e /.$setResult($_ISDATE);./
    Keyword ::= i s j s o n /.$setResult($_ISJSON);./
    Keyword ::= i s n u l l /.$setResult($_ISNULL);./
    Keyword ::= k e y s e t /.$setResult($_KEYSET);./
    Keyword ::= l i n e n o /.$setResult($_LINENO);./
    Keyword ::= l i n k e d /.$setResult($_LINKED);./
    Keyword ::= m a n u a l /.$setResult($_MANUAL);./
    Keyword ::= m a s k e d /.$setResult($_MASKED);./
    Keyword ::= m a s t e r /.$setResult($_MASTER);./
    Keyword ::= m a x d o p /.$setResult($_MAXDOP);./
    Keyword ::= m e d i u m /.$setResult($_MEDIUM);./
    Keyword ::= m e m b e r /.$setResult($_MEMBER);./
    Keyword ::= m i n u t e /.$setResult($_MINUTE);./
    Keyword ::= m i r r o r /.$setResult($_MIRROR);./
    Keyword ::= m o d i f y /.$setResult($_MODIFY);./
    Keyword ::= n o e x e c /.$setResult($_NOEXEC);./
    Keyword ::= n o i n i t /.$setResult($_NOINIT);./
    Keyword ::= n o l o c k /.$setResult($_NOLOCK);./
    Keyword ::= n o s k i p /.$setResult($_NOSKIP);./
    Keyword ::= n o w a i t /.$setResult($_NOWAIT);./
    Keyword ::= n u l l i f /.$setResult($_NULLIF);./
    Keyword ::= n u m b e r /.$setResult($_NUMBER);./
    Keyword ::= o b j e c t /.$setResult($_OBJECT);./
    Keyword ::= o f f s e t /.$setResult($_OFFSET);./
    Keyword ::= o n l i n e /.$setResult($_ONLINE);./
    Keyword ::= o p t i o n /.$setResult($_OPTION);./
    Keyword ::= o u t p u t /.$setResult($_OUTPUT);./
    Keyword ::= p o l i c y /.$setResult($_POLICY);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= p y t h o n /.$setResult($_PYTHON);./
    Keyword ::= r e m o t e /.$setResult($_REMOTE);./
    Keyword ::= r e m o v e /.$setResult($_REMOVE);./
    Keyword ::= r e s u m e /.$setResult($_RESUME);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= r e v e r t /.$setResult($_REVERT);./
    Keyword ::= r e v o k e /.$setResult($_REVOKE);./
    Keyword ::= r e w i n d /.$setResult($_REWIND);./
    Keyword ::= r o b u s t /.$setResult($_ROBUST);./
    Keyword ::= s a f e t y /.$setResult($_SAFETY);./
    Keyword ::= s a m p l e /.$setResult($_SAMPLE);./
    Keyword ::= s c h e m a /.$setResult($_SCHEMA);./
    Keyword ::= s c h e m e /.$setResult($_SCHEME);./
    Keyword ::= s c o p e d /.$setResult($_SCOPED);./
    Keyword ::= s c r i p t /.$setResult($_SCRIPT);./
    Keyword ::= s c r o l l /.$setResult($_SCROLL);./
    Keyword ::= s e a r c h /.$setResult($_SEARCH);./
    Keyword ::= s e c o n d /.$setResult($_SECOND);./
    Keyword ::= s e c r e t /.$setResult($_SECRET);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s e r v e r /.$setResult($_SERVER);./
    Keyword ::= s h a r e d /.$setResult($_SHARED);./
    Keyword ::= s i m p l e /.$setResult($_SIMPLE);./
    Keyword ::= s o u r c e /.$setResult($_SOURCE);./
    Keyword ::= s p a r s e /.$setResult($_SPARSE);./
    Keyword ::= s q u a r e /.$setResult($_SQUARE);./
    Keyword ::= s t a t i c /.$setResult($_STATIC);./
    Keyword ::= s t a t u s /.$setResult($_STATUS);./
    Keyword ::= s t d e v p /.$setResult($_STDEVP);./
    Keyword ::= s w i t c h /.$setResult($_SWITCH);./
    Keyword ::= s y s t e m /.$setResult($_SYSTEM);./
    Keyword ::= t a r g e t /.$setResult($_TARGET);./
    Keyword ::= u n i q u e /.$setResult($_UNIQUE);./
    Keyword ::= u n l o c k /.$setResult($_UNLOCK);./
    Keyword ::= u n m a s k /.$setResult($_UNMASK);./
    Keyword ::= u n s a f e /.$setResult($_UNSAFE);./
    Keyword ::= u p d a t e /.$setResult($_UPDATE);./
    Keyword ::= v a l u e s /.$setResult($_VALUES);./
    Keyword ::= w i t h i n /.$setResult($_WITHIN);./
    Keyword ::= x s i n i l /.$setResult($_XSINIL);./
    Keyword ::= a b o r t /.$setResult($_ABORT);./
    Keyword ::= a f t e r /.$setResult($_AFTER);./
    Keyword ::= a l t e r /.$setResult($_ALTER);./
    Keyword ::= a p p l y /.$setResult($_APPLY);./
    Keyword ::= a s c i i /.$setResult($_ASCII);./
    Keyword ::= a u d i t /.$setResult($_AUDIT);./
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
    Keyword ::= b l o c k /.$setResult($_BLOCK);./
    Keyword ::= b r e a k /.$setResult($_BREAK);./
    Keyword ::= c a c h e /.$setResult($_CACHE);./
    Keyword ::= c a t c h /.$setResult($_CATCH);./
    Keyword ::= c h e c k /.$setResult($_CHECK);./
    Keyword ::= c l o s e /.$setResult($_CLOSE);./
    Keyword ::= c o u n t /.$setResult($_COUNT);./
    Keyword ::= c r o s s /.$setResult($_CROSS);./
    Keyword ::= c y c l e /.$setResult($_CYCLE);./
    Keyword ::= d e l a y /.$setResult($_DELAY);./
    Keyword ::= e m p t y /.$setResult($_EMPTY);./
    Keyword ::= e r r o r /.$setResult($_ERROR);./
    Keyword ::= e v e n t /.$setResult($_EVENT);./
    Keyword ::= e x i s t /.$setResult($_EXIST);./
    Keyword ::= f e t c h /.$setResult($_FETCH);./
    Keyword ::= f i r s t /.$setResult($_FIRST);./
    Keyword ::= f l o o r /.$setResult($_FLOOR);./
    Keyword ::= f o r c e /.$setResult($_FORCE);./
    Keyword ::= g r a n t /.$setResult($_GRANT);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= h o u r s /.$setResult($_HOURS);./
    Keyword ::= i n d e x /.$setResult($_INDEX);./
    Keyword ::= i n n e r /.$setResult($_INNER);./
    Keyword ::= i n p u t /.$setResult($_INPUT);./
    Keyword ::= i s o w k /.$setResult($_ISO_WEEK_ABBR);./
    Keyword ::= i s o w w /.$setResult($_ISO_WEEK_ABBR);./
    Keyword ::= l e a s t /.$setResult($_LEAST);./
    Keyword ::= l e v e l /.$setResult($_LEVEL);./
    Keyword ::= l i n u x /.$setResult($_LINUX);./
    Keyword ::= l o c a l /.$setResult($_LOCAL);./
    Keyword ::= l o g i n /.$setResult($_LOGIN);./
    Keyword ::= l o w e r /.$setResult($_LOWER);./
    Keyword ::= l t r i m /.$setResult($_LTRIM);./
    Keyword ::= m e r g e /.$setResult($_MERGE);./
    Keyword ::= m o n t h /.$setResult($_MONTH);./
    Keyword ::= n c h a r /.$setResult($_NCHAR);./
    Keyword ::= n e w i d /.$setResult($_NEWID);./
    Keyword ::= n o d e s /.$setResult($_NODES);./
    Keyword ::= n t i l e /.$setResult($_NTILE);./
    Keyword ::= o r d e r /.$setResult($_ORDER);./
    Keyword ::= o u t e r /.$setResult($_OUTER);./
    Keyword ::= o w n e r /.$setResult($_OWNER);./
    Keyword ::= p a u s e /.$setResult($_PAUSE);./
    Keyword ::= p i v o t /.$setResult($_PIVOT);./
    Keyword ::= p o w e r /.$setResult($_POWER);./
    Keyword ::= p r i n t /.$setResult($_PRINT);./
    Keyword ::= p r i o r /.$setResult($_PRIOR);./
    Keyword ::= q u e r y /.$setResult($_QUERY);./
    Keyword ::= q u e u e /.$setResult($_QUEUE);./
    Keyword ::= r a n g e /.$setResult($_RANGE);./
    Keyword ::= r e s e t /.$setResult($_RESET);./
    Keyword ::= r i g h t /.$setResult($_RIGHT);./
    Keyword ::= r o u n d /.$setResult($_ROUND);./
    Keyword ::= r o u t e /.$setResult($_ROUTE);./
    Keyword ::= r t r i m /.$setResult($_RTRIM);./
    Keyword ::= s h a r e /.$setResult($_SHARE);./
    Keyword ::= s p a c e /.$setResult($_SPACE_KEYWORD);./
    Keyword ::= s p l i t /.$setResult($_SPLIT);./
    Keyword ::= s t a r t /.$setResult($_START);./
    Keyword ::= s t a t e /.$setResult($_STATE);./
    Keyword ::= s t a t s /.$setResult($_STATS);./
    Keyword ::= s t d e v /.$setResult($_STDEV);./
    Keyword ::= s t u f f /.$setResult($_STUFF);./
    Keyword ::= t a b l e /.$setResult($_TABLE);./
    Keyword ::= t h r o w /.$setResult($_THROW);./
    Keyword ::= t i m e r /.$setResult($_TIMER);./
    Keyword ::= t r a c e /.$setResult($_TRACE);./
    Keyword ::= u n i o n /.$setResult($_UNION);./
    Keyword ::= u p p e r /.$setResult($_UPPER);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= v a l u e /.$setResult($_VALUE);./
    Keyword ::= v i e w s /.$setResult($_VIEWS);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= x l o c k /.$setResult($_XLOCK);./
    Keyword ::= a c o s /.$setResult($_ACOS);./
    Keyword ::= a s i n /.$setResult($_ASIN);./
    Keyword ::= a t a n /.$setResult($_ATAN);./
    Keyword ::= a u t o /.$setResult($_AUTO);./
    Keyword ::= b u l k /.$setResult($_BULK);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c a s t /.$setResult($_CAST);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= d a t a /.$setResult($_DATA);./
    Keyword ::= d a y s /.$setResult($_DAYS);./
    Keyword ::= d b c c /.$setResult($_DBCC);./
    Keyword ::= d e n y /.$setResult($_DENY);./
    Keyword ::= d e s c /.$setResult($_DESC);./
    Keyword ::= d e s x /.$setResult($_DESX);./
    Keyword ::= d h c p /.$setResult($_DHCP);./
    Keyword ::= d i s k /.$setResult($_DISK);./
    Keyword ::= d r o p /.$setResult($_DROP);./
    Keyword ::= d u m p /.$setResult($_DUMP);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= f a s t /.$setResult($_FAST);./
    Keyword ::= f i l e /.$setResult($_FILE);./
    Keyword ::= f r e e /.$setResult($_FREE);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= f u l l /.$setResult($_FULL);./
    Keyword ::= g o t o /.$setResult($_GOTO);./
    Keyword ::= h a d r /.$setResult($_HADR);./
    Keyword ::= h a s h /.$setResult($_HASH);./
    Keyword ::= h e a p /.$setResult($_HEAP);./
    Keyword ::= h i g h /.$setResult($_HIGH);./
    Keyword ::= h o u r /.$setResult($_HOUR);./
    Keyword ::= i n i t /.$setResult($_INIT);./
    Keyword ::= i n t o /.$setResult($_INTO);./
    Keyword ::= j o i n /.$setResult($_JOIN);./
    Keyword ::= j s o n /.$setResult($_JSON);./
    Keyword ::= k e e p /.$setResult($_KEEP);./
    Keyword ::= k e y s /.$setResult($_KEYS);./
    Keyword ::= k i l l /.$setResult($_KILL);./
    Keyword ::= l a s t /.$setResult($_LAST);./
    Keyword ::= l e a d /.$setResult($_LEAD);./
    Keyword ::= l e f t /.$setResult($_LEFT);./
    Keyword ::= l i k e /.$setResult($_LIKE);./
    Keyword ::= l i s t /.$setResult($_LIST);./
    Keyword ::= l o a d /.$setResult($_LOAD);./
    Keyword ::= l o c k /.$setResult($_LOCK);./
    Keyword ::= l o o p /.$setResult($_LOOP);./
    Keyword ::= m a r k /.$setResult($_MARK);./
    Keyword ::= m a s k /.$setResult($_MASK);./
    Keyword ::= m o d e /.$setResult($_MODE);./
    Keyword ::= m o v e /.$setResult($_MOVE);./
    Keyword ::= n a m e /.$setResult($_NAME);./
    Keyword ::= n e x t /.$setResult($_NEXT);./
    Keyword ::= n o n e /.$setResult($_NONE);./
    Keyword ::= n t l m /.$setResult($_NTLM);./
    Keyword ::= n u l l /.$setResult($_NULL_);./
    Keyword ::= o n l y /.$setResult($_ONLY);./
    Keyword ::= o p e n /.$setResult($_OPEN);./
    Keyword ::= o v e r /.$setResult($_OVER);./
    Keyword ::= p a g e /.$setResult($_PAGE);./
    Keyword ::= p a t h /.$setResult($_PATH);./
    Keyword ::= p l a n /.$setResult($_PLAN);./
    Keyword ::= p o o l /.$setResult($_POOL);./
    Keyword ::= p o r t /.$setResult($_PORT);./
    Keyword ::= p r o c /.$setResult($_PROC);./
    Keyword ::= r a n d /.$setResult($_RAND);./
    Keyword ::= r a n k /.$setResult($_RANK);./
    Keyword ::= r e a d /.$setResult($_READ);./
    Keyword ::= r o l e /.$setResult($_ROLE);./
    Keyword ::= r o o t /.$setResult($_ROOT);./
    Keyword ::= r o w s /.$setResult($_ROWS);./
    Keyword ::= r u l e /.$setResult($_RULE);./
    Keyword ::= s a f e /.$setResult($_SAFE);./
    Keyword ::= s a v e /.$setResult($_SAVE);./
    Keyword ::= s e l f /.$setResult($_SELF);./
    Keyword ::= s e n d /.$setResult($_SEND);./
    Keyword ::= s e n t /.$setResult($_SENT);./
    Keyword ::= s e t s /.$setResult($_SETS);./
    Keyword ::= s i g n /.$setResult($_SIGN);./
    Keyword ::= s i z e /.$setResult($_SIZE);./
    Keyword ::= s k i p /.$setResult($_SKIP_KEYWORD);./
    Keyword ::= s o m e /.$setResult($_SOME);./
    Keyword ::= s q r t /.$setResult($_SQRT);./
    Keyword ::= s t o p /.$setResult($_STOP);./
    Keyword ::= t a k e /.$setResult($_TAKE);./
    Keyword ::= t a p e /.$setResult($_TAPE);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t i e s /.$setResult($_TIES);./
    Keyword ::= t i m e /.$setResult($_TIME);./
    Keyword ::= t r a n /.$setResult($_TRAN);./
    Keyword ::= t r i m /.$setResult($_TRIM);./
    Keyword ::= t s q l /.$setResult($_TSQL);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= u s e d /.$setResult($_USED);./
    Keyword ::= u s e r /.$setResult($_USER);./
    Keyword ::= v a r p /.$setResult($_VARP);./
    Keyword ::= v i e w /.$setResult($_VIEW);./
    Keyword ::= w a i t /.$setResult($_WAIT);./
    Keyword ::= w e e k /.$setResult($_WEEK);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= w o r k /.$setResult($_WORK);./
    Keyword ::= y e a r /.$setResult($_YEAR);./
    Keyword ::= y y y y /.$setResult($_YEAR_ABBR);./
    Keyword ::= z o n e /.$setResult($_ZONE);./
    Keyword ::= a b s /.$setResult($_ABS);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a e s /.$setResult($_AES);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= a s c /.$setResult($_ASC);./
    Keyword ::= a v g /.$setResult($_AVG);./
    Keyword ::= c o s /.$setResult($_COS);./
    Keyword ::= c o t /.$setResult($_COT);./
    Keyword ::= c p u /.$setResult($_CPU);./
    Keyword ::= d a y /.$setResult($_DAY);./
    Keyword ::= d d l /.$setResult($_DDL);./
    Keyword ::= d e s /.$setResult($_DES);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= e x p /.$setResult($_EXP);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= g e t /.$setResult($_GET);./
    Keyword ::= i i f /.$setResult($_IIF);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= j o b /.$setResult($_JOB);./
    Keyword ::= k e y /.$setResult($_KEY);./
    Keyword ::= l a g /.$setResult($_LAG);./
    Keyword ::= l e n /.$setResult($_LEN);./
    Keyword ::= l o g /.$setResult($_LOG);./
    Keyword ::= l o w /.$setResult($_LOW);./
    Keyword ::= m a x /.$setResult($_MAX);./
    Keyword ::= m c s /.$setResult($_MICROSECOND_ABBR);./
    Keyword ::= m i n /.$setResult($_MIN);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= o f f /.$setResult($_OFF);./
    Keyword ::= o u t /.$setResult($_OUT);./
    Keyword ::= r a w /.$setResult($_RAW);./
    Keyword ::= r o w /.$setResult($_ROW);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= s i d /.$setResult($_SID);./
    Keyword ::= s i n /.$setResult($_SIN);./
    Keyword ::= s q l /.$setResult($_SQL);./
    Keyword ::= s t r /.$setResult($_STR);./
    Keyword ::= s u m /.$setResult($_SUM);./
    Keyword ::= t a n /.$setResult($_TAN);./
    Keyword ::= t c p /.$setResult($_TCP);./
    Keyword ::= t o p /.$setResult($_TOP);./
    Keyword ::= t r y /.$setResult($_TRY);./
    Keyword ::= u o w /.$setResult($_UOW);./
    Keyword ::= u r l /.$setResult($_URL);./
    Keyword ::= u s e /.$setResult($_USE);./
    Keyword ::= v a r /.$setResult($_VAR);./
    Keyword ::= x m l /.$setResult($_XML);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= a t /.$setResult($_AT_KEYWORD);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= d d /.$setResult($_DAY_ABBR);./
    Keyword ::= d w /.$setResult($_WEEKDAY_ABBR);./
    Keyword ::= d y /.$setResult($_DAYOFYEAR_ABBR);./
    Keyword ::= g b /.$setResult($_GB);./
    Keyword ::= g o /.$setResult($_GO);./
    Keyword ::= h h /.$setResult($_HOUR_ABBR);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i o /.$setResult($_IO);./
    Keyword ::= i p /.$setResult($_IP);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= k b /.$setResult($_KB);./
    Keyword ::= m b /.$setResult($_MB);./
    Keyword ::= m i /.$setResult($_MINUTE_ABBR);./
    Keyword ::= m m /.$setResult($_MONTH_ABBR);./
    Keyword ::= m s /.$setResult($_MILLISECOND_ABBR);./
    Keyword ::= n o /.$setResult($_NO);./
    Keyword ::= n s /.$setResult($_NANOSECOND_ABBR);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= p i /.$setResult($_PI);./
    Keyword ::= q q /.$setResult($_QUARTER_ABBR);./
    Keyword ::= s s /.$setResult($_SECOND_ABBR);./
    Keyword ::= t b /.$setResult($_TB);./
    Keyword ::= t o /.$setResult($_TO);./
    Keyword ::= t z /.$setResult($_TZOFFSET_ABBR);./
    Keyword ::= w k /.$setResult($_WEEK_ABBR);./
    Keyword ::= w w /.$setResult($_WEEK_ABBR);./
    Keyword ::= y y /.$setResult($_YEAR_ABBR);./
    Keyword ::= d /.$setResult($_DAY_ABBR);./
    Keyword ::= m /.$setResult($_MONTH_ABBR);./
    Keyword ::= n /.$setResult($_MINUTE_ABBR);./
    Keyword ::= q /.$setResult($_QUARTER_ABBR);./
    Keyword ::= r /.$setResult($_R);./
    Keyword ::= s /.$setResult($_SECOND_ABBR);./
    Keyword ::= y /.$setResult($_DAYOFYEAR_ABBR);./
%End
