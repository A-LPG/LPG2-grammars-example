-- AUTO-GENERATED from antlr/grammars-v4 atl by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=AtlParser
%options package=lpg.grammars.atl
%options template=dtParserTemplateF.gi
%options import_terminals=AtlLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    unit
%End

%Rules
    unit ::= grp_1

    module ::= MODULE grp_2 SEMI CREATE targetModelPattern transformationMode sourceModelPattern SEMI list_3 list_4

    targetModelPattern ::= oclModel list_6

    sourceModelPattern ::= oclModel list_8

    transformationMode ::= REFINING
           | FROM

    library_ ::= LIBRARY grp_9 SEMI list_10 list_11

    query ::= QUERY grp_12 EQ oclExpression SEMI list_13 list_14

    libraryRef ::= USES STRING SEMI

    moduleElement ::= helper
           | arule

    helper ::= HELPER oclFeatureDefinition SEMI

    oclFeatureDefinition ::= opt_15 DEF COLON oclFeature

    oclContextDefinition ::= CONTEXT oclType

    oclFeature ::= operation
           | attribute

    operation ::= IDENTIFIER LPAREN opt_19 RPAREN COLON oclType EQ oclExpression

    parameter ::= IDENTIFIER COLON oclType

    attribute ::= IDENTIFIER COLON oclType EQ oclExpression

    arule ::= calledRule
           | matchedRule

    matchedRule ::= lazyMatchedRule
           | matchedRule_abstractContents

    lazyMatchedRule ::= opt_20 LAZY opt_21 opt_22 RULE IDENTIFIER opt_24 LBRACE inPattern opt_27 opt_28 opt_29 RBRACE

    ruleVariableDeclaration ::= IDENTIFIER COLON oclType EQ oclExpression SEMI

    calledRule ::= opt_30 opt_31 RULE IDENTIFIER LPAREN opt_35 RPAREN LBRACE opt_38 opt_39 opt_40 RBRACE

    inPattern ::= FROM inPatternElement list_42 opt_44

    inPatternElement ::= simpleInPatternElement

    simpleInPatternElement ::= IDENTIFIER COLON oclType opt_48

    outPattern ::= TO outPatternElement list_50

    outPatternElement ::= simpleOutPatternElement
           | forEachOutPatternElement

    simpleOutPatternElement ::= IDENTIFIER COLON oclType opt_52 opt_54 opt_60

    forEachOutPatternElement ::= IDENTIFIER COLON DISTINCT oclType FOREACH LPAREN iterator IN oclExpression RPAREN opt_62 opt_68

    binding ::= IDENTIFIER RECEIVE oclExpression

    actionBlock ::= DO LBRACE list_69 RBRACE

    statement ::= ifStat
           | expressionStat
           | bindingStat
           | forStat

    bindingStat ::= oclExpression RECEIVE oclExpression SEMI

    expressionStat ::= oclExpression SEMI

    ifStat ::= IF LPAREN oclExpression RPAREN grp_70 opt_75

    forStat ::= FOR LPAREN iterator IN oclExpression RPAREN LBRACE list_76 RBRACE

    oclModel ::= IDENTIFIER COLON IDENTIFIER

    oclModelElement ::= IDENTIFIER BANG grp_77

    oclExpression ::= priority_5
           | letExp

    iteratorExp ::= IDENTIFIER LPAREN iterator list_79 PIPE oclExpression RPAREN

    iterateExp ::= ITERATE LPAREN iterator list_81 SEMI variableDeclaration PIPE oclExpression RPAREN

    collectionOperationCallExp ::= IDENTIFIER LPAREN opt_85 RPAREN

    operationCallExp ::= IDENTIFIER LPAREN opt_89 RPAREN

    navigationOrAttributeCallExp ::= IDENTIFIER

    iterator ::= IDENTIFIER

    oclUndefinedExp ::= OCLUNDEFINED

    primitiveExp ::= numericExp
           | booleanExp
           | stringExp

    numericExp ::= integerExp
           | realExp

    booleanExp ::= TRUE
           | FALSE

    integerExp ::= NUMBER
           | INTEGER

    realExp ::= FLOAT

    stringExp ::= STRING

    ifExp ::= IF oclExpression THEN oclExpression ELSE oclExpression ENDIF

    variableExp ::= IDENTIFIER

    superExp ::= SUPER

    letExp ::= LET variableDeclaration IN oclExpression

    variableDeclaration ::= IDENTIFIER COLON oclType EQ oclExpression

    enumLiteralExp ::= HASH IDENTIFIER

    collectionExp ::= bagExp
           | setExp
           | orderedSetExp
           | sequenceExp

    bagExp ::= BAG LBRACE opt_93 RBRACE

    setExp ::= SET LBRACE opt_97 RBRACE

    orderedSetExp ::= ORDEREDSET LBRACE opt_101 RBRACE

    sequenceExp ::= SEQUENCE LBRACE opt_105 RBRACE

    mapExp ::= MAP LBRACE opt_109 RBRACE

    mapElement ::= LPAREN oclExpression COMMA oclExpression RPAREN

    tupleExp ::= TUPLE LBRACE opt_113 RBRACE

    tuplePart ::= IDENTIFIER opt_115 EQ oclExpression

    oclType ::= oclModelElement
           | oclAnyType
           | tupleType
           | mapType
           | primitive
           | collectionType
           | oclType_abstractContents

    oclAnyType ::= oclAnyType_abstractContents

    tupleType ::= TUPLETYPE LPAREN opt_119 RPAREN

    tupleTypeAttribute ::= IDENTIFIER COLON oclType

    mapType ::= MAP LPAREN oclType COMMA oclType RPAREN

    primitive ::= numericType
           | booleanType
           | stringType

    numericType ::= integerType
           | realType

    integerType ::= INTEGER

    realType ::= REAL

    booleanType ::= BOOLEAN

    stringType ::= STRING

    collectionType ::= bagType
           | setType
           | orderedSetType
           | sequenceType
           | collectionType_abstractContents

    bagType ::= BAG LPAREN oclType RPAREN

    setType ::= SET LPAREN oclType RPAREN

    orderedSetType ::= ORDEREDSET LPAREN oclType RPAREN

    sequenceType ::= SEQUENCE LPAREN oclType RPAREN

    priority_0 ::= primary_oclExpression list_123

    priority_1 ::= NOT priority_0
           | MINUS priority_0
           | priority_0

    priority_2 ::= priority_1 list_125

    priority_3 ::= priority_2 list_127

    priority_4 ::= priority_3 list_129

    priority_5 ::= priority_4 list_131

    matchedRule_abstractContents ::= opt_132 opt_133 opt_134 RULE IDENTIFIER opt_136 LBRACE inPattern opt_139 opt_140 opt_141 RBRACE

    oclType_abstractContents ::= OCLTYPE

    oclAnyType_abstractContents ::= OCLANY

    collectionType_abstractContents ::= COLLECTION LPAREN oclType RPAREN

    primary_oclExpression ::= variableExp
           | oclUndefinedExp
           | primitiveExp
           | ifExp
           | superExp
           | enumLiteralExp
           | collectionExp
           | mapExp
           | tupleExp
           | oclType
           | LPAREN oclExpression RPAREN

    grp_1 ::= module | library_ | query

    grp_2 ::= STRING | IDENTIFIER

    list_3 ::= $empty | list_3 libraryRef

    list_4 ::= $empty | list_4 moduleElement

    seq_5 ::= COMMA oclModel

    list_6 ::= $empty | list_6 seq_5

    seq_7 ::= COMMA oclModel

    list_8 ::= $empty | list_8 seq_7

    grp_9 ::= STRING | IDENTIFIER

    list_10 ::= $empty | list_10 libraryRef

    list_11 ::= $empty | list_11 helper

    grp_12 ::= STRING | IDENTIFIER

    list_13 ::= $empty | list_13 libraryRef

    list_14 ::= $empty | list_14 helper

    opt_15 ::= oclContextDefinition | $empty

    seq_16 ::= COMMA parameter

    list_17 ::= $empty | list_17 seq_16

    seq_18 ::= parameter list_17

    opt_19 ::= seq_18 | $empty

    opt_20 ::= UNIQUE | $empty

    opt_21 ::= ABSTRACT | $empty

    opt_22 ::= REFINING | $empty

    seq_23 ::= EXTENDS IDENTIFIER

    opt_24 ::= seq_23 | $empty

    list_25 ::= $empty | list_25 ruleVariableDeclaration

    seq_26 ::= USING LBRACE list_25 RBRACE

    opt_27 ::= seq_26 | $empty

    opt_28 ::= outPattern | $empty

    opt_29 ::= actionBlock | $empty

    opt_30 ::= ENTRYPOINT | $empty

    opt_31 ::= ENDPOINT | $empty

    seq_32 ::= COMMA parameter

    list_33 ::= $empty | list_33 seq_32

    seq_34 ::= parameter list_33

    opt_35 ::= seq_34 | $empty

    list_36 ::= $empty | list_36 ruleVariableDeclaration

    seq_37 ::= USING LBRACE list_36 RBRACE

    opt_38 ::= seq_37 | $empty

    opt_39 ::= outPattern | $empty

    opt_40 ::= actionBlock | $empty

    seq_41 ::= COMMA inPatternElement

    list_42 ::= $empty | list_42 seq_41

    seq_43 ::= LPAREN oclExpression RPAREN

    opt_44 ::= seq_43 | $empty

    seq_45 ::= COMMA IDENTIFIER

    list_46 ::= $empty | list_46 seq_45

    seq_47 ::= IN IDENTIFIER list_46

    opt_48 ::= seq_47 | $empty

    seq_49 ::= COMMA outPatternElement

    list_50 ::= $empty | list_50 seq_49

    seq_51 ::= IN IDENTIFIER

    opt_52 ::= seq_51 | $empty

    seq_53 ::= MAPSTO IDENTIFIER

    opt_54 ::= seq_53 | $empty

    seq_55 ::= COMMA binding

    list_56 ::= $empty | list_56 seq_55

    seq_57 ::= binding list_56

    opt_58 ::= seq_57 | $empty

    seq_59 ::= LPAREN opt_58 RPAREN

    opt_60 ::= seq_59 | $empty

    seq_61 ::= MAPSTO IDENTIFIER

    opt_62 ::= seq_61 | $empty

    seq_63 ::= COMMA binding

    list_64 ::= $empty | list_64 seq_63

    seq_65 ::= binding list_64

    opt_66 ::= seq_65 | $empty

    seq_67 ::= LPAREN opt_66 RPAREN

    opt_68 ::= seq_67 | $empty

    list_69 ::= $empty | list_69 statement

    list_71 ::= $empty | list_71 statement

    grp_70 ::= statement | LBRACE list_71 RBRACE

    list_74 ::= $empty | list_74 statement

    grp_73 ::= statement | LBRACE list_74 RBRACE

    grp_72 ::= ELSE grp_73

    opt_75 ::= grp_72 | $empty

    list_76 ::= $empty | list_76 statement

    grp_77 ::= STRING | IDENTIFIER

    seq_78 ::= COMMA iterator

    list_79 ::= $empty | list_79 seq_78

    seq_80 ::= COMMA iterator

    list_81 ::= $empty | list_81 seq_80

    seq_82 ::= COMMA oclExpression

    list_83 ::= $empty | list_83 seq_82

    seq_84 ::= oclExpression list_83

    opt_85 ::= seq_84 | $empty

    seq_86 ::= COMMA oclExpression

    list_87 ::= $empty | list_87 seq_86

    seq_88 ::= oclExpression list_87

    opt_89 ::= seq_88 | $empty

    seq_90 ::= COMMA oclExpression

    list_91 ::= $empty | list_91 seq_90

    seq_92 ::= oclExpression list_91

    opt_93 ::= seq_92 | $empty

    seq_94 ::= COMMA oclExpression

    list_95 ::= $empty | list_95 seq_94

    seq_96 ::= oclExpression list_95

    opt_97 ::= seq_96 | $empty

    seq_98 ::= COMMA oclExpression

    list_99 ::= $empty | list_99 seq_98

    seq_100 ::= oclExpression list_99

    opt_101 ::= seq_100 | $empty

    seq_102 ::= COMMA oclExpression

    list_103 ::= $empty | list_103 seq_102

    seq_104 ::= oclExpression list_103

    opt_105 ::= seq_104 | $empty

    seq_106 ::= COMMA mapElement

    list_107 ::= $empty | list_107 seq_106

    seq_108 ::= mapElement list_107

    opt_109 ::= seq_108 | $empty

    seq_110 ::= COMMA tuplePart

    list_111 ::= $empty | list_111 seq_110

    seq_112 ::= tuplePart list_111

    opt_113 ::= seq_112 | $empty

    seq_114 ::= COLON oclType

    opt_115 ::= seq_114 | $empty

    seq_116 ::= COMMA tupleTypeAttribute

    list_117 ::= $empty | list_117 seq_116

    seq_118 ::= tupleTypeAttribute list_117

    opt_119 ::= seq_118 | $empty

    grp_121 ::= operationCallExp | navigationOrAttributeCallExp

    grp_122 ::= iteratorExp | iterateExp | collectionOperationCallExp

    grp_120 ::= DOT grp_121 | ARROW grp_122

    list_123 ::= $empty | list_123 grp_120

    grp_124 ::= STAR priority_1 | SLASH priority_1 | DIV priority_1 | MOD priority_1

    list_125 ::= $empty | list_125 grp_124

    grp_126 ::= PLUS priority_2 | MINUS priority_2

    list_127 ::= $empty | list_127 grp_126

    grp_128 ::= EQ priority_3 | GT priority_3 | LT priority_3 | GTEQ priority_3 | LTEQ priority_3 | LTGT priority_3

    list_129 ::= $empty | list_129 grp_128

    grp_130 ::= AND priority_4 | OR priority_4 | XOR priority_4 | IMPLIES priority_4

    list_131 ::= $empty | list_131 grp_130

    opt_132 ::= NODEFAULT | $empty

    opt_133 ::= ABSTRACT | $empty

    opt_134 ::= REFINING | $empty

    seq_135 ::= EXTENDS IDENTIFIER

    opt_136 ::= seq_135 | $empty

    list_137 ::= $empty | list_137 ruleVariableDeclaration

    seq_138 ::= USING LBRACE list_137 RBRACE

    opt_139 ::= seq_138 | $empty

    opt_140 ::= outPattern | $empty

    opt_141 ::= actionBlock | $empty

%End
