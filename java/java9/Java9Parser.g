-- AUTO-GENERATED from antlr/grammars-v4 java/java9 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=4
%Options fp=Java9Parser
%options package=lpg.grammars.java.java9
%options template=dtParserTemplateF.gi
%options import_terminals=Java9Lexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    compilationUnit
%End

%Rules
    literal ::= DECIMAL_LITERAL
           | BooleanLiteral
           | CHAR_LITERAL
           | STRING_LITERAL
           | NullLiteral

    primitiveType ::= list_1 numericType
           | list_2 BOOLEAN

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

    classOrInterfaceType ::= grp_3 list_5

    classType ::= typeIdentifier
           | classType DOT typeIdentifier

    classType_lf_classOrInterfaceType ::= DOT list_10 identifier opt_11

    classType_lfno_classOrInterfaceType ::= list_12 identifier opt_13

    interfaceType ::= classType

    interfaceType_lf_classOrInterfaceType ::= classType_lf_classOrInterfaceType

    interfaceType_lfno_classOrInterfaceType ::= classType_lfno_classOrInterfaceType

    typeVariable ::= list_14 identifier

    arrayType ::= primitiveType dims
           | classOrInterfaceType dims
           | typeVariable dims

    dims ::= list_15 LBRACKET RBRACKET list_18

    typeParameter ::= list_19 identifier opt_20

    typeParameterModifier ::= annotation

    typeBound ::= EXTENDS typeVariable
           | EXTENDS classOrInterfaceType list_21

    additionalBound ::= AMP interfaceType

    typeArguments ::= LT typeArgumentList GT

    typeArgumentList ::= typeArgument list_23

    typeArgument ::= referenceType
           | wildcard

    wildcard ::= list_24 QUESTION opt_25

    wildcardBounds ::= EXTENDS referenceType
           | SUPER referenceType

    moduleName ::= identifier
           | moduleName DOT identifier

    packageName ::= identifier
           | packageName DOT identifier

    typeName ::= identifier
           | packageOrTypeName DOT identifier

    packageOrTypeName ::= identifier
           | packageOrTypeName DOT identifier

    expressionName ::= identifier
           | ambiguousName DOT identifier

    methodName ::= identifier

    ambiguousName ::= identifier
           | ambiguousName DOT identifier

    compilationUnit ::= grp_26

    ordinaryCompilation ::= opt_27 list_28 list_29

    modularCompilation ::= list_30 moduleDeclaration

    packageDeclaration ::= list_31 PACKAGE packageName SEMI

    packageModifier ::= annotation

    importDeclaration ::= singleTypeImportDeclaration
           | typeImportOnDemandDeclaration
           | singleStaticImportDeclaration
           | staticImportOnDemandDeclaration

    singleTypeImportDeclaration ::= IMPORT typeName SEMI

    typeImportOnDemandDeclaration ::= IMPORT packageOrTypeName DOT STAR SEMI

    singleStaticImportDeclaration ::= IMPORT STATIC typeName DOT identifier SEMI

    staticImportOnDemandDeclaration ::= IMPORT STATIC typeName DOT STAR SEMI

    typeDeclaration ::= classDeclaration
           | interfaceDeclaration
           | SEMI

    moduleDeclaration ::= list_32 opt_33 MODULE moduleName LBRACE list_34 RBRACE

    moduleDirective ::= REQUIRES list_35 moduleName SEMI
           | EXPORTS packageName opt_39 SEMI
           | OPENS packageName opt_43 SEMI
           | USES typeName SEMI
           | PROVIDES typeName WITH typeName list_45 SEMI

    requiresModifier ::= TRANSITIVE
           | STATIC

    classDeclaration ::= list_46 classDeclarationTail

    classDeclarationTail ::= CLASS identifier opt_47 opt_48 opt_49 classBody
           | ENUM identifier opt_103 enumBody

    normalClassDeclaration ::= list_46 CLASS identifier opt_47 opt_48 opt_49 classBody

    classModifier ::= annotation
           | PUBLIC
           | PROTECTED
           | PRIVATE
           | ABSTRACT
           | STATIC
           | FINAL
           | STRICTFP

    typeParameters ::= LT typeParameterList GT

    typeParameterList ::= typeParameter list_51

    superclass ::= EXTENDS classType

    superinterfaces ::= IMPLEMENTS interfaceTypeList

    interfaceTypeList ::= interfaceType list_53

    classBody ::= LBRACE list_54 RBRACE

    classBodyDeclaration ::= classMemberDeclaration
           | instanceInitializer
           | staticInitializer
           | constructorDeclaration

    classMemberDeclaration ::= fieldDeclaration
           | methodDeclaration
           | classDeclaration
           | interfaceDeclaration
           | SEMI

    fieldDeclaration ::= list_55 unannType variableDeclaratorList SEMI

    fieldModifier ::= annotation
           | PUBLIC
           | PROTECTED
           | PRIVATE
           | STATIC
           | FINAL
           | TRANSIENT
           | VOLATILE

    variableDeclaratorList ::= variableDeclarator list_57

    variableDeclarator ::= variableDeclaratorId opt_59

    variableDeclaratorId ::= identifier opt_60

    variableInitializer ::= expression
           | arrayInitializer

    unannType ::= unannPrimitiveType
           | unannReferenceType

    unannPrimitiveType ::= numericType
           | BOOLEAN

    unannReferenceType ::= unannClassOrInterfaceType
           | unannTypeVariable
           | unannArrayType

    unannClassOrInterfaceType ::= grp_61 list_63

    unannClassType ::= identifier opt_64
           | unannClassOrInterfaceType DOT list_65 identifier opt_66

    unannClassType_lf_unannClassOrInterfaceType ::= DOT list_67 identifier opt_68

    unannClassType_lfno_unannClassOrInterfaceType ::= identifier opt_69

    unannInterfaceType ::= unannClassType

    unannInterfaceType_lf_unannClassOrInterfaceType ::= unannClassType_lf_unannClassOrInterfaceType

    unannInterfaceType_lfno_unannClassOrInterfaceType ::= unannClassType_lfno_unannClassOrInterfaceType

    unannTypeVariable ::= identifier

    unannArrayType ::= unannPrimitiveType dims
           | unannClassOrInterfaceType dims
           | unannTypeVariable dims

    methodDeclaration ::= list_70 methodHeader methodBody

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

    methodHeader ::= result methodDeclarator opt_71
           | typeParameters list_72 result methodDeclarator opt_73

    result ::= unannType
           | VOID

    methodDeclarator ::= identifier LPAREN opt_74 RPAREN opt_75

    formalParameterList ::= formalParameters COMMA lastFormalParameter
           | lastFormalParameter
           | receiverParameter

    formalParameters ::= formalParameter list_77
           | receiverParameter list_79

    formalParameter ::= list_80 unannType variableDeclaratorId

    variableModifier ::= annotation
           | FINAL

    lastFormalParameter ::= list_81 unannType list_82 ELLIPSIS variableDeclaratorId
           | formalParameter

    receiverParameter ::= list_83 unannType opt_85 THIS

    throws_ ::= THROWS exceptionTypeList

    exceptionTypeList ::= exceptionType list_87

    exceptionType ::= classType
           | typeVariable

    methodBody ::= block
           | SEMI

    instanceInitializer ::= block

    staticInitializer ::= STATIC block

    constructorDeclaration ::= list_88 constructorDeclarator opt_89 constructorBody

    constructorModifier ::= annotation
           | PUBLIC
           | PROTECTED
           | PRIVATE

    constructorDeclarator ::= opt_90 simpleTypeName LPAREN opt_91 RPAREN

    simpleTypeName ::= identifier

    constructorBody ::= LBRACE opt_92 opt_93 RBRACE

    explicitConstructorInvocation ::= opt_94 THIS LPAREN opt_95 RPAREN SEMI
           | opt_96 SUPER LPAREN opt_97 RPAREN SEMI
           | expressionName DOT opt_98 SUPER LPAREN opt_99 RPAREN SEMI
           | primary DOT opt_100 SUPER LPAREN opt_101 RPAREN SEMI

    enumDeclaration ::= list_102 ENUM identifier opt_103 enumBody

    enumBody ::= LBRACE opt_104 opt_105 opt_106 RBRACE

    enumConstantList ::= enumConstant list_108

    enumConstant ::= list_109 identifier opt_112 opt_113

    enumConstantModifier ::= annotation

    enumBodyDeclarations ::= SEMI list_114

    interfaceDeclaration ::= normalInterfaceDeclaration
           | annotationTypeDeclaration

    normalInterfaceDeclaration ::= list_115 INTERFACE identifier opt_116 opt_117 interfaceBody

    interfaceModifier ::= annotation
           | PUBLIC
           | PROTECTED
           | PRIVATE
           | ABSTRACT
           | STATIC
           | STRICTFP

    extendsInterfaces ::= EXTENDS interfaceTypeList

    interfaceBody ::= LBRACE list_118 RBRACE

    interfaceMemberDeclaration ::= constantDeclaration
           | interfaceMethodDeclaration
           | classDeclaration
           | interfaceDeclaration
           | SEMI

    constantDeclaration ::= list_119 unannType variableDeclaratorList SEMI

    constantModifier ::= annotation
           | PUBLIC
           | STATIC
           | FINAL

    interfaceMethodDeclaration ::= list_120 methodHeader methodBody

    interfaceMethodModifier ::= annotation
           | PUBLIC
           | PRIVATE
           | ABSTRACT
           | DEFAULT
           | STATIC
           | STRICTFP

    annotationTypeDeclaration ::= list_121 AT INTERFACE identifier annotationTypeBody

    annotationTypeBody ::= LBRACE list_122 RBRACE

    annotationTypeMemberDeclaration ::= annotationTypeElementDeclaration
           | constantDeclaration
           | classDeclaration
           | interfaceDeclaration
           | SEMI

    annotationTypeElementDeclaration ::= list_123 unannType identifier LPAREN RPAREN opt_124 opt_125 SEMI

    annotationTypeElementModifier ::= annotation
           | PUBLIC
           | ABSTRACT

    defaultValue ::= DEFAULT elementValue

    annotation ::= normalAnnotation
           | markerAnnotation
           | singleElementAnnotation

    normalAnnotation ::= AT typeName LPAREN opt_126 RPAREN

    elementValuePairList ::= elementValuePair list_128

    elementValuePair ::= identifier EQ elementValue

    elementValue ::= conditionalExpression
           | elementValueArrayInitializer
           | annotation

    elementValueArrayInitializer ::= LBRACE opt_129 opt_130 RBRACE

    elementValueList ::= elementValue list_132

    markerAnnotation ::= AT typeName

    singleElementAnnotation ::= AT typeName LPAREN elementValue RPAREN

    arrayInitializer ::= LBRACE opt_133 opt_134 RBRACE

    variableInitializerList ::= variableInitializer list_136

    block ::= LBRACE opt_137 RBRACE

    blockStatements ::= list_138

    blockStatement ::= localVariableDeclarationStatement
           | classDeclaration
           | statement

    localVariableDeclarationStatement ::= localVariableDeclaration SEMI

    localVariableDeclaration ::= list_139 unannType variableDeclaratorList

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

    assertStatement ::= ASSERT expression SEMI
           | ASSERT expression COLON expression SEMI

    switchStatement ::= SWITCH LPAREN expression RPAREN switchBlock

    switchBlock ::= LBRACE list_140 list_141 RBRACE

    switchBlockStatementGroup ::= switchLabels blockStatements

    switchLabels ::= list_142

    switchLabel ::= CASE constantExpression COLON
           | CASE enumConstantName COLON
           | DEFAULT COLON

    enumConstantName ::= identifier

    whileStatement ::= WHILE LPAREN expression RPAREN statement

    whileStatementNoShortIf ::= WHILE LPAREN expression RPAREN statementNoShortIf

    doStatement ::= DO statement WHILE LPAREN expression RPAREN SEMI

    forStatement ::= basicForStatement
           | enhancedForStatement

    forStatementNoShortIf ::= basicForStatementNoShortIf
           | enhancedForStatementNoShortIf

    basicForStatement ::= FOR LPAREN opt_143 SEMI opt_144 SEMI opt_145 RPAREN statement

    basicForStatementNoShortIf ::= FOR LPAREN opt_146 SEMI opt_147 SEMI opt_148 RPAREN statementNoShortIf

    forInit ::= statementExpressionList
           | localVariableDeclaration

    forUpdate ::= statementExpressionList

    statementExpressionList ::= statementExpression list_150

    enhancedForStatement ::= FOR LPAREN list_151 unannType variableDeclaratorId COLON expression RPAREN statement

    enhancedForStatementNoShortIf ::= FOR LPAREN list_152 unannType variableDeclaratorId COLON expression RPAREN statementNoShortIf

    breakStatement ::= BREAK opt_153 SEMI

    continueStatement ::= CONTINUE opt_154 SEMI

    returnStatement ::= RETURN opt_155 SEMI

    throwStatement ::= THROW expression SEMI

    synchronizedStatement ::= SYNCHRONIZED LPAREN expression RPAREN block

    tryStatement ::= TRY block catches
           | TRY block opt_156 finally_
           | tryWithResourcesStatement

    catches ::= list_157

    catchClause ::= CATCH LPAREN catchFormalParameter RPAREN block

    catchFormalParameter ::= list_158 catchType variableDeclaratorId

    catchType ::= unannClassType list_160

    finally_ ::= FINALLY block

    tryWithResourcesStatement ::= TRY resourceSpecification block opt_161 opt_162

    resourceSpecification ::= LPAREN resourceList opt_163 RPAREN

    resourceList ::= resource list_165

    resource ::= list_166 unannType variableDeclaratorId EQ expression
           | variableAccess

    variableAccess ::= expressionName
           | fieldAccess

    primary ::= grp_167 list_168

    primaryNoNewArray ::= literal
           | classLiteral
           | THIS
           | typeName DOT THIS
           | LPAREN expression RPAREN
           | classInstanceCreationExpression
           | fieldAccess
           | arrayAccess
           | methodInvocation
           | methodReference

    primaryNoNewArray_lf_arrayAccess ::= $empty

    primaryNoNewArray_lfno_arrayAccess ::= literal
           | typeName list_170 DOT CLASS
           | VOID DOT CLASS
           | THIS
           | typeName DOT THIS
           | LPAREN expression RPAREN
           | classInstanceCreationExpression
           | fieldAccess
           | methodInvocation
           | methodReference

    primaryNoNewArray_lf_primary ::= classInstanceCreationExpression_lf_primary
           | fieldAccess_lf_primary
           | arrayAccess_lf_primary
           | methodInvocation_lf_primary
           | methodReference_lf_primary

    primaryNoNewArray_lf_primary_lf_arrayAccess_lf_primary ::= $empty

    primaryNoNewArray_lf_primary_lfno_arrayAccess_lf_primary ::= classInstanceCreationExpression_lf_primary
           | fieldAccess_lf_primary
           | methodInvocation_lf_primary
           | methodReference_lf_primary

    primaryNoNewArray_lfno_primary ::= literal
           | typeName list_172 DOT CLASS
           | unannPrimitiveType list_174 DOT CLASS
           | VOID DOT CLASS
           | THIS
           | typeName DOT THIS
           | LPAREN expression RPAREN
           | classInstanceCreationExpression_lfno_primary
           | fieldAccess_lfno_primary
           | arrayAccess_lfno_primary
           | methodInvocation_lfno_primary
           | methodReference_lfno_primary

    primaryNoNewArray_lfno_primary_lf_arrayAccess_lfno_primary ::= $empty

    primaryNoNewArray_lfno_primary_lfno_arrayAccess_lfno_primary ::= literal
           | typeName list_176 DOT CLASS
           | unannPrimitiveType list_178 DOT CLASS
           | VOID DOT CLASS
           | THIS
           | typeName DOT THIS
           | LPAREN expression RPAREN
           | classInstanceCreationExpression_lfno_primary
           | fieldAccess_lfno_primary
           | methodInvocation_lfno_primary
           | methodReference_lfno_primary

    classLiteral ::= grp_179 list_181 DOT CLASS
           | VOID DOT CLASS

    classInstanceCreationExpression ::= NEW opt_182 list_183 identifier list_186 opt_187 LPAREN opt_188 RPAREN opt_189
           | expressionName DOT NEW opt_190 list_191 identifier opt_192 LPAREN opt_193 RPAREN opt_194
           | primary DOT NEW opt_195 list_196 identifier opt_197 LPAREN opt_198 RPAREN opt_199

    classInstanceCreationExpression_lf_primary ::= DOT NEW opt_200 list_201 identifier opt_202 LPAREN opt_203 RPAREN opt_204

    classInstanceCreationExpression_lfno_primary ::= NEW opt_205 list_206 identifier list_209 opt_210 LPAREN opt_211 RPAREN opt_212
           | expressionName DOT NEW opt_213 list_214 identifier opt_215 LPAREN opt_216 RPAREN opt_217

    typeArgumentsOrDiamond ::= typeArguments
           | LT GT

    fieldAccess ::= primary DOT identifier
           | SUPER DOT identifier
           | typeName DOT SUPER DOT identifier

    fieldAccess_lf_primary ::= DOT identifier

    fieldAccess_lfno_primary ::= SUPER DOT identifier
           | typeName DOT SUPER DOT identifier

    arrayAccess ::= grp_218 list_220

    arrayAccess_lf_primary ::= primaryNoNewArray_lf_primary_lfno_arrayAccess_lf_primary LBRACKET expression RBRACKET list_222

    arrayAccess_lfno_primary ::= grp_223 list_225

    methodInvocation ::= methodName LPAREN opt_226 RPAREN
           | typeName DOT opt_227 identifier LPAREN opt_228 RPAREN
           | expressionName DOT opt_229 identifier LPAREN opt_230 RPAREN
           | primary DOT opt_231 identifier LPAREN opt_232 RPAREN
           | SUPER DOT opt_233 identifier LPAREN opt_234 RPAREN
           | typeName DOT SUPER DOT opt_235 identifier LPAREN opt_236 RPAREN

    methodInvocation_lf_primary ::= DOT opt_237 identifier LPAREN opt_238 RPAREN

    methodInvocation_lfno_primary ::= methodName LPAREN opt_239 RPAREN
           | typeName DOT opt_240 identifier LPAREN opt_241 RPAREN
           | expressionName DOT opt_242 identifier LPAREN opt_243 RPAREN
           | SUPER DOT opt_244 identifier LPAREN opt_245 RPAREN
           | typeName DOT SUPER DOT opt_246 identifier LPAREN opt_247 RPAREN

    argumentList ::= expression list_249

    methodReference ::= expressionName COLONCOLON opt_250 identifier
           | referenceType COLONCOLON opt_251 identifier
           | primary COLONCOLON opt_252 identifier
           | SUPER COLONCOLON opt_253 identifier
           | typeName DOT SUPER COLONCOLON opt_254 identifier
           | classType COLONCOLON opt_255 NEW
           | arrayType COLONCOLON NEW

    methodReference_lf_primary ::= COLONCOLON opt_256 identifier

    methodReference_lfno_primary ::= expressionName COLONCOLON opt_257 identifier
           | referenceType COLONCOLON opt_258 identifier
           | SUPER COLONCOLON opt_259 identifier
           | typeName DOT SUPER COLONCOLON opt_260 identifier
           | classType COLONCOLON opt_261 NEW
           | arrayType COLONCOLON NEW

    arrayCreationExpression ::= NEW primitiveType dimExprs opt_262
           | NEW classOrInterfaceType dimExprs opt_263
           | NEW primitiveType dims arrayInitializer
           | NEW classOrInterfaceType dims arrayInitializer

    dimExprs ::= list_264

    dimExpr ::= list_265 LBRACKET expression RBRACKET

    constantExpression ::= expression

    expression ::= lambdaExpression
           | assignmentExpression

    lambdaExpression ::= lambdaParameters ARROW lambdaBody

    lambdaParameters ::= identifier
           | LPAREN opt_266 RPAREN
           | LPAREN inferredFormalParameterList RPAREN

    inferredFormalParameterList ::= identifier list_268

    lambdaBody ::= expression
           | block

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

    conditionalExpression ::= conditionalOrExpression
           | conditionalOrExpression QUESTION expression COLON grp_269

    conditionalOrExpression ::= conditionalAndExpression
           | conditionalOrExpression OROR conditionalAndExpression

    conditionalAndExpression ::= inclusiveOrExpression
           | conditionalAndExpression ANDAND inclusiveOrExpression

    inclusiveOrExpression ::= exclusiveOrExpression
           | inclusiveOrExpression PIPE exclusiveOrExpression

    exclusiveOrExpression ::= andExpression
           | exclusiveOrExpression CARET andExpression

    andExpression ::= equalityExpression
           | andExpression AMP equalityExpression

    equalityExpression ::= relationalExpression
           | equalityExpression EQEQ relationalExpression
           | equalityExpression NOTEQ relationalExpression

    relationalExpression ::= shiftExpression
           | relationalExpression LT shiftExpression
           | relationalExpression GT shiftExpression
           | relationalExpression LTEQ shiftExpression
           | relationalExpression GTEQ shiftExpression
           | relationalExpression INSTANCEOF referenceType

    shiftExpression ::= additiveExpression
           | shiftExpression LT LT additiveExpression
           | shiftExpression GT GT additiveExpression
           | shiftExpression GT GT GT additiveExpression

    additiveExpression ::= multiplicativeExpression
           | additiveExpression PLUS multiplicativeExpression
           | additiveExpression MINUS multiplicativeExpression

    multiplicativeExpression ::= unaryExpression
           | multiplicativeExpression STAR unaryExpression
           | multiplicativeExpression SLASH unaryExpression
           | multiplicativeExpression PERCENT unaryExpression

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

    postfixExpression ::= grp_270 list_272

    postIncrementExpression ::= postfixExpression PLUSPLUS

    postIncrementExpression_lf_postfixExpression ::= PLUSPLUS

    postDecrementExpression ::= postfixExpression MINUSMINUS

    postDecrementExpression_lf_postfixExpression ::= MINUSMINUS

    castExpression ::= LPAREN primitiveType RPAREN unaryExpression
           | LPAREN referenceType list_273 RPAREN unaryExpressionNotPlusMinus
           | LPAREN referenceType list_274 RPAREN lambdaExpression

    identifier ::= IDENTIFIER

    list_1 ::= $empty | list_1 annotation

    list_2 ::= $empty | list_2 annotation

    grp_3 ::= classType_lfno_classOrInterfaceType | interfaceType_lfno_classOrInterfaceType

    grp_4 ::= classType_lf_classOrInterfaceType | interfaceType_lf_classOrInterfaceType

    list_5 ::= $empty | list_5 grp_4

    list_6 ::= $empty | list_6 annotation

    opt_7 ::= typeArguments | $empty

    list_8 ::= $empty | list_8 annotation

    opt_9 ::= typeArguments | $empty

    list_10 ::= $empty | list_10 annotation

    opt_11 ::= typeArguments | $empty

    list_12 ::= $empty | list_12 annotation

    opt_13 ::= typeArguments | $empty

    list_14 ::= $empty | list_14 annotation

    list_15 ::= $empty | list_15 annotation

    list_16 ::= $empty | list_16 annotation

    seq_17 ::= list_16 LBRACKET RBRACKET

    list_18 ::= $empty | list_18 seq_17

    list_19 ::= $empty | list_19 typeParameterModifier

    opt_20 ::= typeBound | $empty

    list_21 ::= $empty | list_21 additionalBound

    seq_22 ::= COMMA typeArgument

    list_23 ::= $empty | list_23 seq_22

    list_24 ::= $empty | list_24 annotation

    opt_25 ::= wildcardBounds | $empty

    grp_26 ::= ordinaryCompilation | modularCompilation

    opt_27 ::= packageDeclaration | $empty

    list_28 ::= $empty | list_28 importDeclaration

    list_29 ::= $empty | list_29 typeDeclaration

    list_30 ::= $empty | list_30 importDeclaration

    list_31 ::= $empty | list_31 packageModifier

    list_32 ::= $empty | list_32 annotation

    opt_33 ::= OPEN | $empty

    list_34 ::= $empty | list_34 moduleDirective

    list_35 ::= $empty | list_35 requiresModifier

    seq_36 ::= COMMA moduleName

    list_37 ::= $empty | list_37 seq_36

    seq_38 ::= TO moduleName list_37

    opt_39 ::= seq_38 | $empty

    seq_40 ::= COMMA moduleName

    list_41 ::= $empty | list_41 seq_40

    seq_42 ::= TO moduleName list_41

    opt_43 ::= seq_42 | $empty

    seq_44 ::= COMMA typeName

    list_45 ::= $empty | list_45 seq_44

    list_46 ::= $empty | list_46 classModifier

    opt_47 ::= typeParameters | $empty

    opt_48 ::= superclass | $empty

    opt_49 ::= superinterfaces | $empty

    seq_50 ::= COMMA typeParameter

    list_51 ::= $empty | list_51 seq_50

    seq_52 ::= COMMA interfaceType

    list_53 ::= $empty | list_53 seq_52

    list_54 ::= $empty | list_54 classBodyDeclaration

    list_55 ::= $empty | list_55 fieldModifier

    seq_56 ::= COMMA variableDeclarator

    list_57 ::= $empty | list_57 seq_56

    seq_58 ::= EQ variableInitializer

    opt_59 ::= seq_58 | $empty

    opt_60 ::= dims | $empty

    grp_61 ::= unannClassType_lfno_unannClassOrInterfaceType | unannInterfaceType_lfno_unannClassOrInterfaceType

    grp_62 ::= unannClassType_lf_unannClassOrInterfaceType | unannInterfaceType_lf_unannClassOrInterfaceType

    list_63 ::= $empty | list_63 grp_62

    opt_64 ::= typeArguments | $empty

    list_65 ::= $empty | list_65 annotation

    opt_66 ::= typeArguments | $empty

    list_67 ::= $empty | list_67 annotation

    opt_68 ::= typeArguments | $empty

    opt_69 ::= typeArguments | $empty

    list_70 ::= $empty | list_70 methodModifier

    opt_71 ::= throws_ | $empty

    list_72 ::= $empty | list_72 annotation

    opt_73 ::= throws_ | $empty

    opt_74 ::= formalParameterList | $empty

    opt_75 ::= dims | $empty

    seq_76 ::= COMMA formalParameter

    list_77 ::= $empty | list_77 seq_76

    seq_78 ::= COMMA formalParameter

    list_79 ::= $empty | list_79 seq_78

    list_80 ::= $empty | list_80 variableModifier

    list_81 ::= $empty | list_81 variableModifier

    list_82 ::= $empty | list_82 annotation

    list_83 ::= $empty | list_83 annotation

    seq_84 ::= identifier DOT

    opt_85 ::= seq_84 | $empty

    seq_86 ::= COMMA exceptionType

    list_87 ::= $empty | list_87 seq_86

    list_88 ::= $empty | list_88 constructorModifier

    opt_89 ::= throws_ | $empty

    opt_90 ::= typeParameters | $empty

    opt_91 ::= formalParameterList | $empty

    opt_92 ::= explicitConstructorInvocation | $empty

    opt_93 ::= blockStatements | $empty

    opt_94 ::= typeArguments | $empty

    opt_95 ::= argumentList | $empty

    opt_96 ::= typeArguments | $empty

    opt_97 ::= argumentList | $empty

    opt_98 ::= typeArguments | $empty

    opt_99 ::= argumentList | $empty

    opt_100 ::= typeArguments | $empty

    opt_101 ::= argumentList | $empty

    list_102 ::= $empty | list_102 classModifier

    opt_103 ::= superinterfaces | $empty

    opt_104 ::= enumConstantList | $empty

    opt_105 ::= COMMA | $empty

    opt_106 ::= enumBodyDeclarations | $empty

    seq_107 ::= COMMA enumConstant

    list_108 ::= $empty | list_108 seq_107

    list_109 ::= $empty | list_109 enumConstantModifier

    opt_110 ::= argumentList | $empty

    seq_111 ::= LPAREN opt_110 RPAREN

    opt_112 ::= seq_111 | $empty

    opt_113 ::= classBody | $empty

    list_114 ::= $empty | list_114 classBodyDeclaration

    list_115 ::= $empty | list_115 interfaceModifier

    opt_116 ::= typeParameters | $empty

    opt_117 ::= extendsInterfaces | $empty

    list_118 ::= $empty | list_118 interfaceMemberDeclaration

    list_119 ::= $empty | list_119 constantModifier

    list_120 ::= $empty | list_120 interfaceMethodModifier

    list_121 ::= $empty | list_121 interfaceModifier

    list_122 ::= $empty | list_122 annotationTypeMemberDeclaration

    list_123 ::= $empty | list_123 annotationTypeElementModifier

    opt_124 ::= dims | $empty

    opt_125 ::= defaultValue | $empty

    opt_126 ::= elementValuePairList | $empty

    seq_127 ::= COMMA elementValuePair

    list_128 ::= $empty | list_128 seq_127

    opt_129 ::= elementValueList | $empty

    opt_130 ::= COMMA | $empty

    seq_131 ::= COMMA elementValue

    list_132 ::= $empty | list_132 seq_131

    opt_133 ::= variableInitializerList | $empty

    opt_134 ::= COMMA | $empty

    seq_135 ::= COMMA variableInitializer

    list_136 ::= $empty | list_136 seq_135

    opt_137 ::= blockStatements | $empty

    list_138 ::= blockStatement | list_138 blockStatement

    list_139 ::= $empty | list_139 variableModifier

    list_140 ::= $empty | list_140 switchBlockStatementGroup

    list_141 ::= $empty | list_141 switchLabel

    list_142 ::= switchLabel | list_142 switchLabel

    opt_143 ::= forInit | $empty

    opt_144 ::= expression | $empty

    opt_145 ::= forUpdate | $empty

    opt_146 ::= forInit | $empty

    opt_147 ::= expression | $empty

    opt_148 ::= forUpdate | $empty

    seq_149 ::= COMMA statementExpression

    list_150 ::= $empty | list_150 seq_149

    list_151 ::= $empty | list_151 variableModifier

    list_152 ::= $empty | list_152 variableModifier

    opt_153 ::= identifier | $empty

    opt_154 ::= identifier | $empty

    opt_155 ::= expression | $empty

    opt_156 ::= catches | $empty

    list_157 ::= catchClause | list_157 catchClause

    list_158 ::= $empty | list_158 variableModifier

    grp_159 ::= PIPE classType

    list_160 ::= $empty | list_160 grp_159

    opt_161 ::= catches | $empty

    opt_162 ::= finally_ | $empty

    opt_163 ::= SEMI | $empty

    seq_164 ::= SEMI resource

    list_165 ::= $empty | list_165 seq_164

    list_166 ::= $empty | list_166 variableModifier

    grp_167 ::= primaryNoNewArray_lfno_primary | arrayCreationExpression

    list_168 ::= $empty | list_168 primaryNoNewArray_lf_primary

    seq_169 ::= LBRACKET RBRACKET

    list_170 ::= $empty | list_170 seq_169

    seq_171 ::= LBRACKET RBRACKET

    list_172 ::= $empty | list_172 seq_171

    seq_173 ::= LBRACKET RBRACKET

    list_174 ::= $empty | list_174 seq_173

    seq_175 ::= LBRACKET RBRACKET

    list_176 ::= $empty | list_176 seq_175

    seq_177 ::= LBRACKET RBRACKET

    list_178 ::= $empty | list_178 seq_177

    grp_179 ::= typeName | numericType | BOOLEAN

    seq_180 ::= LBRACKET RBRACKET

    list_181 ::= $empty | list_181 seq_180

    opt_182 ::= typeArguments | $empty

    list_183 ::= $empty | list_183 annotation

    list_184 ::= $empty | list_184 annotation

    seq_185 ::= DOT list_184 identifier

    list_186 ::= $empty | list_186 seq_185

    opt_187 ::= typeArgumentsOrDiamond | $empty

    opt_188 ::= argumentList | $empty

    opt_189 ::= classBody | $empty

    opt_190 ::= typeArguments | $empty

    list_191 ::= $empty | list_191 annotation

    opt_192 ::= typeArgumentsOrDiamond | $empty

    opt_193 ::= argumentList | $empty

    opt_194 ::= classBody | $empty

    opt_195 ::= typeArguments | $empty

    list_196 ::= $empty | list_196 annotation

    opt_197 ::= typeArgumentsOrDiamond | $empty

    opt_198 ::= argumentList | $empty

    opt_199 ::= classBody | $empty

    opt_200 ::= typeArguments | $empty

    list_201 ::= $empty | list_201 annotation

    opt_202 ::= typeArgumentsOrDiamond | $empty

    opt_203 ::= argumentList | $empty

    opt_204 ::= classBody | $empty

    opt_205 ::= typeArguments | $empty

    list_206 ::= $empty | list_206 annotation

    list_207 ::= $empty | list_207 annotation

    seq_208 ::= DOT list_207 identifier

    list_209 ::= $empty | list_209 seq_208

    opt_210 ::= typeArgumentsOrDiamond | $empty

    opt_211 ::= argumentList | $empty

    opt_212 ::= classBody | $empty

    opt_213 ::= typeArguments | $empty

    list_214 ::= $empty | list_214 annotation

    opt_215 ::= typeArgumentsOrDiamond | $empty

    opt_216 ::= argumentList | $empty

    opt_217 ::= classBody | $empty

    grp_218 ::= expressionName LBRACKET expression RBRACKET | primaryNoNewArray_lfno_arrayAccess LBRACKET expression RBRACKET

    seq_219 ::= primaryNoNewArray_lf_arrayAccess LBRACKET expression RBRACKET

    list_220 ::= $empty | list_220 seq_219

    seq_221 ::= primaryNoNewArray_lf_primary_lf_arrayAccess_lf_primary LBRACKET expression RBRACKET

    list_222 ::= $empty | list_222 seq_221

    grp_223 ::= expressionName LBRACKET expression RBRACKET | primaryNoNewArray_lfno_primary_lfno_arrayAccess_lfno_primary LBRACKET expression RBRACKET

    seq_224 ::= primaryNoNewArray_lfno_primary_lf_arrayAccess_lfno_primary LBRACKET expression RBRACKET

    list_225 ::= $empty | list_225 seq_224

    opt_226 ::= argumentList | $empty

    opt_227 ::= typeArguments | $empty

    opt_228 ::= argumentList | $empty

    opt_229 ::= typeArguments | $empty

    opt_230 ::= argumentList | $empty

    opt_231 ::= typeArguments | $empty

    opt_232 ::= argumentList | $empty

    opt_233 ::= typeArguments | $empty

    opt_234 ::= argumentList | $empty

    opt_235 ::= typeArguments | $empty

    opt_236 ::= argumentList | $empty

    opt_237 ::= typeArguments | $empty

    opt_238 ::= argumentList | $empty

    opt_239 ::= argumentList | $empty

    opt_240 ::= typeArguments | $empty

    opt_241 ::= argumentList | $empty

    opt_242 ::= typeArguments | $empty

    opt_243 ::= argumentList | $empty

    opt_244 ::= typeArguments | $empty

    opt_245 ::= argumentList | $empty

    opt_246 ::= typeArguments | $empty

    opt_247 ::= argumentList | $empty

    seq_248 ::= COMMA expression

    list_249 ::= $empty | list_249 seq_248

    opt_250 ::= typeArguments | $empty

    opt_251 ::= typeArguments | $empty

    opt_252 ::= typeArguments | $empty

    opt_253 ::= typeArguments | $empty

    opt_254 ::= typeArguments | $empty

    opt_255 ::= typeArguments | $empty

    opt_256 ::= typeArguments | $empty

    opt_257 ::= typeArguments | $empty

    opt_258 ::= typeArguments | $empty

    opt_259 ::= typeArguments | $empty

    opt_260 ::= typeArguments | $empty

    opt_261 ::= typeArguments | $empty

    opt_262 ::= dims | $empty

    opt_263 ::= dims | $empty

    list_264 ::= dimExpr | list_264 dimExpr

    list_265 ::= $empty | list_265 annotation

    opt_266 ::= formalParameterList | $empty

    seq_267 ::= COMMA identifier

    list_268 ::= $empty | list_268 seq_267

    grp_269 ::= conditionalExpression | lambdaExpression

    grp_270 ::= primary | expressionName

    grp_271 ::= postIncrementExpression_lf_postfixExpression | postDecrementExpression_lf_postfixExpression

    list_272 ::= $empty | list_272 grp_271

    list_273 ::= $empty | list_273 additionalBound

    list_274 ::= $empty | list_274 additionalBound

    opt_formals ::= $empty | formalParameterList

%End
