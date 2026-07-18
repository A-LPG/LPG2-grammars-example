-- AUTO-GENERATED from antlr/grammars-v4 solidity by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=SolidityParser
%options package=lpg.grammars.solidity
%options template=dtParserTemplateF.gi
%options import_terminals=SolidityLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    sourceUnit
%End

%Rules
    sourceUnit ::= listn0002

    pragmaDirective ::= Pragma IDENTIFIER list_pragma_rest SEMI

    list_pragma_rest ::= $empty
           | list_pragma_rest IDENTIFIER
           | list_pragma_rest NUMBER
           | list_pragma_rest CARET
           | list_pragma_rest DOT
           | list_pragma_rest GT
           | list_pragma_rest LT
           | list_pragma_rest EQ
           | list_pragma_rest STRING

    importDirective ::= Import grpn0004 Semicolon

    importAliases ::= identifier optn0011

    path ::= NonEmptyStringLiteral

    symbolAliases ::= LBRACE listn0012 importAliases listn0015 RBRACE

    contractDefinition ::= optn0016 Contract identifier optn0017 LBRACE listn0018 RBRACE

    interfaceDefinition ::= Interface identifier optn0019 LBRACE listn0020 RBRACE

    libraryDefinition ::= Library identifier LBRACE listn0021 RBRACE

    inheritanceSpecifierList ::= Is listn0022 inheritanceSpecifier listn0025

    inheritanceSpecifier ::= identifierPath optn0026

    contractBodyElement ::= constructorDefinition
           | functionDefinition
           | modifierDefinition
           | fallbackFunctionDefinition
           | receiveFunctionDefinition
           | structDefinition
           | enumDefinition
           | userDefinedValueTypeDefinition
           | stateVariableDeclaration
           | eventDefinition
           | errorDefinition
           | usingDirective

    namedArgument ::= identifier Colon expression

    callArgumentList ::= LPAREN grpn0027 RPAREN

    identifierPath ::= identifier listn0037

    modifierInvocation ::= identifierPath optn0038

    visibility ::= Internal
           | External
           | Private
           | Public

    parameterList ::= listn0039 parameterDeclaration listn0042

    parameterDeclaration ::= typeName optn0043 optn0044

    constructorDefinition ::= Constructor LPAREN optn0045 RPAREN listn0047 block

    stateMutability ::= Pure
           | View
           | Payable

    overrideSpecifier ::= Override optn0053

    functionDefinition ::= Function grpn0054 LPAREN optn0055 RPAREN listn0057 optn0059 grpn0060

    modifierDefinition ::= Modifier identifier optn0063 listn0065 grpn0066

    fallbackFunctionDefinition ::= Fallback LPAREN optn0067 RPAREN listn0069 optn0071 grpn0072

    receiveFunctionDefinition ::= Receive LPAREN RPAREN listn0074 grpn0075

    structDefinition ::= Struct identifier LBRACE listn0076 RBRACE

    structMember ::= typeName identifier Semicolon

    enumDefinition ::= Enum identifier LBRACE listn0077 identifier listn0080 RBRACE

    userDefinedValueTypeDefinition ::= Type identifier Is grpn0081 Semicolon

    stateVariableDeclaration ::= typeName listn0083 identifier optn0085 Semicolon

    constantVariableDeclaration ::= typeName Constant identifier Assign expression Semicolon

    eventParameter ::= typeName optn0086 optn0087

    eventDefinition ::= Event identifier LPAREN optn0093 RPAREN optn0094 Semicolon

    errorParameter ::= typeName optn0095

    errorDefinition ::= Error identifier LPAREN optn0101 RPAREN Semicolon

    userDefinableOperator ::= BitAnd
           | BitNot
           | BitOr
           | BitXor
           | Add
           | Div
           | Mod
           | Mul
           | Sub
           | Equal
           | GreaterThan
           | GreaterThanOrEqual
           | LessThan
           | LessThanOrEqual
           | NotEqual

    usingDirective ::= Using grpn0102 For grpn0106 optn0107 Semicolon

    usingAliases ::= identifierPath optn0109

    typeName ::= elementaryTypeName
           | addressPayable
           | functionTypeName
           | mappingType
           | identifierPath
           | typeName LBRACKET optn0110 RBRACKET

    elementaryTypeName ::= Address
           | Bool
           | String
           | Bytes
           | SignedIntegerType
           | UnsignedIntegerType
           | FixedBytes
           | Fixed
           | Ufixed

    addressPayable ::= Address Payable

    functionTypeName ::= Function LPAREN optn0111 RPAREN listn0113 optn0115

    variableDeclaration ::= typeName optn0116 identifier

    dataLocation ::= Memory
           | Storage
           | Calldata

    expression ::= expression LBRACKET optn0117 RBRACKET
           | expression LBRACKET optn0118 Colon optn0119 RBRACKET
           | expression Period grpn0120
           | expression LBRACE optn0124 RBRACE
           | expression callArgumentList
           | Payable callArgumentList
           | Type LPAREN typeName RPAREN
           | grpn0125 expression
           | expression grpn0126
           | expression Exp expression
           | expression grpn0127 expression
           | expression grpn0128 expression
           | expression grpn0129 expression
           | expression BitAnd expression
           | expression BitXor expression
           | expression BitOr expression
           | expression grpn0130 expression
           | expression grpn0131 expression
           | expression And expression
           | expression Or expression
           | expression Conditional expression Colon expression
           | expression assignOp expression
           | New typeName
           | tupleExpression
           | inlineArrayExpression
           | grpn0132

    assignOp ::= Assign
           | AssignBitOr
           | AssignBitXor
           | AssignBitAnd
           | AssignShl
           | AssignSar
           | AssignShr
           | AssignAdd
           | AssignSub
           | AssignMul
           | AssignDiv
           | AssignMod

    tupleExpression ::= LPAREN seqn0137 RPAREN

    inlineArrayExpression ::= LBRACKET seqn0140 RBRACKET

    identifier ::= IDENTIFIER
           | From
           | Error
           | Revert
           | Global
           | Transient

    literal ::= stringLiteral
           | numberLiteral
           | boolLiteral
           | hexStringLiteral
           | unicodeStringLiteral

    literalWithSubDenomination ::= numberLiteral SubDenomination

    boolLiteral ::= TrueLiteral
           | FalseLiteral

    stringLiteral ::= listn0142

    hexStringLiteral ::= listn0143

    unicodeStringLiteral ::= listn0144

    numberLiteral ::= NUMBER
           | HexNumber

    block ::= LBRACE listn0146 RBRACE

    uncheckedBlock ::= Unchecked block

    statement ::= block
           | simpleStatement
           | ifStatement
           | forStatement
           | whileStatement
           | doWhileStatement
           | continueStatement
           | breakStatement
           | tryStatement
           | returnStatement
           | emitStatement
           | revertStatement
           | assemblyStatement

    simpleStatement ::= variableDeclarationStatement
           | expressionStatement

    ifStatement ::= If LPAREN expression RPAREN statement optn0148

    forStatement ::= For LPAREN grpn0149 grpn0150 optn0151 RPAREN statement

    whileStatement ::= While LPAREN expression RPAREN statement

    doWhileStatement ::= Do statement While LPAREN expression RPAREN Semicolon

    continueStatement ::= Continue Semicolon

    breakStatement ::= Break Semicolon

    tryStatement ::= Try expression optn0153 block listn0154

    catchClause ::= Catch optn0157 block

    returnStatement ::= Return optn0158 Semicolon

    emitStatement ::= Emit expression callArgumentList Semicolon

    revertStatement ::= Revert expression callArgumentList Semicolon

    assemblyStatement ::= Assembly optn0159 optn0160 AssemblyLBrace listn0161 YulRBrace

    assemblyFlags ::= AssemblyBlockLParen AssemblyFlagString listn0163 AssemblyBlockRParen

    variableDeclarationList ::= listn0164 variableDeclaration listn0167

    variableDeclarationTuple ::= LPAREN seqn0170 listn0175 RPAREN

    variableDeclarationStatement ::= grpn0176 Semicolon

    expressionStatement ::= expression Semicolon

    mappingType ::= Mapping LPAREN mappingKeyType optn0181 DoubleArrow typeName optn0182 RPAREN

    mappingKeyType ::= elementaryTypeName
           | identifierPath

    yulStatement ::= yulBlock
           | yulVariableDeclaration
           | yulAssignment
           | yulFunctionCall
           | yulIfStatement
           | yulForStatement
           | yulSwitchStatement
           | YulLeave
           | YulBreak
           | YulContinue
           | yulFunctionDefinition

    yulBlock ::= YulLBrace listn0183 YulRBrace

    yulVariableDeclaration ::= seqn0187
           | seqn0194

    yulAssignment ::= yulPath YulAssign yulExpression
           | seqn0197 YulAssign yulFunctionCall

    yulIfStatement ::= YulIf yulExpression yulBlock

    yulForStatement ::= YulFor yulBlock yulExpression yulBlock yulBlock

    yulSwitchCase ::= YulCase yulLiteral yulBlock

    yulSwitchStatement ::= YulSwitch yulExpression grpn0198

    yulFunctionDefinition ::= YulFunction YulIdentifier YulLParen optn0209 YulRParen optn0215 yulBlock

    yulPath ::= YulIdentifier listn0218

    yulFunctionCall ::= grpn0219 YulLParen optn0223 YulRParen

    yulbool ::= YulTrue
           | YulFalse

    yulLiteral ::= YulDecimalNumber
           | YulStringLiteral
           | YulHexNumber
           | yulbool
           | YulHexStringLiteral

    yulExpression ::= yulPath
           | yulFunctionCall
           | yulLiteral

    grpn0001 ::= pragmaDirective
           | importDirective
           | usingDirective
           | contractDefinition
           | interfaceDefinition
           | libraryDefinition
           | functionDefinition
           | constantVariableDeclaration
           | structDefinition
           | enumDefinition
           | userDefinedValueTypeDefinition
           | errorDefinition
           | eventDefinition

    listn0002 ::= $empty
           | listn0002 grpn0001

    listn0003 ::= PragmaToken
           | listn0003 PragmaToken

    seqn0005 ::= As identifier

    optn0006 ::= seqn0005
           | $empty

    seqn0007 ::= path optn0006

    seqn0008 ::= symbolAliases From path

    seqn0009 ::= Mul As identifier From path

    grpn0004 ::= seqn0007
           | seqn0008
           | seqn0009

    seqn0010 ::= As identifier

    optn0011 ::= seqn0010
           | $empty

    listn0012 ::= aliases
           | listn0012 aliases

    listn0013 ::= aliases
           | listn0013 aliases

    seqn0014 ::= Comma listn0013 importAliases

    listn0015 ::= $empty
           | listn0015 seqn0014

    optn0016 ::= Abstract
           | $empty

    optn0017 ::= inheritanceSpecifierList
           | $empty

    listn0018 ::= $empty
           | listn0018 contractBodyElement

    optn0019 ::= inheritanceSpecifierList
           | $empty

    listn0020 ::= $empty
           | listn0020 contractBodyElement

    listn0021 ::= $empty
           | listn0021 contractBodyElement

    listn0022 ::= inheritanceSpecifiers
           | listn0022 inheritanceSpecifiers

    listn0023 ::= inheritanceSpecifiers
           | listn0023 inheritanceSpecifiers

    seqn0024 ::= Comma listn0023 inheritanceSpecifier

    listn0025 ::= $empty
           | listn0025 seqn0024

    optn0026 ::= callArgumentList
           | $empty

    seqn0028 ::= Comma expression

    listn0029 ::= $empty
           | listn0029 seqn0028

    seqn0030 ::= expression listn0029

    optn0031 ::= seqn0030
           | $empty

    seqn0032 ::= Comma namedArgument

    listn0033 ::= $empty
           | listn0033 seqn0032

    seqn0034 ::= namedArgument listn0033

    optn0035 ::= seqn0034
           | $empty

    grpn0027 ::= optn0031
           | LBRACE optn0035 RBRACE

    seqn0036 ::= Period identifier

    listn0037 ::= $empty
           | listn0037 seqn0036

    optn0038 ::= callArgumentList
           | $empty

    listn0039 ::= parameters
           | listn0039 parameters

    listn0040 ::= parameters
           | listn0040 parameters

    seqn0041 ::= Comma listn0040 parameterDeclaration

    listn0042 ::= $empty
           | listn0042 seqn0041

    optn0043 ::= dataLocation
           | $empty

    optn0044 ::= identifier
           | $empty

    optn0045 ::= parameterList
           | $empty

    grpn0046 ::= modifierInvocation
           | Payable
           | Internal
           | Public

    listn0047 ::= $empty
           | listn0047 grpn0046

    listn0048 ::= overrides
           | listn0048 overrides

    listn0049 ::= overrides
           | listn0049 overrides

    seqn0050 ::= Comma listn0049 identifierPath

    listn0051 ::= $empty
           | listn0051 seqn0050

    seqn0052 ::= LPAREN listn0048 identifierPath listn0051 RPAREN

    optn0053 ::= seqn0052
           | $empty

    grpn0054 ::= identifier
           | Fallback
           | Receive

    optn0055 ::= parameterList
           | $empty

    grpn0056 ::= visibility
           | stateMutability
           | modifierInvocation
           | Virtual
           | overrideSpecifier

    listn0057 ::= $empty
           | listn0057 grpn0056

    seqn0058 ::= Returns LPAREN parameterList RPAREN

    optn0059 ::= seqn0058
           | $empty

    grpn0060 ::= Semicolon
           | block

    optn0061 ::= parameterList
           | $empty

    seqn0062 ::= LPAREN optn0061 RPAREN

    optn0063 ::= seqn0062
           | $empty

    grpn0064 ::= Virtual
           | overrideSpecifier

    listn0065 ::= $empty
           | listn0065 grpn0064

    grpn0066 ::= Semicolon
           | block

    optn0067 ::= parameterList
           | $empty

    grpn0068 ::= External
           | stateMutability
           | modifierInvocation
           | Virtual
           | overrideSpecifier

    listn0069 ::= $empty
           | listn0069 grpn0068

    seqn0070 ::= Returns LPAREN parameterList RPAREN

    optn0071 ::= seqn0070
           | $empty

    grpn0072 ::= Semicolon
           | block

    grpn0073 ::= External
           | Payable
           | modifierInvocation
           | Virtual
           | overrideSpecifier

    listn0074 ::= $empty
           | listn0074 grpn0073

    grpn0075 ::= Semicolon
           | block

    listn0076 ::= structMember
           | listn0076 structMember

    listn0077 ::= enumValues
           | listn0077 enumValues

    listn0078 ::= enumValues
           | listn0078 enumValues

    seqn0079 ::= Comma listn0078 identifier

    listn0080 ::= $empty
           | listn0080 seqn0079

    grpn0081 ::= elementaryTypeName
           | addressPayable

    grpn0082 ::= Public
           | Private
           | Internal
           | Constant
           | overrideSpecifier
           | Immutable
           | Transient

    listn0083 ::= $empty
           | listn0083 grpn0082

    seqn0084 ::= Assign expression

    optn0085 ::= seqn0084
           | $empty

    optn0086 ::= Indexed
           | $empty

    optn0087 ::= identifier
           | $empty

    listn0088 ::= parameters
           | listn0088 parameters

    listn0089 ::= parameters
           | listn0089 parameters

    seqn0090 ::= Comma listn0089 eventParameter

    listn0091 ::= $empty
           | listn0091 seqn0090

    seqn0092 ::= listn0088 eventParameter listn0091

    optn0093 ::= seqn0092
           | $empty

    optn0094 ::= Anonymous
           | $empty

    optn0095 ::= identifier
           | $empty

    listn0096 ::= parameters
           | listn0096 parameters

    listn0097 ::= parameters
           | listn0097 parameters

    seqn0098 ::= Comma listn0097 errorParameter

    listn0099 ::= $empty
           | listn0099 seqn0098

    seqn0100 ::= listn0096 errorParameter listn0099

    optn0101 ::= seqn0100
           | $empty

    seqn0103 ::= Comma usingAliases

    listn0104 ::= $empty
           | listn0104 seqn0103

    seqn0105 ::= LBRACE usingAliases listn0104 RBRACE

    grpn0102 ::= identifierPath
           | seqn0105

    grpn0106 ::= Mul
           | typeName

    optn0107 ::= Global
           | $empty

    seqn0108 ::= As userDefinableOperator

    optn0109 ::= seqn0108
           | $empty

    optn0110 ::= expression
           | $empty

    optn0111 ::= parameterList
           | $empty

    grpn0112 ::= visibility
           | stateMutability

    listn0113 ::= $empty
           | listn0113 grpn0112

    seqn0114 ::= Returns LPAREN parameterList RPAREN

    optn0115 ::= seqn0114
           | $empty

    optn0116 ::= dataLocation
           | $empty

    optn0117 ::= expression
           | $empty

    optn0118 ::= expression
           | $empty

    optn0119 ::= expression
           | $empty

    grpn0120 ::= identifier
           | Address

    seqn0121 ::= Comma namedArgument

    listn0122 ::= $empty
           | listn0122 seqn0121

    seqn0123 ::= namedArgument listn0122

    optn0124 ::= seqn0123
           | $empty

    grpn0125 ::= Inc
           | Dec
           | Not
           | BitNot
           | Delete
           | Sub

    grpn0126 ::= Inc
           | Dec

    grpn0127 ::= Mul
           | Div
           | Mod

    grpn0128 ::= Add
           | Sub

    grpn0129 ::= Shl
           | Sar
           | Shr

    grpn0130 ::= LessThan
           | GreaterThan
           | LessThanOrEqual
           | GreaterThanOrEqual

    grpn0131 ::= Equal
           | NotEqual

    grpn0132 ::= identifier
           | literal
           | literalWithSubDenomination
           | elementaryTypeName

    optn0133 ::= expression
           | $empty

    optn0134 ::= expression
           | $empty

    seqn0135 ::= Comma optn0134

    listn0136 ::= $empty
           | listn0136 seqn0135

    seqn0137 ::= optn0133 listn0136

    seqn0138 ::= Comma expression

    listn0139 ::= $empty
           | listn0139 seqn0138

    seqn0140 ::= expression listn0139

    grpn0141 ::= NonEmptyStringLiteral
           | EmptyStringLiteral

    listn0142 ::= grpn0141
           | listn0142 grpn0141

    listn0143 ::= HexString
           | listn0143 HexString

    listn0144 ::= UnicodeStringLiteral
           | listn0144 UnicodeStringLiteral

    grpn0145 ::= statement
           | uncheckedBlock

    listn0146 ::= $empty
           | listn0146 grpn0145

    seqn0147 ::= Else statement

    optn0148 ::= seqn0147
           | $empty

    grpn0149 ::= simpleStatement
           | Semicolon

    grpn0150 ::= expressionStatement
           | Semicolon

    optn0151 ::= expression
           | $empty

    seqn0152 ::= Returns LPAREN parameterList RPAREN

    optn0153 ::= seqn0152
           | $empty

    listn0154 ::= catchClause
           | listn0154 catchClause

    optn0155 ::= identifier
           | $empty

    seqn0156 ::= optn0155 LPAREN parameterList RPAREN

    optn0157 ::= seqn0156
           | $empty

    optn0158 ::= expression
           | $empty

    optn0159 ::= AssemblyDialect
           | $empty

    optn0160 ::= assemblyFlags
           | $empty

    listn0161 ::= $empty
           | listn0161 yulStatement

    seqn0162 ::= AssemblyBlockComma AssemblyFlagString

    listn0163 ::= $empty
           | listn0163 seqn0162

    listn0164 ::= variableDeclarations
           | listn0164 variableDeclarations

    listn0165 ::= variableDeclarations
           | listn0165 variableDeclarations

    seqn0166 ::= Comma listn0165 variableDeclaration

    listn0167 ::= $empty
           | listn0167 seqn0166

    listn0168 ::= $empty
           | listn0168 Comma

    listn0169 ::= variableDeclarations
           | listn0169 variableDeclarations

    seqn0170 ::= listn0168 listn0169 variableDeclaration

    listn0171 ::= variableDeclarations
           | listn0171 variableDeclarations

    seqn0172 ::= listn0171 variableDeclaration

    optn0173 ::= seqn0172
           | $empty

    seqn0174 ::= Comma optn0173

    listn0175 ::= $empty
           | listn0175 seqn0174

    seqn0177 ::= Assign expression

    optn0178 ::= seqn0177
           | $empty

    seqn0179 ::= variableDeclaration optn0178

    seqn0180 ::= variableDeclarationTuple Assign expression

    grpn0176 ::= seqn0179
           | seqn0180

    optn0181 ::= identifier
           | $empty

    optn0182 ::= identifier
           | $empty

    listn0183 ::= $empty
           | listn0183 yulStatement

    listn0184 ::= variables
           | listn0184 variables

    seqn0185 ::= YulAssign yulExpression

    optn0186 ::= seqn0185
           | $empty

    seqn0187 ::= YulLet listn0184 YulIdentifier optn0186

    listn0188 ::= variables
           | listn0188 variables

    listn0189 ::= variables
           | listn0189 variables

    seqn0190 ::= YulComma listn0189 YulIdentifier

    listn0191 ::= $empty
           | listn0191 seqn0190

    seqn0192 ::= YulAssign yulFunctionCall

    optn0193 ::= seqn0192
           | $empty

    seqn0194 ::= YulLet listn0188 YulIdentifier listn0191 optn0193

    seqn0195 ::= YulComma yulPath

    listn0196 ::= seqn0195
           | listn0196 seqn0195

    seqn0197 ::= yulPath listn0196

    listn0199 ::= yulSwitchCase
           | listn0199 yulSwitchCase

    seqn0200 ::= YulDefault yulBlock

    optn0201 ::= seqn0200
           | $empty

    seqn0202 ::= listn0199 optn0201

    seqn0203 ::= YulDefault yulBlock

    grpn0198 ::= seqn0202
           | seqn0203

    listn0204 ::= arguments
           | listn0204 arguments

    listn0205 ::= arguments
           | listn0205 arguments

    seqn0206 ::= YulComma listn0205 YulIdentifier

    listn0207 ::= $empty
           | listn0207 seqn0206

    seqn0208 ::= listn0204 YulIdentifier listn0207

    optn0209 ::= seqn0208
           | $empty

    listn0210 ::= returnParameters
           | listn0210 returnParameters

    listn0211 ::= returnParameters
           | listn0211 returnParameters

    seqn0212 ::= YulComma listn0211 YulIdentifier

    listn0213 ::= $empty
           | listn0213 seqn0212

    seqn0214 ::= YulArrow listn0210 YulIdentifier listn0213

    optn0215 ::= seqn0214
           | $empty

    grpn0217 ::= YulIdentifier
           | YulEVMBuiltin

    grpn0216 ::= YulPeriod grpn0217

    listn0218 ::= $empty
           | listn0218 grpn0216

    grpn0219 ::= YulIdentifier
           | YulEVMBuiltin

    seqn0220 ::= YulComma yulExpression

    listn0221 ::= $empty
           | listn0221 seqn0220

    seqn0222 ::= yulExpression listn0221

    optn0223 ::= seqn0222
           | $empty

%End
