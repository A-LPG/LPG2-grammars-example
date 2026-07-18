-- AUTO-GENERATED from antlr/grammars-v4 powerbuilder by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=PowerbuilderParser
%options package=lpg.grammars.powerbuilder
%options template=dtParserTemplateF.gi
%options import_terminals=PowerbuilderLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    start_rule
%End

%Rules
    start_rule ::= opt_2 list_3

    body_rule ::= datatype_decl
           | access_modif
           | forward_decl
           | type_variables_decl
           | global_variables_decl
           | variable_decl
           | constant_decl
           | function_forward_decl
           | functions_forward_decl
           | function_body
           | on_body
           | event_body

    forward_decl ::= FORWARD list_5 END FORWARD

    datatype_decl ::= opt_6 TYPE identifier_name FROM opt_8 data_type_name opt_10 opt_11 opt_13 list_15 END TYPE

    type_variables_decl ::= TYPE VARIABLES list_17 END VARIABLES

    global_variables_decl ::= GLOBAL variable_decl
           | grp_18 VARIABLES list_19 END VARIABLES

    variable_decl ::= opt_20 variable_decl_sub opt_21

    variable_decl_sub ::= opt_22 opt_23 opt_24 grp_25

    variable_decl_sub0 ::= data_type_name opt_26 variable_name list_28 opt_30

    variable_decl_sub1 ::= data_type_name assignment_statement list_33

    variable_decl_sub2 ::= data_type_name opt_34 identifier_name_ex opt_35 opt_38

    variable_decl_event ::= EVENT identifier opt_40

    decimal_decl_sub ::= LCURLY NUMBER RCURLY

    array_decl_sub ::= LBRACE opt_56 RBRACE

    constant_decl_sub ::= opt_57 CONSTANT variable_decl_sub

    constant_decl ::= constant_decl_sub opt_58

    function_forward_decl ::= opt_59 opt_60 grp_61 identifier_name LPAREN opt_62 RPAREN opt_63

    function_forward_decl_alias ::= ALIAS FOR identifier_name LIBRARY grp_64
           | LIBRARY grp_65 opt_68
           | RPCFUNC ALIAS FOR opt_70 opt_72
           | THROWS identifier_name

    parameter_sub ::= opt_73 opt_74 data_type_name opt_75 identifier_name opt_76

    parameters_list_sub ::= parameter_sub list_78 opt_80

    functions_forward_decl ::= grp_81 PROTOTYPES list_82 END PROTOTYPES

    function_body ::= opt_83 opt_84 grp_85 identifier_name LPAREN opt_86 RPAREN opt_88 opt_89 list_92 END grp_93

    on_body ::= ON identifier opt_96 opt_97 list_100 END ON

    event_forward_decl ::= EVENT grp_101

    event_body ::= EVENT opt_110 opt_112 grp_113 opt_116 opt_117 list_120 END EVENT

    access_type ::= PUBLIC
           | PRIVATE
           | PROTECTED

    access_modif ::= access_type COLON

    access_modif_part ::= PUBLIC
           | PRIVATE
           | PRIVATEREAD
           | PRIVATEWRITE
           | PROTECTED
           | PROTECTEDREAD
           | PROTECTEDWRITE

    scope_modif ::= GLOBAL
           | LOCAL

    expression ::= close_call_sub
           | value
           | function_call_statement
           | LCURLY expression list_122 RCURLY
           | expression grp_123 expression
           | LPAREN expression RPAREN
           | boolean_expression

    value ::= string_literal list_125
           | ENUM
           | NUMBER
           | TRUE
           | FALSE
           | DATE
           | TIME

    expression_list ::= opt_126 expression list_129

    boolean_expression ::= unary_sign_expr
           | mul_expr
           | add_expr
           | condition_or
           | LPAREN boolean_expression RPAREN

    condition_or ::= condition_and list_131
           | LPAREN boolean_expression RPAREN

    condition_and ::= condition_not list_133
           | LPAREN boolean_expression RPAREN

    condition_not ::= opt_134 condition_comparison
           | LPAREN boolean_expression RPAREN

    condition_comparison ::= add_expr opt_137
           | LPAREN boolean_expression RPAREN

    add_expr ::= mul_expr list_140
           | LPAREN boolean_expression RPAREN

    mul_expr ::= unary_sign_expr list_143
           | LPAREN boolean_expression RPAREN

    unary_sign_expr ::= ENUM
           | opt_145 grp_146
           | function_call_statement
           | LCURLY function_call_statement RCURLY
           | LPAREN unary_sign_expr RPAREN
           | set_value

    statement ::= increment_decrement_statement
           | public_statement
           | if_simple_statement
           | execute_statement
           | throw_statement
           | DESCRIBE identifier_name
           | assignment_statement
           | try_catch_statement
           | close_sql_statement
           | statement_sub
           | if_statement
           | post_event
           | function_call_statement
           | super_call_statement
           | event_call_statement
           | declare_procedure_statement
           | constant_decl
           | variable_decl
           | do_loop_while_statement
           | do_while_loop_statement
           | create_call_statement
           | destroy_call_statement
           | label_stat
           | goto_statement
           | choose_statement
           | return_statement
           | for_loop_statement
           | continue_statement
           | exit_statement
           | sql_statement
           | sql_commit_statement
           | open_cursor_statement
           | prepare_sql_stateent
           | declare_cursor_statement
           | close_cursor_statement
           | fetch_into_statement
           | call_statement

    public_statement ::= grp_147 COLON

    throw_statement ::= THROW expression

    goto_statement ::= GOTO variable_name list_150 variable_name COLON list_153

    statement_sub ::= function_virtual_call_expression_sub
           | function_call_expression_sub
           | return_statement
           | open_call_sub
           | close_call_sub
           | variable_decl_sub
           | super_call_statement
           | create_call_sub
           | destroy_call_sub
           | continue_sub
           | assignment_statement

    try_catch_statement ::= TRY list_156 list_161 opt_166 END TRY

    sql_statement ::= sql_insert_statement
           | sql_delete_statement
           | sql_select_statement
           | sql_update_statement
           | sql_connect_statement

    sql_insert_statement ::= INSERT INTO variable_name LPAREN variable_name list_168 RPAREN VALUES LPAREN sql_values list_170 RPAREN opt_171

    sql_values ::= value
           | bind_param

    sql_delete_statement ::= DELETE FROM variable_name where_clause opt_172

    sql_select_statement ::= grp_173 select_clause INTO bind_param list_175 FROM variable_name list_177 opt_178 opt_180 opt_181

    sql_update_statement ::= grp_182 variable_name SET set_value list_184 opt_185

    sql_connect_statement ::= grp_186 opt_189 SEMI

    set_value ::= variable_name grp_190

    where_clause ::= WHERE grp_192

    select_clause ::= variable_name list_196
           | function_call_statement

    sql_commit_statement ::= COMMIT opt_197 opt_199 opt_200

    execute_statement ::= EXECUTE grp_201

    close_sql_statement ::= CLOSE variable_name SEMI

    declare_procedure_statement ::= DECLARE variable_name opt_215 PROCEDURE FOR variable_name opt_216

    declare_cursor_statement ::= DECLARE variable_name opt_217 CURSOR FOR variable_name SEMI

    open_cursor_statement ::= OPEN opt_218 variable_name opt_221 opt_222 opt_223

    close_cursor_statement ::= CLOSE variable_name

    fetch_into_statement ::= FETCH grp_224 opt_226

    prepare_sql_stateent ::= PREPARE variable_name FROM bind_param USING grp_227 SEMI

    increment_decrement_statement ::= variable_name grp_228

    assignment_rhs ::= value
           | expression list_230
           | function_call_statement
           | describe_function_call
           | create_call_statement
           | super_call_statement
           | event_call_statement

    describe_function_call ::= opt_232 DESCRIBE LPAREN opt_233 RPAREN
           | DESCRIBE identifier INTO identifier

    assignment_statement ::= AT variable_name EQ bind_param SEMI
           | opt_235 variable_name grp_236 assignment_rhs opt_237

    variable_name ::= identifier

    return_statement ::= RETURN opt_238

    function_call_expression_sub ::= list_240 opt_241 opt_242 opt_243 opt_244 function_name LPAREN opt_245 RPAREN list_248

    function_name ::= POST
           | OPEN
           | CLOSE
           | variable_name
           | dataTypeSub

    function_event_call ::= function_name DOT opt_249 opt_250 opt_251 function_call_expression_sub

    function_virtual_call_expression_sub ::= identifier DOT grp_252 function_call_expression_sub

    open_call_sub ::= OPEN LPAREN expression_list RPAREN

    close_call_sub ::= CLOSE LPAREN expression_list RPAREN
           | HALT opt_255

    function_call_statement ::= function_call_expression_sub
           | ancestor_function_call
           | describe_function_call
           | ancestor_event_call_statement
           | function_event_call
           | function_virtual_call_expression_sub
           | open_call_sub
           | close_call_sub

    ancestor_function_call ::= COLONCOLON function_call_expression_sub

    call_statement ::= CALL variable_name opt_258 opt_259

    super_call_statement ::= CALL opt_261 grp_262
           | CALL SUPER COLONCOLON grp_263 opt_264
           | SUPER COLONCOLON opt_266 opt_267 function_call_statement

    ancestor_event_call_statement ::= opt_269 identifier_name COLONCOLON opt_271 opt_273 function_call_statement

    event_call_statement_sub ::= opt_274 EVENT opt_275

    event_call_statement ::= event_call_statement_sub

    create_call_sub ::= CREATE grp_276

    create_call_statement ::= create_call_sub

    destroy_call_sub ::= DESTROY expression

    destroy_call_statement ::= destroy_call_sub

    for_loop_statement ::= FOR variable_name EQ expression TO expression opt_284 list_285 grp_286

    do_while_loop_statement ::= DO grp_287 boolean_expression list_290 LOOP

    do_loop_while_statement ::= DO list_291 LOOP grp_292 boolean_expression

    if_statement ::= IF boolean_expression THEN list_295 list_296 opt_297 END IF opt_298

    elseif_statement ::= ELSEIF boolean_expression THEN list_301

    else_statement ::= ELSE list_304

    if_simple_statement ::= IF boolean_expression THEN statement opt_306 opt_307

    continue_statement ::= CONTINUE

    continue_sub ::= CONTINUE

    post_event ::= opt_309 grp_310 opt_311 identifier_name_ex LPAREN opt_312 RPAREN

    exit_statement ::= EXIT

    choose_statement ::= CHOOSE CASE expression list_314 END CHOOSE

    choose_case_value_sub ::= CASE expression opt_316 list_320 list_323

    choose_case_cond_sub ::= CASE IS grp_324 expression list_327

    choose_case_else_sub ::= CASE ELSE list_330

    label_stat ::= identifier_name COLON

    identifier ::= identifier_name_ex list_332 opt_333 list_336

    string_literal ::= grp_337 list_340

    identifier_array ::= LBRACE opt_351 RBRACE

    operator ::= PLUS
           | MINUS
           | MULT
           | DIV

    identifier_name_ex ::= identifier_name
           | SELECT
           | TYPE
           | UPDATE
           | DELETE
           | OPEN
           | CLOSE
           | GOTO
           | INSERT
           | TIME_TYPE
           | READONLY
           | SQLCA
           | CREATE
           | VALUES
           | WINDOW
           | SYSTEM
           | DATE_TYPE

    identifier_name ::= opt_352 ID

    bind_param ::= COLON identifier

    atom_sub ::= array_access_atom
           | identifier_name opt_355

    atom_sub_call1 ::= grp_356 LPAREN opt_357 RPAREN

    atom_sub_member1 ::= identifier

    array_access_atom ::= identifier_name LBRACE expression_list RBRACE

    data_type_name ::= dataTypeSub
           | identifier_name

    dataTypeSub ::= ANY
           | BLOB
           | BOOLEAN
           | BYTE
           | CHARACTER
           | CHAR
           | DATE_TYPE
           | DATETIME
           | DECIMAL
           | DEC
           | DOUBLE
           | INTEGER
           | INT
           | LONG
           | LONGLONG
           | REAL
           | STRING
           | TIME_TYPE
           | UNSIGNEDINTEGER
           | UINT
           | UNSIGNEDLONG
           | ULONG
           | WINDOW

    seq_1 ::= RELEASE NUMBER SEMI

    opt_2 ::= seq_1 | $empty

    list_3 ::= body_rule | list_3 body_rule

    grp_4 ::= datatype_decl | variable_decl | global_variables_decl

    list_5 ::= grp_4 | list_5 grp_4

    opt_6 ::= scope_modif | $empty

    seq_7 ::= identifier_name TICK

    opt_8 ::= seq_7 | $empty

    seq_9 ::= WITHIN identifier_name

    opt_10 ::= seq_9 | $empty

    opt_11 ::= AUTOINSTANTIATE | $empty

    seq_12 ::= DESCRIPTOR DQUOTED_STRING EQ DQUOTED_STRING

    opt_13 ::= seq_12 | $empty

    grp_14 ::= variable_decl | event_forward_decl

    list_15 ::= $empty | list_15 grp_14

    grp_16 ::= variable_decl | constant_decl | public_statement

    list_17 ::= $empty | list_17 grp_16

    grp_18 ::= GLOBAL | SHARED

    list_19 ::= $empty | list_19 variable_decl

    opt_20 ::= access_type | $empty

    opt_21 ::= SEMI | $empty

    opt_22 ::= INDIRECT | $empty

    opt_23 ::= access_modif_part | $empty

    opt_24 ::= scope_modif | $empty

    grp_25 ::= variable_decl_sub0 | variable_decl_sub1 | variable_decl_sub2 | variable_decl_event

    opt_26 ::= decimal_decl_sub | $empty

    seq_27 ::= COMMA variable_name

    list_28 ::= $empty | list_28 seq_27

    seq_29 ::= EQ assignment_rhs

    opt_30 ::= seq_29 | $empty

    opt_31 ::= data_type_name | $empty

    seq_32 ::= COMMA opt_31 assignment_statement

    list_33 ::= $empty | list_33 seq_32

    opt_34 ::= decimal_decl_sub | $empty

    opt_35 ::= array_decl_sub | $empty

    opt_36 ::= EQ | $empty

    seq_37 ::= opt_36 LCURLY expression_list RCURLY

    opt_38 ::= seq_37 | $empty

    seq_39 ::= LPAREN expression_list RPAREN

    opt_40 ::= seq_39 | $empty

    grp_42 ::= PLUS | MINUS

    opt_43 ::= grp_42 | $empty

    grp_45 ::= PLUS | MINUS

    opt_46 ::= grp_45 | $empty

    grp_44 ::= TO opt_46 NUMBER

    opt_47 ::= grp_44 | $empty

    grp_49 ::= PLUS | MINUS

    opt_50 ::= grp_49 | $empty

    grp_52 ::= PLUS | MINUS

    opt_53 ::= grp_52 | $empty

    grp_51 ::= TO opt_53 NUMBER

    opt_54 ::= grp_51 | $empty

    grp_48 ::= COMMA opt_50 NUMBER opt_54

    list_55 ::= $empty | list_55 grp_48

    grp_41 ::= opt_43 NUMBER opt_47 list_55

    opt_56 ::= grp_41 | $empty

    opt_57 ::= access_type | $empty

    opt_58 ::= SEMI | $empty

    opt_59 ::= access_modif_part | $empty

    opt_60 ::= scope_modif | $empty

    grp_61 ::= FUNCTION data_type_name | SUBROUTINE

    opt_62 ::= parameters_list_sub | $empty

    opt_63 ::= function_forward_decl_alias | $empty

    grp_64 ::= DQUOTED_STRING | QUOTED_STRING

    grp_65 ::= DQUOTED_STRING | QUOTED_STRING

    grp_67 ::= DQUOTED_STRING | QUOTED_STRING

    grp_66 ::= ALIAS FOR grp_67

    opt_68 ::= grp_66 | $empty

    grp_69 ::= DQUOTED_STRING | QUOTED_STRING

    opt_70 ::= grp_69 | $empty

    seq_71 ::= THROWS identifier_name

    opt_72 ::= seq_71 | $empty

    opt_73 ::= READONLY | $empty

    opt_74 ::= REF | $empty

    opt_75 ::= decimal_decl_sub | $empty

    opt_76 ::= array_decl_sub | $empty

    seq_77 ::= COMMA parameter_sub

    list_78 ::= $empty | list_78 seq_77

    seq_79 ::= COMMA DOTDOTDOT

    opt_80 ::= seq_79 | $empty

    grp_81 ::= FORWARD | TYPE

    list_82 ::= $empty | list_82 function_forward_decl

    opt_83 ::= access_type | $empty

    opt_84 ::= scope_modif | $empty

    grp_85 ::= FUNCTION data_type_name | SUBROUTINE

    opt_86 ::= parameters_list_sub | $empty

    seq_87 ::= THROWS identifier_name

    opt_88 ::= seq_87 | $empty

    opt_89 ::= SEMI | $empty

    opt_90 ::= SEMI | $empty

    seq_91 ::= statement opt_90

    list_92 ::= $empty | list_92 seq_91

    grp_93 ::= FUNCTION | SUBROUTINE

    grp_95 ::= CREATE | DESTROY

    grp_94 ::= DOT grp_95 | OPEN | CLOSE

    opt_96 ::= grp_94 | $empty

    opt_97 ::= SEMI | $empty

    opt_98 ::= SEMI | $empty

    seq_99 ::= statement opt_98

    list_100 ::= $empty | list_100 seq_99

    grp_102 ::= identifier_name | CREATE | DESTROY

    opt_103 ::= identifier_name | $empty

    opt_104 ::= parameters_list_sub | $empty

    seq_105 ::= LPAREN opt_104 RPAREN

    opt_106 ::= seq_105 | $empty

    opt_107 ::= parameters_list_sub | $empty

    seq_108 ::= LPAREN opt_107 RPAREN

    grp_101 ::= grp_102 opt_103 opt_106 | TYPE data_type_name identifier_name seq_108

    seq_109 ::= TYPE data_type_name

    opt_110 ::= seq_109 | $empty

    seq_111 ::= identifier_name COLONCOLON

    opt_112 ::= seq_111 | $empty

    grp_113 ::= identifier_name | OPEN | CLOSE

    opt_114 ::= parameters_list_sub | $empty

    seq_115 ::= LPAREN opt_114 RPAREN

    opt_116 ::= seq_115 | $empty

    opt_117 ::= SEMI | $empty

    opt_118 ::= SEMI | $empty

    seq_119 ::= statement opt_118

    list_120 ::= $empty | list_120 seq_119

    seq_121 ::= COMMA expression

    list_122 ::= $empty | list_122 seq_121

    grp_123 ::= PLUS | MINUS | MULT | DIV | CARAT

    seq_124 ::= PLUS string_literal

    list_125 ::= $empty | list_125 seq_124

    opt_126 ::= REF | $empty

    opt_127 ::= REF | $empty

    seq_128 ::= COMMA opt_127 expression

    list_129 ::= $empty | list_129 seq_128

    seq_130 ::= OR condition_and

    list_131 ::= $empty | list_131 seq_130

    seq_132 ::= AND condition_not

    list_133 ::= $empty | list_133 seq_132

    opt_134 ::= NOT | $empty

    grp_136 ::= EQ | GT | LT | GTLT | GTE | LTE

    grp_135 ::= grp_136 add_expr

    opt_137 ::= grp_135 | $empty

    grp_139 ::= MINUS | PLUS

    grp_138 ::= grp_139 mul_expr

    list_140 ::= $empty | list_140 grp_138

    grp_142 ::= MULT | DIV | CARAT

    grp_141 ::= grp_142 unary_sign_expr

    list_143 ::= $empty | list_143 grp_141

    grp_144 ::= MINUS | PLUS

    opt_145 ::= grp_144 | $empty

    grp_146 ::= variable_name | bind_param | value

    grp_147 ::= PUBLIC | PROTECTED | PRIVATE

    opt_148 ::= SEMI | $empty

    seq_149 ::= statement opt_148

    list_150 ::= $empty | list_150 seq_149

    opt_151 ::= SEMI | $empty

    seq_152 ::= statement opt_151

    list_153 ::= $empty | list_153 seq_152

    opt_154 ::= SEMI | $empty

    seq_155 ::= statement opt_154

    list_156 ::= $empty | list_156 seq_155

    opt_157 ::= SEMI | $empty

    seq_158 ::= statement opt_157

    list_159 ::= $empty | list_159 seq_158

    seq_160 ::= CATCH LPAREN variable_decl_sub RPAREN list_159

    list_161 ::= $empty | list_161 seq_160

    opt_162 ::= SEMI | $empty

    seq_163 ::= statement opt_162

    list_164 ::= $empty | list_164 seq_163

    seq_165 ::= FINALLY list_164

    opt_166 ::= seq_165 | $empty

    seq_167 ::= COMMA variable_name

    list_168 ::= $empty | list_168 seq_167

    seq_169 ::= COMMA sql_values

    list_170 ::= $empty | list_170 seq_169

    opt_171 ::= SEMI | $empty

    opt_172 ::= SEMI | $empty

    grp_173 ::= SELECT | SELECTBLOB

    seq_174 ::= COMMA bind_param

    list_175 ::= $empty | list_175 seq_174

    seq_176 ::= COMMA variable_name

    list_177 ::= $empty | list_177 seq_176

    opt_178 ::= where_clause | $empty

    seq_179 ::= USING variable_name

    opt_180 ::= seq_179 | $empty

    opt_181 ::= SEMI | $empty

    grp_182 ::= UPDATE | UPDATEBLOB

    seq_183 ::= COMMA set_value

    list_184 ::= $empty | list_184 seq_183

    opt_185 ::= where_clause | $empty

    grp_186 ::= CONNECT | DISCONNECT | ROLLBACK

    grp_188 ::= SQLCA | identifier_name

    grp_187 ::= USING grp_188

    opt_189 ::= grp_187 | $empty

    opt_191 ::= NOT | $empty

    grp_190 ::= EQ bind_param | IS opt_191 NULL_

    seq_193 ::= COMMA set_value

    list_194 ::= $empty | list_194 seq_193

    grp_192 ::= set_value list_194 | condition_or

    seq_195 ::= COMMA variable_name

    list_196 ::= $empty | list_196 seq_195

    opt_197 ::= USING | $empty

    grp_198 ::= SQLCA | variable_name

    opt_199 ::= grp_198 | $empty

    opt_200 ::= SEMI | $empty

    opt_202 ::= IMMEDIATE | $empty

    grp_204 ::= variable_name | value

    opt_205 ::= SEMI | $empty

    grp_207 ::= SQLCA | variable_name

    grp_206 ::= USING grp_207

    opt_208 ::= grp_206 | $empty

    grp_203 ::= grp_204 opt_205 | bind_param opt_208 SEMI

    opt_209 ::= DYNAMIC | $empty

    opt_211 ::= DESCRIPTOR | $empty

    grp_212 ::= SQLCA | identifier

    grp_210 ::= USING opt_211 grp_212

    opt_213 ::= grp_210 | $empty

    opt_214 ::= SEMI | $empty

    grp_201 ::= opt_202 grp_203 | opt_209 identifier opt_213 opt_214

    opt_215 ::= DYNAMIC | $empty

    opt_216 ::= SEMI | $empty

    opt_217 ::= DYNAMIC | $empty

    opt_218 ::= DYNAMIC | $empty

    grp_220 ::= DESCRIPTOR | identifier

    grp_219 ::= USING grp_220

    opt_221 ::= grp_219 | $empty

    opt_222 ::= identifier | $empty

    opt_223 ::= SEMI | $empty

    opt_225 ::= DESCRIPTOR | $empty

    grp_224 ::= variable_name INTO bind_param | identifier USING opt_225 identifier

    opt_226 ::= SEMI | $empty

    grp_227 ::= SQLCA | identifier_name

    grp_228 ::= PLUS PLUS | MINUS MINUS

    seq_229 ::= COMMA expression

    list_230 ::= $empty | list_230 seq_229

    seq_231 ::= identifier DOT

    opt_232 ::= seq_231 | $empty

    opt_233 ::= expression_list | $empty

    seq_234 ::= function_call_statement DOT

    opt_235 ::= seq_234 | $empty

    grp_236 ::= EQ | PLUSEQ | MINUSEQ | MULTEQ | DIVEQ

    opt_237 ::= SEMI | $empty

    opt_238 ::= expression | $empty

    seq_239 ::= variable_name DOT

    list_240 ::= $empty | list_240 seq_239

    opt_241 ::= FUNCTION | $empty

    opt_242 ::= POST | $empty

    opt_243 ::= DYNAMIC | $empty

    opt_244 ::= EVENT | $empty

    opt_245 ::= expression_list | $empty

    grp_247 ::= variable_name | function_call_expression_sub

    grp_246 ::= DOT grp_247

    list_248 ::= $empty | list_248 grp_246

    opt_249 ::= EVENT | $empty

    opt_250 ::= POST | $empty

    opt_251 ::= DYNAMIC | $empty

    opt_253 ::= EVENT | $empty

    opt_254 ::= TRIGGER | $empty

    grp_252 ::= TRIGGER EVENT | DYNAMIC opt_253 | EVENT opt_254 DYNAMIC

    opt_255 ::= CLOSE | $empty

    grp_257 ::= CREATE | DESTROY | OPEN | CLOSE | identifier

    grp_256 ::= COLONCOLON grp_257

    opt_258 ::= grp_256 | $empty

    opt_259 ::= SEMI | $empty

    seq_260 ::= identifier_name TICK

    opt_261 ::= seq_260 | $empty

    grp_262 ::= atom_sub_call1 | atom_sub_member1

    grp_263 ::= EVENT | CREATE | DESTROY | OPEN | CLOSE | identifier

    opt_264 ::= function_call_statement | $empty

    grp_265 ::= EVENT | FUNCTION

    opt_266 ::= grp_265 | $empty

    opt_267 ::= POST | $empty

    seq_268 ::= identifier_name DOT

    opt_269 ::= seq_268 | $empty

    grp_270 ::= EVENT | FUNCTION

    opt_271 ::= grp_270 | $empty

    grp_272 ::= TRIGGER | POST

    opt_273 ::= grp_272 | $empty

    opt_274 ::= variable_name | $empty

    opt_275 ::= function_call_statement | $empty

    opt_277 ::= USING | $empty

    seq_278 ::= identifier_name DOT

    opt_279 ::= seq_278 | $empty

    opt_280 ::= expression_list | $empty

    seq_281 ::= LPAREN opt_280 RPAREN

    opt_282 ::= seq_281 | $empty

    grp_276 ::= USING expression | opt_277 opt_279 data_type_name opt_282

    seq_283 ::= STEP expression

    opt_284 ::= seq_283 | $empty

    list_285 ::= $empty | list_285 statement

    grp_286 ::= NEXT | END FOR

    grp_287 ::= WHILE | UNTIL

    opt_288 ::= SEMI | $empty

    seq_289 ::= statement opt_288

    list_290 ::= $empty | list_290 seq_289

    list_291 ::= $empty | list_291 statement

    grp_292 ::= WHILE | UNTIL

    opt_293 ::= SEMI | $empty

    seq_294 ::= statement opt_293

    list_295 ::= $empty | list_295 seq_294

    list_296 ::= $empty | list_296 elseif_statement

    opt_297 ::= else_statement | $empty

    opt_298 ::= SEMI | $empty

    opt_299 ::= SEMI | $empty

    seq_300 ::= statement opt_299

    list_301 ::= $empty | list_301 seq_300

    opt_302 ::= SEMI | $empty

    seq_303 ::= statement opt_302

    list_304 ::= $empty | list_304 seq_303

    seq_305 ::= ELSE statement

    opt_306 ::= seq_305 | $empty

    opt_307 ::= SEMI | $empty

    seq_308 ::= atom_sub_member1 DOT

    opt_309 ::= seq_308 | $empty

    grp_310 ::= POST | TRIGGER

    opt_311 ::= EVENT | $empty

    opt_312 ::= expression_list | $empty

    grp_313 ::= choose_case_cond_sub | choose_case_else_sub | choose_case_value_sub

    list_314 ::= grp_313 | list_314 grp_313

    seq_315 ::= TO expression

    opt_316 ::= seq_315 | $empty

    seq_317 ::= TO expression

    opt_318 ::= seq_317 | $empty

    seq_319 ::= COMMA expression opt_318

    list_320 ::= $empty | list_320 seq_319

    opt_321 ::= SEMI | $empty

    seq_322 ::= statement opt_321

    list_323 ::= $empty | list_323 seq_322

    grp_324 ::= EQ | GT | LT | GTLT | GTE | LTE

    opt_325 ::= SEMI | $empty

    seq_326 ::= statement opt_325

    list_327 ::= $empty | list_327 seq_326

    opt_328 ::= SEMI | $empty

    seq_329 ::= statement opt_328

    list_330 ::= $empty | list_330 seq_329

    seq_331 ::= DOT identifier_name_ex

    list_332 ::= $empty | list_332 seq_331

    opt_333 ::= identifier_array | $empty

    opt_334 ::= identifier_array | $empty

    seq_335 ::= DOT identifier_name_ex opt_334

    list_336 ::= $empty | list_336 seq_335

    grp_337 ::= DQUOTED_STRING | QUOTED_STRING

    grp_339 ::= variable_name | DQUOTED_STRING | QUOTED_STRING

    grp_338 ::= PLUS grp_339

    list_340 ::= $empty | list_340 grp_338

    grp_342 ::= identifier | value

    grp_344 ::= identifier | value

    grp_343 ::= COMMA grp_344

    list_345 ::= $empty | list_345 grp_343

    grp_346 ::= identifier | function_call_statement

    opt_347 ::= operator | $empty

    seq_348 ::= opt_347 NUMBER

    opt_349 ::= seq_348 | $empty

    opt_350 ::= operator | $empty

    grp_341 ::= grp_342 list_345 | grp_346 opt_349 | opt_350 NUMBER

    opt_351 ::= grp_341 | $empty

    opt_352 ::= UNDERSCORE | $empty

    opt_353 ::= expression_list | $empty

    seq_354 ::= LPAREN opt_353 RPAREN

    opt_355 ::= seq_354 | $empty

    grp_356 ::= identifier | DESCRIBE

    opt_357 ::= expression_list | $empty

%End
