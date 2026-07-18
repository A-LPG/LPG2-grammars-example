-- AUTO-GENERATED from antlr/grammars-v4 java/java8 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=4
%Options fp=Java8Parser
%options package=lpg.grammars.java.java8
%options template=dtParserTemplateF.gi
%options import_terminals=Java8Lexer.gi
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
           | integerLiteral
           | floatingPointLiteral

    integerLiteral ::= HEX_LITERAL
           | OCT_LITERAL
           | BINARY_LITERAL

    floatingPointLiteral ::= FLOAT_LITERAL

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

    classType_lf_classOrInterfaceType ::= DOT list_10 IDENTIFIER opt_11

    classType_lfno_classOrInterfaceType ::= list_12 IDENTIFIER opt_13

    interfaceType ::= classType

    interfaceType_lf_classOrInterfaceType ::= classType_lf_classOrInterfaceType

    interfaceType_lfno_classOrInterfaceType ::= classType_lfno_classOrInterfaceType

    typeVariable ::= list_14 IDENTIFIER

    arrayType ::= primitiveType dims
           | classOrInterfaceType dims
           | typeVariable dims

    dims ::= list_15 LBRACKET RBRACKET list_18

    typeParameter ::= list_19 IDENTIFIER opt_20

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

    packageName ::= IDENTIFIER
           | packageName DOT IDENTIFIER

    typeName ::= IDENTIFIER
           | packageOrTypeName DOT IDENTIFIER

    packageOrTypeName ::= IDENTIFIER
           | packageOrTypeName DOT IDENTIFIER

    expressionName ::= IDENTIFIER
           | ambiguousName DOT IDENTIFIER

    methodName ::= IDENTIFIER

    ambiguousName ::= IDENTIFIER
           | ambiguousName DOT IDENTIFIER

    compilationUnit ::= opt_26 list_27 list_28

    packageDeclaration ::= list_29 PACKAGE packageName SEMI

    packageModifier ::= annotation

    importDeclaration ::= singleTypeImportDeclaration
           | typeImportOnDemandDeclaration
           | singleStaticImportDeclaration
           | staticImportOnDemandDeclaration

    singleTypeImportDeclaration ::= IMPORT typeName SEMI

    typeImportOnDemandDeclaration ::= IMPORT packageOrTypeName DOT STAR SEMI

    singleStaticImportDeclaration ::= IMPORT STATIC typeName DOT IDENTIFIER SEMI

    staticImportOnDemandDeclaration ::= IMPORT STATIC typeName DOT STAR SEMI

    typeDeclaration ::= classDeclaration
           | interfaceDeclaration
           | SEMI

    classDeclaration ::= list_30 classDeclarationTail

    classDeclarationTail ::= CLASS IDENTIFIER opt_31 opt_32 opt_33 classBody
           | ENUM IDENTIFIER opt_87 enumBody

    normalClassDeclaration ::= list_30 CLASS IDENTIFIER opt_31 opt_32 opt_33 classBody

    classModifier ::= annotation
           | PUBLIC
           | PROTECTED
           | PRIVATE
           | ABSTRACT
           | STATIC
           | FINAL
           | STRICTFP

    typeParameters ::= LT typeParameterList GT

    typeParameterList ::= typeParameter list_35

    superclass ::= EXTENDS classType

    superinterfaces ::= IMPLEMENTS interfaceTypeList

    interfaceTypeList ::= interfaceType list_37

    classBody ::= LBRACE list_38 RBRACE

    classBodyDeclaration ::= classMemberDeclaration
           | instanceInitializer
           | staticInitializer
           | constructorDeclaration

    classMemberDeclaration ::= fieldDeclaration
           | methodDeclaration
           | classDeclaration
           | interfaceDeclaration
           | SEMI

    fieldDeclaration ::= list_39 unannType variableDeclaratorList SEMI

    fieldModifier ::= annotation
           | PUBLIC
           | PROTECTED
           | PRIVATE
           | STATIC
           | FINAL
           | TRANSIENT
           | VOLATILE

    variableDeclaratorList ::= variableDeclarator list_41

    variableDeclarator ::= variableDeclaratorId opt_43

    variableDeclaratorId ::= IDENTIFIER opt_44

    variableInitializer ::= expression
           | arrayInitializer

    unannType ::= unannPrimitiveType
           | unannReferenceType

    unannPrimitiveType ::= numericType
           | BOOLEAN

    unannReferenceType ::= unannClassOrInterfaceType
           | unannTypeVariable
           | unannArrayType

    unannClassOrInterfaceType ::= grp_45 list_47

    unannClassType ::= IDENTIFIER opt_48
           | unannClassOrInterfaceType DOT list_49 IDENTIFIER opt_50

    unannClassType_lf_unannClassOrInterfaceType ::= DOT list_51 IDENTIFIER opt_52

    unannClassType_lfno_unannClassOrInterfaceType ::= IDENTIFIER opt_53

    unannInterfaceType ::= unannClassType

    unannInterfaceType_lf_unannClassOrInterfaceType ::= unannClassType_lf_unannClassOrInterfaceType

    unannInterfaceType_lfno_unannClassOrInterfaceType ::= unannClassType_lfno_unannClassOrInterfaceType

    unannTypeVariable ::= IDENTIFIER

    unannArrayType ::= unannPrimitiveType dims
           | unannClassOrInterfaceType dims
           | unannTypeVariable dims

    methodDeclaration ::= list_54 methodHeader methodBody

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

    methodHeader ::= result methodDeclarator opt_55
           | typeParameters list_56 result methodDeclarator opt_57

    result ::= unannType
           | VOID

    methodDeclarator ::= IDENTIFIER LPAREN opt_58 RPAREN opt_59

    formalParameterList ::= receiverParameter
           | formalParameters COMMA lastFormalParameter
           | lastFormalParameter

    formalParameters ::= formalParameter list_61
           | receiverParameter list_63

    formalParameter ::= list_64 unannType variableDeclaratorId

    variableModifier ::= annotation
           | FINAL

    lastFormalParameter ::= list_65 unannType list_66 ELLIPSIS variableDeclaratorId
           | formalParameter

    receiverParameter ::= list_67 unannType opt_69 THIS

    throws_ ::= THROWS exceptionTypeList

    exceptionTypeList ::= exceptionType list_71

    exceptionType ::= classType
           | typeVariable

    methodBody ::= block
           | SEMI

    instanceInitializer ::= block

    staticInitializer ::= STATIC block

    constructorDeclaration ::= list_72 constructorDeclarator opt_73 constructorBody

    constructorModifier ::= annotation
           | PUBLIC
           | PROTECTED
           | PRIVATE

    constructorDeclarator ::= opt_74 simpleTypeName LPAREN opt_75 RPAREN

    simpleTypeName ::= IDENTIFIER

    constructorBody ::= LBRACE opt_76 opt_77 RBRACE

    explicitConstructorInvocation ::= opt_78 THIS LPAREN opt_79 RPAREN SEMI
           | opt_80 SUPER LPAREN opt_81 RPAREN SEMI
           | expressionName DOT opt_82 SUPER LPAREN opt_83 RPAREN SEMI
           | primary DOT opt_84 SUPER LPAREN opt_85 RPAREN SEMI

    enumDeclaration ::= list_86 ENUM IDENTIFIER opt_87 enumBody

    enumBody ::= LBRACE opt_88 opt_89 opt_90 RBRACE

    enumConstantList ::= enumConstant list_92

    enumConstant ::= list_93 IDENTIFIER opt_96 opt_97

    enumConstantModifier ::= annotation

    enumBodyDeclarations ::= SEMI list_98

    interfaceDeclaration ::= normalInterfaceDeclaration
           | annotationTypeDeclaration

    normalInterfaceDeclaration ::= list_99 INTERFACE IDENTIFIER opt_100 opt_101 interfaceBody

    interfaceModifier ::= annotation
           | PUBLIC
           | PROTECTED
           | PRIVATE
           | ABSTRACT
           | STATIC
           | STRICTFP

    extendsInterfaces ::= EXTENDS interfaceTypeList

    interfaceBody ::= LBRACE list_102 RBRACE

    interfaceMemberDeclaration ::= constantDeclaration
           | interfaceMethodDeclaration
           | classDeclaration
           | interfaceDeclaration
           | SEMI

    constantDeclaration ::= list_103 unannType variableDeclaratorList SEMI

    constantModifier ::= annotation
           | PUBLIC
           | STATIC
           | FINAL

    interfaceMethodDeclaration ::= list_104 methodHeader methodBody

    interfaceMethodModifier ::= annotation
           | PUBLIC
           | ABSTRACT
           | DEFAULT
           | STATIC
           | STRICTFP

    annotationTypeDeclaration ::= list_105 AT INTERFACE IDENTIFIER annotationTypeBody

    annotationTypeBody ::= LBRACE list_106 RBRACE

    annotationTypeMemberDeclaration ::= annotationTypeElementDeclaration
           | constantDeclaration
           | classDeclaration
           | interfaceDeclaration
           | SEMI

    annotationTypeElementDeclaration ::= list_107 unannType IDENTIFIER LPAREN RPAREN opt_108 opt_109 SEMI

    annotationTypeElementModifier ::= annotation
           | PUBLIC
           | ABSTRACT

    defaultValue ::= DEFAULT elementValue

    annotation ::= normalAnnotation
           | markerAnnotation
           | singleElementAnnotation

    normalAnnotation ::= AT typeName LPAREN opt_110 RPAREN

    elementValuePairList ::= elementValuePair list_112

    elementValuePair ::= IDENTIFIER EQ elementValue

    elementValue ::= conditionalExpression
           | elementValueArrayInitializer
           | annotation

    elementValueArrayInitializer ::= LBRACE opt_113 opt_114 RBRACE

    elementValueList ::= elementValue list_116

    markerAnnotation ::= AT typeName

    singleElementAnnotation ::= AT typeName LPAREN elementValue RPAREN

    arrayInitializer ::= LBRACE opt_117 opt_118 RBRACE

    variableInitializerList ::= variableInitializer list_120

    block ::= LBRACE opt_121 RBRACE

    blockStatements ::= list_122

    blockStatement ::= localVariableDeclarationStatement
           | classDeclaration
           | statement

    localVariableDeclarationStatement ::= localVariableDeclaration SEMI

    localVariableDeclaration ::= list_123 unannType variableDeclaratorList

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

    labeledStatement ::= IDENTIFIER COLON statement

    labeledStatementNoShortIf ::= IDENTIFIER COLON statementNoShortIf

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

    switchBlock ::= LBRACE list_124 list_125 RBRACE

    switchBlockStatementGroup ::= switchLabels blockStatements

    switchLabels ::= switchLabel list_126

    switchLabel ::= CASE constantExpression COLON
           | CASE enumConstantName COLON
           | DEFAULT COLON

    enumConstantName ::= IDENTIFIER

    whileStatement ::= WHILE LPAREN expression RPAREN statement

    whileStatementNoShortIf ::= WHILE LPAREN expression RPAREN statementNoShortIf

    doStatement ::= DO statement WHILE LPAREN expression RPAREN SEMI

    forStatement ::= basicForStatement
           | enhancedForStatement

    forStatementNoShortIf ::= basicForStatementNoShortIf
           | enhancedForStatementNoShortIf

    basicForStatement ::= FOR LPAREN opt_127 SEMI opt_128 SEMI opt_129 RPAREN statement

    basicForStatementNoShortIf ::= FOR LPAREN opt_130 SEMI opt_131 SEMI opt_132 RPAREN statementNoShortIf

    forInit ::= statementExpressionList
           | localVariableDeclaration

    forUpdate ::= statementExpressionList

    statementExpressionList ::= statementExpression list_134

    enhancedForStatement ::= FOR LPAREN list_135 unannType variableDeclaratorId COLON expression RPAREN statement

    enhancedForStatementNoShortIf ::= FOR LPAREN list_136 unannType variableDeclaratorId COLON expression RPAREN statementNoShortIf

    breakStatement ::= BREAK opt_137 SEMI

    continueStatement ::= CONTINUE opt_138 SEMI

    returnStatement ::= RETURN opt_139 SEMI

    throwStatement ::= THROW expression SEMI

    synchronizedStatement ::= SYNCHRONIZED LPAREN expression RPAREN block

    tryStatement ::= TRY block catches
           | TRY block opt_140 finally_
           | tryWithResourcesStatement

    catches ::= catchClause list_141

    catchClause ::= CATCH LPAREN catchFormalParameter RPAREN block

    catchFormalParameter ::= list_142 catchType variableDeclaratorId

    catchType ::= unannClassType list_144

    finally_ ::= FINALLY block

    tryWithResourcesStatement ::= TRY resourceSpecification block opt_145 opt_146

    resourceSpecification ::= LPAREN resourceList opt_147 RPAREN

    resourceList ::= resource list_149

    resource ::= list_150 unannType variableDeclaratorId EQ expression

    primary ::= grp_151 list_152

    primaryNoNewArray ::= literal
           | typeName list_154 DOT CLASS
           | VOID DOT CLASS
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
           | typeName list_156 DOT CLASS
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
           | typeName list_158 DOT CLASS
           | unannPrimitiveType list_160 DOT CLASS
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
           | typeName list_162 DOT CLASS
           | unannPrimitiveType list_164 DOT CLASS
           | VOID DOT CLASS
           | THIS
           | typeName DOT THIS
           | LPAREN expression RPAREN
           | classInstanceCreationExpression_lfno_primary
           | fieldAccess_lfno_primary
           | methodInvocation_lfno_primary
           | methodReference_lfno_primary

    classInstanceCreationExpression ::= NEW opt_165 list_166 IDENTIFIER list_169 opt_170 LPAREN opt_171 RPAREN opt_172
           | expressionName DOT NEW opt_173 list_174 IDENTIFIER opt_175 LPAREN opt_176 RPAREN opt_177
           | primary DOT NEW opt_178 list_179 IDENTIFIER opt_180 LPAREN opt_181 RPAREN opt_182

    classInstanceCreationExpression_lf_primary ::= DOT NEW opt_183 list_184 IDENTIFIER opt_185 LPAREN opt_186 RPAREN opt_187

    classInstanceCreationExpression_lfno_primary ::= NEW opt_188 list_189 IDENTIFIER list_192 opt_193 LPAREN opt_194 RPAREN opt_195
           | expressionName DOT NEW opt_196 list_197 IDENTIFIER opt_198 LPAREN opt_199 RPAREN opt_200

    typeArgumentsOrDiamond ::= typeArguments
           | LT GT

    fieldAccess ::= primary DOT IDENTIFIER
           | SUPER DOT IDENTIFIER
           | typeName DOT SUPER DOT IDENTIFIER

    fieldAccess_lf_primary ::= DOT IDENTIFIER

    fieldAccess_lfno_primary ::= SUPER DOT IDENTIFIER
           | typeName DOT SUPER DOT IDENTIFIER

    arrayAccess ::= grp_201 list_203

    arrayAccess_lf_primary ::= primaryNoNewArray_lf_primary_lfno_arrayAccess_lf_primary LBRACKET expression RBRACKET list_205

    arrayAccess_lfno_primary ::= grp_206 list_208

    methodInvocation ::= methodName LPAREN opt_209 RPAREN
           | typeName DOT opt_210 IDENTIFIER LPAREN opt_211 RPAREN
           | expressionName DOT opt_212 IDENTIFIER LPAREN opt_213 RPAREN
           | primary DOT opt_214 IDENTIFIER LPAREN opt_215 RPAREN
           | SUPER DOT opt_216 IDENTIFIER LPAREN opt_217 RPAREN
           | typeName DOT SUPER DOT opt_218 IDENTIFIER LPAREN opt_219 RPAREN

    methodInvocation_lf_primary ::= DOT opt_220 IDENTIFIER LPAREN opt_221 RPAREN

    methodInvocation_lfno_primary ::= methodName LPAREN opt_222 RPAREN
           | typeName DOT opt_223 IDENTIFIER LPAREN opt_224 RPAREN
           | expressionName DOT opt_225 IDENTIFIER LPAREN opt_226 RPAREN
           | SUPER DOT opt_227 IDENTIFIER LPAREN opt_228 RPAREN
           | typeName DOT SUPER DOT opt_229 IDENTIFIER LPAREN opt_230 RPAREN

    argumentList ::= expression list_232

    methodReference ::= expressionName COLONCOLON opt_233 IDENTIFIER
           | referenceType COLONCOLON opt_234 IDENTIFIER
           | primary COLONCOLON opt_235 IDENTIFIER
           | SUPER COLONCOLON opt_236 IDENTIFIER
           | typeName DOT SUPER COLONCOLON opt_237 IDENTIFIER
           | classType COLONCOLON opt_238 NEW
           | arrayType COLONCOLON NEW

    methodReference_lf_primary ::= COLONCOLON opt_239 IDENTIFIER

    methodReference_lfno_primary ::= expressionName COLONCOLON opt_240 IDENTIFIER
           | referenceType COLONCOLON opt_241 IDENTIFIER
           | SUPER COLONCOLON opt_242 IDENTIFIER
           | typeName DOT SUPER COLONCOLON opt_243 IDENTIFIER
           | classType COLONCOLON opt_244 NEW
           | arrayType COLONCOLON NEW

    arrayCreationExpression ::= NEW primitiveType dimExprs opt_245
           | NEW classOrInterfaceType dimExprs opt_246
           | NEW primitiveType dims arrayInitializer
           | NEW classOrInterfaceType dims arrayInitializer

    dimExprs ::= dimExpr list_247

    dimExpr ::= list_248 LBRACKET expression RBRACKET

    constantExpression ::= expression

    expression ::= lambdaExpression
           | assignmentExpression

    lambdaExpression ::= lambdaParameters ARROW lambdaBody

    lambdaParameters ::= IDENTIFIER
           | LPAREN opt_249 RPAREN
           | LPAREN inferredFormalParameterList RPAREN

    inferredFormalParameterList ::= IDENTIFIER list_251

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
           | conditionalOrExpression QUESTION expression COLON conditionalExpression

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

    postfixExpression ::= grp_252 list_254

    postIncrementExpression ::= postfixExpression PLUSPLUS

    postIncrementExpression_lf_postfixExpression ::= PLUSPLUS

    postDecrementExpression ::= postfixExpression MINUSMINUS

    postDecrementExpression_lf_postfixExpression ::= MINUSMINUS

    castExpression ::= LPAREN primitiveType RPAREN unaryExpression
           | LPAREN referenceType list_255 RPAREN unaryExpressionNotPlusMinus
           | LPAREN referenceType list_256 RPAREN lambdaExpression

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

    opt_26 ::= packageDeclaration | $empty

    list_27 ::= $empty | list_27 importDeclaration

    list_28 ::= $empty | list_28 typeDeclaration

    list_29 ::= $empty | list_29 packageModifier

    list_30 ::= $empty | list_30 classModifier

    opt_31 ::= typeParameters | $empty

    opt_32 ::= superclass | $empty

    opt_33 ::= superinterfaces | $empty

    seq_34 ::= COMMA typeParameter

    list_35 ::= $empty | list_35 seq_34

    seq_36 ::= COMMA interfaceType

    list_37 ::= $empty | list_37 seq_36

    list_38 ::= $empty | list_38 classBodyDeclaration

    list_39 ::= $empty | list_39 fieldModifier

    seq_40 ::= COMMA variableDeclarator

    list_41 ::= $empty | list_41 seq_40

    seq_42 ::= EQ variableInitializer

    opt_43 ::= seq_42 | $empty

    opt_44 ::= dims | $empty

    grp_45 ::= unannClassType_lfno_unannClassOrInterfaceType | unannInterfaceType_lfno_unannClassOrInterfaceType

    grp_46 ::= unannClassType_lf_unannClassOrInterfaceType | unannInterfaceType_lf_unannClassOrInterfaceType

    list_47 ::= $empty | list_47 grp_46

    opt_48 ::= typeArguments | $empty

    list_49 ::= $empty | list_49 annotation

    opt_50 ::= typeArguments | $empty

    list_51 ::= $empty | list_51 annotation

    opt_52 ::= typeArguments | $empty

    opt_53 ::= typeArguments | $empty

    list_54 ::= $empty | list_54 methodModifier

    opt_55 ::= throws_ | $empty

    list_56 ::= $empty | list_56 annotation

    opt_57 ::= throws_ | $empty

    opt_58 ::= formalParameterList | $empty

    opt_59 ::= dims | $empty

    seq_60 ::= COMMA formalParameter

    list_61 ::= $empty | list_61 seq_60

    seq_62 ::= COMMA formalParameter

    list_63 ::= $empty | list_63 seq_62

    list_64 ::= $empty | list_64 variableModifier

    list_65 ::= $empty | list_65 variableModifier

    list_66 ::= $empty | list_66 annotation

    list_67 ::= $empty | list_67 annotation

    seq_68 ::= IDENTIFIER DOT

    opt_69 ::= seq_68 | $empty

    seq_70 ::= COMMA exceptionType

    list_71 ::= $empty | list_71 seq_70

    list_72 ::= $empty | list_72 constructorModifier

    opt_73 ::= throws_ | $empty

    opt_74 ::= typeParameters | $empty

    opt_75 ::= formalParameterList | $empty

    opt_76 ::= explicitConstructorInvocation | $empty

    opt_77 ::= blockStatements | $empty

    opt_78 ::= typeArguments | $empty

    opt_79 ::= argumentList | $empty

    opt_80 ::= typeArguments | $empty

    opt_81 ::= argumentList | $empty

    opt_82 ::= typeArguments | $empty

    opt_83 ::= argumentList | $empty

    opt_84 ::= typeArguments | $empty

    opt_85 ::= argumentList | $empty

    list_86 ::= $empty | list_86 classModifier

    opt_87 ::= superinterfaces | $empty

    opt_88 ::= enumConstantList | $empty

    opt_89 ::= COMMA | $empty

    opt_90 ::= enumBodyDeclarations | $empty

    seq_91 ::= COMMA enumConstant

    list_92 ::= $empty | list_92 seq_91

    list_93 ::= $empty | list_93 enumConstantModifier

    opt_94 ::= argumentList | $empty

    seq_95 ::= LPAREN opt_94 RPAREN

    opt_96 ::= seq_95 | $empty

    opt_97 ::= classBody | $empty

    list_98 ::= $empty | list_98 classBodyDeclaration

    list_99 ::= $empty | list_99 interfaceModifier

    opt_100 ::= typeParameters | $empty

    opt_101 ::= extendsInterfaces | $empty

    list_102 ::= $empty | list_102 interfaceMemberDeclaration

    list_103 ::= $empty | list_103 constantModifier

    list_104 ::= $empty | list_104 interfaceMethodModifier

    list_105 ::= $empty | list_105 interfaceModifier

    list_106 ::= $empty | list_106 annotationTypeMemberDeclaration

    list_107 ::= $empty | list_107 annotationTypeElementModifier

    opt_108 ::= dims | $empty

    opt_109 ::= defaultValue | $empty

    opt_110 ::= elementValuePairList | $empty

    seq_111 ::= COMMA elementValuePair

    list_112 ::= $empty | list_112 seq_111

    opt_113 ::= elementValueList | $empty

    opt_114 ::= COMMA | $empty

    seq_115 ::= COMMA elementValue

    list_116 ::= $empty | list_116 seq_115

    opt_117 ::= variableInitializerList | $empty

    opt_118 ::= COMMA | $empty

    seq_119 ::= COMMA variableInitializer

    list_120 ::= $empty | list_120 seq_119

    opt_121 ::= blockStatements | $empty

    list_122 ::= blockStatement | list_122 blockStatement

    list_123 ::= $empty | list_123 variableModifier

    list_124 ::= $empty | list_124 switchBlockStatementGroup

    list_125 ::= $empty | list_125 switchLabel

    list_126 ::= $empty | list_126 switchLabel

    opt_127 ::= forInit | $empty

    opt_128 ::= expression | $empty

    opt_129 ::= forUpdate | $empty

    opt_130 ::= forInit | $empty

    opt_131 ::= expression | $empty

    opt_132 ::= forUpdate | $empty

    seq_133 ::= COMMA statementExpression

    list_134 ::= $empty | list_134 seq_133

    list_135 ::= $empty | list_135 variableModifier

    list_136 ::= $empty | list_136 variableModifier

    opt_137 ::= IDENTIFIER | $empty

    opt_138 ::= IDENTIFIER | $empty

    opt_139 ::= expression | $empty

    opt_140 ::= catches | $empty

    list_141 ::= $empty | list_141 catchClause

    list_142 ::= $empty | list_142 variableModifier

    grp_143 ::= PIPE classType

    list_144 ::= $empty | list_144 grp_143

    opt_145 ::= catches | $empty

    opt_146 ::= finally_ | $empty

    opt_147 ::= SEMI | $empty

    seq_148 ::= SEMI resource

    list_149 ::= $empty | list_149 seq_148

    list_150 ::= $empty | list_150 variableModifier

    grp_151 ::= primaryNoNewArray_lfno_primary | arrayCreationExpression

    list_152 ::= $empty | list_152 primaryNoNewArray_lf_primary

    seq_153 ::= LBRACKET RBRACKET

    list_154 ::= $empty | list_154 seq_153

    seq_155 ::= LBRACKET RBRACKET

    list_156 ::= $empty | list_156 seq_155

    seq_157 ::= LBRACKET RBRACKET

    list_158 ::= $empty | list_158 seq_157

    seq_159 ::= LBRACKET RBRACKET

    list_160 ::= $empty | list_160 seq_159

    seq_161 ::= LBRACKET RBRACKET

    list_162 ::= $empty | list_162 seq_161

    seq_163 ::= LBRACKET RBRACKET

    list_164 ::= $empty | list_164 seq_163

    opt_165 ::= typeArguments | $empty

    list_166 ::= $empty | list_166 annotation

    list_167 ::= $empty | list_167 annotation

    seq_168 ::= DOT list_167 IDENTIFIER

    list_169 ::= $empty | list_169 seq_168

    opt_170 ::= typeArgumentsOrDiamond | $empty

    opt_171 ::= argumentList | $empty

    opt_172 ::= classBody | $empty

    opt_173 ::= typeArguments | $empty

    list_174 ::= $empty | list_174 annotation

    opt_175 ::= typeArgumentsOrDiamond | $empty

    opt_176 ::= argumentList | $empty

    opt_177 ::= classBody | $empty

    opt_178 ::= typeArguments | $empty

    list_179 ::= $empty | list_179 annotation

    opt_180 ::= typeArgumentsOrDiamond | $empty

    opt_181 ::= argumentList | $empty

    opt_182 ::= classBody | $empty

    opt_183 ::= typeArguments | $empty

    list_184 ::= $empty | list_184 annotation

    opt_185 ::= typeArgumentsOrDiamond | $empty

    opt_186 ::= argumentList | $empty

    opt_187 ::= classBody | $empty

    opt_188 ::= typeArguments | $empty

    list_189 ::= $empty | list_189 annotation

    list_190 ::= $empty | list_190 annotation

    seq_191 ::= DOT list_190 IDENTIFIER

    list_192 ::= $empty | list_192 seq_191

    opt_193 ::= typeArgumentsOrDiamond | $empty

    opt_194 ::= argumentList | $empty

    opt_195 ::= classBody | $empty

    opt_196 ::= typeArguments | $empty

    list_197 ::= $empty | list_197 annotation

    opt_198 ::= typeArgumentsOrDiamond | $empty

    opt_199 ::= argumentList | $empty

    opt_200 ::= classBody | $empty

    grp_201 ::= expressionName LBRACKET expression RBRACKET | primaryNoNewArray_lfno_arrayAccess LBRACKET expression RBRACKET

    seq_202 ::= primaryNoNewArray_lf_arrayAccess LBRACKET expression RBRACKET

    list_203 ::= $empty | list_203 seq_202

    seq_204 ::= primaryNoNewArray_lf_primary_lf_arrayAccess_lf_primary LBRACKET expression RBRACKET

    list_205 ::= $empty | list_205 seq_204

    grp_206 ::= expressionName LBRACKET expression RBRACKET | primaryNoNewArray_lfno_primary_lfno_arrayAccess_lfno_primary LBRACKET expression RBRACKET

    seq_207 ::= primaryNoNewArray_lfno_primary_lf_arrayAccess_lfno_primary LBRACKET expression RBRACKET

    list_208 ::= $empty | list_208 seq_207

    opt_209 ::= argumentList | $empty

    opt_210 ::= typeArguments | $empty

    opt_211 ::= argumentList | $empty

    opt_212 ::= typeArguments | $empty

    opt_213 ::= argumentList | $empty

    opt_214 ::= typeArguments | $empty

    opt_215 ::= argumentList | $empty

    opt_216 ::= typeArguments | $empty

    opt_217 ::= argumentList | $empty

    opt_218 ::= typeArguments | $empty

    opt_219 ::= argumentList | $empty

    opt_220 ::= typeArguments | $empty

    opt_221 ::= argumentList | $empty

    opt_222 ::= argumentList | $empty

    opt_223 ::= typeArguments | $empty

    opt_224 ::= argumentList | $empty

    opt_225 ::= typeArguments | $empty

    opt_226 ::= argumentList | $empty

    opt_227 ::= typeArguments | $empty

    opt_228 ::= argumentList | $empty

    opt_229 ::= typeArguments | $empty

    opt_230 ::= argumentList | $empty

    seq_231 ::= COMMA expression

    list_232 ::= $empty | list_232 seq_231

    opt_233 ::= typeArguments | $empty

    opt_234 ::= typeArguments | $empty

    opt_235 ::= typeArguments | $empty

    opt_236 ::= typeArguments | $empty

    opt_237 ::= typeArguments | $empty

    opt_238 ::= typeArguments | $empty

    opt_239 ::= typeArguments | $empty

    opt_240 ::= typeArguments | $empty

    opt_241 ::= typeArguments | $empty

    opt_242 ::= typeArguments | $empty

    opt_243 ::= typeArguments | $empty

    opt_244 ::= typeArguments | $empty

    opt_245 ::= dims | $empty

    opt_246 ::= dims | $empty

    list_247 ::= $empty | list_247 dimExpr

    list_248 ::= $empty | list_248 annotation

    opt_249 ::= formalParameterList | $empty

    seq_250 ::= COMMA IDENTIFIER

    list_251 ::= $empty | list_251 seq_250

    grp_252 ::= primary | expressionName

    grp_253 ::= postIncrementExpression_lf_postfixExpression | postDecrementExpression_lf_postfixExpression

    list_254 ::= $empty | list_254 grp_253

    list_255 ::= $empty | list_255 additionalBound

    list_256 ::= $empty | list_256 additionalBound

    opt_formals ::= $empty | formalParameterList

%End
