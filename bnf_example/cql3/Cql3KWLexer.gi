-- Keyword filter for Cql3 (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.cql3
%options template=KeywordTemplateF.gi
%options fp=Cql3KWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    K_ADD
    K_AGGREGATE
    K_ALL
    K_ALLOW
    K_ALTER
    K_AND
    K_ANY
    K_APPLY
    K_AS
    K_ASC
    K_ASCII
    K_AUTHORIZE
    K_BATCH
    K_BEGIN
    K_BIGINT
    K_BLOB
    K_BOOLEAN
    K_BY
    K_CALLED
    K_CLUSTERING
    K_COLUMNFAMILY
    K_COMPACT
    K_CONSISTENCY
    K_CONTAINS
    K_COUNTER
    K_CREATE
    K_CUSTOM
    K_DATE
    K_DECIMAL
    K_DEFAULT
    K_DELETE
    K_DESC
    K_DESCRIBE
    K_DISTINCT
    K_DOUBLE
    K_DROP
    K_ENTRIES
    K_EXECUTE
    K_EXISTS
    K_FALSE
    K_FILTERING
    K_FINALFUNC
    K_FLOAT
    K_FROM
    K_FROZEN
    K_FULL
    K_FUNCTION
    K_FUNCTIONS
    K_GRANT
    K_IF
    K_IN
    K_INDEX
    K_INET
    K_INFINITY
    K_INITCOND
    K_INPUT
    K_INSERT
    K_INT
    K_INTO
    K_IS
    K_JSON
    K_KEY
    K_KEYS
    K_KEYSPACE
    K_KEYSPACES
    K_LANGUAGE
    K_LEVEL
    K_LIMIT
    K_LIST
    K_LOGGED
    K_LOGIN
    K_MAP
    K_MASKED
    K_MATERIALIZED
    K_MODIFY
    K_NAN
    K_NORECURSIVE
    K_NOSUPERUSER
    K_NOT
    K_NULL
    K_OF
    K_ON
    K_ONE
    K_OPTIONS
    K_OR
    K_ORDER
    K_PARTITION
    K_PASSWORD
    K_PER
    K_PERMISSION
    K_PERMISSIONS
    K_PRIMARY
    K_QUORUM
    K_RENAME
    K_REPLACE
    K_REPLICATION
    K_RETURNS
    K_REVOKE
    K_ROLE
    K_ROLES
    K_SCHEMA
    K_SELECT
    K_SET
    K_SFUNC
    K_SMALLINT
    K_STATIC
    K_STORAGE
    K_STYPE
    K_SUPERUSER
    K_TABLE
    K_TEXT
    K_THREE
    K_TIME
    K_TIMESTAMP
    K_TIMEUUID
    K_TINYINT
    K_TO
    K_TOKEN
    K_TRIGGER
    K_TRUE
    K_TRUNCATE
    K_TTL
    K_TUPLE
    K_TWO
    K_TYPE
    K_UNLOGGED
    K_UPDATE
    K_USE
    K_USER
    K_USING
    K_UUID
    K_VALUES
    K_VARCHAR
    K_VARINT
    K_VECTOR
    K_VIEW
    K_WHERE
    K_WITH
    K_WRITETIME
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= c o l u m n f a m i l y /.$setResult($_K_COLUMNFAMILY);./
    Keyword ::= m a t e r i a l i z e d /.$setResult($_K_MATERIALIZED);./
    Keyword ::= c o n s i s t e n c y /.$setResult($_K_CONSISTENCY);./
    Keyword ::= n o r e c u r s i v e /.$setResult($_K_NORECURSIVE);./
    Keyword ::= n o s u p e r u s e r /.$setResult($_K_NOSUPERUSER);./
    Keyword ::= p e r m i s s i o n s /.$setResult($_K_PERMISSIONS);./
    Keyword ::= r e p l i c a t i o n /.$setResult($_K_REPLICATION);./
    Keyword ::= c l u s t e r i n g /.$setResult($_K_CLUSTERING);./
    Keyword ::= p e r m i s s i o n /.$setResult($_K_PERMISSION);./
    Keyword ::= a g g r e g a t e /.$setResult($_K_AGGREGATE);./
    Keyword ::= a u t h o r i z e /.$setResult($_K_AUTHORIZE);./
    Keyword ::= f i l t e r i n g /.$setResult($_K_FILTERING);./
    Keyword ::= f i n a l f u n c /.$setResult($_K_FINALFUNC);./
    Keyword ::= f u n c t i o n s /.$setResult($_K_FUNCTIONS);./
    Keyword ::= k e y s p a c e s /.$setResult($_K_KEYSPACES);./
    Keyword ::= p a r t i t i o n /.$setResult($_K_PARTITION);./
    Keyword ::= s u p e r u s e r /.$setResult($_K_SUPERUSER);./
    Keyword ::= t i m e s t a m p /.$setResult($_K_TIMESTAMP);./
    Keyword ::= w r i t e t i m e /.$setResult($_K_WRITETIME);./
    Keyword ::= c o n t a i n s /.$setResult($_K_CONTAINS);./
    Keyword ::= d e s c r i b e /.$setResult($_K_DESCRIBE);./
    Keyword ::= d i s t i n c t /.$setResult($_K_DISTINCT);./
    Keyword ::= f u n c t i o n /.$setResult($_K_FUNCTION);./
    Keyword ::= i n f i n i t y /.$setResult($_K_INFINITY);./
    Keyword ::= i n i t c o n d /.$setResult($_K_INITCOND);./
    Keyword ::= k e y s p a c e /.$setResult($_K_KEYSPACE);./
    Keyword ::= l a n g u a g e /.$setResult($_K_LANGUAGE);./
    Keyword ::= p a s s w o r d /.$setResult($_K_PASSWORD);./
    Keyword ::= s m a l l i n t /.$setResult($_K_SMALLINT);./
    Keyword ::= t i m e u u i d /.$setResult($_K_TIMEUUID);./
    Keyword ::= t r u n c a t e /.$setResult($_K_TRUNCATE);./
    Keyword ::= u n l o g g e d /.$setResult($_K_UNLOGGED);./
    Keyword ::= b o o l e a n /.$setResult($_K_BOOLEAN);./
    Keyword ::= c o m p a c t /.$setResult($_K_COMPACT);./
    Keyword ::= c o u n t e r /.$setResult($_K_COUNTER);./
    Keyword ::= d e c i m a l /.$setResult($_K_DECIMAL);./
    Keyword ::= d e f a u l t /.$setResult($_K_DEFAULT);./
    Keyword ::= e n t r i e s /.$setResult($_K_ENTRIES);./
    Keyword ::= e x e c u t e /.$setResult($_K_EXECUTE);./
    Keyword ::= o p t i o n s /.$setResult($_K_OPTIONS);./
    Keyword ::= p r i m a r y /.$setResult($_K_PRIMARY);./
    Keyword ::= r e p l a c e /.$setResult($_K_REPLACE);./
    Keyword ::= r e t u r n s /.$setResult($_K_RETURNS);./
    Keyword ::= s t o r a g e /.$setResult($_K_STORAGE);./
    Keyword ::= t i n y i n t /.$setResult($_K_TINYINT);./
    Keyword ::= t r i g g e r /.$setResult($_K_TRIGGER);./
    Keyword ::= v a r c h a r /.$setResult($_K_VARCHAR);./
    Keyword ::= b i g i n t /.$setResult($_K_BIGINT);./
    Keyword ::= c a l l e d /.$setResult($_K_CALLED);./
    Keyword ::= c r e a t e /.$setResult($_K_CREATE);./
    Keyword ::= c u s t o m /.$setResult($_K_CUSTOM);./
    Keyword ::= d e l e t e /.$setResult($_K_DELETE);./
    Keyword ::= d o u b l e /.$setResult($_K_DOUBLE);./
    Keyword ::= e x i s t s /.$setResult($_K_EXISTS);./
    Keyword ::= f r o z e n /.$setResult($_K_FROZEN);./
    Keyword ::= i n s e r t /.$setResult($_K_INSERT);./
    Keyword ::= l o g g e d /.$setResult($_K_LOGGED);./
    Keyword ::= m a s k e d /.$setResult($_K_MASKED);./
    Keyword ::= m o d i f y /.$setResult($_K_MODIFY);./
    Keyword ::= q u o r u m /.$setResult($_K_QUORUM);./
    Keyword ::= r e n a m e /.$setResult($_K_RENAME);./
    Keyword ::= r e v o k e /.$setResult($_K_REVOKE);./
    Keyword ::= s c h e m a /.$setResult($_K_SCHEMA);./
    Keyword ::= s e l e c t /.$setResult($_K_SELECT);./
    Keyword ::= s t a t i c /.$setResult($_K_STATIC);./
    Keyword ::= u p d a t e /.$setResult($_K_UPDATE);./
    Keyword ::= v a l u e s /.$setResult($_K_VALUES);./
    Keyword ::= v a r i n t /.$setResult($_K_VARINT);./
    Keyword ::= v e c t o r /.$setResult($_K_VECTOR);./
    Keyword ::= a l l o w /.$setResult($_K_ALLOW);./
    Keyword ::= a l t e r /.$setResult($_K_ALTER);./
    Keyword ::= a p p l y /.$setResult($_K_APPLY);./
    Keyword ::= a s c i i /.$setResult($_K_ASCII);./
    Keyword ::= b a t c h /.$setResult($_K_BATCH);./
    Keyword ::= b e g i n /.$setResult($_K_BEGIN);./
    Keyword ::= f a l s e /.$setResult($_K_FALSE);./
    Keyword ::= f l o a t /.$setResult($_K_FLOAT);./
    Keyword ::= g r a n t /.$setResult($_K_GRANT);./
    Keyword ::= i n d e x /.$setResult($_K_INDEX);./
    Keyword ::= i n p u t /.$setResult($_K_INPUT);./
    Keyword ::= l e v e l /.$setResult($_K_LEVEL);./
    Keyword ::= l i m i t /.$setResult($_K_LIMIT);./
    Keyword ::= l o g i n /.$setResult($_K_LOGIN);./
    Keyword ::= o r d e r /.$setResult($_K_ORDER);./
    Keyword ::= r o l e s /.$setResult($_K_ROLES);./
    Keyword ::= s f u n c /.$setResult($_K_SFUNC);./
    Keyword ::= s t y p e /.$setResult($_K_STYPE);./
    Keyword ::= t a b l e /.$setResult($_K_TABLE);./
    Keyword ::= t h r e e /.$setResult($_K_THREE);./
    Keyword ::= t o k e n /.$setResult($_K_TOKEN);./
    Keyword ::= t u p l e /.$setResult($_K_TUPLE);./
    Keyword ::= u s i n g /.$setResult($_K_USING);./
    Keyword ::= w h e r e /.$setResult($_K_WHERE);./
    Keyword ::= b l o b /.$setResult($_K_BLOB);./
    Keyword ::= d a t e /.$setResult($_K_DATE);./
    Keyword ::= d e s c /.$setResult($_K_DESC);./
    Keyword ::= d r o p /.$setResult($_K_DROP);./
    Keyword ::= f r o m /.$setResult($_K_FROM);./
    Keyword ::= f u l l /.$setResult($_K_FULL);./
    Keyword ::= i n e t /.$setResult($_K_INET);./
    Keyword ::= i n t o /.$setResult($_K_INTO);./
    Keyword ::= j s o n /.$setResult($_K_JSON);./
    Keyword ::= k e y s /.$setResult($_K_KEYS);./
    Keyword ::= l i s t /.$setResult($_K_LIST);./
    Keyword ::= n u l l /.$setResult($_K_NULL);./
    Keyword ::= r o l e /.$setResult($_K_ROLE);./
    Keyword ::= t e x t /.$setResult($_K_TEXT);./
    Keyword ::= t i m e /.$setResult($_K_TIME);./
    Keyword ::= t r u e /.$setResult($_K_TRUE);./
    Keyword ::= t y p e /.$setResult($_K_TYPE);./
    Keyword ::= u s e r /.$setResult($_K_USER);./
    Keyword ::= u u i d /.$setResult($_K_UUID);./
    Keyword ::= v i e w /.$setResult($_K_VIEW);./
    Keyword ::= w i t h /.$setResult($_K_WITH);./
    Keyword ::= a d d /.$setResult($_K_ADD);./
    Keyword ::= a l l /.$setResult($_K_ALL);./
    Keyword ::= a n d /.$setResult($_K_AND);./
    Keyword ::= a n y /.$setResult($_K_ANY);./
    Keyword ::= a s c /.$setResult($_K_ASC);./
    Keyword ::= i n t /.$setResult($_K_INT);./
    Keyword ::= k e y /.$setResult($_K_KEY);./
    Keyword ::= m a p /.$setResult($_K_MAP);./
    Keyword ::= n a n /.$setResult($_K_NAN);./
    Keyword ::= n o t /.$setResult($_K_NOT);./
    Keyword ::= o n e /.$setResult($_K_ONE);./
    Keyword ::= p e r /.$setResult($_K_PER);./
    Keyword ::= s e t /.$setResult($_K_SET);./
    Keyword ::= t t l /.$setResult($_K_TTL);./
    Keyword ::= t w o /.$setResult($_K_TWO);./
    Keyword ::= u s e /.$setResult($_K_USE);./
    Keyword ::= a s /.$setResult($_K_AS);./
    Keyword ::= b y /.$setResult($_K_BY);./
    Keyword ::= i f /.$setResult($_K_IF);./
    Keyword ::= i n /.$setResult($_K_IN);./
    Keyword ::= i s /.$setResult($_K_IS);./
    Keyword ::= o f /.$setResult($_K_OF);./
    Keyword ::= o n /.$setResult($_K_ON);./
    Keyword ::= o r /.$setResult($_K_OR);./
    Keyword ::= t o /.$setResult($_K_TO);./
%End
