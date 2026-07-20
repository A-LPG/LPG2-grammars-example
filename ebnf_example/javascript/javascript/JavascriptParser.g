-- AUTO-GENERATED from antlr/grammars-v4 javascript/javascript by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
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
                    | jsConditional assignmentOperator jsAssignment

    jsConditional ::= jsCoalesce
                     | jsCoalesce QUESTION jsAssignment COLON jsAssignment

    jsCoalesce ::= jsOr
                  | jsCoalesce QUESTQUEST jsAnd

    jsOr ::= jsAnd (OROR jsAnd)*

    jsAnd ::= jsBitOr (ANDAND jsBitOr)*

    jsBitOr ::= jsBitXor (BAR jsBitXor)*

    jsBitXor ::= jsBitAnd (CARET jsBitAnd)*

    jsBitAnd ::= jsEq (AMP jsEq)*

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

    jsPower ::= jsUnary (STARSTAR jsUnary)*

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
                 | jsPostfix PLUSPLUS
                 | jsPostfix MINUSMINUS

    jsPrimary ::= THIS
                 | Super
                 | IDENTIFIER
                 | literal
                 | LPAREN expressionSequence RPAREN
                 | newExpression
                 | importExpression
                 | metaExpression
                 | classExpression
                 | arrayLiteral
                 | objectLiteral
                 | anonymousFunction

    classExpression ::= CLASS_ opt_130 classTail

    newExpression ::= NEW jsPrimary arguments
                     | NEW jsPrimary

    importExpression ::= Import LPAREN singleExpression RPAREN

    metaExpression ::= NEW DOT identifierName

    optionalChainExpression ::= jsPostfix QUESTDOT identifierName
                               | jsPostfix QUESTDOT LBRACKET expressionSequence RBRACKET

    memberIndexExpression ::= jsPostfix LBRACKET expressionSequence RBRACKET

    memberDotExpression ::= jsPostfix DOT identifierName

    argumentsExpression ::= jsPostfix arguments

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

    opt_130 ::= identifier?

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

    eos ::= SEMI?

    opt_1 ::= HashBangLine?

    opt_2 ::= sourceElements?

    opt_3 ::= statementList?

    list_4 ::= statement+

    opt_5 ::= importDefault?

    grp_6 ::= importNamespace
             | importModuleItems

    seq_7 ::= importAliasName COMMA

    list_8 ::= (list_8 seq_7)?

    opt_9 ::= COMMA?

    seq_10 ::= importAliasName opt_9

    opt_11 ::= seq_10?

    seq_12 ::= As importedBinding

    opt_13 ::= seq_12?

    grp_14 ::= STAR
              | identifierName

    seq_15 ::= As identifierName

    opt_16 ::= seq_15?

    seq_17 ::= As identifierName

    opt_18 ::= seq_17?

    opt_19 ::= Default?

    grp_20 ::= exportFromBlock
              | declaration

    opt_21 ::= importFrom?

    seq_22 ::= exportAliasName COMMA

    list_23 ::= (list_23 seq_22)?

    opt_24 ::= COMMA?

    seq_25 ::= exportAliasName opt_24

    opt_26 ::= seq_25?

    seq_27 ::= As moduleExportName

    opt_28 ::= seq_27?

    seq_29 ::= COMMA variableDeclaration

    list_30 ::= (list_30 seq_29)?

    seq_31 ::= EQ singleExpression

    opt_32 ::= seq_31?

    seq_33 ::= Else statement

    opt_34 ::= seq_33?

    grp_35 ::= expressionSequence
              | variableDeclarationList

    opt_36 ::= grp_35?

    opt_37 ::= expressionSequence?

    opt_38 ::= expressionSequence?

    grp_39 ::= singleExpression
              | singleVariableDeclaration

    opt_40 ::= AWAIT?

    grp_41 ::= singleExpression
              | singleVariableDeclaration

    opt_42 ::= identifier?

    opt_43 ::= identifier?

    opt_44 ::= expressionSequence?

    grp_45 ::= Yield
              | YieldStar

    opt_46 ::= expressionSequence?

    opt_47 ::= caseClauses?

    opt_48 ::= caseClauses?

    seq_49 ::= defaultClause opt_48

    opt_50 ::= seq_49?

    list_51 ::= caseClause+

    opt_52 ::= statementList?

    opt_53 ::= statementList?

    opt_54 ::= Throw?

    opt_56 ::= finallyProduction?

    grp_55 ::= catchProduction opt_56
              | finallyProduction

    opt_57 ::= assignable?

    seq_58 ::= LPAREN opt_57 RPAREN

    opt_59 ::= seq_58?

    opt_60 ::= Async?

    opt_61 ::= STAR?

    opt_62 ::= formalParameterList?

    seq_63 ::= Extends singleExpression

    opt_64 ::= seq_63?

    list_65 ::= (list_65 classElement)?

    grp_66 ::= Static
              | identifier

    opt_67 ::= grp_66?

    grp_68 ::= Static
              | identifier

    opt_69 ::= grp_68?

    grp_70 ::= Static
              | identifier

    opt_71 ::= Async?

    opt_72 ::= opt_71?

    opt_73 ::= STAR?

    opt_74 ::= formalParameterList?

    opt_75 ::= STAR?

    opt_76 ::= STAR?

    opt_77 ::= formalParameterList?

    opt_78 ::= initializer?

    seq_79 ::= COMMA formalParameterArg

    list_80 ::= (list_80 seq_79)?

    seq_81 ::= COMMA lastFormalParameterArg

    opt_82 ::= seq_81?

    seq_83 ::= EQ singleExpression

    opt_84 ::= seq_83?

    opt_85 ::= sourceElements?

    list_86 ::= sourceElement+

    seq_87 ::= LBRACKET elementList RBRACKET

    list_88 ::= (list_88 COMMA)?

    opt_89 ::= arrayElement?

    list_90 ::= COMMA+

    seq_91 ::= list_90 arrayElement

    list_92 ::= (list_92 seq_91)?

    list_93 ::= (list_93 COMMA)?

    opt_94 ::= ELLIPSIS?

    opt_95 ::= Async?

    opt_96 ::= STAR?

    opt_97 ::= formalParameterList?

    opt_98 ::= ELLIPSIS?

    seq_99 ::= COMMA argument

    list_100 ::= (list_100 seq_99)?

    opt_101 ::= COMMA?

    seq_102 ::= argument list_100 opt_101

    opt_103 ::= seq_102?

    opt_104 ::= ELLIPSIS?

    grp_105 ::= singleExpression
               | identifier

    seq_106 ::= COMMA singleExpression

    list_107 ::= (list_107 seq_106)?

    opt_108 ::= identifier?

    opt_109 ::= QUESTDOT?

    opt_110 ::= QUESTION?

    opt_111 ::= HASH?

    opt_112 ::= singleExpression?

    opt_113 ::= singleExpression?

    grp_114 ::= STAR
               | SLASH
               | PERCENT

    grp_115 ::= PLUS
               | MINUS

    grp_116 ::= LSHIFT
               | RSHIFT
               | URSHIFT

    grp_117 ::= LT
               | GT
               | LTEQ
               | GTEQ

    grp_118 ::= EQEQ
               | NOTEQ
               | EQEQEQ
               | NOTEQEQ

    seq_119 ::= COMMA propertyAssignment

    list_120 ::= (list_120 seq_119)?

    opt_121 ::= COMMA?

    seq_122 ::= propertyAssignment list_120 opt_121

    opt_123 ::= seq_122?

    opt_124 ::= Async?

    opt_125 ::= STAR?

    opt_126 ::= formalParameterList?

    opt_127 ::= Async?

    opt_128 ::= formalParameterList?

    list_129 ::= (list_129 templateStringAtom)?
%End
