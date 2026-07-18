-- AUTO-GENERATED from antlr/grammars-v4 objc by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=ObjcParser
%options package=lpg.grammars.objc
%options template=dtParserTemplateF.gi
%options import_terminals=ObjcLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    translationUnit
%End

%Rules
    translationUnit ::= list_1

    topLevelDeclaration ::= importDeclaration
           | functionDeclaration
           | declaration
           | classInterface
           | classImplementation
           | categoryInterface
           | categoryImplementation
           | protocolDeclaration
           | protocolDeclarationList
           | classDeclarationList
           | functionDefinition
           | SEMI

    importDeclaration ::= _IMPORT identifier SEMI

    classInterface ::= opt_2 _INTERFACE genericTypeSpecifier opt_4 list_7 opt_8 opt_9 _END

    categoryInterface ::= _INTERFACE genericTypeSpecifier LP opt_10 RP opt_12 opt_13 opt_14 _END

    classImplementation ::= _IMPLEMENTATION genericTypeSpecifier opt_16 opt_17 opt_18 _END

    categoryImplementation ::= _IMPLEMENTATION genericTypeSpecifier LP identifier RP opt_19 _END

    genericTypeSpecifier ::= identifier opt_22

    genericConformanceList ::= genericConformance list_24

    genericConformance ::= declarationSpecifiers opt_26

    protocolDeclaration ::= opt_27 _PROTOCOL protocolName opt_29 list_30 _END

    protocolDeclarationSection ::= grp_31 list_32
           | list_33

    protocolDeclarationList ::= _PROTOCOL protocolList SEMI

    classDeclarationList ::= _CLASS genericTypeSpecifier list_35 SEMI

    protocolList ::= protocolName list_37

    propertyDeclaration ::= _PROPERTY opt_39 opt_40 opt_41 fieldDeclaration

    propertyAttributesList ::= propertyAttribute list_43

    propertyAttribute ::= ATOMIC
           | NONATOMIC
           | STRONG
           | WEAK
           | RETAIN
           | ASSIGN
           | UNSAFE_UNRETAINED
           | COPY
           | READONLY
           | READWRITE
           | DIRECT
           | GETTER EQ identifier
           | SETTER EQ identifier COLON
           | nullabilitySpecifier
           | identifier

    protocolName ::= opt_45 identifier

    instanceVariables ::= LBRACE list_46 RBRACE

    visibilitySection ::= accessModifier list_47
           | list_48

    accessModifier ::= PRIVATE
           | PROTECTED
           | PACKAGE
           | PUBLIC

    interfaceDeclarationList ::= list_50

    classMethodDeclaration ::= PLUS methodDeclaration

    instanceMethodDeclaration ::= MINUS methodDeclaration

    methodDeclaration ::= opt_51 methodSelector list_52 SEMI

    implementationDefinitionList ::= list_54

    classMethodDefinition ::= PLUS methodDefinition

    instanceMethodDefinition ::= MINUS methodDefinition

    methodDefinition ::= opt_55 methodSelector opt_56 opt_57 compoundStatement

    methodSelector ::= selector
           | list_58 opt_60

    keywordDeclarator ::= opt_61 COLON list_62 opt_63 identifier

    selector ::= identifier
           | RETURN

    methodType ::= LP typeName RP

    propertyImplementation ::= _SYNTHESIZE propertySynthesizeList SEMI
           | _DYNAMIC propertySynthesizeList SEMI

    propertySynthesizeList ::= propertySynthesizeItem list_65

    propertySynthesizeItem ::= identifier opt_67

    blockType ::= opt_68 opt_69 typeSpecifier opt_70 LP opt_71 CARET opt_72 RP opt_73

    genericsSpecifierList ::= LT opt_77 GT

    genericsSpecifier ::= typeSpecifier opt_79

    dictionaryLiteralExpression ::= AT LBRACE opt_84 RBRACE

    dictionaryPair ::= castExpression COLON expression

    arrayLiteralExpression ::= AT LBRACKET opt_85 list_87 opt_88 RBRACKET

    boxedExpression ::= AT LP constantExpression RP
           | AT constant

    blockParameters ::= LP opt_93 RP

    typeVariableDeclaratorOrName ::= typeVariableDeclarator
           | typeName

    blockExpression ::= CARET opt_94 opt_95 opt_96 compoundStatement

    messageExpression ::= LBRACKET receiver messageSelector RBRACKET

    receiver ::= expression
           | typeSpecifier

    messageSelector ::= selector
           | list_97

    keywordArgument ::= opt_98 COLON keywordArgumentType list_100

    keywordArgumentType ::= expression opt_101 opt_103

    selectorExpression ::= _SELECTOR LP selectorName RP

    selectorName ::= selector
           | UNDERSCORE
           | list_106

    protocolExpression ::= _PROTOCOL LP protocolName RP

    encodeExpression ::= _ENCODE LP typeName RP

    typeVariableDeclarator ::= declarationSpecifiers declarator

    throwStatement ::= _THROW LP identifier RP
           | _THROW expression

    tryBlock ::= AT TRY compoundStatement list_107 opt_109

    catchStatement ::= AT CATCH LP grp_110 RP compoundStatement

    synchronizedStatement ::= _SYNCHRONIZED LP identifier RP compoundStatement

    autoreleaseStatement ::= _AUTORELEASEPOOL compoundStatement

    functionDeclaration ::= functionSignature SEMI

    functionDefinition ::= functionSignature compoundStatement

    functionSignature ::= opt_111 identifier seq_113 opt_114

    attribute ::= attributeName opt_115

    attributeName ::= CONST
           | identifier

    attributeParameters ::= LP opt_116 RP

    attributeParameterList ::= attributeParameter list_118

    attributeParameter ::= attribute
           | constant
           | stringLiteral
           | attributeParameterAssignment

    attributeParameterAssignment ::= attributeName EQ grp_119

    declaration ::= grp_120 opt_121 SEMI

    functionCallExpression ::= opt_122 identifier opt_123 LP declarator RP

    enumDeclaration ::= opt_124 opt_125 grp_126

    varDeclaration ::= declarationSpecifiers opt_127

    typedefDeclaration ::= opt_128 TYPEDEF declarationSpecifiers opt_129

    typeDeclaratorList ::= declarator list_131

    declarationSpecifiers ::= list_133 typeSpecifier list_134

    attributeSpecifier ::= __ATTRIBUTE__ LP LP attribute list_136 RP RP

    initDeclaratorList ::= initDeclarator list_138

    initDeclarator ::= declarator opt_140

    structOrUnionSpecifier ::= grp_141 grp_142

    fieldDeclaration ::= declarationSpecifiers fieldDeclaratorList opt_145 SEMI

    ibOutletQualifier ::= IB_OUTLET_COLLECTION LP identifier RP
           | IB_OUTLET

    arcBehaviourSpecifier ::= WEAK_QUALIFIER
           | STRONG_QUALIFIER
           | AUTORELEASING_QUALIFIER
           | UNSAFE_UNRETAINED_QUALIFIER

    nullabilitySpecifier ::= NULL_UNSPECIFIED
           | NULLABLE
           | NONNULL
           | NULL_RESETTABLE

    storageClassSpecifier ::= AUTO
           | REGISTER
           | STATIC
           | EXTERN

    typePrefix ::= BRIDGE
           | BRIDGE_TRANSFER
           | BRIDGE_RETAINED
           | BLOCK
           | INLINE
           | NS_INLINE
           | INLINE_ATTR
           | KINDOF

    typeQualifier ::= CONST
           | VOLATILE
           | RESTRICT
           | protocolQualifier

    protocolQualifier ::= IN
           | OUT
           | INOUT
           | BYCOPY
           | BYREF
           | ONEWAY

    numericSignModifier ::= SIGNED
           | UNSIGNED

    typeSpecifier ::= VOID list_146
           | opt_147 CHAR list_148
           | opt_149 SHORT list_150
           | opt_151 opt_153 INT list_154
           | opt_155 opt_156 LONG list_157
           | FLOAT list_158
           | opt_159 DOUBLE list_160
           | typeofExpression list_162
           | structOrUnionSpecifier
           | enumSpecifier
           | nsEnumOrOptionSpecifier
           | ID opt_164 list_166
           | genericTypeSpecifier list_168
           | identifier list_170
           | typeSpecifier STAR list_172

    typeofExpression ::= TYPEOF seq_173

    fieldDeclaratorList ::= fieldDeclarator list_175

    fieldDeclarator ::= declarator
           | opt_176 COLON constant

    enumSpecifier ::= ENUM opt_179 grp_180

    nsEnumOrOptionSpecifier ::= grp_183 LP typeName COMMA identifier RP opt_185

    enumeratorList ::= enumerator list_187 opt_188

    enumerator ::= enumeratorIdentifier opt_190

    enumeratorIdentifier ::= identifier
           | DEFAULT

    declarator ::= grp_191 list_192
           | LP CARET opt_193 opt_194 RP blockParameters

    declaratorSuffix ::= LBRACKET opt_195 RBRACKET

    parameterList ::= parameterDeclarationList opt_197

    macro ::= identifier opt_201
           | NS_UNAVAILABLE
           | NS_SWIFT_NAME LP grp_202 RP
           | API_AVAILABLE LP apiAvailableOsVersion list_204 RP
           | API_UNAVAILABLE LP identifier list_206 RP
           | NS_SWIFT_UNAVAILABLE LP stringLiteral RP
           | ATTRIBUTE LP LP clangAttribute list_208 RP RP

    clangAttribute ::= identifier
           | identifier LP clangAttributeArgument list_210 RP

    clangAttributeArgument ::= identifier
           | DECIMAL_LITERAL
           | stringLiteral
           | identifier EQ version
           | identifier EQ stringLiteral

    swiftAliasExpression ::= identifier list_212

    swiftSelectorExpression ::= identifier LP list_214 RP

    swiftSelector ::= identifier
           | UNDERSCORE
           | FOR

    apiAvailableOsVersion ::= identifier LP version RP

    version ::= FLOATING_POINT_LITERAL
           | DECIMAL_LITERAL list_216

    arrayInitializer ::= LBRACE opt_219 RBRACE

    structInitializer ::= LBRACE opt_224 RBRACE

    structAssignmentExpression ::= identifier EQ assignmentExpression

    initializerList ::= initializer list_226 opt_227

    typeName ::= declarationSpecifiers opt_228
           | blockType

    abstractDeclarator ::= LP opt_229 RP list_230
           | list_233

    abstractDeclaratorSuffix ::= LBRACKET opt_234 RBRACKET
           | LP opt_235 RP

    parameterDeclarationList ::= parameterDeclaration list_237

    parameterDeclaration ::= declarationSpecifiers opt_objcDecl

    opt_objcDecl ::= declarator | $empty
           | VOID

    statement ::= labeledStatement opt_238
           | compoundStatement opt_239
           | selectionStatement opt_240
           | iterationStatement opt_241
           | jumpStatement opt_242
           | synchronizedStatement opt_243
           | autoreleaseStatement opt_244
           | throwStatement opt_245
           | tryBlock opt_246
           | expression opt_247
           | SEMI

    labeledStatement ::= identifier COLON statement

    rangeExpression ::= constantExpression opt_249

    compoundStatement ::= LBRACE list_251 RBRACE

    selectionStatement ::= IF LP expression RP statement opt_253
           | switchStatement

    switchStatement ::= SWITCH LP expression RP switchBlock

    switchBlock ::= LBRACE list_254 RBRACE

    switchSection ::= list_255 list_256

    switchLabel ::= CASE grp_257 COLON
           | DEFAULT COLON

    iterationStatement ::= whileStatement
           | doStatement
           | forStatement
           | forInStatement

    whileStatement ::= WHILE LP expression RP statement

    doStatement ::= DO statement WHILE LP expression RP SEMI

    forStatement ::= FOR LP opt_258 SEMI opt_259 SEMI opt_260 RP statement

    forLoopInitializer ::= declarationSpecifiers initDeclaratorList
           | expression

    forInStatement ::= FOR LP typeVariableDeclarator IN opt_261 RP statement

    jumpStatement ::= GOTO identifier
           | CONTINUE
           | BREAK
           | RETURN opt_262

    castExpression ::= seq_263 castExpression
           | unaryExpression

    multiplicativeExpression ::= castExpression list_266

    additiveExpression ::= multiplicativeExpression list_269

    shiftExpression ::= additiveExpression list_272

    leftShiftOperator ::= LT LT

    rightShiftOperator ::= GT GT

    relationalExpression ::= shiftExpression list_275

    equalityExpression ::= relationalExpression list_278

    andExpression ::= equalityExpression list_280

    exclusiveOrExpression ::= andExpression list_282

    inclusiveOrExpression ::= exclusiveOrExpression list_284

    logicalAndExpression ::= inclusiveOrExpression list_286

    logicalOrExpression ::= logicalAndExpression list_288

    conditionalExpression ::= logicalOrExpression opt_291

    assignmentExpression ::= conditionalExpression
           | unaryExpression assignmentOperator assignmentExpression

    assignmentOperator ::= EQ
           | STAREQ
           | SLASHEQ
           | PERCENTEQ
           | PLUSEQ
           | MINUSEQ
           | LSHIFTEQ
           | RSHIFTEQ
           | AMPEQ
           | CARETEQ
           | PIPEEQ

    expression ::= assignmentExpression list_293

    constantExpression ::= conditionalExpression

    initializer ::= assignmentExpression
           | arrayInitializer
           | structInitializer

    unaryExpression ::= list_295 grp_296

    unaryOperator ::= AMP
           | STAR
           | PLUS
           | MINUS
           | TILDE
           | BANG

    postfixExpression ::= grp_298 list_304

    postfix ::= LBRACK expression RBRACK
           | LP opt_305 RP
           | LP list_308 RP
           | grp_309

    argumentExpressionList ::= argumentExpression list_311

    argumentExpression ::= expression
           | typeSpecifier

    primaryExpression ::= identifier
           | constant
           | stringLiteral
           | LP expression RP
           | messageExpression
           | selectorExpression
           | protocolExpression
           | encodeExpression
           | dictionaryLiteralExpression
           | arrayLiteralExpression
           | boxedExpression
           | blockExpression
           | opt_312 LP compoundStatement RP

    constant ::= HEX_LITERAL
           | OCTAL_LITERAL
           | BINARY_LITERAL
           | opt_314 DECIMAL_LITERAL
           | opt_316 FLOATING_POINT_LITERAL
           | CHARACTER_LITERAL
           | NIL
           | NULL_
           | YES
           | NO
           | TRUE
           | FALSE

    stringLiteral ::= list_320

    identifier ::= IDENTIFIER
           | BOOL
           | KW_CLASS
           | BYCOPY
           | BYREF
           | ID
           | IMP
           | IN
           | INOUT
           | ONEWAY
           | OUT
           | PROTOCOL_
           | SEL
           | SELF
           | SUPER
           | ATOMIC
           | NONATOMIC
           | RETAIN
           | REGISTER
           | AUTORELEASING_QUALIFIER
           | BLOCK
           | BRIDGE_RETAINED
           | BRIDGE_TRANSFER
           | COVARIANT
           | CONTRAVARIANT
           | DEPRECATED
           | KINDOF
           | UNUSED
           | NS_INLINE
           | NS_ENUM
           | NS_OPTIONS
           | NS_SWIFT_NAME
           | NULL_UNSPECIFIED
           | NULLABLE
           | NONNULL
           | NULL_RESETTABLE
           | ASSIGN
           | COPY
           | GETTER
           | SETTER
           | STRONG
           | READONLY
           | READWRITE
           | WEAK
           | UNSAFE_UNRETAINED
           | IB_OUTLET
           | IB_OUTLET_COLLECTION
           | IB_INSPECTABLE
           | IB_DESIGNABLE

    list_1 ::= $empty | list_1 topLevelDeclaration

    opt_2 ::= IB_DESIGNABLE | $empty

    seq_3 ::= COLON identifier

    opt_4 ::= seq_3 | $empty

    grp_6 ::= protocolList | genericConformanceList

    grp_5 ::= LT grp_6 GT

    list_7 ::= $empty | list_7 grp_5

    opt_8 ::= instanceVariables | $empty

    opt_9 ::= interfaceDeclarationList | $empty

    opt_10 ::= identifier | $empty

    seq_11 ::= LT protocolList GT

    opt_12 ::= seq_11 | $empty

    opt_13 ::= instanceVariables | $empty

    opt_14 ::= interfaceDeclarationList | $empty

    seq_15 ::= COLON identifier

    opt_16 ::= seq_15 | $empty

    opt_17 ::= instanceVariables | $empty

    opt_18 ::= implementationDefinitionList | $empty

    opt_19 ::= implementationDefinitionList | $empty

    grp_21 ::= protocolList | genericConformanceList

    grp_20 ::= LT grp_21 GT

    opt_22 ::= grp_20 | $empty

    seq_23 ::= COMMA genericConformance

    list_24 ::= $empty | list_24 seq_23

    seq_25 ::= COLON declarationSpecifiers

    opt_26 ::= seq_25 | $empty

    opt_27 ::= macro | $empty

    seq_28 ::= LT protocolList GT

    opt_29 ::= seq_28 | $empty

    list_30 ::= $empty | list_30 protocolDeclarationSection

    grp_31 ::= REQUIRED | OPTIONAL

    list_32 ::= $empty | list_32 interfaceDeclarationList

    list_33 ::= interfaceDeclarationList | list_33 interfaceDeclarationList

    seq_34 ::= COMMA genericTypeSpecifier

    list_35 ::= $empty | list_35 seq_34

    seq_36 ::= COMMA protocolName

    list_37 ::= $empty | list_37 seq_36

    seq_38 ::= LP propertyAttributesList RP

    opt_39 ::= seq_38 | $empty

    opt_40 ::= ibOutletQualifier | $empty

    opt_41 ::= IB_INSPECTABLE | $empty

    seq_42 ::= COMMA propertyAttribute

    list_43 ::= $empty | list_43 seq_42

    grp_44 ::= __COVARIANT | __CONTRAVARIANT

    opt_45 ::= grp_44 | $empty

    list_46 ::= $empty | list_46 visibilitySection

    list_47 ::= $empty | list_47 fieldDeclaration

    list_48 ::= fieldDeclaration | list_48 fieldDeclaration

    grp_49 ::= declaration | classMethodDeclaration | instanceMethodDeclaration | propertyDeclaration | functionDeclaration | SEMI

    list_50 ::= grp_49 | list_50 grp_49

    opt_51 ::= methodType | $empty

    list_52 ::= $empty | list_52 macro

    grp_53 ::= functionDefinition | declaration | classMethodDefinition | instanceMethodDefinition | propertyImplementation | SEMI

    list_54 ::= grp_53 | list_54 grp_53

    opt_55 ::= methodType | $empty

    opt_56 ::= initDeclaratorList | $empty

    opt_57 ::= SEMI | $empty

    list_58 ::= keywordDeclarator | list_58 keywordDeclarator

    seq_59 ::= COMMA ELLIPSIS

    opt_60 ::= seq_59 | $empty

    opt_61 ::= selector | $empty

    list_62 ::= $empty | list_62 methodType

    opt_63 ::= arcBehaviourSpecifier | $empty

    seq_64 ::= COMMA propertySynthesizeItem

    list_65 ::= $empty | list_65 seq_64

    seq_66 ::= EQ identifier

    opt_67 ::= seq_66 | $empty

    opt_68 ::= NS_NOESCAPE | $empty

    opt_69 ::= nullabilitySpecifier | $empty

    opt_70 ::= nullabilitySpecifier | $empty

    opt_71 ::= NS_NOESCAPE | $empty

    opt_72 ::= nullabilitySpecifier | $empty

    opt_73 ::= blockParameters | $empty

    seq_74 ::= COMMA genericsSpecifier

    list_75 ::= $empty | list_75 seq_74

    seq_76 ::= genericsSpecifier list_75

    opt_77 ::= seq_76 | $empty

    seq_78 ::= COLON typeSpecifier

    opt_79 ::= seq_78 | $empty

    seq_80 ::= COMMA dictionaryPair

    list_81 ::= $empty | list_81 seq_80

    opt_82 ::= COMMA | $empty

    seq_83 ::= dictionaryPair list_81 opt_82

    opt_84 ::= seq_83 | $empty

    opt_85 ::= assignmentExpression | $empty

    seq_86 ::= COMMA assignmentExpression

    list_87 ::= $empty | list_87 seq_86

    opt_88 ::= COMMA | $empty

    grp_90 ::= typeVariableDeclaratorOrName | VOID

    seq_91 ::= COMMA typeVariableDeclaratorOrName

    list_92 ::= $empty | list_92 seq_91

    grp_89 ::= grp_90 list_92

    opt_93 ::= grp_89 | $empty

    opt_94 ::= typeSpecifier | $empty

    opt_95 ::= nullabilitySpecifier | $empty

    opt_96 ::= blockParameters | $empty

    list_97 ::= keywordArgument | list_97 keywordArgument

    opt_98 ::= selector | $empty

    seq_99 ::= COMMA keywordArgumentType

    list_100 ::= $empty | list_100 seq_99

    opt_101 ::= nullabilitySpecifier | $empty

    seq_102 ::= LBRACE initializerList RBRACE

    opt_103 ::= seq_102 | $empty

    opt_104 ::= selector | $empty

    seq_105 ::= opt_104 COLON

    list_106 ::= seq_105 | list_106 seq_105

    list_107 ::= $empty | list_107 catchStatement

    seq_108 ::= AT FINALLY compoundStatement

    opt_109 ::= seq_108 | $empty

    grp_110 ::= typeVariableDeclarator | ELLIPSIS

    opt_111 ::= declarationSpecifiers | $empty

    opt_112 ::= parameterList | $empty

    seq_113 ::= LP opt_112 RP

    opt_114 ::= attributeSpecifier | $empty

    opt_115 ::= attributeParameters | $empty

    opt_116 ::= attributeParameterList | $empty

    seq_117 ::= COMMA attributeParameter

    list_118 ::= $empty | list_118 seq_117

    grp_119 ::= constant | attributeName | stringLiteral

    grp_120 ::= functionCallExpression | enumDeclaration | varDeclaration | typedefDeclaration

    opt_121 ::= macro | $empty

    opt_122 ::= attributeSpecifier | $empty

    opt_123 ::= attributeSpecifier | $empty

    opt_124 ::= attributeSpecifier | $empty

    opt_125 ::= TYPEDEF | $empty

    grp_126 ::= enumSpecifier identifier | nsEnumOrOptionSpecifier

    opt_127 ::= initDeclaratorList | $empty

    opt_128 ::= attributeSpecifier | $empty

    opt_129 ::= typeDeclaratorList | $empty

    seq_130 ::= COMMA declarator

    list_131 ::= $empty | list_131 seq_130

    grp_132 ::= storageClassSpecifier | attributeSpecifier | arcBehaviourSpecifier | nullabilitySpecifier | ibOutletQualifier | NS_NOESCAPE | typePrefix | typeQualifier

    list_133 ::= $empty | list_133 grp_132

    list_134 ::= $empty | list_134 attributeSpecifier

    seq_135 ::= COMMA attribute

    list_136 ::= $empty | list_136 seq_135

    seq_137 ::= COMMA initDeclarator

    list_138 ::= $empty | list_138 seq_137

    seq_139 ::= EQ initializer

    opt_140 ::= seq_139 | $empty

    grp_141 ::= STRUCT | UNION

    opt_143 ::= identifier | $empty

    list_144 ::= fieldDeclaration | list_144 fieldDeclaration

    grp_142 ::= identifier | opt_143 LBRACE list_144 RBRACE

    opt_145 ::= macro | $empty

    list_146 ::= $empty | list_146 typeQualifier

    opt_147 ::= numericSignModifier | $empty

    list_148 ::= $empty | list_148 typeQualifier

    opt_149 ::= numericSignModifier | $empty

    list_150 ::= $empty | list_150 typeQualifier

    opt_151 ::= numericSignModifier | $empty

    grp_152 ::= SHORT | LONG | LONG LONG

    opt_153 ::= grp_152 | $empty

    list_154 ::= $empty | list_154 typeQualifier

    opt_155 ::= numericSignModifier | $empty

    opt_156 ::= LONG | $empty

    list_157 ::= $empty | list_157 typeQualifier

    list_158 ::= $empty | list_158 typeQualifier

    opt_159 ::= LONG | $empty

    list_160 ::= $empty | list_160 typeQualifier

    grp_161 ::= arcBehaviourSpecifier | nullabilitySpecifier | typeQualifier

    list_162 ::= $empty | list_162 grp_161

    seq_163 ::= LT protocolList GT

    opt_164 ::= seq_163 | $empty

    grp_165 ::= arcBehaviourSpecifier | nullabilitySpecifier | typeQualifier

    list_166 ::= $empty | list_166 grp_165

    grp_167 ::= arcBehaviourSpecifier | nullabilitySpecifier | typeQualifier

    list_168 ::= $empty | list_168 grp_167

    grp_169 ::= arcBehaviourSpecifier | nullabilitySpecifier | typeQualifier

    list_170 ::= $empty | list_170 grp_169

    grp_171 ::= arcBehaviourSpecifier | nullabilitySpecifier | typeQualifier

    list_172 ::= $empty | list_172 grp_171

    seq_173 ::= LP expression RP

    seq_174 ::= COMMA fieldDeclarator

    list_175 ::= $empty | list_175 seq_174

    opt_176 ::= declarator | $empty

    opt_177 ::= identifier | $empty

    seq_178 ::= opt_177 COLON typeName

    opt_179 ::= seq_178 | $empty

    seq_181 ::= LBRACE enumeratorList RBRACE

    opt_182 ::= seq_181 | $empty

    grp_180 ::= identifier opt_182 | LBRACE enumeratorList RBRACE

    grp_183 ::= NS_OPTIONS | NS_ENUM | NS_CLOSED_ENUM | NS_ERROR_ENUM

    seq_184 ::= LBRACE enumeratorList RBRACE

    opt_185 ::= seq_184 | $empty

    seq_186 ::= COMMA enumerator

    list_187 ::= $empty | list_187 seq_186

    opt_188 ::= COMMA | $empty

    seq_189 ::= EQ assignmentExpression

    opt_190 ::= seq_189 | $empty

    grp_191 ::= identifier | LP declarator RP

    list_192 ::= $empty | list_192 declaratorSuffix

    opt_193 ::= nullabilitySpecifier | $empty

    opt_194 ::= identifier | $empty

    opt_195 ::= constantExpression | $empty

    seq_196 ::= COMMA ELLIPSIS

    opt_197 ::= seq_196 | $empty

    seq_198 ::= COMMA primaryExpression

    list_199 ::= $empty | list_199 seq_198

    seq_200 ::= LP primaryExpression list_199 RP

    opt_201 ::= seq_200 | $empty

    grp_202 ::= swiftAliasExpression | swiftSelectorExpression

    seq_203 ::= COMMA apiAvailableOsVersion

    list_204 ::= $empty | list_204 seq_203

    seq_205 ::= COMMA identifier

    list_206 ::= $empty | list_206 seq_205

    seq_207 ::= COMMA clangAttribute

    list_208 ::= $empty | list_208 seq_207

    seq_209 ::= COMMA clangAttributeArgument

    list_210 ::= $empty | list_210 seq_209

    seq_211 ::= DOT identifier

    list_212 ::= $empty | list_212 seq_211

    seq_213 ::= swiftSelector COLON

    list_214 ::= $empty | list_214 seq_213

    seq_215 ::= DOT DECIMAL_LITERAL

    list_216 ::= $empty | list_216 seq_215

    opt_217 ::= COMMA | $empty

    seq_218 ::= expression opt_217

    opt_219 ::= seq_218 | $empty

    seq_220 ::= COMMA DOT structAssignmentExpression

    list_221 ::= $empty | list_221 seq_220

    opt_222 ::= COMMA | $empty

    seq_223 ::= DOT structAssignmentExpression list_221 opt_222

    opt_224 ::= seq_223 | $empty

    seq_225 ::= COMMA initializer

    list_226 ::= $empty | list_226 seq_225

    opt_227 ::= COMMA | $empty

    opt_228 ::= abstractDeclarator | $empty

    opt_229 ::= abstractDeclarator | $empty

    list_230 ::= abstractDeclaratorSuffix | list_230 abstractDeclaratorSuffix

    opt_231 ::= constantExpression | $empty

    seq_232 ::= LBRACKET opt_231 RBRACKET

    list_233 ::= seq_232 | list_233 seq_232

    opt_234 ::= constantExpression | $empty

    opt_235 ::= parameterDeclarationList | $empty

    seq_236 ::= COMMA parameterDeclaration

    list_237 ::= $empty | list_237 seq_236

    opt_238 ::= SEMI | $empty

    opt_239 ::= SEMI | $empty

    opt_240 ::= SEMI | $empty

    opt_241 ::= SEMI | $empty

    opt_242 ::= SEMI | $empty

    opt_243 ::= SEMI | $empty

    opt_244 ::= SEMI | $empty

    opt_245 ::= SEMI | $empty

    opt_246 ::= SEMI | $empty

    opt_247 ::= SEMI | $empty

    seq_248 ::= ELLIPSIS constantExpression

    opt_249 ::= seq_248 | $empty

    grp_250 ::= declaration | statement

    list_251 ::= $empty | list_251 grp_250

    seq_252 ::= ELSE statement

    opt_253 ::= seq_252 | $empty

    list_254 ::= $empty | list_254 switchSection

    list_255 ::= switchLabel | list_255 switchLabel

    list_256 ::= statement | list_256 statement

    grp_257 ::= rangeExpression | LP rangeExpression RP

    opt_258 ::= forLoopInitializer | $empty

    opt_259 ::= expression | $empty

    opt_260 ::= expression | $empty

    opt_261 ::= expression | $empty

    opt_262 ::= expression | $empty

    seq_263 ::= LP typeName RP

    grp_265 ::= STAR | SLASH | PERCENT

    grp_264 ::= grp_265 castExpression

    list_266 ::= $empty | list_266 grp_264

    grp_268 ::= PLUS | MINUS

    grp_267 ::= grp_268 multiplicativeExpression

    list_269 ::= $empty | list_269 grp_267

    grp_271 ::= leftShiftOperator | rightShiftOperator

    grp_270 ::= grp_271 additiveExpression

    list_272 ::= $empty | list_272 grp_270

    grp_274 ::= LT | GT | LE | GE

    grp_273 ::= grp_274 shiftExpression

    list_275 ::= $empty | list_275 grp_273

    grp_277 ::= EQUAL | NOTEQUAL

    grp_276 ::= grp_277 relationalExpression

    list_278 ::= $empty | list_278 grp_276

    seq_279 ::= BITAND equalityExpression

    list_280 ::= $empty | list_280 seq_279

    seq_281 ::= BITXOR andExpression

    list_282 ::= $empty | list_282 seq_281

    seq_283 ::= BITOR exclusiveOrExpression

    list_284 ::= $empty | list_284 seq_283

    seq_285 ::= AND inclusiveOrExpression

    list_286 ::= $empty | list_286 seq_285

    seq_287 ::= OR logicalAndExpression

    list_288 ::= $empty | list_288 seq_287

    opt_289 ::= conditionalExpression | $empty

    seq_290 ::= QUESTION opt_289 COLON conditionalExpression

    opt_291 ::= seq_290 | $empty

    seq_292 ::= COMMA assignmentExpression

    list_293 ::= $empty | list_293 seq_292

    grp_294 ::= PLUSPLUS | MINUSMINUS

    list_295 ::= $empty | list_295 grp_294

    grp_297 ::= SIZEOF | _ALIGNOF

    grp_296 ::= postfixExpression | unaryOperator castExpression | grp_297 LP typeName RP | AND identifier

    opt_299 ::= __EXTENSION__ | $empty

    opt_300 ::= COMMA | $empty

    grp_298 ::= primaryExpression | opt_299 LP typeName RP LBRACE initializerList opt_300 RBRACE

    opt_302 ::= argumentExpressionList | $empty

    grp_303 ::= DOT | ARROW

    grp_301 ::= LBRACKET expression RBRACKET | LP opt_302 RP | grp_303 identifier | PLUSPLUS | MINUSMINUS

    list_304 ::= $empty | list_304 grp_301

    opt_305 ::= argumentExpressionList | $empty

    list_307 ::= macroArguments | list_307 macroArguments

    grp_306 ::= COMMA | list_307 RP

    list_308 ::= grp_306 | list_308 grp_306

    grp_309 ::= INC | DEC

    seq_310 ::= COMMA argumentExpression

    list_311 ::= $empty | list_311 seq_310

    opt_312 ::= __EXTENSION__ | $empty

    grp_313 ::= PLUS | MINUS

    opt_314 ::= grp_313 | $empty

    grp_315 ::= PLUS | MINUS

    opt_316 ::= grp_315 | $empty

    grp_318 ::= STRING_VALUE | STRING_NEWLINE

    list_319 ::= $empty | list_319 grp_318

    grp_317 ::= STRING_START list_319 STRING_END

    list_320 ::= grp_317 | list_320 grp_317

%End
