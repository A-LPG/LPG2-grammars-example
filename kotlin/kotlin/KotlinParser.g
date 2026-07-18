-- Structural language_subset from grammars-v4 (not token-stream soup).
-- Expanded declaration/statement/expression coverage for TRUE PORT bar.

%Options la=2
%Options fp=KotlinParser
%options package=lpg.grammars.kotlin.kotlin
%options template=dtParserTemplateF.gi
%options import_terminals=KotlinLexer.gi
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
           | typeAliasDeclaration
           | interfaceDeclaration

    typeAliasDeclaration ::= TYPEALIAS IDENTIFIER EQ type_
    interfaceDeclaration ::= optClassMods INTERFACE IDENTIFIER optTypeParams optSupertypes interfaceBody
    interfaceBody ::= LBRACE memberList RBRACE

    functionDeclaration ::= optFunMods FUN optTypeParams IDENTIFIER paramClause optType functionBody
           | optFunMods FUN optTypeParams IDENTIFIER paramClause optType
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
           | OPERATOR
           | INFIX
           | TAILREC
           | EXTERNAL
           | EXPECT
           | ACTUAL
    optTypeParams ::= $empty
           | LT typeParamList GT
    typeParamList ::= typeParam
           | typeParamList COMMA typeParam
    typeParam ::= IDENTIFIER
           | IDENTIFIER COLON type_
    paramClause ::= LPAREN optParams RPAREN
    optParams ::= $empty
           | params
    params ::= param
           | params COMMA param
    param ::= IDENTIFIER COLON type_
           | IDENTIFIER COLON type_ EQ expression
    optType ::= $empty
           | COLON type_
    type_ ::= simpleType
           | simpleType QUEST
           | LPAREN typeList RPAREN ARROW type_
           | simpleType DOT simpleType
    simpleType ::= IDENTIFIER
           | IDENTIFIER LT typeList GT
           | IDENTIFIER LT STAR GT
    typeList ::= type_
           | typeList COMMA type_
    functionBody ::= block
           | EQ expression

    propertyDeclaration ::= optPropMods VAL IDENTIFIER optType EQ expression
           | optPropMods VAR IDENTIFIER optType EQ expression
           | optPropMods VAL IDENTIFIER optType
           | optPropMods VAR IDENTIFIER optType
           | optPropMods CONST VAL IDENTIFIER optType EQ expression
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
           | LATEINIT

    classDeclaration ::= optClassMods CLASS IDENTIFIER optTypeParams optParamClause optSupertypes classBody
           | optClassMods CLASS IDENTIFIER optTypeParams optParamClause optSupertypes
           | optClassMods ENUM CLASS IDENTIFIER optTypeParams enumBody
    optParamClause ::= $empty
           | paramClause
    optSupertypes ::= $empty
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
           | INNER
           | ENUM
    objectDeclaration ::= optClassMods OBJECT IDENTIFIER optSupertypes optClassBody
           | COMPANION OBJECT optClassBody
           | COMPANION OBJECT IDENTIFIER optClassBody
    optClassBody ::= $empty
           | classBody
    classBody ::= LBRACE memberList RBRACE
    enumBody ::= LBRACE enumEntryList optMembers RBRACE
    enumEntryList ::= $empty
           | enumEntries
    enumEntries ::= enumEntry
           | enumEntries COMMA enumEntry
    enumEntry ::= IDENTIFIER
           | IDENTIFIER LPAREN optArgs RPAREN
    optMembers ::= $empty
           | SEMI memberList
           | memberList
    memberList ::= $empty
           | memberList member
    member ::= functionDeclaration
           | propertyDeclaration
           | classDeclaration
           | objectDeclaration
           | initBlock
    initBlock ::= INIT block

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
           | DO block WHILE LPAREN expression RPAREN
           | FOR LPAREN IDENTIFIER IN expression RPAREN block
           | FOR LPAREN LPAREN IDENTIFIER COMMA IDENTIFIER RPAREN IN expression RPAREN block
           | BREAK
           | CONTINUE
           | THROW expression
           | TRY block optCatch optFinally
           | expression
           | block
    thenPart ::= block
           | statement
    whenBlock ::= LBRACE whenEntryList RBRACE
    whenEntryList ::= $empty
           | whenEntryList whenEntry
    whenEntry ::= whenCondition ARROW thenPart
           | ELSE ARROW thenPart
    whenCondition ::= expression
           | expression COMMA expression
           | IN expression
           | IS type_
    optCatch ::= $empty
           | CATCH LPAREN IDENTIFIER COLON type_ RPAREN block
    optFinally ::= $empty
           | FINALLY block

    expression ::= assignment
    assignment ::= elvisExpr
           | elvisExpr EQ assignment
           | elvisExpr PLUSEQ assignment
           | elvisExpr MINUSEQ assignment
    elvisExpr ::= equality
           | equality ELVIS elvisExpr
    equality ::= relational
           | equality EQEQ relational
           | equality NOTEQ relational
           | equality EQEQEQ relational
           | equality NOTEQEQ relational
    relational ::= additive
           | relational LT additive
           | relational GT additive
           | relational LTEQ additive
           | relational GTEQ additive
           | relational IS type_
           | relational NOT_IS type_
           | relational IN additive
           | relational NOT_IN additive
    additive ::= multiplicative
           | additive PLUS multiplicative
           | additive MINUS multiplicative
    multiplicative ::= asExpr
           | multiplicative STAR asExpr
           | multiplicative SLASH asExpr
           | multiplicative PERCENT asExpr
    asExpr ::= postfix
           | postfix AS type_
           | postfix AS QUEST type_
    postfix ::= primary
           | postfix DOT IDENTIFIER
           | postfix DOT IDENTIFIER LPAREN optArgs RPAREN
           | postfix QUEST DOT IDENTIFIER
           | postfix LPAREN optArgs RPAREN
           | postfix LBRACK expression RBRACK
           | postfix PLUSPLUS
           | postfix MINUSMINUS
           | postfix NOT
    optArgs ::= $empty
           | args
    args ::= expression
           | args COMMA expression
           | namedArg
           | args COMMA namedArg
    namedArg ::= IDENTIFIER EQ expression
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
           | objectLiteral
           | lambdaLiteral
           | collectionLiteral
    objectLiteral ::= OBJECT optSupertypes classBody
    lambdaLiteral ::= LBRACE optLambdaParams ARROW stmtList RBRACE
           | LBRACE stmtList RBRACE
    optLambdaParams ::= $empty
           | lambdaParams
    lambdaParams ::= IDENTIFIER
           | IDENTIFIER COLON type_
           | lambdaParams COMMA IDENTIFIER
    collectionLiteral ::= LBRACK optArgs RBRACK

%End
