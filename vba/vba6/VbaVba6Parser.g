-- AUTO-GENERATED from antlr/grammars-v4 vba/vba6 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack
%Options fp=VbaVba6Parser
%options package=lpg.grammars.vba.vba6
%options template=btParserTemplateF.gi
%options import_terminals=VbaVba6Lexer.gi
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

    module ::= opt_1 list_2 opt_5 opt_6 list_7 opt_8 list_9 opt_10 list_11 opt_12 list_13 opt_14

    moduleHeader ::= VERSION WS DOUBLELITERAL opt_16

    moduleConfig ::= BEGIN opt_18 list_19 list_20 END

    moduleConfigElement ::= ambiguousIdentifier opt_21 EQ opt_22 literal opt_24 list_25

    moduleAttributes ::= list_28

    moduleDeclarations ::= moduleDeclarationsElement list_31 list_32

    moduleOption ::= OPTION_BASE WS SHORTLITERAL
           | OPTION_COMPARE WS grp_33
           | OPTION WS EXPLICIT
           | OPTION WS PRIVATE WS MODULE

    moduleDeclarationsElement ::= comment
           | declareStmt
           | enumerationStmt
           | eventStmt
           | constStmt
           | implementsStmt
           | variableStmt
           | moduleOption
           | typeStmt
           | deftypeStmt
           | macroStmt

    macroStmt ::= macroConstStmt
           | macroIfThenElseStmt

    moduleBody ::= moduleBodyElement list_36 list_37

    moduleBodyElement ::= functionStmt
           | propertyGetStmt
           | propertySetStmt
           | propertyLetStmt
           | subStmt
           | macroStmt

    attributeStmt ::= ATTRIBUTE WS implicitCallStmt_InStmt opt_38 EQ opt_39 literal list_43

    block ::= blockStmt list_45 endOfStatement

    blockStmt ::= lineLabel
           | appactivateStmt
           | attributeStmt
           | beepStmt
           | chdirStmt
           | chdriveStmt
           | closeStmt
           | constStmt
           | dateStmt
           | deleteSettingStmt
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
           | lineNumber
           | loadStmt
           | lockStmt
           | lsetStmt
           | macroStmt
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
           | implicitCallStmt_InStmt

    appactivateStmt ::= APPACTIVATE WS valueStmt opt_49

    beepStmt ::= BEEP

    chdirStmt ::= CHDIR WS valueStmt

    chdriveStmt ::= CHDRIVE WS valueStmt

    closeStmt ::= CLOSE opt_55

    constStmt ::= opt_57 CONST WS constSubStmt list_61

    constSubStmt ::= ambiguousIdentifier opt_62 opt_64 opt_65 EQ opt_66 valueStmt

    dateStmt ::= DATE opt_67 EQ opt_68 valueStmt

    declareStmt ::= opt_70 DECLARE WS opt_72 grp_73 WS ambiguousIdentifier opt_76 WS LIB WS STRINGLITERAL opt_78 opt_81 opt_83

    deftypeStmt ::= grp_84 WS letterrange list_88

    deleteSettingStmt ::= DELETESETTING WS valueStmt opt_89 COMMA opt_90 valueStmt opt_94

    doLoopStmt ::= DO endOfStatement opt_95 LOOP
           | DO WS grp_96 WS valueStmt endOfStatement opt_97 LOOP
           | DO endOfStatement block LOOP WS grp_98 WS valueStmt

    endStmt ::= END

    enumerationStmt ::= opt_100 ENUM WS ambiguousIdentifier endOfStatement list_101 END_ENUM

    enumerationStmt_Constant ::= ambiguousIdentifier opt_105 endOfStatement

    eraseStmt ::= ERASE WS valueStmt list_108

    errorStmt ::= ERROR WS valueStmt

    eventStmt ::= opt_110 EVENT WS ambiguousIdentifier opt_111 argList

    exitStmt ::= EXIT_DO
           | EXIT_FOR
           | EXIT_FUNCTION
           | EXIT_PROPERTY
           | EXIT_SUB

    filecopyStmt ::= FILECOPY WS valueStmt opt_112 COMMA opt_113 valueStmt

    forEachStmt ::= FOR WS EACH WS ambiguousIdentifier opt_114 WS IN WS valueStmt endOfStatement opt_115 NEXT opt_117

    forNextStmt ::= FOR WS ambiguousIdentifier opt_118 opt_120 opt_121 EQ opt_122 valueStmt WS TO WS valueStmt opt_124 endOfStatement opt_125 NEXT opt_127

    functionStmt ::= opt_129 opt_131 FUNCTION opt_132 ambiguousIdentifier opt_133 opt_136 opt_139 endOfStatement opt_140 END_FUNCTION

    getStmt ::= GET WS fileNumber opt_141 COMMA opt_142 opt_143 opt_144 COMMA opt_145 valueStmt

    goSubStmt ::= GOSUB WS valueStmt

    goToStmt ::= GOTO WS valueStmt

    ifThenElseStmt ::= IF WS ifConditionStmt WS THEN WS blockStmt opt_147
           | ifBlockStmt list_148 opt_149 END_IF

    ifBlockStmt ::= IF WS ifConditionStmt WS THEN endOfStatement opt_150

    ifConditionStmt ::= valueStmt

    ifElseIfBlockStmt ::= ELSEIF WS ifConditionStmt WS THEN endOfStatement opt_151

    ifElseBlockStmt ::= ELSE endOfStatement opt_152

    implementsStmt ::= IMPLEMENTS WS ambiguousIdentifier

    inputStmt ::= INPUT WS fileNumber list_156

    killStmt ::= KILL WS valueStmt

    letStmt ::= opt_158 implicitCallStmt_InStmt opt_159 grp_160 opt_161 opt_162 valueStmt opt_163

    lineInputStmt ::= LINE_INPUT WS fileNumber opt_164 COMMA opt_165 valueStmt

    lineNumber ::= grp_166 opt_167 opt_168 opt_169 opt_170

    loadStmt ::= LOAD WS valueStmt

    lockStmt ::= LOCK WS valueStmt opt_176

    lsetStmt ::= LSET WS implicitCallStmt_InStmt opt_177 EQ opt_178 valueStmt

    macroConstStmt ::= MACRO_CONST opt_179 ambiguousIdentifier opt_180 EQ opt_181 valueStmt

    macroIfThenElseStmt ::= macroIfBlockStmt list_182 opt_183 MACRO_END_IF

    macroIfBlockStmt ::= MACRO_IF opt_184 ifConditionStmt WS THEN endOfStatement list_186

    macroElseIfBlockStmt ::= MACRO_ELSEIF opt_187 ifConditionStmt WS THEN endOfStatement list_189

    macroElseBlockStmt ::= MACRO_ELSE endOfStatement list_191

    midStmt ::= MID opt_192 LPAREN opt_193 argsCall opt_194 RPAREN

    mkdirStmt ::= MKDIR WS valueStmt

    nameStmt ::= NAME WS valueStmt WS AS WS valueStmt

    onErrorStmt ::= grp_195 WS grp_196

    onGoToStmt ::= ON WS valueStmt WS GOTO WS valueStmt list_200

    onGoSubStmt ::= ON WS valueStmt WS GOSUB WS valueStmt list_204

    openStmt ::= OPEN WS valueStmt WS FOR WS grp_205 opt_208 opt_211 WS AS WS fileNumber opt_215

    outputList ::= outputList_Expression list_221
           | opt_222 list_228

    outputList_Expression ::= valueStmt
           | grp_229 opt_234

    printStmt ::= PRINT WS fileNumber opt_235 COMMA opt_238

    propertyGetStmt ::= opt_240 opt_242 PROPERTY_GET WS ambiguousIdentifier opt_243 opt_246 opt_248 endOfStatement opt_249 END_PROPERTY

    propertySetStmt ::= opt_251 opt_253 PROPERTY_SET WS ambiguousIdentifier opt_256 endOfStatement opt_257 END_PROPERTY

    propertyLetStmt ::= opt_259 opt_261 PROPERTY_LET WS ambiguousIdentifier opt_264 endOfStatement opt_265 END_PROPERTY

    putStmt ::= PUT WS fileNumber opt_266 COMMA opt_267 opt_268 opt_269 COMMA opt_270 valueStmt

    raiseEventStmt ::= RAISEEVENT WS ambiguousIdentifier opt_277

    randomizeStmt ::= RANDOMIZE opt_279

    redimStmt ::= REDIM WS opt_281 redimSubStmt list_285

    redimSubStmt ::= implicitCallStmt_InStmt opt_286 LPAREN opt_287 subscripts opt_288 RPAREN opt_290

    resetStmt ::= RESET

    resumeStmt ::= RESUME opt_293

    returnStmt ::= RETURN

    rmdirStmt ::= RMDIR WS valueStmt

    rsetStmt ::= RSET WS implicitCallStmt_InStmt opt_294 EQ opt_295 valueStmt

    savepictureStmt ::= SAVEPICTURE WS valueStmt opt_296 COMMA opt_297 valueStmt

    saveSettingStmt ::= SAVESETTING WS valueStmt opt_298 COMMA opt_299 valueStmt opt_300 COMMA opt_301 valueStmt opt_302 COMMA opt_303 valueStmt

    seekStmt ::= SEEK WS fileNumber opt_304 COMMA opt_305 valueStmt

    selectCaseStmt ::= SELECT WS CASE WS valueStmt endOfStatement list_306 END_SELECT

    sC_Selection ::= IS opt_307 comparisonOperator opt_308 valueStmt
           | valueStmt WS TO WS valueStmt
           | valueStmt

    sC_Case ::= CASE WS sC_Cond endOfStatement opt_309

    sC_Cond ::= ELSE
           | sC_Selection list_313

    sendkeysStmt ::= SENDKEYS WS valueStmt opt_317

    setattrStmt ::= SETATTR WS valueStmt opt_318 COMMA opt_319 valueStmt

    setStmt ::= SET WS implicitCallStmt_InStmt opt_320 EQ opt_321 valueStmt

    stopStmt ::= STOP

    subStmt ::= opt_323 opt_325 SUB opt_326 ambiguousIdentifier opt_329 endOfStatement opt_330 END WS SUB

    timeStmt ::= TIME opt_331 EQ opt_332 valueStmt

    typeStmt ::= opt_334 TYPE WS ambiguousIdentifier endOfStatement list_335 END_TYPE

    typeStmt_Element ::= ambiguousIdentifier opt_342 opt_344 endOfStatement

    typeOfStmt ::= TYPEOF WS valueStmt opt_346

    unloadStmt ::= UNLOAD WS valueStmt

    unlockStmt ::= UNLOCK WS fileNumber opt_352

    valueStmt ::= literal
           | implicitCallStmt_InStmt
           | LPAREN opt_353 valueStmt list_357 RPAREN
           | NEW opt_358 valueStmt
           | typeOfStmt
           | midStmt
           | ADDRESSOF opt_359 valueStmt
           | implicitCallStmt_InStmt opt_360 ASSIGN opt_361 valueStmt
           | valueStmt opt_362 POW opt_363 valueStmt
           | MINUS opt_364 valueStmt
           | PLUS opt_365 valueStmt
           | valueStmt opt_366 grp_367 opt_368 valueStmt
           | valueStmt opt_369 MOD opt_370 valueStmt
           | valueStmt opt_371 grp_372 opt_373 valueStmt
           | valueStmt opt_374 AMPERSAND opt_375 valueStmt
           | valueStmt opt_376 grp_377 opt_378 valueStmt
           | NOT opt_379 valueStmt
           | valueStmt opt_380 AND opt_381 valueStmt
           | valueStmt opt_382 OR opt_383 valueStmt
           | valueStmt opt_384 XOR opt_385 valueStmt
           | valueStmt opt_386 EQV opt_387 valueStmt
           | valueStmt opt_388 IMP opt_389 valueStmt

    variableStmt ::= grp_390 WS opt_392 variableListStmt

    variableListStmt ::= variableSubStmt list_396

    variableSubStmt ::= ambiguousIdentifier opt_404 opt_405 opt_407

    whileWendStmt ::= WHILE WS valueStmt endOfStatement opt_408 WEND

    widthStmt ::= WIDTH WS fileNumber opt_409 COMMA opt_410 valueStmt

    withStmt ::= WITH WS grp_411 endOfStatement opt_413 END_WITH

    writeStmt ::= WRITE WS fileNumber opt_414 COMMA opt_417

    fileNumber ::= opt_418 valueStmt

    explicitCallStmt ::= eCS_ProcedureCall
           | eCS_MemberProcedureCall

    eCS_ProcedureCall ::= CALL WS ambiguousIdentifier opt_419 opt_424 list_427

    eCS_MemberProcedureCall ::= CALL WS opt_428 DOT ambiguousIdentifier opt_429 opt_434 list_437

    implicitCallStmt_InBlock ::= iCS_B_MemberProcedureCall
           | iCS_B_ProcedureCall

    iCS_B_MemberProcedureCall ::= opt_438 DOT ambiguousIdentifier opt_439 opt_441 opt_442 list_445

    iCS_B_ProcedureCall ::= certainIdentifier opt_447 list_450

    implicitCallStmt_InStmt ::= iCS_S_MembersCall
           | iCS_S_VariableOrProcedureCall
           | iCS_S_ProcedureOrArrayCall
           | iCS_S_DictionaryCall

    iCS_S_VariableOrProcedureCall ::= ambiguousIdentifier opt_451 opt_452 list_455

    iCS_S_ProcedureOrArrayCall ::= grp_456 opt_457 opt_458 LPAREN opt_459 opt_462 RPAREN opt_463 list_466

    iCS_S_MembersCall ::= opt_468 list_469 opt_470 list_473

    iCS_S_MemberCall ::= opt_474 grp_475 opt_476 grp_477

    iCS_S_DictionaryCall ::= dictionaryCallStmt

    argsCall ::= list_483 argCall list_489

    argCall ::= opt_490 opt_493 opt_494 valueStmt

    dictionaryCallStmt ::= BANG ambiguousIdentifier opt_495

    argList ::= LPAREN opt_502 opt_503 RPAREN

    arg ::= opt_505 opt_508 opt_510 ambiguousIdentifier opt_511 opt_515 opt_518 opt_521

    argDefaultValue ::= EQ opt_522 valueStmt

    subscripts ::= subscript_ list_526

    subscript_ ::= opt_528 opt_529 valueStmt opt_530

    ambiguousIdentifier ::= list_532

    asTypeClause ::= AS opt_533 opt_535 type_ opt_538

    baseType ::= BOOLEAN
           | BYTE
           | COLLECTION
           | DATE
           | DOUBLE
           | INTEGER
           | LONG
           | SINGLE
           | STRING opt_542
           | VARIANT

    certainIdentifier ::= IDENTIFIER list_544
           | ambiguousKeyword list_546

    comparisonOperator ::= LT
           | LEQ
           | GT
           | GEQ
           | EQ
           | NEQ
           | IS
           | LIKE

    complexType ::= ambiguousIdentifier list_549

    fieldLength ::= MULT opt_550 grp_551

    letterrange ::= certainIdentifier opt_555

    lineLabel ::= ambiguousIdentifier COLON

    literal ::= HEXLITERAL
           | OCTLITERAL
           | DATELITERAL
           | DOUBLELITERAL
           | INTEGERLITERAL
           | SHORTLITERAL
           | STRINGLITERAL
           | TRUE
           | FALSE
           | NOTHING
           | NULL_

    type_ ::= grp_556 opt_560

    typeHint ::= AMP
           | PERCENT
           | HASH
           | BANG
           | AT
           | DOLLAR

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
           | DATABASE
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

    remComment ::= REMCOMMENT

    comment ::= COMMENT

    endOfLine ::= opt_561 grp_562 opt_563

    endOfStatement ::= list_567

    opt_1 ::= WS | $empty

    list_2 ::= $empty | list_2 endOfLine

    list_3 ::= $empty | list_3 endOfLine

    seq_4 ::= moduleHeader list_3

    opt_5 ::= seq_4 | $empty

    opt_6 ::= moduleConfig | $empty

    list_7 ::= $empty | list_7 endOfLine

    opt_8 ::= moduleAttributes | $empty

    list_9 ::= $empty | list_9 endOfLine

    opt_10 ::= moduleDeclarations | $empty

    list_11 ::= $empty | list_11 endOfLine

    opt_12 ::= moduleBody | $empty

    list_13 ::= $empty | list_13 endOfLine

    opt_14 ::= WS | $empty

    seq_15 ::= WS CLASS

    opt_16 ::= seq_15 | $empty

    seq_17 ::= WS GUID WS ambiguousIdentifier

    opt_18 ::= seq_17 | $empty

    list_19 ::= $empty | list_19 endOfLine

    list_20 ::= moduleConfigElement | list_20 moduleConfigElement

    opt_21 ::= WS | $empty

    opt_22 ::= WS | $empty

    seq_23 ::= COLON literal

    opt_24 ::= seq_23 | $empty

    list_25 ::= $empty | list_25 endOfLine

    list_26 ::= endOfLine | list_26 endOfLine

    seq_27 ::= attributeStmt list_26

    list_28 ::= seq_27 | list_28 seq_27

    list_29 ::= endOfLine | list_29 endOfLine

    seq_30 ::= list_29 moduleDeclarationsElement

    list_31 ::= $empty | list_31 seq_30

    list_32 ::= $empty | list_32 endOfLine

    grp_33 ::= BINARY | TEXT | DATABASE

    list_34 ::= endOfLine | list_34 endOfLine

    seq_35 ::= list_34 moduleBodyElement

    list_36 ::= $empty | list_36 seq_35

    list_37 ::= $empty | list_37 endOfLine

    opt_38 ::= WS | $empty

    opt_39 ::= WS | $empty

    opt_40 ::= WS | $empty

    opt_41 ::= WS | $empty

    seq_42 ::= opt_40 COMMA opt_41 literal

    list_43 ::= $empty | list_43 seq_42

    seq_44 ::= endOfStatement blockStmt

    list_45 ::= $empty | list_45 seq_44

    opt_46 ::= WS | $empty

    opt_47 ::= WS | $empty

    seq_48 ::= opt_46 COMMA opt_47 valueStmt

    opt_49 ::= seq_48 | $empty

    opt_50 ::= WS | $empty

    opt_51 ::= WS | $empty

    seq_52 ::= opt_50 COMMA opt_51 fileNumber

    list_53 ::= $empty | list_53 seq_52

    seq_54 ::= WS fileNumber list_53

    opt_55 ::= seq_54 | $empty

    seq_56 ::= visibility WS

    opt_57 ::= seq_56 | $empty

    opt_58 ::= WS | $empty

    opt_59 ::= WS | $empty

    seq_60 ::= opt_58 COMMA opt_59 constSubStmt

    list_61 ::= $empty | list_61 seq_60

    opt_62 ::= typeHint | $empty

    seq_63 ::= WS asTypeClause

    opt_64 ::= seq_63 | $empty

    opt_65 ::= WS | $empty

    opt_66 ::= WS | $empty

    opt_67 ::= WS | $empty

    opt_68 ::= WS | $empty

    seq_69 ::= visibility WS

    opt_70 ::= seq_69 | $empty

    seq_71 ::= PTRSAFE WS

    opt_72 ::= seq_71 | $empty

    opt_74 ::= typeHint | $empty

    seq_75 ::= FUNCTION opt_74

    grp_73 ::= seq_75 | SUB

    opt_76 ::= typeHint | $empty

    seq_77 ::= WS ALIAS WS STRINGLITERAL

    opt_78 ::= seq_77 | $empty

    opt_79 ::= WS | $empty

    seq_80 ::= opt_79 argList

    opt_81 ::= seq_80 | $empty

    seq_82 ::= WS asTypeClause

    opt_83 ::= seq_82 | $empty

    grp_84 ::= DEFBOOL | DEFBYTE | DEFINT | DEFLNG | DEFCUR | DEFSNG | DEFDBL | DEFDEC | DEFDATE | DEFSTR | DEFOBJ | DEFVAR

    opt_85 ::= WS | $empty

    opt_86 ::= WS | $empty

    seq_87 ::= opt_85 COMMA opt_86 letterrange

    list_88 ::= $empty | list_88 seq_87

    opt_89 ::= WS | $empty

    opt_90 ::= WS | $empty

    opt_91 ::= WS | $empty

    opt_92 ::= WS | $empty

    seq_93 ::= opt_91 COMMA opt_92 valueStmt

    opt_94 ::= seq_93 | $empty

    opt_95 ::= block | $empty

    grp_96 ::= WHILE | UNTIL

    opt_97 ::= block | $empty

    grp_98 ::= WHILE | UNTIL

    seq_99 ::= visibility WS

    opt_100 ::= seq_99 | $empty

    list_101 ::= $empty | list_101 enumerationStmt_Constant

    opt_102 ::= WS | $empty

    opt_103 ::= WS | $empty

    seq_104 ::= opt_102 EQ opt_103 valueStmt

    opt_105 ::= seq_104 | $empty

    opt_106 ::= WS | $empty

    seq_107 ::= COMMA opt_106 valueStmt

    list_108 ::= $empty | list_108 seq_107

    seq_109 ::= visibility WS

    opt_110 ::= seq_109 | $empty

    opt_111 ::= WS | $empty

    opt_112 ::= WS | $empty

    opt_113 ::= WS | $empty

    opt_114 ::= typeHint | $empty

    opt_115 ::= block | $empty

    seq_116 ::= WS ambiguousIdentifier

    opt_117 ::= seq_116 | $empty

    opt_118 ::= typeHint | $empty

    seq_119 ::= WS asTypeClause

    opt_120 ::= seq_119 | $empty

    opt_121 ::= WS | $empty

    opt_122 ::= WS | $empty

    seq_123 ::= WS STEP WS valueStmt

    opt_124 ::= seq_123 | $empty

    opt_125 ::= block | $empty

    seq_126 ::= WS ambiguousIdentifier

    opt_127 ::= seq_126 | $empty

    seq_128 ::= visibility WS

    opt_129 ::= seq_128 | $empty

    seq_130 ::= STATIC WS

    opt_131 ::= seq_130 | $empty

    opt_132 ::= WS | $empty

    opt_133 ::= typeHint | $empty

    opt_134 ::= WS | $empty

    seq_135 ::= opt_134 argList

    opt_136 ::= seq_135 | $empty

    opt_137 ::= WS | $empty

    seq_138 ::= opt_137 asTypeClause

    opt_139 ::= seq_138 | $empty

    opt_140 ::= block | $empty

    opt_141 ::= WS | $empty

    opt_142 ::= WS | $empty

    opt_143 ::= valueStmt | $empty

    opt_144 ::= WS | $empty

    opt_145 ::= WS | $empty

    seq_146 ::= WS ELSE WS blockStmt

    opt_147 ::= seq_146 | $empty

    list_148 ::= $empty | list_148 ifElseIfBlockStmt

    opt_149 ::= ifElseBlockStmt | $empty

    opt_150 ::= block | $empty

    opt_151 ::= block | $empty

    opt_152 ::= block | $empty

    opt_153 ::= WS | $empty

    opt_154 ::= WS | $empty

    seq_155 ::= opt_153 COMMA opt_154 valueStmt

    list_156 ::= seq_155 | list_156 seq_155

    seq_157 ::= LET WS

    opt_158 ::= seq_157 | $empty

    opt_159 ::= WS | $empty

    grp_160 ::= EQ | PLUS_EQ | MINUS_EQ

    opt_161 ::= WS | $empty

    opt_162 ::= typeHint | $empty

    opt_163 ::= typeHint | $empty

    opt_164 ::= WS | $empty

    opt_165 ::= WS | $empty

    grp_166 ::= INTEGERLITERAL | SHORTLITERAL

    opt_167 ::= NEWLINE | $empty

    opt_168 ::= COLON | $empty

    opt_169 ::= NEWLINE | $empty

    opt_170 ::= WS | $empty

    opt_171 ::= WS | $empty

    opt_172 ::= WS | $empty

    seq_173 ::= WS TO WS valueStmt

    opt_174 ::= seq_173 | $empty

    seq_175 ::= opt_171 COMMA opt_172 valueStmt opt_174

    opt_176 ::= seq_175 | $empty

    opt_177 ::= WS | $empty

    opt_178 ::= WS | $empty

    opt_179 ::= WS | $empty

    opt_180 ::= WS | $empty

    opt_181 ::= WS | $empty

    list_182 ::= $empty | list_182 macroElseIfBlockStmt

    opt_183 ::= macroElseBlockStmt | $empty

    opt_184 ::= WS | $empty

    grp_185 ::= moduleDeclarations | moduleBody | block

    list_186 ::= $empty | list_186 grp_185

    opt_187 ::= WS | $empty

    grp_188 ::= moduleDeclarations | moduleBody | block

    list_189 ::= $empty | list_189 grp_188

    grp_190 ::= moduleDeclarations | moduleBody | block

    list_191 ::= $empty | list_191 grp_190

    opt_192 ::= WS | $empty

    opt_193 ::= WS | $empty

    opt_194 ::= WS | $empty

    grp_195 ::= ON_ERROR | ON_LOCAL_ERROR

    grp_196 ::= GOTO WS valueStmt | RESUME WS NEXT

    opt_197 ::= WS | $empty

    opt_198 ::= WS | $empty

    seq_199 ::= opt_197 COMMA opt_198 valueStmt

    list_200 ::= $empty | list_200 seq_199

    opt_201 ::= WS | $empty

    opt_202 ::= WS | $empty

    seq_203 ::= opt_201 COMMA opt_202 valueStmt

    list_204 ::= $empty | list_204 seq_203

    grp_205 ::= APPEND | BINARY | INPUT | OUTPUT | RANDOM

    grp_207 ::= READ | WRITE | READ_WRITE

    grp_206 ::= WS ACCESS WS grp_207

    opt_208 ::= grp_206 | $empty

    grp_210 ::= SHARED | LOCK_READ | LOCK_WRITE | LOCK_READ_WRITE

    grp_209 ::= WS grp_210

    opt_211 ::= grp_209 | $empty

    opt_212 ::= WS | $empty

    opt_213 ::= WS | $empty

    seq_214 ::= WS LEN opt_212 EQ opt_213 valueStmt

    opt_215 ::= seq_214 | $empty

    opt_217 ::= WS | $empty

    grp_218 ::= SEMI | COMMA

    opt_219 ::= WS | $empty

    opt_220 ::= outputList_Expression | $empty

    grp_216 ::= opt_217 grp_218 opt_219 opt_220

    list_221 ::= $empty | list_221 grp_216

    opt_222 ::= outputList_Expression | $empty

    opt_224 ::= WS | $empty

    grp_225 ::= SEMI | COMMA

    opt_226 ::= WS | $empty

    opt_227 ::= outputList_Expression | $empty

    grp_223 ::= opt_224 grp_225 opt_226 opt_227

    list_228 ::= grp_223 | list_228 grp_223

    grp_229 ::= SPC | TAB

    opt_230 ::= WS | $empty

    opt_231 ::= WS | $empty

    opt_232 ::= WS | $empty

    seq_233 ::= opt_230 LPAREN opt_231 argsCall opt_232 RPAREN

    opt_234 ::= seq_233 | $empty

    opt_235 ::= WS | $empty

    opt_236 ::= WS | $empty

    seq_237 ::= opt_236 outputList

    opt_238 ::= seq_237 | $empty

    seq_239 ::= visibility WS

    opt_240 ::= seq_239 | $empty

    seq_241 ::= STATIC WS

    opt_242 ::= seq_241 | $empty

    opt_243 ::= typeHint | $empty

    opt_244 ::= WS | $empty

    seq_245 ::= opt_244 argList

    opt_246 ::= seq_245 | $empty

    seq_247 ::= WS asTypeClause

    opt_248 ::= seq_247 | $empty

    opt_249 ::= block | $empty

    seq_250 ::= visibility WS

    opt_251 ::= seq_250 | $empty

    seq_252 ::= STATIC WS

    opt_253 ::= seq_252 | $empty

    opt_254 ::= WS | $empty

    seq_255 ::= opt_254 argList

    opt_256 ::= seq_255 | $empty

    opt_257 ::= block | $empty

    seq_258 ::= visibility WS

    opt_259 ::= seq_258 | $empty

    seq_260 ::= STATIC WS

    opt_261 ::= seq_260 | $empty

    opt_262 ::= WS | $empty

    seq_263 ::= opt_262 argList

    opt_264 ::= seq_263 | $empty

    opt_265 ::= block | $empty

    opt_266 ::= WS | $empty

    opt_267 ::= WS | $empty

    opt_268 ::= valueStmt | $empty

    opt_269 ::= WS | $empty

    opt_270 ::= WS | $empty

    opt_271 ::= WS | $empty

    opt_272 ::= WS | $empty

    opt_273 ::= WS | $empty

    seq_274 ::= argsCall opt_273

    opt_275 ::= seq_274 | $empty

    seq_276 ::= opt_271 LPAREN opt_272 opt_275 RPAREN

    opt_277 ::= seq_276 | $empty

    seq_278 ::= WS valueStmt

    opt_279 ::= seq_278 | $empty

    seq_280 ::= PRESERVE WS

    opt_281 ::= seq_280 | $empty

    opt_282 ::= WS | $empty

    opt_283 ::= WS | $empty

    seq_284 ::= opt_282 COMMA opt_283 redimSubStmt

    list_285 ::= $empty | list_285 seq_284

    opt_286 ::= WS | $empty

    opt_287 ::= WS | $empty

    opt_288 ::= WS | $empty

    seq_289 ::= WS asTypeClause

    opt_290 ::= seq_289 | $empty

    grp_292 ::= NEXT | ambiguousIdentifier

    grp_291 ::= WS grp_292

    opt_293 ::= grp_291 | $empty

    opt_294 ::= WS | $empty

    opt_295 ::= WS | $empty

    opt_296 ::= WS | $empty

    opt_297 ::= WS | $empty

    opt_298 ::= WS | $empty

    opt_299 ::= WS | $empty

    opt_300 ::= WS | $empty

    opt_301 ::= WS | $empty

    opt_302 ::= WS | $empty

    opt_303 ::= WS | $empty

    opt_304 ::= WS | $empty

    opt_305 ::= WS | $empty

    list_306 ::= $empty | list_306 sC_Case

    opt_307 ::= WS | $empty

    opt_308 ::= WS | $empty

    opt_309 ::= block | $empty

    opt_310 ::= WS | $empty

    opt_311 ::= WS | $empty

    seq_312 ::= opt_310 COMMA opt_311 sC_Selection

    list_313 ::= $empty | list_313 seq_312

    opt_314 ::= WS | $empty

    opt_315 ::= WS | $empty

    seq_316 ::= opt_314 COMMA opt_315 valueStmt

    opt_317 ::= seq_316 | $empty

    opt_318 ::= WS | $empty

    opt_319 ::= WS | $empty

    opt_320 ::= WS | $empty

    opt_321 ::= WS | $empty

    seq_322 ::= visibility WS

    opt_323 ::= seq_322 | $empty

    seq_324 ::= STATIC WS

    opt_325 ::= seq_324 | $empty

    opt_326 ::= WS | $empty

    opt_327 ::= WS | $empty

    seq_328 ::= opt_327 argList

    opt_329 ::= seq_328 | $empty

    opt_330 ::= block | $empty

    opt_331 ::= WS | $empty

    opt_332 ::= WS | $empty

    seq_333 ::= visibility WS

    opt_334 ::= seq_333 | $empty

    list_335 ::= $empty | list_335 typeStmt_Element

    opt_336 ::= WS | $empty

    opt_337 ::= WS | $empty

    seq_338 ::= opt_337 subscripts

    opt_339 ::= seq_338 | $empty

    opt_340 ::= WS | $empty

    seq_341 ::= opt_336 LPAREN opt_339 opt_340 RPAREN

    opt_342 ::= seq_341 | $empty

    seq_343 ::= WS asTypeClause

    opt_344 ::= seq_343 | $empty

    seq_345 ::= WS IS WS type_

    opt_346 ::= seq_345 | $empty

    opt_347 ::= WS | $empty

    opt_348 ::= WS | $empty

    seq_349 ::= WS TO WS valueStmt

    opt_350 ::= seq_349 | $empty

    seq_351 ::= opt_347 COMMA opt_348 valueStmt opt_350

    opt_352 ::= seq_351 | $empty

    opt_353 ::= WS | $empty

    opt_354 ::= WS | $empty

    opt_355 ::= WS | $empty

    seq_356 ::= opt_354 COMMA opt_355 valueStmt

    list_357 ::= $empty | list_357 seq_356

    opt_358 ::= WS | $empty

    opt_359 ::= WS | $empty

    opt_360 ::= WS | $empty

    opt_361 ::= WS | $empty

    opt_362 ::= WS | $empty

    opt_363 ::= WS | $empty

    opt_364 ::= WS | $empty

    opt_365 ::= WS | $empty

    opt_366 ::= WS | $empty

    grp_367 ::= DIV | MULT

    opt_368 ::= WS | $empty

    opt_369 ::= WS | $empty

    opt_370 ::= WS | $empty

    opt_371 ::= WS | $empty

    grp_372 ::= PLUS | MINUS

    opt_373 ::= WS | $empty

    opt_374 ::= WS | $empty

    opt_375 ::= WS | $empty

    opt_376 ::= WS | $empty

    grp_377 ::= IS | LIKE | GEQ | LEQ | GT | LT | NEQ | EQ

    opt_378 ::= WS | $empty

    opt_379 ::= WS | $empty

    opt_380 ::= WS | $empty

    opt_381 ::= WS | $empty

    opt_382 ::= WS | $empty

    opt_383 ::= WS | $empty

    opt_384 ::= WS | $empty

    opt_385 ::= WS | $empty

    opt_386 ::= WS | $empty

    opt_387 ::= WS | $empty

    opt_388 ::= WS | $empty

    opt_389 ::= WS | $empty

    grp_390 ::= DIM | STATIC | visibility

    seq_391 ::= WITHEVENTS WS

    opt_392 ::= seq_391 | $empty

    opt_393 ::= WS | $empty

    opt_394 ::= WS | $empty

    seq_395 ::= opt_393 COMMA opt_394 variableSubStmt

    list_396 ::= $empty | list_396 seq_395

    opt_397 ::= WS | $empty

    opt_398 ::= WS | $empty

    opt_399 ::= WS | $empty

    seq_400 ::= subscripts opt_399

    opt_401 ::= seq_400 | $empty

    opt_402 ::= WS | $empty

    seq_403 ::= opt_397 LPAREN opt_398 opt_401 RPAREN opt_402

    opt_404 ::= seq_403 | $empty

    opt_405 ::= typeHint | $empty

    seq_406 ::= WS asTypeClause

    opt_407 ::= seq_406 | $empty

    opt_408 ::= block | $empty

    opt_409 ::= WS | $empty

    opt_410 ::= WS | $empty

    seq_412 ::= NEW WS type_

    grp_411 ::= implicitCallStmt_InStmt | seq_412

    opt_413 ::= block | $empty

    opt_414 ::= WS | $empty

    opt_415 ::= WS | $empty

    seq_416 ::= opt_415 outputList

    opt_417 ::= seq_416 | $empty

    opt_418 ::= HASH | $empty

    opt_419 ::= typeHint | $empty

    opt_420 ::= WS | $empty

    opt_421 ::= WS | $empty

    opt_422 ::= WS | $empty

    seq_423 ::= opt_420 LPAREN opt_421 argsCall opt_422 RPAREN

    opt_424 ::= seq_423 | $empty

    opt_425 ::= WS | $empty

    seq_426 ::= opt_425 LPAREN subscripts RPAREN

    list_427 ::= $empty | list_427 seq_426

    opt_428 ::= implicitCallStmt_InStmt | $empty

    opt_429 ::= typeHint | $empty

    opt_430 ::= WS | $empty

    opt_431 ::= WS | $empty

    opt_432 ::= WS | $empty

    seq_433 ::= opt_430 LPAREN opt_431 argsCall opt_432 RPAREN

    opt_434 ::= seq_433 | $empty

    opt_435 ::= WS | $empty

    seq_436 ::= opt_435 LPAREN subscripts RPAREN

    list_437 ::= $empty | list_437 seq_436

    opt_438 ::= implicitCallStmt_InStmt | $empty

    opt_439 ::= typeHint | $empty

    seq_440 ::= WS argsCall

    opt_441 ::= seq_440 | $empty

    opt_442 ::= dictionaryCallStmt | $empty

    opt_443 ::= WS | $empty

    seq_444 ::= opt_443 LPAREN subscripts RPAREN

    list_445 ::= $empty | list_445 seq_444

    seq_446 ::= WS argsCall

    opt_447 ::= seq_446 | $empty

    opt_448 ::= WS | $empty

    seq_449 ::= opt_448 LPAREN subscripts RPAREN

    list_450 ::= $empty | list_450 seq_449

    opt_451 ::= typeHint | $empty

    opt_452 ::= dictionaryCallStmt | $empty

    opt_453 ::= WS | $empty

    seq_454 ::= opt_453 LPAREN subscripts RPAREN

    list_455 ::= $empty | list_455 seq_454

    grp_456 ::= ambiguousIdentifier | baseType

    opt_457 ::= typeHint | $empty

    opt_458 ::= WS | $empty

    opt_459 ::= WS | $empty

    opt_460 ::= WS | $empty

    seq_461 ::= argsCall opt_460

    opt_462 ::= seq_461 | $empty

    opt_463 ::= dictionaryCallStmt | $empty

    opt_464 ::= WS | $empty

    seq_465 ::= opt_464 LPAREN subscripts RPAREN

    list_466 ::= $empty | list_466 seq_465

    grp_467 ::= iCS_S_VariableOrProcedureCall | iCS_S_ProcedureOrArrayCall

    opt_468 ::= grp_467 | $empty

    list_469 ::= iCS_S_MemberCall | list_469 iCS_S_MemberCall

    opt_470 ::= dictionaryCallStmt | $empty

    opt_471 ::= WS | $empty

    seq_472 ::= opt_471 LPAREN subscripts RPAREN

    list_473 ::= $empty | list_473 seq_472

    opt_474 ::= LINE_CONTINUATION | $empty

    grp_475 ::= DOT | BANG

    opt_476 ::= LINE_CONTINUATION | $empty

    grp_477 ::= iCS_S_VariableOrProcedureCall | iCS_S_ProcedureOrArrayCall

    opt_479 ::= argCall | $empty

    opt_480 ::= WS | $empty

    grp_481 ::= COMMA | SEMI

    opt_482 ::= WS | $empty

    grp_478 ::= opt_479 opt_480 grp_481 opt_482

    list_483 ::= $empty | list_483 grp_478

    opt_485 ::= WS | $empty

    grp_486 ::= COMMA | SEMI

    opt_487 ::= WS | $empty

    opt_488 ::= argCall | $empty

    grp_484 ::= opt_485 grp_486 opt_487 opt_488

    list_489 ::= $empty | list_489 grp_484

    opt_490 ::= LPAREN | $empty

    grp_492 ::= BYVAL | BYREF | PARAMARRAY

    grp_491 ::= grp_492 WS

    opt_493 ::= grp_491 | $empty

    opt_494 ::= RPAREN | $empty

    opt_495 ::= typeHint | $empty

    opt_496 ::= WS | $empty

    opt_497 ::= WS | $empty

    opt_498 ::= WS | $empty

    seq_499 ::= opt_497 COMMA opt_498 arg

    list_500 ::= $empty | list_500 seq_499

    seq_501 ::= opt_496 arg list_500

    opt_502 ::= seq_501 | $empty

    opt_503 ::= WS | $empty

    seq_504 ::= OPTIONAL WS

    opt_505 ::= seq_504 | $empty

    grp_507 ::= BYVAL | BYREF

    grp_506 ::= grp_507 WS

    opt_508 ::= grp_506 | $empty

    seq_509 ::= PARAMARRAY WS

    opt_510 ::= seq_509 | $empty

    opt_511 ::= typeHint | $empty

    opt_512 ::= WS | $empty

    opt_513 ::= WS | $empty

    seq_514 ::= opt_512 LPAREN opt_513 RPAREN

    opt_515 ::= seq_514 | $empty

    opt_516 ::= WS | $empty

    seq_517 ::= opt_516 asTypeClause

    opt_518 ::= seq_517 | $empty

    opt_519 ::= WS | $empty

    seq_520 ::= opt_519 argDefaultValue

    opt_521 ::= seq_520 | $empty

    opt_522 ::= WS | $empty

    opt_523 ::= WS | $empty

    opt_524 ::= WS | $empty

    seq_525 ::= opt_523 COMMA opt_524 subscript_

    list_526 ::= $empty | list_526 seq_525

    seq_527 ::= valueStmt WS TO WS

    opt_528 ::= seq_527 | $empty

    opt_529 ::= typeHint | $empty

    opt_530 ::= typeHint | $empty

    grp_531 ::= IDENTIFIER | ambiguousKeyword

    list_532 ::= grp_531 | list_532 grp_531

    opt_533 ::= WS | $empty

    seq_534 ::= NEW WS

    opt_535 ::= seq_534 | $empty

    opt_536 ::= WS | $empty

    seq_537 ::= opt_536 fieldLength

    opt_538 ::= seq_537 | $empty

    opt_539 ::= WS | $empty

    opt_540 ::= WS | $empty

    seq_541 ::= opt_539 MULT opt_540 valueStmt

    opt_542 ::= seq_541 | $empty

    grp_543 ::= ambiguousKeyword | IDENTIFIER

    list_544 ::= $empty | list_544 grp_543

    grp_545 ::= ambiguousKeyword | IDENTIFIER

    list_546 ::= grp_545 | list_546 grp_545

    grp_548 ::= DOT | BANG

    grp_547 ::= grp_548 ambiguousIdentifier

    list_549 ::= $empty | list_549 grp_547

    opt_550 ::= WS | $empty

    grp_551 ::= INTEGERLITERAL | ambiguousIdentifier

    opt_552 ::= WS | $empty

    opt_553 ::= WS | $empty

    seq_554 ::= opt_552 MINUS opt_553 certainIdentifier

    opt_555 ::= seq_554 | $empty

    grp_556 ::= baseType | complexType

    opt_557 ::= WS | $empty

    opt_558 ::= WS | $empty

    seq_559 ::= opt_557 LPAREN opt_558 RPAREN

    opt_560 ::= seq_559 | $empty

    opt_561 ::= WS | $empty

    grp_562 ::= NEWLINE | comment | remComment

    opt_563 ::= WS | $empty

    opt_565 ::= WS | $empty

    opt_566 ::= WS | $empty

    grp_564 ::= endOfLine | opt_565 COLON opt_566

    list_567 ::= $empty | list_567 grp_564

%End
