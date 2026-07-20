-- Keyword filter for SqlClickhouse (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.sql.clickhouse
%options template=KeywordTemplateF.gi
%options fp=SqlClickhouseKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ACCESS
    ADD
    AFTER
    ALIAS
    ALL
    ALTER
    AND
    ANTI
    ANY
    ARRAY
    AS
    ASOF
    AST
    ASYNC
    ATTACH
    BETWEEN
    BOTH
    BY
    CACHES
    CASE
    CAST
    CHANGED
    CHECK
    CLEAR
    CLUSTER
    CLUSTERS
    CODEC
    COLLATE
    COLUMN
    COLUMNS
    COMMENT
    CONSTRAINT
    CREATE
    CROSS
    CUBE
    CURRENT
    DATABASE
    DATABASES
    DATE
    DAY
    DEDUPLICATE
    DEFAULT
    DELAY
    DELETE
    DESC
    DESCENDING
    DESCRIBE
    DETACH
    DICTIONARIES
    DICTIONARY
    DISK
    DISTINCT
    DISTRIBUTED
    DROP
    ELSE
    ENABLED
    END
    ENGINE
    ENGINES
    ESTIMATE
    EVENTS
    EXCEPT
    EXISTS
    EXPLAIN
    EXPRESSION
    EXTENDED
    EXTRACT
    FETCHES
    FIELDS
    FILESYSTEM
    FILL
    FINAL
    FIRST
    FLUSH
    FOLLOWING
    FOR
    FORMAT
    FREEZE
    FROM
    FULL
    FUNCTION
    FUNCTIONS
    GLOBAL
    GRANTS
    GRANULARITY
    GROUP
    GROUPING
    HAVING
    HIERARCHICAL
    HOUR
    ID
    IF
    ILIKE
    IMPLICIT
    IN
    INDEX
    INDEXES
    INDICES
    INJECTIVE
    INNER
    INSERT
    INTERPOLATE
    INTERVAL
    INTO
    IS
    JOIN
    JSON_FALSE
    JSON_TRUE
    KEY
    KEYS
    KILL
    LAST
    LAYOUT
    LEADING
    LEFT
    LIFETIME
    LIKE
    LIMIT
    LIVE
    LOCAL
    LOGS
    MATERIALIZE
    MATERIALIZED
    MAX
    MERGES
    MICROSECOND
    MILLISECOND
    MIN
    MINUTE
    MODIFY
    MONTH
    MOVE
    MUTATION
    NANOSECOND
    NAN_SQL
    NO
    NOT
    NULLS
    NULL_SQL
    OFFSET
    ON
    OPTIMIZE
    OR
    ORDER
    OUTER
    OUTFILE
    OVER
    OVERRIDE
    PARTITION
    PIPELINE
    PLAN
    POLICIES
    POLICY
    POPULATE
    PRECEDING
    PREWHERE
    PRIMARY
    PRIVILEGES
    PROCESSLIST
    PROFILE
    PROFILES
    PROJECTION
    QUARTER
    QUOTA
    QUOTAS
    RANGE
    RECURSIVE
    RELOAD
    REMOVE
    RENAME
    REPLACE
    REPLICA
    REPLICATED
    RIGHT
    ROLE
    ROLES
    ROLLUP
    ROW
    ROWS
    SAMPLE
    SECOND
    SELECT
    SEMI
    SENDS
    SET
    SETS
    SETTING
    SETTINGS
    SHOW
    SOURCE
    START
    STEP
    STOP
    SUBSTRING
    SYNC
    SYNTAX
    SYSTEM
    TABLE
    TABLES
    TEMPORARY
    TEST
    THEN
    TIES
    TIMEOUT
    TIMESTAMP
    TO
    TOP
    TOTALS
    TRAILING
    TREE
    TRIM
    TRUNCATE
    TTL
    TYPE
    UNBOUNDED
    UNION
    UPDATE
    USE
    USER
    USERS
    USING
    UUID
    VALUES
    VIEW
    VOLUME
    WATCH
    WEEK
    WHEN
    WHERE
    WINDOW
    WITH
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= d i c t i o n a r i e s /.$setResult($_DICTIONARIES);./
    Keyword ::= h i e r a r c h i c a l /.$setResult($_HIERARCHICAL);./
    Keyword ::= m a t e r i a l i z e d /.$setResult($_MATERIALIZED);./
    Keyword ::= d e d u p l i c a t e /.$setResult($_DEDUPLICATE);./
    Keyword ::= d i s t r i b u t e d /.$setResult($_DISTRIBUTED);./
    Keyword ::= g r a n u l a r i t y /.$setResult($_GRANULARITY);./
    Keyword ::= i n t e r p o l a t e /.$setResult($_INTERPOLATE);./
    Keyword ::= m a t e r i a l i z e /.$setResult($_MATERIALIZE);./
    Keyword ::= m i c r o s e c o n d /.$setResult($_MICROSECOND);./
    Keyword ::= m i l l i s e c o n d /.$setResult($_MILLISECOND);./
    Keyword ::= p r o c e s s l i s t /.$setResult($_PROCESSLIST);./
    Keyword ::= c o n s t r a i n t /.$setResult($_CONSTRAINT);./
    Keyword ::= d e s c e n d i n g /.$setResult($_DESCENDING);./
    Keyword ::= d i c t i o n a r y /.$setResult($_DICTIONARY);./
    Keyword ::= e x p r e s s i o n /.$setResult($_EXPRESSION);./
    Keyword ::= f i l e s y s t e m /.$setResult($_FILESYSTEM);./
    Keyword ::= n a n o s e c o n d /.$setResult($_NANOSECOND);./
    Keyword ::= p r i v i l e g e s /.$setResult($_PRIVILEGES);./
    Keyword ::= p r o j e c t i o n /.$setResult($_PROJECTION);./
    Keyword ::= r e p l i c a t e d /.$setResult($_REPLICATED);./
    Keyword ::= d a t a b a s e s /.$setResult($_DATABASES);./
    Keyword ::= f o l l o w i n g /.$setResult($_FOLLOWING);./
    Keyword ::= f u n c t i o n s /.$setResult($_FUNCTIONS);./
    Keyword ::= i n j e c t i v e /.$setResult($_INJECTIVE);./
    Keyword ::= p a r t i t i o n /.$setResult($_PARTITION);./
    Keyword ::= p r e c e d i n g /.$setResult($_PRECEDING);./
    Keyword ::= r e c u r s i v e /.$setResult($_RECURSIVE);./
    Keyword ::= s u b s t r i n g /.$setResult($_SUBSTRING);./
    Keyword ::= t e m p o r a r y /.$setResult($_TEMPORARY);./
    Keyword ::= t i m e s t a m p /.$setResult($_TIMESTAMP);./
    Keyword ::= u n b o u n d e d /.$setResult($_UNBOUNDED);./
    Keyword ::= c l u s t e r s /.$setResult($_CLUSTERS);./
    Keyword ::= d a t a b a s e /.$setResult($_DATABASE);./
    Keyword ::= d e s c r i b e /.$setResult($_DESCRIBE);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT);./
    Keyword ::= e s t i m a t e /.$setResult($_ESTIMATE);./
    Keyword ::= e x t e n d e d /.$setResult($_EXTENDED);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION);./
    Keyword ::= g r o u p i n g /.$setResult($_GROUPING);./
    Keyword ::= i m p l i c i t /.$setResult($_IMPLICIT);./
    Keyword ::= i n t e r v a l /.$setResult($_INTERVAL);./
    Keyword ::= l i f e t i m e /.$setResult($_LIFETIME);./
    Keyword ::= m u t a t i o n /.$setResult($_MUTATION);./
    Keyword ::= o p t i m i z e /.$setResult($_OPTIMIZE);./
    Keyword ::= o v e r r i d e /.$setResult($_OVERRIDE);./
    Keyword ::= p i p e l i n e /.$setResult($_PIPELINE);./
    Keyword ::= p o l i c i e s /.$setResult($_POLICIES);./
    Keyword ::= p o p u l a t e /.$setResult($_POPULATE);./
    Keyword ::= p r e w h e r e /.$setResult($_PREWHERE);./
    Keyword ::= p r o f i l e s /.$setResult($_PROFILES);./
    Keyword ::= s e t t i n g s /.$setResult($_SETTINGS);./
    Keyword ::= t r a i l i n g /.$setResult($_TRAILING);./
    Keyword ::= t r u n c a t e /.$setResult($_TRUNCATE);./
    Keyword ::= b e t w e e n /.$setResult($_BETWEEN);./
    Keyword ::= c h a n g e d /.$setResult($_CHANGED);./
    Keyword ::= c l u s t e r /.$setResult($_CLUSTER);./
    Keyword ::= c o l l a t e /.$setResult($_COLLATE);./
    Keyword ::= c o l u m n s /.$setResult($_COLUMNS);./
    Keyword ::= c o m m e n t /.$setResult($_COMMENT);./
    Keyword ::= c u r r e n t /.$setResult($_CURRENT);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT);./
    Keyword ::= e n a b l e d /.$setResult($_ENABLED);./
    Keyword ::= e n g i n e s /.$setResult($_ENGINES);./
    Keyword ::= e x p l a i n /.$setResult($_EXPLAIN);./
    Keyword ::= e x t r a c t /.$setResult($_EXTRACT);./
    Keyword ::= f e t c h e s /.$setResult($_FETCHES);./
    Keyword ::= i n d e x e s /.$setResult($_INDEXES);./
    Keyword ::= i n d i c e s /.$setResult($_INDICES);./
    Keyword ::= l e a d i n g /.$setResult($_LEADING);./
    Keyword ::= o u t f i l e /.$setResult($_OUTFILE);./
    Keyword ::= p r i m a r y /.$setResult($_PRIMARY);./
    Keyword ::= p r o f i l e /.$setResult($_PROFILE);./
    Keyword ::= q u a r t e r /.$setResult($_QUARTER);./
    Keyword ::= r e p l a c e /.$setResult($_REPLACE);./
    Keyword ::= r e p l i c a /.$setResult($_REPLICA);./
    Keyword ::= s e t t i n g /.$setResult($_SETTING);./
    Keyword ::= t i m e o u t /.$setResult($_TIMEOUT);./
    Keyword ::= a c c e s s /.$setResult($_ACCESS);./
    Keyword ::= a t t a c h /.$setResult($_ATTACH);./
    Keyword ::= c a c h e s /.$setResult($_CACHES);./
    Keyword ::= c o l u m n /.$setResult($_COLUMN);./
    Keyword ::= c r e a t e /.$setResult($_CREATE);./
    Keyword ::= d e l e t e /.$setResult($_DELETE);./
    Keyword ::= d e t a c h /.$setResult($_DETACH);./
    Keyword ::= e n g i n e /.$setResult($_ENGINE);./
    Keyword ::= e v e n t s /.$setResult($_EVENTS);./
    Keyword ::= e x c e p t /.$setResult($_EXCEPT);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS);./
    Keyword ::= f i e l d s /.$setResult($_FIELDS);./
    Keyword ::= f o r m a t /.$setResult($_FORMAT);./
    Keyword ::= f r e e z e /.$setResult($_FREEZE);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL);./
    Keyword ::= g r a n t s /.$setResult($_GRANTS);./
    Keyword ::= h a v i n g /.$setResult($_HAVING);./
    Keyword ::= i n s e r t /.$setResult($_INSERT);./
    Keyword ::= l a y o u t /.$setResult($_LAYOUT);./
    Keyword ::= m e r g e s /.$setResult($_MERGES);./
    Keyword ::= m i n u t e /.$setResult($_MINUTE);./
    Keyword ::= m o d i f y /.$setResult($_MODIFY);./
    Keyword ::= o f f s e t /.$setResult($_OFFSET);./
    Keyword ::= p o l i c y /.$setResult($_POLICY);./
    Keyword ::= q u o t a s /.$setResult($_QUOTAS);./
    Keyword ::= r e l o a d /.$setResult($_RELOAD);./
    Keyword ::= r e m o v e /.$setResult($_REMOVE);./
    Keyword ::= r e n a m e /.$setResult($_RENAME);./
    Keyword ::= r o l l u p /.$setResult($_ROLLUP);./
    Keyword ::= s a m p l e /.$setResult($_SAMPLE);./
    Keyword ::= s e c o n d /.$setResult($_SECOND);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s o u r c e /.$setResult($_SOURCE);./
    Keyword ::= s y n t a x /.$setResult($_SYNTAX);./
    Keyword ::= s y s t e m /.$setResult($_SYSTEM);./
    Keyword ::= t a b l e s /.$setResult($_TABLES);./
    Keyword ::= t o t a l s /.$setResult($_TOTALS);./
    Keyword ::= u p d a t e /.$setResult($_UPDATE);./
    Keyword ::= v a l u e s /.$setResult($_VALUES);./
    Keyword ::= v o l u m e /.$setResult($_VOLUME);./
    Keyword ::= w i n d o w /.$setResult($_WINDOW);./
    Keyword ::= a f t e r /.$setResult($_AFTER);./
    Keyword ::= a l i a s /.$setResult($_ALIAS);./
    Keyword ::= a l t e r /.$setResult($_ALTER);./
    Keyword ::= a r r a y /.$setResult($_ARRAY);./
    Keyword ::= a s y n c /.$setResult($_ASYNC);./
    Keyword ::= c h e c k /.$setResult($_CHECK);./
    Keyword ::= c l e a r /.$setResult($_CLEAR);./
    Keyword ::= c o d e c /.$setResult($_CODEC);./
    Keyword ::= c r o s s /.$setResult($_CROSS);./
    Keyword ::= d e l a y /.$setResult($_DELAY);./
    Keyword ::= f a l s e /.$setResult($_JSON_FALSE);./
    Keyword ::= f i n a l /.$setResult($_FINAL);./
    Keyword ::= f i r s t /.$setResult($_FIRST);./
    Keyword ::= f l u s h /.$setResult($_FLUSH);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= i l i k e /.$setResult($_ILIKE);./
    Keyword ::= i n d e x /.$setResult($_INDEX);./
    Keyword ::= i n n e r /.$setResult($_INNER);./
    Keyword ::= l i m i t /.$setResult($_LIMIT);./
    Keyword ::= l o c a l /.$setResult($_LOCAL);./
    Keyword ::= m o n t h /.$setResult($_MONTH);./
    Keyword ::= n u l l s /.$setResult($_NULLS);./
    Keyword ::= o r d e r /.$setResult($_ORDER);./
    Keyword ::= o u t e r /.$setResult($_OUTER);./
    Keyword ::= q u o t a /.$setResult($_QUOTA);./
    Keyword ::= r a n g e /.$setResult($_RANGE);./
    Keyword ::= r i g h t /.$setResult($_RIGHT);./
    Keyword ::= r o l e s /.$setResult($_ROLES);./
    Keyword ::= s e n d s /.$setResult($_SENDS);./
    Keyword ::= s t a r t /.$setResult($_START);./
    Keyword ::= t a b l e /.$setResult($_TABLE);./
    Keyword ::= u n i o n /.$setResult($_UNION);./
    Keyword ::= u s e r s /.$setResult($_USERS);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= w a t c h /.$setResult($_WATCH);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= a n t i /.$setResult($_ANTI);./
    Keyword ::= a s o f /.$setResult($_ASOF);./
    Keyword ::= b o t h /.$setResult($_BOTH);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c a s t /.$setResult($_CAST);./
    Keyword ::= c u b e /.$setResult($_CUBE);./
    Keyword ::= d a t e /.$setResult($_DATE);./
    Keyword ::= d e s c /.$setResult($_DESC);./
    Keyword ::= d i s k /.$setResult($_DISK);./
    Keyword ::= d r o p /.$setResult($_DROP);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= f i l l /.$setResult($_FILL);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= f u l l /.$setResult($_FULL);./
    Keyword ::= h o u r /.$setResult($_HOUR);./
    Keyword ::= i n t o /.$setResult($_INTO);./
    Keyword ::= j o i n /.$setResult($_JOIN);./
    Keyword ::= k e y s /.$setResult($_KEYS);./
    Keyword ::= k i l l /.$setResult($_KILL);./
    Keyword ::= l a s t /.$setResult($_LAST);./
    Keyword ::= l e f t /.$setResult($_LEFT);./
    Keyword ::= l i k e /.$setResult($_LIKE);./
    Keyword ::= l i v e /.$setResult($_LIVE);./
    Keyword ::= l o g s /.$setResult($_LOGS);./
    Keyword ::= m o v e /.$setResult($_MOVE);./
    Keyword ::= n u l l /.$setResult($_NULL_SQL);./
    Keyword ::= o v e r /.$setResult($_OVER);./
    Keyword ::= p l a n /.$setResult($_PLAN);./
    Keyword ::= r o l e /.$setResult($_ROLE);./
    Keyword ::= r o w s /.$setResult($_ROWS);./
    Keyword ::= s e m i /.$setResult($_SEMI);./
    Keyword ::= s e t s /.$setResult($_SETS);./
    Keyword ::= s h o w /.$setResult($_SHOW);./
    Keyword ::= s t e p /.$setResult($_STEP);./
    Keyword ::= s t o p /.$setResult($_STOP);./
    Keyword ::= s y n c /.$setResult($_SYNC);./
    Keyword ::= t e s t /.$setResult($_TEST);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t i e s /.$setResult($_TIES);./
    Keyword ::= t r e e /.$setResult($_TREE);./
    Keyword ::= t r i m /.$setResult($_TRIM);./
    Keyword ::= t r u e /.$setResult($_JSON_TRUE);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= u s e r /.$setResult($_USER);./
    Keyword ::= u u i d /.$setResult($_UUID);./
    Keyword ::= v i e w /.$setResult($_VIEW);./
    Keyword ::= w e e k /.$setResult($_WEEK);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= a s t /.$setResult($_AST);./
    Keyword ::= d a y /.$setResult($_DAY);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= f o r /.$setResult($_FOR);./
    Keyword ::= k e y /.$setResult($_KEY);./
    Keyword ::= m a x /.$setResult($_MAX);./
    Keyword ::= m i n /.$setResult($_MIN);./
    Keyword ::= n a n /.$setResult($_NAN_SQL);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= r o w /.$setResult($_ROW);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= t o p /.$setResult($_TOP);./
    Keyword ::= t t l /.$setResult($_TTL);./
    Keyword ::= u s e /.$setResult($_USE);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= i d /.$setResult($_ID);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= n o /.$setResult($_NO);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
