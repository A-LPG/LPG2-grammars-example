-- LIMITATION: INDENT/DEDENT are optional ($empty); lexer does not track indentation.
-- NEWLINE is significant; curated examples avoid indent-sensitive suites where needed.
-- AUTO-GENERATED from antlr/grammars-v4 python/python3 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=PythonPython3Parser
%options package=lpg.grammars.python.python3
%options template=dtParserTemplateF.gi
%options import_terminals=PythonPython3Lexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    file_input
%End

%Rules
    single_input ::= NEWLINE
           | simple_stmts
           | compound_stmt NEWLINE

    file_input ::= list_2

    eval_input ::= testlist list_3

    decorator ::= AT dotted_name opt_6 NEWLINE

    decorators ::= list_7

    decorated ::= decorators grp_8

    async_funcdef ::= ASYNC funcdef

    funcdef ::= DEF name parameters opt_10 COLON block

    parameters ::= LPAREN opt_11 RPAREN

    typedargslist ::= grp_12

    tfpdef ::= name opt_46

    varargslist ::= grp_47

    vfpdef ::= name

    stmt ::= simple_stmts
           | compound_stmt

    simple_stmts ::= simple_stmt list_81 opt_82 NEWLINE

    simple_stmt ::= grp_83

    expr_stmt ::= testlist_star_expr grp_84

    annassign ::= COLON test opt_90

    testlist_star_expr ::= grp_91 list_94 opt_95

    augassign ::= grp_96

    del_stmt ::= DEL exprlist

    pass_stmt ::= PASS

    flow_stmt ::= break_stmt
           | continue_stmt
           | return_stmt
           | raise_stmt
           | yield_stmt

    break_stmt ::= BREAK

    continue_stmt ::= CONTINUE

    return_stmt ::= RETURN opt_97

    yield_stmt ::= yield_expr

    raise_stmt ::= RAISE opt_101

    import_stmt ::= import_name
           | import_from

    import_name ::= IMPORT dotted_as_names

    import_from ::= grp_102

    import_as_name ::= name opt_110

    dotted_as_name ::= dotted_name opt_112

    import_as_names ::= import_as_name list_114 opt_115

    dotted_as_names ::= dotted_as_name list_117

    dotted_name ::= name list_119

    global_stmt ::= GLOBAL name list_121

    nonlocal_stmt ::= NONLOCAL name list_123

    assert_stmt ::= ASSERT test opt_125

    compound_stmt ::= if_stmt
           | while_stmt
           | for_stmt
           | try_stmt
           | with_stmt
           | funcdef
           | classdef
           | decorated
           | async_stmt
           | match_stmt

    async_stmt ::= ASYNC grp_126

    if_stmt ::= IF test COLON block list_128 opt_130

    while_stmt ::= WHILE test COLON block opt_132

    for_stmt ::= FOR exprlist IN testlist COLON block opt_134

    try_stmt ::= grp_135

    with_stmt ::= WITH with_item list_144 COLON block

    with_item ::= test opt_146

    except_clause ::= EXCEPT opt_150

    block ::= simple_stmts
           | NEWLINE indent_opt list_151 dedent_opt

    match_stmt ::= MATCH subject_expr COLON NEWLINE indent_opt list_152 dedent_opt

    subject_expr ::= star_named_expression COMMA opt_153
           | test

    star_named_expressions ::= COMMA list_154 opt_155

    star_named_expression ::= STAR expr
           | test

    case_block ::= CASE patterns opt_156 COLON block

    guard ::= IF test

    patterns ::= open_sequence_pattern
           | pattern

    pattern ::= as_pattern
           | or_pattern

    as_pattern ::= or_pattern AS pattern_capture_target

    or_pattern ::= closed_pattern list_158

    closed_pattern ::= literal_pattern
           | capture_pattern
           | wildcard_pattern
           | value_pattern
           | group_pattern
           | sequence_pattern
           | mapping_pattern
           | class_pattern

    literal_pattern ::= opt_159
           | complex_number
           | strings
           | NONE
           | TRUE
           | FALSE

    literal_expr ::= opt_160
           | complex_number
           | strings
           | NONE
           | TRUE
           | FALSE

    complex_number ::= signed_real_number PLUS imaginary_number
           | signed_real_number MINUS imaginary_number

    signed_number ::= NUMBER
           | MINUS NUMBER

    signed_real_number ::= real_number
           | MINUS real_number

    real_number ::= NUMBER

    imaginary_number ::= NUMBER

    capture_pattern ::= pattern_capture_target

    pattern_capture_target ::= opt_161

    wildcard_pattern ::= UNDERSCORE

    value_pattern ::= opt_162

    attr ::= name list_164

    name_or_attr ::= attr
           | name

    group_pattern ::= LPAREN pattern RPAREN

    sequence_pattern ::= LBRACKET opt_165 RBRACKET
           | LPAREN opt_166 RPAREN

    open_sequence_pattern ::= maybe_star_pattern COMMA opt_167

    maybe_sequence_pattern ::= maybe_star_pattern list_169 opt_170

    maybe_star_pattern ::= star_pattern
           | pattern

    star_pattern ::= STAR pattern_capture_target
           | STAR wildcard_pattern

    mapping_pattern ::= LBRACE RBRACE
           | LBRACE double_star_pattern opt_171 RBRACE
           | LBRACE items_pattern COMMA double_star_pattern opt_172 RBRACE
           | LBRACE items_pattern opt_173 RBRACE

    items_pattern ::= key_value_pattern list_175

    key_value_pattern ::= grp_176 COLON pattern

    double_star_pattern ::= STARSTAR pattern_capture_target

    class_pattern ::= name_or_attr LPAREN RPAREN
           | name_or_attr LPAREN positional_patterns opt_177 RPAREN
           | name_or_attr LPAREN keyword_patterns opt_178 RPAREN
           | name_or_attr LPAREN positional_patterns COMMA keyword_patterns opt_179 RPAREN

    positional_patterns ::= pattern list_181

    keyword_patterns ::= keyword_pattern list_183

    keyword_pattern ::= name EQ pattern

    test ::= or_test opt_185
           | lambdef

    test_nocond ::= or_test
           | lambdef_nocond

    lambdef ::= LAMBDA opt_186 COLON test

    lambdef_nocond ::= LAMBDA opt_187 COLON test_nocond

    or_test ::= and_test list_189

    and_test ::= not_test list_191

    not_test ::= NOT not_test
           | comparison

    comparison ::= expr list_193

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

    star_expr ::= STAR expr

    expr ::= atom_expr
           | expr STARSTAR expr
           | list_195 expr
           | expr grp_196 expr
           | expr grp_197 expr
           | expr grp_198 expr
           | expr AMP expr
           | expr CARET expr
           | expr PIPE expr

    atom_expr ::= opt_199 atom list_200

    atom ::= LPAREN opt_202 RPAREN
           | LBRACKET opt_203 RBRACKET
           | LBRACE opt_204 RBRACE
           | name
           | NUMBER
           | list_205
           | ELLIPSIS
           | NONE
           | TRUE
           | FALSE

    name ::= IDENTIFIER
           | UNDERSCORE
           | MATCH

    testlist_comp ::= grp_206 grp_207

    trailer ::= LPAREN opt_212 RPAREN
           | LBRACKET subscriptlist RBRACKET
           | DOT name

    subscriptlist ::= subscript_ list_214 opt_215

    subscript_ ::= test
           | opt_216 COLON opt_217 opt_218

    sliceop ::= COLON opt_219

    exprlist ::= grp_220 list_223 opt_224

    testlist ::= test list_226 opt_227

    dictorsetmaker ::= grp_228

    classdef ::= CLASS name opt_245 COLON block

    arglist ::= argument list_247 opt_248

    argument ::= grp_249

    comp_iter ::= comp_for
           | comp_if

    comp_for ::= opt_251 FOR exprlist IN or_test opt_252

    comp_if ::= IF test_nocond opt_253

    encoding_decl ::= name

    yield_expr ::= YIELD opt_254

    yield_arg ::= FROM test
           | testlist

    strings ::= list_255

    grp_1 ::= NEWLINE | stmt

    list_2 ::= $empty | list_2 grp_1

    list_3 ::= $empty | list_3 NEWLINE

    opt_4 ::= arglist | $empty

    seq_5 ::= LPAREN opt_4 RPAREN

    opt_6 ::= seq_5 | $empty

    list_7 ::= decorator | list_7 decorator

    grp_8 ::= classdef | funcdef | async_funcdef

    seq_9 ::= ARROW test

    opt_10 ::= seq_9 | $empty

    opt_11 ::= typedargslist | $empty

    seq_13 ::= EQ test

    opt_14 ::= seq_13 | $empty

    seq_15 ::= EQ test

    opt_16 ::= seq_15 | $empty

    seq_17 ::= COMMA tfpdef opt_16

    list_18 ::= $empty | list_18 seq_17

    opt_21 ::= tfpdef | $empty

    seq_22 ::= EQ test

    opt_23 ::= seq_22 | $empty

    seq_24 ::= COMMA tfpdef opt_23

    list_25 ::= $empty | list_25 seq_24

    opt_26 ::= COMMA | $empty

    seq_27 ::= STARSTAR tfpdef opt_26

    opt_28 ::= seq_27 | $empty

    seq_29 ::= COMMA opt_28

    opt_30 ::= seq_29 | $empty

    opt_31 ::= COMMA | $empty

    grp_20 ::= STAR opt_21 list_25 opt_30 | STARSTAR tfpdef opt_31

    opt_32 ::= grp_20 | $empty

    grp_19 ::= COMMA opt_32

    opt_33 ::= grp_19 | $empty

    opt_34 ::= tfpdef | $empty

    seq_35 ::= EQ test

    opt_36 ::= seq_35 | $empty

    seq_37 ::= COMMA tfpdef opt_36

    list_38 ::= $empty | list_38 seq_37

    opt_39 ::= COMMA | $empty

    seq_40 ::= STARSTAR tfpdef opt_39

    opt_41 ::= seq_40 | $empty

    seq_42 ::= COMMA opt_41

    opt_43 ::= seq_42 | $empty

    opt_44 ::= COMMA | $empty

    grp_12 ::= tfpdef opt_14 list_18 opt_33 | STAR opt_34 list_38 opt_43 | STARSTAR tfpdef opt_44

    seq_45 ::= COLON test

    opt_46 ::= seq_45 | $empty

    seq_48 ::= EQ test

    opt_49 ::= seq_48 | $empty

    seq_50 ::= EQ test

    opt_51 ::= seq_50 | $empty

    seq_52 ::= COMMA vfpdef opt_51

    list_53 ::= $empty | list_53 seq_52

    opt_56 ::= vfpdef | $empty

    seq_57 ::= EQ test

    opt_58 ::= seq_57 | $empty

    seq_59 ::= COMMA vfpdef opt_58

    list_60 ::= $empty | list_60 seq_59

    opt_61 ::= COMMA | $empty

    seq_62 ::= STARSTAR vfpdef opt_61

    opt_63 ::= seq_62 | $empty

    seq_64 ::= COMMA opt_63

    opt_65 ::= seq_64 | $empty

    opt_66 ::= COMMA | $empty

    grp_55 ::= STAR opt_56 list_60 opt_65 | STARSTAR vfpdef opt_66

    opt_67 ::= grp_55 | $empty

    grp_54 ::= COMMA opt_67

    opt_68 ::= grp_54 | $empty

    opt_69 ::= vfpdef | $empty

    seq_70 ::= EQ test

    opt_71 ::= seq_70 | $empty

    seq_72 ::= COMMA vfpdef opt_71

    list_73 ::= $empty | list_73 seq_72

    opt_74 ::= COMMA | $empty

    seq_75 ::= STARSTAR vfpdef opt_74

    opt_76 ::= seq_75 | $empty

    seq_77 ::= COMMA opt_76

    opt_78 ::= seq_77 | $empty

    opt_79 ::= COMMA | $empty

    grp_47 ::= vfpdef opt_49 list_53 opt_68 | STAR opt_69 list_73 opt_78 | STARSTAR vfpdef opt_79

    seq_80 ::= SEMI simple_stmt

    list_81 ::= $empty | list_81 seq_80

    opt_82 ::= SEMI | $empty

    grp_83 ::= expr_stmt | del_stmt | pass_stmt | flow_stmt | import_stmt | global_stmt | nonlocal_stmt | assert_stmt

    grp_85 ::= yield_expr | testlist

    grp_87 ::= yield_expr | testlist_star_expr

    grp_86 ::= EQ grp_87

    list_88 ::= $empty | list_88 grp_86

    grp_84 ::= annassign | augassign grp_85 | list_88

    seq_89 ::= EQ test

    opt_90 ::= seq_89 | $empty

    grp_91 ::= test | star_expr

    grp_93 ::= test | star_expr

    grp_92 ::= COMMA grp_93

    list_94 ::= $empty | list_94 grp_92

    opt_95 ::= COMMA | $empty

    grp_96 ::= PLUSEQ | MINUSEQ | STAREQ | ATEQ | SLASHEQ | PERCENTEQ | AMPEQ | PIPEEQ | CARETEQ | LSHIFTEQ | RSHIFTEQ | STARSTAREQ | SLASHSLASHEQ

    opt_97 ::= testlist | $empty

    seq_98 ::= FROM test

    opt_99 ::= seq_98 | $empty

    seq_100 ::= test opt_99

    opt_101 ::= seq_100 | $empty

    grp_104 ::= DOT | ELLIPSIS

    list_105 ::= $empty | list_105 grp_104

    grp_106 ::= DOT | ELLIPSIS

    list_107 ::= grp_106 | list_107 grp_106

    grp_103 ::= list_105 dotted_name | list_107

    grp_108 ::= STAR | LPAREN import_as_names RPAREN | import_as_names

    grp_102 ::= FROM grp_103 IMPORT grp_108

    seq_109 ::= AS name

    opt_110 ::= seq_109 | $empty

    seq_111 ::= AS name

    opt_112 ::= seq_111 | $empty

    seq_113 ::= COMMA import_as_name

    list_114 ::= $empty | list_114 seq_113

    opt_115 ::= COMMA | $empty

    seq_116 ::= COMMA dotted_as_name

    list_117 ::= $empty | list_117 seq_116

    seq_118 ::= DOT name

    list_119 ::= $empty | list_119 seq_118

    seq_120 ::= COMMA name

    list_121 ::= $empty | list_121 seq_120

    seq_122 ::= COMMA name

    list_123 ::= $empty | list_123 seq_122

    seq_124 ::= COMMA test

    opt_125 ::= seq_124 | $empty

    grp_126 ::= funcdef | with_stmt | for_stmt

    seq_127 ::= ELIF test COLON block

    list_128 ::= $empty | list_128 seq_127

    seq_129 ::= ELSE COLON block

    opt_130 ::= seq_129 | $empty

    seq_131 ::= ELSE COLON block

    opt_132 ::= seq_131 | $empty

    seq_133 ::= ELSE COLON block

    opt_134 ::= seq_133 | $empty

    seq_137 ::= except_clause COLON block

    list_138 ::= seq_137 | list_138 seq_137

    seq_139 ::= ELSE COLON block

    opt_140 ::= seq_139 | $empty

    seq_141 ::= FINALLY COLON block

    opt_142 ::= seq_141 | $empty

    grp_136 ::= list_138 opt_140 opt_142 | FINALLY COLON block

    grp_135 ::= TRY COLON block grp_136

    seq_143 ::= COMMA with_item

    list_144 ::= $empty | list_144 seq_143

    seq_145 ::= AS expr

    opt_146 ::= seq_145 | $empty

    seq_147 ::= AS name

    opt_148 ::= seq_147 | $empty

    seq_149 ::= test opt_148

    opt_150 ::= seq_149 | $empty

    list_151 ::= stmt | list_151 stmt

    list_152 ::= case_block | list_152 case_block

    opt_153 ::= star_named_expressions | $empty

    list_154 ::= star_named_expression | list_154 star_named_expression

    opt_155 ::= COMMA | $empty

    opt_156 ::= guard | $empty

    grp_157 ::= PIPE closed_pattern

    list_158 ::= $empty | list_158 grp_157

    opt_159 ::= signed_number | $empty

    opt_160 ::= signed_number | $empty

    opt_161 ::= name | $empty

    opt_162 ::= attr | $empty

    seq_163 ::= DOT name

    list_164 ::= seq_163 | list_164 seq_163

    opt_165 ::= maybe_sequence_pattern | $empty

    opt_166 ::= open_sequence_pattern | $empty

    opt_167 ::= maybe_sequence_pattern | $empty

    seq_168 ::= COMMA maybe_star_pattern

    list_169 ::= $empty | list_169 seq_168

    opt_170 ::= COMMA | $empty

    opt_171 ::= COMMA | $empty

    opt_172 ::= COMMA | $empty

    opt_173 ::= COMMA | $empty

    seq_174 ::= COMMA key_value_pattern

    list_175 ::= $empty | list_175 seq_174

    grp_176 ::= literal_expr | attr

    opt_177 ::= COMMA | $empty

    opt_178 ::= COMMA | $empty

    opt_179 ::= COMMA | $empty

    seq_180 ::= COMMA pattern

    list_181 ::= $empty | list_181 seq_180

    seq_182 ::= COMMA keyword_pattern

    list_183 ::= $empty | list_183 seq_182

    seq_184 ::= IF or_test ELSE test

    opt_185 ::= seq_184 | $empty

    opt_186 ::= varargslist | $empty

    opt_187 ::= varargslist | $empty

    seq_188 ::= OR and_test

    list_189 ::= $empty | list_189 seq_188

    seq_190 ::= AND not_test

    list_191 ::= $empty | list_191 seq_190

    seq_192 ::= comp_op expr

    list_193 ::= $empty | list_193 seq_192

    grp_194 ::= PLUS | MINUS | TILDE

    list_195 ::= grp_194 | list_195 grp_194

    grp_196 ::= STAR | AT | SLASH | PERCENT | SLASHSLASH

    grp_197 ::= PLUS | MINUS

    grp_198 ::= LSHIFT | RSHIFT

    opt_199 ::= AWAIT | $empty

    list_200 ::= $empty | list_200 trailer

    grp_201 ::= yield_expr | testlist_comp

    opt_202 ::= grp_201 | $empty

    opt_203 ::= testlist_comp | $empty

    opt_204 ::= dictorsetmaker | $empty

    list_205 ::= STRING | list_205 STRING

    grp_206 ::= test | star_expr

    grp_209 ::= test | star_expr

    grp_208 ::= COMMA grp_209

    list_210 ::= $empty | list_210 grp_208

    opt_211 ::= COMMA | $empty

    grp_207 ::= comp_for | list_210 opt_211

    opt_212 ::= arglist | $empty

    seq_213 ::= COMMA subscript_

    list_214 ::= $empty | list_214 seq_213

    opt_215 ::= COMMA | $empty

    opt_216 ::= test | $empty

    opt_217 ::= test | $empty

    opt_218 ::= sliceop | $empty

    opt_219 ::= test | $empty

    grp_220 ::= expr | star_expr

    grp_222 ::= expr | star_expr

    grp_221 ::= COMMA grp_222

    list_223 ::= $empty | list_223 grp_221

    opt_224 ::= COMMA | $empty

    seq_225 ::= COMMA test

    list_226 ::= $empty | list_226 seq_225

    opt_227 ::= COMMA | $empty

    grp_230 ::= test COLON test | STARSTAR expr

    grp_233 ::= test COLON test | STARSTAR expr

    grp_232 ::= COMMA grp_233

    list_234 ::= $empty | list_234 grp_232

    opt_235 ::= COMMA | $empty

    grp_231 ::= comp_for | list_234 opt_235

    grp_229 ::= grp_230 grp_231

    grp_237 ::= test | star_expr

    grp_240 ::= test | star_expr

    grp_239 ::= COMMA grp_240

    list_241 ::= $empty | list_241 grp_239

    opt_242 ::= COMMA | $empty

    grp_238 ::= comp_for | list_241 opt_242

    grp_236 ::= grp_237 grp_238

    grp_228 ::= grp_229 | grp_236

    opt_243 ::= arglist | $empty

    seq_244 ::= LPAREN opt_243 RPAREN

    opt_245 ::= seq_244 | $empty

    seq_246 ::= COMMA argument

    list_247 ::= $empty | list_247 seq_246

    opt_248 ::= COMMA | $empty

    opt_250 ::= comp_for | $empty

    grp_249 ::= test opt_250 | test EQ test | STARSTAR test | STAR test

    opt_251 ::= ASYNC | $empty

    opt_252 ::= comp_iter | $empty

    opt_253 ::= comp_iter | $empty

    opt_254 ::= yield_arg | $empty

    list_255 ::= STRING | list_255 STRING

    indent_opt ::= $empty

    dedent_opt ::= $empty

%End
