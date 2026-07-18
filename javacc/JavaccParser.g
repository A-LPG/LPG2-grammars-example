-- AUTO-GENERATED from antlr/grammars-v4 javacc by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=JavaccParser
%options package=lpg.grammars.javacc
%options template=dtParserTemplateF.gi
%options import_terminals=JavaccLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    javacc_input
%End

%Rules
    runsignedshift ::= GT GT GT

    rsignedshift ::= GT GT

    javacc_input ::= javacc_options _PARSER_BEGIN_ OP_47131 identifier OP_50862 compilationUnit _PARSER_END_ OP_47131 identifier OP_50862 list_1

    javacc_options ::= opt_3

    option_binding ::= grp_4 OP_71408 grp_5 OP_83965

    stringList ::= OP_47131 stringLiteral list_7 OP_50862

    production ::= javacode_production
           | cppcode_production
           | regular_expr_production
           | token_manager_decls
           | bnf_production

    javacode_production ::= _JAVACODE_ resultType identifier formalParameters opt_11 opt_12 block

    cppcode_production ::= _CPPCODE_ accessModifier resultType identifier formalParameters opt_16 block

    bnf_production ::= resultType identifier formalParameters opt_20 opt_21 OP_97517 block LIT_83859

    accessModifier ::= opt_23

    regular_expr_production ::= opt_27 regexpr_kind opt_29 OP_97517 LIT_83859

    token_manager_decls ::= _TOKEN_MGR_DECLS_ OP_97517 opt_30

    regexpr_kind ::= _TOKEN_
           | _SPECIAL_TOKEN_
           | _SKIP_
           | _MORE_

    regexpr_spec ::= regular_expression opt_31 opt_33

    expansion_choices ::= expansion list_35

    expansion ::= opt_37 list_40

    local_lookahead ::= opt_41 opt_42 opt_43 opt_44 opt_45

    expansion_unit ::= _LOOKAHEAD_ OP_47131 local_lookahead OP_50862
           | block
           | OP_48184 expansion_choices OP_43701
           | _TRY_ LIT_83859 list_49 opt_51
           | opt_53 grp_54
           | OP_47131 expansion_choices OP_50862 opt_59

    regular_expression ::= stringLiteral
           | LT opt_62 complex_regular_expression_choices GT
           | OP_47647 identifier OP_47054
           | OP_47647 _EOF_ OP_47054

    complex_regular_expression_choices ::= complex_regular_expression list_64

    complex_regular_expression ::= list_65

    complex_regular_expression_unit ::= stringLiteral
           | OP_47647 identifier OP_47054
           | character_list
           | OP_47131 complex_regular_expression_choices OP_50862 opt_67

    character_list ::= opt_68 OP_48184 opt_72 OP_43701

    character_descriptor ::= stringLiteral opt_74

    identifier ::= IDENTIFIER

    node_descriptor ::= OP_89694 grp_75 opt_78

    node_descriptor_expression ::= OP_47131
           | OP_47131 node_descriptor_expression OP_50862

    javaIdentifier ::= grp_79

    compilationUnit ::= opt_80 list_81 list_82

    packageDeclaration ::= modifiers _PACKAGE_ name OP_83965

    importDeclaration ::= LIT_83859

    modifiers ::= list_85

    typeDeclaration ::= OP_83965
           | modifiers grp_86

    classOrInterfaceDeclaration ::= grp_87 javaIdentifier opt_88 opt_89 opt_90 classOrInterfaceBody

    extendsList ::= _EXTENDS_ classOrInterfaceType list_92

    implementsList ::= _IMPLEMENTS_ classOrInterfaceType list_94

    enumDeclaration ::= _ENUM_ javaIdentifier opt_95 enumBody

    enumBody ::= LIT_83859

    enumConstant ::= modifiers javaIdentifier opt_96 opt_97

    typeParameters ::= OP_47647 typeParameter list_99 OP_47054

    typeParameter ::= javaIdentifier opt_100

    typeBound ::= _EXTENDS_ classOrInterfaceType list_102

    classOrInterfaceBody ::= LIT_83859

    classOrInterfaceBodyDeclaration ::= initializer
           | modifiers grp_103
           | OP_83965

    fieldDeclaration ::= type variableDeclarator list_105 OP_83965

    variableDeclarator ::= variableDeclaratorId opt_107

    variableDeclaratorId ::= javaIdentifier list_109

    variableInitializer ::= arrayInitializer
           | expression

    arrayInitializer ::= LIT_83859

    methodDeclaration ::= opt_110 resultType methodDeclarator opt_112 grp_113

    methodDeclarator ::= javaIdentifier formalParameters list_115

    formalParameters ::= OP_47131 opt_119 OP_50862

    formalParameter ::= modifiers type opt_122 variableDeclaratorId

    constructorDeclaration ::= opt_123 javaIdentifier formalParameters opt_125 LIT_83859

    explicitConstructorInvocation ::= _THIS_ arguments OP_83965
           | opt_127 _SUPER_ arguments OP_83965

    initializer ::= opt_128 block

    type ::= referenceType
           | primitiveType

    referenceType ::= primitiveType list_130
           | seq_132 list_134

    template ::= _TEMPLATE_ OP_47647 templateBase list_136 OP_47054

    templateBase ::= templatePack opt_137 IDENTIFIER

    templatePack ::= _CLASS_
           | _TYPENAME_

    classOrInterfaceType ::= opt_138 IDENTIFIER opt_139 list_143

    typeArguments ::= OP_47647 opt_148 OP_47054

    typeArgument ::= referenceType
           | OP_70700 opt_149

    wildcardBounds ::= _EXTENDS_ referenceType
           | _SUPER_ referenceType

    primitiveType ::= _BOOLEAN_
           | _CHAR_
           | _BYTE_
           | _SHORT_
           | _INT_
           | _LONG_
           | _FLOAT_
           | _DOUBLE_

    resultType ::= grp_150

    name ::= javaIdentifier list_156

    nameList ::= name list_158

    expression ::= conditionalExpression opt_160

    assignmentOperator ::= OP_71408
           | OP_4999
           | OP_37746
           | OP_77930
           | OP_90669
           | OP_46464
           | OP_80307
           | OP_36984
           | OP_47757
           | OP_56685
           | OP_43667
           | OP_24129

    conditionalExpression ::= conditionalOrExpression opt_162

    conditionalOrExpression ::= conditionalAndExpression list_164

    conditionalAndExpression ::= inclusiveOrExpression list_166

    inclusiveOrExpression ::= exclusiveOrExpression list_168

    exclusiveOrExpression ::= andExpression list_170

    andExpression ::= equalityExpression list_172

    equalityExpression ::= instanceOfExpression list_175

    instanceOfExpression ::= relationalExpression opt_177

    relationalExpression ::= shiftExpression list_180

    shiftExpression ::= additiveExpression list_183

    additiveExpression ::= multiplicativeExpression list_186

    multiplicativeExpression ::= unaryExpression list_189

    unaryExpression ::= grp_190 unaryExpression
           | preIncrementExpression
           | preDecrementExpression
           | unaryExpressionNotPlusMinus

    preIncrementExpression ::= OP_63090 primaryExpression

    preDecrementExpression ::= OP_10792 primaryExpression

    unaryExpressionNotPlusMinus ::= grp_191 unaryExpression
           | castExpression
           | postfixExpression

    castLookahead ::= OP_47131 primitiveType
           | OP_47131 type OP_48184 OP_43701
           | OP_47131 type OP_50862 grp_192

    postfixExpression ::= primaryExpression opt_194

    castExpression ::= OP_47131 type OP_50862 unaryExpression
           | OP_47131 type OP_50862 unaryExpressionNotPlusMinus

    primaryExpression ::= primaryPrefix list_195

    memberSelector ::= OP_99395 typeArguments javaIdentifier

    primaryPrefix ::= literal
           | _THIS_
           | _SUPER_ OP_99395 javaIdentifier
           | OP_47131 expression OP_50862
           | allocationExpression
           | resultType OP_99395 _CLASS_
           | name

    primarySuffix ::= OP_99395 _THIS_
           | OP_99395 allocationExpression
           | memberSelector
           | OP_48184 expression OP_43701
           | OP_99395 javaIdentifier
           | arguments

    literal ::= INTEGER_LITERAL
           | FLOATING_POINT_LITERAL
           | CHARACTER_LITERAL
           | STRING_LITERAL
           | booleanLiteral
           | nullLiteral

    integerLiteral ::= INTEGER_LITERAL

    booleanLiteral ::= _TRUE_
           | _FALSE_

    stringLiteral ::= STRING_LITERAL

    nullLiteral ::= _NULL_

    arguments ::= OP_47131 opt_196 OP_50862

    argumentList ::= expression list_198

    allocationExpression ::= _NEW_ primitiveType arrayDimsAndInits
           | _NEW_ classOrInterfaceType opt_199 grp_200

    arrayDimsAndInits ::= list_203 list_205
           | list_207 arrayInitializer

    statement ::= labeledStatement
           | assertStatement
           | block
           | emptyStatement_
           | statementExpression OP_83965
           | switchStatement
           | ifStatement
           | whileStatement
           | doStatement
           | forStatement
           | breakStatement
           | continueStatement
           | returnStatement
           | throwStatement
           | synchronizedStatement
           | tryStatement

    assertStatement ::= _ASSERT_ expression opt_209 OP_83965

    labeledStatement ::= javaIdentifier OP_97517 statement

    block ::= LIT_83859

    blockStatement ::= localVariableDeclaration OP_83965
           | statement
           | classOrInterfaceDeclaration

    localVariableDeclaration ::= modifiers type variableDeclarator list_211

    emptyStatement_ ::= OP_83965

    statementExpression ::= preIncrementExpression
           | preDecrementExpression
           | primaryExpression opt_213

    switchStatement ::= _SWITCH_ OP_47131 expression OP_50862 LIT_83859

    switchLabel ::= _CASE_ expression OP_97517
           | _DEFAULT_ OP_97517

    ifStatement ::= _IF_ OP_47131 expression OP_50862 statement opt_215

    whileStatement ::= _WHILE_ OP_47131 expression OP_50862 statement

    doStatement ::= _DO_ statement _WHILE_ OP_47131 expression OP_50862 OP_83965

    forStatement ::= _FOR_ OP_47131 grp_216 OP_50862 statement

    forInit ::= localVariableDeclaration
           | statementExpressionList

    statementExpressionList ::= statementExpression list_221

    forUpdate ::= statementExpressionList

    breakStatement ::= _BREAK_ opt_222 OP_83965

    continueStatement ::= _CONTINUE_ opt_223 OP_83965

    returnStatement ::= _RETURN_ opt_224 OP_83965

    throwStatement ::= _THROW_ expression OP_83965

    synchronizedStatement ::= _SYNCHRONIZED_ OP_47131 expression OP_50862 block

    resourceDeclaration ::= type variableDeclaratorId OP_71408 expression

    catchParameter ::= modifiers type opt_227 list_229 variableDeclaratorId

    tryStatement ::= _TRY_ opt_234 block list_236 opt_238

    annotation ::= normalAnnotation
           | singleMemberAnnotation
           | markerAnnotation

    normalAnnotation ::= OP_35412 name OP_47131 opt_239 OP_50862

    markerAnnotation ::= OP_35412 name

    singleMemberAnnotation ::= OP_35412 name OP_47131 memberValue OP_50862

    memberValuePairs ::= memberValuePair list_241

    memberValuePair ::= javaIdentifier OP_71408 memberValue

    memberValue ::= annotation
           | memberValueArrayInitializer
           | conditionalExpression

    memberValueArrayInitializer ::= LIT_83859

    annotationTypeDeclaration ::= OP_35412 _INTERFACE_ javaIdentifier annotationTypeBody

    annotationTypeBody ::= LIT_83859

    annotationTypeMemberDeclaration ::= modifiers grp_242
           | OP_83965

    defaultValue ::= _DEFAULT memberValue

    list_1 ::= production | list_1 production

    seq_2 ::= IDENTIFIER LIT_83859

    opt_3 ::= seq_2 | $empty

    grp_4 ::= IDENTIFIER | _LOOKAHEAD_ | _IGNORE_CASE_ | _STATIC_ | _PARSER_BEGIN_

    grp_5 ::= integerLiteral | booleanLiteral | stringLiteral | stringList

    seq_6 ::= OP_63968 stringLiteral

    list_7 ::= $empty | list_7 seq_6

    seq_8 ::= OP_63968 name

    list_9 ::= $empty | list_9 seq_8

    seq_10 ::= _THROWS_ name list_9

    opt_11 ::= seq_10 | $empty

    opt_12 ::= node_descriptor | $empty

    seq_13 ::= OP_63968 name

    list_14 ::= $empty | list_14 seq_13

    seq_15 ::= _THROWS_ name list_14

    opt_16 ::= seq_15 | $empty

    seq_17 ::= OP_63968 name

    list_18 ::= $empty | list_18 seq_17

    seq_19 ::= _THROWS_ name list_18

    opt_20 ::= seq_19 | $empty

    opt_21 ::= node_descriptor | $empty

    grp_22 ::= _PUBLIC_ | _PROTECTED_ | _PRIVATE_

    opt_23 ::= grp_22 | $empty

    seq_25 ::= OP_63968 IDENTIFIER

    list_26 ::= $empty | list_26 seq_25

    grp_24 ::= OP_47647 OP_58697 OP_47054 | OP_47647 IDENTIFIER list_26 OP_47054

    opt_27 ::= grp_24 | $empty

    seq_28 ::= OP_48184 _IGNORE_CASE_ OP_43701

    opt_29 ::= seq_28 | $empty

    opt_30 ::= classOrInterfaceBody | $empty

    opt_31 ::= block | $empty

    seq_32 ::= OP_97517 IDENTIFIER

    opt_33 ::= seq_32 | $empty

    grp_34 ::= OP_12055 expansion

    list_35 ::= $empty | list_35 grp_34

    seq_36 ::= _LOOKAHEAD_ OP_47131 local_lookahead OP_50862

    opt_37 ::= seq_36 | $empty

    opt_38 ::= node_descriptor | $empty

    seq_39 ::= expansion_unit opt_38

    list_40 ::= seq_39 | list_40 seq_39

    opt_41 ::= integerLiteral | $empty

    opt_42 ::= OP_63968 | $empty

    opt_43 ::= expansion_choices | $empty

    opt_44 ::= OP_63968 | $empty

    opt_45 ::= LIT_83859 | $empty

    seq_46 ::= name IDENTIFIER

    opt_47 ::= seq_46 | $empty

    seq_48 ::= _CATCH_ OP_47131 opt_47 OP_50862 block

    list_49 ::= $empty | list_49 seq_48

    seq_50 ::= _FINALLY_ block

    opt_51 ::= seq_50 | $empty

    seq_52 ::= primaryExpression OP_71408

    opt_53 ::= seq_52 | $empty

    opt_55 ::= typeArguments | $empty

    seq_56 ::= OP_99395 IDENTIFIER

    opt_57 ::= seq_56 | $empty

    grp_54 ::= identifier opt_55 arguments | regular_expression opt_57

    grp_58 ::= OP_24064 | OP_58697 | OP_70700

    opt_59 ::= grp_58 | $empty

    opt_60 ::= OP_89694 | $empty

    seq_61 ::= opt_60 identifier OP_97517

    opt_62 ::= seq_61 | $empty

    grp_63 ::= OP_12055 complex_regular_expression

    list_64 ::= $empty | list_64 grp_63

    list_65 ::= complex_regular_expression_unit | list_65 complex_regular_expression_unit

    grp_66 ::= OP_24064 | OP_58697 | OP_70700 | LIT_83859

    opt_67 ::= grp_66 | $empty

    opt_68 ::= OP_4452 | $empty

    seq_69 ::= OP_63968 character_descriptor

    list_70 ::= $empty | list_70 seq_69

    seq_71 ::= character_descriptor list_70

    opt_72 ::= seq_71 | $empty

    seq_73 ::= OP_38267 stringLiteral

    opt_74 ::= seq_73 | $empty

    grp_75 ::= IDENTIFIER | VOID

    opt_76 ::= OP_47054 | $empty

    seq_77 ::= OP_47131 opt_76 node_descriptor_expression OP_50862

    opt_78 ::= seq_77 | $empty

    grp_79 ::= IDENTIFIER | _LOOKAHEAD_ | _IGNORE_CASE_ | _PARSER_BEGIN_ | _PARSER_END_ | _JAVACODE_ | _TOKEN_ | _SPECIAL_TOKEN_ | _MORE_ | _SKIP_ | _TOKEN_MGR_DECLS_ | _EOF_ | _TEMPLATE_ | _DCL_PARSER_BEGIN_ | _DCL_PARSER_END_ | _INC_PARSER_BEGIN_ | _INC_PARSER_END_ | _DEF_PARSER_BEGIN_ | _DEF_PARSER_END_

    opt_80 ::= packageDeclaration | $empty

    list_81 ::= $empty | list_81 importDeclaration

    list_82 ::= $empty | list_82 typeDeclaration

    grp_84 ::= _PUBLIC_ | _STATIC_ | _PROTECTED_ | _PRIVATE_ | _FINAL_ | _ABSTRACT_ | _SYNCHRONIZED_ | _NATIVE_ | _TRANSIENT_ | _VOLATILE_ | _STRICTFP_ | annotation

    grp_83 ::= grp_84

    list_85 ::= $empty | list_85 grp_83

    grp_86 ::= classOrInterfaceDeclaration | enumDeclaration | annotationTypeDeclaration

    grp_87 ::= _CLASS_ | _INTERFACE_

    opt_88 ::= typeParameters | $empty

    opt_89 ::= extendsList | $empty

    opt_90 ::= implementsList | $empty

    seq_91 ::= OP_63968 classOrInterfaceType

    list_92 ::= $empty | list_92 seq_91

    seq_93 ::= OP_63968 classOrInterfaceType

    list_94 ::= $empty | list_94 seq_93

    opt_95 ::= implementsList | $empty

    opt_96 ::= arguments | $empty

    opt_97 ::= classOrInterfaceBody | $empty

    seq_98 ::= OP_63968 typeParameter

    list_99 ::= $empty | list_99 seq_98

    opt_100 ::= typeBound | $empty

    seq_101 ::= OP_87954 classOrInterfaceType

    list_102 ::= $empty | list_102 seq_101

    grp_103 ::= classOrInterfaceDeclaration | enumDeclaration | constructorDeclaration | fieldDeclaration | methodDeclaration

    seq_104 ::= OP_63968 variableDeclarator

    list_105 ::= $empty | list_105 seq_104

    seq_106 ::= OP_71408 variableInitializer

    opt_107 ::= seq_106 | $empty

    seq_108 ::= OP_48184 OP_43701

    list_109 ::= $empty | list_109 seq_108

    opt_110 ::= typeParameters | $empty

    seq_111 ::= _THROWS_ nameList

    opt_112 ::= seq_111 | $empty

    grp_113 ::= block | OP_83965

    seq_114 ::= OP_48184 OP_43701

    list_115 ::= $empty | list_115 seq_114

    seq_116 ::= OP_63968 formalParameter

    list_117 ::= $empty | list_117 seq_116

    seq_118 ::= formalParameter list_117

    opt_119 ::= seq_118 | $empty

    grp_121 ::= OP_87954 | OP_58697

    grp_120 ::= grp_121 | OP_41365

    opt_122 ::= grp_120 | $empty

    opt_123 ::= typeParameters | $empty

    seq_124 ::= _THROWS_ nameList

    opt_125 ::= seq_124 | $empty

    seq_126 ::= primaryExpression OP_99395

    opt_127 ::= seq_126 | $empty

    opt_128 ::= _STATIC_ | $empty

    seq_129 ::= OP_48184 OP_43701

    list_130 ::= seq_129 | list_130 seq_129

    opt_131 ::= template | $empty

    seq_132 ::= opt_131 classOrInterfaceType

    seq_133 ::= OP_48184 OP_43701

    list_134 ::= $empty | list_134 seq_133

    seq_135 ::= OP_63968 templateBase

    list_136 ::= $empty | list_136 seq_135

    opt_137 ::= OP_41365 | $empty

    opt_138 ::= OP_16069 | $empty

    opt_139 ::= typeArguments | $empty

    grp_141 ::= OP_99395 | OP_16069

    opt_142 ::= typeArguments | $empty

    grp_140 ::= grp_141 IDENTIFIER opt_142

    list_143 ::= $empty | list_143 grp_140

    opt_144 ::= OP_41365 | $empty

    seq_145 ::= OP_63968 typeArgument opt_144

    list_146 ::= $empty | list_146 seq_145

    seq_147 ::= typeArgument list_146

    opt_148 ::= seq_147 | $empty

    opt_149 ::= wildcardBounds | $empty

    opt_151 ::= OP_58697 | $empty

    opt_152 ::= _CONST_ | $empty

    grp_153 ::= OP_58697 | OP_87954

    opt_154 ::= grp_153 | $empty

    grp_150 ::= _VOID_ opt_151 | opt_152 type opt_154

    seq_155 ::= OP_99395 javaIdentifier

    list_156 ::= $empty | list_156 seq_155

    seq_157 ::= OP_63968 name

    list_158 ::= $empty | list_158 seq_157

    seq_159 ::= assignmentOperator expression

    opt_160 ::= seq_159 | $empty

    seq_161 ::= OP_70700 expression OP_97517 expression

    opt_162 ::= seq_161 | $empty

    grp_163 ::= OP_24261 conditionalAndExpression

    list_164 ::= $empty | list_164 grp_163

    seq_165 ::= OP_57012 inclusiveOrExpression

    list_166 ::= $empty | list_166 seq_165

    grp_167 ::= OP_12055 exclusiveOrExpression

    list_168 ::= $empty | list_168 grp_167

    seq_169 ::= OP_59057 andExpression

    list_170 ::= $empty | list_170 seq_169

    seq_171 ::= OP_87954 equalityExpression

    list_172 ::= $empty | list_172 seq_171

    grp_174 ::= OP_11552 | OP_45312

    grp_173 ::= grp_174 instanceOfExpression

    list_175 ::= $empty | list_175 grp_173

    seq_176 ::= _INSTANCEOF_ type

    opt_177 ::= seq_176 | $empty

    grp_179 ::= OP_47647 | OP_47054 | OP_56061 | OP_8579

    grp_178 ::= grp_179 shiftExpression

    list_180 ::= $empty | list_180 grp_178

    grp_182 ::= OP_64262 | rsignedshift | runsignedshift

    grp_181 ::= grp_182 additiveExpression

    list_183 ::= $empty | list_183 grp_181

    grp_185 ::= OP_24064 | OP_38267

    grp_184 ::= grp_185 multiplicativeExpression

    list_186 ::= $empty | list_186 grp_184

    grp_188 ::= OP_58697 | OP_34868 | OP_9904

    grp_187 ::= grp_188 unaryExpression

    list_189 ::= $empty | list_189 grp_187

    grp_190 ::= OP_24064 | OP_38267

    grp_191 ::= OP_4452 | OP_35296

    grp_192 ::= OP_4452 | OP_35296 | OP_47131 | javaIdentifier | _THIS_ | _SUPER_ | _NEW_ | literal

    grp_193 ::= OP_63090 | OP_10792

    opt_194 ::= grp_193 | $empty

    list_195 ::= $empty | list_195 primarySuffix

    opt_196 ::= argumentList | $empty

    seq_197 ::= OP_63968 expression

    list_198 ::= $empty | list_198 seq_197

    opt_199 ::= typeArguments | $empty

    opt_201 ::= classOrInterfaceBody | $empty

    grp_200 ::= arrayDimsAndInits | arguments opt_201

    seq_202 ::= OP_48184 expression OP_43701

    list_203 ::= seq_202 | list_203 seq_202

    seq_204 ::= OP_48184 OP_43701

    list_205 ::= $empty | list_205 seq_204

    seq_206 ::= OP_48184 OP_43701

    list_207 ::= seq_206 | list_207 seq_206

    seq_208 ::= OP_97517 expression

    opt_209 ::= seq_208 | $empty

    seq_210 ::= OP_63968 variableDeclarator

    list_211 ::= $empty | list_211 seq_210

    grp_212 ::= OP_63090 | OP_10792 | assignmentOperator expression

    opt_213 ::= grp_212 | $empty

    seq_214 ::= _ELSE_ statement

    opt_215 ::= seq_214 | $empty

    opt_217 ::= forInit | $empty

    opt_218 ::= expression | $empty

    opt_219 ::= forUpdate | $empty

    grp_216 ::= modifiers type javaIdentifier OP_97517 expression | opt_217 OP_83965 opt_218 OP_83965 opt_219

    seq_220 ::= OP_63968 statementExpression

    list_221 ::= $empty | list_221 seq_220

    opt_222 ::= javaIdentifier | $empty

    opt_223 ::= javaIdentifier | $empty

    opt_224 ::= expression | $empty

    grp_226 ::= OP_87954 | OP_58697

    grp_225 ::= grp_226 | OP_41365

    opt_227 ::= grp_225 | $empty

    grp_228 ::= OP_12055 type

    list_229 ::= $empty | list_229 grp_228

    seq_230 ::= OP_83965 resourceDeclaration

    list_231 ::= $empty | list_231 seq_230

    opt_232 ::= OP_83965 | $empty

    seq_233 ::= OP_47131 resourceDeclaration list_231 opt_232 OP_50862

    opt_234 ::= seq_233 | $empty

    seq_235 ::= _CATCH_ OP_47131 catchParameter OP_50862 block

    list_236 ::= $empty | list_236 seq_235

    seq_237 ::= _FINALLY_ block

    opt_238 ::= seq_237 | $empty

    opt_239 ::= memberValuePairs | $empty

    seq_240 ::= OP_63968 memberValuePair

    list_241 ::= $empty | list_241 seq_240

    opt_243 ::= defaultValue | $empty

    grp_242 ::= type javaIdentifier OP_47131 OP_50862 opt_243 OP_83965 | classOrInterfaceDeclaration | enumDeclaration | annotationTypeDeclaration | fieldDeclaration

%End
