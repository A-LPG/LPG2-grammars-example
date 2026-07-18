-- LIMITATION: INDENT/DEDENT are optional ($empty); lexer does not track indentation.
-- NEWLINE is significant; curated examples avoid indent-sensitive suites where needed.
-- AUTO-GENERATED from antlr/grammars-v4 python/python by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=PythonParser
%options package=lpg.grammars.python.python
%options template=dtParserTemplateF.gi
%options import_terminals=PythonLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    file_input
%End

%Rules
    root ::= opt_2

    single_input ::= LINE_BREAK
           | simple_stmt
           | compound_stmt LINE_BREAK

    file_input ::= list_4

    eval_input ::= testlist list_5

    stmt ::= simple_stmt
           | compound_stmt

    compound_stmt ::= IF test COLON suite list_6 opt_7
           | WHILE test COLON suite opt_8
           | opt_9 FOR exprlist IN testlist COLON suite opt_10
           | TRY COLON suite grp_11
           | opt_15 WITH with_item list_17 COLON suite
           | list_18 grp_19

    suite ::= simple_stmt
           | LINE_BREAK indent_opt list_20 dedent_opt

    decorator ::= AT dotted_name opt_23 LINE_BREAK

    elif_clause ::= ELIF test COLON suite

    else_clause ::= ELSE COLON suite

    finally_clause ::= FINALLY COLON suite

    with_item ::= test opt_25

    except_clause ::= EXCEPT opt_29 COLON suite

    classdef ::= CLASS name opt_32 COLON suite

    funcdef ::= opt_33 DEF name LPAREN opt_34 RPAREN opt_36 COLON suite

    typedargslist ::= opt_38 grp_39 opt_44
           | def_parameters opt_45

    args ::= STAR named_parameter

    kwargs ::= STARSTAR named_parameter

    def_parameters ::= def_parameter list_47

    def_parameter ::= named_parameter opt_49
           | STAR

    named_parameter ::= name opt_51

    simple_stmt ::= small_stmt list_53 opt_54 grp_55

    small_stmt ::= testlist_star_expr opt_56
           | PRINT grp_57
           | DEL exprlist
           | PASS
           | BREAK
           | CONTINUE
           | RETURN opt_66
           | RAISE opt_72 opt_74
           | yield_expr
           | IMPORT dotted_as_names
           | FROM grp_75 IMPORT grp_80
           | GLOBAL name list_82
           | EXEC expr opt_86
           | ASSERT test opt_88
           | NONLOCAL name list_90

    testlist_star_expr ::= list_93 opt_95
           | testlist

    star_expr ::= STAR expr

    assign_part ::= EQ grp_96
           | COLON test opt_102
           | grp_103 grp_104

    exprlist ::= expr list_106 opt_107

    import_as_names ::= import_as_name list_109 opt_110

    import_as_name ::= name opt_112

    dotted_as_names ::= dotted_as_name list_114

    dotted_as_name ::= dotted_name opt_116

    test ::= logical_test opt_118
           | LAMBDA opt_119 COLON test

    varargslist ::= opt_121 grp_122 opt_127
           | vardef_parameters opt_128

    vardef_parameters ::= vardef_parameter list_130

    vardef_parameter ::= name opt_132
           | STAR

    varargs ::= STAR name

    varkwargs ::= STARSTAR name

    logical_test ::= comparison
           | NOT logical_test
           | logical_test AND logical_test
           | logical_test OR logical_test

    comparison ::= comparison grp_133 comparison
           | expr

    expr ::= opt_136 atom list_137
           | expr STARSTAR expr
           | grp_138 expr
           | expr grp_139 expr
           | expr grp_140 expr
           | expr grp_141 expr
           | expr AMP expr
           | expr CARET expr
           | expr PIPE expr

    atom ::= LPAREN opt_143 RPAREN
           | OPEN_BRACKET opt_144 CLOSE_BRACKET
           | LBRACE opt_145 RBRACE
           | REVERSE_QUOTE testlist opt_146 REVERSE_QUOTE
           | ELLIPSIS
           | name
           | PRINT
           | EXEC
           | opt_147 number
           | NONE
           | list_148

    dictorsetmaker ::= grp_149 list_152 opt_153
           | test COLON test comp_for
           | testlist_comp

    testlist_comp ::= grp_154 grp_155

    testlist ::= test list_161 opt_162

    dotted_name ::= dotted_name DOT name
           | name

    name ::= IDENTIFIER
           | TRUE
           | FALSE

    number ::= integer
           | IMAG_NUMBER
           | FLOAT_NUMBER

    integer ::= DECIMAL_INTEGER
           | OCT_INTEGER
           | HEX_INTEGER
           | BIN_INTEGER

    yield_expr ::= YIELD opt_163

    yield_arg ::= FROM test
           | testlist

    trailer ::= DOT name opt_164
           | arguments

    arguments ::= LPAREN opt_165 RPAREN
           | OPEN_BRACKET subscriptlist CLOSE_BRACKET

    arglist ::= argument list_167 opt_168

    argument ::= test opt_170
           | grp_171 test

    subscriptlist ::= subscript list_173 opt_174

    subscript ::= ELLIPSIS
           | test opt_178
           | COLON opt_179 opt_180

    sliceop ::= COLON opt_181

    comp_for ::= FOR exprlist IN logical_test opt_182

    comp_iter ::= comp_for
           | IF test opt_183

    grp_1 ::= single_input | file_input | eval_input

    opt_2 ::= grp_1 | $empty

    grp_3 ::= LINE_BREAK | stmt

    list_4 ::= grp_3 | list_4 grp_3

    list_5 ::= $empty | list_5 LINE_BREAK

    list_6 ::= $empty | list_6 elif_clause

    opt_7 ::= else_clause | $empty

    opt_8 ::= else_clause | $empty

    opt_9 ::= ASYNC | $empty

    opt_10 ::= else_clause | $empty

    list_12 ::= except_clause | list_12 except_clause

    opt_13 ::= else_clause | $empty

    opt_14 ::= finally_clause | $empty

    grp_11 ::= list_12 opt_13 opt_14 | finally_clause

    opt_15 ::= ASYNC | $empty

    seq_16 ::= COMMA with_item

    list_17 ::= $empty | list_17 seq_16

    list_18 ::= $empty | list_18 decorator

    grp_19 ::= classdef | funcdef

    list_20 ::= stmt | list_20 stmt

    opt_21 ::= arglist | $empty

    seq_22 ::= LPAREN opt_21 RPAREN

    opt_23 ::= seq_22 | $empty

    seq_24 ::= AS expr

    opt_25 ::= seq_24 | $empty

    grp_27 ::= COMMA name | AS name

    opt_28 ::= grp_27 | $empty

    grp_26 ::= test opt_28

    opt_29 ::= grp_26 | $empty

    opt_30 ::= arglist | $empty

    seq_31 ::= LPAREN opt_30 RPAREN

    opt_32 ::= seq_31 | $empty

    opt_33 ::= ASYNC | $empty

    opt_34 ::= typedargslist | $empty

    seq_35 ::= ARROW test

    opt_36 ::= seq_35 | $empty

    seq_37 ::= def_parameters COMMA

    opt_38 ::= seq_37 | $empty

    seq_40 ::= COMMA def_parameters

    opt_41 ::= seq_40 | $empty

    seq_42 ::= COMMA kwargs

    opt_43 ::= seq_42 | $empty

    grp_39 ::= args opt_41 opt_43 | kwargs

    opt_44 ::= COMMA | $empty

    opt_45 ::= COMMA | $empty

    seq_46 ::= COMMA def_parameter

    list_47 ::= $empty | list_47 seq_46

    seq_48 ::= EQ test

    opt_49 ::= seq_48 | $empty

    seq_50 ::= COLON test

    opt_51 ::= seq_50 | $empty

    seq_52 ::= SEMI small_stmt

    list_53 ::= $empty | list_53 seq_52

    opt_54 ::= SEMI | $empty

    grp_55 ::= LINE_BREAK

    opt_56 ::= assign_part | $empty

    seq_58 ::= COMMA test

    list_59 ::= $empty | list_59 seq_58

    opt_60 ::= COMMA | $empty

    seq_61 ::= test list_59 opt_60

    seq_62 ::= COMMA test

    list_63 ::= seq_62 | list_63 seq_62

    opt_64 ::= COMMA | $empty

    seq_65 ::= list_63 opt_64

    grp_57 ::= seq_61 | RSHIFT test seq_65

    opt_66 ::= testlist | $empty

    seq_67 ::= COMMA test

    opt_68 ::= seq_67 | $empty

    seq_69 ::= COMMA test opt_68

    opt_70 ::= seq_69 | $empty

    seq_71 ::= test opt_70

    opt_72 ::= seq_71 | $empty

    seq_73 ::= FROM test

    opt_74 ::= seq_73 | $empty

    grp_76 ::= DOT | ELLIPSIS

    list_77 ::= $empty | list_77 grp_76

    grp_78 ::= DOT | ELLIPSIS

    list_79 ::= grp_78 | list_79 grp_78

    grp_75 ::= list_77 dotted_name | list_79

    grp_80 ::= STAR | LPAREN import_as_names RPAREN | import_as_names

    seq_81 ::= COMMA name

    list_82 ::= $empty | list_82 seq_81

    seq_83 ::= COMMA test

    opt_84 ::= seq_83 | $empty

    seq_85 ::= IN test opt_84

    opt_86 ::= seq_85 | $empty

    seq_87 ::= COMMA test

    opt_88 ::= seq_87 | $empty

    seq_89 ::= COMMA name

    list_90 ::= $empty | list_90 seq_89

    grp_92 ::= test | star_expr

    grp_91 ::= grp_92 COMMA

    list_93 ::= grp_91 | list_93 grp_91

    grp_94 ::= test | star_expr

    opt_95 ::= grp_94 | $empty

    seq_97 ::= EQ testlist_star_expr

    list_98 ::= $empty | list_98 seq_97

    seq_99 ::= EQ yield_expr

    opt_100 ::= seq_99 | $empty

    grp_96 ::= testlist_star_expr list_98 opt_100 | yield_expr

    seq_101 ::= EQ testlist

    opt_102 ::= seq_101 | $empty

    grp_103 ::= ADD_ASSIGN | SUB_ASSIGN | MULT_ASSIGN | AT_ASSIGN | DIV_ASSIGN | MOD_ASSIGN | AND_ASSIGN | OR_ASSIGN | XOR_ASSIGN | LEFT_SHIFT_ASSIGN | RIGHT_SHIFT_ASSIGN | POWER_ASSIGN | IDIV_ASSIGN

    grp_104 ::= yield_expr | testlist

    seq_105 ::= COMMA expr

    list_106 ::= $empty | list_106 seq_105

    opt_107 ::= COMMA | $empty

    seq_108 ::= COMMA import_as_name

    list_109 ::= $empty | list_109 seq_108

    opt_110 ::= COMMA | $empty

    seq_111 ::= AS name

    opt_112 ::= seq_111 | $empty

    seq_113 ::= COMMA dotted_as_name

    list_114 ::= $empty | list_114 seq_113

    seq_115 ::= AS name

    opt_116 ::= seq_115 | $empty

    seq_117 ::= IF logical_test ELSE test

    opt_118 ::= seq_117 | $empty

    opt_119 ::= varargslist | $empty

    seq_120 ::= vardef_parameters COMMA

    opt_121 ::= seq_120 | $empty

    seq_123 ::= COMMA vardef_parameters

    opt_124 ::= seq_123 | $empty

    seq_125 ::= COMMA varkwargs

    opt_126 ::= seq_125 | $empty

    grp_122 ::= varargs opt_124 opt_126 | varkwargs

    opt_127 ::= COMMA | $empty

    opt_128 ::= COMMA | $empty

    seq_129 ::= COMMA vardef_parameter

    list_130 ::= $empty | list_130 seq_129

    seq_131 ::= EQ test

    opt_132 ::= seq_131 | $empty

    opt_134 ::= NOT | $empty

    opt_135 ::= NOT | $empty

    grp_133 ::= LT | GT | EQEQ | GTEQ | LTEQ | NOT_EQ_1 | NOT_EQ_2 | opt_134 IN | IS opt_135

    opt_136 ::= AWAIT | $empty

    list_137 ::= $empty | list_137 trailer

    grp_138 ::= PLUS | MINUS | TILDE

    grp_139 ::= STAR | SLASH | PERCENT | SLASHSLASH | AT

    grp_140 ::= PLUS | MINUS

    grp_141 ::= LSHIFT | RSHIFT

    grp_142 ::= yield_expr | testlist_comp

    opt_143 ::= grp_142 | $empty

    opt_144 ::= testlist_comp | $empty

    opt_145 ::= dictorsetmaker | $empty

    opt_146 ::= COMMA | $empty

    opt_147 ::= MINUS | $empty

    list_148 ::= STRING | list_148 STRING

    grp_149 ::= test COLON test | STARSTAR expr

    grp_151 ::= test COLON test | STARSTAR expr

    grp_150 ::= COMMA grp_151

    list_152 ::= $empty | list_152 grp_150

    opt_153 ::= COMMA | $empty

    grp_154 ::= test | star_expr

    grp_157 ::= test | star_expr

    grp_156 ::= COMMA grp_157

    list_158 ::= $empty | list_158 grp_156

    opt_159 ::= COMMA | $empty

    grp_155 ::= comp_for | list_158 opt_159

    seq_160 ::= COMMA test

    list_161 ::= $empty | list_161 seq_160

    opt_162 ::= COMMA | $empty

    opt_163 ::= yield_arg | $empty

    opt_164 ::= arguments | $empty

    opt_165 ::= arglist | $empty

    seq_166 ::= COMMA argument

    list_167 ::= $empty | list_167 seq_166

    opt_168 ::= COMMA | $empty

    grp_169 ::= comp_for | EQ test

    opt_170 ::= grp_169 | $empty

    grp_171 ::= STARSTAR | STAR

    seq_172 ::= COMMA subscript

    list_173 ::= $empty | list_173 seq_172

    opt_174 ::= COMMA | $empty

    opt_175 ::= test | $empty

    opt_176 ::= sliceop | $empty

    seq_177 ::= COLON opt_175 opt_176

    opt_178 ::= seq_177 | $empty

    opt_179 ::= test | $empty

    opt_180 ::= sliceop | $empty

    opt_181 ::= test | $empty

    opt_182 ::= comp_iter | $empty

    opt_183 ::= comp_iter | $empty

    indent_opt ::= $empty

    dedent_opt ::= $empty

%End
