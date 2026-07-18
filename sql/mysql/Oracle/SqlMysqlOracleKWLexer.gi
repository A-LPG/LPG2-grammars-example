-- Keyword filter for SqlMysqlOracle (from grammars-v4 lexer keywords + parser literals)
%options package=lpg.grammars.sql.mysql.Oracle
%options template=KeywordTemplateF.gi
%options fp=SqlMysqlOracleKWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
    ACCOUNT_SYMBOL
    ACTION_SYMBOL
    ACTIVE_SYMBOL
    ADDDATE_SYMBOL
    ADD_SYMBOL
    ADMIN_SYMBOL
    AFTER_SYMBOL
    AGAINST_SYMBOL
    AGGREGATE_SYMBOL
    ALGORITHM_SYMBOL
    ALL_SYMBOL
    ALTER_SYMBOL
    ALWAYS_SYMBOL
    ANALYZE_SYMBOL
    AND_SYMBOL
    ANY_SYMBOL
    ARRAY_SYMBOL
    ASCII_SYMBOL
    ASC_SYMBOL
    ASSIGN_GTIDS_TO_ANONYMOUS_TRANSACTIONS_SYMBOL
    AS_SYMBOL
    ATTRIBUTE_SYMBOL
    AT_AT_SIGN_SYMBOL
    AT_SIGN_SYMBOL
    AT_SYMBOL
    AUTHENTICATION_SYMBOL
    AUTOEXTEND_SIZE_SYMBOL
    AUTO_INCREMENT_SYMBOL
    AUTO_SYMBOL
    AVG_ROW_LENGTH_SYMBOL
    AVG_SYMBOL
    BACKUP_SYMBOL
    BEFORE_SYMBOL
    BEGIN_SYMBOL
    BERNOULLI_SYMBOL
    BETWEEN_SYMBOL
    BIGINT_SYMBOL
    BINARY_SYMBOL
    BINLOG_SYMBOL
    BIT_AND_SYMBOL
    BIT_OR_SYMBOL
    BIT_SYMBOL
    BIT_XOR_SYMBOL
    BLOB_SYMBOL
    BLOCK_SYMBOL
    BOOLEAN_SYMBOL
    BOOL_SYMBOL
    BOTH_SYMBOL
    BTREE_SYMBOL
    BUCKETS_SYMBOL
    BULK_SYMBOL
    BYTE_SYMBOL
    BY_SYMBOL
    CACHE_SYMBOL
    CALL_SYMBOL
    CASCADED_SYMBOL
    CASCADE_SYMBOL
    CASE_SYMBOL
    CAST_SYMBOL
    CATALOG_NAME_SYMBOL
    CHAIN_SYMBOL
    CHALLENGE_RESPONSE_SYMBOL
    CHANGED_SYMBOL
    CHANGE_SYMBOL
    CHANNEL_SYMBOL
    CHARSET_SYMBOL
    CHAR_SYMBOL
    CHECKSUM_SYMBOL
    CHECK_SYMBOL
    CIPHER_SYMBOL
    CLASS_ORIGIN_SYMBOL
    CLIENT_SYMBOL
    CLONE_SYMBOL
    CLOSE_CURLY_SYMBOL
    CLOSE_PAR_SYMBOL
    CLOSE_SYMBOL
    COALESCE_SYMBOL
    CODE_SYMBOL
    COLLATE_SYMBOL
    COLLATION_SYMBOL
    COLON_SYMBOL
    COLUMNS_SYMBOL
    COLUMN_FORMAT_SYMBOL
    COLUMN_NAME_SYMBOL
    COLUMN_SYMBOL
    COMMA_SYMBOL
    COMMENT_SYMBOL
    COMMITTED_SYMBOL
    COMMIT_SYMBOL
    COMPACT_SYMBOL
    COMPLETION_SYMBOL
    COMPONENT_SYMBOL
    COMPRESSED_SYMBOL
    COMPRESSION_SYMBOL
    CONCAT_PIPES_SYMBOL
    CONCURRENT_SYMBOL
    CONDITION_SYMBOL
    CONNECTION_SYMBOL
    CONSISTENT_SYMBOL
    CONSTRAINT_CATALOG_SYMBOL
    CONSTRAINT_NAME_SYMBOL
    CONSTRAINT_SCHEMA_SYMBOL
    CONSTRAINT_SYMBOL
    CONTAINS_SYMBOL
    CONTEXT_SYMBOL
    CONTINUE_SYMBOL
    CONVERT_SYMBOL
    COUNT_SYMBOL
    CPU_SYMBOL
    CREATE_SYMBOL
    CROSS_SYMBOL
    CUBE_SYMBOL
    CUME_DIST_SYMBOL
    CURDATE_SYMBOL
    CURRENT_SYMBOL
    CURRENT_USER_SYMBOL
    CURSOR_NAME_SYMBOL
    CURSOR_SYMBOL
    CURTIME_SYMBOL
    DATABASES_SYMBOL
    DATABASE_SYMBOL
    DATAFILE_SYMBOL
    DATA_SYMBOL
    DATETIME_SYMBOL
    DATE_ADD_SYMBOL
    DATE_SUB_SYMBOL
    DATE_SYMBOL
    DAY_HOUR_SYMBOL
    DAY_MICROSECOND_SYMBOL
    DAY_MINUTE_SYMBOL
    DAY_SECOND_SYMBOL
    DAY_SYMBOL
    DEALLOCATE_SYMBOL
    DECIMAL_SYMBOL
    DECLARE_SYMBOL
    DEFAULT_AUTH_SYMBOL
    DEFAULT_SYMBOL
    DEFINER_SYMBOL
    DEFINITION_SYMBOL
    DELAYED_SYMBOL
    DELAY_KEY_WRITE_SYMBOL
    DELETE_SYMBOL
    DENSE_RANK_SYMBOL
    DESCRIBE_SYMBOL
    DESCRIPTION_SYMBOL
    DESC_SYMBOL
    DETERMINISTIC_SYMBOL
    DIAGNOSTICS_SYMBOL
    DIRECTORY_SYMBOL
    DISABLE_SYMBOL
    DISCARD_SYMBOL
    DISK_SYMBOL
    DISTINCT_SYMBOL
    DIV_SYMBOL
    DOT_SYMBOL
    DOUBLE_SYMBOL
    DO_SYMBOL
    DROP_SYMBOL
    DUAL_SYMBOL
    DUMPFILE_SYMBOL
    DUPLICATE_SYMBOL
    DYNAMIC_SYMBOL
    EACH_SYMBOL
    ELSEIF_SYMBOL
    ELSE_SYMBOL
    EMPTY_SYMBOL
    ENABLE_SYMBOL
    ENCLOSED_SYMBOL
    ENCRYPTION_SYMBOL
    ENDS_SYMBOL
    END_SYMBOL
    ENFORCED_SYMBOL
    ENGINES_SYMBOL
    ENGINE_ATTRIBUTE_SYMBOL
    ENGINE_SYMBOL
    ENUM_SYMBOL
    ERRORS_SYMBOL
    ERROR_SYMBOL
    ESCAPED_SYMBOL
    ESCAPE_SYMBOL
    EVENTS_SYMBOL
    EVENT_SYMBOL
    EVERY_SYMBOL
    EXCEPT_SYMBOL
    EXCHANGE_SYMBOL
    EXCLUDE_SYMBOL
    EXECUTE_SYMBOL
    EXISTS_SYMBOL
    EXIT_SYMBOL
    EXPANSION_SYMBOL
    EXPIRE_SYMBOL
    EXPLAIN_SYMBOL
    EXPORT_SYMBOL
    EXTENDED_SYMBOL
    EXTENT_SIZE_SYMBOL
    EXTRACT_SYMBOL
    FACTOR_SYMBOL
    FAILED_LOGIN_ATTEMPTS_SYMBOL
    FALSE_SYMBOL
    FAST_SYMBOL
    FAULTS_SYMBOL
    FETCH_SYMBOL
    FILE_BLOCK_SIZE_SYMBOL
    FILE_SYMBOL
    FILTER_SYMBOL
    FINISH_SYMBOL
    FIRST_SYMBOL
    FIRST_VALUE_SYMBOL
    FIXED_SYMBOL
    FLOAT_SYMBOL
    FLUSH_SYMBOL
    FOLLOWING_SYMBOL
    FOLLOWS_SYMBOL
    FORCE_SYMBOL
    FOREIGN_SYMBOL
    FORMAT_SYMBOL
    FOR_SYMBOL
    FOUND_SYMBOL
    FROM_SYMBOL
    FULLTEXT_SYMBOL
    FULL_SYMBOL
    FUNCTION_SYMBOL
    GENERAL_SYMBOL
    GENERATED_SYMBOL
    GENERATE_SYMBOL
    GEOMETRYCOLLECTION_SYMBOL
    GEOMETRY_SYMBOL
    GET_FORMAT_SYMBOL
    GET_MASTER_PUBLIC_KEY_SYMBOL
    GET_SOURCE_PUBLIC_KEY_SYMBOL
    GET_SYMBOL
    GLOBAL_SYMBOL
    GRANTS_SYMBOL
    GRANT_SYMBOL
    GROUPING_SYMBOL
    GROUPS_SYMBOL
    GROUP_CONCAT_SYMBOL
    GROUP_REPLICATION_SYMBOL
    GROUP_SYMBOL
    GTIDS_SYMBOL
    GTID_ONLY_SYMBOL
    HANDLER_SYMBOL
    HASH_SYMBOL
    HAVING_SYMBOL
    HELP_SYMBOL
    HIGH_PRIORITY_SYMBOL
    HISTOGRAM_SYMBOL
    HISTORY_SYMBOL
    HOSTS_SYMBOL
    HOST_SYMBOL
    HOUR_MICROSECOND_SYMBOL
    HOUR_MINUTE_SYMBOL
    HOUR_SECOND_SYMBOL
    HOUR_SYMBOL
    IDENTIFIED_SYMBOL
    IF_SYMBOL
    IGNORE_SERVER_IDS_SYMBOL
    IGNORE_SYMBOL
    IMPORT_SYMBOL
    INACTIVE_SYMBOL
    INDEXES_SYMBOL
    INDEX_SYMBOL
    INFILE_SYMBOL
    INITIAL_SIZE_SYMBOL
    INITIAL_SYMBOL
    INITIATE_SYMBOL
    INNER_SYMBOL
    INOUT_SYMBOL
    INSERT_METHOD_SYMBOL
    INSERT_SYMBOL
    INSTALL_SYMBOL
    INSTANCE_SYMBOL
    INTERSECT_SYMBOL
    INTERVAL_SYMBOL
    INTO_SYMBOL
    INT_SYMBOL
    INVISIBLE_SYMBOL
    INVOKER_SYMBOL
    IN_SYMBOL
    IO_SYMBOL
    IPC_SYMBOL
    ISOLATION_SYMBOL
    ISSUER_SYMBOL
    IS_SYMBOL
    ITERATE_SYMBOL
    JOIN_SYMBOL
    JSON_ARRAYAGG_SYMBOL
    JSON_OBJECTAGG_SYMBOL
    JSON_SEPARATOR_SYMBOL
    JSON_SYMBOL
    JSON_TABLE_SYMBOL
    JSON_UNQUOTED_SEPARATOR_SYMBOL
    JSON_VALUE_SYMBOL
    KEYRING_SYMBOL
    KEYS_SYMBOL
    KEY_BLOCK_SIZE_SYMBOL
    KEY_SYMBOL
    KILL_SYMBOL
    LAG_SYMBOL
    LANGUAGE_SYMBOL
    LAST_SYMBOL
    LAST_VALUE_SYMBOL
    LATERAL_SYMBOL
    LEADING_SYMBOL
    LEAD_SYMBOL
    LEAVES_SYMBOL
    LEAVE_SYMBOL
    LEFT_SYMBOL
    LESS_SYMBOL
    LEVEL_SYMBOL
    LIKE_SYMBOL
    LIMIT_SYMBOL
    LINEAR_SYMBOL
    LINESTRING_SYMBOL
    LINES_SYMBOL
    LIST_SYMBOL
    LOAD_SYMBOL
    LOCAL_SYMBOL
    LOCKED_SYMBOL
    LOCKS_SYMBOL
    LOCK_SYMBOL
    LOGFILE_SYMBOL
    LOGS_SYMBOL
    LOG_SYMBOL
    LONGBLOB_SYMBOL
    LONGTEXT_SYMBOL
    LONG_SYMBOL
    LOOP_SYMBOL
    LOW_PRIORITY_SYMBOL
    MANUAL_SYMBOL
    MASTER_AUTO_POSITION_SYMBOL
    MASTER_BIND_SYMBOL
    MASTER_COMPRESSION_ALGORITHM_SYMBOL
    MASTER_CONNECT_RETRY_SYMBOL
    MASTER_DELAY_SYMBOL
    MASTER_HEARTBEAT_PERIOD_SYMBOL
    MASTER_HOST_SYMBOL
    MASTER_LOG_FILE_SYMBOL
    MASTER_LOG_POS_SYMBOL
    MASTER_PASSWORD_SYMBOL
    MASTER_PORT_SYMBOL
    MASTER_PUBLIC_KEY_PATH_SYMBOL
    MASTER_RETRY_COUNT_SYMBOL
    MASTER_SSL_CAPATH_SYMBOL
    MASTER_SSL_CA_SYMBOL
    MASTER_SSL_CERT_SYMBOL
    MASTER_SSL_CIPHER_SYMBOL
    MASTER_SSL_CRLPATH_SYMBOL
    MASTER_SSL_CRL_SYMBOL
    MASTER_SSL_KEY_SYMBOL
    MASTER_SSL_SYMBOL
    MASTER_SSL_VERIFY_SERVER_CERT_SYMBOL
    MASTER_SYMBOL
    MASTER_TLS_CIPHERSUITES_SYMBOL
    MASTER_TLS_VERSION_SYMBOL
    MASTER_USER_SYMBOL
    MASTER_ZSTD_COMPRESSION_LEVEL_SYMBOL
    MATCH_SYMBOL
    MAXVALUE_SYMBOL
    MAX_CONNECTIONS_PER_HOUR_SYMBOL
    MAX_QUERIES_PER_HOUR_SYMBOL
    MAX_ROWS_SYMBOL
    MAX_SIZE_SYMBOL
    MAX_SYMBOL
    MAX_UPDATES_PER_HOUR_SYMBOL
    MAX_USER_CONNECTIONS_SYMBOL
    MEDIUMBLOB_SYMBOL
    MEDIUMINT_SYMBOL
    MEDIUMTEXT_SYMBOL
    MEDIUM_SYMBOL
    MEMBER_SYMBOL
    MEMORY_SYMBOL
    MERGE_SYMBOL
    MESSAGE_TEXT_SYMBOL
    MICROSECOND_SYMBOL
    MIGRATE_SYMBOL
    MINUTE_MICROSECOND_SYMBOL
    MINUTE_SECOND_SYMBOL
    MINUTE_SYMBOL
    MIN_ROWS_SYMBOL
    MIN_SYMBOL
    MODE_SYMBOL
    MODIFIES_SYMBOL
    MODIFY_SYMBOL
    MOD_SYMBOL
    MONTH_SYMBOL
    MULTILINESTRING_SYMBOL
    MULTIPOINT_SYMBOL
    MULTIPOLYGON_SYMBOL
    MUTEX_SYMBOL
    MYSQL_ERRNO_SYMBOL
    NAMES_SYMBOL
    NAME_SYMBOL
    NATIONAL_SYMBOL
    NATURAL_SYMBOL
    NCHAR_SYMBOL
    NDBCLUSTER_SYMBOL
    NESTED_SYMBOL
    NETWORK_NAMESPACE_SYMBOL
    NEVER_SYMBOL
    NEW_SYMBOL
    NEXT_SYMBOL
    NODEGROUP_SYMBOL
    NONE_SYMBOL
    NOT_SYMBOL
    NOWAIT_SYMBOL
    NOW_SYMBOL
    NO_SYMBOL
    NO_WRITE_TO_BINLOG_SYMBOL
    NTH_VALUE_SYMBOL
    NTILE_SYMBOL
    NULLS_SYMBOL
    NULL_SYMBOL
    NUMBER_SYMBOL
    NUMERIC_SYMBOL
    NVARCHAR_SYMBOL
    OFFLINE_SYMBOL
    OFFSET_SYMBOL
    OFF_SYMBOL
    OF_SYMBOL
    OJ_SYMBOL
    OLD_SYMBOL
    ONE_SYMBOL
    ONLINE_SYMBOL
    ONLY_SYMBOL
    ON_SYMBOL
    OPEN_CURLY_SYMBOL
    OPEN_PAR_SYMBOL
    OPEN_SYMBOL
    OPTIMIZER_COSTS_SYMBOL
    OPTIMIZE_SYMBOL
    OPTIONALLY_SYMBOL
    OPTIONAL_SYMBOL
    OPTIONS_SYMBOL
    OPTION_SYMBOL
    ORDER_SYMBOL
    ORDINALITY_SYMBOL
    ORGANIZATION_SYMBOL
    OR_SYMBOL
    OTHERS_SYMBOL
    OUTER_SYMBOL
    OUTFILE_SYMBOL
    OUT_SYMBOL
    OVER_SYMBOL
    OWNER_SYMBOL
    PACK_KEYS_SYMBOL
    PAGE_SYMBOL
    PARALLEL_SYMBOL
    PARSER_SYMBOL
    PARSE_TREE_SYMBOL
    PARTIAL_SYMBOL
    PARTITIONING_SYMBOL
    PARTITIONS_SYMBOL
    PARTITION_SYMBOL
    PASSWORD_LOCK_TIME_SYMBOL
    PASSWORD_SYMBOL
    PATH_SYMBOL
    PERCENT_RANK_SYMBOL
    PERSIST_ONLY_SYMBOL
    PERSIST_SYMBOL
    PHASE_SYMBOL
    PLUGINS_SYMBOL
    PLUGIN_DIR_SYMBOL
    PLUGIN_SYMBOL
    POINT_SYMBOL
    POLYGON_SYMBOL
    PORT_SYMBOL
    POSITION_SYMBOL
    PRECEDES_SYMBOL
    PRECEDING_SYMBOL
    PRECISION_SYMBOL
    PREPARE_SYMBOL
    PRESERVE_SYMBOL
    PREV_SYMBOL
    PRIMARY_SYMBOL
    PRIVILEGES_SYMBOL
    PRIVILEGE_CHECKS_USER_SYMBOL
    PROCEDURE_SYMBOL
    PROCESSLIST_SYMBOL
    PROCESS_SYMBOL
    PROFILES_SYMBOL
    PROFILE_SYMBOL
    PROXY_SYMBOL
    PURGE_SYMBOL
    QUALIFY_SYMBOL
    QUARTER_SYMBOL
    QUERY_SYMBOL
    QUICK_SYMBOL
    RANDOM_SYMBOL
    RANGE_SYMBOL
    RANK_SYMBOL
    READS_SYMBOL
    READ_ONLY_SYMBOL
    READ_SYMBOL
    REAL_SYMBOL
    REBUILD_SYMBOL
    RECOVER_SYMBOL
    RECURSIVE_SYMBOL
    REDO_BUFFER_SIZE_SYMBOL
    REDUNDANT_SYMBOL
    REFERENCES_SYMBOL
    REFERENCE_SYMBOL
    REGEXP_SYMBOL
    REGISTRATION_SYMBOL
    RELAYLOG_SYMBOL
    RELAY_LOG_FILE_SYMBOL
    RELAY_LOG_POS_SYMBOL
    RELAY_SYMBOL
    RELAY_THREAD_SYMBOL
    RELEASE_SYMBOL
    RELOAD_SYMBOL
    REMOTE_SYMBOL
    REMOVE_SYMBOL
    RENAME_SYMBOL
    REORGANIZE_SYMBOL
    REPAIR_SYMBOL
    REPEATABLE_SYMBOL
    REPEAT_SYMBOL
    REPLACE_SYMBOL
    REPLICAS_SYMBOL
    REPLICATE_DO_DB_SYMBOL
    REPLICATE_DO_TABLE_SYMBOL
    REPLICATE_IGNORE_DB_SYMBOL
    REPLICATE_IGNORE_TABLE_SYMBOL
    REPLICATE_REWRITE_DB_SYMBOL
    REPLICATE_WILD_DO_TABLE_SYMBOL
    REPLICATE_WILD_IGNORE_TABLE_SYMBOL
    REPLICATION_SYMBOL
    REPLICA_SYMBOL
    REQUIRE_ROW_FORMAT_SYMBOL
    REQUIRE_SYMBOL
    REQUIRE_TABLE_PRIMARY_KEY_CHECK_SYMBOL
    RESET_SYMBOL
    RESIGNAL_SYMBOL
    RESOURCE_SYMBOL
    RESPECT_SYMBOL
    RESTART_SYMBOL
    RESTORE_SYMBOL
    RESTRICT_SYMBOL
    RESUME_SYMBOL
    RETAIN_SYMBOL
    RETURNED_SQLSTATE_SYMBOL
    RETURNING_SYMBOL
    RETURNS_SYMBOL
    RETURN_SYMBOL
    REUSE_SYMBOL
    REVERSE_SYMBOL
    REVOKE_SYMBOL
    RIGHT_SYMBOL
    ROLE_SYMBOL
    ROLLBACK_SYMBOL
    ROLLUP_SYMBOL
    ROTATE_SYMBOL
    ROUTINE_SYMBOL
    ROWS_SYMBOL
    ROW_COUNT_SYMBOL
    ROW_FORMAT_SYMBOL
    ROW_NUMBER_SYMBOL
    ROW_SYMBOL
    RTREE_SYMBOL
    SAVEPOINT_SYMBOL
    SCHEDULE_SYMBOL
    SCHEMA_NAME_SYMBOL
    SECONDARY_ENGINE_ATTRIBUTE_SYMBOL
    SECONDARY_ENGINE_SYMBOL
    SECONDARY_LOAD_SYMBOL
    SECONDARY_SYMBOL
    SECONDARY_UNLOAD_SYMBOL
    SECOND_MICROSECOND_SYMBOL
    SECOND_SYMBOL
    SECURITY_SYMBOL
    SELECT_SYMBOL
    SEMICOLON_SYMBOL
    SEPARATOR_SYMBOL
    SERIALIZABLE_SYMBOL
    SERIAL_SYMBOL
    SERVER_SYMBOL
    SESSION_SYMBOL
    SET_SYMBOL
    SHARE_SYMBOL
    SHOW_SYMBOL
    SHUTDOWN_SYMBOL
    SIGNAL_SYMBOL
    SIGNED_SYMBOL
    SIMPLE_SYMBOL
    SKIP_SYMBOL
    SLAVE_SYMBOL
    SLOW_SYMBOL
    SMALLINT_SYMBOL
    SNAPSHOT_SYMBOL
    SOCKET_SYMBOL
    SONAME_SYMBOL
    SOUNDS_SYMBOL
    SOURCE_AUTO_POSITION_SYMBOL
    SOURCE_BIND_SYMBOL
    SOURCE_COMPRESSION_ALGORITHM_SYMBOL
    SOURCE_CONNECTION_AUTO_FAILOVER_SYMBOL
    SOURCE_CONNECT_RETRY_SYMBOL
    SOURCE_DELAY_SYMBOL
    SOURCE_HEARTBEAT_PERIOD_SYMBOL
    SOURCE_HOST_SYMBOL
    SOURCE_LOG_FILE_SYMBOL
    SOURCE_LOG_POS_SYMBOL
    SOURCE_PASSWORD_SYMBOL
    SOURCE_PORT_SYMBOL
    SOURCE_PUBLIC_KEY_PATH_SYMBOL
    SOURCE_RETRY_COUNT_SYMBOL
    SOURCE_SSL_CAPATH_SYMBOL
    SOURCE_SSL_CA_SYMBOL
    SOURCE_SSL_CERT_SYMBOL
    SOURCE_SSL_CIPHER_SYMBOL
    SOURCE_SSL_CRLPATH_SYMBOL
    SOURCE_SSL_CRL_SYMBOL
    SOURCE_SSL_KEY_SYMBOL
    SOURCE_SSL_SYMBOL
    SOURCE_SSL_VERIFY_SERVER_CERT_SYMBOL
    SOURCE_SYMBOL
    SOURCE_TLS_CIPHERSUITES_SYMBOL
    SOURCE_TLS_VERSION_SYMBOL
    SOURCE_USER_SYMBOL
    SOURCE_ZSTD_COMPRESSION_LEVEL_SYMBOL
    SPATIAL_SYMBOL
    SQLEXCEPTION_SYMBOL
    SQLSTATE_SYMBOL
    SQLWARNING_SYMBOL
    SQL_AFTER_GTIDS_SYMBOL
    SQL_AFTER_MTS_GAPS_SYMBOL
    SQL_BEFORE_GTIDS_SYMBOL
    SQL_BIG_RESULT_SYMBOL
    SQL_BUFFER_RESULT_SYMBOL
    SQL_CALC_FOUND_ROWS_SYMBOL
    SQL_NO_CACHE_SYMBOL
    SQL_SMALL_RESULT_SYMBOL
    SQL_SYMBOL
    SQL_THREAD_SYMBOL
    SRID_SYMBOL
    SSL_SYMBOL
    STACKED_SYMBOL
    STARTING_SYMBOL
    STARTS_SYMBOL
    START_SYMBOL
    STATS_AUTO_RECALC_SYMBOL
    STATS_PERSISTENT_SYMBOL
    STATS_SAMPLE_PAGES_SYMBOL
    STATUS_SYMBOL
    STDDEV_SAMP_SYMBOL
    STD_SYMBOL
    STOP_SYMBOL
    STORAGE_SYMBOL
    STORED_SYMBOL
    STRAIGHT_JOIN_SYMBOL
    STREAM_SYMBOL
    STRING_SYMBOL
    ST_COLLECT_SYMBOL
    SUBCLASS_ORIGIN_SYMBOL
    SUBDATE_SYMBOL
    SUBJECT_SYMBOL
    SUBPARTITIONS_SYMBOL
    SUBPARTITION_SYMBOL
    SUBSTRING_SYMBOL
    SUM_SYMBOL
    SUPER_SYMBOL
    SUSPEND_SYMBOL
    SWAPS_SYMBOL
    SWITCHES_SYMBOL
    SYSDATE_SYMBOL
    SYSTEM_SYMBOL
    TABLESAMPLE_SYMBOL
    TABLESPACE_SYMBOL
    TABLES_SYMBOL
    TABLE_CHECKSUM_SYMBOL
    TABLE_NAME_SYMBOL
    TABLE_SYMBOL
    TEMPORARY_SYMBOL
    TEMPTABLE_SYMBOL
    TERMINATED_SYMBOL
    TEXT_SYMBOL
    THAN_SYMBOL
    THEN_SYMBOL
    THREAD_PRIORITY_SYMBOL
    TIES_SYMBOL
    TIMESTAMPADD_SYMBOL
    TIMESTAMPDIFF_SYMBOL
    TIMESTAMP_SYMBOL
    TIME_SYMBOL
    TINYBLOB_SYMBOL
    TINYINT_SYMBOL
    TINYTEXT_SYMBOL
    TLS_SYMBOL
    TO_SYMBOL
    TRAILING_SYMBOL
    TRANSACTION_SYMBOL
    TRIGGERS_SYMBOL
    TRIGGER_SYMBOL
    TRIM_SYMBOL
    TRUE_SYMBOL
    TRUNCATE_SYMBOL
    TYPES_SYMBOL
    TYPE_SYMBOL
    UDF_RETURNS_SYMBOL
    UNBOUNDED_SYMBOL
    UNCOMMITTED_SYMBOL
    UNDEFINED_SYMBOL
    UNDOFILE_SYMBOL
    UNDO_BUFFER_SIZE_SYMBOL
    UNDO_SYMBOL
    UNICODE_SYMBOL
    UNINSTALL_SYMBOL
    UNION_SYMBOL
    UNIQUE_SYMBOL
    UNKNOWN_SYMBOL
    UNLOCK_SYMBOL
    UNREGISTER_SYMBOL
    UNSIGNED_SYMBOL
    UNTIL_SYMBOL
    UPDATE_SYMBOL
    UPGRADE_SYMBOL
    URL_SYMBOL
    USAGE_SYMBOL
    USER_RESOURCES_SYMBOL
    USER_SYMBOL
    USE_FRM_SYMBOL
    USE_SYMBOL
    USING_SYMBOL
    UTC_DATE_SYMBOL
    UTC_TIMESTAMP_SYMBOL
    UTC_TIME_SYMBOL
    VALIDATION_SYMBOL
    VALUES_SYMBOL
    VALUE_SYMBOL
    VARBINARY_SYMBOL
    VARCHAR_SYMBOL
    VARIABLES_SYMBOL
    VARIANCE_SYMBOL
    VARYING_SYMBOL
    VAR_SAMP_SYMBOL
    VCPU_SYMBOL
    VIEW_SYMBOL
    VIRTUAL_SYMBOL
    VISIBLE_SYMBOL
    WAIT_SYMBOL
    WARNINGS_SYMBOL
    WEEK_SYMBOL
    WEIGHT_STRING_SYMBOL
    WHEN_SYMBOL
    WHERE_SYMBOL
    WHILE_SYMBOL
    WINDOW_SYMBOL
    WITHOUT_SYMBOL
    WITH_SYMBOL
    WORK_SYMBOL
    WRAPPER_SYMBOL
    WRITE_SYMBOL
    XA_SYMBOL
    XID_SYMBOL
    XML_SYMBOL
    XOR_SYMBOL
    YEAR_MONTH_SYMBOL
    YEAR_SYMBOL
    ZEROFILL_SYMBOL
    ZONE_SYMBOL
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
%End

%Start
    Keyword
%End

%Rules
    Keyword ::= a s s i g n g t i d s t o a n o n y m o u s t r a n s a c t i o n s /.$setResult($_ASSIGN_GTIDS_TO_ANONYMOUS_TRANSACTIONS_SYMBOL);./
    Keyword ::= s o u r c e c o n n e c t i o n a u t o f a i l o v e r /.$setResult($_SOURCE_CONNECTION_AUTO_FAILOVER_SYMBOL);./
    Keyword ::= r e q u i r e t a b l e p r i m a r y k e y c h e c k /.$setResult($_REQUIRE_TABLE_PRIMARY_KEY_CHECK_SYMBOL);./
    Keyword ::= m a s t e r c o m p r e s s i o n a l g o r i t h m /.$setResult($_MASTER_COMPRESSION_ALGORITHM_SYMBOL);./
    Keyword ::= m a s t e r z s t d c o m p r e s s i o n l e v e l /.$setResult($_MASTER_ZSTD_COMPRESSION_LEVEL_SYMBOL);./
    Keyword ::= s o u r c e c o m p r e s s i o n a l g o r i t h m /.$setResult($_SOURCE_COMPRESSION_ALGORITHM_SYMBOL);./
    Keyword ::= s o u r c e z s t d c o m p r e s s i o n l e v e l /.$setResult($_SOURCE_ZSTD_COMPRESSION_LEVEL_SYMBOL);./
    Keyword ::= m a s t e r s s l v e r i f y s e r v e r c e r t /.$setResult($_MASTER_SSL_VERIFY_SERVER_CERT_SYMBOL);./
    Keyword ::= s o u r c e s s l v e r i f y s e r v e r c e r t /.$setResult($_SOURCE_SSL_VERIFY_SERVER_CERT_SYMBOL);./
    Keyword ::= r e p l i c a t e w i l d i g n o r e t a b l e /.$setResult($_REPLICATE_WILD_IGNORE_TABLE_SYMBOL);./
    Keyword ::= s e c o n d a r y e n g i n e a t t r i b u t e /.$setResult($_SECONDARY_ENGINE_ATTRIBUTE_SYMBOL);./
    Keyword ::= j s o n u n q u o t e d s e p a r a t o r /.$setResult($_JSON_UNQUOTED_SEPARATOR_SYMBOL);./
    Keyword ::= m a s t e r h e a r t b e a t p e r i o d /.$setResult($_MASTER_HEARTBEAT_PERIOD_SYMBOL);./
    Keyword ::= m a s t e r t l s c i p h e r s u i t e s /.$setResult($_MASTER_TLS_CIPHERSUITES_SYMBOL);./
    Keyword ::= m a x c o n n e c t i o n s p e r h o u r /.$setResult($_MAX_CONNECTIONS_PER_HOUR_SYMBOL);./
    Keyword ::= s o u r c e h e a r t b e a t p e r i o d /.$setResult($_SOURCE_HEARTBEAT_PERIOD_SYMBOL);./
    Keyword ::= s o u r c e t l s c i p h e r s u i t e s /.$setResult($_SOURCE_TLS_CIPHERSUITES_SYMBOL);./
    Keyword ::= r e p l i c a t e i g n o r e t a b l e /.$setResult($_REPLICATE_IGNORE_TABLE_SYMBOL);./
    Keyword ::= r e p l i c a t e w i l d d o t a b l e /.$setResult($_REPLICATE_WILD_DO_TABLE_SYMBOL);./
    Keyword ::= f a i l e d l o g i n a t t e m p t s /.$setResult($_FAILED_LOGIN_ATTEMPTS_SYMBOL);./
    Keyword ::= m a s t e r p u b l i c k e y p a t h /.$setResult($_MASTER_PUBLIC_KEY_PATH_SYMBOL);./
    Keyword ::= p r i v i l e g e c h e c k s u s e r /.$setResult($_PRIVILEGE_CHECKS_USER_SYMBOL);./
    Keyword ::= s o u r c e p u b l i c k e y p a t h /.$setResult($_SOURCE_PUBLIC_KEY_PATH_SYMBOL);./
    Keyword ::= g e o m e t r y c o l l e c t i o n /.$setResult($_GEOMETRYCOLLECTION_SYMBOL);./
    Keyword ::= g e t m a s t e r p u b l i c k e y /.$setResult($_GET_MASTER_PUBLIC_KEY_SYMBOL);./
    Keyword ::= g e t s o u r c e p u b l i c k e y /.$setResult($_GET_SOURCE_PUBLIC_KEY_SYMBOL);./
    Keyword ::= m a s t e r a u t o p o s i t i o n /.$setResult($_MASTER_AUTO_POSITION_SYMBOL);./
    Keyword ::= m a s t e r c o n n e c t r e t r y /.$setResult($_MASTER_CONNECT_RETRY_SYMBOL);./
    Keyword ::= m a x u s e r c o n n e c t i o n s /.$setResult($_MAX_USER_CONNECTIONS_SYMBOL);./
    Keyword ::= r e p l i c a t e r e w r i t e d b /.$setResult($_REPLICATE_REWRITE_DB_SYMBOL);./
    Keyword ::= s o u r c e a u t o p o s i t i o n /.$setResult($_SOURCE_AUTO_POSITION_SYMBOL);./
    Keyword ::= s o u r c e c o n n e c t r e t r y /.$setResult($_SOURCE_CONNECT_RETRY_SYMBOL);./
    Keyword ::= c h a l l e n g e r e s p o n s e /.$setResult($_CHALLENGE_RESPONSE_SYMBOL);./
    Keyword ::= c o n s t r a i n t c a t a l o g /.$setResult($_CONSTRAINT_CATALOG_SYMBOL);./
    Keyword ::= m a x q u e r i e s p e r h o u r /.$setResult($_MAX_QUERIES_PER_HOUR_SYMBOL);./
    Keyword ::= m a x u p d a t e s p e r h o u r /.$setResult($_MAX_UPDATES_PER_HOUR_SYMBOL);./
    Keyword ::= m i n u t e m i c r o s e c o n d /.$setResult($_MINUTE_MICROSECOND_SYMBOL);./
    Keyword ::= r e p l i c a t e i g n o r e d b /.$setResult($_REPLICATE_IGNORE_DB_SYMBOL);./
    Keyword ::= s e c o n d m i c r o s e c o n d /.$setResult($_SECOND_MICROSECOND_SYMBOL);./
    Keyword ::= c o n s t r a i n t s c h e m a /.$setResult($_CONSTRAINT_SCHEMA_SYMBOL);./
    Keyword ::= g r o u p r e p l i c a t i o n /.$setResult($_GROUP_REPLICATION_SYMBOL);./
    Keyword ::= m a s t e r r e t r y c o u n t /.$setResult($_MASTER_RETRY_COUNT_SYMBOL);./
    Keyword ::= m a s t e r s s l c r l p a t h /.$setResult($_MASTER_SSL_CRLPATH_SYMBOL);./
    Keyword ::= m a s t e r t l s v e r s i o n /.$setResult($_MASTER_TLS_VERSION_SYMBOL);./
    Keyword ::= n e t w o r k n a m e s p a c e /.$setResult($_NETWORK_NAMESPACE_SYMBOL);./
    Keyword ::= p a s s w o r d l o c k t i m e /.$setResult($_PASSWORD_LOCK_TIME_SYMBOL);./
    Keyword ::= r e p l i c a t e d o t a b l e /.$setResult($_REPLICATE_DO_TABLE_SYMBOL);./
    Keyword ::= r e q u i r e r o w f o r m a t /.$setResult($_REQUIRE_ROW_FORMAT_SYMBOL);./
    Keyword ::= r e t u r n e d s q l s t a t e /.$setResult($_RETURNED_SQLSTATE_SYMBOL);./
    Keyword ::= s o u r c e r e t r y c o u n t /.$setResult($_SOURCE_RETRY_COUNT_SYMBOL);./
    Keyword ::= s o u r c e s s l c r l p a t h /.$setResult($_SOURCE_SSL_CRLPATH_SYMBOL);./
    Keyword ::= s o u r c e t l s v e r s i o n /.$setResult($_SOURCE_TLS_VERSION_SYMBOL);./
    Keyword ::= s q l c a l c f o u n d r o w s /.$setResult($_SQL_CALC_FOUND_ROWS_SYMBOL);./
    Keyword ::= s t a t s s a m p l e p a g e s /.$setResult($_STATS_SAMPLE_PAGES_SYMBOL);./
    Keyword ::= e n g i n e a t t r i b u t e /.$setResult($_ENGINE_ATTRIBUTE_SYMBOL);./
    Keyword ::= h o u r m i c r o s e c o n d /.$setResult($_HOUR_MICROSECOND_SYMBOL);./
    Keyword ::= i g n o r e s e r v e r i d s /.$setResult($_IGNORE_SERVER_IDS_SYMBOL);./
    Keyword ::= m a s t e r s s l c a p a t h /.$setResult($_MASTER_SSL_CAPATH_SYMBOL);./
    Keyword ::= m a s t e r s s l c i p h e r /.$setResult($_MASTER_SSL_CIPHER_SYMBOL);./
    Keyword ::= m u l t i l i n e s t r i n g /.$setResult($_MULTILINESTRING_SYMBOL);./
    Keyword ::= n o w r i t e t o b i n l o g /.$setResult($_NO_WRITE_TO_BINLOG_SYMBOL);./
    Keyword ::= s e c o n d a r y e n g i n e /.$setResult($_SECONDARY_ENGINE_SYMBOL);./
    Keyword ::= s e c o n d a r y u n l o a d /.$setResult($_SECONDARY_UNLOAD_SYMBOL);./
    Keyword ::= s o u r c e s s l c a p a t h /.$setResult($_SOURCE_SSL_CAPATH_SYMBOL);./
    Keyword ::= s o u r c e s s l c i p h e r /.$setResult($_SOURCE_SSL_CIPHER_SYMBOL);./
    Keyword ::= s q l a f t e r m t s g a p s /.$setResult($_SQL_AFTER_MTS_GAPS_SYMBOL);./
    Keyword ::= s q l b u f f e r r e s u l t /.$setResult($_SQL_BUFFER_RESULT_SYMBOL);./
    Keyword ::= s t a t s a u t o r e c a l c /.$setResult($_STATS_AUTO_RECALC_SYMBOL);./
    Keyword ::= s t a t s p e r s i s t e n t /.$setResult($_STATS_PERSISTENT_SYMBOL);./
    Keyword ::= a u t h e n t i c a t i o n /.$setResult($_AUTHENTICATION_SYMBOL);./
    Keyword ::= a u t o e x t e n d s i z e /.$setResult($_AUTOEXTEND_SIZE_SYMBOL);./
    Keyword ::= c o n s t r a i n t n a m e /.$setResult($_CONSTRAINT_NAME_SYMBOL);./
    Keyword ::= d a y m i c r o s e c o n d /.$setResult($_DAY_MICROSECOND_SYMBOL);./
    Keyword ::= m a s t e r p a s s w o r d /.$setResult($_MASTER_PASSWORD_SYMBOL);./
    Keyword ::= o p t i m i z e r c o s t s /.$setResult($_OPTIMIZER_COSTS_SYMBOL);./
    Keyword ::= r e d o b u f f e r s i z e /.$setResult($_REDO_BUFFER_SIZE_SYMBOL);./
    Keyword ::= s o u r c e p a s s w o r d /.$setResult($_SOURCE_PASSWORD_SYMBOL);./
    Keyword ::= s q l b e f o r e g t i d s /.$setResult($_SQL_BEFORE_GTIDS_SYMBOL);./
    Keyword ::= s q l s m a l l r e s u l t /.$setResult($_SQL_SMALL_RESULT_SYMBOL);./
    Keyword ::= s u b c l a s s o r i g i n /.$setResult($_SUBCLASS_ORIGIN_SYMBOL);./
    Keyword ::= t h r e a d p r i o r i t y /.$setResult($_THREAD_PRIORITY_SYMBOL);./
    Keyword ::= u n d o b u f f e r s i z e /.$setResult($_UNDO_BUFFER_SIZE_SYMBOL);./
    Keyword ::= a u t o i n c r e m e n t /.$setResult($_AUTO_INCREMENT_SYMBOL);./
    Keyword ::= d e l a y k e y w r i t e /.$setResult($_DELAY_KEY_WRITE_SYMBOL);./
    Keyword ::= d e t e r m i n i s t i c /.$setResult($_DETERMINISTIC_SYMBOL);./
    Keyword ::= f i l e b l o c k s i z e /.$setResult($_FILE_BLOCK_SIZE_SYMBOL);./
    Keyword ::= j s o n o b j e c t a g g /.$setResult($_JSON_OBJECTAGG_SYMBOL);./
    Keyword ::= j s o n s e p a r a t o r /.$setResult($_JSON_SEPARATOR_SYMBOL);./
    Keyword ::= m a s t e r l o g f i l e /.$setResult($_MASTER_LOG_FILE_SYMBOL);./
    Keyword ::= m a s t e r s s l c e r t /.$setResult($_MASTER_SSL_CERT_SYMBOL);./
    Keyword ::= r e p l i c a t e d o d b /.$setResult($_REPLICATE_DO_DB_SYMBOL);./
    Keyword ::= s e c o n d a r y l o a d /.$setResult($_SECONDARY_LOAD_SYMBOL);./
    Keyword ::= s o u r c e l o g f i l e /.$setResult($_SOURCE_LOG_FILE_SYMBOL);./
    Keyword ::= s o u r c e s s l c e r t /.$setResult($_SOURCE_SSL_CERT_SYMBOL);./
    Keyword ::= s q l a f t e r g t i d s /.$setResult($_SQL_AFTER_GTIDS_SYMBOL);./
    Keyword ::= s u b p a r t i t i o n s /.$setResult($_SUBPARTITIONS_SYMBOL);./
    Keyword ::= t a b l e c h e c k s u m /.$setResult($_TABLE_CHECKSUM_SYMBOL);./
    Keyword ::= t i m e s t a m p d i f f /.$setResult($_TIMESTAMPDIFF_SYMBOL);./
    Keyword ::= u s e r r e s o u r c e s /.$setResult($_USER_RESOURCES_SYMBOL);./
    Keyword ::= a v g r o w l e n g t h /.$setResult($_AVG_ROW_LENGTH_SYMBOL);./
    Keyword ::= c o l u m n f o r m a t /.$setResult($_COLUMN_FORMAT_SYMBOL);./
    Keyword ::= h i g h p r i o r i t y /.$setResult($_HIGH_PRIORITY_SYMBOL);./
    Keyword ::= i n s e r t m e t h o d /.$setResult($_INSERT_METHOD_SYMBOL);./
    Keyword ::= j s o n a r r a y a g g /.$setResult($_JSON_ARRAYAGG_SYMBOL);./
    Keyword ::= k e y b l o c k s i z e /.$setResult($_KEY_BLOCK_SIZE_SYMBOL);./
    Keyword ::= m a s t e r l o g p o s /.$setResult($_MASTER_LOG_POS_SYMBOL);./
    Keyword ::= m a s t e r s s l c r l /.$setResult($_MASTER_SSL_CRL_SYMBOL);./
    Keyword ::= m a s t e r s s l k e y /.$setResult($_MASTER_SSL_KEY_SYMBOL);./
    Keyword ::= m i n u t e s e c o n d /.$setResult($_MINUTE_SECOND_SYMBOL);./
    Keyword ::= m u l t i p o l y g o n /.$setResult($_MULTIPOLYGON_SYMBOL);./
    Keyword ::= o r g a n i z a t i o n /.$setResult($_ORGANIZATION_SYMBOL);./
    Keyword ::= p a r t i t i o n i n g /.$setResult($_PARTITIONING_SYMBOL);./
    Keyword ::= r e g i s t r a t i o n /.$setResult($_REGISTRATION_SYMBOL);./
    Keyword ::= r e l a y l o g f i l e /.$setResult($_RELAY_LOG_FILE_SYMBOL);./
    Keyword ::= s e r i a l i z a b l e /.$setResult($_SERIALIZABLE_SYMBOL);./
    Keyword ::= s o u r c e l o g p o s /.$setResult($_SOURCE_LOG_POS_SYMBOL);./
    Keyword ::= s o u r c e s s l c r l /.$setResult($_SOURCE_SSL_CRL_SYMBOL);./
    Keyword ::= s o u r c e s s l k e y /.$setResult($_SOURCE_SSL_KEY_SYMBOL);./
    Keyword ::= s q l b i g r e s u l t /.$setResult($_SQL_BIG_RESULT_SYMBOL);./
    Keyword ::= s q l e x c e p t i o n /.$setResult($_SQLEXCEPTION_SYMBOL);./
    Keyword ::= s t r a i g h t j o i n /.$setResult($_STRAIGHT_JOIN_SYMBOL);./
    Keyword ::= s u b p a r t i t i o n /.$setResult($_SUBPARTITION_SYMBOL);./
    Keyword ::= t i m e s t a m p a d d /.$setResult($_TIMESTAMPADD_SYMBOL);./
    Keyword ::= u t c t i m e s t a m p /.$setResult($_UTC_TIMESTAMP_SYMBOL);./
    Keyword ::= w e i g h t s t r i n g /.$setResult($_WEIGHT_STRING_SYMBOL);./
    Keyword ::= c a t a l o g n a m e /.$setResult($_CATALOG_NAME_SYMBOL);./
    Keyword ::= c l a s s o r i g i n /.$setResult($_CLASS_ORIGIN_SYMBOL);./
    Keyword ::= c o m p r e s s i o n /.$setResult($_COMPRESSION_SYMBOL);./
    Keyword ::= c o n c a t p i p e s /.$setResult($_CONCAT_PIPES_SYMBOL);./
    Keyword ::= c u r r e n t u s e r /.$setResult($_CURRENT_USER_SYMBOL);./
    Keyword ::= d e f a u l t a u t h /.$setResult($_DEFAULT_AUTH_SYMBOL);./
    Keyword ::= d e s c r i p t i o n /.$setResult($_DESCRIPTION_SYMBOL);./
    Keyword ::= d i a g n o s t i c s /.$setResult($_DIAGNOSTICS_SYMBOL);./
    Keyword ::= g r o u p c o n c a t /.$setResult($_GROUP_CONCAT_SYMBOL);./
    Keyword ::= i n i t i a l s i z e /.$setResult($_INITIAL_SIZE_SYMBOL);./
    Keyword ::= l o w p r i o r i t y /.$setResult($_LOW_PRIORITY_SYMBOL);./
    Keyword ::= m a s t e r d e l a y /.$setResult($_MASTER_DELAY_SYMBOL);./
    Keyword ::= m a s t e r s s l c a /.$setResult($_MASTER_SSL_CA_SYMBOL);./
    Keyword ::= m e s s a g e t e x t /.$setResult($_MESSAGE_TEXT_SYMBOL);./
    Keyword ::= m i c r o s e c o n d /.$setResult($_MICROSECOND_SYMBOL);./
    Keyword ::= p e r c e n t r a n k /.$setResult($_PERCENT_RANK_SYMBOL);./
    Keyword ::= p e r s i s t o n l y /.$setResult($_PERSIST_ONLY_SYMBOL);./
    Keyword ::= p r o c e s s l i s t /.$setResult($_PROCESSLIST_SYMBOL);./
    Keyword ::= r e l a y l o g p o s /.$setResult($_RELAY_LOG_POS_SYMBOL);./
    Keyword ::= r e l a y t h r e a d /.$setResult($_RELAY_THREAD_SYMBOL);./
    Keyword ::= r e p l i c a t i o n /.$setResult($_REPLICATION_SYMBOL);./
    Keyword ::= s o u r c e d e l a y /.$setResult($_SOURCE_DELAY_SYMBOL);./
    Keyword ::= s o u r c e s s l c a /.$setResult($_SOURCE_SSL_CA_SYMBOL);./
    Keyword ::= t a b l e s a m p l e /.$setResult($_TABLESAMPLE_SYMBOL);./
    Keyword ::= t r a n s a c t i o n /.$setResult($_TRANSACTION_SYMBOL);./
    Keyword ::= u n c o m m i t t e d /.$setResult($_UNCOMMITTED_SYMBOL);./
    Keyword ::= c l o s e c u r l y /.$setResult($_CLOSE_CURLY_SYMBOL);./
    Keyword ::= c o l u m n n a m e /.$setResult($_COLUMN_NAME_SYMBOL);./
    Keyword ::= c o m p l e t i o n /.$setResult($_COMPLETION_SYMBOL);./
    Keyword ::= c o m p r e s s e d /.$setResult($_COMPRESSED_SYMBOL);./
    Keyword ::= c o n c u r r e n t /.$setResult($_CONCURRENT_SYMBOL);./
    Keyword ::= c o n n e c t i o n /.$setResult($_CONNECTION_SYMBOL);./
    Keyword ::= c o n s i s t e n t /.$setResult($_CONSISTENT_SYMBOL);./
    Keyword ::= c o n s t r a i n t /.$setResult($_CONSTRAINT_SYMBOL);./
    Keyword ::= c u r s o r n a m e /.$setResult($_CURSOR_NAME_SYMBOL);./
    Keyword ::= d e a l l o c a t e /.$setResult($_DEALLOCATE_SYMBOL);./
    Keyword ::= d e f i n i t i o n /.$setResult($_DEFINITION_SYMBOL);./
    Keyword ::= e n c r y p t i o n /.$setResult($_ENCRYPTION_SYMBOL);./
    Keyword ::= e x t e n t s i z e /.$setResult($_EXTENT_SIZE_SYMBOL);./
    Keyword ::= f i r s t v a l u e /.$setResult($_FIRST_VALUE_SYMBOL);./
    Keyword ::= h o u r m i n u t e /.$setResult($_HOUR_MINUTE_SYMBOL);./
    Keyword ::= h o u r s e c o n d /.$setResult($_HOUR_SECOND_SYMBOL);./
    Keyword ::= i d e n t i f i e d /.$setResult($_IDENTIFIED_SYMBOL);./
    Keyword ::= l i n e s t r i n g /.$setResult($_LINESTRING_SYMBOL);./
    Keyword ::= m a s t e r b i n d /.$setResult($_MASTER_BIND_SYMBOL);./
    Keyword ::= m a s t e r h o s t /.$setResult($_MASTER_HOST_SYMBOL);./
    Keyword ::= m a s t e r p o r t /.$setResult($_MASTER_PORT_SYMBOL);./
    Keyword ::= m a s t e r u s e r /.$setResult($_MASTER_USER_SYMBOL);./
    Keyword ::= m e d i u m b l o b /.$setResult($_MEDIUMBLOB_SYMBOL);./
    Keyword ::= m e d i u m t e x t /.$setResult($_MEDIUMTEXT_SYMBOL);./
    Keyword ::= m u l t i p o i n t /.$setResult($_MULTIPOINT_SYMBOL);./
    Keyword ::= m y s q l e r r n o /.$setResult($_MYSQL_ERRNO_SYMBOL);./
    Keyword ::= n d b c l u s t e r /.$setResult($_NDBCLUSTER_SYMBOL);./
    Keyword ::= o p t i o n a l l y /.$setResult($_OPTIONALLY_SYMBOL);./
    Keyword ::= o r d i n a l i t y /.$setResult($_ORDINALITY_SYMBOL);./
    Keyword ::= p a r t i t i o n s /.$setResult($_PARTITIONS_SYMBOL);./
    Keyword ::= p r i v i l e g e s /.$setResult($_PRIVILEGES_SYMBOL);./
    Keyword ::= r e f e r e n c e s /.$setResult($_REFERENCES_SYMBOL);./
    Keyword ::= r e o r g a n i z e /.$setResult($_REORGANIZE_SYMBOL);./
    Keyword ::= r e p e a t a b l e /.$setResult($_REPEATABLE_SYMBOL);./
    Keyword ::= s c h e m a n a m e /.$setResult($_SCHEMA_NAME_SYMBOL);./
    Keyword ::= s o u r c e b i n d /.$setResult($_SOURCE_BIND_SYMBOL);./
    Keyword ::= s o u r c e h o s t /.$setResult($_SOURCE_HOST_SYMBOL);./
    Keyword ::= s o u r c e p o r t /.$setResult($_SOURCE_PORT_SYMBOL);./
    Keyword ::= s o u r c e u s e r /.$setResult($_SOURCE_USER_SYMBOL);./
    Keyword ::= s q l n o c a c h e /.$setResult($_SQL_NO_CACHE_SYMBOL);./
    Keyword ::= s q l w a r n i n g /.$setResult($_SQLWARNING_SYMBOL);./
    Keyword ::= s t d d e v s a m p /.$setResult($_STDDEV_SAMP_SYMBOL);./
    Keyword ::= t a b l e s p a c e /.$setResult($_TABLESPACE_SYMBOL);./
    Keyword ::= t e r m i n a t e d /.$setResult($_TERMINATED_SYMBOL);./
    Keyword ::= u d f r e t u r n s /.$setResult($_UDF_RETURNS_SYMBOL);./
    Keyword ::= u n r e g i s t e r /.$setResult($_UNREGISTER_SYMBOL);./
    Keyword ::= v a l i d a t i o n /.$setResult($_VALIDATION_SYMBOL);./
    Keyword ::= a g g r e g a t e /.$setResult($_AGGREGATE_SYMBOL);./
    Keyword ::= a l g o r i t h m /.$setResult($_ALGORITHM_SYMBOL);./
    Keyword ::= a t t r i b u t e /.$setResult($_ATTRIBUTE_SYMBOL);./
    Keyword ::= b e r n o u l l i /.$setResult($_BERNOULLI_SYMBOL);./
    Keyword ::= c o l l a t i o n /.$setResult($_COLLATION_SYMBOL);./
    Keyword ::= c o m m i t t e d /.$setResult($_COMMITTED_SYMBOL);./
    Keyword ::= c o m p o n e n t /.$setResult($_COMPONENT_SYMBOL);./
    Keyword ::= c o n d i t i o n /.$setResult($_CONDITION_SYMBOL);./
    Keyword ::= d a t a b a s e s /.$setResult($_DATABASES_SYMBOL);./
    Keyword ::= d a y m i n u t e /.$setResult($_DAY_MINUTE_SYMBOL);./
    Keyword ::= d a y s e c o n d /.$setResult($_DAY_SECOND_SYMBOL);./
    Keyword ::= d e n s e r a n k /.$setResult($_DENSE_RANK_SYMBOL);./
    Keyword ::= d i r e c t o r y /.$setResult($_DIRECTORY_SYMBOL);./
    Keyword ::= d u p l i c a t e /.$setResult($_DUPLICATE_SYMBOL);./
    Keyword ::= e x p a n s i o n /.$setResult($_EXPANSION_SYMBOL);./
    Keyword ::= f o l l o w i n g /.$setResult($_FOLLOWING_SYMBOL);./
    Keyword ::= g e n e r a t e d /.$setResult($_GENERATED_SYMBOL);./
    Keyword ::= g e t f o r m a t /.$setResult($_GET_FORMAT_SYMBOL);./
    Keyword ::= h i s t o g r a m /.$setResult($_HISTOGRAM_SYMBOL);./
    Keyword ::= i n t e r s e c t /.$setResult($_INTERSECT_SYMBOL);./
    Keyword ::= i n v i s i b l e /.$setResult($_INVISIBLE_SYMBOL);./
    Keyword ::= i s o l a t i o n /.$setResult($_ISOLATION_SYMBOL);./
    Keyword ::= j s o n t a b l e /.$setResult($_JSON_TABLE_SYMBOL);./
    Keyword ::= j s o n v a l u e /.$setResult($_JSON_VALUE_SYMBOL);./
    Keyword ::= l a s t v a l u e /.$setResult($_LAST_VALUE_SYMBOL);./
    Keyword ::= m a s t e r s s l /.$setResult($_MASTER_SSL_SYMBOL);./
    Keyword ::= m e d i u m i n t /.$setResult($_MEDIUMINT_SYMBOL);./
    Keyword ::= n o d e g r o u p /.$setResult($_NODEGROUP_SYMBOL);./
    Keyword ::= o p e n c u r l y /.$setResult($_OPEN_CURLY_SYMBOL);./
    Keyword ::= p a r s e t r e e /.$setResult($_PARSE_TREE_SYMBOL);./
    Keyword ::= p a r t i t i o n /.$setResult($_PARTITION_SYMBOL);./
    Keyword ::= p l u g i n d i r /.$setResult($_PLUGIN_DIR_SYMBOL);./
    Keyword ::= p r e c e d i n g /.$setResult($_PRECEDING_SYMBOL);./
    Keyword ::= p r e c i s i o n /.$setResult($_PRECISION_SYMBOL);./
    Keyword ::= p r o c e d u r e /.$setResult($_PROCEDURE_SYMBOL);./
    Keyword ::= r e c u r s i v e /.$setResult($_RECURSIVE_SYMBOL);./
    Keyword ::= r e d u n d a n t /.$setResult($_REDUNDANT_SYMBOL);./
    Keyword ::= r e f e r e n c e /.$setResult($_REFERENCE_SYMBOL);./
    Keyword ::= r e t u r n i n g /.$setResult($_RETURNING_SYMBOL);./
    Keyword ::= r o w f o r m a t /.$setResult($_ROW_FORMAT_SYMBOL);./
    Keyword ::= r o w n u m b e r /.$setResult($_ROW_NUMBER_SYMBOL);./
    Keyword ::= s a v e p o i n t /.$setResult($_SAVEPOINT_SYMBOL);./
    Keyword ::= s e c o n d a r y /.$setResult($_SECONDARY_SYMBOL);./
    Keyword ::= s e m i c o l o n /.$setResult($_SEMICOLON_SYMBOL);./
    Keyword ::= s e p a r a t o r /.$setResult($_SEPARATOR_SYMBOL);./
    Keyword ::= s o u r c e s s l /.$setResult($_SOURCE_SSL_SYMBOL);./
    Keyword ::= s q l t h r e a d /.$setResult($_SQL_THREAD_SYMBOL);./
    Keyword ::= s t c o l l e c t /.$setResult($_ST_COLLECT_SYMBOL);./
    Keyword ::= s u b s t r i n g /.$setResult($_SUBSTRING_SYMBOL);./
    Keyword ::= t a b l e n a m e /.$setResult($_TABLE_NAME_SYMBOL);./
    Keyword ::= t e m p o r a r y /.$setResult($_TEMPORARY_SYMBOL);./
    Keyword ::= t e m p t a b l e /.$setResult($_TEMPTABLE_SYMBOL);./
    Keyword ::= t i m e s t a m p /.$setResult($_TIMESTAMP_SYMBOL);./
    Keyword ::= u n b o u n d e d /.$setResult($_UNBOUNDED_SYMBOL);./
    Keyword ::= u n d e f i n e d /.$setResult($_UNDEFINED_SYMBOL);./
    Keyword ::= u n i n s t a l l /.$setResult($_UNINSTALL_SYMBOL);./
    Keyword ::= v a r b i n a r y /.$setResult($_VARBINARY_SYMBOL);./
    Keyword ::= v a r i a b l e s /.$setResult($_VARIABLES_SYMBOL);./
    Keyword ::= y e a r m o n t h /.$setResult($_YEAR_MONTH_SYMBOL);./
    Keyword ::= a t a t s i g n /.$setResult($_AT_AT_SIGN_SYMBOL);./
    Keyword ::= c a s c a d e d /.$setResult($_CASCADED_SYMBOL);./
    Keyword ::= c h e c k s u m /.$setResult($_CHECKSUM_SYMBOL);./
    Keyword ::= c l o s e p a r /.$setResult($_CLOSE_PAR_SYMBOL);./
    Keyword ::= c o a l e s c e /.$setResult($_COALESCE_SYMBOL);./
    Keyword ::= c o n t a i n s /.$setResult($_CONTAINS_SYMBOL);./
    Keyword ::= c o n t i n u e /.$setResult($_CONTINUE_SYMBOL);./
    Keyword ::= c u m e d i s t /.$setResult($_CUME_DIST_SYMBOL);./
    Keyword ::= d a t a b a s e /.$setResult($_DATABASE_SYMBOL);./
    Keyword ::= d a t a f i l e /.$setResult($_DATAFILE_SYMBOL);./
    Keyword ::= d a t e t i m e /.$setResult($_DATETIME_SYMBOL);./
    Keyword ::= d e s c r i b e /.$setResult($_DESCRIBE_SYMBOL);./
    Keyword ::= d i s t i n c t /.$setResult($_DISTINCT_SYMBOL);./
    Keyword ::= d u m p f i l e /.$setResult($_DUMPFILE_SYMBOL);./
    Keyword ::= e n c l o s e d /.$setResult($_ENCLOSED_SYMBOL);./
    Keyword ::= e n f o r c e d /.$setResult($_ENFORCED_SYMBOL);./
    Keyword ::= e x c h a n g e /.$setResult($_EXCHANGE_SYMBOL);./
    Keyword ::= e x t e n d e d /.$setResult($_EXTENDED_SYMBOL);./
    Keyword ::= f u l l t e x t /.$setResult($_FULLTEXT_SYMBOL);./
    Keyword ::= f u n c t i o n /.$setResult($_FUNCTION_SYMBOL);./
    Keyword ::= g e n e r a t e /.$setResult($_GENERATE_SYMBOL);./
    Keyword ::= g e o m e t r y /.$setResult($_GEOMETRY_SYMBOL);./
    Keyword ::= g r o u p i n g /.$setResult($_GROUPING_SYMBOL);./
    Keyword ::= g t i d o n l y /.$setResult($_GTID_ONLY_SYMBOL);./
    Keyword ::= i n a c t i v e /.$setResult($_INACTIVE_SYMBOL);./
    Keyword ::= i n i t i a t e /.$setResult($_INITIATE_SYMBOL);./
    Keyword ::= i n s t a n c e /.$setResult($_INSTANCE_SYMBOL);./
    Keyword ::= i n t e r v a l /.$setResult($_INTERVAL_SYMBOL);./
    Keyword ::= l a n g u a g e /.$setResult($_LANGUAGE_SYMBOL);./
    Keyword ::= l o n g b l o b /.$setResult($_LONGBLOB_SYMBOL);./
    Keyword ::= l o n g t e x t /.$setResult($_LONGTEXT_SYMBOL);./
    Keyword ::= m a x v a l u e /.$setResult($_MAXVALUE_SYMBOL);./
    Keyword ::= m o d i f i e s /.$setResult($_MODIFIES_SYMBOL);./
    Keyword ::= n a t i o n a l /.$setResult($_NATIONAL_SYMBOL);./
    Keyword ::= n t h v a l u e /.$setResult($_NTH_VALUE_SYMBOL);./
    Keyword ::= n v a r c h a r /.$setResult($_NVARCHAR_SYMBOL);./
    Keyword ::= o p t i m i z e /.$setResult($_OPTIMIZE_SYMBOL);./
    Keyword ::= o p t i o n a l /.$setResult($_OPTIONAL_SYMBOL);./
    Keyword ::= p a c k k e y s /.$setResult($_PACK_KEYS_SYMBOL);./
    Keyword ::= p a r a l l e l /.$setResult($_PARALLEL_SYMBOL);./
    Keyword ::= p a s s w o r d /.$setResult($_PASSWORD_SYMBOL);./
    Keyword ::= p o s i t i o n /.$setResult($_POSITION_SYMBOL);./
    Keyword ::= p r e c e d e s /.$setResult($_PRECEDES_SYMBOL);./
    Keyword ::= p r e s e r v e /.$setResult($_PRESERVE_SYMBOL);./
    Keyword ::= p r o f i l e s /.$setResult($_PROFILES_SYMBOL);./
    Keyword ::= r e a d o n l y /.$setResult($_READ_ONLY_SYMBOL);./
    Keyword ::= r e l a y l o g /.$setResult($_RELAYLOG_SYMBOL);./
    Keyword ::= r e p l i c a s /.$setResult($_REPLICAS_SYMBOL);./
    Keyword ::= r e s i g n a l /.$setResult($_RESIGNAL_SYMBOL);./
    Keyword ::= r e s o u r c e /.$setResult($_RESOURCE_SYMBOL);./
    Keyword ::= r e s t r i c t /.$setResult($_RESTRICT_SYMBOL);./
    Keyword ::= r o l l b a c k /.$setResult($_ROLLBACK_SYMBOL);./
    Keyword ::= r o w c o u n t /.$setResult($_ROW_COUNT_SYMBOL);./
    Keyword ::= s c h e d u l e /.$setResult($_SCHEDULE_SYMBOL);./
    Keyword ::= s e c u r i t y /.$setResult($_SECURITY_SYMBOL);./
    Keyword ::= s h u t d o w n /.$setResult($_SHUTDOWN_SYMBOL);./
    Keyword ::= s m a l l i n t /.$setResult($_SMALLINT_SYMBOL);./
    Keyword ::= s n a p s h o t /.$setResult($_SNAPSHOT_SYMBOL);./
    Keyword ::= s q l s t a t e /.$setResult($_SQLSTATE_SYMBOL);./
    Keyword ::= s t a r t i n g /.$setResult($_STARTING_SYMBOL);./
    Keyword ::= s w i t c h e s /.$setResult($_SWITCHES_SYMBOL);./
    Keyword ::= t i n y b l o b /.$setResult($_TINYBLOB_SYMBOL);./
    Keyword ::= t i n y t e x t /.$setResult($_TINYTEXT_SYMBOL);./
    Keyword ::= t r a i l i n g /.$setResult($_TRAILING_SYMBOL);./
    Keyword ::= t r i g g e r s /.$setResult($_TRIGGERS_SYMBOL);./
    Keyword ::= t r u n c a t e /.$setResult($_TRUNCATE_SYMBOL);./
    Keyword ::= u n d o f i l e /.$setResult($_UNDOFILE_SYMBOL);./
    Keyword ::= u n s i g n e d /.$setResult($_UNSIGNED_SYMBOL);./
    Keyword ::= v a r i a n c e /.$setResult($_VARIANCE_SYMBOL);./
    Keyword ::= w a r n i n g s /.$setResult($_WARNINGS_SYMBOL);./
    Keyword ::= z e r o f i l l /.$setResult($_ZEROFILL_SYMBOL);./
    Keyword ::= a c c o u n t /.$setResult($_ACCOUNT_SYMBOL);./
    Keyword ::= a d d d a t e /.$setResult($_ADDDATE_SYMBOL);./
    Keyword ::= a g a i n s t /.$setResult($_AGAINST_SYMBOL);./
    Keyword ::= a n a l y z e /.$setResult($_ANALYZE_SYMBOL);./
    Keyword ::= b e t w e e n /.$setResult($_BETWEEN_SYMBOL);./
    Keyword ::= b o o l e a n /.$setResult($_BOOLEAN_SYMBOL);./
    Keyword ::= b u c k e t s /.$setResult($_BUCKETS_SYMBOL);./
    Keyword ::= c a s c a d e /.$setResult($_CASCADE_SYMBOL);./
    Keyword ::= c h a n g e d /.$setResult($_CHANGED_SYMBOL);./
    Keyword ::= c h a n n e l /.$setResult($_CHANNEL_SYMBOL);./
    Keyword ::= c h a r s e t /.$setResult($_CHARSET_SYMBOL);./
    Keyword ::= c o l l a t e /.$setResult($_COLLATE_SYMBOL);./
    Keyword ::= c o l u m n s /.$setResult($_COLUMNS_SYMBOL);./
    Keyword ::= c o m m e n t /.$setResult($_COMMENT_SYMBOL);./
    Keyword ::= c o m p a c t /.$setResult($_COMPACT_SYMBOL);./
    Keyword ::= c o n t e x t /.$setResult($_CONTEXT_SYMBOL);./
    Keyword ::= c o n v e r t /.$setResult($_CONVERT_SYMBOL);./
    Keyword ::= c u r d a t e /.$setResult($_CURDATE_SYMBOL);./
    Keyword ::= c u r r e n t /.$setResult($_CURRENT_SYMBOL);./
    Keyword ::= c u r t i m e /.$setResult($_CURTIME_SYMBOL);./
    Keyword ::= d a t e a d d /.$setResult($_DATE_ADD_SYMBOL);./
    Keyword ::= d a t e s u b /.$setResult($_DATE_SUB_SYMBOL);./
    Keyword ::= d a y h o u r /.$setResult($_DAY_HOUR_SYMBOL);./
    Keyword ::= d e c i m a l /.$setResult($_DECIMAL_SYMBOL);./
    Keyword ::= d e c l a r e /.$setResult($_DECLARE_SYMBOL);./
    Keyword ::= d e f a u l t /.$setResult($_DEFAULT_SYMBOL);./
    Keyword ::= d e f i n e r /.$setResult($_DEFINER_SYMBOL);./
    Keyword ::= d e l a y e d /.$setResult($_DELAYED_SYMBOL);./
    Keyword ::= d i s a b l e /.$setResult($_DISABLE_SYMBOL);./
    Keyword ::= d i s c a r d /.$setResult($_DISCARD_SYMBOL);./
    Keyword ::= d y n a m i c /.$setResult($_DYNAMIC_SYMBOL);./
    Keyword ::= e n g i n e s /.$setResult($_ENGINES_SYMBOL);./
    Keyword ::= e s c a p e d /.$setResult($_ESCAPED_SYMBOL);./
    Keyword ::= e x c l u d e /.$setResult($_EXCLUDE_SYMBOL);./
    Keyword ::= e x e c u t e /.$setResult($_EXECUTE_SYMBOL);./
    Keyword ::= e x p l a i n /.$setResult($_EXPLAIN_SYMBOL);./
    Keyword ::= e x t r a c t /.$setResult($_EXTRACT_SYMBOL);./
    Keyword ::= f o l l o w s /.$setResult($_FOLLOWS_SYMBOL);./
    Keyword ::= f o r e i g n /.$setResult($_FOREIGN_SYMBOL);./
    Keyword ::= g e n e r a l /.$setResult($_GENERAL_SYMBOL);./
    Keyword ::= h a n d l e r /.$setResult($_HANDLER_SYMBOL);./
    Keyword ::= h i s t o r y /.$setResult($_HISTORY_SYMBOL);./
    Keyword ::= i n d e x e s /.$setResult($_INDEXES_SYMBOL);./
    Keyword ::= i n i t i a l /.$setResult($_INITIAL_SYMBOL);./
    Keyword ::= i n s t a l l /.$setResult($_INSTALL_SYMBOL);./
    Keyword ::= i n v o k e r /.$setResult($_INVOKER_SYMBOL);./
    Keyword ::= i t e r a t e /.$setResult($_ITERATE_SYMBOL);./
    Keyword ::= k e y r i n g /.$setResult($_KEYRING_SYMBOL);./
    Keyword ::= l a t e r a l /.$setResult($_LATERAL_SYMBOL);./
    Keyword ::= l e a d i n g /.$setResult($_LEADING_SYMBOL);./
    Keyword ::= l o g f i l e /.$setResult($_LOGFILE_SYMBOL);./
    Keyword ::= m a x r o w s /.$setResult($_MAX_ROWS_SYMBOL);./
    Keyword ::= m a x s i z e /.$setResult($_MAX_SIZE_SYMBOL);./
    Keyword ::= m i g r a t e /.$setResult($_MIGRATE_SYMBOL);./
    Keyword ::= m i n r o w s /.$setResult($_MIN_ROWS_SYMBOL);./
    Keyword ::= n a t u r a l /.$setResult($_NATURAL_SYMBOL);./
    Keyword ::= n u m e r i c /.$setResult($_NUMERIC_SYMBOL);./
    Keyword ::= o f f l i n e /.$setResult($_OFFLINE_SYMBOL);./
    Keyword ::= o p e n p a r /.$setResult($_OPEN_PAR_SYMBOL);./
    Keyword ::= o p t i o n s /.$setResult($_OPTIONS_SYMBOL);./
    Keyword ::= o u t f i l e /.$setResult($_OUTFILE_SYMBOL);./
    Keyword ::= p a r t i a l /.$setResult($_PARTIAL_SYMBOL);./
    Keyword ::= p e r s i s t /.$setResult($_PERSIST_SYMBOL);./
    Keyword ::= p l u g i n s /.$setResult($_PLUGINS_SYMBOL);./
    Keyword ::= p o l y g o n /.$setResult($_POLYGON_SYMBOL);./
    Keyword ::= p r e p a r e /.$setResult($_PREPARE_SYMBOL);./
    Keyword ::= p r i m a r y /.$setResult($_PRIMARY_SYMBOL);./
    Keyword ::= p r o c e s s /.$setResult($_PROCESS_SYMBOL);./
    Keyword ::= p r o f i l e /.$setResult($_PROFILE_SYMBOL);./
    Keyword ::= q u a l i f y /.$setResult($_QUALIFY_SYMBOL);./
    Keyword ::= q u a r t e r /.$setResult($_QUARTER_SYMBOL);./
    Keyword ::= r e b u i l d /.$setResult($_REBUILD_SYMBOL);./
    Keyword ::= r e c o v e r /.$setResult($_RECOVER_SYMBOL);./
    Keyword ::= r e l e a s e /.$setResult($_RELEASE_SYMBOL);./
    Keyword ::= r e p l a c e /.$setResult($_REPLACE_SYMBOL);./
    Keyword ::= r e p l i c a /.$setResult($_REPLICA_SYMBOL);./
    Keyword ::= r e q u i r e /.$setResult($_REQUIRE_SYMBOL);./
    Keyword ::= r e s p e c t /.$setResult($_RESPECT_SYMBOL);./
    Keyword ::= r e s t a r t /.$setResult($_RESTART_SYMBOL);./
    Keyword ::= r e s t o r e /.$setResult($_RESTORE_SYMBOL);./
    Keyword ::= r e t u r n s /.$setResult($_RETURNS_SYMBOL);./
    Keyword ::= r e v e r s e /.$setResult($_REVERSE_SYMBOL);./
    Keyword ::= r o u t i n e /.$setResult($_ROUTINE_SYMBOL);./
    Keyword ::= s e s s i o n /.$setResult($_SESSION_SYMBOL);./
    Keyword ::= s p a t i a l /.$setResult($_SPATIAL_SYMBOL);./
    Keyword ::= s t a c k e d /.$setResult($_STACKED_SYMBOL);./
    Keyword ::= s t o r a g e /.$setResult($_STORAGE_SYMBOL);./
    Keyword ::= s u b d a t e /.$setResult($_SUBDATE_SYMBOL);./
    Keyword ::= s u b j e c t /.$setResult($_SUBJECT_SYMBOL);./
    Keyword ::= s u s p e n d /.$setResult($_SUSPEND_SYMBOL);./
    Keyword ::= s y s d a t e /.$setResult($_SYSDATE_SYMBOL);./
    Keyword ::= t i n y i n t /.$setResult($_TINYINT_SYMBOL);./
    Keyword ::= t r i g g e r /.$setResult($_TRIGGER_SYMBOL);./
    Keyword ::= u n i c o d e /.$setResult($_UNICODE_SYMBOL);./
    Keyword ::= u n k n o w n /.$setResult($_UNKNOWN_SYMBOL);./
    Keyword ::= u p g r a d e /.$setResult($_UPGRADE_SYMBOL);./
    Keyword ::= u t c d a t e /.$setResult($_UTC_DATE_SYMBOL);./
    Keyword ::= u t c t i m e /.$setResult($_UTC_TIME_SYMBOL);./
    Keyword ::= v a r c h a r /.$setResult($_VARCHAR_SYMBOL);./
    Keyword ::= v a r s a m p /.$setResult($_VAR_SAMP_SYMBOL);./
    Keyword ::= v a r y i n g /.$setResult($_VARYING_SYMBOL);./
    Keyword ::= v i r t u a l /.$setResult($_VIRTUAL_SYMBOL);./
    Keyword ::= v i s i b l e /.$setResult($_VISIBLE_SYMBOL);./
    Keyword ::= w i t h o u t /.$setResult($_WITHOUT_SYMBOL);./
    Keyword ::= w r a p p e r /.$setResult($_WRAPPER_SYMBOL);./
    Keyword ::= a c t i o n /.$setResult($_ACTION_SYMBOL);./
    Keyword ::= a c t i v e /.$setResult($_ACTIVE_SYMBOL);./
    Keyword ::= a l w a y s /.$setResult($_ALWAYS_SYMBOL);./
    Keyword ::= a t s i g n /.$setResult($_AT_SIGN_SYMBOL);./
    Keyword ::= b a c k u p /.$setResult($_BACKUP_SYMBOL);./
    Keyword ::= b e f o r e /.$setResult($_BEFORE_SYMBOL);./
    Keyword ::= b i g i n t /.$setResult($_BIGINT_SYMBOL);./
    Keyword ::= b i n a r y /.$setResult($_BINARY_SYMBOL);./
    Keyword ::= b i n l o g /.$setResult($_BINLOG_SYMBOL);./
    Keyword ::= b i t a n d /.$setResult($_BIT_AND_SYMBOL);./
    Keyword ::= b i t x o r /.$setResult($_BIT_XOR_SYMBOL);./
    Keyword ::= c h a n g e /.$setResult($_CHANGE_SYMBOL);./
    Keyword ::= c i p h e r /.$setResult($_CIPHER_SYMBOL);./
    Keyword ::= c l i e n t /.$setResult($_CLIENT_SYMBOL);./
    Keyword ::= c o l u m n /.$setResult($_COLUMN_SYMBOL);./
    Keyword ::= c o m m i t /.$setResult($_COMMIT_SYMBOL);./
    Keyword ::= c r e a t e /.$setResult($_CREATE_SYMBOL);./
    Keyword ::= c u r s o r /.$setResult($_CURSOR_SYMBOL);./
    Keyword ::= d e l e t e /.$setResult($_DELETE_SYMBOL);./
    Keyword ::= d o u b l e /.$setResult($_DOUBLE_SYMBOL);./
    Keyword ::= e l s e i f /.$setResult($_ELSEIF_SYMBOL);./
    Keyword ::= e n a b l e /.$setResult($_ENABLE_SYMBOL);./
    Keyword ::= e n g i n e /.$setResult($_ENGINE_SYMBOL);./
    Keyword ::= e r r o r s /.$setResult($_ERRORS_SYMBOL);./
    Keyword ::= e s c a p e /.$setResult($_ESCAPE_SYMBOL);./
    Keyword ::= e v e n t s /.$setResult($_EVENTS_SYMBOL);./
    Keyword ::= e x c e p t /.$setResult($_EXCEPT_SYMBOL);./
    Keyword ::= e x i s t s /.$setResult($_EXISTS_SYMBOL);./
    Keyword ::= e x p i r e /.$setResult($_EXPIRE_SYMBOL);./
    Keyword ::= e x p o r t /.$setResult($_EXPORT_SYMBOL);./
    Keyword ::= f a c t o r /.$setResult($_FACTOR_SYMBOL);./
    Keyword ::= f a u l t s /.$setResult($_FAULTS_SYMBOL);./
    Keyword ::= f i l t e r /.$setResult($_FILTER_SYMBOL);./
    Keyword ::= f i n i s h /.$setResult($_FINISH_SYMBOL);./
    Keyword ::= f o r m a t /.$setResult($_FORMAT_SYMBOL);./
    Keyword ::= g l o b a l /.$setResult($_GLOBAL_SYMBOL);./
    Keyword ::= g r a n t s /.$setResult($_GRANTS_SYMBOL);./
    Keyword ::= g r o u p s /.$setResult($_GROUPS_SYMBOL);./
    Keyword ::= h a v i n g /.$setResult($_HAVING_SYMBOL);./
    Keyword ::= i g n o r e /.$setResult($_IGNORE_SYMBOL);./
    Keyword ::= i m p o r t /.$setResult($_IMPORT_SYMBOL);./
    Keyword ::= i n f i l e /.$setResult($_INFILE_SYMBOL);./
    Keyword ::= i n s e r t /.$setResult($_INSERT_SYMBOL);./
    Keyword ::= i s s u e r /.$setResult($_ISSUER_SYMBOL);./
    Keyword ::= l e a v e s /.$setResult($_LEAVES_SYMBOL);./
    Keyword ::= l i n e a r /.$setResult($_LINEAR_SYMBOL);./
    Keyword ::= l o c k e d /.$setResult($_LOCKED_SYMBOL);./
    Keyword ::= m a n u a l /.$setResult($_MANUAL_SYMBOL);./
    Keyword ::= m a s t e r /.$setResult($_MASTER_SYMBOL);./
    Keyword ::= m e d i u m /.$setResult($_MEDIUM_SYMBOL);./
    Keyword ::= m e m b e r /.$setResult($_MEMBER_SYMBOL);./
    Keyword ::= m e m o r y /.$setResult($_MEMORY_SYMBOL);./
    Keyword ::= m i n u t e /.$setResult($_MINUTE_SYMBOL);./
    Keyword ::= m o d i f y /.$setResult($_MODIFY_SYMBOL);./
    Keyword ::= n e s t e d /.$setResult($_NESTED_SYMBOL);./
    Keyword ::= n o w a i t /.$setResult($_NOWAIT_SYMBOL);./
    Keyword ::= n u m b e r /.$setResult($_NUMBER_SYMBOL);./
    Keyword ::= o f f s e t /.$setResult($_OFFSET_SYMBOL);./
    Keyword ::= o n l i n e /.$setResult($_ONLINE_SYMBOL);./
    Keyword ::= o p t i o n /.$setResult($_OPTION_SYMBOL);./
    Keyword ::= o t h e r s /.$setResult($_OTHERS_SYMBOL);./
    Keyword ::= p a r s e r /.$setResult($_PARSER_SYMBOL);./
    Keyword ::= p l u g i n /.$setResult($_PLUGIN_SYMBOL);./
    Keyword ::= r a n d o m /.$setResult($_RANDOM_SYMBOL);./
    Keyword ::= r e g e x p /.$setResult($_REGEXP_SYMBOL);./
    Keyword ::= r e l o a d /.$setResult($_RELOAD_SYMBOL);./
    Keyword ::= r e m o t e /.$setResult($_REMOTE_SYMBOL);./
    Keyword ::= r e m o v e /.$setResult($_REMOVE_SYMBOL);./
    Keyword ::= r e n a m e /.$setResult($_RENAME_SYMBOL);./
    Keyword ::= r e p a i r /.$setResult($_REPAIR_SYMBOL);./
    Keyword ::= r e p e a t /.$setResult($_REPEAT_SYMBOL);./
    Keyword ::= r e s u m e /.$setResult($_RESUME_SYMBOL);./
    Keyword ::= r e t a i n /.$setResult($_RETAIN_SYMBOL);./
    Keyword ::= r e t u r n /.$setResult($_RETURN_SYMBOL);./
    Keyword ::= r e v o k e /.$setResult($_REVOKE_SYMBOL);./
    Keyword ::= r o l l u p /.$setResult($_ROLLUP_SYMBOL);./
    Keyword ::= r o t a t e /.$setResult($_ROTATE_SYMBOL);./
    Keyword ::= s e c o n d /.$setResult($_SECOND_SYMBOL);./
    Keyword ::= s e l e c t /.$setResult($_SELECT_SYMBOL);./
    Keyword ::= s e r i a l /.$setResult($_SERIAL_SYMBOL);./
    Keyword ::= s e r v e r /.$setResult($_SERVER_SYMBOL);./
    Keyword ::= s i g n a l /.$setResult($_SIGNAL_SYMBOL);./
    Keyword ::= s i g n e d /.$setResult($_SIGNED_SYMBOL);./
    Keyword ::= s i m p l e /.$setResult($_SIMPLE_SYMBOL);./
    Keyword ::= s o c k e t /.$setResult($_SOCKET_SYMBOL);./
    Keyword ::= s o n a m e /.$setResult($_SONAME_SYMBOL);./
    Keyword ::= s o u n d s /.$setResult($_SOUNDS_SYMBOL);./
    Keyword ::= s o u r c e /.$setResult($_SOURCE_SYMBOL);./
    Keyword ::= s t a r t s /.$setResult($_STARTS_SYMBOL);./
    Keyword ::= s t a t u s /.$setResult($_STATUS_SYMBOL);./
    Keyword ::= s t o r e d /.$setResult($_STORED_SYMBOL);./
    Keyword ::= s t r e a m /.$setResult($_STREAM_SYMBOL);./
    Keyword ::= s t r i n g /.$setResult($_STRING_SYMBOL);./
    Keyword ::= s y s t e m /.$setResult($_SYSTEM_SYMBOL);./
    Keyword ::= t a b l e s /.$setResult($_TABLES_SYMBOL);./
    Keyword ::= u n i q u e /.$setResult($_UNIQUE_SYMBOL);./
    Keyword ::= u n l o c k /.$setResult($_UNLOCK_SYMBOL);./
    Keyword ::= u p d a t e /.$setResult($_UPDATE_SYMBOL);./
    Keyword ::= u s e f r m /.$setResult($_USE_FRM_SYMBOL);./
    Keyword ::= v a l u e s /.$setResult($_VALUES_SYMBOL);./
    Keyword ::= w i n d o w /.$setResult($_WINDOW_SYMBOL);./
    Keyword ::= a d m i n /.$setResult($_ADMIN_SYMBOL);./
    Keyword ::= a f t e r /.$setResult($_AFTER_SYMBOL);./
    Keyword ::= a l t e r /.$setResult($_ALTER_SYMBOL);./
    Keyword ::= a r r a y /.$setResult($_ARRAY_SYMBOL);./
    Keyword ::= a s c i i /.$setResult($_ASCII_SYMBOL);./
    Keyword ::= b e g i n /.$setResult($_BEGIN_SYMBOL);./
    Keyword ::= b i t o r /.$setResult($_BIT_OR_SYMBOL);./
    Keyword ::= b l o c k /.$setResult($_BLOCK_SYMBOL);./
    Keyword ::= b t r e e /.$setResult($_BTREE_SYMBOL);./
    Keyword ::= c a c h e /.$setResult($_CACHE_SYMBOL);./
    Keyword ::= c h a i n /.$setResult($_CHAIN_SYMBOL);./
    Keyword ::= c h e c k /.$setResult($_CHECK_SYMBOL);./
    Keyword ::= c l o n e /.$setResult($_CLONE_SYMBOL);./
    Keyword ::= c l o s e /.$setResult($_CLOSE_SYMBOL);./
    Keyword ::= c o l o n /.$setResult($_COLON_SYMBOL);./
    Keyword ::= c o m m a /.$setResult($_COMMA_SYMBOL);./
    Keyword ::= c o u n t /.$setResult($_COUNT_SYMBOL);./
    Keyword ::= c r o s s /.$setResult($_CROSS_SYMBOL);./
    Keyword ::= e m p t y /.$setResult($_EMPTY_SYMBOL);./
    Keyword ::= e r r o r /.$setResult($_ERROR_SYMBOL);./
    Keyword ::= e v e n t /.$setResult($_EVENT_SYMBOL);./
    Keyword ::= e v e r y /.$setResult($_EVERY_SYMBOL);./
    Keyword ::= f a l s e /.$setResult($_FALSE_SYMBOL);./
    Keyword ::= f e t c h /.$setResult($_FETCH_SYMBOL);./
    Keyword ::= f i r s t /.$setResult($_FIRST_SYMBOL);./
    Keyword ::= f i x e d /.$setResult($_FIXED_SYMBOL);./
    Keyword ::= f l o a t /.$setResult($_FLOAT_SYMBOL);./
    Keyword ::= f l u s h /.$setResult($_FLUSH_SYMBOL);./
    Keyword ::= f o r c e /.$setResult($_FORCE_SYMBOL);./
    Keyword ::= f o u n d /.$setResult($_FOUND_SYMBOL);./
    Keyword ::= g r a n t /.$setResult($_GRANT_SYMBOL);./
    Keyword ::= g r o u p /.$setResult($_GROUP_SYMBOL);./
    Keyword ::= g t i d s /.$setResult($_GTIDS_SYMBOL);./
    Keyword ::= h o s t s /.$setResult($_HOSTS_SYMBOL);./
    Keyword ::= i n d e x /.$setResult($_INDEX_SYMBOL);./
    Keyword ::= i n n e r /.$setResult($_INNER_SYMBOL);./
    Keyword ::= i n o u t /.$setResult($_INOUT_SYMBOL);./
    Keyword ::= l e a v e /.$setResult($_LEAVE_SYMBOL);./
    Keyword ::= l e v e l /.$setResult($_LEVEL_SYMBOL);./
    Keyword ::= l i m i t /.$setResult($_LIMIT_SYMBOL);./
    Keyword ::= l i n e s /.$setResult($_LINES_SYMBOL);./
    Keyword ::= l o c a l /.$setResult($_LOCAL_SYMBOL);./
    Keyword ::= l o c k s /.$setResult($_LOCKS_SYMBOL);./
    Keyword ::= m a t c h /.$setResult($_MATCH_SYMBOL);./
    Keyword ::= m e r g e /.$setResult($_MERGE_SYMBOL);./
    Keyword ::= m o n t h /.$setResult($_MONTH_SYMBOL);./
    Keyword ::= m u t e x /.$setResult($_MUTEX_SYMBOL);./
    Keyword ::= n a m e s /.$setResult($_NAMES_SYMBOL);./
    Keyword ::= n c h a r /.$setResult($_NCHAR_SYMBOL);./
    Keyword ::= n e v e r /.$setResult($_NEVER_SYMBOL);./
    Keyword ::= n t i l e /.$setResult($_NTILE_SYMBOL);./
    Keyword ::= n u l l s /.$setResult($_NULLS_SYMBOL);./
    Keyword ::= o r d e r /.$setResult($_ORDER_SYMBOL);./
    Keyword ::= o u t e r /.$setResult($_OUTER_SYMBOL);./
    Keyword ::= o w n e r /.$setResult($_OWNER_SYMBOL);./
    Keyword ::= p h a s e /.$setResult($_PHASE_SYMBOL);./
    Keyword ::= p o i n t /.$setResult($_POINT_SYMBOL);./
    Keyword ::= p r o x y /.$setResult($_PROXY_SYMBOL);./
    Keyword ::= p u r g e /.$setResult($_PURGE_SYMBOL);./
    Keyword ::= q u e r y /.$setResult($_QUERY_SYMBOL);./
    Keyword ::= q u i c k /.$setResult($_QUICK_SYMBOL);./
    Keyword ::= r a n g e /.$setResult($_RANGE_SYMBOL);./
    Keyword ::= r e a d s /.$setResult($_READS_SYMBOL);./
    Keyword ::= r e l a y /.$setResult($_RELAY_SYMBOL);./
    Keyword ::= r e s e t /.$setResult($_RESET_SYMBOL);./
    Keyword ::= r e u s e /.$setResult($_REUSE_SYMBOL);./
    Keyword ::= r i g h t /.$setResult($_RIGHT_SYMBOL);./
    Keyword ::= r t r e e /.$setResult($_RTREE_SYMBOL);./
    Keyword ::= s h a r e /.$setResult($_SHARE_SYMBOL);./
    Keyword ::= s l a v e /.$setResult($_SLAVE_SYMBOL);./
    Keyword ::= s t a r t /.$setResult($_START_SYMBOL);./
    Keyword ::= s u p e r /.$setResult($_SUPER_SYMBOL);./
    Keyword ::= s w a p s /.$setResult($_SWAPS_SYMBOL);./
    Keyword ::= t a b l e /.$setResult($_TABLE_SYMBOL);./
    Keyword ::= t y p e s /.$setResult($_TYPES_SYMBOL);./
    Keyword ::= u n i o n /.$setResult($_UNION_SYMBOL);./
    Keyword ::= u n t i l /.$setResult($_UNTIL_SYMBOL);./
    Keyword ::= u s a g e /.$setResult($_USAGE_SYMBOL);./
    Keyword ::= u s i n g /.$setResult($_USING_SYMBOL);./
    Keyword ::= v a l u e /.$setResult($_VALUE_SYMBOL);./
    Keyword ::= w h e r e /.$setResult($_WHERE_SYMBOL);./
    Keyword ::= w h i l e /.$setResult($_WHILE_SYMBOL);./
    Keyword ::= w r i t e /.$setResult($_WRITE_SYMBOL);./
    Keyword ::= a u t o /.$setResult($_AUTO_SYMBOL);./
    Keyword ::= b l o b /.$setResult($_BLOB_SYMBOL);./
    Keyword ::= b o o l /.$setResult($_BOOL_SYMBOL);./
    Keyword ::= b o t h /.$setResult($_BOTH_SYMBOL);./
    Keyword ::= b u l k /.$setResult($_BULK_SYMBOL);./
    Keyword ::= b y t e /.$setResult($_BYTE_SYMBOL);./
    Keyword ::= c a l l /.$setResult($_CALL_SYMBOL);./
    Keyword ::= c a s e /.$setResult($_CASE_SYMBOL);./
    Keyword ::= c a s t /.$setResult($_CAST_SYMBOL);./
    Keyword ::= c h a r /.$setResult($_CHAR_SYMBOL);./
    Keyword ::= c o d e /.$setResult($_CODE_SYMBOL);./
    Keyword ::= c u b e /.$setResult($_CUBE_SYMBOL);./
    Keyword ::= d a t a /.$setResult($_DATA_SYMBOL);./
    Keyword ::= d a t e /.$setResult($_DATE_SYMBOL);./
    Keyword ::= d e s c /.$setResult($_DESC_SYMBOL);./
    Keyword ::= d i s k /.$setResult($_DISK_SYMBOL);./
    Keyword ::= d r o p /.$setResult($_DROP_SYMBOL);./
    Keyword ::= d u a l /.$setResult($_DUAL_SYMBOL);./
    Keyword ::= e a c h /.$setResult($_EACH_SYMBOL);./
    Keyword ::= e l s e /.$setResult($_ELSE_SYMBOL);./
    Keyword ::= e n d s /.$setResult($_ENDS_SYMBOL);./
    Keyword ::= e n u m /.$setResult($_ENUM_SYMBOL);./
    Keyword ::= e x i t /.$setResult($_EXIT_SYMBOL);./
    Keyword ::= f a s t /.$setResult($_FAST_SYMBOL);./
    Keyword ::= f i l e /.$setResult($_FILE_SYMBOL);./
    Keyword ::= f r o m /.$setResult($_FROM_SYMBOL);./
    Keyword ::= f u l l /.$setResult($_FULL_SYMBOL);./
    Keyword ::= h a s h /.$setResult($_HASH_SYMBOL);./
    Keyword ::= h e l p /.$setResult($_HELP_SYMBOL);./
    Keyword ::= h o s t /.$setResult($_HOST_SYMBOL);./
    Keyword ::= h o u r /.$setResult($_HOUR_SYMBOL);./
    Keyword ::= i n t o /.$setResult($_INTO_SYMBOL);./
    Keyword ::= j o i n /.$setResult($_JOIN_SYMBOL);./
    Keyword ::= j s o n /.$setResult($_JSON_SYMBOL);./
    Keyword ::= k e y s /.$setResult($_KEYS_SYMBOL);./
    Keyword ::= k i l l /.$setResult($_KILL_SYMBOL);./
    Keyword ::= l a s t /.$setResult($_LAST_SYMBOL);./
    Keyword ::= l e a d /.$setResult($_LEAD_SYMBOL);./
    Keyword ::= l e f t /.$setResult($_LEFT_SYMBOL);./
    Keyword ::= l e s s /.$setResult($_LESS_SYMBOL);./
    Keyword ::= l i k e /.$setResult($_LIKE_SYMBOL);./
    Keyword ::= l i s t /.$setResult($_LIST_SYMBOL);./
    Keyword ::= l o a d /.$setResult($_LOAD_SYMBOL);./
    Keyword ::= l o c k /.$setResult($_LOCK_SYMBOL);./
    Keyword ::= l o g s /.$setResult($_LOGS_SYMBOL);./
    Keyword ::= l o n g /.$setResult($_LONG_SYMBOL);./
    Keyword ::= l o o p /.$setResult($_LOOP_SYMBOL);./
    Keyword ::= m o d e /.$setResult($_MODE_SYMBOL);./
    Keyword ::= n a m e /.$setResult($_NAME_SYMBOL);./
    Keyword ::= n e x t /.$setResult($_NEXT_SYMBOL);./
    Keyword ::= n o n e /.$setResult($_NONE_SYMBOL);./
    Keyword ::= n u l l /.$setResult($_NULL_SYMBOL);./
    Keyword ::= o n l y /.$setResult($_ONLY_SYMBOL);./
    Keyword ::= o p e n /.$setResult($_OPEN_SYMBOL);./
    Keyword ::= o v e r /.$setResult($_OVER_SYMBOL);./
    Keyword ::= p a g e /.$setResult($_PAGE_SYMBOL);./
    Keyword ::= p a t h /.$setResult($_PATH_SYMBOL);./
    Keyword ::= p o r t /.$setResult($_PORT_SYMBOL);./
    Keyword ::= p r e v /.$setResult($_PREV_SYMBOL);./
    Keyword ::= r a n k /.$setResult($_RANK_SYMBOL);./
    Keyword ::= r e a d /.$setResult($_READ_SYMBOL);./
    Keyword ::= r e a l /.$setResult($_REAL_SYMBOL);./
    Keyword ::= r o l e /.$setResult($_ROLE_SYMBOL);./
    Keyword ::= r o w s /.$setResult($_ROWS_SYMBOL);./
    Keyword ::= s h o w /.$setResult($_SHOW_SYMBOL);./
    Keyword ::= s k i p /.$setResult($_SKIP_SYMBOL);./
    Keyword ::= s l o w /.$setResult($_SLOW_SYMBOL);./
    Keyword ::= s r i d /.$setResult($_SRID_SYMBOL);./
    Keyword ::= s t o p /.$setResult($_STOP_SYMBOL);./
    Keyword ::= t e x t /.$setResult($_TEXT_SYMBOL);./
    Keyword ::= t h a n /.$setResult($_THAN_SYMBOL);./
    Keyword ::= t h e n /.$setResult($_THEN_SYMBOL);./
    Keyword ::= t i e s /.$setResult($_TIES_SYMBOL);./
    Keyword ::= t i m e /.$setResult($_TIME_SYMBOL);./
    Keyword ::= t r i m /.$setResult($_TRIM_SYMBOL);./
    Keyword ::= t r u e /.$setResult($_TRUE_SYMBOL);./
    Keyword ::= t y p e /.$setResult($_TYPE_SYMBOL);./
    Keyword ::= u n d o /.$setResult($_UNDO_SYMBOL);./
    Keyword ::= u s e r /.$setResult($_USER_SYMBOL);./
    Keyword ::= v c p u /.$setResult($_VCPU_SYMBOL);./
    Keyword ::= v i e w /.$setResult($_VIEW_SYMBOL);./
    Keyword ::= w a i t /.$setResult($_WAIT_SYMBOL);./
    Keyword ::= w e e k /.$setResult($_WEEK_SYMBOL);./
    Keyword ::= w h e n /.$setResult($_WHEN_SYMBOL);./
    Keyword ::= w i t h /.$setResult($_WITH_SYMBOL);./
    Keyword ::= w o r k /.$setResult($_WORK_SYMBOL);./
    Keyword ::= y e a r /.$setResult($_YEAR_SYMBOL);./
    Keyword ::= z o n e /.$setResult($_ZONE_SYMBOL);./
    Keyword ::= a d d /.$setResult($_ADD_SYMBOL);./
    Keyword ::= a l l /.$setResult($_ALL_SYMBOL);./
    Keyword ::= a n d /.$setResult($_AND_SYMBOL);./
    Keyword ::= a n y /.$setResult($_ANY_SYMBOL);./
    Keyword ::= a s c /.$setResult($_ASC_SYMBOL);./
    Keyword ::= a v g /.$setResult($_AVG_SYMBOL);./
    Keyword ::= b i t /.$setResult($_BIT_SYMBOL);./
    Keyword ::= c p u /.$setResult($_CPU_SYMBOL);./
    Keyword ::= d a y /.$setResult($_DAY_SYMBOL);./
    Keyword ::= d i v /.$setResult($_DIV_SYMBOL);./
    Keyword ::= d o t /.$setResult($_DOT_SYMBOL);./
    Keyword ::= e n d /.$setResult($_END_SYMBOL);./
    Keyword ::= f o r /.$setResult($_FOR_SYMBOL);./
    Keyword ::= g e t /.$setResult($_GET_SYMBOL);./
    Keyword ::= i n t /.$setResult($_INT_SYMBOL);./
    Keyword ::= i p c /.$setResult($_IPC_SYMBOL);./
    Keyword ::= k e y /.$setResult($_KEY_SYMBOL);./
    Keyword ::= l a g /.$setResult($_LAG_SYMBOL);./
    Keyword ::= l o g /.$setResult($_LOG_SYMBOL);./
    Keyword ::= m a x /.$setResult($_MAX_SYMBOL);./
    Keyword ::= m i n /.$setResult($_MIN_SYMBOL);./
    Keyword ::= m o d /.$setResult($_MOD_SYMBOL);./
    Keyword ::= n e w /.$setResult($_NEW_SYMBOL);./
    Keyword ::= n o t /.$setResult($_NOT_SYMBOL);./
    Keyword ::= n o w /.$setResult($_NOW_SYMBOL);./
    Keyword ::= o f f /.$setResult($_OFF_SYMBOL);./
    Keyword ::= o l d /.$setResult($_OLD_SYMBOL);./
    Keyword ::= o n e /.$setResult($_ONE_SYMBOL);./
    Keyword ::= o u t /.$setResult($_OUT_SYMBOL);./
    Keyword ::= r o w /.$setResult($_ROW_SYMBOL);./
    Keyword ::= s e t /.$setResult($_SET_SYMBOL);./
    Keyword ::= s q l /.$setResult($_SQL_SYMBOL);./
    Keyword ::= s s l /.$setResult($_SSL_SYMBOL);./
    Keyword ::= s t d /.$setResult($_STD_SYMBOL);./
    Keyword ::= s u m /.$setResult($_SUM_SYMBOL);./
    Keyword ::= t l s /.$setResult($_TLS_SYMBOL);./
    Keyword ::= u r l /.$setResult($_URL_SYMBOL);./
    Keyword ::= u s e /.$setResult($_USE_SYMBOL);./
    Keyword ::= x i d /.$setResult($_XID_SYMBOL);./
    Keyword ::= x m l /.$setResult($_XML_SYMBOL);./
    Keyword ::= x o r /.$setResult($_XOR_SYMBOL);./
    Keyword ::= a s /.$setResult($_AS_SYMBOL);./
    Keyword ::= a t /.$setResult($_AT_SYMBOL);./
    Keyword ::= b y /.$setResult($_BY_SYMBOL);./
    Keyword ::= d o /.$setResult($_DO_SYMBOL);./
    Keyword ::= i f /.$setResult($_IF_SYMBOL);./
    Keyword ::= i n /.$setResult($_IN_SYMBOL);./
    Keyword ::= i o /.$setResult($_IO_SYMBOL);./
    Keyword ::= i s /.$setResult($_IS_SYMBOL);./
    Keyword ::= n o /.$setResult($_NO_SYMBOL);./
    Keyword ::= o f /.$setResult($_OF_SYMBOL);./
    Keyword ::= o j /.$setResult($_OJ_SYMBOL);./
    Keyword ::= o n /.$setResult($_ON_SYMBOL);./
    Keyword ::= o r /.$setResult($_OR_SYMBOL);./
    Keyword ::= t o /.$setResult($_TO_SYMBOL);./
    Keyword ::= x a /.$setResult($_XA_SYMBOL);./
%End
