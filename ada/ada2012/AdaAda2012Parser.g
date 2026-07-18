-- AUTO-GENERATED from antlr/grammars-v4 ada/ada2012 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=AdaAda2012Parser
%options package=lpg.grammars.ada.ada2012
%options template=dtParserTemplateF.gi
%options import_terminals=AdaAda2012Lexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    identifier
%End

%Rules
    identifier ::= IDENTIFIER_

    numeric_literal ::= NUMERIC_LITERAL_

    character_literal ::= CHARACTER_LITERAL_

    string_literal ::= STRING_LITERAL_

    basic_declaration ::= type_declaration
           | subtype_declaration
           | object_declaration
           | number_declaration
           | subprogram_declaration
           | abstract_subprogram_declaration
           | null_procedure_declaration
           | expression_function_declaration
           | package_declaration
           | renaming_declaration
           | exception_declaration
           | generic_declaration
           | generic_instantiation

    defining_identifier ::= identifier

    type_declaration ::= full_type_declaration
           | incomplete_type_declaration
           | private_type_declaration
           | private_extension_declaration

    full_type_declaration ::= TYPE defining_identifier opt_1 IS type_definition opt_2 SEMI
           | task_type_declaration
           | protected_type_declaration

    type_definition ::= enumeration_type_definition
           | integer_type_definition
           | real_type_definition
           | array_type_definition
           | record_type_definition
           | access_type_definition
           | derived_type_definition
           | interface_type_definition

    subtype_declaration ::= SUBTYPE defining_identifier IS subtype_indication opt_3 SEMI

    subtype_indication ::= opt_4 subtype_mark opt_5

    subtype_mark ::= identifier list_7

    constraint ::= scalar_constraint
           | composite_constraint

    scalar_constraint ::= range_constraint
           | digits_constraint
           | delta_constraint

    composite_constraint ::= index_constraint
           | discriminant_constraint

    object_declaration ::= defining_identifier_list COLON opt_8 opt_9 subtype_indication opt_11 opt_12 SEMI
           | defining_identifier_list COLON opt_13 opt_14 access_definition opt_16 opt_17 SEMI
           | defining_identifier_list COLON opt_18 opt_19 array_type_definition opt_21 opt_22 SEMI
           | single_task_declaration
           | single_protected_declaration

    defining_identifier_list ::= defining_identifier list_24

    number_declaration ::= defining_identifier_list COLON CONSTANT ASSIGN expression SEMI

    derived_type_definition ::= opt_25 opt_26 NEW subtype_indication opt_30

    range_constraint ::= RANGE_ range

    range ::= range_attribute_reference
           | simple_expression DOTDOT simple_expression

    enumeration_type_definition ::= LPAREN enumeration_literal_specification list_32 RPAREN

    enumeration_literal_specification ::= defining_identifier
           | character_literal

    integer_type_definition ::= signed_integer_type_definition
           | modular_type_definition

    signed_integer_type_definition ::= RANGE_ expression DOTDOT expression

    modular_type_definition ::= MOD expression

    real_type_definition ::= floating_point_definition
           | fixed_point_definition

    floating_point_definition ::= DIGITS expression opt_33

    real_range_specification ::= RANGE_ expression DOTDOT expression

    fixed_point_definition ::= ordinary_fixed_point_definition
           | decimal_fixed_point_definition

    ordinary_fixed_point_definition ::= DELTA expression real_range_specification

    decimal_fixed_point_definition ::= DELTA expression DIGITS expression opt_34

    digits_constraint ::= DIGITS expression opt_35

    array_type_definition ::= unconstrained_array_definition
           | constrained_array_definition

    unconstrained_array_definition ::= ARRAY LPAREN index_subtype_definition list_37 RPAREN OF component_definition

    index_subtype_definition ::= subtype_mark RANGE_ BOX

    constrained_array_definition ::= ARRAY LPAREN discrete_subtype_definition list_39 RPAREN OF component_definition

    discrete_subtype_definition ::= subtype_indication
           | range

    component_definition ::= opt_40 subtype_indication
           | opt_41 access_definition

    index_constraint ::= LPAREN discrete_range list_43 RPAREN

    discrete_range ::= subtype_indication
           | range

    discriminant_part ::= unknown_discriminant_part
           | known_discriminant_part

    unknown_discriminant_part ::= LPAREN BOX RPAREN

    known_discriminant_part ::= LPAREN discriminant_specification list_45 RPAREN

    discriminant_specification ::= defining_identifier_list COLON opt_46 subtype_mark opt_48
           | defining_identifier_list COLON access_definition opt_50

    default_expression ::= expression

    discriminant_constraint ::= LPAREN discriminant_association list_52 RPAREN

    discriminant_association ::= opt_56 expression

    record_type_definition ::= opt_59 opt_60 record_definition

    record_definition ::= RECORD component_list END RECORD
           | NULL_ RECORD

    component_list ::= list_61
           | list_62 variant_part
           | NULL_ SEMI

    component_item ::= component_declaration
           | aspect_clause

    component_declaration ::= defining_identifier_list COLON component_definition opt_64 opt_65 SEMI

    variant_part ::= CASE direct_name IS list_66 END CASE SEMI

    variant ::= WHEN discrete_choice_list ARROW component_list

    discrete_choice_list ::= discrete_choice list_68

    discrete_choice ::= choice_expression
           | subtype_indication
           | range
           | OTHERS

    record_extension_part ::= WITH record_definition

    abstract_subprogram_declaration ::= opt_69 subprogram_specification IS ABSTRACT opt_70 SEMI

    interface_type_definition ::= opt_72 INTERFACE opt_74

    interface_list ::= subtype_mark list_76

    access_type_definition ::= opt_77 access_to_object_definition
           | opt_78 access_to_subprogram_definition

    access_to_object_definition ::= ACCESS opt_79 subtype_indication

    general_access_modifier ::= ALL
           | CONSTANT

    access_to_subprogram_definition ::= ACCESS opt_80 PROCEDURE opt_81
           | ACCESS opt_82 FUNCTION parameter_and_result_profile

    null_exclusion ::= NOT NULL_

    access_definition ::= opt_83 ACCESS opt_84 subtype_mark
           | opt_85 ACCESS opt_86 PROCEDURE opt_87
           | opt_88 ACCESS opt_89 FUNCTION parameter_and_result_profile

    incomplete_type_declaration ::= TYPE defining_identifier opt_90 opt_92 SEMI

    declarative_part ::= list_93

    declarative_item ::= basic_declarative_item
           | body

    basic_declarative_item ::= basic_declaration
           | aspect_clause
           | use_clause

    body ::= proper_body
           | body_stub

    proper_body ::= subprogram_body
           | package_body
           | task_body
           | protected_body

    name ::= direct_name
           | name DOT ALL
           | name LPAREN expression list_95 RPAREN
           | name LPAREN discrete_range RPAREN
           | name DOT selector_name
           | name SQ attribute_designator
           | type_conversion
           | name actual_parameter_part
           | character_literal
           | qualified_expression

    direct_name ::= identifier
           | operator_symbol

    selector_name ::= identifier
           | character_literal
           | operator_symbol

    attribute_designator ::= identifier opt_97
           | ACCESS__
           | DELTA__
           | DIGITS__
           | MOD__
           | ACCESS
           | DELTA
           | DIGITS
           | MOD

    range_attribute_reference ::= name SQUOTE range_attribute_designator

    range_attribute_designator ::= RANGE_ opt_99

    aggregate ::= record_aggregate
           | extension_aggregate
           | array_aggregate

    record_aggregate ::= LPAREN record_component_association_list RPAREN

    record_component_association_list ::= record_component_association list_101
           | NULL_ RECORD

    record_component_association ::= opt_103 expression
           | component_choice_list ARROW BOX

    component_choice_list ::= selector_name list_105
           | OTHERS

    extension_aggregate ::= LPAREN ancestor_part WITH record_component_association_list RPAREN

    ancestor_part ::= expression
           | subtype_mark

    array_aggregate ::= positional_array_aggregate
           | named_array_aggregate

    positional_array_aggregate ::= LPAREN expression COMMA expression list_107 RPAREN
           | LPAREN expression list_109 COMMA OTHERS ARROW expression RPAREN
           | LPAREN expression list_111 COMMA OTHERS ARROW BOX RPAREN

    named_array_aggregate ::= LPAREN array_component_association list_113 RPAREN

    array_component_association ::= discrete_choice_list ARROW expression
           | discrete_choice_list ARROW BOX

    expression ::= relation list_115
           | relation list_117
           | relation list_119
           | relation list_121
           | relation list_123

    choice_expression ::= choice_relation list_125
           | choice_relation list_127
           | choice_relation list_129
           | choice_relation list_131
           | choice_relation list_133

    choice_relation ::= simple_expression opt_135

    relation ::= simple_expression opt_137
           | simple_expression opt_138 IN membership_choice_list
           | raise_expression

    membership_choice_list ::= membership_choice list_140

    membership_choice ::= choice_simple_expression
           | range
           | subtype_mark

    simple_expression ::= opt_141 term list_143

    choice_simple_expression ::= opt_144 term list_146

    term ::= factor list_148

    factor ::= primary opt_150
           | ABS primary
           | NOT primary

    primary ::= numeric_literal
           | NULL_
           | string_literal
           | aggregate
           | name
           | allocator
           | LPAREN expression RPAREN
           | LPAREN conditional_expression RPAREN
           | LPAREN qualified_expression RPAREN

    logical_operator ::= AND
           | OR
           | XOR

    relational_operator ::= EQ
           | NE
           | LT
           | GT
           | LE
           | GE

    binary_adding_operator ::= PLUS
           | MINUS
           | AMPERSAND

    unary_adding_operator ::= PLUS
           | MINUS

    multiplying_operator ::= MULT
           | DIV
           | MOD
           | REM

    highest_precedence_operator ::= EXPON
           | ABS
           | NOT

    conditional_expression ::= if_expression
           | case_expression

    raise_expression ::= RAISE name opt_152

    if_expression ::= IF condition THEN expression list_154 opt_156

    condition ::= expression

    case_expression ::= CASE expression IS case_expression_alternative list_158

    case_expression_alternative ::= WHEN discrete_choice_list ARROW expression

    quantified_expression ::= FOR quantifier loop_parameter_specification ARROW predicate
           | FOR quantifier iterator_specification ARROW predicate

    quantifier ::= ALL
           | SOME

    predicate ::= expression

    type_conversion ::= subtype_mark LPAREN expression RPAREN
           | subtype_mark LPAREN name RPAREN

    qualified_expression ::= subtype_mark SQ LPAREN expression RPAREN
           | subtype_mark SQ aggregate

    allocator ::= NEW opt_159 subtype_indication
           | NEW opt_160 qualified_expression

    subpool_specification ::= LPAREN name RPAREN

    sequence_of_statements ::= list_161 list_162

    statement ::= list_163 simple_statement
           | list_164 compound_statement

    simple_statement ::= null_statement
           | assignment_statement
           | exit_statement
           | goto_statement
           | procedure_call_statement
           | simple_return_statement
           | entry_call_statement
           | requeue_statement
           | delay_statement
           | abort_statement
           | raise_statement
           | qualified_expression

    compound_statement ::= if_statement
           | case_statement
           | loop_statement
           | block_statement
           | extended_return_statement
           | accept_statement
           | select_statement

    null_statement ::= NULL_ SEMI

    label ::= LLB direct_name RLB

    assignment_statement ::= name ASSIGN expression SEMI

    if_statement ::= IF condition THEN sequence_of_statements list_166 opt_168 END IF SEMI

    case_statement ::= CASE expression IS case_statement_alternative list_169 END CASE SEMI

    case_statement_alternative ::= WHEN discrete_choice_list ARROW sequence_of_statements

    loop_statement ::= opt_171 opt_172 LOOP sequence_of_statements END LOOP opt_173 SEMI

    iteration_scheme ::= WHILE condition
           | FOR loop_parameter_specification
           | FOR iterator_specification

    loop_parameter_specification ::= defining_identifier IN opt_174 discrete_subtype_definition

    iterator_specification ::= defining_identifier IN opt_175 name
           | defining_identifier COLON subtype_indication OF opt_176 name

    block_statement ::= opt_178 opt_180 BEGIN handled_sequence_of_statements END opt_181 SEMI

    exit_statement ::= EXIT opt_182 opt_184 SEMI

    goto_statement ::= GOTO name SEMI

    subprogram_declaration ::= opt_185 subprogram_specification opt_186 SEMI

    subprogram_specification ::= procedure_specification
           | function_specification

    procedure_specification ::= PROCEDURE defining_program_unit_name opt_187

    function_specification ::= FUNCTION defining_designator parameter_and_result_profile

    designator ::= opt_189 identifier
           | operator_symbol

    defining_designator ::= defining_program_unit_name
           | defining_operator_symbol

    defining_program_unit_name ::= opt_191 defining_identifier

    operator_symbol ::= string_literal

    defining_operator_symbol ::= operator_symbol

    parameter_and_result_profile ::= opt_192 RETURN opt_193 subtype_mark
           | opt_194 RETURN access_definition

    formal_part ::= LPAREN parameter_specification list_196 RPAREN

    parameter_specification ::= defining_identifier_list COLON opt_197 mode_ opt_198 subtype_mark opt_200
           | defining_identifier_list COLON access_definition opt_202

    mode_ ::= opt_203 opt_204

    subprogram_body ::= opt_205 subprogram_specification opt_206 IS declarative_part BEGIN handled_sequence_of_statements END opt_207 SEMI

    procedure_call_statement ::= name SEMI
           | name actual_parameter_part SEMI

    actual_parameter_part ::= LPAREN parameter_association list_209 RPAREN

    parameter_association ::= opt_211 explicit_actual_parameter

    explicit_actual_parameter ::= expression
           | name

    simple_return_statement ::= RETURN opt_212 SEMI

    extended_return_object_declaration ::= defining_identifier COLON opt_213 opt_214 return_subtype_indication opt_216

    extended_return_statement ::= RETURN extended_return_object_declaration opt_218 SEMI

    return_subtype_indication ::= subtype_indication
           | access_definition

    null_procedure_declaration ::= opt_219 procedure_specification IS NULL_ opt_220 SEMI

    expression_function_declaration ::= opt_221 function_specification IS LPAREN expression RPAREN opt_222 SEMI

    package_declaration ::= package_specification SEMI

    package_specification ::= PACKAGE defining_program_unit_name opt_223 IS list_224 opt_227 END opt_231

    package_body ::= PACKAGE BODY_ defining_program_unit_name opt_232 IS declarative_part opt_234 END opt_238 SEMI

    private_type_declaration ::= TYPE defining_identifier opt_239 IS opt_242 opt_243 PRIVATE opt_244 SEMI

    private_extension_declaration ::= TYPE defining_identifier opt_245 IS opt_246 grp_247 NEW subtype_indication opt_249 WITH PRIVATE opt_250 SEMI

    overriding_indicator ::= opt_251 OVERRIDING

    use_clause ::= use_package_clause
           | use_type_clause

    use_package_clause ::= USE name list_253 SEMI

    use_type_clause ::= USE opt_254 TYPE subtype_mark list_256 SEMI

    renaming_declaration ::= object_renaming_declaration
           | exception_renaming_declaration
           | package_renaming_declaration
           | subprogram_renaming_declaration
           | generic_renaming_declaration

    object_renaming_declaration ::= defining_identifier COLON opt_257 subtype_mark RENAMES name opt_258 SEMI
           | defining_identifier COLON access_definition RENAMES name opt_259 SEMI

    exception_renaming_declaration ::= defining_identifier COLON EXCEPTION RENAMES name opt_260 SEMI

    package_renaming_declaration ::= PACKAGE defining_program_unit_name RENAMES name opt_261 SEMI

    subprogram_renaming_declaration ::= opt_262 subprogram_specification RENAMES name opt_263 SEMI

    generic_renaming_declaration ::= GENERIC PACKAGE defining_program_unit_name RENAMES name opt_264 SEMI
           | GENERIC PROCEDURE defining_program_unit_name RENAMES name opt_265 SEMI
           | GENERIC FUNCTION defining_program_unit_name RENAMES name opt_266 SEMI

    task_type_declaration ::= TASK TYPE defining_identifier opt_267 opt_268 opt_272 SEMI

    single_task_declaration ::= TASK defining_identifier opt_273 opt_277 SEMI

    task_definition ::= list_278 opt_281 END opt_282

    task_item ::= entry_declaration
           | aspect_clause

    task_body ::= TASK BODY_ defining_identifier opt_283 IS declarative_part BEGIN handled_sequence_of_statements END opt_284 SEMI

    protected_type_declaration ::= PROTECTED TYPE defining_identifier opt_285 opt_286 IS opt_288 protected_definition SEMI

    single_protected_declaration ::= PROTECTED defining_identifier opt_289 IS opt_291 protected_definition SEMI

    protected_definition ::= list_292 opt_295 END opt_296

    protected_operation_declaration ::= subprogram_declaration
           | entry_declaration
           | aspect_clause

    protected_element_declaration ::= protected_operation_declaration
           | component_declaration

    protected_body ::= PROTECTED BODY_ defining_identifier opt_297 IS list_298 END opt_299 SEMI

    protected_operation_item ::= subprogram_declaration
           | subprogram_body
           | entry_body
           | aspect_clause

    entry_declaration ::= opt_300 ENTRY defining_identifier opt_302 opt_303 opt_304 SEMI

    accept_statement ::= ACCEPT_ entry_direct_name opt_306 opt_307 opt_310 SEMI

    entry_direct_name ::= direct_name

    entry_index ::= expression

    entry_body ::= ENTRY defining_identifier entry_body_formal_part entry_barrier IS declarative_part BEGIN handled_sequence_of_statements END opt_311 SEMI

    entry_identifier ::= identifier

    entry_body_formal_part ::= opt_313 opt_314

    entry_barrier ::= WHEN condition

    entry_index_specification ::= FOR defining_identifier IN discrete_subtype_definition

    entry_call_statement ::= name opt_315 SEMI

    requeue_statement ::= REQUEUE name opt_317 SEMI

    delay_statement ::= delay_until_statement
           | delay_relative_statement

    delay_until_statement ::= DELAY UNTIL delay_expression SEMI

    delay_relative_statement ::= DELAY delay_expression SEMI

    delay_expression ::= expression

    select_statement ::= selective_accept
           | timed_entry_call
           | conditional_entry_call
           | asynchronous_select

    selective_accept ::= SELECT opt_318 select_alternative list_321 opt_323 END SELECT SEMI

    guard ::= WHEN condition ARROW

    select_alternative ::= accept_alternative
           | delay_alternative
           | terminate_alternative

    accept_alternative ::= accept_statement opt_324

    delay_alternative ::= delay_statement opt_325

    terminate_alternative ::= TERMINATE SEMI

    timed_entry_call ::= SELECT entry_call_alternative OR delay_alternative END SELECT SEMI

    entry_call_alternative ::= procedure_or_entry_call opt_326

    procedure_or_entry_call ::= procedure_call_statement
           | entry_call_statement

    conditional_entry_call ::= SELECT entry_call_alternative ELSE sequence_of_statements END SELECT SEMI

    asynchronous_select ::= SELECT triggering_alternative THEN ABORT abortable_part END SELECT SEMI

    triggering_alternative ::= triggering_statement opt_327

    triggering_statement ::= procedure_or_entry_call
           | delay_statement

    abortable_part ::= sequence_of_statements

    abort_statement ::= ABORT name list_329 SEMI

    compilation ::= list_330

    compilation_unit ::= list_331 grp_332

    library_item ::= opt_333 library_unit_declaration
           | library_unit_body
           | opt_334 library_unit_renaming_declaration

    library_unit_declaration ::= subprogram_declaration
           | package_declaration
           | generic_declaration
           | generic_instantiation

    library_unit_renaming_declaration ::= package_renaming_declaration
           | generic_renaming_declaration
           | subprogram_renaming_declaration

    library_unit_body ::= subprogram_body
           | package_body

    context_item ::= with_clause
           | use_clause

    with_clause ::= limited_with_clause
           | nonlimited_with_clause

    limited_with_clause ::= LIMITED opt_335 WITH name list_337 SEMI

    nonlimited_with_clause ::= opt_338 WITH name list_340 SEMI

    body_stub ::= subprogram_body_stub
           | package_body_stub
           | task_body_stub
           | protected_body_stub

    subprogram_body_stub ::= opt_341 subprogram_specification IS SEPARATE opt_342 SEMI

    package_body_stub ::= PACKAGE BODY_ defining_identifier IS SEPARATE opt_343 SEMI

    task_body_stub ::= TASK BODY_ defining_identifier IS SEPARATE opt_344 SEMI

    protected_body_stub ::= PROTECTED BODY_ defining_identifier IS SEPARATE opt_345 SEMI

    subunit ::= SEPARATE LPAREN name RPAREN proper_body

    exception_declaration ::= defining_identifier_list COLON EXCEPTION opt_346 SEMI

    handled_sequence_of_statements ::= sequence_of_statements opt_349

    exception_handler ::= WHEN opt_351 exception_choice list_353 ARROW sequence_of_statements

    choice_parameter_specification ::= defining_identifier

    exception_choice ::= name
           | OTHERS

    raise_statement ::= RAISE SEMI
           | RAISE name opt_355 SEMI

    generic_declaration ::= generic_subprogram_declaration
           | generic_package_declaration

    generic_subprogram_declaration ::= generic_formal_part subprogram_specification opt_356 SEMI

    generic_package_declaration ::= generic_formal_part package_specification SEMI

    generic_formal_part ::= GENERIC list_358

    generic_formal_parameter_declaration ::= formal_object_declaration
           | formal_type_declaration
           | formal_subprogram_declaration
           | formal_package_declaration

    generic_instantiation ::= PACKAGE defining_program_unit_name IS NEW name opt_359 opt_360 SEMI
           | opt_361 PROCEDURE defining_program_unit_name IS NEW name opt_362 opt_363 SEMI
           | opt_364 FUNCTION defining_designator IS NEW name opt_365 opt_366 SEMI

    generic_actual_part ::= LPAREN generic_association list_368 RPAREN

    generic_association ::= opt_370 explicit_generic_actual_parameter

    explicit_generic_actual_parameter ::= expression
           | name
           | subtype_mark

    formal_object_declaration ::= defining_identifier_list COLON mode_ opt_371 subtype_mark opt_373 opt_374 SEMI
           | defining_identifier_list COLON mode_ access_definition opt_376 opt_377 SEMI

    formal_type_declaration ::= formal_complete_type_declaration
           | formal_incomplete_type_declaration

    formal_complete_type_declaration ::= TYPE defining_identifier opt_378 IS formal_type_definition opt_379 SEMI

    formal_incomplete_type_declaration ::= TYPE defining_identifier opt_380 opt_382 SEMI

    formal_type_definition ::= formal_private_type_definition
           | formal_derived_type_definition
           | formal_discrete_type_definition
           | formal_signed_integer_type_definition
           | formal_modular_type_definition
           | formal_floating_point_type_definition
           | formal_ordinary_fixed_point_type_definition
           | formal_decimal_fixed_point_type_definition
           | formal_array_type_definition
           | formal_access_type_definition
           | formal_interface_type_definition

    formal_private_type_definition ::= opt_385 opt_386 PRIVATE

    formal_derived_type_definition ::= opt_387 opt_388 SYNCHRONIZED NEW subtype_mark opt_392

    formal_discrete_type_definition ::= LPAREN BOX RPAREN

    formal_signed_integer_type_definition ::= RANGE_ BOX

    formal_modular_type_definition ::= MOD BOX

    formal_floating_point_type_definition ::= DIGITS BOX

    formal_ordinary_fixed_point_type_definition ::= DELTA BOX

    formal_decimal_fixed_point_type_definition ::= DELTA BOX DIGITS BOX

    formal_array_type_definition ::= array_type_definition

    formal_access_type_definition ::= access_type_definition

    formal_interface_type_definition ::= interface_type_definition

    formal_subprogram_declaration ::= formal_concrete_subprogram_declaration
           | formal_abstract_subprogram_declaration

    formal_concrete_subprogram_declaration ::= WITH subprogram_specification opt_394 opt_395 SEMI

    formal_abstract_subprogram_declaration ::= WITH subprogram_specification IS ABSTRACT opt_396 opt_397 SEMI

    subprogram_default ::= name
           | BOX
           | NULL_

    formal_package_declaration ::= WITH PACKAGE defining_identifier IS NEW name formal_package_actual_part opt_398 SEMI

    formal_package_actual_part ::= LPAREN opt_400 BOX RPAREN
           | opt_401
           | LPAREN formal_package_association list_403 opt_405 RPAREN

    formal_package_association ::= generic_association
           | selector_name ARROW BOX

    aspect_clause ::= attribute_definition_clause
           | enumeration_representation_clause
           | record_representation_clause
           | at_clause

    local_name ::= direct_name
           | direct_name SQ attribute_designator
           | name

    aspect_specification ::= WITH aspect_mark opt_407 list_411

    aspect_mark ::= aspect_identifier opt_413

    aspect_identifier ::= identifier

    aspect_definition ::= name
           | expression
           | identifier

    attribute_definition_clause ::= FOR local_name SQ attribute_designator USE expression SEMI
           | FOR local_name SQ attribute_designator USE name SEMI

    enumeration_representation_clause ::= FOR local_name USE enumeration_aggregate SEMI

    enumeration_aggregate ::= array_aggregate

    record_representation_clause ::= FOR local_name USE RECORD opt_414 list_415 END RECORD SEMI

    component_clause ::= component_local_name AT position RANGE_ first_bit DOTDOT last_bit SEMI

    component_local_name ::= local_name

    position ::= expression

    first_bit ::= expression

    last_bit ::= expression

    delta_constraint ::= DELTA simple_expression opt_416

    at_clause ::= FOR direct_name USE AT expression SEMI

    mod_clause ::= AT MOD expression SEMI

    pragmaRule ::= PRAGMA identifier opt_420 SEMI

    pragma_argument_association ::= opt_422 expression
           | name

    opt_1 ::= known_discriminant_part | $empty

    opt_2 ::= aspect_specification | $empty

    opt_3 ::= aspect_specification | $empty

    opt_4 ::= null_exclusion | $empty

    opt_5 ::= constraint | $empty

    seq_6 ::= DOT identifier

    list_7 ::= $empty | list_7 seq_6

    opt_8 ::= ALIASED | $empty

    opt_9 ::= CONSTANT | $empty

    seq_10 ::= ASSIGN expression

    opt_11 ::= seq_10 | $empty

    opt_12 ::= aspect_specification | $empty

    opt_13 ::= ALIASED | $empty

    opt_14 ::= CONSTANT | $empty

    seq_15 ::= ASSIGN expression

    opt_16 ::= seq_15 | $empty

    opt_17 ::= aspect_specification | $empty

    opt_18 ::= ALIASED | $empty

    opt_19 ::= CONSTANT | $empty

    seq_20 ::= ASSIGN expression

    opt_21 ::= seq_20 | $empty

    opt_22 ::= aspect_specification | $empty

    seq_23 ::= COMMA defining_identifier

    list_24 ::= $empty | list_24 seq_23

    opt_25 ::= ABSTRACT | $empty

    opt_26 ::= LIMITED | $empty

    seq_27 ::= AND interface_list

    opt_28 ::= seq_27 | $empty

    seq_29 ::= opt_28 record_extension_part

    opt_30 ::= seq_29 | $empty

    seq_31 ::= COMMA enumeration_literal_specification

    list_32 ::= $empty | list_32 seq_31

    opt_33 ::= real_range_specification | $empty

    opt_34 ::= real_range_specification | $empty

    opt_35 ::= range_constraint | $empty

    seq_36 ::= COMMA index_subtype_definition

    list_37 ::= $empty | list_37 seq_36

    seq_38 ::= COMMA discrete_subtype_definition

    list_39 ::= $empty | list_39 seq_38

    opt_40 ::= ALIASED | $empty

    opt_41 ::= ALIASED | $empty

    seq_42 ::= COMMA discrete_range

    list_43 ::= $empty | list_43 seq_42

    seq_44 ::= SEMI discriminant_specification

    list_45 ::= $empty | list_45 seq_44

    opt_46 ::= null_exclusion | $empty

    seq_47 ::= ASSIGN expression

    opt_48 ::= seq_47 | $empty

    seq_49 ::= ASSIGN expression

    opt_50 ::= seq_49 | $empty

    seq_51 ::= COMMA discriminant_association

    list_52 ::= $empty | list_52 seq_51

    seq_53 ::= VL selector_name

    list_54 ::= $empty | list_54 seq_53

    seq_55 ::= selector_name list_54 ARROW

    opt_56 ::= seq_55 | $empty

    opt_57 ::= ABSTRACT | $empty

    seq_58 ::= opt_57 TAGGED

    opt_59 ::= seq_58 | $empty

    opt_60 ::= LIMITED | $empty

    list_61 ::= component_item | list_61 component_item

    list_62 ::= $empty | list_62 component_item

    seq_63 ::= ASSIGN default_expression

    opt_64 ::= seq_63 | $empty

    opt_65 ::= aspect_specification | $empty

    list_66 ::= variant | list_66 variant

    seq_67 ::= VL discrete_choice

    list_68 ::= $empty | list_68 seq_67

    opt_69 ::= overriding_indicator | $empty

    opt_70 ::= aspect_specification | $empty

    grp_71 ::= LIMITED | TASK | PROTECTED | SYNCHRONIZED

    opt_72 ::= grp_71 | $empty

    seq_73 ::= AND interface_list

    opt_74 ::= seq_73 | $empty

    seq_75 ::= AND subtype_mark

    list_76 ::= $empty | list_76 seq_75

    opt_77 ::= null_exclusion | $empty

    opt_78 ::= null_exclusion | $empty

    opt_79 ::= general_access_modifier | $empty

    opt_80 ::= PROTECTED | $empty

    opt_81 ::= formal_part | $empty

    opt_82 ::= PROTECTED | $empty

    opt_83 ::= null_exclusion | $empty

    opt_84 ::= CONSTANT | $empty

    opt_85 ::= null_exclusion | $empty

    opt_86 ::= PROTECTED | $empty

    opt_87 ::= formal_part | $empty

    opt_88 ::= null_exclusion | $empty

    opt_89 ::= PROTECTED | $empty

    opt_90 ::= discriminant_part | $empty

    seq_91 ::= IS TAGGED

    opt_92 ::= seq_91 | $empty

    list_93 ::= $empty | list_93 declarative_item

    seq_94 ::= COMMA expression

    list_95 ::= $empty | list_95 seq_94

    seq_96 ::= LPAREN expression RPAREN

    opt_97 ::= seq_96 | $empty

    seq_98 ::= LPAREN expression RPAREN

    opt_99 ::= seq_98 | $empty

    seq_100 ::= COMMA record_component_association

    list_101 ::= $empty | list_101 seq_100

    seq_102 ::= component_choice_list ARROW

    opt_103 ::= seq_102 | $empty

    seq_104 ::= VL selector_name

    list_105 ::= $empty | list_105 seq_104

    seq_106 ::= COMMA expression

    list_107 ::= $empty | list_107 seq_106

    seq_108 ::= COMMA expression

    list_109 ::= $empty | list_109 seq_108

    seq_110 ::= COMMA expression

    list_111 ::= $empty | list_111 seq_110

    seq_112 ::= COMMA array_component_association

    list_113 ::= $empty | list_113 seq_112

    seq_114 ::= AND relation

    list_115 ::= $empty | list_115 seq_114

    seq_116 ::= AND THEN relation

    list_117 ::= $empty | list_117 seq_116

    seq_118 ::= OR relation

    list_119 ::= $empty | list_119 seq_118

    seq_120 ::= OR ELSE relation

    list_121 ::= $empty | list_121 seq_120

    seq_122 ::= XOR relation

    list_123 ::= $empty | list_123 seq_122

    seq_124 ::= AND choice_relation

    list_125 ::= $empty | list_125 seq_124

    seq_126 ::= OR choice_relation

    list_127 ::= $empty | list_127 seq_126

    seq_128 ::= XOR choice_relation

    list_129 ::= $empty | list_129 seq_128

    seq_130 ::= AND THEN choice_relation

    list_131 ::= $empty | list_131 seq_130

    seq_132 ::= OR ELSE choice_relation

    list_133 ::= $empty | list_133 seq_132

    seq_134 ::= relational_operator simple_expression

    opt_135 ::= seq_134 | $empty

    seq_136 ::= relational_operator simple_expression

    opt_137 ::= seq_136 | $empty

    opt_138 ::= NOT | $empty

    seq_139 ::= VL membership_choice

    list_140 ::= $empty | list_140 seq_139

    opt_141 ::= unary_adding_operator | $empty

    seq_142 ::= binary_adding_operator term

    list_143 ::= $empty | list_143 seq_142

    opt_144 ::= unary_adding_operator | $empty

    seq_145 ::= binary_adding_operator term

    list_146 ::= $empty | list_146 seq_145

    seq_147 ::= multiplying_operator factor

    list_148 ::= $empty | list_148 seq_147

    seq_149 ::= EXPON primary

    opt_150 ::= seq_149 | $empty

    seq_151 ::= WITH simple_expression

    opt_152 ::= seq_151 | $empty

    seq_153 ::= ELSIF condition THEN expression

    list_154 ::= $empty | list_154 seq_153

    seq_155 ::= ELSE expression

    opt_156 ::= seq_155 | $empty

    seq_157 ::= COMMA case_expression_alternative

    list_158 ::= $empty | list_158 seq_157

    opt_159 ::= subpool_specification | $empty

    opt_160 ::= subpool_specification | $empty

    list_161 ::= statement | list_161 statement

    list_162 ::= $empty | list_162 label

    list_163 ::= $empty | list_163 label

    list_164 ::= $empty | list_164 label

    seq_165 ::= ELSIF condition THEN sequence_of_statements

    list_166 ::= $empty | list_166 seq_165

    seq_167 ::= ELSE sequence_of_statements

    opt_168 ::= seq_167 | $empty

    list_169 ::= $empty | list_169 case_statement_alternative

    seq_170 ::= direct_name COLON

    opt_171 ::= seq_170 | $empty

    opt_172 ::= iteration_scheme | $empty

    opt_173 ::= identifier | $empty

    opt_174 ::= REVERSE | $empty

    opt_175 ::= REVERSE | $empty

    opt_176 ::= REVERSE | $empty

    seq_177 ::= direct_name COLON

    opt_178 ::= seq_177 | $empty

    seq_179 ::= DECLARE declarative_part

    opt_180 ::= seq_179 | $empty

    opt_181 ::= identifier | $empty

    opt_182 ::= name | $empty

    seq_183 ::= WHEN condition

    opt_184 ::= seq_183 | $empty

    opt_185 ::= overriding_indicator | $empty

    opt_186 ::= aspect_specification | $empty

    opt_187 ::= formal_part | $empty

    seq_188 ::= name DOT

    opt_189 ::= seq_188 | $empty

    seq_190 ::= name DOT

    opt_191 ::= seq_190 | $empty

    opt_192 ::= formal_part | $empty

    opt_193 ::= null_exclusion | $empty

    opt_194 ::= formal_part | $empty

    seq_195 ::= SEMI parameter_specification

    list_196 ::= $empty | list_196 seq_195

    opt_197 ::= ALIASED | $empty

    opt_198 ::= null_exclusion | $empty

    seq_199 ::= ASSIGN default_expression

    opt_200 ::= seq_199 | $empty

    seq_201 ::= ASSIGN default_expression

    opt_202 ::= seq_201 | $empty

    opt_203 ::= IN | $empty

    opt_204 ::= OUT | $empty

    opt_205 ::= overriding_indicator | $empty

    opt_206 ::= aspect_specification | $empty

    opt_207 ::= designator | $empty

    seq_208 ::= COMMA parameter_association

    list_209 ::= $empty | list_209 seq_208

    seq_210 ::= selector_name ARROW

    opt_211 ::= seq_210 | $empty

    opt_212 ::= expression | $empty

    opt_213 ::= ALIASED | $empty

    opt_214 ::= CONSTANT | $empty

    seq_215 ::= ASSIGN expression

    opt_216 ::= seq_215 | $empty

    seq_217 ::= DO handled_sequence_of_statements END RETURN

    opt_218 ::= seq_217 | $empty

    opt_219 ::= overriding_indicator | $empty

    opt_220 ::= aspect_specification | $empty

    opt_221 ::= overriding_indicator | $empty

    opt_222 ::= aspect_specification | $empty

    opt_223 ::= aspect_specification | $empty

    list_224 ::= $empty | list_224 basic_declarative_item

    list_225 ::= $empty | list_225 basic_declarative_item

    seq_226 ::= PRIVATE list_225

    opt_227 ::= seq_226 | $empty

    seq_228 ::= name DOT

    opt_229 ::= seq_228 | $empty

    seq_230 ::= opt_229 identifier

    opt_231 ::= seq_230 | $empty

    opt_232 ::= aspect_specification | $empty

    seq_233 ::= BEGIN handled_sequence_of_statements

    opt_234 ::= seq_233 | $empty

    seq_235 ::= name DOT

    opt_236 ::= seq_235 | $empty

    seq_237 ::= opt_236 identifier

    opt_238 ::= seq_237 | $empty

    opt_239 ::= discriminant_part | $empty

    opt_240 ::= ABSTRACT | $empty

    seq_241 ::= opt_240 TAGGED

    opt_242 ::= seq_241 | $empty

    opt_243 ::= LIMITED | $empty

    opt_244 ::= aspect_specification | $empty

    opt_245 ::= discriminant_part | $empty

    opt_246 ::= ABSTRACT | $empty

    grp_247 ::= LIMITED | SYNCHRONIZED

    seq_248 ::= AND interface_list

    opt_249 ::= seq_248 | $empty

    opt_250 ::= aspect_specification | $empty

    opt_251 ::= NOT | $empty

    seq_252 ::= COMMA name

    list_253 ::= $empty | list_253 seq_252

    opt_254 ::= ALL | $empty

    seq_255 ::= COMMA subtype_mark

    list_256 ::= $empty | list_256 seq_255

    opt_257 ::= null_exclusion | $empty

    opt_258 ::= aspect_specification | $empty

    opt_259 ::= aspect_specification | $empty

    opt_260 ::= aspect_specification | $empty

    opt_261 ::= aspect_specification | $empty

    opt_262 ::= overriding_indicator | $empty

    opt_263 ::= aspect_specification | $empty

    opt_264 ::= aspect_specification | $empty

    opt_265 ::= aspect_specification | $empty

    opt_266 ::= aspect_specification | $empty

    opt_267 ::= known_discriminant_part | $empty

    opt_268 ::= aspect_specification | $empty

    seq_269 ::= NEW interface_list WITH

    opt_270 ::= seq_269 | $empty

    seq_271 ::= IS opt_270 task_definition

    opt_272 ::= seq_271 | $empty

    opt_273 ::= aspect_specification | $empty

    seq_274 ::= NEW interface_list WITH

    opt_275 ::= seq_274 | $empty

    seq_276 ::= IS opt_275 task_definition

    opt_277 ::= seq_276 | $empty

    list_278 ::= $empty | list_278 task_item

    list_279 ::= $empty | list_279 task_item

    seq_280 ::= PRIVATE list_279

    opt_281 ::= seq_280 | $empty

    opt_282 ::= identifier | $empty

    opt_283 ::= aspect_specification | $empty

    opt_284 ::= identifier | $empty

    opt_285 ::= known_discriminant_part | $empty

    opt_286 ::= aspect_specification | $empty

    seq_287 ::= NEW interface_list WITH

    opt_288 ::= seq_287 | $empty

    opt_289 ::= aspect_specification | $empty

    seq_290 ::= NEW interface_list WITH

    opt_291 ::= seq_290 | $empty

    list_292 ::= $empty | list_292 protected_operation_declaration

    list_293 ::= $empty | list_293 protected_element_declaration

    seq_294 ::= PRIVATE list_293

    opt_295 ::= seq_294 | $empty

    opt_296 ::= identifier | $empty

    opt_297 ::= aspect_specification | $empty

    list_298 ::= $empty | list_298 protected_operation_item

    opt_299 ::= identifier | $empty

    opt_300 ::= overriding_indicator | $empty

    seq_301 ::= LPAREN discrete_subtype_definition RPAREN

    opt_302 ::= seq_301 | $empty

    opt_303 ::= formal_part | $empty

    opt_304 ::= aspect_specification | $empty

    seq_305 ::= LPAREN entry_index RPAREN

    opt_306 ::= seq_305 | $empty

    opt_307 ::= formal_part | $empty

    opt_308 ::= entry_identifier | $empty

    seq_309 ::= DO handled_sequence_of_statements END opt_308

    opt_310 ::= seq_309 | $empty

    opt_311 ::= entry_identifier | $empty

    seq_312 ::= LPAREN entry_index_specification RPAREN

    opt_313 ::= seq_312 | $empty

    opt_314 ::= formal_part | $empty

    opt_315 ::= actual_parameter_part | $empty

    seq_316 ::= WITH ABORT

    opt_317 ::= seq_316 | $empty

    opt_318 ::= guard | $empty

    opt_319 ::= guard | $empty

    seq_320 ::= OR opt_319 select_alternative

    list_321 ::= $empty | list_321 seq_320

    seq_322 ::= ELSE sequence_of_statements

    opt_323 ::= seq_322 | $empty

    opt_324 ::= sequence_of_statements | $empty

    opt_325 ::= sequence_of_statements | $empty

    opt_326 ::= sequence_of_statements | $empty

    opt_327 ::= sequence_of_statements | $empty

    seq_328 ::= COMMA name

    list_329 ::= $empty | list_329 seq_328

    list_330 ::= $empty | list_330 compilation_unit

    list_331 ::= $empty | list_331 context_item

    grp_332 ::= library_item | subunit

    opt_333 ::= PRIVATE | $empty

    opt_334 ::= PRIVATE | $empty

    opt_335 ::= PRIVATE | $empty

    seq_336 ::= COMMA name

    list_337 ::= $empty | list_337 seq_336

    opt_338 ::= PRIVATE | $empty

    seq_339 ::= COMMA name

    list_340 ::= $empty | list_340 seq_339

    opt_341 ::= overriding_indicator | $empty

    opt_342 ::= aspect_specification | $empty

    opt_343 ::= aspect_specification | $empty

    opt_344 ::= aspect_specification | $empty

    opt_345 ::= aspect_specification | $empty

    opt_346 ::= aspect_specification | $empty

    list_347 ::= exception_handler | list_347 exception_handler

    seq_348 ::= EXCEPTION list_347

    opt_349 ::= seq_348 | $empty

    seq_350 ::= choice_parameter_specification COLON

    opt_351 ::= seq_350 | $empty

    seq_352 ::= VL exception_choice

    list_353 ::= $empty | list_353 seq_352

    seq_354 ::= WITH expression

    opt_355 ::= seq_354 | $empty

    opt_356 ::= aspect_specification | $empty

    grp_357 ::= generic_formal_parameter_declaration | use_clause

    list_358 ::= $empty | list_358 grp_357

    opt_359 ::= generic_actual_part | $empty

    opt_360 ::= aspect_specification | $empty

    opt_361 ::= overriding_indicator | $empty

    opt_362 ::= generic_actual_part | $empty

    opt_363 ::= aspect_specification | $empty

    opt_364 ::= overriding_indicator | $empty

    opt_365 ::= generic_actual_part | $empty

    opt_366 ::= aspect_specification | $empty

    seq_367 ::= COMMA generic_association

    list_368 ::= $empty | list_368 seq_367

    seq_369 ::= selector_name ARROW

    opt_370 ::= seq_369 | $empty

    opt_371 ::= null_exclusion | $empty

    seq_372 ::= ASSIGN default_expression

    opt_373 ::= seq_372 | $empty

    opt_374 ::= aspect_specification | $empty

    seq_375 ::= ASSIGN default_expression

    opt_376 ::= seq_375 | $empty

    opt_377 ::= aspect_specification | $empty

    opt_378 ::= discriminant_part | $empty

    opt_379 ::= aspect_specification | $empty

    opt_380 ::= discriminant_part | $empty

    seq_381 ::= IS TAGGED

    opt_382 ::= seq_381 | $empty

    opt_383 ::= ABSTRACT | $empty

    seq_384 ::= opt_383 TAGGED

    opt_385 ::= seq_384 | $empty

    opt_386 ::= LIMITED | $empty

    opt_387 ::= ABSTRACT | $empty

    opt_388 ::= LIMITED | $empty

    seq_389 ::= AND interface_list

    opt_390 ::= seq_389 | $empty

    seq_391 ::= opt_390 WITH PRIVATE

    opt_392 ::= seq_391 | $empty

    seq_393 ::= IS subprogram_default

    opt_394 ::= seq_393 | $empty

    opt_395 ::= aspect_specification | $empty

    opt_396 ::= subprogram_default | $empty

    opt_397 ::= aspect_specification | $empty

    opt_398 ::= aspect_specification | $empty

    seq_399 ::= OTHERS ARROW

    opt_400 ::= seq_399 | $empty

    opt_401 ::= generic_actual_part | $empty

    seq_402 ::= COMMA formal_package_association

    list_403 ::= $empty | list_403 seq_402

    seq_404 ::= COMMA OTHERS ARROW BOX

    opt_405 ::= seq_404 | $empty

    seq_406 ::= ARROW aspect_definition

    opt_407 ::= seq_406 | $empty

    seq_408 ::= ARROW aspect_definition

    opt_409 ::= seq_408 | $empty

    seq_410 ::= COMMA aspect_mark opt_409

    list_411 ::= $empty | list_411 seq_410

    seq_412 ::= SQ CLASS__

    opt_413 ::= seq_412 | $empty

    opt_414 ::= mod_clause | $empty

    list_415 ::= $empty | list_415 component_clause

    opt_416 ::= range_constraint | $empty

    seq_417 ::= COMMA pragma_argument_association

    list_418 ::= $empty | list_418 seq_417

    seq_419 ::= LP pragma_argument_association list_418 RP

    opt_420 ::= seq_419 | $empty

    seq_421 ::= identifier ARROW

    opt_422 ::= seq_421 | $empty

%End
