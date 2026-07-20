-- AUTO-GENERATED from antlr/grammars-v4 sql/tsql by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=SqlTsqlParser
%options package=lpg.grammars.sql.tsql
%options template=dtParserTemplateF.gi
%options import_terminals=SqlTsqlLexer.gi
%options automatic_ast=none
%options conflicts

%Define
    $ast_class /.Object./
    $ast_type /.Object./
%End


%Eof
    EOF_TOKEN
%End

%Start
    HarnessStart
%End

%Rules
    HarnessStart ::= sql_clauses /.
                    setResult("ok");
                ./

    tsql_file ::= list_1
           | execute_body_batch list_2

    batch ::= go_statement
           | opt_3 grp_4 list_6
           | batch_level_statement list_7

    batch_level_statement ::= create_or_alter_function
           | create_or_alter_procedure
           | create_or_alter_trigger
           | create_view

    sql_clauses ::= dml_clause opt_8
           | cfl_statement opt_9
           | another_statement opt_10
           | ddl_clause opt_11
           | dbcc_clause opt_12
           | backup_statement opt_13
           | SEMI

    dml_clause ::= merge_statement
           | delete_statement
           | insert_statement
           | select_statement_standalone
           | update_statement

    ddl_clause ::= alter_application_role
           | alter_assembly
           | alter_asymmetric_key
           | alter_authorization
           | alter_authorization_for_azure_dw
           | alter_authorization_for_parallel_dw
           | alter_authorization_for_sql_database
           | alter_availability_group
           | alter_certificate
           | alter_column_encryption_key
           | alter_credential
           | alter_cryptographic_provider
           | alter_database
           | alter_database_audit_specification
           | alter_db_role
           | alter_endpoint
           | alter_external_data_source
           | alter_external_library
           | alter_external_resource_pool
           | alter_fulltext_catalog
           | alter_fulltext_stoplist
           | alter_index
           | alter_login_azure_sql
           | alter_login_azure_sql_dw_and_pdw
           | alter_login_sql_server
           | alter_master_key_azure_sql
           | alter_master_key_sql_server
           | alter_message_type
           | alter_partition_function
           | alter_partition_scheme
           | alter_remote_service_binding
           | alter_resource_governor
           | alter_schema_azure_sql_dw_and_pdw
           | alter_schema_sql
           | alter_sequence
           | alter_server_audit
           | alter_server_audit_specification
           | alter_server_configuration
           | alter_server_role
           | alter_server_role_pdw
           | alter_service
           | alter_service_master_key
           | alter_symmetric_key
           | alter_table
           | alter_user
           | alter_user_azure_sql
           | alter_workload_group
           | alter_xml_schema_collection
           | create_application_role
           | create_assembly
           | create_asymmetric_key
           | create_column_encryption_key
           | create_column_master_key
           | create_columnstore_index
           | create_credential
           | create_cryptographic_provider
           | create_database
           | create_database_audit_specification
           | create_db_role
           | create_endpoint
           | create_event_notification
           | create_external_library
           | create_external_resource_pool
           | create_fulltext_catalog
           | create_fulltext_stoplist
           | create_index
           | create_login_azure_sql
           | create_login_pdw
           | create_login_sql_server
           | create_master_key_azure_sql
           | create_master_key_sql_server
           | create_nonclustered_columnstore_index
           | create_or_alter_broker_priority
           | create_or_alter_event_session
           | create_partition_function
           | create_partition_scheme
           | create_remote_service_binding
           | create_resource_pool
           | create_route
           | create_rule
           | create_schema
           | create_schema_azure_sql_dw_and_pdw
           | create_search_property_list
           | create_security_policy
           | create_sequence
           | create_server_audit
           | create_server_audit_specification
           | create_server_role
           | create_service
           | create_statistics
           | create_synonym
           | create_table
           | create_type
           | create_user
           | create_user_azure_sql_dw
           | create_workload_group
           | create_xml_index
           | create_xml_schema_collection
           | disable_trigger
           | drop_aggregate
           | drop_application_role
           | drop_assembly
           | drop_asymmetric_key
           | drop_availability_group
           | drop_broker_priority
           | drop_certificate
           | drop_column_encryption_key
           | drop_column_master_key
           | drop_contract
           | drop_credential
           | drop_cryptograhic_provider
           | drop_database
           | drop_database_audit_specification
           | drop_database_encryption_key
           | drop_database_scoped_credential
           | drop_db_role
           | drop_default
           | drop_endpoint
           | drop_event_notifications
           | drop_event_session
           | drop_external_data_source
           | drop_external_file_format
           | drop_external_library
           | drop_external_resource_pool
           | drop_external_table
           | drop_fulltext_catalog
           | drop_fulltext_index
           | drop_fulltext_stoplist
           | drop_function
           | drop_index
           | drop_login
           | drop_master_key
           | drop_message_type
           | drop_partition_function
           | drop_partition_scheme
           | drop_procedure
           | drop_queue
           | drop_remote_service_binding
           | drop_resource_pool
           | drop_route
           | drop_rule
           | drop_schema
           | drop_search_property_list
           | drop_security_policy
           | drop_sequence
           | drop_server_audit
           | drop_server_audit_specification
           | drop_server_role
           | drop_service
           | drop_signature
           | drop_statistics
           | drop_statistics_name_azure_dw_and_pdw
           | drop_symmetric_key
           | drop_synonym
           | drop_table
           | drop_trigger
           | drop_type
           | drop_user
           | drop_view
           | drop_workload_group
           | drop_xml_schema_collection
           | enable_trigger
           | lock_table
           | truncate_table
           | update_statistics

    backup_statement ::= backup_database
           | backup_log
           | backup_certificate
           | backup_master_key
           | backup_service_master_key

    cfl_statement ::= block_statement
           | break_statement
           | continue_statement
           | goto_statement
           | if_statement
           | print_statement
           | raiseerror_statement
           | return_statement
           | throw_statement
           | try_catch_statement
           | waitfor_statement
           | while_statement

    block_statement ::= BEGIN opt_14 list_15 END opt_16

    break_statement ::= BREAK opt_17

    continue_statement ::= CONTINUE opt_18

    goto_statement ::= GOTO id_ opt_19
           | id_ COLON opt_20

    return_statement ::= RETURN opt_21 opt_22

    if_statement ::= IF search_condition sql_clauses opt_24 opt_25

    throw_statement ::= THROW opt_27 opt_28

    throw_error_number ::= DECIMAL
           | LOCAL_ID

    throw_message ::= STRING
           | LOCAL_ID

    throw_state ::= DECIMAL
           | LOCAL_ID

    try_catch_statement ::= BEGIN TRY opt_29 list_30 END TRY opt_31 BEGIN CATCH opt_32 list_33 END CATCH opt_34

    waitfor_statement ::= WAITFOR opt_35 opt_36 opt_39 opt_40 opt_41

    while_statement ::= WHILE search_condition grp_42

    print_statement ::= PRINT grp_45 list_47 opt_48

    raiseerror_statement ::= RAISERROR LPAREN grp_49 COMMA constant_LOCAL_ID COMMA constant_LOCAL_ID list_52 RPAREN opt_55 opt_56
           | RAISERROR DECIMAL grp_57 list_60

    empty_statement ::= SEMI

    another_statement ::= alter_queue
           | checkpoint_statement
           | conversation_statement
           | create_contract
           | create_queue
           | cursor_statement
           | declare_statement
           | execute_statement
           | kill_statement
           | message_statement
           | reconfigure_statement
           | security_statement
           | set_statement
           | setuser_statement
           | shutdown_statement
           | transaction_statement
           | use_statement

    alter_application_role ::= ALTER APPLICATION ROLE id_ WITH opt_63 opt_66 opt_69

    alter_xml_schema_collection ::= ALTER XML SCHEMA COLLECTION opt_71 id_ ADD STRING

    create_application_role ::= CREATE APPLICATION ROLE id_ WITH opt_74 opt_77

    drop_aggregate ::= DROP AGGREGATE opt_79 opt_81 id_

    drop_application_role ::= DROP APPLICATION ROLE id_

    alter_assembly ::= alter_assembly_start id_ alter_assembly_clause

    alter_assembly_start ::= ALTER ASSEMBLY

    alter_assembly_clause ::= opt_82 opt_83 opt_84 opt_85

    alter_assembly_from_clause ::= alter_assembly_from_clause_start grp_86

    alter_assembly_from_clause_start ::= FROM

    alter_assembly_drop_clause ::= alter_assembly_drop alter_assembly_drop_multiple_files

    alter_assembly_drop_multiple_files ::= ALL
           | multiple_local_files

    alter_assembly_drop ::= DROP

    alter_assembly_add_clause ::= alter_asssembly_add_clause_start alter_assembly_client_file_clause

    alter_asssembly_add_clause_start ::= ADD FILE FROM

    alter_assembly_client_file_clause ::= alter_assembly_file_name opt_88

    alter_assembly_file_name ::= STRING

    alter_assembly_file_bits ::= alter_assembly_as id_

    alter_assembly_as ::= AS

    alter_assembly_with_clause ::= alter_assembly_with assembly_option

    alter_assembly_with ::= WITH

    client_assembly_specifier ::= network_file_share
           | local_file
           | STRING

    assembly_option ::= PERMISSION_SET EQUAL grp_89
           | VISIBILITY EQUAL on_off
           | UNCHECKED DATA
           | assembly_option COMMA

    network_file_share ::= network_file_start network_computer file_path

    network_computer ::= id_

    network_file_start ::= DOUBLE_BACK_SLASH

    file_path ::= file_directory_path_separator file_path
           | id_

    file_directory_path_separator ::= BACKSLASH

    local_file ::= local_drive file_path

    local_drive ::= DISK_DRIVE

    multiple_local_files ::= multiple_local_file_start local_file SINGLE_QUOTE COMMA
           | local_file

    multiple_local_file_start ::= SINGLE_QUOTE

    create_assembly ::= CREATE ASSEMBLY id_ opt_91 FROM list_95 opt_98

    drop_assembly ::= DROP ASSEMBLY opt_100 list_103 opt_105

    alter_asymmetric_key ::= alter_asymmetric_key_start id_ grp_106

    alter_asymmetric_key_start ::= ALTER ASYMMETRIC KEY

    asymmetric_key_option ::= asymmetric_key_option_start asymmetric_key_password_change_option opt_108 RR_BRACKET

    asymmetric_key_option_start ::= WITH PRIVATE KEY LR_BRACKET

    asymmetric_key_password_change_option ::= DECRYPTION BY PASSWORD EQUAL STRING
           | ENCRYPTION BY PASSWORD EQUAL STRING

    create_asymmetric_key ::= CREATE ASYMMETRIC KEY id_ opt_110 opt_113 opt_118 opt_120

    drop_asymmetric_key ::= DROP ASYMMETRIC KEY id_ opt_122

    alter_authorization ::= alter_authorization_start opt_124 entity_name entity_to authorization_grantee

    authorization_grantee ::= id_
           | SCHEMA OWNER

    entity_to ::= TO

    colon_colon ::= DOUBLE_COLON

    alter_authorization_start ::= ALTER AUTHORIZATION ON

    alter_authorization_for_sql_database ::= alter_authorization_start opt_126 entity_name entity_to authorization_grantee

    alter_authorization_for_azure_dw ::= alter_authorization_start opt_128 entity_name_for_azure_dw entity_to authorization_grantee

    alter_authorization_for_parallel_dw ::= alter_authorization_start opt_130 entity_name_for_parallel_dw entity_to authorization_grantee

    class_type ::= OBJECT
           | ASSEMBLY
           | ASYMMETRIC KEY
           | AVAILABILITY GROUP
           | CERTIFICATE
           | CONTRACT
           | TYPE
           | DATABASE
           | ENDPOINT
           | FULLTEXT CATALOG
           | FULLTEXT STOPLIST
           | MESSAGE TYPE
           | REMOTE SERVICE BINDING
           | ROLE
           | ROUTE
           | SCHEMA
           | SEARCH PROPERTY LIST
           | SERVER ROLE
           | SERVICE
           | SYMMETRIC KEY
           | XML SCHEMA COLLECTION

    class_type_for_sql_database ::= OBJECT
           | ASSEMBLY
           | ASYMMETRIC KEY
           | CERTIFICATE
           | TYPE
           | DATABASE
           | FULLTEXT CATALOG
           | FULLTEXT STOPLIST
           | ROLE
           | SCHEMA
           | SEARCH PROPERTY LIST
           | SYMMETRIC KEY
           | XML SCHEMA COLLECTION

    class_type_for_azure_dw ::= SCHEMA
           | OBJECT

    class_type_for_parallel_dw ::= DATABASE
           | SCHEMA
           | OBJECT

    class_type_for_grant ::= APPLICATION ROLE
           | ASSEMBLY
           | ASYMMETRIC KEY
           | AUDIT
           | AVAILABILITY GROUP
           | BROKER PRIORITY
           | CERTIFICATE
           | COLUMN grp_131 KEY
           | CONTRACT
           | CREDENTIAL
           | CRYPTOGRAPHIC PROVIDER
           | DATABASE opt_134
           | ENDPOINT
           | EVENT SESSION
           | NOTIFICATION grp_135
           | EXTERNAL grp_136
           | LOGIN
           | MASTER KEY
           | MESSAGE TYPE
           | OBJECT
           | PARTITION grp_137
           | REMOTE SERVICE BINDING
           | RESOURCE GOVERNOR
           | ROLE
           | ROUTE
           | SCHEMA
           | SEARCH PROPERTY LIST
           | SERVER opt_141
           | SERVICE
           | SQL LOGIN
           | SYMMETRIC KEY
           | TRIGGER grp_142
           | TYPE
           | USER
           | XML SCHEMA COLLECTION

    drop_availability_group ::= DROP AVAILABILITY GROUP id_

    alter_availability_group ::= alter_availability_group_start alter_availability_group_options

    alter_availability_group_start ::= ALTER AVAILABILITY GROUP id_

    alter_availability_group_options ::= SET LR_BRACKET grp_143
           | ADD DATABASE id_
           | REMOVE DATABASE id_
           | ADD REPLICA ON STRING grp_147 RR_BRACKET
           | SECONDARY_ROLE LR_BRACKET grp_173
           | PRIMARY_ROLE LR_BRACKET grp_176
           | MODIFY REPLICA ON STRING grp_183 RR_BRACKET
           | REMOVE REPLICA ON STRING
           | JOIN
           | JOIN AVAILABILITY GROUP ON list_203
           | MODIFY AVAILABILITY GROUP ON list_218
           | GRANT CREATE ANY DATABASE
           | DENY CREATE ANY DATABASE
           | FAILOVER
           | FORCE_FAILOVER_ALLOW_DATA_LOSS
           | ADD LISTENER STRING LR_BRACKET grp_219 RR_BRACKET
           | MODIFY LISTENER grp_228
           | RESTART LISTENER STRING
           | REMOVE LISTENER STRING
           | OFFLINE
           | WITH LR_BRACKET DTC_SUPPORT EQUAL PER_DB RR_BRACKET

    ip_v4_failover ::= STRING

    ip_v6_failover ::= STRING

    create_or_alter_broker_priority ::= grp_230 BROKER PRIORITY id_ FOR CONVERSATION SET LR_BRACKET opt_234 opt_239 opt_243 opt_246 RR_BRACKET

    drop_broker_priority ::= DROP BROKER PRIORITY id_

    alter_certificate ::= ALTER CERTIFICATE id_ grp_247

    alter_column_encryption_key ::= ALTER COLUMN ENCRYPTION KEY id_ grp_254 VALUE LR_BRACKET COLUMN_MASTER_KEY EQUAL id_ opt_256 RR_BRACKET

    create_column_encryption_key ::= CREATE COLUMN ENCRYPTION KEY id_ WITH VALUES list_260

    drop_certificate ::= DROP CERTIFICATE id_

    drop_column_encryption_key ::= DROP COLUMN ENCRYPTION KEY id_

    drop_column_master_key ::= DROP COLUMN MASTER KEY id_

    drop_contract ::= DROP CONTRACT id_

    drop_credential ::= DROP CREDENTIAL id_

    drop_cryptograhic_provider ::= DROP CRYPTOGRAPHIC PROVIDER id_

    drop_database ::= DROP DATABASE opt_262 list_265

    drop_database_audit_specification ::= DROP DATABASE AUDIT SPECIFICATION id_

    drop_database_encryption_key ::= DROP DATABASE ENCRYPTION KEY

    drop_database_scoped_credential ::= DROP DATABASE SCOPED CREDENTIAL id_

    drop_default ::= DROP DEFAULT opt_267 seq_271

    drop_endpoint ::= DROP ENDPOINT id_

    drop_external_data_source ::= DROP EXTERNAL DATA SOURCE id_

    drop_external_file_format ::= DROP EXTERNAL FILE FORMAT id_

    drop_external_library ::= DROP EXTERNAL LIBRARY id_ opt_273

    drop_external_resource_pool ::= DROP EXTERNAL RESOURCE POOL id_

    drop_external_table ::= DROP EXTERNAL TABLE opt_275 opt_277 id_

    drop_event_notifications ::= DROP EVENT NOTIFICATION list_280 ON grp_281

    drop_event_session ::= DROP EVENT SESSION id_ ON SERVER

    drop_fulltext_catalog ::= DROP FULLTEXT CATALOG id_

    drop_fulltext_index ::= DROP FULLTEXT INDEX ON opt_283 id_

    drop_fulltext_stoplist ::= DROP FULLTEXT STOPLIST id_

    drop_login ::= DROP LOGIN id_

    drop_master_key ::= DROP MASTER KEY

    drop_message_type ::= DROP MESSAGE TYPE id_

    drop_partition_function ::= DROP PARTITION FUNCTION id_

    drop_partition_scheme ::= DROP PARTITION SCHEME id_

    drop_queue ::= DROP QUEUE opt_285 opt_287 id_

    drop_remote_service_binding ::= DROP REMOTE SERVICE BINDING id_

    drop_resource_pool ::= DROP RESOURCE POOL id_

    drop_db_role ::= DROP ROLE opt_289 id_

    drop_route ::= DROP ROUTE id_

    drop_rule ::= DROP RULE opt_291 opt_296

    drop_schema ::= DROP SCHEMA opt_298 id_

    drop_search_property_list ::= DROP SEARCH PROPERTY LIST id_

    drop_security_policy ::= DROP SECURITY POLICY opt_300 opt_302 id_

    drop_sequence ::= DROP SEQUENCE opt_304 opt_311

    drop_server_audit ::= DROP SERVER AUDIT id_

    drop_server_audit_specification ::= DROP SERVER AUDIT SPECIFICATION id_

    drop_server_role ::= DROP SERVER ROLE id_

    drop_service ::= DROP SERVICE id_

    drop_signature ::= DROP opt_312 SIGNATURE FROM opt_314 id_ BY list_318

    drop_statistics_name_azure_dw_and_pdw ::= DROP STATISTICS opt_320 id_ DOT id_

    drop_symmetric_key ::= DROP SYMMETRIC KEY id_ opt_322

    drop_synonym ::= DROP SYNONYM opt_324 opt_326 id_

    drop_user ::= DROP USER opt_328 id_

    drop_workload_group ::= DROP WORKLOAD GROUP id_

    drop_xml_schema_collection ::= DROP XML SCHEMA COLLECTION opt_330 id_

    disable_trigger ::= DISABLE TRIGGER grp_331 ON grp_337

    enable_trigger ::= ENABLE TRIGGER grp_340 ON grp_346

    lock_table ::= LOCK TABLE table_name IN grp_349 MODE opt_351 opt_352

    truncate_table ::= TRUNCATE TABLE table_name opt_358

    create_column_master_key ::= CREATE COLUMN MASTER KEY id_ WITH LR_BRACKET KEY_STORE_PROVIDER_NAME EQUAL STRING COMMA KEY_PATH EQUAL STRING RR_BRACKET

    alter_credential ::= ALTER CREDENTIAL id_ WITH IDENTITY EQUAL STRING opt_360

    create_credential ::= CREATE CREDENTIAL id_ WITH IDENTITY EQUAL STRING opt_362 opt_364

    alter_cryptographic_provider ::= ALTER CRYPTOGRAPHIC PROVIDER id_ opt_366 opt_368

    create_cryptographic_provider ::= CREATE CRYPTOGRAPHIC PROVIDER id_ FROM FILE EQUAL STRING

    create_endpoint ::= CREATE ENDPOINT id_ opt_370 opt_373 AS TCP LR_BRACKET endpoint_listener_clause RR_BRACKET grp_374

    endpoint_encryption_alogorithm_clause ::= ENCRYPTION EQUAL grp_390 opt_395

    endpoint_authentication_clause ::= AUTHENTICATION EQUAL grp_396

    endpoint_listener_clause ::= LISTENER_PORT EQUAL DECIMAL opt_407

    create_event_notification ::= CREATE EVENT NOTIFICATION id_ ON grp_408 opt_410 FOR list_413 TO SERVICE STRING COMMA STRING

    create_or_alter_event_session ::= grp_414 EVENT SESSION id_ ON SERVER list_437 list_442 list_455 list_459 opt_489 opt_492

    event_session_predicate_expression ::= list_499

    event_session_predicate_factor ::= event_session_predicate_leaf
           | LR_BRACKET event_session_predicate_expression RR_BRACKET

    event_session_predicate_leaf ::= grp_500
           | opt_511 id_ DOT id_ LR_BRACKET grp_512 RR_BRACKET

    alter_external_data_source ::= ALTER EXTERNAL DATA SOURCE id_ SET list_520
           | ALTER EXTERNAL DATA SOURCE id_ WITH LR_BRACKET TYPE EQUAL BLOB_STORAGE COMMA LOCATION EQUAL STRING opt_522 RR_BRACKET

    alter_external_library ::= ALTER EXTERNAL LIBRARY id_ opt_524 grp_525 grp_526

    create_external_library ::= CREATE EXTERNAL LIBRARY id_ opt_536 FROM grp_537 opt_552

    alter_external_resource_pool ::= ALTER EXTERNAL RESOURCE POOL grp_553 WITH LR_BRACKET MAX_CPU_PERCENT EQUAL DECIMAL grp_554 opt_566 opt_569 RR_BRACKET

    create_external_resource_pool ::= CREATE EXTERNAL RESOURCE POOL id_ WITH LR_BRACKET MAX_CPU_PERCENT EQUAL DECIMAL grp_570 opt_582 opt_585 RR_BRACKET

    alter_fulltext_catalog ::= ALTER FULLTEXT CATALOG id_ grp_586

    create_fulltext_catalog ::= CREATE FULLTEXT CATALOG id_ opt_591 opt_593 opt_596 opt_598 opt_600

    alter_fulltext_stoplist ::= ALTER FULLTEXT STOPLIST id_ grp_601

    create_fulltext_stoplist ::= CREATE FULLTEXT STOPLIST id_ opt_610 opt_612

    alter_login_sql_server ::= ALTER LOGIN id_ grp_613

    create_login_sql_server ::= CREATE LOGIN id_ grp_643

    alter_login_azure_sql ::= ALTER LOGIN id_ grp_679

    create_login_azure_sql ::= CREATE LOGIN id_ WITH PASSWORD EQUAL STRING opt_686

    alter_login_azure_sql_dw_and_pdw ::= ALTER LOGIN id_ grp_687

    create_login_pdw ::= CREATE LOGIN id_ grp_695

    alter_master_key_sql_server ::= ALTER MASTER KEY grp_702

    create_master_key_sql_server ::= CREATE MASTER KEY ENCRYPTION BY PASSWORD EQUAL STRING

    alter_master_key_azure_sql ::= ALTER MASTER KEY grp_706

    create_master_key_azure_sql ::= CREATE MASTER KEY opt_710

    alter_message_type ::= ALTER MESSAGE TYPE id_ VALIDATION EQUAL grp_711

    alter_partition_function ::= ALTER PARTITION FUNCTION id_ LR_BRACKET RR_BRACKET grp_712 RANGE LR_BRACKET DECIMAL RR_BRACKET

    alter_partition_scheme ::= ALTER PARTITION SCHEME id_ NEXT USED opt_713

    alter_remote_service_binding ::= ALTER REMOTE SERVICE BINDING id_ WITH opt_715 opt_718

    create_remote_service_binding ::= CREATE REMOTE SERVICE BINDING id_ opt_720 TO SERVICE STRING WITH opt_722 opt_725

    create_resource_pool ::= CREATE RESOURCE POOL id_ opt_760

    alter_resource_governor ::= ALTER RESOURCE GOVERNOR grp_761

    alter_database_audit_specification ::= ALTER DATABASE AUDIT SPECIFICATION id_ opt_765 opt_769 opt_772

    audit_action_spec_group ::= grp_773 LPAREN grp_774 RPAREN

    audit_action_specification ::= action_specification list_776 ON opt_778 audit_securable BY principal_id list_780

    action_specification ::= SELECT
           | INSERT
           | UPDATE
           | DELETE
           | EXECUTE
           | RECEIVE
           | REFERENCES

    audit_class_name ::= OBJECT
           | SCHEMA
           | TABLE

    audit_securable ::= opt_784 id_

    alter_db_role ::= ALTER ROLE id_ grp_785

    create_database_audit_specification ::= CREATE DATABASE AUDIT SPECIFICATION id_ opt_788 opt_792 opt_795

    create_db_role ::= CREATE ROLE id_ opt_797

    create_route ::= CREATE ROUTE id_ opt_799 WITH opt_802 opt_805 opt_808 opt_809 ADDRESS EQUAL STRING opt_811

    create_rule ::= CREATE RULE opt_813 id_ AS search_condition

    alter_schema_sql ::= ALTER SCHEMA id_ TRANSFER opt_816 id_ opt_818

    create_schema ::= CREATE SCHEMA grp_819 list_828

    create_schema_azure_sql_dw_and_pdw ::= CREATE SCHEMA id_ opt_830

    alter_schema_azure_sql_dw_and_pdw ::= ALTER SCHEMA id_ TRANSFER opt_832 id_ opt_834

    create_search_property_list ::= CREATE SEARCH PROPERTY LIST id_ opt_838 opt_840

    create_security_policy ::= CREATE SECURITY POLICY opt_842 id_ list_856 opt_862 opt_864

    alter_sequence ::= ALTER SEQUENCE opt_866 id_ opt_870 opt_872 opt_874 opt_876 opt_878 opt_880

    create_sequence ::= CREATE SEQUENCE opt_882 id_ opt_884 opt_886 opt_889 opt_894 opt_899 opt_901 opt_904

    alter_server_audit ::= ALTER SERVER AUDIT id_ grp_905

    create_server_audit ::= CREATE SERVER AUDIT id_ grp_948

    alter_server_audit_specification ::= ALTER SERVER AUDIT SPECIFICATION id_ opt_993 list_996 opt_999

    create_server_audit_specification ::= CREATE SERVER AUDIT SPECIFICATION id_ opt_1001 list_1003 opt_1006

    alter_server_configuration ::= ALTER SERVER CONFIGURATION SET grp_1007

    alter_server_role ::= ALTER SERVER ROLE id_ grp_1034

    create_server_role ::= CREATE SERVER ROLE id_ opt_1037

    alter_server_role_pdw ::= ALTER SERVER ROLE id_ grp_1038 MEMBER id_

    alter_service ::= ALTER SERVICE id_ opt_1042 opt_1046

    opt_arg_clause ::= grp_1047 CONTRACT id_

    create_service ::= CREATE SERVICE id_ opt_1049 ON QUEUE opt_1051 id_ opt_1057

    alter_service_master_key ::= ALTER SERVICE MASTER KEY grp_1058

    alter_symmetric_key ::= ALTER SYMMETRIC KEY id_ grp_1063

    create_synonym ::= CREATE SYNONYM opt_1067 id_ FOR grp_1068

    alter_user ::= ALTER USER id_ WITH list_1091

    create_user ::= CREATE USER id_ opt_1094 opt_1101
           | CREATE USER grp_1102
           | CREATE USER id_ grp_1121
           | CREATE USER id_

    create_user_azure_sql_dw ::= CREATE USER id_ opt_1131 opt_1133
           | CREATE USER id_ FROM EXTERNAL PROVIDER opt_1135

    alter_user_azure_sql ::= ALTER USER id_ WITH list_1142

    alter_workload_group ::= ALTER WORKLOAD GROUP grp_1143 opt_1150 opt_1153

    create_workload_group ::= CREATE WORKLOAD GROUP id_ opt_1160 opt_1167

    create_xml_schema_collection ::= CREATE XML SCHEMA COLLECTION opt_1169 id_ AS grp_1170

    create_partition_function ::= CREATE PARTITION FUNCTION id_ LPAREN data_type RPAREN AS RANGE opt_1172 FOR VALUES LPAREN expression_list_ RPAREN

    create_partition_scheme ::= CREATE PARTITION SCHEME id_ AS PARTITION id_ opt_1173 TO LPAREN list_1174 id_ list_1177 RPAREN

    create_queue ::= CREATE QUEUE grp_1178 opt_1179 opt_1181

    queue_settings ::= WITH opt_1184 opt_1187 opt_1205 opt_1208

    alter_queue ::= ALTER QUEUE grp_1209 grp_1210

    queue_action ::= REBUILD opt_1212
           | REORGANIZE opt_1214
           | MOVE TO grp_1215

    queue_rebuild_options ::= MAXDOP EQUAL DECIMAL

    create_contract ::= CREATE CONTRACT contract_name opt_1217 LR_BRACKET list_1222 RR_BRACKET

    conversation_statement ::= begin_conversation_timer
           | begin_conversation_dialog
           | end_conversation
           | get_conversation
           | send_conversation
           | waitfor_conversation

    message_statement ::= CREATE MESSAGE TYPE id_ opt_1224 grp_1225

    merge_statement ::= opt_1227 MERGE opt_1230 opt_1231 ddl_object opt_1232 opt_1233 USING table_sources ON search_condition list_1234 opt_1235 opt_1236 SEMI

    when_matches ::= list_1240
           | seq_1245
           | list_1249

    merge_matched ::= UPDATE SET update_elem_merge list_1251
           | DELETE

    merge_not_matched ::= INSERT opt_1253 grp_1254

    delete_statement ::= opt_1255 DELETE opt_1258 opt_1259 delete_statement_from opt_1260 opt_1261 opt_1263 opt_1268 opt_1269 opt_1270 opt_1271

    delete_statement_from ::= ddl_object
           | rowset_function_limited
           | LOCAL_ID

    insert_statement ::= opt_1272 INSERT opt_1275 opt_1276 grp_1277 opt_1278 opt_1280 opt_1281 insert_statement_value opt_1282 opt_1283 opt_1284

    insert_statement_value ::= table_value_constructor
           | derived_table
           | execute_statement
           | DEFAULT VALUES

    receive_statement ::= opt_1285 RECEIVE grp_1286 list_1289 FROM full_table_name opt_1292 opt_1293

    select_statement_standalone ::= opt_1294 select_statement

    select_statement ::= query_expression opt_1295 opt_1296 opt_1297 opt_1298

    time ::= grp_1299

    update_statement ::= opt_1300 UPDATE opt_1303 grp_1304 opt_1305 SET update_elem list_1307 opt_1308 opt_1310 opt_1315 opt_1316 opt_1317 opt_1318

    output_clause ::= OUTPUT output_dml_list_elem list_1320 opt_1325

    output_dml_list_elem ::= grp_1326 opt_1327

    create_database ::= CREATE DATABASE id_ opt_1330 opt_1335 opt_1339 opt_1341 opt_1345

    create_index ::= CREATE opt_1346 opt_1347 INDEX id_ ON table_name LPAREN column_name_list_with_order RPAREN opt_1349 opt_1351 opt_1352 opt_1354 opt_1355

    create_index_options ::= WITH LPAREN relational_index_option list_1357 RPAREN

    relational_index_option ::= rebuild_index_option
           | DROP_EXISTING EQ on_off
           | OPTIMIZE_FOR_SEQUENTIAL_KEY EQ on_off

    alter_index ::= ALTER INDEX grp_1358 ON table_name grp_1359

    resumable_index_options ::= WITH LPAREN seq_1363 RPAREN

    resumable_index_option ::= MAXDOP EQ DECIMAL
           | MAX_DURATION EQ DECIMAL opt_1364
           | low_priority_lock_wait

    reorganize_partition ::= REORGANIZE opt_1366 opt_1367

    reorganize_options ::= WITH LPAREN seq_1370 RPAREN

    reorganize_option ::= LOB_COMPACTION EQ on_off
           | COMPRESS_ALL_ROW_GROUPS EQ on_off

    set_index_options ::= SET LPAREN set_index_option list_1372 RPAREN

    set_index_option ::= ALLOW_ROW_LOCKS EQ on_off
           | ALLOW_PAGE_LOCKS EQ on_off
           | OPTIMIZE_FOR_SEQUENTIAL_KEY EQ on_off
           | IGNORE_DUP_KEY EQ on_off
           | STATISTICS_NORECOMPUTE EQ on_off
           | COMPRESSION_DELAY EQ DECIMAL opt_1373

    rebuild_partition ::= REBUILD opt_1375 opt_1376
           | REBUILD PARTITION EQ DECIMAL opt_1377

    rebuild_index_options ::= WITH LPAREN rebuild_index_option list_1379 RPAREN

    rebuild_index_option ::= PAD_INDEX EQ on_off
           | FILLFACTOR EQ DECIMAL
           | SORT_IN_TEMPDB EQ on_off
           | IGNORE_DUP_KEY EQ on_off
           | STATISTICS_NORECOMPUTE EQ on_off
           | STATISTICS_INCREMENTAL EQ on_off
           | ONLINE EQ grp_1380
           | RESUMABLE EQ on_off
           | MAX_DURATION EQ DECIMAL opt_1383
           | ALLOW_ROW_LOCKS EQ on_off
           | ALLOW_PAGE_LOCKS EQ on_off
           | MAXDOP EQ DECIMAL
           | DATA_COMPRESSION EQ grp_1384 opt_1385
           | XML_COMPRESSION EQ on_off opt_1386

    single_partition_rebuild_index_options ::= WITH LPAREN single_partition_rebuild_index_option list_1388 RPAREN

    single_partition_rebuild_index_option ::= SORT_IN_TEMPDB EQ on_off
           | MAXDOP EQ DECIMAL
           | RESUMABLE EQ on_off
           | DATA_COMPRESSION EQ grp_1389 opt_1390
           | XML_COMPRESSION EQ on_off opt_1391
           | ONLINE EQ grp_1392

    on_partitions ::= ON PARTITIONS LPAREN DECIMAL opt_1396 list_1400 RPAREN

    create_columnstore_index ::= CREATE CLUSTERED COLUMNSTORE INDEX id_ ON table_name opt_1401 opt_1403 opt_1404

    create_columnstore_index_options ::= WITH LPAREN columnstore_index_option list_1406 RPAREN

    columnstore_index_option ::= DROP_EXISTING EQ on_off
           | MAXDOP EQ DECIMAL
           | ONLINE EQ on_off
           | COMPRESSION_DELAY EQ DECIMAL opt_1407
           | DATA_COMPRESSION EQ grp_1408 opt_1409

    create_nonclustered_columnstore_index ::= CREATE opt_1410 COLUMNSTORE INDEX id_ ON table_name LPAREN column_name_list_with_order RPAREN opt_1412 opt_1413 opt_1415 opt_1416

    create_xml_index ::= CREATE opt_1417 XML INDEX id_ ON table_name LPAREN id_ RPAREN opt_1423 opt_1424 opt_1425

    xml_index_options ::= WITH LPAREN xml_index_option list_1427 RPAREN

    xml_index_option ::= PAD_INDEX EQ on_off
           | FILLFACTOR EQ DECIMAL
           | SORT_IN_TEMPDB EQ on_off
           | IGNORE_DUP_KEY EQ on_off
           | DROP_EXISTING EQ on_off
           | ONLINE EQ grp_1428
           | ALLOW_ROW_LOCKS EQ on_off
           | ALLOW_PAGE_LOCKS EQ on_off
           | MAXDOP EQ DECIMAL
           | XML_COMPRESSION EQ on_off

    create_or_alter_procedure ::= grp_1431 grp_1435 func_proc_name_schema opt_1437 opt_1443 opt_1447 opt_1449 AS grp_1450

    as_external_name ::= EXTERNAL NAME id_ DOT id_ DOT id_

    create_or_alter_trigger ::= create_or_alter_dml_trigger
           | create_or_alter_ddl_trigger

    create_or_alter_dml_trigger ::= grp_1452 TRIGGER simple_name ON table_name opt_1458 grp_1459 dml_trigger_operation list_1461 opt_1463 opt_1465 AS list_1466

    dml_trigger_option ::= ENCRYPTION
           | execute_clause

    dml_trigger_operation ::= grp_1467

    create_or_alter_ddl_trigger ::= grp_1468 TRIGGER simple_name ON grp_1471 opt_1475 grp_1476 ddl_trigger_operation list_1478 AS list_1479

    ddl_trigger_operation ::= simple_id

    create_or_alter_function ::= grp_1480 FUNCTION func_proc_name_schema grp_1484 grp_1488 opt_1489

    func_body_returns_select ::= RETURNS TABLE opt_1493 opt_1494 grp_1495

    func_body_returns_table ::= RETURNS LOCAL_ID table_type_definition opt_1500 opt_1501 grp_1502

    func_body_returns_scalar ::= RETURNS data_type opt_1509 opt_1510 grp_1511

    procedure_param_default_value ::= NULL_
           | DEFAULT
           | constant
           | LOCAL_ID

    procedure_param ::= LOCAL_ID opt_1514 opt_1516 data_type opt_1517 opt_1519 opt_1521

    procedure_option ::= ENCRYPTION
           | RECOMPILE
           | execute_clause

    function_option ::= ENCRYPTION
           | SCHEMABINDING
           | RETURNS NULL_ ON NULL_ INPUT
           | CALLED ON NULL_ INPUT
           | execute_clause

    create_statistics ::= CREATE STATISTICS id_ ON table_name LPAREN column_name_list RPAREN opt_1529 opt_1530

    update_statistics ::= UPDATE STATISTICS full_table_name opt_1534 opt_1535

    update_statistics_options ::= WITH update_statistics_option list_1537

    update_statistics_option ::= seq_1541
           | grp_1542
           | RESAMPLE opt_1547
           | STATS_STREAM EQ expression
           | ROWCOUNT EQ DECIMAL
           | PAGECOUNT EQ DECIMAL
           | ALL
           | COLUMNS
           | INDEX
           | NORECOMPUTE
           | INCREMENTAL EQ on_off
           | MAXDOP EQ DECIMAL
           | AUTO_DROP EQ on_off

    create_table ::= CREATE TABLE table_name LPAREN column_def_table_constraints list_1550 opt_1551 RPAREN opt_1553 list_1554 opt_1556 opt_1558 opt_1559

    table_indices ::= INDEX id_ opt_1560 opt_1561 LPAREN column_name_list_with_order RPAREN
           | INDEX id_ CLUSTERED COLUMNSTORE
           | INDEX id_ opt_1562 COLUMNSTORE LPAREN column_name_list RPAREN opt_1563 opt_1565

    table_options ::= WITH grp_1566

    table_option ::= grp_1571 EQ grp_1572
           | CLUSTERED COLUMNSTORE INDEX
           | HEAP
           | FILLFACTOR EQ DECIMAL
           | DISTRIBUTION EQ HASH LPAREN id_ RPAREN
           | CLUSTERED INDEX LPAREN id_ opt_1574 list_1578 RPAREN
           | DATA_COMPRESSION EQ grp_1579 opt_1580
           | XML_COMPRESSION EQ on_off opt_1581

    create_table_index_options ::= WITH LPAREN create_table_index_option list_1583 RPAREN

    create_table_index_option ::= PAD_INDEX EQ on_off
           | FILLFACTOR EQ DECIMAL
           | IGNORE_DUP_KEY EQ on_off
           | STATISTICS_NORECOMPUTE EQ on_off
           | STATISTICS_INCREMENTAL EQ on_off
           | ALLOW_ROW_LOCKS EQ on_off
           | ALLOW_PAGE_LOCKS EQ on_off
           | OPTIMIZE_FOR_SEQUENTIAL_KEY EQ on_off
           | DATA_COMPRESSION EQ grp_1584 opt_1585
           | XML_COMPRESSION EQ on_off opt_1586

    create_view ::= grp_1587 VIEW simple_name opt_1591 opt_1595 AS select_statement_standalone opt_1597 opt_1598

    view_attribute ::= ENCRYPTION
           | SCHEMABINDING
           | VIEW_METADATA

    alter_table ::= ALTER TABLE table_name grp_1599 opt_1615

    switch_partition ::= opt_1618 TO table_name opt_1620 opt_1622

    low_priority_lock_wait ::= WAIT_AT_LOW_PRIORITY LPAREN MAX_DURATION EQ time opt_1623 COMMA ABORT_AFTER_WAIT EQ grp_1624 RPAREN

    alter_database ::= ALTER DATABASE grp_1625 grp_1626 opt_1629

    add_or_modify_files ::= ADD FILE filespec list_1631 opt_1633
           | ADD LOG FILE filespec list_1635
           | REMOVE FILE id_
           | MODIFY FILE filespec

    filespec ::= LPAREN NAME EQ id_or_string opt_1637 opt_1639 opt_1641 opt_1643 opt_1645 opt_1647 RPAREN

    add_or_modify_filegroups ::= ADD FILEGROUP id_ opt_1649
           | REMOVE FILEGROUP id_
           | MODIFY FILEGROUP id_ grp_1650

    filegroup_updatability_option ::= READONLY
           | READWRITE
           | READ_ONLY
           | READ_WRITE

    database_optionspec ::= auto_option
           | change_tracking_option
           | containment_option
           | cursor_option
           | database_mirroring_option
           | date_correlation_optimization_option
           | db_encryption_option
           | db_state_option
           | db_update_option
           | db_user_access_option
           | delayed_durability_option
           | external_access_option
           | FILESTREAM database_filestream_option
           | hadr_options
           | mixed_page_allocation_option
           | parameterization_option
           | recovery_option
           | service_broker_option
           | snapshot_option
           | sql_option
           | target_recovery_time_option
           | termination

    auto_option ::= AUTO_CLOSE on_off
           | AUTO_CREATE_STATISTICS OFF
           | ON grp_1651
           | AUTO_SHRINK on_off
           | AUTO_UPDATE_STATISTICS on_off
           | AUTO_UPDATE_STATISTICS_ASYNC grp_1652

    change_tracking_option ::= CHANGE_TRACKING EQUAL grp_1653

    change_tracking_option_list ::= AUTO_CLEANUP EQUAL on_off
           | CHANGE_RETENTION EQUAL DECIMAL grp_1658

    containment_option ::= CONTAINMENT EQUAL grp_1659

    cursor_option ::= CURSOR_CLOSE_ON_COMMIT on_off
           | CURSOR_DEFAULT grp_1660

    alter_endpoint ::= ALTER ENDPOINT id_ opt_1662 opt_1665 AS TCP LR_BRACKET endpoint_listener_clause RR_BRACKET grp_1666

    database_mirroring_option ::= mirroring_set_option

    mirroring_set_option ::= mirroring_partner partner_option
           | mirroring_witness witness_option

    mirroring_partner ::= PARTNER

    mirroring_witness ::= WITNESS

    witness_partner_equal ::= EQUAL

    partner_option ::= witness_partner_equal partner_server
           | FAILOVER
           | FORCE_SERVICE_ALLOW_DATA_LOSS
           | OFF
           | RESUME
           | SAFETY grp_1682
           | SUSPEND
           | TIMEOUT DECIMAL

    witness_option ::= witness_partner_equal witness_server
           | OFF

    witness_server ::= partner_server

    partner_server ::= partner_server_tcp_prefix host mirroring_host_port_seperator port_number

    mirroring_host_port_seperator ::= COLON

    partner_server_tcp_prefix ::= TCP COLON DOUBLE_FORWARD_SLASH

    port_number ::= DECIMAL

    host ::= id_ DOT host
           | grp_1683

    date_correlation_optimization_option ::= DATE_CORRELATION_OPTIMIZATION on_off

    db_encryption_option ::= ENCRYPTION on_off

    db_state_option ::= grp_1684

    db_update_option ::= READ_ONLY
           | READ_WRITE

    db_user_access_option ::= SINGLE_USER
           | RESTRICTED_USER
           | MULTI_USER

    delayed_durability_option ::= DELAYED_DURABILITY EQUAL grp_1685

    external_access_option ::= DB_CHAINING on_off
           | TRUSTWORTHY on_off
           | DEFAULT_LANGUAGE EQUAL grp_1686
           | DEFAULT_FULLTEXT_LANGUAGE EQUAL grp_1687
           | NESTED_TRIGGERS EQUAL grp_1688
           | TRANSFORM_NOISE_WORDS EQUAL grp_1689
           | TWO_DIGIT_YEAR_CUTOFF EQUAL DECIMAL

    hadr_options ::= HADR grp_1690

    mixed_page_allocation_option ::= MIXED_PAGE_ALLOCATION grp_1693

    parameterization_option ::= PARAMETERIZATION grp_1694

    recovery_option ::= RECOVERY grp_1695
           | TORN_PAGE_DETECTION on_off
           | ACCELERATED_DATABASE_RECOVERY EQ on_off
           | PAGE_VERIFY grp_1696

    service_broker_option ::= ENABLE_BROKER
           | DISABLE_BROKER
           | NEW_BROKER
           | ERROR_BROKER_CONVERSATIONS
           | HONOR_BROKER_PRIORITY on_off

    snapshot_option ::= ALLOW_SNAPSHOT_ISOLATION on_off
           | READ_COMMITTED_SNAPSHOT grp_1697
           | grp_1698

    sql_option ::= ANSI_NULL_DEFAULT on_off
           | ANSI_NULLS on_off
           | ANSI_PADDING on_off
           | ANSI_WARNINGS on_off
           | ARITHABORT on_off
           | COMPATIBILITY_LEVEL EQUAL DECIMAL
           | CONCAT_NULL_YIELDS_NULL on_off
           | NUMERIC_ROUNDABORT on_off
           | QUOTED_IDENTIFIER on_off
           | RECURSIVE_TRIGGERS on_off

    target_recovery_time_option ::= TARGET_RECOVERY_TIME EQUAL DECIMAL grp_1699

    termination ::= ROLLBACK AFTER DECIMAL
           | ROLLBACK IMMEDIATE
           | NO_WAIT

    drop_index ::= DROP INDEX opt_1701 grp_1702 opt_1707

    drop_relational_or_xml_or_spatial_index ::= id_ ON full_table_name

    drop_backward_compatible_index ::= opt_1709 id_ DOT id_

    drop_procedure ::= DROP grp_1710 opt_1712 func_proc_name_schema list_1714 opt_1715

    drop_trigger ::= drop_dml_trigger
           | drop_ddl_trigger

    drop_dml_trigger ::= DROP TRIGGER opt_1717 simple_name list_1719 opt_1720

    drop_ddl_trigger ::= DROP TRIGGER opt_1722 simple_name list_1724 ON grp_1725 opt_1726

    drop_function ::= DROP FUNCTION opt_1728 func_proc_name_schema list_1730 opt_1731

    drop_statistics ::= DROP STATISTICS list_1736 SEMI

    drop_table ::= DROP TABLE opt_1738 table_name list_1740 opt_1741

    drop_view ::= DROP VIEW opt_1743 simple_name list_1745 opt_1746

    create_type ::= CREATE TYPE simple_name opt_1749 opt_1751

    drop_type ::= DROP TYPE opt_1753 simple_name

    rowset_function_limited ::= openquery
           | opendatasource

    openquery ::= OPENQUERY LPAREN id_ COMMA STRING RPAREN

    opendatasource ::= OPENDATASOURCE LPAREN STRING COMMA STRING RPAREN DOT opt_1754 DOT opt_1755 DOT id_

    declare_statement ::= DECLARE LOCAL_ID opt_1756 grp_1757
           | DECLARE list_1758 declare_local list_1761
           | DECLARE LOCAL_ID opt_1762 xml_type_definition
           | WITH XMLNAMESPACES LPAREN list_1763 xml_declaration list_1766 RPAREN

    xml_declaration ::= STRING AS id_
           | DEFAULT STRING

    cursor_statement ::= CLOSE opt_1767 cursor_name opt_1768
           | DEALLOCATE opt_1769 opt_1770 cursor_name opt_1771
           | declare_cursor
           | fetch_cursor
           | OPEN opt_1772 cursor_name opt_1773

    backup_database ::= BACKUP DATABASE id_ opt_1779 list_1783 grp_1784 opt_1806 opt_1853

    backup_log ::= BACKUP LOG id_ grp_1854 opt_1876 opt_1926

    backup_certificate ::= BACKUP CERTIFICATE id_ TO FILE EQUAL STRING opt_1933

    backup_master_key ::= BACKUP MASTER KEY TO FILE EQUAL STRING ENCRYPTION BY PASSWORD EQUAL STRING

    backup_service_master_key ::= BACKUP SERVICE MASTER KEY TO FILE EQUAL STRING ENCRYPTION BY PASSWORD EQUAL STRING

    kill_statement ::= KILL grp_1934

    kill_process ::= grp_1935 opt_1938

    kill_query_notification ::= QUERY NOTIFICATION SUBSCRIPTION grp_1939

    kill_stats_job ::= STATS JOB DECIMAL

    execute_statement ::= EXECUTE execute_body opt_1940

    execute_body_batch ::= func_proc_name_server_database_schema opt_1944 opt_1945

    execute_body ::= opt_1947 grp_1948 opt_1949
           | LPAREN execute_var_string list_1951 RPAREN opt_1954 opt_1956
           | AS grp_1957

    execute_statement_arg ::= execute_statement_arg_unnamed list_1960
           | execute_statement_arg_named list_1962

    execute_statement_arg_named ::= LOCAL_ID EQ execute_parameter

    execute_statement_arg_unnamed ::= execute_parameter

    execute_parameter ::= grp_1963

    execute_var_string ::= LOCAL_ID opt_1967 opt_1971
           | STRING opt_1975

    security_statement ::= execute_clause opt_1976
           | GRANT grp_1977 opt_1984 TO list_1985 principal_id list_1988 opt_1990 opt_1992 opt_1993
           | REVERT opt_1995 opt_1996
           | open_key
           | close_key
           | create_key
           | create_certificate

    principal_id ::= id_
           | PUBLIC

    create_certificate ::= CREATE CERTIFICATE id_ opt_1998 grp_1999 opt_2001

    existing_keys ::= ASSEMBLY id_
           | opt_2002 FILE EQUAL STRING opt_2004

    private_key_options ::= grp_2005 EQ STRING opt_2008

    generate_new_keys ::= opt_2010 WITH SUBJECT EQUAL STRING list_2012

    date_options ::= grp_2013 EQUAL STRING

    open_key ::= OPEN SYMMETRIC KEY id_ DECRYPTION BY decryption_mechanism
           | OPEN MASTER KEY DECRYPTION BY PASSWORD EQ STRING

    close_key ::= CLOSE SYMMETRIC KEY id_
           | CLOSE ALL SYMMETRIC KEYS
           | CLOSE MASTER KEY

    create_key ::= CREATE MASTER KEY ENCRYPTION BY PASSWORD EQ STRING
           | CREATE SYMMETRIC KEY id_ opt_2015 opt_2017 WITH list_2021

    key_options ::= KEY_SOURCE EQUAL STRING
           | ALGORITHM EQUAL algorithm
           | IDENTITY_VALUE EQUAL STRING
           | PROVIDER_KEY_NAME EQUAL STRING
           | CREATION_DISPOSITION EQUAL grp_2022

    algorithm ::= DES
           | TRIPLE_DES
           | TRIPLE_DES_3KEY
           | RC2
           | RC4
           | RC4_128
           | DESX
           | AES_128
           | AES_192
           | AES_256

    encryption_mechanism ::= CERTIFICATE id_
           | ASYMMETRIC KEY id_
           | SYMMETRIC KEY id_
           | PASSWORD EQ STRING

    decryption_mechanism ::= CERTIFICATE id_ opt_2024
           | ASYMMETRIC KEY id_ opt_2026
           | SYMMETRIC KEY id_
           | PASSWORD EQUAL STRING

    grant_permission ::= ADMINISTER grp_2027
           | ALTER opt_2037
           | AUTHENTICATE opt_2038
           | BACKUP grp_2039
           | CHECKPOINT
           | CONNECT opt_2041
           | CONTROL opt_2042
           | CREATE grp_2043
           | DELETE
           | EXECUTE opt_2047
           | EXTERNAL ACCESS ASSEMBLY
           | IMPERSONATE opt_2049
           | INSERT
           | KILL DATABASE CONNECTION
           | RECEIVE
           | REFERENCES
           | SELECT opt_2051
           | SEND
           | SHOWPLAN
           | SHUTDOWN
           | SUBSCRIBE QUERY NOTIFICATIONS
           | TAKE OWNERSHIP
           | UNMASK
           | UNSAFE ASSEMBLY
           | UPDATE
           | VIEW grp_2052

    set_statement ::= SET LOCAL_ID opt_2056 EQ expression
           | SET LOCAL_ID assignment_operator expression
           | SET LOCAL_ID EQ CURSOR declare_set_cursor_common opt_2061
           | set_special

    transaction_statement ::= BEGIN DISTRIBUTED grp_2062 opt_2064
           | BEGIN grp_2065 opt_2070
           | COMMIT grp_2071 opt_2077
           | COMMIT opt_2078
           | COMMIT id_
           | ROLLBACK id_
           | ROLLBACK grp_2079 opt_2081
           | ROLLBACK opt_2082
           | SAVE grp_2083 opt_2085

    go_statement ::= GO opt_2086

    use_statement ::= USE id_

    setuser_statement ::= SETUSER opt_2087

    reconfigure_statement ::= RECONFIGURE opt_2089

    shutdown_statement ::= SHUTDOWN opt_2091

    checkpoint_statement ::= CHECKPOINT opt_2092

    dbcc_checkalloc_option ::= ALL_ERRORMSGS
           | NO_INFOMSGS
           | TABLOCK
           | ESTIMATEONLY

    dbcc_checkalloc ::= CHECKALLOC opt_2102

    dbcc_checkcatalog ::= CHECKCATALOG opt_2105 opt_2107

    dbcc_checkconstraints_option ::= ALL_CONSTRAINTS
           | ALL_ERRORMSGS
           | NO_INFOMSGS

    dbcc_checkconstraints ::= CHECKCONSTRAINTS opt_2110 opt_2114

    dbcc_checkdb_table_option ::= ALL_ERRORMSGS
           | EXTENDED_LOGICAL_CHECKS
           | NO_INFOMSGS
           | TABLOCK
           | ESTIMATEONLY
           | PHYSICAL_ONLY
           | DATA_PURITY
           | MAXDOP EQ DECIMAL

    dbcc_checkdb ::= CHECKDB opt_2120 opt_2124

    dbcc_checkfilegroup_option ::= ALL_ERRORMSGS
           | NO_INFOMSGS
           | TABLOCK
           | ESTIMATEONLY
           | PHYSICAL_ONLY
           | MAXDOP EQ DECIMAL

    dbcc_checkfilegroup ::= CHECKFILEGROUP opt_2130 opt_2134

    dbcc_checktable ::= CHECKTABLE LPAREN STRING opt_2137 RPAREN opt_2141

    dbcc_cleantable ::= CLEANTABLE LPAREN grp_2142 COMMA grp_2143 opt_2145 RPAREN opt_2147

    dbcc_clonedatabase_option ::= NO_STATISTICS
           | NO_QUERYSTORE
           | SERVICEBROKER
           | VERIFY_CLONEDB
           | BACKUP_CLONEDB

    dbcc_clonedatabase ::= CLONEDATABASE LPAREN id_ COMMA id_ RPAREN opt_2151

    dbcc_pdw_showspaceused ::= PDW_SHOWSPACEUSED opt_2153 opt_2155

    dbcc_proccache ::= PROCCACHE opt_2157

    dbcc_showcontig_option ::= ALL_INDEXES
           | TABLERESULTS
           | FAST
           | ALL_LEVELS
           | NO_INFOMSGS

    dbcc_showcontig ::= SHOWCONTIG opt_2161 opt_2165

    dbcc_shrinklog ::= SHRINKLOG opt_2170 opt_2172

    dbcc_dbreindex ::= DBREINDEX LPAREN id_or_string opt_2176 RPAREN opt_2178

    dbcc_dll_free ::= id_ LPAREN FREE RPAREN opt_2180

    dbcc_dropcleanbuffers ::= DROPCLEANBUFFERS opt_2182 opt_2184

    dbcc_clause ::= DBCC grp_2185

    execute_clause ::= EXECUTE AS grp_2186

    declare_local ::= LOCAL_ID opt_2187 data_type opt_2189

    table_type_definition ::= TABLE LPAREN column_def_table_constraints list_2192 RPAREN

    table_type_indices ::= grp_2193 LPAREN column_name_list_with_order RPAREN
           | CHECK LPAREN search_condition RPAREN

    xml_type_definition ::= XML LPAREN opt_2199 xml_schema_collection RPAREN

    xml_schema_collection ::= IDENTIFIER DOT IDENTIFIER

    column_def_table_constraints ::= column_def_table_constraint list_2202

    column_def_table_constraint ::= column_definition
           | materialized_column_definition
           | table_constraint

    column_definition ::= id_ grp_2203 list_2205 opt_2206

    column_definition_element ::= FILESTREAM
           | COLLATE id_
           | SPARSE
           | MASKED WITH LPAREN FUNCTION EQ STRING RPAREN
           | opt_2208 DEFAULT expression
           | IDENTITY opt_2210
           | NOT FOR REPLICATION
           | GENERATED ALWAYS AS grp_2211 grp_2212 opt_2213
           | ROWGUIDCOL
           | ENCRYPTED WITH LPAREN COLUMN_ENCRYPTION_KEY EQ STRING COMMA ENCRYPTION_TYPE EQ grp_2214 COMMA ALGORITHM EQ STRING RPAREN
           | column_constraint

    column_modifier ::= id_ grp_2215 grp_2216

    materialized_column_definition ::= id_ grp_2220 expression opt_2222

    column_constraint ::= opt_2224 grp_2225

    column_index ::= INDEX id_ opt_2232 opt_2233 opt_2234 opt_2237

    on_partition_or_filegroup ::= ON grp_2238

    table_constraint ::= opt_2241 grp_2242

    connection_node ::= id_ TO id_

    primary_key_options ::= opt_2254 opt_2255 opt_2256

    foreign_key_options ::= REFERENCES table_name LPAREN column_name_list RPAREN list_2258 opt_2260

    check_constraint ::= CHECK opt_2262 LPAREN search_condition RPAREN

    on_delete ::= ON DELETE grp_2263

    on_update ::= ON UPDATE grp_2264

    alter_table_index_options ::= WITH LPAREN alter_table_index_option list_2266 RPAREN

    alter_table_index_option ::= PAD_INDEX EQ on_off
           | FILLFACTOR EQ DECIMAL
           | IGNORE_DUP_KEY EQ on_off
           | STATISTICS_NORECOMPUTE EQ on_off
           | ALLOW_ROW_LOCKS EQ on_off
           | ALLOW_PAGE_LOCKS EQ on_off
           | OPTIMIZE_FOR_SEQUENTIAL_KEY EQ on_off
           | SORT_IN_TEMPDB EQ on_off
           | MAXDOP EQ DECIMAL
           | DATA_COMPRESSION EQ grp_2267 opt_2268
           | XML_COMPRESSION EQ on_off opt_2269
           | DISTRIBUTION EQ HASH LPAREN id_ RPAREN
           | CLUSTERED INDEX LPAREN id_ opt_2271 list_2275 RPAREN
           | ONLINE EQ grp_2276
           | RESUMABLE EQ on_off
           | MAX_DURATION EQ DECIMAL opt_2279

    declare_cursor ::= DECLARE cursor_name grp_2280 opt_2294

    declare_set_cursor_common ::= list_2295 FOR select_statement_standalone

    declare_set_cursor_common_partial ::= grp_2296
           | grp_2297
           | grp_2298
           | grp_2299
           | TYPE_WARNING

    fetch_cursor ::= FETCH opt_2304 opt_2305 cursor_name opt_2309 opt_2310

    set_special ::= SET id_ grp_2311 opt_2312
           | SET STATISTICS grp_2313 on_off opt_2314
           | SET ROWCOUNT grp_2315 opt_2316
           | SET TEXTSIZE DECIMAL opt_2317
           | SET TRANSACTION ISOLATION LEVEL grp_2318 opt_2319
           | SET IDENTITY_INSERT table_name on_off opt_2320
           | SET special_list list_2322 on_off
           | SET modify_method

    special_list ::= ANSI_NULLS
           | QUOTED_IDENTIFIER
           | ANSI_PADDING
           | ANSI_WARNINGS
           | ANSI_DEFAULTS
           | ANSI_NULL_DFLT_OFF
           | ANSI_NULL_DFLT_ON
           | ARITHABORT
           | ARITHIGNORE
           | CONCAT_NULL_YIELDS_NULL
           | CURSOR_CLOSE_ON_COMMIT
           | FMTONLY
           | FORCEPLAN
           | IMPLICIT_TRANSACTIONS
           | NOCOUNT
           | NOEXEC
           | NUMERIC_ROUNDABORT
           | PARSEONLY
           | REMOTE_PROC_TRANSACTIONS
           | SHOWPLAN_ALL
           | SHOWPLAN_TEXT
           | SHOWPLAN_XML
           | XACT_ABORT

    constant_LOCAL_ID ::= constant
           | LOCAL_ID

    expression ::= primitive_expression
           | function_call
           | expression DOT grp_2323
           | expression DOT hierarchyid_call
           | expression COLLATE id_
           | case_expression
           | full_column_name
           | bracket_expression
           | unary_operator_expression
           | expression grp_2324 expression
           | expression grp_2325 expression
           | expression time_zone
           | over_clause
           | DOLLAR_ACTION

    parameter ::= PLACEHOLDER

    time_zone ::= AT_KEYWORD TIME ZONE expression

    primitive_expression ::= DEFAULT
           | NULL_
           | LOCAL_ID
           | primitive_constant

    case_expression ::= CASE expression list_2326 opt_2328 END
           | CASE list_2329 opt_2331 END

    unary_operator_expression ::= TILDE expression
           | grp_2332 expression

    bracket_expression ::= LPAREN expression RPAREN
           | LPAREN subquery RPAREN

    subquery ::= select_statement

    with_expression ::= WITH list_2333 common_table_expression list_2336

    common_table_expression ::= id_ opt_2338 AS LPAREN select_statement RPAREN

    update_elem ::= LOCAL_ID EQ full_column_name grp_2339 expression
           | grp_2340 grp_2341 expression
           | id_ DOT id_ LPAREN expression_list_ RPAREN

    update_elem_merge ::= grp_2342 grp_2343 expression
           | id_ DOT id_ LPAREN expression_list_ RPAREN

    search_condition ::= list_2344 grp_2345
           | search_condition AND search_condition
           | search_condition OR search_condition

    predicate ::= EXISTS LPAREN subquery RPAREN
           | freetext_predicate
           | expression comparison_operator expression
           | expression MULT_ASSIGN expression
           | expression comparison_operator grp_2346 LPAREN subquery RPAREN
           | expression list_2347 BETWEEN expression AND expression
           | expression list_2348 IN LPAREN grp_2349 RPAREN
           | expression list_2350 LIKE expression opt_2352
           | expression IS null_notnull

    query_expression ::= query_specification opt_2353 list_2354 list_2355
           | LPAREN query_expression RPAREN opt_2358

    sql_union ::= grp_2359 grp_2361

    query_specification ::= SELECT opt_2364 opt_2365 select_list opt_2367 opt_2369 opt_2371 opt_2384 opt_2386

    top_clause ::= TOP grp_2387 opt_2389

    top_percent ::= grp_2390 PERCENT
           | LPAREN expression RPAREN PERCENT

    top_count ::= DECIMAL
           | LPAREN expression RPAREN

    order_by_clause ::= ORDER BY list_2391 order_by_expression list_2394

    select_order_by_clause ::= order_by_clause opt_2401

    for_clause ::= FOR BROWSE
           | FOR XML grp_2402 list_2405 opt_2410 opt_2414
           | FOR XML EXPLICIT list_2415 opt_2417
           | FOR XML PATH opt_2419 list_2420 opt_2424
           | FOR JSON grp_2425 list_2429

    xml_common_directives ::= COMMA grp_2430

    order_by_expression ::= expression opt_2434

    grouping_sets_item ::= opt_2435 list_2436 group_by_item list_2439 opt_2440
           | LPAREN RPAREN

    group_by_item ::= expression

    option_clause ::= OPTION LPAREN list_2441 option list_2444 RPAREN

    option ::= FAST DECIMAL
           | grp_2445 GROUP
           | grp_2446 UNION
           | grp_2447 JOIN
           | EXPAND VIEWS
           | FORCE ORDER
           | IGNORE_NONCLUSTERED_COLUMNSTORE_INDEX
           | KEEP PLAN
           | KEEPFIXED PLAN
           | MAXDOP DECIMAL
           | MAXRECURSION DECIMAL
           | OPTIMIZE FOR LPAREN optimize_for_arg list_2449 RPAREN
           | OPTIMIZE FOR UNKNOWN
           | PARAMETERIZATION grp_2450
           | RECOMPILE
           | ROBUST PLAN
           | USE PLAN STRING

    optimize_for_arg ::= LOCAL_ID grp_2451

    select_list ::= select_list_elem list_2456

    udt_method_arguments ::= LPAREN list_2457 execute_var_string list_2460 RPAREN

    asterisk ::= opt_2462 STAR
           | grp_2463 DOT STAR

    udt_elem ::= id_ DOT id_ udt_method_arguments opt_2464
           | id_ DOUBLE_COLON id_ opt_2465 opt_2466

    expression_elem ::= column_alias EQ expression
           | expression opt_2467

    select_list_elem ::= asterisk
           | udt_elem
           | LOCAL_ID grp_2468 expression
           | expression_elem

    table_sources ::= non_ansi_join
           | table_source list_2472

    non_ansi_join ::= list_2473 table_source list_2476

    table_source ::= table_source_item list_2477 list_2478

    table_source_item ::= full_table_name opt_2479 opt_2481
           | full_table_name deprecated_table_hint as_table_alias
           | rowset_function opt_2482
           | LPAREN derived_table RPAREN opt_2485
           | change_table opt_2486
           | nodes_method opt_2489
           | function_


    open_xml ::= OPENXML LPAREN expression COMMA expression opt_2499 RPAREN opt_2501 opt_2502

    open_json ::= OPENJSON LPAREN expression opt_2504 RPAREN opt_2506 opt_2507

    json_declaration ::= list_2508 json_column_declaration list_2511

    json_column_declaration ::= column_declaration opt_2513

    schema_declaration ::= list_2514 column_declaration list_2517

    column_declaration ::= id_ data_type opt_2518

    change_table ::= change_table_changes
           | change_table_version

    change_table_changes ::= CHANGETABLE LPAREN CHANGES table_name COMMA grp_2519 RPAREN

    change_table_version ::= CHANGETABLE LPAREN VERSION table_name COMMA full_column_name_list COMMA select_list RPAREN

    join_part ::= join_on
           | cross_join
           | apply_
           | pivot
           | unpivot

    join_on ::= grp_2520 opt_2526 JOIN table_source ON search_condition

    cross_join ::= CROSS JOIN table_source_item

    apply_ ::= grp_2527 APPLY table_source_item

    pivot ::= PIVOT pivot_clause as_table_alias

    unpivot ::= UNPIVOT unpivot_clause as_table_alias

    pivot_clause ::= LPAREN aggregate_windowed_function FOR full_column_name IN column_alias_list RPAREN

    unpivot_clause ::= LPAREN expression FOR full_column_name IN LPAREN full_column_name_list RPAREN RPAREN

    full_column_name_list ::= list_2528 full_column_name list_2531

    rowset_function ::= seq_2532
           | grp_2533

    bulk_option ::= id_ EQ grp_2537

    derived_table ::= subquery
           | LPAREN subquery list_2539 RPAREN
           | table_value_constructor
           | LPAREN table_value_constructor RPAREN

    function_call ::= ranking_windowed_function
           | aggregate_windowed_function
           | analytic_windowed_function
           | built_in_functions
           | scalar_function_name LPAREN opt_2540 RPAREN
           | freetext_function
           | partition_function
           | hierarchyid_static_method

    partition_function ::= opt_2542 DOLLAR_PARTITION DOT id_ LPAREN expression RPAREN

    freetext_function ::= grp_2543 LPAREN table_name COMMA grp_2544 COMMA expression opt_2548 opt_2550 RPAREN
           | grp_2551 LPAREN table_name COMMA grp_2552 COMMA expression RPAREN
           | SEMANTICSIMILARITYDETAILSTABLE LPAREN table_name COMMA full_column_name COMMA expression COMMA full_column_name COMMA expression RPAREN

    freetext_predicate ::= CONTAINS LPAREN grp_2555 COMMA expression RPAREN
           | FREETEXT LPAREN table_name COMMA grp_2558 COMMA expression opt_2562 RPAREN

    json_key_value ::= expression COLON expression

    json_null_clause ::= grp_2563 ON NULL_

    built_in_functions ::= APP_NAME LPAREN RPAREN
           | APPLOCK_MODE LPAREN expression COMMA expression COMMA expression RPAREN
           | APPLOCK_TEST LPAREN expression COMMA expression COMMA expression COMMA expression RPAREN
           | ASSEMBLYPROPERTY LPAREN expression COMMA expression RPAREN
           | COL_LENGTH LPAREN expression COMMA expression RPAREN
           | COL_NAME LPAREN expression COMMA expression RPAREN
           | COLUMNPROPERTY LPAREN expression COMMA expression COMMA expression RPAREN
           | DATABASEPROPERTYEX LPAREN expression COMMA expression RPAREN
           | DB_ID LPAREN opt_2564 RPAREN
           | DB_NAME LPAREN opt_2565 RPAREN
           | FILE_ID LPAREN expression RPAREN
           | FILE_IDEX LPAREN expression RPAREN
           | FILE_NAME LPAREN expression RPAREN
           | FILEGROUP_ID LPAREN expression RPAREN
           | FILEGROUP_NAME LPAREN expression RPAREN
           | FILEGROUPPROPERTY LPAREN expression COMMA expression RPAREN
           | FILEPROPERTY LPAREN expression COMMA expression RPAREN
           | FILEPROPERTYEX LPAREN expression COMMA expression RPAREN
           | FULLTEXTCATALOGPROPERTY LPAREN expression COMMA expression RPAREN
           | FULLTEXTSERVICEPROPERTY LPAREN expression RPAREN
           | INDEX_COL LPAREN expression COMMA expression COMMA expression RPAREN
           | INDEXKEY_PROPERTY LPAREN expression COMMA expression COMMA expression COMMA expression RPAREN
           | INDEXPROPERTY LPAREN expression COMMA expression COMMA expression RPAREN
           | NEXT VALUE FOR table_name opt_2567
           | OBJECT_DEFINITION LPAREN expression RPAREN
           | OBJECT_ID LPAREN expression opt_2569 RPAREN
           | OBJECT_NAME LPAREN expression opt_2571 RPAREN
           | OBJECT_SCHEMA_NAME LPAREN expression opt_2573 RPAREN
           | OBJECTPROPERTY LPAREN expression COMMA expression RPAREN
           | OBJECTPROPERTYEX LPAREN expression COMMA expression RPAREN
           | ORIGINAL_DB_NAME LPAREN RPAREN
           | PARSENAME LPAREN expression COMMA expression RPAREN
           | SCHEMA_ID LPAREN opt_2574 RPAREN
           | SCHEMA_NAME LPAREN opt_2575 RPAREN
           | SCOPE_IDENTITY LPAREN RPAREN
           | SERVERPROPERTY LPAREN expression RPAREN
           | STATS_DATE LPAREN expression COMMA expression RPAREN
           | TYPE_ID LPAREN expression RPAREN
           | TYPE_NAME LPAREN expression RPAREN
           | TYPEPROPERTY LPAREN expression COMMA expression RPAREN
           | ASCII LPAREN expression RPAREN
           | CHAR LPAREN expression RPAREN
           | CHARINDEX LPAREN expression COMMA expression opt_2577 RPAREN
           | CONCAT LPAREN expression COMMA expression list_2580 RPAREN
           | CONCAT_WS LPAREN expression COMMA expression COMMA expression list_2583 RPAREN
           | DIFFERENCE LPAREN expression COMMA expression RPAREN
           | FORMAT LPAREN expression COMMA expression opt_2585 RPAREN
           | LEFT LPAREN expression COMMA expression RPAREN
           | LEN LPAREN expression RPAREN
           | LOWER LPAREN expression RPAREN
           | LTRIM LPAREN expression RPAREN
           | NCHAR LPAREN expression RPAREN
           | PATINDEX LPAREN expression COMMA expression RPAREN
           | QUOTENAME LPAREN expression opt_2587 RPAREN
           | REPLACE LPAREN expression COMMA expression COMMA expression RPAREN
           | REPLICATE LPAREN expression COMMA expression RPAREN
           | REVERSE LPAREN expression RPAREN
           | RIGHT LPAREN expression COMMA expression RPAREN
           | RTRIM LPAREN expression RPAREN
           | SOUNDEX LPAREN expression RPAREN
           | SPACE_KEYWORD LPAREN expression RPAREN
           | STR LPAREN expression opt_2591 RPAREN
           | STRING_AGG LPAREN expression COMMA expression RPAREN opt_2593
           | STRING_ESCAPE LPAREN expression COMMA expression RPAREN
           | STUFF LPAREN expression COMMA expression COMMA expression COMMA expression RPAREN
           | SUBSTRING LPAREN expression COMMA expression COMMA expression RPAREN
           | TRANSLATE LPAREN expression COMMA expression COMMA expression RPAREN
           | TRIM LPAREN opt_2595 expression RPAREN
           | UNICODE LPAREN expression RPAREN
           | UPPER LPAREN expression RPAREN
           | BINARY_CHECKSUM LPAREN grp_2596 RPAREN
           | CHECKSUM LPAREN grp_2599 RPAREN
           | COMPRESS LPAREN expression RPAREN
           | CONNECTIONPROPERTY LPAREN STRING RPAREN
           | CONTEXT_INFO LPAREN RPAREN
           | CURRENT_REQUEST_ID LPAREN RPAREN
           | CURRENT_TRANSACTION_ID LPAREN RPAREN
           | DECOMPRESS LPAREN expression RPAREN
           | ERROR_LINE LPAREN RPAREN
           | ERROR_MESSAGE LPAREN RPAREN
           | ERROR_NUMBER LPAREN RPAREN
           | ERROR_PROCEDURE LPAREN RPAREN
           | ERROR_SEVERITY LPAREN RPAREN
           | ERROR_STATE LPAREN RPAREN
           | FORMATMESSAGE LPAREN grp_2602 COMMA expression list_2604 RPAREN
           | GET_FILESTREAM_TRANSACTION_CONTEXT LPAREN RPAREN
           | GETANSINULL LPAREN opt_2605 RPAREN
           | HOST_ID LPAREN RPAREN
           | HOST_NAME LPAREN RPAREN
           | ISNULL LPAREN expression COMMA expression RPAREN
           | ISNUMERIC LPAREN expression RPAREN
           | MIN_ACTIVE_ROWVERSION LPAREN RPAREN
           | NEWID LPAREN RPAREN
           | NEWSEQUENTIALID LPAREN RPAREN
           | ROWCOUNT_BIG LPAREN RPAREN
           | SESSION_CONTEXT LPAREN STRING RPAREN
           | XACT_STATE LPAREN RPAREN
           | CAST LPAREN expression AS data_type RPAREN
           | TRY_CAST LPAREN expression AS data_type RPAREN
           | CONVERT LPAREN data_type COMMA expression opt_2607 RPAREN
           | COALESCE LPAREN expression_list_ RPAREN
           | CURSOR_ROWS
           | FETCH_STATUS
           | CURSOR_STATUS LPAREN STRING COMMA expression RPAREN
           | CERT_ID LPAREN expression RPAREN
           | DATALENGTH LPAREN expression RPAREN
           | IDENT_CURRENT LPAREN expression RPAREN
           | IDENT_INCR LPAREN expression RPAREN
           | IDENT_SEED LPAREN expression RPAREN
           | IDENTITY LPAREN data_type opt_2609 RPAREN
           | SQL_VARIANT_PROPERTY LPAREN expression COMMA STRING RPAREN
           | CURRENT_DATE LPAREN RPAREN
           | CURRENT_TIMESTAMP
           | CURRENT_TIMEZONE LPAREN RPAREN
           | CURRENT_TIMEZONE_ID LPAREN RPAREN
           | DATE_BUCKET LPAREN dateparts_9 COMMA expression COMMA expression opt_2611 RPAREN
           | DATEADD LPAREN dateparts_12 COMMA expression COMMA expression RPAREN
           | DATEDIFF LPAREN dateparts_12 COMMA expression COMMA expression RPAREN
           | DATEDIFF_BIG LPAREN dateparts_12 COMMA expression COMMA expression RPAREN
           | DATEFROMPARTS LPAREN expression COMMA expression COMMA expression RPAREN
           | DATENAME LPAREN dateparts_15 COMMA expression RPAREN
           | DATEPART LPAREN dateparts_15 COMMA expression RPAREN
           | DATETIME2FROMPARTS LPAREN expression COMMA expression COMMA expression COMMA expression COMMA expression COMMA expression COMMA expression COMMA expression RPAREN
           | DATETIMEFROMPARTS LPAREN expression COMMA expression COMMA expression COMMA expression COMMA expression COMMA expression COMMA expression RPAREN
           | DATETIMEOFFSETFROMPARTS LPAREN expression COMMA expression COMMA expression COMMA expression COMMA expression COMMA expression COMMA expression COMMA expression COMMA expression COMMA DECIMAL RPAREN
           | DATETRUNC LPAREN dateparts_datetrunc COMMA expression RPAREN
           | DAY LPAREN expression RPAREN
           | EOMONTH LPAREN expression opt_2613 RPAREN
           | GETDATE LPAREN RPAREN
           | GETUTCDATE LPAREN RPAREN
           | ISDATE LPAREN expression RPAREN
           | MONTH LPAREN expression RPAREN
           | SMALLDATETIMEFROMPARTS LPAREN expression COMMA expression COMMA expression COMMA expression COMMA expression RPAREN
           | SWITCHOFFSET LPAREN expression COMMA expression RPAREN
           | SYSDATETIME LPAREN RPAREN
           | SYSDATETIMEOFFSET LPAREN RPAREN
           | SYSUTCDATETIME LPAREN RPAREN
           | TIMEFROMPARTS LPAREN expression COMMA expression COMMA expression COMMA expression COMMA DECIMAL RPAREN
           | TODATETIMEOFFSET LPAREN expression COMMA expression RPAREN
           | YEAR LPAREN expression RPAREN
           | IDENTITY LPAREN data_type opt_2615 opt_2617 RPAREN
           | NULLIF LPAREN expression COMMA expression RPAREN
           | PARSE LPAREN expression AS data_type opt_2619 RPAREN
           | xml_data_type_methods
           | IIF LPAREN search_condition COMMA expression COMMA expression RPAREN
           | ISJSON LPAREN expression opt_2621 RPAREN
           | JSON_OBJECT LPAREN opt_2625 opt_2626 RPAREN
           | JSON_ARRAY LPAREN opt_2627 opt_2628 RPAREN
           | JSON_VALUE LPAREN expression COMMA expression RPAREN
           | JSON_QUERY LPAREN expression opt_2630 RPAREN
           | JSON_MODIFY LPAREN expression COMMA expression COMMA expression RPAREN
           | JSON_PATH_EXISTS LPAREN expression COMMA expression RPAREN
           | ABS LPAREN expression RPAREN
           | ACOS LPAREN expression RPAREN
           | ASIN LPAREN expression RPAREN
           | ATAN LPAREN expression RPAREN
           | ATN2 LPAREN expression COMMA expression RPAREN
           | CEILING LPAREN expression RPAREN
           | COS LPAREN expression RPAREN
           | COT LPAREN expression RPAREN
           | DEGREES LPAREN expression RPAREN
           | EXP LPAREN expression RPAREN
           | FLOOR LPAREN expression RPAREN
           | LOG LPAREN expression opt_2632 RPAREN
           | LOG10 LPAREN expression RPAREN
           | PI LPAREN RPAREN
           | POWER LPAREN expression COMMA expression RPAREN
           | RADIANS LPAREN expression RPAREN
           | RAND LPAREN opt_2633 RPAREN
           | ROUND LPAREN expression COMMA expression opt_2635 RPAREN
           | SIGN LPAREN expression RPAREN
           | SIN LPAREN expression RPAREN
           | SQRT LPAREN expression RPAREN
           | SQUARE LPAREN expression RPAREN
           | TAN LPAREN expression RPAREN
           | GREATEST LPAREN expression_list_ RPAREN
           | LEAST LPAREN expression_list_ RPAREN
           | CERTENCODED LPAREN expression RPAREN
           | CERTPRIVATEKEY LPAREN expression COMMA expression opt_2637 RPAREN
           | CURRENT_USER
           | DATABASE_PRINCIPAL_ID LPAREN opt_2638 RPAREN
           | HAS_DBACCESS LPAREN expression RPAREN
           | HAS_PERMS_BY_NAME LPAREN expression COMMA expression COMMA expression opt_2642 RPAREN
           | IS_MEMBER LPAREN expression RPAREN
           | IS_ROLEMEMBER LPAREN expression opt_2644 RPAREN
           | IS_SRVROLEMEMBER LPAREN expression opt_2646 RPAREN
           | LOGINPROPERTY LPAREN expression COMMA expression RPAREN
           | ORIGINAL_LOGIN LPAREN RPAREN
           | PERMISSIONS LPAREN opt_2650 RPAREN
           | PWDENCRYPT LPAREN expression RPAREN
           | PWDCOMPARE LPAREN expression COMMA expression opt_2652 RPAREN
           | SESSION_USER
           | SESSIONPROPERTY LPAREN expression RPAREN
           | SUSER_ID LPAREN opt_2653 RPAREN
           | SUSER_NAME LPAREN opt_2654 RPAREN
           | SUSER_SID LPAREN opt_2658 RPAREN
           | SUSER_SNAME LPAREN opt_2659 RPAREN
           | SYSTEM_USER
           | USER
           | USER_ID LPAREN opt_2660 RPAREN
           | USER_NAME LPAREN opt_2661 RPAREN

    xml_data_type_methods ::= value_method
           | query_method
           | exist_method
           | modify_method

    dateparts_9 ::= YEAR
           | YEAR_ABBR
           | QUARTER
           | QUARTER_ABBR
           | MONTH
           | MONTH_ABBR
           | DAY
           | DAY_ABBR
           | WEEK
           | WEEK_ABBR
           | HOUR
           | HOUR_ABBR
           | MINUTE
           | MINUTE_ABBR
           | SECOND
           | SECOND_ABBR
           | MILLISECOND
           | MILLISECOND_ABBR

    dateparts_12 ::= dateparts_9
           | DAYOFYEAR
           | DAYOFYEAR_ABBR
           | MICROSECOND
           | MICROSECOND_ABBR
           | NANOSECOND
           | NANOSECOND_ABBR

    dateparts_15 ::= dateparts_12
           | WEEKDAY
           | WEEKDAY_ABBR
           | TZOFFSET
           | TZOFFSET_ABBR
           | ISO_WEEK
           | ISO_WEEK_ABBR

    dateparts_datetrunc ::= dateparts_9
           | DAYOFYEAR
           | DAYOFYEAR_ABBR
           | MICROSECOND
           | MICROSECOND_ABBR
           | ISO_WEEK
           | ISO_WEEK_ABBR

    value_method ::= grp_2662 DOT value_call

    value_call ::= grp_2663 LPAREN STRING COMMA STRING RPAREN

    query_method ::= grp_2664 DOT query_call

    query_call ::= grp_2665 LPAREN STRING RPAREN

    exist_method ::= grp_2666 DOT exist_call

    exist_call ::= grp_2667 LPAREN STRING RPAREN

    modify_method ::= grp_2668 DOT modify_call

    modify_call ::= grp_2669 LPAREN STRING RPAREN

    hierarchyid_call ::= GETANCESTOR LPAREN expression RPAREN
           | GETDESCENDANT LPAREN expression COMMA expression RPAREN
           | GETLEVEL LPAREN RPAREN
           | ISDESCENDANTOF LPAREN expression RPAREN
           | GETREPARENTEDVALUE LPAREN expression COMMA expression RPAREN
           | TOSTRING LPAREN RPAREN

    hierarchyid_static_method ::= HIERARCHYID DOUBLE_COLON grp_2670

    nodes_method ::= grp_2671 DOT NODES LPAREN STRING RPAREN

    switch_section ::= WHEN expression THEN expression

    switch_search_condition_section ::= WHEN search_condition THEN expression

    as_column_alias ::= opt_2672 column_alias

    as_table_alias ::= opt_2673 table_alias

    table_alias ::= id_

    with_table_hints ::= WITH LPAREN list_2674 table_hint list_2678 RPAREN

    deprecated_table_hint ::= LPAREN table_hint RPAREN

    sybase_legacy_hints ::= list_2679

    sybase_legacy_hint ::= HOLDLOCK
           | NOHOLDLOCK
           | READPAST
           | SHARED

    table_hint ::= NOEXPAND
           | INDEX grp_2680
           | FORCESEEK opt_2684
           | FORCESCAN
           | HOLDLOCK
           | NOLOCK
           | NOWAIT
           | PAGLOCK
           | READCOMMITTED
           | READCOMMITTEDLOCK
           | READPAST
           | READUNCOMMITTED
           | REPEATABLEREAD
           | ROWLOCK
           | SERIALIZABLE
           | SNAPSHOT
           | SPATIAL_WINDOW_MAX_CELLS EQ DECIMAL
           | TABLOCK
           | TABLOCKX
           | UPDLOCK
           | XLOCK
           | KEEPIDENTITY
           | KEEPDEFAULTS
           | IGNORE_CONSTRAINTS
           | IGNORE_TRIGGERS

    index_value ::= id_
           | DECIMAL

    column_alias_list ::= LPAREN list_2685 column_alias list_2688 RPAREN

    column_alias ::= id_
           | STRING

    table_value_constructor ::= VALUES LPAREN expression_list_ RPAREN list_2692

    expression_list_ ::= expression list_2696

    ranking_windowed_function ::= grp_2697 LPAREN RPAREN over_clause
           | NTILE LPAREN expression RPAREN over_clause

    aggregate_windowed_function ::= grp_2698 LPAREN all_distinct_expression RPAREN opt_2699
           | grp_2700 LPAREN grp_2701 RPAREN opt_2702
           | CHECKSUM_AGG LPAREN all_distinct_expression RPAREN
           | GROUPING LPAREN expression RPAREN
           | GROUPING_ID LPAREN expression_list_ RPAREN

    analytic_windowed_function ::= grp_2703 LPAREN expression RPAREN over_clause
           | grp_2704 LPAREN expression opt_2708 RPAREN over_clause
           | grp_2709 LPAREN RPAREN OVER LPAREN opt_2711 order_by_clause RPAREN
           | grp_2712 LPAREN expression RPAREN WITHIN GROUP LPAREN order_by_clause RPAREN OVER LPAREN opt_2714 RPAREN

    all_distinct_expression ::= opt_2716 expression

    over_clause ::= OVER LPAREN opt_2718 opt_2719 opt_2720 RPAREN

    row_or_range_clause ::= grp_2721 window_frame_extent

    window_frame_extent ::= window_frame_preceding
           | BETWEEN window_frame_bound AND window_frame_bound

    window_frame_bound ::= window_frame_preceding
           | window_frame_following

    window_frame_preceding ::= UNBOUNDED PRECEDING
           | DECIMAL PRECEDING
           | CURRENT ROW

    window_frame_following ::= UNBOUNDED FOLLOWING
           | DECIMAL FOLLOWING

    create_database_option ::= FILESTREAM seq_2724
           | DEFAULT_LANGUAGE EQUAL grp_2725
           | DEFAULT_FULLTEXT_LANGUAGE EQUAL grp_2726
           | NESTED_TRIGGERS EQUAL grp_2727
           | TRANSFORM_NOISE_WORDS EQUAL grp_2728
           | TWO_DIGIT_YEAR_CUTOFF EQUAL DECIMAL
           | DB_CHAINING grp_2729
           | TRUSTWORTHY grp_2730

    database_filestream_option ::= LR_BRACKET grp_2731 RR_BRACKET

    database_file_spec ::= file_group
           | file_spec

    file_group ::= FILEGROUP id_ opt_2736 opt_2737 opt_2739 file_spec list_2741

    file_spec ::= LR_BRACKET NAME EQUAL grp_2742 opt_2743 FILENAME EQUAL STRING opt_2744 opt_2747 opt_2751 opt_2754 RR_BRACKET

    entity_name ::= opt_2757 id_

    entity_name_for_azure_dw ::= id_
           | id_ DOT id_

    entity_name_for_parallel_dw ::= id_
           | id_ DOT id_

    full_table_name ::= opt_2760 id_

    table_name ::= opt_2763 grp_2764

    simple_name ::= opt_2766 id_

    func_proc_name_schema ::= opt_2768 id_

    func_proc_name_database_schema ::= opt_2769 DOT opt_2770 DOT id_
           | func_proc_name_schema

    func_proc_name_server_database_schema ::= opt_2771 DOT opt_2772 DOT opt_2773 DOT id_
           | func_proc_name_database_schema

    ddl_object ::= full_table_name
           | LOCAL_ID

    full_column_name ::= opt_2776 grp_2777

    column_name_list_with_order ::= id_ opt_2781 list_2785

    insert_column_name_list ::= list_2786 insert_column_id list_2789

    insert_column_id ::= list_2793 id_

    column_name_list ::= list_2794 id_ list_2797

    cursor_name ::= id_
           | LOCAL_ID

    on_off ::= ON
           | OFF

    clustered ::= CLUSTERED
           | NONCLUSTERED

    null_notnull ::= opt_2798 NULL_

    scalar_function_name ::= func_proc_name_server_database_schema
           | RIGHT
           | LEFT
           | BINARY_CHECKSUM
           | CHECKSUM

    begin_conversation_timer ::= BEGIN CONVERSATION TIMER LPAREN LOCAL_ID RPAREN TIMEOUT EQ time opt_2799

    begin_conversation_dialog ::= BEGIN DIALOG opt_2800 LOCAL_ID FROM SERVICE service_name TO SERVICE service_name opt_2802 ON CONTRACT contract_name opt_2814 opt_2815

    contract_name ::= grp_2816

    service_name ::= grp_2817

    end_conversation ::= END CONVERSATION LOCAL_ID opt_2818 opt_2825

    waitfor_conversation ::= opt_2826 LPAREN get_conversation RPAREN opt_2829 opt_2830

    get_conversation ::= GET CONVERSATION GROUP grp_2831 FROM queue_id opt_2832

    queue_id ::= seq_2833
           | id_

    send_conversation ::= SEND ON CONVERSATION grp_2834 MESSAGE TYPE expression opt_2837 opt_2838

    data_type ::= grp_2839 LPAREN MAX RPAREN
           | id_ LPAREN DECIMAL COMMA DECIMAL RPAREN
           | id_ LPAREN DECIMAL RPAREN
           | id_ IDENTITY opt_2841
           | DOUBLE opt_2842
           | id_

    constant ::= STRING
           | BINARY
           | opt_2843 grp_2844
           | opt_2845 DOLLAR opt_2847 grp_2848
           | parameter

    primitive_constant ::= STRING
           | BINARY
           | grp_2849
           | DOLLAR opt_2851 grp_2852
           | parameter

    keyword ::= ABORT
           | ABSOLUTE
           | ACCENT_SENSITIVITY
           | ACCESS
           | ACTION
           | ACTIVATION
           | ACTIVE
           | ADD
           | ADDRESS
           | AES_128
           | AES_192
           | AES_256
           | AFFINITY
           | AFTER
           | AGGREGATE
           | ALGORITHM
           | ALL_CONSTRAINTS
           | ALL_ERRORMSGS
           | ALL_INDEXES
           | ALL_LEVELS
           | ALLOW_ENCRYPTED_VALUE_MODIFICATIONS
           | ALLOW_PAGE_LOCKS
           | ALLOW_ROW_LOCKS
           | ALLOW_SNAPSHOT_ISOLATION
           | ALLOWED
           | ALWAYS
           | ANSI_DEFAULTS
           | ANSI_NULL_DEFAULT
           | ANSI_NULL_DFLT_OFF
           | ANSI_NULL_DFLT_ON
           | ANSI_NULLS
           | ANSI_PADDING
           | ANSI_WARNINGS
           | APP_NAME
           | APPLICATION_LOG
           | APPLOCK_MODE
           | APPLOCK_TEST
           | APPLY
           | ARITHABORT
           | ARITHIGNORE
           | ASCII
           | ASSEMBLY
           | ASSEMBLYPROPERTY
           | AT_KEYWORD
           | AUDIT
           | AUDIT_GUID
           | AUTO
           | AUTO_CLEANUP
           | AUTO_CLOSE
           | AUTO_CREATE_STATISTICS
           | AUTO_DROP
           | AUTO_SHRINK
           | AUTO_UPDATE_STATISTICS
           | AUTO_UPDATE_STATISTICS_ASYNC
           | AUTOGROW_ALL_FILES
           | AUTOGROW_SINGLE_FILE
           | AVAILABILITY
           | AVG
           | BACKUP_CLONEDB
           | BACKUP_PRIORITY
           | BASE64
           | BEGIN_DIALOG
           | BIGINT
           | BINARY_KEYWORD
           | BINARY_CHECKSUM
           | BINDING
           | BLOB_STORAGE
           | BROKER
           | BROKER_INSTANCE
           | BULK_LOGGED
           | CALLER
           | CAP_CPU_PERCENT
           | CAST
           | TRY_CAST
           | CATALOG
           | CATCH
           | CERT_ID
           | CERTENCODED
           | CERTPRIVATEKEY
           | CHANGE
           | CHANGE_RETENTION
           | CHANGE_TRACKING
           | CHAR
           | CHARINDEX
           | CHECKALLOC
           | CHECKCATALOG
           | CHECKCONSTRAINTS
           | CHECKDB
           | CHECKFILEGROUP
           | CHECKSUM
           | CHECKSUM_AGG
           | CHECKTABLE
           | CLEANTABLE
           | CLEANUP
           | CLONEDATABASE
           | COL_LENGTH
           | COL_NAME
           | COLLECTION
           | COLUMN_ENCRYPTION_KEY
           | COLUMN_MASTER_KEY
           | COLUMNPROPERTY
           | COLUMNS
           | COLUMNSTORE
           | COLUMNSTORE_ARCHIVE
           | COMMITTED
           | COMPATIBILITY_LEVEL
           | COMPRESS_ALL_ROW_GROUPS
           | COMPRESSION_DELAY
           | CONCAT
           | CONCAT_WS
           | CONCAT_NULL_YIELDS_NULL
           | CONTENT
           | CONTROL
           | COOKIE
           | COUNT
           | COUNT_BIG
           | COUNTER
           | CPU
           | CREATE_NEW
           | CREATION_DISPOSITION
           | CREDENTIAL
           | CRYPTOGRAPHIC
           | CUME_DIST
           | CURSOR_CLOSE_ON_COMMIT
           | CURSOR_DEFAULT
           | CURSOR_STATUS
           | DATA
           | DATA_PURITY
           | DATABASE_PRINCIPAL_ID
           | DATABASEPROPERTYEX
           | DATALENGTH
           | DATE_CORRELATION_OPTIMIZATION
           | DATEADD
           | DATEDIFF
           | DATENAME
           | DATEPART
           | DAYS
           | DB_CHAINING
           | DB_FAILOVER
           | DB_ID
           | DB_NAME
           | DBCC
           | DBREINDEX
           | DECRYPTION
           | DEFAULT_DOUBLE_QUOTE
           | DEFAULT_FULLTEXT_LANGUAGE
           | DEFAULT_LANGUAGE
           | DEFINITION
           | DELAY
           | DELAYED_DURABILITY
           | DELETED
           | DENSE_RANK
           | DEPENDENTS
           | DES
           | DESCRIPTION
           | DESX
           | DETERMINISTIC
           | DHCP
           | DIALOG
           | DIFFERENCE
           | DIRECTORY_NAME
           | DISABLE
           | DISABLE_BROKER
           | DISABLED
           | DOCUMENT
           | DROP_EXISTING
           | DROPCLEANBUFFERS
           | DYNAMIC
           | ELEMENTS
           | EMERGENCY
           | EMPTY
           | ENABLE
           | ENABLE_BROKER
           | ENCRYPTED
           | ENCRYPTED_VALUE
           | ENCRYPTION
           | ENCRYPTION_TYPE
           | ENDPOINT_URL
           | ERROR_BROKER_CONVERSATIONS
           | ESTIMATEONLY
           | EXCLUSIVE
           | EXECUTABLE
           | EXIST
           | EXIST_SQUARE_BRACKET
           | EXPAND
           | EXPIRY_DATE
           | EXPLICIT
           | EXTENDED_LOGICAL_CHECKS
           | FAIL_OPERATION
           | FAILOVER_MODE
           | FAILURE
           | FAILURE_CONDITION_LEVEL
           | FAST
           | FAST_FORWARD
           | FILE_ID
           | FILE_IDEX
           | FILE_NAME
           | FILEGROUP
           | FILEGROUP_ID
           | FILEGROUP_NAME
           | FILEGROUPPROPERTY
           | FILEGROWTH
           | FILENAME
           | FILEPATH
           | FILEPROPERTY
           | FILEPROPERTYEX
           | FILESTREAM
           | FILTER
           | FIRST
           | FIRST_VALUE
           | FMTONLY
           | FOLLOWING
           | FORCE
           | FORCE_FAILOVER_ALLOW_DATA_LOSS
           | FORCED
           | FORCEPLAN
           | FORCESCAN
           | FORMAT
           | FORWARD_ONLY
           | FREE
           | FULLSCAN
           | FULLTEXT
           | FULLTEXTCATALOGPROPERTY
           | FULLTEXTSERVICEPROPERTY
           | GB
           | GENERATED
           | GETDATE
           | GETUTCDATE
           | GLOBAL
           | GO
           | GREATEST
           | GROUP_MAX_REQUESTS
           | GROUPING
           | GROUPING_ID
           | HADR
           | HAS_DBACCESS
           | HAS_PERMS_BY_NAME
           | HASH
           | HEALTH_CHECK_TIMEOUT
           | HIDDEN_KEYWORD
           | HIGH
           | HONOR_BROKER_PRIORITY
           | HOURS
           | IDENT_CURRENT
           | IDENT_INCR
           | IDENT_SEED
           | IDENTITY_VALUE
           | IGNORE_CONSTRAINTS
           | IGNORE_DUP_KEY
           | IGNORE_NONCLUSTERED_COLUMNSTORE_INDEX
           | IGNORE_REPLICATED_TABLE_CACHE
           | IGNORE_TRIGGERS
           | IMMEDIATE
           | IMPERSONATE
           | IMPLICIT_TRANSACTIONS
           | IMPORTANCE
           | INCLUDE_NULL_VALUES
           | INCREMENTAL
           | INDEX_COL
           | INDEXKEY_PROPERTY
           | INDEXPROPERTY
           | INITIATOR
           | INPUT
           | INSENSITIVE
           | INSERTED
           | INT
           | IP
           | IS_MEMBER
           | IS_ROLEMEMBER
           | IS_SRVROLEMEMBER
           | ISJSON
           | ISOLATION
           | JOB
           | JSON
           | JSON_OBJECT
           | JSON_ARRAY
           | JSON_VALUE
           | JSON_QUERY
           | JSON_MODIFY
           | JSON_PATH_EXISTS
           | KB
           | KEEP
           | KEEPDEFAULTS
           | KEEPFIXED
           | KEEPIDENTITY
           | KEY_SOURCE
           | KEYS
           | KEYSET
           | LAG
           | LAST
           | LAST_VALUE
           | LEAD
           | LEAST
           | LEN
           | LEVEL
           | LIST
           | LISTENER
           | LISTENER_URL
           | LOB_COMPACTION
           | LOCAL
           | LOCATION
           | LOCK
           | LOCK_ESCALATION
           | LOGIN
           | LOGINPROPERTY
           | LOOP
           | LOW
           | LOWER
           | LTRIM
           | MANUAL
           | MARK
           | MASKED
           | MATERIALIZED
           | MAX
           | MAX_CPU_PERCENT
           | MAX_DOP
           | MAX_FILES
           | MAX_IOPS_PER_VOLUME
           | MAX_MEMORY_PERCENT
           | MAX_PROCESSES
           | MAX_QUEUE_READERS
           | MAX_ROLLOVER_FILES
           | MAXDOP
           | MAXRECURSION
           | MAXSIZE
           | MB
           | MEDIUM
           | MEMORY_OPTIMIZED_DATA
           | MESSAGE
           | MIN
           | MIN_ACTIVE_ROWVERSION
           | MIN_CPU_PERCENT
           | MIN_IOPS_PER_VOLUME
           | MIN_MEMORY_PERCENT
           | MINUTES
           | MIRROR_ADDRESS
           | MIXED_PAGE_ALLOCATION
           | MODE
           | MODIFY
           | MODIFY_SQUARE_BRACKET
           | MOVE
           | MULTI_USER
           | NAME
           | NCHAR
           | NESTED_TRIGGERS
           | NEW_ACCOUNT
           | NEW_BROKER
           | NEW_PASSWORD
           | NEWNAME
           | NEXT
           | NO
           | NO_INFOMSGS
           | NO_QUERYSTORE
           | NO_STATISTICS
           | NO_TRUNCATE
           | NO_WAIT
           | NOCOUNT
           | NODES
           | NOEXEC
           | NOEXPAND
           | NOINDEX
           | NOLOCK
           | NON_TRANSACTED_ACCESS
           | NORECOMPUTE
           | NORECOVERY
           | NOTIFICATIONS
           | NOWAIT
           | NTILE
           | NULL_DOUBLE_QUOTE
           | NUMANODE
           | NUMBER
           | NUMERIC_ROUNDABORT
           | OBJECT
           | OBJECT_DEFINITION
           | OBJECT_ID
           | OBJECT_NAME
           | OBJECT_SCHEMA_NAME
           | OBJECTPROPERTY
           | OBJECTPROPERTYEX
           | OFFLINE
           | OFFSET
           | OLD_ACCOUNT
           | ONLINE
           | ONLY
           | OPEN_EXISTING
           | OPENJSON
           | OPTIMISTIC
           | OPTIMIZE
           | OPTIMIZE_FOR_SEQUENTIAL_KEY
           | ORIGINAL_DB_NAME
           | ORIGINAL_LOGIN
           | OUT
           | OUTPUT
           | OVERRIDE
           | OWNER
           | OWNERSHIP
           | PAD_INDEX
           | PAGE_VERIFY
           | PAGECOUNT
           | PAGLOCK
           | PARAMETERIZATION
           | PARSENAME
           | PARSEONLY
           | PARTITION
           | PARTITIONS
           | PARTNER
           | PATH
           | PATINDEX
           | PAUSE
           | PDW_SHOWSPACEUSED
           | PERCENT_RANK
           | PERCENTILE_CONT
           | PERCENTILE_DISC
           | PERMISSIONS
           | PERSIST_SAMPLE_PERCENT
           | PHYSICAL_ONLY
           | POISON_MESSAGE_HANDLING
           | POOL
           | PORT
           | PRECEDING
           | PRIMARY_ROLE
           | PRIOR
           | PRIORITY
           | PRIORITY_LEVEL
           | PRIVATE
           | PRIVATE_KEY
           | PRIVILEGES
           | PROCCACHE
           | PROCEDURE_NAME
           | PROPERTY
           | PROVIDER
           | PROVIDER_KEY_NAME
           | PWDCOMPARE
           | PWDENCRYPT
           | QUERY
           | QUERY_SQUARE_BRACKET
           | QUEUE
           | QUEUE_DELAY
           | QUOTED_IDENTIFIER
           | QUOTENAME
           | RANDOMIZED
           | RANGE
           | RANK
           | RC2
           | RC4
           | RC4_128
           | READ_COMMITTED_SNAPSHOT
           | READ_ONLY
           | READ_ONLY_ROUTING_LIST
           | READ_WRITE
           | READCOMMITTED
           | READCOMMITTEDLOCK
           | READONLY
           | READPAST
           | READUNCOMMITTED
           | READWRITE
           | REBUILD
           | RECEIVE
           | RECOMPILE
           | RECOVERY
           | RECURSIVE_TRIGGERS
           | RELATIVE
           | REMOTE
           | REMOTE_PROC_TRANSACTIONS
           | REMOTE_SERVICE_NAME
           | REMOVE
           | REORGANIZE
           | REPAIR_ALLOW_DATA_LOSS
           | REPAIR_FAST
           | REPAIR_REBUILD
           | REPEATABLE
           | REPEATABLEREAD
           | REPLACE
           | REPLICA
           | REPLICATE
           | REQUEST_MAX_CPU_TIME_SEC
           | REQUEST_MAX_MEMORY_GRANT_PERCENT
           | REQUEST_MEMORY_GRANT_TIMEOUT_SEC
           | REQUIRED_SYNCHRONIZED_SECONDARIES_TO_COMMIT
           | RESAMPLE
           | RESERVE_DISK_SPACE
           | RESOURCE
           | RESOURCE_MANAGER_LOCATION
           | RESTRICTED_USER
           | RESUMABLE
           | RETENTION
           | REVERSE
           | ROBUST
           | ROOT
           | ROUTE
           | ROW
           | ROW_NUMBER
           | ROWGUID
           | ROWLOCK
           | ROWS
           | RTRIM
           | SAMPLE
           | SCHEMA_ID
           | SCHEMA_NAME
           | SCHEMABINDING
           | SCOPE_IDENTITY
           | SCOPED
           | SCROLL
           | SCROLL_LOCKS
           | SEARCH
           | SECONDARY
           | SECONDARY_ONLY
           | SECONDARY_ROLE
           | SECONDS
           | SECRET
           | SECURABLES
           | SECURITY
           | SECURITY_LOG
           | SEEDING_MODE
           | SELF
           | SEMI_SENSITIVE
           | SEND
           | SENT
           | SEQUENCE
           | SEQUENCE_NUMBER
           | SERIALIZABLE
           | SERVERPROPERTY
           | SERVICEBROKER
           | SESSIONPROPERTY
           | SESSION_TIMEOUT
           | SETERROR
           | SHARE
           | SHARED
           | SHOWCONTIG
           | SHOWPLAN
           | SHOWPLAN_ALL
           | SHOWPLAN_TEXT
           | SHOWPLAN_XML
           | SIGNATURE
           | SIMPLE
           | SINGLE_USER
           | SIZE
           | SMALLINT
           | SNAPSHOT
           | SORT_IN_TEMPDB
           | SOUNDEX
           | SPACE_KEYWORD
           | SPARSE
           | SPATIAL_WINDOW_MAX_CELLS
           | SQL_VARIANT_PROPERTY
           | STANDBY
           | START_DATE
           | STATIC
           | STATISTICS_INCREMENTAL
           | STATISTICS_NORECOMPUTE
           | STATS_DATE
           | STATS_STREAM
           | STATUS
           | STATUSONLY
           | STDEV
           | STDEVP
           | STOPLIST
           | STR
           | STRING_AGG
           | STRING_ESCAPE
           | STUFF
           | SUBJECT
           | SUBSCRIBE
           | SUBSCRIPTION
           | SUBSTRING
           | SUM
           | SUSER_ID
           | SUSER_NAME
           | SUSER_SID
           | SUSER_SNAME
           | SUSPEND
           | SYMMETRIC
           | SYNCHRONOUS_COMMIT
           | SYNONYM
           | SYSTEM
           | TABLERESULTS
           | TABLOCK
           | TABLOCKX
           | TAKE
           | TARGET_RECOVERY_TIME
           | TB
           | TEXTIMAGE_ON
           | THROW
           | TIES
           | TIME
           | TIMEOUT
           | TIMER
           | TINYINT
           | TORN_PAGE_DETECTION
           | TRACKING
           | TRANSACTION_ID
           | TRANSFORM_NOISE_WORDS
           | TRANSLATE
           | TRIM
           | TRIPLE_DES
           | TRIPLE_DES_3KEY
           | TRUSTWORTHY
           | TRY
           | TSQL
           | TWO_DIGIT_YEAR_CUTOFF
           | TYPE
           | TYPE_ID
           | TYPE_NAME
           | TYPE_WARNING
           | TYPEPROPERTY
           | UNBOUNDED
           | UNCOMMITTED
           | UNICODE
           | UNKNOWN
           | UNLIMITED
           | UNMASK
           | UOW
           | UPDLOCK
           | UPPER
           | USER_ID
           | USER_NAME
           | USING
           | VALID_XML
           | VALIDATION
           | VALUE
           | VALUE_SQUARE_BRACKET
           | VAR
           | VARBINARY_KEYWORD
           | VARP
           | VERIFY_CLONEDB
           | VERSION
           | VIEW_METADATA
           | VIEWS
           | WAIT
           | WELL_FORMED_XML
           | WITHOUT_ARRAY_WRAPPER
           | WORK
           | WORKLOAD
           | XLOCK
           | XML
           | XML_COMPRESSION
           | XMLDATA
           | XMLNAMESPACES
           | XMLSCHEMA
           | XSINIL
           | ZONE
           | ABORT_AFTER_WAIT
           | ABSENT
           | ADMINISTER
           | AES
           | ALLOW_CONNECTIONS
           | ALLOW_MULTIPLE_EVENT_LOSS
           | ALLOW_SINGLE_EVENT_LOSS
           | ANONYMOUS
           | APPEND
           | APPLICATION
           | ASYMMETRIC
           | ASYNCHRONOUS_COMMIT
           | AUTHENTICATE
           | AUTHENTICATION
           | AUTOMATED_BACKUP_PREFERENCE
           | AUTOMATIC
           | AVAILABILITY_MODE
           | BEFORE
           | BLOCK
           | BLOCKERS
           | BLOCKSIZE
           | BLOCKING_HIERARCHY
           | BUFFER
           | BUFFERCOUNT
           | CACHE
           | CALLED
           | CERTIFICATE
           | CHANGETABLE
           | CHANGES
           | CHECK_POLICY
           | CHECK_EXPIRATION
           | CLASSIFIER_FUNCTION
           | CLUSTER
           | COMPRESS
           | COMPRESSION
           | CONNECT
           | CONNECTION
           | CONFIGURATION
           | CONNECTIONPROPERTY
           | CONTAINMENT
           | CONTEXT
           | CONTEXT_INFO
           | CONTINUE_AFTER_ERROR
           | CONTRACT
           | CONTRACT_NAME
           | CONVERSATION
           | COPY_ONLY
           | CURRENT_REQUEST_ID
           | CURRENT_TRANSACTION_ID
           | CYCLE
           | DATA_COMPRESSION
           | DATA_SOURCE
           | DATABASE_MIRRORING
           | DATASPACE
           | DDL
           | DECOMPRESS
           | DEFAULT_DATABASE
           | DEFAULT_SCHEMA
           | DIAGNOSTICS
           | DIFFERENTIAL
           | DISTRIBUTION
           | DTC_SUPPORT
           | ENABLED
           | ENDPOINT
           | ERROR
           | ERROR_LINE
           | ERROR_MESSAGE
           | ERROR_NUMBER
           | ERROR_PROCEDURE
           | ERROR_SEVERITY
           | ERROR_STATE
           | EVENT
           | EVENTDATA
           | EVENT_RETENTION_MODE
           | EXECUTABLE_FILE
           | EXPIREDATE
           | EXTENSION
           | EXTERNAL_ACCESS
           | FAILOVER
           | FAILURECONDITIONLEVEL
           | FAN_IN
           | FILE_SNAPSHOT
           | FORCESEEK
           | FORCE_SERVICE_ALLOW_DATA_LOSS
           | FORMATMESSAGE
           | GET
           | GET_FILESTREAM_TRANSACTION_CONTEXT
           | GETANCESTOR
           | GETANSINULL
           | GETDESCENDANT
           | GETLEVEL
           | GETREPARENTEDVALUE
           | GETROOT
           | GOVERNOR
           | HASHED
           | HEALTHCHECKTIMEOUT
           | HEAP
           | HIERARCHYID
           | HOST_ID
           | HOST_NAME
           | IIF
           | IO
           | INCLUDE
           | INCREMENT
           | INFINITE
           | INIT
           | INSTEAD
           | ISDESCENDANTOF
           | ISNULL
           | ISNUMERIC
           | KERBEROS
           | KEY_PATH
           | KEY_STORE_PROVIDER_NAME
           | LANGUAGE
           | LIBRARY
           | LIFETIME
           | LINKED
           | LINUX
           | LISTENER_IP
           | LISTENER_PORT
           | LOCAL_SERVICE_NAME
           | LOG
           | MASK
           | MATCHED
           | MASTER
           | MAX_MEMORY
           | MAXTRANSFER
           | MAXVALUE
           | MAX_DISPATCH_LATENCY
           | MAX_DURATION
           | MAX_EVENT_SIZE
           | MAX_SIZE
           | MAX_OUTSTANDING_IO_PER_VOLUME
           | MEDIADESCRIPTION
           | MEDIANAME
           | MEMBER
           | MEMORY_PARTITION_MODE
           | MESSAGE_FORWARDING
           | MESSAGE_FORWARD_SIZE
           | MINVALUE
           | MIRROR
           | MUST_CHANGE
           | NEWID
           | NEWSEQUENTIALID
           | NOFORMAT
           | NOINIT
           | NONE
           | NOREWIND
           | NOSKIP
           | NOUNLOAD
           | NO_CHECKSUM
           | NO_COMPRESSION
           | NO_EVENT_LOSS
           | NOTIFICATION
           | NTLM
           | OLD_PASSWORD
           | ON_FAILURE
           | OPERATIONS
           | PAGE
           | PARAM_NODE
           | PARTIAL
           | PASSWORD
           | PERMISSION_SET
           | PER_CPU
           | PER_DB
           | PER_NODE
           | PERSISTED
           | PLATFORM
           | POLICY
           | PREDICATE
           | PROCESS
           | PROFILE
           | PYTHON
           | R
           | READ_WRITE_FILEGROUPS
           | REGENERATE
           | RELATED_CONVERSATION
           | RELATED_CONVERSATION_GROUP
           | REQUIRED
           | RESET
           | RESOURCES
           | RESTART
           | RESUME
           | RETAINDAYS
           | RETURNS
           | REWIND
           | ROLE
           | ROUND_ROBIN
           | ROWCOUNT_BIG
           | RSA_512
           | RSA_1024
           | RSA_2048
           | RSA_3072
           | RSA_4096
           | SAFETY
           | SAFE
           | SCHEDULER
           | SCHEME
           | SCRIPT
           | SERVER
           | SERVICE
           | SERVICE_BROKER
           | SERVICE_NAME
           | SESSION
           | SESSION_CONTEXT
           | SETTINGS
           | SHRINKLOG
           | SID
           | SKIP_KEYWORD
           | SOFTNUMA
           | SOURCE
           | SPECIFICATION
           | SPLIT
           | SQL
           | SQLDUMPERFLAGS
           | SQLDUMPERPATH
           | SQLDUMPERTIMEOUT
           | STATE
           | STATS
           | START
           | STARTED
           | STARTUP_STATE
           | STOP
           | STOPPED
           | STOP_ON_ERROR
           | SUPPORTED
           | SWITCH
           | TAPE
           | TARGET
           | TCP
           | TOSTRING
           | TRACE
           | TRACK_CAUSALITY
           | TRANSFER
           | UNCHECKED
           | UNLOCK
           | UNSAFE
           | URL
           | USED
           | VERBOSELOGGING
           | VISIBILITY
           | WAIT_AT_LOW_PRIORITY
           | WINDOWS
           | WITHOUT
           | WITNESS
           | XACT_ABORT
           | XACT_STATE
           | ABS
           | ACOS
           | ASIN
           | ATAN
           | ATN2
           | CEILING
           | COS
           | COT
           | DEGREES
           | EXP
           | FLOOR
           | LOG10
           | PI
           | POWER
           | RADIANS
           | RAND
           | ROUND
           | SIGN
           | SIN
           | SQRT
           | SQUARE
           | TAN
           | CURRENT_TIMEZONE
           | CURRENT_TIMEZONE_ID
           | DATE_BUCKET
           | DATEDIFF_BIG
           | DATEFROMPARTS
           | DATETIME2FROMPARTS
           | DATETIMEFROMPARTS
           | DATETIMEOFFSETFROMPARTS
           | DATETRUNC
           | DAY
           | EOMONTH
           | ISDATE
           | MONTH
           | SMALLDATETIMEFROMPARTS
           | SWITCHOFFSET
           | SYSDATETIME
           | SYSDATETIMEOFFSET
           | SYSUTCDATETIME
           | TIMEFROMPARTS
           | TODATETIMEOFFSET
           | YEAR
           | QUARTER
           | DAYOFYEAR
           | WEEK
           | HOUR
           | MINUTE
           | SECOND
           | MILLISECOND
           | MICROSECOND
           | NANOSECOND
           | TZOFFSET
           | ISO_WEEK
           | WEEKDAY
           | YEAR_ABBR
           | QUARTER_ABBR
           | MONTH_ABBR
           | DAYOFYEAR_ABBR
           | DAY_ABBR
           | WEEK_ABBR
           | HOUR_ABBR
           | MINUTE_ABBR
           | SECOND_ABBR
           | MILLISECOND_ABBR
           | MICROSECOND_ABBR
           | NANOSECOND_ABBR
           | TZOFFSET_ABBR
           | ISO_WEEK_ABBR
           | WEEKDAY_ABBR
           | SP_EXECUTESQL
           | VARCHAR
           | NVARCHAR
           | PRECISION
           | FILESTREAM_ON

    id_ ::=
           IDENTIFIER

    simple_id ::= IDENTIFIER

    id_or_string ::= id_
           | STRING

    comparison_operator ::= EQ
           | GT
           | LT
           | LT EQ
           | GT EQ
           | LT GT
           | BANG EQ
           | BANG GT
           | BANG LT

    assignment_operator ::= PLUSEQ
           | MINUSEQ
           | STAREQ
           | SLASHEQ
           | PERCENTEQ
           | AMPEQ
           | CARETEQ
           | PIPEEQ

    file_size ::= DECIMAL opt_2854

    list_1 ::= $empty | list_1 batch

    list_2 ::= $empty | list_2 go_statement

    opt_3 ::= execute_body_batch | $empty

    list_5 ::= sql_clauses | list_5 sql_clauses

    grp_4 ::= go_statement | list_5

    list_6 ::= $empty | list_6 go_statement

    list_7 ::= $empty | list_7 go_statement

    opt_8 ::= SEMI | $empty

    opt_9 ::= SEMI | $empty

    opt_10 ::= SEMI | $empty

    opt_11 ::= SEMI | $empty

    opt_12 ::= SEMI | $empty

    opt_13 ::= SEMI | $empty

    opt_14 ::= SEMI | $empty

    list_15 ::= $empty | list_15 sql_clauses

    opt_16 ::= SEMI | $empty

    opt_17 ::= SEMI | $empty

    opt_18 ::= SEMI | $empty

    opt_19 ::= SEMI | $empty

    opt_20 ::= SEMI | $empty

    opt_21 ::= expression | $empty

    opt_22 ::= SEMI | $empty

    seq_23 ::= ELSE sql_clauses

    opt_24 ::= seq_23 | $empty

    opt_25 ::= SEMI | $empty

    seq_26 ::= throw_error_number COMMA throw_message COMMA throw_state

    opt_27 ::= seq_26 | $empty

    opt_28 ::= SEMI | $empty

    opt_29 ::= SEMI | $empty

    list_30 ::= sql_clauses | list_30 sql_clauses

    opt_31 ::= SEMI | $empty

    opt_32 ::= SEMI | $empty

    list_33 ::= $empty | list_33 sql_clauses

    opt_34 ::= SEMI | $empty

    opt_35 ::= receive_statement | $empty

    opt_36 ::= COMMA | $empty

    grp_38 ::= DELAY | TIME | TIMEOUT

    grp_37 ::= grp_38 time

    opt_39 ::= grp_37 | $empty

    opt_40 ::= expression | $empty

    opt_41 ::= SEMI | $empty

    opt_43 ::= SEMI | $empty

    opt_44 ::= SEMI | $empty

    grp_42 ::= sql_clauses | BREAK opt_43 | CONTINUE opt_44

    grp_45 ::= expression | DOUBLE_QUOTE_ID

    seq_46 ::= COMMA LOCAL_ID

    list_47 ::= $empty | list_47 seq_46

    opt_48 ::= SEMI | $empty

    grp_49 ::= DECIMAL | STRING | LOCAL_ID

    grp_51 ::= constant_LOCAL_ID | NULL_

    grp_50 ::= COMMA grp_51

    list_52 ::= $empty | list_52 grp_50

    grp_54 ::= LOG | SETERROR | NOWAIT

    grp_53 ::= WITH grp_54

    opt_55 ::= grp_53 | $empty

    opt_56 ::= SEMI | $empty

    grp_57 ::= STRING | LOCAL_ID | DOUBLE_QUOTE_ID

    grp_59 ::= DECIMAL | STRING | LOCAL_ID

    grp_58 ::= COMMA grp_59

    list_60 ::= $empty | list_60 grp_58

    opt_61 ::= COMMA | $empty

    seq_62 ::= opt_61 NAME EQUAL id_

    opt_63 ::= seq_62 | $empty

    opt_64 ::= COMMA | $empty

    seq_65 ::= opt_64 PASSWORD EQUAL STRING

    opt_66 ::= seq_65 | $empty

    opt_67 ::= COMMA | $empty

    seq_68 ::= opt_67 DEFAULT_SCHEMA EQUAL id_

    opt_69 ::= seq_68 | $empty

    seq_70 ::= id_ DOT

    opt_71 ::= seq_70 | $empty

    opt_72 ::= COMMA | $empty

    seq_73 ::= opt_72 PASSWORD EQUAL STRING

    opt_74 ::= seq_73 | $empty

    opt_75 ::= COMMA | $empty

    seq_76 ::= opt_75 DEFAULT_SCHEMA EQUAL id_

    opt_77 ::= seq_76 | $empty

    seq_78 ::= IF EXISTS

    opt_79 ::= seq_78 | $empty

    seq_80 ::= id_ DOT

    opt_81 ::= seq_80 | $empty

    opt_82 ::= alter_assembly_from_clause | $empty

    opt_83 ::= alter_assembly_with_clause | $empty

    opt_84 ::= alter_assembly_drop_clause | $empty

    opt_85 ::= alter_assembly_add_clause | $empty

    grp_86 ::= client_assembly_specifier | alter_assembly_file_bits

    seq_87 ::= alter_assembly_as id_

    opt_88 ::= seq_87 | $empty

    grp_89 ::= SAFE | EXTERNAL_ACCESS | UNSAFE

    seq_90 ::= AUTHORIZATION id_

    opt_91 ::= seq_90 | $empty

    opt_93 ::= COMMA | $empty

    grp_94 ::= STRING | BINARY

    grp_92 ::= opt_93 grp_94

    list_95 ::= grp_92 | list_95 grp_92

    grp_97 ::= SAFE | EXTERNAL_ACCESS | UNSAFE

    grp_96 ::= WITH PERMISSION_SET EQUAL grp_97

    opt_98 ::= grp_96 | $empty

    seq_99 ::= IF EXISTS

    opt_100 ::= seq_99 | $empty

    opt_101 ::= COMMA | $empty

    seq_102 ::= opt_101 id_

    list_103 ::= seq_102 | list_103 seq_102

    seq_104 ::= WITH NO DEPENDENTS

    opt_105 ::= seq_104 | $empty

    grp_106 ::= asymmetric_key_option | REMOVE PRIVATE KEY

    seq_107 ::= COMMA asymmetric_key_password_change_option

    opt_108 ::= seq_107 | $empty

    seq_109 ::= AUTHORIZATION id_

    opt_110 ::= seq_109 | $empty

    grp_112 ::= FILE EQUAL STRING | EXECUTABLE_FILE EQUAL STRING | ASSEMBLY id_ | PROVIDER id_

    grp_111 ::= FROM grp_112

    opt_113 ::= grp_111 | $empty

    grp_116 ::= RSA_4096 | RSA_3072 | RSA_2048 | RSA_1024 | RSA_512

    grp_117 ::= CREATE_NEW | OPEN_EXISTING

    grp_115 ::= ALGORITHM EQUAL grp_116 | PROVIDER_KEY_NAME EQUAL STRING | CREATION_DISPOSITION EQUAL grp_117

    grp_114 ::= WITH grp_115

    opt_118 ::= grp_114 | $empty

    seq_119 ::= ENCRYPTION BY PASSWORD EQUAL STRING

    opt_120 ::= seq_119 | $empty

    seq_121 ::= REMOVE PROVIDER KEY

    opt_122 ::= seq_121 | $empty

    seq_123 ::= class_type colon_colon

    opt_124 ::= seq_123 | $empty

    seq_125 ::= class_type_for_sql_database colon_colon

    opt_126 ::= seq_125 | $empty

    seq_127 ::= class_type_for_azure_dw colon_colon

    opt_128 ::= seq_127 | $empty

    seq_129 ::= class_type_for_parallel_dw colon_colon

    opt_130 ::= seq_129 | $empty

    grp_131 ::= ENCRYPTION | MASTER

    grp_133 ::= CONFIGURATION | CREDENTIAL | RESOURCE GOVERNOR

    grp_132 ::= AUDIT SPECIFICATION | ENCRYPTION KEY | EVENT SESSION | SCOPED grp_133

    opt_134 ::= grp_132 | $empty

    grp_135 ::= DATABASE | OBJECT | SERVER

    grp_136 ::= DATA SOURCE | FILE FORMAT | LIBRARY | RESOURCE POOL | TABLE | CATALOG | STOPLIST

    grp_137 ::= FUNCTION | SCHEME

    opt_139 ::= SPECIFICATION | $empty

    seq_140 ::= AUDIT opt_139

    grp_138 ::= seq_140 | ROLE

    opt_141 ::= grp_138 | $empty

    grp_142 ::= DATABASE | SERVER

    grp_145 ::= PRIMARY | SECONDARY_ONLY | SECONDARY | NONE

    grp_146 ::= ON | OFF

    grp_144 ::= AUTOMATED_BACKUP_PREFERENCE EQUAL grp_145 | FAILURE_CONDITION_LEVEL EQUAL DECIMAL | HEALTH_CHECK_TIMEOUT EQUAL DECIMAL | DB_FAILOVER EQUAL grp_146 | REQUIRED_SYNCHRONIZED_SECONDARIES_TO_COMMIT EQUAL DECIMAL

    grp_143 ::= grp_144 RR_BRACKET

    seq_149 ::= ENDPOINT_URL EQUAL STRING

    opt_150 ::= seq_149 | $empty

    opt_152 ::= COMMA | $empty

    grp_153 ::= SYNCHRONOUS_COMMIT | ASYNCHRONOUS_COMMIT

    grp_151 ::= opt_152 AVAILABILITY_MODE EQUAL grp_153

    opt_154 ::= grp_151 | $empty

    opt_156 ::= COMMA | $empty

    grp_157 ::= AUTOMATIC | MANUAL

    grp_155 ::= opt_156 FAILOVER_MODE EQUAL grp_157

    opt_158 ::= grp_155 | $empty

    opt_160 ::= COMMA | $empty

    grp_161 ::= AUTOMATIC | MANUAL

    grp_159 ::= opt_160 SEEDING_MODE EQUAL grp_161

    opt_162 ::= grp_159 | $empty

    opt_163 ::= COMMA | $empty

    seq_164 ::= opt_163 BACKUP_PRIORITY EQUAL DECIMAL

    opt_165 ::= seq_164 | $empty

    opt_167 ::= COMMA | $empty

    grp_168 ::= READ_WRITE | ALL

    grp_166 ::= opt_167 PRIMARY_ROLE LR_BRACKET ALLOW_CONNECTIONS EQUAL grp_168 RR_BRACKET

    opt_169 ::= grp_166 | $empty

    opt_170 ::= COMMA | $empty

    seq_171 ::= opt_170 SECONDARY_ROLE LR_BRACKET ALLOW_CONNECTIONS EQUAL READ_ONLY RR_BRACKET

    opt_172 ::= seq_171 | $empty

    grp_148 ::= opt_150 opt_154 opt_158 opt_162 opt_165 opt_169 opt_172

    grp_147 ::= WITH LR_BRACKET grp_148

    grp_174 ::= NO | READ_ONLY | ALL

    seq_175 ::= LR_BRACKET STRING RR_BRACKET

    grp_173 ::= ALLOW_CONNECTIONS EQUAL grp_174 | READ_ONLY_ROUTING_LIST EQUAL seq_175

    grp_177 ::= NO | READ_ONLY | ALL

    opt_180 ::= COMMA | $empty

    seq_181 ::= opt_180 STRING

    list_182 ::= $empty | list_182 seq_181

    grp_179 ::= list_182 | NONE

    grp_178 ::= LR_BRACKET grp_179 RR_BRACKET

    grp_176 ::= ALLOW_CONNECTIONS EQUAL grp_177 | READ_ONLY_ROUTING_LIST EQUAL grp_178 | SESSION_TIMEOUT EQUAL DECIMAL

    grp_185 ::= SYNCHRONOUS_COMMIT | ASYNCHRONOUS_COMMIT

    grp_186 ::= AUTOMATIC | MANUAL

    grp_187 ::= AUTOMATIC | MANUAL

    grp_184 ::= ENDPOINT_URL EQUAL STRING | AVAILABILITY_MODE EQUAL grp_185 | FAILOVER_MODE EQUAL grp_186 | SEEDING_MODE EQUAL grp_187 | BACKUP_PRIORITY EQUAL DECIMAL

    grp_189 ::= NO | READ_ONLY | ALL

    seq_190 ::= LR_BRACKET STRING RR_BRACKET

    grp_188 ::= ALLOW_CONNECTIONS EQUAL grp_189 | READ_ONLY_ROUTING_LIST EQUAL seq_190

    grp_192 ::= NO | READ_ONLY | ALL

    opt_195 ::= COMMA | $empty

    seq_196 ::= opt_195 STRING

    list_197 ::= $empty | list_197 seq_196

    grp_194 ::= list_197 | NONE

    grp_193 ::= LR_BRACKET grp_194 RR_BRACKET

    grp_191 ::= ALLOW_CONNECTIONS EQUAL grp_192 | READ_ONLY_ROUTING_LIST EQUAL grp_193 | SESSION_TIMEOUT EQUAL DECIMAL

    grp_183 ::= WITH LR_BRACKET grp_184 | SECONDARY_ROLE LR_BRACKET grp_188 | PRIMARY_ROLE LR_BRACKET grp_191

    opt_199 ::= COMMA | $empty

    grp_201 ::= SYNCHRONOUS_COMMIT | ASYNCHRONOUS_COMMIT

    grp_202 ::= AUTOMATIC | MANUAL

    grp_200 ::= LISTENER_URL EQUAL STRING COMMA AVAILABILITY_MODE EQUAL grp_201 COMMA FAILOVER_MODE EQUAL MANUAL COMMA SEEDING_MODE EQUAL grp_202 RR_BRACKET

    grp_198 ::= opt_199 STRING WITH LR_BRACKET grp_200

    list_203 ::= grp_198 | list_203 grp_198

    opt_205 ::= COMMA | $empty

    opt_208 ::= COMMA | $empty

    grp_209 ::= SYNCHRONOUS_COMMIT | ASYNCHRONOUS_COMMIT

    grp_207 ::= opt_208 AVAILABILITY_MODE EQUAL grp_209

    opt_210 ::= grp_207 | $empty

    opt_211 ::= COMMA | $empty

    seq_212 ::= opt_211 FAILOVER_MODE EQUAL MANUAL

    opt_213 ::= seq_212 | $empty

    opt_215 ::= COMMA | $empty

    grp_216 ::= AUTOMATIC | MANUAL

    grp_214 ::= opt_215 SEEDING_MODE EQUAL grp_216

    opt_217 ::= grp_214 | $empty

    grp_206 ::= LISTENER_URL EQUAL STRING opt_210 opt_213 opt_217 RR_BRACKET

    grp_204 ::= opt_205 STRING WITH LR_BRACKET grp_206

    list_218 ::= grp_204 | list_218 grp_204

    seq_220 ::= ON LR_BRACKET ip_v4_failover ip_v4_failover RR_BRACKET

    opt_223 ::= COMMA | $empty

    grp_224 ::= ip_v4_failover COMMA ip_v4_failover | ip_v6_failover

    grp_222 ::= opt_223 LR_BRACKET grp_224 RR_BRACKET

    list_225 ::= grp_222 | list_225 grp_222

    seq_226 ::= COMMA PORT EQUAL DECIMAL

    opt_227 ::= seq_226 | $empty

    grp_221 ::= list_225 RR_BRACKET opt_227

    grp_219 ::= WITH DHCP seq_220 | WITH IP LR_BRACKET grp_221

    grp_229 ::= ip_v4_failover ip_v4_failover | ip_v6_failover

    grp_228 ::= ADD IP LR_BRACKET grp_229 RR_BRACKET | PORT EQUAL DECIMAL

    grp_230 ::= CREATE | ALTER

    grp_232 ::= id_ | ANY

    opt_233 ::= COMMA | $empty

    grp_231 ::= CONTRACT_NAME EQUAL grp_232 opt_233

    opt_234 ::= grp_231 | $empty

    opt_237 ::= DOUBLE_FORWARD_SLASH | $empty

    grp_236 ::= opt_237 id_ | ANY

    opt_238 ::= COMMA | $empty

    grp_235 ::= LOCAL_SERVICE_NAME EQUAL grp_236 opt_238

    opt_239 ::= grp_235 | $empty

    grp_241 ::= STRING | ANY

    opt_242 ::= COMMA | $empty

    grp_240 ::= REMOTE_SERVICE_NAME EQUAL grp_241 opt_242

    opt_243 ::= grp_240 | $empty

    grp_245 ::= DECIMAL | DEFAULT

    grp_244 ::= PRIORITY_LEVEL EQUAL grp_245

    opt_246 ::= grp_244 | $empty

    opt_249 ::= COMMA | $empty

    opt_250 ::= COMMA | $empty

    opt_251 ::= COMMA | $empty

    grp_248 ::= FILE EQUAL STRING opt_249 | DECRYPTION BY PASSWORD EQUAL STRING opt_250 | ENCRYPTION BY PASSWORD EQUAL STRING opt_251

    list_252 ::= grp_248 | list_252 grp_248

    grp_253 ::= ON | OFF

    grp_247 ::= REMOVE PRIVATE_KEY | WITH PRIVATE KEY LR_BRACKET list_252 RR_BRACKET | WITH ACTIVE FOR BEGIN_DIALOG EQUAL grp_253

    grp_254 ::= ADD | DROP

    seq_255 ::= COMMA ALGORITHM EQUAL STRING COMMA ENCRYPTED_VALUE EQUAL BINARY

    opt_256 ::= seq_255 | $empty

    opt_257 ::= COMMA | $empty

    opt_258 ::= COMMA | $empty

    seq_259 ::= LR_BRACKET opt_257 COLUMN_MASTER_KEY EQUAL id_ COMMA ALGORITHM EQUAL STRING COMMA ENCRYPTED_VALUE EQUAL BINARY RR_BRACKET opt_258

    list_260 ::= seq_259 | list_260 seq_259

    seq_261 ::= IF EXISTS

    opt_262 ::= seq_261 | $empty

    opt_263 ::= COMMA | $empty

    seq_264 ::= opt_263 id_

    list_265 ::= seq_264 | list_265 seq_264

    seq_266 ::= IF EXISTS

    opt_267 ::= seq_266 | $empty

    opt_268 ::= COMMA | $empty

    seq_269 ::= id_ DOT

    opt_270 ::= seq_269 | $empty

    seq_271 ::= opt_268 opt_270 id_

    seq_272 ::= AUTHORIZATION id_

    opt_273 ::= seq_272 | $empty

    seq_274 ::= id_ DOT

    opt_275 ::= seq_274 | $empty

    seq_276 ::= id_ DOT

    opt_277 ::= seq_276 | $empty

    opt_278 ::= COMMA | $empty

    seq_279 ::= opt_278 id_

    list_280 ::= seq_279 | list_280 seq_279

    grp_281 ::= SERVER | DATABASE | QUEUE id_

    seq_282 ::= id_ DOT

    opt_283 ::= seq_282 | $empty

    seq_284 ::= id_ DOT

    opt_285 ::= seq_284 | $empty

    seq_286 ::= id_ DOT

    opt_287 ::= seq_286 | $empty

    seq_288 ::= IF EXISTS

    opt_289 ::= seq_288 | $empty

    seq_290 ::= IF EXISTS

    opt_291 ::= seq_290 | $empty

    opt_292 ::= COMMA | $empty

    seq_293 ::= id_ DOT

    opt_294 ::= seq_293 | $empty

    seq_295 ::= opt_292 opt_294 id_

    opt_296 ::= seq_295 | $empty

    seq_297 ::= IF EXISTS

    opt_298 ::= seq_297 | $empty

    seq_299 ::= IF EXISTS

    opt_300 ::= seq_299 | $empty

    seq_301 ::= id_ DOT

    opt_302 ::= seq_301 | $empty

    seq_303 ::= IF EXISTS

    opt_304 ::= seq_303 | $empty

    opt_305 ::= COMMA | $empty

    seq_306 ::= id_ DOT

    opt_307 ::= seq_306 | $empty

    seq_308 ::= id_ DOT

    opt_309 ::= seq_308 | $empty

    seq_310 ::= opt_305 opt_307 opt_309 id_

    opt_311 ::= seq_310 | $empty

    opt_312 ::= COUNTER | $empty

    seq_313 ::= id_ DOT

    opt_314 ::= seq_313 | $empty

    opt_316 ::= COMMA | $empty

    opt_317 ::= COMMA | $empty

    grp_315 ::= opt_316 CERTIFICATE id_ | opt_317 ASYMMETRIC KEY id_

    list_318 ::= grp_315 | list_318 grp_315

    seq_319 ::= id_ DOT

    opt_320 ::= seq_319 | $empty

    seq_321 ::= REMOVE PROVIDER KEY

    opt_322 ::= seq_321 | $empty

    seq_323 ::= IF EXISTS

    opt_324 ::= seq_323 | $empty

    seq_325 ::= id_ DOT

    opt_326 ::= seq_325 | $empty

    seq_327 ::= IF EXISTS

    opt_328 ::= seq_327 | $empty

    seq_329 ::= id_ DOT

    opt_330 ::= seq_329 | $empty

    opt_332 ::= COMMA | $empty

    seq_333 ::= id_ DOT

    opt_334 ::= seq_333 | $empty

    seq_335 ::= opt_332 opt_334 id_

    list_336 ::= seq_335 | list_336 seq_335

    grp_331 ::= list_336 | ALL

    seq_338 ::= id_ DOT

    opt_339 ::= seq_338 | $empty

    grp_337 ::= opt_339 id_ | DATABASE | ALL SERVER

    opt_341 ::= COMMA | $empty

    seq_342 ::= id_ DOT

    opt_343 ::= seq_342 | $empty

    seq_344 ::= opt_341 opt_343 id_

    list_345 ::= seq_344 | list_345 seq_344

    grp_340 ::= list_345 | ALL

    seq_347 ::= id_ DOT

    opt_348 ::= seq_347 | $empty

    grp_346 ::= opt_348 id_ | DATABASE | ALL SERVER

    grp_349 ::= SHARE | EXCLUSIVE

    grp_350 ::= WAIT DECIMAL | NOWAIT

    opt_351 ::= grp_350 | $empty

    opt_352 ::= SEMI | $empty

    opt_355 ::= COMMA | $empty

    grp_356 ::= DECIMAL | DECIMAL TO DECIMAL

    grp_354 ::= opt_355 grp_356

    list_357 ::= grp_354 | list_357 grp_354

    grp_353 ::= WITH LR_BRACKET PARTITIONS LR_BRACKET list_357 RR_BRACKET RR_BRACKET

    opt_358 ::= grp_353 | $empty

    seq_359 ::= COMMA SECRET EQUAL STRING

    opt_360 ::= seq_359 | $empty

    seq_361 ::= COMMA SECRET EQUAL STRING

    opt_362 ::= seq_361 | $empty

    seq_363 ::= FOR CRYPTOGRAPHIC PROVIDER id_

    opt_364 ::= seq_363 | $empty

    seq_365 ::= FROM FILE EQUAL STRING

    opt_366 ::= seq_365 | $empty

    grp_367 ::= ENABLE | DISABLE

    opt_368 ::= grp_367 | $empty

    seq_369 ::= AUTHORIZATION id_

    opt_370 ::= seq_369 | $empty

    grp_372 ::= STARTED | STOPPED | DISABLED

    grp_371 ::= STATE EQUAL grp_372

    opt_373 ::= grp_371 | $empty

    opt_375 ::= COMMA | $empty

    seq_376 ::= opt_375 endpoint_encryption_alogorithm_clause

    opt_377 ::= seq_376 | $empty

    opt_379 ::= COMMA | $empty

    grp_380 ::= ENABLED | DISABLED

    grp_378 ::= opt_379 MESSAGE_FORWARDING EQUAL grp_380

    opt_381 ::= grp_378 | $empty

    opt_382 ::= COMMA | $empty

    seq_383 ::= opt_382 MESSAGE_FORWARD_SIZE EQUAL DECIMAL

    opt_384 ::= seq_383 | $empty

    opt_385 ::= COMMA | $empty

    seq_386 ::= opt_385 endpoint_encryption_alogorithm_clause

    opt_387 ::= seq_386 | $empty

    opt_388 ::= COMMA | $empty

    grp_389 ::= WITNESS | PARTNER | ALL

    grp_374 ::= FOR TSQL LR_BRACKET RR_BRACKET | FOR SERVICE_BROKER LR_BRACKET endpoint_authentication_clause opt_377 opt_381 opt_384 RR_BRACKET | FOR DATABASE_MIRRORING LR_BRACKET endpoint_authentication_clause opt_387 opt_388 ROLE EQUAL grp_389 RR_BRACKET

    grp_390 ::= DISABLED | SUPPORTED | REQUIRED

    opt_393 ::= RC4 | $empty

    opt_394 ::= AES | $empty

    grp_392 ::= AES opt_393 | RC4 opt_394

    grp_391 ::= ALGORITHM grp_392

    opt_395 ::= grp_391 | $empty

    grp_397 ::= NTLM | KERBEROS | NEGOTIATE

    opt_398 ::= grp_397 | $empty

    seq_399 ::= CERTIFICATE id_

    opt_400 ::= seq_399 | $empty

    opt_401 ::= WINDOWS | $empty

    grp_402 ::= NTLM | KERBEROS | NEGOTIATE

    opt_403 ::= grp_402 | $empty

    grp_396 ::= WINDOWS opt_398 opt_400 | CERTIFICATE id_ opt_401 opt_403

    grp_406 ::= IPV4_ADDR | STRING

    grp_405 ::= ALL | LPAREN grp_406 RPAREN

    grp_404 ::= COMMA LISTENER_IP EQUAL grp_405

    opt_407 ::= grp_404 | $empty

    grp_408 ::= SERVER | DATABASE | QUEUE id_

    seq_409 ::= WITH FAN_IN

    opt_410 ::= seq_409 | $empty

    opt_411 ::= COMMA | $empty

    seq_412 ::= opt_411 id_

    list_413 ::= seq_412 | list_413 seq_412

    grp_414 ::= CREATE | ALTER

    opt_416 ::= COMMA | $empty

    seq_417 ::= id_ DOT

    opt_418 ::= seq_417 | $empty

    seq_419 ::= opt_418 id_ DOT id_

    opt_423 ::= COMMA | $empty

    grp_424 ::= DECIMAL | STRING

    grp_422 ::= opt_423 id_ EQUAL grp_424

    list_425 ::= $empty | list_425 grp_422

    grp_421 ::= SET list_425

    opt_426 ::= grp_421 | $empty

    opt_427 ::= COMMA | $empty

    seq_428 ::= id_ DOT

    opt_429 ::= seq_428 | $empty

    seq_430 ::= opt_427 opt_429 id_ DOT id_

    list_431 ::= seq_430 | list_431 seq_430

    seq_432 ::= ACTION LR_BRACKET list_431 RR_BRACKET

    list_433 ::= seq_432 | list_433 seq_432

    seq_434 ::= WHERE event_session_predicate_expression

    opt_435 ::= seq_434 | $empty

    grp_420 ::= LR_BRACKET opt_426 list_433 opt_435 RR_BRACKET

    list_436 ::= $empty | list_436 grp_420

    grp_415 ::= opt_416 ADD EVENT seq_419 list_436

    list_437 ::= $empty | list_437 grp_415

    opt_438 ::= COMMA | $empty

    seq_439 ::= id_ DOT

    opt_440 ::= seq_439 | $empty

    seq_441 ::= opt_438 DROP EVENT opt_440 id_ DOT id_

    list_442 ::= $empty | list_442 seq_441

    seq_444 ::= id_ DOT

    opt_445 ::= seq_444 | $empty

    seq_446 ::= ADD TARGET opt_445 id_ DOT id_

    opt_449 ::= COMMA | $empty

    opt_451 ::= LR_BRACKET | $empty

    opt_452 ::= RR_BRACKET | $empty

    grp_450 ::= opt_451 DECIMAL opt_452 | STRING

    grp_448 ::= opt_449 id_ EQUAL grp_450

    list_453 ::= grp_448 | list_453 grp_448

    grp_447 ::= LR_BRACKET SET list_453 RR_BRACKET

    list_454 ::= $empty | list_454 grp_447

    grp_443 ::= seq_446 list_454

    list_455 ::= $empty | list_455 grp_443

    seq_456 ::= id_ DOT

    opt_457 ::= seq_456 | $empty

    seq_458 ::= DROP TARGET opt_457 id_ DOT id_

    list_459 ::= $empty | list_459 seq_458

    opt_462 ::= COMMA | $empty

    grp_463 ::= KB | MB

    grp_461 ::= opt_462 MAX_MEMORY EQUAL DECIMAL grp_463

    opt_464 ::= grp_461 | $empty

    opt_466 ::= COMMA | $empty

    grp_467 ::= ALLOW_SINGLE_EVENT_LOSS | ALLOW_MULTIPLE_EVENT_LOSS | NO_EVENT_LOSS

    grp_465 ::= opt_466 EVENT_RETENTION_MODE EQUAL grp_467

    opt_468 ::= grp_465 | $empty

    opt_470 ::= COMMA | $empty

    grp_471 ::= DECIMAL SECONDS | INFINITE

    grp_469 ::= opt_470 MAX_DISPATCH_LATENCY EQUAL grp_471

    opt_472 ::= grp_469 | $empty

    opt_474 ::= COMMA | $empty

    grp_475 ::= KB | MB

    grp_473 ::= opt_474 MAX_EVENT_SIZE EQUAL DECIMAL grp_475

    opt_476 ::= grp_473 | $empty

    opt_478 ::= COMMA | $empty

    grp_479 ::= NONE | PER_NODE | PER_CPU

    grp_477 ::= opt_478 MEMORY_PARTITION_MODE EQUAL grp_479

    opt_480 ::= grp_477 | $empty

    opt_482 ::= COMMA | $empty

    grp_483 ::= ON | OFF

    grp_481 ::= opt_482 TRACK_CAUSALITY EQUAL grp_483

    opt_484 ::= grp_481 | $empty

    opt_486 ::= COMMA | $empty

    grp_487 ::= ON | OFF

    grp_485 ::= opt_486 STARTUP_STATE EQUAL grp_487

    opt_488 ::= grp_485 | $empty

    grp_460 ::= WITH LR_BRACKET opt_464 opt_468 opt_472 opt_476 opt_480 opt_484 opt_488 RR_BRACKET

    opt_489 ::= grp_460 | $empty

    grp_491 ::= START | STOP

    grp_490 ::= STATE EQUAL grp_491

    opt_492 ::= grp_490 | $empty

    opt_494 ::= COMMA | $empty

    grp_495 ::= AND | OR

    opt_496 ::= grp_495 | $empty

    opt_497 ::= NOT | $empty

    grp_498 ::= event_session_predicate_factor | LR_BRACKET event_session_predicate_expression RR_BRACKET

    grp_493 ::= opt_494 opt_496 opt_497 grp_498

    list_499 ::= grp_493 | list_499 grp_493

    seq_502 ::= id_ DOT

    opt_503 ::= seq_502 | $empty

    seq_504 ::= opt_503 id_ DOT id_

    grp_501 ::= id_ | seq_504

    seq_506 ::= LESS GREATER

    seq_507 ::= EXCLAMATION EQUAL

    seq_508 ::= GREATER EQUAL

    grp_505 ::= EQUAL | seq_506 | seq_507 | GREATER | seq_508 | LESS | LESS EQUAL

    grp_509 ::= DECIMAL | STRING

    grp_500 ::= id_ | grp_501 grp_505 grp_509

    seq_510 ::= id_ DOT

    opt_511 ::= seq_510 | $empty

    seq_513 ::= id_ DOT

    opt_514 ::= seq_513 | $empty

    seq_515 ::= opt_514 id_ DOT id_

    grp_516 ::= DECIMAL | STRING

    grp_512 ::= id_ | seq_515 COMMA grp_516

    opt_518 ::= COMMA | $empty

    opt_519 ::= COMMA | $empty

    grp_517 ::= LOCATION EQUAL STRING opt_518 | RESOURCE_MANAGER_LOCATION EQUAL STRING opt_519 | CREDENTIAL EQUAL id_

    list_520 ::= grp_517 | list_520 grp_517

    seq_521 ::= COMMA CREDENTIAL EQUAL id_

    opt_522 ::= seq_521 | $empty

    seq_523 ::= AUTHORIZATION id_

    opt_524 ::= seq_523 | $empty

    grp_525 ::= SET | ADD

    grp_527 ::= STRING | BINARY | NONE

    grp_529 ::= WINDOWS | LINUX

    opt_530 ::= grp_529 | $empty

    grp_528 ::= COMMA PLATFORM EQUAL opt_530 RR_BRACKET

    opt_532 ::= COMMA | $empty

    grp_533 ::= R | PYTHON

    grp_531 ::= opt_532 LANGUAGE EQUAL grp_533 | DATA_SOURCE EQUAL id_

    list_534 ::= grp_531 | list_534 grp_531

    grp_526 ::= LR_BRACKET CONTENT EQUAL grp_527 grp_528 WITH list_534 RR_BRACKET

    seq_535 ::= AUTHORIZATION id_

    opt_536 ::= seq_535 | $empty

    opt_538 ::= COMMA | $empty

    opt_539 ::= LR_BRACKET | $empty

    seq_540 ::= CONTENT EQUAL

    opt_541 ::= seq_540 | $empty

    grp_542 ::= STRING | BINARY | NONE

    grp_544 ::= WINDOWS | LINUX

    opt_545 ::= grp_544 | $empty

    grp_543 ::= COMMA PLATFORM EQUAL opt_545 RR_BRACKET

    opt_546 ::= grp_543 | $empty

    grp_537 ::= opt_538 opt_539 opt_541 grp_542 opt_546

    opt_549 ::= COMMA | $empty

    grp_550 ::= R | PYTHON

    grp_548 ::= opt_549 LANGUAGE EQUAL grp_550 | DATA_SOURCE EQUAL id_

    list_551 ::= grp_548 | list_551 grp_548

    grp_547 ::= WITH list_551 RR_BRACKET

    opt_552 ::= grp_547 | $empty

    grp_553 ::= id_ | DEFAULT_DOUBLE_QUOTE

    opt_555 ::= COMMA | $empty

    opt_558 ::= COMMA | $empty

    grp_557 ::= opt_558 DECIMAL TO DECIMAL | COMMA DECIMAL

    list_559 ::= grp_557 | list_559 grp_557

    grp_556 ::= AUTO | list_559

    opt_561 ::= COMMA | $empty

    opt_562 ::= COMMA | $empty

    grp_560 ::= opt_561 DECIMAL TO DECIMAL | opt_562 DECIMAL

    list_563 ::= grp_560 | list_563 grp_560

    grp_554 ::= opt_555 AFFINITY CPU EQUAL grp_556 | NUMANODE EQUAL list_563

    opt_564 ::= COMMA | $empty

    seq_565 ::= opt_564 MAX_MEMORY_PERCENT EQUAL DECIMAL

    opt_566 ::= seq_565 | $empty

    opt_567 ::= COMMA | $empty

    seq_568 ::= opt_567 MAX_PROCESSES EQUAL DECIMAL

    opt_569 ::= seq_568 | $empty

    opt_571 ::= COMMA | $empty

    opt_574 ::= COMMA | $empty

    grp_573 ::= opt_574 DECIMAL TO DECIMAL | COMMA DECIMAL

    list_575 ::= grp_573 | list_575 grp_573

    grp_572 ::= AUTO | list_575

    opt_577 ::= COMMA | $empty

    opt_578 ::= COMMA | $empty

    grp_576 ::= opt_577 DECIMAL TO DECIMAL | opt_578 DECIMAL

    list_579 ::= grp_576 | list_579 grp_576

    grp_570 ::= opt_571 AFFINITY CPU EQUAL grp_572 | NUMANODE EQUAL list_579

    opt_580 ::= COMMA | $empty

    seq_581 ::= opt_580 MAX_MEMORY_PERCENT EQUAL DECIMAL

    opt_582 ::= seq_581 | $empty

    opt_583 ::= COMMA | $empty

    seq_584 ::= opt_583 MAX_PROCESSES EQUAL DECIMAL

    opt_585 ::= seq_584 | $empty

    grp_588 ::= ON | OFF

    grp_587 ::= WITH ACCENT_SENSITIVITY EQUAL grp_588

    opt_589 ::= grp_587 | $empty

    grp_586 ::= REBUILD opt_589 | REORGANIZE | AS DEFAULT

    seq_590 ::= ON FILEGROUP id_

    opt_591 ::= seq_590 | $empty

    seq_592 ::= IN PATH STRING

    opt_593 ::= seq_592 | $empty

    grp_595 ::= ON | OFF

    grp_594 ::= WITH ACCENT_SENSITIVITY EQUAL grp_595

    opt_596 ::= grp_594 | $empty

    seq_597 ::= AS DEFAULT

    opt_598 ::= seq_597 | $empty

    seq_599 ::= AUTHORIZATION id_

    opt_600 ::= seq_599 | $empty

    grp_602 ::= STRING | DECIMAL | BINARY

    grp_604 ::= STRING | DECIMAL | BINARY

    grp_605 ::= STRING | DECIMAL | BINARY

    grp_603 ::= STRING LANGUAGE grp_604 | ALL grp_605 | ALL

    grp_601 ::= ADD STRING LANGUAGE grp_602 | DROP grp_603

    seq_608 ::= id_ DOT

    opt_609 ::= seq_608 | $empty

    grp_607 ::= opt_609 id_ | SYSTEM STOPLIST

    grp_606 ::= FROM grp_607

    opt_610 ::= grp_606 | $empty

    seq_611 ::= AUTHORIZATION id_

    opt_612 ::= seq_611 | $empty

    grp_614 ::= ENABLE | DISABLE

    opt_615 ::= grp_614 | $empty

    grp_618 ::= STRING | BINARY HASHED

    grp_617 ::= PASSWORD EQUAL grp_618

    grp_619 ::= MUST_CHANGE | UNLOCK

    list_620 ::= $empty | list_620 grp_619

    grp_616 ::= grp_617 list_620

    opt_621 ::= grp_616 | $empty

    grp_623 ::= MUST_CHANGE | UNLOCK

    list_624 ::= $empty | list_624 grp_623

    grp_622 ::= OLD_PASSWORD EQUAL STRING list_624

    opt_625 ::= grp_622 | $empty

    seq_626 ::= DEFAULT_DATABASE EQUAL id_

    opt_627 ::= seq_626 | $empty

    seq_628 ::= DEFAULT_LANGUAGE EQUAL id_

    opt_629 ::= seq_628 | $empty

    seq_630 ::= NAME EQUAL id_

    opt_631 ::= seq_630 | $empty

    grp_633 ::= ON | OFF

    grp_632 ::= CHECK_POLICY EQUAL grp_633

    opt_634 ::= grp_632 | $empty

    grp_636 ::= ON | OFF

    grp_635 ::= CHECK_EXPIRATION EQUAL grp_636

    opt_637 ::= grp_635 | $empty

    seq_638 ::= CREDENTIAL EQUAL id_

    opt_639 ::= seq_638 | $empty

    seq_640 ::= NO CREDENTIAL

    opt_641 ::= seq_640 | $empty

    grp_642 ::= ADD | DROP

    grp_613 ::= opt_615 | WITH opt_621 opt_625 opt_627 opt_629 opt_631 opt_634 opt_637 opt_639 opt_641 | grp_642 CREDENTIAL id_

    grp_646 ::= STRING | BINARY HASHED

    grp_645 ::= PASSWORD EQUAL grp_646

    grp_647 ::= MUST_CHANGE | UNLOCK

    list_648 ::= $empty | list_648 grp_647

    grp_644 ::= grp_645 list_648

    opt_649 ::= grp_644 | $empty

    opt_650 ::= COMMA | $empty

    seq_651 ::= opt_650 SID EQUAL BINARY

    opt_652 ::= seq_651 | $empty

    opt_653 ::= COMMA | $empty

    seq_654 ::= opt_653 DEFAULT_DATABASE EQUAL id_

    opt_655 ::= seq_654 | $empty

    opt_656 ::= COMMA | $empty

    seq_657 ::= opt_656 DEFAULT_LANGUAGE EQUAL id_

    opt_658 ::= seq_657 | $empty

    opt_660 ::= COMMA | $empty

    grp_661 ::= ON | OFF

    grp_659 ::= opt_660 CHECK_EXPIRATION EQUAL grp_661

    opt_662 ::= grp_659 | $empty

    opt_664 ::= COMMA | $empty

    grp_665 ::= ON | OFF

    grp_663 ::= opt_664 CHECK_POLICY EQUAL grp_665

    opt_666 ::= grp_663 | $empty

    opt_667 ::= COMMA | $empty

    seq_668 ::= opt_667 CREDENTIAL EQUAL id_

    opt_669 ::= seq_668 | $empty

    opt_672 ::= COMMA | $empty

    seq_673 ::= opt_672 DEFAULT_DATABASE EQUAL id_

    opt_674 ::= seq_673 | $empty

    opt_675 ::= COMMA | $empty

    seq_676 ::= opt_675 DEFAULT_LANGUAGE EQUAL STRING

    opt_677 ::= seq_676 | $empty

    seq_678 ::= WITH opt_674 opt_677

    grp_671 ::= WINDOWS seq_678 | CERTIFICATE id_ | ASYMMETRIC KEY id_

    grp_670 ::= FROM grp_671

    grp_643 ::= WITH opt_649 opt_652 opt_655 opt_658 opt_662 opt_666 opt_669 | grp_670

    grp_680 ::= ENABLE | DISABLE

    opt_681 ::= grp_680 | $empty

    seq_683 ::= OLD_PASSWORD EQUAL STRING

    opt_684 ::= seq_683 | $empty

    grp_682 ::= PASSWORD EQUAL STRING opt_684 | NAME EQUAL id_

    grp_679 ::= opt_681 | WITH grp_682

    seq_685 ::= SID EQUAL BINARY

    opt_686 ::= seq_685 | $empty

    grp_688 ::= ENABLE | DISABLE

    opt_689 ::= grp_688 | $empty

    grp_692 ::= MUST_CHANGE | UNLOCK

    list_693 ::= $empty | list_693 grp_692

    grp_691 ::= OLD_PASSWORD EQUAL STRING list_693

    opt_694 ::= grp_691 | $empty

    grp_690 ::= PASSWORD EQUAL STRING opt_694 | NAME EQUAL id_

    grp_687 ::= opt_689 | WITH grp_690

    opt_697 ::= MUST_CHANGE | $empty

    grp_699 ::= ON | OFF

    opt_700 ::= grp_699 | $empty

    grp_698 ::= CHECK_POLICY EQUAL opt_700

    opt_701 ::= grp_698 | $empty

    grp_696 ::= PASSWORD EQUAL STRING opt_697 opt_701

    grp_695 ::= WITH grp_696 | FROM WINDOWS

    opt_703 ::= FORCE | $empty

    grp_704 ::= ADD | DROP

    grp_705 ::= SERVICE MASTER KEY | PASSWORD EQUAL STRING

    grp_702 ::= opt_703 REGENERATE WITH ENCRYPTION BY PASSWORD EQUAL STRING | grp_704 ENCRYPTION BY grp_705

    opt_707 ::= FORCE | $empty

    grp_708 ::= SERVICE MASTER KEY | PASSWORD EQUAL STRING

    grp_706 ::= opt_707 REGENERATE WITH ENCRYPTION BY PASSWORD EQUAL STRING | ADD ENCRYPTION BY grp_708 | DROP ENCRYPTION BY PASSWORD EQUAL STRING

    seq_709 ::= ENCRYPTION BY PASSWORD EQUAL STRING

    opt_710 ::= seq_709 | $empty

    grp_711 ::= NONE | EMPTY | WELL_FORMED_XML | VALID_XML WITH SCHEMA COLLECTION id_

    grp_712 ::= SPLIT | MERGE

    opt_713 ::= id_ | $empty

    seq_714 ::= USER EQUAL id_

    opt_715 ::= seq_714 | $empty

    grp_717 ::= ON | OFF

    grp_716 ::= COMMA ANONYMOUS EQUAL grp_717

    opt_718 ::= grp_716 | $empty

    seq_719 ::= AUTHORIZATION id_

    opt_720 ::= seq_719 | $empty

    seq_721 ::= USER EQUAL id_

    opt_722 ::= seq_721 | $empty

    grp_724 ::= ON | OFF

    grp_723 ::= COMMA ANONYMOUS EQUAL grp_724

    opt_725 ::= grp_723 | $empty

    opt_727 ::= COMMA | $empty

    seq_728 ::= opt_727 MIN_CPU_PERCENT EQUAL DECIMAL

    opt_729 ::= seq_728 | $empty

    opt_730 ::= COMMA | $empty

    seq_731 ::= opt_730 MAX_CPU_PERCENT EQUAL DECIMAL

    opt_732 ::= seq_731 | $empty

    opt_733 ::= COMMA | $empty

    seq_734 ::= opt_733 CAP_CPU_PERCENT EQUAL DECIMAL

    opt_735 ::= seq_734 | $empty

    opt_737 ::= COMMA | $empty

    opt_740 ::= COMMA | $empty

    grp_741 ::= DECIMAL | DECIMAL TO DECIMAL

    grp_739 ::= opt_740 grp_741

    list_742 ::= grp_739 | list_742 grp_739

    opt_744 ::= COMMA | $empty

    grp_745 ::= DECIMAL | DECIMAL TO DECIMAL

    grp_743 ::= opt_744 grp_745

    list_746 ::= grp_743 | list_746 grp_743

    grp_738 ::= AUTO | LR_BRACKET list_742 RR_BRACKET | NUMANODE EQUAL LR_BRACKET list_746 RR_BRACKET

    grp_736 ::= opt_737 AFFINITY SCHEDULER EQUAL grp_738

    opt_747 ::= grp_736 | $empty

    opt_748 ::= COMMA | $empty

    seq_749 ::= opt_748 MIN_MEMORY_PERCENT EQUAL DECIMAL

    opt_750 ::= seq_749 | $empty

    opt_751 ::= COMMA | $empty

    seq_752 ::= opt_751 MAX_MEMORY_PERCENT EQUAL DECIMAL

    opt_753 ::= seq_752 | $empty

    opt_754 ::= COMMA | $empty

    seq_755 ::= opt_754 MIN_IOPS_PER_VOLUME EQUAL DECIMAL

    opt_756 ::= seq_755 | $empty

    opt_757 ::= COMMA | $empty

    seq_758 ::= opt_757 MAX_IOPS_PER_VOLUME EQUAL DECIMAL

    opt_759 ::= seq_758 | $empty

    grp_726 ::= WITH LR_BRACKET opt_729 opt_732 opt_735 opt_747 opt_750 opt_753 opt_756 opt_759 RR_BRACKET

    opt_760 ::= grp_726 | $empty

    grp_762 ::= DISABLE | RECONFIGURE

    grp_763 ::= id_ DOT id_ | NULL_

    grp_761 ::= grp_762 | WITH LR_BRACKET CLASSIFIER_FUNCTION EQUAL grp_763 RR_BRACKET | RESET STATISTICS | WITH LR_BRACKET MAX_OUTSTANDING_IO_PER_VOLUME EQUAL DECIMAL RR_BRACKET

    seq_764 ::= FOR SERVER AUDIT id_

    opt_765 ::= seq_764 | $empty

    seq_766 ::= COMMA audit_action_spec_group

    list_767 ::= $empty | list_767 seq_766

    seq_768 ::= audit_action_spec_group list_767

    opt_769 ::= seq_768 | $empty

    grp_771 ::= ON | OFF

    grp_770 ::= WITH LPAREN STATE EQ grp_771 RPAREN

    opt_772 ::= grp_770 | $empty

    grp_773 ::= ADD | DROP

    grp_774 ::= audit_action_specification | id_

    seq_775 ::= COMMA action_specification

    list_776 ::= $empty | list_776 seq_775

    seq_777 ::= audit_class_name COLONCOLON

    opt_778 ::= seq_777 | $empty

    seq_779 ::= COMMA principal_id

    list_780 ::= $empty | list_780 seq_779

    seq_781 ::= id_ DOT

    opt_782 ::= seq_781 | $empty

    seq_783 ::= opt_782 id_ DOT

    opt_784 ::= seq_783 | $empty

    grp_786 ::= ADD | DROP

    grp_785 ::= grp_786 MEMBER id_ | WITH NAME EQUAL id_

    seq_787 ::= FOR SERVER AUDIT id_

    opt_788 ::= seq_787 | $empty

    seq_789 ::= COMMA audit_action_spec_group

    list_790 ::= $empty | list_790 seq_789

    seq_791 ::= audit_action_spec_group list_790

    opt_792 ::= seq_791 | $empty

    grp_794 ::= ON | OFF

    grp_793 ::= WITH LPAREN STATE EQ grp_794 RPAREN

    opt_795 ::= grp_793 | $empty

    seq_796 ::= AUTHORIZATION id_

    opt_797 ::= seq_796 | $empty

    seq_798 ::= AUTHORIZATION id_

    opt_799 ::= seq_798 | $empty

    opt_800 ::= COMMA | $empty

    seq_801 ::= opt_800 SERVICE_NAME EQUAL STRING

    opt_802 ::= seq_801 | $empty

    opt_803 ::= COMMA | $empty

    seq_804 ::= opt_803 BROKER_INSTANCE EQUAL STRING

    opt_805 ::= seq_804 | $empty

    opt_806 ::= COMMA | $empty

    seq_807 ::= opt_806 LIFETIME EQUAL DECIMAL

    opt_808 ::= seq_807 | $empty

    opt_809 ::= COMMA | $empty

    seq_810 ::= COMMA MIRROR_ADDRESS EQUAL STRING

    opt_811 ::= seq_810 | $empty

    seq_812 ::= id_ DOT

    opt_813 ::= seq_812 | $empty

    grp_815 ::= OBJECT | TYPE | XML SCHEMA COLLECTION

    grp_814 ::= grp_815 DOUBLE_COLON

    opt_816 ::= grp_814 | $empty

    seq_817 ::= DOT id_

    opt_818 ::= seq_817 | $empty

    grp_819 ::= id_ | AUTHORIZATION id_ | id_ AUTHORIZATION id_

    grp_821 ::= GRANT | DENY

    grp_822 ::= SELECT | INSERT | DELETE | UPDATE

    seq_823 ::= SCHEMA DOUBLE_COLON

    opt_824 ::= seq_823 | $empty

    grp_825 ::= SELECT | INSERT | DELETE | UPDATE

    seq_826 ::= SCHEMA DOUBLE_COLON

    opt_827 ::= seq_826 | $empty

    grp_820 ::= create_table | create_view | grp_821 grp_822 ON opt_824 id_ TO id_ | REVOKE grp_825 ON opt_827 id_ FROM id_

    list_828 ::= $empty | list_828 grp_820

    seq_829 ::= AUTHORIZATION id_

    opt_830 ::= seq_829 | $empty

    seq_831 ::= OBJECT DOUBLE_COLON

    opt_832 ::= seq_831 | $empty

    seq_833 ::= DOT IDENTIFIER

    opt_834 ::= seq_833 | $empty

    seq_835 ::= id_ DOT

    opt_836 ::= seq_835 | $empty

    seq_837 ::= FROM opt_836 id_

    opt_838 ::= seq_837 | $empty

    seq_839 ::= AUTHORIZATION id_

    opt_840 ::= seq_839 | $empty

    seq_841 ::= id_ DOT

    opt_842 ::= seq_841 | $empty

    opt_844 ::= COMMA | $empty

    grp_845 ::= FILTER | BLOCK

    opt_846 ::= grp_845 | $empty

    opt_847 ::= COMMA | $empty

    seq_848 ::= opt_847 id_

    list_849 ::= seq_848 | list_849 seq_848

    opt_851 ::= COMMA | $empty

    grp_852 ::= INSERT | UPDATE

    opt_853 ::= COMMA | $empty

    grp_854 ::= UPDATE | DELETE

    grp_850 ::= opt_851 AFTER grp_852 | opt_853 BEFORE grp_854

    list_855 ::= $empty | list_855 grp_850

    grp_843 ::= opt_844 ADD opt_846 PREDICATE id_ DOT id_ LR_BRACKET list_849 RR_BRACKET ON id_ DOT id_ list_855

    list_856 ::= grp_843 | list_856 grp_843

    grp_858 ::= ON | OFF

    grp_860 ::= ON | OFF

    grp_859 ::= SCHEMABINDING grp_860

    opt_861 ::= grp_859 | $empty

    grp_857 ::= WITH LR_BRACKET STATE EQUAL grp_858 opt_861 RR_BRACKET

    opt_862 ::= grp_857 | $empty

    seq_863 ::= NOT FOR REPLICATION

    opt_864 ::= seq_863 | $empty

    seq_865 ::= id_ DOT

    opt_866 ::= seq_865 | $empty

    seq_867 ::= WITH DECIMAL

    opt_868 ::= seq_867 | $empty

    seq_869 ::= RESTART opt_868

    opt_870 ::= seq_869 | $empty

    seq_871 ::= INCREMENT BY DECIMAL

    opt_872 ::= seq_871 | $empty

    grp_873 ::= MINVALUE DECIMAL | NO MINVALUE

    opt_874 ::= grp_873 | $empty

    grp_875 ::= MAXVALUE DECIMAL | NO MAXVALUE

    opt_876 ::= grp_875 | $empty

    grp_877 ::= CYCLE | NO CYCLE

    opt_878 ::= grp_877 | $empty

    grp_879 ::= CACHE DECIMAL | NO CACHE

    opt_880 ::= grp_879 | $empty

    seq_881 ::= id_ DOT

    opt_882 ::= seq_881 | $empty

    seq_883 ::= AS data_type

    opt_884 ::= seq_883 | $empty

    seq_885 ::= START WITH DECIMAL

    opt_886 ::= seq_885 | $empty

    opt_887 ::= MINUS | $empty

    seq_888 ::= INCREMENT BY opt_887 DECIMAL

    opt_889 ::= seq_888 | $empty

    opt_891 ::= MINUS | $empty

    seq_892 ::= opt_891 DECIMAL

    opt_893 ::= seq_892 | $empty

    grp_890 ::= MINVALUE opt_893 | NO MINVALUE

    opt_894 ::= grp_890 | $empty

    opt_896 ::= MINUS | $empty

    seq_897 ::= opt_896 DECIMAL

    opt_898 ::= seq_897 | $empty

    grp_895 ::= MAXVALUE opt_898 | NO MAXVALUE

    opt_899 ::= grp_895 | $empty

    grp_900 ::= CYCLE | NO CYCLE

    opt_901 ::= grp_900 | $empty

    opt_903 ::= DECIMAL | $empty

    grp_902 ::= CACHE opt_903 | NO CACHE

    opt_904 ::= grp_902 | $empty

    opt_910 ::= COMMA | $empty

    opt_911 ::= COMMA | $empty

    grp_913 ::= MB | GB | TB

    grp_912 ::= DECIMAL grp_913 | UNLIMITED

    opt_914 ::= COMMA | $empty

    grp_915 ::= DECIMAL | UNLIMITED

    opt_916 ::= COMMA | $empty

    opt_917 ::= COMMA | $empty

    grp_918 ::= ON | OFF

    grp_909 ::= opt_910 FILEPATH EQUAL STRING | opt_911 MAXSIZE EQUAL grp_912 | opt_914 MAX_ROLLOVER_FILES EQUAL grp_915 | opt_916 MAX_FILES EQUAL DECIMAL | opt_917 RESERVE_DISK_SPACE EQUAL grp_918

    list_919 ::= $empty | list_919 grp_909

    grp_908 ::= LR_BRACKET list_919 RR_BRACKET

    grp_907 ::= FILE grp_908 | APPLICATION_LOG | SECURITY_LOG

    grp_906 ::= TO grp_907

    opt_920 ::= grp_906 | $empty

    opt_923 ::= COMMA | $empty

    opt_924 ::= COMMA | $empty

    grp_925 ::= CONTINUE | SHUTDOWN | FAIL_OPERATION

    opt_926 ::= COMMA | $empty

    grp_927 ::= ON | OFF

    grp_922 ::= opt_923 QUEUE_DELAY EQUAL DECIMAL | opt_924 ON_FAILURE EQUAL grp_925 | opt_926 STATE EQUAL grp_927

    list_928 ::= $empty | list_928 grp_922

    grp_921 ::= WITH LR_BRACKET list_928 RR_BRACKET

    opt_929 ::= grp_921 | $empty

    opt_932 ::= COMMA | $empty

    opt_933 ::= NOT | $empty

    seq_935 ::= LESS GREATER

    seq_936 ::= EXCLAMATION EQUAL

    seq_937 ::= GREATER EQUAL

    grp_934 ::= EQUAL | seq_935 | seq_936 | GREATER | seq_937 | LESS | LESS EQUAL

    grp_938 ::= DECIMAL | STRING

    opt_939 ::= COMMA | $empty

    grp_940 ::= AND | OR

    opt_941 ::= NOT | $empty

    seq_943 ::= LESS GREATER

    seq_944 ::= EXCLAMATION EQUAL

    seq_945 ::= GREATER EQUAL

    grp_942 ::= EQUAL | seq_943 | seq_944 | GREATER | seq_945 | LESS | LESS EQUAL

    grp_946 ::= DECIMAL | STRING

    grp_931 ::= opt_932 opt_933 id_ grp_934 grp_938 | opt_939 grp_940 opt_941 grp_942 grp_946

    grp_930 ::= WHERE grp_931

    opt_947 ::= grp_930 | $empty

    grp_905 ::= opt_920 opt_929 opt_947 | REMOVE WHERE | MODIFY NAME EQUAL id_

    opt_953 ::= COMMA | $empty

    opt_954 ::= COMMA | $empty

    grp_956 ::= MB | GB | TB

    grp_955 ::= DECIMAL grp_956 | UNLIMITED

    opt_957 ::= COMMA | $empty

    grp_958 ::= DECIMAL | UNLIMITED

    opt_959 ::= COMMA | $empty

    opt_960 ::= COMMA | $empty

    grp_961 ::= ON | OFF

    grp_952 ::= opt_953 FILEPATH EQUAL STRING | opt_954 MAXSIZE EQUAL grp_955 | opt_957 MAX_ROLLOVER_FILES EQUAL grp_958 | opt_959 MAX_FILES EQUAL DECIMAL | opt_960 RESERVE_DISK_SPACE EQUAL grp_961

    list_962 ::= $empty | list_962 grp_952

    grp_951 ::= LR_BRACKET list_962 RR_BRACKET

    grp_950 ::= FILE grp_951 | APPLICATION_LOG | SECURITY_LOG

    grp_949 ::= TO grp_950

    opt_963 ::= grp_949 | $empty

    opt_966 ::= COMMA | $empty

    opt_967 ::= COMMA | $empty

    grp_968 ::= CONTINUE | SHUTDOWN | FAIL_OPERATION

    opt_969 ::= COMMA | $empty

    grp_970 ::= ON | OFF

    opt_971 ::= COMMA | $empty

    grp_965 ::= opt_966 QUEUE_DELAY EQUAL DECIMAL | opt_967 ON_FAILURE EQUAL grp_968 | opt_969 STATE EQUAL grp_970 | opt_971 AUDIT_GUID EQUAL id_

    list_972 ::= $empty | list_972 grp_965

    grp_964 ::= WITH LR_BRACKET list_972 RR_BRACKET

    opt_973 ::= grp_964 | $empty

    opt_976 ::= COMMA | $empty

    opt_977 ::= NOT | $empty

    seq_979 ::= LESS GREATER

    seq_980 ::= EXCLAMATION EQUAL

    seq_981 ::= GREATER EQUAL

    grp_978 ::= EQUAL | seq_979 | seq_980 | GREATER | seq_981 | LESS | LESS EQUAL

    grp_982 ::= DECIMAL | STRING

    opt_983 ::= COMMA | $empty

    grp_984 ::= AND | OR

    opt_985 ::= NOT | $empty

    seq_987 ::= LESS GREATER

    seq_988 ::= EXCLAMATION EQUAL

    seq_989 ::= GREATER EQUAL

    grp_986 ::= EQUAL | seq_987 | seq_988 | GREATER | seq_989 | LESS | LESS EQUAL

    grp_990 ::= DECIMAL | STRING

    grp_975 ::= opt_976 opt_977 id_ grp_978 grp_982 | opt_983 grp_984 opt_985 grp_986 grp_990

    grp_974 ::= WHERE grp_975

    opt_991 ::= grp_974 | $empty

    grp_948 ::= opt_963 opt_973 opt_991 | REMOVE WHERE | MODIFY NAME EQUAL id_

    seq_992 ::= FOR SERVER AUDIT id_

    opt_993 ::= seq_992 | $empty

    grp_995 ::= ADD | DROP

    grp_994 ::= grp_995 LR_BRACKET id_ RR_BRACKET

    list_996 ::= $empty | list_996 grp_994

    grp_998 ::= ON | OFF

    grp_997 ::= WITH LR_BRACKET STATE EQUAL grp_998 RR_BRACKET

    opt_999 ::= grp_997 | $empty

    seq_1000 ::= FOR SERVER AUDIT id_

    opt_1001 ::= seq_1000 | $empty

    seq_1002 ::= ADD LR_BRACKET id_ RR_BRACKET

    list_1003 ::= $empty | list_1003 seq_1002

    grp_1005 ::= ON | OFF

    grp_1004 ::= WITH LR_BRACKET STATE EQUAL grp_1005 RR_BRACKET

    opt_1006 ::= grp_1004 | $empty

    opt_1012 ::= COMMA | $empty

    opt_1013 ::= COMMA | $empty

    grp_1011 ::= opt_1012 DECIMAL | opt_1013 DECIMAL TO DECIMAL

    list_1014 ::= grp_1011 | list_1014 grp_1011

    grp_1010 ::= AUTO | list_1014

    opt_1016 ::= COMMA | $empty

    opt_1017 ::= COMMA | $empty

    grp_1015 ::= opt_1016 DECIMAL | opt_1017 DECIMAL TO DECIMAL

    list_1018 ::= grp_1015 | list_1018 grp_1015

    grp_1009 ::= CPU EQUAL grp_1010 | NUMANODE EQUAL list_1018

    grp_1020 ::= STRING | DEFAULT

    grp_1021 ::= DECIMAL MB | DEFAULT

    grp_1022 ::= DECIMAL | DEFAULT

    grp_1019 ::= ON | OFF | PATH EQUAL grp_1020 | MAX_SIZE EQUAL grp_1021 | MAX_FILES EQUAL grp_1022

    grp_1024 ::= STRING | DEFAULT

    grp_1025 ::= STRING | DEFAULT

    grp_1026 ::= STRING | DEFAULT

    grp_1027 ::= STRING | DEFAULT

    grp_1028 ::= STRING | DEFAULT

    grp_1029 ::= DECIMAL | DEFAULT

    grp_1023 ::= VERBOSELOGGING EQUAL grp_1024 | SQLDUMPERFLAGS EQUAL grp_1025 | SQLDUMPERPATH EQUAL grp_1026 | SQLDUMPERTIMEOUT grp_1027 | FAILURECONDITIONLEVEL EQUAL grp_1028 | HEALTHCHECKTIMEOUT EQUAL grp_1029

    grp_1030 ::= STRING | LOCAL

    grp_1032 ::= KB | MB | GB

    grp_1031 ::= ON LR_BRACKET FILENAME EQUAL STRING COMMA SIZE EQUAL DECIMAL grp_1032 RR_BRACKET | OFF

    grp_1033 ::= ON | OFF

    grp_1008 ::= PROCESS AFFINITY grp_1009 | DIAGNOSTICS LOG grp_1019 | FAILOVER CLUSTER PROPERTY grp_1023 | HADR CLUSTER CONTEXT EQUAL grp_1030 | BUFFER POOL EXTENSION grp_1031 | SET SOFTNUMA grp_1033

    grp_1007 ::= grp_1008

    grp_1035 ::= ADD | DROP

    grp_1034 ::= grp_1035 MEMBER id_ | WITH NAME EQUAL id_

    seq_1036 ::= AUTHORIZATION id_

    opt_1037 ::= seq_1036 | $empty

    grp_1038 ::= ADD | DROP

    seq_1039 ::= id_ DOT

    opt_1040 ::= seq_1039 | $empty

    seq_1041 ::= ON QUEUE opt_1040 id_

    opt_1042 ::= seq_1041 | $empty

    seq_1043 ::= COMMA opt_arg_clause

    list_1044 ::= $empty | list_1044 seq_1043

    seq_1045 ::= LPAREN opt_arg_clause list_1044 RPAREN

    opt_1046 ::= seq_1045 | $empty

    grp_1047 ::= ADD | DROP

    seq_1048 ::= AUTHORIZATION id_

    opt_1049 ::= seq_1048 | $empty

    seq_1050 ::= id_ DOT

    opt_1051 ::= seq_1050 | $empty

    opt_1054 ::= COMMA | $empty

    grp_1055 ::= id_ | DEFAULT

    grp_1053 ::= opt_1054 grp_1055

    list_1056 ::= grp_1053 | list_1056 grp_1053

    grp_1052 ::= LR_BRACKET list_1056 RR_BRACKET

    opt_1057 ::= grp_1052 | $empty

    opt_1059 ::= FORCE | $empty

    grp_1061 ::= OLD_ACCOUNT EQUAL STRING COMMA OLD_PASSWORD EQUAL STRING | NEW_ACCOUNT EQUAL STRING COMMA NEW_PASSWORD EQUAL STRING

    opt_1062 ::= grp_1061 | $empty

    grp_1060 ::= WITH opt_1062

    grp_1058 ::= opt_1059 REGENERATE | grp_1060

    grp_1064 ::= ADD | DROP

    grp_1065 ::= CERTIFICATE id_ | PASSWORD EQUAL STRING | SYMMETRIC KEY id_ | ASYMMETRIC KEY id_

    grp_1063 ::= grp_1064 ENCRYPTION BY grp_1065

    seq_1066 ::= id_ DOT

    opt_1067 ::= seq_1066 | $empty

    seq_1069 ::= id_ DOT

    opt_1070 ::= seq_1069 | $empty

    seq_1071 ::= id_ DOT

    opt_1072 ::= seq_1071 | $empty

    seq_1073 ::= id_ DOT

    opt_1074 ::= seq_1073 | $empty

    seq_1075 ::= id_ DOT

    opt_1076 ::= seq_1075 | $empty

    seq_1077 ::= id_ DOT

    opt_1078 ::= seq_1077 | $empty

    grp_1068 ::= opt_1070 opt_1072 opt_1074 id_ | opt_1076 opt_1078

    opt_1080 ::= COMMA | $empty

    opt_1081 ::= COMMA | $empty

    grp_1082 ::= id_ | NULL_

    opt_1083 ::= COMMA | $empty

    opt_1084 ::= COMMA | $empty

    seq_1085 ::= OLD_PASSWORD EQUAL STRING

    list_1086 ::= seq_1085 | list_1086 seq_1085

    opt_1087 ::= COMMA | $empty

    grp_1088 ::= NONE | DECIMAL | id_

    opt_1089 ::= COMMA | $empty

    grp_1090 ::= ON | OFF

    grp_1079 ::= opt_1080 NAME EQUAL id_ | opt_1081 DEFAULT_SCHEMA EQUAL grp_1082 | opt_1083 LOGIN EQUAL id_ | opt_1084 PASSWORD EQUAL STRING list_1086 | opt_1087 DEFAULT_LANGUAGE EQUAL grp_1088 | opt_1089 ALLOW_ENCRYPTED_VALUE_MODIFICATIONS EQUAL grp_1090

    list_1091 ::= grp_1079 | list_1091 grp_1079

    grp_1093 ::= FOR | FROM

    grp_1092 ::= grp_1093 LOGIN id_

    opt_1094 ::= grp_1092 | $empty

    opt_1097 ::= COMMA | $empty

    opt_1098 ::= COMMA | $empty

    grp_1099 ::= ON | OFF

    grp_1096 ::= opt_1097 DEFAULT_SCHEMA EQUAL id_ | opt_1098 ALLOW_ENCRYPTED_VALUE_MODIFICATIONS EQUAL grp_1099

    list_1100 ::= $empty | list_1100 grp_1096

    grp_1095 ::= WITH list_1100

    opt_1101 ::= grp_1095 | $empty

    opt_1105 ::= COMMA | $empty

    opt_1106 ::= COMMA | $empty

    grp_1107 ::= NONE | DECIMAL | id_

    opt_1108 ::= COMMA | $empty

    opt_1109 ::= COMMA | $empty

    grp_1110 ::= ON | OFF

    grp_1104 ::= opt_1105 DEFAULT_SCHEMA EQUAL id_ | opt_1106 DEFAULT_LANGUAGE EQUAL grp_1107 | opt_1108 SID EQUAL BINARY | opt_1109 ALLOW_ENCRYPTED_VALUE_MODIFICATIONS EQUAL grp_1110

    list_1111 ::= $empty | list_1111 grp_1104

    grp_1103 ::= WITH list_1111

    opt_1112 ::= grp_1103 | $empty

    opt_1114 ::= COMMA | $empty

    opt_1115 ::= COMMA | $empty

    grp_1116 ::= NONE | DECIMAL | id_

    opt_1117 ::= COMMA | $empty

    opt_1118 ::= COMMA | $empty

    grp_1119 ::= ON | OFF

    grp_1113 ::= opt_1114 DEFAULT_SCHEMA EQUAL id_ | opt_1115 DEFAULT_LANGUAGE EQUAL grp_1116 | opt_1117 SID EQUAL BINARY | opt_1118 ALLOW_ENCRYPTED_VALUE_MODIFICATIONS EQUAL grp_1119

    list_1120 ::= $empty | list_1120 grp_1113

    grp_1102 ::= id_ opt_1112 | id_ WITH PASSWORD EQUAL STRING list_1120 | id_ FROM EXTERNAL PROVIDER

    opt_1123 ::= COMMA | $empty

    opt_1124 ::= COMMA | $empty

    grp_1125 ::= ON | OFF

    grp_1122 ::= opt_1123 DEFAULT_SCHEMA EQUAL id_ | opt_1124 ALLOW_ENCRYPTED_VALUE_MODIFICATIONS EQUAL grp_1125

    list_1126 ::= $empty | list_1126 grp_1122

    grp_1127 ::= FOR | FROM

    grp_1128 ::= FOR | FROM

    grp_1121 ::= WITHOUT LOGIN list_1126 | grp_1127 CERTIFICATE id_ | grp_1128 ASYMMETRIC KEY id_

    grp_1130 ::= FOR | FROM

    grp_1129 ::= grp_1130 LOGIN id_ | WITHOUT LOGIN

    opt_1131 ::= grp_1129 | $empty

    seq_1132 ::= WITH DEFAULT_SCHEMA EQUAL id_

    opt_1133 ::= seq_1132 | $empty

    seq_1134 ::= WITH DEFAULT_SCHEMA EQUAL id_

    opt_1135 ::= seq_1134 | $empty

    opt_1137 ::= COMMA | $empty

    opt_1138 ::= COMMA | $empty

    opt_1139 ::= COMMA | $empty

    opt_1140 ::= COMMA | $empty

    grp_1141 ::= ON | OFF

    grp_1136 ::= opt_1137 NAME EQUAL id_ | opt_1138 DEFAULT_SCHEMA EQUAL id_ | opt_1139 LOGIN EQUAL id_ | opt_1140 ALLOW_ENCRYPTED_VALUE_MODIFICATIONS EQUAL grp_1141

    list_1142 ::= grp_1136 | list_1142 grp_1136

    grp_1143 ::= id_ | DEFAULT_DOUBLE_QUOTE

    grp_1146 ::= LOW | MEDIUM | HIGH

    opt_1147 ::= COMMA | $empty

    opt_1148 ::= COMMA | $empty

    grp_1145 ::= IMPORTANCE EQUAL grp_1146 | opt_1147 REQUEST_MAX_MEMORY_GRANT_PERCENT EQUAL DECIMAL | opt_1148 REQUEST_MAX_CPU_TIME_SEC EQUAL DECIMAL | REQUEST_MEMORY_GRANT_TIMEOUT_SEC EQUAL DECIMAL | MAX_DOP EQUAL DECIMAL | GROUP_MAX_REQUESTS EQUAL DECIMAL

    list_1149 ::= grp_1145 | list_1149 grp_1145

    grp_1144 ::= WITH LR_BRACKET list_1149 RR_BRACKET

    opt_1150 ::= grp_1144 | $empty

    grp_1152 ::= id_ | DEFAULT_DOUBLE_QUOTE

    grp_1151 ::= USING grp_1152

    opt_1153 ::= grp_1151 | $empty

    grp_1156 ::= LOW | MEDIUM | HIGH

    opt_1157 ::= COMMA | $empty

    opt_1158 ::= COMMA | $empty

    grp_1155 ::= IMPORTANCE EQUAL grp_1156 | opt_1157 REQUEST_MAX_MEMORY_GRANT_PERCENT EQUAL DECIMAL | opt_1158 REQUEST_MAX_CPU_TIME_SEC EQUAL DECIMAL | REQUEST_MEMORY_GRANT_TIMEOUT_SEC EQUAL DECIMAL | MAX_DOP EQUAL DECIMAL | GROUP_MAX_REQUESTS EQUAL DECIMAL

    list_1159 ::= grp_1155 | list_1159 grp_1155

    grp_1154 ::= WITH LR_BRACKET list_1159 RR_BRACKET

    opt_1160 ::= grp_1154 | $empty

    grp_1162 ::= id_ | DEFAULT_DOUBLE_QUOTE

    opt_1163 ::= grp_1162 | $empty

    opt_1165 ::= COMMA | $empty

    grp_1164 ::= opt_1165 EXTERNAL id_ | DEFAULT_DOUBLE_QUOTE

    opt_1166 ::= grp_1164 | $empty

    grp_1161 ::= USING opt_1163 opt_1166

    opt_1167 ::= grp_1161 | $empty

    seq_1168 ::= id_ DOT

    opt_1169 ::= seq_1168 | $empty

    grp_1170 ::= STRING | id_ | LOCAL_ID

    grp_1171 ::= LEFT | RIGHT

    opt_1172 ::= grp_1171 | $empty

    opt_1173 ::= ALL | $empty

    list_1174 ::= file_group_names | list_1174 file_group_names

    list_1175 ::= file_group_names | list_1175 file_group_names

    seq_1176 ::= COMMA list_1175 id_

    list_1177 ::= $empty | list_1177 seq_1176

    grp_1178 ::= full_table_name | id_

    opt_1179 ::= queue_settings | $empty

    grp_1180 ::= ON id_ | DEFAULT

    opt_1181 ::= grp_1180 | $empty

    opt_1182 ::= COMMA | $empty

    seq_1183 ::= STATUS EQUAL on_off opt_1182

    opt_1184 ::= seq_1183 | $empty

    opt_1185 ::= COMMA | $empty

    seq_1186 ::= RETENTION EQUAL on_off opt_1185

    opt_1187 ::= seq_1186 | $empty

    opt_1191 ::= COMMA | $empty

    seq_1192 ::= STATUS EQUAL on_off opt_1191

    opt_1193 ::= seq_1192 | $empty

    opt_1194 ::= COMMA | $empty

    seq_1195 ::= PROCEDURE_NAME EQUAL func_proc_name_database_schema opt_1194

    opt_1196 ::= seq_1195 | $empty

    opt_1197 ::= COMMA | $empty

    seq_1198 ::= MAX_QUEUE_READERS EQUAL DECIMAL opt_1197

    opt_1199 ::= seq_1198 | $empty

    grp_1201 ::= SELF | STRING | OWNER

    opt_1202 ::= COMMA | $empty

    grp_1200 ::= EXECUTE AS grp_1201 opt_1202

    opt_1203 ::= grp_1200 | $empty

    grp_1190 ::= opt_1193 opt_1196 opt_1199 opt_1203

    grp_1189 ::= grp_1190 | DROP

    opt_1204 ::= COMMA | $empty

    grp_1188 ::= ACTIVATION LR_BRACKET grp_1189 RR_BRACKET opt_1204

    opt_1205 ::= grp_1188 | $empty

    seq_1206 ::= STATUS EQUAL on_off

    seq_1207 ::= POISON_MESSAGE_HANDLING LR_BRACKET seq_1206 RR_BRACKET

    opt_1208 ::= seq_1207 | $empty

    grp_1209 ::= full_table_name | id_

    grp_1210 ::= queue_settings | queue_action

    seq_1211 ::= WITH LR_BRACKET queue_rebuild_options RR_BRACKET

    opt_1212 ::= seq_1211 | $empty

    seq_1213 ::= WITH LOB_COMPACTION EQUAL on_off

    opt_1214 ::= seq_1213 | $empty

    grp_1215 ::= id_ | DEFAULT

    seq_1216 ::= AUTHORIZATION id_

    opt_1217 ::= seq_1216 | $empty

    grp_1219 ::= id_ | DEFAULT

    grp_1220 ::= INITIATOR | TARGET | ANY

    opt_1221 ::= COMMA | $empty

    grp_1218 ::= grp_1219 SENT BY grp_1220 opt_1221

    list_1222 ::= grp_1218 | list_1222 grp_1218

    seq_1223 ::= AUTHORIZATION id_

    opt_1224 ::= seq_1223 | $empty

    grp_1226 ::= NONE | EMPTY | WELL_FORMED_XML | VALID_XML WITH SCHEMA COLLECTION id_

    grp_1225 ::= VALIDATION EQUAL grp_1226

    opt_1227 ::= with_expression | $empty

    opt_1228 ::= PERCENT | $empty

    seq_1229 ::= TOP LPAREN expression RPAREN opt_1228

    opt_1230 ::= seq_1229 | $empty

    opt_1231 ::= INTO | $empty

    opt_1232 ::= with_table_hints | $empty

    opt_1233 ::= as_table_alias | $empty

    list_1234 ::= when_matches | list_1234 when_matches

    opt_1235 ::= output_clause | $empty

    opt_1236 ::= option_clause | $empty

    seq_1237 ::= AND search_condition

    opt_1238 ::= seq_1237 | $empty

    seq_1239 ::= WHEN MATCHED opt_1238 THEN merge_matched

    list_1240 ::= seq_1239 | list_1240 seq_1239

    seq_1241 ::= BY TARGET

    opt_1242 ::= seq_1241 | $empty

    seq_1243 ::= AND search_condition

    opt_1244 ::= seq_1243 | $empty

    seq_1245 ::= WHEN NOT MATCHED opt_1242 opt_1244 THEN merge_not_matched

    seq_1246 ::= AND search_condition

    opt_1247 ::= seq_1246 | $empty

    seq_1248 ::= WHEN NOT MATCHED BY SOURCE opt_1247 THEN merge_matched

    list_1249 ::= seq_1248 | list_1249 seq_1248

    seq_1250 ::= COMMA update_elem_merge

    list_1251 ::= $empty | list_1251 seq_1250

    seq_1252 ::= LPAREN column_name_list RPAREN

    opt_1253 ::= seq_1252 | $empty

    grp_1254 ::= table_value_constructor | DEFAULT VALUES

    opt_1255 ::= with_expression | $empty

    opt_1257 ::= PERCENT | $empty

    grp_1256 ::= TOP LPAREN expression RPAREN opt_1257 | TOP DECIMAL

    opt_1258 ::= grp_1256 | $empty

    opt_1259 ::= FROM | $empty

    opt_1260 ::= with_table_hints | $empty

    opt_1261 ::= output_clause | $empty

    seq_1262 ::= FROM table_sources

    opt_1263 ::= seq_1262 | $empty

    opt_1267 ::= GLOBAL | $empty

    grp_1266 ::= opt_1267 cursor_name | LOCAL_ID

    grp_1265 ::= search_condition | CURRENT OF grp_1266

    grp_1264 ::= WHERE grp_1265

    opt_1268 ::= grp_1264 | $empty

    opt_1269 ::= for_clause | $empty

    opt_1270 ::= option_clause | $empty

    opt_1271 ::= SEMI | $empty

    opt_1272 ::= with_expression | $empty

    opt_1273 ::= PERCENT | $empty

    seq_1274 ::= TOP LPAREN expression RPAREN opt_1273

    opt_1275 ::= seq_1274 | $empty

    opt_1276 ::= INTO | $empty

    grp_1277 ::= ddl_object | rowset_function_limited

    opt_1278 ::= with_table_hints | $empty

    seq_1279 ::= LPAREN insert_column_name_list RPAREN

    opt_1280 ::= seq_1279 | $empty

    opt_1281 ::= output_clause | $empty

    opt_1282 ::= for_clause | $empty

    opt_1283 ::= option_clause | $empty

    opt_1284 ::= SEMI | $empty

    opt_1285 ::= LPAREN | $empty

    grp_1286 ::= ALL | DISTINCT | top_clause | STAR

    opt_1287 ::= COMMA | $empty

    seq_1288 ::= LOCAL_ID EQ expression opt_1287

    list_1289 ::= $empty | list_1289 seq_1288

    seq_1290 ::= WHERE search_condition

    seq_1291 ::= INTO id_ seq_1290

    opt_1292 ::= seq_1291 | $empty

    opt_1293 ::= RPAREN | $empty

    opt_1294 ::= with_expression | $empty

    opt_1295 ::= select_order_by_clause | $empty

    opt_1296 ::= for_clause | $empty

    opt_1297 ::= option_clause | $empty

    opt_1298 ::= SEMI | $empty

    grp_1299 ::= LOCAL_ID | constant

    opt_1300 ::= with_expression | $empty

    opt_1301 ::= PERCENT | $empty

    seq_1302 ::= TOP LPAREN expression RPAREN opt_1301

    opt_1303 ::= seq_1302 | $empty

    grp_1304 ::= ddl_object | rowset_function_limited

    opt_1305 ::= with_table_hints | $empty

    seq_1306 ::= COMMA update_elem

    list_1307 ::= $empty | list_1307 seq_1306

    opt_1308 ::= output_clause | $empty

    seq_1309 ::= FROM table_sources

    opt_1310 ::= seq_1309 | $empty

    opt_1314 ::= GLOBAL | $empty

    grp_1313 ::= opt_1314 cursor_name | LOCAL_ID

    grp_1312 ::= search_condition | CURRENT OF grp_1313

    grp_1311 ::= WHERE grp_1312

    opt_1315 ::= grp_1311 | $empty

    opt_1316 ::= for_clause | $empty

    opt_1317 ::= option_clause | $empty

    opt_1318 ::= SEMI | $empty

    seq_1319 ::= COMMA output_dml_list_elem

    list_1320 ::= $empty | list_1320 seq_1319

    grp_1322 ::= LOCAL_ID | table_name

    seq_1323 ::= LPAREN column_name_list RPAREN

    opt_1324 ::= seq_1323 | $empty

    grp_1321 ::= INTO grp_1322 opt_1324

    opt_1325 ::= grp_1321 | $empty

    grp_1326 ::= expression | asterisk

    opt_1327 ::= as_column_alias | $empty

    grp_1329 ::= NONE | PARTIAL

    grp_1328 ::= CONTAINMENT EQ grp_1329

    opt_1330 ::= grp_1328 | $empty

    opt_1331 ::= PRIMARY | $empty

    seq_1332 ::= COMMA database_file_spec

    list_1333 ::= $empty | list_1333 seq_1332

    seq_1334 ::= ON opt_1331 database_file_spec list_1333

    opt_1335 ::= seq_1334 | $empty

    seq_1336 ::= COMMA database_file_spec

    list_1337 ::= $empty | list_1337 seq_1336

    seq_1338 ::= LOG ON database_file_spec list_1337

    opt_1339 ::= seq_1338 | $empty

    seq_1340 ::= COLLATE id_

    opt_1341 ::= seq_1340 | $empty

    seq_1342 ::= COMMA create_database_option

    list_1343 ::= $empty | list_1343 seq_1342

    seq_1344 ::= WITH create_database_option list_1343

    opt_1345 ::= seq_1344 | $empty

    opt_1346 ::= UNIQUE | $empty

    opt_1347 ::= clustered | $empty

    seq_1348 ::= INCLUDE LPAREN column_name_list RPAREN

    opt_1349 ::= seq_1348 | $empty

    seq_1350 ::= WHERE search_condition

    opt_1351 ::= seq_1350 | $empty

    opt_1352 ::= create_index_options | $empty

    seq_1353 ::= ON id_

    opt_1354 ::= seq_1353 | $empty

    opt_1355 ::= SEMI | $empty

    seq_1356 ::= COMMA relational_index_option

    list_1357 ::= $empty | list_1357 seq_1356

    grp_1358 ::= id_ | ALL

    opt_1360 ::= resumable_index_options | $empty

    grp_1359 ::= DISABLE | PAUSE | ABORT | RESUME opt_1360 | reorganize_partition | set_index_options | rebuild_partition

    seq_1361 ::= COMMA resumable_index_option

    list_1362 ::= $empty | list_1362 seq_1361

    seq_1363 ::= resumable_index_option list_1362

    opt_1364 ::= MINUTES | $empty

    seq_1365 ::= PARTITION EQ DECIMAL

    opt_1366 ::= seq_1365 | $empty

    opt_1367 ::= reorganize_options | $empty

    seq_1368 ::= COMMA reorganize_option

    list_1369 ::= $empty | list_1369 seq_1368

    seq_1370 ::= reorganize_option list_1369

    seq_1371 ::= COMMA set_index_option

    list_1372 ::= $empty | list_1372 seq_1371

    opt_1373 ::= MINUTES | $empty

    seq_1374 ::= PARTITION EQ ALL

    opt_1375 ::= seq_1374 | $empty

    opt_1376 ::= rebuild_index_options | $empty

    opt_1377 ::= single_partition_rebuild_index_options | $empty

    seq_1378 ::= COMMA rebuild_index_option

    list_1379 ::= $empty | list_1379 seq_1378

    seq_1381 ::= LPAREN low_priority_lock_wait RPAREN

    opt_1382 ::= seq_1381 | $empty

    grp_1380 ::= ON opt_1382 | OFF

    opt_1383 ::= MINUTES | $empty

    grp_1384 ::= NONE | ROW | PAGE | COLUMNSTORE | COLUMNSTORE_ARCHIVE

    opt_1385 ::= on_partitions | $empty

    opt_1386 ::= on_partitions | $empty

    seq_1387 ::= COMMA single_partition_rebuild_index_option

    list_1388 ::= $empty | list_1388 seq_1387

    grp_1389 ::= NONE | ROW | PAGE | COLUMNSTORE | COLUMNSTORE_ARCHIVE

    opt_1390 ::= on_partitions | $empty

    opt_1391 ::= on_partitions | $empty

    seq_1393 ::= LPAREN low_priority_lock_wait RPAREN

    opt_1394 ::= seq_1393 | $empty

    grp_1392 ::= ON opt_1394 | OFF

    seq_1395 ::= TO DECIMAL

    opt_1396 ::= seq_1395 | $empty

    seq_1397 ::= TO DECIMAL

    opt_1398 ::= seq_1397 | $empty

    seq_1399 ::= COMMA DECIMAL opt_1398

    list_1400 ::= $empty | list_1400 seq_1399

    opt_1401 ::= create_columnstore_index_options | $empty

    seq_1402 ::= ON id_

    opt_1403 ::= seq_1402 | $empty

    opt_1404 ::= SEMI | $empty

    seq_1405 ::= COMMA columnstore_index_option

    list_1406 ::= $empty | list_1406 seq_1405

    opt_1407 ::= MINUTES | $empty

    grp_1408 ::= COLUMNSTORE | COLUMNSTORE_ARCHIVE

    opt_1409 ::= on_partitions | $empty

    opt_1410 ::= NONCLUSTERED | $empty

    seq_1411 ::= WHERE search_condition

    opt_1412 ::= seq_1411 | $empty

    opt_1413 ::= create_columnstore_index_options | $empty

    seq_1414 ::= ON id_

    opt_1415 ::= seq_1414 | $empty

    opt_1416 ::= SEMI | $empty

    opt_1417 ::= PRIMARY | $empty

    grp_1420 ::= VALUE | PATH | PROPERTY

    opt_1421 ::= grp_1420 | $empty

    grp_1419 ::= FOR opt_1421

    opt_1422 ::= grp_1419 | $empty

    grp_1418 ::= USING XML INDEX id_ opt_1422

    opt_1423 ::= grp_1418 | $empty

    opt_1424 ::= xml_index_options | $empty

    opt_1425 ::= SEMI | $empty

    seq_1426 ::= COMMA xml_index_option

    list_1427 ::= $empty | list_1427 seq_1426

    seq_1429 ::= LPAREN low_priority_lock_wait RPAREN

    opt_1430 ::= seq_1429 | $empty

    grp_1428 ::= ON opt_1430 | OFF

    seq_1432 ::= OR ALTER

    opt_1433 ::= seq_1432 | $empty

    seq_1434 ::= CREATE opt_1433

    grp_1431 ::= seq_1434 | ALTER

    grp_1435 ::= PROC | PROCEDURE

    seq_1436 ::= SEMI DECIMAL

    opt_1437 ::= seq_1436 | $empty

    opt_1438 ::= LPAREN | $empty

    seq_1439 ::= COMMA procedure_param

    list_1440 ::= $empty | list_1440 seq_1439

    opt_1441 ::= RPAREN | $empty

    seq_1442 ::= opt_1438 procedure_param list_1440 opt_1441

    opt_1443 ::= seq_1442 | $empty

    seq_1444 ::= COMMA procedure_option

    list_1445 ::= $empty | list_1445 seq_1444

    seq_1446 ::= WITH procedure_option list_1445

    opt_1447 ::= seq_1446 | $empty

    seq_1448 ::= FOR REPLICATION

    opt_1449 ::= seq_1448 | $empty

    list_1451 ::= $empty | list_1451 sql_clauses

    grp_1450 ::= as_external_name | list_1451

    seq_1453 ::= OR ALTER

    opt_1454 ::= seq_1453 | $empty

    grp_1452 ::= CREATE opt_1454 | ALTER

    seq_1455 ::= COMMA dml_trigger_option

    list_1456 ::= $empty | list_1456 seq_1455

    seq_1457 ::= WITH dml_trigger_option list_1456

    opt_1458 ::= seq_1457 | $empty

    grp_1459 ::= FOR | AFTER | INSTEAD OF

    seq_1460 ::= COMMA dml_trigger_operation

    list_1461 ::= $empty | list_1461 seq_1460

    seq_1462 ::= WITH APPEND

    opt_1463 ::= seq_1462 | $empty

    seq_1464 ::= NOT FOR REPLICATION

    opt_1465 ::= seq_1464 | $empty

    list_1466 ::= sql_clauses | list_1466 sql_clauses

    grp_1467 ::= INSERT | UPDATE | DELETE

    seq_1469 ::= OR ALTER

    opt_1470 ::= seq_1469 | $empty

    grp_1468 ::= CREATE opt_1470 | ALTER

    grp_1471 ::= ALL SERVER | DATABASE

    seq_1472 ::= COMMA dml_trigger_option

    list_1473 ::= $empty | list_1473 seq_1472

    seq_1474 ::= WITH dml_trigger_option list_1473

    opt_1475 ::= seq_1474 | $empty

    grp_1476 ::= FOR | AFTER

    seq_1477 ::= COMMA ddl_trigger_operation

    list_1478 ::= $empty | list_1478 seq_1477

    list_1479 ::= sql_clauses | list_1479 sql_clauses

    seq_1481 ::= OR ALTER

    opt_1482 ::= seq_1481 | $empty

    seq_1483 ::= CREATE opt_1482

    grp_1480 ::= seq_1483 | ALTER

    seq_1485 ::= COMMA procedure_param

    list_1486 ::= $empty | list_1486 seq_1485

    seq_1487 ::= LPAREN procedure_param list_1486 RPAREN

    grp_1484 ::= seq_1487 | LPAREN RPAREN

    grp_1488 ::= func_body_returns_select | func_body_returns_table | func_body_returns_scalar

    opt_1489 ::= SEMI | $empty

    seq_1490 ::= COMMA function_option

    list_1491 ::= $empty | list_1491 seq_1490

    seq_1492 ::= WITH function_option list_1491

    opt_1493 ::= seq_1492 | $empty

    opt_1494 ::= AS | $empty

    grp_1496 ::= LPAREN select_statement_standalone RPAREN | select_statement_standalone

    grp_1495 ::= as_external_name | RETURN grp_1496

    seq_1497 ::= COMMA function_option

    list_1498 ::= $empty | list_1498 seq_1497

    seq_1499 ::= WITH function_option list_1498

    opt_1500 ::= seq_1499 | $empty

    opt_1501 ::= AS | $empty

    list_1503 ::= $empty | list_1503 sql_clauses

    opt_1504 ::= SEMI | $empty

    opt_1505 ::= SEMI | $empty

    grp_1502 ::= as_external_name | BEGIN list_1503 RETURN opt_1504 END opt_1505

    seq_1506 ::= COMMA function_option

    list_1507 ::= $empty | list_1507 seq_1506

    seq_1508 ::= WITH function_option list_1507

    opt_1509 ::= seq_1508 | $empty

    opt_1510 ::= AS | $empty

    list_1512 ::= $empty | list_1512 sql_clauses

    opt_1513 ::= SEMI | $empty

    grp_1511 ::= as_external_name | BEGIN list_1512 RETURN expression opt_1513 END

    opt_1514 ::= AS | $empty

    seq_1515 ::= id_ DOT

    opt_1516 ::= seq_1515 | $empty

    opt_1517 ::= VARYING | $empty

    seq_1518 ::= EQ procedure_param_default_value

    opt_1519 ::= seq_1518 | $empty

    grp_1520 ::= OUT | OUTPUT | READONLY

    opt_1521 ::= grp_1520 | $empty

    grp_1524 ::= PERCENT | ROWS

    grp_1523 ::= FULLSCAN | SAMPLE DECIMAL grp_1524 | STATS_STREAM

    seq_1525 ::= COMMA NORECOMPUTE

    opt_1526 ::= seq_1525 | $empty

    seq_1527 ::= COMMA INCREMENTAL EQUAL on_off

    opt_1528 ::= seq_1527 | $empty

    grp_1522 ::= WITH grp_1523 opt_1526 opt_1528

    opt_1529 ::= grp_1522 | $empty

    opt_1530 ::= SEMI | $empty

    seq_1532 ::= COMMA id_

    list_1533 ::= $empty | list_1533 seq_1532

    grp_1531 ::= id_ | LPAREN id_ list_1533 RPAREN

    opt_1534 ::= grp_1531 | $empty

    opt_1535 ::= update_statistics_options | $empty

    seq_1536 ::= COMMA update_statistics_option

    list_1537 ::= $empty | list_1537 seq_1536

    opt_1538 ::= COMMA | $empty

    seq_1539 ::= opt_1538 PERSIST_SAMPLE_PERCENT EQ on_off

    opt_1540 ::= seq_1539 | $empty

    seq_1541 ::= FULLSCAN opt_1540

    grp_1543 ::= PERCENT | ROWS

    opt_1544 ::= COMMA | $empty

    seq_1545 ::= opt_1544 PERSIST_SAMPLE_PERCENT EQ on_off

    opt_1546 ::= seq_1545 | $empty

    grp_1542 ::= SAMPLE DECIMAL grp_1543 opt_1546

    opt_1547 ::= on_partitions | $empty

    opt_1548 ::= COMMA | $empty

    seq_1549 ::= opt_1548 table_indices

    list_1550 ::= $empty | list_1550 seq_1549

    opt_1551 ::= COMMA | $empty

    seq_1552 ::= LOCK simple_id

    opt_1553 ::= seq_1552 | $empty

    list_1554 ::= $empty | list_1554 table_options

    grp_1555 ::= ON id_ | DEFAULT | on_partition_or_filegroup

    opt_1556 ::= grp_1555 | $empty

    grp_1557 ::= TEXTIMAGE_ON id_ | DEFAULT

    opt_1558 ::= grp_1557 | $empty

    opt_1559 ::= SEMI | $empty

    opt_1560 ::= UNIQUE | $empty

    opt_1561 ::= clustered | $empty

    opt_1562 ::= NONCLUSTERED | $empty

    opt_1563 ::= create_table_index_options | $empty

    seq_1564 ::= ON id_

    opt_1565 ::= seq_1564 | $empty

    seq_1567 ::= COMMA table_option

    list_1568 ::= $empty | list_1568 seq_1567

    seq_1569 ::= COMMA table_option

    list_1570 ::= $empty | list_1570 seq_1569

    grp_1566 ::= LPAREN table_option list_1568 RPAREN | table_option list_1570

    grp_1571 ::= simple_id | keyword

    grp_1572 ::= simple_id | keyword | on_off | DECIMAL

    grp_1573 ::= ASC | DESC

    opt_1574 ::= grp_1573 | $empty

    grp_1576 ::= ASC | DESC

    opt_1577 ::= grp_1576 | $empty

    grp_1575 ::= COMMA id_ opt_1577

    list_1578 ::= $empty | list_1578 grp_1575

    grp_1579 ::= NONE | ROW | PAGE

    opt_1580 ::= on_partitions | $empty

    opt_1581 ::= on_partitions | $empty

    seq_1582 ::= COMMA create_table_index_option

    list_1583 ::= $empty | list_1583 seq_1582

    grp_1584 ::= NONE | ROW | PAGE | COLUMNSTORE | COLUMNSTORE_ARCHIVE

    opt_1585 ::= on_partitions | $empty

    opt_1586 ::= on_partitions | $empty

    seq_1588 ::= OR ALTER

    opt_1589 ::= seq_1588 | $empty

    grp_1587 ::= CREATE opt_1589 | ALTER

    seq_1590 ::= LPAREN column_name_list RPAREN

    opt_1591 ::= seq_1590 | $empty

    seq_1592 ::= COMMA view_attribute

    list_1593 ::= $empty | list_1593 seq_1592

    seq_1594 ::= WITH view_attribute list_1593

    opt_1595 ::= seq_1594 | $empty

    seq_1596 ::= WITH CHECK OPTION

    opt_1597 ::= seq_1596 | $empty

    opt_1598 ::= SEMI | $empty

    grp_1600 ::= AUTO | TABLE | DISABLE

    grp_1601 ::= column_definition | column_modifier

    seq_1602 ::= COMMA id_

    list_1603 ::= $empty | list_1603 seq_1602

    grp_1604 ::= CHECK | NOCHECK

    seq_1605 ::= CONSTRAINT id_

    opt_1606 ::= seq_1605 | $empty

    seq_1608 ::= LPAREN column_name_list RPAREN

    opt_1609 ::= seq_1608 | $empty

    grp_1610 ::= on_delete | on_update

    list_1611 ::= $empty | list_1611 grp_1610

    grp_1607 ::= FOREIGN KEY LPAREN column_name_list RPAREN REFERENCES table_name opt_1609 list_1611 | CHECK LPAREN search_condition RPAREN

    grp_1612 ::= NOCHECK | CHECK

    grp_1613 ::= ENABLE | DISABLE

    opt_1614 ::= id_ | $empty

    grp_1599 ::= SET LPAREN LOCK_ESCALATION EQ grp_1600 RPAREN | ADD column_def_table_constraints | ALTER COLUMN grp_1601 | DROP COLUMN id_ list_1603 | DROP CONSTRAINT id_ | WITH grp_1604 ADD opt_1606 grp_1607 | grp_1612 CONSTRAINT id_ | grp_1613 TRIGGER opt_1614 | REBUILD table_options | SWITCH switch_partition

    opt_1615 ::= SEMI | $empty

    opt_1616 ::= PARTITION | $empty

    seq_1617 ::= opt_1616 expression

    opt_1618 ::= seq_1617 | $empty

    seq_1619 ::= PARTITION expression

    opt_1620 ::= seq_1619 | $empty

    seq_1621 ::= WITH low_priority_lock_wait

    opt_1622 ::= seq_1621 | $empty

    opt_1623 ::= MINUTES | $empty

    grp_1624 ::= NONE | SELF | BLOCKERS

    grp_1625 ::= id_ | CURRENT

    seq_1627 ::= WITH termination

    opt_1628 ::= seq_1627 | $empty

    grp_1626 ::= MODIFY NAME EQ id_ | COLLATE id_ | SET database_optionspec opt_1628 | add_or_modify_files | add_or_modify_filegroups

    opt_1629 ::= SEMI | $empty

    seq_1630 ::= COMMA filespec

    list_1631 ::= $empty | list_1631 seq_1630

    seq_1632 ::= TO FILEGROUP id_

    opt_1633 ::= seq_1632 | $empty

    seq_1634 ::= COMMA filespec

    list_1635 ::= $empty | list_1635 seq_1634

    seq_1636 ::= COMMA NEWNAME EQ id_or_string

    opt_1637 ::= seq_1636 | $empty

    seq_1638 ::= COMMA FILENAME EQ STRING

    opt_1639 ::= seq_1638 | $empty

    seq_1640 ::= COMMA SIZE EQ file_size

    opt_1641 ::= seq_1640 | $empty

    grp_1642 ::= COMMA MAXSIZE EQ file_size | UNLIMITED

    opt_1643 ::= grp_1642 | $empty

    seq_1644 ::= COMMA FILEGROWTH EQ file_size

    opt_1645 ::= seq_1644 | $empty

    seq_1646 ::= COMMA OFFLINE

    opt_1647 ::= seq_1646 | $empty

    grp_1648 ::= CONTAINS FILESTREAM | CONTAINS MEMORY_OPTIMIZED_DATA

    opt_1649 ::= grp_1648 | $empty

    grp_1650 ::= filegroup_updatability_option | DEFAULT | NAME EQ id_ | AUTOGROW_SINGLE_FILE | AUTOGROW_ALL_FILES

    grp_1651 ::= INCREMENTAL EQUAL ON | OFF

    grp_1652 ::= ON | OFF

    seq_1654 ::= COMMA change_tracking_option_list

    list_1655 ::= $empty | list_1655 seq_1654

    seq_1656 ::= change_tracking_option_list list_1655

    list_1657 ::= $empty | list_1657 seq_1656

    grp_1653 ::= OFF | ON LPAREN list_1657 RPAREN

    grp_1658 ::= DAYS | HOURS | MINUTES

    grp_1659 ::= NONE | PARTIAL

    grp_1660 ::= LOCAL | GLOBAL

    seq_1661 ::= AUTHORIZATION id_

    opt_1662 ::= seq_1661 | $empty

    grp_1664 ::= STARTED | STOPPED | DISABLED

    grp_1663 ::= STATE EQUAL grp_1664

    opt_1665 ::= grp_1663 | $empty

    opt_1667 ::= COMMA | $empty

    seq_1668 ::= opt_1667 endpoint_encryption_alogorithm_clause

    opt_1669 ::= seq_1668 | $empty

    opt_1671 ::= COMMA | $empty

    grp_1672 ::= ENABLED | DISABLED

    grp_1670 ::= opt_1671 MESSAGE_FORWARDING EQUAL grp_1672

    opt_1673 ::= grp_1670 | $empty

    opt_1674 ::= COMMA | $empty

    seq_1675 ::= opt_1674 MESSAGE_FORWARD_SIZE EQUAL DECIMAL

    opt_1676 ::= seq_1675 | $empty

    opt_1677 ::= COMMA | $empty

    seq_1678 ::= opt_1677 endpoint_encryption_alogorithm_clause

    opt_1679 ::= seq_1678 | $empty

    opt_1680 ::= COMMA | $empty

    grp_1681 ::= WITNESS | PARTNER | ALL

    grp_1666 ::= FOR TSQL LR_BRACKET RR_BRACKET | FOR SERVICE_BROKER LR_BRACKET endpoint_authentication_clause opt_1669 opt_1673 opt_1676 RR_BRACKET | FOR DATABASE_MIRRORING LR_BRACKET endpoint_authentication_clause opt_1679 opt_1680 ROLE EQUAL grp_1681 RR_BRACKET

    grp_1682 ::= FULL | OFF

    grp_1683 ::= id_ DOT | id_

    grp_1684 ::= ONLINE | OFFLINE | EMERGENCY

    grp_1685 ::= DISABLED | ALLOWED | FORCED

    grp_1686 ::= id_ | STRING

    grp_1687 ::= id_ | STRING

    grp_1688 ::= OFF | ON

    grp_1689 ::= OFF | ON

    grp_1691 ::= AVAILABILITY GROUP EQUAL id_ | OFF

    grp_1692 ::= SUSPEND | RESUME

    grp_1690 ::= grp_1691 | grp_1692

    grp_1693 ::= OFF | ON

    grp_1694 ::= SIMPLE | FORCED

    grp_1695 ::= FULL | BULK_LOGGED | SIMPLE

    grp_1696 ::= CHECKSUM | TORN_PAGE_DETECTION | NONE

    grp_1697 ::= ON | OFF

    grp_1698 ::= ON | OFF

    grp_1699 ::= SECONDS | MINUTES

    seq_1700 ::= IF EXISTS

    opt_1701 ::= seq_1700 | $empty

    seq_1703 ::= COMMA drop_relational_or_xml_or_spatial_index

    list_1704 ::= $empty | list_1704 seq_1703

    seq_1705 ::= COMMA drop_backward_compatible_index

    list_1706 ::= $empty | list_1706 seq_1705

    grp_1702 ::= drop_relational_or_xml_or_spatial_index list_1704 | drop_backward_compatible_index list_1706

    opt_1707 ::= SEMI | $empty

    seq_1708 ::= id_ DOT

    opt_1709 ::= seq_1708 | $empty

    grp_1710 ::= PROC | PROCEDURE

    seq_1711 ::= IF EXISTS

    opt_1712 ::= seq_1711 | $empty

    seq_1713 ::= COMMA func_proc_name_schema

    list_1714 ::= $empty | list_1714 seq_1713

    opt_1715 ::= SEMI | $empty

    seq_1716 ::= IF EXISTS

    opt_1717 ::= seq_1716 | $empty

    seq_1718 ::= COMMA simple_name

    list_1719 ::= $empty | list_1719 seq_1718

    opt_1720 ::= SEMI | $empty

    seq_1721 ::= IF EXISTS

    opt_1722 ::= seq_1721 | $empty

    seq_1723 ::= COMMA simple_name

    list_1724 ::= $empty | list_1724 seq_1723

    grp_1725 ::= DATABASE | ALL SERVER

    opt_1726 ::= SEMI | $empty

    seq_1727 ::= IF EXISTS

    opt_1728 ::= seq_1727 | $empty

    seq_1729 ::= COMMA func_proc_name_schema

    list_1730 ::= $empty | list_1730 seq_1729

    opt_1731 ::= SEMI | $empty

    opt_1732 ::= COMMA | $empty

    seq_1733 ::= table_name DOT

    opt_1734 ::= seq_1733 | $empty

    seq_1735 ::= opt_1732 opt_1734 id_

    list_1736 ::= seq_1735 | list_1736 seq_1735

    seq_1737 ::= IF EXISTS

    opt_1738 ::= seq_1737 | $empty

    seq_1739 ::= COMMA table_name

    list_1740 ::= $empty | list_1740 seq_1739

    opt_1741 ::= SEMI | $empty

    seq_1742 ::= IF EXISTS

    opt_1743 ::= seq_1742 | $empty

    seq_1744 ::= COMMA simple_name

    list_1745 ::= $empty | list_1745 seq_1744

    opt_1746 ::= SEMI | $empty

    opt_1747 ::= null_notnull | $empty

    seq_1748 ::= FROM data_type opt_1747

    opt_1749 ::= seq_1748 | $empty

    seq_1750 ::= AS TABLE LR_BRACKET column_def_table_constraints RR_BRACKET

    opt_1751 ::= seq_1750 | $empty

    seq_1752 ::= IF EXISTS

    opt_1753 ::= seq_1752 | $empty

    opt_1754 ::= id_ | $empty

    opt_1755 ::= id_ | $empty

    opt_1756 ::= AS | $empty

    grp_1757 ::= data_type | table_type_definition | table_name

    list_1758 ::= loc | list_1758 loc

    list_1759 ::= loc | list_1759 loc

    seq_1760 ::= COMMA list_1759 declare_local

    list_1761 ::= $empty | list_1761 seq_1760

    opt_1762 ::= AS | $empty

    list_1763 ::= xml_dec | list_1763 xml_dec

    list_1764 ::= xml_dec | list_1764 xml_dec

    seq_1765 ::= COMMA list_1764 xml_declaration

    list_1766 ::= $empty | list_1766 seq_1765

    opt_1767 ::= GLOBAL | $empty

    opt_1768 ::= SEMI | $empty

    opt_1769 ::= GLOBAL | $empty

    opt_1770 ::= CURSOR | $empty

    opt_1771 ::= SEMI | $empty

    opt_1772 ::= GLOBAL | $empty

    opt_1773 ::= SEMI | $empty

    opt_1776 ::= COMMA | $empty

    grp_1777 ::= FILE | FILEGROUP

    grp_1775 ::= opt_1776 grp_1777 EQUAL STRING

    list_1778 ::= $empty | list_1778 grp_1775

    grp_1774 ::= READ_WRITE_FILEGROUPS list_1778

    opt_1779 ::= grp_1774 | $empty

    opt_1781 ::= COMMA | $empty

    grp_1782 ::= FILE | FILEGROUP

    grp_1780 ::= opt_1781 grp_1782 EQUAL STRING

    list_1783 ::= $empty | list_1783 grp_1780

    opt_1785 ::= COMMA | $empty

    seq_1786 ::= opt_1785 id_

    list_1787 ::= seq_1786 | list_1787 seq_1786

    opt_1789 ::= COMMA | $empty

    grp_1790 ::= DISK | TAPE | URL

    grp_1791 ::= STRING | id_

    grp_1788 ::= opt_1789 grp_1790 EQUAL grp_1791

    list_1792 ::= grp_1788 | list_1792 grp_1788

    grp_1784 ::= TO list_1787 | TO list_1792

    opt_1794 ::= COMMA | $empty

    seq_1795 ::= opt_1794 id_

    list_1796 ::= seq_1795 | list_1796 seq_1795

    seq_1797 ::= MIRROR TO list_1796

    list_1798 ::= seq_1797 | list_1798 seq_1797

    opt_1801 ::= COMMA | $empty

    grp_1802 ::= DISK | TAPE | URL

    grp_1803 ::= STRING | id_

    grp_1800 ::= opt_1801 grp_1802 EQUAL grp_1803

    list_1804 ::= grp_1800 | list_1804 grp_1800

    grp_1799 ::= MIRROR TO list_1804

    list_1805 ::= grp_1799 | list_1805 grp_1799

    grp_1793 ::= list_1798 | list_1805

    opt_1806 ::= grp_1793 | $empty

    opt_1809 ::= COMMA | $empty

    opt_1810 ::= COMMA | $empty

    opt_1811 ::= COMMA | $empty

    grp_1812 ::= COMPRESSION | NO_COMPRESSION

    opt_1813 ::= COMMA | $empty

    grp_1814 ::= STRING | id_

    opt_1815 ::= COMMA | $empty

    opt_1816 ::= COMMA | $empty

    opt_1817 ::= COMMA | $empty

    opt_1818 ::= COMMA | $empty

    grp_1820 ::= STRING | id_

    grp_1821 ::= DECIMAL | id_

    grp_1819 ::= EXPIREDATE EQUAL grp_1820 | RETAINDAYS EQUAL grp_1821

    opt_1822 ::= COMMA | $empty

    grp_1823 ::= NOINIT | INIT

    opt_1824 ::= COMMA | $empty

    grp_1825 ::= NOSKIP | SKIP_KEYWORD

    opt_1826 ::= COMMA | $empty

    grp_1827 ::= NOFORMAT | FORMAT

    opt_1828 ::= COMMA | $empty

    grp_1829 ::= STRING | id_

    opt_1830 ::= COMMA | $empty

    opt_1831 ::= COMMA | $empty

    grp_1832 ::= DECIMAL | id_

    opt_1833 ::= COMMA | $empty

    grp_1834 ::= DECIMAL | id_

    opt_1835 ::= COMMA | $empty

    grp_1836 ::= DECIMAL | id_

    opt_1837 ::= COMMA | $empty

    grp_1838 ::= NO_CHECKSUM | CHECKSUM

    opt_1839 ::= COMMA | $empty

    grp_1840 ::= STOP_ON_ERROR | CONTINUE_AFTER_ERROR

    opt_1841 ::= COMMA | $empty

    opt_1842 ::= COMMA | $empty

    seq_1843 ::= EQUAL DECIMAL

    opt_1844 ::= seq_1843 | $empty

    opt_1845 ::= COMMA | $empty

    grp_1846 ::= REWIND | NOREWIND

    opt_1847 ::= COMMA | $empty

    grp_1848 ::= LOAD | NOUNLOAD

    opt_1849 ::= COMMA | $empty

    grp_1850 ::= AES_128 | AES_192 | AES_256 | TRIPLE_DES_3KEY

    grp_1851 ::= id_ | SERVER ASYMMETRIC KEY EQUAL id_

    grp_1808 ::= opt_1809 DIFFERENTIAL | opt_1810 COPY_ONLY | opt_1811 grp_1812 | opt_1813 DESCRIPTION EQUAL grp_1814 | opt_1815 NAME EQUAL id_ | opt_1816 CREDENTIAL | opt_1817 FILE_SNAPSHOT | opt_1818 grp_1819 | opt_1822 grp_1823 | opt_1824 grp_1825 | opt_1826 grp_1827 | opt_1828 MEDIADESCRIPTION EQUAL grp_1829 | opt_1830 MEDIANAME EQUAL STRING | opt_1831 BLOCKSIZE EQUAL grp_1832 | opt_1833 BUFFERCOUNT EQUAL grp_1834 | opt_1835 MAXTRANSFER EQUAL grp_1836 | opt_1837 grp_1838 | opt_1839 grp_1840 | opt_1841 RESTART | opt_1842 STATS opt_1844 | opt_1845 grp_1846 | opt_1847 grp_1848 | opt_1849 ENCRYPTION LR_BRACKET ALGORITHM EQUAL grp_1850 COMMA SERVER CERTIFICATE EQUAL grp_1851

    list_1852 ::= $empty | list_1852 grp_1808

    grp_1807 ::= WITH list_1852

    opt_1853 ::= grp_1807 | $empty

    opt_1855 ::= COMMA | $empty

    seq_1856 ::= opt_1855 id_

    list_1857 ::= seq_1856 | list_1857 seq_1856

    opt_1859 ::= COMMA | $empty

    grp_1860 ::= DISK | TAPE | URL

    grp_1861 ::= STRING | id_

    grp_1858 ::= opt_1859 grp_1860 EQUAL grp_1861

    list_1862 ::= grp_1858 | list_1862 grp_1858

    grp_1854 ::= TO list_1857 | TO list_1862

    opt_1864 ::= COMMA | $empty

    seq_1865 ::= opt_1864 id_

    list_1866 ::= seq_1865 | list_1866 seq_1865

    seq_1867 ::= MIRROR TO list_1866

    list_1868 ::= seq_1867 | list_1868 seq_1867

    opt_1871 ::= COMMA | $empty

    grp_1872 ::= DISK | TAPE | URL

    grp_1873 ::= STRING | id_

    grp_1870 ::= opt_1871 grp_1872 EQUAL grp_1873

    list_1874 ::= grp_1870 | list_1874 grp_1870

    grp_1869 ::= MIRROR TO list_1874

    list_1875 ::= grp_1869 | list_1875 grp_1869

    grp_1863 ::= list_1868 | list_1875

    opt_1876 ::= grp_1863 | $empty

    opt_1879 ::= COMMA | $empty

    opt_1880 ::= COMMA | $empty

    opt_1881 ::= COMMA | $empty

    grp_1882 ::= COMPRESSION | NO_COMPRESSION

    opt_1883 ::= COMMA | $empty

    grp_1884 ::= STRING | id_

    opt_1885 ::= COMMA | $empty

    opt_1886 ::= COMMA | $empty

    opt_1887 ::= COMMA | $empty

    opt_1888 ::= COMMA | $empty

    grp_1890 ::= STRING | id_

    grp_1891 ::= DECIMAL | id_

    grp_1889 ::= EXPIREDATE EQUAL grp_1890 | RETAINDAYS EQUAL grp_1891

    opt_1892 ::= COMMA | $empty

    grp_1893 ::= NOINIT | INIT

    opt_1894 ::= COMMA | $empty

    grp_1895 ::= NOSKIP | SKIP_KEYWORD

    opt_1896 ::= COMMA | $empty

    grp_1897 ::= NOFORMAT | FORMAT

    opt_1898 ::= COMMA | $empty

    grp_1899 ::= STRING | id_

    opt_1900 ::= COMMA | $empty

    opt_1901 ::= COMMA | $empty

    grp_1902 ::= DECIMAL | id_

    opt_1903 ::= COMMA | $empty

    grp_1904 ::= DECIMAL | id_

    opt_1905 ::= COMMA | $empty

    grp_1906 ::= DECIMAL | id_

    opt_1907 ::= COMMA | $empty

    grp_1908 ::= NO_CHECKSUM | CHECKSUM

    opt_1909 ::= COMMA | $empty

    grp_1910 ::= STOP_ON_ERROR | CONTINUE_AFTER_ERROR

    opt_1911 ::= COMMA | $empty

    opt_1912 ::= COMMA | $empty

    seq_1913 ::= EQUAL DECIMAL

    opt_1914 ::= seq_1913 | $empty

    opt_1915 ::= COMMA | $empty

    grp_1916 ::= REWIND | NOREWIND

    opt_1917 ::= COMMA | $empty

    grp_1918 ::= LOAD | NOUNLOAD

    opt_1919 ::= COMMA | $empty

    grp_1920 ::= NORECOVERY | STANDBY EQUAL STRING

    opt_1921 ::= COMMA | $empty

    opt_1922 ::= COMMA | $empty

    grp_1923 ::= AES_128 | AES_192 | AES_256 | TRIPLE_DES_3KEY

    grp_1924 ::= id_ | SERVER ASYMMETRIC KEY EQUAL id_

    grp_1878 ::= opt_1879 DIFFERENTIAL | opt_1880 COPY_ONLY | opt_1881 grp_1882 | opt_1883 DESCRIPTION EQUAL grp_1884 | opt_1885 NAME EQUAL id_ | opt_1886 CREDENTIAL | opt_1887 FILE_SNAPSHOT | opt_1888 grp_1889 | opt_1892 grp_1893 | opt_1894 grp_1895 | opt_1896 grp_1897 | opt_1898 MEDIADESCRIPTION EQUAL grp_1899 | opt_1900 MEDIANAME EQUAL STRING | opt_1901 BLOCKSIZE EQUAL grp_1902 | opt_1903 BUFFERCOUNT EQUAL grp_1904 | opt_1905 MAXTRANSFER EQUAL grp_1906 | opt_1907 grp_1908 | opt_1909 grp_1910 | opt_1911 RESTART | opt_1912 STATS opt_1914 | opt_1915 grp_1916 | opt_1917 grp_1918 | opt_1919 grp_1920 | opt_1921 NO_TRUNCATE | opt_1922 ENCRYPTION LR_BRACKET ALGORITHM EQUAL grp_1923 COMMA SERVER CERTIFICATE EQUAL grp_1924

    list_1925 ::= $empty | list_1925 grp_1878

    grp_1877 ::= WITH list_1925

    opt_1926 ::= grp_1877 | $empty

    opt_1929 ::= COMMA | $empty

    opt_1930 ::= COMMA | $empty

    opt_1931 ::= COMMA | $empty

    grp_1928 ::= opt_1929 FILE EQUAL STRING | opt_1930 ENCRYPTION BY PASSWORD EQUAL STRING | opt_1931 DECRYPTION BY PASSWORD EQUAL STRING

    list_1932 ::= grp_1928 | list_1932 grp_1928

    grp_1927 ::= WITH PRIVATE KEY LR_BRACKET list_1932 RR_BRACKET

    opt_1933 ::= grp_1927 | $empty

    grp_1934 ::= kill_process | kill_query_notification | kill_stats_job

    grp_1936 ::= DECIMAL | STRING

    grp_1935 ::= grp_1936 | UOW

    seq_1937 ::= WITH STATUSONLY

    opt_1938 ::= seq_1937 | $empty

    grp_1939 ::= ALL | DECIMAL

    opt_1940 ::= SEMI | $empty

    seq_1941 ::= COMMA execute_statement_arg

    list_1942 ::= $empty | list_1942 seq_1941

    seq_1943 ::= execute_statement_arg list_1942

    opt_1944 ::= seq_1943 | $empty

    opt_1945 ::= SEMI | $empty

    seq_1946 ::= LOCAL_ID EQ

    opt_1947 ::= seq_1946 | $empty

    grp_1948 ::= func_proc_name_server_database_schema | execute_var_string

    opt_1949 ::= execute_statement_arg | $empty

    seq_1950 ::= COMMA execute_var_string

    list_1951 ::= $empty | list_1951 seq_1950

    grp_1953 ::= LOGIN | USER

    grp_1952 ::= AS grp_1953 EQ STRING

    opt_1954 ::= grp_1952 | $empty

    seq_1955 ::= AT_KEYWORD id_

    opt_1956 ::= seq_1955 | $empty

    grp_1958 ::= LOGIN | USER

    grp_1957 ::= grp_1958 EQ STRING | CALLER

    seq_1959 ::= COMMA execute_statement_arg

    list_1960 ::= $empty | list_1960 seq_1959

    seq_1961 ::= COMMA execute_statement_arg_named

    list_1962 ::= $empty | list_1962 seq_1961

    grp_1964 ::= OUTPUT | OUT

    opt_1965 ::= grp_1964 | $empty

    grp_1963 ::= constant | LOCAL_ID opt_1965 | id_ | DEFAULT | NULL_

    grp_1966 ::= OUTPUT | OUT

    opt_1967 ::= grp_1966 | $empty

    seq_1968 ::= PLUS execute_var_string

    opt_1969 ::= seq_1968 | $empty

    seq_1970 ::= PLUS LOCAL_ID opt_1969

    opt_1971 ::= seq_1970 | $empty

    seq_1972 ::= PLUS execute_var_string

    opt_1973 ::= seq_1972 | $empty

    seq_1974 ::= PLUS LOCAL_ID opt_1973

    opt_1975 ::= seq_1974 | $empty

    opt_1976 ::= SEMI | $empty

    opt_1978 ::= PRIVILEGES | $empty

    seq_1979 ::= LPAREN column_name_list RPAREN

    opt_1980 ::= seq_1979 | $empty

    grp_1977 ::= ALL opt_1978 | grant_permission opt_1980

    seq_1981 ::= class_type_for_grant COLONCOLON

    opt_1982 ::= seq_1981 | $empty

    seq_1983 ::= ON opt_1982 table_name

    opt_1984 ::= seq_1983 | $empty

    list_1985 ::= to_principal | list_1985 to_principal

    list_1986 ::= to_principal | list_1986 to_principal

    seq_1987 ::= COMMA list_1986 principal_id

    list_1988 ::= $empty | list_1988 seq_1987

    seq_1989 ::= WITH GRANT OPTION

    opt_1990 ::= seq_1989 | $empty

    seq_1991 ::= AS principal_id

    opt_1992 ::= seq_1991 | $empty

    opt_1993 ::= SEMI | $empty

    seq_1994 ::= WITH COOKIE EQ LOCAL_ID

    opt_1995 ::= seq_1994 | $empty

    opt_1996 ::= SEMI | $empty

    seq_1997 ::= AUTHORIZATION id_

    opt_1998 ::= seq_1997 | $empty

    grp_1999 ::= FROM existing_keys | generate_new_keys

    seq_2000 ::= ACTIVE FOR BEGIN DIALOG EQ on_off

    opt_2001 ::= seq_2000 | $empty

    opt_2002 ::= EXECUTABLE | $empty

    seq_2003 ::= WITH PRIVATE KEY LPAREN private_key_options RPAREN

    opt_2004 ::= seq_2003 | $empty

    grp_2005 ::= FILE | BINARY

    grp_2007 ::= DECRYPTION | ENCRYPTION

    grp_2006 ::= COMMA grp_2007 BY PASSWORD EQ STRING

    opt_2008 ::= grp_2006 | $empty

    seq_2009 ::= ENCRYPTION BY PASSWORD EQ STRING

    opt_2010 ::= seq_2009 | $empty

    seq_2011 ::= COMMA date_options

    list_2012 ::= $empty | list_2012 seq_2011

    grp_2013 ::= START_DATE | EXPIRY_DATE

    seq_2014 ::= AUTHORIZATION id_

    opt_2015 ::= seq_2014 | $empty

    seq_2016 ::= FROM PROVIDER id_

    opt_2017 ::= seq_2016 | $empty

    grp_2019 ::= key_options | ENCRYPTION BY encryption_mechanism

    opt_2020 ::= COMMA | $empty

    grp_2018 ::= grp_2019 opt_2020

    list_2021 ::= grp_2018 | list_2021 grp_2018

    grp_2022 ::= CREATE_NEW | OPEN_EXISTING

    seq_2023 ::= WITH PASSWORD EQUAL STRING

    opt_2024 ::= seq_2023 | $empty

    seq_2025 ::= WITH PASSWORD EQUAL STRING

    opt_2026 ::= seq_2025 | $empty

    grp_2027 ::= BULK OPERATIONS | DATABASE BULK OPERATIONS

    grp_2030 ::= ENCRYPTION KEY | MASTER KEY

    grp_2032 ::= NOTIFICATION | SESSION

    grp_2031 ::= AUDIT | DDL TRIGGER | EVENT grp_2032 | SCOPED CONFIGURATION

    opt_2033 ::= grp_2031 | $empty

    grp_2034 ::= NOTIFICATION | SESSION

    grp_2035 ::= DATA SOURCE | FILE FORMAT | LIBRARY

    grp_2036 ::= AUDIT | ROLE

    grp_2029 ::= APPLICATION ROLE | ASSEMBLY | ASYMMETRIC KEY | AVAILABILITY GROUP | CERTIFICATE | COLUMN grp_2030 | CONNECTION | CONTRACT | CREDENTIAL | DATABASE opt_2033 | DATASPACE | ENDPOINT | EVENT grp_2034 | EXTERNAL grp_2035 | FULLTEXT CATALOG | LINKED SERVER | LOGIN | MASK | MESSAGE TYPE | REMOTE SERVICE BINDING | ROLE | ROUTE | SCHEMA | SECURITY POLICY | SERVER grp_2036 | SERVICE | SYMMETRIC KEY | USER

    grp_2028 ::= ANY grp_2029 | RESOURCES | SERVER STATE | SETTINGS | TRACE

    opt_2037 ::= grp_2028 | $empty

    opt_2038 ::= SERVER | $empty

    grp_2039 ::= DATABASE | LOG

    grp_2040 ::= ANY DATABASE | REPLICATION | SQL

    opt_2041 ::= grp_2040 | $empty

    opt_2042 ::= SERVER | $empty

    seq_2044 ::= DDL EVENT NOTIFICATION

    opt_2045 ::= seq_2044 | $empty

    grp_2043 ::= AGGREGATE | ANY DATABASE | ASSEMBLY | ASYMMETRIC KEY | AVAILABILITY GROUP | CERTIFICATE | CONTRACT | DATABASE opt_2045 | DDL EVENT NOTIFICATION | DEFAULT | ENDPOINT | EXTERNAL LIBRARY | FULLTEXT CATALOG | FUNCTION | MESSAGE TYPE | PROCEDURE | QUEUE | REMOTE SERVICE BINDING | ROLE | ROUTE | RULE | SCHEMA | SEQUENCE | SERVER ROLE | SERVICE | SYMMETRIC KEY | SYNONYM | TABLE | TRACE EVENT NOTIFICATION | TYPE | VIEW | XML SCHEMA COLLECTION

    seq_2046 ::= ANY EXTERNAL SCRIPT

    opt_2047 ::= seq_2046 | $empty

    seq_2048 ::= ANY LOGIN

    opt_2049 ::= seq_2048 | $empty

    seq_2050 ::= ALL USER SECURABLES

    opt_2051 ::= seq_2050 | $empty

    grp_2054 ::= ENCRYPTION | MASTER

    grp_2053 ::= DATABASE | DEFINITION | COLUMN grp_2054 KEY DEFINITION

    grp_2052 ::= ANY grp_2053 | CHANGE TRACKING | DATABASE STATE | DEFINITION | SERVER STATE

    seq_2055 ::= DOT id_

    opt_2056 ::= seq_2055 | $empty

    seq_2059 ::= OF column_name_list

    opt_2060 ::= seq_2059 | $empty

    grp_2058 ::= READ ONLY | UPDATE opt_2060

    grp_2057 ::= FOR grp_2058

    opt_2061 ::= grp_2057 | $empty

    grp_2062 ::= TRAN | TRANSACTION

    grp_2063 ::= id_ | LOCAL_ID

    opt_2064 ::= grp_2063 | $empty

    grp_2065 ::= TRAN | TRANSACTION

    grp_2067 ::= id_ | LOCAL_ID

    seq_2068 ::= WITH MARK STRING

    opt_2069 ::= seq_2068 | $empty

    grp_2066 ::= grp_2067 opt_2069

    opt_2070 ::= grp_2066 | $empty

    grp_2071 ::= TRAN | TRANSACTION

    grp_2073 ::= id_ | LOCAL_ID

    grp_2075 ::= OFF | ON

    grp_2074 ::= WITH LPAREN DELAYED_DURABILITY EQUAL grp_2075 RPAREN

    opt_2076 ::= grp_2074 | $empty

    grp_2072 ::= grp_2073 opt_2076

    opt_2077 ::= grp_2072 | $empty

    opt_2078 ::= WORK | $empty

    grp_2079 ::= TRAN | TRANSACTION

    grp_2080 ::= id_ | LOCAL_ID

    opt_2081 ::= grp_2080 | $empty

    opt_2082 ::= WORK | $empty

    grp_2083 ::= TRAN | TRANSACTION

    grp_2084 ::= id_ | LOCAL_ID

    opt_2085 ::= grp_2084 | $empty

    opt_2086 ::= DECIMAL | $empty

    opt_2087 ::= STRING | $empty

    seq_2088 ::= WITH OVERRIDE

    opt_2089 ::= seq_2088 | $empty

    seq_2090 ::= WITH NOWAIT

    opt_2091 ::= seq_2090 | $empty

    opt_2092 ::= DECIMAL | $empty

    grp_2094 ::= id_ | STRING | DECIMAL

    grp_2096 ::= REPAIR_ALLOW_DATA_LOSS | REPAIR_FAST | REPAIR_REBUILD

    grp_2095 ::= COMMA NOINDEX | COMMA grp_2096

    opt_2097 ::= grp_2095 | $empty

    seq_2098 ::= COMMA dbcc_checkalloc_option

    list_2099 ::= $empty | list_2099 seq_2098

    seq_2100 ::= WITH dbcc_checkalloc_option list_2099

    opt_2101 ::= seq_2100 | $empty

    grp_2093 ::= LPAREN grp_2094 opt_2097 RPAREN opt_2101

    opt_2102 ::= grp_2093 | $empty

    grp_2104 ::= id_ | STRING | DECIMAL

    grp_2103 ::= LPAREN grp_2104 RPAREN

    opt_2105 ::= grp_2103 | $empty

    seq_2106 ::= WITH NO_INFOMSGS

    opt_2107 ::= seq_2106 | $empty

    grp_2109 ::= id_ | STRING

    grp_2108 ::= LPAREN grp_2109 RPAREN

    opt_2110 ::= grp_2108 | $empty

    seq_2111 ::= COMMA dbcc_checkconstraints_option

    list_2112 ::= $empty | list_2112 seq_2111

    seq_2113 ::= WITH dbcc_checkconstraints_option list_2112

    opt_2114 ::= seq_2113 | $empty

    grp_2116 ::= id_ | STRING | DECIMAL

    grp_2118 ::= NOINDEX | REPAIR_ALLOW_DATA_LOSS | REPAIR_FAST | REPAIR_REBUILD

    grp_2117 ::= COMMA grp_2118

    opt_2119 ::= grp_2117 | $empty

    grp_2115 ::= LPAREN grp_2116 opt_2119 RPAREN

    opt_2120 ::= grp_2115 | $empty

    seq_2121 ::= COMMA dbcc_checkdb_table_option

    list_2122 ::= $empty | list_2122 seq_2121

    seq_2123 ::= WITH dbcc_checkdb_table_option list_2122

    opt_2124 ::= seq_2123 | $empty

    grp_2126 ::= DECIMAL | STRING

    grp_2128 ::= NOINDEX | REPAIR_ALLOW_DATA_LOSS | REPAIR_FAST | REPAIR_REBUILD

    grp_2127 ::= COMMA grp_2128

    opt_2129 ::= grp_2127 | $empty

    grp_2125 ::= LPAREN grp_2126 opt_2129 RPAREN

    opt_2130 ::= grp_2125 | $empty

    seq_2131 ::= COMMA dbcc_checkfilegroup_option

    list_2132 ::= $empty | list_2132 seq_2131

    seq_2133 ::= WITH dbcc_checkfilegroup_option list_2132

    opt_2134 ::= seq_2133 | $empty

    grp_2136 ::= NOINDEX | expression | REPAIR_ALLOW_DATA_LOSS | REPAIR_FAST | REPAIR_REBUILD

    grp_2135 ::= COMMA grp_2136

    opt_2137 ::= grp_2135 | $empty

    seq_2138 ::= COMMA dbcc_checkdb_table_option

    list_2139 ::= $empty | list_2139 seq_2138

    seq_2140 ::= WITH dbcc_checkdb_table_option list_2139

    opt_2141 ::= seq_2140 | $empty

    grp_2142 ::= id_ | STRING | DECIMAL

    grp_2143 ::= id_ | STRING

    seq_2144 ::= COMMA DECIMAL

    opt_2145 ::= seq_2144 | $empty

    seq_2146 ::= WITH NO_INFOMSGS

    opt_2147 ::= seq_2146 | $empty

    seq_2148 ::= COMMA dbcc_clonedatabase_option

    list_2149 ::= $empty | list_2149 seq_2148

    seq_2150 ::= WITH dbcc_clonedatabase_option list_2149

    opt_2151 ::= seq_2150 | $empty

    seq_2152 ::= LPAREN id_ RPAREN

    opt_2153 ::= seq_2152 | $empty

    seq_2154 ::= WITH IGNORE_REPLICATED_TABLE_CACHE

    opt_2155 ::= seq_2154 | $empty

    seq_2156 ::= WITH NO_INFOMSGS

    opt_2157 ::= seq_2156 | $empty

    seq_2158 ::= COMMA expression

    opt_2159 ::= seq_2158 | $empty

    seq_2160 ::= LPAREN expression opt_2159 RPAREN

    opt_2161 ::= seq_2160 | $empty

    seq_2162 ::= COMMA dbcc_showcontig_option

    list_2163 ::= $empty | list_2163 seq_2162

    seq_2164 ::= WITH dbcc_showcontig_option list_2163

    opt_2165 ::= seq_2164 | $empty

    grp_2169 ::= MB | GB | TB

    grp_2168 ::= DECIMAL grp_2169

    grp_2167 ::= grp_2168 | DEFAULT

    grp_2166 ::= LPAREN SIZE EQ grp_2167 RPAREN

    opt_2170 ::= grp_2166 | $empty

    seq_2171 ::= WITH NO_INFOMSGS

    opt_2172 ::= seq_2171 | $empty

    seq_2173 ::= COMMA expression

    opt_2174 ::= seq_2173 | $empty

    seq_2175 ::= COMMA id_or_string opt_2174

    opt_2176 ::= seq_2175 | $empty

    seq_2177 ::= WITH NO_INFOMSGS

    opt_2178 ::= seq_2177 | $empty

    seq_2179 ::= WITH NO_INFOMSGS

    opt_2180 ::= seq_2179 | $empty

    grp_2181 ::= LPAREN COMPUTE | ALL RPAREN

    opt_2182 ::= grp_2181 | $empty

    seq_2183 ::= WITH NO_INFOMSGS

    opt_2184 ::= seq_2183 | $empty

    grp_2185 ::= dbcc_checkalloc | dbcc_checkcatalog | dbcc_checkconstraints | dbcc_checkdb | dbcc_checkfilegroup | dbcc_checktable | dbcc_cleantable | dbcc_clonedatabase | dbcc_dbreindex | dbcc_dll_free | dbcc_dropcleanbuffers | dbcc_pdw_showspaceused | dbcc_proccache | dbcc_showcontig | dbcc_shrinklog

    grp_2186 ::= CALLER | SELF | OWNER | STRING

    opt_2187 ::= AS | $empty

    seq_2188 ::= EQ expression

    opt_2189 ::= seq_2188 | $empty

    opt_2190 ::= COMMA | $empty

    seq_2191 ::= opt_2190 table_type_indices

    list_2192 ::= $empty | list_2192 seq_2191

    grp_2195 ::= PRIMARY KEY | INDEX id_

    grp_2196 ::= CLUSTERED | NONCLUSTERED

    opt_2197 ::= grp_2196 | $empty

    grp_2194 ::= grp_2195 opt_2197

    grp_2193 ::= grp_2194 | UNIQUE

    grp_2198 ::= CONTENT | DOCUMENT

    opt_2199 ::= grp_2198 | $empty

    opt_2200 ::= COMMA | $empty

    seq_2201 ::= opt_2200 column_def_table_constraint

    list_2202 ::= $empty | list_2202 seq_2201

    opt_2204 ::= PERSISTED | $empty

    grp_2203 ::= data_type | AS expression opt_2204

    list_2205 ::= $empty | list_2205 column_definition_element

    opt_2206 ::= column_index | $empty

    seq_2207 ::= CONSTRAINT id_

    opt_2208 ::= seq_2207 | $empty

    seq_2209 ::= LPAREN DECIMAL COMMA DECIMAL RPAREN

    opt_2210 ::= seq_2209 | $empty

    grp_2211 ::= ROW | TRANSACTION_ID | SEQUENCE_NUMBER

    grp_2212 ::= START | END

    opt_2213 ::= HIDDEN_KEYWORD | $empty

    grp_2214 ::= DETERMINISTIC | RANDOMIZED

    grp_2215 ::= ADD | DROP

    grp_2218 ::= FUNCTION EQUAL STRING | LR_BRACKET FUNCTION EQUAL STRING RR_BRACKET

    grp_2217 ::= WITH grp_2218

    opt_2219 ::= grp_2217 | $empty

    grp_2216 ::= ROWGUIDCOL | PERSISTED | NOT FOR REPLICATION | SPARSE | HIDDEN_KEYWORD | MASKED opt_2219

    grp_2220 ::= COMPUTE | AS

    grp_2221 ::= MATERIALIZED | NOT MATERIALIZED

    opt_2222 ::= grp_2221 | $empty

    seq_2223 ::= CONSTRAINT id_

    opt_2224 ::= seq_2223 | $empty

    grp_2227 ::= PRIMARY KEY | UNIQUE

    opt_2228 ::= clustered | $empty

    grp_2226 ::= grp_2227 opt_2228 primary_key_options

    seq_2229 ::= FOREIGN KEY

    opt_2230 ::= seq_2229 | $empty

    seq_2231 ::= opt_2230 foreign_key_options

    grp_2225 ::= null_notnull | grp_2226 | seq_2231 | check_constraint

    opt_2232 ::= clustered | $empty

    opt_2233 ::= create_table_index_options | $empty

    opt_2234 ::= on_partition_or_filegroup | $empty

    grp_2236 ::= id_ | NULL_DOUBLE_QUOTE

    grp_2235 ::= FILESTREAM_ON grp_2236

    opt_2237 ::= grp_2235 | $empty

    seq_2239 ::= id_ LPAREN id_ RPAREN

    grp_2238 ::= seq_2239 | id_ | DEFAULT_DOUBLE_QUOTE

    seq_2240 ::= CONSTRAINT id_

    opt_2241 ::= seq_2240 | $empty

    grp_2244 ::= PRIMARY KEY | UNIQUE

    opt_2245 ::= clustered | $empty

    grp_2243 ::= grp_2244 opt_2245 LPAREN column_name_list_with_order RPAREN primary_key_options

    seq_2246 ::= FOREIGN KEY LPAREN column_name_list RPAREN foreign_key_options

    seq_2247 ::= COMMA connection_node

    list_2248 ::= $empty | list_2248 seq_2247

    seq_2249 ::= CONNECTION LPAREN connection_node list_2248 RPAREN

    seq_2250 ::= WITH VALUES

    opt_2251 ::= seq_2250 | $empty

    seq_2252 ::= DEFAULT expression FOR id_ opt_2251

    grp_2242 ::= grp_2243 | seq_2246 | seq_2249 | seq_2252 | check_constraint

    seq_2253 ::= WITH FILLFACTOR EQ DECIMAL

    opt_2254 ::= seq_2253 | $empty

    opt_2255 ::= alter_table_index_options | $empty

    opt_2256 ::= on_partition_or_filegroup | $empty

    grp_2257 ::= on_delete | on_update

    list_2258 ::= $empty | list_2258 grp_2257

    seq_2259 ::= NOT FOR REPLICATION

    opt_2260 ::= seq_2259 | $empty

    seq_2261 ::= NOT FOR REPLICATION

    opt_2262 ::= seq_2261 | $empty

    grp_2263 ::= NO ACTION | CASCADE | SET NULL_ | SET DEFAULT

    grp_2264 ::= NO ACTION | CASCADE | SET NULL_ | SET DEFAULT

    seq_2265 ::= COMMA alter_table_index_option

    list_2266 ::= $empty | list_2266 seq_2265

    grp_2267 ::= NONE | ROW | PAGE | COLUMNSTORE | COLUMNSTORE_ARCHIVE

    opt_2268 ::= on_partitions | $empty

    opt_2269 ::= on_partitions | $empty

    grp_2270 ::= ASC | DESC

    opt_2271 ::= grp_2270 | $empty

    grp_2273 ::= ASC | DESC

    opt_2274 ::= grp_2273 | $empty

    grp_2272 ::= COMMA id_ opt_2274

    list_2275 ::= $empty | list_2275 grp_2272

    seq_2277 ::= LPAREN low_priority_lock_wait RPAREN

    opt_2278 ::= seq_2277 | $empty

    grp_2276 ::= ON opt_2278 | OFF

    opt_2279 ::= MINUTES | $empty

    seq_2281 ::= OF column_name_list

    opt_2282 ::= seq_2281 | $empty

    seq_2283 ::= FOR UPDATE opt_2282

    opt_2284 ::= seq_2283 | $empty

    seq_2285 ::= declare_set_cursor_common opt_2284

    opt_2286 ::= seq_2285 | $empty

    grp_2287 ::= SEMI_SENSITIVE | INSENSITIVE

    opt_2288 ::= grp_2287 | $empty

    opt_2289 ::= SCROLL | $empty

    seq_2292 ::= OF column_name_list

    grp_2291 ::= READ ONLY | UPDATE | seq_2292

    grp_2290 ::= FOR grp_2291

    opt_2293 ::= grp_2290 | $empty

    grp_2280 ::= CURSOR opt_2286 | opt_2288 opt_2289 CURSOR FOR select_statement_standalone opt_2293

    opt_2294 ::= SEMI | $empty

    list_2295 ::= $empty | list_2295 declare_set_cursor_common_partial

    grp_2296 ::= LOCAL | GLOBAL

    grp_2297 ::= FORWARD_ONLY | SCROLL

    grp_2298 ::= STATIC | KEYSET | DYNAMIC | FAST_FORWARD

    grp_2299 ::= READ_ONLY | SCROLL_LOCKS | OPTIMISTIC

    grp_2302 ::= ABSOLUTE | RELATIVE

    grp_2301 ::= NEXT | PRIOR | FIRST | LAST | grp_2302 expression

    opt_2303 ::= grp_2301 | $empty

    grp_2300 ::= opt_2303 FROM

    opt_2304 ::= grp_2300 | $empty

    opt_2305 ::= GLOBAL | $empty

    seq_2306 ::= COMMA LOCAL_ID

    list_2307 ::= $empty | list_2307 seq_2306

    seq_2308 ::= INTO LOCAL_ID list_2307

    opt_2309 ::= seq_2308 | $empty

    opt_2310 ::= SEMI | $empty

    grp_2311 ::= id_ | constant_LOCAL_ID | on_off

    opt_2312 ::= SEMI | $empty

    grp_2313 ::= IO | TIME | XML | PROFILE

    opt_2314 ::= SEMI | $empty

    grp_2315 ::= LOCAL_ID | DECIMAL

    opt_2316 ::= SEMI | $empty

    opt_2317 ::= SEMI | $empty

    grp_2318 ::= READ UNCOMMITTED | READ COMMITTED | REPEATABLE READ | SNAPSHOT | SERIALIZABLE | DECIMAL

    opt_2319 ::= SEMI | $empty

    opt_2320 ::= SEMI | $empty

    seq_2321 ::= COMMA special_list

    list_2322 ::= $empty | list_2322 seq_2321

    grp_2323 ::= value_call | query_call | exist_call | modify_call

    grp_2324 ::= STAR | SLASH | PERCENT

    grp_2325 ::= PLUS | MINUS | AMP | CARET | PIPE | OROR

    list_2326 ::= switch_section | list_2326 switch_section

    seq_2327 ::= ELSE expression

    opt_2328 ::= seq_2327 | $empty

    list_2329 ::= switch_search_condition_section | list_2329 switch_search_condition_section

    seq_2330 ::= ELSE expression

    opt_2331 ::= seq_2330 | $empty

    grp_2332 ::= PLUS | MINUS

    list_2333 ::= ctes | list_2333 ctes

    list_2334 ::= ctes | list_2334 ctes

    seq_2335 ::= COMMA list_2334 common_table_expression

    list_2336 ::= $empty | list_2336 seq_2335

    seq_2337 ::= LPAREN column_name_list RPAREN

    opt_2338 ::= seq_2337 | $empty

    grp_2339 ::= EQ | assignment_operator

    grp_2340 ::= full_column_name | LOCAL_ID

    grp_2341 ::= EQ | assignment_operator

    grp_2342 ::= full_column_name | LOCAL_ID

    grp_2343 ::= EQ | assignment_operator

    list_2344 ::= $empty | list_2344 NOT

    grp_2345 ::= predicate | LPAREN search_condition RPAREN

    grp_2346 ::= ALL | SOME | ANY

    list_2347 ::= $empty | list_2347 NOT

    list_2348 ::= $empty | list_2348 NOT

    grp_2349 ::= subquery | expression_list_

    list_2350 ::= $empty | list_2350 NOT

    seq_2351 ::= ESCAPE expression

    opt_2352 ::= seq_2351 | $empty

    opt_2353 ::= select_order_by_clause | $empty

    list_2354 ::= $empty | list_2354 unions

    list_2355 ::= $empty | list_2355 sql_union

    opt_2356 ::= ALL | $empty

    seq_2357 ::= UNION opt_2356 query_expression

    opt_2358 ::= seq_2357 | $empty

    opt_2360 ::= ALL | $empty

    grp_2359 ::= UNION opt_2360 | EXCEPT | INTERSECT

    seq_2362 ::= LPAREN query_expression RPAREN

    grp_2361 ::= query_specification | seq_2362

    grp_2363 ::= ALL | DISTINCT

    opt_2364 ::= grp_2363 | $empty

    opt_2365 ::= top_clause | $empty

    seq_2366 ::= INTO table_name

    opt_2367 ::= seq_2366 | $empty

    seq_2368 ::= FROM table_sources

    opt_2369 ::= seq_2368 | $empty

    seq_2370 ::= WHERE search_condition

    opt_2371 ::= seq_2370 | $empty

    opt_2374 ::= ALL | $empty

    list_2375 ::= groupBys | list_2375 groupBys

    list_2376 ::= groupBys | list_2376 groupBys

    seq_2377 ::= COMMA list_2376 group_by_item

    list_2378 ::= $empty | list_2378 seq_2377

    seq_2379 ::= opt_2374 list_2375 group_by_item list_2378

    list_2380 ::= groupSets | list_2380 groupSets

    list_2381 ::= groupSets | list_2381 groupSets

    seq_2382 ::= COMMA list_2381 grouping_sets_item

    list_2383 ::= $empty | list_2383 seq_2382

    grp_2373 ::= seq_2379 | GROUPING SETS LPAREN list_2380 grouping_sets_item list_2383 RPAREN

    grp_2372 ::= GROUP BY grp_2373

    opt_2384 ::= grp_2372 | $empty

    seq_2385 ::= HAVING search_condition

    opt_2386 ::= seq_2385 | $empty

    grp_2387 ::= top_percent | top_count

    seq_2388 ::= WITH TIES

    opt_2389 ::= seq_2388 | $empty

    grp_2390 ::= REAL | FLOAT | DECIMAL

    list_2391 ::= order_bys | list_2391 order_bys

    list_2392 ::= order_bys | list_2392 order_bys

    seq_2393 ::= COMMA list_2392 order_by_expression

    list_2394 ::= $empty | list_2394 seq_2393

    grp_2396 ::= ROW | ROWS

    grp_2398 ::= FIRST | NEXT

    grp_2399 ::= ROW | ROWS

    grp_2397 ::= FETCH grp_2398 expression grp_2399 ONLY

    opt_2400 ::= grp_2397 | $empty

    grp_2395 ::= OFFSET expression grp_2396 opt_2400

    opt_2401 ::= grp_2395 | $empty

    seq_2403 ::= LPAREN STRING RPAREN

    opt_2404 ::= seq_2403 | $empty

    grp_2402 ::= RAW opt_2404 | AUTO

    list_2405 ::= $empty | list_2405 xml_common_directives

    seq_2408 ::= LPAREN STRING RPAREN

    opt_2409 ::= seq_2408 | $empty

    grp_2407 ::= XMLDATA | XMLSCHEMA opt_2409

    grp_2406 ::= COMMA grp_2407

    opt_2410 ::= grp_2406 | $empty

    grp_2412 ::= XSINIL | ABSENT

    opt_2413 ::= grp_2412 | $empty

    grp_2411 ::= COMMA ELEMENTS opt_2413

    opt_2414 ::= grp_2411 | $empty

    list_2415 ::= $empty | list_2415 xml_common_directives

    seq_2416 ::= COMMA XMLDATA

    opt_2417 ::= seq_2416 | $empty

    seq_2418 ::= LPAREN STRING RPAREN

    opt_2419 ::= seq_2418 | $empty

    list_2420 ::= $empty | list_2420 xml_common_directives

    grp_2422 ::= XSINIL | ABSENT

    opt_2423 ::= grp_2422 | $empty

    grp_2421 ::= COMMA ELEMENTS opt_2423

    opt_2424 ::= grp_2421 | $empty

    grp_2425 ::= AUTO | PATH

    seq_2428 ::= LPAREN STRING RPAREN

    grp_2427 ::= ROOT seq_2428 | INCLUDE_NULL_VALUES | WITHOUT_ARRAY_WRAPPER

    grp_2426 ::= COMMA grp_2427

    list_2429 ::= $empty | list_2429 grp_2426

    seq_2431 ::= LPAREN STRING RPAREN

    opt_2432 ::= seq_2431 | $empty

    grp_2430 ::= BINARY_KEYWORD BASE64 | TYPE | ROOT opt_2432

    grp_2433 ::= ASC | DESC

    opt_2434 ::= grp_2433 | $empty

    opt_2435 ::= LPAREN | $empty

    list_2436 ::= groupSetItems | list_2436 groupSetItems

    list_2437 ::= groupSetItems | list_2437 groupSetItems

    seq_2438 ::= COMMA list_2437 group_by_item

    list_2439 ::= $empty | list_2439 seq_2438

    opt_2440 ::= RPAREN | $empty

    list_2441 ::= options_ | list_2441 options_

    list_2442 ::= options_ | list_2442 options_

    seq_2443 ::= COMMA list_2442 option

    list_2444 ::= $empty | list_2444 seq_2443

    grp_2445 ::= HASH | ORDER

    grp_2446 ::= MERGE | HASH | CONCAT

    grp_2447 ::= LOOP | MERGE | HASH

    seq_2448 ::= COMMA optimize_for_arg

    list_2449 ::= $empty | list_2449 seq_2448

    grp_2450 ::= SIMPLE | FORCED

    grp_2452 ::= constant | NULL_

    grp_2451 ::= UNKNOWN | EQ grp_2452

    list_2453 ::= selectElement | list_2453 selectElement

    list_2454 ::= selectElement | list_2454 selectElement

    seq_2455 ::= COMMA select_list_elem

    list_2456 ::= $empty | list_2456 seq_2455

    list_2457 ::= argument | list_2457 argument

    list_2458 ::= argument | list_2458 argument

    seq_2459 ::= COMMA list_2458 execute_var_string

    list_2460 ::= $empty | list_2460 seq_2459

    seq_2461 ::= table_name DOT

    opt_2462 ::= seq_2461 | $empty

    grp_2463 ::= INSERTED | DELETED

    opt_2464 ::= as_column_alias | $empty

    opt_2465 ::= udt_method_arguments | $empty

    opt_2466 ::= as_column_alias | $empty

    opt_2467 ::= as_column_alias | $empty

    grp_2468 ::= assignment_operator | EQ

    list_2469 ::= source | list_2469 source

    list_2470 ::= source | list_2470 source

    seq_2471 ::= COMMA table_source

    list_2472 ::= $empty | list_2472 seq_2471

    list_2473 ::= source | list_2473 source

    list_2474 ::= source | list_2474 source

    seq_2475 ::= COMMA list_2474 table_source

    list_2476 ::= seq_2475 | list_2476 seq_2475

    list_2477 ::= $empty | joins | list_2477 joins

    list_2478 ::= $empty | list_2478 join_part

    opt_2479 ::= as_table_alias | $empty

    grp_2480 ::= with_table_hints | deprecated_table_hint | sybase_legacy_hints

    opt_2481 ::= grp_2480 | $empty

    opt_2482 ::= as_table_alias | $empty

    opt_2483 ::= column_alias_list | $empty

    seq_2484 ::= as_table_alias opt_2483

    opt_2485 ::= seq_2484 | $empty

    opt_2486 ::= as_table_alias | $empty

    opt_2487 ::= column_alias_list | $empty

    seq_2488 ::= as_table_alias opt_2487

    opt_2489 ::= seq_2488 | $empty

    opt_2490 ::= column_alias_list | $empty

    seq_2491 ::= as_table_alias opt_2490

    opt_2492 ::= seq_2491 | $empty

    opt_2493 ::= as_table_alias | $empty

    opt_2494 ::= column_alias_list | $empty

    seq_2495 ::= as_table_alias opt_2494

    opt_2496 ::= seq_2495 | $empty

    opt_2497 ::= as_table_alias | $empty

    seq_2498 ::= COMMA expression

    opt_2499 ::= seq_2498 | $empty

    seq_2500 ::= WITH LPAREN schema_declaration RPAREN

    opt_2501 ::= seq_2500 | $empty

    opt_2502 ::= as_table_alias | $empty

    seq_2503 ::= COMMA expression

    opt_2504 ::= seq_2503 | $empty

    seq_2505 ::= WITH LPAREN json_declaration RPAREN

    opt_2506 ::= seq_2505 | $empty

    opt_2507 ::= as_table_alias | $empty

    list_2508 ::= json_col | list_2508 json_col

    list_2509 ::= json_col | list_2509 json_col

    seq_2510 ::= COMMA list_2509 json_column_declaration

    list_2511 ::= $empty | list_2511 seq_2510

    seq_2512 ::= AS JSON

    opt_2513 ::= seq_2512 | $empty

    list_2514 ::= xml_col | list_2514 xml_col

    list_2515 ::= xml_col | list_2515 xml_col

    seq_2516 ::= COMMA list_2515 column_declaration

    list_2517 ::= $empty | list_2517 seq_2516

    opt_2518 ::= STRING | $empty

    grp_2519 ::= NULL_ | DECIMAL | LOCAL_ID

    opt_2521 ::= INNER | $empty

    grp_2522 ::= LEFT | RIGHT | FULL

    opt_2523 ::= OUTER | $empty

    grp_2520 ::= opt_2521 | grp_2522 opt_2523

    grp_2525 ::= LOOP | HASH | MERGE | REMOTE

    grp_2524 ::= grp_2525

    opt_2526 ::= grp_2524 | $empty

    grp_2527 ::= CROSS | OUTER

    list_2528 ::= column | list_2528 column

    list_2529 ::= column | list_2529 column

    seq_2530 ::= COMMA list_2529 full_column_name

    list_2531 ::= $empty | list_2531 seq_2530

    seq_2532 ::= OPENROWSET LR_BRACKET STRING COMMA STRING COMMA STRING RR_BRACKET

    seq_2535 ::= COMMA bulk_option

    list_2536 ::= $empty | list_2536 seq_2535

    grp_2534 ::= bulk_option list_2536 | id_

    grp_2533 ::= OPENROWSET LPAREN BULK STRING COMMA grp_2534 RPAREN

    grp_2537 ::= DECIMAL | STRING

    seq_2538 ::= UNION ALL subquery

    list_2539 ::= $empty | list_2539 seq_2538

    opt_2540 ::= expression_list_ | $empty

    seq_2541 ::= id_ DOT

    opt_2542 ::= seq_2541 | $empty

    grp_2543 ::= CONTAINSTABLE | FREETEXTTABLE

    seq_2545 ::= COMMA full_column_name

    list_2546 ::= $empty | list_2546 seq_2545

    grp_2544 ::= full_column_name | LPAREN full_column_name list_2546 RPAREN | STAR

    seq_2547 ::= COMMA LANGUAGE expression

    opt_2548 ::= seq_2547 | $empty

    seq_2549 ::= COMMA expression

    opt_2550 ::= seq_2549 | $empty

    grp_2551 ::= SEMANTICSIMILARITYTABLE | SEMANTICKEYPHRASETABLE

    seq_2553 ::= COMMA full_column_name

    list_2554 ::= $empty | list_2554 seq_2553

    grp_2552 ::= full_column_name | LPAREN full_column_name list_2554 RPAREN | STAR

    seq_2556 ::= COMMA full_column_name

    list_2557 ::= $empty | list_2557 seq_2556

    grp_2555 ::= full_column_name | LPAREN full_column_name list_2557 RPAREN | STAR | PROPERTY LPAREN full_column_name COMMA expression RPAREN

    seq_2559 ::= COMMA full_column_name

    list_2560 ::= $empty | list_2560 seq_2559

    grp_2558 ::= full_column_name | LPAREN full_column_name list_2560 RPAREN | STAR

    seq_2561 ::= COMMA LANGUAGE expression

    opt_2562 ::= seq_2561 | $empty

    grp_2563 ::= ABSENT | NULL_

    opt_2564 ::= expression | $empty

    opt_2565 ::= expression | $empty

    seq_2566 ::= OVER LPAREN order_by_clause RPAREN

    opt_2567 ::= seq_2566 | $empty

    seq_2568 ::= COMMA expression

    opt_2569 ::= seq_2568 | $empty

    seq_2570 ::= COMMA expression

    opt_2571 ::= seq_2570 | $empty

    seq_2572 ::= COMMA expression

    opt_2573 ::= seq_2572 | $empty

    opt_2574 ::= expression | $empty

    opt_2575 ::= expression | $empty

    seq_2576 ::= COMMA expression

    opt_2577 ::= seq_2576 | $empty

    list_2578 ::= string_value_n | list_2578 string_value_n

    seq_2579 ::= COMMA list_2578 expression

    list_2580 ::= $empty | list_2580 seq_2579

    list_2581 ::= argument_n | list_2581 argument_n

    seq_2582 ::= COMMA list_2581 expression

    list_2583 ::= $empty | list_2583 seq_2582

    seq_2584 ::= COMMA expression

    opt_2585 ::= seq_2584 | $empty

    seq_2586 ::= COMMA expression

    opt_2587 ::= seq_2586 | $empty

    seq_2588 ::= COMMA expression

    opt_2589 ::= seq_2588 | $empty

    seq_2590 ::= COMMA expression opt_2589

    opt_2591 ::= seq_2590 | $empty

    seq_2592 ::= WITHIN GROUP LPAREN order_by_clause RPAREN

    opt_2593 ::= seq_2592 | $empty

    seq_2594 ::= expression FROM

    opt_2595 ::= seq_2594 | $empty

    seq_2597 ::= COMMA expression

    list_2598 ::= $empty | list_2598 seq_2597

    grp_2596 ::= STAR | expression list_2598

    seq_2600 ::= COMMA expression

    list_2601 ::= $empty | list_2601 seq_2600

    grp_2599 ::= STAR | expression list_2601

    grp_2602 ::= DECIMAL | STRING | LOCAL_ID

    seq_2603 ::= COMMA expression

    list_2604 ::= $empty | list_2604 seq_2603

    opt_2605 ::= STRING | $empty

    seq_2606 ::= COMMA expression

    opt_2607 ::= seq_2606 | $empty

    seq_2608 ::= COMMA DECIMAL COMMA DECIMAL

    opt_2609 ::= seq_2608 | $empty

    seq_2610 ::= COMMA expression

    opt_2611 ::= seq_2610 | $empty

    seq_2612 ::= COMMA expression

    opt_2613 ::= seq_2612 | $empty

    seq_2614 ::= COMMA DECIMAL

    opt_2615 ::= seq_2614 | $empty

    seq_2616 ::= COMMA DECIMAL

    opt_2617 ::= seq_2616 | $empty

    seq_2618 ::= USING expression

    opt_2619 ::= seq_2618 | $empty

    seq_2620 ::= COMMA expression

    opt_2621 ::= seq_2620 | $empty

    seq_2622 ::= COMMA json_key_value

    list_2623 ::= $empty | list_2623 seq_2622

    seq_2624 ::= json_key_value list_2623

    opt_2625 ::= seq_2624 | $empty

    opt_2626 ::= json_null_clause | $empty

    opt_2627 ::= expression_list_ | $empty

    opt_2628 ::= json_null_clause | $empty

    seq_2629 ::= COMMA expression

    opt_2630 ::= seq_2629 | $empty

    seq_2631 ::= COMMA expression

    opt_2632 ::= seq_2631 | $empty

    opt_2633 ::= expression | $empty

    seq_2634 ::= COMMA expression

    opt_2635 ::= seq_2634 | $empty

    seq_2636 ::= COMMA expression

    opt_2637 ::= seq_2636 | $empty

    opt_2638 ::= expression | $empty

    seq_2639 ::= COMMA expression

    opt_2640 ::= seq_2639 | $empty

    seq_2641 ::= COMMA expression opt_2640

    opt_2642 ::= seq_2641 | $empty

    seq_2643 ::= COMMA expression

    opt_2644 ::= seq_2643 | $empty

    seq_2645 ::= COMMA expression

    opt_2646 ::= seq_2645 | $empty

    seq_2647 ::= COMMA expression

    opt_2648 ::= seq_2647 | $empty

    seq_2649 ::= expression opt_2648

    opt_2650 ::= seq_2649 | $empty

    seq_2651 ::= COMMA expression

    opt_2652 ::= seq_2651 | $empty

    opt_2653 ::= expression | $empty

    opt_2654 ::= expression | $empty

    seq_2655 ::= COMMA expression

    opt_2656 ::= seq_2655 | $empty

    seq_2657 ::= expression opt_2656

    opt_2658 ::= seq_2657 | $empty

    opt_2659 ::= expression | $empty

    opt_2660 ::= expression | $empty

    opt_2661 ::= expression | $empty

    grp_2662 ::= LOCAL_ID | full_column_name | EVENTDATA LPAREN RPAREN | query_method | LPAREN subquery RPAREN

    grp_2663 ::= VALUE | VALUE_SQUARE_BRACKET

    grp_2664 ::= LOCAL_ID | full_column_name | LPAREN subquery RPAREN

    grp_2665 ::= QUERY | QUERY_SQUARE_BRACKET

    grp_2666 ::= LOCAL_ID | full_column_name | LPAREN subquery RPAREN

    grp_2667 ::= EXIST | EXIST_SQUARE_BRACKET

    grp_2668 ::= LOCAL_ID | full_column_name | LPAREN subquery RPAREN

    grp_2669 ::= MODIFY | MODIFY_SQUARE_BRACKET

    grp_2670 ::= GETROOT LPAREN RPAREN | PARSE LPAREN expression RPAREN

    grp_2671 ::= LOCAL_ID | full_column_name | LPAREN subquery RPAREN

    opt_2672 ::= AS | $empty

    opt_2673 ::= AS | $empty

    list_2674 ::= hint | list_2674 hint

    opt_2675 ::= COMMA | $empty

    list_2676 ::= hint | list_2676 hint

    seq_2677 ::= opt_2675 list_2676 table_hint

    list_2678 ::= $empty | list_2678 seq_2677

    list_2679 ::= sybase_legacy_hint | list_2679 sybase_legacy_hint

    seq_2681 ::= COMMA index_value

    list_2682 ::= $empty | list_2682 seq_2681

    grp_2680 ::= LPAREN index_value list_2682 RPAREN | EQ LPAREN index_value RPAREN | EQ index_value

    seq_2683 ::= LPAREN index_value LPAREN column_name_list RPAREN RPAREN

    opt_2684 ::= seq_2683 | $empty

    list_2685 ::= alias | list_2685 alias

    list_2686 ::= alias | list_2686 alias

    seq_2687 ::= COMMA list_2686 column_alias

    list_2688 ::= $empty | list_2688 seq_2687

    list_2689 ::= exps | list_2689 exps

    list_2690 ::= exps | list_2690 exps

    seq_2691 ::= COMMA LPAREN list_2690 expression_list_ RPAREN

    list_2692 ::= $empty | list_2692 seq_2691

    list_2693 ::= exp | list_2693 exp

    list_2694 ::= exp | list_2694 exp

    seq_2695 ::= COMMA expression

    list_2696 ::= $empty | list_2696 seq_2695

    grp_2697 ::= RANK | DENSE_RANK | ROW_NUMBER

    grp_2698 ::= AVG | MAX | MIN | SUM | STDEV | STDEVP | VAR | VARP

    opt_2699 ::= over_clause | $empty

    grp_2700 ::= COUNT | COUNT_BIG

    grp_2701 ::= STAR | all_distinct_expression

    opt_2702 ::= over_clause | $empty

    grp_2703 ::= FIRST_VALUE | LAST_VALUE

    grp_2704 ::= LAG | LEAD

    seq_2705 ::= COMMA expression

    opt_2706 ::= seq_2705 | $empty

    seq_2707 ::= COMMA expression opt_2706

    opt_2708 ::= seq_2707 | $empty

    grp_2709 ::= CUME_DIST | PERCENT_RANK

    seq_2710 ::= PARTITION BY expression_list_

    opt_2711 ::= seq_2710 | $empty

    grp_2712 ::= PERCENTILE_CONT | PERCENTILE_DISC

    seq_2713 ::= PARTITION BY expression_list_

    opt_2714 ::= seq_2713 | $empty

    grp_2715 ::= ALL | DISTINCT

    opt_2716 ::= grp_2715 | $empty

    seq_2717 ::= PARTITION BY expression_list_

    opt_2718 ::= seq_2717 | $empty

    opt_2719 ::= order_by_clause | $empty

    opt_2720 ::= row_or_range_clause | $empty

    grp_2721 ::= ROWS | RANGE

    seq_2722 ::= COMMA database_filestream_option

    list_2723 ::= $empty | list_2723 seq_2722

    seq_2724 ::= database_filestream_option list_2723

    grp_2725 ::= id_ | STRING

    grp_2726 ::= id_ | STRING

    grp_2727 ::= OFF | ON

    grp_2728 ::= OFF | ON

    grp_2729 ::= OFF | ON

    grp_2730 ::= OFF | ON

    grp_2733 ::= OFF | READ_ONLY | FULL

    grp_2732 ::= NON_TRANSACTED_ACCESS EQUAL grp_2733

    seq_2734 ::= DIRECTORY_NAME EQUAL STRING

    grp_2731 ::= grp_2732 | seq_2734

    seq_2735 ::= CONTAINS FILESTREAM

    opt_2736 ::= seq_2735 | $empty

    opt_2737 ::= DEFAULT | $empty

    seq_2738 ::= CONTAINS MEMORY_OPTIMIZED_DATA

    opt_2739 ::= seq_2738 | $empty

    seq_2740 ::= COMMA file_spec

    list_2741 ::= $empty | list_2741 seq_2740

    grp_2742 ::= id_ | STRING

    opt_2743 ::= COMMA | $empty

    opt_2744 ::= COMMA | $empty

    opt_2745 ::= COMMA | $empty

    seq_2746 ::= SIZE EQUAL file_size opt_2745

    opt_2747 ::= seq_2746 | $empty

    grp_2749 ::= file_size | UNLIMITED

    opt_2750 ::= COMMA | $empty

    grp_2748 ::= MAXSIZE EQUAL grp_2749 opt_2750

    opt_2751 ::= grp_2748 | $empty

    opt_2752 ::= COMMA | $empty

    seq_2753 ::= FILEGROWTH EQUAL file_size opt_2752

    opt_2754 ::= seq_2753 | $empty

    opt_2756 ::= id_ | $empty

    grp_2755 ::= id_ DOT id_ DOT id_ DOT | id_ DOT opt_2756 DOT | id_ DOT

    opt_2757 ::= grp_2755 | $empty

    opt_2759 ::= id_ | $empty

    grp_2758 ::= id_ DOT DOT id_ DOT | id_ DOT id_ DOT id_ DOT | id_ DOT opt_2759 DOT | id_ DOT

    opt_2760 ::= grp_2758 | $empty

    opt_2762 ::= id_ | $empty

    grp_2761 ::= id_ DOT opt_2762 DOT | id_ DOT

    opt_2763 ::= grp_2761 | $empty

    grp_2764 ::= id_ | BLOCKING_HIERARCHY

    seq_2765 ::= id_ DOT

    opt_2766 ::= seq_2765 | $empty

    seq_2767 ::= id_ DOT

    opt_2768 ::= seq_2767 | $empty

    opt_2769 ::= id_ | $empty

    opt_2770 ::= id_ | $empty

    opt_2771 ::= id_ | $empty

    opt_2772 ::= id_ | $empty

    opt_2773 ::= id_ | $empty

    grp_2775 ::= DELETED | INSERTED | full_table_name

    grp_2774 ::= grp_2775 DOT

    opt_2776 ::= grp_2774 | $empty

    grp_2779 ::= IDENTITY | ROWGUID

    grp_2778 ::= DOLLAR grp_2779

    grp_2777 ::= id_ | grp_2778

    grp_2780 ::= ASC | DESC

    opt_2781 ::= grp_2780 | $empty

    grp_2783 ::= ASC | DESC

    opt_2784 ::= grp_2783 | $empty

    grp_2782 ::= COMMA id_ opt_2784

    list_2785 ::= $empty | list_2785 grp_2782

    list_2786 ::= col | list_2786 col

    list_2787 ::= col | list_2787 col

    seq_2788 ::= COMMA list_2787 insert_column_id

    list_2789 ::= $empty | list_2789 seq_2788

    list_2790 ::= ignore | list_2790 ignore

    opt_2791 ::= id_ | $empty

    seq_2792 ::= list_2790 opt_2791 DOT

    list_2793 ::= $empty | list_2793 seq_2792

    list_2794 ::= col | list_2794 col

    list_2795 ::= col | list_2795 col

    seq_2796 ::= COMMA list_2795 id_

    list_2797 ::= $empty | list_2797 seq_2796

    opt_2798 ::= NOT | $empty

    opt_2799 ::= SEMI | $empty

    opt_2800 ::= CONVERSATION | $empty

    seq_2801 ::= COMMA STRING

    opt_2802 ::= seq_2801 | $empty

    grp_2805 ::= RELATED_CONVERSATION | RELATED_CONVERSATION_GROUP

    opt_2806 ::= COMMA | $empty

    grp_2804 ::= grp_2805 EQ LOCAL_ID opt_2806

    opt_2807 ::= grp_2804 | $empty

    grp_2809 ::= DECIMAL | LOCAL_ID

    opt_2810 ::= COMMA | $empty

    grp_2808 ::= LIFETIME EQ grp_2809 opt_2810

    opt_2811 ::= grp_2808 | $empty

    seq_2812 ::= ENCRYPTION EQ on_off

    opt_2813 ::= seq_2812 | $empty

    grp_2803 ::= WITH opt_2807 opt_2811 opt_2813

    opt_2814 ::= grp_2803 | $empty

    opt_2815 ::= SEMI | $empty

    grp_2816 ::= id_ | expression

    grp_2817 ::= id_ | expression

    opt_2818 ::= SEMI | $empty

    grp_2821 ::= LOCAL_ID | STRING

    grp_2822 ::= LOCAL_ID | STRING

    grp_2820 ::= ERROR EQ grp_2821 DESCRIPTION EQ grp_2822

    opt_2823 ::= grp_2820 | $empty

    opt_2824 ::= CLEANUP | $empty

    grp_2819 ::= WITH opt_2823 opt_2824

    opt_2825 ::= grp_2819 | $empty

    opt_2826 ::= WAITFOR | $empty

    opt_2827 ::= COMMA | $empty

    seq_2828 ::= opt_2827 TIMEOUT time

    opt_2829 ::= seq_2828 | $empty

    opt_2830 ::= SEMI | $empty

    grp_2831 ::= STRING | LOCAL_ID

    opt_2832 ::= SEMI | $empty

    seq_2833 ::= id_ DOT id_ DOT id_

    grp_2834 ::= STRING | LOCAL_ID

    grp_2836 ::= STRING | LOCAL_ID

    grp_2835 ::= LPAREN grp_2836 RPAREN

    opt_2837 ::= grp_2835 | $empty

    opt_2838 ::= SEMI | $empty

    grp_2839 ::= VARCHAR | NVARCHAR | BINARY_KEYWORD | VARBINARY_KEYWORD | SQUARE_BRACKET_ID

    seq_2840 ::= LPAREN DECIMAL COMMA DECIMAL RPAREN

    opt_2841 ::= seq_2840 | $empty

    opt_2842 ::= PRECISION | $empty

    opt_2843 ::= MINUS | $empty

    grp_2844 ::= DECIMAL | REAL | FLOAT

    opt_2845 ::= MINUS | $empty

    grp_2846 ::= MINUS | PLUS

    opt_2847 ::= grp_2846 | $empty

    grp_2848 ::= DECIMAL | FLOAT

    grp_2849 ::= DECIMAL | REAL | FLOAT

    grp_2850 ::= MINUS | PLUS

    opt_2851 ::= grp_2850 | $empty

    grp_2852 ::= DECIMAL | FLOAT

    grp_2853 ::= KB | MB | GB | TB | PERCENT

    opt_2854 ::= grp_2853 | $empty

%End
