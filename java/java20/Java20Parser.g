-- AUTO-GENERATED from antlr/grammars-v4 java/java20 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=4
%Options fp=Java20Parser
%options package=lpg.grammars.java.java20
%options template=dtParserTemplateF.gi
%options import_terminals=Java20Lexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    compilationUnit
%End

%Rules
    identifier ::= IDENTIFIER

    typeIdentifier ::= IDENTIFIER

    unqualifiedMethodIdentifier ::= IDENTIFIER

    literal ::= DECIMAL_LITERAL
           | BooleanLiteral
           | CHAR_LITERAL
           | STRING_LITERAL
           | TextBlock
           | NullLiteral

    primitiveType ::= list_1 grp_2

    numericType ::= integralType
           | floatingPointType

    integralType ::= BYTE
           | SHORT
           | INT
           | LONG
           | CHAR

    floatingPointType ::= FLOAT
           | DOUBLE

    referenceType ::= classOrInterfaceType
           | typeVariable
           | arrayType

    coit ::= DOT list_3 typeIdentifier opt_4 opt_5

    classOrInterfaceType ::= opt_7 list_8 typeIdentifier opt_9 opt_10

    classType ::= typeIdentifier
           | classType DOT typeIdentifier

    interfaceType ::= classType

    typeVariable ::= list_17 typeIdentifier

    arrayType ::= primitiveType dims
           | classType dims
           | typeVariable dims

    dims ::= list_18 LBRACKET RBRACKET list_21

    typeParameter ::= list_22 typeIdentifier opt_23

    typeParameterModifier ::= annotation

    typeBound ::= EXTENDS grp_24

    additionalBound ::= AMP interfaceType

    typeArguments ::= LT typeArgumentList GT

    typeArgumentList ::= typeArgument list_27

    typeArgument ::= referenceType
           | wildcard

    wildcard ::= list_28 QUESTION opt_29

    wildcardBounds ::= EXTENDS referenceType
           | SUPER referenceType

    moduleName ::= identifier opt_31

    packageName ::= identifier
           | packageName DOT identifier

    typeName ::= typeIdentifier
           | packageName DOT typeIdentifier

    packageOrTypeName ::= identifier
           | packageOrTypeName DOT identifier

    expressionName ::= identifier
           | expressionName DOT identifier

    methodName ::= unqualifiedMethodIdentifier

    ambiguousName ::= identifier
           | ambiguousName DOT identifier

    compilationUnit ::= ordinaryCompilationUnit
           | modularCompilationUnit

    ordinaryCompilationUnit ::= opt_42 list_43 list_44

    modularCompilationUnit ::= list_45 moduleDeclaration

    packageDeclaration ::= list_46 PACKAGE identifier list_48 SEMI

    packageModifier ::= annotation

    importDeclaration ::= singleTypeImportDeclaration
           | typeImportOnDemandDeclaration
           | singleStaticImportDeclaration
           | staticImportOnDemandDeclaration

    singleTypeImportDeclaration ::= IMPORT typeName SEMI

    typeImportOnDemandDeclaration ::= IMPORT packageOrTypeName DOT STAR SEMI

    singleStaticImportDeclaration ::= IMPORT STATIC typeName DOT identifier SEMI

    staticImportOnDemandDeclaration ::= IMPORT STATIC typeName DOT STAR SEMI

    topLevelClassOrInterfaceDeclaration ::= list_65 topLevelTypeRest
           | SEMI

    topLevelTypeRest ::= CLASS typeIdentifier opt_66 opt_67 opt_68 opt_69 classBody
           | ENUM typeIdentifier opt_130 enumBody
           | RECORD typeIdentifier opt_143 recordHeader opt_144 recordBody
           | INTERFACE typeIdentifier opt_154 opt_155 opt_156 interfaceBody
           | AT INTERFACE typeIdentifier annotationInterfaceBody

    moduleDeclaration ::= list_49 opt_50 MODULE identifier list_52 LBRACE list_53 RBRACE

    moduleDirective ::= REQUIRES list_54 moduleName SEMI
           | EXPORTS packageName opt_58 SEMI
           | OPENS packageName opt_62 SEMI
           | USES typeName SEMI
           | PROVIDES typeName WITH typeName list_64 SEMI

    requiresModifier ::= TRANSITIVE
           | STATIC

    classDeclaration ::= list_65 classDeclarationRest

    classDeclarationRest ::= CLASS typeIdentifier opt_66 opt_67 opt_68 opt_69 classBody
           | ENUM typeIdentifier opt_130 enumBody
           | RECORD typeIdentifier opt_143 recordHeader opt_144 recordBody

    normalClassDeclaration ::= list_65 CLASS typeIdentifier opt_66 opt_67 opt_68 opt_69 classBody

    classModifier ::= annotation
           | PUBLIC
           | PROTECTED
           | PRIVATE
           | ABSTRACT
           | STATIC
           | FINAL
           | SEALED
           | NON_SEALED
           | STRICTFP

    typeParameters ::= LT typeParameterList GT

    typeParameterList ::= typeParameter list_71

    classExtends ::= EXTENDS classType

    classImplements ::= IMPLEMENTS interfaceTypeList

    interfaceTypeList ::= interfaceType list_73

    classPermits ::= PERMITS typeName list_75

    classBody ::= LBRACE list_76 RBRACE

    classBodyDeclaration ::= classMemberDeclaration
           | instanceInitializer
           | staticInitializer
           | constructorDeclaration

    classMemberDeclaration ::= list_96 classMemberRest
           | SEMI
           | block
           | STATIC block

    classMemberRest ::= unannType typedMemberRest
           | VOID methodDeclarator opt_100 methodBody
           | CLASS typeIdentifier opt_66 opt_67 opt_68 opt_69 classBody
           | ENUM typeIdentifier opt_130 enumBody
           | RECORD typeIdentifier opt_143 recordHeader opt_144 recordBody
           | INTERFACE typeIdentifier opt_154 opt_155 opt_156 interfaceBody
           | AT INTERFACE typeIdentifier annotationInterfaceBody
           | simpleTypeName LPAREN opt_formals RPAREN opt_116 constructorBody

    typedMemberRest ::= methodDeclarator opt_100 methodBody
           | variableDeclaratorList SEMI

    fieldDeclaration ::= list_96 unannType variableDeclaratorList SEMI

    fieldModifier ::= annotation
           | PUBLIC
           | PROTECTED
           | PRIVATE
           | STATIC
           | FINAL
           | TRANSIENT
           | VOLATILE

    variableDeclaratorList ::= variableDeclarator list_79

    variableDeclarator ::= variableDeclaratorId opt_81

    variableDeclaratorId ::= identifier opt_82

    variableInitializer ::= expression
           | arrayInitializer

    unannType ::= unannPrimitiveType
           | unannReferenceType

    unannPrimitiveType ::= numericType
           | BOOLEAN

    unannReferenceType ::= unannClassOrInterfaceType
           | unannTypeVariable
           | unannArrayType

    unannClassOrInterfaceType ::= opt_85 typeIdentifier opt_86 opt_87

    uCOIT ::= DOT list_88 typeIdentifier opt_89 opt_90

    unannClassType ::= typeIdentifier opt_91
           | grp_92 DOT list_93 typeIdentifier opt_94

    unannInterfaceType ::= unannClassType

    unannTypeVariable ::= typeIdentifier

    unannArrayType ::= grp_95 dims

    methodDeclaration ::= list_96 methodHeader methodBody

    methodModifier ::= annotation
           | PUBLIC
           | PROTECTED
           | PRIVATE
           | ABSTRACT
           | STATIC
           | FINAL
           | SYNCHRONIZED
           | NATIVE
           | STRICTFP

    methodHeader ::= opt_99 result methodDeclarator opt_100

    result ::= unannType
           | VOID

    methodDeclarator ::= identifier LPAREN opt_formals RPAREN opt_104

    receiverParameter ::= list_105 unannType opt_107 THIS

    formalParameterList ::= formalParameter list_109

    formalParameter ::= list_110 unannType variableDeclaratorId
           | variableArityParameter

    variableArityParameter ::= list_111 unannType list_112 ELLIPSIS identifier

    variableModifier ::= annotation
           | FINAL

    throwsT ::= THROWS exceptionTypeList

    exceptionTypeList ::= exceptionType list_114

    exceptionType ::= classType
           | typeVariable

    methodBody ::= block
           | SEMI

    instanceInitializer ::= block

    staticInitializer ::= STATIC block

    constructorDeclaration ::= list_115 constructorDeclarator opt_116 constructorBody

    constructorModifier ::= annotation
           | PUBLIC
           | PROTECTED
           | PRIVATE

    constructorDeclarator ::= opt_117 simpleTypeName LPAREN opt_formals RPAREN

    simpleTypeName ::= typeIdentifier

    constructorBody ::= LBRACE opt_121 opt_122 RBRACE

    explicitConstructorInvocation ::= opt_123 grp_124 LPAREN opt_125 RPAREN SEMI
           | grp_126 DOT opt_127 SUPER LPAREN opt_128 RPAREN SEMI

    enumDeclaration ::= list_65 ENUM typeIdentifier opt_130 enumBody

    enumBody ::= LBRACE opt_131 opt_132 opt_133 RBRACE

    enumConstantList ::= enumConstant list_135

    enumConstant ::= list_136 identifier opt_139 opt_140

    enumConstantModifier ::= annotation

    enumBodyDeclarations ::= SEMI list_141

    recordDeclaration ::= list_65 RECORD typeIdentifier opt_143 recordHeader opt_144 recordBody

    recordHeader ::= LPAREN opt_145 RPAREN

    recordComponentList ::= recordComponent list_147

    recordComponent ::= list_148 unannType identifier
           | variableArityRecordComponent

    variableArityRecordComponent ::= list_149 unannType list_150 ELLIPSIS identifier

    recordComponentModifier ::= annotation

    recordBody ::= LBRACE list_151 RBRACE

    recordBodyDeclaration ::= classBodyDeclaration
           | compactConstructorDeclaration

    compactConstructorDeclaration ::= list_152 simpleTypeName constructorBody

    interfaceDeclaration ::= list_153 interfaceDeclarationRest

    interfaceDeclarationRest ::= INTERFACE typeIdentifier opt_154 opt_155 opt_156 interfaceBody
           | AT INTERFACE typeIdentifier annotationInterfaceBody

    normalInterfaceDeclaration ::= interfaceDeclaration

    interfaceModifier ::= annotation
           | PUBLIC
           | PROTECTED
           | PRIVATE
           | ABSTRACT
           | STATIC
           | SEALED
           | NON_SEALED
           | STRICTFP

    interfaceExtends ::= EXTENDS interfaceTypeList

    interfacePermits ::= PERMITS typeName list_158

    interfaceBody ::= LBRACE list_159 RBRACE

    interfaceMemberDeclaration ::= constantDeclaration
           | interfaceMethodDeclaration
           | classDeclaration
           | interfaceDeclaration
           | SEMI

    constantDeclaration ::= list_160 unannType variableDeclaratorList SEMI

    constantModifier ::= annotation
           | PUBLIC
           | STATIC
           | FINAL

    interfaceMethodDeclaration ::= list_161 methodHeader methodBody

    interfaceMethodModifier ::= annotation
           | PUBLIC
           | PRIVATE
           | ABSTRACT
           | DEFAULT
           | STATIC
           | STRICTFP

    annotationInterfaceDeclaration ::= list_153 AT INTERFACE typeIdentifier annotationInterfaceBody

    annotationInterfaceBody ::= LBRACE list_163 RBRACE

    annotationInterfaceMemberDeclaration ::= annotationInterfaceElementDeclaration
           | constantDeclaration
           | classDeclaration
           | interfaceDeclaration
           | SEMI

    annotationInterfaceElementDeclaration ::= list_164 unannType identifier LPAREN RPAREN opt_165 opt_166 SEMI

    annotationInterfaceElementModifier ::= annotation
           | PUBLIC
           | ABSTRACT

    defaultValue ::= DEFAULT elementValue

    annotation ::= normalAnnotation
           | markerAnnotation
           | singleElementAnnotation

    normalAnnotation ::= AT typeName LPAREN opt_167 RPAREN

    elementValuePairList ::= elementValuePair list_169

    elementValuePair ::= identifier EQ elementValue

    elementValue ::= conditionalExpression
           | elementValueArrayInitializer
           | annotation

    elementValueArrayInitializer ::= LBRACE opt_170 opt_171 RBRACE

    elementValueList ::= elementValue list_173

    markerAnnotation ::= AT typeName

    singleElementAnnotation ::= AT typeName LPAREN elementValue RPAREN

    arrayInitializer ::= LBRACE opt_174 opt_175 RBRACE

    variableInitializerList ::= variableInitializer list_177

    block ::= LBRACE opt_178 RBRACE

    blockStatements ::= blockStatement list_179

    blockStatement ::= localClassOrInterfaceDeclaration
           | unannPrimitiveType variableDeclaratorList SEMI
           | FINAL unannType variableDeclaratorList SEMI
           | VAR variableDeclaratorList SEMI
           | statement

    localClassOrInterfaceDeclaration ::= classDeclaration
           | normalInterfaceDeclaration

    localVariableDeclaration ::= list_180 localVariableType variableDeclaratorList

    localVariableType ::= unannType
           | VAR

    localVariableDeclarationStatement ::= localVariableDeclaration SEMI

    statement ::= statementWithoutTrailingSubstatement
           | labeledStatement
           | ifThenStatement
           | ifThenElseStatement
           | whileStatement
           | forStatement

    statementNoShortIf ::= statementWithoutTrailingSubstatement
           | labeledStatementNoShortIf
           | ifThenElseStatementNoShortIf
           | whileStatementNoShortIf
           | forStatementNoShortIf

    statementWithoutTrailingSubstatement ::= block
           | emptyStatement_
           | expressionStatement
           | assertStatement
           | switchStatement
           | doStatement
           | breakStatement
           | continueStatement
           | returnStatement
           | synchronizedStatement
           | throwStatement
           | tryStatement
           | yieldStatement

    emptyStatement_ ::= SEMI

    labeledStatement ::= identifier COLON statement

    labeledStatementNoShortIf ::= identifier COLON statementNoShortIf

    expressionStatement ::= statementExpression SEMI

    statementExpression ::= assignment
           | preIncrementExpression
           | preDecrementExpression
           | postIncrementExpression
           | postDecrementExpression
           | methodInvocation
           | classInstanceCreationExpression

    ifThenStatement ::= IF LPAREN expression RPAREN statement

    ifThenElseStatement ::= IF LPAREN expression RPAREN statementNoShortIf ELSE statement

    ifThenElseStatementNoShortIf ::= IF LPAREN expression RPAREN statementNoShortIf ELSE statementNoShortIf

    assertStatement ::= ASSERT expression opt_182 SEMI

    switchStatement ::= SWITCH LPAREN expression RPAREN switchBlock

    switchBlock ::= LBRACE switchRule list_183 RBRACE
           | LBRACE list_184 list_186 RBRACE

    switchRule ::= switchLabel ARROW grp_187

    switchBlockStatementGroup ::= switchLabel COLON list_189 blockStatements

    switchLabel ::= CASE caseConstant list_191
           | DEFAULT

    caseConstant ::= conditionalExpression

    whileStatement ::= WHILE LPAREN expression RPAREN statement

    whileStatementNoShortIf ::= WHILE LPAREN expression RPAREN statementNoShortIf

    doStatement ::= DO statement WHILE LPAREN expression RPAREN SEMI

    forStatement ::= basicForStatement
           | enhancedForStatement

    forStatementNoShortIf ::= basicForStatementNoShortIf
           | enhancedForStatementNoShortIf

    basicForStatement ::= FOR LPAREN opt_192 SEMI opt_193 SEMI opt_194 RPAREN statement

    basicForStatementNoShortIf ::= FOR LPAREN opt_195 SEMI opt_196 SEMI opt_197 RPAREN statementNoShortIf

    forInit ::= statementExpressionList
           | localVariableDeclaration

    forUpdate ::= statementExpressionList

    statementExpressionList ::= statementExpression list_199

    enhancedForStatement ::= FOR LPAREN localVariableDeclaration COLON expression RPAREN statement

    enhancedForStatementNoShortIf ::= FOR LPAREN localVariableDeclaration COLON expression RPAREN statementNoShortIf

    breakStatement ::= BREAK opt_200 SEMI

    continueStatement ::= CONTINUE opt_201 SEMI

    returnStatement ::= RETURN opt_202 SEMI

    throwStatement ::= THROW expression SEMI

    synchronizedStatement ::= SYNCHRONIZED LPAREN expression RPAREN block

    tryStatement ::= TRY block catches
           | TRY block finallyBlock
           | TRY block opt_203 finallyBlock
           | tryWithResourcesStatement

    catches ::= catchClause list_204

    catchClause ::= CATCH LPAREN catchFormalParameter RPAREN block

    catchFormalParameter ::= list_205 catchType variableDeclaratorId

    catchType ::= unannClassType list_207

    finallyBlock ::= FINALLY block

    tryWithResourcesStatement ::= TRY resourceSpecification block opt_208 opt_209

    resourceSpecification ::= LPAREN resourceList opt_210 RPAREN

    resourceList ::= resource list_212

    resource ::= localVariableDeclaration
           | variableAccess

    variableAccess ::= expressionName
           | fieldAccess

    yieldStatement ::= YIELD expression SEMI

    pattern ::= typePattern

    typePattern ::= localVariableDeclaration

    expression ::= assignmentExpression
           | lambdaExpression

    primary ::= primaryNoNewArray
           | arrayCreationExpression

    primaryNoNewArray ::= literal opt_213
           | classLiteral opt_214
           | THIS opt_215
           | typeName DOT THIS opt_216
           | LPAREN expression RPAREN opt_217
           | unqualifiedClassInstanceCreationExpression opt_218
           | expressionName DOT unqualifiedClassInstanceCreationExpression opt_219
           | arrayCreationExpression DOT unqualifiedClassInstanceCreationExpression opt_220
           | arrayCreationExpression DOT identifier opt_221
           | SUPER DOT identifier opt_222
           | typeName DOT SUPER DOT identifier opt_223
           | expressionName LBRACKET expression RBRACKET opt_224
           | arrayCreationExpressionWithInitializer LBRACKET expression RBRACKET opt_225
           | methodName LPAREN opt_226 RPAREN opt_227
           | typeName DOT opt_228 identifier LPAREN opt_229 RPAREN opt_230
           | expressionName DOT opt_231 identifier LPAREN opt_232 RPAREN opt_233
           | arrayCreationExpression DOT opt_234 identifier LPAREN opt_235 RPAREN opt_236
           | SUPER DOT opt_237 identifier LPAREN opt_238 RPAREN opt_239
           | typeName DOT SUPER DOT opt_240 identifier LPAREN opt_241 RPAREN opt_242
           | expressionName COLONCOLON opt_243 identifier opt_244
           | arrayCreationExpression COLONCOLON opt_245 identifier opt_246
           | referenceType COLONCOLON opt_247 identifier opt_248
           | SUPER COLONCOLON opt_249 identifier opt_250
           | typeName DOT SUPER COLONCOLON opt_251 identifier opt_252
           | classType COLONCOLON opt_253 NEW opt_254
           | arrayType COLONCOLON NEW opt_255

    pNNA ::= DOT unqualifiedClassInstanceCreationExpression opt_256
           | DOT identifier opt_257
           | LBRACKET expression RBRACKET opt_258
           | DOT opt_259 identifier LPAREN opt_260 RPAREN opt_261
           | COLONCOLON opt_262 identifier opt_263

    classLiteral ::= typeName list_265 DOT CLASS
           | numericType list_267 DOT CLASS
           | BOOLEAN list_269 DOT CLASS
           | VOID DOT CLASS

    classInstanceCreationExpression ::= unqualifiedClassInstanceCreationExpression
           | expressionName DOT unqualifiedClassInstanceCreationExpression
           | primary DOT unqualifiedClassInstanceCreationExpression

    unqualifiedClassInstanceCreationExpression ::= NEW opt_270 classOrInterfaceTypeToInstantiate LPAREN opt_271 RPAREN opt_272

    classOrInterfaceTypeToInstantiate ::= list_273 identifier list_276 opt_277

    typeArgumentsOrDiamond ::= typeArguments
           | LTGT

    arrayCreationExpression ::= arrayCreationExpressionWithoutInitializer
           | arrayCreationExpressionWithInitializer

    arrayCreationExpressionWithoutInitializer ::= NEW primitiveType dimExprs opt_278
           | NEW classType dimExprs opt_279

    arrayCreationExpressionWithInitializer ::= NEW primitiveType dims arrayInitializer
           | NEW classOrInterfaceType dims arrayInitializer

    dimExprs ::= dimExpr list_280

    dimExpr ::= list_281 LBRACKET expression RBRACKET

    arrayAccess ::= expressionName LBRACKET expression RBRACKET
           | primaryNoNewArray LBRACKET expression RBRACKET
           | arrayCreationExpressionWithInitializer LBRACKET expression RBRACKET

    fieldAccess ::= primary DOT identifier
           | SUPER DOT identifier
           | typeName DOT SUPER DOT identifier

    methodInvocation ::= methodName LPAREN opt_282 RPAREN
           | typeName DOT opt_283 identifier LPAREN opt_284 RPAREN
           | expressionName DOT opt_285 identifier LPAREN opt_286 RPAREN
           | primary DOT opt_287 identifier LPAREN opt_288 RPAREN
           | SUPER DOT opt_289 identifier LPAREN opt_290 RPAREN
           | typeName DOT SUPER DOT opt_291 identifier LPAREN opt_292 RPAREN

    argumentList ::= expression list_294

    methodReference ::= expressionName COLONCOLON opt_295 identifier
           | primary COLONCOLON opt_296 identifier
           | referenceType COLONCOLON opt_297 identifier
           | SUPER COLONCOLON opt_298 identifier
           | typeName DOT SUPER COLONCOLON opt_299 identifier
           | classType COLONCOLON opt_300 NEW
           | arrayType COLONCOLON NEW

    postfixExpression ::= primary opt_301
           | expressionName opt_302

    pfE ::= PLUSPLUS opt_303
           | MINUSMINUS opt_304

    postIncrementExpression ::= postfixExpression PLUSPLUS

    postDecrementExpression ::= postfixExpression MINUSMINUS

    unaryExpression ::= preIncrementExpression
           | preDecrementExpression
           | PLUS unaryExpression
           | MINUS unaryExpression
           | unaryExpressionNotPlusMinus

    preIncrementExpression ::= PLUSPLUS unaryExpression

    preDecrementExpression ::= MINUSMINUS unaryExpression

    unaryExpressionNotPlusMinus ::= postfixExpression
           | TILDE unaryExpression
           | BANG unaryExpression
           | castExpression
           | switchExpression

    castExpression ::= LPAREN primitiveType RPAREN unaryExpression
           | LPAREN referenceType list_305 RPAREN unaryExpressionNotPlusMinus
           | LPAREN referenceType list_306 RPAREN lambdaExpression

    multiplicativeExpression ::= unaryExpression
           | multiplicativeExpression STAR unaryExpression
           | multiplicativeExpression SLASH unaryExpression
           | multiplicativeExpression PERCENT unaryExpression

    additiveExpression ::= multiplicativeExpression
           | additiveExpression PLUS multiplicativeExpression
           | additiveExpression MINUS multiplicativeExpression

    shiftExpression ::= additiveExpression
           | shiftExpression LSHIFT additiveExpression
           | shiftExpression RSHIFT additiveExpression
           | shiftExpression URSHIFT additiveExpression

    relationalExpression ::= shiftExpression
           | relationalExpression LT shiftExpression
           | relationalExpression GT shiftExpression
           | relationalExpression LTEQ shiftExpression
           | relationalExpression GTEQ shiftExpression
           | relationalExpression INSTANCEOF grp_307

    equalityExpression ::= relationalExpression
           | equalityExpression EQEQ relationalExpression
           | equalityExpression NOTEQ relationalExpression

    andExpression ::= equalityExpression
           | andExpression AMP equalityExpression

    exclusiveOrExpression ::= andExpression
           | exclusiveOrExpression CARET andExpression

    inclusiveOrExpression ::= exclusiveOrExpression
           | inclusiveOrExpression PIPE exclusiveOrExpression

    conditionalAndExpression ::= inclusiveOrExpression
           | conditionalAndExpression ANDAND inclusiveOrExpression

    conditionalOrExpression ::= conditionalAndExpression
           | conditionalOrExpression OROR conditionalAndExpression

    conditionalExpression ::= conditionalOrExpression
           | conditionalOrExpression QUESTION expression COLON conditionalExpression
           | conditionalOrExpression QUESTION expression COLON lambdaExpression

    assignmentExpression ::= conditionalExpression
           | assignment

    assignment ::= leftHandSide assignmentOperator expression

    leftHandSide ::= expressionName
           | fieldAccess
           | arrayAccess

    assignmentOperator ::= EQ
           | STAREQ
           | SLASHEQ
           | PERCENTEQ
           | PLUSEQ
           | MINUSEQ
           | LSHIFTEQ
           | RSHIFTEQ
           | URSHIFTEQ
           | AMPEQ
           | CARETEQ
           | PIPEEQ

    lambdaExpression ::= lambdaParameters ARROW lambdaBody

    lambdaParameters ::= LPAREN opt_308 RPAREN

    lambdaParameterList ::= lambdaParameter list_310
           | identifier list_312

    lambdaParameter ::= list_313 lambdaParameterType variableDeclaratorId
           | variableArityParameter

    lambdaParameterType ::= unannType
           | VAR

    lambdaBody ::= expression
           | block

    switchExpression ::= SWITCH LPAREN expression RPAREN switchBlock

    constantExpression ::= expression

    list_1 ::= $empty | list_1 annotation

    grp_2 ::= numericType | BOOLEAN

    list_3 ::= $empty | list_3 annotation

    opt_4 ::= typeArguments | $empty

    opt_5 ::= coit | $empty

    seq_6 ::= packageName DOT

    opt_7 ::= seq_6 | $empty

    list_8 ::= $empty | list_8 annotation

    opt_9 ::= typeArguments | $empty

    opt_10 ::= coit | $empty

    list_11 ::= $empty | list_11 annotation

    opt_12 ::= typeArguments | $empty

    list_13 ::= $empty | list_13 annotation

    opt_14 ::= typeArguments | $empty

    list_15 ::= $empty | list_15 annotation

    opt_16 ::= typeArguments | $empty

    list_17 ::= $empty | list_17 annotation

    list_18 ::= $empty | list_18 annotation

    list_19 ::= $empty | list_19 annotation

    seq_20 ::= list_19 LBRACKET RBRACKET

    list_21 ::= $empty | list_21 seq_20

    list_22 ::= $empty | list_22 typeParameterModifier

    opt_23 ::= typeBound | $empty

    list_25 ::= $empty | list_25 additionalBound

    grp_24 ::= typeVariable | classOrInterfaceType list_25

    seq_26 ::= COMMA typeArgument

    list_27 ::= $empty | list_27 seq_26

    list_28 ::= $empty | list_28 annotation

    opt_29 ::= wildcardBounds | $empty

    seq_30 ::= DOT moduleName

    opt_31 ::= seq_30 | $empty

    seq_32 ::= DOT packageName

    opt_33 ::= seq_32 | $empty

    seq_34 ::= DOT typeIdentifier

    opt_35 ::= seq_34 | $empty

    seq_36 ::= DOT packageOrTypeName

    opt_37 ::= seq_36 | $empty

    seq_38 ::= ambiguousName DOT

    opt_39 ::= seq_38 | $empty

    seq_40 ::= DOT ambiguousName

    opt_41 ::= seq_40 | $empty

    opt_42 ::= packageDeclaration | $empty

    list_43 ::= $empty | list_43 importDeclaration

    list_44 ::= $empty | list_44 topLevelClassOrInterfaceDeclaration

    list_45 ::= $empty | list_45 importDeclaration

    list_46 ::= $empty | list_46 packageModifier

    seq_47 ::= DOT identifier

    list_48 ::= $empty | list_48 seq_47

    list_49 ::= $empty | list_49 annotation

    opt_50 ::= OPEN | $empty

    seq_51 ::= DOT identifier

    list_52 ::= $empty | list_52 seq_51

    list_53 ::= $empty | list_53 moduleDirective

    list_54 ::= $empty | list_54 requiresModifier

    seq_55 ::= COMMA moduleName

    list_56 ::= $empty | list_56 seq_55

    seq_57 ::= TO moduleName list_56

    opt_58 ::= seq_57 | $empty

    seq_59 ::= COMMA moduleName

    list_60 ::= $empty | list_60 seq_59

    seq_61 ::= TO moduleName list_60

    opt_62 ::= seq_61 | $empty

    seq_63 ::= COMMA typeName

    list_64 ::= $empty | list_64 seq_63

    list_65 ::= $empty | list_65 classModifier

    opt_66 ::= typeParameters | $empty

    opt_67 ::= classExtends | $empty

    opt_68 ::= classImplements | $empty

    opt_69 ::= classPermits | $empty

    seq_70 ::= COMMA typeParameter

    list_71 ::= $empty | list_71 seq_70

    seq_72 ::= COMMA interfaceType

    list_73 ::= $empty | list_73 seq_72

    seq_74 ::= COMMA typeName

    list_75 ::= $empty | list_75 seq_74

    list_76 ::= $empty | list_76 classBodyDeclaration

    list_77 ::= $empty | list_77 fieldModifier

    seq_78 ::= COMMA variableDeclarator

    list_79 ::= $empty | list_79 seq_78

    seq_80 ::= EQ variableInitializer

    opt_81 ::= seq_80 | $empty

    opt_82 ::= dims | $empty

    list_83 ::= $empty | list_83 annotation

    seq_84 ::= packageName DOT list_83

    opt_85 ::= seq_84 | $empty

    opt_86 ::= typeArguments | $empty

    opt_87 ::= uCOIT | $empty

    list_88 ::= $empty | list_88 annotation

    opt_89 ::= typeArguments | $empty

    opt_90 ::= uCOIT | $empty

    opt_91 ::= typeArguments | $empty

    grp_92 ::= packageName | unannClassOrInterfaceType

    list_93 ::= $empty | list_93 annotation

    opt_94 ::= typeArguments | $empty

    grp_95 ::= unannPrimitiveType | unannClassOrInterfaceType | unannTypeVariable

    list_96 ::= $empty | list_96 methodModifier

    list_97 ::= $empty | list_97 annotation

    seq_98 ::= typeParameters list_97

    opt_99 ::= seq_98 | $empty

    opt_100 ::= throwsT | $empty

    seq_101 ::= receiverParameter COMMA

    opt_102 ::= seq_101 | $empty

    opt_103 ::= formalParameterList | $empty

    opt_104 ::= dims | $empty

    list_105 ::= $empty | list_105 annotation

    seq_106 ::= identifier DOT

    opt_107 ::= seq_106 | $empty

    seq_108 ::= COMMA formalParameter

    list_109 ::= $empty | list_109 seq_108

    list_110 ::= $empty | list_110 variableModifier

    list_111 ::= $empty | list_111 variableModifier

    list_112 ::= $empty | list_112 annotation

    seq_113 ::= COMMA exceptionType

    list_114 ::= $empty | list_114 seq_113

    list_115 ::= $empty | list_115 constructorModifier

    opt_116 ::= throwsT | $empty

    opt_117 ::= typeParameters | $empty

    seq_118 ::= receiverParameter COMMA

    opt_119 ::= seq_118 | $empty

    opt_120 ::= formalParameterList | $empty

    opt_121 ::= explicitConstructorInvocation | $empty

    opt_122 ::= blockStatements | $empty

    opt_123 ::= typeArguments | $empty

    grp_124 ::= THIS | SUPER

    opt_125 ::= argumentList | $empty

    grp_126 ::= expressionName | primary

    opt_127 ::= typeArguments | $empty

    opt_128 ::= argumentList | $empty

    list_129 ::= $empty | list_129 classModifier

    opt_130 ::= classImplements | $empty

    opt_131 ::= enumConstantList | $empty

    opt_132 ::= COMMA | $empty

    opt_133 ::= enumBodyDeclarations | $empty

    seq_134 ::= COMMA enumConstant

    list_135 ::= $empty | list_135 seq_134

    list_136 ::= $empty | list_136 enumConstantModifier

    opt_137 ::= argumentList | $empty

    seq_138 ::= LPAREN opt_137 RPAREN

    opt_139 ::= seq_138 | $empty

    opt_140 ::= classBody | $empty

    list_141 ::= $empty | list_141 classBodyDeclaration

    list_142 ::= $empty | list_142 classModifier

    opt_143 ::= typeParameters | $empty

    opt_144 ::= classImplements | $empty

    opt_145 ::= recordComponentList | $empty

    seq_146 ::= COMMA recordComponent

    list_147 ::= $empty | list_147 seq_146

    list_148 ::= $empty | list_148 recordComponentModifier

    list_149 ::= $empty | list_149 recordComponentModifier

    list_150 ::= $empty | list_150 annotation

    list_151 ::= $empty | list_151 recordBodyDeclaration

    list_152 ::= $empty | list_152 constructorModifier

    list_153 ::= $empty | list_153 interfaceModifier

    opt_154 ::= typeParameters | $empty

    opt_155 ::= interfaceExtends | $empty

    opt_156 ::= interfacePermits | $empty

    seq_157 ::= COMMA typeName

    list_158 ::= $empty | list_158 seq_157

    list_159 ::= $empty | list_159 interfaceMemberDeclaration

    list_160 ::= $empty | list_160 constantModifier

    list_161 ::= $empty | list_161 interfaceMethodModifier

    list_162 ::= $empty | list_162 interfaceModifier

    list_163 ::= $empty | list_163 annotationInterfaceMemberDeclaration

    list_164 ::= $empty | list_164 annotationInterfaceElementModifier

    opt_165 ::= dims | $empty

    opt_166 ::= defaultValue | $empty

    opt_167 ::= elementValuePairList | $empty

    seq_168 ::= COMMA elementValuePair

    list_169 ::= $empty | list_169 seq_168

    opt_170 ::= elementValueList | $empty

    opt_171 ::= COMMA | $empty

    seq_172 ::= COMMA elementValue

    list_173 ::= $empty | list_173 seq_172

    opt_174 ::= variableInitializerList | $empty

    opt_175 ::= COMMA | $empty

    seq_176 ::= COMMA variableInitializer

    list_177 ::= $empty | list_177 seq_176

    opt_178 ::= blockStatements | $empty

    list_179 ::= $empty | list_179 blockStatement

    list_180 ::= $empty | list_180 variableModifier

    seq_181 ::= COLON expression

    opt_182 ::= seq_181 | $empty

    list_183 ::= $empty | list_183 switchRule

    list_184 ::= $empty | list_184 switchBlockStatementGroup

    seq_185 ::= switchLabel COLON

    list_186 ::= $empty | list_186 seq_185

    grp_187 ::= expression SEMI | block | throwStatement

    seq_188 ::= switchLabel COLON

    list_189 ::= $empty | list_189 seq_188

    seq_190 ::= COMMA caseConstant

    list_191 ::= $empty | list_191 seq_190

    opt_192 ::= forInit | $empty

    opt_193 ::= expression | $empty

    opt_194 ::= forUpdate | $empty

    opt_195 ::= forInit | $empty

    opt_196 ::= expression | $empty

    opt_197 ::= forUpdate | $empty

    seq_198 ::= COMMA statementExpression

    list_199 ::= $empty | list_199 seq_198

    opt_200 ::= identifier | $empty

    opt_201 ::= identifier | $empty

    opt_202 ::= expression | $empty

    opt_203 ::= catches | $empty

    list_204 ::= $empty | list_204 catchClause

    list_205 ::= $empty | list_205 variableModifier

    grp_206 ::= PIPE classType

    list_207 ::= $empty | list_207 grp_206

    opt_208 ::= catches | $empty

    opt_209 ::= finallyBlock | $empty

    opt_210 ::= SEMI | $empty

    seq_211 ::= SEMI resource

    list_212 ::= $empty | list_212 seq_211

    opt_213 ::= pNNA | $empty

    opt_214 ::= pNNA | $empty

    opt_215 ::= pNNA | $empty

    opt_216 ::= pNNA | $empty

    opt_217 ::= pNNA | $empty

    opt_218 ::= pNNA | $empty

    opt_219 ::= pNNA | $empty

    opt_220 ::= pNNA | $empty

    opt_221 ::= pNNA | $empty

    opt_222 ::= pNNA | $empty

    opt_223 ::= pNNA | $empty

    opt_224 ::= pNNA | $empty

    opt_225 ::= pNNA | $empty

    opt_226 ::= argumentList | $empty

    opt_227 ::= pNNA | $empty

    opt_228 ::= typeArguments | $empty

    opt_229 ::= argumentList | $empty

    opt_230 ::= pNNA | $empty

    opt_231 ::= typeArguments | $empty

    opt_232 ::= argumentList | $empty

    opt_233 ::= pNNA | $empty

    opt_234 ::= typeArguments | $empty

    opt_235 ::= argumentList | $empty

    opt_236 ::= pNNA | $empty

    opt_237 ::= typeArguments | $empty

    opt_238 ::= argumentList | $empty

    opt_239 ::= pNNA | $empty

    opt_240 ::= typeArguments | $empty

    opt_241 ::= argumentList | $empty

    opt_242 ::= pNNA | $empty

    opt_243 ::= typeArguments | $empty

    opt_244 ::= pNNA | $empty

    opt_245 ::= typeArguments | $empty

    opt_246 ::= pNNA | $empty

    opt_247 ::= typeArguments | $empty

    opt_248 ::= pNNA | $empty

    opt_249 ::= typeArguments | $empty

    opt_250 ::= pNNA | $empty

    opt_251 ::= typeArguments | $empty

    opt_252 ::= pNNA | $empty

    opt_253 ::= typeArguments | $empty

    opt_254 ::= pNNA | $empty

    opt_255 ::= pNNA | $empty

    opt_256 ::= pNNA | $empty

    opt_257 ::= pNNA | $empty

    opt_258 ::= pNNA | $empty

    opt_259 ::= typeArguments | $empty

    opt_260 ::= argumentList | $empty

    opt_261 ::= pNNA | $empty

    opt_262 ::= typeArguments | $empty

    opt_263 ::= pNNA | $empty

    seq_264 ::= LBRACKET RBRACKET

    list_265 ::= $empty | list_265 seq_264

    seq_266 ::= LBRACKET RBRACKET

    list_267 ::= $empty | list_267 seq_266

    seq_268 ::= LBRACKET RBRACKET

    list_269 ::= $empty | list_269 seq_268

    opt_270 ::= typeArguments | $empty

    opt_271 ::= argumentList | $empty

    opt_272 ::= classBody | $empty

    list_273 ::= $empty | list_273 annotation

    list_274 ::= $empty | list_274 annotation

    seq_275 ::= DOT list_274 identifier

    list_276 ::= $empty | list_276 seq_275

    opt_277 ::= typeArgumentsOrDiamond | $empty

    opt_278 ::= dims | $empty

    opt_279 ::= dims | $empty

    list_280 ::= $empty | list_280 dimExpr

    list_281 ::= $empty | list_281 annotation

    opt_282 ::= argumentList | $empty

    opt_283 ::= typeArguments | $empty

    opt_284 ::= argumentList | $empty

    opt_285 ::= typeArguments | $empty

    opt_286 ::= argumentList | $empty

    opt_287 ::= typeArguments | $empty

    opt_288 ::= argumentList | $empty

    opt_289 ::= typeArguments | $empty

    opt_290 ::= argumentList | $empty

    opt_291 ::= typeArguments | $empty

    opt_292 ::= argumentList | $empty

    seq_293 ::= COMMA expression

    list_294 ::= $empty | list_294 seq_293

    opt_295 ::= typeArguments | $empty

    opt_296 ::= typeArguments | $empty

    opt_297 ::= typeArguments | $empty

    opt_298 ::= typeArguments | $empty

    opt_299 ::= typeArguments | $empty

    opt_300 ::= typeArguments | $empty

    opt_301 ::= pfE | $empty

    opt_302 ::= pfE | $empty

    opt_303 ::= pfE | $empty

    opt_304 ::= pfE | $empty

    list_305 ::= $empty | list_305 additionalBound

    list_306 ::= $empty | list_306 additionalBound

    grp_307 ::= referenceType | pattern

    opt_308 ::= lambdaParameterList | $empty

    seq_309 ::= COMMA lambdaParameter

    list_310 ::= $empty | list_310 seq_309

    seq_311 ::= COMMA identifier

    list_312 ::= $empty | list_312 seq_311

    list_313 ::= $empty | list_313 variableModifier

    opt_formals ::= $empty | formalParameterList

%End
