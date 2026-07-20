-- AUTO-GENERATED from antlr/grammars-v4 bicep by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=BicepParser
%options package=lpg.grammars.bicep
%options template=dtParserTemplateF.gi
%options import_terminals=BicepLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    program ::= list_1

    statement ::= targetScopeDecl
           | importDecl
           | metadataDecl
           | parameterDecl
           | typeDecl
           | variableDecl
           | resourceDecl
           | moduleDecl
           | outputDecl
           | NL

    targetScopeDecl ::= TARGET_SCOPE ASSIGN expression

    importDecl ::= list_2 IMPORT interpString opt_3 opt_4 NL

    importWithClause ::= WITH object

    importAsClause ::= AS identifier

    metadataDecl ::= METADATA identifier ASSIGN expression NL

    parameterDecl ::= list_5 PARAM identifier grp_6 NL

    parameterDefaultValue ::= ASSIGN expression

    typeDecl ::= list_9 TYPE identifier ASSIGN typeExpression NL

    variableDecl ::= list_10 VAR identifier ASSIGN expression NL

    resourceDecl ::= list_11 RESOURCE identifier interpString opt_12 ASSIGN grp_13 NL

    moduleDecl ::= list_14 MODULE identifier interpString ASSIGN grp_15 NL

    outputDecl ::= list_16 OUTPUT identifier grp_17 ASSIGN expression NL

    decorator ::= AT decoratorExpression NL

    expression ::= binaryExpression opt_19

    binaryExpression ::= binaryExpression grp_20 equalityExpression
           | equalityExpression

    equalityExpression ::= equalityExpression grp_21 relationalExpression
           | relationalExpression

    relationalExpression ::= relationalExpression grp_22 additiveExpression
           | additiveExpression

    additiveExpression ::= additiveExpression grp_23 multiplicativeExpression
           | multiplicativeExpression

    multiplicativeExpression ::= multiplicativeExpression grp_24 unaryExpression
           | unaryExpression

    unaryExpression ::= memberExpression
           | unaryOperator unaryExpression

    unaryOperator ::= NOT
           | MIN
           | ADD

    memberExpression ::= memberExpression OBRACK expression CBRACK
           | memberExpression DOT identifier
           | memberExpression DOT functionCall
           | memberExpression COL identifier
           | primaryExpression

    primaryExpression ::= functionCall
           | literalValue
           | interpString
           | MULTILINE_STRING
           | array
           | forExpression
           | object
           | parenthesizedExpression
           | lambdaExpression

    decoratorExpression ::= functionCall
           | memberExpression DOT functionCall

    functionCall ::= identifier OPAR opt_25 CPAR

    argumentList ::= expression list_27

    parenthesizedExpression ::= OPAR expression CPAR

    lambdaExpression ::= grp_28 ARROW expression

    ifCondition ::= IF parenthesizedExpression object

    forExpression ::= OBRACK FOR grp_30 IN expression COL forBody CBRACK

    forVariableBlock ::= OPAR identifier COMMA identifier CPAR

    forBody ::= expression
           | ifCondition

    interpString ::= STRING_LEFT_PIECE list_32 expression STRING_RIGHT_PIECE
           | STRING_COMPLETE

    literalValue ::= NUMBER
           | TRUE
           | FALSE
           | NULL
           | identifier

    object ::= OBRACE opt_38 CBRACE

    objectProperty ::= grp_39 COL expression

    array ::= OBRACK opt_43 CBRACK

    arrayItem ::= expression list_44

    typeExpression ::= singularTypeExpression list_46

    singularTypeExpression ::= primaryTypeExpression
           | singularTypeExpression OBRACK CBRACK
           | parenthesizedTypeExpression

    primaryTypeExpression ::= ambientTypeReference
           | identifier
           | opt_47 literalValue
           | STRING_COMPLETE
           | MULTILINE_STRING
           | objectType
           | tupleType

    ambientTypeReference ::= STRING
           | INT
           | ARRAY
           | OBJECT

    objectType ::= OBRACE opt_54 CBRACE

    objectTypeProperty ::= list_55 grp_56 COL typeExpression

    objectTypeAdditionalPropertiesMatcher ::= list_57 STAR_COL typeExpression

    tupleType ::= OBRACK opt_61 CBRACK

    tupleItem ::= list_62 typeExpression list_63

    parenthesizedTypeExpression ::= OPAR typeExpression CPAR

    identifier ::= IDENTIFIER
           | STRING_T | INT_T | BOOL_T | OBJECT_T | ARRAY_T
           | IMPORT
           | WITH
           | AS
           | METADATA
           | PARAM
           | RESOURCE
           | MODULE
           | OUTPUT
           | EXISTING
           | TYPE
           | VAR
           | IF
           | FOR
           | IN
           | TRUE
           | FALSE
           | NULL
           | TARGET_SCOPE
           | STRING
           | INT
           | BOOL
           | ARRAY
           | OBJECT

    list_1 ::= $empty | list_1 statement

    list_2 ::= $empty | list_2 decorator

    opt_3 ::= importWithClause | $empty

    opt_4 ::= importAsClause | $empty

    list_5 ::= $empty | list_5 decorator

    opt_7 ::= parameterDefaultValue | $empty

    opt_8 ::= parameterDefaultValue | $empty

    grp_6 ::= typeExpression opt_7 | RESOURCE interpString opt_8

    list_9 ::= $empty | list_9 decorator

    list_10 ::= $empty | list_10 decorator

    list_11 ::= $empty | list_11 decorator

    opt_12 ::= EXISTING | $empty

    grp_13 ::= ifCondition | object | forExpression

    list_14 ::= $empty | list_14 decorator

    grp_15 ::= ifCondition | object | forExpression

    list_16 ::= $empty | list_16 decorator

    grp_17 ::= identifier | RESOURCE interpString

    seq_18 ::= QMARK expression COL expression

    opt_19 ::= seq_18 | $empty

    grp_20 ::= AND | OR | COALESCE

    grp_21 ::= EQ | NEQ

    grp_22 ::= GT | GTE | LT | LTE

    grp_23 ::= ADD | MIN

    grp_24 ::= MUL | DIV | MOD

    opt_25 ::= argumentList | $empty

    seq_26 ::= COMMA expression

    list_27 ::= $empty | list_27 seq_26

    opt_29 ::= argumentList | $empty

    grp_28 ::= OPAR opt_29 CPAR | identifier

    grp_30 ::= identifier | forVariableBlock

    seq_31 ::= expression STRING_MIDDLE_PIECE

    list_32 ::= $empty | list_32 seq_31

    list_33 ::= NL | list_33 NL

    list_34 ::= NL | list_34 NL

    seq_35 ::= objectProperty list_34

    list_36 ::= $empty | list_36 seq_35

    seq_37 ::= list_33 list_36

    opt_38 ::= seq_37 | $empty

    grp_39 ::= identifier | interpString

    list_40 ::= NL | list_40 NL

    list_41 ::= $empty | list_41 arrayItem

    seq_42 ::= list_40 list_41

    opt_43 ::= seq_42 | $empty

    list_44 ::= NL | list_44 NL

    seq_45 ::= PIPE singularTypeExpression

    list_46 ::= $empty | list_46 seq_45

    opt_47 ::= unaryOperator | $empty

    list_49 ::= NL | list_49 NL

    grp_51 ::= objectTypeProperty | objectTypeAdditionalPropertiesMatcher

    list_52 ::= NL | list_52 NL

    grp_50 ::= grp_51 list_52

    list_53 ::= $empty | list_53 grp_50

    grp_48 ::= list_49 list_53

    opt_54 ::= grp_48 | $empty

    list_55 ::= $empty | list_55 decorator

    grp_56 ::= identifier | STRING_COMPLETE | MULTILINE_STRING

    list_57 ::= $empty | list_57 decorator

    list_58 ::= NL | list_58 NL

    list_59 ::= $empty | list_59 tupleItem

    seq_60 ::= list_58 list_59

    opt_61 ::= seq_60 | $empty

    list_62 ::= $empty | list_62 decorator

    list_63 ::= NL | list_63 NL

    ASSIGN ::= EQ
    OPAR ::= LPAREN
    CPAR ::= RPAREN
    OBRACE ::= LBRACE
    CBRACE ::= RBRACE
    OBRACK ::= LBRACKET
    CBRACK ::= RBRACKET
    NULL ::= NULLLITERAL

%End
