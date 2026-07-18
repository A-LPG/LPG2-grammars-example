-- LIMITATION: INDENT/DEDENT are optional ($empty); lexer does not track indentation.
-- NEWLINE is significant; curated examples avoid indent-sensitive suites where needed.
-- AUTO-GENERATED from antlr/grammars-v4 python/python2-js by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=PythonPython2JsParser
%options package=lpg.grammars.python.python2_js
%options template=dtParserTemplateF.gi
%options import_terminals=PythonPython2JsLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    file_input
%End

%Rules
    header ::= members single_input NEWLINE
           | simple_stmt
           | compound_stmt NEWLINE

    -- ENDMARKER not emitted by lexer; match python3 port (list of stmts to EOF).
    file_input ::= list_2

    eval_input ::= testlist list_3 ENDMARKER

    decorator ::= AT dotted_name opt_6 NEWLINE

    decorators ::= list_7

    decorated ::= decorators grp_8

    funcdef ::= DEF IDENTIFIER parameters COLON suite

    parameters ::= LPAREN opt_9 RPAREN

    varargslist ::= grp_10

    fpdef ::= IDENTIFIER
           | LPAREN fplist RPAREN

    fplist ::= fpdef list_26 opt_27

    stmt ::= simple_stmt
           | compound_stmt

    simple_stmt ::= small_stmt list_29 opt_30 NEWLINE

    small_stmt ::= grp_31

    expr_stmt ::= testlist grp_32

    augassign ::= grp_37

    print_stmt ::= IDENTIFIER grp_38

    del_stmt ::= DEL exprlist

    pass_stmt ::= PASS

    flow_stmt ::= break_stmt
           | continue_stmt
           | return_stmt
           | raise_stmt
           | yield_stmt

    break_stmt ::= BREAK

    continue_stmt ::= CONTINUE

    return_stmt ::= RETURN opt_49

    yield_stmt ::= yield_expr

    raise_stmt ::= RAISE opt_55

    import_stmt ::= import_name
           | import_from

    import_name ::= IMPORT dotted_as_names

    import_from ::= grp_56

    import_as_name ::= IDENTIFIER opt_62

    dotted_as_name ::= dotted_name opt_64

    import_as_names ::= import_as_name list_66 opt_67

    dotted_as_names ::= dotted_as_name list_69

    dotted_name ::= IDENTIFIER list_71

    global_stmt ::= GLOBAL IDENTIFIER list_73

    exec_stmt ::= EXEC expr opt_77

    assert_stmt ::= ASSERT test opt_79

    compound_stmt ::= if_stmt
           | while_stmt
           | for_stmt
           | try_stmt
           | with_stmt
           | funcdef
           | classdef
           | decorated

    if_stmt ::= IF test COLON suite list_81 opt_83

    while_stmt ::= WHILE test COLON suite opt_85

    for_stmt ::= FOR exprlist IN testlist COLON suite opt_87

    try_stmt ::= grp_88

    with_stmt ::= WITH with_item list_97 COLON suite

    with_item ::= test opt_99

    except_clause ::= EXCEPT opt_104

    suite ::= simple_stmt
           | NEWLINE indent_opt list_105 dedent_opt

    testlist_safe ::= old_test opt_110

    old_test ::= or_test
           | old_lambdef

    old_lambdef ::= LAMBDA opt_111 COLON old_test

    test ::= or_test opt_113
           | lambdef

    or_test ::= and_test list_115

    and_test ::= not_test list_117

    not_test ::= NOT not_test
           | comparison

    comparison ::= expr list_119

    comp_op ::= LT
           | GT
           | EQEQ
           | GTEQ
           | LTEQ
           | LTGT
           | NOTEQ
           | IN
           | NOT IN
           | IS
           | IS NOT

    expr ::= xor_expr list_121

    xor_expr ::= and_expr list_123

    and_expr ::= shift_expr list_125

    shift_expr ::= arith_expr list_128

    arith_expr ::= term list_131

    term ::= factor list_134

    factor ::= grp_135 factor
           | power

    power ::= atom list_136 opt_138

    atom ::= grp_139

    listmaker ::= test grp_145

    testlist_comp ::= test grp_149

    lambdef ::= LAMBDA opt_153 COLON test

    trailer ::= LPAREN opt_154 RPAREN
           | LBRACKET subscriptlist RBRACKET
           | DOT IDENTIFIER

    subscriptlist ::= subscript list_156 opt_157

    subscript ::= DOT DOT DOT
           | test
           | opt_158 COLON opt_159 opt_160

    sliceop ::= COLON opt_161

    exprlist ::= expr list_163 opt_164

    testlist ::= test list_166 opt_167

    dictorsetmaker ::= grp_168

    classdef ::= CLASS IDENTIFIER opt_181 COLON suite

    arglist ::= list_183 grp_184

    argument ::= test opt_190
           | test EQ test

    list_iter ::= list_for
           | list_if

    list_for ::= FOR exprlist IN testlist_safe opt_191

    list_if ::= IF old_test opt_192

    comp_iter ::= comp_for
           | comp_if

    comp_for ::= FOR exprlist IN or_test opt_193

    comp_if ::= IF old_test opt_194

    testlist1 ::= test list_196

    encoding_decl ::= IDENTIFIER

    yield_expr ::= YIELD opt_197 opt_198

    grp_1 ::= NEWLINE | stmt

    list_2 ::= $empty | list_2 grp_1

    list_3 ::= $empty | list_3 NEWLINE

    opt_4 ::= arglist | $empty

    seq_5 ::= LPAREN opt_4 RPAREN

    opt_6 ::= seq_5 | $empty

    list_7 ::= decorator | list_7 decorator

    grp_8 ::= classdef | funcdef

    opt_9 ::= varargslist | $empty

    seq_11 ::= EQ test

    opt_12 ::= seq_11 | $empty

    seq_13 ::= fpdef opt_12 COMMA

    list_14 ::= $empty | list_14 seq_13

    seq_16 ::= COMMA STARSTAR IDENTIFIER

    opt_17 ::= seq_16 | $empty

    grp_15 ::= STAR IDENTIFIER opt_17 | STARSTAR IDENTIFIER

    seq_18 ::= EQ test

    opt_19 ::= seq_18 | $empty

    seq_20 ::= EQ test

    opt_21 ::= seq_20 | $empty

    seq_22 ::= COMMA fpdef opt_21

    list_23 ::= $empty | list_23 seq_22

    opt_24 ::= COMMA | $empty

    grp_10 ::= list_14 grp_15 | fpdef opt_19 list_23 opt_24

    seq_25 ::= COMMA fpdef

    list_26 ::= $empty | list_26 seq_25

    opt_27 ::= COMMA | $empty

    seq_28 ::= SEMI small_stmt

    list_29 ::= $empty | list_29 seq_28

    opt_30 ::= SEMI | $empty

    grp_31 ::= expr_stmt | print_stmt | del_stmt | pass_stmt | flow_stmt | import_stmt | global_stmt | exec_stmt | assert_stmt

    grp_33 ::= yield_expr | testlist

    grp_35 ::= yield_expr | testlist

    grp_34 ::= EQ grp_35

    list_36 ::= $empty | list_36 grp_34

    grp_32 ::= augassign grp_33 | list_36

    grp_37 ::= PLUSEQ | MINUSEQ | STAREQ | SLASHEQ | PERCENTEQ | AMPEQ | PIPEEQ | CARETEQ | LSHIFTEQ | RSHIFTEQ | STARSTAREQ | SLASHSLASHEQ

    seq_39 ::= COMMA test

    list_40 ::= $empty | list_40 seq_39

    opt_41 ::= COMMA | $empty

    seq_42 ::= test list_40 opt_41

    opt_43 ::= seq_42 | $empty

    seq_44 ::= COMMA test

    list_45 ::= seq_44 | list_45 seq_44

    opt_46 ::= COMMA | $empty

    seq_47 ::= list_45 opt_46

    opt_48 ::= seq_47 | $empty

    grp_38 ::= opt_43 | RSHIFT test opt_48

    opt_49 ::= testlist | $empty

    seq_50 ::= COMMA test

    opt_51 ::= seq_50 | $empty

    seq_52 ::= COMMA test opt_51

    opt_53 ::= seq_52 | $empty

    seq_54 ::= test opt_53

    opt_55 ::= seq_54 | $empty

    list_58 ::= $empty | list_58 DOT

    list_59 ::= DOT | list_59 DOT

    grp_57 ::= list_58 dotted_name | list_59

    grp_60 ::= STAR | LPAREN import_as_names RPAREN | import_as_names

    grp_56 ::= FROM grp_57 IMPORT grp_60

    seq_61 ::= AS IDENTIFIER

    opt_62 ::= seq_61 | $empty

    seq_63 ::= AS IDENTIFIER

    opt_64 ::= seq_63 | $empty

    seq_65 ::= COMMA import_as_name

    list_66 ::= $empty | list_66 seq_65

    opt_67 ::= COMMA | $empty

    seq_68 ::= COMMA dotted_as_name

    list_69 ::= $empty | list_69 seq_68

    seq_70 ::= DOT IDENTIFIER

    list_71 ::= $empty | list_71 seq_70

    seq_72 ::= COMMA IDENTIFIER

    list_73 ::= $empty | list_73 seq_72

    seq_74 ::= COMMA test

    opt_75 ::= seq_74 | $empty

    seq_76 ::= IN test opt_75

    opt_77 ::= seq_76 | $empty

    seq_78 ::= COMMA test

    opt_79 ::= seq_78 | $empty

    seq_80 ::= ELIF test COLON suite

    list_81 ::= $empty | list_81 seq_80

    seq_82 ::= ELSE COLON suite

    opt_83 ::= seq_82 | $empty

    seq_84 ::= ELSE COLON suite

    opt_85 ::= seq_84 | $empty

    seq_86 ::= ELSE COLON suite

    opt_87 ::= seq_86 | $empty

    seq_90 ::= except_clause COLON suite

    list_91 ::= seq_90 | list_91 seq_90

    seq_92 ::= ELSE COLON suite

    opt_93 ::= seq_92 | $empty

    seq_94 ::= FINALLY COLON suite

    opt_95 ::= seq_94 | $empty

    grp_89 ::= list_91 opt_93 opt_95 | FINALLY COLON suite

    grp_88 ::= TRY COLON suite grp_89

    seq_96 ::= COMMA with_item

    list_97 ::= $empty | list_97 seq_96

    seq_98 ::= AS expr

    opt_99 ::= seq_98 | $empty

    grp_102 ::= AS | COMMA

    grp_101 ::= grp_102 test

    opt_103 ::= grp_101 | $empty

    grp_100 ::= test opt_103

    opt_104 ::= grp_100 | $empty

    list_105 ::= stmt | list_105 stmt

    seq_106 ::= COMMA old_test

    list_107 ::= seq_106 | list_107 seq_106

    opt_108 ::= COMMA | $empty

    seq_109 ::= list_107 opt_108

    opt_110 ::= seq_109 | $empty

    opt_111 ::= varargslist | $empty

    seq_112 ::= IF or_test ELSE test

    opt_113 ::= seq_112 | $empty

    seq_114 ::= OR and_test

    list_115 ::= $empty | list_115 seq_114

    seq_116 ::= AND not_test

    list_117 ::= $empty | list_117 seq_116

    seq_118 ::= comp_op expr

    list_119 ::= $empty | list_119 seq_118

    grp_120 ::= PIPE xor_expr

    list_121 ::= $empty | list_121 grp_120

    seq_122 ::= CARET and_expr

    list_123 ::= $empty | list_123 seq_122

    seq_124 ::= AMP shift_expr

    list_125 ::= $empty | list_125 seq_124

    grp_127 ::= LSHIFT | RSHIFT

    grp_126 ::= grp_127 arith_expr

    list_128 ::= $empty | list_128 grp_126

    grp_130 ::= PLUS | MINUS

    grp_129 ::= grp_130 term

    list_131 ::= $empty | list_131 grp_129

    grp_133 ::= STAR | SLASH | PERCENT | SLASHSLASH

    grp_132 ::= grp_133 factor

    list_134 ::= $empty | list_134 grp_132

    grp_135 ::= PLUS | MINUS | TILDE

    list_136 ::= $empty | list_136 trailer

    seq_137 ::= STARSTAR factor

    opt_138 ::= seq_137 | $empty

    grp_140 ::= yield_expr | testlist_comp

    opt_141 ::= grp_140 | $empty

    opt_142 ::= listmaker | $empty

    opt_143 ::= dictorsetmaker | $empty

    list_144 ::= STRING | list_144 STRING

    grp_139 ::= LPAREN opt_141 RPAREN | LBRACKET opt_142 RBRACKET | LBRACE opt_143 RBRACE | BACKTICK testlist1 BACKTICK | DOT DOT DOT | IDENTIFIER | NUMBER | list_144

    seq_146 ::= COMMA test

    list_147 ::= $empty | list_147 seq_146

    opt_148 ::= COMMA | $empty

    grp_145 ::= list_for | list_147 opt_148

    seq_150 ::= COMMA test

    list_151 ::= $empty | list_151 seq_150

    opt_152 ::= COMMA | $empty

    grp_149 ::= comp_for | list_151 opt_152

    opt_153 ::= varargslist | $empty

    opt_154 ::= arglist | $empty

    seq_155 ::= COMMA subscript

    list_156 ::= $empty | list_156 seq_155

    opt_157 ::= COMMA | $empty

    opt_158 ::= test | $empty

    opt_159 ::= test | $empty

    opt_160 ::= sliceop | $empty

    opt_161 ::= test | $empty

    seq_162 ::= COMMA expr

    list_163 ::= $empty | list_163 seq_162

    opt_164 ::= COMMA | $empty

    seq_165 ::= COMMA test

    list_166 ::= $empty | list_166 seq_165

    opt_167 ::= COMMA | $empty

    seq_171 ::= COMMA test COLON test

    list_172 ::= $empty | list_172 seq_171

    opt_173 ::= COMMA | $empty

    grp_170 ::= comp_for | list_172 opt_173

    grp_169 ::= test COLON test grp_170

    seq_176 ::= COMMA test

    list_177 ::= $empty | list_177 seq_176

    opt_178 ::= COMMA | $empty

    grp_175 ::= comp_for | list_177 opt_178

    grp_174 ::= test grp_175

    grp_168 ::= grp_169 | grp_174

    opt_179 ::= testlist | $empty

    seq_180 ::= LPAREN opt_179 RPAREN

    opt_181 ::= seq_180 | $empty

    seq_182 ::= argument COMMA

    list_183 ::= $empty | list_183 seq_182

    opt_185 ::= COMMA | $empty

    seq_186 ::= COMMA argument

    list_187 ::= $empty | list_187 seq_186

    seq_188 ::= COMMA STARSTAR test

    opt_189 ::= seq_188 | $empty

    grp_184 ::= argument opt_185 | STAR test list_187 opt_189 | STARSTAR test

    opt_190 ::= comp_for | $empty

    opt_191 ::= list_iter | $empty

    opt_192 ::= list_iter | $empty

    opt_193 ::= comp_iter | $empty

    opt_194 ::= comp_iter | $empty

    seq_195 ::= COMMA test

    list_196 ::= $empty | list_196 seq_195

    opt_197 ::= FROM | $empty

    opt_198 ::= testlist | $empty

    indent_opt ::= $empty

    dedent_opt ::= $empty

%End
