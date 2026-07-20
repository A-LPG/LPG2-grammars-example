-- AUTO-GENERATED from antlr/grammars-v4 squirrel by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
%Options fp=SquirrelParser
%options package=lpg.grammars.squirrel
%options template=dtParserTemplateF.gi
%options import_terminals=SquirrelLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    nut
%End

%Rules
    nut ::= opt_1

    statements ::= opt_2 list_3

    statementWithSemi ::= statement delimiter

    delimiter ::= multisemi
                 | RBRACE
                 | $empty

    semi ::= SEMI
            | opt_4 list_5

    multisemi ::= list_6

    statement ::= block
                 | expressionStatement
                 | constDeclaration
                 | enumDeclaration
                 | localDeclaration
                 | functionDeclaration
                 | classDeclaration
                 | forStatement
                 | foreachStatement
                 | whileStatement
                 | doWhileStatement
                 | ifStatement
                 | switchStatement
                 | tryStatement
                 | returnStatement
                 | breakStatement
                 | continueStatement
                 | yieldStatement
                 | throwStatement

    statementOrEmpty ::= statement
                        | SEMI

    block ::= LBRACE opt_7 RBRACE

    constDeclaration ::= CONST id EQ literal

    enumDeclaration ::= ENUM id LBRACE opt_8 RBRACE

    enumItemDeclarations ::= enumItem list_10 opt_11

    enumItem ::= id opt_13

    localDeclaration ::= LOCAL variableOrFunctionDeclarations

    variableOrFunctionDeclarations ::= varDeclarationList
                                      | functionDeclaration

    varDeclarationList ::= varItem list_15

    varItem ::= id opt_16

    varInit ::= EQ expressionWithNoComma

    functionDeclaration ::= FUNCTION functionName parameters list_17 functionBody

    functionName ::= id list_20

    functionBody ::= statementOrEmpty

    parameters ::= LPAREN opt_21 RPAREN

    parameterList ::= parameter list_23 opt_28
                     | defaultParameter list_30
                     | variableLengthParameter

    parameter ::= id

    defaultParameter ::= id EQ expressionWithNoComma

    variableLengthParameter ::= MULTI_ARGS

    classDeclaration ::= CLASS className opt_32 classBody

    className ::= id list_34

    classBody ::= LBRACE list_35 opt_36 RBRACE

    classMembers ::= classMember list_39 opt_40

    classMember ::= opt_43 opt_44 grp_45

    regularClassMember ::= keyValuePair
                          | methodDeclaration

    constructorDeclaration ::= CONSTRUCTOR parameters list_46 functionBody

    methodDeclaration ::= FUNCTION functionName parameters list_47 functionBody

    classAttribute ::= CLASS_ATTR_START opt_48 CLASS_ATTR_END

    returnStatement ::= RETURN opt_49

    breakStatement ::= BREAK

    continueStatement ::= CONTINUE

    yieldStatement ::= YIELD expression

    throwStatement ::= THROW expression

    forStatement ::= FOR LPAREN forLoopParts RPAREN statementOrEmpty

    forLoopParts ::= opt_52 SEMI opt_53 SEMI opt_54

    foreachStatement ::= FOREACH LPAREN opt_56 id IN expression RPAREN list_57 statementOrEmpty

    whileStatement ::= WHILE LPAREN expression RPAREN list_58 statementOrEmpty

    doWhileStatement ::= DO list_59 statementOrEmpty WHILE LPAREN expression RPAREN

    ifStatement ::= IF LPAREN expression RPAREN list_60 statementOrEmpty opt_64

    switchStatement ::= SWITCH LPAREN expression RPAREN list_65 LBRACE list_66 list_67 opt_68 RBRACE

    switchCase ::= CASE expression COLON opt_69

    defaultCase ::= DEFAULT COLON opt_70

    tryStatement ::= TRY statementOrEmpty catchPart

    catchPart ::= CATCH LPAREN id RPAREN statementOrEmpty

    expressionStatement ::= expression

    expression ::= commaExpression

    commaExpression ::= assignExpression list_72

    assignExpression ::= ternaryExpression assignmentOperator assignExpression
                        | ternaryExpression

    ternaryExpression ::= logicOrExpression opt_74

    logicOrExpression ::= andInExpression list_76

    andInExpression ::= bitOrExpression list_79

    bitOrExpression ::= bitXorExpression list_81

    bitXorExpression ::= bitAndExpression list_83

    bitAndExpression ::= compareExpression list_85

    compareExpression ::= relationalExpression list_87

    relationalExpression ::= shiftExpression list_89

    shiftExpression ::= additiveExpression list_91

    additiveExpression ::= multiplicativeExpression list_93

    multiplicativeExpression ::= unaryLevel list_95

    unaryLevel ::= grp_96 unaryLevel
                  | prefixOperator namedElementExpression
                  | postfixExpression list_98

    postfixExpression ::= primaryExpression list_99

    postfixSuffix ::= DOT grp_100
                     | arguments
                     | LBRACKET expressionWithNoComma RBRACKET opt_101

    postOperator ::= PLUS_PLUS
                    | MINUS_MINUS

    primaryExpression ::= literalExpression
                         | parenthesizedExpression
                         | classExpression
                         | tableExpression
                         | arrayExpression
                         | functionExpression
                         | lambdaFunctionExpression
                         | id opt_102

    namedElementExpression ::= id opt_103
                              | postfixExpression DOT grp_104
                              | postfixExpression LBRACKET expressionWithNoComma RBRACKET opt_105

    expressionWithNoComma ::= assignExpression

    parenthesizedExpression ::= LPAREN expression RPAREN

    classExpression ::= CLASS opt_107 classBody

    functionExpression ::= FUNCTION parameters list_108 functionBody

    lambdaFunctionExpression ::= AT parameters expressionWithNoComma

    arguments ::= LPAREN opt_109 RPAREN

    argumentList ::= argumentListPart list_111

    argumentListPart ::= expressionWithNoComma

    arrayExpression ::= LBRACKET opt_112 RBRACKET

    arrayElementsList ::= arrayListPart list_114 opt_115

    arrayListPart ::= expressionWithNoComma

    tableExpression ::= LBRACE opt_116 RBRACE

    keyValuePairs ::= list_117 list_120

    tableItemSeparator ::= COMMA
                          | NL

    tableItem ::= keyValuePair
                 | functionDeclaration

    keyValuePair ::= key EQ expressionWithNoComma

    key ::= id
           | LBRACKET expression RBRACKET

    literalExpression ::= literal

    literal ::= opt_121 INT
               | opt_122 FLOAT
               | STRING
               | TRUE
               | FALSE
               | NULL

    id ::= opt_123 IDENTIFIER

    multiplicativeOperator ::= MUL
                              | DIV
                              | REMAINDER

    additiveOperator ::= PLUS
                        | MINUS

    shiftOperator ::= SHIFT_LEFT
                     | UNSIGNED_SHIFT_RIGHT
                     | SHIFT_RIGHT

    relationalOperator ::= LESS
                          | LESS_OR_EQ
                          | GREATER
                          | GREATER_OR_EQ

    equalityOperator ::= EQ_EQ
                        | NOT_EQ
                        | CMP

    assignmentOperator ::= EQ
                          | SEND_CHANNEL
                          | MUL_EQ
                          | DIV_EQ
                          | REMAINDER_EQ
                          | PLUS_EQ
                          | MINUS_EQ

    unaryOperator ::= MINUS
                     | NOT
                     | BIT_NOT

    unaryAction ::= TYPEOF
                   | CLONE
                   | DELETE
                   | RESUME

    prefixOperator ::= PLUS_PLUS
                      | MINUS_MINUS

    opt_1 ::= statements?

    opt_2 ::= multisemi?

    list_3 ::= (list_3 statementWithSemi)?

    opt_4 ::= SEMI?

    list_5 ::= NL+

    list_6 ::= semi+

    opt_7 ::= statements?

    opt_8 ::= enumItemDeclarations?

    seq_9 ::= COMMA enumItem

    list_10 ::= (list_10 seq_9)?

    opt_11 ::= COMMA?

    seq_12 ::= EQ literal

    opt_13 ::= seq_12?

    seq_14 ::= COMMA varItem

    list_15 ::= (list_15 seq_14)?

    opt_16 ::= varInit?

    list_17 ::= (list_17 NL)?

    grp_19 ::= id
              | CONSTRUCTOR

    grp_18 ::= DOUBLE_COLON grp_19

    list_20 ::= (list_20 grp_18)?

    opt_21 ::= parameterList?

    seq_22 ::= COMMA parameter

    list_23 ::= (list_23 seq_22)?

    seq_25 ::= COMMA defaultParameter

    list_26 ::= seq_25+

    seq_27 ::= COMMA variableLengthParameter

    grp_24 ::= list_26
              | seq_27

    opt_28 ::= grp_24?

    seq_29 ::= COMMA defaultParameter

    list_30 ::= (list_30 seq_29)?

    seq_31 ::= EXTENDS className

    opt_32 ::= seq_31?

    seq_33 ::= DOT id

    list_34 ::= (list_34 seq_33)?

    list_35 ::= (list_35 NL)?

    opt_36 ::= classMembers?

    list_37 ::= (list_37 semi)?

    seq_38 ::= list_37 classMember

    list_39 ::= (list_39 seq_38)?

    opt_40 ::= semi?

    list_41 ::= (list_41 NL)?

    seq_42 ::= classAttribute list_41

    opt_43 ::= seq_42?

    opt_44 ::= STATIC?

    grp_45 ::= constructorDeclaration
              | regularClassMember

    list_46 ::= (list_46 NL)?

    list_47 ::= (list_47 NL)?

    opt_48 ::= keyValuePairs?

    opt_49 ::= expression?

    grp_51 ::= localDeclaration
              | expression

    opt_52 ::= grp_51?

    opt_53 ::= expression?

    opt_54 ::= expression?

    seq_55 ::= id COMMA

    opt_56 ::= seq_55?

    list_57 ::= (list_57 NL)?

    list_58 ::= (list_58 NL)?

    list_59 ::= (list_59 NL)?

    list_60 ::= (list_60 NL)?

    opt_61 ::= semi?

    list_62 ::= (list_62 NL)?

    seq_63 ::= opt_61 ELSE list_62 statementOrEmpty

    opt_64 ::= seq_63?

    list_65 ::= (list_65 NL)?

    list_66 ::= (list_66 NL)?

    list_67 ::= (list_67 switchCase)?

    opt_68 ::= defaultCase?

    opt_69 ::= statements?

    opt_70 ::= statements?

    seq_71 ::= COMMA assignExpression

    list_72 ::= (list_72 seq_71)?

    seq_73 ::= QUESTION expression COLON ternaryExpression

    opt_74 ::= seq_73?

    seq_75 ::= OR_OR andInExpression

    list_76 ::= (list_76 seq_75)?

    grp_78 ::= AND_AND
              | IN

    grp_77 ::= grp_78 bitOrExpression

    list_79 ::= (list_79 grp_77)?

    seq_80 ::= BIT_OR bitXorExpression

    list_81 ::= (list_81 seq_80)?

    seq_82 ::= BIT_XOR bitAndExpression

    list_83 ::= (list_83 seq_82)?

    seq_84 ::= BIT_AND compareExpression

    list_85 ::= (list_85 seq_84)?

    seq_86 ::= equalityOperator relationalExpression

    list_87 ::= (list_87 seq_86)?

    seq_88 ::= relationalOperator shiftExpression

    list_89 ::= (list_89 seq_88)?

    seq_90 ::= shiftOperator additiveExpression

    list_91 ::= (list_91 seq_90)?

    seq_92 ::= additiveOperator multiplicativeExpression

    list_93 ::= (list_93 seq_92)?

    seq_94 ::= multiplicativeOperator unaryLevel

    list_95 ::= (list_95 seq_94)?

    grp_96 ::= unaryOperator
              | unaryAction

    seq_97 ::= INSTANCEOF postfixExpression

    list_98 ::= (list_98 seq_97)?

    list_99 ::= (list_99 postfixSuffix)?

    grp_100 ::= id
               | CONSTRUCTOR

    opt_101 ::= postOperator?

    opt_102 ::= postOperator?

    opt_103 ::= postOperator?

    grp_104 ::= id
               | CONSTRUCTOR

    opt_105 ::= postOperator?

    seq_106 ::= EXTENDS className

    opt_107 ::= seq_106?

    list_108 ::= (list_108 NL)?

    opt_109 ::= argumentList?

    seq_110 ::= COMMA argumentListPart

    list_111 ::= (list_111 seq_110)?

    opt_112 ::= arrayElementsList?

    seq_113 ::= COMMA arrayListPart

    list_114 ::= (list_114 seq_113)?

    opt_115 ::= COMMA?

    opt_116 ::= keyValuePairs?

    list_117 ::= (list_117 tableItemSeparator)?

    list_118 ::= (list_118 tableItemSeparator)?

    seq_119 ::= tableItem list_118

    list_120 ::= (list_120 seq_119)?

    opt_121 ::= MINUS?

    opt_122 ::= MINUS?

    opt_123 ::= DOUBLE_COLON?
%End
