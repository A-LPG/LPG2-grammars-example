-- AUTO-GENERATED from antlr/grammars-v4 cpp by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=CppParser
%options package=lpg.grammars.cpp
%options template=dtParserTemplateF.gi
%options import_terminals=CppLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    translationUnit
%End

%Rules
    translationUnit ::= opt_1

    primaryExpression ::= list_2
           | THIS_
           | LPAREN expression RPAREN
           | idExpression
           | lambdaExpression

    idExpression ::= unqualifiedId
           | qualifiedId

    unqualifiedId ::= IDENTIFIER
           | operatorFunctionId
           | conversionFunctionId
           | literalOperatorId
           | TILDE grp_3

    qualifiedId ::= nestedNameSpecifier opt_4 unqualifiedId

    nestedNameSpecifier ::= IDENTIFIER COLONCOLON
           | nestedNameSpecifier grp_7 COLONCOLON

    lambdaExpression ::= lambdaIntroducer opt_9 compoundStatement

    lambdaIntroducer ::= LBRACKET opt_10 RBRACKET

    lambdaCapture ::= captureList
           | captureDefault opt_12

    captureDefault ::= AMP
           | EQ

    captureList ::= capture list_14 opt_15

    capture ::= simpleCapture
           | initCapture

    simpleCapture ::= opt_16 IDENTIFIER
           | THIS_

    initCapture ::= opt_17 IDENTIFIER initializer

    lambdaDeclarator ::= LPAREN opt_18 RPAREN opt_19 opt_20 opt_21 opt_22

    postfixExpression ::= primaryExpression
           | postfixExpression LBRACKET grp_23 RBRACKET
           | postfixExpression LPAREN opt_24 RPAREN
           | grp_25 grp_26
           | postfixExpression grp_28 grp_29
           | postfixExpression grp_31
           | grp_32 LT theTypeId GT LPAREN expression RPAREN
           | typeIdOfTheTypeId LPAREN grp_33 RPAREN

    typeIdOfTheTypeId ::= TYPEID_

    expressionList ::= initializerList

    pseudoDestructorName ::= opt_34 opt_36 TILDE theTypeName
           | nestedNameSpecifier TEMPLATE_ simpleTemplateId COLONCOLON TILDE theTypeName
           | TILDE decltypeSpecifier

    unaryExpression ::= postfixExpression
           | grp_37 unaryExpression
           | SIZEOF_ grp_38
           | ALIGNOF_ LPAREN theTypeId RPAREN
           | noExceptExpression
           | newExpression_
           | deleteExpression

    unaryOperator ::= PIPE
           | STAR
           | AMP
           | PLUS
           | TILDE
           | MINUS
           | BANG

    newExpression_ ::= opt_39 NEW_ opt_40 grp_41 opt_42

    newPlacement ::= LPAREN expressionList RPAREN

    newTypeId ::= typeSpecifierSeq opt_43

    newDeclarator_ ::= pointerOperator opt_44
           | noPointerNewDeclarator

    noPointerNewDeclarator ::= LBRACKET expression RBRACKET opt_45
           | noPointerNewDeclarator LBRACKET constantExpression RBRACKET opt_46

    newInitializer_ ::= LPAREN opt_47 RPAREN
           | bracedInitList

    deleteExpression ::= opt_48 DELETE_ opt_50 castExpression

    noExceptExpression ::= NOEXCEPT_ LPAREN expression RPAREN

    castExpression ::= unaryExpression
           | LPAREN theTypeId RPAREN castExpression

    pointerMemberExpression ::= castExpression list_53

    multiplicativeExpression ::= pointerMemberExpression list_56

    additiveExpression ::= multiplicativeExpression list_59

    shiftExpression ::= additiveExpression list_61

    shiftOperator ::= GT GT
           | LT LT

    relationalExpression ::= shiftExpression list_64

    equalityExpression ::= relationalExpression list_67

    andExpression ::= equalityExpression list_69

    exclusiveOrExpression ::= andExpression list_71

    inclusiveOrExpression ::= exclusiveOrExpression list_73

    logicalAndExpression ::= inclusiveOrExpression list_75

    logicalOrExpression ::= logicalAndExpression list_77

    conditionalExpression ::= logicalOrExpression opt_79

    assignmentExpression ::= conditionalExpression
           | logicalOrExpression assignmentOperator initializerClause
           | throwExpression

    assignmentOperator ::= EQ
           | STAREQ
           | SLASHEQ
           | PERCENTEQ
           | PLUSEQ
           | MINUSEQ
           | RSHIFTEQ
           | LSHIFTEQ
           | AMPEQ
           | CARETEQ
           | PIPEEQ

    expression ::= assignmentExpression list_81

    constantExpression ::= conditionalExpression

    statement ::= labeledStatement
           | declarationStatement
           | opt_82 grp_83

    labeledStatement ::= opt_84 grp_85 COLON statement

    expressionStatement ::= opt_86 SEMI

    compoundStatement ::= LBRACE opt_87 RBRACE

    statementSeq ::= list_88

    selectionStatement ::= IF_ LPAREN condition RPAREN statement opt_90
           | SWITCH_ LPAREN condition RPAREN statement

    condition ::= expression
           | opt_91 declSpecifierSeq declarator grp_92

    iterationStatement ::= WHILE_ LPAREN condition RPAREN statement
           | DO_ statement WHILE_ LPAREN expression RPAREN SEMI
           | FOR_ LPAREN grp_93 RPAREN statement

    forInitStatement ::= expressionStatement
           | simpleDeclaration

    forRangeDeclaration ::= opt_96 declSpecifierSeq declarator

    forRangeInitializer ::= expression
           | bracedInitList

    jumpStatement ::= grp_97 SEMI

    declarationStatement ::= blockDeclaration

    declarationSeq ::= list_100

    declaration ::= blockDeclaration
           | functionDefinition
           | templateDeclaration
           | explicitInstantiation
           | explicitSpecialization
           | linkageSpecification
           | namespaceDefinition
           | emptyDeclaration_
           | attributeDeclaration

    blockDeclaration ::= simpleDeclaration
           | asmDefinition
           | namespaceAliasDefinition
           | usingDeclaration
           | usingDirective
           | staticAssertDeclaration
           | aliasDeclaration
           | opaqueEnumDeclaration

    aliasDeclaration ::= USING_ IDENTIFIER opt_101 EQ theTypeId SEMI

    -- LALR left-factor: after builtin types, IDENTIFIER is a declarator (not another
    -- typedef-name type). Needed for `int x;`, `int y = 1;`, `void f(){}`.
    simpleDeclaration ::= builtinDeclSeq initDeclaratorList SEMI
           | builtinDeclSeq SEMI
           | classSpecifier SEMI
           | classSpecifier initDeclaratorList SEMI
           | IDENTIFIER initDeclaratorList SEMI
           | IDENTIFIER SEMI
           | attributeSpecifierSeq opt_104 initDeclaratorList SEMI

    builtinDeclSeq ::= builtinDecl
           | builtinDeclSeq builtinDecl

    builtinDecl ::= storageClassSpecifier
           | cvQualifier
           | functionSpecifier
           | FRIEND_
           | TYPEDEF_
           | CONSTEXPR_
           | CHAR_
           | Char16
           | Char32
           | Wchar
           | BOOL_
           | SHORT_
           | INT_
           | LONG_
           | FLOAT_
           | SIGNED_
           | UNSIGNED_
           | DOUBLE_
           | VOID_
           | AUTO_
           | decltypeSpecifier

    staticAssertDeclaration ::= STATIC_ASSERT LPAREN constantExpression COMMA STRING RPAREN SEMI

    emptyDeclaration_ ::= SEMI

    attributeDeclaration ::= attributeSpecifierSeq SEMI

    declSpecifier ::= storageClassSpecifier
           | typeSpecifier
           | functionSpecifier
           | FRIEND_
           | TYPEDEF_
           | CONSTEXPR_

    declSpecifierSeq ::= list_105 opt_106

    storageClassSpecifier ::= REGISTER_
           | STATIC_
           | Thread_local
           | EXTERN_
           | MUTABLE_

    functionSpecifier ::= INLINE_
           | VIRTUAL_
           | EXPLICIT_

    typedefName ::= IDENTIFIER

    typeSpecifier ::= trailingTypeSpecifier
           | classSpecifier
           | enumSpecifier

    trailingTypeSpecifier ::= simpleTypeSpecifier
           | elaboratedTypeSpecifier
           | typeNameSpecifier
           | cvQualifier

    typeSpecifierSeq ::= list_107 opt_108

    trailingTypeSpecifierSeq ::= list_109 opt_110

    simpleTypeLengthModifier ::= SHORT_
           | LONG_

    simpleTypeSignednessModifier ::= UNSIGNED_
           | SIGNED_

    -- LALR: no optional nestedNameSpecifier? before theTypeName (steals IDENTIFIER
    -- from declarators). Collapse class/enum/typedef name alts (all IDENTIFIER).
    simpleTypeSpecifier ::= theTypeName
           | nestedNameSpecifier theTypeName
           | nestedNameSpecifier TEMPLATE_ simpleTemplateId
           | CHAR_
           | Char16
           | Char32
           | Wchar
           | BOOL_
           | SHORT_
           | INT_
           | LONG_
           | FLOAT_
           | SIGNED_
           | UNSIGNED_
           | DOUBLE_
           | VOID_
           | AUTO_
           | decltypeSpecifier

    theTypeName ::= IDENTIFIER
           | simpleTemplateId

    decltypeSpecifier ::= DECLTYPE_ LPAREN grp_112 RPAREN

    elaboratedTypeSpecifier ::= classKey grp_113
           | ENUM_ opt_117 IDENTIFIER

    enumName ::= IDENTIFIER

    enumSpecifier ::= enumHead LBRACE opt_120 RBRACE

    enumHead ::= enumKey opt_121 opt_124 opt_125

    opaqueEnumDeclaration ::= enumKey opt_126 IDENTIFIER opt_127 SEMI

    enumKey ::= ENUM_ opt_129

    enumBase ::= COLON typeSpecifierSeq

    enumeratorList ::= enumeratorDefinition list_131

    enumeratorDefinition ::= enumerator opt_133

    enumerator ::= IDENTIFIER

    namespaceName ::= originalNamespaceName
           | namespaceAlias

    originalNamespaceName ::= IDENTIFIER

    namespaceDefinition ::= opt_134 NAMESPACE_ opt_136 LBRACE opt_137 RBRACE

    namespaceAlias ::= IDENTIFIER

    namespaceAliasDefinition ::= NAMESPACE_ IDENTIFIER EQ qualifiedNamespaceSpecifier SEMI

    qualifiedNamespaceSpecifier ::= opt_138 namespaceName

    usingDeclaration ::= USING_ grp_139 unqualifiedId SEMI

    usingDirective ::= opt_141 USING_ NAMESPACE_ opt_142 namespaceName SEMI

    asmDefinition ::= ASM_ LPAREN STRING RPAREN SEMI

    linkageSpecification ::= EXTERN_ STRING grp_143

    attributeSpecifierSeq ::= list_145

    attributeSpecifier ::= LBRACKET LBRACKET opt_146 RBRACKET RBRACKET
           | alignmentSpecifier

    alignmentSpecifier ::= ALIGNAS_ LPAREN grp_147 opt_148 RPAREN

    attributeList ::= attribute list_150 opt_151

    attribute ::= opt_153 IDENTIFIER opt_154

    attributeNamespace ::= IDENTIFIER

    attributeArgumentClause ::= LPAREN opt_155 RPAREN

    balancedTokenSeq ::= list_156

    balancedToken ::= LPAREN balancedTokenSeq RPAREN
           | LBRACKET balancedTokenSeq RBRACKET
           | LBRACE balancedTokenSeq RBRACE
           | list_158

    initDeclaratorList ::= initDeclarator list_160

    initDeclarator ::= declarator opt_161

    -- Subset: trailing-return form omitted (competed with plain `f()` / `a, b`).
    declarator ::= pointerDeclarator

    pointerDeclarator ::= list_164 noPointerDeclarator

    noPointerDeclarator ::= declaratorId opt_165
           | noPointerDeclarator grp_166
           | LPAREN pointerDeclarator RPAREN

    parametersAndQualifiers ::= LPAREN opt_169 RPAREN opt_170 opt_171 opt_172 opt_173

    trailingReturnType ::= ARROW trailingTypeSpecifierSeq opt_174

    -- LALR: drop optional nestedNameSpecifier before STAR (pointer-to-member).
    -- Otherwise IDENTIFIER after a type is shifted as NestedName::* and
    -- plain declarators like `int x;` / `void f(){}` never reduce.
    pointerOperator ::= grp_175 opt_176
           | STAR opt_178 opt_179

    cvQualifierSeq ::= list_180

    cvQualifier ::= CONST_
           | VOLATILE_

    refQualifier ::= AMP
           | ANDAND

    declaratorId ::= opt_181 idExpression

    theTypeId ::= typeSpecifierSeq opt_182

    abstractDeclarator ::= pointerAbstractDeclarator
           | opt_183 parametersAndQualifiers trailingReturnType
           | abstractPackDeclarator

    pointerAbstractDeclarator ::= list_184 grp_185

    noPointerAbstractDeclarator ::= grp_186 list_190

    abstractPackDeclarator ::= list_191 noPointerAbstractPackDeclarator

    noPointerAbstractPackDeclarator ::= ELLIPSIS list_195

    parameterDeclarationClause ::= parameterDeclarationList opt_198

    parameterDeclarationList ::= parameterDeclaration list_200

    parameterDeclaration ::= opt_201 declSpecifierSeq grp_202 opt_205

    functionDefinition ::= builtinDeclSeq declarator opt_208 functionBody
           | IDENTIFIER declarator opt_208 functionBody
           | attributeSpecifierSeq builtinDeclSeq declarator opt_208 functionBody

    functionBody ::= opt_209 compoundStatement
           | functionTryBlock
           | EQ grp_210 SEMI

    -- LALR: omit bracedInitList here so `void f() {}` is functionDefinition,
    -- not initDeclarator with empty brace initializer missing SEMI.
    initializer ::= EQ initializerClause
           | LPAREN expressionList RPAREN

    braceOrEqualInitializer ::= EQ initializerClause
           | bracedInitList

    initializerClause ::= assignmentExpression
           | bracedInitList

    initializerList ::= initializerClause opt_211 list_214

    bracedInitList ::= LBRACE opt_217 RBRACE

    className ::= IDENTIFIER
           | simpleTemplateId

    classSpecifier ::= classHead LBRACE opt_218 RBRACE

    classHead ::= classKey opt_219 opt_222 opt_223
           | UNION_ opt_224 opt_227

    classHeadName ::= opt_228 className

    classVirtSpecifier ::= FINAL_

    classKey ::= CLASS_
           | STRUCT_

    memberSpecification ::= list_230

    memberDeclaration ::= opt_231 opt_232 opt_233 SEMI
           | functionDefinition
           | usingDeclaration
           | staticAssertDeclaration
           | templateDeclaration
           | aliasDeclaration
           | emptyDeclaration_

    memberDeclaratorList ::= memberDeclarator list_235

    memberDeclarator ::= declarator grp_236
           | declarator
           | opt_237 opt_238 COLON constantExpression

    virtualSpecifierSeq ::= list_239

    virtualSpecifier ::= OVERRIDE_
           | FINAL_

    pureSpecifier ::= EQ NUMBER

    baseClause ::= COLON baseSpecifierList

    baseSpecifierList ::= baseSpecifier opt_240 list_243

    baseSpecifier ::= opt_244 grp_245

    classOrDeclType ::= opt_248 className
           | decltypeSpecifier

    baseTypeSpecifier ::= classOrDeclType

    accessSpecifier ::= PRIVATE_
           | PROTECTED_
           | PUBLIC_

    conversionFunctionId ::= OPERATOR_ conversionTypeId

    conversionTypeId ::= typeSpecifierSeq opt_249

    conversionDeclarator ::= pointerOperator opt_250

    constructorInitializer ::= COLON memInitializerList

    memInitializerList ::= memInitializer opt_251 list_254

    memInitializer ::= memInitializerId grp_255

    memInitializerId ::= classOrDeclType
           | IDENTIFIER

    operatorFunctionId ::= OPERATOR_ theOperator

    literalOperatorId ::= OPERATOR_ grp_257

    templateDeclaration ::= TEMPLATE_ LT templateParameterList GT declaration

    templateParameterList ::= templateParameter list_259

    templateParameter ::= typeParameter
           | parameterDeclaration

    typeParameter ::= grp_260 grp_263

    simpleTemplateId ::= templateName LT opt_267 GT

    templateId ::= simpleTemplateId
           | grp_268 LT opt_269 GT

    templateName ::= IDENTIFIER

    templateArgumentList ::= templateArgument opt_270 list_273

    templateArgument ::= theTypeId
           | constantExpression
           | idExpression

    typeNameSpecifier ::= TYPENAME_ nestedNameSpecifier grp_274

    explicitInstantiation ::= opt_276 TEMPLATE_ declaration

    explicitSpecialization ::= TEMPLATE_ LT GT declaration

    tryBlock ::= TRY_ compoundStatement handlerSeq

    functionTryBlock ::= TRY_ opt_277 compoundStatement handlerSeq

    handlerSeq ::= list_278

    handler ::= CATCH_ LPAREN exceptionDeclaration RPAREN compoundStatement

    exceptionDeclaration ::= opt_279 typeSpecifierSeq opt_281
           | ELLIPSIS

    throwExpression ::= THROW_ opt_282

    exceptionSpecification ::= dynamicExceptionSpecification
           | noExceptSpecification

    dynamicExceptionSpecification ::= THROW_ LPAREN opt_283 RPAREN

    typeIdList ::= theTypeId opt_284 list_287

    noExceptSpecification ::= NOEXCEPT_ LPAREN constantExpression RPAREN
           | NOEXCEPT_

    theOperator ::= NEW_ opt_289
           | DELETE_ opt_291
           | PLUS
           | MINUS
           | STAR
           | SLASH
           | PERCENT
           | CARET
           | AMP
           | PIPE
           | TILDE
           | BANG
           | EQ
           | GT
           | LT
           | GreaterEqual
           | PLUSEQ
           | MINUSEQ
           | STAREQ
           | SLASHEQ
           | PERCENTEQ
           | CARETEQ
           | AMPEQ
           | PIPEEQ
           | LT LT
           | GT GT
           | RSHIFTEQ
           | LSHIFTEQ
           | EQEQ
           | NOTEQ
           | LessEqual
           | ANDAND
           | OROR
           | PLUSPLUS
           | MINUSMINUS
           | COMMA
           | ARROWSTAR
           | ARROW
           | LPAREN RPAREN
           | LBRACKET RBRACKET

    literal ::= NUMBER
           | CHAR_LITERAL
           | STRING
           | BOOL_LITERAL
           | NULLPTR_LIT

    opt_1 ::= declarationSeq | $empty

    list_2 ::= literal | list_2 literal

    grp_3 ::= className | decltypeSpecifier

    opt_4 ::= TEMPLATE_ | $empty

    grp_5 ::= theTypeName | namespaceName | decltypeSpecifier

    opt_6 ::= grp_5 | $empty

    opt_8 ::= TEMPLATE_ | $empty

    grp_7 ::= IDENTIFIER | opt_8 simpleTemplateId

    opt_9 ::= lambdaDeclarator | $empty

    opt_10 ::= lambdaCapture | $empty

    seq_11 ::= COMMA captureList

    opt_12 ::= seq_11 | $empty

    seq_13 ::= COMMA capture

    list_14 ::= $empty | list_14 seq_13

    opt_15 ::= ELLIPSIS | $empty

    opt_16 ::= AMP | $empty

    opt_17 ::= AMP | $empty

    opt_18 ::= parameterDeclarationClause | $empty

    opt_19 ::= MUTABLE_ | $empty

    opt_20 ::= exceptionSpecification | $empty

    opt_21 ::= attributeSpecifierSeq | $empty

    opt_22 ::= trailingReturnType | $empty

    grp_23 ::= expression | bracedInitList

    opt_24 ::= expressionList | $empty

    grp_25 ::= simpleTypeSpecifier | typeNameSpecifier

    opt_27 ::= expressionList | $empty

    grp_26 ::= LPAREN opt_27 RPAREN | bracedInitList

    grp_28 ::= DOT | ARROW

    opt_30 ::= TEMPLATE_ | $empty

    grp_29 ::= opt_30 idExpression | pseudoDestructorName

    grp_31 ::= PLUSPLUS | MINUSMINUS

    grp_32 ::= DYNAMIC_CAST | STATIC_CAST | REINTERPRET_CAST | CONST_CAST

    grp_33 ::= expression | theTypeId

    opt_34 ::= nestedNameSpecifier | $empty

    seq_35 ::= theTypeName COLONCOLON

    opt_36 ::= seq_35 | $empty

    grp_37 ::= PLUSPLUS | MINUSMINUS | unaryOperator | SIZEOF_

    grp_38 ::= LPAREN theTypeId RPAREN | ELLIPSIS LPAREN IDENTIFIER RPAREN

    opt_39 ::= COLONCOLON | $empty

    opt_40 ::= newPlacement | $empty

    grp_41 ::= newTypeId | LPAREN theTypeId RPAREN

    opt_42 ::= newInitializer_ | $empty

    opt_43 ::= newDeclarator_ | $empty

    opt_44 ::= newDeclarator_ | $empty

    opt_45 ::= attributeSpecifierSeq | $empty

    opt_46 ::= attributeSpecifierSeq | $empty

    opt_47 ::= expressionList | $empty

    opt_48 ::= COLONCOLON | $empty

    seq_49 ::= LBRACKET RBRACKET

    opt_50 ::= seq_49 | $empty

    grp_52 ::= DOTSTAR | ARROWSTAR

    grp_51 ::= grp_52 castExpression

    list_53 ::= $empty | list_53 grp_51

    grp_55 ::= STAR | SLASH | PERCENT

    grp_54 ::= grp_55 pointerMemberExpression

    list_56 ::= $empty | list_56 grp_54

    grp_58 ::= PLUS | MINUS

    grp_57 ::= grp_58 multiplicativeExpression

    list_59 ::= $empty | list_59 grp_57

    seq_60 ::= shiftOperator additiveExpression

    list_61 ::= $empty | list_61 seq_60

    grp_63 ::= LT | GT | LessEqual | GreaterEqual

    grp_62 ::= grp_63 shiftExpression

    list_64 ::= $empty | list_64 grp_62

    grp_66 ::= EQEQ | NOTEQ

    grp_65 ::= grp_66 relationalExpression

    list_67 ::= $empty | list_67 grp_65

    seq_68 ::= AMP equalityExpression

    list_69 ::= $empty | list_69 seq_68

    seq_70 ::= CARET andExpression

    list_71 ::= $empty | list_71 seq_70

    seq_72 ::= PIPE exclusiveOrExpression

    list_73 ::= $empty | list_73 seq_72

    seq_74 ::= ANDAND inclusiveOrExpression

    list_75 ::= $empty | list_75 seq_74

    seq_76 ::= OROR logicalAndExpression

    list_77 ::= $empty | list_77 seq_76

    seq_78 ::= QUESTION expression COLON assignmentExpression

    opt_79 ::= seq_78 | $empty

    seq_80 ::= COMMA assignmentExpression

    list_81 ::= $empty | list_81 seq_80

    opt_82 ::= attributeSpecifierSeq | $empty

    grp_83 ::= expressionStatement | compoundStatement | selectionStatement | iterationStatement | jumpStatement | tryBlock

    opt_84 ::= attributeSpecifierSeq | $empty

    grp_85 ::= IDENTIFIER | CASE_ constantExpression | DEFAULT_

    opt_86 ::= expression | $empty

    opt_87 ::= statementSeq | $empty

    list_88 ::= statement | list_88 statement

    seq_89 ::= ELSE_ statement

    opt_90 ::= seq_89 | $empty

    opt_91 ::= attributeSpecifierSeq | $empty

    grp_92 ::= EQ initializerClause | bracedInitList

    opt_94 ::= condition | $empty

    opt_95 ::= expression | $empty

    grp_93 ::= forInitStatement opt_94 SEMI opt_95 | forRangeDeclaration COLON forRangeInitializer

    opt_96 ::= attributeSpecifierSeq | $empty

    grp_98 ::= expression | bracedInitList

    opt_99 ::= grp_98 | $empty

    grp_97 ::= BREAK_ | CONTINUE_ | RETURN_ opt_99 | GOTO_ IDENTIFIER

    list_100 ::= declaration | list_100 declaration

    opt_101 ::= attributeSpecifierSeq | $empty

    opt_102 ::= declSpecifierSeq | $empty

    opt_103 ::= initDeclaratorList | $empty

    opt_104 ::= declSpecifierSeq | $empty

    list_105 ::= declSpecifier | list_105 declSpecifier

    opt_106 ::= attributeSpecifierSeq | $empty

    list_107 ::= typeSpecifier | list_107 typeSpecifier

    opt_108 ::= attributeSpecifierSeq | $empty

    list_109 ::= trailingTypeSpecifier | list_109 trailingTypeSpecifier

    opt_110 ::= attributeSpecifierSeq | $empty

    opt_111 ::= nestedNameSpecifier | $empty

    grp_112 ::= expression | AUTO_

    opt_114 ::= attributeSpecifierSeq | $empty

    opt_115 ::= nestedNameSpecifier | $empty

    opt_116 ::= TEMPLATE_ | $empty

    grp_113 ::= opt_114 opt_115 IDENTIFIER | simpleTemplateId | nestedNameSpecifier opt_116 simpleTemplateId

    opt_117 ::= nestedNameSpecifier | $empty

    opt_118 ::= COMMA | $empty

    seq_119 ::= enumeratorList opt_118

    opt_120 ::= seq_119 | $empty

    opt_121 ::= attributeSpecifierSeq | $empty

    opt_122 ::= nestedNameSpecifier | $empty

    seq_123 ::= opt_122 IDENTIFIER

    opt_124 ::= seq_123 | $empty

    opt_125 ::= enumBase | $empty

    opt_126 ::= attributeSpecifierSeq | $empty

    opt_127 ::= enumBase | $empty

    grp_128 ::= CLASS_ | STRUCT_

    opt_129 ::= grp_128 | $empty

    seq_130 ::= COMMA enumeratorDefinition

    list_131 ::= $empty | list_131 seq_130

    seq_132 ::= EQ constantExpression

    opt_133 ::= seq_132 | $empty

    opt_134 ::= INLINE_ | $empty

    grp_135 ::= IDENTIFIER | originalNamespaceName

    opt_136 ::= grp_135 | $empty

    opt_137 ::= declarationSeq | $empty

    opt_138 ::= nestedNameSpecifier | $empty

    opt_140 ::= TYPENAME_ | $empty

    grp_139 ::= opt_140 nestedNameSpecifier | COLONCOLON

    opt_141 ::= attributeSpecifierSeq | $empty

    opt_142 ::= nestedNameSpecifier | $empty

    opt_144 ::= declarationSeq | $empty

    grp_143 ::= LBRACE opt_144 RBRACE | declaration

    list_145 ::= attributeSpecifier | list_145 attributeSpecifier

    opt_146 ::= attributeList | $empty

    grp_147 ::= theTypeId | constantExpression

    opt_148 ::= ELLIPSIS | $empty

    seq_149 ::= COMMA attribute

    list_150 ::= $empty | list_150 seq_149

    opt_151 ::= ELLIPSIS | $empty

    seq_152 ::= attributeNamespace COLONCOLON

    opt_153 ::= seq_152 | $empty

    opt_154 ::= attributeArgumentClause | $empty

    opt_155 ::= balancedTokenSeq | $empty

    list_156 ::= balancedToken | list_156 balancedToken

    grp_157 ::= LPAREN | RPAREN | LBRACE | RBRACE | LBRACKET | RBRACKET

    list_158 ::= grp_157 | list_158 grp_157

    seq_159 ::= COMMA initDeclarator

    list_160 ::= $empty | list_160 seq_159

    opt_161 ::= initializer | $empty

    opt_162 ::= CONST_ | $empty

    seq_163 ::= pointerOperator opt_162

    list_164 ::= $empty | list_164 seq_163

    opt_165 ::= attributeSpecifierSeq | $empty

    opt_167 ::= constantExpression | $empty

    opt_168 ::= attributeSpecifierSeq | $empty

    grp_166 ::= parametersAndQualifiers | LBRACKET opt_167 RBRACKET opt_168

    opt_169 ::= parameterDeclarationClause | $empty

    opt_170 ::= cvQualifierSeq | $empty

    opt_171 ::= refQualifier | $empty

    opt_172 ::= exceptionSpecification | $empty

    opt_173 ::= attributeSpecifierSeq | $empty

    opt_174 ::= abstractDeclarator | $empty

    grp_175 ::= AMP | ANDAND

    opt_176 ::= attributeSpecifierSeq | $empty

    opt_177 ::= nestedNameSpecifier | $empty

    opt_178 ::= attributeSpecifierSeq | $empty

    opt_179 ::= cvQualifierSeq | $empty

    list_180 ::= cvQualifier | list_180 cvQualifier

    opt_181 ::= ELLIPSIS | $empty

    opt_182 ::= abstractDeclarator | $empty

    opt_183 ::= noPointerAbstractDeclarator | $empty

    list_184 ::= $empty | list_184 pointerOperator

    grp_185 ::= noPointerAbstractDeclarator | pointerOperator

    grp_186 ::= parametersAndQualifiers | LPAREN pointerAbstractDeclarator RPAREN

    opt_188 ::= constantExpression | $empty

    opt_189 ::= attributeSpecifierSeq | $empty

    grp_187 ::= parametersAndQualifiers | LBRACKET opt_188 RBRACKET opt_189

    list_190 ::= $empty | list_190 grp_187

    list_191 ::= $empty | list_191 pointerOperator

    opt_193 ::= constantExpression | $empty

    opt_194 ::= attributeSpecifierSeq | $empty

    grp_192 ::= parametersAndQualifiers | LBRACKET opt_193 RBRACKET opt_194

    list_195 ::= $empty | list_195 grp_192

    opt_196 ::= COMMA | $empty

    seq_197 ::= opt_196 ELLIPSIS

    opt_198 ::= seq_197 | $empty

    seq_199 ::= COMMA parameterDeclaration

    list_200 ::= $empty | list_200 seq_199

    opt_201 ::= attributeSpecifierSeq | $empty

    opt_203 ::= abstractDeclarator | $empty

    grp_202 ::= declarator | opt_203

    seq_204 ::= EQ initializerClause

    opt_205 ::= seq_204 | $empty

    opt_206 ::= attributeSpecifierSeq | $empty

    opt_207 ::= declSpecifierSeq | $empty

    opt_208 ::= virtualSpecifierSeq | $empty

    opt_209 ::= constructorInitializer | $empty

    grp_210 ::= DEFAULT_ | DELETE_

    opt_211 ::= ELLIPSIS | $empty

    opt_212 ::= ELLIPSIS | $empty

    seq_213 ::= COMMA initializerClause opt_212

    list_214 ::= $empty | list_214 seq_213

    opt_215 ::= COMMA | $empty

    seq_216 ::= initializerList opt_215

    opt_217 ::= seq_216 | $empty

    opt_218 ::= memberSpecification | $empty

    opt_219 ::= attributeSpecifierSeq | $empty

    opt_220 ::= classVirtSpecifier | $empty

    seq_221 ::= classHeadName opt_220

    opt_222 ::= seq_221 | $empty

    opt_223 ::= baseClause | $empty

    opt_224 ::= attributeSpecifierSeq | $empty

    opt_225 ::= classVirtSpecifier | $empty

    seq_226 ::= classHeadName opt_225

    opt_227 ::= seq_226 | $empty

    opt_228 ::= nestedNameSpecifier | $empty

    grp_229 ::= memberDeclaration | accessSpecifier COLON

    list_230 ::= grp_229 | list_230 grp_229

    opt_231 ::= attributeSpecifierSeq | $empty

    opt_232 ::= declSpecifierSeq | $empty

    opt_233 ::= memberDeclaratorList | $empty

    seq_234 ::= COMMA memberDeclarator

    list_235 ::= $empty | list_235 seq_234

    grp_236 ::= virtualSpecifierSeq | pureSpecifier | virtualSpecifierSeq pureSpecifier | braceOrEqualInitializer

    opt_237 ::= IDENTIFIER | $empty

    opt_238 ::= attributeSpecifierSeq | $empty

    list_239 ::= virtualSpecifier | list_239 virtualSpecifier

    opt_240 ::= ELLIPSIS | $empty

    opt_241 ::= ELLIPSIS | $empty

    seq_242 ::= COMMA baseSpecifier opt_241

    list_243 ::= $empty | list_243 seq_242

    opt_244 ::= attributeSpecifierSeq | $empty

    opt_246 ::= accessSpecifier | $empty

    opt_247 ::= VIRTUAL_ | $empty

    grp_245 ::= baseTypeSpecifier | VIRTUAL_ opt_246 baseTypeSpecifier | accessSpecifier opt_247 baseTypeSpecifier

    opt_248 ::= nestedNameSpecifier | $empty

    opt_249 ::= conversionDeclarator | $empty

    opt_250 ::= conversionDeclarator | $empty

    opt_251 ::= ELLIPSIS | $empty

    opt_252 ::= ELLIPSIS | $empty

    seq_253 ::= COMMA memInitializer opt_252

    list_254 ::= $empty | list_254 seq_253

    opt_256 ::= expressionList | $empty

    grp_255 ::= LPAREN opt_256 RPAREN | bracedInitList

    grp_257 ::= STRING IDENTIFIER | UserDefinedStringLiteral

    seq_258 ::= COMMA templateParameter

    list_259 ::= $empty | list_259 seq_258

    seq_261 ::= TEMPLATE_ LT templateParameterList GT

    opt_262 ::= seq_261 | $empty

    grp_260 ::= opt_262 CLASS_ | TYPENAME_

    opt_264 ::= ELLIPSIS | $empty

    opt_265 ::= IDENTIFIER | $empty

    opt_266 ::= IDENTIFIER | $empty

    grp_263 ::= opt_264 opt_265 | opt_266 EQ theTypeId

    opt_267 ::= templateArgumentList | $empty

    grp_268 ::= operatorFunctionId | literalOperatorId

    opt_269 ::= templateArgumentList | $empty

    opt_270 ::= ELLIPSIS | $empty

    opt_271 ::= ELLIPSIS | $empty

    seq_272 ::= COMMA templateArgument opt_271

    list_273 ::= $empty | list_273 seq_272

    opt_275 ::= TEMPLATE_ | $empty

    grp_274 ::= IDENTIFIER | opt_275 simpleTemplateId

    opt_276 ::= EXTERN_ | $empty

    opt_277 ::= constructorInitializer | $empty

    list_278 ::= handler | list_278 handler

    opt_279 ::= attributeSpecifierSeq | $empty

    grp_280 ::= declarator | abstractDeclarator

    opt_281 ::= grp_280 | $empty

    opt_282 ::= assignmentExpression | $empty

    opt_283 ::= typeIdList | $empty

    opt_284 ::= ELLIPSIS | $empty

    opt_285 ::= ELLIPSIS | $empty

    seq_286 ::= COMMA theTypeId opt_285

    list_287 ::= $empty | list_287 seq_286

    seq_288 ::= LBRACKET RBRACKET

    opt_289 ::= seq_288 | $empty

    seq_290 ::= LBRACKET RBRACKET

    opt_291 ::= seq_290 | $empty

%End
