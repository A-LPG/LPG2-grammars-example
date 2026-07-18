-- AUTO-GENERATED from antlr/grammars-v4 pddl by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=PddlParser
%options package=lpg.grammars.pddl
%options template=dtParserTemplateF.gi
%options import_terminals=PddlLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    pddlDoc
%End

%Rules
    pddlDoc ::= grp_1

    domain ::= LPAREN DEFINE domainName opt_2 opt_3 opt_4 opt_5 opt_6 opt_7 list_8 RPAREN

    domainName ::= LPAREN DOMAIN NAME RPAREN

    requireDef ::= LPAREN _REQUIREMENTS list_9 RPAREN

    typesDef ::= LPAREN _TYPES typedNameList RPAREN

    typedNameList ::= grp_10

    singleTypeNameList ::= seq_15

    type_ ::= seq_17
           | primType

    primType ::= NAME

    functionsDef ::= LPAREN _FUNCTIONS functionList RPAREN

    functionList ::= list_22

    atomicFunctionSkeleton ::= LPAREN functionSymbol typedVariableList RPAREN

    functionSymbol ::= NAME

    functionType ::= NUMBER

    constantsDef ::= LPAREN _CONSTANTS typedNameList RPAREN

    predicatesDef ::= LPAREN _PREDICATES list_23 RPAREN

    atomicFormulaSkeleton ::= LPAREN predicate typedVariableList RPAREN

    predicate ::= NAME

    typedVariableList ::= grp_24

    singleTypeVarList ::= seq_29

    constraints ::= LPAREN _CONSTRAINTS conGD RPAREN

    structureDef ::= actionDef
           | durativeActionDef
           | derivedDef

    actionDef ::= LPAREN _ACTION actionSymbol _PARAMETERS LPAREN typedVariableList RPAREN actionDefBody RPAREN

    actionSymbol ::= NAME

    actionDefBody ::= opt_33 opt_37

    goalDesc ::= atomicTermFormula
           | LPAREN AND list_38 RPAREN
           | LPAREN OR list_39 RPAREN
           | LPAREN NOT goalDesc RPAREN
           | LPAREN IMPLY goalDesc goalDesc RPAREN
           | LPAREN EXISTS LPAREN typedVariableList RPAREN goalDesc RPAREN
           | LPAREN FORALL LPAREN typedVariableList RPAREN goalDesc RPAREN
           | fComp

    fComp ::= LPAREN binaryComp fExp fExp RPAREN

    atomicTermFormula ::= LPAREN predicate list_40 RPAREN

    term ::= NAME
           | VARIABLE

    durativeActionDef ::= LPAREN _DURATIVE_ACTION actionSymbol _PARAMETERS LPAREN typedVariableList RPAREN daDefBody RPAREN

    daDefBody ::= _DURATION durationConstraint
           | _CONDITION grp_41
           | _EFFECT grp_43

    daGD ::= prefTimedGD
           | LPAREN AND list_45 RPAREN
           | LPAREN FORALL LPAREN typedVariableList RPAREN daGD RPAREN

    prefTimedGD ::= timedGD
           | LPAREN PREFERENCE opt_46 timedGD RPAREN

    timedGD ::= LPAREN AT timeSpecifier goalDesc RPAREN
           | LPAREN OVER interval goalDesc RPAREN

    timeSpecifier ::= START
           | END

    interval ::= ALL

    derivedDef ::= LPAREN _DERIVED typedVariableList goalDesc RPAREN

    fExp ::= NUMBER
           | LPAREN binaryOp fExp fExp2 RPAREN
           | LPAREN MINUS fExp RPAREN
           | fHead

    fExp2 ::= fExp

    fHead ::= LPAREN functionSymbol list_47 RPAREN
           | functionSymbol

    effect ::= LPAREN AND list_48 RPAREN
           | cEffect

    cEffect ::= LPAREN FORALL LPAREN typedVariableList RPAREN effect RPAREN
           | LPAREN WHEN goalDesc condEffect RPAREN
           | pEffect

    pEffect ::= LPAREN assignOp fHead fExp RPAREN
           | LPAREN NOT atomicTermFormula RPAREN
           | atomicTermFormula

    condEffect ::= LPAREN AND list_49 RPAREN
           | pEffect

    binaryOp ::= STAR
           | PLUS
           | MINUS
           | SLASH

    binaryComp ::= GT
           | LT
           | EQ
           | GTEQ
           | LTEQ

    assignOp ::= ASSIGN
           | SCALE_UP
           | SCALE_DOWN
           | INCREASE
           | DECREASE

    durationConstraint ::= LPAREN AND list_50 RPAREN
           | LPAREN RPAREN
           | simpleDurationConstraint

    simpleDurationConstraint ::= LPAREN durOp _DURATION durValue RPAREN
           | LPAREN AT timeSpecifier simpleDurationConstraint RPAREN

    durOp ::= LTEQ
           | GTEQ
           | EQ

    durValue ::= NUMBER
           | fExp

    daEffect ::= LPAREN AND list_51 RPAREN
           | timedEffect
           | LPAREN FORALL LPAREN typedVariableList RPAREN daEffect RPAREN
           | LPAREN WHEN daGD timedEffect RPAREN
           | LPAREN assignOp fHead fExpDA RPAREN

    timedEffect ::= LPAREN AT timeSpecifier daEffect RPAREN
           | LPAREN AT timeSpecifier fAssignDA RPAREN
           | LPAREN assignOp fHead fExp RPAREN

    fAssignDA ::= LPAREN assignOp fHead fExpDA RPAREN

    fExpDA ::= LPAREN grp_52 RPAREN
           | _DURATION
           | fExp

    problem ::= LPAREN DEFINE problemDecl problemDomain opt_55 opt_56 init_ goal opt_57 opt_58 RPAREN

    problemDecl ::= LPAREN PROBLEM NAME RPAREN

    problemDomain ::= LPAREN _DOMAIN NAME RPAREN

    objectDecl ::= LPAREN _OBJECTS typedNameList RPAREN

    init_ ::= LPAREN _INIT list_59 RPAREN

    initEl ::= nameLiteral
           | LPAREN EQ fHead NUMBER RPAREN
           | LPAREN AT NUMBER nameLiteral RPAREN

    nameLiteral ::= atomicNameFormula
           | LPAREN NOT atomicNameFormula RPAREN

    atomicNameFormula ::= LPAREN predicate list_60 RPAREN

    goal ::= LPAREN _GOAL goalDesc RPAREN

    probConstraints ::= LPAREN _CONSTRAINTS prefConGD RPAREN

    prefConGD ::= LPAREN AND list_61 RPAREN
           | LPAREN FORALL LPAREN typedVariableList RPAREN prefConGD RPAREN
           | LPAREN PREFERENCE opt_62 conGD RPAREN
           | conGD

    metricSpec ::= LPAREN _METRIC optimization metricFExp RPAREN

    optimization ::= MINIMIZE
           | MAXIMIZE

    metricFExp ::= LPAREN binaryOp metricFExp metricFExp RPAREN
           | LPAREN grp_63 metricFExp list_64 RPAREN
           | LPAREN MINUS metricFExp RPAREN
           | NUMBER
           | LPAREN functionSymbol list_65 RPAREN
           | functionSymbol
           | TOTAL_TIME
           | LPAREN IS_VIOLATED NAME RPAREN

    conGD ::= LPAREN AND list_66 RPAREN
           | LPAREN FORALL LPAREN typedVariableList RPAREN conGD RPAREN
           | LPAREN AT END goalDesc RPAREN
           | LPAREN ALWAYS goalDesc RPAREN
           | LPAREN SOMETIME goalDesc RPAREN
           | LPAREN WITHIN NUMBER goalDesc RPAREN
           | LPAREN AT_MOST_ONCE goalDesc RPAREN
           | LPAREN SOMETIME_AFTER goalDesc goalDesc RPAREN
           | LPAREN SOMETIME_BEFORE goalDesc goalDesc RPAREN
           | LPAREN ALWAYS_WITHIN NUMBER goalDesc goalDesc RPAREN
           | LPAREN HOLD_DURING NUMBER NUMBER goalDesc RPAREN
           | LPAREN HOLD_AFTER NUMBER goalDesc RPAREN

    grp_1 ::= domain | problem

    opt_2 ::= requireDef | $empty

    opt_3 ::= typesDef | $empty

    opt_4 ::= constantsDef | $empty

    opt_5 ::= predicatesDef | $empty

    opt_6 ::= functionsDef | $empty

    opt_7 ::= constraints | $empty

    list_8 ::= $empty | list_8 structureDef

    list_9 ::= REQUIRE_KEY | list_9 REQUIRE_KEY

    list_11 ::= $empty | list_11 NAME

    list_12 ::= singleTypeNameList | list_12 singleTypeNameList

    list_13 ::= $empty | list_13 NAME

    grp_10 ::= list_11 | list_12 list_13

    list_14 ::= NAME | list_14 NAME

    seq_15 ::= list_14 MINUS type_

    list_16 ::= primType | list_16 primType

    seq_17 ::= LPAREN EITHER list_16 RPAREN

    list_18 ::= atomicFunctionSkeleton | list_18 atomicFunctionSkeleton

    seq_19 ::= MINUS functionType

    opt_20 ::= seq_19 | $empty

    seq_21 ::= list_18 opt_20

    list_22 ::= $empty | list_22 seq_21

    list_23 ::= atomicFormulaSkeleton | list_23 atomicFormulaSkeleton

    list_25 ::= $empty | list_25 VARIABLE

    list_26 ::= singleTypeVarList | list_26 singleTypeVarList

    list_27 ::= $empty | list_27 VARIABLE

    grp_24 ::= list_25 | list_26 list_27

    list_28 ::= VARIABLE | list_28 VARIABLE

    seq_29 ::= list_28 MINUS type_

    seq_32 ::= LPAREN RPAREN

    grp_31 ::= seq_32 | goalDesc

    grp_30 ::= _PRECONDITION grp_31

    opt_33 ::= grp_30 | $empty

    seq_36 ::= LPAREN RPAREN

    grp_35 ::= seq_36 | effect

    grp_34 ::= _EFFECT grp_35

    opt_37 ::= grp_34 | $empty

    list_38 ::= $empty | list_38 goalDesc

    list_39 ::= $empty | list_39 goalDesc

    list_40 ::= $empty | list_40 term

    seq_42 ::= LPAREN RPAREN

    grp_41 ::= seq_42 | daGD

    seq_44 ::= LPAREN RPAREN

    grp_43 ::= seq_44 | daEffect

    list_45 ::= $empty | list_45 daGD

    opt_46 ::= NAME | $empty

    list_47 ::= $empty | list_47 term

    list_48 ::= $empty | list_48 cEffect

    list_49 ::= $empty | list_49 pEffect

    list_50 ::= simpleDurationConstraint | list_50 simpleDurationConstraint

    list_51 ::= $empty | list_51 daEffect

    seq_53 ::= binaryOp fExpDA fExpDA

    seq_54 ::= MINUS fExpDA

    grp_52 ::= seq_53 | seq_54

    opt_55 ::= requireDef | $empty

    opt_56 ::= objectDecl | $empty

    opt_57 ::= probConstraints | $empty

    opt_58 ::= metricSpec | $empty

    list_59 ::= $empty | list_59 initEl

    list_60 ::= $empty | list_60 NAME

    list_61 ::= $empty | list_61 prefConGD

    opt_62 ::= NAME | $empty

    grp_63 ::= STAR | SLASH

    list_64 ::= metricFExp | list_64 metricFExp

    list_65 ::= $empty | list_65 NAME

    list_66 ::= $empty | list_66 conGD

%End
