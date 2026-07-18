-- AUTO-GENERATED from antlr/grammars-v4 javascript/javascript by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=JavascriptParser
%options package=lpg.grammars.javascript.javascript
%options template=dtParserTemplateF.gi
%options import_terminals=JavascriptLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    program ::= opt_1 opt_2

    sourceElement ::= statement

    statement ::= block
           | variableStatement
           | importStatement
           | exportStatement
           | emptyStatement_
           | classDeclaration
           | functionDeclaration
           | expressionStatement
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

    block ::= LBRACE opt_3 RBRACE

    statementList ::= list_4

    importStatement ::= Import importFromBlock

    importFromBlock ::= opt_5 grp_6 importFrom eos
           | STRING eos

    importModuleItems ::= LBRACE list_8 opt_11 RBRACE

    importAliasName ::= moduleExportName opt_13

    moduleExportName ::= identifierName
           | STRING

    importedBinding ::= IDENTIFIER
           | Yield
           | AWAIT

    importDefault ::= aliasName COMMA

    importNamespace ::= grp_14 opt_16

    importFrom ::= From STRING

    aliasName ::= identifierName opt_18

    exportStatement ::= Export opt_19 grp_20 eos
           | Export Default singleExpression eos

    exportFromBlock ::= importNamespace importFrom eos
           | exportModuleItems opt_21 eos

    exportModuleItems ::= LBRACE list_23 opt_26 RBRACE

    exportAliasName ::= moduleExportName opt_28

    declaration ::= variableStatement
           | classDeclaration
           | functionDeclaration

    variableStatement ::= variableDeclarationList eos

    variableDeclarationList ::= varModifier variableDeclaration list_30

    singleVariableDeclaration ::= varModifier variableDeclaration

    variableDeclaration ::= assignable opt_32

    emptyStatement_ ::= SEMI

    expressionStatement ::= expressionSequence eos

    ifStatement ::= If LPAREN expressionSequence RPAREN statement opt_34

    iterationStatement ::= Do statement While LPAREN expressionSequence RPAREN eos
           | While LPAREN expressionSequence RPAREN statement
           | For LPAREN opt_36 SEMI opt_37 SEMI opt_38 RPAREN statement
           | For LPAREN grp_39 In expressionSequence RPAREN statement
           | For opt_40 LPAREN grp_41 Of expressionSequence RPAREN statement

    varModifier ::= Var
           | let_
           | Const

    continueStatement ::= Continue opt_42 eos

    breakStatement ::= Break opt_43 eos

    returnStatement ::= Return opt_44 eos

    yieldStatement ::= grp_45 opt_46 eos

    withStatement ::= With LPAREN expressionSequence RPAREN statement

    switchStatement ::= Switch LPAREN expressionSequence RPAREN caseBlock

    caseBlock ::= LBRACE opt_47 opt_50 RBRACE

    caseClauses ::= list_51

    caseClause ::= Case expressionSequence COLON opt_52

    defaultClause ::= Default COLON opt_53

    labelledStatement ::= identifier COLON statement

    throwStatement ::= opt_54 expressionSequence eos

    tryStatement ::= Try block grp_55

    catchProduction ::= Catch opt_59 block

    finallyProduction ::= Finally block

    debuggerStatement ::= Debugger eos

    functionDeclaration ::= opt_60 Function_ opt_61 identifier LPAREN opt_62 RPAREN functionBody

    classDeclaration ::= CLASS_ identifier classTail

    classTail ::= opt_64 LBRACE list_65 RBRACE

    classElement ::= opt_67 methodDefinition
           | opt_69 fieldDefinition
           | grp_70 block
           | emptyStatement_

    methodDefinition ::= opt_72 opt_73 classElementName LPAREN opt_74 RPAREN functionBody
           | opt_75 getter LPAREN RPAREN functionBody
           | opt_76 setter LPAREN opt_77 RPAREN functionBody

    fieldDefinition ::= classElementName opt_78

    classElementName ::= propertyName
           | privateIdentifier

    privateIdentifier ::= HASH identifierName

    formalParameterList ::= formalParameterArg list_80 opt_82
           | lastFormalParameterArg

    formalParameterArg ::= assignable opt_84

    lastFormalParameterArg ::= ELLIPSIS singleExpression

    functionBody ::= LBRACE opt_85 RBRACE

    sourceElements ::= list_86

    arrayLiteral ::= seq_87

    elementList ::= list_88 opt_89 list_92 list_93

    arrayElement ::= opt_94 singleExpression

    propertyAssignment ::= propertyName COLON singleExpression
           | LBRACKET singleExpression RBRACKET COLON singleExpression
           | opt_95 opt_96 propertyName LPAREN opt_97 RPAREN functionBody
           | getter LPAREN RPAREN functionBody
           | setter LPAREN formalParameterArg RPAREN functionBody
           | opt_98 singleExpression

    propertyName ::= identifierName
           | STRING
           | numericLiteral
           | LBRACKET singleExpression RBRACKET

    arguments ::= LPAREN opt_103 RPAREN

    argument ::= opt_104 grp_105

    expressionSequence ::= singleExpression list_107

    singleExpression ::= jsAssignment

    jsAssignment ::= jsConditional
           | jsConditional EQ jsAssignment
           | jsConditional PLUSEQ jsAssignment
           | jsConditional MINUSEQ jsAssignment
           | jsConditional STAREQ jsAssignment
           | jsConditional SLASHEQ jsAssignment

    jsConditional ::= jsOr
           | jsOr QUESTION jsAssignment COLON jsAssignment

    jsOr ::= jsAnd
           | jsOr OROR jsAnd

    jsAnd ::= jsEq
           | jsAnd ANDAND jsEq

    jsEq ::= jsRel
           | jsEq EQEQ jsRel
           | jsEq NOTEQ jsRel
           | jsEq EQEQEQ jsRel
           | jsEq NOTEQEQ jsRel

    jsRel ::= jsAdd
           | jsRel LT jsAdd
           | jsRel GT jsAdd
           | jsRel LTEQ jsAdd
           | jsRel GTEQ jsAdd

    jsAdd ::= jsMul
           | jsAdd PLUS jsMul
           | jsAdd MINUS jsMul

    jsMul ::= jsUnary
           | jsMul STAR jsUnary
           | jsMul SLASH jsUnary
           | jsMul PERCENT jsUnary

    jsUnary ::= PLUSPLUS jsUnary
           | MINUSMINUS jsUnary
           | PLUS jsUnary
           | MINUS jsUnary
           | BANG jsUnary
           | TYPEOF jsUnary
           | jsPostfix

    jsPostfix ::= jsPrimary
           | jsPostfix DOT IDENTIFIER
           | jsPostfix arguments
           | jsPostfix LBRACKET expressionSequence RBRACKET
           | jsPostfix PLUSPLUS
           | jsPostfix MINUSMINUS

    jsPrimary ::= THIS
           | IDENTIFIER
           | literal
           | LPAREN expressionSequence RPAREN
           | NEW jsPrimary arguments
           | NEW jsPrimary
           | arrayLiteral
           | objectLiteral
           | anonymousFunction


    initializer ::= EQ singleExpression

    assignable ::= identifier
           | keyword
           | arrayLiteral
           | objectLiteral

    objectLiteral ::= LBRACE opt_123 RBRACE

    anonymousFunction ::= functionDeclaration
           | opt_124 Function_ opt_125 LPAREN opt_126 RPAREN functionBody
           | opt_127 arrowFunctionParameters FATARROW arrowFunctionBody

    arrowFunctionParameters ::= propertyName
           | LPAREN opt_128 RPAREN

    arrowFunctionBody ::= singleExpression
           | functionBody

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

    templateStringLiteral ::= BackTick list_129 BackTick

    templateStringAtom ::= TemplateStringAtom
           | TemplateStringStartExpression singleExpression TemplateCloseBrace

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

    identifierName ::= identifier
           | reservedWord

    identifier ::= IDENTIFIER

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
           | let_
           | Private
           | Public
           | Interface
           | Package
           | Protected
           | Static
           | Yield
           | YieldStar
           | Async
           | AWAIT
           | From
           | As
           | Of

    let_ ::= NonStrictLet
           | StrictLet

    eos ::= SEMI
           | $empty

    opt_1 ::= HashBangLine | $empty

    opt_2 ::= sourceElements | $empty

    opt_3 ::= statementList | $empty

    list_4 ::= statement | list_4 statement

    opt_5 ::= importDefault | $empty

    grp_6 ::= importNamespace | importModuleItems

    seq_7 ::= importAliasName COMMA

    list_8 ::= $empty | list_8 seq_7

    opt_9 ::= COMMA | $empty

    seq_10 ::= importAliasName opt_9

    opt_11 ::= seq_10 | $empty

    seq_12 ::= As importedBinding

    opt_13 ::= seq_12 | $empty

    grp_14 ::= STAR | identifierName

    seq_15 ::= As identifierName

    opt_16 ::= seq_15 | $empty

    seq_17 ::= As identifierName

    opt_18 ::= seq_17 | $empty

    opt_19 ::= Default | $empty

    grp_20 ::= exportFromBlock | declaration

    opt_21 ::= importFrom | $empty

    seq_22 ::= exportAliasName COMMA

    list_23 ::= $empty | list_23 seq_22

    opt_24 ::= COMMA | $empty

    seq_25 ::= exportAliasName opt_24

    opt_26 ::= seq_25 | $empty

    seq_27 ::= As moduleExportName

    opt_28 ::= seq_27 | $empty

    seq_29 ::= COMMA variableDeclaration

    list_30 ::= $empty | list_30 seq_29

    seq_31 ::= EQ singleExpression

    opt_32 ::= seq_31 | $empty

    seq_33 ::= Else statement

    opt_34 ::= seq_33 | $empty

    grp_35 ::= expressionSequence | variableDeclarationList

    opt_36 ::= grp_35 | $empty

    opt_37 ::= expressionSequence | $empty

    opt_38 ::= expressionSequence | $empty

    grp_39 ::= singleExpression | singleVariableDeclaration

    opt_40 ::= AWAIT | $empty

    grp_41 ::= singleExpression | singleVariableDeclaration

    opt_42 ::= identifier | $empty

    opt_43 ::= identifier | $empty

    opt_44 ::= expressionSequence | $empty

    grp_45 ::= Yield | YieldStar

    opt_46 ::= expressionSequence | $empty

    opt_47 ::= caseClauses | $empty

    opt_48 ::= caseClauses | $empty

    seq_49 ::= defaultClause opt_48

    opt_50 ::= seq_49 | $empty

    list_51 ::= caseClause | list_51 caseClause

    opt_52 ::= statementList | $empty

    opt_53 ::= statementList | $empty

    opt_54 ::= Throw | $empty

    opt_56 ::= finallyProduction | $empty

    grp_55 ::= catchProduction opt_56 | finallyProduction

    opt_57 ::= assignable | $empty

    seq_58 ::= LPAREN opt_57 RPAREN

    opt_59 ::= seq_58 | $empty

    opt_60 ::= Async | $empty

    opt_61 ::= STAR | $empty

    opt_62 ::= formalParameterList | $empty

    seq_63 ::= Extends singleExpression

    opt_64 ::= seq_63 | $empty

    list_65 ::= $empty | list_65 classElement

    grp_66 ::= Static | identifier

    opt_67 ::= grp_66 | $empty

    grp_68 ::= Static | identifier

    opt_69 ::= grp_68 | $empty

    grp_70 ::= Static | identifier

    opt_71 ::= Async | $empty

    opt_72 ::= opt_71 | $empty

    opt_73 ::= STAR | $empty

    opt_74 ::= formalParameterList | $empty

    opt_75 ::= STAR | $empty

    opt_76 ::= STAR | $empty

    opt_77 ::= formalParameterList | $empty

    opt_78 ::= initializer | $empty

    seq_79 ::= COMMA formalParameterArg

    list_80 ::= $empty | list_80 seq_79

    seq_81 ::= COMMA lastFormalParameterArg

    opt_82 ::= seq_81 | $empty

    seq_83 ::= EQ singleExpression

    opt_84 ::= seq_83 | $empty

    opt_85 ::= sourceElements | $empty

    list_86 ::= sourceElement | list_86 sourceElement

    seq_87 ::= LBRACKET elementList RBRACKET

    list_88 ::= $empty | list_88 COMMA

    opt_89 ::= arrayElement | $empty

    list_90 ::= COMMA | list_90 COMMA

    seq_91 ::= list_90 arrayElement

    list_92 ::= $empty | list_92 seq_91

    list_93 ::= $empty | list_93 COMMA

    opt_94 ::= ELLIPSIS | $empty

    opt_95 ::= Async | $empty

    opt_96 ::= STAR | $empty

    opt_97 ::= formalParameterList | $empty

    opt_98 ::= ELLIPSIS | $empty

    seq_99 ::= COMMA argument

    list_100 ::= $empty | list_100 seq_99

    opt_101 ::= COMMA | $empty

    seq_102 ::= argument list_100 opt_101

    opt_103 ::= seq_102 | $empty

    opt_104 ::= ELLIPSIS | $empty

    grp_105 ::= singleExpression | identifier

    seq_106 ::= COMMA singleExpression

    list_107 ::= $empty | list_107 seq_106

    opt_108 ::= identifier | $empty

    opt_109 ::= QUESTDOT | $empty

    opt_110 ::= QUESTION | $empty

    opt_111 ::= HASH | $empty

    opt_112 ::= singleExpression | $empty

    opt_113 ::= singleExpression | $empty

    grp_114 ::= STAR | SLASH | PERCENT

    grp_115 ::= PLUS | MINUS

    grp_116 ::= LSHIFT | RSHIFT | URSHIFT

    grp_117 ::= LT | GT | LTEQ | GTEQ

    grp_118 ::= EQEQ | NOTEQ | EQEQEQ | NOTEQEQ

    seq_119 ::= COMMA propertyAssignment

    list_120 ::= $empty | list_120 seq_119

    opt_121 ::= COMMA | $empty

    seq_122 ::= propertyAssignment list_120 opt_121

    opt_123 ::= seq_122 | $empty

    opt_124 ::= Async | $empty

    opt_125 ::= STAR | $empty

    opt_126 ::= formalParameterList | $empty

    opt_127 ::= Async | $empty

    opt_128 ::= formalParameterList | $empty

    list_129 ::= $empty | list_129 templateStringAtom

%End
