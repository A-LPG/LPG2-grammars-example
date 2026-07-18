-- AUTO-GENERATED from antlr/grammars-v4 ada/ada2022 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=AdaAda2022Parser
%options package=lpg.grammars.ada.ada2022
%options template=dtParserTemplateF.gi
%options import_terminals=AdaAda2022Lexer.gi
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

    discriminant_specification ::= defining_identifier_list COLON opt_46 subtype_mark opt_48 opt_49
           | defining_identifier_list COLON access_definition opt_51 opt_52

    default_expression ::= expression

    discriminant_constraint ::= LPAREN discriminant_association list_54 RPAREN

    discriminant_association ::= opt_58 expression

    record_type_definition ::= opt_61 opt_62 record_definition

    record_definition ::= RECORD component_list END RECORD opt_63
           | NULL_ RECORD

    component_list ::= list_64
           | list_65 variant_part
           | NULL_ SEMI

    component_item ::= component_declaration
           | aspect_clause

    component_declaration ::= defining_identifier_list COLON component_definition opt_67 opt_68 SEMI

    variant_part ::= CASE direct_name IS list_69 END CASE SEMI

    variant ::= WHEN discrete_choice_list ARROW component_list

    discrete_choice_list ::= discrete_choice list_71

    discrete_choice ::= choice_expression
           | subtype_indication
           | range
           | OTHERS

    record_extension_part ::= WITH record_definition

    abstract_subprogram_declaration ::= opt_72 subprogram_specification IS ABSTRACT opt_73 SEMI

    interface_type_definition ::= opt_75 INTERFACE opt_77

    interface_list ::= subtype_mark list_79

    access_type_definition ::= opt_80 access_to_object_definition
           | opt_81 access_to_subprogram_definition

    access_to_object_definition ::= ACCESS opt_82 subtype_indication

    general_access_modifier ::= ALL
           | CONSTANT

    access_to_subprogram_definition ::= ACCESS opt_83 PROCEDURE opt_84
           | ACCESS opt_85 FUNCTION parameter_and_result_profile

    null_exclusion ::= NOT NULL_

    access_definition ::= opt_86 ACCESS opt_87 subtype_mark
           | opt_88 ACCESS opt_89 PROCEDURE opt_90
           | opt_91 ACCESS opt_92 FUNCTION parameter_and_result_profile

    incomplete_type_declaration ::= TYPE defining_identifier opt_93 opt_95 SEMI

    declarative_part ::= list_96

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
           | name LPAREN expression list_98 RPAREN
           | name LPAREN discrete_range RPAREN
           | name DOT selector_name
           | name SQ attribute_designator
           | type_conversion
           | name actual_parameter_part
           | character_literal
           | qualified_expression
           | target_name
           | value_sequence SQ reduction_attribute_designator
           | name SQ reduction_attribute_designator

    direct_name ::= identifier
           | operator_symbol

    selector_name ::= identifier
           | character_literal
           | operator_symbol

    attribute_designator ::= identifier opt_100
           | ACCESS__
           | DELTA__
           | DIGITS__
           | MOD__
           | ACCESS
           | DELTA
           | DIGITS
           | MOD

    range_attribute_reference ::= name SQUOTE range_attribute_designator

    range_attribute_designator ::= RANGE_ opt_102

    aggregate ::= record_aggregate
           | extension_aggregate
           | array_aggregate
           | delta_aggregate
           | container_aggregate

    record_aggregate ::= LPAREN record_component_association_list RPAREN

    record_component_association_list ::= record_component_association list_104
           | NULL_ RECORD

    record_component_association ::= opt_106 expression
           | component_choice_list ARROW BOX

    component_choice_list ::= selector_name list_108
           | OTHERS

    extension_aggregate ::= LPAREN ancestor_part WITH record_component_association_list RPAREN

    ancestor_part ::= expression
           | subtype_mark

    array_aggregate ::= positional_array_aggregate
           | null_array_aggregate
           | named_array_aggregate

    positional_array_aggregate ::= LPAREN expression COMMA expression list_110 RPAREN
           | LPAREN expression list_112 COMMA OTHERS ARROW expression RPAREN
           | LPAREN expression list_114 COMMA OTHERS ARROW BOX RPAREN
           | LSB expression list_116 opt_118 RSB
           | LSB expression list_120 COMMA OTHERS ARROW BOX RSB

    named_array_aggregate ::= LPAREN array_component_association_list RPAREN
           | LSB array_component_association_list RSB

    array_component_association ::= discrete_choice_list ARROW expression
           | discrete_choice_list ARROW BOX
           | iterated_component_association

    null_array_aggregate ::= LSB RSB

    array_component_association_list ::= array_component_association list_122

    iterated_component_association ::= FOR defining_identifier IN discrete_choice_list ARROW expression
           | FOR iterator_specification ARROW expression

    delta_aggregate ::= record_delta_aggregate
           | array_delta_aggregate

    record_delta_aggregate ::= LPAREN expression WITH DELTA record_component_association_list RPAREN

    array_delta_aggregate ::= LPAREN expression WITH DELTA array_component_association_list RPAREN
           | LSB expression WITH DELTA array_component_association_list RSB

    container_aggregate ::= null_container_aggregate
           | positional_container_aggregate
           | named_container_aggregate

    null_container_aggregate ::= LSB RSB

    positional_container_aggregate ::= LSB expression list_124 RSB

    named_container_aggregate ::= LSB container_element_association_list RSB

    container_element_association_list ::= container_element_association list_126

    container_element_association ::= key_choice_list ARROW expression
           | key_choice_list ARROW BOX
           | iterated_element_association

    key_choice_list ::= key_choice list_128

    key_choice ::= expression
           | discrete_range

    iterated_element_association ::= FOR loop_parameter_specification opt_130 ARROW expression
           | FOR iterator_specification opt_132 ARROW expression

    expression ::= relation list_134
           | relation list_136
           | relation list_138
           | relation list_140
           | relation list_142

    choice_expression ::= choice_relation list_144
           | choice_relation list_146
           | choice_relation list_148
           | choice_relation list_150
           | choice_relation list_152

    choice_relation ::= simple_expression opt_154

    relation ::= simple_expression opt_156
           | simple_expression opt_157 IN membership_choice_list

    membership_choice_list ::= membership_choice list_159

    membership_choice ::= choice_expression
           | range
           | subtype_mark

    simple_expression ::= opt_160 term list_162

    term ::= factor list_164

    factor ::= primary opt_166
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
           | LPAREN declare_expression RPAREN

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

    if_expression ::= IF condition THEN expression list_168 opt_170

    condition ::= expression

    case_expression ::= CASE expression IS case_expression_alternative list_172

    case_expression_alternative ::= WHEN discrete_choice_list ARROW expression

    declare_expression ::= DECLARE list_173 BEGIN expression

    declare_item ::= object_declaration
           | object_renaming_declaration

    quantified_expression ::= FOR quantifier loop_parameter_specification ARROW predicate
           | FOR quantifier iterator_specification ARROW predicate

    quantifier ::= ALL
           | SOME

    predicate ::= expression

    value_sequence ::= LSB opt_178 iterated_element_association RSB

    reduction_attribute_designator ::= identifier LPAREN reduction_specification RPAREN

    reduction_specification ::= name COMMA expression

    type_conversion ::= subtype_mark LPAREN expression RPAREN
           | subtype_mark LPAREN name RPAREN

    qualified_expression ::= subtype_mark SQ LPAREN expression RPAREN
           | subtype_mark SQ aggregate

    allocator ::= NEW opt_179 subtype_indication
           | NEW opt_180 qualified_expression

    subpool_specification ::= LPAREN name RPAREN

    sequence_of_statements ::= list_181 list_182

    statement ::= list_183 simple_statement
           | list_184 compound_statement

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
           | parallel_block_statement
           | accept_statement
           | select_statement

    null_statement ::= NULL_ SEMI

    label ::= LLB direct_name RLB

    assignment_statement ::= name ASSIGN expression SEMI

    if_statement ::= IF condition THEN sequence_of_statements list_186 opt_188 END IF SEMI

    case_statement ::= CASE expression IS case_statement_alternative list_189 END CASE SEMI

    case_statement_alternative ::= WHEN discrete_choice_list ARROW sequence_of_statements

    loop_statement ::= opt_191 opt_192 LOOP sequence_of_statements END LOOP opt_193 SEMI

    iteration_scheme ::= WHILE condition
           | FOR loop_parameter_specification
           | FOR iterator_specification
           | PARALLEL opt_195 opt_196 FOR loop_parameter_specification
           | PARALLEL opt_198 opt_199 FOR iterator_specification
           | PARALLEL opt_200 FOR procedural_iterator
           | FOR procedural_iterator

    loop_parameter_specification ::= defining_identifier IN opt_201 discrete_subtype_definition opt_202

    iterator_specification ::= defining_identifier opt_204 IN opt_205 name opt_206
           | defining_identifier opt_208 OF opt_209 name opt_210

    chunk_specification ::= simple_expression
           | defining_identifier IN discrete_subtype_definition

    iterator_filter ::= WHEN condition

    loop_parameter_subtype_indication ::= subtype_indication
           | access_definition

    procedural_iterator ::= iterator_parameter_specification OF iterator_procedure_call opt_211

    iterator_parameter_specification ::= formal_part
           | LPAREN defining_identifier list_213 RPAREN

    iterator_procedure_call ::= name
           | name iterator_actual_parameter_part

    iterator_actual_parameter_part ::= LPAREN iterator_parameter_association list_215 RPAREN

    iterator_parameter_association ::= parameter_association
           | parameter_association_with_box

    parameter_association_with_box ::= opt_217 BOX

    block_statement ::= opt_219 opt_221 BEGIN handled_sequence_of_statements END opt_222 SEMI

    exit_statement ::= EXIT opt_223 opt_225 SEMI

    goto_statement ::= GOTO name SEMI

    target_name ::= AT_SIGN

    subprogram_declaration ::= opt_226 subprogram_specification opt_227 SEMI

    subprogram_specification ::= procedure_specification
           | function_specification

    procedure_specification ::= PROCEDURE defining_program_unit_name opt_228

    function_specification ::= FUNCTION defining_designator parameter_and_result_profile

    designator ::= opt_230 identifier
           | operator_symbol

    defining_designator ::= defining_program_unit_name
           | defining_operator_symbol

    defining_program_unit_name ::= opt_232 defining_identifier

    operator_symbol ::= string_literal

    defining_operator_symbol ::= operator_symbol

    parameter_and_result_profile ::= opt_233 RETURN opt_234 subtype_mark
           | opt_235 RETURN access_definition

    formal_part ::= LPAREN parameter_specification list_237 RPAREN

    parameter_specification ::= defining_identifier_list COLON opt_238 mode_ opt_239 subtype_mark opt_241 opt_242
           | defining_identifier_list COLON access_definition opt_244 opt_245

    mode_ ::= opt_246 opt_247

    global_aspect_definition ::= NULL_
           | identifier
           | global_mode global_designator
           | LPAREN global_aspect_element list_249 RPAREN

    global_aspect_element ::= global_mode global_set
           | global_mode ALL
           | global_mode SYNCHRONIZED

    global_mode ::= basic_global_mode
           | extended_global_mode

    basic_global_mode ::= IN
           | IN OUT
           | OUT

    global_set ::= global_name list_251

    global_designator ::= ALL
           | SYNCHRONIZED
           | global_name

    global_name ::= name

    extended_global_mode ::= OVERRIDING basic_global_mode

    formal_parameter_set ::= formal_group_designator
           | formal_parameter_name
           | LPAREN formal_parameter_name list_253 RPAREN

    formal_group_designator ::= NULL_
           | ALL

    formal_parameter_name ::= name

    dispatching_operation_set ::= dispatching_operation_specifier
           | LPAREN dispatching_operation_specifier list_255 RPAREN

    dispatching_operation_specifier ::= name LPAREN name RPAREN

    subprogram_body ::= opt_256 subprogram_specification opt_257 IS declarative_part BEGIN handled_sequence_of_statements END opt_258 SEMI

    procedure_call_statement ::= name SEMI
           | name actual_parameter_part SEMI

    actual_parameter_part ::= LPAREN parameter_association list_260 RPAREN

    parameter_association ::= opt_262 explicit_actual_parameter

    explicit_actual_parameter ::= expression
           | name

    simple_return_statement ::= RETURN opt_263 SEMI

    extended_return_object_declaration ::= defining_identifier COLON opt_264 opt_265 return_subtype_indication opt_267 opt_268

    extended_return_statement ::= RETURN extended_return_object_declaration opt_270 SEMI

    parallel_block_statement ::= PARALLEL opt_272 opt_273 DO sequence_of_statements list_275 END DO SEMI

    return_subtype_indication ::= subtype_indication
           | access_definition

    null_procedure_declaration ::= opt_276 procedure_specification IS NULL_ opt_277 SEMI

    expression_function_declaration ::= opt_278 function_specification IS LPAREN expression RPAREN opt_279 SEMI

    package_declaration ::= package_specification SEMI

    package_specification ::= PACKAGE defining_program_unit_name opt_280 IS list_281 opt_284 END opt_288

    package_body ::= PACKAGE BODY_ defining_program_unit_name opt_289 IS declarative_part opt_291 END opt_295 SEMI

    private_type_declaration ::= TYPE defining_identifier opt_296 IS opt_299 opt_300 PRIVATE opt_301 SEMI

    private_extension_declaration ::= TYPE defining_identifier opt_302 IS opt_303 grp_304 NEW subtype_indication opt_306 WITH PRIVATE opt_307 SEMI

    overriding_indicator ::= opt_308 OVERRIDING

    use_clause ::= use_package_clause
           | use_type_clause

    use_package_clause ::= USE name list_310 SEMI

    use_type_clause ::= USE opt_311 TYPE subtype_mark list_313 SEMI

    renaming_declaration ::= object_renaming_declaration
           | exception_renaming_declaration
           | package_renaming_declaration
           | subprogram_renaming_declaration
           | generic_renaming_declaration

    object_renaming_declaration ::= defining_identifier opt_316 RENAMES name opt_317 SEMI
           | defining_identifier COLON access_definition RENAMES name opt_318 SEMI

    exception_renaming_declaration ::= defining_identifier COLON EXCEPTION RENAMES name opt_319 SEMI

    package_renaming_declaration ::= PACKAGE defining_program_unit_name RENAMES name opt_320 SEMI

    subprogram_renaming_declaration ::= opt_321 subprogram_specification RENAMES name opt_322 SEMI

    generic_renaming_declaration ::= GENERIC PACKAGE defining_program_unit_name RENAMES name opt_323 SEMI
           | GENERIC PROCEDURE defining_program_unit_name RENAMES name opt_324 SEMI
           | GENERIC FUNCTION defining_program_unit_name RENAMES name opt_325 SEMI

    task_type_declaration ::= TASK TYPE defining_identifier opt_326 opt_327 opt_331 SEMI

    single_task_declaration ::= TASK defining_identifier opt_332 opt_336 SEMI

    task_definition ::= list_337 opt_340 END opt_341

    task_item ::= entry_declaration
           | aspect_clause

    task_body ::= TASK BODY_ defining_identifier opt_342 IS declarative_part BEGIN handled_sequence_of_statements END opt_343 SEMI

    protected_type_declaration ::= PROTECTED TYPE defining_identifier opt_344 opt_345 IS opt_347 protected_definition SEMI

    single_protected_declaration ::= PROTECTED defining_identifier opt_348 IS opt_350 protected_definition SEMI

    protected_definition ::= list_351 opt_354 END opt_355

    protected_operation_declaration ::= subprogram_declaration
           | entry_declaration
           | aspect_clause

    protected_element_declaration ::= protected_operation_declaration
           | component_declaration

    protected_body ::= PROTECTED BODY_ defining_identifier opt_356 IS list_357 END opt_358 SEMI

    protected_operation_item ::= subprogram_declaration
           | subprogram_body
           | entry_body
           | aspect_clause

    entry_declaration ::= opt_359 ENTRY defining_identifier opt_361 opt_362 opt_363 SEMI

    accept_statement ::= ACCEPT_ entry_direct_name opt_365 opt_366 opt_369 SEMI

    entry_direct_name ::= direct_name

    entry_index ::= expression

    entry_body ::= ENTRY defining_identifier entry_body_formal_part opt_370 entry_barrier IS declarative_part BEGIN handled_sequence_of_statements END opt_371 SEMI

    entry_identifier ::= identifier

    entry_body_formal_part ::= opt_373 opt_374

    entry_barrier ::= WHEN condition

    entry_index_specification ::= FOR defining_identifier IN discrete_subtype_definition opt_375

    entry_call_statement ::= name opt_376 SEMI

    requeue_statement ::= REQUEUE name opt_378 SEMI

    delay_statement ::= delay_until_statement
           | delay_relative_statement

    delay_until_statement ::= DELAY UNTIL delay_expression SEMI

    delay_relative_statement ::= DELAY delay_expression SEMI

    delay_expression ::= expression

    select_statement ::= selective_accept
           | timed_entry_call
           | conditional_entry_call
           | asynchronous_select

    selective_accept ::= SELECT opt_379 select_alternative list_382 opt_384 END SELECT SEMI

    guard ::= WHEN condition ARROW

    select_alternative ::= accept_alternative
           | delay_alternative
           | terminate_alternative

    accept_alternative ::= accept_statement opt_385

    delay_alternative ::= delay_statement opt_386

    terminate_alternative ::= TERMINATE SEMI

    timed_entry_call ::= SELECT entry_call_alternative OR delay_alternative END SELECT SEMI

    entry_call_alternative ::= procedure_or_entry_call opt_387

    procedure_or_entry_call ::= procedure_call_statement
           | entry_call_statement

    conditional_entry_call ::= SELECT entry_call_alternative ELSE sequence_of_statements END SELECT SEMI

    asynchronous_select ::= SELECT triggering_alternative THEN ABORT abortable_part END SELECT SEMI

    triggering_alternative ::= triggering_statement opt_388

    triggering_statement ::= procedure_or_entry_call
           | delay_statement

    abortable_part ::= sequence_of_statements

    abort_statement ::= ABORT name list_390 SEMI

    compilation ::= list_391

    compilation_unit ::= list_392 grp_393

    library_item ::= opt_394 library_unit_declaration
           | library_unit_body
           | opt_395 library_unit_renaming_declaration

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

    limited_with_clause ::= LIMITED opt_396 WITH name list_398 SEMI

    nonlimited_with_clause ::= opt_399 WITH name list_401 SEMI

    body_stub ::= subprogram_body_stub
           | package_body_stub
           | task_body_stub
           | protected_body_stub

    subprogram_body_stub ::= opt_402 subprogram_specification IS SEPARATE opt_403 SEMI

    package_body_stub ::= PACKAGE BODY_ defining_identifier IS SEPARATE opt_404 SEMI

    task_body_stub ::= TASK BODY_ defining_identifier IS SEPARATE opt_405 SEMI

    protected_body_stub ::= PROTECTED BODY_ defining_identifier IS SEPARATE opt_406 SEMI

    subunit ::= SEPARATE LPAREN name RPAREN proper_body

    exception_declaration ::= defining_identifier_list COLON EXCEPTION opt_407 SEMI

    handled_sequence_of_statements ::= sequence_of_statements opt_410

    exception_handler ::= WHEN opt_412 exception_choice list_414 ARROW sequence_of_statements

    choice_parameter_specification ::= defining_identifier

    exception_choice ::= name
           | OTHERS

    raise_statement ::= RAISE SEMI
           | RAISE name opt_416 SEMI

    generic_declaration ::= generic_subprogram_declaration
           | generic_package_declaration

    generic_subprogram_declaration ::= generic_formal_part subprogram_specification opt_417 SEMI

    generic_package_declaration ::= generic_formal_part package_specification SEMI

    generic_formal_part ::= GENERIC list_419

    generic_formal_parameter_declaration ::= formal_object_declaration
           | formal_type_declaration
           | formal_subprogram_declaration
           | formal_package_declaration

    generic_instantiation ::= PACKAGE defining_program_unit_name IS NEW name opt_420 opt_421 SEMI
           | opt_422 PROCEDURE defining_program_unit_name IS NEW name opt_423 opt_424 SEMI
           | opt_425 FUNCTION defining_designator IS NEW name opt_426 opt_427 SEMI

    generic_actual_part ::= LPAREN generic_association list_429 RPAREN

    generic_association ::= opt_431 explicit_generic_actual_parameter

    explicit_generic_actual_parameter ::= expression
           | name
           | subtype_mark

    formal_object_declaration ::= defining_identifier_list COLON mode_ opt_432 subtype_mark opt_434 opt_435 SEMI
           | defining_identifier_list COLON mode_ access_definition opt_437 opt_438 SEMI

    formal_type_declaration ::= formal_complete_type_declaration
           | formal_incomplete_type_declaration

    formal_complete_type_declaration ::= TYPE defining_identifier opt_439 IS formal_type_definition opt_441 opt_442 SEMI

    formal_incomplete_type_declaration ::= TYPE defining_identifier opt_443 opt_445 opt_447 SEMI

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

    formal_private_type_definition ::= opt_450 opt_451 PRIVATE

    formal_derived_type_definition ::= opt_452 opt_453 SYNCHRONIZED NEW subtype_mark opt_457

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

    formal_concrete_subprogram_declaration ::= WITH subprogram_specification opt_459 opt_460 SEMI

    formal_abstract_subprogram_declaration ::= WITH subprogram_specification IS ABSTRACT opt_461 opt_462 SEMI

    subprogram_default ::= name
           | BOX
           | NULL_

    formal_package_declaration ::= WITH PACKAGE defining_identifier IS NEW name formal_package_actual_part opt_463 SEMI

    formal_package_actual_part ::= LPAREN opt_465 BOX RPAREN
           | opt_466
           | LPAREN formal_package_association list_468 opt_470 RPAREN

    formal_package_association ::= generic_association
           | selector_name ARROW BOX

    aspect_clause ::= attribute_definition_clause
           | enumeration_representation_clause
           | record_representation_clause
           | at_clause

    local_name ::= direct_name
           | direct_name SQ attribute_designator
           | name

    aspect_specification ::= WITH aspect_mark opt_472 list_476

    aspect_mark ::= aspect_identifier opt_478

    aspect_identifier ::= identifier

    aspect_definition ::= name
           | expression
           | identifier
           | aggregate
           | global_aspect_definition

    attribute_definition_clause ::= FOR local_name SQ attribute_designator USE expression SEMI
           | FOR local_name SQ attribute_designator USE name SEMI

    enumeration_representation_clause ::= FOR local_name USE enumeration_aggregate SEMI

    enumeration_aggregate ::= array_aggregate

    record_representation_clause ::= FOR local_name USE RECORD opt_479 list_480 END RECORD opt_481 SEMI

    component_clause ::= component_local_name AT position RANGE_ first_bit DOTDOT last_bit SEMI

    component_local_name ::= local_name

    position ::= expression

    first_bit ::= expression

    last_bit ::= expression

    delta_constraint ::= DELTA expression opt_482

    at_clause ::= FOR direct_name USE AT expression SEMI

    mod_clause ::= AT MOD expression SEMI

    pragmaRule ::= PRAGMA identifier opt_486 SEMI

    pragma_argument_association ::= opt_488 expression
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

    opt_49 ::= aspect_specification | $empty

    seq_50 ::= ASSIGN expression

    opt_51 ::= seq_50 | $empty

    opt_52 ::= aspect_specification | $empty

    seq_53 ::= COMMA discriminant_association

    list_54 ::= $empty | list_54 seq_53

    seq_55 ::= VL selector_name

    list_56 ::= $empty | list_56 seq_55

    seq_57 ::= selector_name list_56 ARROW

    opt_58 ::= seq_57 | $empty

    opt_59 ::= ABSTRACT | $empty

    seq_60 ::= opt_59 TAGGED

    opt_61 ::= seq_60 | $empty

    opt_62 ::= LIMITED | $empty

    opt_63 ::= identifier | $empty

    list_64 ::= component_item | list_64 component_item

    list_65 ::= $empty | list_65 component_item

    seq_66 ::= ASSIGN default_expression

    opt_67 ::= seq_66 | $empty

    opt_68 ::= aspect_specification | $empty

    list_69 ::= variant | list_69 variant

    seq_70 ::= VL discrete_choice

    list_71 ::= $empty | list_71 seq_70

    opt_72 ::= overriding_indicator | $empty

    opt_73 ::= aspect_specification | $empty

    grp_74 ::= LIMITED | TASK | PROTECTED | SYNCHRONIZED

    opt_75 ::= grp_74 | $empty

    seq_76 ::= AND interface_list

    opt_77 ::= seq_76 | $empty

    seq_78 ::= AND subtype_mark

    list_79 ::= $empty | list_79 seq_78

    opt_80 ::= null_exclusion | $empty

    opt_81 ::= null_exclusion | $empty

    opt_82 ::= general_access_modifier | $empty

    opt_83 ::= PROTECTED | $empty

    opt_84 ::= formal_part | $empty

    opt_85 ::= PROTECTED | $empty

    opt_86 ::= null_exclusion | $empty

    opt_87 ::= CONSTANT | $empty

    opt_88 ::= null_exclusion | $empty

    opt_89 ::= PROTECTED | $empty

    opt_90 ::= formal_part | $empty

    opt_91 ::= null_exclusion | $empty

    opt_92 ::= PROTECTED | $empty

    opt_93 ::= discriminant_part | $empty

    seq_94 ::= IS TAGGED

    opt_95 ::= seq_94 | $empty

    list_96 ::= $empty | list_96 declarative_item

    seq_97 ::= COMMA expression

    list_98 ::= $empty | list_98 seq_97

    seq_99 ::= LPAREN expression RPAREN

    opt_100 ::= seq_99 | $empty

    seq_101 ::= LPAREN expression RPAREN

    opt_102 ::= seq_101 | $empty

    seq_103 ::= COMMA record_component_association

    list_104 ::= $empty | list_104 seq_103

    seq_105 ::= component_choice_list ARROW

    opt_106 ::= seq_105 | $empty

    seq_107 ::= VL selector_name

    list_108 ::= $empty | list_108 seq_107

    seq_109 ::= COMMA expression

    list_110 ::= $empty | list_110 seq_109

    seq_111 ::= COMMA expression

    list_112 ::= $empty | list_112 seq_111

    seq_113 ::= COMMA expression

    list_114 ::= $empty | list_114 seq_113

    seq_115 ::= COMMA expression

    list_116 ::= $empty | list_116 seq_115

    seq_117 ::= COMMA OTHERS ARROW expression

    opt_118 ::= seq_117 | $empty

    seq_119 ::= COMMA expression

    list_120 ::= $empty | list_120 seq_119

    seq_121 ::= COMMA array_component_association

    list_122 ::= $empty | list_122 seq_121

    seq_123 ::= COMMA expression

    list_124 ::= $empty | list_124 seq_123

    seq_125 ::= COMMA container_element_association

    list_126 ::= $empty | list_126 seq_125

    seq_127 ::= VL key_choice

    list_128 ::= $empty | list_128 seq_127

    seq_129 ::= USE expression

    opt_130 ::= seq_129 | $empty

    seq_131 ::= USE expression

    opt_132 ::= seq_131 | $empty

    seq_133 ::= AND relation

    list_134 ::= $empty | list_134 seq_133

    seq_135 ::= AND THEN relation

    list_136 ::= $empty | list_136 seq_135

    seq_137 ::= OR relation

    list_138 ::= $empty | list_138 seq_137

    seq_139 ::= OR ELSE relation

    list_140 ::= $empty | list_140 seq_139

    seq_141 ::= XOR relation

    list_142 ::= $empty | list_142 seq_141

    seq_143 ::= AND choice_relation

    list_144 ::= $empty | list_144 seq_143

    seq_145 ::= OR choice_relation

    list_146 ::= $empty | list_146 seq_145

    seq_147 ::= XOR choice_relation

    list_148 ::= $empty | list_148 seq_147

    seq_149 ::= AND THEN choice_relation

    list_150 ::= $empty | list_150 seq_149

    seq_151 ::= OR ELSE choice_relation

    list_152 ::= $empty | list_152 seq_151

    seq_153 ::= relational_operator simple_expression

    opt_154 ::= seq_153 | $empty

    seq_155 ::= relational_operator simple_expression

    opt_156 ::= seq_155 | $empty

    opt_157 ::= NOT | $empty

    seq_158 ::= VL membership_choice

    list_159 ::= $empty | list_159 seq_158

    opt_160 ::= unary_adding_operator | $empty

    seq_161 ::= binary_adding_operator term

    list_162 ::= $empty | list_162 seq_161

    seq_163 ::= multiplying_operator factor

    list_164 ::= $empty | list_164 seq_163

    seq_165 ::= EXPON primary

    opt_166 ::= seq_165 | $empty

    seq_167 ::= ELSIF condition THEN expression

    list_168 ::= $empty | list_168 seq_167

    seq_169 ::= ELSE expression

    opt_170 ::= seq_169 | $empty

    seq_171 ::= COMMA case_expression_alternative

    list_172 ::= $empty | list_172 seq_171

    list_173 ::= $empty | list_173 declare_item

    seq_174 ::= LPAREN chunk_specification RPAREN

    opt_175 ::= seq_174 | $empty

    opt_176 ::= aspect_specification | $empty

    seq_177 ::= PARALLEL opt_175 opt_176

    opt_178 ::= seq_177 | $empty

    opt_179 ::= subpool_specification | $empty

    opt_180 ::= subpool_specification | $empty

    list_181 ::= statement | list_181 statement

    list_182 ::= $empty | list_182 label

    list_183 ::= $empty | list_183 label

    list_184 ::= $empty | list_184 label

    seq_185 ::= ELSIF condition THEN sequence_of_statements

    list_186 ::= $empty | list_186 seq_185

    seq_187 ::= ELSE sequence_of_statements

    opt_188 ::= seq_187 | $empty

    list_189 ::= $empty | list_189 case_statement_alternative

    seq_190 ::= direct_name COLON

    opt_191 ::= seq_190 | $empty

    opt_192 ::= iteration_scheme | $empty

    opt_193 ::= identifier | $empty

    seq_194 ::= LPAREN chunk_specification RPAREN

    opt_195 ::= seq_194 | $empty

    opt_196 ::= aspect_specification | $empty

    seq_197 ::= LPAREN chunk_specification RPAREN

    opt_198 ::= seq_197 | $empty

    opt_199 ::= aspect_specification | $empty

    opt_200 ::= aspect_specification | $empty

    opt_201 ::= REVERSE | $empty

    opt_202 ::= iterator_filter | $empty

    seq_203 ::= COLON loop_parameter_subtype_indication

    opt_204 ::= seq_203 | $empty

    opt_205 ::= REVERSE | $empty

    opt_206 ::= iterator_filter | $empty

    seq_207 ::= COLON loop_parameter_subtype_indication

    opt_208 ::= seq_207 | $empty

    opt_209 ::= REVERSE | $empty

    opt_210 ::= iterator_filter | $empty

    opt_211 ::= iterator_filter | $empty

    seq_212 ::= COMMA defining_identifier

    list_213 ::= $empty | list_213 seq_212

    seq_214 ::= COMMA iterator_parameter_association

    list_215 ::= $empty | list_215 seq_214

    seq_216 ::= selector_name ARROW

    opt_217 ::= seq_216 | $empty

    seq_218 ::= direct_name COLON

    opt_219 ::= seq_218 | $empty

    seq_220 ::= DECLARE declarative_part

    opt_221 ::= seq_220 | $empty

    opt_222 ::= identifier | $empty

    opt_223 ::= name | $empty

    seq_224 ::= WHEN condition

    opt_225 ::= seq_224 | $empty

    opt_226 ::= overriding_indicator | $empty

    opt_227 ::= aspect_specification | $empty

    opt_228 ::= formal_part | $empty

    seq_229 ::= name DOT

    opt_230 ::= seq_229 | $empty

    seq_231 ::= name DOT

    opt_232 ::= seq_231 | $empty

    opt_233 ::= formal_part | $empty

    opt_234 ::= null_exclusion | $empty

    opt_235 ::= formal_part | $empty

    seq_236 ::= SEMI parameter_specification

    list_237 ::= $empty | list_237 seq_236

    opt_238 ::= ALIASED | $empty

    opt_239 ::= null_exclusion | $empty

    seq_240 ::= ASSIGN default_expression

    opt_241 ::= seq_240 | $empty

    opt_242 ::= aspect_specification | $empty

    seq_243 ::= ASSIGN default_expression

    opt_244 ::= seq_243 | $empty

    opt_245 ::= aspect_specification | $empty

    opt_246 ::= IN | $empty

    opt_247 ::= OUT | $empty

    seq_248 ::= SEMI global_aspect_element

    list_249 ::= $empty | list_249 seq_248

    seq_250 ::= COMMA global_name

    list_251 ::= $empty | list_251 seq_250

    seq_252 ::= COMMA formal_parameter_name

    list_253 ::= $empty | list_253 seq_252

    seq_254 ::= COMMA dispatching_operation_specifier

    list_255 ::= $empty | list_255 seq_254

    opt_256 ::= overriding_indicator | $empty

    opt_257 ::= aspect_specification | $empty

    opt_258 ::= designator | $empty

    seq_259 ::= COMMA parameter_association

    list_260 ::= $empty | list_260 seq_259

    seq_261 ::= selector_name ARROW

    opt_262 ::= seq_261 | $empty

    opt_263 ::= expression | $empty

    opt_264 ::= ALIASED | $empty

    opt_265 ::= CONSTANT | $empty

    seq_266 ::= ASSIGN expression

    opt_267 ::= seq_266 | $empty

    opt_268 ::= aspect_specification | $empty

    seq_269 ::= DO handled_sequence_of_statements END RETURN

    opt_270 ::= seq_269 | $empty

    seq_271 ::= LPAREN chunk_specification RPAREN

    opt_272 ::= seq_271 | $empty

    opt_273 ::= aspect_specification | $empty

    seq_274 ::= AND sequence_of_statements

    list_275 ::= seq_274 | list_275 seq_274

    opt_276 ::= overriding_indicator | $empty

    opt_277 ::= aspect_specification | $empty

    opt_278 ::= overriding_indicator | $empty

    opt_279 ::= aspect_specification | $empty

    opt_280 ::= aspect_specification | $empty

    list_281 ::= $empty | list_281 basic_declarative_item

    list_282 ::= $empty | list_282 basic_declarative_item

    seq_283 ::= PRIVATE list_282

    opt_284 ::= seq_283 | $empty

    seq_285 ::= name DOT

    opt_286 ::= seq_285 | $empty

    seq_287 ::= opt_286 identifier

    opt_288 ::= seq_287 | $empty

    opt_289 ::= aspect_specification | $empty

    seq_290 ::= BEGIN handled_sequence_of_statements

    opt_291 ::= seq_290 | $empty

    seq_292 ::= name DOT

    opt_293 ::= seq_292 | $empty

    seq_294 ::= opt_293 identifier

    opt_295 ::= seq_294 | $empty

    opt_296 ::= discriminant_part | $empty

    opt_297 ::= ABSTRACT | $empty

    seq_298 ::= opt_297 TAGGED

    opt_299 ::= seq_298 | $empty

    opt_300 ::= LIMITED | $empty

    opt_301 ::= aspect_specification | $empty

    opt_302 ::= discriminant_part | $empty

    opt_303 ::= ABSTRACT | $empty

    grp_304 ::= LIMITED | SYNCHRONIZED

    seq_305 ::= AND interface_list

    opt_306 ::= seq_305 | $empty

    opt_307 ::= aspect_specification | $empty

    opt_308 ::= NOT | $empty

    seq_309 ::= COMMA name

    list_310 ::= $empty | list_310 seq_309

    opt_311 ::= ALL | $empty

    seq_312 ::= COMMA subtype_mark

    list_313 ::= $empty | list_313 seq_312

    opt_314 ::= null_exclusion | $empty

    seq_315 ::= COLON opt_314 subtype_mark

    opt_316 ::= seq_315 | $empty

    opt_317 ::= aspect_specification | $empty

    opt_318 ::= aspect_specification | $empty

    opt_319 ::= aspect_specification | $empty

    opt_320 ::= aspect_specification | $empty

    opt_321 ::= overriding_indicator | $empty

    opt_322 ::= aspect_specification | $empty

    opt_323 ::= aspect_specification | $empty

    opt_324 ::= aspect_specification | $empty

    opt_325 ::= aspect_specification | $empty

    opt_326 ::= known_discriminant_part | $empty

    opt_327 ::= aspect_specification | $empty

    seq_328 ::= NEW interface_list WITH

    opt_329 ::= seq_328 | $empty

    seq_330 ::= IS opt_329 task_definition

    opt_331 ::= seq_330 | $empty

    opt_332 ::= aspect_specification | $empty

    seq_333 ::= NEW interface_list WITH

    opt_334 ::= seq_333 | $empty

    seq_335 ::= IS opt_334 task_definition

    opt_336 ::= seq_335 | $empty

    list_337 ::= $empty | list_337 task_item

    list_338 ::= $empty | list_338 task_item

    seq_339 ::= PRIVATE list_338

    opt_340 ::= seq_339 | $empty

    opt_341 ::= identifier | $empty

    opt_342 ::= aspect_specification | $empty

    opt_343 ::= identifier | $empty

    opt_344 ::= known_discriminant_part | $empty

    opt_345 ::= aspect_specification | $empty

    seq_346 ::= NEW interface_list WITH

    opt_347 ::= seq_346 | $empty

    opt_348 ::= aspect_specification | $empty

    seq_349 ::= NEW interface_list WITH

    opt_350 ::= seq_349 | $empty

    list_351 ::= $empty | list_351 protected_operation_declaration

    list_352 ::= $empty | list_352 protected_element_declaration

    seq_353 ::= PRIVATE list_352

    opt_354 ::= seq_353 | $empty

    opt_355 ::= identifier | $empty

    opt_356 ::= aspect_specification | $empty

    list_357 ::= $empty | list_357 protected_operation_item

    opt_358 ::= identifier | $empty

    opt_359 ::= overriding_indicator | $empty

    seq_360 ::= LPAREN discrete_subtype_definition RPAREN

    opt_361 ::= seq_360 | $empty

    opt_362 ::= formal_part | $empty

    opt_363 ::= aspect_specification | $empty

    seq_364 ::= LPAREN entry_index RPAREN

    opt_365 ::= seq_364 | $empty

    opt_366 ::= formal_part | $empty

    opt_367 ::= entry_identifier | $empty

    seq_368 ::= DO handled_sequence_of_statements END opt_367

    opt_369 ::= seq_368 | $empty

    opt_370 ::= aspect_specification | $empty

    opt_371 ::= entry_identifier | $empty

    seq_372 ::= LPAREN entry_index_specification RPAREN

    opt_373 ::= seq_372 | $empty

    opt_374 ::= formal_part | $empty

    opt_375 ::= aspect_specification | $empty

    opt_376 ::= actual_parameter_part | $empty

    seq_377 ::= WITH ABORT

    opt_378 ::= seq_377 | $empty

    opt_379 ::= guard | $empty

    opt_380 ::= guard | $empty

    seq_381 ::= OR opt_380 select_alternative

    list_382 ::= $empty | list_382 seq_381

    seq_383 ::= ELSE sequence_of_statements

    opt_384 ::= seq_383 | $empty

    opt_385 ::= sequence_of_statements | $empty

    opt_386 ::= sequence_of_statements | $empty

    opt_387 ::= sequence_of_statements | $empty

    opt_388 ::= sequence_of_statements | $empty

    seq_389 ::= COMMA name

    list_390 ::= $empty | list_390 seq_389

    list_391 ::= $empty | list_391 compilation_unit

    list_392 ::= $empty | list_392 context_item

    grp_393 ::= library_item | subunit

    opt_394 ::= PRIVATE | $empty

    opt_395 ::= PRIVATE | $empty

    opt_396 ::= PRIVATE | $empty

    seq_397 ::= COMMA name

    list_398 ::= $empty | list_398 seq_397

    opt_399 ::= PRIVATE | $empty

    seq_400 ::= COMMA name

    list_401 ::= $empty | list_401 seq_400

    opt_402 ::= overriding_indicator | $empty

    opt_403 ::= aspect_specification | $empty

    opt_404 ::= aspect_specification | $empty

    opt_405 ::= aspect_specification | $empty

    opt_406 ::= aspect_specification | $empty

    opt_407 ::= aspect_specification | $empty

    list_408 ::= exception_handler | list_408 exception_handler

    seq_409 ::= EXCEPTION list_408

    opt_410 ::= seq_409 | $empty

    seq_411 ::= choice_parameter_specification COLON

    opt_412 ::= seq_411 | $empty

    seq_413 ::= VL exception_choice

    list_414 ::= $empty | list_414 seq_413

    seq_415 ::= WITH expression

    opt_416 ::= seq_415 | $empty

    opt_417 ::= aspect_specification | $empty

    grp_418 ::= generic_formal_parameter_declaration | use_clause

    list_419 ::= $empty | list_419 grp_418

    opt_420 ::= generic_actual_part | $empty

    opt_421 ::= aspect_specification | $empty

    opt_422 ::= overriding_indicator | $empty

    opt_423 ::= generic_actual_part | $empty

    opt_424 ::= aspect_specification | $empty

    opt_425 ::= overriding_indicator | $empty

    opt_426 ::= generic_actual_part | $empty

    opt_427 ::= aspect_specification | $empty

    seq_428 ::= COMMA generic_association

    list_429 ::= $empty | list_429 seq_428

    seq_430 ::= selector_name ARROW

    opt_431 ::= seq_430 | $empty

    opt_432 ::= null_exclusion | $empty

    seq_433 ::= ASSIGN default_expression

    opt_434 ::= seq_433 | $empty

    opt_435 ::= aspect_specification | $empty

    seq_436 ::= ASSIGN default_expression

    opt_437 ::= seq_436 | $empty

    opt_438 ::= aspect_specification | $empty

    opt_439 ::= discriminant_part | $empty

    seq_440 ::= OR USE subtype_mark

    opt_441 ::= seq_440 | $empty

    opt_442 ::= aspect_specification | $empty

    opt_443 ::= discriminant_part | $empty

    seq_444 ::= IS TAGGED

    opt_445 ::= seq_444 | $empty

    seq_446 ::= OR USE subtype_mark

    opt_447 ::= seq_446 | $empty

    opt_448 ::= ABSTRACT | $empty

    seq_449 ::= opt_448 TAGGED

    opt_450 ::= seq_449 | $empty

    opt_451 ::= LIMITED | $empty

    opt_452 ::= ABSTRACT | $empty

    opt_453 ::= LIMITED | $empty

    seq_454 ::= AND interface_list

    opt_455 ::= seq_454 | $empty

    seq_456 ::= opt_455 WITH PRIVATE

    opt_457 ::= seq_456 | $empty

    seq_458 ::= IS subprogram_default

    opt_459 ::= seq_458 | $empty

    opt_460 ::= aspect_specification | $empty

    opt_461 ::= subprogram_default | $empty

    opt_462 ::= aspect_specification | $empty

    opt_463 ::= aspect_specification | $empty

    seq_464 ::= OTHERS ARROW

    opt_465 ::= seq_464 | $empty

    opt_466 ::= generic_actual_part | $empty

    seq_467 ::= COMMA formal_package_association

    list_468 ::= $empty | list_468 seq_467

    seq_469 ::= COMMA OTHERS ARROW BOX

    opt_470 ::= seq_469 | $empty

    seq_471 ::= ARROW aspect_definition

    opt_472 ::= seq_471 | $empty

    seq_473 ::= ARROW aspect_definition

    opt_474 ::= seq_473 | $empty

    seq_475 ::= COMMA aspect_mark opt_474

    list_476 ::= $empty | list_476 seq_475

    seq_477 ::= SQ CLASS__

    opt_478 ::= seq_477 | $empty

    opt_479 ::= mod_clause | $empty

    list_480 ::= $empty | list_480 component_clause

    opt_481 ::= local_name | $empty

    opt_482 ::= range_constraint | $empty

    seq_483 ::= COMMA pragma_argument_association

    list_484 ::= $empty | list_484 seq_483

    seq_485 ::= LP pragma_argument_association list_484 RP

    opt_486 ::= seq_485 | $empty

    seq_487 ::= identifier ARROW

    opt_488 ::= seq_487 | $empty

%End
