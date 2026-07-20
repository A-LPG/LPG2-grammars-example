-- AUTO-GENERATED from antlr/grammars-v4 informix by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack,ebnf
%Options fp=InformixParser
%options package=lpg.grammars.informix
%options template=btParserTemplateF.gi
%options import_terminals=InformixLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End


%Define
    $ast_class /.Object./
    $ast_type /.Object./
%End

%Start
    compilation_unit
%End

%Rules
    compilation_unit ::= opt_1 opt_2 opt_3 mainBlock opt_4

    identifier ::= IDENT

    mainBlock ::= opt_5 MAIN eol opt_6 opt_7 END MAIN eol

    mainStatements ::= list_9

    deferStatement ::= DEFER grp_10 eol

    functionOrReportDefinitions ::= list_12

    returnStatement ::= RETURN opt_13

    functionDefinition ::= FUNCTION functionIdentifier opt_14 eol typeDeclarations opt_15 END FUNCTION eol

    parameterList ::= LPAREN list_16 RPAREN

    parameterGroup ::= identifier list_18

    globalDeclaration ::= GLOBALS grp_19 eol

    typeDeclarations ::= list_20

    typeDeclaration ::= DEFINE variableDeclaration list_22

    variableDeclaration ::= constantIdentifier list_24 type_
           | constantIdentifier type_ list_26

    type_ ::= typeIdentifier
           | indirectType
           | largeType
           | structuredType

    indirectType ::= LIKE tableIdentifier DOT identifier

    typeIdentifier ::= charType
           | numberType
           | timeType

    largeType ::= TEXT
           | BYTE

    numberType ::= grp_27
           | grp_28 opt_32
           | grp_33 opt_35

    charType ::= grp_36 LPAREN numericConstant opt_38 RPAREN
           | grp_39 opt_41

    timeType ::= DATE
           | DATETIME datetimeQualifier
           | INTERVAL intervalQualifier

    datetimeQualifier ::= YEAR TO yearQualifier
           | MONTH TO monthQualifier
           | DAY TO dayQualifier
           | HOUR TO hourQualifier
           | MINUTE TO minuteQualifier
           | SECOND TO secondQualifier
           | FRACTION TO fractionQualifier

    intervalQualifier ::= YEAR opt_43 TO yearQualifier
           | MONTH opt_45 TO monthQualifier
           | DAY opt_47 TO dayQualifier
           | HOUR opt_49 TO hourQualifier
           | MINUTE opt_51 TO minuteQualifier
           | SECOND opt_53 TO secondQualifier
           | FRACTION TO fractionQualifier

    unitType ::= yearQualifier

    yearQualifier ::= YEAR
           | monthQualifier

    monthQualifier ::= MONTH
           | dayQualifier

    dayQualifier ::= DAY
           | hourQualifier

    hourQualifier ::= HOUR
           | minuteQualifier

    minuteQualifier ::= MINUTE
           | secondQualifier

    secondQualifier ::= SECOND
           | fractionQualifier

    fractionQualifier ::= FRACTION opt_55

    structuredType ::= recordType
           | arrayType
           | dynArrayType

    recordType ::= RECORD grp_56

    arrayIndexer ::= LBRACK numericConstant opt_62 RBRACK

    arrayType ::= ARRAY arrayIndexer OF grp_63

    dynArrayType ::= DYNAMIC ARRAY WITH numericConstant DIMENSIONS OF grp_64

    string ::= STRING_LITERAL

    statement ::= opt_66 unlabelledStatement

    codeBlock ::= list_68

    label ::= identifier

    unlabelledStatement ::= simpleStatement
           | structuredStatement

    simpleStatement ::= assignmentStatement
           | procedureStatement
           | sqlStatements opt_69
           | otherFGLStatement
           | menuInsideStatement
           | constructInsideStatement
           | displayInsideStatement
           | inputInsideStatement

    runStatement ::= RUN grp_70 opt_72 opt_74

    assignmentStatement ::= LET variable EQUAL expression list_76

    procedureStatement ::= CALL procedureIdentifier opt_82 opt_86

    procedureIdentifier ::= functionIdentifier

    actualParameter ::= STAR
           | expression

    gotoStatement ::= GOTO opt_87 label eol

    condition ::= grp_88
           | logicalTerm list_90

    logicalTerm ::= logicalFactor list_92

    logicalFactor ::= seq_94 sqlExpression opt_95 LIKE sqlExpression opt_97
           | seq_99 sqlExpression opt_100 BETWEEN sqlExpression AND sqlExpression
           | seq_102 sqlExpression IS opt_103 NULL_
           | quantifiedFactor quantifiedFactor
           | seq_104 NOT condition
           | LPAREN condition RPAREN
           | sqlExpression relationalOperator sqlExpression

    quantifiedFactor ::= grp_105 sqlExpression relationalOperator opt_109 subquery
           | seq_111 opt_112 EXISTS subquery
           | subquery

    expressionSet ::= sqlExpression sqlExpression
           | subquery

    subquery ::= LPAREN sqlSelectStatement RPAREN

    sqlExpression ::= sqlTerm list_115

    sqlAlias ::= opt_116 identifier

    sqlTerm ::= sqlFactor list_119

    sqlMultiply ::= STAR

    sqlFactor ::= sqlFactor2 list_121

    sqlFactor2 ::= seq_124 sqlVariable opt_126
           | seq_129 sqlLiteral opt_131
           | grp_132 groupFunction LPAREN opt_140 opt_144 RPAREN
           | seq_148 sqlFunction seq_151
           | grp_152 grp_154 sqlExpression
           | seq_155 LPAREN sqlExpression RPAREN
           | sqlExpressionList

    sqlExpressionList ::= LPAREN sqlExpression list_157 RPAREN

    sqlLiteral ::= unsignedConstant
           | string
           | NULL_
           | FALSE
           | TRUE

    sqlVariable ::= columnsTableId columnsTableId

    sqlFunction ::= numberFunction
           | charFunction
           | dateFunction
           | otherFunction

    dateFunction ::= YEAR
           | DATE
           | DAY
           | MONTH

    numberFunction ::= MOD

    charFunction ::= LENGTH

    groupFunction ::= AVG
           | COUNT
           | MAX
           | MIN
           | SUM

    otherFunction ::= grp_158
           | constantIdentifier

    sqlPseudoColumn ::= USER

    relationalOperator ::= EQUAL
           | NOT_EQUAL
           | LE
           | LT
           | GE
           | GT
           | LIKE
           | opt_159 MATCHES

    ifCondition ::= TRUE
           | FALSE
           | ifCondition2 list_161

    ifCondition2 ::= ifLogicalTerm list_163

    ifLogicalTerm ::= ifLogicalFactor list_165

    expression ::= simpleExpression list_167

    ifLogicalFactor ::= seq_168 NOT ifCondition
           | LPAREN ifCondition RPAREN
           | simpleExpression simpleExpression

    simpleExpression ::= opt_169 term list_171

    addingOperator ::= PLUS
           | MINUS

    term ::= factor list_173

    multiplyingOperator ::= STAR
           | SLASH
           | DIV
           | MOD

    factor ::= grp_174 opt_177

    functionDesignator ::= functionIdentifier opt_183

    functionIdentifier ::= grp_184
           | constantIdentifier

    unsignedConstant ::= unsignedNumber
           | string
           | constantIdentifier
           | NULL_

    constant ::= numericConstant
           | constantIdentifier
           | sign identifier
           | string

    numericConstant ::= unsignedNumber
           | sign unsignedNumber

    variable ::= entireVariable
           | componentVariable

    entireVariable ::= variableIdentifier

    variableIdentifier ::= constantIdentifier

    indexingVariable ::= LBRACK expression list_186 RBRACK

    componentVariable ::= seq_188 opt_195

    recordVariable ::= constantIdentifier

    fieldIdentifier ::= constantIdentifier

    structuredStatement ::= conditionalStatement
           | repetetiveStatement

    conditionalStatement ::= ifStatement
           | caseStatement

    ifStatement ::= IF ifCondition THEN opt_196 opt_199 END IF

    repetetiveStatement ::= whileStatement
           | forEachStatement
           | forStatement

    whileStatement ::= WHILE ifCondition opt_200 END WHILE

    forStatement ::= FOR controlVariable EQUAL forList opt_202 eol opt_203 END FOR eol

    forList ::= initialValue TO finalValue

    controlVariable ::= identifier

    initialValue ::= expression

    finalValue ::= expression

    forEachStatement ::= FOREACH identifier opt_205 opt_207 opt_209 eol opt_210 END FOREACH eol

    variableList ::= variable list_212

    variableOrConstantList ::= expression list_214

    caseStatement ::= CASE expression list_217 opt_220 END CASE
           | CASE list_222 opt_224 END CASE

    otherFGLStatement ::= otherProgramFlowStatement
           | otherStorageStatement
           | reportStatement
           | screenStatement

    otherProgramFlowStatement ::= runStatement
           | gotoStatement
           | SLEEP expression
           | exitStatements
           | continueStatements
           | returnStatement

    exitTypes ::= FOREACH
           | FOR
           | CASE
           | CONSTRUCT
           | DISPLAY
           | INPUT
           | MENU
           | REPORT
           | WHILE

    exitStatements ::= EXIT exitTypes
           | EXIT PROGRAM opt_226

    continueStatements ::= CONTINUE exitTypes eol

    otherStorageStatement ::= ALLOCATE ARRAY identifier arrayIndexer
           | LOCATE variableList IN grp_227
           | DEALLOCATE ARRAY identifier
           | RESIZE ARRAY identifier arrayIndexer
           | FREE variable list_231
           | INITIALIZE variable list_233 grp_234
           | VALIDATE variable list_238 LIKE expression list_240

    printExpressionItem ::= COLUMN expression
           | grp_241
           | BYTE variable
           | TEXT variable
           | expression opt_243 opt_247

    printExpressionList ::= printExpressionItem list_249

    reportStatement ::= START REPORT constantIdentifier opt_252 opt_262
           | TERMINATE REPORT constantIdentifier
           | FINISH REPORT constantIdentifier
           | PAUSE opt_263
           | NEED expression LINES
           | PRINT opt_267
           | SKIP2 grp_268
           | OUTPUT TO REPORT constantIdentifier LPAREN opt_273 RPAREN

    fieldName ::= opt_278 identifier
           | seq_281 DOT grp_282

    thruNotation ::= grp_284 opt_286 identifier

    fieldList ::= expression list_288

    keyList ::= expression list_290

    constructEvents ::= BEFORE CONSTRUCT
           | AFTER CONSTRUCT
           | BEFORE FIELD fieldList
           | AFTER FIELD fieldList
           | ON KEY LPAREN keyList RPAREN

    constructInsideStatement ::= NEXT FIELD grp_291 eol
           | CONTINUE CONSTRUCT eol
           | EXIT CONSTRUCT eol

    specialAttribute ::= REVERSE
           | BLINK
           | UNDERLINE

    attribute ::= opt_293 specialAttribute list_295

    attributeList ::= grp_296 LPAREN attribute RPAREN

    constructGroupStatement ::= constructEvents list_297

    constructStatement ::= CONSTRUCT grp_298 opt_299 opt_301 opt_304

    displayArrayStatement ::= DISPLAY ARRAY expression TO expression opt_305 list_306 opt_308

    displayInsideStatement ::= CONTINUE DISPLAY
           | EXIT DISPLAY

    displayEvents ::= ON KEY LPAREN keyList RPAREN list_309

    displayStatement ::= DISPLAY grp_310 opt_319 eol

    errorStatement ::= ERROR expression list_321 opt_322

    messageStatement ::= MESSAGE expression list_324 opt_325

    promptStatement ::= PROMPT expression list_327 opt_328 FOR opt_329 variable opt_331 opt_332 opt_337

    inputEvents ::= grp_338 grp_339
           | BEFORE FIELD fieldList
           | AFTER FIELD fieldList
           | ON KEY LPAREN keyList RPAREN

    inputInsideStatement ::= NEXT FIELD grp_340
           | grp_342

    inputGroupStatement ::= inputEvents list_343

    inputStatement ::= INPUT grp_344 opt_353 opt_355 opt_358

    inputArrayStatement ::= INPUT ARRAY expression opt_360 FROM expression list_362 opt_364 opt_365 opt_368

    menuEvents ::= BEFORE MENU
           | COMMAND seq_374

    menuInsideStatement ::= NEXT OPTION grp_375 list_377
           | SHOW OPTION grp_378 list_380
           | HIDE OPTION grp_381 list_383
           | CONTINUE MENU
           | EXIT MENU

    menuGroupStatement ::= menuEvents opt_384

    menuStatement ::= MENU expression list_385 END MENU

    reservedLinePosition ::= FIRST opt_387
           | numericConstant
           | LAST opt_389

    specialWindowAttribute ::= grp_390
           | REVERSE
           | BORDER
           | grp_391 LINE reservedLinePosition
           | COMMENT LINE grp_392

    windowAttribute ::= specialWindowAttribute list_394

    windowAttributeList ::= grp_395 LPAREN windowAttribute RPAREN

    optionStatement ::= grp_396

    optionsStatement ::= OPTIONS optionStatement list_401

    screenStatement ::= CLEAR grp_402
           | CLOSE WINDOW identifier eol
           | CLOSE FORM identifier eol
           | constructStatement
           | CURRENT WINDOW IS grp_404 eol
           | displayStatement
           | displayArrayStatement
           | DISPLAY FORM identifier opt_405 eol
           | errorStatement
           | messageStatement
           | promptStatement
           | inputStatement
           | inputArrayStatement
           | menuStatement
           | OPEN FORM expression FROM expression
           | OPEN WINDOW expression AT expression COMMA expression grp_406 opt_407
           | optionsStatement
           | SCROLL fieldList list_409 grp_410 opt_412

    sqlStatements ::= cursorManipulationStatement
           | dataDefinitionStatement
           | dataManipulationStatement
           | dynamicManagementStatement
           | queryOptimizationStatement
           | dataIntegrityStatement
           | clientServerStatement

    cursorManipulationStatement ::= CLOSE cursorName eol
           | DECLARE cursorName grp_413
           | FETCH opt_426 cursorName opt_428
           | FLUSH cursorName eol
           | OPEN cursorName opt_430
           | PUT cursorName opt_432

    columnsList ::= columnsTableId list_434

    statementId ::= constantIdentifier

    cursorName ::= identifier

    dataType ::= type_

    columnItem ::= constantIdentifier grp_435 opt_441
           | UNIQUE LPAREN opt_445 RPAREN opt_447

    dataDefinitionStatement ::= DROP TABLE constantIdentifier
           | CREATE opt_448 TABLE constantIdentifier LPAREN columnItem list_450 RPAREN opt_452 opt_454 opt_456 opt_458 opt_461
           | CREATE opt_462 opt_463 INDEX constantIdentifier ON constantIdentifier LPAREN constantIdentifier opt_465 list_469 RPAREN
           | DROP INDEX constantIdentifier

    dataManipulationStatement ::= sqlInsertStatement
           | sqlDeleteStatement
           | sqlSelectStatement
           | sqlUpdateStatement
           | sqlLoadStatement
           | sqlUnLoadStatement

    sqlSelectStatement ::= mainSelectStatement

    columnsTableId ::= STAR
           | seq_471 opt_473

    selectList ::= seq_478

    headSelectStatement ::= SELECT opt_481 selectList

    tableQualifier ::= constantIdentifier COLON
           | constantIdentifier ATSYMBOL constantIdentifier COLON
           | string

    tableIdentifier ::= opt_482 constantIdentifier

    fromTable ::= opt_483 tableIdentifier opt_484

    tableExpression ::= simpleSelectStatement

    fromSelectStatement ::= FROM grp_485 list_490

    aliasName ::= identifier

    mainSelectStatement ::= headSelectStatement opt_492 fromSelectStatement opt_493 opt_494 opt_495 opt_496 opt_497 opt_499 opt_501

    unionSelectStatement ::= seq_503

    simpleSelectStatement ::= headSelectStatement fromSelectStatement opt_504 opt_505 opt_506 opt_507

    whereStatement ::= WHERE condition

    groupByStatement ::= GROUP BY variableOrConstantList

    havingStatement ::= HAVING condition

    orderbyColumn ::= expression opt_509

    orderbyStatement ::= ORDER BY orderbyColumn list_511

    sqlLoadStatement ::= LOAD FROM grp_512 opt_515 grp_516 eol

    sqlUnLoadStatement ::= UNLOAD TO grp_519 opt_522 sqlSelectStatement eol

    sqlInsertStatement ::= INSERT INTO tableIdentifier opt_524 grp_525

    sqlUpdateStatement ::= UPDATE tableIdentifier SET grp_528 opt_543

    sqlDeleteStatement ::= DELETE FROM tableIdentifier opt_546 eol

    actualParameterList ::= actualParameter list_548

    dynamicManagementStatement ::= PREPARE cursorName FROM expression
           | EXECUTE cursorName opt_550
           | FREE grp_551
           | LOCK TABLE expression IN grp_552 MODE

    queryOptimizationStatement ::= UPDATE STATISTICS opt_554
           | SET LOCK MODE TO grp_555
           | SET EXPLAIN grp_557
           | SET ISOLATION TO grp_558
           | SET opt_560 LOG

    databaseDeclaration ::= DATABASE seq_563 opt_564 opt_565

    clientServerStatement ::= CLOSE DATABASE

    dataIntegrityStatement ::= wheneverStatement
           | BEGIN WORK
           | COMMIT WORK
           | ROLLBACK WORK

    wheneverStatement ::= WHENEVER wheneverType wheneverFlow eol

    wheneverType ::= NOT FOUND
           | opt_566 grp_567
           | grp_568

    wheneverFlow ::= grp_569
           | CALL identifier
           | grp_570 opt_571 identifier

    reportDefinition ::= REPORT identifier opt_572 opt_573 opt_574 opt_577 opt_578 END REPORT

    outputReport ::= OUTPUT opt_581 list_589

    formatReport ::= FORMAT grp_590

    eol ::= EOL

    unsignedNumber ::= unsignedInteger
           | unsignedReal

    unsignedInteger ::= NUM_INT

    unsignedReal ::= NUM_REAL

    sign ::= PLUS
           | MINUS

    constantIdentifier ::= grp_597
           | identifier

    opt_1 ::= databaseDeclaration | $empty

    opt_2 ::= globalDeclaration | $empty

    opt_3 ::= typeDeclarations | $empty

    opt_4 ::= functionOrReportDefinitions | $empty

    opt_5 ::= eol | $empty

    opt_6 ::= typeDeclarations | $empty

    opt_7 ::= mainStatements | $empty

    grp_8 ::= deferStatement | codeBlock | eol

    list_9 ::= grp_8 | list_9 grp_8

    grp_10 ::= INTERRUPT | QUIT

    grp_11 ::= reportDefinition | functionDefinition

    list_12 ::= grp_11 | list_12 grp_11

    opt_13 ::= variableOrConstantList | $empty

    opt_14 ::= parameterList | $empty

    opt_15 ::= codeBlock | $empty

    list_16 ::= $empty | list_16 parameterGroup

    seq_17 ::= COMMA identifier

    list_18 ::= $empty | list_18 seq_17

    grp_19 ::= string | eol typeDeclarations END GLOBALS

    list_20 ::= typeDeclaration | list_20 typeDeclaration

    seq_21 ::= COMMA variableDeclaration

    list_22 ::= $empty | list_22 seq_21

    seq_23 ::= COMMA constantIdentifier

    list_24 ::= $empty | list_24 seq_23

    seq_25 ::= COMMA constantIdentifier type_

    list_26 ::= $empty | list_26 seq_25

    grp_27 ::= BIGINT | INTEGER | INT | SMALLINT | REAL | SMALLFLOAT

    grp_28 ::= DECIMAL | DEC | NUMERIC | MONEY

    seq_29 ::= COMMA numericConstant

    opt_30 ::= seq_29 | $empty

    seq_31 ::= LPAREN numericConstant opt_30 RPAREN

    opt_32 ::= seq_31 | $empty

    grp_33 ::= FLOAT | DOUBLE

    seq_34 ::= LPAREN numericConstant RPAREN

    opt_35 ::= seq_34 | $empty

    grp_36 ::= VARCHAR | NVARCHAR

    seq_37 ::= COMMA numericConstant

    opt_38 ::= seq_37 | $empty

    grp_39 ::= CHAR | NCHAR | CHARACTER

    seq_40 ::= LPAREN numericConstant RPAREN

    opt_41 ::= seq_40 | $empty

    seq_42 ::= LPAREN numericConstant RPAREN

    opt_43 ::= seq_42 | $empty

    seq_44 ::= LPAREN numericConstant RPAREN

    opt_45 ::= seq_44 | $empty

    seq_46 ::= LPAREN numericConstant RPAREN

    opt_47 ::= seq_46 | $empty

    seq_48 ::= LPAREN numericConstant RPAREN

    opt_49 ::= seq_48 | $empty

    seq_50 ::= LPAREN numericConstant RPAREN

    opt_51 ::= seq_50 | $empty

    seq_52 ::= LPAREN numericConstant RPAREN

    opt_53 ::= seq_52 | $empty

    seq_54 ::= LPAREN numericConstant RPAREN

    opt_55 ::= seq_54 | $empty

    seq_57 ::= COMMA variableDeclaration

    list_58 ::= $empty | list_58 seq_57

    seq_59 ::= variableDeclaration list_58

    seq_60 ::= LIKE tableIdentifier DOT STAR

    grp_56 ::= eol seq_59 END RECORD | seq_60

    grp_61 ::= COMMA numericConstant | COMMA numericConstant COMMA numericConstant

    opt_62 ::= grp_61 | $empty

    grp_63 ::= recordType | typeIdentifier | largeType

    grp_64 ::= recordType | typeIdentifier

    seq_65 ::= label COLON

    opt_66 ::= seq_65 | $empty

    grp_67 ::= statement | databaseDeclaration

    list_68 ::= grp_67 | list_68 grp_67

    opt_69 ::= SEMI | $empty

    grp_70 ::= variable | string

    grp_71 ::= IN FORM MODE | IN LINE MODE

    opt_72 ::= grp_71 | $empty

    grp_73 ::= WITHOUT WAITING | RETURNING variable

    opt_74 ::= grp_73 | $empty

    seq_75 ::= COMMA expression

    list_76 ::= $empty | list_76 seq_75

    seq_77 ::= COMMA actualParameter

    list_78 ::= $empty | list_78 seq_77

    seq_79 ::= actualParameter list_78

    opt_80 ::= seq_79 | $empty

    seq_81 ::= LPAREN opt_80 RPAREN

    opt_82 ::= seq_81 | $empty

    seq_83 ::= COMMA variable

    list_84 ::= $empty | list_84 seq_83

    seq_85 ::= RETURNING variable list_84

    opt_86 ::= seq_85 | $empty

    opt_87 ::= COLON | $empty

    grp_88 ::= TRUE | FALSE

    seq_89 ::= OR logicalTerm

    list_90 ::= $empty | list_90 seq_89

    seq_91 ::= AND logicalFactor

    list_92 ::= $empty | list_92 seq_91

    opt_93 ::= NOT | $empty

    seq_94 ::= sqlExpression opt_93 LIKE

    opt_95 ::= NOT | $empty

    seq_96 ::= ESC QUOTED_STRING

    opt_97 ::= seq_96 | $empty

    opt_98 ::= NOT | $empty

    seq_99 ::= sqlExpression opt_98 BETWEEN

    opt_100 ::= NOT | $empty

    opt_101 ::= NOT | $empty

    seq_102 ::= sqlExpression IS opt_101 NULL_

    opt_103 ::= NOT | $empty

    seq_104 ::= NOT condition

    grp_106 ::= ALL | ANY

    opt_107 ::= grp_106 | $empty

    grp_105 ::= sqlExpression relationalOperator opt_107 subquery

    grp_108 ::= ALL | ANY

    opt_109 ::= grp_108 | $empty

    opt_110 ::= NOT | $empty

    seq_111 ::= opt_110 EXISTS subquery

    opt_112 ::= NOT | $empty

    grp_114 ::= PLUS | MINUS

    grp_113 ::= grp_114 sqlTerm

    list_115 ::= $empty | list_115 grp_113

    opt_116 ::= AS | $empty

    grp_118 ::= sqlMultiply | DIV | SLASH

    grp_117 ::= grp_118 sqlFactor

    list_119 ::= $empty | list_119 grp_117

    seq_120 ::= DOUBLEVERTBAR sqlFactor2

    list_121 ::= $empty | list_121 seq_120

    seq_122 ::= UNITS unitType

    opt_123 ::= seq_122 | $empty

    seq_124 ::= sqlVariable opt_123

    seq_125 ::= UNITS unitType

    opt_126 ::= seq_125 | $empty

    seq_127 ::= UNITS unitType

    opt_128 ::= seq_127 | $empty

    seq_129 ::= sqlLiteral opt_128

    seq_130 ::= UNITS unitType

    opt_131 ::= seq_130 | $empty

    grp_133 ::= STAR | ALL | DISTINCT

    opt_134 ::= grp_133 | $empty

    seq_135 ::= COMMA sqlExpression

    list_136 ::= $empty | list_136 seq_135

    seq_137 ::= sqlExpression list_136

    opt_138 ::= seq_137 | $empty

    grp_132 ::= groupFunction LPAREN opt_134 opt_138 RPAREN

    grp_139 ::= STAR | ALL | DISTINCT

    opt_140 ::= grp_139 | $empty

    seq_141 ::= COMMA sqlExpression

    list_142 ::= $empty | list_142 seq_141

    seq_143 ::= sqlExpression list_142

    opt_144 ::= seq_143 | $empty

    seq_145 ::= COMMA sqlExpression

    list_146 ::= $empty | list_146 seq_145

    seq_147 ::= LPAREN sqlExpression list_146 RPAREN

    seq_148 ::= sqlFunction seq_147

    seq_149 ::= COMMA sqlExpression

    list_150 ::= $empty | list_150 seq_149

    seq_151 ::= LPAREN sqlExpression list_150 RPAREN

    grp_153 ::= PLUS | MINUS

    grp_152 ::= grp_153 sqlExpression

    grp_154 ::= PLUS | MINUS

    seq_155 ::= LPAREN sqlExpression RPAREN

    seq_156 ::= COMMA sqlExpression

    list_157 ::= seq_156 | list_157 seq_156

    grp_158 ::= DECODE | NVL

    opt_159 ::= NOT | $empty

    seq_160 ::= relationalOperator ifCondition2

    list_161 ::= $empty | list_161 seq_160

    seq_162 ::= OR ifLogicalTerm

    list_163 ::= $empty | list_163 seq_162

    seq_164 ::= AND ifLogicalFactor

    list_165 ::= $empty | list_165 seq_164

    grp_166 ::= CLIPPED | USING string

    list_167 ::= $empty | list_167 grp_166

    seq_168 ::= NOT ifCondition

    opt_169 ::= sign | $empty

    seq_170 ::= addingOperator term

    list_171 ::= $empty | list_171 seq_170

    seq_172 ::= multiplyingOperator factor

    list_173 ::= $empty | list_173 seq_172

    opt_175 ::= GROUP | $empty

    grp_174 ::= opt_175 functionDesignator | variable | constant | LPAREN expression RPAREN | NOT factor

    seq_176 ::= UNITS unitType

    opt_177 ::= seq_176 | $empty

    seq_178 ::= COMMA actualParameter

    list_179 ::= $empty | list_179 seq_178

    seq_180 ::= actualParameter list_179

    opt_181 ::= seq_180 | $empty

    seq_182 ::= LPAREN opt_181 RPAREN

    opt_183 ::= seq_182 | $empty

    grp_184 ::= DAY | YEAR | MONTH | TODAY | WEEKDAY | MDY | COLUMN | SUM | COUNT | AVG | MIN | MAX | EXTEND | DATE | TIME | INFIELD | PREPARE

    seq_185 ::= COMMA expression

    list_186 ::= $empty | list_186 seq_185

    opt_187 ::= indexingVariable | $empty

    seq_188 ::= recordVariable opt_187

    seq_190 ::= DOT STAR

    grp_193 ::= THROUGH | THRU

    grp_192 ::= grp_193 componentVariable

    opt_194 ::= grp_192 | $empty

    grp_191 ::= DOT componentVariable opt_194

    grp_189 ::= seq_190 | grp_191

    opt_195 ::= grp_189 | $empty

    opt_196 ::= codeBlock | $empty

    opt_197 ::= codeBlock | $empty

    seq_198 ::= ELSE opt_197

    opt_199 ::= seq_198 | $empty

    opt_200 ::= codeBlock | $empty

    seq_201 ::= STEP numericConstant

    opt_202 ::= seq_201 | $empty

    opt_203 ::= codeBlock | $empty

    seq_204 ::= USING variableList

    opt_205 ::= seq_204 | $empty

    seq_206 ::= INTO variableList

    opt_207 ::= seq_206 | $empty

    seq_208 ::= WITH REOPTIMIZATION

    opt_209 ::= seq_208 | $empty

    opt_210 ::= codeBlock | $empty

    seq_211 ::= COMMA variable

    list_212 ::= $empty | list_212 seq_211

    seq_213 ::= COMMA expression

    list_214 ::= $empty | list_214 seq_213

    opt_215 ::= codeBlock | $empty

    seq_216 ::= WHEN expression opt_215

    list_217 ::= $empty | list_217 seq_216

    opt_218 ::= codeBlock | $empty

    seq_219 ::= OTHERWISE opt_218

    opt_220 ::= seq_219 | $empty

    seq_221 ::= WHEN ifCondition codeBlock

    list_222 ::= $empty | list_222 seq_221

    seq_223 ::= OTHERWISE codeBlock

    opt_224 ::= seq_223 | $empty

    grp_225 ::= LPAREN expression RPAREN | expression

    opt_226 ::= grp_225 | $empty

    grp_228 ::= variable | string

    opt_229 ::= grp_228 | $empty

    grp_227 ::= MEMORY | FILE opt_229

    seq_230 ::= COMMA variable

    list_231 ::= $empty | list_231 seq_230

    seq_232 ::= COMMA variable

    list_233 ::= $empty | list_233 seq_232

    seq_235 ::= COMMA expression

    list_236 ::= $empty | list_236 seq_235

    grp_234 ::= TO NULL_ | LIKE expression list_236

    seq_237 ::= COMMA variable

    list_238 ::= $empty | list_238 seq_237

    seq_239 ::= COMMA expression

    list_240 ::= $empty | list_240 seq_239

    grp_241 ::= PAGENO | LINENO

    grp_242 ::= SPACE | SPACES

    opt_243 ::= grp_242 | $empty

    seq_244 ::= RIGHT MARGIN numericConstant

    opt_245 ::= seq_244 | $empty

    seq_246 ::= WORDWRAP opt_245

    opt_247 ::= seq_246 | $empty

    seq_248 ::= COMMA printExpressionItem

    list_249 ::= $empty | list_249 seq_248

    grp_251 ::= expression | PIPE expression | PRINTER

    grp_250 ::= TO grp_251

    opt_252 ::= grp_250 | $empty

    seq_255 ::= LEFT MARGIN numericConstant

    seq_256 ::= RIGHT MARGIN numericConstant

    seq_257 ::= TOP MARGIN numericConstant

    seq_258 ::= BOTTOM MARGIN numericConstant

    seq_259 ::= PAGE LENGTH numericConstant

    seq_260 ::= TOP OF PAGE string

    grp_254 ::= seq_255 | seq_256 | seq_257 | seq_258 | seq_259 | seq_260

    list_261 ::= $empty | list_261 grp_254

    grp_253 ::= WITH list_261

    opt_262 ::= grp_253 | $empty

    opt_263 ::= string | $empty

    opt_265 ::= printExpressionList | $empty

    opt_266 ::= SEMI | $empty

    grp_264 ::= opt_265 opt_266 | FILE string

    opt_267 ::= grp_264 | $empty

    grp_269 ::= LINE | LINES

    grp_268 ::= expression grp_269 | TO TOP OF PAGE

    seq_270 ::= COMMA expression

    list_271 ::= $empty | list_271 seq_270

    seq_272 ::= expression list_271

    opt_273 ::= seq_272 | $empty

    seq_274 ::= LBRACK numericConstant RBRACK

    opt_275 ::= seq_274 | $empty

    seq_276 ::= identifier opt_275

    seq_277 ::= seq_276 DOT

    opt_278 ::= seq_277 | $empty

    seq_279 ::= LBRACK numericConstant RBRACK

    opt_280 ::= seq_279 | $empty

    seq_281 ::= identifier opt_280

    opt_283 ::= thruNotation | $empty

    grp_282 ::= STAR | identifier opt_283

    grp_284 ::= THROUGH | THRU

    seq_285 ::= SAME DOT

    opt_286 ::= seq_285 | $empty

    seq_287 ::= COMMA expression

    list_288 ::= $empty | list_288 seq_287

    seq_289 ::= COMMA expression

    list_290 ::= $empty | list_290 seq_289

    grp_291 ::= fieldName | NEXT | PREVIOUS

    grp_292 ::= BLACK | BLUE | CYAN | GREEN | MAGENTA | RED | WHITE | YELLOW | BOLD | DIM | NORMAL | INVISIBLE

    opt_293 ::= grp_292 | $empty

    seq_294 ::= COMMA specialAttribute

    list_295 ::= $empty | list_295 seq_294

    grp_296 ::= ATTRIBUTE | ATTRIBUTES

    list_297 ::= codeBlock | list_297 codeBlock

    grp_298 ::= BY NAME variable ON columnsList | variable ON columnsList FROM fieldList

    opt_299 ::= attributeList | $empty

    seq_300 ::= HELP numericConstant

    opt_301 ::= seq_300 | $empty

    list_302 ::= constructGroupStatement | list_302 constructGroupStatement

    seq_303 ::= list_302 END CONSTRUCT

    opt_304 ::= seq_303 | $empty

    opt_305 ::= attributeList | $empty

    list_306 ::= $empty | list_306 displayEvents

    seq_307 ::= END DISPLAY

    opt_308 ::= seq_307 | $empty

    list_309 ::= codeBlock | list_309 codeBlock

    seq_311 ::= COMMA expression

    list_312 ::= $empty | list_312 seq_311

    seq_313 ::= expression list_312

    seq_314 ::= COMMA expression

    list_315 ::= $empty | list_315 seq_314

    seq_316 ::= expression list_315

    grp_317 ::= TO fieldList | AT expression COMMA expression

    opt_318 ::= grp_317 | $empty

    grp_310 ::= BY NAME seq_313 | seq_316 opt_318

    opt_319 ::= attributeList | $empty

    seq_320 ::= COMMA expression

    list_321 ::= $empty | list_321 seq_320

    opt_322 ::= attributeList | $empty

    seq_323 ::= COMMA expression

    list_324 ::= $empty | list_324 seq_323

    opt_325 ::= attributeList | $empty

    seq_326 ::= COMMA expression

    list_327 ::= $empty | list_327 seq_326

    opt_328 ::= attributeList | $empty

    opt_329 ::= CHAR | $empty

    seq_330 ::= HELP numericConstant

    opt_331 ::= seq_330 | $empty

    opt_332 ::= attributeList | $empty

    opt_333 ::= codeBlock | $empty

    seq_334 ::= ON KEY LPAREN keyList RPAREN opt_333

    list_335 ::= $empty | list_335 seq_334

    seq_336 ::= list_335 END PROMPT

    opt_337 ::= seq_336 | $empty

    grp_338 ::= BEFORE | AFTER

    grp_339 ::= INPUT | ROW | INSERT | DELETE

    grp_341 ::= NEXT | PREVIOUS

    grp_340 ::= fieldName | grp_341

    grp_342 ::= CONTINUE INPUT | EXIT INPUT

    list_343 ::= $empty | list_343 codeBlock

    seq_345 ::= COMMA expression

    list_346 ::= $empty | list_346 seq_345

    seq_347 ::= WITHOUT DEFAULTS

    opt_348 ::= seq_347 | $empty

    seq_349 ::= COMMA expression

    list_350 ::= $empty | list_350 seq_349

    seq_351 ::= WITHOUT DEFAULTS

    opt_352 ::= seq_351 | $empty

    grp_344 ::= BY NAME expression list_346 opt_348 | expression list_350 opt_352 FROM fieldList

    opt_353 ::= attributeList | $empty

    seq_354 ::= HELP numericConstant

    opt_355 ::= seq_354 | $empty

    list_356 ::= inputGroupStatement | list_356 inputGroupStatement

    seq_357 ::= list_356 END INPUT

    opt_358 ::= seq_357 | $empty

    seq_359 ::= WITHOUT DEFAULTS

    opt_360 ::= seq_359 | $empty

    seq_361 ::= COMMA expression

    list_362 ::= $empty | list_362 seq_361

    seq_363 ::= HELP numericConstant

    opt_364 ::= seq_363 | $empty

    opt_365 ::= attributeList | $empty

    list_366 ::= inputGroupStatement | list_366 inputGroupStatement

    seq_367 ::= list_366 END INPUT

    opt_368 ::= seq_367 | $empty

    seq_369 ::= KEY LPAREN keyList RPAREN

    opt_370 ::= seq_369 | $empty

    opt_371 ::= expression | $empty

    seq_372 ::= HELP numericConstant

    opt_373 ::= seq_372 | $empty

    seq_374 ::= opt_370 expression opt_371 opt_373

    grp_375 ::= expression | ALL

    seq_376 ::= COMMA expression

    list_377 ::= $empty | list_377 seq_376

    grp_378 ::= expression | ALL

    seq_379 ::= COMMA expression

    list_380 ::= $empty | list_380 seq_379

    grp_381 ::= expression | ALL

    seq_382 ::= COMMA expression

    list_383 ::= $empty | list_383 seq_382

    opt_384 ::= codeBlock | $empty

    list_385 ::= $empty | list_385 menuGroupStatement

    seq_386 ::= PLUS numericConstant

    opt_387 ::= seq_386 | $empty

    seq_388 ::= MINUS numericConstant

    opt_389 ::= seq_388 | $empty

    grp_390 ::= BLACK | BLUE | CYAN | GREEN | MAGENTA | RED | WHITE | YELLOW | BOLD | DIM | NORMAL | INVISIBLE

    grp_391 ::= PROMPT | FORM | MENU | MESSAGE

    grp_392 ::= reservedLinePosition | OFF

    seq_393 ::= COMMA specialWindowAttribute

    list_394 ::= $empty | list_394 seq_393

    grp_395 ::= ATTRIBUTE | ATTRIBUTES

    grp_397 ::= WRAP | NO WRAP

    grp_398 ::= ON | OFF

    grp_399 ::= CONSTRAINED | UNCONSTRAINED

    grp_396 ::= MESSAGE LINE expression | PROMPT LINE expression | MENU LINE expression | COMMENT LINE expression | ERROR LINE expression | FORM LINE expression | INPUT grp_397 | INSERT KEY expression | DELETE KEY expression | NEXT KEY expression | PREVIOUS KEY expression | ACCEPT KEY expression | HELP FILE expression | HELP KEY expression | INPUT attributeList | DISPLAY attributeList | SQL INTERRUPT grp_398 | FIELD ORDER grp_399

    seq_400 ::= COMMA optionStatement

    list_401 ::= $empty | list_401 seq_400

    opt_403 ::= WINDOW | $empty

    grp_402 ::= FORM | WINDOW identifier | opt_403 SCREEN | fieldList

    grp_404 ::= SCREEN | identifier

    opt_405 ::= attributeList | $empty

    grp_406 ::= WITH FORM expression | WITH expression ROWS COMMA expression COLUMNS

    opt_407 ::= windowAttributeList | $empty

    seq_408 ::= COMMA fieldList

    list_409 ::= $empty | list_409 seq_408

    grp_410 ::= UP | DOWN

    seq_411 ::= BY numericConstant

    opt_412 ::= seq_411 | $empty

    seq_414 ::= WITH HOLD

    opt_415 ::= seq_414 | $empty

    seq_417 ::= OF columnsList

    opt_418 ::= seq_417 | $empty

    seq_419 ::= FOR UPDATE opt_418

    opt_420 ::= seq_419 | $empty

    grp_416 ::= sqlSelectStatement opt_420 | sqlInsertStatement | statementId

    seq_421 ::= WITH HOLD

    opt_422 ::= seq_421 | $empty

    grp_423 ::= sqlSelectStatement | statementId

    grp_413 ::= CURSOR opt_415 FOR grp_416 | SCROLL CURSOR opt_422 FOR grp_423

    grp_425 ::= PREVIOUS | PRIOR

    grp_424 ::= NEXT | grp_425 | FIRST | LAST | CURRENT | RELATIVE expression | ABSOLUTE expression

    opt_426 ::= grp_424 | $empty

    seq_427 ::= INTO variableList

    opt_428 ::= seq_427 | $empty

    seq_429 ::= USING variableList

    opt_430 ::= seq_429 | $empty

    seq_431 ::= FROM variableOrConstantList

    opt_432 ::= seq_431 | $empty

    seq_433 ::= COMMA columnsTableId

    list_434 ::= $empty | list_434 seq_433

    grp_436 ::= BYTE | TEXT

    grp_438 ::= TABLE | constantIdentifier

    grp_437 ::= IN grp_438

    opt_439 ::= grp_437 | $empty

    grp_435 ::= dataType | grp_436 opt_439

    seq_440 ::= NOT NULL_

    opt_441 ::= seq_440 | $empty

    seq_442 ::= COMMA constantIdentifier

    list_443 ::= $empty | list_443 seq_442

    seq_444 ::= constantIdentifier list_443

    opt_445 ::= seq_444 | $empty

    seq_446 ::= CONSTRAINT constantIdentifier

    opt_447 ::= seq_446 | $empty

    opt_448 ::= TEMP | $empty

    seq_449 ::= COMMA columnItem

    list_450 ::= $empty | list_450 seq_449

    seq_451 ::= WITH NO LOG

    opt_452 ::= seq_451 | $empty

    seq_453 ::= IN constantIdentifier

    opt_454 ::= seq_453 | $empty

    seq_455 ::= EXTENT SIZE numericConstant

    opt_456 ::= seq_455 | $empty

    seq_457 ::= NEXT SIZE numericConstant

    opt_458 ::= seq_457 | $empty

    grp_460 ::= PAGE | ROW

    grp_459 ::= LOCK MODE LPAREN grp_460 RPAREN

    opt_461 ::= grp_459 | $empty

    opt_462 ::= UNIQUE | $empty

    opt_463 ::= CLUSTER | $empty

    grp_464 ::= ASC | DESC

    opt_465 ::= grp_464 | $empty

    grp_467 ::= ASC | DESC

    opt_468 ::= grp_467 | $empty

    grp_466 ::= COMMA constantIdentifier opt_468

    list_469 ::= $empty | list_469 grp_466

    opt_470 ::= indexingVariable | $empty

    seq_471 ::= tableIdentifier opt_470

    grp_472 ::= DOT STAR | DOT columnsTableId

    opt_473 ::= grp_472 | $empty

    opt_474 ::= sqlAlias | $empty

    opt_475 ::= sqlAlias | $empty

    seq_476 ::= COMMA sqlExpression opt_475

    list_477 ::= $empty | list_477 seq_476

    seq_478 ::= sqlExpression opt_474 list_477

    grp_480 ::= DISTINCT | UNIQUE

    grp_479 ::= ALL | grp_480

    opt_481 ::= grp_479 | $empty

    opt_482 ::= tableQualifier | $empty

    opt_483 ::= OUTER | $empty

    opt_484 ::= sqlAlias | $empty

    opt_486 ::= sqlAlias | $empty

    grp_485 ::= fromTable | LPAREN tableExpression RPAREN opt_486

    opt_489 ::= sqlAlias | $empty

    grp_488 ::= fromTable | LPAREN tableExpression RPAREN opt_489

    grp_487 ::= COMMA grp_488

    list_490 ::= $empty | list_490 grp_487

    seq_491 ::= INTO variableList

    opt_492 ::= seq_491 | $empty

    opt_493 ::= whereStatement | $empty

    opt_494 ::= groupByStatement | $empty

    opt_495 ::= havingStatement | $empty

    opt_496 ::= unionSelectStatement | $empty

    opt_497 ::= orderbyStatement | $empty

    seq_498 ::= INTO TEMP identifier

    opt_499 ::= seq_498 | $empty

    seq_500 ::= WITH NO LOG

    opt_501 ::= seq_500 | $empty

    opt_502 ::= ALL | $empty

    seq_503 ::= UNION opt_502 simpleSelectStatement

    opt_504 ::= whereStatement | $empty

    opt_505 ::= groupByStatement | $empty

    opt_506 ::= havingStatement | $empty

    opt_507 ::= unionSelectStatement | $empty

    grp_508 ::= ASC | DESC

    opt_509 ::= grp_508 | $empty

    seq_510 ::= COMMA orderbyColumn

    list_511 ::= $empty | list_511 seq_510

    grp_512 ::= variable | string

    grp_514 ::= variable | string

    grp_513 ::= DELIMITER grp_514

    opt_515 ::= grp_513 | $empty

    seq_517 ::= LPAREN columnsList RPAREN

    opt_518 ::= seq_517 | $empty

    grp_516 ::= INSERT INTO tableIdentifier opt_518 | sqlInsertStatement

    grp_519 ::= variable | string

    grp_521 ::= variable | string

    grp_520 ::= DELIMITER grp_521

    opt_522 ::= grp_520 | $empty

    seq_523 ::= LPAREN columnsList RPAREN

    opt_524 ::= seq_523 | $empty

    seq_526 ::= COMMA expression

    list_527 ::= $empty | list_527 seq_526

    grp_525 ::= VALUES LPAREN expression list_527 RPAREN | simpleSelectStatement

    seq_529 ::= COMMA columnsTableId EQUAL expression

    list_530 ::= $empty | list_530 seq_529

    seq_531 ::= columnsTableId EQUAL expression list_530

    seq_534 ::= aliasName DOT

    opt_535 ::= seq_534 | $empty

    grp_533 ::= LPAREN columnsList RPAREN | opt_535 STAR

    seq_537 ::= COMMA expression

    list_538 ::= $empty | list_538 seq_537

    seq_539 ::= aliasName DOT

    opt_540 ::= seq_539 | $empty

    grp_536 ::= LPAREN expression list_538 RPAREN | opt_540 STAR

    grp_532 ::= grp_533 EQUAL grp_536

    grp_528 ::= seq_531 | grp_532

    grp_542 ::= condition | CURRENT OF cursorName

    grp_541 ::= WHERE grp_542

    opt_543 ::= grp_541 | $empty

    grp_545 ::= condition | CURRENT OF cursorName

    grp_544 ::= WHERE grp_545

    opt_546 ::= grp_544 | $empty

    seq_547 ::= COMMA actualParameter

    list_548 ::= $empty | list_548 seq_547

    seq_549 ::= USING variableList

    opt_550 ::= seq_549 | $empty

    grp_551 ::= cursorName | statementId

    grp_552 ::= SHARE | EXCLUSIVE

    seq_553 ::= FOR TABLE tableIdentifier

    opt_554 ::= seq_553 | $empty

    opt_556 ::= SECONDS | $empty

    grp_555 ::= WAIT opt_556 | NOT WAIT

    grp_557 ::= ON | OFF

    grp_559 ::= DIRTY | COMMITTED | REPEATABLE

    grp_558 ::= CURSOR STABILITY | grp_559 READ

    opt_560 ::= BUFFERED | $empty

    seq_561 ::= ATSYMBOL constantIdentifier

    opt_562 ::= seq_561 | $empty

    seq_563 ::= constantIdentifier opt_562

    opt_564 ::= EXCLUSIVE | $empty

    opt_565 ::= SEMI | $empty

    opt_566 ::= ANY | $empty

    grp_567 ::= SQLERROR | ERROR

    grp_568 ::= SQLWARNING | WARNING

    grp_569 ::= CONTINUE | STOP

    grp_570 ::= GO TO | GOTO

    opt_571 ::= COLON | $empty

    opt_572 ::= parameterList | $empty

    opt_573 ::= typeDeclarations | $empty

    opt_574 ::= outputReport | $empty

    opt_575 ::= EXTERNAL | $empty

    seq_576 ::= ORDER opt_575 BY variableList

    opt_577 ::= seq_576 | $empty

    opt_578 ::= formatReport | $empty

    grp_580 ::= string | PIPE string | PRINTER

    grp_579 ::= REPORT TO grp_580

    opt_581 ::= grp_579 | $empty

    seq_583 ::= LEFT MARGIN numericConstant

    seq_584 ::= RIGHT MARGIN numericConstant

    seq_585 ::= TOP MARGIN numericConstant

    seq_586 ::= BOTTOM MARGIN numericConstant

    seq_587 ::= PAGE LENGTH numericConstant

    seq_588 ::= TOP OF PAGE string

    grp_582 ::= seq_583 | seq_584 | seq_585 | seq_586 | seq_587 | seq_588

    list_589 ::= $empty | list_589 grp_582

    opt_593 ::= FIRST | $empty

    grp_594 ::= EVERY ROW | LAST ROW

    grp_595 ::= BEFORE | AFTER

    grp_592 ::= opt_593 PAGE HEADER | PAGE TRAILER | ON grp_594 | grp_595 GROUP OF variable

    grp_591 ::= grp_592 codeBlock

    list_596 ::= grp_591 | list_596 grp_591

    grp_590 ::= EVERY ROW | list_596

    grp_597 ::= ACCEPT | ASCII | COUNT | CURRENT | FALSE | FIRST | FOUND | GROUP | HIDE | INDEX | INT_FLAG | INTERRUPT | LAST | LENGTH | LINENO | MDY | NO | NOT | NOTFOUND | NULL_ | PAGENO | REAL | SIZE | SQL | STATUS | TEMP | TIME | TODAY | TRUE | USER | WAIT | WEEKDAY | WORK

%End
