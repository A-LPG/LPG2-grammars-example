-- AUTO-GENERATED from antlr/grammars-v4 ada/ada2005 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack
%Options fp=AdaAda2005Parser
%options package=lpg.grammars.ada.ada2005
%options template=btParserTemplateF.gi
%options import_terminals=AdaAda2005Lexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    compilation_unit
%End

%Rules
    identifier ::= IDENTIFIER_

    string_literal ::= STRING_LITERAL_

    numeric_literal ::= NUMERIC_LITERAL_

    character_literal ::= CHARACTER_LITERAL_

    basic_declaration ::= type_declaration
           | subtype_declaration
           | object_declaration
           | number_declaration
           | subprogram_declaration
           | abstract_subprogram_declaration
           | null_procedure_declaration
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

    full_type_declaration ::= TYPE defining_identifier opt_1 IS type_definition SEMI
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

    subtype_declaration ::= SUBTYPE defining_identifier IS subtype_indication SEMI

    subtype_indication ::= opt_2 name opt_3

    constraint ::= scalar_constraint
           | composite_constraint

    scalar_constraint ::= range_constraint
           | digits_constraint
           | delta_constraint

    composite_constraint ::= index_constraint
           | discriminant_constraint

    object_declaration ::= defining_identifier_list COLON opt_4 opt_5 subtype_indication opt_7 SEMI
           | defining_identifier_list COLON opt_8 opt_9 access_definition opt_11 SEMI
           | defining_identifier_list COLON opt_12 opt_13 array_type_definition opt_15 SEMI
           | single_task_declaration
           | single_protected_declaration

    defining_identifier_list ::= defining_identifier list_17

    number_declaration ::= defining_identifier_list COLON CONSTANT COLONEQ expression SEMI

    derived_type_definition ::= opt_18 opt_19 NEW subtype_indication opt_23

    range_constraint ::= RANGE_ range

    range ::= range_attribute_reference
           | simple_expression DOTDOT simple_expression

    enumeration_type_definition ::= LPAREN enumeration_literal_specification list_25 RPAREN

    enumeration_literal_specification ::= defining_identifier
           | defining_character_literal

    defining_character_literal ::= character_literal

    integer_type_definition ::= signed_integer_type_definition
           | modular_type_definition

    signed_integer_type_definition ::= RANGE_ simple_expression DOTDOT simple_expression

    modular_type_definition ::= MOD expression

    real_type_definition ::= floating_point_definition
           | fixed_point_definition

    floating_point_definition ::= DIGITS expression opt_26

    real_range_specification ::= RANGE_ simple_expression DOTDOT simple_expression

    fixed_point_definition ::= ordinary_fixed_point_definition
           | decimal_fixed_point_definition

    ordinary_fixed_point_definition ::= DELTA expression real_range_specification

    decimal_fixed_point_definition ::= DELTA expression DIGITS expression opt_27

    digits_constraint ::= DIGITS expression opt_28

    array_type_definition ::= unconstrained_array_definition
           | constrained_array_definition

    unconstrained_array_definition ::= ARRAY LPAREN index_subtype_definition list_30 RPAREN OF component_definition

    index_subtype_definition ::= name RANGE_ LTGT

    constrained_array_definition ::= ARRAY LPAREN discrete_subtype_definition list_32 RPAREN OF component_definition

    discrete_subtype_definition ::= subtype_indication
           | range

    component_definition ::= opt_33 subtype_indication
           | opt_34 access_definition

    index_constraint ::= LPAREN discrete_range list_36 RPAREN

    discrete_range ::= subtype_indication
           | range

    discriminant_part ::= unknown_discriminant_part
           | known_discriminant_part

    unknown_discriminant_part ::= LPAREN LTGT RPAREN

    known_discriminant_part ::= LPAREN discriminant_specification list_38 RPAREN

    discriminant_specification ::= defining_identifier_list COLON opt_39 name opt_41
           | defining_identifier_list COLON access_definition opt_43

    default_expression ::= expression

    discriminant_constraint ::= LPAREN discriminant_association list_45 RPAREN

    discriminant_association ::= opt_49 expression

    record_type_definition ::= opt_52 opt_53 record_definition

    record_definition ::= RECORD component_list END RECORD
           | NULL_ RECORD

    component_list ::= component_item list_54
           | list_55 variant_part
           | NULL_ SEMI

    component_item ::= component_declaration
           | aspect_clause

    component_declaration ::= defining_identifier_list COLON component_definition opt_57 SEMI

    variant_part ::= CASE direct_name IS variant list_58 END CASE SEMI

    variant ::= WHEN discrete_choice_list FATARROW component_list

    discrete_choice_list ::= discrete_choice list_60

    discrete_choice ::= expression
           | discrete_range
           | OTHERS

    record_extension_part ::= WITH record_definition

    abstract_subprogram_declaration ::= opt_61 subprogram_specification IS ABSTRACT SEMI

    interface_type_definition ::= opt_63 INTERFACE opt_65

    interface_list ::= name list_67

    access_type_definition ::= opt_68 access_to_object_definition
           | opt_69 access_to_subprogram_definition

    access_to_object_definition ::= ACCESS opt_70 subtype_indication

    general_access_modifier ::= ALL
           | CONSTANT

    access_to_subprogram_definition ::= ACCESS opt_71 PROCEDURE parameter_profile
           | ACCESS opt_72 FUNCTION parameter_and_result_profile

    null_exclusion ::= NOT NULL_

    access_definition ::= opt_73 ACCESS opt_74 name
           | opt_75 ACCESS opt_76 PROCEDURE parameter_profile
           | opt_77 ACCESS opt_78 FUNCTION parameter_and_result_profile

    incomplete_type_declaration ::= TYPE defining_identifier opt_79 opt_81 SEMI

    declarative_part ::= list_82

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
           | name LPAREN expression list_84 RPAREN
           | name LPAREN discrete_range RPAREN
           | name DOT selector_name
           | name SQ attribute_designator
           | name LPAREN expression RPAREN
           | name LPAREN name RPAREN
           | name actual_parameter_part
           | character_literal

    direct_name ::= identifier
           | operator_symbol

    selector_name ::= identifier
           | character_literal
           | operator_symbol

    attribute_designator ::= identifier opt_86
           | Access__
           | Delta__
           | Digits__

    range_attribute_reference ::= name SQ range_attribute_designator

    range_attribute_designator ::= Range__ opt_88

    aggregate ::= record_aggregate
           | extension_aggregate
           | array_aggregate

    record_aggregate ::= LPAREN record_component_association_list RPAREN

    record_component_association_list ::= record_component_association list_90
           | NULL_ RECORD

    record_component_association ::= opt_92 expression
           | component_choice_list FATARROW LTGT

    component_choice_list ::= selector_name list_94
           | OTHERS

    extension_aggregate ::= LPAREN ancestor_part WITH record_component_association_list RPAREN

    ancestor_part ::= expression
           | name

    array_aggregate ::= positional_array_aggregate
           | named_array_aggregate

    positional_array_aggregate ::= LPAREN expression COMMA expression list_96 RPAREN
           | LPAREN expression list_98 COMMA OTHERS FATARROW expression RPAREN
           | LPAREN expression list_100 COMMA OTHERS FATARROW LTGT RPAREN

    named_array_aggregate ::= LPAREN array_component_association list_102 RPAREN

    array_component_association ::= discrete_choice_list FATARROW expression
           | discrete_choice_list FATARROW LTGT

    expression ::= relation list_104
           | relation list_106
           | relation list_108
           | relation list_110
           | relation list_112

    relation ::= simple_expression opt_114
           | simple_expression opt_115 IN range
           | simple_expression opt_116 IN name

    simple_expression ::= opt_117 term list_119

    term ::= factor list_121

    factor ::= primary opt_123
           | ABS primary
           | NOT primary

    primary ::= numeric_literal
           | NULL_
           | string_literal
           | aggregate
           | name
           | qualified_expression
           | allocator
           | LPAREN expression RPAREN

    logical_operator ::= AND
           | OR
           | XOR

    relational_operator ::= EQ
           | SLASHEQ
           | LT
           | LTEQ
           | GT
           | GTEQ

    binary_adding_operator ::= PLUS
           | MINUS
           | AMP

    unary_adding_operator ::= PLUS
           | MINUS

    multiplying_operator ::= STAR
           | SLASH
           | MOD
           | REM

    highest_precedence_operator ::= STARSTAR
           | ABS
           | NOT

    qualified_expression ::= name SQ LPAREN expression RPAREN
           | name SQ aggregate

    allocator ::= NEW subtype_indication
           | NEW qualified_expression

    sequence_of_statements ::= statement list_124

    statement ::= list_125 simple_statement
           | list_126 compound_statement

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
           | code_statement

    compound_statement ::= if_statement
           | case_statement
           | loop_statement
           | block_statement
           | extended_return_statement
           | accept_statement
           | select_statement

    null_statement ::= NULL_ SEMI

    label ::= LSHIFT statement_identifier RSHIFT

    statement_identifier ::= direct_name

    assignment_statement ::= name COLONEQ expression SEMI

    if_statement ::= IF condition THEN sequence_of_statements list_128 opt_130 END IF SEMI

    condition ::= expression

    case_statement ::= CASE expression IS case_statement_alternative list_131 END CASE SEMI

    case_statement_alternative ::= WHEN discrete_choice_list FATARROW sequence_of_statements

    loop_statement ::= opt_133 opt_134 LOOP sequence_of_statements END LOOP opt_135 SEMI

    iteration_scheme ::= WHILE condition
           | FOR loop_parameter_specification

    loop_parameter_specification ::= defining_identifier IN opt_136 discrete_subtype_definition

    block_statement ::= opt_138 opt_140 BEGIN handled_sequence_of_statements END opt_141 SEMI

    exit_statement ::= EXIT opt_142 opt_144 SEMI

    goto_statement ::= GOTO name SEMI

    subprogram_declaration ::= opt_145 subprogram_specification SEMI

    subprogram_specification ::= procedure_specification
           | function_specification

    procedure_specification ::= PROCEDURE defining_program_unit_name parameter_profile

    function_specification ::= FUNCTION defining_designator parameter_and_result_profile

    designator ::= opt_147 identifier
           | operator_symbol

    defining_designator ::= defining_program_unit_name
           | defining_operator_symbol

    defining_program_unit_name ::= opt_149 defining_identifier

    operator_symbol ::= string_literal

    defining_operator_symbol ::= operator_symbol

    parameter_profile ::= opt_150

    parameter_and_result_profile ::= opt_151 RETURN opt_152 name
           | opt_153 RETURN access_definition

    formal_part ::= LPAREN parameter_specification list_155 RPAREN

    parameter_specification ::= defining_identifier_list COLON mode_ opt_156 name opt_158
           | defining_identifier_list COLON access_definition opt_160

    mode_ ::= opt_161 opt_162

    subprogram_body ::= opt_163 subprogram_specification IS declarative_part BEGIN handled_sequence_of_statements END opt_164 SEMI

    procedure_call_statement ::= name SEMI
           | name actual_parameter_part SEMI

    actual_parameter_part ::= LPAREN parameter_association list_166 RPAREN

    parameter_association ::= opt_168 explicit_actual_parameter

    explicit_actual_parameter ::= expression
           | name

    simple_return_statement ::= RETURN opt_169 SEMI

    extended_return_statement ::= RETURN defining_identifier COLON opt_170 return_subtype_indication opt_172 opt_174 SEMI

    return_subtype_indication ::= subtype_indication
           | access_definition

    null_procedure_declaration ::= opt_175 procedure_specification IS NULL_ SEMI

    package_declaration ::= package_specification SEMI

    package_specification ::= PACKAGE defining_program_unit_name IS list_176 opt_179 END opt_183

    package_body ::= PACKAGE BODY_ defining_program_unit_name IS declarative_part opt_185 END opt_189 SEMI

    private_type_declaration ::= TYPE defining_identifier opt_190 IS opt_193 opt_194 PRIVATE SEMI

    private_extension_declaration ::= TYPE defining_identifier opt_195 IS opt_196 opt_198 NEW subtype_indication opt_200 WITH PRIVATE SEMI

    overriding_indicator ::= opt_201 OVERRIDING

    use_clause ::= use_package_clause
           | use_type_clause

    use_package_clause ::= USE name list_203 SEMI

    use_type_clause ::= USE TYPE name list_205 SEMI

    renaming_declaration ::= object_renaming_declaration
           | exception_renaming_declaration
           | package_renaming_declaration
           | subprogram_renaming_declaration
           | generic_renaming_declaration

    object_renaming_declaration ::= defining_identifier COLON opt_206 name RENAMES name SEMI
           | defining_identifier COLON access_definition RENAMES name SEMI

    exception_renaming_declaration ::= defining_identifier COLON EXCEPTION RENAMES name SEMI

    package_renaming_declaration ::= PACKAGE defining_program_unit_name RENAMES name SEMI

    subprogram_renaming_declaration ::= opt_207 subprogram_specification RENAMES name SEMI

    generic_renaming_declaration ::= GENERIC PACKAGE defining_program_unit_name RENAMES name SEMI
           | GENERIC PROCEDURE defining_program_unit_name RENAMES name SEMI
           | GENERIC FUNCTION defining_program_unit_name RENAMES name SEMI

    task_type_declaration ::= TASK TYPE defining_identifier opt_208 opt_212 SEMI

    single_task_declaration ::= TASK defining_identifier opt_216 SEMI

    task_definition ::= list_217 opt_220 END opt_221

    task_item ::= entry_declaration
           | aspect_clause

    task_body ::= TASK BODY_ defining_identifier IS declarative_part BEGIN handled_sequence_of_statements END opt_222 SEMI

    protected_type_declaration ::= PROTECTED TYPE defining_identifier opt_223 IS opt_225 protected_definition SEMI

    single_protected_declaration ::= PROTECTED defining_identifier IS opt_227 protected_definition SEMI

    protected_definition ::= list_228 opt_231 END opt_232

    protected_operation_declaration ::= subprogram_declaration
           | entry_declaration
           | aspect_clause

    protected_element_declaration ::= protected_operation_declaration
           | component_declaration

    protected_body ::= PROTECTED BODY_ defining_identifier IS list_233 END opt_234 SEMI

    protected_operation_item ::= subprogram_declaration
           | subprogram_body
           | entry_body
           | aspect_clause

    entry_declaration ::= opt_235 ENTRY defining_identifier opt_237 parameter_profile SEMI

    accept_statement ::= ACCEPT_ direct_name opt_239 parameter_profile opt_242 SEMI

    entry_index ::= expression

    entry_body ::= ENTRY defining_identifier entry_body_formal_part entry_barrier IS declarative_part BEGIN handled_sequence_of_statements END opt_243 SEMI

    entry_body_formal_part ::= opt_245 parameter_profile

    entry_barrier ::= WHEN condition

    entry_index_specification ::= FOR defining_identifier IN discrete_subtype_definition

    entry_call_statement ::= name opt_246 SEMI

    requeue_statement ::= REQUEUE name opt_248 SEMI

    delay_statement ::= delay_until_statement
           | delay_relative_statement

    delay_until_statement ::= DELAY UNTIL expression SEMI

    delay_relative_statement ::= DELAY expression SEMI

    select_statement ::= selective_accept
           | timed_entry_call
           | conditional_entry_call
           | asynchronous_select

    selective_accept ::= SELECT opt_249 select_alternative list_252 opt_254 END SELECT SEMI

    guard ::= WHEN condition FATARROW

    select_alternative ::= accept_alternative
           | delay_alternative
           | terminate_alternative

    accept_alternative ::= accept_statement opt_255

    delay_alternative ::= delay_statement opt_256

    terminate_alternative ::= TERMINATE SEMI

    timed_entry_call ::= SELECT entry_call_alternative OR delay_alternative END SELECT SEMI

    entry_call_alternative ::= procedure_or_entry_call opt_257

    procedure_or_entry_call ::= procedure_call_statement
           | entry_call_statement

    conditional_entry_call ::= SELECT entry_call_alternative ELSE sequence_of_statements END SELECT SEMI

    asynchronous_select ::= SELECT triggering_alternative THEN ABORT abortable_part END SELECT SEMI

    triggering_alternative ::= triggering_statement opt_258

    triggering_statement ::= procedure_or_entry_call
           | delay_statement

    abortable_part ::= sequence_of_statements

    abort_statement ::= ABORT name list_260 SEMI

    compilation ::= list_261

    compilation_unit ::= context_clause library_item
           | context_clause subunit

    library_item ::= opt_262 library_unit_declaration
           | library_unit_body
           | opt_263 library_unit_renaming_declaration

    library_unit_declaration ::= subprogram_declaration
           | package_declaration
           | generic_declaration
           | generic_instantiation

    library_unit_renaming_declaration ::= package_renaming_declaration
           | generic_renaming_declaration
           | subprogram_renaming_declaration

    library_unit_body ::= subprogram_body
           | package_body

    parent_unit_name ::= name

    context_clause ::= list_264

    context_item ::= with_clause
           | use_clause

    with_clause ::= limited_with_clause
           | nonlimited_with_clause

    limited_with_clause ::= LIMITED opt_265 WITH name list_267 SEMI

    nonlimited_with_clause ::= opt_268 WITH name list_270 SEMI

    body_stub ::= subprogram_body_stub
           | package_body_stub
           | task_body_stub
           | protected_body_stub

    subprogram_body_stub ::= opt_271 subprogram_specification IS SEPARATE SEMI

    package_body_stub ::= PACKAGE BODY_ defining_identifier IS SEPARATE SEMI

    task_body_stub ::= TASK BODY_ defining_identifier IS SEPARATE SEMI

    protected_body_stub ::= PROTECTED BODY_ defining_identifier IS SEPARATE SEMI

    subunit ::= SEPARATE LPAREN parent_unit_name RPAREN proper_body

    exception_declaration ::= defining_identifier_list COLON EXCEPTION SEMI

    handled_sequence_of_statements ::= sequence_of_statements opt_274

    exception_handler ::= WHEN opt_276 exception_choice list_278 FATARROW sequence_of_statements

    choice_parameter_specification ::= defining_identifier

    exception_choice ::= name
           | OTHERS

    raise_statement ::= RAISE SEMI
           | RAISE name opt_280 SEMI

    generic_declaration ::= generic_subprogram_declaration
           | generic_package_declaration

    generic_subprogram_declaration ::= generic_formal_part subprogram_specification SEMI

    generic_package_declaration ::= generic_formal_part package_specification SEMI

    generic_formal_part ::= GENERIC list_282

    generic_formal_parameter_declaration ::= formal_object_declaration
           | formal_type_declaration
           | formal_subprogram_declaration
           | formal_package_declaration

    generic_instantiation ::= PACKAGE defining_program_unit_name IS NEW name opt_283 SEMI
           | opt_284 PROCEDURE defining_program_unit_name IS NEW name opt_285 SEMI
           | opt_286 FUNCTION defining_designator IS NEW name opt_287 SEMI

    generic_actual_part ::= LPAREN generic_association list_289 RPAREN

    generic_association ::= opt_291 explicit_generic_actual_parameter

    explicit_generic_actual_parameter ::= expression
           | name

    formal_object_declaration ::= defining_identifier_list COLON mode_ opt_292 name opt_294 SEMI defining_identifier_list COLON mode_ access_definition opt_296 SEMI

    formal_type_declaration ::= TYPE defining_identifier opt_297 IS formal_type_definition SEMI

    formal_type_definition ::= formal_private_type_definition
           | formal_derived_type_definition
           | formal_discrete_type_definition
           | formal_signed_integer_type_definition
           | formal_modular_type_definition
           | formal_floating_point_definition
           | formal_ordinary_fixed_point_definition
           | formal_decimal_fixed_point_definition
           | formal_array_type_definition
           | formal_access_type_definition
           | formal_interface_type_definition

    formal_private_type_definition ::= opt_300 opt_301 PRIVATE

    formal_derived_type_definition ::= opt_302 opt_304 NEW name opt_308

    formal_discrete_type_definition ::= LPAREN LTGT RPAREN

    formal_signed_integer_type_definition ::= RANGE_ LTGT

    formal_modular_type_definition ::= MOD LTGT

    formal_floating_point_definition ::= DIGITS LTGT

    formal_ordinary_fixed_point_definition ::= DELTA LTGT

    formal_decimal_fixed_point_definition ::= DELTA LTGT DIGITS LTGT

    formal_array_type_definition ::= array_type_definition

    formal_access_type_definition ::= access_type_definition

    formal_interface_type_definition ::= interface_type_definition

    formal_subprogram_declaration ::= formal_concrete_subprogram_declaration
           | formal_abstract_subprogram_declaration

    formal_concrete_subprogram_declaration ::= WITH subprogram_specification opt_310 SEMI

    formal_abstract_subprogram_declaration ::= WITH subprogram_specification IS ABSTRACT opt_311 SEMI

    subprogram_default ::= default_name
           | LTGT
           | NULL_

    default_name ::= name

    formal_package_declaration ::= WITH PACKAGE defining_identifier IS NEW name formal_package_actual_part SEMI

    formal_package_actual_part ::= LPAREN opt_313 LTGT RPAREN
           | opt_314
           | LPAREN formal_package_association list_316 opt_318 RPAREN

    formal_package_association ::= generic_association
           | selector_name FATARROW LTGT

    aspect_clause ::= attribute_definition_clause
           | enumeration_representation_clause
           | record_representation_clause
           | at_clause

    local_name ::= direct_name
           | direct_name SQ attribute_designator
           | name

    attribute_definition_clause ::= FOR local_name SQ attribute_designator USE expression SEMI
           | FOR local_name SQ attribute_designator USE name SEMI

    enumeration_representation_clause ::= FOR local_name USE enumeration_aggregate SEMI

    enumeration_aggregate ::= array_aggregate

    record_representation_clause ::= FOR local_name USE RECORD opt_319 list_320 END RECORD SEMI

    component_clause ::= local_name AT position RANGE_ first_bit DOTDOT last_bit SEMI

    position ::= expression

    first_bit ::= simple_expression

    last_bit ::= simple_expression

    code_statement ::= qualified_expression SEMI

    at_clause ::= FOR direct_name USE AT expression SEMI

    mod_clause ::= AT MOD expression SEMI

    delta_constraint ::= DELTA expression opt_321

    opt_1 ::= known_discriminant_part | $empty

    opt_2 ::= null_exclusion | $empty

    opt_3 ::= constraint | $empty

    opt_4 ::= ALIASED | $empty

    opt_5 ::= CONSTANT | $empty

    seq_6 ::= COLONEQ expression

    opt_7 ::= seq_6 | $empty

    opt_8 ::= ALIASED | $empty

    opt_9 ::= CONSTANT | $empty

    seq_10 ::= COLONEQ expression

    opt_11 ::= seq_10 | $empty

    opt_12 ::= ALIASED | $empty

    opt_13 ::= CONSTANT | $empty

    seq_14 ::= COLONEQ expression

    opt_15 ::= seq_14 | $empty

    seq_16 ::= COMMA defining_identifier

    list_17 ::= $empty | list_17 seq_16

    opt_18 ::= ABSTRACT | $empty

    opt_19 ::= LIMITED | $empty

    seq_20 ::= AND interface_list

    opt_21 ::= seq_20 | $empty

    seq_22 ::= opt_21 record_extension_part

    opt_23 ::= seq_22 | $empty

    seq_24 ::= COMMA enumeration_literal_specification

    list_25 ::= $empty | list_25 seq_24

    opt_26 ::= real_range_specification | $empty

    opt_27 ::= real_range_specification | $empty

    opt_28 ::= range_constraint | $empty

    seq_29 ::= COMMA index_subtype_definition

    list_30 ::= $empty | list_30 seq_29

    seq_31 ::= COMMA discrete_subtype_definition

    list_32 ::= $empty | list_32 seq_31

    opt_33 ::= ALIASED | $empty

    opt_34 ::= ALIASED | $empty

    seq_35 ::= COMMA discrete_range

    list_36 ::= $empty | list_36 seq_35

    seq_37 ::= SEMI discriminant_specification

    list_38 ::= $empty | list_38 seq_37

    opt_39 ::= null_exclusion | $empty

    seq_40 ::= COLONEQ default_expression

    opt_41 ::= seq_40 | $empty

    seq_42 ::= COLONEQ default_expression

    opt_43 ::= seq_42 | $empty

    seq_44 ::= COMMA discriminant_association

    list_45 ::= $empty | list_45 seq_44

    grp_47 ::= PIPE selector_name

    list_48 ::= $empty | list_48 grp_47

    grp_46 ::= selector_name list_48 FATARROW

    opt_49 ::= grp_46 | $empty

    opt_50 ::= ABSTRACT | $empty

    seq_51 ::= opt_50 TAGGED

    opt_52 ::= seq_51 | $empty

    opt_53 ::= LIMITED | $empty

    list_54 ::= $empty | list_54 component_item

    list_55 ::= $empty | list_55 component_item

    seq_56 ::= COLONEQ default_expression

    opt_57 ::= seq_56 | $empty

    list_58 ::= $empty | list_58 variant

    grp_59 ::= PIPE discrete_choice

    list_60 ::= $empty | list_60 grp_59

    opt_61 ::= overriding_indicator | $empty

    grp_62 ::= LIMITED | TASK | PROTECTED | SYNCHRONIZED

    opt_63 ::= grp_62 | $empty

    seq_64 ::= AND interface_list

    opt_65 ::= seq_64 | $empty

    seq_66 ::= AND name

    list_67 ::= $empty | list_67 seq_66

    opt_68 ::= null_exclusion | $empty

    opt_69 ::= null_exclusion | $empty

    opt_70 ::= general_access_modifier | $empty

    opt_71 ::= PROTECTED | $empty

    opt_72 ::= PROTECTED | $empty

    opt_73 ::= null_exclusion | $empty

    opt_74 ::= CONSTANT | $empty

    opt_75 ::= null_exclusion | $empty

    opt_76 ::= PROTECTED | $empty

    opt_77 ::= null_exclusion | $empty

    opt_78 ::= PROTECTED | $empty

    opt_79 ::= discriminant_part | $empty

    seq_80 ::= IS TAGGED

    opt_81 ::= seq_80 | $empty

    list_82 ::= $empty | list_82 declarative_item

    seq_83 ::= COMMA expression

    list_84 ::= $empty | list_84 seq_83

    seq_85 ::= LPAREN expression RPAREN

    opt_86 ::= seq_85 | $empty

    seq_87 ::= LPAREN expression RPAREN

    opt_88 ::= seq_87 | $empty

    seq_89 ::= COMMA record_component_association

    list_90 ::= $empty | list_90 seq_89

    seq_91 ::= component_choice_list FATARROW

    opt_92 ::= seq_91 | $empty

    grp_93 ::= PIPE selector_name

    list_94 ::= $empty | list_94 grp_93

    seq_95 ::= COMMA expression

    list_96 ::= $empty | list_96 seq_95

    seq_97 ::= COMMA expression

    list_98 ::= $empty | list_98 seq_97

    seq_99 ::= COMMA expression

    list_100 ::= $empty | list_100 seq_99

    seq_101 ::= COMMA array_component_association

    list_102 ::= $empty | list_102 seq_101

    seq_103 ::= AND relation

    list_104 ::= $empty | list_104 seq_103

    seq_105 ::= AND THEN relation

    list_106 ::= $empty | list_106 seq_105

    seq_107 ::= OR relation

    list_108 ::= $empty | list_108 seq_107

    seq_109 ::= OR ELSE relation

    list_110 ::= $empty | list_110 seq_109

    seq_111 ::= XOR relation

    list_112 ::= $empty | list_112 seq_111

    seq_113 ::= relational_operator simple_expression

    opt_114 ::= seq_113 | $empty

    opt_115 ::= NOT | $empty

    opt_116 ::= NOT | $empty

    opt_117 ::= unary_adding_operator | $empty

    seq_118 ::= binary_adding_operator term

    list_119 ::= $empty | list_119 seq_118

    seq_120 ::= multiplying_operator factor

    list_121 ::= $empty | list_121 seq_120

    seq_122 ::= STARSTAR primary

    opt_123 ::= seq_122 | $empty

    list_124 ::= $empty | list_124 statement

    list_125 ::= $empty | list_125 label

    list_126 ::= $empty | list_126 label

    seq_127 ::= ELSIF condition THEN sequence_of_statements

    list_128 ::= $empty | list_128 seq_127

    seq_129 ::= ELSE sequence_of_statements

    opt_130 ::= seq_129 | $empty

    list_131 ::= $empty | list_131 case_statement_alternative

    seq_132 ::= statement_identifier COLON

    opt_133 ::= seq_132 | $empty

    opt_134 ::= iteration_scheme | $empty

    opt_135 ::= identifier | $empty

    opt_136 ::= REVERSE | $empty

    seq_137 ::= statement_identifier COLON

    opt_138 ::= seq_137 | $empty

    seq_139 ::= DECLARE declarative_part

    opt_140 ::= seq_139 | $empty

    opt_141 ::= identifier | $empty

    opt_142 ::= name | $empty

    seq_143 ::= WHEN condition

    opt_144 ::= seq_143 | $empty

    opt_145 ::= overriding_indicator | $empty

    seq_146 ::= parent_unit_name DOT

    opt_147 ::= seq_146 | $empty

    seq_148 ::= parent_unit_name DOT

    opt_149 ::= seq_148 | $empty

    opt_150 ::= formal_part | $empty

    opt_151 ::= formal_part | $empty

    opt_152 ::= null_exclusion | $empty

    opt_153 ::= formal_part | $empty

    seq_154 ::= SEMI parameter_specification

    list_155 ::= $empty | list_155 seq_154

    opt_156 ::= null_exclusion | $empty

    seq_157 ::= COLONEQ default_expression

    opt_158 ::= seq_157 | $empty

    seq_159 ::= COLONEQ default_expression

    opt_160 ::= seq_159 | $empty

    opt_161 ::= IN | $empty

    opt_162 ::= OUT | $empty

    opt_163 ::= overriding_indicator | $empty

    opt_164 ::= designator | $empty

    seq_165 ::= COMMA parameter_association

    list_166 ::= $empty | list_166 seq_165

    seq_167 ::= selector_name FATARROW

    opt_168 ::= seq_167 | $empty

    opt_169 ::= expression | $empty

    opt_170 ::= ALIASED | $empty

    seq_171 ::= COLONEQ expression

    opt_172 ::= seq_171 | $empty

    seq_173 ::= DO handled_sequence_of_statements END RETURN

    opt_174 ::= seq_173 | $empty

    opt_175 ::= overriding_indicator | $empty

    list_176 ::= $empty | list_176 basic_declarative_item

    list_177 ::= $empty | list_177 basic_declarative_item

    seq_178 ::= PRIVATE list_177

    opt_179 ::= seq_178 | $empty

    seq_180 ::= parent_unit_name DOT

    opt_181 ::= seq_180 | $empty

    seq_182 ::= opt_181 identifier

    opt_183 ::= seq_182 | $empty

    seq_184 ::= BEGIN handled_sequence_of_statements

    opt_185 ::= seq_184 | $empty

    seq_186 ::= parent_unit_name DOT

    opt_187 ::= seq_186 | $empty

    seq_188 ::= opt_187 identifier

    opt_189 ::= seq_188 | $empty

    opt_190 ::= discriminant_part | $empty

    opt_191 ::= ABSTRACT | $empty

    seq_192 ::= opt_191 TAGGED

    opt_193 ::= seq_192 | $empty

    opt_194 ::= LIMITED | $empty

    opt_195 ::= discriminant_part | $empty

    opt_196 ::= ABSTRACT | $empty

    grp_197 ::= LIMITED | SYNCHRONIZED

    opt_198 ::= grp_197 | $empty

    seq_199 ::= AND interface_list

    opt_200 ::= seq_199 | $empty

    opt_201 ::= NOT | $empty

    seq_202 ::= COMMA name

    list_203 ::= $empty | list_203 seq_202

    seq_204 ::= COMMA name

    list_205 ::= $empty | list_205 seq_204

    opt_206 ::= null_exclusion | $empty

    opt_207 ::= overriding_indicator | $empty

    opt_208 ::= known_discriminant_part | $empty

    seq_209 ::= NEW interface_list WITH

    opt_210 ::= seq_209 | $empty

    seq_211 ::= IS opt_210 task_definition

    opt_212 ::= seq_211 | $empty

    seq_213 ::= NEW interface_list WITH

    opt_214 ::= seq_213 | $empty

    seq_215 ::= IS opt_214 task_definition

    opt_216 ::= seq_215 | $empty

    list_217 ::= $empty | list_217 task_item

    list_218 ::= $empty | list_218 task_item

    seq_219 ::= PRIVATE list_218

    opt_220 ::= seq_219 | $empty

    opt_221 ::= identifier | $empty

    opt_222 ::= identifier | $empty

    opt_223 ::= known_discriminant_part | $empty

    seq_224 ::= NEW interface_list WITH

    opt_225 ::= seq_224 | $empty

    seq_226 ::= NEW interface_list WITH

    opt_227 ::= seq_226 | $empty

    list_228 ::= $empty | list_228 protected_operation_declaration

    list_229 ::= $empty | list_229 protected_element_declaration

    seq_230 ::= PRIVATE list_229

    opt_231 ::= seq_230 | $empty

    opt_232 ::= identifier | $empty

    list_233 ::= $empty | list_233 protected_operation_item

    opt_234 ::= identifier | $empty

    opt_235 ::= overriding_indicator | $empty

    seq_236 ::= LPAREN discrete_subtype_definition RPAREN

    opt_237 ::= seq_236 | $empty

    seq_238 ::= LPAREN entry_index RPAREN

    opt_239 ::= seq_238 | $empty

    opt_240 ::= identifier | $empty

    seq_241 ::= DO handled_sequence_of_statements END opt_240

    opt_242 ::= seq_241 | $empty

    opt_243 ::= identifier | $empty

    seq_244 ::= LPAREN entry_index_specification RPAREN

    opt_245 ::= seq_244 | $empty

    opt_246 ::= actual_parameter_part | $empty

    seq_247 ::= WITH ABORT

    opt_248 ::= seq_247 | $empty

    opt_249 ::= guard | $empty

    opt_250 ::= guard | $empty

    seq_251 ::= OR opt_250 select_alternative

    list_252 ::= $empty | list_252 seq_251

    seq_253 ::= ELSE sequence_of_statements

    opt_254 ::= seq_253 | $empty

    opt_255 ::= sequence_of_statements | $empty

    opt_256 ::= sequence_of_statements | $empty

    opt_257 ::= sequence_of_statements | $empty

    opt_258 ::= sequence_of_statements | $empty

    seq_259 ::= COMMA name

    list_260 ::= $empty | list_260 seq_259

    list_261 ::= $empty | list_261 compilation_unit

    opt_262 ::= PRIVATE | $empty

    opt_263 ::= PRIVATE | $empty

    list_264 ::= $empty | list_264 context_item

    opt_265 ::= PRIVATE | $empty

    seq_266 ::= COMMA name

    list_267 ::= $empty | list_267 seq_266

    opt_268 ::= PRIVATE | $empty

    seq_269 ::= COMMA name

    list_270 ::= $empty | list_270 seq_269

    opt_271 ::= overriding_indicator | $empty

    list_272 ::= $empty | list_272 exception_handler

    seq_273 ::= EXCEPTION exception_handler list_272

    opt_274 ::= seq_273 | $empty

    seq_275 ::= choice_parameter_specification COLON

    opt_276 ::= seq_275 | $empty

    grp_277 ::= PIPE exception_choice

    list_278 ::= $empty | list_278 grp_277

    seq_279 ::= WITH expression

    opt_280 ::= seq_279 | $empty

    grp_281 ::= generic_formal_parameter_declaration | use_clause

    list_282 ::= $empty | list_282 grp_281

    opt_283 ::= generic_actual_part | $empty

    opt_284 ::= overriding_indicator | $empty

    opt_285 ::= generic_actual_part | $empty

    opt_286 ::= overriding_indicator | $empty

    opt_287 ::= generic_actual_part | $empty

    seq_288 ::= COMMA generic_association

    list_289 ::= $empty | list_289 seq_288

    seq_290 ::= selector_name FATARROW

    opt_291 ::= seq_290 | $empty

    opt_292 ::= null_exclusion | $empty

    seq_293 ::= COLONEQ default_expression

    opt_294 ::= seq_293 | $empty

    seq_295 ::= COLONEQ default_expression

    opt_296 ::= seq_295 | $empty

    opt_297 ::= discriminant_part | $empty

    opt_298 ::= ABSTRACT | $empty

    seq_299 ::= opt_298 TAGGED

    opt_300 ::= seq_299 | $empty

    opt_301 ::= LIMITED | $empty

    opt_302 ::= ABSTRACT | $empty

    grp_303 ::= LIMITED | SYNCHRONIZED

    opt_304 ::= grp_303 | $empty

    seq_305 ::= AND interface_list

    opt_306 ::= seq_305 | $empty

    seq_307 ::= opt_306 WITH PRIVATE

    opt_308 ::= seq_307 | $empty

    seq_309 ::= IS subprogram_default

    opt_310 ::= seq_309 | $empty

    opt_311 ::= subprogram_default | $empty

    seq_312 ::= OTHERS FATARROW

    opt_313 ::= seq_312 | $empty

    opt_314 ::= generic_actual_part | $empty

    seq_315 ::= COMMA formal_package_association

    list_316 ::= $empty | list_316 seq_315

    seq_317 ::= COMMA OTHERS FATARROW LTGT

    opt_318 ::= seq_317 | $empty

    opt_319 ::= mod_clause | $empty

    list_320 ::= $empty | list_320 component_clause

    opt_321 ::= range_constraint | $empty

%End
