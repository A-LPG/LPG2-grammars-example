-- LIMITATION: INDENT/DEDENT are optional ($empty); lexer does not track indentation.
-- NEWLINE is significant; curated examples avoid indent-sensitive suites where needed.
-- AUTO-GENERATED from antlr/grammars-v4 python/python3_13 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=PythonPython313Parser
%options package=lpg.grammars.python.python3_13
%options template=dtParserTemplateF.gi
%options import_terminals=PythonPython313Lexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    file_input
%End

%Rules
    file_input ::= opt_1

    interactive ::= statement_newline

    eval ::= expressions list_2

    func_type ::= LPAREN opt_3 RPAREN ARROW expression list_4

    statements ::= list_5

    statement ::= compound_stmt
           | simple_stmts

    statement_newline ::= compound_stmt NEWLINE
           | simple_stmts
           | NEWLINE
           | $empty

    simple_stmts ::= simple_stmt list_7 opt_8 NEWLINE

    simple_stmt ::= assignment
           | type_alias
           | star_expressions
           | return_stmt
           | import_stmt
           | raise_stmt
           | PASS
           | del_stmt
           | yield_stmt
           | assert_stmt
           | BREAK
           | CONTINUE
           | global_stmt
           | nonlocal_stmt

    compound_stmt ::= function_def
           | if_stmt
           | class_def
           | with_stmt
           | for_stmt
           | try_stmt
           | while_stmt
           | match_stmt

    assignment ::= name COLON expression opt_10
           | grp_11 COLON expression opt_13
           | list_15 grp_16 opt_17
           | single_target augassign grp_18

    annotated_rhs ::= yield_expr
           | star_expressions

    augassign ::= PLUSEQ
           | MINUSEQ
           | STAREQ
           | ATEQ
           | SLASHEQ
           | PERCENTEQ
           | AMPEQ
           | PIPEEQ
           | CARETEQ
           | LSHIFTEQ
           | RSHIFTEQ
           | STARSTAREQ
           | SLASHSLASHEQ

    return_stmt ::= RETURN opt_19

    raise_stmt ::= RAISE opt_23

    global_stmt ::= GLOBAL name list_25

    nonlocal_stmt ::= NONLOCAL name list_27

    del_stmt ::= DEL del_targets

    yield_stmt ::= yield_expr

    assert_stmt ::= ASSERT expression opt_29

    import_stmt ::= import_name
           | import_from

    import_name ::= IMPORT dotted_as_names

    import_from ::= FROM list_31 dotted_name IMPORT import_from_targets
           | FROM list_33 IMPORT import_from_targets

    import_from_targets ::= LPAREN import_from_as_names opt_34 RPAREN
           | import_from_as_names
           | STAR

    import_from_as_names ::= import_from_as_name list_36

    import_from_as_name ::= name opt_38

    dotted_as_names ::= dotted_as_name list_40

    dotted_as_name ::= dotted_name opt_42

    dotted_name ::= dotted_name DOT name
           | name

    block ::= NEWLINE indent_opt statements dedent_opt
           | simple_stmts

    decorators ::= list_44

    class_def ::= decorators class_def_raw
           | class_def_raw

    class_def_raw ::= CLASS name opt_45 opt_48 COLON block

    function_def ::= decorators function_def_raw
           | function_def_raw

    function_def_raw ::= DEF name opt_49 LPAREN opt_50 RPAREN opt_52 COLON opt_53 block
           | ASYNC DEF name opt_54 LPAREN opt_55 RPAREN opt_57 COLON opt_58 block

    params ::= parameters

    parameters ::= slash_no_default list_59 list_60 opt_61
           | slash_with_default list_62 opt_63
           | list_64 list_65 opt_66
           | list_67 opt_68
           | star_etc

    slash_no_default ::= list_69 SLASH opt_70

    slash_with_default ::= list_71 list_72 SLASH opt_73

    star_etc ::= STAR param_no_default list_74 opt_75
           | STAR param_no_default_star_annotation list_76 opt_77
           | STAR COMMA list_78 opt_79
           | kwds

    kwds ::= STARSTAR param_no_default

    param_no_default ::= param opt_80 opt_81

    param_no_default_star_annotation ::= param_star_annotation opt_82 opt_83

    param_with_default ::= param default_assignment opt_84 opt_85

    param_maybe_default ::= param opt_86 opt_87 opt_88

    param ::= name opt_89

    param_star_annotation ::= name star_annotation

    annotation ::= COLON expression

    star_annotation ::= COLON star_expression

    default_assignment ::= EQ expression

    if_stmt ::= IF named_expression COLON block grp_90

    elif_stmt ::= ELIF named_expression COLON block grp_92

    else_block ::= ELSE COLON block

    while_stmt ::= WHILE named_expression COLON block opt_94

    for_stmt ::= opt_95 FOR star_targets IN star_expressions COLON opt_96 block opt_97

    with_stmt ::= WITH LPAREN with_item list_99 opt_100 RPAREN COLON opt_101 block
           | ASYNC WITH LPAREN with_item list_103 opt_104 RPAREN COLON block
           | opt_105 WITH with_item list_107 COLON opt_108 block

    with_item ::= expression opt_110

    try_stmt ::= TRY COLON block finally_block
           | TRY COLON block list_111 opt_112 opt_113
           | TRY COLON block list_114 opt_115 opt_116

    except_block ::= EXCEPT opt_120 COLON block

    except_star_block ::= EXCEPT STAR expression opt_122 COLON block

    finally_block ::= FINALLY COLON block

    match_stmt ::= MATCH subject_expr COLON NEWLINE indent_opt list_123 dedent_opt

    subject_expr ::= star_named_expression COMMA opt_124
           | named_expression

    case_block ::= CASE patterns opt_125 COLON block

    guard ::= IF named_expression

    patterns ::= open_sequence_pattern
           | pattern

    pattern ::= as_pattern
           | or_pattern

    as_pattern ::= or_pattern AS pattern_capture_target

    or_pattern ::= closed_pattern list_127

    closed_pattern ::= literal_pattern
           | capture_pattern
           | wildcard_pattern
           | value_pattern
           | group_pattern
           | sequence_pattern
           | mapping_pattern
           | class_pattern

    literal_pattern ::= signed_number
           | complex_number
           | strings
           | NONE
           | TRUE
           | FALSE

    literal_expr ::= signed_number
           | complex_number
           | strings
           | NONE
           | TRUE
           | FALSE

    complex_number ::= signed_real_number grp_128 imaginary_number

    signed_number ::= opt_129 NUMBER

    signed_real_number ::= opt_130 real_number

    real_number ::= NUMBER

    imaginary_number ::= NUMBER

    capture_pattern ::= pattern_capture_target

    pattern_capture_target ::= name_except_underscore

    wildcard_pattern ::= UNDERSCORE

    value_pattern ::= attr

    attr ::= name list_132

    name_or_attr ::= name list_134

    group_pattern ::= LPAREN pattern RPAREN

    sequence_pattern ::= LBRACKET opt_135 RBRACKET
           | LPAREN opt_136 RPAREN

    open_sequence_pattern ::= maybe_star_pattern COMMA opt_137

    maybe_sequence_pattern ::= maybe_star_pattern list_139 opt_140

    maybe_star_pattern ::= star_pattern
           | pattern

    star_pattern ::= STAR name

    mapping_pattern ::= LBRACE RBRACE
           | LBRACE double_star_pattern opt_141 RBRACE
           | LBRACE items_pattern opt_143 opt_144 RBRACE

    items_pattern ::= key_value_pattern list_146

    key_value_pattern ::= grp_147 COLON pattern

    double_star_pattern ::= STARSTAR pattern_capture_target

    class_pattern ::= name_or_attr LPAREN opt_153 RPAREN

    positional_patterns ::= pattern list_155

    keyword_patterns ::= keyword_pattern list_157

    keyword_pattern ::= name EQ pattern

    type_alias ::= TYPE name opt_158 EQ expression

    type_params ::= LBRACKET type_param_seq RBRACKET

    type_param_seq ::= type_param list_160 opt_161

    type_param ::= name opt_162 opt_163
           | STAR name opt_164
           | STARSTAR name opt_165

    type_param_bound ::= COLON expression

    type_param_default ::= EQ expression

    type_param_starred_default ::= EQ star_expression

    expressions ::= expression list_167 opt_168

    expression ::= disjunction opt_170
           | lambdef

    yield_expr ::= YIELD grp_171

    star_expressions ::= star_expression list_174 opt_175

    star_expression ::= STAR bitwise_or
           | expression

    star_named_expressions ::= star_named_expression list_177 opt_178

    star_named_expression ::= STAR bitwise_or
           | named_expression

    assignment_expression ::= name COLONEQ expression

    named_expression ::= assignment_expression
           | expression

    disjunction ::= conjunction list_180

    conjunction ::= inversion list_182

    inversion ::= NOT inversion
           | comparison

    comparison ::= bitwise_or list_183

    compare_op_bitwise_or_pair ::= eq_bitwise_or
           | noteq_bitwise_or
           | lte_bitwise_or
           | lt_bitwise_or
           | gte_bitwise_or
           | gt_bitwise_or
           | notin_bitwise_or
           | in_bitwise_or
           | isnot_bitwise_or
           | is_bitwise_or

    eq_bitwise_or ::= EQEQ bitwise_or

    noteq_bitwise_or ::= NOTEQ bitwise_or

    lte_bitwise_or ::= LTEQ bitwise_or

    lt_bitwise_or ::= LT bitwise_or

    gte_bitwise_or ::= GTEQ bitwise_or

    gt_bitwise_or ::= GT bitwise_or

    notin_bitwise_or ::= NOT IN bitwise_or

    in_bitwise_or ::= IN bitwise_or

    isnot_bitwise_or ::= IS NOT bitwise_or

    is_bitwise_or ::= IS bitwise_or

    bitwise_or ::= bitwise_or PIPE bitwise_xor
           | bitwise_xor

    bitwise_xor ::= bitwise_xor CARET bitwise_and
           | bitwise_and

    bitwise_and ::= bitwise_and AMP shift_expr
           | shift_expr

    shift_expr ::= shift_expr grp_184 sum
           | sum

    sum ::= sum grp_185 term
           | term

    term ::= term grp_186 factor
           | factor

    factor ::= PLUS factor
           | MINUS factor
           | TILDE factor
           | power

    power ::= await_primary opt_188

    await_primary ::= AWAIT primary
           | primary

    primary ::= primary grp_189
           | atom

    slices ::= slice
           | grp_191 list_194 opt_195

    slice ::= opt_196 COLON opt_197 opt_200
           | named_expression

    atom ::= name
           | TRUE
           | FALSE
           | NONE
           | strings
           | NUMBER
           | grp_201
           | grp_202
           | grp_203
           | ELLIPSIS

    group ::= LPAREN grp_204 RPAREN

    lambdef ::= LAMBDA opt_205 COLON expression

    lambda_params ::= lambda_parameters

    lambda_parameters ::= lambda_slash_no_default list_206 list_207 opt_208
           | lambda_slash_with_default list_209 opt_210
           | list_211 list_212 opt_213
           | list_214 opt_215
           | lambda_star_etc

    lambda_slash_no_default ::= list_216 SLASH opt_217

    lambda_slash_with_default ::= list_218 list_219 SLASH opt_220

    lambda_star_etc ::= STAR lambda_param_no_default list_221 opt_222
           | STAR COMMA list_223 opt_224
           | lambda_kwds

    lambda_kwds ::= STARSTAR lambda_param_no_default

    lambda_param_no_default ::= lambda_param opt_225

    lambda_param_with_default ::= lambda_param default_assignment opt_226

    lambda_param_maybe_default ::= lambda_param opt_227 opt_228

    lambda_param ::= name

    fstring_middle ::= fstring_replacement_field
           | FSTRING_MIDDLE

    fstring_replacement_field ::= LBRACE annotated_rhs opt_229 opt_230 opt_231 RBRACE

    fstring_conversion ::= BANG name

    fstring_full_format_spec ::= COLON list_232

    fstring_format_spec ::= FSTRING_MIDDLE
           | fstring_replacement_field

    fstring ::= FSTRING_START list_233 FSTRING_END

    string ::= STRING

    strings ::= list_235

    list ::= LBRACKET opt_236 RBRACKET

    tuple ::= LPAREN opt_239 RPAREN

    set ::= LBRACE star_named_expressions RBRACE

    dict ::= LBRACE opt_240 RBRACE

    double_starred_kvpairs ::= double_starred_kvpair list_242 opt_243

    double_starred_kvpair ::= STARSTAR bitwise_or
           | kvpair

    kvpair ::= expression COLON expression

    for_if_clauses ::= list_244

    for_if_clause ::= opt_245 FOR star_targets IN disjunction list_247

    listcomp ::= LBRACKET named_expression for_if_clauses RBRACKET

    setcomp ::= LBRACE named_expression for_if_clauses RBRACE

    genexp ::= LPAREN grp_248 for_if_clauses RPAREN

    dictcomp ::= LBRACE kvpair for_if_clauses RBRACE

    arguments ::= args opt_249

    args ::= grp_250 list_255 opt_257
           | kwargs

    kwargs ::= kwarg_or_starred list_259 opt_263
           | kwarg_or_double_starred list_265

    starred_expression ::= STAR expression

    kwarg_or_starred ::= name EQ expression
           | starred_expression

    kwarg_or_double_starred ::= name EQ expression
           | STARSTAR expression

    star_targets ::= star_target list_267 opt_268

    star_targets_list_seq ::= star_target list_270 opt_271

    star_targets_tuple_seq ::= star_target grp_272

    star_target ::= STAR star_target
           | target_with_star_atom

    target_with_star_atom ::= t_primary grp_276
           | star_atom

    star_atom ::= name
           | LPAREN target_with_star_atom RPAREN
           | LPAREN opt_277 RPAREN
           | LBRACKET opt_278 RBRACKET

    single_target ::= single_subscript_attribute_target
           | name
           | LPAREN single_target RPAREN

    single_subscript_attribute_target ::= t_primary grp_279

    t_primary ::= t_primary grp_280
           | atom

    del_targets ::= del_target list_283 opt_284

    del_target ::= t_primary grp_285
           | del_t_atom

    del_t_atom ::= name
           | LPAREN del_target RPAREN
           | LPAREN opt_286 RPAREN
           | LBRACKET opt_287 RBRACKET

    type_expressions ::= expression list_289 opt_294
           | STAR expression opt_296
           | STARSTAR expression

    func_type_comment ::= NEWLINE TYPE_COMMENT
           | TYPE_COMMENT

    name_except_underscore ::= IDENTIFIER
           | NAME_OR_TYPE
           | NAME_OR_MATCH
           | NAME_OR_CASE

    name ::= NAME_OR_WILDCARD
           | name_except_underscore

    opt_1 ::= statements | $empty

    list_2 ::= $empty | list_2 NEWLINE

    opt_3 ::= type_expressions | $empty

    list_4 ::= $empty | list_4 NEWLINE

    list_5 ::= statement | list_5 statement

    seq_6 ::= SEMI simple_stmt

    list_7 ::= $empty | list_7 seq_6

    opt_8 ::= SEMI | $empty

    seq_9 ::= EQ annotated_rhs

    opt_10 ::= seq_9 | $empty

    grp_11 ::= LPAREN single_target RPAREN | single_subscript_attribute_target

    seq_12 ::= EQ annotated_rhs

    opt_13 ::= seq_12 | $empty

    seq_14 ::= star_targets EQ

    list_15 ::= seq_14 | list_15 seq_14

    grp_16 ::= yield_expr | star_expressions

    opt_17 ::= TYPE_COMMENT | $empty

    grp_18 ::= yield_expr | star_expressions

    opt_19 ::= star_expressions | $empty

    seq_20 ::= FROM expression

    opt_21 ::= seq_20 | $empty

    seq_22 ::= expression opt_21

    opt_23 ::= seq_22 | $empty

    seq_24 ::= COMMA name

    list_25 ::= $empty | list_25 seq_24

    seq_26 ::= COMMA name

    list_27 ::= $empty | list_27 seq_26

    seq_28 ::= COMMA expression

    opt_29 ::= seq_28 | $empty

    grp_30 ::= DOT | ELLIPSIS

    list_31 ::= $empty | list_31 grp_30

    grp_32 ::= DOT | ELLIPSIS

    list_33 ::= grp_32 | list_33 grp_32

    opt_34 ::= COMMA | $empty

    seq_35 ::= COMMA import_from_as_name

    list_36 ::= $empty | list_36 seq_35

    seq_37 ::= AS name

    opt_38 ::= seq_37 | $empty

    seq_39 ::= COMMA dotted_as_name

    list_40 ::= $empty | list_40 seq_39

    seq_41 ::= AS name

    opt_42 ::= seq_41 | $empty

    seq_43 ::= AT named_expression NEWLINE

    list_44 ::= seq_43 | list_44 seq_43

    opt_45 ::= type_params | $empty

    opt_46 ::= arguments | $empty

    seq_47 ::= LPAREN opt_46 RPAREN

    opt_48 ::= seq_47 | $empty

    opt_49 ::= type_params | $empty

    opt_50 ::= params | $empty

    seq_51 ::= ARROW expression

    opt_52 ::= seq_51 | $empty

    opt_53 ::= func_type_comment | $empty

    opt_54 ::= type_params | $empty

    opt_55 ::= params | $empty

    seq_56 ::= ARROW expression

    opt_57 ::= seq_56 | $empty

    opt_58 ::= func_type_comment | $empty

    list_59 ::= $empty | list_59 param_no_default

    list_60 ::= $empty | list_60 param_with_default

    opt_61 ::= star_etc | $empty

    list_62 ::= $empty | list_62 param_with_default

    opt_63 ::= star_etc | $empty

    list_64 ::= param_no_default | list_64 param_no_default

    list_65 ::= $empty | list_65 param_with_default

    opt_66 ::= star_etc | $empty

    list_67 ::= param_with_default | list_67 param_with_default

    opt_68 ::= star_etc | $empty

    list_69 ::= param_no_default | list_69 param_no_default

    opt_70 ::= COMMA | $empty

    list_71 ::= $empty | list_71 param_no_default

    list_72 ::= param_with_default | list_72 param_with_default

    opt_73 ::= COMMA | $empty

    list_74 ::= $empty | list_74 param_maybe_default

    opt_75 ::= kwds | $empty

    list_76 ::= $empty | list_76 param_maybe_default

    opt_77 ::= kwds | $empty

    list_78 ::= param_maybe_default | list_78 param_maybe_default

    opt_79 ::= kwds | $empty

    opt_80 ::= COMMA | $empty

    opt_81 ::= TYPE_COMMENT | $empty

    opt_82 ::= COMMA | $empty

    opt_83 ::= TYPE_COMMENT | $empty

    opt_84 ::= COMMA | $empty

    opt_85 ::= TYPE_COMMENT | $empty

    opt_86 ::= default_assignment | $empty

    opt_87 ::= COMMA | $empty

    opt_88 ::= TYPE_COMMENT | $empty

    opt_89 ::= annotation | $empty

    opt_91 ::= else_block | $empty

    grp_90 ::= elif_stmt | opt_91

    opt_93 ::= else_block | $empty

    grp_92 ::= elif_stmt | opt_93

    opt_94 ::= else_block | $empty

    opt_95 ::= ASYNC | $empty

    opt_96 ::= TYPE_COMMENT | $empty

    opt_97 ::= else_block | $empty

    seq_98 ::= COMMA with_item

    list_99 ::= $empty | list_99 seq_98

    opt_100 ::= COMMA | $empty

    opt_101 ::= TYPE_COMMENT | $empty

    seq_102 ::= COMMA with_item

    list_103 ::= $empty | list_103 seq_102

    opt_104 ::= COMMA | $empty

    opt_105 ::= ASYNC | $empty

    seq_106 ::= COMMA with_item

    list_107 ::= $empty | list_107 seq_106

    opt_108 ::= TYPE_COMMENT | $empty

    seq_109 ::= AS star_target

    opt_110 ::= seq_109 | $empty

    list_111 ::= except_block | list_111 except_block

    opt_112 ::= else_block | $empty

    opt_113 ::= finally_block | $empty

    list_114 ::= except_star_block | list_114 except_star_block

    opt_115 ::= else_block | $empty

    opt_116 ::= finally_block | $empty

    seq_117 ::= AS name

    opt_118 ::= seq_117 | $empty

    seq_119 ::= expression opt_118

    opt_120 ::= seq_119 | $empty

    seq_121 ::= AS name

    opt_122 ::= seq_121 | $empty

    list_123 ::= case_block | list_123 case_block

    opt_124 ::= star_named_expressions | $empty

    opt_125 ::= guard | $empty

    grp_126 ::= PIPE closed_pattern

    list_127 ::= $empty | list_127 grp_126

    grp_128 ::= PLUS | MINUS

    opt_129 ::= MINUS | $empty

    opt_130 ::= MINUS | $empty

    seq_131 ::= DOT name

    list_132 ::= seq_131 | list_132 seq_131

    seq_133 ::= DOT name

    list_134 ::= $empty | list_134 seq_133

    opt_135 ::= maybe_sequence_pattern | $empty

    opt_136 ::= open_sequence_pattern | $empty

    opt_137 ::= maybe_sequence_pattern | $empty

    seq_138 ::= COMMA maybe_star_pattern

    list_139 ::= $empty | list_139 seq_138

    opt_140 ::= COMMA | $empty

    opt_141 ::= COMMA | $empty

    seq_142 ::= COMMA double_star_pattern

    opt_143 ::= seq_142 | $empty

    opt_144 ::= COMMA | $empty

    seq_145 ::= COMMA key_value_pattern

    list_146 ::= $empty | list_146 seq_145

    grp_147 ::= literal_expr | attr

    seq_150 ::= COMMA keyword_patterns

    opt_151 ::= seq_150 | $empty

    grp_149 ::= positional_patterns opt_151 | keyword_patterns

    opt_152 ::= COMMA | $empty

    grp_148 ::= grp_149 opt_152

    opt_153 ::= grp_148 | $empty

    seq_154 ::= COMMA pattern

    list_155 ::= $empty | list_155 seq_154

    seq_156 ::= COMMA keyword_pattern

    list_157 ::= $empty | list_157 seq_156

    opt_158 ::= type_params | $empty

    seq_159 ::= COMMA type_param

    list_160 ::= $empty | list_160 seq_159

    opt_161 ::= COMMA | $empty

    opt_162 ::= type_param_bound | $empty

    opt_163 ::= type_param_default | $empty

    opt_164 ::= type_param_starred_default | $empty

    opt_165 ::= type_param_default | $empty

    seq_166 ::= COMMA expression

    list_167 ::= $empty | list_167 seq_166

    opt_168 ::= COMMA | $empty

    seq_169 ::= IF disjunction ELSE expression

    opt_170 ::= seq_169 | $empty

    opt_172 ::= star_expressions | $empty

    grp_171 ::= FROM expression | opt_172

    seq_173 ::= COMMA star_expression

    list_174 ::= $empty | list_174 seq_173

    opt_175 ::= COMMA | $empty

    seq_176 ::= COMMA star_named_expression

    list_177 ::= $empty | list_177 seq_176

    opt_178 ::= COMMA | $empty

    seq_179 ::= OR conjunction

    list_180 ::= $empty | list_180 seq_179

    seq_181 ::= AND inversion

    list_182 ::= $empty | list_182 seq_181

    list_183 ::= $empty | list_183 compare_op_bitwise_or_pair

    grp_184 ::= LSHIFT | RSHIFT

    grp_185 ::= PLUS | MINUS

    grp_186 ::= STAR | SLASH | SLASHSLASH | PERCENT | AT

    seq_187 ::= STARSTAR factor

    opt_188 ::= seq_187 | $empty

    opt_190 ::= arguments | $empty

    grp_189 ::= DOT name | genexp | LPAREN opt_190 RPAREN | LBRACKET slices RBRACKET

    grp_191 ::= slice | starred_expression

    grp_193 ::= slice | starred_expression

    grp_192 ::= COMMA grp_193

    list_194 ::= $empty | list_194 grp_192

    opt_195 ::= COMMA | $empty

    opt_196 ::= expression | $empty

    opt_197 ::= expression | $empty

    opt_198 ::= expression | $empty

    seq_199 ::= COLON opt_198

    opt_200 ::= seq_199 | $empty

    grp_201 ::= tuple | group | genexp

    grp_202 ::= list | listcomp

    grp_203 ::= dict | set | dictcomp | setcomp

    grp_204 ::= yield_expr | named_expression

    opt_205 ::= lambda_params | $empty

    list_206 ::= $empty | list_206 lambda_param_no_default

    list_207 ::= $empty | list_207 lambda_param_with_default

    opt_208 ::= lambda_star_etc | $empty

    list_209 ::= $empty | list_209 lambda_param_with_default

    opt_210 ::= lambda_star_etc | $empty

    list_211 ::= lambda_param_no_default | list_211 lambda_param_no_default

    list_212 ::= $empty | list_212 lambda_param_with_default

    opt_213 ::= lambda_star_etc | $empty

    list_214 ::= lambda_param_with_default | list_214 lambda_param_with_default

    opt_215 ::= lambda_star_etc | $empty

    list_216 ::= lambda_param_no_default | list_216 lambda_param_no_default

    opt_217 ::= COMMA | $empty

    list_218 ::= $empty | list_218 lambda_param_no_default

    list_219 ::= lambda_param_with_default | list_219 lambda_param_with_default

    opt_220 ::= COMMA | $empty

    list_221 ::= $empty | list_221 lambda_param_maybe_default

    opt_222 ::= lambda_kwds | $empty

    list_223 ::= lambda_param_maybe_default | list_223 lambda_param_maybe_default

    opt_224 ::= lambda_kwds | $empty

    opt_225 ::= COMMA | $empty

    opt_226 ::= COMMA | $empty

    opt_227 ::= default_assignment | $empty

    opt_228 ::= COMMA | $empty

    opt_229 ::= EQ | $empty

    opt_230 ::= fstring_conversion | $empty

    opt_231 ::= fstring_full_format_spec | $empty

    list_232 ::= $empty | list_232 fstring_format_spec

    list_233 ::= $empty | list_233 fstring_middle

    grp_234 ::= fstring | string

    list_235 ::= grp_234 | list_235 grp_234

    opt_236 ::= star_named_expressions | $empty

    opt_237 ::= star_named_expressions | $empty

    seq_238 ::= star_named_expression COMMA opt_237

    opt_239 ::= seq_238 | $empty

    opt_240 ::= double_starred_kvpairs | $empty

    seq_241 ::= COMMA double_starred_kvpair

    list_242 ::= $empty | list_242 seq_241

    opt_243 ::= COMMA | $empty

    list_244 ::= for_if_clause | list_244 for_if_clause

    opt_245 ::= ASYNC | $empty

    seq_246 ::= IF disjunction

    list_247 ::= $empty | list_247 seq_246

    grp_248 ::= assignment_expression | expression

    opt_249 ::= COMMA | $empty

    grp_251 ::= assignment_expression | expression

    grp_250 ::= starred_expression | grp_251

    grp_254 ::= assignment_expression | expression

    grp_253 ::= starred_expression | grp_254

    grp_252 ::= COMMA grp_253

    list_255 ::= $empty | list_255 grp_252

    seq_256 ::= COMMA kwargs

    opt_257 ::= seq_256 | $empty

    seq_258 ::= COMMA kwarg_or_starred

    list_259 ::= $empty | list_259 seq_258

    seq_260 ::= COMMA kwarg_or_double_starred

    list_261 ::= $empty | list_261 seq_260

    seq_262 ::= COMMA kwarg_or_double_starred list_261

    opt_263 ::= seq_262 | $empty

    seq_264 ::= COMMA kwarg_or_double_starred

    list_265 ::= $empty | list_265 seq_264

    seq_266 ::= COMMA star_target

    list_267 ::= $empty | list_267 seq_266

    opt_268 ::= COMMA | $empty

    seq_269 ::= COMMA star_target

    list_270 ::= $empty | list_270 seq_269

    opt_271 ::= COMMA | $empty

    seq_273 ::= COMMA star_target

    list_274 ::= seq_273 | list_274 seq_273

    opt_275 ::= COMMA | $empty

    grp_272 ::= COMMA | list_274 opt_275

    grp_276 ::= DOT name | LBRACKET slices RBRACKET

    opt_277 ::= star_targets_tuple_seq | $empty

    opt_278 ::= star_targets_list_seq | $empty

    grp_279 ::= DOT name | LBRACKET slices RBRACKET

    opt_281 ::= arguments | $empty

    grp_280 ::= DOT name | LBRACKET slices RBRACKET | genexp | LPAREN opt_281 RPAREN

    seq_282 ::= COMMA del_target

    list_283 ::= $empty | list_283 seq_282

    opt_284 ::= COMMA | $empty

    grp_285 ::= DOT name | LBRACKET slices RBRACKET

    opt_286 ::= del_targets | $empty

    opt_287 ::= del_targets | $empty

    seq_288 ::= COMMA expression

    list_289 ::= $empty | list_289 seq_288

    seq_292 ::= COMMA STARSTAR expression

    opt_293 ::= seq_292 | $empty

    grp_291 ::= STAR expression opt_293 | STARSTAR expression

    grp_290 ::= COMMA grp_291

    opt_294 ::= grp_290 | $empty

    seq_295 ::= COMMA STARSTAR expression

    opt_296 ::= seq_295 | $empty

    indent_opt ::= $empty

    dedent_opt ::= $empty

%End
