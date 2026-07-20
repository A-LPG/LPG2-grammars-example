-- AUTO-GENERATED from antlr/grammars-v4 sql/databricks by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack
%Options fp=SqlDatabricksParser
%options package=lpg.grammars.sql.databricks
%options template=btParserTemplateF.gi
%options import_terminals=SqlDatabricksLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    databricks_file
%End

%Rules
    databricks_file ::= opt_1

    statement_list ::= statement list_3 opt_4

    statement ::= ddl_statement
           | dml_statement
           | data_retrieval_statement
           | show_statement
           | describe_statement
           | misc_statement
           | resource_management_statement
           | security_statement

    ddl_statement ::= alter_statement
           | create_statement
           | drop_statement
           | comment_on_statement
           | declare_variable
           | msck_repair_table_statement
           | refresh_statement
           | set_tag_statement
           | sync_statement
           | truncate_table_statement
           | undrop_table_statement
           | unset_tag_statement

    dml_statement ::= copy_into_statement
           | delete_statement
           | insert_statement
           | insert_overwrite_directory_statement
           | insert_overwrite_directory_hive_format_statement
           | load_data_statement
           | merge_into_statement
           | update_statement

    data_retrieval_statement ::= query_statement
           | select_statement
           | values_statement
           | sql_pipeline
           | explain_statement

    show_statement ::= list
           | show_all_in_share
           | show_catalogs
           | show_columns
           | show_connections
           | show_create_table
           | show_credentials
           | show_databases
           | show_functions
           | show_groups
           | show_locations
           | show_partitions
           | show_procedures
           | show_providers
           | show_recipients
           | show_schemas
           | show_shares
           | show_shares_in_provider
           | show_table
           | show_tables
           | show_tables_dropped
           | show_tblproperties
           | show_users
           | show_views
           | show_volumes

    describe_statement ::= describe_catalog
           | describe_connection
           | describe_credential
           | describe_database
           | describe_function
           | describe_location
           | describe_procedure
           | describe_provider
           | describe_query
           | describe_recipient
           | describe_schema
           | describe_share
           | describe_table
           | describe_volume

    misc_statement ::= call
           | execute_immediate
           | reset_statement
           | set
           | set_recipient
           | set_timezone
           | set_variable
           | use_catalog
           | use_schema

    resource_management_statement ::= add_archive
           | add_file
           | add_jar
           | list_archive
           | list_file
           | list_jar
           | get
           | put_into
           | remove

    security_statement ::= alter_group
           | create_group
           | deny
           | drop_group
           | grant
           | grant_share
           | repair_privileges
           | revoke
           | revoke_share
           | show_grants
           | show_grants_on_share
           | show_grants_to_recipient

    insert_statement ::= INSERT grp_5 table_name TODO

    insert_overwrite_directory_statement ::= TODO

    insert_overwrite_directory_hive_format_statement ::= TODO

    load_data_statement ::= TODO

    merge_into_statement ::= TODO

    update_statement ::= UPDATE table_name opt_6 SET column_name EQ expr list_8 opt_10 opt_12

    copy_into_statement ::= COPY INTO TODO

    delete_statement ::= DELETE FROM object_name opt_13 opt_15

    comment_on_statement ::= COMMENT ON grp_16 IS string

    declare_variable ::= DECLARE opt_18 opt_19 variable_name list_21 opt_22 opt_25

    msck_repair_table_statement ::= opt_26 REPAIR TABLE table_name grp_27

    refresh_statement ::= REFRESH FOREIGN grp_31
           | REFRESH grp_36 table_name opt_39

    set_tag_statement ::= SET TAG ON grp_40 id_ opt_43

    sync_statement ::= SYNC grp_44 opt_50 opt_52

    undrop_table_statement ::= UNDROP grp_53 grp_54

    unset_tag_statement ::= UNSET TAG ON grp_55 id_

    execute_immediate ::= EXECUTE IMMEDIATE string opt_58 opt_59 TODO

    variable_name_list ::= variable_name list_61

    reset_statement ::= RESET_ opt_62

    set_recipient ::= SET RECIPIENT recipient_name

    set_timezone ::= SET TIME ZONE LOCAL TODO

    set_variable ::= SET grp_63 variable_name EQ grp_64 TODO
           | SET grp_65 LPAREN variable_name_list RPAREN EQ LPAREN query_statement RPAREN

    use_catalog ::= grp_66 CATALOG opt_68

    set ::= SET id_ EQ expr
           | SET LR_BRACKET id_ list_70 RR_BRACKET EQ LR_BRACKET expr list_72 RR_BRACKET

    truncate_table_statement ::= TRUNCATE TABLE table_name opt_73

    partition_clause ::= PARTITION LPAREN partition_column_list RPAREN

    partition_column_list ::= partition_column grp_74

    partition_value ::= string
           | num

    alter_statement ::= alter_catalog
           | alter_connection
           | alter_credential
           | alter_location
           | alter_materialized_view
           | alter_provider
           | alter_recipient
           | alter_schema
           | alter_share
           | alter_streaming_table
           | alter_table
           | alter_view
           | alter_volume

    catalog_name ::= id_

    default_collation_name ::= id_

    location_name ::= id_

    principal ::= id_

    connection_name ::= id_

    clean_room_name ::= id_

    credential_name ::= id_

    file_name ::= string

    partition_column ::= id_

    resource_name ::= string

    function_name ::= id_

    metadata_name ::= id_

    procedure_name ::= id_

    provider_name ::= id_

    recipient_name ::= id_

    relation_id ::= string

    relation_name ::= id_

    share_name ::= id_

    table_name ::= id_

    variable_name ::= id_

    view_name ::= id_

    volume_name ::= id_

    alter_catalog ::= ALTER CATALOG opt_75 DEFAULT COLLATION default_collation_name
           | opt_76 OWNER TO principal SET TAGS LPAREN tag_list RPAREN
           | UNSET TAGS LPAREN tag_list RPAREN
           | grp_77 PREDICTIVE OPTIMIZATION
           | OPTIONS LPAREN RPAREN

    alter_connection ::= ALTER CONNECTION connection_name grp_78

    option_list ::= TODO

    alter_credential ::= ALTER storage_service CREDENTIAL credential_name grp_80

    data_type_list ::= data_type list_83

    alter_location ::= ALTER EXTERNAL LOCATION location_name

    alter_materialized_view ::= ALTER MATERIALIZED VIEW view_name TODO

    alter_provider ::= ALTER PROVIDER provider_name grp_84

    alter_recipient ::= ALTER RECIPIENT recipient_name grp_86

    property_key_list ::= property_key list_89

    property_key_value_list ::= property_key_value list_91

    property_key_value ::= property_key opt_92 property_value

    property_key ::= id_ list_94
           | string

    property_value ::= string

    alter_schema ::= ALTER grp_95 schema_name TODO

    alter_share ::= ALTER SHARE share_name TODO

    alter_streaming_table ::= ALTER STREAMING TABLE table_name TODO

    alter_table ::= ALTER TABLE table_name TODO

    alter_view ::= ALTER VIEW view_name TODO

    alter_volume ::= ALTER VOLUME volume_name grp_96

    tag_list ::= TAG object_name list_99

    create_statement ::= create_bloomfilter_index
           | create_catalog
           | create_connection
           | create_function
           | create_location
           | create_materialized_view
           | create_procedure
           | create_recipient
           | create_schema
           | create_share
           | create_streaming_table
           | create_table
           | create_view
           | create_volume

    create_bloomfilter_index ::= CREATE BLOOMFILTER INDEX ON opt_100 table_name FOR COLUMNS LPAREN TODO RPAREN opt_102

    create_catalog ::= CREATE CATALOG opt_103 catalog_name opt_105

    location_path ::= string

    comment ::= string

    create_connection ::= CREATE grp_106 opt_107 connection_name grp_108

    create_function ::= CREATE opt_111 opt_112 FUNCTION opt_113 function_name TODO

    create_location ::= CREATE EXTERNAL LOCATION opt_114 location_name URL string WITH LPAREN STORAGE CREDENTIAL credential_name RPAREN opt_115

    column_list_in_parentheses ::= LPAREN column_list RPAREN

    create_materialized_view ::= CREATE opt_116 MATERIALIZED VIEW opt_117 view_name TODO

    create_procedure ::= CREATE opt_118 PROCEDURE if_not_exists procedure_name TODO

    create_recipient ::= TODO

    create_schema ::= CREATE grp_119 opt_120 schema_name TODO

    create_share ::= CREATE opt_121 SHARE id_ opt_122

    true_false ::= TRUE
           | FALSE

    create_streaming_table ::= TODO

    create_table ::= create_table_using
           | create_table_like
           | create_table_clone
           | create_table_hive_format

    create_table_using ::= TODO

    create_table_like ::= TODO

    create_table_clone ::= TODO

    create_table_hive_format ::= TODO

    call ::= CALL procedure_name LPAREN opt_124 RPAREN

    argument_list ::= expr_list

    named_argument_list ::= id_ FATARROW expr list_126

    create_view ::= CREATE opt_127 opt_128 VIEW opt_129 view_name TODO

    create_volume ::= CREATE opt_130 VOLUME opt_131 volume_name opt_133 opt_134

    object_type_plural ::= DATABASES
           | ROLES
           | SCHEMAS
           | STREAMS
           | TABLES
           | TAGS
           | USERS
           | VIEWS

    drop_statement ::= drop_bloomfilter_index
           | drop_catalog
           | drop_connection
           | drop_credential
           | drop_database
           | drop_function
           | drop_location
           | drop_procedure
           | drop_provider
           | drop_recipient
           | drop_schema
           | drop_share
           | drop_table
           | drop_variable
           | drop_view
           | drop_volume

    drop_bloomfilter_index ::= DROP BLOOMFILTER INDEX ON opt_135 table_name opt_137

    drop_catalog ::= DROP CATALOG opt_138 catalog_name opt_139

    drop_connection ::= DROP CONNECTION opt_140 id_

    drop_credential ::= DROP opt_141 CREDENTIAL opt_142 credential_name

    drop_database ::= DROP DATABASE opt_143 id_ opt_144

    drop_function ::= DROP FUNCTION opt_145 object_name arg_types

    drop_location ::= DROP EXTERNAL LOCATION opt_146 location_name

    drop_procedure ::= DROP PROCEDURE opt_147 object_name arg_types

    drop_provider ::= DROP PROVIDER opt_148 provider_name

    drop_recipient ::= DROP RECIPIENT opt_149 recipient_name

    drop_schema ::= DROP SCHEMA opt_150 schema_name opt_151

    drop_share ::= DROP SHARE opt_152 share_name

    drop_table ::= DROP TABLE opt_153 object_name opt_154

    drop_variable ::= DROP TEMPORARY VARIABLE opt_155 variable_name

    drop_view ::= DROP opt_156 VIEW opt_157 view_name

    drop_volume ::= DROP VOLUME opt_158 volume_name

    cascade_restrict ::= CASCADE
           | RESTRICT

    arg_types ::= LR_BRACKET opt_159 RR_BRACKET

    use_schema ::= USE grp_160 schema_name

    add_archive ::= list_163

    add_file ::= ADD grp_164 list_165

    add_jar ::= ADD grp_166 list_167

    list_archive ::= LIST grp_168 list_169

    list_file ::= LIST grp_170 list_171

    list_jar ::= LIST grp_172 list_173

    get ::= GET string TO string

    put_into ::= PUT string INTO string opt_174

    remove ::= REMOVE string

    alter_group ::= ALTER GROUP principal grp_175 seq_176

    user_group ::= USER
           | GROUP

    principal_list ::= principal list_178

    create_group ::= CREATE GROUP principal opt_180

    deny ::= DENY ON TO principal

    drop_group ::= DROP GROUP principal

    grant ::= GRANT privilege_types ON securable_object TO principal

    privilege_types ::= ALL PRIVILEGES
           | privilege_type_list

    privilege_type_list ::= privilege_type list_182

    privilege_type ::= ACCESS
           | APPLY TAG
           | BROWSE
           | CREATE grp_183
           | EXECUTE opt_188
           | EXTERNAL USE grp_189
           | MANAGE opt_190
           | MODIFY opt_192
           | READ grp_193
           | REFRESH
           | SELECT
           | SET SHARE PERMISSION
           | USE grp_194
           | WRITE grp_195

    grant_share ::= GRANT SELECT ON SHARE share_name TO RECIPIENT recipient_name

    repair_privileges ::= MSCK REPAIR object PRIVILEGES

    schema_database ::= SCHEMA
           | DATABASE

    object ::= schema_database schema_name
           | FUNCTION function_name
           | TABLE table_name
           | VIEW view_name
           | ANONYMOUS FUNCTION
           | ANY FILE

    revoke ::= REVOKE privilege_types ON securable_object FROM principal

    revoke_share ::= REVOKE SELECT ON SHARE share_name FROM RECIPIENT recipient_name

    show_grants ::= SHOW GRANTS opt_196 ON securable_object

    securable_object ::= CATALOG opt_197
           | CONNECTION connection_name
           | CLEAN ROOM clean_room_name
           | EXTERNAL LOCATION location_name
           | EXTERNAL METADATA metadata_name
           | FUNCTION function_name
           | METASTORE
           | PROCEDURE procedure_name
           | SCHEMA schema_name
           | SHARE share_name
           | opt_198 CREDENTIAL credential_name
           | opt_199 table_name
           | MATERIALIZED VIEW view_name
           | VIEW view_name
           | VOLUME volume_name

    storage_service ::= STORAGE
           | SERVICE

    show_grants_on_share ::= SHOW GRANTS ON SHARE

    show_grants_to_recipient ::= SHOW GRANTS TO RECIPIENT recipient_name

    comment_clause ::= COMMENT EQ string

    inline_comment_clause ::= COMMENT string

    if_exists ::= IF EXISTS

    if_not_exists ::= IF NOT EXISTS

    or_replace ::= OR REPLACE

    describe ::= DESC
           | DESCRIBE

    describe_catalog ::= describe CATALOG opt_200 catalog_name

    describe_connection ::= describe CONNECTION opt_201 id_ credential_name

    describe_credential ::= DESCRIBE storage_service CREDENTIAL

    describe_database ::= describe DATABASE opt_202 schema_name

    describe_function ::= describe FUNCTION opt_203 function_name

    describe_location ::= DESCRIBE EXTERNAL LOCATION location_name

    describe_procedure ::= describe PROCEDURE opt_204 procedure_name

    describe_provider ::= describe PROVIDER provider_name

    describe_query ::= describe opt_205 query_statement

    describe_recipient ::= describe RECIPIENT recipient_name

    describe_schema ::= describe SCHEMA opt_206 schema_name

    describe_share ::= describe SHARE share_name

    describe_table ::= describe opt_207 opt_208 table_name opt_210 opt_212

    describe_volume ::= DESCRIBE VOLUME volume_name

    list ::= LIST string opt_214 opt_216

    show_all_in_share ::= SHOW ALL IN SHARE id_

    show_catalogs ::= SHOW CATALOGS like_pattern

    show_columns ::= SHOW COLUMNS in_from object_name in_from id_

    in_from ::= IN
           | FROM

    show_connections ::= SHOW CONNECTIONS

    show_create_table ::= SHOW CREATE TABLE object_name

    show_credentials ::= SHOW opt_217 CREDENTIALS

    show_databases ::= SHOW DATABASES opt_219 opt_220

    show_functions ::= SHOW opt_221 FUNCTIONS opt_223 opt_224 TODO

    function_kind ::= USER
           | SYSTEM
           | ALL

    show_groups ::= SHOW GROUPS opt_226 opt_227

    show_locations ::= SHOW EXTERNAL LOCATIONS

    show_partitions ::= SHOW PARTITIONS table_name opt_228

    show_procedures ::= SHOW PROCEDURES opt_230

    show_providers ::= SHOW PROVIDERS opt_231

    show_recipients ::= SHOW RECIPIENTS opt_232

    show_schemas ::= SHOW SCHEMAS opt_234 opt_235

    show_shares ::= SHOW SHARES opt_236

    show_shares_in_provider ::= SHOW SHARES IN PROVIDER provider_name opt_237

    show_table ::= SHOW TABLE EXTENDED opt_239 LIKE string opt_240

    show_tables ::= SHOW TABLES opt_242 opt_243

    show_tables_dropped ::= SHOW TABLES DROPPED opt_245 opt_247

    show_tblproperties ::= SHOW TBLPROPERTIES table_name TODO

    show_users ::= SHOW USERS opt_248

    show_views ::= SHOW VIEWS opt_250 opt_251

    show_volumes ::= SHOW VOLUMES opt_253 opt_254

    like_pattern ::= opt_255 string

    schema_name ::= opt_257 id_
           | id_clause

    id_clause ::= IDENTIFIER LPAREN string RPAREN TODO

    string ::= STRING

    id_ ::= ID
           | DOUBLE_QUOTE_BLANK
           | keyword
           | non_reserved_words
           | object_type_plural
           | data_type

    keyword ::= COMMENT
           | FUNCTION
           | IF
           | JOIN
           | KEY
           | LANGUAGE
           | ORDER
           | OUTER
           | RECURSIVE
           | ROLE
           | TAG
           | TEMP
           | TIMESTAMP
           | TYPE
           | USER
           | VALUE
           | VALUES

    non_reserved_words ::= COMMENT
           | TIMEZONE

    column_name ::= opt_259 id_

    column_list ::= column_name list_261

    object_name ::= id_ DOT id_
           | id_

    num ::= DECIMAL

    expr_list ::= expr list_263

    expr_list_in_parentheses ::= LPAREN expr_list RPAREN

    expr ::= expr LBRACKET expr RBRACKET
           | expr COLON expr
           | expr DOT grp_264
           | COLLATE string
           | case_expression
           | bracket_expression
           | grp_265 expr
           | expr grp_266 expr
           | expr grp_267 expr
           | expr comparison_operator expr
           | list_268 expr
           | expr AND expr
           | expr OR expr
           | cast_expr
           | expr COLON_COLON data_type
           | function_call
           | subquery
           | expr IS opt_269 NULL_
           | expr opt_270 IN LR_BRACKET grp_271 RR_BRACKET
           | expr opt_272 LIKE expr opt_274
           | expr opt_275 LIKE ANY LR_BRACKET expr list_277 RR_BRACKET opt_279
           | primitive_expression

    cast_expr ::= CAST LR_BRACKET expr AS data_type RR_BRACKET

    data_type_size ::= LR_BRACKET num RR_BRACKET

    data_type ::= grp_280
           | grp_281 opt_285
           | grp_286
           | BOOLEAN
           | DATE
           | INTERVAL TODO
           | TIMESTAMP opt_287
           | TIMESTAMP_NTZ opt_288
           | STRING_
           | BINARY opt_289
           | VARIANT
           | OBJECT
           | ARRAY
           | GEOGRAPHY
           | GEOMETRY
           | VOID_
           | STRUCT TODO
           | MAP TODO

    primitive_expression ::= DEFAULT
           | NULL_
           | id_ list_291
           | id_ DOT STAR
           | full_column_name
           | literal

    function_call ::= object_name LPAREN opt_292 RPAREN
           | object_name LPAREN param_assoc_list RPAREN

    param_assoc_list ::= param_assoc list_294

    param_assoc ::= id_ ASSOC expr

    literal ::= STRING
           | opt_295 DECIMAL
           | opt_296 grp_297
           | true_false
           | NULL_

    sign ::= PLUS
           | MINUS

    full_column_name ::= opt_298 DOT opt_299 DOT id_
           | opt_300 DOT id_
           | id_

    bracket_expression ::= LR_BRACKET expr_list RR_BRACKET
           | LR_BRACKET subquery RR_BRACKET

    case_expression ::= CASE expr list_301 opt_303 END
           | CASE list_304 opt_306 END

    switch_search_condition_section ::= WHEN expr THEN expr

    switch_section ::= WHEN expr THEN expr

    query_statement ::= opt_307 subquery list_308 opt_311 opt_312 opt_313 opt_314

    with_expression ::= WITH opt_315 common_table_expression list_317

    common_table_expression ::= id_ opt_318 opt_319 opt_320 LPAREN grp_321 RPAREN

    recursion_limit ::= MAX RECURSION LEVEL

    recursive_query ::= query_statement UNION ALL query_statement

    subquery ::= select_statement
           | values_statement
           | LPAREN query_statement RPAREN
           | TABLE opt_323
           | FROM table_reference list_325

    set_operator ::= grp_326 grp_327 subquery

    order_by_clause ::= ORDER BY order_by_item list_329

    order_by_item ::= ALL opt_330 opt_331
           | expr opt_332 opt_333

    sort_direction ::= ASC
           | DESC

    nulls_sort_order ::= NULLS grp_334

    distribute_by_clause ::= DISTRIBUTE BY expr_list

    sort_by_clause ::= SORT BY sort_by_item list_336

    sort_by_item ::= expr opt_337 opt_338

    cluster_by_clause ::= CLUSTER BY expr_list

    window_clause ::= WINDOW window_name AS window_spec list_340

    window_name ::= id_

    window_spec ::= TODO

    limit_clause ::= LIMIT grp_341

    offset_clause ::= OFFSET expr

    select_statement ::= select_clause FROM table_reference opt_342 opt_343 opt_344 opt_345 opt_346

    select_clause ::= SELECT opt_347 opt_349 select_item list_351

    hints ::= TODO

    select_item ::= named_expression
           | star_clause

    named_expression ::= expr opt_352

    star_clause ::= opt_353 STAR opt_354

    except_clause ::= EXCEPT column_list_in_parentheses

    table_reference ::= table_name opt_355 opt_356
           | STREAM table_name_with_optional_parentheses opt_357
           | view_name opt_358
           | table_reference join_clause
           | table_reference pivot_clause
           | table_reference unpivot_clause
           | opt_360 table_valued_function opt_361
           | values_statement
           | opt_362 LPAREN query_statement RPAREN opt_363 opt_364

    join_clause ::= opt_365 JOIN table_reference ON expr
           | NATURAL join_type JOIN table_reference USING column_list_in_parentheses
           | CROSS JOIN table_reference

    join_type ::= INNER
           | grp_366 opt_367
           | opt_368 grp_369

    pivot_clause ::= PIVOT LPAREN expr opt_370 list_373 RPAREN FOR grp_374 IN LPAREN expr_list_with_alias RPAREN

    expr_list_with_alias ::= expr opt_375
           | expr_list_in_parentheses opt_376 list_379

    unpivot_clause ::= UNPIVOT opt_381 grp_382 LPAREN column_name FOR column_name IN LPAREN column_list_with_aliases RPAREN RPAREN

    single_value ::= LPAREN column_name FOR column_name IN LPAREN column_list_with_aliases RPAREN RPAREN

    multi_value ::= LPAREN column_list_in_parentheses FOR column_name IN LPAREN column_list_in_parentheses opt_383 list_386 RPAREN RPAREN

    column_list_with_aliases ::= column_name opt_387 seq_389

    include_exclude ::= INCLUDE
           | EXCLUDE

    table_valued_function ::= function_name LPAREN expr_list RPAREN

    table_name_with_optional_parentheses ::= table_name
           | LPAREN table_name RPAREN

    tablesample_clause ::= TABLESAMPLE LPAREN grp_390 RPAREN opt_392

    table_alias ::= opt_393 id_ opt_394

    lateral_view_clause ::= LATERAL VIEW opt_395 function_name LPAREN expr_list RPAREN opt_396 AS column_list

    table_identifier ::= alias

    where_clause ::= WHERE expr

    group_by_clause ::= GROUP BY grp_397

    group_by_item_list ::= group_by_item list_402

    group_by_item ::= grp_403 LPAREN grouping_set list_405 RPAREN

    grouping_set ::= expr
           | LPAREN opt_406 RPAREN

    having_clause ::= HAVING expr

    qualify_clause ::= QUALIFY expr

    values_statement ::= VALUES values_item list_408 opt_409
           | SELECT expr_list opt_410

    values_item ::= expr
           | expr_list_in_parentheses

    sql_pipeline ::= TODO

    explain_statement ::= EXPLAIN opt_412 statement

    as_alias ::= opt_413 alias

    alias ::= id_

    comparison_operator ::= EQ
           | GT
           | LT
           | LE
           | GE
           | LTGT
           | NE

    opt_1 ::= statement_list | $empty

    seq_2 ::= SEMI statement

    list_3 ::= $empty | list_3 seq_2

    opt_4 ::= SEMI | $empty

    grp_5 ::= OVERWRITE | INTO

    opt_6 ::= as_alias | $empty

    seq_7 ::= COMMA column_name EQ expr

    list_8 ::= $empty | list_8 seq_7

    seq_9 ::= FROM TODO

    opt_10 ::= seq_9 | $empty

    seq_11 ::= WHERE expr

    opt_12 ::= seq_11 | $empty

    opt_13 ::= as_alias | $empty

    seq_14 ::= WHERE expr

    opt_15 ::= seq_14 | $empty

    grp_17 ::= SCHEMA | DATABASE

    grp_16 ::= CATALOG catalog_name | COLUMN relation_name DOT column_name | CONNECTION connection_name | PROVIDER provider_name | grp_17 schema_name | SHARE share_name | TABLE relation_name | VOLUME volume_name

    opt_18 ::= or_replace | $empty

    opt_19 ::= VARIABLE | $empty

    seq_20 ::= COMMA variable_name

    list_21 ::= $empty | list_21 seq_20

    opt_22 ::= data_type | $empty

    grp_24 ::= DEFAULT | EQ

    grp_23 ::= grp_24 expr

    opt_25 ::= grp_23 | $empty

    opt_26 ::= MSCK | $empty

    grp_29 ::= ADD | DROP | SYNC

    grp_28 ::= grp_29 PARTITIONS

    opt_30 ::= grp_28 | $empty

    grp_27 ::= opt_30 | SYNC METADATA

    seq_32 ::= RESOLVE DBFS LOCATION

    opt_33 ::= seq_32 | $empty

    seq_34 ::= RESOLVE DBFS LOCATION

    opt_35 ::= seq_34 | $empty

    grp_31 ::= CATALOG catalog_name | SCHEMA schema_name opt_33 | TABLE table_name opt_35

    opt_37 ::= STREAMING | $empty

    grp_36 ::= MATERIALIZED VIEW | opt_37 TABLE

    grp_38 ::= FULL | SYNC | ASYNC

    opt_39 ::= grp_38 | $empty

    grp_41 ::= SCHEMA | DATABASE

    grp_40 ::= CATALOG catalog_name | COLUMN relation_name DOT column_name | grp_41 schema_name | TABLE relation_name | VIEW relation_name | VOLUME volume_name

    seq_42 ::= EQ id_

    opt_43 ::= seq_42 | $empty

    seq_45 ::= AS EXTERNAL

    opt_46 ::= seq_45 | $empty

    seq_47 ::= AS EXTERNAL

    opt_48 ::= seq_47 | $empty

    grp_44 ::= SCHEMA schema_name opt_46 FROM schema_name | TABLE table_name opt_48 FROM table_name

    seq_49 ::= SET OWNER principal

    opt_50 ::= seq_49 | $empty

    seq_51 ::= DRY RUN

    opt_52 ::= seq_51 | $empty

    grp_53 ::= MATERIALIZED VIEW | TABLE

    grp_54 ::= relation_name | WITH ID relation_id

    grp_56 ::= SCHEMA | DATABASE

    grp_55 ::= CATALOG catalog_name | COLUMN relation_name DOT column_name | grp_56 schema_name | TABLE relation_name | VIEW relation_name | VOLUME volume_name

    seq_57 ::= INTO variable_name_list

    opt_58 ::= seq_57 | $empty

    opt_59 ::= USING | $empty

    seq_60 ::= COMMA variable_name

    list_61 ::= $empty | list_61 seq_60

    opt_62 ::= id_ | $empty

    grp_63 ::= VAR | VARIABLE

    grp_64 ::= expr | DEFAULT

    grp_65 ::= VAR | VARIABLE

    grp_66 ::= USE | SET

    grp_67 ::= catalog_name | string

    opt_68 ::= grp_67 | $empty

    seq_69 ::= COMMA id_

    list_70 ::= $empty | list_70 seq_69

    seq_71 ::= COMMA expr

    list_72 ::= $empty | list_72 seq_71

    opt_73 ::= partition_clause | $empty

    grp_74 ::= EQ partition_value | LIKE string

    opt_75 ::= catalog_name | $empty

    opt_76 ::= SET | $empty

    grp_77 ::= ENABLE | DISABLE | INHERIT

    opt_79 ::= SET | $empty

    grp_78 ::= opt_79 OWNER TO principal | RENAME TO connection_name | OPTIONS LPAREN option_list RPAREN

    opt_81 ::= SET | $empty

    grp_80 ::= RENAME TO credential_name | opt_81 OWNER TO principal

    seq_82 ::= COMMA data_type

    list_83 ::= $empty | list_83 seq_82

    opt_85 ::= SET | $empty

    grp_84 ::= RENAME TO provider_name | opt_85 OWNER TO principal

    opt_87 ::= SET | $empty

    grp_86 ::= RENAME TO recipient_name | opt_87 OWNER TO principal | SET PROPERTIES LPAREN property_key_value_list RPAREN | UNSET PROPERTIES LPAREN property_key_list RPAREN

    seq_88 ::= COMMA property_key

    list_89 ::= $empty | list_89 seq_88

    seq_90 ::= COMMA property_key_value

    list_91 ::= $empty | list_91 seq_90

    opt_92 ::= EQ | $empty

    seq_93 ::= DOT id_

    list_94 ::= $empty | list_94 seq_93

    grp_95 ::= DATABASE | SCHEMA

    opt_97 ::= SET | $empty

    grp_96 ::= opt_97 OWNER TO principal | SET TAGS TODO | UNSET TAGS TODO

    seq_98 ::= COMMA object_name

    list_99 ::= $empty | list_99 seq_98

    opt_100 ::= TABLE | $empty

    seq_101 ::= OPTIONS TODO

    opt_102 ::= seq_101 | $empty

    opt_103 ::= if_not_exists | $empty

    grp_104 ::= USING SHARE provider_name DOT share_name | MANAGED LOCATION location_path | COMMENT comment | DEFAULT COLLATION default_collation_name | OPTIONS LPAREN TODO RPAREN

    opt_105 ::= grp_104 | $empty

    grp_106 ::= SERVER | CONNECTION

    opt_107 ::= if_not_exists | $empty

    grp_109 ::= DATABRICKS | HTTP | MYSQL | POSTGRESQL | REDSHIFT | SNOWFLAKE | SQLDW | SQLSERVER

    opt_110 ::= inline_comment_clause | $empty

    grp_108 ::= TYPE grp_109 OPTIONS LPAREN TODO RPAREN opt_110

    opt_111 ::= or_replace | $empty

    opt_112 ::= TEMPORARY | $empty

    opt_113 ::= if_not_exists | $empty

    opt_114 ::= if_not_exists | $empty

    opt_115 ::= inline_comment_clause | $empty

    opt_116 ::= or_replace | $empty

    opt_117 ::= if_not_exists | $empty

    opt_118 ::= or_replace | $empty

    grp_119 ::= DATABASE | SCHEMA

    opt_120 ::= if_not_exists | $empty

    opt_121 ::= or_replace | $empty

    opt_122 ::= comment_clause | $empty

    grp_123 ::= argument_list | named_argument_list

    opt_124 ::= grp_123 | $empty

    seq_125 ::= COMMA id_ FATARROW expr

    list_126 ::= $empty | list_126 seq_125

    opt_127 ::= or_replace | $empty

    opt_128 ::= TEMPORARY | $empty

    opt_129 ::= if_not_exists | $empty

    opt_130 ::= EXTERNAL | $empty

    opt_131 ::= if_not_exists | $empty

    seq_132 ::= LOCATION location_path

    opt_133 ::= seq_132 | $empty

    opt_134 ::= inline_comment_clause | $empty

    opt_135 ::= TABLE | $empty

    seq_136 ::= FOR COLUMNS column_list_in_parentheses

    opt_137 ::= seq_136 | $empty

    opt_138 ::= if_exists | $empty

    opt_139 ::= cascade_restrict | $empty

    opt_140 ::= if_exists | $empty

    opt_141 ::= storage_service | $empty

    opt_142 ::= if_exists | $empty

    opt_143 ::= if_exists | $empty

    opt_144 ::= cascade_restrict | $empty

    opt_145 ::= if_exists | $empty

    opt_146 ::= if_exists | $empty

    opt_147 ::= if_exists | $empty

    opt_148 ::= if_exists | $empty

    opt_149 ::= if_exists | $empty

    opt_150 ::= if_exists | $empty

    opt_151 ::= cascade_restrict | $empty

    opt_152 ::= if_exists | $empty

    opt_153 ::= if_exists | $empty

    opt_154 ::= cascade_restrict | $empty

    opt_155 ::= if_exists | $empty

    opt_156 ::= MATERIALIZED | $empty

    opt_157 ::= if_exists | $empty

    opt_158 ::= if_exists | $empty

    opt_159 ::= data_type_list | $empty

    grp_160 ::= DATABASE | SCHEMA

    grp_162 ::= ARCHIVE | ARCHIVES

    grp_161 ::= ADD grp_162 file_name

    list_163 ::= grp_161 | list_163 grp_161

    grp_164 ::= FILE | FILES

    list_165 ::= resource_name | list_165 resource_name

    grp_166 ::= JAR | JARS

    list_167 ::= file_name | list_167 file_name

    grp_168 ::= ARCHIVE | ARCHIVES

    list_169 ::= $empty | list_169 file_name

    grp_170 ::= FILE | FILES

    list_171 ::= $empty | list_171 resource_name

    grp_172 ::= JAR | JARS

    list_173 ::= $empty | list_173 file_name

    opt_174 ::= OVERWRITE | $empty

    grp_175 ::= ADD | DROP

    seq_176 ::= user_group principal_list

    seq_177 ::= COMMA principal

    list_178 ::= $empty | list_178 seq_177

    seq_179 ::= WITH user_group principal_list

    opt_180 ::= seq_179 | $empty

    seq_181 ::= COMMA privilege_type

    list_182 ::= $empty | list_182 seq_181

    grp_184 ::= LOCATION | METADATA | TABLE | VOLUME

    grp_185 ::= CATALOG | SECURABLE

    opt_186 ::= VERSION | $empty

    grp_183 ::= CATALOG | CLEAN ROOM | CONNECTION | EXTERNAL grp_184 | FOREIGN grp_185 | FUNCTION | MODEL opt_186 | MANAGED STORAGE | PROVIDER | RECIPIENT | SCHEMA | SHARE | storage_service CREDENTIAL | TABLE | MATERIALIZED VIEW | VOLUME

    seq_187 ::= CLEAN ROOM TASK

    opt_188 ::= seq_187 | $empty

    grp_189 ::= LOCATION | SCHEMA

    opt_190 ::= ALLOWLIST | $empty

    seq_191 ::= CLEAN ROOM

    opt_192 ::= seq_191 | $empty

    grp_193 ::= FILES | VOLUME

    grp_194 ::= CATALOG | CONNECTION | SCHEMA | MARKETPLACE ASSETS | PROVIDER | RECIPIENT | SHARE

    grp_195 ::= FILES | VOLUME

    opt_196 ::= principal | $empty

    opt_197 ::= catalog_name | $empty

    opt_198 ::= storage_service | $empty

    opt_199 ::= TABLE | $empty

    opt_200 ::= EXTENDED | $empty

    opt_201 ::= EXTENDED | $empty

    opt_202 ::= EXTENDED | $empty

    opt_203 ::= EXTENDED | $empty

    opt_204 ::= EXTENDED | $empty

    opt_205 ::= QUERY | $empty

    opt_206 ::= EXTENDED | $empty

    opt_207 ::= TABLE | $empty

    opt_208 ::= EXTENDED | $empty

    grp_209 ::= partition_clause | column_name

    opt_210 ::= grp_209 | $empty

    seq_211 ::= AS JSON

    opt_212 ::= seq_211 | $empty

    seq_213 ::= WITH LPAREN CREDENTIAL credential_name RPAREN

    opt_214 ::= seq_213 | $empty

    seq_215 ::= LIMIT num

    opt_216 ::= seq_215 | $empty

    opt_217 ::= storage_service | $empty

    seq_218 ::= in_from catalog_name

    opt_219 ::= seq_218 | $empty

    opt_220 ::= like_pattern | $empty

    opt_221 ::= function_kind | $empty

    seq_222 ::= in_from schema_name

    opt_223 ::= seq_222 | $empty

    opt_224 ::= like_pattern | $empty

    seq_225 ::= WITH user_group principal

    opt_226 ::= seq_225 | $empty

    opt_227 ::= like_pattern | $empty

    opt_228 ::= partition_clause | $empty

    seq_229 ::= in_from schema_name

    opt_230 ::= seq_229 | $empty

    opt_231 ::= like_pattern | $empty

    opt_232 ::= like_pattern | $empty

    seq_233 ::= in_from catalog_name

    opt_234 ::= seq_233 | $empty

    opt_235 ::= like_pattern | $empty

    opt_236 ::= like_pattern | $empty

    opt_237 ::= like_pattern | $empty

    seq_238 ::= in_from schema_name

    opt_239 ::= seq_238 | $empty

    opt_240 ::= partition_clause | $empty

    seq_241 ::= in_from schema_name

    opt_242 ::= seq_241 | $empty

    opt_243 ::= like_pattern | $empty

    seq_244 ::= in_from schema_name

    opt_245 ::= seq_244 | $empty

    seq_246 ::= LIMIT num

    opt_247 ::= seq_246 | $empty

    opt_248 ::= like_pattern | $empty

    seq_249 ::= in_from schema_name

    opt_250 ::= seq_249 | $empty

    opt_251 ::= like_pattern | $empty

    seq_252 ::= in_from schema_name

    opt_253 ::= seq_252 | $empty

    opt_254 ::= like_pattern | $empty

    opt_255 ::= LIKE | $empty

    seq_256 ::= catalog_name DOT

    opt_257 ::= seq_256 | $empty

    seq_258 ::= id_ DOT

    opt_259 ::= seq_258 | $empty

    seq_260 ::= COMMA column_name

    list_261 ::= $empty | list_261 seq_260

    seq_262 ::= COMMA expr

    list_263 ::= $empty | list_263 seq_262

    grp_264 ::= VALUE | expr

    grp_265 ::= PLUS | MINUS

    grp_266 ::= STAR | DIVIDE | MODULE

    grp_267 ::= PLUS | MINUS | PIPE_PIPE

    list_268 ::= NOT | list_268 NOT

    opt_269 ::= NOT | $empty

    opt_270 ::= NOT | $empty

    grp_271 ::= subquery | expr_list

    opt_272 ::= NOT | $empty

    seq_273 ::= ESCAPE expr

    opt_274 ::= seq_273 | $empty

    opt_275 ::= NOT | $empty

    seq_276 ::= COMMA expr

    list_277 ::= $empty | list_277 seq_276

    seq_278 ::= ESCAPE expr

    opt_279 ::= seq_278 | $empty

    grp_280 ::= INT | SMALLINT | TINYINT | BIGINT

    grp_281 ::= NUMERIC | DECIMAL_ | DEC

    seq_282 ::= COMMA num

    opt_283 ::= seq_282 | $empty

    seq_284 ::= LR_BRACKET num opt_283 RR_BRACKET

    opt_285 ::= seq_284 | $empty

    grp_286 ::= FLOAT_ | DOUBLE | REAL_

    opt_287 ::= data_type_size | $empty

    opt_288 ::= data_type_size | $empty

    opt_289 ::= data_type_size | $empty

    seq_290 ::= DOT id_

    list_291 ::= $empty | list_291 seq_290

    opt_292 ::= expr_list | $empty

    seq_293 ::= COMMA param_assoc

    list_294 ::= $empty | list_294 seq_293

    opt_295 ::= sign | $empty

    opt_296 ::= sign | $empty

    grp_297 ::= REAL | FLOAT

    opt_298 ::= id_ | $empty

    opt_299 ::= id_ | $empty

    opt_300 ::= id_ | $empty

    list_301 ::= switch_section | list_301 switch_section

    seq_302 ::= ELSE expr

    opt_303 ::= seq_302 | $empty

    list_304 ::= switch_search_condition_section | list_304 switch_search_condition_section

    seq_305 ::= ELSE expr

    opt_306 ::= seq_305 | $empty

    opt_307 ::= with_expression | $empty

    list_308 ::= $empty | list_308 set_operator

    opt_310 ::= sort_by_clause | $empty

    grp_309 ::= order_by_clause | distribute_by_clause opt_310 | cluster_by_clause

    opt_311 ::= grp_309 | $empty

    opt_312 ::= window_clause | $empty

    opt_313 ::= limit_clause | $empty

    opt_314 ::= offset_clause | $empty

    opt_315 ::= RECURSIVE | $empty

    seq_316 ::= COMMA common_table_expression

    list_317 ::= $empty | list_317 seq_316

    opt_318 ::= column_list_in_parentheses | $empty

    opt_319 ::= recursion_limit | $empty

    opt_320 ::= AS | $empty

    grp_321 ::= query_statement | recursive_query

    grp_322 ::= table_name | view_name

    opt_323 ::= grp_322 | $empty

    seq_324 ::= COMMA table_reference

    list_325 ::= $empty | list_325 seq_324

    grp_326 ::= UNION | INTERCEPT | EXCEPT

    grp_327 ::= ALL | DISTINCT

    seq_328 ::= COMMA order_by_item

    list_329 ::= $empty | list_329 seq_328

    opt_330 ::= sort_direction | $empty

    opt_331 ::= nulls_sort_order | $empty

    opt_332 ::= sort_direction | $empty

    opt_333 ::= nulls_sort_order | $empty

    grp_334 ::= FIRST | LAST

    seq_335 ::= COMMA sort_by_item

    list_336 ::= $empty | list_336 seq_335

    opt_337 ::= sort_direction | $empty

    opt_338 ::= nulls_sort_order | $empty

    seq_339 ::= COMMA window_name AS window_spec

    list_340 ::= $empty | list_340 seq_339

    grp_341 ::= ALL | expr

    opt_342 ::= lateral_view_clause | $empty

    opt_343 ::= where_clause | $empty

    opt_344 ::= group_by_clause | $empty

    opt_345 ::= having_clause | $empty

    opt_346 ::= qualify_clause | $empty

    opt_347 ::= hints | $empty

    grp_348 ::= ALL | DISTINCT

    opt_349 ::= grp_348 | $empty

    seq_350 ::= COMMA select_item

    list_351 ::= $empty | list_351 seq_350

    opt_352 ::= as_alias | $empty

    opt_353 ::= id_ | $empty

    opt_354 ::= except_clause | $empty

    opt_355 ::= tablesample_clause | $empty

    opt_356 ::= table_alias | $empty

    opt_357 ::= table_alias | $empty

    opt_358 ::= table_alias | $empty

    grp_359 ::= STREAM | LATERAL

    opt_360 ::= grp_359 | $empty

    opt_361 ::= table_alias | $empty

    opt_362 ::= LATERAL | $empty

    opt_363 ::= tablesample_clause | $empty

    opt_364 ::= table_alias | $empty

    opt_365 ::= join_type | $empty

    grp_366 ::= LEFT | RIGHT | FULL

    opt_367 ::= OUTER | $empty

    opt_368 ::= LEFT | $empty

    grp_369 ::= SEMI | ANTI

    opt_370 ::= as_alias | $empty

    opt_371 ::= as_alias | $empty

    seq_372 ::= COMMA expr opt_371

    list_373 ::= $empty | list_373 seq_372

    grp_374 ::= column_name | column_list

    opt_375 ::= as_alias | $empty

    opt_376 ::= as_alias | $empty

    opt_377 ::= as_alias | $empty

    seq_378 ::= COMMA expr_list_in_parentheses opt_377

    list_379 ::= $empty | list_379 seq_378

    seq_380 ::= include_exclude NULLS

    opt_381 ::= seq_380 | $empty

    grp_382 ::= single_value | multi_value

    opt_383 ::= alias | $empty

    opt_384 ::= alias | $empty

    seq_385 ::= column_list_in_parentheses opt_384

    list_386 ::= $empty | list_386 seq_385

    opt_387 ::= alias | $empty

    opt_388 ::= alias | $empty

    seq_389 ::= COMMA column_name opt_388

    grp_390 ::= num PERCENT | num ROWS | BUCKET num OUT OF num

    seq_391 ::= REPEATABLE LPAREN num RPAREN

    opt_392 ::= seq_391 | $empty

    opt_393 ::= AS | $empty

    opt_394 ::= column_list_in_parentheses | $empty

    opt_395 ::= OUTER | $empty

    opt_396 ::= table_identifier | $empty

    grp_399 ::= ROLLUP | CUBE

    grp_398 ::= WITH grp_399

    opt_400 ::= grp_398 | $empty

    grp_397 ::= ALL | expr_list opt_400 | group_by_item_list

    seq_401 ::= COMMA group_by_item

    list_402 ::= $empty | list_402 seq_401

    grp_403 ::= expr | ROLLUP | CUBE | GROUPING SETS

    seq_404 ::= COMMA grouping_set

    list_405 ::= $empty | list_405 seq_404

    opt_406 ::= expr_list | $empty

    seq_407 ::= COMMA values_item

    list_408 ::= $empty | list_408 seq_407

    opt_409 ::= table_alias | $empty

    opt_410 ::= table_alias | $empty

    grp_411 ::= EXTENDED | CODEGEN | COST | FORMATTED

    opt_412 ::= grp_411 | $empty

    opt_413 ::= AS | $empty

%End
