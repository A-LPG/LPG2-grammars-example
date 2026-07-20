-- AUTO-GENERATED from antlr/grammars-v4 vba/vba7_1 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack
%Options fp=VbaVba71Parser
%options package=lpg.grammars.vba.vba7_1
%options template=btParserTemplateF.gi
%options import_terminals=VbaVba71Lexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    startRule
%End

%Rules
    startRule ::= module

    module ::= list_1 grp_2 list_3 opt_4

    classFileHeader ::= classVersionIdentification classBeginBlock

    classVersionIdentification ::= VERSION WS FLOATLITERAL WS CLASS

    classBeginBlock ::= list_5 BEGIN list_6 list_7 END

    beginBlockConfigElement ::= list_8 opt_10 opt_11 ambiguousIdentifier opt_12 EQ opt_13 grp_14
           | formBeginBlock
           | beginPropertyBlock

    formFileHeader ::= formVersionIdentification list_17 formBeginBlock

    formVersionIdentification ::= VERSION WS FLOATLITERAL

    formObjectAssign ::= list_18 OBJECT opt_19 EQ opt_20 STRINGLITERAL opt_23

    formBeginBlock ::= list_24 BEGIN WS grp_25 WS ambiguousIdentifier list_27 list_28 END

    beginPropertyBlock ::= list_29 BEGINPROPERTY WS ambiguousIdentifier opt_32 list_33 list_34 ENDPROPERTY

    proceduralModule ::= proceduralModuleHeader list_35 proceduralModuleBody

    classModule ::= classModuleHeader list_36 classModuleBody

    proceduralModuleHeader ::= list_37 ATTRIBUTE opt_38 VB_NAME opt_39 EQ opt_40 STRINGLITERAL

    classModuleHeader ::= list_43 opt_44

    classAttr ::= ATTRIBUTE opt_45 VB_NAME opt_46 EQ opt_47 STRINGLITERAL
           | ATTRIBUTE opt_48 VB_GLOBALNAMESPACE opt_49 EQ opt_50 booleanLiteralIdentifier
           | ATTRIBUTE opt_51 VB_CREATABLE opt_52 EQ opt_53 booleanLiteralIdentifier
           | ATTRIBUTE opt_54 VB_PREDECLAREDID opt_55 EQ opt_56 booleanLiteralIdentifier
           | ATTRIBUTE opt_57 VB_EXPOSED opt_58 EQ opt_59 booleanLiteralIdentifier
           | ATTRIBUTE opt_60 VB_CUSTOMIZABLE opt_61 EQ opt_62 booleanLiteralIdentifier

    proceduralModuleBody ::= opt_63 list_64 proceduralModuleCode

    classModuleBody ::= opt_65 classModuleCode

    unrestrictedName ::= reservedIdentifier
           | name

    name ::= untypedName
           | typedName
           | markedFileNumber

    untypedName ::= ambiguousIdentifier
           | FOREIGN_NAME

    proceduralModuleDeclarationSection ::= list_68
           | seq_73 list_75

    classModuleDeclarationSection ::= list_78
           | seq_82 list_85

    proceduralModuleDirectiveElement ::= commonOptionDirective
           | optionPrivateDirective
           | defDirective

    proceduralModuleDeclarationElement ::= commonModuleDeclarationElement
           | globalVariableDeclaration
           | publicConstDeclaration
           | publicExternalProcedureDeclaration
           | globalEnumDeclaration
           | commonOptionDirective
           | optionPrivateDirective

    classModuleDirectiveElement ::= commonOptionDirective
           | defDirective
           | implementsDirective

    classModuleDeclarationElement ::= commonModuleDeclarationElement
           | eventDeclaration
           | commonOptionDirective
           | implementsDirective

    commonOptionDirective ::= optionCompareDirective
           | optionBaseDirective
           | optionExplicitDirective
           | remStatement

    optionCompareDirective ::= OPTION wsc COMPARE wsc grp_86

    optionBaseDirective ::= OPTION wsc BASE wsc INTEGERLITERAL

    optionExplicitDirective ::= OPTION wsc EXPLICIT

    optionPrivateDirective ::= OPTION wsc PRIVATE wsc MODULE

    defDirective ::= defType WS letterSpec list_88

    letterSpec ::= singleLetter
           | universalLetterRange
           | letterRange

    singleLetter ::= ambiguousIdentifier

    universalLetterRange ::= upperCaseA WS MINUS WS upperCaseZ

    upperCaseA ::= ambiguousIdentifier

    upperCaseZ ::= ambiguousIdentifier

    letterRange ::= firstLetter WS MINUS WS lastLetter

    firstLetter ::= ambiguousIdentifier

    lastLetter ::= ambiguousIdentifier

    defType ::= DEFBOOL
           | DEFBYTE
           | DEFCUR
           | DEFDATE
           | DEFDBL
           | DEFINT
           | DEFLNG
           | DEFLNGLNG
           | DEFLNGPTR
           | DEFOBJ
           | DEFSNG
           | DEFSTR
           | DEFVAR

    commonModuleDeclarationElement ::= moduleVariableDeclaration
           | privateConstDeclaration
           | privateTypeDeclaration
           | publicTypeDeclaration
           | privateEnumDeclaration
           | publicEnumDeclaration
           | privateExternalProcedureDeclaration

    moduleVariableDeclaration ::= publicVariableDecalation
           | privateVariableDeclaration
           | variableHelpAttribute

    variableHelpAttribute ::= ATTRIBUTE WS ambiguousIdentifier DOT VB_VARHELPID opt_89 EQ opt_90 opt_91 INTEGERLITERAL

    globalVariableDeclaration ::= GLOBAL WS variableDeclarationList

    publicVariableDecalation ::= PUBLIC opt_93 WS moduleVariableDeclarationList

    privateVariableDeclaration ::= grp_94 opt_97 moduleVariableDeclarationList

    moduleVariableDeclarationList ::= grp_98 list_103

    variableDeclarationList ::= variableDcl list_107

    variableDcl ::= typedVariableDcl
           | untypedVariableDcl

    typedVariableDcl ::= typedName opt_108 opt_109

    untypedVariableDcl ::= ambiguousIdentifier opt_110 opt_112

    arrayClause ::= arrayDim opt_114

    asClause ::= asAutoObject
           | asType

    witheventsVariableDcl ::= WITHEVENTS wsc ambiguousIdentifier wsc AS opt_115 classTypeName

    classTypeName ::= definedTypeExpression

    arrayDim ::= LPAREN opt_116 opt_117 opt_118 RPAREN

    boundsList ::= dimSpec list_122

    dimSpec ::= opt_123 opt_124 upperBound

    lowerBound ::= constantExpression wsc TO wsc

    upperBound ::= constantExpression

    asAutoObject ::= AS WS NEW WS classTypeName

    asType ::= AS WS typeSpec

    typeSpec ::= fixedLengthStringSpec
           | typeExpression

    fixedLengthStringSpec ::= STRING WS STAR WS stringLength

    stringLength ::= INTEGERLITERAL
           | constantName

    constantName ::= simpleNameExpression

    publicConstDeclaration ::= grp_125 wsc moduleConstDeclaration

    privateConstDeclaration ::= opt_127 moduleConstDeclaration

    moduleConstDeclaration ::= constDeclaration

    constDeclaration ::= CONST wsc constItemList

    constItemList ::= constItem list_131

    constItem ::= typedNameConstItem
           | untypedNameConstItem

    typedNameConstItem ::= typedName opt_132 EQ opt_133 constantExpression

    untypedNameConstItem ::= ambiguousIdentifier opt_135 opt_136 EQ opt_137 constantExpression

    constAsClause ::= AS wsc builtinType

    publicTypeDeclaration ::= opt_140 udtDeclaration

    privateTypeDeclaration ::= PRIVATE wsc udtDeclaration

    udtDeclaration ::= TYPE wsc untypedName list_141 udtMemberList list_142 END wsc TYPE

    udtMemberList ::= udtElement list_144

    udtElement ::= remStatement
           | udtMember

    udtMember ::= reservedNameMemberDcl
           | untypedNameMemberDcl

    untypedNameMemberDcl ::= ambiguousIdentifier optionalArrayClause

    reservedNameMemberDcl ::= reservedMemberName wsc asClause

    optionalArrayClause ::= opt_145 wsc asClause

    reservedMemberName ::= statementKeyword
           | markerKeyword
           | operatorIdentifier
           | specialForm
           | reservedName
           | literalIdentifier
           | reservedForImplementationUse
           | futureReserved

    globalEnumDeclaration ::= GLOBAL wsc enumDeclaration

    publicEnumDeclaration ::= opt_147 enumDeclaration

    privateEnumDeclaration ::= PRIVATE wsc enumDeclaration

    enumDeclaration ::= ENUM wsc untypedName list_148 enumMemberList list_149 END wsc ENUM

    enumMemberList ::= enumElement list_151

    enumElement ::= remStatement
           | enumMember

    enumMember ::= untypedName opt_155

    publicExternalProcedureDeclaration ::= opt_157 externalProcDcl

    privateExternalProcedureDeclaration ::= PRIVATE wsc externalProcDcl

    externalProcDcl ::= DECLARE wsc opt_159 grp_160

    externalSub ::= SUB wsc subroutineName wsc libInfo opt_162

    externalFunction ::= FUNCTION wsc functionName wsc libInfo opt_164 opt_166

    libInfo ::= libClause opt_168

    libClause ::= LIB wsc STRINGLITERAL

    aliasClause ::= ALIAS wsc STRINGLITERAL

    implementsDirective ::= IMPLEMENTS WS classTypeName

    eventDeclaration ::= opt_169 wsc EVENT wsc ambiguousIdentifier opt_170

    eventParameterList ::= LPAREN opt_171 opt_172 opt_173 RPAREN

    proceduralModuleCode ::= list_176

    classModuleCode ::= list_179

    proceduralModuleCodeElement ::= commonModuleCodeElement

    classModuleCodeElement ::= commonModuleCodeElement
           | implementsDirective

    commonModuleCodeElement ::= remStatement
           | procedureDeclaration
           | attributeStatement

    procedureDeclaration ::= subroutineDeclaration
           | functionDeclaration
           | propertyGetDeclaration
           | propertyLhsDeclaration

    subroutineDeclaration ::= opt_181 grp_182 opt_194 opt_195 list_196 END wsc SUB opt_197

    functionDeclaration ::= opt_199 grp_200 opt_216 opt_217 list_218 END wsc FUNCTION opt_219

    propertyGetDeclaration ::= opt_221 grp_222 opt_236 opt_237 list_238 END wsc PROPERTY opt_239

    propertyLhsDeclaration ::= opt_241 grp_242 opt_249 opt_250 list_251 END wsc PROPERTY opt_252

    endLabel ::= list_253 endOfLineNoWs statementLabelDefinition

    procedureTail ::= opt_254 NEWLINE
           | opt_255 commentBody
           | opt_256 COLON opt_257 remStatement

    procedureScope ::= PRIVATE
           | PUBLIC
           | FRIEND
           | GLOBAL

    initialStatic ::= STATIC

    trailingStatic ::= STATIC

    subroutineName ::= ambiguousIdentifier
           | prefixedName

    functionName ::= typedName
           | ambiguousIdentifier
           | prefixedName

    prefixedName ::= eventHandlerName
           | implementedName
           | lifecycleHandlerName

    functionType ::= AS wsc typeExpression opt_258 opt_259

    arrayDesignator ::= LPAREN opt_260 RPAREN

    procedureParameters ::= LPAREN opt_261 opt_262 opt_263 RPAREN

    propertyParameters ::= LPAREN opt_264 opt_268 valueParam opt_269 RPAREN

    parameterList ::= seq_272
           | seq_277
           | optionalParameters
           | paramArray

    positionalParameters ::= positionalParam list_281

    optionalParameters ::= optionalParam list_285

    valueParam ::= positionalParam

    positionalParam ::= opt_287 paramDcl

    optionalParam ::= optionalPrefix wsc paramDcl opt_288 opt_289

    paramArray ::= PARAMARRAY wsc ambiguousIdentifier LPAREN opt_290 RPAREN opt_293

    paramDcl ::= untypedNameParamDcl
           | typedNameParamDcl

    untypedNameParamDcl ::= ambiguousIdentifier opt_294

    typedNameParamDcl ::= typedName opt_295

    optionalPrefix ::= OPTIONAL opt_297
           | parameterMechanism wsc OPTIONAL

    parameterMechanism ::= BYVAL
           | BYREF

    parameterType ::= opt_298 wsc AS wsc grp_299

    defaultValue ::= EQ opt_300 constantExpression

    eventHandlerName ::= ambiguousIdentifier

    implementedName ::= ambiguousIdentifier

    lifecycleHandlerName ::= CLASS_INITIALIZE
           | CLASS_TERMINATE

    procedureBody ::= statementBlock

    statementBlock ::= list_301

    blockStatement ::= list_302 endOfLineNoWs statementLabelDefinition
           | list_303 remStatement
           | statement
           | list_304 endOfLineNoWs attributeStatement

    statement ::= list_305 fileStatement
           | controlStatement
           | list_306 dataManipulationStatement
           | list_307 errorHandlingStatement

    statementLabelDefinition ::= identifierStatementLabel COLON
           | lineNumberLabel opt_308

    statementLabel ::= identifierStatementLabel
           | lineNumberLabel

    statementLabelList ::= statementLabel opt_312

    identifierStatementLabel ::= ambiguousIdentifier

    lineNumberLabel ::= INTEGERLITERAL

    remStatement ::= REMCOMMENT

    controlStatement ::= list_313 list_314 ifStatement
           | list_315 controlStatementExceptMultilineIf

    controlStatementExceptMultilineIf ::= assertStatement
           | callStatement
           | whileStatement
           | forStatement
           | exitForStatement
           | doStatement
           | exitDoStatement
           | singleLineIfStatement
           | selectCaseStatement
           | stopStatement
           | gotoStatement
           | onGotoStatement
           | gosubStatement
           | returnStatement
           | onGosubStatement
           | forEachStatement
           | exitSubStatement
           | exitFunctionStatement
           | exitPropertyStatement
           | raiseeventStatement
           | withStatement
           | endStatement

    callStatement ::= CALL wsc grp_316
           | grp_317 opt_319

    whileStatement ::= WHILE wsc booleanExpression opt_320 list_321 WEND

    forStatement ::= simpleForStatement
           | explicitForStatement

    simpleForStatement ::= forClause opt_322 list_323 NEXT

    explicitForStatement ::= forClause opt_324 list_325 grp_326 wsc boundVariableExpression

    nestedForStatement ::= explicitForStatement
           | explicitForEachStatement

    forClause ::= FOR wsc boundVariableExpression opt_329 EQ opt_330 startValue wsc TO wsc endValue opt_332

    startValue ::= expression

    endValue ::= expression

    stepClause ::= STEP wsc stepIncrement

    stepIncrement ::= expression

    forEachStatement ::= simpleForEachStatement
           | explicitForEachStatement

    simpleForEachStatement ::= forEachClause opt_333 list_334 NEXT

    explicitForEachStatement ::= forEachClause opt_335 endOfStatement grp_336 wsc boundVariableExpression

    forEachClause ::= FOR wsc EACH opt_339 boundVariableExpression opt_340 IN opt_341 collection

    collection ::= expression

    exitForStatement ::= EXIT wsc FOR

    doStatement ::= DO opt_344 opt_345 list_346 LOOP opt_349

    conditionClause ::= whileClause
           | untilClause

    whileClause ::= WHILE opt_350 booleanExpression

    untilClause ::= UNTIL opt_351 booleanExpression

    exitDoStatement ::= EXIT wsc DO

    ifStatement ::= IF opt_352 booleanExpression opt_353 THEN opt_354 list_355 opt_356 list_357 grp_358

    elseIfBlock ::= list_360 endOfLine ELSEIF opt_361 booleanExpression opt_362 THEN opt_363 opt_364
           | list_365 ELSEIF opt_366 booleanExpression opt_367 THEN opt_368

    elseBlock ::= list_369 ELSE opt_370 opt_371 opt_372

    singleLineIfStatement ::= ifWithNonEmptyThen
           | ifWithEmptyThen

    ifWithNonEmptyThen ::= IF wsc booleanExpression wsc THEN opt_373 listOrLabel opt_375

    ifWithEmptyThen ::= IF wsc booleanExpression wsc THEN wsc singleLineElseClause

    singleLineElseClause ::= ELSE opt_376 opt_377

    listOrLabel ::= seq_382
           | opt_383 opt_384 sameLineStatement list_389

    sameLineStatement ::= fileStatement
           | errorHandlingStatement
           | dataManipulationStatement
           | controlStatementExceptMultilineIf

    selectCaseStatement ::= SELECT wsc CASE wsc selectExpression list_390 opt_391 list_392 END wsc SELECT

    caseClause ::= list_393 CASE opt_394 rangeClause list_398 opt_399

    caseElseClause ::= list_400 CASE wsc ELSE opt_401

    rangeClause ::= expression
           | startValue opt_402 TO opt_403 endValue
           | opt_404 wsc comparisonOperator opt_405 expression

    selectExpression ::= expression

    comparisonOperator ::= EQ
           | NEW
           | LT
           | GT
           | LEQ
           | GEQ

    stopStatement ::= STOP

    gotoStatement ::= grp_406 wsc statementLabel

    onGotoStatement ::= ON opt_407 expression GOTO wsc statementLabelList

    gosubStatement ::= grp_408 wsc statementLabel

    returnStatement ::= RETURN

    onGosubStatement ::= ON opt_410 expression opt_411 GOSUB wsc statementLabelList

    exitSubStatement ::= EXIT wsc SUB

    exitFunctionStatement ::= EXIT wsc FUNCTION

    exitPropertyStatement ::= EXIT wsc PROPERTY

    raiseeventStatement ::= RAISEEVENT opt_412 ambiguousIdentifier opt_413 opt_417

    eventArgumentList ::= opt_423

    eventArgument ::= expression

    withStatement ::= WITH opt_424 expression opt_425 list_426 END wsc WITH

    endStatement ::= END

    assertStatement ::= DEBUG DOT ASSERT wsc booleanExpression

    dataManipulationStatement ::= localVariableDeclaration
           | staticVariableDeclaration
           | localConstDeclaration
           | redimStatement
           | eraseStatement
           | midStatement
           | rsetStatement
           | lsetStatement
           | letStatement
           | setStatement

    localVariableDeclaration ::= DIM opt_427 opt_428 opt_429 variableDeclarationList

    staticVariableDeclaration ::= STATIC wsc variableDeclarationList

    localConstDeclaration ::= constDeclaration

    redimStatement ::= REDIM opt_431 opt_432 redimDeclarationList

    redimDeclarationList ::= redimVariableDcl list_436

    redimVariableDcl ::= redimTypedVariableDcl
           | redimUntypedDcl
           | withExpressionDcl
           | memberAccessExpressionDcl

    redimTypedVariableDcl ::= typedName opt_437 dynamicArrayDim

    redimUntypedDcl ::= untypedName opt_438 dynamicArrayClause

    withExpressionDcl ::= withExpression opt_439 dynamicArrayDim

    memberAccessExpressionDcl ::= memberAccessExpression opt_440 dynamicArrayDim

    dynamicArrayDim ::= LPAREN opt_441 dynamicBoundsList opt_442 RPAREN

    dynamicBoundsList ::= dynamicDimSpec list_446

    dynamicDimSpec ::= opt_448 dynamicUpperBound

    dynamicLowerBound ::= integerExpression opt_449 TO

    dynamicUpperBound ::= integerExpression

    dynamicArrayClause ::= dynamicArrayDim opt_450 opt_451

    eraseStatement ::= ERASE opt_452 eraseList

    eraseList ::= eraseElement list_456

    eraseElement ::= lExpression

    midStatement ::= modeSpecifier opt_457 LPAREN opt_458 stringArgument opt_459 COMMA opt_460 startMid opt_461 opt_464 RPAREN opt_465 EQ opt_466 expression

    modeSpecifier ::= MID
           | MIDB
           | MID_D
           | MIDB_D

    stringArgument ::= boundVariableExpression

    startMid ::= integerExpression

    length ::= integerExpression

    lsetStatement ::= LSET opt_467 boundVariableExpression opt_468 EQ opt_469 expression

    rsetStatement ::= RSET opt_470 boundVariableExpression opt_471 EQ opt_472 expression

    letStatement ::= opt_474 lExpression opt_475 EQ opt_476 expression

    setStatement ::= SET wsc lExpression opt_477 EQ opt_478 expression

    errorHandlingStatement ::= onErrorStatement
           | resumeStatement
           | errorStatement

    onErrorStatement ::= ON wsc ERROR opt_479 errorBehavior

    errorBehavior ::= RESUME wsc NEXT
           | GOTO opt_480 statementLabel

    resumeStatement ::= RESUME opt_481 opt_483

    errorStatement ::= ERROR wsc errorNumber

    errorNumber ::= integerExpression

    fileStatement ::= openStatement
           | closeStatement
           | seekStatement
           | lockStatement
           | unlockStatement
           | lineInputStatement
           | widthStatement
           | printStatement
           | writeStatement
           | inputStatement
           | putStatement
           | getStatement

    openStatement ::= OPEN opt_484 pathName opt_485 opt_486 wsc opt_487 opt_488 opt_489 opt_490 AS opt_491 fileNumber opt_492 opt_493

    pathName ::= expression

    modeClause ::= FOR wsc modeOpt

    modeOpt ::= APPEND
           | BINARY
           | INPUT
           | OUTPUT
           | RANDOM

    accessClause ::= ACCESS wsc access

    access ::= READ
           | WRITE
           | READ wsc WRITE

    lock ::= SHARED
           | LOCK wsc READ
           | LOCK wsc WRITE
           | LOCK wsc READ wsc WRITE

    lenClause ::= LEN wsc EQ wsc recLength

    recLength ::= expression

    fileNumber ::= markedFileNumber
           | unmarkedFileNumber

    markedFileNumber ::= HASH expression

    unmarkedFileNumber ::= expression

    closeStatement ::= RESET
           | CLOSE opt_494 opt_495

    fileNumberList ::= fileNumber list_499

    seekStatement ::= SEEK wsc fileNumber opt_500 COMMA opt_501 position

    position ::= expression

    lockStatement ::= LOCK wsc fileNumber seq_504

    recordRange ::= startRecordNumber
           | opt_505 wsc TO wsc endRecordNumber

    startRecordNumber ::= expression

    endRecordNumber ::= expression

    unlockStatement ::= UNLOCK wsc fileNumber opt_509

    lineInputStatement ::= LINE wsc INPUT wsc markedFileNumber opt_510 COMMA opt_511 variableName

    variableName ::= variableExpression

    widthStatement ::= WIDTH wsc markedFileNumber opt_512 COMMA opt_513 lineWidth

    lineWidth ::= expression

    printStatement ::= opt_516 PRINT wsc opt_520 opt_521

    outputList ::= list_522

    outputItem ::= outputClause opt_523
           | charPosition

    outputClause ::= spcClause
           | tabClause
           | outputExpression

    charPosition ::= SEMI
           | COMMA
           | wsc

    outputExpression ::= expression

    spcClause ::= SPC wsc LPAREN opt_524 spcNumber opt_525 RPAREN

    spcNumber ::= expression

    tabClause ::= TAB wsc LPAREN opt_526 tabNumber opt_527 RPAREN

    tabNumber ::= expression

    writeStatement ::= WRITE wsc markedFileNumber opt_528 COMMA opt_529 opt_530

    inputStatement ::= INPUT wsc markedFileNumber opt_531 COMMA opt_532 inputList

    inputList ::= inputVariable list_536

    inputVariable ::= boundVariableExpression

    putStatement ::= PUT wsc fileNumber opt_537 COMMA opt_538 opt_539 opt_540 COMMA opt_541 data

    recordNumber ::= expression

    data ::= expression

    getStatement ::= GET wsc fileNumber opt_542 COMMA opt_543 opt_544 opt_545 COMMA opt_546 variable

    variable ::= variableExpression

    attributeStatement ::= ATTRIBUTE WS ambiguousIdentifier DOT attributeDescName opt_547 EQ opt_548 STRINGLITERAL
           | ATTRIBUTE WS ambiguousIdentifier DOT attributeUsrName opt_549 EQ opt_550 opt_551 INTEGERLITERAL
           | ATTRIBUTE WS ambiguousIdentifier DOT VB_PROCDATA DOT VB_INVOKE_FUNC WS EQ WS STRINGLITERAL

    attributeDescName ::= VB_DESCRIPTION
           | VB_VARDESCRIPTION
           | VB_MEMBERFLAGS
           | VB_VARMEMBERFLAGS

    attributeUsrName ::= VB_USERMEMID
           | VB_VARUSERMEMID

    expression ::= literalExpression
           | parenthesizedExpression
           | typeofIsExpression
           | NEW opt_552 expression
           | expression opt_553 POW opt_554 expression
           | MINUS opt_555 expression
           | expression opt_556 grp_557 opt_558 expression
           | expression opt_559 MOD opt_560 expression
           | expression opt_561 grp_562 opt_563 expression
           | expression opt_564 AMPERSAND opt_565 expression
           | expression opt_566 grp_567 opt_568 expression
           | NOT opt_569 expression
           | expression opt_570 grp_571 opt_572 expression
           | lExpression

    lExpression ::= simpleNameExpression
           | ME
           | lExpression DOT opt_573 unrestrictedName
           | lExpression opt_574 LINE_CONTINUATION opt_575 DOT opt_576 unrestrictedName
           | lExpression opt_577 LPAREN opt_578 argumentList opt_579 RPAREN
           | lExpression BANG unrestrictedName
           | lExpression opt_580 LINE_CONTINUATION opt_581 BANG unrestrictedName
           | lExpression opt_582 LINE_CONTINUATION opt_583 BANG opt_584 LINE_CONTINUATION opt_585 unrestrictedName
           | withExpression

    literalExpression ::= DATELITERAL
           | FLOATLITERAL
           | INTEGERLITERAL
           | STRINGLITERAL
           | literalIdentifier opt_586

    parenthesizedExpression ::= LPAREN opt_587 expression opt_588 RPAREN

    typeofIsExpression ::= TYPEOF opt_589 expression opt_590 IS opt_591 typeExpression

    simpleNameExpression ::= name
           | reservedName
           | specialForm

    memberAccessExpression ::= lExpression DOT opt_592 unrestrictedName
           | lExpression opt_593 LINE_CONTINUATION opt_594 DOT opt_595 unrestrictedName

    indexExpression ::= lExpression opt_596 LPAREN opt_597 argumentList opt_598 RPAREN

    argumentList ::= opt_599

    positionalOrNamedArgumentList ::= list_603 requiredPositionalArgument
           | list_607 namedArgumentList

    positionalArgument ::= opt_608

    requiredPositionalArgument ::= argumentExpression

    namedArgumentList ::= namedArgument list_612

    namedArgument ::= unrestrictedName opt_613 ASSIGN opt_614 argumentExpression

    argumentExpression ::= opt_616 expression
           | addressofExpression

    dictionaryAccessExpression ::= lExpression BANG unrestrictedName
           | lExpression opt_617 LINE_CONTINUATION opt_618 BANG unrestrictedName
           | lExpression opt_619 LINE_CONTINUATION opt_620 BANG opt_621 LINE_CONTINUATION opt_622 unrestrictedName

    withExpression ::= withMemberAccessExpression
           | withDictionaryAccessExpression

    withMemberAccessExpression ::= DOT unrestrictedName

    withDictionaryAccessExpression ::= BANG unrestrictedName

    constantExpression ::= expression

    ccExpression ::= expression

    booleanExpression ::= expression

    integerExpression ::= expression

    variableExpression ::= lExpression

    boundVariableExpression ::= lExpression

    typeExpression ::= builtinType
           | definedTypeExpression

    definedTypeExpression ::= simpleNameExpression
           | memberAccessExpression

    addressofExpression ::= ADDRESSOF wsc procedurePointerExpression

    procedurePointerExpression ::= simpleNameExpression
           | memberAccessExpression

    wsc ::= list_624

    endOfLine ::= opt_625 grp_626 opt_627

    endOfLineNoWs ::= opt_628 grp_629

    endOfStatement ::= list_633

    endOfStatementNoWs ::= list_636

    commentBody ::= COMMENT

    reservedIdentifier ::= statementKeyword
           | markerKeyword
           | operatorIdentifier
           | specialForm
           | reservedName
           | reservedTypeIdentifier
           | literalIdentifier
           | remKeyword
           | reservedForImplementationUse
           | futureReserved

    ambiguousIdentifier ::= IDENTIFIER
           | ambiguousKeyword

    statementKeyword ::= CALL
           | CASE
           | CLOSE
           | CONST
           | DECLARE
           | DEFBOOL
           | DEFBYTE
           | DEFCUR
           | DEFDATE
           | DEFDBL
           | DEFINT
           | DEFLNG
           | DEFLNGLNG
           | DEFLNGPTR
           | DEFOBJ
           | DEFSNG
           | DEFSTR
           | DEFVAR
           | DIM
           | DO
           | ELSE
           | ELSEIF
           | END
           | ENDIF
           | ENUM
           | ERASE
           | EVENT
           | EXIT
           | FOR
           | FRIEND
           | FUNCTION
           | GET
           | GLOBAL
           | GOSUB
           | GOTO
           | IF
           | IMPLEMENTS
           | INPUT
           | LET
           | LOCK
           | LOOP
           | LSET
           | NEXT
           | ON
           | OPEN
           | OPTION
           | PRINT
           | PRIVATE
           | PUBLIC
           | PUT
           | RAISEEVENT
           | REDIM
           | RESUME
           | RETURN
           | RSET
           | SEEK
           | SELECT
           | SET
           | STATIC
           | STOP
           | SUB
           | TYPE
           | UNLOCK
           | WEND
           | WHILE
           | WITH
           | WRITE

    remKeyword ::= REM

    markerKeyword ::= ANY
           | AS
           | BYREF
           | BYVAL
           | CASE
           | EACH
           | ELSE
           | IN
           | NEW
           | SHARED
           | UNTIL
           | WITHEVENTS
           | WRITE
           | OPTIONAL
           | PARAMARRAY
           | PRESERVE
           | SPC
           | TAB
           | THEN
           | TO

    operatorIdentifier ::= ADDRESSOF
           | AND
           | EQV
           | IMP
           | IS
           | LIKE
           | NEW
           | MOD
           | NOT
           | OR
           | TYPEOF
           | XOR

    reservedName ::= ABS
           | CBOOL
           | CBYTE
           | CCUR
           | CDATE
           | CDBL
           | CDEC
           | CINT
           | CLNG
           | CLNGLNG
           | CLNGPTR
           | CSNG
           | CSTR
           | CVAR
           | CVERR
           | DATE
           | DEBUG
           | DOEVENTS
           | FIX
           | INT
           | LEN
           | LENB
           | ME
           | PSET
           | SCALE
           | SGN
           | STRING

    specialForm ::= ARRAY
           | CIRCLE
           | INPUT
           | INPUTB
           | LBOUND
           | SCALE
           | UBOUND

    reservedTypeIdentifier ::= BOOLEAN
           | BYTE
           | CURRENCY
           | DATE
           | DOUBLE
           | INTEGER
           | LONG
           | LONGLONG
           | LONGPTR
           | SINGLE
           | STRING
           | VARIANT

    reservedTypeIdentifierB ::= BOOLEAN_B
           | BYTE_B
           | CURRENCY_B
           | DATE_B
           | DOUBLE_B
           | INTEGER_B
           | LONG_B
           | LONGLONG_B
           | LONGPTR_B
           | SINGLE_B
           | STRING_B
           | VARIANT_B

    typeableReservedName ::= DATE
           | STRING

    literalIdentifier ::= booleanLiteralIdentifier
           | objectLiteralIdentifier
           | variantLiteralIdentifier

    booleanLiteralIdentifier ::= TRUE
           | FALSE

    objectLiteralIdentifier ::= NOTHING

    variantLiteralIdentifier ::= EMPTY_X
           | NULL_

    reservedForImplementationUse ::= ATTRIBUTE
           | LINEINPUT
           | VB_BASE
           | VB_CONTROL
           | VB_CREATABLE
           | VB_CUSTOMIZABLE
           | VB_DESCRIPTION
           | VB_EXPOSED
           | VB_EXT_KEY
           | VB_GLOBALNAMESPACE
           | VB_HELPID
           | VB_INVOKE_FUNC
           | VB_INVOKE_PROPERTY
           | VB_INVOKE_PROPERTYPUT
           | VB_INVOKE_PROPERTYPUTREF
           | VB_MEMBERFLAGS
           | VB_NAME
           | VB_PREDECLAREDID
           | VB_PROCDATA
           | VB_TEMPLATEDERIVED
           | VB_USERMEMID
           | VB_VARDESCRIPTION
           | VB_VARHELPID
           | VB_VARMEMBERFLAGS
           | VB_VARPROCDATA
           | VB_VARUSERMEMID

    futureReserved ::= CDECL
           | DECIMAL
           | DEFDEC

    builtinType ::= reservedTypeIdentifier
           | reservedTypeIdentifierB
           | OBJECT
           | OBJECT_B

    typedName ::= ambiguousIdentifier typeSuffix
           | typeableReservedName typeSuffix

    typeSuffix ::= AMP
           | PERCENT
           | HASH
           | BANG
           | AT
           | DOLLAR
           | CARET

    ambiguousKeyword ::= ACCESS
           | ALIAS
           | APPACTIVATE
           | APPEND
           | ASSERT
           | BASE
           | BEGIN
           | BEGINPROPERTY
           | BINARY
           | CLASS
           | CHDIR
           | CHDRIVE
           | CLASS_INITIALIZE
           | CLASS_TERMINATE
           | COLLECTION
           | COMPARE
           | DATABASE
           | DELETESETTING
           | ERROR
           | ENDPROPERTY
           | FILECOPY
           | GO
           | KILL
           | LOAD
           | LIB
           | LINE
           | MID
           | MIDB
           | MID_D
           | MIDB_D
           | MKDIR
           | MODULE
           | NAME
           | OBJECT
           | OUTPUT
           | PROPERTY
           | RANDOM
           | RANDOMIZE
           | READ
           | RESET
           | RMDIR
           | SAVEPICTURE
           | SAVESETTING
           | SENDKEYS
           | SETATTR
           | STEP
           | TEXT
           | TIME
           | UNLOAD
           | VERSION
           | WIDTH

    list_1 ::= $empty | list_1 endOfLineNoWs

    grp_2 ::= proceduralModule | classFileHeader classModule | formFileHeader classModule

    list_3 ::= $empty | list_3 endOfLine

    opt_4 ::= WS | $empty

    list_5 ::= endOfLine | list_5 endOfLine

    list_6 ::= beginBlockConfigElement | list_6 beginBlockConfigElement

    list_7 ::= endOfLine | list_7 endOfLine

    list_8 ::= endOfLine | list_8 endOfLine

    seq_9 ::= OBJECT DOT

    opt_10 ::= seq_9 | $empty

    opt_11 ::= UNDERSCORE | $empty

    opt_12 ::= WS | $empty

    opt_13 ::= WS | $empty

    opt_15 ::= MINUS | $empty

    seq_16 ::= opt_15 literalExpression

    grp_14 ::= seq_16 | FILEOFFSET

    list_17 ::= $empty | list_17 formObjectAssign

    list_18 ::= endOfLine | list_18 endOfLine

    opt_19 ::= WS | $empty

    opt_20 ::= WS | $empty

    opt_21 ::= WS | $empty

    seq_22 ::= SEMI opt_21 STRINGLITERAL

    opt_23 ::= seq_22 | $empty

    list_24 ::= endOfLine | list_24 endOfLine

    seq_26 ::= ambiguousIdentifier DOT ambiguousIdentifier

    grp_25 ::= GUID | seq_26

    list_27 ::= beginBlockConfigElement | list_27 beginBlockConfigElement

    list_28 ::= endOfLine | list_28 endOfLine

    list_29 ::= endOfLine | list_29 endOfLine

    opt_30 ::= WS | $empty

    seq_31 ::= WS GUID opt_30

    opt_32 ::= seq_31 | $empty

    list_33 ::= beginBlockConfigElement | list_33 beginBlockConfigElement

    list_34 ::= endOfLine | list_34 endOfLine

    list_35 ::= $empty | list_35 endOfLineNoWs

    list_36 ::= $empty | list_36 endOfLine

    list_37 ::= $empty | list_37 endOfLine

    opt_38 ::= WS | $empty

    opt_39 ::= WS | $empty

    opt_40 ::= WS | $empty

    list_41 ::= endOfLine | list_41 endOfLine

    seq_42 ::= list_41 classAttr

    list_43 ::= seq_42 | list_43 seq_42

    opt_44 ::= WS | $empty

    opt_45 ::= WS | $empty

    opt_46 ::= WS | $empty

    opt_47 ::= WS | $empty

    opt_48 ::= WS | $empty

    opt_49 ::= WS | $empty

    opt_50 ::= WS | $empty

    opt_51 ::= WS | $empty

    opt_52 ::= WS | $empty

    opt_53 ::= WS | $empty

    opt_54 ::= WS | $empty

    opt_55 ::= WS | $empty

    opt_56 ::= WS | $empty

    opt_57 ::= WS | $empty

    opt_58 ::= WS | $empty

    opt_59 ::= WS | $empty

    opt_60 ::= WS | $empty

    opt_61 ::= WS | $empty

    opt_62 ::= WS | $empty

    opt_63 ::= proceduralModuleDeclarationSection | $empty

    list_64 ::= $empty | list_64 endOfLine

    opt_65 ::= classModuleDeclarationSection | $empty

    list_66 ::= endOfLine | list_66 endOfLine

    seq_67 ::= list_66 proceduralModuleDeclarationElement

    list_68 ::= seq_67 | list_68 seq_67

    list_69 ::= endOfLine | list_69 endOfLine

    seq_70 ::= list_69 proceduralModuleDirectiveElement

    list_71 ::= $empty | list_71 seq_70

    list_72 ::= endOfLine | list_72 endOfLine

    seq_73 ::= list_71 list_72 defDirective

    seq_74 ::= proceduralModuleDeclarationElement endOfLineNoWs

    list_75 ::= $empty | list_75 seq_74

    list_76 ::= endOfLine | list_76 endOfLine

    seq_77 ::= classModuleDeclarationElement list_76

    list_78 ::= seq_77 | list_78 seq_77

    list_79 ::= endOfLine | list_79 endOfLine

    seq_80 ::= classModuleDirectiveElement list_79

    list_81 ::= $empty | list_81 seq_80

    seq_82 ::= list_81 defDirective

    list_83 ::= endOfLine | list_83 endOfLine

    seq_84 ::= classModuleDeclarationElement list_83

    list_85 ::= $empty | list_85 seq_84

    grp_86 ::= BINARY | TEXT

    seq_87 ::= WS COMMA WS letterSpec

    list_88 ::= $empty | list_88 seq_87

    opt_89 ::= WS | $empty

    opt_90 ::= WS | $empty

    opt_91 ::= MINUS | $empty

    seq_92 ::= WS SHARED

    opt_93 ::= seq_92 | $empty

    grp_95 ::= PRIVATE | DIM

    grp_94 ::= grp_95 wsc

    seq_96 ::= SHARED wsc

    opt_97 ::= seq_96 | $empty

    grp_98 ::= witheventsVariableDcl | variableDcl

    opt_100 ::= wsc | $empty

    opt_101 ::= wsc | $empty

    grp_102 ::= witheventsVariableDcl | variableDcl

    grp_99 ::= opt_100 COMMA opt_101 grp_102

    list_103 ::= $empty | list_103 grp_99

    opt_104 ::= wsc | $empty

    opt_105 ::= wsc | $empty

    seq_106 ::= opt_104 COMMA opt_105 variableDcl

    list_107 ::= $empty | list_107 seq_106

    opt_108 ::= wsc | $empty

    opt_109 ::= arrayDim | $empty

    opt_110 ::= wsc | $empty

    grp_111 ::= arrayClause | asClause

    opt_112 ::= grp_111 | $empty

    seq_113 ::= wsc asClause

    opt_114 ::= seq_113 | $empty

    opt_115 ::= wsc | $empty

    opt_116 ::= wsc | $empty

    opt_117 ::= boundsList | $empty

    opt_118 ::= wsc | $empty

    opt_119 ::= wsc | $empty

    opt_120 ::= wsc | $empty

    seq_121 ::= opt_119 COMMA opt_120 dimSpec

    list_122 ::= $empty | list_122 seq_121

    opt_123 ::= lowerBound | $empty

    opt_124 ::= wsc | $empty

    grp_125 ::= GLOBAL | PUBLIC

    seq_126 ::= PRIVATE wsc

    opt_127 ::= seq_126 | $empty

    opt_128 ::= wsc | $empty

    opt_129 ::= wsc | $empty

    seq_130 ::= opt_128 COMMA opt_129 constItem

    list_131 ::= $empty | list_131 seq_130

    opt_132 ::= wsc | $empty

    opt_133 ::= wsc | $empty

    seq_134 ::= wsc constAsClause

    opt_135 ::= seq_134 | $empty

    opt_136 ::= wsc | $empty

    opt_137 ::= wsc | $empty

    grp_139 ::= GLOBAL | PUBLIC

    grp_138 ::= grp_139 wsc

    opt_140 ::= grp_138 | $empty

    list_141 ::= endOfStatement | list_141 endOfStatement

    list_142 ::= endOfStatement | list_142 endOfStatement

    seq_143 ::= endOfStatement udtElement

    list_144 ::= $empty | list_144 seq_143

    opt_145 ::= arrayDim | $empty

    seq_146 ::= PUBLIC wsc

    opt_147 ::= seq_146 | $empty

    list_148 ::= endOfStatement | list_148 endOfStatement

    list_149 ::= endOfStatement | list_149 endOfStatement

    seq_150 ::= endOfStatement enumElement

    list_151 ::= $empty | list_151 seq_150

    opt_152 ::= wsc | $empty

    opt_153 ::= wsc | $empty

    seq_154 ::= opt_152 EQ opt_153 constantExpression

    opt_155 ::= seq_154 | $empty

    seq_156 ::= PUBLIC wsc

    opt_157 ::= seq_156 | $empty

    seq_158 ::= PTRSAFE wsc

    opt_159 ::= seq_158 | $empty

    grp_160 ::= externalSub | externalFunction

    seq_161 ::= wsc procedureParameters

    opt_162 ::= seq_161 | $empty

    seq_163 ::= wsc procedureParameters

    opt_164 ::= seq_163 | $empty

    seq_165 ::= wsc functionType

    opt_166 ::= seq_165 | $empty

    seq_167 ::= wsc aliasClause

    opt_168 ::= seq_167 | $empty

    opt_169 ::= PUBLIC | $empty

    opt_170 ::= eventParameterList | $empty

    opt_171 ::= wsc | $empty

    opt_172 ::= positionalParameters | $empty

    opt_173 ::= wsc | $empty

    list_174 ::= $empty | list_174 endOfLine

    seq_175 ::= proceduralModuleCodeElement list_174

    list_176 ::= $empty | list_176 seq_175

    list_177 ::= $empty | list_177 endOfLine

    seq_178 ::= classModuleCodeElement list_177

    list_179 ::= $empty | list_179 seq_178

    seq_180 ::= procedureScope wsc

    opt_181 ::= seq_180 | $empty

    seq_183 ::= initialStatic wsc

    opt_184 ::= seq_183 | $empty

    opt_185 ::= wsc | $empty

    opt_186 ::= procedureParameters | $empty

    seq_187 ::= opt_185 opt_186

    seq_188 ::= opt_184 SUB wsc subroutineName seq_187

    opt_189 ::= wsc | $empty

    seq_190 ::= opt_189 procedureParameters

    opt_191 ::= seq_190 | $empty

    opt_192 ::= wsc | $empty

    seq_193 ::= SUB wsc subroutineName opt_191 opt_192 trailingStatic

    grp_182 ::= seq_188 | seq_193

    opt_194 ::= procedureBody | $empty

    opt_195 ::= endLabel | $empty

    list_196 ::= endOfStatement | list_196 endOfStatement

    opt_197 ::= procedureTail | $empty

    seq_198 ::= procedureScope wsc

    opt_199 ::= seq_198 | $empty

    seq_201 ::= initialStatic wsc

    opt_202 ::= seq_201 | $empty

    opt_203 ::= wsc | $empty

    seq_204 ::= opt_203 procedureParameters

    opt_205 ::= seq_204 | $empty

    opt_206 ::= wsc | $empty

    seq_207 ::= opt_206 functionType

    opt_208 ::= seq_207 | $empty

    opt_209 ::= wsc | $empty

    seq_210 ::= opt_209 procedureParameters

    opt_211 ::= seq_210 | $empty

    opt_212 ::= wsc | $empty

    seq_213 ::= opt_212 functionType

    opt_214 ::= seq_213 | $empty

    opt_215 ::= wsc | $empty

    grp_200 ::= opt_202 FUNCTION wsc functionName opt_205 opt_208 | FUNCTION wsc functionName opt_211 opt_214 opt_215 trailingStatic

    opt_216 ::= procedureBody | $empty

    opt_217 ::= endLabel | $empty

    list_218 ::= endOfStatement | list_218 endOfStatement

    opt_219 ::= procedureTail | $empty

    seq_220 ::= procedureScope wsc

    opt_221 ::= seq_220 | $empty

    seq_223 ::= initialStatic wsc

    opt_224 ::= seq_223 | $empty

    opt_225 ::= wsc | $empty

    seq_226 ::= opt_225 procedureParameters

    opt_227 ::= seq_226 | $empty

    opt_228 ::= wsc | $empty

    seq_229 ::= opt_228 functionType

    opt_230 ::= seq_229 | $empty

    opt_231 ::= procedureParameters | $empty

    opt_232 ::= wsc | $empty

    seq_233 ::= opt_232 functionType

    opt_234 ::= seq_233 | $empty

    opt_235 ::= wsc | $empty

    grp_222 ::= opt_224 PROPERTY wsc GET wsc functionName opt_227 opt_230 | PROPERTY wsc GET wsc functionName opt_231 opt_234 opt_235 trailingStatic

    opt_236 ::= procedureBody | $empty

    opt_237 ::= endLabel | $empty

    list_238 ::= endOfStatement | list_238 endOfStatement

    opt_239 ::= procedureTail | $empty

    seq_240 ::= procedureScope wsc

    opt_241 ::= seq_240 | $empty

    seq_243 ::= initialStatic wsc

    opt_244 ::= seq_243 | $empty

    grp_245 ::= LET | SET

    opt_246 ::= wsc | $empty

    grp_247 ::= LET | SET

    opt_248 ::= wsc | $empty

    grp_242 ::= opt_244 PROPERTY wsc grp_245 wsc subroutineName opt_246 propertyParameters | PROPERTY wsc grp_247 wsc subroutineName propertyParameters opt_248 trailingStatic

    opt_249 ::= procedureBody | $empty

    opt_250 ::= endLabel | $empty

    list_251 ::= endOfStatement | list_251 endOfStatement

    opt_252 ::= procedureTail | $empty

    list_253 ::= $empty | list_253 endOfStatement

    opt_254 ::= wsc | $empty

    opt_255 ::= wsc | $empty

    opt_256 ::= WS | $empty

    opt_257 ::= WS | $empty

    opt_258 ::= wsc | $empty

    opt_259 ::= arrayDesignator | $empty

    opt_260 ::= wsc | $empty

    opt_261 ::= wsc | $empty

    opt_262 ::= parameterList | $empty

    opt_263 ::= wsc | $empty

    opt_264 ::= wsc | $empty

    opt_265 ::= wsc | $empty

    opt_266 ::= wsc | $empty

    seq_267 ::= parameterList opt_265 COMMA opt_266

    opt_268 ::= seq_267 | $empty

    opt_269 ::= wsc | $empty

    opt_270 ::= wsc | $empty

    opt_271 ::= wsc | $empty

    seq_272 ::= positionalParameters opt_270 COMMA opt_271 optionalParameters

    opt_273 ::= wsc | $empty

    opt_274 ::= wsc | $empty

    seq_275 ::= opt_273 COMMA opt_274 paramArray

    opt_276 ::= seq_275 | $empty

    seq_277 ::= positionalParameters opt_276

    opt_278 ::= wsc | $empty

    opt_279 ::= wsc | $empty

    seq_280 ::= opt_278 COMMA opt_279 positionalParam

    list_281 ::= $empty | list_281 seq_280

    opt_282 ::= wsc | $empty

    opt_283 ::= wsc | $empty

    seq_284 ::= opt_282 COMMA opt_283 optionalParam

    list_285 ::= $empty | list_285 seq_284

    seq_286 ::= parameterMechanism wsc

    opt_287 ::= seq_286 | $empty

    opt_288 ::= wsc | $empty

    opt_289 ::= defaultValue | $empty

    opt_290 ::= wsc | $empty

    grp_292 ::= VARIANT | LBRACKET VARIANT RBRACKET

    grp_291 ::= wsc AS wsc grp_292

    opt_293 ::= grp_291 | $empty

    opt_294 ::= parameterType | $empty

    opt_295 ::= arrayDesignator | $empty

    seq_296 ::= wsc parameterMechanism

    opt_297 ::= seq_296 | $empty

    opt_298 ::= arrayDesignator | $empty

    grp_299 ::= typeExpression | ANY

    opt_300 ::= wsc | $empty

    list_301 ::= blockStatement | list_301 blockStatement

    list_302 ::= $empty | list_302 endOfStatement

    list_303 ::= endOfStatement | list_303 endOfStatement

    list_304 ::= $empty | list_304 endOfStatement

    list_305 ::= endOfStatement | list_305 endOfStatement

    list_306 ::= endOfStatement | list_306 endOfStatement

    list_307 ::= endOfStatement | list_307 endOfStatement

    opt_308 ::= COLON | $empty

    opt_309 ::= wsc | $empty

    opt_310 ::= wsc | $empty

    seq_311 ::= opt_309 COMMA opt_310 statementLabel

    opt_312 ::= seq_311 | $empty

    list_313 ::= $empty | list_313 endOfStatement

    list_314 ::= endOfLine | list_314 endOfLine

    list_315 ::= endOfStatement | list_315 endOfStatement

    grp_316 ::= simpleNameExpression | memberAccessExpression | indexExpression | withExpression

    grp_317 ::= simpleNameExpression | memberAccessExpression | withExpression

    seq_318 ::= wsc argumentList

    opt_319 ::= seq_318 | $empty

    opt_320 ::= statementBlock | $empty

    list_321 ::= endOfStatement | list_321 endOfStatement

    opt_322 ::= statementBlock | $empty

    list_323 ::= endOfStatement | list_323 endOfStatement

    opt_324 ::= statementBlock | $empty

    list_325 ::= endOfStatement | list_325 endOfStatement

    opt_327 ::= wsc | $empty

    seq_328 ::= nestedForStatement opt_327 COMMA

    grp_326 ::= NEXT | seq_328

    opt_329 ::= wsc | $empty

    opt_330 ::= wsc | $empty

    seq_331 ::= wsc stepClause

    opt_332 ::= seq_331 | $empty

    opt_333 ::= statementBlock | $empty

    list_334 ::= endOfStatement | list_334 endOfStatement

    opt_335 ::= statementBlock | $empty

    opt_337 ::= wsc | $empty

    seq_338 ::= nestedForStatement opt_337 COMMA

    grp_336 ::= NEXT | seq_338

    opt_339 ::= wsc | $empty

    opt_340 ::= wsc | $empty

    opt_341 ::= wsc | $empty

    opt_342 ::= wsc | $empty

    seq_343 ::= opt_342 conditionClause

    opt_344 ::= seq_343 | $empty

    opt_345 ::= statementBlock | $empty

    list_346 ::= endOfStatement | list_346 endOfStatement

    opt_347 ::= wsc | $empty

    seq_348 ::= opt_347 conditionClause

    opt_349 ::= seq_348 | $empty

    opt_350 ::= wsc | $empty

    opt_351 ::= wsc | $empty

    opt_352 ::= wsc | $empty

    opt_353 ::= wsc | $empty

    opt_354 ::= statementBlock | $empty

    list_355 ::= $empty | list_355 elseIfBlock

    opt_356 ::= elseBlock | $empty

    list_357 ::= endOfStatement | list_357 endOfStatement

    seq_359 ::= END wsc IF

    grp_358 ::= seq_359 | ENDIF

    list_360 ::= $empty | list_360 endOfStatement

    opt_361 ::= wsc | $empty

    opt_362 ::= wsc | $empty

    opt_363 ::= endOfLine | $empty

    opt_364 ::= statementBlock | $empty

    list_365 ::= $empty | list_365 endOfStatement

    opt_366 ::= wsc | $empty

    opt_367 ::= wsc | $empty

    opt_368 ::= statementBlock | $empty

    list_369 ::= endOfLine | list_369 endOfLine

    opt_370 ::= endOfLine | $empty

    opt_371 ::= wsc | $empty

    opt_372 ::= statementBlock | $empty

    opt_373 ::= wsc | $empty

    seq_374 ::= wsc singleLineElseClause

    opt_375 ::= seq_374 | $empty

    opt_376 ::= wsc | $empty

    opt_377 ::= listOrLabel | $empty

    opt_378 ::= wsc | $empty

    opt_379 ::= sameLineStatement | $empty

    seq_380 ::= COLON opt_378 opt_379

    list_381 ::= $empty | list_381 seq_380

    seq_382 ::= statementLabel list_381

    opt_383 ::= COLON | $empty

    opt_384 ::= wsc | $empty

    opt_385 ::= wsc | $empty

    opt_386 ::= wsc | $empty

    opt_387 ::= sameLineStatement | $empty

    seq_388 ::= opt_385 COLON opt_386 opt_387

    list_389 ::= $empty | list_389 seq_388

    list_390 ::= $empty | list_390 caseClause

    opt_391 ::= caseElseClause | $empty

    list_392 ::= endOfStatement | list_392 endOfStatement

    list_393 ::= endOfStatement | list_393 endOfStatement

    opt_394 ::= wsc | $empty

    opt_395 ::= wsc | $empty

    opt_396 ::= wsc | $empty

    seq_397 ::= opt_395 COMMA opt_396 rangeClause

    list_398 ::= $empty | list_398 seq_397

    opt_399 ::= statementBlock | $empty

    list_400 ::= endOfStatement | list_400 endOfStatement

    opt_401 ::= statementBlock | $empty

    opt_402 ::= wsc | $empty

    opt_403 ::= wsc | $empty

    opt_404 ::= IS | $empty

    opt_405 ::= wsc | $empty

    grp_406 ::= GO wsc TO | GOTO

    opt_407 ::= wsc | $empty

    seq_409 ::= GO wsc SUB

    grp_408 ::= seq_409 | GOSUB

    opt_410 ::= wsc | $empty

    opt_411 ::= wsc | $empty

    opt_412 ::= wsc | $empty

    opt_413 ::= wsc | $empty

    opt_414 ::= wsc | $empty

    opt_415 ::= wsc | $empty

    seq_416 ::= LPAREN opt_414 eventArgumentList opt_415 RPAREN

    opt_417 ::= seq_416 | $empty

    opt_418 ::= wsc | $empty

    opt_419 ::= wsc | $empty

    seq_420 ::= opt_418 COMMA opt_419 eventArgument

    list_421 ::= $empty | list_421 seq_420

    seq_422 ::= eventArgument list_421

    opt_423 ::= seq_422 | $empty

    opt_424 ::= wsc | $empty

    opt_425 ::= statementBlock | $empty

    list_426 ::= endOfStatement | list_426 endOfStatement

    opt_427 ::= wsc | $empty

    opt_428 ::= SHARED | $empty

    opt_429 ::= wsc | $empty

    seq_430 ::= wsc PRESERVE

    opt_431 ::= seq_430 | $empty

    opt_432 ::= wsc | $empty

    opt_433 ::= wsc | $empty

    opt_434 ::= wsc | $empty

    seq_435 ::= opt_433 COMMA opt_434 redimVariableDcl

    list_436 ::= $empty | list_436 seq_435

    opt_437 ::= wsc | $empty

    opt_438 ::= wsc | $empty

    opt_439 ::= wsc | $empty

    opt_440 ::= wsc | $empty

    opt_441 ::= wsc | $empty

    opt_442 ::= wsc | $empty

    opt_443 ::= wsc | $empty

    opt_444 ::= wsc | $empty

    seq_445 ::= opt_443 COMMA opt_444 dynamicDimSpec

    list_446 ::= $empty | list_446 seq_445

    seq_447 ::= dynamicLowerBound wsc

    opt_448 ::= seq_447 | $empty

    opt_449 ::= wsc | $empty

    opt_450 ::= wsc | $empty

    opt_451 ::= asClause | $empty

    opt_452 ::= wsc | $empty

    opt_453 ::= wsc | $empty

    opt_454 ::= wsc | $empty

    seq_455 ::= opt_453 COMMA opt_454 eraseElement

    list_456 ::= $empty | list_456 seq_455

    opt_457 ::= wsc | $empty

    opt_458 ::= wsc | $empty

    opt_459 ::= wsc | $empty

    opt_460 ::= wsc | $empty

    opt_461 ::= wsc | $empty

    opt_462 ::= wsc | $empty

    seq_463 ::= COMMA opt_462 length

    opt_464 ::= seq_463 | $empty

    opt_465 ::= wsc | $empty

    opt_466 ::= wsc | $empty

    opt_467 ::= wsc | $empty

    opt_468 ::= wsc | $empty

    opt_469 ::= wsc | $empty

    opt_470 ::= wsc | $empty

    opt_471 ::= wsc | $empty

    opt_472 ::= wsc | $empty

    seq_473 ::= LET wsc

    opt_474 ::= seq_473 | $empty

    opt_475 ::= wsc | $empty

    opt_476 ::= wsc | $empty

    opt_477 ::= wsc | $empty

    opt_478 ::= wsc | $empty

    opt_479 ::= wsc | $empty

    opt_480 ::= wsc | $empty

    opt_481 ::= wsc | $empty

    grp_482 ::= NEXT | statementLabel

    opt_483 ::= grp_482 | $empty

    opt_484 ::= wsc | $empty

    opt_485 ::= wsc | $empty

    opt_486 ::= modeClause | $empty

    opt_487 ::= accessClause | $empty

    opt_488 ::= wsc | $empty

    opt_489 ::= lock | $empty

    opt_490 ::= wsc | $empty

    opt_491 ::= wsc | $empty

    opt_492 ::= wsc | $empty

    opt_493 ::= lenClause | $empty

    opt_494 ::= wsc | $empty

    opt_495 ::= fileNumberList | $empty

    opt_496 ::= wsc | $empty

    opt_497 ::= wsc | $empty

    seq_498 ::= opt_496 COMMA opt_497 fileNumber

    list_499 ::= $empty | list_499 seq_498

    opt_500 ::= wsc | $empty

    opt_501 ::= wsc | $empty

    opt_502 ::= wsc | $empty

    opt_503 ::= wsc | $empty

    seq_504 ::= opt_502 COMMA opt_503 recordRange

    opt_505 ::= startRecordNumber | $empty

    opt_506 ::= wsc | $empty

    opt_507 ::= wsc | $empty

    seq_508 ::= opt_506 COMMA opt_507 recordRange

    opt_509 ::= seq_508 | $empty

    opt_510 ::= wsc | $empty

    opt_511 ::= wsc | $empty

    opt_512 ::= wsc | $empty

    opt_513 ::= wsc | $empty

    grp_515 ::= DEBUG | ME

    grp_514 ::= grp_515 DOT

    opt_516 ::= grp_514 | $empty

    opt_517 ::= wsc | $empty

    opt_518 ::= wsc | $empty

    seq_519 ::= markedFileNumber opt_517 COMMA opt_518

    opt_520 ::= seq_519 | $empty

    opt_521 ::= outputList | $empty

    list_522 ::= outputItem | list_522 outputItem

    opt_523 ::= charPosition | $empty

    opt_524 ::= wsc | $empty

    opt_525 ::= wsc | $empty

    opt_526 ::= wsc | $empty

    opt_527 ::= wsc | $empty

    opt_528 ::= wsc | $empty

    opt_529 ::= wsc | $empty

    opt_530 ::= outputList | $empty

    opt_531 ::= wsc | $empty

    opt_532 ::= wsc | $empty

    opt_533 ::= wsc | $empty

    opt_534 ::= wsc | $empty

    seq_535 ::= opt_533 COMMA opt_534 inputVariable

    list_536 ::= $empty | list_536 seq_535

    opt_537 ::= wsc | $empty

    opt_538 ::= wsc | $empty

    opt_539 ::= recordNumber | $empty

    opt_540 ::= wsc | $empty

    opt_541 ::= wsc | $empty

    opt_542 ::= wsc | $empty

    opt_543 ::= wsc | $empty

    opt_544 ::= recordNumber | $empty

    opt_545 ::= wsc | $empty

    opt_546 ::= wsc | $empty

    opt_547 ::= WS | $empty

    opt_548 ::= WS | $empty

    opt_549 ::= WS | $empty

    opt_550 ::= WS | $empty

    opt_551 ::= MINUS | $empty

    opt_552 ::= wsc | $empty

    opt_553 ::= wsc | $empty

    opt_554 ::= wsc | $empty

    opt_555 ::= wsc | $empty

    opt_556 ::= wsc | $empty

    grp_557 ::= DIV | MULT

    opt_558 ::= wsc | $empty

    opt_559 ::= wsc | $empty

    opt_560 ::= wsc | $empty

    opt_561 ::= wsc | $empty

    grp_562 ::= PLUS | MINUS

    opt_563 ::= wsc | $empty

    opt_564 ::= wsc | $empty

    opt_565 ::= wsc | $empty

    opt_566 ::= wsc | $empty

    grp_567 ::= IS | LIKE | GEQ | LEQ | GT | LT | NEQ | EQ

    opt_568 ::= wsc | $empty

    opt_569 ::= wsc | $empty

    opt_570 ::= wsc | $empty

    grp_571 ::= AND | OR | XOR | EQV | IMP

    opt_572 ::= wsc | $empty

    opt_573 ::= wsc | $empty

    opt_574 ::= wsc | $empty

    opt_575 ::= wsc | $empty

    opt_576 ::= wsc | $empty

    opt_577 ::= wsc | $empty

    opt_578 ::= wsc | $empty

    opt_579 ::= wsc | $empty

    opt_580 ::= wsc | $empty

    opt_581 ::= wsc | $empty

    opt_582 ::= wsc | $empty

    opt_583 ::= wsc | $empty

    opt_584 ::= wsc | $empty

    opt_585 ::= wsc | $empty

    opt_586 ::= typeSuffix | $empty

    opt_587 ::= wsc | $empty

    opt_588 ::= wsc | $empty

    opt_589 ::= wsc | $empty

    opt_590 ::= wsc | $empty

    opt_591 ::= wsc | $empty

    opt_592 ::= wsc | $empty

    opt_593 ::= wsc | $empty

    opt_594 ::= wsc | $empty

    opt_595 ::= wsc | $empty

    opt_596 ::= wsc | $empty

    opt_597 ::= wsc | $empty

    opt_598 ::= wsc | $empty

    opt_599 ::= positionalOrNamedArgumentList | $empty

    opt_600 ::= wsc | $empty

    opt_601 ::= wsc | $empty

    seq_602 ::= positionalArgument opt_600 COMMA opt_601

    list_603 ::= $empty | list_603 seq_602

    opt_604 ::= wsc | $empty

    opt_605 ::= wsc | $empty

    seq_606 ::= positionalArgument opt_604 COMMA opt_605

    list_607 ::= $empty | list_607 seq_606

    opt_608 ::= argumentExpression | $empty

    opt_609 ::= wsc | $empty

    opt_610 ::= wsc | $empty

    seq_611 ::= opt_609 COMMA opt_610 namedArgument

    list_612 ::= $empty | list_612 seq_611

    opt_613 ::= wsc | $empty

    opt_614 ::= wsc | $empty

    seq_615 ::= BYVAL wsc

    opt_616 ::= seq_615 | $empty

    opt_617 ::= wsc | $empty

    opt_618 ::= wsc | $empty

    opt_619 ::= wsc | $empty

    opt_620 ::= wsc | $empty

    opt_621 ::= wsc | $empty

    opt_622 ::= wsc | $empty

    grp_623 ::= WS | LINE_CONTINUATION

    list_624 ::= grp_623 | list_624 grp_623

    opt_625 ::= wsc | $empty

    grp_626 ::= NEWLINE | commentBody | remStatement

    opt_627 ::= wsc | $empty

    opt_628 ::= wsc | $empty

    grp_629 ::= NEWLINE | commentBody | remStatement

    opt_631 ::= wsc | $empty

    opt_632 ::= wsc | $empty

    grp_630 ::= endOfLine | opt_631 COLON opt_632

    list_633 ::= grp_630 | list_633 grp_630

    opt_635 ::= wsc | $empty

    grp_634 ::= endOfLineNoWs | opt_635 COLON

    list_636 ::= grp_634 | list_636 grp_634

%End
