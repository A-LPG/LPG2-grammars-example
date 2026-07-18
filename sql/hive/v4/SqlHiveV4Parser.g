-- AUTO-GENERATED from antlr/grammars-v4 sql/hive/v4 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack
%Options fp=SqlHiveV4Parser
%options package=lpg.grammars.sql.hive.v4
%options template=btParserTemplateF.gi
%options import_terminals=SqlHiveV4Lexer.gi
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
    HarnessStart ::= statement /.
                    setResult("ok");
                ./

    statement ::= grp_1

    explainStatement ::= KW_EXPLAIN grp_2

    explainOption ::= KW_EXTENDED
           | KW_FORMATTED
           | KW_DEPENDENCY
           | KW_CBO opt_5
           | KW_LOGICAL
           | KW_AUTHORIZATION
           | KW_ANALYZE
           | KW_REOPTIMIZATION
           | KW_LOCKS
           | KW_AST
           | KW_VECTORIZATION opt_6 opt_7
           | KW_DEBUG
           | KW_DDL

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
           | prepareStatement
           | executeStatement

    loadStatement ::= KW_LOAD KW_DATA opt_8 KW_INPATH StringLiteral opt_9 KW_INTO KW_TABLE tableOrPartition opt_10

    replicationClause ::= KW_FOR opt_11 KW_REPLICATION LPAREN StringLiteral RPAREN

    exportStatement ::= KW_EXPORT KW_TABLE tableOrPartition KW_TO StringLiteral opt_12

    importStatement ::= KW_IMPORT opt_15 KW_FROM StringLiteral opt_16

    replDumpStatement ::= KW_REPL KW_DUMP replDbPolicy opt_18 opt_20

    replDbPolicy ::= id_ opt_22

    replLoadStatement ::= KW_REPL KW_LOAD replDbPolicy opt_24 opt_26

    replConfigs ::= LPAREN replConfigsList RPAREN

    replConfigsList ::= keyValueProperty list_28

    replTableLevelPolicy ::= StringLiteral opt_30

    replStatusStatement ::= KW_REPL KW_STATUS id_ opt_32

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
           | createScheduledQueryStatement
           | alterScheduledQueryStatement
           | dropScheduledQueryStatement
           | dropViewStatement
           | dropMaterializedViewStatement
           | createFunctionStatement
           | createMacroStatement
           | dropFunctionStatement
           | reloadFunctionsStatement
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
           | abortCompactionStatement
           | killQueryStatement
           | resourcePlanDdlStatements
           | createDataConnectorStatement
           | dropDataConnectorStatement

    ifExists ::= KW_IF KW_EXISTS

    restrictOrCascade ::= KW_RESTRICT
           | KW_CASCADE

    ifNotExists ::= KW_IF KW_NOT KW_EXISTS

    force ::= KW_FORCE

    rewriteEnabled ::= KW_ENABLE KW_REWRITE

    rewriteDisabled ::= KW_DISABLE KW_REWRITE

    storedAsDirs ::= KW_STORED KW_AS KW_DIRECTORIES

    orReplace ::= KW_OR KW_REPLACE

    createDatabaseStatement ::= KW_CREATE db_schema opt_33 id_ opt_34 opt_35 opt_36 opt_38
           | KW_CREATE KW_REMOTE db_schema opt_39 id_ opt_40 dbConnectorName opt_42

    dbLocation ::= KW_LOCATION StringLiteral

    dbManagedLocation ::= KW_MANAGEDLOCATION StringLiteral

    dbProperties ::= LPAREN dbPropertiesList RPAREN

    dbPropertiesList ::= keyValueProperty list_44

    dbConnectorName ::= KW_USING id_

    switchDatabaseStatement ::= KW_USE id_

    dropDatabaseStatement ::= KW_DROP db_schema opt_45 id_ opt_46

    databaseComment ::= KW_COMMENT StringLiteral

    truncateTableStatement ::= KW_TRUNCATE opt_47 tablePartitionPrefix opt_49 opt_50

    dropTableStatement ::= KW_DROP KW_TABLE opt_51 tableName opt_52 opt_53

    inputFileFormat ::= KW_INPUTFORMAT StringLiteral KW_SERDE StringLiteral

    tabTypeExpr ::= id_ opt_55 opt_60

    partTypeExpr ::= tabTypeExpr opt_61

    tabPartColTypeExpr ::= tableName opt_62 opt_63

    descStatement ::= grp_64 grp_65

    analyzeStatement ::= KW_ANALYZE KW_TABLE tableOrPartition grp_70

    from_in ::= KW_FROM
           | KW_IN

    db_schema ::= KW_DATABASE
           | KW_SCHEMA

    showStatement ::= KW_SHOW grp_74 opt_76
           | KW_SHOW opt_77 KW_TABLES opt_79 opt_80
           | KW_SHOW KW_VIEWS opt_82 opt_84
           | KW_SHOW KW_MATERIALIZED KW_VIEWS opt_86 opt_88
           | KW_SHOW opt_89 KW_COLUMNS from_in tableName opt_91 opt_93
           | KW_SHOW KW_FUNCTIONS opt_95
           | KW_SHOW KW_PARTITIONS tableName opt_96 opt_97 opt_98 opt_99
           | KW_SHOW KW_CREATE grp_100
           | KW_SHOW KW_TABLE KW_EXTENDED opt_102 KW_LIKE showStmtIdentifier opt_103
           | KW_SHOW KW_TBLPROPERTIES tableName opt_105
           | KW_SHOW KW_LOCKS grp_106
           | KW_SHOW KW_COMPACTIONS grp_110
           | KW_SHOW KW_TRANSACTIONS
           | KW_SHOW KW_CONF StringLiteral
           | KW_SHOW KW_RESOURCE grp_122
           | KW_SHOW KW_DATACONNECTORS

    showTablesFilterExpr ::= KW_WHERE id_ EQUAL StringLiteral
           | KW_LIKE showStmtIdentifier
           | showStmtIdentifier

    lockStatement ::= KW_LOCK KW_TABLE tableName opt_123 lockMode

    lockDatabase ::= KW_LOCK db_schema id_ lockMode

    lockMode ::= KW_SHARED
           | KW_EXCLUSIVE

    unlockStatement ::= KW_UNLOCK KW_TABLE tableName opt_124

    unlockDatabase ::= KW_UNLOCK db_schema id_

    createRoleStatement ::= KW_CREATE KW_ROLE id_

    dropRoleStatement ::= KW_DROP KW_ROLE id_

    grantPrivileges ::= KW_GRANT privilegeList opt_125 KW_TO principalSpecification opt_126

    revokePrivileges ::= KW_REVOKE opt_127 privilegeList opt_128 KW_FROM principalSpecification

    grantRole ::= KW_GRANT opt_129 id_ list_131 KW_TO principalSpecification opt_132

    revokeRole ::= KW_REVOKE opt_133 opt_134 id_ list_136 KW_FROM principalSpecification

    showRoleGrants ::= KW_SHOW KW_ROLE KW_GRANT principalName

    showRoles ::= KW_SHOW KW_ROLES

    showCurrentRole ::= KW_SHOW KW_CURRENT KW_ROLES

    setRole ::= KW_SET KW_ROLE grp_137

    showGrants ::= KW_SHOW KW_GRANT opt_138 opt_140

    showRolePrincipals ::= KW_SHOW KW_PRINCIPALS id_

    privilegeIncludeColObject ::= KW_ALL
           | privObjectCols

    privilegeObject ::= KW_ON privObject

    privObject ::= db_schema id_
           | opt_141 tableName opt_142
           | KW_URI StringLiteral
           | KW_SERVER id_

    privObjectCols ::= db_schema id_
           | opt_143 tableName opt_145 opt_146
           | KW_URI StringLiteral
           | KW_SERVER id_

    privilegeList ::= privlegeDef list_148

    privlegeDef ::= privilegeType opt_150

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

    principalSpecification ::= principalName list_152

    principalName ::= KW_USER principalIdentifier
           | KW_GROUP principalIdentifier
           | KW_ROLE id_

    withGrantOption ::= KW_WITH KW_GRANT KW_OPTION

    grantOptionFor ::= KW_GRANT KW_OPTION KW_FOR

    adminOptionFor ::= KW_ADMIN KW_OPTION KW_FOR

    withAdminOption ::= KW_WITH KW_ADMIN KW_OPTION

    metastoreCheck ::= KW_MSCK opt_153 grp_154

    resourceList ::= resource list_160

    resource ::= resourceType StringLiteral

    resourceType ::= KW_JAR
           | KW_FILE
           | KW_ARCHIVE

    createFunctionStatement ::= KW_CREATE opt_161 KW_FUNCTION functionIdentifier KW_AS StringLiteral opt_163

    dropFunctionStatement ::= KW_DROP opt_164 KW_FUNCTION opt_165 functionIdentifier

    reloadFunctionsStatement ::= KW_RELOAD grp_166

    createMacroStatement ::= KW_CREATE KW_TEMPORARY KW_MACRO IDENTIFIER LPAREN opt_167 RPAREN expression

    dropMacroStatement ::= KW_DROP KW_TEMPORARY KW_MACRO opt_168 IDENTIFIER

    createViewStatement ::= KW_CREATE opt_169 KW_VIEW opt_170 tableName opt_172 opt_173 opt_174 opt_175 KW_AS selectStatementWithCTE

    viewPartition ::= KW_PARTITIONED KW_ON grp_176 RPAREN

    viewOrganization ::= viewClusterSpec
           | viewComplexSpec

    viewClusterSpec ::= KW_CLUSTERED KW_ON LPAREN columnNameList RPAREN

    viewComplexSpec ::= viewDistSpec viewSortSpec

    viewDistSpec ::= KW_DISTRIBUTED KW_ON LPAREN columnNameList RPAREN

    viewSortSpec ::= KW_SORTED KW_ON LPAREN columnNameList RPAREN

    dropViewStatement ::= KW_DROP KW_VIEW opt_177 viewName

    createMaterializedViewStatement ::= KW_CREATE KW_MATERIALIZED KW_VIEW opt_178 tableName opt_179 opt_180 opt_181 opt_182 opt_183 opt_184 opt_185 opt_186 KW_AS selectStatementWithCTE

    dropMaterializedViewStatement ::= KW_DROP KW_MATERIALIZED KW_VIEW opt_187 viewName

    createScheduledQueryStatement ::= KW_CREATE KW_SCHEDULED KW_QUERY id_ scheduleSpec opt_188 opt_189 definedAsSpec

    dropScheduledQueryStatement ::= KW_DROP KW_SCHEDULED KW_QUERY id_

    alterScheduledQueryStatement ::= KW_ALTER KW_SCHEDULED KW_QUERY id_ alterScheduledQueryChange

    alterScheduledQueryChange ::= scheduleSpec
           | executedAsSpec
           | enableSpecification
           | definedAsSpec
           | KW_EXECUTE

    scheduleSpec ::= KW_CRON StringLiteral
           | KW_EVERY opt_190 intervalQualifiers opt_193

    executedAsSpec ::= KW_EXECUTED KW_AS StringLiteral

    definedAsSpec ::= opt_194 KW_AS statement

    showFunctionIdentifier ::= functionIdentifier
           | StringLiteral

    showStmtIdentifier ::= id_
           | StringLiteral

    tableComment ::= KW_COMMENT StringLiteral

    createTablePartitionSpec ::= KW_PARTITIONED KW_BY grp_195 RPAREN

    createTablePartitionColumnTypeSpec ::= columnNameTypeConstraint list_198

    createTablePartitionColumnSpec ::= columnName list_200

    partitionTransformSpec ::= columnNameTransformConstraint list_202

    columnNameTransformConstraint ::= partitionTransformType

    partitionTransformType ::= columnName
           | grp_203 LPAREN columnName RPAREN
           | grp_204 LPAREN Number COMMA columnName RPAREN

    tableBuckets ::= KW_CLUSTERED KW_BY LPAREN columnNameList RPAREN opt_206 KW_INTO Number KW_BUCKETS

    tableImplBuckets ::= KW_CLUSTERED KW_INTO Number KW_BUCKETS

    tableSkewed ::= KW_SKEWED KW_BY LPAREN columnNameList RPAREN KW_ON LPAREN skewedValueElement RPAREN opt_207

    rowFormat ::= rowFormatSerde
           | rowFormatDelimited

    recordReader ::= KW_RECORDREADER StringLiteral

    recordWriter ::= KW_RECORDWRITER StringLiteral

    rowFormatSerde ::= KW_ROW KW_FORMAT KW_SERDE StringLiteral opt_209

    rowFormatDelimited ::= KW_ROW KW_FORMAT KW_DELIMITED opt_210 opt_211 opt_212 opt_213 opt_214

    tableRowFormat ::= rowFormatDelimited
           | rowFormatSerde

    tablePropertiesPrefixed ::= KW_TBLPROPERTIES tableProperties

    tableProperties ::= LPAREN tablePropertiesList RPAREN

    tablePropertiesList ::= keyValueProperty list_216
           | keyProperty list_218

    keyValueProperty ::= StringLiteral EQUAL StringLiteral

    keyProperty ::= StringLiteral

    tableRowFormatFieldIdentifier ::= KW_FIELDS KW_TERMINATED KW_BY StringLiteral opt_220

    tableRowFormatCollItemsIdentifier ::= KW_COLLECTION KW_ITEMS KW_TERMINATED KW_BY StringLiteral

    tableRowFormatMapKeysIdentifier ::= KW_MAP KW_KEYS KW_TERMINATED KW_BY StringLiteral

    tableRowFormatLinesIdentifier ::= KW_LINES KW_TERMINATED KW_BY StringLiteral

    tableRowNullFormat ::= KW_NULL KW_DEFINED KW_AS StringLiteral

    tableFileFormat ::= KW_STORED KW_AS KW_INPUTFORMAT StringLiteral KW_OUTPUTFORMAT StringLiteral opt_222
           | KW_STORED KW_BY StringLiteral opt_224 opt_226
           | KW_STORED KW_BY id_ opt_228 opt_230
           | KW_STORED KW_AS id_

    tableLocation ::= KW_LOCATION StringLiteral

    columnNameTypeList ::= columnNameType list_232

    columnNameTypeOrConstraintList ::= columnNameTypeOrConstraint list_234

    columnNameColonTypeList ::= columnNameColonType list_236

    columnNameList ::= columnName list_238

    columnName ::= id_

    extColumnName ::= id_ list_241

    columnNameOrderList ::= columnNameOrder list_243

    columnParenthesesList ::= LPAREN columnNameList RPAREN

    enableValidateSpecification ::= enableSpecification opt_244
           | enforcedSpecification

    enableSpecification ::= KW_ENABLE
           | KW_DISABLE

    validateSpecification ::= KW_VALIDATE
           | KW_NOVALIDATE

    enforcedSpecification ::= KW_ENFORCED
           | KW_NOT KW_ENFORCED

    relySpecification ::= KW_RELY
           | KW_NORELY

    createConstraint ::= opt_246 tableLevelConstraint opt_247

    alterConstraintWithName ::= KW_CONSTRAINT id_ tableLevelConstraint opt_248

    tableLevelConstraint ::= pkUkConstraint
           | checkConstraint

    pkUkConstraint ::= tableConstraintType columnParenthesesList

    checkConstraint ::= KW_CHECK LPAREN expression RPAREN

    createForeignKey ::= opt_250 KW_FOREIGN KW_KEY columnParenthesesList KW_REFERENCES tableName columnParenthesesList opt_251

    alterForeignKeyWithName ::= KW_CONSTRAINT id_ KW_FOREIGN KW_KEY columnParenthesesList KW_REFERENCES tableName columnParenthesesList opt_252

    skewedValueElement ::= skewedColumnValues
           | skewedColumnValuePairList

    skewedColumnValuePairList ::= skewedColumnValuePair list_254

    skewedColumnValuePair ::= LPAREN skewedColumnValues RPAREN

    skewedColumnValues ::= skewedColumnValue list_256

    skewedColumnValue ::= constant

    skewedValueLocationElement ::= skewedColumnValue
           | skewedColumnValuePair

    orderSpecification ::= KW_ASC
           | KW_DESC

    nullOrdering ::= KW_NULLS grp_257

    columnNameOrder ::= id_ opt_258 opt_259

    columnNameCommentList ::= columnNameComment list_261

    columnNameComment ::= id_ opt_263

    orderSpecificationRewrite ::= KW_ASC
           | KW_DESC

    columnRefOrder ::= expression opt_264 opt_265

    columnNameType ::= id_ colType opt_267

    columnNameTypeOrConstraint ::= tableConstraint
           | columnNameTypeConstraint

    tableConstraint ::= createForeignKey
           | createConstraint

    columnNameTypeConstraint ::= id_ colType opt_268 opt_270

    columnConstraint ::= foreignKeyConstraint
           | colConstraint

    foreignKeyConstraint ::= opt_272 KW_REFERENCES tableName LPAREN columnName RPAREN opt_273

    colConstraint ::= opt_275 columnConstraintType opt_276

    alterColumnConstraint ::= alterForeignKeyConstraint
           | alterColConstraint

    alterForeignKeyConstraint ::= opt_278 KW_REFERENCES tableName LPAREN columnName RPAREN opt_279

    alterColConstraint ::= opt_281 columnConstraintType opt_282

    columnConstraintType ::= KW_NOT KW_NULL
           | KW_DEFAULT defaultVal
           | checkConstraint
           | tableConstraintType

    defaultVal ::= constant
           | function_
           | castExpression

    tableConstraintType ::= KW_PRIMARY KW_KEY
           | KW_UNIQUE

    constraintOptsCreate ::= enableValidateSpecification opt_283

    constraintOptsAlter ::= enableValidateSpecification opt_284

    columnNameColonType ::= id_ COLON colType opt_286

    colType ::= type

    colTypeList ::= colType list_288

    type ::= primitiveType
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
           | KW_REAL
           | KW_DOUBLE opt_289
           | KW_DATE
           | KW_DATETIME
           | KW_TIMESTAMP
           | KW_TIMESTAMPLOCALTZ
           | KW_TIMESTAMP KW_WITH KW_LOCAL KW_TIME KW_ZONE
           | KW_STRING
           | KW_BINARY
           | KW_DECIMAL opt_293
           | grp_294 LPAREN Number RPAREN

    listType ::= KW_ARRAY LESSTHAN type GREATERTHAN

    structType ::= KW_STRUCT LESSTHAN columnNameColonTypeList GREATERTHAN

    mapType ::= KW_MAP LESSTHAN primitiveType COMMA type GREATERTHAN

    unionType ::= KW_UNIONTYPE LESSTHAN colTypeList GREATERTHAN

    setOperator ::= grp_295 opt_297

    queryStatementExpression ::= opt_298 queryStatementExpressionBody

    queryStatementExpressionBody ::= fromStatement
           | regularBody

    withClause ::= KW_WITH cteStatement list_300

    cteStatement ::= id_ opt_302 KW_AS LPAREN queryStatementExpression RPAREN

    fromStatement ::= singleFromStatement list_304

    singleFromStatement ::= fromClause list_305 list_306

    regularBody ::= insertClause selectStatement
           | selectStatement

    atomSelectStatement ::= selectClause opt_307 opt_308 opt_309 opt_310 opt_311 opt_312
           | LPAREN selectStatement RPAREN
           | valuesSource

    selectStatement ::= atomSelectStatement opt_313 opt_314 opt_315 opt_316 opt_317 opt_318

    setOpSelectStatement ::= list_320

    selectStatementWithCTE ::= opt_321 selectStatement

    body ::= insertClause selectClause opt_322 opt_323 opt_324 opt_325 opt_326 opt_327 opt_328 opt_329 opt_330 opt_331 opt_332
           | selectClause opt_333 opt_334 opt_335 opt_336 opt_337 opt_338 opt_339 opt_340 opt_341 opt_342 opt_343

    insertClause ::= KW_INSERT grp_344

    destination ::= opt_349 KW_DIRECTORY StringLiteral opt_350 opt_351
           | KW_TABLE tableOrPartition

    limitClause ::= KW_LIMIT grp_352

    deleteStatement ::= KW_DELETE KW_FROM tableName opt_355

    columnAssignmentClause ::= tableOrColumn EQUAL precedencePlusExpressionOrDefault

    precedencePlusExpressionOrDefault ::= defaultValue
           | precedencePlusExpression

    setColumnsClause ::= KW_SET columnAssignmentClause list_357

    updateStatement ::= KW_UPDATE tableName setColumnsClause opt_358

    sqlTransactionStatement ::= startTransactionStatement
           | commitStatement
           | rollbackStatement
           | setAutoCommitStatement

    startTransactionStatement ::= KW_START KW_TRANSACTION opt_362

    transactionMode ::= isolationLevel
           | transactionAccessMode

    transactionAccessMode ::= KW_READ grp_363

    isolationLevel ::= KW_ISOLATION KW_LEVEL levelOfIsolation

    levelOfIsolation ::= KW_SNAPSHOT

    commitStatement ::= KW_COMMIT opt_364

    rollbackStatement ::= KW_ROLLBACK opt_365

    setAutoCommitStatement ::= KW_SET KW_AUTOCOMMIT booleanValueTok

    abortTransactionStatement ::= KW_ABORT KW_TRANSACTIONS list_366

    abortCompactionStatement ::= KW_ABORT KW_COMPACTIONS list_367

    mergeStatement ::= KW_MERGE opt_368 KW_INTO tableName opt_371 KW_USING joinSourcePart KW_ON expression whenClauses

    whenClauses ::= list_373 opt_374

    whenNotMatchedClause ::= KW_WHEN KW_NOT KW_MATCHED opt_376 KW_THEN KW_INSERT opt_377 KW_VALUES valueRowConstructor

    whenMatchedAndClause ::= KW_WHEN KW_MATCHED KW_AND expression KW_THEN updateOrDelete

    whenMatchedThenClause ::= KW_WHEN KW_MATCHED KW_THEN updateOrDelete

    updateOrDelete ::= KW_UPDATE setColumnsClause
           | KW_DELETE

    killQueryStatement ::= KW_KILL KW_QUERY list_378

    compactionId ::= KW_COMPACT_ID EQUAL Number

    compactionPool ::= KW_POOL StringLiteral

    compactionType ::= KW_TYPE StringLiteral

    compactionStatus ::= KW_STATUS StringLiteral

    alterStatement ::= KW_ALTER grp_379

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
           | alterTblPartitionStatementSuffix
           | partitionSpec alterTblPartitionStatementSuffix
           | alterStatementSuffixSetOwner
           | alterStatementSuffixSetPartSpec
           | alterStatementSuffixExecute

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
           | alterStatementSuffixUpdateColumns

    alterStatementPartitionKeyType ::= KW_PARTITION KW_COLUMN LPAREN columnNameType RPAREN

    alterViewStatementSuffix ::= alterViewSuffixProperties
           | alterStatementSuffixRename
           | alterStatementSuffixAddPartitions
           | alterStatementSuffixDropPartitions
           | selectStatementWithCTE

    alterMaterializedViewStatementSuffix ::= alterMaterializedViewSuffixRewrite
           | alterMaterializedViewSuffixRebuild

    alterMaterializedViewSuffixRewrite ::= rewriteEnabled
           | rewriteDisabled

    alterMaterializedViewSuffixRebuild ::= KW_REBUILD

    alterDatabaseStatementSuffix ::= alterDatabaseSuffixProperties
           | alterDatabaseSuffixSetOwner
           | alterDatabaseSuffixSetLocation

    alterDatabaseSuffixProperties ::= id_ KW_SET KW_DBPROPERTIES dbProperties

    alterDatabaseSuffixSetOwner ::= id_ KW_SET KW_OWNER principalName

    alterDatabaseSuffixSetLocation ::= id_ KW_SET grp_381 StringLiteral

    alterDatabaseSuffixSetManagedLocation ::= id_ KW_SET KW_MANAGEDLOCATION StringLiteral

    alterStatementSuffixRename ::= KW_RENAME KW_TO tableName

    alterStatementSuffixAddCol ::= grp_382 KW_COLUMNS LPAREN columnNameTypeList RPAREN opt_383

    alterStatementSuffixAddConstraint ::= KW_ADD grp_384

    alterStatementSuffixUpdateColumns ::= KW_UPDATE KW_COLUMNS opt_385

    alterStatementSuffixDropConstraint ::= KW_DROP KW_CONSTRAINT id_

    alterStatementSuffixRenameCol ::= KW_CHANGE opt_386 id_ id_ colType opt_387 opt_389 opt_390 opt_391

    alterStatementSuffixUpdateStatsCol ::= KW_UPDATE KW_STATISTICS KW_FOR opt_392 id_ KW_SET tableProperties opt_394

    alterStatementSuffixUpdateStats ::= KW_UPDATE KW_STATISTICS KW_SET tableProperties

    alterStatementChangeColPosition ::= KW_FIRST
           | KW_AFTER id_

    alterStatementSuffixAddPartitions ::= KW_ADD opt_395 list_396

    alterStatementSuffixAddPartitionsElement ::= partitionSpec opt_397

    alterStatementSuffixTouch ::= KW_TOUCH list_398

    alterStatementSuffixArchive ::= KW_ARCHIVE list_399

    alterStatementSuffixUnArchive ::= KW_UNARCHIVE list_400

    partitionLocation ::= KW_LOCATION StringLiteral

    alterStatementSuffixDropPartitions ::= KW_DROP opt_401 KW_PARTITION partitionSelectorSpec list_403 opt_404 opt_405

    alterStatementSuffixProperties ::= KW_SET KW_TBLPROPERTIES tableProperties
           | KW_UNSET KW_TBLPROPERTIES opt_406 tableProperties

    alterViewSuffixProperties ::= KW_SET KW_TBLPROPERTIES tableProperties
           | KW_UNSET KW_TBLPROPERTIES opt_407 tableProperties

    alterStatementSuffixSerdeProperties ::= KW_SET grp_408
           | KW_UNSET KW_SERDEPROPERTIES tableProperties

    tablePartitionPrefix ::= tableName opt_411

    alterStatementSuffixFileFormat ::= KW_SET KW_FILEFORMAT fileFormat

    alterStatementSuffixClusterbySortby ::= KW_NOT grp_412
           | tableBuckets

    alterTblPartitionStatementSuffixSkewedLocation ::= KW_SET KW_SKEWED KW_LOCATION skewedLocations

    skewedLocations ::= LPAREN skewedLocationsList RPAREN

    skewedLocationsList ::= skewedLocationMap list_414

    skewedLocationMap ::= skewedValueLocationElement EQUAL StringLiteral

    alterStatementSuffixLocation ::= KW_SET KW_LOCATION StringLiteral

    alterStatementSuffixSkewedby ::= tableSkewed
           | KW_NOT grp_415

    alterStatementSuffixExchangePartition ::= KW_EXCHANGE partitionSpec KW_WITH KW_TABLE tableName

    alterStatementSuffixRenamePart ::= KW_RENAME KW_TO partitionSpec

    alterStatementSuffixStatsPart ::= KW_UPDATE KW_STATISTICS KW_FOR opt_416 id_ KW_SET tableProperties opt_418

    alterStatementSuffixMergeFiles ::= KW_CONCATENATE

    alterStatementSuffixBucketNum ::= KW_INTO Number KW_BUCKETS

    blocking ::= KW_AND KW_WAIT

    compactPool ::= KW_POOL StringLiteral

    alterStatementSuffixCompact ::= KW_COMPACT StringLiteral opt_419 opt_420 opt_421 opt_423

    alterStatementSuffixSetOwner ::= KW_SET KW_OWNER principalName

    alterStatementSuffixSetPartSpec ::= KW_SET KW_PARTITION KW_SPEC LPAREN partitionTransformSpec RPAREN

    alterStatementSuffixExecute ::= KW_EXECUTE grp_424 RPAREN

    fileFormat ::= KW_INPUTFORMAT StringLiteral KW_OUTPUTFORMAT StringLiteral KW_SERDE StringLiteral opt_427
           | id_

    alterDataConnectorStatementSuffix ::= alterDataConnectorSuffixProperties
           | alterDataConnectorSuffixSetOwner
           | alterDataConnectorSuffixSetUrl

    alterDataConnectorSuffixProperties ::= id_ KW_SET KW_DCPROPERTIES dcProperties

    alterDataConnectorSuffixSetOwner ::= id_ KW_SET KW_OWNER principalName

    alterDataConnectorSuffixSetUrl ::= id_ KW_SET KW_URL StringLiteral

    likeTableOrFile ::= KW_LIKE KW_FILE
           | KW_LIKE KW_FILE id_ StringLiteral
           | KW_LIKE tableName

    createTableStatement ::= KW_CREATE opt_428 opt_429 opt_430 KW_TABLE opt_431 tableName grp_432
           | KW_CREATE KW_MANAGED KW_TABLE opt_450 tableName grp_451

    createDataConnectorStatement ::= KW_CREATE KW_DATACONNECTOR opt_468 id_ dataConnectorType dataConnectorUrl opt_469 opt_471

    dataConnectorComment ::= KW_COMMENT StringLiteral

    dataConnectorUrl ::= KW_URL StringLiteral

    dataConnectorType ::= KW_TYPE StringLiteral

    dcProperties ::= LPAREN dbPropertiesList RPAREN

    dropDataConnectorStatement ::= KW_DROP KW_DATACONNECTOR opt_472 id_

    tableAllColumns ::= STAR
           | tableName DOT STAR

    tableOrColumn ::= id_

    defaultValue ::= KW_DEFAULT

    expressionList ::= expression list_474

    aliasList ::= id_ list_476

    fromClause ::= KW_FROM fromSource

    fromSource ::= uniqueJoinToken uniqueJoinSource list_478
           | joinSource

    atomjoinSource ::= tableSource list_479
           | virtualTableSource list_480
           | subQuerySource list_481
           | partitionedTableFunction list_482
           | LPAREN joinSource RPAREN

    joinSource ::= atomjoinSource list_486

    joinSourcePart ::= grp_487 list_488

    uniqueJoinSource ::= opt_489 uniqueJoinTableSource uniqueJoinExpr

    uniqueJoinExpr ::= LPAREN expressionList RPAREN

    uniqueJoinToken ::= KW_UNIQUEJOIN

    joinToken ::= COMMA
           | opt_495 KW_JOIN

    lateralView ::= KW_LATERAL KW_VIEW KW_OUTER function_ tableAlias opt_499
           | opt_500 KW_LATERAL grp_501

    tableAlias ::= id_

    tableBucketSample ::= KW_TABLESAMPLE LPAREN KW_BUCKET Number KW_OUT KW_OF Number opt_516 RPAREN

    splitSample ::= KW_TABLESAMPLE LPAREN grp_517 RPAREN

    tableSample ::= tableBucketSample
           | splitSample

    tableSource ::= tableName opt_519 opt_520 opt_521 opt_524

    asOfClause ::= KW_FOR grp_525

    uniqueJoinTableSource ::= tableName opt_526 opt_529

    tableName ::= id_ DOT id_ opt_531
           | id_

    viewName ::= opt_533 id_

    subQuerySource ::= LPAREN queryStatementExpression RPAREN opt_534 id_

    partitioningSpec ::= partitionByClause opt_535
           | orderByClause
           | distributeByClause opt_536
           | sortByClause
           | clusterByClause

    partitionTableFunctionSource ::= subQuerySource
           | tableSource
           | partitionedTableFunction

    partitionedTableFunction ::= id_ LPAREN KW_ON partitionTableFunctionSource opt_537 opt_541 RPAREN opt_542

    whereClause ::= KW_WHERE searchCondition

    searchCondition ::= expression

    valuesSource ::= valuesClause

    valuesClause ::= KW_VALUES valuesTableConstructor

    valuesTableConstructor ::= valueRowConstructor list_544
           | firstValueRowConstructor list_546

    valueRowConstructor ::= expressionsInParenthesis

    firstValueRowConstructor ::= LPAREN firstExpressionsWithAlias RPAREN

    virtualTableSource ::= KW_TABLE LPAREN valuesClause RPAREN opt_547 tableAlias opt_551 RPAREN

    selectClause ::= KW_SELECT opt_552 grp_553
           | trfmClause

    all_distinct ::= KW_ALL
           | KW_DISTINCT

    selectList ::= selectItem list_556

    selectTrfmClause ::= LPAREN selectExpressionList RPAREN rowFormat recordWriter KW_USING StringLiteral opt_560 rowFormat recordReader

    selectItem ::= tableAllColumns
           | grp_561

    trfmClause ::= grp_567 selectExpressionList rowFormat recordWriter KW_USING StringLiteral opt_571 rowFormat recordReader

    selectExpression ::= tableAllColumns
           | expression

    selectExpressionList ::= selectExpression list_573

    window_clause ::= KW_WINDOW window_defn list_575

    window_defn ::= id_ KW_AS window_specification

    window_specification ::= id_
           | LPAREN opt_576 opt_577 opt_578 RPAREN

    window_frame ::= window_range_expression
           | window_value_expression

    window_range_expression ::= KW_ROWS grp_579

    window_value_expression ::= KW_RANGE grp_580

    window_frame_start_boundary ::= KW_UNBOUNDED KW_PRECEDING
           | KW_CURRENT KW_ROW
           | Number KW_PRECEDING

    window_frame_boundary ::= grp_581 grp_582
           | KW_CURRENT KW_ROW

    groupByClause ::= KW_GROUP KW_BY groupby_expression

    groupby_expression ::= rollupStandard
           | rollupOldSyntax
           | groupByEmpty

    groupByEmpty ::= LPAREN RPAREN

    rollupStandard ::= grp_583 LPAREN expression list_585 RPAREN

    rollupOldSyntax ::= expressionsNotInParenthesis opt_587 opt_591

    groupingSetExpression ::= groupingSetExpressionMultiple
           | groupingExpressionSingle

    groupingSetExpressionMultiple ::= LPAREN opt_592 list_594 RPAREN

    groupingExpressionSingle ::= expression

    havingClause ::= KW_HAVING havingCondition

    qualifyClause ::= KW_QUALIFY expression

    havingCondition ::= expression

    expressionsInParenthesis ::= LPAREN expressionsNotInParenthesis RPAREN

    expressionsNotInParenthesis ::= expressionOrDefault opt_595

    expressionPart ::= list_597

    expressionOrDefault ::= defaultValue
           | expression

    firstExpressionsWithAlias ::= expression opt_598 opt_599 list_601

    expressionWithAlias ::= expression opt_602 opt_603

    expressions ::= expressionsInParenthesis
           | expressionsNotInParenthesis

    columnRefOrderInParenthesis ::= LPAREN columnRefOrder list_605 RPAREN

    columnRefOrderNotInParenthesis ::= columnRefOrder list_607

    orderByClause ::= KW_ORDER KW_BY columnRefOrder list_609

    clusterByClause ::= KW_CLUSTER KW_BY expressions

    partitionByClause ::= KW_PARTITION KW_BY expressions

    distributeByClause ::= KW_DISTRIBUTE KW_BY expressions

    sortByClause ::= KW_SORT KW_BY grp_610

    trimFunction ::= KW_TRIM LPAREN opt_612 opt_613 KW_FROM selectExpression RPAREN

    function_ ::= trimFunction
           | functionName LPAREN grp_614 grp_620

    null_treatment ::= KW_RESPECT KW_NULLS
           | KW_IGNORE KW_NULLS

    functionName ::= functionIdentifier
           | sql11ReservedKeywordsUsedAsFunctionName

    castExpression ::= KW_CAST LPAREN expression KW_AS primitiveType opt_623 RPAREN

    caseExpression ::= KW_CASE expression list_625 opt_627 KW_END

    whenExpression ::= KW_CASE list_629 opt_631 KW_END

    floorExpression ::= KW_FLOOR LPAREN expression opt_633 RPAREN

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
           | prepareStmtParam

    prepareStmtParam ::= parameterIdx

    parameterIdx ::= QUESTION

    stringLiteralSequence ::= StringLiteral list_634

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
           | KW_INTERVAL grp_635 intervalQualifiers

    intervalQualifiers ::= KW_YEAR KW_TO KW_MONTH
           | KW_DAY KW_TO KW_SECOND
           | KW_YEAR
           | KW_MONTH
           | KW_DAY
           | KW_HOUR
           | KW_MINUTE
           | KW_SECOND

    expression ::= precedenceOrExpression

    atomExpression ::= constant
           | intervalExpression
           | castExpression
           | extractExpression
           | floorExpression
           | caseExpression
           | whenExpression
           | subQueryExpression
           | function_
           | tableOrColumn
           | expressionsInParenthesis

    precedenceFieldExpression ::= atomExpression list_637

    precedenceUnaryOperator ::= PLUS
           | MINUS
           | TILDE

    precedenceUnaryPrefixExpression ::= list_638 precedenceFieldExpression

    precedenceBitwiseXorOperator ::= BITWISEXOR

    precedenceBitwiseXorExpression ::= precedenceUnaryPrefixExpression list_640

    precedenceStarOperator ::= STAR
           | DIVIDE
           | MOD
           | DIV

    precedenceStarExpression ::= precedenceBitwiseXorExpression list_642

    precedencePlusOperator ::= PLUS
           | MINUS

    precedencePlusExpression ::= precedenceStarExpression list_644

    precedenceConcatenateOperator ::= CONCATENATE

    precedenceConcatenateExpression ::= precedencePlusExpression list_646

    precedenceAmpersandOperator ::= AMPERSAND

    precedenceAmpersandExpression ::= precedenceConcatenateExpression list_648

    precedenceBitwiseOrOperator ::= BITWISEOR

    precedenceBitwiseOrExpression ::= precedenceAmpersandExpression list_650

    precedenceRegexpOperator ::= KW_LIKE
           | KW_RLIKE
           | KW_REGEXP

    precedenceSimilarOperator ::= precedenceRegexpOperator
           | LESSTHANOREQUALTO
           | LESSTHAN
           | GREATERTHANOREQUALTO
           | GREATERTHAN

    subQueryExpression ::= LPAREN selectStatement RPAREN

    precedenceSimilarExpression ::= precedenceSimilarExpressionMain
           | KW_EXISTS subQueryExpression

    precedenceSimilarExpressionMain ::= precedenceBitwiseOrExpression opt_651

    precedenceSimilarExpressionPart ::= precedenceSimilarOperator precedenceBitwiseOrExpression
           | precedenceSimilarExpressionAtom
           | KW_NOT precedenceSimilarExpressionPartNot

    precedenceSimilarExpressionAtom ::= KW_IN precedenceSimilarExpressionIn
           | KW_BETWEEN precedenceBitwiseOrExpression KW_AND precedenceBitwiseOrExpression
           | KW_LIKE grp_652 expressionsInParenthesis
           | precedenceSimilarExpressionQuantifierPredicate

    precedenceSimilarExpressionQuantifierPredicate ::= subQuerySelectorOperator quantifierType subQueryExpression

    quantifierType ::= KW_ANY
           | KW_SOME
           | KW_ALL

    precedenceSimilarExpressionIn ::= subQueryExpression
           | expressionsInParenthesis

    precedenceSimilarExpressionPartNot ::= precedenceRegexpOperator precedenceBitwiseOrExpression
           | precedenceSimilarExpressionAtom

    precedenceDistinctOperator ::= KW_IS KW_DISTINCT KW_FROM

    precedenceEqualOperator ::= EQUAL
           | EQUAL_NS
           | NOTEQUAL
           | KW_IS KW_NOT KW_DISTINCT KW_FROM

    precedenceEqualExpression ::= precedenceSimilarExpression list_658

    isCondition ::= KW_NULL
           | KW_TRUE
           | KW_FALSE
           | KW_UNKNOWN
           | KW_NOT KW_NULL
           | KW_NOT KW_TRUE
           | KW_NOT KW_FALSE
           | KW_NOT KW_UNKNOWN

    precedenceUnarySuffixExpression ::= precedenceEqualExpression opt_660

    precedenceNotOperator ::= KW_NOT

    precedenceNotExpression ::= list_661 precedenceUnarySuffixExpression

    precedenceAndOperator ::= KW_AND

    precedenceAndExpression ::= precedenceNotExpression list_663

    precedenceOrOperator ::= KW_OR

    precedenceOrExpression ::= precedenceAndExpression list_665

    booleanValue ::= KW_TRUE
           | KW_FALSE

    booleanValueTok ::= KW_TRUE
           | KW_FALSE

    tableOrPartition ::= tableName opt_666

    partitionSpec ::= KW_PARTITION LPAREN partitionVal list_668 RPAREN

    partitionVal ::= id_ opt_670

    partitionSelectorSpec ::= LPAREN partitionSelectorVal list_672 RPAREN

    partitionSelectorVal ::= id_ partitionSelectorOperator constant

    partitionSelectorOperator ::= KW_LIKE
           | subQuerySelectorOperator

    subQuerySelectorOperator ::= EQUAL
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
           | KW_REAL
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

    id_ ::= IDENTIFIER
           | nonReserved

    functionIdentifier ::= id_ opt_674

    principalIdentifier ::= id_

    nonReserved ::= KW_ABORT
           | KW_ACTIVATE
           | KW_ACTIVE
           | KW_ADD
           | KW_ADMIN
           | KW_AFTER
           | KW_ALLOC_FRACTION
           | KW_ANALYZE
           | KW_ARCHIVE
           | KW_ASC
           | KW_AST
           | KW_AT
           | KW_AUTOCOMMIT
           | KW_BATCH
           | KW_BEFORE
           | KW_BUCKET
           | KW_BUCKETS
           | KW_CACHE
           | KW_CASCADE
           | KW_CBO
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
           | KW_COST
           | KW_CRON
           | KW_DATA
           | KW_DATABASES
           | KW_DATETIME
           | KW_DAY
           | KW_DAYOFWEEK
           | KW_DBPROPERTIES
           | KW_DCPROPERTIES
           | KW_DEBUG
           | KW_DEFAULT
           | KW_DEFERRED
           | KW_DEFINED
           | KW_DELIMITED
           | KW_DEPENDENCY
           | KW_DESC
           | KW_DETAIL
           | KW_DIRECTORIES
           | KW_DIRECTORY
           | KW_DISABLE
           | KW_DISTRIBUTE
           | KW_DISTRIBUTED
           | KW_DO
           | KW_DOW
           | KW_DUMP
           | KW_ELEM_TYPE
           | KW_ENABLE
           | KW_ENFORCED
           | KW_ESCAPED
           | KW_EVERY
           | KW_EXCLUSIVE
           | KW_EXECUTE
           | KW_EXECUTED
           | KW_EXPIRE_SNAPSHOTS
           | KW_EXPLAIN
           | KW_EXPORT
           | KW_EXPRESSION
           | KW_FIELDS
           | KW_FILE
           | KW_FILEFORMAT
           | KW_FIRST
           | KW_FORMAT
           | KW_FORMATTED
           | KW_FUNCTIONS
           | KW_HOLD_DDLTIME
           | KW_HOUR
           | KW_IDXPROPERTIES
           | KW_IGNORE
           | KW_INDEX
           | KW_INDEXES
           | KW_INPATH
           | KW_INPUTDRIVER
           | KW_INPUTFORMAT
           | KW_ISOLATION
           | KW_ITEMS
           | KW_JAR
           | KW_JOINCOST
           | KW_KEY
           | KW_KEYS
           | KW_KEY_TYPE
           | KW_KILL
           | KW_LAST
           | KW_LEVEL
           | KW_LIMIT
           | KW_LINES
           | KW_LOAD
           | KW_LOCATION
           | KW_LOCK
           | KW_LOCKS
           | KW_LOGICAL
           | KW_LONG
           | KW_MANAGED
           | KW_MANAGEDLOCATION
           | KW_MANAGEMENT
           | KW_MAPJOIN
           | KW_MAPPING
           | KW_MATCHED
           | KW_MATERIALIZED
           | KW_METADATA
           | KW_MINUTE
           | KW_MONTH
           | KW_MOVE
           | KW_MSCK
           | KW_NORELY
           | KW_NOSCAN
           | KW_NOVALIDATE
           | KW_NO_DROP
           | KW_NULLS
           | KW_OFFLINE
           | KW_OFFSET
           | KW_OPERATOR
           | KW_OPTION
           | KW_OUTPUTDRIVER
           | KW_OUTPUTFORMAT
           | KW_OVERWRITE
           | KW_OWNER
           | KW_PARTITIONED
           | KW_PARTITIONS
           | KW_PATH
           | KW_PLAN
           | KW_PLANS
           | KW_PLUS
           | KW_POOL
           | KW_PRINCIPALS
           | KW_PROTECTION
           | KW_PURGE
           | KW_QUARTER
           | KW_QUERY
           | KW_QUERY_PARALLELISM
           | KW_READ
           | KW_READONLY
           | KW_REBUILD
           | KW_RECORDREADER
           | KW_RECORDWRITER
           | KW_RELOAD
           | KW_RELY
           | KW_REMOTE
           | KW_RENAME
           | KW_REOPTIMIZATION
           | KW_REPAIR
           | KW_REPL
           | KW_REPLACE
           | KW_REPLICATION
           | KW_RESOURCE
           | KW_RESPECT
           | KW_RESTRICT
           | KW_REWRITE
           | KW_ROLE
           | KW_ROLES
           | KW_SCHEDULED
           | KW_SCHEDULING_POLICY
           | KW_SCHEMA
           | KW_SCHEMAS
           | KW_SECOND
           | KW_SEMI
           | KW_SERDE
           | KW_SERDEPROPERTIES
           | KW_SERVER
           | KW_SETS
           | KW_SET_CURRENT_SNAPSHOT
           | KW_SHARED
           | KW_SHOW
           | KW_SHOW_DATABASE
           | KW_SKEWED
           | KW_SNAPSHOT
           | KW_SORT
           | KW_SORTED
           | KW_SPEC
           | KW_SSL
           | KW_STATISTICS
           | KW_STATUS
           | KW_STORED
           | KW_STREAMTABLE
           | KW_STRING
           | KW_STRUCT
           | KW_SUMMARY
           | KW_SYSTEM_TIME
           | KW_SYSTEM_VERSION
           | KW_TABLES
           | KW_TBLPROPERTIES
           | KW_TEMPORARY
           | KW_TERMINATED
           | KW_TIMESTAMPTZ
           | KW_TINYINT
           | KW_TOUCH
           | KW_TRANSACTION
           | KW_TRANSACTIONAL
           | KW_TRANSACTIONS
           | KW_TRIM
           | KW_TYPE
           | KW_UNARCHIVE
           | KW_UNDO
           | KW_UNIONTYPE
           | KW_UNKNOWN
           | KW_UNLOCK
           | KW_UNMANAGED
           | KW_UNSET
           | KW_UNSIGNED
           | KW_URI
           | KW_URL
           | KW_USE
           | KW_UTC
           | KW_UTCTIMESTAMP
           | KW_VALIDATE
           | KW_VALUE_TYPE
           | KW_VECTORIZATION
           | KW_VIEW
           | KW_VIEWS
           | KW_WAIT
           | KW_WEEK
           | KW_WHILE
           | KW_WITHIN
           | KW_WORK
           | KW_WORKLOAD
           | KW_WRITE
           | KW_YEAR
           | KW_ZONE

    sql11ReservedKeywordsUsedAsFunctionName ::= KW_ARRAY
           | KW_BIGINT
           | KW_BINARY
           | KW_BOOLEAN
           | KW_CURRENT_DATE
           | KW_CURRENT_TIMESTAMP
           | KW_DATE
           | KW_DOUBLE
           | KW_FLOAT
           | KW_GROUPING
           | KW_IF
           | KW_INT
           | KW_MAP
           | KW_REAL
           | KW_SMALLINT
           | KW_TIMESTAMP

    hint ::= hintList

    hintList ::= hintItem list_676

    hintItem ::= hintName opt_678

    hintName ::= KW_MAPJOIN
           | KW_SEMI
           | KW_STREAMTABLE
           | KW_PKFK_JOIN

    hintArgs ::= hintArgName list_680

    hintArgName ::= IDENTIFIER
           | Number
           | KW_NONE

    prepareStatement ::= KW_PREPARE id_ KW_FROM queryStatementExpression

    executeStatement ::= KW_EXECUTE id_ KW_USING executeParamList

    executeParamList ::= constant list_682

    resourcePlanDdlStatements ::= createResourcePlanStatement
           | alterResourcePlanStatement
           | dropResourcePlanStatement
           | globalWmStatement
           | replaceResourcePlanStatement
           | createTriggerStatement
           | alterTriggerStatement
           | dropTriggerStatement
           | createPoolStatement
           | alterPoolStatement
           | dropPoolStatement
           | createMappingStatement
           | alterMappingStatement
           | dropMappingStatement

    rpAssign ::= KW_QUERY_PARALLELISM EQUAL Number
           | KW_DEFAULT KW_POOL EQUAL poolPath

    rpAssignList ::= rpAssign list_684

    rpUnassign ::= KW_QUERY_PARALLELISM
           | KW_DEFAULT KW_POOL

    rpUnassignList ::= rpUnassign list_686

    createResourcePlanStatement ::= KW_CREATE KW_RESOURCE KW_PLAN opt_687 grp_688

    withReplace ::= KW_WITH KW_REPLACE

    activate ::= KW_ACTIVATE opt_691

    enable ::= KW_ENABLE

    disable ::= KW_DISABLE

    unmanaged ::= KW_UNMANAGED

    alterResourcePlanStatement ::= KW_ALTER KW_RESOURCE KW_PLAN id_ grp_692

    globalWmStatement ::= grp_695 KW_WORKLOAD KW_MANAGEMENT

    replaceResourcePlanStatement ::= KW_REPLACE grp_696

    dropResourcePlanStatement ::= KW_DROP KW_RESOURCE KW_PLAN opt_697 id_

    poolPath ::= id_ list_699

    triggerExpression ::= triggerAtomExpression

    triggerExpressionStandalone ::= triggerExpression

    triggerOrExpression ::= triggerAndExpression list_701

    triggerAndExpression ::= triggerAtomExpression list_703

    triggerAtomExpression ::= id_ comparisionOperator triggerLiteral

    triggerLiteral ::= Number
           | StringLiteral

    comparisionOperator ::= GREATERTHAN

    triggerActionExpression ::= KW_KILL
           | KW_MOVE KW_TO poolPath

    triggerActionExpressionStandalone ::= triggerActionExpression

    createTriggerStatement ::= KW_CREATE KW_TRIGGER id_ DOT id_ KW_WHEN triggerExpression KW_DO triggerActionExpression

    alterTriggerStatement ::= KW_ALTER KW_TRIGGER id_ DOT id_ grp_704

    dropTriggerStatement ::= KW_DROP KW_TRIGGER id_ DOT id_

    poolAssign ::= grp_707

    poolAssignList ::= poolAssign list_709

    createPoolStatement ::= KW_CREATE KW_POOL id_ DOT poolPath KW_WITH poolAssignList

    alterPoolStatement ::= KW_ALTER KW_POOL id_ DOT poolPath grp_710

    dropPoolStatement ::= KW_DROP KW_POOL id_ DOT poolPath

    createMappingStatement ::= KW_CREATE grp_712 KW_MAPPING StringLiteral KW_IN id_ grp_713 opt_715

    alterMappingStatement ::= KW_ALTER grp_716 KW_MAPPING StringLiteral KW_IN id_ grp_717 opt_719

    dropMappingStatement ::= KW_DROP grp_720 KW_MAPPING StringLiteral KW_IN id_

    grp_1 ::= explainStatement | execStatement

    list_3 ::= $empty | list_3 explainOption

    grp_2 ::= list_3 execStatement | KW_REWRITE queryStatementExpression

    grp_4 ::= KW_COST | KW_JOINCOST

    opt_5 ::= grp_4 | $empty

    opt_6 ::= vectorizationOnly | $empty

    opt_7 ::= vectorizatonDetail | $empty

    opt_8 ::= KW_LOCAL | $empty

    opt_9 ::= KW_OVERWRITE | $empty

    opt_10 ::= inputFileFormat | $empty

    opt_11 ::= KW_METADATA | $empty

    opt_12 ::= replicationClause | $empty

    opt_13 ::= KW_EXTERNAL | $empty

    seq_14 ::= opt_13 KW_TABLE tableOrPartition

    opt_15 ::= seq_14 | $empty

    opt_16 ::= tableLocation | $empty

    seq_17 ::= KW_REPLACE replDbPolicy

    opt_18 ::= seq_17 | $empty

    seq_19 ::= KW_WITH replConfigs

    opt_20 ::= seq_19 | $empty

    seq_21 ::= DOT replTableLevelPolicy

    opt_22 ::= seq_21 | $empty

    seq_23 ::= KW_INTO id_

    opt_24 ::= seq_23 | $empty

    seq_25 ::= KW_WITH replConfigs

    opt_26 ::= seq_25 | $empty

    seq_27 ::= COMMA keyValueProperty

    list_28 ::= $empty | list_28 seq_27

    seq_29 ::= DOT StringLiteral

    opt_30 ::= seq_29 | $empty

    seq_31 ::= KW_WITH replConfigs

    opt_32 ::= seq_31 | $empty

    opt_33 ::= ifNotExists | $empty

    opt_34 ::= databaseComment | $empty

    opt_35 ::= dbLocation | $empty

    opt_36 ::= dbManagedLocation | $empty

    seq_37 ::= KW_WITH KW_DBPROPERTIES dbProperties

    opt_38 ::= seq_37 | $empty

    opt_39 ::= ifNotExists | $empty

    opt_40 ::= databaseComment | $empty

    seq_41 ::= KW_WITH KW_DBPROPERTIES dbProperties

    opt_42 ::= seq_41 | $empty

    seq_43 ::= COMMA keyValueProperty

    list_44 ::= $empty | list_44 seq_43

    opt_45 ::= ifExists | $empty

    opt_46 ::= restrictOrCascade | $empty

    opt_47 ::= KW_TABLE | $empty

    seq_48 ::= KW_COLUMNS LPAREN columnNameList RPAREN

    opt_49 ::= seq_48 | $empty

    opt_50 ::= force | $empty

    opt_51 ::= ifExists | $empty

    opt_52 ::= KW_PURGE | $empty

    opt_53 ::= replicationClause | $empty

    seq_54 ::= DOT id_

    opt_55 ::= seq_54 | $empty

    grp_58 ::= KW_ELEM_TYPE | KW_KEY_TYPE | KW_VALUE_TYPE | id_

    grp_57 ::= DOT grp_58

    list_59 ::= $empty | list_59 grp_57

    grp_56 ::= id_ list_59

    opt_60 ::= grp_56 | $empty

    opt_61 ::= partitionSpec | $empty

    opt_62 ::= partitionSpec | $empty

    opt_63 ::= extColumnName | $empty

    grp_64 ::= KW_DESCRIBE | KW_DESC

    opt_66 ::= KW_EXTENDED | $empty

    opt_67 ::= KW_EXTENDED | $empty

    opt_68 ::= KW_EXTENDED | $empty

    grp_69 ::= KW_FORMATTED | KW_EXTENDED

    grp_65 ::= db_schema opt_66 id_ | KW_DATACONNECTOR opt_67 id_ | KW_FUNCTION opt_68 descFuncNames | grp_69 tabPartColTypeExpr | tabPartColTypeExpr

    opt_72 ::= columnNameList | $empty

    grp_71 ::= KW_NOSCAN | KW_FOR KW_COLUMNS opt_72

    opt_73 ::= grp_71 | $empty

    grp_70 ::= KW_COMPUTE KW_STATISTICS opt_73 | KW_CACHE KW_METADATA

    grp_74 ::= KW_DATABASES | KW_SCHEMAS

    seq_75 ::= KW_LIKE showStmtIdentifier

    opt_76 ::= seq_75 | $empty

    opt_77 ::= KW_EXTENDED | $empty

    seq_78 ::= from_in id_

    opt_79 ::= seq_78 | $empty

    opt_80 ::= showTablesFilterExpr | $empty

    seq_81 ::= from_in id_

    opt_82 ::= seq_81 | $empty

    grp_83 ::= KW_LIKE showStmtIdentifier | showStmtIdentifier

    opt_84 ::= grp_83 | $empty

    seq_85 ::= from_in id_

    opt_86 ::= seq_85 | $empty

    grp_87 ::= KW_LIKE showStmtIdentifier | showStmtIdentifier

    opt_88 ::= grp_87 | $empty

    opt_89 ::= KW_SORTED | $empty

    seq_90 ::= from_in id_

    opt_91 ::= seq_90 | $empty

    grp_92 ::= KW_LIKE showStmtIdentifier | showStmtIdentifier

    opt_93 ::= grp_92 | $empty

    seq_94 ::= KW_LIKE showFunctionIdentifier

    opt_95 ::= seq_94 | $empty

    opt_96 ::= partitionSpec | $empty

    opt_97 ::= whereClause | $empty

    opt_98 ::= orderByClause | $empty

    opt_99 ::= limitClause | $empty

    grp_100 ::= db_schema id_ | KW_TABLE tableName

    seq_101 ::= from_in id_

    opt_102 ::= seq_101 | $empty

    opt_103 ::= partitionSpec | $empty

    seq_104 ::= LPAREN StringLiteral RPAREN

    opt_105 ::= seq_104 | $empty

    opt_107 ::= KW_EXTENDED | $empty

    opt_108 ::= partTypeExpr | $empty

    opt_109 ::= KW_EXTENDED | $empty

    grp_106 ::= db_schema id_ opt_107 | opt_108 opt_109

    opt_111 ::= compactionPool | $empty

    opt_112 ::= compactionType | $empty

    opt_113 ::= compactionStatus | $empty

    opt_114 ::= orderByClause | $empty

    opt_115 ::= limitClause | $empty

    opt_116 ::= partTypeExpr | $empty

    opt_117 ::= compactionPool | $empty

    opt_118 ::= compactionType | $empty

    opt_119 ::= compactionStatus | $empty

    opt_120 ::= orderByClause | $empty

    opt_121 ::= limitClause | $empty

    grp_110 ::= compactionId | db_schema id_ opt_111 opt_112 opt_113 opt_114 opt_115 | opt_116 opt_117 opt_118 opt_119 opt_120 opt_121

    grp_122 ::= KW_PLAN id_ | KW_PLANS

    opt_123 ::= partitionSpec | $empty

    opt_124 ::= partitionSpec | $empty

    opt_125 ::= privilegeObject | $empty

    opt_126 ::= withGrantOption | $empty

    opt_127 ::= grantOptionFor | $empty

    opt_128 ::= privilegeObject | $empty

    opt_129 ::= KW_ROLE | $empty

    seq_130 ::= COMMA id_

    list_131 ::= $empty | list_131 seq_130

    opt_132 ::= withAdminOption | $empty

    opt_133 ::= adminOptionFor | $empty

    opt_134 ::= KW_ROLE | $empty

    seq_135 ::= COMMA id_

    list_136 ::= $empty | list_136 seq_135

    grp_137 ::= KW_ALL | KW_NONE | id_

    opt_138 ::= principalName | $empty

    seq_139 ::= KW_ON privilegeIncludeColObject

    opt_140 ::= seq_139 | $empty

    opt_141 ::= KW_TABLE | $empty

    opt_142 ::= partitionSpec | $empty

    opt_143 ::= KW_TABLE | $empty

    seq_144 ::= LPAREN columnNameList RPAREN

    opt_145 ::= seq_144 | $empty

    opt_146 ::= partitionSpec | $empty

    seq_147 ::= COMMA privlegeDef

    list_148 ::= $empty | list_148 seq_147

    seq_149 ::= LPAREN columnNameList RPAREN

    opt_150 ::= seq_149 | $empty

    seq_151 ::= COMMA principalName

    list_152 ::= $empty | list_152 seq_151

    opt_153 ::= KW_REPAIR | $empty

    grp_156 ::= KW_ADD | KW_DROP | KW_SYNC

    opt_157 ::= partitionSelectorSpec | $empty

    grp_155 ::= grp_156 KW_PARTITIONS opt_157

    opt_158 ::= grp_155 | $empty

    grp_154 ::= KW_TABLE tableName opt_158

    seq_159 ::= COMMA resource

    list_160 ::= $empty | list_160 seq_159

    opt_161 ::= KW_TEMPORARY | $empty

    seq_162 ::= KW_USING resourceList

    opt_163 ::= seq_162 | $empty

    opt_164 ::= KW_TEMPORARY | $empty

    opt_165 ::= ifExists | $empty

    grp_166 ::= KW_FUNCTIONS | KW_FUNCTION

    opt_167 ::= columnNameTypeList | $empty

    opt_168 ::= ifExists | $empty

    opt_169 ::= orReplace | $empty

    opt_170 ::= ifNotExists | $empty

    seq_171 ::= LPAREN columnNameCommentList RPAREN

    opt_172 ::= seq_171 | $empty

    opt_173 ::= tableComment | $empty

    opt_174 ::= viewPartition | $empty

    opt_175 ::= tablePropertiesPrefixed | $empty

    grp_176 ::= LPAREN columnNameList | KW_SPEC LPAREN partitionTransformSpec

    opt_177 ::= ifExists | $empty

    opt_178 ::= ifNotExists | $empty

    opt_179 ::= rewriteDisabled | $empty

    opt_180 ::= tableComment | $empty

    opt_181 ::= viewPartition | $empty

    opt_182 ::= viewOrganization | $empty

    opt_183 ::= tableRowFormat | $empty

    opt_184 ::= tableFileFormat | $empty

    opt_185 ::= tableLocation | $empty

    opt_186 ::= tablePropertiesPrefixed | $empty

    opt_187 ::= ifExists | $empty

    opt_188 ::= executedAsSpec | $empty

    opt_189 ::= enableSpecification | $empty

    opt_190 ::= Number | $empty

    grp_192 ::= KW_AT | KW_OFFSET KW_BY

    grp_191 ::= grp_192 StringLiteral

    opt_193 ::= grp_191 | $empty

    opt_194 ::= KW_DEFINED | $empty

    grp_196 ::= createTablePartitionColumnTypeSpec | createTablePartitionColumnSpec

    grp_195 ::= LPAREN grp_196 | KW_SPEC LPAREN partitionTransformSpec

    seq_197 ::= COMMA columnNameTypeConstraint

    list_198 ::= $empty | list_198 seq_197

    seq_199 ::= COMMA columnName

    list_200 ::= $empty | list_200 seq_199

    seq_201 ::= COMMA columnNameTransformConstraint

    list_202 ::= $empty | list_202 seq_201

    grp_203 ::= KW_YEAR | KW_MONTH | KW_DAY | KW_HOUR

    grp_204 ::= KW_TRUNCATE | KW_BUCKET

    seq_205 ::= KW_SORTED KW_BY LPAREN columnNameOrderList RPAREN

    opt_206 ::= seq_205 | $empty

    opt_207 ::= storedAsDirs | $empty

    seq_208 ::= KW_WITH KW_SERDEPROPERTIES tableProperties

    opt_209 ::= seq_208 | $empty

    opt_210 ::= tableRowFormatFieldIdentifier | $empty

    opt_211 ::= tableRowFormatCollItemsIdentifier | $empty

    opt_212 ::= tableRowFormatMapKeysIdentifier | $empty

    opt_213 ::= tableRowFormatLinesIdentifier | $empty

    opt_214 ::= tableRowNullFormat | $empty

    seq_215 ::= COMMA keyValueProperty

    list_216 ::= $empty | list_216 seq_215

    seq_217 ::= COMMA keyProperty

    list_218 ::= $empty | list_218 seq_217

    seq_219 ::= KW_ESCAPED KW_BY StringLiteral

    opt_220 ::= seq_219 | $empty

    seq_221 ::= KW_INPUTDRIVER StringLiteral KW_OUTPUTDRIVER StringLiteral

    opt_222 ::= seq_221 | $empty

    seq_223 ::= KW_WITH KW_SERDEPROPERTIES tableProperties

    opt_224 ::= seq_223 | $empty

    seq_225 ::= KW_STORED KW_AS id_

    opt_226 ::= seq_225 | $empty

    seq_227 ::= KW_WITH KW_SERDEPROPERTIES tableProperties

    opt_228 ::= seq_227 | $empty

    seq_229 ::= KW_STORED KW_AS id_

    opt_230 ::= seq_229 | $empty

    seq_231 ::= COMMA columnNameType

    list_232 ::= $empty | list_232 seq_231

    seq_233 ::= COMMA columnNameTypeOrConstraint

    list_234 ::= $empty | list_234 seq_233

    seq_235 ::= COMMA columnNameColonType

    list_236 ::= $empty | list_236 seq_235

    seq_237 ::= COMMA columnName

    list_238 ::= $empty | list_238 seq_237

    grp_240 ::= KW_ELEM_TYPE | KW_KEY_TYPE | KW_VALUE_TYPE | id_

    grp_239 ::= DOT grp_240

    list_241 ::= $empty | list_241 grp_239

    seq_242 ::= COMMA columnNameOrder

    list_243 ::= $empty | list_243 seq_242

    opt_244 ::= validateSpecification | $empty

    seq_245 ::= KW_CONSTRAINT id_

    opt_246 ::= seq_245 | $empty

    opt_247 ::= constraintOptsCreate | $empty

    opt_248 ::= constraintOptsAlter | $empty

    seq_249 ::= KW_CONSTRAINT id_

    opt_250 ::= seq_249 | $empty

    opt_251 ::= constraintOptsCreate | $empty

    opt_252 ::= constraintOptsAlter | $empty

    seq_253 ::= COMMA skewedColumnValuePair

    list_254 ::= $empty | list_254 seq_253

    seq_255 ::= COMMA skewedColumnValue

    list_256 ::= $empty | list_256 seq_255

    grp_257 ::= KW_FIRST | KW_LAST

    opt_258 ::= orderSpecification | $empty

    opt_259 ::= nullOrdering | $empty

    seq_260 ::= COMMA columnNameComment

    list_261 ::= $empty | list_261 seq_260

    seq_262 ::= KW_COMMENT StringLiteral

    opt_263 ::= seq_262 | $empty

    opt_264 ::= orderSpecificationRewrite | $empty

    opt_265 ::= nullOrdering | $empty

    seq_266 ::= KW_COMMENT StringLiteral

    opt_267 ::= seq_266 | $empty

    opt_268 ::= columnConstraint | $empty

    seq_269 ::= KW_COMMENT StringLiteral

    opt_270 ::= seq_269 | $empty

    seq_271 ::= KW_CONSTRAINT id_

    opt_272 ::= seq_271 | $empty

    opt_273 ::= constraintOptsCreate | $empty

    seq_274 ::= KW_CONSTRAINT id_

    opt_275 ::= seq_274 | $empty

    opt_276 ::= constraintOptsCreate | $empty

    seq_277 ::= KW_CONSTRAINT id_

    opt_278 ::= seq_277 | $empty

    opt_279 ::= constraintOptsAlter | $empty

    seq_280 ::= KW_CONSTRAINT id_

    opt_281 ::= seq_280 | $empty

    opt_282 ::= constraintOptsAlter | $empty

    opt_283 ::= relySpecification | $empty

    opt_284 ::= relySpecification | $empty

    seq_285 ::= KW_COMMENT StringLiteral

    opt_286 ::= seq_285 | $empty

    seq_287 ::= COMMA colType

    list_288 ::= $empty | list_288 seq_287

    opt_289 ::= KW_PRECISION | $empty

    seq_290 ::= COMMA Number

    opt_291 ::= seq_290 | $empty

    seq_292 ::= LPAREN Number opt_291 RPAREN

    opt_293 ::= seq_292 | $empty

    grp_294 ::= KW_VARCHAR | KW_CHAR

    grp_295 ::= KW_UNION | KW_INTERSECT | KW_EXCEPT | KW_MINUS

    grp_296 ::= KW_ALL | KW_DISTINCT

    opt_297 ::= grp_296 | $empty

    opt_298 ::= withClause | $empty

    seq_299 ::= COMMA cteStatement

    list_300 ::= $empty | list_300 seq_299

    seq_301 ::= LPAREN columnNameList RPAREN

    opt_302 ::= seq_301 | $empty

    seq_303 ::= setOperator singleFromStatement

    list_304 ::= $empty | list_304 seq_303

    list_305 ::= b | list_305 b

    list_306 ::= body | list_306 body

    opt_307 ::= fromClause | $empty

    opt_308 ::= whereClause | $empty

    opt_309 ::= groupByClause | $empty

    opt_310 ::= havingClause | $empty

    opt_311 ::= window_clause | $empty

    opt_312 ::= qualifyClause | $empty

    opt_313 ::= setOpSelectStatement | $empty

    opt_314 ::= orderByClause | $empty

    opt_315 ::= clusterByClause | $empty

    opt_316 ::= distributeByClause | $empty

    opt_317 ::= sortByClause | $empty

    opt_318 ::= limitClause | $empty

    seq_319 ::= setOperator atomSelectStatement

    list_320 ::= seq_319 | list_320 seq_319

    opt_321 ::= withClause | $empty

    opt_322 ::= lateralView | $empty

    opt_323 ::= whereClause | $empty

    opt_324 ::= groupByClause | $empty

    opt_325 ::= havingClause | $empty

    opt_326 ::= window_clause | $empty

    opt_327 ::= qualifyClause | $empty

    opt_328 ::= orderByClause | $empty

    opt_329 ::= clusterByClause | $empty

    opt_330 ::= distributeByClause | $empty

    opt_331 ::= sortByClause | $empty

    opt_332 ::= limitClause | $empty

    opt_333 ::= lateralView | $empty

    opt_334 ::= whereClause | $empty

    opt_335 ::= groupByClause | $empty

    opt_336 ::= havingClause | $empty

    opt_337 ::= window_clause | $empty

    opt_338 ::= qualifyClause | $empty

    opt_339 ::= orderByClause | $empty

    opt_340 ::= clusterByClause | $empty

    opt_341 ::= distributeByClause | $empty

    opt_342 ::= sortByClause | $empty

    opt_343 ::= limitClause | $empty

    opt_345 ::= ifNotExists | $empty

    opt_346 ::= KW_TABLE | $empty

    seq_347 ::= LPAREN columnNameList RPAREN

    opt_348 ::= seq_347 | $empty

    grp_344 ::= KW_OVERWRITE destination opt_345 | KW_INTO opt_346 tableOrPartition opt_348

    opt_349 ::= KW_LOCAL | $empty

    opt_350 ::= tableRowFormat | $empty

    opt_351 ::= tableFileFormat | $empty

    seq_353 ::= Number COMMA

    opt_354 ::= seq_353 | $empty

    grp_352 ::= opt_354 Number | Number KW_OFFSET Number

    opt_355 ::= whereClause | $empty

    seq_356 ::= COMMA columnAssignmentClause

    list_357 ::= $empty | list_357 seq_356

    opt_358 ::= whereClause | $empty

    seq_359 ::= COMMA transactionMode

    list_360 ::= $empty | list_360 seq_359

    seq_361 ::= transactionMode list_360

    opt_362 ::= seq_361 | $empty

    grp_363 ::= KW_ONLY | KW_WRITE

    opt_364 ::= KW_WORK | $empty

    opt_365 ::= KW_WORK | $empty

    list_366 ::= Number | list_366 Number

    list_367 ::= Number | list_367 Number

    opt_368 ::= QUERY_HINT | $empty

    opt_369 ::= KW_AS | $empty

    seq_370 ::= opt_369 id_

    opt_371 ::= seq_370 | $empty

    grp_372 ::= whenMatchedAndClause | whenMatchedThenClause

    list_373 ::= $empty | list_373 grp_372

    opt_374 ::= whenNotMatchedClause | $empty

    seq_375 ::= KW_AND expression

    opt_376 ::= seq_375 | $empty

    opt_377 ::= columnParenthesesList | $empty

    list_378 ::= StringLiteral | list_378 StringLiteral

    opt_380 ::= KW_AS | $empty

    grp_379 ::= KW_TABLE tableName alterTableStatementSuffix | KW_VIEW tableName opt_380 alterViewStatementSuffix | KW_MATERIALIZED KW_VIEW tableName alterMaterializedViewStatementSuffix | db_schema alterDatabaseStatementSuffix | KW_DATACONNECTOR alterDataConnectorStatementSuffix

    grp_381 ::= KW_LOCATION | KW_MANAGEDLOCATION

    grp_382 ::= KW_ADD | KW_REPLACE

    opt_383 ::= restrictOrCascade | $empty

    grp_384 ::= alterForeignKeyWithName | alterConstraintWithName

    opt_385 ::= restrictOrCascade | $empty

    opt_386 ::= KW_COLUMN | $empty

    opt_387 ::= alterColumnConstraint | $empty

    seq_388 ::= KW_COMMENT StringLiteral

    opt_389 ::= seq_388 | $empty

    opt_390 ::= alterStatementChangeColPosition | $empty

    opt_391 ::= restrictOrCascade | $empty

    opt_392 ::= KW_COLUMN | $empty

    seq_393 ::= KW_COMMENT StringLiteral

    opt_394 ::= seq_393 | $empty

    opt_395 ::= ifNotExists | $empty

    list_396 ::= alterStatementSuffixAddPartitionsElement | list_396 alterStatementSuffixAddPartitionsElement

    opt_397 ::= partitionLocation | $empty

    list_398 ::= $empty | list_398 partitionSpec

    list_399 ::= $empty | list_399 partitionSpec

    list_400 ::= $empty | list_400 partitionSpec

    opt_401 ::= ifExists | $empty

    seq_402 ::= COMMA KW_PARTITION partitionSelectorSpec

    list_403 ::= $empty | list_403 seq_402

    opt_404 ::= KW_PURGE | $empty

    opt_405 ::= replicationClause | $empty

    opt_406 ::= ifExists | $empty

    opt_407 ::= ifExists | $empty

    seq_409 ::= KW_WITH KW_SERDEPROPERTIES tableProperties

    opt_410 ::= seq_409 | $empty

    grp_408 ::= KW_SERDE StringLiteral opt_410 | KW_SERDEPROPERTIES tableProperties

    opt_411 ::= partitionSpec | $empty

    grp_412 ::= KW_CLUSTERED | KW_SORTED

    seq_413 ::= COMMA skewedLocationMap

    list_414 ::= $empty | list_414 seq_413

    grp_415 ::= KW_SKEWED | storedAsDirs

    opt_416 ::= KW_COLUMN | $empty

    seq_417 ::= KW_COMMENT StringLiteral

    opt_418 ::= seq_417 | $empty

    opt_419 ::= tableImplBuckets | $empty

    opt_420 ::= blocking | $empty

    opt_421 ::= compactPool | $empty

    seq_422 ::= KW_WITH KW_OVERWRITE KW_TBLPROPERTIES tableProperties

    opt_423 ::= seq_422 | $empty

    grp_425 ::= StringLiteral | Number

    grp_424 ::= KW_ROLLBACK LPAREN grp_425 | KW_EXPIRE_SNAPSHOTS LPAREN StringLiteral | KW_SET_CURRENT_SNAPSHOT LPAREN Number

    seq_426 ::= KW_INPUTDRIVER StringLiteral KW_OUTPUTDRIVER StringLiteral

    opt_427 ::= seq_426 | $empty

    opt_428 ::= KW_TEMPORARY | $empty

    opt_429 ::= KW_TRANSACTIONAL | $empty

    opt_430 ::= KW_EXTERNAL | $empty

    opt_431 ::= ifNotExists | $empty

    opt_433 ::= createTablePartitionSpec | $empty

    opt_434 ::= tableRowFormat | $empty

    opt_435 ::= tableFileFormat | $empty

    opt_436 ::= tableLocation | $empty

    opt_437 ::= tablePropertiesPrefixed | $empty

    seq_438 ::= LPAREN columnNameTypeOrConstraintList RPAREN

    opt_439 ::= seq_438 | $empty

    opt_440 ::= tableComment | $empty

    opt_441 ::= createTablePartitionSpec | $empty

    opt_442 ::= tableBuckets | $empty

    opt_443 ::= tableSkewed | $empty

    opt_444 ::= tableRowFormat | $empty

    opt_445 ::= tableFileFormat | $empty

    opt_446 ::= tableLocation | $empty

    opt_447 ::= tablePropertiesPrefixed | $empty

    seq_448 ::= KW_AS selectStatementWithCTE

    opt_449 ::= seq_448 | $empty

    grp_432 ::= likeTableOrFile opt_433 opt_434 opt_435 opt_436 opt_437 | opt_439 opt_440 opt_441 opt_442 opt_443 opt_444 opt_445 opt_446 opt_447 opt_449

    opt_450 ::= ifNotExists | $empty

    opt_452 ::= tableRowFormat | $empty

    opt_453 ::= tableFileFormat | $empty

    opt_454 ::= tableLocation | $empty

    opt_455 ::= tablePropertiesPrefixed | $empty

    seq_456 ::= LPAREN columnNameTypeOrConstraintList RPAREN

    opt_457 ::= seq_456 | $empty

    opt_458 ::= tableComment | $empty

    opt_459 ::= createTablePartitionSpec | $empty

    opt_460 ::= tableBuckets | $empty

    opt_461 ::= tableSkewed | $empty

    opt_462 ::= tableRowFormat | $empty

    opt_463 ::= tableFileFormat | $empty

    opt_464 ::= tableLocation | $empty

    opt_465 ::= tablePropertiesPrefixed | $empty

    seq_466 ::= KW_AS selectStatementWithCTE

    opt_467 ::= seq_466 | $empty

    grp_451 ::= likeTableOrFile opt_452 opt_453 opt_454 opt_455 | opt_457 opt_458 opt_459 opt_460 opt_461 opt_462 opt_463 opt_464 opt_465 opt_467

    opt_468 ::= ifNotExists | $empty

    opt_469 ::= dataConnectorComment | $empty

    seq_470 ::= KW_WITH KW_DCPROPERTIES dcProperties

    opt_471 ::= seq_470 | $empty

    opt_472 ::= ifExists | $empty

    seq_473 ::= COMMA expression

    list_474 ::= $empty | list_474 seq_473

    seq_475 ::= COMMA id_

    list_476 ::= $empty | list_476 seq_475

    seq_477 ::= COMMA uniqueJoinSource

    list_478 ::= seq_477 | list_478 seq_477

    list_479 ::= $empty | list_479 lateralView

    list_480 ::= $empty | list_480 lateralView

    list_481 ::= $empty | list_481 lateralView

    list_482 ::= $empty | list_482 lateralView

    grp_484 ::= KW_ON expression | KW_USING columnParenthesesList

    opt_485 ::= grp_484 | $empty

    grp_483 ::= joinToken joinSourcePart opt_485

    list_486 ::= $empty | list_486 grp_483

    grp_487 ::= tableSource | virtualTableSource | subQuerySource | partitionedTableFunction

    list_488 ::= $empty | list_488 lateralView

    opt_489 ::= KW_PRESERVE | $empty

    grp_491 ::= KW_RIGHT | KW_FULL

    opt_492 ::= KW_OUTER | $empty

    grp_493 ::= KW_SEMI | KW_ANTI | KW_OUTER

    opt_494 ::= grp_493 | $empty

    grp_490 ::= KW_INNER | KW_CROSS | grp_491 opt_492 | KW_LEFT opt_494

    opt_495 ::= grp_490 | $empty

    seq_496 ::= COMMA id_

    list_497 ::= $empty | list_497 seq_496

    seq_498 ::= KW_AS id_ list_497

    opt_499 ::= seq_498 | $empty

    opt_500 ::= COMMA | $empty

    seq_502 ::= COMMA id_

    list_503 ::= $empty | list_503 seq_502

    seq_504 ::= KW_AS id_ list_503

    opt_505 ::= seq_504 | $empty

    opt_506 ::= KW_AS | $empty

    seq_507 ::= COMMA id_

    list_508 ::= $empty | list_508 seq_507

    seq_509 ::= LPAREN id_ list_508 RPAREN

    opt_510 ::= seq_509 | $empty

    grp_501 ::= KW_VIEW function_ tableAlias opt_505 | KW_TABLE LPAREN valuesClause RPAREN opt_506 tableAlias opt_510

    list_511 ::= expr | list_511 expr

    list_512 ::= expr | list_512 expr

    seq_513 ::= COMMA list_512 expression

    list_514 ::= $empty | list_514 seq_513

    seq_515 ::= KW_ON list_511 expression list_514

    opt_516 ::= seq_515 | $empty

    grp_518 ::= KW_PERCENT | KW_ROWS

    grp_517 ::= Number grp_518 | ByteLengthLiteral

    opt_519 ::= tableProperties | $empty

    opt_520 ::= tableSample | $empty

    opt_521 ::= asOfClause | $empty

    opt_522 ::= KW_AS | $empty

    seq_523 ::= opt_522 id_

    opt_524 ::= seq_523 | $empty

    grp_525 ::= KW_SYSTEM_TIME KW_AS KW_OF expression | KW_FOR KW_SYSTEM_VERSION KW_AS KW_OF Number

    opt_526 ::= tableSample | $empty

    opt_527 ::= KW_AS | $empty

    seq_528 ::= opt_527 id_

    opt_529 ::= seq_528 | $empty

    seq_530 ::= DOT id_

    opt_531 ::= seq_530 | $empty

    seq_532 ::= id_ DOT

    opt_533 ::= seq_532 | $empty

    opt_534 ::= KW_AS | $empty

    opt_535 ::= orderByClause | $empty

    opt_536 ::= sortByClause | $empty

    opt_537 ::= partitioningSpec | $empty

    seq_538 ::= COMMA IDENTIFIER LPAREN expression RPAREN

    list_539 ::= $empty | list_539 seq_538

    seq_540 ::= IDENTIFIER LPAREN expression RPAREN list_539

    opt_541 ::= seq_540 | $empty

    opt_542 ::= id_ | $empty

    seq_543 ::= COMMA valueRowConstructor

    list_544 ::= $empty | list_544 seq_543

    seq_545 ::= COMMA valueRowConstructor

    list_546 ::= $empty | list_546 seq_545

    opt_547 ::= KW_AS | $empty

    seq_548 ::= COMMA id_

    list_549 ::= $empty | list_549 seq_548

    seq_550 ::= LPAREN id_ list_549

    opt_551 ::= seq_550 | $empty

    opt_552 ::= QUERY_HINT | $empty

    opt_554 ::= all_distinct | $empty

    grp_553 ::= opt_554 selectList | KW_TRANSFORM selectTrfmClause

    seq_555 ::= COMMA selectItem

    list_556 ::= $empty | list_556 seq_555

    grp_559 ::= aliasList | columnNameTypeList

    grp_558 ::= LPAREN grp_559 RPAREN | aliasList | columnNameTypeList

    grp_557 ::= KW_AS grp_558

    opt_560 ::= grp_557 | $empty

    opt_563 ::= KW_AS | $empty

    seq_564 ::= COMMA id_

    list_565 ::= $empty | list_565 seq_564

    grp_562 ::= opt_563 id_ | KW_AS LPAREN id_ list_565 RPAREN

    opt_566 ::= grp_562 | $empty

    grp_561 ::= expression opt_566

    grp_567 ::= KW_MAP | KW_REDUCE

    grp_570 ::= aliasList | columnNameTypeList

    grp_569 ::= LPAREN grp_570 RPAREN | aliasList | columnNameTypeList

    grp_568 ::= KW_AS grp_569

    opt_571 ::= grp_568 | $empty

    seq_572 ::= COMMA selectExpression

    list_573 ::= $empty | list_573 seq_572

    seq_574 ::= COMMA window_defn

    list_575 ::= $empty | list_575 seq_574

    opt_576 ::= id_ | $empty

    opt_577 ::= partitioningSpec | $empty

    opt_578 ::= window_frame | $empty

    grp_579 ::= window_frame_start_boundary | KW_BETWEEN window_frame_boundary KW_AND window_frame_boundary

    grp_580 ::= window_frame_start_boundary | KW_BETWEEN window_frame_boundary KW_AND window_frame_boundary

    grp_581 ::= KW_UNBOUNDED | Number

    grp_582 ::= KW_PRECEDING | KW_FOLLOWING

    grp_583 ::= KW_ROLLUP | KW_CUBE

    seq_584 ::= COMMA expression

    list_585 ::= $empty | list_585 seq_584

    grp_586 ::= KW_WITH KW_ROLLUP | KW_WITH KW_CUBE

    opt_587 ::= grp_586 | $empty

    seq_588 ::= COMMA groupingSetExpression

    list_589 ::= $empty | list_589 seq_588

    seq_590 ::= KW_GROUPING KW_SETS LPAREN groupingSetExpression list_589 RPAREN

    opt_591 ::= seq_590 | $empty

    opt_592 ::= expression | $empty

    seq_593 ::= COMMA expression

    list_594 ::= $empty | list_594 seq_593

    opt_595 ::= expressionPart | $empty

    seq_596 ::= COMMA expressionOrDefault

    list_597 ::= seq_596 | list_597 seq_596

    opt_598 ::= KW_AS | $empty

    opt_599 ::= id_ | $empty

    seq_600 ::= COMMA expressionWithAlias

    list_601 ::= $empty | list_601 seq_600

    opt_602 ::= KW_AS | $empty

    opt_603 ::= id_ | $empty

    seq_604 ::= COMMA columnRefOrder

    list_605 ::= $empty | list_605 seq_604

    seq_606 ::= COMMA columnRefOrder

    list_607 ::= $empty | list_607 seq_606

    seq_608 ::= COMMA columnRefOrder

    list_609 ::= $empty | list_609 seq_608

    grp_610 ::= columnRefOrderInParenthesis | columnRefOrderNotInParenthesis

    grp_611 ::= KW_LEADING | KW_TRAILING | KW_BOTH

    opt_612 ::= grp_611 | $empty

    opt_613 ::= selectExpression | $empty

    opt_615 ::= all_distinct | $empty

    seq_616 ::= COMMA selectExpression

    list_617 ::= $empty | list_617 seq_616

    seq_618 ::= selectExpression list_617

    opt_619 ::= seq_618 | $empty

    grp_614 ::= STAR | opt_615 opt_619

    opt_621 ::= null_treatment | $empty

    grp_620 ::= RPAREN KW_WITHIN KW_GROUP LPAREN orderByClause RPAREN | RPAREN opt_621 KW_OVER window_specification | null_treatment RPAREN KW_OVER window_specification | RPAREN

    seq_622 ::= KW_FORMAT StringLiteral

    opt_623 ::= seq_622 | $empty

    seq_624 ::= KW_WHEN expression KW_THEN expression

    list_625 ::= seq_624 | list_625 seq_624

    seq_626 ::= KW_ELSE expression

    opt_627 ::= seq_626 | $empty

    seq_628 ::= KW_WHEN expression KW_THEN expression

    list_629 ::= seq_628 | list_629 seq_628

    seq_630 ::= KW_ELSE expression

    opt_631 ::= seq_630 | $empty

    seq_632 ::= KW_TO floorDateQualifiers

    opt_633 ::= seq_632 | $empty

    list_634 ::= StringLiteral | list_634 StringLiteral

    grp_635 ::= intervalValue | LPAREN expression RPAREN

    grp_636 ::= LSQUARE expression RSQUARE | DOT id_

    list_637 ::= $empty | list_637 grp_636

    list_638 ::= $empty | list_638 precedenceUnaryOperator

    seq_639 ::= precedenceBitwiseXorOperator precedenceUnaryPrefixExpression

    list_640 ::= $empty | list_640 seq_639

    seq_641 ::= precedenceStarOperator precedenceBitwiseXorExpression

    list_642 ::= $empty | list_642 seq_641

    seq_643 ::= precedencePlusOperator precedenceStarExpression

    list_644 ::= $empty | list_644 seq_643

    seq_645 ::= precedenceConcatenateOperator precedencePlusExpression

    list_646 ::= $empty | list_646 seq_645

    seq_647 ::= precedenceAmpersandOperator precedenceConcatenateExpression

    list_648 ::= $empty | list_648 seq_647

    seq_649 ::= precedenceBitwiseOrOperator precedenceAmpersandExpression

    list_650 ::= $empty | list_650 seq_649

    opt_651 ::= precedenceSimilarExpressionPart | $empty

    grp_652 ::= KW_ANY | KW_ALL

    list_654 ::= equal | list_654 equal

    list_655 ::= p | list_655 p

    list_656 ::= dist | list_656 dist

    list_657 ::= p | list_657 p

    grp_653 ::= list_654 precedenceEqualOperator list_655 precedenceSimilarExpression | list_656 precedenceDistinctOperator list_657 precedenceSimilarExpression

    list_658 ::= $empty | list_658 grp_653

    seq_659 ::= KW_IS isCondition

    opt_660 ::= seq_659 | $empty

    list_661 ::= $empty | list_661 precedenceNotOperator

    seq_662 ::= precedenceAndOperator precedenceNotExpression

    list_663 ::= $empty | list_663 seq_662

    seq_664 ::= precedenceOrOperator precedenceAndExpression

    list_665 ::= $empty | list_665 seq_664

    opt_666 ::= partitionSpec | $empty

    seq_667 ::= COMMA partitionVal

    list_668 ::= $empty | list_668 seq_667

    seq_669 ::= EQUAL constant

    opt_670 ::= seq_669 | $empty

    seq_671 ::= COMMA partitionSelectorVal

    list_672 ::= $empty | list_672 seq_671

    seq_673 ::= DOT id_

    opt_674 ::= seq_673 | $empty

    seq_675 ::= COMMA hintItem

    list_676 ::= $empty | list_676 seq_675

    seq_677 ::= LPAREN hintArgs RPAREN

    opt_678 ::= seq_677 | $empty

    seq_679 ::= COMMA hintArgName

    list_680 ::= $empty | list_680 seq_679

    seq_681 ::= COMMA constant

    list_682 ::= $empty | list_682 seq_681

    seq_683 ::= COMMA rpAssign

    list_684 ::= $empty | list_684 seq_683

    seq_685 ::= COMMA rpUnassign

    list_686 ::= $empty | list_686 seq_685

    opt_687 ::= ifNotExists | $empty

    seq_689 ::= KW_WITH rpAssignList

    opt_690 ::= seq_689 | $empty

    grp_688 ::= id_ KW_LIKE id_ | id_ opt_690

    opt_691 ::= withReplace | $empty

    opt_693 ::= enable | $empty

    opt_694 ::= activate | $empty

    grp_692 ::= KW_VALIDATE | KW_DISABLE | KW_SET rpAssignList | KW_UNSET rpUnassignList | KW_RENAME KW_TO id_ | activate opt_693 | enable opt_694

    grp_695 ::= KW_ENABLE | KW_DISABLE

    grp_696 ::= KW_ACTIVE KW_RESOURCE KW_PLAN KW_WITH id_ | KW_RESOURCE KW_PLAN id_ KW_WITH id_

    opt_697 ::= ifExists | $empty

    seq_698 ::= DOT id_

    list_699 ::= $empty | list_699 seq_698

    seq_700 ::= KW_OR triggerAndExpression

    list_701 ::= $empty | list_701 seq_700

    seq_702 ::= KW_AND triggerAtomExpression

    list_703 ::= $empty | list_703 seq_702

    grp_705 ::= KW_ADD KW_TO | KW_DROP KW_FROM

    grp_706 ::= KW_POOL poolPath | KW_UNMANAGED

    grp_704 ::= KW_WHEN triggerExpression KW_DO triggerActionExpression | grp_705 grp_706

    grp_707 ::= KW_ALLOC_FRACTION EQUAL Number | KW_QUERY_PARALLELISM EQUAL Number | KW_SCHEDULING_POLICY EQUAL StringLiteral | KW_PATH EQUAL poolPath

    seq_708 ::= COMMA poolAssign

    list_709 ::= $empty | list_709 seq_708

    grp_711 ::= KW_ADD | KW_DROP

    grp_710 ::= KW_SET poolAssignList | KW_UNSET KW_SCHEDULING_POLICY | grp_711 KW_TRIGGER id_

    grp_712 ::= KW_USER | KW_GROUP | KW_APPLICATION

    grp_713 ::= KW_TO poolPath | unmanaged

    seq_714 ::= KW_WITH KW_ORDER Number

    opt_715 ::= seq_714 | $empty

    grp_716 ::= KW_USER | KW_GROUP | KW_APPLICATION

    grp_717 ::= KW_TO poolPath | unmanaged

    seq_718 ::= KW_WITH KW_ORDER Number

    opt_719 ::= seq_718 | $empty

    grp_720 ::= KW_USER | KW_GROUP | KW_APPLICATION

%End
