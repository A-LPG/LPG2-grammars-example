-- AUTO-GENERATED from antlr/grammars-v4 sql/starrocks by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=SqlStarrocksParser
%options package=lpg.grammars.sql.starrocks
%options template=dtParserTemplateF.gi
%options import_terminals=SqlStarrocksLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    sqlStatements
%End

%Rules
    sqlStatements ::= list_1

    singleStatement ::= grp_2
           | emptyStatement

    emptyStatement ::= SEMICOLON

    statement ::= queryStatement
           | useDatabaseStatement
           | useCatalogStatement
           | setCatalogStatement
           | showDatabasesStatement
           | alterDbQuotaStatement
           | createDbStatement
           | dropDbStatement
           | showCreateDbStatement
           | alterDatabaseRenameStatement
           | recoverDbStmt
           | showDataStmt
           | createTableStatement
           | createTableAsSelectStatement
           | createTableLikeStatement
           | showCreateTableStatement
           | dropTableStatement
           | cleanTemporaryTableStatement
           | recoverTableStatement
           | truncateTableStatement
           | showTableStatement
           | descTableStatement
           | showTableStatusStatement
           | showColumnStatement
           | refreshTableStatement
           | alterTableStatement
           | cancelAlterTableStatement
           | showAlterStatement
           | showTemporaryTablesStatement
           | createViewStatement
           | alterViewStatement
           | dropViewStatement
           | showPartitionsStatement
           | recoverPartitionStatement
           | createIndexStatement
           | dropIndexStatement
           | showIndexStatement
           | submitTaskStatement
           | dropTaskStatement
           | createMaterializedViewStatement
           | showMaterializedViewsStatement
           | dropMaterializedViewStatement
           | alterMaterializedViewStatement
           | refreshMaterializedViewStatement
           | cancelRefreshMaterializedViewStatement
           | createExternalCatalogStatement
           | dropExternalCatalogStatement
           | showCatalogsStatement
           | showCreateExternalCatalogStatement
           | alterCatalogStatement
           | insertStatement
           | updateStatement
           | deleteStatement
           | createRoutineLoadStatement
           | alterRoutineLoadStatement
           | stopRoutineLoadStatement
           | resumeRoutineLoadStatement
           | pauseRoutineLoadStatement
           | showRoutineLoadStatement
           | showRoutineLoadTaskStatement
           | showCreateRoutineLoadStatement
           | showStreamLoadStatement
           | adminSetConfigStatement
           | adminSetReplicaStatusStatement
           | adminShowConfigStatement
           | adminShowReplicaDistributionStatement
           | adminShowReplicaStatusStatement
           | adminRepairTableStatement
           | adminCancelRepairTableStatement
           | adminCheckTabletsStatement
           | adminSetPartitionVersion
           | killStatement
           | syncStatement
           | executeScriptStatement
           | alterSystemStatement
           | cancelAlterSystemStatement
           | showComputeNodesStatement
           | analyzeStatement
           | dropStatsStatement
           | createAnalyzeStatement
           | dropAnalyzeJobStatement
           | analyzeHistogramStatement
           | dropHistogramStatement
           | showAnalyzeStatement
           | showStatsMetaStatement
           | showHistogramMetaStatement
           | killAnalyzeStatement
           | analyzeProfileStatement
           | createResourceGroupStatement
           | dropResourceGroupStatement
           | alterResourceGroupStatement
           | showResourceGroupStatement
           | showResourceGroupUsageStatement
           | createResourceStatement
           | alterResourceStatement
           | dropResourceStatement
           | showResourceStatement
           | showFunctionsStatement
           | dropFunctionStatement
           | createFunctionStatement
           | loadStatement
           | showLoadStatement
           | showLoadWarningsStatement
           | cancelLoadStatement
           | alterLoadStatement
           | showAuthorStatement
           | showBackendsStatement
           | showBrokerStatement
           | showCharsetStatement
           | showCollationStatement
           | showDeleteStatement
           | showDynamicPartitionStatement
           | showEventsStatement
           | showEnginesStatement
           | showFrontendsStatement
           | showPluginsStatement
           | showRepositoriesStatement
           | showOpenTableStatement
           | showPrivilegesStatement
           | showProcedureStatement
           | showProcStatement
           | showProcesslistStatement
           | showProfilelistStatement
           | showRunningQueriesStatement
           | showStatusStatement
           | showTabletStatement
           | showTransactionStatement
           | showTriggersStatement
           | showUserPropertyStatement
           | showVariablesStatement
           | showWarningStatement
           | helpStatement
           | createUserStatement
           | dropUserStatement
           | alterUserStatement
           | showUserStatement
           | showAuthenticationStatement
           | executeAsStatement
           | createRoleStatement
           | alterRoleStatement
           | dropRoleStatement
           | showRolesStatement
           | grantRoleStatement
           | revokeRoleStatement
           | setRoleStatement
           | setDefaultRoleStatement
           | grantPrivilegeStatement
           | revokePrivilegeStatement
           | showGrantsStatement
           | backupStatement
           | cancelBackupStatement
           | showBackupStatement
           | restoreStatement
           | cancelRestoreStatement
           | showRestoreStatement
           | showSnapshotStatement
           | createRepositoryStatement
           | dropRepositoryStatement
           | addSqlBlackListStatement
           | delSqlBlackListStatement
           | showSqlBlackListStatement
           | showWhiteListStatement
           | addBackendBlackListStatement
           | delBackendBlackListStatement
           | showBackendBlackListStatement
           | createDataCacheRuleStatement
           | showDataCacheRulesStatement
           | dropDataCacheRuleStatement
           | clearDataCacheRulesStatement
           | dataCacheSelectStatement
           | exportStatement
           | cancelExportStatement
           | showExportStatement
           | installPluginStatement
           | uninstallPluginStatement
           | createFileStatement
           | dropFileStatement
           | showSmallFilesStatement
           | setStatement
           | setUserPropertyStatement
           | createStorageVolumeStatement
           | alterStorageVolumeStatement
           | dropStorageVolumeStatement
           | showStorageVolumesStatement
           | descStorageVolumeStatement
           | setDefaultStorageVolumeStatement
           | createPipeStatement
           | dropPipeStatement
           | alterPipeStatement
           | showPipeStatement
           | descPipeStatement
           | cancelCompactionStatement
           | updateFailPointStatusStatement
           | showFailPointStatement
           | prepareStatement
           | executeStatement
           | deallocateStatement
           | createDictionaryStatement
           | dropDictionaryStatement
           | refreshDictionaryStatement
           | showDictionaryStatement
           | cancelRefreshDictionaryStatement
           | unsupportedStatement

    useDatabaseStatement ::= USE qualifiedName

    useCatalogStatement ::= USE string_

    setCatalogStatement ::= SET CATALOG identifierOrString

    showDatabasesStatement ::= SHOW DATABASES opt_6 opt_10
           | SHOW SCHEMAS opt_14

    alterDbQuotaStatement ::= ALTER DATABASE identifier SET DATA QUOTA identifier
           | ALTER DATABASE identifier SET REPLICA QUOTA INTEGER_VALUE

    createDbStatement ::= CREATE grp_15 opt_17 opt_19 identifier opt_20 opt_21 opt_22

    dropDbStatement ::= DROP grp_23 opt_25 opt_27 identifier opt_28

    showCreateDbStatement ::= SHOW CREATE grp_29 identifier

    alterDatabaseRenameStatement ::= ALTER DATABASE identifier RENAME identifier

    recoverDbStmt ::= RECOVER grp_30 identifier

    showDataStmt ::= SHOW DATA
           | SHOW DATA FROM qualifiedName

    createTableStatement ::= CREATE opt_32 TABLE opt_34 qualifiedName LEFT_PAREN columnDesc list_36 list_38 RIGHT_PAREN opt_39 opt_40 opt_41 opt_42 opt_43 opt_44 opt_45 opt_46 opt_47 opt_48

    columnDesc ::= identifier type opt_49 opt_50 opt_51 opt_53 opt_55 opt_56

    charsetName ::= CHAR SET identifier
           | CHARSET identifier
           | CHARACTER SET identifier

    defaultDesc ::= DEFAULT grp_57

    generatedColumnDesc ::= AS expression

    indexDesc ::= INDEX identifier identifierList opt_60 opt_61

    engineDesc ::= ENGINE EQ identifier

    charsetDesc ::= opt_62 grp_63 opt_64 identifierOrString

    collateDesc ::= opt_65 COLLATE opt_66 identifierOrString

    keyDesc ::= grp_67 KEY identifierList

    orderByDesc ::= ORDER BY identifierList

    aggDesc ::= SUM
           | MAX
           | MIN
           | REPLACE
           | HLL_UNION
           | BITMAP_UNION
           | PERCENTILE_UNION
           | REPLACE_IF_NOT_NULL

    rollupDesc ::= ROLLUP LEFT_PAREN rollupItem list_69 RIGHT_PAREN

    rollupItem ::= identifier identifierList opt_70 opt_71 opt_72

    dupKeys ::= DUPLICATE KEY identifierList

    fromRollup ::= FROM identifier

    orReplace ::= opt_74

    ifNotExists ::= opt_76

    createTableAsSelectStatement ::= CREATE opt_77 TABLE opt_79 qualifiedName opt_88 opt_89 opt_90 opt_91 opt_92 opt_93 opt_94 AS queryStatement

    dropTableStatement ::= DROP opt_95 TABLE opt_97 qualifiedName opt_98

    cleanTemporaryTableStatement ::= CLEAN TEMPORARY TABLE ON SESSION string_

    alterTableStatement ::= ALTER TABLE qualifiedName alterClause list_100
           | ALTER TABLE qualifiedName ADD ROLLUP rollupItem list_102
           | ALTER TABLE qualifiedName DROP ROLLUP identifier list_104

    createIndexStatement ::= CREATE INDEX identifier ON qualifiedName identifierList opt_107 opt_108

    dropIndexStatement ::= DROP INDEX identifier ON qualifiedName

    indexType ::= USING grp_109

    showTableStatement ::= SHOW opt_110 TABLES opt_113 opt_117

    showTemporaryTablesStatement ::= SHOW TEMPORARY TABLES opt_120 opt_124

    showCreateTableStatement ::= SHOW CREATE grp_125 qualifiedName

    showColumnStatement ::= SHOW opt_126 grp_127 grp_128 opt_132 opt_136

    showTableStatusStatement ::= SHOW TABLE STATUS opt_139 opt_143

    refreshTableStatement ::= REFRESH EXTERNAL TABLE qualifiedName opt_147

    showAlterStatement ::= SHOW ALTER TABLE grp_148 opt_151 opt_153 opt_157 opt_158
           | SHOW ALTER MATERIALIZED VIEW opt_161 opt_163 opt_167 opt_168

    descTableStatement ::= grp_169 qualifiedName opt_170

    createTableLikeStatement ::= CREATE opt_172 TABLE opt_174 qualifiedName opt_175 opt_176 opt_177 LIKE qualifiedName

    showIndexStatement ::= SHOW grp_178 grp_179 opt_183

    recoverTableStatement ::= RECOVER TABLE qualifiedName

    truncateTableStatement ::= TRUNCATE TABLE qualifiedName opt_184

    cancelAlterTableStatement ::= CANCEL ALTER TABLE opt_186 FROM qualifiedName opt_190
           | CANCEL ALTER MATERIALIZED VIEW FROM qualifiedName

    showPartitionsStatement ::= SHOW opt_191 PARTITIONS FROM qualifiedName opt_193 opt_197 opt_198

    recoverPartitionStatement ::= RECOVER PARTITION identifier FROM qualifiedName

    createViewStatement ::= CREATE opt_200 VIEW opt_202 qualifiedName opt_206 opt_207 AS queryStatement

    alterViewStatement ::= ALTER VIEW qualifiedName opt_211 AS queryStatement

    dropViewStatement ::= DROP VIEW opt_213 qualifiedName

    columnNameWithComment ::= identifier opt_214

    submitTaskStatement ::= SUBMIT TASK opt_215 list_216 AS grp_217

    taskClause ::= properties
           | taskScheduleDesc

    dropTaskStatement ::= DROP TASK qualifiedName opt_218

    taskScheduleDesc ::= SCHEDULE opt_220 EVERY LEFT_PAREN taskInterval RIGHT_PAREN

    createMaterializedViewStatement ::= CREATE MATERIALIZED VIEW opt_222 qualifiedName opt_228 opt_229 list_230 AS queryStatement

    materializedViewDesc ::= seq_231
           | distributionDesc
           | orderByDesc
           | refreshSchemeDesc
           | properties

    showMaterializedViewsStatement ::= SHOW MATERIALIZED VIEWS opt_234 opt_238

    dropMaterializedViewStatement ::= DROP MATERIALIZED VIEW opt_240 qualifiedName

    alterMaterializedViewStatement ::= ALTER MATERIALIZED VIEW qualifiedName grp_241
           | ALTER MATERIALIZED VIEW qualifiedName statusDesc

    refreshMaterializedViewStatement ::= REFRESH MATERIALIZED VIEW qualifiedName opt_243 opt_244 opt_247

    cancelRefreshMaterializedViewStatement ::= CANCEL REFRESH MATERIALIZED VIEW qualifiedName opt_248

    adminSetConfigStatement ::= ADMIN SET FRONTEND CONFIG LEFT_PAREN property RIGHT_PAREN

    adminSetReplicaStatusStatement ::= ADMIN SET REPLICA STATUS properties

    adminShowConfigStatement ::= ADMIN SHOW FRONTEND CONFIG opt_250

    adminShowReplicaDistributionStatement ::= ADMIN SHOW REPLICA DISTRIBUTION FROM qualifiedName opt_251

    adminShowReplicaStatusStatement ::= ADMIN SHOW REPLICA STATUS FROM qualifiedName opt_252 opt_254

    adminRepairTableStatement ::= ADMIN REPAIR TABLE qualifiedName opt_255

    adminCancelRepairTableStatement ::= ADMIN CANCEL REPAIR TABLE qualifiedName opt_256

    adminCheckTabletsStatement ::= ADMIN CHECK tabletList PROPERTIES LEFT_PAREN property RIGHT_PAREN

    adminSetPartitionVersion ::= ADMIN SET TABLE qualifiedName PARTITION LEFT_PAREN grp_257 RIGHT_PAREN VERSION TO INTEGER_VALUE

    killStatement ::= KILL grp_258 INTEGER_VALUE

    syncStatement ::= SYNC

    alterSystemStatement ::= ALTER SYSTEM alterClause

    cancelAlterSystemStatement ::= CANCEL DECOMMISSION BACKEND string_ list_261

    showComputeNodesStatement ::= SHOW COMPUTE NODES

    createExternalCatalogStatement ::= CREATE EXTERNAL CATALOG opt_263 identifierOrString opt_264 properties

    showCreateExternalCatalogStatement ::= SHOW CREATE CATALOG identifierOrString

    dropExternalCatalogStatement ::= DROP CATALOG opt_266 identifierOrString

    showCatalogsStatement ::= SHOW CATALOGS

    alterCatalogStatement ::= ALTER CATALOG identifierOrString modifyPropertiesClause

    createStorageVolumeStatement ::= CREATE STORAGE VOLUME opt_268 identifierOrString typeDesc locationsDesc opt_269 opt_270

    typeDesc ::= TYPE EQ identifier

    locationsDesc ::= LOCATIONS EQ stringList

    showStorageVolumesStatement ::= SHOW STORAGE VOLUMES opt_272

    dropStorageVolumeStatement ::= DROP STORAGE VOLUME opt_274 identifierOrString

    alterStorageVolumeStatement ::= ALTER STORAGE VOLUME identifierOrString alterStorageVolumeClause list_276

    alterStorageVolumeClause ::= modifyStorageVolumeCommentClause
           | modifyStorageVolumePropertiesClause

    modifyStorageVolumePropertiesClause ::= SET propertyList

    modifyStorageVolumeCommentClause ::= COMMENT EQ string_

    descStorageVolumeStatement ::= grp_277 STORAGE VOLUME identifierOrString

    setDefaultStorageVolumeStatement ::= SET identifierOrString AS DEFAULT STORAGE VOLUME

    updateFailPointStatusStatement ::= ADMIN DISABLE FAILPOINT string_ opt_279
           | ADMIN ENABLE FAILPOINT string_ opt_281 opt_283
           | ADMIN ENABLE FAILPOINT string_ opt_285 opt_287

    showFailPointStatement ::= SHOW FAILPOINTS opt_289 opt_291

    createDictionaryStatement ::= CREATE DICTIONARY dictionaryName USING qualifiedName LEFT_PAREN dictionaryColumnDesc list_293 RIGHT_PAREN opt_294

    dropDictionaryStatement ::= DROP DICTIONARY qualifiedName opt_295

    refreshDictionaryStatement ::= REFRESH DICTIONARY qualifiedName

    showDictionaryStatement ::= SHOW DICTIONARY opt_296

    cancelRefreshDictionaryStatement ::= CANCEL REFRESH DICTIONARY qualifiedName

    dictionaryColumnDesc ::= qualifiedName KEY
           | qualifiedName VALUE

    dictionaryName ::= qualifiedName

    alterClause ::= addFrontendClause
           | dropFrontendClause
           | modifyFrontendHostClause
           | addBackendClause
           | dropBackendClause
           | decommissionBackendClause
           | modifyBackendClause
           | addComputeNodeClause
           | dropComputeNodeClause
           | modifyBrokerClause
           | alterLoadErrorUrlClause
           | createImageClause
           | cleanTabletSchedQClause
           | decommissionDiskClause
           | cancelDecommissionDiskClause
           | disableDiskClause
           | cancelDisableDiskClause
           | createIndexClause
           | dropIndexClause
           | tableRenameClause
           | swapTableClause
           | modifyPropertiesClause
           | addColumnClause
           | addColumnsClause
           | dropColumnClause
           | modifyColumnClause
           | columnRenameClause
           | reorderColumnsClause
           | rollupRenameClause
           | compactionClause
           | modifyCommentClause
           | optimizeClause
           | addFieldClause
           | dropFieldClause
           | addPartitionClause
           | dropPartitionClause
           | distributionClause
           | truncatePartitionClause
           | modifyPartitionClause
           | replacePartitionClause
           | partitionRenameClause

    addFrontendClause ::= ADD grp_297 string_

    dropFrontendClause ::= DROP grp_298 string_

    modifyFrontendHostClause ::= MODIFY FRONTEND HOST string_ TO string_

    addBackendClause ::= ADD BACKEND string_ list_300

    dropBackendClause ::= DROP BACKEND string_ list_302 opt_303

    decommissionBackendClause ::= DECOMMISSION BACKEND string_ list_305

    modifyBackendClause ::= MODIFY BACKEND HOST string_ TO string_
           | MODIFY BACKEND string_ SET propertyList

    addComputeNodeClause ::= ADD COMPUTE NODE string_ list_307

    dropComputeNodeClause ::= DROP COMPUTE NODE string_ list_309

    modifyBrokerClause ::= ADD BROKER identifierOrString string_ list_311
           | DROP BROKER identifierOrString string_ list_313
           | DROP ALL BROKER identifierOrString

    alterLoadErrorUrlClause ::= SET LOAD ERRORS HUB opt_314

    createImageClause ::= CREATE IMAGE

    cleanTabletSchedQClause ::= CLEAN TABLET SCHEDULER QUEUE

    decommissionDiskClause ::= DECOMMISSION DISK string_ list_316 ON BACKEND string_

    cancelDecommissionDiskClause ::= CANCEL DECOMMISSION DISK string_ list_318 ON BACKEND string_

    disableDiskClause ::= DISABLE DISK string_ list_320 ON BACKEND string_

    cancelDisableDiskClause ::= CANCEL DISABLE DISK string_ list_322 ON BACKEND string_

    createIndexClause ::= ADD INDEX identifier identifierList opt_325 opt_326

    dropIndexClause ::= DROP INDEX identifier

    tableRenameClause ::= RENAME identifier

    swapTableClause ::= SWAP WITH identifier

    modifyPropertiesClause ::= SET propertyList

    modifyCommentClause ::= COMMENT EQ string_

    optimizeClause ::= opt_327 opt_328 opt_329 opt_330 opt_331

    addColumnClause ::= ADD COLUMN columnDesc opt_333 opt_336 opt_337

    addColumnsClause ::= ADD COLUMN LEFT_PAREN columnDesc list_339 RIGHT_PAREN opt_342 opt_343

    dropColumnClause ::= DROP COLUMN identifier opt_345 opt_346

    modifyColumnClause ::= MODIFY COLUMN columnDesc opt_348 opt_350 opt_351

    columnRenameClause ::= RENAME COLUMN identifier TO identifier

    reorderColumnsClause ::= ORDER BY identifierList opt_353 opt_354

    rollupRenameClause ::= RENAME ROLLUP identifier identifier

    compactionClause ::= opt_356 COMPACT opt_358

    subfieldName ::= identifier
           | ARRAY_ELEMENT

    nestedFieldName ::= subfieldName list_360

    addFieldClause ::= MODIFY COLUMN identifier ADD FIELD subfieldDesc opt_362 opt_363

    dropFieldClause ::= MODIFY COLUMN identifier DROP FIELD nestedFieldName opt_364

    addPartitionClause ::= ADD opt_365 grp_366 opt_367 opt_368
           | ADD opt_369 grp_370 opt_371 opt_372

    dropPartitionClause ::= DROP opt_373 PARTITION opt_375 identifier opt_376

    truncatePartitionClause ::= TRUNCATE partitionNames

    modifyPartitionClause ::= MODIFY PARTITION grp_377 SET propertyList
           | MODIFY PARTITION distributionDesc

    replacePartitionClause ::= REPLACE partitionNames WITH partitionNames opt_378

    partitionRenameClause ::= RENAME PARTITION identifier identifier

    insertStatement ::= opt_379 INSERT grp_380 grp_381 opt_384 opt_386 opt_387 grp_388

    updateStatement ::= opt_392 opt_393 UPDATE qualifiedName SET assignmentList fromClause opt_395

    deleteStatement ::= opt_396 opt_397 DELETE FROM qualifiedName opt_398 opt_400 opt_402

    createRoutineLoadStatement ::= CREATE ROUTINE LOAD opt_404 identifier ON qualifiedName opt_408 opt_409 FROM identifier opt_410

    alterRoutineLoadStatement ::= ALTER ROUTINE LOAD FOR opt_412 identifier opt_416 opt_417 opt_418

    dataSource ::= FROM identifier dataSourceProperties

    loadProperties ::= colSeparatorProperty
           | rowDelimiterProperty
           | importColumns
           | WHERE expression
           | partitionNames

    colSeparatorProperty ::= COLUMNS TERMINATED BY string_

    rowDelimiterProperty ::= ROWS TERMINATED BY string_

    importColumns ::= COLUMNS columnProperties

    columnProperties ::= LEFT_PAREN grp_419 list_422 RIGHT_PAREN

    jobProperties ::= properties

    dataSourceProperties ::= propertyList

    stopRoutineLoadStatement ::= STOP ROUTINE LOAD FOR opt_424 identifier

    resumeRoutineLoadStatement ::= RESUME ROUTINE LOAD FOR opt_426 identifier

    pauseRoutineLoadStatement ::= PAUSE ROUTINE LOAD FOR opt_428 identifier

    showRoutineLoadStatement ::= SHOW opt_429 ROUTINE LOAD opt_433 opt_435 opt_437 opt_441 opt_442

    showRoutineLoadTaskStatement ::= SHOW ROUTINE LOAD TASK opt_444 WHERE expression

    showCreateRoutineLoadStatement ::= SHOW CREATE ROUTINE LOAD opt_446 identifier

    showStreamLoadStatement ::= SHOW opt_447 STREAM LOAD opt_451 opt_453 opt_455 opt_459 opt_460

    analyzeStatement ::= ANALYZE opt_462 TABLE qualifiedName opt_466 opt_469 opt_470

    dropStatsStatement ::= DROP STATS qualifiedName

    analyzeHistogramStatement ::= ANALYZE TABLE qualifiedName UPDATE HISTOGRAM ON qualifiedName list_472 opt_475 opt_477 opt_478

    dropHistogramStatement ::= ANALYZE TABLE qualifiedName DROP HISTOGRAM ON qualifiedName list_480

    createAnalyzeStatement ::= CREATE ANALYZE opt_482 ALL opt_483
           | CREATE ANALYZE opt_485 DATABASE identifier opt_486
           | CREATE ANALYZE opt_488 TABLE qualifiedName opt_492 opt_493

    dropAnalyzeJobStatement ::= DROP ANALYZE INTEGER_VALUE

    showAnalyzeStatement ::= SHOW ANALYZE opt_495 opt_497

    showStatsMetaStatement ::= SHOW STATS META opt_499

    showHistogramMetaStatement ::= SHOW HISTOGRAM META opt_501

    killAnalyzeStatement ::= KILL ANALYZE INTEGER_VALUE

    analyzeProfileStatement ::= ANALYZE PROFILE FROM string_
           | ANALYZE PROFILE FROM string_ COMMA INTEGER_VALUE list_503

    createResourceGroupStatement ::= CREATE RESOURCE GROUP opt_505 opt_507 identifier opt_511 WITH LEFT_PAREN property list_513 RIGHT_PAREN

    dropResourceGroupStatement ::= DROP RESOURCE GROUP identifier

    alterResourceGroupStatement ::= ALTER RESOURCE GROUP identifier ADD classifier list_515
           | ALTER RESOURCE GROUP identifier DROP LEFT_PAREN INTEGER_VALUE list_517 RIGHT_PAREN
           | ALTER RESOURCE GROUP identifier DROP ALL
           | ALTER RESOURCE GROUP identifier WITH LEFT_PAREN property list_519 RIGHT_PAREN

    showResourceGroupStatement ::= SHOW RESOURCE GROUP identifier
           | SHOW RESOURCE GROUPS opt_520

    showResourceGroupUsageStatement ::= SHOW USAGE RESOURCE GROUP identifier
           | SHOW USAGE RESOURCE GROUPS

    createResourceStatement ::= CREATE opt_521 RESOURCE identifierOrString opt_522

    alterResourceStatement ::= ALTER RESOURCE identifierOrString SET properties

    dropResourceStatement ::= DROP RESOURCE identifierOrString

    showResourceStatement ::= SHOW RESOURCES

    classifier ::= LEFT_PAREN expressionList RIGHT_PAREN

    showFunctionsStatement ::= SHOW opt_523 opt_525 FUNCTIONS opt_528 opt_532

    dropFunctionStatement ::= DROP opt_533 FUNCTION qualifiedName LEFT_PAREN typeList RIGHT_PAREN

    createFunctionStatement ::= CREATE opt_534 opt_536 FUNCTION qualifiedName LEFT_PAREN typeList RIGHT_PAREN RETURNS type opt_538 opt_539

    typeList ::= opt_540 list_542 opt_544

    loadStatement ::= LOAD LABEL labelName opt_545 opt_546 opt_548 opt_550
           | LOAD LABEL labelName opt_551 resourceDesc opt_553

    labelName ::= opt_555 identifier

    dataDescList ::= LEFT_PAREN dataDesc list_557 RIGHT_PAREN

    dataDesc ::= DATA INFILE stringList opt_558 INTO TABLE identifier opt_559 opt_561 opt_563 opt_564 opt_565 opt_566 opt_568 opt_570 opt_572
           | DATA FROM TABLE identifier opt_573 INTO TABLE identifier opt_574 opt_576 opt_578

    formatProps ::= LEFT_PAREN opt_580 opt_582 opt_584 opt_586 RIGHT_PAREN

    brokerDesc ::= WITH BROKER opt_587
           | WITH BROKER identifierOrString opt_588

    resourceDesc ::= WITH RESOURCE identifierOrString opt_589

    showLoadStatement ::= SHOW LOAD opt_590 opt_592 opt_594 opt_598 opt_599

    showLoadWarningsStatement ::= SHOW LOAD WARNINGS opt_601 opt_603 opt_604
           | SHOW LOAD WARNINGS ON string_

    cancelLoadStatement ::= CANCEL LOAD opt_606 opt_608

    alterLoadStatement ::= ALTER LOAD FOR opt_610 identifier opt_611

    cancelCompactionStatement ::= CANCEL COMPACTION WHERE expression

    showAuthorStatement ::= SHOW AUTHORS

    showBackendsStatement ::= SHOW BACKENDS

    showBrokerStatement ::= SHOW BROKER

    showCharsetStatement ::= SHOW grp_612 opt_616

    showCollationStatement ::= SHOW COLLATION opt_620

    showDeleteStatement ::= SHOW DELETE opt_623

    showDynamicPartitionStatement ::= SHOW DYNAMIC PARTITION TABLES opt_626

    showEventsStatement ::= SHOW EVENTS opt_629 opt_633

    showEnginesStatement ::= SHOW ENGINES

    showFrontendsStatement ::= SHOW FRONTENDS

    showPluginsStatement ::= SHOW PLUGINS

    showRepositoriesStatement ::= SHOW REPOSITORIES

    showOpenTableStatement ::= SHOW OPEN TABLES

    showPrivilegesStatement ::= SHOW PRIVILEGES

    showProcedureStatement ::= SHOW grp_634 STATUS opt_638

    showProcStatement ::= SHOW PROC string_

    showProcesslistStatement ::= SHOW opt_639 PROCESSLIST opt_641

    showProfilelistStatement ::= SHOW PROFILELIST opt_643

    showRunningQueriesStatement ::= SHOW RUNNING QUERIES opt_645

    showStatusStatement ::= SHOW opt_646 STATUS opt_650

    showTabletStatement ::= SHOW TABLET INTEGER_VALUE
           | SHOW grp_651 FROM qualifiedName opt_652 opt_654 opt_658 opt_659

    showTransactionStatement ::= SHOW TRANSACTION opt_662 opt_664

    showTriggersStatement ::= SHOW opt_665 TRIGGERS opt_668 opt_672

    showUserPropertyStatement ::= SHOW PROPERTY opt_674 opt_676

    showVariablesStatement ::= SHOW opt_677 VARIABLES opt_681

    showWarningStatement ::= SHOW grp_682 opt_683

    helpStatement ::= HELP identifierOrString

    createUserStatement ::= CREATE USER opt_685 user opt_686 opt_688

    dropUserStatement ::= DROP USER opt_690 user

    alterUserStatement ::= ALTER USER opt_692 user authOption
           | ALTER USER opt_694 user DEFAULT ROLE grp_695

    showUserStatement ::= SHOW grp_696

    showAuthenticationStatement ::= SHOW ALL AUTHENTICATION
           | SHOW AUTHENTICATION opt_698

    executeAsStatement ::= EXECUTE AS user opt_700

    createRoleStatement ::= CREATE ROLE opt_702 roleList opt_703

    alterRoleStatement ::= ALTER ROLE opt_705 roleList SET COMMENT EQ string_

    dropRoleStatement ::= DROP ROLE opt_707 roleList

    showRolesStatement ::= SHOW ROLES

    grantRoleStatement ::= GRANT identifierOrStringList TO opt_708 user
           | GRANT identifierOrStringList TO ROLE identifierOrString

    revokeRoleStatement ::= REVOKE identifierOrStringList FROM opt_709 user
           | REVOKE identifierOrStringList FROM ROLE identifierOrString

    setRoleStatement ::= SET ROLE DEFAULT
           | SET ROLE NONE
           | SET ROLE ALL opt_711
           | SET ROLE roleList

    setDefaultRoleStatement ::= SET DEFAULT ROLE grp_712 TO user

    grantRevokeClause ::= grp_713

    grantPrivilegeStatement ::= GRANT IMPERSONATE ON USER user list_716 TO grantRevokeClause opt_718
           | GRANT privilegeTypeList ON privObjectNameList TO grantRevokeClause opt_720
           | GRANT privilegeTypeList ON opt_721 FUNCTION privFunctionObjectNameList TO grantRevokeClause opt_723
           | GRANT privilegeTypeList ON SYSTEM TO grantRevokeClause opt_725
           | GRANT privilegeTypeList ON privObjectType privObjectNameList TO grantRevokeClause opt_727
           | GRANT privilegeTypeList ON ALL privObjectTypePlural opt_729 TO grantRevokeClause opt_731

    revokePrivilegeStatement ::= REVOKE IMPERSONATE ON USER user list_733 FROM grantRevokeClause
           | REVOKE privilegeTypeList ON privObjectNameList FROM grantRevokeClause
           | REVOKE privilegeTypeList ON opt_734 FUNCTION privFunctionObjectNameList FROM grantRevokeClause
           | REVOKE privilegeTypeList ON SYSTEM FROM grantRevokeClause
           | REVOKE privilegeTypeList ON privObjectType privObjectNameList FROM grantRevokeClause
           | REVOKE privilegeTypeList ON ALL privObjectTypePlural opt_736 FROM grantRevokeClause

    showGrantsStatement ::= SHOW GRANTS
           | SHOW GRANTS FOR opt_737 user
           | SHOW GRANTS FOR ROLE identifierOrString

    authOption ::= IDENTIFIED BY opt_738 string_
           | IDENTIFIED WITH identifierOrString opt_741

    privObjectName ::= identifierOrStringOrStar opt_743

    privObjectNameList ::= privObjectName list_745

    privFunctionObjectNameList ::= qualifiedName LEFT_PAREN typeList RIGHT_PAREN list_747

    privilegeTypeList ::= privilegeType list_749

    privilegeType ::= ALL opt_750
           | ALTER
           | APPLY
           | BLACKLIST
           | CREATE grp_751
           | DELETE
           | DROP
           | EXPORT
           | FILE
           | IMPERSONATE
           | INSERT
           | GRANT
           | NODE
           | OPERATE
           | PLUGIN
           | REPOSITORY
           | REFRESH
           | SELECT
           | UPDATE
           | USAGE

    privObjectType ::= CATALOG
           | DATABASE
           | MATERIALIZED VIEW
           | RESOURCE
           | RESOURCE GROUP
           | STORAGE VOLUME
           | SYSTEM
           | TABLE
           | VIEW
           | PIPE

    privObjectTypePlural ::= CATALOGS
           | DATABASES
           | FUNCTIONS
           | GLOBAL FUNCTIONS
           | MATERIALIZED VIEWS
           | POLICIES
           | RESOURCES
           | RESOURCE GROUPS
           | STORAGE VOLUMES
           | TABLES
           | USERS
           | VIEWS
           | PIPES

    backupStatement ::= BACKUP SNAPSHOT qualifiedName TO identifier opt_755 opt_757

    cancelBackupStatement ::= CANCEL BACKUP opt_760

    showBackupStatement ::= SHOW BACKUP opt_763

    restoreStatement ::= RESTORE SNAPSHOT qualifiedName FROM identifier opt_767 opt_769

    cancelRestoreStatement ::= CANCEL RESTORE opt_772

    showRestoreStatement ::= SHOW RESTORE opt_775 opt_777

    showSnapshotStatement ::= SHOW SNAPSHOT ON identifier opt_779

    createRepositoryStatement ::= CREATE opt_781 REPOSITORY identifier WITH BROKER opt_782 ON LOCATION string_ opt_784

    dropRepositoryStatement ::= DROP REPOSITORY identifier

    addSqlBlackListStatement ::= ADD SQLBLACKLIST string_

    delSqlBlackListStatement ::= DELETE SQLBLACKLIST INTEGER_VALUE list_786

    showSqlBlackListStatement ::= SHOW SQLBLACKLIST

    showWhiteListStatement ::= SHOW WHITELIST

    addBackendBlackListStatement ::= ADD BACKEND BLACKLIST INTEGER_VALUE list_788

    delBackendBlackListStatement ::= DELETE BACKEND BLACKLIST INTEGER_VALUE list_790

    showBackendBlackListStatement ::= SHOW BACKEND BLACKLIST

    dataCacheTarget ::= identifierOrStringOrStar DOT identifierOrStringOrStar DOT identifierOrStringOrStar

    createDataCacheRuleStatement ::= CREATE DATACACHE RULE dataCacheTarget opt_792 PRIORITY EQ opt_793 INTEGER_VALUE opt_794

    showDataCacheRulesStatement ::= SHOW DATACACHE RULES

    dropDataCacheRuleStatement ::= DROP DATACACHE RULE INTEGER_VALUE

    clearDataCacheRulesStatement ::= CLEAR DATACACHE RULES

    dataCacheSelectStatement ::= CACHE SELECT selectItem list_796 FROM qualifiedName opt_798 opt_799

    exportStatement ::= EXPORT TABLE tableDesc opt_800 TO string_ opt_803 opt_804 opt_805

    cancelExportStatement ::= CANCEL EXPORT opt_808 opt_812

    showExportStatement ::= SHOW EXPORT opt_815 opt_819 opt_823 opt_824

    installPluginStatement ::= INSTALL PLUGIN FROM identifierOrString opt_825

    uninstallPluginStatement ::= UNINSTALL PLUGIN identifierOrString

    createFileStatement ::= CREATE FILE string_ opt_828 properties

    dropFileStatement ::= DROP FILE string_ opt_831 properties

    showSmallFilesStatement ::= SHOW FILE opt_834

    createPipeStatement ::= CREATE orReplace PIPE ifNotExists qualifiedName opt_835 AS insertStatement

    dropPipeStatement ::= DROP PIPE opt_837 qualifiedName

    alterPipeClause ::= SUSPEND
           | RESUME
           | RETRY ALL
           | RETRY FILE string_
           | SET propertyList

    alterPipeStatement ::= ALTER PIPE qualifiedName alterPipeClause

    descPipeStatement ::= grp_838 PIPE qualifiedName

    showPipeStatement ::= SHOW PIPES opt_843 opt_847 opt_848

    setStatement ::= SET setVar list_850

    setVar ::= grp_851 grp_852
           | NAMES grp_853 opt_856
           | PASSWORD EQ grp_857
           | PASSWORD FOR user EQ grp_858
           | userVariable EQ expression
           | opt_859 identifier EQ setExprOrDefault
           | systemVariable EQ setExprOrDefault
           | opt_860 TRANSACTION transaction_characteristics

    transaction_characteristics ::= transaction_access_mode
           | isolation_level
           | transaction_access_mode COMMA isolation_level
           | isolation_level COMMA transaction_access_mode

    transaction_access_mode ::= READ ONLY
           | READ WRITE

    isolation_level ::= ISOLATION LEVEL isolation_types

    isolation_types ::= READ UNCOMMITTED
           | READ COMMITTED
           | REPEATABLE READ
           | SERIALIZABLE

    setExprOrDefault ::= DEFAULT
           | ON
           | ALL
           | expression

    setUserPropertyStatement ::= SET PROPERTY opt_862 userPropertyList

    roleList ::= identifierOrString list_864

    executeScriptStatement ::= ADMIN EXECUTE ON grp_865 string_

    unsupportedStatement ::= START TRANSACTION opt_867
           | BEGIN opt_868
           | COMMIT opt_869 opt_872 opt_875
           | ROLLBACK opt_876 opt_879 opt_882
           | LOCK TABLES lock_item list_884
           | UNLOCK TABLES

    lock_item ::= identifier opt_887 lock_type

    lock_type ::= READ opt_888
           | opt_889 WRITE

    queryStatement ::= opt_891 queryRelation opt_892

    queryRelation ::= opt_893 queryNoWith

    withClause ::= WITH commonTableExpression list_895

    queryNoWith ::= queryPrimary opt_899 opt_900

    temporalClause ::= AS OF expression
           | FOR SYSTEM_TIME AS OF TIMESTAMP string_
           | FOR SYSTEM_TIME BETWEEN expression AND expression
           | FOR SYSTEM_TIME FROM expression TO expression
           | FOR SYSTEM_TIME ALL
           | FOR VERSION AS OF expression

    queryPrimary ::= querySpecification
           | subquery
           | queryPrimary INTERSECT opt_901 queryPrimary
           | queryPrimary grp_902 opt_903 queryPrimary

    subquery ::= LEFT_PAREN queryRelation RIGHT_PAREN

    rowConstructor ::= LEFT_PAREN expressionList RIGHT_PAREN

    sortItem ::= expression opt_905 opt_908

    limitElement ::= LIMIT grp_909 opt_912
           | LIMIT grp_913 COMMA grp_914

    querySpecification ::= SELECT opt_915 selectItem list_917 fromClause seq_926

    fromClause ::= opt_929
           | FROM DUAL

    groupingElement ::= ROLLUP LEFT_PAREN opt_930 RIGHT_PAREN
           | CUBE LEFT_PAREN opt_931 RIGHT_PAREN
           | GROUPING SETS LEFT_PAREN groupingSet list_933 RIGHT_PAREN
           | expressionList

    groupingSet ::= LEFT_PAREN opt_934 list_936 RIGHT_PAREN

    commonTableExpression ::= identifier opt_937 AS LEFT_PAREN queryRelation RIGHT_PAREN

    setQuantifier ::= DISTINCT
           | ALL

    selectItem ::= expression opt_941
           | qualifiedName DOT ASTERISK_SYMBOL
           | ASTERISK_SYMBOL

    relations ::= relation list_944

    relation ::= relationPrimary list_945
           | LEFT_PAREN relationPrimary list_946 RIGHT_PAREN

    relationPrimary ::= qualifiedName opt_947 opt_948 opt_949 opt_950 opt_953 opt_954
           | LEFT_PAREN VALUES rowConstructor list_956 RIGHT_PAREN opt_960
           | subquery opt_964
           | qualifiedName LEFT_PAREN expressionList RIGHT_PAREN opt_968
           | TABLE LEFT_PAREN qualifiedName LEFT_PAREN argumentList RIGHT_PAREN RIGHT_PAREN opt_972
           | FILES propertyList opt_976
           | LEFT_PAREN relations RIGHT_PAREN

    pivotClause ::= PIVOT LEFT_PAREN pivotAggregationExpression list_978 FOR grp_979 IN LEFT_PAREN pivotValue list_981 RIGHT_PAREN RIGHT_PAREN

    pivotAggregationExpression ::= functionCall opt_985

    pivotValue ::= grp_986 opt_990

    argumentList ::= expressionList

    joinRelation ::= crossOrInnerJoinType opt_991 opt_992 relationPrimary opt_993
           | outerAndSemiJoinType opt_994 opt_995 relationPrimary joinCriteria

    crossOrInnerJoinType ::= JOIN
           | INNER JOIN
           | CROSS
           | CROSS JOIN

    outerAndSemiJoinType ::= LEFT JOIN
           | RIGHT JOIN
           | FULL JOIN
           | LEFT OUTER JOIN
           | RIGHT OUTER JOIN
           | FULL OUTER JOIN
           | LEFT SEMI JOIN
           | RIGHT SEMI JOIN
           | LEFT ANTI JOIN
           | RIGHT ANTI JOIN

    bracketHint ::= LEFT_BRACKET identifier list_997 RIGHT_BRACKET
           | LEFT_BRACKET identifier PIPE primaryExpression literalExpressionList RIGHT_BRACKET

    hintMap ::= identifierOrString EQ literalExpression

    joinCriteria ::= ON expression
           | USING LEFT_PAREN identifier list_999 RIGHT_PAREN

    columnAliases ::= LEFT_PAREN identifier list_1001 RIGHT_PAREN

    partitionNames ::= opt_1002 grp_1003 LEFT_PAREN identifierOrString list_1005 RIGHT_PAREN
           | opt_1006 grp_1007 identifierOrString
           | keyPartitions

    keyPartitions ::= PARTITION LEFT_PAREN keyPartition list_1009 RIGHT_PAREN

    tabletList ::= TABLET LEFT_PAREN INTEGER_VALUE list_1011 RIGHT_PAREN

    prepareStatement ::= PREPARE identifier FROM prepareSql

    prepareSql ::= statement
           | SINGLE_QUOTED_TEXT

    executeStatement ::= EXECUTE identifier opt_1015

    deallocateStatement ::= grp_1016 PREPARE identifier

    replicaList ::= REPLICA LEFT_PAREN INTEGER_VALUE list_1018 RIGHT_PAREN

    expressionsWithDefault ::= LEFT_PAREN expressionOrDefault list_1020 RIGHT_PAREN

    expressionOrDefault ::= expression
           | DEFAULT

    mapExpressionList ::= mapExpression list_1022

    mapExpression ::= expression COLON expression

    expressionSingleton ::= expression

    expression ::= opt_1023 booleanExpression
           | NOT expression
           | expression grp_1024 expression
           | expression grp_1025 expression

    expressionList ::= expression list_1027

    booleanExpression ::= predicate
           | booleanExpression IS opt_1028 NULL_
           | booleanExpression comparisonOperator predicate
           | booleanExpression comparisonOperator LEFT_PAREN queryRelation RIGHT_PAREN

    predicate ::= valueExpression opt_1030
           | tupleInSubquery

    tupleInSubquery ::= LEFT_PAREN expression list_1032 RIGHT_PAREN opt_1033 IN LEFT_PAREN queryRelation RIGHT_PAREN

    valueExpression ::= primaryExpression
           | valueExpression BITXOR valueExpression
           | valueExpression grp_1034 valueExpression
           | valueExpression grp_1035 valueExpression
           | valueExpression BITAND valueExpression
           | valueExpression BITOR valueExpression
           | valueExpression BIT_SHIFT_LEFT valueExpression
           | valueExpression BIT_SHIFT_RIGHT valueExpression
           | valueExpression BIT_SHIFT_RIGHT_LOGICAL valueExpression

    primaryExpression ::= userVariable
           | systemVariable
           | DICTIONARY_GET LEFT_PAREN expressionList RIGHT_PAREN
           | functionCall
           | LEFT_BRACE FN functionCall RIGHT_BRACE
           | primaryExpression COLLATE grp_1036
           | literalExpression
           | columnReference
           | primaryExpression grp_1037
           | primaryExpression CONCAT primaryExpression
           | grp_1038 primaryExpression
           | LOGICAL_NOT primaryExpression
           | LEFT_PAREN expression RIGHT_PAREN
           | EXISTS LEFT_PAREN queryRelation RIGHT_PAREN
           | subquery
           | CAST LEFT_PAREN expression AS type RIGHT_PAREN
           | CONVERT LEFT_PAREN expression COMMA type RIGHT_PAREN
           | CASE expression list_1039 opt_1041 END
           | CASE list_1042 opt_1044 END
           | opt_1045 LEFT_BRACKET opt_1046 RIGHT_BRACKET
           | mapType LEFT_BRACE opt_1047 RIGHT_BRACE
           | MAP LEFT_BRACE opt_1048 RIGHT_BRACE
           | primaryExpression LEFT_BRACKET valueExpression RIGHT_BRACKET
           | primaryExpression LEFT_BRACKET opt_1049 COLON opt_1050 RIGHT_BRACKET
           | primaryExpression ARROW string_
           | grp_1051 ARROW expression
           | identifierList ARROW LEFT_PAREN opt_1052 RIGHT_PAREN
           | primaryExpression opt_1053 MATCH primaryExpression

    literalExpression ::= NULL_
           | booleanValue
           | number
           | grp_1054 string_
           | string_
           | interval
           | unitBoundary
           | binary
           | PARAMETER

    functionCall ::= EXTRACT LEFT_PAREN identifier FROM valueExpression RIGHT_PAREN
           | GROUPING LEFT_PAREN opt_1058 RIGHT_PAREN
           | GROUPING_ID LEFT_PAREN opt_1062 RIGHT_PAREN
           | informationFunctionExpression
           | specialDateTimeExpression
           | specialFunctionExpression
           | aggregationFunction opt_1063
           | windowFunction over
           | qualifiedName LEFT_PAREN opt_1067 RIGHT_PAREN opt_1068

    aggregationFunction ::= AVG LEFT_PAREN opt_1069 expression RIGHT_PAREN
           | COUNT LEFT_PAREN opt_1070 RIGHT_PAREN
           | COUNT LEFT_PAREN opt_1073 opt_1077 RIGHT_PAREN
           | MAX LEFT_PAREN opt_1078 expression RIGHT_PAREN
           | MIN LEFT_PAREN opt_1079 expression RIGHT_PAREN
           | SUM LEFT_PAREN opt_1080 expression RIGHT_PAREN
           | ARRAY_AGG LEFT_PAREN opt_1081 expression opt_1085 RIGHT_PAREN
           | ARRAY_AGG_DISTINCT LEFT_PAREN expression opt_1089 RIGHT_PAREN
           | GROUP_CONCAT LEFT_PAREN opt_1090 expression list_1092 opt_1096 opt_1098 RIGHT_PAREN

    userVariable ::= AT identifierOrString

    systemVariable ::= AT AT opt_1100 identifier

    columnReference ::= identifier

    informationFunctionExpression ::= CATALOG LEFT_PAREN RIGHT_PAREN
           | DATABASE LEFT_PAREN RIGHT_PAREN
           | SCHEMA LEFT_PAREN RIGHT_PAREN
           | USER LEFT_PAREN RIGHT_PAREN
           | CURRENT_USER opt_1102
           | CURRENT_ROLE opt_1104

    specialDateTimeExpression ::= CURRENT_DATE opt_1106
           | CURRENT_TIME opt_1108
           | CURRENT_TIMESTAMP opt_1110
           | LOCALTIME opt_1112
           | LOCALTIMESTAMP opt_1114

    specialFunctionExpression ::= CHAR LEFT_PAREN expression RIGHT_PAREN
           | DAY LEFT_PAREN expression RIGHT_PAREN
           | HOUR LEFT_PAREN expression RIGHT_PAREN
           | IF LEFT_PAREN opt_1118 RIGHT_PAREN
           | LEFT LEFT_PAREN expression COMMA expression RIGHT_PAREN
           | LIKE LEFT_PAREN expression COMMA expression RIGHT_PAREN
           | MINUTE LEFT_PAREN expression RIGHT_PAREN
           | MOD LEFT_PAREN expression COMMA expression RIGHT_PAREN
           | MONTH LEFT_PAREN expression RIGHT_PAREN
           | QUARTER LEFT_PAREN expression RIGHT_PAREN
           | REGEXP LEFT_PAREN expression COMMA expression RIGHT_PAREN
           | REPLACE LEFT_PAREN opt_1122 RIGHT_PAREN
           | RIGHT LEFT_PAREN expression COMMA expression RIGHT_PAREN
           | RLIKE LEFT_PAREN expression COMMA expression RIGHT_PAREN
           | SECOND LEFT_PAREN expression RIGHT_PAREN
           | TIMESTAMPADD LEFT_PAREN unitIdentifier COMMA expression COMMA expression RIGHT_PAREN
           | TIMESTAMPDIFF LEFT_PAREN unitIdentifier COMMA expression COMMA expression RIGHT_PAREN
           | YEAR LEFT_PAREN expression RIGHT_PAREN
           | PASSWORD LEFT_PAREN string_ RIGHT_PAREN
           | FLOOR LEFT_PAREN expression RIGHT_PAREN
           | CEIL LEFT_PAREN expression RIGHT_PAREN

    windowFunction ::= ROW_NUMBER LEFT_PAREN RIGHT_PAREN
           | RANK LEFT_PAREN RIGHT_PAREN
           | DENSE_RANK LEFT_PAREN RIGHT_PAREN
           | CUME_DIST LEFT_PAREN RIGHT_PAREN
           | PERCENT_RANK LEFT_PAREN RIGHT_PAREN
           | NTILE LEFT_PAREN opt_1123 RIGHT_PAREN
           | LEAD LEFT_PAREN opt_1128 RIGHT_PAREN opt_1129
           | LAG LEFT_PAREN opt_1134 RIGHT_PAREN opt_1135
           | FIRST_VALUE LEFT_PAREN opt_1140 RIGHT_PAREN opt_1141
           | LAST_VALUE LEFT_PAREN opt_1146 RIGHT_PAREN opt_1147

    whenClause ::= WHEN expression THEN expression

    over ::= OVER LEFT_PAREN opt_1154 opt_1158 opt_1159 RIGHT_PAREN

    ignoreNulls ::= IGNORE NULLS

    windowFrame ::= RANGE frameBound
           | ROWS frameBound
           | RANGE BETWEEN frameBound AND frameBound
           | ROWS BETWEEN frameBound AND frameBound

    frameBound ::= UNBOUNDED PRECEDING
           | UNBOUNDED FOLLOWING
           | CURRENT ROW
           | expression grp_1160

    tableDesc ::= qualifiedName opt_1161

    restoreTableDesc ::= qualifiedName opt_1162 opt_1164

    explainDesc ::= grp_1165 opt_1167

    optimizerTrace ::= TRACE grp_1168 opt_1169

    partitionDesc ::= PARTITION BY RANGE identifierList LEFT_PAREN opt_1173 RIGHT_PAREN
           | PARTITION BY RANGE primaryExpression LEFT_PAREN opt_1177 RIGHT_PAREN
           | PARTITION BY opt_1178 identifierList LEFT_PAREN opt_1182 RIGHT_PAREN
           | PARTITION BY opt_1183 identifierList
           | PARTITION BY functionCall LEFT_PAREN opt_1187 RIGHT_PAREN
           | PARTITION BY functionCall

    listPartitionDesc ::= singleItemListPartitionDesc
           | multiItemListPartitionDesc

    singleItemListPartitionDesc ::= PARTITION opt_1189 identifier VALUES IN listPartitionValueList opt_1190

    multiItemListPartitionDesc ::= PARTITION opt_1192 identifier VALUES IN LEFT_PAREN listPartitionValueList list_1194 RIGHT_PAREN opt_1195

    listPartitionValueList ::= LEFT_PAREN listPartitionValue list_1197 RIGHT_PAREN

    listPartitionValue ::= NULL_
           | string_

    stringList ::= LEFT_PAREN string_ list_1199 RIGHT_PAREN

    literalExpressionList ::= LEFT_PAREN literalExpression list_1201 RIGHT_PAREN

    rangePartitionDesc ::= singleRangePartition
           | multiRangePartition

    singleRangePartition ::= PARTITION opt_1203 identifier VALUES partitionKeyDesc opt_1204

    multiRangePartition ::= START LEFT_PAREN string_ RIGHT_PAREN END LEFT_PAREN string_ RIGHT_PAREN EVERY LEFT_PAREN interval RIGHT_PAREN
           | START LEFT_PAREN string_ RIGHT_PAREN END LEFT_PAREN string_ RIGHT_PAREN EVERY LEFT_PAREN INTEGER_VALUE RIGHT_PAREN

    partitionRangeDesc ::= START LEFT_PAREN string_ RIGHT_PAREN END LEFT_PAREN string_ RIGHT_PAREN

    partitionKeyDesc ::= LESS THAN grp_1205
           | LEFT_BRACKET partitionValueList COMMA partitionValueList RIGHT_PAREN

    partitionValueList ::= LEFT_PAREN partitionValue list_1207 RIGHT_PAREN

    keyPartition ::= identifier EQ literalExpression

    partitionValue ::= MAXVALUE
           | string_

    distributionClause ::= DISTRIBUTED BY HASH identifierList opt_1209
           | DISTRIBUTED BY HASH identifierList

    distributionDesc ::= DISTRIBUTED BY HASH identifierList opt_1211
           | DISTRIBUTED BY HASH identifierList
           | DISTRIBUTED BY RANDOM opt_1213

    refreshSchemeDesc ::= REFRESH opt_1215 grp_1216

    statusDesc ::= ACTIVE
           | INACTIVE

    properties ::= PROPERTIES LEFT_PAREN property list_1220 RIGHT_PAREN

    extProperties ::= BROKER properties

    propertyList ::= LEFT_PAREN property list_1222 RIGHT_PAREN

    userPropertyList ::= property list_1224

    property ::= string_ EQ string_

    varType ::= GLOBAL
           | LOCAL
           | SESSION
           | VERBOSE

    comment ::= COMMENT string_

    outfile ::= INTO OUTFILE string_ opt_1225 opt_1226

    fileFormat ::= FORMAT AS grp_1227

    string_ ::= SINGLE_QUOTED_TEXT
           | DOUBLE_QUOTED_TEXT

    binary ::= BINARY_SINGLE_QUOTED_TEXT
           | BINARY_DOUBLE_QUOTED_TEXT

    comparisonOperator ::= EQ
           | NEQ
           | LT
           | LTE
           | GT
           | GTE
           | EQ_FOR_NULL

    booleanValue ::= TRUE
           | FALSE

    interval ::= INTERVAL expression unitIdentifier

    taskInterval ::= INTERVAL expression taskUnitIdentifier

    taskUnitIdentifier ::= DAY
           | HOUR
           | MINUTE
           | SECOND

    unitIdentifier ::= YEAR
           | MONTH
           | WEEK
           | DAY
           | HOUR
           | MINUTE
           | SECOND
           | QUARTER
           | MILLISECOND
           | MICROSECOND

    unitBoundary ::= FLOOR
           | CEIL

    type ::= baseType
           | decimalType
           | arrayType
           | structType
           | mapType

    arrayType ::= ARRAY LT type GT

    mapType ::= MAP LT type COMMA type GT

    subfieldDesc ::= grp_1228 type

    subfieldDescs ::= subfieldDesc list_1230

    structType ::= STRUCT LT subfieldDescs GT

    typeParameter ::= LEFT_PAREN INTEGER_VALUE RIGHT_PAREN

    baseType ::= BOOLEAN
           | TINYINT opt_1231
           | SMALLINT opt_1232
           | SIGNED opt_1233
           | SIGNED opt_1234
           | UNSIGNED opt_1235
           | UNSIGNED opt_1236
           | INT opt_1237
           | INTEGER opt_1238
           | BIGINT opt_1239
           | LARGEINT opt_1240
           | FLOAT
           | DOUBLE
           | DATE
           | DATETIME
           | TIME
           | CHAR opt_1241
           | VARCHAR opt_1242
           | STRING
           | TEXT
           | BITMAP
           | HLL
           | PERCENTILE
           | JSON
           | VARBINARY opt_1243
           | BINARY opt_1244

    decimalType ::= grp_1245 opt_1249

    qualifiedName ::= identifier list_1251

    identifier ::= LETTER_IDENTIFIER
           | nonReserved
           | DIGIT_IDENTIFIER
           | BACKQUOTED_IDENTIFIER

    identifierList ::= LEFT_PAREN identifier list_1253 RIGHT_PAREN

    identifierOrString ::= identifier
           | string_

    identifierOrStringList ::= identifierOrString list_1255

    identifierOrStringOrStar ::= ASTERISK_SYMBOL
           | identifier
           | string_

    user ::= identifierOrString
           | identifierOrString AT identifierOrString
           | identifierOrString AT LEFT_BRACKET identifierOrString RIGHT_BRACKET

    assignment ::= identifier EQ expressionOrDefault

    assignmentList ::= assignment list_1257

    number ::= DECIMAL_VALUE
           | DOUBLE_VALUE
           | INTEGER_VALUE

    nonReserved ::= ACCESS
           | ACTIVE
           | AFTER
           | AGGREGATE
           | APPLY
           | ASYNC
           | AUTHORS
           | AVG
           | ADMIN
           | ANTI
           | AUTHENTICATION
           | AUTO_INCREMENT
           | ARRAY_AGG
           | ARRAY_AGG_DISTINCT
           | BACKEND
           | BACKENDS
           | BACKUP
           | BEGIN
           | BITMAP_UNION
           | BLACKLIST
           | BLACKHOLE
           | BINARY
           | BODY
           | BOOLEAN
           | BROKER
           | BUCKETS
           | BUILTIN
           | BASE
           | CACHE
           | CAST
           | CANCEL
           | CATALOG
           | CATALOGS
           | CEIL
           | CHAIN
           | CHARSET
           | CLEAN
           | CLEAR
           | CLUSTER
           | CLUSTERS
           | CURRENT
           | COLLATION
           | COLUMNS
           | CUME_DIST
           | CUMULATIVE
           | COMMENT
           | COMMIT
           | COMMITTED
           | COMPUTE
           | CONNECTION
           | CONSISTENT
           | COSTS
           | COUNT
           | CONFIG
           | COMPACT
           | DATA
           | DATE
           | DATACACHE
           | DATETIME
           | DAY
           | DECOMMISSION
           | DISABLE
           | DISK
           | DISTRIBUTION
           | DUPLICATE
           | DYNAMIC
           | DISTRIBUTED
           | DICTIONARY
           | DICTIONARY_GET
           | DEALLOCATE
           | ENABLE
           | END
           | ENGINE
           | ENGINES
           | ERRORS
           | EVENTS
           | EXECUTE
           | EXTERNAL
           | EXTRACT
           | EVERY
           | ENCLOSE
           | ESCAPE
           | EXPORT
           | FAILPOINT
           | FAILPOINTS
           | FIELDS
           | FILE
           | FILTER
           | FIRST
           | FLOOR
           | FOLLOWING
           | FORMAT
           | FN
           | FRONTEND
           | FRONTENDS
           | FOLLOWER
           | FREE
           | FUNCTIONS
           | GLOBAL
           | GRANTS
           | GROUP_CONCAT
           | HASH
           | HISTOGRAM
           | HELP
           | HLL_UNION
           | HOST
           | HOUR
           | HUB
           | IDENTIFIED
           | IMAGE
           | IMPERSONATE
           | INACTIVE
           | INCREMENTAL
           | INDEXES
           | INSTALL
           | INTEGRATION
           | INTEGRATIONS
           | INTERMEDIATE
           | INTERVAL
           | ISOLATION
           | JOB
           | LABEL
           | LAST
           | LESS
           | LEVEL
           | LIST
           | LOCAL
           | LOCATION
           | LOGS
           | LOGICAL
           | LOW_PRIORITY
           | LOCK
           | LOCATIONS
           | MANUAL
           | MAP
           | MAPPING
           | MAPPINGS
           | MASKING
           | MATCH
           | MATERIALIZED
           | MAX
           | META
           | MIN
           | MINUTE
           | MODE
           | MODIFY
           | MONTH
           | MERGE
           | MINUS
           | NAME
           | NAMES
           | NEGATIVE
           | NO
           | NODE
           | NODES
           | NONE
           | NULLS
           | NUMBER
           | NUMERIC
           | OBSERVER
           | OF
           | OFFSET
           | ONLY
           | OPTIMIZER
           | OPEN
           | OPERATE
           | OPTION
           | OVERWRITE
           | PARTITIONS
           | PASSWORD
           | PATH
           | PAUSE
           | PENDING
           | PERCENTILE_UNION
           | PIVOT
           | PLUGIN
           | PLUGINS
           | POLICY
           | POLICIES
           | PERCENT_RANK
           | PRECEDING
           | PRIORITY
           | PROC
           | PROCESSLIST
           | PROFILE
           | PROFILELIST
           | PRIVILEGES
           | PROBABILITY
           | PROPERTIES
           | PROPERTY
           | PIPE
           | PIPES
           | QUARTER
           | QUERY
           | QUERIES
           | QUEUE
           | QUOTA
           | QUALIFY
           | REASON
           | REMOVE
           | REWRITE
           | RANDOM
           | RANK
           | RECOVER
           | REFRESH
           | REPAIR
           | REPEATABLE
           | REPLACE_IF_NOT_NULL
           | REPLICA
           | REPOSITORY
           | REPOSITORIES
           | RESOURCE
           | RESOURCES
           | RESTORE
           | RESUME
           | RETURNS
           | RETRY
           | REVERT
           | ROLE
           | ROLES
           | ROLLUP
           | ROLLBACK
           | ROUTINE
           | ROW
           | RUNNING
           | RULE
           | RULES
           | SAMPLE
           | SCHEDULE
           | SCHEDULER
           | SECOND
           | SECURITY
           | SEPARATOR
           | SERIALIZABLE
           | SEMI
           | SESSION
           | SETS
           | SIGNED
           | SNAPSHOT
           | SQLBLACKLIST
           | START
           | STREAM
           | SUM
           | STATUS
           | STOP
           | SKIP_HEADER
           | SWAP
           | STORAGE
           | STRING
           | STRUCT
           | STATS
           | SUBMIT
           | SUSPEND
           | SYNC
           | SYSTEM_TIME
           | TABLES
           | TABLET
           | TABLETS
           | TASK
           | TEMPORARY
           | TIMESTAMP
           | TIMESTAMPADD
           | TIMESTAMPDIFF
           | THAN
           | TIME
           | TIMES
           | TRANSACTION
           | TRACE
           | TRIM_SPACE
           | TRIGGERS
           | TRUNCATE
           | TYPE
           | TYPES
           | UNBOUNDED
           | UNCOMMITTED
           | UNSET
           | UNINSTALL
           | USAGE
           | USER
           | USERS
           | UNLOCK
           | VALUE
           | VARBINARY
           | VARIABLES
           | VIEW
           | VIEWS
           | VERBOSE
           | VERSION
           | VOLUME
           | VOLUMES
           | WARNINGS
           | WEEK
           | WHITELIST
           | WORK
           | WRITE
           | WAREHOUSE
           | WAREHOUSES
           | YEAR
           | DOTDOTDOT
           | NGRAMBF
           | FIELD
           | ARRAY_ELEMENT

    list_1 ::= singleStatement | list_1 singleStatement

    grp_3 ::= SEMICOLON

    grp_2 ::= statement grp_3

    grp_5 ::= FROM | IN

    grp_4 ::= grp_5 qualifiedName

    opt_6 ::= grp_4 | $empty

    seq_8 ::= LIKE string_

    seq_9 ::= WHERE expression

    grp_7 ::= seq_8 | seq_9

    opt_10 ::= grp_7 | $empty

    seq_12 ::= LIKE string_

    seq_13 ::= WHERE expression

    grp_11 ::= seq_12 | seq_13

    opt_14 ::= grp_11 | $empty

    grp_15 ::= DATABASE | SCHEMA

    seq_16 ::= IF NOT EXISTS

    opt_17 ::= seq_16 | $empty

    seq_18 ::= identifier DOT

    opt_19 ::= seq_18 | $empty

    opt_20 ::= charsetDesc | $empty

    opt_21 ::= collateDesc | $empty

    opt_22 ::= properties | $empty

    grp_23 ::= DATABASE | SCHEMA

    seq_24 ::= IF EXISTS

    opt_25 ::= seq_24 | $empty

    seq_26 ::= identifier DOT

    opt_27 ::= seq_26 | $empty

    opt_28 ::= FORCE | $empty

    grp_29 ::= DATABASE | SCHEMA

    grp_30 ::= DATABASE | SCHEMA

    grp_31 ::= TEMPORARY | EXTERNAL

    opt_32 ::= grp_31 | $empty

    seq_33 ::= IF NOT EXISTS

    opt_34 ::= seq_33 | $empty

    seq_35 ::= COMMA columnDesc

    list_36 ::= $empty | list_36 seq_35

    seq_37 ::= COMMA indexDesc

    list_38 ::= $empty | list_38 seq_37

    opt_39 ::= engineDesc | $empty

    opt_40 ::= charsetDesc | $empty

    opt_41 ::= keyDesc | $empty

    opt_42 ::= comment | $empty

    opt_43 ::= partitionDesc | $empty

    opt_44 ::= distributionDesc | $empty

    opt_45 ::= orderByDesc | $empty

    opt_46 ::= rollupDesc | $empty

    opt_47 ::= properties | $empty

    opt_48 ::= extProperties | $empty

    opt_49 ::= charsetName | $empty

    opt_50 ::= KEY | $empty

    opt_51 ::= aggDesc | $empty

    grp_52 ::= NULL_ | NOT NULL_

    opt_53 ::= grp_52 | $empty

    grp_54 ::= defaultDesc | AUTO_INCREMENT | generatedColumnDesc

    opt_55 ::= grp_54 | $empty

    opt_56 ::= comment | $empty

    grp_57 ::= string_ | NULL_ | CURRENT_TIMESTAMP | LEFT_PAREN qualifiedName LEFT_PAREN RIGHT_PAREN RIGHT_PAREN

    opt_58 ::= propertyList | $empty

    seq_59 ::= indexType opt_58

    opt_60 ::= seq_59 | $empty

    opt_61 ::= comment | $empty

    opt_62 ::= DEFAULT | $empty

    grp_63 ::= CHAR SET | CHARSET | CHARACTER SET

    opt_64 ::= EQ | $empty

    opt_65 ::= DEFAULT | $empty

    opt_66 ::= EQ | $empty

    grp_67 ::= AGGREGATE | UNIQUE | PRIMARY | DUPLICATE

    seq_68 ::= COMMA rollupItem

    list_69 ::= $empty | list_69 seq_68

    opt_70 ::= dupKeys | $empty

    opt_71 ::= fromRollup | $empty

    opt_72 ::= properties | $empty

    seq_73 ::= OR REPLACE

    opt_74 ::= seq_73 | $empty

    seq_75 ::= IF NOT EXISTS

    opt_76 ::= seq_75 | $empty

    opt_77 ::= TEMPORARY | $empty

    seq_78 ::= IF NOT EXISTS

    opt_79 ::= seq_78 | $empty

    seq_82 ::= COMMA identifier

    list_83 ::= $empty | list_83 seq_82

    seq_84 ::= COMMA indexDesc

    list_85 ::= $empty | list_85 seq_84

    seq_86 ::= COMMA indexDesc

    list_87 ::= $empty | list_87 seq_86

    grp_81 ::= identifier list_83 list_85 | indexDesc list_87

    grp_80 ::= LEFT_PAREN grp_81 RIGHT_PAREN

    opt_88 ::= grp_80 | $empty

    opt_89 ::= keyDesc | $empty

    opt_90 ::= comment | $empty

    opt_91 ::= partitionDesc | $empty

    opt_92 ::= distributionDesc | $empty

    opt_93 ::= orderByDesc | $empty

    opt_94 ::= properties | $empty

    opt_95 ::= TEMPORARY | $empty

    seq_96 ::= IF EXISTS

    opt_97 ::= seq_96 | $empty

    opt_98 ::= FORCE | $empty

    seq_99 ::= COMMA alterClause

    list_100 ::= $empty | list_100 seq_99

    seq_101 ::= COMMA rollupItem

    list_102 ::= $empty | list_102 seq_101

    seq_103 ::= COMMA identifier

    list_104 ::= $empty | list_104 seq_103

    opt_105 ::= propertyList | $empty

    seq_106 ::= indexType opt_105

    opt_107 ::= seq_106 | $empty

    opt_108 ::= comment | $empty

    grp_109 ::= BITMAP | GIN | NGRAMBF

    opt_110 ::= FULL | $empty

    grp_112 ::= FROM | IN

    grp_111 ::= grp_112 qualifiedName

    opt_113 ::= grp_111 | $empty

    seq_115 ::= LIKE string_

    seq_116 ::= WHERE expression

    grp_114 ::= seq_115 | seq_116

    opt_117 ::= grp_114 | $empty

    grp_119 ::= FROM | IN

    grp_118 ::= grp_119 qualifiedName

    opt_120 ::= grp_118 | $empty

    seq_122 ::= LIKE string_

    seq_123 ::= WHERE expression

    grp_121 ::= seq_122 | seq_123

    opt_124 ::= grp_121 | $empty

    grp_125 ::= TABLE | VIEW | MATERIALIZED VIEW

    opt_126 ::= FULL | $empty

    grp_127 ::= COLUMNS | FIELDS

    grp_129 ::= FROM | IN

    grp_128 ::= grp_129 qualifiedName

    grp_131 ::= FROM | IN

    grp_130 ::= grp_131 qualifiedName

    opt_132 ::= grp_130 | $empty

    seq_134 ::= LIKE string_

    seq_135 ::= WHERE expression

    grp_133 ::= seq_134 | seq_135

    opt_136 ::= grp_133 | $empty

    grp_138 ::= FROM | IN

    grp_137 ::= grp_138 qualifiedName

    opt_139 ::= grp_137 | $empty

    seq_141 ::= LIKE string_

    seq_142 ::= WHERE expression

    grp_140 ::= seq_141 | seq_142

    opt_143 ::= grp_140 | $empty

    seq_144 ::= COMMA string_

    list_145 ::= $empty | list_145 seq_144

    seq_146 ::= PARTITION LEFT_PAREN string_ list_145 RIGHT_PAREN

    opt_147 ::= seq_146 | $empty

    grp_148 ::= COLUMN | ROLLUP | OPTIMIZE

    grp_150 ::= FROM | IN

    grp_149 ::= grp_150 qualifiedName

    opt_151 ::= grp_149 | $empty

    seq_152 ::= WHERE expression

    opt_153 ::= seq_152 | $empty

    seq_154 ::= COMMA sortItem

    list_155 ::= $empty | list_155 seq_154

    seq_156 ::= ORDER BY sortItem list_155

    opt_157 ::= seq_156 | $empty

    opt_158 ::= limitElement | $empty

    grp_160 ::= FROM | IN

    grp_159 ::= grp_160 qualifiedName

    opt_161 ::= grp_159 | $empty

    seq_162 ::= WHERE expression

    opt_163 ::= seq_162 | $empty

    seq_164 ::= COMMA sortItem

    list_165 ::= $empty | list_165 seq_164

    seq_166 ::= ORDER BY sortItem list_165

    opt_167 ::= seq_166 | $empty

    opt_168 ::= limitElement | $empty

    grp_169 ::= DESC | DESCRIBE

    opt_170 ::= ALL | $empty

    grp_171 ::= TEMPORARY | EXTERNAL

    opt_172 ::= grp_171 | $empty

    seq_173 ::= IF NOT EXISTS

    opt_174 ::= seq_173 | $empty

    opt_175 ::= partitionDesc | $empty

    opt_176 ::= distributionDesc | $empty

    opt_177 ::= properties | $empty

    grp_178 ::= INDEX | INDEXES | KEY | KEYS

    grp_180 ::= FROM | IN

    grp_179 ::= grp_180 qualifiedName

    grp_182 ::= FROM | IN

    grp_181 ::= grp_182 qualifiedName

    opt_183 ::= grp_181 | $empty

    opt_184 ::= partitionNames | $empty

    grp_185 ::= COLUMN | ROLLUP | OPTIMIZE

    opt_186 ::= grp_185 | $empty

    seq_187 ::= COMMA INTEGER_VALUE

    list_188 ::= $empty | list_188 seq_187

    seq_189 ::= LEFT_PAREN INTEGER_VALUE list_188 RIGHT_PAREN

    opt_190 ::= seq_189 | $empty

    opt_191 ::= TEMPORARY | $empty

    seq_192 ::= WHERE expression

    opt_193 ::= seq_192 | $empty

    seq_194 ::= COMMA sortItem

    list_195 ::= $empty | list_195 seq_194

    seq_196 ::= ORDER BY sortItem list_195

    opt_197 ::= seq_196 | $empty

    opt_198 ::= limitElement | $empty

    seq_199 ::= OR REPLACE

    opt_200 ::= seq_199 | $empty

    seq_201 ::= IF NOT EXISTS

    opt_202 ::= seq_201 | $empty

    seq_203 ::= COMMA columnNameWithComment

    list_204 ::= $empty | list_204 seq_203

    seq_205 ::= LEFT_PAREN columnNameWithComment list_204 RIGHT_PAREN

    opt_206 ::= seq_205 | $empty

    opt_207 ::= comment | $empty

    seq_208 ::= COMMA columnNameWithComment

    list_209 ::= $empty | list_209 seq_208

    seq_210 ::= LEFT_PAREN columnNameWithComment list_209 RIGHT_PAREN

    opt_211 ::= seq_210 | $empty

    seq_212 ::= IF EXISTS

    opt_213 ::= seq_212 | $empty

    opt_214 ::= comment | $empty

    opt_215 ::= qualifiedName | $empty

    list_216 ::= $empty | list_216 taskClause

    grp_217 ::= createTableAsSelectStatement | insertStatement | dataCacheSelectStatement

    opt_218 ::= FORCE | $empty

    seq_219 ::= START LEFT_PAREN string_ RIGHT_PAREN

    opt_220 ::= seq_219 | $empty

    seq_221 ::= IF NOT EXISTS

    opt_222 ::= seq_221 | $empty

    seq_223 ::= COMMA columnNameWithComment

    list_224 ::= $empty | list_224 seq_223

    seq_225 ::= COMMA indexDesc

    list_226 ::= $empty | list_226 seq_225

    seq_227 ::= LEFT_PAREN columnNameWithComment list_224 list_226 RIGHT_PAREN

    opt_228 ::= seq_227 | $empty

    opt_229 ::= comment | $empty

    list_230 ::= $empty | list_230 materializedViewDesc

    seq_231 ::= PARTITION BY primaryExpression

    grp_233 ::= FROM | IN

    grp_232 ::= grp_233 qualifiedName

    opt_234 ::= grp_232 | $empty

    seq_236 ::= LIKE string_

    seq_237 ::= WHERE expression

    grp_235 ::= seq_236 | seq_237

    opt_238 ::= grp_235 | $empty

    seq_239 ::= IF EXISTS

    opt_240 ::= seq_239 | $empty

    grp_241 ::= refreshSchemeDesc | tableRenameClause | modifyPropertiesClause | swapTableClause

    seq_242 ::= PARTITION partitionRangeDesc

    opt_243 ::= seq_242 | $empty

    opt_244 ::= FORCE | $empty

    grp_246 ::= SYNC | ASYNC

    grp_245 ::= WITH grp_246 MODE

    opt_247 ::= grp_245 | $empty

    opt_248 ::= FORCE | $empty

    seq_249 ::= LIKE string_

    opt_250 ::= seq_249 | $empty

    opt_251 ::= partitionNames | $empty

    opt_252 ::= partitionNames | $empty

    seq_253 ::= WHERE expression

    opt_254 ::= seq_253 | $empty

    opt_255 ::= partitionNames | $empty

    opt_256 ::= partitionNames | $empty

    grp_257 ::= identifierOrString | INTEGER_VALUE

    opt_259 ::= CONNECTION | $empty

    grp_258 ::= opt_259 | QUERY

    seq_260 ::= COMMA string_

    list_261 ::= $empty | list_261 seq_260

    seq_262 ::= IF NOT EXISTS

    opt_263 ::= seq_262 | $empty

    opt_264 ::= comment | $empty

    seq_265 ::= IF EXISTS

    opt_266 ::= seq_265 | $empty

    seq_267 ::= IF NOT EXISTS

    opt_268 ::= seq_267 | $empty

    opt_269 ::= comment | $empty

    opt_270 ::= properties | $empty

    seq_271 ::= LIKE string_

    opt_272 ::= seq_271 | $empty

    seq_273 ::= IF EXISTS

    opt_274 ::= seq_273 | $empty

    seq_275 ::= COMMA alterStorageVolumeClause

    list_276 ::= $empty | list_276 seq_275

    grp_277 ::= DESC | DESCRIBE

    seq_278 ::= ON BACKEND string_

    opt_279 ::= seq_278 | $empty

    seq_280 ::= WITH INTEGER_VALUE TIMES

    opt_281 ::= seq_280 | $empty

    seq_282 ::= ON BACKEND string_

    opt_283 ::= seq_282 | $empty

    seq_284 ::= WITH DECIMAL_VALUE PROBABILITY

    opt_285 ::= seq_284 | $empty

    seq_286 ::= ON BACKEND string_

    opt_287 ::= seq_286 | $empty

    seq_288 ::= LIKE string_

    opt_289 ::= seq_288 | $empty

    seq_290 ::= ON BACKEND string_

    opt_291 ::= seq_290 | $empty

    seq_292 ::= COMMA dictionaryColumnDesc

    list_293 ::= $empty | list_293 seq_292

    opt_294 ::= properties | $empty

    opt_295 ::= CACHE | $empty

    opt_296 ::= qualifiedName | $empty

    grp_297 ::= FOLLOWER | OBSERVER

    grp_298 ::= FOLLOWER | OBSERVER

    seq_299 ::= COMMA string_

    list_300 ::= $empty | list_300 seq_299

    seq_301 ::= COMMA string_

    list_302 ::= $empty | list_302 seq_301

    opt_303 ::= FORCE | $empty

    seq_304 ::= COMMA string_

    list_305 ::= $empty | list_305 seq_304

    seq_306 ::= COMMA string_

    list_307 ::= $empty | list_307 seq_306

    seq_308 ::= COMMA string_

    list_309 ::= $empty | list_309 seq_308

    seq_310 ::= COMMA string_

    list_311 ::= $empty | list_311 seq_310

    seq_312 ::= COMMA string_

    list_313 ::= $empty | list_313 seq_312

    opt_314 ::= properties | $empty

    seq_315 ::= COMMA string_

    list_316 ::= $empty | list_316 seq_315

    seq_317 ::= COMMA string_

    list_318 ::= $empty | list_318 seq_317

    seq_319 ::= COMMA string_

    list_320 ::= $empty | list_320 seq_319

    seq_321 ::= COMMA string_

    list_322 ::= $empty | list_322 seq_321

    opt_323 ::= propertyList | $empty

    seq_324 ::= indexType opt_323

    opt_325 ::= seq_324 | $empty

    opt_326 ::= comment | $empty

    opt_327 ::= partitionNames | $empty

    opt_328 ::= keyDesc | $empty

    opt_329 ::= partitionDesc | $empty

    opt_330 ::= orderByDesc | $empty

    opt_331 ::= distributionDesc | $empty

    grp_332 ::= FIRST | AFTER identifier

    opt_333 ::= grp_332 | $empty

    grp_335 ::= TO | IN

    grp_334 ::= grp_335 identifier

    opt_336 ::= grp_334 | $empty

    opt_337 ::= properties | $empty

    seq_338 ::= COMMA columnDesc

    list_339 ::= $empty | list_339 seq_338

    grp_341 ::= TO | IN

    grp_340 ::= grp_341 identifier

    opt_342 ::= grp_340 | $empty

    opt_343 ::= properties | $empty

    seq_344 ::= FROM identifier

    opt_345 ::= seq_344 | $empty

    opt_346 ::= properties | $empty

    grp_347 ::= FIRST | AFTER identifier

    opt_348 ::= grp_347 | $empty

    seq_349 ::= FROM identifier

    opt_350 ::= seq_349 | $empty

    opt_351 ::= properties | $empty

    seq_352 ::= FROM identifier

    opt_353 ::= seq_352 | $empty

    opt_354 ::= properties | $empty

    grp_355 ::= BASE | CUMULATIVE

    opt_356 ::= grp_355 | $empty

    grp_357 ::= identifier | identifierList

    opt_358 ::= grp_357 | $empty

    grp_359 ::= DOT_IDENTIFIER | DOT subfieldName

    list_360 ::= $empty | list_360 grp_359

    grp_361 ::= FIRST | AFTER identifier

    opt_362 ::= grp_361 | $empty

    opt_363 ::= properties | $empty

    opt_364 ::= properties | $empty

    opt_365 ::= TEMPORARY | $empty

    grp_366 ::= singleRangePartition | PARTITIONS multiRangePartition

    opt_367 ::= distributionDesc | $empty

    opt_368 ::= properties | $empty

    opt_369 ::= TEMPORARY | $empty

    grp_370 ::= singleItemListPartitionDesc | multiItemListPartitionDesc

    opt_371 ::= distributionDesc | $empty

    opt_372 ::= properties | $empty

    opt_373 ::= TEMPORARY | $empty

    seq_374 ::= IF EXISTS

    opt_375 ::= seq_374 | $empty

    opt_376 ::= FORCE | $empty

    grp_377 ::= identifier | identifierList | LEFT_PAREN ASTERISK_SYMBOL RIGHT_PAREN

    opt_378 ::= properties | $empty

    opt_379 ::= explainDesc | $empty

    grp_380 ::= INTO | OVERWRITE

    seq_382 ::= FILES propertyList

    seq_383 ::= BLACKHOLE LEFT_PAREN RIGHT_PAREN

    grp_381 ::= qualifiedName | seq_382 | seq_383

    opt_384 ::= partitionNames | $empty

    seq_385 ::= WITH LABEL identifier

    opt_386 ::= seq_385 | $empty

    opt_387 ::= columnAliases | $empty

    seq_389 ::= COMMA expressionsWithDefault

    list_390 ::= $empty | list_390 seq_389

    seq_391 ::= VALUES expressionsWithDefault list_390

    grp_388 ::= queryStatement | seq_391

    opt_392 ::= explainDesc | $empty

    opt_393 ::= withClause | $empty

    seq_394 ::= WHERE expression

    opt_395 ::= seq_394 | $empty

    opt_396 ::= explainDesc | $empty

    opt_397 ::= withClause | $empty

    opt_398 ::= partitionNames | $empty

    seq_399 ::= USING relations

    opt_400 ::= seq_399 | $empty

    seq_401 ::= WHERE expression

    opt_402 ::= seq_401 | $empty

    seq_403 ::= qualifiedName DOT

    opt_404 ::= seq_403 | $empty

    seq_405 ::= COMMA loadProperties

    list_406 ::= $empty | list_406 seq_405

    seq_407 ::= loadProperties list_406

    opt_408 ::= seq_407 | $empty

    opt_409 ::= jobProperties | $empty

    opt_410 ::= dataSourceProperties | $empty

    seq_411 ::= qualifiedName DOT

    opt_412 ::= seq_411 | $empty

    seq_413 ::= COMMA loadProperties

    list_414 ::= $empty | list_414 seq_413

    seq_415 ::= loadProperties list_414

    opt_416 ::= seq_415 | $empty

    opt_417 ::= jobProperties | $empty

    opt_418 ::= dataSource | $empty

    grp_419 ::= qualifiedName | assignment

    grp_421 ::= qualifiedName | assignment

    grp_420 ::= COMMA grp_421

    list_422 ::= $empty | list_422 grp_420

    seq_423 ::= qualifiedName DOT

    opt_424 ::= seq_423 | $empty

    seq_425 ::= qualifiedName DOT

    opt_426 ::= seq_425 | $empty

    seq_427 ::= qualifiedName DOT

    opt_428 ::= seq_427 | $empty

    opt_429 ::= ALL | $empty

    seq_430 ::= qualifiedName DOT

    opt_431 ::= seq_430 | $empty

    seq_432 ::= FOR opt_431 identifier

    opt_433 ::= seq_432 | $empty

    seq_434 ::= FROM qualifiedName

    opt_435 ::= seq_434 | $empty

    seq_436 ::= WHERE expression

    opt_437 ::= seq_436 | $empty

    seq_438 ::= COMMA sortItem

    list_439 ::= $empty | list_439 seq_438

    seq_440 ::= ORDER BY sortItem list_439

    opt_441 ::= seq_440 | $empty

    opt_442 ::= limitElement | $empty

    seq_443 ::= FROM qualifiedName

    opt_444 ::= seq_443 | $empty

    seq_445 ::= qualifiedName DOT

    opt_446 ::= seq_445 | $empty

    opt_447 ::= ALL | $empty

    seq_448 ::= qualifiedName DOT

    opt_449 ::= seq_448 | $empty

    seq_450 ::= FOR opt_449 identifier

    opt_451 ::= seq_450 | $empty

    seq_452 ::= FROM qualifiedName

    opt_453 ::= seq_452 | $empty

    seq_454 ::= WHERE expression

    opt_455 ::= seq_454 | $empty

    seq_456 ::= COMMA sortItem

    list_457 ::= $empty | list_457 seq_456

    seq_458 ::= ORDER BY sortItem list_457

    opt_459 ::= seq_458 | $empty

    opt_460 ::= limitElement | $empty

    grp_461 ::= FULL | SAMPLE

    opt_462 ::= grp_461 | $empty

    seq_463 ::= COMMA qualifiedName

    list_464 ::= $empty | list_464 seq_463

    seq_465 ::= LEFT_PAREN qualifiedName list_464 RIGHT_PAREN

    opt_466 ::= seq_465 | $empty

    grp_468 ::= SYNC | ASYNC

    grp_467 ::= WITH grp_468 MODE

    opt_469 ::= grp_467 | $empty

    opt_470 ::= properties | $empty

    seq_471 ::= COMMA qualifiedName

    list_472 ::= $empty | list_472 seq_471

    grp_474 ::= SYNC | ASYNC

    grp_473 ::= WITH grp_474 MODE

    opt_475 ::= grp_473 | $empty

    seq_476 ::= WITH INTEGER_VALUE BUCKETS

    opt_477 ::= seq_476 | $empty

    opt_478 ::= properties | $empty

    seq_479 ::= COMMA qualifiedName

    list_480 ::= $empty | list_480 seq_479

    grp_481 ::= FULL | SAMPLE

    opt_482 ::= grp_481 | $empty

    opt_483 ::= properties | $empty

    grp_484 ::= FULL | SAMPLE

    opt_485 ::= grp_484 | $empty

    opt_486 ::= properties | $empty

    grp_487 ::= FULL | SAMPLE

    opt_488 ::= grp_487 | $empty

    seq_489 ::= COMMA qualifiedName

    list_490 ::= $empty | list_490 seq_489

    seq_491 ::= LEFT_PAREN qualifiedName list_490 RIGHT_PAREN

    opt_492 ::= seq_491 | $empty

    opt_493 ::= properties | $empty

    grp_494 ::= JOB | STATUS

    opt_495 ::= grp_494 | $empty

    seq_496 ::= WHERE expression

    opt_497 ::= seq_496 | $empty

    seq_498 ::= WHERE expression

    opt_499 ::= seq_498 | $empty

    seq_500 ::= WHERE expression

    opt_501 ::= seq_500 | $empty

    seq_502 ::= COMMA INTEGER_VALUE

    list_503 ::= $empty | list_503 seq_502

    seq_504 ::= IF NOT EXISTS

    opt_505 ::= seq_504 | $empty

    seq_506 ::= OR REPLACE

    opt_507 ::= seq_506 | $empty

    seq_508 ::= COMMA classifier

    list_509 ::= $empty | list_509 seq_508

    seq_510 ::= TO classifier list_509

    opt_511 ::= seq_510 | $empty

    seq_512 ::= COMMA property

    list_513 ::= $empty | list_513 seq_512

    seq_514 ::= COMMA classifier

    list_515 ::= $empty | list_515 seq_514

    seq_516 ::= COMMA INTEGER_VALUE

    list_517 ::= $empty | list_517 seq_516

    seq_518 ::= COMMA property

    list_519 ::= $empty | list_519 seq_518

    opt_520 ::= ALL | $empty

    opt_521 ::= EXTERNAL | $empty

    opt_522 ::= properties | $empty

    opt_523 ::= FULL | $empty

    grp_524 ::= BUILTIN | GLOBAL

    opt_525 ::= grp_524 | $empty

    grp_527 ::= FROM | IN

    grp_526 ::= grp_527 qualifiedName

    opt_528 ::= grp_526 | $empty

    seq_530 ::= LIKE string_

    seq_531 ::= WHERE expression

    grp_529 ::= seq_530 | seq_531

    opt_532 ::= grp_529 | $empty

    opt_533 ::= GLOBAL | $empty

    opt_534 ::= GLOBAL | $empty

    grp_535 ::= TABLE | AGGREGATE

    opt_536 ::= grp_535 | $empty

    seq_537 ::= INTERMEDIATE type

    opt_538 ::= seq_537 | $empty

    opt_539 ::= properties | $empty

    opt_540 ::= type | $empty

    seq_541 ::= COMMA type

    list_542 ::= $empty | list_542 seq_541

    seq_543 ::= COMMA DOTDOTDOT

    opt_544 ::= seq_543 | $empty

    opt_545 ::= dataDescList | $empty

    opt_546 ::= brokerDesc | $empty

    seq_547 ::= BY identifierOrString

    opt_548 ::= seq_547 | $empty

    seq_549 ::= PROPERTIES propertyList

    opt_550 ::= seq_549 | $empty

    opt_551 ::= dataDescList | $empty

    seq_552 ::= PROPERTIES propertyList

    opt_553 ::= seq_552 | $empty

    seq_554 ::= identifier DOT

    opt_555 ::= seq_554 | $empty

    seq_556 ::= COMMA dataDesc

    list_557 ::= $empty | list_557 seq_556

    opt_558 ::= NEGATIVE | $empty

    opt_559 ::= partitionNames | $empty

    seq_560 ::= COLUMNS TERMINATED BY string_

    opt_561 ::= seq_560 | $empty

    seq_562 ::= ROWS TERMINATED BY string_

    opt_563 ::= seq_562 | $empty

    opt_564 ::= fileFormat | $empty

    opt_565 ::= formatProps | $empty

    opt_566 ::= columnAliases | $empty

    seq_567 ::= COLUMNS FROM PATH AS identifierList

    opt_568 ::= seq_567 | $empty

    seq_569 ::= SET classifier

    opt_570 ::= seq_569 | $empty

    seq_571 ::= WHERE expression

    opt_572 ::= seq_571 | $empty

    opt_573 ::= NEGATIVE | $empty

    opt_574 ::= partitionNames | $empty

    seq_575 ::= SET classifier

    opt_576 ::= seq_575 | $empty

    seq_577 ::= WHERE expression

    opt_578 ::= seq_577 | $empty

    seq_579 ::= SKIP_HEADER EQ INTEGER_VALUE

    opt_580 ::= seq_579 | $empty

    seq_581 ::= TRIM_SPACE EQ booleanValue

    opt_582 ::= seq_581 | $empty

    seq_583 ::= ENCLOSE EQ string_

    opt_584 ::= seq_583 | $empty

    seq_585 ::= ESCAPE EQ string_

    opt_586 ::= seq_585 | $empty

    opt_587 ::= propertyList | $empty

    opt_588 ::= propertyList | $empty

    opt_589 ::= propertyList | $empty

    opt_590 ::= ALL | $empty

    seq_591 ::= FROM identifier

    opt_592 ::= seq_591 | $empty

    seq_593 ::= WHERE expression

    opt_594 ::= seq_593 | $empty

    seq_595 ::= COMMA sortItem

    list_596 ::= $empty | list_596 seq_595

    seq_597 ::= ORDER BY sortItem list_596

    opt_598 ::= seq_597 | $empty

    opt_599 ::= limitElement | $empty

    seq_600 ::= FROM identifier

    opt_601 ::= seq_600 | $empty

    seq_602 ::= WHERE expression

    opt_603 ::= seq_602 | $empty

    opt_604 ::= limitElement | $empty

    seq_605 ::= FROM identifier

    opt_606 ::= seq_605 | $empty

    seq_607 ::= WHERE expression

    opt_608 ::= seq_607 | $empty

    seq_609 ::= qualifiedName DOT

    opt_610 ::= seq_609 | $empty

    opt_611 ::= jobProperties | $empty

    grp_612 ::= CHAR SET | CHARSET | CHARACTER SET

    seq_614 ::= LIKE string_

    seq_615 ::= WHERE expression

    grp_613 ::= seq_614 | seq_615

    opt_616 ::= grp_613 | $empty

    seq_618 ::= LIKE string_

    seq_619 ::= WHERE expression

    grp_617 ::= seq_618 | seq_619

    opt_620 ::= grp_617 | $empty

    grp_622 ::= FROM | IN

    grp_621 ::= grp_622 qualifiedName

    opt_623 ::= grp_621 | $empty

    grp_625 ::= FROM | IN

    grp_624 ::= grp_625 qualifiedName

    opt_626 ::= grp_624 | $empty

    grp_628 ::= FROM | IN

    grp_627 ::= grp_628 qualifiedName

    opt_629 ::= grp_627 | $empty

    seq_631 ::= LIKE string_

    seq_632 ::= WHERE expression

    grp_630 ::= seq_631 | seq_632

    opt_633 ::= grp_630 | $empty

    grp_634 ::= PROCEDURE | FUNCTION

    seq_636 ::= LIKE string_

    seq_637 ::= WHERE expression

    grp_635 ::= seq_636 | seq_637

    opt_638 ::= grp_635 | $empty

    opt_639 ::= FULL | $empty

    seq_640 ::= FOR string_

    opt_641 ::= seq_640 | $empty

    seq_642 ::= LIMIT INTEGER_VALUE

    opt_643 ::= seq_642 | $empty

    seq_644 ::= LIMIT INTEGER_VALUE

    opt_645 ::= seq_644 | $empty

    opt_646 ::= varType | $empty

    seq_648 ::= LIKE string_

    seq_649 ::= WHERE expression

    grp_647 ::= seq_648 | seq_649

    opt_650 ::= grp_647 | $empty

    grp_651 ::= TABLET | TABLETS

    opt_652 ::= partitionNames | $empty

    seq_653 ::= WHERE expression

    opt_654 ::= seq_653 | $empty

    seq_655 ::= COMMA sortItem

    list_656 ::= $empty | list_656 seq_655

    seq_657 ::= ORDER BY sortItem list_656

    opt_658 ::= seq_657 | $empty

    opt_659 ::= limitElement | $empty

    grp_661 ::= FROM | IN

    grp_660 ::= grp_661 qualifiedName

    opt_662 ::= grp_660 | $empty

    seq_663 ::= WHERE expression

    opt_664 ::= seq_663 | $empty

    opt_665 ::= FULL | $empty

    grp_667 ::= FROM | IN

    grp_666 ::= grp_667 qualifiedName

    opt_668 ::= grp_666 | $empty

    seq_670 ::= LIKE string_

    seq_671 ::= WHERE expression

    grp_669 ::= seq_670 | seq_671

    opt_672 ::= grp_669 | $empty

    seq_673 ::= FOR string_

    opt_674 ::= seq_673 | $empty

    seq_675 ::= LIKE string_

    opt_676 ::= seq_675 | $empty

    opt_677 ::= varType | $empty

    seq_679 ::= LIKE string_

    seq_680 ::= WHERE expression

    grp_678 ::= seq_679 | seq_680

    opt_681 ::= grp_678 | $empty

    grp_682 ::= WARNINGS | ERRORS

    opt_683 ::= limitElement | $empty

    seq_684 ::= IF NOT EXISTS

    opt_685 ::= seq_684 | $empty

    opt_686 ::= authOption | $empty

    seq_687 ::= DEFAULT ROLE roleList

    opt_688 ::= seq_687 | $empty

    seq_689 ::= IF EXISTS

    opt_690 ::= seq_689 | $empty

    seq_691 ::= IF EXISTS

    opt_692 ::= seq_691 | $empty

    seq_693 ::= IF EXISTS

    opt_694 ::= seq_693 | $empty

    grp_695 ::= NONE | ALL | roleList

    grp_696 ::= USER | USERS

    seq_697 ::= FOR user

    opt_698 ::= seq_697 | $empty

    seq_699 ::= WITH NO REVERT

    opt_700 ::= seq_699 | $empty

    seq_701 ::= IF NOT EXISTS

    opt_702 ::= seq_701 | $empty

    opt_703 ::= comment | $empty

    seq_704 ::= IF EXISTS

    opt_705 ::= seq_704 | $empty

    seq_706 ::= IF EXISTS

    opt_707 ::= seq_706 | $empty

    opt_708 ::= USER | $empty

    opt_709 ::= USER | $empty

    seq_710 ::= EXCEPT roleList

    opt_711 ::= seq_710 | $empty

    grp_712 ::= NONE | ALL | roleList

    opt_714 ::= USER | $empty

    grp_713 ::= opt_714 user | ROLE identifierOrString

    seq_715 ::= COMMA user

    list_716 ::= $empty | list_716 seq_715

    seq_717 ::= WITH GRANT OPTION

    opt_718 ::= seq_717 | $empty

    seq_719 ::= WITH GRANT OPTION

    opt_720 ::= seq_719 | $empty

    opt_721 ::= GLOBAL | $empty

    seq_722 ::= WITH GRANT OPTION

    opt_723 ::= seq_722 | $empty

    seq_724 ::= WITH GRANT OPTION

    opt_725 ::= seq_724 | $empty

    seq_726 ::= WITH GRANT OPTION

    opt_727 ::= seq_726 | $empty

    grp_728 ::= IN ALL DATABASES | IN DATABASE identifierOrString

    opt_729 ::= grp_728 | $empty

    seq_730 ::= WITH GRANT OPTION

    opt_731 ::= seq_730 | $empty

    seq_732 ::= COMMA user

    list_733 ::= $empty | list_733 seq_732

    opt_734 ::= GLOBAL | $empty

    grp_735 ::= IN ALL DATABASES | IN DATABASE identifierOrString

    opt_736 ::= grp_735 | $empty

    opt_737 ::= USER | $empty

    opt_738 ::= PASSWORD | $empty

    grp_740 ::= BY | AS

    grp_739 ::= grp_740 string_

    opt_741 ::= grp_739 | $empty

    seq_742 ::= DOT identifierOrStringOrStar

    opt_743 ::= seq_742 | $empty

    seq_744 ::= COMMA privObjectName

    list_745 ::= $empty | list_745 seq_744

    seq_746 ::= COMMA qualifiedName LEFT_PAREN typeList RIGHT_PAREN

    list_747 ::= $empty | list_747 seq_746

    seq_748 ::= COMMA privilegeType

    list_749 ::= $empty | list_749 seq_748

    opt_750 ::= PRIVILEGES | $empty

    grp_751 ::= DATABASE | TABLE | VIEW | FUNCTION | GLOBAL FUNCTION | MATERIALIZED VIEW | RESOURCE | RESOURCE GROUP | EXTERNAL CATALOG | STORAGE VOLUME | PIPE

    seq_752 ::= COMMA tableDesc

    list_753 ::= $empty | list_753 seq_752

    seq_754 ::= ON LEFT_PAREN tableDesc list_753 RIGHT_PAREN

    opt_755 ::= seq_754 | $empty

    seq_756 ::= PROPERTIES propertyList

    opt_757 ::= seq_756 | $empty

    grp_759 ::= FROM | IN

    grp_758 ::= grp_759 identifier

    opt_760 ::= grp_758 | $empty

    grp_762 ::= FROM | IN

    grp_761 ::= grp_762 identifier

    opt_763 ::= grp_761 | $empty

    seq_764 ::= COMMA restoreTableDesc

    list_765 ::= $empty | list_765 seq_764

    seq_766 ::= ON LEFT_PAREN restoreTableDesc list_765 RIGHT_PAREN

    opt_767 ::= seq_766 | $empty

    seq_768 ::= PROPERTIES propertyList

    opt_769 ::= seq_768 | $empty

    grp_771 ::= FROM | IN

    grp_770 ::= grp_771 identifier

    opt_772 ::= grp_770 | $empty

    grp_774 ::= FROM | IN

    grp_773 ::= grp_774 identifier

    opt_775 ::= grp_773 | $empty

    seq_776 ::= WHERE expression

    opt_777 ::= seq_776 | $empty

    seq_778 ::= WHERE expression

    opt_779 ::= seq_778 | $empty

    seq_780 ::= READ ONLY

    opt_781 ::= seq_780 | $empty

    opt_782 ::= identifierOrString | $empty

    seq_783 ::= PROPERTIES propertyList

    opt_784 ::= seq_783 | $empty

    seq_785 ::= COMMA INTEGER_VALUE

    list_786 ::= $empty | list_786 seq_785

    seq_787 ::= COMMA INTEGER_VALUE

    list_788 ::= $empty | list_788 seq_787

    seq_789 ::= COMMA INTEGER_VALUE

    list_790 ::= $empty | list_790 seq_789

    seq_791 ::= WHERE expression

    opt_792 ::= seq_791 | $empty

    opt_793 ::= MINUS_SYMBOL | $empty

    opt_794 ::= properties | $empty

    seq_795 ::= COMMA selectItem

    list_796 ::= $empty | list_796 seq_795

    seq_797 ::= WHERE expression

    opt_798 ::= seq_797 | $empty

    opt_799 ::= properties | $empty

    opt_800 ::= columnAliases | $empty

    grp_802 ::= SYNC | ASYNC

    grp_801 ::= WITH grp_802 MODE

    opt_803 ::= grp_801 | $empty

    opt_804 ::= properties | $empty

    opt_805 ::= brokerDesc | $empty

    grp_807 ::= FROM | IN

    grp_806 ::= grp_807 qualifiedName

    opt_808 ::= grp_806 | $empty

    seq_810 ::= LIKE string_

    seq_811 ::= WHERE expression

    grp_809 ::= seq_810 | seq_811

    opt_812 ::= grp_809 | $empty

    grp_814 ::= FROM | IN

    grp_813 ::= grp_814 qualifiedName

    opt_815 ::= grp_813 | $empty

    seq_817 ::= LIKE string_

    seq_818 ::= WHERE expression

    grp_816 ::= seq_817 | seq_818

    opt_819 ::= grp_816 | $empty

    seq_820 ::= COMMA sortItem

    list_821 ::= $empty | list_821 seq_820

    seq_822 ::= ORDER BY sortItem list_821

    opt_823 ::= seq_822 | $empty

    opt_824 ::= limitElement | $empty

    opt_825 ::= properties | $empty

    grp_827 ::= FROM | IN

    grp_826 ::= grp_827 qualifiedName

    opt_828 ::= grp_826 | $empty

    grp_830 ::= FROM | IN

    grp_829 ::= grp_830 qualifiedName

    opt_831 ::= grp_829 | $empty

    grp_833 ::= FROM | IN

    grp_832 ::= grp_833 qualifiedName

    opt_834 ::= grp_832 | $empty

    opt_835 ::= properties | $empty

    seq_836 ::= IF EXISTS

    opt_837 ::= seq_836 | $empty

    grp_838 ::= DESC | DESCRIBE

    seq_840 ::= LIKE string_

    seq_841 ::= WHERE expression

    seq_842 ::= FROM qualifiedName

    grp_839 ::= seq_840 | seq_841 | seq_842

    opt_843 ::= grp_839 | $empty

    seq_844 ::= COMMA sortItem

    list_845 ::= $empty | list_845 seq_844

    seq_846 ::= ORDER BY sortItem list_845

    opt_847 ::= seq_846 | $empty

    opt_848 ::= limitElement | $empty

    seq_849 ::= COMMA setVar

    list_850 ::= $empty | list_850 seq_849

    grp_851 ::= CHAR SET | CHARSET | CHARACTER SET

    grp_852 ::= identifierOrString | DEFAULT

    grp_853 ::= identifierOrString | DEFAULT

    grp_855 ::= identifierOrString | DEFAULT

    grp_854 ::= COLLATE grp_855

    opt_856 ::= grp_854 | $empty

    grp_857 ::= string_ | PASSWORD LEFT_PAREN string_ RIGHT_PAREN

    grp_858 ::= string_ | PASSWORD LEFT_PAREN string_ RIGHT_PAREN

    opt_859 ::= varType | $empty

    opt_860 ::= varType | $empty

    seq_861 ::= FOR string_

    opt_862 ::= seq_861 | $empty

    seq_863 ::= COMMA identifierOrString

    list_864 ::= $empty | list_864 seq_863

    grp_865 ::= FRONTEND | INTEGER_VALUE

    seq_866 ::= WITH CONSISTENT SNAPSHOT

    opt_867 ::= seq_866 | $empty

    opt_868 ::= WORK | $empty

    opt_869 ::= WORK | $empty

    opt_870 ::= NO | $empty

    seq_871 ::= AND opt_870 CHAIN

    opt_872 ::= seq_871 | $empty

    opt_873 ::= NO | $empty

    seq_874 ::= opt_873 RELEASE

    opt_875 ::= seq_874 | $empty

    opt_876 ::= WORK | $empty

    opt_877 ::= NO | $empty

    seq_878 ::= AND opt_877 CHAIN

    opt_879 ::= seq_878 | $empty

    opt_880 ::= NO | $empty

    seq_881 ::= opt_880 RELEASE

    opt_882 ::= seq_881 | $empty

    seq_883 ::= COMMA lock_item

    list_884 ::= $empty | list_884 seq_883

    opt_885 ::= AS | $empty

    seq_886 ::= opt_885 identifier

    opt_887 ::= seq_886 | $empty

    opt_888 ::= LOCAL | $empty

    opt_889 ::= LOW_PRIORITY | $empty

    grp_890 ::= explainDesc | optimizerTrace

    opt_891 ::= grp_890 | $empty

    opt_892 ::= outfile | $empty

    opt_893 ::= withClause | $empty

    seq_894 ::= COMMA commonTableExpression

    list_895 ::= $empty | list_895 seq_894

    seq_896 ::= COMMA sortItem

    list_897 ::= $empty | list_897 seq_896

    seq_898 ::= ORDER BY sortItem list_897

    opt_899 ::= seq_898 | $empty

    opt_900 ::= limitElement | $empty

    opt_901 ::= setQuantifier | $empty

    grp_902 ::= UNION | EXCEPT | MINUS

    opt_903 ::= setQuantifier | $empty

    grp_904 ::= ASC | DESC

    opt_905 ::= grp_904 | $empty

    grp_907 ::= FIRST | LAST

    grp_906 ::= NULLS grp_907

    opt_908 ::= grp_906 | $empty

    grp_909 ::= INTEGER_VALUE | PARAMETER

    grp_911 ::= INTEGER_VALUE | PARAMETER

    grp_910 ::= OFFSET grp_911

    opt_912 ::= grp_910 | $empty

    grp_913 ::= INTEGER_VALUE | PARAMETER

    grp_914 ::= INTEGER_VALUE | PARAMETER

    opt_915 ::= setQuantifier | $empty

    seq_916 ::= COMMA selectItem

    list_917 ::= $empty | list_917 seq_916

    seq_918 ::= WHERE expression

    opt_919 ::= seq_918 | $empty

    seq_920 ::= GROUP BY groupingElement

    opt_921 ::= seq_920 | $empty

    seq_922 ::= HAVING expression

    opt_923 ::= seq_922 | $empty

    seq_924 ::= QUALIFY selectItem comparisonOperator INTEGER_VALUE

    opt_925 ::= seq_924 | $empty

    seq_926 ::= opt_919 opt_921 opt_923 opt_925

    opt_927 ::= pivotClause | $empty

    seq_928 ::= FROM relations opt_927

    opt_929 ::= seq_928 | $empty

    opt_930 ::= expressionList | $empty

    opt_931 ::= expressionList | $empty

    seq_932 ::= COMMA groupingSet

    list_933 ::= $empty | list_933 seq_932

    opt_934 ::= expression | $empty

    seq_935 ::= COMMA expression

    list_936 ::= $empty | list_936 seq_935

    opt_937 ::= columnAliases | $empty

    opt_939 ::= AS | $empty

    grp_940 ::= identifier | string_

    grp_938 ::= opt_939 grp_940

    opt_941 ::= grp_938 | $empty

    opt_942 ::= LATERAL | $empty

    seq_943 ::= COMMA opt_942 relation

    list_944 ::= $empty | list_944 seq_943

    list_945 ::= $empty | list_945 joinRelation

    list_946 ::= $empty | list_946 joinRelation

    opt_947 ::= temporalClause | $empty

    opt_948 ::= partitionNames | $empty

    opt_949 ::= tabletList | $empty

    opt_950 ::= replicaList | $empty

    opt_951 ::= AS | $empty

    seq_952 ::= opt_951 identifier

    opt_953 ::= seq_952 | $empty

    opt_954 ::= bracketHint | $empty

    seq_955 ::= COMMA rowConstructor

    list_956 ::= $empty | list_956 seq_955

    opt_957 ::= AS | $empty

    opt_958 ::= columnAliases | $empty

    seq_959 ::= opt_957 identifier opt_958

    opt_960 ::= seq_959 | $empty

    opt_961 ::= AS | $empty

    opt_962 ::= columnAliases | $empty

    seq_963 ::= opt_961 identifier opt_962

    opt_964 ::= seq_963 | $empty

    opt_965 ::= AS | $empty

    opt_966 ::= columnAliases | $empty

    seq_967 ::= opt_965 identifier opt_966

    opt_968 ::= seq_967 | $empty

    opt_969 ::= AS | $empty

    opt_970 ::= columnAliases | $empty

    seq_971 ::= opt_969 identifier opt_970

    opt_972 ::= seq_971 | $empty

    opt_973 ::= AS | $empty

    opt_974 ::= columnAliases | $empty

    seq_975 ::= opt_973 identifier opt_974

    opt_976 ::= seq_975 | $empty

    seq_977 ::= COMMA pivotAggregationExpression

    list_978 ::= $empty | list_978 seq_977

    grp_979 ::= identifier | identifierList

    seq_980 ::= COMMA pivotValue

    list_981 ::= $empty | list_981 seq_980

    opt_983 ::= AS | $empty

    grp_984 ::= identifier | string_

    grp_982 ::= opt_983 grp_984

    opt_985 ::= grp_982 | $empty

    grp_986 ::= literalExpression | literalExpressionList

    opt_988 ::= AS | $empty

    grp_989 ::= identifier | string_

    grp_987 ::= opt_988 grp_989

    opt_990 ::= grp_987 | $empty

    opt_991 ::= bracketHint | $empty

    opt_992 ::= LATERAL | $empty

    opt_993 ::= joinCriteria | $empty

    opt_994 ::= bracketHint | $empty

    opt_995 ::= LATERAL | $empty

    seq_996 ::= COMMA identifier

    list_997 ::= $empty | list_997 seq_996

    seq_998 ::= COMMA identifier

    list_999 ::= $empty | list_999 seq_998

    seq_1000 ::= COMMA identifier

    list_1001 ::= $empty | list_1001 seq_1000

    opt_1002 ::= TEMPORARY | $empty

    grp_1003 ::= PARTITION | PARTITIONS

    seq_1004 ::= COMMA identifierOrString

    list_1005 ::= $empty | list_1005 seq_1004

    opt_1006 ::= TEMPORARY | $empty

    grp_1007 ::= PARTITION | PARTITIONS

    seq_1008 ::= COMMA keyPartition

    list_1009 ::= $empty | list_1009 seq_1008

    seq_1010 ::= COMMA INTEGER_VALUE

    list_1011 ::= $empty | list_1011 seq_1010

    seq_1012 ::= COMMA AT identifierOrString

    list_1013 ::= $empty | list_1013 seq_1012

    seq_1014 ::= USING AT identifierOrString list_1013

    opt_1015 ::= seq_1014 | $empty

    grp_1016 ::= DEALLOCATE | DROP

    seq_1017 ::= COMMA INTEGER_VALUE

    list_1018 ::= $empty | list_1018 seq_1017

    seq_1019 ::= COMMA expressionOrDefault

    list_1020 ::= $empty | list_1020 seq_1019

    seq_1021 ::= COMMA mapExpression

    list_1022 ::= $empty | list_1022 seq_1021

    opt_1023 ::= BINARY | $empty

    grp_1024 ::= AND | LOGICAL_AND

    grp_1025 ::= OR | LOGICAL_OR

    seq_1026 ::= COMMA expression

    list_1027 ::= $empty | list_1027 seq_1026

    opt_1028 ::= NOT | $empty

    seq_1029 ::= predicateOperations CHARSET

    opt_1030 ::= seq_1029 | $empty

    seq_1031 ::= COMMA expression

    list_1032 ::= seq_1031 | list_1032 seq_1031

    opt_1033 ::= NOT | $empty

    grp_1034 ::= ASTERISK_SYMBOL | SLASH_SYMBOL | PERCENT_SYMBOL | INT_DIV | MOD

    grp_1035 ::= PLUS_SYMBOL | MINUS_SYMBOL

    grp_1036 ::= identifier | string_

    grp_1037 ::= DOT_IDENTIFIER | DOT identifier

    grp_1038 ::= MINUS_SYMBOL | PLUS_SYMBOL | BITNOT

    list_1039 ::= whenClause | list_1039 whenClause

    seq_1040 ::= ELSE expression

    opt_1041 ::= seq_1040 | $empty

    list_1042 ::= whenClause | list_1042 whenClause

    seq_1043 ::= ELSE expression

    opt_1044 ::= seq_1043 | $empty

    opt_1045 ::= arrayType | $empty

    opt_1046 ::= expressionList | $empty

    opt_1047 ::= mapExpressionList | $empty

    opt_1048 ::= mapExpressionList | $empty

    opt_1049 ::= INTEGER_VALUE | $empty

    opt_1050 ::= INTEGER_VALUE | $empty

    grp_1051 ::= identifier | identifierList

    opt_1052 ::= expressionList | $empty

    opt_1053 ::= NOT | $empty

    grp_1054 ::= DATE | DATETIME

    seq_1055 ::= COMMA expression

    list_1056 ::= $empty | list_1056 seq_1055

    seq_1057 ::= expression list_1056

    opt_1058 ::= seq_1057 | $empty

    seq_1059 ::= COMMA expression

    list_1060 ::= $empty | list_1060 seq_1059

    seq_1061 ::= expression list_1060

    opt_1062 ::= seq_1061 | $empty

    opt_1063 ::= over | $empty

    seq_1064 ::= COMMA expression

    list_1065 ::= $empty | list_1065 seq_1064

    seq_1066 ::= expression list_1065

    opt_1067 ::= seq_1066 | $empty

    opt_1068 ::= over | $empty

    opt_1069 ::= setQuantifier | $empty

    opt_1070 ::= ASTERISK_SYMBOL | $empty

    opt_1071 ::= bracketHint | $empty

    seq_1072 ::= setQuantifier opt_1071

    opt_1073 ::= seq_1072 | $empty

    seq_1074 ::= COMMA expression

    list_1075 ::= $empty | list_1075 seq_1074

    seq_1076 ::= expression list_1075

    opt_1077 ::= seq_1076 | $empty

    opt_1078 ::= setQuantifier | $empty

    opt_1079 ::= setQuantifier | $empty

    opt_1080 ::= setQuantifier | $empty

    opt_1081 ::= setQuantifier | $empty

    seq_1082 ::= COMMA sortItem

    list_1083 ::= $empty | list_1083 seq_1082

    seq_1084 ::= ORDER BY sortItem list_1083

    opt_1085 ::= seq_1084 | $empty

    seq_1086 ::= COMMA sortItem

    list_1087 ::= $empty | list_1087 seq_1086

    seq_1088 ::= ORDER BY sortItem list_1087

    opt_1089 ::= seq_1088 | $empty

    opt_1090 ::= setQuantifier | $empty

    seq_1091 ::= COMMA expression

    list_1092 ::= $empty | list_1092 seq_1091

    seq_1093 ::= COMMA sortItem

    list_1094 ::= $empty | list_1094 seq_1093

    seq_1095 ::= ORDER BY sortItem list_1094

    opt_1096 ::= seq_1095 | $empty

    seq_1097 ::= SEPARATOR expression

    opt_1098 ::= seq_1097 | $empty

    seq_1099 ::= varType DOT

    opt_1100 ::= seq_1099 | $empty

    seq_1101 ::= LEFT_PAREN RIGHT_PAREN

    opt_1102 ::= seq_1101 | $empty

    seq_1103 ::= LEFT_PAREN RIGHT_PAREN

    opt_1104 ::= seq_1103 | $empty

    seq_1105 ::= LEFT_PAREN RIGHT_PAREN

    opt_1106 ::= seq_1105 | $empty

    seq_1107 ::= LEFT_PAREN RIGHT_PAREN

    opt_1108 ::= seq_1107 | $empty

    seq_1109 ::= LEFT_PAREN RIGHT_PAREN

    opt_1110 ::= seq_1109 | $empty

    seq_1111 ::= LEFT_PAREN RIGHT_PAREN

    opt_1112 ::= seq_1111 | $empty

    seq_1113 ::= LEFT_PAREN RIGHT_PAREN

    opt_1114 ::= seq_1113 | $empty

    seq_1115 ::= COMMA expression

    list_1116 ::= $empty | list_1116 seq_1115

    seq_1117 ::= expression list_1116

    opt_1118 ::= seq_1117 | $empty

    seq_1119 ::= COMMA expression

    list_1120 ::= $empty | list_1120 seq_1119

    seq_1121 ::= expression list_1120

    opt_1122 ::= seq_1121 | $empty

    opt_1123 ::= expression | $empty

    opt_1124 ::= ignoreNulls | $empty

    seq_1125 ::= COMMA expression

    list_1126 ::= $empty | list_1126 seq_1125

    seq_1127 ::= expression opt_1124 list_1126

    opt_1128 ::= seq_1127 | $empty

    opt_1129 ::= ignoreNulls | $empty

    opt_1130 ::= ignoreNulls | $empty

    seq_1131 ::= COMMA expression

    list_1132 ::= $empty | list_1132 seq_1131

    seq_1133 ::= expression opt_1130 list_1132

    opt_1134 ::= seq_1133 | $empty

    opt_1135 ::= ignoreNulls | $empty

    opt_1136 ::= ignoreNulls | $empty

    seq_1137 ::= COMMA expression

    list_1138 ::= $empty | list_1138 seq_1137

    seq_1139 ::= expression opt_1136 list_1138

    opt_1140 ::= seq_1139 | $empty

    opt_1141 ::= ignoreNulls | $empty

    opt_1142 ::= ignoreNulls | $empty

    seq_1143 ::= COMMA expression

    list_1144 ::= $empty | list_1144 seq_1143

    seq_1145 ::= expression opt_1142 list_1144

    opt_1146 ::= seq_1145 | $empty

    opt_1147 ::= ignoreNulls | $empty

    opt_1148 ::= bracketHint | $empty

    list_1149 ::= partition | list_1149 partition

    list_1150 ::= partition | list_1150 partition

    seq_1151 ::= COMMA list_1150 expression

    list_1152 ::= $empty | list_1152 seq_1151

    seq_1153 ::= opt_1148 PARTITION BY list_1149 expression list_1152

    opt_1154 ::= seq_1153 | $empty

    seq_1155 ::= COMMA sortItem

    list_1156 ::= $empty | list_1156 seq_1155

    seq_1157 ::= ORDER BY sortItem list_1156

    opt_1158 ::= seq_1157 | $empty

    opt_1159 ::= windowFrame | $empty

    grp_1160 ::= PRECEDING | FOLLOWING

    opt_1161 ::= partitionNames | $empty

    opt_1162 ::= partitionNames | $empty

    seq_1163 ::= AS identifier

    opt_1164 ::= seq_1163 | $empty

    grp_1165 ::= DESC | DESCRIBE | EXPLAIN

    grp_1166 ::= LOGICAL | ANALYZE | VERBOSE | COSTS | SCHEDULER

    opt_1167 ::= grp_1166 | $empty

    grp_1168 ::= ALL | LOGS | TIMES | VALUES | REASON

    opt_1169 ::= identifier | $empty

    seq_1170 ::= COMMA rangePartitionDesc

    list_1171 ::= $empty | list_1171 seq_1170

    seq_1172 ::= rangePartitionDesc list_1171

    opt_1173 ::= seq_1172 | $empty

    seq_1174 ::= COMMA rangePartitionDesc

    list_1175 ::= $empty | list_1175 seq_1174

    seq_1176 ::= rangePartitionDesc list_1175

    opt_1177 ::= seq_1176 | $empty

    opt_1178 ::= LIST | $empty

    seq_1179 ::= COMMA listPartitionDesc

    list_1180 ::= $empty | list_1180 seq_1179

    seq_1181 ::= listPartitionDesc list_1180

    opt_1182 ::= seq_1181 | $empty

    opt_1183 ::= LIST | $empty

    seq_1184 ::= COMMA rangePartitionDesc

    list_1185 ::= $empty | list_1185 seq_1184

    seq_1186 ::= rangePartitionDesc list_1185

    opt_1187 ::= seq_1186 | $empty

    seq_1188 ::= IF NOT EXISTS

    opt_1189 ::= seq_1188 | $empty

    opt_1190 ::= propertyList | $empty

    seq_1191 ::= IF NOT EXISTS

    opt_1192 ::= seq_1191 | $empty

    seq_1193 ::= COMMA listPartitionValueList

    list_1194 ::= $empty | list_1194 seq_1193

    opt_1195 ::= propertyList | $empty

    seq_1196 ::= COMMA listPartitionValue

    list_1197 ::= $empty | list_1197 seq_1196

    seq_1198 ::= COMMA string_

    list_1199 ::= $empty | list_1199 seq_1198

    seq_1200 ::= COMMA literalExpression

    list_1201 ::= $empty | list_1201 seq_1200

    seq_1202 ::= IF NOT EXISTS

    opt_1203 ::= seq_1202 | $empty

    opt_1204 ::= propertyList | $empty

    grp_1205 ::= MAXVALUE | partitionValueList

    seq_1206 ::= COMMA partitionValue

    list_1207 ::= $empty | list_1207 seq_1206

    seq_1208 ::= BUCKETS INTEGER_VALUE

    opt_1209 ::= seq_1208 | $empty

    seq_1210 ::= BUCKETS INTEGER_VALUE

    opt_1211 ::= seq_1210 | $empty

    seq_1212 ::= BUCKETS INTEGER_VALUE

    opt_1213 ::= seq_1212 | $empty

    grp_1214 ::= IMMEDIATE | DEFERRED

    opt_1215 ::= grp_1214 | $empty

    seq_1217 ::= START LEFT_PAREN string_ RIGHT_PAREN

    opt_1218 ::= seq_1217 | $empty

    grp_1216 ::= ASYNC | ASYNC opt_1218 EVERY LEFT_PAREN interval RIGHT_PAREN | INCREMENTAL | MANUAL

    seq_1219 ::= COMMA property

    list_1220 ::= $empty | list_1220 seq_1219

    seq_1221 ::= COMMA property

    list_1222 ::= $empty | list_1222 seq_1221

    seq_1223 ::= COMMA property

    list_1224 ::= $empty | list_1224 seq_1223

    opt_1225 ::= fileFormat | $empty

    opt_1226 ::= properties | $empty

    grp_1227 ::= identifier | string_

    grp_1228 ::= identifier | nestedFieldName

    seq_1229 ::= COMMA subfieldDesc

    list_1230 ::= $empty | list_1230 seq_1229

    opt_1231 ::= typeParameter | $empty

    opt_1232 ::= typeParameter | $empty

    opt_1233 ::= INT | $empty

    opt_1234 ::= INTEGER | $empty

    opt_1235 ::= INT | $empty

    opt_1236 ::= INTEGER | $empty

    opt_1237 ::= typeParameter | $empty

    opt_1238 ::= typeParameter | $empty

    opt_1239 ::= typeParameter | $empty

    opt_1240 ::= typeParameter | $empty

    opt_1241 ::= typeParameter | $empty

    opt_1242 ::= typeParameter | $empty

    opt_1243 ::= typeParameter | $empty

    opt_1244 ::= typeParameter | $empty

    grp_1245 ::= DECIMAL | DECIMALV2 | DECIMAL32 | DECIMAL64 | DECIMAL128 | NUMERIC | NUMBER

    seq_1246 ::= COMMA INTEGER_VALUE

    opt_1247 ::= seq_1246 | $empty

    seq_1248 ::= LEFT_PAREN INTEGER_VALUE opt_1247 RIGHT_PAREN

    opt_1249 ::= seq_1248 | $empty

    grp_1250 ::= DOT_IDENTIFIER | DOT identifier

    list_1251 ::= $empty | list_1251 grp_1250

    seq_1252 ::= COMMA identifier

    list_1253 ::= $empty | list_1253 seq_1252

    seq_1254 ::= COMMA identifierOrString

    list_1255 ::= $empty | list_1255 seq_1254

    seq_1256 ::= COMMA assignment

    list_1257 ::= $empty | list_1257 seq_1256

%End
