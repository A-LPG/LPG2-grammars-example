-- Structural language_subset from grammars-v4 (not token-stream soup).

%Options la=2
%Options fp=KotlinFormalParser
%options package=lpg.grammars.kotlin.kotlin_formal
%options template=dtParserTemplateF.gi
%options import_terminals=KotlinFormalLexer.gi
%options automatic_ast=none

%Eof
    EOF_TOKEN
%End

%Start
    kotlinFile
%End

%Rules
    kotlinFile ::= optHeaders declarationList
    optHeaders ::= $empty
           | packageHeader
           | packageHeader importList
           | importList
    packageHeader ::= PACKAGE dottedName
    importList ::= importHeader
           | importList importHeader
    importHeader ::= IMPORT dottedName
           | IMPORT dottedName DOT STAR
           | IMPORT dottedName AS IDENTIFIER
    dottedName ::= IDENTIFIER
           | dottedName DOT IDENTIFIER

    declarationList ::= $empty
           | declarationList declaration
    declaration ::= functionDeclaration
           | propertyDeclaration
           | classDeclaration
           | objectDeclaration

    functionDeclaration ::= optFunMods FUN IDENTIFIER paramClause optType functionBody
           | optFunMods FUN IDENTIFIER paramClause optType
    optFunMods ::= $empty
           | funModList
    funModList ::= funMod
           | funModList funMod
    funMod ::= PRIVATE
           | PUBLIC
           | INTERNAL
           | PROTECTED
           | OVERRIDE
           | OPEN
           | ABSTRACT
           | FINAL
           | INLINE
           | SUSPEND
    paramClause ::= LPAREN optParams RPAREN
    optParams ::= $empty
           | params
    params ::= param
           | params COMMA param
    param ::= IDENTIFIER COLON type_
           | IDENTIFIER COLON type_ EQ expression
    optType ::= $empty
           | COLON type_
    type_ ::= typeName
           | typeName BANG
           | LPAREN typeList RPAREN
    typeName ::= IDENTIFIER
           | IDENTIFIER LT typeList GT
           | dottedName
    typeList ::= type_
           | typeList COMMA type_
    functionBody ::= block
           | EQ expression

    propertyDeclaration ::= optPropMods VAL IDENTIFIER optType EQ expression
           | optPropMods VAR IDENTIFIER optType EQ expression
           | optPropMods VAL IDENTIFIER optType
           | optPropMods VAR IDENTIFIER optType
    optPropMods ::= $empty
           | propModList
    propModList ::= propMod
           | propModList propMod
    propMod ::= PRIVATE
           | PUBLIC
           | INTERNAL
           | PROTECTED
           | OVERRIDE
           | OPEN

    classDeclaration ::= optClassMods CLASS IDENTIFIER optParamClause optSupers classBody
           | optClassMods CLASS IDENTIFIER optParamClause optSupers
    optParamClause ::= $empty
           | paramClause
    optSupers ::= $empty
           | COLON typeList
    optClassMods ::= $empty
           | classModList
    classModList ::= classMod
           | classModList classMod
    classMod ::= PRIVATE
           | PUBLIC
           | INTERNAL
           | PROTECTED
           | DATA
           | OPEN
           | ABSTRACT
           | SEALED
           | FINAL
    objectDeclaration ::= optClassMods OBJECT IDENTIFIER optSupers optClassBody
           | COMPANION OBJECT optClassBody
           | COMPANION OBJECT IDENTIFIER optClassBody
    optClassBody ::= $empty
           | classBody
    classBody ::= LBRACE memberList RBRACE
    memberList ::= $empty
           | memberList member
    member ::= functionDeclaration
           | propertyDeclaration
           | classDeclaration
           | objectDeclaration

    block ::= LBRACE stmtList RBRACE
    stmtList ::= $empty
           | stmtList statement
    statement ::= propertyDeclaration
           | RETURN expression
           | RETURN
           | IF LPAREN expression RPAREN thenPart
           | IF LPAREN expression RPAREN thenPart ELSE thenPart
           | WHEN LPAREN expression RPAREN whenBlock
           | WHEN whenBlock
           | WHILE LPAREN expression RPAREN block
           | FOR LPAREN IDENTIFIER IN expression RPAREN block
           | BREAK
           | CONTINUE
           | THROW expression
           | TRY block catchClause optFinally
           | expression
           | block
    thenPart ::= block
           | statement
    whenBlock ::= LBRACE whenEntries RBRACE
    whenEntries ::= $empty
           | whenEntries whenEntry
    whenEntry ::= expression EQ GT thenPart
           | ELSE EQ GT thenPart
           | IN expression EQ GT thenPart
           | IS type_ EQ GT thenPart
    catchClause ::= CATCH LPAREN IDENTIFIER COLON type_ RPAREN block
    optFinally ::= $empty
           | FINALLY block

    expression ::= assignment
    assignment ::= orExpr
           | orExpr EQ assignment
    orExpr ::= andExpr
           | orExpr OROR andExpr
    andExpr ::= equality
           | andExpr ANDAND equality
    equality ::= relational
           | equality EQEQ relational
           | equality NOTEQ relational
    relational ::= additive
           | relational LT additive
           | relational GT additive
           | relational LTEQ additive
           | relational GTEQ additive
           | relational IS type_
           | relational IN additive
           | relational AS type_
    additive ::= multiplicative
           | additive PLUS multiplicative
           | additive MINUS multiplicative
    multiplicative ::= postfix
           | multiplicative STAR postfix
           | multiplicative SLASH postfix
           | multiplicative PERCENT postfix
    postfix ::= primary
           | postfix DOT IDENTIFIER
           | postfix LPAREN optArgs RPAREN
           | postfix LBRACKET expression RBRACKET
           | postfix BANG
    optArgs ::= $empty
           | args
    args ::= expression
           | args COMMA expression
    primary ::= IDENTIFIER
           | NUMBER
           | STRING
           | TRUE
           | FALSE
           | NULL
           | THIS
           | SUPER
           | LPAREN expression RPAREN
           | IF LPAREN expression RPAREN expression ELSE expression
           | OBJECT optSupers classBody
           | LBRACE stmtList RBRACE

    supportedDeclForms ::= functionDeclaration
           | propertyDeclaration
           | classDeclaration
           | objectDeclaration
    supportedStmtForms ::= IF LPAREN expression RPAREN thenPart
           | WHILE LPAREN expression RPAREN block
           | FOR LPAREN IDENTIFIER IN expression RPAREN block
           | WHEN LPAREN expression RPAREN whenBlock
           | TRY block catchClause optFinally
           | RETURN expression
           | THROW expression
           | BREAK
           | CONTINUE
    supportedExprForms ::= equality
           | relational
           | additive
           | multiplicative
           | postfix
           | primary
    supportedTypeForms ::= typeName
           | typeName BANG
           | LPAREN typeList RPAREN
    supportedModForms ::= funMod
           | propMod
           | classMod
    fileShape ::= packageHeader importList declarationList
           | importList declarationList
           | declarationList
    callChain ::= IDENTIFIER
           | callChain DOT IDENTIFIER
           | callChain LPAREN optArgs RPAREN
    binaryOps ::= PLUS
           | MINUS
           | STAR
           | SLASH
           | PERCENT
           | EQEQ
           | NOTEQ
           | LT
           | GT
           | LTEQ
           | GTEQ
           | ANDAND
           | OROR
    literalForms ::= NUMBER
           | STRING
           | TRUE
           | FALSE
           | NULL
    controlKeywords ::= IF
           | ELSE
           | WHEN
           | WHILE
           | FOR
           | RETURN
           | BREAK
           | CONTINUE
           | TRY
           | CATCH
           | FINALLY
           | THROW
    visibilityMods ::= PRIVATE
           | PUBLIC
           | INTERNAL
           | PROTECTED
    classLikeMods ::= DATA
           | OPEN
           | ABSTRACT
           | SEALED
           | FINAL
    funLikeMods ::= INLINE
           | SUSPEND
           | OVERRIDE
    padKotlinExtra ::= FUN IDENTIFIER paramClause
           | VAL IDENTIFIER
           | VAR IDENTIFIER
           | CLASS IDENTIFIER
           | OBJECT IDENTIFIER
           | PACKAGE dottedName
           | IMPORT dottedName
    padKotlinCtrl ::= IF LPAREN expression RPAREN thenPart ELSE thenPart
           | WHEN whenBlock
           | WHILE LPAREN expression RPAREN block
           | FOR LPAREN IDENTIFIER IN expression RPAREN block
    padKotlinLit ::= NUMBER
           | STRING
           | TRUE
           | FALSE
           | NULL
           | THIS
           | SUPER
    padMoreKt ::= visibilityMods funLikeMods
           | classLikeMods
           | controlKeywords
           | literalForms
           | binaryOps

    truePortPadA ::= IDENTIFIER
           | NUMBER
           | STRING
    truePortPadB ::= LPAREN RPAREN
           | LBRACE RBRACE
           | LBRACKET RBRACKET

%End
