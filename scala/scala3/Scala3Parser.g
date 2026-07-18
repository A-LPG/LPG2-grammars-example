-- Structural language_subset from grammars-v4 Scala 3 (not token-stream soup).

%Options la=2
%Options fp=Scala3Parser
%options package=lpg.grammars.scala.scala3
%options template=dtParserTemplateF.gi
%options import_terminals=Scala3Lexer.gi
%options automatic_ast=none

%Eof
    EOF_TOKEN
%End

%Start
    compilationUnit
%End

%Rules

    compilationUnit ::= optPackages topStatSeq
    optPackages ::= $empty
           | packageClause
           | packageClause optPackages
    packageClause ::= PACKAGE dottedId
           | PACKAGE dottedId LBRACE topStatSeq RBRACE
    dottedId ::= IDENTIFIER
           | dottedId DOT IDENTIFIER

    topStatSeq ::= $empty
           | topStatSeq topStat
    topStat ::= importDecl
           | tmplDef
           | packingDef
    packingDef ::= PACKAGE OBJECT IDENTIFIER templateBody
    importDecl ::= IMPORT importExpr
    importExpr ::= dottedId
           | dottedId DOT STAR
           | dottedId DOT LBRACE importSelectors RBRACE
    importSelectors ::= IDENTIFIER
           | importSelectors COMMA IDENTIFIER

    tmplDef ::= optMods CLASS IDENTIFIER optTypeParams optCtor optTemplate
           | optMods OBJECT IDENTIFIER optTemplate
           | optMods TRAIT IDENTIFIER optTypeParams optTemplate
           | optMods ENUM IDENTIFIER optTypeParams LBRACE enumCases RBRACE
    optMods ::= $empty
           | modList
    modList ::= mod
           | modList mod
    mod ::= PRIVATE
           | PROTECTED
           | ABSTRACT
           | FINAL
           | SEALED
           | IMPLICIT
           | LAZY
           | OVERRIDE
           | INLINE
           | OPAQUE
           | OPEN
           | CASE
    optTypeParams ::= $empty
           | LBRACK typeParamList RBRACK
    typeParamList ::= IDENTIFIER
           | typeParamList COMMA IDENTIFIER
    optCtor ::= $empty
           | ctorParams
    ctorParams ::= LPAREN optParams RPAREN
           | LPAREN optParams RPAREN ctorParams
    optTemplate ::= $empty
           | templateBody
           | EXTENDS type_ templateBody
           | EXTENDS type_
    templateBody ::= LBRACE selfTypeOpt templateStatSeq RBRACE
    selfTypeOpt ::= $empty
           | IDENTIFIER ARROW
           | IDENTIFIER COLON type_ ARROW
    templateStatSeq ::= $empty
           | templateStatSeq templateStat
    templateStat ::= importDecl
           | defn
           | tmplDef
           | expression
    enumCases ::= $empty
           | enumCases enumCase
    enumCase ::= CASE IDENTIFIER
           | CASE IDENTIFIER ctorParams

    defn ::= optMods DEF IDENTIFIER optTypeParams ctorParams optTypeDef eqExprOrBlock
           | optMods DEF IDENTIFIER optTypeParams optTypeDef eqExprOrBlock
           | optMods VAL patDef
           | optMods VAR patDef
           | optMods TYPE IDENTIFIER EQ type_
           | optMods GIVEN IDENTIFIER COLON type_ eqExprOrBlock
    patDef ::= IDENTIFIER optTypeDef EQ expression
           | IDENTIFIER optTypeDef
    optTypeDef ::= $empty
           | COLON type_
    eqExprOrBlock ::= EQ expression
           | block

    type_ ::= simpleType
           | simpleType ARROW type_
           | LPAREN typeList RPAREN ARROW type_
           | simpleType WITH simpleType
    simpleType ::= IDENTIFIER
           | IDENTIFIER LBRACK typeList RBRACK
           | dottedId
           | simpleType DOT IDENTIFIER
    typeList ::= type_
           | typeList COMMA type_

    optParams ::= $empty
           | params
    params ::= param
           | params COMMA param
    param ::= IDENTIFIER COLON type_
           | IDENTIFIER COLON type_ EQ expression

    block ::= LBRACE blockStatSeq RBRACE
    blockStatSeq ::= $empty
           | blockStatSeq blockStat
    blockStat ::= defn
           | importDecl
           | expression
           | RETURN expression

    expression ::= assignment
    assignment ::= ifExpr
           | ifExpr EQ assignment
    ifExpr ::= matchExpr
           | IF LPAREN expression RPAREN expression
           | IF LPAREN expression RPAREN expression ELSE expression
    matchExpr ::= equality
           | equality MATCH LBRACE caseClauses RBRACE
    caseClauses ::= caseClause
           | caseClauses caseClause
    caseClause ::= CASE pattern ARROW expression
           | CASE pattern IF expression ARROW expression
    pattern ::= IDENTIFIER
           | NUMBER
           | STRING
           | UNDERSCORE
           | IDENTIFIER LPAREN optPatterns RPAREN
    optPatterns ::= $empty
           | patterns
    patterns ::= pattern
           | patterns COMMA pattern
    equality ::= relational
           | equality EQEQ relational
           | equality NOTEQ relational
    relational ::= additive
           | relational LT additive
           | relational GT additive
           | relational LTEQ additive
           | relational GTEQ additive
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
           | postfix LBRACK typeList RBRACK
           | postfix MATCH LBRACE caseClauses RBRACE
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
           | NEW type_ optArgsBlock
           | lambdaExpr
           | block
    optArgsBlock ::= $empty
           | LPAREN optArgs RPAREN
    lambdaExpr ::= LPAREN optParams RPAREN ARROW expression
           | IDENTIFIER ARROW expression

%End
