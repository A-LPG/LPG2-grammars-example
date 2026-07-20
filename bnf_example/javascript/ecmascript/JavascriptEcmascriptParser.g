-- AUTO-GENERATED from antlr/grammars-v4 javascript/ecmascript by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=JavascriptEcmascriptParser
%options package=lpg.grammars.javascript.ecmascript
%options template=dtParserTemplateF.gi
%options import_terminals=JavascriptEcmascriptLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    program ::= opt_1

    sourceElements ::= list_2

    sourceElement ::= statement
           | functionDeclaration

    statement ::= block
           | variableStatement
           | emptyStatement_
           | expressionStatement
           | ifStatement
           | iterationStatement
           | continueStatement
           | breakStatement
           | returnStatement
           | withStatement
           | labelledStatement
           | switchStatement
           | throwStatement
           | tryStatement
           | debuggerStatement

    block ::= LBRACE opt_3 RBRACE

    statementList ::= list_4

    variableStatement ::= Var variableDeclarationList eos

    variableDeclarationList ::= variableDeclaration list_6

    variableDeclaration ::= IDENTIFIER opt_7

    initialiser ::= EQ singleExpression

    emptyStatement_ ::= SEMI

    expressionStatement ::= expressionSequence eos

    ifStatement ::= If LPAREN expressionSequence RPAREN statement opt_9

    iterationStatement ::= Do statement While LPAREN expressionSequence RPAREN eos
           | While LPAREN expressionSequence RPAREN statement
           | For LPAREN opt_10 SEMI opt_11 SEMI opt_12 RPAREN statement
           | For LPAREN Var variableDeclarationList SEMI opt_13 SEMI opt_14 RPAREN statement
           | For LPAREN singleExpression In expressionSequence RPAREN statement
           | For LPAREN Var variableDeclaration In expressionSequence RPAREN statement

    continueStatement ::= Continue opt_15 eos

    breakStatement ::= Break opt_16 eos

    returnStatement ::= Return opt_17 eos

    withStatement ::= With LPAREN expressionSequence RPAREN statement

    switchStatement ::= Switch LPAREN expressionSequence RPAREN caseBlock

    caseBlock ::= LBRACE opt_18 opt_21 RBRACE

    caseClauses ::= list_22

    caseClause ::= Case expressionSequence COLON opt_23

    defaultClause ::= Default COLON opt_24

    labelledStatement ::= IDENTIFIER COLON statement

    throwStatement ::= opt_25 expressionSequence eos

    tryStatement ::= Try block catchProduction
           | Try block finallyProduction
           | Try block catchProduction finallyProduction

    catchProduction ::= Catch LPAREN IDENTIFIER RPAREN block

    finallyProduction ::= Finally block

    debuggerStatement ::= Debugger eos

    functionDeclaration ::= Function IDENTIFIER LPAREN opt_26 RPAREN LBRACE functionBody RBRACE

    formalParameterList ::= IDENTIFIER list_28

    functionBody ::= opt_29

    arrayLiteral ::= LBRACKET opt_30 opt_31 opt_32 RBRACKET

    elementList ::= opt_33 singleExpression list_36

    elision ::= list_37

    objectLiteral ::= LBRACE RBRACE
           | LBRACE propertyNameAndValueList opt_38 RBRACE

    propertyNameAndValueList ::= propertyAssignment list_40

    propertyAssignment ::= propertyName COLON singleExpression
           | getter LPAREN RPAREN LBRACE functionBody RBRACE
           | setter LPAREN propertySetParameterList RPAREN LBRACE functionBody RBRACE

    propertyName ::= identifierName
           | STRING
           | numericLiteral

    propertySetParameterList ::= IDENTIFIER

    arguments ::= LPAREN opt_41 RPAREN

    argumentList ::= singleExpression list_43

    expressionSequence ::= singleExpression list_45

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

    literal ::= grp_56
           | numericLiteral

    numericLiteral ::= NUMBER
           | HexIntegerLiteral
           | OctalIntegerLiteral

    identifierName ::= IDENTIFIER
           | reservedWord

    reservedWord ::= keyword
           | futureReservedWord
           | grp_57

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
           | Function
           | THIS
           | With
           | Default
           | If
           | Throw
           | DELETE
           | In
           | Try

    futureReservedWord ::= CLASS_
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

    getter ::= IDENTIFIER propertyName

    setter ::= IDENTIFIER propertyName

    eos ::= SEMI
           | $empty

    eof ::= $empty

    opt_1 ::= sourceElements | $empty

    list_2 ::= sourceElement | list_2 sourceElement

    opt_3 ::= statementList | $empty

    list_4 ::= statement | list_4 statement

    seq_5 ::= COMMA variableDeclaration

    list_6 ::= $empty | list_6 seq_5

    opt_7 ::= initialiser | $empty

    seq_8 ::= Else statement

    opt_9 ::= seq_8 | $empty

    opt_10 ::= expressionSequence | $empty

    opt_11 ::= expressionSequence | $empty

    opt_12 ::= expressionSequence | $empty

    opt_13 ::= expressionSequence | $empty

    opt_14 ::= expressionSequence | $empty

    opt_15 ::= IDENTIFIER | $empty

    opt_16 ::= IDENTIFIER | $empty

    opt_17 ::= expressionSequence | $empty

    opt_18 ::= caseClauses | $empty

    opt_19 ::= caseClauses | $empty

    seq_20 ::= defaultClause opt_19

    opt_21 ::= seq_20 | $empty

    list_22 ::= caseClause | list_22 caseClause

    opt_23 ::= statementList | $empty

    opt_24 ::= statementList | $empty

    opt_25 ::= Throw | $empty

    opt_26 ::= formalParameterList | $empty

    seq_27 ::= COMMA IDENTIFIER

    list_28 ::= $empty | list_28 seq_27

    opt_29 ::= sourceElements | $empty

    opt_30 ::= elementList | $empty

    opt_31 ::= COMMA | $empty

    opt_32 ::= elision | $empty

    opt_33 ::= elision | $empty

    opt_34 ::= elision | $empty

    seq_35 ::= COMMA opt_34 singleExpression

    list_36 ::= $empty | list_36 seq_35

    list_37 ::= COMMA | list_37 COMMA

    opt_38 ::= COMMA | $empty

    seq_39 ::= COMMA propertyAssignment

    list_40 ::= $empty | list_40 seq_39

    opt_41 ::= argumentList | $empty

    seq_42 ::= COMMA singleExpression

    list_43 ::= $empty | list_43 seq_42

    seq_44 ::= COMMA singleExpression

    list_45 ::= $empty | list_45 seq_44

    opt_46 ::= IDENTIFIER | $empty

    opt_47 ::= formalParameterList | $empty

    opt_48 ::= arguments | $empty

    opt_49 ::= singleExpression | $empty

    opt_50 ::= singleExpression | $empty

    grp_51 ::= STAR | SLASH | PERCENT

    grp_52 ::= PLUS | MINUS

    grp_53 ::= LSHIFT | RSHIFT | URSHIFT

    grp_54 ::= LT | GT | LTEQ | GTEQ

    grp_55 ::= EQEQ | NOTEQ | EQEQEQ | NOTEQEQ

    grp_56 ::= NULL_LITERAL | BOOL_LITERAL | STRING | RegularExpressionLiteral

    grp_57 ::= NULL_LITERAL | BOOL_LITERAL

%End
