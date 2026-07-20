-- AUTO-GENERATED from antlr/grammars-v4 vb6 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack
%Options fp=Vb6Parser
%options package=lpg.grammars.vb6
%options template=btParserTemplateF.gi
%options import_terminals=Vb6Lexer.gi
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

    module ::= opt_1 list_2 opt_5 opt_6 list_7 opt_8 list_9 opt_10 list_11 opt_12 list_13 opt_14 list_15 opt_16 list_17 opt_18

    moduleReferences ::= list_19

    moduleReference ::= OBJECT opt_20 EQ opt_21 moduleReferenceValue opt_24 list_25

    moduleReferenceValue ::= STRINGLITERAL

    moduleReferenceComponent ::= STRINGLITERAL

    moduleHeader ::= VERSION WS doubleLiteral opt_27

    moduleConfig ::= BEGIN list_28 list_29 END list_30

    moduleConfigElement ::= ambiguousIdentifier opt_31 EQ opt_32 literal NEWLINE

    moduleAttributes ::= list_35

    moduleOptions ::= list_38

    moduleOption ::= OPTION_BASE WS integerLiteral
           | OPTION_COMPARE WS grp_39
           | OPTION WS EXPLICIT
           | OPTION_PRIVATE_MODULE

    moduleBody ::= moduleBodyElement list_42

    moduleBodyElement ::= moduleBlock
           | moduleOption
           | declareStmt
           | enumerationStmt
           | eventStmt
           | functionStmt
           | macroIfThenElseStmt
           | propertyGetStmt
           | propertySetStmt
           | propertyLetStmt
           | subStmt
           | typeStmt

    controlProperties ::= opt_43 BEGIN WS cp_ControlType WS cp_ControlIdentifier opt_44 list_45 list_46 END list_47

    cp_Properties ::= cp_SingleProperty
           | cp_NestedProperty
           | controlProperties

    cp_SingleProperty ::= opt_48 implicitCallStmt_InStmt opt_49 EQ opt_50 opt_51 cp_PropertyValue opt_52 list_53

    cp_PropertyName ::= opt_55 ambiguousIdentifier opt_57 list_61

    cp_PropertyValue ::= opt_62 grp_63

    cp_NestedProperty ::= opt_65 BEGINPROPERTY WS ambiguousIdentifier opt_67 opt_69 list_70 opt_72 ENDPROPERTY list_73

    cp_ControlType ::= complexType

    cp_ControlIdentifier ::= ambiguousIdentifier

    moduleBlock ::= block

    attributeStmt ::= ATTRIBUTE WS implicitCallStmt_InStmt opt_74 EQ opt_75 literal list_79

    block ::= blockStmt list_83

    blockStmt ::= appActivateStmt
           | attributeStmt
           | beepStmt
           | chDirStmt
           | chDriveStmt
           | closeStmt
           | constStmt
           | dateStmt
           | deleteSettingStmt
           | deftypeStmt
           | doLoopStmt
           | endStmt
           | eraseStmt
           | errorStmt
           | exitStmt
           | explicitCallStmt
           | filecopyStmt
           | forEachStmt
           | forNextStmt
           | getStmt
           | goSubStmt
           | goToStmt
           | ifThenElseStmt
           | implementsStmt
           | inputStmt
           | killStmt
           | letStmt
           | lineInputStmt
           | lineLabel
           | loadStmt
           | lockStmt
           | lsetStmt
           | macroIfThenElseStmt
           | midStmt
           | mkdirStmt
           | nameStmt
           | onErrorStmt
           | onGoToStmt
           | onGoSubStmt
           | openStmt
           | printStmt
           | putStmt
           | raiseEventStmt
           | randomizeStmt
           | redimStmt
           | resetStmt
           | resumeStmt
           | returnStmt
           | rmdirStmt
           | rsetStmt
           | savepictureStmt
           | saveSettingStmt
           | seekStmt
           | selectCaseStmt
           | sendkeysStmt
           | setattrStmt
           | setStmt
           | stopStmt
           | timeStmt
           | unloadStmt
           | unlockStmt
           | variableStmt
           | whileWendStmt
           | widthStmt
           | withStmt
           | writeStmt
           | implicitCallStmt_InBlock

    appActivateStmt ::= APPACTIVATE WS valueStmt opt_87

    beepStmt ::= BEEP

    chDirStmt ::= CHDIR WS valueStmt

    chDriveStmt ::= CHDRIVE WS valueStmt

    closeStmt ::= CLOSE opt_93

    constStmt ::= opt_95 CONST WS constSubStmt list_99

    constSubStmt ::= ambiguousIdentifier opt_100 opt_102 opt_103 EQ opt_104 valueStmt

    dateStmt ::= DATE opt_105 EQ opt_106 valueStmt

    declareStmt ::= opt_108 DECLARE WS grp_109 WS ambiguousIdentifier opt_111 WS LIB WS STRINGLITERAL opt_113 opt_116 opt_118

    deftypeStmt ::= grp_119 WS letterrange list_123

    deleteSettingStmt ::= DELETESETTING WS valueStmt opt_124 COMMA opt_125 valueStmt opt_129

    doLoopStmt ::= DO list_130 opt_133 LOOP
           | DO WS grp_134 WS valueStmt list_135 opt_138 LOOP
           | DO list_139 opt_142 LOOP WS grp_143 WS valueStmt

    endStmt ::= END

    enumerationStmt ::= opt_145 ENUM WS ambiguousIdentifier list_146 list_147 END_ENUM

    enumerationStmt_Constant ::= ambiguousIdentifier opt_151 list_152

    eraseStmt ::= ERASE WS valueStmt list_156

    errorStmt ::= ERROR WS valueStmt

    eventStmt ::= opt_158 EVENT WS ambiguousIdentifier opt_159 argList

    exitStmt ::= EXIT_DO
           | EXIT_FOR
           | EXIT_FUNCTION
           | EXIT_PROPERTY
           | EXIT_SUB

    filecopyStmt ::= FILECOPY WS valueStmt opt_160 COMMA opt_161 valueStmt

    forEachStmt ::= FOR WS EACH WS ambiguousIdentifier opt_162 WS IN WS valueStmt list_163 opt_166 NEXT opt_168

    forNextStmt ::= FOR WS iCS_S_VariableOrProcedureCall opt_169 opt_171 opt_172 EQ opt_173 valueStmt WS TO WS valueStmt opt_175 list_176 opt_179 NEXT opt_182

    functionStmt ::= opt_184 opt_186 FUNCTION WS ambiguousIdentifier opt_189 opt_191 list_192 opt_195 END_FUNCTION

    getStmt ::= GET WS valueStmt opt_196 COMMA opt_197 opt_198 opt_199 COMMA opt_200 valueStmt

    goSubStmt ::= GOSUB WS valueStmt

    goToStmt ::= GOTO WS valueStmt

    ifThenElseStmt ::= IF WS ifConditionStmt WS THEN WS blockStmt opt_202
           | ifBlockStmt list_203 opt_204 END_IF

    ifBlockStmt ::= IF WS ifConditionStmt WS THEN list_205 opt_208

    ifConditionStmt ::= valueStmt

    ifElseIfBlockStmt ::= ELSEIF WS ifConditionStmt WS THEN list_210 opt_213

    ifElseBlockStmt ::= ELSE list_214 opt_217

    implementsStmt ::= IMPLEMENTS WS ambiguousIdentifier

    inputStmt ::= INPUT WS valueStmt list_221

    killStmt ::= KILL WS valueStmt

    letStmt ::= opt_223 implicitCallStmt_InStmt opt_224 grp_225 opt_226 valueStmt

    lineInputStmt ::= LINE_INPUT WS valueStmt opt_227 COMMA opt_228 valueStmt

    loadStmt ::= LOAD WS valueStmt

    lockStmt ::= LOCK WS valueStmt opt_234

    lsetStmt ::= LSET WS implicitCallStmt_InStmt opt_235 EQ opt_236 valueStmt

    macroIfThenElseStmt ::= macroIfBlockStmt list_237 opt_238 MACRO_END_IF

    macroIfBlockStmt ::= MACRO_IF WS ifConditionStmt WS THEN list_239 opt_242

    macroElseIfBlockStmt ::= MACRO_ELSEIF WS ifConditionStmt WS THEN list_243 opt_246

    macroElseBlockStmt ::= MACRO_ELSE list_247 opt_250

    midStmt ::= MID opt_251 LPAREN opt_252 argsCall opt_253 RPAREN

    mkdirStmt ::= MKDIR WS valueStmt

    nameStmt ::= NAME WS valueStmt WS AS WS valueStmt

    onErrorStmt ::= grp_254 WS grp_255

    onGoToStmt ::= ON WS valueStmt WS GOTO WS valueStmt list_260

    onGoSubStmt ::= ON WS valueStmt WS GOSUB WS valueStmt list_264

    openStmt ::= OPEN WS valueStmt WS FOR WS grp_265 opt_268 opt_271 WS AS WS valueStmt opt_275

    outputList ::= outputList_Expression list_281
           | opt_282 list_288

    outputList_Expression ::= grp_289 opt_294
           | valueStmt

    printStmt ::= PRINT WS valueStmt opt_295 COMMA opt_298

    propertyGetStmt ::= opt_300 opt_302 PROPERTY_GET WS ambiguousIdentifier opt_303 opt_306 opt_308 list_309 opt_312 END_PROPERTY

    propertySetStmt ::= opt_314 opt_316 PROPERTY_SET WS ambiguousIdentifier opt_319 list_320 opt_323 END_PROPERTY

    propertyLetStmt ::= opt_325 opt_327 PROPERTY_LET WS ambiguousIdentifier opt_330 list_331 opt_334 END_PROPERTY

    putStmt ::= PUT WS valueStmt opt_335 COMMA opt_336 opt_337 opt_338 COMMA opt_339 valueStmt

    raiseEventStmt ::= RAISEEVENT WS ambiguousIdentifier opt_346

    randomizeStmt ::= RANDOMIZE opt_348

    redimStmt ::= REDIM WS opt_350 redimSubStmt list_354

    redimSubStmt ::= implicitCallStmt_InStmt opt_355 LPAREN opt_356 subscripts opt_357 RPAREN opt_359

    resetStmt ::= RESET

    resumeStmt ::= RESUME opt_362

    returnStmt ::= RETURN

    rmdirStmt ::= RMDIR WS valueStmt

    rsetStmt ::= RSET WS implicitCallStmt_InStmt opt_363 EQ opt_364 valueStmt

    savepictureStmt ::= SAVEPICTURE WS valueStmt opt_365 COMMA opt_366 valueStmt

    saveSettingStmt ::= SAVESETTING WS valueStmt opt_367 COMMA opt_368 valueStmt opt_369 COMMA opt_370 valueStmt opt_371 COMMA opt_372 valueStmt

    seekStmt ::= SEEK WS valueStmt opt_373 COMMA opt_374 valueStmt

    selectCaseStmt ::= SELECT WS CASE WS valueStmt list_375 list_376 opt_377 END_SELECT

    sC_Case ::= CASE WS sC_Cond opt_378 grp_379 opt_385

    sC_Cond ::= ELSE
           | sC_CondExpr list_389

    sC_CondExpr ::= IS opt_390 comparisonOperator opt_391 valueStmt
           | valueStmt
           | valueStmt WS TO WS valueStmt

    sendkeysStmt ::= SENDKEYS WS valueStmt opt_395

    setattrStmt ::= SETATTR WS valueStmt opt_396 COMMA opt_397 valueStmt

    setStmt ::= SET WS implicitCallStmt_InStmt opt_398 EQ opt_399 valueStmt

    stopStmt ::= STOP

    subStmt ::= opt_401 opt_403 SUB WS ambiguousIdentifier opt_406 list_407 opt_410 END WS SUB

    timeStmt ::= TIME opt_411 EQ opt_412 valueStmt

    typeStmt ::= opt_414 TYPE WS ambiguousIdentifier list_415 list_416 END_TYPE

    typeStmt_Element ::= ambiguousIdentifier opt_423 opt_425 list_426

    typeOfStmt ::= TYPEOF WS valueStmt opt_428

    unloadStmt ::= UNLOAD WS valueStmt

    unlockStmt ::= UNLOCK WS valueStmt opt_434

    valueStmt ::= literal
           | LPAREN opt_435 valueStmt list_439 opt_440 RPAREN
           | NEW WS valueStmt
           | typeOfStmt
           | ADDRESSOF WS valueStmt
           | implicitCallStmt_InStmt opt_441 ASSIGN opt_442 valueStmt
           | valueStmt opt_443 POW opt_444 valueStmt
           | grp_445 opt_446 valueStmt
           | valueStmt opt_447 grp_448 opt_449 valueStmt
           | valueStmt opt_450 IDIV opt_451 valueStmt
           | valueStmt opt_452 MOD opt_453 valueStmt
           | valueStmt opt_454 grp_455 opt_456 valueStmt
           | valueStmt opt_457 AMPERSAND opt_458 valueStmt
           | valueStmt opt_459 grp_460 opt_461 valueStmt
           | NOT grp_462
           | valueStmt opt_465 AND opt_466 valueStmt
           | valueStmt opt_467 OR opt_468 valueStmt
           | valueStmt opt_469 XOR opt_470 valueStmt
           | valueStmt opt_471 EQV opt_472 valueStmt
           | valueStmt opt_473 IMP opt_474 valueStmt
           | implicitCallStmt_InStmt
           | midStmt

    variableStmt ::= grp_475 WS opt_477 variableListStmt

    variableListStmt ::= variableSubStmt list_481

    variableSubStmt ::= ambiguousIdentifier opt_482 opt_490 opt_492

    whileWendStmt ::= WHILE WS valueStmt list_493 list_494 list_495 WEND

    widthStmt ::= WIDTH WS valueStmt opt_496 COMMA opt_497 valueStmt

    withStmt ::= WITH WS opt_499 implicitCallStmt_InStmt list_500 opt_503 END_WITH

    writeStmt ::= WRITE WS valueStmt opt_504 COMMA opt_507

    explicitCallStmt ::= eCS_ProcedureCall
           | eCS_MemberProcedureCall

    eCS_ProcedureCall ::= CALL WS ambiguousIdentifier opt_508 opt_513

    eCS_MemberProcedureCall ::= CALL WS opt_514 DOT opt_515 ambiguousIdentifier opt_516 opt_521

    implicitCallStmt_InBlock ::= iCS_B_ProcedureCall
           | iCS_B_MemberProcedureCall

    iCS_B_ProcedureCall ::= certainIdentifier opt_523

    iCS_B_MemberProcedureCall ::= opt_524 DOT ambiguousIdentifier opt_525 opt_527 opt_528

    implicitCallStmt_InStmt ::= iCS_S_MembersCall
           | iCS_S_VariableOrProcedureCall
           | iCS_S_ProcedureOrArrayCall
           | iCS_S_DictionaryCall

    iCS_S_VariableOrProcedureCall ::= ambiguousIdentifier opt_529 opt_530

    iCS_S_ProcedureOrArrayCall ::= grp_531 opt_532 opt_533 list_539 opt_540

    iCS_S_NestedProcedureCall ::= ambiguousIdentifier opt_541 opt_542 LPAREN opt_543 opt_546 RPAREN

    iCS_S_MembersCall ::= opt_548 list_549 opt_550

    iCS_S_MemberCall ::= opt_551 DOT grp_552

    iCS_S_DictionaryCall ::= dictionaryCallStmt

    argsCall ::= list_558 argCall list_564

    argCall ::= opt_567 valueStmt

    dictionaryCallStmt ::= EXCLAMATIONMARK ambiguousIdentifier opt_568

    argList ::= LPAREN opt_575 opt_576 RPAREN

    arg ::= opt_578 opt_581 opt_583 ambiguousIdentifier opt_584 opt_588 opt_590 opt_593

    argDefaultValue ::= EQ opt_594 valueStmt

    subscripts ::= subscript_ list_598

    subscript_ ::= opt_600 valueStmt

    ambiguousIdentifier ::= list_602
           | L_SQUARE_BRACKET list_604 R_SQUARE_BRACKET

    asTypeClause ::= AS WS opt_606 type_ opt_608

    baseType ::= BOOLEAN
           | BYTE
           | COLLECTION
           | DATE
           | DOUBLE
           | INTEGER
           | LONG
           | OBJECT
           | SINGLE
           | STRING
           | VARIANT

    certainIdentifier ::= IDENTIFIER list_610
           | ambiguousKeyword list_612

    comparisonOperator ::= LT
           | LEQ
           | GT
           | GEQ
           | EQ
           | NEQ
           | IS
           | LIKE

    complexType ::= ambiguousIdentifier list_614

    fieldLength ::= MULT opt_615 grp_616

    letterrange ::= certainIdentifier opt_620

    lineLabel ::= ambiguousIdentifier COLON

    literal ::= COLORLITERAL
           | DATELITERAL
           | doubleLiteral
           | FILENUMBER
           | integerLiteral
           | octalLiteral
           | STRINGLITERAL
           | TRUE
           | FALSE
           | NOTHING
           | NULL_

    publicPrivateVisibility ::= PRIVATE
           | PUBLIC

    publicPrivateGlobalVisibility ::= PRIVATE
           | PUBLIC
           | GLOBAL

    type_ ::= grp_621 opt_625

    typeHint ::= AMPERSAND
           | AT
           | DOLLAR
           | EXCLAMATIONMARK
           | HASH
           | PERCENT

    visibility ::= PRIVATE
           | PUBLIC
           | FRIEND
           | GLOBAL

    ambiguousKeyword ::= ACCESS
           | ADDRESSOF
           | ALIAS
           | AND
           | ATTRIBUTE
           | APPACTIVATE
           | APPEND
           | AS
           | BEEP
           | BEGIN
           | BINARY
           | BOOLEAN
           | BYVAL
           | BYREF
           | BYTE
           | CALL
           | CASE
           | CLASS
           | CLOSE
           | CHDIR
           | CHDRIVE
           | COLLECTION
           | CONST
           | DATE
           | DECLARE
           | DEFBOOL
           | DEFBYTE
           | DEFCUR
           | DEFDBL
           | DEFDATE
           | DEFDEC
           | DEFINT
           | DEFLNG
           | DEFOBJ
           | DEFSNG
           | DEFSTR
           | DEFVAR
           | DELETESETTING
           | DIM
           | DO
           | DOUBLE
           | EACH
           | ELSE
           | ELSEIF
           | END
           | ENUM
           | EQV
           | ERASE
           | ERROR
           | EVENT
           | FALSE
           | FILECOPY
           | FRIEND
           | FOR
           | FUNCTION
           | GET
           | GLOBAL
           | GOSUB
           | GOTO
           | IF
           | IMP
           | IMPLEMENTS
           | IN
           | INPUT
           | IS
           | INTEGER
           | KILL
           | LOAD
           | LOCK
           | LONG
           | LOOP
           | LEN
           | LET
           | LIB
           | LIKE
           | LSET
           | ME
           | MID
           | MKDIR
           | MOD
           | NAME
           | NEXT
           | NEW
           | NOT
           | NOTHING
           | NULL_
           | OBJECT
           | ON
           | OPEN
           | OPTIONAL
           | OR
           | OUTPUT
           | PARAMARRAY
           | PRESERVE
           | PRINT
           | PRIVATE
           | PUBLIC
           | PUT
           | RANDOM
           | RANDOMIZE
           | RAISEEVENT
           | READ
           | REDIM
           | REM
           | RESET
           | RESUME
           | RETURN
           | RMDIR
           | RSET
           | SAVEPICTURE
           | SAVESETTING
           | SEEK
           | SELECT
           | SENDKEYS
           | SET
           | SETATTR
           | SHARED
           | SINGLE
           | SPC
           | STATIC
           | STEP
           | STOP
           | STRING
           | SUB
           | TAB
           | TEXT
           | THEN
           | TIME
           | TO
           | TRUE
           | TYPE
           | TYPEOF
           | UNLOAD
           | UNLOCK
           | UNTIL
           | VARIANT
           | VERSION
           | WEND
           | WHILE
           | WIDTH
           | WITH
           | WITHEVENTS
           | WRITE
           | XOR

    integerLiteral ::= list_627 INTEGERLITERAL

    octalLiteral ::= list_629 OCTALLITERAL

    doubleLiteral ::= list_631 DOUBLELITERAL

    opt_1 ::= WS | $empty

    list_2 ::= $empty | list_2 NEWLINE

    list_3 ::= NEWLINE | list_3 NEWLINE

    seq_4 ::= moduleHeader list_3

    opt_5 ::= seq_4 | $empty

    opt_6 ::= moduleReferences | $empty

    list_7 ::= $empty | list_7 NEWLINE

    opt_8 ::= controlProperties | $empty

    list_9 ::= $empty | list_9 NEWLINE

    opt_10 ::= moduleConfig | $empty

    list_11 ::= $empty | list_11 NEWLINE

    opt_12 ::= moduleAttributes | $empty

    list_13 ::= $empty | list_13 NEWLINE

    opt_14 ::= moduleOptions | $empty

    list_15 ::= $empty | list_15 NEWLINE

    opt_16 ::= moduleBody | $empty

    list_17 ::= $empty | list_17 NEWLINE

    opt_18 ::= WS | $empty

    list_19 ::= moduleReference | list_19 moduleReference

    opt_20 ::= WS | $empty

    opt_21 ::= WS | $empty

    opt_22 ::= WS | $empty

    seq_23 ::= SEMICOLON opt_22 moduleReferenceComponent

    opt_24 ::= seq_23 | $empty

    list_25 ::= $empty | list_25 NEWLINE

    seq_26 ::= WS CLASS

    opt_27 ::= seq_26 | $empty

    list_28 ::= NEWLINE | list_28 NEWLINE

    list_29 ::= moduleConfigElement | list_29 moduleConfigElement

    list_30 ::= NEWLINE | list_30 NEWLINE

    opt_31 ::= WS | $empty

    opt_32 ::= WS | $empty

    list_33 ::= NEWLINE | list_33 NEWLINE

    seq_34 ::= attributeStmt list_33

    list_35 ::= seq_34 | list_35 seq_34

    list_36 ::= NEWLINE | list_36 NEWLINE

    seq_37 ::= moduleOption list_36

    list_38 ::= seq_37 | list_38 seq_37

    grp_39 ::= BINARY | TEXT

    list_40 ::= NEWLINE | list_40 NEWLINE

    seq_41 ::= list_40 moduleBodyElement

    list_42 ::= $empty | list_42 seq_41

    opt_43 ::= WS | $empty

    opt_44 ::= WS | $empty

    list_45 ::= NEWLINE | list_45 NEWLINE

    list_46 ::= cp_Properties | list_46 cp_Properties

    list_47 ::= $empty | list_47 NEWLINE

    opt_48 ::= WS | $empty

    opt_49 ::= WS | $empty

    opt_50 ::= WS | $empty

    opt_51 ::= DOLLAR | $empty

    opt_52 ::= FRX_OFFSET | $empty

    list_53 ::= NEWLINE | list_53 NEWLINE

    seq_54 ::= OBJECT DOT

    opt_55 ::= seq_54 | $empty

    seq_56 ::= LPAREN literal RPAREN

    opt_57 ::= seq_56 | $empty

    seq_58 ::= LPAREN literal RPAREN

    opt_59 ::= seq_58 | $empty

    seq_60 ::= DOT ambiguousIdentifier opt_59

    list_61 ::= $empty | list_61 seq_60

    opt_62 ::= DOLLAR | $empty

    seq_64 ::= LBRACE ambiguousIdentifier RBRACE

    grp_63 ::= literal | seq_64 | POW ambiguousIdentifier

    opt_65 ::= WS | $empty

    seq_66 ::= LPAREN integerLiteral RPAREN

    opt_67 ::= seq_66 | $empty

    seq_68 ::= WS GUID

    opt_69 ::= seq_68 | $empty

    list_70 ::= NEWLINE | list_70 NEWLINE

    list_71 ::= cp_Properties | list_71 cp_Properties

    opt_72 ::= list_71 | $empty

    list_73 ::= NEWLINE | list_73 NEWLINE

    opt_74 ::= WS | $empty

    opt_75 ::= WS | $empty

    opt_76 ::= WS | $empty

    opt_77 ::= WS | $empty

    seq_78 ::= opt_76 COMMA opt_77 literal

    list_79 ::= $empty | list_79 seq_78

    list_80 ::= NEWLINE | list_80 NEWLINE

    opt_81 ::= WS | $empty

    seq_82 ::= list_80 opt_81 blockStmt

    list_83 ::= $empty | list_83 seq_82

    opt_84 ::= WS | $empty

    opt_85 ::= WS | $empty

    seq_86 ::= opt_84 COMMA opt_85 valueStmt

    opt_87 ::= seq_86 | $empty

    opt_88 ::= WS | $empty

    opt_89 ::= WS | $empty

    seq_90 ::= opt_88 COMMA opt_89 valueStmt

    list_91 ::= $empty | list_91 seq_90

    seq_92 ::= WS valueStmt list_91

    opt_93 ::= seq_92 | $empty

    seq_94 ::= publicPrivateGlobalVisibility WS

    opt_95 ::= seq_94 | $empty

    opt_96 ::= WS | $empty

    opt_97 ::= WS | $empty

    seq_98 ::= opt_96 COMMA opt_97 constSubStmt

    list_99 ::= $empty | list_99 seq_98

    opt_100 ::= typeHint | $empty

    seq_101 ::= WS asTypeClause

    opt_102 ::= seq_101 | $empty

    opt_103 ::= WS | $empty

    opt_104 ::= WS | $empty

    opt_105 ::= WS | $empty

    opt_106 ::= WS | $empty

    seq_107 ::= visibility WS

    opt_108 ::= seq_107 | $empty

    opt_110 ::= typeHint | $empty

    grp_109 ::= FUNCTION opt_110 | SUB

    opt_111 ::= typeHint | $empty

    seq_112 ::= WS ALIAS WS STRINGLITERAL

    opt_113 ::= seq_112 | $empty

    opt_114 ::= WS | $empty

    seq_115 ::= opt_114 argList

    opt_116 ::= seq_115 | $empty

    seq_117 ::= WS asTypeClause

    opt_118 ::= seq_117 | $empty

    grp_119 ::= DEFBOOL | DEFBYTE | DEFINT | DEFLNG | DEFCUR | DEFSNG | DEFDBL | DEFDEC | DEFDATE | DEFSTR | DEFOBJ | DEFVAR

    opt_120 ::= WS | $empty

    opt_121 ::= WS | $empty

    seq_122 ::= opt_120 COMMA opt_121 letterrange

    list_123 ::= $empty | list_123 seq_122

    opt_124 ::= WS | $empty

    opt_125 ::= WS | $empty

    opt_126 ::= WS | $empty

    opt_127 ::= WS | $empty

    seq_128 ::= opt_126 COMMA opt_127 valueStmt

    opt_129 ::= seq_128 | $empty

    list_130 ::= NEWLINE | list_130 NEWLINE

    list_131 ::= NEWLINE | list_131 NEWLINE

    seq_132 ::= block list_131

    opt_133 ::= seq_132 | $empty

    grp_134 ::= WHILE | UNTIL

    list_135 ::= NEWLINE | list_135 NEWLINE

    list_136 ::= NEWLINE | list_136 NEWLINE

    seq_137 ::= block list_136

    opt_138 ::= seq_137 | $empty

    list_139 ::= NEWLINE | list_139 NEWLINE

    list_140 ::= NEWLINE | list_140 NEWLINE

    seq_141 ::= block list_140

    opt_142 ::= seq_141 | $empty

    grp_143 ::= WHILE | UNTIL

    seq_144 ::= publicPrivateVisibility WS

    opt_145 ::= seq_144 | $empty

    list_146 ::= NEWLINE | list_146 NEWLINE

    list_147 ::= $empty | list_147 enumerationStmt_Constant

    opt_148 ::= WS | $empty

    opt_149 ::= WS | $empty

    seq_150 ::= opt_148 EQ opt_149 valueStmt

    opt_151 ::= seq_150 | $empty

    list_152 ::= NEWLINE | list_152 NEWLINE

    opt_153 ::= WS | $empty

    opt_154 ::= WS | $empty

    seq_155 ::= opt_153 COMMA opt_154 valueStmt

    list_156 ::= $empty | list_156 seq_155

    seq_157 ::= visibility WS

    opt_158 ::= seq_157 | $empty

    opt_159 ::= WS | $empty

    opt_160 ::= WS | $empty

    opt_161 ::= WS | $empty

    opt_162 ::= typeHint | $empty

    list_163 ::= NEWLINE | list_163 NEWLINE

    list_164 ::= NEWLINE | list_164 NEWLINE

    seq_165 ::= block list_164

    opt_166 ::= seq_165 | $empty

    seq_167 ::= WS ambiguousIdentifier

    opt_168 ::= seq_167 | $empty

    opt_169 ::= typeHint | $empty

    seq_170 ::= WS asTypeClause

    opt_171 ::= seq_170 | $empty

    opt_172 ::= WS | $empty

    opt_173 ::= WS | $empty

    seq_174 ::= WS STEP WS valueStmt

    opt_175 ::= seq_174 | $empty

    list_176 ::= NEWLINE | list_176 NEWLINE

    list_177 ::= NEWLINE | list_177 NEWLINE

    seq_178 ::= block list_177

    opt_179 ::= seq_178 | $empty

    opt_180 ::= typeHint | $empty

    seq_181 ::= WS ambiguousIdentifier opt_180

    opt_182 ::= seq_181 | $empty

    seq_183 ::= visibility WS

    opt_184 ::= seq_183 | $empty

    seq_185 ::= STATIC WS

    opt_186 ::= seq_185 | $empty

    opt_187 ::= WS | $empty

    seq_188 ::= opt_187 argList

    opt_189 ::= seq_188 | $empty

    seq_190 ::= WS asTypeClause

    opt_191 ::= seq_190 | $empty

    list_192 ::= NEWLINE | list_192 NEWLINE

    list_193 ::= NEWLINE | list_193 NEWLINE

    seq_194 ::= block list_193

    opt_195 ::= seq_194 | $empty

    opt_196 ::= WS | $empty

    opt_197 ::= WS | $empty

    opt_198 ::= valueStmt | $empty

    opt_199 ::= WS | $empty

    opt_200 ::= WS | $empty

    seq_201 ::= WS ELSE WS blockStmt

    opt_202 ::= seq_201 | $empty

    list_203 ::= $empty | list_203 ifElseIfBlockStmt

    opt_204 ::= ifElseBlockStmt | $empty

    list_205 ::= NEWLINE | list_205 NEWLINE

    list_206 ::= NEWLINE | list_206 NEWLINE

    seq_207 ::= block list_206

    opt_208 ::= seq_207 | $empty

    grp_209 ::= WS | NEWLINE

    list_210 ::= grp_209 | list_210 grp_209

    list_211 ::= NEWLINE | list_211 NEWLINE

    seq_212 ::= block list_211

    opt_213 ::= seq_212 | $empty

    list_214 ::= NEWLINE | list_214 NEWLINE

    list_215 ::= NEWLINE | list_215 NEWLINE

    seq_216 ::= block list_215

    opt_217 ::= seq_216 | $empty

    opt_218 ::= WS | $empty

    opt_219 ::= WS | $empty

    seq_220 ::= opt_218 COMMA opt_219 valueStmt

    list_221 ::= seq_220 | list_221 seq_220

    seq_222 ::= LET WS

    opt_223 ::= seq_222 | $empty

    opt_224 ::= WS | $empty

    grp_225 ::= EQ | PLUS_EQ | MINUS_EQ

    opt_226 ::= WS | $empty

    opt_227 ::= WS | $empty

    opt_228 ::= WS | $empty

    opt_229 ::= WS | $empty

    opt_230 ::= WS | $empty

    seq_231 ::= WS TO WS valueStmt

    opt_232 ::= seq_231 | $empty

    seq_233 ::= opt_229 COMMA opt_230 valueStmt opt_232

    opt_234 ::= seq_233 | $empty

    opt_235 ::= WS | $empty

    opt_236 ::= WS | $empty

    list_237 ::= $empty | list_237 macroElseIfBlockStmt

    opt_238 ::= macroElseBlockStmt | $empty

    list_239 ::= NEWLINE | list_239 NEWLINE

    list_240 ::= NEWLINE | list_240 NEWLINE

    seq_241 ::= moduleBody list_240

    opt_242 ::= seq_241 | $empty

    list_243 ::= NEWLINE | list_243 NEWLINE

    list_244 ::= NEWLINE | list_244 NEWLINE

    seq_245 ::= moduleBody list_244

    opt_246 ::= seq_245 | $empty

    list_247 ::= NEWLINE | list_247 NEWLINE

    list_248 ::= NEWLINE | list_248 NEWLINE

    seq_249 ::= moduleBody list_248

    opt_250 ::= seq_249 | $empty

    opt_251 ::= WS | $empty

    opt_252 ::= WS | $empty

    opt_253 ::= WS | $empty

    grp_254 ::= ON_ERROR | ON_LOCAL_ERROR

    opt_256 ::= COLON | $empty

    grp_255 ::= GOTO WS valueStmt opt_256 | RESUME WS NEXT

    opt_257 ::= WS | $empty

    opt_258 ::= WS | $empty

    seq_259 ::= opt_257 COMMA opt_258 valueStmt

    list_260 ::= $empty | list_260 seq_259

    opt_261 ::= WS | $empty

    opt_262 ::= WS | $empty

    seq_263 ::= opt_261 COMMA opt_262 valueStmt

    list_264 ::= $empty | list_264 seq_263

    grp_265 ::= APPEND | BINARY | INPUT | OUTPUT | RANDOM

    grp_267 ::= READ | WRITE | READ_WRITE

    grp_266 ::= WS ACCESS WS grp_267

    opt_268 ::= grp_266 | $empty

    grp_270 ::= SHARED | LOCK_READ | LOCK_WRITE | LOCK_READ_WRITE

    grp_269 ::= WS grp_270

    opt_271 ::= grp_269 | $empty

    opt_272 ::= WS | $empty

    opt_273 ::= WS | $empty

    seq_274 ::= WS LEN opt_272 EQ opt_273 valueStmt

    opt_275 ::= seq_274 | $empty

    opt_277 ::= WS | $empty

    grp_278 ::= SEMICOLON | COMMA

    opt_279 ::= WS | $empty

    opt_280 ::= outputList_Expression | $empty

    grp_276 ::= opt_277 grp_278 opt_279 opt_280

    list_281 ::= $empty | list_281 grp_276

    opt_282 ::= outputList_Expression | $empty

    opt_284 ::= WS | $empty

    grp_285 ::= SEMICOLON | COMMA

    opt_286 ::= WS | $empty

    opt_287 ::= outputList_Expression | $empty

    grp_283 ::= opt_284 grp_285 opt_286 opt_287

    list_288 ::= grp_283 | list_288 grp_283

    grp_289 ::= SPC | TAB

    opt_290 ::= WS | $empty

    opt_291 ::= WS | $empty

    opt_292 ::= WS | $empty

    seq_293 ::= opt_290 LPAREN opt_291 argsCall opt_292 RPAREN

    opt_294 ::= seq_293 | $empty

    opt_295 ::= WS | $empty

    opt_296 ::= WS | $empty

    seq_297 ::= opt_296 outputList

    opt_298 ::= seq_297 | $empty

    seq_299 ::= visibility WS

    opt_300 ::= seq_299 | $empty

    seq_301 ::= STATIC WS

    opt_302 ::= seq_301 | $empty

    opt_303 ::= typeHint | $empty

    opt_304 ::= WS | $empty

    seq_305 ::= opt_304 argList

    opt_306 ::= seq_305 | $empty

    seq_307 ::= WS asTypeClause

    opt_308 ::= seq_307 | $empty

    list_309 ::= NEWLINE | list_309 NEWLINE

    list_310 ::= NEWLINE | list_310 NEWLINE

    seq_311 ::= block list_310

    opt_312 ::= seq_311 | $empty

    seq_313 ::= visibility WS

    opt_314 ::= seq_313 | $empty

    seq_315 ::= STATIC WS

    opt_316 ::= seq_315 | $empty

    opt_317 ::= WS | $empty

    seq_318 ::= opt_317 argList

    opt_319 ::= seq_318 | $empty

    list_320 ::= NEWLINE | list_320 NEWLINE

    list_321 ::= NEWLINE | list_321 NEWLINE

    seq_322 ::= block list_321

    opt_323 ::= seq_322 | $empty

    seq_324 ::= visibility WS

    opt_325 ::= seq_324 | $empty

    seq_326 ::= STATIC WS

    opt_327 ::= seq_326 | $empty

    opt_328 ::= WS | $empty

    seq_329 ::= opt_328 argList

    opt_330 ::= seq_329 | $empty

    list_331 ::= NEWLINE | list_331 NEWLINE

    list_332 ::= NEWLINE | list_332 NEWLINE

    seq_333 ::= block list_332

    opt_334 ::= seq_333 | $empty

    opt_335 ::= WS | $empty

    opt_336 ::= WS | $empty

    opt_337 ::= valueStmt | $empty

    opt_338 ::= WS | $empty

    opt_339 ::= WS | $empty

    opt_340 ::= WS | $empty

    opt_341 ::= WS | $empty

    opt_342 ::= WS | $empty

    seq_343 ::= argsCall opt_342

    opt_344 ::= seq_343 | $empty

    seq_345 ::= opt_340 LPAREN opt_341 opt_344 RPAREN

    opt_346 ::= seq_345 | $empty

    seq_347 ::= WS valueStmt

    opt_348 ::= seq_347 | $empty

    seq_349 ::= PRESERVE WS

    opt_350 ::= seq_349 | $empty

    opt_351 ::= WS | $empty

    opt_352 ::= WS | $empty

    seq_353 ::= opt_351 COMMA opt_352 redimSubStmt

    list_354 ::= $empty | list_354 seq_353

    opt_355 ::= WS | $empty

    opt_356 ::= WS | $empty

    opt_357 ::= WS | $empty

    seq_358 ::= WS asTypeClause

    opt_359 ::= seq_358 | $empty

    grp_361 ::= NEXT | ambiguousIdentifier

    grp_360 ::= WS grp_361

    opt_362 ::= grp_360 | $empty

    opt_363 ::= WS | $empty

    opt_364 ::= WS | $empty

    opt_365 ::= WS | $empty

    opt_366 ::= WS | $empty

    opt_367 ::= WS | $empty

    opt_368 ::= WS | $empty

    opt_369 ::= WS | $empty

    opt_370 ::= WS | $empty

    opt_371 ::= WS | $empty

    opt_372 ::= WS | $empty

    opt_373 ::= WS | $empty

    opt_374 ::= WS | $empty

    list_375 ::= NEWLINE | list_375 NEWLINE

    list_376 ::= $empty | list_376 sC_Case

    opt_377 ::= WS | $empty

    opt_378 ::= WS | $empty

    opt_380 ::= COLON | $empty

    list_381 ::= $empty | list_381 NEWLINE

    list_382 ::= NEWLINE | list_382 NEWLINE

    grp_379 ::= opt_380 list_381 | list_382

    list_383 ::= NEWLINE | list_383 NEWLINE

    seq_384 ::= block list_383

    opt_385 ::= seq_384 | $empty

    opt_386 ::= WS | $empty

    opt_387 ::= WS | $empty

    seq_388 ::= opt_386 COMMA opt_387 sC_CondExpr

    list_389 ::= $empty | list_389 seq_388

    opt_390 ::= WS | $empty

    opt_391 ::= WS | $empty

    opt_392 ::= WS | $empty

    opt_393 ::= WS | $empty

    seq_394 ::= opt_392 COMMA opt_393 valueStmt

    opt_395 ::= seq_394 | $empty

    opt_396 ::= WS | $empty

    opt_397 ::= WS | $empty

    opt_398 ::= WS | $empty

    opt_399 ::= WS | $empty

    seq_400 ::= visibility WS

    opt_401 ::= seq_400 | $empty

    seq_402 ::= STATIC WS

    opt_403 ::= seq_402 | $empty

    opt_404 ::= WS | $empty

    seq_405 ::= opt_404 argList

    opt_406 ::= seq_405 | $empty

    list_407 ::= NEWLINE | list_407 NEWLINE

    list_408 ::= NEWLINE | list_408 NEWLINE

    seq_409 ::= block list_408

    opt_410 ::= seq_409 | $empty

    opt_411 ::= WS | $empty

    opt_412 ::= WS | $empty

    seq_413 ::= visibility WS

    opt_414 ::= seq_413 | $empty

    list_415 ::= NEWLINE | list_415 NEWLINE

    list_416 ::= $empty | list_416 typeStmt_Element

    opt_417 ::= WS | $empty

    opt_418 ::= WS | $empty

    seq_419 ::= opt_418 subscripts

    opt_420 ::= seq_419 | $empty

    opt_421 ::= WS | $empty

    seq_422 ::= opt_417 LPAREN opt_420 opt_421 RPAREN

    opt_423 ::= seq_422 | $empty

    seq_424 ::= WS asTypeClause

    opt_425 ::= seq_424 | $empty

    list_426 ::= NEWLINE | list_426 NEWLINE

    seq_427 ::= WS IS WS type_

    opt_428 ::= seq_427 | $empty

    opt_429 ::= WS | $empty

    opt_430 ::= WS | $empty

    seq_431 ::= WS TO WS valueStmt

    opt_432 ::= seq_431 | $empty

    seq_433 ::= opt_429 COMMA opt_430 valueStmt opt_432

    opt_434 ::= seq_433 | $empty

    opt_435 ::= WS | $empty

    opt_436 ::= WS | $empty

    opt_437 ::= WS | $empty

    seq_438 ::= opt_436 COMMA opt_437 valueStmt

    list_439 ::= $empty | list_439 seq_438

    opt_440 ::= WS | $empty

    opt_441 ::= WS | $empty

    opt_442 ::= WS | $empty

    opt_443 ::= WS | $empty

    opt_444 ::= WS | $empty

    grp_445 ::= PLUS | MINUS

    opt_446 ::= WS | $empty

    opt_447 ::= WS | $empty

    grp_448 ::= MULT | DIV

    opt_449 ::= WS | $empty

    opt_450 ::= WS | $empty

    opt_451 ::= WS | $empty

    opt_452 ::= WS | $empty

    opt_453 ::= WS | $empty

    opt_454 ::= WS | $empty

    grp_455 ::= PLUS | MINUS

    opt_456 ::= WS | $empty

    opt_457 ::= WS | $empty

    opt_458 ::= WS | $empty

    opt_459 ::= WS | $empty

    grp_460 ::= EQ | NEQ | LT | GT | LEQ | GEQ | LIKE | IS

    opt_461 ::= WS | $empty

    opt_463 ::= WS | $empty

    opt_464 ::= WS | $empty

    grp_462 ::= WS valueStmt | LPAREN opt_463 valueStmt opt_464 RPAREN

    opt_465 ::= WS | $empty

    opt_466 ::= WS | $empty

    opt_467 ::= WS | $empty

    opt_468 ::= WS | $empty

    opt_469 ::= WS | $empty

    opt_470 ::= WS | $empty

    opt_471 ::= WS | $empty

    opt_472 ::= WS | $empty

    opt_473 ::= WS | $empty

    opt_474 ::= WS | $empty

    grp_475 ::= DIM | STATIC | visibility

    seq_476 ::= WITHEVENTS WS

    opt_477 ::= seq_476 | $empty

    opt_478 ::= WS | $empty

    opt_479 ::= WS | $empty

    seq_480 ::= opt_478 COMMA opt_479 variableSubStmt

    list_481 ::= $empty | list_481 seq_480

    opt_482 ::= typeHint | $empty

    opt_483 ::= WS | $empty

    opt_484 ::= WS | $empty

    opt_485 ::= WS | $empty

    seq_486 ::= subscripts opt_485

    opt_487 ::= seq_486 | $empty

    opt_488 ::= WS | $empty

    seq_489 ::= opt_483 LPAREN opt_484 opt_487 RPAREN opt_488

    opt_490 ::= seq_489 | $empty

    seq_491 ::= WS asTypeClause

    opt_492 ::= seq_491 | $empty

    list_493 ::= NEWLINE | list_493 NEWLINE

    list_494 ::= $empty | list_494 block

    list_495 ::= $empty | list_495 NEWLINE

    opt_496 ::= WS | $empty

    opt_497 ::= WS | $empty

    seq_498 ::= NEW WS

    opt_499 ::= seq_498 | $empty

    list_500 ::= NEWLINE | list_500 NEWLINE

    list_501 ::= NEWLINE | list_501 NEWLINE

    seq_502 ::= block list_501

    opt_503 ::= seq_502 | $empty

    opt_504 ::= WS | $empty

    opt_505 ::= WS | $empty

    seq_506 ::= opt_505 outputList

    opt_507 ::= seq_506 | $empty

    opt_508 ::= typeHint | $empty

    opt_509 ::= WS | $empty

    opt_510 ::= WS | $empty

    opt_511 ::= WS | $empty

    seq_512 ::= opt_509 LPAREN opt_510 argsCall opt_511 RPAREN

    opt_513 ::= seq_512 | $empty

    opt_514 ::= implicitCallStmt_InStmt | $empty

    opt_515 ::= WS | $empty

    opt_516 ::= typeHint | $empty

    opt_517 ::= WS | $empty

    opt_518 ::= WS | $empty

    opt_519 ::= WS | $empty

    seq_520 ::= opt_517 LPAREN opt_518 argsCall opt_519 RPAREN

    opt_521 ::= seq_520 | $empty

    seq_522 ::= WS argsCall

    opt_523 ::= seq_522 | $empty

    opt_524 ::= implicitCallStmt_InStmt | $empty

    opt_525 ::= typeHint | $empty

    seq_526 ::= WS argsCall

    opt_527 ::= seq_526 | $empty

    opt_528 ::= dictionaryCallStmt | $empty

    opt_529 ::= typeHint | $empty

    opt_530 ::= dictionaryCallStmt | $empty

    grp_531 ::= ambiguousIdentifier | baseType | iCS_S_NestedProcedureCall

    opt_532 ::= typeHint | $empty

    opt_533 ::= WS | $empty

    opt_534 ::= WS | $empty

    opt_535 ::= WS | $empty

    seq_536 ::= argsCall opt_535

    opt_537 ::= seq_536 | $empty

    seq_538 ::= LPAREN opt_534 opt_537 RPAREN

    list_539 ::= seq_538 | list_539 seq_538

    opt_540 ::= dictionaryCallStmt | $empty

    opt_541 ::= typeHint | $empty

    opt_542 ::= WS | $empty

    opt_543 ::= WS | $empty

    opt_544 ::= WS | $empty

    seq_545 ::= argsCall opt_544

    opt_546 ::= seq_545 | $empty

    grp_547 ::= iCS_S_VariableOrProcedureCall | iCS_S_ProcedureOrArrayCall

    opt_548 ::= grp_547 | $empty

    list_549 ::= iCS_S_MemberCall | list_549 iCS_S_MemberCall

    opt_550 ::= dictionaryCallStmt | $empty

    opt_551 ::= WS | $empty

    grp_552 ::= iCS_S_VariableOrProcedureCall | iCS_S_ProcedureOrArrayCall

    opt_554 ::= argCall | $empty

    opt_555 ::= WS | $empty

    grp_556 ::= COMMA | SEMICOLON

    opt_557 ::= WS | $empty

    grp_553 ::= opt_554 opt_555 grp_556 opt_557

    list_558 ::= $empty | list_558 grp_553

    opt_560 ::= WS | $empty

    grp_561 ::= COMMA | SEMICOLON

    opt_562 ::= WS | $empty

    opt_563 ::= argCall | $empty

    grp_559 ::= opt_560 grp_561 opt_562 opt_563

    list_564 ::= $empty | list_564 grp_559

    grp_566 ::= BYVAL | BYREF | PARAMARRAY

    grp_565 ::= grp_566 WS

    opt_567 ::= grp_565 | $empty

    opt_568 ::= typeHint | $empty

    opt_569 ::= WS | $empty

    opt_570 ::= WS | $empty

    opt_571 ::= WS | $empty

    seq_572 ::= opt_570 COMMA opt_571 arg

    list_573 ::= $empty | list_573 seq_572

    seq_574 ::= opt_569 arg list_573

    opt_575 ::= seq_574 | $empty

    opt_576 ::= WS | $empty

    seq_577 ::= OPTIONAL WS

    opt_578 ::= seq_577 | $empty

    grp_580 ::= BYVAL | BYREF

    grp_579 ::= grp_580 WS

    opt_581 ::= grp_579 | $empty

    seq_582 ::= PARAMARRAY WS

    opt_583 ::= seq_582 | $empty

    opt_584 ::= typeHint | $empty

    opt_585 ::= WS | $empty

    opt_586 ::= WS | $empty

    seq_587 ::= opt_585 LPAREN opt_586 RPAREN

    opt_588 ::= seq_587 | $empty

    seq_589 ::= WS asTypeClause

    opt_590 ::= seq_589 | $empty

    opt_591 ::= WS | $empty

    seq_592 ::= opt_591 argDefaultValue

    opt_593 ::= seq_592 | $empty

    opt_594 ::= WS | $empty

    opt_595 ::= WS | $empty

    opt_596 ::= WS | $empty

    seq_597 ::= opt_595 COMMA opt_596 subscript_

    list_598 ::= $empty | list_598 seq_597

    seq_599 ::= valueStmt WS TO WS

    opt_600 ::= seq_599 | $empty

    grp_601 ::= IDENTIFIER | ambiguousKeyword

    list_602 ::= grp_601 | list_602 grp_601

    grp_603 ::= IDENTIFIER | ambiguousKeyword

    list_604 ::= grp_603 | list_604 grp_603

    seq_605 ::= NEW WS

    opt_606 ::= seq_605 | $empty

    seq_607 ::= WS fieldLength

    opt_608 ::= seq_607 | $empty

    grp_609 ::= ambiguousKeyword | IDENTIFIER

    list_610 ::= $empty | list_610 grp_609

    grp_611 ::= ambiguousKeyword | IDENTIFIER

    list_612 ::= grp_611 | list_612 grp_611

    seq_613 ::= DOT ambiguousIdentifier

    list_614 ::= $empty | list_614 seq_613

    opt_615 ::= WS | $empty

    grp_616 ::= integerLiteral | ambiguousIdentifier

    opt_617 ::= WS | $empty

    opt_618 ::= WS | $empty

    seq_619 ::= opt_617 MINUS opt_618 certainIdentifier

    opt_620 ::= seq_619 | $empty

    grp_621 ::= baseType | complexType

    opt_622 ::= WS | $empty

    opt_623 ::= WS | $empty

    seq_624 ::= opt_622 LPAREN opt_623 RPAREN

    opt_625 ::= seq_624 | $empty

    grp_626 ::= PLUS | MINUS

    list_627 ::= $empty | list_627 grp_626

    grp_628 ::= PLUS | MINUS

    list_629 ::= $empty | list_629 grp_628

    grp_630 ::= PLUS | MINUS

    list_631 ::= $empty | list_631 grp_630

%End
