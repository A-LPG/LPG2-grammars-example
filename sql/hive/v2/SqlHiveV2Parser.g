-- AUTO-GENERATED from antlr/grammars-v4 sql/hive/v2 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=SqlHiveV2Parser
%options package=lpg.grammars.sql.hive.v2
%options template=dtParserTemplateF.gi
%options import_terminals=SqlHiveV2Lexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    statements
%End

%Rules
    statements ::= list_2

    statementSeparator ::= SEMICOLON

    empty ::= statementSeparator

    statement ::= explainStatement
           | execStatement

    explainStatement ::= KW_EXPLAIN grp_3

    explainOption ::= KW_EXTENDED
           | KW_FORMATTED
           | KW_DEPENDENCY
           | KW_LOGICAL
           | KW_AUTHORIZATION
           | KW_ANALYZE
           | KW_REOPTIMIZATION
           | seq_7

    vectorizationOnly ::= KW_ONLY

    vectorizatonDetail ::= KW_SUMMARY
           | KW_OPERATOR
           | KW_EXPRESSION
           | KW_DETAIL

    execStatement ::= queryStatementExpression
           | loadStatement
           | exportStatement
           | importStatement
           | replDumpStatement
           | replLoadStatement
           | replStatusStatement
           | ddlStatement
           | deleteStatement
           | updateStatement
           | sqlTransactionStatement
           | mergeStatement

    loadStatement ::= KW_LOAD KW_DATA opt_8 KW_INPATH StringLiteral opt_9 KW_INTO KW_TABLE tableOrPartition opt_10

    replicationClause ::= KW_FOR opt_11 KW_REPLICATION LPAREN StringLiteral RPAREN

    exportStatement ::= KW_EXPORT KW_TABLE tableOrPartition KW_TO StringLiteral opt_12

    importStatement ::= KW_IMPORT opt_15 KW_FROM StringLiteral opt_16

    replDumpStatement ::= KW_REPL KW_DUMP identifier opt_18 opt_24 opt_26

    replLoadStatement ::= KW_REPL KW_LOAD opt_30 KW_FROM StringLiteral opt_32

    replConfigs ::= LPAREN replConfigsList RPAREN

    replConfigsList ::= keyValueProperty list_34

    replStatusStatement ::= KW_REPL KW_STATUS identifier opt_36 opt_38

    ddlStatement ::= createDatabaseStatement
           | switchDatabaseStatement
           | dropDatabaseStatement
           | createTableStatement
           | dropTableStatement
           | truncateTableStatement
           | alterStatement
           | descStatement
           | showStatement
           | metastoreCheck
           | createViewStatement
           | createMaterializedViewStatement
           | dropViewStatement
           | dropMaterializedViewStatement
           | createFunctionStatement
           | createMacroStatement
           | dropFunctionStatement
           | reloadFunctionStatement
           | dropMacroStatement
           | analyzeStatement
           | lockStatement
           | unlockStatement
           | lockDatabase
           | unlockDatabase
           | createRoleStatement
           | dropRoleStatement
           | grantPrivileges
           | revokePrivileges
           | showGrants
           | showRoleGrants
           | showRolePrincipals
           | showRoles
           | grantRole
           | revokeRole
           | setRole
           | showCurrentRole
           | abortTransactionStatement
           | killQueryStatement
           | createIndexStatement
           | dropIndexStatement

    ifExists ::= KW_IF KW_EXISTS

    restrictOrCascade ::= KW_RESTRICT
           | KW_CASCADE

    ifNotExists ::= KW_IF KW_NOT KW_EXISTS

    rewriteEnabled ::= KW_ENABLE KW_REWRITE

    rewriteDisabled ::= KW_DISABLE KW_REWRITE

    storedAsDirs ::= KW_STORED KW_AS KW_DIRECTORIES

    orReplace ::= KW_OR KW_REPLACE

    createDatabaseStatement ::= KW_CREATE grp_39 opt_40 identifier opt_41 opt_42 opt_44

    dbLocation ::= KW_LOCATION StringLiteral

    dbProperties ::= LPAREN dbPropertiesList RPAREN

    dbPropertiesList ::= keyValueProperty list_46

    switchDatabaseStatement ::= KW_USE identifier

    dropDatabaseStatement ::= KW_DROP grp_47 opt_48 identifier opt_49

    databaseComment ::= KW_COMMENT StringLiteral

    createTableStatement ::= KW_CREATE opt_50 opt_51 KW_TABLE opt_52 tableName grp_53

    truncateTableStatement ::= KW_TRUNCATE KW_TABLE tablePartitionPrefix opt_71

    dropTableStatement ::= KW_DROP KW_TABLE opt_72 tableName opt_73 opt_74

    alterStatement ::= KW_ALTER KW_TABLE tableName alterTableStatementSuffix
           | KW_ALTER KW_VIEW tableName opt_75 alterViewStatementSuffix
           | KW_ALTER KW_MATERIALIZED KW_VIEW tableName alterMaterializedViewStatementSuffix
           | KW_ALTER grp_76 alterDatabaseStatementSuffix
           | KW_ALTER KW_INDEX alterIndexStatementSuffix

    alterTableStatementSuffix ::= alterStatementSuffixRename
           | alterStatementSuffixDropPartitions
           | alterStatementSuffixAddPartitions
           | alterStatementSuffixTouch
           | alterStatementSuffixArchive
           | alterStatementSuffixUnArchive
           | alterStatementSuffixProperties
           | alterStatementSuffixSkewedby
           | alterStatementSuffixExchangePartition
           | alterStatementPartitionKeyType
           | alterStatementSuffixDropConstraint
           | alterStatementSuffixAddConstraint
           | opt_77 alterTblPartitionStatementSuffix
           | alterStatementSuffixSetOwner

    alterTblPartitionStatementSuffix ::= alterStatementSuffixFileFormat
           | alterStatementSuffixLocation
           | alterStatementSuffixMergeFiles
           | alterStatementSuffixSerdeProperties
           | alterStatementSuffixRenamePart
           | alterStatementSuffixBucketNum
           | alterTblPartitionStatementSuffixSkewedLocation
           | alterStatementSuffixClusterbySortby
           | alterStatementSuffixCompact
           | alterStatementSuffixUpdateStatsCol
           | alterStatementSuffixUpdateStats
           | alterStatementSuffixRenameCol
           | alterStatementSuffixAddCol

    alterStatementPartitionKeyType ::= KW_PARTITION KW_COLUMN LPAREN columnNameType RPAREN

    alterViewStatementSuffix ::= alterViewSuffixProperties
           | alterStatementSuffixRename
           | alterStatementSuffixAddPartitions
           | alterStatementSuffixDropPartitions
           | selectStatementWithCTE

    alterMaterializedViewStatementSuffix ::= alterMaterializedViewSuffixRewrite
           | alterMaterializedViewSuffixRebuild

    alterDatabaseStatementSuffix ::= alterDatabaseSuffixProperties
           | alterDatabaseSuffixSetOwner
           | alterDatabaseSuffixSetLocation

    alterDatabaseSuffixProperties ::= identifier KW_SET KW_DBPROPERTIES dbProperties

    alterDatabaseSuffixSetOwner ::= identifier KW_SET KW_OWNER principalName

    alterDatabaseSuffixSetLocation ::= identifier KW_SET KW_LOCATION StringLiteral

    alterStatementSuffixRename ::= KW_RENAME KW_TO tableName

    alterStatementSuffixAddCol ::= grp_78 KW_COLUMNS LPAREN columnNameTypeList RPAREN opt_79

    alterStatementSuffixAddConstraint ::= KW_ADD grp_80

    alterStatementSuffixDropConstraint ::= KW_DROP KW_CONSTRAINT identifier

    alterStatementSuffixRenameCol ::= KW_CHANGE opt_81 identifier identifier colType opt_82 opt_84 opt_85 opt_86

    alterStatementSuffixUpdateStatsCol ::= KW_UPDATE KW_STATISTICS KW_FOR opt_87 identifier KW_SET tableProperties opt_89

    alterStatementSuffixUpdateStats ::= KW_UPDATE KW_STATISTICS KW_SET tableProperties

    alterStatementChangeColPosition ::= KW_FIRST
           | KW_AFTER identifier

    alterStatementSuffixAddPartitions ::= KW_ADD opt_90 list_91

    alterStatementSuffixAddPartitionsElement ::= partitionSpec opt_92

    alterStatementSuffixTouch ::= KW_TOUCH list_93

    alterStatementSuffixArchive ::= KW_ARCHIVE list_94

    alterStatementSuffixUnArchive ::= KW_UNARCHIVE list_95

    partitionLocation ::= KW_LOCATION StringLiteral

    alterStatementSuffixDropPartitions ::= KW_DROP opt_96 dropPartitionSpec list_98 opt_99 opt_100

    alterStatementSuffixProperties ::= KW_SET KW_TBLPROPERTIES tableProperties
           | KW_UNSET KW_TBLPROPERTIES opt_101 tableProperties

    alterViewSuffixProperties ::= KW_SET KW_TBLPROPERTIES tableProperties
           | KW_UNSET KW_TBLPROPERTIES opt_102 tableProperties

    alterMaterializedViewSuffixRewrite ::= grp_103

    alterMaterializedViewSuffixRebuild ::= KW_REBUILD

    alterStatementSuffixSerdeProperties ::= KW_SET KW_SERDE StringLiteral opt_105
           | KW_SET KW_SERDEPROPERTIES tableProperties

    alterIndexStatementSuffix ::= identifier KW_ON tableName opt_106 KW_REBUILD

    alterStatementSuffixFileFormat ::= KW_SET KW_FILEFORMAT fileFormat

    alterStatementSuffixClusterbySortby ::= KW_NOT KW_CLUSTERED
           | KW_NOT KW_SORTED
           | tableBuckets

    alterTblPartitionStatementSuffixSkewedLocation ::= KW_SET KW_SKEWED KW_LOCATION skewedLocations

    skewedLocations ::= LPAREN skewedLocationsList RPAREN

    skewedLocationsList ::= skewedLocationMap list_108

    skewedLocationMap ::= skewedValueLocationElement EQUAL StringLiteral

    alterStatementSuffixLocation ::= KW_SET KW_LOCATION StringLiteral

    alterStatementSuffixSkewedby ::= tableSkewed
           | KW_NOT KW_SKEWED
           | KW_NOT storedAsDirs

    alterStatementSuffixExchangePartition ::= KW_EXCHANGE partitionSpec KW_WITH KW_TABLE tableName

    alterStatementSuffixRenamePart ::= KW_RENAME KW_TO partitionSpec

    alterStatementSuffixStatsPart ::= KW_UPDATE KW_STATISTICS KW_FOR opt_109 identifier KW_SET tableProperties opt_111

    alterStatementSuffixMergeFiles ::= KW_CONCATENATE

    alterStatementSuffixBucketNum ::= KW_INTO Number KW_BUCKETS

    createIndexStatement ::= KW_CREATE KW_INDEX identifier KW_ON KW_TABLE tableName columnParenthesesList KW_AS StringLiteral opt_113 opt_115 opt_117 opt_119 opt_122 opt_124 opt_125 opt_126

    locationPath ::= identifier list_128

    dropIndexStatement ::= KW_DROP KW_INDEX identifier KW_ON tableName

    tablePartitionPrefix ::= tableName opt_129

    blocking ::= KW_AND KW_WAIT

    alterStatementSuffixCompact ::= KW_COMPACT StringLiteral opt_130 opt_132

    alterStatementSuffixSetOwner ::= KW_SET KW_OWNER principalName

    fileFormat ::= KW_INPUTFORMAT StringLiteral KW_OUTPUTFORMAT StringLiteral KW_SERDE StringLiteral opt_134
           | identifier

    inputFileFormat ::= KW_INPUTFORMAT StringLiteral KW_SERDE StringLiteral

    tabTypeExpr ::= identifier opt_136 opt_141

    partTypeExpr ::= tabTypeExpr opt_142

    tabPartColTypeExpr ::= tableName opt_143 opt_144

    descStatement ::= grp_145 grp_146

    analyzeStatement ::= KW_ANALYZE KW_TABLE tableOrPartition grp_152

    showStatement ::= KW_SHOW grp_157 opt_159
           | KW_SHOW KW_TABLES opt_162 opt_164
           | KW_SHOW KW_VIEWS opt_167 opt_169
           | KW_SHOW KW_MATERIALIZED KW_VIEWS opt_172 opt_174
           | KW_SHOW KW_COLUMNS grp_175 tableName opt_178 opt_180
           | KW_SHOW KW_FUNCTIONS opt_182
           | KW_SHOW KW_PARTITIONS tableName opt_183
           | KW_SHOW KW_CREATE grp_184
           | KW_SHOW KW_TABLE KW_EXTENDED opt_188 KW_LIKE showStmtIdentifier opt_189
           | KW_SHOW KW_TBLPROPERTIES tableName opt_191
           | KW_SHOW KW_LOCKS grp_192
           | KW_SHOW KW_COMPACTIONS
           | KW_SHOW KW_TRANSACTIONS
           | KW_SHOW KW_CONF StringLiteral
           | KW_SHOW KW_RESOURCE grp_197

    lockStatement ::= KW_LOCK KW_TABLE tableName opt_199 lockMode

    lockDatabase ::= KW_LOCK grp_200 identifier lockMode

    lockMode ::= KW_SHARED
           | KW_EXCLUSIVE

    unlockStatement ::= KW_UNLOCK KW_TABLE tableName opt_201

    unlockDatabase ::= KW_UNLOCK grp_202 identifier

    createRoleStatement ::= KW_CREATE KW_ROLE identifier

    dropRoleStatement ::= KW_DROP KW_ROLE identifier

    grantPrivileges ::= KW_GRANT privilegeList opt_203 KW_TO principalSpecification opt_204

    revokePrivileges ::= KW_REVOKE opt_205 privilegeList opt_206 KW_FROM principalSpecification

    grantRole ::= KW_GRANT opt_207 identifier list_209 KW_TO principalSpecification opt_210

    revokeRole ::= KW_REVOKE opt_211 opt_212 identifier list_214 KW_FROM principalSpecification

    showRoleGrants ::= KW_SHOW KW_ROLE KW_GRANT principalName

    showRoles ::= KW_SHOW KW_ROLES

    showCurrentRole ::= KW_SHOW KW_CURRENT KW_ROLES

    setRole ::= KW_SET KW_ROLE grp_215

    showGrants ::= KW_SHOW KW_GRANT opt_216 opt_218

    showRolePrincipals ::= KW_SHOW KW_PRINCIPALS identifier

    privilegeIncludeColObject ::= KW_ALL
           | privObjectCols

    privilegeObject ::= KW_ON privObject

    privObject ::= grp_219 identifier
           | opt_220 tableName opt_221
           | KW_URI StringLiteral
           | KW_SERVER identifier

    privObjectCols ::= grp_222 identifier
           | opt_223 tableName opt_225 opt_226
           | KW_URI StringLiteral
           | KW_SERVER identifier

    privilegeList ::= privlegeDef list_228

    privlegeDef ::= privilegeType opt_230

    privilegeType ::= KW_ALL
           | KW_ALTER
           | KW_UPDATE
           | KW_CREATE
           | KW_DROP
           | KW_LOCK
           | KW_SELECT
           | KW_SHOW_DATABASE
           | KW_INSERT
           | KW_DELETE

    principalSpecification ::= principalName list_232

    principalName ::= KW_USER principalIdentifier
           | KW_GROUP principalIdentifier
           | KW_ROLE identifier

    withGrantOption ::= KW_WITH KW_GRANT KW_OPTION

    grantOptionFor ::= KW_GRANT KW_OPTION KW_FOR

    adminOptionFor ::= KW_ADMIN KW_OPTION KW_FOR

    withAdminOption ::= KW_WITH KW_ADMIN KW_OPTION

    metastoreCheck ::= KW_MSCK opt_233 grp_234

    resourceList ::= resource list_240

    resource ::= resourceType StringLiteral

    resourceType ::= KW_JAR
           | KW_FILE
           | KW_ARCHIVE

    createFunctionStatement ::= KW_CREATE opt_241 KW_FUNCTION functionIdentifier KW_AS StringLiteral opt_243

    dropFunctionStatement ::= KW_DROP opt_244 KW_FUNCTION opt_245 functionIdentifier

    reloadFunctionStatement ::= KW_RELOAD KW_FUNCTION

    createMacroStatement ::= KW_CREATE KW_TEMPORARY KW_MACRO Identifier LPAREN opt_246 RPAREN expression

    dropMacroStatement ::= KW_DROP KW_TEMPORARY KW_MACRO opt_247 Identifier

    createViewStatement ::= KW_CREATE opt_248 KW_VIEW opt_249 tableName opt_251 opt_252 opt_253 opt_254 KW_AS selectStatementWithCTE

    createMaterializedViewStatement ::= KW_CREATE KW_MATERIALIZED KW_VIEW opt_255 tableName opt_256 opt_257 opt_258 opt_259 opt_260 opt_261 KW_AS selectStatementWithCTE

    viewPartition ::= KW_PARTITIONED KW_ON LPAREN columnNameList RPAREN

    dropViewStatement ::= KW_DROP KW_VIEW opt_262 viewName

    dropMaterializedViewStatement ::= KW_DROP KW_MATERIALIZED KW_VIEW opt_263 viewName

    showFunctionIdentifier ::= functionIdentifier
           | StringLiteral

    showStmtIdentifier ::= identifier
           | StringLiteral

    tableComment ::= KW_COMMENT StringLiteral

    tablePartition ::= KW_PARTITIONED KW_BY LPAREN columnNameTypeConstraint list_265 RPAREN

    tableBuckets ::= KW_CLUSTERED KW_BY LPAREN columnNameList RPAREN opt_267 KW_INTO Number KW_BUCKETS

    tableSkewed ::= KW_SKEWED KW_BY LPAREN columnNameList RPAREN KW_ON LPAREN skewedValueElement RPAREN opt_268

    rowFormat ::= rowFormatSerde
           | rowFormatDelimited

    recordReader ::= KW_RECORDREADER StringLiteral

    recordWriter ::= KW_RECORDWRITER StringLiteral

    rowFormatSerde ::= KW_ROW KW_FORMAT KW_SERDE StringLiteral opt_270

    rowFormatDelimited ::= KW_ROW KW_FORMAT KW_DELIMITED opt_271 opt_272 opt_273 opt_274 opt_275

    tableRowFormat ::= rowFormatDelimited
           | rowFormatSerde

    tablePropertiesPrefixed ::= KW_TBLPROPERTIES tableProperties

    tableProperties ::= LPAREN tablePropertiesList RPAREN

    tablePropertiesList ::= keyValueProperty list_277
           | keyProperty list_279

    keyValueProperty ::= StringLiteral EQUAL StringLiteral

    keyProperty ::= StringLiteral

    tableRowFormatFieldIdentifier ::= KW_FIELDS KW_TERMINATED KW_BY StringLiteral opt_281

    tableRowFormatCollItemsIdentifier ::= KW_COLLECTION KW_ITEMS KW_TERMINATED KW_BY StringLiteral

    tableRowFormatMapKeysIdentifier ::= KW_MAP KW_KEYS KW_TERMINATED KW_BY StringLiteral

    tableRowFormatLinesIdentifier ::= KW_LINES KW_TERMINATED KW_BY StringLiteral

    tableRowNullFormat ::= KW_NULL KW_DEFINED KW_AS StringLiteral

    tableFileFormat ::= KW_STORED KW_AS KW_INPUTFORMAT StringLiteral KW_OUTPUTFORMAT StringLiteral opt_283
           | KW_STORED KW_BY StringLiteral opt_285
           | KW_STORED KW_AS identifier

    tableLocation ::= KW_LOCATION StringLiteral

    columnNameTypeList ::= columnNameType list_287

    columnNameTypeOrConstraintList ::= columnNameTypeOrConstraint list_289

    columnNameColonTypeList ::= columnNameColonType list_291

    columnNameList ::= columnName list_293

    columnName ::= identifier

    extColumnName ::= identifier list_296

    columnNameOrderList ::= columnNameOrder list_298

    columnParenthesesList ::= LPAREN columnNameList RPAREN

    enableValidateSpecification ::= enableSpecification opt_299
           | enforcedSpecification

    enableSpecification ::= KW_ENABLE
           | KW_DISABLE

    validateSpecification ::= KW_VALIDATE
           | KW_NOVALIDATE

    enforcedSpecification ::= KW_ENFORCED
           | KW_NOT KW_ENFORCED

    relySpecification ::= KW_RELY
           | opt_300

    createConstraint ::= opt_302 pkConstraint opt_303

    alterConstraintWithName ::= KW_CONSTRAINT identifier pkConstraint opt_304

    pkConstraint ::= tableConstraintPrimaryKey columnParenthesesList

    createForeignKey ::= opt_306 KW_FOREIGN KW_KEY columnParenthesesList KW_REFERENCES tableName columnParenthesesList opt_307

    alterForeignKeyWithName ::= KW_CONSTRAINT identifier KW_FOREIGN KW_KEY columnParenthesesList KW_REFERENCES tableName columnParenthesesList opt_308

    skewedValueElement ::= skewedColumnValues
           | skewedColumnValuePairList

    skewedColumnValuePairList ::= skewedColumnValuePair list_310

    skewedColumnValuePair ::= LPAREN skewedColumnValues RPAREN

    skewedColumnValues ::= skewedColumnValue list_312

    skewedColumnValue ::= constant

    skewedValueLocationElement ::= skewedColumnValue
           | skewedColumnValuePair

    orderSpecification ::= KW_ASC
           | KW_DESC

    nullOrdering ::= KW_NULLS KW_FIRST
           | KW_NULLS KW_LAST

    columnNameOrder ::= identifier opt_313 opt_314

    columnNameCommentList ::= columnNameComment list_316

    columnNameComment ::= identifier opt_318

    columnRefOrder ::= expression opt_319 opt_320

    columnNameType ::= identifier colType opt_322

    columnNameTypeOrConstraint ::= tableConstraint
           | columnNameTypeConstraint

    tableConstraint ::= createForeignKey
           | createConstraint

    columnNameTypeConstraint ::= identifier colType opt_323 opt_325

    columnConstraint ::= foreignKeyConstraint
           | colConstraint

    foreignKeyConstraint ::= opt_327 KW_REFERENCES tableName LPAREN columnName RPAREN opt_328

    colConstraint ::= opt_330 tableConstraintPrimaryKey opt_331

    alterColumnConstraint ::= alterForeignKeyConstraint
           | alterColConstraint

    alterForeignKeyConstraint ::= opt_333 KW_REFERENCES tableName LPAREN columnName RPAREN opt_334

    alterColConstraint ::= opt_336 tableConstraintPrimaryKey opt_337

    tableConstraintPrimaryKey ::= KW_PRIMARY KW_KEY

    constraintOptsCreate ::= enableValidateSpecification relySpecification

    constraintOptsAlter ::= enableValidateSpecification relySpecification

    columnNameColonType ::= identifier COLON colType opt_339

    colType ::= type_db_col

    colTypeList ::= colType list_341

    type_db_col ::= primitiveType
           | listType
           | structType
           | mapType
           | unionType

    primitiveType ::= KW_TINYINT
           | KW_SMALLINT
           | KW_INT
           | KW_BIGINT
           | KW_BOOLEAN
           | KW_FLOAT
           | KW_DOUBLE opt_342
           | KW_DATE
           | KW_DATETIME
           | KW_TIMESTAMP
           | KW_TIMESTAMPLOCALTZ
           | KW_TIMESTAMP KW_WITH KW_LOCAL KW_TIME KW_ZONE
           | KW_STRING
           | KW_BINARY
           | KW_DECIMAL opt_346
           | KW_VARCHAR LPAREN Number RPAREN
           | KW_CHAR LPAREN Number RPAREN

    listType ::= KW_ARRAY LESSTHAN type_db_col GREATERTHAN

    structType ::= KW_STRUCT LESSTHAN columnNameColonTypeList GREATERTHAN

    mapType ::= KW_MAP LESSTHAN primitiveType COMMA type_db_col GREATERTHAN

    unionType ::= KW_UNIONTYPE LESSTHAN colTypeList GREATERTHAN

    setOperator ::= KW_UNION KW_ALL
           | KW_UNION opt_347
           | KW_INTERSECT KW_ALL
           | KW_INTERSECT opt_348
           | KW_EXCEPT KW_ALL
           | KW_EXCEPT opt_349
           | KW_MINUS KW_ALL
           | KW_MINUS opt_350

    queryStatementExpression ::= opt_351 queryStatementExpressionBody

    queryStatementExpressionBody ::= fromStatement
           | regularBody

    withClause ::= KW_WITH cteStatement list_353

    cteStatement ::= identifier KW_AS LPAREN queryStatementExpression RPAREN

    fromStatement ::= singleFromStatement list_355

    singleFromStatement ::= fromClause list_356

    regularBody ::= insertClause grp_357
           | selectStatement

    atomSelectStatement ::= selectClause opt_358 opt_359 opt_360 opt_361 opt_362
           | LPAREN selectStatement RPAREN

    selectStatement ::= atomSelectStatement opt_363 opt_364 opt_365 opt_366 opt_367 opt_368

    setOpSelectStatement ::= list_370

    selectStatementWithCTE ::= opt_371 selectStatement

    body ::= insertClause selectClause opt_372 opt_373 opt_374 opt_375 opt_376 opt_377 opt_378 opt_379 opt_380 opt_381
           | selectClause opt_382 opt_383 opt_384 opt_385 opt_386 opt_387 opt_388 opt_389 opt_390 opt_391

    insertClause ::= KW_INSERT KW_OVERWRITE destination opt_392
           | KW_INSERT KW_INTO opt_393 tableOrPartition opt_395

    destination ::= opt_396 KW_DIRECTORY StringLiteral opt_397 opt_398
           | KW_TABLE tableOrPartition

    limitClause ::= KW_LIMIT seq_401
           | KW_LIMIT Number KW_OFFSET Number

    deleteStatement ::= KW_DELETE KW_FROM tableName opt_402

    columnAssignmentClause ::= tableOrColumn EQUAL expression

    setColumnsClause ::= KW_SET columnAssignmentClause list_404

    updateStatement ::= KW_UPDATE tableName setColumnsClause opt_405

    sqlTransactionStatement ::= startTransactionStatement
           | commitStatement
           | rollbackStatement
           | setAutoCommitStatement

    startTransactionStatement ::= KW_START KW_TRANSACTION opt_409

    transactionMode ::= isolationLevel
           | transactionAccessMode

    transactionAccessMode ::= KW_READ KW_ONLY
           | KW_READ KW_WRITE

    isolationLevel ::= KW_ISOLATION KW_LEVEL levelOfIsolation

    levelOfIsolation ::= KW_SNAPSHOT

    commitStatement ::= KW_COMMIT opt_410

    rollbackStatement ::= KW_ROLLBACK opt_411

    setAutoCommitStatement ::= KW_SET KW_AUTOCOMMIT booleanValueTok

    abortTransactionStatement ::= KW_ABORT KW_TRANSACTIONS list_412

    mergeStatement ::= KW_MERGE KW_INTO tableName opt_415 KW_USING joinSourcePart KW_ON expression whenClauses

    whenClauses ::= list_417 opt_418

    whenNotMatchedClause ::= KW_WHEN KW_NOT KW_MATCHED opt_420 KW_THEN KW_INSERT KW_VALUES valueRowConstructor

    whenMatchedAndClause ::= KW_WHEN KW_MATCHED KW_AND expression KW_THEN updateOrDelete

    whenMatchedThenClause ::= KW_WHEN KW_MATCHED KW_THEN updateOrDelete

    updateOrDelete ::= KW_UPDATE setColumnsClause
           | KW_DELETE

    killQueryStatement ::= KW_KILL KW_QUERY list_421

    tableAllColumns ::= STAR
           | tableName DOT STAR

    tableOrColumn ::= identifier

    expressionList ::= expression list_423

    aliasList ::= identifier list_425

    fromClause ::= KW_FROM fromSource

    fromSource ::= uniqueJoinToken uniqueJoinSource list_427
           | joinSource

    atomjoinSource ::= tableSource list_428
           | virtualTableSource list_429
           | subQuerySource list_430
           | partitionedTableFunction list_431
           | LPAREN joinSource RPAREN

    joinSource ::= atomjoinSource list_435

    joinSourcePart ::= grp_436 list_437

    uniqueJoinSource ::= opt_438 uniqueJoinTableSource uniqueJoinExpr

    uniqueJoinExpr ::= LPAREN expressionList RPAREN

    uniqueJoinToken ::= KW_UNIQUEJOIN

    joinToken ::= KW_JOIN
           | KW_INNER KW_JOIN
           | COMMA
           | KW_CROSS KW_JOIN
           | KW_LEFT opt_439 KW_JOIN
           | KW_RIGHT opt_440 KW_JOIN
           | KW_FULL opt_441 KW_JOIN
           | KW_LEFT KW_SEMI KW_JOIN

    lateralView ::= KW_LATERAL KW_VIEW KW_OUTER function tableAlias opt_445
           | opt_446 KW_LATERAL KW_VIEW function tableAlias opt_450
           | opt_451 KW_LATERAL KW_TABLE LPAREN valuesClause RPAREN opt_452 tableAlias opt_456

    tableAlias ::= identifier

    tableBucketSample ::= KW_TABLESAMPLE LPAREN KW_BUCKET Number KW_OUT KW_OF Number opt_460 RPAREN

    splitSample ::= KW_TABLESAMPLE LPAREN Number grp_461 RPAREN
           | KW_TABLESAMPLE LPAREN ByteLengthLiteral RPAREN

    tableSample ::= tableBucketSample
           | splitSample

    tableSource ::= tableName opt_462 opt_463 opt_466

    uniqueJoinTableSource ::= tableName opt_467 opt_470

    tableName ::= identifier DOT identifier
           | identifier

    viewName ::= opt_472 identifier

    subQuerySource ::= LPAREN queryStatementExpression RPAREN opt_473 identifier

    partitioningSpec ::= partitionByClause opt_474
           | orderByClause
           | distributeByClause opt_475
           | sortByClause
           | clusterByClause

    partitionTableFunctionSource ::= subQuerySource
           | tableSource
           | partitionedTableFunction

    partitionedTableFunction ::= identifier LPAREN KW_ON partitionTableFunctionSource opt_476 opt_480 RPAREN opt_481

    whereClause ::= KW_WHERE searchCondition

    searchCondition ::= expression

    valuesClause ::= KW_VALUES valuesTableConstructor

    valuesTableConstructor ::= valueRowConstructor list_483

    valueRowConstructor ::= expressionsInParenthesis

    virtualTableSource ::= KW_TABLE LPAREN valuesClause RPAREN opt_484 tableAlias opt_488 RPAREN

    selectClause ::= KW_SELECT opt_489 grp_490
           | trfmClause

    selectList ::= selectItem list_496

    selectTrfmClause ::= LPAREN selectExpressionList RPAREN opt_497 opt_498 KW_USING StringLiteral opt_504 opt_505 opt_506

    selectItem ::= tableAllColumns
           | grp_507

    trfmClause ::= grp_515 opt_516 opt_517 KW_USING StringLiteral opt_523 opt_524 opt_525

    selectExpression ::= tableAllColumns
           | expression

    selectExpressionList ::= selectExpression list_527

    window_clause ::= KW_WINDOW window_defn list_529

    window_defn ::= identifier KW_AS window_specification

    window_specification ::= grp_530

    window_frame ::= window_range_expression
           | window_value_expression

    window_range_expression ::= KW_ROWS window_frame_start_boundary
           | KW_ROWS KW_BETWEEN window_frame_boundary KW_AND window_frame_boundary

    window_value_expression ::= KW_RANGE window_frame_start_boundary
           | KW_RANGE KW_BETWEEN window_frame_boundary KW_AND window_frame_boundary

    window_frame_start_boundary ::= KW_UNBOUNDED KW_PRECEDING
           | KW_CURRENT KW_ROW
           | Number KW_PRECEDING

    window_frame_boundary ::= KW_UNBOUNDED grp_535
           | KW_CURRENT KW_ROW
           | Number grp_536

    groupByClause ::= KW_GROUP KW_BY groupby_expression

    groupby_expression ::= rollupStandard
           | rollupOldSyntax
           | groupByEmpty

    groupByEmpty ::= LPAREN RPAREN

    rollupStandard ::= grp_537 LPAREN expression list_539 RPAREN

    rollupOldSyntax ::= expressionsNotInParenthesis opt_541 opt_545

    groupingSetExpression ::= groupingSetExpressionMultiple
           | groupingExpressionSingle

    groupingSetExpressionMultiple ::= LPAREN opt_546 list_548 RPAREN

    groupingExpressionSingle ::= expression

    havingClause ::= KW_HAVING havingCondition

    havingCondition ::= expression

    expressionsInParenthesis ::= LPAREN expressionsNotInParenthesis RPAREN

    expressionsNotInParenthesis ::= expression opt_549

    expressionPart ::= list_551

    expressions ::= expressionsInParenthesis
           | expressionsNotInParenthesis

    columnRefOrderInParenthesis ::= LPAREN columnRefOrder list_553 RPAREN

    columnRefOrderNotInParenthesis ::= columnRefOrder list_555

    orderByClause ::= KW_ORDER KW_BY columnRefOrder list_557

    clusterByClause ::= KW_CLUSTER KW_BY expressions

    partitionByClause ::= KW_PARTITION KW_BY expressions

    distributeByClause ::= KW_DISTRIBUTE KW_BY expressions

    sortByClause ::= KW_SORT KW_BY grp_558

    function ::= functionName LPAREN grp_559 RPAREN opt_567

    functionName ::= functionIdentifier
           | sql11ReservedKeywordsUsedAsFunctionName

    castExpression ::= KW_CAST LPAREN expression KW_AS primitiveType RPAREN

    caseExpression ::= KW_CASE expression list_569 opt_571 KW_END

    whenExpression ::= KW_CASE list_573 opt_575 KW_END

    floorExpression ::= KW_FLOOR LPAREN expression opt_577 RPAREN

    floorDateQualifiers ::= KW_YEAR
           | KW_QUARTER
           | KW_MONTH
           | KW_WEEK
           | KW_DAY
           | KW_HOUR
           | KW_MINUTE
           | KW_SECOND

    extractExpression ::= KW_EXTRACT LPAREN timeQualifiers KW_FROM expression RPAREN

    timeQualifiers ::= KW_YEAR
           | KW_QUARTER
           | KW_MONTH
           | KW_WEEK
           | KW_DAY
           | KW_DOW
           | KW_HOUR
           | KW_MINUTE
           | KW_SECOND

    constant ::= intervalLiteral
           | Number
           | dateLiteral
           | timestampLiteral
           | timestampLocalTZLiteral
           | StringLiteral
           | stringLiteralSequence
           | IntegralLiteral
           | NumberLiteral
           | charSetStringLiteral
           | booleanValue
           | KW_NULL

    stringLiteralSequence ::= StringLiteral list_578

    charSetStringLiteral ::= CharSetName CharSetLiteral

    dateLiteral ::= KW_DATE StringLiteral
           | KW_CURRENT_DATE

    timestampLiteral ::= KW_TIMESTAMP StringLiteral
           | KW_CURRENT_TIMESTAMP

    timestampLocalTZLiteral ::= KW_TIMESTAMPLOCALTZ StringLiteral

    intervalValue ::= StringLiteral
           | Number

    intervalLiteral ::= intervalValue intervalQualifiers

    intervalExpression ::= LPAREN intervalValue RPAREN intervalQualifiers
           | KW_INTERVAL intervalValue intervalQualifiers
           | KW_INTERVAL LPAREN expression RPAREN intervalQualifiers

    intervalQualifiers ::= KW_YEAR KW_TO KW_MONTH
           | KW_DAY KW_TO KW_SECOND
           | KW_YEAR
           | KW_MONTH
           | KW_DAY
           | KW_HOUR
           | KW_MINUTE
           | KW_SECOND

    atomExpression ::= constant
           | intervalExpression
           | castExpression
           | extractExpression
           | floorExpression
           | caseExpression
           | whenExpression
           | subQueryExpression
           | function
           | tableOrColumn
           | expressionsInParenthesis

    precedenceUnaryOperator ::= PLUS
           | MINUS
           | TILDE

    isCondition ::= opt_579 grp_580

    precedenceBitwiseXorOperator ::= BITWISEXOR

    precedenceStarOperator ::= STAR
           | DIVIDE
           | MOD
           | DIV

    precedencePlusOperator ::= PLUS
           | MINUS

    precedenceConcatenateOperator ::= CONCATENATE

    precedenceAmpersandOperator ::= AMPERSAND

    precedenceBitwiseOrOperator ::= BITWISEOR

    precedenceRegexpOperator ::= KW_LIKE
           | KW_RLIKE
           | KW_REGEXP

    precedenceComparisonOperator ::= LESSTHANOREQUALTO
           | LESSTHAN
           | GREATERTHANOREQUALTO
           | GREATERTHAN
           | EQUAL
           | EQUAL_NS
           | NOTEQUAL

    precedenceNotOperator ::= KW_NOT

    precedenceLogicOperator ::= KW_AND
           | KW_OR

    expression ::= expression precedenceLogicOperator expression
           | LPAREN expression RPAREN
           | precedenceExpression

    precedenceExpression ::= atomExpression list_584
           | precedenceUnaryOperator precedenceExpression
           | precedenceExpression KW_IS isCondition
           | precedenceExpression precedenceBitwiseXorOperator precedenceExpression
           | precedenceExpression precedenceStarOperator precedenceExpression
           | precedenceExpression precedencePlusOperator precedenceExpression
           | precedenceExpression precedenceConcatenateOperator precedenceExpression
           | precedenceExpression precedenceAmpersandOperator precedenceExpression
           | precedenceExpression precedenceBitwiseOrOperator precedenceExpression
           | precedenceExpression precedenceComparisonOperator precedenceExpression
           | precedenceExpression opt_585 precedenceRegexpOperator precedenceExpression
           | precedenceExpression opt_586 KW_LIKE grp_587 expressionsInParenthesis
           | precedenceExpression opt_588 KW_IN precedenceSimilarExpressionIn
           | precedenceExpression opt_589 KW_BETWEEN precedenceExpression KW_AND precedenceExpression
           | KW_EXISTS subQueryExpression
           | precedenceNotOperator precedenceExpression

    precedenceSimilarExpressionIn ::= subQueryExpression
           | expressionsInParenthesis

    subQueryExpression ::= LPAREN selectStatement RPAREN

    booleanValue ::= KW_TRUE
           | KW_FALSE

    booleanValueTok ::= KW_TRUE
           | KW_FALSE

    tableOrPartition ::= tableName opt_590

    partitionSpec ::= KW_PARTITION LPAREN partitionVal list_592 RPAREN

    partitionVal ::= identifier opt_594

    dropPartitionSpec ::= KW_PARTITION LPAREN dropPartitionVal list_596 RPAREN

    dropPartitionVal ::= identifier dropPartitionOperator constant

    dropPartitionOperator ::= EQUAL
           | NOTEQUAL
           | LESSTHANOREQUALTO
           | LESSTHAN
           | GREATERTHANOREQUALTO
           | GREATERTHAN

    sysFuncNames ::= KW_AND
           | KW_OR
           | KW_NOT
           | KW_LIKE
           | KW_IF
           | KW_CASE
           | KW_WHEN
           | KW_FLOOR
           | KW_TINYINT
           | KW_SMALLINT
           | KW_INT
           | KW_BIGINT
           | KW_FLOAT
           | KW_DOUBLE
           | KW_BOOLEAN
           | KW_STRING
           | KW_BINARY
           | KW_ARRAY
           | KW_MAP
           | KW_STRUCT
           | KW_UNIONTYPE
           | EQUAL
           | EQUAL_NS
           | NOTEQUAL
           | LESSTHANOREQUALTO
           | LESSTHAN
           | GREATERTHANOREQUALTO
           | GREATERTHAN
           | DIVIDE
           | PLUS
           | MINUS
           | STAR
           | MOD
           | DIV
           | AMPERSAND
           | TILDE
           | BITWISEOR
           | BITWISEXOR
           | KW_RLIKE
           | KW_REGEXP
           | KW_IN
           | KW_BETWEEN

    descFuncNames ::= sysFuncNames
           | StringLiteral
           | functionIdentifier

    identifier ::= Identifier
           | nonReserved

    functionIdentifier ::= identifier DOT identifier
           | identifier

    principalIdentifier ::= identifier
           | QuotedIdentifier

    nonReserved ::= KW_ABORT
           | KW_ADD
           | KW_ADMIN
           | KW_AFTER
           | KW_ANALYZE
           | KW_ARCHIVE
           | KW_ASC
           | KW_BEFORE
           | KW_BUCKET
           | KW_BUCKETS
           | KW_CASCADE
           | KW_CHANGE
           | KW_CHECK
           | KW_CLUSTER
           | KW_CLUSTERED
           | KW_CLUSTERSTATUS
           | KW_COLLECTION
           | KW_COLUMNS
           | KW_COMMENT
           | KW_COMPACT
           | KW_COMPACTIONS
           | KW_COMPUTE
           | KW_CONCATENATE
           | KW_CONTINUE
           | KW_DATA
           | KW_DAY
           | KW_DATABASES
           | KW_DATETIME
           | KW_DBPROPERTIES
           | KW_DEFERRED
           | KW_DEFINED
           | KW_DELIMITED
           | KW_DEPENDENCY
           | KW_DESC
           | KW_DIRECTORIES
           | KW_DIRECTORY
           | KW_DISABLE
           | KW_DISTRIBUTE
           | KW_DOW
           | KW_ELEM_TYPE
           | KW_ENABLE
           | KW_ENFORCED
           | KW_ESCAPED
           | KW_EXCLUSIVE
           | KW_EXPLAIN
           | KW_EXPORT
           | KW_FIELDS
           | KW_FILE
           | KW_FILEFORMAT
           | KW_FIRST
           | KW_FORMAT
           | KW_FORMATTED
           | KW_FUNCTIONS
           | KW_HOUR
           | KW_IDXPROPERTIES
           | KW_INDEX
           | KW_INDEXES
           | KW_INPATH
           | KW_INPUTDRIVER
           | KW_INPUTFORMAT
           | KW_ITEMS
           | KW_JAR
           | KW_KILL
           | KW_KEYS
           | KW_KEY_TYPE
           | KW_LAST
           | KW_LIMIT
           | KW_OFFSET
           | KW_LINES
           | KW_LOAD
           | KW_LOCATION
           | KW_LOCK
           | KW_LOCKS
           | KW_LOGICAL
           | KW_LONG
           | KW_MAPJOIN
           | KW_MATERIALIZED
           | KW_METADATA
           | KW_MINUTE
           | KW_MONTH
           | KW_MSCK
           | KW_NOSCAN
           | KW_NULLS
           | KW_OPTION
           | KW_OUTPUTDRIVER
           | KW_OUTPUTFORMAT
           | KW_OVERWRITE
           | KW_OWNER
           | KW_PARTITIONED
           | KW_PARTITIONS
           | KW_PLUS
           | KW_PRINCIPALS
           | KW_PURGE
           | KW_QUERY
           | KW_QUARTER
           | KW_READ
           | KW_REBUILD
           | KW_RECORDREADER
           | KW_RECORDWRITER
           | KW_RELOAD
           | KW_RENAME
           | KW_REPAIR
           | KW_REPLACE
           | KW_REPLICATION
           | KW_RESTRICT
           | KW_REWRITE
           | KW_ROLE
           | KW_ROLES
           | KW_SCHEMA
           | KW_SCHEMAS
           | KW_SECOND
           | KW_SEMI
           | KW_SERDE
           | KW_SERDEPROPERTIES
           | KW_SERVER
           | KW_SETS
           | KW_SHARED
           | KW_SHOW
           | KW_SHOW_DATABASE
           | KW_SKEWED
           | KW_SORT
           | KW_SORTED
           | KW_SSL
           | KW_STATISTICS
           | KW_STORED
           | KW_STREAMTABLE
           | KW_STRING
           | KW_STRUCT
           | KW_TABLES
           | KW_TBLPROPERTIES
           | KW_TEMPORARY
           | KW_TERMINATED
           | KW_TINYINT
           | KW_TOUCH
           | KW_TRANSACTIONS
           | KW_UNARCHIVE
           | KW_UNDO
           | KW_UNIONTYPE
           | KW_UNLOCK
           | KW_UNSET
           | KW_UNSIGNED
           | KW_URI
           | KW_USE
           | KW_UTC
           | KW_UTCTIMESTAMP
           | KW_VALUE_TYPE
           | KW_VIEW
           | KW_WEEK
           | KW_WHILE
           | KW_YEAR
           | KW_WORK
           | KW_TRANSACTION
           | KW_WRITE
           | KW_ISOLATION
           | KW_LEVEL
           | KW_SNAPSHOT
           | KW_AUTOCOMMIT
           | KW_RELY
           | KW_NORELY
           | KW_VALIDATE
           | KW_NOVALIDATE
           | KW_KEY
           | KW_MATCHED
           | KW_REPL
           | KW_DUMP
           | KW_STATUS
           | KW_CACHE
           | KW_VIEWS
           | KW_VECTORIZATION
           | KW_SUMMARY
           | KW_OPERATOR
           | KW_EXPRESSION
           | KW_DETAIL
           | KW_WAIT
           | KW_ZONE
           | KW_DEFAULT
           | KW_REOPTIMIZATION
           | KW_RESOURCE
           | KW_PLAN
           | KW_PLANS
           | KW_QUERY_PARALLELISM
           | KW_ACTIVATE
           | KW_MOVE
           | KW_DO
           | KW_POOL
           | KW_ALLOC_FRACTION
           | KW_SCHEDULING_POLICY
           | KW_PATH
           | KW_MAPPING
           | KW_WORKLOAD
           | KW_MANAGEMENT
           | KW_ACTIVE
           | KW_UNMANAGED

    sql11ReservedKeywordsUsedAsFunctionName ::= KW_IF
           | KW_ARRAY
           | KW_MAP
           | KW_BIGINT
           | KW_BINARY
           | KW_BOOLEAN
           | KW_CURRENT_DATE
           | KW_CURRENT_TIMESTAMP
           | KW_DATE
           | KW_DOUBLE
           | KW_FLOAT
           | KW_GROUPING
           | KW_INT
           | KW_SMALLINT
           | KW_TIMESTAMP

    hint ::= hintList

    hintList ::= hintItem list_598

    hintItem ::= hintName opt_600

    hintName ::= KW_MAPJOIN
           | KW_SEMI
           | KW_STREAMTABLE

    hintArgs ::= hintArgName list_602

    hintArgName ::= Identifier
           | Number
           | KW_NONE

    seq_1 ::= statement statementSeparator

    list_2 ::= $empty | list_2 seq_1

    list_4 ::= $empty | list_4 explainOption

    grp_3 ::= list_4 execStatement | KW_REWRITE queryStatementExpression

    opt_5 ::= vectorizationOnly | $empty

    opt_6 ::= vectorizatonDetail | $empty

    seq_7 ::= KW_VECTORIZATION opt_5 opt_6

    opt_8 ::= KW_LOCAL | $empty

    opt_9 ::= KW_OVERWRITE | $empty

    opt_10 ::= inputFileFormat | $empty

    opt_11 ::= KW_METADATA | $empty

    opt_12 ::= replicationClause | $empty

    opt_13 ::= KW_EXTERNAL | $empty

    seq_14 ::= opt_13 KW_TABLE tableOrPartition

    opt_15 ::= seq_14 | $empty

    opt_16 ::= tableLocation | $empty

    seq_17 ::= DOT identifier

    opt_18 ::= seq_17 | $empty

    seq_19 ::= KW_TO Number

    opt_20 ::= seq_19 | $empty

    seq_21 ::= KW_LIMIT Number

    opt_22 ::= seq_21 | $empty

    seq_23 ::= KW_FROM Number opt_20 opt_22

    opt_24 ::= seq_23 | $empty

    seq_25 ::= KW_WITH replConfigs

    opt_26 ::= seq_25 | $empty

    seq_27 ::= DOT identifier

    opt_28 ::= seq_27 | $empty

    seq_29 ::= identifier opt_28

    opt_30 ::= seq_29 | $empty

    seq_31 ::= KW_WITH replConfigs

    opt_32 ::= seq_31 | $empty

    seq_33 ::= COMMA keyValueProperty

    list_34 ::= $empty | list_34 seq_33

    seq_35 ::= DOT identifier

    opt_36 ::= seq_35 | $empty

    seq_37 ::= KW_WITH replConfigs

    opt_38 ::= seq_37 | $empty

    grp_39 ::= KW_DATABASE | KW_SCHEMA

    opt_40 ::= ifNotExists | $empty

    opt_41 ::= databaseComment | $empty

    opt_42 ::= dbLocation | $empty

    seq_43 ::= KW_WITH KW_DBPROPERTIES dbProperties

    opt_44 ::= seq_43 | $empty

    seq_45 ::= COMMA keyValueProperty

    list_46 ::= $empty | list_46 seq_45

    grp_47 ::= KW_DATABASE | KW_SCHEMA

    opt_48 ::= ifExists | $empty

    opt_49 ::= restrictOrCascade | $empty

    opt_50 ::= KW_TEMPORARY | $empty

    opt_51 ::= KW_EXTERNAL | $empty

    opt_52 ::= ifNotExists | $empty

    opt_54 ::= tableRowFormat | $empty

    opt_55 ::= tableFileFormat | $empty

    opt_56 ::= tableLocation | $empty

    opt_57 ::= tablePropertiesPrefixed | $empty

    seq_58 ::= LPAREN columnNameTypeOrConstraintList RPAREN

    opt_59 ::= seq_58 | $empty

    opt_60 ::= tableComment | $empty

    opt_61 ::= tablePartition | $empty

    opt_62 ::= tableBuckets | $empty

    opt_63 ::= tableSkewed | $empty

    opt_64 ::= tableRowFormat | $empty

    opt_65 ::= tableFileFormat | $empty

    opt_66 ::= tableLocation | $empty

    opt_67 ::= tablePropertiesPrefixed | $empty

    seq_68 ::= KW_AS selectStatementWithCTE

    opt_69 ::= seq_68 | $empty

    grp_53 ::= KW_LIKE tableName opt_54 opt_55 opt_56 opt_57 | opt_59 opt_60 opt_61 opt_62 opt_63 opt_64 opt_65 opt_66 opt_67 opt_69

    seq_70 ::= KW_COLUMNS LPAREN columnNameList RPAREN

    opt_71 ::= seq_70 | $empty

    opt_72 ::= ifExists | $empty

    opt_73 ::= KW_PURGE | $empty

    opt_74 ::= replicationClause | $empty

    opt_75 ::= KW_AS | $empty

    grp_76 ::= KW_DATABASE | KW_SCHEMA

    opt_77 ::= partitionSpec | $empty

    grp_78 ::= KW_ADD | KW_REPLACE

    opt_79 ::= restrictOrCascade | $empty

    grp_80 ::= alterForeignKeyWithName | alterConstraintWithName

    opt_81 ::= KW_COLUMN | $empty

    opt_82 ::= alterColumnConstraint | $empty

    seq_83 ::= KW_COMMENT StringLiteral

    opt_84 ::= seq_83 | $empty

    opt_85 ::= alterStatementChangeColPosition | $empty

    opt_86 ::= restrictOrCascade | $empty

    opt_87 ::= KW_COLUMN | $empty

    seq_88 ::= KW_COMMENT StringLiteral

    opt_89 ::= seq_88 | $empty

    opt_90 ::= ifNotExists | $empty

    list_91 ::= alterStatementSuffixAddPartitionsElement | list_91 alterStatementSuffixAddPartitionsElement

    opt_92 ::= partitionLocation | $empty

    list_93 ::= $empty | list_93 partitionSpec

    list_94 ::= $empty | list_94 partitionSpec

    list_95 ::= $empty | list_95 partitionSpec

    opt_96 ::= ifExists | $empty

    seq_97 ::= COMMA dropPartitionSpec

    list_98 ::= $empty | list_98 seq_97

    opt_99 ::= KW_PURGE | $empty

    opt_100 ::= replicationClause | $empty

    opt_101 ::= ifExists | $empty

    opt_102 ::= ifExists | $empty

    grp_103 ::= rewriteEnabled | rewriteDisabled

    seq_104 ::= KW_WITH KW_SERDEPROPERTIES tableProperties

    opt_105 ::= seq_104 | $empty

    opt_106 ::= partitionSpec | $empty

    seq_107 ::= COMMA skewedLocationMap

    list_108 ::= $empty | list_108 seq_107

    opt_109 ::= KW_COLUMN | $empty

    seq_110 ::= KW_COMMENT StringLiteral

    opt_111 ::= seq_110 | $empty

    seq_112 ::= KW_WITH KW_DEFERRED KW_REBUILD

    opt_113 ::= seq_112 | $empty

    seq_114 ::= KW_IDXPROPERTIES tableProperties

    opt_115 ::= seq_114 | $empty

    seq_116 ::= KW_IN KW_TABLE tableName

    opt_117 ::= seq_116 | $empty

    seq_118 ::= KW_PARTITIONED KW_BY columnParenthesesList

    opt_119 ::= seq_118 | $empty

    opt_120 ::= tableRowFormat | $empty

    seq_121 ::= opt_120 tableFileFormat

    opt_122 ::= seq_121 | $empty

    seq_123 ::= KW_LOCATION locationPath

    opt_124 ::= seq_123 | $empty

    opt_125 ::= tablePropertiesPrefixed | $empty

    opt_126 ::= tableComment | $empty

    seq_127 ::= DOT identifier

    list_128 ::= $empty | list_128 seq_127

    opt_129 ::= partitionSpec | $empty

    opt_130 ::= blocking | $empty

    seq_131 ::= KW_WITH KW_OVERWRITE KW_TBLPROPERTIES tableProperties

    opt_132 ::= seq_131 | $empty

    seq_133 ::= KW_INPUTDRIVER StringLiteral KW_OUTPUTDRIVER StringLiteral

    opt_134 ::= seq_133 | $empty

    seq_135 ::= DOT identifier

    opt_136 ::= seq_135 | $empty

    grp_139 ::= KW_ELEM_TYPE | KW_KEY_TYPE | KW_VALUE_TYPE | identifier

    grp_138 ::= DOT grp_139

    list_140 ::= $empty | list_140 grp_138

    grp_137 ::= identifier list_140

    opt_141 ::= grp_137 | $empty

    opt_142 ::= partitionSpec | $empty

    opt_143 ::= partitionSpec | $empty

    opt_144 ::= extColumnName | $empty

    grp_145 ::= KW_DESCRIBE | KW_DESC

    grp_147 ::= KW_DATABASE | KW_SCHEMA

    opt_148 ::= KW_EXTENDED | $empty

    opt_149 ::= KW_EXTENDED | $empty

    grp_151 ::= KW_FORMATTED | KW_EXTENDED

    grp_150 ::= grp_151 tabPartColTypeExpr

    grp_146 ::= grp_147 opt_148 identifier | KW_FUNCTION opt_149 descFuncNames | grp_150 | tabPartColTypeExpr

    opt_154 ::= columnNameList | $empty

    seq_155 ::= KW_FOR KW_COLUMNS opt_154

    grp_153 ::= KW_NOSCAN | seq_155

    opt_156 ::= grp_153 | $empty

    grp_152 ::= KW_COMPUTE KW_STATISTICS opt_156 | KW_CACHE KW_METADATA

    grp_157 ::= KW_DATABASES | KW_SCHEMAS

    seq_158 ::= KW_LIKE showStmtIdentifier

    opt_159 ::= seq_158 | $empty

    grp_161 ::= KW_FROM | KW_IN

    grp_160 ::= grp_161 identifier

    opt_162 ::= grp_160 | $empty

    grp_163 ::= KW_LIKE showStmtIdentifier | showStmtIdentifier

    opt_164 ::= grp_163 | $empty

    grp_166 ::= KW_FROM | KW_IN

    grp_165 ::= grp_166 identifier

    opt_167 ::= grp_165 | $empty

    grp_168 ::= KW_LIKE showStmtIdentifier | showStmtIdentifier

    opt_169 ::= grp_168 | $empty

    grp_171 ::= KW_FROM | KW_IN

    grp_170 ::= grp_171 identifier

    opt_172 ::= grp_170 | $empty

    grp_173 ::= KW_LIKE showStmtIdentifier | showStmtIdentifier

    opt_174 ::= grp_173 | $empty

    grp_175 ::= KW_FROM | KW_IN

    grp_177 ::= KW_FROM | KW_IN

    grp_176 ::= grp_177 identifier

    opt_178 ::= grp_176 | $empty

    grp_179 ::= KW_LIKE showStmtIdentifier | showStmtIdentifier

    opt_180 ::= grp_179 | $empty

    grp_181 ::= KW_LIKE showFunctionIdentifier | showFunctionIdentifier

    opt_182 ::= grp_181 | $empty

    opt_183 ::= partitionSpec | $empty

    grp_185 ::= KW_DATABASE | KW_SCHEMA

    grp_184 ::= grp_185 identifier | KW_TABLE tableName

    grp_187 ::= KW_FROM | KW_IN

    grp_186 ::= grp_187 identifier

    opt_188 ::= grp_186 | $empty

    opt_189 ::= partitionSpec | $empty

    seq_190 ::= LPAREN StringLiteral RPAREN

    opt_191 ::= seq_190 | $empty

    grp_193 ::= KW_DATABASE | KW_SCHEMA

    opt_194 ::= KW_EXTENDED | $empty

    opt_195 ::= partTypeExpr | $empty

    opt_196 ::= KW_EXTENDED | $empty

    grp_192 ::= grp_193 identifier opt_194 | opt_195 opt_196

    seq_198 ::= KW_PLAN identifier

    grp_197 ::= seq_198 | KW_PLANS

    opt_199 ::= partitionSpec | $empty

    grp_200 ::= KW_DATABASE | KW_SCHEMA

    opt_201 ::= partitionSpec | $empty

    grp_202 ::= KW_DATABASE | KW_SCHEMA

    opt_203 ::= privilegeObject | $empty

    opt_204 ::= withGrantOption | $empty

    opt_205 ::= grantOptionFor | $empty

    opt_206 ::= privilegeObject | $empty

    opt_207 ::= KW_ROLE | $empty

    seq_208 ::= COMMA identifier

    list_209 ::= $empty | list_209 seq_208

    opt_210 ::= withAdminOption | $empty

    opt_211 ::= adminOptionFor | $empty

    opt_212 ::= KW_ROLE | $empty

    seq_213 ::= COMMA identifier

    list_214 ::= $empty | list_214 seq_213

    grp_215 ::= KW_ALL | KW_NONE | identifier

    opt_216 ::= principalName | $empty

    seq_217 ::= KW_ON privilegeIncludeColObject

    opt_218 ::= seq_217 | $empty

    grp_219 ::= KW_DATABASE | KW_SCHEMA

    opt_220 ::= KW_TABLE | $empty

    opt_221 ::= partitionSpec | $empty

    grp_222 ::= KW_DATABASE | KW_SCHEMA

    opt_223 ::= KW_TABLE | $empty

    seq_224 ::= LPAREN columnNameList RPAREN

    opt_225 ::= seq_224 | $empty

    opt_226 ::= partitionSpec | $empty

    seq_227 ::= COMMA privlegeDef

    list_228 ::= $empty | list_228 seq_227

    seq_229 ::= LPAREN columnNameList RPAREN

    opt_230 ::= seq_229 | $empty

    seq_231 ::= COMMA principalName

    list_232 ::= $empty | list_232 seq_231

    opt_233 ::= KW_REPAIR | $empty

    grp_236 ::= KW_ADD | KW_DROP | KW_SYNC

    grp_235 ::= grp_236 KW_PARTITIONS

    opt_237 ::= grp_235 | $empty

    opt_238 ::= partitionSpec | $empty

    grp_234 ::= KW_TABLE tableName opt_237 | opt_238

    seq_239 ::= COMMA resource

    list_240 ::= $empty | list_240 seq_239

    opt_241 ::= KW_TEMPORARY | $empty

    seq_242 ::= KW_USING resourceList

    opt_243 ::= seq_242 | $empty

    opt_244 ::= KW_TEMPORARY | $empty

    opt_245 ::= ifExists | $empty

    opt_246 ::= columnNameTypeList | $empty

    opt_247 ::= ifExists | $empty

    opt_248 ::= orReplace | $empty

    opt_249 ::= ifNotExists | $empty

    seq_250 ::= LPAREN columnNameCommentList RPAREN

    opt_251 ::= seq_250 | $empty

    opt_252 ::= tableComment | $empty

    opt_253 ::= viewPartition | $empty

    opt_254 ::= tablePropertiesPrefixed | $empty

    opt_255 ::= ifNotExists | $empty

    opt_256 ::= rewriteDisabled | $empty

    opt_257 ::= tableComment | $empty

    opt_258 ::= tableRowFormat | $empty

    opt_259 ::= tableFileFormat | $empty

    opt_260 ::= tableLocation | $empty

    opt_261 ::= tablePropertiesPrefixed | $empty

    opt_262 ::= ifExists | $empty

    opt_263 ::= ifExists | $empty

    seq_264 ::= COMMA columnNameTypeConstraint

    list_265 ::= $empty | list_265 seq_264

    seq_266 ::= KW_SORTED KW_BY LPAREN columnNameOrderList RPAREN

    opt_267 ::= seq_266 | $empty

    opt_268 ::= storedAsDirs | $empty

    seq_269 ::= KW_WITH KW_SERDEPROPERTIES tableProperties

    opt_270 ::= seq_269 | $empty

    opt_271 ::= tableRowFormatFieldIdentifier | $empty

    opt_272 ::= tableRowFormatCollItemsIdentifier | $empty

    opt_273 ::= tableRowFormatMapKeysIdentifier | $empty

    opt_274 ::= tableRowFormatLinesIdentifier | $empty

    opt_275 ::= tableRowNullFormat | $empty

    seq_276 ::= COMMA keyValueProperty

    list_277 ::= $empty | list_277 seq_276

    seq_278 ::= COMMA keyProperty

    list_279 ::= $empty | list_279 seq_278

    seq_280 ::= KW_ESCAPED KW_BY StringLiteral

    opt_281 ::= seq_280 | $empty

    seq_282 ::= KW_INPUTDRIVER StringLiteral KW_OUTPUTDRIVER StringLiteral

    opt_283 ::= seq_282 | $empty

    seq_284 ::= KW_WITH KW_SERDEPROPERTIES tableProperties

    opt_285 ::= seq_284 | $empty

    seq_286 ::= COMMA columnNameType

    list_287 ::= $empty | list_287 seq_286

    seq_288 ::= COMMA columnNameTypeOrConstraint

    list_289 ::= $empty | list_289 seq_288

    seq_290 ::= COMMA columnNameColonType

    list_291 ::= $empty | list_291 seq_290

    seq_292 ::= COMMA columnName

    list_293 ::= $empty | list_293 seq_292

    grp_295 ::= KW_ELEM_TYPE | KW_KEY_TYPE | KW_VALUE_TYPE | identifier

    grp_294 ::= DOT grp_295

    list_296 ::= $empty | list_296 grp_294

    seq_297 ::= COMMA columnNameOrder

    list_298 ::= $empty | list_298 seq_297

    opt_299 ::= validateSpecification | $empty

    opt_300 ::= KW_NORELY | $empty

    seq_301 ::= KW_CONSTRAINT identifier

    opt_302 ::= seq_301 | $empty

    opt_303 ::= constraintOptsCreate | $empty

    opt_304 ::= constraintOptsAlter | $empty

    seq_305 ::= KW_CONSTRAINT identifier

    opt_306 ::= seq_305 | $empty

    opt_307 ::= constraintOptsCreate | $empty

    opt_308 ::= constraintOptsAlter | $empty

    seq_309 ::= COMMA skewedColumnValuePair

    list_310 ::= $empty | list_310 seq_309

    seq_311 ::= COMMA skewedColumnValue

    list_312 ::= $empty | list_312 seq_311

    opt_313 ::= orderSpecification | $empty

    opt_314 ::= nullOrdering | $empty

    seq_315 ::= COMMA columnNameComment

    list_316 ::= $empty | list_316 seq_315

    seq_317 ::= KW_COMMENT StringLiteral

    opt_318 ::= seq_317 | $empty

    opt_319 ::= orderSpecification | $empty

    opt_320 ::= nullOrdering | $empty

    seq_321 ::= KW_COMMENT StringLiteral

    opt_322 ::= seq_321 | $empty

    opt_323 ::= columnConstraint | $empty

    seq_324 ::= KW_COMMENT StringLiteral

    opt_325 ::= seq_324 | $empty

    seq_326 ::= KW_CONSTRAINT identifier

    opt_327 ::= seq_326 | $empty

    opt_328 ::= constraintOptsCreate | $empty

    seq_329 ::= KW_CONSTRAINT identifier

    opt_330 ::= seq_329 | $empty

    opt_331 ::= constraintOptsCreate | $empty

    seq_332 ::= KW_CONSTRAINT identifier

    opt_333 ::= seq_332 | $empty

    opt_334 ::= constraintOptsAlter | $empty

    seq_335 ::= KW_CONSTRAINT identifier

    opt_336 ::= seq_335 | $empty

    opt_337 ::= constraintOptsAlter | $empty

    seq_338 ::= KW_COMMENT StringLiteral

    opt_339 ::= seq_338 | $empty

    seq_340 ::= COMMA colType

    list_341 ::= $empty | list_341 seq_340

    opt_342 ::= KW_PRECISION | $empty

    seq_343 ::= COMMA Number

    opt_344 ::= seq_343 | $empty

    seq_345 ::= LPAREN Number opt_344 RPAREN

    opt_346 ::= seq_345 | $empty

    opt_347 ::= KW_DISTINCT | $empty

    opt_348 ::= KW_DISTINCT | $empty

    opt_349 ::= KW_DISTINCT | $empty

    opt_350 ::= KW_DISTINCT | $empty

    opt_351 ::= withClause | $empty

    seq_352 ::= COMMA cteStatement

    list_353 ::= $empty | list_353 seq_352

    seq_354 ::= setOperator singleFromStatement

    list_355 ::= $empty | list_355 seq_354

    list_356 ::= body | list_356 body

    grp_357 ::= selectStatement | valuesClause

    opt_358 ::= fromClause | $empty

    opt_359 ::= whereClause | $empty

    opt_360 ::= groupByClause | $empty

    opt_361 ::= havingClause | $empty

    opt_362 ::= window_clause | $empty

    opt_363 ::= setOpSelectStatement | $empty

    opt_364 ::= orderByClause | $empty

    opt_365 ::= clusterByClause | $empty

    opt_366 ::= distributeByClause | $empty

    opt_367 ::= sortByClause | $empty

    opt_368 ::= limitClause | $empty

    seq_369 ::= setOperator atomSelectStatement

    list_370 ::= seq_369 | list_370 seq_369

    opt_371 ::= withClause | $empty

    opt_372 ::= lateralView | $empty

    opt_373 ::= whereClause | $empty

    opt_374 ::= groupByClause | $empty

    opt_375 ::= havingClause | $empty

    opt_376 ::= window_clause | $empty

    opt_377 ::= orderByClause | $empty

    opt_378 ::= clusterByClause | $empty

    opt_379 ::= distributeByClause | $empty

    opt_380 ::= sortByClause | $empty

    opt_381 ::= limitClause | $empty

    opt_382 ::= lateralView | $empty

    opt_383 ::= whereClause | $empty

    opt_384 ::= groupByClause | $empty

    opt_385 ::= havingClause | $empty

    opt_386 ::= window_clause | $empty

    opt_387 ::= orderByClause | $empty

    opt_388 ::= clusterByClause | $empty

    opt_389 ::= distributeByClause | $empty

    opt_390 ::= sortByClause | $empty

    opt_391 ::= limitClause | $empty

    opt_392 ::= ifNotExists | $empty

    opt_393 ::= KW_TABLE | $empty

    seq_394 ::= LPAREN columnNameList RPAREN

    opt_395 ::= seq_394 | $empty

    opt_396 ::= KW_LOCAL | $empty

    opt_397 ::= tableRowFormat | $empty

    opt_398 ::= tableFileFormat | $empty

    seq_399 ::= Number COMMA

    opt_400 ::= seq_399 | $empty

    seq_401 ::= opt_400 Number

    opt_402 ::= whereClause | $empty

    seq_403 ::= COMMA columnAssignmentClause

    list_404 ::= $empty | list_404 seq_403

    opt_405 ::= whereClause | $empty

    seq_406 ::= COMMA transactionMode

    list_407 ::= $empty | list_407 seq_406

    seq_408 ::= transactionMode list_407

    opt_409 ::= seq_408 | $empty

    opt_410 ::= KW_WORK | $empty

    opt_411 ::= KW_WORK | $empty

    list_412 ::= Number | list_412 Number

    opt_413 ::= KW_AS | $empty

    seq_414 ::= opt_413 identifier

    opt_415 ::= seq_414 | $empty

    grp_416 ::= whenMatchedAndClause | whenMatchedThenClause

    list_417 ::= $empty | list_417 grp_416

    opt_418 ::= whenNotMatchedClause | $empty

    seq_419 ::= KW_AND expression

    opt_420 ::= seq_419 | $empty

    list_421 ::= StringLiteral | list_421 StringLiteral

    seq_422 ::= COMMA expression

    list_423 ::= $empty | list_423 seq_422

    seq_424 ::= COMMA identifier

    list_425 ::= $empty | list_425 seq_424

    seq_426 ::= COMMA uniqueJoinSource

    list_427 ::= seq_426 | list_427 seq_426

    list_428 ::= $empty | list_428 lateralView

    list_429 ::= $empty | list_429 lateralView

    list_430 ::= $empty | list_430 lateralView

    list_431 ::= $empty | list_431 lateralView

    grp_433 ::= KW_ON expression | KW_USING columnParenthesesList

    opt_434 ::= grp_433 | $empty

    grp_432 ::= joinToken joinSourcePart opt_434

    list_435 ::= $empty | list_435 grp_432

    grp_436 ::= tableSource | virtualTableSource | subQuerySource | partitionedTableFunction

    list_437 ::= $empty | list_437 lateralView

    opt_438 ::= KW_PRESERVE | $empty

    opt_439 ::= KW_OUTER | $empty

    opt_440 ::= KW_OUTER | $empty

    opt_441 ::= KW_OUTER | $empty

    seq_442 ::= COMMA identifier

    list_443 ::= $empty | list_443 seq_442

    seq_444 ::= KW_AS identifier list_443

    opt_445 ::= seq_444 | $empty

    opt_446 ::= COMMA | $empty

    seq_447 ::= COMMA identifier

    list_448 ::= $empty | list_448 seq_447

    seq_449 ::= KW_AS identifier list_448

    opt_450 ::= seq_449 | $empty

    opt_451 ::= COMMA | $empty

    opt_452 ::= KW_AS | $empty

    seq_453 ::= COMMA identifier

    list_454 ::= $empty | list_454 seq_453

    seq_455 ::= LPAREN identifier list_454 RPAREN

    opt_456 ::= seq_455 | $empty

    seq_457 ::= COMMA expression

    list_458 ::= $empty | list_458 seq_457

    seq_459 ::= KW_ON expression list_458

    opt_460 ::= seq_459 | $empty

    grp_461 ::= KW_PERCENT | KW_ROWS

    opt_462 ::= tableProperties | $empty

    opt_463 ::= tableSample | $empty

    opt_464 ::= KW_AS | $empty

    seq_465 ::= opt_464 identifier

    opt_466 ::= seq_465 | $empty

    opt_467 ::= tableSample | $empty

    opt_468 ::= KW_AS | $empty

    seq_469 ::= opt_468 identifier

    opt_470 ::= seq_469 | $empty

    seq_471 ::= identifier DOT

    opt_472 ::= seq_471 | $empty

    opt_473 ::= KW_AS | $empty

    opt_474 ::= orderByClause | $empty

    opt_475 ::= sortByClause | $empty

    opt_476 ::= partitioningSpec | $empty

    seq_477 ::= COMMA Identifier LPAREN expression RPAREN

    list_478 ::= $empty | list_478 seq_477

    seq_479 ::= Identifier LPAREN expression RPAREN list_478

    opt_480 ::= seq_479 | $empty

    opt_481 ::= identifier | $empty

    seq_482 ::= COMMA valueRowConstructor

    list_483 ::= $empty | list_483 seq_482

    opt_484 ::= KW_AS | $empty

    seq_485 ::= COMMA identifier

    list_486 ::= $empty | list_486 seq_485

    seq_487 ::= LPAREN identifier list_486

    opt_488 ::= seq_487 | $empty

    opt_489 ::= QUERY_HINT | $empty

    grp_492 ::= KW_ALL | KW_DISTINCT

    opt_493 ::= grp_492 | $empty

    grp_491 ::= opt_493 selectList

    seq_494 ::= KW_TRANSFORM selectTrfmClause

    grp_490 ::= grp_491 | seq_494

    seq_495 ::= COMMA selectItem

    list_496 ::= $empty | list_496 seq_495

    opt_497 ::= rowFormat | $empty

    opt_498 ::= recordWriter | $empty

    grp_502 ::= aliasList | columnNameTypeList

    grp_501 ::= LPAREN grp_502 RPAREN

    grp_503 ::= aliasList | columnNameTypeList

    grp_500 ::= grp_501 | grp_503

    grp_499 ::= KW_AS grp_500

    opt_504 ::= grp_499 | $empty

    opt_505 ::= rowFormat | $empty

    opt_506 ::= recordReader | $empty

    opt_509 ::= KW_AS | $empty

    seq_510 ::= opt_509 identifier

    seq_511 ::= COMMA identifier

    list_512 ::= $empty | list_512 seq_511

    seq_513 ::= KW_AS LPAREN identifier list_512 RPAREN

    grp_508 ::= seq_510 | seq_513

    opt_514 ::= grp_508 | $empty

    grp_507 ::= expression opt_514

    grp_515 ::= KW_MAP selectExpressionList | KW_REDUCE selectExpressionList

    opt_516 ::= rowFormat | $empty

    opt_517 ::= recordWriter | $empty

    grp_521 ::= aliasList | columnNameTypeList

    grp_520 ::= LPAREN grp_521 RPAREN

    grp_522 ::= aliasList | columnNameTypeList

    grp_519 ::= grp_520 | grp_522

    grp_518 ::= KW_AS grp_519

    opt_523 ::= grp_518 | $empty

    opt_524 ::= rowFormat | $empty

    opt_525 ::= recordReader | $empty

    seq_526 ::= COMMA selectExpression

    list_527 ::= $empty | list_527 seq_526

    seq_528 ::= COMMA window_defn

    list_529 ::= $empty | list_529 seq_528

    opt_531 ::= identifier | $empty

    opt_532 ::= partitioningSpec | $empty

    opt_533 ::= window_frame | $empty

    seq_534 ::= LPAREN opt_531 opt_532 opt_533 RPAREN

    grp_530 ::= identifier | seq_534

    grp_535 ::= KW_PRECEDING | KW_FOLLOWING

    grp_536 ::= KW_PRECEDING | KW_FOLLOWING

    grp_537 ::= KW_ROLLUP | KW_CUBE

    seq_538 ::= COMMA expression

    list_539 ::= $empty | list_539 seq_538

    grp_540 ::= KW_WITH KW_ROLLUP | KW_WITH KW_CUBE

    opt_541 ::= grp_540 | $empty

    seq_542 ::= COMMA groupingSetExpression

    list_543 ::= $empty | list_543 seq_542

    seq_544 ::= KW_GROUPING KW_SETS LPAREN groupingSetExpression list_543 RPAREN

    opt_545 ::= seq_544 | $empty

    opt_546 ::= expression | $empty

    seq_547 ::= COMMA expression

    list_548 ::= $empty | list_548 seq_547

    opt_549 ::= expressionPart | $empty

    seq_550 ::= COMMA expression

    list_551 ::= seq_550 | list_551 seq_550

    seq_552 ::= COMMA columnRefOrder

    list_553 ::= $empty | list_553 seq_552

    seq_554 ::= COMMA columnRefOrder

    list_555 ::= $empty | list_555 seq_554

    seq_556 ::= COMMA columnRefOrder

    list_557 ::= $empty | list_557 seq_556

    grp_558 ::= columnRefOrderInParenthesis | columnRefOrderNotInParenthesis

    grp_560 ::= KW_DISTINCT | KW_ALL

    opt_561 ::= grp_560 | $empty

    seq_562 ::= COMMA selectExpression

    list_563 ::= $empty | list_563 seq_562

    seq_564 ::= selectExpression list_563

    opt_565 ::= seq_564 | $empty

    grp_559 ::= STAR | opt_561 opt_565

    seq_566 ::= KW_OVER window_specification

    opt_567 ::= seq_566 | $empty

    seq_568 ::= KW_WHEN expression KW_THEN expression

    list_569 ::= seq_568 | list_569 seq_568

    seq_570 ::= KW_ELSE expression

    opt_571 ::= seq_570 | $empty

    seq_572 ::= KW_WHEN expression KW_THEN expression

    list_573 ::= seq_572 | list_573 seq_572

    seq_574 ::= KW_ELSE expression

    opt_575 ::= seq_574 | $empty

    seq_576 ::= KW_TO floorDateQualifiers

    opt_577 ::= seq_576 | $empty

    list_578 ::= StringLiteral | list_578 StringLiteral

    opt_579 ::= KW_NOT | $empty

    grp_580 ::= KW_NULL | KW_TRUE | KW_FALSE | KW_DISTINCT | KW_FROM

    seq_582 ::= LSQUARE expression RSQUARE

    seq_583 ::= DOT identifier

    grp_581 ::= seq_582 | seq_583

    list_584 ::= $empty | list_584 grp_581

    opt_585 ::= KW_NOT | $empty

    opt_586 ::= KW_NOT | $empty

    grp_587 ::= KW_ANY | KW_ALL

    opt_588 ::= KW_NOT | $empty

    opt_589 ::= KW_NOT | $empty

    opt_590 ::= partitionSpec | $empty

    seq_591 ::= COMMA partitionVal

    list_592 ::= $empty | list_592 seq_591

    seq_593 ::= EQUAL constant

    opt_594 ::= seq_593 | $empty

    seq_595 ::= COMMA dropPartitionVal

    list_596 ::= $empty | list_596 seq_595

    seq_597 ::= COMMA hintItem

    list_598 ::= $empty | list_598 seq_597

    seq_599 ::= LPAREN hintArgs RPAREN

    opt_600 ::= seq_599 | $empty

    seq_601 ::= COMMA hintArgName

    list_602 ::= $empty | list_602 seq_601

%End
