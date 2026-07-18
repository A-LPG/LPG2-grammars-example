-- AUTO-GENERATED from antlr/grammars-v4 sql/mysql/Oracle by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=SqlMysqlOracleParser
%options package=lpg.grammars.sql.mysql.Oracle
%options template=dtParserTemplateF.gi
%options import_terminals=SqlMysqlOracleLexer.gi
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
    HarnessStart ::= queries /.
                    setResult("ok");
                ./

    queries ::= list_1

    query ::= grp_2 SEMICOLON_SYMBOL

    simpleStatement ::= alterStatement
           | createStatement
           | dropStatement
           | renameTableStatement
           | truncateTableStatement
           | importStatement
           | callStatement
           | deleteStatement
           | doStatement
           | handlerStatement
           | insertStatement
           | loadStatement
           | replaceStatement
           | selectStatement
           | updateStatement
           | transactionOrLockingStatement
           | replicationStatement
           | preparedStatement
           | cloneStatement
           | accountManagementStatement
           | tableAdministrationStatement
           | uninstallStatement
           | installStatement
           | setStatement
           | showDatabasesStatement
           | showTablesStatement
           | showTriggersStatement
           | showEventsStatement
           | showTableStatusStatement
           | showOpenTablesStatement
           | showParseTreeStatement
           | showPluginsStatement
           | showEngineLogsStatement
           | showEngineMutexStatement
           | showEngineStatusStatement
           | showColumnsStatement
           | showBinaryLogsStatement
           | showBinaryLogStatusStatement
           | showReplicasStatement
           | showBinlogEventsStatement
           | showRelaylogEventsStatement
           | showKeysStatement
           | showEnginesStatement
           | showCountWarningsStatement
           | showCountErrorsStatement
           | showWarningsStatement
           | showErrorsStatement
           | showProfilesStatement
           | showProfileStatement
           | showStatusStatement
           | showProcessListStatement
           | showVariablesStatement
           | showCharacterSetStatement
           | showCollationStatement
           | showPrivilegesStatement
           | showGrantsStatement
           | showCreateDatabaseStatement
           | showCreateTableStatement
           | showCreateViewStatement
           | showMasterStatusStatement
           | showReplicaStatusStatement
           | showCreateProcedureStatement
           | showCreateFunctionStatement
           | showCreateTriggerStatement
           | showCreateProcedureStatusStatement
           | showCreateFunctionStatusStatement
           | showCreateProcedureCodeStatement
           | showCreateFunctionCodeStatement
           | showCreateEventStatement
           | showCreateUserStatement
           | resourceGroupManagement
           | otherAdministrativeStatement
           | utilityStatement
           | getDiagnosticsStatement
           | signalStatement
           | resignalStatement

    alterStatement ::= ALTER_SYMBOL grp_3

    alterDatabase ::= DATABASE_SYMBOL schemaRef list_6

    alterDatabaseOption ::= createDatabaseOption
           | READ_SYMBOL ONLY_SYMBOL opt_7 ternaryOption

    alterEvent ::= opt_8 EVENT_SYMBOL eventRef opt_10 opt_13 opt_15 opt_19 opt_21 opt_23

    alterLogfileGroup ::= LOGFILE_SYMBOL GROUP_SYMBOL logfileGroupRef ADD_SYMBOL UNDOFILE_SYMBOL textLiteral opt_24

    alterLogfileGroupOptions ::= alterLogfileGroupOption list_27

    alterLogfileGroupOption ::= tsOptionInitialSize
           | tsOptionEngine
           | tsOptionWait

    alterServer ::= SERVER_SYMBOL serverRef serverOptions

    alterTable ::= opt_28 TABLE_SYMBOL tableRef opt_29

    alterTableActions ::= alterCommandList opt_31
           | partitionClause
           | removePartitioning
           | opt_33 standaloneAlterCommands

    alterCommandList ::= alterCommandsModifierList
           | opt_35 alterList

    alterCommandsModifierList ::= alterCommandsModifier list_37

    standaloneAlterCommands ::= DISCARD_SYMBOL TABLESPACE_SYMBOL
           | IMPORT_SYMBOL TABLESPACE_SYMBOL
           | alterPartition
           | grp_38

    alterPartition ::= ADD_SYMBOL PARTITION_SYMBOL opt_39 grp_40
           | DROP_SYMBOL PARTITION_SYMBOL identifierList
           | REBUILD_SYMBOL PARTITION_SYMBOL opt_41 allOrPartitionNameList
           | OPTIMIZE_SYMBOL PARTITION_SYMBOL opt_42 allOrPartitionNameList opt_43
           | ANALYZE_SYMBOL PARTITION_SYMBOL opt_44 allOrPartitionNameList
           | CHECK_SYMBOL PARTITION_SYMBOL allOrPartitionNameList list_45
           | REPAIR_SYMBOL PARTITION_SYMBOL opt_46 allOrPartitionNameList list_47
           | COALESCE_SYMBOL PARTITION_SYMBOL opt_48 real_ulong_number
           | TRUNCATE_SYMBOL PARTITION_SYMBOL allOrPartitionNameList
           | REORGANIZE_SYMBOL PARTITION_SYMBOL opt_49 opt_51
           | EXCHANGE_SYMBOL PARTITION_SYMBOL identifier WITH_SYMBOL TABLE_SYMBOL tableRef opt_52
           | DISCARD_SYMBOL PARTITION_SYMBOL allOrPartitionNameList TABLESPACE_SYMBOL
           | IMPORT_SYMBOL PARTITION_SYMBOL allOrPartitionNameList TABLESPACE_SYMBOL

    alterList ::= grp_53 list_56

    alterCommandsModifier ::= alterAlgorithmOption
           | alterLockOption
           | withValidation

    alterListItem ::= ADD_SYMBOL opt_57 grp_58
           | ADD_SYMBOL tableConstraintDef
           | CHANGE_SYMBOL opt_61 columnInternalRef identifier fieldDefinition opt_62
           | MODIFY_SYMBOL opt_63 columnInternalRef fieldDefinition opt_64
           | DROP_SYMBOL grp_65
           | DISABLE_SYMBOL KEYS_SYMBOL
           | ENABLE_SYMBOL KEYS_SYMBOL
           | ALTER_SYMBOL opt_68 columnInternalRef grp_69
           | ALTER_SYMBOL INDEX_SYMBOL indexRef visibility
           | ALTER_SYMBOL CHECK_SYMBOL identifier constraintEnforcement
           | ALTER_SYMBOL CONSTRAINT_SYMBOL identifier constraintEnforcement
           | RENAME_SYMBOL COLUMN_SYMBOL columnInternalRef TO_SYMBOL identifier
           | RENAME_SYMBOL opt_72 tableName
           | RENAME_SYMBOL keyOrIndex indexRef TO_SYMBOL indexName
           | CONVERT_SYMBOL TO_SYMBOL charset grp_73 opt_74
           | FORCE_SYMBOL
           | ORDER_SYMBOL BY_SYMBOL alterOrderList

    place ::= AFTER_SYMBOL identifier
           | FIRST_SYMBOL

    restrict ::= RESTRICT_SYMBOL
           | CASCADE_SYMBOL

    alterOrderList ::= identifier opt_75 list_78

    alterAlgorithmOption ::= ALGORITHM_SYMBOL opt_79 grp_80

    alterLockOption ::= LOCK_SYMBOL opt_81 grp_82

    indexLockAndAlgorithm ::= alterAlgorithmOption opt_83
           | alterLockOption opt_84

    withValidation ::= grp_85 VALIDATION_SYMBOL

    removePartitioning ::= REMOVE_SYMBOL PARTITIONING_SYMBOL

    allOrPartitionNameList ::= ALL_SYMBOL
           | identifierList

    alterTablespace ::= TABLESPACE_SYMBOL tablespaceRef grp_86

    alterUndoTablespace ::= UNDO_SYMBOL TABLESPACE_SYMBOL tablespaceRef SET_SYMBOL grp_89 opt_90

    undoTableSpaceOptions ::= undoTableSpaceOption list_93

    undoTableSpaceOption ::= tsOptionEngine

    alterTablespaceOptions ::= alterTablespaceOption list_96

    alterTablespaceOption ::= INITIAL_SIZE_SYMBOL opt_97 sizeNumber
           | tsOptionAutoextendSize
           | tsOptionMaxSize
           | tsOptionEngine
           | tsOptionWait
           | tsOptionEncryption
           | tsOptionEngineAttribute

    changeTablespaceOption ::= INITIAL_SIZE_SYMBOL opt_98 sizeNumber
           | tsOptionAutoextendSize
           | tsOptionMaxSize

    alterView ::= opt_99 opt_100 opt_101 VIEW_SYMBOL viewRef viewTail

    viewTail ::= opt_102 AS_SYMBOL viewQueryBlock

    viewQueryBlock ::= queryExpressionWithOptLockingClauses opt_103

    viewCheckOption ::= WITH_SYMBOL opt_105 CHECK_SYMBOL OPTION_SYMBOL

    alterInstanceStatement ::= INSTANCE_SYMBOL ROTATE_SYMBOL textOrIdentifier MASTER_SYMBOL KEY_SYMBOL
           | grp_106

    createStatement ::= CREATE_SYMBOL grp_111

    createDatabase ::= DATABASE_SYMBOL opt_112 schemaName list_113

    createDatabaseOption ::= defaultCharset
           | defaultCollation
           | defaultEncryption

    createTable ::= opt_114 TABLE_SYMBOL opt_115 tableName grp_116

    tableElementList ::= tableElement list_121

    tableElement ::= columnDefinition
           | tableConstraintDef

    duplicateAsQe ::= opt_123 asCreateQueryExpression

    asCreateQueryExpression ::= opt_124 queryExpressionWithOptLockingClauses

    queryExpressionOrParens ::= queryExpression opt_125
           | queryExpressionParens

    queryExpressionWithOptLockingClauses ::= queryExpression opt_126

    createRoutine ::= CREATE_SYMBOL grp_127 opt_128

    createProcedure ::= opt_129 PROCEDURE_SYMBOL opt_130 procedureName OPEN_PAR_SYMBOL opt_134 CLOSE_PAR_SYMBOL list_135 storedRoutineBody

    routineString ::= textStringLiteral
           | DOLLAR_QUOTED_STRING_TEXT

    storedRoutineBody ::= compoundStatement
           | AS_SYMBOL routineString

    createFunction ::= opt_136 FUNCTION_SYMBOL opt_137 functionName OPEN_PAR_SYMBOL opt_141 CLOSE_PAR_SYMBOL RETURNS_SYMBOL typeWithOptCollate list_142 storedRoutineBody

    createUdf ::= opt_143 FUNCTION_SYMBOL opt_144 udfName RETURNS_SYMBOL grp_145 SONAME_SYMBOL textLiteral

    routineCreateOption ::= routineOption
           | opt_146 DETERMINISTIC_SYMBOL

    routineAlterOptions ::= list_147

    routineOption ::= COMMENT_SYMBOL textLiteral
           | LANGUAGE_SYMBOL grp_148
           | NO_SYMBOL SQL_SYMBOL
           | CONTAINS_SYMBOL SQL_SYMBOL
           | READS_SYMBOL SQL_SYMBOL DATA_SYMBOL
           | MODIFIES_SYMBOL SQL_SYMBOL DATA_SYMBOL
           | SQL_SYMBOL SECURITY_SYMBOL grp_149

    createIndex ::= opt_150 grp_151 opt_157

    indexNameAndType ::= indexName
           | opt_158 USING_SYMBOL indexType
           | indexName TYPE_SYMBOL indexType

    createIndexTarget ::= ON_SYMBOL tableRef keyListWithExpression

    createLogfileGroup ::= LOGFILE_SYMBOL GROUP_SYMBOL logfileGroupName ADD_SYMBOL UNDOFILE_SYMBOL textLiteral opt_159

    logfileGroupOptions ::= logfileGroupOption list_162

    logfileGroupOption ::= tsOptionInitialSize
           | tsOptionUndoRedoBufferSize
           | tsOptionNodegroup
           | tsOptionEngine
           | tsOptionWait
           | tsOptionComment

    createServer ::= SERVER_SYMBOL serverName FOREIGN_SYMBOL DATA_SYMBOL WRAPPER_SYMBOL textOrIdentifier serverOptions

    serverOptions ::= OPTIONS_SYMBOL OPEN_PAR_SYMBOL serverOption list_164 CLOSE_PAR_SYMBOL

    serverOption ::= HOST_SYMBOL textLiteral
           | DATABASE_SYMBOL textLiteral
           | USER_SYMBOL textLiteral
           | PASSWORD_SYMBOL textLiteral
           | SOCKET_SYMBOL textLiteral
           | OWNER_SYMBOL textLiteral
           | PORT_SYMBOL ulong_number

    createTablespace ::= TABLESPACE_SYMBOL tablespaceName tsDataFileName opt_166 opt_167

    createUndoTablespace ::= UNDO_SYMBOL TABLESPACE_SYMBOL tablespaceName ADD_SYMBOL tsDataFile opt_168

    tsDataFileName ::= ADD_SYMBOL tsDataFile
           | opt_170

    tsDataFile ::= DATAFILE_SYMBOL textLiteral

    tablespaceOptions ::= tablespaceOption list_173

    tablespaceOption ::= tsOptionInitialSize
           | tsOptionAutoextendSize
           | tsOptionMaxSize
           | tsOptionExtentSize
           | tsOptionNodegroup
           | tsOptionEngine
           | tsOptionWait
           | tsOptionComment
           | tsOptionFileblockSize
           | tsOptionEncryption

    tsOptionInitialSize ::= INITIAL_SIZE_SYMBOL opt_174 sizeNumber

    tsOptionUndoRedoBufferSize ::= grp_175 opt_176 sizeNumber

    tsOptionAutoextendSize ::= AUTOEXTEND_SIZE_SYMBOL opt_177 sizeNumber

    tsOptionMaxSize ::= MAX_SIZE_SYMBOL opt_178 sizeNumber

    tsOptionExtentSize ::= EXTENT_SIZE_SYMBOL opt_179 sizeNumber

    tsOptionNodegroup ::= NODEGROUP_SYMBOL opt_180 real_ulong_number

    tsOptionEngine ::= opt_181 ENGINE_SYMBOL opt_182 engineRef

    tsOptionWait ::= grp_183

    tsOptionComment ::= COMMENT_SYMBOL opt_184 textLiteral

    tsOptionFileblockSize ::= FILE_BLOCK_SIZE_SYMBOL opt_185 sizeNumber

    tsOptionEncryption ::= ENCRYPTION_SYMBOL opt_186 textStringLiteral

    tsOptionEngineAttribute ::= ENGINE_SYMBOL opt_187 jsonAttribute

    createView ::= opt_188 opt_189 opt_190 VIEW_SYMBOL viewName viewTail

    viewReplaceOrAlgorithm ::= OR_SYMBOL REPLACE_SYMBOL opt_191
           | viewAlgorithm

    viewAlgorithm ::= ALGORITHM_SYMBOL EQUAL_OPERATOR grp_192

    viewSuid ::= SQL_SYMBOL SECURITY_SYMBOL grp_193

    createTrigger ::= opt_194 TRIGGER_SYMBOL opt_195 triggerName grp_196 grp_197 ON_SYMBOL tableRef FOR_SYMBOL EACH_SYMBOL ROW_SYMBOL opt_198 compoundStatement

    triggerFollowsPrecedesClause ::= grp_199 textOrIdentifier

    createEvent ::= opt_200 EVENT_SYMBOL opt_201 eventName ON_SYMBOL SCHEDULE_SYMBOL schedule opt_204 opt_208 opt_210 DO_SYMBOL compoundStatement

    createRole ::= ROLE_SYMBOL opt_211 roleList

    createSpatialReference ::= OR_SYMBOL REPLACE_SYMBOL SPATIAL_SYMBOL REFERENCE_SYMBOL SYSTEM_SYMBOL real_ulonglong_number list_212
           | SPATIAL_SYMBOL REFERENCE_SYMBOL SYSTEM_SYMBOL opt_213 real_ulonglong_number list_214

    srsAttribute ::= NAME_SYMBOL TEXT_SYMBOL textStringNoLinebreak
           | DEFINITION_SYMBOL TEXT_SYMBOL textStringNoLinebreak
           | ORGANIZATION_SYMBOL textStringNoLinebreak IDENTIFIED_SYMBOL BY_SYMBOL real_ulonglong_number
           | DESCRIPTION_SYMBOL TEXT_SYMBOL textStringNoLinebreak

    dropStatement ::= DROP_SYMBOL grp_215

    dropDatabase ::= DATABASE_SYMBOL opt_216 schemaRef

    dropEvent ::= EVENT_SYMBOL opt_217 eventRef

    dropFunction ::= FUNCTION_SYMBOL opt_218 functionRef

    dropProcedure ::= PROCEDURE_SYMBOL opt_219 procedureRef

    dropIndex ::= opt_220 INDEX_SYMBOL indexRef ON_SYMBOL tableRef opt_221

    dropLogfileGroup ::= LOGFILE_SYMBOL GROUP_SYMBOL logfileGroupRef opt_226

    dropLogfileGroupOption ::= tsOptionWait
           | tsOptionEngine

    dropServer ::= SERVER_SYMBOL opt_227 serverRef

    dropTable ::= opt_228 grp_229 opt_230 tableRefList opt_232

    dropTableSpace ::= TABLESPACE_SYMBOL tablespaceRef opt_237

    dropTrigger ::= TRIGGER_SYMBOL opt_238 triggerRef

    dropView ::= VIEW_SYMBOL opt_239 viewRefList opt_241

    dropRole ::= ROLE_SYMBOL opt_242 roleList

    dropSpatialReference ::= SPATIAL_SYMBOL REFERENCE_SYMBOL SYSTEM_SYMBOL opt_243 real_ulonglong_number

    dropUndoTablespace ::= UNDO_SYMBOL TABLESPACE_SYMBOL tablespaceRef opt_244

    renameTableStatement ::= RENAME_SYMBOL grp_245 renamePair list_247

    renamePair ::= tableRef TO_SYMBOL tableName

    truncateTableStatement ::= TRUNCATE_SYMBOL opt_248 tableRef

    importStatement ::= IMPORT_SYMBOL TABLE_SYMBOL FROM_SYMBOL textStringLiteralList

    callStatement ::= CALL_SYMBOL procedureRef opt_251

    deleteStatement ::= opt_252 DELETE_SYMBOL list_253 grp_254

    partitionDelete ::= PARTITION_SYMBOL OPEN_PAR_SYMBOL identifierList CLOSE_PAR_SYMBOL

    deleteStatementOption ::= QUICK_SYMBOL
           | LOW_PRIORITY_SYMBOL
           | IGNORE_SYMBOL

    doStatement ::= DO_SYMBOL selectItemList

    handlerStatement ::= HANDLER_SYMBOL grp_263

    handlerReadOrScan ::= grp_268
           | identifier grp_269

    insertStatement ::= INSERT_SYMBOL opt_272 opt_273 opt_274 tableRef opt_275 grp_276 opt_279

    insertLockOption ::= LOW_PRIORITY_SYMBOL
           | DELAYED_SYMBOL
           | HIGH_PRIORITY_SYMBOL

    insertFromConstructor ::= opt_282 insertValues

    fields ::= insertIdentifier list_284

    insertValues ::= grp_285 valueList

    insertQueryExpression ::= queryExpression
           | queryExpressionParens
           | opt_288 queryExpressionWithOptLockingClauses

    valueList ::= OPEN_PAR_SYMBOL opt_289 CLOSE_PAR_SYMBOL list_292

    values ::= grp_293 list_296

    valuesReference ::= AS_SYMBOL identifier opt_297

    insertUpdateList ::= ON_SYMBOL DUPLICATE_SYMBOL KEY_SYMBOL UPDATE_SYMBOL updateList

    loadStatement ::= LOAD_SYMBOL dataOrXml opt_298 opt_299 opt_300 opt_301 textStringLiteral opt_302 opt_303 opt_305 INTO_SYMBOL TABLE_SYMBOL tableRef opt_306 opt_307 opt_308 opt_309 opt_310 loadDataFileTail opt_311 opt_312 opt_313

    dataOrXml ::= DATA_SYMBOL
           | XML_SYMBOL

    loadDataLock ::= LOW_PRIORITY_SYMBOL
           | CONCURRENT_SYMBOL

    loadFrom ::= FROM_SYMBOL

    loadSourceType ::= INFILE_SYMBOL
           | grp_314

    sourceCount ::= grp_315

    sourceOrder ::= IN_SYMBOL PRIMARY_SYMBOL KEY_SYMBOL ORDER_SYMBOL

    xmlRowsIdentifiedBy ::= ROWS_SYMBOL IDENTIFIED_SYMBOL BY_SYMBOL textString

    loadDataFileTail ::= opt_318 opt_319 opt_321

    loadDataFileTargetList ::= OPEN_PAR_SYMBOL opt_322 CLOSE_PAR_SYMBOL

    fieldOrVariableList ::= grp_323 list_326

    loadAlgorithm ::= ALGORITHM_SYMBOL EQUAL_OPERATOR BULK_SYMBOL

    loadParallel ::= PARALLEL_SYMBOL EQUAL_OPERATOR INT_NUMBER

    loadMemory ::= MEMORY_SYMBOL EQUAL_OPERATOR sizeNumber

    replaceStatement ::= REPLACE_SYMBOL opt_328 opt_329 tableRef opt_330 grp_331

    selectStatement ::= queryExpression opt_332
           | selectStatementWithInto

    selectStatementWithInto ::= OPEN_PAR_SYMBOL selectStatementWithInto CLOSE_PAR_SYMBOL
           | queryExpression intoClause opt_333
           | queryExpression lockingClauseList intoClause
           | queryExpressionParens intoClause

    queryExpression ::= opt_334 queryExpressionBody opt_335 opt_336

    queryExpressionBody ::= grp_337 list_342

    queryExpressionParens ::= OPEN_PAR_SYMBOL grp_343 CLOSE_PAR_SYMBOL

    queryPrimary ::= querySpecification
           | tableValueConstructor
           | explicitTable

    querySpecification ::= SELECT_SYMBOL list_344 selectItemList opt_345 opt_346 opt_347 opt_348 opt_349 opt_350 opt_351

    subquery ::= queryExpressionParens

    querySpecOption ::= ALL_SYMBOL
           | DISTINCT_SYMBOL
           | STRAIGHT_JOIN_SYMBOL
           | HIGH_PRIORITY_SYMBOL
           | SQL_SMALL_RESULT_SYMBOL
           | SQL_BIG_RESULT_SYMBOL
           | SQL_BUFFER_RESULT_SYMBOL
           | SQL_CALC_FOUND_ROWS_SYMBOL

    limitClause ::= LIMIT_SYMBOL limitOptions

    simpleLimitClause ::= LIMIT_SYMBOL limitOption

    limitOptions ::= limitOption opt_354

    limitOption ::= identifier
           | grp_355

    intoClause ::= INTO_SYMBOL grp_356

    procedureAnalyseClause ::= PROCEDURE_SYMBOL OPEN_PAR_SYMBOL opt_367 CLOSE_PAR_SYMBOL

    havingClause ::= HAVING_SYMBOL expr

    qualifyClause ::= QUALIFY_SYMBOL expr

    windowClause ::= WINDOW_SYMBOL windowDefinition list_369

    windowDefinition ::= windowName AS_SYMBOL windowSpec

    windowSpec ::= OPEN_PAR_SYMBOL windowSpecDetails CLOSE_PAR_SYMBOL

    windowSpecDetails ::= opt_370 opt_372 opt_373 opt_374

    windowFrameClause ::= windowFrameUnits windowFrameExtent opt_375

    windowFrameUnits ::= ROWS_SYMBOL
           | RANGE_SYMBOL
           | GROUPS_SYMBOL

    windowFrameExtent ::= windowFrameStart
           | windowFrameBetween

    windowFrameStart ::= UNBOUNDED_SYMBOL PRECEDING_SYMBOL
           | ulonglongNumber PRECEDING_SYMBOL
           | PARAM_MARKER PRECEDING_SYMBOL
           | INTERVAL_SYMBOL expr interval PRECEDING_SYMBOL
           | CURRENT_SYMBOL ROW_SYMBOL

    windowFrameBetween ::= BETWEEN_SYMBOL windowFrameBound AND_SYMBOL windowFrameBound

    windowFrameBound ::= windowFrameStart
           | UNBOUNDED_SYMBOL FOLLOWING_SYMBOL
           | ulonglongNumber FOLLOWING_SYMBOL
           | PARAM_MARKER FOLLOWING_SYMBOL
           | INTERVAL_SYMBOL expr interval FOLLOWING_SYMBOL

    windowFrameExclusion ::= EXCLUDE_SYMBOL grp_376

    withClause ::= WITH_SYMBOL opt_377 commonTableExpression list_379

    commonTableExpression ::= identifier opt_380 AS_SYMBOL subquery

    groupByClause ::= GROUP_SYMBOL BY_SYMBOL orderList opt_381
           | GROUP_SYMBOL BY_SYMBOL grp_382 OPEN_PAR_SYMBOL groupList CLOSE_PAR_SYMBOL

    olapOption ::= WITH_SYMBOL ROLLUP_SYMBOL

    orderClause ::= ORDER_SYMBOL BY_SYMBOL orderList

    direction ::= ASC_SYMBOL
           | DESC_SYMBOL

    fromClause ::= FROM_SYMBOL grp_383

    tableReferenceList ::= tableReference list_385

    tableValueConstructor ::= VALUES_SYMBOL rowValueExplicit list_387

    explicitTable ::= TABLE_SYMBOL tableRef

    rowValueExplicit ::= ROW_SYMBOL OPEN_PAR_SYMBOL opt_388 CLOSE_PAR_SYMBOL

    selectOption ::= querySpecOption
           | SQL_NO_CACHE_SYMBOL

    lockingClauseList ::= list_389

    lockingClause ::= FOR_SYMBOL lockStrengh opt_391 opt_392
           | LOCK_SYMBOL IN_SYMBOL SHARE_SYMBOL MODE_SYMBOL

    lockStrengh ::= UPDATE_SYMBOL
           | SHARE_SYMBOL

    lockedRowAction ::= SKIP_SYMBOL LOCKED_SYMBOL
           | NOWAIT_SYMBOL

    selectItemList ::= grp_393 list_395

    selectItem ::= tableWild
           | expr opt_396

    selectAlias ::= opt_397 grp_398

    whereClause ::= WHERE_SYMBOL expr

    tableReference ::= grp_399 list_401

    escapedTableReference ::= tableFactor list_402

    joinedTable ::= innerJoinType tableReference opt_404
           | outerJoinType tableReference grp_405
           | naturalJoinType tableFactor

    naturalJoinType ::= NATURAL_SYMBOL opt_406 JOIN_SYMBOL
           | NATURAL_SYMBOL grp_407 opt_408 JOIN_SYMBOL

    innerJoinType ::= opt_410 JOIN_SYMBOL
           | STRAIGHT_JOIN_SYMBOL

    outerJoinType ::= grp_411 opt_412 JOIN_SYMBOL

    tableFactor ::= singleTable
           | singleTableParens
           | derivedTable
           | tableReferenceListParens
           | tableFunction

    singleTable ::= tableRef opt_413 opt_414 opt_415 opt_416

    singleTableParens ::= OPEN_PAR_SYMBOL grp_417 CLOSE_PAR_SYMBOL

    derivedTable ::= subquery opt_418 opt_419
           | LATERAL_SYMBOL subquery opt_420 opt_421

    tableReferenceListParens ::= OPEN_PAR_SYMBOL grp_422 CLOSE_PAR_SYMBOL

    tableFunction ::= JSON_TABLE_SYMBOL OPEN_PAR_SYMBOL expr COMMA_SYMBOL textStringLiteral columnsClause CLOSE_PAR_SYMBOL opt_423

    columnsClause ::= COLUMNS_SYMBOL OPEN_PAR_SYMBOL jtColumn list_425 CLOSE_PAR_SYMBOL

    jtColumn ::= identifier FOR_SYMBOL ORDINALITY_SYMBOL
           | identifier dataType opt_426 opt_427 PATH_SYMBOL textStringLiteral opt_428
           | NESTED_SYMBOL PATH_SYMBOL textStringLiteral columnsClause

    onEmptyOrError ::= onEmpty opt_429
           | onError

    onEmptyOrErrorJsonTable ::= onEmptyOrError
           | onError onEmpty

    onEmpty ::= jsonOnResponse ON_SYMBOL EMPTY_SYMBOL

    onError ::= jsonOnResponse ON_SYMBOL ERROR_SYMBOL

    jsonOnResponse ::= ERROR_SYMBOL
           | NULL_SYMBOL
           | DEFAULT_SYMBOL textStringLiteral

    unionOption ::= DISTINCT_SYMBOL
           | ALL_SYMBOL

    tableAlias ::= opt_431 identifier

    indexHintList ::= indexHint list_433

    indexHint ::= indexHintType keyOrIndex opt_434 OPEN_PAR_SYMBOL indexList CLOSE_PAR_SYMBOL
           | USE_SYMBOL keyOrIndex opt_435 OPEN_PAR_SYMBOL opt_436 CLOSE_PAR_SYMBOL

    indexHintType ::= FORCE_SYMBOL
           | IGNORE_SYMBOL

    keyOrIndex ::= KEY_SYMBOL
           | INDEX_SYMBOL

    constraintKeyType ::= PRIMARY_SYMBOL KEY_SYMBOL
           | UNIQUE_SYMBOL opt_437

    indexHintClause ::= FOR_SYMBOL grp_438

    indexList ::= indexListElement list_440

    indexListElement ::= identifier
           | PRIMARY_SYMBOL

    updateStatement ::= opt_441 UPDATE_SYMBOL opt_442 opt_443 tableReferenceList SET_SYMBOL updateList opt_444 opt_445 opt_446

    transactionOrLockingStatement ::= transactionStatement
           | savepointStatement
           | lockStatement
           | xaStatement

    transactionStatement ::= START_SYMBOL TRANSACTION_SYMBOL list_447
           | COMMIT_SYMBOL opt_448 opt_451 opt_454

    beginWork ::= BEGIN_SYMBOL opt_455

    startTransactionOptionList ::= WITH_SYMBOL CONSISTENT_SYMBOL SNAPSHOT_SYMBOL
           | READ_SYMBOL grp_456

    savepointStatement ::= SAVEPOINT_SYMBOL identifier
           | ROLLBACK_SYMBOL opt_457 grp_458
           | RELEASE_SYMBOL SAVEPOINT_SYMBOL identifier

    lockStatement ::= LOCK_SYMBOL grp_466 lockItem list_468
           | LOCK_SYMBOL INSTANCE_SYMBOL FOR_SYMBOL BACKUP_SYMBOL
           | UNLOCK_SYMBOL grp_469

    lockItem ::= tableRef opt_470 lockOption

    lockOption ::= READ_SYMBOL opt_471
           | opt_472 WRITE_SYMBOL

    xaStatement ::= XA_SYMBOL grp_473

    xaConvert ::= CONVERT_SYMBOL XID_SYMBOL

    xid ::= textString opt_487

    replicationStatement ::= PURGE_SYMBOL purgeOptions
           | changeSource
           | RESET_SYMBOL resetOption list_489
           | RESET_SYMBOL PERSIST_SYMBOL opt_490
           | startReplicaStatement
           | stopReplicaStatement
           | changeReplication
           | replicationLoad
           | groupReplication

    purgeOptions ::= grp_491 LOGS_SYMBOL grp_492

    resetOption ::= masterOrBinaryLogsAndGtids opt_493
           | replica opt_494 opt_495

    masterOrBinaryLogsAndGtids ::= MASTER_SYMBOL
           | BINARY_SYMBOL LOGS_SYMBOL AND_SYMBOL GTIDS_SYMBOL

    sourceResetOptions ::= TO_SYMBOL real_ulonglong_number

    replicationLoad ::= LOAD_SYMBOL grp_496 FROM_SYMBOL MASTER_SYMBOL

    changeReplicationSource ::= MASTER_SYMBOL
           | REPLICATION_SYMBOL SOURCE_SYMBOL

    changeSource ::= CHANGE_SYMBOL changeReplicationSource TO_SYMBOL sourceDefinitions opt_497

    sourceDefinitions ::= sourceDefinition list_499

    sourceDefinition ::= changeReplicationSourceHost EQUAL_OPERATOR textStringNoLinebreak
           | NETWORK_NAMESPACE_SYMBOL EQUAL_OPERATOR textStringNoLinebreak
           | changeReplicationSourceBind EQUAL_OPERATOR textStringNoLinebreak
           | changeReplicationSourceUser EQUAL_OPERATOR textStringNoLinebreak
           | changeReplicationSourcePassword EQUAL_OPERATOR textStringNoLinebreak
           | changeReplicationSourcePort EQUAL_OPERATOR ulong_number
           | changeReplicationSourceConnectRetry EQUAL_OPERATOR ulong_number
           | changeReplicationSourceRetryCount EQUAL_OPERATOR ulong_number
           | changeReplicationSourceDelay EQUAL_OPERATOR ulong_number
           | changeReplicationSourceSSL EQUAL_OPERATOR ulong_number
           | changeReplicationSourceSSLCA EQUAL_OPERATOR textStringNoLinebreak
           | changeReplicationSourceSSLCApath EQUAL_OPERATOR textStringNoLinebreak
           | changeReplicationSourceTLSVersion EQUAL_OPERATOR textStringNoLinebreak
           | changeReplicationSourceSSLCert EQUAL_OPERATOR textStringNoLinebreak
           | changeReplicationSourceTLSCiphersuites EQUAL_OPERATOR sourceTlsCiphersuitesDef
           | changeReplicationSourceSSLCipher EQUAL_OPERATOR textStringNoLinebreak
           | changeReplicationSourceSSLKey EQUAL_OPERATOR textStringNoLinebreak
           | changeReplicationSourceSSLVerifyServerCert EQUAL_OPERATOR ulong_number
           | changeReplicationSourceSSLCLR EQUAL_OPERATOR textLiteral
           | changeReplicationSourceSSLCLRpath EQUAL_OPERATOR textStringNoLinebreak
           | changeReplicationSourcePublicKey EQUAL_OPERATOR textStringNoLinebreak
           | changeReplicationSourceGetSourcePublicKey EQUAL_OPERATOR ulong_number
           | changeReplicationSourceHeartbeatPeriod EQUAL_OPERATOR ulong_number
           | IGNORE_SERVER_IDS_SYMBOL EQUAL_OPERATOR serverIdList
           | changeReplicationSourceCompressionAlgorithm EQUAL_OPERATOR textStringLiteral
           | changeReplicationSourceZstdCompressionLevel EQUAL_OPERATOR ulong_number
           | changeReplicationSourceAutoPosition EQUAL_OPERATOR ulong_number
           | PRIVILEGE_CHECKS_USER_SYMBOL EQUAL_OPERATOR privilegeCheckDef
           | REQUIRE_ROW_FORMAT_SYMBOL EQUAL_OPERATOR ulong_number
           | REQUIRE_TABLE_PRIMARY_KEY_CHECK_SYMBOL EQUAL_OPERATOR tablePrimaryKeyCheckDef
           | SOURCE_CONNECTION_AUTO_FAILOVER_SYMBOL EQUAL_OPERATOR real_ulong_number
           | ASSIGN_GTIDS_TO_ANONYMOUS_TRANSACTIONS_SYMBOL EQUAL_OPERATOR assignGtidsToAnonymousTransactionsDefinition
           | GTID_ONLY_SYMBOL EQUAL_OPERATOR real_ulong_number
           | sourceFileDef

    changeReplicationSourceAutoPosition ::= MASTER_AUTO_POSITION_SYMBOL
           | SOURCE_AUTO_POSITION_SYMBOL

    changeReplicationSourceHost ::= MASTER_HOST_SYMBOL
           | SOURCE_HOST_SYMBOL

    changeReplicationSourceBind ::= MASTER_BIND_SYMBOL
           | SOURCE_BIND_SYMBOL

    changeReplicationSourceUser ::= MASTER_USER_SYMBOL
           | SOURCE_USER_SYMBOL

    changeReplicationSourcePassword ::= MASTER_PASSWORD_SYMBOL
           | SOURCE_PASSWORD_SYMBOL

    changeReplicationSourcePort ::= MASTER_PORT_SYMBOL
           | SOURCE_PORT_SYMBOL

    changeReplicationSourceConnectRetry ::= MASTER_CONNECT_RETRY_SYMBOL
           | SOURCE_CONNECT_RETRY_SYMBOL

    changeReplicationSourceRetryCount ::= MASTER_RETRY_COUNT_SYMBOL
           | SOURCE_RETRY_COUNT_SYMBOL

    changeReplicationSourceDelay ::= MASTER_DELAY_SYMBOL
           | SOURCE_DELAY_SYMBOL

    changeReplicationSourceSSL ::= MASTER_SSL_SYMBOL
           | SOURCE_SSL_SYMBOL

    changeReplicationSourceSSLCA ::= MASTER_SSL_CA_SYMBOL
           | SOURCE_SSL_CA_SYMBOL

    changeReplicationSourceSSLCApath ::= MASTER_SSL_CAPATH_SYMBOL
           | SOURCE_SSL_CAPATH_SYMBOL

    changeReplicationSourceSSLCipher ::= MASTER_SSL_CIPHER_SYMBOL
           | SOURCE_SSL_CIPHER_SYMBOL

    changeReplicationSourceSSLCLR ::= MASTER_SSL_CRL_SYMBOL
           | SOURCE_SSL_CRL_SYMBOL

    changeReplicationSourceSSLCLRpath ::= MASTER_SSL_CRLPATH_SYMBOL
           | SOURCE_SSL_CRLPATH_SYMBOL

    changeReplicationSourceSSLKey ::= MASTER_SSL_KEY_SYMBOL
           | SOURCE_SSL_KEY_SYMBOL

    changeReplicationSourceSSLVerifyServerCert ::= MASTER_SSL_VERIFY_SERVER_CERT_SYMBOL
           | SOURCE_SSL_VERIFY_SERVER_CERT_SYMBOL

    changeReplicationSourceTLSVersion ::= MASTER_TLS_VERSION_SYMBOL
           | SOURCE_TLS_VERSION_SYMBOL

    changeReplicationSourceTLSCiphersuites ::= MASTER_TLS_CIPHERSUITES_SYMBOL
           | SOURCE_TLS_CIPHERSUITES_SYMBOL

    changeReplicationSourceSSLCert ::= MASTER_SSL_CERT_SYMBOL
           | SOURCE_SSL_CERT_SYMBOL

    changeReplicationSourcePublicKey ::= MASTER_PUBLIC_KEY_PATH_SYMBOL
           | SOURCE_PUBLIC_KEY_PATH_SYMBOL

    changeReplicationSourceGetSourcePublicKey ::= GET_MASTER_PUBLIC_KEY_SYMBOL
           | GET_SOURCE_PUBLIC_KEY_SYMBOL

    changeReplicationSourceHeartbeatPeriod ::= MASTER_HEARTBEAT_PERIOD_SYMBOL
           | SOURCE_HEARTBEAT_PERIOD_SYMBOL

    changeReplicationSourceCompressionAlgorithm ::= MASTER_COMPRESSION_ALGORITHM_SYMBOL
           | SOURCE_COMPRESSION_ALGORITHM_SYMBOL

    changeReplicationSourceZstdCompressionLevel ::= MASTER_ZSTD_COMPRESSION_LEVEL_SYMBOL
           | SOURCE_ZSTD_COMPRESSION_LEVEL_SYMBOL

    privilegeCheckDef ::= userIdentifierOrText
           | NULL_SYMBOL

    tablePrimaryKeyCheckDef ::= STREAM_SYMBOL
           | ON_SYMBOL
           | OFF_SYMBOL
           | GENERATE_SYMBOL

    assignGtidsToAnonymousTransactionsDefinition ::= OFF_SYMBOL
           | LOCAL_SYMBOL
           | textStringLiteral

    sourceTlsCiphersuitesDef ::= textStringNoLinebreak
           | NULL_SYMBOL

    sourceFileDef ::= sourceLogFile EQUAL_OPERATOR textStringNoLinebreak
           | sourceLogPos EQUAL_OPERATOR ulonglongNumber
           | RELAY_LOG_FILE_SYMBOL EQUAL_OPERATOR textStringNoLinebreak
           | RELAY_LOG_POS_SYMBOL EQUAL_OPERATOR ulong_number

    sourceLogFile ::= MASTER_LOG_FILE_SYMBOL
           | SOURCE_LOG_FILE_SYMBOL

    sourceLogPos ::= MASTER_LOG_POS_SYMBOL
           | SOURCE_LOG_POS_SYMBOL

    serverIdList ::= OPEN_PAR_SYMBOL opt_503 CLOSE_PAR_SYMBOL

    changeReplication ::= CHANGE_SYMBOL REPLICATION_SYMBOL FILTER_SYMBOL filterDefinition list_505 opt_506

    filterDefinition ::= REPLICATE_DO_DB_SYMBOL EQUAL_OPERATOR OPEN_PAR_SYMBOL opt_507 CLOSE_PAR_SYMBOL
           | REPLICATE_IGNORE_DB_SYMBOL EQUAL_OPERATOR OPEN_PAR_SYMBOL opt_508 CLOSE_PAR_SYMBOL
           | REPLICATE_DO_TABLE_SYMBOL EQUAL_OPERATOR OPEN_PAR_SYMBOL opt_509 CLOSE_PAR_SYMBOL
           | REPLICATE_IGNORE_TABLE_SYMBOL EQUAL_OPERATOR OPEN_PAR_SYMBOL opt_510 CLOSE_PAR_SYMBOL
           | REPLICATE_WILD_DO_TABLE_SYMBOL EQUAL_OPERATOR OPEN_PAR_SYMBOL opt_511 CLOSE_PAR_SYMBOL
           | REPLICATE_WILD_IGNORE_TABLE_SYMBOL EQUAL_OPERATOR OPEN_PAR_SYMBOL opt_512 CLOSE_PAR_SYMBOL
           | REPLICATE_REWRITE_DB_SYMBOL EQUAL_OPERATOR OPEN_PAR_SYMBOL opt_513 CLOSE_PAR_SYMBOL

    filterDbList ::= schemaRef list_515

    filterTableList ::= filterTableRef list_517

    filterStringList ::= filterWildDbTableString list_519

    filterWildDbTableString ::= textStringNoLinebreak

    filterDbPairList ::= schemaIdentifierPair list_521

    startReplicaStatement ::= START_SYMBOL replica opt_522 opt_524 opt_525 opt_526 opt_527 opt_528 opt_529

    stopReplicaStatement ::= STOP_SYMBOL replica opt_530 opt_531

    replicaUntil ::= grp_532 list_535

    userOption ::= USER_SYMBOL EQUAL_OPERATOR textString

    passwordOption ::= PASSWORD_SYMBOL EQUAL_OPERATOR textString

    defaultAuthOption ::= DEFAULT_AUTH_SYMBOL EQUAL_OPERATOR textString

    pluginDirOption ::= PLUGIN_DIR_SYMBOL EQUAL_OPERATOR textString

    replicaThreadOptions ::= replicaThreadOption list_537

    replicaThreadOption ::= SQL_THREAD_SYMBOL
           | RELAY_THREAD_SYMBOL

    groupReplication ::= grp_538 GROUP_REPLICATION_SYMBOL

    groupReplicationStartOptions ::= groupReplicationStartOption list_541

    groupReplicationStartOption ::= groupReplicationUser
           | groupReplicationPassword
           | groupReplicationPluginAuth

    groupReplicationUser ::= USER_SYMBOL EQUAL_OPERATOR textStringNoLinebreak

    groupReplicationPassword ::= PASSWORD_SYMBOL EQUAL_OPERATOR textStringNoLinebreak

    groupReplicationPluginAuth ::= DEFAULT_AUTH_SYMBOL EQUAL_OPERATOR textStringNoLinebreak

    replica ::= SLAVE_SYMBOL
           | REPLICA_SYMBOL

    preparedStatement ::= PREPARE_SYMBOL identifier FROM_SYMBOL grp_542
           | executeStatement
           | grp_543 PREPARE_SYMBOL identifier

    executeStatement ::= EXECUTE_SYMBOL identifier opt_545

    executeVarList ::= userVariable list_547

    cloneStatement ::= CLONE_SYMBOL grp_548

    dataDirSSL ::= ssl
           | DATA_SYMBOL DIRECTORY_SYMBOL opt_553 textStringLiteral opt_554

    ssl ::= REQUIRE_SYMBOL opt_555 SSL_SYMBOL

    accountManagementStatement ::= alterUserStatement
           | createUserStatement
           | dropUserStatement
           | grantStatement
           | renameUserStatement
           | revokeStatement
           | setRoleStatement

    alterUserStatement ::= ALTER_SYMBOL USER_SYMBOL opt_556 grp_557

    alterUserList ::= alterUser list_568

    alterUser ::= oldAlterUser
           | grp_569

    oldAlterUser ::= user IDENTIFIED_SYMBOL BY_SYMBOL grp_589
           | user IDENTIFIED_SYMBOL WITH_SYMBOL grp_595
           | user opt_602

    userFunction ::= USER_SYMBOL parentheses

    createUserStatement ::= CREATE_SYMBOL USER_SYMBOL opt_603 createUserList opt_604 createUserTail

    createUserTail ::= opt_605 opt_606 list_607 opt_608

    userAttributes ::= ATTRIBUTE_SYMBOL textStringLiteral
           | COMMENT_SYMBOL textStringLiteral

    defaultRoleClause ::= DEFAULT_SYMBOL ROLE_SYMBOL roleList

    requireClause ::= REQUIRE_SYMBOL grp_609

    connectOptions ::= WITH_SYMBOL list_612

    accountLockPasswordExpireOptions ::= ACCOUNT_SYMBOL grp_613
           | PASSWORD_SYMBOL grp_614
           | FAILED_LOGIN_ATTEMPTS_SYMBOL real_ulong_number
           | PASSWORD_LOCK_TIME_SYMBOL grp_621

    userAttribute ::= ATTRIBUTE_SYMBOL textStringLiteral
           | COMMENT_SYMBOL textStringLiteral

    dropUserStatement ::= DROP_SYMBOL USER_SYMBOL opt_622 userList

    grantStatement ::= GRANT_SYMBOL grp_623

    grantTargetList ::= createUserList
           | userList

    grantOptions ::= WITH_SYMBOL grantOption

    exceptRoleList ::= EXCEPT_SYMBOL roleList

    withRoles ::= WITH_SYMBOL ROLE_SYMBOL grp_634

    grantAs ::= AS_SYMBOL USER_SYMBOL opt_636

    versionedRequireClause ::= requireClause

    renameUserStatement ::= RENAME_SYMBOL USER_SYMBOL user TO_SYMBOL user list_638

    revokeStatement ::= REVOKE_SYMBOL opt_639 grp_640 opt_645

    aclType ::= TABLE_SYMBOL
           | FUNCTION_SYMBOL
           | PROCEDURE_SYMBOL

    roleOrPrivilegesList ::= roleOrPrivilege list_647

    roleOrPrivilege ::= grp_648
           | grp_651 opt_652
           | grp_653
           | GRANT_SYMBOL OPTION_SYMBOL
           | SHOW_SYMBOL DATABASES_SYMBOL
           | CREATE_SYMBOL opt_656
           | LOCK_SYMBOL TABLES_SYMBOL
           | REPLICATION_SYMBOL grp_657
           | SHOW_SYMBOL VIEW_SYMBOL
           | ALTER_SYMBOL opt_658
           | grp_659 ROLE_SYMBOL

    grantIdentifier ::= MULT_OPERATOR opt_661
           | schemaRef opt_663
           | tableRef
           | schemaRef DOT_SYMBOL tableRef

    requireList ::= requireListElement list_666

    requireListElement ::= CIPHER_SYMBOL textString
           | ISSUER_SYMBOL textString
           | SUBJECT_SYMBOL textString

    grantOption ::= GRANT_SYMBOL OPTION_SYMBOL
           | grp_667

    setRoleStatement ::= SET_SYMBOL ROLE_SYMBOL roleList
           | SET_SYMBOL ROLE_SYMBOL grp_668
           | SET_SYMBOL DEFAULT_SYMBOL ROLE_SYMBOL grp_669 TO_SYMBOL roleList
           | SET_SYMBOL ROLE_SYMBOL ALL_SYMBOL opt_671

    roleList ::= role list_673

    role ::= roleIdentifierOrText opt_674

    tableAdministrationStatement ::= ANALYZE_SYMBOL opt_675 TABLE_SYMBOL tableRefList opt_676
           | CHECK_SYMBOL TABLE_SYMBOL tableRefList list_677
           | CHECKSUM_SYMBOL TABLE_SYMBOL tableRefList opt_679
           | OPTIMIZE_SYMBOL opt_680 grp_681 tableRefList
           | REPAIR_SYMBOL opt_682 TABLE_SYMBOL tableRefList list_683

    histogramAutoUpdate ::= grp_684 UPDATE_SYMBOL

    histogramUpdateParam ::= opt_685 opt_686
           | USING_SYMBOL DATA_SYMBOL textStringLiteral

    histogramNumBuckets ::= WITH_SYMBOL INT_NUMBER BUCKETS_SYMBOL

    histogram ::= UPDATE_SYMBOL HISTOGRAM_SYMBOL ON_SYMBOL identifierList histogramUpdateParam
           | DROP_SYMBOL HISTOGRAM_SYMBOL ON_SYMBOL identifierList

    checkOption ::= FOR_SYMBOL UPGRADE_SYMBOL
           | grp_687

    repairType ::= QUICK_SYMBOL
           | EXTENDED_SYMBOL
           | USE_FRM_SYMBOL

    uninstallStatement ::= UNINSTALL_SYMBOL grp_688

    installStatement ::= INSTALL_SYMBOL grp_691

    installOptionType ::= GLOBAL_SYMBOL
           | PERSIST_SYMBOL

    installSetRvalue ::= expr
           | ON_SYMBOL

    installSetValue ::= installOptionType lvalueVariable equal installSetRvalue

    installSetValueList ::= SET_SYMBOL installSetValue list_694

    setStatement ::= SET_SYMBOL startOptionValueList

    startOptionValueList ::= optionValueNoOptionType optionValueListContinued
           | TRANSACTION_SYMBOL transactionCharacteristics
           | optionType startOptionValueListFollowingOptionType
           | PASSWORD_SYMBOL opt_696 equal grp_697
           | PASSWORD_SYMBOL opt_703 TO_SYMBOL RANDOM_SYMBOL opt_704 opt_705

    transactionCharacteristics ::= transactionAccessMode opt_706
           | isolationLevel opt_708

    transactionAccessMode ::= READ_SYMBOL grp_709

    isolationLevel ::= ISOLATION_SYMBOL LEVEL_SYMBOL grp_710

    optionValueListContinued ::= list_713

    optionValueNoOptionType ::= lvalueVariable equal setExprOrDefault
           | charset grp_714
           | userVariable equal expr
           | AT_AT_SIGN_SYMBOL opt_715 lvalueVariable equal setExprOrDefault
           | NAMES_SYMBOL grp_716

    optionValue ::= optionType lvalueVariable equal setExprOrDefault
           | optionValueNoOptionType

    setSystemVariable ::= AT_AT_SIGN_SYMBOL opt_718 lvalueVariable

    startOptionValueListFollowingOptionType ::= optionValueFollowingOptionType optionValueListContinued
           | TRANSACTION_SYMBOL transactionCharacteristics

    optionValueFollowingOptionType ::= lvalueVariable equal setExprOrDefault

    setExprOrDefault ::= expr
           | DEFAULT_SYMBOL
           | ON_SYMBOL
           | ALL_SYMBOL
           | BINARY_SYMBOL
           | ROW_SYMBOL
           | SYSTEM_SYMBOL

    showDatabasesStatement ::= SHOW_SYMBOL DATABASES_SYMBOL opt_719

    showTablesStatement ::= SHOW_SYMBOL opt_720 TABLES_SYMBOL opt_721 opt_722

    showTriggersStatement ::= SHOW_SYMBOL opt_723 TRIGGERS_SYMBOL opt_724 opt_725

    showEventsStatement ::= SHOW_SYMBOL EVENTS_SYMBOL opt_726 opt_727

    showTableStatusStatement ::= SHOW_SYMBOL TABLE_SYMBOL STATUS_SYMBOL opt_728 opt_729

    showOpenTablesStatement ::= SHOW_SYMBOL OPEN_SYMBOL TABLES_SYMBOL opt_730 opt_731

    showParseTreeStatement ::= SHOW_SYMBOL PARSE_TREE_SYMBOL simpleStatement

    showPluginsStatement ::= SHOW_SYMBOL PLUGINS_SYMBOL

    showEngineLogsStatement ::= SHOW_SYMBOL ENGINE_SYMBOL engineOrAll LOGS_SYMBOL

    showEngineMutexStatement ::= SHOW_SYMBOL ENGINE_SYMBOL engineOrAll MUTEX_SYMBOL

    showEngineStatusStatement ::= SHOW_SYMBOL ENGINE_SYMBOL engineOrAll STATUS_SYMBOL

    showColumnsStatement ::= SHOW_SYMBOL opt_732 COLUMNS_SYMBOL grp_733 tableRef opt_734 opt_735

    showBinaryLogsStatement ::= SHOW_SYMBOL grp_736 LOGS_SYMBOL

    showBinaryLogStatusStatement ::= SHOW_SYMBOL BINARY_SYMBOL LOG_SYMBOL STATUS_SYMBOL

    showReplicasStatement ::= SHOW_SYMBOL grp_737

    showBinlogEventsStatement ::= SHOW_SYMBOL BINLOG_SYMBOL EVENTS_SYMBOL opt_739 opt_741 opt_742 opt_743

    showRelaylogEventsStatement ::= SHOW_SYMBOL RELAYLOG_SYMBOL EVENTS_SYMBOL opt_745 opt_747 opt_748 opt_749

    showKeysStatement ::= SHOW_SYMBOL opt_750 grp_751 fromOrIn tableRef opt_752 opt_753

    showEnginesStatement ::= SHOW_SYMBOL opt_754 ENGINES_SYMBOL

    showCountWarningsStatement ::= SHOW_SYMBOL COUNT_SYMBOL OPEN_PAR_SYMBOL MULT_OPERATOR CLOSE_PAR_SYMBOL WARNINGS_SYMBOL

    showCountErrorsStatement ::= SHOW_SYMBOL COUNT_SYMBOL OPEN_PAR_SYMBOL MULT_OPERATOR CLOSE_PAR_SYMBOL ERRORS_SYMBOL

    showWarningsStatement ::= SHOW_SYMBOL WARNINGS_SYMBOL opt_755

    showErrorsStatement ::= SHOW_SYMBOL ERRORS_SYMBOL opt_756

    showProfilesStatement ::= SHOW_SYMBOL PROFILES_SYMBOL

    showProfileStatement ::= SHOW_SYMBOL PROFILE_SYMBOL opt_757 opt_759 opt_760

    showStatusStatement ::= SHOW_SYMBOL opt_761 STATUS_SYMBOL opt_762

    showProcessListStatement ::= SHOW_SYMBOL opt_763 PROCESSLIST_SYMBOL

    showVariablesStatement ::= SHOW_SYMBOL opt_764 VARIABLES_SYMBOL opt_765

    showCharacterSetStatement ::= SHOW_SYMBOL charset opt_766

    showCollationStatement ::= SHOW_SYMBOL COLLATION_SYMBOL opt_767

    showPrivilegesStatement ::= SHOW_SYMBOL PRIVILEGES_SYMBOL

    showGrantsStatement ::= SHOW_SYMBOL GRANTS_SYMBOL opt_771

    showCreateDatabaseStatement ::= SHOW_SYMBOL CREATE_SYMBOL DATABASE_SYMBOL opt_772 schemaRef

    showCreateTableStatement ::= SHOW_SYMBOL CREATE_SYMBOL TABLE_SYMBOL tableRef

    showCreateViewStatement ::= SHOW_SYMBOL CREATE_SYMBOL VIEW_SYMBOL viewRef

    showMasterStatusStatement ::= SHOW_SYMBOL MASTER_SYMBOL STATUS_SYMBOL

    showReplicaStatusStatement ::= SHOW_SYMBOL replica STATUS_SYMBOL opt_773

    showCreateProcedureStatement ::= SHOW_SYMBOL CREATE_SYMBOL PROCEDURE_SYMBOL procedureRef

    showCreateFunctionStatement ::= SHOW_SYMBOL CREATE_SYMBOL FUNCTION_SYMBOL functionRef

    showCreateTriggerStatement ::= SHOW_SYMBOL CREATE_SYMBOL TRIGGER_SYMBOL triggerRef

    showCreateProcedureStatusStatement ::= SHOW_SYMBOL CREATE_SYMBOL PROCEDURE_SYMBOL STATUS_SYMBOL opt_774

    showCreateFunctionStatusStatement ::= SHOW_SYMBOL CREATE_SYMBOL FUNCTION_SYMBOL STATUS_SYMBOL opt_775

    showCreateProcedureCodeStatement ::= SHOW_SYMBOL CREATE_SYMBOL PROCEDURE_SYMBOL CODE_SYMBOL procedureRef

    showCreateFunctionCodeStatement ::= SHOW_SYMBOL CREATE_SYMBOL FUNCTION_SYMBOL CODE_SYMBOL functionRef

    showCreateEventStatement ::= SHOW_SYMBOL CREATE_SYMBOL EVENT_SYMBOL eventRef

    showCreateUserStatement ::= SHOW_SYMBOL CREATE_SYMBOL USER_SYMBOL user

    showCommandType ::= FULL_SYMBOL
           | EXTENDED_SYMBOL opt_776

    engineOrAll ::= engineRef
           | ALL_SYMBOL

    fromOrIn ::= FROM_SYMBOL
           | IN_SYMBOL

    inDb ::= fromOrIn identifier

    profileDefinitions ::= profileDefinition list_778

    profileDefinition ::= BLOCK_SYMBOL IO_SYMBOL
           | CONTEXT_SYMBOL SWITCHES_SYMBOL
           | PAGE_SYMBOL FAULTS_SYMBOL
           | grp_779

    otherAdministrativeStatement ::= BINLOG_SYMBOL textLiteral
           | CACHE_SYMBOL INDEX_SYMBOL keyCacheListOrParts IN_SYMBOL grp_780
           | FLUSH_SYMBOL opt_781 grp_782
           | KILL_SYMBOL opt_786 expr
           | LOAD_SYMBOL INDEX_SYMBOL INTO_SYMBOL CACHE_SYMBOL preloadTail
           | SHUTDOWN_SYMBOL

    keyCacheListOrParts ::= keyCacheList
           | assignToKeycachePartition

    keyCacheList ::= assignToKeycache list_788

    assignToKeycache ::= tableRef opt_789

    assignToKeycachePartition ::= tableRef PARTITION_SYMBOL OPEN_PAR_SYMBOL allOrPartitionNameList CLOSE_PAR_SYMBOL opt_790

    cacheKeyList ::= keyOrIndex OPEN_PAR_SYMBOL opt_791 CLOSE_PAR_SYMBOL

    keyUsageElement ::= identifier
           | PRIMARY_SYMBOL

    keyUsageList ::= keyUsageElement list_793

    flushOption ::= grp_794
           | opt_795 LOGS_SYMBOL
           | RELAY_SYMBOL LOGS_SYMBOL opt_796
           | OPTIMIZER_COSTS_SYMBOL

    logType ::= BINARY_SYMBOL
           | ENGINE_SYMBOL
           | ERROR_SYMBOL
           | GENERAL_SYMBOL
           | SLOW_SYMBOL

    flushTables ::= grp_797 opt_800

    flushTablesOptions ::= FOR_SYMBOL EXPORT_SYMBOL
           | WITH_SYMBOL READ_SYMBOL LOCK_SYMBOL

    preloadTail ::= tableRef adminPartition opt_801 opt_803
           | preloadList

    preloadList ::= preloadKeys list_805

    preloadKeys ::= tableRef opt_806 opt_808

    adminPartition ::= PARTITION_SYMBOL OPEN_PAR_SYMBOL allOrPartitionNameList CLOSE_PAR_SYMBOL

    resourceGroupManagement ::= createResourceGroup
           | alterResourceGroup
           | setResourceGroup
           | dropResourceGroup

    createResourceGroup ::= CREATE_SYMBOL RESOURCE_SYMBOL GROUP_SYMBOL identifier TYPE_SYMBOL opt_809 grp_810 opt_811 opt_812 opt_813

    resourceGroupVcpuList ::= VCPU_SYMBOL opt_814 vcpuNumOrRange list_817

    vcpuNumOrRange ::= INT_NUMBER opt_819

    resourceGroupPriority ::= THREAD_PRIORITY_SYMBOL opt_820 INT_NUMBER

    resourceGroupEnableDisable ::= ENABLE_SYMBOL
           | DISABLE_SYMBOL

    alterResourceGroup ::= ALTER_SYMBOL RESOURCE_SYMBOL GROUP_SYMBOL resourceGroupRef opt_821 opt_822 opt_823 opt_824

    setResourceGroup ::= SET_SYMBOL RESOURCE_SYMBOL GROUP_SYMBOL identifier opt_826

    threadIdList ::= real_ulong_number list_829

    dropResourceGroup ::= DROP_SYMBOL RESOURCE_SYMBOL GROUP_SYMBOL resourceGroupRef opt_830

    utilityStatement ::= describeStatement
           | explainStatement
           | helpCommand
           | useCommand
           | restartServer

    describeStatement ::= grp_831 tableRef opt_833

    explainStatement ::= grp_834 opt_835 opt_837 explainableStatement

    explainOptions ::= FORMAT_SYMBOL EQUAL_OPERATOR textOrIdentifier opt_838
           | EXTENDED_SYMBOL
           | ANALYZE_SYMBOL
           | ANALYZE_SYMBOL FORMAT_SYMBOL EQUAL_OPERATOR textOrIdentifier

    explainableStatement ::= selectStatement
           | deleteStatement
           | insertStatement
           | replaceStatement
           | updateStatement
           | FOR_SYMBOL CONNECTION_SYMBOL real_ulong_number

    explainInto ::= INTO_SYMBOL AT_SIGN_SYMBOL textOrIdentifier

    helpCommand ::= HELP_SYMBOL textOrIdentifier

    useCommand ::= USE_SYMBOL schemaRef

    restartServer ::= RESTART_SYMBOL

    expr ::= boolPri opt_842
           | NOT_SYMBOL expr
           | expr grp_843 expr
           | expr XOR_SYMBOL expr
           | expr grp_844 expr

    boolPri ::= predicate
           | boolPri IS_SYMBOL opt_845 NULL_SYMBOL
           | boolPri compOp predicate
           | boolPri compOp grp_846 subquery

    compOp ::= EQUAL_OPERATOR
           | NULL_SAFE_EQUAL_OPERATOR
           | GREATER_OR_EQUAL_OPERATOR
           | GREATER_THAN_OPERATOR
           | LESS_OR_EQUAL_OPERATOR
           | LESS_THAN_OPERATOR
           | NOT_EQUAL_OPERATOR

    predicate ::= bitExpr opt_850

    predicateOperations ::= IN_SYMBOL grp_851
           | BETWEEN_SYMBOL bitExpr AND_SYMBOL predicate
           | LIKE_SYMBOL simpleExpr opt_853
           | REGEXP_SYMBOL bitExpr

    bitExpr ::= simpleExpr
           | bitExpr BITWISE_XOR_OPERATOR bitExpr
           | bitExpr grp_854 bitExpr
           | bitExpr grp_855 bitExpr
           | bitExpr grp_856 INTERVAL_SYMBOL expr interval
           | bitExpr grp_857 bitExpr
           | bitExpr BITWISE_AND_OPERATOR bitExpr
           | bitExpr BITWISE_OR_OPERATOR bitExpr

    simpleExpr ::= columnRef opt_858
           | runtimeFunctionCall
           | functionCall
           | simpleExpr COLLATE_SYMBOL textOrIdentifier
           | literalOrNull
           | PARAM_MARKER
           | rvalueSystemOrUserVariable
           | inExpressionUserVariableAssignment
           | sumExpr
           | groupingOperation
           | windowFunctionCall
           | simpleExpr CONCAT_PIPES_SYMBOL simpleExpr
           | grp_859 simpleExpr
           | not2Rule simpleExpr
           | opt_860 OPEN_PAR_SYMBOL exprList CLOSE_PAR_SYMBOL
           | opt_861 subquery
           | OPEN_CURLY_SYMBOL identifier expr CLOSE_CURLY_SYMBOL
           | MATCH_SYMBOL identListArg AGAINST_SYMBOL OPEN_PAR_SYMBOL bitExpr opt_862 CLOSE_PAR_SYMBOL
           | BINARY_SYMBOL simpleExpr
           | CAST_SYMBOL OPEN_PAR_SYMBOL expr opt_864 AS_SYMBOL castType opt_865 CLOSE_PAR_SYMBOL
           | CAST_SYMBOL OPEN_PAR_SYMBOL expr AT_SYMBOL TIME_SYMBOL ZONE_SYMBOL opt_866 textStringLiteral AS_SYMBOL DATETIME_SYMBOL typeDatetimePrecision CLOSE_PAR_SYMBOL
           | CASE_SYMBOL opt_867 list_869 opt_870 END_SYMBOL
           | CONVERT_SYMBOL OPEN_PAR_SYMBOL expr COMMA_SYMBOL castType CLOSE_PAR_SYMBOL
           | CONVERT_SYMBOL OPEN_PAR_SYMBOL expr USING_SYMBOL charsetName CLOSE_PAR_SYMBOL
           | DEFAULT_SYMBOL OPEN_PAR_SYMBOL simpleIdentifier CLOSE_PAR_SYMBOL
           | VALUES_SYMBOL OPEN_PAR_SYMBOL simpleIdentifier CLOSE_PAR_SYMBOL
           | INTERVAL_SYMBOL expr interval PLUS_OPERATOR expr

    arrayCast ::= ARRAY_SYMBOL

    jsonOperator ::= JSON_SEPARATOR_SYMBOL textStringLiteral
           | JSON_UNQUOTED_SEPARATOR_SYMBOL textStringLiteral

    sumExpr ::= AVG_SYMBOL OPEN_PAR_SYMBOL opt_871 inSumExpr CLOSE_PAR_SYMBOL opt_872
           | grp_873 OPEN_PAR_SYMBOL inSumExpr CLOSE_PAR_SYMBOL opt_874
           | jsonFunction
           | ST_COLLECT_SYMBOL OPEN_PAR_SYMBOL opt_875 inSumExpr CLOSE_PAR_SYMBOL opt_876
           | COUNT_SYMBOL OPEN_PAR_SYMBOL grp_877 CLOSE_PAR_SYMBOL opt_879
           | grp_880 OPEN_PAR_SYMBOL opt_881 inSumExpr CLOSE_PAR_SYMBOL opt_882
           | grp_883 OPEN_PAR_SYMBOL inSumExpr CLOSE_PAR_SYMBOL opt_884
           | SUM_SYMBOL OPEN_PAR_SYMBOL DISTINCT_SYMBOL inSumExpr CLOSE_PAR_SYMBOL opt_885
           | GROUP_CONCAT_SYMBOL OPEN_PAR_SYMBOL opt_886 exprList opt_887 opt_889 CLOSE_PAR_SYMBOL opt_890

    groupingOperation ::= GROUPING_SYMBOL OPEN_PAR_SYMBOL exprList CLOSE_PAR_SYMBOL

    windowFunctionCall ::= grp_891 parentheses windowingClause
           | NTILE_SYMBOL grp_892 windowingClause
           | grp_893 OPEN_PAR_SYMBOL expr opt_894 CLOSE_PAR_SYMBOL opt_895 windowingClause
           | grp_896 exprWithParentheses opt_897 windowingClause
           | NTH_VALUE_SYMBOL OPEN_PAR_SYMBOL expr COMMA_SYMBOL simpleExpr CLOSE_PAR_SYMBOL opt_900 opt_901 windowingClause

    samplingMethod ::= SYSTEM_SYMBOL
           | BERNOULLI_SYMBOL

    samplingPercentage ::= ulonglongNumber
           | AT_SIGN_SYMBOL textOrIdentifier
           | PARAM_MARKER

    tablesampleClause ::= TABLESAMPLE_SYMBOL samplingMethod OPEN_PAR_SYMBOL samplingPercentage CLOSE_PAR_SYMBOL

    windowingClause ::= OVER_SYMBOL grp_902

    leadLagInfo ::= COMMA_SYMBOL grp_903 opt_905

    stableInteger ::= int64Literal
           | paramOrVar

    paramOrVar ::= PARAM_MARKER
           | identifier
           | AT_SIGN_SYMBOL textOrIdentifier

    nullTreatment ::= grp_906 NULLS_SYMBOL

    jsonFunction ::= JSON_ARRAYAGG_SYMBOL OPEN_PAR_SYMBOL inSumExpr CLOSE_PAR_SYMBOL opt_907
           | JSON_OBJECTAGG_SYMBOL OPEN_PAR_SYMBOL inSumExpr COMMA_SYMBOL inSumExpr CLOSE_PAR_SYMBOL opt_908

    inSumExpr ::= opt_909 expr

    identListArg ::= identList
           | OPEN_PAR_SYMBOL identList CLOSE_PAR_SYMBOL

    identList ::= simpleIdentifier list_911

    fulltextOptions ::= IN_SYMBOL BOOLEAN_SYMBOL MODE_SYMBOL
           | IN_SYMBOL NATURAL_SYMBOL LANGUAGE_SYMBOL MODE_SYMBOL opt_913
           | WITH_SYMBOL QUERY_SYMBOL EXPANSION_SYMBOL

    runtimeFunctionCall ::= CHAR_SYMBOL OPEN_PAR_SYMBOL exprList opt_915 CLOSE_PAR_SYMBOL
           | CURRENT_USER_SYMBOL opt_916
           | DATE_SYMBOL exprWithParentheses
           | DAY_SYMBOL exprWithParentheses
           | HOUR_SYMBOL exprWithParentheses
           | INSERT_SYMBOL OPEN_PAR_SYMBOL expr COMMA_SYMBOL expr COMMA_SYMBOL expr COMMA_SYMBOL expr CLOSE_PAR_SYMBOL
           | INTERVAL_SYMBOL OPEN_PAR_SYMBOL expr list_918 CLOSE_PAR_SYMBOL
           | JSON_VALUE_SYMBOL OPEN_PAR_SYMBOL simpleExpr COMMA_SYMBOL textLiteral opt_919 onEmptyOrError CLOSE_PAR_SYMBOL
           | LEFT_SYMBOL OPEN_PAR_SYMBOL expr COMMA_SYMBOL expr CLOSE_PAR_SYMBOL
           | MINUTE_SYMBOL exprWithParentheses
           | MONTH_SYMBOL exprWithParentheses
           | RIGHT_SYMBOL OPEN_PAR_SYMBOL expr COMMA_SYMBOL expr CLOSE_PAR_SYMBOL
           | SECOND_SYMBOL exprWithParentheses
           | TIME_SYMBOL exprWithParentheses
           | TIMESTAMP_SYMBOL OPEN_PAR_SYMBOL expr opt_921 CLOSE_PAR_SYMBOL
           | trimFunction
           | userFunction
           | VALUES_SYMBOL exprWithParentheses
           | YEAR_SYMBOL exprWithParentheses
           | grp_922 OPEN_PAR_SYMBOL expr COMMA_SYMBOL grp_923 CLOSE_PAR_SYMBOL
           | CURDATE_SYMBOL opt_924
           | CURTIME_SYMBOL opt_925
           | grp_926 OPEN_PAR_SYMBOL expr COMMA_SYMBOL INTERVAL_SYMBOL expr interval CLOSE_PAR_SYMBOL
           | EXTRACT_SYMBOL OPEN_PAR_SYMBOL interval FROM_SYMBOL expr CLOSE_PAR_SYMBOL
           | GET_FORMAT_SYMBOL OPEN_PAR_SYMBOL dateTimeTtype COMMA_SYMBOL expr CLOSE_PAR_SYMBOL
           | LOG_SYMBOL OPEN_PAR_SYMBOL expr opt_928 CLOSE_PAR_SYMBOL
           | NOW_SYMBOL opt_929
           | POSITION_SYMBOL OPEN_PAR_SYMBOL bitExpr IN_SYMBOL expr CLOSE_PAR_SYMBOL
           | substringFunction
           | SYSDATE_SYMBOL opt_930
           | grp_931 OPEN_PAR_SYMBOL intervalTimeStamp COMMA_SYMBOL expr COMMA_SYMBOL expr CLOSE_PAR_SYMBOL
           | UTC_DATE_SYMBOL opt_932
           | UTC_TIME_SYMBOL opt_933
           | UTC_TIMESTAMP_SYMBOL opt_934
           | ASCII_SYMBOL exprWithParentheses
           | CHARSET_SYMBOL exprWithParentheses
           | COALESCE_SYMBOL exprListWithParentheses
           | COLLATION_SYMBOL exprWithParentheses
           | DATABASE_SYMBOL parentheses
           | IF_SYMBOL OPEN_PAR_SYMBOL expr COMMA_SYMBOL expr COMMA_SYMBOL expr CLOSE_PAR_SYMBOL
           | FORMAT_SYMBOL OPEN_PAR_SYMBOL expr COMMA_SYMBOL expr opt_936 CLOSE_PAR_SYMBOL
           | MICROSECOND_SYMBOL exprWithParentheses
           | MOD_SYMBOL OPEN_PAR_SYMBOL expr COMMA_SYMBOL expr CLOSE_PAR_SYMBOL
           | PASSWORD_SYMBOL exprWithParentheses
           | QUARTER_SYMBOL exprWithParentheses
           | REPEAT_SYMBOL OPEN_PAR_SYMBOL expr COMMA_SYMBOL expr CLOSE_PAR_SYMBOL
           | REPLACE_SYMBOL OPEN_PAR_SYMBOL expr COMMA_SYMBOL expr COMMA_SYMBOL expr CLOSE_PAR_SYMBOL
           | REVERSE_SYMBOL exprWithParentheses
           | ROW_COUNT_SYMBOL parentheses
           | TRUNCATE_SYMBOL OPEN_PAR_SYMBOL expr COMMA_SYMBOL expr CLOSE_PAR_SYMBOL
           | WEEK_SYMBOL OPEN_PAR_SYMBOL expr opt_938 CLOSE_PAR_SYMBOL
           | WEIGHT_STRING_SYMBOL OPEN_PAR_SYMBOL expr grp_939 CLOSE_PAR_SYMBOL
           | geometryFunction

    returningType ::= RETURNING_SYMBOL castType

    geometryFunction ::= GEOMETRYCOLLECTION_SYMBOL OPEN_PAR_SYMBOL opt_942 CLOSE_PAR_SYMBOL
           | LINESTRING_SYMBOL exprListWithParentheses
           | MULTILINESTRING_SYMBOL exprListWithParentheses
           | MULTIPOINT_SYMBOL exprListWithParentheses
           | MULTIPOLYGON_SYMBOL exprListWithParentheses
           | POINT_SYMBOL OPEN_PAR_SYMBOL expr COMMA_SYMBOL expr CLOSE_PAR_SYMBOL
           | POLYGON_SYMBOL exprListWithParentheses

    timeFunctionParameters ::= OPEN_PAR_SYMBOL opt_943 CLOSE_PAR_SYMBOL

    fractionalPrecision ::= INT_NUMBER

    weightStringLevels ::= LEVEL_SYMBOL grp_944

    weightStringLevelListItem ::= real_ulong_number opt_950

    dateTimeTtype ::= DATE_SYMBOL
           | TIME_SYMBOL
           | DATETIME_SYMBOL
           | TIMESTAMP_SYMBOL

    trimFunction ::= TRIM_SYMBOL OPEN_PAR_SYMBOL grp_951 CLOSE_PAR_SYMBOL

    substringFunction ::= SUBSTRING_SYMBOL OPEN_PAR_SYMBOL expr grp_957 CLOSE_PAR_SYMBOL

    functionCall ::= pureIdentifier OPEN_PAR_SYMBOL opt_962 CLOSE_PAR_SYMBOL
           | qualifiedIdentifier OPEN_PAR_SYMBOL opt_963 CLOSE_PAR_SYMBOL

    udfExprList ::= udfExpr list_965

    udfExpr ::= expr opt_966

    userVariable ::= AT_SIGN_SYMBOL textOrIdentifier
           | AT_TEXT_SUFFIX

    inExpressionUserVariableAssignment ::= userVariable ASSIGN_OPERATOR expr

    rvalueSystemOrUserVariable ::= userVariable
           | AT_AT_SIGN_SYMBOL opt_967 rvalueSystemVariable

    lvalueVariable ::= grp_968
           | DEFAULT_SYMBOL dotIdentifier

    rvalueSystemVariable ::= textOrIdentifier opt_971

    whenExpression ::= WHEN_SYMBOL expr

    thenExpression ::= THEN_SYMBOL expr

    elseExpression ::= ELSE_SYMBOL expr

    castType ::= BINARY_SYMBOL opt_972
           | CHAR_SYMBOL opt_973 opt_974
           | nchar opt_975
           | SIGNED_SYMBOL opt_976
           | UNSIGNED_SYMBOL opt_977
           | DATE_SYMBOL
           | YEAR_SYMBOL
           | TIME_SYMBOL opt_978
           | DATETIME_SYMBOL opt_979
           | DECIMAL_SYMBOL opt_980
           | JSON_SYMBOL
           | realType
           | FLOAT_SYMBOL opt_981
           | grp_982

    exprList ::= expr list_984

    charset ::= CHAR_SYMBOL SET_SYMBOL
           | CHARSET_SYMBOL

    notRule ::= NOT_SYMBOL
           | NOT2_SYMBOL

    not2Rule ::= LOGICAL_NOT_OPERATOR
           | NOT2_SYMBOL

    interval ::= intervalTimeStamp
           | grp_985

    intervalTimeStamp ::= MICROSECOND_SYMBOL
           | SECOND_SYMBOL
           | MINUTE_SYMBOL
           | HOUR_SYMBOL
           | DAY_SYMBOL
           | WEEK_SYMBOL
           | MONTH_SYMBOL
           | QUARTER_SYMBOL
           | YEAR_SYMBOL

    exprListWithParentheses ::= OPEN_PAR_SYMBOL exprList CLOSE_PAR_SYMBOL

    exprWithParentheses ::= OPEN_PAR_SYMBOL expr CLOSE_PAR_SYMBOL

    simpleExprWithParentheses ::= OPEN_PAR_SYMBOL simpleExpr CLOSE_PAR_SYMBOL

    orderList ::= orderExpression list_987

    orderExpression ::= expr opt_988

    groupList ::= groupingExpression list_990

    groupingExpression ::= expr

    channel ::= FOR_SYMBOL CHANNEL_SYMBOL textStringNoLinebreak

    compoundStatement ::= simpleStatement
           | returnStatement
           | ifStatement
           | caseStatement
           | labeledBlock
           | unlabeledBlock
           | labeledControl
           | unlabeledControl
           | leaveStatement
           | iterateStatement
           | cursorOpen
           | cursorFetch
           | cursorClose

    returnStatement ::= RETURN_SYMBOL expr

    ifStatement ::= IF_SYMBOL ifBody END_SYMBOL IF_SYMBOL

    ifBody ::= expr thenStatement opt_992

    thenStatement ::= THEN_SYMBOL compoundStatementList

    compoundStatementList ::= list_994

    caseStatement ::= CASE_SYMBOL opt_995 list_997 opt_998 END_SYMBOL CASE_SYMBOL

    elseStatement ::= ELSE_SYMBOL compoundStatementList

    labeledBlock ::= label beginEndBlock opt_999

    unlabeledBlock ::= beginEndBlock

    label ::= labelIdentifier COLON_SYMBOL

    beginEndBlock ::= BEGIN_SYMBOL opt_1000 opt_1001 END_SYMBOL

    labeledControl ::= label unlabeledControl opt_1002

    unlabeledControl ::= loopBlock
           | whileDoBlock
           | repeatUntilBlock

    loopBlock ::= LOOP_SYMBOL compoundStatementList END_SYMBOL LOOP_SYMBOL

    whileDoBlock ::= WHILE_SYMBOL expr DO_SYMBOL compoundStatementList END_SYMBOL WHILE_SYMBOL

    repeatUntilBlock ::= REPEAT_SYMBOL compoundStatementList UNTIL_SYMBOL expr END_SYMBOL REPEAT_SYMBOL

    spDeclarations ::= list_1004

    spDeclaration ::= variableDeclaration
           | conditionDeclaration
           | handlerDeclaration
           | cursorDeclaration

    variableDeclaration ::= DECLARE_SYMBOL identifierList dataType opt_1005 opt_1007

    conditionDeclaration ::= DECLARE_SYMBOL identifier CONDITION_SYMBOL FOR_SYMBOL spCondition

    spCondition ::= ulong_number
           | sqlstate

    sqlstate ::= SQLSTATE_SYMBOL opt_1008 textLiteral

    handlerDeclaration ::= DECLARE_SYMBOL grp_1009 HANDLER_SYMBOL FOR_SYMBOL handlerCondition list_1011 compoundStatement

    handlerCondition ::= spCondition
           | identifier
           | SQLWARNING_SYMBOL
           | notRule FOUND_SYMBOL
           | SQLEXCEPTION_SYMBOL

    cursorDeclaration ::= DECLARE_SYMBOL identifier CURSOR_SYMBOL FOR_SYMBOL selectStatement

    iterateStatement ::= ITERATE_SYMBOL labelRef

    leaveStatement ::= LEAVE_SYMBOL labelRef

    getDiagnosticsStatement ::= GET_SYMBOL opt_1013 DIAGNOSTICS_SYMBOL grp_1014

    signalAllowedExpr ::= literal
           | rvalueSystemOrUserVariable
           | qualifiedIdentifier

    statementInformationItem ::= grp_1019 EQUAL_OPERATOR grp_1020

    conditionInformationItem ::= grp_1021 EQUAL_OPERATOR grp_1022

    signalInformationItemName ::= CLASS_ORIGIN_SYMBOL
           | SUBCLASS_ORIGIN_SYMBOL
           | CONSTRAINT_CATALOG_SYMBOL
           | CONSTRAINT_SCHEMA_SYMBOL
           | CONSTRAINT_NAME_SYMBOL
           | CATALOG_NAME_SYMBOL
           | SCHEMA_NAME_SYMBOL
           | TABLE_NAME_SYMBOL
           | COLUMN_NAME_SYMBOL
           | CURSOR_NAME_SYMBOL
           | MESSAGE_TEXT_SYMBOL
           | MYSQL_ERRNO_SYMBOL

    signalStatement ::= SIGNAL_SYMBOL grp_1023 opt_1027

    resignalStatement ::= RESIGNAL_SYMBOL opt_1029 opt_1033

    signalInformationItem ::= signalInformationItemName EQUAL_OPERATOR signalAllowedExpr

    cursorOpen ::= OPEN_SYMBOL identifier

    cursorClose ::= CLOSE_SYMBOL identifier

    cursorFetch ::= FETCH_SYMBOL opt_1036 identifier INTO_SYMBOL identifierList

    schedule ::= AT_SYMBOL expr
           | EVERY_SYMBOL expr interval opt_1038 opt_1040

    columnDefinition ::= columnName fieldDefinition opt_1041

    checkOrReferences ::= checkConstraint
           | references

    checkConstraint ::= CHECK_SYMBOL exprWithParentheses

    constraintEnforcement ::= opt_1042 ENFORCED_SYMBOL

    tableConstraintDef ::= grp_1043 opt_1044 keyListWithExpression list_1045
           | FULLTEXT_SYMBOL opt_1046 opt_1047 keyListWithExpression list_1048
           | SPATIAL_SYMBOL opt_1049 opt_1050 keyListWithExpression list_1051
           | opt_1052 grp_1053

    constraintName ::= CONSTRAINT_SYMBOL opt_1060

    fieldDefinition ::= dataType grp_1061

    columnAttribute ::= opt_1069 nullLiteral
           | NOT_SYMBOL SECONDARY_SYMBOL
           | DEFAULT_SYMBOL grp_1070
           | ON_SYMBOL UPDATE_SYMBOL NOW_SYMBOL opt_1071
           | AUTO_INCREMENT_SYMBOL
           | SERIAL_SYMBOL DEFAULT_SYMBOL VALUE_SYMBOL
           | opt_1072 KEY_SYMBOL
           | UNIQUE_SYMBOL opt_1073
           | COMMENT_SYMBOL textLiteral
           | collate
           | COLUMN_FORMAT_SYMBOL columnFormat
           | STORAGE_SYMBOL storageMedia
           | SRID_SYMBOL real_ulonglong_number
           | opt_1074 checkConstraint
           | constraintEnforcement
           | ENGINE_ATTRIBUTE_SYMBOL opt_1075 jsonAttribute
           | SECONDARY_ENGINE_ATTRIBUTE_SYMBOL opt_1076 jsonAttribute
           | visibility

    columnFormat ::= FIXED_SYMBOL
           | DYNAMIC_SYMBOL
           | DEFAULT_SYMBOL

    storageMedia ::= DISK_SYMBOL
           | MEMORY_SYMBOL
           | DEFAULT_SYMBOL

    now ::= NOW_SYMBOL functionDatetimePrecision

    nowOrSignedLiteral ::= now
           | signedLiteralOrNull

    gcolAttribute ::= UNIQUE_SYMBOL opt_1077
           | COMMENT_SYMBOL textString
           | opt_1078 NULL_SYMBOL
           | opt_1079 KEY_SYMBOL

    references ::= REFERENCES_SYMBOL tableRef opt_1080 opt_1083 opt_1089

    deleteOption ::= grp_1090
           | SET_SYMBOL nullLiteral
           | SET_SYMBOL DEFAULT_SYMBOL
           | NO_SYMBOL ACTION_SYMBOL

    keyList ::= OPEN_PAR_SYMBOL keyPart list_1092 CLOSE_PAR_SYMBOL

    keyPart ::= identifier opt_1093 opt_1094

    keyListWithExpression ::= OPEN_PAR_SYMBOL keyPartOrExpression list_1096 CLOSE_PAR_SYMBOL

    keyPartOrExpression ::= keyPart
           | exprWithParentheses opt_1097

    indexType ::= grp_1098

    indexOption ::= commonIndexOption
           | indexTypeClause

    commonIndexOption ::= KEY_BLOCK_SIZE_SYMBOL opt_1099 ulong_number
           | COMMENT_SYMBOL textLiteral
           | visibility
           | ENGINE_ATTRIBUTE_SYMBOL opt_1100 jsonAttribute
           | SECONDARY_ENGINE_ATTRIBUTE_SYMBOL opt_1101 jsonAttribute

    visibility ::= VISIBLE_SYMBOL
           | INVISIBLE_SYMBOL

    indexTypeClause ::= grp_1102 indexType

    fulltextIndexOption ::= commonIndexOption
           | WITH_SYMBOL PARSER_SYMBOL identifier

    spatialIndexOption ::= commonIndexOption

    dataTypeDefinition ::= dataType

    dataType ::= grp_1103 opt_1104 opt_1105
           | grp_1106 opt_1108 opt_1109
           | grp_1110 opt_1111 opt_1112
           | BIT_SYMBOL opt_1113
           | grp_1114
           | CHAR_SYMBOL opt_1115 opt_1116
           | nchar opt_1117 opt_1118
           | BINARY_SYMBOL opt_1119
           | grp_1120 fieldLength opt_1121
           | grp_1122 fieldLength opt_1123
           | VARBINARY_SYMBOL fieldLength
           | YEAR_SYMBOL opt_1124 opt_1125
           | DATE_SYMBOL
           | TIME_SYMBOL opt_1126
           | TIMESTAMP_SYMBOL opt_1127
           | DATETIME_SYMBOL opt_1128
           | TINYBLOB_SYMBOL
           | BLOB_SYMBOL opt_1129
           | grp_1130
           | LONG_SYMBOL VARBINARY_SYMBOL
           | LONG_SYMBOL opt_1132 opt_1133
           | TINYTEXT_SYMBOL opt_1134
           | TEXT_SYMBOL opt_1135 opt_1136
           | MEDIUMTEXT_SYMBOL opt_1137
           | LONGTEXT_SYMBOL opt_1138
           | ENUM_SYMBOL stringList opt_1139
           | SET_SYMBOL stringList opt_1140
           | SERIAL_SYMBOL
           | JSON_SYMBOL
           | grp_1141

    nchar ::= NCHAR_SYMBOL
           | NATIONAL_SYMBOL CHAR_SYMBOL

    realType ::= REAL_SYMBOL
           | DOUBLE_SYMBOL opt_1142

    fieldLength ::= OPEN_PAR_SYMBOL grp_1143 CLOSE_PAR_SYMBOL

    fieldOptions ::= list_1145

    charsetWithOptBinary ::= ascii
           | unicode
           | BYTE_SYMBOL
           | charset charsetName opt_1146
           | BINARY_SYMBOL opt_1148

    ascii ::= ASCII_SYMBOL opt_1149
           | BINARY_SYMBOL ASCII_SYMBOL

    unicode ::= UNICODE_SYMBOL opt_1150
           | BINARY_SYMBOL UNICODE_SYMBOL

    wsNumCodepoints ::= OPEN_PAR_SYMBOL real_ulong_number CLOSE_PAR_SYMBOL

    typeDatetimePrecision ::= OPEN_PAR_SYMBOL INT_NUMBER CLOSE_PAR_SYMBOL

    functionDatetimePrecision ::= parentheses
           | OPEN_PAR_SYMBOL INT_NUMBER CLOSE_PAR_SYMBOL

    charsetName ::= textOrIdentifier
           | BINARY_SYMBOL

    collationName ::= textOrIdentifier
           | BINARY_SYMBOL

    createTableOptions ::= createTableOption list_1153

    createTableOptionsEtc ::= createTableOptions opt_1154
           | createPartitioningEtc

    createPartitioningEtc ::= partitionClause opt_1155
           | duplicateAsQe

    createTableOptionsSpaceSeparated ::= list_1156

    createTableOption ::= ENGINE_SYMBOL opt_1157 engineRef
           | SECONDARY_ENGINE_SYMBOL opt_1158 grp_1159
           | MAX_ROWS_SYMBOL opt_1160 ulonglongNumber
           | MIN_ROWS_SYMBOL opt_1161 ulonglongNumber
           | AVG_ROW_LENGTH_SYMBOL opt_1162 ulonglongNumber
           | PASSWORD_SYMBOL opt_1163 textStringLiteral
           | COMMENT_SYMBOL opt_1164 textStringLiteral
           | COMPRESSION_SYMBOL opt_1165 textString
           | ENCRYPTION_SYMBOL opt_1166 textString
           | AUTO_INCREMENT_SYMBOL opt_1167 ulonglongNumber
           | PACK_KEYS_SYMBOL opt_1168 ternaryOption
           | grp_1169 opt_1170 ternaryOption
           | grp_1171 opt_1172 ulong_number
           | DELAY_KEY_WRITE_SYMBOL opt_1173 ulong_number
           | ROW_FORMAT_SYMBOL opt_1174 grp_1175
           | UNION_SYMBOL opt_1176 OPEN_PAR_SYMBOL tableRefList CLOSE_PAR_SYMBOL
           | defaultCharset
           | defaultCollation
           | INSERT_METHOD_SYMBOL opt_1177 grp_1178
           | DATA_SYMBOL DIRECTORY_SYMBOL opt_1179 textString
           | INDEX_SYMBOL DIRECTORY_SYMBOL opt_1180 textString
           | TABLESPACE_SYMBOL opt_1181 identifier
           | STORAGE_SYMBOL grp_1182
           | CONNECTION_SYMBOL opt_1183 textString
           | KEY_BLOCK_SIZE_SYMBOL opt_1184 ulonglongNumber
           | START_SYMBOL TRANSACTION_SYMBOL
           | ENGINE_ATTRIBUTE_SYMBOL opt_1185 jsonAttribute
           | SECONDARY_ENGINE_ATTRIBUTE_SYMBOL opt_1186 jsonAttribute
           | tsOptionAutoextendSize

    ternaryOption ::= ulong_number
           | DEFAULT_SYMBOL

    defaultCollation ::= opt_1187 COLLATE_SYMBOL opt_1188 collationName

    defaultEncryption ::= opt_1189 ENCRYPTION_SYMBOL opt_1190 textStringLiteral

    defaultCharset ::= opt_1191 charset opt_1192 charsetName

    partitionClause ::= PARTITION_SYMBOL BY_SYMBOL partitionTypeDef opt_1194 opt_1195 opt_1196

    partitionTypeDef ::= opt_1197 KEY_SYMBOL opt_1198 OPEN_PAR_SYMBOL opt_1199 CLOSE_PAR_SYMBOL
           | opt_1200 HASH_SYMBOL OPEN_PAR_SYMBOL bitExpr CLOSE_PAR_SYMBOL
           | grp_1201 grp_1202

    subPartitions ::= SUBPARTITION_SYMBOL BY_SYMBOL opt_1204 grp_1205 opt_1208

    partitionKeyAlgorithm ::= ALGORITHM_SYMBOL EQUAL_OPERATOR real_ulong_number

    partitionDefinitions ::= OPEN_PAR_SYMBOL partitionDefinition list_1210 CLOSE_PAR_SYMBOL

    partitionDefinition ::= PARTITION_SYMBOL identifier opt_1213 list_1214 opt_1218

    partitionValuesIn ::= partitionValueItemListParen
           | OPEN_PAR_SYMBOL partitionValueItemListParen list_1220 CLOSE_PAR_SYMBOL

    partitionOption ::= TABLESPACE_SYMBOL opt_1221 identifier
           | opt_1222 ENGINE_SYMBOL opt_1223 engineRef
           | NODEGROUP_SYMBOL opt_1224 real_ulong_number
           | grp_1225 opt_1226 real_ulong_number
           | grp_1227 DIRECTORY_SYMBOL opt_1228 textLiteral
           | COMMENT_SYMBOL opt_1229 textLiteral

    subpartitionDefinition ::= SUBPARTITION_SYMBOL textOrIdentifier list_1230

    partitionValueItemListParen ::= OPEN_PAR_SYMBOL partitionValueItem list_1232 CLOSE_PAR_SYMBOL

    partitionValueItem ::= bitExpr
           | MAXVALUE_SYMBOL

    definerClause ::= DEFINER_SYMBOL EQUAL_OPERATOR user

    ifExists ::= IF_SYMBOL EXISTS_SYMBOL

    ifExistsIdentifier ::= ifExists persistedVariableIdentifier

    persistedVariableIdentifier ::= identifier
           | grp_1233

    ifNotExists ::= IF_SYMBOL notRule EXISTS_SYMBOL

    ignoreUnknownUser ::= IGNORE_SYMBOL UNKNOWN_SYMBOL USER_SYMBOL

    procedureParameter ::= opt_1235 functionParameter

    functionParameter ::= parameterName typeWithOptCollate

    collate ::= COLLATE_SYMBOL collationName

    typeWithOptCollate ::= dataType opt_1236

    schemaIdentifierPair ::= OPEN_PAR_SYMBOL schemaRef COMMA_SYMBOL schemaRef CLOSE_PAR_SYMBOL

    viewRefList ::= viewRef list_1238

    updateList ::= updateElement list_1240

    updateElement ::= columnRef EQUAL_OPERATOR grp_1241

    charsetClause ::= charset charsetName

    fieldsClause ::= COLUMNS_SYMBOL list_1242

    fieldTerm ::= TERMINATED_SYMBOL BY_SYMBOL textString
           | opt_1243 ENCLOSED_SYMBOL BY_SYMBOL textString
           | ESCAPED_SYMBOL BY_SYMBOL textString

    linesClause ::= LINES_SYMBOL list_1244

    lineTerm ::= grp_1245 BY_SYMBOL textString

    userList ::= user list_1247

    createUserList ::= createUser list_1249

    createUser ::= user opt_1253

    createUserWithMfa ::= AND_SYMBOL identification opt_1255

    identification ::= identifiedByPassword
           | identifiedByRandomPassword
           | identifiedWithPlugin
           | identifiedWithPluginAsAuth
           | identifiedWithPluginByPassword
           | identifiedWithPluginByRandomPassword

    identifiedByPassword ::= IDENTIFIED_SYMBOL BY_SYMBOL textStringLiteral

    identifiedByRandomPassword ::= IDENTIFIED_SYMBOL BY_SYMBOL RANDOM_SYMBOL PASSWORD_SYMBOL

    identifiedWithPlugin ::= IDENTIFIED_SYMBOL WITH_SYMBOL textOrIdentifier

    identifiedWithPluginAsAuth ::= IDENTIFIED_SYMBOL WITH_SYMBOL textOrIdentifier AS_SYMBOL textStringHash

    identifiedWithPluginByPassword ::= IDENTIFIED_SYMBOL WITH_SYMBOL textOrIdentifier BY_SYMBOL textStringLiteral

    identifiedWithPluginByRandomPassword ::= IDENTIFIED_SYMBOL WITH_SYMBOL textOrIdentifier BY_SYMBOL RANDOM_SYMBOL PASSWORD_SYMBOL

    initialAuth ::= INITIAL_SYMBOL AUTHENTICATION_SYMBOL grp_1256

    retainCurrentPassword ::= RETAIN_SYMBOL CURRENT_SYMBOL PASSWORD_SYMBOL

    discardOldPassword ::= DISCARD_SYMBOL OLD_SYMBOL PASSWORD_SYMBOL

    userRegistration ::= factor INITIATE_SYMBOL REGISTRATION_SYMBOL
           | factor UNREGISTER_SYMBOL
           | factor FINISH_SYMBOL REGISTRATION_SYMBOL SET_SYMBOL CHALLENGE_RESPONSE_SYMBOL AS_SYMBOL textStringHash

    factor ::= numLiteral FACTOR_SYMBOL

    replacePassword ::= REPLACE_SYMBOL textString

    userIdentifierOrText ::= textOrIdentifier opt_1257

    user ::= userIdentifierOrText
           | CURRENT_USER_SYMBOL opt_1258

    likeClause ::= LIKE_SYMBOL textStringLiteral

    likeOrWhere ::= likeClause
           | whereClause

    onlineOption ::= ONLINE_SYMBOL
           | OFFLINE_SYMBOL

    noWriteToBinLog ::= LOCAL_SYMBOL
           | NO_WRITE_TO_BINLOG_SYMBOL

    usePartition ::= PARTITION_SYMBOL identifierListWithParentheses

    fieldIdentifier ::= dotIdentifier
           | qualifiedIdentifier opt_1259

    columnName ::= identifier

    columnInternalRef ::= identifier

    columnInternalRefList ::= OPEN_PAR_SYMBOL columnInternalRef list_1261 CLOSE_PAR_SYMBOL

    columnRef ::= fieldIdentifier

    insertIdentifier ::= columnRef
           | tableWild

    indexName ::= identifier

    indexRef ::= fieldIdentifier

    tableWild ::= identifier DOT_SYMBOL opt_1263 MULT_OPERATOR

    schemaName ::= identifier

    schemaRef ::= identifier

    procedureName ::= qualifiedIdentifier

    procedureRef ::= qualifiedIdentifier

    functionName ::= qualifiedIdentifier

    functionRef ::= qualifiedIdentifier

    triggerName ::= qualifiedIdentifier

    triggerRef ::= qualifiedIdentifier

    viewName ::= qualifiedIdentifier
           | dotIdentifier

    viewRef ::= qualifiedIdentifier
           | dotIdentifier

    tablespaceName ::= identifier

    tablespaceRef ::= identifier

    logfileGroupName ::= identifier

    logfileGroupRef ::= identifier

    eventName ::= qualifiedIdentifier

    eventRef ::= qualifiedIdentifier

    udfName ::= identifier

    serverName ::= textOrIdentifier

    serverRef ::= textOrIdentifier

    engineRef ::= textOrIdentifier

    tableName ::= qualifiedIdentifier
           | dotIdentifier

    filterTableRef ::= schemaRef dotIdentifier

    tableRefWithWildcard ::= identifier opt_1267

    tableRef ::= qualifiedIdentifier
           | dotIdentifier

    tableRefList ::= tableRef list_1269

    tableAliasRefList ::= tableRefWithWildcard list_1271

    parameterName ::= identifier

    labelIdentifier ::= pureIdentifier
           | labelKeyword

    labelRef ::= labelIdentifier

    roleIdentifier ::= pureIdentifier
           | roleKeyword

    pluginRef ::= identifier

    componentRef ::= textStringLiteral

    resourceGroupRef ::= identifier

    windowName ::= identifier

    pureIdentifier ::= grp_1272
           | DOUBLE_QUOTED_TEXT

    identifier ::=
           pureIdentifier

    identifierList ::= identifier list_1274

    identifierListWithParentheses ::= OPEN_PAR_SYMBOL identifierList CLOSE_PAR_SYMBOL

    qualifiedIdentifier ::= identifier opt_1275

    simpleIdentifier ::= identifier opt_1278

    dotIdentifier ::= DOT_SYMBOL identifier

    ulong_number ::= INT_NUMBER
           | HEX_NUMBER
           | LONG_NUMBER
           | ULONGLONG_NUMBER
           | DECIMAL_NUMBER
           | FLOAT_NUMBER

    real_ulong_number ::= INT_NUMBER
           | HEX_NUMBER
           | LONG_NUMBER
           | ULONGLONG_NUMBER

    ulonglongNumber ::= INT_NUMBER
           | LONG_NUMBER
           | ULONGLONG_NUMBER
           | DECIMAL_NUMBER
           | FLOAT_NUMBER

    real_ulonglong_number ::= INT_NUMBER
           | HEX_NUMBER
           | ULONGLONG_NUMBER
           | LONG_NUMBER

    signedLiteral ::= literal
           | PLUS_OPERATOR ulong_number
           | MINUS_OPERATOR ulong_number

    signedLiteralOrNull ::= signedLiteral
           | nullAsLiteral

    literal ::= textLiteral
           | numLiteral
           | temporalLiteral
           | nullLiteral
           | boolLiteral
           | opt_1279 grp_1280

    literalOrNull ::= literal
           | nullAsLiteral

    nullAsLiteral ::= NULL_SYMBOL

    stringList ::= OPEN_PAR_SYMBOL textString list_1282 CLOSE_PAR_SYMBOL

    textStringLiteral ::= SINGLE_QUOTED_TEXT
           | DOUBLE_QUOTED_TEXT

    textString ::= textStringLiteral
           | HEX_NUMBER
           | BIN_NUMBER

    textStringHash ::= textStringLiteral
           | HEX_NUMBER

    textLiteral ::= grp_1283 list_1285

    textStringNoLinebreak ::= textStringLiteral

    textStringLiteralList ::= textStringLiteral list_1287

    numLiteral ::= int64Literal
           | DECIMAL_NUMBER
           | FLOAT_NUMBER

    boolLiteral ::= TRUE_SYMBOL
           | FALSE_SYMBOL

    nullLiteral ::= NULL_SYMBOL
           | NULL2_SYMBOL

    int64Literal ::= INT_NUMBER
           | LONG_NUMBER
           | ULONGLONG_NUMBER

    temporalLiteral ::= DATE_SYMBOL SINGLE_QUOTED_TEXT
           | TIME_SYMBOL SINGLE_QUOTED_TEXT
           | TIMESTAMP_SYMBOL SINGLE_QUOTED_TEXT

    floatOptions ::= fieldLength
           | precision

    standardFloatOptions ::= precision

    precision ::= OPEN_PAR_SYMBOL INT_NUMBER COMMA_SYMBOL INT_NUMBER CLOSE_PAR_SYMBOL

    textOrIdentifier ::= identifier
           | textStringLiteral

    lValueIdentifier ::= pureIdentifier
           | lValueKeyword

    roleIdentifierOrText ::= roleIdentifier
           | textStringLiteral

    sizeNumber ::= real_ulonglong_number
           | pureIdentifier

    parentheses ::= OPEN_PAR_SYMBOL CLOSE_PAR_SYMBOL

    equal ::= EQUAL_OPERATOR
           | ASSIGN_OPERATOR

    optionType ::= PERSIST_SYMBOL
           | PERSIST_ONLY_SYMBOL
           | GLOBAL_SYMBOL
           | LOCAL_SYMBOL
           | SESSION_SYMBOL

    rvalueSystemVariableType ::= GLOBAL_SYMBOL DOT_SYMBOL
           | LOCAL_SYMBOL DOT_SYMBOL
           | SESSION_SYMBOL DOT_SYMBOL

    setVarIdentType ::= grp_1288 DOT_SYMBOL

    jsonAttribute ::= textStringLiteral

    identifierKeyword ::= grp_1289
           | grp_1290

    identifierKeywordsAmbiguous1RolesAndLabels ::= EXECUTE_SYMBOL
           | RESTART_SYMBOL
           | SHUTDOWN_SYMBOL

    identifierKeywordsAmbiguous2Labels ::= ASCII_SYMBOL
           | BEGIN_SYMBOL
           | BYTE_SYMBOL
           | CACHE_SYMBOL
           | CHARSET_SYMBOL
           | CHECKSUM_SYMBOL
           | CLONE_SYMBOL
           | COMMENT_SYMBOL
           | COMMIT_SYMBOL
           | CONTAINS_SYMBOL
           | DEALLOCATE_SYMBOL
           | DO_SYMBOL
           | END_SYMBOL
           | FLUSH_SYMBOL
           | FOLLOWS_SYMBOL
           | HANDLER_SYMBOL
           | HELP_SYMBOL
           | IMPORT_SYMBOL
           | INSTALL_SYMBOL
           | LANGUAGE_SYMBOL
           | NO_SYMBOL
           | PRECEDES_SYMBOL
           | PREPARE_SYMBOL
           | REPAIR_SYMBOL
           | RESET_SYMBOL
           | ROLLBACK_SYMBOL
           | SAVEPOINT_SYMBOL
           | SIGNED_SYMBOL
           | SLAVE_SYMBOL
           | START_SYMBOL
           | STOP_SYMBOL
           | TRUNCATE_SYMBOL
           | UNICODE_SYMBOL
           | UNINSTALL_SYMBOL
           | XA_SYMBOL

    labelKeyword ::= grp_1291
           | grp_1292

    identifierKeywordsAmbiguous3Roles ::= EVENT_SYMBOL
           | FILE_SYMBOL
           | NONE_SYMBOL
           | PROCESS_SYMBOL
           | PROXY_SYMBOL
           | RELOAD_SYMBOL
           | REPLICATION_SYMBOL
           | RESOURCE_SYMBOL
           | SUPER_SYMBOL

    identifierKeywordsUnambiguous ::= grp_1293
           | grp_1294
           | grp_1295

    roleKeyword ::= grp_1296
           | grp_1297

    lValueKeyword ::= identifierKeywordsUnambiguous
           | identifierKeywordsAmbiguous1RolesAndLabels
           | identifierKeywordsAmbiguous2Labels
           | identifierKeywordsAmbiguous3Roles

    identifierKeywordsAmbiguous4SystemVariables ::= GLOBAL_SYMBOL
           | LOCAL_SYMBOL
           | PERSIST_SYMBOL
           | PERSIST_ONLY_SYMBOL
           | SESSION_SYMBOL

    roleOrIdentifierKeyword ::= grp_1298

    roleOrLabelKeyword ::= grp_1299
           | ADMIN_SYMBOL

    list_1 ::= $empty | list_1 query

    grp_2 ::= simpleStatement | beginWork

    opt_4 ::= routineAlterOptions | $empty

    opt_5 ::= routineAlterOptions | $empty

    grp_3 ::= alterTable | alterDatabase | PROCEDURE_SYMBOL procedureRef opt_4 | FUNCTION_SYMBOL functionRef opt_5 | alterView | alterEvent | alterTablespace | alterUndoTablespace | alterLogfileGroup | alterServer | alterInstanceStatement

    list_6 ::= alterDatabaseOption | list_6 alterDatabaseOption

    opt_7 ::= EQUAL_OPERATOR | $empty

    opt_8 ::= definerClause | $empty

    seq_9 ::= ON_SYMBOL SCHEDULE_SYMBOL schedule

    opt_10 ::= seq_9 | $empty

    opt_11 ::= NOT_SYMBOL | $empty

    seq_12 ::= ON_SYMBOL COMPLETION_SYMBOL opt_11 PRESERVE_SYMBOL

    opt_13 ::= seq_12 | $empty

    seq_14 ::= RENAME_SYMBOL TO_SYMBOL qualifiedIdentifier

    opt_15 ::= seq_14 | $empty

    seq_17 ::= ON_SYMBOL replica

    opt_18 ::= seq_17 | $empty

    grp_16 ::= ENABLE_SYMBOL | DISABLE_SYMBOL opt_18

    opt_19 ::= grp_16 | $empty

    seq_20 ::= COMMENT_SYMBOL textLiteral

    opt_21 ::= seq_20 | $empty

    seq_22 ::= DO_SYMBOL compoundStatement

    opt_23 ::= seq_22 | $empty

    opt_24 ::= alterLogfileGroupOptions | $empty

    opt_25 ::= COMMA_SYMBOL | $empty

    seq_26 ::= opt_25 alterLogfileGroupOption

    list_27 ::= $empty | list_27 seq_26

    opt_28 ::= onlineOption | $empty

    opt_29 ::= alterTableActions | $empty

    grp_30 ::= partitionClause | removePartitioning

    opt_31 ::= grp_30 | $empty

    seq_32 ::= alterCommandsModifierList COMMA_SYMBOL

    opt_33 ::= seq_32 | $empty

    seq_34 ::= alterCommandsModifierList COMMA_SYMBOL

    opt_35 ::= seq_34 | $empty

    seq_36 ::= COMMA_SYMBOL alterCommandsModifier

    list_37 ::= $empty | list_37 seq_36

    grp_38 ::= SECONDARY_LOAD_SYMBOL | SECONDARY_UNLOAD_SYMBOL

    opt_39 ::= noWriteToBinLog | $empty

    grp_40 ::= partitionDefinitions | PARTITIONS_SYMBOL real_ulong_number

    opt_41 ::= noWriteToBinLog | $empty

    opt_42 ::= noWriteToBinLog | $empty

    opt_43 ::= noWriteToBinLog | $empty

    opt_44 ::= noWriteToBinLog | $empty

    list_45 ::= $empty | list_45 checkOption

    opt_46 ::= noWriteToBinLog | $empty

    list_47 ::= $empty | list_47 repairType

    opt_48 ::= noWriteToBinLog | $empty

    opt_49 ::= noWriteToBinLog | $empty

    seq_50 ::= identifierList INTO_SYMBOL partitionDefinitions

    opt_51 ::= seq_50 | $empty

    opt_52 ::= withValidation | $empty

    grp_53 ::= alterListItem | createTableOptionsSpaceSeparated

    grp_55 ::= alterListItem | alterCommandsModifier | createTableOptionsSpaceSeparated

    grp_54 ::= COMMA_SYMBOL grp_55

    list_56 ::= $empty | list_56 grp_54

    opt_57 ::= COLUMN_SYMBOL | $empty

    opt_59 ::= checkOrReferences | $empty

    opt_60 ::= place | $empty

    grp_58 ::= identifier fieldDefinition opt_59 opt_60 | OPEN_PAR_SYMBOL tableElementList CLOSE_PAR_SYMBOL

    opt_61 ::= COLUMN_SYMBOL | $empty

    opt_62 ::= place | $empty

    opt_63 ::= COLUMN_SYMBOL | $empty

    opt_64 ::= place | $empty

    opt_66 ::= COLUMN_SYMBOL | $empty

    opt_67 ::= restrict | $empty

    grp_65 ::= opt_66 columnInternalRef opt_67 | FOREIGN_SYMBOL KEY_SYMBOL columnInternalRef | PRIMARY_SYMBOL KEY_SYMBOL | keyOrIndex indexRef | CHECK_SYMBOL identifier | CONSTRAINT_SYMBOL identifier

    opt_68 ::= COLUMN_SYMBOL | $empty

    grp_70 ::= exprWithParentheses | signedLiteralOrNull

    grp_69 ::= SET_SYMBOL DEFAULT_SYMBOL grp_70 | DROP_SYMBOL DEFAULT_SYMBOL | SET_SYMBOL visibility

    grp_71 ::= TO_SYMBOL | AS_SYMBOL

    opt_72 ::= grp_71 | $empty

    grp_73 ::= DEFAULT_SYMBOL | charsetName

    opt_74 ::= collate | $empty

    opt_75 ::= direction | $empty

    opt_76 ::= direction | $empty

    seq_77 ::= COMMA_SYMBOL identifier opt_76

    list_78 ::= $empty | list_78 seq_77

    opt_79 ::= EQUAL_OPERATOR | $empty

    grp_80 ::= DEFAULT_SYMBOL | identifier

    opt_81 ::= EQUAL_OPERATOR | $empty

    grp_82 ::= DEFAULT_SYMBOL | identifier

    opt_83 ::= alterLockOption | $empty

    opt_84 ::= alterAlgorithmOption | $empty

    grp_85 ::= WITH_SYMBOL | WITHOUT_SYMBOL

    grp_87 ::= ADD_SYMBOL | DROP_SYMBOL

    opt_88 ::= alterTablespaceOptions | $empty

    grp_86 ::= grp_87 DATAFILE_SYMBOL textLiteral opt_88 | RENAME_SYMBOL TO_SYMBOL identifier | alterTablespaceOptions

    grp_89 ::= ACTIVE_SYMBOL | INACTIVE_SYMBOL

    opt_90 ::= undoTableSpaceOptions | $empty

    opt_91 ::= COMMA_SYMBOL | $empty

    seq_92 ::= opt_91 undoTableSpaceOption

    list_93 ::= $empty | list_93 seq_92

    opt_94 ::= COMMA_SYMBOL | $empty

    seq_95 ::= opt_94 alterTablespaceOption

    list_96 ::= $empty | list_96 seq_95

    opt_97 ::= EQUAL_OPERATOR | $empty

    opt_98 ::= EQUAL_OPERATOR | $empty

    opt_99 ::= viewAlgorithm | $empty

    opt_100 ::= definerClause | $empty

    opt_101 ::= viewSuid | $empty

    opt_102 ::= columnInternalRefList | $empty

    opt_103 ::= viewCheckOption | $empty

    grp_104 ::= CASCADED_SYMBOL | LOCAL_SYMBOL

    opt_105 ::= grp_104 | $empty

    seq_108 ::= NO_SYMBOL ROLLBACK_SYMBOL ON_SYMBOL ERROR_SYMBOL

    opt_109 ::= seq_108 | $empty

    grp_107 ::= NO_SYMBOL ROLLBACK_SYMBOL ON_SYMBOL ERROR_SYMBOL | FOR_SYMBOL CHANNEL_SYMBOL identifier opt_109

    grp_110 ::= ENABLE_SYMBOL | DISABLE_SYMBOL

    grp_106 ::= RELOAD_SYMBOL TLS_SYMBOL grp_107 | grp_110 identifier identifier | RELOAD_SYMBOL KEYRING_SYMBOL

    grp_111 ::= createDatabase | createTable | createFunction | createProcedure | createUdf | createLogfileGroup | createView | createTrigger | createIndex | createServer | createTablespace | createEvent | createRole | createSpatialReference | createUndoTablespace

    opt_112 ::= ifNotExists | $empty

    list_113 ::= $empty | list_113 createDatabaseOption

    opt_114 ::= TEMPORARY_SYMBOL | $empty

    opt_115 ::= ifNotExists | $empty

    seq_117 ::= OPEN_PAR_SYMBOL tableElementList CLOSE_PAR_SYMBOL

    opt_118 ::= seq_117 | $empty

    opt_119 ::= createTableOptionsEtc | $empty

    grp_116 ::= opt_118 opt_119 | LIKE_SYMBOL tableRef | OPEN_PAR_SYMBOL LIKE_SYMBOL tableRef CLOSE_PAR_SYMBOL

    seq_120 ::= COMMA_SYMBOL tableElement

    list_121 ::= $empty | list_121 seq_120

    grp_122 ::= REPLACE_SYMBOL | IGNORE_SYMBOL

    opt_123 ::= grp_122 | $empty

    opt_124 ::= AS_SYMBOL | $empty

    opt_125 ::= lockingClauseList | $empty

    opt_126 ::= lockingClauseList | $empty

    grp_127 ::= createProcedure | createFunction | createUdf

    opt_128 ::= SEMICOLON_SYMBOL | $empty

    opt_129 ::= definerClause | $empty

    opt_130 ::= ifNotExists | $empty

    seq_131 ::= COMMA_SYMBOL procedureParameter

    list_132 ::= $empty | list_132 seq_131

    seq_133 ::= procedureParameter list_132

    opt_134 ::= seq_133 | $empty

    list_135 ::= $empty | list_135 routineCreateOption

    opt_136 ::= definerClause | $empty

    opt_137 ::= ifNotExists | $empty

    seq_138 ::= COMMA_SYMBOL functionParameter

    list_139 ::= $empty | list_139 seq_138

    seq_140 ::= functionParameter list_139

    opt_141 ::= seq_140 | $empty

    list_142 ::= $empty | list_142 routineCreateOption

    opt_143 ::= AGGREGATE_SYMBOL | $empty

    opt_144 ::= ifNotExists | $empty

    grp_145 ::= STRING_SYMBOL | INT_SYMBOL | REAL_SYMBOL | DECIMAL_SYMBOL

    opt_146 ::= NOT_SYMBOL | $empty

    list_147 ::= routineCreateOption | list_147 routineCreateOption

    grp_148 ::= SQL_SYMBOL | identifier

    grp_149 ::= DEFINER_SYMBOL | INVOKER_SYMBOL

    opt_150 ::= onlineOption | $empty

    opt_152 ::= UNIQUE_SYMBOL | $empty

    opt_153 ::= indexTypeClause | $empty

    list_154 ::= $empty | list_154 indexOption

    list_155 ::= $empty | list_155 fulltextIndexOption

    list_156 ::= $empty | list_156 spatialIndexOption

    grp_151 ::= opt_152 INDEX_SYMBOL indexName opt_153 createIndexTarget list_154 | FULLTEXT_SYMBOL INDEX_SYMBOL indexName createIndexTarget list_155 | SPATIAL_SYMBOL INDEX_SYMBOL indexName createIndexTarget list_156

    opt_157 ::= indexLockAndAlgorithm | $empty

    opt_158 ::= indexName | $empty

    opt_159 ::= logfileGroupOptions | $empty

    opt_160 ::= COMMA_SYMBOL | $empty

    seq_161 ::= opt_160 logfileGroupOption

    list_162 ::= $empty | list_162 seq_161

    seq_163 ::= COMMA_SYMBOL serverOption

    list_164 ::= $empty | list_164 seq_163

    seq_165 ::= USE_SYMBOL LOGFILE_SYMBOL GROUP_SYMBOL logfileGroupRef

    opt_166 ::= seq_165 | $empty

    opt_167 ::= tablespaceOptions | $empty

    opt_168 ::= undoTableSpaceOptions | $empty

    seq_169 ::= ADD_SYMBOL tsDataFile

    opt_170 ::= seq_169 | $empty

    opt_171 ::= COMMA_SYMBOL | $empty

    seq_172 ::= opt_171 tablespaceOption

    list_173 ::= $empty | list_173 seq_172

    opt_174 ::= EQUAL_OPERATOR | $empty

    grp_175 ::= UNDO_BUFFER_SIZE_SYMBOL | REDO_BUFFER_SIZE_SYMBOL

    opt_176 ::= EQUAL_OPERATOR | $empty

    opt_177 ::= EQUAL_OPERATOR | $empty

    opt_178 ::= EQUAL_OPERATOR | $empty

    opt_179 ::= EQUAL_OPERATOR | $empty

    opt_180 ::= EQUAL_OPERATOR | $empty

    opt_181 ::= STORAGE_SYMBOL | $empty

    opt_182 ::= EQUAL_OPERATOR | $empty

    grp_183 ::= WAIT_SYMBOL | NO_WAIT_SYMBOL

    opt_184 ::= EQUAL_OPERATOR | $empty

    opt_185 ::= EQUAL_OPERATOR | $empty

    opt_186 ::= EQUAL_OPERATOR | $empty

    opt_187 ::= EQUAL_OPERATOR | $empty

    opt_188 ::= viewReplaceOrAlgorithm | $empty

    opt_189 ::= definerClause | $empty

    opt_190 ::= viewSuid | $empty

    opt_191 ::= viewAlgorithm | $empty

    grp_192 ::= UNDEFINED_SYMBOL | MERGE_SYMBOL | TEMPTABLE_SYMBOL

    grp_193 ::= DEFINER_SYMBOL | INVOKER_SYMBOL

    opt_194 ::= definerClause | $empty

    opt_195 ::= ifNotExists | $empty

    grp_196 ::= BEFORE_SYMBOL | AFTER_SYMBOL

    grp_197 ::= INSERT_SYMBOL | UPDATE_SYMBOL | DELETE_SYMBOL

    opt_198 ::= triggerFollowsPrecedesClause | $empty

    grp_199 ::= FOLLOWS_SYMBOL | PRECEDES_SYMBOL

    opt_200 ::= definerClause | $empty

    opt_201 ::= ifNotExists | $empty

    opt_202 ::= NOT_SYMBOL | $empty

    seq_203 ::= ON_SYMBOL COMPLETION_SYMBOL opt_202 PRESERVE_SYMBOL

    opt_204 ::= seq_203 | $empty

    seq_206 ::= ON_SYMBOL replica

    opt_207 ::= seq_206 | $empty

    grp_205 ::= ENABLE_SYMBOL | DISABLE_SYMBOL opt_207

    opt_208 ::= grp_205 | $empty

    seq_209 ::= COMMENT_SYMBOL textLiteral

    opt_210 ::= seq_209 | $empty

    opt_211 ::= ifNotExists | $empty

    list_212 ::= $empty | list_212 srsAttribute

    opt_213 ::= ifNotExists | $empty

    list_214 ::= $empty | list_214 srsAttribute

    grp_215 ::= dropDatabase | dropEvent | dropFunction | dropProcedure | dropIndex | dropLogfileGroup | dropServer | dropTable | dropTableSpace | dropTrigger | dropView | dropRole | dropSpatialReference | dropUndoTablespace

    opt_216 ::= ifExists | $empty

    opt_217 ::= ifExists | $empty

    opt_218 ::= ifExists | $empty

    opt_219 ::= ifExists | $empty

    opt_220 ::= onlineOption | $empty

    opt_221 ::= indexLockAndAlgorithm | $empty

    opt_222 ::= COMMA_SYMBOL | $empty

    seq_223 ::= opt_222 dropLogfileGroupOption

    list_224 ::= $empty | list_224 seq_223

    seq_225 ::= dropLogfileGroupOption list_224

    opt_226 ::= seq_225 | $empty

    opt_227 ::= ifExists | $empty

    opt_228 ::= TEMPORARY_SYMBOL | $empty

    grp_229 ::= TABLE_SYMBOL | TABLES_SYMBOL

    opt_230 ::= ifExists | $empty

    grp_231 ::= RESTRICT_SYMBOL | CASCADE_SYMBOL

    opt_232 ::= grp_231 | $empty

    opt_233 ::= COMMA_SYMBOL | $empty

    seq_234 ::= opt_233 dropLogfileGroupOption

    list_235 ::= $empty | list_235 seq_234

    seq_236 ::= dropLogfileGroupOption list_235

    opt_237 ::= seq_236 | $empty

    opt_238 ::= ifExists | $empty

    opt_239 ::= ifExists | $empty

    grp_240 ::= RESTRICT_SYMBOL | CASCADE_SYMBOL

    opt_241 ::= grp_240 | $empty

    opt_242 ::= ifExists | $empty

    opt_243 ::= ifExists | $empty

    opt_244 ::= undoTableSpaceOptions | $empty

    grp_245 ::= TABLE_SYMBOL | TABLES_SYMBOL

    seq_246 ::= COMMA_SYMBOL renamePair

    list_247 ::= $empty | list_247 seq_246

    opt_248 ::= TABLE_SYMBOL | $empty

    opt_249 ::= exprList | $empty

    seq_250 ::= OPEN_PAR_SYMBOL opt_249 CLOSE_PAR_SYMBOL

    opt_251 ::= seq_250 | $empty

    opt_252 ::= withClause | $empty

    list_253 ::= $empty | list_253 deleteStatementOption

    opt_256 ::= whereClause | $empty

    opt_257 ::= tableAlias | $empty

    opt_258 ::= partitionDelete | $empty

    opt_259 ::= whereClause | $empty

    opt_260 ::= orderClause | $empty

    opt_261 ::= simpleLimitClause | $empty

    grp_255 ::= tableAliasRefList USING_SYMBOL tableReferenceList opt_256 | tableRef opt_257 opt_258 opt_259 opt_260 opt_261

    opt_262 ::= whereClause | $empty

    grp_254 ::= FROM_SYMBOL grp_255 | tableAliasRefList FROM_SYMBOL tableReferenceList opt_262

    opt_264 ::= tableAlias | $empty

    opt_266 ::= whereClause | $empty

    opt_267 ::= limitClause | $empty

    grp_265 ::= CLOSE_SYMBOL | READ_SYMBOL handlerReadOrScan opt_266 opt_267

    grp_263 ::= tableRef OPEN_SYMBOL opt_264 | identifier grp_265

    grp_268 ::= FIRST_SYMBOL | NEXT_SYMBOL

    grp_270 ::= FIRST_SYMBOL | NEXT_SYMBOL | PREV_SYMBOL | LAST_SYMBOL

    grp_271 ::= EQUAL_OPERATOR | LESS_THAN_OPERATOR | GREATER_THAN_OPERATOR | LESS_OR_EQUAL_OPERATOR | GREATER_OR_EQUAL_OPERATOR

    grp_269 ::= grp_270 | grp_271 OPEN_PAR_SYMBOL values CLOSE_PAR_SYMBOL

    opt_272 ::= insertLockOption | $empty

    opt_273 ::= IGNORE_SYMBOL | $empty

    opt_274 ::= INTO_SYMBOL | $empty

    opt_275 ::= usePartition | $empty

    opt_277 ::= valuesReference | $empty

    opt_278 ::= valuesReference | $empty

    grp_276 ::= insertFromConstructor opt_277 | SET_SYMBOL updateList opt_278 | insertQueryExpression

    opt_279 ::= insertUpdateList | $empty

    opt_280 ::= fields | $empty

    seq_281 ::= OPEN_PAR_SYMBOL opt_280 CLOSE_PAR_SYMBOL

    opt_282 ::= seq_281 | $empty

    seq_283 ::= COMMA_SYMBOL insertIdentifier

    list_284 ::= $empty | list_284 seq_283

    grp_285 ::= VALUES_SYMBOL | VALUE_SYMBOL

    opt_286 ::= fields | $empty

    seq_287 ::= OPEN_PAR_SYMBOL opt_286 CLOSE_PAR_SYMBOL

    opt_288 ::= seq_287 | $empty

    opt_289 ::= values | $empty

    opt_290 ::= values | $empty

    seq_291 ::= COMMA_SYMBOL OPEN_PAR_SYMBOL opt_290 CLOSE_PAR_SYMBOL

    list_292 ::= $empty | list_292 seq_291

    grp_293 ::= expr | DEFAULT_SYMBOL

    grp_295 ::= expr | DEFAULT_SYMBOL

    grp_294 ::= COMMA_SYMBOL grp_295

    list_296 ::= $empty | list_296 grp_294

    opt_297 ::= columnInternalRefList | $empty

    opt_298 ::= loadDataLock | $empty

    opt_299 ::= loadFrom | $empty

    opt_300 ::= LOCAL_SYMBOL | $empty

    opt_301 ::= loadSourceType | $empty

    opt_302 ::= sourceCount | $empty

    opt_303 ::= sourceOrder | $empty

    grp_304 ::= REPLACE_SYMBOL | IGNORE_SYMBOL

    opt_305 ::= grp_304 | $empty

    opt_306 ::= usePartition | $empty

    opt_307 ::= charsetClause | $empty

    opt_308 ::= xmlRowsIdentifiedBy | $empty

    opt_309 ::= fieldsClause | $empty

    opt_310 ::= linesClause | $empty

    opt_311 ::= loadParallel | $empty

    opt_312 ::= loadMemory | $empty

    opt_313 ::= loadAlgorithm | $empty

    grp_314 ::= URL_SYMBOL | S3_SYMBOL

    grp_315 ::= COUNT_SYMBOL INT_NUMBER | pureIdentifier INT_NUMBER

    grp_317 ::= LINES_SYMBOL | ROWS_SYMBOL

    grp_316 ::= IGNORE_SYMBOL INT_NUMBER grp_317

    opt_318 ::= grp_316 | $empty

    opt_319 ::= loadDataFileTargetList | $empty

    seq_320 ::= SET_SYMBOL updateList

    opt_321 ::= seq_320 | $empty

    opt_322 ::= fieldOrVariableList | $empty

    grp_323 ::= columnRef | AT_SIGN_SYMBOL textOrIdentifier | AT_AT_SIGN_SYMBOL

    grp_325 ::= columnRef | AT_SIGN_SYMBOL textOrIdentifier | AT_TEXT_SUFFIX | AT_AT_SIGN_SYMBOL

    grp_324 ::= COMMA_SYMBOL grp_325

    list_326 ::= $empty | list_326 grp_324

    grp_327 ::= LOW_PRIORITY_SYMBOL | DELAYED_SYMBOL

    opt_328 ::= grp_327 | $empty

    opt_329 ::= INTO_SYMBOL | $empty

    opt_330 ::= usePartition | $empty

    grp_331 ::= insertFromConstructor | SET_SYMBOL updateList | insertQueryExpression

    opt_332 ::= lockingClauseList | $empty

    opt_333 ::= lockingClauseList | $empty

    opt_334 ::= withClause | $empty

    opt_335 ::= orderClause | $empty

    opt_336 ::= limitClause | $empty

    grp_337 ::= queryPrimary | queryExpressionParens

    grp_340 ::= EXCEPT_SYMBOL | INTERSECT_SYMBOL

    grp_339 ::= UNION_SYMBOL | grp_340

    opt_341 ::= unionOption | $empty

    grp_338 ::= grp_339 opt_341 queryExpressionBody

    list_342 ::= $empty | list_342 grp_338

    grp_343 ::= queryExpressionParens | queryExpressionWithOptLockingClauses

    list_344 ::= $empty | list_344 selectOption

    opt_345 ::= intoClause | $empty

    opt_346 ::= fromClause | $empty

    opt_347 ::= whereClause | $empty

    opt_348 ::= groupByClause | $empty

    opt_349 ::= havingClause | $empty

    opt_350 ::= windowClause | $empty

    opt_351 ::= qualifyClause | $empty

    grp_353 ::= COMMA_SYMBOL | OFFSET_SYMBOL

    grp_352 ::= grp_353 limitOption

    opt_354 ::= grp_352 | $empty

    grp_355 ::= PARAM_MARKER | ULONGLONG_NUMBER | LONG_NUMBER | INT_NUMBER

    opt_357 ::= charsetClause | $empty

    opt_358 ::= fieldsClause | $empty

    opt_359 ::= linesClause | $empty

    grp_360 ::= textOrIdentifier | userVariable

    grp_362 ::= textOrIdentifier | userVariable

    grp_361 ::= COMMA_SYMBOL grp_362

    list_363 ::= $empty | list_363 grp_361

    grp_356 ::= OUTFILE_SYMBOL textStringLiteral opt_357 opt_358 opt_359 | DUMPFILE_SYMBOL textStringLiteral | grp_360 list_363

    seq_364 ::= COMMA_SYMBOL INT_NUMBER

    opt_365 ::= seq_364 | $empty

    seq_366 ::= INT_NUMBER opt_365

    opt_367 ::= seq_366 | $empty

    seq_368 ::= COMMA_SYMBOL windowDefinition

    list_369 ::= $empty | list_369 seq_368

    opt_370 ::= windowName | $empty

    seq_371 ::= PARTITION_SYMBOL BY_SYMBOL orderList

    opt_372 ::= seq_371 | $empty

    opt_373 ::= orderClause | $empty

    opt_374 ::= windowFrameClause | $empty

    opt_375 ::= windowFrameExclusion | $empty

    grp_376 ::= CURRENT_SYMBOL ROW_SYMBOL | GROUP_SYMBOL | TIES_SYMBOL | NO_SYMBOL OTHERS_SYMBOL

    opt_377 ::= RECURSIVE_SYMBOL | $empty

    seq_378 ::= COMMA_SYMBOL commonTableExpression

    list_379 ::= $empty | list_379 seq_378

    opt_380 ::= columnInternalRefList | $empty

    opt_381 ::= olapOption | $empty

    grp_382 ::= ROLLUP_SYMBOL | CUBE_SYMBOL

    grp_383 ::= DUAL_SYMBOL | tableReferenceList

    seq_384 ::= COMMA_SYMBOL tableReference

    list_385 ::= $empty | list_385 seq_384

    seq_386 ::= COMMA_SYMBOL rowValueExplicit

    list_387 ::= $empty | list_387 seq_386

    opt_388 ::= values | $empty

    list_389 ::= lockingClause | list_389 lockingClause

    seq_390 ::= OF_SYMBOL tableAliasRefList

    opt_391 ::= seq_390 | $empty

    opt_392 ::= lockedRowAction | $empty

    grp_393 ::= selectItem | MULT_OPERATOR

    seq_394 ::= COMMA_SYMBOL selectItem

    list_395 ::= $empty | list_395 seq_394

    opt_396 ::= selectAlias | $empty

    opt_397 ::= AS_SYMBOL | $empty

    grp_398 ::= identifier | textStringLiteral

    grp_400 ::= identifier | OJ_SYMBOL

    grp_399 ::= tableFactor | OPEN_CURLY_SYMBOL grp_400 escapedTableReference CLOSE_CURLY_SYMBOL

    list_401 ::= $empty | list_401 joinedTable

    list_402 ::= $empty | list_402 joinedTable

    grp_403 ::= ON_SYMBOL expr | USING_SYMBOL identifierListWithParentheses

    opt_404 ::= grp_403 | $empty

    grp_405 ::= ON_SYMBOL expr | USING_SYMBOL identifierListWithParentheses

    opt_406 ::= INNER_SYMBOL | $empty

    grp_407 ::= LEFT_SYMBOL | RIGHT_SYMBOL

    opt_408 ::= OUTER_SYMBOL | $empty

    grp_409 ::= INNER_SYMBOL | CROSS_SYMBOL

    opt_410 ::= grp_409 | $empty

    grp_411 ::= LEFT_SYMBOL | RIGHT_SYMBOL

    opt_412 ::= OUTER_SYMBOL | $empty

    opt_413 ::= usePartition | $empty

    opt_414 ::= tableAlias | $empty

    opt_415 ::= indexHintList | $empty

    opt_416 ::= tablesampleClause | $empty

    grp_417 ::= singleTable | singleTableParens

    opt_418 ::= tableAlias | $empty

    opt_419 ::= columnInternalRefList | $empty

    opt_420 ::= tableAlias | $empty

    opt_421 ::= columnInternalRefList | $empty

    grp_422 ::= tableReferenceList | tableReferenceListParens

    opt_423 ::= tableAlias | $empty

    seq_424 ::= COMMA_SYMBOL jtColumn

    list_425 ::= $empty | list_425 seq_424

    opt_426 ::= collate | $empty

    opt_427 ::= EXISTS_SYMBOL | $empty

    opt_428 ::= onEmptyOrErrorJsonTable | $empty

    opt_429 ::= onError | $empty

    grp_430 ::= AS_SYMBOL | EQUAL_OPERATOR

    opt_431 ::= grp_430 | $empty

    seq_432 ::= COMMA_SYMBOL indexHint

    list_433 ::= $empty | list_433 seq_432

    opt_434 ::= indexHintClause | $empty

    opt_435 ::= indexHintClause | $empty

    opt_436 ::= indexList | $empty

    opt_437 ::= keyOrIndex | $empty

    grp_438 ::= JOIN_SYMBOL | ORDER_SYMBOL BY_SYMBOL | GROUP_SYMBOL BY_SYMBOL

    seq_439 ::= COMMA_SYMBOL indexListElement

    list_440 ::= $empty | list_440 seq_439

    opt_441 ::= withClause | $empty

    opt_442 ::= LOW_PRIORITY_SYMBOL | $empty

    opt_443 ::= IGNORE_SYMBOL | $empty

    opt_444 ::= whereClause | $empty

    opt_445 ::= orderClause | $empty

    opt_446 ::= simpleLimitClause | $empty

    list_447 ::= $empty | list_447 startTransactionOptionList

    opt_448 ::= WORK_SYMBOL | $empty

    opt_449 ::= NO_SYMBOL | $empty

    seq_450 ::= AND_SYMBOL opt_449 CHAIN_SYMBOL

    opt_451 ::= seq_450 | $empty

    opt_452 ::= NO_SYMBOL | $empty

    seq_453 ::= opt_452 RELEASE_SYMBOL

    opt_454 ::= seq_453 | $empty

    opt_455 ::= WORK_SYMBOL | $empty

    grp_456 ::= WRITE_SYMBOL | ONLY_SYMBOL

    opt_457 ::= WORK_SYMBOL | $empty

    opt_459 ::= SAVEPOINT_SYMBOL | $empty

    opt_460 ::= NO_SYMBOL | $empty

    seq_461 ::= AND_SYMBOL opt_460 CHAIN_SYMBOL

    opt_462 ::= seq_461 | $empty

    opt_463 ::= NO_SYMBOL | $empty

    seq_464 ::= opt_463 RELEASE_SYMBOL

    opt_465 ::= seq_464 | $empty

    grp_458 ::= TO_SYMBOL opt_459 identifier | opt_462 opt_465

    grp_466 ::= TABLES_SYMBOL | TABLE_SYMBOL

    seq_467 ::= COMMA_SYMBOL lockItem

    list_468 ::= $empty | list_468 seq_467

    grp_469 ::= TABLES_SYMBOL | TABLE_SYMBOL | INSTANCE_SYMBOL

    opt_470 ::= tableAlias | $empty

    opt_471 ::= LOCAL_SYMBOL | $empty

    opt_472 ::= LOW_PRIORITY_SYMBOL | $empty

    grp_474 ::= START_SYMBOL | BEGIN_SYMBOL

    grp_475 ::= JOIN_SYMBOL | RESUME_SYMBOL

    opt_476 ::= grp_475 | $empty

    seq_477 ::= FOR_SYMBOL MIGRATE_SYMBOL

    opt_478 ::= seq_477 | $empty

    seq_479 ::= SUSPEND_SYMBOL opt_478

    opt_480 ::= seq_479 | $empty

    seq_481 ::= ONE_SYMBOL PHASE_SYMBOL

    opt_482 ::= seq_481 | $empty

    opt_483 ::= xaConvert | $empty

    grp_473 ::= grp_474 xid opt_476 | END_SYMBOL xid opt_480 | PREPARE_SYMBOL xid | COMMIT_SYMBOL xid opt_482 | ROLLBACK_SYMBOL xid | RECOVER_SYMBOL opt_483

    seq_484 ::= COMMA_SYMBOL ulong_number

    opt_485 ::= seq_484 | $empty

    seq_486 ::= COMMA_SYMBOL textString opt_485

    opt_487 ::= seq_486 | $empty

    seq_488 ::= COMMA_SYMBOL resetOption

    list_489 ::= $empty | list_489 seq_488

    opt_490 ::= ifExistsIdentifier | $empty

    grp_491 ::= BINARY_SYMBOL | MASTER_SYMBOL

    grp_492 ::= TO_SYMBOL textLiteral | BEFORE_SYMBOL expr

    opt_493 ::= sourceResetOptions | $empty

    opt_494 ::= ALL_SYMBOL | $empty

    opt_495 ::= channel | $empty

    grp_496 ::= DATA_SYMBOL | TABLE_SYMBOL tableRef

    opt_497 ::= channel | $empty

    seq_498 ::= COMMA_SYMBOL sourceDefinition

    list_499 ::= $empty | list_499 seq_498

    seq_500 ::= COMMA_SYMBOL ulong_number

    list_501 ::= $empty | list_501 seq_500

    seq_502 ::= ulong_number list_501

    opt_503 ::= seq_502 | $empty

    seq_504 ::= COMMA_SYMBOL filterDefinition

    list_505 ::= $empty | list_505 seq_504

    opt_506 ::= channel | $empty

    opt_507 ::= filterDbList | $empty

    opt_508 ::= filterDbList | $empty

    opt_509 ::= filterTableList | $empty

    opt_510 ::= filterTableList | $empty

    opt_511 ::= filterStringList | $empty

    opt_512 ::= filterStringList | $empty

    opt_513 ::= filterDbPairList | $empty

    seq_514 ::= COMMA_SYMBOL schemaRef

    list_515 ::= $empty | list_515 seq_514

    seq_516 ::= COMMA_SYMBOL filterTableRef

    list_517 ::= $empty | list_517 seq_516

    seq_518 ::= COMMA_SYMBOL filterWildDbTableString

    list_519 ::= $empty | list_519 seq_518

    seq_520 ::= COMMA_SYMBOL schemaIdentifierPair

    list_521 ::= $empty | list_521 seq_520

    opt_522 ::= replicaThreadOptions | $empty

    seq_523 ::= UNTIL_SYMBOL replicaUntil

    opt_524 ::= seq_523 | $empty

    opt_525 ::= userOption | $empty

    opt_526 ::= passwordOption | $empty

    opt_527 ::= defaultAuthOption | $empty

    opt_528 ::= pluginDirOption | $empty

    opt_529 ::= channel | $empty

    opt_530 ::= replicaThreadOptions | $empty

    opt_531 ::= channel | $empty

    grp_533 ::= SQL_BEFORE_GTIDS_SYMBOL | SQL_AFTER_GTIDS_SYMBOL

    grp_532 ::= sourceFileDef | grp_533 EQUAL_OPERATOR textString | SQL_AFTER_MTS_GAPS_SYMBOL

    seq_534 ::= COMMA_SYMBOL sourceFileDef

    list_535 ::= $empty | list_535 seq_534

    seq_536 ::= COMMA_SYMBOL replicaThreadOption

    list_537 ::= $empty | list_537 seq_536

    opt_539 ::= groupReplicationStartOptions | $empty

    grp_538 ::= START_SYMBOL opt_539 | STOP_SYMBOL

    seq_540 ::= COMMA_SYMBOL groupReplicationStartOption

    list_541 ::= $empty | list_541 seq_540

    grp_542 ::= textLiteral | userVariable

    grp_543 ::= DEALLOCATE_SYMBOL | DROP_SYMBOL

    seq_544 ::= USING_SYMBOL executeVarList

    opt_545 ::= seq_544 | $empty

    seq_546 ::= COMMA_SYMBOL userVariable

    list_547 ::= $empty | list_547 seq_546

    opt_549 ::= equal | $empty

    seq_550 ::= FOR_SYMBOL REPLICATION_SYMBOL

    opt_551 ::= seq_550 | $empty

    opt_552 ::= dataDirSSL | $empty

    grp_548 ::= LOCAL_SYMBOL DATA_SYMBOL DIRECTORY_SYMBOL opt_549 textStringLiteral | REMOTE_SYMBOL opt_551 | INSTANCE_SYMBOL FROM_SYMBOL user COLON_SYMBOL ulong_number IDENTIFIED_SYMBOL BY_SYMBOL textStringLiteral opt_552

    opt_553 ::= equal | $empty

    opt_554 ::= ssl | $empty

    opt_555 ::= NO_SYMBOL | $empty

    opt_556 ::= ifExists | $empty

    grp_558 ::= createUserList | alterUserList

    grp_560 ::= identifiedByRandomPassword | identifiedByPassword

    opt_561 ::= replacePassword | $empty

    opt_562 ::= retainCurrentPassword | $empty

    opt_563 ::= userRegistration | $empty

    grp_559 ::= grp_560 opt_561 opt_562 | DISCARD_SYMBOL OLD_SYMBOL PASSWORD_SYMBOL | opt_563

    grp_565 ::= ALL_SYMBOL | NONE_SYMBOL | roleList

    opt_566 ::= userRegistration | $empty

    grp_564 ::= DEFAULT_SYMBOL ROLE_SYMBOL grp_565 | opt_566

    grp_557 ::= grp_558 createUserTail | userFunction grp_559 | user grp_564

    seq_567 ::= COMMA_SYMBOL alterUser

    list_568 ::= $empty | list_568 seq_567

    opt_572 ::= retainCurrentPassword | $empty

    opt_573 ::= retainCurrentPassword | $empty

    grp_571 ::= REPLACE_SYMBOL textStringLiteral opt_572 | opt_573

    opt_575 ::= retainCurrentPassword | $empty

    opt_576 ::= retainCurrentPassword | $empty

    grp_574 ::= opt_575 | REPLACE_SYMBOL textStringLiteral opt_576

    opt_577 ::= retainCurrentPassword | $empty

    opt_579 ::= retainCurrentPassword | $empty

    opt_580 ::= retainCurrentPassword | $empty

    grp_578 ::= REPLACE_SYMBOL textStringLiteral opt_579 | opt_580

    opt_581 ::= retainCurrentPassword | $empty

    opt_582 ::= discardOldPassword | $empty

    seq_583 ::= ADD_SYMBOL factor identification

    opt_584 ::= seq_583 | $empty

    seq_585 ::= MODIFY_SYMBOL factor identification

    opt_586 ::= seq_585 | $empty

    seq_587 ::= DROP_SYMBOL factor

    opt_588 ::= seq_587 | $empty

    grp_570 ::= identifiedByPassword grp_571 | identifiedByRandomPassword grp_574 | identifiedWithPlugin | identifiedWithPluginAsAuth opt_577 | identifiedWithPluginByPassword grp_578 | identifiedWithPluginByRandomPassword opt_581 | opt_582 | ADD_SYMBOL factor identification opt_584 | MODIFY_SYMBOL factor identification opt_586 | DROP_SYMBOL factor opt_588

    grp_569 ::= user grp_570

    opt_590 ::= retainCurrentPassword | $empty

    opt_591 ::= retainCurrentPassword | $empty

    seq_592 ::= REPLACE_SYMBOL textString

    opt_593 ::= seq_592 | $empty

    opt_594 ::= retainCurrentPassword | $empty

    grp_589 ::= textString REPLACE_SYMBOL textString opt_590 | textString opt_591 | RANDOM_SYMBOL PASSWORD_SYMBOL opt_593 opt_594

    opt_597 ::= retainCurrentPassword | $empty

    opt_598 ::= retainCurrentPassword | $empty

    opt_599 ::= retainCurrentPassword | $empty

    opt_600 ::= retainCurrentPassword | $empty

    grp_596 ::= BY_SYMBOL textString REPLACE_SYMBOL textString opt_597 | AS_SYMBOL textStringHash opt_598 | BY_SYMBOL textString opt_599 | BY_SYMBOL RANDOM_SYMBOL PASSWORD_SYMBOL opt_600

    opt_601 ::= grp_596 | $empty

    grp_595 ::= textOrIdentifier opt_601

    opt_602 ::= discardOldPassword | $empty

    opt_603 ::= ifNotExists | $empty

    opt_604 ::= defaultRoleClause | $empty

    opt_605 ::= requireClause | $empty

    opt_606 ::= connectOptions | $empty

    list_607 ::= $empty | list_607 accountLockPasswordExpireOptions

    opt_608 ::= userAttributes | $empty

    grp_610 ::= SSL_SYMBOL | X509_SYMBOL | NONE_SYMBOL

    grp_609 ::= requireList | grp_610

    grp_611 ::= MAX_QUERIES_PER_HOUR_SYMBOL ulong_number | MAX_UPDATES_PER_HOUR_SYMBOL ulong_number | MAX_CONNECTIONS_PER_HOUR_SYMBOL ulong_number | MAX_USER_CONNECTIONS_SYMBOL ulong_number

    list_612 ::= grp_611 | list_612 grp_611

    grp_613 ::= LOCK_SYMBOL | UNLOCK_SYMBOL

    grp_615 ::= INTERVAL_SYMBOL real_ulong_number DAY_SYMBOL | NEVER_SYMBOL | DEFAULT_SYMBOL

    opt_616 ::= grp_615 | $empty

    grp_617 ::= real_ulong_number | DEFAULT_SYMBOL

    grp_618 ::= real_ulong_number DAY_SYMBOL | DEFAULT_SYMBOL

    grp_619 ::= DEFAULT_SYMBOL | OPTIONAL_SYMBOL

    opt_620 ::= grp_619 | $empty

    grp_614 ::= EXPIRE_SYMBOL opt_616 | HISTORY_SYMBOL grp_617 | REUSE_SYMBOL INTERVAL_SYMBOL grp_618 | REQUIRE_SYMBOL CURRENT_SYMBOL opt_620

    grp_621 ::= real_ulong_number | UNBOUNDED_SYMBOL

    opt_622 ::= ifExists | $empty

    seq_624 ::= WITH_SYMBOL ADMIN_SYMBOL OPTION_SYMBOL

    opt_625 ::= seq_624 | $empty

    opt_627 ::= PRIVILEGES_SYMBOL | $empty

    grp_626 ::= roleOrPrivilegesList | ALL_SYMBOL opt_627

    opt_628 ::= aclType | $empty

    opt_629 ::= versionedRequireClause | $empty

    opt_630 ::= grantOptions | $empty

    opt_631 ::= grantAs | $empty

    seq_632 ::= WITH_SYMBOL GRANT_SYMBOL OPTION_SYMBOL

    opt_633 ::= seq_632 | $empty

    grp_623 ::= roleOrPrivilegesList TO_SYMBOL userList opt_625 | grp_626 ON_SYMBOL opt_628 grantIdentifier TO_SYMBOL grantTargetList opt_629 opt_630 opt_631 | PROXY_SYMBOL ON_SYMBOL user TO_SYMBOL grantTargetList opt_633

    opt_635 ::= exceptRoleList | $empty

    grp_634 ::= roleList | ALL_SYMBOL opt_635 | NONE_SYMBOL | DEFAULT_SYMBOL

    opt_636 ::= withRoles | $empty

    seq_637 ::= COMMA_SYMBOL user TO_SYMBOL user

    list_638 ::= $empty | list_638 seq_637

    opt_639 ::= ifExists | $empty

    opt_641 ::= aclType | $empty

    opt_642 ::= PRIVILEGES_SYMBOL | $empty

    opt_644 ::= aclType | $empty

    grp_643 ::= ON_SYMBOL opt_644 grantIdentifier | COMMA_SYMBOL GRANT_SYMBOL OPTION_SYMBOL

    grp_640 ::= roleOrPrivilegesList FROM_SYMBOL userList | roleOrPrivilegesList ON_SYMBOL opt_641 grantIdentifier FROM_SYMBOL userList | ALL_SYMBOL opt_642 grp_643 FROM_SYMBOL userList | PROXY_SYMBOL ON_SYMBOL user FROM_SYMBOL userList

    opt_645 ::= ignoreUnknownUser | $empty

    seq_646 ::= COMMA_SYMBOL roleOrPrivilege

    list_647 ::= $empty | list_647 seq_646

    opt_649 ::= columnInternalRefList | $empty

    grp_650 ::= AT_TEXT_SUFFIX | AT_SIGN_SYMBOL textOrIdentifier

    grp_648 ::= roleIdentifierOrText opt_649 | roleIdentifierOrText grp_650

    grp_651 ::= SELECT_SYMBOL | INSERT_SYMBOL | UPDATE_SYMBOL | REFERENCES_SYMBOL

    opt_652 ::= columnInternalRefList | $empty

    grp_653 ::= DELETE_SYMBOL | USAGE_SYMBOL | INDEX_SYMBOL | DROP_SYMBOL | EXECUTE_SYMBOL | RELOAD_SYMBOL | SHUTDOWN_SYMBOL | PROCESS_SYMBOL | FILE_SYMBOL | PROXY_SYMBOL | SUPER_SYMBOL | EVENT_SYMBOL | TRIGGER_SYMBOL

    grp_655 ::= ROUTINE_SYMBOL | TABLESPACE_SYMBOL | USER_SYMBOL | VIEW_SYMBOL

    grp_654 ::= TEMPORARY_SYMBOL TABLES_SYMBOL | grp_655

    opt_656 ::= grp_654 | $empty

    grp_657 ::= CLIENT_SYMBOL | replica

    opt_658 ::= ROUTINE_SYMBOL | $empty

    grp_659 ::= CREATE_SYMBOL | DROP_SYMBOL

    seq_660 ::= DOT_SYMBOL MULT_OPERATOR

    opt_661 ::= seq_660 | $empty

    seq_662 ::= DOT_SYMBOL MULT_OPERATOR

    opt_663 ::= seq_662 | $empty

    opt_664 ::= AND_SYMBOL | $empty

    seq_665 ::= opt_664 requireListElement

    list_666 ::= $empty | list_666 seq_665

    grp_667 ::= MAX_QUERIES_PER_HOUR_SYMBOL ulong_number | MAX_UPDATES_PER_HOUR_SYMBOL ulong_number | MAX_CONNECTIONS_PER_HOUR_SYMBOL ulong_number | MAX_USER_CONNECTIONS_SYMBOL ulong_number

    grp_668 ::= NONE_SYMBOL | DEFAULT_SYMBOL

    grp_669 ::= roleList | NONE_SYMBOL | ALL_SYMBOL

    seq_670 ::= EXCEPT_SYMBOL roleList

    opt_671 ::= seq_670 | $empty

    seq_672 ::= COMMA_SYMBOL role

    list_673 ::= $empty | list_673 seq_672

    opt_674 ::= userVariable | $empty

    opt_675 ::= noWriteToBinLog | $empty

    opt_676 ::= histogram | $empty

    list_677 ::= $empty | list_677 checkOption

    grp_678 ::= QUICK_SYMBOL | EXTENDED_SYMBOL

    opt_679 ::= grp_678 | $empty

    opt_680 ::= noWriteToBinLog | $empty

    grp_681 ::= TABLE_SYMBOL | TABLES_SYMBOL

    opt_682 ::= noWriteToBinLog | $empty

    list_683 ::= $empty | list_683 repairType

    grp_684 ::= MANUAL_SYMBOL | AUTO_SYMBOL

    opt_685 ::= histogramNumBuckets | $empty

    opt_686 ::= histogramAutoUpdate | $empty

    grp_687 ::= QUICK_SYMBOL | FAST_SYMBOL | MEDIUM_SYMBOL | EXTENDED_SYMBOL | CHANGED_SYMBOL

    seq_689 ::= COMMA_SYMBOL componentRef

    list_690 ::= $empty | list_690 seq_689

    grp_688 ::= PLUGIN_SYMBOL pluginRef | COMPONENT_SYMBOL componentRef list_690

    opt_692 ::= installSetValueList | $empty

    grp_691 ::= PLUGIN_SYMBOL identifier SONAME_SYMBOL textStringLiteral | COMPONENT_SYMBOL textStringLiteralList opt_692

    seq_693 ::= COMMA_SYMBOL installSetValue

    list_694 ::= $empty | list_694 seq_693

    seq_695 ::= FOR_SYMBOL user

    opt_696 ::= seq_695 | $empty

    opt_698 ::= replacePassword | $empty

    opt_699 ::= retainCurrentPassword | $empty

    opt_700 ::= replacePassword | $empty

    opt_701 ::= retainCurrentPassword | $empty

    grp_697 ::= textString opt_698 opt_699 | textString opt_700 opt_701 | PASSWORD_SYMBOL OPEN_PAR_SYMBOL textString CLOSE_PAR_SYMBOL

    seq_702 ::= FOR_SYMBOL user

    opt_703 ::= seq_702 | $empty

    opt_704 ::= replacePassword | $empty

    opt_705 ::= retainCurrentPassword | $empty

    opt_706 ::= isolationLevel | $empty

    seq_707 ::= COMMA_SYMBOL transactionAccessMode

    opt_708 ::= seq_707 | $empty

    grp_709 ::= WRITE_SYMBOL | ONLY_SYMBOL

    grp_711 ::= COMMITTED_SYMBOL | UNCOMMITTED_SYMBOL

    grp_710 ::= REPEATABLE_SYMBOL READ_SYMBOL | READ_SYMBOL grp_711 | SERIALIZABLE_SYMBOL

    seq_712 ::= COMMA_SYMBOL optionValue

    list_713 ::= $empty | list_713 seq_712

    grp_714 ::= charsetName | DEFAULT_SYMBOL

    opt_715 ::= setVarIdentType | $empty

    opt_717 ::= collate | $empty

    grp_716 ::= equal expr | charsetName opt_717 | DEFAULT_SYMBOL

    opt_718 ::= setVarIdentType | $empty

    opt_719 ::= likeOrWhere | $empty

    opt_720 ::= showCommandType | $empty

    opt_721 ::= inDb | $empty

    opt_722 ::= likeOrWhere | $empty

    opt_723 ::= FULL_SYMBOL | $empty

    opt_724 ::= inDb | $empty

    opt_725 ::= likeOrWhere | $empty

    opt_726 ::= inDb | $empty

    opt_727 ::= likeOrWhere | $empty

    opt_728 ::= inDb | $empty

    opt_729 ::= likeOrWhere | $empty

    opt_730 ::= inDb | $empty

    opt_731 ::= likeOrWhere | $empty

    opt_732 ::= showCommandType | $empty

    grp_733 ::= FROM_SYMBOL | IN_SYMBOL

    opt_734 ::= inDb | $empty

    opt_735 ::= likeOrWhere | $empty

    grp_736 ::= BINARY_SYMBOL | MASTER_SYMBOL

    grp_737 ::= replica HOSTS_SYMBOL | REPLICAS_SYMBOL

    seq_738 ::= IN_SYMBOL textString

    opt_739 ::= seq_738 | $empty

    seq_740 ::= FROM_SYMBOL ulonglongNumber

    opt_741 ::= seq_740 | $empty

    opt_742 ::= limitClause | $empty

    opt_743 ::= channel | $empty

    seq_744 ::= IN_SYMBOL textString

    opt_745 ::= seq_744 | $empty

    seq_746 ::= FROM_SYMBOL ulonglongNumber

    opt_747 ::= seq_746 | $empty

    opt_748 ::= limitClause | $empty

    opt_749 ::= channel | $empty

    opt_750 ::= EXTENDED_SYMBOL | $empty

    grp_751 ::= INDEX_SYMBOL | INDEXES_SYMBOL | KEYS_SYMBOL

    opt_752 ::= inDb | $empty

    opt_753 ::= whereClause | $empty

    opt_754 ::= STORAGE_SYMBOL | $empty

    opt_755 ::= limitClause | $empty

    opt_756 ::= limitClause | $empty

    opt_757 ::= profileDefinitions | $empty

    seq_758 ::= FOR_SYMBOL QUERY_SYMBOL INT_NUMBER

    opt_759 ::= seq_758 | $empty

    opt_760 ::= limitClause | $empty

    opt_761 ::= optionType | $empty

    opt_762 ::= likeOrWhere | $empty

    opt_763 ::= FULL_SYMBOL | $empty

    opt_764 ::= optionType | $empty

    opt_765 ::= likeOrWhere | $empty

    opt_766 ::= likeOrWhere | $empty

    opt_767 ::= likeOrWhere | $empty

    seq_768 ::= USING_SYMBOL userList

    opt_769 ::= seq_768 | $empty

    seq_770 ::= FOR_SYMBOL user opt_769

    opt_771 ::= seq_770 | $empty

    opt_772 ::= ifNotExists | $empty

    opt_773 ::= channel | $empty

    opt_774 ::= likeOrWhere | $empty

    opt_775 ::= likeOrWhere | $empty

    opt_776 ::= FULL_SYMBOL | $empty

    seq_777 ::= COMMA_SYMBOL profileDefinition

    list_778 ::= $empty | list_778 seq_777

    grp_779 ::= ALL_SYMBOL | CPU_SYMBOL | IPC_SYMBOL | MEMORY_SYMBOL | SOURCE_SYMBOL | SWAPS_SYMBOL

    grp_780 ::= identifier | DEFAULT_SYMBOL

    opt_781 ::= noWriteToBinLog | $empty

    seq_783 ::= COMMA_SYMBOL flushOption

    list_784 ::= $empty | list_784 seq_783

    grp_782 ::= flushTables | flushOption list_784

    grp_785 ::= CONNECTION_SYMBOL | QUERY_SYMBOL

    opt_786 ::= grp_785 | $empty

    seq_787 ::= COMMA_SYMBOL assignToKeycache

    list_788 ::= $empty | list_788 seq_787

    opt_789 ::= cacheKeyList | $empty

    opt_790 ::= cacheKeyList | $empty

    opt_791 ::= keyUsageList | $empty

    seq_792 ::= COMMA_SYMBOL keyUsageElement

    list_793 ::= $empty | list_793 seq_792

    grp_794 ::= HOSTS_SYMBOL | PRIVILEGES_SYMBOL | STATUS_SYMBOL | USER_RESOURCES_SYMBOL

    opt_795 ::= logType | $empty

    opt_796 ::= channel | $empty

    grp_797 ::= TABLES_SYMBOL | TABLE_SYMBOL

    opt_799 ::= flushTablesOptions | $empty

    grp_798 ::= WITH_SYMBOL READ_SYMBOL LOCK_SYMBOL | identifierList opt_799

    opt_800 ::= grp_798 | $empty

    opt_801 ::= cacheKeyList | $empty

    seq_802 ::= IGNORE_SYMBOL LEAVES_SYMBOL

    opt_803 ::= seq_802 | $empty

    seq_804 ::= COMMA_SYMBOL preloadKeys

    list_805 ::= $empty | list_805 seq_804

    opt_806 ::= cacheKeyList | $empty

    seq_807 ::= IGNORE_SYMBOL LEAVES_SYMBOL

    opt_808 ::= seq_807 | $empty

    opt_809 ::= equal | $empty

    grp_810 ::= USER_SYMBOL | SYSTEM_SYMBOL

    opt_811 ::= resourceGroupVcpuList | $empty

    opt_812 ::= resourceGroupPriority | $empty

    opt_813 ::= resourceGroupEnableDisable | $empty

    opt_814 ::= equal | $empty

    opt_815 ::= COMMA_SYMBOL | $empty

    seq_816 ::= opt_815 vcpuNumOrRange

    list_817 ::= $empty | list_817 seq_816

    seq_818 ::= MINUS_OPERATOR INT_NUMBER

    opt_819 ::= seq_818 | $empty

    opt_820 ::= equal | $empty

    opt_821 ::= resourceGroupVcpuList | $empty

    opt_822 ::= resourceGroupPriority | $empty

    opt_823 ::= resourceGroupEnableDisable | $empty

    opt_824 ::= FORCE_SYMBOL | $empty

    seq_825 ::= FOR_SYMBOL threadIdList

    opt_826 ::= seq_825 | $empty

    opt_827 ::= COMMA_SYMBOL | $empty

    seq_828 ::= opt_827 real_ulong_number

    list_829 ::= $empty | list_829 seq_828

    opt_830 ::= FORCE_SYMBOL | $empty

    grp_831 ::= EXPLAIN_SYMBOL | DESCRIBE_SYMBOL | DESC_SYMBOL

    grp_832 ::= textString | columnRef

    opt_833 ::= grp_832 | $empty

    grp_834 ::= EXPLAIN_SYMBOL | DESCRIBE_SYMBOL | DESC_SYMBOL

    opt_835 ::= explainOptions | $empty

    seq_836 ::= FOR_SYMBOL DATABASE_SYMBOL textOrIdentifier

    opt_837 ::= seq_836 | $empty

    opt_838 ::= explainInto | $empty

    opt_840 ::= notRule | $empty

    grp_841 ::= TRUE_SYMBOL | FALSE_SYMBOL | UNKNOWN_SYMBOL

    grp_839 ::= IS_SYMBOL opt_840 grp_841

    opt_842 ::= grp_839 | $empty

    grp_843 ::= AND_SYMBOL | LOGICAL_AND_OPERATOR

    grp_844 ::= OR_SYMBOL | LOGICAL_OR_OPERATOR

    opt_845 ::= notRule | $empty

    grp_846 ::= ALL_SYMBOL | ANY_SYMBOL

    opt_848 ::= notRule | $empty

    opt_849 ::= OF_SYMBOL | $empty

    grp_847 ::= opt_848 predicateOperations | MEMBER_SYMBOL opt_849 simpleExprWithParentheses | SOUNDS_SYMBOL LIKE_SYMBOL bitExpr

    opt_850 ::= grp_847 | $empty

    grp_851 ::= subquery | OPEN_PAR_SYMBOL exprList CLOSE_PAR_SYMBOL

    seq_852 ::= ESCAPE_SYMBOL simpleExpr

    opt_853 ::= seq_852 | $empty

    grp_854 ::= MULT_OPERATOR | DIV_OPERATOR | MOD_OPERATOR | DIV_SYMBOL | MOD_SYMBOL

    grp_855 ::= PLUS_OPERATOR | MINUS_OPERATOR

    grp_856 ::= PLUS_OPERATOR | MINUS_OPERATOR

    grp_857 ::= SHIFT_LEFT_OPERATOR | SHIFT_RIGHT_OPERATOR

    opt_858 ::= jsonOperator | $empty

    grp_859 ::= PLUS_OPERATOR | MINUS_OPERATOR | BITWISE_NOT_OPERATOR

    opt_860 ::= ROW_SYMBOL | $empty

    opt_861 ::= EXISTS_SYMBOL | $empty

    opt_862 ::= fulltextOptions | $empty

    seq_863 ::= AT_SYMBOL LOCAL_SYMBOL

    opt_864 ::= seq_863 | $empty

    opt_865 ::= arrayCast | $empty

    opt_866 ::= INTERVAL_SYMBOL | $empty

    opt_867 ::= expr | $empty

    seq_868 ::= whenExpression thenExpression

    list_869 ::= seq_868 | list_869 seq_868

    opt_870 ::= elseExpression | $empty

    opt_871 ::= DISTINCT_SYMBOL | $empty

    opt_872 ::= windowingClause | $empty

    grp_873 ::= BIT_AND_SYMBOL | BIT_OR_SYMBOL | BIT_XOR_SYMBOL

    opt_874 ::= windowingClause | $empty

    opt_875 ::= DISTINCT_SYMBOL | $empty

    opt_876 ::= windowingClause | $empty

    opt_878 ::= ALL_SYMBOL | $empty

    grp_877 ::= opt_878 MULT_OPERATOR | inSumExpr | DISTINCT_SYMBOL exprList

    opt_879 ::= windowingClause | $empty

    grp_880 ::= MIN_SYMBOL | MAX_SYMBOL

    opt_881 ::= DISTINCT_SYMBOL | $empty

    opt_882 ::= windowingClause | $empty

    grp_883 ::= STD_SYMBOL | VARIANCE_SYMBOL | STDDEV_SAMP_SYMBOL | VAR_SAMP_SYMBOL | SUM_SYMBOL

    opt_884 ::= windowingClause | $empty

    opt_885 ::= windowingClause | $empty

    opt_886 ::= DISTINCT_SYMBOL | $empty

    opt_887 ::= orderClause | $empty

    seq_888 ::= SEPARATOR_SYMBOL textString

    opt_889 ::= seq_888 | $empty

    opt_890 ::= windowingClause | $empty

    grp_891 ::= ROW_NUMBER_SYMBOL | RANK_SYMBOL | DENSE_RANK_SYMBOL | CUME_DIST_SYMBOL | PERCENT_RANK_SYMBOL

    grp_892 ::= OPEN_PAR_SYMBOL stableInteger CLOSE_PAR_SYMBOL | simpleExprWithParentheses

    grp_893 ::= LEAD_SYMBOL | LAG_SYMBOL

    opt_894 ::= leadLagInfo | $empty

    opt_895 ::= nullTreatment | $empty

    grp_896 ::= FIRST_VALUE_SYMBOL | LAST_VALUE_SYMBOL

    opt_897 ::= nullTreatment | $empty

    grp_899 ::= FIRST_SYMBOL | LAST_SYMBOL

    grp_898 ::= FROM_SYMBOL grp_899

    opt_900 ::= grp_898 | $empty

    opt_901 ::= nullTreatment | $empty

    grp_902 ::= windowName | windowSpec

    grp_903 ::= ulonglongNumber | PARAM_MARKER | stableInteger

    seq_904 ::= COMMA_SYMBOL expr

    opt_905 ::= seq_904 | $empty

    grp_906 ::= RESPECT_SYMBOL | IGNORE_SYMBOL

    opt_907 ::= windowingClause | $empty

    opt_908 ::= windowingClause | $empty

    opt_909 ::= ALL_SYMBOL | $empty

    seq_910 ::= COMMA_SYMBOL simpleIdentifier

    list_911 ::= $empty | list_911 seq_910

    seq_912 ::= WITH_SYMBOL QUERY_SYMBOL EXPANSION_SYMBOL

    opt_913 ::= seq_912 | $empty

    seq_914 ::= USING_SYMBOL charsetName

    opt_915 ::= seq_914 | $empty

    opt_916 ::= parentheses | $empty

    seq_917 ::= COMMA_SYMBOL expr

    list_918 ::= seq_917 | list_918 seq_917

    opt_919 ::= returningType | $empty

    seq_920 ::= COMMA_SYMBOL expr

    opt_921 ::= seq_920 | $empty

    grp_922 ::= ADDDATE_SYMBOL | SUBDATE_SYMBOL

    grp_923 ::= expr | INTERVAL_SYMBOL expr interval

    opt_924 ::= parentheses | $empty

    opt_925 ::= timeFunctionParameters | $empty

    grp_926 ::= DATE_ADD_SYMBOL | DATE_SUB_SYMBOL

    seq_927 ::= COMMA_SYMBOL expr

    opt_928 ::= seq_927 | $empty

    opt_929 ::= timeFunctionParameters | $empty

    opt_930 ::= timeFunctionParameters | $empty

    grp_931 ::= TIMESTAMPADD_SYMBOL | TIMESTAMPDIFF_SYMBOL

    opt_932 ::= parentheses | $empty

    opt_933 ::= timeFunctionParameters | $empty

    opt_934 ::= timeFunctionParameters | $empty

    seq_935 ::= COMMA_SYMBOL expr

    opt_936 ::= seq_935 | $empty

    seq_937 ::= COMMA_SYMBOL expr

    opt_938 ::= seq_937 | $empty

    seq_940 ::= AS_SYMBOL CHAR_SYMBOL wsNumCodepoints

    opt_941 ::= seq_940 | $empty

    grp_939 ::= opt_941 | AS_SYMBOL BINARY_SYMBOL wsNumCodepoints | COMMA_SYMBOL ulong_number COMMA_SYMBOL ulong_number COMMA_SYMBOL ulong_number

    opt_942 ::= exprList | $empty

    opt_943 ::= fractionalPrecision | $empty

    seq_945 ::= COMMA_SYMBOL weightStringLevelListItem

    list_946 ::= $empty | list_946 seq_945

    grp_944 ::= real_ulong_number MINUS_OPERATOR real_ulong_number | weightStringLevelListItem list_946

    grp_948 ::= ASC_SYMBOL | DESC_SYMBOL

    opt_949 ::= REVERSE_SYMBOL | $empty

    grp_947 ::= grp_948 opt_949 | REVERSE_SYMBOL

    opt_950 ::= grp_947 | $empty

    seq_952 ::= FROM_SYMBOL expr

    opt_953 ::= seq_952 | $empty

    opt_954 ::= expr | $empty

    opt_955 ::= expr | $empty

    opt_956 ::= expr | $empty

    grp_951 ::= expr opt_953 | LEADING_SYMBOL opt_954 FROM_SYMBOL expr | TRAILING_SYMBOL opt_955 FROM_SYMBOL expr | BOTH_SYMBOL opt_956 FROM_SYMBOL expr

    seq_958 ::= COMMA_SYMBOL expr

    opt_959 ::= seq_958 | $empty

    seq_960 ::= FOR_SYMBOL expr

    opt_961 ::= seq_960 | $empty

    grp_957 ::= COMMA_SYMBOL expr opt_959 | FROM_SYMBOL expr opt_961

    opt_962 ::= udfExprList | $empty

    opt_963 ::= exprList | $empty

    seq_964 ::= COMMA_SYMBOL udfExpr

    list_965 ::= $empty | list_965 seq_964

    opt_966 ::= selectAlias | $empty

    opt_967 ::= rvalueSystemVariableType | $empty

    opt_969 ::= dotIdentifier | $empty

    opt_970 ::= dotIdentifier | $empty

    grp_968 ::= identifier opt_969 | lValueIdentifier opt_970

    opt_971 ::= dotIdentifier | $empty

    opt_972 ::= fieldLength | $empty

    opt_973 ::= fieldLength | $empty

    opt_974 ::= charsetWithOptBinary | $empty

    opt_975 ::= fieldLength | $empty

    opt_976 ::= INT_SYMBOL | $empty

    opt_977 ::= INT_SYMBOL | $empty

    opt_978 ::= typeDatetimePrecision | $empty

    opt_979 ::= typeDatetimePrecision | $empty

    opt_980 ::= floatOptions | $empty

    opt_981 ::= standardFloatOptions | $empty

    grp_982 ::= POINT_SYMBOL | LINESTRING_SYMBOL | POLYGON_SYMBOL | MULTIPOINT_SYMBOL | MULTILINESTRING_SYMBOL | MULTIPOLYGON_SYMBOL | GEOMETRYCOLLECTION_SYMBOL

    seq_983 ::= COMMA_SYMBOL expr

    list_984 ::= $empty | list_984 seq_983

    grp_985 ::= SECOND_MICROSECOND_SYMBOL | MINUTE_MICROSECOND_SYMBOL | MINUTE_SECOND_SYMBOL | HOUR_MICROSECOND_SYMBOL | HOUR_SECOND_SYMBOL | HOUR_MINUTE_SYMBOL | DAY_MICROSECOND_SYMBOL | DAY_SECOND_SYMBOL | DAY_MINUTE_SYMBOL | DAY_HOUR_SYMBOL | YEAR_MONTH_SYMBOL

    seq_986 ::= COMMA_SYMBOL orderExpression

    list_987 ::= $empty | list_987 seq_986

    opt_988 ::= direction | $empty

    seq_989 ::= COMMA_SYMBOL groupingExpression

    list_990 ::= $empty | list_990 seq_989

    grp_991 ::= ELSEIF_SYMBOL ifBody | ELSE_SYMBOL compoundStatementList

    opt_992 ::= grp_991 | $empty

    seq_993 ::= compoundStatement SEMICOLON_SYMBOL

    list_994 ::= seq_993 | list_994 seq_993

    opt_995 ::= expr | $empty

    seq_996 ::= whenExpression thenStatement

    list_997 ::= seq_996 | list_997 seq_996

    opt_998 ::= elseStatement | $empty

    opt_999 ::= labelRef | $empty

    opt_1000 ::= spDeclarations | $empty

    opt_1001 ::= compoundStatementList | $empty

    opt_1002 ::= labelRef | $empty

    seq_1003 ::= spDeclaration SEMICOLON_SYMBOL

    list_1004 ::= seq_1003 | list_1004 seq_1003

    opt_1005 ::= collate | $empty

    seq_1006 ::= DEFAULT_SYMBOL expr

    opt_1007 ::= seq_1006 | $empty

    opt_1008 ::= VALUE_SYMBOL | $empty

    grp_1009 ::= CONTINUE_SYMBOL | EXIT_SYMBOL | UNDO_SYMBOL

    seq_1010 ::= COMMA_SYMBOL handlerCondition

    list_1011 ::= $empty | list_1011 seq_1010

    grp_1012 ::= CURRENT_SYMBOL | STACKED_SYMBOL

    opt_1013 ::= grp_1012 | $empty

    seq_1015 ::= COMMA_SYMBOL statementInformationItem

    list_1016 ::= $empty | list_1016 seq_1015

    seq_1017 ::= COMMA_SYMBOL conditionInformationItem

    list_1018 ::= $empty | list_1018 seq_1017

    grp_1014 ::= statementInformationItem list_1016 | CONDITION_SYMBOL signalAllowedExpr conditionInformationItem list_1018

    grp_1019 ::= userVariable | identifier

    grp_1020 ::= NUMBER_SYMBOL | ROW_COUNT_SYMBOL

    grp_1021 ::= userVariable | identifier

    grp_1022 ::= signalInformationItemName | RETURNED_SQLSTATE_SYMBOL

    grp_1023 ::= identifier | sqlstate

    seq_1024 ::= COMMA_SYMBOL signalInformationItem

    list_1025 ::= $empty | list_1025 seq_1024

    seq_1026 ::= SET_SYMBOL signalInformationItem list_1025

    opt_1027 ::= seq_1026 | $empty

    grp_1028 ::= identifier | sqlstate

    opt_1029 ::= grp_1028 | $empty

    seq_1030 ::= COMMA_SYMBOL signalInformationItem

    list_1031 ::= $empty | list_1031 seq_1030

    seq_1032 ::= SET_SYMBOL signalInformationItem list_1031

    opt_1033 ::= seq_1032 | $empty

    opt_1034 ::= NEXT_SYMBOL | $empty

    seq_1035 ::= opt_1034 FROM_SYMBOL

    opt_1036 ::= seq_1035 | $empty

    seq_1037 ::= STARTS_SYMBOL expr

    opt_1038 ::= seq_1037 | $empty

    seq_1039 ::= ENDS_SYMBOL expr

    opt_1040 ::= seq_1039 | $empty

    opt_1041 ::= checkOrReferences | $empty

    opt_1042 ::= NOT_SYMBOL | $empty

    grp_1043 ::= KEY_SYMBOL | INDEX_SYMBOL

    opt_1044 ::= indexNameAndType | $empty

    list_1045 ::= $empty | list_1045 indexOption

    opt_1046 ::= keyOrIndex | $empty

    opt_1047 ::= indexName | $empty

    list_1048 ::= $empty | list_1048 fulltextIndexOption

    opt_1049 ::= keyOrIndex | $empty

    opt_1050 ::= indexName | $empty

    list_1051 ::= $empty | list_1051 spatialIndexOption

    opt_1052 ::= constraintName | $empty

    opt_1055 ::= keyOrIndex | $empty

    grp_1054 ::= PRIMARY_SYMBOL KEY_SYMBOL | UNIQUE_SYMBOL opt_1055

    opt_1056 ::= indexNameAndType | $empty

    list_1057 ::= $empty | list_1057 indexOption

    opt_1058 ::= indexName | $empty

    opt_1059 ::= constraintEnforcement | $empty

    grp_1053 ::= grp_1054 opt_1056 keyListWithExpression list_1057 | FOREIGN_SYMBOL KEY_SYMBOL opt_1058 keyList references | checkConstraint opt_1059

    opt_1060 ::= identifier | $empty

    list_1062 ::= $empty | list_1062 columnAttribute

    opt_1063 ::= collate | $empty

    seq_1064 ::= GENERATED_SYMBOL ALWAYS_SYMBOL

    opt_1065 ::= seq_1064 | $empty

    grp_1066 ::= VIRTUAL_SYMBOL | STORED_SYMBOL

    opt_1067 ::= grp_1066 | $empty

    list_1068 ::= $empty | list_1068 columnAttribute

    grp_1061 ::= list_1062 | opt_1063 opt_1065 AS_SYMBOL exprWithParentheses opt_1067 list_1068

    opt_1069 ::= NOT_SYMBOL | $empty

    grp_1070 ::= nowOrSignedLiteral | exprWithParentheses

    opt_1071 ::= timeFunctionParameters | $empty

    opt_1072 ::= PRIMARY_SYMBOL | $empty

    opt_1073 ::= KEY_SYMBOL | $empty

    opt_1074 ::= constraintName | $empty

    opt_1075 ::= EQUAL_OPERATOR | $empty

    opt_1076 ::= EQUAL_OPERATOR | $empty

    opt_1077 ::= KEY_SYMBOL | $empty

    opt_1078 ::= notRule | $empty

    opt_1079 ::= PRIMARY_SYMBOL | $empty

    opt_1080 ::= identifierListWithParentheses | $empty

    grp_1082 ::= FULL_SYMBOL | PARTIAL_SYMBOL | SIMPLE_SYMBOL

    grp_1081 ::= MATCH_SYMBOL grp_1082

    opt_1083 ::= grp_1081 | $empty

    seq_1085 ::= ON_SYMBOL DELETE_SYMBOL deleteOption

    opt_1086 ::= seq_1085 | $empty

    seq_1087 ::= ON_SYMBOL UPDATE_SYMBOL deleteOption

    opt_1088 ::= seq_1087 | $empty

    grp_1084 ::= ON_SYMBOL UPDATE_SYMBOL deleteOption opt_1086 | ON_SYMBOL DELETE_SYMBOL deleteOption opt_1088

    opt_1089 ::= grp_1084 | $empty

    grp_1090 ::= RESTRICT_SYMBOL | CASCADE_SYMBOL

    seq_1091 ::= COMMA_SYMBOL keyPart

    list_1092 ::= $empty | list_1092 seq_1091

    opt_1093 ::= fieldLength | $empty

    opt_1094 ::= direction | $empty

    seq_1095 ::= COMMA_SYMBOL keyPartOrExpression

    list_1096 ::= $empty | list_1096 seq_1095

    opt_1097 ::= direction | $empty

    grp_1098 ::= BTREE_SYMBOL | RTREE_SYMBOL | HASH_SYMBOL

    opt_1099 ::= EQUAL_OPERATOR | $empty

    opt_1100 ::= EQUAL_OPERATOR | $empty

    opt_1101 ::= EQUAL_OPERATOR | $empty

    grp_1102 ::= USING_SYMBOL | TYPE_SYMBOL

    grp_1103 ::= INT_SYMBOL | TINYINT_SYMBOL | SMALLINT_SYMBOL | MEDIUMINT_SYMBOL | BIGINT_SYMBOL

    opt_1104 ::= fieldLength | $empty

    opt_1105 ::= fieldOptions | $empty

    opt_1107 ::= PRECISION_SYMBOL | $empty

    grp_1106 ::= REAL_SYMBOL | DOUBLE_SYMBOL opt_1107

    opt_1108 ::= precision | $empty

    opt_1109 ::= fieldOptions | $empty

    grp_1110 ::= FLOAT_SYMBOL | DECIMAL_SYMBOL | NUMERIC_SYMBOL | FIXED_SYMBOL

    opt_1111 ::= floatOptions | $empty

    opt_1112 ::= fieldOptions | $empty

    opt_1113 ::= fieldLength | $empty

    grp_1114 ::= BOOL_SYMBOL | BOOLEAN_SYMBOL

    opt_1115 ::= fieldLength | $empty

    opt_1116 ::= charsetWithOptBinary | $empty

    opt_1117 ::= fieldLength | $empty

    opt_1118 ::= BINARY_SYMBOL | $empty

    opt_1119 ::= fieldLength | $empty

    grp_1120 ::= CHAR_SYMBOL VARYING_SYMBOL | VARCHAR_SYMBOL

    opt_1121 ::= charsetWithOptBinary | $empty

    grp_1122 ::= NATIONAL_SYMBOL VARCHAR_SYMBOL | NVARCHAR_SYMBOL | NCHAR_SYMBOL VARCHAR_SYMBOL | NATIONAL_SYMBOL CHAR_SYMBOL VARYING_SYMBOL | NCHAR_SYMBOL VARYING_SYMBOL

    opt_1123 ::= BINARY_SYMBOL | $empty

    opt_1124 ::= fieldLength | $empty

    opt_1125 ::= fieldOptions | $empty

    opt_1126 ::= typeDatetimePrecision | $empty

    opt_1127 ::= typeDatetimePrecision | $empty

    opt_1128 ::= typeDatetimePrecision | $empty

    opt_1129 ::= fieldLength | $empty

    grp_1130 ::= MEDIUMBLOB_SYMBOL | LONGBLOB_SYMBOL

    grp_1131 ::= CHAR_SYMBOL VARYING_SYMBOL | VARCHAR_SYMBOL

    opt_1132 ::= grp_1131 | $empty

    opt_1133 ::= charsetWithOptBinary | $empty

    opt_1134 ::= charsetWithOptBinary | $empty

    opt_1135 ::= fieldLength | $empty

    opt_1136 ::= charsetWithOptBinary | $empty

    opt_1137 ::= charsetWithOptBinary | $empty

    opt_1138 ::= charsetWithOptBinary | $empty

    opt_1139 ::= charsetWithOptBinary | $empty

    opt_1140 ::= charsetWithOptBinary | $empty

    grp_1141 ::= GEOMETRY_SYMBOL | GEOMETRYCOLLECTION_SYMBOL | POINT_SYMBOL | MULTIPOINT_SYMBOL | LINESTRING_SYMBOL | MULTILINESTRING_SYMBOL | POLYGON_SYMBOL | MULTIPOLYGON_SYMBOL

    opt_1142 ::= PRECISION_SYMBOL | $empty

    grp_1143 ::= real_ulonglong_number | DECIMAL_NUMBER

    grp_1144 ::= SIGNED_SYMBOL | UNSIGNED_SYMBOL | ZEROFILL_SYMBOL

    list_1145 ::= grp_1144 | list_1145 grp_1144

    opt_1146 ::= BINARY_SYMBOL | $empty

    seq_1147 ::= charset charsetName

    opt_1148 ::= seq_1147 | $empty

    opt_1149 ::= BINARY_SYMBOL | $empty

    opt_1150 ::= BINARY_SYMBOL | $empty

    opt_1151 ::= COMMA_SYMBOL | $empty

    seq_1152 ::= opt_1151 createTableOption

    list_1153 ::= $empty | list_1153 seq_1152

    opt_1154 ::= createPartitioningEtc | $empty

    opt_1155 ::= duplicateAsQe | $empty

    list_1156 ::= createTableOption | list_1156 createTableOption

    opt_1157 ::= EQUAL_OPERATOR | $empty

    opt_1158 ::= equal | $empty

    grp_1159 ::= NULL_SYMBOL | textOrIdentifier

    opt_1160 ::= EQUAL_OPERATOR | $empty

    opt_1161 ::= EQUAL_OPERATOR | $empty

    opt_1162 ::= EQUAL_OPERATOR | $empty

    opt_1163 ::= EQUAL_OPERATOR | $empty

    opt_1164 ::= EQUAL_OPERATOR | $empty

    opt_1165 ::= EQUAL_OPERATOR | $empty

    opt_1166 ::= EQUAL_OPERATOR | $empty

    opt_1167 ::= EQUAL_OPERATOR | $empty

    opt_1168 ::= EQUAL_OPERATOR | $empty

    grp_1169 ::= STATS_AUTO_RECALC_SYMBOL | STATS_PERSISTENT_SYMBOL | STATS_SAMPLE_PAGES_SYMBOL

    opt_1170 ::= EQUAL_OPERATOR | $empty

    grp_1171 ::= CHECKSUM_SYMBOL | TABLE_CHECKSUM_SYMBOL

    opt_1172 ::= EQUAL_OPERATOR | $empty

    opt_1173 ::= EQUAL_OPERATOR | $empty

    opt_1174 ::= EQUAL_OPERATOR | $empty

    grp_1175 ::= DEFAULT_SYMBOL | DYNAMIC_SYMBOL | FIXED_SYMBOL | COMPRESSED_SYMBOL | REDUNDANT_SYMBOL | COMPACT_SYMBOL

    opt_1176 ::= EQUAL_OPERATOR | $empty

    opt_1177 ::= EQUAL_OPERATOR | $empty

    grp_1178 ::= NO_SYMBOL | FIRST_SYMBOL | LAST_SYMBOL

    opt_1179 ::= EQUAL_OPERATOR | $empty

    opt_1180 ::= EQUAL_OPERATOR | $empty

    opt_1181 ::= EQUAL_OPERATOR | $empty

    grp_1182 ::= DISK_SYMBOL | MEMORY_SYMBOL

    opt_1183 ::= EQUAL_OPERATOR | $empty

    opt_1184 ::= EQUAL_OPERATOR | $empty

    opt_1185 ::= EQUAL_OPERATOR | $empty

    opt_1186 ::= EQUAL_OPERATOR | $empty

    opt_1187 ::= DEFAULT_SYMBOL | $empty

    opt_1188 ::= EQUAL_OPERATOR | $empty

    opt_1189 ::= DEFAULT_SYMBOL | $empty

    opt_1190 ::= EQUAL_OPERATOR | $empty

    opt_1191 ::= DEFAULT_SYMBOL | $empty

    opt_1192 ::= EQUAL_OPERATOR | $empty

    seq_1193 ::= PARTITIONS_SYMBOL real_ulong_number

    opt_1194 ::= seq_1193 | $empty

    opt_1195 ::= subPartitions | $empty

    opt_1196 ::= partitionDefinitions | $empty

    opt_1197 ::= LINEAR_SYMBOL | $empty

    opt_1198 ::= partitionKeyAlgorithm | $empty

    opt_1199 ::= identifierList | $empty

    opt_1200 ::= LINEAR_SYMBOL | $empty

    grp_1201 ::= RANGE_SYMBOL | LIST_SYMBOL

    opt_1203 ::= identifierList | $empty

    grp_1202 ::= OPEN_PAR_SYMBOL bitExpr CLOSE_PAR_SYMBOL | COLUMNS_SYMBOL OPEN_PAR_SYMBOL opt_1203 CLOSE_PAR_SYMBOL

    opt_1204 ::= LINEAR_SYMBOL | $empty

    opt_1206 ::= partitionKeyAlgorithm | $empty

    grp_1205 ::= HASH_SYMBOL OPEN_PAR_SYMBOL bitExpr CLOSE_PAR_SYMBOL | KEY_SYMBOL opt_1206 identifierListWithParentheses

    seq_1207 ::= SUBPARTITIONS_SYMBOL real_ulong_number

    opt_1208 ::= seq_1207 | $empty

    seq_1209 ::= COMMA_SYMBOL partitionDefinition

    list_1210 ::= $empty | list_1210 seq_1209

    grp_1212 ::= partitionValueItemListParen | MAXVALUE_SYMBOL

    grp_1211 ::= VALUES_SYMBOL LESS_SYMBOL THAN_SYMBOL grp_1212 | VALUES_SYMBOL IN_SYMBOL partitionValuesIn

    opt_1213 ::= grp_1211 | $empty

    list_1214 ::= $empty | list_1214 partitionOption

    seq_1215 ::= COMMA_SYMBOL subpartitionDefinition

    list_1216 ::= $empty | list_1216 seq_1215

    seq_1217 ::= OPEN_PAR_SYMBOL subpartitionDefinition list_1216 CLOSE_PAR_SYMBOL

    opt_1218 ::= seq_1217 | $empty

    seq_1219 ::= COMMA_SYMBOL partitionValueItemListParen

    list_1220 ::= $empty | list_1220 seq_1219

    opt_1221 ::= EQUAL_OPERATOR | $empty

    opt_1222 ::= STORAGE_SYMBOL | $empty

    opt_1223 ::= EQUAL_OPERATOR | $empty

    opt_1224 ::= EQUAL_OPERATOR | $empty

    grp_1225 ::= MAX_ROWS_SYMBOL | MIN_ROWS_SYMBOL

    opt_1226 ::= EQUAL_OPERATOR | $empty

    grp_1227 ::= DATA_SYMBOL | INDEX_SYMBOL

    opt_1228 ::= EQUAL_OPERATOR | $empty

    opt_1229 ::= EQUAL_OPERATOR | $empty

    list_1230 ::= $empty | list_1230 partitionOption

    seq_1231 ::= COMMA_SYMBOL partitionValueItem

    list_1232 ::= $empty | list_1232 seq_1231

    grp_1233 ::= qualifiedIdentifier | DEFAULT_SYMBOL dotIdentifier

    grp_1234 ::= IN_SYMBOL | OUT_SYMBOL | INOUT_SYMBOL

    opt_1235 ::= grp_1234 | $empty

    opt_1236 ::= collate | $empty

    seq_1237 ::= COMMA_SYMBOL viewRef

    list_1238 ::= $empty | list_1238 seq_1237

    seq_1239 ::= COMMA_SYMBOL updateElement

    list_1240 ::= $empty | list_1240 seq_1239

    grp_1241 ::= expr | DEFAULT_SYMBOL

    list_1242 ::= fieldTerm | list_1242 fieldTerm

    opt_1243 ::= OPTIONALLY_SYMBOL | $empty

    list_1244 ::= lineTerm | list_1244 lineTerm

    grp_1245 ::= TERMINATED_SYMBOL | STARTING_SYMBOL

    seq_1246 ::= COMMA_SYMBOL user

    list_1247 ::= $empty | list_1247 seq_1246

    seq_1248 ::= COMMA_SYMBOL createUser

    list_1249 ::= $empty | list_1249 seq_1248

    opt_1251 ::= createUserWithMfa | $empty

    opt_1252 ::= initialAuth | $empty

    grp_1250 ::= identification opt_1251 | identifiedWithPlugin opt_1252 | createUserWithMfa

    opt_1253 ::= grp_1250 | $empty

    seq_1254 ::= AND_SYMBOL identification

    opt_1255 ::= seq_1254 | $empty

    grp_1256 ::= identifiedByRandomPassword | identifiedWithPluginAsAuth | identifiedByPassword

    opt_1257 ::= userVariable | $empty

    opt_1258 ::= parentheses | $empty

    opt_1259 ::= dotIdentifier | $empty

    seq_1260 ::= COMMA_SYMBOL columnInternalRef

    list_1261 ::= $empty | list_1261 seq_1260

    seq_1262 ::= identifier DOT_SYMBOL

    opt_1263 ::= seq_1262 | $empty

    seq_1265 ::= DOT_SYMBOL MULT_OPERATOR

    opt_1266 ::= seq_1265 | $empty

    grp_1264 ::= DOT_SYMBOL MULT_OPERATOR | dotIdentifier opt_1266

    opt_1267 ::= grp_1264 | $empty

    seq_1268 ::= COMMA_SYMBOL tableRef

    list_1269 ::= $empty | list_1269 seq_1268

    seq_1270 ::= COMMA_SYMBOL tableRefWithWildcard

    list_1271 ::= $empty | list_1271 seq_1270

    grp_1272 ::= IDENTIFIER | BACK_TICK_QUOTED_ID

    seq_1273 ::= COMMA_SYMBOL identifier

    list_1274 ::= $empty | list_1274 seq_1273

    opt_1275 ::= dotIdentifier | $empty

    opt_1276 ::= dotIdentifier | $empty

    seq_1277 ::= dotIdentifier opt_1276

    opt_1278 ::= seq_1277 | $empty

    opt_1279 ::= UNDERSCORE_CHARSET | $empty

    grp_1280 ::= HEX_NUMBER | BIN_NUMBER

    seq_1281 ::= COMMA_SYMBOL textString

    list_1282 ::= $empty | list_1282 seq_1281

    opt_1284 ::= UNDERSCORE_CHARSET | $empty

    grp_1283 ::= opt_1284 textStringLiteral | NCHAR_TEXT

    list_1285 ::= $empty | list_1285 textStringLiteral

    seq_1286 ::= COMMA_SYMBOL textStringLiteral

    list_1287 ::= $empty | list_1287 seq_1286

    grp_1288 ::= PERSIST_SYMBOL | PERSIST_ONLY_SYMBOL | GLOBAL_SYMBOL | LOCAL_SYMBOL | SESSION_SYMBOL

    grp_1289 ::= labelKeyword | roleOrIdentifierKeyword | EXECUTE_SYMBOL | SHUTDOWN_SYMBOL | RESTART_SYMBOL

    grp_1290 ::= identifierKeywordsUnambiguous | identifierKeywordsAmbiguous1RolesAndLabels | identifierKeywordsAmbiguous2Labels | identifierKeywordsAmbiguous3Roles | identifierKeywordsAmbiguous4SystemVariables

    grp_1291 ::= roleOrLabelKeyword | EVENT_SYMBOL | FILE_SYMBOL | NONE_SYMBOL | PROCESS_SYMBOL | PROXY_SYMBOL | RELOAD_SYMBOL | REPLICATION_SYMBOL | RESOURCE_SYMBOL | SUPER_SYMBOL

    grp_1292 ::= identifierKeywordsUnambiguous | identifierKeywordsAmbiguous3Roles | identifierKeywordsAmbiguous4SystemVariables

    grp_1293 ::= ACTION_SYMBOL | ACCOUNT_SYMBOL | ACTIVE_SYMBOL | ADDDATE_SYMBOL | ADMIN_SYMBOL | AFTER_SYMBOL | AGAINST_SYMBOL | AGGREGATE_SYMBOL | ALGORITHM_SYMBOL | ALWAYS_SYMBOL | ANY_SYMBOL | AT_SYMBOL | ATTRIBUTE_SYMBOL | AUTHENTICATION_SYMBOL | AUTOEXTEND_SIZE_SYMBOL | AUTO_INCREMENT_SYMBOL | AVG_ROW_LENGTH_SYMBOL | AVG_SYMBOL | BACKUP_SYMBOL | BINLOG_SYMBOL | BIT_SYMBOL | BLOCK_SYMBOL | BOOLEAN_SYMBOL | BOOL_SYMBOL | BTREE_SYMBOL | BUCKETS_SYMBOL | CASCADED_SYMBOL | CATALOG_NAME_SYMBOL | CHAIN_SYMBOL | CHALLENGE_RESPONSE_SYMBOL | CHANGED_SYMBOL | CHANNEL_SYMBOL | CIPHER_SYMBOL | CLASS_ORIGIN_SYMBOL | CLIENT_SYMBOL | CLOSE_SYMBOL | COALESCE_SYMBOL | CODE_SYMBOL | COLLATION_SYMBOL | COLUMNS_SYMBOL | COLUMN_FORMAT_SYMBOL | COLUMN_NAME_SYMBOL | COMMITTED_SYMBOL | COMPACT_SYMBOL | COMPLETION_SYMBOL | COMPONENT_SYMBOL | COMPRESSED_SYMBOL | COMPRESSION_SYMBOL | CONCURRENT_SYMBOL | CONNECTION_SYMBOL | CONSISTENT_SYMBOL | CONSTRAINT_CATALOG_SYMBOL | CONSTRAINT_NAME_SYMBOL | CONSTRAINT_SCHEMA_SYMBOL | CONTEXT_SYMBOL | CPU_SYMBOL | CURRENT_SYMBOL | CURSOR_NAME_SYMBOL | DATAFILE_SYMBOL | DATA_SYMBOL | DATETIME_SYMBOL | DATE_SYMBOL | DAY_SYMBOL | DEFAULT_AUTH_SYMBOL | DEFINER_SYMBOL | DEFINITION_SYMBOL | DELAY_KEY_WRITE_SYMBOL | DESCRIPTION_SYMBOL | DIAGNOSTICS_SYMBOL | DIRECTORY_SYMBOL | DISABLE_SYMBOL | DISCARD_SYMBOL | DISK_SYMBOL | DUMPFILE_SYMBOL | DUPLICATE_SYMBOL | DYNAMIC_SYMBOL | ENABLE_SYMBOL | ENCRYPTION_SYMBOL | ENDS_SYMBOL | ENFORCED_SYMBOL | ENGINES_SYMBOL | ENGINE_SYMBOL | ENUM_SYMBOL | ERRORS_SYMBOL | ERROR_SYMBOL | ESCAPE_SYMBOL | EVENTS_SYMBOL | EVERY_SYMBOL | EXCHANGE_SYMBOL | EXCLUDE_SYMBOL | EXPANSION_SYMBOL | EXPIRE_SYMBOL | EXPORT_SYMBOL | EXTENDED_SYMBOL | EXTENT_SIZE_SYMBOL | FACTOR_SYMBOL | FAST_SYMBOL | FAULTS_SYMBOL | FILE_BLOCK_SIZE_SYMBOL | FILTER_SYMBOL | FINISH_SYMBOL | FIRST_SYMBOL | FIXED_SYMBOL | FOLLOWING_SYMBOL | FORMAT_SYMBOL | FOUND_SYMBOL | FULL_SYMBOL | GENERAL_SYMBOL | GEOMETRYCOLLECTION_SYMBOL | GEOMETRY_SYMBOL | GET_FORMAT_SYMBOL | GET_MASTER_PUBLIC_KEY_SYMBOL | GET_SOURCE_PUBLIC_KEY_SYMBOL | GRANTS_SYMBOL | GROUP_REPLICATION_SYMBOL | GTID_ONLY_SYMBOL | HASH_SYMBOL | HISTOGRAM_SYMBOL | HISTORY_SYMBOL | HOSTS_SYMBOL | HOST_SYMBOL | HOUR_SYMBOL | IDENTIFIED_SYMBOL | IGNORE_SERVER_IDS_SYMBOL | INACTIVE_SYMBOL | INDEXES_SYMBOL | INITIAL_SIZE_SYMBOL | INITIAL_SYMBOL | INITIATE_SYMBOL | INSERT_METHOD_SYMBOL | INSTANCE_SYMBOL | INVISIBLE_SYMBOL | INVOKER_SYMBOL | IO_SYMBOL | IPC_SYMBOL | ISOLATION_SYMBOL | ISSUER_SYMBOL | JSON_SYMBOL | JSON_VALUE_SYMBOL | KEY_BLOCK_SIZE_SYMBOL | KEYRING_SYMBOL | LAST_SYMBOL | LEAVES_SYMBOL | LESS_SYMBOL | LEVEL_SYMBOL | LINESTRING_SYMBOL | LIST_SYMBOL | LOCKED_SYMBOL | LOCKS_SYMBOL | LOGFILE_SYMBOL | LOGS_SYMBOL | MASTER_AUTO_POSITION_SYMBOL | MASTER_COMPRESSION_ALGORITHM_SYMBOL | MASTER_CONNECT_RETRY_SYMBOL | MASTER_DELAY_SYMBOL | MASTER_HEARTBEAT_PERIOD_SYMBOL | MASTER_HOST_SYMBOL | NETWORK_NAMESPACE_SYMBOL | MASTER_LOG_FILE_SYMBOL | MASTER_LOG_POS_SYMBOL | MASTER_PASSWORD_SYMBOL | MASTER_PORT_SYMBOL | MASTER_PUBLIC_KEY_PATH_SYMBOL | MASTER_RETRY_COUNT_SYMBOL | MASTER_SSL_CAPATH_SYMBOL | MASTER_SSL_CA_SYMBOL | MASTER_SSL_CERT_SYMBOL | MASTER_SSL_CIPHER_SYMBOL | MASTER_SSL_CRLPATH_SYMBOL | MASTER_SSL_CRL_SYMBOL | MASTER_SSL_KEY_SYMBOL | MASTER_SSL_SYMBOL | MASTER_SYMBOL | MASTER_TLS_CIPHERSUITES_SYMBOL | MASTER_TLS_VERSION_SYMBOL | MASTER_USER_SYMBOL | MASTER_ZSTD_COMPRESSION_LEVEL_SYMBOL | MAX_CONNECTIONS_PER_HOUR_SYMBOL | MAX_QUERIES_PER_HOUR_SYMBOL | MAX_ROWS_SYMBOL | MAX_SIZE_SYMBOL | MAX_UPDATES_PER_HOUR_SYMBOL | MAX_USER_CONNECTIONS_SYMBOL | MEDIUM_SYMBOL | MEMORY_SYMBOL | MERGE_SYMBOL | MESSAGE_TEXT_SYMBOL | MICROSECOND_SYMBOL | MIGRATE_SYMBOL | MINUTE_SYMBOL | MIN_ROWS_SYMBOL | MODE_SYMBOL | MODIFY_SYMBOL | MONTH_SYMBOL | MULTILINESTRING_SYMBOL | MULTIPOINT_SYMBOL | MULTIPOLYGON_SYMBOL | MUTEX_SYMBOL | MYSQL_ERRNO_SYMBOL | NAMES_SYMBOL | NAME_SYMBOL | NATIONAL_SYMBOL | NCHAR_SYMBOL | NDBCLUSTER_SYMBOL | NESTED_SYMBOL | NEVER_SYMBOL | NEW_SYMBOL | NEXT_SYMBOL | NODEGROUP_SYMBOL | NOWAIT_SYMBOL | NO_WAIT_SYMBOL | NULLS_SYMBOL | NUMBER_SYMBOL | NVARCHAR_SYMBOL | OFFSET_SYMBOL | OJ_SYMBOL | OLD_SYMBOL | ONE_SYMBOL | ONLY_SYMBOL | OPEN_SYMBOL | OPTIONAL_SYMBOL | OPTIONS_SYMBOL | ORDINALITY_SYMBOL | ORGANIZATION_SYMBOL | OTHERS_SYMBOL | OWNER_SYMBOL | PACK_KEYS_SYMBOL | PAGE_SYMBOL | PARSER_SYMBOL | PARTIAL_SYMBOL | PARTITIONING_SYMBOL | PARTITIONS_SYMBOL | PASSWORD_SYMBOL | PATH_SYMBOL | PHASE_SYMBOL | PLUGINS_SYMBOL | PLUGIN_DIR_SYMBOL | PLUGIN_SYMBOL | POINT_SYMBOL | POLYGON_SYMBOL | PORT_SYMBOL | PRECEDING_SYMBOL | PRESERVE_SYMBOL | PREV_SYMBOL | PRIVILEGES_SYMBOL | PRIVILEGE_CHECKS_USER_SYMBOL | PROCESSLIST_SYMBOL | PROFILES_SYMBOL | PROFILE_SYMBOL | QUARTER_SYMBOL | QUERY_SYMBOL | QUICK_SYMBOL | READ_ONLY_SYMBOL | REBUILD_SYMBOL | RECOVER_SYMBOL | REDO_BUFFER_SIZE_SYMBOL | REDUNDANT_SYMBOL | REFERENCE_SYMBOL | REGISTRATION_SYMBOL | RELAY_SYMBOL | RELAYLOG_SYMBOL | RELAY_LOG_FILE_SYMBOL | RELAY_LOG_POS_SYMBOL | RELAY_THREAD_SYMBOL | REMOVE_SYMBOL | ASSIGN_GTIDS_TO_ANONYMOUS_TRANSACTIONS_SYMBOL | REORGANIZE_SYMBOL | REPEATABLE_SYMBOL | REPLICAS_SYMBOL | REPLICATE_DO_DB_SYMBOL | REPLICATE_DO_TABLE_SYMBOL | REPLICATE_IGNORE_DB_SYMBOL | REPLICATE_IGNORE_TABLE_SYMBOL | REPLICATE_REWRITE_DB_SYMBOL | REPLICATE_WILD_DO_TABLE_SYMBOL | REPLICATE_WILD_IGNORE_TABLE_SYMBOL | REPLICA_SYMBOL | USER_RESOURCES_SYMBOL | RESPECT_SYMBOL | RESTORE_SYMBOL | RESUME_SYMBOL | RETAIN_SYMBOL | RETURNED_SQLSTATE_SYMBOL | RETURNING_SYMBOL | RETURNS_SYMBOL | REUSE_SYMBOL | REVERSE_SYMBOL | ROLE_SYMBOL | ROLLUP_SYMBOL | ROTATE_SYMBOL | ROUTINE_SYMBOL | ROW_COUNT_SYMBOL | ROW_FORMAT_SYMBOL | RTREE_SYMBOL | SCHEDULE_SYMBOL | SCHEMA_NAME_SYMBOL | SECONDARY_ENGINE_SYMBOL | SECONDARY_ENGINE_ATTRIBUTE_SYMBOL | SECONDARY_LOAD_SYMBOL | SECONDARY_SYMBOL | SECONDARY_UNLOAD_SYMBOL | SECOND_SYMBOL | SECURITY_SYMBOL | SERIALIZABLE_SYMBOL | SERIAL_SYMBOL | SERVER_SYMBOL | SHARE_SYMBOL | SIMPLE_SYMBOL | SKIP_SYMBOL | SLOW_SYMBOL | SNAPSHOT_SYMBOL | SOCKET_SYMBOL | SONAME_SYMBOL | SOUNDS_SYMBOL | SOURCE_AUTO_POSITION_SYMBOL | SOURCE_BIND_SYMBOL | SOURCE_COMPRESSION_ALGORITHM_SYMBOL | SOURCE_CONNECTION_AUTO_FAILOVER_SYMBOL | SOURCE_CONNECT_RETRY_SYMBOL | SOURCE_DELAY_SYMBOL | SOURCE_HEARTBEAT_PERIOD_SYMBOL | SOURCE_HOST_SYMBOL | SOURCE_LOG_FILE_SYMBOL | SOURCE_LOG_POS_SYMBOL | SOURCE_PASSWORD_SYMBOL | SOURCE_PORT_SYMBOL | SOURCE_PUBLIC_KEY_PATH_SYMBOL | SOURCE_RETRY_COUNT_SYMBOL | SOURCE_SSL_CAPATH_SYMBOL | SOURCE_SSL_CA_SYMBOL | SOURCE_SSL_CERT_SYMBOL | SOURCE_SSL_CIPHER_SYMBOL | SOURCE_SSL_CRLPATH_SYMBOL | SOURCE_SSL_CRL_SYMBOL | SOURCE_SSL_KEY_SYMBOL | SOURCE_SSL_SYMBOL | SOURCE_SSL_VERIFY_SERVER_CERT_SYMBOL | SOURCE_SYMBOL | SOURCE_TLS_CIPHERSUITES_SYMBOL | SOURCE_TLS_VERSION_SYMBOL | SOURCE_USER_SYMBOL | SOURCE_ZSTD_COMPRESSION_LEVEL_SYMBOL | SQL_AFTER_GTIDS_SYMBOL | SQL_AFTER_MTS_GAPS_SYMBOL | SQL_BEFORE_GTIDS_SYMBOL | SQL_BUFFER_RESULT_SYMBOL | SQL_NO_CACHE_SYMBOL | SQL_THREAD_SYMBOL | SRID_SYMBOL | STACKED_SYMBOL | STARTS_SYMBOL | STATS_AUTO_RECALC_SYMBOL | STATS_PERSISTENT_SYMBOL | STATS_SAMPLE_PAGES_SYMBOL | STATUS_SYMBOL | STORAGE_SYMBOL | STRING_SYMBOL | ST_COLLECT_SYMBOL | SUBCLASS_ORIGIN_SYMBOL | SUBDATE_SYMBOL | SUBJECT_SYMBOL | SUBPARTITIONS_SYMBOL | SUBPARTITION_SYMBOL | SUSPEND_SYMBOL | SWAPS_SYMBOL | SWITCHES_SYMBOL | TABLES_SYMBOL | TABLESPACE_SYMBOL | TABLE_CHECKSUM_SYMBOL | TABLE_NAME_SYMBOL | TEMPORARY_SYMBOL | TEMPTABLE_SYMBOL | TEXT_SYMBOL | THAN_SYMBOL | THREAD_PRIORITY_SYMBOL | TIES_SYMBOL | TIMESTAMPADD_SYMBOL | TIMESTAMPDIFF_SYMBOL | TIMESTAMP_SYMBOL | TIME_SYMBOL | TLS_SYMBOL | TRANSACTION_SYMBOL | TRIGGERS_SYMBOL | TYPES_SYMBOL | TYPE_SYMBOL | UNBOUNDED_SYMBOL | UNCOMMITTED_SYMBOL | UNDEFINED_SYMBOL | UNDOFILE_SYMBOL | UNDO_BUFFER_SIZE_SYMBOL | UNKNOWN_SYMBOL | UNREGISTER_SYMBOL | UNTIL_SYMBOL | UPGRADE_SYMBOL | USER_SYMBOL | USE_FRM_SYMBOL | VALIDATION_SYMBOL | VALUE_SYMBOL | VARIABLES_SYMBOL | VCPU_SYMBOL | VIEW_SYMBOL | VISIBLE_SYMBOL | WAIT_SYMBOL | WARNINGS_SYMBOL | WEEK_SYMBOL | WEIGHT_STRING_SYMBOL | WITHOUT_SYMBOL | WORK_SYMBOL | WRAPPER_SYMBOL | X509_SYMBOL | XID_SYMBOL | XML_SYMBOL | YEAR_SYMBOL | ZONE_SYMBOL

    grp_1294 ::= ARRAY_SYMBOL | FAILED_LOGIN_ATTEMPTS_SYMBOL | MASTER_COMPRESSION_ALGORITHM_SYMBOL | MASTER_TLS_CIPHERSUITES_SYMBOL | MASTER_ZSTD_COMPRESSION_LEVEL_SYMBOL | MEMBER_SYMBOL | OFF_SYMBOL | PASSWORD_LOCK_TIME_SYMBOL | PRIVILEGE_CHECKS_USER_SYMBOL | RANDOM_SYMBOL | REQUIRE_ROW_FORMAT_SYMBOL | REQUIRE_TABLE_PRIMARY_KEY_CHECK_SYMBOL | STREAM_SYMBOL | TIMESTAMP_SYMBOL | TIME_SYMBOL

    grp_1295 ::= BULK_SYMBOL | GENERATE_SYMBOL | GTIDS_SYMBOL | LOG_SYMBOL | PARSE_TREE_SYMBOL | S3_SYMBOL | BERNOULLI_SYMBOL

    grp_1296 ::= roleOrLabelKeyword | roleOrIdentifierKeyword

    grp_1297 ::= identifierKeywordsUnambiguous | identifierKeywordsAmbiguous2Labels | identifierKeywordsAmbiguous4SystemVariables

    grp_1298 ::= ACCOUNT_SYMBOL | ASCII_SYMBOL | ALWAYS_SYMBOL | BACKUP_SYMBOL | BEGIN_SYMBOL | BYTE_SYMBOL | CACHE_SYMBOL | CHARSET_SYMBOL | CHECKSUM_SYMBOL | CLONE_SYMBOL | CLOSE_SYMBOL | COMMENT_SYMBOL | COMMIT_SYMBOL | CONTAINS_SYMBOL | DEALLOCATE_SYMBOL | DO_SYMBOL | END_SYMBOL | FLUSH_SYMBOL | FOLLOWS_SYMBOL | FORMAT_SYMBOL | GROUP_REPLICATION_SYMBOL | HANDLER_SYMBOL | HELP_SYMBOL | HOST_SYMBOL | INSTALL_SYMBOL | INVISIBLE_SYMBOL | LANGUAGE_SYMBOL | NO_SYMBOL | OPEN_SYMBOL | OPTIONS_SYMBOL | OWNER_SYMBOL | PARSER_SYMBOL | PARTITION_SYMBOL | PORT_SYMBOL | PRECEDES_SYMBOL | PREPARE_SYMBOL | REMOVE_SYMBOL | REPAIR_SYMBOL | RESET_SYMBOL | RESTORE_SYMBOL | ROLE_SYMBOL | ROLLBACK_SYMBOL | SAVEPOINT_SYMBOL | SECONDARY_SYMBOL | SECONDARY_ENGINE_SYMBOL | SECONDARY_LOAD_SYMBOL | SECONDARY_UNLOAD_SYMBOL | SECURITY_SYMBOL | SERVER_SYMBOL | SIGNED_SYMBOL | SOCKET_SYMBOL | SLAVE_SYMBOL | SONAME_SYMBOL | START_SYMBOL | STOP_SYMBOL | TRUNCATE_SYMBOL | UNICODE_SYMBOL | UNINSTALL_SYMBOL | UPGRADE_SYMBOL | VISIBLE_SYMBOL | WRAPPER_SYMBOL | XA_SYMBOL

    grp_1299 ::= ACTION_SYMBOL | ACTIVE_SYMBOL | ADDDATE_SYMBOL | AFTER_SYMBOL | AGAINST_SYMBOL | AGGREGATE_SYMBOL | ALGORITHM_SYMBOL | ANY_SYMBOL | AT_SYMBOL | AUTO_INCREMENT_SYMBOL | AUTOEXTEND_SIZE_SYMBOL | AVG_ROW_LENGTH_SYMBOL | AVG_SYMBOL | BINLOG_SYMBOL | BIT_SYMBOL | BLOCK_SYMBOL | BOOL_SYMBOL | BOOLEAN_SYMBOL | BTREE_SYMBOL | BUCKETS_SYMBOL | CASCADED_SYMBOL | CATALOG_NAME_SYMBOL | CHAIN_SYMBOL | CHANGED_SYMBOL | CHANNEL_SYMBOL | CIPHER_SYMBOL | CLIENT_SYMBOL | CLASS_ORIGIN_SYMBOL | COALESCE_SYMBOL | CODE_SYMBOL | COLLATION_SYMBOL | COLUMN_NAME_SYMBOL | COLUMN_FORMAT_SYMBOL | COLUMNS_SYMBOL | COMMITTED_SYMBOL | COMPACT_SYMBOL | COMPLETION_SYMBOL | COMPONENT_SYMBOL | COMPRESSED_SYMBOL | COMPRESSION_SYMBOL | CONCURRENT_SYMBOL | CONNECTION_SYMBOL | CONSISTENT_SYMBOL | CONSTRAINT_CATALOG_SYMBOL | CONSTRAINT_SCHEMA_SYMBOL | CONSTRAINT_NAME_SYMBOL | CONTEXT_SYMBOL | CPU_SYMBOL | CURRENT_SYMBOL | CURSOR_NAME_SYMBOL | DATA_SYMBOL | DATAFILE_SYMBOL | DATETIME_SYMBOL | DATE_SYMBOL | DAY_SYMBOL | DEFAULT_AUTH_SYMBOL | DEFINER_SYMBOL | DELAY_KEY_WRITE_SYMBOL | DESCRIPTION_SYMBOL | DIAGNOSTICS_SYMBOL | DIRECTORY_SYMBOL | DISABLE_SYMBOL | DISCARD_SYMBOL | DISK_SYMBOL | DUMPFILE_SYMBOL | DUPLICATE_SYMBOL | DYNAMIC_SYMBOL | ENCRYPTION_SYMBOL | ENDS_SYMBOL | ENUM_SYMBOL | ENGINE_SYMBOL | ENGINES_SYMBOL | ENGINE_ATTRIBUTE_SYMBOL | ERROR_SYMBOL | ERRORS_SYMBOL | ESCAPE_SYMBOL | EVENTS_SYMBOL | EVERY_SYMBOL | EXCLUDE_SYMBOL | EXPANSION_SYMBOL | EXPORT_SYMBOL | EXTENDED_SYMBOL | EXTENT_SIZE_SYMBOL | FAULTS_SYMBOL | FAST_SYMBOL | FOLLOWING_SYMBOL | FOUND_SYMBOL | ENABLE_SYMBOL | FULL_SYMBOL | FILE_BLOCK_SIZE_SYMBOL | FILTER_SYMBOL | FIRST_SYMBOL | FIXED_SYMBOL | GENERAL_SYMBOL | GEOMETRY_SYMBOL | GEOMETRYCOLLECTION_SYMBOL | GET_FORMAT_SYMBOL | GRANTS_SYMBOL | GLOBAL_SYMBOL | HASH_SYMBOL | HISTOGRAM_SYMBOL | HISTORY_SYMBOL | HOSTS_SYMBOL | HOUR_SYMBOL | IDENTIFIED_SYMBOL | IGNORE_SERVER_IDS_SYMBOL | INVOKER_SYMBOL | INDEXES_SYMBOL | INITIAL_SIZE_SYMBOL | INSTANCE_SYMBOL | INACTIVE_SYMBOL | IO_SYMBOL | IPC_SYMBOL | ISOLATION_SYMBOL | ISSUER_SYMBOL | INSERT_METHOD_SYMBOL | JSON_SYMBOL | KEY_BLOCK_SIZE_SYMBOL | LAST_SYMBOL | LEAVES_SYMBOL | LESS_SYMBOL | LEVEL_SYMBOL | LINESTRING_SYMBOL | LIST_SYMBOL | LOCAL_SYMBOL | LOCKED_SYMBOL | LOCKS_SYMBOL | LOGFILE_SYMBOL | LOGS_SYMBOL | MAX_ROWS_SYMBOL | MASTER_SYMBOL | MASTER_HEARTBEAT_PERIOD_SYMBOL | MASTER_HOST_SYMBOL | MASTER_PORT_SYMBOL | MASTER_LOG_FILE_SYMBOL | MASTER_LOG_POS_SYMBOL | MASTER_USER_SYMBOL | MASTER_PASSWORD_SYMBOL | MASTER_PUBLIC_KEY_PATH_SYMBOL | MASTER_CONNECT_RETRY_SYMBOL | MASTER_RETRY_COUNT_SYMBOL | MASTER_DELAY_SYMBOL | MASTER_SSL_SYMBOL | MASTER_SSL_CA_SYMBOL | MASTER_SSL_CAPATH_SYMBOL | MASTER_TLS_VERSION_SYMBOL | MASTER_SSL_CERT_SYMBOL | MASTER_SSL_CIPHER_SYMBOL | MASTER_SSL_CRL_SYMBOL | MASTER_SSL_CRLPATH_SYMBOL | MASTER_SSL_KEY_SYMBOL | MASTER_AUTO_POSITION_SYMBOL | MAX_CONNECTIONS_PER_HOUR_SYMBOL | MAX_QUERIES_PER_HOUR_SYMBOL | MAX_SIZE_SYMBOL | MAX_UPDATES_PER_HOUR_SYMBOL | MAX_USER_CONNECTIONS_SYMBOL | MEDIUM_SYMBOL | MEMORY_SYMBOL | MERGE_SYMBOL | MESSAGE_TEXT_SYMBOL | MICROSECOND_SYMBOL | MIGRATE_SYMBOL | MINUTE_SYMBOL | MIN_ROWS_SYMBOL | MODIFY_SYMBOL | MODE_SYMBOL | MONTH_SYMBOL | MULTILINESTRING_SYMBOL | MULTIPOINT_SYMBOL | MULTIPOLYGON_SYMBOL | MUTEX_SYMBOL | MYSQL_ERRNO_SYMBOL | NAME_SYMBOL | NAMES_SYMBOL | NATIONAL_SYMBOL | NCHAR_SYMBOL | NDBCLUSTER_SYMBOL | NESTED_SYMBOL | NEVER_SYMBOL | NEXT_SYMBOL | NEW_SYMBOL | NO_WAIT_SYMBOL | NODEGROUP_SYMBOL | NULLS_SYMBOL | NOWAIT_SYMBOL | NUMBER_SYMBOL | NVARCHAR_SYMBOL | OFFSET_SYMBOL | OLD_SYMBOL | ONE_SYMBOL | OPTIONAL_SYMBOL | ORDINALITY_SYMBOL | ORGANIZATION_SYMBOL | OTHERS_SYMBOL | PACK_KEYS_SYMBOL | PAGE_SYMBOL | PARTIAL_SYMBOL | PARTITIONING_SYMBOL | PARTITIONS_SYMBOL | PASSWORD_SYMBOL | PATH_SYMBOL | PHASE_SYMBOL | PLUGIN_DIR_SYMBOL | PLUGIN_SYMBOL | PLUGINS_SYMBOL | POINT_SYMBOL | POLYGON_SYMBOL | PRECEDING_SYMBOL | PRESERVE_SYMBOL | PREV_SYMBOL | THREAD_PRIORITY_SYMBOL | PRIVILEGES_SYMBOL | PROCESSLIST_SYMBOL | PROFILE_SYMBOL | PROFILES_SYMBOL | QUARTER_SYMBOL | QUERY_SYMBOL | QUICK_SYMBOL | READ_ONLY_SYMBOL | REBUILD_SYMBOL | RECOVER_SYMBOL | REDO_BUFFER_SIZE_SYMBOL | REDUNDANT_SYMBOL | RELAY_SYMBOL | RELAYLOG_SYMBOL | RELAY_LOG_FILE_SYMBOL | RELAY_LOG_POS_SYMBOL | RELAY_THREAD_SYMBOL | REMOTE_SYMBOL | REORGANIZE_SYMBOL | REPEATABLE_SYMBOL | REPLICATE_DO_DB_SYMBOL | REPLICATE_IGNORE_DB_SYMBOL | REPLICATE_DO_TABLE_SYMBOL | REPLICATE_IGNORE_TABLE_SYMBOL | REPLICATE_WILD_DO_TABLE_SYMBOL | REPLICATE_WILD_IGNORE_TABLE_SYMBOL | REPLICATE_REWRITE_DB_SYMBOL | USER_RESOURCES_SYMBOL | RESPECT_SYMBOL | RESUME_SYMBOL | RETAIN_SYMBOL | RETURNED_SQLSTATE_SYMBOL | RETURNS_SYMBOL | REUSE_SYMBOL | REVERSE_SYMBOL | ROLLUP_SYMBOL | ROTATE_SYMBOL | ROUTINE_SYMBOL | ROW_COUNT_SYMBOL | ROW_FORMAT_SYMBOL | RTREE_SYMBOL | SCHEDULE_SYMBOL | SCHEMA_NAME_SYMBOL | SECOND_SYMBOL | SERIAL_SYMBOL | SERIALIZABLE_SYMBOL | SESSION_SYMBOL | SHARE_SYMBOL | SIMPLE_SYMBOL | SKIP_SYMBOL | SLOW_SYMBOL | SNAPSHOT_SYMBOL | SOUNDS_SYMBOL | SOURCE_SYMBOL | SQL_AFTER_GTIDS_SYMBOL | SQL_AFTER_MTS_GAPS_SYMBOL | SQL_BEFORE_GTIDS_SYMBOL | SQL_BUFFER_RESULT_SYMBOL | SQL_NO_CACHE_SYMBOL | SQL_THREAD_SYMBOL | SRID_SYMBOL | STACKED_SYMBOL | STARTS_SYMBOL | STATS_AUTO_RECALC_SYMBOL | STATS_PERSISTENT_SYMBOL | STATS_SAMPLE_PAGES_SYMBOL | STATUS_SYMBOL | STORAGE_SYMBOL | STRING_SYMBOL | SUBCLASS_ORIGIN_SYMBOL | SUBDATE_SYMBOL | SUBJECT_SYMBOL | SUBPARTITION_SYMBOL | SUBPARTITIONS_SYMBOL | SUPER_SYMBOL | SUSPEND_SYMBOL | SWAPS_SYMBOL | SWITCHES_SYMBOL | TABLE_NAME_SYMBOL | TABLES_SYMBOL | TABLE_CHECKSUM_SYMBOL | TABLESPACE_SYMBOL | TEMPORARY_SYMBOL | TEMPTABLE_SYMBOL | TEXT_SYMBOL | THAN_SYMBOL | TIES_SYMBOL | TRANSACTION_SYMBOL | TRIGGERS_SYMBOL | TIMESTAMP_SYMBOL | TIMESTAMPADD_SYMBOL | TIMESTAMPDIFF_SYMBOL | TIME_SYMBOL | TYPES_SYMBOL | TYPE_SYMBOL | UDF_RETURNS_SYMBOL | UNBOUNDED_SYMBOL | UNCOMMITTED_SYMBOL | UNDEFINED_SYMBOL | UNDO_BUFFER_SIZE_SYMBOL | UNDOFILE_SYMBOL | UNKNOWN_SYMBOL | UNTIL_SYMBOL | USER_SYMBOL | USE_FRM_SYMBOL | VARIABLES_SYMBOL | VCPU_SYMBOL | VIEW_SYMBOL | VALUE_SYMBOL | WARNINGS_SYMBOL | WAIT_SYMBOL | WEEK_SYMBOL | WORK_SYMBOL | WEIGHT_STRING_SYMBOL | X509_SYMBOL | XID_SYMBOL | XML_SYMBOL | YEAR_SYMBOL

%End
