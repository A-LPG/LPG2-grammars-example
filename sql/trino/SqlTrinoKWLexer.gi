-- Keyword filter for SqlTrino (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.sql.trino
%options template=KeywordTemplateF.gi
%options fp=SqlTrinoKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ABSENT_
    ADD_
    ADMIN_
    AFTER_
    ALL_
    ALTER_
    ANALYZE_
    AND_
    ANY_
    ARRAY_
    ASC_
    AS_
    AT_
    AUTHORIZATION_
    BEGIN_
    BERNOULLI_
    BETWEEN_
    BOTH_
    BY_
    CALLED_
    CALL_
    CASCADE_
    CASE_
    CAST_
    CATALOGS_
    CATALOG_
    COLUMNS_
    COLUMN_
    COMMENT_
    COMMITTED_
    COMMIT_
    CONDITIONAL_
    CONSTRAINT_
    COPARTITION_
    COUNT_
    CREATE_
    CROSS_
    CUBE_
    CURRENT_
    DATA_
    DATE_
    DAY_
    DEALLOCATE_
    DECLARE_
    DEFAULT_
    DEFINER_
    DEFINE_
    DELETE_
    DENY_
    DESCRIBE_
    DESCRIPTOR_
    DESC_
    DETERMINISTIC_
    DISTINCT_
    DISTRIBUTED_
    DOUBLE_
    DO_
    DROP_
    ELSEIF_
    ELSE_
    EMPTY_
    ENCODING_
    END_
    ERROR_
    ESCAPE_
    EXCEPT_
    EXCLUDING_
    EXECUTE_
    EXISTS_
    EXPLAIN_
    EXTRACT_
    FALSE_
    FETCH_
    FILTER_
    FINAL_
    FIRST_
    FOLLOWING_
    FORMAT_
    FOR_
    FROM_
    FULL_
    FUNCTIONS_
    FUNCTION_
    GRACE_
    GRANTED_
    GRANTS_
    GRANT_
    GRAPHVIZ_
    GROUPING_
    GROUPS_
    GROUP_
    HAVING_
    HOUR_
    IF_
    IGNORE_
    IMMEDIATE_
    INCLUDING_
    INITIAL_
    INNER_
    INPUT_
    INSERT_
    INTERSECT_
    INTERVAL_
    INTO_
    INVOKER_
    IN_
    IO_
    ISOLATION_
    IS_
    ITERATE_
    JOIN_
    JSON_
    KEEP_
    KEYS_
    KEY_
    LANGUAGE_
    LAST_
    LATERAL_
    LEADING_
    LEAVE_
    LEFT_
    LEVEL_
    LIKE_
    LIMIT_
    LISTAGG_
    LOCALTIMESTAMP_
    LOCALTIME_
    LOCAL_
    LOGICAL_
    LOOP_
    MAP_
    MATCHED_
    MATCHES_
    MATCH_
    MATERIALIZED_
    MEASURES_
    MERGE_
    MINUTE_
    MONTH_
    NATURAL_
    NESTED_
    NEXT_
    NFC_
    NFD_
    NFKC_
    NFKD_
    NONE_
    NORMALIZE_
    NOT_
    NO_
    NULLIF_
    NULLS_
    NULL_
    OBJECT_
    OFFSET_
    OF_
    OMIT_
    ONE_
    ONLY_
    ON_
    OPTION_
    ORDER_
    ORDINALITY_
    OR_
    OUTER_
    OUTPUT_
    OVERFLOW_
    OVER_
    PARTITIONS_
    PARTITION_
    PASSING_
    PAST_
    PATH_
    PATTERN_
    PERIOD_
    PERMUTE_
    PER_
    PLAN_
    POSITION_
    PRECEDING_
    PRECISION_
    PREPARE_
    PRIVILEGES_
    PROPERTIES_
    PRUNE_
    QUOTES_
    RANGE_
    READ_
    RECURSIVE_
    REFRESH_
    RENAME_
    REPEATABLE_
    REPEAT_
    REPLACE_
    RESET_
    RESPECT_
    RESTRICT_
    RETURNING_
    RETURNS_
    RETURN_
    REVOKE_
    RIGHT_
    ROLES_
    ROLE_
    ROLLBACK_
    ROLLUP_
    ROWS_
    ROW_
    RUNNING_
    SCALAR_
    SCHEMAS_
    SCHEMA_
    SECOND_
    SECURITY_
    SEEK_
    SELECT_
    SERIALIZABLE_
    SESSION_
    SETS_
    SET_
    SHOW_
    SKIP_
    SOME_
    START_
    STATS_
    SUBSET_
    SUBSTRING_
    SYSTEM_
    TABLESAMPLE_
    TABLES_
    TABLE_
    TEXT_
    TEXT_STRING_
    THEN_
    TIES_
    TIMESTAMP_
    TIME_
    TO_
    TRAILING_
    TRANSACTION_
    TRIM_
    TRUE_
    TRUNCATE_
    TYPE_
    UESCAPE_
    UNBOUNDED_
    UNCOMMITTED_
    UNCONDITIONAL_
    UNION_
    UNIQUE_
    UNKNOWN_
    UNMATCHED_
    UNNEST_
    UNTIL_
    UPDATE_
    USER_
    USE_
    USING_
    VALIDATE_
    VALUES_
    VALUE_
    VERBOSE_
    VERSION_
    VIEW_
    WHEN_
    WHERE_
    WHILE_
    WINDOW_
    WITHIN_
    WITHOUT_
    WITH_
    WORK_
    WRAPPER_
    WRITE_
    YEAR_
    ZONE_
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= l o c a l t i m e s t a m p /.$setResult($_LOCALTIMESTAMP_);./
    Keyword ::= a u t h o r i z a t i o n /.$setResult($_AUTHORIZATION_);./
    Keyword ::= d e t e r m i n i s t i c /.$setResult($_DETERMINISTIC_);./
    Keyword ::= u n c o n d i t i o n a l /.$setResult($_UNCONDITIONAL_);./
    Keyword ::= m a t e r i a l i z e d /.$setResult($_MATERIALIZED_);./
    Keyword ::= s e r i a l i z a b l e /.$setResult($_SERIALIZABLE_);./
    Keyword ::= c o n d i t i o n a l /.$setResult($_CONDITIONAL_);./
    Keyword ::= c o p a r t i t i o n /.$setResult($_COPARTITION_);./
    Keyword ::= d i s t r i b u t e d /.$setResult($_DISTRIBUTED_);./
    Keyword ::= t a b l e s a m p l e /.$setResult($_TABLESAMPLE_);./
    Keyword ::= t r a n s a c t i o n /.$setResult($_TRANSACTION_);./
    Keyword ::= u n c o m m i t t e d /.$setResult($_UNCOMMITTED_);./
    Keyword ::= c o n s t r a i n t /.$setResult($_CONSTRAINT_);./
    Keyword ::= d e a l l o c a t e /.$setResult($_DEALLOCATE_);./
    Keyword ::= d e s c r i p t o r /.$setResult($_DESCRIPTOR_);./
    Keyword ::= o r d i n a l i t y /.$setResult($_ORDINALITY_);./
    Keyword ::= p a r t i t i o n s /.$setResult($_PARTITIONS_);./
    Keyword ::= p r i v i l e g e s /.$setResult($_PRIVILEGES_);./
    Keyword ::= p r o p e r t i e s /.$setResult($_PROPERTIES_);./
    Keyword ::= r e p e a t a b l e /.$setResult($_REPEATABLE_);./
    Keyword ::= b e r n o u l l i /.$setResult($_BERNOULLI_);./
    Keyword ::= c o m m i t t e d /.$setResult($_COMMITTED_);./
    Keyword ::= e x c l u d i n g /.$setResult($_EXCLUDING_);./
    Keyword ::= f o l l o w i n g /.$setResult($_FOLLOWING_);./
    Keyword ::= f u n c t i o n s /.$setResult($_FUNCTIONS_);./
    Keyword ::= i m m e d i a t e /.$setResult($_IMMEDIATE_);./
    Keyword ::= i n c l u d i n g /.$setResult($_INCLUDING_);./
    Keyword ::= i n t e r s e c t /.$setResult($_INTERSECT_);./
    Keyword ::= i s o l a t i o n /.$setResult($_ISOLATION_);./
    Keyword ::= l o c a l t i m e /.$setResult($_LOCALTIME_);./
    Keyword ::= n o r m a l i z e /.$setResult($_NORMALIZE_);./
    Keyword ::= p a r t i t i o n /.$setResult($_PARTITION_);./
    Keyword ::= p r e c e d i n g /.$setResult($_PRECEDING_);./
    Keyword ::= p r e c i s i o n /.$setResult($_PRECISION_);./
    Keyword ::= r e c u r s i v e /.$setResult($_RECURSIVE_);./
    Keyword ::= r e t u r n i n g /.$setResult($_RETURNING_);./
    Keyword ::= s u b s t r i n g /.$setResult($_SUBSTRING_);./
    Keyword ::= t i m e s t a m p /.$setResult($_TIMESTAMP_);./
    Keyword ::= u n b o u n d e d /.$setResult($_UNBOUNDED_);./
    Keyword ::= u n m a t c h e d /.$setResult($_UNMATCHED_);./
    Keyword ::= c a t a l o g s /.$setResult($_CATALOGS_);./
    Keyword ::= d e s c r i b e /.$setResult($_DESCRIBE_);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT_);./
    Keyword ::= e n c o d i n g /.$setResult($_ENCODING_);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION_);./
    Keyword ::= g r a p h v i z /.$setResult($_GRAPHVIZ_);./
    Keyword ::= g r o u p i n g /.$setResult($_GROUPING_);./
    Keyword ::= i n t e r v a l /.$setResult($_INTERVAL_);./
    Keyword ::= l a n g u a g e /.$setResult($_LANGUAGE_);./
    Keyword ::= m e a s u r e s /.$setResult($_MEASURES_);./
    Keyword ::= o v e r f l o w /.$setResult($_OVERFLOW_);./
    Keyword ::= p o s i t i o n /.$setResult($_POSITION_);./
    Keyword ::= r e s t r i c t /.$setResult($_RESTRICT_);./
    Keyword ::= r o l l b a c k /.$setResult($_ROLLBACK_);./
    Keyword ::= s e c u r i t y /.$setResult($_SECURITY_);./
    Keyword ::= t r a i l i n g /.$setResult($_TRAILING_);./
    Keyword ::= t r u n c a t e /.$setResult($_TRUNCATE_);./
    Keyword ::= v a l i d a t e /.$setResult($_VALIDATE_);./
    Keyword ::= a n a l y z e /.$setResult($_ANALYZE_);./
    Keyword ::= b e t w e e n /.$setResult($_BETWEEN_);./
    Keyword ::= c a s c a d e /.$setResult($_CASCADE_);./
    Keyword ::= c a t a l o g /.$setResult($_CATALOG_);./
    Keyword ::= c o l u m n s /.$setResult($_COLUMNS_);./
    Keyword ::= c o m m e n t /.$setResult($_COMMENT_);./
    Keyword ::= c u r r e n t /.$setResult($_CURRENT_);./
    Keyword ::= d e c l a r e /.$setResult($_DECLARE_);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT_);./
    Keyword ::= d e f i n e r /.$setResult($_DEFINER_);./
    Keyword ::= e x e c u t e /.$setResult($_EXECUTE_);./
    Keyword ::= e x p l a i n /.$setResult($_EXPLAIN_);./
    Keyword ::= e x t r a c t /.$setResult($_EXTRACT_);./
    Keyword ::= g r a n t e d /.$setResult($_GRANTED_);./
    Keyword ::= i n i t i a l /.$setResult($_INITIAL_);./
    Keyword ::= i n v o k e r /.$setResult($_INVOKER_);./
    Keyword ::= i t e r a t e /.$setResult($_ITERATE_);./
    Keyword ::= l a t e r a l /.$setResult($_LATERAL_);./
    Keyword ::= l e a d i n g /.$setResult($_LEADING_);./
    Keyword ::= l i s t a g g /.$setResult($_LISTAGG_);./
    Keyword ::= l o g i c a l /.$setResult($_LOGICAL_);./
    Keyword ::= m a t c h e d /.$setResult($_MATCHED_);./
    Keyword ::= m a t c h e s /.$setResult($_MATCHES_);./
    Keyword ::= n a t u r a l /.$setResult($_NATURAL_);./
    Keyword ::= p a s s i n g /.$setResult($_PASSING_);./
    Keyword ::= p a t t e r n /.$setResult($_PATTERN_);./
    Keyword ::= p e r m u t e /.$setResult($_PERMUTE_);./
    Keyword ::= p r e p a r e /.$setResult($_PREPARE_);./
    Keyword ::= r e f r e s h /.$setResult($_REFRESH_);./
    Keyword ::= r e p l a c e /.$setResult($_REPLACE_);./
    Keyword ::= r e s p e c t /.$setResult($_RESPECT_);./
    Keyword ::= r e t u r n s /.$setResult($_RETURNS_);./
    Keyword ::= r u n n i n g /.$setResult($_RUNNING_);./
    Keyword ::= s c h e m a s /.$setResult($_SCHEMAS_);./
    Keyword ::= s e s s i o n /.$setResult($_SESSION_);./
    Keyword ::= u e s c a p e /.$setResult($_UESCAPE_);./
    Keyword ::= u n k n o w n /.$setResult($_UNKNOWN_);./
    Keyword ::= v e r b o s e /.$setResult($_VERBOSE_);./
    Keyword ::= v e r s i o n /.$setResult($_VERSION_);./
    Keyword ::= w i t h o u t /.$setResult($_WITHOUT_);./
    Keyword ::= w r a p p e r /.$setResult($_WRAPPER_);./
    Keyword ::= a b s e n t /.$setResult($_ABSENT_);./
    Keyword ::= c a l l e d /.$setResult($_CALLED_);./
    Keyword ::= c o l u m n /.$setResult($_COLUMN_);./
    Keyword ::= c o m m i t /.$setResult($_COMMIT_);./
    Keyword ::= c r e a t e /.$setResult($_CREATE_);./
    Keyword ::= d e f i n e /.$setResult($_DEFINE_);./
    Keyword ::= d e l e t e /.$setResult($_DELETE_);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE_);./
    Keyword ::= e l s e i f /.$setResult($_ELSEIF_);./
    Keyword ::= e s c a p e /.$setResult($_ESCAPE_);./
    Keyword ::= e x c e p t /.$setResult($_EXCEPT_);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS_);./
    Keyword ::= f i l t e r /.$setResult($_FILTER_);./
    Keyword ::= f o r m a t /.$setResult($_FORMAT_);./
    Keyword ::= g r a n t s /.$setResult($_GRANTS_);./
    Keyword ::= g r o u p s /.$setResult($_GROUPS_);./
    Keyword ::= h a v i n g /.$setResult($_HAVING_);./
    Keyword ::= i g n o r e /.$setResult($_IGNORE_);./
    Keyword ::= i n s e r t /.$setResult($_INSERT_);./
    Keyword ::= m i n u t e /.$setResult($_MINUTE_);./
    Keyword ::= n e s t e d /.$setResult($_NESTED_);./
    Keyword ::= n u l l i f /.$setResult($_NULLIF_);./
    Keyword ::= o b j e c t /.$setResult($_OBJECT_);./
    Keyword ::= o f f s e t /.$setResult($_OFFSET_);./
    Keyword ::= o p t i o n /.$setResult($_OPTION_);./
    Keyword ::= o u t p u t /.$setResult($_OUTPUT_);./
    Keyword ::= p e r i o d /.$setResult($_PERIOD_);./
    Keyword ::= q u o t e s /.$setResult($_QUOTES_);./
    Keyword ::= r e n a m e /.$setResult($_RENAME_);./
    Keyword ::= r e p e a t /.$setResult($_REPEAT_);./
    Keyword ::= r e t u r n /.$setResult($_RETURN_);./
    Keyword ::= r e v o k e /.$setResult($_REVOKE_);./
    Keyword ::= r o l l u p /.$setResult($_ROLLUP_);./
    Keyword ::= s c a l a r /.$setResult($_SCALAR_);./
    Keyword ::= s c h e m a /.$setResult($_SCHEMA_);./
    Keyword ::= s e c o n d /.$setResult($_SECOND_);./
    Keyword ::= s e l e c t /.$setResult($_SELECT_);./
    Keyword ::= s t r i n g /.$setResult($_TEXT_STRING_);./
    Keyword ::= s u b s e t /.$setResult($_SUBSET_);./
    Keyword ::= s y s t e m /.$setResult($_SYSTEM_);./
    Keyword ::= t a b l e s /.$setResult($_TABLES_);./
    Keyword ::= u n i q u e /.$setResult($_UNIQUE_);./
    Keyword ::= u n n e s t /.$setResult($_UNNEST_);./
    Keyword ::= u p d a t e /.$setResult($_UPDATE_);./
    Keyword ::= v a l u e s /.$setResult($_VALUES_);./
    Keyword ::= w i n d o w /.$setResult($_WINDOW_);./
    Keyword ::= w i t h i n /.$setResult($_WITHIN_);./
    Keyword ::= a d m i n /.$setResult($_ADMIN_);./
    Keyword ::= a f t e r /.$setResult($_AFTER_);./
    Keyword ::= a l t e r /.$setResult($_ALTER_);./
    Keyword ::= a r r a y /.$setResult($_ARRAY_);./
    Keyword ::= b e g i n /.$setResult($_BEGIN_);./
    Keyword ::= c o u n t /.$setResult($_COUNT_);./
    Keyword ::= c r o s s /.$setResult($_CROSS_);./
    Keyword ::= e m p t y /.$setResult($_EMPTY_);./
    Keyword ::= e r r o r /.$setResult($_ERROR_);./
    Keyword ::= f a l s e /.$setResult($_FALSE_);./
    Keyword ::= f e t c h /.$setResult($_FETCH_);./
    Keyword ::= f i n a l /.$setResult($_FINAL_);./
    Keyword ::= f i r s t /.$setResult($_FIRST_);./
    Keyword ::= g r a c e /.$setResult($_GRACE_);./
    Keyword ::= g r a n t /.$setResult($_GRANT_);./
    Keyword ::= g r o u p /.$setResult($_GROUP_);./
    Keyword ::= i n n e r /.$setResult($_INNER_);./
    Keyword ::= i n p u t /.$setResult($_INPUT_);./
    Keyword ::= l e a v e /.$setResult($_LEAVE_);./
    Keyword ::= l e v e l /.$setResult($_LEVEL_);./
    Keyword ::= l i m i t /.$setResult($_LIMIT_);./
    Keyword ::= l o c a l /.$setResult($_LOCAL_);./
    Keyword ::= m a t c h /.$setResult($_MATCH_);./
    Keyword ::= m e r g e /.$setResult($_MERGE_);./
    Keyword ::= m o n t h /.$setResult($_MONTH_);./
    Keyword ::= n u l l s /.$setResult($_NULLS_);./
    Keyword ::= o r d e r /.$setResult($_ORDER_);./
    Keyword ::= o u t e r /.$setResult($_OUTER_);./
    Keyword ::= p r u n e /.$setResult($_PRUNE_);./
    Keyword ::= r a n g e /.$setResult($_RANGE_);./
    Keyword ::= r e s e t /.$setResult($_RESET_);./
    Keyword ::= r i g h t /.$setResult($_RIGHT_);./
    Keyword ::= r o l e s /.$setResult($_ROLES_);./
    Keyword ::= s t a r t /.$setResult($_START_);./
    Keyword ::= s t a t s /.$setResult($_STATS_);./
    Keyword ::= t a b l e /.$setResult($_TABLE_);./
    Keyword ::= u n i o n /.$setResult($_UNION_);./
    Keyword ::= u n t i l /.$setResult($_UNTIL_);./
    Keyword ::= u s i n g /.$setResult($_USING_);./
    Keyword ::= v a l u e /.$setResult($_VALUE_);./
    Keyword ::= w h e r e /.$setResult($_WHERE_);./
    Keyword ::= w h i l e /.$setResult($_WHILE_);./
    Keyword ::= w r i t e /.$setResult($_WRITE_);./
    Keyword ::= b o t h /.$setResult($_BOTH_);./
    Keyword ::= c a l l /.$setResult($_CALL_);./
    Keyword ::= c a s e /.$setResult($_CASE_);./
    Keyword ::= c a s t /.$setResult($_CAST_);./
    Keyword ::= c u b e /.$setResult($_CUBE_);./
    Keyword ::= d a t a /.$setResult($_DATA_);./
    Keyword ::= d a t e /.$setResult($_DATE_);./
    Keyword ::= d e n y /.$setResult($_DENY_);./
    Keyword ::= d e s c /.$setResult($_DESC_);./
    Keyword ::= d r o p /.$setResult($_DROP_);./
    Keyword ::= e l s e /.$setResult($_ELSE_);./
    Keyword ::= f r o m /.$setResult($_FROM_);./
    Keyword ::= f u l l /.$setResult($_FULL_);./
    Keyword ::= h o u r /.$setResult($_HOUR_);./
    Keyword ::= i n t o /.$setResult($_INTO_);./
    Keyword ::= j o i n /.$setResult($_JOIN_);./
    Keyword ::= j s o n /.$setResult($_JSON_);./
    Keyword ::= k e e p /.$setResult($_KEEP_);./
    Keyword ::= k e y s /.$setResult($_KEYS_);./
    Keyword ::= l a s t /.$setResult($_LAST_);./
    Keyword ::= l e f t /.$setResult($_LEFT_);./
    Keyword ::= l i k e /.$setResult($_LIKE_);./
    Keyword ::= l o o p /.$setResult($_LOOP_);./
    Keyword ::= n e x t /.$setResult($_NEXT_);./
    Keyword ::= n f k c /.$setResult($_NFKC_);./
    Keyword ::= n f k d /.$setResult($_NFKD_);./
    Keyword ::= n o n e /.$setResult($_NONE_);./
    Keyword ::= n u l l /.$setResult($_NULL_);./
    Keyword ::= o m i t /.$setResult($_OMIT_);./
    Keyword ::= o n l y /.$setResult($_ONLY_);./
    Keyword ::= o v e r /.$setResult($_OVER_);./
    Keyword ::= p a s t /.$setResult($_PAST_);./
    Keyword ::= p a t h /.$setResult($_PATH_);./
    Keyword ::= p l a n /.$setResult($_PLAN_);./
    Keyword ::= r e a d /.$setResult($_READ_);./
    Keyword ::= r o l e /.$setResult($_ROLE_);./
    Keyword ::= r o w s /.$setResult($_ROWS_);./
    Keyword ::= s e e k /.$setResult($_SEEK_);./
    Keyword ::= s e t s /.$setResult($_SETS_);./
    Keyword ::= s h o w /.$setResult($_SHOW_);./
    Keyword ::= s k i p /.$setResult($_SKIP_);./
    Keyword ::= s o m e /.$setResult($_SOME_);./
    Keyword ::= t e x t /.$setResult($_TEXT_);./
    Keyword ::= t h e n /.$setResult($_THEN_);./
    Keyword ::= t i e s /.$setResult($_TIES_);./
    Keyword ::= t i m e /.$setResult($_TIME_);./
    Keyword ::= t r i m /.$setResult($_TRIM_);./
    Keyword ::= t r u e /.$setResult($_TRUE_);./
    Keyword ::= t y p e /.$setResult($_TYPE_);./
    Keyword ::= u s e r /.$setResult($_USER_);./
    Keyword ::= v i e w /.$setResult($_VIEW_);./
    Keyword ::= w h e n /.$setResult($_WHEN_);./
    Keyword ::= w i t h /.$setResult($_WITH_);./
    Keyword ::= w o r k /.$setResult($_WORK_);./
    Keyword ::= y e a r /.$setResult($_YEAR_);./
    Keyword ::= z o n e /.$setResult($_ZONE_);./
    Keyword ::= a d d /.$setResult($_ADD_);./
    Keyword ::= a l l /.$setResult($_ALL_);./
    Keyword ::= a n d /.$setResult($_AND_);./
    Keyword ::= a n y /.$setResult($_ANY_);./
    Keyword ::= a s c /.$setResult($_ASC_);./
    Keyword ::= d a y /.$setResult($_DAY_);./
    Keyword ::= e n d /.$setResult($_END_);./
    Keyword ::= f o r /.$setResult($_FOR_);./
    Keyword ::= k e y /.$setResult($_KEY_);./
    Keyword ::= m a p /.$setResult($_MAP_);./
    Keyword ::= n f c /.$setResult($_NFC_);./
    Keyword ::= n f d /.$setResult($_NFD_);./
    Keyword ::= n o t /.$setResult($_NOT_);./
    Keyword ::= o n e /.$setResult($_ONE_);./
    Keyword ::= p e r /.$setResult($_PER_);./
    Keyword ::= r o w /.$setResult($_ROW_);./
    Keyword ::= s e t /.$setResult($_SET_);./
    Keyword ::= u s e /.$setResult($_USE_);./
    Keyword ::= a s /.$setResult($_AS_);./
    Keyword ::= a t /.$setResult($_AT_);./
    Keyword ::= b y /.$setResult($_BY_);./
    Keyword ::= d o /.$setResult($_DO_);./
    Keyword ::= i f /.$setResult($_IF_);./
    Keyword ::= i n /.$setResult($_IN_);./
    Keyword ::= i o /.$setResult($_IO_);./
    Keyword ::= i s /.$setResult($_IS_);./
    Keyword ::= n o /.$setResult($_NO_);./
    Keyword ::= o f /.$setResult($_OF_);./
    Keyword ::= o n /.$setResult($_ON_);./
    Keyword ::= o r /.$setResult($_OR_);./
    Keyword ::= t o /.$setResult($_TO_);./
%End
