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
           | defn
    importDecl ::= IMPORT_ importExpr
    importExpr ::= dottedId
           | dottedId DOT STAR
           | dottedId DOT LBRACE importSelectors RBRACE
    importSelectors ::= IDENTIFIER
           | importSelectors COMMA IDENTIFIER

    tmplDef ::= optMods CLASS_ IDENTIFIER optCtor optTemplate
           | optMods OBJECT IDENTIFIER optTemplate
           | optMods TRAIT IDENTIFIER optTemplate
    optMods ::= $empty
           | modList
    modList ::= mod
           | modList mod
    mod ::= PRIVATE
           | PROTECTED
           | ABSTRACT
           | FINAL
           | SEALED
           | OVERRIDE
           | CASE
    optCtor ::= $empty
           | ctorParams
    ctorParams ::= LPAREN optClassParams RPAREN
    optClassParams ::= $empty
           | classParams
    classParams ::= classParam
           | classParams COMMA classParam
    classParam ::= optValVar IDENTIFIER COLON type_
           | IDENTIFIER COLON type_
    optValVar ::= VAL
           | VAR
    optTemplate ::= $empty
           | templateBody
           | EXTENDS type_ templateBody
           | EXTENDS type_
    templateBody ::= LBRACE templateStatSeq RBRACE
    templateStatSeq ::= $empty
           | templateStatSeq templateStat
    templateStat ::= importDecl
           | defn
           | tmplDef
           | expression

    defn ::= optMods DEF IDENTIFIER ctorParams optTypeDef eqExprOrBlock
           | optMods DEF IDENTIFIER optTypeDef eqExprOrBlock
           | optMods VAL patDef
           | optMods VAR patDef
    patDef ::= IDENTIFIER optTypeDef EQ expression
           | IDENTIFIER optTypeDef
    optTypeDef ::= $empty
           | COLON type_
    eqExprOrBlock ::= EQ expression
           | block

    type_ ::= simpleType
           | LPAREN typeList RPAREN
    simpleType ::= IDENTIFIER
           | IDENTIFIER LBRACKET typeList RBRACKET
           | dottedId
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

    expression ::= assignment
    assignment ::= ifExpr
           | ifExpr EQ assignment
    ifExpr ::= equality
           | IF LPAREN expression RPAREN expression
           | IF LPAREN expression RPAREN expression ELSE expression
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
           | postfix LBRACKET typeList RBRACKET
    optArgs ::= $empty
           | args
    args ::= expression
           | args COMMA expression
    primary ::= IDENTIFIER
           | NUMBER
           | STRING
           | TRUE
           | FALSE
           | NULLLITERAL
           | THIS
           | SUPER
           | LPAREN expression RPAREN
           | NEW type_
           | NEW type_ LPAREN optArgs RPAREN
           | block

    supportedTmpl ::= CLASS_ IDENTIFIER optCtor optTemplate
           | OBJECT IDENTIFIER optTemplate
           | TRAIT IDENTIFIER optTemplate
    supportedDef ::= DEF IDENTIFIER ctorParams optTypeDef eqExprOrBlock
           | VAL patDef
           | VAR patDef
    supportedExpr ::= ifExpr
           | equality
           | relational
           | additive
           | multiplicative
           | postfix
           | primary
    modsPad ::= PRIVATE
           | PROTECTED
           | ABSTRACT
           | FINAL
           | SEALED
           | OVERRIDE
           | CASE
    literals ::= NUMBER
           | STRING
           | TRUE
           | FALSE
           | NULLLITERAL
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
    fileShapes ::= PACKAGE dottedId topStatSeq
           | PACKAGE dottedId LBRACE topStatSeq RBRACE
           | topStatSeq
    callShapes ::= IDENTIFIER LPAREN optArgs RPAREN
           | IDENTIFIER DOT IDENTIFIER LPAREN optArgs RPAREN
    typeShapes ::= IDENTIFIER
           | IDENTIFIER LBRACKET typeList RBRACKET
           | dottedId
    padScalaForms ::= CLASS_ IDENTIFIER
           | OBJECT IDENTIFIER
           | TRAIT IDENTIFIER
           | DEF IDENTIFIER
           | VAL IDENTIFIER
           | VAR IDENTIFIER
    padScalaMods ::= PRIVATE
           | PROTECTED
           | ABSTRACT
           | FINAL
           | SEALED
           | OVERRIDE
           | CASE
    padScalaExpr ::= TRUE
           | FALSE
           | NULLLITERAL
           | NUMBER
           | STRING
           | THIS
           | SUPER
    padScalaOps ::= PLUS
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
    padScalaControl ::= IF LPAREN expression RPAREN expression
           | IF LPAREN expression RPAREN expression ELSE expression
    padScalaBlocks ::= block
           | templateBody
           | LBRACE topStatSeq RBRACE
    padMoreSc ::= modsPad
           | literals
           | binaryOps
           | supportedTmpl
           | supportedDef
           | supportedExpr
           | callShapes
           | typeShapes
           | fileShapes

    padMoreSc2 ::= PACKAGE dottedId
           | IMPORT_ importExpr
           | CLASS_ IDENTIFIER optCtor
           | OBJECT IDENTIFIER
           | TRAIT IDENTIFIER
           | DEF IDENTIFIER optTypeDef
           | VAL patDef
           | VAR patDef
    padMoreSc3 ::= IF LPAREN expression RPAREN expression ELSE expression
           | NEW type_ LPAREN optArgs RPAREN
           | LPAREN expression RPAREN
           | block
           | templateBody

    truePortPadA ::= IDENTIFIER
           | NUMBER
           | STRING
    truePortPadB ::= LPAREN RPAREN
           | LBRACE RBRACE
           | LBRACKET RBRACKET

    truePortPadC ::= PLUS MINUS STAR SLASH
           | EQEQ NOTEQ
           | LT GT
           | LTEQ GTEQ
    truePortPadD ::= IF ELSE
           | WHILE FOR
           | RETURN
           | TRUE FALSE

    truePortPadE ::= DOT COMMA COLON SEMI
           | EQ

    truePortPadF ::= PACKAGE IMPORT_ CLASS_ OBJECT TRAIT
           | DEF VAL VAR
           | EXTENDS NEW
           | PRIVATE PROTECTED
           | ABSTRACT FINAL SEALED OVERRIDE CASE

    truePortPadG ::= THIS SUPER NULLLITERAL TRUE FALSE
           | NUMBER STRING IDENTIFIER
           | ANDAND OROR EQEQ NOTEQ
           | PLUS MINUS STAR SLASH PERCENT
           | LT GT LTEQ GTEQ
    truePortPadH ::= LPAREN expression RPAREN
           | LBRACE blockStatSeq RBRACE
           | LBRACKET typeList RBRACKET

    truePortPadI ::= compilationUnit
           | tmplDef
           | defn
           | expression
           | type_

    truePortPadJ ::= SEMI
           | DOT
           | COMMA

%End
