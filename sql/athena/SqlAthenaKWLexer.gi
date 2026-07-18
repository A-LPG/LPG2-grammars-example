-- Keyword filter for SqlAthena (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.sql.athena
%options template=KeywordTemplateF.gi
%options fp=SqlAthenaKWLexer

%Include
    KWLexerLowerCaseMapF.gi
%End

%Export
    ADD
    ALL
    ALTER
    ANALYZE
    AND
    ANY
    ARRAY
    AS
    ASC
    AVRO
    BETWEEN
    BIGINT
    BINARY
    BOOLEAN
    BUCKETS
    BY
    CASCADE
    CASE
    CAST
    CHAR
    CLUSTERED
    COLLECTION
    COLUMNS
    COMMENT
    CREATE
    DATA
    DATABASE
    DATABASES
    DATE
    DBPROPERTIES
    DEALLOCATE
    DECIMAL
    DEFINED
    DELETE
    DELIMITED
    DESC
    DESCRIBE
    DISTINCT
    DISTRIBUTED
    DOUBLE
    DROP
    ELSE
    END
    ESCAPED
    EXCEPT
    EXECUTE
    EXISTS
    EXPLAIN
    EXTENDED
    EXTERNAL
    FALSE
    FIELDS
    FIRST
    FLOAT
    FORMAT
    FORMATTED
    FROM
    GRAPHVIZ
    GROUP
    HAVING
    IF
    IN
    INPUTFORMAT
    INSERT
    INT
    INTEGER
    INTERSECT
    INTO
    IO
    ION
    IS
    ITEMS
    JSON
    KEYS
    LAST
    LIKE
    LIMIT
    LINES
    LOCATION
    LOGICAL
    MAP
    MATCHED
    MERGE
    MSCK
    NO
    NOT
    NULLS
    NULL_
    OFFSET
    ON
    OPTIMIZE
    OR
    ORC
    ORDER
    OUTPUTFORMAT
    PARQUET
    PARTITION
    PARTITIONED
    PARTITIONS
    PREPARE
    RCFILE
    RENAME
    REPAIR
    REPLACE
    RESTRICT
    REWRITE
    ROW
    ROWS
    SCHEMA
    SCHEMAS
    SELECT
    SEQUENCEFILE
    SERDE
    SERDEPROPERTIES
    SET
    SHOW
    SMALLINT
    SOME
    STORED
    STRING
    STRUCT
    TABLE
    TABLES
    TBLPROPERTIES
    TERMINATED
    TEXT
    TEXTFILE
    THEN
    TIMESTAMP
    TINYINT
    TO
    TRUE
    TYPE
    UNION
    UNLOAD
    UPDATE
    USING
    VACUUM
    VALIDATE
    VALUES
    VARCHAR
    VIEW
    VIEWS
    WHEN
    WHERE
    WITH
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= s e r d e p r o p e r t i e s /.$setResult($_SERDEPROPERTIES);./
    Keyword ::= t b l p r o p e r t i e s /.$setResult($_TBLPROPERTIES);./
    Keyword ::= d b p r o p e r t i e s /.$setResult($_DBPROPERTIES);./
    Keyword ::= o u t p u t f o r m a t /.$setResult($_OUTPUTFORMAT);./
    Keyword ::= s e q u e n c e f i l e /.$setResult($_SEQUENCEFILE);./
    Keyword ::= d i s t r i b u t e d /.$setResult($_DISTRIBUTED);./
    Keyword ::= i n p u t f o r m a t /.$setResult($_INPUTFORMAT);./
    Keyword ::= p a r t i t i o n e d /.$setResult($_PARTITIONED);./
    Keyword ::= c o l l e c t i o n /.$setResult($_COLLECTION);./
    Keyword ::= d e a l l o c a t e /.$setResult($_DEALLOCATE);./
    Keyword ::= p a r t i t i o n s /.$setResult($_PARTITIONS);./
    Keyword ::= t e r m i n a t e d /.$setResult($_TERMINATED);./
    Keyword ::= c l u s t e r e d /.$setResult($_CLUSTERED);./
    Keyword ::= d a t a b a s e s /.$setResult($_DATABASES);./
    Keyword ::= d e l i m i t e d /.$setResult($_DELIMITED);./
    Keyword ::= f o r m a t t e d /.$setResult($_FORMATTED);./
    Keyword ::= i n t e r s e c t /.$setResult($_INTERSECT);./
    Keyword ::= p a r t i t i o n /.$setResult($_PARTITION);./
    Keyword ::= t i m e s t a m p /.$setResult($_TIMESTAMP);./
    Keyword ::= d a t a b a s e /.$setResult($_DATABASE);./
    Keyword ::= d e s c r i b e /.$setResult($_DESCRIBE);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT);./
    Keyword ::= e x t e n d e d /.$setResult($_EXTENDED);./
    Keyword ::= e x t e r n a l /.$setResult($_EXTERNAL);./
    Keyword ::= g r a p h v i z /.$setResult($_GRAPHVIZ);./
    Keyword ::= l o c a t i o n /.$setResult($_LOCATION);./
    Keyword ::= o p t i m i z e /.$setResult($_OPTIMIZE);./
    Keyword ::= r e s t r i c t /.$setResult($_RESTRICT);./
    Keyword ::= s m a l l i n t /.$setResult($_SMALLINT);./
    Keyword ::= t e x t f i l e /.$setResult($_TEXTFILE);./
    Keyword ::= v a l i d a t e /.$setResult($_VALIDATE);./
    Keyword ::= a n a l y z e /.$setResult($_ANALYZE);./
    Keyword ::= b e t w e e n /.$setResult($_BETWEEN);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN);./
    Keyword ::= b u c k e t s /.$setResult($_BUCKETS);./
    Keyword ::= c a s c a d e /.$setResult($_CASCADE);./
    Keyword ::= c o l u m n s /.$setResult($_COLUMNS);./
    Keyword ::= c o m m e n t /.$setResult($_COMMENT);./
    Keyword ::= d e c i m a l /.$setResult($_DECIMAL);./
    Keyword ::= d e f i n e d /.$setResult($_DEFINED);./
    Keyword ::= e s c a p e d /.$setResult($_ESCAPED);./
    Keyword ::= e x e c u t e /.$setResult($_EXECUTE);./
    Keyword ::= e x p l a i n /.$setResult($_EXPLAIN);./
    Keyword ::= i n t e g e r /.$setResult($_INTEGER);./
    Keyword ::= l o g i c a l /.$setResult($_LOGICAL);./
    Keyword ::= m a t c h e d /.$setResult($_MATCHED);./
    Keyword ::= p a r q u e t /.$setResult($_PARQUET);./
    Keyword ::= p r e p a r e /.$setResult($_PREPARE);./
    Keyword ::= r e p l a c e /.$setResult($_REPLACE);./
    Keyword ::= r e w r i t e /.$setResult($_REWRITE);./
    Keyword ::= s c h e m a s /.$setResult($_SCHEMAS);./
    Keyword ::= t i n y i n t /.$setResult($_TINYINT);./
    Keyword ::= v a r c h a r /.$setResult($_VARCHAR);./
    Keyword ::= b i g i n t /.$setResult($_BIGINT);./
    Keyword ::= b i n a r y /.$setResult($_BINARY);./
    Keyword ::= c r e a t e /.$setResult($_CREATE);./
    Keyword ::= d e l e t e /.$setResult($_DELETE);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE);./
    Keyword ::= e x c e p t /.$setResult($_EXCEPT);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS);./
    Keyword ::= f i e l d s /.$setResult($_FIELDS);./
    Keyword ::= f o r m a t /.$setResult($_FORMAT);./
    Keyword ::= h a v i n g /.$setResult($_HAVING);./
    Keyword ::= i n s e r t /.$setResult($_INSERT);./
    Keyword ::= o f f s e t /.$setResult($_OFFSET);./
    Keyword ::= r c f i l e /.$setResult($_RCFILE);./
    Keyword ::= r e n a m e /.$setResult($_RENAME);./
    Keyword ::= r e p a i r /.$setResult($_REPAIR);./
    Keyword ::= s c h e m a /.$setResult($_SCHEMA);./
    Keyword ::= s e l e c t /.$setResult($_SELECT);./
    Keyword ::= s t o r e d /.$setResult($_STORED);./
    Keyword ::= s t r i n g /.$setResult($_STRING);./
    Keyword ::= s t r u c t /.$setResult($_STRUCT);./
    Keyword ::= t a b l e s /.$setResult($_TABLES);./
    Keyword ::= u n l o a d /.$setResult($_UNLOAD);./
    Keyword ::= u p d a t e /.$setResult($_UPDATE);./
    Keyword ::= v a c u u m /.$setResult($_VACUUM);./
    Keyword ::= v a l u e s /.$setResult($_VALUES);./
    Keyword ::= a l t e r /.$setResult($_ALTER);./
    Keyword ::= a r r a y /.$setResult($_ARRAY);./
    Keyword ::= f a l s e /.$setResult($_FALSE);./
    Keyword ::= f i r s t /.$setResult($_FIRST);./
    Keyword ::= f l o a t /.$setResult($_FLOAT);./
    Keyword ::= g r o u p /.$setResult($_GROUP);./
    Keyword ::= i t e m s /.$setResult($_ITEMS);./
    Keyword ::= l i m i t /.$setResult($_LIMIT);./
    Keyword ::= l i n e s /.$setResult($_LINES);./
    Keyword ::= m e r g e /.$setResult($_MERGE);./
    Keyword ::= n u l l s /.$setResult($_NULLS);./
    Keyword ::= o r d e r /.$setResult($_ORDER);./
    Keyword ::= s e r d e /.$setResult($_SERDE);./
    Keyword ::= t a b l e /.$setResult($_TABLE);./
    Keyword ::= u n i o n /.$setResult($_UNION);./
    Keyword ::= u s i n g /.$setResult($_USING);./
    Keyword ::= v i e w s /.$setResult($_VIEWS);./
    Keyword ::= w h e r e /.$setResult($_WHERE);./
    Keyword ::= a v r o /.$setResult($_AVRO);./
    Keyword ::= c a s e /.$setResult($_CASE);./
    Keyword ::= c a s t /.$setResult($_CAST);./
    Keyword ::= c h a r /.$setResult($_CHAR);./
    Keyword ::= d a t a /.$setResult($_DATA);./
    Keyword ::= d a t e /.$setResult($_DATE);./
    Keyword ::= d e s c /.$setResult($_DESC);./
    Keyword ::= d r o p /.$setResult($_DROP);./
    Keyword ::= e l s e /.$setResult($_ELSE);./
    Keyword ::= f r o m /.$setResult($_FROM);./
    Keyword ::= i n t o /.$setResult($_INTO);./
    Keyword ::= j s o n /.$setResult($_JSON);./
    Keyword ::= k e y s /.$setResult($_KEYS);./
    Keyword ::= l a s t /.$setResult($_LAST);./
    Keyword ::= l i k e /.$setResult($_LIKE);./
    Keyword ::= m s c k /.$setResult($_MSCK);./
    Keyword ::= n u l l /.$setResult($_NULL_);./
    Keyword ::= r o w s /.$setResult($_ROWS);./
    Keyword ::= s h o w /.$setResult($_SHOW);./
    Keyword ::= s o m e /.$setResult($_SOME);./
    Keyword ::= t e x t /.$setResult($_TEXT);./
    Keyword ::= t h e n /.$setResult($_THEN);./
    Keyword ::= t r u e /.$setResult($_TRUE);./
    Keyword ::= t y p e /.$setResult($_TYPE);./
    Keyword ::= v i e w /.$setResult($_VIEW);./
    Keyword ::= w h e n /.$setResult($_WHEN);./
    Keyword ::= w i t h /.$setResult($_WITH);./
    Keyword ::= a d d /.$setResult($_ADD);./
    Keyword ::= a l l /.$setResult($_ALL);./
    Keyword ::= a n d /.$setResult($_AND);./
    Keyword ::= a n y /.$setResult($_ANY);./
    Keyword ::= a s c /.$setResult($_ASC);./
    Keyword ::= e n d /.$setResult($_END);./
    Keyword ::= i n t /.$setResult($_INT);./
    Keyword ::= i o n /.$setResult($_ION);./
    Keyword ::= m a p /.$setResult($_MAP);./
    Keyword ::= n o t /.$setResult($_NOT);./
    Keyword ::= o r c /.$setResult($_ORC);./
    Keyword ::= r o w /.$setResult($_ROW);./
    Keyword ::= s e t /.$setResult($_SET);./
    Keyword ::= a s /.$setResult($_AS);./
    Keyword ::= b y /.$setResult($_BY);./
    Keyword ::= i f /.$setResult($_IF);./
    Keyword ::= i n /.$setResult($_IN);./
    Keyword ::= i o /.$setResult($_IO);./
    Keyword ::= i s /.$setResult($_IS);./
    Keyword ::= n o /.$setResult($_NO);./
    Keyword ::= o n /.$setResult($_ON);./
    Keyword ::= o r /.$setResult($_OR);./
    Keyword ::= t o /.$setResult($_TO);./
%End
