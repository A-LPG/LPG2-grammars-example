-- AUTO-GENERATED from antlr/grammars-v4 sql/plsql by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack
%Options fp=SqlPlsqlParser
%options package=lpg.grammars.sql.plsql
%options template=btParserTemplateF.gi
%options import_terminals=SqlPlsqlLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    sql_script
%End

%Rules
    sql_script ::= list_3 grp_4

    unit_statement ::= alter_analytic_view
           | alter_attribute_dimension
           | alter_audit_policy
           | alter_cluster
           | alter_database
           | alter_database_link
           | alter_dimension
           | alter_diskgroup
           | alter_flashback_archive
           | alter_function
           | alter_hierarchy
           | alter_index
           | alter_inmemory_join_group
           | alter_java
           | alter_library
           | alter_lockdown_profile
           | alter_materialized_view
           | alter_materialized_view_log
           | alter_materialized_zonemap
           | alter_operator
           | alter_outline
           | alter_package
           | alter_pmem_filestore
           | alter_procedure
           | alter_resource_cost
           | alter_role
           | alter_rollback_segment
           | alter_sequence
           | alter_session
           | alter_synonym
           | alter_table
           | alter_tablespace
           | alter_tablespace_set
           | alter_trigger
           | alter_type
           | alter_user
           | alter_view
           | anonymous_block
           | call_statement
           | create_analytic_view
           | create_attribute_dimension
           | create_audit_policy
           | create_cluster
           | create_context
           | create_controlfile
           | create_schema
           | create_database
           | create_database_link
           | create_dimension
           | create_directory
           | create_diskgroup
           | create_edition
           | create_flashback_archive
           | create_function_body
           | create_hierarchy
           | create_index
           | create_inmemory_join_group
           | create_java
           | create_library
           | create_lockdown_profile
           | create_materialized_view
           | create_materialized_view_log
           | create_materialized_zonemap
           | create_operator
           | create_outline
           | create_package
           | create_package_body
           | create_pmem_filestore
           | create_procedure_body
           | create_profile
           | create_restore_point
           | create_role
           | create_rollback_segment
           | create_sequence
           | create_spfile
           | create_synonym
           | create_table
           | create_tablespace
           | create_tablespace_set
           | create_trigger
           | create_type
           | create_user
           | create_view
           | drop_analytic_view
           | drop_attribute_dimension
           | drop_audit_policy
           | drop_cluster
           | drop_context
           | drop_database
           | drop_database_link
           | drop_directory
           | drop_diskgroup
           | drop_edition
           | drop_flashback_archive
           | drop_function
           | drop_hierarchy
           | drop_index
           | drop_indextype
           | drop_inmemory_join_group
           | drop_java
           | drop_library
           | drop_lockdown_profile
           | drop_materialized_view
           | drop_materialized_view_log
           | drop_materialized_zonemap
           | drop_operator
           | drop_outline
           | drop_package
           | drop_pmem_filestore
           | drop_procedure
           | drop_restore_point
           | drop_role
           | drop_rollback_segment
           | drop_sequence
           | drop_synonym
           | drop_table
           | drop_tablespace
           | drop_tablespace_set
           | drop_trigger
           | drop_type
           | drop_user
           | drop_view
           | administer_key_management
           | analyze
           | associate_statistics
           | audit_traditional
           | comment_on_column
           | comment_on_materialized
           | comment_on_table
           | data_manipulation_language_statements
           | disassociate_statistics
           | flashback_table
           | grant_statement
           | noaudit_statement
           | purge_statement
           | rename_object
           | revoke_statement
           | transaction_control_statements
           | truncate_cluster
           | truncate_table
           | unified_auditing

    alter_diskgroup ::= ALTER DISKGROUP grp_12

    add_disk_clause ::= ADD list_31

    drop_disk_clause ::= DROP grp_32

    resize_disk_clause ::= RESIZE ALL opt_44

    replace_disk_clause ::= REPLACE DISK id_expression WITH CHAR_STRING opt_45 list_48 opt_50 opt_51

    wait_nowait ::= WAIT
           | NOWAIT

    rename_disk_clause ::= RENAME grp_52

    disk_online_clause ::= ONLINE grp_55 opt_65 opt_66

    disk_offline_clause ::= OFFLINE grp_67 opt_74

    timeout_clause ::= DROP AFTER numeric grp_75

    rebalance_diskgroup_clause ::= REBALANCE grp_76

    phase ::= id_expression

    check_diskgroup_clause ::= CHECK opt_85 opt_87

    diskgroup_template_clauses ::= grp_88 TEMPLATE id_expression qualified_template_clause list_90
           | DROP TEMPLATE id_expression list_92

    qualified_template_clause ::= ATTRIBUTES LPAREN opt_93 opt_94 RPAREN

    redundancy_clause ::= MIRROR
           | HIGH
           | UNPROTECTED
           | PARITY
           | DOUBLE

    striping_clause ::= FINE
           | COARSE

    force_noforce ::= FORCE
           | NOFORCE

    diskgroup_directory_clauses ::= ADD DIRECTORY filename list_96
           | DROP DIRECTORY filename opt_97 list_100
           | RENAME DIRECTORY dir_name TO dir_name list_102

    dir_name ::= CHAR_STRING

    diskgroup_alias_clauses ::= ADD ALIAS CHAR_STRING FOR CHAR_STRING list_104
           | DROP ALIAS CHAR_STRING list_106
           | RENAME ALIAS CHAR_STRING TO CHAR_STRING list_108

    diskgroup_volume_clauses ::= add_volume_clause
           | modify_volume_clause
           | RESIZE VOLUME id_expression SIZE size_clause
           | DROP VOLUME id_expression

    add_volume_clause ::= ADD VOLUME id_expression SIZE size_clause opt_109 opt_112 opt_114

    modify_volume_clause ::= MODIFY VOLUME id_expression opt_116 opt_118

    diskgroup_attributes ::= SET ATTRIBUTE CHAR_STRING EQ CHAR_STRING

    drop_diskgroup_file_clause ::= DROP FILE filename list_120

    convert_redundancy_clause ::= CONVERT REDUNDANCY TO FLEX

    usergroup_clauses ::= ADD USERGROUP CHAR_STRING WITH MEMBER CHAR_STRING list_122
           | MODIFY USERGROUP CHAR_STRING grp_123 MEMBER CHAR_STRING list_125
           | DROP USERGROUP CHAR_STRING

    user_clauses ::= ADD USER CHAR_STRING list_127
           | DROP USER CHAR_STRING list_129 opt_130
           | REPLACE USER CHAR_STRING WITH CHAR_STRING list_132

    file_permissions_clause ::= SET PERMISSION grp_133 EQ grp_134 list_140 FOR FILE CHAR_STRING list_142

    file_owner_clause ::= SET OWNERSHIP grp_143 EQ CHAR_STRING list_146 FOR FILE CHAR_STRING list_148

    scrub_clause ::= SCRUB opt_150 opt_152 opt_155 opt_156 opt_157 opt_158

    quotagroup_clauses ::= ADD QUOTAGROUP id_expression opt_160
           | MODIFY QUOTAGROUP id_expression SET property_name EQ property_value
           | MOVE QUOTAGROUP id_expression TO id_expression
           | DROP QUOTAGROUP id_expression

    property_name ::= id_expression

    property_value ::= id_expression

    filegroup_clauses ::= add_filegroup_clause
           | modify_filegroup_clause
           | move_to_filegroup_clause
           | drop_filegroup_clause

    add_filegroup_clause ::= ADD FILEGROUP id_expression grp_161 opt_164 opt_166

    modify_filegroup_clause ::= MODIFY FILEGROUP id_expression SET CHAR_STRING EQ CHAR_STRING

    move_to_filegroup_clause ::= MOVE FILE CHAR_STRING TO FILEGROUP id_expression

    drop_filegroup_clause ::= DROP FILEGROUP id_expression opt_167

    quorum_regular ::= QUORUM
           | REGULAR

    undrop_disk_clause ::= UNDROP DISKS

    diskgroup_availability ::= MOUNT opt_169 opt_171
           | DISMOUNT opt_173

    enable_disable_volume ::= grp_174 VOLUME grp_175

    drop_function ::= DROP FUNCTION function_name

    alter_flashback_archive ::= ALTER FLASHBACK ARCHIVE id_expression grp_178

    alter_hierarchy ::= ALTER HIERARCHY opt_185 id_expression grp_186

    alter_function ::= ALTER FUNCTION function_name grp_187

    alter_java ::= ALTER JAVA grp_192 opt_194 id_expression opt_200 grp_201

    match_string ::= DELIMITED_ID
           | STAR

    create_function_body ::= CREATE opt_203 opt_205 FUNCTION function_name opt_209 RETURN type_spec opt_212 list_214 grp_215

    sql_macro_body ::= SQL_MACRO IS BEGIN RETURN quoted_string SEMICOLON END

    parallel_enable_clause ::= PARALLEL_ENABLE opt_221

    partition_by_clause ::= LPAREN PARTITION expression BY grp_222 opt_224 RPAREN

    result_cache_clause ::= RESULT_CACHE opt_225 opt_228

    accessible_by_clause ::= ACCESSIBLE BY LPAREN accessor list_230 RPAREN

    default_collation_clause ::= DEFAULT COLLATION USING_NLS_COMP

    aggregate_clause ::= AGGREGATE USING implementation_type_name

    pipelined_using_clause ::= PIPELINED opt_233 USING implementation_type_name

    accessor ::= grp_234 function_name

    relies_on_part ::= RELIES_ON LPAREN tableview_name list_236 RPAREN

    streaming_clause ::= grp_237 expression BY paren_column_list

    alter_outline ::= ALTER OUTLINE opt_239 id_expression list_240

    outline_options ::= REBUILD
           | RENAME TO id_expression
           | CHANGE CATEGORY TO id_expression
           | ENABLE
           | DISABLE

    alter_lockdown_profile ::= ALTER LOCKDOWN PROFILE id_expression grp_241 opt_244

    lockdown_feature ::= disable_enable FEATURE grp_245

    lockdown_options ::= disable_enable OPTION grp_248

    lockdown_statements ::= disable_enable STATEMENT grp_251

    statement_clauses ::= CLAUSE grp_254

    clause_options ::= OPTION grp_257

    option_values ::= VALUE EQ LPAREN string_list RPAREN
           | grp_261 EQ CHAR_STRING

    string_list ::= CHAR_STRING list_263

    disable_enable ::= DISABLE
           | ENABLE

    drop_lockdown_profile ::= DROP LOCKDOWN PROFILE id_expression

    drop_package ::= DROP PACKAGE opt_264 opt_266 package_name

    alter_package ::= ALTER PACKAGE package_name COMPILE opt_267 opt_269 list_270 opt_272

    create_package ::= CREATE opt_274 opt_276 PACKAGE opt_278 package_name opt_279 grp_280 list_281 END opt_282

    create_package_body ::= CREATE opt_284 opt_286 PACKAGE BODY opt_288 package_name grp_289 list_290 opt_295 END opt_296

    package_obj_spec ::= pragma_declaration
           | exception_declaration
           | procedure_spec
           | function_spec
           | variable_declaration
           | subtype_declaration
           | cursor_declaration
           | type_declaration

    procedure_spec ::= PROCEDURE identifier opt_300 list_302 opt_304 SEMI

    function_spec ::= FUNCTION identifier opt_308 RETURN type_spec list_310 opt_312 SEMI

    package_obj_body ::= pragma_declaration
           | exception_declaration
           | procedure_spec
           | function_spec
           | subtype_declaration
           | cursor_declaration
           | variable_declaration
           | type_declaration
           | procedure_body
           | function_body
           | selection_directive

    alter_pmem_filestore ::= ALTER PMEM FILESTORE id_expression grp_313

    drop_pmem_filestore ::= DROP PMEM FILESTORE id_expression opt_322

    drop_procedure ::= DROP PROCEDURE procedure_name

    alter_procedure ::= ALTER PROCEDURE procedure_name COMPILE opt_323 list_324 opt_326

    function_body ::= FUNCTION identifier opt_330 RETURN type_spec list_332 grp_333 SEMI

    procedure_body ::= PROCEDURE identifier opt_343 list_345 grp_346 grp_347 SEMI

    create_procedure_body ::= CREATE opt_351 PROCEDURE procedure_name opt_355 opt_356 list_358 grp_359 grp_360

    alter_resource_cost ::= ALTER RESOURCE COST list_365

    drop_outline ::= DROP OUTLINE id_expression

    alter_rollback_segment ::= ALTER ROLLBACK SEGMENT rollback_segment_name grp_366

    drop_restore_point ::= DROP RESTORE POINT id_expression opt_370

    drop_rollback_segment ::= DROP ROLLBACK SEGMENT rollback_segment_name

    drop_role ::= DROP ROLE role_name

    create_pmem_filestore ::= CREATE PMEM FILESTORE id_expression list_371

    pmem_filestore_options ::= MOUNTPOINT file_path
           | BACKINGFILE filename opt_372
           | grp_373 size_clause
           | autoextend_clause

    file_path ::= CHAR_STRING

    create_rollback_segment ::= CREATE opt_374 ROLLBACK SEGMENT rollback_segment_name list_376

    drop_trigger ::= DROP TRIGGER trigger_name

    alter_trigger ::= ALTER TRIGGER trigger_name grp_377

    create_trigger ::= CREATE opt_384 TRIGGER trigger_name grp_385 opt_386 opt_388 opt_389 trigger_body

    trigger_follows_clause ::= FOLLOWS trigger_name list_391

    trigger_when_clause ::= WHEN LPAREN condition RPAREN

    simple_dml_trigger ::= grp_392 dml_event_clause opt_393 opt_394

    for_each_row ::= FOR EACH ROW

    compound_dml_trigger ::= FOR dml_event_clause opt_395

    non_dml_trigger ::= grp_396 non_dml_event list_398 ON grp_399

    trigger_body ::= compound_trigger_block
           | CALL identifier
           | trigger_block

    compound_trigger_block ::= COMPOUND TRIGGER opt_402 list_403 END opt_404

    timing_point_section ::= BEFORE STATEMENT IS tps_block BEFORE STATEMENT SEMI
           | BEFORE EACH ROW IS tps_block BEFORE EACH ROW SEMI
           | AFTER STATEMENT IS tps_block AFTER STATEMENT SEMI
           | AFTER EACH ROW IS tps_block AFTER EACH ROW SEMI

    non_dml_event ::= ALTER
           | ANALYZE
           | ASSOCIATE STATISTICS
           | AUDIT
           | COMMENT
           | CREATE
           | DISASSOCIATE STATISTICS
           | DROP
           | GRANT
           | NOAUDIT
           | RENAME
           | REVOKE
           | TRUNCATE
           | DDL
           | STARTUP
           | SHUTDOWN
           | DB_ROLE_CHANGE
           | LOGON
           | LOGOFF
           | SERVERERROR
           | SUSPEND
           | DATABASE
           | SCHEMA
           | FOLLOWS

    dml_event_clause ::= dml_event_element list_406 ON opt_407 tableview_name

    dml_event_element ::= grp_408 opt_410

    dml_event_nested_clause ::= NESTED TABLE tableview_name OF

    referencing_clause ::= grp_411 list_412

    referencing_element ::= grp_413 column_alias

    drop_type ::= DROP TYPE opt_414 type_name opt_416

    alter_type ::= ALTER TYPE type_name grp_417 opt_418

    compile_type_clause ::= COMPILE opt_419 opt_421 list_422 opt_424

    replace_type_clause ::= REPLACE opt_425 AS OBJECT LPAREN object_member_spec list_427 RPAREN

    alter_method_spec ::= alter_method_element list_429

    alter_method_element ::= grp_430 grp_431

    alter_collection_clauses ::= MODIFY grp_432

    dependent_handling_clause ::= INVALIDATE
           | CASCADE opt_435 opt_436

    dependent_exceptions_part ::= opt_437 EXCEPTIONS INTO tableview_name

    create_type ::= CREATE opt_439 opt_441 TYPE grp_442

    type_definition ::= type_name opt_444 opt_445 opt_446

    object_type_def ::= opt_447 grp_448 opt_449 opt_453 list_454

    object_as_part ::= grp_455 grp_456

    object_under_part ::= UNDER type_spec

    nested_table_type_def ::= TABLE OF type_spec opt_458

    sqlj_object_type ::= EXTERNAL NAME expression LANGUAGE JAVA USING grp_459

    type_body ::= BODY type_name grp_460 list_461 END

    type_body_elements ::= map_order_func_declaration
           | subprog_decl_in_type
           | overriding_subprogram_spec

    map_order_func_declaration ::= grp_462 MEMBER func_decl_in_type

    subprog_decl_in_type ::= opt_464 grp_465

    proc_decl_in_type ::= PROCEDURE procedure_name opt_469 grp_470 grp_471

    func_decl_in_type ::= FUNCTION function_name opt_477 RETURN type_spec grp_478 grp_479

    constructor_declaration ::= opt_482 opt_483 CONSTRUCTOR FUNCTION function_name opt_491 RETURN SELF AS RESULT grp_492 grp_493

    modifier_clause ::= opt_496 grp_497

    object_member_spec ::= identifier type_spec opt_498
           | element_spec

    sqlj_object_type_attr ::= EXTERNAL NAME expression

    element_spec ::= opt_499 list_500 opt_502

    element_spec_options ::= subprogram_spec
           | constructor_spec
           | map_order_function_spec

    subprogram_spec ::= grp_503 grp_504

    overriding_subprogram_spec ::= OVERRIDING MEMBER overriding_function_spec
           | OVERRIDING MEMBER overriding_procedure_spec

    overriding_function_spec ::= FUNCTION function_name opt_508 RETURN grp_509 opt_516 opt_517

    overriding_procedure_spec ::= PROCEDURE procedure_name opt_521 grp_522 grp_523

    type_procedure_spec ::= PROCEDURE procedure_name opt_529 opt_532

    type_function_spec ::= FUNCTION function_name opt_536 RETURN grp_537 opt_541

    constructor_spec ::= opt_542 opt_543 CONSTRUCTOR FUNCTION type_spec opt_551 RETURN SELF AS RESULT opt_554

    map_order_function_spec ::= grp_555 MEMBER type_function_spec

    pragma_clause ::= PRAGMA RESTRICT_REFERENCES LPAREN pragma_elements list_557 RPAREN

    pragma_elements ::= identifier
           | DEFAULT

    type_elements_parameter ::= parameter_name opt_559 type_spec opt_561

    drop_sequence ::= DROP SEQUENCE sequence_name

    alter_sequence ::= ALTER SEQUENCE sequence_name list_562

    alter_session ::= ALTER SESSION grp_563

    alter_session_set_clause ::= list_571
           | EDITION EQ id_expression
           | CONTAINER EQ id_expression opt_573
           | ROW ARCHIVAL VISIBILITY EQ grp_574
           | DEFAULT_COLLATION EQ grp_575

    create_sequence ::= CREATE SEQUENCE opt_577 sequence_name list_578 opt_581

    sequence_spec ::= INCREMENT BY UNSIGNED_INTEGER
           | sequence_start_clause
           | MAXVALUE UNSIGNED_INTEGER
           | NOMAXVALUE
           | MINVALUE UNSIGNED_INTEGER
           | NOMINVALUE
           | CYCLE
           | NOCYCLE
           | CACHE UNSIGNED_INTEGER
           | NOCACHE
           | ORDER
           | NOORDER
           | KEEP
           | NOKEEP
           | SCALE opt_583
           | NOSCALE
           | SHARD opt_585
           | NOSHARD
           | SESSION
           | GLOBAL

    sequence_start_clause ::= START WITH grp_586

    create_analytic_view ::= CREATE opt_588 opt_590 ANALYTIC VIEW id_expression opt_593 list_594 opt_595 opt_596 opt_597 opt_598 opt_599 opt_600 opt_601 opt_602

    classification_clause ::= grp_603 list_606
           | opt_607 opt_608 list_609

    caption_clause ::= CAPTION quoted_string

    description_clause ::= DESCRIPTION quoted_string

    classification_item ::= CLASSIFICATION id_expression opt_611 opt_613

    language ::= NULL_
           | id_expression

    cav_using_clause ::= USING opt_615 id_expression opt_616 opt_619

    dim_by_clause ::= DIMENSION BY LPAREN dim_key list_621 RPAREN

    dim_key ::= dim_ref list_622 KEY grp_623 REFERENCES opt_632 grp_633 HIERARCHIES LPAREN hier_ref list_636 RPAREN

    dim_ref ::= opt_638 id_expression opt_641

    hier_ref ::= opt_643 id_expression opt_646 opt_647

    measures_clause ::= MEASURES LPAREN av_measure list_649 RPAREN

    av_measure ::= id_expression opt_651

    base_meas_clause ::= FACT id_expression opt_652

    meas_aggregate_clause ::= AGGREGATE BY aggregate_function_name

    calc_meas_clause ::= AS LPAREN expression RPAREN

    default_measure_clause ::= DEFAULT MEASURE id_expression

    default_aggregate_clause ::= DEFAULT AGGREGATE BY aggregate_function_name

    cache_clause ::= CACHE cache_specification list_654

    cache_specification ::= MEASURE GROUP grp_655

    levels_clause ::= LEVELS LPAREN level_specification list_661 RPAREN level_group_type

    level_specification ::= LPAREN opt_665 id_expression RPAREN

    level_group_type ::= DYNAMIC
           | MATERIALIZED opt_669

    fact_columns_clause ::= FACT COLUMN column_name opt_675

    qry_transform_clause ::= ENABLE QUERY TRANSFORM opt_677

    create_attribute_dimension ::= CREATE opt_679 opt_681 ATTRIBUTE DIMENSION opt_683 id_expression opt_686 list_687 opt_690 ad_using_clause attributes_clause list_691 opt_692

    ad_using_clause ::= USING source_clause list_694 list_695

    source_clause ::= opt_697 id_expression opt_698 opt_701

    join_path_clause ::= JOIN PATH id_expression ON join_condition

    join_condition ::= join_condition_item list_703

    join_condition_item ::= opt_705 column_name EQ opt_707 column_name

    attributes_clause ::= ATTRIBUTES LPAREN ad_attributes_clause list_709 RPAREN

    ad_attributes_clause ::= opt_711 column_name opt_714 list_715

    ad_level_clause ::= LEVEL id_expression opt_717 opt_720 list_721 key_clause opt_722 opt_724 opt_726 opt_728 opt_736 opt_740

    key_clause ::= KEY grp_741

    alternate_key_clause ::= ALTERNATE key_clause

    dim_order_clause ::= id_expression opt_745 opt_748

    all_clause ::= ALL MEMBER grp_749

    create_audit_policy ::= CREATE AUDIT POLICY id_expression opt_754 opt_755 opt_756 opt_759 opt_761 opt_762

    privilege_audit_clause ::= PRIVILEGES system_privilege list_764

    action_audit_clause ::= list_766

    system_actions ::= ACTIONS system_privilege list_768

    standard_actions ::= ACTIONS actions_clause list_770

    actions_clause ::= grp_771 ON grp_772
           | grp_777

    object_action ::= ALTER
           | GRANT
           | READ
           | EXECUTE
           | AUDIT
           | COMMENT
           | DELETE
           | INDEX
           | INSERT
           | LOCK
           | SELECT
           | UPDATE
           | FLASHBACK
           | RENAME

    system_action ::= id_expression
           | grp_778 JAVA
           | LOCK TABLE
           | grp_779 DIRECTORY

    component_actions ::= ACTIONS COMPONENT EQ grp_780

    component_action ::= id_expression

    role_audit_clause ::= ROLES role_name list_788

    create_controlfile ::= CREATE CONTROLFILE opt_789 opt_790 DATABASE id_expression opt_791 grp_792 opt_796 list_797 opt_798

    controlfile_options ::= MAXLOGFILES numeric
           | MAXLOGMEMBERS numeric
           | MAXLOGHISTORY numeric
           | MAXDATAFILES numeric
           | MAXINSTANCES numeric
           | ARCHIVELOG
           | NOARCHIVELOG
           | FORCE LOGGING
           | SET STANDBY NOLOGGING FOR grp_799

    logfile_clause ::= LOGFILE opt_802 file_specification list_807

    character_set_clause ::= CHARACTER SET id_expression

    file_specification ::= datafile_tempfile_spec
           | redo_log_file_spec

    create_diskgroup ::= CREATE DISKGROUP id_expression opt_812 list_819 opt_823

    qualified_disk_clause ::= CHAR_STRING opt_825 opt_827 opt_828

    create_edition ::= CREATE EDITION id_expression opt_830

    create_flashback_archive ::= CREATE FLASHBACK ARCHIVE opt_831 id_expression TABLESPACE id_expression opt_832 opt_835 flashback_archive_retention

    flashback_archive_quota ::= QUOTA UNSIGNED_INTEGER grp_836

    flashback_archive_retention ::= RETENTION UNSIGNED_INTEGER grp_837

    create_hierarchy ::= CREATE opt_839 opt_842 HIERARCHY opt_844 id_expression opt_847 list_848 hier_using_clause level_hier_clause opt_849

    hier_using_clause ::= USING opt_851 id_expression

    level_hier_clause ::= LPAREN list_855 RPAREN

    hier_attrs_clause ::= HIERARCHICAL ATTRIBUTES LPAREN hier_attr_clause RPAREN

    hier_attr_clause ::= hier_attr_name list_856

    hier_attr_name ::= MEMBER_NAME
           | MEMBER_UNIQUE_NAME
           | MEMBER_CAPTION
           | MEMBER_DESCRIPTION
           | LEVEL_NAME
           | HIER_ORDER
           | DEPTH
           | IS_LEAF
           | PARENT_LEVEL_NAME
           | PARENT_UNIQUE_NAME

    create_index ::= CREATE opt_858 INDEX index_name opt_860 ON grp_861 opt_863 opt_866

    cluster_index_clause ::= CLUSTER cluster_name opt_867

    cluster_name ::= opt_869 id_expression

    table_index_clause ::= tableview_name opt_870 LPAREN index_expr opt_872 list_876 RPAREN opt_877

    bitmap_join_index_clause ::= tableview_name LPAREN opt_879 column_name opt_881 list_887 RPAREN FROM tableview_name table_alias list_889 where_clause opt_890 opt_891

    index_expr ::= column_name
           | expression

    index_properties ::= list_893
           | INDEXTYPE IS grp_894

    domain_index_clause ::= indextype opt_895 opt_896 opt_898

    local_domain_index_clause ::= LOCAL opt_906

    xmlindex_clause ::= opt_908 XMLINDEX opt_909 opt_910

    local_xmlindex_clause ::= LOCAL opt_914

    global_partitioned_index ::= GLOBAL PARTITION BY grp_915

    index_partitioning_clause ::= PARTITION opt_923 VALUES LESS THAN LPAREN index_partitioning_values_list RPAREN opt_924

    index_partitioning_values_list ::= literal list_926
           | TIMESTAMP literal list_928

    local_partitioned_index ::= LOCAL opt_930

    on_range_partitioned_table ::= LPAREN partitioned_table list_932 RPAREN

    on_list_partitioned_table ::= LPAREN partitioned_table list_934 RPAREN

    partitioned_table ::= PARTITION opt_935 list_937 opt_938

    on_hash_partitioned_table ::= STORE IN LPAREN tablespace list_940 RPAREN
           | LPAREN on_hash_partitioned_clause list_942 RPAREN

    on_hash_partitioned_clause ::= PARTITION opt_943 opt_945 opt_946 opt_947

    on_comp_partitioned_table ::= opt_951 LPAREN on_comp_partitioned_clause list_953 RPAREN

    on_comp_partitioned_clause ::= PARTITION opt_954 list_956 opt_957 opt_958

    index_subpartition_clause ::= STORE IN LPAREN tablespace list_960 RPAREN
           | LPAREN index_subpartition_subclause list_962 RPAREN

    index_subpartition_subclause ::= SUBPARTITION opt_963 opt_965 opt_966 opt_967

    odci_parameters ::= CHAR_STRING

    indextype ::= opt_969 id_expression

    alter_index ::= ALTER INDEX index_name grp_970

    alter_index_ops_set1 ::= list_972

    alter_index_ops_set2 ::= rebuild_clause
           | PARAMETERS LPAREN odci_parameters RPAREN
           | COMPILE
           | enable_or_disable
           | UNUSABLE
           | visible_or_invisible
           | RENAME TO new_index_name
           | COALESCE
           | monitoring_nomonitoring USAGE
           | UPDATE BLOCK REFERENCES
           | alter_index_partitioning

    visible_or_invisible ::= VISIBLE
           | INVISIBLE

    monitoring_nomonitoring ::= MONITORING
           | NOMONITORING

    rebuild_clause ::= REBUILD opt_974 list_976

    alter_index_partitioning ::= modify_index_default_attrs
           | add_hash_index_partition
           | modify_index_partition
           | rename_index_partition
           | drop_index_partition
           | split_index_partition
           | coalesce_index_partition
           | modify_index_subpartition

    modify_index_default_attrs ::= MODIFY DEFAULT ATTRIBUTES opt_978 grp_979

    add_hash_index_partition ::= ADD PARTITION opt_981 opt_983 opt_984 opt_985

    coalesce_index_partition ::= COALESCE PARTITION opt_986

    modify_index_partition ::= MODIFY PARTITION partition_name grp_987

    modify_index_partitions_ops ::= deallocate_unused_clause
           | allocate_extent_clause
           | physical_attributes_clause
           | logging_clause
           | key_compression
           | shrink_clause

    rename_index_partition ::= RENAME grp_989 TO new_partition_name

    drop_index_partition ::= DROP PARTITION partition_name

    split_index_partition ::= SPLIT PARTITION partition_name_old AT LPAREN literal list_991 RPAREN opt_993 opt_994

    index_partition_description ::= PARTITION opt_1000

    modify_index_subpartition ::= MODIFY SUBPARTITION subpartition_name grp_1001

    partition_name_old ::= partition_name

    new_partition_name ::= partition_name

    new_index_name ::= index_name

    alter_inmemory_join_group ::= ALTER INMEMORY JOIN GROUP opt_1003 id_expression grp_1004 LPAREN opt_1006 id_expression LPAREN id_expression RPAREN RPAREN

    create_user ::= CREATE USER user_object_name opt_1008 list_1010

    alter_user ::= ALTER USER user_object_name list_1012
           | user_object_name list_1014 proxy_clause

    drop_user ::= DROP USER user_object_name opt_1016 opt_1017

    alter_identified_by ::= identified_by opt_1019

    identified_by ::= IDENTIFIED BY id_expression

    identified_other_clause ::= IDENTIFIED grp_1020 opt_1022

    user_tablespace_clause ::= grp_1023 TABLESPACE id_expression

    quota_clause ::= QUOTA grp_1024 ON id_expression

    profile_clause ::= PROFILE id_expression

    role_clause ::= role_name list_1026
           | ALL list_1030

    user_default_role_clause ::= DEFAULT ROLE grp_1031

    password_expire_clause ::= PASSWORD EXPIRE

    user_lock_clause ::= ACCOUNT grp_1032

    user_editions_clause ::= ENABLE EDITIONS

    alter_user_editions_clause ::= user_editions_clause opt_1036 opt_1037

    proxy_clause ::= REVOKE CONNECT THROUGH grp_1038
           | GRANT CONNECT THROUGH grp_1039

    container_names ::= LEFT_PAREN id_expression list_1049 RIGHT_PAREN

    set_container_data ::= SET CONTAINER_DATA EQUALS_OP grp_1050

    add_rem_container_data ::= grp_1051 CONTAINER_DATA EQUALS_OP container_names

    container_data_clause ::= set_container_data
           | add_rem_container_data opt_1053

    administer_key_management ::= ADMINISTER KEY MANAGEMENT grp_1054

    keystore_management_clauses ::= create_keystore
           | open_keystore
           | close_keystore
           | backup_keystore
           | alter_keystore_password
           | merge_into_new_keystore
           | merge_into_existing_keystore
           | isolate_keystore
           | unite_keystore

    create_keystore ::= CREATE grp_1055 IDENTIFIED BY keystore_password

    open_keystore ::= SET KEYSTORE OPEN opt_1057 identified_by_store opt_1058

    force_keystore ::= FORCE KEYSTORE

    close_keystore ::= SET KEYSTORE CLOSE opt_1059 opt_1060

    backup_keystore ::= BACKUP KEYSTORE opt_1062 opt_1063 identified_by_store opt_1065

    alter_keystore_password ::= ALTER KEYSTORE PASSWORD opt_1066 IDENTIFIED BY keystore_password SET keystore_password opt_1067

    merge_into_new_keystore ::= MERGE KEYSTORE CHAR_STRING opt_1068 AND KEYSTORE CHAR_STRING opt_1069 INTO NEW KEYSTORE CHAR_STRING identified_by_password_clause

    merge_into_existing_keystore ::= MERGE KEYSTORE CHAR_STRING opt_1070 INTO EXISTING KEYSTORE CHAR_STRING identified_by_password_clause opt_1071

    isolate_keystore ::= opt_1072 ISOLATE KEYSTORE IDENTIFIED BY keystore_password FROM ROOT KEYSTORE opt_1073 identified_by_store opt_1074

    unite_keystore ::= UNITE KEYSTORE IDENTIFIED BY keystore_password WITH ROOT KEYSTORE opt_1075 identified_by_store opt_1076

    key_management_clauses ::= set_key
           | create_key
           | use_key
           | set_key_tag
           | export_keys
           | import_keys
           | migrate_keys
           | reverse_migrate_keys
           | move_keys

    set_key ::= SET opt_1077 KEY opt_1081 opt_1082 opt_1083 opt_1084 identified_by_store opt_1085 opt_1086

    create_key ::= CREATE opt_1087 KEY opt_1091 opt_1092 opt_1093 opt_1094 identified_by_store opt_1095 opt_1096

    mkid ::= CHAR_STRING

    mk ::= CHAR_STRING

    use_key ::= USE opt_1097 KEY CHAR_STRING opt_1098 opt_1099 identified_by_store opt_1100

    set_key_tag ::= SET TAG CHAR_STRING FOR CHAR_STRING opt_1101 identified_by_store opt_1102

    export_keys ::= EXPORT opt_1103 KEYS WITH SECRET secret TO filename opt_1104 identified_by_store opt_1109

    import_keys ::= IMPORT opt_1110 KEYS WITH SECRET secret FROM filename opt_1111 identified_by_store opt_1112

    migrate_keys ::= SET opt_1113 KEY IDENTIFIED BY secret opt_1114 MIGRATE USING keystore_password opt_1115

    reverse_migrate_keys ::= SET opt_1116 KEY IDENTIFIED BY secret opt_1117 REVERSE MIGRATE USING secret

    move_keys ::= MOVE opt_1118 KEYS TO NEW KEYSTORE CHAR_STRING IDENTIFIED BY keystore_password FROM opt_1119 KEYSTORE IDENTIFIED BY keystore_password opt_1124 opt_1125

    identified_by_store ::= IDENTIFIED BY grp_1126

    using_algorithm_clause ::= USING ALGORITHM CHAR_STRING

    using_tag_clause ::= USING TAG CHAR_STRING

    secret_management_clauses ::= add_update_secret
           | delete_secret
           | add_update_secret_seps
           | delete_secret_seps

    add_update_secret ::= grp_1127 SECRET CHAR_STRING FOR CLIENT CHAR_STRING opt_1128 opt_1129 opt_1130 opt_1131

    delete_secret ::= DELETE SECRET FOR CLIENT CHAR_STRING opt_1132 identified_by_store opt_1133

    add_update_secret_seps ::= grp_1134 SECRET CHAR_STRING FOR CLIENT CHAR_STRING opt_1135 TO opt_1136 AUTO_LOGIN KEYSTORE directory_path

    delete_secret_seps ::= DELETE SECRET CHAR_STRING SQ FOR CLIENT CHAR_STRING FROM opt_1137 AUTO_LOGIN KEYSTORE directory_path

    zero_downtime_software_patching_clauses ::= SWITCHOVER opt_1138 LIBRARY path FOR ALL CONTAINERS

    with_backup_clause ::= WITH BACKUP opt_1140

    identified_by_password_clause ::= IDENTIFIED BY keystore_password

    keystore_password ::= DELIMITED_ID

    path ::= CHAR_STRING

    secret ::= DELIMITED_ID

    analyze ::= grp_1141 grp_1144

    partition_extention_clause ::= PARTITION grp_1152
           | SUBPARTITION grp_1155

    validation_clauses ::= VALIDATE REF UPDATE opt_1159
           | VALIDATE STRUCTURE opt_1163 opt_1164 opt_1165

    compute_clauses ::= COMPUTE opt_1166 STATISTICS opt_1167

    for_clause ::= FOR grp_1168

    online_or_offline ::= OFFLINE
           | ONLINE

    into_clause1 ::= INTO opt_1181

    partition_key_value ::= literal
           | TIMESTAMP quoted_string

    subpartition_key_value ::= literal
           | TIMESTAMP quoted_string

    associate_statistics ::= ASSOCIATE STATISTICS WITH grp_1182 opt_1183

    column_association ::= COLUMNS tableview_name DOT column_name list_1185 using_statistics_type

    function_association ::= grp_1186 grp_1197

    indextype_name ::= id_expression

    using_statistics_type ::= USING grp_1202

    statistics_type_name ::= regular_id

    default_cost_clause ::= DEFAULT COST LPAREN cpu_cost COMMA io_cost COMMA network_cost RPAREN

    cpu_cost ::= UNSIGNED_INTEGER

    io_cost ::= UNSIGNED_INTEGER

    network_cost ::= UNSIGNED_INTEGER

    default_selectivity_clause ::= DEFAULT SELECTIVITY default_selectivity

    default_selectivity ::= UNSIGNED_INTEGER

    storage_table_clause ::= WITH grp_1203 MANAGED STORAGE TABLES

    unified_auditing ::= AUDIT grp_1204

    policy_name ::= identifier

    audit_traditional ::= AUDIT grp_1219 opt_1224 opt_1227 opt_1228

    audit_direct_path ::= DIRECT_PATH auditing_by_clause

    audit_container_clause ::= grp_1229

    audit_operation_clause ::= grp_1231

    auditing_by_clause ::= BY audit_user list_1243

    audit_user ::= regular_id

    audit_schema_object_clause ::= grp_1244 auditing_on_clause

    sql_operation ::= ALTER
           | AUDIT
           | COMMENT
           | DELETE
           | EXECUTE
           | FLASHBACK
           | GRANT
           | INDEX
           | INSERT
           | LOCK
           | READ
           | RENAME
           | SELECT
           | UPDATE

    auditing_on_clause ::= ON grp_1247

    model_name ::= opt_1249 id_expression

    object_name ::= opt_1251 id_expression

    profile_name ::= opt_1253 id_expression

    sql_statement_shortcut ::= ALTER SYSTEM
           | CLUSTER
           | CONTEXT
           | DATABASE LINK
           | DIMENSION
           | DIRECTORY
           | INDEX
           | MATERIALIZED VIEW
           | NOT EXISTS
           | OUTLINE
           | PLUGGABLE DATABASE
           | PROCEDURE
           | PROFILE
           | PUBLIC DATABASE LINK
           | PUBLIC SYNONYM
           | ROLE
           | ROLLBACK SEGMENT
           | SEQUENCE
           | SESSION
           | SYNONYM
           | SYSTEM AUDIT
           | SYSTEM GRANT
           | TABLE
           | TABLESPACE
           | TRIGGER
           | TYPE
           | USER
           | VIEW
           | ALTER SEQUENCE
           | ALTER TABLE
           | COMMENT TABLE
           | DELETE TABLE
           | EXECUTE PROCEDURE
           | GRANT DIRECTORY
           | GRANT PROCEDURE
           | GRANT SEQUENCE
           | GRANT TABLE
           | GRANT TYPE
           | INSERT TABLE
           | LOCK TABLE
           | SELECT SEQUENCE
           | SELECT TABLE
           | UPDATE TABLE

    drop_index ::= DROP INDEX index_name opt_1255

    disassociate_statistics ::= DISASSOCIATE STATISTICS FROM grp_1256 opt_1293

    drop_indextype ::= DROP INDEXTYPE opt_1295 id_expression opt_1296

    drop_inmemory_join_group ::= DROP INMEMORY JOIN GROUP opt_1298 id_expression

    flashback_table ::= FLASHBACK TABLE tableview_name list_1300 TO grp_1301

    restore_point ::= identifier list_1310

    purge_statement ::= PURGE grp_1311

    noaudit_statement ::= NOAUDIT grp_1316 opt_1321 opt_1322

    rename_object ::= RENAME object_name TO object_name

    grant_statement ::= GRANT list_1327 opt_1329 TO grp_1330 list_1333 opt_1336 opt_1338 opt_1340 opt_1341

    container_clause ::= CONTAINER EQUALS_OP grp_1342

    revoke_statement ::= REVOKE grp_1343

    revoke_system_privilege ::= grp_1346 FROM revokee_clause

    revokee_clause ::= grp_1347 list_1350

    revoke_object_privileges ::= grp_1351 list_1356 on_object_clause FROM revokee_clause opt_1358

    on_object_clause ::= ON grp_1359

    revoke_roles_from_programs ::= grp_1371 FROM program_unit list_1375

    program_unit ::= grp_1376 opt_1378 id_expression

    create_dimension ::= CREATE DIMENSION identifier list_1379 list_1381

    create_directory ::= CREATE opt_1383 DIRECTORY directory_name opt_1386 AS directory_path

    directory_name ::= regular_id

    directory_path ::= CHAR_STRING

    create_inmemory_join_group ::= CREATE INMEMORY JOIN GROUP opt_1388 id_expression LPAREN opt_1390 id_expression LPAREN id_expression RPAREN list_1394 RPAREN

    drop_hierarchy ::= DROP HIERARCHY opt_1396 id_expression

    alter_library ::= ALTER LIBRARY library_name grp_1397

    drop_java ::= DROP JAVA grp_1402 opt_1404 id_expression

    drop_library ::= DROP LIBRARY library_name

    create_java ::= CREATE opt_1406 opt_1409 opt_1410 JAVA grp_1411 opt_1419 opt_1420 opt_1426 grp_1427

    create_library ::= CREATE opt_1431 opt_1433 LIBRARY plsql_library_source

    plsql_library_source ::= library_name grp_1434 quoted_string opt_1436 opt_1438 opt_1440

    credential_name ::= opt_1442 id_expression

    library_editionable ::= grp_1443

    library_debug ::= DEBUG

    compiler_parameters_clause ::= parameter_name EQUALS_OP parameter_value

    parameter_value ::= regular_id
           | CHAR_STRING

    library_name ::= opt_1445 regular_id

    alter_dimension ::= ALTER DIMENSION identifier grp_1446

    level_clause ::= LEVEL identifier IS grp_1461 opt_1465

    hierarchy_clause ::= HIERARCHY identifier LPAREN identifier list_1467 opt_1468 RPAREN

    dimension_join_clause ::= list_1470

    attribute_clause ::= list_1472

    extended_attribute_clause ::= ATTRIBUTE identifier list_1474

    column_one_or_more_sub_clause ::= column_name
           | LPAREN column_name list_1476 RPAREN

    alter_view ::= ALTER VIEW tableview_name grp_1477

    alter_view_editionable ::= grp_1484

    create_view ::= CREATE opt_1486 opt_1489 opt_1490 VIEW opt_1492 id_expression opt_1494 opt_1498 opt_1499 opt_1501 opt_1504 AS select_only_statement opt_1505 opt_1507

    editioning_clause ::= EDITIONING
           | EDITIONABLE opt_1508
           | NONEDITIONABLE

    view_options ::= view_alias_constraint
           | object_view_clause
           | xmltype_view_clause

    view_alias_constraint ::= LPAREN list_1513 RPAREN

    object_view_clause ::= OF opt_1515 id_expression grp_1516 list_1528

    inline_constraint ::= opt_1530 grp_1531 opt_1533

    inline_ref_constraint ::= SCOPE IS tableview_name
           | WITH ROWID
           | opt_1535 references_clause opt_1536

    out_of_line_ref_constraint ::= SCOPE FOR LPAREN regular_id RPAREN IS tableview_name
           | REF LPAREN regular_id RPAREN WITH ROWID
           | opt_1538 FOREIGN KEY LPAREN list_1541 RPAREN references_clause opt_1542

    out_of_line_constraint ::= grp_1543 opt_1552 opt_1553

    constraint_state ::= list_1560

    xmltype_view_clause ::= OF XMLTYPE opt_1561 WITH OBJECT grp_1562 grp_1563

    xml_schema_spec ::= opt_1567 ELEMENT grp_1568 opt_1571 opt_1573 opt_1575

    xml_schema_url ::= DELIMITED_ID

    element ::= DELIMITED_ID

    alter_tablespace ::= ALTER TABLESPACE tablespace grp_1576

    datafile_tempfile_clauses ::= ADD grp_1581
           | DROP grp_1582 grp_1583 opt_1585
           | SHRINK TEMPFILE grp_1586 opt_1588
           | RENAME DATAFILE filename list_1590 TO filename list_1592
           | grp_1593 online_or_offline

    tablespace_logging_clauses ::= logging_clause
           | opt_1594 FORCE LOGGING

    tablespace_group_clause ::= TABLESPACE GROUP grp_1595

    tablespace_group_name ::= regular_id

    tablespace_state_clauses ::= ONLINE
           | OFFLINE opt_1597
           | READ grp_1598
           | PERMANENT
           | TEMPORARY

    flashback_mode_clause ::= FLASHBACK grp_1599

    new_tablespace_name ::= tablespace

    create_tablespace ::= CREATE opt_1601 grp_1602

    permanent_tablespace_clause ::= TABLESPACE id_expression opt_1604 opt_1605 list_1608

    tablespace_encryption_spec ::= USING CHAR_STRING

    logging_clause ::= LOGGING
           | NOLOGGING
           | FILESYSTEM_LIKE_LOGGING

    extent_management_clause ::= EXTENT MANAGEMENT LOCAL opt_1612

    segment_management_clause ::= SEGMENT SPACE_KEYWORD MANAGEMENT grp_1613

    temporary_tablespace_clause ::= TEMPORARY TABLESPACE id_expression opt_1615 opt_1616 opt_1617 opt_1618

    undo_tablespace_clause ::= UNDO TABLESPACE id_expression opt_1620 opt_1621 opt_1622 opt_1623

    tablespace_retention_clause ::= RETENTION grp_1624

    create_tablespace_set ::= CREATE TABLESPACE SET id_expression opt_1626 opt_1633

    permanent_tablespace_attrs ::= MINIMUM EXTENT size_clause
           | BLOCKSIZE numeric opt_1634
           | logging_clause
           | FORCE LOGGING
           | tablespace_encryption_clause
           | default_tablespace_params
           | ONLINE
           | OFFLINE
           | extent_management_clause
           | segment_management_clause
           | flashback_mode_clause
           | lost_write_protection

    tablespace_encryption_clause ::= ENCRYPTION grp_1635

    default_tablespace_params ::= DEFAULT opt_1637 opt_1638 opt_1639 opt_1640 opt_1641

    default_table_compression ::= TABLE grp_1642

    low_high ::= LOW
           | HIGH

    default_index_compression ::= INDEX grp_1644

    inmmemory_clause ::= INMEMORY opt_1645 opt_1652
           | NO INMEMORY

    datafile_specification ::= DATAFILE seq_1654

    tempfile_specification ::= TEMPFILE seq_1656

    datafile_tempfile_spec ::= opt_1657 opt_1659 opt_1660 opt_1661

    redo_log_file_spec ::= grp_1662 opt_1666 opt_1668 opt_1669

    autoextend_clause ::= AUTOEXTEND grp_1670

    maxsize_clause ::= MAXSIZE grp_1674

    build_clause ::= BUILD grp_1675

    parallel_clause ::= NOPARALLEL
           | PARALLEL opt_1679

    parallel_instances_clause ::= INSTANCES grp_1680

    alter_materialized_view ::= ALTER MATERIALIZED VIEW tableview_name opt_1686 opt_1687 opt_1689 opt_1690 opt_1692

    alter_mv_option1 ::= alter_mv_refresh

    alter_mv_refresh ::= REFRESH list_1698

    rollback_segment ::= regular_id

    modify_mv_column_clause ::= MODIFY LPAREN column_name opt_1700 RPAREN

    alter_materialized_view_log ::= ALTER MATERIALIZED VIEW LOG opt_1701 ON tableview_name opt_1703 opt_1704 opt_1705

    add_mv_log_column_clause ::= ADD LPAREN column_name RPAREN

    move_mv_log_clause ::= MOVE segment_attributes_clause opt_1706

    mv_log_augmentation ::= ADD grp_1707 opt_1715

    create_materialized_view_log ::= CREATE MATERIALIZED VIEW LOG ON tableview_name opt_1720 opt_1721 list_1734

    new_values_clause ::= grp_1735 NEW VALUES

    mv_log_purge_clause ::= PURGE grp_1736

    create_materialized_zonemap ::= CREATE MATERIALIZED ZONEMAP zonemap_name opt_1740 opt_1741 opt_1742 opt_1745 grp_1746

    alter_materialized_zonemap ::= ALTER MATERIALIZED ZONEMAP zonemap_name grp_1747

    drop_materialized_zonemap ::= DROP MATERIALIZED ZONEMAP zonemap_name

    zonemap_refresh_clause ::= REFRESH opt_1750 opt_1753

    zonemap_attributes ::= list_1756

    zonemap_name ::= identifier opt_1758

    operator_name ::= identifier opt_1760

    operator_function_name ::= identifier list_1762

    create_zonemap_on_table ::= ON tableview_name LEFT_PAREN column_list RIGHT_PAREN

    create_zonemap_as_subquery ::= AS subquery

    alter_operator ::= ALTER OPERATOR operator_name grp_1763

    drop_operator ::= DROP OPERATOR operator_name opt_1764

    create_operator ::= CREATE opt_1766 OPERATOR operator_name BINDING binding_clause list_1768 opt_1771

    binding_clause ::= LEFT_PAREN datatype list_1773 RIGHT_PAREN RETURN opt_1774 datatype opt_1775 opt_1776 using_function_clause

    add_binding_clause ::= ADD BINDING binding_clause

    implementation_clause ::= ANCILLARY TO primary_operator_list
           | operator_context_clause

    primary_operator_list ::= primary_operator_item list_1778

    primary_operator_item ::= schema_object_name LEFT_PAREN datatype list_1780 RIGHT_PAREN

    operator_context_clause ::= WITH INDEX CONTEXT COMMA SCAN CONTEXT implementation_type_name opt_1782 opt_1784

    using_function_clause ::= USING operator_function_name

    drop_binding_clause ::= DROP BINDING LEFT_PAREN datatype list_1786 RIGHT_PAREN opt_1787

    create_materialized_view ::= CREATE MATERIALIZED VIEW opt_1789 tableview_name opt_1791 opt_1797 grp_1798 opt_1812 opt_1813 opt_1814 opt_1817 opt_1818 opt_1821 opt_1822 AS select_only_statement

    scoped_table_ref_constraint ::= SCOPE FOR LPAREN identifier RPAREN IS opt_1824 identifier

    mv_column_alias ::= grp_1825 opt_1827 opt_1829

    create_mv_refresh ::= grp_1830

    query_rewrite_clause ::= grp_1843 QUERY REWRITE opt_1844

    unusable_editions_clause ::= UNUSABLE grp_1845

    drop_materialized_view ::= DROP MATERIALIZED VIEW tableview_name opt_1849

    drop_materialized_view_log ::= DROP MATERIALIZED VIEW LOG opt_1851 ON tableview_name

    create_context ::= CREATE opt_1853 CONTEXT oracle_namespace USING opt_1855 package_name opt_1858

    oracle_namespace ::= id_expression

    create_cluster ::= CREATE CLUSTER cluster_name LPAREN column_name datatype opt_1859 list_1862 RPAREN list_1868 opt_1869 opt_1871 opt_1873

    create_profile ::= CREATE opt_1874 PROFILE id_expression LIMIT list_1876 opt_1877

    resource_parameters ::= grp_1878 grp_1879
           | PRIVATE_SGA grp_1880

    password_parameters ::= grp_1881 grp_1882
           | PASSWORD_VERIFY_FUNCTION grp_1883
           | PASSWORD_ROLLOVER_TIME grp_1884

    create_lockdown_profile ::= CREATE LOCKDOWN PROFILE id_expression opt_1886

    static_base_profile ::= FROM id_expression

    dynamic_base_profile ::= INCLUDING id_expression

    create_outline ::= CREATE opt_1888 opt_1890 OUTLINE opt_1891 opt_1895 opt_1897 opt_1899

    create_restore_point ::= CREATE opt_1900 RESTORE POINT id_expression opt_1902 opt_1905 opt_1907

    create_role ::= CREATE ROLE role_name opt_1908 opt_1909

    create_table ::= CREATE opt_1913 TABLE opt_1915 table_name opt_1917 opt_1921 grp_1922 opt_1923 opt_1925 opt_1927

    xmltype_table ::= OF XMLTYPE opt_1929 opt_1931 opt_1932 opt_1933 opt_1936 opt_1937 opt_1938 opt_1939 opt_1940

    xmltype_virtual_columns ::= VIRTUAL COLUMNS LPAREN column_name AS LPAREN expression RPAREN list_1942 RPAREN

    xmltype_column_properties ::= XMLTYPE opt_1943 column_name opt_1944 opt_1945

    xmltype_storage ::= STORE AS grp_1946
           | STORE VARRAYS AS grp_1954

    xmlschema_spec ::= opt_1956 ELEMENT DELIMITED_ID opt_1958 opt_1960

    object_table ::= OF opt_1962 object_type opt_1963 opt_1967 opt_1970 opt_1971 opt_1972 opt_1973 opt_1974

    object_type ::= regular_id

    oid_index_clause ::= OIDINDEX opt_1975 LPAREN list_1977 RPAREN

    oid_clause ::= OBJECT IDENTIFIER IS grp_1978

    object_properties ::= grp_1979 opt_1981 opt_1985
           | out_of_line_constraint
           | out_of_line_ref_constraint
           | supplemental_logging_props

    object_table_substitution ::= opt_1986 SUBSTITUTABLE AT ALL LEVELS

    relational_table ::= opt_1990 opt_1991

    relational_table_properties ::= list_1992

    relational_table_property ::= immutable_table_clauses
           | blockchain_table_clauses
           | DEFAULT COLLATION collation_name
           | ON COMMIT grp_1993
           | physical_properties
           | table_properties

    immutable_table_clauses ::= immutable_table_no_drop_clause
           | immutable_table_no_delete_clause

    immutable_table_no_drop_clause ::= NO DROP opt_1997

    immutable_table_no_delete_clause ::= NO DELETE grp_1998

    blockchain_table_clauses ::= blockchain_drop_table_clause blockchain_row_retention_clause blockchain_hash_and_data_format_clause

    blockchain_drop_table_clause ::= NO DROP opt_2002

    blockchain_row_retention_clause ::= NO DELETE grp_2003

    blockchain_hash_and_data_format_clause ::= HASHING USING SHA2_512_Q VERSION V1_Q

    collation_name ::= identifier

    table_properties ::= column_properties
           | read_only_clause
           | indexing_clause
           | table_partitioning_clauses
           | attribute_clustering_clause
           | grp_2006
           | result_cache_clause
           | parallel_clause
           | monitoring_nomonitoring
           | grp_2007
           | enable_disable_clause
           | row_movement_clause
           | logical_replication_clause
           | flashback_archive_clause
           | physical_properties
           | ROW ARCHIVAL
           | AS select_only_statement
           | FOR EXCHANGE WITH TABLE opt_2009 table_name
           | annotations_clause

    read_only_clause ::= READ grp_2010

    indexing_clause ::= INDEXING grp_2011

    attribute_clustering_clause ::= CLUSTERING opt_2012 cluster_clause opt_2015 opt_2018 opt_2019

    clustering_join ::= opt_2021 table_name clustering_join_item list_2023

    clustering_join_item ::= JOIN opt_2025 table_name ON LPAREN equijoin_condition RPAREN

    equijoin_condition ::= expression

    cluster_clause ::= BY opt_2027 ORDER clustering_columns

    clustering_columns ::= clustering_column_group
           | LPAREN clustering_column_group list_2029 RPAREN

    clustering_column_group ::= LPAREN column_name list_2031 RPAREN

    yes_no ::= YES
           | NO

    zonemap_clause ::= WITH MATERIALIZED ZONEMAP opt_2033
           | WITHOUT MATERIALIZED ZONEMAP

    logical_replication_clause ::= DISABLE LOGICAL REPLICATION
           | ENABLE LOGICAL REPLICATION opt_2037

    table_name ::= identifier

    relational_property ::= out_of_line_constraint
           | out_of_line_ref_constraint
           | column_definition
           | virtual_column_definition
           | period_definition
           | supplemental_logging_props

    table_partitioning_clauses ::= range_partitions
           | list_partitions
           | hash_partitions
           | composite_range_partitions
           | composite_list_partitions
           | composite_hash_partitions
           | reference_partitioning
           | system_partitioning

    range_partitions ::= PARTITION BY RANGE LPAREN column_name list_2039 RPAREN opt_2045 LPAREN PARTITION opt_2046 range_values_clause table_partition_description list_2049 RPAREN

    list_partitions ::= PARTITION BY LIST LPAREN column_name RPAREN opt_2055 opt_2061

    hash_partitions ::= PARTITION BY HASH LPAREN column_name list_2063 RPAREN grp_2064

    individual_hash_partitions ::= LPAREN PARTITION opt_2065 opt_2066 list_2070 RPAREN

    hash_partitions_by_quantity ::= PARTITIONS hash_partition_quantity opt_2074 opt_2076 opt_2080

    hash_partition_quantity ::= UNSIGNED_INTEGER

    composite_range_partitions ::= PARTITION BY RANGE LPAREN column_name list_2082 RPAREN opt_2088 grp_2089 LPAREN range_partition_desc list_2091 RPAREN

    composite_list_partitions ::= PARTITION BY LIST LPAREN column_name RPAREN grp_2092 LPAREN list_partition_desc list_2094 RPAREN

    composite_hash_partitions ::= PARTITION BY HASH LPAREN list_2096 RPAREN grp_2097 grp_2098

    reference_partitioning ::= PARTITION BY REFERENCE LPAREN constraint_name RPAREN opt_2102

    reference_partition_desc ::= PARTITION opt_2103 table_partition_description

    system_partitioning ::= PARTITION BY SYSTEM opt_2107

    range_partition_desc ::= PARTITION opt_2108 opt_2109 table_partition_description opt_2119

    list_partition_desc ::= PARTITION opt_2120 opt_2121 table_partition_description opt_2131

    subpartition_template ::= SUBPARTITION TEMPLATE grp_2132

    hash_subpartition_quantity ::= UNSIGNED_INTEGER

    subpartition_by_range ::= SUBPARTITION BY RANGE LPAREN column_name list_2142 RPAREN opt_2143

    subpartition_by_list ::= SUBPARTITION BY LIST LPAREN column_name RPAREN opt_2144

    subpartition_by_hash ::= SUBPARTITION BY HASH LPAREN column_name list_2146 RPAREN opt_2152

    subpartition_name ::= partition_name

    range_subpartition_desc ::= SUBPARTITION opt_2153 range_values_clause opt_2154

    list_subpartition_desc ::= SUBPARTITION opt_2155 list_values_clause opt_2156

    individual_hash_subparts ::= SUBPARTITION opt_2157 opt_2158

    hash_subparts_by_quantity ::= SUBPARTITIONS UNSIGNED_INTEGER opt_2162

    range_values_clause ::= VALUES LESS THAN LPAREN range_values_list RPAREN

    range_values_list ::= literal list_2164
           | TIMESTAMP literal list_2166

    list_values_clause ::= VALUES LPAREN grp_2167 RPAREN

    table_partition_description ::= opt_2173 opt_2174 opt_2175 opt_2176 opt_2177 opt_2179 opt_2180 opt_2181 opt_2184 list_2186

    partitioning_storage_clause ::= list_2192

    lob_partitioning_storage ::= LOB LPAREN lob_item RPAREN STORE AS opt_2194 grp_2195

    size_clause ::= UNSIGNED_INTEGER opt_2199

    table_compression ::= COMPRESS opt_2205
           | ROW STORE COMPRESS opt_2207
           | COLUMN STORE COMPRESS opt_2212 opt_2215
           | NOCOMPRESS

    inmemory_table_clause ::= list_2216
           | grp_2217 list_2219

    inmemory_attributes ::= list_2221

    inmemory_memcompress ::= MEMCOMPRESS FOR grp_2222
           | NO MEMCOMPRESS

    inmemory_priority ::= PRIORITY grp_2226

    inmemory_distribute ::= DISTRIBUTE opt_2229 opt_2232

    inmemory_duplicate ::= DUPLICATE opt_2233
           | NO DUPLICATE

    inmemory_column_clause ::= grp_2234 LPAREN column_list RPAREN

    physical_attributes_clause ::= list_2237

    storage_clause ::= STORAGE LPAREN list_2245 RPAREN

    deferred_segment_creation ::= SEGMENT CREATION grp_2246

    segment_attributes_clause ::= list_2250

    physical_properties ::= deferred_segment_creation
           | segment_attributes_clause
           | table_compression
           | inmemory_table_clause
           | ilm_clause
           | ORGANIZATION grp_2251
           | EXTERNAL PARTITION ATTRIBUTES external_table_clause opt_2256
           | CLUSTER cluster_name LPAREN column_name list_2258 RPAREN

    ilm_clause ::= ILM grp_2259

    ilm_policy_clause ::= ilm_compression_policy
           | ilm_tiering_policy
           | ilm_inmemory_policy

    ilm_compression_policy ::= table_compression segment_group ilm_after_on
           | grp_2261 ROW AFTER ilm_time_period OF NO MODIFICATION

    ilm_tiering_policy ::= TIER TO tablespace grp_2264

    ilm_after_on ::= AFTER ilm_time_period OF grp_2269
           | ON function_name

    segment_group ::= SEGMENT
           | GROUP

    ilm_inmemory_policy ::= grp_2271 opt_2273 ilm_after_on

    ilm_time_period ::= numeric grp_2274

    heap_org_table_clause ::= opt_2275 opt_2276 opt_2277

    external_table_clause ::= LPAREN opt_2279 external_table_data_props RPAREN opt_2280 opt_2283 opt_2284

    access_driver_type ::= ORACLE_LOADER
           | ORACLE_DATAPUMP
           | ORACLE_HDFS
           | ORACLE_HIVE

    external_table_data_props ::= opt_2286 opt_2290 opt_2294

    external_table_data_format ::= RECORDS DELIMITED BY NEWLINE_
           | COLUMN TRANSFORMS LPAREN external_table_transform list_2296 RPAREN
           | external_table_records
           | external_table_fields
           | external_table_datapump
           | external_table_hive

    external_table_transform ::= column_name FROM grp_2297

    external_table_field ::= column_name opt_2303 opt_2305 opt_2306

    external_table_field_list ::= external_table_fields_clause list_2308

    external_table_fields_clause ::= external_table_field list_2310

    external_table_position_clause ::= opt_2311 LPAREN grp_2312 grp_2317 RPAREN

    external_table_datatype_clause ::= opt_2321 INTEGER opt_2322 opt_2323 opt_2324
           | grp_2325 grp_2326
           | ORACLE_DATE
           | ORACLE_NUMBER opt_2332
           | FLOAT opt_2333 opt_2334 opt_2335
           | DOUBLE
           | BINARY_FLOAT opt_2336 opt_2337 opt_2338
           | BINARY_DOUBLE
           | RAW opt_2339
           | CHAR opt_2340 opt_2342 opt_2343 opt_2344 opt_2345
           | grp_2346 LPAREN opt_2348 UNSIGNED_INTEGER RPAREN

    external_table_delimit_clause ::= ENCLOSED BY quoted_string opt_2350
           | TERMINATED BY grp_2351 opt_2356

    external_table_trim_clause ::= LRTRIM
           | NOTRIM
           | LTRIM
           | RTRIM
           | LDRTRIM

    external_table_date_format_clause ::= opt_2357 grp_2358

    external_table_init_clause ::= grp_2363 external_table_condition_clause

    external_table_condition_clause ::= grp_2364 relational_operator grp_2365
           | external_table_condition_clause grp_2366 external_table_condition_clause

    external_table_lls_clause ::= LLS external_table_directory

    external_table_records ::= RECORDS grp_2367 list_2374
           | list_2375

    external_table_record_options_clause ::= CHARACTERSET char_set_name
           | EXTERNAL VARIABLE DATA
           | PREPROCESSOR external_table_directory
           | DATA IS grp_2376 ENDIAN
           | BYTEORDERMARK grp_2377
           | STRING SIZES ARE IN grp_2378
           | LOAD WHEN external_table_condition_clause
           | external_table_output_files
           | READSIZE opt_2379 UNSIGNED_INTEGER
           | DISABLE_DIRECTORY_LINK_CHECK
           | DATE_CACHE UNSIGNED_INTEGER
           | SKIP_ UNSIGNED_INTEGER
           | IO_OPTIONS grp_2380
           | grp_2381
           | DNFS_READBUFFERS UNSIGNED_INTEGER

    external_table_output_files ::= grp_2382

    external_table_fields ::= FIELDS opt_2386 opt_2389 opt_2390 opt_2391 opt_2393 opt_2395 opt_2397 opt_2400 opt_2404 opt_2405 opt_2406 opt_2407

    external_table_datapump ::= ENCRYPTION grp_2408
           | NOLOGFILE
           | LOGFILE opt_2409 filename
           | COMPRESSION opt_2413
           | HADOOP_TRAILERS grp_2414 VERSION grp_2415
           | NOLOG
           | DEBUG EQ LPAREN UNSIGNED_INTEGER COMMA UNSIGNED_INTEGER RPAREN
           | DATAPUMP INTERNAL TABLE tableview_name
           | TEMPLATE_TABLE tableview_name
           | JOB LPAREN schema_name COMMA tableview_name COMMA UNSIGNED_INTEGER RPAREN
           | WORKERID UNSIGNED_INTEGER
           | PARALLEL UNSIGNED_INTEGER
           | VERSION quoted_string
           | ENCRYPTPASSWORDISNULL
           | DBLINK quoted_string

    external_table_hive ::= id_expression list_2417 grp_2418 grp_2419 opt_2435

    external_table_hive_parameter_map ::= LEFT_CURLY_PAREN seq_2438 RIGHT_CURLY_PAREN

    external_table_hive_parameter_map_entry ::= id_expression BINDVAR
           | id_expression COLON LBRACKET id_expression list_2440 RBRACKET
           | LBRACKET id_expression list_2442 RBRACKET

    external_table_directory ::= directory_name COLON CHAR_STRING
           | opt_2445 CHAR_STRING
           | quoted_string
           | variable_name

    row_movement_clause ::= opt_2447 ROW MOVEMENT

    flashback_archive_clause ::= FLASHBACK ARCHIVE opt_2448
           | NO FLASHBACK ARCHIVE

    log_grp ::= UNSIGNED_INTEGER
           | identifier

    supplemental_table_logging ::= ADD SUPPLEMENTAL LOG grp_2449 list_2452
           | DROP SUPPLEMENTAL LOG grp_2453 list_2456

    supplemental_log_grp_clause ::= GROUP log_grp LPAREN column_name opt_2458 list_2462 RPAREN opt_2463

    supplemental_id_key_clause ::= DATA LPAREN list_2468 RPAREN COLUMNS

    allocate_extent_clause ::= ALLOCATE EXTENT opt_2472

    deallocate_unused_clause ::= DEALLOCATE UNUSED opt_2474

    shrink_clause ::= SHRINK SPACE_KEYWORD opt_2475 opt_2476 opt_2477

    records_per_block_clause ::= opt_2479 RECORDS_PER_BLOCK

    upgrade_table_clause ::= UPGRADE seq_2481 column_properties

    truncate_table ::= TRUNCATE TABLE tableview_name opt_2486 opt_2490 opt_2491

    drop_table ::= DROP TABLE tableview_name opt_2493 opt_2495 opt_2498 opt_2499 opt_2501 opt_2502

    drop_tablespace ::= DROP TABLESPACE id_expression opt_2504 opt_2508 opt_2509

    drop_tablespace_set ::= DROP TABLESPACE SET id_expression opt_2510

    including_contents_clause ::= INCLUDING CONTENTS opt_2513 opt_2515

    drop_view ::= DROP VIEW tableview_name opt_2517 opt_2519

    comment_on_column ::= COMMENT ON COLUMN column_name IS quoted_string

    enable_or_disable ::= ENABLE
           | DISABLE

    allow_or_disallow ::= ALLOW
           | DISALLOW

    alter_synonym ::= ALTER opt_2520 SYNONYM opt_2522 synonym_name grp_2523

    create_synonym ::= CREATE opt_2525 PUBLIC SYNONYM synonym_name FOR opt_2527 schema_object_name opt_2529
           | CREATE opt_2531 SYNONYM opt_2533 synonym_name FOR opt_2535 schema_object_name opt_2539

    drop_synonym ::= DROP opt_2540 SYNONYM opt_2542 synonym_name opt_2543

    create_spfile ::= CREATE SPFILE opt_2545 FROM grp_2546

    spfile_name ::= CHAR_STRING

    pfile_name ::= CHAR_STRING

    comment_on_table ::= COMMENT ON TABLE tableview_name IS quoted_string

    comment_on_materialized ::= COMMENT ON MATERIALIZED VIEW tableview_name IS quoted_string

    alter_analytic_view ::= ALTER ANALYTIC VIEW opt_2552 id_expression grp_2553

    alter_add_cache_clause ::= ADD CACHE MEASURE GROUP LPAREN opt_2555 RPAREN LEVELS LPAREN levels_item list_2557 RPAREN

    levels_item ::= opt_2561 id_expression

    measure_list ::= id_expression list_2563

    alter_drop_cache_clause ::= DROP CACHE MEASURE GROUP LPAREN opt_2565 RPAREN LEVELS LPAREN levels_item list_2567 RPAREN

    alter_attribute_dimension ::= ALTER ATTRIBUTE DIMENSION opt_2569 id_expression grp_2570

    alter_audit_policy ::= ALTER AUDIT POLICY id_expression opt_2571 grp_2572 opt_2578 grp_2579 opt_2588

    alter_cluster ::= ALTER CLUSTER cluster_name list_2590 opt_2591

    drop_analytic_view ::= DROP ANALYTIC VIEW opt_2593 id_expression

    drop_attribute_dimension ::= DROP ATTRIBUTE DIMENSION opt_2595 id_expression

    drop_audit_policy ::= DROP AUDIT POLICY id_expression

    drop_flashback_archive ::= DROP FLASHBACK ARCHIVE id_expression

    drop_cluster ::= DROP CLUSTER cluster_name opt_2599

    drop_context ::= DROP CONTEXT id_expression

    drop_directory ::= DROP DIRECTORY id_expression

    drop_diskgroup ::= DROP DISKGROUP id_expression opt_2603

    drop_edition ::= DROP EDITION id_expression opt_2604

    truncate_cluster ::= TRUNCATE CLUSTER cluster_name opt_2607

    cache_or_nocache ::= CACHE
           | NOCACHE

    database_name ::= id_expression

    alter_database ::= ALTER database_clause grp_2608

    database_clause ::= opt_2609 DATABASE opt_2610

    startup_clauses ::= MOUNT opt_2613
           | OPEN opt_2615 opt_2616 opt_2617
           | OPEN READ ONLY

    resetlogs_or_noresetlogs ::= RESETLOGS
           | NORESETLOGS

    upgrade_or_downgrade ::= UPGRADE
           | DOWNGRADE

    recovery_clauses ::= general_recovery
           | managed_standby_recovery
           | begin_or_end BACKUP

    begin_or_end ::= BEGIN
           | END

    general_recovery ::= RECOVER opt_2618 opt_2620 grp_2621

    full_database_recovery ::= opt_2629 DATABASE opt_2634

    partial_database_recovery ::= TABLESPACE tablespace list_2636
           | DATAFILE CHAR_STRING
           | filenumber list_2638
           | partial_database_recovery_10g

    partial_database_recovery_10g ::= STANDBY grp_2639 UNTIL opt_2645 CONTROLFILE

    managed_standby_recovery ::= RECOVER grp_2646

    db_name ::= regular_id

    database_file_clauses ::= RENAME FILE filename list_2655 TO filename
           | create_datafile_clause
           | alter_datafile_clause
           | alter_tempfile_clause
           | move_datafile_clause

    create_datafile_clause ::= CREATE DATAFILE grp_2656 list_2659 opt_2661

    alter_datafile_clause ::= DATAFILE grp_2662 list_2665 grp_2666

    alter_tempfile_clause ::= TEMPFILE grp_2669 list_2672 grp_2673

    move_datafile_clause ::= MOVE DATAFILE grp_2675 list_2678 opt_2680 opt_2681 opt_2682

    logfile_clauses ::= grp_2683
           | opt_2685 FORCE LOGGING
           | SET STANDBY NOLOGGING FOR grp_2686
           | RENAME FILE filename list_2688 TO filename
           | CLEAR opt_2689 LOGFILE logfile_descriptor list_2691 opt_2693
           | add_logfile_clauses
           | drop_logfile_clauses
           | switch_logfile_clause
           | supplemental_db_logging

    add_logfile_clauses ::= ADD opt_2694 LOGFILE grp_2695

    group_redo_logfile ::= opt_2706 redo_log_file_spec

    drop_logfile_clauses ::= DROP opt_2707 LOGFILE grp_2708

    switch_logfile_clause ::= SWITCH ALL LOGFILES TO BLOCKSIZE UNSIGNED_INTEGER

    supplemental_db_logging ::= add_or_drop SUPPLEMENTAL LOG grp_2713

    add_or_drop ::= ADD
           | DROP

    supplemental_plsql_clause ::= DATA FOR PROCEDURAL REPLICATION

    logfile_descriptor ::= GROUP UNSIGNED_INTEGER
           | LPAREN filename list_2715 RPAREN
           | filename

    controlfile_clauses ::= CREATE opt_2717 STANDBY CONTROLFILE AS filename opt_2718
           | BACKUP CONTROLFILE TO grp_2719

    trace_file_clause ::= TRACE opt_2723 opt_2725

    standby_database_clauses ::= grp_2726 opt_2727

    activate_standby_db_clause ::= ACTIVATE opt_2729 STANDBY DATABASE opt_2731

    maximize_standby_db_clause ::= SET STANDBY DATABASE TO MAXIMIZE grp_2732

    register_logfile_clause ::= REGISTER opt_2734 grp_2735 LOGFILE

    commit_switchover_clause ::= grp_2736 TO SWITCHOVER opt_2749

    start_standby_clause ::= START LOGICAL STANDBY APPLY opt_2750 opt_2751 opt_2754

    stop_standby_clause ::= grp_2755 LOGICAL STANDBY APPLY

    convert_database_clause ::= CONVERT TO grp_2756 STANDBY

    default_settings_clause ::= DEFAULT EDITION EQUALS_OP edition_name
           | SET DEFAULT grp_2757 TABLESPACE
           | DEFAULT TABLESPACE tablespace
           | DEFAULT TEMPORARY TABLESPACE grp_2758
           | RENAME GLOBAL_NAME TO database list_2760
           | ENABLE BLOCK CHANGE TRACKING opt_2763
           | DISABLE BLOCK CHANGE TRACKING
           | flashback_mode_clause
           | set_time_zone_clause

    set_time_zone_clause ::= SET TIMEZONE EQUALS_OP CHAR_STRING

    instance_clauses ::= enable_or_disable INSTANCE CHAR_STRING

    security_clause ::= GUARD grp_2764

    domain ::= id_expression

    database ::= id_expression

    edition_name ::= regular_id

    filenumber ::= UNSIGNED_INTEGER

    filename ::= CHAR_STRING

    prepare_clause ::= PREPARE MIRROR COPY id_expression opt_2767 opt_2769

    drop_mirror_clause ::= DROP MIRROR COPY id_expression

    lost_write_protection ::= grp_2770 LOST WRITE PROTECTION

    cdb_fleet_clauses ::= lead_cdb_clause
           | lead_cdb_uri_clause

    lead_cdb_clause ::= SET LEAD_CDB EQ grp_2771

    lead_cdb_uri_clause ::= SET LEAD_CDB_URI EQ CHAR_STRING

    property_clauses ::= PROPERTY grp_2772 DEFAULT_CREDENTIAL EQ id_expression

    replay_upgrade_clauses ::= UPGRADE SYNC grp_2773

    alter_database_link ::= ALTER opt_2774 opt_2775 DATABASE LINK local_link_name grp_2776

    password_value ::= id_expression
           | numeric
           | VALUES CHAR_STRING

    link_authentication ::= AUTHENTICATED BY user_object_name IDENTIFIED BY password_value

    create_schema ::= CREATE SCHEMA AUTHORIZATION schema_name list_2779

    create_database ::= CREATE DATABASE database_name list_2789

    database_logging_clauses ::= LOGFILE database_logging_sub_clause list_2791
           | grp_2792 UNSIGNED_INTEGER
           | ARCHIVELOG
           | NOARCHIVELOG
           | FORCE LOGGING

    database_logging_sub_clause ::= opt_2794 file_specification

    tablespace_clauses ::= EXTENT MANAGEMENT LOCAL
           | opt_2795 DATAFILE file_specification list_2797
           | default_tablespace
           | default_temp_tablespace
           | undo_tablespace

    enable_pluggable_database ::= ENABLE PLUGGABLE DATABASE opt_2804 opt_2805

    file_name_convert ::= FILE_NAME_CONVERT EQUALS_OP grp_2806

    filename_convert_sub_clause ::= CHAR_STRING opt_2810

    tablespace_datafile_clauses ::= DATAFILES list_2812

    undo_mode_clause ::= LOCAL UNDO grp_2813

    default_tablespace ::= DEFAULT TABLESPACE tablespace opt_2815 opt_2816

    default_temp_tablespace ::= opt_2818 DEFAULT grp_2819 tablespace opt_2824 opt_2825

    undo_tablespace ::= opt_2827 UNDO TABLESPACE tablespace opt_2831

    drop_database ::= DROP DATABASE opt_2833 opt_2834

    create_database_link ::= CREATE opt_2835 opt_2836 DATABASE LINK link_name list_2840 opt_2842

    drop_database_link ::= DROP opt_2843 DATABASE LINK link_name

    alter_tablespace_set ::= ALTER TABLESPACE SET id_expression alter_tablespace_attrs

    alter_tablespace_attrs ::= default_tablespace_params
           | MINIMUM EXTENT size_clause
           | RESIZE size_clause
           | COALESCE
           | SHRINK SPACE_KEYWORD opt_2845
           | RENAME TO id_expression
           | grp_2846 BACKUP
           | datafile_tempfile_clauses
           | tablespace_logging_clauses
           | tablespace_group_clause
           | tablespace_state_clauses
           | autoextend_clause
           | flashback_mode_clause
           | tablespace_retention_clause
           | alter_tablespace_encryption
           | lost_write_protection

    alter_tablespace_encryption ::= ENCRYPTION grp_2847

    ts_file_name_convert ::= FILE_NAME_CONVERT EQ LPAREN CHAR_STRING COMMA CHAR_STRING list_2857 RPAREN opt_2858

    alter_role ::= ALTER ROLE role_name role_identified_clause opt_2859

    role_identified_clause ::= NOT IDENTIFIED
           | IDENTIFIED grp_2860

    alter_table ::= ALTER TABLE tableview_name list_2865 grp_2866 opt_2871

    memoptimize_read_write_clause ::= opt_2872 MEMOPTIMIZE FOR grp_2873

    alter_table_properties ::= alter_table_properties_1
           | RENAME TO tableview_name
           | shrink_clause
           | READ ONLY
           | READ WRITE
           | REKEY CHAR_STRING
           | opt_2874 ROW ARCHIVAL
           | annotations_clause

    alter_table_partitioning ::= add_table_partition
           | drop_table_partition
           | merge_table_partition
           | modify_table_partition
           | split_table_partition
           | truncate_table_partition
           | exchange_table_partition
           | coalesce_table_partition
           | alter_interval_partition
           | move_table_partition
           | rename_table_partition

    add_table_partition ::= ADD grp_2875

    drop_table_partition ::= DROP grp_2881 opt_2884

    merge_table_partition ::= MERGE PARTITION partition_name AND partition_name INTO PARTITION partition_name

    modify_table_partition ::= MODIFY grp_2885

    split_table_partition ::= SPLIT partition_extended_names grp_2896 opt_2907

    truncate_table_partition ::= TRUNCATE grp_2908 opt_2913 opt_2914 opt_2917

    exchange_table_partition ::= EXCHANGE PARTITION partition_name WITH TABLE tableview_name opt_2920 opt_2923

    coalesce_table_partition ::= COALESCE PARTITION opt_2924 opt_2926

    alter_interval_partition ::= SET INTERVAL LPAREN opt_2928 RPAREN

    move_table_partition ::= MOVE grp_2929 list_2935

    filter_condition ::= INCLUDING ROWS where_clause

    rename_table_partition ::= RENAME grp_2936 TO partition_name

    partition_extended_names ::= grp_2937 grp_2938

    subpartition_extended_names ::= grp_2947 grp_2948

    alter_table_properties_1 ::= list_2960 opt_2961

    alter_iot_clauses ::= index_org_table_clause
           | alter_overflow_clause
           | alter_mapping_table_clause
           | COALESCE

    alter_mapping_table_clause ::= MAPPING TABLE grp_2962

    alter_overflow_clause ::= add_overflow_clause
           | OVERFLOW_ list_2964

    add_overflow_clause ::= ADD OVERFLOW_ opt_2965 opt_2971

    update_index_clauses ::= update_global_index_clause
           | update_all_indexes_clause

    update_global_index_clause ::= grp_2972 GLOBAL INDEXES

    update_all_indexes_clause ::= UPDATE INDEXES opt_2974

    update_all_indexes_index_clause ::= index_name LPAREN grp_2975 RPAREN list_2977

    update_index_partition ::= index_partition_description opt_2978 list_2980

    update_index_subpartition ::= SUBPARTITION opt_2981 opt_2983 list_2985

    enable_disable_clause ::= grp_2986 opt_2988 grp_2989 opt_2992 opt_2993 opt_2994 opt_2997

    using_index_clause ::= USING INDEX grp_2998

    index_attributes ::= list_3001

    sort_or_nosort ::= SORT
           | NOSORT

    exceptions_clause ::= EXCEPTIONS INTO tableview_name

    move_table_clause ::= MOVE opt_3002 opt_3003 opt_3004 opt_3005 list_3007 opt_3008

    index_org_table_clause ::= list_3010 opt_3011
           | index_org_overflow_clause

    mapping_table_clause ::= MAPPING TABLE
           | NOMAPPING

    key_compression ::= NOCOMPRESS
           | COMPRESS UNSIGNED_INTEGER

    index_org_overflow_clause ::= opt_3013 OVERFLOW_ opt_3014

    column_clauses ::= add_modify_drop_column_clauses
           | rename_column_clause
           | modify_collection_retrieval
           | modify_lob_storage_clause

    modify_collection_retrieval ::= MODIFY NESTED TABLE collection_item RETURN AS grp_3015

    collection_item ::= tableview_name

    rename_column_clause ::= RENAME COLUMN old_column_name TO new_column_name

    old_column_name ::= column_name

    new_column_name ::= column_name

    add_modify_drop_column_clauses ::= list_3017

    drop_column_clause ::= SET UNUSED grp_3018 list_3023
           | DROP grp_3024 list_3028 opt_3030
           | DROP grp_3031 seq_3032

    modify_column_clauses ::= MODIFY grp_3033

    modify_col_properties ::= column_name opt_3038 opt_3042 opt_3044 list_3045 opt_3046 opt_3047

    modify_col_visibility ::= column_name grp_3048

    modify_col_substitutable ::= COLUMN column_name opt_3049 SUBSTITUTABLE AT ALL LEVELS opt_3050

    add_column_clause ::= ADD grp_3051 opt_3057

    varray_col_properties ::= VARRAY varray_item grp_3058

    varray_storage_clause ::= STORE AS opt_3061 LOB opt_3064

    lob_segname ::= regular_id
           | DELIMITED_ID

    lob_item ::= regular_id
           | quoted_string
           | DELIMITED_ID

    lob_storage_parameters ::= TABLESPACE id_expression
           | seq_3066
           | storage_clause

    lob_storage_clause ::= LOB grp_3067

    modify_lob_storage_clause ::= MODIFY LOB LPAREN lob_item RPAREN LPAREN modify_lob_parameters RPAREN

    modify_lob_parameters ::= list_3082

    lob_parameters ::= list_3087

    lob_deduplicate_clause ::= DEDUPLICATE
           | KEEP_DUPLICATES

    lob_compression_clause ::= NOCOMPRESS
           | COMPRESS opt_3089

    lob_retention_clause ::= RETENTION opt_3091

    encryption_spec ::= opt_3093 opt_3095 opt_3096 opt_3099

    tablespace ::= id_expression

    varray_item ::= opt_3101 opt_3103 id_expression

    column_properties ::= list_3110

    lob_partition_storage ::= LOB grp_3111

    period_definition ::= PERIOD FOR column_name opt_3120

    start_time_column ::= column_name

    end_time_column ::= column_name

    column_definition ::= column_name opt_3125 opt_3126 opt_3128 opt_3132 opt_3134 opt_3137 opt_3138

    column_collation_name ::= id_expression

    identity_clause ::= GENERATED opt_3142 AS IDENTITY opt_3143

    identity_options_parentheses ::= list_3144
           | LPAREN list_3145 RPAREN

    identity_options ::= START WITH grp_3146
           | INCREMENT BY numeric
           | MAXVALUE numeric
           | NOMAXVALUE
           | MINVALUE numeric
           | NOMINVALUE
           | CYCLE
           | NOCYCLE
           | CACHE numeric
           | NOCACHE
           | ORDER
           | NOORDER
           | SCALE grp_3147
           | NOSCALE
           | KEEP
           | NOKEEP

    virtual_column_definition ::= column_name opt_3151 opt_3153 opt_3154 opt_3155 opt_3156 opt_3159 opt_3163 list_3164 opt_3165

    virtual_column_expression ::= autogenerated_sequence_definition
           | opt_3168 AS LPAREN expression RPAREN

    autogenerated_sequence_definition ::= GENERATED opt_3172 AS IDENTITY opt_3176

    by_user_for_statistics_clause ::= BY USER FOR STATISTICS

    evaluation_edition_clause ::= EVALUATE USING grp_3177

    nested_table_col_properties ::= NESTED TABLE grp_3179 opt_3180 opt_3182 STORE AS tableview_name opt_3186 opt_3190

    nested_item ::= regular_id

    substitutable_column_clause ::= opt_3191 IS OF opt_3192 LPAREN type_name RPAREN
           | opt_3193 SUBSTITUTABLE AT ALL LEVELS

    partition_name ::= regular_id
           | DELIMITED_ID

    supplemental_logging_props ::= SUPPLEMENTAL LOG grp_3194

    object_type_col_properties ::= COLUMN regular_id substitutable_column_clause

    constraint_clauses ::= ADD LPAREN grp_3195 RPAREN
           | ADD grp_3198
           | MODIFY grp_3199 constraint_state opt_3202
           | RENAME CONSTRAINT old_constraint_name TO new_constraint_name
           | list_3203

    old_constraint_name ::= constraint_name

    new_constraint_name ::= constraint_name

    drop_constraint_clause ::= DROP grp_3204 opt_3207 opt_3210 opt_3211

    check_constraint ::= CHECK LPAREN condition RPAREN opt_3212

    foreign_key_clause ::= FOREIGN KEY paren_column_list references_clause opt_3213

    references_clause ::= REFERENCES tableview_name opt_3214 opt_3217

    on_delete_clause ::= ON DELETE grp_3218

    anonymous_block ::= opt_3221 BEGIN seq_of_statements opt_3224 END

    invoker_rights_clause ::= AUTHID grp_3225

    call_spec ::= java_spec
           | c_spec

    java_spec ::= LANGUAGE JAVA NAME CHAR_STRING

    c_spec ::= grp_3226 grp_3227 opt_3230 opt_3232 opt_3233

    c_agent_in_clause ::= AGENT IN LPAREN expressions_ RPAREN

    c_parameters_clause ::= PARAMETERS LPAREN c_external_parameter list_3235 RPAREN

    c_external_parameter ::= CONTEXT
           | SELF opt_3237
           | grp_3238 opt_3239 opt_3241 opt_3242

    c_property ::= INDICATOR opt_3244
           | LENGTH
           | DURATION
           | MAXLEN
           | CHARSETID
           | CHARSETFORM

    parameter ::= parameter_name list_3246 opt_3247 opt_3248

    default_value_part ::= grp_3249 expression

    seq_of_declare_specs ::= list_3250

    declare_spec ::= pragma_declaration
           | exception_declaration
           | procedure_spec
           | function_spec
           | variable_declaration
           | subtype_declaration
           | cursor_declaration
           | type_declaration
           | procedure_body
           | function_body
           | selection_directive

    variable_declaration ::= identifier opt_3251 type_spec opt_3254 opt_3255 SEMI

    subtype_declaration ::= SUBTYPE identifier IS type_spec opt_3257 opt_3259 SEMI

    cursor_declaration ::= CURSOR identifier opt_3263 opt_3265 opt_3267 SEMI

    parameter_spec ::= parameter_name opt_3270 opt_3271

    exception_declaration ::= identifier EXCEPTION SEMI

    pragma_declaration ::= PRAGMA grp_3272 SEMI

    record_type_def ::= RECORD LPAREN field_spec list_3279 RPAREN

    field_spec ::= column_name opt_3280 opt_3282 opt_3283

    ref_cursor_type_def ::= REF CURSOR opt_3285

    type_declaration ::= TYPE identifier IS grp_3286 SEMI

    table_type_def ::= TABLE OF type_spec opt_3288 opt_3289

    table_indexed_by_part ::= grp_3290 BY type_spec

    varray_type_def ::= grp_3291 LPAREN expression RPAREN OF type_spec opt_3294

    seq_of_statements ::= list_3298

    label_declaration ::= LT LT label_name GT GT

    statement ::= body
           | block
           | assignment_statement
           | continue_statement
           | exit_statement
           | goto_statement
           | if_statement
           | loop_statement
           | forall_statement
           | null_statement
           | raise_statement
           | return_statement
           | case_statement
           | sql_statement
           | call_statement
           | pipe_row_statement
           | grant_statement

    assignment_statement ::= grp_3299 ASSIGN_OP expression

    continue_statement ::= CONTINUE opt_3300 opt_3302

    exit_statement ::= EXIT opt_3303 opt_3305

    goto_statement ::= GOTO label_name

    if_statement ::= IF condition THEN seq_of_statements list_3306 opt_3307 END IF

    elsif_part ::= ELSIF condition THEN seq_of_statements

    else_part ::= ELSE seq_of_statements

    loop_statement ::= opt_3308 opt_3310 LOOP seq_of_statements END LOOP opt_3311

    cursor_loop_param ::= index_name IN opt_3312 lower_bound DOTDOT upper_bound
           | record_name IN grp_3313

    forall_statement ::= FORALL index_name IN bounds_clause opt_3318 grp_3319

    bounds_clause ::= lower_bound DOTDOT upper_bound
           | INDICES OF general_element opt_3320
           | VALUES OF index_name

    between_bound ::= BETWEEN lower_bound AND upper_bound

    lower_bound ::= concatenation

    upper_bound ::= concatenation

    null_statement ::= NULL_

    raise_statement ::= RAISE opt_3321

    return_statement ::= RETURN opt_3322

    call_statement ::= opt_3323 routine_name opt_3324 list_3327 opt_3329

    pipe_row_statement ::= PIPE ROW LPAREN expression RPAREN

    selection_directive ::= DOLLAR_IF condition DOLLAR_THEN opt_3330 list_3333 opt_3336 DOLLAR_END

    error_directive ::= DOLLAR_ERROR concatenation DOLLAR_END

    selection_directive_body ::= list_3339

    body ::= BEGIN seq_of_statements opt_3342 END opt_3343

    exception_handler ::= WHEN exception_name list_3345 THEN seq_of_statements

    trigger_block ::= opt_3348 body

    tps_block ::= list_3349 body

    block ::= opt_3352 body

    sql_statement ::= execute_immediate
           | data_manipulation_language_statements
           | cursor_manipulation_statements
           | transaction_control_statements
           | collection_method_call

    execute_immediate ::= EXECUTE IMMEDIATE expression opt_3356

    dynamic_returning_clause ::= grp_3357 into_clause

    data_manipulation_language_statements ::= merge_statement
           | lock_table_statement
           | select_statement
           | update_statement
           | delete_statement
           | insert_statement
           | explain_statement

    cursor_manipulation_statements ::= close_statement
           | open_statement
           | fetch_statement
           | open_for_statement

    close_statement ::= CLOSE cursor_name

    open_statement ::= OPEN cursor_name opt_3360

    fetch_statement ::= FETCH cursor_name grp_3361

    variable_or_collection ::= variable_name
           | collection_expression

    open_for_statement ::= OPEN variable_name FOR grp_3369 opt_3370

    transaction_control_statements ::= set_transaction_command
           | set_constraint_command
           | commit_statement
           | rollback_statement
           | savepoint_statement

    set_transaction_command ::= SET TRANSACTION opt_3374 opt_3376

    set_constraint_command ::= SET grp_3377 grp_3378 grp_3381

    commit_statement ::= COMMIT opt_3382 opt_3383 opt_3389

    write_clause ::= WRITE list_3393

    rollback_statement ::= ROLLBACK opt_3394 opt_3397

    savepoint_statement ::= SAVEPOINT savepoint_name

    collection_method_call ::= expression DOT grp_3398

    explain_statement ::= EXPLAIN PLAN opt_3410 opt_3412 FOR grp_3413

    select_only_statement ::= opt_3414 subquery

    select_statement ::= select_only_statement list_3416

    with_clause ::= WITH list_3418 with_factoring_clause list_3420
           | WITH list_3422 opt_3426

    with_factoring_clause ::= subquery_factoring_clause
           | subav_factoring_clause

    subquery_factoring_clause ::= query_name opt_3427 AS LPAREN subquery opt_3428 RPAREN opt_3429 opt_3430

    search_clause ::= SEARCH grp_3431 FIRST BY column_name opt_3432 opt_3433 opt_3435 opt_3437 list_3445 SET column_name

    cycle_clause ::= CYCLE column_list SET column_name TO expression DEFAULT expression

    subav_factoring_clause ::= id_expression ANALYTIC VIEW AS LPAREN subav_clause RPAREN

    subav_clause ::= USING object_name opt_3446 opt_3447 opt_3448

    hierarchies_clause ::= HIERARCHIES LPAREN list_3449 object_name list_3452 RPAREN

    filter_clauses ::= FILTER FACT LPAREN filter_clause list_3454 RPAREN

    filter_clause ::= grp_3455 TO condition

    add_calcs_clause ::= ADD MEASURES LPAREN add_calc_meas_clause list_3457 RPAREN

    add_calc_meas_clause ::= id_expression AS LPAREN expression RPAREN

    subquery ::= subquery_basic_elements list_3458

    subquery_basic_elements ::= query_block
           | LPAREN subquery RPAREN

    subquery_operation_part ::= grp_3459 subquery_basic_elements

    query_block ::= SELECT opt_3462 selected_list opt_3463 opt_3464 opt_3465 list_3467 opt_3468 opt_3469 opt_3470 opt_3471

    selected_list ::= STAR
           | select_list_elements list_3473

    from_clause ::= FROM table_ref_list

    select_list_elements ::= tableview_name DOT ASTERISK
           | expression opt_3474

    table_ref_list ::= table_ref list_3476

    table_ref ::= table_ref_aux list_3477 opt_3479

    table_ref_aux ::= table_ref_aux_internal list_3480 opt_3481

    table_ref_aux_internal ::= dml_table_expression_clause opt_3483
           | LPAREN table_ref list_3484 RPAREN opt_3486
           | ONLY LPAREN dml_table_expression_clause RPAREN

    join_clause ::= opt_3487 opt_3489 opt_3491 JOIN table_ref_aux opt_3492 list_3494
           | grp_3495 APPLY table_ref_aux

    join_on_part ::= ON condition

    join_using_part ::= USING paren_column_list

    outer_join_type ::= grp_3496 opt_3497

    query_partition_clause ::= PARTITION BY grp_3498

    flashback_query_clause ::= VERSIONS grp_3502 expression AND expression
           | AS OF grp_3504

    pivot_clause ::= PIVOT opt_3506 LPAREN pivot_element list_3508 pivot_for_clause pivot_in_clause RPAREN opt_3509

    pivot_element ::= grp_3510 opt_3511

    pivot_for_clause ::= FOR grp_3512

    pivot_in_clause ::= IN LPAREN grp_3513 RPAREN

    pivot_in_clause_element ::= pivot_in_clause_elements opt_3518

    pivot_in_clause_elements ::= expression
           | LPAREN opt_3519 RPAREN

    unpivot_clause ::= UNPIVOT opt_3522 LPAREN grp_3523 pivot_for_clause unpivot_in_clause RPAREN opt_3524

    unpivot_in_clause ::= IN LPAREN unpivot_in_elements list_3526 RPAREN

    unpivot_in_elements ::= grp_3527 opt_3532

    hierarchical_query_clause ::= CONNECT BY opt_3533 condition opt_3534
           | start_part CONNECT BY opt_3535 condition

    start_part ::= START WITH condition

    group_by_clause ::= GROUP BY group_by_elements list_3537 opt_3538
           | having_clause opt_3542

    group_by_elements ::= grouping_sets_clause
           | rollup_cube_clause
           | expression

    rollup_cube_clause ::= grp_3543 LPAREN grouping_sets_elements list_3545 RPAREN

    grouping_sets_clause ::= GROUPING SETS LPAREN grouping_sets_elements list_3547 RPAREN

    grouping_sets_elements ::= rollup_cube_clause
           | LPAREN opt_3548 RPAREN
           | expression

    having_clause ::= HAVING condition

    model_clause ::= MODEL list_3549 opt_3550 list_3551 main_model

    cell_reference_options ::= grp_3552 NAV
           | UNIQUE grp_3553

    return_rows_clause ::= RETURN grp_3554 ROWS

    reference_model ::= REFERENCE reference_model_name ON LPAREN subquery RPAREN model_column_clauses list_3555

    main_model ::= opt_3557 model_column_clauses list_3558 model_rules_clause

    model_column_clauses ::= opt_3559 DIMENSION BY model_column_list MEASURES model_column_list

    model_column_partition_part ::= PARTITION BY model_column_list

    model_column_list ::= LPAREN model_column list_3561 RPAREN

    model_column ::= grp_3562 opt_3563

    model_rules_clause ::= opt_3564 LPAREN opt_3568 RPAREN

    model_rules_part ::= RULES opt_3571 opt_3574 opt_3575

    model_rules_element ::= opt_3578 cell_assignment opt_3579 EQ expression

    cell_assignment ::= model_expression

    model_iterate_clause ::= ITERATE LPAREN expression RPAREN opt_3580

    until_part ::= UNTIL LPAREN condition RPAREN

    order_by_clause ::= ORDER opt_3581 BY order_by_elements list_3583

    order_by_elements ::= expression opt_3585 opt_3588

    offset_clause ::= OFFSET expression grp_3589

    fetch_clause ::= FETCH grp_3590 opt_3593 grp_3594 grp_3595

    for_update_clause ::= FOR UPDATE opt_3596 opt_3597

    for_update_of_part ::= OF column_list

    for_update_options ::= SKIP_ LOCKED
           | NOWAIT
           | WAIT expression

    update_statement ::= UPDATE general_table_ref update_set_clause opt_3598 opt_3599 opt_3600

    update_set_clause ::= SET grp_3601

    column_based_update_set_clause ::= column_name EQ expression
           | paren_column_list EQ subquery

    delete_statement ::= DELETE opt_3604 general_table_ref opt_3605 opt_3606 opt_3607

    insert_statement ::= INSERT grp_3608

    single_table_insert ::= insert_into_clause grp_3609 opt_3611

    multi_table_insert ::= grp_3612 select_statement

    multi_table_element ::= insert_into_clause opt_3614 opt_3615

    conditional_insert_clause ::= opt_3617 list_3618 opt_3619

    conditional_insert_when_part ::= WHEN condition THEN list_3620

    conditional_insert_else_part ::= ELSE list_3621

    insert_into_clause ::= INTO general_table_ref opt_3622 opt_3623

    values_clause ::= VALUES grp_3624

    merge_statement ::= MERGE INTO selected_tableview USING selected_tableview ON LPAREN condition RPAREN grp_3625 opt_3628 opt_3629

    merge_update_clause ::= WHEN MATCHED THEN UPDATE SET merge_element list_3631 opt_3632 opt_3633

    merge_element ::= column_name EQ expression

    merge_update_delete_part ::= DELETE where_clause

    merge_insert_clause ::= WHEN NOT MATCHED THEN INSERT opt_3634 values_clause opt_3635

    selected_tableview ::= grp_3636 opt_3637

    lock_table_statement ::= LOCK TABLE lock_table_element list_3639 IN lock_mode MODE opt_3640

    wait_nowait_part ::= WAIT expression
           | NOWAIT

    lock_table_element ::= tableview_name opt_3641

    lock_mode ::= ROW SHARE
           | ROW EXCLUSIVE
           | SHARE opt_3642
           | SHARE ROW EXCLUSIVE
           | EXCLUSIVE

    general_table_ref ::= grp_3643 opt_3644

    static_returning_clause ::= grp_3645 expressions_ into_clause

    error_logging_clause ::= LOG ERRORS opt_3646 opt_3647 opt_3648

    error_logging_into_part ::= INTO tableview_name

    error_logging_reject_part ::= REJECT LIMIT grp_3649

    dml_table_expression_clause ::= table_collection_expression
           | LPAREN select_statement opt_3650 RPAREN
           | tableview_name opt_3651 opt_3652
           | json_table_clause opt_3654
           | LATERAL LPAREN subquery opt_3655 RPAREN
           | seq_3656

    table_collection_expression ::= grp_3657 grp_3658

    subquery_restriction_clause ::= WITH grp_3660

    sample_clause ::= SAMPLE opt_3663 LPAREN expression opt_3665 RPAREN opt_3666

    seed_part ::= SEED LPAREN expression RPAREN

    condition ::= expression
           | JSON_EQUAL LPAREN expressions_ RPAREN

    expressions_ ::= expression list_3668

    expression ::= cursor_expression
           | logical_expression

    cursor_expression ::= CURSOR LPAREN subquery RPAREN

    logical_expression ::= unary_logical_expression
           | logical_expression AND logical_expression
           | logical_expression OR logical_expression

    unary_logical_expression ::= opt_3669 multiset_expression opt_3670

    unary_logical_operation ::= IS opt_3671 logical_operation

    logical_operation ::= grp_3672

    multiset_expression ::= relational_expression opt_3688
           | multiset_expression MULTISET grp_3689 opt_3691 relational_expression

    relational_expression ::= relational_expression relational_operator relational_expression
           | relational_expression opt_3692 IN in_elements
           | compound_expression

    compound_expression ::= concatenation opt_3699

    relational_operator ::= EQ
           | grp_3700
           | grp_3701 opt_3702

    in_elements ::= LPAREN subquery RPAREN
           | LPAREN concatenation list_3704 RPAREN
           | constant
           | bind_variable
           | general_element

    between_elements ::= concatenation AND concatenation

    concatenation ::= model_expression opt_3707 opt_3710
           | concatenation DOUBLE_ASTERISK concatenation
           | concatenation grp_3711 concatenation
           | concatenation grp_3712 concatenation
           | concatenation BAR BAR concatenation
           | concatenation COLLATE column_collation_name

    interval_expression ::= DAY opt_3714 TO SECOND opt_3716
           | YEAR opt_3718 TO MONTH

    model_expression ::= opt_3720 unary_expression opt_3722

    model_expression_element ::= grp_3723 list_3726
           | single_column_for_loop list_3728
           | multi_column_for_loop

    single_column_for_loop ::= FOR column_name grp_3729

    multi_column_for_loop ::= FOR paren_column_list IN LPAREN grp_3734 RPAREN

    unary_expression ::= PRIOR unary_expression_core
           | CONNECT_BY_ROOT unary_expression_core
           | NEW unary_expression_core
           | OLD unary_expression_core
           | unary_expression_core opt_3741

    unary_expression_core ::= case_expression
           | quantified_expression
           | standard_function
           | atom
           | implicit_cursor_expression

    implicit_cursor_expression ::= SQL grp_3742

    collection_expression ::= collation_name LPAREN expression RPAREN list_3746

    case_statement ::= searched_case_statement
           | simple_case_statement

    simple_case_statement ::= opt_3747 CASE expression list_3748 opt_3749 END opt_3750 opt_3751

    searched_case_statement ::= opt_3752 CASE list_3753 opt_3754 END opt_3755 opt_3756

    case_when_part_statement ::= WHEN expression THEN seq_of_statements

    case_else_part_statement ::= ELSE seq_of_statements

    case_expression ::= searched_case_expression
           | simple_case_expression

    simple_case_expression ::= CASE expression list_3757 opt_3758 END opt_3759

    searched_case_expression ::= CASE list_3760 opt_3761 END opt_3762

    case_when_part_expression ::= WHEN expression THEN expression

    case_else_part_expression ::= ELSE expression

    atom ::= bind_variable
           | constant
           | inquiry_directive
           | general_element opt_3763
           | LPAREN subquery RPAREN list_3764
           | LPAREN expressions_ RPAREN

    quantified_expression ::= grp_3765 grp_3766

    string_function ::= SUBSTR LPAREN expression COMMA expression opt_3770 RPAREN
           | TO_CHAR LPAREN grp_3771 opt_3773 opt_3775 RPAREN
           | DECODE LPAREN expressions_ RPAREN
           | CHR LPAREN concatenation USING NCHAR_CS RPAREN
           | NVL LPAREN expression COMMA expression RPAREN
           | TRIM LPAREN opt_3780 concatenation RPAREN
           | TO_DATE LPAREN grp_3781 opt_3783 opt_3787 RPAREN

    standard_function ::= string_function
           | numeric_function_wrapper
           | json_function
           | other_function

    json_function ::= JSON_ARRAY LPAREN json_array_element list_3789 opt_3790 opt_3791 opt_3792 RPAREN
           | JSON_ARRAYAGG LPAREN expression opt_3794 opt_3795 opt_3796 opt_3797 opt_3798 RPAREN
           | JSON_OBJECT LPAREN json_object_content RPAREN
           | JSON_OBJECTAGG LPAREN opt_3799 expression VALUE expression opt_3802 opt_3809 opt_3810 opt_3812 RPAREN
           | JSON_QUERY LPAREN expression opt_3814 COMMA CHAR_STRING json_query_returning_clause opt_3815 opt_3816 opt_3817 RPAREN
           | JSON_SERIALIZE LPAREN CHAR_STRING opt_3819 opt_3820 opt_3821 opt_3822 opt_3826 RPAREN
           | JSON_TRANSFORM LPAREN expression COMMA json_transform_op list_3828 RPAREN
           | JSON_VALUE LPAREN expression opt_3830 grp_3831 OP_27334

    json_object_content ::= grp_3843 opt_3846 opt_3847 opt_3848 opt_3850

    json_object_entry ::= grp_3851 opt_3856

    json_table_clause ::= JSON_TABLE LPAREN expression opt_3858 opt_3860 opt_3863 opt_3866 opt_3867 RPAREN

    json_array_element ::= grp_3868 opt_3870

    json_on_null_clause ::= grp_3871 ON NULL_

    json_return_clause ::= RETURNING grp_3872

    json_transform_op ::= REMOVE CHAR_STRING opt_3880
           | INSERT CHAR_STRING EQ CHAR_STRING opt_3883 opt_3887
           | REPLACE CHAR_STRING EQ CHAR_STRING opt_3890 opt_3894
           | expression opt_3896
           | APPEND CHAR_STRING EQ CHAR_STRING opt_3899 opt_3903
           | SET CHAR_STRING EQ expression opt_3905 opt_3908 opt_3911 opt_3915

    json_column_clause ::= COLUMNS LPAREN json_column_definition list_3917 RPAREN

    json_column_definition ::= expression opt_3918 opt_3923 opt_3924 opt_3925
           | expression opt_3926 opt_3927 FORMAT JSON opt_3928 PATH CHAR_STRING
           | NESTED opt_3929 expression opt_3931 json_column_clause
           | expression FOR ORDINALITY

    json_query_returning_clause ::= opt_3933 opt_3934 opt_3935

    json_query_return_type ::= VARCHAR2 opt_3939
           | CLOB
           | BLOB

    json_query_wrapper_clause ::= seq_3941
           | grp_3942

    json_query_on_error_clause ::= opt_3947 ON ERROR

    json_query_on_empty_clause ::= opt_3949 ON EMPTY_

    json_value_return_clause ::= RETURNING opt_3950 opt_3951

    json_value_return_type ::= VARCHAR2 opt_3955 opt_3956
           | CLOB
           | DATE
           | NUMBER opt_3960
           | TIMESTAMP opt_3962
           | SDO_GEOMETRY
           | expression opt_3964

    json_value_on_mismatch_clause ::= grp_3965 ON MISMATCH opt_3967

    literal ::= CHAR_STRING
           | string_function
           | numeric
           | numeric_negative
           | MAXVALUE

    numeric_function_wrapper ::= numeric_function opt_3969

    numeric_function ::= SUM LPAREN opt_3971 expression RPAREN opt_3973
           | COUNT LPAREN grp_3974 RPAREN opt_3980
           | ROUND LPAREN expression opt_3983 RPAREN
           | AVG LPAREN opt_3985 expression RPAREN opt_3987
           | MIN LPAREN opt_3989 expression RPAREN opt_3991
           | MAX LPAREN opt_3993 expression RPAREN opt_3995
           | LEAST LPAREN expressions_ RPAREN
           | GREATEST LPAREN expressions_ RPAREN

    listagg_overflow_clause ::= ON OVERFLOW_ grp_3996 opt_3997 opt_4000

    other_function ::= over_clause_keyword function_argument_analytic opt_4001
           | regular_id function_argument_modeling opt_4002
           | COUNT LPAREN grp_4003 RPAREN opt_4006
           | grp_4007 LPAREN grp_4008 AS type_spec opt_4010 opt_4014 RPAREN
           | COALESCE LPAREN table_element opt_4017 RPAREN
           | COLLECT LPAREN opt_4019 concatenation opt_4020 RPAREN
           | within_or_over_clause_keyword function_argument list_4021
           | LISTAGG LPAREN opt_4023 argument opt_4025 opt_4026 RPAREN opt_4028 opt_4029
           | cursor_name grp_4030
           | DECOMPOSE LPAREN concatenation opt_4032 RPAREN
           | EXTRACT LPAREN regular_id FROM concatenation RPAREN
           | grp_4033 function_argument_analytic opt_4034 over_clause
           | grp_4035 function_argument_analytic opt_4036 over_clause
           | standard_prediction_function_keyword LPAREN expressions_ opt_4037 opt_4038 RPAREN
           | grp_4039 LPAREN concatenation opt_4041 opt_4045 RPAREN
           | grp_4046 LPAREN concatenation opt_4048 RPAREN
           | TRANSLATE LPAREN expression opt_4051 list_4053 RPAREN
           | TREAT LPAREN expression AS opt_4054 type_spec RPAREN list_4056
           | TRIM LPAREN opt_4061 concatenation RPAREN
           | VALIDATE_CONVERSION LPAREN concatenation AS type_spec opt_4065 RPAREN
           | XMLAGG LPAREN expression opt_4066 RPAREN list_4068
           | grp_4069 LPAREN xml_multiuse_expression_element list_4071 RPAREN list_4073
           | XMLELEMENT LPAREN opt_4075 opt_4077 expression opt_4079 list_4082 RPAREN list_4084
           | XMLEXISTS LPAREN expression opt_4085 RPAREN
           | XMLPARSE LPAREN grp_4086 concatenation opt_4087 RPAREN list_4089
           | XMLPI LPAREN grp_4090 opt_4092 RPAREN list_4094
           | XMLQUERY LPAREN concatenation opt_4095 RETURNING CONTENT opt_4097 RPAREN list_4099
           | XMLROOT LPAREN concatenation opt_4101 opt_4103 RPAREN list_4105
           | XMLSERIALIZE LPAREN grp_4106 concatenation opt_4108 opt_4109 opt_4110 opt_4111 opt_4114 RPAREN opt_4116
           | TIME CHAR_STRING
           | xmltable

    over_clause_keyword ::= AVG
           | CORR
           | LAG_DIFF
           | LAG_DIFF_PERCENT
           | MAX
           | MEDIAN
           | MIN
           | NTH_VALUE
           | NTILE
           | RATIO_TO_REPORT
           | ROW_NUMBER
           | SUM
           | VARIANCE
           | REGR_
           | STDDEV
           | VAR_
           | VAR_POP
           | COVAR_
           | WM_CONCAT

    within_or_over_clause_keyword ::= CUME_DIST
           | DENSE_RANK
           | PERCENT_RANK
           | PERCENTILE_CONT
           | PERCENTILE_DISC
           | RANK

    standard_prediction_function_keyword ::= PREDICTION
           | PREDICTION_BOUNDS
           | PREDICTION_COST
           | PREDICTION_DETAILS
           | PREDICTION_PROBABILITY
           | PREDICTION_SET

    over_clause ::= OVER LPAREN grp_4117 RPAREN

    windowing_clause ::= windowing_type grp_4124

    windowing_type ::= ROWS
           | RANGE

    windowing_elements ::= UNBOUNDED PRECEDING
           | CURRENT ROW
           | concatenation grp_4125

    using_clause ::= USING grp_4126

    using_element ::= IN expression
           | IN OUT assignable_element
           | OUT assignable_element
           | expression

    assignable_element ::= general_element
           | bind_variable

    collect_order_by_part ::= ORDER BY concatenation list_4130

    within_or_over_part ::= WITHIN GROUP LPAREN order_by_clause RPAREN
           | over_clause

    string_delimiter ::= CHAR_STRING
           | string_function
           | string_delimiter BAR BAR string_delimiter
           | LPAREN string_delimiter RPAREN
           | id_expression

    cost_matrix_clause ::= COST grp_4131

    xml_passing_clause ::= PASSING opt_4137 expression opt_4138 list_4141

    xml_attributes_clause ::= XMLATTRIBUTES LPAREN opt_4143 opt_4145 xml_multiuse_expression_element list_4147 RPAREN

    xml_namespaces_clause ::= XMLNAMESPACES LPAREN opt_4149 list_4151 opt_4152 RPAREN

    xml_table_column ::= xml_column_name grp_4153

    xml_general_default_part ::= DEFAULT concatenation

    xml_multiuse_expression_element ::= expression opt_4161

    xmlroot_param_version_part ::= VERSION grp_4162

    xmlroot_param_standalone_part ::= STANDALONE grp_4163

    xmlserialize_param_enconding_part ::= ENCODING concatenation

    xmlserialize_param_version_part ::= VERSION concatenation

    xmlserialize_param_ident_part ::= NO INDENT
           | INDENT opt_4166

    annotations_clause ::= ANNOTATIONS LPAREN annotations_list RPAREN

    annotations_list ::= opt_4172 annotation list_4174

    annotation ::= identifier opt_4175

    sql_plus_command ::= EXIT
           | PROMPT_MESSAGE
           | SHOW grp_4176
           | whenever_command
           | timing_command
           | start_command
           | set_command
           | clear_command

    start_command ::= grp_4177 sql_plus_filepath

    sql_plus_filepath ::= opt_4180 opt_4182 list_4185 id_expression PERIOD grp_4186

    whenever_command ::= WHENEVER grp_4187 grp_4188

    set_command ::= SET grp_4194

    timing_command ::= TIMING opt_4202

    clear_command ::= CLEAR seq_4204
           | ALL

    partition_extension_clause ::= grp_4205 opt_4206 LPAREN opt_4207 RPAREN

    column_alias ::= opt_4208 grp_4209
           | AS

    table_alias ::= identifier
           | quoted_string

    where_clause ::= WHERE grp_4210

    into_clause ::= opt_4212 INTO grp_4213 list_4216

    xml_column_name ::= identifier
           | quoted_string

    cost_class_name ::= identifier

    attribute_name ::= identifier

    savepoint_name ::= identifier

    rollback_segment_name ::= identifier

    schema_name ::= identifier

    routine_name ::= identifier list_4218 opt_4220

    package_name ::= identifier

    implementation_type_name ::= identifier opt_4222

    parameter_name ::= identifier

    reference_model_name ::= identifier

    main_model_name ::= identifier

    container_tableview_name ::= identifier opt_4224

    aggregate_function_name ::= identifier list_4226

    query_name ::= identifier

    grantee_name ::= id_expression opt_4227

    role_name ::= id_expression
           | CONNECT

    constraint_name ::= identifier list_4229 opt_4231

    label_name ::= id_expression

    type_name ::= id_expression list_4233

    sequence_name ::= id_expression list_4235

    exception_name ::= identifier list_4237

    function_name ::= identifier opt_4239

    procedure_name ::= identifier opt_4241

    trigger_name ::= identifier opt_4243

    variable_name ::= opt_4245 id_expression opt_4247
           | bind_variable

    index_name ::= identifier opt_4249

    cursor_name ::= general_element
           | bind_variable

    record_name ::= identifier
           | bind_variable

    link_name ::= database list_4251 opt_4253

    local_link_name ::= identifier

    connection_qualifier ::= identifier

    column_name ::= identifier list_4255

    tableview_name ::= identifier opt_4257 opt_4259
           | xmltable opt_4260

    xmltable ::= XMLTABLE LPAREN opt_4262 concatenation opt_4263 opt_4267 RPAREN opt_4269

    char_set_name ::= id_expression list_4271

    synonym_name ::= identifier

    schema_object_name ::= id_expression

    dir_object_name ::= id_expression

    user_object_name ::= id_expression

    grant_object_name ::= tableview_name
           | USER user_object_name list_4273
           | DIRECTORY dir_object_name
           | EDITION schema_object_name
           | MINING MODEL schema_object_name
           | JAVA grp_4274 schema_object_name
           | SQL TRANSLATION PROFILE schema_object_name

    column_list ::= column_name list_4276

    paren_column_list ::= LEFT_PAREN column_list RIGHT_PAREN

    keep_clause ::= KEEP LPAREN DENSE_RANK grp_4277 grp_4278 RPAREN opt_4279

    function_argument ::= LPAREN opt_4283 RPAREN opt_4284

    function_argument_analytic ::= LPAREN opt_4290 RPAREN opt_4291

    function_argument_modeling ::= LPAREN column_name opt_4297 USING grp_4298 RPAREN opt_4303

    respect_or_ignore_nulls ::= grp_4304 NULLS

    argument ::= opt_4306 expression

    type_spec ::= datatype
           | opt_4307 type_name opt_4309

    datatype ::= native_datatype_element opt_4310 opt_4313
           | INTERVAL grp_4314 opt_4316 TO grp_4317 opt_4319

    precision_part ::= LPAREN grp_4320 opt_4323 opt_4325 RPAREN

    native_datatype_element ::= BINARY_INTEGER
           | PLS_INTEGER
           | NATURAL
           | BINARY_FLOAT
           | BINARY_DOUBLE
           | NATURALN
           | POSITIVE
           | POSITIVEN
           | SIGNTYPE
           | SIMPLE_INTEGER
           | NVARCHAR2
           | DEC
           | INTEGER
           | INT
           | NUMERIC
           | SMALLINT
           | NUMBER
           | DECIMAL
           | DOUBLE opt_4326
           | FLOAT
           | REAL
           | NCHAR
           | LONG opt_4327
           | CHAR
           | CHARACTER opt_4328
           | VARCHAR2
           | VARCHAR
           | STRING
           | RAW
           | BOOLEAN
           | DATE
           | ROWID
           | UROWID
           | YEAR
           | MONTH
           | DAY
           | HOUR
           | MINUTE
           | SECOND
           | SDO_GEOMETRY
           | TIMEZONE_HOUR
           | TIMEZONE_MINUTE
           | TIMEZONE_REGION
           | TIMEZONE_ABBR
           | TIMESTAMP
           | TIMESTAMP_UNCONSTRAINED
           | TIMESTAMP_TZ_UNCONSTRAINED
           | TIMESTAMP_LTZ_UNCONSTRAINED
           | YMINTERVAL_UNCONSTRAINED
           | DSINTERVAL_UNCONSTRAINED
           | BFILE
           | BLOB
           | CLOB
           | NCLOB
           | MLSLABEL
           | XMLTYPE

    bind_variable ::= grp_4329 opt_4333 list_4335

    general_element ::= general_element_part
           | general_element list_4337
           | LPAREN general_element RPAREN

    general_element_part ::= opt_4339 id_expression opt_4341 list_4342

    table_element ::= opt_4344 id_expression list_4346

    object_privilege ::= ALL opt_4347
           | ALTER
           | DEBUG
           | DELETE
           | EXECUTE
           | FLASHBACK
           | FLASHBACK ARCHIVE
           | INDEX
           | INHERIT PRIVILEGES
           | INHERIT REMOTE PRIVILEGES
           | INSERT
           | KEEP SEQUENCE
           | MERGE VIEW
           | ON COMMIT REFRESH
           | QUERY REWRITE
           | READ
           | REFERENCES
           | SELECT
           | TRANSLATE SQL
           | UNDER
           | UPDATE
           | USE
           | WRITE

    system_privilege ::= ALL PRIVILEGES
           | ADVISOR
           | ADMINISTER opt_4348 SQL TUNING SET
           | grp_4349 ANY SQL PROFILE
           | ADMINISTER SQL MANAGEMENT OBJECT
           | CREATE opt_4350 CLUSTER
           | grp_4351 ANY CLUSTER
           | grp_4352 ANY CONTEXT
           | EXEMPT REDACTION POLICY
           | ALTER DATABASE
           | grp_4353 opt_4354 DATABASE LINK
           | DROP PUBLIC DATABASE LINK
           | DEBUG CONNECT SESSION
           | DEBUG ANY PROCEDURE
           | ANALYZE ANY DICTIONARY
           | CREATE opt_4355 DIMENSION
           | grp_4356 ANY DIMENSION
           | grp_4357 ANY DIRECTORY
           | grp_4358 ANY EDITION
           | FLASHBACK grp_4359
           | grp_4360 ANY INDEX
           | CREATE opt_4361 INDEXTYPE
           | grp_4362 ANY INDEXTYPE
           | CREATE opt_4364 JOB
           | EXECUTE ANY grp_4365
           | MANAGE SCHEDULER
           | ADMINISTER KEY MANAGEMENT
           | CREATE opt_4366 LIBRARY
           | grp_4367 ANY LIBRARY
           | LOGMINING
           | CREATE opt_4368 MATERIALIZED VIEW
           | grp_4369 ANY MATERIALIZED VIEW
           | opt_4370 QUERY REWRITE
           | ON COMMIT REFRESH
           | CREATE opt_4371 MINING MODEL
           | grp_4372 ANY MINING MODEL
           | CREATE opt_4373 CUBE
           | grp_4374 ANY CUBE
           | CREATE opt_4375 MEASURE FOLDER
           | grp_4376 ANY MEASURE FOLDER
           | CREATE opt_4377 CUBE DIMENSION
           | grp_4378 ANY CUBE DIMENSION
           | CREATE opt_4379 CUBE BUILD PROCESS
           | grp_4380 ANY CUBE BUILD PROCESS
           | CREATE opt_4381 OPERATOR
           | grp_4382 ANY OPERATOR
           | grp_4383 ANY OUTLINE
           | CREATE PLUGGABLE DATABASE
           | SET CONTAINER
           | CREATE opt_4384 PROCEDURE
           | grp_4385 ANY PROCEDURE
           | grp_4386 PROFILE
           | CREATE ROLE
           | grp_4387 ANY ROLE
           | grp_4388 ROLLBACK SEGMENT
           | CREATE opt_4389 SEQUENCE
           | grp_4390 ANY SEQUENCE
           | grp_4391 SESSION
           | ALTER RESOURCE COST
           | CREATE opt_4392 SQL TRANSLATION PROFILE
           | grp_4393 ANY SQL TRANSLATION PROFILE
           | TRANSLATE ANY SQL
           | CREATE opt_4394 SYNONYM
           | DROP ANY SYNONYM
           | grp_4395 PUBLIC SYNONYM
           | CREATE opt_4396 TABLE
           | grp_4397 ANY TABLE
           | grp_4398 TABLESPACE
           | CREATE opt_4399 TRIGGER
           | grp_4400 ANY TRIGGER
           | ADMINISTER DATABASE TRIGGER
           | CREATE opt_4401 TYPE
           | grp_4402 ANY TYPE
           | grp_4403 USER
           | CREATE opt_4404 VIEW
           | grp_4405 ANY VIEW
           | grp_4406 ANY
           | BECOME USER
           | CHANGE NOTIFICATION
           | EXEMPT ACCESS POLICY
           | FORCE opt_4407 TRANSACTION
           | GRANT ANY opt_4408 PRIVILEGE
           | INHERIT ANY PRIVILEGES
           | KEEP DATE TIME
           | KEEP SYSGUID
           | PURGE DBA_RECYCLEBIN
           | RESUMABLE
           | SELECT ANY grp_4409
           | SYSBACKUP
           | SYSDBA
           | SYSDG
           | SYSKM
           | SYSOPER

    constant ::= TIMESTAMP grp_4410 opt_4412
           | INTERVAL grp_4413 grp_4414 opt_4420 opt_4426
           | numeric
           | DATE quoted_string
           | quoted_string
           | NULL_
           | TRUE
           | FALSE
           | DBTIMEZONE
           | SESSIONTIMEZONE
           | MINVALUE
           | MAXVALUE
           | DEFAULT

    numeric ::= UNSIGNED_INTEGER opt_4427
           | APPROXIMATE_NUM_LIT

    numeric_negative ::= MINUS_SIGN numeric

    quoted_string ::= CHAR_STRING
           | NATIONAL_CHAR_STRING_LIT

    identifier ::= opt_4429 id_expression

    id_expression ::= regular_id
           | DELIMITED_ID

    inquiry_directive ::= INQUIRY_DIRECTIVE

    outer_join_sign ::= LPAREN PLUS RPAREN

    regular_id ::= non_reserved_keywords_pre12c
           | non_reserved_keywords_in_12c
           | non_reserved_keywords_in_18c
           | REGULAR_ID
           | AUDIT
           | ITEMS
           | BYTES
           | LINES
           | RECORDS
           | NEWLINE_
           | FIELD
           | MASK
           | ABSENT
           | A_LETTER
           | AGENT
           | AGGREGATE
           | ANALYZE
           | AUTONOMOUS_TRANSACTION
           | BACKINGFILE
           | BATCH
           | BINARY_INTEGER
           | BOOLEAN
           | C_LETTER
           | CHAR
           | CHARSETID
           | CHARSETFORM
           | CLUSTER
           | CONSTRUCTOR
           | CUSTOMDATUM
           | CASESENSITIVE
           | DECIMAL
           | DELETE
           | DEPRECATE
           | DETERMINISTIC
           | DSINTERVAL_UNCONSTRAINED
           | DURATION
           | E_LETTER
           | ENABLED
           | ERROR_INDEX
           | ERROR_CODE
           | ERR
           | EXCEPTION
           | EXCEPTION_INIT
           | EXCEPTIONS
           | EXISTS
           | EXIT
           | EXTEND
           | FIELDS
           | FILESTORE
           | FLOAT
           | FORALL
           | G_LETTER
           | INDICES
           | INOUT
           | INTEGER
           | INTERNAL
           | JSON_TRANSFORM
           | K_LETTER
           | LANGUAGE
           | LONG
           | LOOP
           | MAXLEN
           | MOUNTPOINT
           | M_LETTER
           | MISSING
           | MISMATCH
           | NUMBER
           | ORADATA
           | ORC
           | OSERROR
           | OUT
           | OVERRIDING
           | P_LETTER
           | PARALLEL_ENABLE
           | PIPELINED
           | PLS_INTEGER
           | PMEM
           | POSITIVE
           | POSITIVEN
           | PRAGMA
           | PUBLIC
           | RAISE
           | RAW
           | RECORD
           | REF
           | RENAME
           | RESTRICT_REFERENCES
           | RESULT
           | SDO_GEOMETRY
           | SELF
           | SERIALLY_REUSABLE
           | SET
           | SEQ
           | SHARDSPACE
           | SIGNTYPE
           | SIMPLE_INTEGER
           | SMALLINT
           | STRUCT
           | SQLDATA
           | SQLERROR
           | SUBTYPE
           | T_LETTER
           | TDO
           | TIMESTAMP_LTZ_UNCONSTRAINED
           | TIMESTAMP_TZ_UNCONSTRAINED
           | TIMESTAMP_UNCONSTRAINED
           | TIMEZONE
           | TRIGGER
           | UDF
           | VARCHAR
           | VARCHAR2
           | VARIABLE
           | WARNING
           | WHILE
           | WM_CONCAT
           | XMLAGG
           | YMINTERVAL_UNCONSTRAINED
           | REGR_
           | VAR_
           | VALUE
           | COVAR_
           | DATE_FORMAT

    non_reserved_keywords_in_18c ::= PERSISTABLE
           | POLYMORPHIC

    non_reserved_keywords_in_12c ::= ACL
           | ACCESSIBLE
           | ACROSS
           | ACTION
           | ACTIONS
           | ACTIVE
           | ACTIVE_DATA
           | ACTIVITY
           | ADAPTIVE_PLAN
           | ADVANCED
           | AFD_DISKSTRING
           | ALTERNATE
           | ALGORITHM
           | ANALYTIC
           | ANCESTOR
           | ANOMALY
           | ANSI_REARCH
           | APPLICATION
           | APPROX_COUNT_DISTINCT
           | ARCHIVAL
           | ARCHIVED
           | ASIS
           | ASSIGN
           | AUTO_LOGIN
           | AUTO_REOPTIMIZE
           | AVRO
           | BACKGROUND
           | BACKUPS
           | BATCHSIZE
           | BATCH_TABLE_ACCESS_BY_ROWID
           | BEGINNING
           | BEQUEATH
           | BITMAP_AND
           | BLOCKCHAIN
           | BSON
           | CACHING
           | CALCULATED
           | CALLBACK
           | CAPACITY
           | CAPTION
           | CDBDEFAULT
           | CLASSIFICATION
           | CLASSIFIER
           | CLAUSE
           | CLEAN
           | CLEANUP
           | CLIENT
           | CLUSTERING
           | CLUSTER_DETAILS
           | CLUSTER_DISTANCE
           | COLLATE
           | COLLATION
           | COMMON
           | COMMON_DATA
           | COMPONENT
           | COMPONENTS
           | CONDITION
           | CONDITIONAL
           | CONTAINERS
           | CONTAINERS_DEFAULT
           | CONTAINER_DATA
           | CONTAINER_MAP
           | CONVERSION
           | CON_DBID_TO_ID
           | CON_GUID_TO_ID
           | CON_ID
           | CON_NAME_TO_ID
           | CON_UID_TO_ID
           | COOKIE
           | COPY
           | CREATE_FILE_DEST
           | CREDENTIAL
           | CRITICAL
           | CUBE_AJ
           | CUBE_SJ
           | DATAMOVEMENT
           | DATAOBJ_TO_MAT_PARTITION
           | DATAPUMP
           | DATA_SECURITY_REWRITE_LIMIT
           | DAYS
           | DB_UNIQUE_NAME
           | DECORRELATE
           | DEFAULT_CREDENTIAL
           | DEFAULT_COLLATION
           | DEFINE
           | DEFINITION
           | DELEGATE
           | DELETE_ALL
           | DESCRIPTION
           | DESTROY
           | DIMENSIONS
           | DISABLE_ALL
           | DISABLE_PARALLEL_DML
           | DISCARD
           | DISTRIBUTE
           | DUPLICATE
           | DUPLICATED
           | DV
           | EDITIONABLE
           | ELIM_GROUPBY
           | EM
           | ENABLE_ALL
           | ENABLE_PARALLEL_DML
           | EQUIPART
           | EVAL
           | EVALUATE
           | EXISTING
           | EXPRESS
           | EXTENDED
           | EXTRACTCLOBXML
           | FACTOR
           | FAILOVER
           | FAILURE
           | FAMILY
           | FAR
           | FASTSTART
           | FEATURE
           | FEATURE_DETAILS
           | FETCH
           | FILE_NAME_CONVERT
           | FILEGROUP
           | FIXED_VIEW_DATA
           | FLEX
           | FORMAT
           | FTP
           | GATHER_OPTIMIZER_STATISTICS
           | GET
           | HALF_YEARS
           | HASHING
           | HIER_ORDER
           | HIERARCHICAL
           | HOURS
           | HTTP
           | H_LETTER
           | IDLE
           | ILM
           | IMMUTABLE
           | INACTIVE
           | INACTIVE_ACCOUNT_TIME
           | INDEXING
           | INHERIT
           | INMEMORY
           | INMEMORY_PRUNING
           | INPLACE
           | INTERLEAVED
           | INVALIDATION
           | ISOLATE
           | IS_LEAF
           | JSON
           | JSONGET
           | JSONPARSE
           | JSON_ARRAY
           | JSON_ARRAYAGG
           | JSON_EQUAL
           | JSON_EXISTS
           | JSON_EXISTS2
           | JSON_OBJECT
           | JSON_OBJECTAGG
           | JSON_QUERY
           | JSON_SERIALIZE
           | JSON_TABLE
           | JSON_TEXTCONTAINS
           | JSON_TEXTCONTAINS2
           | JSON_VALUE
           | KEYSTORE
           | LABEL
           | LAX
           | LEAD_CDB
           | LEAD_CDB_URI
           | LEVEL_NAME
           | LIFECYCLE
           | LINEAR
           | LOCKDOWN
           | LOCKING
           | LOGMINING
           | LOST
           | MANDATORY
           | MAP
           | MATCH
           | MATCHES
           | MATCH_NUMBER
           | MATCH_RECOGNIZE
           | MAX_SHARED_TEMP_SIZE
           | MEMCOMPRESS
           | METADATA
           | MEMBER_CAPTION
           | MEMBER_DESCRIPTION
           | MEMBER_NAME
           | MEMBER_UNIQUE_NAME
           | MEMOPTIMIZE
           | MINUTES
           | MODEL_NB
           | MODEL_SV
           | MODIFICATION
           | MODULE
           | MONTHS
           | MULTIDIMENSIONAL
           | NEG
           | NOCOPY
           | NOKEEP
           | NONEDITIONABLE
           | NOPARTITION
           | NORELOCATE
           | NOREPLAY
           | NO_ADAPTIVE_PLAN
           | NO_ANSI_REARCH
           | NO_AUTO_REOPTIMIZE
           | NO_BATCH_TABLE_ACCESS_BY_ROWID
           | NO_CLUSTERING
           | NO_COMMON_DATA
           | NO_DATA_SECURITY_REWRITE
           | NO_DECORRELATE
           | NO_ELIM_GROUPBY
           | NO_GATHER_OPTIMIZER_STATISTICS
           | NO_INMEMORY
           | NO_INMEMORY_PRUNING
           | NO_OBJECT_LINK
           | NO_PARTIAL_JOIN
           | NO_PARTIAL_ROLLUP_PUSHDOWN
           | NO_PQ_CONCURRENT_UNION
           | NO_PQ_REPLICATE
           | NO_PQ_SKEW
           | NOPROMPT
           | NO_PX_FAULT_TOLERANCE
           | NO_ROOT_SW_FOR_LOCAL
           | NO_SQL_TRANSLATION
           | NO_USE_CUBE
           | NO_USE_VECTOR_AGGREGATION
           | NO_VECTOR_TRANSFORM
           | NO_VECTOR_TRANSFORM_DIMS
           | NO_VECTOR_TRANSFORM_FACT
           | NO_ZONEMAP
           | OBJ_ID
           | OFFSET
           | OLS
           | OMIT
           | ONE
           | ORACLE_DATAPUMP
           | ORACLE_HDFS
           | ORACLE_HIVE
           | ORACLE_LOADER
           | ORA_CHECK_ACL
           | ORA_CHECK_PRIVILEGE
           | ORA_CLUSTERING
           | ORA_INVOKING_USER
           | ORA_INVOKING_USERID
           | ORA_INVOKING_XS_USER
           | ORA_INVOKING_XS_USER_GUID
           | ORA_RAWCOMPARE
           | ORA_RAWCONCAT
           | ORA_WRITE_TIME
           | PARENT_LEVEL_NAME
           | PARENT_UNIQUE_NAME
           | PASSWORD_ROLLOVER_TIME
           | PARTIAL
           | PARTIAL_JOIN
           | PARTIAL_ROLLUP_PUSHDOWN
           | PAST
           | PATCH
           | PATH_PREFIX
           | PATTERN
           | PER
           | PERIOD
           | PERIOD_KEYWORD
           | PERMUTE
           | PLUGGABLE
           | POOL_16K
           | POOL_2K
           | POOL_32K
           | POOL_4K
           | POOL_8K
           | PQ_CONCURRENT_UNION
           | PQ_DISTRIBUTE_WINDOW
           | PQ_FILTER
           | PQ_REPLICATE
           | PQ_SKEW
           | PRELOAD
           | PRETTY
           | PREV
           | PRINTBLOBTOCLOB
           | PRIORITY
           | PRIVILEGED
           | PROPERTY
           | PROTOCOL
           | PROXY
           | PRUNING
           | PX_FAULT_TOLERANCE
           | QUARTERS
           | QUOTAGROUP
           | REALM
           | REDEFINE
           | RELOCATE
           | REMOTE
           | RESTART
           | ROLESET
           | ROWID_MAPPING_TABLE
           | RUNNING
           | SAVE
           | SCRUB
           | SDO_GEOM_MBR
           | SECONDS
           | SECRET
           | SERIAL
           | SERVICES
           | SERVICE_NAME_CONVERT
           | SHARDED
           | SHARING
           | SHELFLIFE
           | SITE
           | SOURCE_FILE_DIRECTORY
           | SOURCE_FILE_NAME_CONVERT
           | SQL_TRANSLATION_PROFILE
           | STANDARD
           | STANDARD_HASH
           | STANDBYS
           | STATE
           | STATEMENT
           | STREAM
           | SUBSCRIBE
           | SUBSET
           | SUCCESS
           | SYS
           | SYSBACKUP
           | SYSDG
           | SYSGUID
           | SYSKM
           | SYSOBJ
           | SYS_CHECK_PRIVILEGE
           | SYS_GET_COL_ACLIDS
           | SYS_MKXTI
           | SYS_OP_CYCLED_SEQ
           | SYS_OP_HASH
           | SYS_OP_KEY_VECTOR_CREATE
           | SYS_OP_KEY_VECTOR_FILTER
           | SYS_OP_KEY_VECTOR_FILTER_LIST
           | SYS_OP_KEY_VECTOR_SUCCEEDED
           | SYS_OP_KEY_VECTOR_USE
           | SYS_OP_PART_ID
           | SYS_OP_ZONE_ID
           | SYS_RAW_TO_XSID
           | SYS_XSID_TO_RAW
           | SYS_ZMAP_FILTER
           | SYS_ZMAP_REFRESH
           | TAG
           | TEXT
           | TIER
           | TIES
           | TO_ACLID
           | TRANSFORM
           | TRANSLATION
           | TRUST
           | UCS2
           | UNCONDITIONAL
           | UNITE
           | UNMATCHED
           | UNPLUG
           | UNSUBSCRIBE
           | USABLE
           | USER_DATA
           | USER_TABLESPACES
           | USE_CUBE
           | USE_HIDDEN_PARTITIONS
           | USE_VECTOR_AGGREGATION
           | USING_NO_EXPAND
           | USING_NLS_COMP
           | UTF16BE
           | UTF16LE
           | UTF32
           | UTF8
           | V1
           | V2
           | VALIDATE_CONVERSION
           | VALID_TIME_END
           | VECTOR_TRANSFORM
           | VECTOR_TRANSFORM_DIMS
           | VECTOR_TRANSFORM_FACT
           | VERIFIER
           | VIOLATION
           | VISIBILITY
           | WEEK
           | WEEKS
           | WITH_PLSQL
           | WRAPPER
           | XS
           | YEARS
           | ZONEMAP

    non_reserved_keywords_pre12c ::= ABORT
           | ABS
           | ACCESSED
           | ACCESS
           | ACCOUNT
           | ACOS
           | ACTIVATE
           | ACTIVE_COMPONENT
           | ACTIVE_FUNCTION
           | ACTIVE_TAG
           | ADD_COLUMN
           | ADD_GROUP
           | ADD_MONTHS
           | ADD
           | ADJ_DATE
           | ADMINISTER
           | ADMINISTRATOR
           | ADMIN
           | ADVISE
           | ADVISOR
           | AFTER
           | ALIAS
           | ALLOCATE
           | ALLOW
           | ALL_ROWS
           | ALWAYS
           | ANALYZE
           | ANCILLARY
           | AND_EQUAL
           | ANTIJOIN
           | ANYSCHEMA
           | APPENDCHILDXML
           | APPEND
           | APPEND_VALUES
           | APPLY
           | ARCHIVELOG
           | ARCHIVE
           | ARRAY
           | ASCII
           | ASCIISTR
           | ASIN
           | ASSEMBLY
           | ASSOCIATE
           | ASYNCHRONOUS
           | ASYNC
           | ATAN2
           | ATAN
           | AT
           | ATTRIBUTE
           | ATTRIBUTES
           | AUTHENTICATED
           | AUTHENTICATION
           | AUTHID
           | AUTHORIZATION
           | AUTOALLOCATE
           | AUTOEXTEND
           | AUTOMATIC
           | AUTO
           | AVAILABILITY
           | AVG
           | BACKUP
           | BASICFILE
           | BASIC
           | BATCH
           | BECOME
           | BEFORE
           | BEGIN
           | BEGIN_OUTLINE_DATA
           | BEHALF
           | BFILE
           | BFILENAME
           | BIGFILE
           | BINARY_DOUBLE_INFINITY
           | BINARY_DOUBLE
           | BINARY_DOUBLE_NAN
           | BINARY_FLOAT_INFINITY
           | BINARY_FLOAT
           | BINARY_FLOAT_NAN
           | BINARY
           | BIND_AWARE
           | BINDING
           | BIN_TO_NUM
           | BITAND
           | BITMAP
           | BITMAPS
           | BITMAP_TREE
           | BITS
           | BLOB
           | BLOCK
           | BLOCK_RANGE
           | BLOCKSIZE
           | BLOCKS
           | BODY
           | BOTH
           | BOUND
           | BRANCH
           | BREADTH
           | BROADCAST
           | BUFFER_CACHE
           | BUFFER
           | BUFFER_POOL
           | BUILD
           | BULK
           | BYPASS_RECURSIVE_CHECK
           | BYPASS_UJVC
           | BYTE
           | CACHE_CB
           | CACHE_INSTANCES
           | CACHE
           | CACHE_TEMP_TABLE
           | CALL
           | CANCEL
           | CARDINALITY
           | CASCADE
           | CASE
           | CAST
           | CATEGORY
           | CEIL
           | CELL_FLASH_CACHE
           | CERTIFICATE
           | CFILE
           | CHAINED
           | CHANGE_DUPKEY_ERROR_INDEX
           | CHANGE
           | CHARACTER
           | CHAR_CS
           | CHARTOROWID
           | CHECK_ACL_REWRITE
           | CHECKPOINT
           | CHILD
           | CHOOSE
           | CHR
           | CHUNK
           | CLASS
           | CLEAR
           | CLOB
           | CLONE
           | CLOSE_CACHED_OPEN_CURSORS
           | CLOSE
           | CLUSTER_BY_ROWID
           | CLUSTER_ID
           | CLUSTERING_FACTOR
           | CLUSTER_PROBABILITY
           | CLUSTER_SET
           | COALESCE
           | COALESCE_SQ
           | COARSE
           | CO_AUTH_IND
           | COLD
           | COLLECT
           | COLUMNAR
           | COLUMN_AUTH_INDICATOR
           | COLUMN
           | COLUMNS
           | COLUMN_STATS
           | COLUMN_VALUE
           | COMMENT
           | COMMIT
           | COMMITTED
           | COMPACT
           | COMPATIBILITY
           | COMPILE
           | COMPLETE
           | COMPLIANCE
           | COMPOSE
           | COMPOSITE_LIMIT
           | COMPOSITE
           | COMPOUND
           | COMPUTE
           | CONCAT
           | CONFIRM
           | CONFORMING
           | CONNECT_BY_CB_WHR_ONLY
           | CONNECT_BY_COMBINE_SW
           | CONNECT_BY_COST_BASED
           | CONNECT_BY_ELIM_DUPS
           | CONNECT_BY_FILTERING
           | CONNECT_BY_ISCYCLE
           | CONNECT_BY_ISLEAF
           | CONNECT_BY_ROOT
           | CONNECT_TIME
           | CONSIDER
           | CONSISTENT
           | CONSTANT
           | CONST
           | CONSTRAINT
           | CONSTRAINTS
           | CONTAINER
           | CONTENT
           | CONTENTS
           | CONTEXT
           | CONTINUE
           | CONTROLFILE
           | CONVERT
           | CORR_K
           | CORR
           | CORR_S
           | CORRUPTION
           | CORRUPT_XID_ALL
           | CORRUPT_XID
           | COSH
           | COS
           | COST
           | COST_XML_QUERY_REWRITE
           | COUNT
           | COVAR_POP
           | COVAR_SAMP
           | CPU_COSTING
           | CPU_PER_CALL
           | CPU_PER_SESSION
           | CRASH
           | CREATE_STORED_OUTLINES
           | CREATION
           | CROSSEDITION
           | CROSS
           | CSCONVERT
           | CUBE_GB
           | CUBE
           | CUME_DISTM
           | CUME_DIST
           | CURRENT_DATE
           | CURRENT
           | CURRENT_SCHEMA
           | CURRENT_TIME
           | CURRENT_TIMESTAMP
           | CURRENT_USER
           | CURRENTV
           | CURSOR
           | CURSOR_SHARING_EXACT
           | CURSOR_SPECIFIC_SEGMENT
           | CV
           | CYCLE
           | DANGLING
           | DATABASE
           | DATAFILE
           | DATAFILES
           | DATA
           | DATAOBJNO
           | DATAOBJ_TO_PARTITION
           | DATE_MODE
           | DAY
           | DBA
           | DBA_RECYCLEBIN
           | DBLINK
           | DBMS_STATS
           | DB_ROLE_CHANGE
           | DBTIMEZONE
           | DB_VERSION
           | DDL
           | DEALLOCATE
           | DEBUGGER
           | DEBUG
           | DECLARE
           | DEC
           | DECOMPOSE
           | DECREMENT
           | DECR
           | DECRYPT
           | DEDUPLICATE
           | DEFAULTS
           | DEFERRABLE
           | DEFERRED
           | DEFINED
           | DEFINER
           | DEGREE
           | DELAY
           | DELETEXML
           | DEMAND
           | DENSE_RANKM
           | DENSE_RANK
           | DEPENDENT
           | DEPTH
           | DEQUEUE
           | DEREF
           | DEREF_NO_REWRITE
           | DETACHED
           | DETERMINES
           | DICTIONARY
           | DIMENSION
           | DIRECT_LOAD
           | DIRECTORY
           | DIRECT_PATH
           | DISABLE
           | DISABLE_PRESET
           | DISABLE_RPKE
           | DISALLOW
           | DISASSOCIATE
           | DISCONNECT
           | DISKGROUP
           | DISK
           | DISKS
           | DISMOUNT
           | DISTINGUISHED
           | DISTRIBUTED
           | DML
           | DML_UPDATE
           | DOCFIDELITY
           | DOCUMENT
           | DOMAIN_INDEX_FILTER
           | DOMAIN_INDEX_NO_SORT
           | DOMAIN_INDEX_SORT
           | DOUBLE
           | DOWNGRADE
           | DRIVING_SITE
           | DROP_COLUMN
           | DROP_GROUP
           | DST_UPGRADE_INSERT_CONV
           | DUMP
           | DYNAMIC
           | DYNAMIC_SAMPLING_EST_CDN
           | DYNAMIC_SAMPLING
           | EACH
           | EDITIONING
           | EDITION
           | EDITIONS
           | ELEMENT
           | ELIMINATE_JOIN
           | ELIMINATE_OBY
           | ELIMINATE_OUTER_JOIN
           | EMPTY_BLOB
           | EMPTY_CLOB
           | EMPTY_
           | ENABLE
           | ENABLE_PRESET
           | ENCODING
           | ENCRYPTION
           | ENCRYPT
           | END_OUTLINE_DATA
           | ENFORCED
           | ENFORCE
           | ENQUEUE
           | ENTERPRISE
           | ENTITYESCAPING
           | ENTRY
           | ERROR_ARGUMENT
           | ERROR
           | ERROR_ON_OVERLAP_TIME
           | ERRORS
           | ESCAPE
           | ESTIMATE
           | EVALNAME
           | EVALUATION
           | EVENTS
           | EVERY
           | EXCEPTIONS
           | EXCEPT
           | EXCHANGE
           | EXCLUDE
           | EXCLUDING
           | EXECUTE
           | EXEMPT
           | EXISTSNODE
           | EXPAND_GSET_TO_UNION
           | EXPAND_TABLE
           | EXPIRE
           | EXPLAIN
           | EXPLOSION
           | EXP
           | EXPORT
           | EXPR_CORR_CHECK
           | EXTENDS
           | EXTENT
           | EXTENTS
           | EXTERNALLY
           | EXTERNAL
           | EXTRACT
           | EXTRACTVALUE
           | EXTRA
           | FACILITY
           | FACT
           | FACTORIZE_JOIN
           | FAILED_LOGIN_ATTEMPTS
           | FAILED
           | FAILGROUP
           | FALSE
           | FAST
           | FBTSCAN
           | FEATURE_ID
           | FEATURE_SET
           | FEATURE_VALUE
           | FILE
           | FILESYSTEM_LIKE_LOGGING
           | FILTER
           | FINAL
           | FINE
           | FINISH
           | FIRSTM
           | FIRST
           | FIRST_ROWS
           | FIRST_VALUE
           | FLAGGER
           | FLASHBACK
           | FLASH_CACHE
           | FLOB
           | FLOOR
           | FLUSH
           | FOLDER
           | FOLLOWING
           | FOLLOWS
           | FORCE
           | FORCE_XML_QUERY_REWRITE
           | FOREIGN
           | FOREVER
           | FORWARD
           | FRAGMENT_NUMBER
           | FREELIST
           | FREELISTS
           | FREEPOOLS
           | FRESH
           | FROM_TZ
           | FULL
           | FULL_OUTER_JOIN_TO_OUTER
           | FUNCTION
           | FUNCTIONS
           | GATHER_PLAN_STATISTICS
           | GBY_CONC_ROLLUP
           | GBY_PUSHDOWN
           | GENERATED
           | GLOBALLY
           | GLOBAL
           | GLOBAL_NAME
           | GLOBAL_TOPIC_ENABLED
           | GREATEST
           | GROUP_BY
           | GROUP_ID
           | GROUPING_ID
           | GROUPING
           | GROUPS
           | GUARANTEED
           | GUARANTEE
           | GUARD
           | HASH_AJ
           | HASHKEYS
           | HASH
           | HASH_SJ
           | HEADER
           | HEAP
           | HELP
           | HEXTORAW
           | HEXTOREF
           | HIDDEN_KEYWORD
           | HIDE
           | HIERARCHY
           | HIGH
           | HINTSET_BEGIN
           | HINTSET_END
           | HOT
           | HOUR
           | HWM_BROKERED
           | HYBRID
           | IDENTIFIER
           | IDENTITY
           | IDGENERATORS
           | IDLE_TIME
           | ID
           | IF
           | IGNORE
           | IGNORE_OPTIM_EMBEDDED_HINTS
           | IGNORE_ROW_ON_DUPKEY_INDEX
           | IGNORE_WHERE_CLAUSE
           | IMMEDIATE
           | IMPACT
           | IMPORT
           | INCLUDE
           | INCLUDE_VERSION
           | INCLUDING
           | INCREMENTAL
           | INCREMENT
           | INCR
           | INDENT
           | INDEX_ASC
           | INDEX_COMBINE
           | INDEX_DESC
           | INDEXED
           | INDEXES
           | INDEX_FFS
           | INDEX_FILTER
           | INDEX_JOIN
           | INDEX_ROWS
           | INDEX_RRS
           | INDEX_RS_ASC
           | INDEX_RS_DESC
           | INDEX_RS
           | INDEX_SCAN
           | INDEX_SKIP_SCAN
           | INDEX_SS_ASC
           | INDEX_SS_DESC
           | INDEX_SS
           | INDEX_STATS
           | INDEXTYPE
           | INDEXTYPES
           | INDICATOR
           | INFINITE
           | INFORMATIONAL
           | INITCAP
           | INITIALIZED
           | INITIALLY
           | INITIAL
           | INITRANS
           | INLINE
           | INLINE_XMLTYPE_NT
           | IN_MEMORY_METADATA
           | INNER
           | INSERTCHILDXMLAFTER
           | INSERTCHILDXMLBEFORE
           | INSERTCHILDXML
           | INSERTXMLAFTER
           | INSERTXMLBEFORE
           | INSTANCE
           | INSTANCES
           | INSTANTIABLE
           | INSTANTLY
           | INSTEAD
           | INSTR2
           | INSTR4
           | INSTRB
           | INSTRC
           | INSTR
           | INTERMEDIATE
           | INTERNAL_CONVERT
           | INTERNAL_USE
           | INTERPRETED
           | INTERVAL
           | INT
           | INVALIDATE
           | INVISIBLE
           | IN_XQUERY
           | ISOLATION_LEVEL
           | ISOLATION
           | ITERATE
           | ITERATION_NUMBER
           | JAVA
           | JOB
           | JOIN
           | KEEP_DUPLICATES
           | KEEP
           | KERBEROS
           | KEY_LENGTH
           | KEY
           | KEYSIZE
           | KEYS
           | KILL
           | LAG
           | LAST_DAY
           | LAST
           | LAST_VALUE
           | LATERAL
           | LAYER
           | LDAP_REGISTRATION_ENABLED
           | LDAP_REGISTRATION
           | LDAP_REG_SYNC_INTERVAL
           | LEADING
           | LEAD
           | LEAF
           | LEAST
           | LEFT
           | LENGTH2
           | LENGTH4
           | LENGTHB
           | LENGTHC
           | LENGTH
           | LESS
           | LEVEL
           | LEVELS
           | LIBRARY
           | LIFE
           | LIFETIME
           | LIKE2
           | LIKE4
           | LIKEC
           | LIKE_EXPAND
           | LIMIT
           | LINK
           | LISTAGG
           | LIST
           | LN
           | LNNVL
           | LOAD
           | LOB
           | LOBNVL
           | LOBS
           | LOCAL_INDEXES
           | LOCAL
           | LOCALTIME
           | LOCALTIMESTAMP
           | LOCATION
           | LOCATOR
           | LOCKED
           | LOGFILE
           | LOGFILES
           | LOGGING
           | LOGICAL
           | LOGICAL_READS_PER_CALL
           | LOGICAL_READS_PER_SESSION
           | LOG
           | LOGOFF
           | LOGON
           | LOG_READ_ONLY_VIOLATIONS
           | LOWER
           | LOW
           | LPAD
           | LTRIM
           | MAIN
           | MAKE_REF
           | MANAGED
           | MANAGEMENT
           | MANAGE
           | MANAGER
           | MANUAL
           | MAPPING
           | MASTER
           | MATCHED
           | MATERIALIZED
           | MATERIALIZE
           | MAXARCHLOGS
           | MAXDATAFILES
           | MAXEXTENTS
           | MAXIMIZE
           | MAXINSTANCES
           | MAXLOGFILES
           | MAXLOGHISTORY
           | MAXLOGMEMBERS
           | MAX
           | MAXSIZE
           | MAXTRANS
           | MAXVALUE
           | MEASURE
           | MEASURES
           | MEDIAN
           | MEDIUM
           | MEMBER
           | MEMOPTIMIZE
           | MEMORY
           | MERGEACTIONS
           | MERGE_AJ
           | MERGE_CONST_ON
           | MERGE
           | MERGE_SJ
           | METHOD
           | MIGRATE
           | MIGRATION
           | MINEXTENTS
           | MINIMIZE
           | MINIMUM
           | MINING
           | MIN
           | MINUS_NULL
           | MINUTE
           | MINVALUE
           | MIRRORCOLD
           | MIRRORHOT
           | MIRROR
           | MLSLABEL
           | MODEL_COMPILE_SUBQUERY
           | MODEL_DONTVERIFY_UNIQUENESS
           | MODEL_DYNAMIC_SUBQUERY
           | MODEL_MIN_ANALYSIS
           | MODEL
           | MODEL_NO_ANALYSIS
           | MODEL_PBY
           | MODEL_PUSH_REF
           | MODIFY_COLUMN_TYPE
           | MODIFY
           | MOD
           | MONITORING
           | MONITOR
           | MONTH
           | MONTHS_BETWEEN
           | MOUNT
           | MOUNTPATH
           | MOVEMENT
           | MOVE
           | MULTISET
           | MV_MERGE
           | NAMED
           | NAME
           | NAMESPACE
           | NAN_
           | NANVL
           | NATIONAL
           | NATIVE_FULL_OUTER_JOIN
           | NATIVE
           | NATURAL
           | NAV
           | NCHAR_CS
           | NCHAR
           | NCHR
           | NCLOB
           | NEEDED
           | NESTED
           | NESTED_TABLE_FAST_INSERT
           | NESTED_TABLE_GET_REFS
           | NESTED_TABLE_ID
           | NESTED_TABLE_SET_REFS
           | NESTED_TABLE_SET_SETID
           | NETWORK
           | NEVER
           | NEW
           | NEW_TIME
           | NEXT_DAY
           | NEXT
           | NL_AJ
           | NLJ_BATCHING
           | NLJ_INDEX_FILTER
           | NLJ_INDEX_SCAN
           | NLJ_PREFETCH
           | NLS_CALENDAR
           | NLS_CHARACTERSET
           | NLS_CHARSET_DECL_LEN
           | NLS_CHARSET_ID
           | NLS_CHARSET_NAME
           | NLS_COMP
           | NLS_CURRENCY
           | NLS_DATE_FORMAT
           | NLS_DATE_LANGUAGE
           | NLS_INITCAP
           | NLS_ISO_CURRENCY
           | NL_SJ
           | NLS_LANG
           | NLS_LANGUAGE
           | NLS_LENGTH_SEMANTICS
           | NLS_LOWER
           | NLS_NCHAR_CONV_EXCP
           | NLS_NUMERIC_CHARACTERS
           | NLS_SORT
           | NLSSORT
           | NLS_SPECIAL_CHARS
           | NLS_TERRITORY
           | NLS_UPPER
           | NO_ACCESS
           | NOAPPEND
           | NOARCHIVELOG
           | NOAUDIT
           | NO_BASETABLE_MULTIMV_REWRITE
           | NO_BIND_AWARE
           | NO_BUFFER
           | NOCACHE
           | NO_CARTESIAN
           | NO_CHECK_ACL_REWRITE
           | NO_CLUSTER_BY_ROWID
           | NO_COALESCE_SQ
           | NO_CONNECT_BY_CB_WHR_ONLY
           | NO_CONNECT_BY_COMBINE_SW
           | NO_CONNECT_BY_COST_BASED
           | NO_CONNECT_BY_ELIM_DUPS
           | NO_CONNECT_BY_FILTERING
           | NO_COST_XML_QUERY_REWRITE
           | NO_CPU_COSTING
           | NOCPU_COSTING
           | NOCYCLE
           | NODELAY
           | NO_DOMAIN_INDEX_FILTER
           | NO_DST_UPGRADE_INSERT_CONV
           | NO_ELIMINATE_JOIN
           | NO_ELIMINATE_OBY
           | NO_ELIMINATE_OUTER_JOIN
           | NOENTITYESCAPING
           | NO_EXPAND_GSET_TO_UNION
           | NO_EXPAND
           | NO_EXPAND_TABLE
           | NO_FACT
           | NO_FACTORIZE_JOIN
           | NO_FILTERING
           | NOFORCE
           | NO_FULL_OUTER_JOIN_TO_OUTER
           | NO_GBY_PUSHDOWN
           | NOGUARANTEE
           | NO_INDEX_FFS
           | NO_INDEX
           | NO_INDEX_SS
           | NO_LOAD
           | NOLOCAL
           | NOLOGGING
           | NOMAPPING
           | NOMAXVALUE
           | NO_MERGE
           | NOMINIMIZE
           | NOMINVALUE
           | NO_MODEL_PUSH_REF
           | NO_MONITORING
           | NOMONITORING
           | NO_MONITOR
           | NO_MULTIMV_REWRITE
           | NO
           | NO_NATIVE_FULL_OUTER_JOIN
           | NONBLOCKING
           | NONE
           | NO_NLJ_BATCHING
           | NO_NLJ_PREFETCH
           | NONSCHEMA
           | NOORDER
           | NO_ORDER_ROLLUPS
           | NO_OUTER_JOIN_TO_ANTI
           | NO_OUTER_JOIN_TO_INNER
           | NOOVERRIDE
           | NO_PARALLEL_INDEX
           | NOPARALLEL_INDEX
           | NO_PARALLEL
           | NOPARALLEL
           | NO_PARTIAL_COMMIT
           | NO_PLACE_DISTINCT
           | NO_PLACE_GROUP_BY
           | NO_PQ_MAP
           | NO_PRUNE_GSETS
           | NO_PULL_PRED
           | NO_PUSH_PRED
           | NO_PUSH_SUBQ
           | NO_PX_JOIN_FILTER
           | NO_QKN_BUFF
           | NO_QUERY_TRANSFORMATION
           | NO_REF_CASCADE
           | NORELY
           | NOREPAIR
           | NORESETLOGS
           | NO_RESULT_CACHE
           | NOREVERSE
           | NO_REWRITE
           | NOREWRITE
           | NORMAL
           | NOROWDEPENDENCIES
           | NOSCHEMACHECK
           | NOSEGMENT
           | NO_SEMIJOIN
           | NO_SEMI_TO_INNER
           | NO_SET_TO_JOIN
           | NOSORT
           | NO_SQL_TUNE
           | NO_STAR_TRANSFORMATION
           | NO_STATEMENT_QUEUING
           | NO_STATS_GSETS
           | NOSTRICT
           | NO_SUBQUERY_PRUNING
           | NO_SUBSTRB_PAD
           | NO_SWAP_JOIN_INPUTS
           | NOSWITCH
           | NO_TABLE_LOOKUP_BY_NL
           | NO_TEMP_TABLE
           | NOTHING
           | NOTIFICATION
           | NO_TRANSFORM_DISTINCT_AGG
           | NO_UNNEST
           | NO_USE_HASH_AGGREGATION
           | NO_USE_HASH_GBY_FOR_PUSHDOWN
           | NO_USE_HASH
           | NO_USE_INVISIBLE_INDEXES
           | NO_USE_MERGE
           | NO_USE_NL
           | NOVALIDATE
           | NO_XDB_FASTPATH_INSERT
           | NO_XML_DML_REWRITE
           | NO_XMLINDEX_REWRITE_IN_SELECT
           | NO_XMLINDEX_REWRITE
           | NO_XML_QUERY_REWRITE
           | NTH_VALUE
           | NTILE
           | NULLIF
           | NULLS
           | NUMERIC
           | NUM_INDEX_KEYS
           | NUMTODSINTERVAL
           | NUMTOYMINTERVAL
           | NVARCHAR2
           | NVL2
           | NVL
           | OBJECT2XML
           | OBJECT
           | OBJNO
           | OBJNO_REUSE
           | OCCURENCES
           | OFFLINE
           | OFF
           | OIDINDEX
           | OID
           | OLAP
           | OLD
           | OLD_PUSH_PRED
           | OLTP
           | ONLINE
           | ONLY
           | OPAQUE
           | OPAQUE_TRANSFORM
           | OPAQUE_XCANONICAL
           | OPCODE
           | OPEN
           | OPERATIONS
           | OPERATOR
           | OPT_ESTIMATE
           | OPTIMAL
           | OPTIMIZE
           | OPTIMIZER_FEATURES_ENABLE
           | OPTIMIZER_GOAL
           | OPT_PARAM
           | ORA_BRANCH
           | ORADEBUG
           | ORA_DST_AFFECTED
           | ORA_DST_CONVERT
           | ORA_DST_ERROR
           | ORA_GET_ACLIDS
           | ORA_GET_PRIVILEGES
           | ORA_HASH
           | ORA_ROWSCN
           | ORA_ROWSCN_RAW
           | ORA_ROWVERSION
           | ORA_TABVERSION
           | ORDERED
           | ORDERED_PREDICATES
           | ORDINALITY
           | OR_EXPAND
           | ORGANIZATION
           | OR_PREDICATES
           | OTHER
           | OUTER_JOIN_TO_ANTI
           | OUTER_JOIN_TO_INNER
           | OUTER
           | OUTLINE_LEAF
           | OUTLINE
           | OUT_OF_LINE
           | OVERFLOW_
           | OVERFLOW_NOMOVE
           | OVERLAPS
           | OVER
           | OVERRIDE
           | OWNER
           | OWNERSHIP
           | OWN
           | PACKAGE
           | PACKAGES
           | PARALLEL_INDEX
           | PARALLEL
           | PARAMETERS
           | PARAM
           | PARENT
           | PARITY
           | PARTIALLY
           | PARTITION_HASH
           | PARTITION_LIST
           | PARTITION
           | PARTITION_RANGE
           | PARTITIONS
           | PARTNUMINST
           | PASSING
           | PASSWORD_GRACE_TIME
           | PASSWORD_LIFE_TIME
           | PASSWORD_LOCK_TIME
           | PASSWORD
           | PASSWORD_REUSE_MAX
           | PASSWORD_REUSE_TIME
           | PASSWORD_VERIFY_FUNCTION
           | PATH
           | PATHS
           | PBL_HS_BEGIN
           | PBL_HS_END
           | PCTINCREASE
           | PCTTHRESHOLD
           | PCTUSED
           | PCTVERSION
           | PENDING
           | PERCENTILE_CONT
           | PERCENTILE_DISC
           | PERCENT_KEYWORD
           | PERCENT_RANKM
           | PERCENT_RANK
           | PERFORMANCE
           | PERMANENT
           | PERMISSION
           | PFILE
           | PHYSICAL
           | PIKEY
           | PIV_GB
           | PIVOT
           | PIV_SSF
           | PLACE_DISTINCT
           | PLACE_GROUP_BY
           | PLAN
           | PLSCOPE_SETTINGS
           | PLSQL_CCFLAGS
           | PLSQL_CODE_TYPE
           | PLSQL_DEBUG
           | PLSQL_OPTIMIZE_LEVEL
           | PLSQL_WARNINGS
           | POINT
           | POLICY
           | POST_TRANSACTION
           | POWERMULTISET_BY_CARDINALITY
           | POWERMULTISET
           | POWER
           | POSITION
           | PQ_DISTRIBUTE
           | PQ_MAP
           | PQ_NOMAP
           | PREBUILT
           | PRECEDES
           | PRECEDING
           | PRECISION
           | PRECOMPUTE_SUBQUERY
           | PREDICATE_REORDERS
           | PREDICTION_BOUNDS
           | PREDICTION_COST
           | PREDICTION_DETAILS
           | PREDICTION
           | PREDICTION_PROBABILITY
           | PREDICTION_SET
           | PREPARE
           | PRESENT
           | PRESENTNNV
           | PRESENTV
           | PRESERVE
           | PRESERVE_OID
           | PREVIOUS
           | PRIMARY
           | PRIVATE
           | PRIVATE_SGA
           | PRIVILEGE
           | PRIVILEGES
           | PROCEDURAL
           | PROCEDURE
           | PROCESS
           | PROFILE
           | PROGRAM
           | PROJECT
           | PROPAGATE
           | PROTECTED
           | PROTECTION
           | PULL_PRED
           | PURGE
           | PUSH_PRED
           | PUSH_SUBQ
           | PX_GRANULE
           | PX_JOIN_FILTER
           | QB_NAME
           | QUERY_BLOCK
           | QUERY
           | QUEUE_CURR
           | QUEUE
           | QUEUE_ROWP
           | QUIESCE
           | QUORUM
           | QUOTA
           | RANDOM_LOCAL
           | RANDOM
           | RANGE
           | RANKM
           | RANK
           | RAPIDLY
           | RATIO_TO_REPORT
           | RAWTOHEX
           | RAWTONHEX
           | RBA
           | RBO_OUTLINE
           | RDBA
           | READ
           | READS
           | REAL
           | REBALANCE
           | REBUILD
           | RECORDS_PER_BLOCK
           | RECOVERABLE
           | RECOVER
           | RECOVERY
           | RECYCLEBIN
           | RECYCLE
           | REDACTION
           | REDO
           | REDUCED
           | REDUNDANCY
           | REF_CASCADE_CURSOR
           | REFERENCED
           | REFERENCE
           | REFERENCES
           | REFERENCING
           | REF
           | REFRESH
           | REFTOHEX
           | REGEXP_COUNT
           | REGEXP_INSTR
           | REGEXP_LIKE
           | REGEXP_REPLACE
           | REGEXP_SUBSTR
           | REGISTER
           | REGR_AVGX
           | REGR_AVGY
           | REGR_COUNT
           | REGR_INTERCEPT
           | REGR_R2
           | REGR_SLOPE
           | REGR_SXX
           | REGR_SXY
           | REGR_SYY
           | REGULAR
           | REJECT
           | REKEY
           | RELATIONAL
           | RELY
           | REMAINDER
           | REMOTE_MAPPED
           | REMOVE
           | REPAIR
           | REPEAT
           | REPLACE
           | REPLICATION
           | REQUIRED
           | RESETLOGS
           | RESET
           | RESIZE
           | RESOLVE
           | RESOLVER
           | RESPECT
           | RESTORE_AS_INTERVALS
           | RESTORE
           | RESTRICT_ALL_REF_CONS
           | RESTRICTED
           | RESTRICT
           | RESULT_CACHE
           | RESUMABLE
           | RESUME
           | RETENTION
           | RETRY_ON_ROW_CHANGE
           | RETURNING
           | RETURN
           | REUSE
           | REVERSE
           | REWRITE
           | REWRITE_OR_ERROR
           | RIGHT
           | ROLE
           | ROLES
           | ROLLBACK
           | ROLLING
           | ROLLUP
           | ROOT
           | ROUND
           | ROWDEPENDENCIES
           | ROWID
           | ROWIDTOCHAR
           | ROWIDTONCHAR
           | ROW_LENGTH
           | ROW
           | ROW_NUMBER
           | ROWNUM
           | ROWS
           | RPAD
           | RTRIM
           | RULE
           | RULES
           | SALT
           | SAMPLE
           | SAVE_AS_INTERVALS
           | SAVEPOINT
           | SB4
           | SCALE
           | SCALE_ROWS
           | SCAN_INSTANCES
           | SCAN
           | SCHEDULER
           | SCHEMACHECK
           | SCHEMA
           | SCN_ASCENDING
           | SCN
           | SCOPE
           | SD_ALL
           | SD_INHIBIT
           | SD_SHOW
           | SEARCH
           | SECOND
           | SECUREFILE_DBA
           | SECUREFILE
           | SECURITY
           | SEED
           | SEG_BLOCK
           | SEG_FILE
           | SEGMENT
           | SELECTIVITY
           | SEMIJOIN_DRIVER
           | SEMIJOIN
           | SEMI_TO_INNER
           | SEQUENCED
           | SEQUENCE
           | SEQUENTIAL
           | SERIALIZABLE
           | SERVERERROR
           | SERVICE
           | SESSION_CACHED_CURSORS
           | SESSION
           | SESSIONS_PER_USER
           | SESSIONTIMEZONE
           | SESSIONTZNAME
           | SETS
           | SETTINGS
           | SET_TO_JOIN
           | SEVERE
           | SHARED
           | SHARED_POOL
           | SHOW
           | SHRINK
           | SHUTDOWN
           | SIBLINGS
           | SID
           | SIGNAL_COMPONENT
           | SIGNAL_FUNCTION
           | SIGN
           | SIMPLE
           | SINGLE
           | SINGLETASK
           | SINH
           | SIN
           | SKIP_EXT_OPTIMIZER
           | SKIP_
           | SKIP_UNQ_UNUSABLE_IDX
           | SKIP_UNUSABLE_INDEXES
           | SMALLFILE
           | SNAPSHOT
           | SOME
           | SORT
           | SOUNDEX
           | SOURCE
           | SPACE_KEYWORD
           | SPECIFICATION
           | SPFILE
           | SPLIT
           | SPREADSHEET
           | SQLLDR
           | SQL
           | SQL_TRACE
           | SQL_MACRO
           | SQRT
           | STALE
           | STANDALONE
           | STANDBY_MAX_DATA_DELAY
           | STANDBY
           | STAR
           | STAR_TRANSFORMATION
           | STARTUP
           | STATEMENT_ID
           | STATEMENT_QUEUING
           | STATEMENTS
           | STATIC
           | STATISTICS
           | STATS_BINOMIAL_TEST
           | STATS_CROSSTAB
           | STATS_F_TEST
           | STATS_KS_TEST
           | STATS_MODE
           | STATS_MW_TEST
           | STATS_ONE_WAY_ANOVA
           | STATS_T_TEST_INDEP
           | STATS_T_TEST_INDEPU
           | STATS_T_TEST_ONE
           | STATS_T_TEST_PAIRED
           | STATS_WSR_TEST
           | STDDEV
           | STDDEV_POP
           | STDDEV_SAMP
           | STOP
           | STORAGE
           | STORE
           | STREAMS
           | STRICT
           | STRING
           | STRIPE_COLUMNS
           | STRIPE_WIDTH
           | STRIP
           | STRUCTURE
           | SUBMULTISET
           | SUBPARTITION
           | SUBPARTITION_REL
           | SUBPARTITIONS
           | SUBQUERIES
           | SUBQUERY_PRUNING
           | SUBSTITUTABLE
           | SUBSTR2
           | SUBSTR4
           | SUBSTRB
           | SUBSTRC
           | SUBSTR
           | SUCCESSFUL
           | SUMMARY
           | SUM
           | SUPPLEMENTAL
           | SUSPEND
           | SWAP_JOIN_INPUTS
           | SWITCH
           | SWITCHOVER
           | SYNCHRONOUS
           | SYNC
           | SYS
           | SYSASM
           | SYS_AUDIT
           | SYSAUX
           | SYS_CHECKACL
           | SYS_CONNECT_BY_PATH
           | SYS_CONTEXT
           | SYSDATE
           | SYSDBA
           | SYS_DBURIGEN
           | SYS_DL_CURSOR
           | SYS_DM_RXFORM_CHR
           | SYS_DM_RXFORM_NUM
           | SYS_DOM_COMPARE
           | SYS_DST_PRIM2SEC
           | SYS_DST_SEC2PRIM
           | SYS_ET_BFILE_TO_RAW
           | SYS_ET_BLOB_TO_IMAGE
           | SYS_ET_IMAGE_TO_BLOB
           | SYS_ET_RAW_TO_BFILE
           | SYS_EXTPDTXT
           | SYS_EXTRACT_UTC
           | SYS_FBT_INSDEL
           | SYS_FILTER_ACLS
           | SYS_FNMATCHES
           | SYS_FNREPLACE
           | SYS_GET_ACLIDS
           | SYS_GET_PRIVILEGES
           | SYS_GETTOKENID
           | SYS_GETXTIVAL
           | SYS_GUID
           | SYS_MAKEXML
           | SYS_MAKE_XMLNODEID
           | SYS_MKXMLATTR
           | SYS_OP_ADT2BIN
           | SYS_OP_ADTCONS
           | SYS_OP_ALSCRVAL
           | SYS_OP_ATG
           | SYS_OP_BIN2ADT
           | SYS_OP_BITVEC
           | SYS_OP_BL2R
           | SYS_OP_BLOOM_FILTER_LIST
           | SYS_OP_BLOOM_FILTER
           | SYS_OP_C2C
           | SYS_OP_CAST
           | SYS_OP_CEG
           | SYS_OP_CL2C
           | SYS_OP_COMBINED_HASH
           | SYS_OP_COMP
           | SYS_OP_CONVERT
           | SYS_OP_COUNTCHG
           | SYS_OP_CSCONV
           | SYS_OP_CSCONVTEST
           | SYS_OP_CSR
           | SYS_OP_CSX_PATCH
           | SYS_OP_DECOMP
           | SYS_OP_DESCEND
           | SYS_OP_DISTINCT
           | SYS_OP_DRA
           | SYS_OP_DUMP
           | SYS_OP_DV_CHECK
           | SYS_OP_ENFORCE_NOT_NULL
           | SYSOPER
           | SYS_OP_EXTRACT
           | SYS_OP_GROUPING
           | SYS_OP_GUID
           | SYS_OP_IIX
           | SYS_OP_ITR
           | SYS_OP_LBID
           | SYS_OP_LOBLOC2BLOB
           | SYS_OP_LOBLOC2CLOB
           | SYS_OP_LOBLOC2ID
           | SYS_OP_LOBLOC2NCLOB
           | SYS_OP_LOBLOC2TYP
           | SYS_OP_LSVI
           | SYS_OP_LVL
           | SYS_OP_MAKEOID
           | SYS_OP_MAP_NONNULL
           | SYS_OP_MSR
           | SYS_OP_NICOMBINE
           | SYS_OP_NIEXTRACT
           | SYS_OP_NII
           | SYS_OP_NIX
           | SYS_OP_NOEXPAND
           | SYS_OP_NTCIMG
           | SYS_OP_NUMTORAW
           | SYS_OP_OIDVALUE
           | SYS_OP_OPNSIZE
           | SYS_OP_PAR_1
           | SYS_OP_PARGID_1
           | SYS_OP_PARGID
           | SYS_OP_PAR
           | SYS_OP_PIVOT
           | SYS_OP_R2O
           | SYS_OP_RAWTONUM
           | SYS_OP_RDTM
           | SYS_OP_REF
           | SYS_OP_RMTD
           | SYS_OP_ROWIDTOOBJ
           | SYS_OP_RPB
           | SYS_OPTLOBPRBSC
           | SYS_OP_TOSETID
           | SYS_OP_TPR
           | SYS_OP_TRTB
           | SYS_OPTXICMP
           | SYS_OPTXQCASTASNQ
           | SYS_OP_UNDESCEND
           | SYS_OP_VECAND
           | SYS_OP_VECBIT
           | SYS_OP_VECOR
           | SYS_OP_VECXOR
           | SYS_OP_VERSION
           | SYS_OP_VREF
           | SYS_OP_VVD
           | SYS_OP_XMLCONS_FOR_CSX
           | SYS_OP_XPTHATG
           | SYS_OP_XPTHIDX
           | SYS_OP_XPTHOP
           | SYS_OP_XTXT2SQLT
           | SYS_ORDERKEY_DEPTH
           | SYS_ORDERKEY_MAXCHILD
           | SYS_ORDERKEY_PARENT
           | SYS_PARALLEL_TXN
           | SYS_PATHID_IS_ATTR
           | SYS_PATHID_IS_NMSPC
           | SYS_PATHID_LASTNAME
           | SYS_PATHID_LASTNMSPC
           | SYS_PATH_REVERSE
           | SYS_PXQEXTRACT
           | SYS_RID_ORDER
           | SYS_ROW_DELTA
           | SYS_SC_2_XMLT
           | SYS_SYNRCIREDO
           | SYSTEM_DEFINED
           | SYSTEM
           | SYSTIMESTAMP
           | SYS_TYPEID
           | SYS_UMAKEXML
           | SYS_XMLANALYZE
           | SYS_XMLCONTAINS
           | SYS_XMLCONV
           | SYS_XMLEXNSURI
           | SYS_XMLGEN
           | SYS_XMLI_LOC_ISNODE
           | SYS_XMLI_LOC_ISTEXT
           | SYS_XMLINSTR
           | SYS_XMLLOCATOR_GETSVAL
           | SYS_XMLNODEID_GETCID
           | SYS_XMLNODEID_GETLOCATOR
           | SYS_XMLNODEID_GETOKEY
           | SYS_XMLNODEID_GETPATHID
           | SYS_XMLNODEID_GETPTRID
           | SYS_XMLNODEID_GETRID
           | SYS_XMLNODEID_GETSVAL
           | SYS_XMLNODEID_GETTID
           | SYS_XMLNODEID
           | SYS_XMLT_2_SC
           | SYS_XMLTRANSLATE
           | SYS_XMLTYPE2SQL
           | SYS_XQ_ASQLCNV
           | SYS_XQ_ATOMCNVCHK
           | SYS_XQBASEURI
           | SYS_XQCASTABLEERRH
           | SYS_XQCODEP2STR
           | SYS_XQCODEPEQ
           | SYS_XQCON2SEQ
           | SYS_XQCONCAT
           | SYS_XQDELETE
           | SYS_XQDFLTCOLATION
           | SYS_XQDOC
           | SYS_XQDOCURI
           | SYS_XQDURDIV
           | SYS_XQED4URI
           | SYS_XQENDSWITH
           | SYS_XQERRH
           | SYS_XQERR
           | SYS_XQESHTMLURI
           | SYS_XQEXLOBVAL
           | SYS_XQEXSTWRP
           | SYS_XQEXTRACT
           | SYS_XQEXTRREF
           | SYS_XQEXVAL
           | SYS_XQFB2STR
           | SYS_XQFNBOOL
           | SYS_XQFNCMP
           | SYS_XQFNDATIM
           | SYS_XQFNLNAME
           | SYS_XQFNNM
           | SYS_XQFNNSURI
           | SYS_XQFNPREDTRUTH
           | SYS_XQFNQNM
           | SYS_XQFNROOT
           | SYS_XQFORMATNUM
           | SYS_XQFTCONTAIN
           | SYS_XQFUNCR
           | SYS_XQGETCONTENT
           | SYS_XQINDXOF
           | SYS_XQINSERT
           | SYS_XQINSPFX
           | SYS_XQIRI2URI
           | SYS_XQLANG
           | SYS_XQLLNMFRMQNM
           | SYS_XQMKNODEREF
           | SYS_XQNILLED
           | SYS_XQNODENAME
           | SYS_XQNORMSPACE
           | SYS_XQNORMUCODE
           | SYS_XQ_NRNG
           | SYS_XQNSP4PFX
           | SYS_XQNSPFRMQNM
           | SYS_XQPFXFRMQNM
           | SYS_XQ_PKSQL2XML
           | SYS_XQPOLYABS
           | SYS_XQPOLYADD
           | SYS_XQPOLYCEL
           | SYS_XQPOLYCSTBL
           | SYS_XQPOLYCST
           | SYS_XQPOLYDIV
           | SYS_XQPOLYFLR
           | SYS_XQPOLYMOD
           | SYS_XQPOLYMUL
           | SYS_XQPOLYRND
           | SYS_XQPOLYSQRT
           | SYS_XQPOLYSUB
           | SYS_XQPOLYUMUS
           | SYS_XQPOLYUPLS
           | SYS_XQPOLYVEQ
           | SYS_XQPOLYVGE
           | SYS_XQPOLYVGT
           | SYS_XQPOLYVLE
           | SYS_XQPOLYVLT
           | SYS_XQPOLYVNE
           | SYS_XQREF2VAL
           | SYS_XQRENAME
           | SYS_XQREPLACE
           | SYS_XQRESVURI
           | SYS_XQRNDHALF2EVN
           | SYS_XQRSLVQNM
           | SYS_XQRYENVPGET
           | SYS_XQRYVARGET
           | SYS_XQRYWRP
           | SYS_XQSEQ2CON4XC
           | SYS_XQSEQ2CON
           | SYS_XQSEQDEEPEQ
           | SYS_XQSEQINSB
           | SYS_XQSEQRM
           | SYS_XQSEQRVS
           | SYS_XQSEQSUB
           | SYS_XQSEQTYPMATCH
           | SYS_XQSTARTSWITH
           | SYS_XQSTATBURI
           | SYS_XQSTR2CODEP
           | SYS_XQSTRJOIN
           | SYS_XQSUBSTRAFT
           | SYS_XQSUBSTRBEF
           | SYS_XQTOKENIZE
           | SYS_XQTREATAS
           | SYS_XQ_UPKXML2SQL
           | SYS_XQXFORM
           | TABLE
           | TABLE_LOOKUP_BY_NL
           | TABLES
           | TABLESPACE
           | TABLESPACE_NO
           | TABLE_STATS
           | TABNO
           | TANH
           | TAN
           | TBLORIDXPARTNUM
           | TEMPFILE
           | TEMPLATE
           | TEMPLATE_TABLE
           | TEMPORARY
           | TEMP_TABLE
           | TEST
           | THAN
           | THE
           | THEN
           | THREAD
           | THROUGH
           | TIME
           | TIMING
           | TIMEOUT
           | TIMES
           | TIMESTAMP
           | TIMEZONE
           | TIMEZONE_ABBR
           | TIMEZONE_HOUR
           | TIMEZONE_MINUTE
           | TIME_ZONE
           | TIMEZONE_OFFSET
           | TIMEZONE_REGION
           | TIV_GB
           | TIV_SSF
           | TO_BINARY_DOUBLE
           | TO_BINARY_FLOAT
           | TO_BLOB
           | TO_CHAR
           | TO_CLOB
           | TO_DATE
           | TO_DSINTERVAL
           | TO_LOB
           | TO_MULTI_BYTE
           | TO_NCHAR
           | TO_NCLOB
           | TO_NUMBER
           | TOPLEVEL
           | TO_SINGLE_BYTE
           | TO_TIME
           | TO_TIMESTAMP
           | TO_TIMESTAMP_TZ
           | TO_TIME_TZ
           | TO_YMINTERVAL
           | TRACE
           | TRACING
           | TRACKING
           | TRAILING
           | TRANSACTION
           | TRANSFORM_DISTINCT_AGG
           | TRANSITIONAL
           | TRANSITION
           | TRANSLATE
           | TREAT
           | TRIGGERS
           | TRIM
           | TRUE
           | TRUNCATE
           | TRUNC
           | TRUSTED
           | TUNING
           | TX
           | TYPE
           | TYPES
           | TZ_OFFSET
           | UB2
           | UBA
           | UID
           | UNARCHIVED
           | UNBOUNDED
           | UNBOUND
           | UNDER
           | UNDO
           | UNDROP
           | UNIFORM
           | UNISTR
           | UNLIMITED
           | UNLOAD
           | UNLOCK
           | UNNEST_INNERJ_DISTINCT_VIEW
           | UNNEST
           | UNNEST_NOSEMIJ_NODISTINCTVIEW
           | UNNEST_SEMIJ_VIEW
           | UNPACKED
           | UNPIVOT
           | UNPROTECTED
           | UNQUIESCE
           | UNRECOVERABLE
           | UNRESTRICTED
           | UNTIL
           | UNUSABLE
           | UNUSED
           | UPDATABLE
           | UPDATED
           | UPDATEXML
           | UPD_INDEXES
           | UPD_JOININDEX
           | UPGRADE
           | UPPER
           | UPSERT
           | UROWID
           | USAGE
           | USE_ANTI
           | USE_CONCAT
           | USE_HASH_AGGREGATION
           | USE_HASH_GBY_FOR_PUSHDOWN
           | USE_HASH
           | USE_INVISIBLE_INDEXES
           | USE_MERGE_CARTESIAN
           | USE_MERGE
           | USE
           | USE_NL
           | USE_NL_WITH_INDEX
           | USE_PRIVATE_OUTLINES
           | USER_DEFINED
           | USERENV
           | USERGROUP
           | USER
           | USER_RECYCLEBIN
           | USERS
           | USE_SEMI
           | USE_STORED_OUTLINES
           | USE_TTT_FOR_GSETS
           | USE_WEAK_NAME_RESL
           | USING
           | VALIDATE
           | VALIDATION
           | VALUE
           | VARIANCE
           | VAR_POP
           | VARRAY
           | VARRAYS
           | VAR_SAMP
           | VARYING
           | VECTOR_READ
           | VECTOR_READ_TRACE
           | VERIFY
           | VERSIONING
           | VERSION
           | VERSIONS_ENDSCN
           | VERSIONS_ENDTIME
           | VERSIONS
           | VERSIONS_OPERATION
           | VERSIONS_STARTSCN
           | VERSIONS_STARTTIME
           | VERSIONS_XID
           | VIRTUAL
           | VISIBLE
           | VOLUME
           | VSIZE
           | WAIT
           | WALLET
           | WELLFORMED
           | WHENEVER
           | WHEN
           | WHITESPACE
           | WIDTH_BUCKET
           | WITHIN
           | WITHOUT
           | WORK
           | WRAPPED
           | WRITE
           | XDB_FASTPATH_INSERT
           | X_DYN_PRUNE
           | XID
           | XML2OBJECT
           | XMLATTRIBUTES
           | XMLCAST
           | XMLCDATA
           | XMLCOLATTVAL
           | XMLCOMMENT
           | XMLCONCAT
           | XMLDIFF
           | XML_DML_RWT_STMT
           | XMLELEMENT
           | XMLEXISTS2
           | XMLEXISTS
           | XMLFOREST
           | XMLINDEX_REWRITE_IN_SELECT
           | XMLINDEX_REWRITE
           | XMLINDEX_SEL_IDX_TBL
           | XMLISNODE
           | XMLISVALID
           | XML
           | XMLNAMESPACES
           | XMLPARSE
           | XMLPATCH
           | XMLPI
           | XMLQUERY
           | XMLQUERYVAL
           | XMLROOT
           | XMLSCHEMA
           | XMLSERIALIZE
           | XMLTABLE
           | XMLTRANSFORMBLOB
           | XMLTRANSFORM
           | XMLTYPE
           | XPATHTABLE
           | XS_SYS_CONTEXT
           | YEAR
           | YES
           | ZONE

    opt_1 ::= SEMICOLON | $empty

    seq_2 ::= sql_plus_command opt_1

    list_3 ::= $empty | list_3 seq_2

    grp_5 ::= sql_plus_command | unit_statement

    opt_7 ::= SLASH | $empty

    grp_8 ::= sql_plus_command | unit_statement

    grp_6 ::= SEMICOLON opt_7 grp_8

    list_9 ::= $empty | list_9 grp_6

    opt_10 ::= SEMICOLON | $empty

    opt_11 ::= SLASH | $empty

    grp_4 ::= grp_5 list_9 opt_10 opt_11

    grp_15 ::= add_disk_clause | drop_disk_clause

    list_16 ::= grp_15 | list_16 grp_15

    grp_14 ::= list_16 | resize_disk_clause

    opt_17 ::= rebalance_diskgroup_clause | $empty

    grp_18 ::= replace_disk_clause | rename_disk_clause | disk_online_clause | disk_offline_clause | rebalance_diskgroup_clause | check_diskgroup_clause | diskgroup_template_clauses | diskgroup_directory_clauses | diskgroup_alias_clauses | diskgroup_volume_clauses | diskgroup_attributes | drop_diskgroup_file_clause | convert_redundancy_clause | usergroup_clauses | user_clauses | file_permissions_clause | file_owner_clause | scrub_clause | quotagroup_clauses | filegroup_clauses

    grp_13 ::= grp_14 opt_17 | grp_18

    seq_20 ::= COMMA id_expression

    list_21 ::= $empty | list_21 seq_20

    grp_19 ::= id_expression list_21 | ALL

    grp_22 ::= undrop_disk_clause | diskgroup_availability | enable_disable_volume

    grp_12 ::= id_expression grp_13 | grp_19 grp_22

    seq_23 ::= SITE id_expression

    opt_24 ::= seq_23 | $empty

    opt_25 ::= quorum_regular | $empty

    seq_26 ::= FAILGROUP id_expression

    opt_27 ::= seq_26 | $empty

    seq_28 ::= COMMA qualified_disk_clause

    list_29 ::= $empty | list_29 seq_28

    seq_30 ::= opt_24 opt_25 opt_27 DISK qualified_disk_clause list_29

    list_31 ::= seq_30 | list_31 seq_30

    opt_33 ::= quorum_regular | $empty

    opt_34 ::= force_noforce | $empty

    opt_35 ::= force_noforce | $empty

    seq_36 ::= COMMA id_expression opt_35

    list_37 ::= $empty | list_37 seq_36

    opt_38 ::= quorum_regular | $empty

    opt_39 ::= force_noforce | $empty

    opt_40 ::= force_noforce | $empty

    seq_41 ::= COMMA id_expression opt_40

    list_42 ::= $empty | list_42 seq_41

    grp_32 ::= opt_33 DISK id_expression opt_34 list_37 | DISKS IN opt_38 FAILGROUP id_expression opt_39 list_42

    seq_43 ::= SIZE size_clause

    opt_44 ::= seq_43 | $empty

    opt_45 ::= force_noforce | $empty

    opt_46 ::= force_noforce | $empty

    seq_47 ::= COMMA id_expression WITH CHAR_STRING opt_46

    list_48 ::= $empty | list_48 seq_47

    seq_49 ::= POWER numeric

    opt_50 ::= seq_49 | $empty

    opt_51 ::= wait_nowait | $empty

    seq_53 ::= COMMA id_expression TO id_expression

    list_54 ::= $empty | list_54 seq_53

    grp_52 ::= DISK id_expression TO id_expression list_54 | DISKS ALL

    opt_57 ::= quorum_regular | $empty

    seq_58 ::= COMMA id_expression

    list_59 ::= $empty | list_59 seq_58

    opt_60 ::= quorum_regular | $empty

    seq_61 ::= COMMA id_expression

    list_62 ::= $empty | list_62 seq_61

    grp_56 ::= opt_57 DISK id_expression list_59 | DISKS IN opt_60 FAILGROUP id_expression list_62

    list_63 ::= grp_56 | list_63 grp_56

    grp_55 ::= list_63 | ALL

    seq_64 ::= POWER numeric

    opt_65 ::= seq_64 | $empty

    opt_66 ::= wait_nowait | $empty

    opt_68 ::= quorum_regular | $empty

    seq_69 ::= COMMA id_expression

    list_70 ::= $empty | list_70 seq_69

    opt_71 ::= quorum_regular | $empty

    seq_72 ::= COMMA id_expression

    list_73 ::= $empty | list_73 seq_72

    grp_67 ::= opt_68 DISK id_expression list_70 | DISKS IN opt_71 FAILGROUP id_expression list_73

    opt_74 ::= timeout_clause | $empty

    grp_75 ::= M_LETTER | H_LETTER

    grp_78 ::= WITH | WITHOUT

    list_79 ::= phase | list_79 phase

    grp_77 ::= grp_78 list_79

    opt_80 ::= grp_77 | $empty

    seq_81 ::= POWER numeric

    grp_82 ::= WAIT | NOWAIT

    opt_83 ::= grp_82 | $empty

    opt_84 ::= numeric | $empty

    grp_76 ::= opt_80 seq_81 opt_83 | MODIFY POWER opt_84

    opt_85 ::= ALL | $empty

    grp_86 ::= REPAIR | NOREPAIR

    opt_87 ::= grp_86 | $empty

    grp_88 ::= ADD | MODIFY

    seq_89 ::= COMMA id_expression qualified_template_clause

    list_90 ::= $empty | list_90 seq_89

    seq_91 ::= COMMA id_expression

    list_92 ::= $empty | list_92 seq_91

    opt_93 ::= redundancy_clause | $empty

    opt_94 ::= striping_clause | $empty

    seq_95 ::= COMMA filename

    list_96 ::= $empty | list_96 seq_95

    opt_97 ::= force_noforce | $empty

    opt_98 ::= force_noforce | $empty

    seq_99 ::= COMMA filename opt_98

    list_100 ::= $empty | list_100 seq_99

    seq_101 ::= COMMA dir_name TO dir_name

    list_102 ::= $empty | list_102 seq_101

    seq_103 ::= COMMA CHAR_STRING FOR CHAR_STRING

    list_104 ::= $empty | list_104 seq_103

    seq_105 ::= COMMA CHAR_STRING

    list_106 ::= $empty | list_106 seq_105

    seq_107 ::= COMMA CHAR_STRING TO CHAR_STRING

    list_108 ::= $empty | list_108 seq_107

    opt_109 ::= redundancy_clause | $empty

    grp_111 ::= K_LETTER | M_LETTER

    grp_110 ::= STRIPE_WIDTH numeric grp_111

    opt_112 ::= grp_110 | $empty

    seq_113 ::= STRIPE_COLUMNS numeric

    opt_114 ::= seq_113 | $empty

    seq_115 ::= MOUNTPATH CHAR_STRING

    opt_116 ::= seq_115 | $empty

    seq_117 ::= USAGE CHAR_STRING

    opt_118 ::= seq_117 | $empty

    seq_119 ::= COMMA filename

    list_120 ::= $empty | list_120 seq_119

    seq_121 ::= COMMA CHAR_STRING

    list_122 ::= $empty | list_122 seq_121

    grp_123 ::= ADD | DROP

    seq_124 ::= COMMA CHAR_STRING

    list_125 ::= $empty | list_125 seq_124

    seq_126 ::= COMMA CHAR_STRING

    list_127 ::= $empty | list_127 seq_126

    seq_128 ::= COMMA CHAR_STRING

    list_129 ::= $empty | list_129 seq_128

    opt_130 ::= CASCADE | $empty

    seq_131 ::= COMMA CHAR_STRING WITH CHAR_STRING

    list_132 ::= $empty | list_132 seq_131

    grp_133 ::= OWNER | GROUP | OTHER

    grp_135 ::= ONLY | WRITE

    grp_134 ::= NONE | READ grp_135

    grp_137 ::= OWNER | GROUP | OTHER

    grp_139 ::= ONLY | WRITE

    grp_138 ::= NONE | READ grp_139

    grp_136 ::= COMMA grp_137 EQ grp_138

    list_140 ::= $empty | list_140 grp_136

    seq_141 ::= COMMA CHAR_STRING

    list_142 ::= $empty | list_142 seq_141

    grp_143 ::= OWNER | GROUP

    grp_145 ::= OWNER | GROUP

    grp_144 ::= COMMA grp_145 EQ CHAR_STRING

    list_146 ::= $empty | list_146 grp_144

    seq_147 ::= COMMA CHAR_STRING

    list_148 ::= $empty | list_148 seq_147

    grp_149 ::= FILE CHAR_STRING | DISK id_expression

    opt_150 ::= grp_149 | $empty

    grp_151 ::= REPAIR | NOREPAIR

    opt_152 ::= grp_151 | $empty

    grp_154 ::= AUTO | LOW | HIGH | MAX

    grp_153 ::= POWER grp_154

    opt_155 ::= grp_153 | $empty

    opt_156 ::= wait_nowait | $empty

    opt_157 ::= force_noforce | $empty

    opt_158 ::= STOP | $empty

    seq_159 ::= SET property_name EQ property_value

    opt_160 ::= seq_159 | $empty

    grp_162 ::= DATABASE | CLUSTER | VOLUME

    grp_161 ::= grp_162 id_expression | TEMPLATE

    seq_163 ::= FROM TEMPLATE id_expression

    opt_164 ::= seq_163 | $empty

    seq_165 ::= SET CHAR_STRING EQ CHAR_STRING

    opt_166 ::= seq_165 | $empty

    opt_167 ::= CASCADE | $empty

    grp_168 ::= RESTRICTED | NORMAL

    opt_169 ::= grp_168 | $empty

    grp_170 ::= FORCE | NOFORCE

    opt_171 ::= grp_170 | $empty

    grp_172 ::= FORCE | NOFORCE

    opt_173 ::= grp_172 | $empty

    grp_174 ::= ENABLE | DISABLE

    seq_176 ::= COMMA id_expression

    list_177 ::= $empty | list_177 seq_176

    grp_175 ::= id_expression list_177 | ALL

    grp_179 ::= ADD | MODIFY

    opt_180 ::= flashback_archive_quota | $empty

    grp_182 ::= SCN expression | TIMESTAMP expression

    grp_181 ::= ALL | BEFORE grp_182

    opt_183 ::= NO | $empty

    grp_178 ::= SET DEFAULT | grp_179 TABLESPACE id_expression opt_180 | REMOVE TABLESPACE id_expression | MODIFY flashback_archive_retention | PURGE grp_181 | opt_183 OPTIMIZE DATA

    seq_184 ::= schema_name DOT

    opt_185 ::= seq_184 | $empty

    grp_186 ::= RENAME TO id_expression | COMPILE

    opt_188 ::= DEBUG | $empty

    list_189 ::= $empty | list_189 compiler_parameters_clause

    seq_190 ::= REUSE SETTINGS

    opt_191 ::= seq_190 | $empty

    grp_187 ::= EDITIONABLE | NONEDITIONABLE | COMPILE opt_188 list_189 opt_191

    grp_192 ::= SOURCE | CLASS

    seq_193 ::= schema_name DOT

    opt_194 ::= seq_193 | $empty

    opt_197 ::= COMMA | $empty

    grp_198 ::= schema_name | MINUS

    grp_196 ::= LPAREN match_string opt_197 grp_198 RPAREN

    list_199 ::= grp_196 | list_199 grp_196

    grp_195 ::= RESOLVER LPAREN list_199 RPAREN

    opt_200 ::= grp_195 | $empty

    grp_201 ::= COMPILE | RESOLVE | invoker_rights_clause

    seq_202 ::= OR REPLACE

    opt_203 ::= seq_202 | $empty

    grp_204 ::= EDITIONABLE | NONEDITIONABLE

    opt_205 ::= grp_204 | $empty

    seq_206 ::= COMMA parameter

    list_207 ::= $empty | list_207 seq_206

    seq_208 ::= LPAREN parameter list_207 RPAREN

    opt_209 ::= seq_208 | $empty

    grp_211 ::= METADATA | NONE

    grp_210 ::= SHARING EQ grp_211

    opt_212 ::= grp_210 | $empty

    grp_213 ::= invoker_rights_clause | accessible_by_clause | default_collation_clause | parallel_enable_clause | result_cache_clause | PIPELINED | DETERMINISTIC

    list_214 ::= $empty | list_214 grp_213

    grp_217 ::= IS | AS

    opt_219 ::= DECLARE | $empty

    opt_220 ::= seq_of_declare_specs | $empty

    grp_218 ::= opt_219 opt_220 body | call_spec

    grp_216 ::= grp_217 grp_218

    grp_215 ::= grp_216 | aggregate_clause | pipelined_using_clause | sql_macro_body

    opt_221 ::= partition_by_clause | $empty

    grp_223 ::= HASH | RANGE | LIST

    grp_222 ::= ANY | grp_223 paren_column_list

    opt_224 ::= streaming_clause | $empty

    opt_225 ::= relies_on_part | $empty

    grp_227 ::= DEFAULT | FORCE

    grp_226 ::= LPAREN MODE grp_227 RPAREN

    opt_228 ::= grp_226 | $empty

    seq_229 ::= COMMA accessor

    list_230 ::= $empty | list_230 seq_229

    grp_232 ::= ROW | TABLE

    grp_231 ::= grp_232 POLYMORPHIC

    opt_233 ::= grp_231 | $empty

    grp_234 ::= FUNCTION | PROCEDURE | PACKAGE | TRIGGER | TYPE

    seq_235 ::= COMMA tableview_name

    list_236 ::= $empty | list_236 seq_235

    grp_237 ::= ORDER | CLUSTER

    grp_238 ::= PUBLIC | PRIVATE

    opt_239 ::= grp_238 | $empty

    list_240 ::= outline_options | list_240 outline_options

    grp_241 ::= lockdown_feature | lockdown_options | lockdown_statements

    grp_243 ::= ALL | COMMON | LOCAL

    grp_242 ::= USERS EQ grp_243

    opt_244 ::= grp_242 | $empty

    seq_246 ::= EXCEPT EQ LPAREN string_list RPAREN

    opt_247 ::= seq_246 | $empty

    grp_245 ::= EQ LPAREN string_list RPAREN | ALL opt_247

    seq_249 ::= EXCEPT EQ LPAREN string_list RPAREN

    opt_250 ::= seq_249 | $empty

    grp_248 ::= EQ LPAREN string_list RPAREN | ALL opt_250

    seq_252 ::= EXCEPT EQ LPAREN string_list RPAREN

    opt_253 ::= seq_252 | $empty

    grp_251 ::= EQ LPAREN string_list RPAREN | EQ LPAREN CHAR_STRING RPAREN statement_clauses | ALL opt_253

    seq_255 ::= EXCEPT EQ LPAREN string_list RPAREN

    opt_256 ::= seq_255 | $empty

    grp_254 ::= EQ LPAREN string_list RPAREN | EQ LPAREN CHAR_STRING RPAREN clause_options | ALL opt_256

    list_258 ::= option_values | list_258 option_values

    seq_259 ::= EXCEPT EQ LPAREN string_list RPAREN

    opt_260 ::= seq_259 | $empty

    grp_257 ::= EQ LPAREN string_list RPAREN | EQ LPAREN CHAR_STRING RPAREN list_258 | ALL opt_260

    grp_261 ::= MINVALUE | MAXVALUE

    seq_262 ::= COMMA CHAR_STRING

    list_263 ::= $empty | list_263 seq_262

    opt_264 ::= BODY | $empty

    seq_265 ::= schema_object_name DOT

    opt_266 ::= seq_265 | $empty

    opt_267 ::= DEBUG | $empty

    grp_268 ::= PACKAGE | BODY | SPECIFICATION

    opt_269 ::= grp_268 | $empty

    list_270 ::= $empty | list_270 compiler_parameters_clause

    seq_271 ::= REUSE SETTINGS

    opt_272 ::= seq_271 | $empty

    seq_273 ::= OR REPLACE

    opt_274 ::= seq_273 | $empty

    grp_275 ::= EDITIONABLE | NONEDITIONABLE

    opt_276 ::= grp_275 | $empty

    seq_277 ::= schema_object_name DOT

    opt_278 ::= seq_277 | $empty

    opt_279 ::= invoker_rights_clause | $empty

    grp_280 ::= IS | AS

    list_281 ::= $empty | list_281 package_obj_spec

    opt_282 ::= package_name | $empty

    seq_283 ::= OR REPLACE

    opt_284 ::= seq_283 | $empty

    grp_285 ::= EDITIONABLE | NONEDITIONABLE

    opt_286 ::= grp_285 | $empty

    seq_287 ::= schema_object_name DOT

    opt_288 ::= seq_287 | $empty

    grp_289 ::= IS | AS

    list_290 ::= $empty | list_290 package_obj_body

    list_291 ::= exception_handler | list_291 exception_handler

    seq_292 ::= EXCEPTION list_291

    opt_293 ::= seq_292 | $empty

    seq_294 ::= BEGIN seq_of_statements opt_293

    opt_295 ::= seq_294 | $empty

    opt_296 ::= package_name | $empty

    seq_297 ::= COMMA parameter

    list_298 ::= $empty | list_298 seq_297

    seq_299 ::= LPAREN parameter list_298 RPAREN

    opt_300 ::= seq_299 | $empty

    grp_301 ::= accessible_by_clause | PARALLEL_ENABLE | DETERMINISTIC

    list_302 ::= $empty | list_302 grp_301

    seq_303 ::= AS call_spec

    opt_304 ::= seq_303 | $empty

    seq_305 ::= COMMA parameter

    list_306 ::= $empty | list_306 seq_305

    seq_307 ::= LPAREN parameter list_306 RPAREN

    opt_308 ::= seq_307 | $empty

    grp_309 ::= DETERMINISTIC | PIPELINED | parallel_enable_clause | RESULT_CACHE | streaming_clause

    list_310 ::= $empty | list_310 grp_309

    seq_311 ::= AS call_spec

    opt_312 ::= seq_311 | $empty

    seq_314 ::= MOUNTPOINT file_path

    opt_315 ::= seq_314 | $empty

    seq_316 ::= BACKINGFILE filename

    opt_317 ::= seq_316 | $empty

    opt_318 ::= FORCE | $empty

    grp_313 ::= RESIZE size_clause | autoextend_clause | MOUNT opt_315 opt_317 opt_318 | DISMOUNT

    opt_321 ::= FORCE | $empty

    grp_320 ::= opt_321 INCLUDING | EXCLUDING

    grp_319 ::= grp_320 CONTENTS

    opt_322 ::= grp_319 | $empty

    opt_323 ::= DEBUG | $empty

    list_324 ::= $empty | list_324 compiler_parameters_clause

    seq_325 ::= REUSE SETTINGS

    opt_326 ::= seq_325 | $empty

    seq_327 ::= COMMA parameter

    list_328 ::= $empty | list_328 seq_327

    seq_329 ::= LPAREN parameter list_328 RPAREN

    opt_330 ::= seq_329 | $empty

    grp_331 ::= PIPELINED | DETERMINISTIC | invoker_rights_clause | parallel_enable_clause | result_cache_clause | streaming_clause

    list_332 ::= $empty | list_332 grp_331

    grp_335 ::= IS | AS

    opt_337 ::= DECLARE | $empty

    opt_338 ::= seq_of_declare_specs | $empty

    grp_336 ::= opt_337 opt_338 body | call_spec

    grp_334 ::= grp_335 grp_336

    grp_339 ::= PIPELINED | AGGREGATE

    grp_333 ::= grp_334 | grp_339 USING implementation_type_name

    seq_340 ::= COMMA parameter

    list_341 ::= $empty | list_341 seq_340

    seq_342 ::= LPAREN parameter list_341 RPAREN

    opt_343 ::= seq_342 | $empty

    grp_344 ::= accessible_by_clause | PARALLEL_ENABLE | DETERMINISTIC

    list_345 ::= $empty | list_345 grp_344

    grp_346 ::= IS | AS

    opt_348 ::= DECLARE | $empty

    opt_349 ::= seq_of_declare_specs | $empty

    grp_347 ::= opt_348 opt_349 body | call_spec | EXTERNAL

    seq_350 ::= OR REPLACE

    opt_351 ::= seq_350 | $empty

    seq_352 ::= COMMA parameter

    list_353 ::= $empty | list_353 seq_352

    seq_354 ::= LPAREN parameter list_353 RPAREN

    opt_355 ::= seq_354 | $empty

    opt_356 ::= invoker_rights_clause | $empty

    grp_357 ::= PARALLEL_ENABLE | DETERMINISTIC

    list_358 ::= $empty | list_358 grp_357

    grp_359 ::= IS | AS

    opt_361 ::= DECLARE | $empty

    opt_362 ::= seq_of_declare_specs | $empty

    grp_360 ::= opt_361 opt_362 body | call_spec | EXTERNAL

    grp_364 ::= CPU_PER_SESSION | CONNECT_TIME | LOGICAL_READS_PER_SESSION | PRIVATE_SGA

    grp_363 ::= grp_364 UNSIGNED_INTEGER

    list_365 ::= grp_363 | list_365 grp_363

    seq_367 ::= TO size_clause

    opt_368 ::= seq_367 | $empty

    grp_366 ::= ONLINE | OFFLINE | storage_clause | SHRINK opt_368

    seq_369 ::= FOR PLUGGABLE DATABASE id_expression

    opt_370 ::= seq_369 | $empty

    list_371 ::= pmem_filestore_options | list_371 pmem_filestore_options

    opt_372 ::= REUSE | $empty

    grp_373 ::= SIZE | BLOCKSIZE

    opt_374 ::= PUBLIC | $empty

    grp_375 ::= TABLESPACE tablespace | storage_clause

    list_376 ::= $empty | list_376 grp_375

    grp_378 ::= ENABLE | DISABLE

    opt_379 ::= DEBUG | $empty

    list_380 ::= $empty | list_380 compiler_parameters_clause

    seq_381 ::= REUSE SETTINGS

    opt_382 ::= seq_381 | $empty

    grp_377 ::= grp_378 | RENAME TO trigger_name | COMPILE opt_379 list_380 opt_382

    seq_383 ::= OR REPLACE

    opt_384 ::= seq_383 | $empty

    grp_385 ::= simple_dml_trigger | compound_dml_trigger | non_dml_trigger

    opt_386 ::= trigger_follows_clause | $empty

    grp_387 ::= ENABLE | DISABLE

    opt_388 ::= grp_387 | $empty

    opt_389 ::= trigger_when_clause | $empty

    seq_390 ::= COMMA trigger_name

    list_391 ::= $empty | list_391 seq_390

    grp_392 ::= BEFORE | AFTER | INSTEAD OF

    opt_393 ::= referencing_clause | $empty

    opt_394 ::= for_each_row | $empty

    opt_395 ::= referencing_clause | $empty

    grp_396 ::= BEFORE | AFTER

    seq_397 ::= OR non_dml_event

    list_398 ::= $empty | list_398 seq_397

    seq_400 ::= schema_name DOT

    opt_401 ::= seq_400 | $empty

    grp_399 ::= DATABASE | opt_401 SCHEMA

    opt_402 ::= seq_of_declare_specs | $empty

    list_403 ::= timing_point_section | list_403 timing_point_section

    opt_404 ::= trigger_name | $empty

    seq_405 ::= OR dml_event_element

    list_406 ::= $empty | list_406 seq_405

    opt_407 ::= dml_event_nested_clause | $empty

    grp_408 ::= DELETE | INSERT | UPDATE

    seq_409 ::= OF column_list

    opt_410 ::= seq_409 | $empty

    grp_411 ::= REFERENCING referencing_element | REFERENCES

    list_412 ::= $empty | list_412 referencing_element

    grp_413 ::= NEW | OLD | PARENT

    opt_414 ::= BODY | $empty

    grp_415 ::= FORCE | VALIDATE

    opt_416 ::= grp_415 | $empty

    grp_417 ::= compile_type_clause | replace_type_clause | alter_method_spec | alter_collection_clauses | modifier_clause | overriding_subprogram_spec

    opt_418 ::= dependent_handling_clause | $empty

    opt_419 ::= DEBUG | $empty

    grp_420 ::= SPECIFICATION | BODY

    opt_421 ::= grp_420 | $empty

    list_422 ::= $empty | list_422 compiler_parameters_clause

    seq_423 ::= REUSE SETTINGS

    opt_424 ::= seq_423 | $empty

    opt_425 ::= invoker_rights_clause | $empty

    seq_426 ::= COMMA object_member_spec

    list_427 ::= $empty | list_427 seq_426

    seq_428 ::= COMMA alter_method_element

    list_429 ::= $empty | list_429 seq_428

    grp_430 ::= ADD | DROP

    grp_431 ::= map_order_function_spec | subprogram_spec

    grp_432 ::= LIMIT expression | ELEMENT TYPE type_spec

    opt_434 ::= NOT | $empty

    grp_433 ::= CONVERT TO SUBSTITUTABLE | opt_434 INCLUDING TABLE DATA

    opt_435 ::= grp_433 | $empty

    opt_436 ::= dependent_exceptions_part | $empty

    opt_437 ::= FORCE | $empty

    seq_438 ::= OR REPLACE

    opt_439 ::= seq_438 | $empty

    grp_440 ::= EDITIONABLE | NONEDITIONABLE

    opt_441 ::= grp_440 | $empty

    grp_442 ::= type_definition | type_body

    seq_443 ::= OID CHAR_STRING

    opt_444 ::= seq_443 | $empty

    opt_445 ::= FORCE | $empty

    opt_446 ::= object_type_def | $empty

    opt_447 ::= invoker_rights_clause | $empty

    grp_448 ::= object_as_part | object_under_part

    opt_449 ::= sqlj_object_type | $empty

    seq_450 ::= COMMA object_member_spec

    list_451 ::= $empty | list_451 seq_450

    seq_452 ::= LPAREN object_member_spec list_451 RPAREN

    opt_453 ::= seq_452 | $empty

    list_454 ::= $empty | list_454 modifier_clause

    grp_455 ::= IS | AS

    grp_456 ::= OBJECT | varray_type_def | nested_table_type_def

    seq_457 ::= NOT NULL_

    opt_458 ::= seq_457 | $empty

    grp_459 ::= SQLDATA | CUSTOMDATUM | ORADATA

    grp_460 ::= IS | AS

    list_461 ::= type_body_elements | list_461 type_body_elements

    grp_462 ::= MAP | ORDER

    grp_463 ::= MEMBER | STATIC

    opt_464 ::= grp_463 | $empty

    grp_465 ::= proc_decl_in_type | func_decl_in_type | constructor_declaration

    seq_466 ::= COMMA type_elements_parameter

    list_467 ::= $empty | list_467 seq_466

    seq_468 ::= LPAREN type_elements_parameter list_467 RPAREN

    opt_469 ::= seq_468 | $empty

    grp_470 ::= IS | AS

    opt_472 ::= DECLARE | $empty

    opt_473 ::= seq_of_declare_specs | $empty

    grp_471 ::= call_spec | opt_472 opt_473 body SEMI

    seq_474 ::= COMMA type_elements_parameter

    list_475 ::= $empty | list_475 seq_474

    seq_476 ::= LPAREN type_elements_parameter list_475 RPAREN

    opt_477 ::= seq_476 | $empty

    grp_478 ::= IS | AS

    opt_480 ::= DECLARE | $empty

    opt_481 ::= seq_of_declare_specs | $empty

    grp_479 ::= call_spec | opt_480 opt_481 body SEMI

    opt_482 ::= FINAL | $empty

    opt_483 ::= INSTANTIABLE | $empty

    seq_484 ::= SELF IN OUT type_spec COMMA

    opt_485 ::= seq_484 | $empty

    seq_486 ::= COMMA type_elements_parameter

    list_487 ::= $empty | list_487 seq_486

    seq_488 ::= type_elements_parameter list_487

    opt_489 ::= seq_488 | $empty

    seq_490 ::= LPAREN opt_485 opt_489 RPAREN

    opt_491 ::= seq_490 | $empty

    grp_492 ::= IS | AS

    opt_494 ::= DECLARE | $empty

    opt_495 ::= seq_of_declare_specs | $empty

    grp_493 ::= call_spec | opt_494 opt_495 body SEMI

    opt_496 ::= NOT | $empty

    grp_497 ::= INSTANTIABLE | FINAL | OVERRIDING

    opt_498 ::= sqlj_object_type_attr | $empty

    opt_499 ::= modifier_clause | $empty

    list_500 ::= element_spec_options | list_500 element_spec_options

    seq_501 ::= COMMA pragma_clause

    opt_502 ::= seq_501 | $empty

    grp_503 ::= MEMBER | STATIC

    grp_504 ::= type_procedure_spec | type_function_spec

    seq_505 ::= COMMA type_elements_parameter

    list_506 ::= $empty | list_506 seq_505

    seq_507 ::= LPAREN type_elements_parameter list_506 RPAREN

    opt_508 ::= seq_507 | $empty

    grp_509 ::= type_spec | SELF AS RESULT

    opt_511 ::= PIPELINED | $empty

    grp_512 ::= IS | AS

    opt_513 ::= DECLARE | $empty

    opt_514 ::= seq_of_declare_specs | $empty

    seq_515 ::= opt_513 opt_514 body

    grp_510 ::= opt_511 grp_512 seq_515

    opt_516 ::= grp_510 | $empty

    opt_517 ::= SEMI | $empty

    seq_518 ::= COMMA type_elements_parameter

    list_519 ::= $empty | list_519 seq_518

    seq_520 ::= LPAREN type_elements_parameter list_519 RPAREN

    opt_521 ::= seq_520 | $empty

    grp_522 ::= IS | AS

    opt_524 ::= DECLARE | $empty

    opt_525 ::= seq_of_declare_specs | $empty

    grp_523 ::= call_spec | opt_524 opt_525 body SEMI

    seq_526 ::= COMMA type_elements_parameter

    list_527 ::= $empty | list_527 seq_526

    seq_528 ::= LPAREN type_elements_parameter list_527 RPAREN

    opt_529 ::= seq_528 | $empty

    grp_531 ::= IS | AS

    grp_530 ::= grp_531 call_spec

    opt_532 ::= grp_530 | $empty

    seq_533 ::= COMMA type_elements_parameter

    list_534 ::= $empty | list_534 seq_533

    seq_535 ::= LPAREN type_elements_parameter list_534 RPAREN

    opt_536 ::= seq_535 | $empty

    grp_537 ::= type_spec | SELF AS RESULT

    grp_539 ::= IS | AS

    opt_540 ::= VARIABLE | $empty

    grp_538 ::= grp_539 call_spec | EXTERNAL opt_540 NAME expression

    opt_541 ::= grp_538 | $empty

    opt_542 ::= FINAL | $empty

    opt_543 ::= INSTANTIABLE | $empty

    seq_544 ::= SELF IN OUT type_spec COMMA

    opt_545 ::= seq_544 | $empty

    seq_546 ::= COMMA type_elements_parameter

    list_547 ::= $empty | list_547 seq_546

    seq_548 ::= type_elements_parameter list_547

    opt_549 ::= seq_548 | $empty

    seq_550 ::= LPAREN opt_545 opt_549 RPAREN

    opt_551 ::= seq_550 | $empty

    grp_553 ::= IS | AS

    grp_552 ::= grp_553 call_spec

    opt_554 ::= grp_552 | $empty

    grp_555 ::= MAP | ORDER

    seq_556 ::= COMMA pragma_elements

    list_557 ::= $empty | list_557 seq_556

    grp_558 ::= IN OUT NOCOPY | IN OUT | OUT NOCOPY | OUT | IN

    opt_559 ::= grp_558 | $empty

    seq_560 ::= ASSIGN_OP constant

    opt_561 ::= seq_560 | $empty

    list_562 ::= sequence_spec | list_562 sequence_spec

    grp_564 ::= COMMIT | ROLLBACK | NOTHING

    grp_565 ::= enable_or_disable | FORCE

    grp_566 ::= DML | DDL | QUERY

    grp_568 ::= literal | parameter_name

    grp_567 ::= PARALLEL grp_568

    opt_569 ::= grp_567 | $empty

    grp_563 ::= ADVISE grp_564 | CLOSE DATABASE LINK parameter_name | enable_or_disable COMMIT IN PROCEDURE | enable_or_disable GUARD | grp_565 PARALLEL grp_566 opt_569 | SET alter_session_set_clause

    seq_570 ::= parameter_name EQ parameter_value

    list_571 ::= seq_570 | list_571 seq_570

    seq_572 ::= SERVICE EQ id_expression

    opt_573 ::= seq_572 | $empty

    grp_574 ::= ACTIVE | ALL

    grp_575 ::= id_expression | NONE

    seq_576 ::= IF NOT EXISTS

    opt_577 ::= seq_576 | $empty

    list_578 ::= $empty | list_578 sequence_spec

    grp_580 ::= METADATA | DATA | NONE

    grp_579 ::= SHARING EQ grp_580

    opt_581 ::= grp_579 | $empty

    grp_582 ::= EXTEND | NOEXTEND

    opt_583 ::= grp_582 | $empty

    grp_584 ::= EXTEND | NOEXTEND

    opt_585 ::= grp_584 | $empty

    grp_586 ::= UNSIGNED_INTEGER | APPROXIMATE_NUM_LIT

    seq_587 ::= OR REPLACE

    opt_588 ::= seq_587 | $empty

    grp_589 ::= NOFORCE | FORCE

    opt_590 ::= grp_589 | $empty

    grp_592 ::= METADATA | NONE

    grp_591 ::= SHARING EQ grp_592

    opt_593 ::= grp_591 | $empty

    list_594 ::= $empty | list_594 classification_clause

    opt_595 ::= cav_using_clause | $empty

    opt_596 ::= dim_by_clause | $empty

    opt_597 ::= measures_clause | $empty

    opt_598 ::= default_measure_clause | $empty

    opt_599 ::= default_aggregate_clause | $empty

    opt_600 ::= cache_clause | $empty

    opt_601 ::= fact_columns_clause | $empty

    opt_602 ::= qry_transform_clause | $empty

    opt_604 ::= description_clause | $empty

    opt_605 ::= caption_clause | $empty

    grp_603 ::= caption_clause opt_604 | opt_605 description_clause

    list_606 ::= $empty | list_606 classification_item

    opt_607 ::= caption_clause | $empty

    opt_608 ::= description_clause | $empty

    list_609 ::= classification_item | list_609 classification_item

    seq_610 ::= VALUE quoted_string

    opt_611 ::= seq_610 | $empty

    seq_612 ::= LANGUAGE language

    opt_613 ::= seq_612 | $empty

    seq_614 ::= schema_name DOT

    opt_615 ::= seq_614 | $empty

    opt_616 ::= REMOTE | $empty

    opt_617 ::= AS | $empty

    seq_618 ::= opt_617 id_expression

    opt_619 ::= seq_618 | $empty

    seq_620 ::= COMMA dim_key

    list_621 ::= $empty | list_621 seq_620

    list_622 ::= $empty | list_622 classification_clause

    seq_624 ::= id_expression DOT

    opt_625 ::= seq_624 | $empty

    seq_626 ::= id_expression DOT

    opt_627 ::= seq_626 | $empty

    seq_628 ::= COMMA opt_627 column_name

    list_629 ::= $empty | list_629 seq_628

    seq_630 ::= id_expression DOT

    opt_631 ::= seq_630 | $empty

    grp_623 ::= LPAREN opt_625 column_name list_629 RPAREN | opt_631 column_name

    opt_632 ::= DISTINCT | $empty

    seq_634 ::= COMMA attribute_name

    grp_633 ::= LPAREN attribute_name seq_634 RPAREN | attribute_name

    seq_635 ::= COMMA hier_ref

    list_636 ::= $empty | list_636 seq_635

    seq_637 ::= schema_name DOT

    opt_638 ::= seq_637 | $empty

    opt_639 ::= AS | $empty

    seq_640 ::= opt_639 id_expression

    opt_641 ::= seq_640 | $empty

    seq_642 ::= schema_name DOT

    opt_643 ::= seq_642 | $empty

    opt_644 ::= AS | $empty

    seq_645 ::= opt_644 id_expression

    opt_646 ::= seq_645 | $empty

    opt_647 ::= DEFAULT | $empty

    seq_648 ::= COMMA av_measure

    list_649 ::= $empty | list_649 seq_648

    grp_650 ::= base_meas_clause | calc_meas_clause

    opt_651 ::= grp_650 | $empty

    opt_652 ::= meas_aggregate_clause | $empty

    seq_653 ::= COMMA cache_specification

    list_654 ::= $empty | list_654 seq_653

    seq_656 ::= COMMA id_expression

    list_657 ::= $empty | list_657 seq_656

    seq_658 ::= COMMA levels_clause

    list_659 ::= $empty | list_659 seq_658

    grp_655 ::= ALL | LPAREN id_expression list_657 RPAREN levels_clause list_659

    seq_660 ::= COMMA level_specification

    list_661 ::= $empty | list_661 seq_660

    seq_662 ::= id_expression DOT

    opt_663 ::= seq_662 | $empty

    seq_664 ::= opt_663 id_expression DOT

    opt_665 ::= seq_664 | $empty

    seq_666 ::= schema_name DOT

    opt_667 ::= seq_666 | $empty

    seq_668 ::= USING opt_667 id_expression

    opt_669 ::= seq_668 | $empty

    opt_670 ::= AS | $empty

    opt_671 ::= AS | $empty

    seq_672 ::= COMMA opt_671 id_expression

    list_673 ::= $empty | list_673 seq_672

    seq_674 ::= opt_670 id_expression list_673

    opt_675 ::= seq_674 | $empty

    grp_676 ::= RELY | NORELY

    opt_677 ::= grp_676 | $empty

    seq_678 ::= OR REPLACE

    opt_679 ::= seq_678 | $empty

    grp_680 ::= NOFORCE | FORCE

    opt_681 ::= grp_680 | $empty

    seq_682 ::= schema_name DOT

    opt_683 ::= seq_682 | $empty

    grp_685 ::= METADATA | NONE

    grp_684 ::= SHARING EQ grp_685

    opt_686 ::= grp_684 | $empty

    list_687 ::= $empty | list_687 classification_clause

    grp_689 ::= STANDARD | TIME

    grp_688 ::= DIMENSION TYPE grp_689

    opt_690 ::= grp_688 | $empty

    list_691 ::= ad_level_clause | list_691 ad_level_clause

    opt_692 ::= all_clause | $empty

    seq_693 ::= COMMA source_clause

    list_694 ::= $empty | list_694 seq_693

    list_695 ::= $empty | list_695 join_path_clause

    seq_696 ::= schema_name DOT

    opt_697 ::= seq_696 | $empty

    opt_698 ::= REMOTE | $empty

    opt_699 ::= AS | $empty

    seq_700 ::= opt_699 id_expression

    opt_701 ::= seq_700 | $empty

    seq_702 ::= AND join_condition_item

    list_703 ::= $empty | list_703 seq_702

    seq_704 ::= id_expression DOT

    opt_705 ::= seq_704 | $empty

    seq_706 ::= id_expression DOT

    opt_707 ::= seq_706 | $empty

    seq_708 ::= COMMA ad_attributes_clause

    list_709 ::= $empty | list_709 seq_708

    seq_710 ::= id_expression DOT

    opt_711 ::= seq_710 | $empty

    opt_712 ::= AS | $empty

    seq_713 ::= opt_712 id_expression

    opt_714 ::= seq_713 | $empty

    list_715 ::= $empty | list_715 classification_clause

    grp_716 ::= NOT NULL_ | SKIP_ WHEN NULL_

    opt_717 ::= grp_716 | $empty

    grp_719 ::= STANDARD | YEARS | HALF_YEARS | QUARTERS | MONTHS | WEEKS | DAYS | HOURS | MINUTES | SECONDS

    grp_718 ::= LEVEL TYPE grp_719

    opt_720 ::= grp_718 | $empty

    list_721 ::= $empty | list_721 classification_clause

    opt_722 ::= alternate_key_clause | $empty

    seq_723 ::= MEMBER NAME expression

    opt_724 ::= seq_723 | $empty

    seq_725 ::= MEMBER CAPTION expression

    opt_726 ::= seq_725 | $empty

    seq_727 ::= MEMBER DESCRIPTION expression

    opt_728 ::= seq_727 | $empty

    grp_730 ::= MIN | MAX

    opt_731 ::= grp_730 | $empty

    grp_733 ::= MIN | MAX

    opt_734 ::= grp_733 | $empty

    grp_732 ::= COMMA opt_734 dim_order_clause

    list_735 ::= $empty | list_735 grp_732

    grp_729 ::= ORDER BY opt_731 dim_order_clause list_735

    opt_736 ::= grp_729 | $empty

    seq_737 ::= COMMA id_expression

    list_738 ::= $empty | list_738 seq_737

    seq_739 ::= DETERMINES LPAREN id_expression list_738 RPAREN

    opt_740 ::= seq_739 | $empty

    seq_742 ::= COMMA id_expression

    list_743 ::= $empty | list_743 seq_742

    grp_741 ::= id_expression | LPAREN id_expression list_743 RPAREN

    grp_744 ::= ASC | DESC

    opt_745 ::= grp_744 | $empty

    grp_747 ::= FIRST | LAST

    grp_746 ::= NULLS grp_747

    opt_748 ::= grp_746 | $empty

    seq_750 ::= MEMBER CAPTION expression

    opt_751 ::= seq_750 | $empty

    seq_752 ::= MEMBER DESCRIPTION expression

    opt_753 ::= seq_752 | $empty

    grp_749 ::= NAME expression opt_751 | CAPTION expression opt_753 | DESCRIPTION expression

    opt_754 ::= privilege_audit_clause | $empty

    opt_755 ::= action_audit_clause | $empty

    opt_756 ::= role_audit_clause | $empty

    grp_758 ::= STATEMENT | SESSION | INSTANCE

    grp_757 ::= WHEN quoted_string EVALUATE PER grp_758

    opt_759 ::= grp_757 | $empty

    seq_760 ::= ONLY TOPLEVEL

    opt_761 ::= seq_760 | $empty

    opt_762 ::= container_clause | $empty

    seq_763 ::= COMMA system_privilege

    list_764 ::= $empty | list_764 seq_763

    grp_765 ::= standard_actions | component_actions | system_actions

    list_766 ::= grp_765 | list_766 grp_765

    seq_767 ::= COMMA system_privilege

    list_768 ::= $empty | list_768 seq_767

    seq_769 ::= COMMA actions_clause

    list_770 ::= $empty | list_770 seq_769

    grp_771 ::= object_action | ALL

    seq_773 ::= MINING MODEL

    opt_774 ::= seq_773 | $empty

    seq_775 ::= schema_name DOT

    opt_776 ::= seq_775 | $empty

    grp_772 ::= DIRECTORY directory_name | opt_774 opt_776 id_expression

    grp_777 ::= system_action | ALL

    grp_778 ::= CREATE | ALTER | DROP

    grp_779 ::= READ | WRITE | EXECUTE

    grp_781 ::= DATAPUMP | DIRECT_LOAD | OLS | XS

    seq_782 ::= COMMA component_action

    list_783 ::= $empty | list_783 seq_782

    seq_784 ::= COMMA component_action ON id_expression

    list_785 ::= $empty | list_785 seq_784

    grp_786 ::= FTP | HTTP | AUTHENTICATION

    grp_780 ::= grp_781 component_action list_783 | DV component_action ON id_expression list_785 | PROTOCOL grp_786

    seq_787 ::= COMMA role_name

    list_788 ::= $empty | list_788 seq_787

    opt_789 ::= REUSE | $empty

    opt_790 ::= SET | $empty

    opt_791 ::= logfile_clause | $empty

    grp_792 ::= RESETLOGS | NORESETLOGS

    seq_793 ::= COMMA file_specification

    list_794 ::= $empty | list_794 seq_793

    seq_795 ::= DATAFILE file_specification list_794

    opt_796 ::= seq_795 | $empty

    list_797 ::= $empty | list_797 controlfile_options

    opt_798 ::= character_set_clause | $empty

    grp_799 ::= DATA AVAILABILITY | LOAD PERFORMANCE

    opt_800 ::= GROUP | $empty

    seq_801 ::= opt_800 numeric

    opt_802 ::= seq_801 | $empty

    opt_803 ::= GROUP | $empty

    seq_804 ::= opt_803 numeric

    opt_805 ::= seq_804 | $empty

    seq_806 ::= COMMA opt_805 file_specification

    list_807 ::= $empty | list_807 seq_806

    seq_810 ::= SITE id_expression

    opt_811 ::= seq_810 | $empty

    grp_809 ::= HIGH | NORMAL | FLEX | EXTENDED opt_811 | EXTERNAL

    grp_808 ::= grp_809 REDUNDANCY

    opt_812 ::= grp_808 | $empty

    opt_813 ::= quorum_regular | $empty

    seq_814 ::= FAILGROUP id_expression

    opt_815 ::= seq_814 | $empty

    seq_816 ::= COMMA qualified_disk_clause

    list_817 ::= $empty | list_817 seq_816

    seq_818 ::= opt_813 opt_815 DISK qualified_disk_clause list_817

    list_819 ::= seq_818 | list_819 seq_818

    seq_820 ::= COMMA CHAR_STRING EQ CHAR_STRING

    list_821 ::= $empty | list_821 seq_820

    seq_822 ::= ATTRIBUTE CHAR_STRING EQ CHAR_STRING list_821

    opt_823 ::= seq_822 | $empty

    seq_824 ::= NAME id_expression

    opt_825 ::= seq_824 | $empty

    seq_826 ::= SIZE size_clause

    opt_827 ::= seq_826 | $empty

    opt_828 ::= force_noforce | $empty

    seq_829 ::= AS CHILD OF id_expression

    opt_830 ::= seq_829 | $empty

    opt_831 ::= DEFAULT | $empty

    opt_832 ::= flashback_archive_quota | $empty

    opt_833 ::= NO | $empty

    seq_834 ::= opt_833 OPTIMIZE DATA

    opt_835 ::= seq_834 | $empty

    grp_836 ::= M_LETTER | G_LETTER | T_LETTER | P_LETTER | E_LETTER

    grp_837 ::= YEAR | MONTH | DAY

    seq_838 ::= OR REPLACE

    opt_839 ::= seq_838 | $empty

    opt_840 ::= NO | $empty

    seq_841 ::= opt_840 FORCE

    opt_842 ::= seq_841 | $empty

    seq_843 ::= schema_name DOT

    opt_844 ::= seq_843 | $empty

    grp_846 ::= METADATA | NONE

    grp_845 ::= SHARING EQ grp_846

    opt_847 ::= grp_845 | $empty

    list_848 ::= $empty | list_848 classification_clause

    opt_849 ::= hier_attrs_clause | $empty

    seq_850 ::= schema_name DOT

    opt_851 ::= seq_850 | $empty

    seq_852 ::= CHILD OF

    opt_853 ::= seq_852 | $empty

    seq_854 ::= id_expression opt_853

    list_855 ::= seq_854 | list_855 seq_854

    list_856 ::= $empty | list_856 classification_clause

    grp_857 ::= UNIQUE | BITMAP

    opt_858 ::= grp_857 | $empty

    seq_859 ::= IF NOT EXISTS

    opt_860 ::= seq_859 | $empty

    grp_861 ::= cluster_index_clause | table_index_clause | bitmap_join_index_clause

    grp_862 ::= USABLE | UNUSABLE

    opt_863 ::= grp_862 | $empty

    grp_865 ::= DEFERRED | IMMEDIATE

    grp_864 ::= grp_865 INVALIDATION

    opt_866 ::= grp_864 | $empty

    opt_867 ::= index_attributes | $empty

    seq_868 ::= id_expression DOT

    opt_869 ::= seq_868 | $empty

    opt_870 ::= table_alias | $empty

    grp_871 ::= ASC | DESC

    opt_872 ::= grp_871 | $empty

    grp_874 ::= ASC | DESC

    opt_875 ::= grp_874 | $empty

    grp_873 ::= COMMA index_expr opt_875

    list_876 ::= $empty | list_876 grp_873

    opt_877 ::= index_properties | $empty

    grp_878 ::= tableview_name | table_alias

    opt_879 ::= grp_878 | $empty

    grp_880 ::= ASC | DESC

    opt_881 ::= grp_880 | $empty

    grp_883 ::= tableview_name | table_alias

    opt_884 ::= grp_883 | $empty

    grp_885 ::= ASC | DESC

    opt_886 ::= grp_885 | $empty

    grp_882 ::= COMMA opt_884 column_name opt_886

    list_887 ::= $empty | list_887 grp_882

    seq_888 ::= COMMA tableview_name table_alias

    list_889 ::= $empty | list_889 seq_888

    opt_890 ::= local_partitioned_index | $empty

    opt_891 ::= index_attributes | $empty

    grp_892 ::= global_partitioned_index | local_partitioned_index | index_attributes

    list_893 ::= grp_892 | list_893 grp_892

    grp_894 ::= domain_index_clause | xmlindex_clause

    opt_895 ::= local_domain_index_clause | $empty

    opt_896 ::= parallel_clause | $empty

    seq_897 ::= PARAMETERS LPAREN odci_parameters RPAREN

    opt_898 ::= seq_897 | $empty

    seq_899 ::= PARAMETERS LPAREN odci_parameters RPAREN

    opt_900 ::= seq_899 | $empty

    seq_901 ::= PARAMETERS LPAREN odci_parameters RPAREN

    opt_902 ::= seq_901 | $empty

    seq_903 ::= COMMA PARTITION partition_name opt_902

    list_904 ::= $empty | list_904 seq_903

    seq_905 ::= LPAREN PARTITION partition_name opt_900 list_904 RPAREN

    opt_906 ::= seq_905 | $empty

    seq_907 ::= XDB DOT

    opt_908 ::= seq_907 | $empty

    opt_909 ::= local_xmlindex_clause | $empty

    opt_910 ::= parallel_clause | $empty

    seq_911 ::= COMMA PARTITION partition_name

    list_912 ::= $empty | list_912 seq_911

    seq_913 ::= LPAREN PARTITION partition_name list_912 RPAREN

    opt_914 ::= seq_913 | $empty

    seq_916 ::= COMMA column_name

    list_917 ::= $empty | list_917 seq_916

    seq_918 ::= COMMA index_partitioning_clause

    list_919 ::= $empty | list_919 seq_918

    seq_920 ::= COMMA column_name

    list_921 ::= $empty | list_921 seq_920

    grp_922 ::= individual_hash_partitions | hash_partitions_by_quantity

    grp_915 ::= RANGE LPAREN column_name list_917 RPAREN LPAREN index_partitioning_clause list_919 RPAREN | HASH LPAREN column_name list_921 RPAREN grp_922

    opt_923 ::= partition_name | $empty

    opt_924 ::= segment_attributes_clause | $empty

    seq_925 ::= COMMA literal

    list_926 ::= $empty | list_926 seq_925

    seq_927 ::= COMMA TIMESTAMP literal

    list_928 ::= $empty | list_928 seq_927

    grp_929 ::= on_range_partitioned_table | on_list_partitioned_table | on_hash_partitioned_table | on_comp_partitioned_table

    opt_930 ::= grp_929 | $empty

    seq_931 ::= COMMA partitioned_table

    list_932 ::= $empty | list_932 seq_931

    seq_933 ::= COMMA partitioned_table

    list_934 ::= $empty | list_934 seq_933

    opt_935 ::= partition_name | $empty

    grp_936 ::= segment_attributes_clause | key_compression

    list_937 ::= $empty | list_937 grp_936

    opt_938 ::= UNUSABLE | $empty

    seq_939 ::= COMMA tablespace

    list_940 ::= $empty | list_940 seq_939

    seq_941 ::= COMMA on_hash_partitioned_clause

    list_942 ::= $empty | list_942 seq_941

    opt_943 ::= partition_name | $empty

    seq_944 ::= TABLESPACE tablespace

    opt_945 ::= seq_944 | $empty

    opt_946 ::= key_compression | $empty

    opt_947 ::= UNUSABLE | $empty

    seq_948 ::= COMMA tablespace

    list_949 ::= $empty | list_949 seq_948

    seq_950 ::= STORE IN LPAREN tablespace list_949 RPAREN

    opt_951 ::= seq_950 | $empty

    seq_952 ::= COMMA on_comp_partitioned_clause

    list_953 ::= $empty | list_953 seq_952

    opt_954 ::= partition_name | $empty

    grp_955 ::= segment_attributes_clause | key_compression

    list_956 ::= $empty | list_956 grp_955

    opt_957 ::= UNUSABLE | $empty

    opt_958 ::= index_subpartition_clause | $empty

    seq_959 ::= COMMA tablespace

    list_960 ::= $empty | list_960 seq_959

    seq_961 ::= COMMA index_subpartition_subclause

    list_962 ::= $empty | list_962 seq_961

    opt_963 ::= subpartition_name | $empty

    seq_964 ::= TABLESPACE tablespace

    opt_965 ::= seq_964 | $empty

    opt_966 ::= key_compression | $empty

    opt_967 ::= UNUSABLE | $empty

    seq_968 ::= id_expression DOT

    opt_969 ::= seq_968 | $empty

    grp_970 ::= alter_index_ops_set1 | alter_index_ops_set2

    grp_971 ::= deallocate_unused_clause | allocate_extent_clause | shrink_clause | parallel_clause | physical_attributes_clause | logging_clause

    list_972 ::= grp_971 | list_972 grp_971

    grp_973 ::= PARTITION partition_name | SUBPARTITION subpartition_name | REVERSE | NOREVERSE

    opt_974 ::= grp_973 | $empty

    grp_975 ::= parallel_clause | TABLESPACE tablespace | PARAMETERS LPAREN odci_parameters RPAREN | ONLINE | physical_attributes_clause | key_compression | logging_clause

    list_976 ::= $empty | list_976 grp_975

    seq_977 ::= FOR PARTITION partition_name

    opt_978 ::= seq_977 | $empty

    grp_980 ::= tablespace | DEFAULT

    grp_979 ::= physical_attributes_clause | TABLESPACE grp_980 | logging_clause

    opt_981 ::= partition_name | $empty

    seq_982 ::= TABLESPACE tablespace

    opt_983 ::= seq_982 | $empty

    opt_984 ::= key_compression | $empty

    opt_985 ::= parallel_clause | $empty

    opt_986 ::= parallel_clause | $empty

    list_988 ::= modify_index_partitions_ops | list_988 modify_index_partitions_ops

    grp_987 ::= list_988 | PARAMETERS LPAREN odci_parameters RPAREN | COALESCE | UPDATE BLOCK REFERENCES | UNUSABLE

    grp_989 ::= PARTITION partition_name | SUBPARTITION subpartition_name

    seq_990 ::= COMMA literal

    list_991 ::= $empty | list_991 seq_990

    seq_992 ::= INTO LPAREN index_partition_description COMMA index_partition_description RPAREN

    opt_993 ::= seq_992 | $empty

    opt_994 ::= parallel_clause | $empty

    grp_997 ::= segment_attributes_clause | key_compression

    list_998 ::= grp_997 | list_998 grp_997

    grp_996 ::= list_998 | PARAMETERS LPAREN odci_parameters RPAREN

    opt_999 ::= UNUSABLE | $empty

    grp_995 ::= partition_name grp_996 opt_999

    opt_1000 ::= grp_995 | $empty

    grp_1001 ::= UNUSABLE | modify_index_partitions_ops

    seq_1002 ::= schema_name DOT

    opt_1003 ::= seq_1002 | $empty

    grp_1004 ::= ADD | REMOVE

    seq_1005 ::= schema_name DOT

    opt_1006 ::= seq_1005 | $empty

    seq_1007 ::= IF NOT EXISTS

    opt_1008 ::= seq_1007 | $empty

    grp_1009 ::= identified_by | identified_other_clause | user_tablespace_clause | quota_clause | profile_clause | password_expire_clause | user_lock_clause | user_editions_clause | container_clause

    list_1010 ::= grp_1009 | list_1010 grp_1009

    grp_1011 ::= alter_identified_by | identified_other_clause | user_tablespace_clause | quota_clause | profile_clause | user_default_role_clause | password_expire_clause | user_lock_clause | alter_user_editions_clause | container_clause | container_data_clause

    list_1012 ::= grp_1011 | list_1012 grp_1011

    seq_1013 ::= COMMA user_object_name

    list_1014 ::= $empty | list_1014 seq_1013

    seq_1015 ::= IF EXISTS

    opt_1016 ::= seq_1015 | $empty

    opt_1017 ::= CASCADE | $empty

    seq_1018 ::= REPLACE id_expression

    opt_1019 ::= seq_1018 | $empty

    grp_1020 ::= EXTERNALLY | GLOBALLY

    seq_1021 ::= AS quoted_string

    opt_1022 ::= seq_1021 | $empty

    grp_1023 ::= DEFAULT | TEMPORARY

    grp_1024 ::= size_clause | UNLIMITED

    seq_1025 ::= COMMA role_name

    list_1026 ::= $empty | list_1026 seq_1025

    seq_1027 ::= COMMA role_name

    list_1028 ::= $empty | list_1028 seq_1027

    seq_1029 ::= EXCEPT role_name list_1028

    list_1030 ::= $empty | list_1030 seq_1029

    grp_1031 ::= NONE | role_clause

    grp_1032 ::= LOCK | UNLOCK

    seq_1033 ::= COMMA regular_id

    list_1034 ::= $empty | list_1034 seq_1033

    seq_1035 ::= FOR regular_id list_1034

    opt_1036 ::= seq_1035 | $empty

    opt_1037 ::= FORCE | $empty

    grp_1038 ::= ENTERPRISE USERS | user_object_name

    grp_1041 ::= NO ROLES | ROLE role_clause

    grp_1040 ::= WITH grp_1041

    opt_1042 ::= grp_1040 | $empty

    seq_1043 ::= AUTHENTICATION REQUIRED

    opt_1044 ::= seq_1043 | $empty

    grp_1046 ::= PASSWORD | CERTIFICATE | DISTINGUISHED NAME

    grp_1045 ::= AUTHENTICATED USING grp_1046

    opt_1047 ::= grp_1045 | $empty

    grp_1039 ::= ENTERPRISE USERS | user_object_name opt_1042 opt_1044 opt_1047

    seq_1048 ::= COMMA id_expression

    list_1049 ::= $empty | list_1049 seq_1048

    grp_1050 ::= ALL | DEFAULT | container_names

    grp_1051 ::= ADD | REMOVE

    seq_1052 ::= FOR container_tableview_name

    opt_1053 ::= seq_1052 | $empty

    grp_1054 ::= keystore_management_clauses | key_management_clauses | secret_management_clauses | zero_downtime_software_patching_clauses

    opt_1056 ::= LOCAL | $empty

    grp_1055 ::= KEYSTORE CHAR_STRING | opt_1056 AUTO_LOGIN KEYSTORE FROM KEYSTORE CHAR_STRING

    opt_1057 ::= force_keystore | $empty

    opt_1058 ::= container_clause | $empty

    opt_1059 ::= identified_by_store | $empty

    opt_1060 ::= container_clause | $empty

    seq_1061 ::= USING CHAR_STRING

    opt_1062 ::= seq_1061 | $empty

    opt_1063 ::= force_keystore | $empty

    seq_1064 ::= TO CHAR_STRING

    opt_1065 ::= seq_1064 | $empty

    opt_1066 ::= force_keystore | $empty

    opt_1067 ::= with_backup_clause | $empty

    opt_1068 ::= identified_by_password_clause | $empty

    opt_1069 ::= identified_by_password_clause | $empty

    opt_1070 ::= identified_by_password_clause | $empty

    opt_1071 ::= with_backup_clause | $empty

    opt_1072 ::= FORCE | $empty

    opt_1073 ::= force_keystore | $empty

    opt_1074 ::= with_backup_clause | $empty

    opt_1075 ::= force_keystore | $empty

    opt_1076 ::= with_backup_clause | $empty

    opt_1077 ::= ENCRYPTION | $empty

    seq_1078 ::= mkid COLON

    opt_1079 ::= seq_1078 | $empty

    seq_1080 ::= opt_1079 mk

    opt_1081 ::= seq_1080 | $empty

    opt_1082 ::= using_tag_clause | $empty

    opt_1083 ::= using_algorithm_clause | $empty

    opt_1084 ::= force_keystore | $empty

    opt_1085 ::= with_backup_clause | $empty

    opt_1086 ::= container_clause | $empty

    opt_1087 ::= ENCRYPTION | $empty

    seq_1088 ::= mkid COLON

    opt_1089 ::= seq_1088 | $empty

    seq_1090 ::= opt_1089 mk

    opt_1091 ::= seq_1090 | $empty

    opt_1092 ::= using_tag_clause | $empty

    opt_1093 ::= using_algorithm_clause | $empty

    opt_1094 ::= force_keystore | $empty

    opt_1095 ::= with_backup_clause | $empty

    opt_1096 ::= container_clause | $empty

    opt_1097 ::= ENCRYPTION | $empty

    opt_1098 ::= using_tag_clause | $empty

    opt_1099 ::= force_keystore | $empty

    opt_1100 ::= with_backup_clause | $empty

    opt_1101 ::= force_keystore | $empty

    opt_1102 ::= with_backup_clause | $empty

    opt_1103 ::= ENCRYPTION | $empty

    opt_1104 ::= force_keystore | $empty

    seq_1107 ::= COMMA CHAR_STRING

    list_1108 ::= $empty | list_1108 seq_1107

    grp_1106 ::= CHAR_STRING list_1108 | LPAREN subquery RPAREN

    grp_1105 ::= WITH IDENTIFIER IN grp_1106

    opt_1109 ::= grp_1105 | $empty

    opt_1110 ::= ENCRYPTION | $empty

    opt_1111 ::= force_keystore | $empty

    opt_1112 ::= with_backup_clause | $empty

    opt_1113 ::= ENCRYPTION | $empty

    opt_1114 ::= force_keystore | $empty

    opt_1115 ::= with_backup_clause | $empty

    opt_1116 ::= ENCRYPTION | $empty

    opt_1117 ::= force_keystore | $empty

    opt_1118 ::= ENCRYPTION | $empty

    opt_1119 ::= FORCE | $empty

    seq_1122 ::= COMMA CHAR_STRING

    list_1123 ::= $empty | list_1123 seq_1122

    grp_1121 ::= CHAR_STRING list_1123 | subquery

    grp_1120 ::= WITH IDENTIFIER IN grp_1121

    opt_1124 ::= grp_1120 | $empty

    opt_1125 ::= with_backup_clause | $empty

    grp_1126 ::= EXTERNAL STORE | keystore_password

    grp_1127 ::= ADD | UPDATE

    opt_1128 ::= using_tag_clause | $empty

    opt_1129 ::= force_keystore | $empty

    opt_1130 ::= identified_by_store | $empty

    opt_1131 ::= with_backup_clause | $empty

    opt_1132 ::= force_keystore | $empty

    opt_1133 ::= with_backup_clause | $empty

    grp_1134 ::= ADD | UPDATE

    opt_1135 ::= using_tag_clause | $empty

    opt_1136 ::= LOCAL | $empty

    opt_1137 ::= LOCAL | $empty

    opt_1138 ::= TO | $empty

    seq_1139 ::= USING CHAR_STRING

    opt_1140 ::= seq_1139 | $empty

    grp_1142 ::= TABLE tableview_name | INDEX index_name

    opt_1143 ::= partition_extention_clause | $empty

    grp_1141 ::= ANALYZE grp_1142 opt_1143 | ANALYZE CLUSTER cluster_name

    opt_1145 ::= SYSTEM | $empty

    opt_1146 ::= for_clause | $empty

    grp_1148 ::= ROWS | PERCENT_KEYWORD

    grp_1147 ::= SAMPLE UNSIGNED_INTEGER grp_1148

    opt_1149 ::= grp_1147 | $empty

    opt_1150 ::= into_clause1 | $empty

    opt_1151 ::= SYSTEM | $empty

    grp_1144 ::= validation_clauses | compute_clauses | ESTIMATE opt_1145 STATISTICS opt_1146 opt_1149 | LIST CHAINED ROWS opt_1150 | DELETE opt_1151 STATISTICS

    seq_1153 ::= COMMA partition_key_value

    list_1154 ::= $empty | list_1154 seq_1153

    grp_1152 ::= LPAREN partition_name RPAREN | FOR LPAREN partition_key_value list_1154 RPAREN

    seq_1156 ::= COMMA subpartition_key_value

    list_1157 ::= $empty | list_1157 seq_1156

    grp_1155 ::= LPAREN subpartition_name RPAREN | FOR LPAREN subpartition_key_value list_1157 RPAREN

    seq_1158 ::= SET DANGLING TO NULL_

    opt_1159 ::= seq_1158 | $empty

    opt_1161 ::= online_or_offline | $empty

    opt_1162 ::= into_clause | $empty

    grp_1160 ::= CASCADE FAST | CASCADE opt_1161 opt_1162 | CASCADE

    opt_1163 ::= grp_1160 | $empty

    opt_1164 ::= online_or_offline | $empty

    opt_1165 ::= into_clause | $empty

    opt_1166 ::= SYSTEM | $empty

    opt_1167 ::= for_clause | $empty

    list_1169 ::= $empty | list_1169 for_clause

    opt_1171 ::= INDEXED | $empty

    seq_1172 ::= SIZE UNSIGNED_INTEGER

    opt_1173 ::= seq_1172 | $empty

    list_1174 ::= $empty | list_1174 for_clause

    opt_1175 ::= LOCAL | $empty

    grp_1170 ::= opt_1171 COLUMNS opt_1173 list_1174 | opt_1175 INDEXES

    seq_1176 ::= SIZE UNSIGNED_INTEGER

    opt_1177 ::= seq_1176 | $empty

    seq_1178 ::= column_name SIZE UNSIGNED_INTEGER

    list_1179 ::= seq_1178 | list_1179 seq_1178

    list_1180 ::= $empty | list_1180 for_clause

    grp_1168 ::= TABLE list_1169 | ALL grp_1170 | COLUMNS opt_1177 list_1179 list_1180

    opt_1181 ::= tableview_name | $empty

    grp_1182 ::= column_association | function_association

    opt_1183 ::= storage_table_clause | $empty

    seq_1184 ::= COMMA tableview_name DOT column_name

    list_1185 ::= $empty | list_1185 seq_1184

    seq_1187 ::= COMMA function_name

    list_1188 ::= $empty | list_1188 seq_1187

    seq_1189 ::= COMMA package_name

    list_1190 ::= $empty | list_1190 seq_1189

    seq_1191 ::= COMMA type_name

    list_1192 ::= $empty | list_1192 seq_1191

    seq_1193 ::= COMMA index_name

    list_1194 ::= $empty | list_1194 seq_1193

    seq_1195 ::= COMMA indextype_name

    list_1196 ::= $empty | list_1196 seq_1195

    grp_1186 ::= FUNCTIONS function_name list_1188 | PACKAGES package_name list_1190 | TYPES type_name list_1192 | INDEXES index_name list_1194 | INDEXTYPES indextype_name list_1196

    seq_1198 ::= COMMA default_selectivity_clause

    opt_1199 ::= seq_1198 | $empty

    seq_1200 ::= COMMA default_cost_clause

    opt_1201 ::= seq_1200 | $empty

    grp_1197 ::= using_statistics_type | default_cost_clause opt_1199 | default_selectivity_clause opt_1201

    grp_1202 ::= statistics_type_name | NULL_

    grp_1203 ::= SYSTEM | USER

    grp_1206 ::= BY | EXCEPT

    seq_1207 ::= COMMA audit_user

    list_1208 ::= $empty | list_1208 seq_1207

    grp_1205 ::= grp_1206 audit_user list_1208

    opt_1209 ::= grp_1205 | $empty

    opt_1210 ::= NOT | $empty

    seq_1211 ::= WHENEVER opt_1210 SUCCESSFUL

    opt_1212 ::= seq_1211 | $empty

    seq_1213 ::= COMMA attribute_name

    list_1214 ::= $empty | list_1214 seq_1213

    seq_1215 ::= COMMA audit_user

    list_1216 ::= $empty | list_1216 seq_1215

    seq_1217 ::= BY audit_user list_1216

    opt_1218 ::= seq_1217 | $empty

    grp_1204 ::= POLICY policy_name opt_1209 opt_1212 | CONTEXT NAMESPACE oracle_namespace ATTRIBUTES attribute_name list_1214 opt_1218

    grp_1220 ::= auditing_by_clause | IN SESSION CURRENT

    opt_1221 ::= grp_1220 | $empty

    grp_1219 ::= audit_operation_clause opt_1221 | audit_schema_object_clause | NETWORK | audit_direct_path

    grp_1223 ::= SESSION | ACCESS

    grp_1222 ::= BY grp_1223

    opt_1224 ::= grp_1222 | $empty

    opt_1225 ::= NOT | $empty

    seq_1226 ::= WHENEVER opt_1225 SUCCESSFUL

    opt_1227 ::= seq_1226 | $empty

    opt_1228 ::= audit_container_clause | $empty

    grp_1230 ::= CURRENT | ALL

    grp_1229 ::= CONTAINER EQUALS_OP grp_1230

    opt_1233 ::= STATEMENTS | $empty

    grp_1232 ::= sql_statement_shortcut | ALL opt_1233

    opt_1236 ::= STATEMENTS | $empty

    grp_1235 ::= sql_statement_shortcut | ALL opt_1236

    grp_1234 ::= COMMA grp_1235

    list_1237 ::= $empty | list_1237 grp_1234

    grp_1238 ::= system_privilege | ALL PRIVILEGES

    grp_1240 ::= system_privilege | ALL PRIVILEGES

    grp_1239 ::= COMMA grp_1240

    list_1241 ::= $empty | list_1241 grp_1239

    grp_1231 ::= grp_1232 list_1237 | grp_1238 list_1241

    seq_1242 ::= COMMA audit_user

    list_1243 ::= $empty | list_1243 seq_1242

    seq_1245 ::= COMMA sql_operation

    list_1246 ::= $empty | list_1246 seq_1245

    grp_1244 ::= sql_operation list_1246 | ALL

    grp_1247 ::= object_name | DIRECTORY regular_id | MINING MODEL model_name | SQL TRANSLATION PROFILE profile_name | DEFAULT

    seq_1248 ::= id_expression DOT

    opt_1249 ::= seq_1248 | $empty

    seq_1250 ::= id_expression DOT

    opt_1251 ::= seq_1250 | $empty

    seq_1252 ::= id_expression DOT

    opt_1253 ::= seq_1252 | $empty

    seq_1254 ::= IF EXISTS

    opt_1255 ::= seq_1254 | $empty

    seq_1257 ::= schema_name DOT

    opt_1258 ::= seq_1257 | $empty

    seq_1259 ::= schema_name DOT

    opt_1260 ::= seq_1259 | $empty

    seq_1261 ::= COMMA opt_1260 id_expression DOT id_expression

    list_1262 ::= $empty | list_1262 seq_1261

    seq_1263 ::= schema_name DOT

    opt_1264 ::= seq_1263 | $empty

    seq_1265 ::= schema_name DOT

    opt_1266 ::= seq_1265 | $empty

    seq_1267 ::= COMMA opt_1266 id_expression

    list_1268 ::= $empty | list_1268 seq_1267

    seq_1269 ::= schema_name DOT

    opt_1270 ::= seq_1269 | $empty

    seq_1271 ::= schema_name DOT

    opt_1272 ::= seq_1271 | $empty

    seq_1273 ::= COMMA opt_1272 id_expression

    list_1274 ::= $empty | list_1274 seq_1273

    seq_1275 ::= schema_name DOT

    opt_1276 ::= seq_1275 | $empty

    seq_1277 ::= schema_name DOT

    opt_1278 ::= seq_1277 | $empty

    seq_1279 ::= COMMA opt_1278 id_expression

    list_1280 ::= $empty | list_1280 seq_1279

    seq_1281 ::= schema_name DOT

    opt_1282 ::= seq_1281 | $empty

    seq_1283 ::= schema_name DOT

    opt_1284 ::= seq_1283 | $empty

    seq_1285 ::= COMMA opt_1284 id_expression

    list_1286 ::= $empty | list_1286 seq_1285

    seq_1287 ::= schema_name DOT

    opt_1288 ::= seq_1287 | $empty

    seq_1289 ::= schema_name DOT

    opt_1290 ::= seq_1289 | $empty

    seq_1291 ::= COMMA opt_1290 id_expression

    list_1292 ::= $empty | list_1292 seq_1291

    grp_1256 ::= COLUMNS opt_1258 id_expression DOT id_expression list_1262 | FUNCTIONS opt_1264 id_expression list_1268 | PACKAGES opt_1270 id_expression list_1274 | TYPES opt_1276 id_expression list_1280 | INDEXES opt_1282 id_expression list_1286 | INDEXTYPES opt_1288 id_expression list_1292

    opt_1293 ::= FORCE | $empty

    seq_1294 ::= schema_name DOT

    opt_1295 ::= seq_1294 | $empty

    opt_1296 ::= FORCE | $empty

    seq_1297 ::= schema_name DOT

    opt_1298 ::= seq_1297 | $empty

    seq_1299 ::= COMMA tableview_name

    list_1300 ::= $empty | list_1300 seq_1299

    grp_1303 ::= SCN | TIMESTAMP

    grp_1302 ::= grp_1303 expression | RESTORE POINT restore_point

    grp_1305 ::= ENABLE | DISABLE

    grp_1304 ::= grp_1305 TRIGGERS

    opt_1306 ::= grp_1304 | $empty

    seq_1307 ::= RENAME TO tableview_name

    opt_1308 ::= seq_1307 | $empty

    grp_1301 ::= grp_1302 opt_1306 | BEFORE DROP opt_1308

    seq_1309 ::= DOT id_expression

    list_1310 ::= $empty | list_1310 seq_1309

    grp_1312 ::= TABLE | INDEX

    opt_1313 ::= SET | $empty

    seq_1314 ::= USER id_expression

    opt_1315 ::= seq_1314 | $empty

    grp_1311 ::= grp_1312 id_expression | TABLESPACE opt_1313 id_expression opt_1315 | RECYCLEBIN | DBA_RECYCLEBIN

    opt_1317 ::= auditing_by_clause | $empty

    opt_1318 ::= auditing_by_clause | $empty

    grp_1316 ::= audit_operation_clause opt_1317 | audit_schema_object_clause | NETWORK | DIRECT_PATH LOAD opt_1318

    opt_1319 ::= NOT | $empty

    seq_1320 ::= WHENEVER opt_1319 SUCCESSFUL

    opt_1321 ::= seq_1320 | $empty

    opt_1322 ::= container_clause | $empty

    opt_1324 ::= COMMA | $empty

    opt_1326 ::= paren_column_list | $empty

    grp_1325 ::= role_name | system_privilege | object_privilege opt_1326

    grp_1323 ::= opt_1324 grp_1325

    list_1327 ::= grp_1323 | list_1327 grp_1323

    seq_1328 ::= ON grant_object_name

    opt_1329 ::= seq_1328 | $empty

    grp_1330 ::= grantee_name | PUBLIC

    grp_1332 ::= grantee_name | PUBLIC

    grp_1331 ::= COMMA grp_1332

    list_1333 ::= $empty | list_1333 grp_1331

    grp_1335 ::= ADMIN | DELEGATE

    grp_1334 ::= WITH grp_1335 OPTION

    opt_1336 ::= grp_1334 | $empty

    seq_1337 ::= WITH HIERARCHY OPTION

    opt_1338 ::= seq_1337 | $empty

    seq_1339 ::= WITH GRANT OPTION

    opt_1340 ::= seq_1339 | $empty

    opt_1341 ::= container_clause | $empty

    grp_1342 ::= CURRENT | ALL

    grp_1344 ::= revoke_system_privilege | revoke_object_privileges

    opt_1345 ::= container_clause | $empty

    grp_1343 ::= grp_1344 opt_1345 | revoke_roles_from_programs

    grp_1346 ::= system_privilege | role_name | ALL PRIVILEGES

    grp_1347 ::= id_expression | PUBLIC

    grp_1349 ::= id_expression | PUBLIC

    grp_1348 ::= COMMA grp_1349

    list_1350 ::= $empty | list_1350 grp_1348

    opt_1352 ::= PRIVILEGES | $empty

    grp_1351 ::= object_privilege | ALL opt_1352

    opt_1355 ::= PRIVILEGES | $empty

    grp_1354 ::= object_privilege | ALL opt_1355

    grp_1353 ::= COMMA grp_1354

    list_1356 ::= $empty | list_1356 grp_1353

    grp_1357 ::= CASCADE CONSTRAINTS | FORCE

    opt_1358 ::= grp_1357 | $empty

    seq_1360 ::= schema_name DOT

    opt_1361 ::= seq_1360 | $empty

    seq_1362 ::= COMMA id_expression

    list_1363 ::= $empty | list_1363 seq_1362

    seq_1364 ::= schema_name DOT

    opt_1365 ::= seq_1364 | $empty

    grp_1366 ::= SOURCE | RESOURCE

    seq_1367 ::= schema_name DOT

    opt_1368 ::= seq_1367 | $empty

    seq_1369 ::= schema_name DOT

    opt_1370 ::= seq_1369 | $empty

    grp_1359 ::= opt_1361 id_expression | USER id_expression list_1363 | DIRECTORY directory_name | EDITION edition_name | MINING MODEL opt_1365 id_expression | JAVA grp_1366 opt_1368 id_expression | SQL TRANSLATION PROFILE opt_1370 id_expression

    seq_1372 ::= COMMA role_name

    list_1373 ::= $empty | list_1373 seq_1372

    grp_1371 ::= role_name list_1373 | ALL

    seq_1374 ::= COMMA program_unit

    list_1375 ::= $empty | list_1375 seq_1374

    grp_1376 ::= FUNCTION | PROCEDURE | PACKAGE

    seq_1377 ::= schema_name DOT

    opt_1378 ::= seq_1377 | $empty

    list_1379 ::= level_clause | list_1379 level_clause

    grp_1380 ::= hierarchy_clause | attribute_clause | extended_attribute_clause

    list_1381 ::= grp_1380 | list_1381 grp_1380

    seq_1382 ::= OR REPLACE

    opt_1383 ::= seq_1382 | $empty

    grp_1385 ::= METADATA | NONE

    grp_1384 ::= SHARING EQ grp_1385

    opt_1386 ::= grp_1384 | $empty

    seq_1387 ::= schema_name DOT

    opt_1388 ::= seq_1387 | $empty

    seq_1389 ::= schema_name DOT

    opt_1390 ::= seq_1389 | $empty

    seq_1391 ::= schema_name DOT

    opt_1392 ::= seq_1391 | $empty

    seq_1393 ::= COMMA opt_1392 id_expression LPAREN id_expression RPAREN

    list_1394 ::= seq_1393 | list_1394 seq_1393

    seq_1395 ::= schema_name DOT

    opt_1396 ::= seq_1395 | $empty

    opt_1398 ::= library_debug | $empty

    list_1399 ::= $empty | list_1399 compiler_parameters_clause

    seq_1400 ::= REUSE SETTINGS

    opt_1401 ::= seq_1400 | $empty

    grp_1397 ::= COMPILE opt_1398 list_1399 opt_1401 | library_editionable

    grp_1402 ::= SOURCE | CLASS | RESOURCE

    seq_1403 ::= schema_name DOT

    opt_1404 ::= seq_1403 | $empty

    seq_1405 ::= OR REPLACE

    opt_1406 ::= seq_1405 | $empty

    grp_1408 ::= RESOLVE | COMPILE

    grp_1407 ::= AND grp_1408

    opt_1409 ::= grp_1407 | $empty

    opt_1410 ::= NOFORCE | $empty

    grp_1412 ::= SOURCE | RESOURCE

    seq_1413 ::= schema_name DOT

    opt_1414 ::= seq_1413 | $empty

    seq_1415 ::= SCHEMA id_expression

    opt_1416 ::= seq_1415 | $empty

    grp_1411 ::= grp_1412 NAMED opt_1414 id_expression | CLASS opt_1416

    grp_1418 ::= METADATA | NONE

    grp_1417 ::= SHARING EQ grp_1418

    opt_1419 ::= grp_1417 | $empty

    opt_1420 ::= invoker_rights_clause | $empty

    opt_1423 ::= COMMA | $empty

    grp_1424 ::= id_expression | MINUS

    grp_1422 ::= LPAREN CHAR_STRING opt_1423 grp_1424 RPAREN

    list_1425 ::= grp_1422 | list_1425 grp_1422

    grp_1421 ::= RESOLVER LPAREN list_1425 RPAREN

    opt_1426 ::= grp_1421 | $empty

    grp_1429 ::= CLOB | BLOB | BFILE

    grp_1428 ::= BFILE LPAREN id_expression COMMA filename RPAREN | grp_1429 subquery | CHAR_STRING

    grp_1427 ::= USING grp_1428 | AS CHAR_STRING

    seq_1430 ::= OR REPLACE

    opt_1431 ::= seq_1430 | $empty

    grp_1432 ::= EDITIONABLE | NONEDITIONABLE

    opt_1433 ::= grp_1432 | $empty

    grp_1434 ::= IS | AS

    seq_1435 ::= IN directory_name

    opt_1436 ::= seq_1435 | $empty

    seq_1437 ::= AGENT quoted_string

    opt_1438 ::= seq_1437 | $empty

    seq_1439 ::= CREDENTIAL credential_name

    opt_1440 ::= seq_1439 | $empty

    seq_1441 ::= id_expression DOT

    opt_1442 ::= seq_1441 | $empty

    grp_1443 ::= EDITIONABLE | NONEDITIONABLE

    seq_1444 ::= regular_id DOT

    opt_1445 ::= seq_1444 | $empty

    grp_1448 ::= level_clause | hierarchy_clause | attribute_clause | extended_attribute_clause

    grp_1447 ::= ADD grp_1448

    list_1449 ::= grp_1447 | list_1449 grp_1447

    grp_1452 ::= RESTRICT | CASCADE

    opt_1453 ::= grp_1452 | $empty

    seq_1454 ::= COMMA COLUMN column_name

    list_1455 ::= $empty | list_1455 seq_1454

    seq_1456 ::= COLUMN column_name list_1455

    opt_1457 ::= seq_1456 | $empty

    seq_1458 ::= LEVEL identifier opt_1457

    opt_1459 ::= seq_1458 | $empty

    grp_1451 ::= LEVEL identifier opt_1453 | HIERARCHY identifier | ATTRIBUTE identifier opt_1459

    grp_1450 ::= DROP grp_1451

    list_1460 ::= grp_1450 | list_1460 grp_1450

    grp_1446 ::= list_1449 | list_1460 | COMPILE

    seq_1462 ::= COMMA table_name DOT column_name

    list_1463 ::= $empty | list_1463 seq_1462

    grp_1461 ::= table_name DOT column_name | LPAREN table_name DOT column_name list_1463 RPAREN

    seq_1464 ::= SKIP_ WHEN NULL_

    opt_1465 ::= seq_1464 | $empty

    seq_1466 ::= CHILD OF identifier

    list_1467 ::= seq_1466 | list_1467 seq_1466

    opt_1468 ::= dimension_join_clause | $empty

    seq_1469 ::= JOIN KEY column_one_or_more_sub_clause REFERENCES identifier

    list_1470 ::= seq_1469 | list_1470 seq_1469

    seq_1471 ::= ATTRIBUTE identifier DETERMINES column_one_or_more_sub_clause

    list_1472 ::= seq_1471 | list_1472 seq_1471

    seq_1473 ::= LEVEL identifier DETERMINES column_one_or_more_sub_clause

    list_1474 ::= seq_1473 | list_1474 seq_1473

    seq_1475 ::= COMMA column_name

    list_1476 ::= $empty | list_1476 seq_1475

    grp_1478 ::= RELY | NORELY

    seq_1480 ::= COMMA column_name

    list_1481 ::= $empty | list_1481 seq_1480

    grp_1479 ::= CONSTRAINT constraint_name | PRIMARY KEY | UNIQUE LPAREN column_name list_1481 RPAREN

    grp_1482 ::= ONLY | WRITE

    opt_1483 ::= alter_view_editionable | $empty

    grp_1477 ::= ADD out_of_line_constraint | MODIFY CONSTRAINT constraint_name grp_1478 | DROP grp_1479 | COMPILE | READ grp_1482 | opt_1483

    grp_1484 ::= EDITIONABLE | NONEDITIONABLE

    seq_1485 ::= OR REPLACE

    opt_1486 ::= seq_1485 | $empty

    opt_1487 ::= NO | $empty

    seq_1488 ::= opt_1487 FORCE

    opt_1489 ::= seq_1488 | $empty

    opt_1490 ::= editioning_clause | $empty

    seq_1491 ::= schema_name DOT

    opt_1492 ::= seq_1491 | $empty

    seq_1493 ::= IF NOT EXISTS

    opt_1494 ::= seq_1493 | $empty

    opt_1497 ::= EXTENDED | $empty

    grp_1496 ::= METADATA | opt_1497 DATA | NONE

    grp_1495 ::= SHARING EQ grp_1496

    opt_1498 ::= grp_1495 | $empty

    opt_1499 ::= view_options | $empty

    seq_1500 ::= DEFAULT COLLATION id_expression

    opt_1501 ::= seq_1500 | $empty

    grp_1503 ::= CURRENT_USER | DEFINER

    grp_1502 ::= BEQUEATH grp_1503

    opt_1504 ::= grp_1502 | $empty

    opt_1505 ::= subquery_restriction_clause | $empty

    grp_1506 ::= CONTAINER_MAP | CONTAINERS_DEFAULT

    opt_1507 ::= grp_1506 | $empty

    opt_1508 ::= EDITIONING | $empty

    opt_1510 ::= COMMA | $empty

    list_1512 ::= $empty | list_1512 inline_constraint

    grp_1511 ::= table_alias list_1512 | out_of_line_constraint

    grp_1509 ::= opt_1510 grp_1511

    list_1513 ::= grp_1509 | list_1513 grp_1509

    seq_1514 ::= schema_name DOT

    opt_1515 ::= seq_1514 | $empty

    grp_1517 ::= IDENTIFIER | ID

    seq_1519 ::= COMMA REGULAR_ID

    list_1520 ::= $empty | list_1520 seq_1519

    grp_1518 ::= DEFAULT | LPAREN REGULAR_ID list_1520 RPAREN

    seq_1521 ::= schema_name DOT

    opt_1522 ::= seq_1521 | $empty

    grp_1516 ::= WITH OBJECT grp_1517 grp_1518 | UNDER opt_1522 id_expression

    opt_1525 ::= COMMA | $empty

    grp_1526 ::= out_of_line_constraint | REGULAR_ID inline_constraint

    grp_1524 ::= opt_1525 grp_1526

    list_1527 ::= grp_1524 | list_1527 grp_1524

    grp_1523 ::= LPAREN list_1527 RPAREN

    list_1528 ::= $empty | list_1528 grp_1523

    seq_1529 ::= CONSTRAINT constraint_name

    opt_1530 ::= seq_1529 | $empty

    opt_1532 ::= NOT | $empty

    grp_1531 ::= opt_1532 NULL_ | UNIQUE | PRIMARY KEY | references_clause | check_constraint

    opt_1533 ::= constraint_state | $empty

    seq_1534 ::= CONSTRAINT constraint_name

    opt_1535 ::= seq_1534 | $empty

    opt_1536 ::= constraint_state | $empty

    seq_1537 ::= CONSTRAINT constraint_name

    opt_1538 ::= seq_1537 | $empty

    opt_1539 ::= COMMA | $empty

    seq_1540 ::= opt_1539 regular_id

    list_1541 ::= seq_1540 | list_1541 seq_1540

    opt_1542 ::= constraint_state | $empty

    grp_1545 ::= CONSTRAINT | CONSTRAINTS

    grp_1544 ::= grp_1545 constraint_name

    opt_1546 ::= grp_1544 | $empty

    seq_1548 ::= COMMA column_name

    list_1549 ::= $empty | list_1549 seq_1548

    seq_1550 ::= COMMA column_name

    list_1551 ::= $empty | list_1551 seq_1550

    grp_1547 ::= UNIQUE LPAREN column_name list_1549 RPAREN | PRIMARY KEY LPAREN column_name list_1551 RPAREN | foreign_key_clause | CHECK LPAREN condition RPAREN

    grp_1543 ::= opt_1546 grp_1547

    opt_1552 ::= constraint_state | $empty

    opt_1553 ::= parallel_clause | $empty

    opt_1555 ::= NOT | $empty

    grp_1556 ::= IMMEDIATE | DEFERRED

    grp_1557 ::= RELY | NORELY

    grp_1558 ::= ENABLE | DISABLE

    grp_1559 ::= VALIDATE | NOVALIDATE

    grp_1554 ::= opt_1555 DEFERRABLE | INITIALLY grp_1556 | grp_1557 | grp_1558 | grp_1559 | using_index_clause

    list_1560 ::= grp_1554 | list_1560 grp_1554

    opt_1561 ::= xml_schema_spec | $empty

    grp_1562 ::= IDENTIFIER | ID

    seq_1564 ::= COMMA expression

    list_1565 ::= $empty | list_1565 seq_1564

    grp_1563 ::= DEFAULT | LPAREN expression list_1565 RPAREN

    seq_1566 ::= XMLSCHEMA xml_schema_url

    opt_1567 ::= seq_1566 | $empty

    grp_1568 ::= element | xml_schema_url HASH element

    grp_1570 ::= LOBS | TABLES

    grp_1569 ::= STORE ALL VARRAYS AS grp_1570

    opt_1571 ::= grp_1569 | $empty

    seq_1572 ::= allow_or_disallow NONSCHEMA

    opt_1573 ::= seq_1572 | $empty

    seq_1574 ::= allow_or_disallow ANYSCHEMA

    opt_1575 ::= seq_1574 | $empty

    opt_1577 ::= table_compression | $empty

    opt_1578 ::= storage_clause | $empty

    seq_1579 ::= KEEP size_clause

    opt_1580 ::= seq_1579 | $empty

    grp_1576 ::= DEFAULT opt_1577 opt_1578 | MINIMUM EXTENT size_clause | RESIZE size_clause | COALESCE | SHRINK SPACE_KEYWORD opt_1580 | RENAME TO new_tablespace_name | begin_or_end BACKUP | datafile_tempfile_clauses | tablespace_logging_clauses | tablespace_group_clause | tablespace_state_clauses | autoextend_clause | flashback_mode_clause | tablespace_retention_clause

    grp_1581 ::= datafile_specification | tempfile_specification

    grp_1582 ::= DATAFILE | TEMPFILE

    grp_1583 ::= filename | UNSIGNED_INTEGER

    seq_1584 ::= KEEP size_clause

    opt_1585 ::= seq_1584 | $empty

    grp_1586 ::= filename | UNSIGNED_INTEGER

    seq_1587 ::= KEEP size_clause

    opt_1588 ::= seq_1587 | $empty

    seq_1589 ::= COMMA filename

    list_1590 ::= $empty | list_1590 seq_1589

    seq_1591 ::= COMMA filename

    list_1592 ::= $empty | list_1592 seq_1591

    grp_1593 ::= DATAFILE | TEMPFILE

    opt_1594 ::= NO | $empty

    grp_1595 ::= tablespace_group_name | CHAR_STRING

    grp_1596 ::= NORMAL | TEMPORARY | IMMEDIATE

    opt_1597 ::= grp_1596 | $empty

    grp_1598 ::= ONLY | WRITE

    grp_1599 ::= ON | OFF

    grp_1600 ::= BIGFILE | SMALLFILE

    opt_1601 ::= grp_1600 | $empty

    grp_1602 ::= permanent_tablespace_clause | temporary_tablespace_clause | undo_tablespace_clause

    seq_1603 ::= IF NOT EXISTS

    opt_1604 ::= seq_1603 | $empty

    opt_1605 ::= datafile_specification | $empty

    grp_1607 ::= ONLINE | OFFLINE

    grp_1606 ::= MINIMUM EXTENT size_clause | BLOCKSIZE size_clause | logging_clause | FORCE LOGGING | grp_1607 | ENCRYPTION tablespace_encryption_spec | DEFAULT | extent_management_clause | segment_management_clause | flashback_mode_clause

    list_1608 ::= $empty | list_1608 grp_1606

    seq_1610 ::= SIZE size_clause

    opt_1611 ::= seq_1610 | $empty

    grp_1609 ::= AUTOALLOCATE | UNIFORM opt_1611

    opt_1612 ::= grp_1609 | $empty

    grp_1613 ::= AUTO | MANUAL

    seq_1614 ::= IF NOT EXISTS

    opt_1615 ::= seq_1614 | $empty

    opt_1616 ::= tempfile_specification | $empty

    opt_1617 ::= tablespace_group_clause | $empty

    opt_1618 ::= extent_management_clause | $empty

    seq_1619 ::= IF NOT EXISTS

    opt_1620 ::= seq_1619 | $empty

    opt_1621 ::= datafile_specification | $empty

    opt_1622 ::= extent_management_clause | $empty

    opt_1623 ::= tablespace_retention_clause | $empty

    grp_1624 ::= GUARANTEE | NOGUARANTEE

    seq_1625 ::= IN SHARDSPACE id_expression

    opt_1626 ::= seq_1625 | $empty

    seq_1627 ::= COMMA file_specification

    list_1628 ::= $empty | list_1628 seq_1627

    seq_1629 ::= DATAFILE file_specification list_1628

    opt_1630 ::= seq_1629 | $empty

    list_1631 ::= permanent_tablespace_attrs | list_1631 permanent_tablespace_attrs

    seq_1632 ::= USING TEMPLATE LPAREN opt_1630 list_1631 RPAREN

    opt_1633 ::= seq_1632 | $empty

    opt_1634 ::= K_LETTER | $empty

    opt_1636 ::= tablespace_encryption_spec | $empty

    grp_1635 ::= opt_1636 ENCRYPT | DECRYPT

    opt_1637 ::= default_table_compression | $empty

    opt_1638 ::= default_index_compression | $empty

    opt_1639 ::= inmmemory_clause | $empty

    opt_1640 ::= ilm_clause | $empty

    opt_1641 ::= storage_clause | $empty

    grp_1643 ::= OLTP | QUERY low_high | ARCHIVE low_high

    grp_1642 ::= COMPRESS FOR grp_1643 | NOCOMPRESS

    grp_1644 ::= COMPRESS ADVANCED low_high | NOCOMPRESS

    opt_1645 ::= inmemory_attributes | $empty

    seq_1648 ::= COMMA column_name

    list_1649 ::= $empty | list_1649 seq_1648

    seq_1650 ::= COMMA column_name USING policy_name

    list_1651 ::= $empty | list_1651 seq_1650

    grp_1647 ::= column_name list_1649 | column_name USING policy_name list_1651

    grp_1646 ::= TEXT grp_1647

    opt_1652 ::= grp_1646 | $empty

    opt_1653 ::= COMMA | $empty

    seq_1654 ::= opt_1653 datafile_tempfile_spec

    opt_1655 ::= COMMA | $empty

    seq_1656 ::= opt_1655 datafile_tempfile_spec

    opt_1657 ::= CHAR_STRING | $empty

    seq_1658 ::= SIZE size_clause

    opt_1659 ::= seq_1658 | $empty

    opt_1660 ::= REUSE | $empty

    opt_1661 ::= autoextend_clause | $empty

    seq_1663 ::= COMMA filename

    list_1664 ::= $empty | list_1664 seq_1663

    grp_1662 ::= filename | LPAREN filename list_1664 RPAREN

    seq_1665 ::= SIZE size_clause

    opt_1666 ::= seq_1665 | $empty

    seq_1667 ::= BLOCKSIZE size_clause

    opt_1668 ::= seq_1667 | $empty

    opt_1669 ::= REUSE | $empty

    seq_1671 ::= NEXT size_clause

    opt_1672 ::= seq_1671 | $empty

    opt_1673 ::= maxsize_clause | $empty

    grp_1670 ::= OFF | ON opt_1672 opt_1673

    grp_1674 ::= UNLIMITED | size_clause

    grp_1675 ::= IMMEDIATE | DEFERRED

    opt_1677 ::= parallel_instances_clause | $empty

    opt_1678 ::= parallel_instances_clause | $empty

    grp_1676 ::= UNSIGNED_INTEGER opt_1677 | LPAREN DEGREE UNSIGNED_INTEGER opt_1678 RPAREN

    opt_1679 ::= grp_1676 | $empty

    grp_1680 ::= UNSIGNED_INTEGER | DEFAULT

    seq_1682 ::= COMMA lob_storage_clause

    list_1683 ::= $empty | list_1683 seq_1682

    seq_1684 ::= COMMA modify_lob_storage_clause

    list_1685 ::= $empty | list_1685 seq_1684

    grp_1681 ::= physical_attributes_clause | modify_mv_column_clause | table_compression | lob_storage_clause list_1683 | modify_lob_storage_clause list_1685 | parallel_clause | logging_clause | allocate_extent_clause | deallocate_unused_clause | shrink_clause | cache_or_nocache

    opt_1686 ::= grp_1681 | $empty

    opt_1687 ::= alter_iot_clauses | $empty

    seq_1688 ::= USING INDEX physical_attributes_clause

    opt_1689 ::= seq_1688 | $empty

    opt_1690 ::= alter_mv_option1 | $empty

    grp_1691 ::= enable_or_disable QUERY REWRITE | COMPILE | CONSIDER FRESH

    opt_1692 ::= grp_1691 | $empty

    grp_1694 ::= DEMAND | COMMIT

    opt_1695 ::= DEFAULT | $empty

    opt_1696 ::= rollback_segment | $empty

    grp_1697 ::= ENFORCED | TRUSTED

    grp_1693 ::= FAST | COMPLETE | FORCE | ON grp_1694 | START WITH expression | NEXT expression | WITH PRIMARY KEY | USING opt_1695 MASTER ROLLBACK SEGMENT opt_1696 | USING grp_1697 CONSTRAINTS

    list_1698 ::= grp_1693 | list_1698 grp_1693

    grp_1699 ::= ENCRYPT encryption_spec | DECRYPT

    opt_1700 ::= grp_1699 | $empty

    opt_1701 ::= FORCE | $empty

    grp_1702 ::= physical_attributes_clause | add_mv_log_column_clause | parallel_clause | logging_clause | allocate_extent_clause | shrink_clause | move_mv_log_clause | cache_or_nocache

    opt_1703 ::= grp_1702 | $empty

    opt_1704 ::= mv_log_augmentation | $empty

    opt_1705 ::= mv_log_purge_clause | $empty

    opt_1706 ::= parallel_clause | $empty

    grp_1708 ::= OBJECT ID | PRIMARY KEY | ROWID | SEQUENCE

    seq_1709 ::= COMMA column_name

    list_1710 ::= $empty | list_1710 seq_1709

    seq_1711 ::= LPAREN column_name list_1710 RPAREN

    opt_1712 ::= seq_1711 | $empty

    seq_1713 ::= COMMA column_name

    list_1714 ::= $empty | list_1714 seq_1713

    grp_1707 ::= grp_1708 opt_1712 | LPAREN column_name list_1714 RPAREN

    opt_1715 ::= new_values_clause | $empty

    grp_1718 ::= CACHE | NOCACHE

    grp_1717 ::= physical_attributes_clause | TABLESPACE id_expression | logging_clause | grp_1718

    list_1719 ::= grp_1717 | list_1719 grp_1717

    grp_1716 ::= list_1719

    opt_1720 ::= grp_1716 | $empty

    opt_1721 ::= parallel_clause | $empty

    opt_1724 ::= COMMA | $empty

    grp_1725 ::= OBJECT ID | PRIMARY KEY | ROWID | SEQUENCE | COMMIT SCN

    grp_1723 ::= opt_1724 grp_1725

    list_1726 ::= $empty | list_1726 grp_1723

    opt_1727 ::= COMMA | $empty

    seq_1728 ::= opt_1727 regular_id

    list_1729 ::= seq_1728 | list_1729 seq_1728

    opt_1730 ::= new_values_clause | $empty

    seq_1731 ::= LPAREN list_1729 RPAREN opt_1730

    opt_1732 ::= seq_1731 | $empty

    opt_1733 ::= mv_log_purge_clause | $empty

    grp_1722 ::= WITH list_1726 opt_1732 opt_1733

    list_1734 ::= $empty | list_1734 grp_1722

    grp_1735 ::= INCLUDING | EXCLUDING

    grp_1737 ::= SYNCHRONOUS | ASYNCHRONOUS

    opt_1738 ::= grp_1737 | $empty

    grp_1736 ::= IMMEDIATE opt_1738

    seq_1739 ::= LEFT_PAREN column_list RIGHT_PAREN

    opt_1740 ::= seq_1739 | $empty

    opt_1741 ::= zonemap_attributes | $empty

    opt_1742 ::= zonemap_refresh_clause | $empty

    grp_1744 ::= ENABLE | DISABLE

    grp_1743 ::= grp_1744 PRUNING

    opt_1745 ::= grp_1743 | $empty

    grp_1746 ::= create_zonemap_on_table | create_zonemap_as_subquery

    grp_1748 ::= ENABLE | DISABLE

    grp_1747 ::= zonemap_attributes | zonemap_refresh_clause | grp_1748 PRUNING | COMPILE | REBUILD | UNUSABLE

    grp_1749 ::= FAST | COMPILE | FORCE

    opt_1750 ::= grp_1749 | $empty

    grp_1752 ::= DEMAND | COMMIT | LOAD | DATA MOVEMENT | LOAD DATA MOVEMENT

    grp_1751 ::= ON grp_1752

    opt_1753 ::= grp_1751 | $empty

    grp_1755 ::= CACHE | NOCACHE

    grp_1754 ::= PCTFREE numeric | PCTUSED numeric | SCALE numeric | TABLESPACE tablespace | grp_1755

    list_1756 ::= grp_1754 | list_1756 grp_1754

    seq_1757 ::= DOT id_expression

    opt_1758 ::= seq_1757 | $empty

    seq_1759 ::= DOT id_expression

    opt_1760 ::= seq_1759 | $empty

    seq_1761 ::= DOT id_expression

    list_1762 ::= $empty | list_1762 seq_1761

    grp_1763 ::= add_binding_clause | drop_binding_clause | COMPILE

    opt_1764 ::= FORCE | $empty

    seq_1765 ::= OR REPLACE

    opt_1766 ::= seq_1765 | $empty

    seq_1767 ::= COMMA binding_clause

    list_1768 ::= $empty | list_1768 seq_1767

    grp_1770 ::= METADATA | NONE

    grp_1769 ::= SHARING EQ grp_1770

    opt_1771 ::= grp_1769 | $empty

    seq_1772 ::= COMMA datatype

    list_1773 ::= $empty | list_1773 seq_1772

    opt_1774 ::= LEFT_PAREN | $empty

    opt_1775 ::= RIGHT_PAREN | $empty

    opt_1776 ::= implementation_clause | $empty

    seq_1777 ::= COMMA primary_operator_item

    list_1778 ::= $empty | list_1778 seq_1777

    seq_1779 ::= COMMA datatype

    list_1780 ::= $empty | list_1780 seq_1779

    seq_1781 ::= COMPUTE ANCILLARY DATA

    opt_1782 ::= seq_1781 | $empty

    seq_1783 ::= WITH COLUMN CONTEXT

    opt_1784 ::= seq_1783 | $empty

    seq_1785 ::= COMMA datatype

    list_1786 ::= $empty | list_1786 seq_1785

    opt_1787 ::= FORCE | $empty

    seq_1788 ::= IF NOT EXISTS

    opt_1789 ::= seq_1788 | $empty

    seq_1790 ::= OF type_name

    opt_1791 ::= seq_1790 | $empty

    grp_1793 ::= scoped_table_ref_constraint | mv_column_alias

    grp_1795 ::= scoped_table_ref_constraint | mv_column_alias

    grp_1794 ::= COMMA grp_1795

    list_1796 ::= $empty | list_1796 grp_1794

    grp_1792 ::= LPAREN grp_1793 list_1796 RPAREN

    opt_1797 ::= grp_1792 | $empty

    grp_1800 ::= WITH | WITHOUT

    grp_1799 ::= grp_1800 REDUCED PRECISION

    opt_1801 ::= grp_1799 | $empty

    opt_1802 ::= physical_properties | $empty

    grp_1803 ::= CACHE | NOCACHE

    opt_1804 ::= grp_1803 | $empty

    opt_1805 ::= parallel_clause | $empty

    opt_1806 ::= build_clause | $empty

    grp_1798 ::= ON PREBUILT TABLE opt_1801 | opt_1802 opt_1804 opt_1805 opt_1806

    grp_1809 ::= physical_attributes_clause | TABLESPACE id_expression

    list_1810 ::= grp_1809 | list_1810 grp_1809

    grp_1808 ::= list_1810

    list_1811 ::= $empty | list_1811 grp_1808

    grp_1807 ::= USING INDEX list_1811 | USING NO INDEX

    opt_1812 ::= grp_1807 | $empty

    opt_1813 ::= create_mv_refresh | $empty

    opt_1814 ::= evaluation_edition_clause | $empty

    grp_1816 ::= ENABLE | DISABLE

    grp_1815 ::= grp_1816 ON QUERY COMPUTATION

    opt_1817 ::= grp_1815 | $empty

    opt_1818 ::= query_rewrite_clause | $empty

    grp_1820 ::= ENABLE | DISABLE

    grp_1819 ::= grp_1820 CONCURRENT REFRESH

    opt_1821 ::= grp_1819 | $empty

    opt_1822 ::= annotations_clause | $empty

    seq_1823 ::= schema_name DOT

    opt_1824 ::= seq_1823 | $empty

    grp_1825 ::= identifier | quoted_string

    seq_1826 ::= ENCRYPT encryption_spec

    opt_1827 ::= seq_1826 | $empty

    grp_1828 ::= annotations_clause | scoped_table_ref_constraint

    opt_1829 ::= grp_1828 | $empty

    grp_1832 ::= FAST | COMPLETE | FORCE

    grp_1833 ::= DEMAND | COMMIT | STATEMENT

    grp_1834 ::= START WITH | NEXT

    grp_1835 ::= PRIMARY KEY | ROWID

    grp_1837 ::= MASTER | LOCAL

    opt_1838 ::= grp_1837 | $empty

    grp_1839 ::= MASTER | LOCAL

    opt_1840 ::= grp_1839 | $empty

    grp_1836 ::= DEFAULT opt_1838 ROLLBACK SEGMENT | opt_1840 ROLLBACK SEGMENT rollback_segment_name

    grp_1841 ::= ENFORCED | TRUSTED

    grp_1831 ::= grp_1832 | ON grp_1833 | grp_1834 expression | WITH grp_1835 | USING grp_1836 | USING grp_1841 CONSTRAINTS

    list_1842 ::= grp_1831 | list_1842 grp_1831

    grp_1830 ::= NEVER REFRESH | REFRESH list_1842

    grp_1843 ::= ENABLE | DISABLE

    opt_1844 ::= unusable_editions_clause | $empty

    grp_1846 ::= BEFORE | BEGINNING WITH

    grp_1847 ::= BEFORE | BEGINNING WITH

    grp_1845 ::= grp_1846 CURRENT EDITION | grp_1847 EDITION edition_name | BEGINNING WITH NULL_ EDITION

    seq_1848 ::= PRESERVE TABLE

    opt_1849 ::= seq_1848 | $empty

    seq_1850 ::= IF EXISTS

    opt_1851 ::= seq_1850 | $empty

    seq_1852 ::= OR REPLACE

    opt_1853 ::= seq_1852 | $empty

    seq_1854 ::= schema_object_name DOT

    opt_1855 ::= seq_1854 | $empty

    grp_1857 ::= EXTERNALLY | GLOBALLY

    grp_1856 ::= INITIALIZED grp_1857 | ACCESSED GLOBALLY

    opt_1858 ::= grp_1856 | $empty

    opt_1859 ::= SORT | $empty

    opt_1860 ::= SORT | $empty

    seq_1861 ::= COMMA column_name datatype opt_1860

    list_1862 ::= $empty | list_1862 seq_1861

    seq_1864 ::= SINGLE TABLE

    opt_1865 ::= seq_1864 | $empty

    seq_1866 ::= HASH IS expression

    opt_1867 ::= seq_1866 | $empty

    grp_1863 ::= physical_attributes_clause | SIZE size_clause | TABLESPACE tablespace | INDEX | opt_1865 HASHKEYS UNSIGNED_INTEGER opt_1867

    list_1868 ::= $empty | list_1868 grp_1863

    opt_1869 ::= parallel_clause | $empty

    grp_1870 ::= ROWDEPENDENCIES | NOROWDEPENDENCIES

    opt_1871 ::= grp_1870 | $empty

    grp_1872 ::= CACHE | NOCACHE

    opt_1873 ::= grp_1872 | $empty

    opt_1874 ::= MANDATORY | $empty

    grp_1875 ::= resource_parameters | password_parameters

    list_1876 ::= grp_1875 | list_1876 grp_1875

    opt_1877 ::= container_clause | $empty

    grp_1878 ::= SESSIONS_PER_USER | CPU_PER_SESSION | CPU_PER_CALL | CONNECT_TIME | IDLE_TIME | LOGICAL_READS_PER_SESSION | LOGICAL_READS_PER_CALL | COMPOSITE_LIMIT

    grp_1879 ::= UNSIGNED_INTEGER | UNLIMITED | DEFAULT

    grp_1880 ::= size_clause | UNLIMITED | DEFAULT

    grp_1881 ::= FAILED_LOGIN_ATTEMPTS | PASSWORD_LIFE_TIME | PASSWORD_REUSE_TIME | PASSWORD_REUSE_MAX | PASSWORD_LOCK_TIME | PASSWORD_GRACE_TIME | INACTIVE_ACCOUNT_TIME

    grp_1882 ::= expression | UNLIMITED | DEFAULT

    grp_1883 ::= function_name | NULL_ | DEFAULT

    grp_1884 ::= expression | DEFAULT

    grp_1885 ::= static_base_profile | dynamic_base_profile

    opt_1886 ::= grp_1885 | $empty

    seq_1887 ::= OR REPLACE

    opt_1888 ::= seq_1887 | $empty

    grp_1889 ::= PUBLIC | PRIVATE

    opt_1890 ::= grp_1889 | $empty

    opt_1891 ::= id_expression | $empty

    grp_1893 ::= PUBLIC | PRIVATE

    opt_1894 ::= grp_1893 | $empty

    grp_1892 ::= FROM opt_1894 id_expression

    opt_1895 ::= grp_1892 | $empty

    seq_1896 ::= FOR CATEGORY id_expression

    opt_1897 ::= seq_1896 | $empty

    seq_1898 ::= ON statement

    opt_1899 ::= seq_1898 | $empty

    opt_1900 ::= CLEAN | $empty

    seq_1901 ::= FOR PLUGGABLE DATABASE id_expression

    opt_1902 ::= seq_1901 | $empty

    grp_1904 ::= TIMESTAMP | SCN

    grp_1903 ::= AS OF grp_1904 expression

    opt_1905 ::= grp_1903 | $empty

    grp_1906 ::= PRESERVE | GUARANTEE FLASHBACK DATABASE

    opt_1907 ::= grp_1906 | $empty

    opt_1908 ::= role_identified_clause | $empty

    opt_1909 ::= container_clause | $empty

    grp_1911 ::= GLOBAL | PRIVATE

    opt_1912 ::= IMMUTABLE | $empty

    grp_1910 ::= grp_1911 TEMPORARY | SHARDED | DUPLICATED | opt_1912 BLOCKCHAIN | IMMUTABLE

    opt_1913 ::= grp_1910 | $empty

    seq_1914 ::= schema_name DOT

    opt_1915 ::= seq_1914 | $empty

    seq_1916 ::= IF NOT EXISTS

    opt_1917 ::= seq_1916 | $empty

    opt_1920 ::= EXTENDED | $empty

    grp_1919 ::= METADATA | opt_1920 DATA | NONE

    grp_1918 ::= SHARING EQ grp_1919

    opt_1921 ::= grp_1918 | $empty

    grp_1922 ::= relational_table | xmltype_table | object_table

    opt_1923 ::= memoptimize_read_write_clause | $empty

    seq_1924 ::= PARENT tableview_name

    opt_1925 ::= seq_1924 | $empty

    seq_1926 ::= USAGE QUEUE

    opt_1927 ::= seq_1926 | $empty

    seq_1928 ::= LPAREN object_properties RPAREN

    opt_1929 ::= seq_1928 | $empty

    seq_1930 ::= XMLTYPE xmltype_storage

    opt_1931 ::= seq_1930 | $empty

    opt_1932 ::= xmlschema_spec | $empty

    opt_1933 ::= xmltype_virtual_columns | $empty

    grp_1935 ::= DELETE | PRESERVE

    grp_1934 ::= ON COMMIT grp_1935 ROWS

    opt_1936 ::= grp_1934 | $empty

    opt_1937 ::= oid_clause | $empty

    opt_1938 ::= oid_index_clause | $empty

    opt_1939 ::= physical_properties | $empty

    opt_1940 ::= table_properties | $empty

    seq_1941 ::= COMMA column_name AS LPAREN expression RPAREN

    list_1942 ::= $empty | list_1942 seq_1941

    opt_1943 ::= COLUMN | $empty

    opt_1944 ::= xmltype_storage | $empty

    opt_1945 ::= xmlschema_spec | $empty

    grp_1947 ::= SECUREFILE | BASICFILE

    opt_1948 ::= grp_1947 | $empty

    grp_1949 ::= CLOB | BINARY XML

    seq_1951 ::= LPAREN lob_parameters RPAREN

    opt_1952 ::= seq_1951 | $empty

    grp_1950 ::= lob_segname opt_1952 | LPAREN lob_parameters RPAREN

    opt_1953 ::= grp_1950 | $empty

    grp_1946 ::= OBJECT RELATIONAL | opt_1948 grp_1949 opt_1953

    grp_1954 ::= LOBS | TABLES

    seq_1955 ::= XMLSCHEMA DELIMITED_ID

    opt_1956 ::= seq_1955 | $empty

    seq_1957 ::= allow_or_disallow NONSCHEMA

    opt_1958 ::= seq_1957 | $empty

    seq_1959 ::= allow_or_disallow ANYSCHEMA

    opt_1960 ::= seq_1959 | $empty

    seq_1961 ::= schema_name DOT

    opt_1962 ::= seq_1961 | $empty

    opt_1963 ::= object_table_substitution | $empty

    seq_1964 ::= COMMA object_properties

    list_1965 ::= $empty | list_1965 seq_1964

    seq_1966 ::= LPAREN object_properties list_1965 RPAREN

    opt_1967 ::= seq_1966 | $empty

    grp_1969 ::= DELETE | PRESERVE

    grp_1968 ::= ON COMMIT grp_1969 ROWS

    opt_1970 ::= grp_1968 | $empty

    opt_1971 ::= oid_clause | $empty

    opt_1972 ::= oid_index_clause | $empty

    opt_1973 ::= physical_properties | $empty

    opt_1974 ::= table_properties | $empty

    opt_1975 ::= index_name | $empty

    grp_1976 ::= physical_attributes_clause | TABLESPACE tablespace

    list_1977 ::= grp_1976 | list_1977 grp_1976

    grp_1978 ::= SYSTEM GENERATED | PRIMARY KEY

    grp_1979 ::= column_name | attribute_name

    seq_1980 ::= DEFAULT expression

    opt_1981 ::= seq_1980 | $empty

    seq_1983 ::= COMMA inline_constraint

    list_1984 ::= $empty | list_1984 seq_1983

    grp_1982 ::= inline_constraint list_1984 | inline_ref_constraint

    opt_1985 ::= grp_1982 | $empty

    opt_1986 ::= NOT | $empty

    seq_1987 ::= COMMA relational_property

    list_1988 ::= $empty | list_1988 seq_1987

    seq_1989 ::= LPAREN relational_property list_1988 RPAREN

    opt_1990 ::= seq_1989 | $empty

    opt_1991 ::= relational_table_properties | $empty

    list_1992 ::= relational_table_property | list_1992 relational_table_property

    grp_1994 ::= DROP | PRESERVE

    grp_1995 ::= DELETE | PRESERVE

    grp_1993 ::= grp_1994 DEFINITION | grp_1995 ROWS

    seq_1996 ::= UNTIL numeric DAYS IDLE

    opt_1997 ::= seq_1996 | $empty

    opt_1999 ::= LOCKED | $empty

    opt_2000 ::= LOCKED | $empty

    grp_1998 ::= opt_1999 | UNTIL numeric DAYS AFTER INSERT opt_2000

    seq_2001 ::= UNTIL numeric DAYS IDLE

    opt_2002 ::= seq_2001 | $empty

    opt_2004 ::= LOCKED | $empty

    opt_2005 ::= LOCKED | $empty

    grp_2003 ::= opt_2004 | UNTIL numeric DAYS AFTER INSERT opt_2005

    grp_2006 ::= CACHE | NOCACHE

    grp_2007 ::= ROWDEPENDENCIES | NOROWDEPENDENCIES

    seq_2008 ::= schema_name DOT

    opt_2009 ::= seq_2008 | $empty

    grp_2010 ::= ONLY | WRITE

    grp_2011 ::= ON | OFF

    opt_2012 ::= clustering_join | $empty

    opt_2013 ::= yes_no | $empty

    seq_2014 ::= opt_2013 ON LOAD

    opt_2015 ::= seq_2014 | $empty

    opt_2016 ::= yes_no | $empty

    seq_2017 ::= opt_2016 ON DATA MOVEMENT

    opt_2018 ::= seq_2017 | $empty

    opt_2019 ::= zonemap_clause | $empty

    seq_2020 ::= schema_name DOT

    opt_2021 ::= seq_2020 | $empty

    seq_2022 ::= COMMA clustering_join_item

    list_2023 ::= $empty | list_2023 seq_2022

    seq_2024 ::= schema_name DOT

    opt_2025 ::= seq_2024 | $empty

    grp_2026 ::= LINEAR | INTERLEAVED

    opt_2027 ::= grp_2026 | $empty

    seq_2028 ::= COMMA clustering_column_group

    list_2029 ::= $empty | list_2029 seq_2028

    seq_2030 ::= COMMA column_name

    list_2031 ::= $empty | list_2031 seq_2030

    seq_2032 ::= LPAREN zonemap_name RPAREN

    opt_2033 ::= seq_2032 | $empty

    grp_2035 ::= ALL | ALLOW NOVALIDATE

    opt_2036 ::= NO | $empty

    grp_2034 ::= grp_2035 KEYS | opt_2036 PARTIAL JSON

    opt_2037 ::= grp_2034 | $empty

    seq_2038 ::= COMMA column_name

    list_2039 ::= $empty | list_2039 seq_2038

    seq_2040 ::= COMMA tablespace

    list_2041 ::= $empty | list_2041 seq_2040

    seq_2042 ::= STORE IN LPAREN tablespace list_2041 RPAREN

    opt_2043 ::= seq_2042 | $empty

    seq_2044 ::= INTERVAL LPAREN expression RPAREN opt_2043

    opt_2045 ::= seq_2044 | $empty

    opt_2046 ::= partition_name | $empty

    opt_2047 ::= partition_name | $empty

    seq_2048 ::= COMMA PARTITION opt_2047 range_values_clause table_partition_description

    list_2049 ::= $empty | list_2049 seq_2048

    seq_2050 ::= COMMA tablespace

    list_2051 ::= $empty | list_2051 seq_2050

    seq_2052 ::= STORE IN LPAREN tablespace list_2051 RPAREN

    opt_2053 ::= seq_2052 | $empty

    seq_2054 ::= AUTOMATIC opt_2053

    opt_2055 ::= seq_2054 | $empty

    opt_2056 ::= partition_name | $empty

    opt_2057 ::= partition_name | $empty

    seq_2058 ::= COMMA PARTITION opt_2057 list_values_clause table_partition_description

    list_2059 ::= $empty | list_2059 seq_2058

    seq_2060 ::= LPAREN PARTITION opt_2056 list_values_clause table_partition_description list_2059 RPAREN

    opt_2061 ::= seq_2060 | $empty

    seq_2062 ::= COMMA column_name

    list_2063 ::= $empty | list_2063 seq_2062

    grp_2064 ::= individual_hash_partitions | hash_partitions_by_quantity

    opt_2065 ::= partition_name | $empty

    opt_2066 ::= partitioning_storage_clause | $empty

    opt_2067 ::= partition_name | $empty

    opt_2068 ::= partitioning_storage_clause | $empty

    seq_2069 ::= COMMA PARTITION opt_2067 opt_2068

    list_2070 ::= $empty | list_2070 seq_2069

    seq_2071 ::= COMMA tablespace

    list_2072 ::= $empty | list_2072 seq_2071

    seq_2073 ::= STORE IN LPAREN tablespace list_2072 RPAREN

    opt_2074 ::= seq_2073 | $empty

    grp_2075 ::= table_compression | key_compression

    opt_2076 ::= grp_2075 | $empty

    seq_2077 ::= COMMA tablespace

    list_2078 ::= $empty | list_2078 seq_2077

    seq_2079 ::= OVERFLOW_ STORE IN LPAREN tablespace list_2078 RPAREN

    opt_2080 ::= seq_2079 | $empty

    seq_2081 ::= COMMA column_name

    list_2082 ::= $empty | list_2082 seq_2081

    seq_2083 ::= COMMA tablespace

    list_2084 ::= $empty | list_2084 seq_2083

    seq_2085 ::= STORE IN LPAREN tablespace list_2084 RPAREN

    opt_2086 ::= seq_2085 | $empty

    seq_2087 ::= INTERVAL LPAREN expression RPAREN opt_2086

    opt_2088 ::= seq_2087 | $empty

    grp_2089 ::= subpartition_by_range | subpartition_by_list | subpartition_by_hash

    seq_2090 ::= COMMA range_partition_desc

    list_2091 ::= $empty | list_2091 seq_2090

    grp_2092 ::= subpartition_by_range | subpartition_by_list | subpartition_by_hash

    seq_2093 ::= COMMA list_partition_desc

    list_2094 ::= $empty | list_2094 seq_2093

    seq_2095 ::= COMMA column_name

    list_2096 ::= seq_2095 | list_2096 seq_2095

    grp_2097 ::= subpartition_by_range | subpartition_by_list | subpartition_by_hash

    grp_2098 ::= individual_hash_partitions | hash_partitions_by_quantity

    seq_2099 ::= COMMA reference_partition_desc

    list_2100 ::= $empty | list_2100 seq_2099

    seq_2101 ::= LPAREN reference_partition_desc list_2100 RPAREN

    opt_2102 ::= seq_2101 | $empty

    opt_2103 ::= partition_name | $empty

    seq_2105 ::= COMMA reference_partition_desc

    list_2106 ::= $empty | list_2106 seq_2105

    grp_2104 ::= PARTITIONS UNSIGNED_INTEGER | reference_partition_desc list_2106

    opt_2107 ::= grp_2104 | $empty

    opt_2108 ::= partition_name | $empty

    opt_2109 ::= range_values_clause | $empty

    seq_2113 ::= COMMA range_subpartition_desc

    list_2114 ::= $empty | list_2114 seq_2113

    seq_2115 ::= COMMA list_subpartition_desc

    list_2116 ::= $empty | list_2116 seq_2115

    seq_2117 ::= COMMA individual_hash_subparts

    list_2118 ::= $empty | list_2118 seq_2117

    grp_2112 ::= range_subpartition_desc list_2114 | list_subpartition_desc list_2116 | individual_hash_subparts list_2118

    grp_2111 ::= LPAREN grp_2112 RPAREN | hash_subparts_by_quantity

    grp_2110 ::= grp_2111

    opt_2119 ::= grp_2110 | $empty

    opt_2120 ::= partition_name | $empty

    opt_2121 ::= list_values_clause | $empty

    seq_2125 ::= COMMA range_subpartition_desc

    list_2126 ::= $empty | list_2126 seq_2125

    seq_2127 ::= COMMA list_subpartition_desc

    list_2128 ::= $empty | list_2128 seq_2127

    seq_2129 ::= COMMA individual_hash_subparts

    list_2130 ::= $empty | list_2130 seq_2129

    grp_2124 ::= range_subpartition_desc list_2126 | list_subpartition_desc list_2128 | individual_hash_subparts list_2130

    grp_2123 ::= LPAREN grp_2124 RPAREN | hash_subparts_by_quantity

    grp_2122 ::= grp_2123

    opt_2131 ::= grp_2122 | $empty

    seq_2135 ::= COMMA range_subpartition_desc

    list_2136 ::= $empty | list_2136 seq_2135

    seq_2137 ::= COMMA list_subpartition_desc

    list_2138 ::= $empty | list_2138 seq_2137

    seq_2139 ::= COMMA individual_hash_subparts

    list_2140 ::= $empty | list_2140 seq_2139

    grp_2134 ::= range_subpartition_desc list_2136 | list_subpartition_desc list_2138 | individual_hash_subparts list_2140

    grp_2133 ::= LPAREN grp_2134 RPAREN | hash_subpartition_quantity

    grp_2132 ::= grp_2133

    seq_2141 ::= COMMA column_name

    list_2142 ::= $empty | list_2142 seq_2141

    opt_2143 ::= subpartition_template | $empty

    opt_2144 ::= subpartition_template | $empty

    seq_2145 ::= COMMA column_name

    list_2146 ::= $empty | list_2146 seq_2145

    seq_2148 ::= COMMA tablespace

    list_2149 ::= $empty | list_2149 seq_2148

    seq_2150 ::= STORE IN LPAREN tablespace list_2149 RPAREN

    opt_2151 ::= seq_2150 | $empty

    grp_2147 ::= SUBPARTITIONS UNSIGNED_INTEGER opt_2151 | subpartition_template

    opt_2152 ::= grp_2147 | $empty

    opt_2153 ::= subpartition_name | $empty

    opt_2154 ::= partitioning_storage_clause | $empty

    opt_2155 ::= subpartition_name | $empty

    opt_2156 ::= partitioning_storage_clause | $empty

    opt_2157 ::= subpartition_name | $empty

    opt_2158 ::= partitioning_storage_clause | $empty

    seq_2159 ::= COMMA tablespace

    list_2160 ::= $empty | list_2160 seq_2159

    seq_2161 ::= STORE IN LPAREN tablespace list_2160 RPAREN

    opt_2162 ::= seq_2161 | $empty

    seq_2163 ::= COMMA literal

    list_2164 ::= $empty | list_2164 seq_2163

    seq_2165 ::= COMMA TIMESTAMP literal

    list_2166 ::= $empty | list_2166 seq_2165

    seq_2168 ::= COMMA literal

    list_2169 ::= $empty | list_2169 seq_2168

    seq_2170 ::= COMMA TIMESTAMP literal

    list_2171 ::= $empty | list_2171 seq_2170

    grp_2167 ::= literal list_2169 | TIMESTAMP literal list_2171 | DEFAULT

    grp_2172 ::= INTERNAL | EXTERNAL

    opt_2173 ::= grp_2172 | $empty

    opt_2174 ::= deferred_segment_creation | $empty

    opt_2175 ::= read_only_clause | $empty

    opt_2176 ::= indexing_clause | $empty

    opt_2177 ::= segment_attributes_clause | $empty

    grp_2178 ::= table_compression | key_compression

    opt_2179 ::= grp_2178 | $empty

    opt_2180 ::= inmemory_table_clause | $empty

    opt_2181 ::= ilm_clause | $empty

    opt_2182 ::= segment_attributes_clause | $empty

    seq_2183 ::= OVERFLOW_ opt_2182

    opt_2184 ::= seq_2183 | $empty

    grp_2185 ::= lob_storage_clause | varray_col_properties | nested_table_col_properties

    list_2186 ::= $empty | list_2186 grp_2185

    seq_2188 ::= TABLESPACE tablespace

    opt_2189 ::= seq_2188 | $empty

    grp_2190 ::= BASICFILE | SECUREFILE

    opt_2191 ::= grp_2190 | $empty

    grp_2187 ::= TABLESPACE tablespace | OVERFLOW_ opt_2189 | table_compression | key_compression | inmemory_table_clause | lob_partitioning_storage | VARRAY varray_item STORE AS opt_2191 LOB lob_segname

    list_2192 ::= grp_2187 | list_2192 grp_2187

    grp_2193 ::= BASICFILE | SECUREFILE

    opt_2194 ::= grp_2193 | $empty

    seq_2196 ::= LPAREN TABLESPACE tablespace RPAREN

    opt_2197 ::= seq_2196 | $empty

    grp_2195 ::= lob_segname opt_2197 | LPAREN TABLESPACE tablespace RPAREN

    grp_2198 ::= K_LETTER | M_LETTER | G_LETTER | T_LETTER | P_LETTER | E_LETTER

    opt_2199 ::= grp_2198 | $empty

    grp_2202 ::= QUERY | ARCHIVE

    grp_2203 ::= LOW | HIGH

    opt_2204 ::= grp_2203 | $empty

    grp_2201 ::= OLTP | grp_2202 opt_2204 | ALL OPERATIONS | DIRECT_LOAD OPERATIONS

    grp_2200 ::= BASIC | FOR grp_2201

    opt_2205 ::= grp_2200 | $empty

    grp_2206 ::= BASIC | ADVANCED

    opt_2207 ::= grp_2206 | $empty

    grp_2209 ::= QUERY | ARCHIVE

    grp_2210 ::= LOW | HIGH

    opt_2211 ::= grp_2210 | $empty

    grp_2208 ::= FOR grp_2209 opt_2211

    opt_2212 ::= grp_2208 | $empty

    opt_2213 ::= NO | $empty

    seq_2214 ::= opt_2213 ROW LEVEL LOCKING

    opt_2215 ::= seq_2214 | $empty

    list_2216 ::= inmemory_column_clause | list_2216 inmemory_column_clause

    opt_2218 ::= inmemory_attributes | $empty

    grp_2217 ::= INMEMORY opt_2218 | NO INMEMORY

    list_2219 ::= $empty | list_2219 inmemory_column_clause

    grp_2220 ::= inmemory_memcompress | inmemory_priority | inmemory_distribute | inmemory_duplicate

    list_2221 ::= grp_2220 | list_2221 grp_2220

    grp_2223 ::= QUERY | CAPACITY

    grp_2224 ::= LOW | HIGH

    opt_2225 ::= grp_2224 | $empty

    grp_2222 ::= DML | grp_2223 opt_2225

    grp_2226 ::= NONE | LOW | MEDIUM | HIGH | CRITICAL

    grp_2228 ::= ROWID RANGE | PARTITION | SUBPARTITION

    grp_2227 ::= AUTO | BY grp_2228

    opt_2229 ::= grp_2227 | $empty

    grp_2231 ::= DEFAULT | ALL | identifier | NONE

    grp_2230 ::= FOR SERVICE grp_2231

    opt_2232 ::= grp_2230 | $empty

    opt_2233 ::= ALL | $empty

    opt_2235 ::= inmemory_memcompress | $empty

    grp_2234 ::= INMEMORY opt_2235 | NO INMEMORY

    grp_2236 ::= PCTFREE UNSIGNED_INTEGER | PCTUSED UNSIGNED_INTEGER | INITRANS UNSIGNED_INTEGER | MAXTRANS UNSIGNED_INTEGER | storage_clause | compute_clauses

    list_2237 ::= grp_2236 | list_2237 grp_2236

    grp_2239 ::= UNSIGNED_INTEGER | UNLIMITED

    grp_2240 ::= UNSIGNED_INTEGER | UNLIMITED

    grp_2241 ::= size_clause | NULL_

    grp_2242 ::= KEEP | RECYCLE | DEFAULT

    grp_2243 ::= KEEP | NONE | DEFAULT

    grp_2244 ::= KEEP | NONE | DEFAULT

    grp_2238 ::= INITIAL size_clause | NEXT size_clause | MINEXTENTS grp_2239 | MAXEXTENTS grp_2240 | PCTINCREASE UNSIGNED_INTEGER | FREELISTS UNSIGNED_INTEGER | FREELIST GROUPS UNSIGNED_INTEGER | OPTIMAL grp_2241 | BUFFER_POOL grp_2242 | FLASH_CACHE grp_2243 | CELL_FLASH_CACHE grp_2244 | ENCRYPT

    list_2245 ::= grp_2238 | list_2245 grp_2238

    grp_2246 ::= IMMEDIATE | DEFERRED

    opt_2249 ::= SET | $empty

    grp_2248 ::= id_expression | opt_2249 identifier

    grp_2247 ::= physical_attributes_clause | TABLESPACE grp_2248 | table_compression | logging_clause

    list_2250 ::= grp_2247 | list_2250 grp_2247

    opt_2252 ::= segment_attributes_clause | $empty

    opt_2253 ::= segment_attributes_clause | $empty

    opt_2254 ::= index_org_table_clause | $empty

    grp_2251 ::= HEAP opt_2252 heap_org_table_clause | INDEX opt_2253 opt_2254 | EXTERNAL external_table_clause

    seq_2255 ::= REJECT LIMIT

    opt_2256 ::= seq_2255 | $empty

    seq_2257 ::= COMMA column_name

    list_2258 ::= $empty | list_2258 seq_2257

    grp_2260 ::= DELETE | ENABLE | DISABLE

    grp_2259 ::= ADD POLICY ilm_policy_clause | grp_2260 POLICY ilm_policy_clause | DELETE_ALL | ENABLE_ALL | DISABLE_ALL

    grp_2262 ::= ROW | COLUMN

    grp_2263 ::= ADVANCED | FOR QUERY

    grp_2261 ::= grp_2262 STORE COMPRESS grp_2263

    opt_2265 ::= segment_group | $empty

    seq_2266 ::= ON function_name

    opt_2267 ::= seq_2266 | $empty

    opt_2268 ::= segment_group | $empty

    grp_2264 ::= opt_2265 opt_2267 | READ ONLY opt_2268 ilm_after_on

    grp_2270 ::= ACCESS | MODIFICATION

    grp_2269 ::= NO grp_2270 | CREATION

    opt_2272 ::= inmemory_attributes | $empty

    grp_2271 ::= SET INMEMORY opt_2272 | MODIFY INMEMORY inmemory_memcompress | NO INMEMORY

    opt_2273 ::= SEGMENT | $empty

    grp_2274 ::= DAY | DAYS | MONTH | MONTHS | YEAR | YEARS

    opt_2275 ::= table_compression | $empty

    opt_2276 ::= inmemory_table_clause | $empty

    opt_2277 ::= ilm_clause | $empty

    seq_2278 ::= TYPE access_driver_type

    opt_2279 ::= seq_2278 | $empty

    opt_2280 ::= parallel_clause | $empty

    grp_2282 ::= numeric | UNLIMITED

    grp_2281 ::= REJECT LIMIT grp_2282

    opt_2283 ::= grp_2281 | $empty

    opt_2284 ::= inmemory_table_clause | $empty

    seq_2285 ::= DEFAULT DIRECTORY external_table_directory

    opt_2286 ::= seq_2285 | $empty

    list_2289 ::= external_table_data_format | list_2289 external_table_data_format

    grp_2288 ::= LPAREN CHAR_STRING RPAREN | LPAREN list_2289 RPAREN | USING CLOB select_only_statement

    grp_2287 ::= ACCESS PARAMETERS grp_2288

    opt_2290 ::= grp_2287 | $empty

    seq_2291 ::= COMMA external_table_directory

    list_2292 ::= $empty | list_2292 seq_2291

    seq_2293 ::= LOCATION LPAREN external_table_directory list_2292 RPAREN

    opt_2294 ::= seq_2293 | $empty

    seq_2295 ::= COMMA external_table_transform

    list_2296 ::= $empty | list_2296 seq_2295

    grp_2298 ::= CONCAT | LOBFILE

    grp_2299 ::= external_table_field | CONSTANT quoted_string

    seq_2301 ::= COMMA external_table_directory

    list_2302 ::= $empty | list_2302 seq_2301

    grp_2300 ::= FROM LPAREN external_table_directory list_2302 RPAREN | CLOB | BLOB | CHARACTERSET EQ char_set_name

    grp_2297 ::= NULL_ | CONSTANT quoted_string | grp_2298 grp_2299 | grp_2300 | STARTOF external_table_field_list LPAREN UNSIGNED_INTEGER RPAREN

    opt_2303 ::= type_name | $empty

    seq_2304 ::= NOT NULL_

    opt_2305 ::= seq_2304 | $empty

    opt_2306 ::= default_value_part | $empty

    seq_2307 ::= COMMA external_table_fields_clause

    list_2308 ::= $empty | list_2308 seq_2307

    grp_2309 ::= external_table_position_clause | external_table_datatype_clause | external_table_init_clause | external_table_lls_clause

    list_2310 ::= $empty | list_2310 grp_2309

    opt_2311 ::= POSITION | $empty

    opt_2313 ::= STAR | $empty

    grp_2314 ::= PLUS | MINUS

    opt_2315 ::= grp_2314 | $empty

    opt_2316 ::= UNSIGNED_INTEGER | $empty

    grp_2312 ::= opt_2313 opt_2315 opt_2316

    grp_2319 ::= PLUS | MINUS

    opt_2320 ::= grp_2319 | $empty

    grp_2318 ::= COLON opt_2320 UNSIGNED_INTEGER

    grp_2317 ::= BINDVAR | grp_2318

    opt_2321 ::= UNSIGNED | $empty

    opt_2322 ::= EXTERNAL | $empty

    opt_2323 ::= UNSIGNED_INTEGER | $empty

    opt_2324 ::= external_table_delimit_clause | $empty

    grp_2325 ::= DECIMAL | ZONED

    seq_2327 ::= COMMA UNSIGNED_INTEGER

    opt_2328 ::= seq_2327 | $empty

    seq_2329 ::= LPAREN UNSIGNED_INTEGER RPAREN

    opt_2330 ::= seq_2329 | $empty

    opt_2331 ::= external_table_delimit_clause | $empty

    grp_2326 ::= LPAREN UNSIGNED_INTEGER opt_2328 RPAREN | EXTERNAL opt_2330 opt_2331

    opt_2332 ::= COUNTED | $empty

    opt_2333 ::= EXTERNAL | $empty

    opt_2334 ::= UNSIGNED_INTEGER | $empty

    opt_2335 ::= external_table_delimit_clause | $empty

    opt_2336 ::= EXTERNAL | $empty

    opt_2337 ::= UNSIGNED_INTEGER | $empty

    opt_2338 ::= external_table_delimit_clause | $empty

    opt_2339 ::= UNSIGNED_INTEGER | $empty

    opt_2340 ::= EXTERNAL | $empty

    seq_2341 ::= LPAREN UNSIGNED_INTEGER RPAREN

    opt_2342 ::= seq_2341 | $empty

    opt_2343 ::= external_table_delimit_clause | $empty

    opt_2344 ::= external_table_trim_clause | $empty

    opt_2345 ::= external_table_date_format_clause | $empty

    grp_2346 ::= VARCHAR | VARRAW | VARCHARC | VARRAWC

    seq_2347 ::= UNSIGNED_INTEGER COMMA

    opt_2348 ::= seq_2347 | $empty

    seq_2349 ::= AND quoted_string

    opt_2350 ::= seq_2349 | $empty

    grp_2351 ::= quoted_string | WHITESPACE

    opt_2352 ::= OPTIONALLY | $empty

    seq_2353 ::= AND quoted_string

    opt_2354 ::= seq_2353 | $empty

    seq_2355 ::= opt_2352 ENCLOSED BY quoted_string opt_2354

    opt_2356 ::= seq_2355 | $empty

    opt_2357 ::= DATE_FORMAT | $empty

    opt_2359 ::= LOCAL | $empty

    seq_2360 ::= WITH opt_2359 TIME ZONE

    opt_2361 ::= seq_2360 | $empty

    grp_2362 ::= YEAR_TO_MONTH | DAY_TO_SECOND

    grp_2358 ::= DATE | TIMESTAMP opt_2361 MASK quoted_string | INTERVAL grp_2362

    grp_2363 ::= DEFAULTIF | NULLIF

    grp_2364 ::= field_spec | LPAREN UNSIGNED_INTEGER BINDVAR RPAREN

    grp_2365 ::= quoted_string | HEX_STRING_LIT | BLANKS

    grp_2366 ::= AND | OR

    opt_2369 ::= DETECTED | $empty

    grp_2368 ::= opt_2369 NEWLINE_ | quoted_string

    opt_2370 ::= LPAREN | $empty

    seq_2371 ::= COMMA id_expression

    list_2372 ::= $empty | list_2372 seq_2371

    opt_2373 ::= RPAREN | $empty

    grp_2367 ::= FIXED UNSIGNED_INTEGER | VARIABLE UNSIGNED_INTEGER | DELIMITED BY grp_2368 | XMLTAG opt_2370 id_expression list_2372 opt_2373

    list_2374 ::= $empty | list_2374 external_table_record_options_clause

    list_2375 ::= external_table_record_options_clause | list_2375 external_table_record_options_clause

    grp_2376 ::= LITTLE | BIG

    grp_2377 ::= CHECK | NOCHECK

    grp_2378 ::= BYTES | CHARACTERS

    opt_2379 ::= EQ | $empty

    grp_2380 ::= DIRECTIO | NODIRECTIO

    grp_2381 ::= DNFS_ENABLE | DNFS_DISABLE

    grp_2383 ::= NOBADFILE | NODISCARDFILE | NOLOGFILE

    grp_2384 ::= BADFILE | DISCARDFILE | LOGFILE

    opt_2385 ::= external_table_directory | $empty

    grp_2382 ::= grp_2383 | grp_2384 opt_2385 filename

    opt_2386 ::= IGNORE_CHARS_AFTER_EOR | $empty

    grp_2388 ::= WITH | WITHOUT

    grp_2387 ::= CSV grp_2388 EMBEDDED

    opt_2389 ::= grp_2387 | $empty

    opt_2390 ::= external_table_delimit_clause | $empty

    opt_2391 ::= external_table_trim_clause | $empty

    seq_2392 ::= ALL FIELDS OVERRIDE THESE FIELDS

    opt_2393 ::= seq_2392 | $empty

    seq_2394 ::= MISSING FIELD VALUES ARE NULL_

    opt_2395 ::= seq_2394 | $empty

    seq_2396 ::= REJECT ROWS WITH ALL NULL_ FIELDS

    opt_2397 ::= seq_2396 | $empty

    grp_2399 ::= DATE | TIMESTAMP

    grp_2398 ::= DATE_FORMAT grp_2399 MASK quoted_string

    opt_2400 ::= grp_2398 | $empty

    grp_2402 ::= EQUALS_OP | NOT_EQUAL_OP

    grp_2403 ::= quoted_string | HEX_STRING_LIT | BLANKS

    grp_2401 ::= NULLIF grp_2402 grp_2403 | NONULLIF

    opt_2404 ::= grp_2401 | $empty

    opt_2405 ::= LPAREN | $empty

    opt_2406 ::= external_table_field_list | $empty

    opt_2407 ::= RPAREN | $empty

    grp_2408 ::= ENABLE | DISABLED

    opt_2409 ::= external_table_directory | $empty

    grp_2411 ::= BASIC | LOW | MEDIUM | HIGH

    opt_2412 ::= grp_2411 | $empty

    grp_2410 ::= ENABLED opt_2412 | DISABLED

    opt_2413 ::= grp_2410 | $empty

    grp_2414 ::= ENABLED | DISABLED

    grp_2415 ::= COMPATIBLE | LATEST | quoted_string

    seq_2416 ::= DOT id_expression

    list_2417 ::= $empty | list_2417 seq_2416

    grp_2418 ::= EQ | COLON

    seq_2420 ::= COMMA external_table_hive_parameter_map

    list_2421 ::= $empty | list_2421 seq_2420

    seq_2422 ::= COMMENT quoted_string

    opt_2423 ::= seq_2422 | $empty

    seq_2424 ::= COMMA COMMENT quoted_string

    list_2425 ::= $empty | list_2425 seq_2424

    opt_2426 ::= DELIMITED | $empty

    seq_2428 ::= ESCAPED BY CHARACTER

    grp_2429 ::= COLLECTION ITEMS | MAP KEYS | LINES

    grp_2427 ::= FIELDS TERMINATED BY CHARACTER seq_2428 | grp_2429 TERMINATED BY CHARACTER | NULL_ DEFINED AS CHARACTER

    seq_2430 ::= COMMA quoted_string EQ quoted_string

    list_2431 ::= $empty | list_2431 seq_2430

    seq_2432 ::= quoted_string EQ quoted_string list_2431

    seq_2433 ::= WITH SERDEPROPERTIES seq_2432

    opt_2434 ::= seq_2433 | $empty

    grp_2419 ::= tableview_name | external_table_hive_parameter_map | LBRACKET external_table_hive_parameter_map list_2421 RBRACKET | external_table_field datatype opt_2423 list_2425 | SEQUENCEFILE | TEXTFILE | RCFILE | ORC | PARQUET | INPUTFORMAT quoted_string OUTPUTFORMAT quoted_string | external_table_directory | opt_2426 grp_2427 | SERDE quoted_string opt_2434

    opt_2435 ::= external_table_hive | $empty

    seq_2436 ::= COMMA external_table_hive_parameter_map_entry

    list_2437 ::= $empty | list_2437 seq_2436

    seq_2438 ::= external_table_hive_parameter_map_entry list_2437

    seq_2439 ::= COMMA id_expression

    list_2440 ::= $empty | list_2440 seq_2439

    seq_2441 ::= COMMA id_expression

    list_2442 ::= $empty | list_2442 seq_2441

    opt_2443 ::= object_name | $empty

    seq_2444 ::= directory_name opt_2443 COLON

    opt_2445 ::= seq_2444 | $empty

    grp_2446 ::= ENABLE | DISABLE

    opt_2447 ::= grp_2446 | $empty

    opt_2448 ::= id_expression | $empty

    grp_2449 ::= supplemental_log_grp_clause | supplemental_id_key_clause

    grp_2451 ::= supplemental_log_grp_clause | supplemental_id_key_clause

    grp_2450 ::= COMMA SUPPLEMENTAL LOG grp_2451

    list_2452 ::= $empty | list_2452 grp_2450

    grp_2453 ::= supplemental_id_key_clause | GROUP log_grp

    grp_2455 ::= supplemental_id_key_clause | GROUP log_grp

    grp_2454 ::= COMMA SUPPLEMENTAL LOG grp_2455

    list_2456 ::= $empty | list_2456 grp_2454

    seq_2457 ::= NO LOG

    opt_2458 ::= seq_2457 | $empty

    seq_2459 ::= NO LOG

    opt_2460 ::= seq_2459 | $empty

    seq_2461 ::= COMMA column_name opt_2460

    list_2462 ::= $empty | list_2462 seq_2461

    opt_2463 ::= ALWAYS | $empty

    opt_2465 ::= COMMA | $empty

    opt_2467 ::= INDEX | $empty

    grp_2466 ::= ALL | PRIMARY KEY | UNIQUE opt_2467 | FOREIGN KEY

    grp_2464 ::= opt_2465 grp_2466

    list_2468 ::= grp_2464 | list_2468 grp_2464

    grp_2470 ::= SIZE size_clause | DATAFILE CHAR_STRING | INSTANCE UNSIGNED_INTEGER

    list_2471 ::= grp_2470 | list_2471 grp_2470

    grp_2469 ::= LPAREN list_2471 RPAREN

    opt_2472 ::= grp_2469 | $empty

    seq_2473 ::= KEEP size_clause

    opt_2474 ::= seq_2473 | $empty

    opt_2475 ::= COMPACT | $empty

    opt_2476 ::= CASCADE | $empty

    opt_2477 ::= CHECK | $empty

    grp_2478 ::= MINIMIZE | NOMINIMIZE

    opt_2479 ::= grp_2478 | $empty

    opt_2480 ::= NOT | $empty

    seq_2481 ::= opt_2480 INCLUDING DATA

    grp_2483 ::= PRESERVE | PURGE

    seq_2484 ::= MATERIALIZED VIEW LOG

    opt_2485 ::= seq_2484 | $empty

    grp_2482 ::= grp_2483 opt_2485

    opt_2486 ::= grp_2482 | $empty

    opt_2489 ::= ALL | $empty

    grp_2488 ::= DROP opt_2489 | REUSE

    grp_2487 ::= grp_2488 STORAGE

    opt_2490 ::= grp_2487 | $empty

    opt_2491 ::= CASCADE | $empty

    seq_2492 ::= IF EXISTS

    opt_2493 ::= seq_2492 | $empty

    seq_2494 ::= AS tableview_name

    opt_2495 ::= seq_2494 | $empty

    grp_2497 ::= CONSTRAINT | CONSTRAINTS

    grp_2496 ::= CASCADE grp_2497

    opt_2498 ::= grp_2496 | $empty

    opt_2499 ::= PURGE | $empty

    seq_2500 ::= AS table_alias

    opt_2501 ::= seq_2500 | $empty

    opt_2502 ::= FORCE | $empty

    seq_2503 ::= IF EXISTS

    opt_2504 ::= seq_2503 | $empty

    grp_2506 ::= DROP | KEEP

    opt_2507 ::= QUOTA | $empty

    grp_2505 ::= grp_2506 opt_2507

    opt_2508 ::= grp_2505 | $empty

    opt_2509 ::= including_contents_clause | $empty

    opt_2510 ::= including_contents_clause | $empty

    grp_2512 ::= AND | KEEP

    grp_2511 ::= grp_2512 DATAFILES

    opt_2513 ::= grp_2511 | $empty

    seq_2514 ::= CASCADE CONSTRAINTS

    opt_2515 ::= seq_2514 | $empty

    seq_2516 ::= IF EXISTS

    opt_2517 ::= seq_2516 | $empty

    seq_2518 ::= CASCADE CONSTRAINT

    opt_2519 ::= seq_2518 | $empty

    opt_2520 ::= PUBLIC | $empty

    seq_2521 ::= schema_name DOT

    opt_2522 ::= seq_2521 | $empty

    grp_2523 ::= EDITIONABLE | NONEDITIONABLE | COMPILE

    seq_2524 ::= OR REPLACE

    opt_2525 ::= seq_2524 | $empty

    seq_2526 ::= schema_name PERIOD

    opt_2527 ::= seq_2526 | $empty

    seq_2528 ::= AT_SIGN link_name

    opt_2529 ::= seq_2528 | $empty

    seq_2530 ::= OR REPLACE

    opt_2531 ::= seq_2530 | $empty

    seq_2532 ::= schema_name PERIOD

    opt_2533 ::= seq_2532 | $empty

    seq_2534 ::= schema_name PERIOD

    opt_2535 ::= seq_2534 | $empty

    seq_2536 ::= schema_name PERIOD

    opt_2537 ::= seq_2536 | $empty

    seq_2538 ::= AT_SIGN opt_2537 link_name

    opt_2539 ::= seq_2538 | $empty

    opt_2540 ::= PUBLIC | $empty

    seq_2541 ::= schema_name DOT

    opt_2542 ::= seq_2541 | $empty

    opt_2543 ::= FORCE | $empty

    seq_2544 ::= EQ spfile_name

    opt_2545 ::= seq_2544 | $empty

    seq_2547 ::= EQ pfile_name

    opt_2548 ::= seq_2547 | $empty

    seq_2549 ::= AS COPY

    opt_2550 ::= seq_2549 | $empty

    grp_2546 ::= PFILE opt_2548 opt_2550 | MEMORY

    seq_2551 ::= schema_name DOT

    opt_2552 ::= seq_2551 | $empty

    grp_2553 ::= RENAME TO id_expression | COMPILE | alter_add_cache_clause | alter_drop_cache_clause

    grp_2554 ::= ALL | measure_list

    opt_2555 ::= grp_2554 | $empty

    seq_2556 ::= COMMA levels_item

    list_2557 ::= $empty | list_2557 seq_2556

    seq_2558 ::= id_expression DOT

    opt_2559 ::= seq_2558 | $empty

    seq_2560 ::= opt_2559 id_expression DOT

    opt_2561 ::= seq_2560 | $empty

    seq_2562 ::= COMMA id_expression

    list_2563 ::= $empty | list_2563 seq_2562

    grp_2564 ::= ALL | measure_list

    opt_2565 ::= grp_2564 | $empty

    seq_2566 ::= COMMA levels_item

    list_2567 ::= $empty | list_2567 seq_2566

    seq_2568 ::= schema_name DOT

    opt_2569 ::= seq_2568 | $empty

    grp_2570 ::= RENAME TO id_expression | COMPILE

    opt_2571 ::= ADD | $empty

    opt_2573 ::= privilege_audit_clause | $empty

    opt_2574 ::= action_audit_clause | $empty

    opt_2575 ::= role_audit_clause | $empty

    seq_2576 ::= ONLY TOPLEVEL

    opt_2577 ::= seq_2576 | $empty

    grp_2572 ::= opt_2573 opt_2574 opt_2575 | opt_2577

    opt_2578 ::= DROP | $empty

    opt_2580 ::= privilege_audit_clause | $empty

    opt_2581 ::= action_audit_clause | $empty

    opt_2582 ::= role_audit_clause | $empty

    seq_2583 ::= ONLY TOPLEVEL

    opt_2584 ::= seq_2583 | $empty

    grp_2579 ::= opt_2580 opt_2581 opt_2582 | opt_2584

    grp_2587 ::= STATEMENT | SESSION | INSTANCE

    grp_2586 ::= DROP | CHAR_STRING EVALUATE PER grp_2587

    grp_2585 ::= CONDITION grp_2586

    opt_2588 ::= grp_2585 | $empty

    grp_2589 ::= physical_attributes_clause | SIZE size_clause | allocate_extent_clause | deallocate_unused_clause | cache_or_nocache

    list_2590 ::= grp_2589 | list_2590 grp_2589

    opt_2591 ::= parallel_clause | $empty

    seq_2592 ::= schema_name DOT

    opt_2593 ::= seq_2592 | $empty

    seq_2594 ::= schema_name DOT

    opt_2595 ::= seq_2594 | $empty

    seq_2596 ::= CASCADE CONSTRAINTS

    opt_2597 ::= seq_2596 | $empty

    seq_2598 ::= INCLUDING TABLES opt_2597

    opt_2599 ::= seq_2598 | $empty

    opt_2602 ::= FORCE | $empty

    grp_2601 ::= opt_2602 INCLUDING | EXCLUDING

    grp_2600 ::= grp_2601 CONTENTS

    opt_2603 ::= grp_2600 | $empty

    opt_2604 ::= CASCADE | $empty

    grp_2606 ::= DROP | REUSE

    grp_2605 ::= grp_2606 STORAGE

    opt_2607 ::= grp_2605 | $empty

    grp_2608 ::= startup_clauses | recovery_clauses | database_file_clauses | logfile_clauses | controlfile_clauses | standby_database_clauses | default_settings_clause | instance_clauses | security_clause | prepare_clause | drop_mirror_clause | lost_write_protection | cdb_fleet_clauses | property_clauses | replay_upgrade_clauses

    opt_2609 ::= PLUGGABLE | $empty

    opt_2610 ::= database_name | $empty

    grp_2612 ::= STANDBY | CLONE

    grp_2611 ::= grp_2612 DATABASE

    opt_2613 ::= grp_2611 | $empty

    seq_2614 ::= READ WRITE

    opt_2615 ::= seq_2614 | $empty

    opt_2616 ::= resetlogs_or_noresetlogs | $empty

    opt_2617 ::= upgrade_or_downgrade | $empty

    opt_2618 ::= AUTOMATIC | $empty

    seq_2619 ::= FROM CHAR_STRING

    opt_2620 ::= seq_2619 | $empty

    grp_2622 ::= full_database_recovery | partial_database_recovery | LOGFILE CHAR_STRING

    opt_2623 ::= grp_2622 | $empty

    grp_2625 ::= TEST | ALLOW UNSIGNED_INTEGER CORRUPTION | parallel_clause

    list_2626 ::= grp_2625 | list_2626 grp_2625

    grp_2624 ::= list_2626

    opt_2627 ::= grp_2624 | $empty

    opt_2628 ::= DEFAULT | $empty

    grp_2621 ::= opt_2623 opt_2627 | CONTINUE opt_2628 | CANCEL

    opt_2629 ::= STANDBY | $empty

    grp_2632 ::= CANCEL | TIME CHAR_STRING | CHANGE UNSIGNED_INTEGER | CONSISTENT

    grp_2631 ::= UNTIL grp_2632 | USING BACKUP CONTROLFILE | SNAPSHOT TIME CHAR_STRING

    list_2633 ::= grp_2631 | list_2633 grp_2631

    grp_2630 ::= list_2633

    opt_2634 ::= grp_2630 | $empty

    seq_2635 ::= COMMA tablespace

    list_2636 ::= $empty | list_2636 seq_2635

    grp_2637 ::= COMMA CHAR_STRING | filenumber

    list_2638 ::= $empty | list_2638 grp_2637

    seq_2640 ::= COMMA tablespace

    list_2641 ::= $empty | list_2641 seq_2640

    grp_2642 ::= COMMA CHAR_STRING | filenumber

    list_2643 ::= $empty | list_2643 grp_2642

    grp_2639 ::= TABLESPACE tablespace list_2641 | DATAFILE CHAR_STRING | filenumber list_2643

    seq_2644 ::= CONSISTENT WITH

    opt_2645 ::= seq_2644 | $empty

    seq_2649 ::= FROM SESSION

    opt_2650 ::= seq_2649 | $empty

    grp_2648 ::= USING CURRENT LOGFILE | DISCONNECT opt_2650 | NODELAY | UNTIL CHANGE UNSIGNED_INTEGER | UNTIL CONSISTENT | parallel_clause

    list_2651 ::= grp_2648 | list_2651 grp_2648

    grp_2647 ::= list_2651 | FINISH | CANCEL

    opt_2652 ::= grp_2647 | $empty

    grp_2653 ::= db_name | KEEP IDENTITY

    grp_2646 ::= MANAGED STANDBY DATABASE opt_2652 | TO LOGICAL STANDBY grp_2653

    seq_2654 ::= COMMA filename

    list_2655 ::= $empty | list_2655 seq_2654

    grp_2656 ::= filename | filenumber

    grp_2658 ::= filename | filenumber

    grp_2657 ::= COMMA grp_2658

    list_2659 ::= $empty | list_2659 grp_2657

    seq_2660 ::= AS NEW

    opt_2661 ::= seq_2660 | $empty

    grp_2662 ::= filename | filenumber

    grp_2664 ::= filename | filenumber

    grp_2663 ::= COMMA grp_2664

    list_2665 ::= $empty | list_2665 grp_2663

    seq_2667 ::= FOR DROP

    opt_2668 ::= seq_2667 | $empty

    grp_2666 ::= ONLINE | OFFLINE opt_2668 | RESIZE size_clause | autoextend_clause | END BACKUP

    grp_2669 ::= filename | filenumber

    grp_2671 ::= filename | filenumber

    grp_2670 ::= COMMA grp_2671

    list_2672 ::= $empty | list_2672 grp_2670

    seq_2674 ::= INCLUDING DATAFILES

    grp_2673 ::= RESIZE size_clause | autoextend_clause | DROP seq_2674 | ONLINE | OFFLINE

    grp_2675 ::= filename | filenumber

    grp_2677 ::= filename | filenumber

    grp_2676 ::= COMMA grp_2677

    list_2678 ::= $empty | list_2678 grp_2676

    seq_2679 ::= TO filename

    opt_2680 ::= seq_2679 | $empty

    opt_2681 ::= REUSE | $empty

    opt_2682 ::= KEEP | $empty

    opt_2684 ::= MANUAL | $empty

    grp_2683 ::= ARCHIVELOG opt_2684 | NOARCHIVELOG

    opt_2685 ::= NO | $empty

    grp_2686 ::= DATA AVAILABILITY | LOAD PERFORMANCE

    seq_2687 ::= COMMA filename

    list_2688 ::= $empty | list_2688 seq_2687

    opt_2689 ::= UNARCHIVED | $empty

    seq_2690 ::= COMMA logfile_descriptor

    list_2691 ::= $empty | list_2691 seq_2690

    seq_2692 ::= UNRECOVERABLE DATAFILE

    opt_2693 ::= seq_2692 | $empty

    opt_2694 ::= STANDBY | $empty

    grp_2696 ::= INSTANCE CHAR_STRING | THREAD UNSIGNED_INTEGER

    opt_2697 ::= grp_2696 | $empty

    list_2698 ::= group_redo_logfile | list_2698 group_redo_logfile

    opt_2699 ::= REUSE | $empty

    opt_2700 ::= REUSE | $empty

    seq_2701 ::= COMMA filename opt_2700

    list_2702 ::= $empty | list_2702 seq_2701

    seq_2703 ::= COMMA logfile_descriptor

    list_2704 ::= $empty | list_2704 seq_2703

    grp_2695 ::= opt_2697 list_2698 | MEMBER filename opt_2699 list_2702 TO logfile_descriptor list_2704

    seq_2705 ::= GROUP UNSIGNED_INTEGER

    opt_2706 ::= seq_2705 | $empty

    opt_2707 ::= STANDBY | $empty

    seq_2709 ::= COMMA logfile_descriptor

    list_2710 ::= $empty | list_2710 seq_2709

    seq_2711 ::= COMMA filename

    list_2712 ::= $empty | list_2712 seq_2711

    grp_2708 ::= logfile_descriptor list_2710 | MEMBER filename list_2712

    grp_2713 ::= DATA | supplemental_id_key_clause | supplemental_plsql_clause

    seq_2714 ::= COMMA filename

    list_2715 ::= $empty | list_2715 seq_2714

    grp_2716 ::= LOGICAL | PHYSICAL

    opt_2717 ::= grp_2716 | $empty

    opt_2718 ::= REUSE | $empty

    opt_2720 ::= REUSE | $empty

    grp_2719 ::= filename opt_2720 | trace_file_clause

    opt_2721 ::= REUSE | $empty

    seq_2722 ::= AS filename opt_2721

    opt_2723 ::= seq_2722 | $empty

    grp_2724 ::= RESETLOGS | NORESETLOGS

    opt_2725 ::= grp_2724 | $empty

    grp_2726 ::= activate_standby_db_clause | maximize_standby_db_clause | register_logfile_clause | commit_switchover_clause | start_standby_clause | stop_standby_clause | convert_database_clause

    opt_2727 ::= parallel_clause | $empty

    grp_2728 ::= PHYSICAL | LOGICAL

    opt_2729 ::= grp_2728 | $empty

    seq_2730 ::= FINISH APPLY

    opt_2731 ::= seq_2730 | $empty

    grp_2732 ::= PROTECTION | AVAILABILITY | PERFORMANCE

    seq_2733 ::= OR REPLACE

    opt_2734 ::= seq_2733 | $empty

    grp_2735 ::= PHYSICAL | LOGICAL

    grp_2736 ::= PREPARE | COMMIT

    grp_2741 ::= PHYSICAL | LOGICAL

    opt_2742 ::= grp_2741 | $empty

    opt_2743 ::= PHYSICAL | $empty

    grp_2740 ::= opt_2742 PRIMARY | opt_2743 STANDBY

    grp_2745 ::= WITH | WITHOUT

    opt_2746 ::= grp_2745 | $empty

    grp_2747 ::= WAIT | NOWAIT

    grp_2744 ::= opt_2746 SESSION SHUTDOWN grp_2747

    opt_2748 ::= grp_2744 | $empty

    grp_2739 ::= grp_2740 opt_2748 | LOGICAL STANDBY

    grp_2738 ::= TO grp_2739 | LOGICAL STANDBY

    grp_2737 ::= grp_2738 | CANCEL

    opt_2749 ::= grp_2737 | $empty

    opt_2750 ::= IMMEDIATE | $empty

    opt_2751 ::= NODELAY | $empty

    opt_2753 ::= UNSIGNED_INTEGER | $empty

    grp_2752 ::= NEW PRIMARY regular_id | INITIAL opt_2753 | SKIP_ FAILED TRANSACTION | FINISH

    opt_2754 ::= grp_2752 | $empty

    grp_2755 ::= STOP | ABORT

    grp_2756 ::= PHYSICAL | SNAPSHOT

    grp_2757 ::= BIGFILE | SMALLFILE

    grp_2758 ::= tablespace | tablespace_group_name

    seq_2759 ::= DOT domain

    list_2760 ::= seq_2759 | list_2760 seq_2759

    opt_2761 ::= REUSE | $empty

    seq_2762 ::= USING FILE filename opt_2761

    opt_2763 ::= seq_2762 | $empty

    grp_2764 ::= ALL | STANDBY | NONE

    grp_2766 ::= UNPROTECTED | MIRROR | HIGH

    grp_2765 ::= WITH grp_2766 REDUNDANCY

    opt_2767 ::= grp_2765 | $empty

    seq_2768 ::= FOR DATABASE id_expression

    opt_2769 ::= seq_2768 | $empty

    grp_2770 ::= ENABLE | DISABLE | REMOVE | SUSPEND

    grp_2771 ::= TRUE | FALSE

    grp_2772 ::= SET | REMOVE

    grp_2773 ::= ON | OFF

    opt_2774 ::= SHARED | $empty

    opt_2775 ::= PUBLIC | $empty

    opt_2777 ::= link_authentication | $empty

    grp_2776 ::= CONNECT TO user_object_name IDENTIFIED BY password_value opt_2777 | link_authentication

    grp_2778 ::= create_table | create_view | grant_statement

    list_2779 ::= $empty | list_2779 grp_2778

    grp_2781 ::= SYS | SYSTEM

    grp_2782 ::= MAXDATAFILES | MAXINSTANCES

    opt_2783 ::= NATIONAL | $empty

    grp_2784 ::= BIGFILE | SMALLFILE

    grp_2785 ::= BIGFILE | SMALLFILE

    opt_2786 ::= grp_2785 | $empty

    seq_2787 ::= COMMA datafile_tempfile_spec

    list_2788 ::= $empty | list_2788 seq_2787

    grp_2780 ::= USER grp_2781 IDENTIFIED BY password_value | CONTROLFILE REUSE | grp_2782 UNSIGNED_INTEGER | opt_2783 CHARACTER SET char_set_name | SET DEFAULT grp_2784 TABLESPACE | database_logging_clauses | tablespace_clauses | set_time_zone_clause | opt_2786 USER_DATA TABLESPACE tablespace_group_name DATAFILE datafile_tempfile_spec list_2788 | enable_pluggable_database

    list_2789 ::= grp_2780 | list_2789 grp_2780

    seq_2790 ::= COMMA database_logging_sub_clause

    list_2791 ::= $empty | list_2791 seq_2790

    grp_2792 ::= MAXLOGFILES | MAXLOGMEMBERS | MAXLOGHISTORY

    seq_2793 ::= GROUP UNSIGNED_INTEGER

    opt_2794 ::= seq_2793 | $empty

    opt_2795 ::= SYSAUX | $empty

    seq_2796 ::= COMMA file_specification

    list_2797 ::= $empty | list_2797 seq_2796

    opt_2798 ::= file_name_convert | $empty

    seq_2799 ::= SYSTEM tablespace_datafile_clauses

    opt_2800 ::= seq_2799 | $empty

    seq_2801 ::= SYSAUX tablespace_datafile_clauses

    opt_2802 ::= seq_2801 | $empty

    seq_2803 ::= SEED opt_2798 opt_2800 opt_2802

    opt_2804 ::= seq_2803 | $empty

    opt_2805 ::= undo_mode_clause | $empty

    seq_2807 ::= COMMA filename_convert_sub_clause

    list_2808 ::= $empty | list_2808 seq_2807

    grp_2806 ::= LPAREN filename_convert_sub_clause list_2808 RPAREN | NONE

    seq_2809 ::= COMMA CHAR_STRING

    opt_2810 ::= seq_2809 | $empty

    grp_2811 ::= SIZE size_clause | autoextend_clause

    list_2812 ::= grp_2811 | list_2812 grp_2811

    grp_2813 ::= ON | OFF

    seq_2814 ::= DATAFILE datafile_tempfile_spec

    opt_2815 ::= seq_2814 | $empty

    opt_2816 ::= extent_management_clause | $empty

    grp_2817 ::= BIGFILE | SMALLFILE

    opt_2818 ::= grp_2817 | $empty

    grp_2820 ::= ALL | LEAF

    grp_2819 ::= TEMPORARY TABLESPACE | LOCAL TEMPORARY TABLESPACE FOR grp_2820

    seq_2821 ::= COMMA file_specification

    list_2822 ::= $empty | list_2822 seq_2821

    seq_2823 ::= TEMPFILE file_specification list_2822

    opt_2824 ::= seq_2823 | $empty

    opt_2825 ::= extent_management_clause | $empty

    grp_2826 ::= BIGFILE | SMALLFILE

    opt_2827 ::= grp_2826 | $empty

    seq_2828 ::= COMMA file_specification

    list_2829 ::= $empty | list_2829 seq_2828

    seq_2830 ::= DATAFILE file_specification list_2829

    opt_2831 ::= seq_2830 | $empty

    seq_2832 ::= INCLUDING BACKUPS

    opt_2833 ::= seq_2832 | $empty

    opt_2834 ::= NOPROMPT | $empty

    opt_2835 ::= SHARED | $empty

    opt_2836 ::= PUBLIC | $empty

    opt_2839 ::= link_authentication | $empty

    grp_2838 ::= CURRENT_USER | user_object_name IDENTIFIED BY password_value opt_2839

    grp_2837 ::= CONNECT TO grp_2838 | link_authentication

    list_2840 ::= $empty | list_2840 grp_2837

    seq_2841 ::= USING CHAR_STRING

    opt_2842 ::= seq_2841 | $empty

    opt_2843 ::= PUBLIC | $empty

    seq_2844 ::= KEEP size_clause

    opt_2845 ::= seq_2844 | $empty

    grp_2846 ::= BEGIN | END

    opt_2849 ::= tablespace_encryption_spec | $empty

    grp_2848 ::= opt_2849 ENCRYPT | DECRYPT

    opt_2851 ::= tablespace_encryption_spec | $empty

    grp_2852 ::= ENCRYPT | REKEY

    grp_2850 ::= opt_2851 grp_2852 | DECRYPT

    opt_2853 ::= ts_file_name_convert | $empty

    grp_2854 ::= ENCRYPT | REKEY | DECRYPT

    opt_2855 ::= ts_file_name_convert | $empty

    grp_2847 ::= OFFLINE grp_2848 | ONLINE grp_2850 opt_2853 | FINISH grp_2854 opt_2855

    seq_2856 ::= COMMA CHAR_STRING COMMA CHAR_STRING

    list_2857 ::= $empty | list_2857 seq_2856

    opt_2858 ::= KEEP | $empty

    opt_2859 ::= container_clause | $empty

    seq_2861 ::= DOT id_expression

    opt_2862 ::= seq_2861 | $empty

    seq_2863 ::= AS CHAR_STRING

    opt_2864 ::= seq_2863 | $empty

    grp_2860 ::= BY identifier | USING identifier opt_2862 | EXTERNALLY | GLOBALLY opt_2864

    list_2865 ::= $empty | list_2865 memoptimize_read_write_clause

    grp_2866 ::= alter_table_properties | constraint_clauses | column_clauses | alter_table_partitioning | move_table_clause

    grp_2869 ::= TABLE LOCK | ALL TRIGGERS

    grp_2868 ::= enable_disable_clause | enable_or_disable grp_2869

    list_2870 ::= grp_2868 | list_2870 grp_2868

    grp_2867 ::= list_2870

    opt_2871 ::= grp_2867 | $empty

    opt_2872 ::= NO | $empty

    grp_2873 ::= READ | WRITE

    opt_2874 ::= NO | $empty

    opt_2876 ::= partition_name | $empty

    seq_2877 ::= TABLESPACE tablespace

    opt_2878 ::= seq_2877 | $empty

    opt_2879 ::= key_compression | $empty

    opt_2880 ::= UNUSABLE | $empty

    grp_2875 ::= range_partition_desc | list_partition_desc | PARTITION opt_2876 opt_2878 opt_2879 opt_2880

    grp_2881 ::= partition_extended_names | subpartition_extended_names

    opt_2882 ::= parallel_clause | $empty

    seq_2883 ::= update_index_clauses opt_2882

    opt_2884 ::= seq_2883 | $empty

    grp_2886 ::= PARTITION | SUBPARTITION

    grp_2888 ::= ADD | DROP

    grp_2887 ::= grp_2888 list_values_clause

    opt_2889 ::= grp_2887 | $empty

    seq_2890 ::= ADD range_subpartition_desc

    opt_2891 ::= seq_2890 | $empty

    opt_2892 ::= REBUILD | $empty

    seq_2893 ::= opt_2892 UNUSABLE LOCAL INDEXES

    opt_2894 ::= seq_2893 | $empty

    opt_2895 ::= shrink_clause | $empty

    grp_2885 ::= grp_2886 partition_name opt_2889 opt_2891 opt_2894 opt_2895 | range_partitions

    seq_2897 ::= COMMA literal

    list_2898 ::= $empty | list_2898 seq_2897

    seq_2899 ::= COMMA range_partition_desc

    list_2900 ::= $empty | list_2900 seq_2899

    seq_2902 ::= COMMA range_partition_desc

    list_2903 ::= $empty | list_2903 seq_2902

    seq_2904 ::= COMMA list_partition_desc

    list_2905 ::= $empty | list_2905 seq_2904

    grp_2901 ::= range_partition_desc list_2903 | list_partition_desc list_2905

    grp_2896 ::= AT LPAREN literal list_2898 RPAREN INTO LPAREN range_partition_desc list_2900 RPAREN | INTO LPAREN grp_2901 RPAREN

    grp_2906 ::= update_global_index_clause | update_index_clauses | ONLINE

    opt_2907 ::= grp_2906 | $empty

    grp_2908 ::= partition_extended_names | subpartition_extended_names

    opt_2911 ::= ALL | $empty

    grp_2910 ::= DROP opt_2911 | REUSE

    opt_2912 ::= grp_2910 | $empty

    grp_2909 ::= opt_2912 STORAGE

    opt_2913 ::= grp_2909 | $empty

    opt_2914 ::= CASCADE | $empty

    opt_2915 ::= parallel_clause | $empty

    seq_2916 ::= update_index_clauses opt_2915

    opt_2917 ::= seq_2916 | $empty

    grp_2919 ::= INCLUDING | EXCLUDING

    grp_2918 ::= grp_2919 INDEXES

    opt_2920 ::= grp_2918 | $empty

    grp_2922 ::= WITH | WITHOUT

    grp_2921 ::= grp_2922 VALIDATION

    opt_2923 ::= grp_2921 | $empty

    opt_2924 ::= parallel_clause | $empty

    seq_2925 ::= allow_or_disallow CLUSTERING

    opt_2926 ::= seq_2925 | $empty

    grp_2927 ::= constant | expression

    opt_2928 ::= grp_2927 | $empty

    seq_2930 ::= MAPPING TABLE

    opt_2931 ::= seq_2930 | $empty

    opt_2932 ::= indexing_clause | $empty

    opt_2933 ::= partitioning_storage_clause | $empty

    grp_2929 ::= partition_extended_names opt_2931 table_partition_description | subpartition_extended_names opt_2932 opt_2933

    grp_2934 ::= filter_condition | update_index_clauses | parallel_clause | allow_or_disallow CLUSTERING | ONLINE

    list_2935 ::= $empty | list_2935 grp_2934

    grp_2936 ::= partition_extended_names | subpartition_extended_names

    grp_2937 ::= PARTITION | PARTITIONS

    seq_2939 ::= COMMA partition_name

    list_2940 ::= $empty | list_2940 seq_2939

    seq_2941 ::= COMMA partition_name

    list_2942 ::= $empty | list_2942 seq_2941

    opt_2943 ::= LPAREN | $empty

    seq_2944 ::= COMMA partition_key_value

    list_2945 ::= $empty | list_2945 seq_2944

    opt_2946 ::= RPAREN | $empty

    grp_2938 ::= partition_name list_2940 | LPAREN partition_name list_2942 RPAREN | FOR opt_2943 partition_key_value list_2945 opt_2946

    grp_2947 ::= SUBPARTITION | SUBPARTITIONS

    seq_2949 ::= UPDATE INDEXES

    opt_2950 ::= seq_2949 | $empty

    seq_2951 ::= COMMA partition_name

    list_2952 ::= $empty | list_2952 seq_2951

    opt_2953 ::= LPAREN | $empty

    seq_2954 ::= COMMA subpartition_key_value

    list_2955 ::= $empty | list_2955 seq_2954

    opt_2956 ::= RPAREN | $empty

    grp_2948 ::= partition_name opt_2950 | LPAREN partition_name list_2952 RPAREN | FOR opt_2953 subpartition_key_value list_2955 opt_2956

    grp_2958 ::= CACHE | NOCACHE

    grp_2959 ::= DEFAULT | FORCE

    grp_2957 ::= physical_attributes_clause | logging_clause | table_compression | inmemory_table_clause | supplemental_table_logging | allocate_extent_clause | deallocate_unused_clause | grp_2958 | RESULT_CACHE LPAREN MODE grp_2959 RPAREN | upgrade_table_clause | records_per_block_clause | parallel_clause | row_movement_clause | logical_replication_clause | flashback_archive_clause

    list_2960 ::= grp_2957 | list_2960 grp_2957

    opt_2961 ::= alter_iot_clauses | $empty

    grp_2962 ::= allocate_extent_clause | deallocate_unused_clause

    grp_2963 ::= segment_attributes_clause | allocate_extent_clause | shrink_clause | deallocate_unused_clause

    list_2964 ::= grp_2963 | list_2964 grp_2963

    opt_2965 ::= segment_attributes_clause | $empty

    opt_2966 ::= segment_attributes_clause | $empty

    opt_2967 ::= segment_attributes_clause | $empty

    seq_2968 ::= COMMA PARTITION opt_2967

    list_2969 ::= $empty | list_2969 seq_2968

    seq_2970 ::= LPAREN PARTITION opt_2966 list_2969 RPAREN

    opt_2971 ::= seq_2970 | $empty

    grp_2972 ::= UPDATE | INVALIDATE

    seq_2973 ::= LPAREN update_all_indexes_index_clause RPAREN

    opt_2974 ::= seq_2973 | $empty

    grp_2975 ::= update_index_partition | update_index_subpartition

    seq_2976 ::= COMMA update_all_indexes_clause

    list_2977 ::= $empty | list_2977 seq_2976

    opt_2978 ::= index_subpartition_clause | $empty

    seq_2979 ::= COMMA update_index_partition

    list_2980 ::= $empty | list_2980 seq_2979

    opt_2981 ::= subpartition_name | $empty

    seq_2982 ::= TABLESPACE tablespace

    opt_2983 ::= seq_2982 | $empty

    seq_2984 ::= COMMA update_index_subpartition

    list_2985 ::= $empty | list_2985 seq_2984

    grp_2986 ::= ENABLE | DISABLE

    grp_2987 ::= VALIDATE | NOVALIDATE

    opt_2988 ::= grp_2987 | $empty

    seq_2990 ::= COMMA column_name

    list_2991 ::= $empty | list_2991 seq_2990

    grp_2989 ::= UNIQUE LPAREN column_name list_2991 RPAREN | PRIMARY KEY | CONSTRAINT constraint_name

    opt_2992 ::= using_index_clause | $empty

    opt_2993 ::= exceptions_clause | $empty

    opt_2994 ::= CASCADE | $empty

    grp_2996 ::= KEEP | DROP

    grp_2995 ::= grp_2996 INDEX

    opt_2997 ::= grp_2995 | $empty

    grp_2998 ::= index_name | LPAREN create_index RPAREN | index_properties

    grp_3000 ::= tablespace | DEFAULT

    grp_2999 ::= physical_attributes_clause | logging_clause | TABLESPACE grp_3000 | key_compression | sort_or_nosort | REVERSE | visible_or_invisible | parallel_clause

    list_3001 ::= grp_2999 | list_3001 grp_2999

    opt_3002 ::= ONLINE | $empty

    opt_3003 ::= segment_attributes_clause | $empty

    opt_3004 ::= table_compression | $empty

    opt_3005 ::= index_org_table_clause | $empty

    grp_3006 ::= lob_storage_clause | varray_col_properties

    list_3007 ::= $empty | list_3007 grp_3006

    opt_3008 ::= parallel_clause | $empty

    grp_3009 ::= mapping_table_clause | PCTTHRESHOLD UNSIGNED_INTEGER | key_compression

    list_3010 ::= grp_3009 | list_3010 grp_3009

    opt_3011 ::= index_org_overflow_clause | $empty

    seq_3012 ::= INCLUDING column_name

    opt_3013 ::= seq_3012 | $empty

    opt_3014 ::= segment_attributes_clause | $empty

    grp_3015 ::= LOCATOR | VALUE

    grp_3016 ::= constraint_clauses | add_column_clause | modify_column_clauses | drop_column_clause

    list_3017 ::= grp_3016 | list_3017 grp_3016

    seq_3019 ::= COMMA column_name

    list_3020 ::= $empty | list_3020 seq_3019

    seq_3021 ::= LPAREN column_name list_3020 RPAREN

    grp_3018 ::= COLUMN column_name | seq_3021

    grp_3022 ::= CASCADE CONSTRAINTS | INVALIDATE

    list_3023 ::= $empty | list_3023 grp_3022

    seq_3025 ::= COMMA column_name

    list_3026 ::= $empty | list_3026 seq_3025

    grp_3024 ::= COLUMN column_name | LPAREN column_name list_3026 RPAREN

    grp_3027 ::= CASCADE CONSTRAINTS | INVALIDATE

    list_3028 ::= $empty | list_3028 grp_3027

    seq_3029 ::= CHECKPOINT UNSIGNED_INTEGER

    opt_3030 ::= seq_3029 | $empty

    grp_3031 ::= UNUSED COLUMNS | COLUMNS CONTINUE

    seq_3032 ::= CHECKPOINT UNSIGNED_INTEGER

    seq_3034 ::= COMMA modify_col_properties

    list_3035 ::= $empty | list_3035 seq_3034

    seq_3036 ::= COMMA modify_col_visibility

    list_3037 ::= $empty | list_3037 seq_3036

    grp_3033 ::= LPAREN modify_col_properties list_3035 RPAREN | LPAREN modify_col_visibility list_3037 RPAREN | modify_col_properties | modify_col_visibility | modify_col_substitutable

    opt_3038 ::= datatype | $empty

    seq_3039 ::= ON NULL_

    opt_3040 ::= seq_3039 | $empty

    seq_3041 ::= DEFAULT opt_3040 expression

    opt_3042 ::= seq_3041 | $empty

    grp_3043 ::= ENCRYPT encryption_spec | DECRYPT

    opt_3044 ::= grp_3043 | $empty

    list_3045 ::= $empty | list_3045 inline_constraint

    opt_3046 ::= lob_storage_clause | $empty

    opt_3047 ::= annotations_clause | $empty

    grp_3048 ::= VISIBLE | INVISIBLE

    opt_3049 ::= NOT | $empty

    opt_3050 ::= FORCE | $empty

    grp_3052 ::= column_definition | virtual_column_definition

    grp_3054 ::= column_definition | virtual_column_definition

    grp_3053 ::= COMMA grp_3054

    list_3055 ::= $empty | list_3055 grp_3053

    grp_3056 ::= column_definition | virtual_column_definition

    grp_3051 ::= LPAREN grp_3052 list_3055 RPAREN | grp_3056

    opt_3057 ::= column_properties | $empty

    opt_3059 ::= substitutable_column_clause | $empty

    grp_3058 ::= opt_3059 varray_storage_clause | substitutable_column_clause

    grp_3060 ::= SECUREFILE | BASICFILE

    opt_3061 ::= grp_3060 | $empty

    opt_3063 ::= lob_segname | $empty

    grp_3062 ::= opt_3063 LPAREN lob_storage_parameters RPAREN | lob_segname

    opt_3064 ::= grp_3062 | $empty

    opt_3065 ::= storage_clause | $empty

    seq_3066 ::= lob_parameters opt_3065

    seq_3068 ::= COMMA lob_item

    list_3069 ::= $empty | list_3069 seq_3068

    grp_3071 ::= SECUREFILE | BASICFILE

    list_3072 ::= $empty | list_3072 lob_storage_parameters

    grp_3070 ::= grp_3071 | LPAREN list_3072 RPAREN

    list_3073 ::= grp_3070 | list_3073 grp_3070

    grp_3075 ::= SECUREFILE | BASICFILE

    list_3076 ::= $empty | list_3076 lob_storage_parameters

    grp_3074 ::= grp_3075 | lob_segname | LPAREN list_3076 RPAREN

    list_3077 ::= grp_3074 | list_3077 grp_3074

    grp_3067 ::= LPAREN lob_item list_3069 RPAREN STORE AS list_3073 | LPAREN lob_item RPAREN STORE AS list_3077

    grp_3079 ::= PCTVERSION | FREEPOOLS

    grp_3080 ::= CACHE | NOCACHE | CACHE READS

    opt_3081 ::= logging_clause | $empty

    grp_3078 ::= storage_clause | grp_3079 UNSIGNED_INTEGER | REBUILD FREEPOOLS | lob_retention_clause | lob_deduplicate_clause | lob_compression_clause | ENCRYPT encryption_spec | DECRYPT | CACHE | grp_3080 opt_3081 | allocate_extent_clause | shrink_clause | deallocate_unused_clause

    list_3082 ::= grp_3078 | list_3082 grp_3078

    grp_3084 ::= ENABLE | DISABLE

    grp_3085 ::= CACHE | NOCACHE | CACHE READS

    opt_3086 ::= logging_clause | $empty

    grp_3083 ::= grp_3084 STORAGE IN ROW | CHUNK UNSIGNED_INTEGER | PCTVERSION UNSIGNED_INTEGER | FREEPOOLS UNSIGNED_INTEGER | lob_retention_clause | lob_deduplicate_clause | lob_compression_clause | ENCRYPT encryption_spec | DECRYPT | grp_3085 opt_3086

    list_3087 ::= grp_3083 | list_3087 grp_3083

    grp_3088 ::= HIGH | MEDIUM | LOW

    opt_3089 ::= grp_3088 | $empty

    grp_3090 ::= MAX | MIN UNSIGNED_INTEGER | AUTO | NONE

    opt_3091 ::= grp_3090 | $empty

    seq_3092 ::= USING CHAR_STRING

    opt_3093 ::= seq_3092 | $empty

    seq_3094 ::= IDENTIFIED BY REGULAR_ID

    opt_3095 ::= seq_3094 | $empty

    opt_3096 ::= CHAR_STRING | $empty

    opt_3097 ::= NO | $empty

    seq_3098 ::= opt_3097 SALT

    opt_3099 ::= seq_3098 | $empty

    seq_3100 ::= id_expression DOT

    opt_3101 ::= seq_3100 | $empty

    seq_3102 ::= id_expression DOT

    opt_3103 ::= seq_3102 | $empty

    grp_3105 ::= varray_col_properties | lob_storage_clause

    seq_3106 ::= COMMA lob_partition_storage

    list_3107 ::= $empty | list_3107 seq_3106

    seq_3108 ::= LPAREN lob_partition_storage list_3107 RPAREN

    opt_3109 ::= seq_3108 | $empty

    grp_3104 ::= object_type_col_properties | nested_table_col_properties | grp_3105 opt_3109 | xmltype_column_properties

    list_3110 ::= grp_3104 | list_3110 grp_3104

    seq_3112 ::= COMMA lob_item

    grp_3114 ::= SECUREFILE | BASICFILE

    grp_3113 ::= grp_3114 | LPAREN lob_storage_parameters RPAREN

    list_3115 ::= grp_3113 | list_3115 grp_3113

    grp_3117 ::= SECUREFILE | BASICFILE

    grp_3116 ::= grp_3117 | lob_segname | LPAREN lob_storage_parameters RPAREN

    list_3118 ::= grp_3116 | list_3118 grp_3116

    grp_3111 ::= LPAREN lob_item seq_3112 RPAREN STORE AS list_3115 | LPAREN lob_item RPAREN STORE AS list_3118

    seq_3119 ::= LPAREN start_time_column COMMA end_time_column RPAREN

    opt_3120 ::= seq_3119 | $empty

    grp_3122 ::= datatype | type_name

    seq_3123 ::= COLLATE column_collation_name

    opt_3124 ::= seq_3123 | $empty

    grp_3121 ::= grp_3122 opt_3124

    opt_3125 ::= grp_3121 | $empty

    opt_3126 ::= SORT | $empty

    grp_3127 ::= VISIBLE | INVISIBLE

    opt_3128 ::= grp_3127 | $empty

    seq_3130 ::= ON NULL_

    opt_3131 ::= seq_3130 | $empty

    grp_3129 ::= DEFAULT opt_3131 expression | identity_clause

    opt_3132 ::= grp_3129 | $empty

    seq_3133 ::= ENCRYPT encryption_spec

    opt_3134 ::= seq_3133 | $empty

    list_3136 ::= inline_constraint | list_3136 inline_constraint

    grp_3135 ::= list_3136 | inline_ref_constraint

    opt_3137 ::= grp_3135 | $empty

    opt_3138 ::= annotations_clause | $empty

    seq_3140 ::= ON NULL_

    opt_3141 ::= seq_3140 | $empty

    grp_3139 ::= ALWAYS | BY DEFAULT opt_3141

    opt_3142 ::= grp_3139 | $empty

    opt_3143 ::= identity_options_parentheses | $empty

    list_3144 ::= identity_options | list_3144 identity_options

    list_3145 ::= identity_options | list_3145 identity_options

    grp_3146 ::= numeric | LIMIT VALUE

    grp_3147 ::= EXTEND | NOEXTEND

    seq_3148 ::= COLLATE column_collation_name

    opt_3149 ::= seq_3148 | $empty

    seq_3150 ::= datatype opt_3149

    opt_3151 ::= seq_3150 | $empty

    grp_3152 ::= VISIBLE | INVISIBLE

    opt_3153 ::= grp_3152 | $empty

    opt_3154 ::= virtual_column_expression | $empty

    opt_3155 ::= VIRTUAL | $empty

    opt_3156 ::= evaluation_edition_clause | $empty

    grp_3158 ::= CURRENT EDITION | EDITION edition_name

    grp_3157 ::= UNUSABLE BEFORE grp_3158

    opt_3159 ::= grp_3157 | $empty

    grp_3162 ::= CURRENT | NULL_

    grp_3161 ::= grp_3162 EDITION | EDITION edition_name

    grp_3160 ::= UNUSABLE BEGINNING WITH grp_3161

    opt_3163 ::= grp_3160 | $empty

    list_3164 ::= $empty | list_3164 inline_constraint

    opt_3165 ::= by_user_for_statistics_clause | $empty

    opt_3166 ::= ALWAYS | $empty

    seq_3167 ::= GENERATED opt_3166

    opt_3168 ::= seq_3167 | $empty

    seq_3170 ::= ON NULL_

    opt_3171 ::= seq_3170 | $empty

    grp_3169 ::= ALWAYS | BY DEFAULT opt_3171

    opt_3172 ::= grp_3169 | $empty

    grp_3174 ::= sequence_start_clause | sequence_spec

    list_3175 ::= $empty | list_3175 grp_3174

    grp_3173 ::= LPAREN list_3175 RPAREN

    opt_3176 ::= grp_3173 | $empty

    grp_3178 ::= CURRENT | NULL_

    grp_3177 ::= grp_3178 EDITION | EDITION edition_name

    grp_3179 ::= nested_item | COLUMN_VALUE

    opt_3180 ::= substitutable_column_clause | $empty

    grp_3181 ::= LOCAL | GLOBAL

    opt_3182 ::= grp_3181 | $empty

    grp_3184 ::= LPAREN object_properties RPAREN | physical_properties | column_properties

    list_3185 ::= grp_3184 | list_3185 grp_3184

    grp_3183 ::= LPAREN list_3185 RPAREN

    opt_3186 ::= grp_3183 | $empty

    opt_3188 ::= AS | $empty

    grp_3189 ::= LOCATOR | VALUE

    grp_3187 ::= RETURN opt_3188 grp_3189

    opt_3190 ::= grp_3187 | $empty

    opt_3191 ::= ELEMENT | $empty

    opt_3192 ::= TYPE | $empty

    opt_3193 ::= NOT | $empty

    grp_3194 ::= supplemental_log_grp_clause | supplemental_id_key_clause

    seq_3196 ::= COMMA out_of_line_constraint

    list_3197 ::= $empty | list_3197 seq_3196

    grp_3195 ::= out_of_line_constraint list_3197 | out_of_line_ref_constraint

    grp_3198 ::= out_of_line_constraint | out_of_line_ref_constraint

    seq_3200 ::= COMMA column_name

    list_3201 ::= $empty | list_3201 seq_3200

    grp_3199 ::= CONSTRAINT constraint_name | PRIMARY KEY | UNIQUE LPAREN column_name list_3201 RPAREN

    opt_3202 ::= CASCADE | $empty

    list_3203 ::= drop_constraint_clause | list_3203 drop_constraint_clause

    seq_3205 ::= COMMA column_name

    list_3206 ::= $empty | list_3206 seq_3205

    grp_3204 ::= PRIMARY KEY | UNIQUE LPAREN column_name list_3206 RPAREN | CONSTRAINT constraint_name

    opt_3207 ::= CASCADE | $empty

    grp_3209 ::= KEY | DROP

    grp_3208 ::= grp_3209 INDEX

    opt_3210 ::= grp_3208 | $empty

    opt_3211 ::= ONLINE | $empty

    opt_3212 ::= DISABLE | $empty

    opt_3213 ::= on_delete_clause | $empty

    opt_3214 ::= paren_column_list | $empty

    grp_3216 ::= CASCADE | SET NULL_

    grp_3215 ::= ON DELETE grp_3216

    opt_3217 ::= grp_3215 | $empty

    grp_3218 ::= CASCADE | SET NULL_

    opt_3219 ::= seq_of_declare_specs | $empty

    seq_3220 ::= DECLARE opt_3219

    opt_3221 ::= seq_3220 | $empty

    list_3222 ::= exception_handler | list_3222 exception_handler

    seq_3223 ::= EXCEPTION list_3222

    opt_3224 ::= seq_3223 | $empty

    grp_3225 ::= CURRENT_USER | DEFINER

    grp_3226 ::= LANGUAGE C_LETTER | EXTERNAL

    seq_3228 ::= NAME id_expression

    opt_3229 ::= seq_3228 | $empty

    grp_3227 ::= NAME id_expression LIBRARY identifier | LIBRARY identifier opt_3229

    opt_3230 ::= c_agent_in_clause | $empty

    seq_3231 ::= WITH CONTEXT

    opt_3232 ::= seq_3231 | $empty

    opt_3233 ::= c_parameters_clause | $empty

    seq_3234 ::= COMMA c_external_parameter

    list_3235 ::= $empty | list_3235 seq_3234

    grp_3236 ::= TDO | c_property

    opt_3237 ::= grp_3236 | $empty

    grp_3238 ::= parameter_name | RETURN

    opt_3239 ::= c_property | $empty

    seq_3240 ::= BY REFERENCE

    opt_3241 ::= seq_3240 | $empty

    opt_3242 ::= regular_id | $empty

    grp_3243 ::= STRUCT | TDO

    opt_3244 ::= grp_3243 | $empty

    grp_3245 ::= IN | OUT | INOUT | NOCOPY

    list_3246 ::= $empty | list_3246 grp_3245

    opt_3247 ::= type_spec | $empty

    opt_3248 ::= default_value_part | $empty

    grp_3249 ::= ASSIGN_OP | DEFAULT

    list_3250 ::= declare_spec | list_3250 declare_spec

    opt_3251 ::= CONSTANT | $empty

    opt_3252 ::= NOT | $empty

    seq_3253 ::= opt_3252 NULL_

    opt_3254 ::= seq_3253 | $empty

    opt_3255 ::= default_value_part | $empty

    seq_3256 ::= RANGE expression DOTDOT expression

    opt_3257 ::= seq_3256 | $empty

    seq_3258 ::= NOT NULL_

    opt_3259 ::= seq_3258 | $empty

    seq_3260 ::= COMMA parameter_spec

    list_3261 ::= $empty | list_3261 seq_3260

    seq_3262 ::= LPAREN parameter_spec list_3261 RPAREN

    opt_3263 ::= seq_3262 | $empty

    seq_3264 ::= RETURN type_spec

    opt_3265 ::= seq_3264 | $empty

    seq_3266 ::= IS select_statement

    opt_3267 ::= seq_3266 | $empty

    opt_3268 ::= IN | $empty

    seq_3269 ::= opt_3268 type_spec

    opt_3270 ::= seq_3269 | $empty

    opt_3271 ::= default_value_part | $empty

    grp_3273 ::= identifier | DEFAULT

    seq_3274 ::= COMMA identifier

    list_3275 ::= seq_3274 | list_3275 seq_3274

    seq_3276 ::= COMMA CHAR_STRING

    opt_3277 ::= seq_3276 | $empty

    grp_3272 ::= SERIALLY_REUSABLE | AUTONOMOUS_TRANSACTION | EXCEPTION_INIT LPAREN exception_name COMMA numeric_negative RPAREN | INLINE LPAREN identifier COMMA expression RPAREN | RESTRICT_REFERENCES LPAREN grp_3273 list_3275 RPAREN | DEPRECATE LPAREN identifier opt_3277 RPAREN | UDF

    seq_3278 ::= COMMA field_spec

    list_3279 ::= $empty | list_3279 seq_3278

    opt_3280 ::= type_spec | $empty

    seq_3281 ::= NOT NULL_

    opt_3282 ::= seq_3281 | $empty

    opt_3283 ::= default_value_part | $empty

    seq_3284 ::= RETURN type_spec

    opt_3285 ::= seq_3284 | $empty

    grp_3286 ::= table_type_def | varray_type_def | record_type_def | ref_cursor_type_def

    seq_3287 ::= NOT NULL_

    opt_3288 ::= seq_3287 | $empty

    opt_3289 ::= table_indexed_by_part | $empty

    grp_3290 ::= INDEXED | INDEX

    opt_3292 ::= VARYING | $empty

    grp_3291 ::= VARRAY | opt_3292 ARRAY

    seq_3293 ::= NOT NULL_

    opt_3294 ::= seq_3293 | $empty

    list_3296 ::= $empty | list_3296 pragma_declaration

    grp_3297 ::= SEMI

    grp_3295 ::= list_3296 statement grp_3297 | label_declaration | selection_directive

    list_3298 ::= grp_3295 | list_3298 grp_3295

    grp_3299 ::= general_element | bind_variable

    opt_3300 ::= label_name | $empty

    seq_3301 ::= WHEN condition

    opt_3302 ::= seq_3301 | $empty

    opt_3303 ::= label_name | $empty

    seq_3304 ::= WHEN condition

    opt_3305 ::= seq_3304 | $empty

    list_3306 ::= $empty | list_3306 elsif_part

    opt_3307 ::= else_part | $empty

    opt_3308 ::= label_declaration | $empty

    grp_3309 ::= WHILE condition | FOR cursor_loop_param

    opt_3310 ::= grp_3309 | $empty

    opt_3311 ::= label_name | $empty

    opt_3312 ::= REVERSE | $empty

    opt_3314 ::= expressions_ | $empty

    seq_3315 ::= LPAREN opt_3314 RPAREN

    opt_3316 ::= seq_3315 | $empty

    grp_3313 ::= cursor_name opt_3316 | LPAREN select_statement RPAREN

    seq_3317 ::= SAVE EXCEPTIONS

    opt_3318 ::= seq_3317 | $empty

    grp_3319 ::= data_manipulation_language_statements | execute_immediate

    opt_3320 ::= between_bound | $empty

    opt_3321 ::= exception_name | $empty

    opt_3322 ::= expression | $empty

    opt_3323 ::= CALL | $empty

    opt_3324 ::= function_argument | $empty

    opt_3325 ::= function_argument | $empty

    seq_3326 ::= DOT routine_name opt_3325

    list_3327 ::= $empty | list_3327 seq_3326

    seq_3328 ::= INTO bind_variable

    opt_3329 ::= seq_3328 | $empty

    opt_3330 ::= selection_directive_body | $empty

    opt_3331 ::= selection_directive_body | $empty

    seq_3332 ::= DOLLAR_ELSIF condition DOLLAR_THEN opt_3331

    list_3333 ::= $empty | list_3333 seq_3332

    opt_3334 ::= selection_directive_body | $empty

    seq_3335 ::= DOLLAR_ELSE opt_3334

    opt_3336 ::= seq_3335 | $empty

    opt_3338 ::= pragma_declaration | $empty

    grp_3337 ::= opt_3338 statement SEMI | variable_declaration | error_directive | function_body | procedure_body

    list_3339 ::= grp_3337 | list_3339 grp_3337

    list_3340 ::= exception_handler | list_3340 exception_handler

    seq_3341 ::= EXCEPTION list_3340

    opt_3342 ::= seq_3341 | $empty

    opt_3343 ::= label_name | $empty

    seq_3344 ::= OR exception_name

    list_3345 ::= $empty | list_3345 seq_3344

    list_3346 ::= $empty | list_3346 declare_spec

    seq_3347 ::= DECLARE list_3346

    opt_3348 ::= seq_3347 | $empty

    list_3349 ::= $empty | list_3349 declare_spec

    list_3350 ::= $empty | list_3350 declare_spec

    seq_3351 ::= DECLARE list_3350

    opt_3352 ::= seq_3351 | $empty

    opt_3354 ::= using_clause | $empty

    opt_3355 ::= dynamic_returning_clause | $empty

    grp_3353 ::= into_clause opt_3354 | using_clause opt_3355 | dynamic_returning_clause

    opt_3356 ::= grp_3353 | $empty

    grp_3357 ::= RETURNING | RETURN

    opt_3358 ::= expressions_ | $empty

    seq_3359 ::= LPAREN opt_3358 RPAREN

    opt_3360 ::= seq_3359 | $empty

    seq_3362 ::= COMMA variable_or_collection

    list_3363 ::= $empty | list_3363 seq_3362

    seq_3364 ::= COMMA variable_or_collection

    list_3365 ::= $empty | list_3365 seq_3364

    grp_3367 ::= numeric | variable_or_collection

    grp_3366 ::= LIMIT grp_3367

    opt_3368 ::= grp_3366 | $empty

    grp_3361 ::= INTO variable_or_collection list_3363 | BULK COLLECT INTO variable_or_collection list_3365 opt_3368

    grp_3369 ::= select_statement | expression

    opt_3370 ::= using_clause | $empty

    grp_3372 ::= ONLY | WRITE

    grp_3373 ::= SERIALIZABLE | READ COMMITTED

    grp_3371 ::= READ grp_3372 | ISOLATION LEVEL grp_3373 | USE ROLLBACK SEGMENT rollback_segment_name

    opt_3374 ::= grp_3371 | $empty

    seq_3375 ::= NAME quoted_string

    opt_3376 ::= seq_3375 | $empty

    grp_3377 ::= CONSTRAINT | CONSTRAINTS

    seq_3379 ::= COMMA constraint_name

    list_3380 ::= $empty | list_3380 seq_3379

    grp_3378 ::= ALL | constraint_name list_3380

    grp_3381 ::= IMMEDIATE | DEFERRED

    opt_3382 ::= WORK | $empty

    opt_3383 ::= write_clause | $empty

    opt_3385 ::= write_clause | $empty

    seq_3387 ::= COMMA numeric

    opt_3388 ::= seq_3387 | $empty

    grp_3386 ::= CHAR_STRING opt_3388 | CORRUPT_XID CHAR_STRING | CORRUPT_XID_ALL

    grp_3384 ::= COMMENT CHAR_STRING opt_3385 | FORCE grp_3386

    opt_3389 ::= grp_3384 | $empty

    grp_3391 ::= IMMEDIATE | BATCH

    grp_3392 ::= WAIT | NOWAIT

    grp_3390 ::= grp_3391 | grp_3392

    list_3393 ::= $empty | list_3393 grp_3390

    opt_3394 ::= WORK | $empty

    opt_3396 ::= SAVEPOINT | $empty

    grp_3395 ::= TO opt_3396 savepoint_name | FORCE quoted_string

    opt_3397 ::= grp_3395 | $empty

    grp_3399 ::= DELETE | EXTEND

    list_3400 ::= index | list_3400 index

    list_3401 ::= index | list_3401 index

    seq_3402 ::= COMMA list_3401 expression

    list_3403 ::= $empty | list_3403 seq_3402

    seq_3404 ::= LPAREN list_3400 expression list_3403 RPAREN

    opt_3405 ::= seq_3404 | $empty

    list_3406 ::= index | list_3406 index

    seq_3407 ::= LPAREN list_3406 expression RPAREN

    opt_3408 ::= seq_3407 | $empty

    grp_3398 ::= grp_3399 opt_3405 | TRIM opt_3408

    seq_3409 ::= SET STATEMENT_ID EQ quoted_string

    opt_3410 ::= seq_3409 | $empty

    seq_3411 ::= INTO tableview_name

    opt_3412 ::= seq_3411 | $empty

    grp_3413 ::= select_statement | update_statement | delete_statement | insert_statement | merge_statement

    opt_3414 ::= with_clause | $empty

    grp_3415 ::= for_update_clause | order_by_clause | offset_clause | fetch_clause

    list_3416 ::= $empty | list_3416 grp_3415

    grp_3417 ::= function_body | procedure_body

    list_3418 ::= $empty | list_3418 grp_3417

    seq_3419 ::= COMMA with_factoring_clause

    list_3420 ::= $empty | list_3420 seq_3419

    grp_3421 ::= function_body | procedure_body

    list_3422 ::= grp_3421 | list_3422 grp_3421

    seq_3423 ::= COMMA with_factoring_clause

    list_3424 ::= $empty | list_3424 seq_3423

    seq_3425 ::= with_factoring_clause list_3424

    opt_3426 ::= seq_3425 | $empty

    opt_3427 ::= paren_column_list | $empty

    opt_3428 ::= order_by_clause | $empty

    opt_3429 ::= search_clause | $empty

    opt_3430 ::= cycle_clause | $empty

    grp_3431 ::= DEPTH | BREADTH

    opt_3432 ::= ASC | $empty

    opt_3433 ::= DESC | $empty

    seq_3434 ::= NULLS FIRST

    opt_3435 ::= seq_3434 | $empty

    seq_3436 ::= NULLS LAST

    opt_3437 ::= seq_3436 | $empty

    opt_3438 ::= ASC | $empty

    opt_3439 ::= DESC | $empty

    seq_3440 ::= NULLS FIRST

    opt_3441 ::= seq_3440 | $empty

    seq_3442 ::= NULLS LAST

    opt_3443 ::= seq_3442 | $empty

    seq_3444 ::= COMMA column_name opt_3438 opt_3439 opt_3441 opt_3443

    list_3445 ::= $empty | list_3445 seq_3444

    opt_3446 ::= hierarchies_clause | $empty

    opt_3447 ::= filter_clauses | $empty

    opt_3448 ::= add_calcs_clause | $empty

    list_3449 ::= hier_alias | list_3449 hier_alias

    list_3450 ::= hier_alias | list_3450 hier_alias

    seq_3451 ::= COMMA list_3450 object_name

    list_3452 ::= $empty | list_3452 seq_3451

    seq_3453 ::= COMMA filter_clause

    list_3454 ::= $empty | list_3454 seq_3453

    grp_3455 ::= MEASURES | object_name

    seq_3456 ::= COMMA add_calc_meas_clause

    list_3457 ::= $empty | list_3457 seq_3456

    list_3458 ::= $empty | list_3458 subquery_operation_part

    opt_3460 ::= ALL | $empty

    grp_3459 ::= UNION opt_3460 | INTERSECT | MINUS

    grp_3461 ::= DISTINCT | UNIQUE | ALL

    opt_3462 ::= grp_3461 | $empty

    opt_3463 ::= into_clause | $empty

    opt_3464 ::= from_clause | $empty

    opt_3465 ::= where_clause | $empty

    grp_3466 ::= hierarchical_query_clause | group_by_clause

    list_3467 ::= $empty | list_3467 grp_3466

    opt_3468 ::= model_clause | $empty

    opt_3469 ::= order_by_clause | $empty

    opt_3470 ::= offset_clause | $empty

    opt_3471 ::= fetch_clause | $empty

    seq_3472 ::= COMMA select_list_elements

    list_3473 ::= $empty | list_3473 seq_3472

    opt_3474 ::= column_alias | $empty

    seq_3475 ::= COMMA table_ref

    list_3476 ::= $empty | list_3476 seq_3475

    list_3477 ::= $empty | list_3477 join_clause

    grp_3478 ::= pivot_clause | unpivot_clause

    opt_3479 ::= grp_3478 | $empty

    list_3480 ::= $empty | list_3480 flashback_query_clause

    opt_3481 ::= table_alias | $empty

    grp_3482 ::= pivot_clause | unpivot_clause

    opt_3483 ::= grp_3482 | $empty

    list_3484 ::= $empty | list_3484 subquery_operation_part

    grp_3485 ::= pivot_clause | unpivot_clause

    opt_3486 ::= grp_3485 | $empty

    opt_3487 ::= query_partition_clause | $empty

    grp_3488 ::= CROSS | NATURAL

    opt_3489 ::= grp_3488 | $empty

    grp_3490 ::= INNER | outer_join_type

    opt_3491 ::= grp_3490 | $empty

    opt_3492 ::= query_partition_clause | $empty

    grp_3493 ::= join_on_part | join_using_part

    list_3494 ::= $empty | list_3494 grp_3493

    grp_3495 ::= CROSS | OUTER

    grp_3496 ::= FULL | LEFT | RIGHT

    opt_3497 ::= OUTER | $empty

    grp_3500 ::= subquery | expressions_

    opt_3501 ::= grp_3500 | $empty

    grp_3499 ::= LPAREN opt_3501 RPAREN

    grp_3498 ::= grp_3499 | expressions_

    grp_3503 ::= SCN | TIMESTAMP

    grp_3502 ::= PERIOD_KEYWORD FOR column_name BETWEEN | BETWEEN grp_3503

    grp_3505 ::= SCN | TIMESTAMP | SNAPSHOT

    grp_3504 ::= grp_3505 expression | PERIOD_KEYWORD FOR column_name expression

    opt_3506 ::= XML | $empty

    seq_3507 ::= COMMA pivot_element

    list_3508 ::= $empty | list_3508 seq_3507

    opt_3509 ::= table_alias | $empty

    grp_3510 ::= numeric_function | aggregate_function_name LPAREN expression RPAREN

    opt_3511 ::= column_alias | $empty

    grp_3512 ::= column_name | paren_column_list

    seq_3514 ::= COMMA ANY

    list_3515 ::= $empty | list_3515 seq_3514

    seq_3516 ::= COMMA pivot_in_clause_element

    list_3517 ::= $empty | list_3517 seq_3516

    grp_3513 ::= subquery | ANY list_3515 | pivot_in_clause_element list_3517

    opt_3518 ::= column_alias | $empty

    opt_3519 ::= expressions_ | $empty

    grp_3521 ::= INCLUDE | EXCLUDE

    grp_3520 ::= grp_3521 NULLS

    opt_3522 ::= grp_3520 | $empty

    grp_3523 ::= column_name | paren_column_list

    opt_3524 ::= table_alias | $empty

    seq_3525 ::= COMMA unpivot_in_elements

    list_3526 ::= $empty | list_3526 seq_3525

    grp_3527 ::= column_name | paren_column_list

    seq_3530 ::= COMMA constant

    list_3531 ::= $empty | list_3531 seq_3530

    grp_3529 ::= constant | LPAREN constant list_3531 RPAREN

    grp_3528 ::= AS grp_3529

    opt_3532 ::= grp_3528 | $empty

    opt_3533 ::= NOCYCLE | $empty

    opt_3534 ::= start_part | $empty

    opt_3535 ::= NOCYCLE | $empty

    seq_3536 ::= COMMA group_by_elements

    list_3537 ::= $empty | list_3537 seq_3536

    opt_3538 ::= having_clause | $empty

    seq_3539 ::= COMMA group_by_elements

    list_3540 ::= $empty | list_3540 seq_3539

    seq_3541 ::= GROUP BY group_by_elements list_3540

    opt_3542 ::= seq_3541 | $empty

    grp_3543 ::= ROLLUP | CUBE

    seq_3544 ::= COMMA grouping_sets_elements

    list_3545 ::= $empty | list_3545 seq_3544

    seq_3546 ::= COMMA grouping_sets_elements

    list_3547 ::= $empty | list_3547 seq_3546

    opt_3548 ::= expressions_ | $empty

    list_3549 ::= $empty | list_3549 cell_reference_options

    opt_3550 ::= return_rows_clause | $empty

    list_3551 ::= $empty | list_3551 reference_model

    grp_3552 ::= IGNORE | KEEP

    grp_3553 ::= DIMENSION | SINGLE REFERENCE

    grp_3554 ::= UPDATED | ALL

    list_3555 ::= $empty | list_3555 cell_reference_options

    seq_3556 ::= MAIN main_model_name

    opt_3557 ::= seq_3556 | $empty

    list_3558 ::= $empty | list_3558 cell_reference_options

    opt_3559 ::= model_column_partition_part | $empty

    seq_3560 ::= COMMA model_column

    list_3561 ::= $empty | list_3561 seq_3560

    grp_3562 ::= expression | query_block

    opt_3563 ::= column_alias | $empty

    opt_3564 ::= model_rules_part | $empty

    seq_3565 ::= COMMA model_rules_element

    list_3566 ::= $empty | list_3566 seq_3565

    seq_3567 ::= model_rules_element list_3566

    opt_3568 ::= seq_3567 | $empty

    opt_3570 ::= ALL | $empty

    grp_3569 ::= UPDATE | UPSERT opt_3570

    opt_3571 ::= grp_3569 | $empty

    grp_3573 ::= AUTOMATIC | SEQUENTIAL

    grp_3572 ::= grp_3573 ORDER

    opt_3574 ::= grp_3572 | $empty

    opt_3575 ::= model_iterate_clause | $empty

    opt_3577 ::= ALL | $empty

    grp_3576 ::= UPDATE | UPSERT opt_3577

    opt_3578 ::= grp_3576 | $empty

    opt_3579 ::= order_by_clause | $empty

    opt_3580 ::= until_part | $empty

    opt_3581 ::= SIBLINGS | $empty

    seq_3582 ::= COMMA order_by_elements

    list_3583 ::= $empty | list_3583 seq_3582

    grp_3584 ::= ASC | DESC

    opt_3585 ::= grp_3584 | $empty

    grp_3587 ::= FIRST | LAST

    grp_3586 ::= NULLS grp_3587

    opt_3588 ::= grp_3586 | $empty

    grp_3589 ::= ROW | ROWS

    grp_3590 ::= FIRST | NEXT

    opt_3591 ::= PERCENT_KEYWORD | $empty

    seq_3592 ::= expression opt_3591

    opt_3593 ::= seq_3592 | $empty

    grp_3594 ::= ROW | ROWS

    grp_3595 ::= ONLY | WITH TIES

    opt_3596 ::= for_update_of_part | $empty

    opt_3597 ::= for_update_options | $empty

    opt_3598 ::= where_clause | $empty

    opt_3599 ::= static_returning_clause | $empty

    opt_3600 ::= error_logging_clause | $empty

    seq_3602 ::= COMMA column_based_update_set_clause

    list_3603 ::= $empty | list_3603 seq_3602

    grp_3601 ::= column_based_update_set_clause list_3603 | VALUE LPAREN identifier RPAREN EQ expression

    opt_3604 ::= FROM | $empty

    opt_3605 ::= where_clause | $empty

    opt_3606 ::= static_returning_clause | $empty

    opt_3607 ::= error_logging_clause | $empty

    grp_3608 ::= single_table_insert | multi_table_insert

    opt_3610 ::= static_returning_clause | $empty

    grp_3609 ::= values_clause opt_3610 | select_statement

    opt_3611 ::= error_logging_clause | $empty

    list_3613 ::= multi_table_element | list_3613 multi_table_element

    grp_3612 ::= ALL list_3613 | conditional_insert_clause

    opt_3614 ::= values_clause | $empty

    opt_3615 ::= error_logging_clause | $empty

    grp_3616 ::= ALL | FIRST

    opt_3617 ::= grp_3616 | $empty

    list_3618 ::= conditional_insert_when_part | list_3618 conditional_insert_when_part

    opt_3619 ::= conditional_insert_else_part | $empty

    list_3620 ::= multi_table_element | list_3620 multi_table_element

    list_3621 ::= multi_table_element | list_3621 multi_table_element

    opt_3622 ::= FIELDS | $empty

    opt_3623 ::= paren_column_list | $empty

    grp_3624 ::= REGULAR_ID | LPAREN expressions_ RPAREN | collection_expression

    opt_3626 ::= merge_insert_clause | $empty

    opt_3627 ::= merge_update_clause | $empty

    grp_3625 ::= merge_update_clause opt_3626 | merge_insert_clause opt_3627

    opt_3628 ::= error_logging_clause | $empty

    opt_3629 ::= static_returning_clause | $empty

    seq_3630 ::= COMMA merge_element

    list_3631 ::= $empty | list_3631 seq_3630

    opt_3632 ::= where_clause | $empty

    opt_3633 ::= merge_update_delete_part | $empty

    opt_3634 ::= paren_column_list | $empty

    opt_3635 ::= where_clause | $empty

    grp_3636 ::= tableview_name | LPAREN select_statement RPAREN | table_collection_expression | LPAREN table_collection_expression RPAREN

    opt_3637 ::= table_alias | $empty

    seq_3638 ::= COMMA lock_table_element

    list_3639 ::= $empty | list_3639 seq_3638

    opt_3640 ::= wait_nowait_part | $empty

    opt_3641 ::= partition_extension_clause | $empty

    opt_3642 ::= UPDATE | $empty

    grp_3643 ::= dml_table_expression_clause | ONLY LPAREN dml_table_expression_clause RPAREN

    opt_3644 ::= table_alias | $empty

    grp_3645 ::= RETURNING | RETURN

    opt_3646 ::= error_logging_into_part | $empty

    opt_3647 ::= expression | $empty

    opt_3648 ::= error_logging_reject_part | $empty

    grp_3649 ::= UNLIMITED | expression

    opt_3650 ::= subquery_restriction_clause | $empty

    opt_3651 ::= hierarchies_clause | $empty

    opt_3652 ::= sample_clause | $empty

    seq_3653 ::= AS identifier

    opt_3654 ::= seq_3653 | $empty

    opt_3655 ::= subquery_restriction_clause | $empty

    seq_3656 ::= RELATIONAL LPAREN tableview_name NOT XMLTYPE RPAREN

    grp_3657 ::= TABLE | THE

    opt_3659 ::= outer_join_sign | $empty

    grp_3658 ::= LPAREN subquery RPAREN | LPAREN expression RPAREN opt_3659

    seq_3661 ::= CONSTRAINT constraint_name

    opt_3662 ::= seq_3661 | $empty

    grp_3660 ::= READ ONLY | CHECK OPTION opt_3662

    opt_3663 ::= BLOCK | $empty

    seq_3664 ::= COMMA expression

    opt_3665 ::= seq_3664 | $empty

    opt_3666 ::= seed_part | $empty

    seq_3667 ::= COMMA expression

    list_3668 ::= $empty | list_3668 seq_3667

    opt_3669 ::= NOT | $empty

    opt_3670 ::= unary_logical_operation | $empty

    opt_3671 ::= NOT | $empty

    opt_3673 ::= TYPE | $empty

    opt_3674 ::= ONLY | $empty

    seq_3675 ::= COMMA type_spec

    list_3676 ::= $empty | list_3676 seq_3675

    seq_3677 ::= FORMAT JSON

    opt_3678 ::= seq_3677 | $empty

    grp_3679 ::= STRICT | LAX

    opt_3680 ::= grp_3679 | $empty

    grp_3682 ::= WITH | WITHOUT

    grp_3681 ::= grp_3682 UNIQUE KEYS

    opt_3683 ::= grp_3681 | $empty

    grp_3672 ::= NULL_ | NAN_ | PRESENT | INFINITE | A_LETTER SET | EMPTY_ | OF opt_3673 LPAREN opt_3674 type_spec list_3676 RPAREN | JSON opt_3678 opt_3680 opt_3683

    opt_3685 ::= NOT | $empty

    grp_3686 ::= MEMBER | SUBMULTISET

    opt_3687 ::= OF | $empty

    grp_3684 ::= opt_3685 grp_3686 opt_3687 concatenation

    opt_3688 ::= grp_3684 | $empty

    grp_3689 ::= EXCEPT | INTERSECT | UNION

    grp_3690 ::= ALL | DISTINCT

    opt_3691 ::= grp_3690 | $empty

    opt_3692 ::= NOT | $empty

    opt_3694 ::= NOT | $empty

    grp_3696 ::= LIKE | LIKEC | LIKE2 | LIKE4

    seq_3697 ::= ESCAPE concatenation

    opt_3698 ::= seq_3697 | $empty

    grp_3695 ::= IN in_elements | BETWEEN between_elements | grp_3696 concatenation opt_3698

    grp_3693 ::= opt_3694 grp_3695

    opt_3699 ::= grp_3693 | $empty

    grp_3700 ::= NOT_EQUAL_OP | LT GT | BANG EQ | CARET EQ

    grp_3701 ::= LT | GT

    opt_3702 ::= EQ | $empty

    seq_3703 ::= COMMA concatenation

    list_3704 ::= $empty | list_3704 seq_3703

    grp_3706 ::= LOCAL | TIME ZONE concatenation

    grp_3705 ::= AT grp_3706 | interval_expression

    opt_3707 ::= grp_3705 | $empty

    grp_3709 ::= TRUNCATE | ERROR

    grp_3708 ::= ON OVERFLOW_ grp_3709

    opt_3710 ::= grp_3708 | $empty

    grp_3711 ::= ASTERISK | SOLIDUS | MOD

    grp_3712 ::= PLUS_SIGN | MINUS_SIGN

    seq_3713 ::= LPAREN concatenation RPAREN

    opt_3714 ::= seq_3713 | $empty

    seq_3715 ::= LPAREN concatenation RPAREN

    opt_3716 ::= seq_3715 | $empty

    seq_3717 ::= LPAREN concatenation RPAREN

    opt_3718 ::= seq_3717 | $empty

    grp_3719 ::= MINUS | PLUS

    opt_3720 ::= grp_3719 | $empty

    seq_3721 ::= LBRACKET model_expression_element RBRACKET

    opt_3722 ::= seq_3721 | $empty

    grp_3723 ::= ANY | expression

    grp_3725 ::= ANY | expression

    grp_3724 ::= COMMA grp_3725

    list_3726 ::= $empty | list_3726 grp_3724

    seq_3727 ::= COMMA single_column_for_loop

    list_3728 ::= $empty | list_3728 seq_3727

    opt_3730 ::= expressions_ | $empty

    seq_3731 ::= LIKE expression

    opt_3732 ::= seq_3731 | $empty

    grp_3733 ::= INCREMENT | DECREMENT

    grp_3729 ::= IN LPAREN opt_3730 RPAREN | opt_3732 FROM expression TO expression grp_3733 expression

    opt_3735 ::= expressions_ | $empty

    grp_3734 ::= subquery | LPAREN opt_3735 RPAREN

    grp_3738 ::= COUNT | FIRST | LAST | LIMIT

    grp_3739 ::= EXISTS | NEXT | PRIOR

    list_3740 ::= index | list_3740 index

    grp_3737 ::= grp_3738 | grp_3739 LPAREN list_3740 expression RPAREN

    grp_3736 ::= DOT grp_3737

    opt_3741 ::= grp_3736 | $empty

    grp_3744 ::= ERROR_INDEX | ERROR_CODE

    grp_3743 ::= DOT COUNT | LPAREN expression RPAREN DOT grp_3744

    grp_3742 ::= PERCENT_BULK_ROWCOUNT LPAREN expression RPAREN | PERCENT_BULK_EXCEPTIONS grp_3743

    seq_3745 ::= DOT general_element_part

    list_3746 ::= $empty | list_3746 seq_3745

    opt_3747 ::= label_declaration | $empty

    list_3748 ::= case_when_part_statement | list_3748 case_when_part_statement

    opt_3749 ::= case_else_part_statement | $empty

    opt_3750 ::= CASE | $empty

    opt_3751 ::= label_name | $empty

    opt_3752 ::= label_declaration | $empty

    list_3753 ::= case_when_part_statement | list_3753 case_when_part_statement

    opt_3754 ::= case_else_part_statement | $empty

    opt_3755 ::= CASE | $empty

    opt_3756 ::= label_name | $empty

    list_3757 ::= case_when_part_expression | list_3757 case_when_part_expression

    opt_3758 ::= case_else_part_expression | $empty

    opt_3759 ::= CASE | $empty

    list_3760 ::= case_when_part_expression | list_3760 case_when_part_expression

    opt_3761 ::= case_else_part_expression | $empty

    opt_3762 ::= CASE | $empty

    opt_3763 ::= outer_join_sign | $empty

    list_3764 ::= $empty | list_3764 subquery_operation_part

    grp_3765 ::= SOME | EXISTS | ALL | ANY

    seq_3767 ::= COMMA expression

    list_3768 ::= $empty | list_3768 seq_3767

    grp_3766 ::= LPAREN select_only_statement RPAREN | LPAREN expression list_3768 RPAREN

    seq_3769 ::= COMMA expression

    opt_3770 ::= seq_3769 | $empty

    grp_3771 ::= table_element | standard_function | expression

    seq_3772 ::= COMMA quoted_string

    opt_3773 ::= seq_3772 | $empty

    seq_3774 ::= COMMA quoted_string

    opt_3775 ::= seq_3774 | $empty

    grp_3777 ::= LEADING | TRAILING | BOTH

    opt_3778 ::= grp_3777 | $empty

    opt_3779 ::= expression | $empty

    grp_3776 ::= opt_3778 opt_3779 FROM

    opt_3780 ::= grp_3776 | $empty

    grp_3781 ::= table_element | standard_function | expression

    seq_3782 ::= DEFAULT concatenation ON CONVERSION ERROR

    opt_3783 ::= seq_3782 | $empty

    seq_3784 ::= COMMA quoted_string

    opt_3785 ::= seq_3784 | $empty

    seq_3786 ::= COMMA quoted_string opt_3785

    opt_3787 ::= seq_3786 | $empty

    seq_3788 ::= COMMA json_array_element

    list_3789 ::= $empty | list_3789 seq_3788

    opt_3790 ::= json_on_null_clause | $empty

    opt_3791 ::= json_return_clause | $empty

    opt_3792 ::= STRICT | $empty

    seq_3793 ::= FORMAT JSON

    opt_3794 ::= seq_3793 | $empty

    opt_3795 ::= order_by_clause | $empty

    opt_3796 ::= json_on_null_clause | $empty

    opt_3797 ::= json_return_clause | $empty

    opt_3798 ::= STRICT | $empty

    opt_3799 ::= KEY | $empty

    grp_3801 ::= NULL_ | ABSENT

    grp_3800 ::= grp_3801 ON NULL_

    opt_3802 ::= grp_3800 | $empty

    grp_3806 ::= BYTE | CHAR

    opt_3807 ::= grp_3806 | $empty

    grp_3805 ::= LPAREN UNSIGNED_INTEGER opt_3807 RPAREN

    opt_3808 ::= grp_3805 | $empty

    grp_3804 ::= VARCHAR2 opt_3808 | CLOB | BLOB

    grp_3803 ::= RETURNING grp_3804

    opt_3809 ::= grp_3803 | $empty

    opt_3810 ::= STRICT | $empty

    seq_3811 ::= WITH UNIQUE KEYS

    opt_3812 ::= seq_3811 | $empty

    seq_3813 ::= FORMAT JSON

    opt_3814 ::= seq_3813 | $empty

    opt_3815 ::= json_query_wrapper_clause | $empty

    opt_3816 ::= json_query_on_error_clause | $empty

    opt_3817 ::= json_query_on_empty_clause | $empty

    seq_3818 ::= RETURNING json_query_return_type

    opt_3819 ::= seq_3818 | $empty

    opt_3820 ::= PRETTY | $empty

    opt_3821 ::= ASCII | $empty

    opt_3822 ::= TRUNCATE | $empty

    grp_3825 ::= ARRAY | OBJECT

    grp_3824 ::= NULL_ | ERROR | EMPTY_ grp_3825

    grp_3823 ::= grp_3824 ON ERROR

    opt_3826 ::= grp_3823 | $empty

    seq_3827 ::= COMMA json_transform_op

    list_3828 ::= $empty | list_3828 seq_3827

    seq_3829 ::= FORMAT JSON

    opt_3830 ::= seq_3829 | $empty

    opt_3832 ::= CHAR_STRING | $empty

    opt_3833 ::= json_value_return_clause | $empty

    grp_3835 ::= ERROR | NULL_ | DEFAULT literal

    opt_3836 ::= grp_3835 | $empty

    grp_3834 ::= opt_3836 ON ERROR

    opt_3837 ::= grp_3834 | $empty

    grp_3839 ::= ERROR | NULL_ | DEFAULT literal

    opt_3840 ::= grp_3839 | $empty

    grp_3838 ::= opt_3840 ON EMPTY_

    opt_3841 ::= grp_3838 | $empty

    opt_3842 ::= json_value_on_mismatch_clause | $empty

    grp_3831 ::= COMMA opt_3832 opt_3833 opt_3837 opt_3841 opt_3842 EMPTY_LIT

    seq_3844 ::= COMMA json_object_entry

    list_3845 ::= $empty | list_3845 seq_3844

    grp_3843 ::= json_object_entry list_3845 | STAR

    opt_3846 ::= json_on_null_clause | $empty

    opt_3847 ::= json_return_clause | $empty

    opt_3848 ::= STRICT | $empty

    seq_3849 ::= WITH UNIQUE KEYS

    opt_3850 ::= seq_3849 | $empty

    opt_3852 ::= KEY | $empty

    grp_3853 ::= VALUE | IS

    opt_3854 ::= grp_3853 | $empty

    grp_3851 ::= opt_3852 expression opt_3854 expression | expression COLON expression | identifier

    seq_3855 ::= FORMAT JSON

    opt_3856 ::= seq_3855 | $empty

    seq_3857 ::= FORMAT JSON

    opt_3858 ::= seq_3857 | $empty

    seq_3859 ::= COMMA CHAR_STRING

    opt_3860 ::= seq_3859 | $empty

    grp_3862 ::= ERROR | NULL_

    grp_3861 ::= grp_3862 ON ERROR

    opt_3863 ::= grp_3861 | $empty

    grp_3865 ::= EMPTY_ | NULL_

    grp_3864 ::= grp_3865 ON EMPTY_

    opt_3866 ::= grp_3864 | $empty

    opt_3867 ::= json_column_clause | $empty

    grp_3868 ::= expression | CHAR_STRING | NULL_ | UNSIGNED_INTEGER | json_function

    seq_3869 ::= FORMAT JSON

    opt_3870 ::= seq_3869 | $empty

    grp_3871 ::= NULL_ | ABSENT

    grp_3874 ::= BYTE | CHAR

    opt_3875 ::= grp_3874 | $empty

    grp_3873 ::= LPAREN UNSIGNED_INTEGER opt_3875 RPAREN

    opt_3876 ::= grp_3873 | $empty

    grp_3872 ::= VARCHAR2 opt_3876 | CLOB | BLOB

    grp_3878 ::= IGNORE | ERROR

    opt_3879 ::= grp_3878 | $empty

    grp_3877 ::= opt_3879 ON MISSING

    opt_3880 ::= grp_3877 | $empty

    grp_3882 ::= REPLACE | IGNORE | ERROR

    grp_3881 ::= grp_3882 ON EXISTING

    opt_3883 ::= grp_3881 | $empty

    grp_3885 ::= NULL_ | IGNORE | ERROR | REMOVE

    opt_3886 ::= grp_3885 | $empty

    grp_3884 ::= opt_3886 ON NULL_

    opt_3887 ::= grp_3884 | $empty

    grp_3889 ::= CREATE | IGNORE | ERROR

    grp_3888 ::= grp_3889 ON MISSING

    opt_3890 ::= grp_3888 | $empty

    grp_3892 ::= NULL_ | IGNORE | ERROR

    opt_3893 ::= grp_3892 | $empty

    grp_3891 ::= opt_3893 ON NULL_

    opt_3894 ::= grp_3891 | $empty

    seq_3895 ::= FORMAT JSON

    opt_3896 ::= seq_3895 | $empty

    grp_3898 ::= CREATE | IGNORE | ERROR

    grp_3897 ::= grp_3898 ON MISSING

    opt_3899 ::= grp_3897 | $empty

    grp_3901 ::= NULL_ | IGNORE | ERROR

    opt_3902 ::= grp_3901 | $empty

    grp_3900 ::= opt_3902 ON NULL_

    opt_3903 ::= grp_3900 | $empty

    seq_3904 ::= FORMAT JSON

    opt_3905 ::= seq_3904 | $empty

    grp_3907 ::= REPLACE | IGNORE | ERROR

    grp_3906 ::= grp_3907 ON EXISTING

    opt_3908 ::= grp_3906 | $empty

    grp_3910 ::= CREATE | IGNORE | ERROR

    grp_3909 ::= grp_3910 ON MISSING

    opt_3911 ::= grp_3909 | $empty

    grp_3913 ::= NULL_ | IGNORE | ERROR

    opt_3914 ::= grp_3913 | $empty

    grp_3912 ::= opt_3914 ON NULL_

    opt_3915 ::= grp_3912 | $empty

    seq_3916 ::= COMMA json_column_definition

    list_3917 ::= $empty | list_3917 seq_3916

    opt_3918 ::= json_value_return_type | $empty

    opt_3920 ::= EXISTS | $empty

    seq_3921 ::= PATH CHAR_STRING

    opt_3922 ::= seq_3921 | $empty

    grp_3919 ::= opt_3920 PATH CHAR_STRING | TRUNCATE opt_3922

    opt_3923 ::= grp_3919 | $empty

    opt_3924 ::= json_query_on_error_clause | $empty

    opt_3925 ::= json_query_on_empty_clause | $empty

    opt_3926 ::= json_query_return_type | $empty

    opt_3927 ::= TRUNCATE | $empty

    opt_3928 ::= json_query_wrapper_clause | $empty

    opt_3929 ::= PATH | $empty

    seq_3930 ::= LBRACKET ASTERISK RBRACKET

    opt_3931 ::= seq_3930 | $empty

    seq_3932 ::= RETURNING json_query_return_type

    opt_3933 ::= seq_3932 | $empty

    opt_3934 ::= PRETTY | $empty

    opt_3935 ::= ASCII | $empty

    grp_3937 ::= BYTE | CHAR

    opt_3938 ::= grp_3937 | $empty

    grp_3936 ::= LPAREN UNSIGNED_INTEGER opt_3938 RPAREN

    opt_3939 ::= grp_3936 | $empty

    opt_3940 ::= ARRAY | $empty

    seq_3941 ::= WITHOUT opt_3940 WRAPPER

    grp_3943 ::= UNCONDITIONAL | CONDITIONAL

    opt_3944 ::= grp_3943 | $empty

    opt_3945 ::= ARRAY | $empty

    grp_3942 ::= WITH opt_3944 opt_3945 WRAPPER

    grp_3946 ::= ERROR | NULL_ | EMPTY_ | EMPTY_ ARRAY | EMPTY_ OBJECT

    opt_3947 ::= grp_3946 | $empty

    grp_3948 ::= ERROR | NULL_ | EMPTY_ | EMPTY_ ARRAY | EMPTY_ OBJECT

    opt_3949 ::= grp_3948 | $empty

    opt_3950 ::= json_value_return_type | $empty

    opt_3951 ::= ASCII | $empty

    grp_3953 ::= BYTE | CHAR

    opt_3954 ::= grp_3953 | $empty

    grp_3952 ::= LPAREN UNSIGNED_INTEGER opt_3954 RPAREN

    opt_3955 ::= grp_3952 | $empty

    opt_3956 ::= TRUNCATE | $empty

    seq_3957 ::= COMMA INTEGER

    opt_3958 ::= seq_3957 | $empty

    seq_3959 ::= LPAREN INTEGER opt_3958 RPAREN

    opt_3960 ::= seq_3959 | $empty

    seq_3961 ::= WITH TIMEZONE

    opt_3962 ::= seq_3961 | $empty

    seq_3963 ::= USING CASESENSITIVE MAPPING

    opt_3964 ::= seq_3963 | $empty

    grp_3965 ::= IGNORE | ERROR | NULL_

    grp_3966 ::= LPAREN MISSING DATA | EXTRA DATA | TYPE ERROR RPAREN

    opt_3967 ::= grp_3966 | $empty

    grp_3968 ::= single_column_for_loop | multi_column_for_loop

    opt_3969 ::= grp_3968 | $empty

    grp_3970 ::= DISTINCT | ALL

    opt_3971 ::= grp_3970 | $empty

    grp_3972 ::= over_clause | keep_clause

    opt_3973 ::= grp_3972 | $empty

    grp_3976 ::= DISTINCT | UNIQUE | ALL

    opt_3977 ::= grp_3976 | $empty

    grp_3975 ::= opt_3977 concatenation

    opt_3978 ::= grp_3975 | $empty

    grp_3974 ::= ASTERISK | opt_3978

    grp_3979 ::= over_clause | keep_clause

    opt_3980 ::= grp_3979 | $empty

    grp_3982 ::= UNSIGNED_INTEGER | expression

    grp_3981 ::= COMMA grp_3982

    opt_3983 ::= grp_3981 | $empty

    grp_3984 ::= DISTINCT | ALL

    opt_3985 ::= grp_3984 | $empty

    grp_3986 ::= over_clause | keep_clause

    opt_3987 ::= grp_3986 | $empty

    grp_3988 ::= DISTINCT | ALL

    opt_3989 ::= grp_3988 | $empty

    grp_3990 ::= over_clause | keep_clause

    opt_3991 ::= grp_3990 | $empty

    grp_3992 ::= DISTINCT | ALL

    opt_3993 ::= grp_3992 | $empty

    grp_3994 ::= over_clause | keep_clause

    opt_3995 ::= grp_3994 | $empty

    grp_3996 ::= ERROR | TRUNCATE

    opt_3997 ::= CHAR_STRING | $empty

    grp_3999 ::= WITH | WITHOUT

    grp_3998 ::= grp_3999 COUNT

    opt_4000 ::= grp_3998 | $empty

    opt_4001 ::= over_clause | $empty

    opt_4002 ::= using_clause | $empty

    grp_4004 ::= DISTINCT | UNIQUE | ALL

    opt_4005 ::= grp_4004 | $empty

    grp_4003 ::= ASTERISK | opt_4005 concatenation

    opt_4006 ::= over_clause | $empty

    grp_4007 ::= CAST | XMLCAST

    grp_4008 ::= MULTISET LPAREN subquery RPAREN | concatenation

    seq_4009 ::= DEFAULT concatenation ON CONVERSION ERROR

    opt_4010 ::= seq_4009 | $empty

    seq_4011 ::= COMMA quoted_string

    opt_4012 ::= seq_4011 | $empty

    seq_4013 ::= COMMA quoted_string opt_4012

    opt_4014 ::= seq_4013 | $empty

    grp_4016 ::= numeric | quoted_string

    grp_4015 ::= COMMA grp_4016

    opt_4017 ::= grp_4015 | $empty

    grp_4018 ::= DISTINCT | UNIQUE

    opt_4019 ::= grp_4018 | $empty

    opt_4020 ::= collect_order_by_part | $empty

    list_4021 ::= within_or_over_part | list_4021 within_or_over_part

    grp_4022 ::= ALL | DISTINCT | UNIQUE

    opt_4023 ::= grp_4022 | $empty

    seq_4024 ::= COMMA expression

    opt_4025 ::= seq_4024 | $empty

    opt_4026 ::= listagg_overflow_clause | $empty

    seq_4027 ::= WITHIN GROUP LPAREN order_by_clause RPAREN

    opt_4028 ::= seq_4027 | $empty

    opt_4029 ::= over_clause | $empty

    grp_4030 ::= PERCENT_ISOPEN | PERCENT_FOUND | PERCENT_NOTFOUND | PERCENT_ROWCOUNT

    grp_4031 ::= CANONICAL | COMPATIBILITY

    opt_4032 ::= grp_4031 | $empty

    grp_4033 ::= FIRST_VALUE | LAST_VALUE

    opt_4034 ::= respect_or_ignore_nulls | $empty

    grp_4035 ::= LEAD | LAG

    opt_4036 ::= respect_or_ignore_nulls | $empty

    opt_4037 ::= cost_matrix_clause | $empty

    opt_4038 ::= using_clause | $empty

    grp_4039 ::= TO_BINARY_DOUBLE | TO_BINARY_FLOAT | TO_NUMBER | TO_TIMESTAMP | TO_TIMESTAMP_TZ

    seq_4040 ::= DEFAULT concatenation ON CONVERSION ERROR

    opt_4041 ::= seq_4040 | $empty

    seq_4042 ::= COMMA quoted_string

    opt_4043 ::= seq_4042 | $empty

    seq_4044 ::= COMMA quoted_string opt_4043

    opt_4045 ::= seq_4044 | $empty

    grp_4046 ::= TO_DSINTERVAL | TO_YMINTERVAL

    seq_4047 ::= DEFAULT concatenation ON CONVERSION ERROR

    opt_4048 ::= seq_4047 | $empty

    grp_4050 ::= CHAR_CS | NCHAR_CS

    grp_4049 ::= USING grp_4050

    opt_4051 ::= grp_4049 | $empty

    seq_4052 ::= COMMA expression

    list_4053 ::= $empty | list_4053 seq_4052

    opt_4054 ::= REF | $empty

    seq_4055 ::= DOT general_element_part

    list_4056 ::= $empty | list_4056 seq_4055

    grp_4058 ::= LEADING | TRAILING | BOTH

    opt_4059 ::= grp_4058 | $empty

    opt_4060 ::= quoted_string | $empty

    grp_4057 ::= opt_4059 opt_4060 FROM

    opt_4061 ::= grp_4057 | $empty

    seq_4062 ::= COMMA quoted_string

    opt_4063 ::= seq_4062 | $empty

    seq_4064 ::= COMMA quoted_string opt_4063

    opt_4065 ::= seq_4064 | $empty

    opt_4066 ::= order_by_clause | $empty

    seq_4067 ::= DOT general_element_part

    list_4068 ::= $empty | list_4068 seq_4067

    grp_4069 ::= XMLCOLATTVAL | XMLFOREST

    seq_4070 ::= COMMA xml_multiuse_expression_element

    list_4071 ::= $empty | list_4071 seq_4070

    seq_4072 ::= DOT general_element_part

    list_4073 ::= $empty | list_4073 seq_4072

    grp_4074 ::= ENTITYESCAPING | NOENTITYESCAPING

    opt_4075 ::= grp_4074 | $empty

    grp_4076 ::= NAME | EVALNAME

    opt_4077 ::= grp_4076 | $empty

    seq_4078 ::= COMMA xml_attributes_clause

    opt_4079 ::= seq_4078 | $empty

    opt_4080 ::= column_alias | $empty

    seq_4081 ::= COMMA expression opt_4080

    list_4082 ::= $empty | list_4082 seq_4081

    seq_4083 ::= DOT general_element_part

    list_4084 ::= $empty | list_4084 seq_4083

    opt_4085 ::= xml_passing_clause | $empty

    grp_4086 ::= DOCUMENT | CONTENT

    opt_4087 ::= WELLFORMED | $empty

    seq_4088 ::= DOT general_element_part

    list_4089 ::= $empty | list_4089 seq_4088

    grp_4090 ::= NAME identifier | EVALNAME concatenation

    seq_4091 ::= COMMA concatenation

    opt_4092 ::= seq_4091 | $empty

    seq_4093 ::= DOT general_element_part

    list_4094 ::= $empty | list_4094 seq_4093

    opt_4095 ::= xml_passing_clause | $empty

    seq_4096 ::= NULL_ ON EMPTY_

    opt_4097 ::= seq_4096 | $empty

    seq_4098 ::= DOT general_element_part

    list_4099 ::= $empty | list_4099 seq_4098

    seq_4100 ::= COMMA xmlroot_param_version_part

    opt_4101 ::= seq_4100 | $empty

    seq_4102 ::= COMMA xmlroot_param_standalone_part

    opt_4103 ::= seq_4102 | $empty

    seq_4104 ::= DOT general_element_part

    list_4105 ::= $empty | list_4105 seq_4104

    grp_4106 ::= DOCUMENT | CONTENT

    seq_4107 ::= AS type_spec

    opt_4108 ::= seq_4107 | $empty

    opt_4109 ::= xmlserialize_param_enconding_part | $empty

    opt_4110 ::= xmlserialize_param_version_part | $empty

    opt_4111 ::= xmlserialize_param_ident_part | $empty

    grp_4113 ::= HIDE | SHOW

    grp_4112 ::= grp_4113 DEFAULTS

    opt_4114 ::= grp_4112 | $empty

    seq_4115 ::= DOT general_element_part

    opt_4116 ::= seq_4115 | $empty

    opt_4118 ::= query_partition_clause | $empty

    opt_4119 ::= windowing_clause | $empty

    seq_4120 ::= order_by_clause opt_4119

    opt_4121 ::= seq_4120 | $empty

    seq_4122 ::= ACROSS ANCESTOR AT LEVEL id_expression

    opt_4123 ::= seq_4122 | $empty

    grp_4117 ::= opt_4118 opt_4121 | HIERARCHY id_expression OFFSET numeric opt_4123

    grp_4124 ::= BETWEEN windowing_elements AND windowing_elements | windowing_elements

    grp_4125 ::= PRECEDING | FOLLOWING

    seq_4127 ::= COMMA using_element

    list_4128 ::= $empty | list_4128 seq_4127

    grp_4126 ::= ASTERISK | using_element list_4128

    seq_4129 ::= COMMA concatenation

    list_4130 ::= $empty | list_4130 seq_4129

    opt_4132 ::= AUTO | $empty

    seq_4133 ::= COMMA cost_class_name

    list_4134 ::= $empty | list_4134 seq_4133

    opt_4135 ::= expressions_ | $empty

    grp_4131 ::= MODEL opt_4132 | LPAREN cost_class_name list_4134 RPAREN VALUES LPAREN opt_4135 RPAREN

    seq_4136 ::= BY VALUE

    opt_4137 ::= seq_4136 | $empty

    opt_4138 ::= column_alias | $empty

    opt_4139 ::= column_alias | $empty

    seq_4140 ::= COMMA expression opt_4139

    list_4141 ::= $empty | list_4141 seq_4140

    grp_4142 ::= ENTITYESCAPING | NOENTITYESCAPING

    opt_4143 ::= grp_4142 | $empty

    grp_4144 ::= SCHEMACHECK | NOSCHEMACHECK

    opt_4145 ::= grp_4144 | $empty

    seq_4146 ::= COMMA xml_multiuse_expression_element

    list_4147 ::= $empty | list_4147 seq_4146

    seq_4148 ::= concatenation column_alias

    opt_4149 ::= seq_4148 | $empty

    seq_4150 ::= COMMA concatenation column_alias

    list_4151 ::= $empty | list_4151 seq_4150

    opt_4152 ::= xml_general_default_part | $empty

    seq_4154 ::= PATH concatenation

    opt_4155 ::= seq_4154 | $empty

    opt_4156 ::= xml_general_default_part | $empty

    grp_4153 ::= FOR ORDINALITY | type_spec opt_4155 opt_4156

    opt_4158 ::= AS | $empty

    seq_4159 ::= opt_4158 id_expression

    seq_4160 ::= AS EVALNAME expression

    grp_4157 ::= seq_4159 | seq_4160

    opt_4161 ::= grp_4157 | $empty

    grp_4162 ::= NO VALUE | expression

    opt_4164 ::= VALUE | $empty

    grp_4163 ::= YES | NO opt_4164

    seq_4165 ::= SIZE EQ concatenation

    opt_4166 ::= seq_4165 | $empty

    grp_4168 ::= IF NOT EXISTS | OR REPLACE

    opt_4169 ::= grp_4168 | $empty

    seq_4170 ::= IF EXISTS

    opt_4171 ::= seq_4170 | $empty

    grp_4167 ::= ADD opt_4169 | DROP opt_4171 | REPLACE

    opt_4172 ::= grp_4167 | $empty

    seq_4173 ::= COMMA annotations_list

    list_4174 ::= $empty | list_4174 seq_4173

    opt_4175 ::= CHAR_STRING | $empty

    grp_4176 ::= ERR | ERRORS

    opt_4178 ::= AT_SIGN | $empty

    grp_4177 ::= START | AT_SIGN opt_4178

    seq_4179 ::= id_expression COLON

    opt_4180 ::= seq_4179 | $empty

    grp_4181 ::= SOLIDUS | RSOLIDUS

    opt_4182 ::= grp_4181 | $empty

    grp_4184 ::= SOLIDUS | RSOLIDUS

    grp_4183 ::= id_expression grp_4184

    list_4185 ::= $empty | list_4185 grp_4183

    grp_4186 ::= SQL | FILE_EXT

    grp_4187 ::= SQLERROR | OSERROR

    grp_4189 ::= SUCCESS | FAILURE | WARNING | variable_name | numeric

    grp_4190 ::= COMMIT | ROLLBACK

    opt_4191 ::= grp_4190 | $empty

    grp_4192 ::= COMMIT | ROLLBACK | NONE

    opt_4193 ::= grp_4192 | $empty

    grp_4188 ::= EXIT grp_4189 opt_4191 | CONTINUE opt_4193

    grp_4196 ::= ON | OFF

    grp_4195 ::= regular_id grp_4196

    list_4197 ::= grp_4195 | list_4197 grp_4195

    grp_4199 ::= CHAR_STRING | ON | OFF | numeric | regular_id

    grp_4198 ::= regular_id grp_4199

    grp_4194 ::= list_4197 | grp_4198

    list_4201 ::= $empty | list_4201 id_expression

    grp_4200 ::= START list_4201 | SHOW | STOP

    opt_4202 ::= grp_4200 | $empty

    opt_4203 ::= COLUMN | $empty

    seq_4204 ::= opt_4203 regular_id

    grp_4205 ::= SUBPARTITION | PARTITION

    opt_4206 ::= FOR | $empty

    opt_4207 ::= expressions_ | $empty

    opt_4208 ::= AS | $empty

    grp_4209 ::= identifier | quoted_string

    grp_4210 ::= CURRENT OF cursor_name | condition

    seq_4211 ::= BULK COLLECT

    opt_4212 ::= seq_4211 | $empty

    grp_4213 ::= general_element | bind_variable

    grp_4215 ::= general_element | bind_variable

    grp_4214 ::= COMMA grp_4215

    list_4216 ::= $empty | list_4216 grp_4214

    seq_4217 ::= DOT id_expression

    list_4218 ::= $empty | list_4218 seq_4217

    seq_4219 ::= AT link_name

    opt_4220 ::= seq_4219 | $empty

    seq_4221 ::= DOT id_expression

    opt_4222 ::= seq_4221 | $empty

    seq_4223 ::= DOT id_expression

    opt_4224 ::= seq_4223 | $empty

    seq_4225 ::= DOT id_expression

    list_4226 ::= $empty | list_4226 seq_4225

    opt_4227 ::= identified_by | $empty

    seq_4228 ::= DOT id_expression

    list_4229 ::= $empty | list_4229 seq_4228

    seq_4230 ::= AT link_name

    opt_4231 ::= seq_4230 | $empty

    seq_4232 ::= DOT id_expression

    list_4233 ::= $empty | list_4233 seq_4232

    seq_4234 ::= DOT id_expression

    list_4235 ::= $empty | list_4235 seq_4234

    seq_4236 ::= DOT id_expression

    list_4237 ::= $empty | list_4237 seq_4236

    seq_4238 ::= DOT id_expression

    opt_4239 ::= seq_4238 | $empty

    seq_4240 ::= DOT id_expression

    opt_4241 ::= seq_4240 | $empty

    seq_4242 ::= DOT id_expression

    opt_4243 ::= seq_4242 | $empty

    seq_4244 ::= INTRODUCER char_set_name

    opt_4245 ::= seq_4244 | $empty

    seq_4246 ::= DOT id_expression

    opt_4247 ::= seq_4246 | $empty

    seq_4248 ::= DOT id_expression

    opt_4249 ::= seq_4248 | $empty

    seq_4250 ::= DOT domain

    list_4251 ::= $empty | list_4251 seq_4250

    seq_4252 ::= AT_SIGN connection_qualifier

    opt_4253 ::= seq_4252 | $empty

    seq_4254 ::= DOT id_expression

    list_4255 ::= $empty | list_4255 seq_4254

    seq_4256 ::= DOT id_expression

    opt_4257 ::= seq_4256 | $empty

    grp_4258 ::= AT_SIGN link_name | partition_extension_clause

    opt_4259 ::= grp_4258 | $empty

    opt_4260 ::= outer_join_sign | $empty

    seq_4261 ::= xml_namespaces_clause COMMA

    opt_4262 ::= seq_4261 | $empty

    opt_4263 ::= xml_passing_clause | $empty

    seq_4264 ::= COMMA xml_table_column

    list_4265 ::= $empty | list_4265 seq_4264

    seq_4266 ::= COLUMNS xml_table_column list_4265

    opt_4267 ::= seq_4266 | $empty

    seq_4268 ::= DOT general_element_part

    opt_4269 ::= seq_4268 | $empty

    seq_4270 ::= DOT id_expression

    list_4271 ::= $empty | list_4271 seq_4270

    seq_4272 ::= COMMA user_object_name

    list_4273 ::= $empty | list_4273 seq_4272

    grp_4274 ::= SOURCE | RESOURCE

    seq_4275 ::= COMMA column_name

    list_4276 ::= $empty | list_4276 seq_4275

    grp_4277 ::= FIRST | LAST

    grp_4278 ::= query_partition_clause | order_by_clause

    opt_4279 ::= over_clause | $empty

    seq_4280 ::= COMMA argument

    list_4281 ::= $empty | list_4281 seq_4280

    seq_4282 ::= argument list_4281

    opt_4283 ::= seq_4282 | $empty

    opt_4284 ::= keep_clause | $empty

    opt_4285 ::= respect_or_ignore_nulls | $empty

    opt_4286 ::= respect_or_ignore_nulls | $empty

    seq_4287 ::= COMMA argument opt_4286

    list_4288 ::= $empty | list_4288 seq_4287

    seq_4289 ::= argument opt_4285 list_4288

    opt_4290 ::= seq_4289 | $empty

    opt_4291 ::= keep_clause | $empty

    grp_4293 ::= numeric | NULL_

    grp_4295 ::= numeric | NULL_

    grp_4294 ::= COMMA grp_4295

    opt_4296 ::= grp_4294 | $empty

    grp_4292 ::= COMMA grp_4293 opt_4296

    opt_4297 ::= grp_4292 | $empty

    opt_4299 ::= column_alias | $empty

    opt_4300 ::= column_alias | $empty

    seq_4301 ::= COMMA expression opt_4300

    list_4302 ::= $empty | list_4302 seq_4301

    grp_4298 ::= tableview_name DOT ASTERISK | ASTERISK | expression opt_4299 list_4302

    opt_4303 ::= keep_clause | $empty

    grp_4304 ::= RESPECT | IGNORE

    seq_4305 ::= identifier EQ GT

    opt_4306 ::= seq_4305 | $empty

    opt_4307 ::= REF | $empty

    grp_4308 ::= PERCENT_ROWTYPE | PERCENT_TYPE

    opt_4309 ::= grp_4308 | $empty

    opt_4310 ::= precision_part | $empty

    opt_4312 ::= LOCAL | $empty

    grp_4311 ::= WITH opt_4312 TIME ZONE | CHARACTER SET char_set_name

    opt_4313 ::= grp_4311 | $empty

    grp_4314 ::= YEAR | DAY

    seq_4315 ::= LPAREN expression RPAREN

    opt_4316 ::= seq_4315 | $empty

    grp_4317 ::= MONTH | SECOND

    seq_4318 ::= LPAREN expression RPAREN

    opt_4319 ::= seq_4318 | $empty

    grp_4320 ::= numeric | ASTERISK

    grp_4322 ::= numeric | numeric_negative

    grp_4321 ::= COMMA grp_4322

    opt_4323 ::= grp_4321 | $empty

    grp_4324 ::= CHAR | BYTE

    opt_4325 ::= grp_4324 | $empty

    opt_4326 ::= PRECISION | $empty

    opt_4327 ::= RAW | $empty

    opt_4328 ::= VARYING | $empty

    grp_4329 ::= BINDVAR | COLON UNSIGNED_INTEGER

    opt_4331 ::= INDICATOR | $empty

    grp_4332 ::= BINDVAR | COLON UNSIGNED_INTEGER

    grp_4330 ::= opt_4331 grp_4332

    opt_4333 ::= grp_4330 | $empty

    seq_4334 ::= DOT general_element_part

    list_4335 ::= $empty | list_4335 seq_4334

    seq_4336 ::= DOT general_element_part

    list_4337 ::= seq_4336 | list_4337 seq_4336

    seq_4338 ::= INTRODUCER char_set_name

    opt_4339 ::= seq_4338 | $empty

    seq_4340 ::= AT link_name

    opt_4341 ::= seq_4340 | $empty

    list_4342 ::= $empty | list_4342 function_argument

    seq_4343 ::= INTRODUCER char_set_name

    opt_4344 ::= seq_4343 | $empty

    seq_4345 ::= DOT id_expression

    list_4346 ::= $empty | list_4346 seq_4345

    opt_4347 ::= PRIVILEGES | $empty

    opt_4348 ::= ANY | $empty

    grp_4349 ::= ALTER | CREATE | DROP

    opt_4350 ::= ANY | $empty

    grp_4351 ::= ALTER | DROP

    grp_4352 ::= CREATE | DROP

    grp_4353 ::= ALTER | CREATE

    opt_4354 ::= PUBLIC | $empty

    opt_4355 ::= ANY | $empty

    grp_4356 ::= ALTER | DROP

    grp_4357 ::= CREATE | DROP

    grp_4358 ::= CREATE | DROP

    grp_4359 ::= ARCHIVE ADMINISTER | ANY TABLE

    grp_4360 ::= ALTER | CREATE | DROP

    opt_4361 ::= ANY | $empty

    grp_4362 ::= ALTER | DROP | EXECUTE

    grp_4363 ::= ANY | EXTERNAL

    opt_4364 ::= grp_4363 | $empty

    grp_4365 ::= CLASS | PROGRAM

    opt_4366 ::= ANY | $empty

    grp_4367 ::= ALTER | DROP | EXECUTE

    opt_4368 ::= ANY | $empty

    grp_4369 ::= ALTER | DROP

    opt_4370 ::= GLOBAL | $empty

    opt_4371 ::= ANY | $empty

    grp_4372 ::= ALTER | DROP | SELECT | COMMENT

    opt_4373 ::= ANY | $empty

    grp_4374 ::= ALTER | DROP | SELECT | UPDATE

    opt_4375 ::= ANY | $empty

    grp_4376 ::= DELETE | DROP | INSERT

    opt_4377 ::= ANY | $empty

    grp_4378 ::= ALTER | DELETE | DROP | INSERT | SELECT | UPDATE

    opt_4379 ::= ANY | $empty

    grp_4380 ::= DROP | UPDATE

    opt_4381 ::= ANY | $empty

    grp_4382 ::= ALTER | DROP | EXECUTE

    grp_4383 ::= CREATE | ALTER | DROP

    opt_4384 ::= ANY | $empty

    grp_4385 ::= ALTER | DROP | EXECUTE

    grp_4386 ::= CREATE | ALTER | DROP

    grp_4387 ::= ALTER | DROP | GRANT

    grp_4388 ::= CREATE | ALTER | DROP

    opt_4389 ::= ANY | $empty

    grp_4390 ::= ALTER | DROP | SELECT

    grp_4391 ::= ALTER | CREATE | RESTRICTED

    opt_4392 ::= ANY | $empty

    grp_4393 ::= ALTER | DROP | USE

    opt_4394 ::= ANY | $empty

    grp_4395 ::= CREATE | DROP

    opt_4396 ::= ANY | $empty

    grp_4397 ::= ALTER | BACKUP | COMMENT | DELETE | DROP | INSERT | LOCK | READ | SELECT | UPDATE

    grp_4398 ::= CREATE | ALTER | DROP | MANAGE | UNLIMITED

    opt_4399 ::= ANY | $empty

    grp_4400 ::= ALTER | DROP

    opt_4401 ::= ANY | $empty

    grp_4402 ::= ALTER | DROP | EXECUTE | UNDER

    grp_4403 ::= CREATE | ALTER | DROP

    opt_4404 ::= ANY | $empty

    grp_4405 ::= DROP | UNDER | MERGE

    grp_4406 ::= ANALYZE | AUDIT

    opt_4407 ::= ANY | $empty

    opt_4408 ::= OBJECT | $empty

    grp_4409 ::= DICTIONARY | TRANSACTION

    grp_4410 ::= quoted_string | bind_variable

    seq_4411 ::= AT TIME ZONE quoted_string

    opt_4412 ::= seq_4411 | $empty

    grp_4413 ::= quoted_string | bind_variable | general_element_part

    grp_4414 ::= YEAR | MONTH | DAY | HOUR | MINUTE | SECOND

    grp_4416 ::= UNSIGNED_INTEGER | bind_variable

    grp_4418 ::= UNSIGNED_INTEGER | bind_variable

    grp_4417 ::= COMMA grp_4418

    opt_4419 ::= grp_4417 | $empty

    grp_4415 ::= LPAREN grp_4416 opt_4419 RPAREN

    opt_4420 ::= grp_4415 | $empty

    grp_4424 ::= UNSIGNED_INTEGER | bind_variable

    grp_4423 ::= LPAREN grp_4424 RPAREN

    opt_4425 ::= grp_4423 | $empty

    grp_4422 ::= MONTH | DAY | HOUR | MINUTE | SECOND opt_4425

    grp_4421 ::= TO grp_4422

    opt_4426 ::= grp_4421 | $empty

    opt_4427 ::= DOT | $empty

    seq_4428 ::= INTRODUCER char_set_name

    opt_4429 ::= seq_4428 | $empty

%End
