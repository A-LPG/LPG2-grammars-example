-- AUTO-GENERATED from antlr/grammars-v4 z by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=ZParser
%options package=lpg.grammars.z
%options template=dtParserTemplateF.gi
%options import_terminals=ZLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    specification
%End

%Rules
    specification ::= list_2

    section ::= ZED SECTION NAME PARENTS opt_3 END list_4
           | ZED SECTION NAME END list_5

    paragraph ::= ZED LEFT_SQUARE_BRACKET formals RIGHT_SQUARE_BRACKET opt_6 END
           | AX schemaText END
           | SCH NAME opt_7 schemaText END
           | AX GEN LEFT_SQUARE_BRACKET formals RIGHT_SQUARE_BRACKET opt_8 schemaText END
           | SCH GEN NAME LEFT_SQUARE_BRACKET formals RIGHT_SQUARE_BRACKET opt_9 schemaText END
           | ZED opt_10 declNameExpression END
           | ZED declName LEFT_SQUARE_BRACKET formals RIGHT_SQUARE_BRACKET DEFINE_EQUAL expression END
           | ZED genName DEFINE_EQUAL expression END
           | ZED freetype list_12 END
           | ZED CONJECTURE predicate END
           | ZED LEFT_SQUARE_BRACKET formals RIGHT_SQUARE_BRACKET CONJECTURE predicate END
           | ZED operatorTemplate END

    freetype ::= NAME FREE_EQUALS branch list_14

    branch ::= declName opt_16

    formals ::= NAME list_18

    predicate ::= predicate NL predicate
           | predicate SEMICOLON predicate
           | FOR_ALL schemaText SPOT predicate
           | THERE_EXISTS schemaText SPOT predicate
           | UNIQUE_EXISTS schemaText SPOT predicate
           | predicate LEFT_RIGHT_DOUBLE_ARROW predicate
           | predicate RIGHTWARDS_DOUBLE_ARROW predicate
           | predicate LOGICAL_OR predicate
           | predicate LOGICAL_AND predicate
           | NOT_SIGN predicate
           | relation
           | w_expression_0
           | TRUE
           | FALSE
           | LEFT_PARENTHESIS predicate RIGHT_PARENTHESIS

    expression ::= FOR_ALL schemaText SPOT expression
           | THERE_EXISTS schemaText SPOT expression
           | UNIQUE_EXISTS schemaText SPOT expression
           | GREEK_SMALL_LETTER_LAMBDA schemaText SPOT expression
           | GREEK_SMALL_LETTER_MU schemaText SPOT expression
           | LET declNameExpression list_20 SPOT expression
           | expression LEFT_RIGHT_DOUBLE_ARROW expression
           | expression RIGHTWARDS_DOUBLE_ARROW expression
           | expression LOGICAL_OR expression
           | expression LOGICAL_AND expression
           | NOT_SIGN expression
           | IF predicate THEN expression ELSE expression
           | expression SCHEMA_COMPOSITION expression
           | expression SCHEMA_PIPING expression
           | expression REVERSE_SOLIDUS LEFT_PARENTHESIS declName list_22 RIGHT_PARENTHESIS
           | expression SCHEMA_PROJECTION expression
           | PRE_KEY expression
           | expression list_24
           | POWERSET expression
           | PRE expression
           | L opt_25 grp_26 expression
           | expression POST
           | expression EL opt_28 grp_29
           | opt_31 I expression
           | expression I expression
           | expression EL opt_32 grp_33 expression
           | L opt_35 grp_36
           | expression expression
           | expression STROKE
           | expression LEFT_SQUARE_BRACKET declName SOLIDUS declName list_39 RIGHT_SQUARE_BRACKET
           | expression FULL_STOP refName
           | expression FULL_STOP NUMERAL
           | GREEK_SMALL_LETTER_THETA expression list_40
           | refName
           | refName LEFT_SQUARE_BRACKET opt_41 RIGHT_SQUARE_BRACKET
           | w_NUMERAL_0
           | LEFT_CURLY_BRACKET opt_42 RIGHT_CURLY_BRACKET
           | LEFT_CURLY_BRACKET schemaText SPOT expression RIGHT_CURLY_BRACKET
           | LEFT_CURLY_BRACKET schemaText RIGHT_CURLY_BRACKET
           | LEFT_SQUARE_BRACKET schemaText RIGHT_SQUARE_BRACKET
           | LEFT_BINDING_BRACKET opt_46 RIGHT_BINDING_BRACKET
           | LEFT_PARENTHESIS expression list_48 RIGHT_PARENTHESIS
           | LEFT_PARENTHESIS GREEK_SMALL_LETTER_MU schemaText RIGHT_PARENTHESIS
           | LEFT_PARENTHESIS expression RIGHT_PARENTHESIS

    schemaText ::= opt_49 opt_50 opt_51 opt_55 opt_56

    declPart ::= declaration list_59

    declNameExpression ::= declName DEFINE_EQUAL expression opt_60

    declaration ::= declName list_62 COLON expression
           | declNameExpression
           | w_expression_1

    operatorTemplate ::= RELATION template_
           | FUNCTION categoryTemplate
           | GENERIC categoryTemplate

    categoryTemplate ::= w_prefixTemplate_0
           | w_postfixTemplate_0
           | prec assoc infixTemplate
           | w_nofixTemplate_0

    prec ::= w_NUMERAL_1

    assoc ::= LEFTASSOC
           | RIGHTASSOC

    template_ ::= w_prefixTemplate_1
           | w_postfixTemplate_1
           | infixTemplate
           | w_nofixTemplate_1

    prefixTemplate ::= LEFT_PARENTHESIS grp_63 RIGHT_PARENTHESIS

    postfixTemplate ::= LEFT_PARENTHESIS postfixName RIGHT_PARENTHESIS

    infixTemplate ::= LEFT_PARENTHESIS infixName RIGHT_PARENTHESIS

    nofixTemplate ::= LEFT_PARENTHESIS nofixName RIGHT_PARENTHESIS

    declName ::= w_NAME_0
           | opName

    refName ::= w_NAME_1
           | LEFT_PARENTHESIS opName RIGHT_PARENTHESIS

    opName ::= w_prefixName_0
           | postfixName
           | infixName
           | nofixName

    prefixName ::= PRE ARGUMENT
           | PREP ARGUMENT
           | L list_65 grp_66 ARGUMENT
           | LP list_68 grp_69 ARGUMENT

    postfixName ::= ARGUMENT POST
           | ARGUMENT POSTP
           | ARGUMENT EL list_71 grp_72
           | ARGUMENT ELP list_74 grp_75

    infixName ::= ARGUMENT I ARGUMENT
           | ARGUMENT IP ARGUMENT
           | ARGUMENT EL list_77 grp_78 ARGUMENT
           | ARGUMENT ELP list_80 grp_81 ARGUMENT

    nofixName ::= L list_83 grp_84
           | LP list_86 grp_87

    genName ::= prefixGenName
           | postfixGenName
           | infixGenName
           | nofixGenName

    prefixGenName ::= PRE NAME
           | L list_90 NAME grp_91 NAME

    postfixGenName ::= NAME POST
           | NAME EL list_94 NAME grp_95

    infixGenName ::= NAME I NAME
           | NAME EL list_98 NAME grp_99 NAME

    nofixGenName ::= L list_102 NAME grp_103

    relation ::= prefixRel
           | postfixRel
           | infixRel
           | nofixRel

    prefixRel ::= PREP expression
           | LP opt_104 grp_105 expression

    postfixRel ::= expression POSTP
           | expression ELP opt_107 grp_108

    infixRel ::= opt_110 list_113
           | expression list_116
           | opt_117 ELP opt_118 grp_119 expression
           | expression ELP opt_121 grp_122 expression

    nofixRel ::= LP opt_124 grp_125

    application ::= prefixApp
           | postfixApp
           | infixApp
           | nofixApp

    prefixApp ::= PRE expression
           | L opt_127 grp_128 expression

    postfixApp ::= expression POST
           | expression EL opt_130 grp_131

    infixApp ::= expression I expression
           | expression EL opt_133 grp_134 expression

    nofixApp ::= L opt_136 grp_137

    expSep ::= list_141

    expressionList ::= expression list_143

    grp_1 ::= TEXT
           | section
           | paragraph

    list_2 ::= $empty
           | list_2 grp_1

    opt_3 ::= formals
           | $empty

    list_4 ::= $empty
           | list_4 paragraph

    list_5 ::= $empty
           | list_5 paragraph

    opt_6 ::= w_NL_0
           | $empty

    opt_7 ::= w_NL_1
           | $empty

    opt_8 ::= w_NL_2
           | $empty

    opt_9 ::= w_NL_3
           | $empty

    opt_10 ::= w_NL_4
           | $empty

    seq_11 ::= AMPERSAND freetype

    list_12 ::= $empty
           | list_12 seq_11

    seq_13 ::= VERTICAL_LINE branch

    list_14 ::= $empty
           | list_14 seq_13

    seq_15 ::= LEFT_DOUBLE_ANGLE_BRACKET expression RIGHT_DOUBLE_ANGLE_BRACKET

    opt_16 ::= seq_15
           | $empty

    seq_17 ::= COMMA NAME

    list_18 ::= $empty
           | list_18 seq_17

    seq_19 ::= SEMICOLON declNameExpression

    list_20 ::= $empty
           | list_20 seq_19

    seq_21 ::= COMMA declName

    list_22 ::= $empty
           | list_22 seq_21

    seq_23 ::= MULTIPLICATION_SIGN expression

    list_24 ::= seq_23
           | list_24 seq_23

    opt_25 ::= w_expSep_0
           | $empty

    opt_27 ::= w_expressionList_0
           | $empty

    grp_26 ::= expression ERE
           | opt_27 SRE

    opt_28 ::= w_expSep_1
           | $empty

    opt_30 ::= w_expressionList_1
           | $empty

    grp_29 ::= expression ER
           | opt_30 SR

    opt_31 ::= w_expression_2
           | $empty

    opt_32 ::= w_expSep_2
           | $empty

    opt_34 ::= w_expressionList_2
           | $empty

    grp_33 ::= expression ERE
           | opt_34 SRE

    opt_35 ::= w_expSep_3
           | $empty

    opt_37 ::= w_expressionList_3
           | $empty

    grp_36 ::= expression ER
           | opt_37 SR

    seq_38 ::= COMMA declName SOLIDUS declName

    list_39 ::= $empty
           | list_39 seq_38

    list_40 ::= $empty
           | list_40 STROKE

    opt_41 ::= w_expressionList_4
           | $empty

    opt_42 ::= w_expressionList_5
           | $empty

    seq_43 ::= COMMA declNameExpression

    list_44 ::= $empty
           | list_44 seq_43

    seq_45 ::= declNameExpression list_44

    opt_46 ::= seq_45
           | $empty

    seq_47 ::= COMMA expression

    list_48 ::= seq_47
           | list_48 seq_47

    opt_49 ::= w_NL_5
           | $empty

    opt_50 ::= declPart
           | $empty

    opt_51 ::= w_NL_6
           | $empty

    opt_52 ::= w_NL_7
           | $empty

    opt_53 ::= w_NL_8
           | $empty

    seq_54 ::= VERTICAL_LINE opt_52 predicate opt_53

    opt_55 ::= seq_54
           | $empty

    opt_56 ::= w_NL_9
           | $empty

    grp_58 ::= SEMICOLON
           | w_NL_10

    grp_57 ::= grp_58 declaration

    list_59 ::= $empty
           | list_59 grp_57

    opt_60 ::= w_NL_11
           | $empty

    seq_61 ::= COMMA declName

    list_62 ::= $empty
           | list_62 seq_61

    grp_63 ::= w_prefixName_1
           | POWERSET ARGUMENT

    grp_64 ::= ARGUMENT ES
           | LIST SS

    list_65 ::= $empty
           | list_65 grp_64

    grp_66 ::= ARGUMENT ERE
           | LIST SRE

    grp_67 ::= ARGUMENT ES
           | LIST SS

    list_68 ::= $empty
           | list_68 grp_67

    grp_69 ::= ARGUMENT EREP
           | LIST SREP

    grp_70 ::= ARGUMENT ES
           | LIST SS

    list_71 ::= $empty
           | list_71 grp_70

    grp_72 ::= ARGUMENT ER
           | LIST SR

    grp_73 ::= ARGUMENT ES
           | LIST SS

    list_74 ::= $empty
           | list_74 grp_73

    grp_75 ::= ARGUMENT ERP
           | LIST SRP

    grp_76 ::= ARGUMENT ES
           | LIST SS

    list_77 ::= $empty
           | list_77 grp_76

    grp_78 ::= ARGUMENT ERE
           | LIST SRE

    grp_79 ::= ARGUMENT ES
           | LIST SS

    list_80 ::= $empty
           | list_80 grp_79

    grp_81 ::= ARGUMENT EREP
           | LIST SREP

    grp_82 ::= ARGUMENT ES
           | LIST SS

    list_83 ::= $empty
           | list_83 grp_82

    grp_84 ::= ARGUMENT ER
           | LIST SR

    grp_85 ::= ARGUMENT ES
           | LIST SS

    list_86 ::= $empty
           | list_86 grp_85

    grp_87 ::= ARGUMENT ERP
           | LIST SRP

    grp_89 ::= w_ES_0
           | w_SS_0

    grp_88 ::= NAME grp_89

    list_90 ::= $empty
           | list_90 grp_88

    grp_91 ::= w_ERE_0
           | w_SRE_0

    grp_93 ::= w_ES_1
           | w_SS_1

    grp_92 ::= NAME grp_93

    list_94 ::= $empty
           | list_94 grp_92

    grp_95 ::= w_ER_0
           | w_SR_0

    grp_97 ::= w_ES_2
           | w_SS_2

    grp_96 ::= NAME grp_97

    list_98 ::= $empty
           | list_98 grp_96

    grp_99 ::= w_ERE_1
           | w_SRE_1

    grp_101 ::= w_ES_3
           | w_SS_3

    grp_100 ::= NAME grp_101

    list_102 ::= $empty
           | list_102 grp_100

    grp_103 ::= w_ER_1
           | w_SR_1

    opt_104 ::= w_expSep_4
           | $empty

    opt_106 ::= w_expressionList_6
           | $empty

    grp_105 ::= expression EREP
           | opt_106 SREP

    opt_107 ::= w_expSep_5
           | $empty

    opt_109 ::= w_expressionList_7
           | $empty

    grp_108 ::= expression ERP
           | opt_109 SRP

    opt_110 ::= w_expression_3
           | $empty

    grp_112 ::= w_ELEMENT_OF_0
           | w_EQUALS_SIGN_0
           | w_IP_0

    grp_111 ::= grp_112 expression

    list_113 ::= grp_111
           | list_113 grp_111

    grp_115 ::= w_ELEMENT_OF_1
           | w_EQUALS_SIGN_1
           | w_IP_1

    grp_114 ::= grp_115 expression

    list_116 ::= grp_114
           | list_116 grp_114

    opt_117 ::= w_expression_4
           | $empty

    opt_118 ::= w_expSep_6
           | $empty

    opt_120 ::= w_expressionList_8
           | $empty

    grp_119 ::= expression EREP
           | opt_120 SREP

    opt_121 ::= w_expSep_7
           | $empty

    opt_123 ::= w_expressionList_9
           | $empty

    grp_122 ::= expression EREP
           | opt_123 SREP

    opt_124 ::= w_expSep_8
           | $empty

    opt_126 ::= w_expressionList_10
           | $empty

    grp_125 ::= expression ERP
           | opt_126 SRP

    opt_127 ::= w_expSep_9
           | $empty

    opt_129 ::= w_expressionList_11
           | $empty

    grp_128 ::= expression ERE
           | opt_129 SRE

    opt_130 ::= w_expSep_10
           | $empty

    opt_132 ::= w_expressionList_12
           | $empty

    grp_131 ::= expression ER
           | opt_132 SR

    opt_133 ::= w_expSep_11
           | $empty

    opt_135 ::= w_expressionList_13
           | $empty

    grp_134 ::= expression ERE
           | opt_135 SRE

    opt_136 ::= w_expSep_12
           | $empty

    opt_138 ::= w_expressionList_14
           | $empty

    grp_137 ::= expression ER
           | opt_138 SR

    opt_140 ::= w_expressionList_15
           | $empty

    grp_139 ::= expression ES
           | opt_140 SS

    list_141 ::= grp_139
           | list_141 grp_139

    seq_142 ::= COMMA expression

    list_143 ::= $empty
           | list_143 seq_142

    w_expression_0 ::= expression

    w_expression_1 ::= expression

    w_expression_2 ::= expression

    w_expression_3 ::= expression

    w_expression_4 ::= expression

    w_NUMERAL_0 ::= NUMERAL

    w_NUMERAL_1 ::= NUMERAL

    w_prefixTemplate_0 ::= prefixTemplate

    w_prefixTemplate_1 ::= prefixTemplate

    w_postfixTemplate_0 ::= postfixTemplate

    w_postfixTemplate_1 ::= postfixTemplate

    w_nofixTemplate_0 ::= nofixTemplate

    w_nofixTemplate_1 ::= nofixTemplate

    w_NAME_0 ::= NAME

    w_NAME_1 ::= NAME

    w_prefixName_0 ::= prefixName

    w_prefixName_1 ::= prefixName

    w_NL_0 ::= NL

    w_NL_1 ::= NL

    w_NL_2 ::= NL

    w_NL_3 ::= NL

    w_NL_4 ::= NL

    w_NL_5 ::= NL

    w_NL_6 ::= NL

    w_NL_7 ::= NL

    w_NL_8 ::= NL

    w_NL_9 ::= NL

    w_NL_10 ::= NL

    w_NL_11 ::= NL

    w_expSep_0 ::= expSep

    w_expSep_1 ::= expSep

    w_expSep_2 ::= expSep

    w_expSep_3 ::= expSep

    w_expSep_4 ::= expSep

    w_expSep_5 ::= expSep

    w_expSep_6 ::= expSep

    w_expSep_7 ::= expSep

    w_expSep_8 ::= expSep

    w_expSep_9 ::= expSep

    w_expSep_10 ::= expSep

    w_expSep_11 ::= expSep

    w_expSep_12 ::= expSep

    w_expressionList_0 ::= expressionList

    w_expressionList_1 ::= expressionList

    w_expressionList_2 ::= expressionList

    w_expressionList_3 ::= expressionList

    w_expressionList_4 ::= expressionList

    w_expressionList_5 ::= expressionList

    w_expressionList_6 ::= expressionList

    w_expressionList_7 ::= expressionList

    w_expressionList_8 ::= expressionList

    w_expressionList_9 ::= expressionList

    w_expressionList_10 ::= expressionList

    w_expressionList_11 ::= expressionList

    w_expressionList_12 ::= expressionList

    w_expressionList_13 ::= expressionList

    w_expressionList_14 ::= expressionList

    w_expressionList_15 ::= expressionList

    w_ES_0 ::= ES

    w_ES_1 ::= ES

    w_ES_2 ::= ES

    w_ES_3 ::= ES

    w_SS_0 ::= SS

    w_SS_1 ::= SS

    w_SS_2 ::= SS

    w_SS_3 ::= SS

    w_ERE_0 ::= ERE

    w_ERE_1 ::= ERE

    w_SRE_0 ::= SRE

    w_SRE_1 ::= SRE

    w_ER_0 ::= ER

    w_ER_1 ::= ER

    w_SR_0 ::= SR

    w_SR_1 ::= SR

    w_ELEMENT_OF_0 ::= ELEMENT_OF

    w_ELEMENT_OF_1 ::= ELEMENT_OF

    w_EQUALS_SIGN_0 ::= EQUALS_SIGN

    w_EQUALS_SIGN_1 ::= EQUALS_SIGN

    w_IP_0 ::= IP

    w_IP_1 ::= IP


%End
