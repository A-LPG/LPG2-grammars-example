-- AUTO-GENERATED from antlr/grammars-v4 v by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=VParser
%options package=lpg.grammars.v
%options template=dtParserTemplateF.gi
%options import_terminals=VLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    sourceFile
%End

%Rules
    sourceFile ::= optn0002 listn0004 listn0006

    moduleClause ::= MODULE IDENTIFIER

    importDecl ::= IMPORT importSpec

    importSpec ::= optn0008 importPath

    importPath ::= IDENTIFIER
           | STRING

    topLevelDecl ::= declaration
           | functionDecl
           | methodDecl

    declaration ::= constDecl
           | varDecl
           | structDecl

    constDecl ::= CONST LPAREN listn0010 RPAREN

    constSpec ::= IDENTIFIER EQ expression

    identifierList ::= IDENTIFIER listn0012

    expressionList ::= expression listn0014

    functionDecl ::= FN IDENTIFIER grpn0015

    function_ ::= signature block

    methodDecl ::= FN receiver IDENTIFIER grpn0016

    receiver ::= parameters

    noMutDecl ::= identifierList seqn0017

    varDecl ::= optn0018 noMutDecl

    block ::= LBRACE statementList RBRACE

    statementList ::= listn0020

    statement ::= declaration
           | simpleStmt
           | returnStmt
           | breakStmt
           | continueStmt
           | block
           | ifStmt
           | switchStmt
           | forStmt

    simpleStmt ::= expressionStmt
           | incDecStmt
           | assignment

    expressionStmt ::= expression

    incDecStmt ::= expression grpn0021

    assignment ::= expressionList assign_op expressionList

    assign_op ::= optn0023 EQ

    returnStmt ::= RETURN optn0024

    breakStmt ::= BREAK

    continueStmt ::= CONTINUE

    ifStmt ::= IF optn0026 expression block optn0029

    switchStmt ::= exprSwitchStmt

    exprSwitchStmt ::= SWITCH optn0031 optn0032 LBRACE listn0033 RBRACE

    exprCaseClause ::= exprSwitchCase COLON statementList

    exprSwitchCase ::= CASE expressionList
           | DEFAULT

    forStmt ::= FOR optn0035 block

    forClause ::= optn0036 SEMI optn0037 SEMI optn0038

    inClause ::= expressionList IN IDENTIFIER

    type_ ::= typeName
           | typeLit

    typeName ::= optn0039 optn0040 IDENTIFIER
           | qualifiedIdent

    typeLit ::= arrayType
           | functionType
           | interfaceType
           | mapType

    arrayType ::= LBRACKET optn0041 RBRACKET elementType

    arrayLength ::= expression

    elementType ::= type_

    interfaceType ::= INTERFACE IDENTIFIER LBRACE listn0043 RBRACE

    mapType ::= MAP LBRACKET type_ RBRACKET elementType

    methodSpec ::= IDENTIFIER parameters result
           | typeName
           | IDENTIFIER parameters

    functionType ::= FN signature

    signature ::= parameters result
           | parameters

    result ::= parameters
           | type_

    parameters ::= LPAREN optn0046 RPAREN

    parameterList ::= parameterDecl listn0048

    parameterDecl ::= optn0049 type_

    operand ::= literal
           | operandName
           | methodExpr
           | LPAREN expression RPAREN

    literal ::= basicLit
           | compositeLit
           | functionLit
           | arrayLit

    arrayLit ::= LBRACKET expression listn0051 RBRACKET

    basicLit ::= NUMBER
           | CHAR_LITERAL
           | STRING

    operandName ::= IDENTIFIER
           | qualifiedIdent

    qualifiedIdent ::= IDENTIFIER DOT IDENTIFIER

    compositeLit ::= literalType literalValue

    literalType ::= arrayType
           | mapType
           | typeName

    literalValue ::= LBRACE optn0054 RBRACE

    elementList ::= keyedElement listn0057

    keyedElement ::= optn0059 element

    key ::= IDENTIFIER
           | expression
           | literalValue

    element ::= expression
           | literalValue

    structDecl ::= STRUCT IDENTIFIER LBRACE listn0061 RBRACE

    fieldDecl ::= grpn0062 optn0063
           | grpn0064 COLON

    anonymousField ::= typeName

    functionLit ::= FN function_

    primaryExpr ::= operand
           | conversion
           | primaryExpr selector
           | primaryExpr index
           | primaryExpr arguments

    selector ::= DOT IDENTIFIER

    index ::= LBRACKET expression RBRACKET

    arguments ::= LPAREN optn0073 RPAREN

    methodExpr ::= receiverType DOT IDENTIFIER

    receiverType ::= typeName
           | LPAREN receiverType RPAREN

    expression ::= unaryExpr
           | expression grpn0074 expression

    unaryExpr ::= primaryExpr
           | grpn0075 unaryExpr

    conversion ::= type_ LPAREN expression RPAREN

    eos ::= SEMI
           | $empty

    seqn0001 ::= moduleClause eos

    optn0002 ::= seqn0001
           | $empty

    seqn0003 ::= importDecl eos

    listn0004 ::= $empty
           | listn0004 seqn0003

    seqn0005 ::= topLevelDecl eos

    listn0006 ::= $empty
           | listn0006 seqn0005

    grpn0007 ::= DOT
           | IDENTIFIER

    optn0008 ::= grpn0007
           | $empty

    seqn0009 ::= constSpec eos

    listn0010 ::= $empty
           | listn0010 seqn0009

    seqn0011 ::= COMMA IDENTIFIER

    listn0012 ::= $empty
           | listn0012 seqn0011

    seqn0013 ::= COMMA expression

    listn0014 ::= $empty
           | listn0014 seqn0013

    grpn0015 ::= function_
           | signature

    grpn0016 ::= function_
           | signature

    seqn0017 ::= COLONEQ expressionList

    optn0018 ::= MUT
           | $empty

    seqn0019 ::= statement eos

    listn0020 ::= $empty
           | listn0020 seqn0019

    grpn0021 ::= PLUSPLUS
           | MINUSMINUS

    grpn0022 ::= PLUS
           | MINUS
           | PIPE
           | CARET
           | STAR
           | SLASH
           | PERCENT
           | LSHIFT
           | RSHIFT
           | AMP

    optn0023 ::= grpn0022
           | $empty

    optn0024 ::= expressionList
           | $empty

    seqn0025 ::= simpleStmt SEMI

    optn0026 ::= seqn0025
           | $empty

    grpn0028 ::= ifStmt
           | block

    grpn0027 ::= ELSE grpn0028

    optn0029 ::= grpn0027
           | $empty

    seqn0030 ::= simpleStmt SEMI

    optn0031 ::= seqn0030
           | $empty

    optn0032 ::= expression
           | $empty

    listn0033 ::= $empty
           | listn0033 exprCaseClause

    grpn0034 ::= expression
           | forClause
           | inClause

    optn0035 ::= grpn0034
           | $empty

    optn0036 ::= simpleStmt
           | $empty

    optn0037 ::= expression
           | $empty

    optn0038 ::= simpleStmt
           | $empty

    optn0039 ::= AMP
           | $empty

    optn0040 ::= MUT
           | $empty

    optn0041 ::= arrayLength
           | $empty

    seqn0042 ::= methodSpec eos

    listn0043 ::= $empty
           | listn0043 seqn0042

    optn0044 ::= COMMA
           | $empty

    seqn0045 ::= parameterList optn0044

    optn0046 ::= seqn0045
           | $empty

    seqn0047 ::= COMMA parameterDecl

    listn0048 ::= $empty
           | listn0048 seqn0047

    optn0049 ::= identifierList
           | $empty

    seqn0050 ::= COMMA expression

    listn0051 ::= $empty
           | listn0051 seqn0050

    optn0052 ::= COMMA
           | $empty

    seqn0053 ::= elementList optn0052

    optn0054 ::= seqn0053
           | $empty

    grpn0056 ::= $empty

    grpn0055 ::= grpn0056 keyedElement

    listn0057 ::= $empty
           | listn0057 grpn0055

    seqn0058 ::= key COLON

    optn0059 ::= seqn0058
           | $empty

    seqn0060 ::= fieldDecl eos

    listn0061 ::= $empty
           | listn0061 seqn0060

    grpn0062 ::= identifierList type_
           | anonymousField

    optn0063 ::= STRING
           | $empty

    optn0065 ::= MUT
           | $empty

    seqn0066 ::= MUT optn0065

    optn0067 ::= seqn0066
           | $empty

    grpn0064 ::= PUB optn0067
           | MUT

    seqn0070 ::= COMMA expressionList

    optn0071 ::= seqn0070
           | $empty

    grpn0069 ::= expressionList
           | type_ optn0071

    optn0072 ::= COMMA
           | $empty

    grpn0068 ::= grpn0069 optn0072

    optn0073 ::= grpn0068
           | $empty

    grpn0074 ::= OROR
           | ANDAND
           | EQEQ
           | NOTEQ
           | LT
           | LTEQ
           | GT
           | GTEQ
           | PLUS
           | MINUS
           | PIPE
           | CARET
           | STAR
           | SLASH
           | PERCENT
           | LSHIFT
           | RSHIFT
           | AMP
           | BITCLEAR

    grpn0075 ::= PLUS
           | MINUS
           | BANG
           | CARET
           | STAR
           | AMP

%End
