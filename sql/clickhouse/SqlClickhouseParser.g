-- AUTO-GENERATED from antlr/grammars-v4 sql/clickhouse by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=SqlClickhouseParser
%options package=lpg.grammars.sql.clickhouse
%options template=dtParserTemplateF.gi
%options import_terminals=SqlClickhouseLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    clickhouseFile
%End

%Rules
    clickhouseFile ::= opt_1

    batch ::= command list_3 opt_4

    command ::= query opt_6 opt_8 opt_9
           | insertStmt
           | deleteStmt
           | updateStmt

    query ::= alterStmt
           | attachStmt
           | checkStmt
           | createStmt
           | describeStmt
           | dropStmt
           | existsStmt
           | explainStmt
           | killStmt
           | optimizeStmt
           | renameStmt
           | selectUnionStmt
           | setStmt
           | showStmt
           | systemStmt
           | truncateStmt
           | useStmt
           | watchStmt
           | opt_10 selectStmt

    ctes ::= WITH namedQuery list_12

    namedQuery ::= identifier opt_13 AS LPAREN query RPAREN

    columnAliases ::= LPAREN identifier list_15 RPAREN

    alterStmt ::= ALTER TABLE tableIdentifier opt_16 alterTableClause list_18

    alterTableClause ::= ADD COLUMN opt_20 tableColumnDfnt opt_22
           | ADD INDEX opt_24 tableIndexDfnt opt_26
           | ADD PROJECTION opt_28 tableProjectionDfnt opt_30
           | ATTACH partitionClause opt_32
           | CLEAR COLUMN opt_34 nestedIdentifier opt_36
           | CLEAR INDEX opt_38 nestedIdentifier opt_40
           | CLEAR PROJECTION opt_42 nestedIdentifier opt_44
           | COMMENT COLUMN opt_46 nestedIdentifier STRING_LITERAL
           | DELETE WHERE columnExpr
           | DETACH partitionClause
           | DROP COLUMN opt_48 nestedIdentifier
           | DROP INDEX opt_50 nestedIdentifier
           | DROP PROJECTION opt_52 nestedIdentifier
           | DROP partitionClause
           | FREEZE opt_53
           | MATERIALIZE INDEX opt_55 nestedIdentifier opt_57
           | MATERIALIZE PROJECTION opt_59 nestedIdentifier opt_61
           | MODIFY COLUMN opt_63 nestedIdentifier codecExpr
           | MODIFY COLUMN opt_65 nestedIdentifier COMMENT STRING_LITERAL
           | MODIFY COLUMN opt_67 nestedIdentifier REMOVE tableColumnPropertyType
           | MODIFY COLUMN opt_69 tableColumnDfnt
           | MODIFY ORDER BY columnExpr
           | MODIFY ttlClause
           | MOVE partitionClause grp_70
           | REMOVE TTL
           | RENAME COLUMN opt_72 nestedIdentifier TO nestedIdentifier
           | REPLACE partitionClause FROM tableIdentifier
           | UPDATE assignmentExprList whereClause

    assignmentExprList ::= assignmentExpr list_74

    assignmentExpr ::= nestedIdentifier EQ_SINGLE columnExpr

    tableColumnPropertyType ::= ALIAS
           | CODEC
           | COMMENT
           | DEFAULT
           | MATERIALIZED
           | TTL

    partitionClause ::= PARTITION columnExpr
           | PARTITION ID STRING_LITERAL

    attachStmt ::= ATTACH DICTIONARY tableIdentifier opt_75

    checkStmt ::= CHECK TABLE tableIdentifier opt_76

    createStmt ::= grp_77 DATABASE opt_79 databaseIdentifier opt_80 opt_81
           | grp_82 DICTIONARY opt_86 tableIdentifier opt_87 opt_88 dictionarySchemaClause dictionaryEngineClause
           | grp_89 LIVE VIEW opt_91 tableIdentifier opt_92 opt_93 opt_96 opt_97 opt_98 subqueryClause
           | grp_99 MATERIALIZED VIEW opt_101 tableIdentifier opt_102 opt_103 opt_104 grp_105 subqueryClause
           | grp_107 opt_110 TABLE opt_112 tableIdentifier opt_113 opt_114 opt_115 opt_116 opt_117
           | grp_118 opt_120 VIEW opt_122 tableIdentifier opt_123 opt_124 opt_125 subqueryClause

    dictionarySchemaClause ::= LPAREN dictionaryAttrDfnt list_127 RPAREN

    dictionaryAttrDfnt ::= identifier columnTypeExpr

    dictionaryEngineClause ::= dictionaryPrimaryKeyClause sourceClause layoutClause lifetimeClause opt_128

    dictionaryPrimaryKeyClause ::= PRIMARY KEY columnExprList

    dictionaryArgExpr ::= identifier grp_129

    sourceClause ::= SOURCE LPAREN identifier LPAREN list_132 RPAREN RPAREN

    lifetimeClause ::= LIFETIME LPAREN grp_133 RPAREN

    layoutClause ::= LAYOUT LPAREN identifier LPAREN list_134 RPAREN RPAREN

    rangeClause ::= RANGE LPAREN grp_135 RPAREN

    dictionarySettingsClause ::= SETTINGS LPAREN settingExprList RPAREN

    clusterClause ::= ON CLUSTER grp_136

    uuidClause ::= UUID STRING_LITERAL

    destinationClause ::= TO tableIdentifier

    subqueryClause ::= AS selectUnionStmt

    tableSchemaClause ::= LPAREN tableElementExpr list_138 RPAREN
           | AS tableIdentifier
           | AS tableFunctionExpr

    engineClause ::= engineExpr list_140

    partitionByClause ::= PARTITION BY columnExpr

    primaryKeyClause ::= PRIMARY KEY columnExpr

    sampleByClause ::= SAMPLE BY columnExpr

    ttlClause ::= TTL ttlExpr list_142

    engineExpr ::= ENGINE opt_143 identifierOrNull opt_146

    tableElementExpr ::= tableColumnDfnt
           | CONSTRAINT identifier CHECK columnExpr
           | INDEX tableIndexDfnt
           | PROJECTION tableProjectionDfnt

    tableColumnDfnt ::= nestedIdentifier columnTypeExpr opt_147 opt_149 opt_150 opt_152
           | nestedIdentifier opt_153 tableColumnPropertyExpr opt_155 opt_156 opt_158

    tableColumnPropertyExpr ::= grp_159 columnExpr

    tableIndexDfnt ::= nestedIdentifier columnExpr TYPE columnTypeExpr GRANULARITY DECIMAL_LITERAL

    tableProjectionDfnt ::= nestedIdentifier projectionSelectStmt

    codecExpr ::= CODEC LPAREN codecArgExpr list_161 RPAREN

    codecArgExpr ::= identifier opt_164

    ttlExpr ::= columnExpr opt_166

    describeStmt ::= grp_167 opt_168 tableExpr

    dropStmt ::= grp_169 DATABASE opt_171 databaseIdentifier opt_172
           | grp_173 grp_174 opt_177 tableIdentifier opt_178 opt_180

    existsStmt ::= EXISTS DATABASE databaseIdentifier
           | EXISTS opt_183 tableIdentifier

    explainStmt ::= EXPLAIN AST query
           | EXPLAIN SYNTAX query

    insertStmt ::= INSERT INTO opt_184 grp_185 opt_186 dataClause

    columnsClause ::= LPAREN nestedIdentifier list_188 RPAREN

    dataClause ::= FORMAT identifier
           | VALUES assignmentValues list_190
           | selectUnionStmt opt_191

    assignmentValues ::= LPAREN assignmentValue list_193 RPAREN
           | LPAREN RPAREN

    assignmentValue ::= literal

    deleteStmt ::= DELETE FROM nestedIdentifier opt_194 opt_195 whereClause

    inPartitionClause ::= IN PARTITION columnExpr

    updateStmt ::= UPDATE nestedIdentifier SET assignmentExprList opt_196 opt_197 whereClause

    killStmt ::= KILL MUTATION opt_198 whereClause opt_200

    optimizeStmt ::= OPTIMIZE TABLE tableIdentifier opt_201 opt_202 opt_203 opt_204

    renameStmt ::= RENAME renameEntityClause opt_205

    renameEntityClause ::= opt_206 tableIdentifier TO tableIdentifier list_208
           | DATABASE databaseIdentifier TO databaseIdentifier list_210
           | DICTIONARY dictionaryIdentifier TO dictionaryIdentifier list_212

    projectionSelectStmt ::= LPAREN opt_213 SELECT columnExprList opt_214 opt_215 RPAREN

    selectUnionStmt ::= selectStmtWithParens list_217

    selectStmtWithParens ::= selectStmt
           | LPAREN selectUnionStmt RPAREN

    selectStmt ::= opt_218 SELECT opt_219 opt_220 columnExprList opt_221 opt_222 opt_223 opt_224 opt_225 opt_226 opt_229 opt_231 opt_232 opt_233 opt_234 opt_235 opt_236

    withClause ::= WITH columnExprList

    topClause ::= TOP DECIMAL_LITERAL opt_238

    fromClause ::= FROM joinExpr

    arrayJoinClause ::= opt_240 ARRAY JOIN columnExprList

    windowClause ::= WINDOW identifier AS LPAREN windowExpr RPAREN

    prewhereClause ::= PREWHERE columnExpr

    whereClause ::= WHERE columnExpr

    groupByClause ::= GROUP BY grp_241

    havingClause ::= HAVING columnExpr

    orderByClause ::= ORDER BY orderExprList

    projectionOrderByClause ::= ORDER BY columnExprList

    limitByClause ::= LIMIT limitExpr BY columnExprList

    limitClause ::= LIMIT limitExpr opt_244

    settingsClause ::= SETTINGS settingExprList

    joinExpr ::= joinExpr opt_246 opt_247 JOIN joinExpr joinConstraintClause
           | joinExpr joinOpCross joinExpr
           | tableExpr opt_248 opt_249
           | LPAREN joinExpr RPAREN

    joinOp ::= grp_250
           | grp_256
           | grp_265

    joinOpCross ::= opt_273 CROSS JOIN
           | COMMA

    joinConstraintClause ::= ON columnExprList
           | USING LPAREN columnExprList RPAREN
           | USING columnExprList

    sampleClause ::= SAMPLE ratioExpr opt_275

    limitExpr ::= columnExpr opt_278

    orderExprList ::= orderExpr list_280

    orderExpr ::= columnExpr opt_282 opt_285 opt_287

    ratioExpr ::= numberLiteral opt_289

    settingExprList ::= settingExpr list_291

    settingExpr ::= identifier EQ_SINGLE literal

    windowExpr ::= opt_292 opt_293 opt_294

    winPartitionByClause ::= PARTITION BY columnExprList

    winOrderByClause ::= ORDER BY orderExprList

    winFrameClause ::= grp_295 winFrameExtend

    winFrameExtend ::= winFrameBound
           | BETWEEN winFrameBound AND winFrameBound

    winFrameBound ::= grp_296

    setStmt ::= SET settingExprList

    showStmt ::= SHOW CREATE DATABASE databaseIdentifier
           | SHOW CREATE DICTIONARY tableIdentifier
           | SHOW CREATE opt_297 opt_298 tableIdentifier
           | SHOW DATABASES
           | SHOW DICTIONARIES opt_300
           | SHOW opt_301 TABLES opt_304 opt_306 opt_307

    systemStmt ::= SYSTEM FLUSH DISTRIBUTED tableIdentifier
           | SYSTEM FLUSH LOGS
           | SYSTEM RELOAD DICTIONARIES
           | SYSTEM RELOAD DICTIONARY tableIdentifier
           | SYSTEM grp_308 grp_309 tableIdentifier
           | SYSTEM grp_311 REPLICATED SENDS
           | SYSTEM SYNC REPLICA tableIdentifier

    truncateStmt ::= TRUNCATE opt_312 opt_313 opt_315 tableIdentifier opt_316

    useStmt ::= USE databaseIdentifier

    watchStmt ::= WATCH tableIdentifier opt_317 opt_319

    columnTypeExpr ::= identifier
           | identifier LPAREN identifier columnTypeExpr list_321 RPAREN
           | identifier LPAREN enumValue list_323 RPAREN
           | identifier LPAREN columnTypeExpr list_325 RPAREN
           | identifier LPAREN opt_326 RPAREN

    columnExprList ::= columnsExpr list_328

    columnsExpr ::= opt_330 ASTERISK
           | LPAREN selectUnionStmt RPAREN
           | columnExpr

    columnExpr ::= CASE opt_331 list_333 opt_335 END
           | CAST LPAREN columnExpr AS columnTypeExpr RPAREN
           | columnExpr DOUBLE_COLON columnTypeExpr
           | DATE STRING_LITERAL
           | EXTRACT LPAREN interval FROM columnExpr RPAREN
           | INTERVAL columnExpr interval
           | SUBSTRING LPAREN columnExpr FROM columnExpr opt_337 RPAREN
           | TIMESTAMP STRING_LITERAL
           | TRIM LPAREN grp_338 STRING_LITERAL FROM columnExpr RPAREN
           | identifier seq_340 OVER LPAREN windowExpr RPAREN
           | identifier seq_342 OVER identifier
           | identifier opt_345 LPAREN opt_346 opt_347 RPAREN
           | literal
           | columnExpr LBRACKET columnExpr RBRACKET
           | columnExpr DOT grp_348
           | columnExpr LBRACE STRING_LITERAL RBRACE
           | DASH columnExpr
           | columnExpr grp_349 columnExpr
           | columnExpr grp_350 columnExpr
           | columnExpr grp_351 columnExpr
           | columnExpr IS opt_356 NULL_SQL
           | NOT columnExpr
           | columnExpr AND columnExpr
           | columnExpr OR columnExpr
           | columnExpr opt_357 BETWEEN columnExpr AND columnExpr
           | columnExpr QUERY columnExpr COLON columnExpr
           | columnExpr grp_358
           | opt_360 ASTERISK
           | LPAREN selectUnionStmt RPAREN
           | LPAREN columnExpr RPAREN
           | LPAREN columnExprList RPAREN
           | LBRACKET opt_361 RBRACKET
           | columnIdentifier

    columnArgList ::= columnArgExpr list_363

    columnArgExpr ::= columnLambdaExpr
           | columnExpr

    columnLambdaExpr ::= grp_364 ARROW columnExpr

    columnIdentifier ::= opt_370 nestedIdentifier

    nestedIdentifier ::= identifier opt_372

    tableExpr ::= tableIdentifier
           | tableFunctionExpr
           | LPAREN selectUnionStmt RPAREN
           | tableExpr grp_373

    tableFunctionExpr ::= identifier LPAREN opt_374 RPAREN

    tableIdentifier ::= opt_376 identifier

    tableArgList ::= tableArgExpr list_378

    tableArgExpr ::= nestedIdentifier
           | tableFunctionExpr
           | literal

    databaseIdentifier ::= identifier

    dictionaryIdentifier ::= opt_380 identifier

    floatingLiteral ::= FLOATING_LITERAL
           | DOT grp_381
           | DECIMAL_LITERAL DOT opt_383

    numberLiteral ::= opt_385 grp_386

    literal ::= numberLiteral
           | STRING_LITERAL
           | NULL_SQL

    interval ::= SECOND
           | MINUTE
           | HOUR
           | DAY
           | WEEK
           | MONTH
           | QUARTER
           | YEAR

    keyword ::= ACCESS
           | ADD
           | AFTER
           | ALIAS
           | ALL
           | ALTER
           | AND
           | ANTI
           | ANY
           | ARRAY
           | AS
           | ASCENDING
           | ASOF
           | AST
           | ASYNC
           | ATTACH
           | BETWEEN
           | BOTH
           | BY
           | CACHES
           | CASE
           | CAST
           | CHECK
           | CLEAR
           | CLUSTER
           | CLUSTERS
           | CODEC
           | COLLATE
           | COLUMN
           | COLUMNS
           | COMMENT
           | CONSTRAINT
           | CREATE
           | CROSS
           | CUBE
           | CURRENT
           | CURRENT_USER
           | CHANGED
           | DATABASE
           | DATABASES
           | DATE
           | DAY
           | DEDUPLICATE
           | DEFAULT
           | DELAY
           | DELETE
           | DESC
           | DESCENDING
           | DESCRIBE
           | DETACH
           | DICTIONARIES
           | DICTIONARY
           | DISK
           | DISTINCT
           | DISTRIBUTED
           | DROP
           | ELSE
           | ENABLED
           | END
           | ENGINE
           | ENGINES
           | ESTIMATE
           | EVENTS
           | EXCEPT
           | EXISTS
           | EXPLAIN
           | EXPRESSION
           | EXTENDED
           | EXTRACT
           | FETCHES
           | FIELDS
           | FILESYSTEM
           | FILL
           | FINAL
           | FIRST
           | FLUSH
           | FOLLOWING
           | FOR
           | FORMAT
           | FREEZE
           | FROM
           | FULL
           | FUNCTION
           | FUNCTIONS
           | GLOBAL
           | GRANULARITY
           | GRANTS
           | GROUP
           | GROUPING
           | HAVING
           | HIERARCHICAL
           | HOUR
           | ID
           | IF
           | ILIKE
           | IMPLICIT
           | IN
           | INDEX
           | INDEXES
           | INDICES
           | INJECTIVE
           | INNER
           | INSERT
           | INTERPOLATE
           | INTERVAL
           | INTO
           | IS
           | IS_OBJECT_ID
           | JOIN
           | JSON_FALSE
           | JSON_TRUE
           | KEY
           | KEYS
           | KILL
           | LAST
           | LAYOUT
           | LEADING
           | LEFT
           | LIFETIME
           | LIKE
           | LIMIT
           | LIVE
           | LOCAL
           | LOGS
           | MATERIALIZE
           | MATERIALIZED
           | MAX
           | MERGES
           | MICROSECOND
           | MILLISECOND
           | MIN
           | MINUTE
           | MODIFY
           | MOVE
           | MUTATION
           | NO
           | NOT
           | NULLS
           | OFFSET
           | ON
           | OPTIMIZE
           | OR
           | ORDER
           | OUTER
           | OUTFILE
           | OVER
           | OVERRIDE
           | PARTITION
           | PIPELINE
           | PLAN
           | POLICY
           | POLICIES
           | POPULATE
           | PRECEDING
           | PREWHERE
           | PRIMARY
           | PRIVILEGES
           | PROCESSLIST
           | PROFILE
           | PROFILES
           | PROJECTION
           | QUARTER
           | QUOTA
           | QUOTAS
           | RANGE
           | RECURSIVE
           | RELOAD
           | REMOVE
           | RENAME
           | REPLACE
           | REPLICA
           | REPLICATED
           | RIGHT
           | ROLE
           | ROLES
           | ROLLUP
           | ROW
           | ROWS
           | SAMPLE
           | SECOND
           | SELECT
           | SEMI
           | SENDS
           | SET
           | SETTING
           | SETTINGS
           | SHOW
           | SOURCE
           | START
           | STOP
           | SUBSTRING
           | SYNC
           | SYNTAX
           | SYSTEM
           | STEP
           | TABLE
           | TABLES
           | TEMPORARY
           | TEST
           | THEN
           | TIES
           | TIMEOUT
           | TIMESTAMP
           | TO
           | TOP
           | TOTALS
           | TRAILING
           | TREE
           | TRIM
           | TRUNCATE
           | TTL
           | TYPE
           | UNBOUNDED
           | UNION
           | UPDATE
           | USE
           | USER
           | USERS
           | USING
           | UUID
           | VALUES
           | VIEW
           | VOLUME
           | WATCH
           | WEEK
           | WHEN
           | WHERE
           | WINDOW
           | WITH
           | YEAR

    keywordForAlias ::= DATE
           | FIRST
           | ID
           | KEY

    alias ::= IDENTIFIER
           | keywordForAlias

    identifier ::= IDENTIFIER
           | interval
           | keyword

    identifierOrNull ::= identifier
           | NULL_SQL

    enumValue ::= STRING_LITERAL EQ_SINGLE numberLiteral

    opt_1 ::= batch | $empty

    seq_2 ::= SEMICOLON command

    list_3 ::= $empty | list_3 seq_2

    opt_4 ::= SEMICOLON | $empty

    seq_5 ::= INTO OUTFILE STRING_LITERAL

    opt_6 ::= seq_5 | $empty

    seq_7 ::= FORMAT identifierOrNull

    opt_8 ::= seq_7 | $empty

    opt_9 ::= SEMICOLON | $empty

    opt_10 ::= ctes | $empty

    seq_11 ::= COMMA namedQuery

    list_12 ::= $empty | list_12 seq_11

    opt_13 ::= columnAliases | $empty

    seq_14 ::= COMMA identifier

    list_15 ::= $empty | list_15 seq_14

    opt_16 ::= clusterClause | $empty

    seq_17 ::= COMMA alterTableClause

    list_18 ::= $empty | list_18 seq_17

    seq_19 ::= IF NOT EXISTS

    opt_20 ::= seq_19 | $empty

    seq_21 ::= AFTER nestedIdentifier

    opt_22 ::= seq_21 | $empty

    seq_23 ::= IF NOT EXISTS

    opt_24 ::= seq_23 | $empty

    seq_25 ::= AFTER nestedIdentifier

    opt_26 ::= seq_25 | $empty

    seq_27 ::= IF NOT EXISTS

    opt_28 ::= seq_27 | $empty

    seq_29 ::= AFTER nestedIdentifier

    opt_30 ::= seq_29 | $empty

    seq_31 ::= FROM tableIdentifier

    opt_32 ::= seq_31 | $empty

    seq_33 ::= IF EXISTS

    opt_34 ::= seq_33 | $empty

    seq_35 ::= IN partitionClause

    opt_36 ::= seq_35 | $empty

    seq_37 ::= IF EXISTS

    opt_38 ::= seq_37 | $empty

    seq_39 ::= IN partitionClause

    opt_40 ::= seq_39 | $empty

    seq_41 ::= IF EXISTS

    opt_42 ::= seq_41 | $empty

    seq_43 ::= IN partitionClause

    opt_44 ::= seq_43 | $empty

    seq_45 ::= IF EXISTS

    opt_46 ::= seq_45 | $empty

    seq_47 ::= IF EXISTS

    opt_48 ::= seq_47 | $empty

    seq_49 ::= IF EXISTS

    opt_50 ::= seq_49 | $empty

    seq_51 ::= IF EXISTS

    opt_52 ::= seq_51 | $empty

    opt_53 ::= partitionClause | $empty

    seq_54 ::= IF EXISTS

    opt_55 ::= seq_54 | $empty

    seq_56 ::= IN partitionClause

    opt_57 ::= seq_56 | $empty

    seq_58 ::= IF EXISTS

    opt_59 ::= seq_58 | $empty

    seq_60 ::= IN partitionClause

    opt_61 ::= seq_60 | $empty

    seq_62 ::= IF EXISTS

    opt_63 ::= seq_62 | $empty

    seq_64 ::= IF EXISTS

    opt_65 ::= seq_64 | $empty

    seq_66 ::= IF EXISTS

    opt_67 ::= seq_66 | $empty

    seq_68 ::= IF EXISTS

    opt_69 ::= seq_68 | $empty

    grp_70 ::= TO DISK STRING_LITERAL | TO VOLUME STRING_LITERAL | TO TABLE tableIdentifier

    seq_71 ::= IF EXISTS

    opt_72 ::= seq_71 | $empty

    seq_73 ::= COMMA assignmentExpr

    list_74 ::= $empty | list_74 seq_73

    opt_75 ::= clusterClause | $empty

    opt_76 ::= partitionClause | $empty

    grp_77 ::= ATTACH | CREATE

    seq_78 ::= IF NOT EXISTS

    opt_79 ::= seq_78 | $empty

    opt_80 ::= clusterClause | $empty

    opt_81 ::= engineExpr | $empty

    seq_83 ::= OR REPLACE

    opt_84 ::= seq_83 | $empty

    grp_82 ::= ATTACH | CREATE opt_84 | REPLACE

    seq_85 ::= IF NOT EXISTS

    opt_86 ::= seq_85 | $empty

    opt_87 ::= uuidClause | $empty

    opt_88 ::= clusterClause | $empty

    grp_89 ::= ATTACH | CREATE

    seq_90 ::= IF NOT EXISTS

    opt_91 ::= seq_90 | $empty

    opt_92 ::= uuidClause | $empty

    opt_93 ::= clusterClause | $empty

    opt_94 ::= DECIMAL_LITERAL | $empty

    seq_95 ::= WITH TIMEOUT opt_94

    opt_96 ::= seq_95 | $empty

    opt_97 ::= destinationClause | $empty

    opt_98 ::= tableSchemaClause | $empty

    grp_99 ::= ATTACH | CREATE

    seq_100 ::= IF NOT EXISTS

    opt_101 ::= seq_100 | $empty

    opt_102 ::= uuidClause | $empty

    opt_103 ::= clusterClause | $empty

    opt_104 ::= tableSchemaClause | $empty

    opt_106 ::= POPULATE | $empty

    grp_105 ::= destinationClause | engineClause opt_106

    seq_108 ::= OR REPLACE

    opt_109 ::= seq_108 | $empty

    grp_107 ::= ATTACH | CREATE opt_109 | REPLACE

    opt_110 ::= TEMPORARY | $empty

    seq_111 ::= IF NOT EXISTS

    opt_112 ::= seq_111 | $empty

    opt_113 ::= uuidClause | $empty

    opt_114 ::= clusterClause | $empty

    opt_115 ::= tableSchemaClause | $empty

    opt_116 ::= engineClause | $empty

    opt_117 ::= subqueryClause | $empty

    grp_118 ::= ATTACH | CREATE

    seq_119 ::= OR REPLACE

    opt_120 ::= seq_119 | $empty

    seq_121 ::= IF NOT EXISTS

    opt_122 ::= seq_121 | $empty

    opt_123 ::= uuidClause | $empty

    opt_124 ::= clusterClause | $empty

    opt_125 ::= tableSchemaClause | $empty

    seq_126 ::= COMMA dictionaryAttrDfnt

    list_127 ::= $empty | list_127 seq_126

    opt_128 ::= dictionarySettingsClause | $empty

    seq_130 ::= LPAREN RPAREN

    opt_131 ::= seq_130 | $empty

    grp_129 ::= identifier opt_131 | literal

    list_132 ::= $empty | list_132 dictionaryArgExpr

    grp_133 ::= DECIMAL_LITERAL | MIN DECIMAL_LITERAL MAX DECIMAL_LITERAL | MAX DECIMAL_LITERAL MIN DECIMAL_LITERAL

    list_134 ::= $empty | list_134 dictionaryArgExpr

    grp_135 ::= MIN identifier MAX identifier | MAX identifier MIN identifier

    grp_136 ::= identifier | STRING_LITERAL

    seq_137 ::= COMMA tableElementExpr

    list_138 ::= $empty | list_138 seq_137

    grp_139 ::= orderByClause | partitionByClause | primaryKeyClause | sampleByClause | ttlClause | settingsClause

    list_140 ::= $empty | list_140 grp_139

    seq_141 ::= COMMA ttlExpr

    list_142 ::= $empty | list_142 seq_141

    opt_143 ::= EQ_SINGLE | $empty

    opt_144 ::= columnExprList | $empty

    seq_145 ::= LPAREN opt_144 RPAREN

    opt_146 ::= seq_145 | $empty

    opt_147 ::= tableColumnPropertyExpr | $empty

    seq_148 ::= COMMENT STRING_LITERAL

    opt_149 ::= seq_148 | $empty

    opt_150 ::= codecExpr | $empty

    seq_151 ::= TTL columnExpr

    opt_152 ::= seq_151 | $empty

    opt_153 ::= columnTypeExpr | $empty

    seq_154 ::= COMMENT STRING_LITERAL

    opt_155 ::= seq_154 | $empty

    opt_156 ::= codecExpr | $empty

    seq_157 ::= TTL columnExpr

    opt_158 ::= seq_157 | $empty

    grp_159 ::= DEFAULT | MATERIALIZED | ALIAS

    seq_160 ::= COMMA codecArgExpr

    list_161 ::= $empty | list_161 seq_160

    opt_162 ::= columnExprList | $empty

    seq_163 ::= LPAREN opt_162 RPAREN

    opt_164 ::= seq_163 | $empty

    grp_165 ::= DELETE | TO DISK STRING_LITERAL | TO VOLUME STRING_LITERAL

    opt_166 ::= grp_165 | $empty

    grp_167 ::= DESCRIBE | DESC

    opt_168 ::= TABLE | $empty

    grp_169 ::= DETACH | DROP

    seq_170 ::= IF EXISTS

    opt_171 ::= seq_170 | $empty

    opt_172 ::= clusterClause | $empty

    grp_173 ::= DETACH | DROP

    opt_175 ::= TEMPORARY | $empty

    grp_174 ::= DICTIONARY | opt_175 TABLE | VIEW

    seq_176 ::= IF EXISTS

    opt_177 ::= seq_176 | $empty

    opt_178 ::= clusterClause | $empty

    seq_179 ::= NO DELAY

    opt_180 ::= seq_179 | $empty

    opt_182 ::= TEMPORARY | $empty

    grp_181 ::= DICTIONARY | opt_182 TABLE | VIEW

    opt_183 ::= grp_181 | $empty

    opt_184 ::= TABLE | $empty

    grp_185 ::= tableIdentifier | FUNCTION tableFunctionExpr

    opt_186 ::= columnsClause | $empty

    seq_187 ::= COMMA nestedIdentifier

    list_188 ::= $empty | list_188 seq_187

    seq_189 ::= COMMA assignmentValues

    list_190 ::= $empty | list_190 seq_189

    opt_191 ::= SEMICOLON | $empty

    seq_192 ::= COMMA assignmentValue

    list_193 ::= $empty | list_193 seq_192

    opt_194 ::= clusterClause | $empty

    opt_195 ::= inPartitionClause | $empty

    opt_196 ::= clusterClause | $empty

    opt_197 ::= inPartitionClause | $empty

    opt_198 ::= clusterClause | $empty

    grp_199 ::= SYNC | ASYNC | TEST

    opt_200 ::= grp_199 | $empty

    opt_201 ::= clusterClause | $empty

    opt_202 ::= partitionClause | $empty

    opt_203 ::= FINAL | $empty

    opt_204 ::= DEDUPLICATE | $empty

    opt_205 ::= clusterClause | $empty

    opt_206 ::= TABLE | $empty

    seq_207 ::= COMMA tableIdentifier TO tableIdentifier

    list_208 ::= $empty | list_208 seq_207

    seq_209 ::= COMMA databaseIdentifier TO databaseIdentifier

    list_210 ::= $empty | list_210 seq_209

    seq_211 ::= COMMA dictionaryIdentifier TO dictionaryIdentifier

    list_212 ::= $empty | list_212 seq_211

    opt_213 ::= withClause | $empty

    opt_214 ::= groupByClause | $empty

    opt_215 ::= projectionOrderByClause | $empty

    seq_216 ::= UNION ALL selectStmtWithParens

    list_217 ::= $empty | list_217 seq_216

    opt_218 ::= withClause | $empty

    opt_219 ::= DISTINCT | $empty

    opt_220 ::= topClause | $empty

    opt_221 ::= fromClause | $empty

    opt_222 ::= arrayJoinClause | $empty

    opt_223 ::= windowClause | $empty

    opt_224 ::= prewhereClause | $empty

    opt_225 ::= whereClause | $empty

    opt_226 ::= groupByClause | $empty

    grp_228 ::= CUBE | ROLLUP

    grp_227 ::= WITH grp_228

    opt_229 ::= grp_227 | $empty

    seq_230 ::= WITH TOTALS

    opt_231 ::= seq_230 | $empty

    opt_232 ::= havingClause | $empty

    opt_233 ::= orderByClause | $empty

    opt_234 ::= limitByClause | $empty

    opt_235 ::= limitClause | $empty

    opt_236 ::= settingsClause | $empty

    seq_237 ::= WITH TIES

    opt_238 ::= seq_237 | $empty

    grp_239 ::= LEFT | INNER

    opt_240 ::= grp_239 | $empty

    grp_242 ::= CUBE | ROLLUP

    grp_241 ::= grp_242 LPAREN columnExprList RPAREN | columnExprList

    seq_243 ::= WITH TIES

    opt_244 ::= seq_243 | $empty

    grp_245 ::= GLOBAL | LOCAL

    opt_246 ::= grp_245 | $empty

    opt_247 ::= joinOp | $empty

    opt_248 ::= FINAL | $empty

    opt_249 ::= sampleClause | $empty

    grp_251 ::= ALL | ANY | ASOF

    opt_252 ::= grp_251 | $empty

    grp_253 ::= ALL | ANY | ASOF

    opt_254 ::= grp_253 | $empty

    grp_255 ::= ALL | ANY | ASOF

    grp_250 ::= opt_252 INNER | INNER opt_254 | grp_255

    grp_257 ::= SEMI | ALL | ANTI | ANY | ASOF

    opt_258 ::= grp_257 | $empty

    grp_259 ::= LEFT | RIGHT

    opt_260 ::= OUTER | $empty

    grp_261 ::= LEFT | RIGHT

    opt_262 ::= OUTER | $empty

    grp_263 ::= SEMI | ALL | ANTI | ANY | ASOF

    opt_264 ::= grp_263 | $empty

    grp_256 ::= opt_258 grp_259 opt_260 | grp_261 opt_262 opt_264

    grp_266 ::= ALL | ANY

    opt_267 ::= grp_266 | $empty

    opt_268 ::= OUTER | $empty

    opt_269 ::= OUTER | $empty

    grp_270 ::= ALL | ANY

    opt_271 ::= grp_270 | $empty

    grp_265 ::= opt_267 FULL opt_268 | FULL opt_269 opt_271

    grp_272 ::= GLOBAL | LOCAL

    opt_273 ::= grp_272 | $empty

    seq_274 ::= OFFSET ratioExpr

    opt_275 ::= seq_274 | $empty

    grp_277 ::= COMMA | OFFSET

    grp_276 ::= grp_277 columnExpr

    opt_278 ::= grp_276 | $empty

    seq_279 ::= COMMA orderExpr

    list_280 ::= $empty | list_280 seq_279

    grp_281 ::= ASCENDING | DESCENDING | DESC

    opt_282 ::= grp_281 | $empty

    grp_284 ::= FIRST | LAST

    grp_283 ::= NULLS grp_284

    opt_285 ::= grp_283 | $empty

    seq_286 ::= COLLATE STRING_LITERAL

    opt_287 ::= seq_286 | $empty

    seq_288 ::= SLASH numberLiteral

    opt_289 ::= seq_288 | $empty

    seq_290 ::= COMMA settingExpr

    list_291 ::= $empty | list_291 seq_290

    opt_292 ::= winPartitionByClause | $empty

    opt_293 ::= winOrderByClause | $empty

    opt_294 ::= winFrameClause | $empty

    grp_295 ::= ROWS | RANGE

    grp_296 ::= CURRENT ROW | UNBOUNDED PRECEDING | UNBOUNDED FOLLOWING | numberLiteral PRECEDING | numberLiteral FOLLOWING

    opt_297 ::= TEMPORARY | $empty

    opt_298 ::= TABLE | $empty

    seq_299 ::= FROM databaseIdentifier

    opt_300 ::= seq_299 | $empty

    opt_301 ::= TEMPORARY | $empty

    grp_303 ::= FROM | IN

    grp_302 ::= grp_303 databaseIdentifier

    opt_304 ::= grp_302 | $empty

    grp_305 ::= LIKE STRING_LITERAL | whereClause

    opt_306 ::= grp_305 | $empty

    opt_307 ::= limitClause | $empty

    grp_308 ::= START | STOP

    opt_310 ::= TTL | $empty

    grp_309 ::= DISTRIBUTED SENDS | FETCHES | opt_310 MERGES

    grp_311 ::= START | STOP

    opt_312 ::= TEMPORARY | $empty

    opt_313 ::= TABLE | $empty

    seq_314 ::= IF EXISTS

    opt_315 ::= seq_314 | $empty

    opt_316 ::= clusterClause | $empty

    opt_317 ::= EVENTS | $empty

    seq_318 ::= LIMIT DECIMAL_LITERAL

    opt_319 ::= seq_318 | $empty

    seq_320 ::= COMMA identifier columnTypeExpr

    list_321 ::= $empty | list_321 seq_320

    seq_322 ::= COMMA enumValue

    list_323 ::= $empty | list_323 seq_322

    seq_324 ::= COMMA columnTypeExpr

    list_325 ::= $empty | list_325 seq_324

    opt_326 ::= columnExprList | $empty

    seq_327 ::= COMMA columnsExpr

    list_328 ::= $empty | list_328 seq_327

    seq_329 ::= tableIdentifier DOT

    opt_330 ::= seq_329 | $empty

    opt_331 ::= columnExpr | $empty

    seq_332 ::= WHEN columnExpr THEN columnExpr

    list_333 ::= seq_332 | list_333 seq_332

    seq_334 ::= ELSE columnExpr

    opt_335 ::= seq_334 | $empty

    seq_336 ::= FOR columnExpr

    opt_337 ::= seq_336 | $empty

    grp_338 ::= BOTH | LEADING | TRAILING

    opt_339 ::= columnExprList | $empty

    seq_340 ::= LPAREN opt_339 RPAREN

    opt_341 ::= columnExprList | $empty

    seq_342 ::= LPAREN opt_341 RPAREN

    opt_343 ::= columnExprList | $empty

    seq_344 ::= LPAREN opt_343 RPAREN

    opt_345 ::= seq_344 | $empty

    opt_346 ::= DISTINCT | $empty

    opt_347 ::= columnArgList | $empty

    grp_348 ::= DECIMAL_LITERAL | STRING_LITERAL | identifier

    grp_349 ::= ASTERISK | SLASH | PERCENT

    grp_350 ::= PLUS | DASH | CONCAT

    opt_352 ::= GLOBAL | $empty

    opt_353 ::= NOT | $empty

    opt_354 ::= NOT | $empty

    grp_355 ::= LIKE | ILIKE

    grp_351 ::= EQ_DOUBLE | EQ_SINGLE | NOT_EQ | LE | GE | LT | GT | opt_352 opt_353 IN | opt_354 grp_355

    opt_356 ::= NOT | $empty

    opt_357 ::= NOT | $empty

    grp_358 ::= alias | AS identifier

    seq_359 ::= tableIdentifier DOT

    opt_360 ::= seq_359 | $empty

    opt_361 ::= columnExprList | $empty

    seq_362 ::= COMMA columnArgExpr

    list_363 ::= $empty | list_363 seq_362

    seq_365 ::= COMMA identifier

    list_366 ::= $empty | list_366 seq_365

    seq_367 ::= COMMA identifier

    list_368 ::= $empty | list_368 seq_367

    grp_364 ::= LPAREN identifier list_366 RPAREN | identifier list_368

    seq_369 ::= tableIdentifier DOT

    opt_370 ::= seq_369 | $empty

    seq_371 ::= DOT identifier

    opt_372 ::= seq_371 | $empty

    grp_373 ::= alias | AS identifier

    opt_374 ::= tableArgList | $empty

    seq_375 ::= databaseIdentifier DOT

    opt_376 ::= seq_375 | $empty

    seq_377 ::= COMMA tableArgExpr

    list_378 ::= $empty | list_378 seq_377

    seq_379 ::= databaseIdentifier DOT

    opt_380 ::= seq_379 | $empty

    grp_381 ::= DECIMAL_LITERAL | OCTAL_LITERAL

    grp_382 ::= DECIMAL_LITERAL | OCTAL_LITERAL

    opt_383 ::= grp_382 | $empty

    grp_384 ::= PLUS | DASH

    opt_385 ::= grp_384 | $empty

    grp_386 ::= floatingLiteral | OCTAL_LITERAL | DECIMAL_LITERAL | HEXADECIMAL_NUMERIC_LITERAL | INF | NAN_SQL

%End
