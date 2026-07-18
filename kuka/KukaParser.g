-- AUTO-GENERATED from antlr/grammars-v4 kuka by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=KukaParser
%options package=lpg.grammars.kuka
%options template=dtParserTemplateF.gi
%options import_terminals=KukaLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    module
%End

%Rules
    module ::= grp_1

    moduleRoutines ::= mainRoutine list_3

    mainRoutine ::= procedureDefinition
           | functionDefinition

    subRoutine ::= procedureDefinition
           | functionDefinition

    procedureDefinition ::= opt_4 DEF procedureName formalParameters NEWLINE routineBody END

    procedureName ::= IDENTIFIER

    functionDefinition ::= opt_5 DEFFCT type_ functionName formalParameters NEWLINE routineBody ENDFCT

    functionName ::= IDENTIFIER

    moduleData ::= DEFDAT moduleName opt_6 NEWLINE dataList ENDDAT list_7

    moduleName ::= IDENTIFIER

    dataList ::= list_9

    arrayInitialisation ::= IDENTIFIER arrayVariableSuffix EQ unaryPlusMinuxExpression

    typeDeclaration ::= structureDefinition
           | enumDefinition

    structureDefinition ::= opt_10 STRUC typeName type_ variableName variableListRest list_12

    enumDefinition ::= opt_13 ENUM typeName enumValue list_15

    enumValue ::= IDENTIFIER

    variableDeclaration ::= opt_16 grp_17

    signalDeclaration ::= SIGNAL IDENTIFIER primary opt_19

    variableDeclarationInDataList ::= opt_20 opt_21 opt_22 grp_23

    variableListRest ::= list_26

    variableInitialisation ::= EQ unaryPlusMinuxExpression

    structLiteral ::= LBRACE opt_28 structElementList RBRACE

    structElementList ::= structElement list_30

    structElement ::= variableName unaryPlusMinuxExpression

    formalParameters ::= LPAREN opt_34 RPAREN

    parameter ::= variableName opt_35

    routineBody ::= routineDataSection routineImplementationSection

    routineDataSection ::= list_37

    forwardDeclaration ::= EXT procedureName formalParametersWithType
           | EXTFCT type_ functionName formalParametersWithType

    formalParametersWithType ::= LPAREN opt_41 RPAREN

    parameterWithType ::= type_ opt_42

    parameterCallType ::= COLON IDENTIFIER

    importStatement ::= IMPORT type_ variableName IS _R1_ moduleName DOTDOT variableName

    variableName ::= IDENTIFIER opt_43

    arrayVariableSuffix ::= LBRACKET opt_52 RBRACKET

    routineImplementationSection ::= statementList

    statementList ::= list_53

    statement ::= CONTINUE NEWLINE
           | EXIT NEWLINE
           | FOR IDENTIFIER EQ expression TO expression opt_55 NEWLINE statementList ENDFOR
           | GOTO IDENTIFIER NEWLINE
           | HALT NEWLINE
           | IF expression THEN NEWLINE statementList opt_57 ENDIF NEWLINE
           | LOOP NEWLINE statementList ENDLOOP NEWLINE
           | REPEAT NEWLINE statementList UNTIL expression NEWLINE
           | SWITCH expression NEWLINE switchBlockStatementGroups ENDSWITCH NEWLINE
           | WAIT FOR expression NEWLINE
           | WAIT SEC expression NEWLINE
           | WHILE expression NEWLINE statementList ENDWHILE NEWLINE
           | RETURN opt_58 NEWLINE
           | BRAKE opt_59 NEWLINE
           | assignmentExpression NEWLINE
           | IDENTIFIER COLON NEWLINE
           | NEWLINE
           | opt_60 INTERRUPT DECL primary WHEN expression DO assignmentExpression NEWLINE
           | INTERRUPT IDENTIFIER opt_61 NEWLINE
           | grp_62 geometricExpression opt_66 NEWLINE
           | LIN geometricExpression opt_68 NEWLINE
           | LIN_REL geometricExpression opt_70 opt_71 NEWLINE
           | grp_72 geometricExpression COMMA geometricExpression opt_74 opt_76 NEWLINE
           | TRIGGER WHEN IDENTIFIER EQ expression DELAY EQ expression DO assignmentExpression opt_78 NEWLINE
           | analogInputStatement NEWLINE
           | analogOutputStatement NEWLINE

    analogOutputStatement ::= ANOUT grp_79

    analogInputStatement ::= ANIN grp_82

    switchBlockStatementGroups ::= list_83 list_85 opt_87

    caseLabel ::= CASE expression list_89 NEWLINE

    defaultLabel ::= DEFAULT NEWLINE

    expressionList ::= assignmentExpression list_91

    assignmentExpression ::= expression list_93

    expression ::= conditionalOrExpression list_95

    relationalOp ::= EQEQ
           | LTGT
           | LTEQ
           | GTEQ
           | LT
           | GT

    conditionalOrExpression ::= exclusiveOrExpression list_98

    exclusiveOrExpression ::= conditionalAndExpression list_101

    conditionalAndExpression ::= additiveExpression list_104

    additiveExpression ::= multiplicativeExpression list_107

    multiplicativeExpression ::= geometricExpression list_110

    geometricExpression ::= unaryNotExpression list_112

    unaryNotExpression ::= NOT unaryNotExpression
           | B_NOT unaryNotExpression
           | unaryPlusMinuxExpression

    unaryPlusMinuxExpression ::= PLUS unaryPlusMinuxExpression
           | MINUS unaryPlusMinuxExpression
           | primary

    primary ::= parExpression
           | variableName list_114 opt_115
           | literal

    parExpression ::= LPAREN assignmentExpression RPAREN

    type_ ::= primitiveType opt_118
           | typeName opt_121

    typeName ::= IDENTIFIER

    primitiveType ::= BOOL
           | CHAR
           | INT
           | REAL

    arguments ::= LPAREN opt_122 RPAREN

    literal ::= INTLITERAL
           | FLOATLITERAL
           | CHARLITERAL
           | STRINGLITERAL
           | structLiteral
           | TRUE
           | FALSE
           | enumElement

    enumElement ::= HASH IDENTIFIER

    grp_1 ::= moduleData | moduleRoutines

    grp_2 ::= subRoutine | NEWLINE

    list_3 ::= $empty | list_3 grp_2

    opt_4 ::= GLOBAL | $empty

    opt_5 ::= GLOBAL | $empty

    opt_6 ::= PUBLIC | $empty

    list_7 ::= $empty | list_7 NEWLINE

    grp_8 ::= NEWLINE | forwardDeclaration NEWLINE | typeDeclaration NEWLINE | variableDeclarationInDataList NEWLINE | arrayInitialisation NEWLINE | importStatement NEWLINE

    list_9 ::= $empty | list_9 grp_8

    opt_10 ::= GLOBAL | $empty

    seq_11 ::= COMMA type_ variableName variableListRest

    list_12 ::= $empty | list_12 seq_11

    opt_13 ::= GLOBAL | $empty

    seq_14 ::= COMMA enumValue

    list_15 ::= $empty | list_15 seq_14

    opt_16 ::= DECL | $empty

    grp_17 ::= type_ variableName variableListRest | signalDeclaration

    seq_18 ::= TO primary

    opt_19 ::= seq_18 | $empty

    opt_20 ::= DECL | $empty

    opt_21 ::= GLOBAL | $empty

    opt_22 ::= CONST | $empty

    grp_24 ::= variableListRest | variableInitialisation

    grp_23 ::= type_ variableName grp_24 | signalDeclaration

    seq_25 ::= COMMA variableName

    list_26 ::= $empty | list_26 seq_25

    seq_27 ::= typeName COLON

    opt_28 ::= seq_27 | $empty

    seq_29 ::= COMMA structElement

    list_30 ::= $empty | list_30 seq_29

    seq_31 ::= COMMA parameter

    list_32 ::= $empty | list_32 seq_31

    seq_33 ::= parameter list_32

    opt_34 ::= seq_33 | $empty

    opt_35 ::= parameterCallType | $empty

    grp_36 ::= forwardDeclaration NEWLINE | variableDeclaration NEWLINE | NEWLINE NEWLINE | importStatement NEWLINE

    list_37 ::= $empty | list_37 grp_36

    seq_38 ::= COMMA parameterWithType

    list_39 ::= $empty | list_39 seq_38

    seq_40 ::= parameterWithType list_39

    opt_41 ::= seq_40 | $empty

    opt_42 ::= parameterCallType | $empty

    opt_43 ::= arrayVariableSuffix | $empty

    opt_44 ::= expression | $empty

    seq_45 ::= COMMA opt_44

    opt_46 ::= seq_45 | $empty

    seq_47 ::= expression opt_46

    opt_48 ::= seq_47 | $empty

    seq_49 ::= COMMA opt_48

    opt_50 ::= seq_49 | $empty

    seq_51 ::= expression opt_50

    opt_52 ::= seq_51 | $empty

    list_53 ::= $empty | list_53 statement

    seq_54 ::= IDENTIFIER expression

    opt_55 ::= seq_54 | $empty

    seq_56 ::= ELSE NEWLINE statementList

    opt_57 ::= seq_56 | $empty

    opt_58 ::= assignmentExpression | $empty

    opt_59 ::= IDENTIFIER | $empty

    opt_60 ::= GLOBAL | $empty

    opt_61 ::= primary | $empty

    grp_62 ::= PTP | PTP_REL

    grp_64 ::= C_DIS | C_ORI | C_VEL

    opt_65 ::= grp_64 | $empty

    grp_63 ::= C_PTP opt_65

    opt_66 ::= grp_63 | $empty

    grp_67 ::= C_DIS | C_ORI | C_VEL

    opt_68 ::= grp_67 | $empty

    grp_69 ::= C_DIS | C_ORI | C_VEL

    opt_70 ::= grp_69 | $empty

    opt_71 ::= enumElement | $empty

    grp_72 ::= CIRC | CIRC_REL

    seq_73 ::= COMMA IDENTIFIER primary

    opt_74 ::= seq_73 | $empty

    grp_75 ::= C_DIS | C_ORI | C_VEL

    opt_76 ::= grp_75 | $empty

    seq_77 ::= PRIO EQ expression

    opt_78 ::= seq_77 | $empty

    seq_80 ::= IDENTIFIER EQ literal

    list_81 ::= $empty | list_81 seq_80

    grp_79 ::= IDENTIFIER assignmentExpression list_81 | IDENTIFIER IDENTIFIER

    grp_82 ::= IDENTIFIER assignmentExpression | IDENTIFIER IDENTIFIER

    list_83 ::= $empty | list_83 NEWLINE

    seq_84 ::= caseLabel statementList

    list_85 ::= seq_84 | list_85 seq_84

    seq_86 ::= defaultLabel statementList

    opt_87 ::= seq_86 | $empty

    seq_88 ::= COMMA expression

    list_89 ::= $empty | list_89 seq_88

    seq_90 ::= COMMA assignmentExpression

    list_91 ::= $empty | list_91 seq_90

    seq_92 ::= EQ expression

    list_93 ::= $empty | list_93 seq_92

    seq_94 ::= relationalOp conditionalOrExpression

    list_95 ::= $empty | list_95 seq_94

    grp_97 ::= OR | B_OR

    grp_96 ::= grp_97 exclusiveOrExpression

    list_98 ::= $empty | list_98 grp_96

    grp_100 ::= EXOR | B_EXOR

    grp_99 ::= grp_100 conditionalAndExpression

    list_101 ::= $empty | list_101 grp_99

    grp_103 ::= AND | B_AND

    grp_102 ::= grp_103 additiveExpression

    list_104 ::= $empty | list_104 grp_102

    grp_106 ::= PLUS | MINUS

    grp_105 ::= grp_106 multiplicativeExpression

    list_107 ::= $empty | list_107 grp_105

    grp_109 ::= STAR | SLASH

    grp_108 ::= grp_109 geometricExpression

    list_110 ::= $empty | list_110 grp_108

    seq_111 ::= COLON unaryNotExpression

    list_112 ::= $empty | list_112 seq_111

    seq_113 ::= DOT variableName

    list_114 ::= $empty | list_114 seq_113

    opt_115 ::= arguments | $empty

    opt_116 ::= INTLITERAL | $empty

    seq_117 ::= LBRACKET opt_116 RBRACKET

    opt_118 ::= seq_117 | $empty

    opt_119 ::= INTLITERAL | $empty

    seq_120 ::= LBRACKET opt_119 RBRACKET

    opt_121 ::= seq_120 | $empty

    opt_122 ::= expressionList | $empty

%End
