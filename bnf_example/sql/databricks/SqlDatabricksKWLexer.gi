-- Keyword filter for SqlDatabricks (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.sql.databricks
%options template=KeywordTemplateF.gi
%options fp=SqlDatabricksKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ACCESS
    ADD
    ALL
    ALLOWLIST
    ALTER
    AND
    ANONYMOUS
    ANTI
    ANY
    APPLY
    ARCHIVE
    ARCHIVES
    ARRAY
    AS
    ASC
    ASSETS
    ASYNC
    BEGIN
    BETWEEN
    BIGINT
    BINARY
    BLOOMFILTER
    BOOLEAN
    BROWSE
    BUCKET
    BY
    CALL
    CASCADE
    CASE
    CAST
    CATALOG
    CATALOGS
    CLEAN
    CLUSTER
    CODEGEN
    COLLATE
    COLLATION
    COLUMN
    COLUMNS
    COMMENT
    CONNECTION
    CONNECTIONS
    CONSTRAINT
    COPY
    COST
    CREATE
    CREDENTIAL
    CREDENTIALS
    CROSS
    CUBE
    DATABASE
    DATABASES
    DATABRICKS
    DATE
    DBFS
    DEC
    DECIMAL_
    DECLARE
    DEFAULT
    DEFINE
    DELETE
    DENY
    DESC
    DESCRIBE
    DIRECTORY
    DISABLE
    DISTINCT
    DISTRIBUTE
    DO
    DOUBLE
    DROP
    DROPPED
    DRY
    ELSE
    EMAIL
    ENABLE
    ENABLED
    END
    ESCAPE
    EXCEPT
    EXCLUDE
    EXISTS
    EXPLAIN
    EXPR
    EXTENDED
    EXTERNAL
    FALSE
    FILE
    FILES
    FIRST
    FLOAT_
    FOR
    FOREIGN
    FORMATTED
    FROM
    FULL
    FUNCTION
    FUNCTIONS
    GEOGRAPHY
    GEOMETRY
    GET
    GRANT
    GRANTS
    GROUP
    GROUPING
    GROUPS
    HANDLER
    HAVING
    HISTORY
    HTTP
    IDENTIFIER
    IDENTITY
    IF
    IFF
    IFNULL
    IMMEDIATE
    IMMEDIATELY
    IN
    INCLUDE
    INDEX
    INHERIT
    INNER
    INPUT
    INSERT
    INT
    INTERCEPT
    INTERSECT
    INTERVAL
    INTO
    IS
    JAR
    JARS
    JOIN
    JSON
    KEY
    KEYS
    LAG
    LANGUAGE
    LAST
    LATERAL
    LEFT
    LEVEL
    LIKE
    LIMIT
    LIST
    LOCAL
    LOCATION
    LOCATIONS
    MANAGE
    MANAGED
    MAP
    MARKETPLACE
    MATCH
    MATCHED
    MATCHES
    MATERIALIZED
    MAX
    MERGE
    METADATA
    METASTORE
    MINUS_
    MODE
    MODEL
    MODIFY
    MOVE
    MSCK
    MYSQL
    NAME
    NATURAL
    NOT
    NULLS
    NULL_
    NUMERIC
    OBJECT
    OF
    OFFSET
    ON
    ONLY
    OPTIMIZATION
    OPTIONS
    OR
    ORDER
    OUT
    OUTER
    OVER
    OVERWRITE
    OWNER
    PARTITION
    PARTITIONS
    PATH_
    PATTERN
    PERCENT
    PERMISSION
    PIVOT
    PORT
    POSTGRESQL
    PREDICTIVE
    PRIMARY
    PRIVILEGES
    PROCEDURE
    PROCEDURES
    PROPERTIES
    PROPERTY
    PROVIDER
    PROVIDERS
    PUBLIC
    PUT
    QUALIFY
    QUERY
    READ
    REAL_
    RECIPIENT
    RECIPIENTS
    RECURSION
    RECURSIVE
    REDSHIFT
    REFERENCES
    REFRESH
    REMOVE
    RENAME
    REPAIR
    REPEATABLE
    REPLACE
    RESET_
    RESOLVE
    RESOURCE
    RESOURCES
    RESTRICT
    RETURNS
    REVOKE
    RIGHT
    ROLE
    ROLES
    ROLLBACK
    ROLLUP
    ROOM
    ROWS
    RUN
    SCHEMA
    SCHEMAS
    SECURABLE
    SELECT
    SEQUENCE
    SEQUENCES
    SERVER
    SERVICE
    SET
    SETS
    SHARE
    SHARES
    SHOW
    SMALLINT
    SNOWFLAKE
    SORT
    SQLDW
    SQLSERVER
    STORAGE
    STREAM
    STREAMING
    STREAMS
    STRING_
    STRUCT
    SYNC
    SYSTEM
    TABLE
    TABLES
    TABLESAMPLE
    TAG
    TAGS
    TASK
    TBLPROPERTIES
    TEMP
    TEMPORARY
    THEN
    TIME
    TIMESTAMP
    TIMEZONE
    TINYINT
    TO
    TODO
    TOP
    TRUE
    TRUNCATE
    TYPE
    UNDROP
    UNION
    UNIQUE
    UNPIVOT
    UNSET
    UPDATE
    URL
    USAGE
    USE
    USER
    USERS
    USING
    VALUE
    VALUES
    VAR
    VARIABLE
    VARIANT
    VERSION
    VIEW
    VIEWS
    VOID_
    VOLUME
    VOLUMES
    WHEN
    WHERE
    WINDOW
    WITH
    WRITE
    ZONE
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= t b l p r o p e r t i e s /.$setResult($_TBLPROPERTIES);./
    Keyword ::= m a t e r i a l i z e d /.$setResult($_MATERIALIZED);./
    Keyword ::= o p t i m i z a t i o n /.$setResult($_OPTIMIZATION);./
    Keyword ::= b l o o m f i l t e r /.$setResult($_BLOOMFILTER);./
    Keyword ::= c o n n e c t i o n s /.$setResult($_CONNECTIONS);./
    Keyword ::= c r e d e n t i a l s /.$setResult($_CREDENTIALS);./
    Keyword ::= i m m e d i a t e l y /.$setResult($_IMMEDIATELY);./
    Keyword ::= m a r k e t p l a c e /.$setResult($_MARKETPLACE);./
    Keyword ::= t a b l e s a m p l e /.$setResult($_TABLESAMPLE);./
    Keyword ::= c o n n e c t i o n /.$setResult($_CONNECTION);./
    Keyword ::= c o n s t r a i n t /.$setResult($_CONSTRAINT);./
    Keyword ::= c r e d e n t i a l /.$setResult($_CREDENTIAL);./
    Keyword ::= d a t a b r i c k s /.$setResult($_DATABRICKS);./
    Keyword ::= d i s t r i b u t e /.$setResult($_DISTRIBUTE);./
    Keyword ::= i d e n t i f i e r /.$setResult($_IDENTIFIER);./
    Keyword ::= p a r t i t i o n s /.$setResult($_PARTITIONS);./
    Keyword ::= p e r m i s s i o n /.$setResult($_PERMISSION);./
    Keyword ::= p o s t g r e s q l /.$setResult($_POSTGRESQL);./
    Keyword ::= p r e d i c t i v e /.$setResult($_PREDICTIVE);./
    Keyword ::= p r i v i l e g e s /.$setResult($_PRIVILEGES);./
    Keyword ::= p r o c e d u r e s /.$setResult($_PROCEDURES);./
    Keyword ::= p r o p e r t i e s /.$setResult($_PROPERTIES);./
    Keyword ::= r e c i p i e n t s /.$setResult($_RECIPIENTS);./
    Keyword ::= r e f e r e n c e s /.$setResult($_REFERENCES);./
    Keyword ::= r e p e a t a b l e /.$setResult($_REPEATABLE);./
    Keyword ::= a l l o w l i s t /.$setResult($_ALLOWLIST);./
    Keyword ::= a n o n y m o u s /.$setResult($_ANONYMOUS);./
    Keyword ::= c o l l a t i o n /.$setResult($_COLLATION);./
    Keyword ::= d a t a b a s e s /.$setResult($_DATABASES);./
    Keyword ::= d i r e c t o r y /.$setResult($_DIRECTORY);./
    Keyword ::= f o r m a t t e d /.$setResult($_FORMATTED);./
    Keyword ::= f u n c t i o n s /.$setResult($_FUNCTIONS);./
    Keyword ::= g e o g r a p h y /.$setResult($_GEOGRAPHY);./
    Keyword ::= i m m e d i a t e /.$setResult($_IMMEDIATE);./
    Keyword ::= i n t e r c e p t /.$setResult($_INTERCEPT);./
    Keyword ::= i n t e r s e c t /.$setResult($_INTERSECT);./
    Keyword ::= l o c a t i o n s /.$setResult($_LOCATIONS);./
    Keyword ::= m e t a s t o r e /.$setResult($_METASTORE);./
    Keyword ::= o v e r w r i t e /.$setResult($_OVERWRITE);./
    Keyword ::= p a r t i t i o n /.$setResult($_PARTITION);./
    Keyword ::= p r o c e d u r e /.$setResult($_PROCEDURE);./
    Keyword ::= p r o v i d e r s /.$setResult($_PROVIDERS);./
    Keyword ::= r e c i p i e n t /.$setResult($_RECIPIENT);./
    Keyword ::= r e c u r s i o n /.$setResult($_RECURSION);./
    Keyword ::= r e c u r s i v e /.$setResult($_RECURSIVE);./
    Keyword ::= r e s o u r c e s /.$setResult($_RESOURCES);./
    Keyword ::= s e c u r a b l e /.$setResult($_SECURABLE);./
    Keyword ::= s e q u e n c e s /.$setResult($_SEQUENCES);./
    Keyword ::= s n o w f l a k e /.$setResult($_SNOWFLAKE);./
    Keyword ::= s q l s e r v e r /.$setResult($_SQLSERVER);./
    Keyword ::= s t r e a m i n g /.$setResult($_STREAMING);./
    Keyword ::= t e m p o r a r y /.$setResult($_TEMPORARY);./
    Keyword ::= t i m e s t a m p /.$setResult($_TIMESTAMP);./
    Keyword ::= a r c h i v e s /.$setResult($_ARCHIVES);./
    Keyword ::= c a t a l o g s /.$setResult($_CATALOGS);./
    Keyword ::= d a t a b a s e /.$setResult($_DATABASE);./
    Keyword ::= d e s c r i b e /.$setResult($_DESCRIBE);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT);./
    Keyword ::= e x t e n d e d /.$setResult($_EXTENDED);./
    Keyword ::= e x t e r n a l /.$setResult($_EXTERNAL);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= g e o m e t r y /.$setResult($_GEOMETRY);./
    Keyword ::= g r o u p i n g /.$setResult($_GROUPING);./
    Keyword ::= i d e n t i t y /.$setResult($_IDENTITY);./
    Keyword ::= i n t e r v a l /.$setResult($_INTERVAL);./
    Keyword ::= l a n g u a g e /.$setResult($_LANGUAGE);./
    Keyword ::= l o c a t i o n /.$setResult($_LOCATION);./
    Keyword ::= m e t a d a t a /.$setResult($_METADATA);./
    Keyword ::= p r o p e r t y /.$setResult($_PROPERTY);./
    Keyword ::= p r o v i d e r /.$setResult($_PROVIDER);./
    Keyword ::= r e d s h i f t /.$setResult($_REDSHIFT);./
    Keyword ::= r e s o u r c e /.$setResult($_RESOURCE);./
    Keyword ::= r e s t r i c t /.$setResult($_RESTRICT);./
    Keyword ::= r o l l b a c k /.$setResult($_ROLLBACK);./
    Keyword ::= s e q u e n c e /.$setResult($_SEQUENCE);./
    Keyword ::= s m a l l i n t /.$setResult($_SMALLINT);./
    Keyword ::= t i m e z o n e /.$setResult($_TIMEZONE);./
    Keyword ::= t r u n c a t e /.$setResult($_TRUNCATE);./
    Keyword ::= v a r i a b l e /.$setResult($_VARIABLE);./
    Keyword ::= a r c h i v e /.$setResult($_ARCHIVE);./
    Keyword ::= b e t w e e n /.$setResult($_BETWEEN);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= c a s c a d e /.$setResult($_CASCADE);./
    Keyword ::= c a t a l o g /.$setResult($_CATALOG);./
    Keyword ::= c l u s t e r /.$setResult($_CLUSTER);./
    Keyword ::= c o d e g e n /.$setResult($_CODEGEN);./
    Keyword ::= c o l l a t e /.$setResult($_COLLATE);./
    Keyword ::= c o l u m n s /.$setResult($_COLUMNS);./
    Keyword ::= c o m m e n t /.$setResult($_COMMENT);./
    Keyword ::= d e c i m a l /.$setResult($_DECIMAL_);./
    Keyword ::= d e c l a r e /.$setResult($_DECLARE);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= d i s a b l e /.$setResult($_DISABLE);./
    Keyword ::= d r o p p e d /.$setResult($_DROPPED);./
    Keyword ::= e n a b l e d /.$setResult($_ENABLED);./
    Keyword ::= e x c l u d e /.$setResult($_EXCLUDE);./
    Keyword ::= e x p l a i n /.$setResult($_EXPLAIN);./
    Keyword ::= f o r e i g n /.$setResult($_FOREIGN);./
    Keyword ::= h a n d l e r /.$setResult($_HANDLER);./
    Keyword ::= h i s t o r y /.$setResult($_HISTORY);./
    Keyword ::= i n c l u d e /.$setResult($_INCLUDE);./
    Keyword ::= i n h e r i t /.$setResult($_INHERIT);./
    Keyword ::= l a t e r a l /.$setResult($_LATERAL);./
    Keyword ::= m a n a g e d /.$setResult($_MANAGED);./
    Keyword ::= m a t c h e d /.$setResult($_MATCHED);./
    Keyword ::= m a t c h e s /.$setResult($_MATCHES);./
    Keyword ::= n a t u r a l /.$setResult($_NATURAL);./
    Keyword ::= n u m e r i c /.$setResult($_NUMERIC);./
    Keyword ::= o p t i o n s /.$setResult($_OPTIONS);./
    Keyword ::= p a t t e r n /.$setResult($_PATTERN);./
    Keyword ::= p e r c e n t /.$setResult($_PERCENT);./
    Keyword ::= p r i m a r y /.$setResult($_PRIMARY);./
    Keyword ::= q u a l i f y /.$setResult($_QUALIFY);./
    Keyword ::= r e f r e s h /.$setResult($_REFRESH);./
    Keyword ::= r e p l a c e /.$setResult($_REPLACE);./
    Keyword ::= r e s o l v e /.$setResult($_RESOLVE);./
    Keyword ::= r e t u r n s /.$setResult($_RETURNS);./
    Keyword ::= s c h e m a s /.$setResult($_SCHEMAS);./
    Keyword ::= s e r v i c e /.$setResult($_SERVICE);./
    Keyword ::= s t o r a g e /.$setResult($_STORAGE);./
    Keyword ::= s t r e a m s /.$setResult($_STREAMS);./
    Keyword ::= t i n y i n t /.$setResult($_TINYINT);./
    Keyword ::= u n p i v o t /.$setResult($_UNPIVOT);./
    Keyword ::= v a r i a n t /.$setResult($_VARIANT);./
    Keyword ::= v e r s i o n /.$setResult($_VERSION);./
    Keyword ::= v o l u m e s /.$setResult($_VOLUMES);./
    Keyword ::= a c c e s s /.$setResult($_ACCESS);./
    Keyword ::= a s s e t s /.$setResult($_ASSETS);./
    Keyword ::= b i g i n t /.$setResult($_BIGINT);./
    Keyword ::= b i n a r y /.$setResult($_BINARY);./
    Keyword ::= b r o w s e /.$setResult($_BROWSE);./
    Keyword ::= b u c k e t /.$setResult($_BUCKET);./
    Keyword ::= c o l u m n /.$setResult($_COLUMN);./
    Keyword ::= c r e a t e /.$setResult($_CREATE);./
    Keyword ::= d e f i n e /.$setResult($_DEFINE);./
    Keyword ::= d e l e t e /.$setResult($_DELETE);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= e n a b l e /.$setResult($_ENABLE);./
    Keyword ::= e s c a p e /.$setResult($_ESCAPE);./
    Keyword ::= e x c e p t /.$setResult($_EXCEPT);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS);./
    Keyword ::= g r a n t s /.$setResult($_GRANTS);./
    Keyword ::= g r o u p s /.$setResult($_GROUPS);./
    Keyword ::= h a v i n g /.$setResult($_HAVING);./
    Keyword ::= i f n u l l /.$setResult($_IFNULL);./
    Keyword ::= i n s e r t /.$setResult($_INSERT);./
    Keyword ::= m a n a g e /.$setResult($_MANAGE);./
    Keyword ::= m o d i f y /.$setResult($_MODIFY);./
    Keyword ::= o b j e c t /.$setResult($_OBJECT);./
    Keyword ::= o f f s e t /.$setResult($_OFFSET);./
    Keyword ::= p u b l i c /.$setResult($_PUBLIC);./
    Keyword ::= r e m o v e /.$setResult($_REMOVE);./
    Keyword ::= r e n a m e /.$setResult($_RENAME);./
    Keyword ::= r e p a i r /.$setResult($_REPAIR);./
    Keyword ::= r e v o k e /.$setResult($_REVOKE);./
    Keyword ::= r o l l u p /.$setResult($_ROLLUP);./
    Keyword ::= s c h e m a /.$setResult($_SCHEMA);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s e r v e r /.$setResult($_SERVER);./
    Keyword ::= s h a r e s /.$setResult($_SHARES);./
    Keyword ::= s t r e a m /.$setResult($_STREAM);./
    Keyword ::= s t r i n g /.$setResult($_STRING_);./
    Keyword ::= s t r u c t /.$setResult($_STRUCT);./
    Keyword ::= s y s t e m /.$setResult($_SYSTEM);./
    Keyword ::= t a b l e s /.$setResult($_TABLES);./
    Keyword ::= u n d r o p /.$setResult($_UNDROP);./
    Keyword ::= u n i q u e /.$setResult($_UNIQUE);./
    Keyword ::= u p d a t e /.$setResult($_UPDATE);./
    Keyword ::= v a l u e s /.$setResult($_VALUES);./
    Keyword ::= v o l u m e /.$setResult($_VOLUME);./
    Keyword ::= w i n d o w /.$setResult($_WINDOW);./
    Keyword ::= a l t e r /.$setResult($_ALTER);./
    Keyword ::= a p p l y /.$setResult($_APPLY);./
    Keyword ::= a r r a y /.$setResult($_ARRAY);./
    Keyword ::= a s y n c /.$setResult($_ASYNC);./
    Keyword ::= b e g i n /.$setResult($_BEGIN);./
    Keyword ::= c l e a n /.$setResult($_CLEAN);./
    Keyword ::= c r o s s /.$setResult($_CROSS);./
    Keyword ::= e m a i l /.$setResult($_EMAIL);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f i l e s /.$setResult($_FILES);./
    Keyword ::= f i r s t /.$setResult($_FIRST);./
    Keyword ::= f l o a t /.$setResult($_FLOAT_);./
    Keyword ::= g r a n t /.$setResult($_GRANT);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= i n d e x /.$setResult($_INDEX);./
    Keyword ::= i n n e r /.$setResult($_INNER);./
    Keyword ::= i n p u t /.$setResult($_INPUT);./
    Keyword ::= l e v e l /.$setResult($_LEVEL);./
    Keyword ::= l i m i t /.$setResult($_LIMIT);./
    Keyword ::= l o c a l /.$setResult($_LOCAL);./
    Keyword ::= m a t c h /.$setResult($_MATCH);./
    Keyword ::= m e r g e /.$setResult($_MERGE);./
    Keyword ::= m i n u s /.$setResult($_MINUS_);./
    Keyword ::= m o d e l /.$setResult($_MODEL);./
    Keyword ::= m y s q l /.$setResult($_MYSQL);./
    Keyword ::= n u l l s /.$setResult($_NULLS);./
    Keyword ::= o r d e r /.$setResult($_ORDER);./
    Keyword ::= o u t e r /.$setResult($_OUTER);./
    Keyword ::= o w n e r /.$setResult($_OWNER);./
    Keyword ::= p i v o t /.$setResult($_PIVOT);./
    Keyword ::= q u e r y /.$setResult($_QUERY);./
    Keyword ::= r e s e t /.$setResult($_RESET_);./
    Keyword ::= r i g h t /.$setResult($_RIGHT);./
    Keyword ::= r o l e s /.$setResult($_ROLES);./
    Keyword ::= s h a r e /.$setResult($_SHARE);./
    Keyword ::= s q l d w /.$setResult($_SQLDW);./
    Keyword ::= t a b l e /.$setResult($_TABLE);./
    Keyword ::= u n i o n /.$setResult($_UNION);./
    Keyword ::= u n s e t /.$setResult($_UNSET);./
    Keyword ::= u s a g e /.$setResult($_USAGE);./
    Keyword ::= u s e r s /.$setResult($_USERS);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= v a l u e /.$setResult($_VALUE);./
    Keyword ::= v i e w s /.$setResult($_VIEWS);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= w r i t e /.$setResult($_WRITE);./
    Keyword ::= a n t i /.$setResult($_ANTI);./
    Keyword ::= c a l l /.$setResult($_CALL);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c a s t /.$setResult($_CAST);./
    Keyword ::= c o p y /.$setResult($_COPY);./
    Keyword ::= c o s t /.$setResult($_COST);./
    Keyword ::= c u b e /.$setResult($_CUBE);./
    Keyword ::= d a t e /.$setResult($_DATE);./
    Keyword ::= d b f s /.$setResult($_DBFS);./
    Keyword ::= d e n y /.$setResult($_DENY);./
    Keyword ::= d e s c /.$setResult($_DESC);./
    Keyword ::= d r o p /.$setResult($_DROP);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= e x p r /.$setResult($_EXPR);./
    Keyword ::= f i l e /.$setResult($_FILE);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= f u l l /.$setResult($_FULL);./
    Keyword ::= h t t p /.$setResult($_HTTP);./
    Keyword ::= i n t o /.$setResult($_INTO);./
    Keyword ::= j a r s /.$setResult($_JARS);./
    Keyword ::= j o i n /.$setResult($_JOIN);./
    Keyword ::= j s o n /.$setResult($_JSON);./
    Keyword ::= k e y s /.$setResult($_KEYS);./
    Keyword ::= l a s t /.$setResult($_LAST);./
    Keyword ::= l e f t /.$setResult($_LEFT);./
    Keyword ::= l i k e /.$setResult($_LIKE);./
    Keyword ::= l i s t /.$setResult($_LIST);./
    Keyword ::= m o d e /.$setResult($_MODE);./
    Keyword ::= m o v e /.$setResult($_MOVE);./
    Keyword ::= m s c k /.$setResult($_MSCK);./
    Keyword ::= n a m e /.$setResult($_NAME);./
    Keyword ::= n u l l /.$setResult($_NULL_);./
    Keyword ::= o n l y /.$setResult($_ONLY);./
    Keyword ::= o v e r /.$setResult($_OVER);./
    Keyword ::= p a t h /.$setResult($_PATH_);./
    Keyword ::= p o r t /.$setResult($_PORT);./
    Keyword ::= r e a d /.$setResult($_READ);./
    Keyword ::= r e a l /.$setResult($_REAL_);./
    Keyword ::= r o l e /.$setResult($_ROLE);./
    Keyword ::= r o o m /.$setResult($_ROOM);./
    Keyword ::= r o w s /.$setResult($_ROWS);./
    Keyword ::= s e t s /.$setResult($_SETS);./
    Keyword ::= s h o w /.$setResult($_SHOW);./
    Keyword ::= s o r t /.$setResult($_SORT);./
    Keyword ::= s y n c /.$setResult($_SYNC);./
    Keyword ::= t a g s /.$setResult($_TAGS);./
    Keyword ::= t a s k /.$setResult($_TASK);./
    Keyword ::= t e m p /.$setResult($_TEMP);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t i m e /.$setResult($_TIME);./
    Keyword ::= t o d o /.$setResult($_TODO);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= u s e r /.$setResult($_USER);./
    Keyword ::= v i e w /.$setResult($_VIEW);./
    Keyword ::= v o i d /.$setResult($_VOID_);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= z o n e /.$setResult($_ZONE);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= a s c /.$setResult($_ASC);./
    Keyword ::= d e c /.$setResult($_DEC);./
    Keyword ::= d r y /.$setResult($_DRY);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= g e t /.$setResult($_GET);./
    Keyword ::= i f f /.$setResult($_IFF);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= j a r /.$setResult($_JAR);./
    Keyword ::= k e y /.$setResult($_KEY);./
    Keyword ::= l a g /.$setResult($_LAG);./
    Keyword ::= m a p /.$setResult($_MAP);./
    Keyword ::= m a x /.$setResult($_MAX);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= o u t /.$setResult($_OUT);./
    Keyword ::= p u t /.$setResult($_PUT);./
    Keyword ::= r u n /.$setResult($_RUN);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= t a g /.$setResult($_TAG);./
    Keyword ::= t o p /.$setResult($_TOP);./
    Keyword ::= u r l /.$setResult($_URL);./
    Keyword ::= u s e /.$setResult($_USE);./
    Keyword ::= v a r /.$setResult($_VAR);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= d o /.$setResult($_DO);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= o f /.$setResult($_OF);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
