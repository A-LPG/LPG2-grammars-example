-- AUTO-GENERATED from antlr/grammars-v4 sql/trino by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=SqlTrinoParser
%options package=lpg.grammars.sql.trino
%options template=dtParserTemplateF.gi
%options import_terminals=SqlTrinoLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    parse
%End

%Rules
    parse ::= list_1

    statements ::= singleStatement
           | standaloneExpression
           | standalonePathSpecification
           | standaloneType
           | standaloneRowPattern opt_2
           | standaloneFunctionSpecification

    singleStatement ::= statement SEMICOLON_

    standaloneExpression ::= expression SEMICOLON_

    standalonePathSpecification ::= pathSpecification SEMICOLON_

    standaloneType ::= type SEMICOLON_

    standaloneRowPattern ::= rowPattern SEMICOLON_

    standaloneFunctionSpecification ::= functionSpecification SEMICOLON_

    statement ::= rootQuery
           | USE_ identifier
           | USE_ identifier DOT_ identifier
           | CREATE_ CATALOG_ opt_4 identifier USING_ identifier opt_6 opt_8 opt_10
           | DROP_ CATALOG_ opt_12 identifier opt_14
           | CREATE_ SCHEMA_ opt_16 qualifiedName opt_18 opt_20
           | DROP_ SCHEMA_ opt_22 qualifiedName opt_24
           | ALTER_ SCHEMA_ qualifiedName RENAME_ TO_ identifier
           | ALTER_ SCHEMA_ qualifiedName SET_ AUTHORIZATION_ principal
           | CREATE_ opt_26 TABLE_ opt_28 qualifiedName opt_29 opt_31 opt_33 AS_ grp_34 opt_37
           | CREATE_ opt_39 TABLE_ opt_41 qualifiedName LPAREN_ tableElement list_43 RPAREN_ opt_45 opt_47
           | DROP_ TABLE_ opt_49 qualifiedName
           | INSERT_ INTO_ qualifiedName opt_50 rootQuery
           | DELETE_ FROM_ qualifiedName opt_52
           | TRUNCATE_ TABLE_ qualifiedName
           | COMMENT_ ON_ TABLE_ qualifiedName IS_ grp_53
           | COMMENT_ ON_ VIEW_ qualifiedName IS_ grp_54
           | COMMENT_ ON_ COLUMN_ qualifiedName IS_ grp_55
           | ALTER_ TABLE_ opt_57 qualifiedName RENAME_ TO_ qualifiedName
           | ALTER_ TABLE_ opt_59 qualifiedName ADD_ COLUMN_ opt_61 columnDefinition
           | ALTER_ TABLE_ opt_63 qualifiedName RENAME_ COLUMN_ opt_65 qualifiedName TO_ identifier
           | ALTER_ TABLE_ opt_67 qualifiedName DROP_ COLUMN_ opt_69 qualifiedName
           | ALTER_ TABLE_ opt_71 qualifiedName ALTER_ COLUMN_ qualifiedName SET_ DATA_ TYPE_ type
           | ALTER_ TABLE_ qualifiedName SET_ AUTHORIZATION_ principal
           | ALTER_ TABLE_ qualifiedName SET_ PROPERTIES_ propertyAssignments
           | ALTER_ TABLE_ qualifiedName EXECUTE_ identifier opt_77 opt_79
           | ANALYZE_ qualifiedName opt_81
           | CREATE_ opt_83 MATERIALIZED_ VIEW_ opt_85 qualifiedName opt_87 opt_89 opt_91 AS_ rootQuery
           | CREATE_ opt_93 VIEW_ qualifiedName opt_95 opt_98 AS_ rootQuery
           | REFRESH_ MATERIALIZED_ VIEW_ qualifiedName
           | DROP_ MATERIALIZED_ VIEW_ opt_100 qualifiedName
           | ALTER_ MATERIALIZED_ VIEW_ opt_102 qualifiedName RENAME_ TO_ qualifiedName
           | ALTER_ MATERIALIZED_ VIEW_ qualifiedName SET_ PROPERTIES_ propertyAssignments
           | DROP_ VIEW_ opt_104 qualifiedName
           | ALTER_ VIEW_ qualifiedName RENAME_ TO_ qualifiedName
           | ALTER_ VIEW_ qualifiedName SET_ AUTHORIZATION_ principal
           | CALL_ qualifiedName LPAREN_ opt_108 RPAREN_
           | CREATE_ opt_110 functionSpecification
           | DROP_ FUNCTION_ opt_112 functionDeclaration
           | CREATE_ ROLE_ identifier opt_114 opt_116
           | DROP_ ROLE_ identifier opt_118
           | GRANT_ roles TO_ principal list_120 opt_122 opt_124 opt_126
           | REVOKE_ opt_128 roles FROM_ principal list_130 opt_132 opt_134
           | SET_ ROLE_ grp_135 opt_137
           | GRANT_ grp_138 ON_ opt_142 qualifiedName TO_ principal opt_144
           | DENY_ grp_145 ON_ opt_149 qualifiedName TO_ principal
           | REVOKE_ opt_151 grp_152 ON_ opt_156 qualifiedName FROM_ principal
           | SHOW_ GRANTS_ opt_159
           | EXPLAIN_ opt_163 statement
           | EXPLAIN_ ANALYZE_ opt_164 statement
           | SHOW_ CREATE_ TABLE_ qualifiedName
           | SHOW_ CREATE_ SCHEMA_ qualifiedName
           | SHOW_ CREATE_ VIEW_ qualifiedName
           | SHOW_ CREATE_ MATERIALIZED_ VIEW_ qualifiedName
           | SHOW_ TABLES_ opt_167 opt_171
           | SHOW_ SCHEMAS_ opt_174 opt_178
           | SHOW_ CATALOGS_ opt_182
           | SHOW_ COLUMNS_ grp_183 opt_184 opt_188
           | SHOW_ STATS_ FOR_ qualifiedName
           | SHOW_ STATS_ FOR_ LPAREN_ rootQuery RPAREN_
           | SHOW_ opt_189 ROLES_ opt_192
           | SHOW_ ROLE_ GRANTS_ opt_195
           | DESCRIBE_ qualifiedName
           | DESC_ qualifiedName
           | SHOW_ FUNCTIONS_ opt_198 opt_202
           | SHOW_ SESSION_ opt_206
           | SET_ SESSION_ AUTHORIZATION_ authorizationUser
           | RESET_ SESSION_ AUTHORIZATION_
           | SET_ SESSION_ qualifiedName EQ_ expression
           | RESET_ SESSION_ qualifiedName
           | START_ TRANSACTION_ opt_210
           | COMMIT_ opt_211
           | ROLLBACK_ opt_212
           | PREPARE_ identifier FROM_ statement
           | DEALLOCATE_ PREPARE_ identifier
           | EXECUTE_ identifier opt_216
           | EXECUTE_ IMMEDIATE_ string_ opt_220
           | DESCRIBE_ INPUT_ identifier
           | DESCRIBE_ OUTPUT_ identifier
           | SET_ PATH_ pathSpecification
           | SET_ TIME_ ZONE_ grp_221
           | UPDATE_ qualifiedName SET_ updateAssignment list_223 opt_225
           | MERGE_ INTO_ qualifiedName opt_228 USING_ relation ON_ expression list_229

    rootQuery ::= opt_230 query

    withFunction ::= WITH_ functionSpecification list_232

    query ::= opt_233 queryNoWith

    with ::= WITH_ opt_234 namedQuery list_236

    tableElement ::= columnDefinition
           | likeClause

    columnDefinition ::= identifier type opt_238 opt_240 opt_242

    likeClause ::= LIKE_ qualifiedName opt_245

    properties ::= LPAREN_ propertyAssignments RPAREN_

    propertyAssignments ::= property list_247

    property ::= identifier EQ_ propertyValue

    propertyValue ::= DEFAULT_
           | expression

    queryNoWith ::= queryTerm opt_251 opt_255 opt_261

    limitRowCount ::= ALL_
           | rowCount

    rowCount ::= INTEGER_VALUE_
           | QUESTION_MARK_

    queryTerm ::= queryPrimary
           | queryTerm INTERSECT_ opt_262 queryTerm
           | queryTerm grp_263 opt_264 queryTerm

    queryPrimary ::= querySpecification
           | TABLE_ qualifiedName
           | VALUES_ expression list_266
           | LPAREN_ queryNoWith RPAREN_

    sortItem ::= expression opt_268 opt_271

    querySpecification ::= SELECT_ opt_272 selectItem list_274 opt_278 opt_280 opt_282 opt_284 opt_288

    groupBy ::= opt_289 groupingElement list_291

    groupingElement ::= groupingSet
           | ROLLUP_ LPAREN_ opt_295 RPAREN_
           | CUBE_ LPAREN_ opt_299 RPAREN_
           | GROUPING_ SETS_ LPAREN_ groupingSet list_301 RPAREN_

    groupingSet ::= LPAREN_ opt_305 RPAREN_
           | expression

    windowDefinition ::= identifier AS_ LPAREN_ windowSpecification RPAREN_

    windowSpecification ::= opt_306 opt_312 opt_316 opt_317

    namedQuery ::= identifier opt_318 AS_ LPAREN_ query RPAREN_

    setQuantifier ::= DISTINCT_
           | ALL_

    selectItem ::= expression opt_321
           | primaryExpression DOT_ ASTERISK_ opt_323
           | ASTERISK_

    relation ::= relation grp_324
           | sampledRelation

    joinType ::= opt_325
           | grp_326 opt_327

    joinCriteria ::= ON_ booleanExpression
           | USING_ LPAREN_ identifier list_329 RPAREN_

    sampledRelation ::= patternRecognition opt_331

    sampleType ::= BERNOULLI_
           | SYSTEM_

    trimsSpecification ::= LEADING_
           | TRAILING_
           | BOTH_

    listAggOverflowBehavior ::= ERROR_
           | TRUNCATE_ opt_332 listaggCountIndication

    listaggCountIndication ::= grp_333 COUNT_

    patternRecognition ::= aliasedRelation opt_364

    measureDefinition ::= expression AS_ identifier

    rowsPerMatch ::= ONE_ ROW_ PER_ MATCH_
           | ALL_ ROWS_ PER_ MATCH_ opt_365

    emptyMatchHandling ::= SHOW_ EMPTY_ MATCHES_
           | OMIT_ EMPTY_ MATCHES_
           | WITH_ UNMATCHED_ ROWS_

    skipTo ::= SKIP_ grp_366

    subsetDefinition ::= identifier EQ_ LPAREN_ list_370 identifier list_373 RPAREN_

    variableDefinition ::= identifier AS_ expression

    aliasedRelation ::= relationPrimary opt_377

    columnAliases ::= LPAREN_ identifier list_379 RPAREN_

    relationPrimary ::= qualifiedName opt_380
           | LPAREN_ query RPAREN_
           | UNNEST_ LPAREN_ expression list_382 RPAREN_ opt_384
           | LATERAL_ LPAREN_ query RPAREN_
           | TABLE_ LPAREN_ tableFunctionCall RPAREN_
           | LPAREN_ relation RPAREN_

    tableFunctionCall ::= qualifiedName LPAREN_ opt_388 opt_392 RPAREN_

    tableFunctionArgument ::= opt_394 grp_395

    tableArgument ::= tableArgumentRelation opt_402 opt_404 opt_409

    tableArgumentRelation ::= TABLE_ LPAREN_ qualifiedName RPAREN_ opt_413
           | TABLE_ LPAREN_ query RPAREN_ opt_417

    descriptorArgument ::= DESCRIPTOR_ LPAREN_ descriptorField list_419 RPAREN_
           | CAST_ LPAREN_ NULL_ AS_ DESCRIPTOR_ RPAREN_

    descriptorField ::= identifier opt_420

    copartitionTables ::= LPAREN_ qualifiedName COMMA_ qualifiedName list_422 RPAREN_

    expression ::= booleanExpression

    booleanExpression ::= valueExpression opt_423
           | NOT_ booleanExpression
           | booleanExpression AND_ booleanExpression
           | booleanExpression OR_ booleanExpression

    predicate_ ::= comparisonOperator valueExpression
           | comparisonOperator comparisonQuantifier LPAREN_ query RPAREN_
           | opt_424 BETWEEN_ valueExpression AND_ valueExpression
           | opt_425 IN_ LPAREN_ expression list_427 RPAREN_
           | opt_428 IN_ LPAREN_ query RPAREN_
           | opt_429 LIKE_ valueExpression opt_431
           | IS_ opt_432 NULL_
           | IS_ opt_433 DISTINCT_ FROM_ valueExpression

    valueExpression ::= primaryExpression
           | valueExpression AT_ timeZoneSpecifier
           | grp_434 valueExpression
           | valueExpression grp_435 valueExpression
           | valueExpression grp_436 valueExpression
           | valueExpression CONCAT_ valueExpression

    primaryExpression ::= NULL_
           | interval
           | identifier string_
           | DOUBLE_ PRECISION_ string_
           | number
           | booleanValue
           | string_
           | BINARY_LITERAL_
           | QUESTION_MARK_
           | POSITION_ LPAREN_ valueExpression IN_ valueExpression RPAREN_
           | LPAREN_ expression list_438 RPAREN_
           | ROW_ LPAREN_ expression list_440 RPAREN_
           | LISTAGG_ LPAREN_ opt_441 expression opt_443 opt_445 RPAREN_ seq_448 opt_449
           | opt_450 qualifiedName LPAREN_ opt_452 ASTERISK_ RPAREN_ opt_453 opt_454
           | opt_455 qualifiedName LPAREN_ opt_460 opt_464 RPAREN_ opt_465 opt_468
           | identifier over
           | identifier RARROW_ expression
           | LPAREN_ opt_472 RPAREN_ RARROW_ expression
           | LPAREN_ query RPAREN_
           | EXISTS_ LPAREN_ query RPAREN_
           | CASE_ expression list_473 opt_475 END_
           | CASE_ list_476 opt_478 END_
           | CAST_ LPAREN_ expression AS_ type RPAREN_
           | TRY_CAST_ LPAREN_ expression AS_ type RPAREN_
           | ARRAY_ LSQUARE_ opt_482 RSQUARE_
           | primaryExpression LSQUARE_ valueExpression RSQUARE_
           | identifier
           | primaryExpression DOT_ identifier
           | CURRENT_DATE_
           | CURRENT_TIME_ opt_484
           | CURRENT_TIMESTAMP_ opt_486
           | LOCALTIME_ opt_488
           | LOCALTIMESTAMP_ opt_490
           | CURRENT_USER_
           | CURRENT_CATALOG_
           | CURRENT_SCHEMA_
           | CURRENT_PATH_
           | TRIM_ LPAREN_ opt_494 valueExpression RPAREN_
           | TRIM_ LPAREN_ valueExpression COMMA_ valueExpression RPAREN_
           | SUBSTRING_ LPAREN_ valueExpression FROM_ valueExpression opt_496 RPAREN_
           | NORMALIZE_ LPAREN_ valueExpression opt_498 RPAREN_
           | EXTRACT_ LPAREN_ identifier FROM_ valueExpression RPAREN_
           | LPAREN_ expression RPAREN_
           | GROUPING_ LPAREN_ opt_502 RPAREN_
           | JSON_EXISTS_ LPAREN_ jsonPathInvocation opt_504 RPAREN_
           | JSON_VALUE_ LPAREN_ jsonPathInvocation opt_506 opt_508 opt_510 RPAREN_
           | JSON_QUERY_ LPAREN_ jsonPathInvocation opt_514 opt_516 opt_521 opt_523 opt_525 RPAREN_
           | JSON_OBJECT_ LPAREN_ opt_535 opt_539 RPAREN_
           | JSON_ARRAY_ LPAREN_ opt_545 opt_549 RPAREN_

    jsonPathInvocation ::= jsonValueExpression COMMA_ string_ opt_553

    jsonValueExpression ::= expression opt_555

    jsonRepresentation ::= JSON_ opt_558

    jsonArgument ::= jsonValueExpression AS_ identifier

    jsonExistsErrorBehavior ::= TRUE_
           | FALSE_
           | UNKNOWN_
           | ERROR_

    jsonValueBehavior ::= ERROR_
           | NULL_
           | DEFAULT_ expression

    jsonQueryWrapperBehavior ::= WITHOUT_ opt_559
           | WITH_ opt_561 opt_562

    jsonQueryBehavior ::= ERROR_
           | NULL_
           | EMPTY_ grp_563

    jsonObjectMember ::= opt_564 expression VALUE_ jsonValueExpression
           | expression COLON_ jsonValueExpression

    processingMode ::= RUNNING_
           | FINAL_

    nullTreatment ::= IGNORE_ NULLS_
           | RESPECT_ NULLS_

    string_ ::= STRING_
           | UNICODE_STRING_ opt_566

    timeZoneSpecifier ::= TIME_ ZONE_ interval
           | TIME_ ZONE_ string_

    comparisonOperator ::= EQ_
           | NEQ_
           | LT_
           | LTE_
           | GT_
           | GTE_

    comparisonQuantifier ::= ALL_
           | SOME_
           | ANY_

    booleanValue ::= TRUE_
           | FALSE_

    interval ::= INTERVAL_ opt_568 string_ intervalField opt_570

    intervalField ::= YEAR_
           | MONTH_
           | DAY_
           | HOUR_
           | MINUTE_
           | SECOND_

    normalForm ::= NFD_
           | NFC_
           | NFKD_
           | NFKC_

    type ::= ROW_ LPAREN_ rowField list_572 RPAREN_
           | INTERVAL_ intervalField opt_574
           | TIMESTAMP_ opt_576 opt_578
           | TIMESTAMP_ opt_580 WITH_ TIME_ ZONE_
           | TIME_ opt_582 opt_584
           | TIME_ opt_586 WITH_ TIME_ ZONE_
           | DOUBLE_ PRECISION_
           | ARRAY_ LT_ type GT_
           | MAP_ LT_ type COMMA_ type GT_
           | type ARRAY_ opt_588
           | identifier opt_592

    rowField ::= type
           | identifier type

    typeParameter ::= INTEGER_VALUE_
           | type

    whenClause ::= WHEN_ expression THEN_ expression

    filter ::= FILTER_ LPAREN_ WHERE_ booleanExpression RPAREN_

    mergeCase ::= WHEN_ MATCHED_ opt_594 THEN_ UPDATE_ SET_ list_595 identifier EQ_ list_596 expression list_600
           | WHEN_ MATCHED_ opt_602 THEN_ DELETE_
           | WHEN_ NOT_ MATCHED_ opt_604 THEN_ INSERT_ opt_610 VALUES_ LPAREN_ list_611 expression list_614 RPAREN_

    over ::= OVER_ grp_615

    windowFrame ::= opt_619 frameExtent opt_621 opt_623 opt_625 opt_629 opt_633

    frameExtent ::= RANGE_ frameBound
           | ROWS_ frameBound
           | GROUPS_ frameBound
           | RANGE_ BETWEEN_ frameBound AND_ frameBound
           | ROWS_ BETWEEN_ frameBound AND_ frameBound
           | GROUPS_ BETWEEN_ frameBound AND_ frameBound

    frameBound ::= UNBOUNDED_ PRECEDING_
           | UNBOUNDED_ FOLLOWING_
           | CURRENT_ ROW_
           | expression grp_634

    rowPattern ::= patternPrimary opt_635
           | rowPattern rowPattern
           | rowPattern VBAR_ rowPattern

    patternPrimary ::= identifier
           | LPAREN_ RPAREN_
           | PERMUTE_ LPAREN_ rowPattern list_637 RPAREN_
           | LPAREN_ rowPattern RPAREN_
           | CARET_
           | DOLLAR_
           | LCURLYHYPHEN_ rowPattern RCURLYHYPHEN_

    patternQuantifier ::= ASTERISK_ opt_638
           | PLUS_ opt_639
           | QUESTION_MARK_ opt_640
           | LCURLY_ INTEGER_VALUE_ RCURLY_ opt_641
           | LCURLY_ opt_642 COMMA_ opt_643 RCURLY_ opt_644

    updateAssignment ::= identifier EQ_ expression

    explainOption ::= FORMAT_ grp_645
           | TYPE_ grp_646

    transactionMode ::= ISOLATION_ LEVEL_ levelOfIsolation
           | READ_ grp_647

    levelOfIsolation ::= READ_ UNCOMMITTED_
           | READ_ COMMITTED_
           | REPEATABLE_ READ_
           | SERIALIZABLE_

    callArgument ::= expression
           | identifier RDOUBLEARROW_ expression

    pathElement ::= identifier DOT_ identifier
           | identifier

    pathSpecification ::= pathElement list_649

    functionSpecification ::= FUNCTION_ functionDeclaration returnsClause list_650 controlStatement

    functionDeclaration ::= qualifiedName LPAREN_ opt_654 RPAREN_

    parameterDeclaration ::= opt_655 type

    returnsClause ::= RETURNS_ type

    routineCharacteristic ::= LANGUAGE_ identifier
           | opt_656 DETERMINISTIC_
           | RETURNS_ NULL_ ON_ NULL_ INPUT_
           | CALLED_ ON_ NULL_ INPUT_
           | SECURITY_ grp_657
           | COMMENT_ string_

    controlStatement ::= RETURN_ valueExpression
           | SET_ identifier EQ_ expression
           | CASE_ expression list_658 opt_659 END_ CASE_
           | CASE_ list_660 opt_661 END_ CASE_
           | IF_ expression THEN_ sqlStatementList list_662 opt_663 END_ IF_
           | ITERATE_ identifier
           | LEAVE_ identifier
           | BEGIN_ list_665 opt_666 END_
           | opt_668 LOOP_ sqlStatementList END_ LOOP_
           | opt_670 WHILE_ expression DO_ sqlStatementList END_ WHILE_
           | opt_672 REPEAT_ sqlStatementList UNTIL_ expression END_ REPEAT_

    caseStatementWhenClause ::= WHEN_ expression THEN_ sqlStatementList

    elseIfClause ::= ELSEIF_ expression THEN_ sqlStatementList

    elseClause ::= ELSE_ sqlStatementList

    variableDeclaration ::= DECLARE_ identifier list_674 type opt_676

    sqlStatementList ::= list_678

    privilege ::= CREATE_
           | SELECT_
           | DELETE_
           | INSERT_
           | UPDATE_

    qualifiedName ::= identifier list_680

    queryPeriod ::= FOR_ rangeType AS_ OF_ valueExpression

    rangeType ::= TIMESTAMP_
           | VERSION_

    grantor ::= principal
           | CURRENT_USER_
           | CURRENT_ROLE_

    principal ::= identifier
           | USER_ identifier
           | ROLE_ identifier

    roles ::= identifier list_682

    identifier ::= IDENTIFIER_
           | QUOTED_IDENTIFIER_
           | nonReserved
           | BACKQUOTED_IDENTIFIER_
           | DIGIT_IDENTIFIER_

    number ::= opt_683 DECIMAL_VALUE_
           | opt_684 DOUBLE_VALUE_
           | opt_685 INTEGER_VALUE_

    authorizationUser ::= identifier
           | string_

    nonReserved ::= ABSENT_
           | ADD_
           | ADMIN_
           | AFTER_
           | ALL_
           | ANALYZE_
           | ANY_
           | ARRAY_
           | ASC_
           | AT_
           | AUTHORIZATION_
           | BEGIN_
           | BERNOULLI_
           | BOTH_
           | CALL_
           | CALLED_
           | CASCADE_
           | CATALOG_
           | CATALOGS_
           | COLUMN_
           | COLUMNS_
           | COMMENT_
           | COMMIT_
           | COMMITTED_
           | CONDITIONAL_
           | COPARTITION_
           | COUNT_
           | CURRENT_
           | DATA_
           | DATE_
           | DAY_
           | DECLARE_
           | DEFAULT_
           | DEFINE_
           | DEFINER_
           | DENY_
           | DESC_
           | DESCRIPTOR_
           | DETERMINISTIC_
           | DISTRIBUTED_
           | DO_
           | DOUBLE_
           | ELSEIF_
           | EMPTY_
           | ENCODING_
           | ERROR_
           | EXCLUDING_
           | EXPLAIN_
           | FETCH_
           | FILTER_
           | FINAL_
           | FIRST_
           | FOLLOWING_
           | FORMAT_
           | FUNCTION_
           | FUNCTIONS_
           | GRACE_
           | GRANT_
           | GRANTED_
           | GRANTS_
           | GRAPHVIZ_
           | GROUPS_
           | HOUR_
           | IF_
           | IGNORE_
           | IMMEDIATE_
           | INCLUDING_
           | INITIAL_
           | INPUT_
           | INTERVAL_
           | INVOKER_
           | IO_
           | ITERATE_
           | ISOLATION_
           | JSON_
           | KEEP_
           | KEY_
           | KEYS_
           | LANGUAGE_
           | LAST_
           | LATERAL_
           | LEADING_
           | LEAVE_
           | LEVEL_
           | LIMIT_
           | LOCAL_
           | LOGICAL_
           | LOOP_
           | MAP_
           | MATCH_
           | MATCHED_
           | MATCHES_
           | MATCH_RECOGNIZE_
           | MATERIALIZED_
           | MEASURES_
           | MERGE_
           | MINUTE_
           | MONTH_
           | NESTED_
           | NEXT_
           | NFC_
           | NFD_
           | NFKC_
           | NFKD_
           | NO_
           | NONE_
           | NULLIF_
           | NULLS_
           | OBJECT_
           | OF_
           | OFFSET_
           | OMIT_
           | ONE_
           | ONLY_
           | OPTION_
           | ORDINALITY_
           | OUTPUT_
           | OVER_
           | OVERFLOW_
           | PARTITION_
           | PARTITIONS_
           | PASSING_
           | PAST_
           | PATH_
           | PATTERN_
           | PER_
           | PERIOD_
           | PERMUTE_
           | PLAN_
           | POSITION_
           | PRECEDING_
           | PRECISION_
           | PRIVILEGES_
           | PROPERTIES_
           | PRUNE_
           | QUOTES_
           | RANGE_
           | READ_
           | REFRESH_
           | RENAME_
           | REPEAT_
           | REPEATABLE_
           | REPLACE_
           | RESET_
           | RESPECT_
           | RESTRICT_
           | RETURN_
           | RETURNING_
           | RETURNS_
           | REVOKE_
           | ROLE_
           | ROLES_
           | ROLLBACK_
           | ROW_
           | ROWS_
           | RUNNING_
           | SCALAR_
           | SCHEMA_
           | SCHEMAS_
           | SECOND_
           | SECURITY_
           | SEEK_
           | SERIALIZABLE_
           | SESSION_
           | SET_
           | SETS_
           | SHOW_
           | SOME_
           | START_
           | STATS_
           | SUBSET_
           | SUBSTRING_
           | SYSTEM_
           | TABLES_
           | TABLESAMPLE_
           | TEXT_
           | TEXT_STRING_
           | TIES_
           | TIME_
           | TIMESTAMP_
           | TO_
           | TRAILING_
           | TRANSACTION_
           | TRUNCATE_
           | TRY_CAST_
           | TYPE_
           | UNBOUNDED_
           | UNCOMMITTED_
           | UNCONDITIONAL_
           | UNIQUE_
           | UNKNOWN_
           | UNMATCHED_
           | UNTIL_
           | UPDATE_
           | USE_
           | USER_
           | UTF16_
           | UTF32_
           | UTF8_
           | VALIDATE_
           | VALUE_
           | VERBOSE_
           | VERSION_
           | VIEW_
           | WHILE_
           | WINDOW_
           | WITHIN_
           | WITHOUT_
           | WORK_
           | WRAPPER_
           | WRITE_
           | YEAR_
           | ZONE_

    list_1 ::= $empty | list_1 statements

    opt_2 ::= SEMICOLON_ | $empty

    seq_3 ::= IF_ NOT_ EXISTS_

    opt_4 ::= seq_3 | $empty

    seq_5 ::= COMMENT_ string_

    opt_6 ::= seq_5 | $empty

    seq_7 ::= AUTHORIZATION_ principal

    opt_8 ::= seq_7 | $empty

    seq_9 ::= WITH_ properties

    opt_10 ::= seq_9 | $empty

    seq_11 ::= IF_ EXISTS_

    opt_12 ::= seq_11 | $empty

    grp_13 ::= CASCADE_ | RESTRICT_

    opt_14 ::= grp_13 | $empty

    seq_15 ::= IF_ NOT_ EXISTS_

    opt_16 ::= seq_15 | $empty

    seq_17 ::= AUTHORIZATION_ principal

    opt_18 ::= seq_17 | $empty

    seq_19 ::= WITH_ properties

    opt_20 ::= seq_19 | $empty

    seq_21 ::= IF_ EXISTS_

    opt_22 ::= seq_21 | $empty

    grp_23 ::= CASCADE_ | RESTRICT_

    opt_24 ::= grp_23 | $empty

    seq_25 ::= OR_ REPLACE_

    opt_26 ::= seq_25 | $empty

    seq_27 ::= IF_ NOT_ EXISTS_

    opt_28 ::= seq_27 | $empty

    opt_29 ::= columnAliases | $empty

    seq_30 ::= COMMENT_ string_

    opt_31 ::= seq_30 | $empty

    seq_32 ::= WITH_ properties

    opt_33 ::= seq_32 | $empty

    grp_34 ::= rootQuery | LPAREN_ rootQuery RPAREN_

    opt_35 ::= NO_ | $empty

    seq_36 ::= WITH_ opt_35 DATA_

    opt_37 ::= seq_36 | $empty

    seq_38 ::= OR_ REPLACE_

    opt_39 ::= seq_38 | $empty

    seq_40 ::= IF_ NOT_ EXISTS_

    opt_41 ::= seq_40 | $empty

    seq_42 ::= COMMA_ tableElement

    list_43 ::= $empty | list_43 seq_42

    seq_44 ::= COMMENT_ string_

    opt_45 ::= seq_44 | $empty

    seq_46 ::= WITH_ properties

    opt_47 ::= seq_46 | $empty

    seq_48 ::= IF_ EXISTS_

    opt_49 ::= seq_48 | $empty

    opt_50 ::= columnAliases | $empty

    seq_51 ::= WHERE_ booleanExpression

    opt_52 ::= seq_51 | $empty

    grp_53 ::= string_ | NULL_

    grp_54 ::= string_ | NULL_

    grp_55 ::= string_ | NULL_

    seq_56 ::= IF_ EXISTS_

    opt_57 ::= seq_56 | $empty

    seq_58 ::= IF_ EXISTS_

    opt_59 ::= seq_58 | $empty

    seq_60 ::= IF_ NOT_ EXISTS_

    opt_61 ::= seq_60 | $empty

    seq_62 ::= IF_ EXISTS_

    opt_63 ::= seq_62 | $empty

    seq_64 ::= IF_ EXISTS_

    opt_65 ::= seq_64 | $empty

    seq_66 ::= IF_ EXISTS_

    opt_67 ::= seq_66 | $empty

    seq_68 ::= IF_ EXISTS_

    opt_69 ::= seq_68 | $empty

    seq_70 ::= IF_ EXISTS_

    opt_71 ::= seq_70 | $empty

    seq_72 ::= COMMA_ callArgument

    list_73 ::= $empty | list_73 seq_72

    seq_74 ::= callArgument list_73

    opt_75 ::= seq_74 | $empty

    seq_76 ::= LPAREN_ opt_75 RPAREN_

    opt_77 ::= seq_76 | $empty

    seq_78 ::= WHERE_ booleanExpression

    opt_79 ::= seq_78 | $empty

    seq_80 ::= WITH_ properties

    opt_81 ::= seq_80 | $empty

    seq_82 ::= OR_ REPLACE_

    opt_83 ::= seq_82 | $empty

    seq_84 ::= IF_ NOT_ EXISTS_

    opt_85 ::= seq_84 | $empty

    seq_86 ::= GRACE_ PERIOD_ interval

    opt_87 ::= seq_86 | $empty

    seq_88 ::= COMMENT_ string_

    opt_89 ::= seq_88 | $empty

    seq_90 ::= WITH_ properties

    opt_91 ::= seq_90 | $empty

    seq_92 ::= OR_ REPLACE_

    opt_93 ::= seq_92 | $empty

    seq_94 ::= COMMENT_ string_

    opt_95 ::= seq_94 | $empty

    grp_97 ::= DEFINER_ | INVOKER_

    grp_96 ::= SECURITY_ grp_97

    opt_98 ::= grp_96 | $empty

    seq_99 ::= IF_ EXISTS_

    opt_100 ::= seq_99 | $empty

    seq_101 ::= IF_ EXISTS_

    opt_102 ::= seq_101 | $empty

    seq_103 ::= IF_ EXISTS_

    opt_104 ::= seq_103 | $empty

    seq_105 ::= COMMA_ callArgument

    list_106 ::= $empty | list_106 seq_105

    seq_107 ::= callArgument list_106

    opt_108 ::= seq_107 | $empty

    seq_109 ::= OR_ REPLACE_

    opt_110 ::= seq_109 | $empty

    seq_111 ::= IF_ EXISTS_

    opt_112 ::= seq_111 | $empty

    seq_113 ::= WITH_ ADMIN_ grantor

    opt_114 ::= seq_113 | $empty

    seq_115 ::= IN_ identifier

    opt_116 ::= seq_115 | $empty

    seq_117 ::= IN_ identifier

    opt_118 ::= seq_117 | $empty

    seq_119 ::= COMMA_ principal

    list_120 ::= $empty | list_120 seq_119

    seq_121 ::= WITH_ ADMIN_ OPTION_

    opt_122 ::= seq_121 | $empty

    seq_123 ::= GRANTED_ BY_ grantor

    opt_124 ::= seq_123 | $empty

    seq_125 ::= IN_ identifier

    opt_126 ::= seq_125 | $empty

    seq_127 ::= ADMIN_ OPTION_ FOR_

    opt_128 ::= seq_127 | $empty

    seq_129 ::= COMMA_ principal

    list_130 ::= $empty | list_130 seq_129

    seq_131 ::= GRANTED_ BY_ grantor

    opt_132 ::= seq_131 | $empty

    seq_133 ::= IN_ identifier

    opt_134 ::= seq_133 | $empty

    grp_135 ::= ALL_ | NONE_ | identifier

    seq_136 ::= IN_ identifier

    opt_137 ::= seq_136 | $empty

    seq_139 ::= COMMA_ privilege

    list_140 ::= $empty | list_140 seq_139

    grp_138 ::= privilege list_140 | ALL_ PRIVILEGES_

    grp_141 ::= SCHEMA_ | TABLE_

    opt_142 ::= grp_141 | $empty

    seq_143 ::= WITH_ GRANT_ OPTION_

    opt_144 ::= seq_143 | $empty

    seq_146 ::= COMMA_ privilege

    list_147 ::= $empty | list_147 seq_146

    grp_145 ::= privilege list_147 | ALL_ PRIVILEGES_

    grp_148 ::= SCHEMA_ | TABLE_

    opt_149 ::= grp_148 | $empty

    seq_150 ::= GRANT_ OPTION_ FOR_

    opt_151 ::= seq_150 | $empty

    seq_153 ::= COMMA_ privilege

    list_154 ::= $empty | list_154 seq_153

    grp_152 ::= privilege list_154 | ALL_ PRIVILEGES_

    grp_155 ::= SCHEMA_ | TABLE_

    opt_156 ::= grp_155 | $empty

    opt_157 ::= TABLE_ | $empty

    seq_158 ::= ON_ opt_157 qualifiedName

    opt_159 ::= seq_158 | $empty

    seq_160 ::= COMMA_ explainOption

    list_161 ::= $empty | list_161 seq_160

    seq_162 ::= LPAREN_ explainOption list_161 RPAREN_

    opt_163 ::= seq_162 | $empty

    opt_164 ::= VERBOSE_ | $empty

    grp_166 ::= FROM_ | IN_

    grp_165 ::= grp_166 qualifiedName

    opt_167 ::= grp_165 | $empty

    seq_168 ::= ESCAPE_ string_

    opt_169 ::= seq_168 | $empty

    seq_170 ::= LIKE_ string_ opt_169

    opt_171 ::= seq_170 | $empty

    grp_173 ::= FROM_ | IN_

    grp_172 ::= grp_173 identifier

    opt_174 ::= grp_172 | $empty

    seq_175 ::= ESCAPE_ string_

    opt_176 ::= seq_175 | $empty

    seq_177 ::= LIKE_ string_ opt_176

    opt_178 ::= seq_177 | $empty

    seq_179 ::= ESCAPE_ string_

    opt_180 ::= seq_179 | $empty

    seq_181 ::= LIKE_ string_ opt_180

    opt_182 ::= seq_181 | $empty

    grp_183 ::= FROM_ | IN_

    opt_184 ::= qualifiedName | $empty

    seq_185 ::= ESCAPE_ string_

    opt_186 ::= seq_185 | $empty

    seq_187 ::= LIKE_ string_ opt_186

    opt_188 ::= seq_187 | $empty

    opt_189 ::= CURRENT_ | $empty

    grp_191 ::= FROM_ | IN_

    grp_190 ::= grp_191 identifier

    opt_192 ::= grp_190 | $empty

    grp_194 ::= FROM_ | IN_

    grp_193 ::= grp_194 identifier

    opt_195 ::= grp_193 | $empty

    grp_197 ::= FROM_ | IN_

    grp_196 ::= grp_197 qualifiedName

    opt_198 ::= grp_196 | $empty

    seq_199 ::= ESCAPE_ string_

    opt_200 ::= seq_199 | $empty

    seq_201 ::= LIKE_ string_ opt_200

    opt_202 ::= seq_201 | $empty

    seq_203 ::= ESCAPE_ string_

    opt_204 ::= seq_203 | $empty

    seq_205 ::= LIKE_ string_ opt_204

    opt_206 ::= seq_205 | $empty

    seq_207 ::= COMMA_ transactionMode

    list_208 ::= $empty | list_208 seq_207

    seq_209 ::= transactionMode list_208

    opt_210 ::= seq_209 | $empty

    opt_211 ::= WORK_ | $empty

    opt_212 ::= WORK_ | $empty

    seq_213 ::= COMMA_ expression

    list_214 ::= $empty | list_214 seq_213

    seq_215 ::= USING_ expression list_214

    opt_216 ::= seq_215 | $empty

    seq_217 ::= COMMA_ expression

    list_218 ::= $empty | list_218 seq_217

    seq_219 ::= USING_ expression list_218

    opt_220 ::= seq_219 | $empty

    grp_221 ::= LOCAL_ | expression

    seq_222 ::= COMMA_ updateAssignment

    list_223 ::= $empty | list_223 seq_222

    seq_224 ::= WHERE_ booleanExpression

    opt_225 ::= seq_224 | $empty

    opt_226 ::= AS_ | $empty

    seq_227 ::= opt_226 identifier

    opt_228 ::= seq_227 | $empty

    list_229 ::= mergeCase | list_229 mergeCase

    opt_230 ::= withFunction | $empty

    seq_231 ::= COMMA_ functionSpecification

    list_232 ::= $empty | list_232 seq_231

    opt_233 ::= with | $empty

    opt_234 ::= RECURSIVE_ | $empty

    seq_235 ::= COMMA_ namedQuery

    list_236 ::= $empty | list_236 seq_235

    seq_237 ::= NOT_ NULL_

    opt_238 ::= seq_237 | $empty

    seq_239 ::= COMMENT_ string_

    opt_240 ::= seq_239 | $empty

    seq_241 ::= WITH_ properties

    opt_242 ::= seq_241 | $empty

    grp_244 ::= INCLUDING_ | EXCLUDING_

    grp_243 ::= grp_244 PROPERTIES_

    opt_245 ::= grp_243 | $empty

    seq_246 ::= COMMA_ property

    list_247 ::= $empty | list_247 seq_246

    seq_248 ::= COMMA_ sortItem

    list_249 ::= $empty | list_249 seq_248

    seq_250 ::= ORDER_ BY_ sortItem list_249

    opt_251 ::= seq_250 | $empty

    grp_253 ::= ROW_ | ROWS_

    opt_254 ::= grp_253 | $empty

    grp_252 ::= OFFSET_ rowCount opt_254

    opt_255 ::= grp_252 | $empty

    grp_257 ::= FIRST_ | NEXT_

    opt_258 ::= rowCount | $empty

    grp_259 ::= ROW_ | ROWS_

    grp_260 ::= ONLY_ | WITH_ TIES_

    grp_256 ::= LIMIT_ limitRowCount | FETCH_ grp_257 opt_258 grp_259 grp_260

    opt_261 ::= grp_256 | $empty

    opt_262 ::= setQuantifier | $empty

    grp_263 ::= UNION_ | EXCEPT_

    opt_264 ::= setQuantifier | $empty

    seq_265 ::= COMMA_ expression

    list_266 ::= $empty | list_266 seq_265

    grp_267 ::= ASC_ | DESC_

    opt_268 ::= grp_267 | $empty

    grp_270 ::= FIRST_ | LAST_

    grp_269 ::= NULLS_ grp_270

    opt_271 ::= grp_269 | $empty

    opt_272 ::= setQuantifier | $empty

    seq_273 ::= COMMA_ selectItem

    list_274 ::= $empty | list_274 seq_273

    seq_275 ::= COMMA_ relation

    list_276 ::= $empty | list_276 seq_275

    seq_277 ::= FROM_ relation list_276

    opt_278 ::= seq_277 | $empty

    seq_279 ::= WHERE_ booleanExpression

    opt_280 ::= seq_279 | $empty

    seq_281 ::= GROUP_ BY_ groupBy

    opt_282 ::= seq_281 | $empty

    seq_283 ::= HAVING_ booleanExpression

    opt_284 ::= seq_283 | $empty

    seq_285 ::= COMMA_ windowDefinition

    list_286 ::= $empty | list_286 seq_285

    seq_287 ::= WINDOW_ windowDefinition list_286

    opt_288 ::= seq_287 | $empty

    opt_289 ::= setQuantifier | $empty

    seq_290 ::= COMMA_ groupingElement

    list_291 ::= $empty | list_291 seq_290

    seq_292 ::= COMMA_ expression

    list_293 ::= $empty | list_293 seq_292

    seq_294 ::= expression list_293

    opt_295 ::= seq_294 | $empty

    seq_296 ::= COMMA_ expression

    list_297 ::= $empty | list_297 seq_296

    seq_298 ::= expression list_297

    opt_299 ::= seq_298 | $empty

    seq_300 ::= COMMA_ groupingSet

    list_301 ::= $empty | list_301 seq_300

    seq_302 ::= COMMA_ expression

    list_303 ::= $empty | list_303 seq_302

    seq_304 ::= expression list_303

    opt_305 ::= seq_304 | $empty

    opt_306 ::= identifier | $empty

    list_307 ::= partition | list_307 partition

    list_308 ::= partition | list_308 partition

    seq_309 ::= COMMA_ list_308 expression

    list_310 ::= $empty | list_310 seq_309

    seq_311 ::= PARTITION_ BY_ list_307 expression list_310

    opt_312 ::= seq_311 | $empty

    seq_313 ::= COMMA_ sortItem

    list_314 ::= $empty | list_314 seq_313

    seq_315 ::= ORDER_ BY_ sortItem list_314

    opt_316 ::= seq_315 | $empty

    opt_317 ::= windowFrame | $empty

    opt_318 ::= columnAliases | $empty

    opt_319 ::= AS_ | $empty

    seq_320 ::= opt_319 identifier

    opt_321 ::= seq_320 | $empty

    seq_322 ::= AS_ columnAliases

    opt_323 ::= seq_322 | $empty

    grp_324 ::= CROSS_ JOIN_ sampledRelation | joinType JOIN_ relation joinCriteria | NATURAL_ joinType JOIN_ sampledRelation

    opt_325 ::= INNER_ | $empty

    grp_326 ::= LEFT_ | RIGHT_ | FULL_

    opt_327 ::= OUTER_ | $empty

    seq_328 ::= COMMA_ identifier

    list_329 ::= $empty | list_329 seq_328

    seq_330 ::= TABLESAMPLE_ sampleType LPAREN_ expression RPAREN_

    opt_331 ::= seq_330 | $empty

    opt_332 ::= string_ | $empty

    grp_333 ::= WITH_ | WITHOUT_

    list_335 ::= partition | list_335 partition

    list_336 ::= partition | list_336 partition

    seq_337 ::= COMMA_ list_336 expression

    list_338 ::= $empty | list_338 seq_337

    seq_339 ::= PARTITION_ BY_ list_335 expression list_338

    opt_340 ::= seq_339 | $empty

    seq_341 ::= COMMA_ sortItem

    list_342 ::= $empty | list_342 seq_341

    seq_343 ::= ORDER_ BY_ sortItem list_342

    opt_344 ::= seq_343 | $empty

    seq_345 ::= COMMA_ measureDefinition

    list_346 ::= $empty | list_346 seq_345

    seq_347 ::= MEASURES_ measureDefinition list_346

    opt_348 ::= seq_347 | $empty

    opt_349 ::= rowsPerMatch | $empty

    seq_350 ::= AFTER_ MATCH_ skipTo

    opt_351 ::= seq_350 | $empty

    grp_352 ::= INITIAL_ | SEEK_

    opt_353 ::= grp_352 | $empty

    seq_354 ::= COMMA_ subsetDefinition

    list_355 ::= $empty | list_355 seq_354

    seq_356 ::= SUBSET_ subsetDefinition list_355

    opt_357 ::= seq_356 | $empty

    seq_358 ::= COMMA_ variableDefinition

    list_359 ::= $empty | list_359 seq_358

    opt_360 ::= AS_ | $empty

    opt_361 ::= columnAliases | $empty

    seq_362 ::= opt_360 identifier opt_361

    opt_363 ::= seq_362 | $empty

    grp_334 ::= MATCH_RECOGNIZE_ LPAREN_ opt_340 opt_344 opt_348 opt_349 opt_351 opt_353 PATTERN_ LPAREN_ rowPattern RPAREN_ opt_357 DEFINE_ variableDefinition list_359 RPAREN_ opt_363

    opt_364 ::= grp_334 | $empty

    opt_365 ::= emptyMatchHandling | $empty

    grp_368 ::= FIRST_ | LAST_

    opt_369 ::= grp_368 | $empty

    grp_367 ::= NEXT_ ROW_ | opt_369 identifier

    grp_366 ::= TO_ grp_367 | PAST_ LAST_ ROW_

    list_370 ::= union | list_370 union

    list_371 ::= union | list_371 union

    seq_372 ::= COMMA_ list_371 identifier

    list_373 ::= $empty | list_373 seq_372

    opt_374 ::= AS_ | $empty

    opt_375 ::= columnAliases | $empty

    seq_376 ::= opt_374 identifier opt_375

    opt_377 ::= seq_376 | $empty

    seq_378 ::= COMMA_ identifier

    list_379 ::= $empty | list_379 seq_378

    opt_380 ::= queryPeriod | $empty

    seq_381 ::= COMMA_ expression

    list_382 ::= $empty | list_382 seq_381

    seq_383 ::= WITH_ ORDINALITY_

    opt_384 ::= seq_383 | $empty

    seq_385 ::= COMMA_ tableFunctionArgument

    list_386 ::= $empty | list_386 seq_385

    seq_387 ::= tableFunctionArgument list_386

    opt_388 ::= seq_387 | $empty

    seq_389 ::= COMMA_ copartitionTables

    list_390 ::= $empty | list_390 seq_389

    seq_391 ::= COPARTITION_ copartitionTables list_390

    opt_392 ::= seq_391 | $empty

    seq_393 ::= identifier RDOUBLEARROW_

    opt_394 ::= seq_393 | $empty

    grp_395 ::= tableArgument | descriptorArgument | expression

    seq_398 ::= COMMA_ expression

    list_399 ::= $empty | list_399 seq_398

    seq_400 ::= expression list_399

    opt_401 ::= seq_400 | $empty

    grp_397 ::= LPAREN_ opt_401 RPAREN_ | expression

    grp_396 ::= PARTITION_ BY_ grp_397

    opt_402 ::= grp_396 | $empty

    grp_403 ::= PRUNE_ WHEN_ EMPTY_ | KEEP_ WHEN_ EMPTY_

    opt_404 ::= grp_403 | $empty

    seq_407 ::= COMMA_ sortItem

    list_408 ::= $empty | list_408 seq_407

    grp_406 ::= LPAREN_ sortItem list_408 RPAREN_ | sortItem

    grp_405 ::= ORDER_ BY_ grp_406

    opt_409 ::= grp_405 | $empty

    opt_410 ::= AS_ | $empty

    opt_411 ::= columnAliases | $empty

    seq_412 ::= opt_410 identifier opt_411

    opt_413 ::= seq_412 | $empty

    opt_414 ::= AS_ | $empty

    opt_415 ::= columnAliases | $empty

    seq_416 ::= opt_414 identifier opt_415

    opt_417 ::= seq_416 | $empty

    seq_418 ::= COMMA_ descriptorField

    list_419 ::= $empty | list_419 seq_418

    opt_420 ::= type | $empty

    seq_421 ::= COMMA_ qualifiedName

    list_422 ::= $empty | list_422 seq_421

    opt_423 ::= predicate_ | $empty

    opt_424 ::= NOT_ | $empty

    opt_425 ::= NOT_ | $empty

    seq_426 ::= COMMA_ expression

    list_427 ::= $empty | list_427 seq_426

    opt_428 ::= NOT_ | $empty

    opt_429 ::= NOT_ | $empty

    seq_430 ::= ESCAPE_ valueExpression

    opt_431 ::= seq_430 | $empty

    opt_432 ::= NOT_ | $empty

    opt_433 ::= NOT_ | $empty

    grp_434 ::= MINUS_ | PLUS_

    grp_435 ::= ASTERISK_ | SLASH_ | PERCENT_

    grp_436 ::= PLUS_ | MINUS_

    seq_437 ::= COMMA_ expression

    list_438 ::= seq_437 | list_438 seq_437

    seq_439 ::= COMMA_ expression

    list_440 ::= $empty | list_440 seq_439

    opt_441 ::= setQuantifier | $empty

    seq_442 ::= COMMA_ string_

    opt_443 ::= seq_442 | $empty

    seq_444 ::= ON_ OVERFLOW_ listAggOverflowBehavior

    opt_445 ::= seq_444 | $empty

    seq_446 ::= COMMA_ sortItem

    list_447 ::= $empty | list_447 seq_446

    seq_448 ::= WITHIN_ GROUP_ LPAREN_ ORDER_ BY_ sortItem list_447 RPAREN_

    opt_449 ::= filter | $empty

    opt_450 ::= processingMode | $empty

    seq_451 ::= identifier DOT_

    opt_452 ::= seq_451 | $empty

    opt_453 ::= filter | $empty

    opt_454 ::= over | $empty

    opt_455 ::= processingMode | $empty

    opt_456 ::= setQuantifier | $empty

    seq_457 ::= COMMA_ expression

    list_458 ::= $empty | list_458 seq_457

    seq_459 ::= opt_456 expression list_458

    opt_460 ::= seq_459 | $empty

    seq_461 ::= COMMA_ sortItem

    list_462 ::= $empty | list_462 seq_461

    seq_463 ::= ORDER_ BY_ sortItem list_462

    opt_464 ::= seq_463 | $empty

    opt_465 ::= filter | $empty

    opt_466 ::= nullTreatment | $empty

    seq_467 ::= opt_466 over

    opt_468 ::= seq_467 | $empty

    seq_469 ::= COMMA_ identifier

    list_470 ::= $empty | list_470 seq_469

    seq_471 ::= identifier list_470

    opt_472 ::= seq_471 | $empty

    list_473 ::= whenClause | list_473 whenClause

    seq_474 ::= ELSE_ expression

    opt_475 ::= seq_474 | $empty

    list_476 ::= whenClause | list_476 whenClause

    seq_477 ::= ELSE_ expression

    opt_478 ::= seq_477 | $empty

    seq_479 ::= COMMA_ expression

    list_480 ::= $empty | list_480 seq_479

    seq_481 ::= expression list_480

    opt_482 ::= seq_481 | $empty

    seq_483 ::= LPAREN_ INTEGER_VALUE_ RPAREN_

    opt_484 ::= seq_483 | $empty

    seq_485 ::= LPAREN_ INTEGER_VALUE_ RPAREN_

    opt_486 ::= seq_485 | $empty

    seq_487 ::= LPAREN_ INTEGER_VALUE_ RPAREN_

    opt_488 ::= seq_487 | $empty

    seq_489 ::= LPAREN_ INTEGER_VALUE_ RPAREN_

    opt_490 ::= seq_489 | $empty

    opt_491 ::= trimsSpecification | $empty

    opt_492 ::= valueExpression | $empty

    seq_493 ::= opt_491 opt_492 FROM_

    opt_494 ::= seq_493 | $empty

    seq_495 ::= FOR_ valueExpression

    opt_496 ::= seq_495 | $empty

    seq_497 ::= COMMA_ normalForm

    opt_498 ::= seq_497 | $empty

    seq_499 ::= COMMA_ qualifiedName

    list_500 ::= $empty | list_500 seq_499

    seq_501 ::= qualifiedName list_500

    opt_502 ::= seq_501 | $empty

    seq_503 ::= jsonExistsErrorBehavior ON_ ERROR_

    opt_504 ::= seq_503 | $empty

    seq_505 ::= RETURNING_ type

    opt_506 ::= seq_505 | $empty

    seq_507 ::= jsonValueBehavior ON_ EMPTY_

    opt_508 ::= seq_507 | $empty

    seq_509 ::= jsonValueBehavior ON_ ERROR_

    opt_510 ::= seq_509 | $empty

    seq_511 ::= FORMAT_ jsonRepresentation

    opt_512 ::= seq_511 | $empty

    seq_513 ::= RETURNING_ type opt_512

    opt_514 ::= seq_513 | $empty

    seq_515 ::= jsonQueryWrapperBehavior WRAPPER_

    opt_516 ::= seq_515 | $empty

    grp_518 ::= KEEP_ | OMIT_

    seq_519 ::= ON_ SCALAR_ TEXT_STRING_

    opt_520 ::= seq_519 | $empty

    grp_517 ::= grp_518 QUOTES_ opt_520

    opt_521 ::= grp_517 | $empty

    seq_522 ::= jsonQueryBehavior ON_ EMPTY_

    opt_523 ::= seq_522 | $empty

    seq_524 ::= jsonQueryBehavior ON_ ERROR_

    opt_525 ::= seq_524 | $empty

    seq_527 ::= COMMA_ jsonObjectMember

    list_528 ::= $empty | list_528 seq_527

    grp_529 ::= NULL_ ON_ NULL_ | ABSENT_ ON_ NULL_

    opt_530 ::= grp_529 | $empty

    opt_532 ::= KEYS_ | $empty

    opt_533 ::= KEYS_ | $empty

    grp_531 ::= WITH_ UNIQUE_ opt_532 | WITHOUT_ UNIQUE_ opt_533

    opt_534 ::= grp_531 | $empty

    grp_526 ::= jsonObjectMember list_528 opt_530 opt_534

    opt_535 ::= grp_526 | $empty

    seq_536 ::= FORMAT_ jsonRepresentation

    opt_537 ::= seq_536 | $empty

    seq_538 ::= RETURNING_ type opt_537

    opt_539 ::= seq_538 | $empty

    seq_541 ::= COMMA_ jsonValueExpression

    list_542 ::= $empty | list_542 seq_541

    grp_543 ::= NULL_ ON_ NULL_ | ABSENT_ ON_ NULL_

    opt_544 ::= grp_543 | $empty

    grp_540 ::= jsonValueExpression list_542 opt_544

    opt_545 ::= grp_540 | $empty

    seq_546 ::= FORMAT_ jsonRepresentation

    opt_547 ::= seq_546 | $empty

    seq_548 ::= RETURNING_ type opt_547

    opt_549 ::= seq_548 | $empty

    seq_550 ::= COMMA_ jsonArgument

    list_551 ::= $empty | list_551 seq_550

    seq_552 ::= PASSING_ jsonArgument list_551

    opt_553 ::= seq_552 | $empty

    seq_554 ::= FORMAT_ jsonRepresentation

    opt_555 ::= seq_554 | $empty

    grp_557 ::= UTF8_ | UTF16_ | UTF32_

    grp_556 ::= ENCODING_ grp_557

    opt_558 ::= grp_556 | $empty

    opt_559 ::= ARRAY_ | $empty

    grp_560 ::= CONDITIONAL_ | UNCONDITIONAL_

    opt_561 ::= grp_560 | $empty

    opt_562 ::= ARRAY_ | $empty

    grp_563 ::= ARRAY_ | OBJECT_

    opt_564 ::= KEY_ | $empty

    seq_565 ::= UESCAPE_ STRING_

    opt_566 ::= seq_565 | $empty

    grp_567 ::= PLUS_ | MINUS_

    opt_568 ::= grp_567 | $empty

    seq_569 ::= TO_ intervalField

    opt_570 ::= seq_569 | $empty

    seq_571 ::= COMMA_ rowField

    list_572 ::= $empty | list_572 seq_571

    seq_573 ::= TO_ intervalField

    opt_574 ::= seq_573 | $empty

    seq_575 ::= LPAREN_ typeParameter RPAREN_

    opt_576 ::= seq_575 | $empty

    seq_577 ::= WITHOUT_ TIME_ ZONE_

    opt_578 ::= seq_577 | $empty

    seq_579 ::= LPAREN_ typeParameter RPAREN_

    opt_580 ::= seq_579 | $empty

    seq_581 ::= LPAREN_ typeParameter RPAREN_

    opt_582 ::= seq_581 | $empty

    seq_583 ::= WITHOUT_ TIME_ ZONE_

    opt_584 ::= seq_583 | $empty

    seq_585 ::= LPAREN_ typeParameter RPAREN_

    opt_586 ::= seq_585 | $empty

    seq_587 ::= LSQUARE_ INTEGER_VALUE_ RSQUARE_

    opt_588 ::= seq_587 | $empty

    seq_589 ::= COMMA_ typeParameter

    list_590 ::= $empty | list_590 seq_589

    seq_591 ::= LPAREN_ typeParameter list_590 RPAREN_

    opt_592 ::= seq_591 | $empty

    seq_593 ::= AND_ expression

    opt_594 ::= seq_593 | $empty

    list_595 ::= targets | list_595 targets

    list_596 ::= values | list_596 values

    list_597 ::= targets | list_597 targets

    list_598 ::= values | list_598 values

    seq_599 ::= COMMA_ list_597 identifier EQ_ list_598 expression

    list_600 ::= $empty | list_600 seq_599

    seq_601 ::= AND_ expression

    opt_602 ::= seq_601 | $empty

    seq_603 ::= AND_ expression

    opt_604 ::= seq_603 | $empty

    list_605 ::= targets | list_605 targets

    list_606 ::= targets | list_606 targets

    seq_607 ::= COMMA_ list_606 identifier

    list_608 ::= $empty | list_608 seq_607

    seq_609 ::= LPAREN_ list_605 identifier list_608 RPAREN_

    opt_610 ::= seq_609 | $empty

    list_611 ::= values | list_611 values

    list_612 ::= values | list_612 values

    seq_613 ::= COMMA_ list_612 expression

    list_614 ::= $empty | list_614 seq_613

    grp_615 ::= identifier | LPAREN_ windowSpecification RPAREN_

    seq_616 ::= COMMA_ measureDefinition

    list_617 ::= $empty | list_617 seq_616

    seq_618 ::= MEASURES_ measureDefinition list_617

    opt_619 ::= seq_618 | $empty

    seq_620 ::= AFTER_ MATCH_ skipTo

    opt_621 ::= seq_620 | $empty

    grp_622 ::= INITIAL_ | SEEK_

    opt_623 ::= grp_622 | $empty

    seq_624 ::= PATTERN_ LPAREN_ rowPattern RPAREN_

    opt_625 ::= seq_624 | $empty

    seq_626 ::= COMMA_ subsetDefinition

    list_627 ::= $empty | list_627 seq_626

    seq_628 ::= SUBSET_ subsetDefinition list_627

    opt_629 ::= seq_628 | $empty

    seq_630 ::= COMMA_ variableDefinition

    list_631 ::= $empty | list_631 seq_630

    seq_632 ::= DEFINE_ variableDefinition list_631

    opt_633 ::= seq_632 | $empty

    grp_634 ::= PRECEDING_ | FOLLOWING_

    opt_635 ::= patternQuantifier | $empty

    seq_636 ::= COMMA_ rowPattern

    list_637 ::= $empty | list_637 seq_636

    opt_638 ::= QUESTION_MARK_ | $empty

    opt_639 ::= QUESTION_MARK_ | $empty

    opt_640 ::= QUESTION_MARK_ | $empty

    opt_641 ::= QUESTION_MARK_ | $empty

    opt_642 ::= INTEGER_VALUE_ | $empty

    opt_643 ::= INTEGER_VALUE_ | $empty

    opt_644 ::= QUESTION_MARK_ | $empty

    grp_645 ::= TEXT_ | GRAPHVIZ_ | JSON_

    grp_646 ::= LOGICAL_ | DISTRIBUTED_ | VALIDATE_ | IO_

    grp_647 ::= ONLY_ | WRITE_

    seq_648 ::= COMMA_ pathElement

    list_649 ::= $empty | list_649 seq_648

    list_650 ::= $empty | list_650 routineCharacteristic

    seq_651 ::= COMMA_ parameterDeclaration

    list_652 ::= $empty | list_652 seq_651

    seq_653 ::= parameterDeclaration list_652

    opt_654 ::= seq_653 | $empty

    opt_655 ::= identifier | $empty

    opt_656 ::= NOT_ | $empty

    grp_657 ::= DEFINER_ | INVOKER_

    list_658 ::= caseStatementWhenClause | list_658 caseStatementWhenClause

    opt_659 ::= elseClause | $empty

    list_660 ::= caseStatementWhenClause | list_660 caseStatementWhenClause

    opt_661 ::= elseClause | $empty

    list_662 ::= $empty | list_662 elseIfClause

    opt_663 ::= elseClause | $empty

    seq_664 ::= variableDeclaration SEMICOLON_

    list_665 ::= $empty | list_665 seq_664

    opt_666 ::= sqlStatementList | $empty

    seq_667 ::= identifier COLON_

    opt_668 ::= seq_667 | $empty

    seq_669 ::= identifier COLON_

    opt_670 ::= seq_669 | $empty

    seq_671 ::= identifier COLON_

    opt_672 ::= seq_671 | $empty

    seq_673 ::= COMMA_ identifier

    list_674 ::= $empty | list_674 seq_673

    seq_675 ::= DEFAULT_ valueExpression

    opt_676 ::= seq_675 | $empty

    seq_677 ::= controlStatement SEMICOLON_

    list_678 ::= seq_677 | list_678 seq_677

    seq_679 ::= DOT_ identifier

    list_680 ::= $empty | list_680 seq_679

    seq_681 ::= COMMA_ identifier

    list_682 ::= $empty | list_682 seq_681

    opt_683 ::= MINUS_ | $empty

    opt_684 ::= MINUS_ | $empty

    opt_685 ::= MINUS_ | $empty

%End
