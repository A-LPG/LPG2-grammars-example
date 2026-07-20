-- AUTO-GENERATED from antlr/grammars-v4 fortran/fortran90 by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
%Options fp=FortranFortran90Parser
%options package=lpg.grammars.fortran.fortran90
%options template=dtParserTemplateF.gi
%options import_terminals=FortranFortran90Lexer.gi
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
    program
%End

%Rules
    program ::= executableProgram

    executableProgram ::= list_1

    programUnit ::= mainProgram
           | functionSubprogram
           | subroutineSubprogram
           | blockDataSubprogram
           | module

    mainProgram ::= opt_2 mainRange

    programStmt ::= PROGRAM NAME

    mainRange ::= seq_4
           | seq_5

    bodyPlusInternals ::= body containsStmt internalSubprogram
           | containsStmt internalSubprogram
           | bodyPlusInternals internalSubprogram

    internalSubprogram ::= functionSubprogram
           | subroutineSubprogram

    specificationPartConstruct ::= implicitStmt
           | parameterStmt
           | formatStmt
           | entryStmt
           | declarationConstruct
           | includeStmt
           | useStmt

    useStmt ::= USE NAME
           | USE NAME COMMA ONLY COLON
           | USE NAME COMMA renameList
           | USE NAME COMMA ONLY COLON onlyList

    onlyList ::= onlyStmt list_7

    onlyStmt ::= genericSpec
           | ident IMPLIEDT useName
           | useName

    renameList ::= rename list_9

    rename ::= ident IMPLIEDT useName

    useName ::= ident

    parameterStmt ::= PARAMETER LPAREN namedConstantDefList RPAREN

    namedConstantDefList ::= list_10

    namedConstantDef ::= NAME ASSIGN expression

    endProgramStmt ::= END
           | END PROGRAM opt_11

    blockDataSubprogram ::= blockDataStmt blockDataBody endBlockDataStmt
           | blockDataStmt endBlockDataStmt

    blockDataStmt ::= BLOCKDATA opt_12
           | BLOCK DATA opt_13

    blockDataBody ::= blockDataBodyConstruct
           | blockDataBody blockDataBodyConstruct

    blockDataBodyConstruct ::= specificationPartConstruct

    endBlockDataStmt ::= ENDBLOCKDATA opt_14
           | END BLOCKDATA opt_15
           | ENDBLOCK DATA opt_16
           | END BLOCK DATA opt_17
           | END

    formatStmt ::= ICON FORMAT LPAREN opt_18 RPAREN

    fmtSpec ::= formatedit
           | FORMATSEP
           | FORMATSEP formatedit
           | fmtSpec FORMATSEP
           | fmtSpec FORMATSEP formatedit
           | fmtSpec COMMA formatedit
           | fmtSpec COMMA FORMATSEP
           | fmtSpec COMMA FORMATSEP formatedit

    formatedit ::= editElement
           | ICON editElement
           | XCON
           | PCON
           | PCON editElement
           | PCON ICON editElement

    editElement ::= FCON
           | mislexedFcon
           | SCON
           | HOLLERITH
           | NAME
           | LPAREN fmtSpec RPAREN

    mislexedFcon ::= RDCON SPOFF RDCON SPON
           | NAME SPOFF RDCON SPON

    module ::= moduleStmt moduleBody endModuleStmt
           | moduleStmt endModuleStmt

    endModuleStmt ::= END MODULE opt_19
           | ENDMODULE opt_20
           | END

    entryStmt ::= ENTRY NAME subroutineParList RESULT LPAREN NAME RPAREN

    subroutineParList ::= opt_23

    subroutinePars ::= subroutinePar list_25

    subroutinePar ::= dummyArgName
           | STAR

    declarationConstruct ::= derivedTypeDef
           | interfaceBlock
           | typeDeclarationStmt
           | specificationStmt

    specificationStmt ::= commonStmt
           | dataStmt
           | dimensionStmt
           | equivalenceStmt
           | externalStmt
           | intrinsicStmt
           | saveStmt
           | accessStmt
           | allocatableStmt
           | intentStmt
           | namelistStmt
           | optionalStmt
           | pointerStmt
           | targetStmt

    targetStmt ::= TARGET opt_26 targetObjectList

    targetObjectList ::= targetObject list_28

    targetObject ::= objectName
           | objectName LPAREN arraySpec RPAREN

    pointerStmt ::= POINTER opt_29 pointerStmtObjectList

    pointerStmtObjectList ::= pointerStmtObject list_31

    pointerStmtObject ::= objectName
           | objectName LPAREN deferredShapeSpecList RPAREN

    optionalStmt ::= OPTIONAL opt_32 optionalParList

    optionalParList ::= optionalPar list_34

    optionalPar ::= dummyArgName

    namelistStmt ::= NAMELIST namelistGroups

    namelistGroups ::= DIV namelistGroupName DIV namelistGroupObject
           | namelistGroups DIV namelistGroupName DIV namelistGroupObject
           | namelistGroups COMMA DIV namelistGroupName DIV namelistGroupObject
           | namelistGroups COMMA namelistGroupObject

    namelistGroupName ::= NAME

    namelistGroupObject ::= variableName

    intentStmt ::= INTENT LPAREN intentSpec RPAREN opt_35 intentParList

    intentParList ::= intentPar seq_36

    intentPar ::= dummyArgName

    dummyArgName ::= NAME

    intentSpec ::= grp_37

    allocatableStmt ::= ALLOCATABLE opt_38 arrayAllocationList

    arrayAllocationList ::= arrayAllocation list_40

    arrayAllocation ::= arrayName
           | arrayName LPAREN deferredShapeSpecList RPAREN

    arrayName ::= ident

    accessStmt ::= ACCESSSPEC opt_41 accessIdList
           | ACCESSSPEC

    accessIdList ::= accessId list_43

    accessId ::= genericName
           | genericSpec

    genericName ::= ident

    saveStmt ::= SAVE
           | SAVE savedEntityList
           | SAVE DOUBLECOLON savedEntityList

    savedEntityList ::= list_44

    savedEntity ::= variableName
           | savedCommonBlock

    savedCommonBlock ::= DIV commonBlockName DIV

    intrinsicStmt ::= INTRINSIC intrinsicList

    intrinsicList ::= list_45

    intrinsicProcedureName ::= NAME

    externalStmt ::= EXTERNAL externalNameList

    externalNameList ::= list_46

    externalName ::= NAME

    equivalenceStmt ::= EQUIVALENCE equivalenceSetList

    equivalenceSetList ::= list_47

    equivalenceSet ::= LPAREN equivalenceObject COMMA equivalenceObjectList RPAREN

    equivalenceObject ::= variable

    equivalenceObjectList ::= list_48

    dimensionStmt ::= DIMENSION arrayDeclaratorList
           | DIMENSION DOUBLECOLON arrayDeclaratorList

    arrayDeclaratorList ::= list_49

    commonStmt ::= COMMON comlist

    comlist ::= opt_50 commonBlockObject
           | comlist COMMA opt_51 commonBlockObject
           | comlist comblock commonBlockObject

    commonBlockObject ::= variableName
           | arrayDeclarator

    arrayDeclarator ::= variableName LPAREN arraySpec RPAREN

    comblock ::= DIV SPOFF DIV SPON
           | DIV commonBlockName DIV

    commonBlockName ::= NAME

    typeDeclarationStmt ::= typeSpec entityDeclList
           | typeSpec opt_52 DOUBLECOLON entityDeclList

    attrSpecSeq ::= COMMA attrSpec
           | attrSpecSeq COMMA attrSpec

    attrSpec ::= PARAMETER
           | ACCESSSPEC
           | ALLOCATABLE
           | DIMENSION LPAREN arraySpec RPAREN
           | EXTERNAL
           | INTENT LPAREN intentSpec RPAREN
           | INTRINSIC
           | OPTIONAL
           | POINTER
           | SAVE
           | TARGET

    entityDeclList ::= entityDecl list_54

    entityDecl ::= objectName
           | objectName LPAREN arraySpec RPAREN
           | objectName STAR charLength
           | objectName LPAREN arraySpec RPAREN STAR charLength
           | objectName ASSIGN expression
           | objectName LPAREN arraySpec RPAREN ASSIGN expression
           | objectName STAR charLength ASSIGN expression
           | objectName STAR charLength LPAREN arraySpec RPAREN ASSIGN expression

    objectName ::= name

    name ::= NAME
           | ACCESS
           | ACCESSSPEC
           | ACTION
           | ADVANCE
           | AIF
           | ALLOCATABLE
           | ALLOCATE
           | ASSIGNMENT
           | ASSIGNSTMT
           | BACKSPACE
           | BLOCK
           | BLOCKDATA
           | CALL
           | CASE
           | CCON
           | CHARACTER
           | CLOSE
           | CODEROOT
           | COMMON
           | COMPLEX
           | CONCATOP
           | CONTAINS
           | CONTINUE
           | CTRLDIRECT
           | CTRLREC
           | CYCLE
           | DATA
           | DEALLOCATE
           | DEFAULT
           | DELIM
           | DIMENSION
           | DIRECT
           | DO
           | DOBLOCK
           | DOUBLE
           | DOUBLEPRECISION
           | ELSE
           | ELSEBLOCK
           | ELSEIF
           | ELSEWHERE
           | END
           | ENDBLOCK
           | ENDBLOCKDATA
           | ENDDO
           | ENDFILE
           | ENDIF
           | ENDINTERFACE
           | ENDMODULE
           | ENDSELECT
           | ENDTYPE
           | ENDWHERE
           | ENTRY
           | EQUIVALENCE
           | ERR
           | EXIST
           | EXTERNAL
           | FILE
           | FMT
           | FORM
           | FORMAT
           | FORMATTED
           | FUNCTION
           | GO
           | GOTO
           | HOLLERITH
           | IF
           | IMPLICIT
           | IN
           | INCLUDE
           | INOUT
           | INQUIRE
           | INTEGER
           | INTENT
           | INTERFACE
           | INTRINSIC
           | IOLENGTH
           | IOSTART
           | IOSTAT
           | KIND
           | LABEL
           | LEN
           | LET
           | LOGICAL
           | MODULE
           | NAME_
           | NAMED
           | NAMELIST
           | NEXTREC
           | NML
           | NONE
           | NULLIFY
           | NUMBER
           | ONLY
           | OPEN
           | OPENED
           | OPERATOR
           | OPTIONAL
           | OUT
           | PAD
           | PARAMETER
           | PAUSE
           | POINTER
           | POSITION
           | PRECISION
           | PRINT
           | PRIVATE
           | PROCEDURE
           | PROGRAM
           | READ
           | READWRITE
           | REAL
           | REC
           | RECL
           | RECURSIVE
           | RESULT
           | RETURN
           | REWIND
           | SAVE
           | SELECT
           | SELECTCASE
           | SEQUENCE
           | SEQUENTIAL
           | SIZE
           | SPOFF
           | SPON
           | STAT
           | STATUS
           | STOP
           | SUBPROGRAMBLOCK
           | SUBROUTINE
           | TARGET
           | THEN
           | THENBLOCK
           | TO
           | TYPE
           | UNFORMATTED
           | UNIT
           | USE
           | WHERE
           | WHILE
           | WRITE

    arraySpec ::= explicitShapeSpecList
           | assumedSizeSpec
           | assumedShapeSpecList
           | deferredShapeSpecList

    assumedShapeSpecList ::= lowerBound COLON
           | deferredShapeSpecList COMMA lowerBound COLON
           | assumedShapeSpecList COMMA assumedShapeSpec

    assumedShapeSpec ::= lowerBound COLON
           | COLON

    assumedSizeSpec ::= STAR
           | lowerBound COLON STAR
           | explicitShapeSpecList COMMA STAR
           | explicitShapeSpecList COMMA lowerBound COLON STAR

    interfaceBlock ::= interfaceStmt interfaceBlockBody endInterfaceStmt

    endInterfaceStmt ::= grp_55 opt_56

    interfaceStmt ::= INTERFACE NAME
           | INTERFACE genericSpec
           | INTERFACE

    genericSpec ::= OPERATOR LPAREN definedOperator RPAREN
           | ASSIGNMENT LPAREN ASSIGN RPAREN

    definedOperator ::= DOP
           | POWER
           | STAR
           | grp_57
           | grp_58
           | DIV SPOFF DIV SPON
           | LNOT
           | LAND
           | LOR
           | grp_59

    interfaceBlockBody ::= interfaceBodyPartConstruct
           | interfaceBlockBody interfaceBodyPartConstruct

    interfaceBodyPartConstruct ::= interfaceBody
           | moduleProcedureStmt

    moduleProcedureStmt ::= MODULE PROCEDURE procedureNameList

    procedureNameList ::= procedureName list_61

    procedureName ::= ident

    interfaceBody ::= functionPrefix NAME functionInterfaceRange
           | SUBROUTINE NAME subroutineInterfaceRange

    subroutineInterfaceRange ::= subroutineParList opt_62 endSubroutineStmt

    endSubroutineStmt ::= END
           | END SUBROUTINE opt_63

    recursive ::= RECURSIVE

    functionPrefix ::= opt_64 opt_65 FUNCTION
           | typeSpec RECURSIVE FUNCTION

    functionInterfaceRange ::= functionParList opt_66 endFunctionStmt

    functionParList ::= LPAREN opt_67 RPAREN

    functionPars ::= functionPar list_69

    functionPar ::= dummyArgName

    subprogramInterfaceBody ::= specificationPartConstruct
           | subprogramInterfaceBody specificationPartConstruct

    endFunctionStmt ::= END
           | END FUNCTION opt_70

    derivedTypeDef ::= derivedTypeStmt derivedTypeBody endTypeStmt

    endTypeStmt ::= ENDTYPE NAME
           | ENDTYPE
           | END TYPE NAME
           | END TYPE

    derivedTypeStmt ::= TYPE NAME
           | TYPE DOUBLECOLON NAME
           | TYPE COMMA ACCESSSPEC DOUBLECOLON NAME

    derivedTypeBody ::= derivedTypeBodyConstruct
           | derivedTypeBody derivedTypeBodyConstruct

    derivedTypeBodyConstruct ::= privateSequenceStmt
           | componentDefStmt

    privateSequenceStmt ::= PRIVATE
           | SEQUENCE

    componentDefStmt ::= typeSpec COMMA componentAttrSpecList DOUBLECOLON componentDeclList
           | typeSpec DOUBLECOLON componentDeclList
           | typeSpec componentDeclList

    componentDeclList ::= componentDecl list_72

    componentDecl ::= componentName LPAREN componentArraySpec RPAREN STAR charLength
           | componentName LPAREN componentArraySpec RPAREN ASSIGN expression
           | componentName LPAREN componentArraySpec RPAREN
           | componentName STAR charLength
           | componentName ASSIGN expression
           | componentName STAR charLength ASSIGN expression
           | componentName STAR charLength LPAREN componentArraySpec RPAREN ASSIGN expression
           | componentName

    componentName ::= NAME

    componentAttrSpecList ::= componentAttrSpec list_74

    componentAttrSpec ::= POINTER
           | DIMENSION LPAREN componentArraySpec RPAREN

    componentArraySpec ::= explicitShapeSpecList
           | deferredShapeSpecList

    explicitShapeSpecList ::= explicitShapeSpec list_76

    explicitShapeSpec ::= seq_77
           | upperBound

    lowerBound ::= expression

    upperBound ::= expression

    deferredShapeSpecList ::= deferredShapeSpec list_79

    deferredShapeSpec ::= COLON

    typeSpec ::= INTEGER
           | REAL
           | DOUBLEPRECISION
           | COMPLEX
           | LOGICAL
           | CHARACTER
           | CHARACTER lengthSelector
           | INTEGER kindSelector
           | REAL kindSelector
           | DOUBLE PRECISION
           | COMPLEX kindSelector
           | CHARACTER charSelector
           | LOGICAL kindSelector
           | TYPE LPAREN typeName RPAREN

    kindSelector ::= LPAREN KIND ASSIGN expression RPAREN
           | LPAREN expression RPAREN

    typeName ::= ident

    charSelector ::= LPAREN LEN ASSIGN typeParamValue COMMA KIND ASSIGN expression RPAREN
           | LPAREN LEN ASSIGN typeParamValue COMMA expression RPAREN
           | LPAREN LEN ASSIGN typeParamValue RPAREN
           | LPAREN KIND ASSIGN expression RPAREN
           | LPAREN expression RPAREN

    lengthSelector ::= STAR charLength
           | LPAREN typeParamValue RPAREN

    charLength ::= LPAREN typeParamValue RPAREN
           | constant

    constant ::= namedConstantUse
           | opt_81 unsignedArithmeticConstant
           | SCON
           | HOLLERITH
           | logicalConstant
           | ICON UNDERSCORE SCON
           | namedConstantUse UNDERSCORE SCON
           | structureConstructor
           | bozLiteralConstant

    bozLiteralConstant ::= BCON
           | OCON
           | ZCON

    structureConstructor ::= typeName LPAREN exprList RPAREN

    exprList ::= expression seq_82

    namedConstantUse ::= NAME

    typeParamValue ::= expression
           | STAR

    moduleStmt ::= MODULE moduleName

    moduleName ::= ident

    ident ::= NAME

    moduleBody ::= specificationPartConstruct
           | moduleSubprogramPartConstruct
           | moduleBody specificationPartConstruct
           | moduleBody moduleSubprogramPartConstruct

    moduleSubprogramPartConstruct ::= containsStmt
           | moduleSubprogram

    containsStmt ::= CONTAINS

    moduleSubprogram ::= functionSubprogram
           | subroutineSubprogram

    functionSubprogram ::= functionPrefix functionName functionRange

    functionName ::= NAME

    functionRange ::= functionParList opt_83 endFunctionStmt
           | functionParList RESULT LPAREN NAME RPAREN opt_84 endFunctionStmt
           | functionParList RESULT LPAREN NAME RPAREN bodyPlusInternals endFunctionStmt
           | functionParList bodyPlusInternals endFunctionStmt

    body ::= list_85

    bodyConstruct ::= specificationPartConstruct
           | executableConstruct

    executableConstruct ::= actionStmt
           | doConstruct
           | ifConstruct
           | caseConstruct
           | whereConstruct

    whereConstruct ::= where endWhereStmt
           | elseWhere endWhereStmt

    elseWhere ::= where elsewhereStmt
           | elseWhere assignmentStmt

    elsewhereStmt ::= ELSEWHERE

    endWhereStmt ::= ENDWHERE
           | END WHERE

    where ::= whereConstructStmt
           | where assignmentStmt

    whereConstructStmt ::= WHERE LPAREN maskExpr RPAREN

    maskExpr ::= expression

    caseConstruct ::= NAME COLON SELECTCASE LPAREN expression RPAREN selectCaseRange
           | SELECTCASE LPAREN expression RPAREN selectCaseRange
           | NAME COLON SELECT CASE LPAREN expression RPAREN selectCaseRange
           | SELECT CASE LPAREN expression RPAREN selectCaseRange

    selectCaseRange ::= selectCaseBody endSelectStmt
           | endSelectStmt

    endSelectStmt ::= seq_87
           | seq_89

    selectCaseBody ::= caseStmt
           | selectCaseBody caseBodyConstruct

    caseBodyConstruct ::= caseStmt
           | executionPartConstruct

    caseStmt ::= CASE caseSelector
           | CASE caseSelector NAME

    caseSelector ::= LPAREN caseValueRangeList RPAREN
           | DEFAULT

    caseValueRangeList ::= list_90

    caseValueRange ::= expression
           | expression COLON
           | COLON expression
           | expression COLON expression

    ifConstruct ::= ifThenStmt conditionalBody list_91 opt_92 endIfStmt

    ifThenStmt ::= IF LPAREN expression RPAREN THEN

    conditionalBody ::= list_93

    elseIfConstruct ::= elseIfStmt conditionalBody

    elseIfStmt ::= ELSEIF LPAREN expression RPAREN THEN
           | ELSE IF LPAREN expression RPAREN THEN

    elseConstruct ::= elseStmt conditionalBody

    elseStmt ::= ELSE

    endIfStmt ::= ENDIF
           | END IF

    doConstruct ::= labelDoStmt
           | blockDoConstruct

    blockDoConstruct ::= opt_94 DO opt_95 list_96 endDoStmt

    endDoStmt ::= ENDDO opt_97
           | END DO opt_98

    endName ::= ident

    nameColon ::= NAME COLON

    labelDoStmt ::= DO doLblRef commaLoopControl list_99 doLblDef doLabelStmt

    doLblRef ::= ICON

    doLblDef ::= ICON

    doLabelStmt ::= actionStmt

    executionPartConstruct ::= executableConstruct
           | formatStmt
           | dataStmt
           | entryStmt
           | doubleDoStmt

    doubleDoStmt ::= DO lblRef commaLoopControl

    dataStmt ::= DATA dataStmtSet list_102

    dataStmtSet ::= dse1 dse2

    dse1 ::= dataStmtObject list_104 DIV

    dse2 ::= dataStmtValue list_106 DIV

    dataStmtValue ::= constant
           | constant STAR constant
           | namedConstantUse STAR constant

    dataStmtObject ::= variable
           | dataImpliedDo

    variable ::= variableName opt_107 opt_108

    subscriptListRef ::= LPAREN subscriptList RPAREN

    subscriptList ::= list_109

    subscript ::= expression

    substringRange ::= LPAREN opt_110 subscriptTripletTail RPAREN

    dataImpliedDo ::= LPAREN dataIDoObjectList COMMA impliedDoVariable ASSIGN expression COMMA expression RPAREN
           | LPAREN dataIDoObjectList COMMA impliedDoVariable ASSIGN expression COMMA expression COMMA expression RPAREN

    dataIDoObjectList ::= list_111

    dataIDoObject ::= arrayElement
           | dataImpliedDo
           | structureComponent

    structureComponent ::= variableName fieldSelector
           | structureComponent fieldSelector

    fieldSelector ::= LPAREN sectionSubscriptList RPAREN PCT NAME
           | PCT NAME

    arrayElement ::= variableName LPAREN sectionSubscriptList RPAREN
           | structureComponent LPAREN sectionSubscriptList RPAREN

    impliedDoVariable ::= NAME

    commaLoopControl ::= opt_112 loopControl

    loopControl ::= variableName ASSIGN expression COMMA expression opt_113
           | WHILE LPAREN expression RPAREN

    variableName ::= NAME

    commaExpr ::= COMMA expression

    semicolonStmt ::= SEMICOLON actionStmt

    actionStmt ::= arithmeticIfStmt
           | assignmentStmt
           | assignStmt
           | backspaceStmt
           | callStmt
           | closeStmt
           | continueStmt
           | endfileStmt
           | gotoStmt
           | computedGotoStmt
           | assignedGotoStmt
           | ifStmt
           | inquireStmt
           | openStmt
           | pauseStmt
           | printStmt
           | readStmt
           | returnStmt
           | rewindStmt
           | stmtFunctionStmt
           | stopStmt
           | writeStmt
           | allocateStmt
           | cycleStmt
           | deallocateStmt
           | exitStmt
           | nullifyStmt
           | pointerAssignmentStmt
           | whereStmt
           | semicolonStmt

    whereStmt ::= WHERE LPAREN maskExpr RPAREN assignmentStmt

    pointerAssignmentStmt ::= NAME IMPLIEDT target
           | NAME opt_114 PCT nameDataRef IMPLIEDT target

    target ::= expression

    nullifyStmt ::= NULLIFY LPAREN pointerObjectList RPAREN

    pointerObjectList ::= pointerObject list_116

    pointerObject ::= NAME
           | pointerField

    pointerField ::= NAME opt_117 PCT NAME
           | pointerField fieldSelector

    exitStmt ::= EXIT opt_118

    deallocateStmt ::= DEALLOCATE LPAREN allocateObjectList COMMA STAT ASSIGN variable RPAREN
           | DEALLOCATE LPAREN allocateObjectList RPAREN

    allocateObjectList ::= allocateObject list_120

    cycleStmt ::= CYCLE opt_121

    allocateStmt ::= ALLOCATE LPAREN allocationList COMMA STAT ASSIGN variable RPAREN
           | ALLOCATE LPAREN allocationList RPAREN

    allocationList ::= allocation list_123

    allocation ::= allocateObject
           | allocateObject allocatedShape

    allocateObject ::= variableName
           | allocateObject fieldSelector

    allocatedShape ::= LPAREN sectionSubscriptList RPAREN

    stopStmt ::= STOP opt_125

    writeStmt ::= WRITE LPAREN ioControlSpecList RPAREN opt_126

    ioControlSpecList ::= unitIdentifier DOLLAR COMMA
           | unitIdentifier COMMA formatIdentifier
           | unitIdentifier COMMA ioControlSpec
           | ioControlSpec
           | ioControlSpecList COMMA ioControlSpec

    stmtFunctionStmt ::= NAME stmtFunctionRange

    stmtFunctionRange ::= LPAREN opt_127 RPAREN ASSIGN expression

    sFDummyArgNameList ::= sFDummyArgName list_129

    sFDummyArgName ::= NAME

    returnStmt ::= RETURN opt_130

    rewindStmt ::= seq_131
           | seq_132

    readStmt ::= READ rdCtlSpec opt_133
           | READ rdFmtId opt_134

    commaInputItemList ::= COMMA inputItemList

    rdFmtId ::= lblRef
           | STAR
           | cOperand
           | cOperand DIV SPOFF DIV SPON cPrimary
           | rdFmtIdExpr DIV SPOFF DIV SPON cPrimary

    rdFmtIdExpr ::= LPAREN uFExpr RPAREN

    inputItemList ::= inputItem list_136

    inputItem ::= nameDataRef
           | inputImpliedDo

    inputImpliedDo ::= LPAREN inputItemList COMMA impliedDoVariable ASSIGN expression COMMA expression opt_137 RPAREN

    rdCtlSpec ::= rdUnitId
           | seq_138

    rdUnitId ::= seq_139
           | seq_140

    rdIoCtlSpecList ::= unitIdentifier COMMA ioControlSpec
           | unitIdentifier COMMA formatIdentifier
           | ioControlSpec
           | rdIoCtlSpecList COMMA ioControlSpec

    ioControlSpec ::= FMT ASSIGN formatIdentifier
           | UNIT ASSIGN unitIdentifier
           | REC ASSIGN expression
           | END ASSIGN lblRef
           | ERR ASSIGN lblRef
           | IOSTAT ASSIGN scalarVariable
           | NML ASSIGN namelistGroupName
           | ADVANCE ASSIGN cExpression
           | SIZE ASSIGN variable
           | EOR ASSIGN lblRef

    printStmt ::= PRINT formatIdentifier COMMA outputItemList
           | PRINT formatIdentifier

    outputItemList ::= expression
           | outputItemList1

    outputItemList1 ::= expression COMMA expression
           | expression COMMA outputImpliedDo
           | outputImpliedDo
           | outputItemList1 COMMA expression
           | outputItemList1 COMMA outputImpliedDo

    outputImpliedDo ::= LPAREN expression COMMA impliedDoVariable ASSIGN expression COMMA expression opt_141 RPAREN
           | LPAREN outputItemList1 COMMA impliedDoVariable ASSIGN expression COMMA expression opt_142 RPAREN

    formatIdentifier ::= lblRef
           | cExpression
           | STAR

    pauseStmt ::= PAUSE opt_144

    openStmt ::= OPEN LPAREN connectSpecList RPAREN

    connectSpecList ::= opt_145 opt_146 list_148

    connectSpec ::= UNIT ASSIGN unitIdentifier
           | ERR ASSIGN lblRef
           | FILE ASSIGN cExpression
           | STATUS ASSIGN cExpression
           | ACCESS ASSIGN cExpression
           | FORM ASSIGN cExpression
           | RECL ASSIGN expression
           | BLANK ASSIGN cExpression
           | IOSTAT ASSIGN scalarVariable
           | POSITION ASSIGN cExpression
           | ACTION ASSIGN cExpression
           | DELIM ASSIGN cExpression
           | PAD ASSIGN cExpression

    inquireStmt ::= INQUIRE LPAREN inquireSpecList RPAREN
           | INQUIRE LPAREN IOLENGTH ASSIGN scalarVariable RPAREN outputItemList

    inquireSpecList ::= opt_149 opt_150 list_152

    inquireSpec ::= UNIT ASSIGN unitIdentifier
           | FILE ASSIGN cExpression
           | ERR ASSIGN lblRef
           | IOSTAT ASSIGN scalarVariable
           | EXIST ASSIGN scalarVariable
           | OPENED ASSIGN scalarVariable
           | NUMBER ASSIGN scalarVariable
           | NAMED ASSIGN scalarVariable
           | NAME ASSIGN scalarVariable
           | ACCESS ASSIGN scalarVariable
           | SEQUENTIAL ASSIGN scalarVariable
           | DIRECT ASSIGN scalarVariable
           | FORM ASSIGN scalarVariable
           | FORMATTED ASSIGN scalarVariable
           | UNFORMATTED ASSIGN scalarVariable
           | RECL ASSIGN expression
           | NEXTREC ASSIGN scalarVariable
           | BLANK ASSIGN scalarVariable
           | POSITION ASSIGN scalarVariable
           | ACTION ASSIGN scalarVariable
           | READ ASSIGN scalarVariable
           | WRITE ASSIGN scalarVariable
           | READWRITE ASSIGN scalarVariable
           | DELIM ASSIGN scalarVariable
           | PAD ASSIGN scalarVariable

    assignedGotoStmt ::= grp_153 variableName
           | grp_154 variableName LPAREN lblRefList RPAREN
           | grp_155 variableComma LPAREN lblRefList RPAREN

    variableComma ::= variableName COMMA

    gotoStmt ::= grp_156 lblRef

    computedGotoStmt ::= GOTO LPAREN lblRefList RPAREN opt_157 expression

    lblRefList ::= lblRef list_159

    endfileStmt ::= grp_160
           | grp_162

    continueStmt ::= CONTINUE

    closeStmt ::= CLOSE LPAREN closeSpecList RPAREN

    closeSpecList ::= opt_164 opt_165 list_167

    closeSpec ::= UNIT ASSIGN unitIdentifier
           | ERR ASSIGN lblRef
           | STATUS ASSIGN cExpression
           | IOSTAT scalarVariable

    cExpression ::= cPrimary list_168

    cPrimary ::= cOperand
           | seq_169

    cOperand ::= SCON
           | nameDataRef
           | functionReference

    cPrimaryConcatOp ::= cPrimary DIV SPOFF DIV SPON

    callStmt ::= CALL subroutineNameUse
           | CALL subroutineNameUse LPAREN subroutineArgList RPAREN

    subroutineNameUse ::= NAME

    subroutineArgList ::= opt_170 list_172

    subroutineArg ::= expression
           | HOLLERITH
           | STAR lblRef
           | NAME ASSIGN expression
           | NAME ASSIGN HOLLERITH
           | NAME ASSIGN STAR lblRef

    arithmeticIfStmt ::= IF LPAREN expression RPAREN lblRef COMMA lblRef COMMA lblRef

    lblRef ::= label

    label ::= ICON

    assignmentStmt ::= opt_173 NAME opt_174 opt_175 ASSIGN expression
           | NAME opt_176 PCT nameDataRef ASSIGN expression
           | NAME LPAREN sFDummyArgNameList RPAREN PCT nameDataRef ASSIGN expression

    sFExprListRef ::= LPAREN sFExprList list_177 RPAREN

    sFExprList ::= expression opt_178 opt_179
           | COLON opt_180
           | opt_181 COLON expression COLON expression
           | opt_182 DOUBLECOLON expression

    commaSectionSubscript ::= COMMA sectionSubscript

    assignStmt ::= ASSIGNSTMT lblRef TO variableName

    backspaceStmt ::= BACKSPACE unitIdentifier
           | BACKSPACE LPAREN positionSpecList RPAREN

    unitIdentifier ::= uFExpr
           | STAR

    positionSpecList ::= opt_183 list_184

    unitIdentifierComma ::= unitIdentifier opt_185

    positionSpec ::= UNIT ASSIGN unitIdentifier
           | ERR ASSIGN lblRef
           | IOSTAT ASSIGN scalarVariable

    scalarVariable ::= variableName
           | arrayElement

    uFExpr ::= uFTerm
           | grp_186 uFTerm
           | uFExpr grp_187 uFTerm

    uFTerm ::= uFFactor
           | uFTerm grp_188 uFFactor
           | uFTerm seq_189 uFPrimary

    uFFactor ::= uFPrimary
           | uFPrimary POWER uFFactor

    uFPrimary ::= ICON
           | SCON
           | nameDataRef
           | functionReference
           | LPAREN uFExpr RPAREN

    subroutineSubprogram ::= SUBROUTINE subroutineName subroutineRange
           | RECURSIVE SUBROUTINE subroutineName subroutineRange

    subroutineName ::= NAME

    subroutineRange ::= subroutineParList opt_190 endSubroutineStmt
           | subroutineParList bodyPlusInternals endSubroutineStmt

    includeStmt ::= INCLUDE SCON

    implicitStmt ::= IMPLICIT implicitSpecList
           | IMPLICIT NONE

    implicitSpecList ::= implicitSpec list_192

    implicitSpec ::= typeSpec implicitRanges
           | typeSpec LPAREN implicitRanges RPAREN

    implicitRanges ::= opt_193 list_195

    implicitRange ::= NAME MINUS NAME

    expression ::= level5Expr
           | expression definedBinaryOp level5Expr

    definedBinaryOp ::= DOP

    level5Expr ::= equivOperand list_198

    equivOperand ::= orOperand list_200

    orOperand ::= andOperand list_202

    andOperand ::= opt_203 level4Expr

    relOp ::= LT
           | LE
           | EQ
           | NE
           | GT
           | GE
           | OP

    level4Expr ::= level3Expr list_205

    level3Expr ::= level2Expr list_209

    level2Expr ::= opt_210 addOperand list_213

    sign ::= PLUS
           | MINUS

    addOperand ::= multOperand list_216

    multOperand ::= level1Expr list_218

    level1Expr ::= primary
           | definedUnaryOp primary

    definedUnaryOp ::= DOP

    primary ::= unsignedArithmeticConstant
           | nameDataRef
           | functionReference
           | LPAREN expression RPAREN
           | SCON
           | logicalConstant
           | arrayConstructor

    arrayConstructor ::= OBRACKETSLASH acValueList CBRACKETSLASH

    acValueList ::= expression
           | acValueList1

    acValueList1 ::= expression COMMA expression
           | expression COMMA acImpliedDo
           | acImpliedDo
           | acValueList1 COMMA expression
           | acValueList1 COMMA acImpliedDo

    acImpliedDo ::= LPAREN expression COMMA impliedDoVariable ASSIGN expression COMMA expression RPAREN
           | LPAREN expression COMMA impliedDoVariable ASSIGN expression COMMA expression COMMA expression RPAREN
           | LPAREN acImpliedDo COMMA impliedDoVariable ASSIGN expression COMMA expression RPAREN
           | LPAREN acImpliedDo COMMA impliedDoVariable ASSIGN expression COMMA expression COMMA expression RPAREN

    functionReference ::= NAME LPAREN RPAREN
           | NAME LPAREN functionArgList RPAREN

    functionArgList ::= functionArg
           | functionArgList COMMA functionArg
           | sectionSubscriptList COMMA functionArg

    functionArg ::= NAME ASSIGN expression

    nameDataRef ::= name list_219

    complexDataRefTail ::= sectionSubscriptRef
           | PCT NAME

    sectionSubscriptRef ::= LPAREN sectionSubscriptList RPAREN

    sectionSubscriptList ::= sectionSubscript list_221

    sectionSubscript ::= expression opt_222
           | subscriptTripletTail

    subscriptTripletTail ::= COLON opt_223
           | COLON expression COLON expression
           | DOUBLECOLON expression

    logicalConstant ::= grp_224
           | TRUE UNDERSCORE kindParam
           | FALSE UNDERSCORE kindParam DOT

    kindParam ::= ICON
           | namedConstantUse

    unsignedArithmeticConstant ::= grp_225
           | complexConst
           | ICON UNDERSCORE kindParam
           | RDCON UNDERSCORE kindParam

    complexConst ::= LPAREN complexComponent COMMA RPAREN

    complexComponent ::= opt_228 ICON
           | RDCON
           | NAME

    constantExpr ::= expression

    ifStmt ::= IF LPAREN expression RPAREN actionStmt

    list_1 ::= programUnit | list_1 programUnit

    opt_2 ::= programStmt | $empty

    opt_3 ::= body | $empty

    seq_4 ::= opt_3 endProgramStmt

    seq_5 ::= bodyPlusInternals endProgramStmt

    seq_6 ::= COMMA onlyStmt

    list_7 ::= $empty | list_7 seq_6

    seq_8 ::= COMMA rename

    list_9 ::= $empty | list_9 seq_8

    list_10 ::= namedConstantDef | list_10 namedConstantDef

    opt_11 ::= NAME | $empty

    opt_12 ::= NAME | $empty

    opt_13 ::= NAME | $empty

    opt_14 ::= NAME | $empty

    opt_15 ::= NAME | $empty

    opt_16 ::= NAME | $empty

    opt_17 ::= NAME | $empty

    opt_18 ::= fmtSpec | $empty

    opt_19 ::= NAME | $empty

    opt_20 ::= NAME | $empty

    opt_21 ::= subroutinePars | $empty

    seq_22 ::= LPAREN opt_21 RPAREN

    opt_23 ::= seq_22 | $empty

    seq_24 ::= COMMA subroutinePar

    list_25 ::= $empty | list_25 seq_24

    opt_26 ::= DOUBLECOLON | $empty

    seq_27 ::= COMMA targetObject

    list_28 ::= $empty | list_28 seq_27

    opt_29 ::= DOUBLECOLON | $empty

    seq_30 ::= COMMA pointerStmtObject

    list_31 ::= $empty | list_31 seq_30

    opt_32 ::= DOUBLECOLON | $empty

    seq_33 ::= COMMA optionalPar

    list_34 ::= $empty | list_34 seq_33

    opt_35 ::= DOUBLECOLON | $empty

    seq_36 ::= COMMA intentPar

    grp_37 ::= IN | OUT | INOUT

    opt_38 ::= DOUBLECOLON | $empty

    seq_39 ::= COMMA arrayAllocation

    list_40 ::= $empty | list_40 seq_39

    opt_41 ::= DOUBLECOLON | $empty

    seq_42 ::= COMMA accessId

    list_43 ::= $empty | list_43 seq_42

    list_44 ::= savedEntity | list_44 savedEntity

    list_45 ::= intrinsicProcedureName | list_45 intrinsicProcedureName

    list_46 ::= externalName | list_46 externalName

    list_47 ::= equivalenceSet | list_47 equivalenceSet

    list_48 ::= equivalenceObject | list_48 equivalenceObject

    list_49 ::= arrayDeclarator | list_49 arrayDeclarator

    opt_50 ::= comblock | $empty

    opt_51 ::= comblock | $empty

    opt_52 ::= attrSpecSeq | $empty

    seq_53 ::= COMMA entityDecl

    list_54 ::= $empty | list_54 seq_53

    grp_55 ::= ENDINTERFACE | END INTERFACE

    opt_56 ::= NAME | $empty

    grp_57 ::= PLUS | MINUS

    grp_58 ::= LT | LE | EQ | NE | GT | GE

    grp_59 ::= NEQV | EQV

    seq_60 ::= COMMA procedureName

    list_61 ::= $empty | list_61 seq_60

    opt_62 ::= subprogramInterfaceBody | $empty

    opt_63 ::= NAME | $empty

    opt_64 ::= recursive | $empty

    opt_65 ::= typeSpec | $empty

    opt_66 ::= subprogramInterfaceBody | $empty

    opt_67 ::= functionPars | $empty

    seq_68 ::= COMMA functionPar

    list_69 ::= $empty | list_69 seq_68

    opt_70 ::= NAME | $empty

    seq_71 ::= COMMA componentDecl

    list_72 ::= $empty | list_72 seq_71

    seq_73 ::= COMMA componentAttrSpec

    list_74 ::= $empty | list_74 seq_73

    seq_75 ::= COMMA explicitShapeSpec

    list_76 ::= $empty | list_76 seq_75

    seq_77 ::= lowerBound COLON upperBound

    seq_78 ::= COMMA deferredShapeSpec

    list_79 ::= $empty | list_79 seq_78

    grp_80 ::= PLUS | MINUS

    opt_81 ::= grp_80 | $empty

    seq_82 ::= COMMA expression

    opt_83 ::= body | $empty

    opt_84 ::= body | $empty

    list_85 ::= bodyConstruct | list_85 bodyConstruct

    opt_86 ::= NAME | $empty

    seq_87 ::= ENDSELECT opt_86

    opt_88 ::= NAME | $empty

    seq_89 ::= END SELECT opt_88

    list_90 ::= caseValueRange | list_90 caseValueRange

    list_91 ::= $empty | list_91 elseIfConstruct

    opt_92 ::= elseConstruct | $empty

    list_93 ::= $empty | list_93 executionPartConstruct

    opt_94 ::= nameColon | $empty

    opt_95 ::= commaLoopControl | $empty

    list_96 ::= $empty | list_96 executionPartConstruct

    opt_97 ::= endName | $empty

    opt_98 ::= endName | $empty

    list_99 ::= $empty | list_99 executionPartConstruct

    opt_100 ::= COMMA | $empty

    seq_101 ::= opt_100 dataStmtSet

    list_102 ::= $empty | list_102 seq_101

    seq_103 ::= COMMA dataStmtObject

    list_104 ::= $empty | list_104 seq_103

    seq_105 ::= COMMA dataStmtValue

    list_106 ::= $empty | list_106 seq_105

    opt_107 ::= subscriptListRef | $empty

    opt_108 ::= substringRange | $empty

    list_109 ::= subscript | list_109 subscript

    opt_110 ::= expression | $empty

    list_111 ::= dataIDoObject | list_111 dataIDoObject

    opt_112 ::= COMMA | $empty

    opt_113 ::= commaExpr | $empty

    opt_114 ::= sFExprListRef | $empty

    seq_115 ::= COMMA pointerObject

    list_116 ::= $empty | list_116 seq_115

    opt_117 ::= sFExprListRef | $empty

    opt_118 ::= endName | $empty

    seq_119 ::= COMMA allocateObject

    list_120 ::= $empty | list_120 seq_119

    opt_121 ::= endName | $empty

    seq_122 ::= COMMA allocation

    list_123 ::= $empty | list_123 seq_122

    grp_124 ::= ICON | SCON

    opt_125 ::= grp_124 | $empty

    opt_126 ::= outputItemList | $empty

    opt_127 ::= sFDummyArgNameList | $empty

    seq_128 ::= COMMA sFDummyArgName

    list_129 ::= $empty | list_129 seq_128

    opt_130 ::= expression | $empty

    seq_131 ::= REWIND unitIdentifier

    seq_132 ::= REWIND LPAREN positionSpecList RPAREN

    opt_133 ::= inputItemList | $empty

    opt_134 ::= commaInputItemList | $empty

    seq_135 ::= COMMA inputItem

    list_136 ::= $empty | list_136 seq_135

    opt_137 ::= commaExpr | $empty

    seq_138 ::= LPAREN rdIoCtlSpecList RPAREN

    seq_139 ::= LPAREN uFExpr RPAREN

    seq_140 ::= LPAREN STAR RPAREN

    opt_141 ::= commaExpr | $empty

    opt_142 ::= commaExpr | $empty

    grp_143 ::= ICON | SCON

    opt_144 ::= grp_143 | $empty

    opt_145 ::= unitIdentifierComma | $empty

    opt_146 ::= connectSpec | $empty

    seq_147 ::= COMMA connectSpec

    list_148 ::= $empty | list_148 seq_147

    opt_149 ::= unitIdentifier | $empty

    opt_150 ::= inquireSpec | $empty

    seq_151 ::= COMMA inquireSpec

    list_152 ::= $empty | list_152 seq_151

    grp_153 ::= GOTO | GO TO

    grp_154 ::= GOTO | GO TO

    grp_155 ::= GOTO | GO TO

    grp_156 ::= GOTO | GO TO

    opt_157 ::= COMMA | $empty

    seq_158 ::= COMMA lblRef

    list_159 ::= $empty | list_159 seq_158

    grp_161 ::= ENDFILE | END FILE

    grp_160 ::= grp_161 unitIdentifier

    grp_163 ::= ENDFILE | END FILE

    grp_162 ::= grp_163 LPAREN positionSpecList RPAREN

    opt_164 ::= unitIdentifierComma | $empty

    opt_165 ::= closeSpec | $empty

    seq_166 ::= COMMA closeSpec

    list_167 ::= $empty | list_167 seq_166

    list_168 ::= $empty | list_168 cPrimaryConcatOp

    seq_169 ::= LPAREN cExpression RPAREN

    opt_170 ::= subroutineArg | $empty

    seq_171 ::= COMMA subroutineArg

    list_172 ::= $empty | list_172 seq_171

    opt_173 ::= label | $empty

    opt_174 ::= sFExprListRef | $empty

    opt_175 ::= substringRange | $empty

    opt_176 ::= sFExprListRef | $empty

    list_177 ::= $empty | list_177 commaSectionSubscript

    opt_178 ::= COLON | $empty

    opt_179 ::= expression | $empty

    opt_180 ::= expression | $empty

    opt_181 ::= expression | $empty

    opt_182 ::= expression | $empty

    opt_183 ::= unitIdentifierComma | $empty

    list_184 ::= positionSpec | list_184 positionSpec

    opt_185 ::= COMMA | $empty

    grp_186 ::= PLUS | MINUS

    grp_187 ::= PLUS | MINUS

    grp_188 ::= STAR | DIV

    seq_189 ::= DIV DIV

    opt_190 ::= body | $empty

    seq_191 ::= COMMA implicitSpec

    list_192 ::= $empty | list_192 seq_191

    opt_193 ::= implicitRange | $empty

    seq_194 ::= COMMA implicitRange

    list_195 ::= $empty | list_195 seq_194

    grp_197 ::= NEQV | EQV

    grp_196 ::= grp_197 equivOperand

    list_198 ::= $empty | list_198 grp_196

    seq_199 ::= LOR orOperand

    list_200 ::= $empty | list_200 seq_199

    seq_201 ::= LAND andOperand

    list_202 ::= $empty | list_202 seq_201

    opt_203 ::= LNOT | $empty

    seq_204 ::= relOp level3Expr

    list_205 ::= $empty | list_205 seq_204

    opt_206 ::= SPOFF | $empty

    opt_207 ::= SPON | $empty

    seq_208 ::= DIV opt_206 DIV opt_207 level2Expr

    list_209 ::= $empty | list_209 seq_208

    opt_210 ::= sign | $empty

    grp_212 ::= PLUS | MINUS

    grp_211 ::= grp_212 addOperand

    list_213 ::= $empty | list_213 grp_211

    grp_215 ::= STAR | DIV

    grp_214 ::= grp_215 multOperand

    list_216 ::= $empty | list_216 grp_214

    seq_217 ::= POWER level1Expr

    list_218 ::= $empty | list_218 seq_217

    list_219 ::= $empty | list_219 complexDataRefTail

    seq_220 ::= COMMA sectionSubscript

    list_221 ::= $empty | list_221 seq_220

    opt_222 ::= subscriptTripletTail | $empty

    opt_223 ::= expression | $empty

    grp_224 ::= TRUE | FALSE

    grp_225 ::= ICON | RDCON

    grp_227 ::= PLUS | MINUS

    grp_226 ::= grp_227

    opt_228 ::= grp_226 | $empty

%End
