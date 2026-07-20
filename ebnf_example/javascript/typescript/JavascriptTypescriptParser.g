-- AUTO-GENERATED from antlr/grammars-v4 javascript/typescript by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
%Options fp=JavascriptTypescriptParser
%options package=lpg.grammars.javascript.typescript
%options template=dtParserTemplateF.gi
%options import_terminals=JavascriptTypescriptLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    initializer ::= EQ singleExpression

    bindingPattern ::= grp_1

    typeParameters ::= LT opt_2 GT

    typeParameterList ::= typeParameter list_4

    typeParameter ::= identifier opt_5
           | identifier EQ typeArgument
           | typeParameters

    constraint ::= Extends type_

    typeArguments ::= LT opt_6 GT

    typeArgumentList ::= typeArgument list_8

    typeArgument ::= type_

    type_ ::= opt_10 unionOrIntersectionOrPrimaryType
           | functionType
           | constructorType
           | typeGeneric

    unionOrIntersectionOrPrimaryType ::= unionOrIntersectionOrPrimaryType PIPE unionOrIntersectionOrPrimaryType
           | unionOrIntersectionOrPrimaryType AMP unionOrIntersectionOrPrimaryType
           | primaryType

    primaryType ::= LPAREN type_ RPAREN
           | predefinedType
           | typeReference
           | objectType
           | opt_11 LBRACKET opt_12 RBRACKET
           | LBRACKET tupleElementTypes RBRACKET
           | typeQuery
           | THIS
           | typeReference Is primaryType
           | KeyOf primaryType

    predefinedType ::= Any
           | NULL_LITERAL
           | Number
           | NUMBER
           | Boolean
           | BOOL_LITERAL
           | String
           | STRING
           | opt_13 Symbol
           | Never
           | Undefined
           | Object
           | VOID

    typeReference ::= typeName opt_14

    typeGeneric ::= LT typeArgumentList opt_15 GT

    typeName ::= identifier
           | namespaceName

    objectType ::= LBRACE opt_16 RBRACE

    typeBody ::= typeMemberList opt_18

    typeMemberList ::= typeMember list_21

    typeMember ::= propertySignatur
           | callSignature
           | constructSignature
           | indexSignature
           | methodSignature opt_23

    arrayType ::= opt_24 LBRACKET RBRACKET

    tupleType ::= LBRACKET tupleElementTypes RBRACKET

    tupleElementTypes ::= type_ list_26 opt_27

    functionType ::= opt_28 LPAREN opt_29 RPAREN FATARROW type_

    constructorType ::= NEW opt_30 LPAREN opt_31 RPAREN FATARROW type_

    typeQuery ::= TYPEOF typeQueryExpression

    typeQueryExpression ::= identifier
           | list_33 identifierName

    propertySignatur ::= opt_34 propertyName opt_35 opt_36 opt_38

    typeAnnotation ::= COLON type_

    callSignature ::= opt_39 LPAREN opt_40 RPAREN opt_41

    parameterList ::= restParameter
           | parameter list_43 opt_45 opt_46

    requiredParameterList ::= requiredParameter list_48

    parameter ::= requiredParameter
           | optionalParameter

    optionalParameter ::= opt_49 grp_50

    restParameter ::= ELLIPSIS singleExpression opt_55

    requiredParameter ::= opt_56 opt_57 identifierOrPattern opt_58

    accessibilityModifier ::= Public
           | Private
           | Protected

    identifierOrPattern ::= identifierName
           | bindingPattern

    constructSignature ::= NEW opt_59 LPAREN opt_60 RPAREN opt_61

    indexSignature ::= LBRACKET identifier COLON grp_62 RBRACKET typeAnnotation

    methodSignature ::= propertyName opt_63 callSignature

    typeAliasDeclaration ::= opt_64 TypeAlias identifier opt_65 EQ type_ eos

    constructorDeclaration ::= opt_66 Constructor LPAREN opt_67 RPAREN opt_70

    interfaceDeclaration ::= opt_71 opt_72 Interface identifier opt_73 opt_74 objectType opt_75

    interfaceExtendsClause ::= Extends classOrInterfaceTypeList

    classOrInterfaceTypeList ::= typeReference list_77

    enumDeclaration ::= opt_78 Enum identifier LBRACE opt_79 RBRACE

    enumBody ::= enumMemberList opt_80

    enumMemberList ::= enumMember list_82

    enumMember ::= propertyName opt_84

    namespaceDeclaration ::= opt_85 Namespace namespaceName LBRACE opt_86 RBRACE

    namespaceName ::= identifier list_89

    importAliasDeclaration ::= identifier EQ namespaceName SEMI

    decoratorList ::= list_90

    decorator ::= AT grp_91

    decoratorMemberExpression ::= identifier
           | decoratorMemberExpression DOT identifierName
           | LPAREN singleExpression RPAREN

    decoratorCallExpression ::= decoratorMemberExpression arguments

    program ::= opt_92

    sourceElement ::= opt_93 statement

    statement ::= block
           | namespaceDeclaration
           | variableStatement
           | importStatement
           | exportStatement
           | emptyStatement_
           | abstractDeclaration
           | classDeclaration
           | functionDeclaration
           | interfaceDeclaration
           | ifStatement
           | iterationStatement
           | continueStatement
           | breakStatement
           | returnStatement
           | yieldStatement
           | withStatement
           | labelledStatement
           | switchStatement
           | throwStatement
           | tryStatement
           | debuggerStatement
           | arrowFunctionDeclaration
           | generatorFunctionDeclaration
           | typeAliasDeclaration
           | enumDeclaration
           | Export statement
           | expressionStatement

    block ::= LBRACE opt_94 RBRACE

    statementList ::= list_95

    abstractDeclaration ::= Abstract grp_96 eos

    importStatement ::= Import importFromBlock

    importFromBlock ::= opt_97 grp_98 importFrom eos
           | STRING eos

    importModuleItems ::= LBRACE list_100 opt_103 RBRACE

    importAliasName ::= moduleExportName opt_105

    moduleExportName ::= identifierName
           | STRING

    importedBinding ::= IDENTIFIER
           | Yield
           | AWAIT

    importDefault ::= aliasName COMMA

    importNamespace ::= grp_106 opt_108

    importFrom ::= From STRING

    aliasName ::= identifierName opt_110

    exportStatement ::= Export opt_111 grp_112 eos
           | Export Default singleExpression eos

    exportFromBlock ::= importNamespace importFrom eos
           | exportModuleItems opt_113 eos

    exportModuleItems ::= LBRACE list_115 opt_118 RBRACE

    exportAliasName ::= moduleExportName opt_120

    declaration ::= variableStatement
           | classDeclaration
           | functionDeclaration

    -- varModifier required: nullable prefixes otherwise let TypeAlias steal type aliases.
    variableStatement ::= bindingPattern opt_121 initializer opt_122
           | opt_123 varModifier opt_125 variableDeclarationList opt_126
           | Declare opt_127 variableDeclarationList opt_128

    variableDeclarationList ::= variableDeclaration list_130

    variableDeclaration ::= grp_131 opt_132 opt_133 opt_136

    emptyStatement_ ::= SEMI

    expressionStatement ::= expressionSequence opt_137

    ifStatement ::= If LPAREN expressionSequence RPAREN statement opt_139

    iterationStatement ::= Do statement While LPAREN expressionSequence RPAREN eos
           | While LPAREN expressionSequence RPAREN statement
           | For LPAREN opt_140 SEMI opt_141 SEMI opt_142 RPAREN statement
           | For LPAREN varModifier variableDeclarationList SEMI opt_143 SEMI opt_144 RPAREN statement
           | For LPAREN singleExpression In expressionSequence RPAREN statement
           | For LPAREN varModifier variableDeclaration In expressionSequence RPAREN statement
           | For opt_145 LPAREN singleExpression opt_146 expressionSequence opt_148 RPAREN statement
           | For opt_149 LPAREN varModifier variableDeclaration opt_150 expressionSequence opt_152 RPAREN statement

    varModifier ::= Var
           | Let
           | Const

    continueStatement ::= Continue opt_153 eos

    breakStatement ::= Break opt_154 eos

    returnStatement ::= Return opt_155 eos

    yieldStatement ::= grp_156 opt_157 eos

    withStatement ::= With LPAREN expressionSequence RPAREN statement

    switchStatement ::= Switch LPAREN expressionSequence RPAREN caseBlock

    caseBlock ::= LBRACE opt_158 opt_161 RBRACE

    caseClauses ::= list_162

    caseClause ::= Case expressionSequence COLON opt_163

    defaultClause ::= Default COLON opt_164

    labelledStatement ::= identifier COLON statement

    throwStatement ::= opt_165 expressionSequence eos

    tryStatement ::= Try block grp_166

    catchProduction ::= Catch opt_170 block

    finallyProduction ::= Finally block

    debuggerStatement ::= Debugger eos

    functionDeclaration ::= opt_171 Function_ opt_172 identifier callSignature grp_173

    classDeclaration ::= opt_175 opt_178 opt_179 CLASS_ identifier opt_180 classHeritage classTail

    classHeritage ::= opt_181 opt_182

    classTail ::= LBRACE list_183 RBRACE

    classExtendsClause ::= Extends typeReference

    implementsClause ::= Implements classOrInterfaceTypeList

    classElement ::= constructorDeclaration
           | opt_184 propertyMemberDeclaration
           | indexMemberDeclaration
           | statement

    propertyMemberDeclaration ::= propertyMemberBase propertyName opt_185 opt_186 opt_187 SEMI
           | propertyMemberBase propertyName callSignature grp_188
           | propertyMemberBase grp_190
           | abstractDeclaration

    propertyMemberBase ::= opt_191 opt_192 opt_193 opt_194

    indexMemberDeclaration ::= indexSignature SEMI

    generatorMethod ::= opt_196 opt_197 propertyName LPAREN opt_198 RPAREN LBRACE functionBody RBRACE

    generatorFunctionDeclaration ::= opt_199 Function_ STAR opt_200 LPAREN opt_201 RPAREN LBRACE functionBody RBRACE

    generatorBlock ::= LBRACE generatorDefinition list_203 opt_204 RBRACE

    generatorDefinition ::= STAR iteratorDefinition

    iteratorBlock ::= LBRACE iteratorDefinition list_206 opt_207 RBRACE

    iteratorDefinition ::= LBRACKET singleExpression RBRACKET LPAREN opt_208 RPAREN LBRACE functionBody RBRACE

    classElementName ::= propertyName
           | privateIdentifier

    privateIdentifier ::= HASH identifierName

    formalParameterList ::= formalParameterArg list_210 opt_212 opt_213
           | lastFormalParameterArg
           | arrayLiteral
           | objectLiteral opt_215

    formalParameterArg ::= opt_216 opt_217 assignable opt_218 opt_219 opt_221

    lastFormalParameterArg ::= ELLIPSIS identifier opt_222

    functionBody ::= opt_223

    sourceElements ::= list_224

    arrayLiteral ::= seq_225

    elementList ::= list_226 opt_227 list_230 list_231

    arrayElement ::= opt_232 grp_233 opt_234

    objectLiteral ::= LBRACE opt_239 RBRACE

    propertyAssignment ::= propertyName grp_240 singleExpression
           | LBRACKET singleExpression RBRACKET COLON singleExpression
           | getAccessor
           | setAccessor
           | generatorMethod
           | identifierOrKeyWord
           | opt_241 singleExpression
           | restParameter

    getAccessor ::= getter LPAREN RPAREN opt_242 LBRACE functionBody RBRACE

    setAccessor ::= setter LPAREN opt_243 RPAREN LBRACE functionBody RBRACE

    propertyName ::= identifierName
           | STRING
           | numericLiteral
           | LBRACKET singleExpression RBRACKET

    arguments ::= LPAREN opt_246 RPAREN

    argumentList ::= argument list_248

    argument ::= opt_249 grp_250

    expressionSequence ::= singleExpression list_252

    singleExpression ::= jsAssignment

    jsAssignment ::= jsConditional
           | jsConditional EQ jsAssignment
           | jsConditional assignmentOperator jsAssignment
           | jsConditional As type_

    jsConditional ::= jsCoalesce
           | jsCoalesce QUESTION jsAssignment COLON jsAssignment

    jsCoalesce ::= jsOr
           | jsCoalesce QUESTQUEST jsAnd

    jsOr ::= jsAnd
           | jsOr OROR jsAnd

    jsAnd ::= jsBitOr
           | jsAnd ANDAND jsBitOr

    jsBitOr ::= jsBitXor
           | jsBitOr PIPE jsBitXor

    jsBitXor ::= jsBitAnd
           | jsBitXor CARET jsBitAnd

    jsBitAnd ::= jsEq
           | jsBitAnd AMP jsEq

    jsEq ::= jsRel
           | jsEq EQEQ jsRel
           | jsEq NOTEQ jsRel
           | jsEq EQEQEQ jsRel
           | jsEq NOTEQEQ jsRel

    jsRel ::= jsShift
           | jsRel Instanceof jsShift
           | jsRel In jsShift
           | jsRel LT jsShift
           | jsRel GT jsShift
           | jsRel LTEQ jsShift
           | jsRel GTEQ jsShift

    jsShift ::= jsAdd
           | jsShift LSHIFT jsAdd
           | jsShift RSHIFT jsAdd
           | jsShift URSHIFT jsAdd

    jsAdd ::= jsMul
           | jsAdd PLUS jsMul
           | jsAdd MINUS jsMul

    jsMul ::= jsPower
           | jsMul STAR jsPower
           | jsMul SLASH jsPower
           | jsMul PERCENT jsPower

    jsPower ::= jsUnary
           | jsUnary STARSTAR jsPower

    jsUnary ::= PLUSPLUS jsUnary
           | MINUSMINUS jsUnary
           | PLUS jsUnary
           | MINUS jsUnary
           | TILDE jsUnary
           | BANG jsUnary
           | DELETE jsUnary
           | VOID jsUnary
           | TYPEOF jsUnary
           | AWAIT jsUnary
           | jsPostfix

    jsPostfix ::= jsPrimary
           | jsPostfix DOT identifierName
           | jsPostfix QUESTDOT identifierName
           | jsPostfix arguments
           | jsPostfix LBRACKET expressionSequence RBRACKET
           | jsPostfix QUESTDOT LBRACKET expressionSequence RBRACKET
           | jsPostfix BANG
           | jsPostfix PLUSPLUS
           | jsPostfix MINUSMINUS

    jsPrimary ::= THIS
           | Super
           | IDENTIFIER
           | literal
           | LPAREN expressionSequence RPAREN
           | newExpression
           | classExpression
           | arrayLiteral
           | objectLiteral
           | anonymousFunction

    classExpression ::= CLASS_ opt_283 opt_284 classHeritage classTail

    newExpression ::= NEW jsPrimary opt_285 arguments
           | NEW jsPrimary opt_285

    optionalChainExpression ::= jsPostfix QUESTDOT identifierName
           | jsPostfix QUESTDOT LBRACKET expressionSequence RBRACKET

    memberIndexExpression ::= jsPostfix LBRACKET expressionSequence RBRACKET

    memberDotExpression ::= jsPostfix DOT identifierName

    argumentsExpression ::= jsPostfix arguments

    castAsExpression ::= jsConditional As type_

    nonNullAssertionExpression ::= jsPostfix BANG

    genericTypesExpression ::= typeArguments opt_286

    updateExpression ::= jsPostfix PLUSPLUS
           | jsPostfix MINUSMINUS

    unaryExpression ::= DELETE jsUnary
           | VOID jsUnary
           | TYPEOF jsUnary
           | AWAIT jsUnary

    powerExpression ::= jsUnary STARSTAR jsPower

    coalesceExpression ::= jsCoalesce QUESTQUEST jsAnd

    relationalExpression ::= jsRel Instanceof jsShift
           | jsRel In jsShift

    bitwiseExpression ::= jsBitOr

    assignmentExpression ::= jsConditional assignmentOperator jsAssignment

    asExpression ::= predefinedType opt_274
           | singleExpression

    assignable ::= identifier
           | keyword
           | arrayLiteral
           | objectLiteral

    anonymousFunction ::= functionDeclaration
           | opt_275 Function_ opt_276 LPAREN opt_277 RPAREN opt_278 LBRACE functionBody RBRACE
           | arrowFunctionDeclaration

    arrowFunctionDeclaration ::= opt_279 arrowFunctionParameters opt_280 FATARROW arrowFunctionBody

    -- identifier only (not propertyName/TypeAlias): bare `type =>` would steal typeAliasDeclaration.
    arrowFunctionParameters ::= identifier
           | LPAREN opt_281 RPAREN

    arrowFunctionBody ::= singleExpression
           | LBRACE functionBody RBRACE

    assignmentOperator ::= STAREQ
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
           | STARSTAREQ
           | QUESTQUESTEQ

    literal ::= NULL_LITERAL
           | BOOL_LITERAL
           | STRING
           | templateStringLiteral
           | RegularExpressionLiteral
           | numericLiteral
           | bigintLiteral

    templateStringLiteral ::= BackTick list_282 BackTick

    templateStringAtom ::= TemplateStringAtom
           | TemplateStringStartExpression singleExpression TemplateCloseBrace
           | TemplateStringEscapeAtom

    numericLiteral ::= NUMBER
           | HexIntegerLiteral
           | OctalIntegerLiteral
           | OctalIntegerLiteral2
           | BinaryIntegerLiteral

    bigintLiteral ::= BigDecimalIntegerLiteral
           | BigHexIntegerLiteral
           | BigOctalIntegerLiteral
           | BigBinaryIntegerLiteral

    getter ::= identifier classElementName

    setter ::= identifier classElementName

    -- TypeAlias is contextual: keep out of keyword so statement-level `type`
    -- is typeAliasDeclaration (not arrowFunctionParameters via reservedWord).
    identifierName ::= identifier
           | reservedWord
           | TypeAlias
           | Require

    identifier ::= IDENTIFIER

    identifierOrKeyWord ::= identifier
           | TypeAlias
           | Require

    reservedWord ::= keyword
           | NULL_LITERAL
           | BOOL_LITERAL

    keyword ::= Break
           | Do
           | Instanceof
           | TYPEOF
           | Case
           | Else
           | NEW
           | Var
           | Catch
           | Finally
           | Return
           | VOID
           | Continue
           | For
           | Switch
           | While
           | Debugger
           | Function_
           | THIS
           | With
           | Default
           | If
           | Throw
           | DELETE
           | In
           | Try
           | CLASS_
           | Enum
           | Extends
           | Super
           | Const
           | Export
           | Import
           | Implements
           | Let
           | Private
           | Public
           | Interface
           | Package
           | Protected
           | Static
           | Yield
           | Async
           | AWAIT
           | ReadOnly
           | From
           | As
           | Require
           | String
           | Boolean
           | Number
           | Module

    eos ::= SEMI
           | $empty

    grp_1 ::= arrayLiteral | objectLiteral

    opt_2 ::= typeParameterList | $empty

    seq_3 ::= COMMA typeParameter

    list_4 ::= $empty | list_4 seq_3

    opt_5 ::= constraint | $empty

    opt_6 ::= typeArgumentList | $empty

    seq_7 ::= COMMA typeArgument

    list_8 ::= $empty | list_8 seq_7

    grp_9 ::= PIPE | AMP

    opt_10 ::= grp_9 | $empty

    opt_11 ::= primaryType | $empty

    opt_12 ::= primaryType | $empty

    opt_13 ::= Unique | $empty

    opt_14 ::= typeGeneric | $empty

    opt_15 ::= typeGeneric | $empty

    opt_16 ::= typeBody | $empty

    grp_17 ::= SEMI | COMMA

    opt_18 ::= grp_17 | $empty

    grp_20 ::= SEMI | COMMA

    grp_19 ::= grp_20 typeMember

    list_21 ::= $empty | list_21 grp_19

    seq_22 ::= FATARROW type_

    opt_23 ::= seq_22 | $empty

    opt_24 ::= primaryType | $empty

    seq_25 ::= COMMA type_

    list_26 ::= $empty | list_26 seq_25

    opt_27 ::= COMMA | $empty

    opt_28 ::= typeParameters | $empty

    opt_29 ::= parameterList | $empty

    opt_30 ::= typeParameters | $empty

    opt_31 ::= parameterList | $empty

    seq_32 ::= identifierName DOT

    list_33 ::= seq_32 | list_33 seq_32

    opt_34 ::= ReadOnly | $empty

    opt_35 ::= QUESTION | $empty

    opt_36 ::= typeAnnotation | $empty

    seq_37 ::= FATARROW type_

    opt_38 ::= seq_37 | $empty

    opt_39 ::= typeParameters | $empty

    opt_40 ::= parameterList | $empty

    opt_41 ::= typeAnnotation | $empty

    seq_42 ::= COMMA parameter

    list_43 ::= $empty | list_43 seq_42

    seq_44 ::= COMMA restParameter

    opt_45 ::= seq_44 | $empty

    opt_46 ::= COMMA | $empty

    seq_47 ::= COMMA requiredParameter

    list_48 ::= $empty | list_48 seq_47

    opt_49 ::= decoratorList | $empty

    opt_51 ::= accessibilityModifier | $empty

    opt_53 ::= typeAnnotation | $empty

    opt_54 ::= typeAnnotation | $empty

    grp_52 ::= QUESTION opt_53 | opt_54 initializer

    grp_50 ::= opt_51 identifierOrPattern grp_52

    opt_55 ::= typeAnnotation | $empty

    opt_56 ::= decoratorList | $empty

    opt_57 ::= accessibilityModifier | $empty

    opt_58 ::= typeAnnotation | $empty

    opt_59 ::= typeParameters | $empty

    opt_60 ::= parameterList | $empty

    opt_61 ::= typeAnnotation | $empty

    grp_62 ::= Number | String

    opt_63 ::= QUESTION | $empty

    opt_64 ::= Export | $empty

    opt_65 ::= typeParameters | $empty

    opt_66 ::= accessibilityModifier | $empty

    opt_67 ::= formalParameterList | $empty

    seq_69 ::= LBRACE functionBody RBRACE

    grp_68 ::= seq_69 | SEMI

    opt_70 ::= grp_68 | $empty

    opt_71 ::= Export | $empty

    opt_72 ::= Declare | $empty

    opt_73 ::= typeParameters | $empty

    opt_74 ::= interfaceExtendsClause | $empty

    opt_75 ::= SEMI | $empty

    seq_76 ::= COMMA typeReference

    list_77 ::= $empty | list_77 seq_76

    opt_78 ::= Const | $empty

    opt_79 ::= enumBody | $empty

    opt_80 ::= COMMA | $empty

    seq_81 ::= COMMA enumMember

    list_82 ::= $empty | list_82 seq_81

    seq_83 ::= EQ singleExpression

    opt_84 ::= seq_83 | $empty

    opt_85 ::= Declare | $empty

    opt_86 ::= statementList | $empty

    list_87 ::= DOT | list_87 DOT

    seq_88 ::= list_87 identifier

    list_89 ::= $empty | list_89 seq_88

    list_90 ::= decorator | list_90 decorator

    grp_91 ::= decoratorMemberExpression | decoratorCallExpression

    opt_92 ::= sourceElements | $empty

    opt_93 ::= Export | $empty

    opt_94 ::= statementList | $empty

    list_95 ::= statement | list_95 statement

    grp_96 ::= identifier callSignature | variableStatement

    opt_97 ::= importDefault | $empty

    grp_98 ::= importNamespace | importModuleItems

    seq_99 ::= importAliasName COMMA

    list_100 ::= $empty | list_100 seq_99

    opt_101 ::= COMMA | $empty

    seq_102 ::= importAliasName opt_101

    opt_103 ::= seq_102 | $empty

    seq_104 ::= As importedBinding

    opt_105 ::= seq_104 | $empty

    grp_106 ::= STAR | identifierName

    seq_107 ::= As identifierName

    opt_108 ::= seq_107 | $empty

    seq_109 ::= As identifierName

    opt_110 ::= seq_109 | $empty

    opt_111 ::= Default | $empty

    grp_112 ::= exportFromBlock | declaration

    opt_113 ::= importFrom | $empty

    seq_114 ::= exportAliasName COMMA

    list_115 ::= $empty | list_115 seq_114

    opt_116 ::= COMMA | $empty

    seq_117 ::= exportAliasName opt_116

    opt_118 ::= seq_117 | $empty

    seq_119 ::= As moduleExportName

    opt_120 ::= seq_119 | $empty

    opt_121 ::= typeAnnotation | $empty

    opt_122 ::= SEMI | $empty

    opt_123 ::= accessibilityModifier | $empty

    opt_125 ::= ReadOnly | $empty

    opt_126 ::= SEMI | $empty

    opt_127 ::= varModifier | $empty

    opt_128 ::= SEMI | $empty

    seq_129 ::= COMMA variableDeclaration

    list_130 ::= $empty | list_130 seq_129

    grp_131 ::= identifierOrKeyWord | arrayLiteral | objectLiteral

    opt_132 ::= typeAnnotation | $empty

    opt_133 ::= singleExpression | $empty

    opt_134 ::= typeParameters | $empty

    seq_135 ::= EQ opt_134 singleExpression

    opt_136 ::= seq_135 | $empty

    opt_137 ::= SEMI | $empty

    seq_138 ::= Else statement

    opt_139 ::= seq_138 | $empty

    opt_140 ::= expressionSequence | $empty

    opt_141 ::= expressionSequence | $empty

    opt_142 ::= expressionSequence | $empty

    opt_143 ::= expressionSequence | $empty

    opt_144 ::= expressionSequence | $empty

    opt_145 ::= AWAIT | $empty

    opt_146 ::= identifier | $empty

    seq_147 ::= As type_

    opt_148 ::= seq_147 | $empty

    opt_149 ::= AWAIT | $empty

    opt_150 ::= identifier | $empty

    seq_151 ::= As type_

    opt_152 ::= seq_151 | $empty

    opt_153 ::= identifier | $empty

    opt_154 ::= identifier | $empty

    opt_155 ::= expressionSequence | $empty

    grp_156 ::= Yield | YieldStar

    opt_157 ::= expressionSequence | $empty

    opt_158 ::= caseClauses | $empty

    opt_159 ::= caseClauses | $empty

    seq_160 ::= defaultClause opt_159

    opt_161 ::= seq_160 | $empty

    list_162 ::= caseClause | list_162 caseClause

    opt_163 ::= statementList | $empty

    opt_164 ::= statementList | $empty

    opt_165 ::= Throw | $empty

    opt_167 ::= finallyProduction | $empty

    grp_166 ::= catchProduction opt_167 | finallyProduction

    opt_168 ::= typeAnnotation | $empty

    seq_169 ::= LPAREN identifier opt_168 RPAREN

    opt_170 ::= seq_169 | $empty

    opt_171 ::= Async | $empty

    opt_172 ::= STAR | $empty

    seq_174 ::= LBRACE functionBody RBRACE

    grp_173 ::= seq_174 | SEMI

    opt_175 ::= decoratorList | $empty

    opt_176 ::= Default | $empty

    seq_177 ::= Export opt_176

    opt_178 ::= seq_177 | $empty

    opt_179 ::= Abstract | $empty

    opt_180 ::= typeParameters | $empty

    opt_181 ::= classExtendsClause | $empty

    opt_182 ::= implementsClause | $empty

    list_183 ::= $empty | list_183 classElement

    opt_184 ::= decoratorList | $empty

    opt_185 ::= QUESTION | $empty

    opt_186 ::= typeAnnotation | $empty

    opt_187 ::= initializer | $empty

    seq_189 ::= LBRACE functionBody RBRACE

    grp_188 ::= seq_189 | SEMI

    grp_190 ::= getAccessor | setAccessor

    opt_191 ::= accessibilityModifier | $empty

    opt_192 ::= Async | $empty

    opt_193 ::= Static | $empty

    opt_194 ::= ReadOnly | $empty

    opt_195 ::= Async | $empty

    opt_196 ::= opt_195 | $empty

    opt_197 ::= STAR | $empty

    opt_198 ::= formalParameterList | $empty

    opt_199 ::= Async | $empty

    opt_200 ::= identifier | $empty

    opt_201 ::= formalParameterList | $empty

    seq_202 ::= COMMA generatorDefinition

    list_203 ::= $empty | list_203 seq_202

    opt_204 ::= COMMA | $empty

    seq_205 ::= COMMA iteratorDefinition

    list_206 ::= $empty | list_206 seq_205

    opt_207 ::= COMMA | $empty

    opt_208 ::= formalParameterList | $empty

    seq_209 ::= COMMA formalParameterArg

    list_210 ::= $empty | list_210 seq_209

    seq_211 ::= COMMA lastFormalParameterArg

    opt_212 ::= seq_211 | $empty

    opt_213 ::= COMMA | $empty

    seq_214 ::= COLON formalParameterList

    opt_215 ::= seq_214 | $empty

    opt_216 ::= decorator | $empty

    opt_217 ::= accessibilityModifier | $empty

    opt_218 ::= QUESTION | $empty

    opt_219 ::= typeAnnotation | $empty

    seq_220 ::= EQ singleExpression

    opt_221 ::= seq_220 | $empty

    opt_222 ::= typeAnnotation | $empty

    opt_223 ::= sourceElements | $empty

    list_224 ::= sourceElement | list_224 sourceElement

    seq_225 ::= LBRACKET elementList RBRACKET

    list_226 ::= $empty | list_226 COMMA

    opt_227 ::= arrayElement | $empty

    list_228 ::= COMMA | list_228 COMMA

    seq_229 ::= list_228 arrayElement

    list_230 ::= $empty | list_230 seq_229

    list_231 ::= $empty | list_231 COMMA

    opt_232 ::= ELLIPSIS | $empty

    grp_233 ::= singleExpression | identifier

    opt_234 ::= COMMA | $empty

    seq_235 ::= COMMA propertyAssignment

    list_236 ::= $empty | list_236 seq_235

    opt_237 ::= COMMA | $empty

    seq_238 ::= propertyAssignment list_236 opt_237

    opt_239 ::= seq_238 | $empty

    grp_240 ::= COLON | EQ

    opt_241 ::= ELLIPSIS | $empty

    opt_242 ::= typeAnnotation | $empty

    opt_243 ::= formalParameterList | $empty

    opt_244 ::= COMMA | $empty

    seq_245 ::= argumentList opt_244

    opt_246 ::= seq_245 | $empty

    seq_247 ::= COMMA argument

    list_248 ::= $empty | list_248 seq_247

    opt_249 ::= ELLIPSIS | $empty

    grp_250 ::= singleExpression | identifier

    seq_251 ::= COMMA singleExpression

    list_252 ::= $empty | list_252 seq_251

    opt_253 ::= identifier | $empty

    opt_254 ::= typeParameters | $empty

    opt_255 ::= QUESTDOT | $empty

    opt_256 ::= BANG | $empty

    opt_257 ::= HASH | $empty

    opt_258 ::= typeGeneric | $empty

    opt_259 ::= QUESTION | $empty

    opt_260 ::= HASH | $empty

    opt_261 ::= typeGeneric | $empty

    opt_262 ::= typeArguments | $empty

    opt_263 ::= typeArguments | $empty

    opt_264 ::= singleExpression | $empty

    opt_265 ::= singleExpression | $empty

    grp_266 ::= STAR | SLASH | PERCENT

    grp_267 ::= PLUS | MINUS

    grp_268 ::= LSHIFT | GT GT | GT GT GT

    grp_269 ::= LT | GT | LTEQ | GTEQ

    grp_270 ::= EQEQ | NOTEQ | EQEQEQ | NOTEQEQ

    opt_271 ::= singleExpression | $empty

    opt_272 ::= expressionSequence | $empty

    seq_273 ::= LBRACKET RBRACKET

    opt_274 ::= seq_273 | $empty

    opt_275 ::= Async | $empty

    opt_276 ::= STAR | $empty

    opt_277 ::= formalParameterList | $empty

    opt_278 ::= typeAnnotation | $empty

    opt_279 ::= Async | $empty

    opt_280 ::= typeAnnotation | $empty

    opt_281 ::= formalParameterList | $empty

    list_282 ::= $empty | list_282 templateStringAtom

    opt_283 ::= identifier | $empty

    opt_284 ::= typeParameters | $empty

    opt_285 ::= typeArguments | $empty

    opt_286 ::= expressionSequence | $empty

%End
