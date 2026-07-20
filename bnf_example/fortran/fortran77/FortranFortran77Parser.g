-- AUTO-GENERATED from antlr/grammars-v4 fortran/fortran77 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=FortranFortran77Parser
%options package=lpg.grammars.fortran.fortran77
%options template=dtParserTemplateF.gi
%options import_terminals=FortranFortran77Lexer.gi
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
    program ::= list_1 list_2

    executableUnit ::= functionSubprogram
           | mainProgram
           | subroutineSubprogram
           | blockdataSubprogram

    mainProgram ::= opt_3 subprogramBody

    functionSubprogram ::= functionStatement subprogramBody

    subroutineSubprogram ::= subroutineStatement subprogramBody

    blockdataSubprogram ::= blockdataStatement subprogramBody

    otherSpecificationStatement ::= dimensionStatement
           | equivalenceStatement
           | intrinsicStatement
           | saveStatement

    executableStatement ::= grp_4

    programStatement ::= PROGRAM NAME EOL

    entryStatement ::= ENTRY NAME opt_6

    functionStatement ::= opt_7 FUNCTION NAME LPAREN opt_8 RPAREN opt_9

    blockdataStatement ::= BLOCK NAME

    subroutineStatement ::= SUBROUTINE NAME opt_12 opt_13

    namelist ::= identifier list_15

    statement ::= entryStatement
           | implicitStatement
           | parameterStatement
           | typeStatement
           | commonStatement
           | pointerStatement
           | externalStatement
           | otherSpecificationStatement
           | dataStatement
           | statementFunctionStatement statementFunctionStatement
           | executableStatement

    subprogramBody ::= list_16 endStatement

    wholeStatement ::= opt_17 statement EOL

    endStatement ::= opt_18 END

    dimensionStatement ::= DIMENSION arrayDeclarators

    arrayDeclarator ::= grp_19 LPAREN arrayDeclaratorExtents RPAREN

    arrayDeclarators ::= arrayDeclarator list_21

    arrayDeclaratorExtents ::= arrayDeclaratorExtent list_23

    arrayDeclaratorExtent ::= iexprCode opt_26
           | STAR

    equivalenceStatement ::= EQUIVALENCE equivEntityGroup list_28

    equivEntityGroup ::= LPAREN equivEntity list_30 RPAREN

    equivEntity ::= varRef

    commonStatement ::= COMMON grp_31

    commonName ::= DIV grp_34

    commonItem ::= NAME
           | arrayDeclarator

    commonItems ::= commonItem list_36

    commonBlock ::= commonName commonItems

    typeStatement ::= typename_ typeStatementNameList
           | characterWithLen typeStatementNameCharList

    typeStatementNameList ::= typeStatementName list_38

    typeStatementName ::= NAME
           | arrayDeclarator

    typeStatementNameCharList ::= typeStatementNameChar list_40

    typeStatementNameChar ::= typeStatementName opt_41

    typeStatementLenSpec ::= STAR lenSpecification

    typename_ ::= grp_42

    type_ ::= typename_
           | characterWithLen

    typenameLen ::= STAR ICON

    pointerStatement ::= POINTER pointerDecl list_47

    pointerDecl ::= LPAREN NAME COMMA NAME RPAREN

    implicitStatement ::= IMPLICIT grp_48

    implicitSpec ::= type_ LPAREN implicitLetters RPAREN

    implicitSpecs ::= implicitSpec list_50

    implicitNone ::= NONE

    implicitLetter ::= NAME

    implicitRange ::= implicitLetter opt_52

    implicitLetters ::= implicitRange list_54

    lenSpecification ::= seq_55 LPAREN STAR RPAREN
           | ICON
           | LPAREN intConstantExpr RPAREN

    characterWithLen ::= characterExpression opt_56

    cwlLen ::= STAR lenSpecification

    parameterStatement ::= PARAMETER LPAREN paramlist RPAREN

    paramlist ::= paramassign list_58

    paramassign ::= NAME ASSIGN constantExpr

    externalStatement ::= EXTERNAL namelist

    intrinsicStatement ::= INTRINSIC namelist

    saveStatement ::= SAVE opt_62

    saveEntity ::= grp_63

    dataStatement ::= DATA dataStatementEntity list_66

    dataStatementItem ::= varRef
           | dataImpliedDo

    dataStatementMultiple ::= opt_69 grp_70

    dataStatementEntity ::= dse1 dse2

    dse1 ::= dataStatementItem list_72 DIV

    dse2 ::= dataStatementMultiple list_74 DIV

    dataImpliedDo ::= LPAREN dataImpliedDoList COMMA dataImpliedDoRange RPAREN

    dataImpliedDoRange ::= NAME ASSIGN intConstantExpr COMMA intConstantExpr opt_76

    dataImpliedDoList ::= dataImpliedDoListWhat
           | COMMA dataImpliedDoList

    dataImpliedDoListWhat ::= grp_77

    gotoStatement ::= grp_78 grp_79

    unconditionalGoto ::= lblRef

    computedGoto ::= LPAREN labelList RPAREN opt_80 integerExpr

    lblRef ::= ICON

    labelList ::= lblRef list_82

    assignedGoto ::= NAME opt_85

    ifStatement ::= IF LPAREN logicalExpression RPAREN grp_86

    arithmeticIfStatement ::= lblRef COMMA lblRef COMMA lblRef

    logicalIfStatement ::= executableStatement

    blockIfStatement ::= firstIfBlock list_87 opt_88 endIfStatement

    firstIfBlock ::= THEN opt_89 list_90

    elseIfStatement ::= grp_91 LPAREN logicalExpression RPAREN THEN opt_93 list_94

    elseStatement ::= ELSE opt_95 list_96

    endIfStatement ::= grp_97

    doStatement ::= DO grp_98

    doVarArgs ::= variableName ASSIGN intRealDpExpr COMMA intRealDpExpr opt_100

    doWithLabel ::= lblRef opt_101 doVarArgs opt_102 doBody opt_103 continueStatement

    doBody ::= list_104

    doWithEndDo ::= doVarArgs opt_105 doBody opt_106 enddoStatement

    enddoStatement ::= grp_107

    continueStatement ::= opt_109 CONTINUE

    stopStatement ::= STOP opt_111

    pauseStatement ::= PAUSE grp_112

    writeStatement ::= WRITE LPAREN controlInfoList RPAREN opt_116

    readStatement ::= READ seq_120

    printStatement ::= PRINT seq_124

    assignmentStatement ::= varRef ASSIGN expression

    controlInfoList ::= controlInfoListItem list_126

    controlErrSpec ::= controlErr ASSIGN grp_127

    controlInfoListItem ::= unitIdentifier
           | grp_128
           | controlFmt ASSIGN formatIdentifier
           | controlUnit ASSIGN unitIdentifier
           | controlRec ASSIGN integerExpr
           | controlEnd ASSIGN lblRef
           | controlErrSpec
           | controlIostat ASSIGN varRef

    ioList ::= seq_129 ioListItem
           | seq_130 ioListItem COMMA ioList
           | ioListItem

    ioListItem ::= seq_131 ioImpliedDoList
           | expression

    ioImpliedDoList ::= LPAREN ioList COMMA NAME ASSIGN intRealDpExpr COMMA intRealDpExpr opt_133 RPAREN

    openStatement ::= OPEN LPAREN openControl list_135 RPAREN

    openControl ::= unitIdentifier
           | controlUnit ASSIGN unitIdentifier
           | controlErrSpec
           | controlFile ASSIGN characterExpression
           | controlStatus ASSIGN characterExpression
           | grp_136 ASSIGN characterExpression
           | controlForm ASSIGN characterExpression
           | controlRecl ASSIGN integerExpr
           | controlBlank ASSIGN characterExpression
           | controlIostat ASSIGN varRef

    controlFmt ::= FMT

    controlUnit ::= UNIT

    controlRec ::= NAME

    controlEnd ::= END

    controlErr ::= ERR

    controlIostat ::= IOSTART

    controlFile ::= FILE

    controlStatus ::= STATUS

    controlAccess ::= ACCESS

    controlPosition ::= POSITION

    controlForm ::= FORM

    controlRecl ::= RECL

    controlBlank ::= BLANK

    controlExist ::= EXIST

    controlOpened ::= OPENED

    controlNumber ::= NUMBER

    controlNamed ::= NAMED

    controlName ::= NAME

    controlSequential ::= SEQUENTIAL

    controlDirect ::= NAME

    controlFormatted ::= FORMATTED

    controlUnformatted ::= UNFORMATTED

    controlNextrec ::= NEXTREC

    closeStatement ::= CLOSE LPAREN closeControl list_138 RPAREN

    closeControl ::= unitIdentifier
           | controlUnit ASSIGN unitIdentifier
           | controlErrSpec
           | controlStatus ASSIGN characterExpression
           | controlIostat ASSIGN varRef

    inquireStatement ::= INQUIRE LPAREN inquireControl list_140 RPAREN

    inquireControl ::= controlUnit ASSIGN unitIdentifier
           | controlFile ASSIGN characterExpression
           | controlErrSpec
           | grp_141 ASSIGN varRef
           | unitIdentifier

    backspaceStatement ::= BACKSPACE berFinish

    endfileStatement ::= ENDFILE berFinish

    rewindStatement ::= REWIND berFinish

    berFinish ::= grp_142

    berFinishItem ::= unitIdentifier
           | controlUnit ASSIGN unitIdentifier
           | controlErrSpec
           | controlIostat ASSIGN varRef

    unitIdentifier ::= iexpr
           | STAR

    formatIdentifier ::= grp_145
           | iexpr
           | STAR

    formatStatement ::= FORMAT LPAREN fmtSpec RPAREN

    fmtSpec ::= grp_146 list_152

    formatsep ::= DIV
           | COLON
           | DOLLAR

    formatedit ::= XCON
           | editElement
           | ICON editElement
           | opt_154 PCON opt_157

    editElement ::= grp_158
           | LPAREN fmtSpec RPAREN

    statementFunctionStatement ::= LET sfArgs ASSIGN expression

    sfArgs ::= NAME LPAREN namelist RPAREN

    callStatement ::= CALL subroutineCall

    subroutineCall ::= NAME opt_161

    callArgumentList ::= callArgument list_163

    callArgument ::= expression
           | STAR lblRef

    returnStatement ::= RETURN opt_164

    expression ::= ncExpr opt_166

    ncExpr ::= lexpr0 list_168

    lexpr0 ::= lexpr1 list_171

    lexpr1 ::= lexpr2 list_173

    lexpr2 ::= lexpr3 list_175

    lexpr3 ::= LNOT lexpr3
           | lexpr4

    lexpr4 ::= aexpr0 opt_178

    aexpr0 ::= aexpr1 list_181

    aexpr1 ::= aexpr2 list_184

    aexpr2 ::= list_186 aexpr3

    aexpr3 ::= aexpr4 list_188

    aexpr4 ::= unsignedArithmeticConstant
           | grp_189
           | logicalConstant
           | varRef
           | LPAREN expression RPAREN

    iexpr ::= iexpr1 list_192

    iexprCode ::= iexpr1 list_195

    iexpr1 ::= iexpr2 list_198

    iexpr2 ::= list_200 iexpr3

    iexpr3 ::= iexpr4 opt_202

    iexpr4 ::= ICON
           | varRefCode
           | LPAREN iexprCode RPAREN

    constantExpr ::= expression

    arithmeticExpression ::= expression

    integerExpr ::= iexpr

    intRealDpExpr ::= expression

    arithmeticConstExpr ::= expression

    intConstantExpr ::= expression

    characterExpression ::= expression

    concatOp ::= DIV DIV

    logicalExpression ::= expression

    logicalConstExpr ::= expression

    arrayElementName ::= NAME LPAREN integerExpr list_204 RPAREN

    subscripts ::= LPAREN opt_208 RPAREN

    varRef ::= grp_209 opt_212

    varRefCode ::= NAME opt_215

    substringApp ::= LPAREN opt_216 COLON opt_217 RPAREN

    variableName ::= NAME

    arrayName ::= NAME

    subroutineName ::= NAME

    functionName ::= NAME

    constant ::= opt_220 unsignedArithmeticConstant
           | grp_221
           | logicalConstant

    unsignedArithmeticConstant ::= grp_222
           | complexConstant

    complexConstant ::= LPAREN opt_225 grp_226 COMMA opt_229 grp_230 RPAREN

    logicalConstant ::= grp_231

    identifier ::= NAME
           | REAL

    list_1 ::= executableUnit | list_1 executableUnit

    list_2 ::= $empty | list_2 EOL

    opt_3 ::= programStatement | $empty

    grp_4 ::= assignmentStatement | gotoStatement | ifStatement | doStatement | continueStatement | stopStatement | pauseStatement | readStatement | writeStatement | printStatement | rewindStatement | backspaceStatement | openStatement | closeStatement | endfileStatement | inquireStatement | callStatement | returnStatement

    seq_5 ::= LPAREN namelist RPAREN

    opt_6 ::= seq_5 | $empty

    opt_7 ::= type_ | $empty

    opt_8 ::= namelist | $empty

    opt_9 ::= EOL | $empty

    opt_10 ::= namelist | $empty

    seq_11 ::= LPAREN opt_10 RPAREN

    opt_12 ::= seq_11 | $empty

    opt_13 ::= EOL | $empty

    seq_14 ::= COMMA identifier

    list_15 ::= $empty | list_15 seq_14

    list_16 ::= wholeStatement | list_16 wholeStatement

    opt_17 ::= LABEL | $empty

    opt_18 ::= LABEL | $empty

    grp_19 ::= NAME | REAL

    seq_20 ::= COMMA arrayDeclarator

    list_21 ::= $empty | list_21 seq_20

    seq_22 ::= COMMA arrayDeclaratorExtent

    list_23 ::= $empty | list_23 seq_22

    grp_25 ::= iexprCode | STAR

    grp_24 ::= COLON grp_25

    opt_26 ::= grp_24 | $empty

    seq_27 ::= COMMA equivEntityGroup

    list_28 ::= $empty | list_28 seq_27

    seq_29 ::= COMMA equivEntity

    list_30 ::= $empty | list_30 seq_29

    seq_32 ::= COMMA commonBlock

    list_33 ::= $empty | list_33 seq_32

    grp_31 ::= commonBlock list_33 | commonItems

    grp_34 ::= NAME DIV | DIV

    seq_35 ::= COMMA commonItem

    list_36 ::= $empty | list_36 seq_35

    seq_37 ::= COMMA typeStatementName

    list_38 ::= $empty | list_38 seq_37

    seq_39 ::= COMMA typeStatementNameChar

    list_40 ::= $empty | list_40 seq_39

    opt_41 ::= typeStatementLenSpec | $empty

    opt_43 ::= ICON | $empty

    seq_44 ::= STAR opt_43

    opt_45 ::= seq_44 | $empty

    grp_42 ::= REAL | COMPLEX opt_45 | DOUBLE COMPLEX | DOUBLE PRECISION | INTEGER | LOGICAL | CHARACTER

    seq_46 ::= COMMA pointerDecl

    list_47 ::= $empty | list_47 seq_46

    grp_48 ::= implicitNone | implicitSpecs

    seq_49 ::= COMMA implicitSpec

    list_50 ::= $empty | list_50 seq_49

    seq_51 ::= MINUS implicitLetter

    opt_52 ::= seq_51 | $empty

    seq_53 ::= COMMA implicitRange

    list_54 ::= $empty | list_54 seq_53

    seq_55 ::= LPAREN STAR RPAREN

    opt_56 ::= cwlLen | $empty

    seq_57 ::= COMMA paramassign

    list_58 ::= $empty | list_58 seq_57

    seq_59 ::= COMMA saveEntity

    list_60 ::= $empty | list_60 seq_59

    seq_61 ::= saveEntity list_60

    opt_62 ::= seq_61 | $empty

    grp_63 ::= NAME | DIV NAME DIV

    opt_64 ::= COMMA | $empty

    seq_65 ::= opt_64 dataStatementEntity

    list_66 ::= $empty | list_66 seq_65

    grp_68 ::= ICON | NAME

    grp_67 ::= grp_68 STAR

    opt_69 ::= grp_67 | $empty

    grp_70 ::= constant | NAME

    seq_71 ::= COMMA dataStatementItem

    list_72 ::= $empty | list_72 seq_71

    seq_73 ::= COMMA dataStatementMultiple

    list_74 ::= $empty | list_74 seq_73

    seq_75 ::= COMMA intConstantExpr

    opt_76 ::= seq_75 | $empty

    grp_77 ::= varRef | dataImpliedDo

    grp_78 ::= GO TO | GOTO

    grp_79 ::= unconditionalGoto | computedGoto | assignedGoto

    opt_80 ::= COMMA | $empty

    seq_81 ::= COMMA lblRef

    list_82 ::= $empty | list_82 seq_81

    opt_83 ::= COMMA | $empty

    seq_84 ::= opt_83 LPAREN labelList RPAREN

    opt_85 ::= seq_84 | $empty

    grp_86 ::= blockIfStatement | logicalIfStatement | arithmeticIfStatement

    list_87 ::= $empty | list_87 elseIfStatement

    opt_88 ::= elseStatement | $empty

    opt_89 ::= EOL | $empty

    list_90 ::= wholeStatement | list_90 wholeStatement

    seq_92 ::= ELSE IF

    grp_91 ::= ELSEIF | seq_92

    opt_93 ::= EOL | $empty

    list_94 ::= wholeStatement | list_94 wholeStatement

    opt_95 ::= EOL | $empty

    list_96 ::= wholeStatement | list_96 wholeStatement

    grp_97 ::= ENDIF | END IF

    grp_98 ::= doWithLabel | doWithEndDo

    seq_99 ::= COMMA intRealDpExpr

    opt_100 ::= seq_99 | $empty

    opt_101 ::= COMMA | $empty

    opt_102 ::= EOL | $empty

    opt_103 ::= EOL | $empty

    list_104 ::= wholeStatement | list_104 wholeStatement

    opt_105 ::= EOL | $empty

    opt_106 ::= EOL | $empty

    seq_108 ::= END DO

    grp_107 ::= ENDDO | seq_108

    opt_109 ::= lblRef | $empty

    grp_110 ::= ICON | HOLLERITH

    opt_111 ::= grp_110 | $empty

    grp_112 ::= ICON | HOLLERITH

    opt_113 ::= COMMA | $empty

    seq_114 ::= opt_113 ioList

    list_115 ::= seq_114 | list_115 seq_114

    opt_116 ::= list_115 | $empty

    seq_117 ::= COMMA ioList

    list_118 ::= seq_117 | list_118 seq_117

    opt_119 ::= list_118 | $empty

    seq_120 ::= formatIdentifier opt_119

    seq_121 ::= COMMA ioList

    list_122 ::= seq_121 | list_122 seq_121

    opt_123 ::= list_122 | $empty

    seq_124 ::= formatIdentifier opt_123

    seq_125 ::= COMMA controlInfoListItem

    list_126 ::= $empty | list_126 seq_125

    grp_127 ::= lblRef | NAME

    grp_128 ::= HOLLERITH | SCON

    seq_129 ::= ioListItem COMMA NAME ASSIGN

    seq_130 ::= ioListItem COMMA ioListItem

    seq_131 ::= LPAREN ioList COMMA NAME ASSIGN

    seq_132 ::= COMMA intRealDpExpr

    opt_133 ::= seq_132 | $empty

    seq_134 ::= COMMA openControl

    list_135 ::= $empty | list_135 seq_134

    grp_136 ::= controlAccess | controlPosition

    seq_137 ::= COMMA closeControl

    list_138 ::= $empty | list_138 seq_137

    seq_139 ::= COMMA inquireControl

    list_140 ::= $empty | list_140 seq_139

    grp_141 ::= controlIostat | controlExist | controlOpened | controlNumber | controlNamed | controlName | controlAccess | controlSequential | controlDirect | controlForm | controlFormatted | controlUnformatted | controlRecl | controlNextrec | controlBlank

    seq_143 ::= COMMA berFinishItem

    list_144 ::= $empty | list_144 seq_143

    grp_142 ::= unitIdentifier unitIdentifier | LPAREN berFinishItem list_144 RPAREN

    grp_145 ::= SCON | HOLLERITH

    opt_147 ::= formatedit | $empty

    grp_146 ::= formatedit | formatsep opt_147

    opt_149 ::= formatedit | $empty

    opt_151 ::= formatedit | $empty

    grp_150 ::= formatedit | formatsep opt_151

    grp_148 ::= formatsep opt_149 | COMMA grp_150

    list_152 ::= $empty | list_152 grp_148

    grp_153 ::= PLUS | MINUS

    opt_154 ::= grp_153 | $empty

    opt_155 ::= ICON | $empty

    seq_156 ::= opt_155 editElement

    opt_157 ::= seq_156 | $empty

    grp_158 ::= FCON | SCON | HOLLERITH | NAME

    opt_159 ::= callArgumentList | $empty

    seq_160 ::= LPAREN opt_159 RPAREN

    opt_161 ::= seq_160 | $empty

    seq_162 ::= COMMA callArgument

    list_163 ::= $empty | list_163 seq_162

    opt_164 ::= integerExpr | $empty

    seq_165 ::= COLON ncExpr

    opt_166 ::= seq_165 | $empty

    seq_167 ::= concatOp lexpr0

    list_168 ::= $empty | list_168 seq_167

    grp_170 ::= NEQV | EQV

    grp_169 ::= grp_170 lexpr1

    list_171 ::= $empty | list_171 grp_169

    seq_172 ::= LOR lexpr2

    list_173 ::= $empty | list_173 seq_172

    seq_174 ::= LAND lexpr3

    list_175 ::= $empty | list_175 seq_174

    grp_177 ::= LT | LE | EQ | NE | GT | GE

    grp_176 ::= grp_177 aexpr0

    opt_178 ::= grp_176 | $empty

    grp_180 ::= PLUS | MINUS

    grp_179 ::= grp_180 aexpr1

    list_181 ::= $empty | list_181 grp_179

    grp_183 ::= STAR | DIV

    grp_182 ::= grp_183 aexpr2

    list_184 ::= $empty | list_184 grp_182

    grp_185 ::= PLUS | MINUS

    list_186 ::= $empty | list_186 grp_185

    seq_187 ::= POWER aexpr4

    list_188 ::= $empty | list_188 seq_187

    grp_189 ::= HOLLERITH | SCON

    grp_191 ::= PLUS | MINUS

    grp_190 ::= grp_191 iexpr1

    list_192 ::= $empty | list_192 grp_190

    grp_194 ::= PLUS | MINUS

    grp_193 ::= grp_194 iexpr1

    list_195 ::= $empty | list_195 grp_193

    grp_197 ::= STAR | DIV

    grp_196 ::= grp_197 iexpr2

    list_198 ::= $empty | list_198 grp_196

    grp_199 ::= PLUS | MINUS

    list_200 ::= $empty | list_200 grp_199

    seq_201 ::= POWER iexpr3

    opt_202 ::= seq_201 | $empty

    seq_203 ::= COMMA integerExpr

    list_204 ::= $empty | list_204 seq_203

    seq_205 ::= COMMA expression

    list_206 ::= $empty | list_206 seq_205

    seq_207 ::= expression list_206

    opt_208 ::= seq_207 | $empty

    grp_209 ::= NAME | REAL

    opt_210 ::= substringApp | $empty

    seq_211 ::= subscripts opt_210

    opt_212 ::= seq_211 | $empty

    opt_213 ::= substringApp | $empty

    seq_214 ::= subscripts opt_213

    opt_215 ::= seq_214 | $empty

    opt_216 ::= ncExpr | $empty

    opt_217 ::= ncExpr | $empty

    grp_219 ::= PLUS | MINUS

    grp_218 ::= grp_219

    opt_220 ::= grp_218 | $empty

    grp_221 ::= SCON | HOLLERITH

    grp_222 ::= ICON | RCON

    grp_224 ::= PLUS | MINUS

    grp_223 ::= grp_224

    opt_225 ::= grp_223 | $empty

    grp_226 ::= ICON | RCON

    grp_228 ::= PLUS | MINUS

    grp_227 ::= grp_228

    opt_229 ::= grp_227 | $empty

    grp_230 ::= ICON | RCON

    grp_231 ::= TRUE | FALSE

%End
