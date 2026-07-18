-- AUTO-GENERATED from antlr/grammars-v4 sparql by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=SparqlParser
%options package=lpg.grammars.sparql
%options template=dtParserTemplateF.gi
%options import_terminals=SparqlLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    query
%End

%Rules
    query ::= prologue grp_1

    prologue ::= opt_2 list_3

    baseDecl ::= BASE IRI_REF

    prefixDecl ::= PREFIX PNAME_NS IRI_REF

    selectQuery ::= SELECT opt_5 grp_6 list_8 whereClause solutionModifier

    constructQuery ::= CONSTRUCT constructTemplate list_9 whereClause solutionModifier

    describeQuery ::= DESCRIBE grp_10 list_12 opt_13 solutionModifier

    askQuery ::= ASK list_14 whereClause

    datasetClause ::= FROM grp_15

    defaultGraphClause ::= sourceSelector

    namedGraphClause ::= NAMED sourceSelector

    sourceSelector ::= iriRef

    whereClause ::= opt_16 groupGraphPattern

    solutionModifier ::= opt_17 opt_18

    limitOffsetClauses ::= limitClause opt_19
           | offsetClause opt_20

    orderClause ::= ORDER BY list_21

    orderCondition ::= grp_22 brackettedExpression
           | constraint
           | var_

    limitClause ::= LIMIT INTEGER

    offsetClause ::= OFFSET INTEGER

    groupGraphPattern ::= LBRACE opt_23 list_28 RBRACE

    triplesBlock ::= triplesSameSubject opt_31

    graphPatternNotTriples ::= optionalGraphPattern
           | groupOrUnionGraphPattern
           | graphGraphPattern

    optionalGraphPattern ::= OPTIONAL groupGraphPattern

    graphGraphPattern ::= GRAPH varOrIRIref groupGraphPattern

    groupOrUnionGraphPattern ::= groupGraphPattern list_33

    filter_ ::= FILTER constraint

    constraint ::= brackettedExpression
           | builtInCall
           | functionCall

    functionCall ::= iriRef argList

    argList ::= NIL
           | LPAREN expression list_35 RPAREN

    constructTemplate ::= LBRACE opt_36 RBRACE

    constructTriples ::= triplesSameSubject opt_39

    triplesSameSubject ::= varOrTerm propertyListNotEmpty
           | triplesNode propertyList

    propertyListNotEmpty ::= verb objectList list_43

    propertyList ::= opt_44

    objectList ::= object_ list_46

    object_ ::= graphNode

    verb ::= varOrIRIref
           | A

    triplesNode ::= collection
           | blankNodePropertyList

    blankNodePropertyList ::= LBRACKET propertyListNotEmpty RBRACKET

    collection ::= LPAREN list_47 RPAREN

    graphNode ::= varOrTerm
           | triplesNode

    varOrTerm ::= var_
           | graphTerm

    varOrIRIref ::= var_
           | iriRef

    var_ ::= VAR1
           | VAR2

    graphTerm ::= iriRef
           | rdfLiteral
           | numericLiteral
           | booleanLiteral
           | blankNode
           | NIL

    expression ::= conditionalOrExpression

    conditionalOrExpression ::= conditionalAndExpression list_49

    conditionalAndExpression ::= valueLogical list_51

    valueLogical ::= relationalExpression

    relationalExpression ::= numericExpression opt_54

    numericExpression ::= additiveExpression

    additiveExpression ::= multiplicativeExpression list_57

    multiplicativeExpression ::= unaryExpression list_60

    unaryExpression ::= opt_62 primaryExpression

    primaryExpression ::= brackettedExpression
           | builtInCall
           | iriRefOrFunction
           | rdfLiteral
           | numericLiteral
           | booleanLiteral
           | var_

    brackettedExpression ::= LPAREN expression RPAREN

    builtInCall ::= STR LPAREN expression RPAREN
           | LANG LPAREN expression RPAREN
           | LANGMATCHES LPAREN expression COMMA expression RPAREN
           | DATATYPE LPAREN expression RPAREN
           | BOUND LPAREN var_ RPAREN
           | SAME_TERM LPAREN expression COMMA expression RPAREN
           | IS_IRI LPAREN expression RPAREN
           | IS_URI LPAREN expression RPAREN
           | IS_BLANK LPAREN expression RPAREN
           | IS_LITERAL LPAREN expression RPAREN
           | regexExpression

    regexExpression ::= REGEX LPAREN expression COMMA expression opt_64 RPAREN

    iriRefOrFunction ::= iriRef opt_65

    rdfLiteral ::= string_ opt_67

    numericLiteral ::= numericLiteralUnsigned
           | numericLiteralPositive
           | numericLiteralNegative

    numericLiteralUnsigned ::= INTEGER
           | DECIMAL
           | DOUBLE

    numericLiteralPositive ::= INTEGER_POSITIVE
           | DECIMAL_POSITIVE
           | DOUBLE_POSITIVE

    numericLiteralNegative ::= INTEGER_NEGATIVE
           | DECIMAL_NEGATIVE
           | DOUBLE_NEGATIVE

    booleanLiteral ::= TRUE
           | FALSE

    string_ ::= STRING_LITERAL1
           | STRING_LITERAL2

    iriRef ::= IRI_REF
           | prefixedName

    prefixedName ::= PNAME_LN
           | PNAME_NS

    blankNode ::= BLANK_NODE_LABEL
           | ANON

    grp_1 ::= selectQuery | constructQuery | describeQuery | askQuery

    opt_2 ::= baseDecl | $empty

    list_3 ::= $empty | list_3 prefixDecl

    grp_4 ::= DISTINCT | REDUCED

    opt_5 ::= grp_4 | $empty

    list_7 ::= var_ | list_7 var_

    grp_6 ::= list_7 | STAR

    list_8 ::= $empty | list_8 datasetClause

    list_9 ::= $empty | list_9 datasetClause

    list_11 ::= varOrIRIref | list_11 varOrIRIref

    grp_10 ::= list_11 | STAR

    list_12 ::= $empty | list_12 datasetClause

    opt_13 ::= whereClause | $empty

    list_14 ::= $empty | list_14 datasetClause

    grp_15 ::= defaultGraphClause | namedGraphClause

    opt_16 ::= WHERE | $empty

    opt_17 ::= orderClause | $empty

    opt_18 ::= limitOffsetClauses | $empty

    opt_19 ::= offsetClause | $empty

    opt_20 ::= limitClause | $empty

    list_21 ::= orderCondition | list_21 orderCondition

    grp_22 ::= ASC | DESC

    opt_23 ::= triplesBlock | $empty

    grp_25 ::= graphPatternNotTriples | filter_

    opt_26 ::= DOT | $empty

    opt_27 ::= triplesBlock | $empty

    grp_24 ::= grp_25 opt_26 opt_27

    list_28 ::= $empty | list_28 grp_24

    opt_29 ::= triplesBlock | $empty

    seq_30 ::= DOT opt_29

    opt_31 ::= seq_30 | $empty

    seq_32 ::= UNION groupGraphPattern

    list_33 ::= $empty | list_33 seq_32

    seq_34 ::= COMMA expression

    list_35 ::= $empty | list_35 seq_34

    opt_36 ::= constructTriples | $empty

    opt_37 ::= constructTriples | $empty

    seq_38 ::= DOT opt_37

    opt_39 ::= seq_38 | $empty

    seq_40 ::= verb objectList

    opt_41 ::= seq_40 | $empty

    seq_42 ::= SEMI opt_41

    list_43 ::= $empty | list_43 seq_42

    opt_44 ::= propertyListNotEmpty | $empty

    seq_45 ::= COMMA object_

    list_46 ::= $empty | list_46 seq_45

    list_47 ::= graphNode | list_47 graphNode

    grp_48 ::= OROR conditionalAndExpression

    list_49 ::= $empty | list_49 grp_48

    seq_50 ::= ANDAND valueLogical

    list_51 ::= $empty | list_51 seq_50

    grp_53 ::= EQ | NOTEQ | LT | GT | LTEQ | GTEQ

    grp_52 ::= grp_53 numericExpression

    opt_54 ::= grp_52 | $empty

    grp_56 ::= PLUS | MINUS

    grp_55 ::= grp_56 multiplicativeExpression | numericLiteralPositive | numericLiteralNegative

    list_57 ::= $empty | list_57 grp_55

    grp_59 ::= STAR | SLASH

    grp_58 ::= grp_59 unaryExpression

    list_60 ::= $empty | list_60 grp_58

    grp_61 ::= BANG | PLUS | MINUS

    opt_62 ::= grp_61 | $empty

    seq_63 ::= COMMA expression

    opt_64 ::= seq_63 | $empty

    opt_65 ::= argList | $empty

    grp_66 ::= LANGTAG | OP_21370 iriRef

    opt_67 ::= grp_66 | $empty

%End
