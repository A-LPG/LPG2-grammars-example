-- Keyword filter for SqlHiveV3 (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.sql.hive.v3
%options template=KeywordTemplateF.gi
%options fp=SqlHiveV3KWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    DIV
    KW_ABORT
    KW_ACTIVATE
    KW_ACTIVE
    KW_ADD
    KW_ADMIN
    KW_AFTER
    KW_ALL
    KW_ALTER
    KW_ANALYZE
    KW_AND
    KW_ANY
    KW_APPLICATION
    KW_ARCHIVE
    KW_ARRAY
    KW_AS
    KW_ASC
    KW_AUTHORIZATION
    KW_AUTOCOMMIT
    KW_BEFORE
    KW_BETWEEN
    KW_BIGINT
    KW_BINARY
    KW_BOOLEAN
    KW_BOTH
    KW_BUCKET
    KW_BUCKETS
    KW_BY
    KW_CACHE
    KW_CASCADE
    KW_CASE
    KW_CAST
    KW_CHANGE
    KW_CHAR
    KW_CHECK
    KW_CLUSTER
    KW_CLUSTERED
    KW_CLUSTERSTATUS
    KW_COLLECTION
    KW_COLUMN
    KW_COLUMNS
    KW_COMMENT
    KW_COMMIT
    KW_COMPACT
    KW_COMPACTIONS
    KW_COMPUTE
    KW_CONCATENATE
    KW_CONF
    KW_CONSTRAINT
    KW_CONTINUE
    KW_CREATE
    KW_CROSS
    KW_CUBE
    KW_CURRENT
    KW_CURSOR
    KW_DATA
    KW_DATABASE
    KW_DATABASES
    KW_DATE
    KW_DATETIME
    KW_DAY
    KW_DBPROPERTIES
    KW_DECIMAL
    KW_DEFAULT
    KW_DEFERRED
    KW_DEFINED
    KW_DELETE
    KW_DELIMITED
    KW_DEPENDENCY
    KW_DESC
    KW_DESCRIBE
    KW_DETAIL
    KW_DIRECTORIES
    KW_DIRECTORY
    KW_DISABLE
    KW_DISTINCT
    KW_DISTRIBUTE
    KW_DO
    KW_DOUBLE
    KW_DOW
    KW_DROP
    KW_DUMP
    KW_ELSE
    KW_ENABLE
    KW_END
    KW_ENFORCED
    KW_ESCAPED
    KW_EXCEPT
    KW_EXCHANGE
    KW_EXCLUSIVE
    KW_EXISTS
    KW_EXPLAIN
    KW_EXPORT
    KW_EXPRESSION
    KW_EXTENDED
    KW_EXTERNAL
    KW_EXTRACT
    KW_FALSE
    KW_FETCH
    KW_FIELDS
    KW_FILE
    KW_FILEFORMAT
    KW_FIRST
    KW_FLOAT
    KW_FLOOR
    KW_FOLLOWING
    KW_FOR
    KW_FOREIGN
    KW_FORMAT
    KW_FORMATTED
    KW_FROM
    KW_FULL
    KW_FUNCTION
    KW_FUNCTIONS
    KW_GRANT
    KW_GROUP
    KW_GROUPING
    KW_HAVING
    KW_HOUR
    KW_IDXPROPERTIES
    KW_IF
    KW_IMPORT
    KW_IN
    KW_INDEX
    KW_INDEXES
    KW_INNER
    KW_INPATH
    KW_INPUTDRIVER
    KW_INPUTFORMAT
    KW_INSERT
    KW_INT
    KW_INTERSECT
    KW_INTERVAL
    KW_INTO
    KW_IS
    KW_ISOLATION
    KW_ITEMS
    KW_JAR
    KW_JOIN
    KW_KEY
    KW_KEYS
    KW_KILL
    KW_LAST
    KW_LATERAL
    KW_LEFT
    KW_LESS
    KW_LEVEL
    KW_LIKE
    KW_LIMIT
    KW_LINES
    KW_LOAD
    KW_LOCAL
    KW_LOCATION
    KW_LOCK
    KW_LOCKS
    KW_LOGICAL
    KW_LONG
    KW_MACRO
    KW_MANAGEMENT
    KW_MAP
    KW_MAPJOIN
    KW_MAPPING
    KW_MATCHED
    KW_MATERIALIZED
    KW_MERGE
    KW_METADATA
    KW_MINUS
    KW_MINUTE
    KW_MONTH
    KW_MORE
    KW_MOVE
    KW_MSCK
    KW_NONE
    KW_NORELY
    KW_NOSCAN
    KW_NOVALIDATE
    KW_NULL
    KW_NULLS
    KW_OF
    KW_OFFSET
    KW_ON
    KW_ONLY
    KW_OPERATOR
    KW_OPTION
    KW_OR
    KW_ORDER
    KW_OUT
    KW_OUTER
    KW_OUTPUTDRIVER
    KW_OUTPUTFORMAT
    KW_OVER
    KW_OVERWRITE
    KW_OWNER
    KW_PARTITION
    KW_PARTITIONED
    KW_PARTITIONS
    KW_PATH
    KW_PERCENT
    KW_PLAN
    KW_PLANS
    KW_PLUS
    KW_POOL
    KW_PRECEDING
    KW_PRECISION
    KW_PRESERVE
    KW_PRIMARY
    KW_PRINCIPALS
    KW_PROCEDURE
    KW_PURGE
    KW_QUARTER
    KW_QUERY
    KW_RANGE
    KW_READ
    KW_READS
    KW_REBUILD
    KW_RECORDREADER
    KW_RECORDWRITER
    KW_REDUCE
    KW_REFERENCES
    KW_REGEXP
    KW_RELOAD
    KW_RELY
    KW_RENAME
    KW_REOPTIMIZATION
    KW_REPAIR
    KW_REPL
    KW_REPLACE
    KW_REPLICATION
    KW_RESOURCE
    KW_RESTRICT
    KW_REVOKE
    KW_REWRITE
    KW_RIGHT
    KW_RLIKE
    KW_ROLE
    KW_ROLES
    KW_ROLLBACK
    KW_ROLLUP
    KW_ROW
    KW_ROWS
    KW_SCHEMA
    KW_SCHEMAS
    KW_SECOND
    KW_SELECT
    KW_SEMI
    KW_SERDE
    KW_SERDEPROPERTIES
    KW_SERVER
    KW_SET
    KW_SETS
    KW_SHARED
    KW_SHOW
    KW_SKEWED
    KW_SMALLINT
    KW_SNAPSHOT
    KW_SORT
    KW_SORTED
    KW_SSL
    KW_START
    KW_STATISTICS
    KW_STATUS
    KW_STORED
    KW_STREAMTABLE
    KW_STRING
    KW_STRUCT
    KW_SUMMARY
    KW_SYNC
    KW_TABLE
    KW_TABLES
    KW_TABLESAMPLE
    KW_TBLPROPERTIES
    KW_TEMPORARY
    KW_TERMINATED
    KW_THEN
    KW_TIME
    KW_TIMESTAMP
    KW_TIMESTAMPLOCALTZ
    KW_TINYINT
    KW_TO
    KW_TOUCH
    KW_TRANSACTION
    KW_TRANSACTIONS
    KW_TRANSFORM
    KW_TRIGGER
    KW_TRUE
    KW_TRUNCATE
    KW_UNARCHIVE
    KW_UNBOUNDED
    KW_UNDO
    KW_UNION
    KW_UNIONTYPE
    KW_UNIQUE
    KW_UNIQUEJOIN
    KW_UNLOCK
    KW_UNMANAGED
    KW_UNSET
    KW_UNSIGNED
    KW_UPDATE
    KW_URI
    KW_USE
    KW_USER
    KW_USING
    KW_UTC
    KW_VALIDATE
    KW_VALUES
    KW_VARCHAR
    KW_VECTORIZATION
    KW_VIEW
    KW_VIEWS
    KW_WAIT
    KW_WEEK
    KW_WHEN
    KW_WHERE
    KW_WHILE
    KW_WINDOW
    KW_WITH
    KW_WORK
    KW_WORKLOAD
    KW_WRITE
    KW_YEAR
    KW_ZONE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= t i m e s t a m p l o c a l t z /.$setResult($_KW_TIMESTAMPLOCALTZ);./
    Keyword ::= s e r d e p r o p e r t i e s /.$setResult($_KW_SERDEPROPERTIES);./
    Keyword ::= r e o p t i m i z a t i o n /.$setResult($_KW_REOPTIMIZATION);./
    Keyword ::= a u t h o r i z a t i o n /.$setResult($_KW_AUTHORIZATION);./
    Keyword ::= c l u s t e r s t a t u s /.$setResult($_KW_CLUSTERSTATUS);./
    Keyword ::= i d x p r o p e r t i e s /.$setResult($_KW_IDXPROPERTIES);./
    Keyword ::= t b l p r o p e r t i e s /.$setResult($_KW_TBLPROPERTIES);./
    Keyword ::= v e c t o r i z a t i o n /.$setResult($_KW_VECTORIZATION);./
    Keyword ::= d b p r o p e r t i e s /.$setResult($_KW_DBPROPERTIES);./
    Keyword ::= m a t e r i a l i z e d /.$setResult($_KW_MATERIALIZED);./
    Keyword ::= o u t p u t d r i v e r /.$setResult($_KW_OUTPUTDRIVER);./
    Keyword ::= o u t p u t f o r m a t /.$setResult($_KW_OUTPUTFORMAT);./
    Keyword ::= r e c o r d r e a d e r /.$setResult($_KW_RECORDREADER);./
    Keyword ::= r e c o r d w r i t e r /.$setResult($_KW_RECORDWRITER);./
    Keyword ::= t r a n s a c t i o n s /.$setResult($_KW_TRANSACTIONS);./
    Keyword ::= a p p l i c a t i o n /.$setResult($_KW_APPLICATION);./
    Keyword ::= c o m p a c t i o n s /.$setResult($_KW_COMPACTIONS);./
    Keyword ::= c o n c a t e n a t e /.$setResult($_KW_CONCATENATE);./
    Keyword ::= d i r e c t o r i e s /.$setResult($_KW_DIRECTORIES);./
    Keyword ::= i n p u t d r i v e r /.$setResult($_KW_INPUTDRIVER);./
    Keyword ::= i n p u t f o r m a t /.$setResult($_KW_INPUTFORMAT);./
    Keyword ::= p a r t i t i o n e d /.$setResult($_KW_PARTITIONED);./
    Keyword ::= r e p l i c a t i o n /.$setResult($_KW_REPLICATION);./
    Keyword ::= s t r e a m t a b l e /.$setResult($_KW_STREAMTABLE);./
    Keyword ::= t a b l e s a m p l e /.$setResult($_KW_TABLESAMPLE);./
    Keyword ::= t r a n s a c t i o n /.$setResult($_KW_TRANSACTION);./
    Keyword ::= a u t o c o m m i t /.$setResult($_KW_AUTOCOMMIT);./
    Keyword ::= c o l l e c t i o n /.$setResult($_KW_COLLECTION);./
    Keyword ::= c o n s t r a i n t /.$setResult($_KW_CONSTRAINT);./
    Keyword ::= d e p e n d e n c y /.$setResult($_KW_DEPENDENCY);./
    Keyword ::= d i s t r i b u t e /.$setResult($_KW_DISTRIBUTE);./
    Keyword ::= e x p r e s s i o n /.$setResult($_KW_EXPRESSION);./
    Keyword ::= f i l e f o r m a t /.$setResult($_KW_FILEFORMAT);./
    Keyword ::= m a n a g e m e n t /.$setResult($_KW_MANAGEMENT);./
    Keyword ::= n o v a l i d a t e /.$setResult($_KW_NOVALIDATE);./
    Keyword ::= p a r t i t i o n s /.$setResult($_KW_PARTITIONS);./
    Keyword ::= p r i n c i p a l s /.$setResult($_KW_PRINCIPALS);./
    Keyword ::= r e f e r e n c e s /.$setResult($_KW_REFERENCES);./
    Keyword ::= s t a t i s t i c s /.$setResult($_KW_STATISTICS);./
    Keyword ::= t e r m i n a t e d /.$setResult($_KW_TERMINATED);./
    Keyword ::= u n i q u e j o i n /.$setResult($_KW_UNIQUEJOIN);./
    Keyword ::= c l u s t e r e d /.$setResult($_KW_CLUSTERED);./
    Keyword ::= d a t a b a s e s /.$setResult($_KW_DATABASES);./
    Keyword ::= d a y o f w e e k /.$setResult($_KW_DOW);./
    Keyword ::= d e l i m i t e d /.$setResult($_KW_DELIMITED);./
    Keyword ::= d i r e c t o r y /.$setResult($_KW_DIRECTORY);./
    Keyword ::= e x c l u s i v e /.$setResult($_KW_EXCLUSIVE);./
    Keyword ::= f o l l o w i n g /.$setResult($_KW_FOLLOWING);./
    Keyword ::= f o r m a t t e d /.$setResult($_KW_FORMATTED);./
    Keyword ::= f u n c t i o n s /.$setResult($_KW_FUNCTIONS);./
    Keyword ::= i n t e r s e c t /.$setResult($_KW_INTERSECT);./
    Keyword ::= i s o l a t i o n /.$setResult($_KW_ISOLATION);./
    Keyword ::= o v e r w r i t e /.$setResult($_KW_OVERWRITE);./
    Keyword ::= p a r t i t i o n /.$setResult($_KW_PARTITION);./
    Keyword ::= p r e c e d i n g /.$setResult($_KW_PRECEDING);./
    Keyword ::= p r e c i s i o n /.$setResult($_KW_PRECISION);./
    Keyword ::= p r o c e d u r e /.$setResult($_KW_PROCEDURE);./
    Keyword ::= t e m p o r a r y /.$setResult($_KW_TEMPORARY);./
    Keyword ::= t i m e s t a m p /.$setResult($_KW_TIMESTAMP);./
    Keyword ::= t r a n s f o r m /.$setResult($_KW_TRANSFORM);./
    Keyword ::= u n a r c h i v e /.$setResult($_KW_UNARCHIVE);./
    Keyword ::= u n b o u n d e d /.$setResult($_KW_UNBOUNDED);./
    Keyword ::= u n i o n t y p e /.$setResult($_KW_UNIONTYPE);./
    Keyword ::= u n m a n a g e d /.$setResult($_KW_UNMANAGED);./
    Keyword ::= a c t i v a t e /.$setResult($_KW_ACTIVATE);./
    Keyword ::= c o n t i n u e /.$setResult($_KW_CONTINUE);./
    Keyword ::= d a t a b a s e /.$setResult($_KW_DATABASE);./
    Keyword ::= d a t e t i m e /.$setResult($_KW_DATETIME);./
    Keyword ::= d e f e r r e d /.$setResult($_KW_DEFERRED);./
    Keyword ::= d e s c r i b e /.$setResult($_KW_DESCRIBE);./
    Keyword ::= d i s t i n c t /.$setResult($_KW_DISTINCT);./
    Keyword ::= e n f o r c e d /.$setResult($_KW_ENFORCED);./
    Keyword ::= e x c h a n g e /.$setResult($_KW_EXCHANGE);./
    Keyword ::= e x t e n d e d /.$setResult($_KW_EXTENDED);./
    Keyword ::= e x t e r n a l /.$setResult($_KW_EXTERNAL);./
    Keyword ::= f u n c t i o n /.$setResult($_KW_FUNCTION);./
    Keyword ::= g r o u p i n g /.$setResult($_KW_GROUPING);./
    Keyword ::= i n t e r v a l /.$setResult($_KW_INTERVAL);./
    Keyword ::= l o c a t i o n /.$setResult($_KW_LOCATION);./
    Keyword ::= m e t a d a t a /.$setResult($_KW_METADATA);./
    Keyword ::= o p e r a t o r /.$setResult($_KW_OPERATOR);./
    Keyword ::= p r e s e r v e /.$setResult($_KW_PRESERVE);./
    Keyword ::= r e s o u r c e /.$setResult($_KW_RESOURCE);./
    Keyword ::= r e s t r i c t /.$setResult($_KW_RESTRICT);./
    Keyword ::= r o l l b a c k /.$setResult($_KW_ROLLBACK);./
    Keyword ::= s m a l l i n t /.$setResult($_KW_SMALLINT);./
    Keyword ::= s n a p s h o t /.$setResult($_KW_SNAPSHOT);./
    Keyword ::= t r u n c a t e /.$setResult($_KW_TRUNCATE);./
    Keyword ::= u n s i g n e d /.$setResult($_KW_UNSIGNED);./
    Keyword ::= v a l i d a t e /.$setResult($_KW_VALIDATE);./
    Keyword ::= w o r k l o a d /.$setResult($_KW_WORKLOAD);./
    Keyword ::= a n a l y z e /.$setResult($_KW_ANALYZE);./
    Keyword ::= a r c h i v e /.$setResult($_KW_ARCHIVE);./
    Keyword ::= b e t w e e n /.$setResult($_KW_BETWEEN);./
    Keyword ::= b o o l e a n /.$setResult($_KW_BOOLEAN);./
    Keyword ::= b u c k e t s /.$setResult($_KW_BUCKETS);./
    Keyword ::= c a s c a d e /.$setResult($_KW_CASCADE);./
    Keyword ::= c l u s t e r /.$setResult($_KW_CLUSTER);./
    Keyword ::= c o l u m n s /.$setResult($_KW_COLUMNS);./
    Keyword ::= c o m m e n t /.$setResult($_KW_COMMENT);./
    Keyword ::= c o m p a c t /.$setResult($_KW_COMPACT);./
    Keyword ::= c o m p u t e /.$setResult($_KW_COMPUTE);./
    Keyword ::= c u r r e n t /.$setResult($_KW_CURRENT);./
    Keyword ::= d e c i m a l /.$setResult($_KW_DECIMAL);./
    Keyword ::= d e f a u l t /.$setResult($_KW_DEFAULT);./
    Keyword ::= d e f i n e d /.$setResult($_KW_DEFINED);./
    Keyword ::= d i s a b l e /.$setResult($_KW_DISABLE);./
    Keyword ::= e s c a p e d /.$setResult($_KW_ESCAPED);./
    Keyword ::= e x p l a i n /.$setResult($_KW_EXPLAIN);./
    Keyword ::= e x t r a c t /.$setResult($_KW_EXTRACT);./
    Keyword ::= f o r e i g n /.$setResult($_KW_FOREIGN);./
    Keyword ::= i n d e x e s /.$setResult($_KW_INDEXES);./
    Keyword ::= i n t e g e r /.$setResult($_KW_INT);./
    Keyword ::= l a t e r a l /.$setResult($_KW_LATERAL);./
    Keyword ::= l o g i c a l /.$setResult($_KW_LOGICAL);./
    Keyword ::= m a p j o i n /.$setResult($_KW_MAPJOIN);./
    Keyword ::= m a p p i n g /.$setResult($_KW_MAPPING);./
    Keyword ::= m a t c h e d /.$setResult($_KW_MATCHED);./
    Keyword ::= m i n u t e s /.$setResult($_KW_MINUTE);./
    Keyword ::= n u m e r i c /.$setResult($_KW_DECIMAL);./
    Keyword ::= p e r c e n t /.$setResult($_KW_PERCENT);./
    Keyword ::= p r i m a r y /.$setResult($_KW_PRIMARY);./
    Keyword ::= q u a r t e r /.$setResult($_KW_QUARTER);./
    Keyword ::= r e b u i l d /.$setResult($_KW_REBUILD);./
    Keyword ::= r e p l a c e /.$setResult($_KW_REPLACE);./
    Keyword ::= r e w r i t e /.$setResult($_KW_REWRITE);./
    Keyword ::= s c h e m a s /.$setResult($_KW_SCHEMAS);./
    Keyword ::= s e c o n d s /.$setResult($_KW_SECOND);./
    Keyword ::= s u m m a r y /.$setResult($_KW_SUMMARY);./
    Keyword ::= t i n y i n t /.$setResult($_KW_TINYINT);./
    Keyword ::= t r i g g e r /.$setResult($_KW_TRIGGER);./
    Keyword ::= v a r c h a r /.$setResult($_KW_VARCHAR);./
    Keyword ::= a c t i v e /.$setResult($_KW_ACTIVE);./
    Keyword ::= b e f o r e /.$setResult($_KW_BEFORE);./
    Keyword ::= b i g i n t /.$setResult($_KW_BIGINT);./
    Keyword ::= b i n a r y /.$setResult($_KW_BINARY);./
    Keyword ::= b u c k e t /.$setResult($_KW_BUCKET);./
    Keyword ::= c h a n g e /.$setResult($_KW_CHANGE);./
    Keyword ::= c o l u m n /.$setResult($_KW_COLUMN);./
    Keyword ::= c o m m i t /.$setResult($_KW_COMMIT);./
    Keyword ::= c r e a t e /.$setResult($_KW_CREATE);./
    Keyword ::= c u r s o r /.$setResult($_KW_CURSOR);./
    Keyword ::= d e l e t e /.$setResult($_KW_DELETE);./
    Keyword ::= d e t a i l /.$setResult($_KW_DETAIL);./
    Keyword ::= d o u b l e /.$setResult($_KW_DOUBLE);./
    Keyword ::= e n a b l e /.$setResult($_KW_ENABLE);./
    Keyword ::= e x c e p t /.$setResult($_KW_EXCEPT);./
    Keyword ::= e x i s t s /.$setResult($_KW_EXISTS);./
    Keyword ::= e x p o r t /.$setResult($_KW_EXPORT);./
    Keyword ::= f i e l d s /.$setResult($_KW_FIELDS);./
    Keyword ::= f o r m a t /.$setResult($_KW_FORMAT);./
    Keyword ::= h a v i n g /.$setResult($_KW_HAVING);./
    Keyword ::= i m p o r t /.$setResult($_KW_IMPORT);./
    Keyword ::= i n p a t h /.$setResult($_KW_INPATH);./
    Keyword ::= i n s e r t /.$setResult($_KW_INSERT);./
    Keyword ::= m i n u t e /.$setResult($_KW_MINUTE);./
    Keyword ::= m o n t h s /.$setResult($_KW_MONTH);./
    Keyword ::= n o r e l y /.$setResult($_KW_NORELY);./
    Keyword ::= n o s c a n /.$setResult($_KW_NOSCAN);./
    Keyword ::= o f f s e t /.$setResult($_KW_OFFSET);./
    Keyword ::= o p t i o n /.$setResult($_KW_OPTION);./
    Keyword ::= r e d u c e /.$setResult($_KW_REDUCE);./
    Keyword ::= r e g e x p /.$setResult($_KW_REGEXP);./
    Keyword ::= r e l o a d /.$setResult($_KW_RELOAD);./
    Keyword ::= r e n a m e /.$setResult($_KW_RENAME);./
    Keyword ::= r e p a i r /.$setResult($_KW_REPAIR);./
    Keyword ::= r e v o k e /.$setResult($_KW_REVOKE);./
    Keyword ::= r o l l u p /.$setResult($_KW_ROLLUP);./
    Keyword ::= s c h e m a /.$setResult($_KW_SCHEMA);./
    Keyword ::= s e c o n d /.$setResult($_KW_SECOND);./
    Keyword ::= s e l e c t /.$setResult($_KW_SELECT);./
    Keyword ::= s e r v e r /.$setResult($_KW_SERVER);./
    Keyword ::= s h a r e d /.$setResult($_KW_SHARED);./
    Keyword ::= s k e w e d /.$setResult($_KW_SKEWED);./
    Keyword ::= s o r t e d /.$setResult($_KW_SORTED);./
    Keyword ::= s t a t u s /.$setResult($_KW_STATUS);./
    Keyword ::= s t o r e d /.$setResult($_KW_STORED);./
    Keyword ::= s t r i n g /.$setResult($_KW_STRING);./
    Keyword ::= s t r u c t /.$setResult($_KW_STRUCT);./
    Keyword ::= t a b l e s /.$setResult($_KW_TABLES);./
    Keyword ::= u n i q u e /.$setResult($_KW_UNIQUE);./
    Keyword ::= u n l o c k /.$setResult($_KW_UNLOCK);./
    Keyword ::= u p d a t e /.$setResult($_KW_UPDATE);./
    Keyword ::= v a l u e s /.$setResult($_KW_VALUES);./
    Keyword ::= w i n d o w /.$setResult($_KW_WINDOW);./
    Keyword ::= a b o r t /.$setResult($_KW_ABORT);./
    Keyword ::= a d m i n /.$setResult($_KW_ADMIN);./
    Keyword ::= a f t e r /.$setResult($_KW_AFTER);./
    Keyword ::= a l t e r /.$setResult($_KW_ALTER);./
    Keyword ::= a r r a y /.$setResult($_KW_ARRAY);./
    Keyword ::= c a c h e /.$setResult($_KW_CACHE);./
    Keyword ::= c h e c k /.$setResult($_KW_CHECK);./
    Keyword ::= c r o s s /.$setResult($_KW_CROSS);./
    Keyword ::= f a l s e /.$setResult($_KW_FALSE);./
    Keyword ::= f e t c h /.$setResult($_KW_FETCH);./
    Keyword ::= f i r s t /.$setResult($_KW_FIRST);./
    Keyword ::= f l o a t /.$setResult($_KW_FLOAT);./
    Keyword ::= f l o o r /.$setResult($_KW_FLOOR);./
    Keyword ::= g r a n t /.$setResult($_KW_GRANT);./
    Keyword ::= g r o u p /.$setResult($_KW_GROUP);./
    Keyword ::= h o u r s /.$setResult($_KW_HOUR);./
    Keyword ::= i n d e x /.$setResult($_KW_INDEX);./
    Keyword ::= i n n e r /.$setResult($_KW_INNER);./
    Keyword ::= i t e m s /.$setResult($_KW_ITEMS);./
    Keyword ::= l e v e l /.$setResult($_KW_LEVEL);./
    Keyword ::= l i m i t /.$setResult($_KW_LIMIT);./
    Keyword ::= l i n e s /.$setResult($_KW_LINES);./
    Keyword ::= l o c a l /.$setResult($_KW_LOCAL);./
    Keyword ::= l o c k s /.$setResult($_KW_LOCKS);./
    Keyword ::= m a c r o /.$setResult($_KW_MACRO);./
    Keyword ::= m e r g e /.$setResult($_KW_MERGE);./
    Keyword ::= m i n u s /.$setResult($_KW_MINUS);./
    Keyword ::= m o n t h /.$setResult($_KW_MONTH);./
    Keyword ::= n u l l s /.$setResult($_KW_NULLS);./
    Keyword ::= o r d e r /.$setResult($_KW_ORDER);./
    Keyword ::= o u t e r /.$setResult($_KW_OUTER);./
    Keyword ::= o w n e r /.$setResult($_KW_OWNER);./
    Keyword ::= p l a n s /.$setResult($_KW_PLANS);./
    Keyword ::= p u r g e /.$setResult($_KW_PURGE);./
    Keyword ::= q u e r y /.$setResult($_KW_QUERY);./
    Keyword ::= r a n g e /.$setResult($_KW_RANGE);./
    Keyword ::= r e a d s /.$setResult($_KW_READS);./
    Keyword ::= r i g h t /.$setResult($_KW_RIGHT);./
    Keyword ::= r l i k e /.$setResult($_KW_RLIKE);./
    Keyword ::= r o l e s /.$setResult($_KW_ROLES);./
    Keyword ::= s e r d e /.$setResult($_KW_SERDE);./
    Keyword ::= s t a r t /.$setResult($_KW_START);./
    Keyword ::= t a b l e /.$setResult($_KW_TABLE);./
    Keyword ::= t o u c h /.$setResult($_KW_TOUCH);./
    Keyword ::= u n i o n /.$setResult($_KW_UNION);./
    Keyword ::= u n s e t /.$setResult($_KW_UNSET);./
    Keyword ::= u s i n g /.$setResult($_KW_USING);./
    Keyword ::= v i e w s /.$setResult($_KW_VIEWS);./
    Keyword ::= w e e k s /.$setResult($_KW_WEEK);./
    Keyword ::= w h e r e /.$setResult($_KW_WHERE);./
    Keyword ::= w h i l e /.$setResult($_KW_WHILE);./
    Keyword ::= w r i t e /.$setResult($_KW_WRITE);./
    Keyword ::= y e a r s /.$setResult($_KW_YEAR);./
    Keyword ::= b o t h /.$setResult($_KW_BOTH);./
    Keyword ::= c a s e /.$setResult($_KW_CASE);./
    Keyword ::= c a s t /.$setResult($_KW_CAST);./
    Keyword ::= c h a r /.$setResult($_KW_CHAR);./
    Keyword ::= c o n f /.$setResult($_KW_CONF);./
    Keyword ::= c u b e /.$setResult($_KW_CUBE);./
    Keyword ::= d a t a /.$setResult($_KW_DATA);./
    Keyword ::= d a t e /.$setResult($_KW_DATE);./
    Keyword ::= d a y s /.$setResult($_KW_DAY);./
    Keyword ::= d e s c /.$setResult($_KW_DESC);./
    Keyword ::= d r o p /.$setResult($_KW_DROP);./
    Keyword ::= d u m p /.$setResult($_KW_DUMP);./
    Keyword ::= e l s e /.$setResult($_KW_ELSE);./
    Keyword ::= f i l e /.$setResult($_KW_FILE);./
    Keyword ::= f r o m /.$setResult($_KW_FROM);./
    Keyword ::= f u l l /.$setResult($_KW_FULL);./
    Keyword ::= h o u r /.$setResult($_KW_HOUR);./
    Keyword ::= i n t o /.$setResult($_KW_INTO);./
    Keyword ::= j o i n /.$setResult($_KW_JOIN);./
    Keyword ::= k e y s /.$setResult($_KW_KEYS);./
    Keyword ::= k i l l /.$setResult($_KW_KILL);./
    Keyword ::= l a s t /.$setResult($_KW_LAST);./
    Keyword ::= l e f t /.$setResult($_KW_LEFT);./
    Keyword ::= l e s s /.$setResult($_KW_LESS);./
    Keyword ::= l i k e /.$setResult($_KW_LIKE);./
    Keyword ::= l o a d /.$setResult($_KW_LOAD);./
    Keyword ::= l o c k /.$setResult($_KW_LOCK);./
    Keyword ::= l o n g /.$setResult($_KW_LONG);./
    Keyword ::= m o r e /.$setResult($_KW_MORE);./
    Keyword ::= m o v e /.$setResult($_KW_MOVE);./
    Keyword ::= m s c k /.$setResult($_KW_MSCK);./
    Keyword ::= n o n e /.$setResult($_KW_NONE);./
    Keyword ::= n u l l /.$setResult($_KW_NULL);./
    Keyword ::= o n l y /.$setResult($_KW_ONLY);./
    Keyword ::= o v e r /.$setResult($_KW_OVER);./
    Keyword ::= p a t h /.$setResult($_KW_PATH);./
    Keyword ::= p l a n /.$setResult($_KW_PLAN);./
    Keyword ::= p l u s /.$setResult($_KW_PLUS);./
    Keyword ::= p o o l /.$setResult($_KW_POOL);./
    Keyword ::= r e a d /.$setResult($_KW_READ);./
    Keyword ::= r e l y /.$setResult($_KW_RELY);./
    Keyword ::= r e p l /.$setResult($_KW_REPL);./
    Keyword ::= r o l e /.$setResult($_KW_ROLE);./
    Keyword ::= r o w s /.$setResult($_KW_ROWS);./
    Keyword ::= s e m i /.$setResult($_KW_SEMI);./
    Keyword ::= s e t s /.$setResult($_KW_SETS);./
    Keyword ::= s h o w /.$setResult($_KW_SHOW);./
    Keyword ::= s o r t /.$setResult($_KW_SORT);./
    Keyword ::= s y n c /.$setResult($_KW_SYNC);./
    Keyword ::= t h e n /.$setResult($_KW_THEN);./
    Keyword ::= t i m e /.$setResult($_KW_TIME);./
    Keyword ::= t r u e /.$setResult($_KW_TRUE);./
    Keyword ::= u n d o /.$setResult($_KW_UNDO);./
    Keyword ::= u s e r /.$setResult($_KW_USER);./
    Keyword ::= v i e w /.$setResult($_KW_VIEW);./
    Keyword ::= w a i t /.$setResult($_KW_WAIT);./
    Keyword ::= w e e k /.$setResult($_KW_WEEK);./
    Keyword ::= w h e n /.$setResult($_KW_WHEN);./
    Keyword ::= w i t h /.$setResult($_KW_WITH);./
    Keyword ::= w o r k /.$setResult($_KW_WORK);./
    Keyword ::= y e a r /.$setResult($_KW_YEAR);./
    Keyword ::= z o n e /.$setResult($_KW_ZONE);./
    Keyword ::= a d d /.$setResult($_KW_ADD);./
    Keyword ::= a l l /.$setResult($_KW_ALL);./
    Keyword ::= a n d /.$setResult($_KW_AND);./
    Keyword ::= a n y /.$setResult($_KW_ANY);./
    Keyword ::= a s c /.$setResult($_KW_ASC);./
    Keyword ::= d a y /.$setResult($_KW_DAY);./
    Keyword ::= d i v /.$setResult($_DIV);./
    Keyword ::= e n d /.$setResult($_KW_END);./
    Keyword ::= f o r /.$setResult($_KW_FOR);./
    Keyword ::= i n t /.$setResult($_KW_INT);./
    Keyword ::= j a r /.$setResult($_KW_JAR);./
    Keyword ::= k e y /.$setResult($_KW_KEY);./
    Keyword ::= m a p /.$setResult($_KW_MAP);./
    Keyword ::= o u t /.$setResult($_KW_OUT);./
    Keyword ::= r o w /.$setResult($_KW_ROW);./
    Keyword ::= s e t /.$setResult($_KW_SET);./
    Keyword ::= s s l /.$setResult($_KW_SSL);./
    Keyword ::= u r i /.$setResult($_KW_URI);./
    Keyword ::= u s e /.$setResult($_KW_USE);./
    Keyword ::= u t c /.$setResult($_KW_UTC);./
    Keyword ::= a s /.$setResult($_KW_AS);./
    Keyword ::= b y /.$setResult($_KW_BY);./
    Keyword ::= d o /.$setResult($_KW_DO);./
    Keyword ::= i f /.$setResult($_KW_IF);./
    Keyword ::= i n /.$setResult($_KW_IN);./
    Keyword ::= i s /.$setResult($_KW_IS);./
    Keyword ::= o f /.$setResult($_KW_OF);./
    Keyword ::= o n /.$setResult($_KW_ON);./
    Keyword ::= o r /.$setResult($_KW_OR);./
    Keyword ::= t o /.$setResult($_KW_TO);./
%End
