-- AUTO-GENERATED from antlr/grammars-v4 sql/mysql/Positive-Technologies by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=SqlMysqlPositiveTechnologiesParser
%options package=lpg.grammars.sql.mysql.Positive_Technologies
%options template=dtParserTemplateF.gi
%options import_terminals=SqlMysqlPositiveTechnologiesLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    root
%End

%Rules
    root ::= opt_1 opt_3

    sqlStatements ::= list_8 grp_9

    sqlStatement ::= ddlStatement
           | dmlStatement
           | transactionStatement
           | replicationStatement
           | preparedStatement
           | administrationStatement
           | utilityStatement

    emptyStatement_ ::= SEMI

    ddlStatement ::= createDatabase
           | createEvent
           | createIndex
           | createLogfileGroup
           | createProcedure
           | createFunction
           | createServer
           | createTable
           | createTablespaceInnodb
           | createTablespaceNdb
           | createTrigger
           | createView
           | createRole
           | alterDatabase
           | alterEvent
           | alterFunction
           | alterInstance
           | alterLogfileGroup
           | alterProcedure
           | alterServer
           | alterTable
           | alterTablespace
           | alterView
           | dropDatabase
           | dropEvent
           | dropIndex
           | dropLogfileGroup
           | dropProcedure
           | dropFunction
           | dropServer
           | dropTable
           | dropTablespace
           | dropTrigger
           | dropView
           | dropRole
           | setRole
           | renameTable
           | truncateTable

    dmlStatement ::= selectStatement
           | insertStatement
           | updateStatement
           | deleteStatement
           | replaceStatement
           | callStatement
           | loadDataStatement
           | loadXmlStatement
           | doStatement
           | handlerStatement
           | valuesStatement
           | withStatement
           | tableStatement

    transactionStatement ::= startTransaction
           | beginWork
           | commitWork
           | rollbackWork
           | savepointStatement
           | rollbackStatement
           | releaseStatement
           | lockTables
           | unlockTables

    replicationStatement ::= changeMaster
           | changeReplicationFilter
           | purgeBinaryLogs
           | resetMaster
           | resetSlave
           | startSlave
           | stopSlave
           | startGroupReplication
           | stopGroupReplication
           | xaStartTransaction
           | xaEndTransaction
           | xaPrepareStatement
           | xaCommitWork
           | xaRollbackWork
           | xaRecoverWork

    preparedStatement ::= prepareStatement
           | executeStatement
           | deallocatePrepare

    compoundStatement ::= blockStatement
           | caseStatement
           | ifStatement
           | leaveStatement
           | loopStatement
           | repeatStatement
           | whileStatement
           | iterateStatement
           | returnStatement
           | cursorStatement
           | withStatement dmlStatement

    administrationStatement ::= alterUser
           | createUser
           | dropUser
           | grantStatement
           | grantProxy
           | renameUser
           | revokeStatement
           | revokeProxy
           | analyzeTable
           | checkTable
           | checksumTable
           | optimizeTable
           | repairTable
           | createUdfunction
           | installPlugin
           | uninstallPlugin
           | setStatement
           | showStatement
           | binlogStatement
           | cacheIndexStatement
           | flushStatement
           | killStatement
           | loadIndexIntoCache
           | resetStatement
           | shutdownStatement

    utilityStatement ::= simpleDescribeStatement
           | fullDescribeStatement
           | helpStatement
           | useStatement
           | signalStatement
           | resignalStatement
           | diagnosticsStatement

    createDatabase ::= CREATE grp_14 opt_15 uid list_16

    createEvent ::= CREATE opt_17 EVENT opt_18 fullId ON SCHEDULE scheduleExpression opt_21 opt_22 opt_24 DO routineBody

    createIndex ::= CREATE opt_26 opt_28 INDEX uid opt_29 ON tableName indexColumnNames list_30 list_36

    createLogfileGroup ::= CREATE LOGFILE GROUP uid ADD UNDOFILE STRING_LITERAL opt_39 opt_42 opt_45 opt_48 opt_49 opt_52 ENGINE opt_53 engineName

    createProcedure ::= CREATE opt_54 PROCEDURE opt_55 fullId LPAREN opt_56 list_58 RPAREN list_59 routineBody

    createFunction ::= CREATE opt_60 opt_61 FUNCTION opt_62 fullId LPAREN opt_63 list_65 RPAREN RETURNS dataType list_66 grp_67

    createRole ::= CREATE ROLE opt_68 roleName list_70

    createServer ::= CREATE SERVER uid FOREIGN DATA WRAPPER grp_71 OPTIONS LPAREN serverOption list_73 RPAREN

    createTable ::= CREATE opt_74 TABLE opt_75 tableName grp_76
           | CREATE opt_77 TABLE opt_78 tableName opt_79 opt_84 opt_85 opt_87 opt_88 selectStatement
           | CREATE opt_89 TABLE opt_90 tableName createDefinitions opt_95 opt_96

    createTablespaceInnodb ::= CREATE TABLESPACE uid ADD DATAFILE STRING_LITERAL opt_98 opt_101

    createTablespaceNdb ::= CREATE TABLESPACE uid ADD DATAFILE STRING_LITERAL USE LOGFILE GROUP uid opt_104 opt_107 opt_110 opt_113 opt_116 opt_117 opt_120 ENGINE opt_121 engineName

    createTrigger ::= CREATE opt_122 TRIGGER opt_123 fullId grp_124 grp_125 ON tableName FOR EACH ROW opt_128 routineBody

    withClause ::= WITH opt_129 commonTableExpressions

    commonTableExpressions ::= cteName opt_133 AS LPAREN dmlStatement RPAREN opt_135

    cteName ::= uid

    cteColumnName ::= uid

    createView ::= CREATE opt_136 opt_139 opt_140 opt_143 VIEW fullId opt_145 AS grp_146

    createDatabaseOption ::= opt_153 charSet opt_154 grp_155
           | opt_156 COLLATE opt_157 collationName
           | opt_158 ENCRYPTION opt_159 STRING_LITERAL
           | READ ONLY opt_160 grp_161

    charSet ::= CHARACTER SET
           | CHARSET
           | CHAR SET

    currentUserExpression ::= CURRENT_USER opt_163

    ownerStatement ::= DEFINER EQ grp_164

    scheduleExpression ::= AT timestampValue list_165
           | EVERY grp_166 intervalType opt_171 opt_176

    timestampValue ::= CURRENT_TIMESTAMP
           | stringLiteral
           | decimalLiteral
           | expression

    intervalExpr ::= PLUS INTERVAL grp_177 intervalType

    intervalType ::= intervalTypeBase
           | YEAR
           | YEAR_MONTH
           | DAY_HOUR
           | DAY_MINUTE
           | DAY_SECOND
           | HOUR_MINUTE
           | HOUR_SECOND
           | MINUTE_SECOND
           | SECOND_MICROSECOND
           | MINUTE_MICROSECOND
           | HOUR_MICROSECOND
           | DAY_MICROSECOND

    enableType ::= ENABLE
           | DISABLE
           | DISABLE ON SLAVE

    indexType ::= USING grp_178

    indexOption ::= KEY_BLOCK_SIZE opt_179 fileSizeLiteral
           | indexType
           | WITH PARSER uid
           | COMMENT STRING_LITERAL
           | grp_180
           | ENGINE_ATTRIBUTE opt_181 STRING_LITERAL
           | SECONDARY_ENGINE_ATTRIBUTE opt_182 STRING_LITERAL

    procedureParameter ::= opt_184 uid dataType

    functionParameter ::= uid dataType

    routineOption ::= COMMENT STRING_LITERAL
           | LANGUAGE SQL
           | opt_185 DETERMINISTIC
           | grp_186
           | SQL SECURITY grp_187

    serverOption ::= HOST STRING_LITERAL
           | DATABASE STRING_LITERAL
           | USER STRING_LITERAL
           | PASSWORD STRING_LITERAL
           | SOCKET STRING_LITERAL
           | OWNER STRING_LITERAL
           | PORT decimalLiteral

    createDefinitions ::= LPAREN createDefinition list_189 RPAREN

    createDefinition ::= fullColumnName columnDefinition
           | tableConstraint opt_190 opt_191
           | indexColumnDefinition

    columnDefinition ::= dataType list_192 opt_193 opt_194

    columnConstraint ::= nullNotnull
           | DEFAULT defaultValue
           | VISIBLE
           | INVISIBLE
           | grp_195
           | opt_196 KEY
           | CLUSTERING KEY
           | UNIQUE opt_197
           | COMMENT STRING_LITERAL
           | COLUMN_FORMAT grp_198
           | STORAGE grp_199
           | referenceDefinition
           | COLLATE collationName
           | opt_201 AS LPAREN expression RPAREN opt_203
           | SERIAL DEFAULT VALUE
           | opt_206 CHECK LPAREN expression RPAREN

    tableConstraint ::= opt_209 PRIMARY KEY opt_210 opt_211 indexColumnNames list_212
           | opt_215 UNIQUE opt_217 opt_218 opt_219 indexColumnNames list_220
           | opt_223 FOREIGN KEY opt_224 indexColumnNames referenceDefinition
           | opt_227 CHECK LPAREN expression RPAREN
           | CLUSTERING KEY opt_228 indexColumnNames

    referenceDefinition ::= REFERENCES tableName opt_229 opt_232 opt_233

    referenceAction ::= ON DELETE referenceControlType opt_235
           | ON UPDATE referenceControlType opt_237

    referenceControlType ::= RESTRICT
           | CASCADE
           | SET NULL_LITERAL
           | NO ACTION
           | SET DEFAULT

    indexColumnDefinition ::= grp_238 opt_239 opt_240 indexColumnNames list_241
           | grp_242 opt_244 opt_245 indexColumnNames list_246

    tableOption ::= ENGINE opt_247 opt_248
           | ENGINE_ATTRIBUTE opt_249 STRING_LITERAL
           | AUTOEXTEND_SIZE opt_250 decimalLiteral
           | AUTO_INCREMENT opt_251 decimalLiteral
           | AVG_ROW_LENGTH opt_252 decimalLiteral
           | opt_253 charSet opt_254 grp_255
           | grp_256 opt_257 grp_258
           | opt_259 COLLATE opt_260 collationName
           | COMMENT opt_261 STRING_LITERAL
           | COMPRESSION opt_262 grp_263
           | CONNECTION opt_264 STRING_LITERAL
           | grp_265 DIRECTORY opt_266 STRING_LITERAL
           | DELAY_KEY_WRITE opt_267 grp_268
           | ENCRYPTION opt_269 STRING_LITERAL
           | grp_270 opt_271 grp_272
           | grp_273 opt_274 decimalLiteral
           | ENCRYPTION_KEY_ID opt_275 decimalLiteral
           | INDEX DIRECTORY opt_276 STRING_LITERAL
           | INSERT_METHOD opt_277 grp_278
           | KEY_BLOCK_SIZE opt_279 fileSizeLiteral
           | MAX_ROWS opt_280 decimalLiteral
           | MIN_ROWS opt_281 decimalLiteral
           | PACK_KEYS opt_282 grp_283
           | PASSWORD opt_284 STRING_LITERAL
           | ROW_FORMAT opt_285 grp_286
           | START TRANSACTION
           | SECONDARY_ENGINE opt_287 grp_288
           | SECONDARY_ENGINE_ATTRIBUTE opt_289 STRING_LITERAL
           | STATS_AUTO_RECALC opt_290 grp_291
           | STATS_PERSISTENT opt_292 grp_293
           | STATS_SAMPLE_PAGES opt_294 grp_295
           | TABLESPACE uid opt_296
           | TABLE_TYPE EQ tableType
           | tablespaceStorage
           | TRANSACTIONAL opt_297 grp_298
           | UNION opt_299 LPAREN tables RPAREN

    tableType ::= MYSQL
           | ODBC

    tablespaceStorage ::= STORAGE grp_300

    partitionDefinitions ::= PARTITION BY partitionFunctionDefinition opt_302 opt_306 opt_310

    partitionFunctionDefinition ::= opt_311 HASH LPAREN expression RPAREN
           | opt_312 KEY opt_315 LPAREN opt_316 RPAREN
           | RANGE grp_317
           | LIST grp_318

    subpartitionFunctionDefinition ::= opt_319 HASH LPAREN expression RPAREN
           | opt_320 KEY opt_323 LPAREN uidList RPAREN

    partitionDefinition ::= PARTITION uid VALUES LESS THAN LPAREN partitionDefinerAtom list_325 RPAREN list_326 opt_330
           | PARTITION uid VALUES LESS THAN partitionDefinerAtom list_331 opt_335
           | PARTITION uid VALUES IN LPAREN partitionDefinerAtom list_337 RPAREN list_338 opt_342
           | PARTITION uid VALUES IN LPAREN partitionDefinerVector list_344 RPAREN list_345 opt_349
           | PARTITION uid list_350 opt_354

    partitionDefinerAtom ::= constant
           | expression
           | MAXVALUE

    partitionDefinerVector ::= LPAREN partitionDefinerAtom list_356 RPAREN

    subpartitionDefinition ::= SUBPARTITION uid list_357

    partitionOption ::= opt_358 opt_359 ENGINE opt_360 engineName
           | COMMENT opt_361 STRING_LITERAL
           | DATA DIRECTORY opt_362 STRING_LITERAL
           | INDEX DIRECTORY opt_363 STRING_LITERAL
           | MAX_ROWS opt_364 decimalLiteral
           | MIN_ROWS opt_365 decimalLiteral
           | TABLESPACE opt_366 uid
           | NODEGROUP opt_367 uid

    alterDatabase ::= ALTER grp_368 opt_369 list_370
           | ALTER grp_371 uid UPGRADE DATA DIRECTORY NAME

    alterEvent ::= ALTER opt_372 EVENT fullId opt_374 opt_377 opt_379 opt_380 opt_382 opt_384

    alterFunction ::= ALTER FUNCTION fullId list_385

    alterInstance ::= ALTER INSTANCE ROTATE INNODB MASTER KEY

    alterLogfileGroup ::= ALTER LOGFILE GROUP uid ADD UNDOFILE STRING_LITERAL opt_388 opt_389 ENGINE opt_390 engineName

    alterProcedure ::= ALTER PROCEDURE fullId list_391

    alterServer ::= ALTER SERVER uid OPTIONS LPAREN serverOption list_393 RPAREN

    alterTable ::= ALTER opt_395 opt_396 TABLE tableName opt_400 opt_401

    alterTablespace ::= ALTER TABLESPACE uid grp_402 DATAFILE STRING_LITERAL opt_404 opt_405 ENGINE opt_406 engineName

    alterView ::= ALTER opt_409 opt_410 opt_413 VIEW fullId opt_415 AS selectStatement opt_419

    alterSpecification ::= tableOption list_422
           | ADD opt_423 uid columnDefinition opt_425
           | ADD opt_426 LPAREN uid columnDefinition list_428 RPAREN
           | ADD grp_429 opt_430 opt_431 indexColumnNames list_432
           | ADD opt_435 PRIMARY KEY opt_436 opt_437 indexColumnNames list_438
           | ADD opt_441 UNIQUE opt_443 opt_444 opt_445 indexColumnNames list_446
           | ADD grp_447 opt_449 opt_450 indexColumnNames list_451
           | ADD opt_454 FOREIGN KEY opt_455 indexColumnNames referenceDefinition
           | ADD opt_458 CHECK grp_459 opt_460 opt_461
           | ALTER opt_464 CHECK grp_465 opt_466 opt_467
           | ADD opt_470 CHECK LPAREN expression RPAREN
           | ALGORITHM opt_471 grp_472
           | ALTER opt_473 uid grp_474
           | CHANGE opt_475 uid uid columnDefinition opt_477
           | RENAME COLUMN uid TO uid
           | LOCK opt_478 grp_479
           | MODIFY opt_480 uid columnDefinition opt_482
           | DROP opt_483 uid opt_484
           | DROP grp_485 uid
           | DROP PRIMARY KEY
           | DROP grp_486 uid
           | RENAME grp_487 uid TO uid
           | ALTER opt_488 uid grp_489
           | ALTER INDEX uid grp_492
           | DROP FOREIGN KEY uid opt_493
           | DISABLE KEYS
           | ENABLE KEYS
           | RENAME opt_495 grp_496
           | ORDER BY uidList
           | CONVERT TO grp_497 charsetName opt_499
           | opt_500 CHARACTER SET EQ charsetName opt_502
           | DISCARD TABLESPACE
           | IMPORT TABLESPACE
           | FORCE
           | grp_503 VALIDATION
           | ADD opt_504 LPAREN createDefinition list_506 RPAREN
           | alterPartitionSpecification

    alterPartitionSpecification ::= ADD PARTITION LPAREN partitionDefinition list_508 RPAREN
           | DROP PARTITION uidList
           | DISCARD PARTITION grp_509 TABLESPACE
           | IMPORT PARTITION grp_510 TABLESPACE
           | TRUNCATE PARTITION grp_511
           | COALESCE PARTITION decimalLiteral
           | REORGANIZE PARTITION uidList INTO LPAREN partitionDefinition list_513 RPAREN
           | EXCHANGE PARTITION uid WITH TABLE tableName opt_516
           | ANALYZE PARTITION grp_517
           | CHECK PARTITION grp_518
           | OPTIMIZE PARTITION grp_519
           | REBUILD PARTITION grp_520
           | REPAIR PARTITION grp_521
           | REMOVE PARTITIONING
           | UPGRADE PARTITIONING

    dropDatabase ::= DROP grp_522 opt_523 uid

    dropEvent ::= DROP EVENT opt_524 fullId

    dropIndex ::= DROP INDEX opt_526 uid ON tableName list_532

    dropLogfileGroup ::= DROP LOGFILE GROUP uid ENGINE EQ engineName

    dropProcedure ::= DROP PROCEDURE opt_533 fullId

    dropFunction ::= DROP FUNCTION opt_534 fullId

    dropServer ::= DROP SERVER opt_535 uid

    dropTable ::= DROP opt_536 TABLE opt_537 tables opt_539

    dropTablespace ::= DROP TABLESPACE uid opt_542

    dropTrigger ::= DROP TRIGGER opt_543 fullId

    dropView ::= DROP VIEW opt_544 fullId list_546 opt_548

    dropRole ::= DROP ROLE opt_549 roleName list_551

    setRole ::= SET DEFAULT ROLE grp_552 TO grp_555 list_558
           | SET ROLE roleOption

    renameTable ::= RENAME TABLE renameTableClause list_560

    renameTableClause ::= tableName TO tableName

    truncateTable ::= TRUNCATE opt_561 tableName

    callStatement ::= CALL fullId opt_565

    deleteStatement ::= singleDeleteStatement
           | multipleDeleteStatement

    doStatement ::= DO expressions

    handlerStatement ::= handlerOpenStatement
           | handlerReadIndexStatement
           | handlerReadStatement
           | handlerCloseStatement

    insertStatement ::= INSERT opt_567 opt_568 opt_569 tableName opt_572 grp_573 opt_587

    loadDataStatement ::= LOAD DATA opt_589 opt_590 INFILE STRING_LITERAL opt_592 INTO TABLE tableName opt_594 opt_596 opt_600 opt_603 opt_606 opt_610 opt_614

    loadXmlStatement ::= LOAD XML opt_616 opt_617 INFILE STRING_LITERAL opt_619 INTO TABLE tableName opt_621 opt_623 opt_626 opt_630 opt_634

    replaceStatement ::= REPLACE opt_636 opt_637 tableName opt_639 grp_640

    selectStatement ::= querySpecification opt_646
           | queryExpression opt_647
           | grp_648 list_649 opt_654 opt_655 opt_656 opt_657
           | queryExpressionNointo list_658 opt_662 opt_663 opt_664 opt_665
           | querySpecificationNointo list_667

    updateStatement ::= singleUpdateStatement
           | multipleUpdateStatement

    valuesStatement ::= VALUES LPAREN opt_668 RPAREN list_671

    insertStatementValue ::= selectStatement
           | grp_672 LPAREN opt_673 RPAREN list_676

    updatedElement ::= fullColumnName EQ grp_677

    assignmentField ::= uid
           | LOCAL_ID

    lockClause ::= FOR UPDATE
           | LOCK IN SHARE MODE

    singleDeleteStatement ::= DELETE opt_678 opt_679 opt_680 FROM tableName opt_683 opt_685 opt_687 opt_688 opt_690

    multipleDeleteStatement ::= DELETE opt_691 opt_692 opt_693 grp_694 opt_708

    handlerOpenStatement ::= HANDLER tableName OPEN opt_711

    handlerReadIndexStatement ::= HANDLER tableName READ uid grp_712 opt_715 opt_717

    handlerReadStatement ::= HANDLER tableName READ grp_718 opt_720 opt_722

    handlerCloseStatement ::= HANDLER tableName CLOSE

    singleUpdateStatement ::= UPDATE opt_723 opt_724 tableSources opt_727 SET updatedElement list_729 opt_731 opt_732 opt_733

    multipleUpdateStatement ::= UPDATE opt_734 opt_735 tableSources SET updatedElement list_737 opt_739

    orderByClause ::= ORDER BY orderByExpression list_741

    orderByExpression ::= expression opt_743

    tableSources ::= tableSource list_745

    tableSource ::= tableSourceItem list_746
           | LPAREN tableSourceItem list_747 RPAREN
           | jsonTable

    tableSourceItem ::= tableName opt_749 opt_752 opt_756
           | sequenceFunctionName LPAREN DECIMAL_LITERAL RPAREN opt_759
           | grp_760 opt_761 uid
           | LPAREN tableSources RPAREN

    indexHint ::= grp_762 grp_763 opt_765 LPAREN uidList RPAREN

    indexHintType ::= JOIN
           | ORDER BY
           | GROUP BY

    joinPart ::= opt_767 JOIN opt_768 tableSourceItem list_769
           | STRAIGHT_JOIN tableSourceItem list_771
           | grp_772 opt_773 JOIN opt_774 tableSourceItem list_775
           | NATURAL opt_779 JOIN tableSourceItem

    joinSpec ::= seq_780
           | USING LPAREN uidList RPAREN

    queryExpression ::= LPAREN querySpecification RPAREN
           | LPAREN queryExpression RPAREN

    queryExpressionNointo ::= LPAREN querySpecificationNointo RPAREN
           | LPAREN queryExpressionNointo RPAREN

    querySpecification ::= SELECT list_781 selectElements opt_782 opt_783 opt_784 opt_785 opt_786 opt_787 opt_788
           | SELECT list_789 selectElements opt_790 opt_791 opt_792 opt_793 opt_794 opt_795 opt_796

    querySpecificationNointo ::= SELECT list_797 selectElements opt_798 opt_799 opt_800 opt_801 opt_802 opt_803 opt_804

    unionParenthesis ::= UNION opt_806 queryExpressionNointo

    unionStatement ::= UNION opt_808 grp_809

    lateralStatement ::= LATERAL grp_810

    jsonTable ::= JSON_TABLE LPAREN expression COMMA STRING_LITERAL COLUMNS LPAREN jsonColumnList RPAREN RPAREN opt_818

    jsonColumnList ::= jsonColumn list_820

    jsonColumn ::= fullColumnName grp_821
           | NESTED opt_825 STRING_LITERAL COLUMNS LPAREN jsonColumnList RPAREN

    jsonOnEmpty ::= grp_826 ON EMPTY

    jsonOnError ::= grp_827 ON ERROR

    selectSpec ::= grp_828
           | HIGH_PRIORITY
           | STRAIGHT_JOIN
           | SQL_SMALL_RESULT
           | SQL_BIG_RESULT
           | SQL_BUFFER_RESULT
           | grp_829
           | SQL_CALC_FOUND_ROWS

    selectElements ::= grp_830 list_832

    selectElement ::= fullId DOT STAR
           | fullColumnName opt_835
           | functionCall opt_838
           | opt_840 expression opt_843

    selectIntoExpression ::= INTO assignmentField list_845
           | INTO DUMPFILE STRING_LITERAL
           | grp_846

    selectFieldsInto ::= TERMINATED BY STRING_LITERAL
           | opt_856 ENCLOSED BY STRING_LITERAL
           | ESCAPED BY STRING_LITERAL

    selectLinesInto ::= STARTING BY STRING_LITERAL
           | TERMINATED BY STRING_LITERAL

    fromClause ::= opt_858 opt_860

    groupByClause ::= GROUP BY groupByItem list_862 opt_864

    havingClause ::= HAVING expression

    windowClause ::= WINDOW windowName AS LPAREN windowSpec RPAREN list_866

    groupByItem ::= expression opt_868

    limitClause ::= LIMIT grp_869

    limitClauseAtom ::= decimalLiteral
           | mysqlVariable
           | simpleId

    startTransaction ::= START TRANSACTION opt_875

    beginWork ::= BEGIN opt_876

    commitWork ::= COMMIT opt_877 opt_880 opt_883

    rollbackWork ::= ROLLBACK opt_884 opt_887 opt_890

    savepointStatement ::= SAVEPOINT uid

    rollbackStatement ::= ROLLBACK opt_891 TO opt_892 uid

    releaseStatement ::= RELEASE SAVEPOINT uid

    lockTables ::= LOCK grp_893 lockTableElement list_895

    unlockTables ::= UNLOCK TABLES

    setAutocommitStatement ::= SET AUTOCOMMIT EQ grp_896

    setTransactionStatement ::= SET opt_898 TRANSACTION transactionOption list_900

    transactionMode ::= WITH CONSISTENT SNAPSHOT
           | READ WRITE
           | READ ONLY

    lockTableElement ::= tableName opt_903 lockAction

    lockAction ::= READ opt_904
           | opt_905 WRITE

    transactionOption ::= ISOLATION LEVEL transactionLevel
           | READ WRITE
           | READ ONLY

    transactionLevel ::= REPEATABLE READ
           | READ COMMITTED
           | READ UNCOMMITTED
           | SERIALIZABLE

    changeMaster ::= CHANGE MASTER TO masterOption list_907 opt_908

    changeReplicationFilter ::= CHANGE REPLICATION FILTER replicationFilter list_910

    purgeBinaryLogs ::= PURGE grp_911 LOGS grp_912

    resetMaster ::= RESET MASTER

    resetSlave ::= RESET SLAVE opt_913 opt_914

    startSlave ::= START SLAVE opt_918 opt_920 list_921 opt_922

    stopSlave ::= STOP SLAVE opt_926

    startGroupReplication ::= START GROUP_REPLICATION

    stopGroupReplication ::= STOP GROUP_REPLICATION

    masterOption ::= stringMasterOption EQ STRING_LITERAL
           | decimalMasterOption EQ decimalLiteral
           | boolMasterOption EQ grp_927
           | MASTER_HEARTBEAT_PERIOD EQ REAL_LITERAL
           | IGNORE_SERVER_IDS EQ LPAREN opt_931 RPAREN

    stringMasterOption ::= MASTER_BIND
           | MASTER_HOST
           | MASTER_USER
           | MASTER_PASSWORD
           | MASTER_LOG_FILE
           | RELAY_LOG_FILE
           | MASTER_SSL_CA
           | MASTER_SSL_CAPATH
           | MASTER_SSL_CERT
           | MASTER_SSL_CRL
           | MASTER_SSL_CRLPATH
           | MASTER_SSL_KEY
           | MASTER_SSL_CIPHER
           | MASTER_TLS_VERSION

    decimalMasterOption ::= MASTER_PORT
           | MASTER_CONNECT_RETRY
           | MASTER_RETRY_COUNT
           | MASTER_DELAY
           | MASTER_LOG_POS
           | RELAY_LOG_POS

    boolMasterOption ::= MASTER_AUTO_POSITION
           | MASTER_SSL
           | MASTER_SSL_VERIFY_SERVER_CERT

    channelOption ::= FOR CHANNEL STRING_LITERAL

    replicationFilter ::= REPLICATE_DO_DB EQ LPAREN uidList RPAREN
           | REPLICATE_IGNORE_DB EQ LPAREN uidList RPAREN
           | REPLICATE_DO_TABLE EQ LPAREN tables RPAREN
           | REPLICATE_IGNORE_TABLE EQ LPAREN tables RPAREN
           | REPLICATE_WILD_DO_TABLE EQ LPAREN simpleStrings RPAREN
           | REPLICATE_WILD_IGNORE_TABLE EQ LPAREN simpleStrings RPAREN
           | REPLICATE_REWRITE_DB EQ LPAREN tablePair list_933 RPAREN

    tablePair ::= LPAREN tableName COMMA tableName RPAREN

    threadType ::= IO_THREAD
           | SQL_THREAD

    untilOption ::= grp_934 EQ gtuidSet
           | MASTER_LOG_FILE EQ STRING_LITERAL COMMA MASTER_LOG_POS EQ decimalLiteral
           | RELAY_LOG_FILE EQ STRING_LITERAL COMMA RELAY_LOG_POS EQ decimalLiteral
           | SQL_AFTER_MTS_GAPS

    connectionOption ::= USER EQ STRING_LITERAL
           | PASSWORD EQ STRING_LITERAL
           | DEFAULT_AUTH EQ STRING_LITERAL
           | PLUGIN_DIR EQ STRING_LITERAL

    gtuidSet ::= uuidSet list_936
           | STRING_LITERAL

    xaStartTransaction ::= XA grp_937 xid opt_939

    xaEndTransaction ::= XA END xid opt_943

    xaPrepareStatement ::= XA PREPARE xid

    xaCommitWork ::= XA COMMIT xid opt_945

    xaRollbackWork ::= XA ROLLBACK xid

    xaRecoverWork ::= XA RECOVER opt_947

    prepareStatement ::= PREPARE uid FROM grp_948

    executeStatement ::= EXECUTE uid opt_950

    deallocatePrepare ::= grp_951 PREPARE uid

    routineBody ::= blockStatement
           | sqlStatement

    blockStatement ::= opt_953 BEGIN list_955 list_957 list_959 list_961 list_962 END opt_963

    caseStatement ::= CASE opt_965 list_966 opt_969 END CASE

    ifStatement ::= IF expression THEN list_970 list_971 list_972 opt_976 END IF

    iterateStatement ::= ITERATE uid

    leaveStatement ::= LEAVE uid

    loopStatement ::= opt_978 LOOP list_979 END LOOP opt_980

    repeatStatement ::= opt_982 REPEAT list_983 UNTIL expression END REPEAT opt_984

    returnStatement ::= RETURN expression

    whileStatement ::= opt_986 WHILE expression DO list_987 END WHILE opt_988

    cursorStatement ::= CLOSE uid
           | FETCH opt_991 uid INTO uidList
           | OPEN uid

    declareVariable ::= DECLARE uidList dataType opt_993

    declareCondition ::= DECLARE uid CONDITION FOR grp_994

    declareCursor ::= DECLARE uid CURSOR FOR selectStatement

    declareHandler ::= DECLARE grp_996 HANDLER FOR handlerConditionValue list_998 routineBody

    handlerConditionValue ::= decimalLiteral
           | SQLSTATE opt_999 STRING_LITERAL
           | uid
           | SQLWARNING
           | NOT FOUND
           | SQLEXCEPTION

    procedureSqlStatement ::= grp_1000 SEMI

    caseAlternative ::= WHEN grp_1001 THEN list_1002

    elifAlternative ::= ELSEIF expression THEN list_1003

    alterUser ::= ALTER USER userSpecification list_1005
           | ALTER USER opt_1006 userAuthOption list_1008 opt_1014 opt_1017 list_1019 opt_1021
           | ALTER USER opt_1022 grp_1023 DEFAULT ROLE roleOption

    createUser ::= CREATE USER userAuthOption list_1025
           | CREATE USER opt_1026 userAuthOption list_1028 opt_1030 opt_1036 opt_1039 list_1041 opt_1043

    dropUser ::= DROP USER opt_1044 userName list_1046

    grantStatement ::= GRANT privelegeClause list_1048 ON opt_1050 privilegeLevel TO userAuthOption list_1052 opt_1058 opt_1062 opt_1064
           | GRANT grp_1065 list_1068 TO grp_1069 list_1072 opt_1074

    roleOption ::= DEFAULT
           | NONE
           | ALL opt_1078
           | userName list_1080

    grantProxy ::= GRANT PROXY ON userName TO userName list_1083 opt_1085

    renameUser ::= RENAME USER renameUserClause list_1087

    revokeStatement ::= REVOKE opt_1088 grp_1089 list_1091 ON opt_1093 privilegeLevel FROM userName list_1095 opt_1097
           | REVOKE opt_1098 ALL opt_1099 COMMA GRANT OPTION FROM userName list_1101 opt_1103
           | REVOKE opt_1104 grp_1105 list_1108 FROM grp_1109 list_1112 opt_1114

    revokeProxy ::= REVOKE PROXY ON userName FROM userName list_1117

    setPasswordStatement ::= SET PASSWORD opt_1119 EQ grp_1120

    userSpecification ::= userName userPasswordOption

    userAuthOption ::= userName IDENTIFIED BY PASSWORD STRING_LITERAL
           | userName IDENTIFIED BY RANDOM PASSWORD authOptionClause
           | userName IDENTIFIED BY STRING_LITERAL authOptionClause
           | userName IDENTIFIED WITH authenticationRule
           | userName

    authOptionClause ::= opt_1122 opt_1124

    authenticationRule ::= authPlugin opt_1128
           | authPlugin USING passwordFunctionClause

    tlsOption ::= SSL
           | X509
           | CIPHER STRING_LITERAL
           | ISSUER STRING_LITERAL
           | SUBJECT STRING_LITERAL

    userResourceOption ::= MAX_QUERIES_PER_HOUR decimalLiteral
           | MAX_UPDATES_PER_HOUR decimalLiteral
           | MAX_CONNECTIONS_PER_HOUR decimalLiteral
           | MAX_USER_CONNECTIONS decimalLiteral

    userPasswordOption ::= PASSWORD EXPIRE opt_1130
           | PASSWORD HISTORY grp_1131
           | PASSWORD REUSE INTERVAL grp_1132
           | PASSWORD REQUIRE CURRENT opt_1134
           | FAILED_LOGIN_ATTEMPTS decimalLiteral
           | PASSWORD_LOCK_TIME grp_1135

    userLockOption ::= ACCOUNT grp_1136

    privelegeClause ::= privilege opt_1138

    privilege ::= ALL opt_1139
           | ALTER opt_1140
           | CREATE opt_1142
           | DELETE
           | DROP opt_1143
           | EVENT
           | EXECUTE
           | FILE
           | GRANT OPTION
           | INDEX
           | INSERT
           | LOCK TABLES
           | PROCESS
           | PROXY
           | REFERENCES
           | RELOAD
           | REPLICATION grp_1144
           | SELECT
           | SHOW grp_1145
           | SHUTDOWN
           | SUPER
           | TRIGGER
           | UPDATE
           | USAGE
           | APPLICATION_PASSWORD_ADMIN
           | AUDIT_ABORT_EXEMPT
           | AUDIT_ADMIN
           | AUTHENTICATION_POLICY_ADMIN
           | BACKUP_ADMIN
           | BINLOG_ADMIN
           | BINLOG_ENCRYPTION_ADMIN
           | CLONE_ADMIN
           | CONNECTION_ADMIN
           | ENCRYPTION_KEY_ADMIN
           | FIREWALL_ADMIN
           | FIREWALL_EXEMPT
           | FIREWALL_USER
           | FLUSH_OPTIMIZER_COSTS
           | FLUSH_STATUS
           | FLUSH_TABLES
           | FLUSH_USER_RESOURCES
           | GROUP_REPLICATION_ADMIN
           | INNODB_REDO_LOG_ARCHIVE
           | INNODB_REDO_LOG_ENABLE
           | NDB_STORED_USER
           | PASSWORDLESS_USER_ADMIN
           | PERSIST_RO_VARIABLES_ADMIN
           | REPLICATION_APPLIER
           | REPLICATION_SLAVE_ADMIN
           | RESOURCE_GROUP_ADMIN
           | RESOURCE_GROUP_USER
           | ROLE_ADMIN
           | SENSITIVE_VARIABLES_OBSERVER
           | SERVICE_CONNECTION_ADMIN
           | SESSION_VARIABLES_ADMIN
           | SET_USER_ID
           | SKIP_QUERY_REWRITE
           | SHOW_ROUTINE
           | SYSTEM_USER
           | SYSTEM_VARIABLES_ADMIN
           | TABLE_ENCRYPTION_ADMIN
           | TELEMETRY_LOG_ADMIN
           | TP_CONNECTION_ADMIN
           | VERSION_TOKEN_ADMIN
           | XA_RECOVER_ADMIN
           | LOAD FROM S3
           | SELECT INTO S3
           | INVOKE LAMBDA

    privilegeLevel ::= STAR
           | STAR DOT STAR
           | uid DOT STAR
           | uid DOT uid
           | uid dottedId
           | uid

    renameUserClause ::= userName TO userName

    analyzeTable ::= ANALYZE opt_1147 grp_1148 tables opt_1154 opt_1158

    checkTable ::= CHECK TABLE tables list_1159

    checksumTable ::= CHECKSUM TABLE tables opt_1161

    optimizeTable ::= OPTIMIZE opt_1163 grp_1164 tables

    repairTable ::= REPAIR opt_1166 TABLE tables opt_1167 opt_1168 opt_1169

    checkTableOption ::= FOR UPGRADE
           | QUICK
           | FAST
           | MEDIUM
           | EXTENDED
           | CHANGED

    createUdfunction ::= CREATE opt_1170 FUNCTION opt_1171 uid RETURNS grp_1172 SONAME STRING_LITERAL

    installPlugin ::= INSTALL PLUGIN uid SONAME STRING_LITERAL

    uninstallPlugin ::= UNINSTALL PLUGIN uid

    setStatement ::= SET variableClause grp_1173 grp_1174 list_1178
           | SET charSet grp_1179
           | SET NAMES grp_1180
           | setPasswordStatement
           | setTransactionStatement
           | setAutocommitStatement
           | SET fullId grp_1183 expression list_1186

    showStatement ::= SHOW grp_1187 LOGS
           | SHOW grp_1188 EVENTS opt_1190 opt_1192 opt_1196
           | SHOW showCommonEntity opt_1197
           | SHOW opt_1198 grp_1199 grp_1200 tableName opt_1203 opt_1204
           | SHOW CREATE grp_1205 opt_1206 uid
           | SHOW CREATE grp_1207 fullId
           | SHOW CREATE USER userName
           | SHOW ENGINE engineName grp_1208
           | SHOW showGlobalInfoClause
           | SHOW grp_1209 opt_1213
           | SHOW COUNT LPAREN STAR RPAREN grp_1214
           | SHOW showSchemaEntity opt_1217 opt_1218
           | SHOW grp_1219 CODE fullId
           | SHOW GRANTS opt_1221
           | SHOW grp_1222 grp_1223 tableName opt_1226 opt_1228
           | SHOW OPEN TABLES opt_1231 opt_1232
           | SHOW PROFILE showProfileType list_1234 opt_1236 seq_1239
           | SHOW SLAVE STATUS opt_1241

    variableClause ::= LOCAL_ID
           | GLOBAL_ID
           | opt_1246 uid

    showCommonEntity ::= CHARACTER SET
           | COLLATION
           | DATABASES
           | SCHEMAS
           | FUNCTION STATUS
           | PROCEDURE STATUS
           | opt_1248 grp_1249

    showFilter ::= LIKE STRING_LITERAL
           | WHERE expression

    showGlobalInfoClause ::= opt_1250 ENGINES
           | MASTER STATUS
           | PLUGINS
           | PRIVILEGES
           | opt_1251 PROCESSLIST
           | PROFILES
           | SLAVE HOSTS
           | AUTHORS
           | CONTRIBUTORS

    showSchemaEntity ::= EVENTS
           | TABLE STATUS
           | opt_1252 TABLES
           | TRIGGERS

    showProfileType ::= ALL
           | BLOCK IO
           | CONTEXT SWITCHES
           | CPU
           | IPC
           | MEMORY
           | PAGE FAULTS
           | SOURCE
           | SWAPS

    binlogStatement ::= BINLOG STRING_LITERAL

    cacheIndexStatement ::= CACHE INDEX tableIndexes list_1254 opt_1257 IN uid

    flushStatement ::= FLUSH opt_1259 flushOption list_1261
           | FLUSH FIREWALL_RULES

    killStatement ::= KILL opt_1263 expression

    loadIndexIntoCache ::= LOAD INDEX INTO CACHE loadedTableIndexes list_1265

    resetStatement ::= RESET QUERY CACHE

    shutdownStatement ::= SHUTDOWN

    tableIndexes ::= tableName opt_1269

    flushOption ::= grp_1270
           | RELAY LOGS opt_1275
           | grp_1276 opt_1277 opt_1278

    flushTableOption ::= WITH READ LOCK
           | FOR EXPORT

    loadedTableIndexes ::= tableName opt_1281 opt_1285 opt_1287

    simpleDescribeStatement ::= grp_1288 tableName opt_1290

    fullDescribeStatement ::= grp_1291 opt_1295 describeObjectClause

    helpStatement ::= HELP STRING_LITERAL

    useStatement ::= USE uid

    signalStatement ::= SIGNAL grp_1296 opt_1302

    resignalStatement ::= RESIGNAL opt_1306 opt_1310

    signalConditionInformation ::= grp_1311 EQ grp_1312

    withStatement ::= WITH opt_1313 commonTableExpressions list_1315

    tableStatement ::= TABLE tableName opt_1316 opt_1317

    diagnosticsStatement ::= GET opt_1319 DIAGNOSTICS grp_1320

    diagnosticsConditionInformationName ::= CLASS_ORIGIN
           | SUBCLASS_ORIGIN
           | RETURNED_SQLSTATE
           | MESSAGE_TEXT
           | MYSQL_ERRNO
           | CONSTRAINT_CATALOG
           | CONSTRAINT_SCHEMA
           | CONSTRAINT_NAME
           | CATALOG_NAME
           | SCHEMA_NAME
           | TABLE_NAME
           | COLUMN_NAME
           | CURSOR_NAME

    describeObjectClause ::= grp_1330
           | FOR CONNECTION uid

    fullId ::= uid opt_1332

    tableName ::= fullId

    roleName ::= userName
           | uid

    fullColumnName ::= uid opt_1335
           | dottedId opt_1336

    indexColumnName ::= grp_1337 opt_1342

    simpleUserName ::= STRING_LITERAL
           | ID
           | ADMIN
           | keywordsCanBeId

    hostName ::= grp_1343

    userName ::= simpleUserName
           | simpleUserName hostName
           | currentUserExpression

    mysqlVariable ::= LOCAL_ID
           | GLOBAL_ID

    charsetName ::= BINARY
           | charsetNameBase
           | STRING_LITERAL
           | CHARSET_REVERSE_QOUTE_STRING

    collationName ::= uid
           | STRING_LITERAL

    engineName ::= engineNameBase
           | ID
           | STRING_LITERAL

    engineNameBase ::= ARCHIVE
           | BLACKHOLE
           | CONNECT
           | CSV
           | FEDERATED
           | INNODB
           | MEMORY
           | MRG_MYISAM
           | MYISAM
           | NDB
           | NDBCLUSTER
           | PERFORMANCE_SCHEMA
           | TOKUDB

    uuidSet ::= decimalLiteral MINUS decimalLiteral MINUS decimalLiteral MINUS decimalLiteral MINUS decimalLiteral list_1345

    xid ::= xuidStringId opt_1349

    xuidStringId ::= STRING_LITERAL
           | BIT_STRING
           | list_1350

    authPlugin ::= uid
           | STRING_LITERAL

    uid ::= simpleId
           | CHARSET_REVERSE_QOUTE_STRING
           | STRING_LITERAL

    simpleId ::= ID
           | charsetNameBase
           | transactionLevelBase
           | engineNameBase
           | privilegesBase
           | intervalTypeBase
           | dataTypeBase
           | keywordsCanBeId
           | scalarFunctionName

    dottedId ::= DOT_ID
           | DOT uid

    decimalLiteral ::= DECIMAL_LITERAL
           | ZERO_DECIMAL
           | ONE_DECIMAL
           | TWO_DECIMAL
           | REAL_LITERAL

    fileSizeLiteral ::= FILESIZE_LITERAL
           | decimalLiteral

    stringLiteral ::= grp_1351 list_1353
           | grp_1354 opt_1357

    booleanLiteral ::= TRUE
           | FALSE

    hexadecimalLiteral ::= opt_1358 HEXADECIMAL_LITERAL

    nullNotnull ::= opt_1359 grp_1360

    constant ::= stringLiteral
           | decimalLiteral
           | MINUS decimalLiteral
           | hexadecimalLiteral
           | booleanLiteral
           | REAL_LITERAL
           | BIT_STRING
           | opt_1361 grp_1362

    dataType ::= grp_1363 opt_1364 opt_1365 opt_1366 opt_1368 opt_1370
           | NATIONAL grp_1371 VARYING opt_1372 opt_1373
           | NATIONAL grp_1374 opt_1375 opt_1376
           | NCHAR VARCHAR opt_1377 opt_1378
           | grp_1379 opt_1380 list_1382
           | REAL opt_1383 list_1385
           | DOUBLE opt_1386 opt_1387 list_1389
           | grp_1390 opt_1391 list_1393
           | grp_1394
           | grp_1395 opt_1396
           | grp_1397 collectionOptions opt_1398 opt_1400
           | grp_1401 opt_1403
           | LONG opt_1404 opt_1405 opt_1407 opt_1409
           | LONG VARBINARY

    collectionOptions ::= LPAREN collectionOption list_1411 RPAREN

    collectionOption ::= STRING_LITERAL

    convertedDataType ::= grp_1412 opt_1424

    lengthOneDimension ::= LPAREN decimalLiteral RPAREN

    lengthTwoDimension ::= LPAREN decimalLiteral COMMA decimalLiteral RPAREN

    lengthTwoOptionalDimension ::= LPAREN decimalLiteral opt_1426 RPAREN

    uidList ::= uid list_1428

    fullColumnNameList ::= fullColumnName list_1430

    tables ::= tableName list_1432

    indexColumnNames ::= LPAREN indexColumnName list_1434 RPAREN

    expressions ::= expression list_1436

    expressionsWithDefaults ::= expressionOrDefault list_1438

    constants ::= constant list_1440

    simpleStrings ::= STRING_LITERAL list_1442

    userVariables ::= LOCAL_ID list_1444

    defaultValue ::= NULL_LITERAL
           | CAST LPAREN expression AS convertedDataType RPAREN
           | opt_1445 constant
           | currentTimestamp opt_1447
           | LPAREN expression RPAREN
           | LPAREN fullId RPAREN

    currentTimestamp ::= grp_1448

    expressionOrDefault ::= expression
           | DEFAULT

    ifExists ::= IF EXISTS

    ifNotExists ::= IF NOT EXISTS

    orReplace ::= OR REPLACE

    functionCall ::= specificFunction
           | aggregateWindowedFunction
           | nonAggregateWindowedFunction
           | scalarFunctionName LPAREN opt_1454 RPAREN
           | fullId LPAREN opt_1455 RPAREN
           | passwordFunctionClause

    specificFunction ::= grp_1456 opt_1458
           | currentUserExpression
           | CONVERT LPAREN expression COMMA convertedDataType RPAREN
           | CONVERT LPAREN expression USING charsetName RPAREN
           | CAST LPAREN expression AS convertedDataType RPAREN
           | VALUES LPAREN fullColumnName RPAREN
           | CASE expression list_1459 opt_1461 END
           | CASE list_1462 opt_1464 END
           | CHAR LPAREN functionArgs opt_1466 RPAREN
           | POSITION LPAREN grp_1467 IN grp_1468 RPAREN
           | grp_1469 LPAREN grp_1470 FROM grp_1471 opt_1474 RPAREN
           | TRIM LPAREN grp_1475 opt_1477 FROM grp_1478 RPAREN
           | TRIM LPAREN grp_1479 FROM grp_1480 RPAREN
           | WEIGHT_STRING LPAREN grp_1481 opt_1484 opt_1485 RPAREN
           | EXTRACT LPAREN intervalType FROM grp_1486 RPAREN
           | GET_FORMAT LPAREN grp_1487 COMMA stringLiteral RPAREN
           | JSON_VALUE LPAREN expression COMMA expression opt_1489 opt_1490 opt_1491 RPAREN

    caseFuncAlternative ::= WHEN functionArg THEN functionArg

    levelsInWeightString ::= LEVEL levelInWeightListElement list_1493
           | LEVEL decimalLiteral MINUS decimalLiteral

    levelInWeightListElement ::= decimalLiteral opt_1495

    aggregateWindowedFunction ::= grp_1496 LPAREN opt_1498 functionArg RPAREN opt_1499
           | COUNT LPAREN grp_1500 RPAREN opt_1502
           | grp_1503 LPAREN opt_1504 functionArg RPAREN opt_1505
           | GROUP_CONCAT LPAREN opt_1506 functionArgs opt_1510 opt_1512 RPAREN

    nonAggregateWindowedFunction ::= grp_1513 LPAREN expression opt_1515 opt_1517 RPAREN overClause
           | grp_1518 LPAREN expression RPAREN overClause
           | grp_1519 LPAREN RPAREN overClause
           | NTH_VALUE LPAREN expression COMMA decimalLiteral RPAREN overClause
           | NTILE LPAREN decimalLiteral RPAREN overClause

    overClause ::= OVER grp_1520

    windowSpec ::= opt_1522 opt_1523 opt_1524 opt_1525

    windowName ::= uid

    frameClause ::= frameUnits frameExtent

    frameUnits ::= ROWS
           | RANGE

    frameExtent ::= frameRange
           | frameBetween

    frameBetween ::= BETWEEN frameRange AND frameRange

    frameRange ::= CURRENT ROW
           | UNBOUNDED grp_1526
           | expression grp_1527

    partitionClause ::= PARTITION BY expression list_1529

    sequenceFunctionName ::= SEQUENCE_TABLE
           | PERCONA_SEQUENCE_TABLE

    scalarFunctionName ::= functionNameBase
           | ASCII
           | CURDATE
           | CURRENT_DATE
           | CURRENT_TIME
           | CURRENT_TIMESTAMP
           | CURTIME
           | DATE_ADD
           | DATE_SUB
           | IF
           | INSERT
           | LOCALTIME
           | LOCALTIMESTAMP
           | MID
           | NOW
           | REPEAT
           | REPLACE
           | SUBSTR
           | SUBSTRING
           | SYSDATE
           | TRIM
           | UTC_DATE
           | UTC_TIME
           | UTC_TIMESTAMP

    passwordFunctionClause ::= grp_1530 LPAREN functionArg RPAREN

    functionArgs ::= grp_1531 list_1534

    functionArg ::= constant
           | fullColumnName
           | functionCall
           | expression

    expression ::= grp_1535 expression
           | expression logicalOperator expression
           | predicate IS opt_1536 grp_1537
           | predicate

    predicate ::= predicate opt_1538 IN LPAREN grp_1539 RPAREN
           | predicate IS nullNotnull
           | predicate comparisonOperator predicate
           | predicate comparisonOperator grp_1540 LPAREN selectStatement RPAREN
           | predicate opt_1541 BETWEEN predicate AND predicate
           | predicate SOUNDS LIKE predicate
           | predicate opt_1542 LIKE predicate opt_1544
           | predicate opt_1545 grp_1546 predicate
           | predicate MEMBER OF LPAREN predicate RPAREN
           | expressionAtom

    expressionAtom ::= constant
           | fullColumnName
           | functionCall
           | expressionAtom COLLATE collationName
           | mysqlVariable
           | unaryOperator expressionAtom
           | BINARY expressionAtom
           | LOCAL_ID VAR_ASSIGN expressionAtom
           | LPAREN expression list_1548 RPAREN
           | ROW LPAREN expression list_1550 RPAREN
           | EXISTS LPAREN selectStatement RPAREN
           | LPAREN selectStatement RPAREN
           | INTERVAL expression intervalType
           | expressionAtom bitOperator expressionAtom
           | expressionAtom multOperator expressionAtom
           | expressionAtom addOperator expressionAtom
           | expressionAtom jsonOperator expressionAtom

    unaryOperator ::= BANG
           | TILDE
           | PLUS
           | MINUS
           | NOT

    comparisonOperator ::= EQ
           | GT
           | LT
           | LT EQ
           | GT EQ
           | LT GT
           | BANG EQ
           | LT EQ GT

    logicalOperator ::= AND
           | AMP AMP
           | XOR
           | OR
           | PIPE PIPE

    bitOperator ::= LT LT
           | GT GT
           | AMP
           | CARET
           | PIPE

    multOperator ::= STAR
           | SLASH
           | PERCENT
           | DIV
           | MOD

    addOperator ::= PLUS
           | MINUS

    jsonOperator ::= MINUS GT
           | MINUS GT GT

    charsetNameBase ::= ARMSCII8
           | ASCII
           | BIG5
           | BINARY
           | CP1250
           | CP1251
           | CP1256
           | CP1257
           | CP850
           | CP852
           | CP866
           | CP932
           | DEC8
           | EUCJPMS
           | EUCKR
           | GB18030
           | GB2312
           | GBK
           | GEOSTD8
           | GREEK
           | HEBREW
           | HP8
           | KEYBCS2
           | KOI8R
           | KOI8U
           | LATIN1
           | LATIN2
           | LATIN5
           | LATIN7
           | MACCE
           | MACROMAN
           | SJIS
           | SWE7
           | TIS620
           | UCS2
           | UJIS
           | UTF16
           | UTF16LE
           | UTF32
           | UTF8
           | UTF8MB3
           | UTF8MB4

    transactionLevelBase ::= REPEATABLE
           | COMMITTED
           | UNCOMMITTED
           | SERIALIZABLE

    privilegesBase ::= TABLES
           | ROUTINE
           | EXECUTE
           | FILE
           | PROCESS
           | RELOAD
           | SHUTDOWN
           | SUPER
           | PRIVILEGES

    intervalTypeBase ::= QUARTER
           | MONTH
           | DAY
           | HOUR
           | MINUTE
           | WEEK
           | SECOND
           | MICROSECOND

    dataTypeBase ::= DATE
           | TIME
           | TIMESTAMP
           | DATETIME
           | YEAR
           | ENUM
           | TEXT

    keywordsCanBeId ::= ACCOUNT
           | ACTION
           | ADMIN
           | AFTER
           | AGGREGATE
           | ALGORITHM
           | ANY
           | APPLICATION_PASSWORD_ADMIN
           | ARRAY
           | AT
           | AUDIT_ADMIN
           | AUDIT_ABORT_EXEMPT
           | AUTHORS
           | AUTOCOMMIT
           | AUTOEXTEND_SIZE
           | AUTO_INCREMENT
           | AUTHENTICATION_POLICY_ADMIN
           | AVG
           | AVG_ROW_LENGTH
           | ATTRIBUTE
           | BACKUP_ADMIN
           | BEGIN
           | BINLOG
           | BINLOG_ADMIN
           | BINLOG_ENCRYPTION_ADMIN
           | BIT
           | BIT_AND
           | BIT_OR
           | BIT_XOR
           | BLOCK
           | BOOL
           | BOOLEAN
           | BTREE
           | BUCKETS
           | CACHE
           | CASCADED
           | CHAIN
           | CHANGED
           | CHANNEL
           | CHECKSUM
           | PAGE_CHECKSUM
           | CATALOG_NAME
           | CIPHER
           | CLASS_ORIGIN
           | CLIENT
           | CLONE_ADMIN
           | CLOSE
           | CLUSTERING
           | COALESCE
           | CODE
           | COLUMNS
           | COLUMN_FORMAT
           | COLUMN_NAME
           | COMMENT
           | COMMIT
           | COMPACT
           | COMPLETION
           | COMPRESSED
           | COMPRESSION
           | CONCURRENT
           | CONDITION
           | CONNECT
           | CONNECTION
           | CONNECTION_ADMIN
           | CONSISTENT
           | CONSTRAINT_CATALOG
           | CONSTRAINT_NAME
           | CONSTRAINT_SCHEMA
           | CONTAINS
           | CONTEXT
           | CONTRIBUTORS
           | COPY
           | COUNT
           | CPU
           | CURRENT
           | CURRENT_USER
           | CURSOR_NAME
           | DATA
           | DATAFILE
           | DEALLOCATE
           | DEFAULT
           | DEFAULT_AUTH
           | DEFINER
           | DELAY_KEY_WRITE
           | DES_KEY_FILE
           | DIAGNOSTICS
           | DIRECTORY
           | DISABLE
           | DISCARD
           | DISK
           | DO
           | DUMPFILE
           | DUPLICATE
           | DYNAMIC
           | EMPTY
           | ENABLE
           | ENCRYPTION
           | ENCRYPTION_KEY_ADMIN
           | END
           | ENDS
           | ENGINE
           | ENGINE_ATTRIBUTE
           | ENGINES
           | ENFORCED
           | ERROR
           | ERRORS
           | ESCAPE
           | EUR
           | EVEN
           | EVENT
           | EVENTS
           | EVERY
           | EXCEPT
           | EXCHANGE
           | EXCLUSIVE
           | EXPIRE
           | EXPORT
           | EXTENDED
           | EXTENT_SIZE
           | FAILED_LOGIN_ATTEMPTS
           | FAST
           | FAULTS
           | FIELDS
           | FILE_BLOCK_SIZE
           | FILTER
           | FIREWALL_ADMIN
           | FIREWALL_EXEMPT
           | FIREWALL_USER
           | FIRST
           | FIXED
           | FLUSH
           | FLUSH_OPTIMIZER_COSTS
           | FLUSH_STATUS
           | FLUSH_TABLES
           | FLUSH_USER_RESOURCES
           | FOLLOWS
           | FOUND
           | FULL
           | FUNCTION
           | GENERAL
           | GEOMETRY
           | GLOBAL
           | GRANTS
           | GROUP
           | GROUP_CONCAT
           | GROUP_REPLICATION
           | GROUP_REPLICATION_ADMIN
           | HANDLER
           | HASH
           | HELP
           | HISTORY
           | HOST
           | HOSTS
           | IDENTIFIED
           | IGNORED
           | IGNORE_SERVER_IDS
           | IMPORT
           | INDEXES
           | INITIAL_SIZE
           | INNODB_REDO_LOG_ARCHIVE
           | INNODB_REDO_LOG_ENABLE
           | INPLACE
           | INSERT_METHOD
           | INSTALL
           | INSTANCE
           | INSTANT
           | INTERNAL
           | INVOKE
           | INVOKER
           | IO
           | IO_THREAD
           | IPC
           | ISO
           | ISOLATION
           | ISSUER
           | JIS
           | JSON
           | KEY_BLOCK_SIZE
           | LAMBDA
           | LANGUAGE
           | LAST
           | LATERAL
           | LEAVES
           | LESS
           | LEVEL
           | LIST
           | LOCAL
           | LOGFILE
           | LOGS
           | MASTER
           | MASTER_AUTO_POSITION
           | MASTER_CONNECT_RETRY
           | MASTER_DELAY
           | MASTER_HEARTBEAT_PERIOD
           | MASTER_HOST
           | MASTER_LOG_FILE
           | MASTER_LOG_POS
           | MASTER_PASSWORD
           | MASTER_PORT
           | MASTER_RETRY_COUNT
           | MASTER_SSL
           | MASTER_SSL_CA
           | MASTER_SSL_CAPATH
           | MASTER_SSL_CERT
           | MASTER_SSL_CIPHER
           | MASTER_SSL_CRL
           | MASTER_SSL_CRLPATH
           | MASTER_SSL_KEY
           | MASTER_TLS_VERSION
           | MASTER_USER
           | MAX_CONNECTIONS_PER_HOUR
           | MAX_QUERIES_PER_HOUR
           | MAX
           | MAX_ROWS
           | MAX_SIZE
           | MAX_UPDATES_PER_HOUR
           | MAX_USER_CONNECTIONS
           | MEDIUM
           | MEMBER
           | MEMORY
           | MERGE
           | MESSAGE_TEXT
           | MID
           | MIGRATE
           | MIN
           | MIN_ROWS
           | MODE
           | MODIFY
           | MUTEX
           | MYSQL
           | MYSQL_ERRNO
           | NAME
           | NAMES
           | NATIONAL
           | NCHAR
           | NDB_STORED_USER
           | NESTED
           | NEVER
           | NEXT
           | NO
           | NOCOPY
           | NODEGROUP
           | NONE
           | NOWAIT
           | NUMBER
           | ODBC
           | OFFLINE
           | OFFSET
           | OF
           | OJ
           | OLD_PASSWORD
           | ONE
           | ONLINE
           | ONLY
           | OPEN
           | OPTIMIZER_COSTS
           | OPTIONAL
           | OPTIONS
           | ORDER
           | ORDINALITY
           | OWNER
           | PACK_KEYS
           | PAGE
           | PARSER
           | PARTIAL
           | PARTITIONING
           | PARTITIONS
           | PASSWORD
           | PASSWORDLESS_USER_ADMIN
           | PASSWORD_LOCK_TIME
           | PATH
           | PERCONA_SEQUENCE_TABLE
           | PERSIST_RO_VARIABLES_ADMIN
           | PHASE
           | PLUGINS
           | PLUGIN_DIR
           | PLUGIN
           | PORT
           | PRECEDES
           | PREPARE
           | PRESERVE
           | PREV
           | PRIMARY
           | PROCESSLIST
           | PROFILE
           | PROFILES
           | PROXY
           | QUERY
           | QUICK
           | REBUILD
           | RECOVER
           | RECURSIVE
           | REDO_BUFFER_SIZE
           | REDUNDANT
           | RELAY
           | RELAYLOG
           | RELAY_LOG_FILE
           | RELAY_LOG_POS
           | REMOVE
           | REORGANIZE
           | REPAIR
           | REPLICATE_DO_DB
           | REPLICATE_DO_TABLE
           | REPLICATE_IGNORE_DB
           | REPLICATE_IGNORE_TABLE
           | REPLICATE_REWRITE_DB
           | REPLICATE_WILD_DO_TABLE
           | REPLICATE_WILD_IGNORE_TABLE
           | REPLICATION
           | REPLICATION_APPLIER
           | REPLICATION_SLAVE_ADMIN
           | RESET
           | RESOURCE_GROUP_ADMIN
           | RESOURCE_GROUP_USER
           | RESUME
           | RETURNED_SQLSTATE
           | RETURNING
           | RETURNS
           | REUSE
           | ROLE
           | ROLE_ADMIN
           | ROLLBACK
           | ROLLUP
           | ROTATE
           | ROW
           | ROWS
           | ROW_FORMAT
           | RTREE
           | S3
           | SAVEPOINT
           | SCHEDULE
           | SCHEMA_NAME
           | SECURITY
           | SECONDARY_ENGINE_ATTRIBUTE
           | SENSITIVE_VARIABLES_OBSERVER
           | SEQUENCE_TABLE
           | SERIAL
           | SERVER
           | SESSION
           | SESSION_VARIABLES_ADMIN
           | SET_USER_ID
           | SHARE
           | SHARED
           | SHOW_ROUTINE
           | SIGNED
           | SIMPLE
           | SLAVE
           | SLOW
           | SKIP_QUERY_REWRITE
           | SNAPSHOT
           | SOCKET
           | SOME
           | SONAME
           | SOUNDS
           | SOURCE
           | SQL_AFTER_GTIDS
           | SQL_AFTER_MTS_GAPS
           | SQL_BEFORE_GTIDS
           | SQL_BUFFER_RESULT
           | SQL_CACHE
           | SQL_NO_CACHE
           | SQL_THREAD
           | STACKED
           | START
           | STARTS
           | STATS_AUTO_RECALC
           | STATS_PERSISTENT
           | STATS_SAMPLE_PAGES
           | STATUS
           | STD
           | STDDEV
           | STDDEV_POP
           | STDDEV_SAMP
           | STOP
           | STORAGE
           | STRING
           | SUBCLASS_ORIGIN
           | SUBJECT
           | SUBPARTITION
           | SUBPARTITIONS
           | SUM
           | SUSPEND
           | SWAPS
           | SWITCHES
           | SYSTEM_VARIABLES_ADMIN
           | SYSTEM_USER
           | TABLE_NAME
           | TABLESPACE
           | TABLE_ENCRYPTION_ADMIN
           | TABLE_TYPE
           | TELEMETRY_LOG_ADMIN
           | TEMPORARY
           | TEMPTABLE
           | THAN
           | TP_CONNECTION_ADMIN
           | TRADITIONAL
           | TRANSACTION
           | TRANSACTIONAL
           | TRIGGERS
           | TRUNCATE
           | UNBOUNDED
           | UNDEFINED
           | UNDOFILE
           | UNDO_BUFFER_SIZE
           | UNINSTALL
           | UNKNOWN
           | UNTIL
           | UPGRADE
           | USA
           | USER
           | USE_FRM
           | USER_RESOURCES
           | VALIDATION
           | VALUE
           | VAR_POP
           | VAR_SAMP
           | VARIABLES
           | VARIANCE
           | VERSION_TOKEN_ADMIN
           | VIEW
           | VIRTUAL
           | WAIT
           | WARNINGS
           | WITHOUT
           | WORK
           | WRAPPER
           | X509
           | XA
           | XA_RECOVER_ADMIN
           | XML
           | YES

    functionNameBase ::= ABS
           | ACOS
           | ADDDATE
           | ADDTIME
           | AES_DECRYPT
           | AES_ENCRYPT
           | AREA
           | ASBINARY
           | ASIN
           | ASTEXT
           | ASWKB
           | ASWKT
           | ASYMMETRIC_DECRYPT
           | ASYMMETRIC_DERIVE
           | ASYMMETRIC_ENCRYPT
           | ASYMMETRIC_SIGN
           | ASYMMETRIC_VERIFY
           | ATAN
           | ATAN2
           | BENCHMARK
           | BIN
           | BIT_COUNT
           | BIT_LENGTH
           | BUFFER
           | CEIL
           | CEILING
           | CENTROID
           | CHARACTER_LENGTH
           | CHARSET
           | CHAR_LENGTH
           | COERCIBILITY
           | COLLATION
           | COMPRESS
           | CONCAT
           | CONCAT_WS
           | CONNECTION_ID
           | CONV
           | CONVERT_TZ
           | COS
           | COT
           | COUNT
           | CRC32
           | CREATE_ASYMMETRIC_PRIV_KEY
           | CREATE_ASYMMETRIC_PUB_KEY
           | CREATE_DH_PARAMETERS
           | CREATE_DIGEST
           | CROSSES
           | CUME_DIST
           | DATABASE
           | DATE
           | DATEDIFF
           | DATE_FORMAT
           | DAY
           | DAYNAME
           | DAYOFMONTH
           | DAYOFWEEK
           | DAYOFYEAR
           | DECODE
           | DEGREES
           | DENSE_RANK
           | DES_DECRYPT
           | DES_ENCRYPT
           | DIMENSION
           | DISJOINT
           | DISTANCE
           | ELT
           | ENCODE
           | ENCRYPT
           | ENDPOINT
           | ENVELOPE
           | EQUALS
           | EXP
           | EXPORT_SET
           | EXTERIORRING
           | EXTRACTVALUE
           | FIELD
           | FIND_IN_SET
           | FIRST_VALUE
           | FLOOR
           | FORMAT
           | FOUND_ROWS
           | FROM_BASE64
           | FROM_DAYS
           | FROM_UNIXTIME
           | GEOMCOLLFROMTEXT
           | GEOMCOLLFROMWKB
           | GEOMETRYCOLLECTION
           | GEOMETRYCOLLECTIONFROMTEXT
           | GEOMETRYCOLLECTIONFROMWKB
           | GEOMETRYFROMTEXT
           | GEOMETRYFROMWKB
           | GEOMETRYN
           | GEOMETRYTYPE
           | GEOMFROMTEXT
           | GEOMFROMWKB
           | GET_FORMAT
           | GET_LOCK
           | GLENGTH
           | GREATEST
           | GTID_SUBSET
           | GTID_SUBTRACT
           | HEX
           | HOUR
           | IFNULL
           | INET6_ATON
           | INET6_NTOA
           | INET_ATON
           | INET_NTOA
           | INSTR
           | INTERIORRINGN
           | INTERSECTS
           | INVISIBLE
           | ISCLOSED
           | ISEMPTY
           | ISNULL
           | ISSIMPLE
           | IS_FREE_LOCK
           | IS_IPV4
           | IS_IPV4_COMPAT
           | IS_IPV4_MAPPED
           | IS_IPV6
           | IS_USED_LOCK
           | LAG
           | LAST_INSERT_ID
           | LAST_VALUE
           | LCASE
           | LEAD
           | LEAST
           | LEFT
           | LENGTH
           | LINEFROMTEXT
           | LINEFROMWKB
           | LINESTRING
           | LINESTRINGFROMTEXT
           | LINESTRINGFROMWKB
           | LN
           | LOAD_FILE
           | LOCATE
           | LOG
           | LOG10
           | LOG2
           | LOWER
           | LPAD
           | LTRIM
           | MAKEDATE
           | MAKETIME
           | MAKE_SET
           | MASTER_POS_WAIT
           | MBRCONTAINS
           | MBRDISJOINT
           | MBREQUAL
           | MBRINTERSECTS
           | MBROVERLAPS
           | MBRTOUCHES
           | MBRWITHIN
           | MD5
           | MICROSECOND
           | MINUTE
           | MLINEFROMTEXT
           | MLINEFROMWKB
           | MOD
           | MONTH
           | MONTHNAME
           | MPOINTFROMTEXT
           | MPOINTFROMWKB
           | MPOLYFROMTEXT
           | MPOLYFROMWKB
           | MULTILINESTRING
           | MULTILINESTRINGFROMTEXT
           | MULTILINESTRINGFROMWKB
           | MULTIPOINT
           | MULTIPOINTFROMTEXT
           | MULTIPOINTFROMWKB
           | MULTIPOLYGON
           | MULTIPOLYGONFROMTEXT
           | MULTIPOLYGONFROMWKB
           | NAME_CONST
           | NTH_VALUE
           | NTILE
           | NULLIF
           | NUMGEOMETRIES
           | NUMINTERIORRINGS
           | NUMPOINTS
           | OCT
           | OCTET_LENGTH
           | ORD
           | OVERLAPS
           | PERCENT_RANK
           | PERIOD_ADD
           | PERIOD_DIFF
           | PI
           | POINT
           | POINTFROMTEXT
           | POINTFROMWKB
           | POINTN
           | POLYFROMTEXT
           | POLYFROMWKB
           | POLYGON
           | POLYGONFROMTEXT
           | POLYGONFROMWKB
           | POSITION
           | POW
           | POWER
           | QUARTER
           | QUOTE
           | RADIANS
           | RAND
           | RANDOM
           | RANK
           | RANDOM_BYTES
           | RELEASE_LOCK
           | REVERSE
           | RIGHT
           | ROUND
           | ROW_COUNT
           | ROW_NUMBER
           | RPAD
           | RTRIM
           | SCHEMA
           | SECOND
           | SEC_TO_TIME
           | SESSION_USER
           | SESSION_VARIABLES_ADMIN
           | SHA
           | SHA1
           | SHA2
           | SIGN
           | SIN
           | SLEEP
           | SOUNDEX
           | SQL_THREAD_WAIT_AFTER_GTIDS
           | SQRT
           | SRID
           | STARTPOINT
           | STRCMP
           | STR_TO_DATE
           | ST_AREA
           | ST_ASBINARY
           | ST_ASTEXT
           | ST_ASWKB
           | ST_ASWKT
           | ST_BUFFER
           | ST_CENTROID
           | ST_CONTAINS
           | ST_CROSSES
           | ST_DIFFERENCE
           | ST_DIMENSION
           | ST_DISJOINT
           | ST_DISTANCE
           | ST_ENDPOINT
           | ST_ENVELOPE
           | ST_EQUALS
           | ST_EXTERIORRING
           | ST_GEOMCOLLFROMTEXT
           | ST_GEOMCOLLFROMTXT
           | ST_GEOMCOLLFROMWKB
           | ST_GEOMETRYCOLLECTIONFROMTEXT
           | ST_GEOMETRYCOLLECTIONFROMWKB
           | ST_GEOMETRYFROMTEXT
           | ST_GEOMETRYFROMWKB
           | ST_GEOMETRYN
           | ST_GEOMETRYTYPE
           | ST_GEOMFROMTEXT
           | ST_GEOMFROMWKB
           | ST_INTERIORRINGN
           | ST_INTERSECTION
           | ST_INTERSECTS
           | ST_ISCLOSED
           | ST_ISEMPTY
           | ST_ISSIMPLE
           | ST_LINEFROMTEXT
           | ST_LINEFROMWKB
           | ST_LINESTRINGFROMTEXT
           | ST_LINESTRINGFROMWKB
           | ST_NUMGEOMETRIES
           | ST_NUMINTERIORRING
           | ST_NUMINTERIORRINGS
           | ST_NUMPOINTS
           | ST_OVERLAPS
           | ST_POINTFROMTEXT
           | ST_POINTFROMWKB
           | ST_POINTN
           | ST_POLYFROMTEXT
           | ST_POLYFROMWKB
           | ST_POLYGONFROMTEXT
           | ST_POLYGONFROMWKB
           | ST_SRID
           | ST_STARTPOINT
           | ST_SYMDIFFERENCE
           | ST_TOUCHES
           | ST_UNION
           | ST_WITHIN
           | ST_X
           | ST_Y
           | STRING_TO_VECTOR
           | SUBDATE
           | SUBSTRING_INDEX
           | SUBTIME
           | SYSTEM_USER
           | TAN
           | TIME
           | TIMEDIFF
           | TIMESTAMP
           | TIMESTAMPADD
           | TIMESTAMPDIFF
           | TIME_FORMAT
           | TIME_TO_SEC
           | TOUCHES
           | TO_BASE64
           | TO_DAYS
           | TO_SECONDS
           | UCASE
           | UNCOMPRESS
           | UNCOMPRESSED_LENGTH
           | UNHEX
           | UNIX_TIMESTAMP
           | UPDATEXML
           | UPPER
           | UUID
           | UUID_SHORT
           | VALIDATE_PASSWORD_STRENGTH
           | VECTOR_DIM
           | VECTOR_TO_STRING
           | VERSION
           | VISIBLE
           | WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS
           | WEEK
           | WEEKDAY
           | WEEKOFYEAR
           | WEIGHT_STRING
           | WITHIN
           | YEAR
           | YEARWEEK
           | Y_FUNCTION
           | X_FUNCTION
           | JSON_ARRAY
           | JSON_OBJECT
           | JSON_QUOTE
           | JSON_CONTAINS
           | JSON_CONTAINS_PATH
           | JSON_EXTRACT
           | JSON_KEYS
           | JSON_OVERLAPS
           | JSON_SEARCH
           | JSON_VALUE
           | JSON_ARRAY_APPEND
           | JSON_ARRAY_INSERT
           | JSON_INSERT
           | JSON_MERGE
           | JSON_MERGE_PATCH
           | JSON_MERGE_PRESERVE
           | JSON_REMOVE
           | JSON_REPLACE
           | JSON_SET
           | JSON_UNQUOTE
           | JSON_DEPTH
           | JSON_LENGTH
           | JSON_TYPE
           | JSON_VALID
           | JSON_TABLE
           | JSON_SCHEMA_VALID
           | JSON_SCHEMA_VALIDATION_REPORT
           | JSON_PRETTY
           | JSON_STORAGE_FREE
           | JSON_STORAGE_SIZE
           | JSON_ARRAYAGG
           | JSON_OBJECTAGG
           | STATEMENT

    opt_1 ::= sqlStatements | $empty

    seq_2 ::= MINUS MINUS

    opt_3 ::= seq_2 | $empty

    seq_5 ::= MINUS MINUS

    opt_6 ::= seq_5 | $empty

    opt_7 ::= SEMI | $empty

    grp_4 ::= sqlStatement opt_6 opt_7 | emptyStatement_

    list_8 ::= $empty | list_8 grp_4

    seq_10 ::= MINUS MINUS

    opt_11 ::= seq_10 | $empty

    seq_12 ::= opt_11 SEMI

    opt_13 ::= seq_12 | $empty

    grp_9 ::= sqlStatement opt_13 | emptyStatement_

    grp_14 ::= DATABASE | SCHEMA

    opt_15 ::= ifNotExists | $empty

    list_16 ::= $empty | list_16 createDatabaseOption

    opt_17 ::= ownerStatement | $empty

    opt_18 ::= ifNotExists | $empty

    opt_19 ::= NOT | $empty

    seq_20 ::= ON COMPLETION opt_19 PRESERVE

    opt_21 ::= seq_20 | $empty

    opt_22 ::= enableType | $empty

    seq_23 ::= COMMENT STRING_LITERAL

    opt_24 ::= seq_23 | $empty

    grp_25 ::= ONLINE | OFFLINE

    opt_26 ::= grp_25 | $empty

    grp_27 ::= UNIQUE | FULLTEXT | SPATIAL

    opt_28 ::= grp_27 | $empty

    opt_29 ::= indexType | $empty

    list_30 ::= $empty | list_30 indexOption

    opt_32 ::= EQUAL_SYMBOL | $empty

    grp_33 ::= DEFAULT | INPLACE | COPY

    opt_34 ::= EQUAL_SYMBOL | $empty

    grp_35 ::= DEFAULT | NONE | SHARED | EXCLUSIVE

    grp_31 ::= ALGORITHM opt_32 grp_33 | LOCK opt_34 grp_35

    list_36 ::= $empty | list_36 grp_31

    opt_37 ::= EQ | $empty

    seq_38 ::= INITIAL_SIZE opt_37 fileSizeLiteral

    opt_39 ::= seq_38 | $empty

    opt_40 ::= EQ | $empty

    seq_41 ::= UNDO_BUFFER_SIZE opt_40 fileSizeLiteral

    opt_42 ::= seq_41 | $empty

    opt_43 ::= EQ | $empty

    seq_44 ::= REDO_BUFFER_SIZE opt_43 fileSizeLiteral

    opt_45 ::= seq_44 | $empty

    opt_46 ::= EQ | $empty

    seq_47 ::= NODEGROUP opt_46 uid

    opt_48 ::= seq_47 | $empty

    opt_49 ::= WAIT | $empty

    opt_50 ::= EQ | $empty

    seq_51 ::= COMMENT opt_50 STRING_LITERAL

    opt_52 ::= seq_51 | $empty

    opt_53 ::= EQ | $empty

    opt_54 ::= ownerStatement | $empty

    opt_55 ::= ifNotExists | $empty

    opt_56 ::= procedureParameter | $empty

    seq_57 ::= COMMA procedureParameter

    list_58 ::= $empty | list_58 seq_57

    list_59 ::= $empty | list_59 routineOption

    opt_60 ::= ownerStatement | $empty

    opt_61 ::= AGGREGATE | $empty

    opt_62 ::= ifNotExists | $empty

    opt_63 ::= functionParameter | $empty

    seq_64 ::= COMMA functionParameter

    list_65 ::= $empty | list_65 seq_64

    list_66 ::= $empty | list_66 routineOption

    grp_67 ::= routineBody | returnStatement

    opt_68 ::= ifNotExists | $empty

    seq_69 ::= COMMA roleName

    list_70 ::= $empty | list_70 seq_69

    grp_71 ::= MYSQL | STRING_LITERAL

    seq_72 ::= COMMA serverOption

    list_73 ::= $empty | list_73 seq_72

    opt_74 ::= TEMPORARY | $empty

    opt_75 ::= ifNotExists | $empty

    grp_76 ::= LIKE tableName | LPAREN LIKE tableName RPAREN

    opt_77 ::= TEMPORARY | $empty

    opt_78 ::= ifNotExists | $empty

    opt_79 ::= createDefinitions | $empty

    opt_80 ::= COMMA | $empty

    seq_81 ::= opt_80 tableOption

    list_82 ::= $empty | list_82 seq_81

    seq_83 ::= tableOption list_82

    opt_84 ::= seq_83 | $empty

    opt_85 ::= partitionDefinitions | $empty

    grp_86 ::= IGNORE | REPLACE

    opt_87 ::= grp_86 | $empty

    opt_88 ::= AS | $empty

    opt_89 ::= TEMPORARY | $empty

    opt_90 ::= ifNotExists | $empty

    opt_91 ::= COMMA | $empty

    seq_92 ::= opt_91 tableOption

    list_93 ::= $empty | list_93 seq_92

    seq_94 ::= tableOption list_93

    opt_95 ::= seq_94 | $empty

    opt_96 ::= partitionDefinitions | $empty

    seq_97 ::= FILE_BLOCK_SIZE EQ fileSizeLiteral

    opt_98 ::= seq_97 | $empty

    opt_99 ::= EQ | $empty

    seq_100 ::= ENGINE opt_99 engineName

    opt_101 ::= seq_100 | $empty

    opt_102 ::= EQ | $empty

    seq_103 ::= EXTENT_SIZE opt_102 fileSizeLiteral

    opt_104 ::= seq_103 | $empty

    opt_105 ::= EQ | $empty

    seq_106 ::= INITIAL_SIZE opt_105 fileSizeLiteral

    opt_107 ::= seq_106 | $empty

    opt_108 ::= EQ | $empty

    seq_109 ::= AUTOEXTEND_SIZE opt_108 fileSizeLiteral

    opt_110 ::= seq_109 | $empty

    opt_111 ::= EQ | $empty

    seq_112 ::= MAX_SIZE opt_111 fileSizeLiteral

    opt_113 ::= seq_112 | $empty

    opt_114 ::= EQ | $empty

    seq_115 ::= NODEGROUP opt_114 uid

    opt_116 ::= seq_115 | $empty

    opt_117 ::= WAIT | $empty

    opt_118 ::= EQ | $empty

    seq_119 ::= COMMENT opt_118 STRING_LITERAL

    opt_120 ::= seq_119 | $empty

    opt_121 ::= EQ | $empty

    opt_122 ::= ownerStatement | $empty

    opt_123 ::= ifNotExists | $empty

    grp_124 ::= BEFORE | AFTER

    grp_125 ::= INSERT | UPDATE | DELETE

    grp_127 ::= FOLLOWS | PRECEDES

    grp_126 ::= grp_127 fullId

    opt_128 ::= grp_126 | $empty

    opt_129 ::= RECURSIVE | $empty

    seq_130 ::= COMMA cteColumnName

    list_131 ::= $empty | list_131 seq_130

    seq_132 ::= LPAREN cteColumnName list_131 RPAREN

    opt_133 ::= seq_132 | $empty

    seq_134 ::= COMMA commonTableExpressions

    opt_135 ::= seq_134 | $empty

    opt_136 ::= orReplace | $empty

    grp_138 ::= UNDEFINED | MERGE | TEMPTABLE

    grp_137 ::= ALGORITHM EQ grp_138

    opt_139 ::= grp_137 | $empty

    opt_140 ::= ownerStatement | $empty

    grp_142 ::= DEFINER | INVOKER

    grp_141 ::= SQL SECURITY grp_142

    opt_143 ::= grp_141 | $empty

    seq_144 ::= LPAREN uidList RPAREN

    opt_145 ::= seq_144 | $empty

    opt_147 ::= withClause | $empty

    opt_148 ::= withClause | $empty

    grp_150 ::= CASCADED | LOCAL

    opt_151 ::= grp_150 | $empty

    grp_149 ::= WITH opt_151 CHECK OPTION

    opt_152 ::= grp_149 | $empty

    grp_146 ::= LPAREN opt_147 selectStatement RPAREN | opt_148 selectStatement opt_152

    opt_153 ::= DEFAULT | $empty

    opt_154 ::= EQ | $empty

    grp_155 ::= charsetName | DEFAULT

    opt_156 ::= DEFAULT | $empty

    opt_157 ::= EQ | $empty

    opt_158 ::= DEFAULT | $empty

    opt_159 ::= EQ | $empty

    opt_160 ::= EQ | $empty

    grp_161 ::= DEFAULT | ZERO_DECIMAL | ONE_DECIMAL

    seq_162 ::= LPAREN RPAREN

    opt_163 ::= seq_162 | $empty

    grp_164 ::= userName | currentUserExpression

    list_165 ::= $empty | list_165 intervalExpr

    grp_166 ::= decimalLiteral | expression

    list_167 ::= startIntervals | list_167 startIntervals

    seq_168 ::= list_167 intervalExpr

    list_169 ::= $empty | list_169 seq_168

    seq_170 ::= STARTS timestampValue list_169

    opt_171 ::= seq_170 | $empty

    list_172 ::= endIntervals | list_172 endIntervals

    seq_173 ::= list_172 intervalExpr

    list_174 ::= $empty | list_174 seq_173

    seq_175 ::= ENDS timestampValue list_174

    opt_176 ::= seq_175 | $empty

    grp_177 ::= decimalLiteral | expression

    grp_178 ::= BTREE | HASH

    opt_179 ::= EQUAL_SYMBOL | $empty

    grp_180 ::= VISIBLE | INVISIBLE

    opt_181 ::= EQUAL_SYMBOL | $empty

    opt_182 ::= EQUAL_SYMBOL | $empty

    grp_183 ::= IN | OUT | INOUT

    opt_184 ::= grp_183 | $empty

    opt_185 ::= NOT | $empty

    grp_186 ::= CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA

    grp_187 ::= DEFINER | INVOKER

    seq_188 ::= COMMA createDefinition

    list_189 ::= $empty | list_189 seq_188

    opt_190 ::= NOT | $empty

    opt_191 ::= ENFORCED | $empty

    list_192 ::= $empty | list_192 columnConstraint

    opt_193 ::= NOT | $empty

    opt_194 ::= ENFORCED | $empty

    grp_195 ::= AUTO_INCREMENT | ON UPDATE currentTimestamp

    opt_196 ::= PRIMARY | $empty

    opt_197 ::= KEY | $empty

    grp_198 ::= FIXED | DYNAMIC | DEFAULT

    grp_199 ::= DISK | MEMORY | DEFAULT

    seq_200 ::= GENERATED ALWAYS

    opt_201 ::= seq_200 | $empty

    grp_202 ::= VIRTUAL | STORED

    opt_203 ::= grp_202 | $empty

    opt_204 ::= uid | $empty

    seq_205 ::= CONSTRAINT opt_204

    opt_206 ::= seq_205 | $empty

    opt_207 ::= uid | $empty

    seq_208 ::= CONSTRAINT opt_207

    opt_209 ::= seq_208 | $empty

    opt_210 ::= uid | $empty

    opt_211 ::= indexType | $empty

    list_212 ::= $empty | list_212 indexOption

    opt_213 ::= uid | $empty

    seq_214 ::= CONSTRAINT opt_213

    opt_215 ::= seq_214 | $empty

    grp_216 ::= INDEX | KEY

    opt_217 ::= grp_216 | $empty

    opt_218 ::= uid | $empty

    opt_219 ::= indexType | $empty

    list_220 ::= $empty | list_220 indexOption

    opt_221 ::= uid | $empty

    seq_222 ::= CONSTRAINT opt_221

    opt_223 ::= seq_222 | $empty

    opt_224 ::= uid | $empty

    opt_225 ::= uid | $empty

    seq_226 ::= CONSTRAINT opt_225

    opt_227 ::= seq_226 | $empty

    opt_228 ::= uid | $empty

    opt_229 ::= indexColumnNames | $empty

    grp_231 ::= FULL | PARTIAL | SIMPLE

    grp_230 ::= MATCH grp_231

    opt_232 ::= grp_230 | $empty

    opt_233 ::= referenceAction | $empty

    seq_234 ::= ON UPDATE referenceControlType

    opt_235 ::= seq_234 | $empty

    seq_236 ::= ON DELETE referenceControlType

    opt_237 ::= seq_236 | $empty

    grp_238 ::= INDEX | KEY

    opt_239 ::= uid | $empty

    opt_240 ::= indexType | $empty

    list_241 ::= $empty | list_241 indexOption

    grp_242 ::= FULLTEXT | SPATIAL

    grp_243 ::= INDEX | KEY

    opt_244 ::= grp_243 | $empty

    opt_245 ::= uid | $empty

    list_246 ::= $empty | list_246 indexOption

    opt_247 ::= EQ | $empty

    opt_248 ::= engineName | $empty

    opt_249 ::= EQ | $empty

    opt_250 ::= EQ | $empty

    opt_251 ::= EQ | $empty

    opt_252 ::= EQ | $empty

    opt_253 ::= DEFAULT | $empty

    opt_254 ::= EQ | $empty

    grp_255 ::= charsetName | DEFAULT

    grp_256 ::= CHECKSUM | PAGE_CHECKSUM

    opt_257 ::= EQ | $empty

    grp_258 ::= T_0 | T_1

    opt_259 ::= DEFAULT | $empty

    opt_260 ::= EQ | $empty

    opt_261 ::= EQ | $empty

    opt_262 ::= EQ | $empty

    grp_263 ::= STRING_LITERAL | ID

    opt_264 ::= EQ | $empty

    grp_265 ::= DATA | INDEX

    opt_266 ::= EQ | $empty

    opt_267 ::= EQ | $empty

    grp_268 ::= T_0 | T_1

    opt_269 ::= EQ | $empty

    grp_270 ::= PAGE_COMPRESSED | STRING_LITERAL

    opt_271 ::= EQ | $empty

    grp_272 ::= T_0 | T_1

    grp_273 ::= PAGE_COMPRESSION_LEVEL | STRING_LITERAL

    opt_274 ::= EQ | $empty

    opt_275 ::= EQ | $empty

    opt_276 ::= EQ | $empty

    opt_277 ::= EQ | $empty

    grp_278 ::= NO | FIRST | LAST

    opt_279 ::= EQ | $empty

    opt_280 ::= EQ | $empty

    opt_281 ::= EQ | $empty

    opt_282 ::= EQ | $empty

    grp_283 ::= T_0 | T_1 | DEFAULT

    opt_284 ::= EQ | $empty

    opt_285 ::= EQ | $empty

    grp_286 ::= DEFAULT | DYNAMIC | FIXED | COMPRESSED | REDUNDANT | COMPACT | ID

    opt_287 ::= EQ | $empty

    grp_288 ::= ID | STRING_LITERAL

    opt_289 ::= EQ | $empty

    opt_290 ::= EQ | $empty

    grp_291 ::= DEFAULT | T_0 | T_1

    opt_292 ::= EQ | $empty

    grp_293 ::= DEFAULT | T_0 | T_1

    opt_294 ::= EQ | $empty

    grp_295 ::= DEFAULT | decimalLiteral

    opt_296 ::= tablespaceStorage | $empty

    opt_297 ::= EQ | $empty

    grp_298 ::= T_0 | T_1

    opt_299 ::= EQ | $empty

    grp_300 ::= DISK | MEMORY | DEFAULT

    seq_301 ::= PARTITIONS decimalLiteral

    opt_302 ::= seq_301 | $empty

    seq_303 ::= SUBPARTITIONS decimalLiteral

    opt_304 ::= seq_303 | $empty

    seq_305 ::= SUBPARTITION BY subpartitionFunctionDefinition opt_304

    opt_306 ::= seq_305 | $empty

    seq_307 ::= COMMA partitionDefinition

    list_308 ::= $empty | list_308 seq_307

    seq_309 ::= LPAREN partitionDefinition list_308 RPAREN

    opt_310 ::= seq_309 | $empty

    opt_311 ::= LINEAR | $empty

    opt_312 ::= LINEAR | $empty

    grp_314 ::= T_1 | T_2

    grp_313 ::= ALGORITHM EQ grp_314

    opt_315 ::= grp_313 | $empty

    opt_316 ::= uidList | $empty

    grp_317 ::= LPAREN expression RPAREN | COLUMNS LPAREN uidList RPAREN

    grp_318 ::= LPAREN expression RPAREN | COLUMNS LPAREN uidList RPAREN

    opt_319 ::= LINEAR | $empty

    opt_320 ::= LINEAR | $empty

    grp_322 ::= T_1 | T_2

    grp_321 ::= ALGORITHM EQ grp_322

    opt_323 ::= grp_321 | $empty

    seq_324 ::= COMMA partitionDefinerAtom

    list_325 ::= $empty | list_325 seq_324

    list_326 ::= $empty | list_326 partitionOption

    seq_327 ::= COMMA subpartitionDefinition

    list_328 ::= $empty | list_328 seq_327

    seq_329 ::= LPAREN subpartitionDefinition list_328 RPAREN

    opt_330 ::= seq_329 | $empty

    list_331 ::= $empty | list_331 partitionOption

    seq_332 ::= COMMA subpartitionDefinition

    list_333 ::= $empty | list_333 seq_332

    seq_334 ::= LPAREN subpartitionDefinition list_333 RPAREN

    opt_335 ::= seq_334 | $empty

    seq_336 ::= COMMA partitionDefinerAtom

    list_337 ::= $empty | list_337 seq_336

    list_338 ::= $empty | list_338 partitionOption

    seq_339 ::= COMMA subpartitionDefinition

    list_340 ::= $empty | list_340 seq_339

    seq_341 ::= LPAREN subpartitionDefinition list_340 RPAREN

    opt_342 ::= seq_341 | $empty

    seq_343 ::= COMMA partitionDefinerVector

    list_344 ::= $empty | list_344 seq_343

    list_345 ::= $empty | list_345 partitionOption

    seq_346 ::= COMMA subpartitionDefinition

    list_347 ::= $empty | list_347 seq_346

    seq_348 ::= LPAREN subpartitionDefinition list_347 RPAREN

    opt_349 ::= seq_348 | $empty

    list_350 ::= $empty | list_350 partitionOption

    seq_351 ::= COMMA subpartitionDefinition

    list_352 ::= $empty | list_352 seq_351

    seq_353 ::= LPAREN subpartitionDefinition list_352 RPAREN

    opt_354 ::= seq_353 | $empty

    seq_355 ::= COMMA partitionDefinerAtom

    list_356 ::= seq_355 | list_356 seq_355

    list_357 ::= $empty | list_357 partitionOption

    opt_358 ::= DEFAULT | $empty

    opt_359 ::= STORAGE | $empty

    opt_360 ::= EQ | $empty

    opt_361 ::= EQ | $empty

    opt_362 ::= EQ | $empty

    opt_363 ::= EQ | $empty

    opt_364 ::= EQ | $empty

    opt_365 ::= EQ | $empty

    opt_366 ::= EQ | $empty

    opt_367 ::= EQ | $empty

    grp_368 ::= DATABASE | SCHEMA

    opt_369 ::= uid | $empty

    list_370 ::= createDatabaseOption | list_370 createDatabaseOption

    grp_371 ::= DATABASE | SCHEMA

    opt_372 ::= ownerStatement | $empty

    seq_373 ::= ON SCHEDULE scheduleExpression

    opt_374 ::= seq_373 | $empty

    opt_375 ::= NOT | $empty

    seq_376 ::= ON COMPLETION opt_375 PRESERVE

    opt_377 ::= seq_376 | $empty

    seq_378 ::= RENAME TO fullId

    opt_379 ::= seq_378 | $empty

    opt_380 ::= enableType | $empty

    seq_381 ::= COMMENT STRING_LITERAL

    opt_382 ::= seq_381 | $empty

    seq_383 ::= DO routineBody

    opt_384 ::= seq_383 | $empty

    list_385 ::= $empty | list_385 routineOption

    opt_386 ::= EQ | $empty

    seq_387 ::= INITIAL_SIZE opt_386 fileSizeLiteral

    opt_388 ::= seq_387 | $empty

    opt_389 ::= WAIT | $empty

    opt_390 ::= EQ | $empty

    list_391 ::= $empty | list_391 routineOption

    seq_392 ::= COMMA serverOption

    list_393 ::= $empty | list_393 seq_392

    grp_394 ::= ONLINE | OFFLINE

    opt_395 ::= grp_394 | $empty

    opt_396 ::= IGNORE | $empty

    seq_397 ::= COMMA alterSpecification

    list_398 ::= $empty | list_398 seq_397

    seq_399 ::= alterSpecification list_398

    opt_400 ::= seq_399 | $empty

    opt_401 ::= partitionDefinitions | $empty

    grp_402 ::= ADD | DROP

    seq_403 ::= INITIAL_SIZE EQ fileSizeLiteral

    opt_404 ::= seq_403 | $empty

    opt_405 ::= WAIT | $empty

    opt_406 ::= EQ | $empty

    grp_408 ::= UNDEFINED | MERGE | TEMPTABLE

    grp_407 ::= ALGORITHM EQ grp_408

    opt_409 ::= grp_407 | $empty

    opt_410 ::= ownerStatement | $empty

    grp_412 ::= DEFINER | INVOKER

    grp_411 ::= SQL SECURITY grp_412

    opt_413 ::= grp_411 | $empty

    seq_414 ::= LPAREN uidList RPAREN

    opt_415 ::= seq_414 | $empty

    grp_417 ::= CASCADED | LOCAL

    opt_418 ::= grp_417 | $empty

    grp_416 ::= WITH opt_418 CHECK OPTION

    opt_419 ::= grp_416 | $empty

    opt_420 ::= COMMA | $empty

    seq_421 ::= opt_420 tableOption

    list_422 ::= $empty | list_422 seq_421

    opt_423 ::= COLUMN | $empty

    grp_424 ::= FIRST | AFTER uid

    opt_425 ::= grp_424 | $empty

    opt_426 ::= COLUMN | $empty

    seq_427 ::= COMMA uid columnDefinition

    list_428 ::= $empty | list_428 seq_427

    grp_429 ::= INDEX | KEY

    opt_430 ::= uid | $empty

    opt_431 ::= indexType | $empty

    list_432 ::= $empty | list_432 indexOption

    opt_433 ::= uid | $empty

    seq_434 ::= CONSTRAINT opt_433

    opt_435 ::= seq_434 | $empty

    opt_436 ::= uid | $empty

    opt_437 ::= indexType | $empty

    list_438 ::= $empty | list_438 indexOption

    opt_439 ::= uid | $empty

    seq_440 ::= CONSTRAINT opt_439

    opt_441 ::= seq_440 | $empty

    grp_442 ::= INDEX | KEY

    opt_443 ::= grp_442 | $empty

    opt_444 ::= uid | $empty

    opt_445 ::= indexType | $empty

    list_446 ::= $empty | list_446 indexOption

    grp_447 ::= FULLTEXT | SPATIAL

    grp_448 ::= INDEX | KEY

    opt_449 ::= grp_448 | $empty

    opt_450 ::= uid | $empty

    list_451 ::= $empty | list_451 indexOption

    opt_452 ::= uid | $empty

    seq_453 ::= CONSTRAINT opt_452

    opt_454 ::= seq_453 | $empty

    opt_455 ::= uid | $empty

    opt_456 ::= uid | $empty

    seq_457 ::= CONSTRAINT opt_456

    opt_458 ::= seq_457 | $empty

    grp_459 ::= uid | stringLiteral | LPAREN expression RPAREN

    opt_460 ::= NOT | $empty

    opt_461 ::= ENFORCED | $empty

    opt_462 ::= uid | $empty

    seq_463 ::= CONSTRAINT opt_462

    opt_464 ::= seq_463 | $empty

    grp_465 ::= uid | stringLiteral | LPAREN expression RPAREN

    opt_466 ::= NOT | $empty

    opt_467 ::= ENFORCED | $empty

    opt_468 ::= uid | $empty

    seq_469 ::= CONSTRAINT opt_468

    opt_470 ::= seq_469 | $empty

    opt_471 ::= EQ | $empty

    grp_472 ::= DEFAULT | INSTANT | INPLACE | COPY

    opt_473 ::= COLUMN | $empty

    grp_474 ::= SET DEFAULT defaultValue | DROP DEFAULT

    opt_475 ::= COLUMN | $empty

    grp_476 ::= FIRST | AFTER uid

    opt_477 ::= grp_476 | $empty

    opt_478 ::= EQ | $empty

    grp_479 ::= DEFAULT | NONE | SHARED | EXCLUSIVE

    opt_480 ::= COLUMN | $empty

    grp_481 ::= FIRST | AFTER uid

    opt_482 ::= grp_481 | $empty

    opt_483 ::= COLUMN | $empty

    opt_484 ::= RESTRICT | $empty

    grp_485 ::= CONSTRAINT | CHECK

    grp_486 ::= INDEX | KEY

    grp_487 ::= INDEX | KEY

    opt_488 ::= COLUMN | $empty

    grp_490 ::= stringLiteral | LPAREN expression RPAREN

    grp_491 ::= VISIBLE | INVISIBLE

    grp_489 ::= SET DEFAULT grp_490 | SET grp_491 | DROP DEFAULT

    grp_492 ::= VISIBLE | INVISIBLE

    opt_493 ::= dottedId | $empty

    grp_494 ::= TO | AS

    opt_495 ::= grp_494 | $empty

    grp_496 ::= uid | fullId

    grp_497 ::= CHARSET | CHARACTER SET

    seq_498 ::= COLLATE collationName

    opt_499 ::= seq_498 | $empty

    opt_500 ::= DEFAULT | $empty

    seq_501 ::= COLLATE EQ collationName

    opt_502 ::= seq_501 | $empty

    grp_503 ::= WITHOUT | WITH

    opt_504 ::= COLUMN | $empty

    seq_505 ::= COMMA createDefinition

    list_506 ::= $empty | list_506 seq_505

    seq_507 ::= COMMA partitionDefinition

    list_508 ::= $empty | list_508 seq_507

    grp_509 ::= uidList | ALL

    grp_510 ::= uidList | ALL

    grp_511 ::= uidList | ALL

    seq_512 ::= COMMA partitionDefinition

    list_513 ::= $empty | list_513 seq_512

    grp_515 ::= WITH | WITHOUT

    grp_514 ::= grp_515 VALIDATION

    opt_516 ::= grp_514 | $empty

    grp_517 ::= uidList | ALL

    grp_518 ::= uidList | ALL

    grp_519 ::= uidList | ALL

    grp_520 ::= uidList | ALL

    grp_521 ::= uidList | ALL

    grp_522 ::= DATABASE | SCHEMA

    opt_523 ::= ifExists | $empty

    opt_524 ::= ifExists | $empty

    grp_525 ::= ONLINE | OFFLINE

    opt_526 ::= grp_525 | $empty

    opt_528 ::= EQ | $empty

    grp_529 ::= DEFAULT | INPLACE | COPY

    opt_530 ::= EQ | $empty

    grp_531 ::= DEFAULT | NONE | SHARED | EXCLUSIVE

    grp_527 ::= ALGORITHM opt_528 grp_529 | LOCK opt_530 grp_531

    list_532 ::= $empty | list_532 grp_527

    opt_533 ::= ifExists | $empty

    opt_534 ::= ifExists | $empty

    opt_535 ::= ifExists | $empty

    opt_536 ::= TEMPORARY | $empty

    opt_537 ::= ifExists | $empty

    grp_538 ::= RESTRICT | CASCADE

    opt_539 ::= grp_538 | $empty

    opt_540 ::= EQ | $empty

    seq_541 ::= ENGINE opt_540 engineName

    opt_542 ::= seq_541 | $empty

    opt_543 ::= ifExists | $empty

    opt_544 ::= ifExists | $empty

    seq_545 ::= COMMA fullId

    list_546 ::= $empty | list_546 seq_545

    grp_547 ::= RESTRICT | CASCADE

    opt_548 ::= grp_547 | $empty

    opt_549 ::= ifExists | $empty

    seq_550 ::= COMMA roleName

    list_551 ::= $empty | list_551 seq_550

    seq_553 ::= COMMA roleName

    list_554 ::= $empty | list_554 seq_553

    grp_552 ::= NONE | ALL | roleName list_554

    grp_555 ::= userName | uid

    grp_557 ::= userName | uid

    grp_556 ::= COMMA grp_557

    list_558 ::= $empty | list_558 grp_556

    seq_559 ::= COMMA renameTableClause

    list_560 ::= $empty | list_560 seq_559

    opt_561 ::= TABLE | $empty

    grp_563 ::= constants | expressions

    opt_564 ::= grp_563 | $empty

    grp_562 ::= LPAREN opt_564 RPAREN

    opt_565 ::= grp_562 | $empty

    grp_566 ::= LOW_PRIORITY | DELAYED | HIGH_PRIORITY

    opt_567 ::= grp_566 | $empty

    opt_568 ::= IGNORE | $empty

    opt_569 ::= INTO | $empty

    opt_570 ::= uidList | $empty

    seq_571 ::= PARTITION LPAREN opt_570 RPAREN

    opt_572 ::= seq_571 | $empty

    opt_574 ::= fullColumnNameList | $empty

    seq_575 ::= LPAREN opt_574 RPAREN

    opt_576 ::= seq_575 | $empty

    opt_577 ::= AS | $empty

    seq_578 ::= opt_577 uid

    opt_579 ::= seq_578 | $empty

    list_580 ::= setElements | list_580 setElements

    seq_581 ::= COMMA list_580 updatedElement

    list_582 ::= $empty | list_582 seq_581

    grp_573 ::= opt_576 insertStatementValue opt_579 | SET updatedElement list_582

    list_583 ::= duplicatedElements | list_583 duplicatedElements

    seq_584 ::= COMMA list_583 updatedElement

    list_585 ::= $empty | list_585 seq_584

    seq_586 ::= ON DUPLICATE KEY UPDATE updatedElement list_585

    opt_587 ::= seq_586 | $empty

    grp_588 ::= LOW_PRIORITY | CONCURRENT

    opt_589 ::= grp_588 | $empty

    opt_590 ::= LOCAL | $empty

    grp_591 ::= REPLACE | IGNORE

    opt_592 ::= grp_591 | $empty

    seq_593 ::= PARTITION LPAREN uidList RPAREN

    opt_594 ::= seq_593 | $empty

    seq_595 ::= CHARACTER SET charsetName

    opt_596 ::= seq_595 | $empty

    grp_598 ::= FIELDS | COLUMNS

    list_599 ::= selectFieldsInto | list_599 selectFieldsInto

    grp_597 ::= grp_598 list_599

    opt_600 ::= grp_597 | $empty

    list_601 ::= selectLinesInto | list_601 selectLinesInto

    seq_602 ::= LINES list_601

    opt_603 ::= seq_602 | $empty

    grp_605 ::= LINES | ROWS

    grp_604 ::= IGNORE decimalLiteral grp_605

    opt_606 ::= grp_604 | $empty

    seq_607 ::= COMMA assignmentField

    list_608 ::= $empty | list_608 seq_607

    seq_609 ::= LPAREN assignmentField list_608 RPAREN

    opt_610 ::= seq_609 | $empty

    seq_611 ::= COMMA updatedElement

    list_612 ::= $empty | list_612 seq_611

    seq_613 ::= SET updatedElement list_612

    opt_614 ::= seq_613 | $empty

    grp_615 ::= LOW_PRIORITY | CONCURRENT

    opt_616 ::= grp_615 | $empty

    opt_617 ::= LOCAL | $empty

    grp_618 ::= REPLACE | IGNORE

    opt_619 ::= grp_618 | $empty

    seq_620 ::= CHARACTER SET charsetName

    opt_621 ::= seq_620 | $empty

    seq_622 ::= ROWS IDENTIFIED BY LT STRING_LITERAL GT

    opt_623 ::= seq_622 | $empty

    grp_625 ::= LINES | ROWS

    grp_624 ::= IGNORE decimalLiteral grp_625

    opt_626 ::= grp_624 | $empty

    seq_627 ::= COMMA assignmentField

    list_628 ::= $empty | list_628 seq_627

    seq_629 ::= LPAREN assignmentField list_628 RPAREN

    opt_630 ::= seq_629 | $empty

    seq_631 ::= COMMA updatedElement

    list_632 ::= $empty | list_632 seq_631

    seq_633 ::= SET updatedElement list_632

    opt_634 ::= seq_633 | $empty

    grp_635 ::= LOW_PRIORITY | DELAYED

    opt_636 ::= grp_635 | $empty

    opt_637 ::= INTO | $empty

    seq_638 ::= PARTITION LPAREN uidList RPAREN

    opt_639 ::= seq_638 | $empty

    seq_641 ::= LPAREN uidList RPAREN

    opt_642 ::= seq_641 | $empty

    list_643 ::= setElements | list_643 setElements

    seq_644 ::= COMMA list_643 updatedElement

    list_645 ::= $empty | list_645 seq_644

    grp_640 ::= opt_642 insertStatementValue | SET updatedElement list_645

    opt_646 ::= lockClause | $empty

    opt_647 ::= lockClause | $empty

    grp_648 ::= querySpecificationNointo | queryExpressionNointo

    list_649 ::= unionStatement | list_649 unionStatement

    grp_651 ::= ALL | DISTINCT

    opt_652 ::= grp_651 | $empty

    grp_653 ::= querySpecification | queryExpression

    grp_650 ::= UNION opt_652 grp_653

    opt_654 ::= grp_650 | $empty

    opt_655 ::= orderByClause | $empty

    opt_656 ::= limitClause | $empty

    opt_657 ::= lockClause | $empty

    list_658 ::= unionParenthesis | list_658 unionParenthesis

    grp_660 ::= ALL | DISTINCT

    opt_661 ::= grp_660 | $empty

    grp_659 ::= UNION opt_661 queryExpression

    opt_662 ::= grp_659 | $empty

    opt_663 ::= orderByClause | $empty

    opt_664 ::= limitClause | $empty

    opt_665 ::= lockClause | $empty

    seq_666 ::= COMMA lateralStatement

    list_667 ::= seq_666 | list_667 seq_666

    opt_668 ::= expressionsWithDefaults | $empty

    opt_669 ::= expressionsWithDefaults | $empty

    seq_670 ::= COMMA LPAREN opt_669 RPAREN

    list_671 ::= $empty | list_671 seq_670

    grp_672 ::= VALUES | VALUE

    opt_673 ::= expressionsWithDefaults | $empty

    opt_674 ::= expressionsWithDefaults | $empty

    seq_675 ::= COMMA LPAREN opt_674 RPAREN

    list_676 ::= $empty | list_676 seq_675

    grp_677 ::= expression | DEFAULT

    opt_678 ::= LOW_PRIORITY | $empty

    opt_679 ::= QUICK | $empty

    opt_680 ::= IGNORE | $empty

    opt_681 ::= AS | $empty

    seq_682 ::= opt_681 uid

    opt_683 ::= seq_682 | $empty

    seq_684 ::= PARTITION LPAREN uidList RPAREN

    opt_685 ::= seq_684 | $empty

    seq_686 ::= WHERE expression

    opt_687 ::= seq_686 | $empty

    opt_688 ::= orderByClause | $empty

    seq_689 ::= LIMIT limitClauseAtom

    opt_690 ::= seq_689 | $empty

    opt_691 ::= LOW_PRIORITY | $empty

    opt_692 ::= QUICK | $empty

    opt_693 ::= IGNORE | $empty

    seq_695 ::= DOT STAR

    opt_696 ::= seq_695 | $empty

    seq_697 ::= DOT STAR

    opt_698 ::= seq_697 | $empty

    seq_699 ::= COMMA tableName opt_698

    list_700 ::= $empty | list_700 seq_699

    seq_701 ::= DOT STAR

    opt_702 ::= seq_701 | $empty

    seq_703 ::= DOT STAR

    opt_704 ::= seq_703 | $empty

    seq_705 ::= COMMA tableName opt_704

    list_706 ::= $empty | list_706 seq_705

    grp_694 ::= tableName opt_696 list_700 FROM tableSources | FROM tableName opt_702 list_706 USING tableSources

    seq_707 ::= WHERE expression

    opt_708 ::= seq_707 | $empty

    opt_709 ::= AS | $empty

    seq_710 ::= opt_709 uid

    opt_711 ::= seq_710 | $empty

    grp_713 ::= FIRST | NEXT | PREV | LAST

    grp_712 ::= comparisonOperator LPAREN constants RPAREN | grp_713

    seq_714 ::= WHERE expression

    opt_715 ::= seq_714 | $empty

    seq_716 ::= LIMIT limitClauseAtom

    opt_717 ::= seq_716 | $empty

    grp_718 ::= FIRST | NEXT

    seq_719 ::= WHERE expression

    opt_720 ::= seq_719 | $empty

    seq_721 ::= LIMIT limitClauseAtom

    opt_722 ::= seq_721 | $empty

    opt_723 ::= LOW_PRIORITY | $empty

    opt_724 ::= IGNORE | $empty

    opt_725 ::= AS | $empty

    seq_726 ::= opt_725 uid

    opt_727 ::= seq_726 | $empty

    seq_728 ::= COMMA updatedElement

    list_729 ::= $empty | list_729 seq_728

    seq_730 ::= WHERE expression

    opt_731 ::= seq_730 | $empty

    opt_732 ::= orderByClause | $empty

    opt_733 ::= limitClause | $empty

    opt_734 ::= LOW_PRIORITY | $empty

    opt_735 ::= IGNORE | $empty

    seq_736 ::= COMMA updatedElement

    list_737 ::= $empty | list_737 seq_736

    seq_738 ::= WHERE expression

    opt_739 ::= seq_738 | $empty

    seq_740 ::= COMMA orderByExpression

    list_741 ::= $empty | list_741 seq_740

    grp_742 ::= ASC | DESC

    opt_743 ::= grp_742 | $empty

    seq_744 ::= COMMA tableSource

    list_745 ::= $empty | list_745 seq_744

    list_746 ::= $empty | list_746 joinPart

    list_747 ::= $empty | list_747 joinPart

    seq_748 ::= PARTITION LPAREN uidList RPAREN

    opt_749 ::= seq_748 | $empty

    opt_750 ::= AS | $empty

    seq_751 ::= opt_750 uid

    opt_752 ::= seq_751 | $empty

    seq_753 ::= COMMA indexHint

    list_754 ::= $empty | list_754 seq_753

    seq_755 ::= indexHint list_754

    opt_756 ::= seq_755 | $empty

    opt_757 ::= AS | $empty

    seq_758 ::= opt_757 uid

    opt_759 ::= seq_758 | $empty

    grp_760 ::= selectStatement | LPAREN selectStatement RPAREN

    opt_761 ::= AS | $empty

    grp_762 ::= USE | IGNORE | FORCE

    grp_763 ::= INDEX | KEY

    seq_764 ::= FOR indexHintType

    opt_765 ::= seq_764 | $empty

    grp_766 ::= INNER | CROSS

    opt_767 ::= grp_766 | $empty

    opt_768 ::= LATERAL | $empty

    list_769 ::= $empty | list_769 joinSpec

    seq_770 ::= ON expression

    list_771 ::= $empty | list_771 seq_770

    grp_772 ::= LEFT | RIGHT

    opt_773 ::= OUTER | $empty

    opt_774 ::= LATERAL | $empty

    list_775 ::= $empty | list_775 joinSpec

    grp_777 ::= LEFT | RIGHT

    opt_778 ::= OUTER | $empty

    grp_776 ::= grp_777 opt_778

    opt_779 ::= grp_776 | $empty

    seq_780 ::= ON expression

    list_781 ::= $empty | list_781 selectSpec

    opt_782 ::= selectIntoExpression | $empty

    opt_783 ::= fromClause | $empty

    opt_784 ::= groupByClause | $empty

    opt_785 ::= havingClause | $empty

    opt_786 ::= windowClause | $empty

    opt_787 ::= orderByClause | $empty

    opt_788 ::= limitClause | $empty

    list_789 ::= $empty | list_789 selectSpec

    opt_790 ::= fromClause | $empty

    opt_791 ::= groupByClause | $empty

    opt_792 ::= havingClause | $empty

    opt_793 ::= windowClause | $empty

    opt_794 ::= orderByClause | $empty

    opt_795 ::= limitClause | $empty

    opt_796 ::= selectIntoExpression | $empty

    list_797 ::= $empty | list_797 selectSpec

    opt_798 ::= fromClause | $empty

    opt_799 ::= groupByClause | $empty

    opt_800 ::= havingClause | $empty

    opt_801 ::= windowClause | $empty

    opt_802 ::= orderByClause | $empty

    opt_803 ::= limitClause | $empty

    opt_804 ::= unionStatement | $empty

    grp_805 ::= ALL | DISTINCT

    opt_806 ::= grp_805 | $empty

    grp_807 ::= ALL | DISTINCT

    opt_808 ::= grp_807 | $empty

    grp_809 ::= querySpecificationNointo | queryExpressionNointo

    grp_812 ::= querySpecificationNointo | queryExpressionNointo

    opt_813 ::= AS | $empty

    seq_814 ::= opt_813 uid

    opt_815 ::= seq_814 | $empty

    grp_811 ::= LPAREN grp_812 RPAREN opt_815

    grp_810 ::= querySpecificationNointo | queryExpressionNointo | grp_811

    opt_816 ::= AS | $empty

    seq_817 ::= opt_816 uid

    opt_818 ::= seq_817 | $empty

    seq_819 ::= COMMA jsonColumn

    list_820 ::= $empty | list_820 seq_819

    opt_823 ::= jsonOnEmpty | $empty

    opt_824 ::= jsonOnError | $empty

    grp_822 ::= PATH STRING_LITERAL opt_823 opt_824 | EXISTS PATH STRING_LITERAL

    grp_821 ::= FOR ORDINALITY | dataType grp_822

    opt_825 ::= PATH | $empty

    grp_826 ::= NULL_LITERAL | ERROR | DEFAULT defaultValue

    grp_827 ::= NULL_LITERAL | ERROR | DEFAULT defaultValue

    grp_828 ::= ALL | DISTINCT | DISTINCTROW

    grp_829 ::= SQL_CACHE | SQL_NO_CACHE

    grp_830 ::= STAR | selectElement

    seq_831 ::= COMMA selectElement

    list_832 ::= $empty | list_832 seq_831

    opt_833 ::= AS | $empty

    seq_834 ::= opt_833 uid

    opt_835 ::= seq_834 | $empty

    opt_836 ::= AS | $empty

    seq_837 ::= opt_836 uid

    opt_838 ::= seq_837 | $empty

    seq_839 ::= LOCAL_ID VAR_ASSIGN

    opt_840 ::= seq_839 | $empty

    opt_841 ::= AS | $empty

    seq_842 ::= opt_841 uid

    opt_843 ::= seq_842 | $empty

    seq_844 ::= COMMA assignmentField

    list_845 ::= $empty | list_845 seq_844

    seq_847 ::= CHARACTER SET charsetName

    opt_848 ::= seq_847 | $empty

    grp_850 ::= FIELDS | COLUMNS

    list_851 ::= selectFieldsInto | list_851 selectFieldsInto

    grp_849 ::= grp_850 list_851

    opt_852 ::= grp_849 | $empty

    list_853 ::= selectLinesInto | list_853 selectLinesInto

    seq_854 ::= LINES list_853

    opt_855 ::= seq_854 | $empty

    grp_846 ::= INTO OUTFILE STRING_LITERAL opt_848 opt_852 opt_855

    opt_856 ::= OPTIONALLY | $empty

    seq_857 ::= FROM tableSources

    opt_858 ::= seq_857 | $empty

    seq_859 ::= WHERE expression

    opt_860 ::= seq_859 | $empty

    seq_861 ::= COMMA groupByItem

    list_862 ::= $empty | list_862 seq_861

    seq_863 ::= WITH ROLLUP

    opt_864 ::= seq_863 | $empty

    seq_865 ::= COMMA windowName AS LPAREN windowSpec RPAREN

    list_866 ::= $empty | list_866 seq_865

    grp_867 ::= ASC | DESC

    opt_868 ::= grp_867 | $empty

    seq_870 ::= limitClauseAtom COMMA

    opt_871 ::= seq_870 | $empty

    grp_869 ::= opt_871 limitClauseAtom | limitClauseAtom OFFSET limitClauseAtom

    seq_872 ::= COMMA transactionMode

    list_873 ::= $empty | list_873 seq_872

    seq_874 ::= transactionMode list_873

    opt_875 ::= seq_874 | $empty

    opt_876 ::= WORK | $empty

    opt_877 ::= WORK | $empty

    opt_878 ::= NO | $empty

    seq_879 ::= AND opt_878 CHAIN

    opt_880 ::= seq_879 | $empty

    opt_881 ::= NO | $empty

    seq_882 ::= opt_881 RELEASE

    opt_883 ::= seq_882 | $empty

    opt_884 ::= WORK | $empty

    opt_885 ::= NO | $empty

    seq_886 ::= AND opt_885 CHAIN

    opt_887 ::= seq_886 | $empty

    opt_888 ::= NO | $empty

    seq_889 ::= opt_888 RELEASE

    opt_890 ::= seq_889 | $empty

    opt_891 ::= WORK | $empty

    opt_892 ::= SAVEPOINT | $empty

    grp_893 ::= TABLE | TABLES

    seq_894 ::= COMMA lockTableElement

    list_895 ::= $empty | list_895 seq_894

    grp_896 ::= T_0 | T_1

    grp_897 ::= GLOBAL | SESSION

    opt_898 ::= grp_897 | $empty

    seq_899 ::= COMMA transactionOption

    list_900 ::= $empty | list_900 seq_899

    opt_901 ::= AS | $empty

    seq_902 ::= opt_901 uid

    opt_903 ::= seq_902 | $empty

    opt_904 ::= LOCAL | $empty

    opt_905 ::= LOW_PRIORITY | $empty

    seq_906 ::= COMMA masterOption

    list_907 ::= $empty | list_907 seq_906

    opt_908 ::= channelOption | $empty

    seq_909 ::= COMMA replicationFilter

    list_910 ::= $empty | list_910 seq_909

    grp_911 ::= BINARY | MASTER

    grp_912 ::= TO STRING_LITERAL | BEFORE STRING_LITERAL

    opt_913 ::= ALL | $empty

    opt_914 ::= channelOption | $empty

    seq_915 ::= COMMA threadType

    list_916 ::= $empty | list_916 seq_915

    seq_917 ::= threadType list_916

    opt_918 ::= seq_917 | $empty

    seq_919 ::= UNTIL untilOption

    opt_920 ::= seq_919 | $empty

    list_921 ::= $empty | list_921 connectionOption

    opt_922 ::= channelOption | $empty

    seq_923 ::= COMMA threadType

    list_924 ::= $empty | list_924 seq_923

    seq_925 ::= threadType list_924

    opt_926 ::= seq_925 | $empty

    grp_927 ::= T_0 | T_1

    seq_928 ::= COMMA uid

    list_929 ::= $empty | list_929 seq_928

    seq_930 ::= uid list_929

    opt_931 ::= seq_930 | $empty

    seq_932 ::= COMMA tablePair

    list_933 ::= $empty | list_933 seq_932

    grp_934 ::= SQL_BEFORE_GTIDS | SQL_AFTER_GTIDS

    seq_935 ::= COMMA uuidSet

    list_936 ::= $empty | list_936 seq_935

    grp_937 ::= START | BEGIN

    grp_938 ::= JOIN | RESUME

    opt_939 ::= grp_938 | $empty

    seq_940 ::= FOR MIGRATE

    opt_941 ::= seq_940 | $empty

    seq_942 ::= SUSPEND opt_941

    opt_943 ::= seq_942 | $empty

    seq_944 ::= ONE PHASE

    opt_945 ::= seq_944 | $empty

    seq_946 ::= CONVERT xid

    opt_947 ::= seq_946 | $empty

    grp_948 ::= STRING_LITERAL | LOCAL_ID

    seq_949 ::= USING userVariables

    opt_950 ::= seq_949 | $empty

    grp_951 ::= DEALLOCATE | DROP

    seq_952 ::= uid COLON

    opt_953 ::= seq_952 | $empty

    seq_954 ::= declareVariable SEMI

    list_955 ::= $empty | list_955 seq_954

    seq_956 ::= declareCondition SEMI

    list_957 ::= $empty | list_957 seq_956

    seq_958 ::= declareCursor SEMI

    list_959 ::= $empty | list_959 seq_958

    seq_960 ::= declareHandler SEMI

    list_961 ::= $empty | list_961 seq_960

    list_962 ::= $empty | list_962 procedureSqlStatement

    opt_963 ::= uid | $empty

    grp_964 ::= uid | expression

    opt_965 ::= grp_964 | $empty

    list_966 ::= caseAlternative | list_966 caseAlternative

    list_967 ::= procedureSqlStatement | list_967 procedureSqlStatement

    seq_968 ::= ELSE list_967

    opt_969 ::= seq_968 | $empty

    list_970 ::= thenStatements | list_970 thenStatements

    list_971 ::= procedureSqlStatement | list_971 procedureSqlStatement

    list_972 ::= $empty | list_972 elifAlternative

    list_973 ::= elseStatements | list_973 elseStatements

    list_974 ::= procedureSqlStatement | list_974 procedureSqlStatement

    seq_975 ::= ELSE list_973 list_974

    opt_976 ::= seq_975 | $empty

    seq_977 ::= uid COLON

    opt_978 ::= seq_977 | $empty

    list_979 ::= procedureSqlStatement | list_979 procedureSqlStatement

    opt_980 ::= uid | $empty

    seq_981 ::= uid COLON

    opt_982 ::= seq_981 | $empty

    list_983 ::= procedureSqlStatement | list_983 procedureSqlStatement

    opt_984 ::= uid | $empty

    seq_985 ::= uid COLON

    opt_986 ::= seq_985 | $empty

    list_987 ::= procedureSqlStatement | list_987 procedureSqlStatement

    opt_988 ::= uid | $empty

    opt_989 ::= NEXT | $empty

    seq_990 ::= opt_989 FROM

    opt_991 ::= seq_990 | $empty

    seq_992 ::= DEFAULT expression

    opt_993 ::= seq_992 | $empty

    opt_995 ::= VALUE | $empty

    grp_994 ::= decimalLiteral | SQLSTATE opt_995 STRING_LITERAL

    grp_996 ::= CONTINUE | EXIT | UNDO

    seq_997 ::= COMMA handlerConditionValue

    list_998 ::= $empty | list_998 seq_997

    opt_999 ::= VALUE | $empty

    grp_1000 ::= compoundStatement | sqlStatement

    grp_1001 ::= constant | expression

    list_1002 ::= procedureSqlStatement | list_1002 procedureSqlStatement

    list_1003 ::= procedureSqlStatement | list_1003 procedureSqlStatement

    seq_1004 ::= COMMA userSpecification

    list_1005 ::= $empty | list_1005 seq_1004

    opt_1006 ::= ifExists | $empty

    seq_1007 ::= COMMA userAuthOption

    list_1008 ::= $empty | list_1008 seq_1007

    opt_1011 ::= AND | $empty

    seq_1012 ::= opt_1011 tlsOption

    list_1013 ::= $empty | list_1013 seq_1012

    grp_1010 ::= NONE | tlsOption list_1013

    grp_1009 ::= REQUIRE grp_1010

    opt_1014 ::= grp_1009 | $empty

    list_1015 ::= userResourceOption | list_1015 userResourceOption

    seq_1016 ::= WITH list_1015

    opt_1017 ::= seq_1016 | $empty

    grp_1018 ::= userPasswordOption | userLockOption

    list_1019 ::= $empty | list_1019 grp_1018

    grp_1020 ::= COMMENT STRING_LITERAL | ATTRIBUTE STRING_LITERAL

    opt_1021 ::= grp_1020 | $empty

    opt_1022 ::= ifExists | $empty

    grp_1023 ::= userName | uid

    seq_1024 ::= COMMA userAuthOption

    list_1025 ::= $empty | list_1025 seq_1024

    opt_1026 ::= ifNotExists | $empty

    seq_1027 ::= COMMA userAuthOption

    list_1028 ::= $empty | list_1028 seq_1027

    seq_1029 ::= DEFAULT ROLE roleOption

    opt_1030 ::= seq_1029 | $empty

    opt_1033 ::= AND | $empty

    seq_1034 ::= opt_1033 tlsOption

    list_1035 ::= $empty | list_1035 seq_1034

    grp_1032 ::= NONE | tlsOption list_1035

    grp_1031 ::= REQUIRE grp_1032

    opt_1036 ::= grp_1031 | $empty

    list_1037 ::= userResourceOption | list_1037 userResourceOption

    seq_1038 ::= WITH list_1037

    opt_1039 ::= seq_1038 | $empty

    grp_1040 ::= userPasswordOption | userLockOption

    list_1041 ::= $empty | list_1041 grp_1040

    grp_1042 ::= COMMENT STRING_LITERAL | ATTRIBUTE STRING_LITERAL

    opt_1043 ::= grp_1042 | $empty

    opt_1044 ::= ifExists | $empty

    seq_1045 ::= COMMA userName

    list_1046 ::= $empty | list_1046 seq_1045

    seq_1047 ::= COMMA privelegeClause

    list_1048 ::= $empty | list_1048 seq_1047

    grp_1049 ::= TABLE | FUNCTION | PROCEDURE

    opt_1050 ::= grp_1049 | $empty

    seq_1051 ::= COMMA userAuthOption

    list_1052 ::= $empty | list_1052 seq_1051

    opt_1055 ::= AND | $empty

    seq_1056 ::= opt_1055 tlsOption

    list_1057 ::= $empty | list_1057 seq_1056

    grp_1054 ::= NONE | tlsOption list_1057

    grp_1053 ::= REQUIRE grp_1054

    opt_1058 ::= grp_1053 | $empty

    grp_1060 ::= GRANT OPTION | userResourceOption

    list_1061 ::= $empty | list_1061 grp_1060

    grp_1059 ::= WITH list_1061

    opt_1062 ::= grp_1059 | $empty

    seq_1063 ::= AS userName WITH ROLE roleOption

    opt_1064 ::= seq_1063 | $empty

    grp_1065 ::= userName | uid

    grp_1067 ::= userName | uid

    grp_1066 ::= COMMA grp_1067

    list_1068 ::= $empty | list_1068 grp_1066

    grp_1069 ::= userName | uid

    grp_1071 ::= userName | uid

    grp_1070 ::= COMMA grp_1071

    list_1072 ::= $empty | list_1072 grp_1070

    seq_1073 ::= WITH ADMIN OPTION

    opt_1074 ::= seq_1073 | $empty

    seq_1075 ::= COMMA userName

    list_1076 ::= $empty | list_1076 seq_1075

    seq_1077 ::= EXCEPT userName list_1076

    opt_1078 ::= seq_1077 | $empty

    seq_1079 ::= COMMA userName

    list_1080 ::= $empty | list_1080 seq_1079

    list_1081 ::= toOther | list_1081 toOther

    seq_1082 ::= COMMA list_1081 userName

    list_1083 ::= $empty | list_1083 seq_1082

    seq_1084 ::= WITH GRANT OPTION

    opt_1085 ::= seq_1084 | $empty

    seq_1086 ::= COMMA renameUserClause

    list_1087 ::= $empty | list_1087 seq_1086

    opt_1088 ::= ifExists | $empty

    grp_1089 ::= privelegeClause | uid

    grp_1090 ::= COMMA privelegeClause | uid

    list_1091 ::= $empty | list_1091 grp_1090

    grp_1092 ::= TABLE | FUNCTION | PROCEDURE

    opt_1093 ::= grp_1092 | $empty

    seq_1094 ::= COMMA userName

    list_1095 ::= $empty | list_1095 seq_1094

    seq_1096 ::= IGNORE UNKNOWN USER

    opt_1097 ::= seq_1096 | $empty

    opt_1098 ::= ifExists | $empty

    opt_1099 ::= PRIVILEGES | $empty

    seq_1100 ::= COMMA userName

    list_1101 ::= $empty | list_1101 seq_1100

    seq_1102 ::= IGNORE UNKNOWN USER

    opt_1103 ::= seq_1102 | $empty

    opt_1104 ::= ifExists | $empty

    grp_1105 ::= userName | uid

    grp_1107 ::= userName | uid

    grp_1106 ::= COMMA grp_1107

    list_1108 ::= $empty | list_1108 grp_1106

    grp_1109 ::= userName | uid

    grp_1111 ::= userName | uid

    grp_1110 ::= COMMA grp_1111

    list_1112 ::= $empty | list_1112 grp_1110

    seq_1113 ::= IGNORE UNKNOWN USER

    opt_1114 ::= seq_1113 | $empty

    list_1115 ::= fromOther | list_1115 fromOther

    seq_1116 ::= COMMA list_1115 userName

    list_1117 ::= $empty | list_1117 seq_1116

    seq_1118 ::= FOR userName

    opt_1119 ::= seq_1118 | $empty

    grp_1120 ::= passwordFunctionClause | STRING_LITERAL

    seq_1121 ::= REPLACE STRING_LITERAL

    opt_1122 ::= seq_1121 | $empty

    seq_1123 ::= RETAIN CURRENT PASSWORD

    opt_1124 ::= seq_1123 | $empty

    grp_1126 ::= BY | USING | AS

    grp_1127 ::= STRING_LITERAL | RANDOM PASSWORD

    grp_1125 ::= grp_1126 grp_1127 authOptionClause

    opt_1128 ::= grp_1125 | $empty

    grp_1129 ::= DEFAULT | NEVER | INTERVAL decimalLiteral DAY

    opt_1130 ::= grp_1129 | $empty

    grp_1131 ::= DEFAULT | decimalLiteral

    grp_1132 ::= DEFAULT | decimalLiteral DAY

    grp_1133 ::= OPTIONAL | DEFAULT

    opt_1134 ::= grp_1133 | $empty

    grp_1135 ::= decimalLiteral | UNBOUNDED

    grp_1136 ::= LOCK | UNLOCK

    seq_1137 ::= LPAREN uidList RPAREN

    opt_1138 ::= seq_1137 | $empty

    opt_1139 ::= PRIVILEGES | $empty

    opt_1140 ::= ROUTINE | $empty

    grp_1141 ::= TEMPORARY TABLES | ROUTINE | VIEW | USER | TABLESPACE | ROLE

    opt_1142 ::= grp_1141 | $empty

    opt_1143 ::= ROLE | $empty

    grp_1144 ::= CLIENT | SLAVE

    grp_1145 ::= VIEW | DATABASES

    grp_1146 ::= NO_WRITE_TO_BINLOG | LOCAL

    opt_1147 ::= grp_1146 | $empty

    grp_1148 ::= TABLE | TABLES

    seq_1149 ::= COMMA fullColumnName

    list_1150 ::= $empty | list_1150 seq_1149

    seq_1151 ::= WITH decimalLiteral BUCKETS

    opt_1152 ::= seq_1151 | $empty

    seq_1153 ::= UPDATE HISTOGRAM ON fullColumnName list_1150 opt_1152

    opt_1154 ::= seq_1153 | $empty

    seq_1155 ::= COMMA fullColumnName

    list_1156 ::= $empty | list_1156 seq_1155

    seq_1157 ::= DROP HISTOGRAM ON fullColumnName list_1156

    opt_1158 ::= seq_1157 | $empty

    list_1159 ::= $empty | list_1159 checkTableOption

    grp_1160 ::= QUICK | EXTENDED

    opt_1161 ::= grp_1160 | $empty

    grp_1162 ::= NO_WRITE_TO_BINLOG | LOCAL

    opt_1163 ::= grp_1162 | $empty

    grp_1164 ::= TABLE | TABLES

    grp_1165 ::= NO_WRITE_TO_BINLOG | LOCAL

    opt_1166 ::= grp_1165 | $empty

    opt_1167 ::= QUICK | $empty

    opt_1168 ::= EXTENDED | $empty

    opt_1169 ::= USE_FRM | $empty

    opt_1170 ::= AGGREGATE | $empty

    opt_1171 ::= ifNotExists | $empty

    grp_1172 ::= STRING | INTEGER | REAL | DECIMAL

    grp_1173 ::= EQ | COLONEQ

    grp_1174 ::= expression | ON

    grp_1176 ::= EQ | COLONEQ

    grp_1177 ::= expression | ON

    grp_1175 ::= COMMA variableClause grp_1176 grp_1177

    list_1178 ::= $empty | list_1178 grp_1175

    grp_1179 ::= charsetName | DEFAULT

    seq_1181 ::= COLLATE collationName

    opt_1182 ::= seq_1181 | $empty

    grp_1180 ::= charsetName opt_1182 | DEFAULT

    grp_1183 ::= EQ | COLONEQ

    grp_1185 ::= EQ | COLONEQ

    grp_1184 ::= COMMA fullId grp_1185 expression

    list_1186 ::= $empty | list_1186 grp_1184

    grp_1187 ::= BINARY | MASTER

    grp_1188 ::= BINLOG | RELAYLOG

    seq_1189 ::= IN STRING_LITERAL

    opt_1190 ::= seq_1189 | $empty

    seq_1191 ::= FROM decimalLiteral

    opt_1192 ::= seq_1191 | $empty

    seq_1193 ::= decimalLiteral COMMA

    opt_1194 ::= seq_1193 | $empty

    seq_1195 ::= LIMIT opt_1194 decimalLiteral

    opt_1196 ::= seq_1195 | $empty

    opt_1197 ::= showFilter | $empty

    opt_1198 ::= FULL | $empty

    grp_1199 ::= COLUMNS | FIELDS

    grp_1200 ::= FROM | IN

    grp_1202 ::= FROM | IN

    grp_1201 ::= grp_1202 uid

    opt_1203 ::= grp_1201 | $empty

    opt_1204 ::= showFilter | $empty

    grp_1205 ::= DATABASE | SCHEMA

    opt_1206 ::= ifNotExists | $empty

    grp_1207 ::= EVENT | FUNCTION | PROCEDURE | TABLE | TRIGGER | VIEW

    grp_1208 ::= STATUS | MUTEX

    grp_1209 ::= ERRORS | WARNINGS

    seq_1210 ::= decimalLiteral COMMA

    opt_1211 ::= seq_1210 | $empty

    seq_1212 ::= LIMIT opt_1211 decimalLiteral

    opt_1213 ::= seq_1212 | $empty

    grp_1214 ::= ERRORS | WARNINGS

    grp_1216 ::= FROM | IN

    grp_1215 ::= grp_1216 uid

    opt_1217 ::= grp_1215 | $empty

    opt_1218 ::= showFilter | $empty

    grp_1219 ::= FUNCTION | PROCEDURE

    seq_1220 ::= FOR userName

    opt_1221 ::= seq_1220 | $empty

    grp_1222 ::= INDEX | INDEXES | KEYS

    grp_1223 ::= FROM | IN

    grp_1225 ::= FROM | IN

    grp_1224 ::= grp_1225 uid

    opt_1226 ::= grp_1224 | $empty

    seq_1227 ::= WHERE expression

    opt_1228 ::= seq_1227 | $empty

    grp_1230 ::= FROM | IN

    grp_1229 ::= grp_1230 uid

    opt_1231 ::= grp_1229 | $empty

    opt_1232 ::= showFilter | $empty

    seq_1233 ::= COMMA showProfileType

    list_1234 ::= $empty | list_1234 seq_1233

    seq_1235 ::= FOR QUERY decimalLiteral

    opt_1236 ::= seq_1235 | $empty

    seq_1237 ::= decimalLiteral COMMA

    opt_1238 ::= seq_1237 | $empty

    seq_1239 ::= LIMIT opt_1238 decimalLiteral

    seq_1240 ::= FOR CHANNEL STRING_LITERAL

    opt_1241 ::= seq_1240 | $empty

    seq_1243 ::= AT AT

    opt_1244 ::= seq_1243 | $empty

    grp_1245 ::= GLOBAL | SESSION | LOCAL

    grp_1242 ::= opt_1244 grp_1245

    opt_1246 ::= grp_1242 | $empty

    grp_1247 ::= GLOBAL | SESSION

    opt_1248 ::= grp_1247 | $empty

    grp_1249 ::= STATUS | VARIABLES

    opt_1250 ::= STORAGE | $empty

    opt_1251 ::= FULL | $empty

    opt_1252 ::= FULL | $empty

    seq_1253 ::= COMMA tableIndexes

    list_1254 ::= $empty | list_1254 seq_1253

    grp_1256 ::= uidList | ALL

    grp_1255 ::= PARTITION LPAREN grp_1256 RPAREN

    opt_1257 ::= grp_1255 | $empty

    grp_1258 ::= NO_WRITE_TO_BINLOG | LOCAL

    opt_1259 ::= grp_1258 | $empty

    seq_1260 ::= COMMA flushOption

    list_1261 ::= $empty | list_1261 seq_1260

    grp_1262 ::= CONNECTION | QUERY

    opt_1263 ::= grp_1262 | $empty

    seq_1264 ::= COMMA loadedTableIndexes

    list_1265 ::= $empty | list_1265 seq_1264

    grp_1267 ::= INDEX | KEY

    opt_1268 ::= grp_1267 | $empty

    grp_1266 ::= opt_1268 LPAREN uidList RPAREN

    opt_1269 ::= grp_1266 | $empty

    grp_1271 ::= BINARY | ENGINE | ERROR | GENERAL | RELAY | SLOW

    opt_1272 ::= grp_1271 | $empty

    seq_1273 ::= WITH READ LOCK

    opt_1274 ::= seq_1273 | $empty

    grp_1270 ::= DES_KEY_FILE | HOSTS | opt_1272 LOGS | OPTIMIZER_COSTS | PRIVILEGES | QUERY CACHE | STATUS | USER_RESOURCES | TABLES opt_1274

    opt_1275 ::= channelOption | $empty

    grp_1276 ::= TABLE | TABLES

    opt_1277 ::= tables | $empty

    opt_1278 ::= flushTableOption | $empty

    grp_1280 ::= uidList | ALL

    grp_1279 ::= PARTITION LPAREN grp_1280 RPAREN

    opt_1281 ::= grp_1279 | $empty

    grp_1283 ::= INDEX | KEY

    opt_1284 ::= grp_1283 | $empty

    grp_1282 ::= opt_1284 LPAREN uidList RPAREN

    opt_1285 ::= grp_1282 | $empty

    seq_1286 ::= IGNORE LEAVES

    opt_1287 ::= seq_1286 | $empty

    grp_1288 ::= EXPLAIN | DESCRIBE | DESC

    grp_1289 ::= uid | STRING_LITERAL

    opt_1290 ::= grp_1289 | $empty

    grp_1291 ::= EXPLAIN | DESCRIBE | DESC

    grp_1293 ::= EXTENDED | PARTITIONS | FORMAT

    grp_1294 ::= TRADITIONAL | JSON

    grp_1292 ::= grp_1293 EQ grp_1294

    opt_1295 ::= grp_1292 | $empty

    opt_1297 ::= VALUE | $empty

    seq_1298 ::= SQLSTATE opt_1297 stringLiteral

    grp_1296 ::= seq_1298 | ID | REVERSE_QUOTE_ID

    seq_1299 ::= COMMA signalConditionInformation

    list_1300 ::= $empty | list_1300 seq_1299

    seq_1301 ::= SET signalConditionInformation list_1300

    opt_1302 ::= seq_1301 | $empty

    opt_1304 ::= VALUE | $empty

    seq_1305 ::= SQLSTATE opt_1304 stringLiteral

    grp_1303 ::= seq_1305 | ID | REVERSE_QUOTE_ID

    opt_1306 ::= grp_1303 | $empty

    seq_1307 ::= COMMA signalConditionInformation

    list_1308 ::= $empty | list_1308 seq_1307

    seq_1309 ::= SET signalConditionInformation list_1308

    opt_1310 ::= seq_1309 | $empty

    grp_1311 ::= CLASS_ORIGIN | SUBCLASS_ORIGIN | MESSAGE_TEXT | MYSQL_ERRNO | CONSTRAINT_CATALOG | CONSTRAINT_SCHEMA | CONSTRAINT_NAME | CATALOG_NAME | SCHEMA_NAME | TABLE_NAME | COLUMN_NAME | CURSOR_NAME

    grp_1312 ::= stringLiteral | DECIMAL_LITERAL | mysqlVariable | simpleId

    opt_1313 ::= RECURSIVE | $empty

    seq_1314 ::= COMMA commonTableExpressions

    list_1315 ::= $empty | list_1315 seq_1314

    opt_1316 ::= orderByClause | $empty

    opt_1317 ::= limitClause | $empty

    grp_1318 ::= CURRENT | STACKED

    opt_1319 ::= grp_1318 | $empty

    grp_1322 ::= NUMBER | ROW_COUNT

    grp_1324 ::= NUMBER | ROW_COUNT

    grp_1323 ::= COMMA variableClause EQ grp_1324

    list_1325 ::= $empty | list_1325 grp_1323

    grp_1321 ::= variableClause EQ grp_1322 list_1325

    grp_1327 ::= decimalLiteral | variableClause

    seq_1328 ::= COMMA variableClause EQ diagnosticsConditionInformationName

    list_1329 ::= $empty | list_1329 seq_1328

    grp_1326 ::= CONDITION grp_1327 variableClause EQ diagnosticsConditionInformationName list_1329

    grp_1320 ::= grp_1321 | grp_1326

    grp_1330 ::= selectStatement | deleteStatement | insertStatement | replaceStatement | updateStatement

    grp_1331 ::= DOT_ID | DOT uid

    opt_1332 ::= grp_1331 | $empty

    opt_1333 ::= dottedId | $empty

    seq_1334 ::= dottedId opt_1333

    opt_1335 ::= seq_1334 | $empty

    opt_1336 ::= dottedId | $empty

    grp_1338 ::= uid | STRING_LITERAL

    seq_1339 ::= LPAREN decimalLiteral RPAREN

    opt_1340 ::= seq_1339 | $empty

    grp_1337 ::= grp_1338 opt_1340 | expression

    grp_1341 ::= ASC | DESC

    opt_1342 ::= grp_1341 | $empty

    grp_1343 ::= LOCAL_ID | HOST_IP_ADDRESS | AT

    seq_1344 ::= COLON decimalLiteral MINUS decimalLiteral

    list_1345 ::= seq_1344 | list_1345 seq_1344

    seq_1346 ::= COMMA decimalLiteral

    opt_1347 ::= seq_1346 | $empty

    seq_1348 ::= COMMA xuidStringId opt_1347

    opt_1349 ::= seq_1348 | $empty

    list_1350 ::= HEXADECIMAL_LITERAL | list_1350 HEXADECIMAL_LITERAL

    opt_1352 ::= STRING_CHARSET_NAME | $empty

    grp_1351 ::= opt_1352 STRING_LITERAL | START_NATIONAL_STRING_LITERAL

    list_1353 ::= STRING_LITERAL | list_1353 STRING_LITERAL

    opt_1355 ::= STRING_CHARSET_NAME | $empty

    grp_1354 ::= opt_1355 STRING_LITERAL | START_NATIONAL_STRING_LITERAL

    seq_1356 ::= COLLATE collationName

    opt_1357 ::= seq_1356 | $empty

    opt_1358 ::= STRING_CHARSET_NAME | $empty

    opt_1359 ::= NOT | $empty

    grp_1360 ::= NULL_LITERAL | NULL_SPEC_LITERAL

    opt_1361 ::= NOT | $empty

    grp_1362 ::= NULL_LITERAL | NULL_SPEC_LITERAL

    grp_1363 ::= CHAR | CHARACTER | VARCHAR | TINYTEXT | TEXT | MEDIUMTEXT | LONGTEXT | NCHAR | NVARCHAR | LONG

    opt_1364 ::= VARYING | $empty

    opt_1365 ::= lengthOneDimension | $empty

    opt_1366 ::= BINARY | $empty

    seq_1367 ::= charSet charsetName

    opt_1368 ::= seq_1367 | $empty

    grp_1369 ::= COLLATE collationName | BINARY

    opt_1370 ::= grp_1369 | $empty

    grp_1371 ::= CHAR | CHARACTER

    opt_1372 ::= lengthOneDimension | $empty

    opt_1373 ::= BINARY | $empty

    grp_1374 ::= VARCHAR | CHARACTER | CHAR

    opt_1375 ::= lengthOneDimension | $empty

    opt_1376 ::= BINARY | $empty

    opt_1377 ::= lengthOneDimension | $empty

    opt_1378 ::= BINARY | $empty

    grp_1379 ::= TINYINT | SMALLINT | MEDIUMINT | INT | INTEGER | BIGINT | MIDDLEINT | INT1 | INT2 | INT3 | INT4 | INT8

    opt_1380 ::= lengthOneDimension | $empty

    grp_1381 ::= SIGNED | UNSIGNED | ZEROFILL

    list_1382 ::= $empty | list_1382 grp_1381

    opt_1383 ::= lengthTwoDimension | $empty

    grp_1384 ::= SIGNED | UNSIGNED | ZEROFILL

    list_1385 ::= $empty | list_1385 grp_1384

    opt_1386 ::= PRECISION | $empty

    opt_1387 ::= lengthTwoDimension | $empty

    grp_1388 ::= SIGNED | UNSIGNED | ZEROFILL

    list_1389 ::= $empty | list_1389 grp_1388

    grp_1390 ::= DECIMAL | DEC | FIXED | NUMERIC | FLOAT | FLOAT4 | FLOAT8

    opt_1391 ::= lengthTwoOptionalDimension | $empty

    grp_1392 ::= SIGNED | UNSIGNED | ZEROFILL

    list_1393 ::= $empty | list_1393 grp_1392

    grp_1394 ::= DATE | TINYBLOB | MEDIUMBLOB | LONGBLOB | BOOL | BOOLEAN | SERIAL

    grp_1395 ::= BIT | TIME | TIMESTAMP | DATETIME | BINARY | VARBINARY | BLOB | YEAR | VECTOR

    opt_1396 ::= lengthOneDimension | $empty

    grp_1397 ::= ENUM | SET

    opt_1398 ::= BINARY | $empty

    seq_1399 ::= charSet charsetName

    opt_1400 ::= seq_1399 | $empty

    grp_1401 ::= GEOMETRYCOLLECTION | GEOMCOLLECTION | LINESTRING | MULTILINESTRING | MULTIPOINT | MULTIPOLYGON | POINT | POLYGON | JSON | GEOMETRY

    seq_1402 ::= SRID decimalLiteral

    opt_1403 ::= seq_1402 | $empty

    opt_1404 ::= VARCHAR | $empty

    opt_1405 ::= BINARY | $empty

    seq_1406 ::= charSet charsetName

    opt_1407 ::= seq_1406 | $empty

    seq_1408 ::= COLLATE collationName

    opt_1409 ::= seq_1408 | $empty

    seq_1410 ::= COMMA collectionOption

    list_1411 ::= $empty | list_1411 seq_1410

    grp_1413 ::= BINARY | NCHAR | FLOAT

    opt_1414 ::= lengthOneDimension | $empty

    opt_1415 ::= lengthOneDimension | $empty

    seq_1416 ::= charSet charsetName

    opt_1417 ::= seq_1416 | $empty

    grp_1418 ::= DATE | DATETIME | TIME | YEAR | JSON | INT | INTEGER | DOUBLE

    grp_1419 ::= DECIMAL | DEC

    opt_1420 ::= lengthTwoOptionalDimension | $empty

    grp_1421 ::= SIGNED | UNSIGNED

    grp_1422 ::= INTEGER | INT

    opt_1423 ::= grp_1422 | $empty

    grp_1412 ::= grp_1413 opt_1414 | CHAR opt_1415 opt_1417 | grp_1418 | grp_1419 opt_1420 | grp_1421 opt_1423

    opt_1424 ::= ARRAY | $empty

    seq_1425 ::= COMMA decimalLiteral

    opt_1426 ::= seq_1425 | $empty

    seq_1427 ::= COMMA uid

    list_1428 ::= $empty | list_1428 seq_1427

    seq_1429 ::= COMMA fullColumnName

    list_1430 ::= $empty | list_1430 seq_1429

    seq_1431 ::= COMMA tableName

    list_1432 ::= $empty | list_1432 seq_1431

    seq_1433 ::= COMMA indexColumnName

    list_1434 ::= $empty | list_1434 seq_1433

    seq_1435 ::= COMMA expression

    list_1436 ::= $empty | list_1436 seq_1435

    seq_1437 ::= COMMA expressionOrDefault

    list_1438 ::= $empty | list_1438 seq_1437

    seq_1439 ::= COMMA constant

    list_1440 ::= $empty | list_1440 seq_1439

    seq_1441 ::= COMMA STRING_LITERAL

    list_1442 ::= $empty | list_1442 seq_1441

    seq_1443 ::= COMMA LOCAL_ID

    list_1444 ::= $empty | list_1444 seq_1443

    opt_1445 ::= unaryOperator | $empty

    seq_1446 ::= ON UPDATE currentTimestamp

    opt_1447 ::= seq_1446 | $empty

    grp_1449 ::= CURRENT_TIMESTAMP | LOCALTIME | LOCALTIMESTAMP

    opt_1450 ::= decimalLiteral | $empty

    seq_1451 ::= LPAREN opt_1450 RPAREN

    opt_1452 ::= seq_1451 | $empty

    opt_1453 ::= decimalLiteral | $empty

    grp_1448 ::= grp_1449 opt_1452 | NOW LPAREN opt_1453 RPAREN

    opt_1454 ::= functionArgs | $empty

    opt_1455 ::= functionArgs | $empty

    grp_1456 ::= CURRENT_DATE | CURRENT_TIME | CURRENT_TIMESTAMP | LOCALTIME | UTC_TIMESTAMP | SCHEMA

    seq_1457 ::= LPAREN RPAREN

    opt_1458 ::= seq_1457 | $empty

    list_1459 ::= caseFuncAlternative | list_1459 caseFuncAlternative

    seq_1460 ::= ELSE functionArg

    opt_1461 ::= seq_1460 | $empty

    list_1462 ::= caseFuncAlternative | list_1462 caseFuncAlternative

    seq_1463 ::= ELSE functionArg

    opt_1464 ::= seq_1463 | $empty

    seq_1465 ::= USING charsetName

    opt_1466 ::= seq_1465 | $empty

    grp_1467 ::= stringLiteral | expression

    grp_1468 ::= stringLiteral | expression

    grp_1469 ::= SUBSTR | SUBSTRING

    grp_1470 ::= stringLiteral | expression

    grp_1471 ::= decimalLiteral | expression

    grp_1473 ::= decimalLiteral | expression

    grp_1472 ::= FOR grp_1473

    opt_1474 ::= grp_1472 | $empty

    grp_1475 ::= BOTH | LEADING | TRAILING

    grp_1476 ::= stringLiteral | expression

    opt_1477 ::= grp_1476 | $empty

    grp_1478 ::= stringLiteral | expression

    grp_1479 ::= stringLiteral | expression

    grp_1480 ::= stringLiteral | expression

    grp_1481 ::= stringLiteral | expression

    grp_1483 ::= CHAR | BINARY

    grp_1482 ::= AS grp_1483 LPAREN decimalLiteral RPAREN

    opt_1484 ::= grp_1482 | $empty

    opt_1485 ::= levelsInWeightString | $empty

    grp_1486 ::= stringLiteral | expression

    grp_1487 ::= DATE | TIME | DATETIME

    seq_1488 ::= RETURNING convertedDataType

    opt_1489 ::= seq_1488 | $empty

    opt_1490 ::= jsonOnEmpty | $empty

    opt_1491 ::= jsonOnError | $empty

    seq_1492 ::= COMMA levelInWeightListElement

    list_1493 ::= $empty | list_1493 seq_1492

    grp_1494 ::= ASC | DESC | REVERSE

    opt_1495 ::= grp_1494 | $empty

    grp_1496 ::= AVG | MAX | MIN | SUM

    grp_1497 ::= ALL | DISTINCT

    opt_1498 ::= grp_1497 | $empty

    opt_1499 ::= overClause | $empty

    opt_1501 ::= ALL | $empty

    grp_1500 ::= STAR | opt_1501 functionArg | DISTINCT functionArgs

    opt_1502 ::= overClause | $empty

    grp_1503 ::= BIT_AND | BIT_OR | BIT_XOR | STD | STDDEV | STDDEV_POP | STDDEV_SAMP | VAR_POP | VAR_SAMP | VARIANCE

    opt_1504 ::= ALL | $empty

    opt_1505 ::= overClause | $empty

    opt_1506 ::= DISTINCT | $empty

    seq_1507 ::= COMMA orderByExpression

    list_1508 ::= $empty | list_1508 seq_1507

    seq_1509 ::= ORDER BY orderByExpression list_1508

    opt_1510 ::= seq_1509 | $empty

    seq_1511 ::= SEPARATOR STRING_LITERAL

    opt_1512 ::= seq_1511 | $empty

    grp_1513 ::= LAG | LEAD

    seq_1514 ::= COMMA decimalLiteral

    opt_1515 ::= seq_1514 | $empty

    seq_1516 ::= COMMA decimalLiteral

    opt_1517 ::= seq_1516 | $empty

    grp_1518 ::= FIRST_VALUE | LAST_VALUE

    grp_1519 ::= CUME_DIST | DENSE_RANK | PERCENT_RANK | RANK | ROW_NUMBER

    opt_1521 ::= windowSpec | $empty

    grp_1520 ::= LPAREN opt_1521 RPAREN | windowName

    opt_1522 ::= windowName | $empty

    opt_1523 ::= partitionClause | $empty

    opt_1524 ::= orderByClause | $empty

    opt_1525 ::= frameClause | $empty

    grp_1526 ::= PRECEDING | FOLLOWING

    grp_1527 ::= PRECEDING | FOLLOWING

    seq_1528 ::= COMMA expression

    list_1529 ::= $empty | list_1529 seq_1528

    grp_1530 ::= PASSWORD | OLD_PASSWORD

    grp_1531 ::= constant | fullColumnName | functionCall | expression

    grp_1533 ::= constant | fullColumnName | functionCall | expression

    grp_1532 ::= COMMA grp_1533

    list_1534 ::= $empty | list_1534 grp_1532

    grp_1535 ::= NOT | BANG

    opt_1536 ::= NOT | $empty

    grp_1537 ::= TRUE | FALSE | UNKNOWN

    opt_1538 ::= NOT | $empty

    grp_1539 ::= selectStatement | expressions

    grp_1540 ::= ALL | ANY | SOME

    opt_1541 ::= NOT | $empty

    opt_1542 ::= NOT | $empty

    seq_1543 ::= ESCAPE STRING_LITERAL

    opt_1544 ::= seq_1543 | $empty

    opt_1545 ::= NOT | $empty

    grp_1546 ::= REGEXP | RLIKE

    seq_1547 ::= COMMA expression

    list_1548 ::= $empty | list_1548 seq_1547

    seq_1549 ::= COMMA expression

    list_1550 ::= seq_1549 | list_1550 seq_1549

%End
