-- AUTO-GENERATED from antlr/grammars-v4 php by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=PhpParser
%options package=lpg.grammars.php
%options template=dtParserTemplateF.gi
%options import_terminals=PhpLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    htmlDocument
%End

%Rules
    htmlDocument ::= opt_1 list_3

    inlineHtml ::= list_4
           | scriptText

    htmlElement ::= HtmlDtd
           | HtmlClose
           | HtmlStyleOpen
           | HtmlOpen
           | HtmlName
           | HtmlSlashClose
           | HtmlSlash
           | HtmlText
           | HtmlEquals
           | HtmlStartQuoteString
           | HtmlEndQuoteString
           | HtmlStartDoubleQuoteString
           | HtmlEndDoubleQuoteString
           | HtmlHex
           | HtmlDecimal
           | HtmlQuoteString
           | HtmlDoubleQuoteString
           | StyleBody
           | HtmlScriptOpen
           | HtmlScriptClose
           | XmlStart list_5 XmlClose

    scriptText ::= list_6

    phpBlock ::= list_7 list_8

    importStatement ::= Import Namespace namespaceNameList SemiColon

    topStatement ::= statement
           | useDeclaration
           | namespaceDeclaration
           | functionDeclaration
           | classDeclaration
           | globalConstantDeclaration
           | enumDeclaration

    useDeclaration ::= Use opt_10 useDeclarationContentList SemiColon

    useDeclarationContentList ::= opt_11 useDeclarationContent list_14

    useDeclarationContent ::= namespaceNameList

    namespaceDeclaration ::= Namespace grp_15

    namespaceStatement ::= statement
           | useDeclaration
           | functionDeclaration
           | classDeclaration
           | globalConstantDeclaration

    functionDeclaration ::= opt_18 Function_ opt_19 identifier opt_20 LPAREN formalParameterList RPAREN opt_23 blockStatement

    classDeclaration ::= opt_24 opt_25 opt_26 opt_27 grp_28 OpenCurlyBracket list_37 CloseCurlyBracket

    classEntryType ::= Class
           | Trait

    interfaceList ::= qualifiedStaticTypeRef list_39

    typeParameterListInBrackets ::= OP_7688 typeParameterList OP_1035
           | OP_7688 typeParameterWithDefaultsList OP_1035
           | OP_7688 typeParameterList COMMA typeParameterWithDefaultsList OP_1035

    typeParameterList ::= typeParameterDecl list_41

    typeParameterWithDefaultsList ::= typeParameterWithDefaultDecl list_43

    typeParameterDecl ::= opt_44 identifier

    typeParameterWithDefaultDecl ::= opt_45 identifier Eq grp_46

    genericDynamicArgs ::= OP_7688 typeRef list_48 OP_1035

    attributes ::= list_49

    attributeGroup ::= AttributeStart opt_51 attribute list_53 RBRACKET

    attribute ::= qualifiedNamespaceName opt_54

    innerStatementList ::= list_55

    innerStatement ::= statement
           | functionDeclaration
           | classDeclaration

    statement ::= identifier COLON
           | blockStatement
           | ifStatement
           | whileStatement
           | doWhileStatement
           | forStatement
           | switchStatement
           | breakStatement
           | continueStatement
           | returnStatement
           | yieldExpression SemiColon
           | globalStatement
           | staticVariableStatement
           | echoStatement
           | expressionStatement
           | unsetStatement
           | foreachStatement
           | tryCatchFinally
           | throwStatement
           | gotoStatement
           | declareStatement
           | emptyStatement_
           | inlineHtmlStatement

    emptyStatement_ ::= SemiColon

    blockStatement ::= OpenCurlyBracket innerStatementList CloseCurlyBracket

    ifStatement ::= If parentheses statement list_56 opt_57
           | If parentheses COLON innerStatementList list_58 opt_59 EndIf SemiColon

    elseIfStatement ::= ElseIf parentheses statement

    elseIfColonStatement ::= ElseIf parentheses COLON innerStatementList

    elseStatement ::= Else statement

    elseColonStatement ::= Else COLON innerStatementList

    whileStatement ::= While parentheses grp_60

    doWhileStatement ::= Do statement While parentheses SemiColon

    forStatement ::= For LPAREN opt_61 SemiColon opt_62 SemiColon opt_63 RPAREN grp_64

    forInit ::= expressionList

    forUpdate ::= expressionList

    switchStatement ::= Switch parentheses grp_65

    switchBlock ::= list_73 innerStatementList

    breakStatement ::= Break opt_74 SemiColon

    continueStatement ::= Continue opt_75 SemiColon

    returnStatement ::= Return opt_76 SemiColon

    expressionStatement ::= expression SemiColon

    unsetStatement ::= Unset LPAREN chainList RPAREN SemiColon

    foreachStatement ::= Foreach grp_77 grp_85

    tryCatchFinally ::= Try blockStatement grp_86

    catchClause ::= Catch LPAREN qualifiedStaticTypeRef list_91 opt_92 RPAREN blockStatement

    finallyStatement ::= Finally blockStatement

    throwStatement ::= Throw expression SemiColon

    gotoStatement ::= Goto identifier SemiColon

    declareStatement ::= Declare LPAREN declareList RPAREN grp_93

    inlineHtmlStatement ::= list_94

    declareList ::= directive list_96

    directive ::= Ticks Eq grp_97
           | Encoding Eq SingleQuoteString
           | StrictTypes Eq numericConstant

    formalParameterList ::= opt_98 list_100 opt_101

    formalParameter ::= opt_102 list_103 opt_104 opt_105 opt_106 opt_107 variableInitializer

    typeHint ::= qualifiedStaticTypeRef
           | Callable
           | primitiveType
           | typeHint PIPE typeHint

    globalStatement ::= Global globalVar list_109 SemiColon

    globalVar ::= VarName
           | Dollar chain
           | Dollar OpenCurlyBracket expression CloseCurlyBracket

    echoStatement ::= Echo expressionList SemiColon

    staticVariableStatement ::= Static variableInitializer list_111 SemiColon

    classStatement ::= opt_112 grp_113
           | Use qualifiedNamespaceNameList traitAdaptations

    traitAdaptations ::= SemiColon
           | OpenCurlyBracket list_126 CloseCurlyBracket

    traitAdaptationStatement ::= traitPrecedence
           | traitAlias

    traitPrecedence ::= qualifiedNamespaceName COLONCOLON identifier InsteadOf qualifiedNamespaceNameList SemiColon

    traitAlias ::= traitMethodReference As grp_127 SemiColon

    traitMethodReference ::= opt_130 identifier

    baseCtorCall ::= COLON identifier opt_131

    returnTypeDecl ::= COLON opt_132 typeHint

    methodBody ::= SemiColon
           | blockStatement

    propertyModifiers ::= memberModifiers
           | Var

    memberModifiers ::= list_133

    variableInitializer ::= VarName opt_135

    identifierInitializer ::= identifier Eq constantInitializer

    globalConstantDeclaration ::= opt_136 Const identifierInitializer list_138 SemiColon

    enumDeclaration ::= Enum_ identifier opt_141 opt_143 OpenCurlyBracket list_144 CloseCurlyBracket

    enumItem ::= Case identifier opt_146 SemiColon
           | opt_147 functionDeclaration
           | Use qualifiedNamespaceNameList traitAdaptations

    expressionList ::= expression list_149

    parentheses ::= LPAREN grp_150 RPAREN

    expression ::= Clone expression
           | newExpr
           | stringConstant LBRACKET expression RBRACKET
           | LPAREN castOperation RPAREN expression
           | grp_151 expression
           | grp_152 expression
           | grp_153 chain
           | chain grp_154
           | Print expression
           | arrayCreation
           | chain
           | constant
           | string
           | Label
           | BackQuoteString
           | parentheses
           | Yield
           | List LPAREN assignmentList RPAREN Eq expression
           | IsSet LPAREN chainList RPAREN
           | Empty LPAREN chain RPAREN
           | Eval LPAREN expression RPAREN
           | Exit opt_156
           | lambdaFunctionExpr
           | matchExpr
           | expression STARSTAR expression
           | expression InstanceOf typeRef
           | expression grp_157 expression
           | expression grp_158 expression
           | expression grp_159 expression
           | expression grp_160 expression
           | expression grp_161 expression
           | expression AMP expression
           | expression CARET expression
           | expression PIPE expression
           | expression ANDAND expression
           | expression OROR expression
           | expression QuestionMark opt_162 COLON expression
           | expression QUESTQUEST expression
           | expression OP_11084 expression
           | grp_163 expression
           | grp_164 expression
           | Throw expression
           | arrayDestructuring Eq expression
           | assignable assignmentOperator opt_165 expression
           | assignable Eq opt_166 AMP grp_167
           | expression LogicalAnd expression
           | expression LogicalXor expression
           | expression LogicalOr expression

    assignable ::= chain
           | arrayCreation

    arrayCreation ::= grp_168 opt_172

    arrayDestructuring ::= LBRACKET list_173 indexedDestructItem list_176 list_177 RBRACKET
           | LBRACKET keyedDestructItem list_180 opt_181 RBRACKET

    indexedDestructItem ::= opt_182 chain

    keyedDestructItem ::= opt_184 opt_185 chain

    lambdaFunctionExpr ::= opt_186 Function_ opt_187 LPAREN formalParameterList RPAREN opt_188 opt_190 blockStatement
           | LambdaFn LPAREN formalParameterList RPAREN FATARROW expression

    matchExpr ::= Match_ LPAREN expression RPAREN OpenCurlyBracket matchItem list_192 opt_193 CloseCurlyBracket

    matchItem ::= expression list_195 FATARROW expression

    newExpr ::= New typeRef opt_196

    assignmentOperator ::= Eq
           | PLUSEQ
           | MINUSEQ
           | STAREQ
           | STARSTAREQ
           | SLASHEQ
           | OP_54280
           | PERCENTEQ
           | AMPEQ
           | PIPEEQ
           | CARETEQ
           | LSHIFTEQ
           | RSHIFTEQ
           | QUESTQUESTEQ

    yieldExpression ::= Yield grp_197

    arrayItemList ::= arrayItem list_201 opt_202

    arrayItem ::= expression opt_204
           | opt_206 AMP chain

    lambdaFunctionUseVars ::= Use LPAREN lambdaFunctionUseVar list_208 RPAREN

    lambdaFunctionUseVar ::= opt_209 VarName

    qualifiedStaticTypeRef ::= qualifiedNamespaceName opt_210
           | Static

    typeRef ::= grp_211 opt_212
           | primitiveType
           | Static
           | anonymousClass

    anonymousClass ::= opt_213 opt_214 opt_215 opt_216 grp_217 OpenCurlyBracket list_226 CloseCurlyBracket

    indirectTypeRef ::= chainBase list_228

    qualifiedNamespaceName ::= opt_229 opt_230 namespaceNameList

    namespaceNameList ::= identifier
           | identifier list_232 opt_234

    namespaceNameTail ::= identifier opt_236
           | OpenCurlyBracket namespaceNameTail list_238 opt_239 CloseCurlyBracket

    qualifiedNamespaceNameList ::= qualifiedNamespaceName list_241

    arguments ::= LPAREN opt_245 opt_246 RPAREN

    actualArgument ::= opt_247 opt_248 expression
           | AMP chain

    argumentName ::= identifier COLON

    constantInitializer ::= constant
           | string
           | Array LPAREN opt_251 RPAREN
           | LBRACKET opt_254 RBRACKET
           | grp_255 constantInitializer
           | grp_256 list_259

    constant ::= Null
           | literalConstant
           | magicConstant
           | classConstant
           | qualifiedNamespaceName

    literalConstant ::= Real
           | BooleanConstant
           | numericConstant
           | stringConstant

    numericConstant ::= Octal
           | Decimal
           | Hex
           | Binary

    classConstant ::= grp_260 COLONCOLON grp_261
           | grp_262 COLONCOLON grp_263

    stringConstant ::= Label

    string ::= StartHereDoc list_264
           | StartNowDoc list_265
           | SingleQuoteString
           | DoubleQuote list_266 DoubleQuote

    interpolatedStringPart ::= StringPart
           | UnicodeEscape
           | chain

    chainList ::= chain list_268

    chain ::= chainOrigin list_269

    chainOrigin ::= chainBase
           | functionCall
           | LPAREN newExpr RPAREN

    memberAccess ::= ARROW keyedFieldName opt_270

    functionCall ::= functionCallName actualArguments

    functionCallName ::= qualifiedNamespaceName
           | classConstant
           | chainBase
           | parentheses

    actualArguments ::= opt_271 list_272 list_273

    chainBase ::= keyedVariable opt_275
           | qualifiedStaticTypeRef COLONCOLON keyedVariable

    keyedFieldName ::= keyedSimpleFieldName
           | keyedVariable

    keyedSimpleFieldName ::= grp_276 list_277

    keyedVariable ::= list_278 grp_279 list_280

    squareCurlyExpression ::= LBRACKET opt_281 RBRACKET
           | OpenCurlyBracket expression CloseCurlyBracket

    assignmentList ::= opt_282 list_285

    assignmentListElement ::= chain
           | List LPAREN assignmentList RPAREN
           | arrayItem

    modifier ::= Abstract
           | Final

    identifier ::= Label
           | Abstract
           | Array
           | As
           | BinaryCast
           | BoolType
           | BooleanConstant
           | Break
           | Callable
           | Case
           | Catch
           | Class
           | Clone
           | Const
           | Continue
           | Declare
           | Default
           | Do
           | DoubleCast
           | DoubleType
           | Echo
           | Else
           | ElseIf
           | Empty
           | EndDeclare
           | EndFor
           | EndForeach
           | EndIf
           | EndSwitch
           | EndWhile
           | Eval
           | Exit
           | Extends
           | Final
           | Finally
           | FloatCast
           | For
           | Foreach
           | Function_
           | Global
           | Goto
           | If
           | Implements
           | Import
           | Include
           | IncludeOnce
           | InstanceOf
           | InsteadOf
           | Int16Cast
           | Int64Type
           | Int8Cast
           | Interface
           | IntType
           | IsSet
           | LambdaFn
           | List
           | LogicalAnd
           | LogicalOr
           | LogicalXor
           | Namespace
           | New
           | Null
           | ObjectType
           | Parent_
           | Partial
           | Print
           | Private
           | Protected
           | Public
           | Readonly
           | Require
           | RequireOnce
           | Resource
           | Return
           | Static
           | StringType
           | Switch
           | Throw
           | Trait
           | Try
           | Typeof
           | UintCast
           | UnicodeCast
           | Unset
           | Use
           | Var
           | While
           | Yield
           | From
           | Enum_
           | Match_
           | Ticks
           | Encoding
           | StrictTypes
           | Get
           | Set
           | Call
           | CallStatic
           | Constructor
           | Destruct
           | Wakeup
           | Sleep
           | Autoload
           | IsSet__
           | Unset__
           | ToString__
           | Invoke
           | SetState
           | Clone__
           | DebugInfo
           | Namespace__
           | Class__
           | Traic__
           | Function__
           | Method__
           | Line__
           | File__
           | Dir__

    memberModifier ::= Public
           | Protected
           | Private
           | Static
           | Abstract
           | Final
           | Readonly

    magicConstant ::= Namespace__
           | Class__
           | Traic__
           | Function__
           | Method__
           | Line__
           | File__
           | Dir__

    primitiveType ::= BoolType
           | IntType
           | Int64Type
           | DoubleType
           | StringType
           | Resource
           | ObjectType
           | Array

    castOperation ::= BoolType
           | Int8Cast
           | Int16Cast
           | IntType
           | Int64Type
           | UintCast
           | DoubleCast
           | DoubleType
           | FloatCast
           | StringType
           | BinaryCast
           | UnicodeCast
           | Array
           | ObjectType
           | Resource
           | Unset

    opt_1 ::= Shebang | $empty

    grp_2 ::= inlineHtml | phpBlock

    list_3 ::= $empty | list_3 grp_2

    list_4 ::= htmlElement | list_4 htmlElement

    list_5 ::= $empty | list_5 XmlText

    list_6 ::= ScriptText | list_6 ScriptText

    list_7 ::= $empty | list_7 importStatement

    list_8 ::= topStatement | list_8 topStatement

    grp_9 ::= Function_ | Const

    opt_10 ::= grp_9 | $empty

    opt_11 ::= BACKSLASH | $empty

    opt_12 ::= BACKSLASH | $empty

    seq_13 ::= COMMA opt_12 useDeclarationContent

    list_14 ::= $empty | list_14 seq_13

    opt_16 ::= namespaceNameList | $empty

    list_17 ::= $empty | list_17 namespaceStatement

    grp_15 ::= opt_16 OpenCurlyBracket list_17 CloseCurlyBracket | namespaceNameList SemiColon

    opt_18 ::= attributes | $empty

    opt_19 ::= AMP | $empty

    opt_20 ::= typeParameterListInBrackets | $empty

    opt_21 ::= QuestionMark | $empty

    seq_22 ::= COLON opt_21 typeHint

    opt_23 ::= seq_22 | $empty

    opt_24 ::= attributes | $empty

    opt_25 ::= Private | $empty

    opt_26 ::= modifier | $empty

    opt_27 ::= Partial | $empty

    opt_29 ::= typeParameterListInBrackets | $empty

    seq_30 ::= Extends qualifiedStaticTypeRef

    opt_31 ::= seq_30 | $empty

    seq_32 ::= Implements interfaceList

    opt_33 ::= seq_32 | $empty

    opt_34 ::= typeParameterListInBrackets | $empty

    seq_35 ::= Extends interfaceList

    opt_36 ::= seq_35 | $empty

    grp_28 ::= classEntryType identifier opt_29 opt_31 opt_33 | Interface identifier opt_34 opt_36

    list_37 ::= $empty | list_37 classStatement

    seq_38 ::= COMMA qualifiedStaticTypeRef

    list_39 ::= $empty | list_39 seq_38

    seq_40 ::= COMMA typeParameterDecl

    list_41 ::= $empty | list_41 seq_40

    seq_42 ::= COMMA typeParameterWithDefaultDecl

    list_43 ::= $empty | list_43 seq_42

    opt_44 ::= attributes | $empty

    opt_45 ::= attributes | $empty

    grp_46 ::= qualifiedStaticTypeRef | primitiveType

    seq_47 ::= COMMA typeRef

    list_48 ::= $empty | list_48 seq_47

    list_49 ::= attributeGroup | list_49 attributeGroup

    seq_50 ::= identifier COLON

    opt_51 ::= seq_50 | $empty

    seq_52 ::= COMMA attribute

    list_53 ::= $empty | list_53 seq_52

    opt_54 ::= arguments | $empty

    list_55 ::= $empty | list_55 innerStatement

    list_56 ::= $empty | list_56 elseIfStatement

    opt_57 ::= elseStatement | $empty

    list_58 ::= $empty | list_58 elseIfColonStatement

    opt_59 ::= elseColonStatement | $empty

    grp_60 ::= statement | COLON innerStatementList EndWhile SemiColon

    opt_61 ::= forInit | $empty

    opt_62 ::= expressionList | $empty

    opt_63 ::= forUpdate | $empty

    grp_64 ::= statement | COLON innerStatementList EndFor SemiColon

    opt_66 ::= SemiColon | $empty

    list_67 ::= $empty | list_67 switchBlock

    opt_68 ::= SemiColon | $empty

    list_69 ::= $empty | list_69 switchBlock

    grp_65 ::= OpenCurlyBracket opt_66 list_67 CloseCurlyBracket | COLON opt_68 list_69 EndSwitch SemiColon

    grp_71 ::= Case expression | Default

    grp_72 ::= COLON | SemiColon

    grp_70 ::= grp_71 grp_72

    list_73 ::= grp_70 | list_73 grp_70

    opt_74 ::= expression | $empty

    opt_75 ::= expression | $empty

    opt_76 ::= expression | $empty

    opt_78 ::= AMP | $empty

    opt_79 ::= AMP | $empty

    seq_80 ::= FATARROW opt_79 chain

    opt_81 ::= seq_80 | $empty

    opt_82 ::= AMP | $empty

    seq_83 ::= FATARROW opt_82 chain

    opt_84 ::= seq_83 | $empty

    grp_77 ::= LPAREN expression As arrayDestructuring RPAREN | LPAREN chain As opt_78 assignable opt_81 RPAREN | LPAREN expression As assignable opt_84 RPAREN | LPAREN chain As List LPAREN assignmentList RPAREN RPAREN

    grp_85 ::= statement | COLON innerStatementList EndForeach SemiColon

    list_87 ::= catchClause | list_87 catchClause

    opt_88 ::= finallyStatement | $empty

    list_89 ::= $empty | list_89 catchClause

    grp_86 ::= list_87 opt_88 | list_89 finallyStatement

    grp_90 ::= PIPE qualifiedStaticTypeRef

    list_91 ::= $empty | list_91 grp_90

    opt_92 ::= VarName | $empty

    grp_93 ::= statement | COLON innerStatementList EndDeclare SemiColon

    list_94 ::= inlineHtml | list_94 inlineHtml

    seq_95 ::= COMMA directive

    list_96 ::= $empty | list_96 seq_95

    grp_97 ::= numericConstant | Real

    opt_98 ::= formalParameter | $empty

    seq_99 ::= COMMA formalParameter

    list_100 ::= $empty | list_100 seq_99

    opt_101 ::= COMMA | $empty

    opt_102 ::= attributes | $empty

    list_103 ::= $empty | list_103 memberModifier

    opt_104 ::= QuestionMark | $empty

    opt_105 ::= typeHint | $empty

    opt_106 ::= AMP | $empty

    opt_107 ::= ELLIPSIS | $empty

    seq_108 ::= COMMA globalVar

    list_109 ::= $empty | list_109 seq_108

    seq_110 ::= COMMA variableInitializer

    list_111 ::= $empty | list_111 seq_110

    opt_112 ::= attributes | $empty

    opt_114 ::= typeHint | $empty

    seq_115 ::= COMMA variableInitializer

    list_116 ::= $empty | list_116 seq_115

    opt_117 ::= memberModifiers | $empty

    opt_119 ::= typeHint | $empty

    seq_120 ::= COMMA identifierInitializer

    list_121 ::= $empty | list_121 seq_120

    opt_122 ::= AMP | $empty

    opt_123 ::= typeParameterListInBrackets | $empty

    grp_124 ::= baseCtorCall | returnTypeDecl

    opt_125 ::= grp_124 | $empty

    grp_118 ::= Const opt_119 identifierInitializer list_121 SemiColon | Function_ opt_122 identifier opt_123 LPAREN formalParameterList RPAREN opt_125 methodBody

    grp_113 ::= propertyModifiers opt_114 variableInitializer list_116 SemiColon | opt_117 grp_118

    list_126 ::= $empty | list_126 traitAdaptationStatement

    opt_128 ::= memberModifier | $empty

    grp_127 ::= memberModifier | opt_128 identifier

    seq_129 ::= qualifiedNamespaceName COLONCOLON

    opt_130 ::= seq_129 | $empty

    opt_131 ::= arguments | $empty

    opt_132 ::= QuestionMark | $empty

    list_133 ::= memberModifier | list_133 memberModifier

    seq_134 ::= Eq constantInitializer

    opt_135 ::= seq_134 | $empty

    opt_136 ::= attributes | $empty

    seq_137 ::= COMMA identifierInitializer

    list_138 ::= $empty | list_138 seq_137

    grp_140 ::= IntType | StringType

    grp_139 ::= Colon grp_140

    opt_141 ::= grp_139 | $empty

    seq_142 ::= Implements interfaceList

    opt_143 ::= seq_142 | $empty

    list_144 ::= $empty | list_144 enumItem

    seq_145 ::= Eq expression

    opt_146 ::= seq_145 | $empty

    opt_147 ::= memberModifiers | $empty

    seq_148 ::= COMMA expression

    list_149 ::= $empty | list_149 seq_148

    grp_150 ::= expression | yieldExpression

    grp_151 ::= TILDE | AT

    grp_152 ::= BANG | PLUS | MINUS

    grp_153 ::= PLUSPLUS | MINUSMINUS

    grp_154 ::= PLUSPLUS | MINUSMINUS

    grp_155 ::= LPAREN RPAREN | parentheses

    opt_156 ::= grp_155 | $empty

    grp_157 ::= STAR | Divide | PERCENT

    grp_158 ::= PLUS | MINUS | DOT

    grp_159 ::= LSHIFT | RSHIFT

    grp_160 ::= Less | LTEQ | Greater | GTEQ

    grp_161 ::= EQEQEQ | NOTEQEQ | EQEQ | IsNotEq

    opt_162 ::= expression | $empty

    grp_163 ::= Include | IncludeOnce

    grp_164 ::= Require | RequireOnce

    opt_165 ::= attributes | $empty

    opt_166 ::= attributes | $empty

    grp_167 ::= chain | newExpr

    opt_169 ::= arrayItemList | $empty

    opt_170 ::= arrayItemList | $empty

    grp_168 ::= Array LPAREN opt_169 RPAREN | LBRACKET opt_170 RBRACKET

    seq_171 ::= LBRACKET expression RBRACKET

    opt_172 ::= seq_171 | $empty

    list_173 ::= $empty | list_173 COMMA

    list_174 ::= COMMA | list_174 COMMA

    seq_175 ::= list_174 indexedDestructItem

    list_176 ::= $empty | list_176 seq_175

    list_177 ::= $empty | list_177 COMMA

    list_178 ::= COMMA | list_178 COMMA

    seq_179 ::= list_178 keyedDestructItem

    list_180 ::= $empty | list_180 seq_179

    opt_181 ::= COMMA | $empty

    opt_182 ::= AMP | $empty

    seq_183 ::= expression FATARROW

    opt_184 ::= seq_183 | $empty

    opt_185 ::= AMP | $empty

    opt_186 ::= Static | $empty

    opt_187 ::= AMP | $empty

    opt_188 ::= lambdaFunctionUseVars | $empty

    seq_189 ::= COLON typeHint

    opt_190 ::= seq_189 | $empty

    seq_191 ::= COMMA matchItem

    list_192 ::= $empty | list_192 seq_191

    opt_193 ::= COMMA | $empty

    seq_194 ::= COMMA expression

    list_195 ::= $empty | list_195 seq_194

    opt_196 ::= arguments | $empty

    seq_198 ::= FATARROW expression

    opt_199 ::= seq_198 | $empty

    grp_197 ::= expression opt_199 | From expression

    seq_200 ::= COMMA arrayItem

    list_201 ::= $empty | list_201 seq_200

    opt_202 ::= COMMA | $empty

    seq_203 ::= FATARROW expression

    opt_204 ::= seq_203 | $empty

    seq_205 ::= expression FATARROW

    opt_206 ::= seq_205 | $empty

    seq_207 ::= COMMA lambdaFunctionUseVar

    list_208 ::= $empty | list_208 seq_207

    opt_209 ::= AMP | $empty

    opt_210 ::= genericDynamicArgs | $empty

    grp_211 ::= qualifiedNamespaceName | indirectTypeRef

    opt_212 ::= genericDynamicArgs | $empty

    opt_213 ::= attributes | $empty

    opt_214 ::= Private | $empty

    opt_215 ::= modifier | $empty

    opt_216 ::= Partial | $empty

    opt_218 ::= typeParameterListInBrackets | $empty

    seq_219 ::= Extends qualifiedStaticTypeRef

    opt_220 ::= seq_219 | $empty

    seq_221 ::= Implements interfaceList

    opt_222 ::= seq_221 | $empty

    opt_223 ::= typeParameterListInBrackets | $empty

    seq_224 ::= Extends interfaceList

    opt_225 ::= seq_224 | $empty

    grp_217 ::= classEntryType opt_218 opt_220 opt_222 | Interface identifier opt_223 opt_225

    list_226 ::= $empty | list_226 classStatement

    seq_227 ::= ARROW keyedFieldName

    list_228 ::= $empty | list_228 seq_227

    opt_229 ::= Namespace | $empty

    opt_230 ::= BACKSLASH | $empty

    seq_231 ::= BACKSLASH identifier

    list_232 ::= $empty | list_232 seq_231

    seq_233 ::= BACKSLASH namespaceNameTail

    opt_234 ::= seq_233 | $empty

    seq_235 ::= As identifier

    opt_236 ::= seq_235 | $empty

    seq_237 ::= COMMA namespaceNameTail

    list_238 ::= $empty | list_238 seq_237

    opt_239 ::= COMMA | $empty

    seq_240 ::= COMMA qualifiedNamespaceName

    list_241 ::= $empty | list_241 seq_240

    seq_243 ::= COMMA actualArgument

    list_244 ::= $empty | list_244 seq_243

    grp_242 ::= actualArgument list_244 | yieldExpression

    opt_245 ::= grp_242 | $empty

    opt_246 ::= COMMA | $empty

    opt_247 ::= argumentName | $empty

    opt_248 ::= ELLIPSIS | $empty

    opt_249 ::= COMMA | $empty

    seq_250 ::= arrayItemList opt_249

    opt_251 ::= seq_250 | $empty

    opt_252 ::= COMMA | $empty

    seq_253 ::= arrayItemList opt_252

    opt_254 ::= seq_253 | $empty

    grp_255 ::= PLUS | MINUS

    grp_256 ::= string | constant

    grp_258 ::= string | constant

    grp_257 ::= DOT grp_258

    list_259 ::= $empty | list_259 grp_257

    grp_260 ::= Class | Parent_

    grp_261 ::= identifier | Constructor | Get | Set

    grp_262 ::= qualifiedStaticTypeRef | keyedVariable | string

    grp_263 ::= identifier | keyedVariable

    list_264 ::= HereDocText | list_264 HereDocText

    list_265 ::= HereDocText | list_265 HereDocText

    list_266 ::= $empty | list_266 interpolatedStringPart

    seq_267 ::= COMMA chain

    list_268 ::= $empty | list_268 seq_267

    list_269 ::= $empty | list_269 memberAccess

    opt_270 ::= actualArguments | $empty

    opt_271 ::= genericDynamicArgs | $empty

    list_272 ::= arguments | list_272 arguments

    list_273 ::= $empty | list_273 squareCurlyExpression

    seq_274 ::= COLONCOLON keyedVariable

    opt_275 ::= seq_274 | $empty

    grp_276 ::= identifier | OpenCurlyBracket expression CloseCurlyBracket

    list_277 ::= $empty | list_277 squareCurlyExpression

    list_278 ::= $empty | list_278 Dollar

    grp_279 ::= VarName | Dollar OpenCurlyBracket expression CloseCurlyBracket

    list_280 ::= $empty | list_280 squareCurlyExpression

    opt_281 ::= expression | $empty

    opt_282 ::= assignmentListElement | $empty

    opt_283 ::= assignmentListElement | $empty

    seq_284 ::= COMMA opt_283

    list_285 ::= $empty | list_285 seq_284

%End
