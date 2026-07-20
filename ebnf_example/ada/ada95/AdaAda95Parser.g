-- AUTO-GENERATED from antlr/grammars-v4 ada/ada95 by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,backtrack,ebnf
%Options fp=AdaAda95Parser
%options package=lpg.grammars.ada.ada95
%options template=btParserTemplateF.gi
%options import_terminals=AdaAda95Lexer.gi
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

    numeric_literal ::= NUMERIC_LITERAL_

    character_literal ::= CHARACTER_LITERAL

    string_literal ::= STRING_LITERAL_

    basic_declaration ::= type_declaration
           | subtype_declaration
           | object_declaration
           | number_declaration
           | subprogram_declaration
           | abstract_subprogram_declaration
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

    subtype_declaration ::= SUBTYPE defining_identifier IS subtype_indication SEMI

    subtype_indication ::= name opt_2

    constraint ::= scalar_constraint
           | composite_constraint

    scalar_constraint ::= range_constraint
           | digits_constraint
           | delta_constraint

    composite_constraint ::= index_constraint
           | discriminant_constraint

    object_declaration ::= defining_identifier_list COLON opt_3 opt_4 subtype_indication opt_6 SEMI
           | defining_identifier_list COLON opt_7 opt_8 array_type_definition opt_10 SEMI
           | single_task_declaration
           | single_protected_declaration

    defining_identifier_list ::= defining_identifier list_12

    number_declaration ::= defining_identifier_list COLON CONSTANT COLONEQ expression SEMI

    derived_type_definition ::= opt_13 NEW subtype_indication opt_14

    range_constraint ::= RANGE_ range

    range ::= range_attribute_reference
           | simple_expression DOTDOT simple_expression

    enumeration_type_definition ::= LPAREN enumeration_literal_specification list_16 RPAREN

    enumeration_literal_specification ::= defining_identifier
           | defining_character_literal

    defining_character_literal ::= character_literal

    integer_type_definition ::= signed_integer_type_definition
           | modular_type_definition

    signed_integer_type_definition ::= RANGE_ simple_expression DOTDOT simple_expression

    modular_type_definition ::= MOD expression

    real_type_definition ::= floating_point_definition
           | fixed_point_definition

    floating_point_definition ::= DIGITS expression opt_17

    real_range_specification ::= range simple_expression DOTDOT simple_expression

    fixed_point_definition ::= ordinary_fixed_point_definition
           | decimal_fixed_point_definition

    ordinary_fixed_point_definition ::= DELTA expression real_range_specification

    decimal_fixed_point_definition ::= DELTA expression DIGITS expression opt_18

    digits_constraint ::= DIGITS expression opt_19

    array_type_definition ::= unconstrained_array_definition
           | constrained_array_definition

    unconstrained_array_definition ::= ARRAY LPAREN index_subtype_definition list_21 RPAREN OF component_definition

    index_subtype_definition ::= name range LTGT

    constrained_array_definition ::= ARRAY LPAREN discrete_subtype_definition list_23 RPAREN OF component_definition

    discrete_subtype_definition ::= subtype_indication
           | range

    component_definition ::= opt_24 subtype_indication

    index_constraint ::= LPAREN discrete_range list_26 RPAREN

    discrete_range ::= subtype_indication
           | range

    discriminant_part ::= unknown_discriminant_part
           | known_discriminant_part

    unknown_discriminant_part ::= LPAREN LTGT RPAREN

    known_discriminant_part ::= LPAREN discriminant_specification list_28 RPAREN

    discriminant_specification ::= defining_identifier_list COLON name opt_30
           | defining_identifier_list COLON access_definition opt_32

    default_expression ::= expression

    discriminant_constraint ::= LPAREN discriminant_association list_34 RPAREN

    discriminant_association ::= opt_38 expression

    record_type_definition ::= opt_41 opt_42 record_definition

    record_definition ::= RECORD component_list END RECORD
           | NULL_ RECORD

    component_list ::= component_item list_43
           | list_44 variant_part
           | NULL_ SEMI

    component_item ::= component_declaration
           | aspect_clause

    component_declaration ::= defining_identifier_list COLON component_definition opt_46 SEMI

    variant_part ::= CASE direct_name IS variant list_47 END CASE SEMI

    variant ::= WHEN discrete_choice_list FATARROW component_list

    discrete_choice_list ::= discrete_choice list_49

    discrete_choice ::= expression
           | discrete_range
           | OTHERS

    record_extension_part ::= WITH record_definition

    access_type_definition ::= access_to_object_definition
           | access_to_subprogram_definition

    access_to_object_definition ::= ACCESS opt_50 subtype_indication

    general_access_modifier ::= ALL
           | CONSTANT

    access_to_subprogram_definition ::= ACCESS opt_51 PROCEDURE parameter_profile
           | ACCESS opt_52 FUNCTION parameter_and_result_profile

    access_definition ::= ACCESS name

    incomplete_type_declaration ::= TYPE defining_identifier opt_53 SEMI

    declarative_part ::= list_54

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
           | name LPAREN expression list_56 RPAREN
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

    attribute_designator ::= identifier opt_58
           | ACCESS
           | DELTA
           | DIGITS

    range_attribute_reference ::= name SQ range_attribute_designator

    range_attribute_designator ::= RANGE_ opt_60

    aggregate ::= record_aggregate
           | extension_aggregate
           | array_aggregate

    record_aggregate ::= LPAREN record_component_association_list RPAREN

    record_component_association_list ::= record_component_association list_62
           | NULL_ RECORD

    record_component_association ::= opt_64 expression

    component_choice_list ::= selector_name list_66
           | OTHERS

    extension_aggregate ::= LPAREN ancestor_part WITH record_component_association_list RPAREN

    ancestor_part ::= expression
           | name

    array_aggregate ::= positional_array_aggregate
           | named_array_aggregate

    positional_array_aggregate ::= LPAREN expression COMMA expression list_68 RPAREN
           | LPAREN expression list_70 COMMA OTHERS FATARROW expression RPAREN

    named_array_aggregate ::= LPAREN array_component_association list_72 RPAREN

    array_component_association ::= discrete_choice_list FATARROW expression

    expression ::= relation list_74
           | relation list_76
           | relation list_78
           | relation list_80
           | relation list_82

    relation ::= simple_expression opt_84
           | simple_expression opt_85 IN range
           | simple_expression opt_86 IN name

    simple_expression ::= opt_87 term list_89

    term ::= factor list_91

    factor ::= primary opt_93
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

    sequence_of_statements ::= statement list_94

    statement ::= list_95 simple_statement
           | list_96 compound_statement

    simple_statement ::= null_statement
           | assignment_statement
           | exit_statement
           | goto_statement
           | procedure_call_statement
           | return_statement
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
           | accept_statement
           | select_statement

    null_statement ::= NULL_ SEMI

    label ::= LSHIFT statement_identifier RSHIFT

    statement_identifier ::= direct_name

    assignment_statement ::= name COLONEQ expression SEMI

    if_statement ::= IF condition THEN sequence_of_statements list_98 opt_100 END IF SEMI

    condition ::= boolean_expression

    case_statement ::= CASE expression IS case_statement_alternative list_101 END CASE SEMI

    case_statement_alternative ::= WHEN discrete_choice_list FATARROW sequence_of_statements

    loop_statement ::= opt_103 opt_104 LOOP sequence_of_statements END LOOP opt_105 SEMI

    iteration_scheme ::= WHILE condition
           | FOR loop_parameter_specification

    loop_parameter_specification ::= defining_identifier IN opt_106 discrete_subtype_definition

    block_statement ::= opt_108 opt_110 BEGIN handled_sequence_of_statements END opt_111 SEMI

    exit_statement ::= EXIT opt_112 opt_114 SEMI

    goto_statement ::= GOTO name SEMI

    subprogram_declaration ::= subprogram_specification SEMI

    abstract_subprogram_declaration ::= subprogram_specification IS ABSTRACT SEMI

    subprogram_specification ::= PROCEDURE defining_program_unit_name parameter_profile
           | FUNCTION defining_designator parameter_and_result_profile

    designator ::= opt_116 identifier
           | operator_symbol

    defining_designator ::= defining_program_unit_name
           | defining_operator_symbol

    defining_program_unit_name ::= opt_118 defining_identifier

    operator_symbol ::= string_literal

    defining_operator_symbol ::= operator_symbol

    parameter_profile ::= opt_119

    parameter_and_result_profile ::= opt_120 RETURN name

    formal_part ::= LPAREN parameter_specification list_122 RPAREN

    parameter_specification ::= defining_identifier_list COLON mode_ name opt_124
           | defining_identifier_list COLON access_definition opt_126

    mode_ ::= opt_127 opt_128

    subprogram_body ::= subprogram_specification IS declarative_part BEGIN handled_sequence_of_statements END opt_129 SEMI

    procedure_call_statement ::= name SEMI
           | name actual_parameter_part SEMI

    actual_parameter_part ::= LPAREN parameter_association list_131 RPAREN

    parameter_association ::= opt_133 explicit_actual_parameter

    explicit_actual_parameter ::= expression
           | name

    return_statement ::= RETURN opt_134 SEMI

    package_declaration ::= package_specification SEMI

    package_specification ::= PACKAGE defining_program_unit_name IS list_135 opt_138 END opt_142

    package_body ::= PACKAGE BODY_ defining_program_unit_name IS declarative_part opt_144 END opt_148 SEMI

    private_type_declaration ::= TYPE defining_identifier opt_149 IS opt_152 opt_153 PRIVATE SEMI

    private_extension_declaration ::= TYPE defining_identifier opt_154 IS opt_155 NEW subtype_indication WITH PRIVATE SEMI

    use_clause ::= use_package_clause
           | use_type_clause

    use_package_clause ::= USE name list_157 SEMI

    use_type_clause ::= USE TYPE name list_159 SEMI

    renaming_declaration ::= object_renaming_declaration
           | exception_renaming_declaration
           | package_renaming_declaration
           | subprogram_renaming_declaration
           | generic_renaming_declaration

    object_renaming_declaration ::= defining_identifier COLON name RENAMES name SEMI

    exception_renaming_declaration ::= defining_identifier COLON EXCEPTION RENAMES name SEMI

    package_renaming_declaration ::= PACKAGE defining_program_unit_name RENAMES name SEMI

    subprogram_renaming_declaration ::= subprogram_specification RENAMES name SEMI

    generic_renaming_declaration ::= GENERIC PACKAGE defining_program_unit_name RENAMES name SEMI
           | GENERIC PROCEDURE defining_program_unit_name RENAMES name SEMI
           | GENERIC FUNCTION defining_program_unit_name RENAMES name SEMI

    task_type_declaration ::= TASK TYPE defining_identifier opt_160 opt_162 SEMI

    single_task_declaration ::= TASK defining_identifier opt_164 SEMI

    task_definition ::= list_165 opt_168 END opt_169

    task_item ::= entry_declaration
           | aspect_clause

    task_body ::= TASK BODY_ defining_identifier IS declarative_part BEGIN handled_sequence_of_statements END opt_170 SEMI

    protected_type_declaration ::= PROTECTED TYPE defining_identifier opt_171 IS protected_definition SEMI

    single_protected_declaration ::= PROTECTED defining_identifier IS protected_definition SEMI

    protected_definition ::= list_172 opt_175 END opt_176

    protected_operation_declaration ::= subprogram_declaration
           | entry_declaration
           | aspect_clause

    protected_element_declaration ::= protected_operation_declaration
           | component_declaration

    protected_body ::= PROTECTED BODY_ defining_identifier IS list_177 END opt_178 SEMI

    protected_operation_item ::= subprogram_declaration
           | subprogram_body
           | entry_body
           | aspect_clause

    entry_declaration ::= ENTRY defining_identifier opt_180 parameter_profile SEMI

    accept_statement ::= ACCEPT_ direct_name opt_182 parameter_profile opt_185 SEMI

    entry_index ::= expression

    entry_body ::= ENTRY defining_identifier entry_body_formal_part entry_barrier IS declarative_part BEGIN handled_sequence_of_statements END opt_186 SEMI

    entry_body_formal_part ::= opt_188 parameter_profile

    entry_barrier ::= WHEN condition

    entry_index_specification ::= FOR defining_identifier IN discrete_subtype_definition

    entry_call_statement ::= name opt_189 SEMI

    requeue_statement ::= REQUEUE name opt_191 SEMI

    delay_statement ::= delay_until_statement
           | delay_relative_statement

    delay_until_statement ::= DELAY UNTIL expression SEMI

    delay_relative_statement ::= DELAY expression SEMI

    select_statement ::= selective_accept
           | timed_entry_call
           | conditional_entry_call
           | asynchronous_select

    selective_accept ::= SELECT opt_192 select_alternative list_195 opt_197 END SELECT SEMI

    guard ::= WHEN condition FATARROW

    select_alternative ::= accept_alternative
           | delay_alternative
           | terminate_alternative

    accept_alternative ::= accept_statement opt_198

    delay_alternative ::= delay_statement opt_199

    terminate_alternative ::= TERMINATE SEMI

    timed_entry_call ::= SELECT entry_call_alternative OR delay_alternative END SELECT SEMI

    entry_call_alternative ::= entry_call_statement opt_200

    conditional_entry_call ::= SELECT entry_call_alternative ELSE sequence_of_statements END SELECT SEMI

    asynchronous_select ::= SELECT triggering_alternative THEN ABORT abortable_part END SELECT SEMI

    triggering_alternative ::= triggering_statement opt_201

    triggering_statement ::= entry_call_statement
           | delay_statement

    abortable_part ::= sequence_of_statements

    abort_statement ::= ABORT name list_203 SEMI

    compilation ::= list_204

    compilation_unit ::= context_clause library_item
           | context_clause subunit

    library_item ::= opt_205 library_unit_declaration
           | library_unit_body
           | opt_206 library_unit_renaming_declaration

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

    context_clause ::= list_207

    context_item ::= with_clause
           | use_clause

    with_clause ::= WITH name list_209 SEMI

    body_stub ::= subprogram_body_stub
           | package_body_stub
           | task_body_stub
           | protected_body_stub

    subprogram_body_stub ::= subprogram_specification IS SEPARATE SEMI

    package_body_stub ::= PACKAGE BODY_ defining_identifier IS SEPARATE SEMI

    task_body_stub ::= TASK BODY_ defining_identifier IS SEPARATE SEMI

    protected_body_stub ::= PROTECTED BODY_ defining_identifier IS SEPARATE SEMI

    subunit ::= SEPARATE LPAREN parent_unit_name RPAREN proper_body

    exception_declaration ::= defining_identifier_list COLON EXCEPTION SEMI

    handled_sequence_of_statements ::= sequence_of_statements opt_212

    exception_handler ::= WHEN opt_214 exception_choice list_216 FATARROW sequence_of_statements

    choice_parameter_specification ::= defining_identifier

    exception_choice ::= name
           | OTHERS

    raise_statement ::= RAISE opt_217 SEMI

    generic_declaration ::= generic_subprogram_declaration
           | generic_package_declaration

    generic_subprogram_declaration ::= generic_formal_part subprogram_specification SEMI

    generic_package_declaration ::= generic_formal_part package_specification SEMI

    generic_formal_part ::= GENERIC list_219

    generic_formal_parameter_declaration ::= formal_object_declaration
           | formal_type_declaration
           | formal_subprogram_declaration
           | formal_package_declaration

    generic_instantiation ::= PACKAGE defining_program_unit_name IS NEW name opt_220 SEMI
           | PROCEDURE defining_program_unit_name IS NEW name opt_221 SEMI
           | FUNCTION defining_designator IS NEW name opt_222 SEMI

    generic_actual_part ::= LPAREN generic_association list_224 RPAREN

    generic_association ::= opt_226 explicit_generic_actual_parameter

    explicit_generic_actual_parameter ::= expression
           | name

    formal_object_declaration ::= defining_identifier_list COLON mode_ name opt_228 SEMI

    formal_type_declaration ::= TYPE defining_identifier opt_229 IS formal_type_definition SEMI

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

    formal_private_type_definition ::= opt_232 opt_233 PRIVATE

    formal_derived_type_definition ::= opt_234 NEW name opt_236

    formal_discrete_type_definition ::= LPAREN LTGT RPAREN

    formal_signed_integer_type_definition ::= RANGE_ LTGT

    formal_modular_type_definition ::= MOD LTGT

    formal_floating_point_definition ::= DIGITS LTGT

    formal_ordinary_fixed_point_definition ::= DELTA LTGT

    formal_decimal_fixed_point_definition ::= DELTA LTGT DIGITS LTGT

    formal_array_type_definition ::= array_type_definition

    formal_access_type_definition ::= access_type_definition

    formal_subprogram_declaration ::= WITH subprogram_specification opt_238 SEMI

    subprogram_default ::= default_name
           | LTGT

    default_name ::= name

    formal_package_declaration ::= WITH PACKAGE defining_identifier IS NEW name formal_package_actual_part SEMI

    formal_package_actual_part ::= LPAREN LTGT RPAREN
           | opt_239

    aspect_clause ::= attribute_definition_clause
           | enumeration_representation_clause
           | record_representation_clause
           | at_clause

    local_name ::= direct_name
           | direct_name SQ attribute_designator
           | name

    attribute_definition_clause ::= FOR local_name SQ attribute_designator USE expression SEMI
           | FOR local_name SQ attribute_designator USE name SEMI

    enumeration_representation_clause ::= FOR name USE enumeration_aggregate SEMI

    enumeration_aggregate ::= array_aggregate

    record_representation_clause ::= FOR name USE RECORD opt_240 list_241 END RECORD SEMI

    component_clause ::= name AT position RANGE_ first_bit DOTDOT last_bit SEMI

    position ::= expression

    first_bit ::= simple_expression

    last_bit ::= simple_expression

    code_statement ::= qualified_expression SEMI

    restriction ::= identifier
           | identifier FATARROW expression

    at_clause ::= FOR direct_name USE AT expression SEMI

    delta_constraint ::= DELTA expression opt_242

    mod_clause ::= AT MOD expression SEMI

    boolean_expression ::= expression

    opt_1 ::= known_discriminant_part | $empty

    opt_2 ::= constraint | $empty

    opt_3 ::= ALIASED | $empty

    opt_4 ::= CONSTANT | $empty

    seq_5 ::= COLONEQ expression

    opt_6 ::= seq_5 | $empty

    opt_7 ::= ALIASED | $empty

    opt_8 ::= CONSTANT | $empty

    seq_9 ::= COLONEQ expression

    opt_10 ::= seq_9 | $empty

    seq_11 ::= COMMA defining_identifier

    list_12 ::= $empty | list_12 seq_11

    opt_13 ::= ABSTRACT | $empty

    opt_14 ::= record_extension_part | $empty

    seq_15 ::= COMMA enumeration_literal_specification

    list_16 ::= $empty | list_16 seq_15

    opt_17 ::= real_range_specification | $empty

    opt_18 ::= real_range_specification | $empty

    opt_19 ::= range_constraint | $empty

    seq_20 ::= COMMA index_subtype_definition

    list_21 ::= $empty | list_21 seq_20

    seq_22 ::= COMMA discrete_subtype_definition

    list_23 ::= $empty | list_23 seq_22

    opt_24 ::= ALIASED | $empty

    seq_25 ::= COMMA discrete_range

    list_26 ::= $empty | list_26 seq_25

    seq_27 ::= SEMI discriminant_specification

    list_28 ::= $empty | list_28 seq_27

    seq_29 ::= COLONEQ default_expression

    opt_30 ::= seq_29 | $empty

    seq_31 ::= COLONEQ default_expression

    opt_32 ::= seq_31 | $empty

    seq_33 ::= COMMA discriminant_association

    list_34 ::= $empty | list_34 seq_33

    grp_36 ::= PIPE selector_name

    list_37 ::= $empty | list_37 grp_36

    grp_35 ::= selector_name list_37 FATARROW

    opt_38 ::= grp_35 | $empty

    opt_39 ::= ABSTRACT | $empty

    seq_40 ::= opt_39 TAGGED

    opt_41 ::= seq_40 | $empty

    opt_42 ::= LIMITED | $empty

    list_43 ::= $empty | list_43 component_item

    list_44 ::= $empty | list_44 component_item

    seq_45 ::= COLONEQ default_expression

    opt_46 ::= seq_45 | $empty

    list_47 ::= $empty | list_47 variant

    grp_48 ::= PIPE discrete_choice

    list_49 ::= $empty | list_49 grp_48

    opt_50 ::= general_access_modifier | $empty

    opt_51 ::= PROTECTED | $empty

    opt_52 ::= PROTECTED | $empty

    opt_53 ::= discriminant_part | $empty

    list_54 ::= $empty | list_54 declarative_item

    seq_55 ::= COMMA expression

    list_56 ::= $empty | list_56 seq_55

    seq_57 ::= LPAREN expression RPAREN

    opt_58 ::= seq_57 | $empty

    seq_59 ::= LPAREN expression RPAREN

    opt_60 ::= seq_59 | $empty

    seq_61 ::= COMMA record_component_association

    list_62 ::= $empty | list_62 seq_61

    seq_63 ::= component_choice_list FATARROW

    opt_64 ::= seq_63 | $empty

    grp_65 ::= PIPE selector_name

    list_66 ::= $empty | list_66 grp_65

    seq_67 ::= COMMA expression

    list_68 ::= $empty | list_68 seq_67

    seq_69 ::= COMMA expression

    list_70 ::= $empty | list_70 seq_69

    seq_71 ::= COMMA array_component_association

    list_72 ::= $empty | list_72 seq_71

    seq_73 ::= AND relation

    list_74 ::= $empty | list_74 seq_73

    seq_75 ::= AND THEN relation

    list_76 ::= $empty | list_76 seq_75

    seq_77 ::= OR relation

    list_78 ::= $empty | list_78 seq_77

    seq_79 ::= OR ELSE relation

    list_80 ::= $empty | list_80 seq_79

    seq_81 ::= XOR relation

    list_82 ::= $empty | list_82 seq_81

    seq_83 ::= relational_operator simple_expression

    opt_84 ::= seq_83 | $empty

    opt_85 ::= NOT | $empty

    opt_86 ::= NOT | $empty

    opt_87 ::= unary_adding_operator | $empty

    seq_88 ::= binary_adding_operator term

    list_89 ::= $empty | list_89 seq_88

    seq_90 ::= multiplying_operator factor

    list_91 ::= $empty | list_91 seq_90

    seq_92 ::= STARSTAR primary

    opt_93 ::= seq_92 | $empty

    list_94 ::= $empty | list_94 statement

    list_95 ::= $empty | list_95 label

    list_96 ::= $empty | list_96 label

    seq_97 ::= ELSIF condition THEN sequence_of_statements

    list_98 ::= $empty | list_98 seq_97

    seq_99 ::= ELSE sequence_of_statements

    opt_100 ::= seq_99 | $empty

    list_101 ::= $empty | list_101 case_statement_alternative

    seq_102 ::= statement_identifier COLON

    opt_103 ::= seq_102 | $empty

    opt_104 ::= iteration_scheme | $empty

    opt_105 ::= identifier | $empty

    opt_106 ::= REVERSE | $empty

    seq_107 ::= statement_identifier COLON

    opt_108 ::= seq_107 | $empty

    seq_109 ::= DECLARE declarative_part

    opt_110 ::= seq_109 | $empty

    opt_111 ::= identifier | $empty

    opt_112 ::= name | $empty

    seq_113 ::= WHEN condition

    opt_114 ::= seq_113 | $empty

    seq_115 ::= parent_unit_name DOT

    opt_116 ::= seq_115 | $empty

    seq_117 ::= parent_unit_name DOT

    opt_118 ::= seq_117 | $empty

    opt_119 ::= formal_part | $empty

    opt_120 ::= formal_part | $empty

    seq_121 ::= SEMI parameter_specification

    list_122 ::= $empty | list_122 seq_121

    seq_123 ::= COLONEQ default_expression

    opt_124 ::= seq_123 | $empty

    seq_125 ::= COLONEQ default_expression

    opt_126 ::= seq_125 | $empty

    opt_127 ::= IN | $empty

    opt_128 ::= OUT | $empty

    opt_129 ::= designator | $empty

    seq_130 ::= COMMA parameter_association

    list_131 ::= $empty | list_131 seq_130

    seq_132 ::= selector_name FATARROW

    opt_133 ::= seq_132 | $empty

    opt_134 ::= expression | $empty

    list_135 ::= $empty | list_135 basic_declarative_item

    list_136 ::= $empty | list_136 basic_declarative_item

    seq_137 ::= PRIVATE list_136

    opt_138 ::= seq_137 | $empty

    seq_139 ::= parent_unit_name DOT

    opt_140 ::= seq_139 | $empty

    seq_141 ::= opt_140 identifier

    opt_142 ::= seq_141 | $empty

    seq_143 ::= BEGIN handled_sequence_of_statements

    opt_144 ::= seq_143 | $empty

    seq_145 ::= parent_unit_name DOT

    opt_146 ::= seq_145 | $empty

    seq_147 ::= opt_146 identifier

    opt_148 ::= seq_147 | $empty

    opt_149 ::= discriminant_part | $empty

    opt_150 ::= ABSTRACT | $empty

    seq_151 ::= opt_150 TAGGED

    opt_152 ::= seq_151 | $empty

    opt_153 ::= LIMITED | $empty

    opt_154 ::= discriminant_part | $empty

    opt_155 ::= ABSTRACT | $empty

    seq_156 ::= COMMA name

    list_157 ::= $empty | list_157 seq_156

    seq_158 ::= COMMA name

    list_159 ::= $empty | list_159 seq_158

    opt_160 ::= known_discriminant_part | $empty

    seq_161 ::= IS task_definition

    opt_162 ::= seq_161 | $empty

    seq_163 ::= IS task_definition

    opt_164 ::= seq_163 | $empty

    list_165 ::= $empty | list_165 task_item

    list_166 ::= $empty | list_166 task_item

    seq_167 ::= PRIVATE list_166

    opt_168 ::= seq_167 | $empty

    opt_169 ::= identifier | $empty

    opt_170 ::= identifier | $empty

    opt_171 ::= known_discriminant_part | $empty

    list_172 ::= $empty | list_172 protected_operation_declaration

    list_173 ::= $empty | list_173 protected_element_declaration

    seq_174 ::= PRIVATE list_173

    opt_175 ::= seq_174 | $empty

    opt_176 ::= identifier | $empty

    list_177 ::= $empty | list_177 protected_operation_item

    opt_178 ::= identifier | $empty

    seq_179 ::= LPAREN discrete_subtype_definition RPAREN

    opt_180 ::= seq_179 | $empty

    seq_181 ::= LPAREN entry_index RPAREN

    opt_182 ::= seq_181 | $empty

    opt_183 ::= identifier | $empty

    seq_184 ::= DO handled_sequence_of_statements END opt_183

    opt_185 ::= seq_184 | $empty

    opt_186 ::= identifier | $empty

    seq_187 ::= LPAREN entry_index_specification RPAREN

    opt_188 ::= seq_187 | $empty

    opt_189 ::= actual_parameter_part | $empty

    seq_190 ::= WITH ABORT

    opt_191 ::= seq_190 | $empty

    opt_192 ::= guard | $empty

    opt_193 ::= guard | $empty

    seq_194 ::= OR opt_193 select_alternative

    list_195 ::= $empty | list_195 seq_194

    seq_196 ::= ELSE sequence_of_statements

    opt_197 ::= seq_196 | $empty

    opt_198 ::= sequence_of_statements | $empty

    opt_199 ::= sequence_of_statements | $empty

    opt_200 ::= sequence_of_statements | $empty

    opt_201 ::= sequence_of_statements | $empty

    seq_202 ::= COMMA name

    list_203 ::= $empty | list_203 seq_202

    list_204 ::= $empty | list_204 compilation_unit

    opt_205 ::= PRIVATE | $empty

    opt_206 ::= PRIVATE | $empty

    list_207 ::= $empty | list_207 context_item

    seq_208 ::= COMMA name

    list_209 ::= $empty | list_209 seq_208

    list_210 ::= $empty | list_210 exception_handler

    seq_211 ::= EXCEPTION exception_handler list_210

    opt_212 ::= seq_211 | $empty

    seq_213 ::= choice_parameter_specification COLON

    opt_214 ::= seq_213 | $empty

    grp_215 ::= PIPE exception_choice

    list_216 ::= $empty | list_216 grp_215

    opt_217 ::= name | $empty

    grp_218 ::= generic_formal_parameter_declaration | use_clause

    list_219 ::= $empty | list_219 grp_218

    opt_220 ::= generic_actual_part | $empty

    opt_221 ::= generic_actual_part | $empty

    opt_222 ::= generic_actual_part | $empty

    seq_223 ::= COMMA generic_association

    list_224 ::= $empty | list_224 seq_223

    seq_225 ::= selector_name FATARROW

    opt_226 ::= seq_225 | $empty

    seq_227 ::= COLONEQ default_expression

    opt_228 ::= seq_227 | $empty

    opt_229 ::= discriminant_part | $empty

    opt_230 ::= ABSTRACT | $empty

    seq_231 ::= opt_230 TAGGED

    opt_232 ::= seq_231 | $empty

    opt_233 ::= LIMITED | $empty

    opt_234 ::= ABSTRACT | $empty

    seq_235 ::= WITH PRIVATE

    opt_236 ::= seq_235 | $empty

    seq_237 ::= IS subprogram_default

    opt_238 ::= seq_237 | $empty

    opt_239 ::= generic_actual_part | $empty

    opt_240 ::= mod_clause | $empty

    list_241 ::= $empty | list_241 component_clause

    opt_242 ::= range_constraint | $empty

%End
