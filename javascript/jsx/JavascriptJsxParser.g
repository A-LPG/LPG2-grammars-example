-- AUTO-GENERATED from antlr/grammars-v4 javascript/jsx by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=JavascriptJsxParser
%options package=lpg.grammars.javascript.jsx
%options template=dtParserTemplateF.gi
%options import_terminals=JavascriptJsxLexer.gi
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
           | functionDeclaration

    block ::= LBRACE opt_3 RBRACE

    statementList ::= list_4

    importStatement ::= Import importFromBlock

    importFromBlock ::= opt_5 grp_6 importFrom eos
           | STRING eos

    moduleItems ::= LBRACE list_8 opt_11 RBRACE

    importDefault ::= aliasName COMMA

    importNamespace ::= grp_12 opt_14

    importFrom ::= From STRING

    aliasName ::= identifierName opt_16

    exportStatement ::= Export grp_17 eos
           | Export Default singleExpression eos

    exportFromBlock ::= importNamespace importFrom eos
           | moduleItems opt_18 eos

    declaration ::= variableStatement
           | classDeclaration
           | functionDeclaration

    variableStatement ::= variableDeclarationList eos

    variableDeclarationList ::= varModifier variableDeclaration list_20

    variableDeclaration ::= assignable opt_22

    emptyStatement_ ::= SEMI

    expressionStatement ::= expressionSequence eos

    ifStatement ::= If LPAREN expressionSequence RPAREN statement opt_24

    iterationStatement ::= Do statement While LPAREN expressionSequence RPAREN eos
           | While LPAREN expressionSequence RPAREN statement
           | For LPAREN opt_26 SEMI opt_27 SEMI opt_28 RPAREN statement
           | For LPAREN grp_29 In expressionSequence RPAREN statement
           | For opt_30 LPAREN grp_31 opt_32 expressionSequence RPAREN statement

    varModifier ::= Var
           | let_
           | Const

    continueStatement ::= Continue opt_33 eos

    breakStatement ::= Break opt_34 eos

    returnStatement ::= Return opt_35 eos
           | Return LPAREN jsxElements RPAREN eos

    yieldStatement ::= grp_36 opt_37 eos

    withStatement ::= With LPAREN expressionSequence RPAREN statement

    switchStatement ::= Switch LPAREN expressionSequence RPAREN caseBlock

    caseBlock ::= LBRACE opt_38 opt_41 RBRACE

    caseClauses ::= list_42

    caseClause ::= Case expressionSequence COLON opt_43

    defaultClause ::= Default COLON opt_44

    labelledStatement ::= identifier COLON statement

    throwStatement ::= opt_45 expressionSequence eos

    tryStatement ::= Try block grp_46

    catchProduction ::= Catch opt_50 block

    finallyProduction ::= Finally block

    debuggerStatement ::= Debugger eos

    functionDeclaration ::= opt_51 Function_ opt_52 identifier LPAREN opt_53 RPAREN LBRACE functionBody RBRACE

    classDeclaration ::= CLASS_ identifier classTail

    classTail ::= opt_55 LBRACE list_56 RBRACE

    classElement ::= list_58 grp_59
           | emptyStatement_
           | opt_60 propertyName EQ singleExpression

    methodDefinition ::= opt_61 opt_62 propertyName LPAREN opt_63 RPAREN LBRACE functionBody RBRACE
           | opt_64 opt_65 getter LPAREN RPAREN LBRACE functionBody RBRACE
           | opt_66 opt_67 setter LPAREN opt_68 RPAREN LBRACE functionBody RBRACE

    formalParameterList ::= formalParameterArg list_70 opt_72
           | lastFormalParameterArg

    formalParameterArg ::= assignable opt_74

    lastFormalParameterArg ::= ELLIPSIS singleExpression

    functionBody ::= opt_75

    sourceElements ::= list_76

    arrayLiteral ::= seq_77

    elementList ::= list_78 opt_79 list_82 list_83

    arrayElement ::= opt_84 singleExpression

    propertyAssignment ::= propertyName COLON singleExpression
           | LBRACKET singleExpression RBRACKET COLON singleExpression
           | opt_85 opt_86 propertyName LPAREN opt_87 RPAREN LBRACE functionBody RBRACE
           | getter LPAREN RPAREN LBRACE functionBody RBRACE
           | setter LPAREN formalParameterArg RPAREN LBRACE functionBody RBRACE
           | opt_88 singleExpression

    propertyName ::= identifierName
           | STRING
           | numericLiteral
           | LBRACKET singleExpression RBRACKET

    arguments ::= LPAREN opt_93 RPAREN

    argument ::= opt_94 grp_95

    expressionSequence ::= opt_96 singleExpression list_99

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


    jsxElements ::= list_110

    jsxElementBegin ::= JsxElementBegin
           | JsxOpeningElementBegin
           | JsxChildrenOpeningElementBegin

    jsxElement ::= jsxSelfClosingElement
           | jsxOpeningElement jsxChildren jsxClosingElement

    jsxSelfClosingElement ::= jsxElementBegin jsxSelfClosingElementName opt_111 JsxOpeningElementSlashEnd

    jsxOpeningElement ::= jsxElementBegin jsxOpeningElementName opt_112 JsxOpeningElementEnd

    jsxClosingElement ::= JsxChildrenClosingElementSlashBegin jsxClosingElementName JsxClosingElementEnd

    jsxChildren ::= opt_113 list_117

    jsxSelfClosingElementName ::= JsxOpeningElementId

    jsxOpeningElementName ::= JsxOpeningElementId

    jsxClosingElementName ::= opt_118

    jsxAttributes ::= jsxSpreadAttribute opt_119
           | jsxAttribute opt_120

    jsxSpreadAttribute ::= JsxOpeningElementOpenBrace ELLIPSIS singleExpression RBRACE

    jsxAttribute ::= jsxAttributeName JsxAssign jsxAttributeValue
           | jsxAttributeName

    jsxAttributeName ::= JsxOpeningElementId

    jsxAttributeValue ::= JsxAttributeValue
           | jsxElement
           | objectExpressionSequence

    assignable ::= identifier
           | arrayLiteral
           | objectLiteral

    objectLiteral ::= LBRACE opt_125 RBRACE

    openBrace ::= LBRACE
           | JsxOpeningElementOpenBrace
           | JsxChildrenOpenBrace

    objectExpressionSequence ::= openBrace expressionSequence RBRACE

    anoymousFunction ::= functionDeclaration
           | opt_126 Function_ opt_127 LPAREN opt_128 RPAREN LBRACE functionBody RBRACE
           | opt_129 arrowFunctionParameters FATARROW arrowFunctionBody

    arrowFunctionParameters ::= identifier
           | LPAREN opt_130 RPAREN

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

    literal ::= NULL_LITERAL
           | BOOL_LITERAL
           | STRING
           | templateStringLiteral
           | RegularExpressionLiteral
           | numericLiteral
           | bigintLiteral

    templateStringLiteral ::= BackTick list_131 BackTick

    templateStringAtom ::= TemplateStringAtom
           | TemplateStringStartExpression singleExpression RBRACE

    numericLiteral ::= NUMBER
           | HexIntegerLiteral
           | OctalIntegerLiteral
           | OctalIntegerLiteral2
           | BinaryIntegerLiteral

    bigintLiteral ::= BigDecimalIntegerLiteral
           | BigHexIntegerLiteral
           | BigOctalIntegerLiteral
           | BigBinaryIntegerLiteral

    getter ::= opt_132 propertyName

    setter ::= opt_133 propertyName

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
           | Async
           | AWAIT
           | From
           | As

    let_ ::= NonStrictLet
           | StrictLet

    eos ::= SEMI
           | $empty

    opt_1 ::= HashBangLine | $empty

    opt_2 ::= sourceElements | $empty

    opt_3 ::= statementList | $empty

    list_4 ::= statement | list_4 statement

    opt_5 ::= importDefault | $empty

    grp_6 ::= importNamespace | moduleItems

    seq_7 ::= aliasName COMMA

    list_8 ::= $empty | list_8 seq_7

    opt_9 ::= COMMA | $empty

    seq_10 ::= aliasName opt_9

    opt_11 ::= seq_10 | $empty

    grp_12 ::= STAR | identifierName

    seq_13 ::= As identifierName

    opt_14 ::= seq_13 | $empty

    seq_15 ::= As identifierName

    opt_16 ::= seq_15 | $empty

    grp_17 ::= exportFromBlock | declaration

    opt_18 ::= importFrom | $empty

    seq_19 ::= COMMA variableDeclaration

    list_20 ::= $empty | list_20 seq_19

    seq_21 ::= EQ singleExpression

    opt_22 ::= seq_21 | $empty

    seq_23 ::= Else statement

    opt_24 ::= seq_23 | $empty

    grp_25 ::= expressionSequence | variableDeclarationList

    opt_26 ::= grp_25 | $empty

    opt_27 ::= expressionSequence | $empty

    opt_28 ::= expressionSequence | $empty

    grp_29 ::= singleExpression | variableDeclarationList

    opt_30 ::= AWAIT | $empty

    grp_31 ::= singleExpression | variableDeclarationList

    opt_32 ::= identifier | $empty

    opt_33 ::= identifier | $empty

    opt_34 ::= identifier | $empty

    opt_35 ::= expressionSequence | $empty

    grp_36 ::= Yield | YieldStar

    opt_37 ::= expressionSequence | $empty

    opt_38 ::= caseClauses | $empty

    opt_39 ::= caseClauses | $empty

    seq_40 ::= defaultClause opt_39

    opt_41 ::= seq_40 | $empty

    list_42 ::= caseClause | list_42 caseClause

    opt_43 ::= statementList | $empty

    opt_44 ::= statementList | $empty

    opt_45 ::= Throw | $empty

    opt_47 ::= finallyProduction | $empty

    grp_46 ::= catchProduction opt_47 | finallyProduction

    opt_48 ::= assignable | $empty

    seq_49 ::= LPAREN opt_48 RPAREN

    opt_50 ::= seq_49 | $empty

    opt_51 ::= Async | $empty

    opt_52 ::= STAR | $empty

    opt_53 ::= formalParameterList | $empty

    seq_54 ::= Extends singleExpression

    opt_55 ::= seq_54 | $empty

    list_56 ::= $empty | list_56 classElement

    grp_57 ::= Static | identifier | Async

    list_58 ::= $empty | list_58 grp_57

    grp_59 ::= methodDefinition | assignable EQ objectLiteral SEMI

    opt_60 ::= HASH | $empty

    opt_61 ::= STAR | $empty

    opt_62 ::= HASH | $empty

    opt_63 ::= formalParameterList | $empty

    opt_64 ::= STAR | $empty

    opt_65 ::= HASH | $empty

    opt_66 ::= STAR | $empty

    opt_67 ::= HASH | $empty

    opt_68 ::= formalParameterList | $empty

    seq_69 ::= COMMA formalParameterArg

    list_70 ::= $empty | list_70 seq_69

    seq_71 ::= COMMA lastFormalParameterArg

    opt_72 ::= seq_71 | $empty

    seq_73 ::= EQ singleExpression

    opt_74 ::= seq_73 | $empty

    opt_75 ::= sourceElements | $empty

    list_76 ::= sourceElement | list_76 sourceElement

    seq_77 ::= LBRACKET elementList RBRACKET

    list_78 ::= $empty | list_78 COMMA

    opt_79 ::= arrayElement | $empty

    list_80 ::= COMMA | list_80 COMMA

    seq_81 ::= list_80 arrayElement

    list_82 ::= $empty | list_82 seq_81

    list_83 ::= $empty | list_83 COMMA

    opt_84 ::= ELLIPSIS | $empty

    opt_85 ::= Async | $empty

    opt_86 ::= STAR | $empty

    opt_87 ::= formalParameterList | $empty

    opt_88 ::= ELLIPSIS | $empty

    seq_89 ::= COMMA argument

    list_90 ::= $empty | list_90 seq_89

    opt_91 ::= COMMA | $empty

    seq_92 ::= argument list_90 opt_91

    opt_93 ::= seq_92 | $empty

    opt_94 ::= ELLIPSIS | $empty

    grp_95 ::= singleExpression | identifier

    opt_96 ::= ELLIPSIS | $empty

    opt_97 ::= ELLIPSIS | $empty

    seq_98 ::= COMMA opt_97 singleExpression

    list_99 ::= $empty | list_99 seq_98

    opt_100 ::= identifier | $empty

    opt_101 ::= QUESTION | $empty

    opt_102 ::= HASH | $empty

    opt_103 ::= singleExpression | $empty

    opt_104 ::= singleExpression | $empty

    grp_105 ::= STAR | SLASH | PERCENT

    grp_106 ::= PLUS | MINUS

    grp_107 ::= LSHIFT | RSHIFT | URSHIFT

    grp_108 ::= LT | GT | LTEQ | GTEQ

    grp_109 ::= EQEQ | NOTEQ | EQEQEQ | NOTEQEQ

    list_110 ::= jsxElement | list_110 jsxElement

    opt_111 ::= jsxAttributes | $empty

    opt_112 ::= jsxAttributes | $empty

    opt_113 ::= HtmlChardata | $empty

    grp_115 ::= jsxElement | objectExpressionSequence

    opt_116 ::= HtmlChardata | $empty

    grp_114 ::= grp_115 opt_116

    list_117 ::= $empty | list_117 grp_114

    opt_118 ::= JsxClosingElementId | $empty

    opt_119 ::= jsxAttributes | $empty

    opt_120 ::= jsxAttributes | $empty

    seq_121 ::= COMMA propertyAssignment

    list_122 ::= $empty | list_122 seq_121

    opt_123 ::= COMMA | $empty

    seq_124 ::= propertyAssignment list_122 opt_123

    opt_125 ::= seq_124 | $empty

    opt_126 ::= Async | $empty

    opt_127 ::= STAR | $empty

    opt_128 ::= formalParameterList | $empty

    opt_129 ::= Async | $empty

    opt_130 ::= formalParameterList | $empty

    list_131 ::= $empty | list_131 templateStringAtom

    opt_132 ::= identifier | $empty

    opt_133 ::= identifier | $empty

%End
