-- AUTO-GENERATED from antlr/grammars-v4 apex by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=ApexParser
%options package=lpg.grammars.apex
%options template=dtParserTemplateF.gi
%options import_terminals=ApexLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    compilationUnit
%End

%Rules
    compilationUnit ::= optn0001 listn0002 listn0003

    packageDeclaration ::= listn0004 PACKAGE qualifiedName SEMI

    importDeclaration ::= IMPORT optn0005 qualifiedName optn0007 SEMI

    typeDeclaration ::= listn0008 classDeclaration
           | listn0009 enumDeclaration
           | listn0010 interfaceDeclaration
           | listn0011 annotationTypeDeclaration
           | SEMI

    modifier ::= classOrInterfaceModifier
           | NATIVE
           | SYNCHRONIZED
           | TRANSIENT

    classOrInterfaceModifier ::= annotation
           | PUBLIC
           | PROTECTED
           | PRIVATE
           | STATIC
           | ABSTRACT
           | FINAL
           | GLOBAL
           | WEBSERVICE
           | OVERRIDE
           | VIRTUAL
           | TESTMETHOD
           | APEX_WITH_SHARING
           | APEX_WITHOUT_SHARING

    variableModifier ::= FINAL
           | annotation

    classDeclaration ::= CLASS IDENTIFIER optn0012 optn0014 optn0016 classBody

    typeParameters ::= LT typeParameter listn0018 GT

    typeParameter ::= IDENTIFIER optn0020

    typeBound ::= type_ listn0022

    enumDeclaration ::= ENUM IDENTIFIER optn0024 LBRACE optn0025 optn0026 optn0027 RBRACE

    enumConstants ::= enumConstant listn0029

    enumConstant ::= listn0030 IDENTIFIER optn0031 optn0032

    enumBodyDeclarations ::= SEMI listn0033

    interfaceDeclaration ::= INTERFACE IDENTIFIER optn0034 optn0036 interfaceBody

    typeList ::= type_ listn0038

    classBody ::= LBRACE listn0039 RBRACE

    interfaceBody ::= LBRACE listn0040 RBRACE

    classBodyDeclaration ::= SEMI
           | optn0041 block
           | listn0042 memberDeclaration

    memberDeclaration ::= methodDeclaration
           | genericMethodDeclaration
           | fieldDeclaration
           | constructorDeclaration
           | genericConstructorDeclaration
           | interfaceDeclaration
           | annotationTypeDeclaration
           | classDeclaration
           | enumDeclaration
           | propertyDeclaration

    methodDeclaration ::= optn0043 grpn0044 IDENTIFIER formalParameters listn0046 optn0048 grpn0049

    genericMethodDeclaration ::= typeParameters methodDeclaration

    constructorDeclaration ::= IDENTIFIER formalParameters optn0051 constructorBody

    genericConstructorDeclaration ::= typeParameters constructorDeclaration

    fieldDeclaration ::= type_ variableDeclarators SEMI

    propertyDeclaration ::= type_ variableDeclarators propertyBodyDeclaration

    propertyBodyDeclaration ::= LBRACE propertyBlock optn0052 RBRACE

    interfaceBodyDeclaration ::= listn0053 interfaceMemberDeclaration
           | SEMI

    interfaceMemberDeclaration ::= constDeclaration
           | interfaceMethodDeclaration
           | genericInterfaceMethodDeclaration
           | interfaceDeclaration
           | annotationTypeDeclaration
           | classDeclaration
           | enumDeclaration

    constDeclaration ::= type_ constantDeclarator listn0055 SEMI

    constantDeclarator ::= IDENTIFIER listn0057 EQ variableInitializer

    interfaceMethodDeclaration ::= grpn0058 IDENTIFIER formalParameters listn0060 optn0062 SEMI

    genericInterfaceMethodDeclaration ::= typeParameters interfaceMethodDeclaration

    variableDeclarators ::= variableDeclarator listn0064

    variableDeclarator ::= variableDeclaratorId optn0066

    variableDeclaratorId ::= IDENTIFIER listn0068

    variableInitializer ::= arrayInitializer
           | expression

    arrayInitializer ::= LBRACE optn0073 RBRACE

    enumConstantName ::= IDENTIFIER

    type_ ::= classOrInterfaceType listn0075
           | primitiveType listn0077

    classOrInterfaceType ::= IDENTIFIER optn0078 listn0081
           | SET typeArguments

    primitiveType ::= CHAR
           | BYTE
           | SHORT
           | INT
           | FLOAT

    typeArguments ::= LT typeArgument listn0083 GT

    typeArgument ::= type_
           | QUESTION optn0086

    qualifiedNameList ::= qualifiedName listn0088

    formalParameters ::= LPAREN optn0089 RPAREN

    formalParameterList ::= formalParameter listn0091 optn0093
           | lastFormalParameter

    formalParameter ::= listn0094 type_ variableDeclaratorId

    lastFormalParameter ::= listn0095 type_ ELLIPSIS variableDeclaratorId

    methodBody ::= block

    constructorBody ::= block

    qualifiedName ::= IDENTIFIER listn0097

    literal ::= NUMBER
           | FloatingPointLiteral
           | CharacterLiteral
           | STRING
           | IDENTIFIER
           | NullLiteral

    annotation ::= AT annotationName optn0101

    annotationName ::= qualifiedName

    elementValuePairs ::= elementValuePair listn0104

    elementValuePair ::= IDENTIFIER EQ elementValue

    elementValue ::= expression
           | annotation
           | elementValueArrayInitializer

    elementValueArrayInitializer ::= LBRACE optn0108 optn0109 RBRACE

    annotationTypeDeclaration ::= AT INTERFACE IDENTIFIER annotationTypeBody

    annotationTypeBody ::= LBRACE listn0110 RBRACE

    annotationTypeElementDeclaration ::= listn0111 annotationTypeElementRest
           | SEMI

    annotationTypeElementRest ::= type_ annotationMethodOrConstantRest SEMI
           | classDeclaration optn0112
           | interfaceDeclaration optn0113
           | enumDeclaration optn0114
           | annotationTypeDeclaration optn0115

    annotationMethodOrConstantRest ::= annotationMethodRest
           | annotationConstantRest

    annotationMethodRest ::= IDENTIFIER LPAREN RPAREN optn0116

    annotationConstantRest ::= variableDeclarators

    defaultValue ::= DEFAULT elementValue

    block ::= LBRACE listn0117 RBRACE

    blockStatement ::= localVariableDeclarationStatement
           | statement
           | typeDeclaration

    localVariableDeclarationStatement ::= localVariableDeclaration SEMI

    localVariableDeclaration ::= listn0118 type_ variableDeclarators

    statement ::= block
           | IF parExpression statement optn0120
           | FOR LPAREN forControl RPAREN statement
           | WHILE parExpression statement
           | DO statement WHILE parExpression SEMI
           | RUNAS LPAREN expression RPAREN statement
           | TRY block grpn0121
           | TRY resourceSpecification block listn0124 optn0125
           | RETURN optn0126 SEMI
           | THROW expression SEMI
           | BREAK optn0127 SEMI
           | CONTINUE optn0128 SEMI
           | SEMI
           | statementExpression SEMI
           | IDENTIFIER COLON statement
           | apexDbExpression SEMI

    propertyBlock ::= listn0129 grpn0130

    getter ::= GET grpn0131

    setter ::= SET grpn0132

    catchClause ::= CATCH LPAREN listn0133 catchType IDENTIFIER RPAREN block

    catchType ::= qualifiedName listn0135

    finallyBlock ::= FINALLY block

    resourceSpecification ::= LPAREN resources optn0136 RPAREN

    resources ::= resource listn0138

    resource ::= listn0139 classOrInterfaceType variableDeclaratorId EQ expression

    forControl ::= enhancedForControl
           | optn0140 SEMI optn0141 SEMI optn0142

    forInit ::= localVariableDeclaration
           | expressionList

    enhancedForControl ::= listn0143 type_ variableDeclaratorId COLON expression

    forUpdate ::= expressionList

    parExpression ::= LPAREN expression RPAREN

    expressionList ::= expression listn0145

    statementExpression ::= expression

    constantExpression ::= expression

    apexDbUpsertExpression ::= DB_UPSERT expression listn0146

    apexDbExpression ::= grpn0147 expression
           | apexDbUpsertExpression

    expression ::= primary
           | expression DOT GET LPAREN optn0148 RPAREN
           | expression DOT SET LPAREN optn0149 RPAREN
           | expression optn0150 DOT IDENTIFIER
           | expression DOT THIS
           | expression DOT NEW
           | expression DOT grpn0151
           | expression DOT SUPER superSuffix
           | expression DOT explicitGenericInvocation
           | expression LBRACKET expression RBRACKET
           | expression LPAREN optn0152 RPAREN
           | NEW creator
           | LPAREN type_ RPAREN expression
           | expression grpn0153
           | grpn0154 expression
           | grpn0155 expression
           | expression grpn0156 expression
           | expression grpn0157 expression
           | expression grpn0158 expression
           | expression grpn0159 expression
           | expression INSTANCEOF type_
           | expression grpn0160 expression
           | expression AMP expression
           | expression CARET expression
           | expression PIPE expression
           | expression ANDAND expression
           | expression OROR expression
           | expression QUESTION expression COLON expression
           | expression grpn0161 expression

    primary ::= LPAREN expression RPAREN
           | THIS
           | SUPER
           | literal
           | IDENTIFIER
           | type_ DOT CLASS
           | VOID DOT CLASS
           | nonWildcardTypeArguments grpn0162
           | SoqlLiteral

    creator ::= nonWildcardTypeArguments createdName classCreatorRest
           | createdName grpn0163

    createdName ::= IDENTIFIER optn0164 listn0167
           | primitiveType
           | SET typeArgumentsOrDiamond

    innerCreator ::= IDENTIFIER optn0168 classCreatorRest

    arrayCreatorRest ::= LBRACKET grpn0169

    mapCreatorRest ::= LBRACE grpn0176

    setCreatorRest ::= LBRACE grpn0183

    classCreatorRest ::= arguments optn0188

    explicitGenericInvocation ::= nonWildcardTypeArguments explicitGenericInvocationSuffix

    nonWildcardTypeArguments ::= LT typeList GT

    typeArgumentsOrDiamond ::= LT GT
           | typeArguments

    nonWildcardTypeArgumentsOrDiamond ::= LT GT
           | nonWildcardTypeArguments

    superSuffix ::= arguments
           | DOT IDENTIFIER optn0189

    explicitGenericInvocationSuffix ::= SUPER superSuffix
           | IDENTIFIER arguments

    arguments ::= LPAREN optn0190 RPAREN

    optn0001 ::= packageDeclaration
           | $empty

    listn0002 ::= $empty
           | listn0002 importDeclaration

    listn0003 ::= $empty
           | listn0003 typeDeclaration

    listn0004 ::= $empty
           | listn0004 annotation

    optn0005 ::= STATIC
           | $empty

    seqn0006 ::= DOT STAR

    optn0007 ::= seqn0006
           | $empty

    listn0008 ::= $empty
           | listn0008 classOrInterfaceModifier

    listn0009 ::= $empty
           | listn0009 classOrInterfaceModifier

    listn0010 ::= $empty
           | listn0010 classOrInterfaceModifier

    listn0011 ::= $empty
           | listn0011 classOrInterfaceModifier

    optn0012 ::= typeParameters
           | $empty

    seqn0013 ::= EXTENDS type_

    optn0014 ::= seqn0013
           | $empty

    seqn0015 ::= IMPLEMENTS typeList

    optn0016 ::= seqn0015
           | $empty

    seqn0017 ::= COMMA typeParameter

    listn0018 ::= $empty
           | listn0018 seqn0017

    seqn0019 ::= EXTENDS typeBound

    optn0020 ::= seqn0019
           | $empty

    seqn0021 ::= AMP type_

    listn0022 ::= $empty
           | listn0022 seqn0021

    seqn0023 ::= IMPLEMENTS typeList

    optn0024 ::= seqn0023
           | $empty

    optn0025 ::= enumConstants
           | $empty

    optn0026 ::= COMMA
           | $empty

    optn0027 ::= enumBodyDeclarations
           | $empty

    seqn0028 ::= COMMA enumConstant

    listn0029 ::= $empty
           | listn0029 seqn0028

    listn0030 ::= $empty
           | listn0030 annotation

    optn0031 ::= arguments
           | $empty

    optn0032 ::= classBody
           | $empty

    listn0033 ::= $empty
           | listn0033 classBodyDeclaration

    optn0034 ::= typeParameters
           | $empty

    seqn0035 ::= EXTENDS typeList

    optn0036 ::= seqn0035
           | $empty

    seqn0037 ::= COMMA type_

    listn0038 ::= $empty
           | listn0038 seqn0037

    listn0039 ::= $empty
           | listn0039 classBodyDeclaration

    listn0040 ::= $empty
           | listn0040 interfaceBodyDeclaration

    optn0041 ::= STATIC
           | $empty

    listn0042 ::= $empty
           | listn0042 modifier

    optn0043 ::= OVERRIDE
           | $empty

    grpn0044 ::= type_
           | VOID

    seqn0045 ::= LBRACKET RBRACKET

    listn0046 ::= $empty
           | listn0046 seqn0045

    seqn0047 ::= THROWS qualifiedNameList

    optn0048 ::= seqn0047
           | $empty

    grpn0049 ::= methodBody
           | SEMI

    seqn0050 ::= THROWS qualifiedNameList

    optn0051 ::= seqn0050
           | $empty

    optn0052 ::= propertyBlock
           | $empty

    listn0053 ::= $empty
           | listn0053 modifier

    seqn0054 ::= COMMA constantDeclarator

    listn0055 ::= $empty
           | listn0055 seqn0054

    seqn0056 ::= LBRACKET RBRACKET

    listn0057 ::= $empty
           | listn0057 seqn0056

    grpn0058 ::= type_
           | VOID

    seqn0059 ::= LBRACKET RBRACKET

    listn0060 ::= $empty
           | listn0060 seqn0059

    seqn0061 ::= THROWS qualifiedNameList

    optn0062 ::= seqn0061
           | $empty

    seqn0063 ::= COMMA variableDeclarator

    listn0064 ::= $empty
           | listn0064 seqn0063

    seqn0065 ::= EQ variableInitializer

    optn0066 ::= seqn0065
           | $empty

    seqn0067 ::= LBRACKET RBRACKET

    listn0068 ::= $empty
           | listn0068 seqn0067

    seqn0069 ::= COMMA variableInitializer

    listn0070 ::= $empty
           | listn0070 seqn0069

    optn0071 ::= COMMA
           | $empty

    seqn0072 ::= variableInitializer listn0070 optn0071

    optn0073 ::= seqn0072
           | $empty

    seqn0074 ::= LBRACKET RBRACKET

    listn0075 ::= $empty
           | listn0075 seqn0074

    seqn0076 ::= LBRACKET RBRACKET

    listn0077 ::= $empty
           | listn0077 seqn0076

    optn0078 ::= typeArguments
           | $empty

    optn0079 ::= typeArguments
           | $empty

    seqn0080 ::= DOT IDENTIFIER optn0079

    listn0081 ::= $empty
           | listn0081 seqn0080

    seqn0082 ::= COMMA typeArgument

    listn0083 ::= $empty
           | listn0083 seqn0082

    grpn0085 ::= EXTENDS
           | SUPER

    grpn0084 ::= grpn0085 type_

    optn0086 ::= grpn0084
           | $empty

    seqn0087 ::= COMMA qualifiedName

    listn0088 ::= $empty
           | listn0088 seqn0087

    optn0089 ::= formalParameterList
           | $empty

    seqn0090 ::= COMMA formalParameter

    listn0091 ::= $empty
           | listn0091 seqn0090

    seqn0092 ::= COMMA lastFormalParameter

    optn0093 ::= seqn0092
           | $empty

    listn0094 ::= $empty
           | listn0094 variableModifier

    listn0095 ::= $empty
           | listn0095 variableModifier

    seqn0096 ::= DOT IDENTIFIER

    listn0097 ::= $empty
           | listn0097 seqn0096

    grpn0099 ::= elementValuePairs
           | elementValue

    optn0100 ::= grpn0099
           | $empty

    grpn0098 ::= LPAREN optn0100 RPAREN

    optn0101 ::= grpn0098
           | $empty

    optn0102 ::= COMMA
           | $empty

    seqn0103 ::= optn0102 elementValuePair

    listn0104 ::= $empty
           | listn0104 seqn0103

    seqn0105 ::= COMMA elementValue

    listn0106 ::= $empty
           | listn0106 seqn0105

    seqn0107 ::= elementValue listn0106

    optn0108 ::= seqn0107
           | $empty

    optn0109 ::= COMMA
           | $empty

    listn0110 ::= $empty
           | listn0110 annotationTypeElementDeclaration

    listn0111 ::= $empty
           | listn0111 modifier

    optn0112 ::= SEMI
           | $empty

    optn0113 ::= SEMI
           | $empty

    optn0114 ::= SEMI
           | $empty

    optn0115 ::= SEMI
           | $empty

    optn0116 ::= defaultValue
           | $empty

    listn0117 ::= $empty
           | listn0117 blockStatement

    listn0118 ::= $empty
           | listn0118 variableModifier

    seqn0119 ::= ELSE statement

    optn0120 ::= seqn0119
           | $empty

    listn0122 ::= catchClause
           | listn0122 catchClause

    optn0123 ::= finallyBlock
           | $empty

    grpn0121 ::= listn0122 optn0123
           | finallyBlock

    listn0124 ::= $empty
           | listn0124 catchClause

    optn0125 ::= finallyBlock
           | $empty

    optn0126 ::= expression
           | $empty

    optn0127 ::= IDENTIFIER
           | $empty

    optn0128 ::= IDENTIFIER
           | $empty

    listn0129 ::= $empty
           | listn0129 modifier

    grpn0130 ::= getter
           | setter

    grpn0131 ::= SEMI
           | methodBody

    grpn0132 ::= SEMI
           | methodBody

    listn0133 ::= $empty
           | listn0133 variableModifier

    grpn0134 ::= PIPE qualifiedName

    listn0135 ::= $empty
           | listn0135 grpn0134

    optn0136 ::= SEMI
           | $empty

    seqn0137 ::= SEMI resource

    listn0138 ::= $empty
           | listn0138 seqn0137

    listn0139 ::= $empty
           | listn0139 variableModifier

    optn0140 ::= forInit
           | $empty

    optn0141 ::= expression
           | $empty

    optn0142 ::= forUpdate
           | $empty

    listn0143 ::= $empty
           | listn0143 variableModifier

    seqn0144 ::= COMMA expression

    listn0145 ::= $empty
           | listn0145 seqn0144

    listn0146 ::= $empty
           | listn0146 expression

    grpn0147 ::= DB_INSERT
           | DB_UPDATE
           | DB_DELETE
           | DB_UNDELETE

    optn0148 ::= expressionList
           | $empty

    optn0149 ::= expressionList
           | $empty

    optn0150 ::= QUESTION
           | $empty

    grpn0151 ::= DB_INSERT
           | DB_UPSERT
           | DB_UPDATE
           | DB_DELETE
           | DB_UNDELETE

    optn0152 ::= expressionList
           | $empty

    grpn0153 ::= PLUSPLUS
           | MINUSMINUS

    grpn0154 ::= PLUS
           | MINUS
           | PLUSPLUS
           | MINUSMINUS

    grpn0155 ::= TILDE
           | BANG

    grpn0156 ::= STAR
           | SLASH
           | PERCENT

    grpn0157 ::= PLUS
           | MINUS

    grpn0158 ::= LT LT
           | GT GT GT
           | GT GT

    grpn0159 ::= LTEQ
           | GTEQ
           | GT
           | LT

    grpn0160 ::= EQEQ
           | NOTEQ
           | LTGT

    grpn0161 ::= EQ
           | PLUSEQ
           | MINUSEQ
           | STAREQ
           | SLASHEQ
           | AMPEQ
           | PIPEEQ
           | CARETEQ
           | RSHIFTEQ
           | URSHIFTEQ
           | LSHIFTEQ
           | PERCENTEQ

    grpn0162 ::= explicitGenericInvocationSuffix
           | THIS arguments

    grpn0163 ::= arrayCreatorRest
           | classCreatorRest
           | mapCreatorRest
           | setCreatorRest

    optn0164 ::= typeArgumentsOrDiamond
           | $empty

    optn0165 ::= typeArgumentsOrDiamond
           | $empty

    seqn0166 ::= DOT IDENTIFIER optn0165

    listn0167 ::= $empty
           | listn0167 seqn0166

    optn0168 ::= nonWildcardTypeArgumentsOrDiamond
           | $empty

    seqn0170 ::= LBRACKET RBRACKET

    listn0171 ::= $empty
           | listn0171 seqn0170

    seqn0172 ::= LBRACKET expression RBRACKET

    listn0173 ::= $empty
           | listn0173 seqn0172

    seqn0174 ::= LBRACKET RBRACKET

    listn0175 ::= $empty
           | listn0175 seqn0174

    grpn0169 ::= RBRACKET listn0171 arrayInitializer
           | expression RBRACKET listn0173 listn0175

    grpn0177 ::= IDENTIFIER
           | expression

    grpn0178 ::= literal
           | expression

    grpn0180 ::= IDENTIFIER
           | expression

    grpn0181 ::= literal
           | expression

    grpn0179 ::= COMMA grpn0180 FATARROW grpn0181

    listn0182 ::= $empty
           | listn0182 grpn0179

    grpn0176 ::= RBRACE
           | grpn0177 FATARROW grpn0178 listn0182 RBRACE

    grpn0184 ::= literal
           | expression

    grpn0186 ::= literal
           | expression

    grpn0185 ::= COMMA grpn0186

    listn0187 ::= $empty
           | listn0187 grpn0185

    grpn0183 ::= RBRACE
           | grpn0184 listn0187 RBRACE

    optn0188 ::= classBody
           | $empty

    optn0189 ::= arguments
           | $empty

    optn0190 ::= expressionList
           | $empty

%End
