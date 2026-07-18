-- AUTO-GENERATED from antlr/grammars-v4 unreal_angelscript by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). BANG token-stream soup.

%Options la=3
%Options fp=UnrealAngelscriptParser
%options package=lpg.grammars.unreal_angelscript
%options template=dtParserTemplateF.gi
%options import_terminals=UnrealAngelscriptLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    script
%End

%Rules
    script ::= opt_1

    annotationList ::= annotation list_3

    annotation ::= IDENTIFIER opt_5

    utype ::= grp_6 LPAREN opt_7 RPAREN

    uproperty ::= UProperty LPAREN opt_8 RPAREN

    ufunction ::= UFunction LPAREN opt_9 RPAREN

    moduleImport ::= Import IDENTIFIER list_11 SEMI
           | Import opt_12 declarator opt_13 From STRING SEMI

    asGeneric ::= IDENTIFIER LT simpleTypeSpecifierList GT

    simpleTypeSpecifierList ::= declSpecifierSeq list_15

    booleanLiteral ::= False_
           | True_

    primaryExpression ::= list_16
           | This
           | LPAREN expression RPAREN
           | idExpression
           | lambdaExpression

    idExpression ::= unqualifiedId
           | qualifiedId

    unqualifiedId ::= IDENTIFIER
           | operatorFunctionId
           | literalOperatorId
           | TILDE grp_17

    qualifiedId ::= nestedNameSpecifier unqualifiedId

    nestedNameSpecifier ::= opt_19 COLONCOLON
           | nestedNameSpecifier IDENTIFIER COLONCOLON

    lambdaExpression ::= lambdaIntroducer opt_20 compoundStatement

    lambdaIntroducer ::= LBRACKET opt_21 RBRACKET

    lambdaCapture ::= captureList
           | captureDefault opt_23

    captureDefault ::= AMP
           | EQ

    captureList ::= capture list_25

    capture ::= simpleCapture
           | initcapture

    simpleCapture ::= opt_26 IDENTIFIER
           | This

    initcapture ::= opt_27 IDENTIFIER initializer

    lambdaDeclarator ::= LPAREN opt_28 RPAREN

    postfixExpression ::= primaryExpression
           | postfixExpression LBRACKET grp_29 RBRACKET
           | assertSpecifier LPAREN opt_30 RPAREN
           | postfixExpression LPAREN opt_31 RPAREN
           | simpleTypeSpecifier grp_32
           | postfixExpression DOT grp_34
           | postfixExpression grp_35
           | Cast LT theTypeId GT LPAREN expression RPAREN
           | LPAREN grp_36 RPAREN

    expressionList ::= initializerList

    pseudoDestructorName ::= opt_37 opt_39 TILDE theTypeName
           | nestedNameSpecifier COLONCOLON TILDE theTypeName
           | TILDE decltypeSpecifier

    unaryExpression ::= postfixExpression
           | grp_40 unaryExpression
           | LPAREN theTypeId RPAREN

    unaryOperator ::= PIPE
           | STAR
           | AMP
           | PLUS
           | TILDE
           | MINUS
           | BANG

    newPlacement ::= LPAREN expressionList RPAREN

    newInitializer_ ::= LPAREN opt_41 RPAREN
           | bracedInitList

    castExpression ::= unaryExpression
           | Cast LT theTypeId GT LPAREN castExpression RPAREN

    multiplicativeExpression ::= castExpression list_44

    additiveExpression ::= multiplicativeExpression list_47

    shiftExpression ::= additiveExpression list_49

    shiftOperator ::= GT GT
           | LT LT

    relationalExpression ::= shiftExpression list_52

    equalityExpression ::= relationalExpression list_55

    andExpression ::= equalityExpression list_57

    exclusiveOrExpression ::= andExpression list_59

    inclusiveOrExpression ::= exclusiveOrExpression list_61

    logicalAndExpression ::= inclusiveOrExpression list_63

    logicalOrExpression ::= logicalAndExpression list_65

    conditionalExpression ::= logicalOrExpression opt_67

    assignmentExpression ::= conditionalExpression
           | logicalOrExpression assignmentOperator initializerClause

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

    expression ::= assignmentExpression list_69

    constantExpression ::= conditionalExpression

    statement ::= labeledStatement
           | declarationStatement
           | grp_70

    labeledStatement ::= grp_71 COLON statement

    expressionStatement ::= opt_72 SEMI

    compoundStatement ::= LBRACE opt_73 RBRACE

    statementSeq ::= list_74

    selectionStatement ::= If LPAREN condition RPAREN statement opt_76
           | Switch LPAREN condition RPAREN statement

    condition ::= expression
           | declSpecifierSeq declarator grp_77

    iterationStatement ::= While LPAREN condition RPAREN statement
           | Do statement While LPAREN expression RPAREN SEMI
           | For LPAREN grp_78 RPAREN statement

    forInitStatement ::= expressionStatement
           | simpleDeclaration

    forRangeDeclaration ::= declSpecifierSeq IDENTIFIER

    forRangeInitializer ::= expression
           | bracedInitList

    jumpStatement ::= grp_81 SEMI

    declarationStatement ::= blockDeclaration

    declarationseq ::= list_84

    declaration ::= moduleImport
           | blockDeclaration
           | functionDefinition
           | namespaceDefinition
           | emptyDeclaration_

    blockDeclaration ::= simpleDeclaration
           | namespaceAliasDefinition
           | aliasDeclaration
           | opaqueEnumDeclaration

    aliasDeclaration ::= IDENTIFIER EQ theTypeId SEMI

    simpleDeclaration ::= opt_85 opt_87 SEMI

    emptyDeclaration_ ::= SEMI

    declSpecifier ::= typeSpecifier
           | functionSpecifier

    declSpecifierSeq ::= list_88

    functionSpecifier ::= Virtual

    typedefName ::= IDENTIFIER

    typeSpecifier ::= trailingTypeSpecifier
           | classSpecifier
           | enumSpecifier

    trailingTypeSpecifier ::= simpleTypeSpecifier
           | elaboratedTypeSpecifier
           | Const
           | AMP
           | Out

    typeSpecifierSeq ::= list_89

    trailingTypeSpecifierSeq ::= list_90

    simpleTypeSpecifier ::= opt_91 theTypeName
           | asGeneric
           | Int
           | IDENTIFIER
           | UInt
           | Float
           | Double
           | Bool
           | Void
           | Auto
           | decltypeSpecifier

    assertSpecifier ::= Ensure
           | EnsureAlways
           | Check

    theTypeName ::= className
           | enumName
           | typedefName

    decltypeSpecifier ::= LPAREN grp_92 RPAREN

    elaboratedTypeSpecifier ::= classKey grp_93
           | Enum opt_95 IDENTIFIER

    enumName ::= IDENTIFIER

    enumSpecifier ::= enumHead LBRACE opt_98 RBRACE

    enumHead ::= enumkey opt_101 opt_102

    opaqueEnumDeclaration ::= enumkey IDENTIFIER opt_103 SEMI

    enumkey ::= Enum

    enumbase ::= COLON typeSpecifierSeq

    enumeratorList ::= enumeratorDefinition list_105

    enumeratorDefinition ::= enumerator opt_107

    enumerator ::= IDENTIFIER

    namespaceName ::= originalNamespaceName
           | namespaceAlias

    originalNamespaceName ::= IDENTIFIER

    namespaceDefinition ::= Namespace opt_109 LBRACE opt_110 RBRACE

    namespaceAlias ::= IDENTIFIER

    namespaceAliasDefinition ::= Namespace IDENTIFIER EQ qualifiednamespacespecifier SEMI

    qualifiednamespacespecifier ::= opt_111 namespaceName

    balancedTokenSeq ::= list_112

    balancedtoken ::= LPAREN balancedTokenSeq RPAREN
           | LBRACKET balancedTokenSeq RBRACKET
           | LBRACE balancedTokenSeq RBRACE
           | list_114

    initDeclaratorList ::= initDeclarator list_116

    initDeclarator ::= IDENTIFIER opt_117

    declarator ::= declaratorDef parametersAndQualifiers

    declaratorDef ::= declaratorid
           | declaratorDef grp_118

    parametersAndQualifiers ::= LPAREN opt_120 RPAREN opt_121 opt_122

    refqualifier ::= AMP
           | ANDAND

    declaratorid ::= idExpression

    theTypeId ::= typeSpecifierSeq

    parameterDeclarationClause ::= parameterDeclarationList

    parameterDeclarationList ::= parameterDeclaration list_124

    parameterDeclaration ::= declSpecifierSeq opt_125 opt_127

    functionDefinition ::= opt_128 opt_129 opt_130 opt_131 declarator opt_132 functionBody

    functionBody ::= compoundStatement
           | EQ Default SEMI
           | SEMI

    initializer ::= braceOrEqualInitializer
           | LPAREN expressionList RPAREN

    braceOrEqualInitializer ::= EQ initializerClause
           | bracedInitList

    initializerClause ::= assignmentExpression
           | bracedInitList

    initializerList ::= initializerClause list_134 opt_135

    bracedInitList ::= grp_136 opt_139 grp_140

    className ::= IDENTIFIER

    classSpecifier ::= classHead LBRACE opt_141 RBRACE

    classHead ::= opt_142 classKey opt_145 opt_146

    classHeadName ::= className

    classVirtSpecifier ::= Final

    classKey ::= ClassKw
           | Struct

    memberSpecification ::= list_149

    memberdeclaration ::= propertyDefinition
           | functionDefinition
           | aliasDeclaration
           | emptyDeclaration_

    propertyDefinition ::= opt_150 opt_151 opt_152 opt_153 opt_155 SEMI

    memberDeclaratorList ::= memberDeclarator list_157

    memberDeclarator ::= declarator grp_158
           | opt_161 COLON constantExpression
           | IDENTIFIER

    postFuncSpecifierSeq ::= list_162

    virtualSpecifier ::= Override
           | Final
           | Property

    baseClause ::= COLON baseSpecifierList

    baseSpecifierList ::= baseSpecifier list_164

    baseSpecifier ::= grp_165

    classOrDeclType ::= opt_168 className
           | decltypeSpecifier

    baseTypeSpecifier ::= classOrDeclType

    accessSpecifier ::= Private
           | Protected
           | Public

    operatorFunctionId ::= Operator theOperator

    literalOperatorId ::= Operator grp_169

    theOperator ::= PLUS
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
           | GTEQ
           | PLUSEQ
           | MINUSEQ
           | STAREQ
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
           | LTEQ
           | ANDAND
           | OROR
           | PLUSPLUS
           | MINUSMINUS
           | COMMA
           | LPAREN RPAREN
           | LBRACKET RBRACKET

    literal ::= NUMBER
           | CHAR_LITERAL
           | STRING
           | booleanLiteral
           | IDENTIFIER
           | Nullptr

    opt_1 ::= declarationseq | $empty

    seq_2 ::= COMMA annotation

    list_3 ::= $empty | list_3 seq_2

    seq_4 ::= EQ expression

    opt_5 ::= seq_4 | $empty

    grp_6 ::= UClass | UStruct

    opt_7 ::= annotationList | $empty

    opt_8 ::= annotationList | $empty

    opt_9 ::= annotationList | $empty

    seq_10 ::= DOT IDENTIFIER

    list_11 ::= $empty | list_11 seq_10

    opt_12 ::= declSpecifierSeq | $empty

    opt_13 ::= postFuncSpecifierSeq | $empty

    seq_14 ::= COMMA declSpecifierSeq

    list_15 ::= $empty | list_15 seq_14

    list_16 ::= literal | list_16 literal

    grp_17 ::= className | decltypeSpecifier

    grp_18 ::= theTypeName | namespaceName | decltypeSpecifier

    opt_19 ::= grp_18 | $empty

    opt_20 ::= lambdaDeclarator | $empty

    opt_21 ::= lambdaCapture | $empty

    seq_22 ::= COMMA captureList

    opt_23 ::= seq_22 | $empty

    seq_24 ::= COMMA capture

    list_25 ::= $empty | list_25 seq_24

    opt_26 ::= AMP | $empty

    opt_27 ::= AMP | $empty

    opt_28 ::= parameterDeclarationClause | $empty

    grp_29 ::= expression | bracedInitList

    opt_30 ::= expressionList | $empty

    opt_31 ::= expressionList | $empty

    opt_33 ::= expressionList | $empty

    grp_32 ::= LPAREN opt_33 RPAREN | bracedInitList

    grp_34 ::= idExpression | pseudoDestructorName

    grp_35 ::= PLUSPLUS | MINUSMINUS

    grp_36 ::= expression | theTypeId

    opt_37 ::= nestedNameSpecifier | $empty

    seq_38 ::= theTypeName COLONCOLON

    opt_39 ::= seq_38 | $empty

    grp_40 ::= PLUSPLUS | MINUSMINUS | unaryOperator

    opt_41 ::= expressionList | $empty

    grp_43 ::= STAR | SLASH | PERCENT

    grp_42 ::= grp_43 castExpression

    list_44 ::= $empty | list_44 grp_42

    grp_46 ::= PLUS | MINUS

    grp_45 ::= grp_46 multiplicativeExpression

    list_47 ::= $empty | list_47 grp_45

    seq_48 ::= shiftOperator additiveExpression

    list_49 ::= $empty | list_49 seq_48

    grp_51 ::= LT | GT | LTEQ | GTEQ

    grp_50 ::= grp_51 shiftExpression

    list_52 ::= $empty | list_52 grp_50

    grp_54 ::= EQEQ | NOTEQ

    grp_53 ::= grp_54 relationalExpression

    list_55 ::= $empty | list_55 grp_53

    seq_56 ::= AMP equalityExpression

    list_57 ::= $empty | list_57 seq_56

    seq_58 ::= CARET andExpression

    list_59 ::= $empty | list_59 seq_58

    seq_60 ::= PIPE exclusiveOrExpression

    list_61 ::= $empty | list_61 seq_60

    seq_62 ::= ANDAND inclusiveOrExpression

    list_63 ::= $empty | list_63 seq_62

    seq_64 ::= OROR logicalAndExpression

    list_65 ::= $empty | list_65 seq_64

    seq_66 ::= QUESTION expression COLON assignmentExpression

    opt_67 ::= seq_66 | $empty

    seq_68 ::= COMMA assignmentExpression

    list_69 ::= $empty | list_69 seq_68

    grp_70 ::= expressionStatement | compoundStatement | selectionStatement | iterationStatement | jumpStatement

    grp_71 ::= IDENTIFIER | Case constantExpression | Default

    opt_72 ::= expression | $empty

    opt_73 ::= statementSeq | $empty

    list_74 ::= statement | list_74 statement

    seq_75 ::= Else statement

    opt_76 ::= seq_75 | $empty

    grp_77 ::= EQ initializerClause | bracedInitList

    opt_79 ::= condition | $empty

    opt_80 ::= expression | $empty

    grp_78 ::= forInitStatement opt_79 SEMI opt_80 | forRangeDeclaration COLON forRangeInitializer

    grp_82 ::= expression | bracedInitList

    opt_83 ::= grp_82 | $empty

    grp_81 ::= Break | Continue | Return opt_83 | Goto IDENTIFIER

    list_84 ::= declaration | list_84 declaration

    opt_85 ::= declSpecifierSeq | $empty

    grp_86 ::= initDeclaratorList | assignmentExpression

    opt_87 ::= grp_86 | $empty

    list_88 ::= declSpecifier | list_88 declSpecifier

    list_89 ::= typeSpecifier | list_89 typeSpecifier

    list_90 ::= trailingTypeSpecifier | list_90 trailingTypeSpecifier

    opt_91 ::= nestedNameSpecifier | $empty

    grp_92 ::= expression | Auto

    opt_94 ::= nestedNameSpecifier | $empty

    grp_93 ::= opt_94 IDENTIFIER | nestedNameSpecifier

    opt_95 ::= nestedNameSpecifier | $empty

    opt_96 ::= COMMA | $empty

    seq_97 ::= enumeratorList opt_96

    opt_98 ::= seq_97 | $empty

    opt_99 ::= nestedNameSpecifier | $empty

    seq_100 ::= opt_99 IDENTIFIER

    opt_101 ::= seq_100 | $empty

    opt_102 ::= enumbase | $empty

    opt_103 ::= enumbase | $empty

    seq_104 ::= COMMA enumeratorDefinition

    list_105 ::= $empty | list_105 seq_104

    seq_106 ::= EQ constantExpression

    opt_107 ::= seq_106 | $empty

    grp_108 ::= IDENTIFIER | originalNamespaceName

    opt_109 ::= grp_108 | $empty

    opt_110 ::= declarationseq | $empty

    opt_111 ::= nestedNameSpecifier | $empty

    list_112 ::= balancedtoken | list_112 balancedtoken

    grp_113 ::= LPAREN | RPAREN | LBRACE | RBRACE | LBRACKET | RBRACKET

    list_114 ::= grp_113 | list_114 grp_113

    seq_115 ::= COMMA initDeclarator

    list_116 ::= $empty | list_116 seq_115

    opt_117 ::= initializer | $empty

    opt_119 ::= constantExpression | $empty

    grp_118 ::= parametersAndQualifiers | LBRACKET opt_119 RBRACKET

    opt_120 ::= parameterDeclarationClause | $empty

    opt_121 ::= Const | $empty

    opt_122 ::= refqualifier | $empty

    seq_123 ::= COMMA parameterDeclaration

    list_124 ::= $empty | list_124 seq_123

    opt_125 ::= IDENTIFIER | $empty

    seq_126 ::= EQ initializerClause

    opt_127 ::= seq_126 | $empty

    opt_128 ::= ufunction | $empty

    opt_129 ::= accessSpecifier | $empty

    opt_130 ::= Mixin | $empty

    opt_131 ::= declSpecifierSeq | $empty

    opt_132 ::= postFuncSpecifierSeq | $empty

    seq_133 ::= COMMA initializerClause

    list_134 ::= $empty | list_134 seq_133

    opt_135 ::= COMMA | $empty

    grp_136 ::= LBRACE | LBRACKET

    opt_137 ::= COMMA | $empty

    seq_138 ::= initializerList opt_137

    opt_139 ::= seq_138 | $empty

    grp_140 ::= RBRACE | RBRACKET

    opt_141 ::= memberSpecification | $empty

    opt_142 ::= utype | $empty

    opt_143 ::= classVirtSpecifier | $empty

    seq_144 ::= classHeadName opt_143

    opt_145 ::= seq_144 | $empty

    opt_146 ::= baseClause | $empty

    opt_147 ::= nestedNameSpecifier | $empty

    grp_148 ::= memberdeclaration | accessSpecifier COLON

    list_149 ::= grp_148 | list_149 grp_148

    opt_150 ::= uproperty | $empty

    opt_151 ::= accessSpecifier | $empty

    opt_152 ::= Default | $empty

    opt_153 ::= declSpecifierSeq | $empty

    grp_154 ::= memberDeclaratorList | assignmentExpression

    opt_155 ::= grp_154 | $empty

    seq_156 ::= COMMA memberDeclarator

    list_157 ::= $empty | list_157 seq_156

    opt_159 ::= postFuncSpecifierSeq | $empty

    opt_160 ::= braceOrEqualInitializer | $empty

    grp_158 ::= opt_159 | opt_160

    opt_161 ::= IDENTIFIER | $empty

    list_162 ::= virtualSpecifier | list_162 virtualSpecifier

    seq_163 ::= COMMA baseSpecifier

    list_164 ::= $empty | list_164 seq_163

    opt_166 ::= accessSpecifier | $empty

    opt_167 ::= Virtual | $empty

    grp_165 ::= baseTypeSpecifier | Virtual opt_166 baseTypeSpecifier | accessSpecifier opt_167 baseTypeSpecifier

    opt_168 ::= nestedNameSpecifier | $empty

    grp_169 ::= STRING IDENTIFIER | STRING

%End
