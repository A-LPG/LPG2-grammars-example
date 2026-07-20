-- Scala 2 parser (LPG) — language_subset from grammars-v4 scala/scala2/Scala.g4
-- Full antlr2lpg port is LALR-blocked (327 RR / 574 SR). This curated subset
-- covers object/class/def/val/if and simple expressions used by harness examples.
-- real_g4_port of core compilationUnit / tmplDef / funDef shape (not token-stream soup).

%Options la=3
%Options fp=Scala2Parser
%options package=lpg.grammars.scala.scala2
%options template=dtParserTemplateF.gi
%options import_terminals=Scala2Lexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    compilationUnit
%End

%Rules
    compilationUnit ::= topStat_list

    topStat_list ::= topStat
           | topStat_list topStat

    topStat ::= OBJECT objectDef
           | CLASS classDef
           | CASE CLASS classDef
           | TRAIT traitDef
           | IMPORT importExpr
           | PACKAGE qualId

    objectDef ::= Id extends_opt templateBody_opt

    classDef ::= Id classParamClauses_opt extends_opt templateBody_opt

    traitDef ::= Id extends_opt templateBody_opt

    extends_opt ::= %Empty
           | EXTENDS simpleType

    classParamClauses_opt ::= %Empty
           | classParamClauses

    classParamClauses ::= LPAREN classParam_list_opt RPAREN

    classParam_list_opt ::= %Empty
           | classParam_list

    classParam_list ::= classParam
           | classParam_list COMMA classParam

    classParam ::= VAL Id COLON type_
           | VAR Id COLON type_
           | Id COLON type_

    templateBody_opt ::= %Empty
           | templateBody

    templateBody ::= LBRACE templateStat_list_opt RBRACE

    templateStat_list_opt ::= %Empty
           | templateStat_list

    templateStat_list ::= templateStat
           | templateStat_list templateStat

    templateStat ::= DEF funDef
           | VAL patDef
           | VAR patDef
           | TYPE typeDef
           | OVERRIDE DEF funDef
           | tmplDef_inner
           | expr

    tmplDef_inner ::= OBJECT objectDef
           | CLASS classDef
           | CASE CLASS classDef
           | TRAIT traitDef

    funDef ::= funSig type_ascription_opt EQ expr
           | funSig type_ascription_opt block

    funSig ::= Id paramClauses_opt

    paramClauses_opt ::= %Empty
           | paramClauses

    paramClauses ::= LPAREN param_list_opt RPAREN

    param_list_opt ::= %Empty
           | param_list

    param_list ::= param
           | param_list COMMA param

    param ::= Id COLON type_

    type_ascription_opt ::= %Empty
           | COLON type_

    patDef ::= Id type_ascription_opt EQ expr

    typeDef ::= Id EQ type_

    importExpr ::= qualId
           | qualId DOT UNDERSCORE
           | qualId DOT LBRACE import_selectors RBRACE

    import_selectors ::= Id
           | import_selectors COMMA Id

    qualId ::= Id
           | qualId DOT Id

    type_ ::= simpleType
           | type_ FATARROW type_

    simpleType ::= stableId typeArgs_opt
           | LPAREN types_opt RPAREN

    typeArgs_opt ::= %Empty
           | typeArgs

    typeArgs ::= LBRACKET types RBRACKET

    types_opt ::= %Empty
           | types

    types ::= type_
           | types COMMA type_

    stableId ::= Id
           | stableId DOT Id
           | THIS
           | SUPER DOT Id

    -- expressions (g4 expr1 / simpleExpr subset)
    expr ::= IF LPAREN expr RPAREN expr else_opt
           | WHILE LPAREN expr RPAREN expr
           | DO expr WHILE LPAREN expr RPAREN
           | TRY expr catch_opt finally_opt
           | THROW expr
           | RETURN expr_opt
           | NEW simpleType argumentExprs_opt
           | block
           | assignment

    else_opt ::= %Empty
           | ELSE expr

    catch_opt ::= %Empty
           | CATCH block

    finally_opt ::= %Empty
           | FINALLY block

    expr_opt ::= %Empty
           | expr

    argumentExprs_opt ::= %Empty
           | argumentExprs

    block ::= LBRACE blockStat_list_opt RBRACE

    blockStat_list_opt ::= %Empty
           | blockStat_list

    blockStat_list ::= blockStat
           | blockStat_list blockStat

    blockStat ::= DEF funDef
           | VAL patDef
           | VAR patDef
           | TYPE typeDef
           | expr

    assignment ::= infixExpr
           | infixExpr EQ assignment

    infixExpr ::= prefixExpr
           | infixExpr infixOp prefixExpr

    infixOp ::= PLUS
           | MINUS
           | STAR
           | SLASH
           | PERCENT
           | LT
           | GT
           | LTEQ
           | GTEQ
           | EQEQ
           | NOTEQ
           | ANDAND
           | OROR
           | Id

    prefixExpr ::= postfixExpr
           | PLUS postfixExpr
           | MINUS postfixExpr
           | BANG postfixExpr
           | TILDE postfixExpr

    postfixExpr ::= primary
           | postfixExpr argumentExprs
           | postfixExpr DOT Id
           | postfixExpr typeArgs
           | postfixExpr MATCH block

    argumentExprs ::= LPAREN exprs_opt RPAREN

    exprs_opt ::= %Empty
           | exprs

    exprs ::= expr
           | exprs COMMA expr

    primary ::= Id
           | IntegerLiteral
           | FloatingPointLiteral
           | StringLiteral
           | CharacterLiteral
           | BooleanLiteral
           | NULL_LITERAL
           | THIS
           | LPAREN expr RPAREN
           | LPAREN exprs RPAREN
           | block
%End

