-- AUTO-GENERATED from antlr/grammars-v4 sql/sqlite by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=SqlSqliteParser
%options package=lpg.grammars.sql.sqlite
%options template=dtParserTemplateF.gi
%options import_terminals=SqlSqliteLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    parse
%End

%Rules
    parse ::= sql_stmt_list

    sql_stmt_list ::= opt_1 list_4

    sql_stmt ::= opt_8 grp_9

    alter_table_stmt ::= ALTER_ TABLE_ opt_11 table_name grp_12

    analyze_stmt ::= ANALYZE_ opt_30

    attach_stmt ::= ATTACH_ opt_31 expr AS_ schema_name

    begin_stmt ::= BEGIN_ opt_33 opt_34

    commit_stmt ::= grp_35 opt_36

    rollback_stmt ::= ROLLBACK_ opt_37 opt_40

    savepoint_stmt ::= SAVEPOINT_ savepoint_name

    release_stmt ::= RELEASE_ opt_41 savepoint_name

    create_index_stmt ::= CREATE_ opt_42 INDEX_ opt_44 opt_46 index_name ON_ table_name OPEN_PAR indexed_column list_48 CLOSE_PAR opt_50

    indexed_column ::= expr opt_52 opt_53

    create_table_stmt ::= CREATE_ opt_55 TABLE_ opt_57 opt_59 table_name grp_60

    table_options ::= grp_66 list_69

    column_def ::= column_name opt_70 list_71

    type_name ::= list_72 opt_74

    column_constraint ::= opt_76 grp_77

    signed_number ::= opt_90 NUMERIC_LITERAL

    table_constraint ::= opt_92 grp_93

    foreign_key_clause ::= REFERENCES_ foreign_table opt_103 list_108 opt_114

    conflict_clause ::= ON_ CONFLICT_ grp_115

    create_trigger_stmt ::= CREATE_ opt_117 TRIGGER_ opt_119 opt_121 trigger_name opt_123 grp_124 ON_ table_name opt_130 opt_132 BEGIN_ list_135 END_

    create_view_stmt ::= CREATE_ opt_137 VIEW_ opt_139 opt_141 view_name opt_145 AS_ select_stmt

    create_virtual_table_stmt ::= CREATE_ VIRTUAL_ TABLE_ opt_147 opt_149 table_name USING_ module_name opt_153

    with_clause ::= WITH_ opt_154 common_table_expression list_156

    common_table_expression ::= cte_table_name AS_ opt_159 OPEN_PAR select_stmt CLOSE_PAR

    cte_table_name ::= table_name opt_163

    delete_stmt ::= opt_164 DELETE_ FROM_ qualified_table_name opt_166 opt_167 opt_168 opt_169

    detach_stmt ::= DETACH_ opt_170 schema_name

    drop_stmt ::= DROP_ grp_171 opt_173 opt_175 any_name

    expr ::= expr_or

    expr_or ::= expr_and list_177

    expr_and ::= expr_not list_179

    expr_not ::= list_180 expr_binary

    expr_binary ::= expr_comparison list_206

    expr_comparison ::= expr_bitwise list_209

    expr_bitwise ::= expr_addition list_212

    expr_addition ::= expr_multiplication list_215

    expr_multiplication ::= expr_string list_218

    expr_string ::= expr_collate list_221

    expr_collate ::= expr_unary list_223

    expr_unary ::= list_225 expr_base

    -- Left-factored column/schema refs (avoid LALR reduce-before-DOT on bare names).
    expr_base ::= literal_value
           | BIND_PARAMETER
           | column_ref
           | opt_230 OPEN_PAR select_stmt CLOSE_PAR
           | raise_function
           | expr_recursive

    column_ref ::= any_name_excluding_string column_ref_tail

    column_ref_tail ::= DOT any_name column_ref_tail2
           | $empty

    column_ref_tail2 ::= DOT any_name
           | $empty

    expr_recursive ::= function_name OPEN_PAR opt_236 CLOSE_PAR opt_237 opt_238 opt_239
           | OPEN_PAR expr list_241 CLOSE_PAR
           | CAST_ OPEN_PAR expr AS_ type_name CLOSE_PAR
           | CASE_ opt_242 list_244 opt_246 END_

    raise_function ::= RAISE_ OPEN_PAR grp_247 CLOSE_PAR

    literal_value ::= NUMERIC_LITERAL
           | STRING_LITERAL
           | BLOB_LITERAL
           | NULL_
           | TRUE_
           | FALSE_
           | CURRENT_TIME_
           | CURRENT_DATE_
           | CURRENT_TIMESTAMP_

    percentile_clause ::= WITHIN_ GROUP_ OPEN_PAR ORDER_ BY_ expr CLOSE_PAR

    value_row ::= OPEN_PAR expr list_250 CLOSE_PAR

    values_clause ::= VALUES_ value_row list_252

    insert_stmt ::= opt_253 grp_254 INTO_ opt_257 table_name opt_259 opt_263 grp_264 opt_266

    returning_clause ::= RETURNING_ grp_267 list_276

    upsert_clause ::= ON_ CONFLICT_ opt_282 DO_ grp_283

    pragma_stmt ::= PRAGMA_ opt_291 pragma_name opt_293

    pragma_value ::= signed_number
           | name
           | STRING_LITERAL

    reindex_stmt ::= REINDEX_ opt_298

    select_stmt ::= opt_299 select_core list_301 opt_302 opt_303

    join_clause ::= table_or_subquery list_306

    select_core ::= SELECT_ opt_308 result_column list_310 opt_312 opt_314 opt_322 opt_326
           | values_clause

    table_or_subquery ::= opt_328 table_name opt_330 opt_332
           | opt_334 table_function_name OPEN_PAR expr list_336 CLOSE_PAR opt_339
           | OPEN_PAR join_clause CLOSE_PAR
           | OPEN_PAR select_stmt CLOSE_PAR opt_342

    result_column ::= STAR
           | table_name DOT STAR
           | expr opt_345

    join_operator ::= COMMA
           | opt_346 opt_350 JOIN_

    join_constraint ::= ON_ expr
           | USING_ OPEN_PAR column_name list_352 CLOSE_PAR

    compound_operator ::= UNION_ opt_353
           | INTERSECT_
           | EXCEPT_

    update_stmt ::= opt_354 UPDATE_ opt_357 qualified_table_name SET_ grp_358 ASSIGN expr list_361 opt_363 opt_365 opt_366 opt_367 opt_368

    column_name_list ::= OPEN_PAR column_name list_370 CLOSE_PAR

    qualified_table_name ::= opt_372 table_name opt_374 opt_376

    vacuum_stmt ::= VACUUM_ opt_377 opt_379

    filter_clause ::= FILTER_ OPEN_PAR WHERE_ expr CLOSE_PAR

    window_defn ::= OPEN_PAR opt_380 opt_384 opt_385 opt_386 CLOSE_PAR

    over_clause ::= OVER_ grp_387

    frame_spec ::= frame_clause opt_397

    frame_clause ::= grp_398 grp_399

    order_clause ::= ORDER_ BY_ ordering_term list_401

    limit_clause ::= LIMIT_ expr opt_404

    ordering_term ::= expr opt_406 opt_407 opt_410

    asc_desc ::= ASC_
           | DESC_

    frame_left ::= expr PRECEDING_
           | expr FOLLOWING_
           | CURRENT_ ROW_

    frame_right ::= expr PRECEDING_
           | expr FOLLOWING_
           | CURRENT_ ROW_

    frame_single ::= expr PRECEDING_
           | CURRENT_ ROW_

    error_message ::= expr

    filename ::= expr

    module_argument ::= list_411

    module_argument_outer ::= grp_412
           | OPEN_PAR list_413 CLOSE_PAR

    module_argument_inner ::= grp_414
           | OPEN_PAR list_415 CLOSE_PAR

    fallback_excluding_conflicts ::= ABORT_
           | ACTION_
           | AFTER_
           | ALWAYS_
           | ANALYZE_
           | ASC_
           | ATTACH_
           | BEFORE_
           | BEGIN_
           | BY_
           | CASCADE_
           | CAST_
           | COLUMN_
           | CONFLICT_
           | CURRENT_
           | CURRENT_DATE_
           | CURRENT_TIME_
           | CURRENT_TIMESTAMP_
           | DATABASE_
           | DEFERRED_
           | DESC_
           | DETACH_
           | DO_
           | EACH_
           | END_
           | EXCEPT_
           | EXCLUDE_
           | EXCLUSIVE_
           | EXPLAIN_
           | FAIL_
           | FALSE_
           | FIRST_
           | FOLLOWING_
           | FOR_
           | GENERATED_
           | GLOB_
           | GROUPS_
           | IF_
           | IGNORE_
           | IMMEDIATE_
           | INITIALLY_
           | INSTEAD_
           | INTERSECT_
           | KEY_
           | LAST_
           | LIKE_
           | MATCH_
           | MATERIALIZED_
           | NO_
           | NULLS_
           | OF_
           | OFFSET_
           | OTHERS_
           | PARTITION_
           | PLAN_
           | PRAGMA_
           | PRECEDING_
           | QUERY_
           | RANGE_
           | RECURSIVE_
           | REGEXP_
           | REINDEX_
           | RELEASE_
           | RENAME_
           | REPLACE_
           | RESTRICT_
           | ROLLBACK_
           | ROW_
           | ROWID_
           | ROWS_
           | SAVEPOINT_
           | STORED_
           | STRICT_
           | TEMP_
           | TEMPORARY_
           | TIES_
           | TRIGGER_
           | TRUE_
           | UNBOUNDED_
           | UNION_
           | VACUUM_
           | VIEW_
           | VIRTUAL_
           | WITH_
           | WITHIN_
           | WITHOUT_

    join_keyword ::= CROSS_
           | FULL_
           | INDEXED_
           | INNER_
           | LEFT_
           | NATURAL_
           | OUTER_
           | RIGHT_

    fallback ::= fallback_excluding_conflicts
           | join_keyword
           | RAISE_

    name ::= any_name

    function_name ::= any_name_excluding_raise

    schema_name ::= any_name

    table_name ::= any_name

    table_or_index_name ::= any_name

    column_name ::= any_name

    column_name_excluding_string ::= any_name_excluding_string

    column_alias ::= any_name

    collation_name ::= any_name

    foreign_table ::= any_name

    index_name ::= any_name

    trigger_name ::= any_name

    view_name ::= any_name

    module_name ::= any_name

    pragma_name ::= any_name

    savepoint_name ::= any_name

    table_alias ::= any_name

    table_alias_excluding_joins ::= any_name_excluding_joins

    window_name ::= any_name

    alias ::= any_name

    base_window_name ::= any_name

    table_function_name ::= any_name

    any_name_excluding_raise ::= IDENTIFIER
           | fallback_excluding_conflicts
           | join_keyword
           | STRING_LITERAL

    any_name_excluding_joins ::= IDENTIFIER
           | fallback_excluding_conflicts
           | RAISE_
           | STRING_LITERAL

    any_name_excluding_string ::= IDENTIFIER
           | fallback

    any_name ::= IDENTIFIER
           | fallback
           | STRING_LITERAL

    opt_1 ::= sql_stmt | $empty

    opt_2 ::= sql_stmt | $empty

    seq_3 ::= SCOL opt_2

    list_4 ::= $empty | list_4 seq_3

    seq_5 ::= QUERY_ PLAN_

    opt_6 ::= seq_5 | $empty

    seq_7 ::= EXPLAIN_ opt_6

    opt_8 ::= seq_7 | $empty

    grp_9 ::= alter_table_stmt | analyze_stmt | attach_stmt | begin_stmt | commit_stmt | create_index_stmt | create_table_stmt | create_trigger_stmt | create_view_stmt | create_virtual_table_stmt | delete_stmt | detach_stmt | drop_stmt | insert_stmt | pragma_stmt | reindex_stmt | release_stmt | rollback_stmt | savepoint_stmt | select_stmt | update_stmt | vacuum_stmt

    seq_10 ::= schema_name DOT

    opt_11 ::= seq_10 | $empty

    opt_14 ::= COLUMN_ | $empty

    grp_13 ::= TO_ table_name | opt_14 column_name TO_ column_name

    opt_16 ::= COLUMN_ | $empty

    seq_17 ::= CONSTRAINT_ name

    opt_18 ::= seq_17 | $empty

    opt_19 ::= conflict_clause | $empty

    grp_15 ::= opt_16 column_def | opt_18 CHECK_ expr opt_19

    opt_21 ::= COLUMN_ | $empty

    grp_20 ::= opt_21 column_name | CONSTRAINT_ name

    opt_22 ::= COLUMN_ | $empty

    opt_24 ::= conflict_clause | $empty

    seq_25 ::= SET_ NOT_ NULL_ opt_24

    seq_26 ::= DROP_ NOT_ NULL_

    grp_23 ::= seq_25 | seq_26

    grp_12 ::= RENAME_ grp_13 | ADD_ grp_15 | DROP_ grp_20 | ALTER_ opt_22 column_name grp_23

    seq_28 ::= schema_name DOT

    opt_29 ::= seq_28 | $empty

    grp_27 ::= schema_name | opt_29 table_or_index_name

    opt_30 ::= grp_27 | $empty

    opt_31 ::= DATABASE_ | $empty

    grp_32 ::= DEFERRED_ | IMMEDIATE_ | EXCLUSIVE_

    opt_33 ::= grp_32 | $empty

    opt_34 ::= TRANSACTION_ | $empty

    grp_35 ::= COMMIT_ | END_

    opt_36 ::= TRANSACTION_ | $empty

    opt_37 ::= TRANSACTION_ | $empty

    opt_38 ::= SAVEPOINT_ | $empty

    seq_39 ::= TO_ opt_38 savepoint_name

    opt_40 ::= seq_39 | $empty

    opt_41 ::= SAVEPOINT_ | $empty

    opt_42 ::= UNIQUE_ | $empty

    seq_43 ::= IF_ NOT_ EXISTS_

    opt_44 ::= seq_43 | $empty

    seq_45 ::= schema_name DOT

    opt_46 ::= seq_45 | $empty

    seq_47 ::= COMMA indexed_column

    list_48 ::= $empty | list_48 seq_47

    seq_49 ::= WHERE_ expr

    opt_50 ::= seq_49 | $empty

    seq_51 ::= COLLATE_ collation_name

    opt_52 ::= seq_51 | $empty

    opt_53 ::= asc_desc | $empty

    grp_54 ::= TEMP_ | TEMPORARY_

    opt_55 ::= grp_54 | $empty

    seq_56 ::= IF_ NOT_ EXISTS_

    opt_57 ::= seq_56 | $empty

    seq_58 ::= schema_name DOT

    opt_59 ::= seq_58 | $empty

    seq_61 ::= COMMA column_def

    list_62 ::= $empty | list_62 seq_61

    seq_63 ::= COMMA table_constraint

    list_64 ::= $empty | list_64 seq_63

    opt_65 ::= table_options | $empty

    grp_60 ::= OPEN_PAR column_def list_62 list_64 CLOSE_PAR opt_65 | AS_ select_stmt

    grp_66 ::= WITHOUT_ ROWID_ | STRICT_

    grp_68 ::= WITHOUT_ ROWID_ | STRICT_

    grp_67 ::= COMMA grp_68

    list_69 ::= $empty | list_69 grp_67

    opt_70 ::= type_name | $empty

    list_71 ::= $empty | list_71 column_constraint

    list_72 ::= name | list_72 name

    grp_73 ::= OPEN_PAR signed_number CLOSE_PAR | OPEN_PAR signed_number COMMA signed_number CLOSE_PAR

    opt_74 ::= grp_73 | $empty

    seq_75 ::= CONSTRAINT_ name

    opt_76 ::= seq_75 | $empty

    opt_78 ::= asc_desc | $empty

    opt_79 ::= conflict_clause | $empty

    opt_80 ::= AUTOINCREMENT_ | $empty

    opt_82 ::= NOT_ | $empty

    grp_81 ::= opt_82 NULL_ | UNIQUE_

    opt_83 ::= conflict_clause | $empty

    grp_84 ::= signed_number | literal_value | OPEN_PAR expr CLOSE_PAR

    seq_85 ::= GENERATED_ ALWAYS_

    opt_86 ::= seq_85 | $empty

    grp_87 ::= STORED_ | VIRTUAL_

    opt_88 ::= grp_87 | $empty

    grp_77 ::= PRIMARY_ KEY_ opt_78 opt_79 opt_80 | grp_81 opt_83 | CHECK_ OPEN_PAR expr CLOSE_PAR | DEFAULT_ grp_84 | COLLATE_ collation_name | foreign_key_clause | opt_86 AS_ OPEN_PAR expr CLOSE_PAR opt_88

    grp_89 ::= PLUS | MINUS

    opt_90 ::= grp_89 | $empty

    seq_91 ::= CONSTRAINT_ name

    opt_92 ::= seq_91 | $empty

    grp_94 ::= PRIMARY_ KEY_ | UNIQUE_

    seq_95 ::= COMMA indexed_column

    list_96 ::= $empty | list_96 seq_95

    opt_97 ::= conflict_clause | $empty

    seq_98 ::= COMMA column_name

    list_99 ::= $empty | list_99 seq_98

    grp_93 ::= grp_94 OPEN_PAR indexed_column list_96 CLOSE_PAR opt_97 | CHECK_ OPEN_PAR expr CLOSE_PAR | FOREIGN_ KEY_ OPEN_PAR column_name list_99 CLOSE_PAR foreign_key_clause

    seq_100 ::= COMMA column_name

    list_101 ::= $empty | list_101 seq_100

    seq_102 ::= OPEN_PAR column_name list_101 CLOSE_PAR

    opt_103 ::= seq_102 | $empty

    grp_105 ::= DELETE_ | UPDATE_

    grp_107 ::= NULL_ | DEFAULT_

    grp_106 ::= SET_ grp_107 | CASCADE_ | RESTRICT_ | NO_ ACTION_

    grp_104 ::= ON_ grp_105 grp_106 | MATCH_ name

    list_108 ::= $empty | list_108 grp_104

    opt_110 ::= NOT_ | $empty

    grp_112 ::= DEFERRED_ | IMMEDIATE_

    grp_111 ::= INITIALLY_ grp_112

    opt_113 ::= grp_111 | $empty

    grp_109 ::= opt_110 DEFERRABLE_ opt_113

    opt_114 ::= grp_109 | $empty

    grp_115 ::= ROLLBACK_ | ABORT_ | FAIL_ | IGNORE_ | REPLACE_

    grp_116 ::= TEMP_ | TEMPORARY_

    opt_117 ::= grp_116 | $empty

    seq_118 ::= IF_ NOT_ EXISTS_

    opt_119 ::= seq_118 | $empty

    seq_120 ::= schema_name DOT

    opt_121 ::= seq_120 | $empty

    grp_122 ::= BEFORE_ | AFTER_ | INSTEAD_ OF_

    opt_123 ::= grp_122 | $empty

    seq_125 ::= COMMA column_name

    list_126 ::= $empty | list_126 seq_125

    seq_127 ::= OF_ column_name list_126

    opt_128 ::= seq_127 | $empty

    grp_124 ::= DELETE_ | INSERT_ | UPDATE_ opt_128

    seq_129 ::= FOR_ EACH_ ROW_

    opt_130 ::= seq_129 | $empty

    seq_131 ::= WHEN_ expr

    opt_132 ::= seq_131 | $empty

    grp_134 ::= update_stmt | insert_stmt | delete_stmt | select_stmt

    grp_133 ::= grp_134 SCOL

    list_135 ::= grp_133 | list_135 grp_133

    grp_136 ::= TEMP_ | TEMPORARY_

    opt_137 ::= grp_136 | $empty

    seq_138 ::= IF_ NOT_ EXISTS_

    opt_139 ::= seq_138 | $empty

    seq_140 ::= schema_name DOT

    opt_141 ::= seq_140 | $empty

    seq_142 ::= COMMA column_name

    list_143 ::= $empty | list_143 seq_142

    seq_144 ::= OPEN_PAR column_name list_143 CLOSE_PAR

    opt_145 ::= seq_144 | $empty

    seq_146 ::= IF_ NOT_ EXISTS_

    opt_147 ::= seq_146 | $empty

    seq_148 ::= schema_name DOT

    opt_149 ::= seq_148 | $empty

    seq_150 ::= COMMA module_argument

    list_151 ::= $empty | list_151 seq_150

    seq_152 ::= OPEN_PAR module_argument list_151 CLOSE_PAR

    opt_153 ::= seq_152 | $empty

    opt_154 ::= RECURSIVE_ | $empty

    seq_155 ::= COMMA common_table_expression

    list_156 ::= $empty | list_156 seq_155

    opt_157 ::= NOT_ | $empty

    seq_158 ::= opt_157 MATERIALIZED_

    opt_159 ::= seq_158 | $empty

    seq_160 ::= COMMA column_name

    list_161 ::= $empty | list_161 seq_160

    seq_162 ::= OPEN_PAR column_name list_161 CLOSE_PAR

    opt_163 ::= seq_162 | $empty

    opt_164 ::= with_clause | $empty

    seq_165 ::= WHERE_ expr

    opt_166 ::= seq_165 | $empty

    opt_167 ::= returning_clause | $empty

    opt_168 ::= order_clause | $empty

    opt_169 ::= limit_clause | $empty

    opt_170 ::= DATABASE_ | $empty

    grp_171 ::= INDEX_ | TABLE_ | TRIGGER_ | VIEW_

    seq_172 ::= IF_ EXISTS_

    opt_173 ::= seq_172 | $empty

    seq_174 ::= schema_name DOT

    opt_175 ::= seq_174 | $empty

    seq_176 ::= OR_ expr_and

    list_177 ::= $empty | list_177 seq_176

    seq_178 ::= AND_ expr_not

    list_179 ::= $empty | list_179 seq_178

    list_180 ::= $empty | list_180 NOT_

    grp_182 ::= ASSIGN | EQ | NOT_EQ1 | NOT_EQ2

    opt_183 ::= NOT_ | $empty

    seq_184 ::= DISTINCT_ FROM_

    opt_185 ::= seq_184 | $empty

    opt_186 ::= NOT_ | $empty

    opt_187 ::= NOT_ | $empty

    seq_190 ::= COMMA expr_comparison

    list_191 ::= $empty | list_191 seq_190

    grp_189 ::= select_stmt | expr_comparison list_191

    opt_192 ::= grp_189 | $empty

    seq_193 ::= schema_name DOT

    opt_194 ::= seq_193 | $empty

    seq_195 ::= schema_name DOT

    opt_196 ::= seq_195 | $empty

    seq_197 ::= COMMA expr_comparison

    list_198 ::= $empty | list_198 seq_197

    seq_199 ::= expr_comparison list_198

    opt_200 ::= seq_199 | $empty

    grp_188 ::= OPEN_PAR opt_192 CLOSE_PAR | opt_194 table_name | opt_196 table_function_name OPEN_PAR opt_200 CLOSE_PAR

    opt_201 ::= NOT_ | $empty

    seq_203 ::= ESCAPE_ expr_comparison

    opt_204 ::= seq_203 | $empty

    grp_205 ::= GLOB_ | REGEXP_ | MATCH_

    grp_202 ::= LIKE_ expr_comparison opt_204 | grp_205 expr_comparison

    grp_181 ::= grp_182 expr_comparison | IS_ opt_183 opt_185 expr_comparison | opt_186 BETWEEN_ expr_comparison AND_ expr_comparison | opt_187 IN_ grp_188 | opt_201 grp_202 | ISNULL_ | NOTNULL_ | NOT_ NULL_

    list_206 ::= $empty | list_206 grp_181

    grp_208 ::= LT | LT_EQ | GT | GT_EQ

    grp_207 ::= grp_208 expr_bitwise

    list_209 ::= $empty | list_209 grp_207

    grp_211 ::= LT2 | GT2 | AMP | PIPE

    grp_210 ::= grp_211 expr_addition

    list_212 ::= $empty | list_212 grp_210

    grp_214 ::= PLUS | MINUS

    grp_213 ::= grp_214 expr_multiplication

    list_215 ::= $empty | list_215 grp_213

    grp_217 ::= STAR | DIV | MOD

    grp_216 ::= grp_217 expr_string

    list_218 ::= $empty | list_218 grp_216

    grp_220 ::= PIPE2 | JPTR | JPTR2

    grp_219 ::= grp_220 expr_collate

    list_221 ::= $empty | list_221 grp_219

    seq_222 ::= COLLATE_ collation_name

    list_223 ::= $empty | list_223 seq_222

    grp_224 ::= MINUS | PLUS | TILDE

    list_225 ::= $empty | list_225 grp_224

    seq_226 ::= schema_name DOT

    opt_227 ::= seq_226 | $empty

    opt_228 ::= NOT_ | $empty

    seq_229 ::= opt_228 EXISTS_

    opt_230 ::= seq_229 | $empty

    opt_232 ::= DISTINCT_ | $empty

    seq_233 ::= COMMA expr

    list_234 ::= $empty | list_234 seq_233

    opt_235 ::= order_clause | $empty

    grp_231 ::= opt_232 expr list_234 opt_235 | STAR

    opt_236 ::= grp_231 | $empty

    opt_237 ::= percentile_clause | $empty

    opt_238 ::= filter_clause | $empty

    opt_239 ::= over_clause | $empty

    seq_240 ::= COMMA expr

    list_241 ::= $empty | list_241 seq_240

    opt_242 ::= expr | $empty

    seq_243 ::= WHEN_ expr THEN_ expr

    list_244 ::= seq_243 | list_244 seq_243

    seq_245 ::= ELSE_ expr

    opt_246 ::= seq_245 | $empty

    grp_248 ::= ROLLBACK_ | ABORT_ | FAIL_

    grp_247 ::= IGNORE_ | grp_248 COMMA error_message

    seq_249 ::= COMMA expr

    list_250 ::= $empty | list_250 seq_249

    seq_251 ::= COMMA value_row

    list_252 ::= $empty | list_252 seq_251

    opt_253 ::= with_clause | $empty

    grp_255 ::= REPLACE_ | ROLLBACK_ | ABORT_ | FAIL_ | IGNORE_

    grp_254 ::= INSERT_ | REPLACE_ | INSERT_ OR_ grp_255

    seq_256 ::= schema_name DOT

    opt_257 ::= seq_256 | $empty

    seq_258 ::= AS_ table_alias

    opt_259 ::= seq_258 | $empty

    seq_260 ::= COMMA column_name

    list_261 ::= $empty | list_261 seq_260

    seq_262 ::= OPEN_PAR column_name list_261 CLOSE_PAR

    opt_263 ::= seq_262 | $empty

    list_265 ::= $empty | list_265 upsert_clause

    grp_264 ::= select_stmt list_265 | DEFAULT_ VALUES_

    opt_266 ::= returning_clause | $empty

    opt_268 ::= AS_ | $empty

    seq_269 ::= opt_268 column_alias

    opt_270 ::= seq_269 | $empty

    grp_267 ::= STAR | expr opt_270

    opt_273 ::= AS_ | $empty

    seq_274 ::= opt_273 column_alias

    opt_275 ::= seq_274 | $empty

    grp_272 ::= STAR | expr opt_275

    grp_271 ::= COMMA grp_272

    list_276 ::= $empty | list_276 grp_271

    seq_277 ::= COMMA indexed_column

    list_278 ::= $empty | list_278 seq_277

    seq_279 ::= WHERE_ expr

    opt_280 ::= seq_279 | $empty

    seq_281 ::= OPEN_PAR indexed_column list_278 CLOSE_PAR opt_280

    opt_282 ::= seq_281 | $empty

    grp_284 ::= column_name | column_name_list

    grp_286 ::= column_name | column_name_list

    grp_285 ::= COMMA grp_286 ASSIGN expr

    list_287 ::= $empty | list_287 grp_285

    seq_288 ::= WHERE_ expr

    opt_289 ::= seq_288 | $empty

    grp_283 ::= NOTHING_ | UPDATE_ SET_ grp_284 ASSIGN expr list_287 opt_289

    seq_290 ::= schema_name DOT

    opt_291 ::= seq_290 | $empty

    grp_292 ::= ASSIGN pragma_value | OPEN_PAR pragma_value CLOSE_PAR

    opt_293 ::= grp_292 | $empty

    seq_295 ::= schema_name DOT

    opt_296 ::= seq_295 | $empty

    grp_297 ::= table_name | index_name

    grp_294 ::= collation_name | opt_296 grp_297

    opt_298 ::= grp_294 | $empty

    opt_299 ::= with_clause | $empty

    seq_300 ::= compound_operator select_core

    list_301 ::= $empty | list_301 seq_300

    opt_302 ::= order_clause | $empty

    opt_303 ::= limit_clause | $empty

    opt_304 ::= join_constraint | $empty

    seq_305 ::= join_operator table_or_subquery opt_304

    list_306 ::= $empty | list_306 seq_305

    grp_307 ::= DISTINCT_ | ALL_

    opt_308 ::= grp_307 | $empty

    seq_309 ::= COMMA result_column

    list_310 ::= $empty | list_310 seq_309

    seq_311 ::= FROM_ join_clause

    opt_312 ::= seq_311 | $empty

    seq_313 ::= WHERE_ expr

    opt_314 ::= seq_313 | $empty

    list_315 ::= group_by_expr | list_315 group_by_expr

    list_316 ::= group_by_expr | list_316 group_by_expr

    seq_317 ::= COMMA list_316 expr

    list_318 ::= $empty | list_318 seq_317

    seq_319 ::= HAVING_ expr

    opt_320 ::= seq_319 | $empty

    seq_321 ::= GROUP_ BY_ list_315 expr list_318 opt_320

    opt_322 ::= seq_321 | $empty

    seq_323 ::= COMMA window_name AS_ window_defn

    list_324 ::= $empty | list_324 seq_323

    seq_325 ::= WINDOW_ window_name AS_ window_defn list_324

    opt_326 ::= seq_325 | $empty

    seq_327 ::= schema_name DOT

    opt_328 ::= seq_327 | $empty

    grp_329 ::= AS_ table_alias | table_alias_excluding_joins

    opt_330 ::= grp_329 | $empty

    grp_331 ::= INDEXED_ BY_ index_name | NOT_ INDEXED_

    opt_332 ::= grp_331 | $empty

    seq_333 ::= schema_name DOT

    opt_334 ::= seq_333 | $empty

    seq_335 ::= COMMA expr

    list_336 ::= $empty | list_336 seq_335

    opt_337 ::= AS_ | $empty

    seq_338 ::= opt_337 table_alias

    opt_339 ::= seq_338 | $empty

    opt_340 ::= AS_ | $empty

    seq_341 ::= opt_340 table_alias

    opt_342 ::= seq_341 | $empty

    opt_343 ::= AS_ | $empty

    seq_344 ::= opt_343 column_alias

    opt_345 ::= seq_344 | $empty

    opt_346 ::= NATURAL_ | $empty

    grp_348 ::= LEFT_ | RIGHT_ | FULL_

    opt_349 ::= OUTER_ | $empty

    grp_347 ::= grp_348 opt_349 | INNER_ | CROSS_

    opt_350 ::= grp_347 | $empty

    seq_351 ::= COMMA column_name

    list_352 ::= $empty | list_352 seq_351

    opt_353 ::= ALL_ | $empty

    opt_354 ::= with_clause | $empty

    grp_356 ::= ROLLBACK_ | ABORT_ | REPLACE_ | FAIL_ | IGNORE_

    grp_355 ::= OR_ grp_356

    opt_357 ::= grp_355 | $empty

    grp_358 ::= column_name | column_name_list

    grp_360 ::= column_name | column_name_list

    grp_359 ::= COMMA grp_360 ASSIGN expr

    list_361 ::= $empty | list_361 grp_359

    seq_362 ::= FROM_ join_clause

    opt_363 ::= seq_362 | $empty

    seq_364 ::= WHERE_ expr

    opt_365 ::= seq_364 | $empty

    opt_366 ::= returning_clause | $empty

    opt_367 ::= order_clause | $empty

    opt_368 ::= limit_clause | $empty

    seq_369 ::= COMMA column_name

    list_370 ::= $empty | list_370 seq_369

    seq_371 ::= schema_name DOT

    opt_372 ::= seq_371 | $empty

    seq_373 ::= AS_ alias

    opt_374 ::= seq_373 | $empty

    grp_375 ::= INDEXED_ BY_ index_name | NOT_ INDEXED_

    opt_376 ::= grp_375 | $empty

    opt_377 ::= schema_name | $empty

    seq_378 ::= INTO_ filename

    opt_379 ::= seq_378 | $empty

    opt_380 ::= base_window_name | $empty

    seq_381 ::= COMMA expr

    list_382 ::= $empty | list_382 seq_381

    seq_383 ::= PARTITION_ BY_ expr list_382

    opt_384 ::= seq_383 | $empty

    opt_385 ::= order_clause | $empty

    opt_386 ::= frame_spec | $empty

    opt_388 ::= base_window_name | $empty

    seq_389 ::= COMMA expr

    list_390 ::= $empty | list_390 seq_389

    seq_391 ::= PARTITION_ BY_ expr list_390

    opt_392 ::= seq_391 | $empty

    opt_393 ::= order_clause | $empty

    opt_394 ::= frame_spec | $empty

    grp_387 ::= window_name | OPEN_PAR opt_388 opt_392 opt_393 opt_394 CLOSE_PAR

    grp_396 ::= NO_ OTHERS_ | CURRENT_ ROW_ | GROUP_ | TIES_

    grp_395 ::= EXCLUDE_ grp_396

    opt_397 ::= grp_395 | $empty

    grp_398 ::= RANGE_ | ROWS_ | GROUPS_

    grp_399 ::= frame_single | BETWEEN_ frame_left AND_ frame_right

    seq_400 ::= COMMA ordering_term

    list_401 ::= $empty | list_401 seq_400

    grp_403 ::= OFFSET_ | COMMA

    grp_402 ::= grp_403 expr

    opt_404 ::= grp_402 | $empty

    seq_405 ::= COLLATE_ collation_name

    opt_406 ::= seq_405 | $empty

    opt_407 ::= asc_desc | $empty

    grp_409 ::= FIRST_ | LAST_

    grp_408 ::= NULLS_ grp_409

    opt_410 ::= grp_408 | $empty

    list_411 ::= $empty | list_411 module_argument_outer

    grp_412 ::= OPEN_PAR | CLOSE_PAR | UNEXPECTED_CHAR | COMMA

    list_413 ::= $empty | list_413 module_argument_inner

    grp_414 ::= OPEN_PAR | CLOSE_PAR | UNEXPECTED_CHAR

    list_415 ::= $empty | list_415 module_argument_inner

%End
