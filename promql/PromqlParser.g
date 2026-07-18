-- AUTO-GENERATED from antlr/grammars-v4 promql by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=PromqlParser
%options package=lpg.grammars.promql
%options template=dtParserTemplateF.gi
%options import_terminals=PromqlLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    expression
%End

%Rules
    expression ::= vectorOperation
           | IDENTIFIER
           | NUMBER

    vectorOperation ::= vectorOperation powOp vectorOperation
           | vectorOperation subqueryOp
           | unaryOp vectorOperation
           | vectorOperation multOp vectorOperation
           | vectorOperation addOp vectorOperation
           | vectorOperation compareOp vectorOperation
           | vectorOperation andUnlessOp vectorOperation
           | vectorOperation orOp vectorOperation
           | vectorOperation vectorMatchOp vectorOperation
           | vectorOperation AT vectorOperation
           | vector

    unaryOp ::= grp_1

    powOp ::= STARSTAR opt_2

    multOp ::= grp_3 opt_4

    addOp ::= grp_5 opt_6

    compareOp ::= grp_7 opt_8 opt_9

    andUnlessOp ::= grp_10 opt_11

    orOp ::= OR opt_12

    vectorMatchOp ::= grp_13 opt_14

    subqueryOp ::= SUBQUERY_RANGE opt_15

    offsetOp ::= OFFSET DURATION

    vector ::= function_
           | aggregation
           | instantSelector
           | matrixSelector
           | offset
           | literal
           | parens

    parens ::= LEFT_PAREN vectorOperation RIGHT_PAREN

    instantSelector ::= IDENTIFIER opt_18
           | LEFT_BRACE labelMatcherList RIGHT_BRACE

    labelMatcher ::= labelName labelMatcherOperator STRING

    labelMatcherOperator ::= EQ
           | NE
           | RE
           | NRE

    labelMatcherList ::= labelMatcher list_20 opt_21

    matrixSelector ::= instantSelector TIME_RANGE

    offset ::= instantSelector OFFSET DURATION
           | matrixSelector OFFSET DURATION

    function_ ::= FUNCTION LEFT_PAREN opt_25 RIGHT_PAREN

    parameter ::= literal
           | vectorOperation

    parameterList ::= LEFT_PAREN opt_29 RIGHT_PAREN

    aggregation ::= AGGREGATION_OPERATOR parameterList
           | AGGREGATION_OPERATOR grp_30 parameterList
           | AGGREGATION_OPERATOR parameterList grp_31

    by ::= BY labelNameList

    without ::= WITHOUT labelNameList

    grouping ::= grp_32 opt_34

    on_ ::= ON labelNameList

    ignoring ::= IGNORING labelNameList

    groupLeft ::= GROUP_LEFT opt_35

    groupRight ::= GROUP_RIGHT opt_36

    labelName ::= keyword
           | IDENTIFIER
           | LABEL_NAME

    labelNameList ::= LEFT_PAREN opt_40 RIGHT_PAREN

    keyword ::= AND
           | OR
           | UNLESS
           | BY
           | WITHOUT
           | ON
           | IGNORING
           | GROUP_LEFT
           | GROUP_RIGHT
           | OFFSET
           | IDENTIFIER
           | AGGREGATION_OPERATOR
           | FUNCTION

    literal ::= NUMBER
           | STRING

    grp_1 ::= ADD | SUB

    opt_2 ::= grouping | $empty

    grp_3 ::= MULT | DIV | MOD

    opt_4 ::= grouping | $empty

    grp_5 ::= ADD | SUB

    opt_6 ::= grouping | $empty

    grp_7 ::= DEQ | NE | GT | LT | GE | LE

    opt_8 ::= IDENTIFIER | $empty

    opt_9 ::= grouping | $empty

    grp_10 ::= AND | UNLESS

    opt_11 ::= grouping | $empty

    opt_12 ::= grouping | $empty

    grp_13 ::= ON | UNLESS

    opt_14 ::= grouping | $empty

    opt_15 ::= offsetOp | $empty

    opt_16 ::= labelMatcherList | $empty

    seq_17 ::= LEFT_BRACE opt_16 RIGHT_BRACE

    opt_18 ::= seq_17 | $empty

    seq_19 ::= COMMA labelMatcher

    list_20 ::= $empty | list_20 seq_19

    opt_21 ::= COMMA | $empty

    seq_22 ::= COMMA parameter

    list_23 ::= $empty | list_23 seq_22

    seq_24 ::= parameter list_23

    opt_25 ::= seq_24 | $empty

    seq_26 ::= COMMA parameter

    list_27 ::= $empty | list_27 seq_26

    seq_28 ::= parameter list_27

    opt_29 ::= seq_28 | $empty

    grp_30 ::= by | without

    grp_31 ::= by | without

    grp_32 ::= on_ | ignoring

    grp_33 ::= groupLeft | groupRight

    opt_34 ::= grp_33 | $empty

    opt_35 ::= labelNameList | $empty

    opt_36 ::= labelNameList | $empty

    seq_37 ::= COMMA labelName

    list_38 ::= $empty | list_38 seq_37

    seq_39 ::= labelName list_38

    opt_40 ::= seq_39 | $empty

%End
