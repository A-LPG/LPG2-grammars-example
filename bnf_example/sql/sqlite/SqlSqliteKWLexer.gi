-- Keyword filter for SqlSqlite (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.sql.sqlite
%options template=KeywordTemplateF.gi
%options fp=SqlSqliteKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ABORT_
    ACTION_
    ADD_
    AFTER_
    ALL_
    ALTER_
    ALWAYS_
    ANALYZE_
    AND_
    ASC_
    AS_
    ATTACH_
    AUTOINCREMENT_
    BEFORE_
    BEGIN_
    BETWEEN_
    BY_
    CASCADE_
    CASE_
    CAST_
    CHECK_
    COLLATE_
    COLUMN_
    COMMIT_
    CONFLICT_
    CONSTRAINT_
    CREATE_
    CROSS_
    CURRENT_
    DATABASE_
    DEFAULT_
    DEFERRABLE_
    DEFERRED_
    DELETE_
    DESC_
    DETACH_
    DISTINCT_
    DO_
    DROP_
    EACH_
    ELSE_
    END_
    ESCAPE_
    EXCEPT_
    EXCLUDE_
    EXCLUSIVE_
    EXISTS_
    EXPLAIN_
    FAIL_
    FALSE_
    FILTER_
    FIRST_
    FOLLOWING_
    FOREIGN_
    FOR_
    FROM_
    FULL_
    GENERATED_
    GLOB_
    GROUPS_
    GROUP_
    HAVING_
    IF_
    IGNORE_
    IMMEDIATE_
    INDEXED_
    INDEX_
    INITIALLY_
    INNER_
    INSERT_
    INSTEAD_
    INTERSECT_
    INTO_
    IN_
    ISNULL_
    IS_
    JOIN_
    KEY_
    LAST_
    LEFT_
    LIKE_
    LIMIT_
    MATCH_
    MATERIALIZED_
    NATURAL_
    NOTHING_
    NOTNULL_
    NOT_
    NO_
    NULLS_
    NULL_
    OFFSET_
    OF_
    ON_
    ORDER_
    OR_
    OTHERS_
    OUTER_
    OVER_
    PARTITION_
    PLAN_
    PRAGMA_
    PRECEDING_
    PRIMARY_
    QUERY_
    RAISE_
    RANGE_
    RECURSIVE_
    REFERENCES_
    REGEXP_
    REINDEX_
    RELEASE_
    RENAME_
    REPLACE_
    RESTRICT_
    RETURNING_
    RIGHT_
    ROLLBACK_
    ROWID_
    ROWS_
    ROW_
    SAVEPOINT_
    SELECT_
    SET_
    STORED_
    STRICT_
    TABLE_
    TEMPORARY_
    TEMP_
    THEN_
    TIES_
    TO_
    TRANSACTION_
    TRIGGER_
    TRUE_
    UNBOUNDED_
    UNION_
    UNIQUE_
    UPDATE_
    USING_
    VACUUM_
    VALUES_
    VIEW_
    VIRTUAL_
    WHEN_
    WHERE_
    WINDOW_
    WITHIN_
    WITHOUT_
    WITH_
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= a u t o i n c r e m e n t /.$setResult($_AUTOINCREMENT_);./
    Keyword ::= m a t e r i a l i z e d /.$setResult($_MATERIALIZED_);./
    Keyword ::= t r a n s a c t i o n /.$setResult($_TRANSACTION_);./
    Keyword ::= c o n s t r a i n t /.$setResult($_CONSTRAINT_);./
    Keyword ::= d e f e r r a b l e /.$setResult($_DEFERRABLE_);./
    Keyword ::= r e f e r e n c e s /.$setResult($_REFERENCES_);./
    Keyword ::= e x c l u s i v e /.$setResult($_EXCLUSIVE_);./
    Keyword ::= f o l l o w i n g /.$setResult($_FOLLOWING_);./
    Keyword ::= g e n e r a t e d /.$setResult($_GENERATED_);./
    Keyword ::= i m m e d i a t e /.$setResult($_IMMEDIATE_);./
    Keyword ::= i n i t i a l l y /.$setResult($_INITIALLY_);./
    Keyword ::= i n t e r s e c t /.$setResult($_INTERSECT_);./
    Keyword ::= p a r t i t i o n /.$setResult($_PARTITION_);./
    Keyword ::= p r e c e d i n g /.$setResult($_PRECEDING_);./
    Keyword ::= r e c u r s i v e /.$setResult($_RECURSIVE_);./
    Keyword ::= r e t u r n i n g /.$setResult($_RETURNING_);./
    Keyword ::= s a v e p o i n t /.$setResult($_SAVEPOINT_);./
    Keyword ::= t e m p o r a r y /.$setResult($_TEMPORARY_);./
    Keyword ::= u n b o u n d e d /.$setResult($_UNBOUNDED_);./
    Keyword ::= c o n f l i c t /.$setResult($_CONFLICT_);./
    Keyword ::= d a t a b a s e /.$setResult($_DATABASE_);./
    Keyword ::= d e f e r r e d /.$setResult($_DEFERRED_);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT_);./
    Keyword ::= r e s t r i c t /.$setResult($_RESTRICT_);./
    Keyword ::= r o l l b a c k /.$setResult($_ROLLBACK_);./
    Keyword ::= a n a l y z e /.$setResult($_ANALYZE_);./
    Keyword ::= b e t w e e n /.$setResult($_BETWEEN_);./
    Keyword ::= c a s c a d e /.$setResult($_CASCADE_);./
    Keyword ::= c o l l a t e /.$setResult($_COLLATE_);./
    Keyword ::= c u r r e n t /.$setResult($_CURRENT_);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT_);./
    Keyword ::= e x c l u d e /.$setResult($_EXCLUDE_);./
    Keyword ::= e x p l a i n /.$setResult($_EXPLAIN_);./
    Keyword ::= f o r e i g n /.$setResult($_FOREIGN_);./
    Keyword ::= i n d e x e d /.$setResult($_INDEXED_);./
    Keyword ::= i n s t e a d /.$setResult($_INSTEAD_);./
    Keyword ::= n a t u r a l /.$setResult($_NATURAL_);./
    Keyword ::= n o t h i n g /.$setResult($_NOTHING_);./
    Keyword ::= n o t n u l l /.$setResult($_NOTNULL_);./
    Keyword ::= p r i m a r y /.$setResult($_PRIMARY_);./
    Keyword ::= r e i n d e x /.$setResult($_REINDEX_);./
    Keyword ::= r e l e a s e /.$setResult($_RELEASE_);./
    Keyword ::= r e p l a c e /.$setResult($_REPLACE_);./
    Keyword ::= t r i g g e r /.$setResult($_TRIGGER_);./
    Keyword ::= v i r t u a l /.$setResult($_VIRTUAL_);./
    Keyword ::= w i t h o u t /.$setResult($_WITHOUT_);./
    Keyword ::= a c t i o n /.$setResult($_ACTION_);./
    Keyword ::= a l w a y s /.$setResult($_ALWAYS_);./
    Keyword ::= a t t a c h /.$setResult($_ATTACH_);./
    Keyword ::= b e f o r e /.$setResult($_BEFORE_);./
    Keyword ::= c o l u m n /.$setResult($_COLUMN_);./
    Keyword ::= c o m m i t /.$setResult($_COMMIT_);./
    Keyword ::= c r e a t e /.$setResult($_CREATE_);./
    Keyword ::= d e l e t e /.$setResult($_DELETE_);./
    Keyword ::= d e t a c h /.$setResult($_DETACH_);./
    Keyword ::= e s c a p e /.$setResult($_ESCAPE_);./
    Keyword ::= e x c e p t /.$setResult($_EXCEPT_);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS_);./
    Keyword ::= f i l t e r /.$setResult($_FILTER_);./
    Keyword ::= g r o u p s /.$setResult($_GROUPS_);./
    Keyword ::= h a v i n g /.$setResult($_HAVING_);./
    Keyword ::= i g n o r e /.$setResult($_IGNORE_);./
    Keyword ::= i n s e r t /.$setResult($_INSERT_);./
    Keyword ::= i s n u l l /.$setResult($_ISNULL_);./
    Keyword ::= o f f s e t /.$setResult($_OFFSET_);./
    Keyword ::= o t h e r s /.$setResult($_OTHERS_);./
    Keyword ::= p r a g m a /.$setResult($_PRAGMA_);./
    Keyword ::= r e g e x p /.$setResult($_REGEXP_);./
    Keyword ::= r e n a m e /.$setResult($_RENAME_);./
    Keyword ::= s e l e c t /.$setResult($_SELECT_);./
    Keyword ::= s t o r e d /.$setResult($_STORED_);./
    Keyword ::= s t r i c t /.$setResult($_STRICT_);./
    Keyword ::= u n i q u e /.$setResult($_UNIQUE_);./
    Keyword ::= u p d a t e /.$setResult($_UPDATE_);./
    Keyword ::= v a c u u m /.$setResult($_VACUUM_);./
    Keyword ::= v a l u e s /.$setResult($_VALUES_);./
    Keyword ::= w i n d o w /.$setResult($_WINDOW_);./
    Keyword ::= w i t h i n /.$setResult($_WITHIN_);./
    Keyword ::= a b o r t /.$setResult($_ABORT_);./
    Keyword ::= a f t e r /.$setResult($_AFTER_);./
    Keyword ::= a l t e r /.$setResult($_ALTER_);./
    Keyword ::= b e g i n /.$setResult($_BEGIN_);./
    Keyword ::= c h e c k /.$setResult($_CHECK_);./
    Keyword ::= c r o s s /.$setResult($_CROSS_);./
    Keyword ::= f a l s e /.$setResult($_FALSE_);./
    Keyword ::= f i r s t /.$setResult($_FIRST_);./
    Keyword ::= g r o u p /.$setResult($_GROUP_);./
    Keyword ::= i n d e x /.$setResult($_INDEX_);./
    Keyword ::= i n n e r /.$setResult($_INNER_);./
    Keyword ::= l i m i t /.$setResult($_LIMIT_);./
    Keyword ::= m a t c h /.$setResult($_MATCH_);./
    Keyword ::= n u l l s /.$setResult($_NULLS_);./
    Keyword ::= o r d e r /.$setResult($_ORDER_);./
    Keyword ::= o u t e r /.$setResult($_OUTER_);./
    Keyword ::= q u e r y /.$setResult($_QUERY_);./
    Keyword ::= r a i s e /.$setResult($_RAISE_);./
    Keyword ::= r a n g e /.$setResult($_RANGE_);./
    Keyword ::= r i g h t /.$setResult($_RIGHT_);./
    Keyword ::= r o w i d /.$setResult($_ROWID_);./
    Keyword ::= t a b l e /.$setResult($_TABLE_);./
    Keyword ::= u n i o n /.$setResult($_UNION_);./
    Keyword ::= u s i n g /.$setResult($_USING_);./
    Keyword ::= w h e r e /.$setResult($_WHERE_);./
    Keyword ::= c a s e /.$setResult($_CASE_);./
    Keyword ::= c a s t /.$setResult($_CAST_);./
    Keyword ::= d e s c /.$setResult($_DESC_);./
    Keyword ::= d r o p /.$setResult($_DROP_);./
    Keyword ::= e a c h /.$setResult($_EACH_);./
    Keyword ::= e l s e /.$setResult($_ELSE_);./
    Keyword ::= f a i l /.$setResult($_FAIL_);./
    Keyword ::= f r o m /.$setResult($_FROM_);./
    Keyword ::= f u l l /.$setResult($_FULL_);./
    Keyword ::= g l o b /.$setResult($_GLOB_);./
    Keyword ::= i n t o /.$setResult($_INTO_);./
    Keyword ::= j o i n /.$setResult($_JOIN_);./
    Keyword ::= l a s t /.$setResult($_LAST_);./
    Keyword ::= l e f t /.$setResult($_LEFT_);./
    Keyword ::= l i k e /.$setResult($_LIKE_);./
    Keyword ::= n u l l /.$setResult($_NULL_);./
    Keyword ::= o v e r /.$setResult($_OVER_);./
    Keyword ::= p l a n /.$setResult($_PLAN_);./
    Keyword ::= r o w s /.$setResult($_ROWS_);./
    Keyword ::= t e m p /.$setResult($_TEMP_);./
    Keyword ::= t h e n /.$setResult($_THEN_);./
    Keyword ::= t i e s /.$setResult($_TIES_);./
    Keyword ::= t r u e /.$setResult($_TRUE_);./
    Keyword ::= v i e w /.$setResult($_VIEW_);./
    Keyword ::= w h e n /.$setResult($_WHEN_);./
    Keyword ::= w i t h /.$setResult($_WITH_);./
    Keyword ::= a d d /.$setResult($_ADD_);./
    Keyword ::= a l l /.$setResult($_ALL_);./
    Keyword ::= a n d /.$setResult($_AND_);./
    Keyword ::= a s c /.$setResult($_ASC_);./
    Keyword ::= e n d /.$setResult($_END_);./
    Keyword ::= f o r /.$setResult($_FOR_);./
    Keyword ::= k e y /.$setResult($_KEY_);./
    Keyword ::= n o t /.$setResult($_NOT_);./
    Keyword ::= r o w /.$setResult($_ROW_);./
    Keyword ::= s e t /.$setResult($_SET_);./
    Keyword ::= a s /.$setResult($_AS_);./
    Keyword ::= b y /.$setResult($_BY_);./
    Keyword ::= d o /.$setResult($_DO_);./
    Keyword ::= i f /.$setResult($_IF_);./
    Keyword ::= i n /.$setResult($_IN_);./
    Keyword ::= i s /.$setResult($_IS_);./
    Keyword ::= n o /.$setResult($_NO_);./
    Keyword ::= o f /.$setResult($_OF_);./
    Keyword ::= o n /.$setResult($_ON_);./
    Keyword ::= o r /.$setResult($_OR_);./
    Keyword ::= t o /.$setResult($_TO_);./
%End
