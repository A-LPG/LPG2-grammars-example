-- AUTO-GENERATED from antlr/grammars-v4 caql by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=CaqlParser
%options package=lpg.grammars.caql
%options template=dtParserTemplateF.gi
%options import_terminals=CaqlLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    start_
%End

%Rules
    start_ ::= expression

    expression ::= vectorOperation

    vectorOperation ::= vectorOperation grp_1
           | unaryOp vectorOperation
           | vectorOperation multOp vectorOperation
           | vectorOperation addOp vectorOperation
           | vectorOperation compareOp vectorOperation
           | vectorOperation andUnlessOp vectorOperation
           | vectorOperation orOp vectorOperation
           | vectorOperation vectorMatchOp vectorOperation
           | name LEFT_BRACE vectorOperation list_3 RIGHT_BRACE
           | LEFT_PAREN vectorOperation RIGHT_PAREN
           | name LEFT_PAREN grp_4 list_8 RIGHT_PAREN list_9
           | vectorOperation metricsAggregation
           | NUMBER
           | STRING
           | UUID

    unaryOp ::= ADD
           | SUB

    powOp ::= POW opt_10

    multOp ::= grp_11 opt_12

    addOp ::= grp_13 opt_14

    compareOp ::= grp_15 opt_16 opt_17

    andUnlessOp ::= grp_18 opt_19

    orOp ::= OR opt_20

    vectorMatchOp ::= grp_21 opt_22

    subqueryOp ::= SUBQUERY_RANGE opt_23

    offsetOp ::= OFFSET DURATION

    parameter ::= literal
           | vectorOperation

    parameterList ::= LEFT_PAREN opt_27 RIGHT_PAREN

    metricsAggregation ::= LINE_ name parameterList

    multMetrics ::= COMMA vectorOperation

    by ::= BY labelNameList

    without ::= WITHOUT labelNameList

    grouping ::= grp_28 opt_30

    on_ ::= ON labelNameList

    ignoring ::= IGNORING labelNameList

    groupLeft ::= GROUP_LEFT opt_31

    groupRight ::= GROUP_RIGHT opt_32

    name ::= keyword
           | NAME

    labelNameList ::= LEFT_PAREN opt_36 RIGHT_PAREN

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
           | BOOL

    literal ::= NUMBER
           | STRING

    start ::= expr

    expr ::= grp_37 LEFT_PAREN STRING COLON STRING list_38 RIGHT_PAREN

    metricsMult ::= COMMA STRING COLON STRING

    grp_1 ::= powOp vectorOperation | subqueryOp

    seq_2 ::= COMMA vectorOperation

    list_3 ::= $empty | list_3 seq_2

    grp_4 ::= STRING | NUMBER | UUID

    opt_6 ::= LIMIT | $empty

    grp_7 ::= STRING | NUMBER | UUID

    grp_5 ::= COMMA opt_6 grp_7

    list_8 ::= $empty | list_8 grp_5

    list_9 ::= $empty | list_9 metricsAggregation

    opt_10 ::= grouping | $empty

    grp_11 ::= MULT | DIV | MOD

    opt_12 ::= grouping | $empty

    grp_13 ::= ADD | SUB

    opt_14 ::= grouping | $empty

    grp_15 ::= DEQ | NE | GT | LT | GE | LE

    opt_16 ::= BOOL | $empty

    opt_17 ::= grouping | $empty

    grp_18 ::= AND | UNLESS

    opt_19 ::= grouping | $empty

    opt_20 ::= grouping | $empty

    grp_21 ::= ON | UNLESS

    opt_22 ::= grouping | $empty

    opt_23 ::= offsetOp | $empty

    seq_24 ::= COMMA parameter

    list_25 ::= $empty | list_25 seq_24

    seq_26 ::= parameter list_25

    opt_27 ::= seq_26 | $empty

    grp_28 ::= on_ | ignoring

    grp_29 ::= groupLeft | groupRight

    opt_30 ::= grp_29 | $empty

    opt_31 ::= labelNameList | $empty

    opt_32 ::= labelNameList | $empty

    seq_33 ::= COMMA name

    list_34 ::= $empty | list_34 seq_33

    seq_35 ::= name list_34

    opt_36 ::= seq_35 | $empty

    grp_37 ::= AND | OR

    list_38 ::= $empty | list_38 metricsMult

%End
