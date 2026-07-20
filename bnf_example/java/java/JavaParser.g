-- AUTO-GENERATED from antlr/grammars-v4 java/java by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=JavaParser
%options package=lpg.grammars.java.java
%options template=dtParserTemplateF.gi
%options import_terminals=JavaLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    compilationUnit
%End

%Rules
    compilationUnit ::= opt_1 list_3 list_5
           | modularCompulationUnit

    modularCompulationUnit ::= list_6 moduleDeclaration

    packageDeclaration ::= list_7 PACKAGE qualifiedName SEMI

    importDeclaration ::= IMPORT opt_8 qualifiedName opt_10 SEMI

    typeDeclaration ::= list_11 grp_12

    modifier ::= classOrInterfaceModifier
           | NATIVE
           | SYNCHRONIZED
           | TRANSIENT
           | VOLATILE

    classOrInterfaceModifier ::= annotation
           | PUBLIC
           | PROTECTED
           | PRIVATE
           | STATIC
           | ABSTRACT
           | FINAL
           | STRICTFP
           | SEALED
           | NON_SEALED

    variableModifier ::= FINAL
           | annotation

    classDeclaration ::= CLASS identifier opt_13 opt_15 opt_17 opt_19 classBody

    typeParameters ::= LT typeParameter list_21 GT

    typeParameter ::= list_22 identifier opt_25

    typeBound ::= typeType list_27

    enumDeclaration ::= ENUM identifier opt_29 LBRACE opt_30 opt_31 opt_32 RBRACE

    enumConstants ::= enumConstant list_34

    enumConstant ::= list_35 identifier opt_36 opt_37

    enumBodyDeclarations ::= SEMI list_38

    interfaceDeclaration ::= INTERFACE identifier opt_39 opt_41 opt_43 interfaceBody

    classBody ::= LBRACE list_44 RBRACE

    interfaceBody ::= LBRACE list_45 RBRACE

    classBodyDeclaration ::= SEMI
           | opt_46 block
           | list_47 memberDeclaration

    memberDeclaration ::= recordDeclaration
           | methodDeclaration
           | genericMethodDeclaration
           | fieldDeclaration
           | constructorDeclaration
           | genericConstructorDeclaration
           | interfaceDeclaration
           | annotationTypeDeclaration
           | classDeclaration
           | enumDeclaration

    methodDeclaration ::= typeTypeOrVoid identifier formalParameters list_49 opt_51 methodBody

    methodBody ::= block
           | SEMI

    typeTypeOrVoid ::= typeType
           | VOID

    genericMethodDeclaration ::= typeParameters methodDeclaration

    genericConstructorDeclaration ::= typeParameters constructorDeclaration

    constructorDeclaration ::= identifier formalParameters opt_53 block

    compactConstructorDeclaration ::= list_54 identifier block

    fieldDeclaration ::= typeType variableDeclarators SEMI

    interfaceBodyDeclaration ::= list_55 interfaceMemberDeclaration
           | SEMI

    interfaceMemberDeclaration ::= recordDeclaration
           | constDeclaration
           | interfaceMethodDeclaration
           | genericInterfaceMethodDeclaration
           | interfaceDeclaration
           | annotationTypeDeclaration
           | classDeclaration
           | enumDeclaration

    constDeclaration ::= typeType constantDeclarator list_57 SEMI

    constantDeclarator ::= identifier list_59 EQ variableInitializer

    interfaceMethodDeclaration ::= list_60 interfaceCommonBodyDeclaration

    interfaceMethodModifier ::= annotation
           | PUBLIC
           | ABSTRACT
           | DEFAULT
           | STATIC
           | STRICTFP

    genericInterfaceMethodDeclaration ::= list_61 typeParameters interfaceCommonBodyDeclaration

    interfaceCommonBodyDeclaration ::= list_62 typeTypeOrVoid identifier formalParameters list_64 opt_66 methodBody

    variableDeclarators ::= variableDeclarator list_68

    variableDeclarator ::= variableDeclaratorId opt_70

    variableDeclaratorId ::= identifier list_72

    variableInitializer ::= arrayInitializer
           | expression

    arrayInitializer ::= LBRACE opt_77 RBRACE

    classType ::= typeIdentifier
           | classType DOT typeIdentifier

    packageName ::= identifier list_89

    typeArgument ::= typeType
           | list_90 QUESTION opt_93

    qualifiedNameList ::= qualifiedName list_95

    formalParameters ::= LPAREN opt_formals RPAREN

    receiverParameter ::= typeType list_102 THIS

    formalParameterList ::= formalParameter list_104

    formalParameter ::= list_105 typeType opt_108 variableDeclaratorId

    lambdaLVTIList ::= lambdaLVTIParameter list_110

    lambdaLVTIParameter ::= list_111 VAR identifier

    qualifiedName ::= identifier list_113

    literal ::= integerLiteral
           | floatLiteral
           | CHAR_LITERAL
           | STRING_LITERAL
           | BOOL_LITERAL
           | NULL_LITERAL
           | TEXT_BLOCK

    integerLiteral ::= DECIMAL_LITERAL
           | HEX_LITERAL
           | OCT_LITERAL
           | BINARY_LITERAL

    floatLiteral ::= FLOAT_LITERAL
           | HEX_FLOAT_LITERAL

    altAnnotationQualifiedName ::= list_115 AT identifier

    annotation ::= seq_116 opt_117

    annotationFieldValues ::= LPAREN opt_121 RPAREN

    annotationFieldValue ::= annotationValue
           | identifier EQ annotationValue

    annotationValue ::= expression
           | annotation
           | LBRACE opt_125 opt_126 RBRACE

    elementValue ::= expression
           | annotation
           | elementValueArrayInitializer

    elementValueArrayInitializer ::= LBRACE opt_130 opt_131 RBRACE

    annotationTypeDeclaration ::= AT INTERFACE identifier annotationTypeBody

    annotationTypeBody ::= LBRACE list_132 RBRACE

    annotationTypeElementDeclaration ::= list_133 annotationTypeElementRest
           | SEMI

    annotationTypeElementRest ::= typeType annotationMethodOrConstantRest SEMI
           | classDeclaration opt_134
           | interfaceDeclaration opt_135
           | enumDeclaration opt_136
           | annotationTypeDeclaration opt_137
           | recordDeclaration opt_138

    annotationMethodOrConstantRest ::= annotationMethodRest
           | annotationConstantRest

    annotationMethodRest ::= identifier LPAREN RPAREN opt_139

    annotationConstantRest ::= variableDeclarators

    defaultValue ::= DEFAULT elementValue

    moduleDeclaration ::= list_140 opt_141 MODULE qualifiedName LBRACE list_142 RBRACE

    moduleDirective ::= REQUIRES list_143 qualifiedName SEMI
           | EXPORTS qualifiedName opt_147 SEMI
           | OPENS qualifiedName opt_151 SEMI
           | USES qualifiedName SEMI
           | PROVIDES qualifiedName WITH qualifiedName list_153 SEMI

    requiresModifier ::= TRANSITIVE
           | STATIC

    recordDeclaration ::= RECORD identifier opt_154 recordHeader opt_156 recordBody

    recordHeader ::= LPAREN opt_157 RPAREN

    recordComponentList ::= recordComponent list_159

    recordComponent ::= list_160 typeType opt_163 identifier

    recordBody ::= LBRACE list_165 RBRACE

    block ::= LBRACE list_166 RBRACE

    blockStatement ::= typeType variableDeclarators SEMI
           | FINAL typeType variableDeclarators SEMI
           | localTypeDeclaration
           | statement

    localVariableDeclaration ::= list_167 grp_168

    identifier ::= IDENTIFIER

    typeIdentifier ::= IDENTIFIER

    localTypeDeclaration ::= list_169 grp_170

    statement ::= block
           | ASSERT expression opt_172 SEMI
           | IF LPAREN expression RPAREN statement opt_174
           | FOR LPAREN forControl RPAREN statement
           | WHILE LPAREN expression RPAREN statement
           | DO statement WHILE LPAREN expression RPAREN SEMI
           | TRY block grp_175
           | TRY resourceSpecification block list_178 opt_179
           | SWITCH LPAREN expression RPAREN LBRACE list_180 list_181 RBRACE
           | SYNCHRONIZED LPAREN expression RPAREN block
           | RETURN opt_182 SEMI
           | THROW expression SEMI
           | BREAK opt_183 SEMI
           | CONTINUE opt_184 SEMI
           | YIELD expression SEMI
           | SEMI
           | expression SEMI
           | switchExpression opt_185
           | identifier COLON statement

    catchClause ::= CATCH LPAREN list_186 catchType identifier RPAREN block

    catchType ::= qualifiedName list_188

    finallyBlock ::= FINALLY block

    resourceSpecification ::= LPAREN resources opt_189 RPAREN

    resources ::= resource list_191

    resource ::= list_192 grp_193 EQ expression
           | qualifiedName

    switchBlockStatementGroup ::= list_195 list_196

    switchLabel ::= CASE grp_197
           | DEFAULT

    forControl ::= enhancedForControl
           | opt_198 SEMI opt_199 SEMI opt_200

    forInit ::= forLocalVar
           | expressionList

    forLocalVar ::= list_167 grp_168

    enhancedForControl ::= list_201 grp_202 variableDeclaratorId COLON expression

    expressionList ::= expression list_204

    methodCall ::= grp_205 arguments

    expression ::= assignmentExpr

    assignmentExpr ::= conditionalExpr
           | conditionalExpr EQ assignmentExpr
           | conditionalExpr PLUSEQ assignmentExpr
           | conditionalExpr MINUSEQ assignmentExpr
           | conditionalExpr STAREQ assignmentExpr
           | conditionalExpr SLASHEQ assignmentExpr
           | conditionalExpr PERCENTEQ assignmentExpr
           | conditionalExpr AMPEQ assignmentExpr
           | conditionalExpr PIPEEQ assignmentExpr
           | conditionalExpr CARETEQ assignmentExpr

    conditionalExpr ::= orExpr
           | orExpr QUESTION expression COLON conditionalExpr

    orExpr ::= andExpr
           | orExpr OROR andExpr

    andExpr ::= bitOrExpr
           | andExpr ANDAND bitOrExpr

    bitOrExpr ::= bitXorExpr
           | bitOrExpr PIPE bitXorExpr

    bitXorExpr ::= bitAndExpr
           | bitXorExpr CARET bitAndExpr

    bitAndExpr ::= eqExpr
           | bitAndExpr AMP eqExpr

    eqExpr ::= relExpr
           | eqExpr EQEQ relExpr
           | eqExpr NOTEQ relExpr

    relExpr ::= shiftExpr
           | relExpr LT shiftExpr
           | relExpr GT shiftExpr
           | relExpr LTEQ shiftExpr
           | relExpr GTEQ shiftExpr
           | relExpr INSTANCEOF typeType

    shiftExpr ::= addExpr
           | shiftExpr LSHIFT addExpr
           | shiftExpr RSHIFT addExpr
           | shiftExpr URSHIFT addExpr

    addExpr ::= multExpr
           | addExpr PLUS multExpr
           | addExpr MINUS multExpr

    multExpr ::= unaryExpr
           | multExpr STAR unaryExpr
           | multExpr SLASH unaryExpr
           | multExpr PERCENT unaryExpr

    unaryExpr ::= PLUSPLUS unaryExpr
           | MINUSMINUS unaryExpr
           | PLUS unaryExpr
           | MINUS unaryExpr
           | TILDE unaryExpr
           | BANG unaryExpr
           | postfixExpr

    postfixExpr ::= primary
           | postfixExpr LBRACKET expression RBRACKET
           | postfixExpr DOT IDENTIFIER
           | postfixExpr DOT IDENTIFIER arguments
           | postfixExpr DOT methodCall
           | postfixExpr PLUSPLUS
           | postfixExpr MINUSMINUS
           | methodCall
           | NEW creator
           | lambdaExpression
           | switchExpression


    pattern ::= list_224 typeType list_225 variableDeclarators
           | typeType LPAREN opt_226 RPAREN

    componentPatternList ::= componentPattern list_228

    componentPattern ::= pattern

    lambdaExpression ::= lambdaParameters ARROW lambdaBody

    lambdaParameters ::= identifier
           | LPAREN opt_229 RPAREN
           | LPAREN identifier list_231 RPAREN
           | LPAREN opt_232 RPAREN

    lambdaBody ::= expression
           | block

    primary ::= LPAREN expression RPAREN
           | THIS
           | SUPER
           | literal
           | identifier
           | typeTypeOrVoid DOT CLASS
           | nonWildcardTypeArguments grp_233

    switchExpression ::= SWITCH LPAREN expression RPAREN LBRACE list_234 RBRACE

    switchLabeledRule ::= CASE grp_235 grp_241 switchRuleOutcome
           | DEFAULT grp_242 switchRuleOutcome

    guard ::= WHEN expression

    casePattern ::= pattern

    switchRuleOutcome ::= block
           | list_243

    classOrInterfaceType ::= classType

    creator ::= opt_244 createdName classCreatorRest
           | createdName arrayCreatorRest

    createdName ::= identifier opt_245 list_248
           | primitiveType

    innerCreator ::= identifier opt_249 classCreatorRest

    arrayCreatorRest ::= list_251 arrayInitializer
           | list_253 list_255

    classCreatorRest ::= arguments opt_256

    explicitGenericInvocation ::= nonWildcardTypeArguments explicitGenericInvocationSuffix

    typeArgumentsOrDiamond ::= LT GT
           | typeArguments

    nonWildcardTypeArgumentsOrDiamond ::= LT GT
           | nonWildcardTypeArguments

    nonWildcardTypeArguments ::= LT typeList GT

    typeList ::= typeType list_258

    typeType ::= primitiveType
           | classOrInterfaceType
           | typeType LBRACKET RBRACKET

    primitiveType ::= BOOLEAN
           | CHAR
           | BYTE
           | SHORT
           | INT
           | LONG
           | FLOAT
           | DOUBLE

    typeArguments ::= LT typeArgument list_265 GT

    superSuffix ::= arguments
           | DOT opt_266 identifier opt_267

    explicitGenericInvocationSuffix ::= SUPER superSuffix
           | identifier arguments

    arguments ::= LPAREN opt_268 RPAREN

    opt_1 ::= packageDeclaration | $empty

    grp_2 ::= importDeclaration | SEMI

    list_3 ::= $empty | list_3 grp_2

    grp_4 ::= typeDeclaration | SEMI

    list_5 ::= $empty | list_5 grp_4

    list_6 ::= $empty | list_6 importDeclaration

    list_7 ::= $empty | list_7 annotation

    opt_8 ::= STATIC | $empty

    seq_9 ::= DOT STAR

    opt_10 ::= seq_9 | $empty

    list_11 ::= $empty | list_11 classOrInterfaceModifier

    grp_12 ::= classDeclaration | enumDeclaration | interfaceDeclaration | annotationTypeDeclaration | recordDeclaration

    opt_13 ::= typeParameters | $empty

    seq_14 ::= EXTENDS typeType

    opt_15 ::= seq_14 | $empty

    seq_16 ::= IMPLEMENTS typeList

    opt_17 ::= seq_16 | $empty

    seq_18 ::= PERMITS typeList

    opt_19 ::= seq_18 | $empty

    seq_20 ::= COMMA typeParameter

    list_21 ::= $empty | list_21 seq_20

    list_22 ::= $empty | list_22 annotation

    list_23 ::= $empty | list_23 annotation

    seq_24 ::= EXTENDS list_23 typeBound

    opt_25 ::= seq_24 | $empty

    seq_26 ::= AMP typeType

    list_27 ::= $empty | list_27 seq_26

    seq_28 ::= IMPLEMENTS typeList

    opt_29 ::= seq_28 | $empty

    opt_30 ::= enumConstants | $empty

    opt_31 ::= COMMA | $empty

    opt_32 ::= enumBodyDeclarations | $empty

    seq_33 ::= COMMA enumConstant

    list_34 ::= $empty | list_34 seq_33

    list_35 ::= $empty | list_35 annotation

    opt_36 ::= arguments | $empty

    opt_37 ::= classBody | $empty

    list_38 ::= $empty | list_38 classBodyDeclaration

    opt_39 ::= typeParameters | $empty

    seq_40 ::= EXTENDS typeList

    opt_41 ::= seq_40 | $empty

    seq_42 ::= PERMITS typeList

    opt_43 ::= seq_42 | $empty

    list_44 ::= $empty | list_44 classBodyDeclaration

    list_45 ::= $empty | list_45 interfaceBodyDeclaration

    opt_46 ::= STATIC | $empty

    list_47 ::= $empty | list_47 modifier

    seq_48 ::= LBRACKET RBRACKET

    list_49 ::= $empty | list_49 seq_48

    seq_50 ::= THROWS qualifiedNameList

    opt_51 ::= seq_50 | $empty

    seq_52 ::= THROWS qualifiedNameList

    opt_53 ::= seq_52 | $empty

    list_54 ::= $empty | list_54 modifier

    list_55 ::= $empty | list_55 modifier

    seq_56 ::= COMMA constantDeclarator

    list_57 ::= $empty | list_57 seq_56

    seq_58 ::= LBRACKET RBRACKET

    list_59 ::= $empty | list_59 seq_58

    list_60 ::= $empty | list_60 interfaceMethodModifier

    list_61 ::= $empty | list_61 interfaceMethodModifier

    list_62 ::= $empty | list_62 annotation

    seq_63 ::= LBRACKET RBRACKET

    list_64 ::= $empty | list_64 seq_63

    seq_65 ::= THROWS qualifiedNameList

    opt_66 ::= seq_65 | $empty

    seq_67 ::= COMMA variableDeclarator

    list_68 ::= $empty | list_68 seq_67

    seq_69 ::= EQ variableInitializer

    opt_70 ::= seq_69 | $empty

    seq_71 ::= LBRACKET RBRACKET

    list_72 ::= $empty | list_72 seq_71

    seq_73 ::= COMMA variableInitializer

    list_74 ::= $empty | list_74 seq_73

    opt_75 ::= COMMA | $empty

    seq_76 ::= variableInitializer list_74 opt_75

    opt_77 ::= seq_76 | $empty

    list_78 ::= $empty | list_78 annotation

    seq_79 ::= packageName DOT list_78

    opt_80 ::= seq_79 | $empty

    opt_81 ::= typeArguments | $empty

    seq_82 ::= opt_80 typeIdentifier opt_81

    list_83 ::= seq_82 | list_83 seq_82

    list_84 ::= $empty | list_84 annotation

    opt_85 ::= typeArguments | $empty

    seq_86 ::= DOT list_84 typeIdentifier opt_85

    list_87 ::= $empty | list_87 seq_86

    seq_88 ::= DOT identifier

    list_89 ::= $empty | list_89 seq_88

    list_90 ::= $empty | list_90 annotation

    grp_92 ::= EXTENDS | SUPER

    grp_91 ::= grp_92 typeType

    opt_93 ::= grp_91 | $empty

    seq_94 ::= COMMA qualifiedName

    list_95 ::= $empty | list_95 seq_94

    grp_97 ::= receiverParameter | formalParameter

    seq_98 ::= COMMA formalParameterList

    list_99 ::= $empty | list_99 seq_98

    grp_96 ::= grp_97 list_99

    opt_100 ::= grp_96 | $empty

    seq_101 ::= identifier DOT

    list_102 ::= $empty | list_102 seq_101

    seq_103 ::= COMMA formalParameter

    list_104 ::= $empty | list_104 seq_103

    list_105 ::= $empty | list_105 variableModifier

    list_106 ::= $empty | list_106 annotation

    seq_107 ::= list_106 ELLIPSIS

    opt_108 ::= seq_107 | $empty

    seq_109 ::= COMMA lambdaLVTIParameter

    list_110 ::= $empty | list_110 seq_109

    list_111 ::= $empty | list_111 variableModifier

    seq_112 ::= DOT identifier

    list_113 ::= $empty | list_113 seq_112

    seq_114 ::= identifier DOT

    list_115 ::= $empty | list_115 seq_114

    seq_116 ::= AT qualifiedName

    opt_117 ::= annotationFieldValues | $empty

    seq_118 ::= COMMA annotationFieldValue

    list_119 ::= $empty | list_119 seq_118

    seq_120 ::= annotationFieldValue list_119

    opt_121 ::= seq_120 | $empty

    seq_122 ::= COMMA annotationValue

    list_123 ::= $empty | list_123 seq_122

    seq_124 ::= annotationValue list_123

    opt_125 ::= seq_124 | $empty

    opt_126 ::= COMMA | $empty

    seq_127 ::= COMMA elementValue

    list_128 ::= $empty | list_128 seq_127

    seq_129 ::= elementValue list_128

    opt_130 ::= seq_129 | $empty

    opt_131 ::= COMMA | $empty

    list_132 ::= $empty | list_132 annotationTypeElementDeclaration

    list_133 ::= $empty | list_133 modifier

    opt_134 ::= SEMI | $empty

    opt_135 ::= SEMI | $empty

    opt_136 ::= SEMI | $empty

    opt_137 ::= SEMI | $empty

    opt_138 ::= SEMI | $empty

    opt_139 ::= defaultValue | $empty

    list_140 ::= $empty | list_140 annotation

    opt_141 ::= OPEN | $empty

    list_142 ::= $empty | list_142 moduleDirective

    list_143 ::= $empty | list_143 requiresModifier

    seq_144 ::= COMMA qualifiedName

    list_145 ::= $empty | list_145 seq_144

    seq_146 ::= TO qualifiedName list_145

    opt_147 ::= seq_146 | $empty

    seq_148 ::= COMMA qualifiedName

    list_149 ::= $empty | list_149 seq_148

    seq_150 ::= TO qualifiedName list_149

    opt_151 ::= seq_150 | $empty

    seq_152 ::= COMMA qualifiedName

    list_153 ::= $empty | list_153 seq_152

    opt_154 ::= typeParameters | $empty

    seq_155 ::= IMPLEMENTS typeList

    opt_156 ::= seq_155 | $empty

    opt_157 ::= recordComponentList | $empty

    seq_158 ::= COMMA recordComponent

    list_159 ::= $empty | list_159 seq_158

    list_160 ::= $empty | list_160 annotation

    list_161 ::= $empty | list_161 annotation

    seq_162 ::= list_161 ELLIPSIS

    opt_163 ::= seq_162 | $empty

    grp_164 ::= classBodyDeclaration | compactConstructorDeclaration

    list_165 ::= $empty | list_165 grp_164

    list_166 ::= $empty | list_166 blockStatement

    list_167 ::= $empty | list_167 variableModifier

    grp_168 ::= VAR identifier EQ expression | typeType variableDeclarators

    list_169 ::= $empty | list_169 classOrInterfaceModifier

    grp_170 ::= classDeclaration | interfaceDeclaration | recordDeclaration | enumDeclaration

    seq_171 ::= COLON expression

    opt_172 ::= seq_171 | $empty

    seq_173 ::= ELSE statement

    opt_174 ::= seq_173 | $empty

    list_176 ::= catchClause | list_176 catchClause

    opt_177 ::= finallyBlock | $empty

    grp_175 ::= list_176 opt_177 | finallyBlock

    list_178 ::= $empty | list_178 catchClause

    opt_179 ::= finallyBlock | $empty

    list_180 ::= $empty | list_180 switchBlockStatementGroup

    list_181 ::= $empty | list_181 switchLabel

    opt_182 ::= expression | $empty

    opt_183 ::= identifier | $empty

    opt_184 ::= identifier | $empty

    opt_185 ::= SEMI | $empty

    list_186 ::= $empty | list_186 variableModifier

    grp_187 ::= PIPE qualifiedName

    list_188 ::= $empty | list_188 grp_187

    opt_189 ::= SEMI | $empty

    seq_190 ::= SEMI resource

    list_191 ::= $empty | list_191 seq_190

    list_192 ::= $empty | list_192 variableModifier

    grp_193 ::= classOrInterfaceType variableDeclaratorId | VAR identifier

    seq_194 ::= switchLabel COLON

    list_195 ::= seq_194 | list_195 seq_194

    list_196 ::= blockStatement | list_196 blockStatement

    grp_197 ::= expression | IDENTIFIER | typeType identifier

    opt_198 ::= forInit | $empty

    opt_199 ::= expression | $empty

    opt_200 ::= expressionList | $empty

    list_201 ::= $empty | list_201 variableModifier

    grp_202 ::= typeType | VAR

    seq_203 ::= COMMA expression

    list_204 ::= $empty | list_204 seq_203

    grp_205 ::= identifier | THIS | SUPER

    opt_207 ::= nonWildcardTypeArguments | $empty

    grp_206 ::= identifier | methodCall | THIS | NEW opt_207 innerCreator | SUPER superSuffix | explicitGenericInvocation

    opt_208 ::= typeArguments | $empty

    opt_210 ::= typeArguments | $empty

    grp_209 ::= opt_210 identifier | NEW

    opt_211 ::= typeArguments | $empty

    grp_212 ::= PLUSPLUS | MINUSMINUS

    grp_213 ::= PLUS | MINUS | PLUSPLUS | MINUSMINUS | TILDE | BANG

    list_214 ::= $empty | list_214 annotation

    seq_215 ::= AMP typeType

    list_216 ::= $empty | list_216 seq_215

    grp_217 ::= STAR | SLASH | PERCENT

    grp_218 ::= PLUS | MINUS

    grp_219 ::= LT LT | GT GT GT | GT GT

    grp_220 ::= LTEQ | GTEQ | GT | LT

    grp_221 ::= typeType | pattern

    grp_222 ::= EQEQ | NOTEQ

    grp_223 ::= EQ | PLUSEQ | MINUSEQ | STAREQ | SLASHEQ | AMPEQ | PIPEEQ | CARETEQ | RSHIFTEQ | URSHIFTEQ | LSHIFTEQ | PERCENTEQ

    list_224 ::= $empty | list_224 variableModifier

    list_225 ::= $empty | list_225 annotation

    opt_226 ::= componentPatternList | $empty

    seq_227 ::= COMMA componentPattern

    list_228 ::= $empty | list_228 seq_227

    opt_229 ::= formalParameterList | $empty

    seq_230 ::= COMMA identifier

    list_231 ::= $empty | list_231 seq_230

    opt_232 ::= lambdaLVTIList | $empty

    grp_233 ::= explicitGenericInvocationSuffix | THIS arguments

    list_234 ::= $empty | list_234 switchLabeledRule

    seq_236 ::= COMMA DEFAULT

    opt_237 ::= seq_236 | $empty

    seq_238 ::= COMMA casePattern

    list_239 ::= $empty | list_239 seq_238

    opt_240 ::= guard | $empty

    grp_235 ::= expressionList | NULL_LITERAL opt_237 | casePattern list_239 opt_240

    grp_241 ::= ARROW | COLON

    grp_242 ::= ARROW | COLON

    list_243 ::= $empty | list_243 blockStatement

    opt_244 ::= nonWildcardTypeArguments | $empty

    opt_245 ::= typeArgumentsOrDiamond | $empty

    opt_246 ::= typeArgumentsOrDiamond | $empty

    seq_247 ::= DOT identifier opt_246

    list_248 ::= $empty | list_248 seq_247

    opt_249 ::= nonWildcardTypeArgumentsOrDiamond | $empty

    seq_250 ::= LBRACKET RBRACKET

    list_251 ::= seq_250 | list_251 seq_250

    seq_252 ::= LBRACKET expression RBRACKET

    list_253 ::= seq_252 | list_253 seq_252

    seq_254 ::= LBRACKET RBRACKET

    list_255 ::= $empty | list_255 seq_254

    opt_256 ::= classBody | $empty

    seq_257 ::= COMMA typeType

    list_258 ::= $empty | list_258 seq_257

    list_259 ::= $empty | list_259 annotation

    grp_260 ::= classOrInterfaceType | primitiveType

    list_261 ::= $empty | list_261 annotation

    seq_262 ::= list_261 LBRACKET RBRACKET

    list_263 ::= $empty | list_263 seq_262

    seq_264 ::= COMMA typeArgument

    list_265 ::= $empty | list_265 seq_264

    opt_266 ::= typeArguments | $empty

    opt_267 ::= arguments | $empty

    opt_268 ::= expressionList | $empty

    opt_formals ::= $empty | formalParameterList

%End
