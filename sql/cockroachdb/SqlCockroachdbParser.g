-- AUTO-GENERATED from antlr/grammars-v4 sql/cockroachdb by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=SqlCockroachdbParser
%options package=lpg.grammars.sql.cockroachdb
%options template=dtParserTemplateF.gi
%options import_terminals=SqlCockroachdbLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    cockroachdb_file
%End

%Rules
    cockroachdb_file ::= opt_1

    stmt_list ::= stmt list_3 opt_4

    stmt ::= stmt_without_legacy_transaction
           | legacy_transaction_stmt

    stmt_without_legacy_transaction ::= preparable_stmt
           | analyze_stmt
           | call_stmt
           | copy_stmt
           | comment_stmt
           | execute_stmt
           | deallocate_stmt
           | discard_stmt
           | do_stmt
           | grant_stmt
           | prepare_stmt
           | revoke_stmt
           | savepoint_stmt
           | reassign_owned_by_stmt
           | drop_owned_by_stmt
           | release_stmt
           | refresh_stmt
           | nonpreparable_set_stmt
           | transaction_stmt
           | close_cursor_stmt
           | declare_cursor_stmt
           | fetch_cursor_stmt
           | move_cursor_stmt
           | unlisten_stmt
           | show_commit_timestamp_stmt

    legacy_transaction_stmt ::= legacy_begin_stmt
           | legacy_end_stmt

    preparable_stmt ::= alter_stmt
           | backup_stmt
           | cancel_stmt
           | create_stmt
           | check_stmt
           | delete_stmt
           | drop_stmt
           | explain_stmt
           | import_stmt
           | insert_stmt
           | inspect_stmt
           | pause_stmt
           | reset_stmt
           | restore_stmt
           | resume_stmt
           | export_stmt
           | scrub_stmt
           | select_stmt
           | preparable_set_stmt
           | show_stmt
           | truncate_stmt
           | update_stmt
           | upsert_stmt

    analyze_stmt ::= grp_5 analyze_target

    analyze_target ::= table_name

    call_stmt ::= CALL func_application

    func_application ::= func_application_name LPAREN grp_6 RPAREN

    opt_sort_clause_no_index ::= opt_8

    sort_clause_no_index ::= ORDER BY sortby_no_index_list

    sortby_no_index_list ::= sortby list_11

    sortby ::= a_expr opt_12 opt_13

    opt_asc_desc ::= ASC
           | DESC

    opt_nulls_order ::= NULLS grp_14

    sortby_index ::= grp_15 opt_16

    copy_stmt ::= COPY grp_17

    opt_column_list ::= LPAREN name_list RPAREN

    opt_where_clause ::= where_clause

    where_clause ::= WHERE a_expr

    opt_with_copy_options ::= opt_24 grp_25

    opt_with ::= WITH

    copy_options_list ::= list_26

    copy_options ::= grp_27 string_or_placeholder
           | BINARY
           | CSV
           | HEADER
           | grp_28 sconst

    string_or_placeholder ::= non_reserved_word_or_sconst
           | PLACEHOLDER

    copy_generic_options_list ::= copy_generic_options list_30

    copy_generic_options ::= grp_31 string_or_placeholder
           | FORMAT grp_32
           | HEADER opt_34
           | grp_35 sconst

    copy_to_stmt ::= delete_stmt
           | insert_stmt
           | select_stmt
           | update_stmt
           | upsert_stmt

    comment_stmt ::= COMMENT ON grp_36 IS comment_text

    column_path ::= name
           | prefixed_column_path

    prefixed_column_path ::= db_object_name_component DOT unrestricted_name DOT

    comment_text ::= sconst
           | NULL_

    execute_stmt ::= EXECUTE table_alias_name opt_37

    table_alias_name ::= name

    execute_param_clause ::= LPAREN expr_list RPAREN

    deallocate_stmt ::= DEALLOCATE opt_38 grp_39

    discard_stmt ::= DISCARD grp_40

    do_stmt ::= DO do_stmt_opt_list

    do_stmt_opt_list ::= list_41

    do_stmt_opt_item ::= sconst
           | LANGUAGE non_reserved_word_or_sconst

    non_reserved_word_or_sconst ::= non_reserved_word
           | sconst

    grant_stmt ::= GRANT grp_42

    privileges ::= ALL opt_50
           | privilege_list

    opt_privilege_clause ::= PRIVILEGES

    grant_targets ::= identifier_
           | col_name_keyword
           | unreserved_keyword
           | complex_table_pattern
           | grp_51 table_pattern_list
           | grp_52 name_list
           | grp_53 function_with_paramtypes_list

    table_pattern ::= simple_db_object_name
           | complex_table_pattern

    table_pattern_list ::= table_pattern list_55

    name_list ::= name list_57

    function_with_paramtypes_list ::= function_with_paramtypes list_59

    function_with_paramtypes ::= db_object_name opt_60

    func_params ::= LPAREN opt_61 RPAREN

    func_params_list ::= routine_param list_63

    routine_param ::= grp_64 routine_param_type

    routine_param_class ::= IN opt_69
           | OUT
           | INOUT

    routine_param_type ::= typename

    typename ::= simple_typename opt_71

    simple_typename ::= general_type_name
           | AT iconst
           | complex_type_name
           | const_typename
           | interval_type

    general_type_name ::= type_function_name_no_crdb_extra

    type_function_name_no_crdb_extra ::= identifier_
           | unreserved_keyword
           | type_func_name_no_crdb_extra_keyword

    type_func_name_no_crdb_extra_keyword ::= AUTHORIZATION
           | COLLATION
           | CROSS
           | FULL
           | INNER
           | ILIKE
           | IS
           | ISNULL
           | JOIN
           | LEFT
           | LIKE
           | NATURAL
           | NONE
           | NOTNULL
           | OUTER
           | OVERLAPS
           | RIGHT
           | SIMILAR

    complex_type_name ::= general_type_name DOT unrestricted_name opt_73

    const_typename ::= numeric
           | bit_without_length
           | bit_with_length
           | character_without_length
           | character_with_length
           | const_datetime
           | const_geo
           | const_vector

    numeric ::= INT_
           | INTEGER
           | SMALLINT
           | BIGINT
           | REAL
           | FLOAT opt_74
           | DOUBLE PRECISION
           | grp_75 opt_76
           | BOOLEAN

    opt_float ::= iconst_in_parentheses

    opt_numeric_modifiers ::= LPAREN iconst opt_78 RPAREN

    bit_without_length ::= BIT opt_79
           | VARBIT

    bit_with_length ::= grp_80 iconst_in_parentheses

    opt_varying ::= VARYING

    character_without_length ::= character_base

    character_base ::= char_aliases opt_82
           | VARCHAR
           | STRING

    char_aliases ::= CHAR
           | CHARACTER

    character_with_length ::= character_base iconst_in_parentheses

    const_datetime ::= DATE
           | grp_83 opt_84 opt_85
           | grp_86 opt_87

    opt_timezone ::= grp_88 TIME ZONE

    iconst_in_parentheses ::= LPAREN iconst RPAREN

    const_geo ::= grp_89 opt_93
           | BOX2D

    geo_shape_type ::= POINT
           | POINTM
           | POINTZ
           | POINTZM
           | LINESTRING
           | LINESTRINGM
           | LINESTRINGZ
           | LINESTRINGZM
           | POLYGON
           | POLYGONM
           | POLYGONZ
           | POLYGONZM
           | MULTIPOINT
           | MULTIPOINTM
           | MULTIPOINTZ
           | MULTIPOINTZM
           | MULTILINESTRING
           | MULTILINESTRINGM
           | MULTILINESTRINGZ
           | MULTILINESTRINGZM
           | MULTIPOLYGON
           | MULTIPOLYGONM
           | MULTIPOLYGONZ
           | MULTIPOLYGONZM
           | GEOMETRYCOLLECTION
           | GEOMETRYCOLLECTIONM
           | GEOMETRYCOLLECTIONZ
           | GEOMETRYCOLLECTIONZM
           | GEOMETRY
           | GEOMETRYM
           | GEOMETRYZ
           | GEOMETRYZM

    signed_iconst ::= iconst
           | only_signed_iconst

    only_signed_iconst ::= grp_94 iconst

    only_signed_fconst ::= grp_95 fconst

    signed_iconst64 ::= signed_iconst

    const_vector ::= VECTOR opt_96

    interval_type ::= INTERVAL opt_98

    interval_qualifier ::= YEAR opt_100
           | MONTH
           | DAY opt_103
           | HOUR opt_106
           | MINUTE opt_108
           | interval_second

    interval_second ::= SECOND opt_109

    opt_array_bounds ::= LBRACKET RBRACKET

    param_name ::= type_function_name

    type_function_name ::= identifier_
           | unreserved_keyword
           | type_func_name_keyword

    complex_table_pattern ::= complex_db_object_name
           | opt_113 STAR

    target_types ::= type_name_list

    type_name_list ::= type_name list_115

    schema_name_list ::= qualifiable_schema_name list_117

    role_spec_list ::= role_spec list_119

    role_spec ::= identifier_
           | unreserved_keyword
           | CURRENT_USER
           | SESSION_USER

    opt_with_grant_option ::= WITH GRANT OPTION

    privilege_list ::= privilege list_121

    privilege ::= name
           | CREATE
           | GRANT
           | SELECT

    prepare_stmt ::= PREPARE table_alias_name opt_122 AS preparable_stmt

    prep_type_clause ::= LPAREN type_list RPAREN

    type_list ::= typename list_124

    revoke_stmt ::= REVOKE grp_125 FROM role_spec_list

    savepoint_stmt ::= SAVEPOINT name

    reassign_owned_by_stmt ::= REASSIGN OWNED BY role_spec_list TO role_spec

    drop_owned_by_stmt ::= DROP OWNED BY role_spec_list opt_drop_behavior

    opt_drop_behavior ::= CASCADE
           | RESTRICT

    release_stmt ::= RELEASE savepoint_name

    refresh_stmt ::= REFRESH MATERIALIZED VIEW opt_138 view_name opt_139 opt_140

    opt_concurrently ::= CONCURRENTLY

    opt_as_of_clause ::= as_of_clause

    as_of_clause ::= AS OF SYSTEM TIME a_expr

    opt_clear_data ::= WITH opt_141 DATA

    nonpreparable_set_stmt ::= set_transaction_stmt

    set_transaction_stmt ::= SET opt_142 TRANSACTION transaction_mode_list

    transaction_mode_list ::= transaction_mode list_145

    transaction_mode ::= transaction_ise_level
           | transaction_user_priority
           | transaction_read_mode
           | as_of_clause
           | transaction_deferrable_mode

    transaction_ise_level ::= ISOLATION LEVEL iso_level

    iso_level ::= READ grp_146
           | SNAPSHOT
           | REPEATABLE READ
           | SERIALIZABLE

    transaction_user_priority ::= PRIORITY user_priority

    user_priority ::= LOW
           | NORMAL
           | HIGH

    transaction_read_mode ::= READ grp_147

    transaction_deferrable_mode ::= opt_148 DEFERRABLE

    transaction_stmt ::= begin_stmt
           | commit_stmt
           | rollback_stmt
           | abort_stmt
           | prepare_transaction_stmt
           | commit_prepared_stmt
           | rollback_prepared_stmt

    begin_stmt ::= COMMIT TRANSACTION opt_149

    begin_transaction ::= transaction_mode_list

    commit_stmt ::= COMMIT opt_150

    opt_transaction ::= TRANSACTION

    rollback_stmt ::= ROLLBACK opt_151 opt_153

    abort_stmt ::= ABORT opt_154

    opt_abort_mod ::= TRANSACTION
           | WORK

    prepare_transaction_stmt ::= PREPARE TRANSACTION sconst

    commit_prepared_stmt ::= COMMIT PREPARED sconst

    rollback_prepared_stmt ::= ROLLBACK PREPARRED sconst

    close_cursor_stmt ::= CLOSE grp_155

    declare_cursor_stmt ::= DECLARE cursor_name opt_156 opt_157 opt_158 CURSOR opt_159 for_with_lookahead_variants select_stmt

    opt_binary ::= BINARY

    opt_sensitivity ::= INSENSITIVE
           | ASENSITIVE

    opt_scroll ::= opt_160 SCROLL

    opt_hold ::= grp_161 HOLD

    for_with_lookahead_variants ::= FOR
           | FOR_TABLE

    fetch_cursor_stmt ::= FETCH cursor_movement_specifier

    cursor_movement_specifier ::= grp_162 cursor_name

    from_or_in ::= FROM
           | IN

    next_prior ::= NEXT
           | PRIOR

    opt_from_or_in ::= opt_166

    forward_backward ::= FORWARD
           | BACKWARD

    opt_forward_backward ::= opt_167

    move_cursor_stmt ::= MOVE cursor_movement_specifier

    unlisten_stmt ::= UNLISTEN grp_168

    show_commit_timestamp_stmt ::= SHOW COMMIT TIMESTAMP

    legacy_begin_stmt ::= BEGIN opt_169 begin_transaction

    legacy_end_stmt ::= END opt_170

    alter_stmt ::= alter_ddl_stmt
           | alter_external_connection_stmt
           | alter_role_stmt
           | alter_virtual_cluster_stmt

    alter_external_connection_stmt ::= ALTER EXTERNAL CONNECTION opt_171 label_spec AS string_or_placeholder

    label_spec ::= opt_172 string_or_placeholder

    alter_role_stmt ::= ALTER grp_173

    opt_in_database ::= IN DATABASE database_name

    set_or_reset_clause ::= SET set_rest
           | RESET_ALL ALL
           | RESET session_var

    alter_virtual_cluster_stmt ::= alter_virtual_cluster_replication_stmt
           | alter_virtual_cluster_capability_stmt
           | alter_virtual_cluster_rename_stmt
           | alter_virtual_cluster_service_stmt

    alter_virtual_cluster_replication_stmt ::= ALTER virtual_cluster virtual_cluster_spec grp_179

    virtual_cluster ::= VIRTUAL CLUSTER

    virtual_cluster_spec ::= d_expr
           | LBRACKET a_expr RBRACKET

    replication_options_list ::= replication_options list_185

    replication_options ::= RETENTION EQ d_expr
           | READ VIRTUAL CLUSTER

    source_replication_options_list ::= source_replication_options list_187

    source_replication_options ::= EXPIRATION WINDOW EQ d_expr

    opt_with_replication_options ::= WITH grp_188

    alter_virtual_cluster_capability_stmt ::= ALTER virtual_cluster virtual_cluster_spec grp_189 ALL CAPABILITIES

    alter_virtual_cluster_rename_stmt ::= ALTER virtual_cluster virtual_cluster_spec RENAME TO d_expr

    alter_virtual_cluster_service_stmt ::= ALTER virtual_cluster virtual_cluster_spec grp_190

    alter_ddl_stmt ::= alter_table_stmt
           | alter_index_stmt
           | alter_view_stmt
           | alter_sequence_stmt
           | alter_database_stmt
           | alter_range_stmt
           | alter_partition_stmt
           | alter_schema_stmt
           | alter_type_stmt
           | alter_default_privileges_stmt
           | alter_changefeed_stmt
           | alter_backup_stmt
           | alter_func_stmt
           | alter_proc_stmt
           | alter_backup_schedule
           | alter_policy_stmt
           | alter_job_stmt

    alter_table_stmt ::= alter_onetable_stmt
           | alter_split_stmt
           | alter_unsplit_stmt
           | alter_scatter_stmt
           | alter_zone_table_stmt
           | alter_rename_table_stmt
           | alter_table_set_schema_stmt
           | alter_table_locality_stmt
           | alter_table_logged_stmt
           | alter_table_owner_stmt

    alter_onetable_stmt ::= ALTER TABLE opt_191 relation_expr alter_table_cmds

    alter_table_cmds ::= alter_table_cmd list_193

    alter_table_cmd ::= RENAME grp_194 column_name TO column_name
           | ADD grp_196
           | ALTER grp_202
           | DROP grp_214 opt_218
           | VALIDATE CONSTRAINT constraint_name
           | EXPERIMENTAL_AUDIT SET audit_mode
           | partition_by_table
           | SET LPAREN storage_parameter_list RPAREN
           | RESET LPAREN storage_parameter_key_list RPAREN
           | table_rls_mode ROW LEVEL SECURITY

    opt_column ::= COLUMN

    column_table_def ::= column_name typename col_qual_list

    table_constraint ::= opt_220 constraint_elem

    constraint_elem ::= CHECK LPAREN a_expr RPAREN
           | UNIQUE LPAREN index_params RPAREN opt_221 opt_222 opt_223
           | PRIMARY
           | FOREIGN

    opt_storing ::= storing LPAREN name_list RPAREN

    storing ::= COVERING
           | STORING
           | INCLUDE

    opt_partition_by_index ::= partition_by

    opt_validate_behavior ::= NOT VALID

    alter_column_default ::= SET DEFAULT a_expr
           | DROP DEFAULT

    alter_column_on_update ::= SET ON UPDATE a_expr
           | DROP ON UPDATE

    alter_column_visible ::= SET opt_224 VISIBLE

    identity_option_list ::= list_225

    identity_option_elem ::= SET grp_226
           | RESTART opt_235

    opt_set_data ::= SET DATA

    opt_collate ::= COLLATE collation_name

    opt_alter_column_using ::= USING a_expr

    col_qual_list ::= list_236

    col_qualification ::= opt_238 col_qualification_elem
           | COLLATE collation_name
           | FAMILTY family_name
           | CREATE grp_239

    col_qualification_elem ::= NOT grp_242
           | NULL_
           | UNIQUE
           | PRIMARY KEY opt_244 opt_with_storage_parameter_list
           | CHECK LPAREN a_expr RPAREN
           | grp_245 b_expr
           | REFERENCES table_name opt_246 opt_247 reference_actions
           | generated_as LPAREN a_expr RPAREN grp_248
           | grp_249 IDENTITY opt_252

    opt_name_parens ::= LPAREN name RPAREN

    key_match ::= MATCH grp_253

    reference_actions ::= reference_on_update opt_254
           | reference_on_delete opt_255

    reference_on_update ::= ON UPDATE reference_action

    reference_on_delete ::= ON DELETE reference_action

    reference_action ::= NO ACTION
           | RESTRICT
           | CASCADE
           | SET grp_256

    generated_as ::= AS
           | generated_always_as

    generated_always_as ::= GENERATED_ALWAYS ALWAYS AS

    generated_by_default_as ::= GENERATED_BY_DEFAULT BY DEFAULT AS

    opt_sequence_option_list ::= sequence_option_list

    sequence_option_list ::= list_257

    sequence_option_elem ::= AS typename
           | NO grp_258
           | OWNED BY grp_259
           | grp_260 signed_iconst64
           | RESTART opt_268
           | VIRTUAL

    set_generated_always ::= SET GENERATED_ALWAYS ALWAYS

    set_generated_default ::= SET GENERATED_BY_DEFAULT BY DEFAULT

    index_params ::= index_elem list_270

    index_elem ::= grp_271 index_elem_options

    index_elem_options ::= opt_272 opt_273 opt_274

    opt_class ::= name

    opt_hash_sharded ::= USING HASH opt_275

    opt_hash_sharded_bucket_count ::= WITH BUCKET_COUNT EQ a_expr

    opt_with_storage_parameter_list ::= WITH LPAREN storage_parameter_list RPAREN

    audit_mode ::= READ WRITE
           | OFF

    partition_by_table ::= partition_by
           | PARTITION ALL BY partition_by_inner

    partition_by ::= PARTITION BY partition_by_inner

    partition_by_inner ::= LIST LPAREN name_list RPAREN LPAREN list_partitions RPAREN
           | RANGE LPAREN name_list RPAREN LPAREN range_partitions RPAREN
           | NOTHING

    list_partitions ::= list_partition list_277

    list_partition ::= partition VALUES IN LPAREN expr_list RPAREN opt_278

    opt_partition_by ::= partition_by

    range_partitions ::= range_partition list_280

    range_partition ::= partition VALUES FROM LPAREN expr_list RPAREN TO LPAREN expr_list RPAREN opt_281

    storage_parameter_list ::= storage_parameter list_283

    storage_parameter ::= storage_parameter_key EQ var_value

    storage_parameter_key_list ::= storage_parameter_key list_285

    storage_parameter_key ::= name
           | sconst

    table_rls_mode ::= ENABLE
           | DISABLE
           | opt_286 FORCE

    alter_split_stmt ::= ALTER TABLE table_name SPLIT AT select_stmt opt_288

    alter_unsplit_stmt ::= ALTER TABLE table_name UNSPLIT grp_289

    alter_scatter_stmt ::= ALTER TABLE table_name SCATTER opt_291

    alter_zone_table_stmt ::= ALTER TABLE table_name set_zone_config

    alter_rename_table_stmt ::= ALTER TABLE opt_292 relation_expr RENAME TO table_name

    alter_table_set_schema_stmt ::= ALTER TABLE if_exists relation_expr SET SCHEMA schema_name

    alter_table_locality_stmt ::= ALTER TABLE opt_293 relation_expr SET locality

    locality ::= LOCALITY grp_294

    region_name ::= name
           | sconst

    alter_table_logged_stmt ::= ALTER TABLE opt_304 relation_expr SET grp_305

    alter_table_owner_stmt ::= ALTER TABLE opt_306 relation_expr OWNER TO role_spec

    alter_index_stmt ::= alter_oneindex_stmt
           | alter_split_index_stmt
           | alter_unsplit_index_stmt
           | alter_scatter_index_stmt
           | alter_rename_index_stmt
           | alter_zone_index_stmt
           | alter_index_visible_stmt

    alter_oneindex_stmt ::= ALTER INDEX opt_307 table_index_name alter_index_cmds

    alter_index_cmds ::= alter_index_cmd list_309

    alter_index_cmd ::= partition_by_index

    partition_by_index ::= partition_by

    alter_split_index_stmt ::= ALTER INDEX table_index_name SPLIT AT select_stmt opt_311

    alter_unsplit_index_stmt ::= ALTER INDEX table_index_name UNSPLIT grp_312

    alter_scatter_index_stmt ::= ALTER INDEX table_index_name SCATTER opt_314

    alter_rename_index_stmt ::= ALTER INDEX opt_315 table_index_name RENAME TO index_name

    alter_zone_index_stmt ::= ALTER INDEX table_index_name set_zone_config

    alter_index_visible_stmt ::= ALTER INDEX opt_316 table_index_name alter_index_visible

    alter_index_visible ::= opt_317 VISIBLE
           | INVISIBLE
           | VISIBILITY fconst

    alter_view_stmt ::= alter_rename_view_stmt
           | alter_view_set_schema_stmt
           | alter_view_owner_stmt

    alter_rename_view_stmt ::= ALTER opt_318 VIEW opt_319 relation_expr RENAME TO view_name

    alter_view_set_schema_stmt ::= ALTER opt_320 VIEW opt_321 relation_expr SET SCHEMA schema_name

    alter_view_owner_stmt ::= ALTER opt_322 VIEW opt_323 relation_expr OWNER TO role_spec

    alter_sequence_stmt ::= alter_rename_sequence_stmt
           | alter_sequence_options_stmt
           | alter_sequence_set_schema_stmt
           | alter_sequence_owner_stmt

    alter_rename_sequence_stmt ::= ALTER SEQUENCE opt_324 relation_expr RENAME TO sequence_name

    alter_sequence_options_stmt ::= ALTER SEQUENCE opt_325 sequence_name sequence_option_list

    alter_sequence_set_schema_stmt ::= ALTER SEQUENCE opt_326 relation_expr SET SCHEMA schema_name

    alter_sequence_owner_stmt ::= ALTER SEQUENCE if_exists relation_expr OWNER TO role_spec

    alter_database_stmt ::= alter_rename_database_stmt
           | alter_zone_database_stmt
           | alter_database_owner
           | alter_database_to_schema_stmt
           | alter_database_add_region_stmt
           | alter_database_drop_region_stmt
           | alter_database_survival_goal_stmt
           | alter_database_primary_region_stmt
           | alter_database_placement_stmt
           | alter_database_set_stmt
           | alter_database_add_super_region
           | alter_database_alter_super_region
           | alter_database_drop_super_region
           | alter_database_set_secondary_region_stmt
           | alter_database_drop_secondary_region
           | alter_database_set_zone_config_extension_stmt

    alter_rename_database_stmt ::= ALTER DATABASE database_name RENAME TO database_name

    alter_zone_database_stmt ::= ALTER DATABASE database_name set_zone_config

    alter_database_owner ::= ALTER DATABASE database_name OWNER TO role_spec

    alter_database_to_schema_stmt ::= ALTER DATABASE database_name CONVERT TO SCHEMA WITH PARENT database_name

    alter_database_add_region_stmt ::= ALTER DATABASE database_name ADD REGION opt_327 region_name

    alter_database_drop_region_stmt ::= ALTER DATABASE database_name DROP REGION opt_328 region_name

    alter_database_survival_goal_stmt ::= ALTER DATABASE database_name survival_goal_clause

    survival_goal_clause ::= SURVIVE opt_329 grp_330 FAILURE

    opt_equal ::= EQ

    alter_database_primary_region_stmt ::= ALTER DATABASE database_name opt_331 primary_region_clause

    primary_region_clause ::= PRIMARY REGION opt_332 region_name

    alter_database_placement_stmt ::= ALTER DATABASE database_name placement_clause

    placement_clause ::= PLACEMENT grp_333

    alter_database_set_stmt ::= ALTER DATABASE database_name set_or_reset_clause

    alter_database_add_super_region ::= ALTER DATABASE database_name ADD SUPER REGION region_name VALUES region_name_list

    region_name_list ::= region_name list_335

    alter_database_alter_super_region ::= ALTER DATABASE database_name ALTER SUPER REGION region_name VALUES region_name_list

    alter_database_drop_super_region ::= ALTER DATABASE database_name DROP SUPER REGION region_name

    alter_database_set_secondary_region_stmt ::= ALTER DATABASE database_name SET secondary_region_clause

    secondary_region_clause ::= SECONDARY REGION opt_336 region_name

    alter_database_drop_secondary_region ::= ALTER DATABASE database_name DROP SECONDARY REGION opt_337

    alter_database_set_zone_config_extension_stmt ::= ALTER DATABASE database_name ALTER LOCALITY opt_341 set_zone_config

    alter_range_stmt ::= alter_zone_range_stmt
           | alter_range_relocate_stmt

    alter_zone_range_stmt ::= ALTER RANGE a_expr set_zone_config

    alter_range_relocate_stmt ::= ALTER RANGE grp_342

    relocate_kw ::= TESTING_RELOCATE
           | EXPERIMENTAL_RELOCATE
           | RELOCATE

    lease_or_relocate_subject_nonlease ::= LEASE
           | opt_343 FROM a_expr

    relocate_subject_nonlease ::= VOTERS
           | NONVOTERS

    alter_partition_stmt ::= alter_zone_partition_stmt

    alter_zone_partition_stmt ::= ALTER PARTITION partition_name OF grp_344 set_zone_config

    set_zone_config ::= CONFIGURE ZONE grp_346

    var_set_list ::= var_set_item list_348

    var_set_item ::= var_name EQ grp_349

    alter_schema_stmt ::= ALTER SCHEMA qualifiable_schema_name grp_350

    alter_type_stmt ::= ALTER TYPE type_name grp_351

    opt_add_val_placement ::= grp_355 sconst

    alter_default_privileges_stmt ::= ALTER DEFAULT PRIVILEGES grp_356 opt_357 grp_358

    abbreviated_grant_stmt ::= GRANT privileges ON target_object_type TO role_spec_list opt_359

    target_object_type ::= TABLES
           | SEQUENCES
           | TYPES
           | SCHEMAS
           | FUNCTIONS
           | ROUTINES

    abbreviated_revoke_stmt ::= REVOKE opt_361 privileges ON target_object_type FROM role_spec_list opt_362

    opt_in_schemas ::= IN SCHEMA schema_name_list

    alter_changefeed_stmt ::= ALTER CHANGEFEED a_expr alter_changefeed_cmds

    alter_changefeed_cmds ::= list_363

    alter_changefeed_cmd ::= ADD changefeed_table_targets opt_364
           | DROP changefeed_table_targets
           | SET kv_option_list
           | UNSET name_list

    changefeed_table_targets ::= changefeed_table_target list_366

    changefeed_table_target ::= opt_367 table_name opt_368

    opt_table_prefix ::= TABLE

    opt_chagefeed_family ::= FAMILY family_name

    alter_backup_stmt ::= ALTER BACKUP string_or_placeholder opt_370 alter_backup_cmds

    alter_backup_cmds ::= list_371

    alter_backup_cmd ::= ADD backup_kms

    backup_kms ::= NEW_KMS EQ string_or_placeholder_opt_list WITH OLD_KMS EQ string_or_placeholder_opt_list

    alter_func_stmt ::= alter_func_options_stmt
           | alter_func_rename_stmt
           | alter_func_owner_stmt
           | alter_func_set_schema_stmt
           | alter_func_dep_extension_stmt

    alter_func_options_stmt ::= ALTER FUNCTION function_with_paramtypes alter_func_opt_list opt_372

    alter_func_opt_list ::= list_373

    common_routine_opt_item ::= grp_374 ON NULL_ INPUT
           | STRICT
           | IMMUTABLE
           | STABLE
           | VOLATILE
           | opt_375 SECURITY grp_376
           | opt_377 LEAKPROOF

    ops_restrict ::= RESTRICT

    alter_func_rename_stmt ::= ALTER FUNCTION function_with_paramtypes RENAME TO name

    alter_func_owner_stmt ::= ALTER FUNCTION function_with_paramtypes OWNER TO role_spec

    alter_func_set_schema_stmt ::= ALTER FUNCTION function_with_paramtypes SET SCHEMA schema_name

    alter_func_dep_extension_stmt ::= ALTER FUNCTION function_with_paramtypes opt_378 DEPENDS ON EXTENSION name

    opt_no ::= NO

    alter_proc_stmt ::= alter_proc_rename_stmt
           | alter_proc_owner_stmt
           | alter_proc_set_schema_stmt

    alter_proc_rename_stmt ::= ALTER PROCEDURE function_with_paramtypes RENAME TO name

    alter_proc_owner_stmt ::= ALTER PROCEDURE function_with_paramtypes OWNER TO role_spec

    alter_proc_set_schema_stmt ::= ALTER PROCEDURE function_with_paramtypes SET SCHEMA schema_name

    alter_backup_schedule ::= ALTER BACKUP SCHEDULE iconst alter_backup_schedule_cmds

    alter_backup_schedule_cmds ::= alter_backup_schedule_cmd list_380

    alter_backup_schedule_cmd ::= SET grp_381
           | EXECUTE opt_383 IMMEDIATELY

    cron_expr ::= grp_384 opt_386

    alter_policy_stmt ::= ALTER POLICY name ON table_name grp_387

    opt_policy_roles ::= TO role_spec_list

    opt_policy_exprs ::= grp_390 LPAREN a_expr RPAREN

    alter_job_stmt ::= ALTER JOB a_expr OWNER TO role_spec

    backup_stmt ::= BACKUP opt_backup_targets INTO opt_397 string_or_placeholder_opt_list opt_as_of_clause opt_with_backup_options

    sconst_or_placeholder ::= sconst
           | PLACEHOLDER

    opt_backup_targets ::= backup_targets

    backup_targets ::= identifier_
           | col_name_keyword
           | unreserved_keyword
           | complex_table_pattern
           | grp_398 table_pattern_list
           | DATABASE name_list

    string_or_placeholder_opt_list ::= string_or_placeholder
           | LPAREN string_or_placeholder_list RPAREN

    string_or_placeholder_list ::= string_or_placeholder list_400

    opt_with_backup_options ::= WITH grp_401

    backup_options ::= grp_402 EQ string_or_placeholder
           | grp_403 opt_405
           | DETACHED opt_408
           | grp_409 EQ string_or_placeholder_opt_list
           | INCLUDE_ALL_VIRTUAL_CLUSTERS EQ a_expr

    backup_options_list ::= backup_options list_411

    cancel_stmt ::= cancel_jobs_stmt
           | cancel_queries_stmt
           | cancel_sessions_stmt
           | cancel_all_jobs_stmt

    cancel_jobs_stmt ::= CANCEL grp_412

    cancel_queries_stmt ::= CANCEL grp_414

    cancel_sessions_stmt ::= CANCEL grp_417

    cancel_all_jobs_stmt ::= CANCEL ALL name JOBS

    create_stmt ::= create_role_stmt
           | create_ddl_stmt
           | create_stats_stmt
           | create_changefeed_stmt
           | create_extension_stmt
           | create_external_connection_stmt
           | create_logical_replication_stream_stmt
           | create_schedule_stmt

    create_stats_stmt ::= CREATE STATISTICS statistics_name opt_419 FROM create_stats_target opt_420

    opt_stats_columns ::= ON name_list

    create_stats_target ::= table_name

    opt_create_stats_options ::= opt_422 create_stats_option_list

    create_stats_option_list ::= list_423

    create_stats_option ::= as_of_clause
           | USING EXTREMES
           | where_clause

    create_changefeed_stmt ::= CREATE CHANGEFEED grp_424

    opt_changefeed_sink ::= INTO string_or_placeholder

    changefeed_target_expr ::= insert_target

    create_extension_stmt ::= CREATE EXTENSION opt_428 name

    create_external_connection_stmt ::= CREATE EXTERNAL CONNECTION label_spec AS string_or_placeholder

    create_logical_replication_stream_stmt ::= CREATE LOGICALLY REPLICATED logical_replication_resources FROM logical_replication_resources ON string_or_placeholder opt_429

    logical_replication_resources ::= TABLE db_object_name
           | TABLES LPAREN logical_replication_resources_list RPAREN
           | DATABASE database_name

    logical_replication_resources_list ::= db_object_name list_431

    opt_logical_replication_create_table_options ::= WITH grp_432

    logical_replication_create_table_options_list ::= logical_replication_create_table_options list_434

    logical_replication_create_table_options ::= grp_435 string_or_placeholder
           | UNIDIRECTIONAL

    create_schedule_stmt ::= create_schedule_for_changefeed_stmt
           | create_schedule_for_backup_stm

    create_schedule_for_changefeed_stmt ::= CREATE SCHEDULE schedule_label_spec FOR CHANGEFEED grp_437

    schedule_label_spec ::= label_spec

    changefeed_sink ::= INTO string_or_placeholder

    opt_with_schedule_options ::= WITH SCHEDULE OPTIONS grp_442

    create_schedule_for_backup_stm ::= CREATE SCHEDULE schedule_label_spec FOR BACKUP opt_backup_targets INTO string_or_placeholder_opt_list opt_443 cron_expr opt_444 opt_445

    opt_full_backup_clause ::= FULL BACKUP grp_446

    create_ddl_stmt ::= create_database_stmt
           | create_index_stmt
           | create_schema_stmt
           | create_table_stmt
           | create_table_as_stmt
           | create_type_stmt
           | create_view_stmt
           | create_sequence_stmt
           | create_func_stmt
           | create_proc_stmt
           | create_trigger_stmt
           | create_policy_stmt

    create_database_stmt ::= CREATE DATABASE opt_447 database_name opt_448 opt_449 opt_450 opt_451 opt_452 opt_453 opt_454 opt_455 opt_456 opt_457 opt_458 opt_459 opt_460

    opt_template_clause ::= TEMPLATE opt_461 non_reserved_word_or_sconst

    opt_encoding_clause ::= ENCODING opt_462 non_reserved_word_or_sconst

    opt_lc_collate_clause ::= LC_COLLATE_ opt_463 non_reserved_word_or_sconst

    opt_lc_ctype_clause ::= LC_CTYPE_ opt_464 non_reserved_word_or_sconst

    opt_connection_limit ::= CONNECTION LIMIT opt_465 signed_iconst

    opt_primary_region_clause ::= primary_region_clause

    opt_regions_list ::= REGIONS opt_466 region_name_list

    opt_survival_goal_clause ::= survival_goal_clause

    opt_placement_clause ::= placement_clause

    opt_owner_clause ::= OWNER opt_467 role_spec

    opt_super_region_clause ::= super_region_clause

    super_region_clause ::= SUPER REGION region_name VALUES region_name_list

    opt_secondary_region_clause ::= secondary_region_clause

    create_index_stmt ::= CREATE opt_468 grp_469 opt_480 opt_481 opt_482 opt_483 opt_484

    opt_index_access_method ::= USING name

    create_schema_stmt ::= CREATE SCHEMA opt_485 grp_486

    opt_schema_name ::= qualifiable_schema_name

    create_table_stmt ::= CREATE opt_488 TABLE opt_489 table_name LPAREN opt_490 RPAREN opt_491 opt_492 opt_493 opt_494

    opt_table_with ::= opt_with_storage_parameter_list

    opt_create_table_on_commit ::= ON COMMIT PRESERVE ROWS

    opt_persistence_temp_table ::= opt_496 grp_497
           | UNLOGGED

    opt_table_elem_list ::= table_elem_list

    table_elem_list ::= table_elem list_499

    table_elem ::= column_table_def
           | index_def
           | family_def
           | table_constraint opt_validate_behavior
           | LIKE table_name like_table_option_list

    index_def ::= grp_500 opt_504 opt_505 opt_506 opt_507

    opt_index_visible ::= opt_508 VISIBLE
           | INVISIBLE
           | VISIBILTY fconst

    family_def ::= FAMILY opt_509 LPAREN name_list RPAREN

    like_table_option_list ::= list_512

    like_table_option ::= CONSTRAINTS
           | DEFAULTS
           | GENERATED
           | INDEXES
           | ALL

    create_table_as_stmt ::= CREATE opt_513 TABLE opt_514 table_name opt_515 opt_516 AS select_stmt opt_create_table_on_commit

    create_as_opt_col_list ::= LPAREN create_as_table_defs RPAREN

    create_as_table_defs ::= column_name opt_517 list_521

    create_as_col_qual_list ::= create_as_col_qualification

    create_as_col_qualification ::= create_as_col_qualification_elem
           | FAMILY family_name

    create_as_col_qualification_elem ::= PRIMARY KEY opt_with_storage_parameter_list

    create_as_constraint_def ::= create_as_constraint_elem

    create_as_constraint_elem ::= PRIMARY KEY LPAREN create_as_params RPAREN opt_with_storage_parameter_list

    create_as_params ::= create_as_param list_523

    create_as_param ::= column_name

    create_type_stmt ::= CREATE TYPE opt_524 type_name AS grp_525

    opt_enum_val_list ::= enum_val_list

    enum_val_list ::= sconst list_529

    opt_composite_type_list ::= composite_type_list

    composite_type_list ::= name simple_typename list_531

    create_view_stmt ::= CREATE grp_532

    opt_with_data ::= WITH DATA

    create_sequence_stmt ::= CREATE opt_541 SEQUENCE opt_542 sequence_name opt_543

    opt_temp ::= TEMPORARY
           | TEMP

    create_func_stmt ::= CREATE opt_544 FUNCTION routine_create_name LPAREN opt_545 RPAREN opt_549 opt_550 opt_551

    opt_return_set ::= SETOF

    routine_return_type ::= routine_param_type

    table_func_column_list ::= table_func_column list_553

    table_func_column ::= param_name routine_param_type

    create_proc_stmt ::= CREATE opt_554 PROCEDURE routine_create_name LPAREN opt_555 RPAREN opt_556 opt_557

    opt_routine_param_with_defaults_list ::= routine_param_with_defaults_list

    routine_param_with_defaults_list ::= routine_param_with_default list_559

    routine_param_with_default ::= routine_param opt_562

    opt_create_routine_opt_list ::= routine_return_stmt
           | BEGIN ATOMIC opt_563 END

    routine_return_stmt ::= RETURN a_expr

    routine_body_stmt_list ::= list_565

    routine_body_stmt ::= stmt_without_legacy_transaction
           | routine_return_stmt

    opt_routine_body ::= routine_return_stmt
           | BEGIN ATOMIC routine_body_stmt_list END

    or_replace ::= OR REPLACE

    routine_create_name ::= db_object_name

    create_trigger_stmt ::= CREATE opt_566 TRIGGER name trigger_action_time trigger_event_list ON table_name opt_trigger_transition_list opt_567 opt_568 EXECUTE function_or_procedure func_name LPAREN opt_569 RPAREN

    trigger_action_time ::= BEFORE
           | AFTER
           | INSTEAD OF

    trigger_event_list ::= OR
           | trigger_event

    trigger_event ::= INSERT
           | DELETE
           | UPDATE opt_571
           | TRUNCATE

    opt_trigger_transition_list ::= trigger_transition_list

    trigger_transition_list ::= list_572

    trigger_transition ::= transition_is_new transition_is_row opt_573 table_alias_name

    transition_is_new ::= NEW
           | OLD

    transition_is_row ::= ROW
           | TABLE

    trigger_for_each ::= FOR opt_574 trigger_for_type

    trigger_for_type ::= ROW
           | STATEMENT

    trigger_when ::= WHEN a_expr

    function_or_procedure ::= FUNCTION
           | PROCEDURE

    trigger_func_args ::= trigger_func_arg list_576

    trigger_func_arg ::= iconst
           | fconst
           | sconst
           | unrestricted_name

    create_policy_stmt ::= CREATE POLICY opt_577 name ON table_name opt_578 opt_579 opt_policy_roles opt_policy_exprs

    opt_policy_type ::= AS grp_580

    opt_policy_command ::= FOR grp_581

    create_role_stmt ::= CREATE role_or_group_or_user opt_582 role_spec opt_583

    if_not_exists ::= IF NOT EXISTS

    opt_role_options ::= opt_584 role_options

    role_options ::= list_585

    role_option ::= CREATEROLE
           | NOCREATEROLE
           | LOGIN
           | NOLOGIN
           | CONTROLJOB
           | NOCONTROLJOB
           | CONTROLCHANGEFEED
           | NOCONTROLCHANGEFEED
           | CREATEDB
           | NOCREATEDB
           | CREATELOGIN
           | NOCREATELOGIN
           | VIEWACTIVITY
           | NOVIEWACTIVITY
           | VIEWACTIVITYREDACTED
           | NOVIEWACTIVITYREDACTED
           | CANCELQUERY
           | NOCANCELQUERY
           | MODIFYCLUSTERSETTING
           | NOMODIFYCLUSTERSETTING
           | SQLLOGIN
           | NOSQLLOGIN
           | VIEWCLUSTERSETTING
           | NOVIEWCLUSTERSETTING
           | password_clause
           | valid_until_clause
           | provisionsrc_clause
           | REPLICATION
           | NOREPLICATION
           | BYPASSRLS
           | NOBYPASSRLS

    password_clause ::= PASSWORD grp_586

    valid_until_clause ::= VALID UNTIL grp_587

    provisionsrc_clause ::= PROVISIONSRC grp_588

    check_stmt ::= check_external_connection_stmt

    check_external_connection_stmt ::= CHECK EXTERNAL CONNECTION string_or_placeholder opt_589

    opt_with_check_external_connection_options_list ::= WITH grp_590

    check_external_connection_options_list ::= check_external_connection_options list_592

    check_external_connection_options ::= grp_593 EQ string_or_placeholder
           | CONCURRENTLY EQ a_expr

    delete_stmt ::= opt_594 DELETE opt_595 FROM table_expr_opt_alias_idx opt_596 opt_597 opt_598 opt_599 returning_clause

    opt_with_clause ::= with_clause

    with_clause ::= WITH opt_600 cte_list

    opt_batch_clause ::= BATCH opt_602

    batch_param_list ::= batch_param list_604

    batch_param ::= SIZE a_expr

    opt_using_clause ::= USING from_list

    cte_list ::= common_table_expr list_606

    common_table_expr ::= table_alias_name opt_607 AS opt_608 LPAREN preparable_stmt RPAREN

    opt_col_def_list_no_types ::= LPAREN col_def_list_no_types RPAREN

    col_def_list_no_types ::= name list_610

    materialized_clause ::= opt_611 MATERIALIZED

    drop_stmt ::= drop_ddl_stmt
           | drop_role_stmt
           | drop_schedule_stmt
           | drop_external_connection_stmt

    explain_stmt ::= EXPLAIN opt_613 opt_615 explainable_stmt

    explain_option_list ::= explain_option_name list_617

    explain_option_name ::= non_reserved_word

    explainable_stmt ::= preparable_stmt
           | comment_stmt
           | execute_stmt
           | call_stmt
           | do_stmt

    import_stmt ::= IMPORT INTO table_name opt_619 import_format DATA LPAREN string_or_placeholder_list RPAREN opt_620

    insert_column_list ::= insert_column_item list_622

    insert_column_item ::= column_name

    import_format ::= name

    opt_with_options ::= WITH grp_623

    kv_option_list ::= kv_option list_625

    kv_option ::= grp_626 opt_628

    insert_stmt ::= opt_with_clause INSERT INTO insert_target insert_rest opt_629 opt_630

    insert_target ::= table_name_opt_idx opt_632

    table_name_opt_idx ::= opt_only table_name opt_633 opt_descendant

    opt_only ::= opt_634

    opt_index_flags ::= AT grp_635

    index_flags_param_list ::= index_flags_param list_637

    index_flags_param ::= FORCE_INDEX EQ index_name
           | NO_INDEX_JOIN
           | NO_ZIGZAG_JOIN
           | NO_FULL_SCAN
           | AVOID_FULL_SCAN
           | FORCE_ZIGZAG opt_639

    opt_descendant ::= opt_640

    insert_rest ::= opt_642 select_stmt
           | DEFAULT VALUES

    on_conflict ::= ON CONFLICT grp_643

    set_clause_list ::= set_clause list_649

    set_clause ::= single_set_clause
           | multiple_set_clause

    single_set_clause ::= column_name EQ a_expr

    multiple_set_clause ::= LPAREN insert_column_list RPAREN EQ in_expr

    returning_clause ::= RETURNING grp_650

    target_list ::= target_elem list_652

    target_elem ::= a_expr opt_654
           | STAR

    target_name ::= unrestricted_name

    bare_col_label ::= identifier_
           | bare_label_keywords

    bare_label_keywords ::= ABORT
           | ABSOLUTE
           | ACCESS
           | ACTION
           | ADD
           | ADMIN
           | AFTER
           | AGGREGATE
           | ALL
           | ALTER
           | ALWAYS
           | ANALYSE
           | ANALYZE
           | AND
           | ANNOTATE_TYPE
           | ANY
           | ASC
           | ASENSITIVE
           | ASYMMETRIC
           | AS_JSON
           | AT
           | ATOMIC
           | ATTRIBUTE
           | AUTHORIZATION
           | AUTOMATIC
           | AVAILABILITY
           | AVOID_FULL_SCAN
           | BACKUP
           | BACKUPS
           | BACKWARD
           | BATCH
           | BEFORE
           | BEGIN
           | BETWEEN
           | BIDIRECTIONAL
           | BIGINT
           | BINARY
           | BIT
           | BOOLEAN
           | BOTH
           | BOX2D
           | BUCKET_COUNT
           | BY
           | BYPASSRLS
           | CACHE
           | CALL
           | CALLED
           | CANCEL
           | CANCELQUERY
           | CAPABILITIES
           | CAPABILITY
           | CASCADE
           | CASE
           | CAST
           | CHANGEFEED
           | CHARACTERISTICS
           | CHECK
           | CHECK_FILES
           | CLOSE
           | CLUSTER
           | CLUSTERS
           | COALESCE
           | COLLATION
           | COLUMN
           | COLUMNS
           | COMMENT
           | COMMENTS
           | COMMIT
           | COMMITTED
           | COMPACT
           | COMPLETE
           | COMPLETIONS
           | CONCURRENTLY
           | CONFIGURATION
           | CONFIGURATIONS
           | CONFIGURE
           | CONFLICT
           | CONNECTION
           | CONNECTIONS
           | CONSTRAINT
           | CONSTRAINTS
           | CONTROLCHANGEFEED
           | CONTROLJOB
           | CONVERSION
           | CONVERT
           | COPY
           | COST
           | COVERING
           | CREATEDB
           | CREATELOGIN
           | CREATEROLE
           | CROSS
           | CSV
           | CUBE
           | CURRENT
           | CURRENT_CATALOG
           | CURRENT_DATE
           | CURRENT_ROLE
           | CURRENT_SCHEMA
           | CURRENT_TIME
           | CURRENT_TIMESTAMP
           | CURRENT_USER
           | CURSOR
           | CYCLE
           | DATA
           | DATABASE
           | DATABASES
           | DEALLOCATE
           | DEBUG_IDS
           | DEC
           | DECIMAL
           | DECLARE
           | DEFAULT
           | DEFAULTS
           | DEFERRABLE
           | DEFERRED
           | DEFINER
           | DELETE
           | DELIMITER
           | DEPENDS
           | DESC
           | DESTINATION
           | DETACHED
           | DETAILS
           | DISABLE
           | DISCARD
           | DISTINCT
           | DO
           | DOMAIN_
           | DOUBLE
           | DROP
           | EACH
           | ELSE
           | ENABLE
           | ENCODING
           | ENCRYPTED
           | ENCRYPTION_INFO_DIR
           | ENCRYPTION_PASSPHRASE
           | END
           | ENUM
           | ENUMS
           | ERRORS
           | ESCAPE
           | EXCLUDE
           | EXCLUDING
           | EXECUTE
           | EXECUTION
           | EXISTS
           | EXPERIMENTAL
           | EXPERIMENTAL_AUDIT
           | EXPERIMENTAL_FINGERPRINTS
           | EXPERIMENTAL_RELOCATE
           | EXPERIMENTAL_REPLICA
           | EXPIRATION
           | EXPLAIN
           | EXPORT
           | EXTENSION
           | EXTERNAL
           | EXTRACT
           | EXTRACT_DURATION
           | EXTREMES
           | FAILURE
           | FALSE
           | FAMILY
           | FILES
           | FIRST
           | FLOAT
           | FOLLOWING
           | FORCE
           | FORCE_NOT_NULL
           | FORCE_NULL
           | FORCE_QUOTE
           | FORCE_INDEX
           | FORCE_INVERTED_INDEX
           | FORCE_ZIGZAG
           | FOREIGN
           | FORMAT
           | FORWARD
           | FREEZE
           | FULL
           | FUNCTION
           | FUNCTIONS
           | GENERATED
           | GEOGRAPHY
           | GEOMETRY
           | GEOMETRYCOLLECTION
           | GEOMETRYCOLLECTIONM
           | GEOMETRYCOLLECTIONZ
           | GEOMETRYCOLLECTIONZM
           | GEOMETRYM
           | GEOMETRYZ
           | GEOMETRYZM
           | GLOBAL
           | GOAL
           | GRANTEE
           | GRANTS
           | GREATEST
           | GROUPING
           | GROUPS
           | HASH
           | HEADER
           | HIGH
           | HISTOGRAM
           | HOLD
           | IDENTITY
           | IF
           | IFERROR
           | IFNULL
           | IGNORE_FOREIGN_KEYS
           | ILIKE
           | IMMEDIATE
           | IMMEDIATELY
           | IMMUTABLE
           | IMPORT
           | IN
           | INCLUDE
           | INCLUDE_ALL_SECONDARY_TENANTS
           | INCLUDE_ALL_VIRTUAL_CLUSTERS
           | INCLUDING
           | INCREMENT
           | INCREMENTAL
           | INCREMENTAL_LOCATION
           | INDEX
           | INDEXES
           | INHERITS
           | INITIALLY
           | INJECT
           | INNER
           | INOUT
           | INPUT
           | INSENSITIVE
           | INSERT
           | INSPECT
           | INSTEAD
           | INT_
           | INTEGER
           | INTERVAL
           | INTO_DB
           | INVERTED
           | INVISIBLE
           | INVOKER
           | IS
           | ISERROR
           | ISOLATION
           | JOB
           | JOBS
           | JOIN
           | JSON
           | KEY
           | KEYS
           | KMS
           | KV
           | LABEL
           | LANGUAGE
           | LAST
           | LATERAL
           | LATEST
           | LC_COLLATE_
           | LC_CTYPE_
           | LEADING
           | LEAKPROOF
           | LEASE
           | LEAST
           | LEFT
           | LESS
           | LEVEL
           | LIKE
           | LINESTRING
           | LINESTRINGM
           | LINESTRINGZ
           | LINESTRINGZM
           | LIST
           | LOCAL
           | LOCALITY
           | LOCALTIME
           | LOCALTIMESTAMP
           | LOCKED
           | LOGGED
           | LOGICAL
           | LOGICALLY
           | LOGIN
           | LOOKUP
           | LOW
           | MATCH
           | MATERIALIZED
           | MAXVALUE
           | MERGE
           | METHOD
           | MINVALUE
           | MODE
           | MODIFYCLUSTERSETTING
           | MOVE
           | MULTILINESTRING
           | MULTILINESTRINGM
           | MULTILINESTRINGZ
           | MULTILINESTRINGZM
           | MULTIPOINT
           | MULTIPOINTM
           | MULTIPOINTZ
           | MULTIPOINTZM
           | MULTIPOLYGON
           | MULTIPOLYGONM
           | MULTIPOLYGONZ
           | MULTIPOLYGONZM
           | NAMES
           | NAN_
           | NATURAL
           | NEVER
           | NEW
           | NEW_DB_NAME
           | NEW_KMS
           | NEXT
           | NO
           | NOBYPASSRLS
           | NOCANCELQUERY
           | NOCONTROLCHANGEFEED
           | NOCONTROLJOB
           | NOCREATEDB
           | NOCREATELOGIN
           | NOCREATEROLE
           | NODE
           | NOLOGIN
           | NOMODIFYCLUSTERSETTING
           | NONE
           | NONVOTERS
           | NORMAL
           | NOREPLICATION
           | NOSQLLOGIN
           | NOT
           | NOTHING
           | NOVIEWACTIVITY
           | NOVIEWACTIVITYREDACTED
           | NOVIEWCLUSTERSETTING
           | NOWAIT
           | NO_FULL_SCAN
           | NO_INDEX_JOIN
           | NO_ZIGZAG_JOIN
           | NULL_
           | NULLIF
           | NULLS
           | NUMERIC
           | OF
           | OFF
           | OIDS
           | OLD
           | OLD_KMS
           | ONLY
           | OPERATOR
           | OPT
           | OPTION
           | OPTIONS
           | OR
           | ORDINALITY
           | OTHERS
           | OUT
           | OUTER
           | OVERLAY
           | OWNED
           | OWNER
           | PARALLEL
           | PARENT
           | PARTIAL
           | PARTITION
           | PARTITIONS
           | PASSWORD
           | PAUSE
           | PAUSED
           | PER
           | PERMISSIVE
           | PHYSICAL
           | PLACEMENT
           | PLACING
           | PLAN
           | PLANS
           | POINT
           | POINTM
           | POINTZ
           | POINTZM
           | POLICIES
           | POLICY
           | POLYGON
           | POLYGONM
           | POLYGONZ
           | POLYGONZM
           | POSITION
           | PRECEDING
           | PREPARE
           | PREPARED
           | PRESERVE
           | PRIMARY
           | PRIOR
           | PRIORITY
           | PRIVILEGES
           | PROCEDURE
           | PROCEDURES
           | PROVISIONSRC
           | PUBLIC
           | PUBLICATION
           | QUERIES
           | QUERY
           | QUOTE
           | RANGE
           | RANGES
           | READ
           | REAL
           | REASON
           | REASSIGN
           | RECURRING
           | RECURSIVE
           | REDACT
           | REF
           | REFERENCES
           | REFERENCING
           | REFRESH
           | REGION
           | REGIONAL
           | REGIONS
           | REINDEX
           | RELATIVE
           | RELEASE
           | RELOCATE
           | REMOVE_REGIONS
           | RENAME
           | REPEATABLE
           | REPLACE
           | REPLICATED
           | REPLICATION
           | RESET
           | RESTART
           | RESTORE
           | RESTRICT
           | RESTRICTED
           | RESTRICTIVE
           | RESUME
           | RETENTION
           | RETURN
           | RETURNS
           | REVISION_HISTORY
           | REVOKE
           | RIGHT
           | ROLE
           | ROLES
           | ROLLBACK
           | ROLLUP
           | ROUTINES
           | ROW
           | ROWS
           | RULE
           | RUN
           | RUNNING
           | SAVEPOINT
           | SCANS
           | SCATTER
           | SCHEDULE
           | SCHEDULES
           | SCHEMA
           | SCHEMAS
           | SCHEMA_ONLY
           | SCROLL
           | SCRUB
           | SEARCH
           | SECONDARY
           | SECURITY
           | SECURITY_INVOKER
           | SELECT
           | SEQUENCE
           | SEQUENCES
           | SERIALIZABLE
           | SERVER
           | SERVICE
           | SESSION
           | SESSIONS
           | SESSION_USER
           | SET
           | SETOF
           | SETS
           | SETTING
           | SETTINGS
           | SHARE
           | SHARED
           | SHOW
           | SIMILAR
           | SIMPLE
           | SIZE
           | SKIP_
           | SKIP_LOCALITIES_CHECK
           | SKIP_MISSING_FOREIGN_KEYS
           | SKIP_MISSING_SEQUENCES
           | SKIP_MISSING_SEQUENCE_OWNERS
           | SKIP_MISSING_UDFS
           | SKIP_MISSING_VIEWS
           | SMALLINT
           | SNAPSHOT
           | SOME
           | SOURCE
           | SPLIT
           | SQL
           | SQLLOGIN
           | STABLE
           | START
           | STATE
           | STATEMENT
           | STATEMENTS
           | STATISTICS
           | STATUS
           | STDIN
           | STDOUT
           | STOP
           | STORAGE
           | STORE
           | STORED
           | STORING
           | STRAIGHT
           | STREAM
           | STRICT
           | STRING
           | SUBSCRIPTION
           | SUBSTRING
           | SUBJECT
           | SUPER
           | SUPPORT
           | SURVIVAL
           | SURVIVE
           | SYMMETRIC
           | SYNTAX
           | SYSTEM
           | TABLE
           | TABLES
           | TABLESPACE
           | TEMP
           | TEMPLATE
           | TEMPORARY
           | TENANT
           | TENANTS
           | TENANT_NAME
           | TESTING_RELOCATE
           | TEXT
           | THEN
           | THROTTLING
           | TIES
           | TIME
           | TIMESTAMP
           | TIMESTAMPTZ
           | TIMETZ
           | TRACE
           | TRACING
           | TRAILING
           | TRANSACTION
           | TRANSACTIONS
           | TRANSFER
           | TRANSFORM
           | TREAT
           | TRIGGER
           | TRIGGERS
           | TRIM
           | TRUE
           | TRUNCATE
           | TRUSTED
           | TYPE
           | TYPES
           | UNBOUNDED
           | UNCOMMITTED
           | UNIDIRECTIONAL
           | UNIQUE
           | UNKNOWN
           | UNLISTEN
           | UNLOGGED
           | UNSAFE_RESTORE_INCOMPATIBLE_VERSION
           | UNSET
           | UNSPLIT
           | UNTIL
           | UPDATE
           | UPDATES_CLUSTER_MONITORING_METRICS
           | UPSERT
           | USE
           | USER
           | USERS
           | USING
           | VALID
           | VALIDATE
           | VALUE
           | VALUES
           | VARBIT
           | VARCHAR
           | VARIABLES
           | VARIADIC
           | VECTOR
           | VERIFY_BACKUP_TABLE_DATA
           | VIEW
           | VIEWACTIVITY
           | VIEWACTIVITYREDACTED
           | VIEWCLUSTERSETTING
           | VIRTUAL
           | VIRTUAL_CLUSTER_NAME
           | VIRTUAL_CLUSTER
           | VISIBLE
           | VISIBILITY
           | VOLATILE
           | VOTERS
           | WHEN
           | WORK
           | WRITE
           | ZONE

    inspect_stmt ::= inspect_table_stmt
           | inspect_database_stmt

    inspect_table_stmt ::= INSPECT TABLE table_name opt_655 opt_656

    opt_inspect_options_clause ::= WITH OPTIONS inspect_option_list

    inspect_option_list ::= inspect_option list_658

    inspect_option ::= INDEX grp_659

    inspect_database_stmt ::= INSPECT DATABASE db_name opt_660 opt_661

    pause_stmt ::= pause_jobs_stmt
           | pause_schedules_stmt
           | pause_all_jobs_stmt

    pause_jobs_stmt ::= PAUSE grp_662

    with_reason ::= WITH REASON EQ string_or_placeholder

    pause_schedules_stmt ::= PAUSE grp_666

    pause_all_jobs_stmt ::= PAUSE ALL name JOBS

    reset_stmt ::= reset_session_stmt
           | reset_csetting_stmt

    reset_session_stmt ::= RESET opt_667 session_var
           | RESET_ALL ALL

    session_var ::= identifier_ opt_668
           | ALL
           | DATABASE
           | NAMES
           | ROLE
           | SESSION_USER
           | LC_COLLATE_
           | TIME ZONE
           | VIRTUAL_CLUSTER_NAME

    session_var_parts ::= list_670

    reset_csetting_stmt ::= RESET CLUSTER SETTING var_name

    var_name ::= name opt_671

    attrs ::= list_673

    restore_stmt ::= RESTORE opt_675 FROM string_or_placeholder IN string_or_placeholder_opt_list opt_676 opt_677

    opt_with_restore_options ::= WITH grp_678

    restore_options_list ::= restore_options list_680

    restore_options ::= grp_681 EQ string_or_placeholder
           | grp_682 EQ string_or_placeholder_opt_list
           | SKIP_MISSING_FOREIGN_KEYS
           | SKIP_MISSING_SEQUENCES
           | SKIP_MISSING_SEQUENCE_OWNERS
           | SKIP_MISSING_VIEWS
           | SKIP_MISSING_UDFS
           | DETACHED
           | SKIP_LOCALITIES_CHECK
           | SCHEMA_ONLY
           | VERIFY_BACKUP_TABLE_DATA
           | UNSAFE_RESTORE_INCOMPATIBLE_VERSION
           | EXPERIMENTAL opt_683 COPY
           | REMOVE_REGIONS

    resume_stmt ::= resume_jobs_stmt
           | resume_schedules_stmt
           | resume_all_jobs_stmt

    resume_jobs_stmt ::= RESUME grp_684

    for_schedules_clause ::= FOR grp_686

    resume_schedules_stmt ::= RESUME grp_687

    resume_all_jobs_stmt ::= RESUME ALL name JOBS

    export_stmt ::= EXPORT INTO import_format string_or_placeholder opt_688 FROM select_stmt

    scrub_stmt ::= scrub_table_stmt
           | scrub_database_stmt

    scrub_table_stmt ::= EXPERIMENTAL SCRUB TABLE table_name opt_689 opt_690

    opt_scrub_options_clause ::= WITH OPTIONS scrub_option_list

    scrub_option_list ::= scrub_option list_692

    scrub_option ::= grp_693 grp_694
           | PHYSICAL

    scrub_database_stmt ::= EXPERIMENTAL SCRUB DATABASE database_name opt_695

    drop_ddl_stmt ::= drop_database_stmt
           | drop_index_stmt
           | drop_table_stmt
           | drop_view_stmt
           | drop_sequence_stmt
           | drop_schema_stmt
           | drop_type_stmt
           | drop_func_stmt
           | drop_proc_stmt
           | drop_trigger_stmt
           | drop_policy_stmt

    drop_role_stmt ::= DROP role_or_group_or_user opt_696 role_spec_list

    if_exists ::= IF EXISTS

    role_or_group_or_user ::= ROLE
           | USER

    drop_schedule_stmt ::= DROP grp_697

    drop_external_connection_stmt ::= DROP EXTERNAL CONNECTION string_or_placeholder

    drop_database_stmt ::= DROP DATABASE opt_698 database_name opt_699

    drop_index_stmt ::= DROP INDEX opt_700 opt_701 table_index_name_list opt_702

    table_index_name_list ::= table_index_name list_704

    drop_table_stmt ::= DROP TABLE opt_705 table_name_list opt_706

    table_name_list ::= db_object_name_list

    db_object_name_list ::= db_object_name list_708

    drop_view_stmt ::= DROP opt_709 VIEW opt_710 view_name_list opt_711

    view_name_list ::= db_object_name_list

    drop_sequence_stmt ::= DROP SEQUENCE opt_712 sequence_name_list opt_713

    sequence_name_list ::= db_object_name_list

    drop_schema_stmt ::= DROP SCHEMA opt_714 schema_name_list opt_715

    drop_type_stmt ::= DROP TYPE opt_716 type_name_list opt_717

    drop_func_stmt ::= DROP FUNCTION opt_718 function_with_paramtypes_list opt_719

    drop_proc_stmt ::= DROP PROCEDURE opt_720 opt_721 opt_722

    drop_trigger_stmt ::= DROP TRIGGER opt_723 name ON table_name opt_724

    drop_policy_stmt ::= DROP POLICY opt_725 name ON table_name opt_726

    select_stmt ::= select_no_parens
           | select_with_parens

    select_no_parens ::= simple_select
           | simple_select grp_727
           | with_clause simple_select opt_737

    simple_select ::= simple_select_clause
           | values_clause
           | table_clause
           | select_with_parens
           | simple_select grp_738 opt_739 simple_select

    simple_select_clause ::= SELECT grp_740 opt_744 opt_745 opt_746 opt_747 opt_748

    opt_all_clause ::= ALL

    distinct_on_clause ::= DISTINCT ON expr_list_in_parens

    from_clause ::= FROM from_list opt_749

    from_list ::= table_ref list_751

    group_clause ::= GROUP BY group_by_list

    group_by_list ::= group_by_item list_753

    group_by_item ::= a_expr

    having_clause ::= HAVING a_expr

    window_clause ::= WINDOW window_definition_list

    window_definition_list ::= window_definition list_755

    window_definition ::= window_name AS window_specification

    window_name ::= name

    window_specification ::= LPAREN opt_756 opt_757 opt_sort_clause_no_index opt_758 RPAREN

    opt_existing_window_name ::= name

    opt_partition_clause ::= PARTITION BY expr_list

    opt_frame_clause ::= grp_759 frame_extent opt_760

    frame_extent ::= seq_761 frame_bound

    frame_bound ::= grp_762 grp_763
           | CURRENT ROW

    opt_frame_exclusion ::= EXCLUDE grp_764

    values_clause ::= VALUES expr_list_in_parens list_766

    table_clause ::= TABLE table_ref

    table_ref ::= grp_767 opt_770 opt_771
           | func_table opt_ordinality opt_func_alias_clause
           | LPAREN table_ref RPAREN opt_772 opt_773
           | table_ref grp_774

    row_source_extension_stmt ::= delete_stmt
           | explain_stmt
           | insert_rest
           | select_stmt
           | show_stmt
           | update_stmt
           | upsert_stmt

    func_table ::= grp_783

    func_expr_windowless ::= func_application
           | func_expr_common_subexpr

    func_expr_common_subexpr ::= COLLATION FOR LPAREN a_expr RPAREN
           | IF LPAREN a_expr COMMA a_expr COMMA a_expr RPAREN
           | grp_784 LPAREN a_expr COMMA a_expr RPAREN
           | IFERROR LPAREN a_expr COMMA a_expr COMMA a_expr RPAREN
           | ISERROR LPAREN a_expr COMMA a_expr RPAREN
           | CAST LPAREN a_expr AS cast_target RPAREN
           | ANNOTATE_TYPE LPAREN a_expr COMMA typename RPAREN
           | COALESCE LPAREN expr_list RPAREN
           | CURRENT_DATE
           | CURRENT_SCHEMA
           | CURRENT_CATALOG
           | CURRENT_TIMESTAMP
           | CURRENT_TIME
           | LOCALTIMESTAMP
           | LOCALTIME
           | CURRENT_USER
           | CURRENT_ROLE
           | SESSION_USER
           | USER
           | special_function

    cast_target ::= typename

    special_function ::= grp_785 LPAREN RPAREN
           | grp_786 LPAREN extract_list RPAREN
           | OVERLAY LPAREN overlay_list RPAREN
           | POSITION LPAREN opt_787 RPAREN
           | SUBSTRING LPAREN substr_list RPAREN
           | grp_788 expr_list_in_parens
           | grp_789 LPAREN a_expr RPAREN
           | TRIM LPAREN opt_791 trim_list RPAREN

    extract_list ::= extract_arg FROM a_expr
           | expr_list

    extract_arg ::= identifier_
           | YEAR
           | MONTH
           | DAY
           | HOUR
           | MINUTE
           | SECOND
           | sconst

    overlay_list ::= a_expr overlay_placing substr_from opt_792
           | expr_list

    position_list ::= b_expr IN b_expr

    substr_list ::= a_expr grp_793
           | expr_list

    trim_list ::= opt_798 expr_list

    overlay_placing ::= PLACING a_expr

    substr_from ::= FROM a_expr

    substr_for ::= FOR a_expr

    rowsfrom_list ::= rowsfrom_item list_800

    rowsfrom_item ::= func_expr_windowless opt_801

    join_type ::= grp_802 opt_803
           | INNER

    join_outer ::= OUTER

    opt_join_hint ::= HASH
           | MERGE
           | LOOKUP
           | INVERTED
           | STRAIGHT

    join_equal ::= USING LPAREN name_list RPAREN
           | ON a_expr

    opt_ordinality ::= WITH ORDINALITY

    opt_alias_clause ::= alias_clause

    alias_clause ::= opt_804 table_alias_name opt_805

    opt_func_alias_clause ::= func_alias_clause

    func_alias_clause ::= alias_clause
           | grp_806 LPAREN col_def_list RPAREN

    col_def_list ::= col_def list_809

    col_def ::= name typename

    all_or_distinct ::= ALL
           | DISTINCT

    select_limit ::= limit_clause opt_810
           | offset_clause opt_811

    limit_clause ::= LIMIT grp_812
           | FETCH first_or_next opt_813 row_or_rows ONLY

    first_or_next ::= FIRST
           | NEXT

    select_fetch_first_value ::= c_expr
           | only_signed_iconst
           | only_signed_fconst

    row_or_rows ::= ROW
           | ROWS

    offset_clause ::= OFFSET grp_814

    sort_clause ::= ORDER BY sortby_list

    sortby_list ::= grp_815 list_818

    select_with_parens ::= LPAREN grp_819 RPAREN

    for_locking_clause ::= for_locking_items
           | FOR READ ONLY

    for_locking_items ::= list_820

    for_locking_item ::= for_locking_strength opt_locked_rels opt_nowait_or_skip

    for_locking_strength ::= FOR grp_821

    opt_locked_rels ::= OF table_name_list

    opt_nowait_or_skip ::= SKIP_ LOCKED
           | NOWAIT

    preparable_set_stmt ::= set_session_stmt
           | set_local_stmt
           | set_csetting_stmt
           | use_stmt

    set_session_stmt ::= SET grp_825

    set_rest_more ::= set_rest

    set_rest ::= generic_set

    generic_set ::= var_name to_or_eq var_list

    var_list ::= var_value list_828

    var_value ::= a_expr
           | extra_var_value

    extra_var_value ::= ON
           | NONE
           | cockroachdb_extra_reserved_keyword

    to_or_eq ::= EQ
           | TO

    set_local_stmt ::= SET LOCAL set_rest

    set_csetting_stmt ::= SET CLUSTER SETTING var_name to_or_eq var_value

    use_stmt ::= USE var_name

    show_stmt ::= show_backup_stmt
           | show_columns_stmt
           | show_constraints_stmt
           | show_triggers_stmt
           | show_create_stmt
           | show_create_schedules_stmt
           | show_create_external_connections_stmt
           | show_databases_stmt
           | show_enums_stmt
           | show_external_connections_stmt
           | show_types_stmt
           | show_functions_stmt
           | show_procedures_stmt
           | show_grants_stmt
           | show_indexes_stmt
           | show_partitions_stmt
           | show_jobs_stmt
           | show_locality_stmt
           | show_schedules_stmt
           | show_statements_stmt
           | show_ranges_stmt
           | show_range_for_row_stmt
           | show_regions_stmt
           | show_survival_goal_stmt
           | show_roles_stmt
           | show_savepoint_stmt
           | show_schemas_stmt
           | show_sequences_stmt
           | show_session_stmt
           | show_sessions_stmt
           | show_stats_stmt
           | show_tables_stmt
           | show_trace_stmt
           | show_transactions_stmt
           | show_transfer_stmt
           | show_users_stmt
           | show_default_session_variables_for_role_stmt
           | show_zone_stmt
           | show_full_scans_stmt
           | show_default_privileges_stmt
           | show_inspect_errors_stmt

    show_backup_stmt ::= SHOW grp_829

    opt_with_show_backup_options ::= WITH grp_834

    show_backup_options_list ::= show_backup_options list_836

    show_backup_options ::= AS JSON
           | CHECK_FILES
           | SKIP_ SIZE
           | DEBUG_IDS
           | grp_837 EQ string_or_placeholder_opt_list
           | grp_838 EQ string_or_placeholder
           | PRIVILEGES

    show_columns_stmt ::= SHOW COLUMNS FROM table_name opt_839

    with_comment ::= WITH COMMENT

    show_constraints_stmt ::= SHOW grp_840 FROM table_name opt_841

    show_triggers_stmt ::= SHOW TRIGGER FROM table_name

    show_create_stmt ::= SHOW CREATE grp_842

    opt_show_create_format_options ::= WITH grp_844

    show_create_schedules_stmt ::= SHOW CREATE grp_845

    show_create_external_connections_stmt ::= SHOW CREATE grp_846

    show_databases_stmt ::= SHOW DATABASES opt_847

    show_enums_stmt ::= SHOW ENUMS opt_851

    show_external_connections_stmt ::= SHOW EXTERNAL grp_852

    show_types_stmt ::= SHOW TYPES opt_853

    show_functions_stmt ::= SHOW FUNCTIONS opt_857

    show_procedures_stmt ::= SHOW PROCEDURES opt_861

    show_grants_stmt ::= SHOW grp_862 opt_864

    opt_target_roles ::= ON target_roles

    target_roles ::= ROLE role_spec_list
           | SCHEMA grp_865
           | TYPE type_name_list
           | grant_targets

    schema_wildcard ::= wildcard_pattern

    wildcard_pattern ::= name DOT STAR

    for_grantee_clause ::= FOR role_spec_list

    show_indexes_stmt ::= SHOW grp_866 FROM grp_867 opt_868

    show_partitions_stmt ::= SHOW PARTITIONS FROM grp_869

    show_jobs_stmt ::= SHOW grp_871

    show_job_options_list ::= show_job_options list_882

    show_job_options ::= EXECUTION DETAILS

    show_locality_stmt ::= SHOW LOCALITY

    show_schedules_stmt ::= SHOW grp_883

    schedule_state ::= RUNNING
           | PAUSED

    opt_schedule_executor_type ::= FOR grp_885

    show_statements_stmt ::= SHOW opt_886 opt_cluster statements_or_queries

    opt_cluster ::= CLUSTER
           | LOCAL

    statements_or_queries ::= STATEMENTS
           | QUERIES

    show_ranges_stmt ::= SHOW grp_887 opt_show_ranges_options

    opt_show_ranges_options ::= WITH show_ranges_options

    show_ranges_options ::= show_ranges_option list_892

    show_ranges_option ::= TABLES
           | INDEXES
           | DETAILS
           | KEYS
           | EXPLAIN

    show_range_for_row_stmt ::= SHOW RANGE FROM grp_893 FOR ROW expr_list_in_parens

    show_regions_stmt ::= SHOW grp_894

    show_survival_goal_stmt ::= SHOW SURVIVAL GOAL FROM DATABASE opt_899

    show_roles_stmt ::= SHOW ROLES

    show_savepoint_stmt ::= SHOW SAVEPOINT STATUS

    show_schemas_stmt ::= SHOW SCHEMAS opt_901 opt_902

    show_sequences_stmt ::= SHOW SEQUENCES opt_904

    show_session_stmt ::= SHOW opt_905 session_var

    show_sessions_stmt ::= SHOW ALL opt_cluster SESSIONS

    show_stats_stmt ::= SHOW STATISTICS FOR_TABLE TABLE table_name opt_906

    show_tables_stmt ::= SHOW TABLE opt_910 opt_911

    show_trace_stmt ::= SHOW opt_912 opt_913 TRACE FOR SESSION

    opt_compact ::= COMPACT

    show_transactions_stmt ::= SHOW opt_914 opt_cluster TRANSACTIONS

    show_transfer_stmt ::= SHOW TRANSFER STATE opt_916

    show_users_stmt ::= SHOW USERS

    show_default_session_variables_for_role_stmt ::= SHOW DEFAULT SESSION VARIABLES FOR grp_917

    show_zone_stmt ::= SHOW grp_919

    zone_name ::= unrestricted_name

    opt_partition ::= partition

    partition ::= PARTITION partition_name

    partition_name ::= unrestricted_name

    table_or_index ::= TABLE table_name
           | INDEX table_index_name

    show_full_scans_stmt ::= SHOW FULL TABLE SCANS

    show_default_privileges_stmt ::= SHOW DEFAULT PRIVILEGES grp_923 opt_926

    opt_for_roles ::= FOR role_or_group_or_user role_spec_list

    opt_in_schema ::= IN SCHEMA schema_name

    schema_name ::= name

    show_inspect_errors_stmt ::= SHOW INSPECT ERRORS opt_927 opt_928 opt_929

    opt_for_table_clause ::= FOR_TABLE TABLE table_name

    opt_for_job_clause ::= FOR_JOB JOB iconst

    opt_with_details ::= WITH DETAILS

    truncate_stmt ::= TRUNCATE opt_930 relation_expr_list opt_931

    relation_expr_list ::= relation_expr list_933

    relation_expr ::= table_name opt_934
           | ONLY grp_935

    update_stmt ::= opt_936 UPDATE table_expr_opt_alias_idx SET set_clause_list opt_937 opt_938 opt_939 opt_940 returning_clause

    table_expr_opt_alias_idx ::= table_name_opt_idx opt_943

    opt_from_list ::= FROM from_list

    upsert_stmt ::= opt_944 UPSERT INTO insert_target insert_rest returning_clause

    iconst ::= DECIMAL

    fconst ::= FLOAT

    sconst ::= STRING_LITERAL

    bconst ::= B STRING_LITERAL

    bitconst ::= BINARY_LITERAL

    expr_list_in_parens ::= LPAREN expr_list RPAREN

    expr_list ::= a_expr list_946

    a_expr ::= grp_947 list_970

    subquery_op ::= all_op
           | qual_op
           | opt_971 grp_972

    sub_type ::= ANY
           | SOME
           | ALL

    b_expr ::= grp_973 list_979

    qual_op ::= OPERATOR LPAREN operator_op RPAREN

    operator_op ::= all_op

    all_op ::= PLUS
           | MINUS
           | STAR
           | SLASH
           | PERCENT
           | CARET
           | LT
           | GT
           | EQ
           | LESS_EQUALS
           | GREATER_EQUALS
           | NOT_EQUALS
           | QUESTION
           | AMP
           | PIPE
           | HASH
           | FLOORDIV
           | CONTAINS
           | CONTAINED_BY
           | LSHIFT
           | RSHIFT
           | CONCAT
           | FETCHVAL
           | FETCHTEXT
           | FETCHVAL_PATH
           | FETCHTEXT_PATH
           | JSON_SOME_EXISTS
           | JSON_ALL_EXISTS
           | NOT_REGMATCH
           | REGIMATCH
           | NOT_REGIMATCH
           | AND_AND
           | AT_AT
           | DISTANCE
           | COS_DISTANCE
           | NEG_INNER_PRODUCT
           | TILDE
           | SQRT
           | CBRT

    c_expr ::= d_expr opt_980
           | case_expr
           | EXISTS select_with_parens

    d_expr ::= AT iconst
           | fconst
           | sconst
           | bconst
           | bitconst
           | typed_literal
           | interval_value
           | TRUE
           | FALSE
           | NULL_
           | column_path_with_star
           | PLACEHOLDER
           | LPAREN a_expr RPAREN opt_983
           | func_expr
           | select_with_parens
           | labeled_row
           | ARRAY grp_984

    typed_literal ::= grp_985 sconst

    func_name_no_crdb_extra ::= type_function_name_no_crdb_extra
           | prefixed_column_path

    interval_value ::= INTERVAL grp_986

    column_path_with_star ::= column_path
           | db_object_name_component DOT opt_991 STAR

    func_expr ::= func_application opt_992 opt_993 opt_994
           | func_expr_common_subexpr

    array_expr ::= LBRACKET grp_995 RBRACKET

    array_expr_list ::= array_expr list_998

    within_group_clause ::= WITHIN GROUP LPAREN single_sort_clause RPAREN

    over_clause ::= OVER grp_999

    filter_clause ::= FILTER LPAREN WHERE a_expr RPAREN

    single_sort_clause ::= ORDER BY grp_1000

    labeled_row ::= row
           | LPAREN row AS name_list RPAREN

    row ::= ROW LPAREN opt_1003 RPAREN
           | expr_tuple_unambiguous

    expr_tuple_unambiguous ::= LPAREN tuple1_unambiguous_values RPAREN

    tuple1_unambiguous_values ::= a_expr COMMA opt_1004

    case_expr ::= CASE opt_1005 when_clause_list opt_1006 END

    case_arg ::= a_expr

    when_clause_list ::= list_1007

    when_clause ::= WHEN a_expr THEN a_expr

    case_default ::= ELSE a_expr

    array_subscripts ::= list_1008

    array_subscript ::= LBRACKET grp_1009 RBRACKET

    opt_slice_bound ::= a_expr

    in_expr ::= select_with_parens
           | expr_tuple1_ambiguous

    expr_tuple1_ambiguous ::= LPAREN tuple1_ambiguous_values RPAREN

    tuple1_ambiguous_values ::= a_expr opt_1014

    identifier_ ::= ID

    name ::= identifier_
           | unreserved_keyword
           | col_name_keyword

    non_reserved_word ::= identifier_
           | unreserved_keyword
           | col_name_keyword
           | type_func_name_keyword

    unreserved_keyword ::= ABORT
           | ABSOLUTE
           | ACTION
           | ACCESS
           | ADD
           | ADMIN
           | AFTER
           | AGGREGATE
           | ALTER
           | ALWAYS
           | ASENSITIVE
           | AS_JSON
           | AT
           | ATOMIC
           | ATTRIBUTE
           | AUTOMATIC
           | AVAILABILITY
           | AVOID_FULL_SCAN
           | BACKUP
           | BACKUPS
           | BACKWARD
           | BATCH
           | BEFORE
           | BEGIN
           | BIDIRECTIONAL
           | BINARY
           | BUCKET_COUNT
           | BY
           | BYPASSRLS
           | CACHE
           | CALL
           | CALLED
           | CANCEL
           | CANCELQUERY
           | CAPABILITIES
           | CAPABILITY
           | CASCADE
           | CHANGEFEED
           | CHECK_FILES
           | CLOSE
           | CLUSTER
           | CLUSTERS
           | COLUMNS
           | COMMENT
           | COMMENTS
           | COMMIT
           | COMMITTED
           | COMPACT
           | COMPLETE
           | COMPLETIONS
           | CONFLICT
           | CONFIGURATION
           | CONFIGURATIONS
           | CONFIGURE
           | CONNECTION
           | CONNECTIONS
           | CONSTRAINTS
           | CONTROLCHANGEFEED
           | CONTROLJOB
           | CONVERSION
           | CONVERT
           | COPY
           | COST
           | COVERING
           | CREATEDB
           | CREATELOGIN
           | CREATEROLE
           | CSV
           | CUBE
           | CURRENT
           | CURSOR
           | CYCLE
           | DATA
           | DATABASE
           | DATABASES
           | DAY
           | DEALLOCATE
           | DEBUG_IDS
           | DECLARE
           | DELETE
           | DEFAULTS
           | DEFERRED
           | DEFINER
           | DELIMITER
           | DEPENDS
           | DESTINATION
           | DETACHED
           | DETAILS
           | DISABLE
           | DISCARD
           | DOMAIN_
           | DOUBLE
           | DROP
           | EACH
           | ENABLE
           | ENCODING
           | ENCRYPTED
           | ENCRYPTION_PASSPHRASE
           | ENCRYPTION_INFO_DIR
           | ENUM
           | ENUMS
           | ERRORS
           | ESCAPE
           | EXCLUDE
           | EXCLUDING
           | EXECUTE
           | EXECUTION
           | EXPERIMENTAL
           | EXPERIMENTAL_AUDIT
           | EXPERIMENTAL_FINGERPRINTS
           | EXPERIMENTAL_RELOCATE
           | EXPERIMENTAL_REPLICA
           | EXPIRATION
           | EXPLAIN
           | EXPORT
           | EXTENSION
           | EXTERNAL
           | EXTREMES
           | FAILURE
           | FILES
           | FILTER
           | FIRST
           | FOLLOWING
           | FORMAT
           | FORCE
           | FORCE_NOT_NULL
           | FORCE_NULL
           | FORCE_QUOTE
           | FORCE_INDEX
           | FORCE_INVERTED_INDEX
           | FORCE_ZIGZAG
           | FORWARD
           | FREEZE
           | FUNCTION
           | FUNCTIONS
           | GENERATED
           | GEOMETRYM
           | GEOMETRYZ
           | GEOMETRYZM
           | GEOMETRYCOLLECTION
           | GEOMETRYCOLLECTIONM
           | GEOMETRYCOLLECTIONZ
           | GEOMETRYCOLLECTIONZM
           | GLOBAL
           | GOAL
           | GRANTEE
           | GRANTS
           | GROUPS
           | HASH
           | HEADER
           | HIGH
           | HISTOGRAM
           | HOLD
           | HOUR
           | IDENTITY
           | IMMEDIATE
           | IMMEDIATELY
           | IMMUTABLE
           | IMPORT
           | INCLUDE
           | INCLUDING
           | INCLUDE_ALL_SECONDARY_TENANTS
           | INCLUDE_ALL_VIRTUAL_CLUSTERS
           | INCREMENT
           | INCREMENTAL
           | INCREMENTAL_LOCATION
           | INDEX
           | INDEXES
           | INHERITS
           | INJECT
           | INPUT
           | INSERT
           | INSPECT
           | INSTEAD
           | INTO_DB
           | INVERTED
           | INVISIBLE
           | ISOLATION
           | INVOKER
           | JOB
           | JOBS
           | JSON
           | KEY
           | KEYS
           | KMS
           | KV
           | LABEL
           | LANGUAGE
           | LAST
           | LATEST
           | LC_COLLATE_
           | LC_CTYPE_
           | LEAKPROOF
           | LEASE
           | LESS
           | LEVEL
           | LINESTRING
           | LINESTRINGM
           | LINESTRINGZ
           | LINESTRINGZM
           | LIST
           | LOCAL
           | LOCKED
           | LOGICAL
           | LOGICALLY
           | LOGIN
           | LOCALITY
           | LOGGED
           | LOOKUP
           | LOW
           | MATCH
           | MATERIALIZED
           | MAXVALUE
           | MERGE
           | METHOD
           | MINUTE
           | MINVALUE
           | MODIFYCLUSTERSETTING
           | MULTILINESTRING
           | MULTILINESTRINGM
           | MULTILINESTRINGZ
           | MULTILINESTRINGZM
           | MULTIPOINT
           | MULTIPOINTM
           | MULTIPOINTZ
           | MULTIPOINTZM
           | MULTIPOLYGON
           | MULTIPOLYGONM
           | MULTIPOLYGONZ
           | MULTIPOLYGONZM
           | MODE
           | MONTH
           | MOVE
           | NAMES
           | NAN_
           | NEVER
           | NEW
           | NEW_DB_NAME
           | NEW_KMS
           | NEXT
           | NO
           | NORMAL
           | NOTHING
           | NO_INDEX_JOIN
           | NO_ZIGZAG_JOIN
           | NO_FULL_SCAN
           | NOBYPASSRLS
           | NOCREATEDB
           | NOCREATELOGIN
           | NOCANCELQUERY
           | NOCREATEROLE
           | NOCONTROLCHANGEFEED
           | NOCONTROLJOB
           | NODE
           | NOLOGIN
           | NOMODIFYCLUSTERSETTING
           | NONVOTERS
           | NOREPLICATION
           | NOSQLLOGIN
           | NOVIEWACTIVITY
           | NOVIEWACTIVITYREDACTED
           | NOVIEWCLUSTERSETTING
           | NOWAIT
           | NULLS
           | IGNORE_FOREIGN_KEYS
           | INSENSITIVE
           | OF
           | OFF
           | OIDS
           | OLD
           | OLD_KMS
           | OPERATOR
           | OPT
           | OPTION
           | OPTIONS
           | ORDINALITY
           | OTHERS
           | OVER
           | OWNED
           | OWNER
           | PARALLEL
           | PARENT
           | PARTIAL
           | PARTITION
           | PARTITIONS
           | PASSWORD
           | PAUSE
           | PAUSED
           | PER
           | PERMISSIVE
           | PHYSICAL
           | PLACEMENT
           | PLAN
           | PLANS
           | POINTM
           | POINTZ
           | POINTZM
           | POLICIES
           | POLICY
           | POLYGONM
           | POLYGONZ
           | POLYGONZM
           | PRECEDING
           | PREPARE
           | PREPARED
           | PRESERVE
           | PRIOR
           | PRIORITY
           | PRIVILEGES
           | PROCEDURE
           | PROCEDURES
           | PROVISIONSRC
           | PUBLIC
           | PUBLICATION
           | QUERIES
           | QUERY
           | QUOTE
           | RANGE
           | RANGES
           | READ
           | REASON
           | REASSIGN
           | RECURRING
           | RECURSIVE
           | REDACT
           | REF
           | REFERENCING
           | REFRESH
           | REGION
           | REGIONAL
           | REGIONS
           | REINDEX
           | RELATIVE
           | RELEASE
           | RELOCATE
           | REMOVE_REGIONS
           | RENAME
           | REPEATABLE
           | REPLACE
           | REPLICATED
           | REPLICATION
           | RESET
           | RESTART
           | RESTORE
           | RESTRICT
           | RESTRICTED
           | RESTRICTIVE
           | RESUME
           | RETENTION
           | RETURN
           | RETURNS
           | REVISION_HISTORY
           | REVOKE
           | ROLE
           | ROLES
           | ROLLBACK
           | ROLLUP
           | ROUTINES
           | ROWS
           | RULE
           | RUN
           | RUNNING
           | SCHEDULE
           | SCHEDULES
           | SCHEMA_ONLY
           | SCROLL
           | SETTING
           | SETTINGS
           | STATUS
           | SAVEPOINT
           | SCANS
           | SCATTER
           | SCHEMA
           | SCHEMAS
           | SCRUB
           | SEARCH
           | SECOND
           | SECURITY
           | SECURITY_INVOKER
           | SECONDARY
           | SERIALIZABLE
           | SEQUENCE
           | SEQUENCES
           | SERVER
           | SERVICE
           | SESSION
           | SESSIONS
           | SET
           | SETS
           | SHARE
           | SHARED
           | SHOW
           | SIMPLE
           | SIZE
           | SKIP_
           | SKIP_LOCALITIES_CHECK
           | SKIP_MISSING_FOREIGN_KEYS
           | SKIP_MISSING_SEQUENCES
           | SKIP_MISSING_SEQUENCE_OWNERS
           | SKIP_MISSING_VIEWS
           | SKIP_MISSING_UDFS
           | SOURCE
           | SNAPSHOT
           | SPLIT
           | SQL
           | SQLLOGIN
           | STABLE
           | START
           | STATE
           | STATEMENT
           | STATEMENTS
           | STATISTICS
           | STDIN
           | STDOUT
           | STOP
           | STORAGE
           | STORE
           | STORED
           | STORING
           | STRAIGHT
           | STREAM
           | STRICT
           | SUBSCRIPTION
           | SUBJECT
           | SUPER
           | SUPPORT
           | SURVIVE
           | SURVIVAL
           | SYNTAX
           | SYSTEM
           | TABLES
           | TABLESPACE
           | TEMP
           | TEMPLATE
           | TEMPORARY
           | TENANT
           | TENANT_NAME
           | TENANTS
           | TESTING_RELOCATE
           | TEXT
           | TIES
           | TRACE
           | TRACING
           | TRANSACTION
           | TRANSACTIONS
           | TRANSFER
           | TRANSFORM
           | TRIGGER
           | TRIGGERS
           | TRUNCATE
           | TRUSTED
           | TYPE
           | TYPES
           | THROTTLING
           | UNIDIRECTIONAL
           | UNBOUNDED
           | UNCOMMITTED
           | UNKNOWN
           | UNLISTEN
           | UNLOGGED
           | UNSAFE_RESTORE_INCOMPATIBLE_VERSION
           | UNSET
           | UNSPLIT
           | UNTIL
           | UPDATE
           | UPDATES_CLUSTER_MONITORING_METRICS
           | UPSERT
           | USE
           | USERS
           | VALID
           | VALIDATE
           | VALUE
           | VARIABLES
           | VARYING
           | VERIFY_BACKUP_TABLE_DATA
           | VIEW
           | VIEWACTIVITY
           | VIEWACTIVITYREDACTED
           | VIEWCLUSTERSETTING
           | VIRTUAL_CLUSTER_NAME
           | VIRTUAL_CLUSTER
           | VISIBLE
           | VISIBILITY
           | VOLATILE
           | VOTERS
           | WITHIN
           | WITHOUT
           | WRITE
           | YEAR
           | ZONE

    col_name_keyword ::= ANNOTATE_TYPE
           | BETWEEN
           | BIGINT
           | BIT
           | BOOLEAN
           | BOX2D
           | CHAR
           | CHARACTER
           | CHARACTERISTICS
           | COALESCE
           | DEC
           | DECIMAL
           | EXISTS
           | EXTRACT
           | EXTRACT_DURATION
           | FLOAT
           | GEOGRAPHY
           | GEOMETRY
           | GREATEST
           | GROUPING
           | IF
           | IFERROR
           | IFNULL
           | INOUT
           | INT_
           | INTEGER
           | INTERVAL
           | ISERROR
           | LEAST
           | NULLIF
           | NUMERIC
           | OUT
           | OVERLAY
           | POINT
           | POLYGON
           | POSITION
           | PRECISION
           | REAL
           | ROW
           | SETOF
           | SMALLINT
           | STRING
           | SUBSTRING
           | TIME
           | TIMETZ
           | TIMESTAMP
           | TIMESTAMPTZ
           | TREAT
           | TRIM
           | VALUES
           | VARBIT
           | VARCHAR
           | VECTOR
           | VIRTUAL
           | WORK

    column_name ::= name

    collation_name ::= unrestricted_name

    constraint_name ::= name

    cursor_name ::= name

    database_name ::= name

    func_application_name ::= func_name
           | LBRACKET FUNCTION iconst RBRACKET

    func_name ::= type_function_name
           | prefixed_column_path
           | INDEX

    index_name ::= name

    view_name ::= table_name

    savepoint_name ::= opt_1015 name

    statistics_name ::= name

    qualifiable_schema_name ::= name opt_1017

    table_index_name ::= table_name AT index_name
           | standalone_index_name

    standalone_index_name ::= db_object_name

    db_object_name ::= simple_db_object_name
           | complex_db_object_name

    simple_db_object_name ::= db_object_name_component

    db_object_name_component ::= name
           | FAMILY
           | cockroachdb_extra_reserved_keyword

    complex_db_object_name ::= db_object_name_component DOT unrestricted_name opt_1019

    db_name ::= db_object_name

    family_name ::= name

    sequence_name ::= db_object_name

    table_name ::= db_object_name

    type_name ::= db_object_name

    unrestricted_name ::= identifier_
           | unreserved_keyword
           | col_name_keyword
           | type_func_name_keyword
           | reserved_keyword

    type_func_name_keyword ::= type_func_name_no_crdb_extra_keyword
           | FAMILY

    reserved_keyword ::= ALL
           | ANALYSE
           | ANALYZE
           | AND
           | ANY
           | ARRAY
           | AS
           | ASC
           | ASYMMETRIC
           | BOTH
           | CASE
           | CAST
           | CHECK
           | COLLATE
           | COLUMN
           | CONCURRENTLY
           | CONSTRAINT
           | CREATE
           | CURRENT_CATALOG
           | CURRENT_DATE
           | CURRENT_ROLE
           | CURRENT_SCHEMA
           | CURRENT_TIME
           | CURRENT_TIMESTAMP
           | CURRENT_USER
           | DEFAULT
           | DEFERRABLE
           | DESC
           | DISTINCT
           | DO
           | ELSE
           | END
           | EXCEPT
           | FALSE
           | FETCH
           | FOR
           | FOREIGN
           | FROM
           | GRANT
           | GROUP
           | HAVING
           | IN
           | INITIALLY
           | INTERSECT
           | INTO
           | LATERAL
           | LEADING
           | LIMIT
           | LOCALTIME
           | LOCALTIMESTAMP
           | NOT
           | NULL_
           | OFFSET
           | ON
           | ONLY
           | OR
           | ORDER
           | PLACING
           | PRIMARY
           | REFERENCES
           | RETURNING
           | SELECT
           | SESSION_USER
           | SOME
           | SYMMETRIC
           | TABLE
           | THEN
           | TO
           | TRAILING
           | TRUE
           | UNION
           | UNIQUE
           | USER
           | USING
           | VARIADIC
           | WHEN
           | WHERE
           | WINDOW
           | WITH
           | cockroachdb_extra_reserved_keyword

    cockroachdb_extra_reserved_keyword ::= INDEX
           | NOTHING

    opt_1 ::= stmt_list | $empty

    seq_2 ::= SEMI stmt

    list_3 ::= $empty | list_3 seq_2

    opt_4 ::= SEMI | $empty

    grp_5 ::= ANALYZE | ANALYSE

    opt_7 ::= ALL | $empty

    grp_6 ::= opt_7 expr_list opt_sort_clause_no_index | DISTINCT expr_list | STAR

    opt_8 ::= sort_clause_no_index | $empty

    grp_10 ::= sortby | sortby_index

    grp_9 ::= COMMA grp_10

    list_11 ::= $empty | list_11 grp_9

    opt_12 ::= opt_asc_desc | $empty

    opt_13 ::= opt_nulls_order | $empty

    grp_14 ::= FIRST | LAST

    grp_15 ::= PRIMARY KEY table_name | INDEX table_name AT index_name

    opt_16 ::= opt_asc_desc | $empty

    opt_18 ::= opt_column_list | $empty

    opt_20 ::= opt_with_copy_options | $empty

    opt_21 ::= opt_where_clause | $empty

    opt_22 ::= opt_with_copy_options | $empty

    grp_19 ::= FROM STDIN opt_20 opt_21 | TO STDOUT opt_22

    opt_23 ::= opt_with_copy_options | $empty

    grp_17 ::= table_name opt_18 grp_19 | LPAREN copy_to_stmt RPAREN TO STDOUT opt_23

    opt_24 ::= opt_with | $empty

    grp_25 ::= copy_options_list | LPAREN copy_generic_options_list RPAREN

    list_26 ::= copy_options | list_26 copy_options

    grp_27 ::= DESTINATION EQ | DELIMITER | NULL_

    grp_28 ::= QUOTE | ESCAPE | ENCODING

    seq_29 ::= COMMA copy_generic_options

    list_30 ::= $empty | list_30 seq_29

    grp_31 ::= DESTINATION EQ | DELIMITER | NULL_

    grp_32 ::= BINARY | CSV | TEXT | sconst

    grp_33 ::= TRUE | FALSE

    opt_34 ::= grp_33 | $empty

    grp_35 ::= QUOTE | ESCAPE | ENCODING

    grp_36 ::= DATABASE database_name | SCHEMA qualifiable_schema_name | TYPE type_name | TABLE table_name | CONSTRAINT constraint_name ON table_name | COLUMN column_path | INDEX table_index_name

    opt_37 ::= execute_param_clause | $empty

    opt_38 ::= PREPARE | $empty

    grp_39 ::= name | ALL

    grp_40 ::= ALL | SEQUENCES | TEMP | TEMPORARY

    list_41 ::= do_stmt_opt_item | list_41 do_stmt_opt_item

    grp_45 ::= SEQUENCES | TABLES | FUNCTIONS | PROCEDURES | ROUTINES

    grp_44 ::= ALL grp_45 IN

    opt_46 ::= grp_44 | $empty

    grp_43 ::= grant_targets | TYPE target_types | opt_46 SCHEMA schema_name_list

    opt_47 ::= opt_with_grant_option | $empty

    seq_48 ::= WITH ADMIN OPITON

    opt_49 ::= seq_48 | $empty

    grp_42 ::= privileges ON grp_43 TO role_spec_list opt_47 | SYSTEM privileges | privilege_list TO role_spec_list opt_49

    opt_50 ::= opt_privilege_clause | $empty

    grp_51 ::= SEQUENCE | table_pattern COMMA | TABLE

    grp_52 ::= DATABASE | EXTERNAL CONNECTION

    grp_53 ::= FUNCTION | PROCEDURE

    seq_54 ::= COMMA table_pattern

    list_55 ::= $empty | list_55 seq_54

    seq_56 ::= COMMA name

    list_57 ::= $empty | list_57 seq_56

    seq_58 ::= COMMA function_with_paramtypes

    list_59 ::= $empty | list_59 seq_58

    opt_60 ::= func_params | $empty

    opt_61 ::= func_params_list | $empty

    seq_62 ::= COMMA routine_param

    list_63 ::= $empty | list_63 seq_62

    opt_65 ::= param_name | $empty

    seq_66 ::= routine_param_class opt_65

    opt_67 ::= seq_66 | $empty

    opt_68 ::= routine_param_class | $empty

    grp_64 ::= opt_67 | param_name opt_68

    opt_69 ::= OUT | $empty

    grp_70 ::= opt_array_bounds | ARRAY

    opt_71 ::= grp_70 | $empty

    seq_72 ::= DOT unrestricted_name

    opt_73 ::= seq_72 | $empty

    opt_74 ::= opt_float | $empty

    grp_75 ::= DECIMAL | DEC | NUMERIC

    opt_76 ::= opt_numeric_modifiers | $empty

    seq_77 ::= COMMA iconst

    opt_78 ::= seq_77 | $empty

    opt_79 ::= VARYING | $empty

    opt_81 ::= opt_varying | $empty

    grp_80 ::= BIT opt_81 | VARBIT

    opt_82 ::= VARYING | $empty

    grp_83 ::= TIME | TIMESTAMP

    opt_84 ::= iconst_in_parentheses | $empty

    opt_85 ::= opt_timezone | $empty

    grp_86 ::= TIMETZ | TIMESTAMPTZ

    opt_87 ::= iconst_in_parentheses | $empty

    grp_88 ::= WITH | WITHOUT

    grp_89 ::= GEOGRAPGHY | GEOMETRY

    seq_90 ::= COMMA signed_iconst

    opt_91 ::= seq_90 | $empty

    seq_92 ::= LPAREN geo_shape_type opt_91 RPAREN

    opt_93 ::= seq_92 | $empty

    grp_94 ::= PLUS | MINUS

    grp_95 ::= PLUS | MINUS

    opt_96 ::= iconst_in_parentheses | $empty

    grp_97 ::= interval_qualifier | iconst_in_parentheses

    opt_98 ::= grp_97 | $empty

    seq_99 ::= TO MONTH

    opt_100 ::= seq_99 | $empty

    grp_102 ::= HOUR | MINUTE | interval_second

    grp_101 ::= TO grp_102

    opt_103 ::= grp_101 | $empty

    grp_105 ::= MINUTE | interval_second

    grp_104 ::= TO grp_105

    opt_106 ::= grp_104 | $empty

    seq_107 ::= TO interval_second

    opt_108 ::= seq_107 | $empty

    opt_109 ::= iconst_in_parentheses | $empty

    seq_110 ::= unrestricted_name DOT

    opt_111 ::= seq_110 | $empty

    seq_112 ::= db_object_name_component DOT opt_111

    opt_113 ::= seq_112 | $empty

    seq_114 ::= COMMA type_name

    list_115 ::= $empty | list_115 seq_114

    seq_116 ::= COMMA qualifiable_schema_name

    list_117 ::= $empty | list_117 seq_116

    seq_118 ::= COMMA role_spec

    list_119 ::= $empty | list_119 seq_118

    seq_120 ::= COMMA privilege

    list_121 ::= $empty | list_121 seq_120

    opt_122 ::= prep_type_clause | $empty

    seq_123 ::= COMMA typename

    list_124 ::= $empty | list_124 seq_123

    grp_128 ::= TABLES | SEQUENCES | FUNCTIONS | PROCEDURES | ROUTINES

    grp_127 ::= ALL grp_128 IN

    opt_129 ::= grp_127 | $empty

    grp_126 ::= grant_targets | TYPE target_types | opt_129 SCHEMA schema_name_list

    seq_130 ::= ADMIN OPTION FOR

    opt_131 ::= seq_130 | $empty

    grp_135 ::= TABLES | FUNCTIONS | PROCEDURES | ROUTINES

    opt_136 ::= grp_135 | $empty

    grp_134 ::= ALL opt_136 IN

    opt_137 ::= grp_134 | $empty

    grp_133 ::= grant_targets | TYPE target_types | opt_137 SCHEMA schema_name_list

    grp_132 ::= privileges ON grp_133 | SYSTEM privileges

    grp_125 ::= privileges ON grp_126 | opt_131 privilege_list | SYSTEM privileges | GRANT OPTION FOR grp_132

    opt_138 ::= opt_concurrently | $empty

    opt_139 ::= opt_as_of_clause | $empty

    opt_140 ::= opt_clear_data | $empty

    opt_141 ::= NO | $empty

    opt_142 ::= SESSION | $empty

    opt_143 ::= COMMA | $empty

    seq_144 ::= opt_143 transaction_mode

    list_145 ::= $empty | list_145 seq_144

    grp_146 ::= UNCOMMITTED | COMMITTED

    grp_147 ::= ONLY | WRITE

    opt_148 ::= NOT | $empty

    opt_149 ::= begin_transaction | $empty

    opt_150 ::= opt_transaction | $empty

    opt_151 ::= opt_transaction | $empty

    seq_152 ::= TO savepoint_name

    opt_153 ::= seq_152 | $empty

    opt_154 ::= opt_abort_mod | $empty

    grp_155 ::= ALL | cursor_name

    opt_156 ::= opt_binary | $empty

    opt_157 ::= opt_sensitivity | $empty

    opt_158 ::= opt_scroll | $empty

    opt_159 ::= opt_hold | $empty

    opt_160 ::= NO | $empty

    grp_161 ::= WITH | WITHOUT

    grp_164 ::= ABSOLUTE | RELATIVE

    grp_165 ::= signed_iconst64 | ALL

    grp_163 ::= next_prior | forward_backward | grp_164 signed_iconst64 | FIRST | LAST | opt_forward_backward grp_165

    grp_162 ::= from_or_in | grp_163 opt_from_or_in

    opt_166 ::= from_or_in | $empty

    opt_167 ::= forward_backward | $empty

    grp_168 ::= type_name | STAR

    opt_169 ::= opt_transaction | $empty

    opt_170 ::= opt_transaction | $empty

    opt_171 ::= if_exists | $empty

    opt_172 ::= if_not_exists | $empty

    opt_174 ::= if_exists | $empty

    opt_176 ::= opt_in_database | $empty

    grp_175 ::= opt_role_options | opt_176 set_or_reset_clause

    grp_177 ::= ROLE_ALL | USER_ALL

    opt_178 ::= opt_in_database | $empty

    grp_173 ::= role_or_group_or_user opt_174 role_spec grp_175 | grp_177 ALL opt_178 set_or_reset_clause

    grp_180 ::= PAUSE | RESUME

    grp_181 ::= SYSTEM TIME a_expr | LATEST

    grp_182 ::= replication_options_list | SOUCE source_replication_options_list

    opt_183 ::= opt_with_replication_options | $empty

    grp_179 ::= grp_180 REPLICATION | COMPLETE REPLICATION TO grp_181 | SET REPLICATION grp_182 | START REPLICATION OF d_expr ON d_expr opt_183

    seq_184 ::= COMMA replication_options

    list_185 ::= $empty | list_185 seq_184

    seq_186 ::= COMMA source_replication_options

    list_187 ::= $empty | list_187 seq_186

    grp_188 ::= replication_options_list | OPTIONS LPAREN replication_options_list RPAREN

    grp_189 ::= GRANT | REVOKE

    grp_190 ::= START SERVICE SHARED | STOP SERVICE

    opt_191 ::= if_exists | $empty

    seq_192 ::= COMMA alter_table_cmd

    list_193 ::= $empty | list_193 seq_192

    opt_195 ::= opt_column | $empty

    grp_194 ::= opt_195 | CONSTRAINT

    opt_197 ::= COLUMN | $empty

    opt_198 ::= if_not_exists | $empty

    opt_200 ::= if_not_exists | $empty

    grp_199 ::= table_constraint | CONSTRAINT opt_200 constraint_name constraint_elem

    opt_201 ::= opt_validate_behavior | $empty

    grp_196 ::= opt_197 opt_198 column_table_def | grp_199 opt_201

    opt_203 ::= opt_column | $empty

    opt_206 ::= if_exists | $empty

    grp_205 ::= NOT NULL_ | IDENTITY opt_206 | STORED

    grp_207 ::= generated_always_as | generated_by_default_as

    seq_208 ::= LPAREN opt_sequence_option_list RPAREN

    opt_209 ::= seq_208 | $empty

    opt_210 ::= opt_set_data | $empty

    opt_211 ::= opt_collate | $empty

    opt_212 ::= opt_alter_column_using | $empty

    grp_204 ::= alter_column_default | alter_column_on_update | alter_column_visible | DROP grp_205 | ADD grp_207 IDENTITY opt_209 | set_generated_always | set_generated_default | identity_option_list | SET NOT NULL_ | opt_210 TYPE typename opt_211 opt_212

    opt_213 ::= opt_hash_sharded | $empty

    grp_202 ::= opt_203 column_name grp_204 | PRIMARY KEY USING COLUMNS LPAREN index_params RPAREN opt_213 opt_with_storage_parameter_list

    opt_215 ::= opt_column | $empty

    opt_216 ::= if_exists | $empty

    opt_217 ::= if_exists | $empty

    grp_214 ::= opt_215 opt_216 column_name | CONSTRAINT opt_217 constraint_name

    opt_218 ::= opt_drop_behavior | $empty

    seq_219 ::= CONSTRAINT constraint_name

    opt_220 ::= seq_219 | $empty

    opt_221 ::= opt_storing | $empty

    opt_222 ::= opt_partition_by_index | $empty

    opt_223 ::= opt_where_clause | $empty

    opt_224 ::= NOT | $empty

    list_225 ::= identity_option_elem | list_225 identity_option_elem

    grp_227 ::= CYCLE | MINVALUE | MAXVALUE

    grp_230 ::= NODE | SESSION

    grp_229 ::= PER grp_230

    opt_231 ::= BY | $empty

    opt_232 ::= WITH | $empty

    grp_228 ::= grp_229 CACHE | MINVALUE | MAXVALUE | INCREMENT opt_231 | START opt_232

    grp_226 ::= NO grp_227 | grp_228 signed_iconst64

    opt_233 ::= WITH | $empty

    seq_234 ::= opt_233 signed_iconst64

    opt_235 ::= seq_234 | $empty

    list_236 ::= $empty | list_236 col_qualification

    seq_237 ::= CONSTRAINT constraint_name

    opt_238 ::= seq_237 | $empty

    opt_240 ::= family_name | $empty

    opt_241 ::= if_not_exists | $empty

    grp_239 ::= FAMILTY opt_240 | opt_241 FAMILY family_name

    grp_242 ::= NULL_ | VISIBLE

    seq_243 ::= USING HASH opt_hash_sharded_bucket_count

    opt_244 ::= seq_243 | $empty

    grp_245 ::= DEFAULT | ON UPDATE

    opt_246 ::= opt_name_parens | $empty

    opt_247 ::= key_match | $empty

    grp_248 ::= STORED | VIRTUAL

    grp_249 ::= generated_always_as | generated_by_default_as

    opt_250 ::= opt_sequence_option_list | $empty

    seq_251 ::= LPAREN opt_250 RPAREN

    opt_252 ::= seq_251 | $empty

    grp_253 ::= SIMPLE | FULL

    opt_254 ::= reference_on_delete | $empty

    opt_255 ::= reference_on_update | $empty

    grp_256 ::= NULL_ | DEFAULT

    list_257 ::= sequence_option_elem | list_257 sequence_option_elem

    grp_258 ::= CYCLE | MINVALUE | MAXVALUE

    grp_259 ::= NONE | column_path

    grp_262 ::= NODE | SESSION

    grp_261 ::= PER grp_262

    opt_263 ::= grp_261 | $empty

    opt_264 ::= BY | $empty

    opt_265 ::= WITH | $empty

    grp_260 ::= opt_263 CACHE | MINVALUE | MAXVALUE | INCREMENT opt_264 | START opt_265

    opt_266 ::= WITH | $empty

    seq_267 ::= opt_266 signed_iconst64

    opt_268 ::= seq_267 | $empty

    seq_269 ::= COMMA index_elem

    list_270 ::= $empty | list_270 seq_269

    grp_271 ::= func_expr_windowless | LPAREN a_expr RPAREN | name

    opt_272 ::= opt_class | $empty

    opt_273 ::= opt_asc_desc | $empty

    opt_274 ::= opt_nulls_order | $empty

    opt_275 ::= opt_hash_sharded_bucket_count | $empty

    seq_276 ::= COMMA list_partition

    list_277 ::= $empty | list_277 seq_276

    opt_278 ::= opt_partition_by | $empty

    seq_279 ::= COMMA range_partition

    list_280 ::= $empty | list_280 seq_279

    opt_281 ::= opt_partition_by | $empty

    seq_282 ::= COMMA storage_parameter

    list_283 ::= $empty | list_283 seq_282

    seq_284 ::= COMMA storage_parameter_key

    list_285 ::= $empty | list_285 seq_284

    opt_286 ::= NO | $empty

    seq_287 ::= WITH EXPIRATION a_expr

    opt_288 ::= seq_287 | $empty

    grp_289 ::= AT select_stmt | ALL

    seq_290 ::= FROM expr_list_in_parens TO expr_list_in_parens

    opt_291 ::= seq_290 | $empty

    opt_292 ::= if_exists | $empty

    opt_293 ::= if_exists | $empty

    grp_298 ::= region_name | PRIMARY REGION

    grp_297 ::= IN grp_298

    opt_299 ::= grp_297 | $empty

    seq_300 ::= AS name

    opt_301 ::= seq_300 | $empty

    grp_296 ::= TABLE opt_299 | ROW opt_301

    grp_302 ::= region_name | PRIMARY REGION

    grp_295 ::= BY grp_296 | IN grp_302

    opt_303 ::= grp_295 | $empty

    grp_294 ::= GLOBAL | REGIONAL opt_303

    opt_304 ::= if_exists | $empty

    grp_305 ::= LOGGED | UNLOGGED

    opt_306 ::= if_exists | $empty

    opt_307 ::= if_exists | $empty

    seq_308 ::= COMMA alter_index_cmd

    list_309 ::= $empty | list_309 seq_308

    seq_310 ::= WITH EXPIRATION a_expr

    opt_311 ::= seq_310 | $empty

    grp_312 ::= AT select_stmt | ALL

    seq_313 ::= FROM expr_list_in_parens TO expr_list_in_parens

    opt_314 ::= seq_313 | $empty

    opt_315 ::= if_exists | $empty

    opt_316 ::= if_exists | $empty

    opt_317 ::= NOT | $empty

    opt_318 ::= MATERIALIZED | $empty

    opt_319 ::= if_exists | $empty

    opt_320 ::= MATERIALIZED | $empty

    opt_321 ::= if_exists | $empty

    opt_322 ::= MATERIALIZED | $empty

    opt_323 ::= if_exists | $empty

    opt_324 ::= if_exists | $empty

    opt_325 ::= if_exists | $empty

    opt_326 ::= if_exists | $empty

    opt_327 ::= if_not_exists | $empty

    opt_328 ::= if_exists | $empty

    opt_329 ::= opt_equal | $empty

    grp_330 ::= REGION | ZONE

    opt_331 ::= SET | $empty

    opt_332 ::= opt_equal | $empty

    grp_333 ::= RESTRICTED | DEFAULT

    seq_334 ::= COMMA region_name

    list_335 ::= $empty | list_335 seq_334

    opt_336 ::= opt_equal | $empty

    opt_337 ::= if_exists | $empty

    seq_339 ::= IN region_name

    opt_340 ::= seq_339 | $empty

    grp_338 ::= GLOBAL | REGIONAL opt_340

    opt_341 ::= grp_338 | $empty

    grp_342 ::= relocate_kw lease_or_relocate_subject_nonlease TO a_expr FOR select_stmt | a_expr relocate_kw lease_or_relocate_subject_nonlease TO a_expr

    opt_343 ::= relocate_subject_nonlease | $empty

    grp_345 ::= table_index_name | table_name AT STAR

    grp_344 ::= TABLE table_name | INDEX grp_345

    grp_346 ::= USING var_set_list | DISCARD

    seq_347 ::= COMMA var_set_item

    list_348 ::= $empty | list_348 seq_347

    grp_349 ::= COPY FROM PARENT | var_value

    grp_350 ::= RENAME TO schema_name | OWNER TO role_spec

    opt_352 ::= if_not_exists | $empty

    opt_353 ::= opt_add_val_placement | $empty

    grp_354 ::= VALUE sconst TO sconst | TO name

    grp_351 ::= ADD VALUE opt_352 sconst opt_353 | DROP VALUE sconst | RENAME grp_354 | SET SCHEMA schema_name | OWNER TO role_spec

    grp_355 ::= BEFORE | AFTER

    grp_356 ::= opt_for_roles | FOR ALL ROLES

    opt_357 ::= opt_in_schemas | $empty

    grp_358 ::= abbreviated_grant_stmt | abbreviated_revoke_stmt

    opt_359 ::= opt_with_grant_option | $empty

    seq_360 ::= GRANT OPTION FOR

    opt_361 ::= seq_360 | $empty

    opt_362 ::= opt_drop_behavior | $empty

    list_363 ::= alter_changefeed_cmd | list_363 alter_changefeed_cmd

    opt_364 ::= opt_with_options | $empty

    seq_365 ::= COMMA changefeed_table_target

    list_366 ::= $empty | list_366 seq_365

    opt_367 ::= opt_table_prefix | $empty

    opt_368 ::= opt_chagefeed_family | $empty

    seq_369 ::= IN string_or_placeholder

    opt_370 ::= seq_369 | $empty

    list_371 ::= alter_backup_cmd | list_371 alter_backup_cmd

    opt_372 ::= ops_restrict | $empty

    list_373 ::= common_routine_opt_item | list_373 common_routine_opt_item

    grp_374 ::= CALLED | RETURNS NULL_

    opt_375 ::= EXTERNAL | $empty

    grp_376 ::= DEFINER | INVOKER

    opt_377 ::= NOT | $empty

    opt_378 ::= opt_no | $empty

    seq_379 ::= COMMA alter_backup_schedule_cmd

    list_380 ::= $empty | list_380 seq_379

    grp_382 ::= ALWAYS | sconst_or_placeholder

    grp_381 ::= LABEL sconst_or_placeholder | INTO string_or_placeholder_opt_list | WITH backup_options | cron_expr | FULL BACKUP grp_382 | SCHEDULE OPTION kv_option

    opt_383 ::= FULL | $empty

    grp_384 ::= name | sconst

    seq_385 ::= EQ string_or_placeholder

    opt_386 ::= seq_385 | $empty

    opt_388 ::= opt_policy_roles | $empty

    opt_389 ::= opt_policy_exprs | $empty

    grp_387 ::= RENAME TO name | opt_388 opt_389

    seq_391 ::= LPAREN a_expr RPAREN WITH CHECK

    opt_392 ::= seq_391 | $empty

    seq_393 ::= LPAREN a_expr RPAREN USING

    opt_394 ::= seq_393 | $empty

    grp_390 ::= USING opt_392 | WITH CHECK opt_394

    grp_396 ::= sconst_or_placeholder | LATEST

    grp_395 ::= grp_396 IN

    opt_397 ::= grp_395 | $empty

    grp_398 ::= table_pattern COMMA | TABLE

    seq_399 ::= COMMA string_or_placeholder

    list_400 ::= $empty | list_400 seq_399

    grp_401 ::= backup_options_list | OPTIONS LPAREN backup_options_list RPAREN

    grp_402 ::= ENCRYPTION_PASSPHRASE | EXECUTION LOCALITY

    grp_403 ::= REVISION_HISTORY | UPDATES_CLUSTER_MONITORING_METRICS

    seq_404 ::= EQ a_expr

    opt_405 ::= seq_404 | $empty

    grp_407 ::= TRUE | FALSE

    grp_406 ::= EQ grp_407

    opt_408 ::= grp_406 | $empty

    grp_409 ::= KMS | INCREMENTAL_LOCATION

    seq_410 ::= COMMA backup_options

    list_411 ::= $empty | list_411 seq_410

    grp_413 ::= select_stmt | for_schedules_clause

    grp_412 ::= JOB a_expr | JOBS grp_413

    opt_415 ::= if_exists | $empty

    opt_416 ::= if_exists | $empty

    grp_414 ::= QUERY opt_415 a_expr | QUERIES opt_416 select_stmt

    opt_418 ::= if_exists | $empty

    grp_417 ::= SESSION if_exists a_expr | SESSIONS opt_418 select_stmt

    opt_419 ::= opt_stats_columns | $empty

    opt_420 ::= opt_create_stats_options | $empty

    seq_421 ::= WITH OPTIONS

    opt_422 ::= seq_421 | $empty

    list_423 ::= create_stats_option | list_423 create_stats_option

    opt_425 ::= opt_with_options | $empty

    opt_426 ::= opt_with_options | $empty

    opt_427 ::= opt_where_clause | $empty

    grp_424 ::= for_with_lookahead_variants changefeed_table_targets opt_changefeed_sink opt_425 | opt_changefeed_sink opt_426 AS SELECT target_list FROM changefeed_target_expr opt_427

    opt_428 ::= if_not_exists | $empty

    opt_429 ::= opt_logical_replication_create_table_options | $empty

    seq_430 ::= COMMA db_object_name

    list_431 ::= $empty | list_431 seq_430

    grp_432 ::= logical_replication_create_table_options_list | OPTIONS LPAREN logical_replication_create_table_options_list RPAREN

    seq_433 ::= COMMA logical_replication_create_table_options

    list_434 ::= $empty | list_434 seq_433

    grp_436 ::= MODE | DISCARD | LABEL

    grp_435 ::= grp_436 EQ | BIDIRECTIONAL ON

    opt_438 ::= opt_with_options | $empty

    opt_439 ::= opt_with_options | $empty

    opt_440 ::= opt_where_clause | $empty

    opt_441 ::= opt_with_schedule_options | $empty

    grp_437 ::= changefeed_table_targets changefeed_sink opt_438 | changefeed_sink opt_439 AS SELECT target_list FROM changefeed_target_expr opt_440 cron_expr opt_441

    grp_442 ::= kv_option_list | LPAREN kv_option_list RPAREN

    opt_443 ::= opt_with_backup_options | $empty

    opt_444 ::= opt_full_backup_clause | $empty

    opt_445 ::= opt_with_schedule_options | $empty

    grp_446 ::= sconst_or_placeholder | ALWAYS

    opt_447 ::= if_not_exists | $empty

    opt_448 ::= opt_with | $empty

    opt_449 ::= opt_template_clause | $empty

    opt_450 ::= opt_encoding_clause | $empty

    opt_451 ::= opt_lc_collate_clause | $empty

    opt_452 ::= opt_lc_ctype_clause | $empty

    opt_453 ::= opt_connection_limit | $empty

    opt_454 ::= opt_primary_region_clause | $empty

    opt_455 ::= opt_regions_list | $empty

    opt_456 ::= opt_survival_goal_clause | $empty

    opt_457 ::= opt_placement_clause | $empty

    opt_458 ::= opt_owner_clause | $empty

    opt_459 ::= opt_super_region_clause | $empty

    opt_460 ::= opt_secondary_region_clause | $empty

    opt_461 ::= opt_equal | $empty

    opt_462 ::= opt_equal | $empty

    opt_463 ::= opt_equal | $empty

    opt_464 ::= opt_equal | $empty

    opt_465 ::= opt_equal | $empty

    opt_466 ::= opt_equal | $empty

    opt_467 ::= opt_equal | $empty

    opt_468 ::= UNIQUE | $empty

    opt_470 ::= opt_concurrently | $empty

    opt_472 ::= if_not_exists | $empty

    grp_471 ::= index_name | opt_472 index_name

    opt_473 ::= grp_471 | $empty

    opt_474 ::= opt_index_access_method | $empty

    grp_475 ::= INVERTED | VECTOR

    opt_476 ::= opt_concurrently | $empty

    opt_478 ::= if_not_exists | $empty

    grp_477 ::= index_name | opt_478 index_name

    opt_479 ::= grp_477 | $empty

    grp_469 ::= INDEX opt_470 opt_473 ON table_name opt_474 LPAREN index_params RPAREN opt_hash_sharded | grp_475 INDEX opt_476 opt_479 ON table_name LPAREN index_params RPAREN

    opt_480 ::= opt_storing | $empty

    opt_481 ::= opt_partition_by_index | $empty

    opt_482 ::= opt_with_storage_parameter_list | $empty

    opt_483 ::= opt_where_clause | $empty

    opt_484 ::= opt_index_visible | $empty

    opt_485 ::= if_not_exists | $empty

    opt_487 ::= opt_schema_name | $empty

    grp_486 ::= qualifiable_schema_name | opt_487 AUTHORIZATION role_spec

    opt_488 ::= opt_persistence_temp_table | $empty

    opt_489 ::= if_not_exists | $empty

    opt_490 ::= opt_table_elem_list | $empty

    opt_491 ::= partition_by_table | $empty

    opt_492 ::= opt_table_with | $empty

    opt_493 ::= opt_create_table_on_commit | $empty

    opt_494 ::= locality | $empty

    grp_495 ::= LOCAL | GLOBAL

    opt_496 ::= grp_495 | $empty

    grp_497 ::= TEMPORARY | TEMP

    seq_498 ::= COMMA table_elem

    list_499 ::= $empty | list_499 seq_498

    opt_501 ::= index_name | $empty

    grp_502 ::= INVERTED | VECTOR

    opt_503 ::= name | $empty

    grp_500 ::= INDEX name LPAREN index_params RPAREN opt_hash_sharded opt_storing | UNIQUE INDEX opt_501 | grp_502 INDEX opt_503 LPAREN index_params RPAREN

    opt_504 ::= opt_partition_by_index | $empty

    opt_505 ::= opt_with_storage_parameter_list | $empty

    opt_506 ::= opt_where_clause | $empty

    opt_507 ::= opt_index_visible | $empty

    opt_508 ::= NOT | $empty

    opt_509 ::= family_name | $empty

    grp_511 ::= INCLUDING | EXCLUDING

    grp_510 ::= grp_511 like_table_option

    list_512 ::= grp_510 | list_512 grp_510

    opt_513 ::= opt_persistence_temp_table | $empty

    opt_514 ::= if_not_exists | $empty

    opt_515 ::= create_as_opt_col_list | $empty

    opt_516 ::= opt_table_with | $empty

    opt_517 ::= create_as_col_qual_list | $empty

    opt_520 ::= create_as_col_qual_list | $empty

    grp_519 ::= column_name opt_520 | family_def | create_as_constraint_def

    grp_518 ::= COMMA grp_519

    list_521 ::= $empty | list_521 grp_518

    seq_522 ::= COMMA create_as_param

    list_523 ::= $empty | list_523 seq_522

    opt_524 ::= if_not_exists | $empty

    opt_526 ::= opt_enum_val_list | $empty

    opt_527 ::= opt_composite_type_list | $empty

    grp_525 ::= ENUM LPAREN opt_526 RPAREN | LPAREN opt_527 RPAREN

    seq_528 ::= COMMA sconst

    list_529 ::= $empty | list_529 seq_528

    seq_530 ::= COMMA name simple_typename

    list_531 ::= $empty | list_531 seq_530

    opt_534 ::= opt_temp | $empty

    opt_535 ::= if_not_exists | $empty

    opt_536 ::= opt_temp | $empty

    grp_533 ::= opt_534 VIEW opt_535 | or_replace opt_536 VIEW

    opt_537 ::= opt_column_list | $empty

    opt_538 ::= if_not_exists | $empty

    opt_539 ::= opt_column_list | $empty

    opt_540 ::= opt_with_data | $empty

    grp_532 ::= grp_533 view_name opt_537 AS select_stmt | MATERIALIZED VIEW opt_538 view_name opt_539 AS select_stmt opt_540

    opt_541 ::= opt_temp | $empty

    opt_542 ::= if_not_exists | $empty

    opt_543 ::= opt_sequence_option_list | $empty

    opt_544 ::= or_replace | $empty

    opt_545 ::= opt_routine_param_with_defaults_list | $empty

    opt_548 ::= opt_return_set | $empty

    grp_547 ::= opt_548 routine_return_type | TABLE LPAREN table_func_column_list RPAREN

    grp_546 ::= RETURNS grp_547

    opt_549 ::= grp_546 | $empty

    opt_550 ::= opt_create_routine_opt_list | $empty

    opt_551 ::= opt_routine_body | $empty

    seq_552 ::= COMMA table_func_column

    list_553 ::= $empty | list_553 seq_552

    opt_554 ::= or_replace | $empty

    opt_555 ::= opt_routine_param_with_defaults_list | $empty

    opt_556 ::= opt_create_routine_opt_list | $empty

    opt_557 ::= opt_routine_body | $empty

    seq_558 ::= COMMA routine_param_with_default

    list_559 ::= $empty | list_559 seq_558

    grp_561 ::= DEFAULT | EQ

    grp_560 ::= grp_561 a_expr

    opt_562 ::= grp_560 | $empty

    opt_563 ::= routine_body_stmt_list | $empty

    seq_564 ::= routine_body_stmt SEMI

    list_565 ::= seq_564 | list_565 seq_564

    opt_566 ::= or_replace | $empty

    opt_567 ::= trigger_for_each | $empty

    opt_568 ::= trigger_when | $empty

    opt_569 ::= trigger_func_args | $empty

    seq_570 ::= OF name_list

    opt_571 ::= seq_570 | $empty

    list_572 ::= trigger_transition | list_572 trigger_transition

    opt_573 ::= AS | $empty

    opt_574 ::= EACH | $empty

    seq_575 ::= COMMA trigger_func_arg

    list_576 ::= $empty | list_576 seq_575

    opt_577 ::= if_not_exists | $empty

    opt_578 ::= opt_policy_type | $empty

    opt_579 ::= opt_policy_command | $empty

    grp_580 ::= PERMISSIVE | RESTRICTIVE

    grp_581 ::= ALL | SELECT | INSERT | UPDATE | DELETE

    opt_582 ::= if_not_exists | $empty

    opt_583 ::= opt_role_options | $empty

    opt_584 ::= opt_with | $empty

    list_585 ::= role_option | list_585 role_option

    grp_586 ::= sconst_or_placeholder | NULL_

    grp_587 ::= string_or_placeholder | NULL_

    grp_588 ::= string_or_placeholder | NULL_

    opt_589 ::= opt_with_check_external_connection_options_list | $empty

    grp_590 ::= check_external_connection_options_list | OPTIONS LPAREN check_external_connection_options_list RPAREN

    seq_591 ::= COMMA check_external_connection_options

    list_592 ::= $empty | list_592 seq_591

    grp_593 ::= TRANSFER | TIME

    opt_594 ::= opt_with_clause | $empty

    opt_595 ::= opt_batch_clause | $empty

    opt_596 ::= opt_using_clause | $empty

    opt_597 ::= opt_where_clause | $empty

    opt_598 ::= sort_clause | $empty

    opt_599 ::= limit_clause | $empty

    opt_600 ::= RECURSIVE | $empty

    seq_601 ::= LPAREN batch_param_list RPAREN

    opt_602 ::= seq_601 | $empty

    seq_603 ::= COMMA batch_param

    list_604 ::= $empty | list_604 seq_603

    seq_605 ::= COMMA common_table_expr

    list_606 ::= $empty | list_606 seq_605

    opt_607 ::= opt_col_def_list_no_types | $empty

    opt_608 ::= materialized_clause | $empty

    seq_609 ::= COMMA name

    list_610 ::= $empty | list_610 seq_609

    opt_611 ::= NOT | $empty

    grp_612 ::= ANALYZE | ANALYSE

    opt_613 ::= grp_612 | $empty

    seq_614 ::= LPAREN explain_option_list RPAREN

    opt_615 ::= seq_614 | $empty

    seq_616 ::= COMMA explain_option_name

    list_617 ::= $empty | list_617 seq_616

    seq_618 ::= LPAREN insert_column_list RPAREN

    opt_619 ::= seq_618 | $empty

    opt_620 ::= opt_with_options | $empty

    seq_621 ::= COMMA insert_column_item

    list_622 ::= $empty | list_622 seq_621

    grp_623 ::= kv_option_list | OPTIONS LPAREN kv_option_list RPAREN

    seq_624 ::= COMMA kv_option

    list_625 ::= $empty | list_625 seq_624

    grp_626 ::= name | sconst

    seq_627 ::= EQ string_or_placeholder

    opt_628 ::= seq_627 | $empty

    opt_629 ::= on_conflict | $empty

    opt_630 ::= returning_clause | $empty

    seq_631 ::= AS table_alias_name

    opt_632 ::= seq_631 | $empty

    opt_633 ::= opt_index_flags | $empty

    opt_634 ::= ONLY | $empty

    grp_635 ::= index_name | LBRACKET iconst RBRACKET | LBRACE index_flags_param_list RBRACE

    seq_636 ::= COMMA index_flags_param

    list_637 ::= $empty | list_637 seq_636

    seq_638 ::= EQ index_name

    opt_639 ::= seq_638 | $empty

    opt_640 ::= STAR | $empty

    seq_641 ::= LPAREN insert_column_list RPAREN

    opt_642 ::= seq_641 | $empty

    opt_645 ::= opt_where_clause | $empty

    grp_644 ::= LPAREN name_list RPAREN opt_645 | ON CONSTRAINT constraint_name

    opt_647 ::= opt_where_clause | $empty

    grp_646 ::= NOTHING | UPDATE SET set_clause_list opt_647

    grp_643 ::= DO NOTHING | grp_644 DO grp_646

    seq_648 ::= COMMA set_clause

    list_649 ::= $empty | list_649 seq_648

    grp_650 ::= target_list | NOTHING

    seq_651 ::= COMMA target_elem

    list_652 ::= $empty | list_652 seq_651

    grp_653 ::= AS target_name | bare_col_label

    opt_654 ::= grp_653 | $empty

    opt_655 ::= opt_as_of_clause | $empty

    opt_656 ::= opt_inspect_options_clause | $empty

    seq_657 ::= COMMA inspect_option

    list_658 ::= $empty | list_658 seq_657

    grp_659 ::= ALL | LPAREN table_index_name_list RPAREN

    opt_660 ::= opt_as_of_clause | $empty

    opt_661 ::= opt_inspect_options_clause | $empty

    opt_663 ::= with_reason | $empty

    opt_665 ::= with_reason | $empty

    grp_664 ::= select_stmt opt_665 | for_schedules_clause

    grp_662 ::= JOB a_expr opt_663 | JOBS grp_664

    grp_666 ::= SCHEDULE a_expr | SCHEDULES select_stmt

    opt_667 ::= SESSION | $empty

    opt_668 ::= session_var_parts | $empty

    seq_669 ::= DOT identifier_

    list_670 ::= seq_669 | list_670 seq_669

    opt_671 ::= attrs | $empty

    seq_672 ::= DOT unrestricted_name

    list_673 ::= seq_672 | list_673 seq_672

    grp_674 ::= backup_targets | SYSTEM USERS

    opt_675 ::= grp_674 | $empty

    opt_676 ::= opt_as_of_clause | $empty

    opt_677 ::= opt_with_restore_options | $empty

    grp_678 ::= restore_options_list | OPTIONS LPAREN restore_options_list RPAREN

    seq_679 ::= COMMA restore_options

    list_680 ::= $empty | list_680 seq_679

    grp_681 ::= ENCRYPTION_PASSPHRASE | INTO_DB | NEW_DB_NAME | VIRTUAL_CLUSTER_NAME | VIRTUAL_CLUSTER | EXECUTION LOCALITY

    grp_682 ::= KMS | INCREMENTAL_LOCATION

    opt_683 ::= DEFERRED | $empty

    grp_685 ::= select_stmt | for_schedules_clause

    grp_684 ::= JOB a_expr | JOBS grp_685

    grp_686 ::= SCHEDULES select_stmt | SCHEDULE a_expr

    grp_687 ::= SCHEDULES select_stmt | SCHEDULE a_expr

    opt_688 ::= opt_with_options | $empty

    opt_689 ::= opt_as_of_clause | $empty

    opt_690 ::= opt_scrub_options_clause | $empty

    seq_691 ::= COMMA scrub_option

    list_692 ::= $empty | list_692 seq_691

    grp_693 ::= INDEX | CONSTRAINT

    grp_694 ::= ALL | LPAREN name_list RPAREN

    opt_695 ::= opt_as_of_clause | $empty

    opt_696 ::= if_exists | $empty

    grp_697 ::= SCHEDULE a_expr | SCHEDULES select_stmt

    opt_698 ::= if_exists | $empty

    opt_699 ::= opt_drop_behavior | $empty

    opt_700 ::= opt_concurrently | $empty

    opt_701 ::= if_exists | $empty

    opt_702 ::= opt_drop_behavior | $empty

    seq_703 ::= COMMA table_index_name

    list_704 ::= $empty | list_704 seq_703

    opt_705 ::= if_exists | $empty

    opt_706 ::= opt_drop_behavior | $empty

    seq_707 ::= COMMA db_object_name

    list_708 ::= $empty | list_708 seq_707

    opt_709 ::= MATERIALIZED | $empty

    opt_710 ::= if_exists | $empty

    opt_711 ::= opt_drop_behavior | $empty

    opt_712 ::= if_exists | $empty

    opt_713 ::= opt_drop_behavior | $empty

    opt_714 ::= if_exists | $empty

    opt_715 ::= opt_drop_behavior | $empty

    opt_716 ::= if_exists | $empty

    opt_717 ::= opt_drop_behavior | $empty

    opt_718 ::= if_exists | $empty

    opt_719 ::= opt_drop_behavior | $empty

    opt_720 ::= if_exists | $empty

    opt_721 ::= function_with_paramtypes_list | $empty

    opt_722 ::= opt_drop_behavior | $empty

    opt_723 ::= if_exists | $empty

    opt_724 ::= opt_drop_behavior | $empty

    opt_725 ::= if_exists | $empty

    opt_726 ::= opt_drop_behavior | $empty

    opt_728 ::= sort_clause | $empty

    opt_730 ::= select_limit | $empty

    opt_731 ::= for_locking_clause | $empty

    grp_729 ::= for_locking_clause opt_730 | select_limit opt_731

    grp_727 ::= sort_clause | opt_728 grp_729

    opt_733 ::= sort_clause | $empty

    opt_735 ::= select_limit | $empty

    opt_736 ::= for_locking_clause | $empty

    grp_734 ::= for_locking_clause opt_735 | select_limit opt_736

    grp_732 ::= sort_clause | opt_733 grp_734

    opt_737 ::= grp_732 | $empty

    grp_738 ::= UNION | INTERSECT | EXCEPT

    opt_739 ::= all_or_distinct | $empty

    opt_741 ::= opt_all_clause | $empty

    opt_742 ::= target_list | $empty

    grp_743 ::= DISTINCT | distinct_on_clause

    grp_740 ::= opt_741 opt_742 | grp_743 target_list

    opt_744 ::= from_clause | $empty

    opt_745 ::= where_clause | $empty

    opt_746 ::= group_clause | $empty

    opt_747 ::= having_clause | $empty

    opt_748 ::= window_clause | $empty

    opt_749 ::= as_of_clause | $empty

    seq_750 ::= COMMA table_ref

    list_751 ::= $empty | list_751 seq_750

    seq_752 ::= COMMA group_by_item

    list_753 ::= $empty | list_753 seq_752

    seq_754 ::= COMMA window_definition

    list_755 ::= $empty | list_755 seq_754

    opt_756 ::= opt_existing_window_name | $empty

    opt_757 ::= opt_partition_clause | $empty

    opt_758 ::= opt_frame_clause | $empty

    grp_759 ::= RANGE | ROWS | GROUPS

    opt_760 ::= opt_frame_exclusion | $empty

    seq_761 ::= BETWEEN frame_bound AND

    grp_762 ::= UNBOUNDED | a_expr

    grp_763 ::= PRECEDING | FOLLOWING

    grp_764 ::= CURRENT ROW | GROUP | TIES | NO OTHERS

    seq_765 ::= COMMA expr_list_in_parens

    list_766 ::= $empty | list_766 seq_765

    opt_768 ::= opt_index_flags | $empty

    grp_769 ::= select_with_parens | func_table

    grp_767 ::= relation_expr opt_768 | select_with_parens | LBRACKET row_source_extension_stmt RBRACKET | LATERAL grp_769

    opt_770 ::= opt_ordinality | $empty

    opt_771 ::= opt_alias_clause | $empty

    opt_772 ::= opt_ordinality | $empty

    opt_773 ::= alias_clause | $empty

    opt_776 ::= opt_join_hint | $empty

    opt_777 ::= opt_join_hint | $empty

    seq_778 ::= join_type opt_777

    opt_779 ::= seq_778 | $empty

    grp_775 ::= CROSS opt_776 | NATURAL opt_779

    opt_780 ::= opt_join_hint | $empty

    seq_781 ::= join_type opt_780

    opt_782 ::= seq_781 | $empty

    grp_774 ::= grp_775 JOIN table_ref | opt_782 JOIN table_ref join_equal

    grp_783 ::= func_expr_windowless | ROWS FROM LPAREN rowsfrom_list RPAREN

    grp_784 ::= NULLIF | IFNULL

    grp_785 ::= CURRENT_DATE | CURRENT_SCHEMA | CURRENT_USER | SESSION_USER

    grp_786 ::= EXTRACT | EXTRACT_DURATION

    opt_787 ::= position_list | $empty

    grp_788 ::= GREATEST | LEAST

    grp_789 ::= CURRENT_TIMESTAMP | CURRENT_TIME | LOCALTIMESTAMP | LOCALTIME

    grp_790 ::= BOTH | LEADING | TRAILING

    opt_791 ::= grp_790 | $empty

    opt_792 ::= substr_for | $empty

    opt_794 ::= substr_for | $empty

    opt_795 ::= substr_from | $empty

    grp_793 ::= substr_from opt_794 | substr_for opt_795

    opt_796 ::= a_expr | $empty

    seq_797 ::= opt_796 FROM

    opt_798 ::= seq_797 | $empty

    seq_799 ::= COMMA rowsfrom_item

    list_800 ::= $empty | list_800 seq_799

    opt_801 ::= opt_func_alias_clause | $empty

    grp_802 ::= FULL | LEFT | RIGHT

    opt_803 ::= join_outer | $empty

    opt_804 ::= AS | $empty

    opt_805 ::= opt_col_def_list_no_types | $empty

    opt_807 ::= table_alias_name | $empty

    grp_806 ::= AS opt_807 | table_alias_name

    seq_808 ::= COMMA col_def

    list_809 ::= $empty | list_809 seq_808

    opt_810 ::= offset_clause | $empty

    opt_811 ::= limit_clause | $empty

    grp_812 ::= ALL | a_expr

    opt_813 ::= select_fetch_first_value | $empty

    grp_814 ::= a_expr | select_fetch_first_value row_or_rows

    grp_815 ::= sortby | sortby_index

    grp_817 ::= sortby | sortby_index

    grp_816 ::= COMMA grp_817

    list_818 ::= $empty | list_818 grp_816

    grp_819 ::= select_no_parens | select_with_parens

    list_820 ::= for_locking_item | list_820 for_locking_item

    seq_822 ::= NO KEY

    opt_823 ::= seq_822 | $empty

    opt_824 ::= KEY | $empty

    grp_821 ::= opt_823 UPDATE | opt_824 SHARE

    grp_826 ::= set_rest_more | CHARACTERISTICS AS TRANSACTION transaction_mode_list

    grp_825 ::= SESSION grp_826 | set_rest_more

    seq_827 ::= COMMA var_value

    list_828 ::= $empty | list_828 seq_827

    opt_830 ::= opt_with_show_backup_options | $empty

    seq_831 ::= SCHEMAS FROM

    opt_832 ::= seq_831 | $empty

    opt_833 ::= opt_with_show_backup_options | $empty

    grp_829 ::= BACKUPS IN string_or_placeholder opt_830 | BACKUP opt_832 string_or_placeholder IN string_or_placeholder_opt_list opt_833

    grp_834 ::= show_backup_options_list | OPTIONS LPAREN show_backup_options_list RPAREN

    seq_835 ::= COMMA show_backup_options

    list_836 ::= $empty | list_836 seq_835

    grp_837 ::= INCREMENT_LOCATION | KMS

    grp_838 ::= ENCRYPTION_PASSPHRASE | ENCRYPTION_INFO_DIR

    opt_839 ::= with_comment | $empty

    grp_840 ::= CONSTRAINT | CONSTRAINTS

    opt_841 ::= with_comment | $empty

    grp_843 ::= SCHEMAS | TABLES | TRIGGERS | TYPES | ROUTINES

    grp_842 ::= table_name opt_show_create_format_options | ALL grp_843

    grp_844 ::= REDACT | IGNORE_FOREIGN_KEYS

    grp_845 ::= ALL SCHEDULES | SCHEDULE a_expr

    grp_846 ::= ALL EXTERNAL CONNECTIONS | EXTERNAL CONNECTION string_or_placeholder

    opt_847 ::= with_comment | $empty

    seq_848 ::= DOT name

    opt_849 ::= seq_848 | $empty

    seq_850 ::= FROM name opt_849

    opt_851 ::= seq_850 | $empty

    grp_852 ::= CONNECTIONS | CONNECTION string_or_placeholder

    opt_853 ::= with_comment | $empty

    seq_854 ::= DOT name

    opt_855 ::= seq_854 | $empty

    seq_856 ::= FROM name opt_855

    opt_857 ::= seq_856 | $empty

    seq_858 ::= DOT name

    opt_859 ::= seq_858 | $empty

    seq_860 ::= FROM name opt_859

    opt_861 ::= seq_860 | $empty

    opt_863 ::= opt_target_roles | $empty

    grp_862 ::= GRANTS opt_863 | SYSTEM GRANTS

    opt_864 ::= for_grantee_clause | $empty

    grp_865 ::= schema_name_list | schema_wildcard

    grp_866 ::= INDEX | INDEXES | KEYS

    grp_867 ::= table_name | DATABASE database_name

    opt_868 ::= with_comment | $empty

    grp_870 ::= table_index_name | table_name AT STAR

    grp_869 ::= TABLE table_name | DATABASE database_name | INDEX grp_870

    opt_873 ::= select_stmt | $empty

    seq_874 ::= WITH show_job_options_list

    opt_875 ::= seq_874 | $empty

    grp_872 ::= opt_873 opt_875 | WHEN COMPLETE select_stmt | for_schedules_clause

    opt_877 ::= select_stmt | $empty

    grp_876 ::= JOBS opt_877 | JOB a_expr

    seq_879 ::= WITH show_job_options_list

    opt_880 ::= seq_879 | $empty

    grp_878 ::= a_expr opt_880 | WHEN COMPLETE a_expr

    grp_871 ::= AUTOMATIC JOBS | JOBS grp_872 | CHANGEFEED grp_876 | JOB grp_878

    seq_881 ::= COMMA show_job_options

    list_882 ::= $empty | list_882 seq_881

    opt_884 ::= schedule_state | $empty

    grp_883 ::= opt_884 SCHEDULE opt_schedule_executor_type | SCHEDULE a_expr

    grp_885 ::= BACKUP | SQL STATISTICS | CHANGEFEED

    opt_886 ::= ALL | $empty

    grp_889 ::= INDEX table_index_name | TABLE table_name | DATABASE database_name | CURRENT_CATALOG

    grp_888 ::= FROM grp_889

    opt_890 ::= grp_888 | $empty

    grp_887 ::= RANGES opt_890 | CLUSTER RANGES

    seq_891 ::= COMMA show_ranges_option

    list_892 ::= $empty | list_892 seq_891

    grp_893 ::= TABLE table_name | INDEX table_index_name

    opt_897 ::= database_name | $empty

    grp_896 ::= CLUSTER | DATABASE opt_897 | ALL DATABASES

    grp_895 ::= FROM grp_896

    opt_898 ::= grp_895 | $empty

    grp_894 ::= REGIONS opt_898 | SUPER REGIONS FROM DATABASE database_name

    opt_899 ::= database_name | $empty

    seq_900 ::= FROM name

    opt_901 ::= seq_900 | $empty

    opt_902 ::= with_comment | $empty

    seq_903 ::= FROM name

    opt_904 ::= seq_903 | $empty

    opt_905 ::= SESSION | $empty

    opt_906 ::= opt_with_options | $empty

    seq_907 ::= DOT name

    opt_908 ::= seq_907 | $empty

    seq_909 ::= FROM name opt_908

    opt_910 ::= seq_909 | $empty

    opt_911 ::= with_comment | $empty

    opt_912 ::= opt_compact | $empty

    opt_913 ::= KV | $empty

    opt_914 ::= ALL | $empty

    seq_915 ::= WITH sconst

    opt_916 ::= seq_915 | $empty

    grp_918 ::= ROLE_ALL | USER_ALL

    grp_917 ::= role_or_group_or_user role_spec | grp_918 ALL

    opt_922 ::= opt_partition | $empty

    grp_921 ::= RANGE zone_name | DATABASE database_name | table_or_index opt_922 | PARTITION partition_name OF table_or_index

    grp_920 ::= CONFIGURATION FROM grp_921 | CONFIGURATIONS

    grp_919 ::= ZONE grp_920 | ALL ZONE CONFIGURATIONS

    opt_924 ::= opt_for_roles | $empty

    grp_925 ::= GRANTEE role_spec_list | ALL ROLES

    grp_923 ::= opt_924 | FOR grp_925

    opt_926 ::= opt_in_schema | $empty

    opt_927 ::= opt_for_table_clause | $empty

    opt_928 ::= opt_for_job_clause | $empty

    opt_929 ::= opt_with_details | $empty

    opt_930 ::= TABLE | $empty

    opt_931 ::= opt_drop_behavior | $empty

    seq_932 ::= COMMA relation_expr

    list_933 ::= $empty | list_933 seq_932

    opt_934 ::= STAR | $empty

    grp_935 ::= table_name | LPAREN table_name RPAREN

    opt_936 ::= opt_with_clause | $empty

    opt_937 ::= opt_from_list | $empty

    opt_938 ::= where_clause | $empty

    opt_939 ::= sort_clause | $empty

    opt_940 ::= limit_clause | $empty

    opt_941 ::= AS | $empty

    seq_942 ::= opt_941 table_alias_name

    opt_943 ::= seq_942 | $empty

    opt_944 ::= opt_with_clause | $empty

    seq_945 ::= COMMA a_expr

    list_946 ::= $empty | list_946 seq_945

    grp_948 ::= PLUS | MINUS | TILDE | SQRT | CBRT | qual_op | NOT

    grp_947 ::= c_expr | grp_948 a_expr | row OVERLAPS row | DEFAULT

    opt_950 ::= NOT | $empty

    seq_951 ::= ESCAPE a_expr

    opt_952 ::= seq_951 | $empty

    opt_953 ::= NOT | $empty

    seq_954 ::= ESCAPE a_expr

    opt_955 ::= seq_954 | $empty

    opt_956 ::= NOT | $empty

    seq_957 ::= ESCAPE a_expr

    opt_958 ::= seq_957 | $empty

    opt_959 ::= NOT | $empty

    opt_960 ::= NOT | $empty

    opt_961 ::= NOT | $empty

    opt_962 ::= NOT | $empty

    opt_963 ::= NOT | $empty

    opt_964 ::= NOT | $empty

    opt_965 ::= NOT | $empty

    opt_966 ::= NOT | $empty

    opt_967 ::= ASYMMETRIC | $empty

    opt_968 ::= NOT | $empty

    opt_969 ::= NOT | $empty

    grp_949 ::= TYPECAST cast_target | TYPEANNOTATE typename | COLLATE collation_name | AT TIME ZONE a_expr | PLUS a_expr | MINUS a_expr | STAR a_expr | SLASH a_expr | FLOORDIV a_expr | PERCENT a_expr | CARET a_expr | HASH a_expr | AMP a_expr | PIPE a_expr | LT a_expr | GT a_expr | QUESTION a_expr | JSON_SOME_EXISTS a_expr | JSON_ALL_EXISTS a_expr | CONTAINS a_expr | CONTAINED_BY a_expr | EQ a_expr | CONCAT a_expr | LSHIFT a_expr | RSHIFT a_expr | FETCHVAL a_expr | FETCHTEXT a_expr | FETCHVAL_PATH a_expr | FETCHTEXT_PATH a_expr | REMOVE_PATH a_expr | INET_CONTAINED_BY_OR_EQUALS a_expr | AND_AND a_expr | AT_AT a_expr | DISTANCE a_expr | COS_DISTANCE a_expr | NEG_INNER_PRODUCT a_expr | INET_CONTAINS_OR_EQUALS a_expr | LESS_EQUALS a_expr | GREATER_EQUALS a_expr | NOT_EQUALS a_expr qual_op a_expr | AND a_expr | OR a_expr | opt_950 LIKE a_expr opt_952 | opt_953 ILIKE a_expr opt_955 | opt_956 SIMILAR TO a_expr opt_958 | TILDE a_expr | NOT_REGMATCH a_expr | REGIMATCH a_expr | NOT_REGIMATCH a_expr | IS opt_959 NAN_ | IS opt_960 NULL_ | ISNULL | NOTNULL | IS opt_961 TRUE | IS opt_962 FALSE | IS opt_963 UNKNOWN | IS opt_964 DISTINCT FROM a_expr | IS opt_965 OF LPAREN type_list RPAREN | opt_966 BETWEEN opt_967 b_expr AND a_expr | opt_968 BETWEEN SYMMETRIC b_expr AND a_expr | opt_969 IN in_expr | subquery_op sub_type a_expr

    list_970 ::= $empty | list_970 grp_949

    opt_971 ::= NOT | $empty

    grp_972 ::= LIKE | ILIKE

    grp_974 ::= PLUS | MINUS | TILDE | qual_op

    grp_973 ::= c_expr | grp_974 b_expr

    grp_976 ::= PLUS | MINUS | STAR | SLASH | FLOORDIV | PERCENT | CARET | HASH | AMP | PIPE | LT | GT | EQ | CONCAT | LSHIFT | RSHIFT | LESS_EQUALS | GREATER_EQUALS | NOT_EQUALS | qual_op

    opt_977 ::= NOT | $empty

    grp_978 ::= DISTINCT FROM b_expr | OF LPAREN type_list RPAREN

    grp_975 ::= TYPECAST cast_target | TYPEANNOTATE typename | grp_976 b_expr | IS opt_977 grp_978

    list_979 ::= $empty | list_979 grp_975

    opt_980 ::= array_subscripts | $empty

    grp_982 ::= STAR | unrestricted_name | AT iconst

    grp_981 ::= DOT grp_982

    opt_983 ::= grp_981 | $empty

    grp_984 ::= select_with_parens | row | array_expr

    grp_985 ::= func_name_no_crdb_extra | const_typename

    opt_987 ::= interval_qualifier | $empty

    grp_986 ::= sconst opt_987 | LPAREN iconst RPAREN sconst

    seq_988 ::= unrestricted_name DOT

    opt_989 ::= seq_988 | $empty

    seq_990 ::= unrestricted_name DOT opt_989

    opt_991 ::= seq_990 | $empty

    opt_992 ::= within_group_clause | $empty

    opt_993 ::= filter_clause | $empty

    opt_994 ::= over_clause | $empty

    opt_996 ::= expr_list | $empty

    grp_995 ::= opt_996 | array_expr_list

    seq_997 ::= COMMA array_expr

    list_998 ::= $empty | list_998 seq_997

    grp_999 ::= window_specification | window_name

    seq_1001 ::= COMMA sortby_list

    opt_1002 ::= seq_1001 | $empty

    grp_1000 ::= sortby opt_1002 | sortby_index COMMA sortby_list

    opt_1003 ::= expr_list | $empty

    opt_1004 ::= expr_list | $empty

    opt_1005 ::= case_arg | $empty

    opt_1006 ::= case_default | $empty

    list_1007 ::= when_clause | list_1007 when_clause

    list_1008 ::= array_subscript | list_1008 array_subscript

    opt_1010 ::= opt_slice_bound | $empty

    opt_1011 ::= opt_slice_bound | $empty

    grp_1009 ::= a_expr | opt_1010 COLON opt_1011

    opt_1012 ::= expr_list | $empty

    seq_1013 ::= COMMA opt_1012

    opt_1014 ::= seq_1013 | $empty

    opt_1015 ::= SAVEPOINT | $empty

    seq_1016 ::= DOT name

    opt_1017 ::= seq_1016 | $empty

    seq_1018 ::= DOT unrestricted_name

    opt_1019 ::= seq_1018 | $empty

%End
