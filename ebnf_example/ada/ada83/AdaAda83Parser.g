-- AUTO-GENERATED from antlr/grammars-v4 ada/ada83 by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
%Options fp=AdaAda83Parser
%options package=lpg.grammars.ada.ada83
%options template=dtParserTemplateF.gi
%options import_terminals=AdaAda83Lexer.gi
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

    character_literal ::= CHARACTER_LITERAL_

    string_literal ::= STRING_LITERAL_

    basic_declaration ::= object_declaration
           | number_declaration
           | type_declaration
           | subtype_declaration
           | subprogram_declaration
           | package_declaration
           | task_declaration
           | generic_declaration
           | exception_declaration
           | generic_instantiation
           | renaming_declaration
           | deferred_constant_declaration

    object_declaration ::= identifier_list COLON opt_1 subtype_indication opt_3 SEMI
           | identifier_list COLON opt_4 constrained_array_definition opt_6 SEMI

    number_declaration ::= identifier_list COLON CONSTANT COLONEQ expression SEMI

    type_declaration ::= full_type_declaration
           | incomplete_type_declaration
           | private_type_declaration

    full_type_declaration ::= TYPE identifier opt_7 IS type_definition SEMI

    type_definition ::= enumeration_type_definition
           | integer_type_definition
           | real_type_definition
           | array_type_definition
           | record_type_definition
           | access_type_definition
           | derived_type_definition

    subtype_declaration ::= SUBTYPE identifier IS subtype_indication SEMI

    subtype_indication ::= name opt_8

    constraint ::= range_constraint
           | floating_point_constraint
           | fixed_point_constraint
           | index_constraint
           | discriminant_constraint

    derived_type_definition ::= NEW subtype_indication

    identifier_list ::= identifier list_10

    range_constraint ::= range range

    range ::= name SQ attribute_designator
           | simple_expression DOTDOT simple_expression

    enumeration_type_definition ::= LPAREN enumeration_literal_specification list_12 RPAREN

    enumeration_literal_specification ::= enumeration_literal

    enumeration_literal ::= identifier
           | character_literal

    integer_type_definition ::= range_constraint

    real_type_definition ::= floating_point_constraint
           | fixed_point_constraint

    floating_point_constraint ::= floating_accuracy_definition opt_13

    floating_accuracy_definition ::= DIGITS expression

    fixed_point_constraint ::= fixed_accuracy_definition opt_14

    fixed_accuracy_definition ::= DELTA expression

    array_type_definition ::= unconstrained_array_definition
           | constrained_array_definition

    unconstrained_array_definition ::= ARRAY LPAREN index_subtype_definition list_16 RPAREN OF subtype_indication

    constrained_array_definition ::= ARRAY index_constraint OF subtype_indication

    index_subtype_definition ::= name range LTGT

    index_constraint ::= LPAREN discrete_range list_18 RPAREN

    discrete_range ::= subtype_indication
           | range

    record_type_definition ::= RECORD component_list END RECORD

    component_list ::= component_declaration list_19
           | list_20 variant_part
           | NULL_ SEMI

    component_declaration ::= identifier_list COLON component_subtype_definition opt_22 SEMI

    component_subtype_definition ::= subtype_indication

    discriminant_part ::= LPAREN discriminant_specification list_24 RPAREN

    discriminant_specification ::= identifier_list COLON name opt_26

    discriminant_constraint ::= LPAREN discriminant_association list_28 RPAREN

    discriminant_association ::= opt_32 expression

    variant_part ::= CASE simple_name IS variant list_33 END CASE SEMI

    variant ::= WHEN choice list_35 FATARROW component_list

    choice ::= simple_expression
           | discrete_range
           | OTHERS
           | simple_name

    access_type_definition ::= ACCESS subtype_indication

    incomplete_type_declaration ::= TYPE identifier opt_36 SEMI

    basic_declarative_item ::= basic_declaration
           | representation_clause
           | use_clause

    later_declarative_item ::= body
           | subprogram_declaration
           | package_declaration
           | task_declaration
           | generic_declaration
           | use_clause
           | generic_instantiation

    body ::= proper_body
           | body_stub

    proper_body ::= subprogram_body
           | package_body
           | task_body

    name ::= simple_name
           | character_literal
           | operator_symbol
           | name LPAREN expression list_38 RPAREN
           | name LPAREN discrete_range RPAREN
           | name DOT selector
           | name SQ attribute_designator
           | name actual_parameter_part

    simple_name ::= identifier

    selector ::= simple_name
           | character_literal
           | operator_symbol
           | ALL

    attribute_designator ::= simple_name opt_40

    aggregate ::= LPAREN component_association list_42 RPAREN

    component_association ::= opt_46 expression

    expression ::= relation list_48
           | relation list_50
           | relation list_52
           | relation list_54
           | relation list_56

    relation ::= simple_expression opt_58
           | simple_expression opt_59 IN range
           | simple_expression opt_60 IN name

    simple_expression ::= opt_61 term list_63

    term ::= factor list_65

    factor ::= primary opt_67
           | ABS primary
           | NOT primary

    primary ::= numeric_literal
           | NULL_
           | aggregate
           | string_literal
           | name
           | allocator
           | name opt_68
           | type_conversion
           | qualified_expression
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

    type_conversion ::= name LPAREN expression RPAREN

    qualified_expression ::= name SQ LPAREN expression RPAREN
           | name SQ aggregate

    allocator ::= NEW subtype_indication
           | NEW qualified_expression

    sequence_of_statements ::= statement list_69

    statement ::= list_70 simple_statement
           | list_71 compound_statement

    simple_statement ::= null_statement
           | assignment_statement
           | procedure_call_statement
           | exit_statement
           | return_statement
           | goto_statement
           | entry_call_statement
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

    label ::= LSHIFT simple_name RSHIFT

    null_statement ::= NULL_ SEMI

    assignment_statement ::= name COLONEQ expression SEMI

    if_statement ::= IF condition THEN sequence_of_statements list_73 opt_75 END IF SEMI

    condition ::= expression

    case_statement ::= CASE expression IS case_statement_alternative list_76 END CASE SEMI

    case_statement_alternative ::= WHEN choice list_78 FATARROW sequence_of_statements

    loop_statement ::= opt_80 opt_81 LOOP sequence_of_statements END LOOP opt_82 SEMI

    iteration_scheme ::= WHILE condition
           | FOR loop_parameter_specification

    loop_parameter_specification ::= identifier IN opt_83 discrete_range

    block_statement ::= opt_85 opt_89 BEGIN sequence_of_statements opt_92 END opt_93 SEMI

    exit_statement ::= EXIT opt_94 opt_96 SEMI

    return_statement ::= RETURN opt_97 SEMI

    goto_statement ::= GOTO name SEMI

    subprogram_declaration ::= subprogram_specification SEMI

    subprogram_specification ::= PROCEDURE identifier opt_98
           | FUNCTION designator opt_99 RETURN name

    designator ::= identifier
           | operator_symbol

    operator_symbol ::= string_literal

    formal_part ::= LPAREN parameter_specification opt_101 RPAREN

    parameter_specification ::= identifier_list COLON mode_ name opt_103

    mode_ ::= opt_104 opt_105

    subprogram_body ::= subprogram_specification IS list_106 list_107 BEGIN sequence_of_statements opt_110 END opt_111 SEMI

    procedure_call_statement ::= name opt_112 SEMI

    actual_parameter_part ::= LPAREN parameter_association list_114 RPAREN

    parameter_association ::= opt_116 actual_parameter

    formal_parameter ::= simple_name

    actual_parameter ::= expression
           | name
           | name LPAREN name RPAREN

    package_declaration ::= package_specification SEMI

    package_specification ::= PACKAGE identifier IS list_117 opt_120 END opt_121

    package_body ::= PACKAGE BODY_ simple_name IS list_122 list_123 opt_128 END opt_129 SEMI

    private_type_declaration ::= TYPE identifier opt_130 IS opt_131 PRIVATE SEMI

    deferred_constant_declaration ::= identifier_list COLON CONSTANT name SEMI

    use_clause ::= USE name list_133 SEMI

    renaming_declaration ::= identifier COLON name RENAMES name SEMI
           | identifier COLON EXCEPTION_ RENAMES name SEMI
           | PACKAGE identifier RENAMES name SEMI
           | subprogram_specification RENAMES name SEMI

    task_declaration ::= task_specification SEMI

    task_specification ::= TASK opt_134 identifier opt_139

    task_body ::= TASK BODY_ simple_name IS list_140 list_141 BEGIN sequence_of_statements opt_144 END opt_145 SEMI

    entry_declaration ::= ENTRY identifier opt_147 opt_148 SEMI

    entry_call_statement ::= name opt_149 SEMI

    accept_statement ::= ACCEPT_ simple_name opt_151 opt_152 opt_155 SEMI

    entry_index ::= expression

    delay_statement ::= DELAY simple_expression SEMI

    select_statement ::= selective_wait
           | conditional_entry_call
           | timed_entry_call

    selective_wait ::= SELECT select_alternative list_157 opt_159 END SELECT SEMI

    select_alternative ::= opt_161 selective_wait_alternative

    selective_wait_alternative ::= accept_alternative
           | delay_alternative
           | terminate_alternative

    accept_alternative ::= accept_statement opt_162

    delay_alternative ::= delay_statement opt_163

    terminate_alternative ::= TERMINATE SEMI

    conditional_entry_call ::= SELECT entry_call_statement opt_164 ELSE sequence_of_statements END SELECT SEMI

    timed_entry_call ::= SELECT entry_call_statement opt_165 OR delay_alternative END SELECT SEMI

    abort_statement ::= ABORT name list_167 SEMI

    compilation ::= list_168

    compilation_unit ::= context_clause library_unit
           | context_clause secondary_unit

    library_unit ::= subprogram_declaration
           | package_declaration
           | generic_declaration
           | generic_instantiation
           | subprogram_body

    secondary_unit ::= library_unit_body
           | subunit

    library_unit_body ::= subprogram_body
           | package_body

    context_clause ::= list_171

    with_clause ::= WITH simple_name list_173 SEMI

    body_stub ::= subprogram_specification IS SEPARATE SEMI
           | PACKAGE BODY_ simple_name IS SEPARATE SEMI
           | TASK BODY_ simple_name IS SEPARATE SEMI

    subunit ::= SEPARATE LPAREN name RPAREN proper_body

    exception_declaration ::= identifier_list COLON EXCEPTION_ SEMI

    exception_handler ::= WHEN exception_choice list_175 FATARROW sequence_of_statements

    exception_choice ::= name
           | OTHERS

    raise_statement ::= RAISE opt_176 SEMI

    generic_declaration ::= generic_specification SEMI

    generic_specification ::= generic_formal_part subprogram_specification
           | generic_formal_part package_specification

    generic_formal_part ::= GENERIC list_177

    generic_parameter_declaration ::= identifier_list COLON opt_180 name opt_182 SEMI
           | TYPE identifier IS generic_type_definition SEMI
           | private_type_declaration
           | WITH subprogram_specification opt_184 SEMI
           | WITH subprogram_specification opt_186 SEMI

    generic_type_definition ::= LPAREN LTGT RPAREN
           | RANGE_ LTGT
           | DIGITS LTGT
           | DELTA LTGT
           | array_type_definition
           | access_type_definition

    generic_instantiation ::= PACKAGE identifier IS NEW name opt_187 SEMI
           | PROCEDURE identifier IS NEW name opt_188 SEMI
           | FUNCTION designator IS NEW name opt_189 SEMI

    generic_actual_part ::= LPAREN generic_association list_191 RPAREN

    generic_association ::= opt_193 generic_actual_parameter

    generic_formal_parameter ::= simple_name
           | operator_symbol

    generic_actual_parameter ::= expression
           | name

    representation_clause ::= type_representation_clause
           | address_clause

    type_representation_clause ::= length_clause
           | enumeration_representation_clause
           | record_representation_clause

    length_clause ::= FOR name SQ attribute_designator USE simple_expression SEMI

    enumeration_representation_clause ::= FOR simple_name USE aggregate SEMI

    record_representation_clause ::= FOR simple_name USE RECORD opt_194 list_195 END RECORD SEMI

    alignment_clause ::= AT MOD expression SEMI

    component_clause ::= name AT expression RANGE_ range SEMI

    address_clause ::= FOR simple_name USE AT simple_expression SEMI

    code_statement ::= name SQ aggregate SEMI

    opt_1 ::= CONSTANT | $empty

    seq_2 ::= COLONEQ expression

    opt_3 ::= seq_2 | $empty

    opt_4 ::= CONSTANT | $empty

    seq_5 ::= COLONEQ expression

    opt_6 ::= seq_5 | $empty

    opt_7 ::= discriminant_part | $empty

    opt_8 ::= constraint | $empty

    seq_9 ::= COMMA identifier

    list_10 ::= $empty | list_10 seq_9

    seq_11 ::= COMMA enumeration_literal_specification

    list_12 ::= $empty | list_12 seq_11

    opt_13 ::= range_constraint | $empty

    opt_14 ::= range_constraint | $empty

    seq_15 ::= COMMA index_subtype_definition

    list_16 ::= $empty | list_16 seq_15

    seq_17 ::= COMMA discrete_range

    list_18 ::= $empty | list_18 seq_17

    list_19 ::= $empty | list_19 component_declaration

    list_20 ::= $empty | list_20 component_declaration

    seq_21 ::= COLONEQ expression

    opt_22 ::= seq_21 | $empty

    seq_23 ::= SEMI discriminant_specification

    list_24 ::= $empty | list_24 seq_23

    seq_25 ::= COLONEQ expression

    opt_26 ::= seq_25 | $empty

    seq_27 ::= COMMA discriminant_association

    list_28 ::= $empty | list_28 seq_27

    grp_30 ::= PIPE simple_name

    list_31 ::= $empty | list_31 grp_30

    grp_29 ::= simple_name list_31 FATARROW

    opt_32 ::= grp_29 | $empty

    list_33 ::= $empty | list_33 variant

    grp_34 ::= PIPE choice

    list_35 ::= $empty | list_35 grp_34

    opt_36 ::= discriminant_part | $empty

    seq_37 ::= COMMA expression

    list_38 ::= $empty | list_38 seq_37

    seq_39 ::= LPAREN expression RPAREN

    opt_40 ::= seq_39 | $empty

    seq_41 ::= COMMA component_association

    list_42 ::= $empty | list_42 seq_41

    grp_44 ::= PIPE choice

    list_45 ::= $empty | list_45 grp_44

    grp_43 ::= choice list_45 FATARROW

    opt_46 ::= grp_43 | $empty

    seq_47 ::= AND relation

    list_48 ::= $empty | list_48 seq_47

    seq_49 ::= AND THEN relation

    list_50 ::= $empty | list_50 seq_49

    seq_51 ::= OR relation

    list_52 ::= $empty | list_52 seq_51

    seq_53 ::= OR ELSE relation

    list_54 ::= $empty | list_54 seq_53

    seq_55 ::= XOR relation

    list_56 ::= $empty | list_56 seq_55

    seq_57 ::= relational_operator simple_expression

    opt_58 ::= seq_57 | $empty

    opt_59 ::= NOT | $empty

    opt_60 ::= NOT | $empty

    opt_61 ::= unary_adding_operator | $empty

    seq_62 ::= binary_adding_operator term

    list_63 ::= $empty | list_63 seq_62

    seq_64 ::= multiplying_operator factor

    list_65 ::= $empty | list_65 seq_64

    seq_66 ::= STARSTAR primary

    opt_67 ::= seq_66 | $empty

    opt_68 ::= actual_parameter_part | $empty

    list_69 ::= $empty | list_69 statement

    list_70 ::= $empty | list_70 label

    list_71 ::= $empty | list_71 label

    seq_72 ::= ELSIF condition THEN sequence_of_statements

    list_73 ::= $empty | list_73 seq_72

    seq_74 ::= ELSE sequence_of_statements

    opt_75 ::= seq_74 | $empty

    list_76 ::= $empty | list_76 case_statement_alternative

    grp_77 ::= PIPE choice

    list_78 ::= $empty | list_78 grp_77

    seq_79 ::= simple_name COLON

    opt_80 ::= seq_79 | $empty

    opt_81 ::= iteration_scheme | $empty

    opt_82 ::= simple_name | $empty

    opt_83 ::= REVERSE | $empty

    seq_84 ::= simple_name COLON

    opt_85 ::= seq_84 | $empty

    list_86 ::= $empty | list_86 basic_declarative_item

    list_87 ::= $empty | list_87 later_declarative_item

    seq_88 ::= DECLARE list_86 list_87

    opt_89 ::= seq_88 | $empty

    list_90 ::= $empty | list_90 exception_handler

    seq_91 ::= EXCEPTION_ exception_handler list_90

    opt_92 ::= seq_91 | $empty

    opt_93 ::= simple_name | $empty

    opt_94 ::= name | $empty

    seq_95 ::= WHEN condition

    opt_96 ::= seq_95 | $empty

    opt_97 ::= expression | $empty

    opt_98 ::= formal_part | $empty

    opt_99 ::= formal_part | $empty

    seq_100 ::= SEMI parameter_specification

    opt_101 ::= seq_100 | $empty

    seq_102 ::= COLONEQ expression

    opt_103 ::= seq_102 | $empty

    opt_104 ::= IN | $empty

    opt_105 ::= OUT | $empty

    list_106 ::= $empty | list_106 basic_declarative_item

    list_107 ::= $empty | list_107 later_declarative_item

    list_108 ::= $empty | list_108 exception_handler

    seq_109 ::= EXCEPTION_ exception_handler list_108

    opt_110 ::= seq_109 | $empty

    opt_111 ::= designator | $empty

    opt_112 ::= actual_parameter_part | $empty

    seq_113 ::= COMMA parameter_association

    list_114 ::= $empty | list_114 seq_113

    seq_115 ::= formal_parameter FATARROW

    opt_116 ::= seq_115 | $empty

    list_117 ::= $empty | list_117 basic_declarative_item

    list_118 ::= $empty | list_118 basic_declarative_item

    seq_119 ::= PRIVATE list_118

    opt_120 ::= seq_119 | $empty

    opt_121 ::= simple_name | $empty

    list_122 ::= $empty | list_122 basic_declarative_item

    list_123 ::= $empty | list_123 later_declarative_item

    list_124 ::= $empty | list_124 exception_handler

    seq_125 ::= EXCEPTION_ exception_handler list_124

    opt_126 ::= seq_125 | $empty

    seq_127 ::= BEGIN sequence_of_statements opt_126

    opt_128 ::= seq_127 | $empty

    opt_129 ::= simple_name | $empty

    opt_130 ::= discriminant_part | $empty

    opt_131 ::= LIMITED | $empty

    seq_132 ::= COMMA name

    list_133 ::= $empty | list_133 seq_132

    opt_134 ::= TYPE | $empty

    list_135 ::= $empty | list_135 entry_declaration

    list_136 ::= $empty | list_136 representation_clause

    opt_137 ::= simple_name | $empty

    seq_138 ::= IS list_135 list_136 END opt_137

    opt_139 ::= seq_138 | $empty

    list_140 ::= $empty | list_140 basic_declarative_item

    list_141 ::= $empty | list_141 later_declarative_item

    list_142 ::= $empty | list_142 exception_handler

    seq_143 ::= EXCEPTION_ exception_handler list_142

    opt_144 ::= seq_143 | $empty

    opt_145 ::= simple_name | $empty

    seq_146 ::= LPAREN discrete_range RPAREN

    opt_147 ::= seq_146 | $empty

    opt_148 ::= formal_part | $empty

    opt_149 ::= actual_parameter_part | $empty

    seq_150 ::= LPAREN entry_index RPAREN

    opt_151 ::= seq_150 | $empty

    opt_152 ::= formal_part | $empty

    opt_153 ::= simple_name | $empty

    seq_154 ::= DO sequence_of_statements END opt_153

    opt_155 ::= seq_154 | $empty

    seq_156 ::= OR select_alternative

    list_157 ::= $empty | list_157 seq_156

    seq_158 ::= ELSE sequence_of_statements

    opt_159 ::= seq_158 | $empty

    seq_160 ::= WHEN condition FATARROW

    opt_161 ::= seq_160 | $empty

    opt_162 ::= sequence_of_statements | $empty

    opt_163 ::= sequence_of_statements | $empty

    opt_164 ::= sequence_of_statements | $empty

    opt_165 ::= sequence_of_statements | $empty

    seq_166 ::= COMMA name

    list_167 ::= $empty | list_167 seq_166

    list_168 ::= $empty | list_168 compilation_unit

    list_169 ::= $empty | list_169 use_clause

    seq_170 ::= with_clause list_169

    list_171 ::= $empty | list_171 seq_170

    seq_172 ::= COMMA simple_name

    list_173 ::= $empty | list_173 seq_172

    grp_174 ::= PIPE exception_choice

    list_175 ::= $empty | list_175 grp_174

    opt_176 ::= name | $empty

    list_177 ::= $empty | list_177 generic_parameter_declaration

    opt_178 ::= OUT | $empty

    seq_179 ::= IN opt_178

    opt_180 ::= seq_179 | $empty

    seq_181 ::= COLONEQ expression

    opt_182 ::= seq_181 | $empty

    seq_183 ::= IS name

    opt_184 ::= seq_183 | $empty

    seq_185 ::= IS LTGT

    opt_186 ::= seq_185 | $empty

    opt_187 ::= generic_actual_part | $empty

    opt_188 ::= generic_actual_part | $empty

    opt_189 ::= generic_actual_part | $empty

    seq_190 ::= COMMA generic_association

    list_191 ::= $empty | list_191 seq_190

    seq_192 ::= generic_formal_parameter FATARROW

    opt_193 ::= seq_192 | $empty

    opt_194 ::= alignment_clause | $empty

    list_195 ::= $empty | list_195 component_clause

%End
