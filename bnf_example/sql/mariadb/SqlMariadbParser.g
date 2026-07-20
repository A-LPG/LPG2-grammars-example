-- AUTO-GENERATED from antlr/grammars-v4 sql/mariadb by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=SqlMariadbParser
%options package=lpg.grammars.sql.mariadb
%options template=dtParserTemplateF.gi
%options import_terminals=SqlMariadbLexer.gi
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
    HarnessStart ::= root /.
                    setResult("ok");
                ./

    root ::= opt_1 opt_3

    sqlStatements ::= list_8 grp_9

    sqlStatement ::= opt_14 grp_15

    setStatementFor ::= SET STATEMENT simpleId EQUAL_SYMBOL constant list_17 FOR

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
           | createSequence
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
           | alterSequence
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
           | dropSequence
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
           | withClause dmlStatement

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
           | explainStatement

    utilityStatement ::= simpleDescribeStatement
           | fullDescribeStatement
           | helpStatement
           | useStatement
           | signalStatement
           | resignalStatement
           | diagnosticsStatement

    createDatabase ::= CREATE grp_18 opt_19 uid list_20

    createEvent ::= CREATE opt_21 EVENT opt_22 fullId ON SCHEDULE scheduleExpression opt_25 opt_26 opt_28 DO routineBody

    createIndex ::= CREATE opt_29 opt_31 opt_33 INDEX opt_34 uid opt_35 ON tableName indexColumnNames opt_36 list_37 list_43

    createLogfileGroup ::= CREATE LOGFILE GROUP uid ADD UNDOFILE STRING_LITERAL opt_46 opt_49 opt_52 opt_55 opt_56 opt_59 ENGINE opt_60 engineName

    createProcedure ::= CREATE opt_61 opt_62 PROCEDURE fullId LPAREN opt_63 list_65 RPAREN list_66 routineBody

    createFunction ::= CREATE opt_67 opt_68 opt_69 FUNCTION opt_70 fullId LPAREN opt_71 list_73 RPAREN RETURNS dataType list_74 grp_75

    createRole ::= CREATE ROLE opt_76 roleName list_78

    createServer ::= CREATE SERVER uid FOREIGN DATA WRAPPER grp_79 OPTIONS LPAREN serverOption list_81 RPAREN

    createTable ::= CREATE opt_82 opt_83 TABLE opt_84 tableName grp_85
           | CREATE opt_86 opt_87 TABLE opt_88 tableName opt_89 opt_94 opt_95 opt_97 opt_98 selectStatement
           | CREATE opt_99 opt_100 TABLE opt_101 tableName createDefinitions opt_106 opt_107

    createTablespaceInnodb ::= CREATE TABLESPACE uid ADD DATAFILE STRING_LITERAL opt_109 opt_112

    createTablespaceNdb ::= CREATE TABLESPACE uid ADD DATAFILE STRING_LITERAL USE LOGFILE GROUP uid opt_115 opt_118 opt_121 opt_124 opt_127 opt_128 opt_131 ENGINE opt_132 engineName

    createTrigger ::= CREATE opt_133 opt_134 TRIGGER fullId grp_135 grp_136 ON tableName FOR EACH ROW opt_139 routineBody

    withClause ::= WITH opt_140 commonTableExpressions

    commonTableExpressions ::= cteName opt_144 AS LPAREN dmlStatement RPAREN opt_146

    cteName ::= uid

    cteColumnName ::= uid

    createView ::= CREATE opt_147 opt_150 opt_151 opt_154 VIEW fullId opt_156 AS grp_157

    createSequence ::= CREATE opt_164 opt_165 SEQUENCE opt_166 fullId list_168

    sequenceSpec ::= INCREMENT opt_170 decimalLiteral
           | MINVALUE opt_171 decimalLiteral
           | NO MINVALUE
           | NOMINVALUE
           | MAXVALUE opt_172 decimalLiteral
           | NO MAXVALUE
           | NOMAXVALUE
           | START opt_174 decimalLiteral
           | CACHE opt_175 decimalLiteral
           | NOCACHE
           | CYCLE
           | NOCYCLE
           | RESTART opt_177 decimalLiteral

    createDatabaseOption ::= opt_178 charSet opt_179 grp_180
           | opt_181 COLLATE opt_182 collationName
           | opt_183 ENCRYPTION opt_184 STRING_LITERAL
           | READ ONLY opt_185 grp_186

    charSet ::= CHARACTER SET
           | CHARSET
           | CHAR SET

    currentUserExpression ::= CURRENT_USER opt_188

    ownerStatement ::= DEFINER EQ grp_189

    scheduleExpression ::= AT timestampValue list_190
           | EVERY grp_191 intervalType opt_196 opt_201

    timestampValue ::= CURRENT_TIMESTAMP
           | stringLiteral
           | decimalLiteral
           | expression

    intervalExpr ::= PLUS INTERVAL grp_202 intervalType

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

    indexType ::= USING grp_203

    indexOption ::= KEY_BLOCK_SIZE opt_204 fileSizeLiteral
           | indexType
           | WITH PARSER uid
           | COMMENT STRING_LITERAL
           | grp_205
           | ENGINE_ATTRIBUTE opt_206 STRING_LITERAL
           | SECONDARY_ENGINE_ATTRIBUTE opt_207 STRING_LITERAL
           | CLUSTERING EQUAL_SYMBOL grp_208
           | grp_209

    procedureParameter ::= opt_211 uid dataType

    functionParameter ::= uid dataType

    routineOption ::= COMMENT STRING_LITERAL
           | LANGUAGE SQL
           | opt_212 DETERMINISTIC
           | grp_213
           | SQL SECURITY grp_214

    serverOption ::= HOST STRING_LITERAL
           | DATABASE STRING_LITERAL
           | USER STRING_LITERAL
           | PASSWORD STRING_LITERAL
           | SOCKET STRING_LITERAL
           | OWNER STRING_LITERAL
           | PORT decimalLiteral

    createDefinitions ::= LPAREN createDefinition list_216 RPAREN

    createDefinition ::= uid columnDefinition
           | tableConstraint
           | indexColumnDefinition
           | periodDefinition

    columnDefinition ::= dataType list_217

    columnConstraint ::= nullNotnull
           | DEFAULT defaultValue
           | VISIBLE
           | INVISIBLE
           | grp_218
           | opt_219 KEY
           | UNIQUE opt_220
           | COMMENT STRING_LITERAL
           | COLUMN_FORMAT grp_221
           | STORAGE grp_222
           | referenceDefinition
           | COLLATE collationName
           | opt_224 AS grp_225
           | SERIAL DEFAULT VALUE
           | opt_231 CHECK LPAREN expression RPAREN

    tableConstraint ::= opt_234 PRIMARY KEY opt_235 opt_236 indexColumnNames list_237
           | opt_240 UNIQUE opt_242 opt_243 opt_244 indexColumnNames list_245
           | opt_248 FOREIGN KEY opt_249 indexColumnNames referenceDefinition
           | opt_252 CHECK LPAREN expression RPAREN

    referenceDefinition ::= REFERENCES tableName opt_253 opt_256 opt_257

    referenceAction ::= ON DELETE referenceControlType opt_259
           | ON UPDATE referenceControlType opt_261

    referenceControlType ::= RESTRICT
           | CASCADE
           | SET NULL_LITERAL
           | NO ACTION

    indexColumnDefinition ::= grp_262 opt_263 opt_264 indexColumnNames list_265
           | grp_266 opt_268 opt_269 indexColumnNames list_270

    periodDefinition ::= PERIOD FOR grp_271 LPAREN uid COMMA uid RPAREN

    tableOption ::= ENGINE opt_272 opt_273
           | ENGINE_ATTRIBUTE opt_274 STRING_LITERAL
           | AUTOEXTEND_SIZE opt_275 decimalLiteral
           | AUTO_INCREMENT opt_276 decimalLiteral
           | AVG_ROW_LENGTH opt_277 decimalLiteral
           | opt_278 charSet opt_279 grp_280
           | grp_281 opt_282 booleanValue
           | opt_283 COLLATE opt_284 collationName
           | COMMENT opt_285 STRING_LITERAL
           | COMPRESSION opt_286 grp_287
           | CONNECTION opt_288 STRING_LITERAL
           | grp_289 DIRECTORY opt_290 STRING_LITERAL
           | DELAY_KEY_WRITE opt_291 booleanValue
           | ENCRYPTION opt_292 STRING_LITERAL
           | encryptedLiteral opt_293 grp_294
           | grp_295 opt_296 booleanValue
           | grp_297 opt_298 decimalLiteral
           | ENCRYPTION_KEY_ID opt_299 decimalLiteral
           | INDEX DIRECTORY opt_300 STRING_LITERAL
           | INSERT_METHOD opt_301 grp_302
           | KEY_BLOCK_SIZE opt_303 fileSizeLiteral
           | MAX_ROWS opt_304 decimalLiteral
           | MIN_ROWS opt_305 decimalLiteral
           | PACK_KEYS opt_306 grp_307
           | PASSWORD opt_308 STRING_LITERAL
           | ROW_FORMAT opt_309 grp_310
           | START TRANSACTION
           | SECONDARY_ENGINE_ATTRIBUTE opt_311 STRING_LITERAL
           | STATS_AUTO_RECALC opt_312 grp_313
           | STATS_PERSISTENT opt_314 grp_315
           | STATS_SAMPLE_PAGES opt_316 grp_317
           | TABLESPACE uid opt_318
           | TABLE_TYPE EQ tableType
           | tablespaceStorage
           | TRANSACTIONAL opt_319 grp_320
           | UNION opt_321 LPAREN tables RPAREN
           | WITH SYSTEM VERSIONING

    tableType ::= MYSQL
           | ODBC

    tablespaceStorage ::= STORAGE grp_322

    partitionDefinitions ::= PARTITION BY partitionFunctionDefinition opt_324 opt_328 opt_332

    partitionFunctionDefinition ::= opt_333 HASH LPAREN expression RPAREN
           | opt_334 KEY opt_337 LPAREN uidList RPAREN
           | RANGE grp_338
           | LIST grp_339
           | SYSTEM_TIME grp_340 opt_343 opt_344 opt_345

    partitionSystemVersionDefinitions ::= LPAREN partitionSystemVersionDefinition list_347 RPAREN

    partitionSystemVersionDefinition ::= PARTITION uid grp_348

    subpartitionFunctionDefinition ::= opt_349 HASH LPAREN expression RPAREN
           | opt_350 KEY opt_353 LPAREN uidList RPAREN

    partitionDefinition ::= PARTITION uid VALUES LESS THAN LPAREN partitionDefinerAtom list_355 RPAREN list_356 opt_360
           | PARTITION uid VALUES LESS THAN partitionDefinerAtom list_361 opt_365
           | PARTITION uid VALUES IN LPAREN partitionDefinerAtom list_367 RPAREN list_368 opt_372
           | PARTITION uid VALUES IN LPAREN partitionDefinerVector list_374 RPAREN list_375 opt_379
           | PARTITION uid list_380 opt_384

    partitionDefinerAtom ::= constant
           | expression
           | MAXVALUE

    partitionDefinerVector ::= LPAREN partitionDefinerAtom list_386 RPAREN

    subpartitionDefinition ::= SUBPARTITION uid list_387

    partitionOption ::= opt_388 opt_389 ENGINE opt_390 engineName
           | COMMENT opt_391 STRING_LITERAL
           | DATA DIRECTORY opt_392 STRING_LITERAL
           | INDEX DIRECTORY opt_393 STRING_LITERAL
           | MAX_ROWS opt_394 decimalLiteral
           | MIN_ROWS opt_395 decimalLiteral
           | TABLESPACE opt_396 uid
           | NODEGROUP opt_397 uid

    alterDatabase ::= ALTER grp_398 opt_399 list_400
           | ALTER grp_401 uid UPGRADE DATA DIRECTORY NAME

    alterEvent ::= ALTER opt_402 EVENT fullId opt_404 opt_407 opt_409 opt_410 opt_412 opt_414

    alterFunction ::= ALTER FUNCTION fullId list_415

    alterInstance ::= ALTER INSTANCE ROTATE INNODB MASTER KEY

    alterLogfileGroup ::= ALTER LOGFILE GROUP uid ADD UNDOFILE STRING_LITERAL opt_418 opt_419 ENGINE opt_420 engineName

    alterProcedure ::= ALTER PROCEDURE fullId list_421

    alterServer ::= ALTER SERVER uid OPTIONS LPAREN serverOption list_423 RPAREN

    alterTable ::= ALTER opt_425 opt_426 TABLE opt_427 tableName opt_428 opt_432 opt_433

    alterTablespace ::= ALTER TABLESPACE uid grp_434 DATAFILE STRING_LITERAL opt_436 opt_437 ENGINE opt_438 engineName

    alterView ::= ALTER opt_441 opt_442 opt_445 VIEW fullId opt_447 AS selectStatement opt_451

    alterSequence ::= ALTER SEQUENCE opt_452 fullId list_453

    alterSpecification ::= tableOption list_456
           | ADD opt_457 opt_458 uid columnDefinition opt_460
           | ADD opt_461 opt_462 LPAREN uid columnDefinition list_464 RPAREN
           | ADD grp_465 opt_466 opt_467 opt_468 indexColumnNames list_469
           | ADD opt_472 PRIMARY KEY opt_473 opt_474 indexColumnNames list_475
           | ADD opt_478 UNIQUE opt_480 opt_481 opt_482 opt_483 indexColumnNames list_484
           | ADD grp_485 opt_487 opt_488 indexColumnNames list_489
           | ADD opt_492 FOREIGN KEY opt_493 opt_494 indexColumnNames referenceDefinition
           | ADD opt_497 CHECK LPAREN expression RPAREN
           | ALGORITHM opt_498 grp_499
           | ALTER opt_500 uid grp_501
           | CHANGE opt_502 opt_503 uid uid columnDefinition opt_505
           | RENAME COLUMN opt_506 uid TO uid
           | LOCK opt_507 grp_508
           | MODIFY opt_509 opt_510 uid columnDefinition opt_512
           | DROP opt_513 opt_514 uid opt_515
           | DROP grp_516 opt_517 uid
           | DROP PRIMARY KEY
           | ADD PRIMARY KEY opt_518 LPAREN uid RPAREN
           | DROP grp_519 opt_520 uid
           | RENAME grp_521 uid TO uid
           | ALTER INDEX uid grp_522
           | ALTER grp_523 opt_524 uid opt_525 IGNORED
           | DROP FOREIGN KEY opt_526 uid opt_527
           | DISABLE KEYS
           | ENABLE KEYS
           | RENAME opt_529 grp_530
           | ORDER BY uidList
           | CONVERT TO CHARACTER SET charsetName opt_532
           | opt_533 CHARACTER SET EQ charsetName opt_535
           | DISCARD TABLESPACE
           | IMPORT TABLESPACE
           | FORCE
           | grp_536 VALIDATION
           | ADD opt_537 opt_538 LPAREN createDefinition list_540 RPAREN
           | alterPartitionSpecification

    alterPartitionSpecification ::= ADD PARTITION opt_541 LPAREN partitionDefinition list_543 RPAREN
           | DROP PARTITION opt_544 uidList
           | DISCARD PARTITION grp_545 TABLESPACE
           | IMPORT PARTITION grp_546 TABLESPACE
           | TRUNCATE PARTITION grp_547
           | COALESCE PARTITION decimalLiteral
           | REORGANIZE PARTITION uidList INTO LPAREN partitionDefinition list_549 RPAREN
           | EXCHANGE PARTITION uid WITH TABLE tableName opt_552
           | ANALYZE PARTITION grp_553
           | CHECK PARTITION grp_554
           | OPTIMIZE PARTITION grp_555
           | REBUILD PARTITION grp_556
           | REPAIR PARTITION grp_557
           | REMOVE PARTITIONING
           | UPGRADE PARTITIONING

    dropDatabase ::= DROP grp_558 opt_559 uid

    dropEvent ::= DROP EVENT opt_560 fullId

    dropIndex ::= DROP INDEX opt_561 opt_563 uid ON tableName list_569 opt_570

    dropLogfileGroup ::= DROP LOGFILE GROUP uid ENGINE EQ engineName

    dropProcedure ::= DROP PROCEDURE opt_571 fullId

    dropFunction ::= DROP FUNCTION opt_572 fullId

    dropServer ::= DROP SERVER opt_573 uid

    dropTable ::= DROP opt_574 TABLE opt_575 tables opt_576 opt_578

    dropTablespace ::= DROP TABLESPACE uid opt_581

    dropTrigger ::= DROP TRIGGER opt_582 fullId

    dropView ::= DROP VIEW opt_583 fullId list_585 opt_587

    dropRole ::= DROP ROLE opt_588 roleName list_590

    setRole ::= SET DEFAULT ROLE grp_591 TO grp_594 list_597
           | SET ROLE roleOption

    dropSequence ::= DROP opt_598 SEQUENCE opt_599 opt_600 fullId list_602

    renameTable ::= RENAME TABLE opt_603 renameTableClause list_605

    renameTableClause ::= tableName opt_606 TO tableName

    truncateTable ::= TRUNCATE opt_607 tableName opt_608

    callStatement ::= CALL fullId opt_612

    deleteStatement ::= singleDeleteStatement
           | multipleDeleteStatement

    doStatement ::= DO expressions

    handlerStatement ::= handlerOpenStatement
           | handlerReadIndexStatement
           | handlerReadStatement
           | handlerCloseStatement

    insertStatement ::= INSERT opt_614 opt_615 opt_616 tableName opt_619 grp_620 opt_630

    loadDataStatement ::= LOAD DATA opt_632 opt_633 INFILE STRING_LITERAL opt_635 INTO TABLE tableName opt_637 opt_639 opt_643 opt_646 opt_649 opt_653 opt_657

    loadXmlStatement ::= LOAD XML opt_659 opt_660 INFILE STRING_LITERAL opt_662 INTO TABLE tableName opt_664 opt_666 opt_669 opt_673 opt_677

    replaceStatement ::= REPLACE opt_679 opt_680 tableName opt_682 grp_683

    selectStatement ::= querySpecification opt_689
           | queryExpression opt_690

    updateStatement ::= singleUpdateStatement
           | multipleUpdateStatement

    valuesStatement ::= VALUES LPAREN opt_710 RPAREN list_713

    insertStatementValue ::= selectStatement
           | grp_714 LPAREN opt_715 RPAREN list_718

    updatedElement ::= fullColumnName EQ grp_719

    assignmentField ::= uid
           | LOCAL_ID

    lockClause ::= grp_720 opt_721

    singleDeleteStatement ::= DELETE opt_722 opt_723 opt_724 FROM tableName opt_726 opt_728 opt_729 opt_731

    multipleDeleteStatement ::= DELETE opt_732 opt_733 opt_734 grp_735 opt_749

    handlerOpenStatement ::= HANDLER tableName OPEN opt_752

    handlerReadIndexStatement ::= HANDLER tableName READ uid grp_753 opt_756 opt_758

    handlerReadStatement ::= HANDLER tableName READ grp_759 opt_761 opt_763

    handlerCloseStatement ::= HANDLER tableName CLOSE

    singleUpdateStatement ::= UPDATE opt_764 opt_765 tableName opt_768 SET updatedElement list_770 opt_772 opt_773 opt_774

    multipleUpdateStatement ::= UPDATE opt_775 opt_776 tableSources SET updatedElement list_778 opt_780

    orderByClause ::= ORDER BY orderByExpression list_782

    orderByExpression ::= expression opt_784

    tableSources ::= tableSource list_786

    tableSource ::= tableSourceItem list_787
           | LPAREN tableSourceItem list_788 RPAREN
           | jsonTable

    tableSourceItem ::= tableName opt_790 opt_793 opt_797
           | grp_798 opt_799 uid
           | LPAREN tableSources RPAREN

    indexHint ::= grp_800 grp_801 opt_803 LPAREN uidList RPAREN

    indexHintType ::= JOIN
           | ORDER BY
           | GROUP BY

    joinPart ::= opt_805 JOIN opt_806 tableSourceItem opt_808
           | STRAIGHT_JOIN tableSourceItem opt_810
           | grp_811 opt_812 JOIN opt_813 tableSourceItem grp_814
           | NATURAL opt_818 JOIN tableSourceItem

    queryExpression ::= LPAREN querySpecification RPAREN
           | LPAREN queryExpression RPAREN

    queryExpressionNointo ::= LPAREN querySpecificationNointo RPAREN
           | LPAREN queryExpressionNointo RPAREN

    querySpecification ::= SELECT list_819 selectElements opt_820 opt_821 opt_822 opt_823 opt_824 opt_825 opt_826
           | SELECT list_827 selectElements opt_828 opt_829 opt_830 opt_831 opt_832 opt_833 opt_834

    querySpecificationNointo ::= SELECT list_835 selectElements opt_836 opt_837 opt_838 opt_839 opt_840 opt_841

    unionParenthesis ::= UNION opt_843 queryExpressionNointo

    unionStatement ::= UNION opt_845 grp_846

    lateralStatement ::= LATERAL grp_847

    jsonTable ::= JSON_TABLE LPAREN STRING_LITERAL COMMA STRING_LITERAL COLUMNS LPAREN jsonColumnList RPAREN RPAREN opt_855

    jsonColumnList ::= jsonColumn list_857

    jsonColumn ::= fullColumnName grp_858
           | NESTED opt_862 STRING_LITERAL COLUMNS LPAREN jsonColumnList RPAREN

    jsonOnEmpty ::= grp_863 ON EMPTY

    jsonOnError ::= grp_864 ON ERROR

    selectSpec ::= grp_865
           | HIGH_PRIORITY
           | STRAIGHT_JOIN
           | SQL_SMALL_RESULT
           | SQL_BIG_RESULT
           | SQL_BUFFER_RESULT
           | grp_866
           | SQL_CALC_FOUND_ROWS

    selectElements ::= grp_867 list_869

    selectElement ::= fullId DOT STAR
           | fullColumnName opt_872
           | functionCall opt_875
           | opt_877 expression opt_880

    selectIntoExpression ::= INTO assignmentField list_882
           | INTO DUMPFILE STRING_LITERAL
           | grp_883

    selectFieldsInto ::= TERMINATED BY STRING_LITERAL
           | opt_893 ENCLOSED BY STRING_LITERAL
           | ESCAPED BY STRING_LITERAL

    selectLinesInto ::= STARTING BY STRING_LITERAL
           | TERMINATED BY STRING_LITERAL

    fromClause ::= opt_895 opt_897

    groupByClause ::= GROUP BY groupByItem list_899 opt_901

    havingClause ::= HAVING expression

    windowClause ::= WINDOW windowName AS LPAREN windowSpec RPAREN list_903

    groupByItem ::= expression opt_905

    limitClause ::= LIMIT grp_906

    limitClauseAtom ::= decimalLiteral
           | mysqlVariable
           | simpleId

    startTransaction ::= START TRANSACTION opt_912

    beginWork ::= BEGIN opt_913

    commitWork ::= COMMIT opt_914 opt_917 opt_920

    rollbackWork ::= ROLLBACK opt_921 opt_924 opt_927

    savepointStatement ::= SAVEPOINT uid

    rollbackStatement ::= ROLLBACK opt_928 TO opt_929 uid

    releaseStatement ::= RELEASE SAVEPOINT uid

    lockTables ::= LOCK grp_930 lockTableElement list_932 opt_933

    unlockTables ::= UNLOCK TABLES

    setAutocommitStatement ::= SET AUTOCOMMIT EQ grp_934

    setTransactionStatement ::= SET opt_936 TRANSACTION transactionOption list_938

    transactionMode ::= WITH CONSISTENT SNAPSHOT
           | READ WRITE
           | READ ONLY

    lockTableElement ::= tableName opt_941 lockAction

    lockAction ::= READ opt_942
           | opt_943 WRITE

    transactionOption ::= ISOLATION LEVEL transactionLevel
           | READ WRITE
           | READ ONLY

    transactionLevel ::= REPEATABLE READ
           | READ COMMITTED
           | READ UNCOMMITTED
           | SERIALIZABLE

    changeMaster ::= CHANGE MASTER TO masterOption list_945 opt_946

    changeReplicationFilter ::= CHANGE REPLICATION FILTER replicationFilter list_948

    purgeBinaryLogs ::= PURGE grp_949 LOGS grp_950

    resetMaster ::= RESET MASTER

    resetSlave ::= RESET SLAVE opt_951 opt_952

    startSlave ::= START SLAVE opt_956 opt_958 list_959 opt_960

    stopSlave ::= STOP SLAVE opt_964

    startGroupReplication ::= START GROUP_REPLICATION

    stopGroupReplication ::= STOP GROUP_REPLICATION

    masterOption ::= stringMasterOption EQ STRING_LITERAL
           | decimalMasterOption EQ decimalLiteral
           | boolMasterOption EQ grp_965
           | MASTER_HEARTBEAT_PERIOD EQ REAL_LITERAL
           | IGNORE_SERVER_IDS EQ LPAREN opt_969 RPAREN

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
           | REPLICATE_REWRITE_DB EQ LPAREN tablePair list_971 RPAREN

    tablePair ::= LPAREN tableName COMMA tableName RPAREN

    threadType ::= IO_THREAD
           | SQL_THREAD

    untilOption ::= grp_972 EQ gtuidSet
           | MASTER_LOG_FILE EQ STRING_LITERAL COMMA MASTER_LOG_POS EQ decimalLiteral
           | RELAY_LOG_FILE EQ STRING_LITERAL COMMA RELAY_LOG_POS EQ decimalLiteral
           | SQL_AFTER_MTS_GAPS

    connectionOption ::= USER EQ STRING_LITERAL
           | PASSWORD EQ STRING_LITERAL
           | DEFAULT_AUTH EQ STRING_LITERAL
           | PLUGIN_DIR EQ STRING_LITERAL

    gtuidSet ::= uuidSet list_974
           | STRING_LITERAL

    xaStartTransaction ::= XA grp_975 xid opt_977

    xaEndTransaction ::= XA END xid opt_981

    xaPrepareStatement ::= XA PREPARE xid

    xaCommitWork ::= XA COMMIT xid opt_983

    xaRollbackWork ::= XA ROLLBACK xid

    xaRecoverWork ::= XA RECOVER opt_985

    prepareStatement ::= PREPARE uid FROM grp_986

    executeStatement ::= EXECUTE uid opt_988

    deallocatePrepare ::= grp_989 PREPARE uid

    routineBody ::= blockStatement
           | sqlStatement

    blockStatement ::= opt_991 BEGIN opt_1002 END opt_1003

    caseStatement ::= CASE opt_1005 list_1006 opt_1009 END CASE

    ifStatement ::= IF expression THEN list_1010 list_1011 list_1012 opt_1016 END IF

    iterateStatement ::= ITERATE uid

    leaveStatement ::= LEAVE uid

    loopStatement ::= opt_1018 LOOP list_1019 END LOOP opt_1020

    repeatStatement ::= opt_1022 REPEAT list_1023 UNTIL expression END REPEAT opt_1024

    returnStatement ::= RETURN expression

    whileStatement ::= opt_1026 WHILE expression DO list_1027 END WHILE opt_1028

    cursorStatement ::= CLOSE uid
           | FETCH opt_1031 uid INTO uidList
           | OPEN uid

    declareVariable ::= DECLARE uidList dataType opt_1033

    declareCondition ::= DECLARE uid CONDITION FOR grp_1034

    declareCursor ::= DECLARE uid CURSOR FOR selectStatement

    declareHandler ::= DECLARE grp_1036 HANDLER FOR handlerConditionValue list_1038 routineBody

    handlerConditionValue ::= decimalLiteral
           | SQLSTATE opt_1039 STRING_LITERAL
           | uid
           | SQLWARNING
           | NOT FOUND
           | SQLEXCEPTION

    procedureSqlStatement ::= grp_1040 SEMI

    caseAlternative ::= WHEN grp_1041 THEN list_1042

    elifAlternative ::= ELSEIF expression THEN list_1043

    alterUser ::= ALTER USER userSpecification list_1045
           | ALTER USER opt_1046 userAuthOption list_1048 opt_1054 opt_1057 list_1059 opt_1061

    createUser ::= CREATE USER userAuthOption list_1063
           | CREATE USER opt_1064 userAuthOption list_1066 opt_1072 opt_1075 list_1077 opt_1079

    dropUser ::= DROP USER opt_1080 userName list_1082

    grantStatement ::= GRANT privelegeClause list_1084 ON opt_1086 privilegeLevel TO userAuthOption list_1088 opt_1094 opt_1098 opt_1100
           | GRANT grp_1101 list_1104 TO grp_1105 list_1108 opt_1110

    roleOption ::= DEFAULT
           | NONE
           | ALL opt_1114
           | userName list_1116

    grantProxy ::= GRANT PROXY ON userName TO userName list_1119 opt_1121

    renameUser ::= RENAME USER renameUserClause list_1123

    revokeStatement ::= REVOKE privelegeClause list_1125 ON opt_1127 privilegeLevel FROM userName list_1129
           | REVOKE ALL opt_1130 COMMA GRANT OPTION FROM userName list_1132
           | REVOKE uid list_1134 FROM grp_1135 list_1138

    revokeProxy ::= REVOKE PROXY ON userName FROM userName list_1141

    setPasswordStatement ::= SET PASSWORD opt_1143 EQ grp_1144

    userSpecification ::= userName userPasswordOption

    userAuthOption ::= userName IDENTIFIED BY PASSWORD STRING_LITERAL
           | userName IDENTIFIED BY STRING_LITERAL opt_1146
           | userName IDENTIFIED grp_1147 authenticationRule list_1149
           | userName

    authenticationRule ::= authPlugin opt_1152
           | authPlugin grp_1153 passwordFunctionClause

    tlsOption ::= SSL
           | X509
           | CIPHER STRING_LITERAL
           | ISSUER STRING_LITERAL
           | SUBJECT STRING_LITERAL

    userResourceOption ::= MAX_QUERIES_PER_HOUR decimalLiteral
           | MAX_UPDATES_PER_HOUR decimalLiteral
           | MAX_CONNECTIONS_PER_HOUR decimalLiteral
           | MAX_USER_CONNECTIONS decimalLiteral
           | MAX_STATEMENT_TIME decimalLiteral

    userPasswordOption ::= PASSWORD EXPIRE opt_1155
           | PASSWORD HISTORY grp_1156
           | PASSWORD REUSE INTERVAL grp_1157
           | PASSWORD REQUIRE CURRENT opt_1159
           | FAILED_LOGIN_ATTEMPTS decimalLiteral
           | PASSWORD_LOCK_TIME grp_1160

    userLockOption ::= ACCOUNT grp_1161

    privelegeClause ::= privilege opt_1163

    privilege ::= ALL opt_1164
           | ALTER opt_1165
           | CREATE opt_1167
           | DELETE opt_1168
           | DROP opt_1169
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
           | REPLICATION grp_1170 opt_1171
           | SELECT
           | SHOW grp_1172
           | SHUTDOWN
           | SUPER
           | TRIGGER
           | UPDATE
           | USAGE
           | APPLICATION_PASSWORD_ADMIN
           | AUDIT_ADMIN
           | BACKUP_ADMIN
           | BINLOG_ADMIN
           | BINLOG_ENCRYPTION_ADMIN
           | CLONE_ADMIN
           | CONNECTION_ADMIN
           | ENCRYPTION_KEY_ADMIN
           | FIREWALL_ADMIN
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
           | SERVICE_CONNECTION_ADMIN
           | SESSION_VARIABLES_ADMIN
           | SET_USER_ID
           | SHOW_ROUTINE
           | SYSTEM_USER
           | SYSTEM_VARIABLES_ADMIN
           | TABLE_ENCRYPTION_ADMIN
           | VERSION_TOKEN_ADMIN
           | XA_RECOVER_ADMIN
           | BINLOG_MONITOR
           | BINLOG_REPLAY
           | FEDERATED_ADMIN
           | READ_ONLY_ADMIN
           | REPLICATION_MASTER_ADMIN
           | BINLOG grp_1173
           | FEDERATED ADMIN
           | grp_1174 ADMIN
           | ADMIN OPTION
           | CONNECTION ADMIN
           | DELETE HISTORY
           | REPLICA MONITOR
           | SET USER
           | SLAVE MONITOR
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

    analyzeTable ::= ANALYZE opt_1176 grp_1177 tables opt_1183 opt_1187

    checkTable ::= CHECK TABLE tables list_1188

    checksumTable ::= CHECKSUM TABLE tables opt_1190

    optimizeTable ::= OPTIMIZE opt_1192 grp_1193 tables opt_1194

    repairTable ::= REPAIR opt_1196 TABLE tables opt_1197 opt_1198 opt_1199

    checkTableOption ::= FOR UPGRADE
           | QUICK
           | FAST
           | MEDIUM
           | EXTENDED
           | CHANGED

    createUdfunction ::= CREATE opt_1200 opt_1201 FUNCTION opt_1202 uid RETURNS grp_1203 SONAME STRING_LITERAL

    installPlugin ::= INSTALL PLUGIN uid SONAME STRING_LITERAL

    uninstallPlugin ::= UNINSTALL PLUGIN uid

    setStatement ::= SET variableClause grp_1204 grp_1205 list_1209
           | SET charSet grp_1210
           | SET NAMES grp_1211
           | setPasswordStatement
           | setTransactionStatement
           | setAutocommitStatement
           | SET fullId grp_1214 expression list_1217

    showStatement ::= SHOW grp_1218 LOGS
           | SHOW BINLOG EVENTS opt_1220 opt_1222 opt_1223
           | SHOW RELAYLOG opt_1224 EVENTS opt_1226 opt_1228 opt_1229 opt_1231
           | SHOW showCommonEntity opt_1232
           | SHOW opt_1233 grp_1234 grp_1235 tableName opt_1238 opt_1239
           | SHOW CREATE grp_1240 opt_1241 uid
           | SHOW CREATE grp_1242 fullId
           | SHOW CREATE PACKAGE opt_1243 fullId
           | SHOW CREATE USER userName
           | SHOW ENGINE engineName grp_1244
           | SHOW INNODB STATUS
           | SHOW showGlobalInfoClause
           | SHOW grp_1245 opt_1246
           | SHOW COUNT LPAREN STAR RPAREN grp_1247
           | SHOW showSchemaEntity opt_1250 opt_1251
           | SHOW grp_1252 CODE fullId
           | SHOW GRANTS opt_1254
           | SHOW grp_1255 grp_1256 tableName opt_1259 opt_1261
           | SHOW OPEN TABLES opt_1264 opt_1265
           | SHOW PROFILE opt_1269 opt_1271 opt_1272
           | SHOW grp_1273 opt_1274 STATUS opt_1276
           | SHOW grp_1277
           | SHOW EXPLAIN opt_1278 FOR decimalLiteral
           | SHOW PACKAGE opt_1279 STATUS opt_1280

    explainStatement ::= EXPLAIN opt_1281 FOR CONNECTION decimalLiteral

    variableClause ::= LOCAL_ID
           | GLOBAL_ID
           | opt_1286 uid

    showCommonEntity ::= CHARACTER SET
           | COLLATION
           | DATABASES
           | SCHEMAS
           | FUNCTION STATUS
           | PROCEDURE STATUS
           | opt_1288 grp_1289

    showFilter ::= LIKE STRING_LITERAL
           | WHERE expression

    showGlobalInfoClause ::= opt_1290 ENGINES
           | grp_1291 STATUS
           | PLUGINS opt_1294
           | PRIVILEGES
           | opt_1295 PROCESSLIST
           | PROFILES
           | LOCALES
           | grp_1296 HOSTS
           | AUTHORS
           | CONTRIBUTORS
           | QUERY_RESPONSE_TIME
           | ALL grp_1297 STATUS
           | WSREP_MEMBERSHIP
           | WSREP_STATUS
           | TABLE TYPES

    showSchemaEntity ::= EVENTS
           | TABLE STATUS
           | opt_1298 TABLES
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

    cacheIndexStatement ::= CACHE INDEX tableIndexes list_1300 opt_1303 IN uid

    flushStatement ::= FLUSH opt_1305 flushOption list_1307
           | FLUSH grp_1308

    killStatement ::= KILL opt_1310 expression

    loadIndexIntoCache ::= LOAD INDEX INTO CACHE loadedTableIndexes list_1312

    resetStatement ::= RESET QUERY CACHE

    shutdownStatement ::= SHUTDOWN

    tableIndexes ::= tableName opt_1316

    flushOption ::= grp_1317
           | RELAY LOGS opt_1322
           | grp_1323 opt_1324 opt_1325

    flushTableOption ::= WITH READ LOCK
           | FOR EXPORT

    loadedTableIndexes ::= tableName opt_1328 opt_1332 opt_1334

    simpleDescribeStatement ::= grp_1335 tableName opt_1337

    fullDescribeStatement ::= grp_1338 opt_1342 describeObjectClause

    formatJsonStatement ::= FORMAT EQ JSON

    helpStatement ::= HELP STRING_LITERAL

    useStatement ::= USE uid

    signalStatement ::= SIGNAL grp_1343 opt_1349

    resignalStatement ::= RESIGNAL opt_1353 opt_1357

    signalConditionInformation ::= grp_1358 EQ grp_1359

    diagnosticsStatement ::= GET opt_1361 DIAGNOSTICS grp_1362

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

    describeObjectClause ::= grp_1372
           | FOR CONNECTION uid

    fullId ::= uid opt_1374

    tableName ::= fullId

    roleName ::= userName
           | uid

    fullColumnName ::= uid opt_1377
           | dottedId opt_1378

    indexColumnName ::= grp_1379 opt_1384

    simpleUserName ::= STRING_LITERAL
           | IDENTIFIER
           | ADMIN
           | keywordsCanBeId

    hostName ::= grp_1385

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
           | IDENTIFIER
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

    encryptedLiteral ::= ENCRYPTED
           | STRING_LITERAL

    uuidSet ::= decimalLiteral MINUS decimalLiteral MINUS decimalLiteral MINUS decimalLiteral MINUS decimalLiteral list_1387

    xid ::= xuidStringId opt_1391

    xuidStringId ::= STRING_LITERAL
           | BIT_STRING
           | list_1392

    authPlugin ::= uid
           | STRING_LITERAL

    uid ::= simpleId
           | CHARSET_REVERSE_QOUTE_STRING
           | STRING_LITERAL

    simpleId ::=
           IDENTIFIER

    dottedId ::= DOT_ID
           | DOT uid

    decimalLiteral ::= DECIMAL_LITERAL
           | ZERO_DECIMAL
           | ONE_DECIMAL
           | TWO_DECIMAL
           | REAL_LITERAL

    fileSizeLiteral ::= FILESIZE_LITERAL
           | decimalLiteral

    stringLiteral ::= grp_1393 list_1395
           | grp_1396 opt_1399

    booleanLiteral ::= TRUE
           | FALSE

    booleanValue ::= T_0
           | T_1
           | ON
           | OFF
           | STRING_LITERAL

    hexadecimalLiteral ::= opt_1400 HEXADECIMAL_LITERAL

    nullNotnull ::= opt_1401 grp_1402

    constant ::= stringLiteral
           | decimalLiteral
           | MINUS decimalLiteral
           | hexadecimalLiteral
           | booleanLiteral
           | REAL_LITERAL
           | BIT_STRING
           | opt_1403 grp_1404

    dataType ::= grp_1405 opt_1406 opt_1407 opt_1408 opt_1410 opt_1412
           | NATIONAL grp_1413 opt_1414 opt_1415
           | NCHAR VARCHAR opt_1416 opt_1417
           | NATIONAL grp_1418 VARYING opt_1419 opt_1420
           | grp_1421 opt_1422 list_1424
           | REAL opt_1425 list_1427
           | DOUBLE opt_1428 opt_1429 list_1431
           | VECTOR lengthOneDimension
           | grp_1432 opt_1433 list_1435
           | grp_1436
           | grp_1437 opt_1438
           | grp_1439 collectionOptions opt_1440 opt_1442
           | grp_1443
           | LONG opt_1444 opt_1445 opt_1447 opt_1449
           | LONG VARBINARY
           | UUID

    collectionOptions ::= LPAREN collectionOption list_1451 RPAREN

    collectionOption ::= STRING_LITERAL

    convertedDataType ::= grp_1452 opt_1462

    lengthOneDimension ::= LPAREN decimalLiteral RPAREN

    lengthTwoDimension ::= LPAREN decimalLiteral COMMA decimalLiteral RPAREN

    lengthTwoOptionalDimension ::= LPAREN decimalLiteral opt_1464 RPAREN

    uidList ::= uid list_1466

    tables ::= tableName list_1468

    indexColumnNames ::= LPAREN indexColumnName list_1470 RPAREN

    expressions ::= expression list_1472

    expressionsWithDefaults ::= expressionOrDefault list_1474

    constants ::= constant list_1476

    simpleStrings ::= STRING_LITERAL list_1478

    userVariables ::= LOCAL_ID list_1480

    defaultValue ::= NULL_LITERAL
           | CAST LPAREN expression AS convertedDataType RPAREN
           | opt_1481 constant
           | currentTimestamp opt_1483
           | LPAREN expression RPAREN
           | grp_1484 LPAREN fullId RPAREN
           | LPAREN grp_1485 VALUE FOR fullId RPAREN
           | expression

    currentTimestamp ::= grp_1486

    expressionOrDefault ::= expression
           | DEFAULT

    ifExists ::= IF EXISTS

    ifNotExists ::= IF NOT EXISTS

    orReplace ::= OR REPLACE

    waitNowaitClause ::= WAIT decimalLiteral
           | NOWAIT

    lockOption ::= waitNowaitClause
           | SKIP_ LOCKED

    functionCall ::= specificFunction
           | aggregateWindowedFunction
           | nonAggregateWindowedFunction
           | scalarFunctionName LPAREN opt_1492 RPAREN
           | fullId LPAREN opt_1493 RPAREN
           | passwordFunctionClause

    specificFunction ::= grp_1494 opt_1496
           | CONVERT LPAREN expression COMMA convertedDataType RPAREN
           | CONVERT LPAREN expression USING charsetName RPAREN
           | CAST LPAREN expression AS convertedDataType RPAREN
           | VALUES LPAREN fullColumnName RPAREN
           | CASE expression list_1497 opt_1499 END
           | CASE list_1500 opt_1502 END
           | CHAR LPAREN functionArgs opt_1504 RPAREN
           | POSITION LPAREN grp_1505 IN grp_1506 RPAREN
           | grp_1507 LPAREN grp_1508 FROM grp_1509 opt_1512 RPAREN
           | TRIM LPAREN grp_1513 opt_1515 FROM grp_1516 RPAREN
           | TRIM LPAREN grp_1517 FROM grp_1518 RPAREN
           | WEIGHT_STRING LPAREN grp_1519 opt_1522 opt_1523 RPAREN
           | EXTRACT LPAREN intervalType FROM grp_1524 RPAREN
           | GET_FORMAT LPAREN grp_1525 COMMA stringLiteral RPAREN
           | JSON_VALUE LPAREN expression COMMA expression opt_1527 opt_1528 opt_1529 RPAREN

    caseFuncAlternative ::= WHEN functionArg THEN functionArg

    levelsInWeightString ::= LEVEL levelInWeightListElement list_1531
           | LEVEL decimalLiteral MINUS decimalLiteral

    levelInWeightListElement ::= decimalLiteral opt_1533

    aggregateWindowedFunction ::= grp_1534 LPAREN opt_1536 functionArg RPAREN opt_1537
           | COUNT LPAREN grp_1538 RPAREN opt_1540
           | grp_1541 LPAREN opt_1542 functionArg RPAREN opt_1543
           | GROUP_CONCAT LPAREN opt_1544 functionArgs opt_1548 opt_1550 RPAREN

    nonAggregateWindowedFunction ::= grp_1551 LPAREN expression opt_1553 opt_1555 RPAREN overClause
           | grp_1556 LPAREN expression RPAREN overClause
           | grp_1557 LPAREN RPAREN overClause
           | NTH_VALUE LPAREN expression COMMA decimalLiteral RPAREN overClause
           | NTILE LPAREN decimalLiteral RPAREN overClause

    overClause ::= OVER grp_1558

    windowSpec ::= opt_1560 opt_1561 opt_1562 opt_1563

    windowName ::= uid

    frameClause ::= frameUnits frameExtent

    frameUnits ::= ROWS
           | RANGE

    frameExtent ::= frameRange
           | frameBetween

    frameBetween ::= BETWEEN frameRange AND frameRange

    frameRange ::= CURRENT ROW
           | UNBOUNDED grp_1564
           | expression grp_1565

    partitionClause ::= PARTITION BY expression list_1567

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
           | REPLACE
           | SUBSTR
           | SUBSTRING
           | SYSDATE
           | TRIM
           | UTC_DATE
           | UTC_TIME
           | UTC_TIMESTAMP

    passwordFunctionClause ::= grp_1568 LPAREN functionArg RPAREN

    functionArgs ::= grp_1569 list_1572

    functionArg ::= constant
           | fullColumnName
           | functionCall
           | expression

    expression ::= grp_1573 expression
           | expression logicalOperator expression
           | predicate IS opt_1574 grp_1575
           | predicate

    predicate ::= predicate opt_1576 IN LPAREN grp_1577 RPAREN
           | predicate IS nullNotnull
           | predicate comparisonOperator predicate
           | predicate comparisonOperator grp_1578 LPAREN selectStatement RPAREN
           | predicate opt_1579 BETWEEN predicate AND predicate
           | predicate SOUNDS LIKE predicate
           | predicate opt_1580 LIKE predicate opt_1582
           | predicate opt_1583 grp_1584 predicate
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
           | LPAREN expression list_1586 RPAREN
           | ROW LPAREN expression list_1588 RPAREN
           | EXISTS LPAREN selectStatement RPAREN
           | LPAREN selectStatement RPAREN
           | INTERVAL expression intervalType
           | expressionAtom bitOperator expressionAtom
           | expressionAtom mathOperator expressionAtom
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

    mathOperator ::= STAR
           | SLASH
           | PERCENT
           | DIV
           | MOD
           | PLUS
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
           | AT
           | AUDIT_ADMIN
           | AUTHORS
           | AUTOCOMMIT
           | AUTOEXTEND_SIZE
           | AUTO_INCREMENT
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
           | BODY
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
           | FIREWALL_USER
           | FIRST
           | FIXED
           | FLUSH
           | FOLLOWS
           | FOUND
           | FULL
           | FUNCTION
           | GENERAL
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
           | LOCALES
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
           | MAX_STATEMENT_TIME
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
           | OFF
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
           | PACKAGE
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
           | PERIOD
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
           | QUERY_RESPONSE_TIME
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
           | REPLICAS
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
           | SLAVES
           | SLOW
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
           | TABLE_NAME
           | TABLESPACE
           | TABLE_ENCRYPTION_ADMIN
           | TABLE_TYPE
           | TEMPORARY
           | TEMPTABLE
           | THAN
           | TRADITIONAL
           | TRANSACTION
           | TRANSACTIONAL
           | TRIGGERS
           | TRUNCATE
           | TYPES
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
           | WSREP_MEMBERSHIP
           | WSREP_STATUS
           | X509
           | XA
           | XA_RECOVER_ADMIN
           | XML
           | YES
           | BINLOG_MONITOR
           | BINLOG_REPLAY
           | CURRENT_ROLE
           | CYCLE
           | ENCRYPTED
           | ENCRYPTION_KEY_ID
           | FEDERATED_ADMIN
           | INCREMENT
           | LASTVAL
           | LOCKED
           | MAXVALUE
           | MINVALUE
           | NEXTVAL
           | NOCACHE
           | NOCYCLE
           | NOMAXVALUE
           | NOMINVALUE
           | PERSISTENT
           | PREVIOUS
           | READ_ONLY_ADMIN
           | REPLICA
           | REPLICATION_MASTER_ADMIN
           | RESTART
           | SEQUENCE
           | SETVAL
           | SKIP_
           | STATEMENT
           | UUID
           | VIA
           | MONITOR
           | READ_ONLY
           | REPLAY
           | USER_STATISTICS
           | CLIENT_STATISTICS
           | INDEX_STATISTICS
           | TABLE_STATISTICS

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
           | LASTVAL
           | NEXTVAL
           | SETVAL

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

    opt_14 ::= setStatementFor | $empty

    grp_15 ::= ddlStatement | dmlStatement | transactionStatement | replicationStatement | preparedStatement | administrationStatement | utilityStatement

    seq_16 ::= COMMA IDENTIFIER EQUAL_SYMBOL constant

    list_17 ::= $empty | list_17 seq_16

    grp_18 ::= DATABASE | SCHEMA

    opt_19 ::= ifNotExists | $empty

    list_20 ::= $empty | list_20 createDatabaseOption

    opt_21 ::= ownerStatement | $empty

    opt_22 ::= ifNotExists | $empty

    opt_23 ::= NOT | $empty

    seq_24 ::= ON COMPLETION opt_23 PRESERVE

    opt_25 ::= seq_24 | $empty

    opt_26 ::= enableType | $empty

    seq_27 ::= COMMENT STRING_LITERAL

    opt_28 ::= seq_27 | $empty

    opt_29 ::= orReplace | $empty

    grp_30 ::= ONLINE | OFFLINE

    opt_31 ::= grp_30 | $empty

    grp_32 ::= UNIQUE | FULLTEXT | SPATIAL

    opt_33 ::= grp_32 | $empty

    opt_34 ::= ifNotExists | $empty

    opt_35 ::= indexType | $empty

    opt_36 ::= waitNowaitClause | $empty

    list_37 ::= $empty | list_37 indexOption

    opt_39 ::= EQUAL_SYMBOL | $empty

    grp_40 ::= DEFAULT | INPLACE | COPY | NOCOPY | INSTANT

    opt_41 ::= EQUAL_SYMBOL | $empty

    grp_42 ::= DEFAULT | NONE | SHARED | EXCLUSIVE

    grp_38 ::= ALGORITHM opt_39 grp_40 | LOCK opt_41 grp_42

    list_43 ::= $empty | list_43 grp_38

    opt_44 ::= EQ | $empty

    seq_45 ::= INITIAL_SIZE opt_44 fileSizeLiteral

    opt_46 ::= seq_45 | $empty

    opt_47 ::= EQ | $empty

    seq_48 ::= UNDO_BUFFER_SIZE opt_47 fileSizeLiteral

    opt_49 ::= seq_48 | $empty

    opt_50 ::= EQ | $empty

    seq_51 ::= REDO_BUFFER_SIZE opt_50 fileSizeLiteral

    opt_52 ::= seq_51 | $empty

    opt_53 ::= EQ | $empty

    seq_54 ::= NODEGROUP opt_53 uid

    opt_55 ::= seq_54 | $empty

    opt_56 ::= WAIT | $empty

    opt_57 ::= EQ | $empty

    seq_58 ::= COMMENT opt_57 STRING_LITERAL

    opt_59 ::= seq_58 | $empty

    opt_60 ::= EQ | $empty

    opt_61 ::= orReplace | $empty

    opt_62 ::= ownerStatement | $empty

    opt_63 ::= procedureParameter | $empty

    seq_64 ::= COMMA procedureParameter

    list_65 ::= $empty | list_65 seq_64

    list_66 ::= $empty | list_66 routineOption

    opt_67 ::= orReplace | $empty

    opt_68 ::= ownerStatement | $empty

    opt_69 ::= AGGREGATE | $empty

    opt_70 ::= ifNotExists | $empty

    opt_71 ::= functionParameter | $empty

    seq_72 ::= COMMA functionParameter

    list_73 ::= $empty | list_73 seq_72

    list_74 ::= $empty | list_74 routineOption

    grp_75 ::= routineBody | returnStatement

    opt_76 ::= ifNotExists | $empty

    seq_77 ::= COMMA roleName

    list_78 ::= $empty | list_78 seq_77

    grp_79 ::= MYSQL | STRING_LITERAL

    seq_80 ::= COMMA serverOption

    list_81 ::= $empty | list_81 seq_80

    opt_82 ::= orReplace | $empty

    opt_83 ::= TEMPORARY | $empty

    opt_84 ::= ifNotExists | $empty

    grp_85 ::= LIKE tableName | LPAREN LIKE tableName RPAREN

    opt_86 ::= orReplace | $empty

    opt_87 ::= TEMPORARY | $empty

    opt_88 ::= ifNotExists | $empty

    opt_89 ::= createDefinitions | $empty

    opt_90 ::= COMMA | $empty

    seq_91 ::= opt_90 tableOption

    list_92 ::= $empty | list_92 seq_91

    seq_93 ::= tableOption list_92

    opt_94 ::= seq_93 | $empty

    opt_95 ::= partitionDefinitions | $empty

    grp_96 ::= IGNORE | REPLACE

    opt_97 ::= grp_96 | $empty

    opt_98 ::= AS | $empty

    opt_99 ::= orReplace | $empty

    opt_100 ::= TEMPORARY | $empty

    opt_101 ::= ifNotExists | $empty

    opt_102 ::= COMMA | $empty

    seq_103 ::= opt_102 tableOption

    list_104 ::= $empty | list_104 seq_103

    seq_105 ::= tableOption list_104

    opt_106 ::= seq_105 | $empty

    opt_107 ::= partitionDefinitions | $empty

    seq_108 ::= FILE_BLOCK_SIZE EQ fileSizeLiteral

    opt_109 ::= seq_108 | $empty

    opt_110 ::= EQ | $empty

    seq_111 ::= ENGINE opt_110 engineName

    opt_112 ::= seq_111 | $empty

    opt_113 ::= EQ | $empty

    seq_114 ::= EXTENT_SIZE opt_113 fileSizeLiteral

    opt_115 ::= seq_114 | $empty

    opt_116 ::= EQ | $empty

    seq_117 ::= INITIAL_SIZE opt_116 fileSizeLiteral

    opt_118 ::= seq_117 | $empty

    opt_119 ::= EQ | $empty

    seq_120 ::= AUTOEXTEND_SIZE opt_119 fileSizeLiteral

    opt_121 ::= seq_120 | $empty

    opt_122 ::= EQ | $empty

    seq_123 ::= MAX_SIZE opt_122 fileSizeLiteral

    opt_124 ::= seq_123 | $empty

    opt_125 ::= EQ | $empty

    seq_126 ::= NODEGROUP opt_125 uid

    opt_127 ::= seq_126 | $empty

    opt_128 ::= WAIT | $empty

    opt_129 ::= EQ | $empty

    seq_130 ::= COMMENT opt_129 STRING_LITERAL

    opt_131 ::= seq_130 | $empty

    opt_132 ::= EQ | $empty

    opt_133 ::= orReplace | $empty

    opt_134 ::= ownerStatement | $empty

    grp_135 ::= BEFORE | AFTER

    grp_136 ::= INSERT | UPDATE | DELETE

    grp_138 ::= FOLLOWS | PRECEDES

    grp_137 ::= grp_138 fullId

    opt_139 ::= grp_137 | $empty

    opt_140 ::= RECURSIVE | $empty

    seq_141 ::= COMMA cteColumnName

    list_142 ::= $empty | list_142 seq_141

    seq_143 ::= LPAREN cteColumnName list_142 RPAREN

    opt_144 ::= seq_143 | $empty

    seq_145 ::= COMMA commonTableExpressions

    opt_146 ::= seq_145 | $empty

    opt_147 ::= orReplace | $empty

    grp_149 ::= UNDEFINED | MERGE | TEMPTABLE

    grp_148 ::= ALGORITHM EQ grp_149

    opt_150 ::= grp_148 | $empty

    opt_151 ::= ownerStatement | $empty

    grp_153 ::= DEFINER | INVOKER

    grp_152 ::= SQL SECURITY grp_153

    opt_154 ::= grp_152 | $empty

    seq_155 ::= LPAREN uidList RPAREN

    opt_156 ::= seq_155 | $empty

    opt_158 ::= withClause | $empty

    opt_159 ::= withClause | $empty

    grp_161 ::= CASCADED | LOCAL

    opt_162 ::= grp_161 | $empty

    grp_160 ::= WITH opt_162 CHECK OPTION

    opt_163 ::= grp_160 | $empty

    grp_157 ::= LPAREN opt_158 selectStatement RPAREN | opt_159 selectStatement opt_163

    opt_164 ::= orReplace | $empty

    opt_165 ::= TEMPORARY | $empty

    opt_166 ::= ifNotExists | $empty

    grp_167 ::= sequenceSpec | tableOption

    list_168 ::= $empty | list_168 grp_167

    grp_169 ::= BY | EQ

    opt_170 ::= grp_169 | $empty

    opt_171 ::= EQ | $empty

    opt_172 ::= EQ | $empty

    grp_173 ::= WITH | EQ

    opt_174 ::= grp_173 | $empty

    opt_175 ::= EQ | $empty

    grp_176 ::= WITH | EQ

    opt_177 ::= grp_176 | $empty

    opt_178 ::= DEFAULT | $empty

    opt_179 ::= EQ | $empty

    grp_180 ::= charsetName | DEFAULT

    opt_181 ::= DEFAULT | $empty

    opt_182 ::= EQ | $empty

    opt_183 ::= DEFAULT | $empty

    opt_184 ::= EQ | $empty

    opt_185 ::= EQ | $empty

    grp_186 ::= DEFAULT | ZERO_DECIMAL | ONE_DECIMAL

    seq_187 ::= LPAREN RPAREN

    opt_188 ::= seq_187 | $empty

    grp_189 ::= userName | currentUserExpression | CURRENT_ROLE

    list_190 ::= $empty | list_190 intervalExpr

    grp_191 ::= decimalLiteral | expression

    list_192 ::= startIntervals | list_192 startIntervals

    seq_193 ::= list_192 intervalExpr

    list_194 ::= $empty | list_194 seq_193

    seq_195 ::= STARTS timestampValue list_194

    opt_196 ::= seq_195 | $empty

    list_197 ::= endIntervals | list_197 endIntervals

    seq_198 ::= list_197 intervalExpr

    list_199 ::= $empty | list_199 seq_198

    seq_200 ::= ENDS timestampValue list_199

    opt_201 ::= seq_200 | $empty

    grp_202 ::= decimalLiteral | expression

    grp_203 ::= BTREE | HASH | RTREE

    opt_204 ::= EQUAL_SYMBOL | $empty

    grp_205 ::= VISIBLE | INVISIBLE

    opt_206 ::= EQUAL_SYMBOL | $empty

    opt_207 ::= EQUAL_SYMBOL | $empty

    grp_208 ::= YES | NO

    grp_209 ::= IGNORED | NOT IGNORED

    grp_210 ::= IN | OUT | INOUT

    opt_211 ::= grp_210 | $empty

    opt_212 ::= NOT | $empty

    grp_213 ::= CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA

    grp_214 ::= DEFINER | INVOKER

    seq_215 ::= COMMA createDefinition

    list_216 ::= $empty | list_216 seq_215

    list_217 ::= $empty | list_217 columnConstraint

    grp_218 ::= AUTO_INCREMENT | ON UPDATE currentTimestamp

    opt_219 ::= PRIMARY | $empty

    opt_220 ::= KEY | $empty

    grp_221 ::= FIXED | DYNAMIC | DEFAULT

    grp_222 ::= DISK | MEMORY | DEFAULT

    seq_223 ::= GENERATED ALWAYS

    opt_224 ::= seq_223 | $empty

    grp_226 ::= VIRTUAL | STORED | PERSISTENT

    opt_227 ::= grp_226 | $empty

    grp_228 ::= START | END

    grp_225 ::= LPAREN expression RPAREN opt_227 | ROW grp_228

    opt_229 ::= uid | $empty

    seq_230 ::= CONSTRAINT opt_229

    opt_231 ::= seq_230 | $empty

    opt_232 ::= uid | $empty

    seq_233 ::= CONSTRAINT opt_232

    opt_234 ::= seq_233 | $empty

    opt_235 ::= uid | $empty

    opt_236 ::= indexType | $empty

    list_237 ::= $empty | list_237 indexOption

    opt_238 ::= uid | $empty

    seq_239 ::= CONSTRAINT opt_238

    opt_240 ::= seq_239 | $empty

    grp_241 ::= INDEX | KEY

    opt_242 ::= grp_241 | $empty

    opt_243 ::= uid | $empty

    opt_244 ::= indexType | $empty

    list_245 ::= $empty | list_245 indexOption

    opt_246 ::= uid | $empty

    seq_247 ::= CONSTRAINT opt_246

    opt_248 ::= seq_247 | $empty

    opt_249 ::= uid | $empty

    opt_250 ::= uid | $empty

    seq_251 ::= CONSTRAINT opt_250

    opt_252 ::= seq_251 | $empty

    opt_253 ::= indexColumnNames | $empty

    grp_255 ::= FULL | PARTIAL | SIMPLE

    grp_254 ::= MATCH grp_255

    opt_256 ::= grp_254 | $empty

    opt_257 ::= referenceAction | $empty

    seq_258 ::= ON UPDATE referenceControlType

    opt_259 ::= seq_258 | $empty

    seq_260 ::= ON DELETE referenceControlType

    opt_261 ::= seq_260 | $empty

    grp_262 ::= INDEX | KEY

    opt_263 ::= uid | $empty

    opt_264 ::= indexType | $empty

    list_265 ::= $empty | list_265 indexOption

    grp_266 ::= FULLTEXT | SPATIAL

    grp_267 ::= INDEX | KEY

    opt_268 ::= grp_267 | $empty

    opt_269 ::= uid | $empty

    list_270 ::= $empty | list_270 indexOption

    grp_271 ::= uid | SYSTEM_TIME

    opt_272 ::= EQ | $empty

    opt_273 ::= engineName | $empty

    opt_274 ::= EQ | $empty

    opt_275 ::= EQ | $empty

    opt_276 ::= EQ | $empty

    opt_277 ::= EQ | $empty

    opt_278 ::= DEFAULT | $empty

    opt_279 ::= EQ | $empty

    grp_280 ::= charsetName | DEFAULT

    grp_281 ::= CHECKSUM | PAGE_CHECKSUM

    opt_282 ::= EQ | $empty

    opt_283 ::= DEFAULT | $empty

    opt_284 ::= EQ | $empty

    opt_285 ::= EQ | $empty

    opt_286 ::= EQ | $empty

    grp_287 ::= STRING_LITERAL | IDENTIFIER

    opt_288 ::= EQ | $empty

    grp_289 ::= DATA | INDEX

    opt_290 ::= EQ | $empty

    opt_291 ::= EQ | $empty

    opt_292 ::= EQ | $empty

    opt_293 ::= EQ | $empty

    grp_294 ::= YES | NO

    grp_295 ::= PAGE_COMPRESSED | STRING_LITERAL

    opt_296 ::= EQ | $empty

    grp_297 ::= PAGE_COMPRESSION_LEVEL | STRING_LITERAL

    opt_298 ::= EQ | $empty

    opt_299 ::= EQ | $empty

    opt_300 ::= EQ | $empty

    opt_301 ::= EQ | $empty

    grp_302 ::= NO | FIRST | LAST

    opt_303 ::= EQ | $empty

    opt_304 ::= EQ | $empty

    opt_305 ::= EQ | $empty

    opt_306 ::= EQ | $empty

    grp_307 ::= T_0 | T_1 | DEFAULT

    opt_308 ::= EQ | $empty

    opt_309 ::= EQ | $empty

    grp_310 ::= DEFAULT | DYNAMIC | FIXED | COMPRESSED | REDUNDANT | COMPACT | IDENTIFIER

    opt_311 ::= EQ | $empty

    opt_312 ::= EQ | $empty

    grp_313 ::= DEFAULT | booleanValue

    opt_314 ::= EQ | $empty

    grp_315 ::= DEFAULT | booleanValue

    opt_316 ::= EQ | $empty

    grp_317 ::= DEFAULT | decimalLiteral

    opt_318 ::= tablespaceStorage | $empty

    opt_319 ::= EQ | $empty

    grp_320 ::= T_0 | T_1

    opt_321 ::= EQ | $empty

    grp_322 ::= DISK | MEMORY | DEFAULT

    seq_323 ::= PARTITIONS decimalLiteral

    opt_324 ::= seq_323 | $empty

    seq_325 ::= SUBPARTITIONS decimalLiteral

    opt_326 ::= seq_325 | $empty

    seq_327 ::= SUBPARTITION BY subpartitionFunctionDefinition opt_326

    opt_328 ::= seq_327 | $empty

    seq_329 ::= COMMA partitionDefinition

    list_330 ::= $empty | list_330 seq_329

    seq_331 ::= LPAREN partitionDefinition list_330 RPAREN

    opt_332 ::= seq_331 | $empty

    opt_333 ::= LINEAR | $empty

    opt_334 ::= LINEAR | $empty

    grp_336 ::= T_1 | T_2

    grp_335 ::= ALGORITHM EQ grp_336

    opt_337 ::= grp_335 | $empty

    grp_338 ::= LPAREN expression RPAREN | COLUMNS LPAREN uidList RPAREN

    grp_339 ::= LPAREN expression RPAREN | COLUMNS LPAREN uidList RPAREN

    grp_340 ::= expression | LIMIT expression

    grp_342 ::= TIMESTAMP timestampValue | timestampValue

    grp_341 ::= STARTS grp_342

    opt_343 ::= grp_341 | $empty

    opt_344 ::= AUTO | $empty

    opt_345 ::= partitionSystemVersionDefinitions | $empty

    seq_346 ::= COMMA partitionSystemVersionDefinition

    list_347 ::= $empty | list_347 seq_346

    grp_348 ::= HISTORY | CURRENT

    opt_349 ::= LINEAR | $empty

    opt_350 ::= LINEAR | $empty

    grp_352 ::= T_1 | T_2

    grp_351 ::= ALGORITHM EQ grp_352

    opt_353 ::= grp_351 | $empty

    seq_354 ::= COMMA partitionDefinerAtom

    list_355 ::= $empty | list_355 seq_354

    list_356 ::= $empty | list_356 partitionOption

    seq_357 ::= COMMA subpartitionDefinition

    list_358 ::= $empty | list_358 seq_357

    seq_359 ::= LPAREN subpartitionDefinition list_358 RPAREN

    opt_360 ::= seq_359 | $empty

    list_361 ::= $empty | list_361 partitionOption

    seq_362 ::= COMMA subpartitionDefinition

    list_363 ::= $empty | list_363 seq_362

    seq_364 ::= LPAREN subpartitionDefinition list_363 RPAREN

    opt_365 ::= seq_364 | $empty

    seq_366 ::= COMMA partitionDefinerAtom

    list_367 ::= $empty | list_367 seq_366

    list_368 ::= $empty | list_368 partitionOption

    seq_369 ::= COMMA subpartitionDefinition

    list_370 ::= $empty | list_370 seq_369

    seq_371 ::= LPAREN subpartitionDefinition list_370 RPAREN

    opt_372 ::= seq_371 | $empty

    seq_373 ::= COMMA partitionDefinerVector

    list_374 ::= $empty | list_374 seq_373

    list_375 ::= $empty | list_375 partitionOption

    seq_376 ::= COMMA subpartitionDefinition

    list_377 ::= $empty | list_377 seq_376

    seq_378 ::= LPAREN subpartitionDefinition list_377 RPAREN

    opt_379 ::= seq_378 | $empty

    list_380 ::= $empty | list_380 partitionOption

    seq_381 ::= COMMA subpartitionDefinition

    list_382 ::= $empty | list_382 seq_381

    seq_383 ::= LPAREN subpartitionDefinition list_382 RPAREN

    opt_384 ::= seq_383 | $empty

    seq_385 ::= COMMA partitionDefinerAtom

    list_386 ::= seq_385 | list_386 seq_385

    list_387 ::= $empty | list_387 partitionOption

    opt_388 ::= DEFAULT | $empty

    opt_389 ::= STORAGE | $empty

    opt_390 ::= EQ | $empty

    opt_391 ::= EQ | $empty

    opt_392 ::= EQ | $empty

    opt_393 ::= EQ | $empty

    opt_394 ::= EQ | $empty

    opt_395 ::= EQ | $empty

    opt_396 ::= EQ | $empty

    opt_397 ::= EQ | $empty

    grp_398 ::= DATABASE | SCHEMA

    opt_399 ::= uid | $empty

    list_400 ::= createDatabaseOption | list_400 createDatabaseOption

    grp_401 ::= DATABASE | SCHEMA

    opt_402 ::= ownerStatement | $empty

    seq_403 ::= ON SCHEDULE scheduleExpression

    opt_404 ::= seq_403 | $empty

    opt_405 ::= NOT | $empty

    seq_406 ::= ON COMPLETION opt_405 PRESERVE

    opt_407 ::= seq_406 | $empty

    seq_408 ::= RENAME TO fullId

    opt_409 ::= seq_408 | $empty

    opt_410 ::= enableType | $empty

    seq_411 ::= COMMENT STRING_LITERAL

    opt_412 ::= seq_411 | $empty

    seq_413 ::= DO routineBody

    opt_414 ::= seq_413 | $empty

    list_415 ::= $empty | list_415 routineOption

    opt_416 ::= EQ | $empty

    seq_417 ::= INITIAL_SIZE opt_416 fileSizeLiteral

    opt_418 ::= seq_417 | $empty

    opt_419 ::= WAIT | $empty

    opt_420 ::= EQ | $empty

    list_421 ::= $empty | list_421 routineOption

    seq_422 ::= COMMA serverOption

    list_423 ::= $empty | list_423 seq_422

    grp_424 ::= ONLINE | OFFLINE

    opt_425 ::= grp_424 | $empty

    opt_426 ::= IGNORE | $empty

    opt_427 ::= ifExists | $empty

    opt_428 ::= waitNowaitClause | $empty

    seq_429 ::= COMMA alterSpecification

    list_430 ::= $empty | list_430 seq_429

    seq_431 ::= alterSpecification list_430

    opt_432 ::= seq_431 | $empty

    opt_433 ::= partitionDefinitions | $empty

    grp_434 ::= ADD | DROP

    seq_435 ::= INITIAL_SIZE EQ fileSizeLiteral

    opt_436 ::= seq_435 | $empty

    opt_437 ::= WAIT | $empty

    opt_438 ::= EQ | $empty

    grp_440 ::= UNDEFINED | MERGE | TEMPTABLE

    grp_439 ::= ALGORITHM EQ grp_440

    opt_441 ::= grp_439 | $empty

    opt_442 ::= ownerStatement | $empty

    grp_444 ::= DEFINER | INVOKER

    grp_443 ::= SQL SECURITY grp_444

    opt_445 ::= grp_443 | $empty

    seq_446 ::= LPAREN uidList RPAREN

    opt_447 ::= seq_446 | $empty

    grp_449 ::= CASCADED | LOCAL

    opt_450 ::= grp_449 | $empty

    grp_448 ::= WITH opt_450 CHECK OPTION

    opt_451 ::= grp_448 | $empty

    opt_452 ::= ifExists | $empty

    list_453 ::= sequenceSpec | list_453 sequenceSpec

    opt_454 ::= COMMA | $empty

    seq_455 ::= opt_454 tableOption

    list_456 ::= $empty | list_456 seq_455

    opt_457 ::= COLUMN | $empty

    opt_458 ::= ifNotExists | $empty

    grp_459 ::= FIRST | AFTER uid

    opt_460 ::= grp_459 | $empty

    opt_461 ::= COLUMN | $empty

    opt_462 ::= ifNotExists | $empty

    seq_463 ::= COMMA uid columnDefinition

    list_464 ::= $empty | list_464 seq_463

    grp_465 ::= INDEX | KEY

    opt_466 ::= ifNotExists | $empty

    opt_467 ::= uid | $empty

    opt_468 ::= indexType | $empty

    list_469 ::= $empty | list_469 indexOption

    opt_470 ::= uid | $empty

    seq_471 ::= CONSTRAINT opt_470

    opt_472 ::= seq_471 | $empty

    opt_473 ::= uid | $empty

    opt_474 ::= indexType | $empty

    list_475 ::= $empty | list_475 indexOption

    opt_476 ::= uid | $empty

    seq_477 ::= CONSTRAINT opt_476

    opt_478 ::= seq_477 | $empty

    grp_479 ::= INDEX | KEY

    opt_480 ::= grp_479 | $empty

    opt_481 ::= ifNotExists | $empty

    opt_482 ::= uid | $empty

    opt_483 ::= indexType | $empty

    list_484 ::= $empty | list_484 indexOption

    grp_485 ::= FULLTEXT | SPATIAL

    grp_486 ::= INDEX | KEY

    opt_487 ::= grp_486 | $empty

    opt_488 ::= uid | $empty

    list_489 ::= $empty | list_489 indexOption

    opt_490 ::= uid | $empty

    seq_491 ::= CONSTRAINT opt_490

    opt_492 ::= seq_491 | $empty

    opt_493 ::= ifNotExists | $empty

    opt_494 ::= uid | $empty

    opt_495 ::= uid | $empty

    seq_496 ::= CONSTRAINT opt_495

    opt_497 ::= seq_496 | $empty

    opt_498 ::= EQ | $empty

    grp_499 ::= DEFAULT | INSTANT | INPLACE | COPY | NOCOPY

    opt_500 ::= COLUMN | $empty

    grp_501 ::= SET DEFAULT defaultValue | DROP DEFAULT

    opt_502 ::= COLUMN | $empty

    opt_503 ::= ifExists | $empty

    grp_504 ::= FIRST | AFTER uid

    opt_505 ::= grp_504 | $empty

    opt_506 ::= ifExists | $empty

    opt_507 ::= EQ | $empty

    grp_508 ::= DEFAULT | NONE | SHARED | EXCLUSIVE

    opt_509 ::= COLUMN | $empty

    opt_510 ::= ifExists | $empty

    grp_511 ::= FIRST | AFTER uid

    opt_512 ::= grp_511 | $empty

    opt_513 ::= COLUMN | $empty

    opt_514 ::= ifExists | $empty

    opt_515 ::= RESTRICT | $empty

    grp_516 ::= CONSTRAINT | CHECK

    opt_517 ::= ifExists | $empty

    opt_518 ::= ifNotExists | $empty

    grp_519 ::= INDEX | KEY

    opt_520 ::= ifExists | $empty

    grp_521 ::= INDEX | KEY

    grp_522 ::= VISIBLE | INVISIBLE

    grp_523 ::= KEY | INDEX

    opt_524 ::= ifExists | $empty

    opt_525 ::= NOT | $empty

    opt_526 ::= ifExists | $empty

    opt_527 ::= dottedId | $empty

    grp_528 ::= TO | AS

    opt_529 ::= grp_528 | $empty

    grp_530 ::= uid | fullId

    seq_531 ::= COLLATE collationName

    opt_532 ::= seq_531 | $empty

    opt_533 ::= DEFAULT | $empty

    seq_534 ::= COLLATE EQ collationName

    opt_535 ::= seq_534 | $empty

    grp_536 ::= WITHOUT | WITH

    opt_537 ::= COLUMN | $empty

    opt_538 ::= ifNotExists | $empty

    seq_539 ::= COMMA createDefinition

    list_540 ::= $empty | list_540 seq_539

    opt_541 ::= ifNotExists | $empty

    seq_542 ::= COMMA partitionDefinition

    list_543 ::= $empty | list_543 seq_542

    opt_544 ::= ifExists | $empty

    grp_545 ::= uidList | ALL

    grp_546 ::= uidList | ALL

    grp_547 ::= uidList | ALL

    seq_548 ::= COMMA partitionDefinition

    list_549 ::= $empty | list_549 seq_548

    grp_551 ::= WITH | WITHOUT

    grp_550 ::= grp_551 VALIDATION

    opt_552 ::= grp_550 | $empty

    grp_553 ::= uidList | ALL

    grp_554 ::= uidList | ALL

    grp_555 ::= uidList | ALL

    grp_556 ::= uidList | ALL

    grp_557 ::= uidList | ALL

    grp_558 ::= DATABASE | SCHEMA

    opt_559 ::= ifExists | $empty

    opt_560 ::= ifExists | $empty

    opt_561 ::= ifExists | $empty

    grp_562 ::= ONLINE | OFFLINE

    opt_563 ::= grp_562 | $empty

    opt_565 ::= EQ | $empty

    grp_566 ::= DEFAULT | INPLACE | COPY

    opt_567 ::= EQ | $empty

    grp_568 ::= DEFAULT | NONE | SHARED | EXCLUSIVE

    grp_564 ::= ALGORITHM opt_565 grp_566 | LOCK opt_567 grp_568

    list_569 ::= $empty | list_569 grp_564

    opt_570 ::= waitNowaitClause | $empty

    opt_571 ::= ifExists | $empty

    opt_572 ::= ifExists | $empty

    opt_573 ::= ifExists | $empty

    opt_574 ::= TEMPORARY | $empty

    opt_575 ::= ifExists | $empty

    opt_576 ::= waitNowaitClause | $empty

    grp_577 ::= RESTRICT | CASCADE

    opt_578 ::= grp_577 | $empty

    opt_579 ::= EQ | $empty

    seq_580 ::= ENGINE opt_579 engineName

    opt_581 ::= seq_580 | $empty

    opt_582 ::= ifExists | $empty

    opt_583 ::= ifExists | $empty

    seq_584 ::= COMMA fullId

    list_585 ::= $empty | list_585 seq_584

    grp_586 ::= RESTRICT | CASCADE

    opt_587 ::= grp_586 | $empty

    opt_588 ::= ifExists | $empty

    seq_589 ::= COMMA roleName

    list_590 ::= $empty | list_590 seq_589

    seq_592 ::= COMMA roleName

    list_593 ::= $empty | list_593 seq_592

    grp_591 ::= NONE | ALL | roleName list_593

    grp_594 ::= userName | uid

    grp_596 ::= userName | uid

    grp_595 ::= COMMA grp_596

    list_597 ::= $empty | list_597 grp_595

    opt_598 ::= TEMPORARY | $empty

    opt_599 ::= ifExists | $empty

    opt_600 ::= COMMENT_INPUT | $empty

    seq_601 ::= COMMA fullId

    list_602 ::= $empty | list_602 seq_601

    opt_603 ::= ifExists | $empty

    seq_604 ::= COMMA renameTableClause

    list_605 ::= $empty | list_605 seq_604

    opt_606 ::= waitNowaitClause | $empty

    opt_607 ::= TABLE | $empty

    opt_608 ::= waitNowaitClause | $empty

    grp_610 ::= constants | expressions

    opt_611 ::= grp_610 | $empty

    grp_609 ::= LPAREN opt_611 RPAREN

    opt_612 ::= grp_609 | $empty

    grp_613 ::= LOW_PRIORITY | DELAYED | HIGH_PRIORITY

    opt_614 ::= grp_613 | $empty

    opt_615 ::= IGNORE | $empty

    opt_616 ::= INTO | $empty

    opt_617 ::= uidList | $empty

    seq_618 ::= PARTITION LPAREN opt_617 RPAREN

    opt_619 ::= seq_618 | $empty

    seq_621 ::= LPAREN uidList RPAREN

    opt_622 ::= seq_621 | $empty

    list_623 ::= setElements | list_623 setElements

    seq_624 ::= COMMA list_623 updatedElement

    list_625 ::= $empty | list_625 seq_624

    grp_620 ::= opt_622 insertStatementValue | SET updatedElement list_625

    list_626 ::= duplicatedElements | list_626 duplicatedElements

    seq_627 ::= COMMA list_626 updatedElement

    list_628 ::= $empty | list_628 seq_627

    seq_629 ::= ON DUPLICATE KEY UPDATE updatedElement list_628

    opt_630 ::= seq_629 | $empty

    grp_631 ::= LOW_PRIORITY | CONCURRENT

    opt_632 ::= grp_631 | $empty

    opt_633 ::= LOCAL | $empty

    grp_634 ::= REPLACE | IGNORE

    opt_635 ::= grp_634 | $empty

    seq_636 ::= PARTITION LPAREN uidList RPAREN

    opt_637 ::= seq_636 | $empty

    seq_638 ::= CHARACTER SET charsetName

    opt_639 ::= seq_638 | $empty

    grp_641 ::= FIELDS | COLUMNS

    list_642 ::= selectFieldsInto | list_642 selectFieldsInto

    grp_640 ::= grp_641 list_642

    opt_643 ::= grp_640 | $empty

    list_644 ::= selectLinesInto | list_644 selectLinesInto

    seq_645 ::= LINES list_644

    opt_646 ::= seq_645 | $empty

    grp_648 ::= LINES | ROWS

    grp_647 ::= IGNORE decimalLiteral grp_648

    opt_649 ::= grp_647 | $empty

    seq_650 ::= COMMA assignmentField

    list_651 ::= $empty | list_651 seq_650

    seq_652 ::= LPAREN assignmentField list_651 RPAREN

    opt_653 ::= seq_652 | $empty

    seq_654 ::= COMMA updatedElement

    list_655 ::= $empty | list_655 seq_654

    seq_656 ::= SET updatedElement list_655

    opt_657 ::= seq_656 | $empty

    grp_658 ::= LOW_PRIORITY | CONCURRENT

    opt_659 ::= grp_658 | $empty

    opt_660 ::= LOCAL | $empty

    grp_661 ::= REPLACE | IGNORE

    opt_662 ::= grp_661 | $empty

    seq_663 ::= CHARACTER SET charsetName

    opt_664 ::= seq_663 | $empty

    seq_665 ::= ROWS IDENTIFIED BY LT STRING_LITERAL GT

    opt_666 ::= seq_665 | $empty

    grp_668 ::= LINES | ROWS

    grp_667 ::= IGNORE decimalLiteral grp_668

    opt_669 ::= grp_667 | $empty

    seq_670 ::= COMMA assignmentField

    list_671 ::= $empty | list_671 seq_670

    seq_672 ::= LPAREN assignmentField list_671 RPAREN

    opt_673 ::= seq_672 | $empty

    seq_674 ::= COMMA updatedElement

    list_675 ::= $empty | list_675 seq_674

    seq_676 ::= SET updatedElement list_675

    opt_677 ::= seq_676 | $empty

    grp_678 ::= LOW_PRIORITY | DELAYED

    opt_679 ::= grp_678 | $empty

    opt_680 ::= INTO | $empty

    seq_681 ::= PARTITION LPAREN uidList RPAREN

    opt_682 ::= seq_681 | $empty

    seq_684 ::= LPAREN uidList RPAREN

    opt_685 ::= seq_684 | $empty

    list_686 ::= setElements | list_686 setElements

    seq_687 ::= COMMA list_686 updatedElement

    list_688 ::= $empty | list_688 seq_687

    grp_683 ::= opt_685 insertStatementValue | SET updatedElement list_688

    opt_689 ::= lockClause | $empty

    opt_690 ::= lockClause | $empty

    list_691 ::= unionStatement | list_691 unionStatement

    grp_693 ::= ALL | DISTINCT

    opt_694 ::= grp_693 | $empty

    grp_695 ::= querySpecification | queryExpression

    grp_692 ::= UNION opt_694 grp_695

    opt_696 ::= grp_692 | $empty

    opt_697 ::= orderByClause | $empty

    opt_698 ::= limitClause | $empty

    opt_699 ::= lockClause | $empty

    list_700 ::= unionParenthesis | list_700 unionParenthesis

    grp_702 ::= ALL | DISTINCT

    opt_703 ::= grp_702 | $empty

    grp_701 ::= UNION opt_703 queryExpression

    opt_704 ::= grp_701 | $empty

    opt_705 ::= orderByClause | $empty

    opt_706 ::= limitClause | $empty

    opt_707 ::= lockClause | $empty

    seq_708 ::= COMMA lateralStatement

    list_709 ::= seq_708 | list_709 seq_708

    opt_710 ::= expressionsWithDefaults | $empty

    opt_711 ::= expressionsWithDefaults | $empty

    seq_712 ::= COMMA LPAREN opt_711 RPAREN

    list_713 ::= $empty | list_713 seq_712

    grp_714 ::= VALUES | VALUE

    opt_715 ::= expressionsWithDefaults | $empty

    opt_716 ::= expressionsWithDefaults | $empty

    seq_717 ::= COMMA LPAREN opt_716 RPAREN

    list_718 ::= $empty | list_718 seq_717

    grp_719 ::= expression | DEFAULT

    grp_720 ::= FOR UPDATE | LOCK IN SHARE MODE

    opt_721 ::= lockOption | $empty

    opt_722 ::= LOW_PRIORITY | $empty

    opt_723 ::= QUICK | $empty

    opt_724 ::= IGNORE | $empty

    seq_725 ::= PARTITION LPAREN uidList RPAREN

    opt_726 ::= seq_725 | $empty

    seq_727 ::= WHERE expression

    opt_728 ::= seq_727 | $empty

    opt_729 ::= orderByClause | $empty

    seq_730 ::= LIMIT limitClauseAtom

    opt_731 ::= seq_730 | $empty

    opt_732 ::= LOW_PRIORITY | $empty

    opt_733 ::= QUICK | $empty

    opt_734 ::= IGNORE | $empty

    seq_736 ::= DOT STAR

    opt_737 ::= seq_736 | $empty

    seq_738 ::= DOT STAR

    opt_739 ::= seq_738 | $empty

    seq_740 ::= COMMA tableName opt_739

    list_741 ::= $empty | list_741 seq_740

    seq_742 ::= DOT STAR

    opt_743 ::= seq_742 | $empty

    seq_744 ::= DOT STAR

    opt_745 ::= seq_744 | $empty

    seq_746 ::= COMMA tableName opt_745

    list_747 ::= $empty | list_747 seq_746

    grp_735 ::= tableName opt_737 list_741 FROM tableSources | FROM tableName opt_743 list_747 USING tableSources

    seq_748 ::= WHERE expression

    opt_749 ::= seq_748 | $empty

    opt_750 ::= AS | $empty

    seq_751 ::= opt_750 uid

    opt_752 ::= seq_751 | $empty

    grp_754 ::= FIRST | NEXT | PREV | LAST

    grp_753 ::= comparisonOperator LPAREN constants RPAREN | grp_754

    seq_755 ::= WHERE expression

    opt_756 ::= seq_755 | $empty

    seq_757 ::= LIMIT limitClauseAtom

    opt_758 ::= seq_757 | $empty

    grp_759 ::= FIRST | NEXT

    seq_760 ::= WHERE expression

    opt_761 ::= seq_760 | $empty

    seq_762 ::= LIMIT limitClauseAtom

    opt_763 ::= seq_762 | $empty

    opt_764 ::= LOW_PRIORITY | $empty

    opt_765 ::= IGNORE | $empty

    opt_766 ::= AS | $empty

    seq_767 ::= opt_766 uid

    opt_768 ::= seq_767 | $empty

    seq_769 ::= COMMA updatedElement

    list_770 ::= $empty | list_770 seq_769

    seq_771 ::= WHERE expression

    opt_772 ::= seq_771 | $empty

    opt_773 ::= orderByClause | $empty

    opt_774 ::= limitClause | $empty

    opt_775 ::= LOW_PRIORITY | $empty

    opt_776 ::= IGNORE | $empty

    seq_777 ::= COMMA updatedElement

    list_778 ::= $empty | list_778 seq_777

    seq_779 ::= WHERE expression

    opt_780 ::= seq_779 | $empty

    seq_781 ::= COMMA orderByExpression

    list_782 ::= $empty | list_782 seq_781

    grp_783 ::= ASC | DESC

    opt_784 ::= grp_783 | $empty

    seq_785 ::= COMMA tableSource

    list_786 ::= $empty | list_786 seq_785

    list_787 ::= $empty | list_787 joinPart

    list_788 ::= $empty | list_788 joinPart

    seq_789 ::= PARTITION LPAREN uidList RPAREN

    opt_790 ::= seq_789 | $empty

    opt_791 ::= AS | $empty

    seq_792 ::= opt_791 uid

    opt_793 ::= seq_792 | $empty

    seq_794 ::= COMMA indexHint

    list_795 ::= $empty | list_795 seq_794

    seq_796 ::= indexHint list_795

    opt_797 ::= seq_796 | $empty

    grp_798 ::= selectStatement | LPAREN selectStatement RPAREN

    opt_799 ::= AS | $empty

    grp_800 ::= USE | IGNORE | FORCE

    grp_801 ::= INDEX | KEY

    seq_802 ::= FOR indexHintType

    opt_803 ::= seq_802 | $empty

    grp_804 ::= INNER | CROSS

    opt_805 ::= grp_804 | $empty

    opt_806 ::= LATERAL | $empty

    grp_807 ::= ON expression | USING LPAREN uidList RPAREN

    opt_808 ::= grp_807 | $empty

    seq_809 ::= ON expression

    opt_810 ::= seq_809 | $empty

    grp_811 ::= LEFT | RIGHT

    opt_812 ::= OUTER | $empty

    opt_813 ::= LATERAL | $empty

    grp_814 ::= ON expression | USING LPAREN uidList RPAREN

    grp_816 ::= LEFT | RIGHT

    opt_817 ::= OUTER | $empty

    grp_815 ::= grp_816 opt_817

    opt_818 ::= grp_815 | $empty

    list_819 ::= $empty | list_819 selectSpec

    opt_820 ::= selectIntoExpression | $empty

    opt_821 ::= fromClause | $empty

    opt_822 ::= groupByClause | $empty

    opt_823 ::= havingClause | $empty

    opt_824 ::= windowClause | $empty

    opt_825 ::= orderByClause | $empty

    opt_826 ::= limitClause | $empty

    list_827 ::= $empty | list_827 selectSpec

    opt_828 ::= fromClause | $empty

    opt_829 ::= groupByClause | $empty

    opt_830 ::= havingClause | $empty

    opt_831 ::= windowClause | $empty

    opt_832 ::= orderByClause | $empty

    opt_833 ::= limitClause | $empty

    opt_834 ::= selectIntoExpression | $empty

    list_835 ::= $empty | list_835 selectSpec

    opt_836 ::= fromClause | $empty

    opt_837 ::= groupByClause | $empty

    opt_838 ::= havingClause | $empty

    opt_839 ::= windowClause | $empty

    opt_840 ::= orderByClause | $empty

    opt_841 ::= limitClause | $empty

    grp_842 ::= ALL | DISTINCT

    opt_843 ::= grp_842 | $empty

    grp_844 ::= ALL | DISTINCT

    opt_845 ::= grp_844 | $empty

    grp_846 ::= querySpecificationNointo | queryExpressionNointo

    grp_849 ::= querySpecificationNointo | queryExpressionNointo

    opt_850 ::= AS | $empty

    seq_851 ::= opt_850 uid

    opt_852 ::= seq_851 | $empty

    grp_848 ::= LPAREN grp_849 RPAREN opt_852

    grp_847 ::= querySpecificationNointo | queryExpressionNointo | grp_848

    opt_853 ::= AS | $empty

    seq_854 ::= opt_853 uid

    opt_855 ::= seq_854 | $empty

    seq_856 ::= COMMA jsonColumn

    list_857 ::= $empty | list_857 seq_856

    opt_860 ::= jsonOnEmpty | $empty

    opt_861 ::= jsonOnError | $empty

    grp_859 ::= PATH STRING_LITERAL opt_860 opt_861 | EXISTS PATH STRING_LITERAL

    grp_858 ::= FOR ORDINALITY | dataType grp_859

    opt_862 ::= PATH | $empty

    grp_863 ::= NULL_LITERAL | ERROR | DEFAULT defaultValue

    grp_864 ::= NULL_LITERAL | ERROR | DEFAULT defaultValue

    grp_865 ::= ALL | DISTINCT | DISTINCTROW

    grp_866 ::= SQL_CACHE | SQL_NO_CACHE

    grp_867 ::= STAR | selectElement

    seq_868 ::= COMMA selectElement

    list_869 ::= $empty | list_869 seq_868

    opt_870 ::= AS | $empty

    seq_871 ::= opt_870 uid

    opt_872 ::= seq_871 | $empty

    opt_873 ::= AS | $empty

    seq_874 ::= opt_873 uid

    opt_875 ::= seq_874 | $empty

    seq_876 ::= LOCAL_ID VAR_ASSIGN

    opt_877 ::= seq_876 | $empty

    opt_878 ::= AS | $empty

    seq_879 ::= opt_878 uid

    opt_880 ::= seq_879 | $empty

    seq_881 ::= COMMA assignmentField

    list_882 ::= $empty | list_882 seq_881

    seq_884 ::= CHARACTER SET charsetName

    opt_885 ::= seq_884 | $empty

    grp_887 ::= FIELDS | COLUMNS

    list_888 ::= selectFieldsInto | list_888 selectFieldsInto

    grp_886 ::= grp_887 list_888

    opt_889 ::= grp_886 | $empty

    list_890 ::= selectLinesInto | list_890 selectLinesInto

    seq_891 ::= LINES list_890

    opt_892 ::= seq_891 | $empty

    grp_883 ::= INTO OUTFILE STRING_LITERAL opt_885 opt_889 opt_892

    opt_893 ::= OPTIONALLY | $empty

    seq_894 ::= FROM tableSources

    opt_895 ::= seq_894 | $empty

    seq_896 ::= WHERE expression

    opt_897 ::= seq_896 | $empty

    seq_898 ::= COMMA groupByItem

    list_899 ::= $empty | list_899 seq_898

    seq_900 ::= WITH ROLLUP

    opt_901 ::= seq_900 | $empty

    seq_902 ::= COMMA windowName AS LPAREN windowSpec RPAREN

    list_903 ::= $empty | list_903 seq_902

    grp_904 ::= ASC | DESC

    opt_905 ::= grp_904 | $empty

    seq_907 ::= limitClauseAtom COMMA

    opt_908 ::= seq_907 | $empty

    grp_906 ::= opt_908 limitClauseAtom | limitClauseAtom OFFSET limitClauseAtom

    seq_909 ::= COMMA transactionMode

    list_910 ::= $empty | list_910 seq_909

    seq_911 ::= transactionMode list_910

    opt_912 ::= seq_911 | $empty

    opt_913 ::= WORK | $empty

    opt_914 ::= WORK | $empty

    opt_915 ::= NO | $empty

    seq_916 ::= AND opt_915 CHAIN

    opt_917 ::= seq_916 | $empty

    opt_918 ::= NO | $empty

    seq_919 ::= opt_918 RELEASE

    opt_920 ::= seq_919 | $empty

    opt_921 ::= WORK | $empty

    opt_922 ::= NO | $empty

    seq_923 ::= AND opt_922 CHAIN

    opt_924 ::= seq_923 | $empty

    opt_925 ::= NO | $empty

    seq_926 ::= opt_925 RELEASE

    opt_927 ::= seq_926 | $empty

    opt_928 ::= WORK | $empty

    opt_929 ::= SAVEPOINT | $empty

    grp_930 ::= TABLE | TABLES

    seq_931 ::= COMMA lockTableElement

    list_932 ::= $empty | list_932 seq_931

    opt_933 ::= waitNowaitClause | $empty

    grp_934 ::= T_0 | T_1

    grp_935 ::= GLOBAL | SESSION

    opt_936 ::= grp_935 | $empty

    seq_937 ::= COMMA transactionOption

    list_938 ::= $empty | list_938 seq_937

    opt_939 ::= AS | $empty

    seq_940 ::= opt_939 uid

    opt_941 ::= seq_940 | $empty

    opt_942 ::= LOCAL | $empty

    opt_943 ::= LOW_PRIORITY | $empty

    seq_944 ::= COMMA masterOption

    list_945 ::= $empty | list_945 seq_944

    opt_946 ::= channelOption | $empty

    seq_947 ::= COMMA replicationFilter

    list_948 ::= $empty | list_948 seq_947

    grp_949 ::= BINARY | MASTER

    grp_950 ::= TO STRING_LITERAL | BEFORE STRING_LITERAL

    opt_951 ::= ALL | $empty

    opt_952 ::= channelOption | $empty

    seq_953 ::= COMMA threadType

    list_954 ::= $empty | list_954 seq_953

    seq_955 ::= threadType list_954

    opt_956 ::= seq_955 | $empty

    seq_957 ::= UNTIL untilOption

    opt_958 ::= seq_957 | $empty

    list_959 ::= $empty | list_959 connectionOption

    opt_960 ::= channelOption | $empty

    seq_961 ::= COMMA threadType

    list_962 ::= $empty | list_962 seq_961

    seq_963 ::= threadType list_962

    opt_964 ::= seq_963 | $empty

    grp_965 ::= T_0 | T_1

    seq_966 ::= COMMA uid

    list_967 ::= $empty | list_967 seq_966

    seq_968 ::= uid list_967

    opt_969 ::= seq_968 | $empty

    seq_970 ::= COMMA tablePair

    list_971 ::= $empty | list_971 seq_970

    grp_972 ::= SQL_BEFORE_GTIDS | SQL_AFTER_GTIDS

    seq_973 ::= COMMA uuidSet

    list_974 ::= $empty | list_974 seq_973

    grp_975 ::= START | BEGIN

    grp_976 ::= JOIN | RESUME

    opt_977 ::= grp_976 | $empty

    seq_978 ::= FOR MIGRATE

    opt_979 ::= seq_978 | $empty

    seq_980 ::= SUSPEND opt_979

    opt_981 ::= seq_980 | $empty

    seq_982 ::= ONE PHASE

    opt_983 ::= seq_982 | $empty

    seq_984 ::= CONVERT xid

    opt_985 ::= seq_984 | $empty

    grp_986 ::= STRING_LITERAL | LOCAL_ID

    seq_987 ::= USING userVariables

    opt_988 ::= seq_987 | $empty

    grp_989 ::= DEALLOCATE | DROP

    seq_990 ::= uid COLON

    opt_991 ::= seq_990 | $empty

    seq_992 ::= declareVariable SEMI

    list_993 ::= $empty | list_993 seq_992

    seq_994 ::= declareCondition SEMI

    list_995 ::= $empty | list_995 seq_994

    seq_996 ::= declareCursor SEMI

    list_997 ::= $empty | list_997 seq_996

    seq_998 ::= declareHandler SEMI

    list_999 ::= $empty | list_999 seq_998

    list_1000 ::= $empty | list_1000 procedureSqlStatement

    seq_1001 ::= list_993 list_995 list_997 list_999 list_1000

    opt_1002 ::= seq_1001 | $empty

    opt_1003 ::= uid | $empty

    grp_1004 ::= uid | expression

    opt_1005 ::= grp_1004 | $empty

    list_1006 ::= caseAlternative | list_1006 caseAlternative

    list_1007 ::= procedureSqlStatement | list_1007 procedureSqlStatement

    seq_1008 ::= ELSE list_1007

    opt_1009 ::= seq_1008 | $empty

    list_1010 ::= thenStatements | list_1010 thenStatements

    list_1011 ::= procedureSqlStatement | list_1011 procedureSqlStatement

    list_1012 ::= $empty | list_1012 elifAlternative

    list_1013 ::= elseStatements | list_1013 elseStatements

    list_1014 ::= procedureSqlStatement | list_1014 procedureSqlStatement

    seq_1015 ::= ELSE list_1013 list_1014

    opt_1016 ::= seq_1015 | $empty

    seq_1017 ::= uid COLON

    opt_1018 ::= seq_1017 | $empty

    list_1019 ::= procedureSqlStatement | list_1019 procedureSqlStatement

    opt_1020 ::= uid | $empty

    seq_1021 ::= uid COLON

    opt_1022 ::= seq_1021 | $empty

    list_1023 ::= procedureSqlStatement | list_1023 procedureSqlStatement

    opt_1024 ::= uid | $empty

    seq_1025 ::= uid COLON

    opt_1026 ::= seq_1025 | $empty

    list_1027 ::= procedureSqlStatement | list_1027 procedureSqlStatement

    opt_1028 ::= uid | $empty

    opt_1029 ::= NEXT | $empty

    seq_1030 ::= opt_1029 FROM

    opt_1031 ::= seq_1030 | $empty

    seq_1032 ::= DEFAULT expression

    opt_1033 ::= seq_1032 | $empty

    opt_1035 ::= VALUE | $empty

    grp_1034 ::= decimalLiteral | SQLSTATE opt_1035 STRING_LITERAL

    grp_1036 ::= CONTINUE | EXIT | UNDO

    seq_1037 ::= COMMA handlerConditionValue

    list_1038 ::= $empty | list_1038 seq_1037

    opt_1039 ::= VALUE | $empty

    grp_1040 ::= compoundStatement | sqlStatement

    grp_1041 ::= constant | expression

    list_1042 ::= procedureSqlStatement | list_1042 procedureSqlStatement

    list_1043 ::= procedureSqlStatement | list_1043 procedureSqlStatement

    seq_1044 ::= COMMA userSpecification

    list_1045 ::= $empty | list_1045 seq_1044

    opt_1046 ::= ifExists | $empty

    seq_1047 ::= COMMA userAuthOption

    list_1048 ::= $empty | list_1048 seq_1047

    opt_1051 ::= AND | $empty

    seq_1052 ::= opt_1051 tlsOption

    list_1053 ::= $empty | list_1053 seq_1052

    grp_1050 ::= NONE | tlsOption list_1053

    grp_1049 ::= REQUIRE grp_1050

    opt_1054 ::= grp_1049 | $empty

    list_1055 ::= userResourceOption | list_1055 userResourceOption

    seq_1056 ::= WITH list_1055

    opt_1057 ::= seq_1056 | $empty

    grp_1058 ::= userPasswordOption | userLockOption

    list_1059 ::= $empty | list_1059 grp_1058

    grp_1060 ::= COMMENT STRING_LITERAL | ATTRIBUTE STRING_LITERAL

    opt_1061 ::= grp_1060 | $empty

    seq_1062 ::= COMMA userAuthOption

    list_1063 ::= $empty | list_1063 seq_1062

    opt_1064 ::= ifNotExists | $empty

    seq_1065 ::= COMMA userAuthOption

    list_1066 ::= $empty | list_1066 seq_1065

    opt_1069 ::= AND | $empty

    seq_1070 ::= opt_1069 tlsOption

    list_1071 ::= $empty | list_1071 seq_1070

    grp_1068 ::= NONE | tlsOption list_1071

    grp_1067 ::= REQUIRE grp_1068

    opt_1072 ::= grp_1067 | $empty

    list_1073 ::= userResourceOption | list_1073 userResourceOption

    seq_1074 ::= WITH list_1073

    opt_1075 ::= seq_1074 | $empty

    grp_1076 ::= userPasswordOption | userLockOption

    list_1077 ::= $empty | list_1077 grp_1076

    grp_1078 ::= COMMENT STRING_LITERAL | ATTRIBUTE STRING_LITERAL

    opt_1079 ::= grp_1078 | $empty

    opt_1080 ::= ifExists | $empty

    seq_1081 ::= COMMA userName

    list_1082 ::= $empty | list_1082 seq_1081

    seq_1083 ::= COMMA privelegeClause

    list_1084 ::= $empty | list_1084 seq_1083

    grp_1085 ::= TABLE | FUNCTION | PROCEDURE

    opt_1086 ::= grp_1085 | $empty

    seq_1087 ::= COMMA userAuthOption

    list_1088 ::= $empty | list_1088 seq_1087

    opt_1091 ::= AND | $empty

    seq_1092 ::= opt_1091 tlsOption

    list_1093 ::= $empty | list_1093 seq_1092

    grp_1090 ::= NONE | tlsOption list_1093

    grp_1089 ::= REQUIRE grp_1090

    opt_1094 ::= grp_1089 | $empty

    grp_1096 ::= GRANT OPTION | userResourceOption

    list_1097 ::= $empty | list_1097 grp_1096

    grp_1095 ::= WITH list_1097

    opt_1098 ::= grp_1095 | $empty

    seq_1099 ::= AS userName WITH ROLE roleOption

    opt_1100 ::= seq_1099 | $empty

    grp_1101 ::= userName | uid

    grp_1103 ::= userName | uid

    grp_1102 ::= COMMA grp_1103

    list_1104 ::= $empty | list_1104 grp_1102

    grp_1105 ::= userName | uid

    grp_1107 ::= userName | uid

    grp_1106 ::= COMMA grp_1107

    list_1108 ::= $empty | list_1108 grp_1106

    seq_1109 ::= WITH ADMIN OPTION

    opt_1110 ::= seq_1109 | $empty

    seq_1111 ::= COMMA userName

    list_1112 ::= $empty | list_1112 seq_1111

    seq_1113 ::= EXCEPT userName list_1112

    opt_1114 ::= seq_1113 | $empty

    seq_1115 ::= COMMA userName

    list_1116 ::= $empty | list_1116 seq_1115

    list_1117 ::= toOther | list_1117 toOther

    seq_1118 ::= COMMA list_1117 userName

    list_1119 ::= $empty | list_1119 seq_1118

    seq_1120 ::= WITH GRANT OPTION

    opt_1121 ::= seq_1120 | $empty

    seq_1122 ::= COMMA renameUserClause

    list_1123 ::= $empty | list_1123 seq_1122

    seq_1124 ::= COMMA privelegeClause

    list_1125 ::= $empty | list_1125 seq_1124

    grp_1126 ::= TABLE | FUNCTION | PROCEDURE

    opt_1127 ::= grp_1126 | $empty

    seq_1128 ::= COMMA userName

    list_1129 ::= $empty | list_1129 seq_1128

    opt_1130 ::= PRIVILEGES | $empty

    seq_1131 ::= COMMA userName

    list_1132 ::= $empty | list_1132 seq_1131

    seq_1133 ::= COMMA uid

    list_1134 ::= $empty | list_1134 seq_1133

    grp_1135 ::= userName | uid

    grp_1137 ::= userName | uid

    grp_1136 ::= COMMA grp_1137

    list_1138 ::= $empty | list_1138 grp_1136

    list_1139 ::= fromOther | list_1139 fromOther

    seq_1140 ::= COMMA list_1139 userName

    list_1141 ::= $empty | list_1141 seq_1140

    seq_1142 ::= FOR userName

    opt_1143 ::= seq_1142 | $empty

    grp_1144 ::= passwordFunctionClause | STRING_LITERAL

    seq_1145 ::= RETAIN CURRENT PASSWORD

    opt_1146 ::= seq_1145 | $empty

    grp_1147 ::= WITH | VIA

    seq_1148 ::= OR authenticationRule

    list_1149 ::= $empty | list_1149 seq_1148

    grp_1151 ::= BY | USING | AS

    grp_1150 ::= grp_1151 STRING_LITERAL

    opt_1152 ::= grp_1150 | $empty

    grp_1153 ::= USING | AS

    grp_1154 ::= DEFAULT | NEVER | INTERVAL decimalLiteral DAY

    opt_1155 ::= grp_1154 | $empty

    grp_1156 ::= DEFAULT | decimalLiteral

    grp_1157 ::= DEFAULT | decimalLiteral DAY

    grp_1158 ::= OPTIONAL | DEFAULT

    opt_1159 ::= grp_1158 | $empty

    grp_1160 ::= decimalLiteral | UNBOUNDED

    grp_1161 ::= LOCK | UNLOCK

    seq_1162 ::= LPAREN uidList RPAREN

    opt_1163 ::= seq_1162 | $empty

    opt_1164 ::= PRIVILEGES | $empty

    opt_1165 ::= ROUTINE | $empty

    grp_1166 ::= TEMPORARY TABLES | ROUTINE | VIEW | USER | TABLESPACE | ROLE

    opt_1167 ::= grp_1166 | $empty

    opt_1168 ::= HISTORY | $empty

    opt_1169 ::= ROLE | $empty

    grp_1170 ::= CLIENT | SLAVE | REPLICA | MASTER

    opt_1171 ::= ADMIN | $empty

    grp_1172 ::= VIEW | DATABASES | SCHEMAS

    grp_1173 ::= ADMIN | MONITOR | REPLAY

    grp_1174 ::= READ ONLY | READ_ONLY

    grp_1175 ::= NO_WRITE_TO_BINLOG | LOCAL

    opt_1176 ::= grp_1175 | $empty

    grp_1177 ::= TABLE | TABLES

    seq_1178 ::= COMMA fullColumnName

    list_1179 ::= $empty | list_1179 seq_1178

    seq_1180 ::= WITH decimalLiteral BUCKETS

    opt_1181 ::= seq_1180 | $empty

    seq_1182 ::= UPDATE HISTOGRAM ON fullColumnName list_1179 opt_1181

    opt_1183 ::= seq_1182 | $empty

    seq_1184 ::= COMMA fullColumnName

    list_1185 ::= $empty | list_1185 seq_1184

    seq_1186 ::= DROP HISTOGRAM ON fullColumnName list_1185

    opt_1187 ::= seq_1186 | $empty

    list_1188 ::= $empty | list_1188 checkTableOption

    grp_1189 ::= QUICK | EXTENDED

    opt_1190 ::= grp_1189 | $empty

    grp_1191 ::= NO_WRITE_TO_BINLOG | LOCAL

    opt_1192 ::= grp_1191 | $empty

    grp_1193 ::= TABLE | TABLES

    opt_1194 ::= waitNowaitClause | $empty

    grp_1195 ::= NO_WRITE_TO_BINLOG | LOCAL

    opt_1196 ::= grp_1195 | $empty

    opt_1197 ::= QUICK | $empty

    opt_1198 ::= EXTENDED | $empty

    opt_1199 ::= USE_FRM | $empty

    opt_1200 ::= orReplace | $empty

    opt_1201 ::= AGGREGATE | $empty

    opt_1202 ::= ifNotExists | $empty

    grp_1203 ::= STRING | INTEGER | REAL | DECIMAL

    grp_1204 ::= EQ | COLONEQ

    grp_1205 ::= expression | ON

    grp_1207 ::= EQ | COLONEQ

    grp_1208 ::= expression | ON

    grp_1206 ::= COMMA variableClause grp_1207 grp_1208

    list_1209 ::= $empty | list_1209 grp_1206

    grp_1210 ::= charsetName | DEFAULT

    seq_1212 ::= COLLATE collationName

    opt_1213 ::= seq_1212 | $empty

    grp_1211 ::= charsetName opt_1213 | DEFAULT

    grp_1214 ::= EQ | COLONEQ

    grp_1216 ::= EQ | COLONEQ

    grp_1215 ::= COMMA fullId grp_1216 expression

    list_1217 ::= $empty | list_1217 grp_1215

    grp_1218 ::= BINARY | MASTER

    seq_1219 ::= IN STRING_LITERAL

    opt_1220 ::= seq_1219 | $empty

    seq_1221 ::= FROM decimalLiteral

    opt_1222 ::= seq_1221 | $empty

    opt_1223 ::= limitClause | $empty

    opt_1224 ::= STRING_LITERAL | $empty

    seq_1225 ::= IN STRING_LITERAL

    opt_1226 ::= seq_1225 | $empty

    seq_1227 ::= FROM decimalLiteral

    opt_1228 ::= seq_1227 | $empty

    opt_1229 ::= limitClause | $empty

    seq_1230 ::= FOR CHANNEL STRING_LITERAL

    opt_1231 ::= seq_1230 | $empty

    opt_1232 ::= showFilter | $empty

    opt_1233 ::= FULL | $empty

    grp_1234 ::= COLUMNS | FIELDS

    grp_1235 ::= FROM | IN

    grp_1237 ::= FROM | IN

    grp_1236 ::= grp_1237 uid

    opt_1238 ::= grp_1236 | $empty

    opt_1239 ::= showFilter | $empty

    grp_1240 ::= DATABASE | SCHEMA

    opt_1241 ::= ifNotExists | $empty

    grp_1242 ::= EVENT | FUNCTION | PROCEDURE | SEQUENCE | TABLE | TRIGGER | VIEW

    opt_1243 ::= BODY | $empty

    grp_1244 ::= STATUS | MUTEX

    grp_1245 ::= ERRORS | WARNINGS

    opt_1246 ::= limitClause | $empty

    grp_1247 ::= ERRORS | WARNINGS

    grp_1249 ::= FROM | IN

    grp_1248 ::= grp_1249 uid

    opt_1250 ::= grp_1248 | $empty

    opt_1251 ::= showFilter | $empty

    grp_1252 ::= FUNCTION | PROCEDURE

    seq_1253 ::= FOR userName

    opt_1254 ::= seq_1253 | $empty

    grp_1255 ::= INDEX | INDEXES | KEYS

    grp_1256 ::= FROM | IN

    grp_1258 ::= FROM | IN

    grp_1257 ::= grp_1258 uid

    opt_1259 ::= grp_1257 | $empty

    seq_1260 ::= WHERE expression

    opt_1261 ::= seq_1260 | $empty

    grp_1263 ::= FROM | IN

    grp_1262 ::= grp_1263 fullId

    opt_1264 ::= grp_1262 | $empty

    opt_1265 ::= showFilter | $empty

    seq_1266 ::= COMMA showProfileType

    list_1267 ::= $empty | list_1267 seq_1266

    seq_1268 ::= showProfileType list_1267

    opt_1269 ::= seq_1268 | $empty

    seq_1270 ::= FOR QUERY decimalLiteral

    opt_1271 ::= seq_1270 | $empty

    opt_1272 ::= limitClause | $empty

    grp_1273 ::= SLAVE | REPLICA

    opt_1274 ::= STRING_LITERAL | $empty

    seq_1275 ::= FOR CHANNEL STRING_LITERAL

    opt_1276 ::= seq_1275 | $empty

    grp_1277 ::= USER_STATISTICS | CLIENT_STATISTICS | INDEX_STATISTICS | TABLE_STATISTICS

    opt_1278 ::= formatJsonStatement | $empty

    opt_1279 ::= BODY | $empty

    opt_1280 ::= showFilter | $empty

    opt_1281 ::= formatJsonStatement | $empty

    seq_1283 ::= AT AT

    opt_1284 ::= seq_1283 | $empty

    grp_1285 ::= GLOBAL | SESSION | LOCAL

    grp_1282 ::= opt_1284 grp_1285

    opt_1286 ::= grp_1282 | $empty

    grp_1287 ::= GLOBAL | SESSION

    opt_1288 ::= grp_1287 | $empty

    grp_1289 ::= STATUS | VARIABLES

    opt_1290 ::= STORAGE | $empty

    grp_1291 ::= MASTER | BINLOG

    grp_1293 ::= STRING_LITERAL | showFilter

    grp_1292 ::= SONAME grp_1293

    opt_1294 ::= grp_1292 | $empty

    opt_1295 ::= FULL | $empty

    grp_1296 ::= SLAVE | REPLICA

    grp_1297 ::= SLAVES | REPLICAS

    opt_1298 ::= FULL | $empty

    seq_1299 ::= COMMA tableIndexes

    list_1300 ::= $empty | list_1300 seq_1299

    grp_1302 ::= uidList | ALL

    grp_1301 ::= PARTITION LPAREN grp_1302 RPAREN

    opt_1303 ::= grp_1301 | $empty

    grp_1304 ::= NO_WRITE_TO_BINLOG | LOCAL

    opt_1305 ::= grp_1304 | $empty

    seq_1306 ::= COMMA flushOption

    list_1307 ::= $empty | list_1307 seq_1306

    grp_1308 ::= USER_STATISTICS | CLIENT_STATISTICS | INDEX_STATISTICS | TABLE_STATISTICS

    grp_1309 ::= CONNECTION | QUERY

    opt_1310 ::= grp_1309 | $empty

    seq_1311 ::= COMMA loadedTableIndexes

    list_1312 ::= $empty | list_1312 seq_1311

    grp_1314 ::= INDEX | KEY

    opt_1315 ::= grp_1314 | $empty

    grp_1313 ::= opt_1315 LPAREN uidList RPAREN

    opt_1316 ::= grp_1313 | $empty

    grp_1318 ::= BINARY | ENGINE | ERROR | GENERAL | RELAY | SLOW

    opt_1319 ::= grp_1318 | $empty

    seq_1320 ::= WITH READ LOCK

    opt_1321 ::= seq_1320 | $empty

    grp_1317 ::= DES_KEY_FILE | HOSTS | opt_1319 LOGS | OPTIMIZER_COSTS | PRIVILEGES | QUERY CACHE | STATUS | USER_RESOURCES | TABLES opt_1321

    opt_1322 ::= channelOption | $empty

    grp_1323 ::= TABLE | TABLES

    opt_1324 ::= tables | $empty

    opt_1325 ::= flushTableOption | $empty

    grp_1327 ::= uidList | ALL

    grp_1326 ::= PARTITION LPAREN grp_1327 RPAREN

    opt_1328 ::= grp_1326 | $empty

    grp_1330 ::= INDEX | KEY

    opt_1331 ::= grp_1330 | $empty

    grp_1329 ::= opt_1331 LPAREN uidList RPAREN

    opt_1332 ::= grp_1329 | $empty

    seq_1333 ::= IGNORE LEAVES

    opt_1334 ::= seq_1333 | $empty

    grp_1335 ::= EXPLAIN | DESCRIBE | DESC

    grp_1336 ::= uid | STRING_LITERAL

    opt_1337 ::= grp_1336 | $empty

    grp_1338 ::= EXPLAIN | DESCRIBE | DESC

    grp_1340 ::= EXTENDED | PARTITIONS | FORMAT

    grp_1341 ::= TRADITIONAL | JSON

    grp_1339 ::= grp_1340 EQ grp_1341

    opt_1342 ::= grp_1339 | $empty

    opt_1344 ::= VALUE | $empty

    seq_1345 ::= SQLSTATE opt_1344 stringLiteral

    grp_1343 ::= seq_1345 | IDENTIFIER | REVERSE_QUOTE_ID

    seq_1346 ::= COMMA signalConditionInformation

    list_1347 ::= $empty | list_1347 seq_1346

    seq_1348 ::= SET signalConditionInformation list_1347

    opt_1349 ::= seq_1348 | $empty

    opt_1351 ::= VALUE | $empty

    seq_1352 ::= SQLSTATE opt_1351 stringLiteral

    grp_1350 ::= seq_1352 | IDENTIFIER | REVERSE_QUOTE_ID

    opt_1353 ::= grp_1350 | $empty

    seq_1354 ::= COMMA signalConditionInformation

    list_1355 ::= $empty | list_1355 seq_1354

    seq_1356 ::= SET signalConditionInformation list_1355

    opt_1357 ::= seq_1356 | $empty

    grp_1358 ::= CLASS_ORIGIN | SUBCLASS_ORIGIN | MESSAGE_TEXT | MYSQL_ERRNO | CONSTRAINT_CATALOG | CONSTRAINT_SCHEMA | CONSTRAINT_NAME | CATALOG_NAME | SCHEMA_NAME | TABLE_NAME | COLUMN_NAME | CURSOR_NAME

    grp_1359 ::= stringLiteral | DECIMAL_LITERAL | mysqlVariable | simpleId

    grp_1360 ::= CURRENT | STACKED

    opt_1361 ::= grp_1360 | $empty

    grp_1364 ::= NUMBER | ROW_COUNT

    grp_1366 ::= NUMBER | ROW_COUNT

    grp_1365 ::= COMMA variableClause EQ grp_1366

    list_1367 ::= $empty | list_1367 grp_1365

    grp_1363 ::= variableClause EQ grp_1364 list_1367

    grp_1369 ::= decimalLiteral | variableClause

    seq_1370 ::= COMMA variableClause EQ diagnosticsConditionInformationName

    list_1371 ::= $empty | list_1371 seq_1370

    grp_1368 ::= CONDITION grp_1369 variableClause EQ diagnosticsConditionInformationName list_1371

    grp_1362 ::= grp_1363 | grp_1368

    grp_1372 ::= selectStatement | deleteStatement | insertStatement | replaceStatement | updateStatement

    grp_1373 ::= DOT_ID | DOT uid

    opt_1374 ::= grp_1373 | $empty

    opt_1375 ::= dottedId | $empty

    seq_1376 ::= dottedId opt_1375

    opt_1377 ::= seq_1376 | $empty

    opt_1378 ::= dottedId | $empty

    grp_1380 ::= uid | STRING_LITERAL

    seq_1381 ::= LPAREN decimalLiteral RPAREN

    opt_1382 ::= seq_1381 | $empty

    grp_1379 ::= grp_1380 opt_1382 | expression

    grp_1383 ::= ASC | DESC

    opt_1384 ::= grp_1383 | $empty

    grp_1385 ::= LOCAL_ID | HOST_IP_ADDRESS | AT

    seq_1386 ::= COLON decimalLiteral MINUS decimalLiteral

    list_1387 ::= seq_1386 | list_1387 seq_1386

    seq_1388 ::= COMMA decimalLiteral

    opt_1389 ::= seq_1388 | $empty

    seq_1390 ::= COMMA xuidStringId opt_1389

    opt_1391 ::= seq_1390 | $empty

    list_1392 ::= HEXADECIMAL_LITERAL | list_1392 HEXADECIMAL_LITERAL

    opt_1394 ::= STRING_CHARSET_NAME | $empty

    grp_1393 ::= opt_1394 STRING_LITERAL | START_NATIONAL_STRING_LITERAL

    list_1395 ::= STRING_LITERAL | list_1395 STRING_LITERAL

    opt_1397 ::= STRING_CHARSET_NAME | $empty

    grp_1396 ::= opt_1397 STRING_LITERAL | START_NATIONAL_STRING_LITERAL

    seq_1398 ::= COLLATE collationName

    opt_1399 ::= seq_1398 | $empty

    opt_1400 ::= STRING_CHARSET_NAME | $empty

    opt_1401 ::= NOT | $empty

    grp_1402 ::= NULL_LITERAL | NULL_SPEC_LITERAL

    opt_1403 ::= NOT | $empty

    grp_1404 ::= NULL_LITERAL | NULL_SPEC_LITERAL

    grp_1405 ::= CHAR | CHARACTER | VARCHAR | TINYTEXT | TEXT | MEDIUMTEXT | LONGTEXT | NCHAR | NVARCHAR | LONG

    opt_1406 ::= VARYING | $empty

    opt_1407 ::= lengthOneDimension | $empty

    opt_1408 ::= BINARY | $empty

    seq_1409 ::= charSet charsetName

    opt_1410 ::= seq_1409 | $empty

    grp_1411 ::= COLLATE collationName | BINARY

    opt_1412 ::= grp_1411 | $empty

    grp_1413 ::= VARCHAR | CHARACTER | CHAR

    opt_1414 ::= lengthOneDimension | $empty

    opt_1415 ::= BINARY | $empty

    opt_1416 ::= lengthOneDimension | $empty

    opt_1417 ::= BINARY | $empty

    grp_1418 ::= CHAR | CHARACTER

    opt_1419 ::= lengthOneDimension | $empty

    opt_1420 ::= BINARY | $empty

    grp_1421 ::= TINYINT | SMALLINT | MEDIUMINT | INT | INTEGER | BIGINT | MIDDLEINT | INT1 | INT2 | INT3 | INT4 | INT8

    opt_1422 ::= lengthOneDimension | $empty

    grp_1423 ::= SIGNED | UNSIGNED | ZEROFILL

    list_1424 ::= $empty | list_1424 grp_1423

    opt_1425 ::= lengthTwoDimension | $empty

    grp_1426 ::= SIGNED | UNSIGNED | ZEROFILL

    list_1427 ::= $empty | list_1427 grp_1426

    opt_1428 ::= PRECISION | $empty

    opt_1429 ::= lengthTwoDimension | $empty

    grp_1430 ::= SIGNED | UNSIGNED | ZEROFILL

    list_1431 ::= $empty | list_1431 grp_1430

    grp_1432 ::= DECIMAL | DEC | FIXED | NUMERIC | FLOAT | FLOAT4 | FLOAT8

    opt_1433 ::= lengthTwoOptionalDimension | $empty

    grp_1434 ::= SIGNED | UNSIGNED | ZEROFILL

    list_1435 ::= $empty | list_1435 grp_1434

    grp_1436 ::= DATE | TINYBLOB | MEDIUMBLOB | LONGBLOB | BOOL | BOOLEAN | SERIAL

    grp_1437 ::= BIT | TIME | TIMESTAMP | DATETIME | BINARY | VARBINARY | BLOB | YEAR

    opt_1438 ::= lengthOneDimension | $empty

    grp_1439 ::= ENUM | SET

    opt_1440 ::= BINARY | $empty

    seq_1441 ::= charSet charsetName

    opt_1442 ::= seq_1441 | $empty

    grp_1443 ::= GEOMETRYCOLLECTION | GEOMCOLLECTION | LINESTRING | MULTILINESTRING | MULTIPOINT | MULTIPOLYGON | POINT | POLYGON | JSON | GEOMETRY

    opt_1444 ::= VARCHAR | $empty

    opt_1445 ::= BINARY | $empty

    seq_1446 ::= charSet charsetName

    opt_1447 ::= seq_1446 | $empty

    seq_1448 ::= COLLATE collationName

    opt_1449 ::= seq_1448 | $empty

    seq_1450 ::= COMMA collectionOption

    list_1451 ::= $empty | list_1451 seq_1450

    grp_1453 ::= BINARY | NCHAR

    opt_1454 ::= lengthOneDimension | $empty

    opt_1455 ::= lengthOneDimension | $empty

    seq_1456 ::= charSet charsetName

    opt_1457 ::= seq_1456 | $empty

    grp_1458 ::= DATE | DATETIME | TIME | JSON | INT | INTEGER

    opt_1459 ::= lengthTwoOptionalDimension | $empty

    grp_1460 ::= SIGNED | UNSIGNED

    opt_1461 ::= INTEGER | $empty

    grp_1452 ::= grp_1453 opt_1454 | CHAR opt_1455 opt_1457 | grp_1458 | DECIMAL opt_1459 | grp_1460 opt_1461

    opt_1462 ::= ARRAY | $empty

    seq_1463 ::= COMMA decimalLiteral

    opt_1464 ::= seq_1463 | $empty

    seq_1465 ::= COMMA uid

    list_1466 ::= $empty | list_1466 seq_1465

    seq_1467 ::= COMMA tableName

    list_1468 ::= $empty | list_1468 seq_1467

    seq_1469 ::= COMMA indexColumnName

    list_1470 ::= $empty | list_1470 seq_1469

    seq_1471 ::= COMMA expression

    list_1472 ::= $empty | list_1472 seq_1471

    seq_1473 ::= COMMA expressionOrDefault

    list_1474 ::= $empty | list_1474 seq_1473

    seq_1475 ::= COMMA constant

    list_1476 ::= $empty | list_1476 seq_1475

    seq_1477 ::= COMMA STRING_LITERAL

    list_1478 ::= $empty | list_1478 seq_1477

    seq_1479 ::= COMMA LOCAL_ID

    list_1480 ::= $empty | list_1480 seq_1479

    opt_1481 ::= unaryOperator | $empty

    seq_1482 ::= ON UPDATE currentTimestamp

    opt_1483 ::= seq_1482 | $empty

    grp_1484 ::= LASTVAL | NEXTVAL

    grp_1485 ::= PREVIOUS | NEXT

    grp_1487 ::= CURRENT_TIMESTAMP | LOCALTIME | LOCALTIMESTAMP | CURDATE | CURTIME

    opt_1488 ::= decimalLiteral | $empty

    seq_1489 ::= LPAREN opt_1488 RPAREN

    opt_1490 ::= seq_1489 | $empty

    opt_1491 ::= decimalLiteral | $empty

    grp_1486 ::= grp_1487 opt_1490 | NOW LPAREN opt_1491 RPAREN

    opt_1492 ::= functionArgs | $empty

    opt_1493 ::= functionArgs | $empty

    grp_1494 ::= CURRENT_DATE | CURRENT_TIME | CURRENT_TIMESTAMP | CURDATE | CURTIME | CURRENT_USER | LOCALTIME | UTC_TIMESTAMP | SCHEMA

    seq_1495 ::= LPAREN RPAREN

    opt_1496 ::= seq_1495 | $empty

    list_1497 ::= caseFuncAlternative | list_1497 caseFuncAlternative

    seq_1498 ::= ELSE functionArg

    opt_1499 ::= seq_1498 | $empty

    list_1500 ::= caseFuncAlternative | list_1500 caseFuncAlternative

    seq_1501 ::= ELSE functionArg

    opt_1502 ::= seq_1501 | $empty

    seq_1503 ::= USING charsetName

    opt_1504 ::= seq_1503 | $empty

    grp_1505 ::= stringLiteral | expression

    grp_1506 ::= stringLiteral | expression

    grp_1507 ::= SUBSTR | SUBSTRING

    grp_1508 ::= stringLiteral | expression

    grp_1509 ::= decimalLiteral | expression

    grp_1511 ::= decimalLiteral | expression

    grp_1510 ::= FOR grp_1511

    opt_1512 ::= grp_1510 | $empty

    grp_1513 ::= BOTH | LEADING | TRAILING

    grp_1514 ::= stringLiteral | expression

    opt_1515 ::= grp_1514 | $empty

    grp_1516 ::= stringLiteral | expression

    grp_1517 ::= stringLiteral | expression

    grp_1518 ::= stringLiteral | expression

    grp_1519 ::= stringLiteral | expression

    grp_1521 ::= CHAR | BINARY

    grp_1520 ::= AS grp_1521 LPAREN decimalLiteral RPAREN

    opt_1522 ::= grp_1520 | $empty

    opt_1523 ::= levelsInWeightString | $empty

    grp_1524 ::= stringLiteral | expression

    grp_1525 ::= DATE | TIME | DATETIME

    seq_1526 ::= RETURNING convertedDataType

    opt_1527 ::= seq_1526 | $empty

    opt_1528 ::= jsonOnEmpty | $empty

    opt_1529 ::= jsonOnError | $empty

    seq_1530 ::= COMMA levelInWeightListElement

    list_1531 ::= $empty | list_1531 seq_1530

    grp_1532 ::= ASC | DESC | REVERSE

    opt_1533 ::= grp_1532 | $empty

    grp_1534 ::= AVG | MAX | MIN | SUM

    grp_1535 ::= ALL | DISTINCT

    opt_1536 ::= grp_1535 | $empty

    opt_1537 ::= overClause | $empty

    opt_1539 ::= ALL | $empty

    grp_1538 ::= STAR | opt_1539 functionArg | DISTINCT functionArgs

    opt_1540 ::= overClause | $empty

    grp_1541 ::= BIT_AND | BIT_OR | BIT_XOR | STD | STDDEV | STDDEV_POP | STDDEV_SAMP | VAR_POP | VAR_SAMP | VARIANCE

    opt_1542 ::= ALL | $empty

    opt_1543 ::= overClause | $empty

    opt_1544 ::= DISTINCT | $empty

    seq_1545 ::= COMMA orderByExpression

    list_1546 ::= $empty | list_1546 seq_1545

    seq_1547 ::= ORDER BY orderByExpression list_1546

    opt_1548 ::= seq_1547 | $empty

    seq_1549 ::= SEPARATOR STRING_LITERAL

    opt_1550 ::= seq_1549 | $empty

    grp_1551 ::= LAG | LEAD

    seq_1552 ::= COMMA decimalLiteral

    opt_1553 ::= seq_1552 | $empty

    seq_1554 ::= COMMA decimalLiteral

    opt_1555 ::= seq_1554 | $empty

    grp_1556 ::= FIRST_VALUE | LAST_VALUE

    grp_1557 ::= CUME_DIST | DENSE_RANK | PERCENT_RANK | RANK | ROW_NUMBER

    opt_1559 ::= windowSpec | $empty

    grp_1558 ::= LPAREN opt_1559 RPAREN | windowName

    opt_1560 ::= windowName | $empty

    opt_1561 ::= partitionClause | $empty

    opt_1562 ::= orderByClause | $empty

    opt_1563 ::= frameClause | $empty

    grp_1564 ::= PRECEDING | FOLLOWING

    grp_1565 ::= PRECEDING | FOLLOWING

    seq_1566 ::= COMMA expression

    list_1567 ::= $empty | list_1567 seq_1566

    grp_1568 ::= PASSWORD | OLD_PASSWORD

    grp_1569 ::= constant | fullColumnName | functionCall | expression

    grp_1571 ::= constant | fullColumnName | functionCall | expression

    grp_1570 ::= COMMA grp_1571

    list_1572 ::= $empty | list_1572 grp_1570

    grp_1573 ::= NOT | BANG

    opt_1574 ::= NOT | $empty

    grp_1575 ::= TRUE | FALSE | UNKNOWN

    opt_1576 ::= NOT | $empty

    grp_1577 ::= selectStatement | expressions

    grp_1578 ::= ALL | ANY | SOME

    opt_1579 ::= NOT | $empty

    opt_1580 ::= NOT | $empty

    seq_1581 ::= ESCAPE STRING_LITERAL

    opt_1582 ::= seq_1581 | $empty

    opt_1583 ::= NOT | $empty

    grp_1584 ::= REGEXP | RLIKE

    seq_1585 ::= COMMA expression

    list_1586 ::= $empty | list_1586 seq_1585

    seq_1587 ::= COMMA expression

    list_1588 ::= seq_1587 | list_1588 seq_1587

%End
