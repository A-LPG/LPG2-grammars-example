-- Keyword filter for SqlMysqlPositiveTechnologies (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.sql.mysql.Positive_Technologies
%options template=KeywordTemplateF.gi
%options fp=SqlMysqlPositiveTechnologiesKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ABS
    ACCOUNT
    ACOS
    ACTION
    ADD
    ADDDATE
    ADDTIME
    ADMIN
    AFTER
    AGGREGATE
    ALGORITHM
    ALL
    ALTER
    ALWAYS
    ANALYZE
    AND
    ANY
    ARCHIVE
    AREA
    ARRAY
    AS
    ASBINARY
    ASC
    ASCII
    ASIN
    ASTEXT
    ASWKB
    ASWKT
    AT
    ATAN
    ATTRIBUTE
    AUTHORS
    AUTOCOMMIT
    AVG
    BEFORE
    BEGIN
    BENCHMARK
    BETWEEN
    BIGINT
    BIN
    BINARY
    BINLOG
    BIT
    BLACKHOLE
    BLOB
    BLOCK
    BOOL
    BOOLEAN
    BOTH
    BTREE
    BUCKETS
    BUFFER
    BY
    CACHE
    CALL
    CASCADE
    CASCADED
    CASE
    CAST
    CEIL
    CEILING
    CENTROID
    CHAIN
    CHANGE
    CHANGED
    CHANNEL
    CHAR
    CHARACTER
    CHARSET
    CHECK
    CHECKSUM
    CIPHER
    CLIENT
    CLOSE
    CLUSTERING
    COALESCE
    CODE
    COERCIBILITY
    COLLATE
    COLLATION
    COLUMN
    COLUMNS
    COMMENT
    COMMIT
    COMMITTED
    COMPACT
    COMPLETION
    COMPRESS
    COMPRESSED
    CONCAT
    CONCURRENT
    CONDITION
    CONNECT
    CONNECTION
    CONSISTENT
    CONSTRAINT
    CONTAINS
    CONTEXT
    CONTINUE
    CONTRIBUTORS
    CONV
    CONVERT
    COPY
    COS
    COT
    COUNT
    CPU
    CREATE
    CROSS
    CROSSES
    CSV
    CURDATE
    CURRENT
    CURSOR
    CURTIME
    CYCLE
    DATA
    DATABASE
    DATABASES
    DATAFILE
    DATE
    DATEDIFF
    DATETIME
    DAY
    DAYNAME
    DAYOFMONTH
    DAYOFWEEK
    DAYOFYEAR
    DEALLOCATE
    DEC
    DECIMAL
    DECLARE
    DECODE
    DEFAULT
    DEFINER
    DEGREES
    DELAYED
    DELETE
    DESC
    DESCRIBE
    DETERMINISTIC
    DIAGNOSTICS
    DIMENSION
    DIRECTORY
    DISABLE
    DISCARD
    DISJOINT
    DISK
    DISTANCE
    DISTINCT
    DISTINCTROW
    DIV
    DO
    DOUBLE
    DROP
    DUMPFILE
    DUPLICATE
    DYNAMIC
    EACH
    ELSE
    ELSEIF
    ELT
    EMPTY
    ENABLE
    ENCLOSED
    ENCODE
    ENCRYPT
    ENCRYPTED
    ENCRYPTION
    END
    ENDPOINT
    ENDS
    ENFORCED
    ENGINE
    ENGINES
    ENUM
    ENVELOPE
    EQUALS
    ERROR
    ERRORS
    ESCAPE
    ESCAPED
    EUCJPMS
    EUCKR
    EUR
    EVEN
    EVENT
    EVENTS
    EVERY
    EXCEPT
    EXCHANGE
    EXCLUSIVE
    EXECUTE
    EXISTS
    EXIT
    EXP
    EXPIRE
    EXPLAIN
    EXPORT
    EXTENDED
    EXTERIORRING
    EXTRACT
    EXTRACTVALUE
    FALSE
    FAST
    FAULTS
    FEDERATED
    FETCH
    FIELD
    FIELDS
    FILE
    FILTER
    FIRST
    FIXED
    FLOAT
    FLOOR
    FLUSH
    FOLLOWING
    FOLLOWS
    FOR
    FORCE
    FOREIGN
    FORMAT
    FOUND
    FROM
    FULL
    FULLTEXT
    FUNCTION
    GBK
    GENERAL
    GENERATED
    GEOMCOLLECTION
    GEOMCOLLFROMTEXT
    GEOMCOLLFROMWKB
    GEOMETRY
    GEOMETRYCOLLECTION
    GEOMETRYCOLLECTIONFROMTEXT
    GEOMETRYCOLLECTIONFROMWKB
    GEOMETRYFROMTEXT
    GEOMETRYFROMWKB
    GEOMETRYN
    GEOMETRYTYPE
    GEOMFROMTEXT
    GEOMFROMWKB
    GET
    GLENGTH
    GLOBAL
    GRANT
    GRANTS
    GREATEST
    GREEK
    GROUP
    HANDLER
    HASH
    HAVING
    HEBREW
    HELP
    HEX
    HISTOGRAM
    HISTORY
    HOST
    HOSTS
    HOUR
    IDENTIFIED
    IF
    IFNULL
    IGNORE
    IGNORED
    IMPORT
    IN
    INCREMENT
    INDEX
    INDEXES
    INFILE
    INNER
    INNODB
    INOUT
    INPLACE
    INSERT
    INSTALL
    INSTANCE
    INSTANT
    INSTR
    INT
    INTEGER
    INTERIORRINGN
    INTERNAL
    INTERSECTS
    INTERVAL
    INTO
    INVISIBLE
    INVOKE
    INVOKER
    IO
    IPC
    IS
    ISCLOSED
    ISEMPTY
    ISNULL
    ISO
    ISOLATION
    ISSIMPLE
    ISSUER
    ITERATE
    JIS
    JOIN
    JSON
    KEY
    KEYS
    KILL
    LAG
    LAMBDA
    LANGUAGE
    LAST
    LATERAL
    LCASE
    LEAD
    LEADING
    LEAST
    LEAVE
    LEAVES
    LEFT
    LENGTH
    LESS
    LEVEL
    LIKE
    LIMIT
    LINEAR
    LINEFROMTEXT
    LINEFROMWKB
    LINES
    LINESTRING
    LINESTRINGFROMTEXT
    LINESTRINGFROMWKB
    LIST
    LN
    LOAD
    LOCAL
    LOCALTIME
    LOCALTIMESTAMP
    LOCATE
    LOCK
    LOCKED
    LOG
    LOGFILE
    LOGS
    LONG
    LONGBLOB
    LONGTEXT
    LOOP
    LOWER
    LPAD
    LTRIM
    MACCE
    MACROMAN
    MAKEDATE
    MAKETIME
    MASTER
    MATCH
    MAX
    MAXVALUE
    MBRCONTAINS
    MBRDISJOINT
    MBREQUAL
    MBRINTERSECTS
    MBROVERLAPS
    MBRTOUCHES
    MBRWITHIN
    MEDIUM
    MEDIUMBLOB
    MEDIUMINT
    MEDIUMTEXT
    MEMBER
    MEMORY
    MERGE
    MICROSECOND
    MID
    MIDDLEINT
    MIGRATE
    MIN
    MINUTE
    MINVALUE
    MLINEFROMTEXT
    MLINEFROMWKB
    MOD
    MODE
    MODIFIES
    MODIFY
    MONTH
    MONTHNAME
    MPOINTFROMTEXT
    MPOINTFROMWKB
    MPOLYFROMTEXT
    MPOLYFROMWKB
    MULTILINESTRING
    MULTILINESTRINGFROMTEXT
    MULTILINESTRINGFROMWKB
    MULTIPOINT
    MULTIPOINTFROMTEXT
    MULTIPOINTFROMWKB
    MULTIPOLYGON
    MULTIPOLYGONFROMTEXT
    MULTIPOLYGONFROMWKB
    MUTEX
    MYISAM
    MYSQL
    NAME
    NAMES
    NATIONAL
    NATURAL
    NCHAR
    NDB
    NDBCLUSTER
    NESTED
    NEVER
    NEXT
    NO
    NOCACHE
    NOCOPY
    NOCYCLE
    NODEGROUP
    NOMAXVALUE
    NOMINVALUE
    NONE
    NOT
    NOW
    NOWAIT
    NTILE
    NULLIF
    NULL_LITERAL
    NUMBER
    NUMERIC
    NUMGEOMETRIES
    NUMINTERIORRINGS
    NUMPOINTS
    NVARCHAR
    OCT
    ODBC
    OF
    OFFLINE
    OFFSET
    OJ
    ON
    ONE
    ONLINE
    ONLY
    OPEN
    OPTIMIZE
    OPTION
    OPTIONAL
    OPTIONALLY
    OPTIONS
    OR
    ORD
    ORDER
    ORDINALITY
    OUT
    OUTER
    OUTFILE
    OVER
    OVERLAPS
    OWNER
    PAGE
    PARSER
    PARTIAL
    PARTITION
    PARTITIONING
    PARTITIONS
    PASSWORD
    PATH
    PHASE
    PI
    PLUGIN
    PLUGINS
    POINT
    POINTFROMTEXT
    POINTFROMWKB
    POINTN
    POLYFROMTEXT
    POLYFROMWKB
    POLYGON
    POLYGONFROMTEXT
    POLYGONFROMWKB
    PORT
    POSITION
    POW
    POWER
    PRECEDES
    PRECEDING
    PRECISION
    PREPARE
    PRESERVE
    PREV
    PRIMARY
    PRIVILEGES
    PROCEDURE
    PROCESS
    PROCESSLIST
    PROFILE
    PROFILES
    PROXY
    PURGE
    QUARTER
    QUERY
    QUICK
    QUOTE
    RADIANS
    RAND
    RANDOM
    RANGE
    RANK
    READ
    READS
    REAL
    REBUILD
    RECOVER
    RECURSIVE
    REDUNDANT
    REFERENCES
    REGEXP
    RELAY
    RELAYLOG
    RELEASE
    RELOAD
    REMOVE
    RENAME
    REORGANIZE
    REPAIR
    REPEAT
    REPEATABLE
    REPLACE
    REPLICATION
    REQUIRE
    RESET
    RESIGNAL
    RESTART
    RESTRICT
    RESUME
    RETAIN
    RETURN
    RETURNING
    RETURNS
    REUSE
    REVERSE
    REVOKE
    RIGHT
    RLIKE
    ROLE
    ROLLBACK
    ROLLUP
    ROTATE
    ROUND
    ROUTINE
    ROW
    ROWS
    RPAD
    RTREE
    RTRIM
    SAVEPOINT
    SCHEDULE
    SCHEMA
    SCHEMAS
    SECOND
    SECURITY
    SELECT
    SEPARATOR
    SEQUENCE
    SERIAL
    SERIALIZABLE
    SERVER
    SESSION
    SET
    SHA
    SHARE
    SHARED
    SHOW
    SHUTDOWN
    SIGN
    SIGNAL
    SIGNED
    SIMPLE
    SIN
    SJIS
    SKIP_
    SLAVE
    SLEEP
    SLOW
    SMALLINT
    SNAPSHOT
    SOCKET
    SOME
    SONAME
    SOUNDEX
    SOUNDS
    SOURCE
    SPATIAL
    SQL
    SQLEXCEPTION
    SQLSTATE
    SQLWARNING
    SQRT
    SRID
    SSL
    STACKED
    START
    STARTING
    STARTPOINT
    STARTS
    STATEMENT
    STATUS
    STD
    STDDEV
    STOP
    STORAGE
    STORED
    STRCMP
    STRING
    SUBDATE
    SUBJECT
    SUBPARTITION
    SUBPARTITIONS
    SUBSTR
    SUBSTRING
    SUBTIME
    SUM
    SUPER
    SUSPEND
    SWAPS
    SWITCHES
    SYSDATE
    TABLE
    TABLES
    TABLESPACE
    TAN
    TEMPORARY
    TEMPTABLE
    TERMINATED
    TEXT
    THAN
    THEN
    TIME
    TIMEDIFF
    TIMESTAMP
    TIMESTAMPADD
    TIMESTAMPDIFF
    TINYBLOB
    TINYINT
    TINYTEXT
    TO
    TOKUDB
    TOUCHES
    TRADITIONAL
    TRAILING
    TRANSACTION
    TRANSACTIONAL
    TRIGGER
    TRIGGERS
    TRIM
    TRUE
    TRUNCATE
    UCASE
    UJIS
    UNBOUNDED
    UNCOMMITTED
    UNCOMPRESS
    UNDEFINED
    UNDO
    UNDOFILE
    UNHEX
    UNINSTALL
    UNION
    UNIQUE
    UNKNOWN
    UNLOCK
    UNSIGNED
    UNTIL
    UPDATE
    UPDATEXML
    UPGRADE
    UPPER
    USA
    USAGE
    USE
    USER
    USING
    UUID
    VALIDATION
    VALUE
    VALUES
    VARBINARY
    VARCHAR
    VARIABLES
    VARIANCE
    VARYING
    VECTOR
    VERSION
    VIEW
    VIRTUAL
    VISIBLE
    WAIT
    WARNINGS
    WEEK
    WEEKDAY
    WEEKOFYEAR
    WHEN
    WHERE
    WHILE
    WINDOW
    WITH
    WITHIN
    WITHOUT
    WORK
    WRAPPER
    WRITE
    XA
    XML
    XOR
    X_FUNCTION
    YEAR
    YEARWEEK
    YES
    Y_FUNCTION
    ZEROFILL
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= g e o m e t r y c o l l e c t i o n f r o m t e x t /.$setResult($_GEOMETRYCOLLECTIONFROMTEXT);./
    Keyword ::= g e o m e t r y c o l l e c t i o n f r o m w k b /.$setResult($_GEOMETRYCOLLECTIONFROMWKB);./
    Keyword ::= m u l t i l i n e s t r i n g f r o m t e x t /.$setResult($_MULTILINESTRINGFROMTEXT);./
    Keyword ::= m u l t i l i n e s t r i n g f r o m w k b /.$setResult($_MULTILINESTRINGFROMWKB);./
    Keyword ::= m u l t i p o l y g o n f r o m t e x t /.$setResult($_MULTIPOLYGONFROMTEXT);./
    Keyword ::= m u l t i p o l y g o n f r o m w k b /.$setResult($_MULTIPOLYGONFROMWKB);./
    Keyword ::= g e o m e t r y c o l l e c t i o n /.$setResult($_GEOMETRYCOLLECTION);./
    Keyword ::= l i n e s t r i n g f r o m t e x t /.$setResult($_LINESTRINGFROMTEXT);./
    Keyword ::= m u l t i p o i n t f r o m t e x t /.$setResult($_MULTIPOINTFROMTEXT);./
    Keyword ::= l i n e s t r i n g f r o m w k b /.$setResult($_LINESTRINGFROMWKB);./
    Keyword ::= m u l t i p o i n t f r o m w k b /.$setResult($_MULTIPOINTFROMWKB);./
    Keyword ::= g e o m c o l l f r o m t e x t /.$setResult($_GEOMCOLLFROMTEXT);./
    Keyword ::= g e o m e t r y f r o m t e x t /.$setResult($_GEOMETRYFROMTEXT);./
    Keyword ::= n u m i n t e r i o r r i n g s /.$setResult($_NUMINTERIORRINGS);./
    Keyword ::= g e o m c o l l f r o m w k b /.$setResult($_GEOMCOLLFROMWKB);./
    Keyword ::= g e o m e t r y f r o m w k b /.$setResult($_GEOMETRYFROMWKB);./
    Keyword ::= m u l t i l i n e s t r i n g /.$setResult($_MULTILINESTRING);./
    Keyword ::= p o l y g o n f r o m t e x t /.$setResult($_POLYGONFROMTEXT);./
    Keyword ::= g e o m c o l l e c t i o n /.$setResult($_GEOMCOLLECTION);./
    Keyword ::= l o c a l t i m e s t a m p /.$setResult($_LOCALTIMESTAMP);./
    Keyword ::= m p o i n t f r o m t e x t /.$setResult($_MPOINTFROMTEXT);./
    Keyword ::= p o l y g o n f r o m w k b /.$setResult($_POLYGONFROMWKB);./
    Keyword ::= d e t e r m i n i s t i c /.$setResult($_DETERMINISTIC);./
    Keyword ::= i n t e r i o r r i n g n /.$setResult($_INTERIORRINGN);./
    Keyword ::= m b r i n t e r s e c t s /.$setResult($_MBRINTERSECTS);./
    Keyword ::= m l i n e f r o m t e x t /.$setResult($_MLINEFROMTEXT);./
    Keyword ::= m p o i n t f r o m w k b /.$setResult($_MPOINTFROMWKB);./
    Keyword ::= m p o l y f r o m t e x t /.$setResult($_MPOLYFROMTEXT);./
    Keyword ::= n u m g e o m e t r i e s /.$setResult($_NUMGEOMETRIES);./
    Keyword ::= p o i n t f r o m t e x t /.$setResult($_POINTFROMTEXT);./
    Keyword ::= s u b p a r t i t i o n s /.$setResult($_SUBPARTITIONS);./
    Keyword ::= t i m e s t a m p d i f f /.$setResult($_TIMESTAMPDIFF);./
    Keyword ::= t r a n s a c t i o n a l /.$setResult($_TRANSACTIONAL);./
    Keyword ::= c o e r c i b i l i t y /.$setResult($_COERCIBILITY);./
    Keyword ::= c o n t r i b u t o r s /.$setResult($_CONTRIBUTORS);./
    Keyword ::= e x t e r i o r r i n g /.$setResult($_EXTERIORRING);./
    Keyword ::= e x t r a c t v a l u e /.$setResult($_EXTRACTVALUE);./
    Keyword ::= g e o m e t r y t y p e /.$setResult($_GEOMETRYTYPE);./
    Keyword ::= g e o m f r o m t e x t /.$setResult($_GEOMFROMTEXT);./
    Keyword ::= l i n e f r o m t e x t /.$setResult($_LINEFROMTEXT);./
    Keyword ::= m l i n e f r o m w k b /.$setResult($_MLINEFROMWKB);./
    Keyword ::= m p o l y f r o m w k b /.$setResult($_MPOLYFROMWKB);./
    Keyword ::= m u l t i p o l y g o n /.$setResult($_MULTIPOLYGON);./
    Keyword ::= p a r t i t i o n i n g /.$setResult($_PARTITIONING);./
    Keyword ::= p o i n t f r o m w k b /.$setResult($_POINTFROMWKB);./
    Keyword ::= p o l y f r o m t e x t /.$setResult($_POLYFROMTEXT);./
    Keyword ::= s e r i a l i z a b l e /.$setResult($_SERIALIZABLE);./
    Keyword ::= s q l e x c e p t i o n /.$setResult($_SQLEXCEPTION);./
    Keyword ::= s u b p a r t i t i o n /.$setResult($_SUBPARTITION);./
    Keyword ::= t i m e s t a m p a d d /.$setResult($_TIMESTAMPADD);./
    Keyword ::= d i a g n o s t i c s /.$setResult($_DIAGNOSTICS);./
    Keyword ::= d i s t i n c t r o w /.$setResult($_DISTINCTROW);./
    Keyword ::= g e o m f r o m w k b /.$setResult($_GEOMFROMWKB);./
    Keyword ::= l i n e f r o m w k b /.$setResult($_LINEFROMWKB);./
    Keyword ::= m b r c o n t a i n s /.$setResult($_MBRCONTAINS);./
    Keyword ::= m b r d i s j o i n t /.$setResult($_MBRDISJOINT);./
    Keyword ::= m b r o v e r l a p s /.$setResult($_MBROVERLAPS);./
    Keyword ::= m i c r o s e c o n d /.$setResult($_MICROSECOND);./
    Keyword ::= p o l y f r o m w k b /.$setResult($_POLYFROMWKB);./
    Keyword ::= p r o c e s s l i s t /.$setResult($_PROCESSLIST);./
    Keyword ::= r e p l i c a t i o n /.$setResult($_REPLICATION);./
    Keyword ::= t r a d i t i o n a l /.$setResult($_TRADITIONAL);./
    Keyword ::= t r a n s a c t i o n /.$setResult($_TRANSACTION);./
    Keyword ::= u n c o m m i t t e d /.$setResult($_UNCOMMITTED);./
    Keyword ::= a u t o c o m m i t /.$setResult($_AUTOCOMMIT);./
    Keyword ::= c l u s t e r i n g /.$setResult($_CLUSTERING);./
    Keyword ::= c o m p l e t i o n /.$setResult($_COMPLETION);./
    Keyword ::= c o m p r e s s e d /.$setResult($_COMPRESSED);./
    Keyword ::= c o n c u r r e n t /.$setResult($_CONCURRENT);./
    Keyword ::= c o n n e c t i o n /.$setResult($_CONNECTION);./
    Keyword ::= c o n s i s t e n t /.$setResult($_CONSISTENT);./
    Keyword ::= c o n s t r a i n t /.$setResult($_CONSTRAINT);./
    Keyword ::= d a y o f m o n t h /.$setResult($_DAYOFMONTH);./
    Keyword ::= d e a l l o c a t e /.$setResult($_DEALLOCATE);./
    Keyword ::= e n c r y p t i o n /.$setResult($_ENCRYPTION);./
    Keyword ::= i d e n t i f i e d /.$setResult($_IDENTIFIED);./
    Keyword ::= i n t e r s e c t s /.$setResult($_INTERSECTS);./
    Keyword ::= l i n e s t r i n g /.$setResult($_LINESTRING);./
    Keyword ::= m b r t o u c h e s /.$setResult($_MBRTOUCHES);./
    Keyword ::= m e d i u m b l o b /.$setResult($_MEDIUMBLOB);./
    Keyword ::= m e d i u m t e x t /.$setResult($_MEDIUMTEXT);./
    Keyword ::= m u l t i p o i n t /.$setResult($_MULTIPOINT);./
    Keyword ::= n d b c l u s t e r /.$setResult($_NDBCLUSTER);./
    Keyword ::= n o m a x v a l u e /.$setResult($_NOMAXVALUE);./
    Keyword ::= n o m i n v a l u e /.$setResult($_NOMINVALUE);./
    Keyword ::= o p t i o n a l l y /.$setResult($_OPTIONALLY);./
    Keyword ::= o r d i n a l i t y /.$setResult($_ORDINALITY);./
    Keyword ::= p a r t i t i o n s /.$setResult($_PARTITIONS);./
    Keyword ::= p r i v i l e g e s /.$setResult($_PRIVILEGES);./
    Keyword ::= r e f e r e n c e s /.$setResult($_REFERENCES);./
    Keyword ::= r e o r g a n i z e /.$setResult($_REORGANIZE);./
    Keyword ::= r e p e a t a b l e /.$setResult($_REPEATABLE);./
    Keyword ::= s q l w a r n i n g /.$setResult($_SQLWARNING);./
    Keyword ::= s t a r t p o i n t /.$setResult($_STARTPOINT);./
    Keyword ::= t a b l e s p a c e /.$setResult($_TABLESPACE);./
    Keyword ::= t e r m i n a t e d /.$setResult($_TERMINATED);./
    Keyword ::= u n c o m p r e s s /.$setResult($_UNCOMPRESS);./
    Keyword ::= v a l i d a t i o n /.$setResult($_VALIDATION);./
    Keyword ::= w e e k o f y e a r /.$setResult($_WEEKOFYEAR);./
    Keyword ::= a g g r e g a t e /.$setResult($_AGGREGATE);./
    Keyword ::= a l g o r i t h m /.$setResult($_ALGORITHM);./
    Keyword ::= a t t r i b u t e /.$setResult($_ATTRIBUTE);./
    Keyword ::= b e n c h m a r k /.$setResult($_BENCHMARK);./
    Keyword ::= b l a c k h o l e /.$setResult($_BLACKHOLE);./
    Keyword ::= c h a r a c t e r /.$setResult($_CHARACTER);./
    Keyword ::= c o l l a t i o n /.$setResult($_COLLATION);./
    Keyword ::= c o m m i t t e d /.$setResult($_COMMITTED);./
    Keyword ::= c o n d i t i o n /.$setResult($_CONDITION);./
    Keyword ::= d a t a b a s e s /.$setResult($_DATABASES);./
    Keyword ::= d a y o f w e e k /.$setResult($_DAYOFWEEK);./
    Keyword ::= d a y o f y e a r /.$setResult($_DAYOFYEAR);./
    Keyword ::= d i m e n s i o n /.$setResult($_DIMENSION);./
    Keyword ::= d i r e c t o r y /.$setResult($_DIRECTORY);./
    Keyword ::= d u p l i c a t e /.$setResult($_DUPLICATE);./
    Keyword ::= e n c r y p t e d /.$setResult($_ENCRYPTED);./
    Keyword ::= e x c l u s i v e /.$setResult($_EXCLUSIVE);./
    Keyword ::= f e d e r a t e d /.$setResult($_FEDERATED);./
    Keyword ::= f o l l o w i n g /.$setResult($_FOLLOWING);./
    Keyword ::= g e n e r a t e d /.$setResult($_GENERATED);./
    Keyword ::= g e o m e t r y n /.$setResult($_GEOMETRYN);./
    Keyword ::= h i s t o g r a m /.$setResult($_HISTOGRAM);./
    Keyword ::= i n c r e m e n t /.$setResult($_INCREMENT);./
    Keyword ::= i n v i s i b l e /.$setResult($_INVISIBLE);./
    Keyword ::= i s o l a t i o n /.$setResult($_ISOLATION);./
    Keyword ::= l o c a l t i m e /.$setResult($_LOCALTIME);./
    Keyword ::= m b r w i t h i n /.$setResult($_MBRWITHIN);./
    Keyword ::= m e d i u m i n t /.$setResult($_MEDIUMINT);./
    Keyword ::= m i d d l e i n t /.$setResult($_MIDDLEINT);./
    Keyword ::= m o n t h n a m e /.$setResult($_MONTHNAME);./
    Keyword ::= n o d e g r o u p /.$setResult($_NODEGROUP);./
    Keyword ::= n u m p o i n t s /.$setResult($_NUMPOINTS);./
    Keyword ::= p a r t i t i o n /.$setResult($_PARTITION);./
    Keyword ::= p r e c e d i n g /.$setResult($_PRECEDING);./
    Keyword ::= p r e c i s i o n /.$setResult($_PRECISION);./
    Keyword ::= p r o c e d u r e /.$setResult($_PROCEDURE);./
    Keyword ::= r e c u r s i v e /.$setResult($_RECURSIVE);./
    Keyword ::= r e d u n d a n t /.$setResult($_REDUNDANT);./
    Keyword ::= r e t u r n i n g /.$setResult($_RETURNING);./
    Keyword ::= s a v e p o i n t /.$setResult($_SAVEPOINT);./
    Keyword ::= s e p a r a t o r /.$setResult($_SEPARATOR);./
    Keyword ::= s t a t e m e n t /.$setResult($_STATEMENT);./
    Keyword ::= s u b s t r i n g /.$setResult($_SUBSTRING);./
    Keyword ::= t e m p o r a r y /.$setResult($_TEMPORARY);./
    Keyword ::= t e m p t a b l e /.$setResult($_TEMPTABLE);./
    Keyword ::= t i m e s t a m p /.$setResult($_TIMESTAMP);./
    Keyword ::= u n b o u n d e d /.$setResult($_UNBOUNDED);./
    Keyword ::= u n d e f i n e d /.$setResult($_UNDEFINED);./
    Keyword ::= u n i n s t a l l /.$setResult($_UNINSTALL);./
    Keyword ::= u p d a t e x m l /.$setResult($_UPDATEXML);./
    Keyword ::= v a r b i n a r y /.$setResult($_VARBINARY);./
    Keyword ::= v a r i a b l e s /.$setResult($_VARIABLES);./
    Keyword ::= a s b i n a r y /.$setResult($_ASBINARY);./
    Keyword ::= c a s c a d e d /.$setResult($_CASCADED);./
    Keyword ::= c e n t r o i d /.$setResult($_CENTROID);./
    Keyword ::= c h e c k s u m /.$setResult($_CHECKSUM);./
    Keyword ::= c o a l e s c e /.$setResult($_COALESCE);./
    Keyword ::= c o m p r e s s /.$setResult($_COMPRESS);./
    Keyword ::= c o n t a i n s /.$setResult($_CONTAINS);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE);./
    Keyword ::= d a t a b a s e /.$setResult($_DATABASE);./
    Keyword ::= d a t a f i l e /.$setResult($_DATAFILE);./
    Keyword ::= d a t e d i f f /.$setResult($_DATEDIFF);./
    Keyword ::= d a t e t i m e /.$setResult($_DATETIME);./
    Keyword ::= d e s c r i b e /.$setResult($_DESCRIBE);./
    Keyword ::= d i s j o i n t /.$setResult($_DISJOINT);./
    Keyword ::= d i s t a n c e /.$setResult($_DISTANCE);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT);./
    Keyword ::= d u m p f i l e /.$setResult($_DUMPFILE);./
    Keyword ::= e n c l o s e d /.$setResult($_ENCLOSED);./
    Keyword ::= e n d p o i n t /.$setResult($_ENDPOINT);./
    Keyword ::= e n f o r c e d /.$setResult($_ENFORCED);./
    Keyword ::= e n v e l o p e /.$setResult($_ENVELOPE);./
    Keyword ::= e x c h a n g e /.$setResult($_EXCHANGE);./
    Keyword ::= e x t e n d e d /.$setResult($_EXTENDED);./
    Keyword ::= f u l l t e x t /.$setResult($_FULLTEXT);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= g e o m e t r y /.$setResult($_GEOMETRY);./
    Keyword ::= g r e a t e s t /.$setResult($_GREATEST);./
    Keyword ::= i n s t a n c e /.$setResult($_INSTANCE);./
    Keyword ::= i n t e r n a l /.$setResult($_INTERNAL);./
    Keyword ::= i n t e r v a l /.$setResult($_INTERVAL);./
    Keyword ::= i s c l o s e d /.$setResult($_ISCLOSED);./
    Keyword ::= i s s i m p l e /.$setResult($_ISSIMPLE);./
    Keyword ::= l a n g u a g e /.$setResult($_LANGUAGE);./
    Keyword ::= l o n g b l o b /.$setResult($_LONGBLOB);./
    Keyword ::= l o n g t e x t /.$setResult($_LONGTEXT);./
    Keyword ::= m a c r o m a n /.$setResult($_MACROMAN);./
    Keyword ::= m a k e d a t e /.$setResult($_MAKEDATE);./
    Keyword ::= m a k e t i m e /.$setResult($_MAKETIME);./
    Keyword ::= m a x v a l u e /.$setResult($_MAXVALUE);./
    Keyword ::= m b r e q u a l /.$setResult($_MBREQUAL);./
    Keyword ::= m i n v a l u e /.$setResult($_MINVALUE);./
    Keyword ::= m o d i f i e s /.$setResult($_MODIFIES);./
    Keyword ::= n a t i o n a l /.$setResult($_NATIONAL);./
    Keyword ::= n v a r c h a r /.$setResult($_NVARCHAR);./
    Keyword ::= o p t i m i z e /.$setResult($_OPTIMIZE);./
    Keyword ::= o p t i o n a l /.$setResult($_OPTIONAL);./
    Keyword ::= o v e r l a p s /.$setResult($_OVERLAPS);./
    Keyword ::= p a s s w o r d /.$setResult($_PASSWORD);./
    Keyword ::= p o s i t i o n /.$setResult($_POSITION);./
    Keyword ::= p r e c e d e s /.$setResult($_PRECEDES);./
    Keyword ::= p r e s e r v e /.$setResult($_PRESERVE);./
    Keyword ::= p r o f i l e s /.$setResult($_PROFILES);./
    Keyword ::= r e l a y l o g /.$setResult($_RELAYLOG);./
    Keyword ::= r e s i g n a l /.$setResult($_RESIGNAL);./
    Keyword ::= r e s t r i c t /.$setResult($_RESTRICT);./
    Keyword ::= r o l l b a c k /.$setResult($_ROLLBACK);./
    Keyword ::= s c h e d u l e /.$setResult($_SCHEDULE);./
    Keyword ::= s e c u r i t y /.$setResult($_SECURITY);./
    Keyword ::= s e q u e n c e /.$setResult($_SEQUENCE);./
    Keyword ::= s h u t d o w n /.$setResult($_SHUTDOWN);./
    Keyword ::= s m a l l i n t /.$setResult($_SMALLINT);./
    Keyword ::= s n a p s h o t /.$setResult($_SNAPSHOT);./
    Keyword ::= s q l s t a t e /.$setResult($_SQLSTATE);./
    Keyword ::= s t a r t i n g /.$setResult($_STARTING);./
    Keyword ::= s w i t c h e s /.$setResult($_SWITCHES);./
    Keyword ::= t i m e d i f f /.$setResult($_TIMEDIFF);./
    Keyword ::= t i n y b l o b /.$setResult($_TINYBLOB);./
    Keyword ::= t i n y t e x t /.$setResult($_TINYTEXT);./
    Keyword ::= t r a i l i n g /.$setResult($_TRAILING);./
    Keyword ::= t r i g g e r s /.$setResult($_TRIGGERS);./
    Keyword ::= t r u n c a t e /.$setResult($_TRUNCATE);./
    Keyword ::= u n d o f i l e /.$setResult($_UNDOFILE);./
    Keyword ::= u n s i g n e d /.$setResult($_UNSIGNED);./
    Keyword ::= v a r i a n c e /.$setResult($_VARIANCE);./
    Keyword ::= w a r n i n g s /.$setResult($_WARNINGS);./
    Keyword ::= y e a r w e e k /.$setResult($_YEARWEEK);./
    Keyword ::= z e r o f i l l /.$setResult($_ZEROFILL);./
    Keyword ::= a c c o u n t /.$setResult($_ACCOUNT);./
    Keyword ::= a d d d a t e /.$setResult($_ADDDATE);./
    Keyword ::= a d d t i m e /.$setResult($_ADDTIME);./
    Keyword ::= a n a l y z e /.$setResult($_ANALYZE);./
    Keyword ::= a r c h i v e /.$setResult($_ARCHIVE);./
    Keyword ::= a u t h o r s /.$setResult($_AUTHORS);./
    Keyword ::= b e t w e e n /.$setResult($_BETWEEN);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= b u c k e t s /.$setResult($_BUCKETS);./
    Keyword ::= c a s c a d e /.$setResult($_CASCADE);./
    Keyword ::= c e i l i n g /.$setResult($_CEILING);./
    Keyword ::= c h a n g e d /.$setResult($_CHANGED);./
    Keyword ::= c h a n n e l /.$setResult($_CHANNEL);./
    Keyword ::= c h a r s e t /.$setResult($_CHARSET);./
    Keyword ::= c o l l a t e /.$setResult($_COLLATE);./
    Keyword ::= c o l u m n s /.$setResult($_COLUMNS);./
    Keyword ::= c o m m e n t /.$setResult($_COMMENT);./
    Keyword ::= c o m p a c t /.$setResult($_COMPACT);./
    Keyword ::= c o n n e c t /.$setResult($_CONNECT);./
    Keyword ::= c o n t e x t /.$setResult($_CONTEXT);./
    Keyword ::= c o n v e r t /.$setResult($_CONVERT);./
    Keyword ::= c r o s s e s /.$setResult($_CROSSES);./
    Keyword ::= c u r d a t e /.$setResult($_CURDATE);./
    Keyword ::= c u r r e n t /.$setResult($_CURRENT);./
    Keyword ::= c u r t i m e /.$setResult($_CURTIME);./
    Keyword ::= d a y n a m e /.$setResult($_DAYNAME);./
    Keyword ::= d e c i m a l /.$setResult($_DECIMAL);./
    Keyword ::= d e c l a r e /.$setResult($_DECLARE);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= d e f i n e r /.$setResult($_DEFINER);./
    Keyword ::= d e g r e e s /.$setResult($_DEGREES);./
    Keyword ::= d e l a y e d /.$setResult($_DELAYED);./
    Keyword ::= d i s a b l e /.$setResult($_DISABLE);./
    Keyword ::= d i s c a r d /.$setResult($_DISCARD);./
    Keyword ::= d y n a m i c /.$setResult($_DYNAMIC);./
    Keyword ::= e n c r y p t /.$setResult($_ENCRYPT);./
    Keyword ::= e n g i n e s /.$setResult($_ENGINES);./
    Keyword ::= e s c a p e d /.$setResult($_ESCAPED);./
    Keyword ::= e u c j p m s /.$setResult($_EUCJPMS);./
    Keyword ::= e x e c u t e /.$setResult($_EXECUTE);./
    Keyword ::= e x p l a i n /.$setResult($_EXPLAIN);./
    Keyword ::= e x t r a c t /.$setResult($_EXTRACT);./
    Keyword ::= f o l l o w s /.$setResult($_FOLLOWS);./
    Keyword ::= f o r e i g n /.$setResult($_FOREIGN);./
    Keyword ::= g e n e r a l /.$setResult($_GENERAL);./
    Keyword ::= g l e n g t h /.$setResult($_GLENGTH);./
    Keyword ::= h a n d l e r /.$setResult($_HANDLER);./
    Keyword ::= h i s t o r y /.$setResult($_HISTORY);./
    Keyword ::= i g n o r e d /.$setResult($_IGNORED);./
    Keyword ::= i n d e x e s /.$setResult($_INDEXES);./
    Keyword ::= i n p l a c e /.$setResult($_INPLACE);./
    Keyword ::= i n s t a l l /.$setResult($_INSTALL);./
    Keyword ::= i n s t a n t /.$setResult($_INSTANT);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= i n v o k e r /.$setResult($_INVOKER);./
    Keyword ::= i s e m p t y /.$setResult($_ISEMPTY);./
    Keyword ::= i t e r a t e /.$setResult($_ITERATE);./
    Keyword ::= l a t e r a l /.$setResult($_LATERAL);./
    Keyword ::= l e a d i n g /.$setResult($_LEADING);./
    Keyword ::= l o g f i l e /.$setResult($_LOGFILE);./
    Keyword ::= m i g r a t e /.$setResult($_MIGRATE);./
    Keyword ::= n a t u r a l /.$setResult($_NATURAL);./
    Keyword ::= n o c a c h e /.$setResult($_NOCACHE);./
    Keyword ::= n o c y c l e /.$setResult($_NOCYCLE);./
    Keyword ::= n u m e r i c /.$setResult($_NUMERIC);./
    Keyword ::= o f f l i n e /.$setResult($_OFFLINE);./
    Keyword ::= o p t i o n s /.$setResult($_OPTIONS);./
    Keyword ::= o u t f i l e /.$setResult($_OUTFILE);./
    Keyword ::= p a r t i a l /.$setResult($_PARTIAL);./
    Keyword ::= p l u g i n s /.$setResult($_PLUGINS);./
    Keyword ::= p o l y g o n /.$setResult($_POLYGON);./
    Keyword ::= p r e p a r e /.$setResult($_PREPARE);./
    Keyword ::= p r i m a r y /.$setResult($_PRIMARY);./
    Keyword ::= p r o c e s s /.$setResult($_PROCESS);./
    Keyword ::= p r o f i l e /.$setResult($_PROFILE);./
    Keyword ::= q u a r t e r /.$setResult($_QUARTER);./
    Keyword ::= r a d i a n s /.$setResult($_RADIANS);./
    Keyword ::= r e b u i l d /.$setResult($_REBUILD);./
    Keyword ::= r e c o v e r /.$setResult($_RECOVER);./
    Keyword ::= r e l e a s e /.$setResult($_RELEASE);./
    Keyword ::= r e p l a c e /.$setResult($_REPLACE);./
    Keyword ::= r e q u i r e /.$setResult($_REQUIRE);./
    Keyword ::= r e s t a r t /.$setResult($_RESTART);./
    Keyword ::= r e t u r n s /.$setResult($_RETURNS);./
    Keyword ::= r e v e r s e /.$setResult($_REVERSE);./
    Keyword ::= r o u t i n e /.$setResult($_ROUTINE);./
    Keyword ::= s c h e m a s /.$setResult($_SCHEMAS);./
    Keyword ::= s e s s i o n /.$setResult($_SESSION);./
    Keyword ::= s o u n d e x /.$setResult($_SOUNDEX);./
    Keyword ::= s p a t i a l /.$setResult($_SPATIAL);./
    Keyword ::= s t a c k e d /.$setResult($_STACKED);./
    Keyword ::= s t o r a g e /.$setResult($_STORAGE);./
    Keyword ::= s u b d a t e /.$setResult($_SUBDATE);./
    Keyword ::= s u b j e c t /.$setResult($_SUBJECT);./
    Keyword ::= s u b t i m e /.$setResult($_SUBTIME);./
    Keyword ::= s u s p e n d /.$setResult($_SUSPEND);./
    Keyword ::= s y s d a t e /.$setResult($_SYSDATE);./
    Keyword ::= t i n y i n t /.$setResult($_TINYINT);./
    Keyword ::= t o u c h e s /.$setResult($_TOUCHES);./
    Keyword ::= t r i g g e r /.$setResult($_TRIGGER);./
    Keyword ::= u n k n o w n /.$setResult($_UNKNOWN);./
    Keyword ::= u p g r a d e /.$setResult($_UPGRADE);./
    Keyword ::= v a r c h a r /.$setResult($_VARCHAR);./
    Keyword ::= v a r y i n g /.$setResult($_VARYING);./
    Keyword ::= v e r s i o n /.$setResult($_VERSION);./
    Keyword ::= v i r t u a l /.$setResult($_VIRTUAL);./
    Keyword ::= v i s i b l e /.$setResult($_VISIBLE);./
    Keyword ::= w e e k d a y /.$setResult($_WEEKDAY);./
    Keyword ::= w i t h o u t /.$setResult($_WITHOUT);./
    Keyword ::= w r a p p e r /.$setResult($_WRAPPER);./
    Keyword ::= a c t i o n /.$setResult($_ACTION);./
    Keyword ::= a l w a y s /.$setResult($_ALWAYS);./
    Keyword ::= a s t e x t /.$setResult($_ASTEXT);./
    Keyword ::= b e f o r e /.$setResult($_BEFORE);./
    Keyword ::= b i g i n t /.$setResult($_BIGINT);./
    Keyword ::= b i n a r y /.$setResult($_BINARY);./
    Keyword ::= b i n l o g /.$setResult($_BINLOG);./
    Keyword ::= b u f f e r /.$setResult($_BUFFER);./
    Keyword ::= c h a n g e /.$setResult($_CHANGE);./
    Keyword ::= c i p h e r /.$setResult($_CIPHER);./
    Keyword ::= c l i e n t /.$setResult($_CLIENT);./
    Keyword ::= c o l u m n /.$setResult($_COLUMN);./
    Keyword ::= c o m m i t /.$setResult($_COMMIT);./
    Keyword ::= c o n c a t /.$setResult($_CONCAT);./
    Keyword ::= c r e a t e /.$setResult($_CREATE);./
    Keyword ::= c u r s o r /.$setResult($_CURSOR);./
    Keyword ::= d e c o d e /.$setResult($_DECODE);./
    Keyword ::= d e l e t e /.$setResult($_DELETE);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= e l s e i f /.$setResult($_ELSEIF);./
    Keyword ::= e n a b l e /.$setResult($_ENABLE);./
    Keyword ::= e n c o d e /.$setResult($_ENCODE);./
    Keyword ::= e n g i n e /.$setResult($_ENGINE);./
    Keyword ::= e q u a l s /.$setResult($_EQUALS);./
    Keyword ::= e r r o r s /.$setResult($_ERRORS);./
    Keyword ::= e s c a p e /.$setResult($_ESCAPE);./
    Keyword ::= e v e n t s /.$setResult($_EVENTS);./
    Keyword ::= e x c e p t /.$setResult($_EXCEPT);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS);./
    Keyword ::= e x p i r e /.$setResult($_EXPIRE);./
    Keyword ::= e x p o r t /.$setResult($_EXPORT);./
    Keyword ::= f a u l t s /.$setResult($_FAULTS);./
    Keyword ::= f i e l d s /.$setResult($_FIELDS);./
    Keyword ::= f i l t e r /.$setResult($_FILTER);./
    Keyword ::= f o r m a t /.$setResult($_FORMAT);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= g r a n t s /.$setResult($_GRANTS);./
    Keyword ::= h a v i n g /.$setResult($_HAVING);./
    Keyword ::= h e b r e w /.$setResult($_HEBREW);./
    Keyword ::= i f n u l l /.$setResult($_IFNULL);./
    Keyword ::= i g n o r e /.$setResult($_IGNORE);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT);./
    Keyword ::= i n f i l e /.$setResult($_INFILE);./
    Keyword ::= i n n o d b /.$setResult($_INNODB);./
    Keyword ::= i n s e r t /.$setResult($_INSERT);./
    Keyword ::= i n v o k e /.$setResult($_INVOKE);./
    Keyword ::= i s n u l l /.$setResult($_ISNULL);./
    Keyword ::= i s s u e r /.$setResult($_ISSUER);./
    Keyword ::= l a m b d a /.$setResult($_LAMBDA);./
    Keyword ::= l e a v e s /.$setResult($_LEAVES);./
    Keyword ::= l e n g t h /.$setResult($_LENGTH);./
    Keyword ::= l i n e a r /.$setResult($_LINEAR);./
    Keyword ::= l o c a t e /.$setResult($_LOCATE);./
    Keyword ::= l o c k e d /.$setResult($_LOCKED);./
    Keyword ::= m a s t e r /.$setResult($_MASTER);./
    Keyword ::= m e d i u m /.$setResult($_MEDIUM);./
    Keyword ::= m e m b e r /.$setResult($_MEMBER);./
    Keyword ::= m e m o r y /.$setResult($_MEMORY);./
    Keyword ::= m i n u t e /.$setResult($_MINUTE);./
    Keyword ::= m o d i f y /.$setResult($_MODIFY);./
    Keyword ::= m y i s a m /.$setResult($_MYISAM);./
    Keyword ::= n e s t e d /.$setResult($_NESTED);./
    Keyword ::= n o c o p y /.$setResult($_NOCOPY);./
    Keyword ::= n o w a i t /.$setResult($_NOWAIT);./
    Keyword ::= n u l l i f /.$setResult($_NULLIF);./
    Keyword ::= n u m b e r /.$setResult($_NUMBER);./
    Keyword ::= o f f s e t /.$setResult($_OFFSET);./
    Keyword ::= o n l i n e /.$setResult($_ONLINE);./
    Keyword ::= o p t i o n /.$setResult($_OPTION);./
    Keyword ::= p a r s e r /.$setResult($_PARSER);./
    Keyword ::= p l u g i n /.$setResult($_PLUGIN);./
    Keyword ::= p o i n t n /.$setResult($_POINTN);./
    Keyword ::= r a n d o m /.$setResult($_RANDOM);./
    Keyword ::= r e g e x p /.$setResult($_REGEXP);./
    Keyword ::= r e l o a d /.$setResult($_RELOAD);./
    Keyword ::= r e m o v e /.$setResult($_REMOVE);./
    Keyword ::= r e n a m e /.$setResult($_RENAME);./
    Keyword ::= r e p a i r /.$setResult($_REPAIR);./
    Keyword ::= r e p e a t /.$setResult($_REPEAT);./
    Keyword ::= r e s u m e /.$setResult($_RESUME);./
    Keyword ::= r e t a i n /.$setResult($_RETAIN);./
    Keyword ::= r e t u r n /.$setResult($_RETURN);./
    Keyword ::= r e v o k e /.$setResult($_REVOKE);./
    Keyword ::= r o l l u p /.$setResult($_ROLLUP);./
    Keyword ::= r o t a t e /.$setResult($_ROTATE);./
    Keyword ::= s c h e m a /.$setResult($_SCHEMA);./
    Keyword ::= s e c o n d /.$setResult($_SECOND);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s e r i a l /.$setResult($_SERIAL);./
    Keyword ::= s e r v e r /.$setResult($_SERVER);./
    Keyword ::= s h a r e d /.$setResult($_SHARED);./
    Keyword ::= s i g n a l /.$setResult($_SIGNAL);./
    Keyword ::= s i g n e d /.$setResult($_SIGNED);./
    Keyword ::= s i m p l e /.$setResult($_SIMPLE);./
    Keyword ::= s o c k e t /.$setResult($_SOCKET);./
    Keyword ::= s o n a m e /.$setResult($_SONAME);./
    Keyword ::= s o u n d s /.$setResult($_SOUNDS);./
    Keyword ::= s o u r c e /.$setResult($_SOURCE);./
    Keyword ::= s t a r t s /.$setResult($_STARTS);./
    Keyword ::= s t a t u s /.$setResult($_STATUS);./
    Keyword ::= s t d d e v /.$setResult($_STDDEV);./
    Keyword ::= s t o r e d /.$setResult($_STORED);./
    Keyword ::= s t r c m p /.$setResult($_STRCMP);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= s u b s t r /.$setResult($_SUBSTR);./
    Keyword ::= t a b l e s /.$setResult($_TABLES);./
    Keyword ::= t o k u d b /.$setResult($_TOKUDB);./
    Keyword ::= u n i q u e /.$setResult($_UNIQUE);./
    Keyword ::= u n l o c k /.$setResult($_UNLOCK);./
    Keyword ::= u p d a t e /.$setResult($_UPDATE);./
    Keyword ::= v a l u e s /.$setResult($_VALUES);./
    Keyword ::= v e c t o r /.$setResult($_VECTOR);./
    Keyword ::= w i n d o w /.$setResult($_WINDOW);./
    Keyword ::= w i t h i n /.$setResult($_WITHIN);./
    Keyword ::= a d m i n /.$setResult($_ADMIN);./
    Keyword ::= a f t e r /.$setResult($_AFTER);./
    Keyword ::= a l t e r /.$setResult($_ALTER);./
    Keyword ::= a r r a y /.$setResult($_ARRAY);./
    Keyword ::= a s c i i /.$setResult($_ASCII);./
    Keyword ::= a s w k b /.$setResult($_ASWKB);./
    Keyword ::= a s w k t /.$setResult($_ASWKT);./
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
    Keyword ::= b l o c k /.$setResult($_BLOCK);./
    Keyword ::= b t r e e /.$setResult($_BTREE);./
    Keyword ::= c a c h e /.$setResult($_CACHE);./
    Keyword ::= c h a i n /.$setResult($_CHAIN);./
    Keyword ::= c h e c k /.$setResult($_CHECK);./
    Keyword ::= c l o s e /.$setResult($_CLOSE);./
    Keyword ::= c o u n t /.$setResult($_COUNT);./
    Keyword ::= c r o s s /.$setResult($_CROSS);./
    Keyword ::= c y c l e /.$setResult($_CYCLE);./
    Keyword ::= e m p t y /.$setResult($_EMPTY);./
    Keyword ::= e r r o r /.$setResult($_ERROR);./
    Keyword ::= e u c k r /.$setResult($_EUCKR);./
    Keyword ::= e v e n t /.$setResult($_EVENT);./
    Keyword ::= e v e r y /.$setResult($_EVERY);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f e t c h /.$setResult($_FETCH);./
    Keyword ::= f i e l d /.$setResult($_FIELD);./
    Keyword ::= f i r s t /.$setResult($_FIRST);./
    Keyword ::= f i x e d /.$setResult($_FIXED);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= f l o o r /.$setResult($_FLOOR);./
    Keyword ::= f l u s h /.$setResult($_FLUSH);./
    Keyword ::= f o r c e /.$setResult($_FORCE);./
    Keyword ::= f o u n d /.$setResult($_FOUND);./
    Keyword ::= g r a n t /.$setResult($_GRANT);./
    Keyword ::= g r e e k /.$setResult($_GREEK);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= h o s t s /.$setResult($_HOSTS);./
    Keyword ::= i n d e x /.$setResult($_INDEX);./
    Keyword ::= i n n e r /.$setResult($_INNER);./
    Keyword ::= i n o u t /.$setResult($_INOUT);./
    Keyword ::= i n s t r /.$setResult($_INSTR);./
    Keyword ::= l c a s e /.$setResult($_LCASE);./
    Keyword ::= l e a s t /.$setResult($_LEAST);./
    Keyword ::= l e a v e /.$setResult($_LEAVE);./
    Keyword ::= l e v e l /.$setResult($_LEVEL);./
    Keyword ::= l i m i t /.$setResult($_LIMIT);./
    Keyword ::= l i n e s /.$setResult($_LINES);./
    Keyword ::= l o c a l /.$setResult($_LOCAL);./
    Keyword ::= l o w e r /.$setResult($_LOWER);./
    Keyword ::= l t r i m /.$setResult($_LTRIM);./
    Keyword ::= m a c c e /.$setResult($_MACCE);./
    Keyword ::= m a t c h /.$setResult($_MATCH);./
    Keyword ::= m e r g e /.$setResult($_MERGE);./
    Keyword ::= m o n t h /.$setResult($_MONTH);./
    Keyword ::= m u t e x /.$setResult($_MUTEX);./
    Keyword ::= m y s q l /.$setResult($_MYSQL);./
    Keyword ::= n a m e s /.$setResult($_NAMES);./
    Keyword ::= n c h a r /.$setResult($_NCHAR);./
    Keyword ::= n e v e r /.$setResult($_NEVER);./
    Keyword ::= n t i l e /.$setResult($_NTILE);./
    Keyword ::= o r d e r /.$setResult($_ORDER);./
    Keyword ::= o u t e r /.$setResult($_OUTER);./
    Keyword ::= o w n e r /.$setResult($_OWNER);./
    Keyword ::= p h a s e /.$setResult($_PHASE);./
    Keyword ::= p o i n t /.$setResult($_POINT);./
    Keyword ::= p o w e r /.$setResult($_POWER);./
    Keyword ::= p r o x y /.$setResult($_PROXY);./
    Keyword ::= p u r g e /.$setResult($_PURGE);./
    Keyword ::= q u e r y /.$setResult($_QUERY);./
    Keyword ::= q u i c k /.$setResult($_QUICK);./
    Keyword ::= q u o t e /.$setResult($_QUOTE);./
    Keyword ::= r a n g e /.$setResult($_RANGE);./
    Keyword ::= r e a d s /.$setResult($_READS);./
    Keyword ::= r e l a y /.$setResult($_RELAY);./
    Keyword ::= r e s e t /.$setResult($_RESET);./
    Keyword ::= r e u s e /.$setResult($_REUSE);./
    Keyword ::= r i g h t /.$setResult($_RIGHT);./
    Keyword ::= r l i k e /.$setResult($_RLIKE);./
    Keyword ::= r o u n d /.$setResult($_ROUND);./
    Keyword ::= r t r e e /.$setResult($_RTREE);./
    Keyword ::= r t r i m /.$setResult($_RTRIM);./
    Keyword ::= s h a r e /.$setResult($_SHARE);./
    Keyword ::= s l a v e /.$setResult($_SLAVE);./
    Keyword ::= s l e e p /.$setResult($_SLEEP);./
    Keyword ::= s t a r t /.$setResult($_START);./
    Keyword ::= s u p e r /.$setResult($_SUPER);./
    Keyword ::= s w a p s /.$setResult($_SWAPS);./
    Keyword ::= t a b l e /.$setResult($_TABLE);./
    Keyword ::= u c a s e /.$setResult($_UCASE);./
    Keyword ::= u n h e x /.$setResult($_UNHEX);./
    Keyword ::= u n i o n /.$setResult($_UNION);./
    Keyword ::= u n t i l /.$setResult($_UNTIL);./
    Keyword ::= u p p e r /.$setResult($_UPPER);./
    Keyword ::= u s a g e /.$setResult($_USAGE);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= v a l u e /.$setResult($_VALUE);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= w h i l e /.$setResult($_WHILE);./
    Keyword ::= w r i t e /.$setResult($_WRITE);./
    Keyword ::= a c o s /.$setResult($_ACOS);./
    Keyword ::= a r e a /.$setResult($_AREA);./
    Keyword ::= a s i n /.$setResult($_ASIN);./
    Keyword ::= a t a n /.$setResult($_ATAN);./
    Keyword ::= b l o b /.$setResult($_BLOB);./
    Keyword ::= b o o l /.$setResult($_BOOL);./
    Keyword ::= b o t h /.$setResult($_BOTH);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c a s t /.$setResult($_CAST);./
    Keyword ::= c e i l /.$setResult($_CEIL);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= c o d e /.$setResult($_CODE);./
    Keyword ::= c o n v /.$setResult($_CONV);./
    Keyword ::= c o p y /.$setResult($_COPY);./
    Keyword ::= d a t a /.$setResult($_DATA);./
    Keyword ::= d a t e /.$setResult($_DATE);./
    Keyword ::= d e s c /.$setResult($_DESC);./
    Keyword ::= d i s k /.$setResult($_DISK);./
    Keyword ::= d r o p /.$setResult($_DROP);./
    Keyword ::= e a c h /.$setResult($_EACH);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e n d s /.$setResult($_ENDS);./
    Keyword ::= e n u m /.$setResult($_ENUM);./
    Keyword ::= e v e n /.$setResult($_EVEN);./
    Keyword ::= e x i t /.$setResult($_EXIT);./
    Keyword ::= f a s t /.$setResult($_FAST);./
    Keyword ::= f i l e /.$setResult($_FILE);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= f u l l /.$setResult($_FULL);./
    Keyword ::= h a s h /.$setResult($_HASH);./
    Keyword ::= h e l p /.$setResult($_HELP);./
    Keyword ::= h o s t /.$setResult($_HOST);./
    Keyword ::= h o u r /.$setResult($_HOUR);./
    Keyword ::= i n t o /.$setResult($_INTO);./
    Keyword ::= j o i n /.$setResult($_JOIN);./
    Keyword ::= j s o n /.$setResult($_JSON);./
    Keyword ::= k e y s /.$setResult($_KEYS);./
    Keyword ::= k i l l /.$setResult($_KILL);./
    Keyword ::= l a s t /.$setResult($_LAST);./
    Keyword ::= l e a d /.$setResult($_LEAD);./
    Keyword ::= l e f t /.$setResult($_LEFT);./
    Keyword ::= l e s s /.$setResult($_LESS);./
    Keyword ::= l i k e /.$setResult($_LIKE);./
    Keyword ::= l i s t /.$setResult($_LIST);./
    Keyword ::= l o a d /.$setResult($_LOAD);./
    Keyword ::= l o c k /.$setResult($_LOCK);./
    Keyword ::= l o g s /.$setResult($_LOGS);./
    Keyword ::= l o n g /.$setResult($_LONG);./
    Keyword ::= l o o p /.$setResult($_LOOP);./
    Keyword ::= l p a d /.$setResult($_LPAD);./
    Keyword ::= m o d e /.$setResult($_MODE);./
    Keyword ::= n a m e /.$setResult($_NAME);./
    Keyword ::= n e x t /.$setResult($_NEXT);./
    Keyword ::= n o n e /.$setResult($_NONE);./
    Keyword ::= n u l l /.$setResult($_NULL_LITERAL);./
    Keyword ::= o d b c /.$setResult($_ODBC);./
    Keyword ::= o n l y /.$setResult($_ONLY);./
    Keyword ::= o p e n /.$setResult($_OPEN);./
    Keyword ::= o v e r /.$setResult($_OVER);./
    Keyword ::= p a g e /.$setResult($_PAGE);./
    Keyword ::= p a t h /.$setResult($_PATH);./
    Keyword ::= p o r t /.$setResult($_PORT);./
    Keyword ::= p r e v /.$setResult($_PREV);./
    Keyword ::= r a n d /.$setResult($_RAND);./
    Keyword ::= r a n k /.$setResult($_RANK);./
    Keyword ::= r e a d /.$setResult($_READ);./
    Keyword ::= r e a l /.$setResult($_REAL);./
    Keyword ::= r o l e /.$setResult($_ROLE);./
    Keyword ::= r o w s /.$setResult($_ROWS);./
    Keyword ::= r p a d /.$setResult($_RPAD);./
    Keyword ::= s h o w /.$setResult($_SHOW);./
    Keyword ::= s i g n /.$setResult($_SIGN);./
    Keyword ::= s j i s /.$setResult($_SJIS);./
    Keyword ::= s k i p /.$setResult($_SKIP_);./
    Keyword ::= s l o w /.$setResult($_SLOW);./
    Keyword ::= s o m e /.$setResult($_SOME);./
    Keyword ::= s q r t /.$setResult($_SQRT);./
    Keyword ::= s r i d /.$setResult($_SRID);./
    Keyword ::= s t o p /.$setResult($_STOP);./
    Keyword ::= t e x t /.$setResult($_TEXT);./
    Keyword ::= t h a n /.$setResult($_THAN);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t i m e /.$setResult($_TIME);./
    Keyword ::= t r i m /.$setResult($_TRIM);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= u j i s /.$setResult($_UJIS);./
    Keyword ::= u n d o /.$setResult($_UNDO);./
    Keyword ::= u s e r /.$setResult($_USER);./
    Keyword ::= u u i d /.$setResult($_UUID);./
    Keyword ::= v i e w /.$setResult($_VIEW);./
    Keyword ::= w a i t /.$setResult($_WAIT);./
    Keyword ::= w e e k /.$setResult($_WEEK);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= w o r k /.$setResult($_WORK);./
    Keyword ::= y e a r /.$setResult($_YEAR);./
    Keyword ::= a b s /.$setResult($_ABS);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= a s c /.$setResult($_ASC);./
    Keyword ::= a v g /.$setResult($_AVG);./
    Keyword ::= b i n /.$setResult($_BIN);./
    Keyword ::= b i t /.$setResult($_BIT);./
    Keyword ::= c o s /.$setResult($_COS);./
    Keyword ::= c o t /.$setResult($_COT);./
    Keyword ::= c p u /.$setResult($_CPU);./
    Keyword ::= c s v /.$setResult($_CSV);./
    Keyword ::= d a y /.$setResult($_DAY);./
    Keyword ::= d e c /.$setResult($_DEC);./
    Keyword ::= d i v /.$setResult($_DIV);./
    Keyword ::= e l t /.$setResult($_ELT);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= e u r /.$setResult($_EUR);./
    Keyword ::= e x p /.$setResult($_EXP);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= g b k /.$setResult($_GBK);./
    Keyword ::= g e t /.$setResult($_GET);./
    Keyword ::= h e x /.$setResult($_HEX);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= i p c /.$setResult($_IPC);./
    Keyword ::= i s o /.$setResult($_ISO);./
    Keyword ::= j i s /.$setResult($_JIS);./
    Keyword ::= k e y /.$setResult($_KEY);./
    Keyword ::= l a g /.$setResult($_LAG);./
    Keyword ::= l o g /.$setResult($_LOG);./
    Keyword ::= m a x /.$setResult($_MAX);./
    Keyword ::= m i d /.$setResult($_MID);./
    Keyword ::= m i n /.$setResult($_MIN);./
    Keyword ::= m o d /.$setResult($_MOD);./
    Keyword ::= n d b /.$setResult($_NDB);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= n o w /.$setResult($_NOW);./
    Keyword ::= o c t /.$setResult($_OCT);./
    Keyword ::= o n e /.$setResult($_ONE);./
    Keyword ::= o r d /.$setResult($_ORD);./
    Keyword ::= o u t /.$setResult($_OUT);./
    Keyword ::= p o w /.$setResult($_POW);./
    Keyword ::= r o w /.$setResult($_ROW);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= s h a /.$setResult($_SHA);./
    Keyword ::= s i n /.$setResult($_SIN);./
    Keyword ::= s q l /.$setResult($_SQL);./
    Keyword ::= s s l /.$setResult($_SSL);./
    Keyword ::= s t d /.$setResult($_STD);./
    Keyword ::= s u m /.$setResult($_SUM);./
    Keyword ::= t a n /.$setResult($_TAN);./
    Keyword ::= u s a /.$setResult($_USA);./
    Keyword ::= u s e /.$setResult($_USE);./
    Keyword ::= x m l /.$setResult($_XML);./
    Keyword ::= x o r /.$setResult($_XOR);./
    Keyword ::= y e s /.$setResult($_YES);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= a t /.$setResult($_AT);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i o /.$setResult($_IO);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= l n /.$setResult($_LN);./
    Keyword ::= n o /.$setResult($_NO);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o j /.$setResult($_OJ);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= p i /.$setResult($_PI);./
    Keyword ::= t o /.$setResult($_TO);./
    Keyword ::= x a /.$setResult($_XA);./
    Keyword ::= x /.$setResult($_X_FUNCTION);./
    Keyword ::= y /.$setResult($_Y_FUNCTION);./
%End
