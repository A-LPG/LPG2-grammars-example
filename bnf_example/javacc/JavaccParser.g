-- AUTO-GENERATED from antlr/grammars-v4 javacc by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack
%Options fp=JavaccParser
%options package=lpg.grammars.javacc
%options template=btParserTemplateF.gi
%options import_terminals=JavaccLexer.gi
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
    javacc_input
%End

%Rules
    runsignedshift ::= GT GT GT

    rsignedshift ::= GT GT

    javacc_input ::= javacc_options PARSER_BEGIN LPAREN identifier RPAREN compilationUnit PARSER_END LPAREN identifier RPAREN list_1

    javacc_options ::= opt_3

    option_binding ::= grp_4 EQ grp_5 SEMI

    stringList ::= LPAREN stringLiteral list_7 RPAREN

    production ::= javacode_production
           | cppcode_production
           | regular_expr_production
           | token_manager_decls
           | bnf_production

    javacode_production ::= JAVACODE resultType identifier formalParameters opt_11 opt_12 block

    cppcode_production ::= CPPCODE accessModifier resultType identifier formalParameters opt_16 block

    bnf_production ::= resultType identifier formalParameters opt_20 opt_21 COLON block LBRACE

    accessModifier ::= opt_23

    regular_expr_production ::= opt_27 regexpr_kind opt_29 COLON LBRACE

    token_manager_decls ::= TOKENMGR_DECLS_ COLON opt_30

    regexpr_kind ::= TOKEN
           | _SPECIALTOKEN
           | _SKIP_
           | _MORE_

    regexpr_spec ::= regular_expression opt_31 opt_33

    expansion_choices ::= expansion list_35

    expansion ::= opt_37 list_40

    local_lookahead ::= opt_41 opt_42 opt_43 opt_44 opt_45

    expansion_unit ::= LOOKAHEAD LPAREN local_lookahead RPAREN
           | block
           | LBRACKET expansion_choices RBRACKET
           | TRY LBRACE list_49 opt_51
           | opt_53 grp_54
           | LPAREN expansion_choices RPAREN opt_59

    regular_expression ::= stringLiteral
           | LT opt_62 complex_regular_expression_choices GT
           | LT identifier GT
           | LT _EOF_ GT

    complex_regular_expression_choices ::= complex_regular_expression list_64

    complex_regular_expression ::= list_65

    complex_regular_expression_unit ::= stringLiteral
           | LT identifier GT
           | character_list
           | LPAREN complex_regular_expression_choices RPAREN opt_67

    character_list ::= opt_68 LBRACKET opt_72 RBRACKET

    character_descriptor ::= stringLiteral opt_74

    identifier ::= IDENTIFIER

    node_descriptor ::= LT grp_75 opt_78

    node_descriptor_expression ::= LPAREN
           | LPAREN node_descriptor_expression RPAREN

    javaIdentifier ::= grp_79

    compilationUnit ::= opt_80 list_81 list_82

    packageDeclaration ::= modifiers PACKAGE name SEMI

    importDeclaration ::= LBRACE

    modifiers ::= list_85

    typeDeclaration ::= SEMI
           | modifiers grp_86

    classOrInterfaceDeclaration ::= grp_87 javaIdentifier opt_88 opt_89 opt_90 classOrInterfaceBody

    extendsList ::= EXTENDS classOrInterfaceType list_92

    implementsList ::= IMPLEMENTS classOrInterfaceType list_94

    enumDeclaration ::= ENUM javaIdentifier opt_95 enumBody

    enumBody ::= LBRACE

    enumConstant ::= modifiers javaIdentifier opt_96 opt_97

    typeParameters ::= LT typeParameter list_99 GT

    typeParameter ::= javaIdentifier opt_100

    typeBound ::= EXTENDS classOrInterfaceType list_102

    classOrInterfaceBody ::= LBRACE list_244 RBRACE

    classOrInterfaceBodyDeclaration ::= initializer
           | modifiers grp_103
           | SEMI

    fieldDeclaration ::= type variableDeclarator list_105 SEMI

    variableDeclarator ::= variableDeclaratorId opt_107

    variableDeclaratorId ::= javaIdentifier list_109

    variableInitializer ::= arrayInitializer
           | expression

    arrayInitializer ::= LBRACE

    methodDeclaration ::= opt_110 resultType methodDeclarator opt_112 grp_113

    methodDeclarator ::= javaIdentifier formalParameters list_115

    formalParameters ::= LPAREN opt_119 RPAREN

    formalParameter ::= modifiers type opt_122 variableDeclaratorId

    constructorDeclaration ::= opt_123 javaIdentifier formalParameters opt_125 LBRACE

    explicitConstructorInvocation ::= THIS arguments SEMI
           | opt_127 SUPER arguments SEMI

    initializer ::= opt_128 block

    type ::= referenceType
           | primitiveType

    referenceType ::= primitiveType list_130
           | seq_132 list_134

    template ::= TEMPLATE LT templateBase list_136 GT

    templateBase ::= tplPack opt_137 IDENTIFIER

    tplPack ::= CLASS
           | TYPENAME

    classOrInterfaceType ::= opt_138 IDENTIFIER opt_139 list_143

    typeArguments ::= LT opt_148 GT

    typeArgument ::= referenceType
           | BANG opt_149

    wildcardBounds ::= EXTENDS referenceType
           | SUPER referenceType

    primitiveType ::= BOOLEAN
           | CHAR
           | BYTE
           | SHORT
           | INT
           | LONG
           | FLOAT
           | DOUBLE

    resultType ::= grp_150

    name ::= javaIdentifier list_156

    nameList ::= name list_158

    expression ::= conditionalExpression opt_160

    assignmentOperator ::= EQ
           | PLUSEQ
           | MINUSEQ
           | STAREQ
           | SLASHEQ
           | AMPEQ
           | PIPEEQ
           | CARETEQ
           | LSHIFTEQ
           | RSHIFTEQ
           | URSHIFTEQ
           | STARSTAREQ

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

    preIncrementExpression ::= PLUSPLUS primaryExpression

    preDecrementExpression ::= MINUSMINUS primaryExpression

    unaryExpressionNotPlusMinus ::= grp_191 unaryExpression
           | castExpression
           | postfixExpression

    castLookahead ::= LPAREN primitiveType
           | LPAREN type LBRACKET RBRACKET
           | LPAREN type RPAREN grp_192

    postfixExpression ::= primaryExpression opt_194

    castExpression ::= LPAREN type RPAREN unaryExpression
           | LPAREN type RPAREN unaryExpressionNotPlusMinus

    primaryExpression ::= primaryPrefix list_195

    memberSelector ::= DOT typeArguments javaIdentifier

    primaryPrefix ::= literal
           | THIS
           | SUPER DOT javaIdentifier
           | LPAREN expression RPAREN
           | allocationExpression
           | resultType DOT CLASS
           | name

    primarySuffix ::= DOT THIS
           | DOT allocationExpression
           | memberSelector
           | LBRACKET expression RBRACKET
           | DOT javaIdentifier
           | arguments

    literal ::= INTEGER_LITERAL
           | FLOATING_POINT_LITERAL
           | CHARACTER_LITERAL
           | STRING_LITERAL
           | boolLit
           | nullLit

    integerLiteral ::= INTEGER_LITERAL

    boolLit ::= TRUE
           | FALSE

    stringLiteral ::= STRING_LITERAL

    nullLit ::= NULL

    arguments ::= LPAREN opt_196 RPAREN

    argumentList ::= expression list_198

    allocationExpression ::= NEW primitiveType arrayDimsAndInits
           | NEW classOrInterfaceType opt_199 grp_200

    arrayDimsAndInits ::= list_203 list_205
           | list_207 arrayInitializer

    statement ::= labeledStatement
           | assertStatement
           | block
           | emptyStatement_
           | statementExpression SEMI
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

    assertStatement ::= ASSERT expression opt_209 SEMI

    labeledStatement ::= javaIdentifier COLON statement

    block ::= LBRACE list_245 RBRACE

    blockStatement ::= localVariableDeclaration SEMI
           | statement
           | classOrInterfaceDeclaration

    localVariableDeclaration ::= modifiers type variableDeclarator list_211

    emptyStatement_ ::= SEMI

    statementExpression ::= preIncrementExpression
           | preDecrementExpression
           | primaryExpression opt_213

    switchStatement ::= SWITCH LPAREN expression RPAREN LBRACE

    switchLabel ::= CASE expression COLON
           | DEFAULT COLON

    ifStatement ::= IF LPAREN expression RPAREN statement opt_215

    whileStatement ::= WHILE LPAREN expression RPAREN statement

    doStatement ::= DO statement WHILE LPAREN expression RPAREN SEMI

    forStatement ::= FOR LPAREN grp_216 RPAREN statement

    forInit ::= localVariableDeclaration
           | statementExpressionList

    statementExpressionList ::= statementExpression list_221

    forUpdate ::= statementExpressionList

    breakStatement ::= BREAK opt_222 SEMI

    continueStatement ::= CONTINUE opt_223 SEMI

    returnStatement ::= RETURN opt_224 SEMI

    throwStatement ::= THROW expression SEMI

    synchronizedStatement ::= SYNCHRONIZED LPAREN expression RPAREN block

    resourceDeclaration ::= type variableDeclaratorId EQ expression

    catchParameter ::= modifiers type opt_227 list_229 variableDeclaratorId

    tryStatement ::= TRY opt_234 block list_236 opt_238

    annotation ::= normalAnnotation
           | singleMemberAnnotation
           | markerAnnotation

    normalAnnotation ::= AT name LPAREN opt_239 RPAREN

    markerAnnotation ::= AT name

    singleMemberAnnotation ::= AT name LPAREN memberValue RPAREN

    memberValuePairs ::= memberValuePair list_241

    memberValuePair ::= javaIdentifier EQ memberValue

    memberValue ::= annotation
           | memberValueArrayInitializer
           | conditionalExpression

    memberValueArrayInitializer ::= LBRACE

    annotationTypeDeclaration ::= AT INTERFACE javaIdentifier annotationTypeBody

    annotationTypeBody ::= LBRACE

    annotationTypeMemberDeclaration ::= modifiers grp_242
           | SEMI

    defaultValue ::= _DEFAULT memberValue

    list_1 ::= $empty | list_1 production

    seq_2 ::= IDENTIFIER LBRACE

    opt_3 ::= seq_2
           | $empty

    grp_4 ::= IDENTIFIER
           | LOOKAHEAD
           | IGNORE_CASE
           | STATIC
           | PARSER_BEGIN

    grp_5 ::= integerLiteral
           | boolLit
           | stringLiteral
           | stringList

    seq_6 ::= COMMA stringLiteral

    list_7 ::= $empty
           | list_7 seq_6

    seq_8 ::= COMMA name

    list_9 ::= $empty
           | list_9 seq_8

    seq_10 ::= THROWS name list_9

    opt_11 ::= seq_10
           | $empty

    opt_12 ::= node_descriptor
           | $empty

    seq_13 ::= COMMA name

    list_14 ::= $empty
           | list_14 seq_13

    seq_15 ::= THROWS name list_14

    opt_16 ::= seq_15
           | $empty

    seq_17 ::= COMMA name

    list_18 ::= $empty
           | list_18 seq_17

    seq_19 ::= THROWS name list_18

    opt_20 ::= seq_19
           | $empty

    opt_21 ::= node_descriptor
           | $empty

    grp_22 ::= PUBLIC
           | PROTECTED
           | PRIVATE

    opt_23 ::= grp_22
           | $empty

    seq_25 ::= COMMA IDENTIFIER

    list_26 ::= $empty
           | list_26 seq_25

    grp_24 ::= LT SLASH GT
           | LT IDENTIFIER list_26 GT

    opt_27 ::= grp_24
           | $empty

    seq_28 ::= LBRACKET IGNORE_CASE RBRACKET

    opt_29 ::= seq_28
           | $empty

    opt_30 ::= classOrInterfaceBody
           | $empty

    opt_31 ::= block
           | $empty

    seq_32 ::= COLON IDENTIFIER

    opt_33 ::= seq_32
           | $empty

    grp_34 ::= PIPE expansion

    list_35 ::= $empty
           | list_35 grp_34

    seq_36 ::= LOOKAHEAD LPAREN local_lookahead RPAREN

    opt_37 ::= seq_36
           | $empty

    opt_38 ::= node_descriptor
           | $empty

    seq_39 ::= expansion_unit opt_38

    list_40 ::= seq_39
           | list_40 seq_39

    opt_41 ::= integerLiteral
           | $empty

    opt_42 ::= COMMA
           | $empty

    opt_43 ::= expansion_choices
           | $empty

    opt_44 ::= COMMA
           | $empty

    opt_45 ::= LBRACE
           | $empty

    seq_46 ::= name IDENTIFIER

    opt_47 ::= seq_46
           | $empty

    seq_48 ::= CATCH LPAREN opt_47 RPAREN block

    list_49 ::= $empty
           | list_49 seq_48

    seq_50 ::= FINALLY block

    opt_51 ::= seq_50
           | $empty

    seq_52 ::= primaryExpression EQ

    opt_53 ::= seq_52
           | $empty

    opt_55 ::= typeArguments
           | $empty

    seq_56 ::= DOT IDENTIFIER

    opt_57 ::= seq_56
           | $empty

    grp_54 ::= identifier opt_55 arguments
           | regular_expression opt_57

    grp_58 ::= STAR
           | SLASH
           | BANG

    opt_59 ::= grp_58
           | $empty

    opt_60 ::= LT
           | $empty

    seq_61 ::= opt_60 identifier COLON

    opt_62 ::= seq_61
           | $empty

    grp_63 ::= PIPE complex_regular_expression

    list_64 ::= $empty
           | list_64 grp_63

    list_65 ::= complex_regular_expression_unit
           | list_65 complex_regular_expression_unit

    grp_66 ::= STAR
           | SLASH
           | BANG
           | LBRACE

    opt_67 ::= grp_66
           | $empty

    opt_68 ::= PLUS
           | $empty

    seq_69 ::= COMMA character_descriptor

    list_70 ::= $empty
           | list_70 seq_69

    seq_71 ::= character_descriptor list_70

    opt_72 ::= seq_71
           | $empty

    seq_73 ::= PERCENT stringLiteral

    opt_74 ::= seq_73
           | $empty

    grp_75 ::= IDENTIFIER
           | VOID

    opt_76 ::= GT
           | $empty

    seq_77 ::= LPAREN opt_76 node_descriptor_expression RPAREN

    opt_78 ::= seq_77
           | $empty

    grp_79 ::= IDENTIFIER
           | LOOKAHEAD
           | IGNORE_CASE
           | PARSER_BEGIN
           | PARSER_END
           | JAVACODE
           | TOKEN
           | _SPECIALTOKEN
           | _MORE_
           | _SKIP_
           | TOKENMGR_DECLS_
           | _EOF_
           | TEMPLATE
           | _DCLPARSER_BEGIN
           | _DCLPARSER_END
           | _INCPARSER_BEGIN
           | _INCPARSER_END
           | _DEFPARSER_BEGIN
           | _DEFPARSER_END

    opt_80 ::= packageDeclaration
           | $empty

    list_81 ::= $empty
           | list_81 importDeclaration

    list_82 ::= $empty
           | list_82 typeDeclaration

    grp_84 ::= PUBLIC
           | STATIC
           | PROTECTED
           | PRIVATE
           | FINAL
           | ABSTRACT
           | SYNCHRONIZED
           | NATIVE
           | TRANSIENT
           | VOLATILE
           | STRICTFP
           | annotation

    grp_83 ::= grp_84

    list_85 ::= $empty
           | list_85 grp_83

    grp_86 ::= classOrInterfaceDeclaration
           | enumDeclaration
           | annotationTypeDeclaration

    grp_87 ::= CLASS
           | INTERFACE

    opt_88 ::= typeParameters
           | $empty

    opt_89 ::= extendsList
           | $empty

    opt_90 ::= implementsList
           | $empty

    seq_91 ::= COMMA classOrInterfaceType

    list_92 ::= $empty
           | list_92 seq_91

    seq_93 ::= COMMA classOrInterfaceType

    list_94 ::= $empty
           | list_94 seq_93

    opt_95 ::= implementsList
           | $empty

    opt_96 ::= arguments
           | $empty

    opt_97 ::= classOrInterfaceBody
           | $empty

    seq_98 ::= COMMA typeParameter

    list_99 ::= $empty
           | list_99 seq_98

    opt_100 ::= typeBound
           | $empty

    seq_101 ::= LSHIFT classOrInterfaceType

    list_102 ::= $empty
           | list_102 seq_101

    grp_103 ::= classOrInterfaceDeclaration
           | enumDeclaration
           | constructorDeclaration
           | fieldDeclaration
           | methodDeclaration

    seq_104 ::= COMMA variableDeclarator

    list_105 ::= $empty
           | list_105 seq_104

    seq_106 ::= EQ variableInitializer

    opt_107 ::= seq_106
           | $empty

    seq_108 ::= LBRACKET RBRACKET

    list_109 ::= $empty
           | list_109 seq_108

    opt_110 ::= typeParameters
           | $empty

    seq_111 ::= THROWS nameList

    opt_112 ::= seq_111
           | $empty

    grp_113 ::= block
           | SEMI

    seq_114 ::= LBRACKET RBRACKET

    list_115 ::= $empty
           | list_115 seq_114

    seq_116 ::= COMMA formalParameter

    list_117 ::= $empty
           | list_117 seq_116

    seq_118 ::= formalParameter list_117

    opt_119 ::= seq_118
           | $empty

    grp_121 ::= LSHIFT
           | SLASH

    grp_120 ::= grp_121
           | QUESTION

    opt_122 ::= grp_120
           | $empty

    opt_123 ::= typeParameters
           | $empty

    seq_124 ::= THROWS nameList

    opt_125 ::= seq_124
           | $empty

    seq_126 ::= primaryExpression DOT

    opt_127 ::= seq_126
           | $empty

    opt_128 ::= STATIC
           | $empty

    seq_129 ::= LBRACKET RBRACKET

    list_130 ::= seq_129
           | list_130 seq_129

    opt_131 ::= template
           | $empty

    seq_132 ::= opt_131 classOrInterfaceType

    seq_133 ::= LBRACKET RBRACKET

    list_134 ::= $empty
           | list_134 seq_133

    seq_135 ::= COMMA templateBase

    list_136 ::= $empty
           | list_136 seq_135

    opt_137 ::= QUESTION
           | $empty

    opt_138 ::= GT
           | $empty

    opt_139 ::= typeArguments
           | $empty

    grp_141 ::= DOT
           | GT

    opt_142 ::= typeArguments
           | $empty

    grp_140 ::= grp_141 IDENTIFIER opt_142

    list_143 ::= $empty
           | list_143 grp_140

    opt_144 ::= QUESTION
           | $empty

    seq_145 ::= COMMA typeArgument opt_144

    list_146 ::= $empty
           | list_146 seq_145

    seq_147 ::= typeArgument list_146

    opt_148 ::= seq_147
           | $empty

    opt_149 ::= wildcardBounds
           | $empty

    opt_151 ::= SLASH
           | $empty

    opt_152 ::= CONST
           | $empty

    grp_153 ::= SLASH
           | LSHIFT

    opt_154 ::= grp_153
           | $empty

    grp_150 ::= VOID opt_151
           | opt_152 type opt_154

    seq_155 ::= DOT javaIdentifier

    list_156 ::= $empty
           | list_156 seq_155

    seq_157 ::= COMMA name

    list_158 ::= $empty
           | list_158 seq_157

    seq_159 ::= assignmentOperator expression

    opt_160 ::= seq_159
           | $empty

    seq_161 ::= BANG expression COLON expression

    opt_162 ::= seq_161
           | $empty

    grp_163 ::= ANDAND conditionalAndExpression

    list_164 ::= $empty
           | list_164 grp_163

    seq_165 ::= PIPE inclusiveOrExpression

    list_166 ::= $empty
           | list_166 seq_165

    grp_167 ::= PIPE exclusiveOrExpression

    list_168 ::= $empty
           | list_168 grp_167

    seq_169 ::= ANDAND andExpression

    list_170 ::= $empty
           | list_170 seq_169

    seq_171 ::= LSHIFT equalityExpression

    list_172 ::= $empty
           | list_172 seq_171

    grp_174 ::= EQEQ
           | NOTEQ

    grp_173 ::= grp_174 instanceOfExpression

    list_175 ::= $empty
           | list_175 grp_173

    seq_176 ::= INSTANCEOF type

    opt_177 ::= seq_176
           | $empty

    grp_179 ::= LT
           | GT
           | COLON
           | COMMA

    grp_178 ::= grp_179 shiftExpression

    list_180 ::= $empty
           | list_180 grp_178

    grp_182 ::= LT
           | rsignedshift
           | runsignedshift

    grp_181 ::= grp_182 additiveExpression

    list_183 ::= $empty
           | list_183 grp_181

    grp_185 ::= STAR
           | PERCENT

    grp_184 ::= grp_185 multiplicativeExpression

    list_186 ::= $empty
           | list_186 grp_184

    grp_188 ::= SLASH
           | RSHIFT
           | URSHIFT

    grp_187 ::= grp_188 unaryExpression

    list_189 ::= $empty
           | list_189 grp_187

    grp_190 ::= STAR
           | PERCENT

    grp_191 ::= PLUS
           | MINUS

    grp_192 ::= PLUS
           | MINUS
           | LPAREN
           | javaIdentifier
           | THIS
           | SUPER
           | NEW
           | literal

    grp_193 ::= PLUSPLUS
           | MINUSMINUS

    opt_194 ::= grp_193
           | $empty

    list_195 ::= $empty
           | list_195 primarySuffix

    opt_196 ::= argumentList
           | $empty

    seq_197 ::= COMMA expression

    list_198 ::= $empty
           | list_198 seq_197

    opt_199 ::= typeArguments
           | $empty

    opt_201 ::= classOrInterfaceBody
           | $empty

    grp_200 ::= arrayDimsAndInits
           | arguments opt_201

    seq_202 ::= LBRACKET expression RBRACKET

    list_203 ::= seq_202
           | list_203 seq_202

    seq_204 ::= LBRACKET RBRACKET

    list_205 ::= $empty
           | list_205 seq_204

    seq_206 ::= LBRACKET RBRACKET

    list_207 ::= seq_206
           | list_207 seq_206

    seq_208 ::= COLON expression

    opt_209 ::= seq_208
           | $empty

    seq_210 ::= COMMA variableDeclarator

    list_211 ::= $empty
           | list_211 seq_210

    grp_212 ::= PLUSPLUS
           | MINUSMINUS
           | assignmentOperator expression

    opt_213 ::= grp_212
           | $empty

    seq_214 ::= ELSE statement

    opt_215 ::= seq_214
           | $empty

    opt_217 ::= forInit
           | $empty

    opt_218 ::= expression
           | $empty

    opt_219 ::= forUpdate
           | $empty

    grp_216 ::= modifiers type javaIdentifier COLON expression
           | opt_217 SEMI opt_218 SEMI opt_219

    seq_220 ::= COMMA statementExpression

    list_221 ::= $empty
           | list_221 seq_220

    opt_222 ::= javaIdentifier
           | $empty

    opt_223 ::= javaIdentifier
           | $empty

    opt_224 ::= expression
           | $empty

    grp_226 ::= LSHIFT
           | SLASH

    grp_225 ::= grp_226
           | QUESTION

    opt_227 ::= grp_225
           | $empty

    grp_228 ::= PIPE type

    list_229 ::= $empty
           | list_229 grp_228

    seq_230 ::= SEMI resourceDeclaration

    list_231 ::= $empty
           | list_231 seq_230

    opt_232 ::= SEMI
           | $empty

    seq_233 ::= LPAREN resourceDeclaration list_231 opt_232 RPAREN

    opt_234 ::= seq_233
           | $empty

    seq_235 ::= CATCH LPAREN catchParameter RPAREN block

    list_236 ::= $empty
           | list_236 seq_235

    seq_237 ::= FINALLY block

    opt_238 ::= seq_237
           | $empty

    opt_239 ::= memberValuePairs
           | $empty

    seq_240 ::= COMMA memberValuePair

    list_241 ::= $empty
           | list_241 seq_240

    opt_243 ::= defaultValue
           | $empty

    grp_242 ::= type javaIdentifier LPAREN RPAREN opt_243 SEMI
           | classOrInterfaceDeclaration
           | enumDeclaration
           | annotationTypeDeclaration
           | fieldDeclaration

    list_244 ::= $empty
           | list_244 classOrInterfaceBodyDeclaration

    list_245 ::= $empty
           | list_245 blockStatement

%End
