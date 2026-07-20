-- AUTO-GENERATED from antlr/grammars-v4 sql/snowflake by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=SqlSnowflakeParser
%options package=lpg.grammars.sql.snowflake
%options template=dtParserTemplateF.gi
%options import_terminals=SqlSnowflakeLexer.gi
%options automatic_ast=none

%Eof
    EOF_TOKEN
%End

%Start
    snowflake_file
%End

%Rules
    sql_id ::= IDENTIFIER

    snowflake_file ::= opt_1

    batch ::= sql_command list_3 opt_4

    sql_command ::= ddl_command
           | dml_command
           | show_command
           | use_command
           | describe_command
           | sql_command list_6
           | other_command

    ddl_command ::= alter_command
           | create_command
           | drop_command
           | undrop_command

    dml_command ::= query_statement
           | insert_statement
           | insert_multi_table_statement
           | update_statement
           | delete_statement
           | merge_statement

    insert_statement ::= INSERT INTO object_name opt_8 grp_9
           | INSERT OVERWRITE INTO object_name opt_8 grp_9

    insert_multi_table_statement ::= INSERT ALL into_clause2
           | INSERT OVERWRITE ALL into_clause2
           | INSERT ALL list_15 opt_17 subquery
           | INSERT OVERWRITE ALL list_15 opt_17 subquery
           | INSERT FIRST list_15 opt_17 subquery
           | INSERT OVERWRITE FIRST list_15 opt_17 subquery

    into_clause2 ::= INTO object_name opt_19 opt_20

    values_list ::= VALUES LPAREN value_item list_22 RPAREN

    value_item ::= column_name
           | DEFAULT
           | NULL_

    merge_statement ::= MERGE INTO object_name opt_23 USING table_source ON search_condition merge_matches

    merge_matches ::= list_24

    merge_cond ::= list_28
           | WHEN NOT MATCHED opt_30 THEN merge_insert

    merge_update_delete ::= UPDATE SET column_name EQ expr list_32
           | DELETE

    merge_insert ::= INSERT opt_34 VALUES LPAREN expr_list RPAREN

    update_statement ::= UPDATE object_name opt_35 SET column_name EQ expr list_37 opt_39 opt_41

    table_or_query ::= object_name opt_42
           | LPAREN subquery RPAREN opt_43

    delete_statement ::= DELETE FROM object_name opt_44 opt_48 opt_50

    values_builder ::= VALUES LPAREN expr_list RPAREN opt_52

    other_command ::= copy_into_table
           | copy_into_location
           | comment
           | commit
           | execute_immediate
           | execute_task
           | explain
           | get_dml
           | grant_ownership
           | grant_to_role
           | grant_to_share
           | grant_role
           | list
           | put
           | remove
           | revoke_from_role
           | revoke_from_share
           | revoke_role
           | rollback
           | set
           | truncate_materialized_view
           | truncate_table
           | unset
           | call
           | begin_txn

    begin_txn ::= BEGIN opt_54 opt_56
           | START TRANSACTION opt_58

    copy_into_table ::= COPY INTO object_name FROM grp_59 opt_60 opt_61 opt_62 list_63 opt_66
           | COPY INTO object_name opt_68 FROM LPAREN SELECT select_list FROM grp_69 RPAREN opt_70 opt_71 opt_72 list_73

    external_location ::= S3_PATH
           | GCS_PATH
           | AZURE_PATH

    files ::= FILES EQ LPAREN string list_75 RPAREN

    file_format ::= FILE_FORMAT EQ LPAREN grp_76 RPAREN

    format_name ::= FORMAT_NAME EQ string

    format_type ::= TYPE EQ type_fileformat list_77

    stage_file_format ::= STAGE_FILE_FORMAT EQ LPAREN FORMAT_NAME EQ string
           | TYPE EQ type_fileformat list_78 RPAREN

    copy_into_location ::= COPY INTO grp_79 FROM grp_80 opt_81 opt_82 opt_83 opt_85 opt_86

    comment ::= COMMENT opt_87 ON object_type_name object_name opt_88 IS string
           | COMMENT opt_89 ON COLUMN full_column_name IS string

    function_signature ::= LPAREN opt_90 RPAREN

    commit ::= COMMIT opt_91

    execute_immediate ::= EXECUTE IMMEDIATE grp_92 opt_96
           | EXECUTE IMMEDIATE DBL_DOLLAR

    execute_task ::= EXECUTE TASK object_name opt_97

    retry_last ::= RETRY LAST

    explain ::= EXPLAIN opt_100 sql_command

    parallel ::= PARALLEL EQ num

    get_dml ::= GET grp_101 FILE_PATH opt_102 opt_103

    grant_ownership ::= GRANT OWNERSHIP grp_104 TO ROLE id_ opt_110

    grant_to_role ::= GRANT grp_111 TO opt_129 id_ opt_131

    global_privileges ::= global_privilege list_133

    global_privilege ::= CREATE grp_134
           | grp_135
           | grp_136

    account_object_privileges ::= account_object_privilege list_139

    account_object_privilege ::= MONITOR
           | MODIFY
           | USAGE
           | OPERATE
           | CREATE SCHEMA
           | IMPORTED PRIVILEGES
           | USE_ANY_ROLE

    schema_privileges ::= schema_privilege list_141

    schema_privilege ::= MODIFY
           | MONITOR
           | USAGE
           | CREATE grp_142
           | ADD SEARCH OPTIMIZATION

    schema_object_privileges ::= schema_object_privilege list_144

    schema_object_privilege ::= SELECT
           | INSERT
           | UPDATE
           | DELETE
           | TRUNCATE
           | REFERENCES
           | USAGE
           | READ opt_146
           | MONITOR
           | OPERATE
           | APPLY

    grant_to_share ::= GRANT object_privilege ON grp_147 TO SHARE id_

    object_privilege ::= USAGE
           | SELECT
           | REFERENCE_USAGE

    grant_role ::= GRANT ROLE role_name TO grp_148

    role_name ::= system_defined_role
           | id_

    system_defined_role ::= ORGADMIN
           | ACCOUNTADMIN
           | SECURITYADMIN
           | USERADMIN
           | SYSADMIN
           | PUBLIC

    list ::= LIST grp_149 opt_150

    user_stage ::= AT TILDA opt_151

    table_stage ::= AT opt_152 PERCENT id_ opt_153

    named_stage ::= AT object_name opt_154

    stage_path ::= DIVIDE opt_159

    put ::= PUT FILE_PATH grp_160 opt_162 opt_164 opt_167 opt_169

    remove ::= REMOVE grp_170 opt_171

    revoke_from_role ::= REVOKE opt_173 grp_174 FROM opt_191 id_ opt_192

    revoke_from_share ::= REVOKE object_privilege ON grp_193 FROM SHARE id_

    revoke_role ::= REVOKE ROLE role_name FROM grp_194

    rollback ::= ROLLBACK opt_195

    set ::= SET id_ EQ expr
           | SET LPAREN id_ list_197 RPAREN EQ LPAREN expr list_199 RPAREN

    truncate_materialized_view ::= TRUNCATE MATERIALIZED VIEW object_name

    truncate_table ::= TRUNCATE opt_200 opt_201 object_name

    unset ::= UNSET id_
           | UNSET LPAREN id_ list_203 RPAREN

    alter_command ::= alter_account
           | alter_alert
           | alter_api_integration
           | alter_connection
           | alter_database
           | alter_dataset
           | alter_dynamic_table
           | alter_external_table
           | alter_failover_group
           | alter_file_format
           | alter_function
           | alter_git_repository
           | alter_image_repository
           | alter_masking_policy
           | alter_materialized_view
           | alter_network_policy
           | alter_notification_integration
           | alter_password_policy
           | alter_pipe
           | alter_procedure
           | alter_replication_group
           | alter_resource_monitor
           | alter_role
           | alter_row_access_policy
           | alter_schema
           | alter_secret
           | alter_security_integration_external_oauth
           | alter_security_integration_snowflake_oauth
           | alter_security_integration_saml2
           | alter_security_integration_scim
           | alter_sequence
           | alter_service
           | alter_session
           | alter_session_policy
           | alter_share
           | alter_semantic_view
           | alter_stage
           | alter_storage_integration
           | alter_stream
           | alter_table
           | alter_table_alter_column
           | alter_tag
           | alter_task
           | alter_user
           | alter_view
           | alter_warehouse

    account_params ::= ALLOW_ID_TOKEN EQ true_false
           | CLIENT_ENCRYPTION_KEY_SIZE EQ num
           | ENFORCE_SESSION_POLICY EQ true_false
           | EXTERNAL_OAUTH_ADD_PRIVILEGED_ROLES_TO_BLOCKED_LIST EQ true_false
           | INITIAL_REPLICATION_SIZE_LIMIT_IN_TB EQ num
           | NETWORK_POLICY EQ string
           | PERIODIC_DATA_REKEYING EQ true_false
           | PREVENT_UNLOAD_TO_INLINE_URL EQ true_false
           | PREVENT_UNLOAD_TO_INTERNAL_STAGES EQ true_false
           | REQUIRE_STORAGE_INTEGRATION_FOR_STAGE_CREATION EQ true_false
           | REQUIRE_STORAGE_INTEGRATION_FOR_STAGE_OPERATION EQ true_false
           | SAML_IDENTITY_PROVIDER EQ json_literal
           | SESSION_POLICY EQ string
           | SSO_LOGIN_PAGE EQ true_false

    object_params ::= DATA_RETENTION_TIME_IN_DAYS EQ num
           | MAX_DATA_EXTENSION_TIME_IN_DAYS EQ num
           | default_ddl_collation
           | MAX_CONCURRENCY_LEVEL EQ num
           | NETWORK_POLICY EQ string
           | PIPE_EXECUTION_PAUSED EQ true_false
           | SESSION_POLICY EQ string
           | STATEMENT_QUEUED_TIMEOUT_IN_SECONDS EQ num
           | STATEMENT_TIMEOUT_IN_SECONDS EQ num

    default_ddl_collation ::= DEFAULT_DDL_COLLATION_ EQ string

    object_properties ::= PASSWORD EQ string
           | LOGIN_NAME EQ string
           | DISPLAY_NAME EQ string
           | FIRST_NAME EQ string
           | MIDDLE_NAME EQ string
           | LAST_NAME EQ string
           | EMAIL EQ string
           | MUST_CHANGE_PASSWORD EQ true_false
           | DISABLED EQ true_false
           | DAYS_TO_EXPIRY EQ num
           | MINS_TO_UNLOCK EQ num
           | DEFAULT_WAREHOUSE EQ string
           | DEFAULT_NAMESPACE EQ string
           | DEFAULT_ROLE EQ string
           | MINS_TO_BYPASS_MFA EQ num
           | RSA_PUBLIC_KEY EQ string
           | RSA_PUBLIC_KEY_2 EQ string
           | comment_clause

    session_params ::= ABORT_DETACHED_QUERY EQ true_false
           | AUTOCOMMIT EQ true_false
           | BINARY_INPUT_FORMAT EQ string
           | BINARY_OUTPUT_FORMAT EQ string
           | DATE_INPUT_FORMAT EQ string
           | DATE_OUTPUT_FORMAT EQ string
           | ERROR_ON_NONDETERMINISTIC_MERGE EQ true_false
           | ERROR_ON_NONDETERMINISTIC_UPDATE EQ true_false
           | JSON_INDENT EQ num
           | LOCK_TIMEOUT EQ num
           | QUERY_TAG EQ string
           | ROWS_PER_RESULTSET EQ num
           | SIMULATED_DATA_SHARING_CONSUMER EQ string
           | STATEMENT_TIMEOUT_IN_SECONDS EQ num
           | STRICT_JSON_OUTPUT EQ true_false
           | TIMESTAMP_DAY_IS_ALWAYS_24H EQ true_false
           | TIMESTAMP_INPUT_FORMAT EQ string
           | TIMESTAMP_LTZ_OUTPUT_FORMAT EQ string
           | TIMESTAMP_NTZ_OUTPUT_FORMAT EQ string
           | TIMESTAMP_OUTPUT_FORMAT EQ string
           | TIMESTAMP_TYPE_MAPPING EQ string
           | TIMESTAMP_TZ_OUTPUT_FORMAT EQ string
           | TIMEZONE EQ string
           | TIME_INPUT_FORMAT EQ string
           | TIME_OUTPUT_FORMAT EQ string
           | TRANSACTION_DEFAULT_ISOLATION_LEVEL EQ string
           | TWO_DIGIT_CENTURY_START EQ num
           | UNSUPPORTED_DDL_ACTION EQ string
           | USE_CACHED_RESULT EQ true_false
           | WEEK_OF_YEAR_POLICY EQ num
           | WEEK_START EQ num

    alter_account ::= ALTER ACCOUNT alter_account_opts

    enabled_true_false ::= ENABLED EQ true_false

    alter_alert ::= ALTER ALERT opt_204 id_ grp_205

    resume_suspend ::= RESUME
           | SUSPEND

    alert_set_clause ::= WAREHOUSE EQ id_
           | SCHEDULE EQ string
           | comment_clause

    alert_unset_clause ::= WAREHOUSE
           | SCHEDULE
           | COMMENT

    alter_api_integration ::= ALTER opt_208 INTEGRATION opt_209 id_ SET opt_211 opt_213 opt_215 opt_216 opt_218 opt_220 opt_221
           | ALTER opt_222 INTEGRATION id_ set_tags
           | ALTER opt_223 INTEGRATION id_ unset_tags
           | ALTER opt_224 INTEGRATION opt_225 id_ UNSET api_integration_property list_227

    api_integration_property ::= API_KEY
           | ENABLED
           | API_BLOCKED_PREFIXES
           | COMMENT

    alter_connection ::= ALTER CONNECTION alter_connection_opts

    alter_database ::= ALTER DATABASE opt_228 id_ RENAME TO id_
           | ALTER DATABASE opt_229 id_ SWAP WITH id_
           | ALTER DATABASE opt_230 id_ SET opt_232 opt_234 opt_235 opt_236
           | ALTER DATABASE id_ set_tags
           | ALTER DATABASE id_ unset_tags
           | ALTER DATABASE opt_237 id_ UNSET database_property list_239
           | ALTER DATABASE id_ ENABLE REPLICATION TO ACCOUNTS account_id_list opt_241
           | ALTER DATABASE id_ DISABLE REPLICATION opt_243
           | ALTER DATABASE id_ REFRESH
           | ALTER DATABASE id_ ENABLE FAILOVER TO ACCOUNTS account_id_list
           | ALTER DATABASE id_ DISABLE FAILOVER opt_245
           | ALTER DATABASE id_ PRIMARY

    database_property ::= DATA_RETENTION_TIME_IN_DAYS
           | MAX_DATA_EXTENSION_TIME_IN_DAYS
           | DEFAULT_DDL_COLLATION_
           | COMMENT

    account_id_list ::= account_identifier list_247

    alter_dataset ::= ALTER DATASET object_name ADD VERSION string FROM query_statement opt_249 opt_250 opt_252
           | ALTER DATASET opt_253 object_name DROP VERSION string

    alter_dynamic_table ::= ALTER DYNAMIC TABLE opt_254 object_name grp_255
           | ALTER DYNAMIC TABLE opt_257 object_name grp_258 object_name
           | ALTER DYNAMIC TABLE opt_259 object_name grp_260
           | ALTER DYNAMIC TABLE opt_261 object_name search_optimization_action
           | ALTER DYNAMIC TABLE opt_262 object_name UNSET dynamic_table_unsettable_params list_264
           | ALTER DYNAMIC TABLE opt_265 object_name rls_operations

    id_list ::= id_ list_267

    alter_external_table ::= ALTER EXTERNAL TABLE opt_268 object_name REFRESH opt_269
           | ALTER EXTERNAL TABLE opt_270 object_name ADD FILES LPAREN string_list RPAREN
           | ALTER EXTERNAL TABLE opt_271 object_name REMOVE FILES LPAREN string_list RPAREN
           | ALTER EXTERNAL TABLE opt_272 object_name SET opt_274 opt_275
           | ALTER EXTERNAL TABLE opt_276 object_name unset_tags
           | ALTER EXTERNAL TABLE object_name opt_277 ADD PARTITION LPAREN column_name EQ string list_279 RPAREN LOCATION string
           | ALTER EXTERNAL TABLE object_name opt_280 DROP PARTITION LOCATION string

    ignore_edition_check ::= IGNORE EDITION CHECK

    replication_schedule ::= REPLICATION_SCHEDULE EQ string

    db_name_list ::= id_ list_282

    share_name_list ::= id_ list_284

    full_acct_list ::= full_acct list_286

    alter_failover_group ::= ALTER FAILOVER GROUP opt_287 id_ RENAME TO id_
           | ALTER FAILOVER GROUP opt_288 id_ SET opt_290 opt_291
           | ALTER FAILOVER GROUP opt_292 id_ SET OBJECT_TYPES EQ object_type_list opt_293
           | ALTER FAILOVER GROUP opt_294 id_ ADD db_name_list TO ALLOWED_DATABASES
           | ALTER FAILOVER GROUP opt_295 id_ MOVE DATABASES db_name_list TO FAILOVER GROUP id_
           | ALTER FAILOVER GROUP opt_296 id_ REMOVE db_name_list FROM ALLOWED_DATABASES
           | ALTER FAILOVER GROUP opt_297 id_ ADD share_name_list TO ALLOWED_SHARES
           | ALTER FAILOVER GROUP opt_298 id_ MOVE SHARES share_name_list TO FAILOVER GROUP id_
           | ALTER FAILOVER GROUP opt_299 id_ REMOVE share_name_list FROM ALLOWED_SHARES
           | ALTER FAILOVER GROUP opt_300 id_ ADD full_acct_list TO ALLOWED_ACCOUNTS opt_301
           | ALTER FAILOVER GROUP opt_302 id_ REMOVE full_acct_list FROM ALLOWED_ACCOUNTS
           | ALTER FAILOVER GROUP opt_303 id_ grp_304

    alter_file_format ::= ALTER FILE FORMAT opt_305 id_ RENAME TO id_
           | ALTER FILE FORMAT opt_306 id_ SET list_307 opt_308

    alter_function ::= alter_function_signature RENAME TO id_
           | alter_function_signature SET comment_clause
           | alter_function_signature SET SECURE
           | alter_function_signature UNSET grp_309
           | alter_function_signature SET API_INTEGRATION EQ id_
           | alter_function_signature SET HEADERS EQ LPAREN list_310 RPAREN
           | alter_function_signature SET CONTEXT_HEADERS EQ LPAREN list_311 RPAREN
           | alter_function_signature SET MAX_BATCH_ROWS EQ num
           | alter_function_signature SET COMPRESSION EQ compression_type
           | alter_function_signature SET grp_312 EQ id_
           | alter_function_signature UNSET grp_313

    alter_function_signature ::= ALTER FUNCTION opt_314 id_ LPAREN opt_315 RPAREN

    data_type_list ::= data_type list_317

    alter_git_repository ::= ALTER GIT REPOSITORY object_name grp_318
           | ALTER GIT REPOSITORY object_name FETCH

    alter_git_set_opts ::= GIT_CREDENTIALS EQ object_name
           | API_INTEGRATION EQ id_
           | comment_clause
           | tag_decl_list

    alter_git_unset_opts ::= GIT_CREDENTIALS
           | COMMENT
           | tag_list

    alter_image_repository ::= ALTER IMAGE REPOSITORY opt_321 object_name RENAME TO object_name
           | ALTER IMAGE REPOSITORY opt_322 object_name SET comment_clause
           | ALTER IMAGE REPOSITORY opt_323 object_name UNSET COMMENT
           | ALTER IMAGE REPOSITORY opt_324 object_name set_tags
           | ALTER IMAGE REPOSITORY opt_325 object_name unset_tags

    alter_masking_policy ::= ALTER MASKING POLICY opt_326 id_ SET BODY ARROW expr
           | ALTER MASKING POLICY opt_327 id_ RENAME TO id_
           | ALTER MASKING POLICY opt_328 id_ SET comment_clause

    alter_materialized_view ::= ALTER MATERIALIZED VIEW opt_329 object_name grp_330

    alter_network_policy ::= ALTER NETWORK POLICY alter_network_policy_opts

    alter_notification_integration ::= ALTER opt_334 INTEGRATION opt_335 id_ SET opt_336 cloud_provider_params_auto opt_337
           | ALTER opt_338 INTEGRATION opt_339 id_ SET opt_340 cloud_provider_params_push opt_341
           | ALTER opt_342 INTEGRATION id_ set_tags
           | ALTER opt_343 INTEGRATION id_ unset_tags
           | ALTER opt_344 INTEGRATION if_exists id_ UNSET grp_345

    alter_pipe ::= ALTER PIPE opt_346 id_ SET grp_347
           | ALTER PIPE id_ set_tags
           | ALTER PIPE id_ unset_tags
           | ALTER PIPE opt_348 id_ UNSET grp_349
           | ALTER PIPE opt_350 id_ REFRESH opt_352 opt_354

    alter_procedure ::= ALTER PROCEDURE opt_355 id_ LPAREN opt_356 RPAREN RENAME TO id_
           | ALTER PROCEDURE opt_357 id_ LPAREN opt_358 RPAREN SET comment_clause
           | ALTER PROCEDURE opt_359 id_ LPAREN opt_360 RPAREN UNSET COMMENT
           | ALTER PROCEDURE opt_361 id_ LPAREN opt_362 RPAREN EXECUTE AS caller_owner

    alter_replication_group ::= ALTER REPLICATION GROUP opt_363 id_ RENAME TO id_
           | ALTER REPLICATION GROUP opt_364 id_ SET opt_366 opt_368
           | ALTER REPLICATION GROUP opt_369 id_ SET OBJECT_TYPES EQ object_type_list ALLOWED_INTEGRATION_TYPES EQ integration_type_name list_371 opt_373
           | ALTER REPLICATION GROUP opt_374 id_ ADD db_name_list TO ALLOWED_DATABASES
           | ALTER REPLICATION GROUP opt_375 id_ MOVE DATABASES db_name_list TO REPLICATION GROUP id_
           | ALTER REPLICATION GROUP opt_376 id_ REMOVE db_name_list FROM ALLOWED_DATABASES
           | ALTER REPLICATION GROUP opt_377 id_ ADD share_name_list TO ALLOWED_SHARES
           | ALTER REPLICATION GROUP opt_378 id_ MOVE SHARES share_name_list TO REPLICATION GROUP id_
           | ALTER REPLICATION GROUP opt_379 id_ REMOVE share_name_list FROM ALLOWED_SHARES
           | ALTER REPLICATION GROUP opt_380 id_ ADD account_id_list TO ALLOWED_ACCOUNTS opt_381
           | ALTER REPLICATION GROUP opt_382 id_ REMOVE account_id_list FROM ALLOWED_ACCOUNTS
           | ALTER REPLICATION GROUP opt_383 id_ REFRESH
           | ALTER REPLICATION GROUP opt_384 id_ SUSPEND
           | ALTER REPLICATION GROUP opt_385 id_ RESUME

    credit_quota ::= CREDIT_QUOTA EQ num

    frequency ::= FREQUENCY EQ grp_386

    notify_users ::= NOTIFY_USERS EQ LPAREN id_ list_388 RPAREN

    triggerDefinition ::= ON num PERCENT DO grp_389

    alter_resource_monitor ::= ALTER RESOURCE MONITOR opt_390 id_ opt_398 opt_404

    alter_role ::= ALTER ROLE opt_405 id_ RENAME TO id_
           | ALTER ROLE opt_406 id_ SET comment_clause
           | ALTER ROLE opt_407 id_ UNSET COMMENT
           | ALTER ROLE opt_408 id_ set_tags
           | ALTER ROLE opt_409 id_ unset_tags

    alter_row_access_policy ::= ALTER ROW ACCESS POLICY opt_410 id_ SET BODY ARROW expr
           | ALTER ROW ACCESS POLICY opt_411 id_ RENAME TO id_
           | ALTER ROW ACCESS POLICY opt_412 id_ SET comment_clause

    alter_schema ::= ALTER SCHEMA opt_413 schema_name RENAME TO schema_name
           | ALTER SCHEMA opt_414 schema_name SWAP WITH schema_name
           | ALTER SCHEMA opt_415 schema_name SET opt_417 opt_419 opt_420 opt_421
           | ALTER SCHEMA opt_422 schema_name set_tags
           | ALTER SCHEMA opt_423 schema_name unset_tags
           | ALTER SCHEMA opt_424 schema_name UNSET schema_property list_426
           | ALTER SCHEMA opt_427 schema_name grp_428 MANAGED ACCESS

    schema_property ::= DATA_RETENTION_TIME_IN_DAYS
           | MAX_DATA_EXTENSION_TIME_IN_DAYS
           | DEFAULT_DDL_COLLATION_
           | COMMENT

    alter_sequence ::= ALTER SEQUENCE opt_429 object_name RENAME TO object_name
           | ALTER SEQUENCE opt_430 object_name opt_431 opt_435
           | ALTER SEQUENCE opt_436 object_name SET grp_437
           | ALTER SEQUENCE opt_439 object_name UNSET COMMENT

    alter_service ::= ALTER SERVICE opt_440 object_name grp_441
           | ALTER SERVICE opt_442 object_name SET list_443
           | ALTER SERVICE opt_444 object_name UNSET service_param_name
           | ALTER SERVICE opt_445 object_name FROM service_specification
           | ALTER SERVICE opt_446 object_name RESTORE VOLUME id_ INSTANCES num list_448 FROM SNAPSHOT id_

    alter_secret ::= ALTER SECRET opt_449 object_name secret_opts

    secret_opts ::= UNSET COMMENT
           | SET secret_set_opts

    secret_set_opts ::= list_450
           | list_451
           | list_452
           | list_453
           | list_454

    secret_oauth_client_creds_opts ::= OAUTH_SCOPES EQ LPAREN string_list RPAREN
           | comment_clause

    secret_oauth_auth_code_opts ::= OAUTH_REFRESH_TOKEN EQ string
           | OAUTH_REFRESH_TOKEN_EXPIRY_TIME EQ string
           | comment_clause

    secret_api_auth_opts ::= API_AUTHENTICATION EQ string
           | comment_clause

    secret_basic_auth_opts ::= USERNAME EQ string
           | PASSWORD EQ string
           | comment_clause

    secret_generic_string_opts ::= SECRET_STRING EQ string
           | comment_clause

    alter_security_integration_external_oauth ::= ALTER opt_455 INTEGRATION if_exists id_ SET opt_457 opt_459 opt_462 opt_464 opt_467 opt_469 opt_471 opt_474 opt_476 opt_478 opt_480 opt_482 opt_484 opt_487 opt_489
           | ALTER opt_490 INTEGRATION opt_491 id_ UNSET security_integration_external_oauth_property list_493
           | ALTER opt_494 INTEGRATION id_ set_tags
           | ALTER opt_495 INTEGRATION id_ unset_tags

    security_integration_external_oauth_property ::= ENABLED
           | NETWORK_POLICY
           | OAUTH_CLIENT_RSA_PUBLIC_KEY
           | OAUTH_CLIENT_RSA_PUBLIC_KEY_2
           | OAUTH_USE_SECONDARY_ROLES EQ grp_496
           | COMMENT

    alter_security_integration_snowflake_oauth ::= ALTER opt_497 INTEGRATION opt_498 id_ SET opt_500 opt_501 opt_504 opt_506 opt_509 opt_511 opt_513 opt_516 opt_518 opt_520 opt_522 opt_524 opt_526 opt_528 opt_530
           | ALTER opt_531 INTEGRATION opt_532 id_ UNSET security_integration_snowflake_oauth_property list_534
           | ALTER opt_535 INTEGRATION id_ set_tags
           | ALTER opt_536 INTEGRATION id_ unset_tags

    security_integration_snowflake_oauth_property ::= ENABLED
           | EXTERNAL_OAUTH_AUDIENCE_LIST

    alter_security_integration_saml2 ::= ALTER opt_537 INTEGRATION opt_538 id_ SET opt_540 opt_541 opt_543 opt_545 opt_547 opt_549 opt_551 opt_553 opt_555 opt_557 opt_559 opt_561 opt_563 opt_565 opt_567
           | ALTER opt_568 INTEGRATION opt_569 id_ UNSET ENABLED
           | ALTER opt_570 INTEGRATION id_ set_tags
           | ALTER opt_571 INTEGRATION id_ unset_tags

    alter_security_integration_scim ::= ALTER opt_572 INTEGRATION opt_573 id_ SET opt_575 opt_577 opt_578
           | ALTER opt_579 INTEGRATION opt_580 id_ UNSET security_integration_scim_property list_582
           | ALTER opt_583 INTEGRATION id_ set_tags
           | ALTER opt_584 INTEGRATION id_ unset_tags

    security_integration_scim_property ::= NETWORK_POLICY
           | SYNC_PASSWORD
           | COMMENT

    alter_session ::= ALTER SESSION SET session_params
           | ALTER SESSION UNSET param_name list_586

    alter_session_policy ::= ALTER SESSION POLICY opt_587 object_name SET list_588
           | ALTER SESSION POLICY opt_589 object_name UNSET grp_590
           | ALTER SESSION POLICY opt_591 object_name RENAME TO object_name
           | ALTER SESSION POLICY opt_592 object_name grp_593

    alter_password_policy ::= ALTER PASSWORD POLICY opt_594 object_name SET list_595
           | ALTER PASSWORD POLICY opt_596 object_name UNSET grp_597
           | ALTER PASSWORD POLICY opt_598 object_name RENAME TO object_name
           | ALTER PASSWORD POLICY opt_599 object_name grp_600

    alter_share ::= ALTER SHARE opt_601 id_ grp_602 ACCOUNTS EQ id_ list_604 opt_606
           | ALTER SHARE opt_607 id_ ADD ACCOUNTS EQ id_ list_609 opt_611
           | ALTER SHARE opt_612 id_ SET opt_616 opt_617
           | ALTER SHARE opt_618 id_ set_tags
           | ALTER SHARE id_ unset_tags
           | ALTER SHARE opt_619 id_ UNSET COMMENT

    alter_storage_integration ::= ALTER opt_620 INTEGRATION opt_621 id_ SET opt_622 opt_623 opt_625 opt_627 opt_628
           | ALTER opt_629 INTEGRATION opt_630 id_ set_tags
           | ALTER opt_631 INTEGRATION id_ unset_tags
           | ALTER opt_632 INTEGRATION opt_633 id_ UNSET grp_634

    alter_stream ::= ALTER STREAM opt_635 id_ SET opt_636 opt_637
           | ALTER STREAM opt_638 id_ set_tags
           | ALTER STREAM id_ unset_tags
           | ALTER STREAM opt_639 id_ UNSET COMMENT

    alter_table ::= ALTER TABLE opt_640 object_name RENAME TO object_name
           | ALTER TABLE opt_641 object_name SWAP WITH object_name
           | ALTER TABLE opt_642 object_name grp_643
           | ALTER TABLE opt_644 object_name ext_table_column_action
           | ALTER TABLE opt_645 object_name search_optimization_action
           | ALTER TABLE opt_646 object_name SET opt_647 opt_649 opt_651 opt_653 opt_655 opt_656 opt_657
           | ALTER TABLE opt_658 object_name set_tags
           | ALTER TABLE opt_659 object_name unset_tags
           | ALTER TABLE opt_660 object_name UNSET grp_661
           | ALTER TABLE opt_662 object_name rls_operations

    rls_operations ::= ADD ROW ACCESS POLICY object_name ON column_list_in_parentheses
           | DROP ROW ACCESS POLICY object_name opt_664
           | DROP ALL ROW ACCESS POLICIES

    clustering_action ::= CLUSTER BY LPAREN expr_list RPAREN
           | RECLUSTER opt_666 opt_668
           | resume_suspend RECLUSTER
           | DROP CLUSTERING KEY

    table_column_action ::= ADD opt_669 opt_670 full_col_decl list_672
           | RENAME COLUMN column_name TO column_name
           | alter_modify grp_673
           | alter_modify COLUMN column_name SET MASKING POLICY id_ opt_679 opt_680
           | alter_modify COLUMN column_name UNSET MASKING POLICY
           | alter_modify column_set_tags list_682
           | alter_modify column_unset_tags list_684
           | DROP opt_685 opt_686 column_list

    alter_column_clause ::= opt_687 column_name grp_688

    inline_constraint ::= opt_696 grp_697

    enforced_not_enforced ::= opt_702 ENFORCED

    deferrable_not_deferrable ::= opt_703 DEFERRABLE

    initially_deferred_or_immediate ::= INITIALLY grp_704

    common_constraint_properties ::= enforced_not_enforced opt_706
           | deferrable_not_deferrable
           | initially_deferred_or_immediate
           | grp_707 opt_709
           | RELY
           | NORELY

    on_update ::= ON UPDATE on_action

    on_delete ::= ON DELETE on_action

    foreign_key_match ::= MATCH grp_710

    on_action ::= CASCADE
           | SET grp_711
           | RESTRICT
           | NO ACTION

    constraint_properties ::= list_712
           | foreign_key_match
           | opt_713 grp_714

    ext_table_column_action ::= ADD opt_717 column_name data_type AS LPAREN expr RPAREN
           | RENAME COLUMN column_name TO column_name
           | DROP opt_718 column_list

    constraint_action ::= ADD out_of_line_constraint
           | RENAME CONSTRAINT id_ TO id_
           | alter_modify grp_719 column_list_in_parentheses opt_720 grp_721 grp_722
           | DROP grp_723 opt_724 opt_725
           | DROP PRIMARY KEY

    search_optimization_action ::= ADD SEARCH OPTIMIZATION opt_729
           | DROP SEARCH OPTIMIZATION opt_733

    search_method_with_target ::= grp_734 LPAREN grp_735 RPAREN

    alter_table_alter_column ::= ALTER TABLE object_name alter_modify grp_736
           | ALTER TABLE object_name alter_modify COLUMN column_name SET MASKING POLICY id_ opt_738 opt_739
           | ALTER TABLE object_name alter_modify COLUMN column_name UNSET MASKING POLICY
           | ALTER TABLE object_name alter_modify column_set_tags list_741
           | ALTER TABLE object_name alter_modify column_unset_tags list_743

    alter_column_decl_list ::= alter_column_decl list_745

    alter_column_decl ::= opt_746 column_name alter_column_opts

    alter_column_opts ::= DROP DEFAULT
           | SET DEFAULT object_name DOT NEXTVAL
           | opt_748 NOT NULL_
           | opt_752 data_type
           | comment_clause
           | UNSET COMMENT

    column_set_tags ::= opt_753 column_name set_tags

    column_unset_tags ::= COLUMN column_name unset_tags

    alter_tag ::= ALTER TAG opt_754 object_name alter_tag_opts

    alter_task ::= ALTER TASK opt_755 object_name resume_suspend
           | ALTER TASK opt_756 object_name grp_757 AFTER string_list
           | ALTER TASK opt_758 object_name SET opt_760 opt_761 opt_762 opt_763 opt_764 opt_765 opt_766
           | ALTER TASK opt_767 object_name UNSET opt_768 opt_769 opt_770 opt_771 opt_772 opt_773 opt_774
           | ALTER TASK opt_775 object_name set_tags
           | ALTER TASK opt_776 object_name unset_tags
           | ALTER TASK opt_777 object_name MODIFY AS task_sql
           | ALTER TASK opt_778 object_name MODIFY WHEN expr

    alter_user ::= ALTER USER opt_779 id_ alter_user_opts

    alter_view ::= ALTER VIEW opt_780 object_name RENAME TO object_name
           | ALTER VIEW opt_781 object_name SET comment_clause
           | ALTER VIEW opt_782 object_name UNSET COMMENT
           | ALTER VIEW object_name SET SECURE
           | ALTER VIEW object_name UNSET SECURE
           | ALTER VIEW opt_783 object_name set_tags
           | ALTER VIEW opt_784 object_name unset_tags
           | ALTER VIEW opt_785 object_name ADD ROW ACCESS POLICY id_ ON column_list_in_parentheses
           | ALTER VIEW opt_786 object_name DROP ROW ACCESS POLICY id_
           | ALTER VIEW opt_787 object_name ADD ROW ACCESS POLICY id_ ON column_list_in_parentheses COMMA DROP ROW ACCESS POLICY id_
           | ALTER VIEW opt_788 object_name DROP ALL ROW ACCESS POLICIES
           | ALTER VIEW object_name alter_modify opt_789 id_ SET MASKING POLICY id_ opt_791 opt_792
           | ALTER VIEW object_name alter_modify opt_793 id_ UNSET MASKING POLICY
           | ALTER VIEW object_name alter_modify opt_794 id_ set_tags
           | ALTER VIEW object_name alter_modify COLUMN id_ unset_tags

    alter_modify ::= ALTER
           | MODIFY

    alter_warehouse ::= ALTER WAREHOUSE opt_795 alter_warehouse_opts

    alter_connection_opts ::= id_ ENABLE FAILOVER TO ACCOUNTS id_ DOT id_ list_797 opt_798
           | id_ DISABLE FAILOVER opt_802
           | id_ PRIMARY
           | opt_803 id_ SET comment_clause
           | opt_804 id_ UNSET COMMENT

    alter_user_opts ::= RENAME TO id_
           | RESET PASSWORD
           | ABORT ALL QUERIES
           | ADD DELEGATED AUTHORIZATION OF ROLE id_ TO SECURITY INTEGRATION id_
           | REMOVE DELEGATED grp_805 FROM SECURITY INTEGRATION id_
           | set_tags
           | unset_tags

    alter_tag_opts ::= RENAME TO object_name
           | grp_806 tag_allowed_values
           | UNSET ALLOWED_VALUES
           | SET MASKING POLICY id_ list_808
           | UNSET MASKING POLICY id_ list_810
           | SET comment_clause
           | UNSET COMMENT

    alter_network_policy_opts ::= opt_811 id_ SET opt_813 opt_815 opt_816
           | opt_817 id_ UNSET COMMENT
           | id_ RENAME TO id_

    alter_warehouse_opts ::= opt_818 grp_819
           | opt_821 ABORT ALL QUERIES
           | id_fn RENAME TO id_
           | id_fn set_tags
           | id_fn unset_tags
           | id_fn UNSET id_ list_823
           | id_ SET wh_properties list_825

    alter_account_opts ::= SET opt_826 opt_827 opt_828
           | UNSET param_name opt_830
           | SET RESOURCE_MONITOR EQ id_
           | set_tags
           | unset_tags
           | id_ RENAME TO id_ opt_832
           | id_ DROP OLD URL

    set_tags ::= SET tag_decl_list

    tag_decl_list ::= TAG object_name EQ tag_value list_834

    unset_tags ::= UNSET tag_list

    tag_list ::= TAG object_name list_836

    create_command ::= create_account
           | create_alert
           | create_api_integration
           | create_object_clone
           | create_connection
           | create_database
           | create_dataset
           | create_dynamic_table
           | create_event_table
           | create_external_function
           | create_external_table
           | create_failover_group
           | create_file_format
           | create_function
           | create_git_repository
           | create_image_repository
           | create_index
           | create_managed_account
           | create_masking_policy
           | create_materialized_view
           | create_network_policy
           | create_notification_integration
           | create_password_policy
           | create_pipe
           | create_procedure
           | create_replication_group
           | create_resource_monitor
           | create_role
           | create_row_access_policy
           | create_schema
           | create_secret
           | create_security_integration_external_oauth
           | create_security_integration_snowflake_oauth
           | create_security_integration_saml2
           | create_security_integration_scim
           | create_semantic_view
           | create_sequence
           | create_service
           | create_session_policy
           | create_share
           | create_stage
           | create_storage_integration
           | create_stream
           | create_table
           | create_table_as_select
           | create_table_like
           | create_tag
           | create_task
           | create_user
           | create_view
           | create_warehouse

    create_account ::= CREATE ACCOUNT id_ ADMIN_NAME EQ id_ ADMIN_PASSWORD EQ string opt_838 opt_840 EMAIL EQ string opt_842 EDITION EQ grp_843 opt_845 opt_847 opt_848

    create_alert ::= CREATE opt_849 ALERT opt_850 id_ WAREHOUSE EQ id_ SCHEDULE EQ string IF LPAREN EXISTS LPAREN alert_condition RPAREN RPAREN THEN alert_action

    alert_condition ::= select_statement
           | show_command
           | call

    alert_action ::= sql_command

    create_api_integration ::= CREATE opt_851 API INTEGRATION opt_852 id_ API_PROVIDER EQ id_ API_AWS_ROLE_ARN EQ string opt_854 API_ALLOWED_PREFIXES EQ LPAREN string RPAREN opt_856 ENABLED EQ true_false opt_857
           | CREATE opt_858 API INTEGRATION opt_859 id_ API_PROVIDER EQ id_ AZURE_TENANT_ID EQ string AZURE_AD_APPLICATION_ID EQ string opt_861 API_ALLOWED_PREFIXES EQ LPAREN string RPAREN opt_863 ENABLED EQ true_false opt_864
           | CREATE or_replace API INTEGRATION if_not_exists id_ API_PROVIDER EQ id_ GOOGLE_AUDIENCE EQ string API_ALLOWED_PREFIXES EQ LPAREN string RPAREN opt_866 ENABLED EQ true_false opt_867

    create_object_clone ::= CREATE opt_868 grp_869 opt_870 id_ CLONE object_name opt_873
           | CREATE opt_874 grp_875 opt_876 object_name CLONE object_name

    create_connection ::= CREATE CONNECTION opt_877 id_ grp_878

    create_database ::= CREATE opt_881 opt_882 DATABASE opt_883 id_ opt_884 opt_886 opt_888 opt_889 opt_890 opt_891

    clone_at_before ::= CLONE id_ opt_894

    at_before1 ::= AT_KEYWORD
           | BEFORE

    header_decl ::= string EQ string

    compression_type ::= NONE
           | GZIP
           | DEFLATE
           | AUTO

    compression ::= COMPRESSION EQ compression_type

    create_dataset ::= CREATE opt_895 DATASET opt_896 object_name

    create_dynamic_table ::= CREATE opt_897 opt_898 DYNAMIC TABLE opt_899 object_name opt_901 list_902 AS query_statement

    dynamic_table_params ::= dynamic_table_settable_params
           | REFRESH_MODE EQ grp_903
           | INITIALIZE EQ grp_904
           | cluster_by
           | with_row_access_policy
           | with_tags

    dynamic_table_settable_params ::= TARGET_LAG EQ grp_905
           | LAG EQ grp_906
           | WAREHOUSE EQ id_
           | set_data_retention_params
           | DEFAULT_DDL_COLLATION_ EQ STRING_LITERAL
           | comment_clause

    dynamic_table_unsettable_params ::= data_retention_params
           | DEFAULT_DDL_COLLATION_
           | COMMENT

    data_retention_params ::= DATA_RETENTION_TIME_IN_DAYS
           | MAX_DATA_EXTENSION_TIME_IN_DAYS

    set_data_retention_params ::= data_retention_params EQ num

    create_event_table ::= CREATE opt_907 EVENT TABLE opt_908 id_ opt_909 list_910 opt_911 opt_913 opt_914 opt_915 opt_916 opt_919

    create_external_function ::= CREATE opt_920 opt_921 EXTERNAL FUNCTION object_name LPAREN opt_925 RPAREN RETURNS data_type opt_926 opt_928 opt_930 opt_931 API_INTEGRATION EQ id_ opt_935 opt_939 opt_941 opt_942 opt_944 opt_946 AS string

    create_external_table ::= CREATE opt_947 EXTERNAL TABLE opt_948 object_name LPAREN external_table_column_decl_list RPAREN opt_949 opt_950 opt_951 LOCATION EQ named_stage opt_953 opt_955 opt_956 file_format opt_958 opt_959 opt_960 opt_961 opt_962
           | CREATE opt_963 EXTERNAL TABLE opt_964 object_name LPAREN external_table_column_decl_list RPAREN opt_965 opt_966 opt_967 LOCATION EQ named_stage PARTITION_TYPE EQ USER_SPECIFIED file_format opt_968 opt_969 opt_970 opt_971
           | CREATE opt_972 EXTERNAL TABLE opt_973 object_name LPAREN external_table_column_decl_list RPAREN opt_974 opt_975 opt_976 LOCATION EQ named_stage PARTITION_TYPE EQ USER_SPECIFIED file_format opt_978 opt_979 opt_980 opt_981 opt_982

    external_table_column_decl ::= column_name data_type AS grp_983 opt_984

    external_table_column_decl_list ::= external_table_column_decl list_986

    full_acct ::= id_ DOT id_

    integration_type_name ::= SECURITY INTEGRATIONS
           | API INTEGRATIONS

    create_failover_group ::= CREATE FAILOVER GROUP opt_987 id_ OBJECT_TYPES EQ object_type list_989 opt_993 opt_997 opt_1001 ALLOWED_ACCOUNTS EQ full_acct list_1003 opt_1005 opt_1007
           | CREATE FAILOVER GROUP opt_1008 id_ AS REPLICA OF id_ DOT id_ DOT id_

    type_fileformat ::= CSV
           | JSON
           | AVRO
           | ORC
           | PARQUET
           | XML
           | CSV_Q
           | JSON_Q
           | AVRO_Q
           | ORC_Q
           | PARQUET_Q
           | XML_Q

    create_file_format ::= CREATE opt_1009 FILE FORMAT opt_1010 object_name opt_1012 list_1013 opt_1014

    arg_decl ::= arg_name arg_data_type opt_1015

    arg_default_value_clause ::= DEFAULT expr

    col_decl ::= column_name data_type opt_1016

    virtual_column_decl ::= AS LPAREN function_call RPAREN
           | AS function_call

    function_definition ::= string
           | DBL_DOLLAR

    create_function ::= CREATE opt_1017 opt_1018 FUNCTION opt_1019 object_name LPAREN opt_1023 RPAREN RETURNS grp_1024 opt_1029 opt_1032 opt_1034 opt_1036 opt_1038 opt_1041 opt_1043 opt_1045 opt_1047 opt_1048 AS function_definition
           | CREATE opt_1049 opt_1050 FUNCTION object_name LPAREN opt_1054 RPAREN RETURNS grp_1055 opt_1060 opt_1062 opt_1064 opt_1065 opt_1066 AS function_definition

    create_git_repository ::= CREATE opt_1067 GIT REPOSITORY opt_1068 object_name list_1069

    create_git_opts ::= ORIGIN EQ string
           | API_INTEGRATION EQ id_
           | GIT_CREDENTIALS EQ object_name
           | comment_clause
           | with_tags

    create_image_repository ::= CREATE opt_1070 IMAGE REPOSITORY opt_1071 object_name opt_1072 opt_1073 opt_1074

    create_index ::= CREATE opt_1075 INDEX opt_1076 id_ ON object_name column_list_in_parentheses opt_1078

    create_managed_account ::= CREATE MANAGED ACCOUNT id_ ADMIN_NAME EQ id_ COMMA ADMIN_PASSWORD EQ string COMMA TYPE EQ READER opt_1080

    create_masking_policy ::= CREATE opt_1081 MASKING POLICY opt_1082 object_name AS LPAREN arg_name arg_data_type opt_1084 RPAREN RETURNS arg_data_type ARROW expr opt_1085

    tag_decl ::= object_name EQ string

    column_list_in_parentheses ::= LPAREN column_list RPAREN

    create_materialized_view ::= CREATE opt_1086 opt_1087 MATERIALIZED VIEW opt_1088 object_name opt_1090 list_1091 opt_1092 opt_1093 opt_1094 opt_1095 opt_1096 AS select_statement

    create_network_policy ::= CREATE opt_1097 NETWORK POLICY id_ ALLOWED_IP_LIST EQ LPAREN opt_1098 RPAREN opt_1101 opt_1102

    cloud_provider_params_auto ::= NOTIFICATION_PROVIDER EQ GCP_PUBSUB GCP_PUBSUB_SUBSCRIPTION_NAME EQ string
           | NOTIFICATION_PROVIDER EQ AZURE_EVENT_GRID AZURE_STORAGE_QUEUE_PRIMARY_URI EQ string AZURE_TENANT_ID EQ string

    cloud_provider_params_push ::= NOTIFICATION_PROVIDER EQ AWS_SNS AWS_SNS_TOPIC_ARN EQ string AWS_SNS_ROLE_ARN EQ string
           | NOTIFICATION_PROVIDER EQ GCP_PUBSUB GCP_PUBSUB_TOPIC_NAME EQ string
           | NOTIFICATION_PROVIDER EQ AZURE_EVENT_GRID AZURE_EVENT_GRID_TOPIC_ENDPOINT EQ string AZURE_TENANT_ID EQ string

    create_notification_integration ::= CREATE opt_1103 NOTIFICATION INTEGRATION opt_1104 id_ ENABLED EQ true_false TYPE EQ QUEUE cloud_provider_params_auto opt_1105
           | CREATE opt_1106 NOTIFICATION INTEGRATION opt_1107 id_ ENABLED EQ true_false DIRECTION EQ OUTBOUND TYPE EQ QUEUE cloud_provider_params_push opt_1108

    create_pipe ::= CREATE opt_1109 PIPE opt_1110 object_name opt_1112 opt_1114 opt_1116 opt_1118 opt_1119 AS copy_into_table

    caller_owner ::= CALLER
           | OWNER

    executa_as ::= EXECUTE AS caller_owner

    procedure_definition ::= string
           | DBL_DOLLAR

    not_null ::= NOT NULL_

    create_procedure ::= CREATE opt_1120 PROCEDURE object_name LPAREN opt_1124 RPAREN RETURNS grp_1125 opt_1130 LANGUAGE SQL opt_1132 opt_1134 opt_1135 opt_1136 AS procedure_definition
           | CREATE opt_1137 opt_1138 PROCEDURE object_name LPAREN opt_1142 RPAREN RETURNS data_type opt_1143 LANGUAGE JAVASCRIPT opt_1145 opt_1147 opt_1148 opt_1149 AS procedure_definition
           | CREATE opt_1150 opt_1151 PROCEDURE object_name LPAREN opt_1155 RPAREN RETURNS grp_1156 LANGUAGE PYTHON RUNTIME_VERSION EQ string opt_1163 PACKAGES EQ LPAREN string_list RPAREN HANDLER EQ string opt_1164 opt_1165 AS procedure_definition

    create_replication_group ::= CREATE REPLICATION GROUP opt_1166 id_ OBJECT_TYPES EQ object_type list_1168 opt_1172 opt_1176 opt_1180 ALLOWED_ACCOUNTS EQ full_acct list_1182 opt_1184 opt_1186
           | CREATE REPLICATION GROUP opt_1187 id_ AS REPLICA OF id_ DOT id_ DOT id_

    create_resource_monitor ::= CREATE opt_1188 RESOURCE MONITOR id_ WITH opt_1189 opt_1190 opt_1193 opt_1195 opt_1196 opt_1199

    create_role ::= CREATE opt_1200 ROLE opt_1201 id_ opt_1202 opt_1203

    create_row_access_policy ::= CREATE opt_1204 ROW ACCESS POLICY opt_1205 id_ AS LPAREN arg_decl list_1207 RPAREN RETURNS BOOLEAN ARROW expr opt_1208

    create_schema ::= CREATE SCHEMA schema_name
           | CREATE or_replace SCHEMA schema_name
           | CREATE SCHEMA if_not_exists schema_name

    create_secret ::= CREATE opt_1222 SECRET opt_1223 object_name grp_1224 opt_1225

    create_security_integration_external_oauth ::= CREATE opt_1226 SECURITY INTEGRATION opt_1227 id_ TYPE EQ EXTERNAL_OAUTH ENABLED EQ true_false EXTERNAL_OAUTH_TYPE EQ grp_1228 EXTERNAL_OAUTH_ISSUER EQ string EXTERNAL_OAUTH_TOKEN_USER_MAPPING_CLAIM EQ grp_1229 EXTERNAL_OAUTH_SNOWFLAKE_USER_MAPPING_ATTRIBUTE EQ string opt_1231 opt_1234 opt_1236 opt_1238 opt_1240 opt_1242 opt_1244 opt_1247 opt_1249

    implicit_none ::= IMPLICIT
           | NONE

    create_security_integration_snowflake_oauth ::= CREATE opt_1250 SECURITY INTEGRATION opt_1251 id_ TYPE EQ OAUTH OAUTH_CLIENT EQ partner_application OAUTH_REDIRECT_URI EQ string opt_1252 opt_1254 opt_1256 opt_1258 opt_1260 opt_1261
           | CREATE opt_1262 SECURITY INTEGRATION opt_1263 id_ TYPE EQ OAUTH OAUTH_CLIENT EQ CUSTOM OAUTH_REDIRECT_URI EQ string opt_1264 opt_1266 opt_1268 opt_1270 opt_1272 opt_1274 opt_1276 opt_1278 opt_1279 opt_1281 opt_1283 opt_1284

    create_security_integration_saml2 ::= CREATE opt_1285 SECURITY INTEGRATION opt_1286 TYPE EQ SAML2 enabled_true_false SAML2_ISSUER EQ string SAML2_SSO_URL EQ string SAML2_PROVIDER EQ string SAML2_X509_CERT EQ string opt_1288 opt_1290 opt_1292 opt_1294 opt_1296 opt_1298 opt_1300 opt_1302 opt_1304

    create_security_integration_scim ::= CREATE opt_1305 SECURITY INTEGRATION opt_1306 id_ TYPE EQ SCIM SCIM_CLIENT EQ grp_1307 RUN_AS_ROLE EQ grp_1308 opt_1309 opt_1311 opt_1312

    network_policy ::= NETWORK_POLICY EQ string

    partner_application ::= TABLEAU_DESKTOP
           | TABLEAU_SERVER
           | LOOKER

    start_with ::= START opt_1313 opt_1314 num

    increment_by ::= INCREMENT opt_1315 opt_1316 num

    create_semantic_view ::= CREATE opt_1317 SEMANTIC VIEW opt_1318 object_name TABLES LPAREN logical_table list_1320 RPAREN opt_1324 opt_1326 opt_1328 opt_1330 opt_1331 opt_1332 opt_1333

    logical_table ::= opt_1335 object_name opt_1337 opt_1340 opt_1341 opt_1342

    relationship_def ::= opt_1344 alias column_list_in_parentheses REFERENCES alias opt_1347

    with_synonyms_clause ::= WITH SYNONYMS opt_1348 LPAREN string_list RPAREN

    semantic_expression_list ::= semantic_expression list_1350

    semantic_expression ::= opt_1351 alias DOT id_ AS expr opt_1355 opt_1356 opt_1357
           | opt_1359 alias DOT id_ AS expr opt_1360 opt_1361

    with_extension_clause ::= WITH EXTENSION LPAREN CA EQ string RPAREN

    create_sequence ::= CREATE opt_1362 SEQUENCE opt_1363 object_name opt_1364 opt_1365 opt_1366 opt_1367 opt_1368

    create_service ::= CREATE opt_1369 SERVICE opt_1370 object_name IN COMPUTE POOL id_ FROM service_specification list_1371

    service_specification ::= opt_1373 SPECIFICATION_FILE EQ string
           | SPECIFICATION service_specification_text
           | opt_1375 SPECIFICATION_TEMPLATE_FILE EQ string USING key_value_assoc_list
           | SPECIFICATION_TEMPLATE service_specification_text USING key_value_assoc_list

    service_specification_text ::= string
           | DBL_DOLLAR

    key_value_assoc_list ::= LPAREN key_value_assoc list_1377 RPAREN

    key_value_assoc ::= string ASSOC string

    service_params ::= service_param_name EQ grp_1378
           | comment_clause
           | with_tags

    service_param_name ::= MIN_INSTANCES
           | AUTO_SUSPEND_SECS
           | MAX_INSTANCES
           | AUTO_RESUME
           | LOG_LEVEL
           | MIN_READY_INSTANCES
           | QUERY_WAREHOUSE
           | EXTERNAL_ACCESS_INTEGRATIONS

    create_session_policy ::= CREATE opt_1381 SESSION POLICY opt_1382 object_name list_1383

    session_policy_params ::= session_policy_param_name EQ num
           | comment_clause

    session_policy_param_name ::= SESSION_IDLE_TIMEOUT_MINS
           | SESSION_UI_IDLE_TIMEOUT_MINS

    create_password_policy ::= CREATE opt_1384 PASSWORD POLICY opt_1385 object_name list_1386

    password_policy_params ::= password_policy_param_name EQ num
           | comment_clause

    password_policy_param_name ::= PASSWORD_HISTORY
           | PASSWORD_LOCKOUT_TIME_MINS
           | PASSWORD_MAX_AGE_DAYS
           | PASSWORD_MAX_LENGTH
           | PASSWORD_MAX_RETRIES
           | PASSWORD_MIN_AGE_DAYS
           | PASSWORD_MIN_LENGTH
           | PASSWORD_MIN_LOWER_CASE_CHARS
           | PASSWORD_MIN_NUMERIC_CHARS
           | PASSWORD_MIN_SPECIAL_CHARS
           | PASSWORD_MIN_UPPER_CASE_CHARS

    create_share ::= CREATE opt_1387 SHARE id_ opt_1388

    character ::= CHAR_LITERAL
           | AAD_PROVISIONER_Q
           | ARRAY_Q
           | AUTO_Q
           | AVRO_Q
           | AZURE_CSE_Q
           | AZURE_Q
           | BOTH_Q
           | CSV_Q
           | GCS_SSE_KMS_Q
           | GENERIC_Q
           | GENERIC_SCIM_PROVISIONER_Q
           | JSON_Q
           | NONE_Q
           | OBJECT_Q
           | OKTA_PROVISIONER_Q
           | OKTA_Q
           | ORC_Q
           | PARQUET_Q
           | S3
           | SNOWPARK_OPTIMIZED
           | XML_Q

    format_type_options ::= COMPRESSION EQ grp_1389
           | RECORD_DELIMITER EQ grp_1390
           | FIELD_DELIMITER EQ grp_1391
           | FILE_EXTENSION EQ string
           | SKIP_HEADER EQ num
           | SKIP_BLANK_LINES EQ true_false
           | DATE_FORMAT EQ grp_1392
           | TIME_FORMAT EQ grp_1393
           | TIMESTAMP_FORMAT EQ grp_1394
           | BINARY_FORMAT EQ grp_1395
           | ESCAPE EQ grp_1396
           | ESCAPE_UNENCLOSED_FIELD EQ grp_1397
           | TRIM_SPACE EQ true_false
           | FIELD_OPTIONALLY_ENCLOSED_BY EQ grp_1398
           | NULL_IF EQ LPAREN list_1399 RPAREN
           | ERROR_ON_COLUMN_COUNT_MISMATCH EQ true_false
           | REPLACE_INVALID_CHARACTERS EQ true_false
           | EMPTY_FIELD_AS_NULL EQ true_false
           | SKIP_BYTE_ORDER_MARK EQ true_false
           | ENCODING EQ grp_1400
           | ENABLE_OCTAL EQ true_false
           | ALLOW_DUPLICATE EQ true_false
           | STRIP_OUTER_ARRAY EQ true_false
           | STRIP_NULL_VALUES EQ true_false
           | IGNORE_UTF8_ERRORS EQ true_false
           | COMPRESSION EQ AUTO
           | LZO
           | SNAPPY
           | NONE
           | SNAPPY_COMPRESSION EQ true_false
           | BINARY_AS_TEXT EQ true_false
           | GZIP
           | BZ2
           | BROTLI
           | ZSTD
           | DEFLATE
           | RAW_DEFLATE
           | PRESERVE_SPACE EQ true_false
           | STRIP_OUTER_ELEMENT EQ true_false
           | DISABLE_SNOWFLAKE_DATA EQ true_false
           | DISABLE_AUTO_CONVERT EQ true_false

    copy_options ::= ON_ERROR EQ grp_1401
           | SIZE_LIMIT EQ num
           | PURGE EQ true_false
           | RETURN_FAILED_ONLY EQ true_false
           | MATCH_BY_COLUMN_NAME EQ CASE_SENSITIVE
           | CASE_INSENSITIVE
           | NONE
           | ENFORCE_LENGTH EQ true_false
           | TRUNCATECOLUMNS EQ true_false
           | FORCE EQ true_false

    encryption_opts_internal ::= ENCRYPTION EQ LPAREN TYPE EQ grp_1402 RPAREN

    stage_type ::= TYPE EQ string

    stage_master_key ::= MASTER_KEY EQ string

    stage_kms_key ::= KMS_KEY_ID EQ string

    stage_encryption_opts_aws ::= ENCRYPTION EQ LPAREN grp_1403 RPAREN

    aws_token ::= AWS_TOKEN EQ string

    aws_key_id ::= AWS_KEY_ID EQ string

    aws_secret_key ::= AWS_SECRET_KEY EQ string

    aws_role ::= AWS_ROLE EQ string

    azure_encryption_value ::= opt_1407 MASTER_KEY EQ string
           | MASTER_KEY EQ string TYPE EQ AZURE_CSE_Q
           | TYPE EQ NONE_Q

    stage_encryption_opts_az ::= ENCRYPTION EQ LPAREN azure_encryption_value RPAREN

    storage_integration_eq_id ::= STORAGE_INTEGRATION EQ id_

    az_credential_or_storage_integration ::= storage_integration_eq_id
           | CREDENTIALS EQ LPAREN AZURE_SAS_TOKEN EQ string RPAREN

    gcp_encryption_value ::= opt_1409 KMS_KEY_ID EQ string
           | KMS_KEY_ID EQ string TYPE EQ GCS_SSE_KMS_Q
           | TYPE EQ NONE_Q

    stage_encryption_opts_gcp ::= ENCRYPTION EQ LPAREN gcp_encryption_value RPAREN

    aws_credential_or_storage_integration ::= storage_integration_eq_id
           | CREDENTIALS EQ LPAREN grp_1410 RPAREN

    external_stage_params ::= URL EQ grp_1412 opt_1416
           | URL EQ GCS_PATH opt_1420
           | URL EQ AZURE_PATH opt_1424

    true_false ::= TRUE
           | FALSE

    enable ::= ENABLE EQ true_false

    refresh_on_create ::= REFRESH_ON_CREATE EQ true_false

    auto_refresh ::= AUTO_REFRESH EQ true_false

    notification_integration ::= NOTIFICATION_INTEGRATION EQ string

    directory_table_internal_params ::= DIRECTORY EQ LPAREN grp_1425 RPAREN

    directory_table_external_params ::= DIRECTORY EQ LPAREN enable opt_1427 opt_1428 RPAREN
           | DIRECTORY EQ LPAREN enable opt_1429 opt_1430 opt_1431 RPAREN
           | DIRECTORY EQ LPAREN enable opt_1432 opt_1433 opt_1434 RPAREN

    create_stage ::= CREATE opt_1435 opt_1436 STAGE opt_1437 object_name_or_identifier opt_1438 opt_1439 opt_1443 opt_1445 opt_1446 opt_1447
           | CREATE opt_1448 opt_1449 STAGE opt_1450 object_name_or_identifier external_stage_params opt_1451 opt_1455 opt_1457 opt_1458 opt_1459

    alter_semantic_view ::= ALTER SEMANTIC VIEW opt_1460 object_name grp_1461

    alter_stage ::= ALTER STAGE opt_1462 object_name_or_identifier RENAME TO object_name_or_identifier
           | ALTER STAGE opt_1463 object_name_or_identifier set_tags
           | ALTER STAGE opt_1464 object_name_or_identifier unset_tags
           | ALTER STAGE opt_1465 object_name_or_identifier SET opt_1466 opt_1467 opt_1469 opt_1470

    drop_stage ::= DROP STAGE opt_1471 object_name_or_identifier

    describe_stage ::= describe STAGE object_name_or_identifier

    show_stages ::= SHOW STAGES opt_1472 opt_1473

    cloud_provider_params ::= STORAGE_PROVIDER EQ S3 STORAGE_AWS_ROLE_ARN EQ string opt_1475
           | STORAGE_PROVIDER EQ GCS
           | STORAGE_PROVIDER EQ AZURE AZURE_TENANT_ID EQ string

    cloud_provider_params2 ::= STORAGE_AWS_ROLE_ARN EQ string opt_1477
           | AZURE_TENANT_ID EQ string

    cloud_provider_params3 ::= INTEGRATION EQ string

    create_storage_integration ::= CREATE opt_1478 STORAGE INTEGRATION opt_1479 id_ TYPE EQ EXTERNAL_STAGE cloud_provider_params ENABLED EQ true_false STORAGE_ALLOWED_LOCATIONS EQ LPAREN string_list RPAREN opt_1481 opt_1482

    copy_grants ::= COPY GRANTS

    copy_tags ::= COPY TAGS

    append_only ::= APPEND_ONLY EQ true_false

    insert_only ::= INSERT_ONLY EQ TRUE

    show_initial_rows ::= SHOW_INITIAL_ROWS EQ true_false

    stream_time ::= at_before1 LPAREN grp_1483 RPAREN

    create_stream ::= CREATE opt_1484 STREAM opt_1485 object_name opt_1486 opt_1487 ON grp_1488 object_name opt_1489 opt_1490 opt_1491 opt_1492
           | CREATE opt_1493 STREAM opt_1494 object_name opt_1495 opt_1496 ON EXTERNAL TABLE object_name opt_1497 opt_1498 opt_1499
           | CREATE opt_1500 STREAM opt_1501 object_name opt_1502 opt_1503 ON STAGE object_name opt_1504

    temporary ::= TEMP
           | TEMPORARY

    table_type ::= opt_1506 temporary
           | VOLATILE
           | TRANSIENT
           | HYBRID

    with_tags ::= opt_1507 TAG LPAREN tag_decl list_1509 RPAREN

    with_row_access_policy ::= opt_1510 ROW ACCESS POLICY id_ ON LPAREN column_name list_1512 RPAREN

    cluster_by ::= CLUSTER BY opt_1513 expr_list_in_parentheses

    change_tracking ::= CHANGE_TRACKING EQ true_false

    with_masking_policy ::= opt_1514 MASKING POLICY id_ opt_1516

    collate ::= COLLATE string

    order_noorder ::= ORDER
           | NOORDER

    default_value ::= DEFAULT expr
           | grp_1517 opt_1519 opt_1520

    foreign_key ::= FOREIGN KEY

    primary_key ::= PRIMARY KEY

    out_of_line_constraint ::= opt_1522 grp_1523 opt_1526

    full_col_decl ::= col_decl list_1528 opt_1529 opt_1530 opt_1531

    materialized_col_decl ::= column_name opt_1532 opt_1533 opt_1534 opt_1536

    materialized_col_decl_list ::= materialized_col_decl list_1538

    column_decl_item ::= full_col_decl
           | out_of_line_constraint

    column_decl_item_list ::= column_decl_item list_1540

    create_table ::= CREATE TABLE grp_1544 list_1547 column_decl_item_list_paren list_1548
           | CREATE or_replace TABLE grp_1544 list_1547 column_decl_item_list_paren list_1548
           | CREATE table_type TABLE grp_1544 list_1547 column_decl_item_list_paren list_1548
           | CREATE or_replace table_type TABLE grp_1544 list_1547 column_decl_item_list_paren list_1548

    column_decl_item_list_paren ::= LPAREN column_decl_item_list RPAREN

    create_table_optionnal_clause ::= settable_table_options
           | addable_table_options
           | deprecated_table_options
           | copy_grants
           | copy_tags

    addable_table_options ::= with_row_access_policy
           | with_tags

    settable_table_options ::= cluster_by
           | set_data_retention_params
           | default_ddl_collation
           | comment_clause
           | change_tracking

    deprecated_table_options ::= stage_file_format
           | STAGE_COPY_OPTIONS EQ LPAREN copy_options RPAREN

    create_table_as_select ::= CREATE opt_1549 opt_1550 TABLE grp_1551 opt_1555 opt_1556 opt_1557 opt_1558 opt_1559 opt_1560 AS query_statement

    create_table_like ::= CREATE opt_1561 opt_1562 TABLE opt_1563 object_name LIKE object_name opt_1564 opt_1565

    create_tag ::= CREATE opt_1566 TAG opt_1567 object_name opt_1568 opt_1569

    tag_allowed_values ::= ALLOWED_VALUES string_list

    session_parameter ::= ABORT_DETACHED_QUERY
           | ALLOW_CLIENT_MFA_CACHING
           | ALLOW_ID_TOKEN
           | AUTOCOMMIT
           | AUTOCOMMIT_API_SUPPORTED
           | BINARY_INPUT_FORMAT
           | BINARY_OUTPUT_FORMAT
           | CLIENT_ENABLE_LOG_INFO_STATEMENT_PARAMETERS
           | CLIENT_ENCRYPTION_KEY_SIZE
           | CLIENT_MEMORY_LIMIT
           | CLIENT_METADATA_REQUEST_USE_CONNECTION_CTX
           | CLIENT_METADATA_USE_SESSION_DATABASE
           | CLIENT_PREFETCH_THREADS
           | CLIENT_RESULT_CHUNK_SIZE
           | CLIENT_RESULT_COLUMN_CASE_INSENSITIVE
           | CLIENT_SESSION_KEEP_ALIVE
           | CLIENT_SESSION_KEEP_ALIVE_HEARTBEAT_FREQUENCY
           | CLIENT_TIMESTAMP_TYPE_MAPPING
           | DATA_RETENTION_TIME_IN_DAYS
           | DATE_INPUT_FORMAT
           | DATE_OUTPUT_FORMAT
           | DEFAULT_DDL_COLLATION_
           | ENABLE_INTERNAL_STAGES_PRIVATELINK
           | ENABLE_UNLOAD_PHYSICAL_TYPE_OPTIMIZATION
           | ENFORCE_SESSION_POLICY
           | ERROR_ON_NONDETERMINISTIC_MERGE
           | ERROR_ON_NONDETERMINISTIC_UPDATE
           | EXTERNAL_OAUTH_ADD_PRIVILEGED_ROLES_TO_BLOCKED_LIST
           | GEOGRAPHY_OUTPUT_FORMAT
           | GEOMETRY_OUTPUT_FORMAT
           | INITIAL_REPLICATION_SIZE_LIMIT_IN_TB
           | JDBC_TREAT_DECIMAL_AS_INT
           | JDBC_TREAT_TIMESTAMP_NTZ_AS_UTC
           | JDBC_USE_SESSION_TIMEZONE
           | JSON_INDENT
           | JS_TREAT_INTEGER_AS_BIGINT
           | LOCK_TIMEOUT
           | MAX_CONCURRENCY_LEVEL
           | MAX_DATA_EXTENSION_TIME_IN_DAYS
           | MULTI_STATEMENT_COUNT
           | MIN_DATA_RETENTION_TIME_IN_DAYS
           | NETWORK_POLICY
           | SHARE_RESTRICTIONS
           | PERIODIC_DATA_REKEYING
           | PIPE_EXECUTION_PAUSED
           | PREVENT_UNLOAD_TO_INLINE_URL
           | PREVENT_UNLOAD_TO_INTERNAL_STAGES
           | QUERY_TAG
           | QUOTED_IDENTIFIERS_IGNORE_CASE
           | REQUIRE_STORAGE_INTEGRATION_FOR_STAGE_CREATION
           | REQUIRE_STORAGE_INTEGRATION_FOR_STAGE_OPERATION
           | ROWS_PER_RESULTSET
           | SAML_IDENTITY_PROVIDER
           | SIMULATED_DATA_SHARING_CONSUMER
           | SSO_LOGIN_PAGE
           | STATEMENT_QUEUED_TIMEOUT_IN_SECONDS
           | STATEMENT_TIMEOUT_IN_SECONDS
           | STRICT_JSON_OUTPUT
           | SUSPEND_TASK_AFTER_NUM_FAILURES
           | TIMESTAMP_DAY_IS_ALWAYS_24H
           | TIMESTAMP_INPUT_FORMAT
           | TIMESTAMP_LTZ_OUTPUT_FORMAT
           | TIMESTAMP_NTZ_OUTPUT_FORMAT
           | TIMESTAMP_OUTPUT_FORMAT
           | TIMESTAMP_TYPE_MAPPING
           | TIMESTAMP_TZ_OUTPUT_FORMAT
           | TIMEZONE
           | TIME_INPUT_FORMAT
           | TIME_OUTPUT_FORMAT
           | TRANSACTION_ABORT_ON_ERROR
           | TRANSACTION_DEFAULT_ISOLATION_LEVEL
           | TWO_DIGIT_CENTURY_START
           | UNSUPPORTED_DDL_ACTION
           | USE_CACHED_RESULT
           | USER_TASK_MANAGED_INITIAL_WAREHOUSE_SIZE
           | USER_TASK_TIMEOUT_MS
           | WEEK_OF_YEAR_POLICY
           | WEEK_START

    session_parameter_list ::= session_parameter list_1571

    session_params_list ::= session_params list_1573

    create_task ::= CREATE opt_1574 TASK opt_1575 object_name list_1576 opt_1577 opt_1578 opt_1582 opt_1584 AS task_sql

    task_parameters ::= task_compute
           | task_schedule
           | task_overlap
           | session_params_list
           | task_timeout
           | task_suspend_after_failure_number
           | task_error_integration

    task_compute ::= WAREHOUSE EQ id_
           | USER_TASK_MANAGED_INITIAL_WAREHOUSE_SIZE EQ grp_1585

    task_schedule ::= SCHEDULE EQ string

    task_timeout ::= USER_TASK_TIMEOUT_MS EQ num

    task_suspend_after_failure_number ::= SUSPEND_TASK_AFTER_NUM_FAILURES EQ num

    task_error_integration ::= ERROR_INTEGRATION EQ id_

    task_overlap ::= ALLOW_OVERLAPPING_EXECUTION EQ true_false

    sql ::= EXECUTE IMMEDIATE DBL_DOLLAR
           | sql_command
           | call

    task_sql ::= sql
           | task_scripting_block

    task_scripting_block ::= BEGIN task_scripting_statement_list END
           | DECLARE task_scripting_declaration_list BEGIN task_scripting_statement_list END

    task_scripting_declaration_list ::= task_scripting_declaration list_1587 SEMI

    task_scripting_declaration ::= id_ data_type

    task_scripting_statement_list ::= task_scripting_statement list_1589 opt_1590

    task_scripting_statement ::= sql_command
           | call
           | task_scripting_assignment
           | task_scripting_return

    task_scripting_assignment ::= id_ COLON EQ expr

    task_scripting_return ::= RETURN expr

    call ::= CALL object_name LPAREN opt_1591 RPAREN

    create_user ::= CREATE opt_1592 USER opt_1593 id_ opt_1594 opt_1595 opt_1596

    view_col ::= column_name with_masking_policy with_tags

    create_view ::= CREATE opt_1597 opt_1598 opt_1599 VIEW opt_1600 object_name opt_1602 list_1603 opt_1604 opt_1605 opt_1606 opt_1607 AS query_statement

    create_warehouse ::= CREATE opt_1608 WAREHOUSE opt_1609 id_fn opt_1613 list_1614

    wh_common_size ::= XSMALL
           | SMALL
           | MEDIUM
           | LARGE
           | XLARGE
           | XXLARGE

    wh_extra_size ::= XXXLARGE
           | X4LARGE
           | X5LARGE
           | X6LARGE

    wh_properties ::= WAREHOUSE_SIZE EQ grp_1615
           | WAREHOUSE_TYPE EQ grp_1616
           | MAX_CLUSTER_COUNT EQ num
           | MIN_CLUSTER_COUNT EQ num
           | SCALING_POLICY EQ grp_1617
           | AUTO_SUSPEND grp_1618
           | AUTO_RESUME EQ true_false
           | INITIALLY_SUSPENDED EQ true_false
           | RESOURCE_MONITOR EQ id_
           | comment_clause
           | ENABLE_QUERY_ACCELERATION EQ true_false
           | QUERY_ACCELERATION_MAX_SCALE_FACTOR EQ num
           | MAX_CONCURRENCY_LEVEL EQ num

    wh_params ::= MAX_CONCURRENCY_LEVEL EQ num
           | STATEMENT_QUEUED_TIMEOUT_IN_SECONDS EQ num
           | STATEMENT_TIMEOUT_IN_SECONDS EQ num opt_1619

    trigger_definition ::= ON num PERCENT DO grp_1620

    object_type_name ::= ROLE
           | USER
           | WAREHOUSE
           | INTEGRATION
           | NETWORK POLICY
           | SESSION POLICY
           | DATABASE
           | SCHEMA
           | TABLE
           | VIEW
           | STAGE
           | FILE FORMAT
           | STREAM
           | TASK
           | MASKING POLICY
           | ROW ACCESS POLICY
           | TAG
           | PIPE
           | FUNCTION
           | PROCEDURE
           | SEQUENCE

    object_type_plural ::= ALERTS
           | DATABASES
           | INTEGRATIONS
           | POLICIES
           | ROLES
           | SCHEMAS
           | STAGES
           | STREAMS
           | TABLES
           | TAGS
           | TASKS
           | USERS
           | VIEWS
           | WAREHOUSES

    drop_command ::= drop_object
           | drop_alert
           | drop_connection
           | drop_database
           | drop_dynamic_table
           | drop_external_table
           | drop_failover_group
           | drop_file_format
           | drop_function
           | drop_git_repository
           | drop_image_repository
           | drop_index
           | drop_integration
           | drop_managed_account
           | drop_masking_policy
           | drop_materialized_view
           | drop_network_policy
           | drop_password_policy
           | drop_pipe
           | drop_procedure
           | drop_replication_group
           | drop_resource_monitor
           | drop_role
           | drop_row_access_policy
           | drop_schema
           | drop_secret
           | drop_semantic_view
           | drop_sequence
           | drop_service
           | drop_session_policy
           | drop_share
           | drop_stage
           | drop_stream
           | drop_table
           | drop_tag
           | drop_task
           | drop_user
           | drop_view
           | drop_warehouse

    drop_object ::= DROP object_type if_exists id_ opt_1621

    drop_alert ::= DROP ALERT id_

    drop_connection ::= DROP CONNECTION opt_1622 id_

    drop_database ::= DROP DATABASE opt_1623 id_ opt_1624

    drop_dynamic_table ::= DROP DYNAMIC TABLE id_

    drop_external_table ::= DROP EXTERNAL TABLE opt_1625 object_name opt_1626

    drop_failover_group ::= DROP FAILOVER GROUP opt_1627 id_

    drop_file_format ::= DROP FILE FORMAT opt_1628 id_

    drop_function ::= DROP FUNCTION opt_1629 object_name arg_types

    drop_git_repository ::= DROP GIT REPOSITORY opt_1630 object_name

    drop_image_repository ::= DROP IMAGE REPOSITORY opt_1631 object_name

    drop_index ::= DROP INDEX opt_1632 object_name DOT id_

    drop_integration ::= DROP opt_1634 INTEGRATION opt_1635 id_

    drop_managed_account ::= DROP MANAGED ACCOUNT id_

    drop_masking_policy ::= DROP MASKING POLICY id_

    drop_materialized_view ::= DROP MATERIALIZED VIEW opt_1636 object_name

    drop_network_policy ::= DROP NETWORK POLICY opt_1637 id_

    drop_pipe ::= DROP PIPE opt_1638 object_name

    drop_procedure ::= DROP PROCEDURE opt_1639 object_name arg_types

    drop_replication_group ::= DROP REPLICATION GROUP opt_1640 id_

    drop_resource_monitor ::= DROP RESOURCE MONITOR id_

    drop_role ::= DROP ROLE opt_1641 id_

    drop_row_access_policy ::= DROP ROW ACCESS POLICY opt_1642 id_

    drop_schema ::= DROP SCHEMA opt_1643 schema_name opt_1644

    drop_secret ::= DROP SECRET opt_1645 object_name

    drop_semantic_view ::= DROP SEMANTIC VIEW opt_1646 object_name

    drop_sequence ::= DROP SEQUENCE opt_1647 object_name opt_1648

    drop_service ::= DROP SERVICE opt_1649 object_name opt_1650

    drop_session_policy ::= DROP SESSION POLICY opt_1651 object_name

    drop_password_policy ::= DROP PASSWORD POLICY opt_1652 object_name

    drop_share ::= DROP SHARE id_

    drop_stream ::= DROP STREAM opt_1653 object_name

    drop_table ::= DROP TABLE opt_1654 object_name opt_1655

    drop_tag ::= DROP TAG opt_1656 object_name

    drop_task ::= DROP TASK opt_1657 object_name

    drop_user ::= DROP USER opt_1658 id_

    drop_view ::= DROP VIEW opt_1659 object_name

    drop_warehouse ::= DROP WAREHOUSE opt_1660 id_fn

    cascade_restrict ::= CASCADE
           | RESTRICT

    arg_types ::= LPAREN opt_1661 RPAREN

    undrop_command ::= undrop_database
           | undrop_schema
           | undrop_table
           | undrop_tag

    undrop_database ::= UNDROP DATABASE id_

    undrop_schema ::= UNDROP SCHEMA schema_name

    undrop_table ::= UNDROP TABLE object_name

    undrop_tag ::= UNDROP TAG object_name

    use_command ::= use_database
           | use_role
           | use_schema
           | use_secondary_roles
           | use_warehouse

    use_database ::= USE DATABASE id_

    use_role ::= USE ROLE id_

    use_schema ::= USE opt_1662 opt_1664 id_

    use_secondary_roles ::= USE SECONDARY ROLES grp_1665

    use_warehouse ::= USE WAREHOUSE id_fn

    comment_clause ::= COMMENT EQ string

    inline_comment_clause ::= COMMENT string

    if_suspended ::= IF SUSPENDED

    if_exists ::= IF EXISTS

    if_not_exists ::= IF NOT EXISTS

    or_replace ::= OR REPLACE

    or_alter ::= OR ALTER

    describe ::= DESC
           | DESCRIBE

    describe_command ::= describe_alert
           | describe_database
           | describe_dynamic_table
           | describe_event_table
           | describe_external_table
           | describe_file_format
           | describe_function
           | describe_git_repository
           | describe_integration
           | describe_masking_policy
           | describe_materialized_view
           | describe_network_policy
           | describe_password_policy
           | describe_pipe
           | describe_procedure
           | describe_result
           | describe_row_access_policy
           | describe_schema
           | describe_search_optimization
           | describe_semantic_view
           | describe_sequence
           | describe_session_policy
           | describe_share
           | describe_stage
           | describe_stream
           | describe_table
           | describe_task
           | describe_transaction
           | describe_user
           | describe_view
           | describe_warehouse

    describe_alert ::= describe ALERT id_

    describe_database ::= describe DATABASE id_

    describe_dynamic_table ::= describe DYNAMIC TABLE id_

    describe_event_table ::= describe EVENT TABLE id_

    describe_external_table ::= describe opt_1666 TABLE object_name opt_1669

    describe_file_format ::= describe FILE FORMAT id_

    describe_function ::= describe FUNCTION object_name arg_types

    describe_git_repository ::= describe GIT REPOSITORY object_name

    describe_integration ::= describe opt_1671 INTEGRATION id_

    describe_masking_policy ::= describe MASKING POLICY id_

    describe_materialized_view ::= describe MATERIALIZED VIEW object_name

    describe_network_policy ::= describe NETWORK POLICY id_

    describe_pipe ::= describe PIPE object_name

    describe_procedure ::= describe PROCEDURE object_name arg_types

    describe_result ::= describe RESULT grp_1672

    describe_row_access_policy ::= describe ROW ACCESS POLICY id_

    describe_schema ::= describe SCHEMA schema_name

    describe_search_optimization ::= describe SEARCH OPTIMIZATION ON object_name

    describe_semantic_view ::= describe SEMANTIC VIEW object_name

    describe_sequence ::= describe SEQUENCE object_name

    describe_session_policy ::= describe SESSION POLICY object_name

    describe_password_policy ::= describe PASSWORD POLICY object_name

    describe_share ::= describe SHARE id_

    describe_stream ::= describe STREAM object_name

    describe_table ::= describe TABLE object_name opt_1675

    describe_task ::= describe TASK object_name

    describe_transaction ::= describe TRANSACTION num

    describe_user ::= describe USER id_

    describe_view ::= describe VIEW object_name

    describe_warehouse ::= describe WAREHOUSE id_

    show_command ::= show_alerts
           | show_channels
           | show_columns
           | show_connections
           | show_databases
           | show_databases_in_failover_group
           | show_databases_in_replication_group
           | show_datasets
           | show_delegated_authorizations
           | show_dynamic_tables
           | show_event_tables
           | show_external_functions
           | show_external_tables
           | show_failover_groups
           | show_file_formats
           | show_functions
           | show_git_branches
           | show_git_repositories
           | show_git_tags
           | show_global_accounts
           | show_grants
           | show_image_repositories
           | show_images
           | show_indexes
           | show_integrations
           | show_locks
           | show_managed_accounts
           | show_masking_policies
           | show_materialized_views
           | show_network_policies
           | show_objects
           | show_organization_accounts
           | show_parameters
           | show_password_policies
           | show_pipes
           | show_primary_keys
           | show_procedures
           | show_regions
           | show_replication_accounts
           | show_replication_databases
           | show_replication_groups
           | show_resource_monitors
           | show_roles
           | show_row_access_policies
           | show_schemas
           | show_secrets
           | show_semantic_views
           | show_semantic_dimensions
           | show_semantic_dimensions_for_metric
           | show_semantic_facts
           | show_semantic_metrics
           | show_sequences
           | show_services
           | show_session_policies
           | show_shares
           | show_shares_in_failover_group
           | show_shares_in_replication_group
           | show_stages
           | show_streams
           | show_tables
           | show_tags
           | show_tasks
           | show_transactions
           | show_user_functions
           | show_users
           | show_variables
           | show_versions_in_dataset
           | show_views
           | show_warehouses

    show_alerts ::= SHOW opt_1676 ALERTS opt_1677 opt_1682 opt_1683 opt_1684

    show_channels ::= SHOW CHANNELS opt_1685 opt_1691

    show_columns ::= SHOW COLUMNS opt_1692 opt_1699

    show_connections ::= SHOW CONNECTIONS opt_1700

    starts_with ::= STARTS WITH string

    limit_rows ::= LIMIT num opt_1702

    limit_rows_2 ::= LIMIT num

    show_databases ::= SHOW opt_1703 DATABASES opt_1704 opt_1705 opt_1706 opt_1707

    show_databases_in_failover_group ::= SHOW DATABASES IN FAILOVER GROUP id_

    show_databases_in_replication_group ::= SHOW DATABASES IN REPLICATION GROUP id_

    show_datasets ::= SHOW DATASETS opt_1708 opt_1711 opt_1713 opt_1717

    show_delegated_authorizations ::= SHOW DELEGATED AUTHORIZATIONS
           | SHOW DELEGATED AUTHORIZATIONS BY USER id_
           | SHOW DELEGATED AUTHORIZATIONS TO SECURITY INTEGRATION id_

    show_dynamic_tables ::= SHOW DYNAMIC TABLES opt_1718 opt_1724 opt_1725 opt_1726

    show_event_tables ::= SHOW opt_1727 EVENT TABLES opt_1728 opt_1734 opt_1735 opt_1736

    show_external_functions ::= SHOW EXTERNAL FUNCTIONS opt_1737

    show_external_tables ::= SHOW opt_1738 EXTERNAL TABLES opt_1739 opt_1745 opt_1746 opt_1747

    show_failover_groups ::= SHOW FAILOVER GROUPS opt_1749

    show_file_formats ::= SHOW FILE FORMATS opt_1750 opt_1753

    show_functions ::= SHOW FUNCTIONS opt_1754 opt_1757

    show_git_branches ::= SHOW GIT BRANCHES opt_1758 IN opt_1760 object_name

    show_git_repositories ::= SHOW GIT REPOSITORIES opt_1761 opt_1766

    show_git_tags ::= SHOW GIT TAGS opt_1767 IN opt_1769 object_name

    show_global_accounts ::= SHOW GLOBAL ACCOUNTS opt_1770

    show_grants ::= SHOW GRANTS opt_1771
           | SHOW FUTURE GRANTS IN SCHEMA schema_name
           | SHOW FUTURE GRANTS IN DATABASE id_

    show_grants_opts ::= ON ACCOUNT
           | ON object_type object_name
           | TO grp_1772
           | OF ROLE id_
           | OF SHARE id_

    show_image_repositories ::= SHOW IMAGE REPOSITORIES opt_1773 opt_1774 opt_1775 opt_1776

    show_images ::= SHOW IMAGES IN IMAGE REPOSITORY object_name

    show_indexes ::= SHOW opt_1777 INDEXES opt_1778 opt_1779 opt_1780 opt_1781

    show_integrations ::= SHOW opt_1783 INTEGRATIONS opt_1784

    show_locks ::= SHOW LOCKS opt_1786

    show_managed_accounts ::= SHOW MANAGED ACCOUNTS opt_1787

    show_masking_policies ::= SHOW MASKING POLICIES opt_1788 opt_1789

    in_obj ::= IN grp_1790

    in_obj_2 ::= IN grp_1793

    in_obj_3 ::= IN grp_1797

    show_materialized_views ::= SHOW MATERIALIZED VIEWS opt_1800 opt_1801

    show_network_policies ::= SHOW NETWORK POLICIES

    show_objects ::= SHOW OBJECTS opt_1802 opt_1803

    show_organization_accounts ::= SHOW ORGANIZATION ACCOUNTS opt_1804

    in_for ::= IN
           | FOR

    show_parameters ::= SHOW PARAMETERS opt_1805 opt_1811

    show_pipes ::= SHOW PIPES opt_1812 opt_1813

    show_primary_keys ::= SHOW opt_1814 PRIMARY KEYS opt_1815

    show_procedures ::= SHOW PROCEDURES opt_1816 opt_1817

    show_regions ::= SHOW REGIONS opt_1818

    show_replication_accounts ::= SHOW REPLICATION ACCOUNTS opt_1819

    show_replication_databases ::= SHOW REPLICATION DATABASES opt_1820 opt_1822

    show_replication_groups ::= SHOW REPLICATION GROUPS opt_1824

    show_resource_monitors ::= SHOW RESOURCE MONITORS opt_1825

    show_roles ::= SHOW ROLES opt_1826

    show_row_access_policies ::= SHOW ROW ACCESS POLICIES opt_1827 opt_1828

    show_schemas ::= SHOW opt_1829 SCHEMAS opt_1830 opt_1831 opt_1835 opt_1836 opt_1837

    show_secrets ::= SHOW SECRETS opt_1838 opt_1843

    show_semantic_views ::= SHOW opt_1844 SEMANTIC VIEWS opt_1845 opt_1846 opt_1847 opt_1848

    show_semantic_dimensions ::= SHOW SEMANTIC DIMENSIONS opt_1849 opt_1850 opt_1851 opt_1852

    show_semantic_dimensions_for_metric ::= SHOW SEMANTIC DIMENSIONS opt_1853 IN object_name FOR METRIC id_ opt_1854 opt_1855

    show_semantic_facts ::= SHOW SEMANTIC FACTS opt_1856 opt_1857 opt_1858 opt_1859

    show_semantic_metrics ::= SHOW SEMANTIC METRICS opt_1860 opt_1861 opt_1862 opt_1863

    show_sequences ::= SHOW SEQUENCES opt_1864 opt_1865

    show_services ::= SHOW opt_1866 SERVICES opt_1868 opt_1869 opt_1871 opt_1872 opt_1873

    show_session_policies ::= SHOW SESSION POLICIES

    show_password_policies ::= SHOW PASSWORD POLICIES

    show_shares ::= SHOW SHARES opt_1874

    show_shares_in_failover_group ::= SHOW SHARES IN FAILOVER GROUP id_

    show_shares_in_replication_group ::= SHOW SHARES IN REPLICATION GROUP id_

    show_streams ::= SHOW STREAMS opt_1875 opt_1876

    show_tables ::= SHOW opt_1877 opt_1878 TABLES opt_1879 opt_1880 opt_1881 opt_1882

    show_tags ::= SHOW TAGS opt_1883 opt_1885

    show_tasks ::= SHOW opt_1886 TASKS opt_1887 opt_1893 opt_1894 opt_1895

    show_transactions ::= SHOW TRANSACTIONS opt_1897

    show_user_functions ::= SHOW USER FUNCTIONS opt_1898 opt_1899

    show_users ::= SHOW opt_1900 USERS opt_1901 opt_1903 opt_1905 opt_1907

    show_variables ::= SHOW VARIABLES opt_1908

    show_versions_in_dataset ::= SHOW VERSIONS opt_1909 IN DATASET object_name opt_1911

    show_views ::= SHOW opt_1912 VIEWS opt_1913 opt_1919 opt_1920 opt_1921

    show_warehouses ::= SHOW WAREHOUSES opt_1922

    like_pattern ::= LIKE string

    account_identifier ::= id_

    schema_name ::= id_ DOT id_
           | id_

    object_type ::= ACCOUNT PARAMETERS
           | DATABASES
           | INTEGRATIONS
           | NETWORK POLICIES
           | RESOURCE MONITORS
           | ROLES
           | SHARES
           | USERS
           | WAREHOUSES

    object_type_list ::= object_type list_1924

    tag_value ::= string

    arg_data_type ::= id_

    arg_name ::= id_

    param_name ::= id_

    region_group_id ::= id_

    snowflake_region_id ::= id_

    string ::= STRING_LITERAL

    string_list ::= string list_1926

    id_fn ::= id_
           | IDENTIFIER LPAREN id_ RPAREN

    id_ ::= sql_id
           | ID2
           | DOUBLE_QUOTE_ID
           | DOUBLE_QUOTE_BLANK

    keyword ::= ACCOUNT
           | ACTION
           | ALERT
           | AT_KEYWORD
           | CLUSTER
           | COMMENT
           | COMPUTE
           | CONDITION
           | COPY_OPTIONS_
           | DIRECTION
           | EMAIL
           | FIRST_VALUE
           | FLATTEN
           | FUNCTION
           | IF
           | JOB
           | JOBS
           | JOIN
           | KEY
           | LAG
           | LANGUAGE
           | LENGTH
           | MAX_CONCURRENCY_LEVEL
           | MODE
           | NOORDER
           | ORDER
           | OUTER
           | POLICY
           | POOL
           | RECURSIVE
           | REGION
           | RESTORE
           | ROLE
           | ROLLUP
           | ROW_NUMBER
           | SEQUENCE
           | SERVICE
           | SERVICES
           | SESSION
           | SNAPSHOT
           | SPECIFICATION
           | STAGE
           | TAG
           | TARGET_LAG
           | TEMP
           | TIMESTAMP
           | TYPE
           | USER
           | VALUE
           | VALUES
           | WAREHOUSE
           | WAREHOUSE_TYPE

    non_reserved_words ::= ACCOUNTADMIN
           | AES
           | ALLOW_OVERLAPPING_EXECUTION
           | ARRAY_AGG
           | CA
           | CHECKSUM
           | COLLECTION
           | COMMENT
           | CONFIGURATION
           | CORTEX
           | DATA
           | DAYS
           | DEFINITION
           | DELTA
           | DIMENSIONS
           | DISPLAY_NAME
           | DOWNSTREAM
           | DYNAMIC
           | EDITION
           | EMAIL
           | EMPTY_
           | ENABLED
           | ERROR_INTEGRATION
           | EVENT
           | EXCHANGE
           | EXCLUDE
           | EXECUTION
           | EXPIRY_DATE
           | EXPR
           | EXTENSION
           | FACTS
           | FILE
           | FILES
           | FIRST_NAME
           | FIRST_VALUE
           | FREQUENCY
           | GLOBAL
           | HIGH
           | HOURS
           | HYBRID
           | IDENTIFIER
           | IDENTITY
           | IMAGE
           | IMAGES
           | IMPORTED
           | INCREMENTAL
           | INCLUDE
           | INDEX
           | INDEXES
           | INITIALIZE
           | INPUT
           | INTERVAL
           | JAVASCRIPT
           | LAST_NAME
           | LAST_QUERY_ID
           | LEAD
           | LOCAL
           | LOCATION
           | LOW
           | MAX_CONCURRENCY_LEVEL
           | MEDIUM
           | METRIC
           | METRICS
           | MODE
           | NAME
           | NETWORK
           | NULLIF
           | NULLS
           | NVL
           | OFFSET
           | OLD
           | ON_CREATE
           | ON_ERROR
           | ON_SCHEDULE
           | OPTION
           | ORGADMIN
           | OUTBOUND
           | OUTER
           | OWNER
           | PARTITION
           | PASSWORD
           | PASSWORD_HISTORY
           | PASSWORD_LOCKOUT_TIME_MINS
           | PASSWORD_MAX_AGE_DAYS
           | PASSWORD_MAX_LENGTH
           | PASSWORD_MAX_RETRIES
           | PASSWORD_MIN_AGE_DAYS
           | PASSWORD_MIN_LENGTH
           | PASSWORD_MIN_LOWER_CASE_CHARS
           | PASSWORD_MIN_NUMERIC_CHARS
           | PASSWORD_MIN_SPECIAL_CHARS
           | PASSWORD_MIN_UPPER_CASE_CHARS
           | PATH_
           | PATTERN
           | PORT
           | PRIORITY
           | PROCEDURE_NAME
           | PROPERTY
           | PROVIDER
           | PUBLIC
           | QUARTER
           | QUERY
           | QUERY_TAG
           | RANK
           | RECURSIVE
           | REFERENCES
           | REFRESH_MODE
           | RELATIONSHIPS
           | RESOURCE
           | RESOURCES
           | RESPECT
           | RESTRICT
           | RESULT
           | ROLE
           | ROUNDING_MODE
           | ROW_NUMBER
           | SCALE
           | SCHEDULE
           | SECURITYADMIN
           | SEMANTIC
           | SOURCE
           | START_DATE
           | STATE
           | STATS
           | STATUS
           | SYSADMIN
           | TAG
           | TAGS
           | TARGET_LAG
           | TIMEZONE
           | URL
           | USERADMIN
           | USERNAME
           | VALUE
           | VALUES
           | VECTOR
           | VERSION
           | VERSIONS
           | VISIBILITY
           | VOLUME
           | WAREHOUSE_TYPE
           | YEAR

    builtin_function ::= SUM
           | AVG
           | MIN
           | COUNT
           | CURRENT_TIMESTAMP
           | CURRENT_TIME
           | CURRENT_DATE
           | UPPER
           | LOWER
           | TO_BOOLEAN
           | IDENTIFIER
           | FLATTEN
           | SPLIT_TO_TABLE
           | CAST
           | TRY_CAST
           | ANY_VALUE
           | GETDATE

    unary_or_binary_builtin_function ::= FLOOR
           | TRUNCATE
           | TRUNC
           | CEIL
           | ROUND

    binary_builtin_function ::= grp_1927
           | GET
           | LEFT
           | RIGHT
           | DATE_PART
           | grp_1928
           | SPLIT
           | NULLIF
           | EQUAL_NULL
           | CONTAINS
           | COLLATE
           | TO_TIMESTAMP

    binary_or_ternary_builtin_function ::= CHARINDEX
           | REPLACE
           | grp_1929
           | LIKE
           | ILIKE

    ternary_builtin_function ::= grp_1930
           | grp_1931
           | SPLIT_PART
           | NVL2
           | IFF

    list_function ::= CONCAT
           | CONCAT_WS
           | COALESCE
           | HASH

    pattern ::= PATTERN EQ string

    column_name ::= id_

           | id_ DOT id_
    column_list ::= column_name list_1935

    aliased_column_list ::= column_name opt_1936 list_1939

    column_list_with_comment ::= column_name opt_1941 list_1945

    object_name ::= id_ DOT id_ DOT id_
           | id_ DOT id_
           | id_

    object_name_or_identifier ::= object_name
           | IDENTIFIER LPAREN string RPAREN

    num ::= NUMBER

    expr_list ::= expr list_1947

    expr_list_sorted ::= expr opt_1948 list_1951

    expr ::= object_name DOT NEXTVAL
           | expr LSB expr RSB
           | expr COLON expr
           | expr DOT grp_1952
           | expr COLLATE string
           | case_expression
           | iff_expr
           | bracket_expression
           | grp_1953 expr
           | expr grp_1954 expr
           | expr grp_1955 expr
           | expr comparison_operator expr
           | list_1956 expr
           | expr AND expr
           | expr OR expr
           | arr_literal
           | expr over_clause
           | cast_expr
           | expr COLON_COLON data_type
           | try_cast_expr
           | json_literal
           | lambda_params ARROW expr
           | trim_expression
           | function_call
           | subquery
           | expr IS grp_1957
           | expr opt_1958 IN LPAREN grp_1959 RPAREN
           | expr opt_1960 grp_1961 expr opt_1963
           | expr opt_1964 RLIKE expr
           | expr opt_1965 grp_1966 ANY LPAREN expr list_1968 RPAREN opt_1970
           | primitive_expression

    lambda_params ::= id_ opt_1971
           | LPAREN id_ opt_1972 list_1975 RPAREN

    iff_expr ::= IFF LPAREN search_condition COMMA expr COMMA expr RPAREN

    trim_expression ::= grp_1976 LPAREN expr list_1978 RPAREN

    try_cast_expr ::= TRY_CAST LPAREN expr AS data_type RPAREN

    cast_expr ::= CAST LPAREN expr AS data_type RPAREN
           | grp_1979 expr

    json_literal ::= LCB kv_pair list_1981 RCB
           | LCB RCB

    kv_pair ::= STRING_LITERAL COLON value

    value ::= expr

    arr_literal ::= LSB value list_1983 RSB
           | LSB RSB

    data_type_size ::= LPAREN num RPAREN

    data_type ::= grp_1984
           | grp_1985 opt_1989
           | grp_1990
           | BOOLEAN
           | DATE
           | DATETIME opt_1991
           | TIME opt_1992
           | TIMESTAMP opt_1993
           | TIMESTAMP_LTZ opt_1994
           | TIMESTAMP_NTZ opt_1995
           | TIMESTAMP_TZ opt_1996
           | grp_1997 opt_1998
           | grp_1999 opt_2000
           | grp_2001 opt_2002
           | VARIANT
           | OBJECT
           | ARRAY opt_2004
           | GEOGRAPHY
           | GEOMETRY
           | VECTOR LPAREN vector_element_type COMMA num RPAREN

    vector_element_type ::= INT
           | INTEGER
           | FLOAT_
           | FLOAT4
           | FLOAT8

    primitive_expression ::= DEFAULT
           | NULL_
           | id_ list_2006
           | id_ DOT STAR
           | full_column_name
           | literal
           | ARRAY_Q
           | AUTO_Q
           | AZURE_Q
           | BOTH_Q
           | NONE_Q
           | OBJECT_Q

    order_by_expr ::= ORDER BY expr_list_sorted

    asc_desc ::= ASC
           | DESC

    over_clause ::= OVER LPAREN partition_by opt_2007 RPAREN
           | OVER LPAREN order_by_expr RPAREN
           | OVER LPAREN RPAREN

    function_call ::= round_expr
           | unary_or_binary_builtin_function LPAREN expr list_2009 RPAREN
           | binary_builtin_function LPAREN expr COMMA expr RPAREN
           | binary_or_ternary_builtin_function LPAREN expr COMMA expr list_2011 RPAREN
           | ternary_builtin_function LPAREN expr COMMA expr COMMA expr RPAREN
           | ranking_windowed_function
           | aggregate_function
           | object_name LPAREN opt_2012 RPAREN
           | object_name LPAREN param_assoc_list RPAREN
           | list_function LPAREN expr_list RPAREN
           | grp_2013 LPAREN expr RPAREN
           | grp_2014 LPAREN expr RPAREN
           | TO_BOOLEAN LPAREN expr RPAREN

    param_assoc_list ::= param_assoc list_2016

    param_assoc ::= id_ ASSOC expr

    ignore_or_repect_nulls ::= grp_2017 NULLS

    ranking_windowed_function ::= grp_2018 LPAREN RPAREN over_clause
           | NTILE LPAREN expr RPAREN over_clause
           | grp_2019 LPAREN expr opt_2023 RPAREN opt_2024 over_clause
           | grp_2025 LPAREN expr RPAREN opt_2026 over_clause

    aggregate_function ::= id_ LPAREN opt_2027 expr_list RPAREN
           | id_ LPAREN STAR RPAREN
           | grp_2028 LPAREN opt_2029 expr opt_2031 RPAREN opt_2033

    literal ::= STRING_LITERAL
           | opt_2034 NUMBER
           | opt_2035 grp_2036
           | true_false
           | NULL_
           | AT_Q

    sign ::= PLUS
           | MINUS

    full_column_name ::= opt_2037 DOT opt_2038 DOT opt_2039 DOT id_
           | opt_2040 DOT opt_2041 DOT id_
           | opt_2042 DOT id_
           | id_

    bracket_expression ::= LPAREN expr_list RPAREN
           | LPAREN subquery RPAREN

    case_expression ::= CASE expr list_2043 opt_2045 END
           | CASE list_2046 opt_2048 END

    switch_search_condition_section ::= WHEN search_condition THEN expr

    switch_section ::= WHEN expr THEN expr

    query_statement ::= opt_2049 select_statement_in_parentheses list_2050

    with_expression ::= WITH opt_2051 common_table_expression list_2053

    common_table_expression ::= id_ opt_2055 AS select_statement_in_parentheses

    select_statement ::= select_clause select_optional_clauses opt_2056
           | select_top_clause select_optional_clauses

    set_operators ::= grp_2057 select_statement_in_parentheses
           | select_statement_in_parentheses

    by_name ::= BY NAME

    select_statement_in_parentheses ::= LPAREN select_statement_in_parentheses RPAREN
           | select_statement_in_parentheses set_operators
           | select_statement
           | with_expression

    select_optional_clauses ::= opt_2060 opt_2061 opt_2062 opt_2065 opt_2066 opt_2067

    select_clause ::= SELECT select_list_no_top

    select_top_clause ::= SELECT select_list_top

    select_list_no_top ::= opt_2068 select_list

    select_list_top ::= opt_2069 opt_2070 select_list

    select_list ::= select_list_elem list_2072 opt_2073

    select_list_elem ::= column_elem opt_2074
           | column_elem_star opt_2075
           | expression_elem opt_2076

    column_elem_star ::= STAR
           | object_name_or_alias STAR

    column_elem ::= column_name
           | object_name_or_alias column_name
           | DOLLAR column_position
           | object_name_or_alias DOLLAR column_position

    object_name_or_alias ::= object_name
           | alias DOT

    exclude_clause ::= EXCLUDE grp_2080

    as_alias ::= opt_2081 alias

    expression_elem ::= expr
           | predicate

    column_position ::= num

    all_distinct ::= ALL
           | DISTINCT

    top_clause ::= TOP num

    into_clause ::= INTO var_list

    var_list ::= var list_2083

    var ::= COLON id_

    from_clause ::= FROM table_sources

    table_sources ::= table_source list_2085

    table_source ::= table_source_item_joined

    table_source_item_joined ::= object_ref list_2086
           | LPAREN table_source_item_joined RPAREN list_2087

    object_ref ::= object_name opt_2088 opt_2089 opt_2090 opt_2091 opt_2092 opt_2093 opt_2094
           | object_name START WITH predicate CONNECT BY opt_2095
           | TABLE LPAREN function_call RPAREN opt_2096 opt_2097 opt_2098
           | values_table opt_2099
           | opt_2100 LPAREN subquery RPAREN opt_2101 opt_2102 opt_2103
           | LATERAL grp_2104 opt_2105

    flatten_table_option ::= PATH_ ASSOC string
           | OUTER ASSOC true_false
           | RECURSIVE ASSOC true_false
           | MODE ASSOC grp_2106

    flatten_table ::= FLATTEN LPAREN opt_2108 expr list_2110 RPAREN

    splited_table ::= SPLIT_TO_TABLE LPAREN expr COMMA expr RPAREN

    prior_list ::= prior_item list_2112

    prior_item ::= opt_2113 id_ EQ opt_2114 id_

    outer_join ::= grp_2115 opt_2116

    join_type ::= INNER
           | outer_join

    join_clause ::= opt_2117 opt_2118 JOIN object_ref opt_2119
           | NATURAL opt_2120 opt_2121 JOIN object_ref
           | CROSS opt_2122 JOIN object_ref
           | ASOF JOIN object_ref MATCH_CONDITION LPAREN expr RPAREN opt_2123

    on_using_clause ::= ON search_condition
           | USING column_list_in_parentheses

    at_before ::= AT_KEYWORD LPAREN grp_2124 RPAREN
           | BEFORE LPAREN STATEMENT ASSOC string RPAREN

    end ::= END LPAREN grp_2125 RPAREN

    changes ::= CHANGES LPAREN INFORMATION ASSOC default_append_only RPAREN at_before opt_2126

    default_append_only ::= DEFAULT
           | APPEND_ONLY

    partition_by ::= PARTITION BY expr_list

    alias ::= id_

    expr_alias_list ::= expr opt_2127 alias list_2130

    measures ::= MEASURES expr_alias_list

    match_opts ::= SHOW EMPTY_ MATCHES
           | OMIT EMPTY_ MATCHES
           | WITH UNMATCHED ROWS

    row_match ::= grp_2131 opt_2132

    first_last ::= FIRST
           | LAST

    symbol ::= DUMMY

    after_match ::= AFTER MATCH SKIP_ grp_2133

    symbol_list ::= symbol AS expr list_2136

    define ::= DEFINE symbol_list

    match_recognize ::= MATCH_RECOGNIZE LPAREN opt_2137 opt_2138 opt_2139 opt_2140 opt_2141 opt_2142 opt_2143 RPAREN

    pivot_unpivot ::= PIVOT LPAREN id_ LPAREN id_ RPAREN FOR id_ IN LPAREN pivot_in_clause RPAREN opt_2144 RPAREN opt_2147
           | UNPIVOT opt_2149 LPAREN id_ FOR column_name IN LPAREN aliased_column_list RPAREN RPAREN

    include_exclude ::= INCLUDE
           | EXCLUDE

    pivot_in_clause ::= literal list_2151
           | ANY opt_2152
           | subquery

    default_on_null ::= DEFAULT ON NULL_ LPAREN expr RPAREN

    column_alias_list_in_brackets ::= LPAREN id_ list_2154 RPAREN

    expr_list_in_parentheses ::= LPAREN expr_list RPAREN

    values_table ::= LPAREN values_table_body RPAREN opt_2157
           | values_table_body opt_2160

    values_table_body ::= VALUES expr_list_in_parentheses list_2162

    sample_method ::= grp_2163
           | grp_2164

    repeatable_seed ::= grp_2165 LPAREN num RPAREN

    sample_opts ::= LPAREN num opt_2166 RPAREN opt_2167

    sample ::= grp_2168 opt_2169 sample_opts

    search_condition ::= list_2170 grp_2171
           | search_condition AND search_condition
           | search_condition OR search_condition

    comparison_operator ::= EQ
           | GT
           | LT
           | LE
           | GE
           | LTGT
           | NE

    null_not_null ::= opt_2172 NULL_

    not_distinct_from ::= opt_2173 DISTINCT FROM

    subquery ::= query_statement

    predicate ::= EXISTS LPAREN subquery RPAREN
           | expr comparison_operator grp_2174 LPAREN subquery RPAREN
           | expr opt_2175 BETWEEN expr AND expr
           | expr opt_2176 IN LPAREN grp_2177 RPAREN
           | expr opt_2178 grp_2179 expr opt_2181
           | expr opt_2182 RLIKE expr
           | expr opt_2183 grp_2184 ANY LPAREN expr list_2186 RPAREN opt_2188
           | expr IS null_not_null
           | expr

    where_clause ::= WHERE search_condition

    group_by_elem ::= column_elem
           | num
           | expression_elem

    group_by_list ::= group_by_elem list_2190

    group_by_clause ::= GROUP BY group_by_list opt_2191
           | GROUP BY grp_2192 LPAREN group_by_list RPAREN
           | GROUP BY ALL

    having_clause ::= HAVING search_condition

    qualify_clause ::= QUALIFY expr

    order_item ::= grp_2193 opt_2195 opt_2198

    order_by_clause ::= ORDER BY order_item list_2200

    row_rows ::= ROW
           | ROWS

    first_next ::= FIRST
           | NEXT

    limit_clause ::= LIMIT num opt_2202
           | opt_2204 opt_2205 FETCH opt_2206 num opt_2207 opt_2208

    round_mode ::= HALF_AWAY_FROM_ZERO_Q
           | HALF_TO_EVEN_Q

    round_expr ::= ROUND LPAREN EXPR ASSOC expr COMMA SCALE ASSOC expr list_2210 RPAREN
           | ROUND LPAREN expr COMMA expr list_2212 RPAREN

    opt_1 ::= batch
           | $empty

    seq_2 ::= SEMI sql_command

    list_3 ::= $empty
           | list_3 seq_2

    opt_4 ::= SEMI
           | $empty

    seq_5 ::= FLOW sql_command

    list_6 ::= seq_5
           | list_6 seq_5

    opt_7 ::= OVERWRITE
           | $empty

    opt_8 ::= column_list_in_parentheses
           | $empty

    grp_9 ::= values_builder
           | query_statement

    opt_10 ::= OVERWRITE
           | $empty

    opt_11 ::= OVERWRITE
           | $empty

    grp_12 ::= FIRST
           | ALL

    list_13 ::= into_clause2
           | list_13 into_clause2

    seq_14 ::= WHEN predicate THEN list_13

    list_15 ::= seq_14
           | list_15 seq_14

    seq_16 ::= ELSE into_clause2

    opt_17 ::= seq_16
           | $empty

    seq_18 ::= LPAREN column_list RPAREN

    opt_19 ::= seq_18
           | $empty

    opt_20 ::= values_list
           | $empty

    seq_21 ::= COMMA value_item

    list_22 ::= $empty
           | list_22 seq_21

    opt_23 ::= as_alias
           | $empty

    list_24 ::= merge_cond
           | list_24 merge_cond

    seq_25 ::= AND search_condition

    opt_26 ::= seq_25
           | $empty

    seq_27 ::= WHEN MATCHED opt_26 THEN merge_update_delete

    list_28 ::= seq_27
           | list_28 seq_27

    seq_29 ::= AND search_condition

    opt_30 ::= seq_29
           | $empty

    seq_31 ::= COMMA column_name EQ expr

    list_32 ::= $empty
           | list_32 seq_31

    seq_33 ::= LPAREN column_list RPAREN

    opt_34 ::= seq_33
           | $empty

    opt_35 ::= as_alias
           | $empty

    seq_36 ::= COMMA column_name EQ expr

    list_37 ::= $empty
           | list_37 seq_36

    seq_38 ::= FROM table_sources

    opt_39 ::= seq_38
           | $empty

    seq_40 ::= WHERE search_condition

    opt_41 ::= seq_40
           | $empty

    opt_42 ::= as_alias
           | $empty

    opt_43 ::= as_alias
           | $empty

    opt_44 ::= as_alias
           | $empty

    seq_45 ::= COMMA table_or_query

    opt_46 ::= seq_45
           | $empty

    seq_47 ::= USING table_or_query opt_46

    opt_48 ::= seq_47
           | $empty

    seq_49 ::= WHERE search_condition

    opt_50 ::= seq_49
           | $empty

    seq_51 ::= COMMA LPAREN expr_list RPAREN

    opt_52 ::= seq_51
           | $empty

    grp_53 ::= WORK
           | TRANSACTION

    opt_54 ::= grp_53
           | $empty

    seq_55 ::= NAME id_

    opt_56 ::= seq_55
           | $empty

    seq_57 ::= NAME id_

    opt_58 ::= seq_57
           | $empty

    grp_59 ::= table_stage
           | user_stage
           | named_stage
           | external_location

    opt_60 ::= files
           | $empty

    opt_61 ::= pattern
           | $empty

    opt_62 ::= file_format
           | $empty

    list_63 ::= $empty
           | list_63 copy_options

    grp_65 ::= RETURN_N_ROWS
           | RETURN_ERRORS
           | RETURN_ALL_ERRORS

    grp_64 ::= VALIDATION_MODE EQ grp_65

    opt_66 ::= grp_64
           | $empty

    seq_67 ::= LPAREN column_list RPAREN

    opt_68 ::= seq_67
           | $empty

    grp_69 ::= table_stage
           | user_stage
           | named_stage

    opt_70 ::= files
           | $empty

    opt_71 ::= pattern
           | $empty

    opt_72 ::= file_format
           | $empty

    list_73 ::= $empty
           | list_73 copy_options

    seq_74 ::= COMMA string

    list_75 ::= $empty
           | list_75 seq_74

    grp_76 ::= format_name
           | format_type

    list_77 ::= $empty
           | list_77 format_type_options

    list_78 ::= format_type_options
           | list_78 format_type_options

    grp_79 ::= table_stage
           | user_stage
           | named_stage
           | external_location

    grp_80 ::= object_name
           | LPAREN query_statement RPAREN

    opt_81 ::= partition_by
           | $empty

    opt_82 ::= file_format
           | $empty

    opt_83 ::= copy_options
           | $empty

    seq_84 ::= VALIDATION_MODE EQ RETURN_ROWS

    opt_85 ::= seq_84
           | $empty

    opt_86 ::= HEADER
           | $empty

    opt_87 ::= if_exists
           | $empty

    opt_88 ::= function_signature
           | $empty

    opt_89 ::= if_exists
           | $empty

    opt_90 ::= data_type_list
           | $empty

    opt_91 ::= WORK
           | $empty

    grp_92 ::= string
           | id_
           | ID2

    seq_93 ::= COMMA id_

    list_94 ::= $empty
           | list_94 seq_93

    seq_95 ::= USING LPAREN id_ list_94 RPAREN

    opt_96 ::= seq_95
           | $empty

    opt_97 ::= retry_last
           | $empty

    grp_99 ::= TABULAR
           | JSON
           | TEXT

    grp_98 ::= USING grp_99

    opt_100 ::= grp_98
           | $empty

    grp_101 ::= named_stage
           | user_stage
           | table_stage

    opt_102 ::= parallel
           | $empty

    opt_103 ::= pattern
           | $empty

    grp_106 ::= DATABASE id_
           | SCHEMA schema_name

    grp_105 ::= object_type_name object_name
           | ALL object_type_plural IN grp_106

    grp_107 ::= DATABASE id_
           | SCHEMA schema_name

    grp_104 ::= ON grp_105
           | ON FUTURE object_type_plural IN grp_107

    grp_109 ::= REVOKE
           | COPY

    grp_108 ::= grp_109 CURRENT GRANTS

    opt_110 ::= grp_108
           | $empty

    opt_113 ::= PRIVILEGES
           | $empty

    grp_112 ::= global_privileges
           | ALL opt_113

    opt_115 ::= PRIVILEGES
           | $empty

    grp_114 ::= account_object_privileges
           | ALL opt_115

    grp_116 ::= USER
           | RESOURCE MONITOR
           | WAREHOUSE
           | DATABASE
           | INTEGRATION

    opt_118 ::= PRIVILEGES
           | $empty

    grp_117 ::= schema_privileges
           | ALL opt_118

    grp_119 ::= SCHEMA schema_name
           | ALL SCHEMAS IN DATABASE id_

    opt_121 ::= PRIVILEGES
           | $empty

    grp_120 ::= schema_privileges
           | ALL opt_121

    opt_123 ::= PRIVILEGES
           | $empty

    grp_122 ::= schema_object_privileges
           | ALL opt_123

    grp_125 ::= DATABASE id_
           | SCHEMA schema_name

    grp_124 ::= object_type object_name
           | ALL object_type_plural IN grp_125

    opt_127 ::= PRIVILEGES
           | $empty

    grp_126 ::= schema_object_privileges
           | ALL opt_127

    grp_128 ::= DATABASE id_
           | SCHEMA schema_name

    grp_111 ::= grp_112 ON ACCOUNT
           | grp_114 ON grp_116 object_name
           | grp_117 ON grp_119
           | grp_120 ON FUTURE SCHEMAS IN DATABASE id_
           | grp_122 ON grp_124
           | grp_126 ON FUTURE object_type_plural IN grp_128

    opt_129 ::= ROLE
           | $empty

    seq_130 ::= WITH GRANT OPTION

    opt_131 ::= seq_130
           | $empty

    seq_132 ::= COMMA global_privilege

    list_133 ::= $empty
           | list_133 seq_132

    grp_134 ::= ACCOUNT
           | DATA EXCHANGE LISTING
           | DATABASE
           | INTEGRATION
           | NETWORK POLICY
           | ROLE
           | SHARE
           | USER
           | WAREHOUSE

    grp_135 ::= APPLY MASKING POLICY
           | APPLY ROW ACCESS POLICY
           | APPLY SESSION POLICY
           | APPLY TAG
           | ATTACH POLICY

    grp_137 ::= EXECUTION
           | USAGE

    grp_136 ::= EXECUTE TASK
           | IMPORT SHARE
           | MANAGE GRANTS
           | MONITOR grp_137
           | OVERRIDE SHARE RESTRICTIONS

    seq_138 ::= COMMA account_object_privilege

    list_139 ::= $empty
           | list_139 seq_138

    seq_140 ::= COMMA schema_privilege

    list_141 ::= $empty
           | list_141 seq_140

    grp_142 ::= TABLE
           | EXTERNAL TABLE
           | VIEW
           | MATERIALIZED VIEW
           | MASKING POLICY
           | ROW ACCESS POLICY
           | SESSION POLICY
           | TAG
           | SEQUENCE
           | FUNCTION
           | PROCEDURE
           | FILE FORMAT
           | STAGE
           | PIPE
           | STREAM
           | TASK
           | IMAGE REPOSITORY

    seq_143 ::= COMMA schema_object_privilege

    list_144 ::= $empty
           | list_144 seq_143

    seq_145 ::= COMMA WRITE

    opt_146 ::= seq_145
           | $empty

    grp_147 ::= DATABASE id_
           | SCHEMA id_
           | FUNCTION id_
           | TABLE object_name
           | ALL TABLES IN SCHEMA schema_name
           | VIEW id_

    grp_148 ::= ROLE role_name
           | USER id_

    grp_149 ::= user_stage
           | table_stage
           | named_stage

    opt_150 ::= pattern
           | $empty

    opt_151 ::= stage_path
           | $empty

    opt_152 ::= schema_name
           | $empty

    opt_153 ::= stage_path
           | $empty

    opt_154 ::= stage_path
           | $empty

    seq_155 ::= DIVIDE ID

    list_156 ::= $empty
           | list_156 seq_155

    opt_157 ::= DIVIDE
           | $empty

    seq_158 ::= sql_id list_156 opt_157

    opt_159 ::= seq_158
           | $empty

    grp_160 ::= table_stage
           | user_stage
           | named_stage

    seq_161 ::= PARALLEL EQ num

    opt_162 ::= seq_161
           | $empty

    seq_163 ::= AUTO_COMPRESS EQ true_false

    opt_164 ::= seq_163
           | $empty

    grp_166 ::= AUTO_DETECT
           | GZIP
           | BZ2
           | BROTLI
           | ZSTD
           | DEFLATE
           | RAW_DEFLATE
           | NONE

    grp_165 ::= SOURCE_COMPRESSION EQ grp_166

    opt_167 ::= grp_165
           | $empty

    seq_168 ::= OVERWRITE EQ true_false

    opt_169 ::= seq_168
           | $empty

    grp_170 ::= table_stage
           | user_stage
           | named_stage

    opt_171 ::= pattern
           | $empty

    seq_172 ::= GRANT OPTION FOR

    opt_173 ::= seq_172
           | $empty

    opt_176 ::= PRIVILEGES
           | $empty

    grp_175 ::= global_privilege
           | ALL opt_176

    opt_178 ::= PRIVILEGES
           | $empty

    grp_177 ::= account_object_privileges
           | ALL opt_178

    grp_179 ::= RESOURCE MONITOR
           | WAREHOUSE
           | DATABASE
           | INTEGRATION

    opt_181 ::= PRIVILEGES
           | $empty

    grp_180 ::= schema_privileges
           | ALL opt_181

    grp_182 ::= SCHEMA schema_name
           | ALL SCHEMAS IN DATABASE id_

    opt_184 ::= PRIVILEGES
           | $empty

    grp_183 ::= schema_privileges
           | ALL opt_184

    opt_186 ::= PRIVILEGES
           | $empty

    grp_185 ::= schema_object_privileges
           | ALL opt_186

    grp_187 ::= object_type object_name
           | ALL object_type_plural IN SCHEMA schema_name

    opt_189 ::= PRIVILEGES
           | $empty

    grp_188 ::= schema_object_privileges
           | ALL opt_189

    grp_190 ::= DATABASE id_
           | SCHEMA schema_name

    grp_174 ::= grp_175 ON ACCOUNT
           | grp_177 ON grp_179 object_name
           | grp_180 ON grp_182
           | grp_183 ON FUTURE SCHEMAS IN DATABASE db_name
           | grp_185 ON grp_187
           | grp_188 ON FUTURE object_type_plural IN grp_190

    opt_191 ::= ROLE
           | $empty

    opt_192 ::= cascade_restrict
           | $empty

    grp_193 ::= DATABASE id_
           | SCHEMA schema_name
           | TABLE object_name
           | ALL TABLES IN SCHEMA schema_name
           | VIEW object_name
           | ALL VIEWS IN SCHEMA schema_name

    grp_194 ::= ROLE role_name
           | USER id_

    opt_195 ::= WORK
           | $empty

    seq_196 ::= COMMA id_

    list_197 ::= $empty
           | list_197 seq_196

    seq_198 ::= COMMA expr

    list_199 ::= $empty
           | list_199 seq_198

    opt_200 ::= TABLE
           | $empty

    opt_201 ::= if_exists
           | $empty

    seq_202 ::= COMMA id_

    list_203 ::= $empty
           | list_203 seq_202

    opt_204 ::= if_exists
           | $empty

    list_206 ::= alert_set_clause
           | list_206 alert_set_clause

    list_207 ::= alert_unset_clause
           | list_207 alert_unset_clause

    grp_205 ::= resume_suspend
           | SET list_206
           | UNSET list_207
           | MODIFY CONDITION EXISTS LPAREN alert_condition RPAREN
           | MODIFY ACTION alert_action

    opt_208 ::= API
           | $empty

    opt_209 ::= if_exists
           | $empty

    seq_210 ::= API_AWS_ROLE_ARN EQ string

    opt_211 ::= seq_210
           | $empty

    seq_212 ::= AZURE_AD_APPLICATION_ID EQ string

    opt_213 ::= seq_212
           | $empty

    seq_214 ::= API_KEY EQ string

    opt_215 ::= seq_214
           | $empty

    opt_216 ::= enabled_true_false
           | $empty

    seq_217 ::= API_ALLOWED_PREFIXES EQ LPAREN string RPAREN

    opt_218 ::= seq_217
           | $empty

    seq_219 ::= API_BLOCKED_PREFIXES EQ LPAREN string RPAREN

    opt_220 ::= seq_219
           | $empty

    opt_221 ::= comment_clause
           | $empty

    opt_222 ::= API
           | $empty

    opt_223 ::= API
           | $empty

    opt_224 ::= API
           | $empty

    opt_225 ::= if_exists
           | $empty

    seq_226 ::= COMMA api_integration_property

    list_227 ::= $empty
           | list_227 seq_226

    opt_228 ::= if_exists
           | $empty

    opt_229 ::= if_exists
           | $empty

    opt_230 ::= if_exists
           | $empty

    seq_231 ::= DATA_RETENTION_TIME_IN_DAYS EQ num

    opt_232 ::= seq_231
           | $empty

    seq_233 ::= MAX_DATA_EXTENSION_TIME_IN_DAYS EQ num

    opt_234 ::= seq_233
           | $empty

    opt_235 ::= default_ddl_collation
           | $empty

    opt_236 ::= comment_clause
           | $empty

    opt_237 ::= if_exists
           | $empty

    seq_238 ::= COMMA database_property

    list_239 ::= $empty
           | list_239 seq_238

    seq_240 ::= IGNORE EDITION CHECK

    opt_241 ::= seq_240
           | $empty

    seq_242 ::= TO ACCOUNTS account_id_list

    opt_243 ::= seq_242
           | $empty

    seq_244 ::= TO ACCOUNTS account_id_list

    opt_245 ::= seq_244
           | $empty

    seq_246 ::= COMMA account_identifier

    list_247 ::= $empty
           | list_247 seq_246

    seq_248 ::= PARTITION BY id_list

    opt_249 ::= seq_248
           | $empty

    opt_250 ::= comment_clause
           | $empty

    seq_251 ::= METADATA EQ string

    opt_252 ::= seq_251
           | $empty

    opt_253 ::= if_exists
           | $empty

    opt_254 ::= if_exists
           | $empty

    list_256 ::= dynamic_table_settable_params
           | list_256 dynamic_table_settable_params

    grp_255 ::= resume_suspend
           | REFRESH
           | SET list_256

    opt_257 ::= if_exists
           | $empty

    grp_258 ::= SWAP WITH
           | RENAME TO

    opt_259 ::= if_exists
           | $empty

    grp_260 ::= set_tags
           | unset_tags

    opt_261 ::= if_exists
           | $empty

    opt_262 ::= if_exists
           | $empty

    seq_263 ::= COMMA dynamic_table_unsettable_params

    list_264 ::= $empty
           | list_264 seq_263

    opt_265 ::= if_exists
           | $empty

    seq_266 ::= COMMA id_

    list_267 ::= $empty
           | list_267 seq_266

    opt_268 ::= if_exists
           | $empty

    opt_269 ::= string
           | $empty

    opt_270 ::= if_exists
           | $empty

    opt_271 ::= if_exists
           | $empty

    opt_272 ::= if_exists
           | $empty

    seq_273 ::= AUTO_REFRESH EQ true_false

    opt_274 ::= seq_273
           | $empty

    opt_275 ::= tag_decl_list
           | $empty

    opt_276 ::= if_exists
           | $empty

    opt_277 ::= if_exists
           | $empty

    seq_278 ::= COMMA column_name EQ string

    list_279 ::= $empty
           | list_279 seq_278

    opt_280 ::= if_exists
           | $empty

    seq_281 ::= COMMA id_

    list_282 ::= $empty
           | list_282 seq_281

    seq_283 ::= COMMA id_

    list_284 ::= $empty
           | list_284 seq_283

    seq_285 ::= COMMA full_acct

    list_286 ::= $empty
           | list_286 seq_285

    opt_287 ::= if_exists
           | $empty

    opt_288 ::= if_exists
           | $empty

    seq_289 ::= OBJECT_TYPES EQ object_type_list

    opt_290 ::= seq_289
           | $empty

    opt_291 ::= replication_schedule
           | $empty

    opt_292 ::= if_exists
           | $empty

    opt_293 ::= replication_schedule
           | $empty

    opt_294 ::= if_exists
           | $empty

    opt_295 ::= if_exists
           | $empty

    opt_296 ::= if_exists
           | $empty

    opt_297 ::= if_exists
           | $empty

    opt_298 ::= if_exists
           | $empty

    opt_299 ::= if_exists
           | $empty

    opt_300 ::= if_exists
           | $empty

    opt_301 ::= ignore_edition_check
           | $empty

    opt_302 ::= if_exists
           | $empty

    opt_303 ::= if_exists
           | $empty

    grp_304 ::= REFRESH
           | PRIMARY
           | SUSPEND
           | RESUME

    opt_305 ::= if_exists
           | $empty

    opt_306 ::= if_exists
           | $empty

    list_307 ::= $empty
           | list_307 format_type_options

    opt_308 ::= comment_clause
           | $empty

    grp_309 ::= SECURE
           | COMMENT

    list_310 ::= $empty
           | list_310 header_decl

    list_311 ::= $empty
           | list_311 id_

    grp_312 ::= REQUEST_TRANSLATOR
           | RESPONSE_TRANSLATOR

    grp_313 ::= COMMENT
           | HEADERS
           | CONTEXT_HEADERS
           | MAX_BATCH_ROWS
           | COMPRESSION
           | SECURE
           | REQUEST_TRANSLATOR
           | RESPONSE_TRANSLATOR

    opt_314 ::= if_exists
           | $empty

    opt_315 ::= data_type_list
           | $empty

    seq_316 ::= COMMA data_type

    list_317 ::= $empty
           | list_317 seq_316

    list_319 ::= alter_git_set_opts
           | list_319 alter_git_set_opts

    list_320 ::= alter_git_unset_opts
           | list_320 alter_git_unset_opts

    grp_318 ::= SET list_319
           | UNSET list_320

    opt_321 ::= if_exists
           | $empty

    opt_322 ::= if_exists
           | $empty

    opt_323 ::= if_exists
           | $empty

    opt_324 ::= if_exists
           | $empty

    opt_325 ::= if_exists
           | $empty

    opt_326 ::= if_exists
           | $empty

    opt_327 ::= if_exists
           | $empty

    opt_328 ::= if_exists
           | $empty

    opt_329 ::= if_exists
           | $empty

    opt_331 ::= RECLUSTER
           | $empty

    grp_332 ::= SECURE
           | comment_clause

    grp_333 ::= SECURE
           | COMMENT

    grp_330 ::= RENAME TO id_
           | CLUSTER BY LPAREN expr_list RPAREN
           | DROP CLUSTERING KEY
           | resume_suspend opt_331
           | SET grp_332
           | UNSET grp_333

    opt_334 ::= NOTIFICATION
           | $empty

    opt_335 ::= if_exists
           | $empty

    opt_336 ::= enabled_true_false
           | $empty

    opt_337 ::= comment_clause
           | $empty

    opt_338 ::= NOTIFICATION
           | $empty

    opt_339 ::= if_exists
           | $empty

    opt_340 ::= enabled_true_false
           | $empty

    opt_341 ::= comment_clause
           | $empty

    opt_342 ::= NOTIFICATION
           | $empty

    opt_343 ::= NOTIFICATION
           | $empty

    opt_344 ::= NOTIFICATION
           | $empty

    grp_345 ::= ENABLED
           | COMMENT

    opt_346 ::= if_exists
           | $empty

    grp_347 ::= PIPE_EXECUTION_PAUSED EQ true_false
           | comment_clause
           | ERROR_INTEGRATION EQ string

    opt_348 ::= if_exists
           | $empty

    grp_349 ::= PIPE_EXECUTION_PAUSED
           | ERROR_INTEGRATION
           | COMMENT

    opt_350 ::= if_exists
           | $empty

    seq_351 ::= PREFIX EQ string

    opt_352 ::= seq_351
           | $empty

    seq_353 ::= MODIFIED_AFTER EQ string

    opt_354 ::= seq_353
           | $empty

    opt_355 ::= if_exists
           | $empty

    opt_356 ::= data_type_list
           | $empty

    opt_357 ::= if_exists
           | $empty

    opt_358 ::= data_type_list
           | $empty

    opt_359 ::= if_exists
           | $empty

    opt_360 ::= data_type_list
           | $empty

    opt_361 ::= if_exists
           | $empty

    opt_362 ::= data_type_list
           | $empty

    opt_363 ::= if_exists
           | $empty

    opt_364 ::= if_exists
           | $empty

    seq_365 ::= OBJECT_TYPES EQ object_type_list

    opt_366 ::= seq_365
           | $empty

    seq_367 ::= REPLICATION_SCHEDULE EQ string

    opt_368 ::= seq_367
           | $empty

    opt_369 ::= if_exists
           | $empty

    seq_370 ::= COMMA integration_type_name

    list_371 ::= $empty
           | list_371 seq_370

    seq_372 ::= REPLICATION_SCHEDULE EQ string

    opt_373 ::= seq_372
           | $empty

    opt_374 ::= if_exists
           | $empty

    opt_375 ::= if_exists
           | $empty

    opt_376 ::= if_exists
           | $empty

    opt_377 ::= if_exists
           | $empty

    opt_378 ::= if_exists
           | $empty

    opt_379 ::= if_exists
           | $empty

    opt_380 ::= if_exists
           | $empty

    opt_381 ::= ignore_edition_check
           | $empty

    opt_382 ::= if_exists
           | $empty

    opt_383 ::= if_exists
           | $empty

    opt_384 ::= if_exists
           | $empty

    opt_385 ::= if_exists
           | $empty

    grp_386 ::= MONTHLY
           | DAILY
           | WEEKLY
           | YEARLY
           | NEVER

    seq_387 ::= COMMA id_

    list_388 ::= $empty
           | list_388 seq_387

    grp_389 ::= SUSPEND
           | SUSPEND_IMMEDIATE
           | NOTIFY

    opt_390 ::= if_exists
           | $empty

    opt_392 ::= credit_quota
           | $empty

    opt_393 ::= frequency
           | $empty

    grp_394 ::= START_TIMESTAMP EQ LPAREN string
           | IMMEDIATELY RPAREN

    opt_395 ::= grp_394
           | $empty

    seq_396 ::= END_TIMESTAMP EQ string

    opt_397 ::= seq_396
           | $empty

    grp_391 ::= SET opt_392 opt_393 opt_395 opt_397

    opt_398 ::= grp_391
           | $empty

    seq_399 ::= COMMA triggerDefinition

    list_400 ::= $empty
           | list_400 seq_399

    seq_401 ::= TRIGGERS triggerDefinition list_400

    opt_402 ::= seq_401
           | $empty

    seq_403 ::= notify_users opt_402

    opt_404 ::= seq_403
           | $empty

    opt_405 ::= if_exists
           | $empty

    opt_406 ::= if_exists
           | $empty

    opt_407 ::= if_exists
           | $empty

    opt_408 ::= if_exists
           | $empty

    opt_409 ::= if_exists
           | $empty

    opt_410 ::= if_exists
           | $empty

    opt_411 ::= if_exists
           | $empty

    opt_412 ::= if_exists
           | $empty

    opt_413 ::= if_exists
           | $empty

    opt_414 ::= if_exists
           | $empty

    opt_415 ::= if_exists
           | $empty

    seq_416 ::= DATA_RETENTION_TIME_IN_DAYS EQ num

    opt_417 ::= seq_416
           | $empty

    seq_418 ::= MAX_DATA_EXTENSION_TIME_IN_DAYS EQ num

    opt_419 ::= seq_418
           | $empty

    opt_420 ::= default_ddl_collation
           | $empty

    opt_421 ::= comment_clause
           | $empty

    opt_422 ::= if_exists
           | $empty

    opt_423 ::= if_exists
           | $empty

    opt_424 ::= if_exists
           | $empty

    seq_425 ::= COMMA schema_property

    list_426 ::= $empty
           | list_426 seq_425

    opt_427 ::= if_exists
           | $empty

    grp_428 ::= ENABLE
           | DISABLE

    opt_429 ::= if_exists
           | $empty

    opt_430 ::= if_exists
           | $empty

    opt_431 ::= SET
           | $empty

    opt_432 ::= BY
           | $empty

    opt_433 ::= EQ
           | $empty

    seq_434 ::= INCREMENT opt_432 opt_433 num

    opt_435 ::= seq_434
           | $empty

    opt_436 ::= if_exists
           | $empty

    opt_438 ::= order_noorder
           | $empty

    grp_437 ::= opt_438 comment_clause
           | order_noorder

    opt_439 ::= if_exists
           | $empty

    opt_440 ::= if_exists
           | $empty

    grp_441 ::= SUSPEND
           | RESUME

    opt_442 ::= if_exists
           | $empty

    list_443 ::= service_params
           | list_443 service_params

    opt_444 ::= if_exists
           | $empty

    opt_445 ::= if_exists
           | $empty

    opt_446 ::= if_exists
           | $empty

    seq_447 ::= COMMA num

    list_448 ::= $empty
           | list_448 seq_447

    opt_449 ::= if_exists
           | $empty

    list_450 ::= secret_oauth_client_creds_opts
           | list_450 secret_oauth_client_creds_opts

    list_451 ::= secret_oauth_auth_code_opts
           | list_451 secret_oauth_auth_code_opts

    list_452 ::= secret_basic_auth_opts
           | list_452 secret_basic_auth_opts

    list_453 ::= secret_generic_string_opts
           | list_453 secret_generic_string_opts

    list_454 ::= secret_api_auth_opts
           | list_454 secret_api_auth_opts

    opt_455 ::= SECURITY
           | $empty

    seq_456 ::= TYPE EQ EXTERNAL_OAUTH

    opt_457 ::= seq_456
           | $empty

    seq_458 ::= ENABLED EQ true_false

    opt_459 ::= seq_458
           | $empty

    grp_461 ::= OKTA
           | AZURE
           | PING_FEDERATE
           | CUSTOM

    grp_460 ::= EXTERNAL_OAUTH_TYPE EQ grp_461

    opt_462 ::= grp_460
           | $empty

    seq_463 ::= EXTERNAL_OAUTH_ISSUER EQ string

    opt_464 ::= seq_463
           | $empty

    grp_466 ::= string
           | LPAREN string_list RPAREN

    grp_465 ::= EXTERNAL_OAUTH_TOKEN_USER_MAPPING_CLAIM EQ grp_466

    opt_467 ::= grp_465
           | $empty

    seq_468 ::= EXTERNAL_OAUTH_SNOWFLAKE_USER_MAPPING_ATTRIBUTE EQ string

    opt_469 ::= seq_468
           | $empty

    seq_470 ::= EXTERNAL_OAUTH_JWS_KEYS_URL EQ string

    opt_471 ::= seq_470
           | $empty

    grp_473 ::= string
           | LPAREN string_list RPAREN

    grp_472 ::= EXTERNAL_OAUTH_JWS_KEYS_URL EQ grp_473

    opt_474 ::= grp_472
           | $empty

    seq_475 ::= EXTERNAL_OAUTH_RSA_PUBLIC_KEY EQ string

    opt_476 ::= seq_475
           | $empty

    seq_477 ::= EXTERNAL_OAUTH_RSA_PUBLIC_KEY_2 EQ string

    opt_478 ::= seq_477
           | $empty

    seq_479 ::= EXTERNAL_OAUTH_BLOCKED_ROLES_LIST EQ LPAREN string_list RPAREN

    opt_480 ::= seq_479
           | $empty

    seq_481 ::= EXTERNAL_OAUTH_ALLOWED_ROLES_LIST EQ LPAREN string_list RPAREN

    opt_482 ::= seq_481
           | $empty

    seq_483 ::= EXTERNAL_OAUTH_AUDIENCE_LIST EQ LPAREN string RPAREN

    opt_484 ::= seq_483
           | $empty

    grp_486 ::= DISABLE
           | ENABLE
           | ENABLE_FOR_PRIVILEGE

    grp_485 ::= EXTERNAL_OAUTH_ANY_ROLE_MODE EQ grp_486

    opt_487 ::= grp_485
           | $empty

    seq_488 ::= EXTERNAL_OAUTH_ANY_ROLE_MODE EQ string

    opt_489 ::= seq_488
           | $empty

    opt_490 ::= SECURITY
           | $empty

    opt_491 ::= if_exists
           | $empty

    seq_492 ::= COMMA security_integration_external_oauth_property

    list_493 ::= $empty
           | list_493 seq_492

    opt_494 ::= SECURITY
           | $empty

    opt_495 ::= SECURITY
           | $empty

    grp_496 ::= IMPLICIT
           | NONE

    opt_497 ::= SECURITY
           | $empty

    opt_498 ::= if_exists
           | $empty

    seq_499 ::= TYPE EQ EXTERNAL_OAUTH

    opt_500 ::= seq_499
           | $empty

    opt_501 ::= enabled_true_false
           | $empty

    grp_503 ::= OKTA
           | AZURE
           | PING_FEDERATE
           | CUSTOM

    grp_502 ::= EXTERNAL_OAUTH_TYPE EQ grp_503

    opt_504 ::= grp_502
           | $empty

    seq_505 ::= EXTERNAL_OAUTH_ISSUER EQ string

    opt_506 ::= seq_505
           | $empty

    grp_508 ::= string
           | LPAREN string_list RPAREN

    grp_507 ::= EXTERNAL_OAUTH_TOKEN_USER_MAPPING_CLAIM EQ grp_508

    opt_509 ::= grp_507
           | $empty

    seq_510 ::= EXTERNAL_OAUTH_SNOWFLAKE_USER_MAPPING_ATTRIBUTE EQ string

    opt_511 ::= seq_510
           | $empty

    seq_512 ::= EXTERNAL_OAUTH_JWS_KEYS_URL EQ string

    opt_513 ::= seq_512
           | $empty

    grp_515 ::= string
           | LPAREN string_list RPAREN

    grp_514 ::= EXTERNAL_OAUTH_JWS_KEYS_URL EQ grp_515

    opt_516 ::= grp_514
           | $empty

    seq_517 ::= EXTERNAL_OAUTH_RSA_PUBLIC_KEY EQ string

    opt_518 ::= seq_517
           | $empty

    seq_519 ::= EXTERNAL_OAUTH_RSA_PUBLIC_KEY_2 EQ string

    opt_520 ::= seq_519
           | $empty

    seq_521 ::= EXTERNAL_OAUTH_BLOCKED_ROLES_LIST EQ LPAREN string_list RPAREN

    opt_522 ::= seq_521
           | $empty

    seq_523 ::= EXTERNAL_OAUTH_ALLOWED_ROLES_LIST EQ LPAREN string_list RPAREN

    opt_524 ::= seq_523
           | $empty

    seq_525 ::= EXTERNAL_OAUTH_AUDIENCE_LIST EQ LPAREN string RPAREN

    opt_526 ::= seq_525
           | $empty

    grp_527 ::= EXTERNAL_OAUTH_ANY_ROLE_MODE EQ DISABLE
           | ENABLE
           | ENABLE_FOR_PRIVILEGE

    opt_528 ::= grp_527
           | $empty

    seq_529 ::= EXTERNAL_OAUTH_SCOPE_DELIMITER EQ string

    opt_530 ::= seq_529
           | $empty

    opt_531 ::= SECURITY
           | $empty

    opt_532 ::= if_exists
           | $empty

    seq_533 ::= COMMA security_integration_snowflake_oauth_property

    list_534 ::= $empty
           | list_534 seq_533

    opt_535 ::= SECURITY
           | $empty

    opt_536 ::= SECURITY
           | $empty

    opt_537 ::= SECURITY
           | $empty

    opt_538 ::= if_exists
           | $empty

    seq_539 ::= TYPE EQ SAML2

    opt_540 ::= seq_539
           | $empty

    opt_541 ::= enabled_true_false
           | $empty

    seq_542 ::= SAML2_ISSUER EQ string

    opt_543 ::= seq_542
           | $empty

    seq_544 ::= SAML2_SSO_URL EQ string

    opt_545 ::= seq_544
           | $empty

    seq_546 ::= SAML2_PROVIDER EQ string

    opt_547 ::= seq_546
           | $empty

    seq_548 ::= SAML2_X509_CERT EQ string

    opt_549 ::= seq_548
           | $empty

    seq_550 ::= SAML2_SP_INITIATED_LOGIN_PAGE_LABEL EQ string

    opt_551 ::= seq_550
           | $empty

    seq_552 ::= SAML2_ENABLE_SP_INITIATED EQ true_false

    opt_553 ::= seq_552
           | $empty

    seq_554 ::= SAML2_SNOWFLAKE_X509_CERT EQ string

    opt_555 ::= seq_554
           | $empty

    seq_556 ::= SAML2_SIGN_REQUEST EQ true_false

    opt_557 ::= seq_556
           | $empty

    seq_558 ::= SAML2_REQUESTED_NAMEID_FORMAT EQ string

    opt_559 ::= seq_558
           | $empty

    seq_560 ::= SAML2_POST_LOGOUT_REDIRECT_URL EQ string

    opt_561 ::= seq_560
           | $empty

    seq_562 ::= SAML2_FORCE_AUTHN EQ true_false

    opt_563 ::= seq_562
           | $empty

    seq_564 ::= SAML2_SNOWFLAKE_ISSUER_URL EQ string

    opt_565 ::= seq_564
           | $empty

    seq_566 ::= SAML2_SNOWFLAKE_ACS_URL EQ string

    opt_567 ::= seq_566
           | $empty

    opt_568 ::= SECURITY
           | $empty

    opt_569 ::= if_exists
           | $empty

    opt_570 ::= SECURITY
           | $empty

    opt_571 ::= SECURITY
           | $empty

    opt_572 ::= SECURITY
           | $empty

    opt_573 ::= if_exists
           | $empty

    seq_574 ::= NETWORK_POLICY EQ string

    opt_575 ::= seq_574
           | $empty

    seq_576 ::= SYNC_PASSWORD EQ true_false

    opt_577 ::= seq_576
           | $empty

    opt_578 ::= comment_clause
           | $empty

    opt_579 ::= SECURITY
           | $empty

    opt_580 ::= if_exists
           | $empty

    seq_581 ::= COMMA security_integration_scim_property

    list_582 ::= $empty
           | list_582 seq_581

    opt_583 ::= SECURITY
           | $empty

    opt_584 ::= SECURITY
           | $empty

    seq_585 ::= COMMA param_name

    list_586 ::= $empty
           | list_586 seq_585

    opt_587 ::= if_exists
           | $empty

    list_588 ::= $empty
           | list_588 session_policy_params

    opt_589 ::= if_exists
           | $empty

    grp_590 ::= session_policy_param_name
           | COMMENT

    opt_591 ::= if_exists
           | $empty

    opt_592 ::= if_exists
           | $empty

    grp_593 ::= set_tags
           | unset_tags

    opt_594 ::= if_exists
           | $empty

    list_595 ::= $empty
           | list_595 password_policy_params

    opt_596 ::= if_exists
           | $empty

    grp_597 ::= password_policy_param_name
           | COMMENT

    opt_598 ::= if_exists
           | $empty

    opt_599 ::= if_exists
           | $empty

    grp_600 ::= set_tags
           | unset_tags

    opt_601 ::= if_exists
           | $empty

    grp_602 ::= ADD
           | REMOVE

    seq_603 ::= COMMA id_

    list_604 ::= $empty
           | list_604 seq_603

    seq_605 ::= SHARE_RESTRICTIONS EQ true_false

    opt_606 ::= seq_605
           | $empty

    opt_607 ::= if_exists
           | $empty

    seq_608 ::= COMMA id_

    list_609 ::= $empty
           | list_609 seq_608

    seq_610 ::= SHARE_RESTRICTIONS EQ true_false

    opt_611 ::= seq_610
           | $empty

    opt_612 ::= if_exists
           | $empty

    seq_613 ::= COMMA id_

    list_614 ::= $empty
           | list_614 seq_613

    seq_615 ::= ACCOUNTS EQ id_ list_614

    opt_616 ::= seq_615
           | $empty

    opt_617 ::= comment_clause
           | $empty

    opt_618 ::= if_exists
           | $empty

    opt_619 ::= if_exists
           | $empty

    opt_620 ::= STORAGE
           | $empty

    opt_621 ::= if_exists
           | $empty

    opt_622 ::= cloud_provider_params2
           | $empty

    opt_623 ::= enabled_true_false
           | $empty

    seq_624 ::= STORAGE_ALLOWED_LOCATIONS EQ LPAREN string_list RPAREN

    opt_625 ::= seq_624
           | $empty

    seq_626 ::= STORAGE_BLOCKED_LOCATIONS EQ LPAREN string_list RPAREN

    opt_627 ::= seq_626
           | $empty

    opt_628 ::= comment_clause
           | $empty

    opt_629 ::= STORAGE
           | $empty

    opt_630 ::= if_exists
           | $empty

    opt_631 ::= STORAGE
           | $empty

    opt_632 ::= STORAGE
           | $empty

    opt_633 ::= if_exists
           | $empty

    grp_634 ::= ENABLED
           | STORAGE_BLOCKED_LOCATIONS
           | COMMENT

    opt_635 ::= if_exists
           | $empty

    opt_636 ::= tag_decl_list
           | $empty

    opt_637 ::= comment_clause
           | $empty

    opt_638 ::= if_exists
           | $empty

    opt_639 ::= if_exists
           | $empty

    opt_640 ::= if_exists
           | $empty

    opt_641 ::= if_exists
           | $empty

    opt_642 ::= if_exists
           | $empty

    grp_643 ::= clustering_action
           | table_column_action
           | constraint_action

    opt_644 ::= if_exists
           | $empty

    opt_645 ::= if_exists
           | $empty

    opt_646 ::= if_exists
           | $empty

    opt_647 ::= stage_file_format
           | $empty

    seq_648 ::= STAGE_COPY_OPTIONS EQ LPAREN copy_options RPAREN

    opt_649 ::= seq_648
           | $empty

    seq_650 ::= DATA_RETENTION_TIME_IN_DAYS EQ num

    opt_651 ::= seq_650
           | $empty

    seq_652 ::= MAX_DATA_EXTENSION_TIME_IN_DAYS EQ num

    opt_653 ::= seq_652
           | $empty

    seq_654 ::= CHANGE_TRACKING EQ true_false

    opt_655 ::= seq_654
           | $empty

    opt_656 ::= default_ddl_collation
           | $empty

    opt_657 ::= comment_clause
           | $empty

    opt_658 ::= if_exists
           | $empty

    opt_659 ::= if_exists
           | $empty

    opt_660 ::= if_exists
           | $empty

    grp_661 ::= DATA_RETENTION_TIME_IN_DAYS
           | MAX_DATA_EXTENSION_TIME_IN_DAYS
           | CHANGE_TRACKING
           | DEFAULT_DDL_COLLATION_
           | COMMENT
           | $empty

    opt_662 ::= if_exists
           | $empty

    seq_663 ::= COMMA ADD ROW ACCESS POLICY object_name ON column_list_in_parentheses

    opt_664 ::= seq_663
           | $empty

    seq_665 ::= MAX_SIZE EQ num

    opt_666 ::= seq_665
           | $empty

    seq_667 ::= WHERE expr

    opt_668 ::= seq_667
           | $empty

    opt_669 ::= COLUMN
           | $empty

    opt_670 ::= if_not_exists
           | $empty

    seq_671 ::= COMMA full_col_decl

    list_672 ::= $empty
           | list_672 seq_671

    seq_674 ::= COMMA alter_column_clause

    list_675 ::= $empty
           | list_675 seq_674

    seq_676 ::= COMMA alter_column_clause

    list_677 ::= $empty
           | list_677 seq_676

    grp_673 ::= LPAREN alter_column_clause list_675 RPAREN
           | alter_column_clause list_677

    seq_678 ::= USING LPAREN column_name COMMA column_list RPAREN

    opt_679 ::= seq_678
           | $empty

    opt_680 ::= FORCE
           | $empty

    seq_681 ::= COMMA column_set_tags

    list_682 ::= $empty
           | list_682 seq_681

    seq_683 ::= COMMA column_unset_tags

    list_684 ::= $empty
           | list_684 seq_683

    opt_685 ::= COLUMN
           | $empty

    opt_686 ::= if_exists
           | $empty

    opt_687 ::= COLUMN
           | $empty

    grp_689 ::= SET
           | DROP

    opt_690 ::= grp_689
           | $empty

    seq_691 ::= SET DATA

    opt_692 ::= seq_691
           | $empty

    seq_693 ::= opt_692 TYPE

    opt_694 ::= seq_693
           | $empty

    grp_688 ::= DROP DEFAULT
           | SET DEFAULT object_name DOT NEXTVAL
           | opt_690 NOT NULL_
           | opt_694 data_type
           | COMMENT string
           | UNSET COMMENT

    seq_695 ::= CONSTRAINT id_

    opt_696 ::= seq_695
           | $empty

    grp_698 ::= UNIQUE
           | primary_key

    list_699 ::= $empty
           | list_699 common_constraint_properties

    seq_700 ::= LPAREN column_name RPAREN

    opt_701 ::= seq_700
           | $empty

    grp_697 ::= grp_698 list_699
           | foreign_key REFERENCES object_name opt_701 constraint_properties

    opt_702 ::= NOT
           | $empty

    opt_703 ::= NOT
           | $empty

    grp_704 ::= DEFERRED
           | IMMEDIATE

    grp_705 ::= VALIDATE
           | NOVALIDATE

    opt_706 ::= grp_705
           | $empty

    grp_707 ::= ENABLE
           | DISABLE

    grp_708 ::= VALIDATE
           | NOVALIDATE

    opt_709 ::= grp_708
           | $empty

    grp_710 ::= FULL
           | PARTIAL
           | SIMPLE

    grp_711 ::= NULL_
           | DEFAULT

    list_712 ::= $empty
           | list_712 common_constraint_properties

    opt_713 ::= foreign_key_match
           | $empty

    opt_715 ::= on_delete
           | $empty

    opt_716 ::= on_update
           | $empty

    grp_714 ::= on_update opt_715
           | on_delete opt_716

    opt_717 ::= COLUMN
           | $empty

    opt_718 ::= COLUMN
           | $empty

    grp_719 ::= CONSTRAINT id_
           | primary_key
           | UNIQUE
           | foreign_key

    opt_720 ::= enforced_not_enforced
           | $empty

    grp_721 ::= VALIDATE
           | NOVALIDATE

    grp_722 ::= RELY
           | NORELY

    grp_723 ::= CONSTRAINT id_
           | primary_key
           | UNIQUE
           | foreign_key

    opt_724 ::= column_list_in_parentheses
           | $empty

    opt_725 ::= cascade_restrict
           | $empty

    seq_726 ::= COMMA search_method_with_target

    list_727 ::= $empty
           | list_727 seq_726

    seq_728 ::= ON search_method_with_target list_727

    opt_729 ::= seq_728
           | $empty

    seq_730 ::= COMMA search_method_with_target

    list_731 ::= $empty
           | list_731 seq_730

    seq_732 ::= ON search_method_with_target list_731

    opt_733 ::= seq_732
           | $empty

    grp_734 ::= EQUALITY
           | SUBSTRING
           | GEO

    grp_735 ::= STAR
           | expr

    grp_736 ::= LPAREN alter_column_decl_list RPAREN
           | alter_column_decl_list

    seq_737 ::= USING LPAREN column_name COMMA column_list RPAREN

    opt_738 ::= seq_737
           | $empty

    opt_739 ::= FORCE
           | $empty

    seq_740 ::= COMMA column_set_tags

    list_741 ::= $empty
           | list_741 seq_740

    seq_742 ::= COMMA column_unset_tags

    list_743 ::= $empty
           | list_743 seq_742

    seq_744 ::= COMMA alter_column_decl

    list_745 ::= $empty
           | list_745 seq_744

    opt_746 ::= COLUMN
           | $empty

    grp_747 ::= SET
           | DROP

    opt_748 ::= grp_747
           | $empty

    seq_749 ::= SET DATA

    opt_750 ::= seq_749
           | $empty

    seq_751 ::= opt_750 TYPE

    opt_752 ::= seq_751
           | $empty

    opt_753 ::= COLUMN
           | $empty

    opt_754 ::= if_exists
           | $empty

    opt_755 ::= if_exists
           | $empty

    opt_756 ::= if_exists
           | $empty

    grp_757 ::= REMOVE
           | ADD

    opt_758 ::= if_exists
           | $empty

    seq_759 ::= WAREHOUSE EQ id_

    opt_760 ::= seq_759
           | $empty

    opt_761 ::= task_schedule
           | $empty

    opt_762 ::= task_overlap
           | $empty

    opt_763 ::= task_timeout
           | $empty

    opt_764 ::= task_suspend_after_failure_number
           | $empty

    opt_765 ::= comment_clause
           | $empty

    opt_766 ::= session_params_list
           | $empty

    opt_767 ::= if_exists
           | $empty

    opt_768 ::= WAREHOUSE
           | $empty

    opt_769 ::= SCHEDULE
           | $empty

    opt_770 ::= ALLOW_OVERLAPPING_EXECUTION
           | $empty

    opt_771 ::= USER_TASK_TIMEOUT_MS
           | $empty

    opt_772 ::= SUSPEND_TASK_AFTER_NUM_FAILURES
           | $empty

    opt_773 ::= COMMENT
           | $empty

    opt_774 ::= session_parameter_list
           | $empty

    opt_775 ::= if_exists
           | $empty

    opt_776 ::= if_exists
           | $empty

    opt_777 ::= if_exists
           | $empty

    opt_778 ::= if_exists
           | $empty

    opt_779 ::= if_exists
           | $empty

    opt_780 ::= if_exists
           | $empty

    opt_781 ::= if_exists
           | $empty

    opt_782 ::= if_exists
           | $empty

    opt_783 ::= if_exists
           | $empty

    opt_784 ::= if_exists
           | $empty

    opt_785 ::= if_exists
           | $empty

    opt_786 ::= if_exists
           | $empty

    opt_787 ::= if_exists
           | $empty

    opt_788 ::= if_exists
           | $empty

    opt_789 ::= COLUMN
           | $empty

    seq_790 ::= USING LPAREN column_name COMMA column_list RPAREN

    opt_791 ::= seq_790
           | $empty

    opt_792 ::= FORCE
           | $empty

    opt_793 ::= COLUMN
           | $empty

    opt_794 ::= COLUMN
           | $empty

    opt_795 ::= if_exists
           | $empty

    seq_796 ::= COMMA id_ DOT id_

    list_797 ::= $empty
           | list_797 seq_796

    opt_798 ::= ignore_edition_check
           | $empty

    seq_799 ::= COMMA id_ DOT id_

    list_800 ::= $empty
           | list_800 seq_799

    seq_801 ::= TO ACCOUNTS id_ DOT id_ list_800

    opt_802 ::= seq_801
           | $empty

    opt_803 ::= if_exists
           | $empty

    opt_804 ::= if_exists
           | $empty

    grp_805 ::= AUTHORIZATION OF ROLE id_
           | AUTHORIZATIONS

    grp_806 ::= ADD
           | DROP

    seq_807 ::= COMMA MASKING POLICY id_

    list_808 ::= $empty
           | list_808 seq_807

    seq_809 ::= COMMA MASKING POLICY id_

    list_810 ::= $empty
           | list_810 seq_809

    opt_811 ::= if_exists
           | $empty

    seq_812 ::= ALLOWED_IP_LIST EQ LPAREN string_list RPAREN

    opt_813 ::= seq_812
           | $empty

    seq_814 ::= BLOCKED_IP_LIST EQ LPAREN string_list RPAREN

    opt_815 ::= seq_814
           | $empty

    opt_816 ::= comment_clause
           | $empty

    opt_817 ::= if_exists
           | $empty

    opt_818 ::= id_fn
           | $empty

    opt_820 ::= if_suspended
           | $empty

    grp_819 ::= SUSPEND
           | RESUME opt_820

    opt_821 ::= id_fn
           | $empty

    seq_822 ::= COMMA id_

    list_823 ::= $empty
           | list_823 seq_822

    seq_824 ::= COMMA wh_properties

    list_825 ::= $empty
           | list_825 seq_824

    opt_826 ::= account_params
           | $empty

    opt_827 ::= object_params
           | $empty

    opt_828 ::= session_params
           | $empty

    seq_829 ::= COMMA param_name

    opt_830 ::= seq_829
           | $empty

    seq_831 ::= SAVE_OLD_URL EQ true_false

    opt_832 ::= seq_831
           | $empty

    seq_833 ::= COMMA object_name EQ tag_value

    list_834 ::= $empty
           | list_834 seq_833

    seq_835 ::= COMMA object_name

    list_836 ::= $empty
           | list_836 seq_835

    seq_837 ::= FIRST_NAME EQ id_

    opt_838 ::= seq_837
           | $empty

    seq_839 ::= LAST_NAME EQ id_

    opt_840 ::= seq_839
           | $empty

    seq_841 ::= MUST_CHANGE_PASSWORD EQ true_false

    opt_842 ::= seq_841
           | $empty

    grp_843 ::= STANDARD
           | ENTERPRISE
           | BUSINESS_CRITICAL

    seq_844 ::= REGION_GROUP EQ region_group_id

    opt_845 ::= seq_844
           | $empty

    seq_846 ::= REGION EQ snowflake_region_id

    opt_847 ::= seq_846
           | $empty

    opt_848 ::= comment_clause
           | $empty

    opt_849 ::= or_replace
           | $empty

    opt_850 ::= if_not_exists
           | $empty

    opt_851 ::= or_replace
           | $empty

    opt_852 ::= if_not_exists
           | $empty

    seq_853 ::= API_KEY EQ string

    opt_854 ::= seq_853
           | $empty

    seq_855 ::= API_BLOCKED_PREFIXES EQ LPAREN string RPAREN

    opt_856 ::= seq_855
           | $empty

    opt_857 ::= comment_clause
           | $empty

    opt_858 ::= or_replace
           | $empty

    opt_859 ::= if_not_exists
           | $empty

    seq_860 ::= API_KEY EQ string

    opt_861 ::= seq_860
           | $empty

    seq_862 ::= API_BLOCKED_PREFIXES EQ LPAREN string RPAREN

    opt_863 ::= seq_862
           | $empty

    opt_864 ::= comment_clause
           | $empty

    seq_865 ::= API_BLOCKED_PREFIXES EQ LPAREN string RPAREN

    opt_866 ::= seq_865
           | $empty

    opt_867 ::= comment_clause
           | $empty

    opt_868 ::= or_replace
           | $empty

    grp_869 ::= DATABASE
           | SCHEMA
           | TABLE

    opt_870 ::= if_not_exists
           | $empty

    grp_872 ::= TIMESTAMP ASSOC string
           | OFFSET ASSOC string
           | STATEMENT ASSOC id_

    grp_871 ::= at_before1 LPAREN grp_872 RPAREN

    opt_873 ::= grp_871
           | $empty

    opt_874 ::= or_replace
           | $empty

    grp_875 ::= STAGE
           | FILE FORMAT
           | SEQUENCE
           | STREAM
           | TASK

    opt_876 ::= if_not_exists
           | $empty

    opt_877 ::= if_not_exists
           | $empty

    opt_879 ::= comment_clause
           | $empty

    opt_880 ::= comment_clause
           | $empty

    grp_878 ::= opt_879
           | AS REPLICA OF id_ DOT id_ DOT id_ opt_880

    opt_881 ::= or_replace
           | $empty

    opt_882 ::= TRANSIENT
           | $empty

    opt_883 ::= if_not_exists
           | $empty

    opt_884 ::= clone_at_before
           | $empty

    seq_885 ::= DATA_RETENTION_TIME_IN_DAYS EQ num

    opt_886 ::= seq_885
           | $empty

    seq_887 ::= MAX_DATA_EXTENSION_TIME_IN_DAYS EQ num

    opt_888 ::= seq_887
           | $empty

    opt_889 ::= default_ddl_collation
           | $empty

    opt_890 ::= with_tags
           | $empty

    opt_891 ::= comment_clause
           | $empty

    grp_893 ::= TIMESTAMP ASSOC string
           | OFFSET ASSOC string
           | STATEMENT ASSOC id_

    grp_892 ::= at_before1 LPAREN grp_893 RPAREN

    opt_894 ::= grp_892
           | $empty

    opt_895 ::= or_replace
           | $empty

    opt_896 ::= if_not_exists
           | $empty

    opt_897 ::= or_replace
           | $empty

    opt_898 ::= TRANSIENT
           | $empty

    opt_899 ::= if_not_exists
           | $empty

    seq_900 ::= LPAREN materialized_col_decl_list RPAREN

    opt_901 ::= seq_900
           | $empty

    list_902 ::= dynamic_table_params
           | list_902 dynamic_table_params

    grp_903 ::= AUTO
           | FULL
           | INCREMENTAL

    grp_904 ::= ON_CREATE
           | ON_SCHEDULE

    grp_905 ::= string
           | DOWNSTREAM

    grp_906 ::= string
           | DOWNSTREAM

    opt_907 ::= or_replace
           | $empty

    opt_908 ::= if_not_exists
           | $empty

    opt_909 ::= cluster_by
           | $empty

    list_910 ::= $empty
           | list_910 data_retention_params

    opt_911 ::= change_tracking
           | $empty

    seq_912 ::= DEFAULT_DDL_COLLATION_ EQ string

    opt_913 ::= seq_912
           | $empty

    opt_914 ::= copy_grants
           | $empty

    opt_915 ::= with_row_access_policy
           | $empty

    opt_916 ::= with_tags
           | $empty

    opt_917 ::= WITH
           | $empty

    seq_918 ::= opt_917 comment_clause

    opt_919 ::= seq_918
           | $empty

    opt_920 ::= or_replace
           | $empty

    opt_921 ::= SECURE
           | $empty

    seq_922 ::= COMMA arg_name arg_data_type

    list_923 ::= $empty
           | list_923 seq_922

    seq_924 ::= arg_name arg_data_type list_923

    opt_925 ::= seq_924
           | $empty

    opt_926 ::= null_not_null
           | $empty

    grp_927 ::= CALLED ON NULL_ INPUT
           | RETURNS NULL_ ON NULL_ INPUT
           | STRICT

    opt_928 ::= grp_927
           | $empty

    grp_929 ::= VOLATILE
           | IMMUTABLE

    opt_930 ::= grp_929
           | $empty

    opt_931 ::= comment_clause
           | $empty

    seq_932 ::= COMMA header_decl

    list_933 ::= $empty
           | list_933 seq_932

    seq_934 ::= HEADERS EQ LPAREN header_decl list_933 RPAREN

    opt_935 ::= seq_934
           | $empty

    seq_936 ::= COMMA id_

    list_937 ::= $empty
           | list_937 seq_936

    seq_938 ::= CONTEXT_HEADERS EQ LPAREN id_ list_937 RPAREN

    opt_939 ::= seq_938
           | $empty

    seq_940 ::= MAX_BATCH_ROWS EQ num

    opt_941 ::= seq_940
           | $empty

    opt_942 ::= compression
           | $empty

    seq_943 ::= REQUEST_TRANSLATOR EQ id_

    opt_944 ::= seq_943
           | $empty

    seq_945 ::= RESPONSE_TRANSLATOR EQ id_

    opt_946 ::= seq_945
           | $empty

    opt_947 ::= or_replace
           | $empty

    opt_948 ::= if_not_exists
           | $empty

    opt_949 ::= cloud_provider_params3
           | $empty

    opt_950 ::= partition_by
           | $empty

    opt_951 ::= WITH
           | $empty

    seq_952 ::= REFRESH_ON_CREATE EQ true_false

    opt_953 ::= seq_952
           | $empty

    seq_954 ::= AUTO_REFRESH EQ true_false

    opt_955 ::= seq_954
           | $empty

    opt_956 ::= pattern
           | $empty

    seq_957 ::= AWS_SNS_TOPIC EQ string

    opt_958 ::= seq_957
           | $empty

    opt_959 ::= copy_grants
           | $empty

    opt_960 ::= with_row_access_policy
           | $empty

    opt_961 ::= with_tags
           | $empty

    opt_962 ::= comment_clause
           | $empty

    opt_963 ::= or_replace
           | $empty

    opt_964 ::= if_not_exists
           | $empty

    opt_965 ::= cloud_provider_params3
           | $empty

    opt_966 ::= partition_by
           | $empty

    opt_967 ::= WITH
           | $empty

    opt_968 ::= copy_grants
           | $empty

    opt_969 ::= with_row_access_policy
           | $empty

    opt_970 ::= with_tags
           | $empty

    opt_971 ::= comment_clause
           | $empty

    opt_972 ::= or_replace
           | $empty

    opt_973 ::= if_not_exists
           | $empty

    opt_974 ::= cloud_provider_params3
           | $empty

    opt_975 ::= partition_by
           | $empty

    opt_976 ::= WITH
           | $empty

    seq_977 ::= TABLE_FORMAT EQ DELTA

    opt_978 ::= seq_977
           | $empty

    opt_979 ::= copy_grants
           | $empty

    opt_980 ::= with_row_access_policy
           | $empty

    opt_981 ::= with_tags
           | $empty

    opt_982 ::= comment_clause
           | $empty

    grp_983 ::= expr
           | id_

    opt_984 ::= inline_constraint
           | $empty

    seq_985 ::= COMMA external_table_column_decl

    list_986 ::= $empty
           | list_986 seq_985

    opt_987 ::= if_not_exists
           | $empty

    seq_988 ::= COMMA object_type

    list_989 ::= $empty
           | list_989 seq_988

    seq_990 ::= COMMA id_

    list_991 ::= $empty
           | list_991 seq_990

    seq_992 ::= ALLOWED_DATABASES EQ id_ list_991

    opt_993 ::= seq_992
           | $empty

    seq_994 ::= COMMA id_

    list_995 ::= $empty
           | list_995 seq_994

    seq_996 ::= ALLOWED_SHARES EQ id_ list_995

    opt_997 ::= seq_996
           | $empty

    seq_998 ::= COMMA integration_type_name

    list_999 ::= $empty
           | list_999 seq_998

    seq_1000 ::= ALLOWED_INTEGRATION_TYPES EQ integration_type_name list_999

    opt_1001 ::= seq_1000
           | $empty

    seq_1002 ::= COMMA full_acct

    list_1003 ::= $empty
           | list_1003 seq_1002

    seq_1004 ::= IGNORE EDITION CHECK

    opt_1005 ::= seq_1004
           | $empty

    seq_1006 ::= REPLICATION_SCHEDULE EQ string

    opt_1007 ::= seq_1006
           | $empty

    opt_1008 ::= if_not_exists
           | $empty

    opt_1009 ::= or_replace
           | $empty

    opt_1010 ::= if_not_exists
           | $empty

    seq_1011 ::= TYPE EQ type_fileformat

    opt_1012 ::= seq_1011
           | $empty

    list_1013 ::= $empty
           | list_1013 format_type_options

    opt_1014 ::= comment_clause
           | $empty

    opt_1015 ::= arg_default_value_clause
           | $empty

    opt_1016 ::= virtual_column_decl
           | $empty

    opt_1017 ::= or_replace
           | $empty

    opt_1018 ::= SECURE
           | $empty

    opt_1019 ::= if_not_exists
           | $empty

    seq_1020 ::= COMMA arg_decl

    list_1021 ::= $empty
           | list_1021 seq_1020

    seq_1022 ::= arg_decl list_1021

    opt_1023 ::= seq_1022
           | $empty

    seq_1025 ::= COMMA col_decl

    list_1026 ::= $empty
           | list_1026 seq_1025

    seq_1027 ::= col_decl list_1026

    opt_1028 ::= seq_1027
           | $empty

    grp_1024 ::= data_type
           | TABLE LPAREN opt_1028 RPAREN

    opt_1029 ::= null_not_null
           | $empty

    grp_1031 ::= JAVA
           | PYTHON
           | JAVASCRIPT
           | SQL

    grp_1030 ::= LANGUAGE grp_1031

    opt_1032 ::= grp_1030
           | $empty

    grp_1033 ::= CALLED ON NULL_ INPUT
           | RETURNS NULL_ ON NULL_ INPUT
           | STRICT

    opt_1034 ::= grp_1033
           | $empty

    grp_1035 ::= VOLATILE
           | IMMUTABLE

    opt_1036 ::= grp_1035
           | $empty

    seq_1037 ::= PACKAGES EQ LPAREN string_list RPAREN

    opt_1038 ::= seq_1037
           | $empty

    grp_1040 ::= string
           | NUMBER

    grp_1039 ::= RUNTIME_VERSION EQ grp_1040

    opt_1041 ::= grp_1039
           | $empty

    seq_1042 ::= IMPORTS EQ LPAREN string_list RPAREN

    opt_1043 ::= seq_1042
           | $empty

    seq_1044 ::= PACKAGES EQ LPAREN string_list RPAREN

    opt_1045 ::= seq_1044
           | $empty

    seq_1046 ::= HANDLER EQ string

    opt_1047 ::= seq_1046
           | $empty

    opt_1048 ::= comment_clause
           | $empty

    opt_1049 ::= or_replace
           | $empty

    opt_1050 ::= SECURE
           | $empty

    seq_1051 ::= COMMA arg_decl

    list_1052 ::= $empty
           | list_1052 seq_1051

    seq_1053 ::= arg_decl list_1052

    opt_1054 ::= seq_1053
           | $empty

    seq_1056 ::= COMMA col_decl

    list_1057 ::= $empty
           | list_1057 seq_1056

    seq_1058 ::= col_decl list_1057

    opt_1059 ::= seq_1058
           | $empty

    grp_1055 ::= data_type
           | TABLE LPAREN opt_1059 RPAREN

    opt_1060 ::= null_not_null
           | $empty

    grp_1061 ::= CALLED ON NULL_ INPUT
           | RETURNS NULL_ ON NULL_ INPUT
           | STRICT

    opt_1062 ::= grp_1061
           | $empty

    grp_1063 ::= VOLATILE
           | IMMUTABLE

    opt_1064 ::= grp_1063
           | $empty

    opt_1065 ::= MEMOIZABLE
           | $empty

    opt_1066 ::= comment_clause
           | $empty

    opt_1067 ::= or_replace
           | $empty

    opt_1068 ::= if_not_exists
           | $empty

    list_1069 ::= create_git_opts
           | list_1069 create_git_opts

    opt_1070 ::= or_replace
           | $empty

    opt_1071 ::= if_not_exists
           | $empty

    opt_1072 ::= encryption_opts_internal
           | $empty

    opt_1073 ::= comment_clause
           | $empty

    opt_1074 ::= with_tags
           | $empty

    opt_1075 ::= or_replace
           | $empty

    opt_1076 ::= if_not_exists
           | $empty

    seq_1077 ::= INCLUDE column_list_in_parentheses

    opt_1078 ::= seq_1077
           | $empty

    seq_1079 ::= COMMA comment_clause

    opt_1080 ::= seq_1079
           | $empty

    opt_1081 ::= or_replace
           | $empty

    opt_1082 ::= if_not_exists
           | $empty

    seq_1083 ::= COMMA arg_name arg_data_type

    opt_1084 ::= seq_1083
           | $empty

    opt_1085 ::= comment_clause
           | $empty

    opt_1086 ::= or_replace
           | $empty

    opt_1087 ::= SECURE
           | $empty

    opt_1088 ::= if_not_exists
           | $empty

    seq_1089 ::= LPAREN column_list_with_comment RPAREN

    opt_1090 ::= seq_1089
           | $empty

    list_1091 ::= $empty
           | list_1091 view_col

    opt_1092 ::= with_row_access_policy
           | $empty

    opt_1093 ::= with_tags
           | $empty

    opt_1094 ::= copy_grants
           | $empty

    opt_1095 ::= comment_clause
           | $empty

    opt_1096 ::= cluster_by
           | $empty

    opt_1097 ::= or_replace
           | $empty

    opt_1098 ::= string_list
           | $empty

    opt_1099 ::= string_list
           | $empty

    seq_1100 ::= BLOCKED_IP_LIST EQ LPAREN opt_1099 RPAREN

    opt_1101 ::= seq_1100
           | $empty

    opt_1102 ::= comment_clause
           | $empty

    opt_1103 ::= or_replace
           | $empty

    opt_1104 ::= if_not_exists
           | $empty

    opt_1105 ::= comment_clause
           | $empty

    opt_1106 ::= or_replace
           | $empty

    opt_1107 ::= if_not_exists
           | $empty

    opt_1108 ::= comment_clause
           | $empty

    opt_1109 ::= or_replace
           | $empty

    opt_1110 ::= if_not_exists
           | $empty

    seq_1111 ::= AUTO_INGEST EQ true_false

    opt_1112 ::= seq_1111
           | $empty

    seq_1113 ::= ERROR_INTEGRATION EQ id_

    opt_1114 ::= seq_1113
           | $empty

    seq_1115 ::= AWS_SNS_TOPIC EQ string

    opt_1116 ::= seq_1115
           | $empty

    seq_1117 ::= INTEGRATION EQ string

    opt_1118 ::= seq_1117
           | $empty

    opt_1119 ::= comment_clause
           | $empty

    opt_1120 ::= or_replace
           | $empty

    seq_1121 ::= COMMA arg_decl

    list_1122 ::= $empty
           | list_1122 seq_1121

    seq_1123 ::= arg_decl list_1122

    opt_1124 ::= seq_1123
           | $empty

    seq_1126 ::= COMMA col_decl

    list_1127 ::= $empty
           | list_1127 seq_1126

    seq_1128 ::= col_decl list_1127

    opt_1129 ::= seq_1128
           | $empty

    grp_1125 ::= data_type
           | TABLE LPAREN opt_1129 RPAREN

    opt_1130 ::= not_null
           | $empty

    grp_1131 ::= CALLED ON NULL_ INPUT
           | RETURNS NULL_ ON NULL_ INPUT
           | STRICT

    opt_1132 ::= grp_1131
           | $empty

    grp_1133 ::= VOLATILE
           | IMMUTABLE

    opt_1134 ::= grp_1133
           | $empty

    opt_1135 ::= comment_clause
           | $empty

    opt_1136 ::= executa_as
           | $empty

    opt_1137 ::= or_replace
           | $empty

    opt_1138 ::= SECURE
           | $empty

    seq_1139 ::= COMMA arg_decl

    list_1140 ::= $empty
           | list_1140 seq_1139

    seq_1141 ::= arg_decl list_1140

    opt_1142 ::= seq_1141
           | $empty

    opt_1143 ::= not_null
           | $empty

    grp_1144 ::= CALLED ON NULL_ INPUT
           | RETURNS NULL_ ON NULL_ INPUT
           | STRICT

    opt_1145 ::= grp_1144
           | $empty

    grp_1146 ::= VOLATILE
           | IMMUTABLE

    opt_1147 ::= grp_1146
           | $empty

    opt_1148 ::= comment_clause
           | $empty

    opt_1149 ::= executa_as
           | $empty

    opt_1150 ::= or_replace
           | $empty

    opt_1151 ::= SECURE
           | $empty

    seq_1152 ::= COMMA arg_decl

    list_1153 ::= $empty
           | list_1153 seq_1152

    seq_1154 ::= arg_decl list_1153

    opt_1155 ::= seq_1154
           | $empty

    opt_1157 ::= not_null
           | $empty

    seq_1158 ::= COMMA col_decl

    list_1159 ::= $empty
           | list_1159 seq_1158

    seq_1160 ::= col_decl list_1159

    opt_1161 ::= seq_1160
           | $empty

    grp_1156 ::= data_type opt_1157
           | TABLE LPAREN opt_1161 RPAREN

    seq_1162 ::= IMPORTS EQ LPAREN string_list RPAREN

    opt_1163 ::= seq_1162
           | $empty

    opt_1164 ::= comment_clause
           | $empty

    opt_1165 ::= executa_as
           | $empty

    opt_1166 ::= if_not_exists
           | $empty

    seq_1167 ::= COMMA object_type

    list_1168 ::= $empty
           | list_1168 seq_1167

    seq_1169 ::= COMMA id_

    list_1170 ::= $empty
           | list_1170 seq_1169

    seq_1171 ::= ALLOWED_DATABASES EQ id_ list_1170

    opt_1172 ::= seq_1171
           | $empty

    seq_1173 ::= COMMA id_

    list_1174 ::= $empty
           | list_1174 seq_1173

    seq_1175 ::= ALLOWED_SHARES EQ id_ list_1174

    opt_1176 ::= seq_1175
           | $empty

    seq_1177 ::= COMMA integration_type_name

    list_1178 ::= $empty
           | list_1178 seq_1177

    seq_1179 ::= ALLOWED_INTEGRATION_TYPES EQ integration_type_name list_1178

    opt_1180 ::= seq_1179
           | $empty

    seq_1181 ::= COMMA full_acct

    list_1182 ::= $empty
           | list_1182 seq_1181

    seq_1183 ::= IGNORE EDITION CHECK

    opt_1184 ::= seq_1183
           | $empty

    seq_1185 ::= REPLICATION_SCHEDULE EQ string

    opt_1186 ::= seq_1185
           | $empty

    opt_1187 ::= if_not_exists
           | $empty

    opt_1188 ::= or_replace
           | $empty

    opt_1189 ::= credit_quota
           | $empty

    opt_1190 ::= frequency
           | $empty

    grp_1192 ::= string
           | IMMEDIATELY

    grp_1191 ::= START_TIMESTAMP EQ grp_1192

    opt_1193 ::= grp_1191
           | $empty

    seq_1194 ::= END_TIMESTAMP EQ string

    opt_1195 ::= seq_1194
           | $empty

    opt_1196 ::= notify_users
           | $empty

    list_1197 ::= trigger_definition
           | list_1197 trigger_definition

    seq_1198 ::= TRIGGERS list_1197

    opt_1199 ::= seq_1198
           | $empty

    opt_1200 ::= or_replace
           | $empty

    opt_1201 ::= if_not_exists
           | $empty

    opt_1202 ::= with_tags
           | $empty

    opt_1203 ::= comment_clause
           | $empty

    opt_1204 ::= or_replace
           | $empty

    opt_1205 ::= if_not_exists
           | $empty

    seq_1206 ::= COMMA arg_decl

    list_1207 ::= $empty
           | list_1207 seq_1206

    opt_1208 ::= comment_clause
           | $empty

    opt_1209 ::= or_replace
           | $empty

    opt_1210 ::= TRANSIENT
           | $empty

    opt_1211 ::= if_not_exists
           | $empty

    opt_1212 ::= clone_at_before
           | $empty

    seq_1213 ::= WITH MANAGED ACCESS

    opt_1214 ::= seq_1213
           | $empty

    seq_1215 ::= DATA_RETENTION_TIME_IN_DAYS EQ num

    opt_1216 ::= seq_1215
           | $empty

    seq_1217 ::= MAX_DATA_EXTENSION_TIME_IN_DAYS EQ num

    opt_1218 ::= seq_1217
           | $empty

    opt_1219 ::= default_ddl_collation
           | $empty

    opt_1220 ::= with_tags
           | $empty

    opt_1221 ::= comment_clause
           | $empty

    opt_1222 ::= or_replace
           | $empty

    opt_1223 ::= if_not_exists
           | $empty

    grp_1224 ::= TYPE EQ OAUTH2 API_AUTHENTICATION EQ id_ OAUTH_SCOPES EQ LPAREN string_list RPAREN
           | TYPE EQ OAUTH2 OAUTH_REFRESH_TOKEN EQ string OAUTH_REFRESH_TOKEN_EXPIRY_TIME EQ string API_AUTHENTICATION EQ id_
           | TYPE EQ CLOUD_PROVIDER_TOKEN API_AUTHENTICATION EQ string ENABLED EQ true_false
           | TYPE EQ PASSWORD USERNAME EQ string PASSWORD EQ string
           | TYPE EQ GENERIC_STRING SECRET_STRING EQ string
           | TYPE EQ SYMMETRIC_KEY GENERIC

    opt_1225 ::= comment_clause
           | $empty

    opt_1226 ::= or_replace
           | $empty

    opt_1227 ::= if_not_exists
           | $empty

    grp_1228 ::= OKTA
           | AZURE
           | PING_FEDERATE
           | CUSTOM

    grp_1229 ::= string
           | LPAREN string_list RPAREN

    seq_1230 ::= EXTERNAL_OAUTH_JWS_KEYS_URL EQ string

    opt_1231 ::= seq_1230
           | $empty

    grp_1233 ::= string
           | LPAREN string_list RPAREN

    grp_1232 ::= EXTERNAL_OAUTH_JWS_KEYS_URL EQ grp_1233

    opt_1234 ::= grp_1232
           | $empty

    seq_1235 ::= EXTERNAL_OAUTH_BLOCKED_ROLES_LIST EQ LPAREN string_list RPAREN

    opt_1236 ::= seq_1235
           | $empty

    seq_1237 ::= EXTERNAL_OAUTH_ALLOWED_ROLES_LIST EQ LPAREN string_list RPAREN

    opt_1238 ::= seq_1237
           | $empty

    seq_1239 ::= EXTERNAL_OAUTH_RSA_PUBLIC_KEY EQ string

    opt_1240 ::= seq_1239
           | $empty

    seq_1241 ::= EXTERNAL_OAUTH_RSA_PUBLIC_KEY_2 EQ string

    opt_1242 ::= seq_1241
           | $empty

    seq_1243 ::= EXTERNAL_OAUTH_AUDIENCE_LIST EQ LPAREN string RPAREN

    opt_1244 ::= seq_1243
           | $empty

    grp_1246 ::= DISABLE
           | ENABLE
           | ENABLE_FOR_PRIVILEGE

    grp_1245 ::= EXTERNAL_OAUTH_ANY_ROLE_MODE EQ grp_1246

    opt_1247 ::= grp_1245
           | $empty

    seq_1248 ::= EXTERNAL_OAUTH_SCOPE_DELIMITER EQ string

    opt_1249 ::= seq_1248
           | $empty

    opt_1250 ::= or_replace
           | $empty

    opt_1251 ::= if_not_exists
           | $empty

    opt_1252 ::= enabled_true_false
           | $empty

    seq_1253 ::= OAUTH_ISSUE_REFRESH_TOKENS EQ true_false

    opt_1254 ::= seq_1253
           | $empty

    seq_1255 ::= OAUTH_REFRESH_TOKEN_VALIDITY EQ num

    opt_1256 ::= seq_1255
           | $empty

    seq_1257 ::= OAUTH_USE_SECONDARY_ROLES EQ implicit_none

    opt_1258 ::= seq_1257
           | $empty

    seq_1259 ::= BLOCKED_ROLES_LIST EQ LPAREN string_list RPAREN

    opt_1260 ::= seq_1259
           | $empty

    opt_1261 ::= comment_clause
           | $empty

    opt_1262 ::= or_replace
           | $empty

    opt_1263 ::= if_not_exists
           | $empty

    opt_1264 ::= enabled_true_false
           | $empty

    seq_1265 ::= OAUTH_ALLOW_NON_TLS_REDIRECT_URI EQ true_false

    opt_1266 ::= seq_1265
           | $empty

    seq_1267 ::= OAUTH_ENFORCE_PKCE EQ true_false

    opt_1268 ::= seq_1267
           | $empty

    seq_1269 ::= OAUTH_USE_SECONDARY_ROLES EQ implicit_none

    opt_1270 ::= seq_1269
           | $empty

    seq_1271 ::= PRE_AUTHORIZED_ROLES_LIST EQ LPAREN string_list RPAREN

    opt_1272 ::= seq_1271
           | $empty

    seq_1273 ::= BLOCKED_ROLES_LIST EQ LPAREN string_list RPAREN

    opt_1274 ::= seq_1273
           | $empty

    seq_1275 ::= OAUTH_ISSUE_REFRESH_TOKENS EQ true_false

    opt_1276 ::= seq_1275
           | $empty

    seq_1277 ::= OAUTH_REFRESH_TOKEN_VALIDITY EQ num

    opt_1278 ::= seq_1277
           | $empty

    opt_1279 ::= network_policy
           | $empty

    seq_1280 ::= OAUTH_CLIENT_RSA_PUBLIC_KEY EQ string

    opt_1281 ::= seq_1280
           | $empty

    seq_1282 ::= OAUTH_CLIENT_RSA_PUBLIC_KEY_2 EQ string

    opt_1283 ::= seq_1282
           | $empty

    opt_1284 ::= comment_clause
           | $empty

    opt_1285 ::= or_replace
           | $empty

    opt_1286 ::= if_not_exists
           | $empty

    seq_1287 ::= SAML2_SP_INITIATED_LOGIN_PAGE_LABEL EQ string

    opt_1288 ::= seq_1287
           | $empty

    seq_1289 ::= SAML2_ENABLE_SP_INITIATED EQ true_false

    opt_1290 ::= seq_1289
           | $empty

    seq_1291 ::= SAML2_SNOWFLAKE_X509_CERT EQ string

    opt_1292 ::= seq_1291
           | $empty

    seq_1293 ::= SAML2_SIGN_REQUEST EQ true_false

    opt_1294 ::= seq_1293
           | $empty

    seq_1295 ::= SAML2_REQUESTED_NAMEID_FORMAT EQ string

    opt_1296 ::= seq_1295
           | $empty

    seq_1297 ::= SAML2_POST_LOGOUT_REDIRECT_URL EQ string

    opt_1298 ::= seq_1297
           | $empty

    seq_1299 ::= SAML2_FORCE_AUTHN EQ true_false

    opt_1300 ::= seq_1299
           | $empty

    seq_1301 ::= SAML2_SNOWFLAKE_ISSUER_URL EQ string

    opt_1302 ::= seq_1301
           | $empty

    seq_1303 ::= SAML2_SNOWFLAKE_ACS_URL EQ string

    opt_1304 ::= seq_1303
           | $empty

    opt_1305 ::= or_replace
           | $empty

    opt_1306 ::= if_not_exists
           | $empty

    grp_1307 ::= OKTA_Q
           | AZURE_Q
           | GENERIC_Q

    grp_1308 ::= OKTA_PROVISIONER_Q
           | AAD_PROVISIONER_Q
           | GENERIC_SCIM_PROVISIONER_Q

    opt_1309 ::= network_policy
           | $empty

    seq_1310 ::= SYNC_PASSWORD EQ true_false

    opt_1311 ::= seq_1310
           | $empty

    opt_1312 ::= comment_clause
           | $empty

    opt_1313 ::= WITH
           | $empty

    opt_1314 ::= EQ
           | $empty

    opt_1315 ::= BY
           | $empty

    opt_1316 ::= EQ
           | $empty

    opt_1317 ::= or_replace
           | $empty

    opt_1318 ::= if_not_exists
           | $empty

    seq_1319 ::= COMMA logical_table

    list_1320 ::= $empty
           | list_1320 seq_1319

    seq_1321 ::= COMMA relationship_def

    list_1322 ::= $empty
           | list_1322 seq_1321

    seq_1323 ::= RELATIONSHIPS LPAREN relationship_def list_1322 RPAREN

    opt_1324 ::= seq_1323
           | $empty

    seq_1325 ::= FACTS LPAREN semantic_expression_list RPAREN

    opt_1326 ::= seq_1325
           | $empty

    seq_1327 ::= DIMENSIONS LPAREN semantic_expression_list RPAREN

    opt_1328 ::= seq_1327
           | $empty

    seq_1329 ::= METRICS LPAREN semantic_expression_list RPAREN

    opt_1330 ::= seq_1329
           | $empty

    opt_1331 ::= with_extension_clause
           | $empty

    opt_1332 ::= comment_clause
           | $empty

    opt_1333 ::= copy_grants
           | $empty

    seq_1334 ::= alias AS

    opt_1335 ::= seq_1334
           | $empty

    seq_1336 ::= PRIMARY KEY LPAREN column_list RPAREN

    opt_1337 ::= seq_1336
           | $empty

    seq_1338 ::= UNIQUE column_list_in_parentheses

    list_1339 ::= seq_1338
           | list_1339 seq_1338

    opt_1340 ::= list_1339
           | $empty

    opt_1341 ::= with_synonyms_clause
           | $empty

    opt_1342 ::= comment_clause
           | $empty

    seq_1343 ::= id_ AS

    opt_1344 ::= seq_1343
           | $empty

    opt_1345 ::= ASOF
           | $empty

    seq_1346 ::= LPAREN opt_1345 column_list RPAREN

    opt_1347 ::= seq_1346
           | $empty

    opt_1348 ::= EQ
           | $empty

    seq_1349 ::= COMMA semantic_expression

    list_1350 ::= $empty
           | list_1350 seq_1349

    opt_1351 ::= PUBLIC
           | $empty

    seq_1352 ::= USING id_

    opt_1353 ::= seq_1352
           | $empty

    seq_1354 ::= WITH CORTEX SEARCH SERVICE id_ opt_1353

    opt_1355 ::= seq_1354
           | $empty

    opt_1356 ::= with_synonyms_clause
           | $empty

    opt_1357 ::= comment_clause
           | $empty

    grp_1358 ::= PRIVATE
           | PUBLIC

    opt_1359 ::= grp_1358
           | $empty

    opt_1360 ::= with_synonyms_clause
           | $empty

    opt_1361 ::= comment_clause
           | $empty

    opt_1362 ::= or_replace
           | $empty

    opt_1363 ::= if_not_exists
           | $empty

    opt_1364 ::= WITH
           | $empty

    opt_1365 ::= start_with
           | $empty

    opt_1366 ::= increment_by
           | $empty

    opt_1367 ::= order_noorder
           | $empty

    opt_1368 ::= comment_clause
           | $empty

    opt_1369 ::= or_replace
           | $empty

    opt_1370 ::= if_not_exists
           | $empty

    list_1371 ::= $empty
           | list_1371 service_params

    grp_1372 ::= table_stage
           | user_stage
           | named_stage
           | external_location

    opt_1373 ::= grp_1372
           | $empty

    grp_1374 ::= table_stage
           | user_stage
           | named_stage
           | external_location

    opt_1375 ::= grp_1374
           | $empty

    seq_1376 ::= COMMA key_value_assoc

    list_1377 ::= $empty
           | list_1377 seq_1376

    seq_1379 ::= COMMA object_name

    list_1380 ::= $empty
           | list_1380 seq_1379

    grp_1378 ::= string
           | num
           | true_false
           | id_
           | LPAREN object_name list_1380 RPAREN

    opt_1381 ::= or_replace
           | $empty

    opt_1382 ::= if_not_exists
           | $empty

    list_1383 ::= $empty
           | list_1383 session_policy_params

    opt_1384 ::= or_replace
           | $empty

    opt_1385 ::= if_not_exists
           | $empty

    list_1386 ::= $empty
           | list_1386 password_policy_params

    opt_1387 ::= or_replace
           | $empty

    opt_1388 ::= comment_clause
           | $empty

    grp_1389 ::= AUTO
           | GZIP
           | BZ2
           | BROTLI
           | ZSTD
           | DEFLATE
           | RAW_DEFLATE
           | NONE
           | AUTO_Q

    grp_1390 ::= string
           | NONE

    grp_1391 ::= string
           | NONE

    grp_1392 ::= string
           | AUTO

    grp_1393 ::= string
           | AUTO

    grp_1394 ::= string
           | AUTO

    grp_1395 ::= HEX
           | BASE64
           | UTF8

    grp_1396 ::= character
           | NONE
           | NONE_Q

    grp_1397 ::= string
           | NONE
           | NONE_Q

    grp_1398 ::= string
           | NONE
           | NONE_Q
           | SINGLE_QUOTE

    list_1399 ::= $empty
           | list_1399 string_list

    grp_1400 ::= string
           | UTF8

    grp_1401 ::= CONTINUE
           | SKIP_FILE
           | SKIP_FILE_N
           | SKIP_FILE_N ABORT_STATEMENT

    grp_1402 ::= SNOWFLAKE_FULL_Q
           | SNOWFLAKE_SSE_Q

    opt_1404 ::= stage_type
           | $empty

    opt_1405 ::= stage_kms_key
           | $empty

    grp_1403 ::= opt_1404 stage_master_key
           | stage_type opt_1405

    seq_1406 ::= TYPE EQ AZURE_CSE_Q

    opt_1407 ::= seq_1406
           | $empty

    seq_1408 ::= TYPE EQ GCS_SSE_KMS_Q

    opt_1409 ::= seq_1408
           | $empty

    opt_1411 ::= aws_token
           | $empty

    grp_1410 ::= aws_key_id aws_secret_key opt_1411
           | aws_role

    grp_1412 ::= S3_PATH
           | S3GOV_PATH

    opt_1414 ::= aws_credential_or_storage_integration
           | $empty

    opt_1415 ::= stage_encryption_opts_aws
           | $empty

    grp_1413 ::= opt_1414 stage_encryption_opts_aws
           | opt_1415 aws_credential_or_storage_integration

    opt_1416 ::= grp_1413
           | $empty

    opt_1418 ::= storage_integration_eq_id
           | $empty

    opt_1419 ::= stage_encryption_opts_gcp
           | $empty

    grp_1417 ::= opt_1418 stage_encryption_opts_gcp
           | opt_1419 storage_integration_eq_id

    opt_1420 ::= grp_1417
           | $empty

    opt_1422 ::= az_credential_or_storage_integration
           | $empty

    opt_1423 ::= stage_encryption_opts_az
           | $empty

    grp_1421 ::= opt_1422 stage_encryption_opts_az
           | opt_1423 az_credential_or_storage_integration

    opt_1424 ::= grp_1421
           | $empty

    opt_1426 ::= refresh_on_create
           | $empty

    grp_1425 ::= enable opt_1426
           | REFRESH_ON_CREATE EQ FALSE
           | refresh_on_create enable

    opt_1427 ::= refresh_on_create
           | $empty

    opt_1428 ::= auto_refresh
           | $empty

    opt_1429 ::= auto_refresh
           | $empty

    opt_1430 ::= refresh_on_create
           | $empty

    opt_1431 ::= notification_integration
           | $empty

    opt_1432 ::= refresh_on_create
           | $empty

    opt_1433 ::= auto_refresh
           | $empty

    opt_1434 ::= notification_integration
           | $empty

    opt_1435 ::= or_replace
           | $empty

    opt_1436 ::= temporary
           | $empty

    opt_1437 ::= if_not_exists
           | $empty

    opt_1438 ::= encryption_opts_internal
           | $empty

    opt_1439 ::= directory_table_internal_params
           | $empty

    list_1442 ::= $empty
           | list_1442 format_type_options

    grp_1441 ::= FORMAT_NAME EQ string
           | TYPE EQ type_fileformat list_1442

    grp_1440 ::= FILE_FORMAT EQ LPAREN grp_1441 RPAREN

    opt_1443 ::= grp_1440
           | $empty

    seq_1444 ::= COPY_OPTIONS_ EQ LPAREN copy_options RPAREN

    opt_1445 ::= seq_1444
           | $empty

    opt_1446 ::= with_tags
           | $empty

    opt_1447 ::= comment_clause
           | $empty

    opt_1448 ::= or_replace
           | $empty

    opt_1449 ::= temporary
           | $empty

    opt_1450 ::= if_not_exists
           | $empty

    opt_1451 ::= directory_table_external_params
           | $empty

    list_1454 ::= $empty
           | list_1454 format_type_options

    grp_1453 ::= FORMAT_NAME EQ string
           | TYPE EQ type_fileformat list_1454

    grp_1452 ::= FILE_FORMAT EQ LPAREN grp_1453 RPAREN

    opt_1455 ::= grp_1452
           | $empty

    seq_1456 ::= COPY_OPTIONS_ EQ LPAREN copy_options RPAREN

    opt_1457 ::= seq_1456
           | $empty

    opt_1458 ::= with_tags
           | $empty

    opt_1459 ::= comment_clause
           | $empty

    opt_1460 ::= if_exists
           | $empty

    grp_1461 ::= RENAME TO object_name
           | SET comment_clause
           | UNSET COMMENT

    opt_1462 ::= if_exists
           | $empty

    opt_1463 ::= if_exists
           | $empty

    opt_1464 ::= if_exists
           | $empty

    opt_1465 ::= if_exists
           | $empty

    opt_1466 ::= external_stage_params
           | $empty

    opt_1467 ::= file_format
           | $empty

    seq_1468 ::= COPY_OPTIONS_ EQ LPAREN copy_options RPAREN

    opt_1469 ::= seq_1468
           | $empty

    opt_1470 ::= comment_clause
           | $empty

    opt_1471 ::= if_exists
           | $empty

    opt_1472 ::= like_pattern
           | $empty

    opt_1473 ::= in_obj
           | $empty

    seq_1474 ::= STORAGE_AWS_OBJECT_ACL EQ string

    opt_1475 ::= seq_1474
           | $empty

    seq_1476 ::= STORAGE_AWS_OBJECT_ACL EQ string

    opt_1477 ::= seq_1476
           | $empty

    opt_1478 ::= or_replace
           | $empty

    opt_1479 ::= if_not_exists
           | $empty

    seq_1480 ::= STORAGE_BLOCKED_LOCATIONS EQ LPAREN string_list RPAREN

    opt_1481 ::= seq_1480
           | $empty

    opt_1482 ::= comment_clause
           | $empty

    grp_1483 ::= TIMESTAMP ASSOC string
           | OFFSET ASSOC string
           | STATEMENT ASSOC id_
           | STREAM ASSOC string

    opt_1484 ::= or_replace
           | $empty

    opt_1485 ::= if_not_exists
           | $empty

    opt_1486 ::= with_tags
           | $empty

    opt_1487 ::= copy_grants
           | $empty

    grp_1488 ::= TABLE
           | VIEW

    opt_1489 ::= stream_time
           | $empty

    opt_1490 ::= append_only
           | $empty

    opt_1491 ::= show_initial_rows
           | $empty

    opt_1492 ::= comment_clause
           | $empty

    opt_1493 ::= or_replace
           | $empty

    opt_1494 ::= if_not_exists
           | $empty

    opt_1495 ::= with_tags
           | $empty

    opt_1496 ::= copy_grants
           | $empty

    opt_1497 ::= stream_time
           | $empty

    opt_1498 ::= insert_only
           | $empty

    opt_1499 ::= comment_clause
           | $empty

    opt_1500 ::= or_replace
           | $empty

    opt_1501 ::= if_not_exists
           | $empty

    opt_1502 ::= with_tags
           | $empty

    opt_1503 ::= copy_grants
           | $empty

    opt_1504 ::= comment_clause
           | $empty

    grp_1505 ::= LOCAL
           | GLOBAL

    opt_1506 ::= grp_1505
           | $empty

    opt_1507 ::= WITH
           | $empty

    seq_1508 ::= COMMA tag_decl

    list_1509 ::= $empty
           | list_1509 seq_1508

    opt_1510 ::= WITH
           | $empty

    seq_1511 ::= COMMA column_name

    list_1512 ::= $empty
           | list_1512 seq_1511

    opt_1513 ::= LINEAR
           | $empty

    opt_1514 ::= WITH
           | $empty

    seq_1515 ::= USING column_list_in_parentheses

    opt_1516 ::= seq_1515
           | $empty

    grp_1517 ::= AUTOINCREMENT
           | IDENTITY

    grp_1518 ::= LPAREN num COMMA num RPAREN
           | start_with
           | increment_by
           | start_with increment_by

    opt_1519 ::= grp_1518
           | $empty

    opt_1520 ::= order_noorder
           | $empty

    seq_1521 ::= CONSTRAINT id_

    opt_1522 ::= seq_1521
           | $empty

    grp_1524 ::= UNIQUE
           | primary_key

    list_1525 ::= $empty
           | list_1525 common_constraint_properties

    grp_1523 ::= grp_1524 column_list_in_parentheses list_1525
           | foreign_key column_list_in_parentheses REFERENCES object_name column_list_in_parentheses constraint_properties

    opt_1526 ::= inline_comment_clause
           | $empty

    grp_1527 ::= collate
           | inline_constraint
           | null_not_null
           | default_value

    list_1528 ::= $empty
           | list_1528 grp_1527

    opt_1529 ::= with_masking_policy
           | $empty

    opt_1530 ::= with_tags
           | $empty

    opt_1531 ::= inline_comment_clause
           | $empty

    opt_1532 ::= data_type
           | $empty

    opt_1533 ::= with_masking_policy
           | $empty

    opt_1534 ::= with_tags
           | $empty

    seq_1535 ::= COMMENT string

    opt_1536 ::= seq_1535
           | $empty

    seq_1537 ::= COMMA materialized_col_decl

    list_1538 ::= $empty
           | list_1538 seq_1537

    seq_1539 ::= COMMA column_decl_item

    list_1540 ::= $empty
           | list_1540 seq_1539

    grp_1541 ::= or_replace
           | or_alter

    opt_1542 ::= grp_1541
           | $empty

    opt_1543 ::= table_type
           | $empty

    opt_1545 ::= if_not_exists
           | $empty

    opt_1546 ::= if_not_exists
           | $empty

    grp_1544 ::= opt_1545 object_name
           | object_name opt_1546

    list_1547 ::= $empty
           | list_1547 create_table_optionnal_clause

    list_1548 ::= $empty
           | list_1548 create_table_optionnal_clause

    opt_1549 ::= or_replace
           | $empty

    opt_1550 ::= table_type
           | $empty

    opt_1552 ::= if_not_exists
           | $empty

    opt_1553 ::= if_not_exists
           | $empty

    grp_1551 ::= opt_1552 object_name
           | object_name opt_1553

    seq_1554 ::= LPAREN column_decl_item_list RPAREN

    opt_1555 ::= seq_1554
           | $empty

    opt_1556 ::= cluster_by
           | $empty

    opt_1557 ::= copy_grants
           | $empty

    opt_1558 ::= with_row_access_policy
           | $empty

    opt_1559 ::= with_tags
           | $empty

    opt_1560 ::= comment_clause
           | $empty

    opt_1561 ::= or_replace
           | $empty

    opt_1562 ::= table_type
           | $empty

    opt_1563 ::= if_not_exists
           | $empty

    opt_1564 ::= cluster_by
           | $empty

    opt_1565 ::= copy_grants
           | $empty

    opt_1566 ::= or_replace
           | $empty

    opt_1567 ::= if_not_exists
           | $empty

    opt_1568 ::= tag_allowed_values
           | $empty

    opt_1569 ::= comment_clause
           | $empty

    seq_1570 ::= COMMA session_parameter

    list_1571 ::= $empty
           | list_1571 seq_1570

    seq_1572 ::= COMMA session_params

    list_1573 ::= $empty
           | list_1573 seq_1572

    opt_1574 ::= or_replace
           | $empty

    opt_1575 ::= if_not_exists
           | $empty

    list_1576 ::= $empty
           | list_1576 task_parameters

    opt_1577 ::= comment_clause
           | $empty

    opt_1578 ::= copy_grants
           | $empty

    seq_1579 ::= COMMA object_name

    list_1580 ::= $empty
           | list_1580 seq_1579

    seq_1581 ::= AFTER object_name list_1580

    opt_1582 ::= seq_1581
           | $empty

    seq_1583 ::= WHEN search_condition

    opt_1584 ::= seq_1583
           | $empty

    grp_1585 ::= wh_common_size
           | string

    seq_1586 ::= SEMI task_scripting_declaration

    list_1587 ::= $empty
           | list_1587 seq_1586

    seq_1588 ::= SEMI task_scripting_statement

    list_1589 ::= $empty
           | list_1589 seq_1588

    opt_1590 ::= SEMI
           | $empty

    opt_1591 ::= expr_list
           | $empty

    opt_1592 ::= or_replace
           | $empty

    opt_1593 ::= if_not_exists
           | $empty

    opt_1594 ::= object_properties
           | $empty

    opt_1595 ::= object_params
           | $empty

    opt_1596 ::= session_params
           | $empty

    opt_1597 ::= or_replace
           | $empty

    opt_1598 ::= SECURE
           | $empty

    opt_1599 ::= RECURSIVE
           | $empty

    opt_1600 ::= if_not_exists
           | $empty

    seq_1601 ::= LPAREN column_list_with_comment RPAREN

    opt_1602 ::= seq_1601
           | $empty

    list_1603 ::= $empty
           | list_1603 view_col

    opt_1604 ::= with_row_access_policy
           | $empty

    opt_1605 ::= with_tags
           | $empty

    opt_1606 ::= copy_grants
           | $empty

    opt_1607 ::= comment_clause
           | $empty

    opt_1608 ::= or_replace
           | $empty

    opt_1609 ::= if_not_exists
           | $empty

    opt_1610 ::= WITH
           | $empty

    list_1611 ::= wh_properties
           | list_1611 wh_properties

    seq_1612 ::= opt_1610 list_1611

    opt_1613 ::= seq_1612
           | $empty

    list_1614 ::= $empty
           | list_1614 wh_params

    grp_1615 ::= wh_common_size
           | wh_extra_size
           | ID2

    grp_1616 ::= STANDARD
           | SNOWPARK_OPTIMIZED

    grp_1617 ::= STANDARD
           | ECONOMY

    grp_1618 ::= EQ num
           | NULL_

    opt_1619 ::= with_tags
           | $empty

    grp_1620 ::= SUSPEND
           | SUSPEND_IMMEDIATE
           | NOTIFY

    opt_1621 ::= cascade_restrict
           | $empty

    opt_1622 ::= if_exists
           | $empty

    opt_1623 ::= if_exists
           | $empty

    opt_1624 ::= cascade_restrict
           | $empty

    opt_1625 ::= if_exists
           | $empty

    opt_1626 ::= cascade_restrict
           | $empty

    opt_1627 ::= if_exists
           | $empty

    opt_1628 ::= if_exists
           | $empty

    opt_1629 ::= if_exists
           | $empty

    opt_1630 ::= if_exists
           | $empty

    opt_1631 ::= if_exists
           | $empty

    opt_1632 ::= if_exists
           | $empty

    grp_1633 ::= API
           | NOTIFICATION
           | SECURITY
           | STORAGE

    opt_1634 ::= grp_1633
           | $empty

    opt_1635 ::= if_exists
           | $empty

    opt_1636 ::= if_exists
           | $empty

    opt_1637 ::= if_exists
           | $empty

    opt_1638 ::= if_exists
           | $empty

    opt_1639 ::= if_exists
           | $empty

    opt_1640 ::= if_exists
           | $empty

    opt_1641 ::= if_exists
           | $empty

    opt_1642 ::= if_exists
           | $empty

    opt_1643 ::= if_exists
           | $empty

    opt_1644 ::= cascade_restrict
           | $empty

    opt_1645 ::= if_exists
           | $empty

    opt_1646 ::= if_exists
           | $empty

    opt_1647 ::= if_exists
           | $empty

    opt_1648 ::= cascade_restrict
           | $empty

    opt_1649 ::= if_exists
           | $empty

    opt_1650 ::= FORCE
           | $empty

    opt_1651 ::= if_exists
           | $empty

    opt_1652 ::= if_exists
           | $empty

    opt_1653 ::= if_exists
           | $empty

    opt_1654 ::= if_exists
           | $empty

    opt_1655 ::= cascade_restrict
           | $empty

    opt_1656 ::= if_exists
           | $empty

    opt_1657 ::= if_exists
           | $empty

    opt_1658 ::= if_exists
           | $empty

    opt_1659 ::= if_exists
           | $empty

    opt_1660 ::= if_exists
           | $empty

    opt_1661 ::= data_type_list
           | $empty

    opt_1662 ::= SCHEMA
           | $empty

    seq_1663 ::= id_ DOT

    opt_1664 ::= seq_1663
           | $empty

    grp_1665 ::= ALL
           | NONE

    opt_1666 ::= EXTERNAL
           | $empty

    grp_1668 ::= COLUMNS
           | STAGE

    grp_1667 ::= TYPE EQ grp_1668

    opt_1669 ::= grp_1667
           | $empty

    grp_1670 ::= API
           | NOTIFICATION
           | SECURITY
           | STORAGE

    opt_1671 ::= grp_1670
           | $empty

    grp_1672 ::= STRING_LITERAL
           | LAST_QUERY_ID LPAREN RPAREN

    grp_1674 ::= COLUMNS
           | STAGE

    grp_1673 ::= TYPE EQ grp_1674

    opt_1675 ::= grp_1673
           | $empty

    opt_1676 ::= TERSE
           | $empty

    opt_1677 ::= like_pattern
           | $empty

    opt_1680 ::= id_
           | $empty

    opt_1681 ::= schema_name
           | $empty

    grp_1679 ::= ACCOUNT
           | DATABASE opt_1680
           | SCHEMA opt_1681

    grp_1678 ::= IN grp_1679

    opt_1682 ::= grp_1678
           | $empty

    opt_1683 ::= starts_with
           | $empty

    opt_1684 ::= limit_rows
           | $empty

    opt_1685 ::= like_pattern
           | $empty

    opt_1688 ::= id_
           | $empty

    opt_1689 ::= schema_name
           | $empty

    opt_1690 ::= TABLE
           | $empty

    grp_1687 ::= ACCOUNT
           | DATABASE opt_1688
           | SCHEMA opt_1689
           | TABLE
           | opt_1690 object_name

    grp_1686 ::= IN grp_1687

    opt_1691 ::= grp_1686
           | $empty

    opt_1692 ::= like_pattern
           | $empty

    opt_1695 ::= id_
           | $empty

    opt_1696 ::= schema_name
           | $empty

    opt_1697 ::= TABLE
           | $empty

    opt_1698 ::= VIEW
           | $empty

    grp_1694 ::= ACCOUNT
           | DATABASE opt_1695
           | SCHEMA opt_1696
           | TABLE
           | opt_1697 object_name
           | VIEW
           | opt_1698 object_name

    grp_1693 ::= IN grp_1694

    opt_1699 ::= grp_1693
           | $empty

    opt_1700 ::= like_pattern
           | $empty

    seq_1701 ::= FROM string

    opt_1702 ::= seq_1701
           | $empty

    opt_1703 ::= TERSE
           | $empty

    opt_1704 ::= HISTORY
           | $empty

    opt_1705 ::= like_pattern
           | $empty

    opt_1706 ::= starts_with
           | $empty

    opt_1707 ::= limit_rows
           | $empty

    opt_1708 ::= like_pattern
           | $empty

    grp_1710 ::= SCHEMA schema_name
           | DATABASE id_
           | ACCOUNT

    grp_1709 ::= IN grp_1710

    opt_1711 ::= grp_1709
           | $empty

    seq_1712 ::= STARTS WITH string

    opt_1713 ::= seq_1712
           | $empty

    seq_1714 ::= FROM string

    opt_1715 ::= seq_1714
           | $empty

    seq_1716 ::= LIMIT num opt_1715

    opt_1717 ::= seq_1716
           | $empty

    opt_1718 ::= like_pattern
           | $empty

    opt_1721 ::= id_
           | $empty

    opt_1722 ::= SCHEMA
           | $empty

    opt_1723 ::= schema_name
           | $empty

    grp_1720 ::= ACCOUNT
           | DATABASE opt_1721
           | opt_1722 opt_1723

    grp_1719 ::= IN grp_1720

    opt_1724 ::= grp_1719
           | $empty

    opt_1725 ::= starts_with
           | $empty

    opt_1726 ::= limit_rows
           | $empty

    opt_1727 ::= TERSE
           | $empty

    opt_1728 ::= like_pattern
           | $empty

    opt_1731 ::= id_
           | $empty

    opt_1732 ::= SCHEMA
           | $empty

    opt_1733 ::= schema_name
           | $empty

    grp_1730 ::= ACCOUNT
           | DATABASE opt_1731
           | opt_1732 opt_1733

    grp_1729 ::= IN grp_1730

    opt_1734 ::= grp_1729
           | $empty

    opt_1735 ::= starts_with
           | $empty

    opt_1736 ::= limit_rows
           | $empty

    opt_1737 ::= like_pattern
           | $empty

    opt_1738 ::= TERSE
           | $empty

    opt_1739 ::= like_pattern
           | $empty

    opt_1742 ::= id_
           | $empty

    opt_1743 ::= SCHEMA
           | $empty

    opt_1744 ::= schema_name
           | $empty

    grp_1741 ::= ACCOUNT
           | DATABASE opt_1742
           | opt_1743 opt_1744

    grp_1740 ::= IN grp_1741

    opt_1745 ::= grp_1740
           | $empty

    opt_1746 ::= starts_with
           | $empty

    opt_1747 ::= limit_rows
           | $empty

    seq_1748 ::= IN ACCOUNT id_

    opt_1749 ::= seq_1748
           | $empty

    opt_1750 ::= like_pattern
           | $empty

    grp_1752 ::= ACCOUNT
           | DATABASE
           | DATABASE id_
           | SCHEMA
           | SCHEMA schema_name
           | schema_name

    grp_1751 ::= IN grp_1752

    opt_1753 ::= grp_1751
           | $empty

    opt_1754 ::= like_pattern
           | $empty

    grp_1756 ::= ACCOUNT
           | DATABASE
           | DATABASE id_
           | SCHEMA
           | SCHEMA id_
           | id_

    grp_1755 ::= IN grp_1756

    opt_1757 ::= grp_1755
           | $empty

    opt_1758 ::= like_pattern
           | $empty

    seq_1759 ::= GIT REPOSITORY

    opt_1760 ::= seq_1759
           | $empty

    opt_1761 ::= like_pattern
           | $empty

    opt_1764 ::= id_
           | $empty

    opt_1765 ::= schema_name
           | $empty

    grp_1763 ::= ACCOUNT
           | DATABASE opt_1764
           | SCHEMA opt_1765
           | schema_name

    grp_1762 ::= IN grp_1763

    opt_1766 ::= grp_1762
           | $empty

    opt_1767 ::= like_pattern
           | $empty

    seq_1768 ::= GIT REPOSITORY

    opt_1769 ::= seq_1768
           | $empty

    opt_1770 ::= like_pattern
           | $empty

    opt_1771 ::= show_grants_opts
           | $empty

    grp_1772 ::= ROLE id_
           | USER id_
           | SHARE id_

    opt_1773 ::= like_pattern
           | $empty

    opt_1774 ::= in_obj
           | $empty

    opt_1775 ::= starts_with
           | $empty

    opt_1776 ::= limit_rows
           | $empty

    opt_1777 ::= TERSE
           | $empty

    opt_1778 ::= like_pattern
           | $empty

    opt_1779 ::= in_obj_2
           | $empty

    opt_1780 ::= starts_with
           | $empty

    opt_1781 ::= limit_rows
           | $empty

    grp_1782 ::= API
           | NOTIFICATION
           | SECURITY
           | STORAGE

    opt_1783 ::= grp_1782
           | $empty

    opt_1784 ::= like_pattern
           | $empty

    seq_1785 ::= IN ACCOUNT

    opt_1786 ::= seq_1785
           | $empty

    opt_1787 ::= like_pattern
           | $empty

    opt_1788 ::= like_pattern
           | $empty

    opt_1789 ::= in_obj
           | $empty

    opt_1791 ::= id_
           | $empty

    opt_1792 ::= schema_name
           | $empty

    grp_1790 ::= ACCOUNT
           | DATABASE opt_1791
           | SCHEMA opt_1792
           | schema_name

    opt_1794 ::= id_
           | $empty

    opt_1795 ::= schema_name
           | $empty

    opt_1796 ::= object_name
           | $empty

    grp_1793 ::= ACCOUNT
           | DATABASE opt_1794
           | SCHEMA opt_1795
           | TABLE opt_1796

    opt_1798 ::= id_
           | $empty

    opt_1799 ::= schema_name
           | $empty

    grp_1797 ::= object_name
           | ACCOUNT
           | DATABASE opt_1798
           | SCHEMA opt_1799

    opt_1800 ::= like_pattern
           | $empty

    opt_1801 ::= in_obj
           | $empty

    opt_1802 ::= like_pattern
           | $empty

    opt_1803 ::= in_obj
           | $empty

    opt_1804 ::= like_pattern
           | $empty

    opt_1805 ::= like_pattern
           | $empty

    opt_1808 ::= id_
           | $empty

    grp_1809 ::= WAREHOUSE
           | DATABASE
           | SCHEMA
           | TASK

    opt_1810 ::= id_
           | $empty

    grp_1807 ::= SESSION
           | ACCOUNT
           | USER opt_1808
           | grp_1809 opt_1810
           | TABLE object_name

    grp_1806 ::= in_for grp_1807

    opt_1811 ::= grp_1806
           | $empty

    opt_1812 ::= like_pattern
           | $empty

    opt_1813 ::= in_obj
           | $empty

    opt_1814 ::= TERSE
           | $empty

    opt_1815 ::= in_obj_2
           | $empty

    opt_1816 ::= like_pattern
           | $empty

    opt_1817 ::= in_obj
           | $empty

    opt_1818 ::= like_pattern
           | $empty

    opt_1819 ::= like_pattern
           | $empty

    opt_1820 ::= like_pattern
           | $empty

    seq_1821 ::= WITH PRIMARY account_identifier DOT id_

    opt_1822 ::= seq_1821
           | $empty

    seq_1823 ::= IN ACCOUNT id_

    opt_1824 ::= seq_1823
           | $empty

    opt_1825 ::= like_pattern
           | $empty

    opt_1826 ::= like_pattern
           | $empty

    opt_1827 ::= like_pattern
           | $empty

    opt_1828 ::= in_obj
           | $empty

    opt_1829 ::= TERSE
           | $empty

    opt_1830 ::= HISTORY
           | $empty

    opt_1831 ::= like_pattern
           | $empty

    opt_1834 ::= id_
           | $empty

    grp_1833 ::= ACCOUNT
           | DATABASE opt_1834

    grp_1832 ::= IN grp_1833

    opt_1835 ::= grp_1832
           | $empty

    opt_1836 ::= starts_with
           | $empty

    opt_1837 ::= limit_rows
           | $empty

    opt_1838 ::= like_pattern
           | $empty

    opt_1841 ::= DATABASE
           | $empty

    opt_1842 ::= SCHEMA
           | $empty

    grp_1840 ::= ACCOUNT
           | opt_1841 id_
           | opt_1842 schema_name
           | APPLICATION id_
           | APPLICATION PACKAGE id_

    grp_1839 ::= IN grp_1840

    opt_1843 ::= grp_1839
           | $empty

    opt_1844 ::= TERSE
           | $empty

    opt_1845 ::= like_pattern
           | $empty

    opt_1846 ::= in_obj
           | $empty

    opt_1847 ::= starts_with
           | $empty

    opt_1848 ::= limit_rows
           | $empty

    opt_1849 ::= like_pattern
           | $empty

    opt_1850 ::= in_obj_3
           | $empty

    opt_1851 ::= starts_with
           | $empty

    opt_1852 ::= limit_rows_2
           | $empty

    opt_1853 ::= like_pattern
           | $empty

    opt_1854 ::= starts_with
           | $empty

    opt_1855 ::= limit_rows_2
           | $empty

    opt_1856 ::= like_pattern
           | $empty

    opt_1857 ::= in_obj_3
           | $empty

    opt_1858 ::= starts_with
           | $empty

    opt_1859 ::= limit_rows_2
           | $empty

    opt_1860 ::= like_pattern
           | $empty

    opt_1861 ::= in_obj_3
           | $empty

    opt_1862 ::= starts_with
           | $empty

    opt_1863 ::= limit_rows_2
           | $empty

    opt_1864 ::= like_pattern
           | $empty

    opt_1865 ::= in_obj
           | $empty

    opt_1866 ::= JOB
           | $empty

    seq_1867 ::= EXCLUDE JOBS

    opt_1868 ::= seq_1867
           | $empty

    opt_1869 ::= like_pattern
           | $empty

    grp_1870 ::= in_obj
           | IN COMPUTE POOL id_

    opt_1871 ::= grp_1870
           | $empty

    opt_1872 ::= starts_with
           | $empty

    opt_1873 ::= limit_rows
           | $empty

    opt_1874 ::= like_pattern
           | $empty

    opt_1875 ::= like_pattern
           | $empty

    opt_1876 ::= in_obj
           | $empty

    opt_1877 ::= TERSE
           | $empty

    opt_1878 ::= HYBRID
           | $empty

    opt_1879 ::= like_pattern
           | $empty

    opt_1880 ::= in_obj
           | $empty

    opt_1881 ::= starts_with
           | $empty

    opt_1882 ::= limit_rows
           | $empty

    opt_1883 ::= like_pattern
           | $empty

    grp_1884 ::= IN ACCOUNT
           | DATABASE
           | DATABASE id_
           | SCHEMA
           | SCHEMA schema_name
           | schema_name

    opt_1885 ::= grp_1884
           | $empty

    opt_1886 ::= TERSE
           | $empty

    opt_1887 ::= like_pattern
           | $empty

    opt_1890 ::= id_
           | $empty

    opt_1891 ::= SCHEMA
           | $empty

    opt_1892 ::= schema_name
           | $empty

    grp_1889 ::= ACCOUNT
           | DATABASE opt_1890
           | opt_1891 opt_1892

    grp_1888 ::= IN grp_1889

    opt_1893 ::= grp_1888
           | $empty

    opt_1894 ::= starts_with
           | $empty

    opt_1895 ::= limit_rows
           | $empty

    seq_1896 ::= IN ACCOUNT

    opt_1897 ::= seq_1896
           | $empty

    opt_1898 ::= like_pattern
           | $empty

    opt_1899 ::= in_obj
           | $empty

    opt_1900 ::= TERSE
           | $empty

    opt_1901 ::= like_pattern
           | $empty

    seq_1902 ::= STARTS WITH string

    opt_1903 ::= seq_1902
           | $empty

    seq_1904 ::= LIMIT num

    opt_1905 ::= seq_1904
           | $empty

    seq_1906 ::= FROM string

    opt_1907 ::= seq_1906
           | $empty

    opt_1908 ::= like_pattern
           | $empty

    opt_1909 ::= like_pattern
           | $empty

    seq_1910 ::= LIMIT num

    opt_1911 ::= seq_1910
           | $empty

    opt_1912 ::= TERSE
           | $empty

    opt_1913 ::= like_pattern
           | $empty

    opt_1916 ::= id_
           | $empty

    opt_1917 ::= SCHEMA
           | $empty

    opt_1918 ::= schema_name
           | $empty

    grp_1915 ::= ACCOUNT
           | DATABASE opt_1916
           | opt_1917 opt_1918

    grp_1914 ::= IN grp_1915

    opt_1919 ::= grp_1914
           | $empty

    opt_1920 ::= starts_with
           | $empty

    opt_1921 ::= limit_rows
           | $empty

    opt_1922 ::= like_pattern
           | $empty

    seq_1923 ::= COMMA object_type

    list_1924 ::= $empty
           | list_1924 seq_1923

    seq_1925 ::= COMMA string

    list_1926 ::= $empty
           | list_1926 seq_1925

    grp_1927 ::= IFNULL
           | NVL

    grp_1928 ::= TO_DATE
           | DATE

    grp_1929 ::= SUBSTRING
           | SUBSTR

    grp_1930 ::= DATEADD
           | TIMEADD
           | TIMESTAMPADD

    grp_1931 ::= DATEDIFF
           | TIMEDIFF
           | TIMESTAMPDIFF

    seq_1932 ::= id_ DOT

    opt_1933 ::= seq_1932
           | $empty

    seq_1934 ::= COMMA column_name

    list_1935 ::= $empty
           | list_1935 seq_1934

    opt_1936 ::= as_alias
           | $empty

    opt_1937 ::= as_alias
           | $empty

    seq_1938 ::= COMMA column_name opt_1937

    list_1939 ::= $empty
           | list_1939 seq_1938

    seq_1940 ::= COMMENT string

    opt_1941 ::= seq_1940
           | $empty

    seq_1942 ::= COMMENT string

    opt_1943 ::= seq_1942
           | $empty

    seq_1944 ::= COMMA column_name opt_1943

    list_1945 ::= $empty
           | list_1945 seq_1944

    seq_1946 ::= COMMA expr

    list_1947 ::= $empty
           | list_1947 seq_1946

    opt_1948 ::= asc_desc
           | $empty

    opt_1949 ::= asc_desc
           | $empty

    seq_1950 ::= COMMA expr opt_1949

    list_1951 ::= $empty
           | list_1951 seq_1950

    grp_1952 ::= VALUE
           | expr

    grp_1953 ::= PLUS
           | MINUS

    grp_1954 ::= STAR
           | DIVIDE
           | MODULE

    grp_1955 ::= PLUS
           | MINUS
           | PIPE_PIPE

    list_1956 ::= NOT
           | list_1956 NOT

    grp_1957 ::= null_not_null
           | not_distinct_from expr

    opt_1958 ::= NOT
           | $empty

    grp_1959 ::= subquery
           | expr_list

    opt_1960 ::= NOT
           | $empty

    grp_1961 ::= LIKE
           | ILIKE

    seq_1962 ::= ESCAPE expr

    opt_1963 ::= seq_1962
           | $empty

    opt_1964 ::= NOT
           | $empty

    opt_1965 ::= NOT
           | $empty

    grp_1966 ::= LIKE
           | ILIKE

    seq_1967 ::= COMMA expr

    list_1968 ::= $empty
           | list_1968 seq_1967

    seq_1969 ::= ESCAPE expr

    opt_1970 ::= seq_1969
           | $empty

    opt_1971 ::= data_type
           | $empty

    opt_1972 ::= data_type
           | $empty

    opt_1973 ::= data_type
           | $empty

    seq_1974 ::= COMMA id_ opt_1973

    list_1975 ::= $empty
           | list_1975 seq_1974

    grp_1976 ::= TRIM
           | LTRIM
           | RTRIM

    seq_1977 ::= COMMA string

    list_1978 ::= $empty
           | list_1978 seq_1977

    grp_1979 ::= TIMESTAMP
           | DATE
           | TIME
           | INTERVAL

    seq_1980 ::= COMMA kv_pair

    list_1981 ::= $empty
           | list_1981 seq_1980

    seq_1982 ::= COMMA value

    list_1983 ::= $empty
           | list_1983 seq_1982

    grp_1984 ::= INT
           | INTEGER
           | SMALLINT
           | TINYINT
           | BYTEINT
           | BIGINT

    grp_1985 ::= NUMBER
           | NUMERIC
           | DECIMAL_

    seq_1986 ::= COMMA num

    opt_1987 ::= seq_1986
           | $empty

    seq_1988 ::= LPAREN num opt_1987 RPAREN

    opt_1989 ::= seq_1988
           | $empty

    grp_1990 ::= FLOAT_
           | FLOAT4
           | FLOAT8
           | DOUBLE
           | DOUBLE_PRECISION
           | REAL_

    opt_1991 ::= data_type_size
           | $empty

    opt_1992 ::= data_type_size
           | $empty

    opt_1993 ::= data_type_size
           | $empty

    opt_1994 ::= data_type_size
           | $empty

    opt_1995 ::= data_type_size
           | $empty

    opt_1996 ::= data_type_size
           | $empty

    grp_1997 ::= CHAR
           | NCHAR
           | CHARACTER

    opt_1998 ::= data_type_size
           | $empty

    grp_1999 ::= CHAR_VARYING
           | NCHAR_VARYING
           | NVARCHAR2
           | NVARCHAR
           | STRING_
           | TEXT
           | VARCHAR

    opt_2000 ::= data_type_size
           | $empty

    grp_2001 ::= BINARY
           | VARBINARY

    opt_2002 ::= data_type_size
           | $empty

    seq_2003 ::= LPAREN data_type RPAREN

    opt_2004 ::= seq_2003
           | $empty

    seq_2005 ::= DOT id_

    list_2006 ::= $empty
           | list_2006 seq_2005

    opt_2007 ::= order_by_expr
           | $empty

    seq_2008 ::= COMMA expr

    list_2009 ::= $empty
           | list_2009 seq_2008

    seq_2010 ::= COMMA expr

    list_2011 ::= $empty
           | list_2011 seq_2010

    opt_2012 ::= expr_list
           | $empty

    grp_2013 ::= TO_DATE
           | DATE

    grp_2014 ::= LENGTH
           | LEN

    seq_2015 ::= COMMA param_assoc

    list_2016 ::= $empty
           | list_2016 seq_2015

    grp_2017 ::= IGNORE
           | RESPECT

    grp_2018 ::= RANK
           | DENSE_RANK
           | ROW_NUMBER

    grp_2019 ::= LEAD
           | LAG

    seq_2020 ::= COMMA expr

    opt_2021 ::= seq_2020
           | $empty

    seq_2022 ::= COMMA expr opt_2021

    opt_2023 ::= seq_2022
           | $empty

    opt_2024 ::= ignore_or_repect_nulls
           | $empty

    grp_2025 ::= FIRST_VALUE
           | LAST_VALUE

    opt_2026 ::= ignore_or_repect_nulls
           | $empty

    opt_2027 ::= DISTINCT
           | $empty

    grp_2028 ::= LISTAGG
           | ARRAY_AGG

    opt_2029 ::= DISTINCT
           | $empty

    seq_2030 ::= COMMA string

    opt_2031 ::= seq_2030
           | $empty

    seq_2032 ::= WITHIN GROUP LPAREN order_by_clause RPAREN

    opt_2033 ::= seq_2032
           | $empty

    opt_2034 ::= sign
           | $empty

    opt_2035 ::= sign
           | $empty

    grp_2036 ::= NUMBER

    opt_2037 ::= id_
           | $empty

    opt_2038 ::= id_
           | $empty

    opt_2039 ::= id_
           | $empty

    opt_2040 ::= id_
           | $empty

    opt_2041 ::= id_
           | $empty

    opt_2042 ::= id_
           | $empty

    list_2043 ::= switch_section
           | list_2043 switch_section

    seq_2044 ::= ELSE expr

    opt_2045 ::= seq_2044
           | $empty

    list_2046 ::= switch_search_condition_section
           | list_2046 switch_search_condition_section

    seq_2047 ::= ELSE expr

    opt_2048 ::= seq_2047
           | $empty

    opt_2049 ::= with_expression
           | $empty

    list_2050 ::= $empty
           | list_2050 set_operators

    opt_2051 ::= RECURSIVE
           | $empty

    seq_2052 ::= COMMA common_table_expression

    list_2053 ::= $empty
           | list_2053 seq_2052

    seq_2054 ::= LPAREN column_list RPAREN

    opt_2055 ::= seq_2054
           | $empty

    opt_2056 ::= limit_clause
           | $empty

    opt_2058 ::= ALL
           | $empty

    opt_2059 ::= by_name
           | $empty

    grp_2057 ::= UNION opt_2058 opt_2059
           | EXCEPT
           | MINUS_
           | INTERSECT

    opt_2060 ::= into_clause
           | $empty

    opt_2061 ::= from_clause
           | $empty

    opt_2062 ::= where_clause
           | $empty

    opt_2064 ::= having_clause
           | $empty

    grp_2063 ::= group_by_clause opt_2064
           | having_clause

    opt_2065 ::= grp_2063
           | $empty

    opt_2066 ::= qualify_clause
           | $empty

    opt_2067 ::= order_by_clause
           | $empty

    opt_2068 ::= all_distinct
           | $empty

    opt_2069 ::= all_distinct
           | $empty

    opt_2070 ::= top_clause
           | $empty

    seq_2071 ::= COMMA select_list_elem

    list_2072 ::= $empty
           | list_2072 seq_2071

    opt_2073 ::= COMMA
           | $empty

    opt_2074 ::= as_alias
           | $empty

    opt_2075 ::= exclude_clause
           | $empty

    opt_2076 ::= as_alias
           | $empty

    opt_2077 ::= object_name_or_alias
           | $empty

    opt_2078 ::= object_name_or_alias
           | $empty

    opt_2079 ::= object_name_or_alias
           | $empty

    grp_2080 ::= column_name
           | column_list_in_parentheses

    opt_2081 ::= AS
           | $empty

    seq_2082 ::= COMMA var

    list_2083 ::= $empty
           | list_2083 seq_2082

    seq_2084 ::= COMMA table_source

    list_2085 ::= $empty
           | list_2085 seq_2084

    list_2086 ::= $empty
           | list_2086 join_clause

    list_2087 ::= $empty
           | list_2087 join_clause

    opt_2088 ::= at_before
           | $empty

    opt_2089 ::= changes
           | $empty

    opt_2090 ::= match_recognize
           | $empty

    opt_2091 ::= pivot_unpivot
           | $empty

    opt_2092 ::= as_alias
           | $empty

    opt_2093 ::= column_list_in_parentheses
           | $empty

    opt_2094 ::= sample
           | $empty

    opt_2095 ::= prior_list
           | $empty

    opt_2096 ::= pivot_unpivot
           | $empty

    opt_2097 ::= as_alias
           | $empty

    opt_2098 ::= sample
           | $empty

    opt_2099 ::= sample
           | $empty

    opt_2100 ::= LATERAL
           | $empty

    opt_2101 ::= pivot_unpivot
           | $empty

    opt_2102 ::= as_alias
           | $empty

    opt_2103 ::= column_list_in_parentheses
           | $empty

    grp_2104 ::= flatten_table
           | splited_table

    opt_2105 ::= as_alias
           | $empty

    grp_2106 ::= ARRAY_Q
           | OBJECT_Q
           | BOTH_Q

    seq_2107 ::= INPUT ASSOC

    opt_2108 ::= seq_2107
           | $empty

    seq_2109 ::= COMMA flatten_table_option

    list_2110 ::= $empty
           | list_2110 seq_2109

    seq_2111 ::= COMMA prior_item

    list_2112 ::= $empty
           | list_2112 seq_2111

    opt_2113 ::= PRIOR
           | $empty

    opt_2114 ::= PRIOR
           | $empty

    grp_2115 ::= LEFT
           | RIGHT
           | FULL

    opt_2116 ::= OUTER
           | $empty

    opt_2117 ::= join_type
           | $empty

    opt_2118 ::= DIRECTED
           | $empty

    opt_2119 ::= on_using_clause
           | $empty

    opt_2120 ::= join_type
           | $empty

    opt_2121 ::= DIRECTED
           | $empty

    opt_2122 ::= DIRECTED
           | $empty

    opt_2123 ::= on_using_clause
           | $empty

    grp_2124 ::= TIMESTAMP ASSOC expr
           | OFFSET ASSOC expr
           | STATEMENT ASSOC string
           | STREAM ASSOC string

    grp_2125 ::= TIMESTAMP ASSOC expr
           | OFFSET ASSOC expr
           | STATEMENT ASSOC string

    opt_2126 ::= end
           | $empty

    opt_2127 ::= AS
           | $empty

    opt_2128 ::= AS
           | $empty

    seq_2129 ::= COMMA expr opt_2128 alias

    list_2130 ::= $empty
           | list_2130 seq_2129

    grp_2131 ::= ONE ROW PER MATCH
           | ALL ROWS PER MATCH

    opt_2132 ::= match_opts
           | $empty

    opt_2134 ::= first_last
           | $empty

    grp_2133 ::= PAST LAST ROW
           | TO NEXT ROW
           | TO opt_2134 symbol

    seq_2135 ::= COMMA symbol AS expr

    list_2136 ::= $empty
           | list_2136 seq_2135

    opt_2137 ::= partition_by
           | $empty

    opt_2138 ::= order_by_clause
           | $empty

    opt_2139 ::= measures
           | $empty

    opt_2140 ::= row_match
           | $empty

    opt_2141 ::= after_match
           | $empty

    opt_2142 ::= pattern
           | $empty

    opt_2143 ::= define
           | $empty

    opt_2144 ::= default_on_null
           | $empty

    opt_2145 ::= column_alias_list_in_brackets
           | $empty

    seq_2146 ::= as_alias opt_2145

    opt_2147 ::= seq_2146
           | $empty

    seq_2148 ::= include_exclude NULLS

    opt_2149 ::= seq_2148
           | $empty

    seq_2150 ::= COMMA literal

    list_2151 ::= $empty
           | list_2151 seq_2150

    opt_2152 ::= order_by_clause
           | $empty

    seq_2153 ::= COMMA id_

    list_2154 ::= $empty
           | list_2154 seq_2153

    opt_2155 ::= column_alias_list_in_brackets
           | $empty

    seq_2156 ::= as_alias opt_2155

    opt_2157 ::= seq_2156
           | $empty

    opt_2158 ::= column_alias_list_in_brackets
           | $empty

    seq_2159 ::= as_alias opt_2158

    opt_2160 ::= seq_2159
           | $empty

    seq_2161 ::= COMMA expr_list_in_parentheses

    list_2162 ::= $empty
           | list_2162 seq_2161

    grp_2163 ::= BERNOULLI
           | ROW

    grp_2164 ::= SYSTEM
           | BLOCK

    grp_2165 ::= REPEATABLE
           | SEED

    opt_2166 ::= ROWS
           | $empty

    opt_2167 ::= repeatable_seed
           | $empty

    grp_2168 ::= SAMPLE
           | TABLESAMPLE

    opt_2169 ::= sample_method
           | $empty

    list_2170 ::= $empty
           | list_2170 NOT

    grp_2171 ::= predicate
           | LPAREN search_condition RPAREN

    opt_2172 ::= NOT
           | $empty

    opt_2173 ::= NOT
           | $empty

    grp_2174 ::= ALL
           | SOME
           | ANY

    opt_2175 ::= NOT
           | $empty

    opt_2176 ::= NOT
           | $empty

    grp_2177 ::= subquery
           | expr_list

    opt_2178 ::= NOT
           | $empty

    grp_2179 ::= LIKE
           | ILIKE

    seq_2180 ::= ESCAPE expr

    opt_2181 ::= seq_2180
           | $empty

    opt_2182 ::= NOT
           | $empty

    opt_2183 ::= NOT
           | $empty

    grp_2184 ::= LIKE
           | ILIKE

    seq_2185 ::= COMMA expr

    list_2186 ::= $empty
           | list_2186 seq_2185

    seq_2187 ::= ESCAPE expr

    opt_2188 ::= seq_2187
           | $empty

    seq_2189 ::= COMMA group_by_elem

    list_2190 ::= $empty
           | list_2190 seq_2189

    opt_2191 ::= having_clause
           | $empty

    grp_2192 ::= CUBE
           | GROUPING SETS
           | ROLLUP

    grp_2193 ::= id_
           | num
           | expr

    grp_2194 ::= ASC
           | DESC

    opt_2195 ::= grp_2194
           | $empty

    grp_2197 ::= FIRST
           | LAST

    grp_2196 ::= NULLS grp_2197

    opt_2198 ::= grp_2196
           | $empty

    seq_2199 ::= COMMA order_item

    list_2200 ::= $empty
           | list_2200 seq_2199

    seq_2201 ::= OFFSET num

    opt_2202 ::= seq_2201
           | $empty

    seq_2203 ::= OFFSET num

    opt_2204 ::= seq_2203
           | $empty

    opt_2205 ::= row_rows
           | $empty

    opt_2206 ::= first_next
           | $empty

    opt_2207 ::= row_rows
           | $empty

    opt_2208 ::= ONLY
           | $empty

    seq_2209 ::= COMMA ROUNDING_MODE ASSOC round_mode

    list_2210 ::= $empty
           | list_2210 seq_2209

    seq_2211 ::= COMMA round_mode

    list_2212 ::= $empty
           | list_2212 seq_2211

%End
