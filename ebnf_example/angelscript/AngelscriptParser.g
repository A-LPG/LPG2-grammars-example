-- AUTO-GENERATED from antlr/grammars-v4 angelscript by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
%Options fp=AngelscriptParser
%options package=lpg.grammars.angelscript
%options template=dtParserTemplateF.gi
%options import_terminals=AngelscriptLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    start_
%End

%Rules
    start_ ::= script

    script ::= list_2

    class_ ::= list_4 CLASS IDENTIFIER grp_5

    typdef ::= TYPEDEF PRIMTYPE IDENTIFIER SEMI

    namespace ::= NAMESPACE IDENTIFIER LBRACE script RBRACE

    func_ ::= list_13 opt_15 opt_18 IDENTIFIER paramlist opt_19 opt_20 grp_21

    interface_ ::= list_23 INTERFACE IDENTIFIER grp_24

    var_ ::= opt_32 type_ IDENTIFIER opt_35 list_40 SEMI

    import_ ::= IMPORT type_ opt_41 IDENTIFIER paramlist FUNCATTR FROM LITERAL SEMI

    enum_ ::= list_43 ENUM IDENTIFIER grp_44

    funcdef ::= list_52 FUNCDEF type_ opt_53 IDENTIFIER paramlist SEMI

    virtprop ::= opt_55 type_ opt_56 IDENTIFIER LBRACE list_61 RBRACE

    mixin_ ::= MIXIN class_

    intfmthd ::= type_ opt_62 IDENTIFIER paramlist opt_63 SEMI

    statblock ::= LBRACE list_65 RBRACE

    paramlist ::= LPAREN opt_75 RPAREN

    typemod ::= opt_79

    type_ ::= opt_80 scope datatype list_84 list_87

    initlist ::= LBRACE opt_89 list_93 RBRACE

    scope ::= opt_94 list_96 opt_102

    datatype ::= IDENTIFIER
           | PRIMTYPE
           | QUESTION
           | AUTO

    statement ::= if_
           | for_
           | while_
           | return_
           | statblock
           | break_
           | continue_
           | dowhile
           | switch_
           | exprstat
           | try_

    switch_ ::= SWITCH LPAREN assign RPAREN LBRACE list_103 RBRACE

    break_ ::= BREAK SEMI

    for_ ::= FOR LPAREN grp_104 exprstat opt_108 RPAREN statement

    while_ ::= WHILE LPAREN assign RPAREN statement

    dowhile ::= DO statement WHILE LPAREN assign RPAREN SEMI

    if_ ::= IF LPAREN assign RPAREN statement opt_110

    continue_ ::= CONTINUE SEMI

    exprstat ::= opt_111 SEMI

    try_ ::= TRY statblock CATCH statblock

    return_ ::= RETURN opt_112 SEMI

    case_ ::= grp_113 COLON list_114

    expr ::= exprterm list_116

    exprterm ::= opt_118 initlist
           | list_119 exprvalue list_120

    exprvalue ::= VOID
           | constructcall
           | funccall
           | varaccess
           | cast
           | LITERAL
           | LPAREN assign RPAREN
           | lambda_

    constructcall ::= type_ arglist

    exprpostop ::= DOT grp_121
           | LBRACKET opt_123 assign list_126 RBRACKET
           | arglist
           | PLUSPLUS
           | MINUSMINUS

    cast ::= CAST LT type_ GT LPAREN assign RPAREN

    lambda_ ::= FUNCTION LPAREN opt_134 RPAREN statblock

    funccall ::= scope IDENTIFIER arglist

    varaccess ::= scope IDENTIFIER

    arglist ::= LPAREN opt_136 assign list_140 RPAREN

    assign ::= condition opt_142

    condition ::= expr opt_144

    exprop ::= MATHOP
           | COMPOP
           | LOGICOP
           | BITOP

    grp_1 ::= import_ | enum_ | typdef | class_ | mixin_ | interface_ | funcdef | virtprop | var_ | func_ | namespace | SEMI

    list_2 ::= grp_1 | list_2 grp_1

    grp_3 ::= SHARED | ABSTRACT | FINAL | EXTERNAL

    list_4 ::= $empty | list_4 grp_3

    seq_6 ::= COMMA IDENTIFIER

    list_7 ::= $empty | list_7 seq_6

    seq_8 ::= COLON IDENTIFIER list_7

    opt_9 ::= seq_8 | $empty

    grp_10 ::= virtprop | func_ | var_ | funcdef

    list_11 ::= $empty | list_11 grp_10

    grp_5 ::= SEMI | opt_9 LBRACE list_11 RBRACE

    grp_12 ::= SHARED | EXTERNAL

    list_13 ::= $empty | list_13 grp_12

    grp_14 ::= PRIVATE | PROTECTED

    opt_15 ::= grp_14 | $empty

    opt_17 ::= AMP | $empty

    grp_16 ::= type_ opt_17 | TILDE

    opt_18 ::= grp_16 | $empty

    opt_19 ::= CONST | $empty

    opt_20 ::= FUNCATTR | $empty

    grp_21 ::= SEMI | statblock

    grp_22 ::= EXTERNAL | SHARED

    list_23 ::= $empty | list_23 grp_22

    seq_25 ::= COMMA IDENTIFIER

    list_26 ::= $empty | list_26 seq_25

    seq_27 ::= COLON IDENTIFIER list_26

    opt_28 ::= seq_27 | $empty

    grp_29 ::= virtprop | intfmthd

    list_30 ::= $empty | list_30 grp_29

    grp_24 ::= SEMI | opt_28 LBRACE list_30 RBRACE

    grp_31 ::= PRIVATE | PROTECTED

    opt_32 ::= grp_31 | $empty

    grp_34 ::= initlist | expr

    grp_33 ::= EQ grp_34 | arglist

    opt_35 ::= grp_33 | $empty

    grp_38 ::= initlist | expr

    grp_37 ::= EQ grp_38 | arglist

    opt_39 ::= grp_37 | $empty

    grp_36 ::= COMMA IDENTIFIER opt_39

    list_40 ::= $empty | list_40 grp_36

    opt_41 ::= AMP | $empty

    grp_42 ::= SHARED | EXTERNAL

    list_43 ::= $empty | list_43 grp_42

    seq_45 ::= EQ expr

    opt_46 ::= seq_45 | $empty

    seq_47 ::= EQ expr

    opt_48 ::= seq_47 | $empty

    seq_49 ::= COMMA IDENTIFIER opt_48

    list_50 ::= $empty | list_50 seq_49

    grp_44 ::= SEMI | LBRACE IDENTIFIER opt_46 list_50 RBRACE

    grp_51 ::= EXTERNAL | SHARED

    list_52 ::= $empty | list_52 grp_51

    opt_53 ::= AMP | $empty

    grp_54 ::= PRIVATE | PROTECTED

    opt_55 ::= grp_54 | $empty

    opt_56 ::= AMP | $empty

    grp_58 ::= GET | SET

    opt_59 ::= CONST | $empty

    grp_60 ::= statblock | SEMI

    grp_57 ::= grp_58 opt_59 FUNCATTR grp_60

    list_61 ::= $empty | list_61 grp_57

    opt_62 ::= AMP | $empty

    opt_63 ::= CONST | $empty

    grp_64 ::= var_ | statement

    list_65 ::= $empty | list_65 grp_64

    opt_67 ::= IDENTIFIER | $empty

    seq_68 ::= EQ expr

    opt_69 ::= seq_68 | $empty

    opt_70 ::= IDENTIFIER | $empty

    seq_71 ::= EQ expr

    opt_72 ::= seq_71 | $empty

    seq_73 ::= COMMA type_ typemod opt_70 opt_72

    list_74 ::= $empty | list_74 seq_73

    grp_66 ::= VOID | type_ typemod opt_67 opt_69 list_74

    opt_75 ::= grp_66 | $empty

    grp_77 ::= IN | OUT | INOUT

    opt_78 ::= grp_77 | $empty

    grp_76 ::= AMP opt_78

    opt_79 ::= grp_76 | $empty

    opt_80 ::= CONST | $empty

    seq_81 ::= COMMA type_

    list_82 ::= $empty | list_82 seq_81

    seq_83 ::= LT type_ list_82 GT

    list_84 ::= $empty | list_84 seq_83

    opt_86 ::= CONST | $empty

    grp_85 ::= LBRACKET RBRACKET | AT opt_86

    list_87 ::= $empty | list_87 grp_85

    grp_88 ::= assign | initlist

    opt_89 ::= grp_88 | $empty

    grp_91 ::= assign | initlist

    opt_92 ::= grp_91 | $empty

    grp_90 ::= COMMA opt_92

    list_93 ::= $empty | list_93 grp_90

    opt_94 ::= COLONCOLON | $empty

    seq_95 ::= IDENTIFIER COLONCOLON

    list_96 ::= $empty | list_96 seq_95

    seq_97 ::= COMMA type_

    list_98 ::= $empty | list_98 seq_97

    seq_99 ::= LT type_ list_98 GT

    opt_100 ::= seq_99 | $empty

    seq_101 ::= IDENTIFIER opt_100 COLONCOLON

    opt_102 ::= seq_101 | $empty

    list_103 ::= $empty | list_103 case_

    grp_104 ::= var_ | exprstat

    seq_105 ::= COMMA assign

    list_106 ::= $empty | list_106 seq_105

    seq_107 ::= assign list_106

    opt_108 ::= seq_107 | $empty

    seq_109 ::= ELSE statement

    opt_110 ::= seq_109 | $empty

    opt_111 ::= assign | $empty

    opt_112 ::= assign | $empty

    grp_113 ::= CASE expr | DEFAULT

    list_114 ::= $empty | list_114 statement

    seq_115 ::= exprop exprterm

    list_116 ::= $empty | list_116 seq_115

    seq_117 ::= type_ EQ

    opt_118 ::= seq_117 | $empty

    list_119 ::= $empty | list_119 EXPRPREOP

    list_120 ::= $empty | list_120 exprpostop

    grp_121 ::= funccall | IDENTIFIER

    seq_122 ::= IDENTIFIER COLON

    opt_123 ::= seq_122 | $empty

    opt_124 ::= IDENTIFIER | $empty

    seq_125 ::= COMMA opt_124 COLON assign

    list_126 ::= $empty | list_126 seq_125

    seq_127 ::= type_ typemod

    opt_128 ::= seq_127 | $empty

    seq_129 ::= type_ typemod

    opt_130 ::= seq_129 | $empty

    seq_131 ::= COMMA opt_130 IDENTIFIER

    list_132 ::= $empty | list_132 seq_131

    seq_133 ::= opt_128 IDENTIFIER list_132

    opt_134 ::= seq_133 | $empty

    seq_135 ::= IDENTIFIER COLON

    opt_136 ::= seq_135 | $empty

    seq_137 ::= IDENTIFIER COLON

    opt_138 ::= seq_137 | $empty

    seq_139 ::= COMMA opt_138 assign

    list_140 ::= $empty | list_140 seq_139

    seq_141 ::= ASSIGNOP assign

    opt_142 ::= seq_141 | $empty

    seq_143 ::= QUESTION assign COLON assign

    opt_144 ::= seq_143 | $empty

%End
