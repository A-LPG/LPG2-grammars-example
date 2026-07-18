-- AUTO-GENERATED from antlr/grammars-v4 dart2 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=Dart2Parser
%options package=lpg.grammars.dart2
%options template=dtParserTemplateF.gi
%options import_terminals=Dart2Lexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    additiveExpression
%End

%Rules
    additiveExpression ::= multiplicativeExpression list_2
           | SUPER_ list_4

    additiveOperator ::= PL
           | MINUS

    argumentList ::= namedArgument list_6
           | expressionList list_8

    argumentPart ::= opt_9 arguments

    arguments ::= OP opt_12 CP

    asOperator ::= AS_

    assertion ::= ASSERT_ OP expr opt_14 opt_15 CP

    assertStatement ::= assertion SC

    assignableExpression ::= primary assignableSelectorPart
           | SUPER_ unconditionalAssignableSelector
           | identifier

    assignableSelector ::= unconditionalAssignableSelector
           | QUD identifier
           | QU OB expr CB

    assignableSelectorPart ::= list_16 assignableSelector

    assignmentOperator ::= EQ
           | compoundAssignmentOperator

    awaitExpression ::= AWAIT_ unaryExpression

    binaryOperator ::= multiplicativeOperator
           | additiveOperator
           | shiftOperator
           | relationalOperator
           | EE
           | bitwiseOperator

    bitwiseAndExpression ::= shiftExpression list_18
           | SUPER_ list_20

    bitwiseOperator ::= A
           | CIR
           | P

    bitwiseOrExpression ::= bitwiseXorExpression list_22
           | SUPER_ list_24

    bitwiseXorExpression ::= bitwiseAndExpression list_26
           | SUPER_ list_28

    block ::= OBC statements CBC

    booleanLiteral ::= TRUE_
           | FALSE_

    breakStatement ::= BREAK_ opt_29 SC

    cascade ::= cascade DD cascadeSection
           | conditionalExpression grp_30 cascadeSection

    cascadeAssignment ::= assignmentOperator expressionWithoutCascade

    cascadeSection ::= cascadeSelector cascadeSectionTail

    cascadeSectionTail ::= cascadeAssignment
           | list_31 opt_33

    cascadeSelector ::= OB expr CB
           | identifier

    catchPart ::= CATCH_ OP identifier opt_35 CP

    classDeclaration ::= opt_36 CLASS_ typeIdentifier opt_37 opt_38 opt_39 OBC list_41 CBC
           | opt_42 CLASS_ mixinApplicationClass

    classMemberDeclaration ::= declaration SC
           | methodSignature functionBody

    combinator ::= SHOW_ identifierList
           | HIDE_ identifierList

    compilationUnit ::= grp_43

    compoundAssignmentOperator ::= STE
           | SE
           | SQSE
           | PE
           | PLE
           | ME
           | LTLTE
           | GT GT GT EQ
           | GT GT EQ
           | AE
           | CIRE
           | POE
           | QUQUEQ

    conditionalExpression ::= ifNullExpression opt_45

    configurableUri ::= uri list_46

    configurationUri ::= IF_ OP uriTest CP uri

    constantConstructorSignature ::= CONST_ constructorName formalParameterList

    constObjectExpression ::= CONST_ constructorDesignation arguments

    constructorDesignation ::= typeIdentifier
           | qualifiedName
           | typeName typeArguments opt_48

    constructorInvocation ::= typeName typeArguments D identifier arguments

    constructorName ::= typeIdentifier opt_50

    constructorSignature ::= constructorName formalParameterList

    continueStatement ::= CONTINUE_ opt_51 SC

    declaration ::= opt_52 grp_53

    declaredIdentifier ::= opt_77 finalConstVarOrType identifier

    defaultCase ::= list_78 DEFAULT_ CO statements

    defaultFormalParameter ::= normalFormalParameter opt_80

    defaultNamedParameter ::= metadata opt_81 normalFormalParameterNoMetadata opt_84

    doStatement ::= DO_ statement WHILE_ OP expr CP SC

    dottedIdentifierList ::= identifier list_86

    element ::= expressionElement
           | mapElement
           | spreadElement
           | ifElement
           | forElement

    elements ::= element list_88 opt_89

    enumEntry ::= metadata identifier

    enumType ::= ENUM_ identifier OBC enumEntry list_91 opt_92 CBC

    equalityExpression ::= relationalExpression opt_94
           | SUPER_ equalityOperator relationalExpression

    equalityOperator ::= EE
           | NE

    expr ::= assignableExpression assignmentOperator expr
           | conditionalExpression
           | cascade
           | throwExpression

    expressionElement ::= expr

    expressionList ::= expr list_96

    expressionStatement ::= opt_97 SC

    expressionWithoutCascade ::= assignableExpression assignmentOperator expressionWithoutCascade
           | conditionalExpression
           | throwExpressionWithoutCascade

    extensionDeclaration ::= EXTENSION_ opt_98 opt_99 ON_ type OBC list_101 CBC

    factoryConstructorSignature ::= opt_102 FACTORY_ constructorName formalParameterList

    fieldFormalParameter ::= opt_103 THIS_ D identifier opt_106

    fieldInitializer ::= opt_108 identifier EQ initializerExpression

    finalConstVarOrType ::= opt_109 FINAL_ opt_110
           | CONST_ opt_111
           | opt_112 varOrType

    finallyPart ::= FINALLY_ block

    forElement ::= opt_113 FOR_ OP forLoopParts CP element

    forInitializerStatement ::= localVariableDeclaration
           | opt_114 SC

    forLoopParts ::= forInitializerStatement opt_115 SC opt_116
           | metadata declaredIdentifier IN_ expr
           | identifier IN_ expr

    formalParameterList ::= OP CP
           | OP normalFormalParameters opt_117 CP
           | OP normalFormalParameters C optionalOrNamedFormalParameters CP
           | OP optionalOrNamedFormalParameters CP

    formalParameterPart ::= opt_118 formalParameterList

    forStatement ::= opt_119 FOR_ OP forLoopParts CP statement

    functionBody ::= NATIVE_ opt_120 SC
           | opt_121 EG expr SC
           | opt_124 block

    functionExpression ::= formalParameterPart functionExpressionBody

    functionExpressionBody ::= opt_125 EG expr
           | opt_128 block

    functionFormalParameter ::= opt_129 opt_130 identifier formalParameterPart opt_131

    functionPrefix ::= opt_132 identifier

    functionSignature ::= opt_133 identifier formalParameterPart

    functionType ::= functionTypeTails
           | typeNotFunction functionTypeTails

    functionTypeAlias ::= functionPrefix formalParameterPart SC

    functionTypeTail ::= FUNCTION_ opt_134 parameterTypeList

    functionTypeTails ::= functionTypeTail opt_135 functionTypeTails
           | functionTypeTail

    getterSignature ::= opt_136 GET_ identifier

    identifier ::= IDENTIFIER
           | ABSTRACT_
           | AS_
           | COVARIANT_
           | DEFERRED_
           | DYNAMIC_
           | EXPORT_
           | EXTERNAL_
           | EXTENSION_
           | FACTORY_
           | FUNCTION_
           | GET_
           | IMPLEMENTS_
           | IMPORT_
           | INTERFACE_
           | LATE_
           | LIBRARY_
           | MIXIN_
           | OPERATOR_
           | PART_
           | REQUIRED_
           | SET_
           | STATIC_
           | TYPEDEF_
           | ASYNC_
           | HIDE_
           | OF_
           | ON_
           | SHOW_
           | SYNC_
           | AWAIT_
           | YIELD_
           | NATIVE_

    identifierList ::= identifier list_138

    ifElement ::= IF_ OP expr CP element opt_140

    ifNullExpression ::= logicalOrExpression list_142

    ifStatement ::= IF_ OP expr CP statement opt_144

    importOrExport ::= libraryImport
           | libraryExport

    importSpecification ::= IMPORT_ configurableUri opt_147 list_148 SC

    incrementOperator ::= PLPL
           | MM

    initializedIdentifier ::= identifier opt_150

    initializedIdentifierList ::= initializedIdentifier list_152

    initializedVariableDeclaration ::= declaredIdentifier opt_154 list_156

    initializerExpression ::= conditionalExpression
           | cascade

    initializerListEntry ::= SUPER_ arguments
           | SUPER_ D identifier arguments
           | fieldInitializer
           | assertion

    initializers ::= CO initializerListEntry list_158

    interfaces ::= IMPLEMENTS_ typeNotVoidList

    isOperator ::= IS_ opt_159

    label ::= identifier CO

    letExpression ::= LET_ staticFinalDeclarationList IN_ expr

    libraryDeclaration ::= opt_160 list_161 list_162 list_164

    libraryExport ::= metadata EXPORT_ configurableUri list_165 SC

    libraryImport ::= metadata importSpecification

    libraryName ::= metadata LIBRARY_ dottedIdentifierList SC

    listLiteral ::= opt_166 opt_167 OB opt_168 CB

    literal ::= nullLiteral
           | booleanLiteral
           | numericLiteral
           | stringLiteral
           | symbolLiteral
           | listLiteral
           | setOrMapLiteral

    localFunctionDeclaration ::= metadata functionSignature functionBody

    localVariableDeclaration ::= metadata initializedVariableDeclaration SC

    logicalAndExpression ::= equalityExpression list_170

    logicalOrExpression ::= logicalAndExpression list_172

    mapElement ::= expr CO expr

    metadata ::= list_174

    metadatum ::= identifier
           | qualifiedName
           | constructorDesignation arguments

    methodSignature ::= constructorSignature opt_175
           | factoryConstructorSignature
           | opt_176 functionSignature
           | opt_177 getterSignature
           | opt_178 setterSignature
           | operatorSignature

    minusOperator ::= MINUS

    mixinApplication ::= typeNotVoid mixins opt_179

    mixinApplicationClass ::= identifier opt_180 EQ mixinApplication SC

    mixinDeclaration ::= MIXIN_ typeIdentifier opt_181 opt_183 opt_184 OBC list_186 CBC

    mixins ::= WITH_ typeNotVoidList

    multilineString ::= MultiLineString

    multiplicativeExpression ::= unaryExpression list_188
           | SUPER_ list_190

    multiplicativeOperator ::= ST
           | SL
           | PC
           | SQS

    namedArgument ::= label expr

    namedFormalParameters ::= OBC defaultNamedParameter list_192 opt_193 CBC

    namedParameterType ::= metadata opt_194 typedIdentifier

    namedParameterTypes ::= OBC namedParameterType list_196 opt_197 CBC

    negationOperator ::= NOT

    newExpression ::= NEW_ constructorDesignation arguments

    nonLabelledStatement ::= block
           | localVariableDeclaration
           | forStatement
           | whileStatement
           | doStatement
           | switchStatement
           | ifStatement
           | rethrowStatement
           | tryStatement
           | breakStatement
           | continueStatement
           | returnStatement
           | yieldStatement
           | yieldEachStatement
           | expressionStatement
           | assertStatement
           | localFunctionDeclaration

    normalFormalParameter ::= metadata normalFormalParameterNoMetadata

    normalFormalParameterNoMetadata ::= functionFormalParameter
           | fieldFormalParameter
           | simpleFormalParameter

    normalFormalParameters ::= normalFormalParameter list_199

    normalParameterType ::= metadata typedIdentifier
           | metadata type

    normalParameterTypes ::= normalParameterType list_201

    nullLiteral ::= NULL_

    numericLiteral ::= NUMBER
           | HEX_NUMBER

    onPart ::= catchPart block
           | ON_ typeNotVoid opt_202 block

    operator ::= SQUIG
           | binaryOperator
           | OB CB
           | OB CB EQ

    operatorSignature ::= opt_203 OPERATOR_ operator formalParameterList

    optionalOrNamedFormalParameters ::= optionalPositionalFormalParameters
           | namedFormalParameters

    optionalParameterTypes ::= optionalPositionalParameterTypes
           | namedParameterTypes

    optionalPositionalFormalParameters ::= OB defaultFormalParameter list_205 opt_206 CB

    optionalPositionalParameterTypes ::= OB normalParameterTypes opt_207 CB

    parameterTypeList ::= OP CP
           | OP normalParameterTypes C optionalParameterTypes CP
           | OP normalParameterTypes opt_208 CP
           | OP optionalParameterTypes CP

    partDeclaration ::= partHeader list_210

    partDirective ::= metadata PART_ uri SC

    partHeader ::= metadata PART_ OF_ grp_211 SC

    postfixExpression ::= assignableExpression postfixOperator
           | primary list_212

    postfixOperator ::= incrementOperator

    prefixOperator ::= minusOperator
           | negationOperator
           | tildeOperator

    primary ::= thisExpression
           | SUPER_ unconditionalAssignableSelector
           | SUPER_ argumentPart
           | functionExpression
           | literal
           | identifier
           | newExpression
           | constObjectExpression
           | constructorInvocation
           | OP expr CP

    qualifiedName ::= typeIdentifier D identifier
           | typeIdentifier D typeIdentifier D identifier

    redirectingFactoryConstructorSignature ::= opt_213 FACTORY_ constructorName formalParameterList EQ constructorDesignation

    redirection ::= CO THIS_ opt_215 arguments

    relationalExpression ::= bitwiseOrExpression opt_217
           | SUPER_ relationalOperator bitwiseOrExpression

    relationalOperator ::= GT EQ
           | GT
           | LTE
           | LT

    reserved_word ::= ASSERT_
           | BREAK_
           | CASE_
           | CATCH_
           | CLASS_
           | CONST_
           | CONTINUE_
           | DEFAULT_
           | DO_
           | ELSE_
           | ENUM_
           | EXTENDS_
           | FALSE_
           | FINAL_
           | FINALLY_
           | FOR_
           | IF_
           | IN_
           | IS_
           | NEW_
           | NULL_
           | RETHROW_
           | RETURN_
           | SUPER_
           | SWITCH_
           | THIS_
           | THROW_
           | TRUE_
           | TRY_
           | VAR_
           | VOID_
           | WHILE_
           | WITH_

    rethrowStatement ::= RETHROW_ SC

    returnStatement ::= RETURN_ opt_218 SC

    selector ::= NOT
           | assignableSelector
           | argumentPart

    setOrMapLiteral ::= opt_219 opt_220 OBC opt_221 CBC

    setterSignature ::= opt_222 SET_ identifier formalParameterList

    shiftExpression ::= additiveExpression list_224
           | SUPER_ list_226

    shiftOperator ::= LTLT
           | GT GT GT
           | GT GT

    simpleFormalParameter ::= declaredIdentifier
           | opt_227 identifier

    singleLineString ::= SingleLineString

    spreadElement ::= grp_228 expr

    statement ::= list_229 nonLabelledStatement

    statements ::= list_230

    staticFinalDeclaration ::= identifier EQ expr

    staticFinalDeclarationList ::= staticFinalDeclaration list_232

    stringLiteral ::= list_234

    superclass ::= EXTENDS_ typeNotVoid opt_235
           | mixins

    switchCase ::= list_236 CASE_ expr CO statements

    switchStatement ::= SWITCH_ OP expr CP OBC list_237 opt_238 CBC

    symbolLiteral ::= PO grp_239

    thisExpression ::= THIS_

    throwExpression ::= THROW_ expr

    throwExpressionWithoutCascade ::= THROW_ expressionWithoutCascade

    tildeOperator ::= SQUIG

    topLevelDeclaration ::= classDeclaration
           | mixinDeclaration
           | extensionDeclaration
           | enumType
           | typeAlias
           | EXTERNAL_ functionSignature SC
           | EXTERNAL_ getterSignature SC
           | EXTERNAL_ setterSignature SC
           | functionSignature functionBody
           | getterSignature functionBody
           | setterSignature functionBody
           | grp_242 opt_243 staticFinalDeclarationList SC
           | LATE_ FINAL_ opt_244 initializedIdentifierList SC
           | opt_245 varOrType initializedIdentifierList SC

    tryStatement ::= TRY_ block grp_246

    type ::= functionType opt_249
           | typeNotFunction

    typeAlias ::= TYPEDEF_ typeIdentifier opt_250 EQ type SC
           | TYPEDEF_ functionTypeAlias

    typeArguments ::= LT typeList GT

    typeCast ::= asOperator typeNotVoid

    typedIdentifier ::= type identifier

    typeIdentifier ::= IDENTIFIER
           | ASYNC_
           | HIDE_
           | OF_
           | ON_
           | SHOW_
           | SYNC_
           | AWAIT_
           | YIELD_
           | DYNAMIC_
           | NATIVE_
           | FUNCTION_

    typeList ::= type list_252

    typeName ::= typeIdentifier opt_254

    typeNotFunction ::= VOID_
           | typeNotVoidNotFunction

    typeNotVoid ::= functionType opt_255
           | typeNotVoidNotFunction

    typeNotVoidList ::= typeNotVoid list_257

    typeNotVoidNotFunction ::= typeName opt_258 opt_259
           | FUNCTION_ opt_260

    typeNotVoidNotFunctionList ::= typeNotVoidNotFunction list_262

    typeParameter ::= metadata identifier opt_264

    typeParameters ::= LT typeParameter list_266 GT

    typeTest ::= isOperator typeNotVoid

    unaryExpression ::= prefixOperator unaryExpression
           | awaitExpression
           | postfixExpression
           | grp_267 SUPER_
           | incrementOperator assignableExpression

    unconditionalAssignableSelector ::= OB expr CB
           | D identifier

    uri ::= stringLiteral

    uriTest ::= dottedIdentifierList opt_269

    varOrType ::= VAR_
           | type

    whileStatement ::= WHILE_ OP expr CP statement

    yieldEachStatement ::= YIELD_ ST expr SC

    yieldStatement ::= YIELD_ expr SC

    seq_1 ::= additiveOperator multiplicativeExpression

    list_2 ::= $empty | list_2 seq_1

    seq_3 ::= additiveOperator multiplicativeExpression

    list_4 ::= seq_3 | list_4 seq_3

    seq_5 ::= C namedArgument

    list_6 ::= $empty | list_6 seq_5

    seq_7 ::= C namedArgument

    list_8 ::= $empty | list_8 seq_7

    opt_9 ::= typeArguments | $empty

    opt_10 ::= C | $empty

    seq_11 ::= argumentList opt_10

    opt_12 ::= seq_11 | $empty

    seq_13 ::= C expr

    opt_14 ::= seq_13 | $empty

    opt_15 ::= C | $empty

    list_16 ::= $empty | list_16 selector

    seq_17 ::= A shiftExpression

    list_18 ::= $empty | list_18 seq_17

    seq_19 ::= A shiftExpression

    list_20 ::= seq_19 | list_20 seq_19

    seq_21 ::= P bitwiseXorExpression

    list_22 ::= $empty | list_22 seq_21

    seq_23 ::= P bitwiseXorExpression

    list_24 ::= seq_23 | list_24 seq_23

    seq_25 ::= CIR bitwiseAndExpression

    list_26 ::= $empty | list_26 seq_25

    seq_27 ::= CIR bitwiseAndExpression

    list_28 ::= seq_27 | list_28 seq_27

    opt_29 ::= identifier | $empty

    grp_30 ::= QUDD | DD

    list_31 ::= $empty | list_31 selector

    seq_32 ::= assignableSelector cascadeAssignment

    opt_33 ::= seq_32 | $empty

    seq_34 ::= C identifier

    opt_35 ::= seq_34 | $empty

    opt_36 ::= ABSTRACT_ | $empty

    opt_37 ::= typeParameters | $empty

    opt_38 ::= superclass | $empty

    opt_39 ::= interfaces | $empty

    seq_40 ::= metadata classMemberDeclaration

    list_41 ::= $empty | list_41 seq_40

    opt_42 ::= ABSTRACT_ | $empty

    grp_43 ::= libraryDeclaration | partDeclaration | expr | statement

    seq_44 ::= QU expressionWithoutCascade CO expressionWithoutCascade

    opt_45 ::= seq_44 | $empty

    list_46 ::= $empty | list_46 configurationUri

    seq_47 ::= D identifier

    opt_48 ::= seq_47 | $empty

    seq_49 ::= D identifier

    opt_50 ::= seq_49 | $empty

    opt_51 ::= identifier | $empty

    opt_52 ::= ABSTRACT_ | $empty

    opt_54 ::= STATIC_ | $empty

    seq_55 ::= EXTERNAL_ opt_54

    opt_56 ::= seq_55 | $empty

    opt_57 ::= STATIC_ | $empty

    seq_58 ::= EXTERNAL_ opt_57

    opt_59 ::= seq_58 | $empty

    opt_60 ::= STATIC_ | $empty

    seq_61 ::= EXTERNAL_ opt_60

    opt_62 ::= seq_61 | $empty

    opt_63 ::= EXTERNAL_ | $empty

    opt_64 ::= type | $empty

    opt_65 ::= type | $empty

    opt_66 ::= type | $empty

    opt_67 ::= LATE_ | $empty

    opt_68 ::= type | $empty

    opt_69 ::= LATE_ | $empty

    opt_70 ::= LATE_ | $empty

    opt_71 ::= type | $empty

    opt_72 ::= LATE_ | $empty

    grp_73 ::= redirection | initializers

    opt_74 ::= grp_73 | $empty

    grp_75 ::= redirection | initializers

    opt_76 ::= grp_75 | $empty

    grp_53 ::= EXTERNAL_ factoryConstructorSignature | EXTERNAL_ constantConstructorSignature | EXTERNAL_ constructorSignature | opt_56 getterSignature | opt_59 setterSignature | opt_62 functionSignature | opt_63 operatorSignature | STATIC_ CONST_ opt_64 staticFinalDeclarationList | STATIC_ FINAL_ opt_65 staticFinalDeclarationList | STATIC_ LATE_ FINAL_ opt_66 initializedIdentifierList | STATIC_ opt_67 varOrType initializedIdentifierList | COVARIANT_ LATE_ FINAL_ opt_68 identifierList | COVARIANT_ opt_69 varOrType initializedIdentifierList | opt_70 FINAL_ opt_71 initializedIdentifierList | opt_72 varOrType initializedIdentifierList | redirectingFactoryConstructorSignature | constantConstructorSignature opt_74 | constructorSignature opt_76

    opt_77 ::= COVARIANT_ | $empty

    list_78 ::= $empty | list_78 label

    seq_79 ::= EQ expr

    opt_80 ::= seq_79 | $empty

    opt_81 ::= REQUIRED_ | $empty

    grp_83 ::= EQ | CO

    grp_82 ::= grp_83 expr

    opt_84 ::= grp_82 | $empty

    seq_85 ::= D identifier

    list_86 ::= $empty | list_86 seq_85

    seq_87 ::= C element

    list_88 ::= $empty | list_88 seq_87

    opt_89 ::= C | $empty

    seq_90 ::= C enumEntry

    list_91 ::= $empty | list_91 seq_90

    opt_92 ::= C | $empty

    seq_93 ::= equalityOperator relationalExpression

    opt_94 ::= seq_93 | $empty

    seq_95 ::= C expr

    list_96 ::= $empty | list_96 seq_95

    opt_97 ::= expr | $empty

    opt_98 ::= identifier | $empty

    opt_99 ::= typeParameters | $empty

    seq_100 ::= metadata classMemberDeclaration

    list_101 ::= $empty | list_101 seq_100

    opt_102 ::= CONST_ | $empty

    opt_103 ::= finalConstVarOrType | $empty

    opt_104 ::= QU | $empty

    seq_105 ::= formalParameterPart opt_104

    opt_106 ::= seq_105 | $empty

    seq_107 ::= THIS_ D

    opt_108 ::= seq_107 | $empty

    opt_109 ::= LATE_ | $empty

    opt_110 ::= type | $empty

    opt_111 ::= type | $empty

    opt_112 ::= LATE_ | $empty

    opt_113 ::= AWAIT_ | $empty

    opt_114 ::= expr | $empty

    opt_115 ::= expr | $empty

    opt_116 ::= expressionList | $empty

    opt_117 ::= C | $empty

    opt_118 ::= typeParameters | $empty

    opt_119 ::= AWAIT_ | $empty

    opt_120 ::= stringLiteral | $empty

    opt_121 ::= ASYNC_ | $empty

    opt_123 ::= ST | $empty

    grp_122 ::= ASYNC_ opt_123 | SYNC_ ST

    opt_124 ::= grp_122 | $empty

    opt_125 ::= ASYNC_ | $empty

    opt_127 ::= ST | $empty

    grp_126 ::= ASYNC_ opt_127 | SYNC_ ST

    opt_128 ::= grp_126 | $empty

    opt_129 ::= COVARIANT_ | $empty

    opt_130 ::= type | $empty

    opt_131 ::= QU | $empty

    opt_132 ::= type | $empty

    opt_133 ::= type | $empty

    opt_134 ::= typeParameters | $empty

    opt_135 ::= QU | $empty

    opt_136 ::= type | $empty

    seq_137 ::= C identifier

    list_138 ::= $empty | list_138 seq_137

    seq_139 ::= ELSE_ element

    opt_140 ::= seq_139 | $empty

    seq_141 ::= QUQU logicalOrExpression

    list_142 ::= $empty | list_142 seq_141

    seq_143 ::= ELSE_ statement

    opt_144 ::= seq_143 | $empty

    opt_145 ::= DEFERRED_ | $empty

    seq_146 ::= opt_145 AS_ identifier

    opt_147 ::= seq_146 | $empty

    list_148 ::= $empty | list_148 combinator

    seq_149 ::= EQ expr

    opt_150 ::= seq_149 | $empty

    seq_151 ::= C initializedIdentifier

    list_152 ::= $empty | list_152 seq_151

    seq_153 ::= EQ expr

    opt_154 ::= seq_153 | $empty

    seq_155 ::= C initializedIdentifier

    list_156 ::= $empty | list_156 seq_155

    seq_157 ::= C initializerListEntry

    list_158 ::= $empty | list_158 seq_157

    opt_159 ::= NOT | $empty

    opt_160 ::= libraryName | $empty

    list_161 ::= $empty | list_161 importOrExport

    list_162 ::= $empty | list_162 partDirective

    seq_163 ::= metadata topLevelDeclaration

    list_164 ::= $empty | list_164 seq_163

    list_165 ::= $empty | list_165 combinator

    opt_166 ::= CONST_ | $empty

    opt_167 ::= typeArguments | $empty

    opt_168 ::= elements | $empty

    seq_169 ::= AA equalityExpression

    list_170 ::= $empty | list_170 seq_169

    seq_171 ::= PP logicalAndExpression

    list_172 ::= $empty | list_172 seq_171

    seq_173 ::= AT metadatum

    list_174 ::= $empty | list_174 seq_173

    opt_175 ::= initializers | $empty

    opt_176 ::= STATIC_ | $empty

    opt_177 ::= STATIC_ | $empty

    opt_178 ::= STATIC_ | $empty

    opt_179 ::= interfaces | $empty

    opt_180 ::= typeParameters | $empty

    opt_181 ::= typeParameters | $empty

    seq_182 ::= ON_ typeNotVoidList

    opt_183 ::= seq_182 | $empty

    opt_184 ::= interfaces | $empty

    seq_185 ::= metadata classMemberDeclaration

    list_186 ::= $empty | list_186 seq_185

    seq_187 ::= multiplicativeOperator unaryExpression

    list_188 ::= $empty | list_188 seq_187

    seq_189 ::= multiplicativeOperator unaryExpression

    list_190 ::= seq_189 | list_190 seq_189

    seq_191 ::= C defaultNamedParameter

    list_192 ::= $empty | list_192 seq_191

    opt_193 ::= C | $empty

    opt_194 ::= REQUIRED_ | $empty

    seq_195 ::= C namedParameterType

    list_196 ::= $empty | list_196 seq_195

    opt_197 ::= C | $empty

    seq_198 ::= C normalFormalParameter

    list_199 ::= $empty | list_199 seq_198

    seq_200 ::= C normalParameterType

    list_201 ::= $empty | list_201 seq_200

    opt_202 ::= catchPart | $empty

    opt_203 ::= type | $empty

    seq_204 ::= C defaultFormalParameter

    list_205 ::= $empty | list_205 seq_204

    opt_206 ::= C | $empty

    opt_207 ::= C | $empty

    opt_208 ::= C | $empty

    seq_209 ::= metadata topLevelDeclaration

    list_210 ::= $empty | list_210 seq_209

    grp_211 ::= dottedIdentifierList | uri

    list_212 ::= $empty | list_212 selector

    opt_213 ::= CONST_ | $empty

    seq_214 ::= D identifier

    opt_215 ::= seq_214 | $empty

    grp_216 ::= typeTest | typeCast | relationalOperator bitwiseOrExpression

    opt_217 ::= grp_216 | $empty

    opt_218 ::= expr | $empty

    opt_219 ::= CONST_ | $empty

    opt_220 ::= typeArguments | $empty

    opt_221 ::= elements | $empty

    opt_222 ::= type | $empty

    seq_223 ::= shiftOperator additiveExpression

    list_224 ::= $empty | list_224 seq_223

    seq_225 ::= shiftOperator additiveExpression

    list_226 ::= seq_225 | list_226 seq_225

    opt_227 ::= COVARIANT_ | $empty

    grp_228 ::= DDD | DDDQ

    list_229 ::= $empty | list_229 label

    list_230 ::= $empty | list_230 statement

    seq_231 ::= C staticFinalDeclaration

    list_232 ::= $empty | list_232 seq_231

    grp_233 ::= multilineString | singleLineString

    list_234 ::= grp_233 | list_234 grp_233

    opt_235 ::= mixins | $empty

    list_236 ::= $empty | list_236 label

    list_237 ::= $empty | list_237 switchCase

    opt_238 ::= defaultCase | $empty

    seq_240 ::= D identifier

    list_241 ::= $empty | list_241 seq_240

    grp_239 ::= identifier list_241 | operator | VOID_

    grp_242 ::= FINAL_ | CONST_

    opt_243 ::= type | $empty

    opt_244 ::= type | $empty

    opt_245 ::= LATE_ | $empty

    list_247 ::= onPart | list_247 onPart

    opt_248 ::= finallyPart | $empty

    grp_246 ::= list_247 opt_248 | finallyPart

    opt_249 ::= QU | $empty

    opt_250 ::= typeParameters | $empty

    seq_251 ::= C type

    list_252 ::= $empty | list_252 seq_251

    seq_253 ::= D typeIdentifier

    opt_254 ::= seq_253 | $empty

    opt_255 ::= QU | $empty

    seq_256 ::= C typeNotVoid

    list_257 ::= $empty | list_257 seq_256

    opt_258 ::= typeArguments | $empty

    opt_259 ::= QU | $empty

    opt_260 ::= QU | $empty

    seq_261 ::= C typeNotVoidNotFunction

    list_262 ::= $empty | list_262 seq_261

    seq_263 ::= EXTENDS_ typeNotVoid

    opt_264 ::= seq_263 | $empty

    seq_265 ::= C typeParameter

    list_266 ::= $empty | list_266 seq_265

    grp_267 ::= minusOperator | tildeOperator

    seq_268 ::= EE stringLiteral

    opt_269 ::= seq_268 | $empty

%End
