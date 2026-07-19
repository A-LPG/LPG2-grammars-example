-- AUTO-GENERATED from antlr/grammars-v4 cypher by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=CypherParser
%options package=lpg.grammars.cypher
%options template=dtParserTemplateF.gi
%options import_terminals=CypherLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    script
%End

%Rules
    script ::= query opt_1

    query ::= regularQuery
           | standaloneCall

    regularQuery ::= singleQuery list_2

    singleQuery ::= singlePartQ
           | multiPartQ

    standaloneCall ::= CALL invocationName opt_3 opt_6

    returnSt ::= RETURN projectionBody

    withSt ::= WITH projectionBody opt_7

    skipSt ::= SKIP_W expression

    limitSt ::= LIMIT expression

    projectionBody ::= opt_8 projectionItems opt_9 opt_10 opt_11

    projectionItems ::= grp_12 list_14

    projectionItem ::= expression opt_16

    orderItem ::= expression opt_18

    orderSt ::= ORDER BY orderItem list_20

    singlePartQ ::= list_21 grp_22

    multiPartQ ::= list_25 list_28 singlePartQ

    matchSt ::= opt_29 MATCH patternWhere

    unwindSt ::= UNWIND expression AS symbol

    readingStatement ::= matchSt
           | unwindSt
           | queryCallSt

    updatingStatement ::= createSt
           | mergeSt
           | deleteSt
           | setSt
           | removeSt

    deleteSt ::= opt_30 DELETE expressionChain

    removeSt ::= REMOVE removeItem list_32

    removeItem ::= symbol nodeLabels
           | propertyExpression

    queryCallSt ::= CALL invocationName parenExpressionChain opt_34

    parenExpressionChain ::= LPAREN opt_35 RPAREN

    yieldItems ::= yieldItem list_37 opt_38

    yieldItem ::= opt_40 symbol

    mergeSt ::= MERGE patternPart list_41

    mergeAction ::= ON grp_42 setSt

    setSt ::= SET setItem list_44

    setItem ::= propertyExpression ASSIGN expression
           | symbol grp_45 expression
           | symbol nodeLabels

    nodeLabels ::= list_47

    createSt ::= CREATE pattern

    patternWhere ::= pattern opt_48

    where ::= WHERE expression

    pattern ::= patternPart list_50

    expression ::= xorExpression list_52

    xorExpression ::= andExpression list_54

    andExpression ::= notExpression list_56

    notExpression ::= opt_57 comparisonExpression

    comparisonExpression ::= addSubExpression list_59

    comparisonSigns ::= ASSIGN
           | LE
           | GE
           | GT
           | LT
           | NOT_EQUAL

    addSubExpression ::= multDivExpression list_62

    multDivExpression ::= powerExpression list_65

    powerExpression ::= unaryAddSubExpression list_67

    unaryAddSubExpression ::= opt_69 atomicExpression

    atomicExpression ::= propertyOrLabelExpression list_71

    listExpression ::= IN propertyOrLabelExpression
           | LBRACK grp_72 RBRACK

    stringExpression ::= stringExpPrefix propertyOrLabelExpression

    stringExpPrefix ::= STARTS WITH
           | ENDS WITH
           | CONTAINS

    nullExpression ::= IS opt_75 NULL_W

    propertyOrLabelExpression ::= propertyExpression opt_76

    propertyExpression ::= atom list_78

    patternPart ::= opt_80 patternElem

    patternElem ::= nodePattern list_82
           | LPAREN patternElem RPAREN opt_83

    patternElemChain ::= relationshipPattern nodePattern

    qppElemChain ::= LPAREN patternElem RPAREN qppQuantifier nodePattern

    qppQuantifier ::= LBRACE qppInt COMMA qppInt RBRACE
           | LBRACE qppInt RBRACE
           | LBRACE qppInt COMMA RBRACE
           | LBRACE COMMA qppInt RBRACE
           | LBRACE COMMA RBRACE
           | PLUS
           | MULT

    qppInt ::= DIGIT
           | ID

    properties ::= mapLit
           | parameter

    nodePattern ::= LPAREN opt_84 opt_85 opt_86 RPAREN

    atom ::= literal
           | parameter
           | caseExpression
           | countAll
           | listComprehension
           | patternComprehension
           | filterWith
           | relationshipsChainPattern
           | parenthesizedExpression
           | functionInvocation
           | symbol
           | subqueryExist

    lhs ::= symbol ASSIGN

    relationshipPattern ::= LT SUB opt_87 SUB opt_88
           | SUB opt_89 SUB opt_90

    relationDetail ::= LBRACK opt_91 opt_92 opt_93 opt_94 RBRACK

    relationshipTypes ::= COLON name list_97

    unionSt ::= UNION opt_98 singleQuery

    subqueryExist ::= EXISTS LBRACE grp_99 RBRACE

    invocationName ::= symbol list_101

    functionInvocation ::= invocationName LPAREN opt_102 opt_103 RPAREN

    parenthesizedExpression ::= LPAREN expression RPAREN

    filterWith ::= grp_104 LPAREN filterExpression RPAREN

    patternComprehension ::= LBRACK opt_105 relationshipsChainPattern opt_106 STICK expression RBRACK

    relationshipsChainPattern ::= nodePattern list_107

    listComprehension ::= LBRACK filterExpression opt_109 RBRACK

    filterExpression ::= symbol IN expression opt_110

    countAll ::= COUNT LPAREN MULT RPAREN

    expressionChain ::= expression list_112

    caseExpression ::= CASE opt_113 list_115 opt_117 END

    parameter ::= DOLLAR grp_118

    literal ::= boolLit
           | numLit
           | NULL_W
           | stringLit
           | charLit
           | listLit
           | mapLit

    rangeLit ::= MULT opt_119 opt_122

    boolLit ::= TRUE
           | FALSE

    numLit ::= DIGIT

    stringLit ::= STRING_LITERAL

    charLit ::= CHAR_LITERAL

    listLit ::= LBRACK opt_123 RBRACK

    mapLit ::= LBRACE opt_127 RBRACE

    mapPair ::= name COLON expression

    name ::= symbol
           | reservedWord

    symbol ::= ESC_LITERAL
           | ID
           | COUNT
           | FILTER
           | EXTRACT
           | ANY
           | NONE
           | SINGLE

    reservedWord ::= ALL
           | ASC
           | ASCENDING
           | BY
           | CREATE
           | DELETE
           | DESC
           | DESCENDING
           | DETACH
           | EXISTS
           | LIMIT
           | MATCH
           | MERGE
           | ON
           | OPTIONAL
           | ORDER
           | REMOVE
           | RETURN
           | SET
           | SKIP_W
           | WHERE
           | WITH
           | UNION
           | UNWIND
           | AND
           | AS
           | CONTAINS
           | DISTINCT
           | ENDS
           | IN
           | IS
           | NOT
           | OR
           | STARTS
           | XOR
           | FALSE
           | TRUE
           | NULL_W
           | CONSTRAINT
           | DO
           | FOR
           | REQUIRE
           | UNIQUE
           | CASE
           | WHEN
           | THEN
           | ELSE
           | END
           | MANDATORY
           | SCALAR
           | OF
           | ADD
           | DROP

    opt_1 ::= SEMI | $empty

    list_2 ::= $empty | list_2 unionSt

    opt_3 ::= parenExpressionChain | $empty

    grp_5 ::= MULT | yieldItems

    grp_4 ::= YIELD grp_5

    opt_6 ::= grp_4 | $empty

    opt_7 ::= where | $empty

    opt_8 ::= DISTINCT | $empty

    opt_9 ::= orderSt | $empty

    opt_10 ::= skipSt | $empty

    opt_11 ::= limitSt | $empty

    grp_12 ::= MULT | projectionItem

    seq_13 ::= COMMA projectionItem

    list_14 ::= $empty | list_14 seq_13

    seq_15 ::= AS symbol

    opt_16 ::= seq_15 | $empty

    grp_17 ::= ASCENDING | ASC | DESCENDING | DESC

    opt_18 ::= grp_17 | $empty

    seq_19 ::= COMMA orderItem

    list_20 ::= $empty | list_20 seq_19

    list_21 ::= $empty | list_21 readingStatement

    list_23 ::= updatingStatement | list_23 updatingStatement

    opt_24 ::= returnSt | $empty

    grp_22 ::= returnSt | list_23 opt_24

    list_25 ::= $empty | list_25 readingStatement

    list_26 ::= $empty | list_26 updatingStatement

    seq_27 ::= list_26 withSt

    list_28 ::= seq_27 | list_28 seq_27

    opt_29 ::= OPTIONAL | $empty

    opt_30 ::= DETACH | $empty

    seq_31 ::= COMMA removeItem

    list_32 ::= $empty | list_32 seq_31

    seq_33 ::= YIELD yieldItems

    opt_34 ::= seq_33 | $empty

    opt_35 ::= expressionChain | $empty

    seq_36 ::= COMMA yieldItem

    list_37 ::= $empty | list_37 seq_36

    opt_38 ::= where | $empty

    seq_39 ::= symbol AS

    opt_40 ::= seq_39 | $empty

    list_41 ::= $empty | list_41 mergeAction

    grp_42 ::= MATCH | CREATE

    seq_43 ::= COMMA setItem

    list_44 ::= $empty | list_44 seq_43

    grp_45 ::= ASSIGN | ADD_ASSIGN

    seq_46 ::= COLON name

    list_47 ::= seq_46 | list_47 seq_46

    opt_48 ::= where | $empty

    seq_49 ::= COMMA patternPart

    list_50 ::= $empty | list_50 seq_49

    seq_51 ::= OR xorExpression

    list_52 ::= $empty | list_52 seq_51

    seq_53 ::= XOR andExpression

    list_54 ::= $empty | list_54 seq_53

    seq_55 ::= AND notExpression

    list_56 ::= $empty | list_56 seq_55

    opt_57 ::= NOT | $empty

    seq_58 ::= comparisonSigns addSubExpression

    list_59 ::= $empty | list_59 seq_58

    grp_61 ::= PLUS | SUB

    grp_60 ::= grp_61 multDivExpression

    list_62 ::= $empty | list_62 grp_60

    grp_64 ::= MULT | DIV | MOD

    grp_63 ::= grp_64 powerExpression

    list_65 ::= $empty | list_65 grp_63

    seq_66 ::= CARET unaryAddSubExpression

    list_67 ::= $empty | list_67 seq_66

    grp_68 ::= PLUS | SUB

    opt_69 ::= grp_68 | $empty

    grp_70 ::= stringExpression | listExpression | nullExpression

    list_71 ::= $empty | list_71 grp_70

    opt_73 ::= expression | $empty

    opt_74 ::= expression | $empty

    grp_72 ::= opt_73 RANGE opt_74 | expression

    opt_75 ::= NOT | $empty

    opt_76 ::= nodeLabels | $empty

    seq_77 ::= DOT name

    list_78 ::= $empty | list_78 seq_77

    seq_79 ::= symbol ASSIGN

    opt_80 ::= seq_79 | $empty

    grp_81 ::= patternElemChain | qppElemChain

    list_82 ::= $empty | list_82 grp_81

    opt_83 ::= qppQuantifier | $empty

    opt_84 ::= symbol | $empty

    opt_85 ::= nodeLabels | $empty

    opt_86 ::= properties | $empty

    opt_87 ::= relationDetail | $empty

    opt_88 ::= GT | $empty

    opt_89 ::= relationDetail | $empty

    opt_90 ::= GT | $empty

    opt_91 ::= symbol | $empty

    opt_92 ::= relationshipTypes | $empty

    opt_93 ::= rangeLit | $empty

    opt_94 ::= properties | $empty

    opt_95 ::= COLON | $empty

    seq_96 ::= STICK opt_95 name

    list_97 ::= $empty | list_97 seq_96

    opt_98 ::= ALL | $empty

    grp_99 ::= regularQuery | patternWhere

    seq_100 ::= DOT symbol

    list_101 ::= $empty | list_101 seq_100

    opt_102 ::= DISTINCT | $empty

    opt_103 ::= expressionChain | $empty

    grp_104 ::= ALL | ANY | NONE | SINGLE

    opt_105 ::= lhs | $empty

    opt_106 ::= where | $empty

    list_107 ::= patternElemChain | list_107 patternElemChain

    seq_108 ::= STICK expression

    opt_109 ::= seq_108 | $empty

    opt_110 ::= where | $empty

    seq_111 ::= COMMA expression

    list_112 ::= $empty | list_112 seq_111

    opt_113 ::= expression | $empty

    seq_114 ::= WHEN expression THEN expression

    list_115 ::= seq_114 | list_115 seq_114

    seq_116 ::= ELSE expression

    opt_117 ::= seq_116 | $empty

    grp_118 ::= symbol | numLit

    opt_119 ::= numLit | $empty

    opt_120 ::= numLit | $empty

    seq_121 ::= RANGE opt_120

    opt_122 ::= seq_121 | $empty

    opt_123 ::= expressionChain | $empty

    seq_124 ::= COMMA mapPair

    list_125 ::= $empty | list_125 seq_124

    seq_126 ::= mapPair list_125

    opt_127 ::= seq_126 | $empty

    -- Token aliases (lexer exports -> ANTLR parser names)
    ID ::= IDENTIFIER
    DIGIT ::= NUMBER
    STRING_LITERAL ::= STRING
    LBRACK ::= LBRACKET
    RBRACK ::= RBRACKET
    SUB ::= MINUS
    MULT ::= STAR
    DIV ::= SLASH
    ASSIGN ::= EQ

%End
