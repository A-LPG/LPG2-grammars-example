-- AUTO-GENERATED from antlr/grammars-v4 eiffel by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
%Options fp=EiffelParser
%options package=lpg.grammars.eiffel
%options template=dtParserTemplateF.gi
%options import_terminals=EiffelLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    class_declaration
%End

%Rules
    class_declaration ::= opt_1 class_header opt_2 opt_3 opt_4 opt_5 opt_6 opt_7 opt_8 opt_9 opt_10 END

    notes ::= NOTE note_list

    note_list ::= opt_15 list_16

    note_entry ::= note_name note_values

    note_name ::= Identifier COLON

    note_values ::= note_item list_18 opt_19

    note_item ::= Identifier
           | manifest_constant

    class_header ::= list_20 CLASS class_name

    class_name ::= Identifier

    header_mark ::= DEFERRED
           | EXPANDED
           | FROZEN
           | EXTERNAL
           | once

    obsolete ::= OBSOLETE manifest_string

    features ::= list_21

    feature_clause ::= FEATURE opt_22 feature_declaration_list

    feature_declaration_list ::= opt_27 list_28

    feature_declaration ::= new_feature_list declaration_body

    declaration_body ::= opt_29 opt_30 opt_31 feature_value

    query_mark ::= type_mark opt_32

    type_mark ::= COLON type

    feature_value ::= opt_33 opt_34 opt_35 opt_37

    explicit_value ::= EQ manifest_constant

    new_feature_list ::= new_feature list_39

    new_feature ::= opt_40 extended_feature_name

    attribute_or_routine ::= opt_41 opt_42 feature_body opt_43 opt_44 END

    feature_body ::= DEFERRED
           | effective_routine
           | attribute

    extended_feature_name ::= feature_name list_45

    feature_name ::= Identifier

    alias ::= ALIAS manifest_string opt_46

    assigner_mark ::= ASSIGN feature_name

    inheritance ::= list_47

    inherit_clause ::= INHERIT opt_48 parent_list

    non_conformance ::= LBRACE Identifier RBRACE

    parent_list ::= parent list_51 list_52

    parent ::= class_type opt_53

    feature_adaptation ::= list_55 END

    rename ::= RENAME rename_list

    rename_list ::= rename_pair list_57

    rename_pair ::= feature_name AS extended_feature_name

    clients ::= LBRACE opt_58 RBRACE

    class_list ::= class_name list_60

    new_exports ::= EXPORT new_export_list

    new_export_list ::= new_export_item list_63 list_64

    new_export_item ::= clients feature_set

    feature_set ::= feature_list
           | ALL

    feature_list ::= opt_68

    formal_arguments ::= LPAREN entity_declaration_list RPAREN

    entity_declaration_list ::= entity_declaration_group list_71 list_72

    entity_declaration_group ::= identifier_list type_mark

    identifier_list ::= Identifier list_74

    effective_routine ::= internal
           | external

    internal ::= routine_mark compound

    routine_mark ::= DO
           | once

    once ::= ONCE opt_76

    key_list ::= manifest_string list_78

    local_declarations ::= LOCAL opt_79

    compound ::= list_80 opt_85 list_86

    instruction ::= creation_instruction
           | expression
           | assignment
           | assigner_call
           | conditional
           | multi_branch
           | loop
           | debug
           | precursor
           | check
           | retry
           | conditional_check
           | inline_separate
           | iterator

    iterator ::= OPEN_REPEAT Identifier COLON expression BAR compound CLOSE_REPEAT

    precondition ::= REQUIRE opt_87 assertion

    postcondition ::= ENSURE opt_88 assertion opt_89

    invariant ::= INVARIANT assertion

    assertion ::= opt_94 list_95

    assertion_clause ::= opt_96 unlabeled_assertion_clause
           | tag_mark

    unlabeled_assertion_clause ::= expression
           | CLASS

    tag_mark ::= tag COLON

    tag ::= Identifier

    old ::= OLD expression

    only ::= ONLY feature_list

    check ::= CHECK assertion opt_97 END

    variant ::= VARIANT opt_98 expression

    precursor ::= PRECURSOR opt_99 opt_100

    parent_qualification ::= LBRACE class_name RBRACE

    redefine ::= REDEFINE feature_list

    undefine ::= UNDEFINE feature_list

    type ::= list_101 grp_102

    type_modifier ::= ATTACHED
           | DETACHABLE
           | SEPARATE
           | EXPANDED

    class_or_tuple_type ::= class_type
           | tuple_type

    class_type ::= opt_103 class_name opt_104

    attachment_mark ::= QUESTION
           | BANG

    anchored ::= opt_105 LIKE anchor

    anchor ::= expression

    actual_generics ::= LBRACKET type_list RBRACKET

    type_list ::= opt_109

    formal_generics ::= LBRACKET formal_generic_list RBRACKET

    formal_generic_list ::= formal_generic list_111

    formal_generic ::= list_112 formal_generic_name opt_113

    formal_generic_modifier ::= FROZEN
           | REFERENCE

    formal_generic_name ::= opt_114 Identifier

    constraint ::= ARROW constraining_types opt_115

    constraining_types ::= single_constraint
           | multiple_constraint

    single_constraint ::= type opt_116

    renaming ::= rename END

    multiple_constraint ::= LBRACE constraint_list RBRACE

    constraint_list ::= single_constraint list_118

    constraint_creators ::= CREATE feature_list END

    manifest_array ::= opt_119 LSHIFT expression_list RSHIFT

    manifest_array_type ::= LBRACE type RBRACE

    expression_list ::= opt_123

    tuple_type ::= Identifier tuple_parameter_list

    tuple_parameter_list ::= LBRACKET entity_declaration_list RBRACKET

    manifest_tuple ::= LBRACKET expression_list RBRACKET

    converters ::= CONVERT converter_list

    converter_list ::= converter list_125

    converter ::= conversion_procedure
           | conversion_query

    conversion_procedure ::= feature_name LPAREN LBRACE type_list RBRACE RPAREN

    conversion_query ::= feature_name COLON LBRACE type_list RBRACE

    select ::= SELECT feature_list

    conditional ::= IF then_part_list opt_126 END

    then_part_list ::= then_part list_128

    then_part ::= expression THEN compound

    else_part ::= ELSE compound

    conditional_expression ::= IF then_part_expression_list ELSE expression END

    then_part_expression_list ::= then_part_expression list_130

    then_part_expression ::= expression THEN expression

    multi_branch ::= INSPECT expression opt_131 opt_132 END

    when_part_list ::= list_133

    when_part ::= WHEN choices THEN compound

    choices ::= choice list_135

    choice ::= constant
           | manifest_type
           | constant_interval
           | type_interval
           | non_object_call
           | non_object_call_interval

    constant_interval ::= constant DOTDOT constant
           | Integer_interval

    type_interval ::= manifest_type DOTDOT manifest_type

    non_object_call_interval ::= non_object_call DOTDOT non_object_call

    loop ::= opt_136 opt_137 opt_138 opt_139 opt_140 loop_body opt_141 END

    iteration ::= ACROSS expression AS Identifier

    initialization ::= FROM compound

    exit_condition ::= UNTIL expression

    loop_body ::= LOOP compound
           | ALL expression
           | SOME expression

    debug ::= DEBUG opt_143 compound END

    attribute ::= ATTRIBUTE compound

    entity ::= variable
           | read_only

    variable ::= variable_attribute
           | local

    variable_attribute ::= feature_name

    local ::= Identifier
           | RESULT

    read_only ::= formal
           | constant_attribute
           | CURRENT

    formal ::= Identifier

    constant_attribute ::= feature_name

    creators ::= list_144

    creation_clause ::= CREATE opt_145 opt_146

    creation_procedure_list ::= creation_procedure list_148

    creation_procedure ::= feature_name

    creation_instruction ::= CREATE opt_149 opt_150 creation_call

    create_passive_region ::= LT Identifier GT

    explicit_creation_type ::= LBRACE type RBRACE

    creation_call ::= variable opt_151

    explicit_creation_call ::= DOT unqualified_call

    creation_expression ::= CREATE explicit_creation_type opt_152

    assignment ::= variable COLONEQ expression

    assigner_call ::= expression COLONEQ expression

    unqualified_call ::= feature_name opt_153

    non_object_call ::= LBRACE type RBRACE DOT unqualified_call

    actuals ::= LPAREN actual_list RPAREN

    actual_list ::= expression list_155

    object_test ::= LBRACE Identifier COLON type RBRACE expression

    rescue ::= RESCUE compound

    retry ::= RETRY

    conditional_check ::= CHECK assertion THEN compound END

    inline_separate ::= SEPARATE inline_separate_arguments DO compound END

    inline_separate_arguments ::= inline_separate_argument list_157

    inline_separate_argument ::= expression AS Identifier

    agent ::= call_agent
           | inline_agent

    call_agent ::= AGENT call_agent_body

    inline_agent ::= AGENT opt_158 opt_159 opt_160 opt_161

    call_agent_body ::= agent_qualified
           | agent_unqualified

    agent_qualified ::= agent_target DOT agent_unqualified

    agent_unqualified ::= feature_name opt_162

    agent_target ::= entity
           | parenthesized
           | manifest_type

    agent_actuals ::= LPAREN agent_actual_list RPAREN

    agent_actual_list ::= agent_actual list_164

    agent_actual ::= expression
           | placeholder

    placeholder ::= opt_165 QUESTION

    expression ::= expression DOT expression
           | grp_166 expression
           | expression FreeOperator expression
           | expression CARET expression
           | expression grp_167 expression
           | expression grp_168 expression
           | expression DOTDOT expression
           | expression grp_169 expression
           | expression grp_170 expression
           | expression grp_171 expression
           | expression IMPLIES expression
           | expression LBRACKET expression_list RBRACKET
           | expression LBRACKET actuals RBRACKET
           | LPAREN expression RPAREN
           | OP_59361 expression OP_24890
           | grp_172 Identifier COLON expression BAR expression
           | Identifier
           | unqualified_call
           | CURRENT
           | RESULT
           | VOID
           | ATTACHED opt_174 expression opt_176
           | ACROSS expression AS Identifier grp_177 expression END
           | ONCE opt_179 expression
           | precursor
           | creation_expression
           | conditional_expression
           | non_object_call
           | special_expression

    special_expression ::= manifest_constant
           | manifest_array
           | manifest_tuple
           | agent
           | object_test
           | once_string
           | address

    parenthesized ::= LPAREN expression RPAREN

    address ::= DOLLAR grp_180

    once_string ::= ONCE manifest_string

    constant ::= manifest_constant
           | constant_attribute

    manifest_constant ::= opt_181 manifest_value

    manifest_type ::= LBRACE type RBRACE

    manifest_value ::= boolean_constant
           | Character_constant
           | integer_constant
           | real_constant
           | manifest_string
           | manifest_type

    sign ::= PLUS
           | MINUS

    integer_constant ::= opt_182 Integer

    boolean_constant ::= TRUE
           | FALSE

    real_constant ::= opt_183 Real

    manifest_string ::= Basic_manifest_string
           | Verbatim_string

    external ::= EXTERNAL external_language opt_184

    external_language ::= manifest_string

    external_name ::= ALIAS manifest_string

    opt_1 ::= notes | $empty

    opt_2 ::= formal_generics | $empty

    opt_3 ::= obsolete | $empty

    opt_4 ::= inheritance | $empty

    opt_5 ::= creators | $empty

    opt_6 ::= converters | $empty

    opt_7 ::= features | $empty

    opt_8 ::= notes | $empty

    opt_9 ::= invariant | $empty

    opt_10 ::= notes | $empty

    list_11 ::= $empty | list_11 SEMI

    seq_12 ::= list_11 note_entry

    list_13 ::= $empty | list_13 seq_12

    seq_14 ::= note_entry list_13

    opt_15 ::= seq_14 | $empty

    list_16 ::= $empty | list_16 SEMI

    seq_17 ::= COMMA note_item

    list_18 ::= $empty | list_18 seq_17

    opt_19 ::= COMMA | $empty

    list_20 ::= $empty | list_20 header_mark

    list_21 ::= feature_clause | list_21 feature_clause

    opt_22 ::= clients | $empty

    list_23 ::= $empty | list_23 SEMI

    seq_24 ::= list_23 feature_declaration

    list_25 ::= $empty | list_25 seq_24

    seq_26 ::= feature_declaration list_25

    opt_27 ::= seq_26 | $empty

    list_28 ::= $empty | list_28 SEMI

    opt_29 ::= formal_arguments | $empty

    opt_30 ::= query_mark | $empty

    opt_31 ::= notes | $empty

    opt_32 ::= assigner_mark | $empty

    opt_33 ::= explicit_value | $empty

    opt_34 ::= obsolete | $empty

    opt_35 ::= attribute_or_routine | $empty

    seq_36 ::= EQ UNIQUE

    opt_37 ::= seq_36 | $empty

    seq_38 ::= COMMA new_feature

    list_39 ::= $empty | list_39 seq_38

    opt_40 ::= FROZEN | $empty

    opt_41 ::= precondition | $empty

    opt_42 ::= local_declarations | $empty

    opt_43 ::= postcondition | $empty

    opt_44 ::= rescue | $empty

    list_45 ::= $empty | list_45 alias

    opt_46 ::= CONVERT | $empty

    list_47 ::= inherit_clause | list_47 inherit_clause

    opt_48 ::= non_conformance | $empty

    list_49 ::= $empty | list_49 SEMI

    seq_50 ::= list_49 parent

    list_51 ::= $empty | list_51 seq_50

    list_52 ::= $empty | list_52 SEMI

    opt_53 ::= feature_adaptation | $empty

    grp_54 ::= undefine | redefine | rename | new_exports | select

    list_55 ::= $empty | list_55 grp_54

    seq_56 ::= COMMA rename_pair

    list_57 ::= $empty | list_57 seq_56

    opt_58 ::= class_list | $empty

    seq_59 ::= COMMA class_name

    list_60 ::= $empty | list_60 seq_59

    list_61 ::= $empty | list_61 SEMI

    seq_62 ::= list_61 new_export_item

    list_63 ::= $empty | list_63 seq_62

    list_64 ::= $empty | list_64 SEMI

    seq_65 ::= COMMA feature_name

    list_66 ::= $empty | list_66 seq_65

    seq_67 ::= feature_name list_66

    opt_68 ::= seq_67 | $empty

    list_69 ::= $empty | list_69 SEMI

    seq_70 ::= list_69 entity_declaration_group

    list_71 ::= $empty | list_71 seq_70

    list_72 ::= $empty | list_72 SEMI

    seq_73 ::= COMMA Identifier

    list_74 ::= $empty | list_74 seq_73

    seq_75 ::= LPAREN key_list RPAREN

    opt_76 ::= seq_75 | $empty

    seq_77 ::= COMMA manifest_string

    list_78 ::= $empty | list_78 seq_77

    opt_79 ::= entity_declaration_list | $empty

    list_80 ::= $empty | list_80 SEMI

    list_81 ::= $empty | list_81 SEMI

    seq_82 ::= list_81 instruction

    list_83 ::= $empty | list_83 seq_82

    seq_84 ::= instruction list_83

    opt_85 ::= seq_84 | $empty

    list_86 ::= $empty | list_86 SEMI

    opt_87 ::= ELSE | $empty

    opt_88 ::= THEN | $empty

    opt_89 ::= only | $empty

    list_90 ::= $empty | list_90 SEMI

    seq_91 ::= list_90 assertion_clause

    list_92 ::= $empty | list_92 seq_91

    seq_93 ::= assertion_clause list_92

    opt_94 ::= seq_93 | $empty

    list_95 ::= $empty | list_95 SEMI

    opt_96 ::= tag_mark | $empty

    opt_97 ::= notes | $empty

    opt_98 ::= tag_mark | $empty

    opt_99 ::= parent_qualification | $empty

    opt_100 ::= actuals | $empty

    list_101 ::= $empty | list_101 type_modifier

    grp_102 ::= class_or_tuple_type | formal_generic_name | anchored

    opt_103 ::= attachment_mark | $empty

    opt_104 ::= actual_generics | $empty

    opt_105 ::= attachment_mark | $empty

    seq_106 ::= COMMA type

    list_107 ::= $empty | list_107 seq_106

    seq_108 ::= type list_107

    opt_109 ::= seq_108 | $empty

    seq_110 ::= COMMA formal_generic

    list_111 ::= $empty | list_111 seq_110

    list_112 ::= $empty | list_112 formal_generic_modifier

    opt_113 ::= constraint | $empty

    opt_114 ::= QUESTION | $empty

    opt_115 ::= constraint_creators | $empty

    opt_116 ::= renaming | $empty

    seq_117 ::= COMMA single_constraint

    list_118 ::= $empty | list_118 seq_117

    opt_119 ::= manifest_array_type | $empty

    seq_120 ::= COMMA expression

    list_121 ::= $empty | list_121 seq_120

    seq_122 ::= expression list_121

    opt_123 ::= seq_122 | $empty

    seq_124 ::= COMMA converter

    list_125 ::= $empty | list_125 seq_124

    opt_126 ::= else_part | $empty

    seq_127 ::= ELSEIF then_part

    list_128 ::= $empty | list_128 seq_127

    seq_129 ::= ELSEIF then_part_expression

    list_130 ::= $empty | list_130 seq_129

    opt_131 ::= when_part_list | $empty

    opt_132 ::= else_part | $empty

    list_133 ::= when_part | list_133 when_part

    seq_134 ::= COMMA choice

    list_135 ::= $empty | list_135 seq_134

    opt_136 ::= iteration | $empty

    opt_137 ::= initialization | $empty

    opt_138 ::= invariant | $empty

    opt_139 ::= variant | $empty

    opt_140 ::= exit_condition | $empty

    opt_141 ::= variant | $empty

    seq_142 ::= LPAREN key_list RPAREN

    opt_143 ::= seq_142 | $empty

    list_144 ::= creation_clause | list_144 creation_clause

    opt_145 ::= clients | $empty

    opt_146 ::= creation_procedure_list | $empty

    seq_147 ::= COMMA creation_procedure

    list_148 ::= $empty | list_148 seq_147

    opt_149 ::= create_passive_region | $empty

    opt_150 ::= explicit_creation_type | $empty

    opt_151 ::= explicit_creation_call | $empty

    opt_152 ::= explicit_creation_call | $empty

    opt_153 ::= actuals | $empty

    seq_154 ::= COMMA expression

    list_155 ::= $empty | list_155 seq_154

    seq_156 ::= COMMA inline_separate_argument

    list_157 ::= $empty | list_157 seq_156

    opt_158 ::= formal_arguments | $empty

    opt_159 ::= type_mark | $empty

    opt_160 ::= attribute_or_routine | $empty

    opt_161 ::= agent_actuals | $empty

    opt_162 ::= agent_actuals | $empty

    seq_163 ::= COMMA agent_actual

    list_164 ::= $empty | list_164 seq_163

    opt_165 ::= manifest_type | $empty

    grp_166 ::= OLD | NOT | PLUS | MINUS | FreeOperator

    grp_167 ::= STAR | SLASH | SLASHSLASH | OP_58104

    grp_168 ::= PLUS | MINUS

    grp_169 ::= EQ | SLASHEQ | TILDE | OP_92512 | LT | GT | LTEQ | GTEQ

    grp_170 ::= AND | AND_THEN

    grp_171 ::= OR | OR_ELSE | XOR

    grp_172 ::= FOR_ALL | FOR_SOME

    seq_173 ::= LBRACE type RBRACE

    opt_174 ::= seq_173 | $empty

    seq_175 ::= AS Identifier

    opt_176 ::= seq_175 | $empty

    grp_177 ::= ALL | SOME

    seq_178 ::= LBRACE type RBRACE

    opt_179 ::= seq_178 | $empty

    grp_180 ::= variable | CURRENT | RESULT

    opt_181 ::= manifest_type | $empty

    opt_182 ::= sign | $empty

    opt_183 ::= sign | $empty

    opt_184 ::= external_name | $empty

    opt_185 ::= notes | $empty

    opt_186 ::= formal_generics | $empty

    opt_187 ::= obsolete | $empty

    opt_188 ::= inheritance | $empty

    opt_189 ::= creators | $empty

    opt_190 ::= converters | $empty

    opt_191 ::= features | $empty

    opt_192 ::= notes | $empty

    opt_193 ::= invariant | $empty

    opt_194 ::= notes | $empty

    list_195 ::= $empty | list_195 SEMI

    seq_196 ::= list_195 note_entry

    list_197 ::= $empty | list_197 seq_196

    seq_198 ::= note_entry list_197

    opt_199 ::= seq_198 | $empty

    list_200 ::= $empty | list_200 SEMI

    seq_201 ::= COMMA note_item

    list_202 ::= $empty | list_202 seq_201

    opt_203 ::= COMMA | $empty

    list_204 ::= $empty | list_204 header_mark

    list_205 ::= feature_clause | list_205 feature_clause

    opt_206 ::= clients | $empty

    list_207 ::= $empty | list_207 SEMI

    seq_208 ::= list_207 feature_declaration

    list_209 ::= $empty | list_209 seq_208

    seq_210 ::= feature_declaration list_209

    opt_211 ::= seq_210 | $empty

    list_212 ::= $empty | list_212 SEMI

    opt_213 ::= formal_arguments | $empty

    opt_214 ::= query_mark | $empty

    opt_215 ::= notes | $empty

    opt_216 ::= assigner_mark | $empty

    opt_217 ::= explicit_value | $empty

    opt_218 ::= obsolete | $empty

    opt_219 ::= attribute_or_routine | $empty

    seq_220 ::= EQ UNIQUE

    opt_221 ::= seq_220 | $empty

    seq_222 ::= COMMA new_feature

    list_223 ::= $empty | list_223 seq_222

    opt_224 ::= FROZEN | $empty

    opt_225 ::= precondition | $empty

    opt_226 ::= local_declarations | $empty

    opt_227 ::= postcondition | $empty

    opt_228 ::= rescue | $empty

    list_229 ::= $empty | list_229 alias

    opt_230 ::= CONVERT | $empty

    list_231 ::= inherit_clause | list_231 inherit_clause

    opt_232 ::= non_conformance | $empty

    list_233 ::= $empty | list_233 SEMI

    seq_234 ::= list_233 parent

    list_235 ::= $empty | list_235 seq_234

    list_236 ::= $empty | list_236 SEMI

    opt_237 ::= feature_adaptation | $empty

    grp_238 ::= undefine | redefine | rename | new_exports | select

    list_239 ::= $empty | list_239 grp_238

    seq_240 ::= COMMA rename_pair

    list_241 ::= $empty | list_241 seq_240

    opt_242 ::= class_list | $empty

    seq_243 ::= COMMA class_name

    list_244 ::= $empty | list_244 seq_243

    list_245 ::= $empty | list_245 SEMI

    seq_246 ::= list_245 new_export_item

    list_247 ::= $empty | list_247 seq_246

    list_248 ::= $empty | list_248 SEMI

    seq_249 ::= COMMA feature_name

    list_250 ::= $empty | list_250 seq_249

    seq_251 ::= feature_name list_250

    opt_252 ::= seq_251 | $empty

    list_253 ::= $empty | list_253 SEMI

    seq_254 ::= list_253 entity_declaration_group

    list_255 ::= $empty | list_255 seq_254

    list_256 ::= $empty | list_256 SEMI

    seq_257 ::= COMMA Identifier

    list_258 ::= $empty | list_258 seq_257

    seq_259 ::= LPAREN key_list RPAREN

    opt_260 ::= seq_259 | $empty

    seq_261 ::= COMMA manifest_string

    list_262 ::= $empty | list_262 seq_261

    opt_263 ::= entity_declaration_list | $empty

    list_264 ::= $empty | list_264 SEMI

    list_265 ::= $empty | list_265 SEMI

    seq_266 ::= list_265 instruction

    list_267 ::= $empty | list_267 seq_266

    seq_268 ::= instruction list_267

    opt_269 ::= seq_268 | $empty

    list_270 ::= $empty | list_270 SEMI

    opt_271 ::= ELSE | $empty

    opt_272 ::= THEN | $empty

    opt_273 ::= only | $empty

    list_274 ::= $empty | list_274 SEMI

    seq_275 ::= list_274 assertion_clause

    list_276 ::= $empty | list_276 seq_275

    seq_277 ::= assertion_clause list_276

    opt_278 ::= seq_277 | $empty

    list_279 ::= $empty | list_279 SEMI

    opt_280 ::= tag_mark | $empty

    opt_281 ::= notes | $empty

    opt_282 ::= tag_mark | $empty

    opt_283 ::= parent_qualification | $empty

    opt_284 ::= actuals | $empty

    list_285 ::= $empty | list_285 type_modifier

    grp_286 ::= class_or_tuple_type | formal_generic_name | anchored

    opt_287 ::= attachment_mark | $empty

    opt_288 ::= actual_generics | $empty

    opt_289 ::= attachment_mark | $empty

    seq_290 ::= COMMA type

    list_291 ::= $empty | list_291 seq_290

    seq_292 ::= type list_291

    opt_293 ::= seq_292 | $empty

    seq_294 ::= COMMA formal_generic

    list_295 ::= $empty | list_295 seq_294

    list_296 ::= $empty | list_296 formal_generic_modifier

    opt_297 ::= constraint | $empty

    opt_298 ::= QUESTION | $empty

    opt_299 ::= constraint_creators | $empty

    opt_300 ::= renaming | $empty

    seq_301 ::= COMMA single_constraint

    list_302 ::= $empty | list_302 seq_301

    opt_303 ::= manifest_array_type | $empty

    seq_304 ::= COMMA expression

    list_305 ::= $empty | list_305 seq_304

    seq_306 ::= expression list_305

    opt_307 ::= seq_306 | $empty

    seq_308 ::= COMMA converter

    list_309 ::= $empty | list_309 seq_308

    opt_310 ::= else_part | $empty

    seq_311 ::= ELSEIF then_part

    list_312 ::= $empty | list_312 seq_311

    seq_313 ::= ELSEIF then_part_expression

    list_314 ::= $empty | list_314 seq_313

    opt_315 ::= when_part_list | $empty

    opt_316 ::= else_part | $empty

    list_317 ::= when_part | list_317 when_part

    seq_318 ::= COMMA choice

    list_319 ::= $empty | list_319 seq_318

    opt_320 ::= iteration | $empty

    opt_321 ::= initialization | $empty

    opt_322 ::= invariant | $empty

    opt_323 ::= variant | $empty

    opt_324 ::= exit_condition | $empty

    opt_325 ::= variant | $empty

    seq_326 ::= LPAREN key_list RPAREN

    opt_327 ::= seq_326 | $empty

    list_328 ::= creation_clause | list_328 creation_clause

    opt_329 ::= clients | $empty

    opt_330 ::= creation_procedure_list | $empty

    seq_331 ::= COMMA creation_procedure

    list_332 ::= $empty | list_332 seq_331

    opt_333 ::= create_passive_region | $empty

    opt_334 ::= explicit_creation_type | $empty

    opt_335 ::= explicit_creation_call | $empty

    opt_336 ::= explicit_creation_call | $empty

    opt_337 ::= actuals | $empty

    seq_338 ::= COMMA expression

    list_339 ::= $empty | list_339 seq_338

    seq_340 ::= COMMA inline_separate_argument

    list_341 ::= $empty | list_341 seq_340

    opt_342 ::= formal_arguments | $empty

    opt_343 ::= type_mark | $empty

    opt_344 ::= attribute_or_routine | $empty

    opt_345 ::= agent_actuals | $empty

    opt_346 ::= agent_actuals | $empty

    seq_347 ::= COMMA agent_actual

    list_348 ::= $empty | list_348 seq_347

    opt_349 ::= manifest_type | $empty

    grp_350 ::= OLD | NOT | PLUS | MINUS | FreeOperator

    grp_351 ::= STAR | SLASH | SLASHSLASH | OP_58104

    grp_352 ::= PLUS | MINUS

    grp_353 ::= EQ | SLASHEQ | TILDE | OP_92512 | LT | GT | LTEQ | GTEQ

    grp_354 ::= AND | AND_THEN

    grp_355 ::= OR | OR_ELSE | XOR

    grp_356 ::= FOR_ALL | FOR_SOME

    seq_357 ::= LBRACE type RBRACE

    opt_358 ::= seq_357 | $empty

    seq_359 ::= AS Identifier

    opt_360 ::= seq_359 | $empty

    grp_361 ::= ALL | SOME

    seq_362 ::= LBRACE type RBRACE

    opt_363 ::= seq_362 | $empty

    grp_364 ::= variable | CURRENT | RESULT

    opt_365 ::= manifest_type | $empty

    opt_366 ::= sign | $empty

    opt_367 ::= sign | $empty

    opt_368 ::= external_name | $empty

%End
