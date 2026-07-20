-- AUTO-GENERATED from antlr/grammars-v4 vhdl/vhdl by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=VhdlParser
%options package=lpg.grammars.vhdl.vhdl
%options template=dtParserTemplateF.gi
%options import_terminals=VhdlLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    design_file
%End

%Rules
    abstract_literal ::= INTEGER
           | REAL_LITERAL
           | BASE_LITERAL

    access_type_definition ::= ACCESS subtype_indication

    across_aspect ::= identifier_list opt_1 opt_3 ACROSS

    actual_designator ::= expression
           | OPEN

    actual_parameter_part ::= association_list

    actual_part ::= name LPAREN actual_designator RPAREN
           | actual_designator

    adding_operator ::= PLUS
           | MINUS
           | AMPERSAND

    aggregate ::= LPAREN element_association list_5 RPAREN

    alias_declaration ::= ALIAS alias_designator opt_7 IS name opt_8 SEMI

    alias_designator ::= identifier
           | CHARACTER_LITERAL
           | STRING_LITERAL

    alias_indication ::= subnature_indication
           | subtype_indication

    allocator ::= NEW grp_9

    architecture_body ::= ARCHITECTURE identifier OF identifier IS architecture_declarative_part BEGIN architecture_statement_part END opt_10 opt_11 SEMI

    architecture_declarative_part ::= list_12

    architecture_statement ::= block_statement
           | process_statement
           | opt_13 concurrent_procedure_call_statement
           | opt_14 concurrent_assertion_statement
           | opt_15 opt_16 concurrent_signal_assignment_statement
           | component_instantiation_statement
           | generate_statement
           | concurrent_break_statement
           | simultaneous_statement

    architecture_statement_part ::= list_17

    array_nature_definition ::= unconstrained_nature_definition
           | constrained_nature_definition

    array_type_definition ::= unconstrained_array_definition
           | constrained_array_definition

    assertion ::= ASSERT condition opt_19 opt_21

    assertion_statement ::= opt_22 assertion SEMI

    association_element ::= opt_24 actual_part

    association_list ::= association_element list_26

    attribute_declaration ::= ATTRIBUTE label_colon name SEMI

    attribute_designator ::= identifier
           | RANGE
           | REVERSE_RANGE
           | ACROSS
           | THROUGH
           | REFERENCE
           | TOLERANCE

    attribute_specification ::= ATTRIBUTE attribute_designator OF entity_specification IS expression SEMI

    base_unit_declaration ::= identifier SEMI

    binding_indication ::= opt_28 opt_29 opt_30

    block_configuration ::= FOR block_specification list_31 list_32 END FOR SEMI

    block_declarative_item ::= subprogram_declaration
           | subprogram_body
           | type_declaration
           | subtype_declaration
           | constant_declaration
           | signal_declaration
           | variable_declaration
           | file_declaration
           | alias_declaration
           | component_declaration
           | attribute_declaration
           | attribute_specification
           | configuration_specification
           | disconnection_specification
           | step_limit_specification
           | use_clause
           | group_template_declaration
           | group_declaration
           | nature_declaration
           | subnature_declaration
           | quantity_declaration
           | terminal_declaration

    block_declarative_part ::= list_33

    block_header ::= opt_37 opt_41

    block_specification ::= identifier opt_43
           | name

    block_statement ::= label_colon BLOCK opt_45 opt_46 block_header block_declarative_part BEGIN block_statement_part END BLOCK opt_47 SEMI

    block_statement_part ::= list_48

    branch_quantity_declaration ::= QUANTITY opt_49 opt_50 terminal_aspect SEMI

    break_element ::= opt_51 name ARROW expression

    break_list ::= break_element list_53

    break_selector_clause ::= FOR name USE

    break_statement ::= opt_54 BREAK opt_55 opt_57 SEMI

    case_statement ::= opt_58 CASE expression IS list_59 END CASE opt_60 SEMI

    case_statement_alternative ::= WHEN choices ARROW sequence_of_statements

    choice ::= identifier
           | discrete_range
           | simple_expression
           | OTHERS

    choices ::= choice list_62

    component_configuration ::= FOR component_specification opt_64 opt_65 END FOR SEMI

    component_declaration ::= COMPONENT identifier opt_66 opt_67 opt_68 END COMPONENT opt_69 SEMI

    component_instantiation_statement ::= label_colon instantiated_unit opt_70 opt_71 SEMI

    component_specification ::= instantiation_list COLON name

    composite_nature_definition ::= array_nature_definition
           | record_nature_definition

    composite_type_definition ::= array_type_definition
           | record_type_definition

    concurrent_assertion_statement ::= opt_72 opt_73 assertion SEMI

    concurrent_break_statement ::= opt_74 BREAK opt_75 opt_76 opt_78 SEMI

    concurrent_procedure_call_statement ::= opt_79 opt_80 procedure_call SEMI

    concurrent_signal_assignment_statement ::= opt_81 opt_82 grp_83

    condition ::= expression

    condition_clause ::= UNTIL condition

    conditional_signal_assignment ::= target LE opts conditional_waveforms SEMI

    conditional_waveforms ::= waveform opt_87

    configuration_declaration ::= CONFIGURATION identifier OF name IS configuration_declarative_part block_configuration END opt_88 opt_89 SEMI

    configuration_declarative_item ::= use_clause
           | attribute_specification
           | group_declaration

    configuration_declarative_part ::= list_90

    configuration_item ::= block_configuration
           | component_configuration

    configuration_specification ::= FOR component_specification binding_indication SEMI

    constant_declaration ::= CONSTANT identifier_list COLON subtype_indication opt_92 SEMI

    constrained_array_definition ::= ARRAY index_constraint OF subtype_indication

    constrained_nature_definition ::= ARRAY index_constraint OF subnature_indication

    constraint ::= range_constraint
           | index_constraint

    context_clause ::= list_93

    context_item ::= library_clause
           | use_clause

    delay_mechanism ::= TRANSPORT
           | opt_95 INERTIAL

    design_file ::= list_96

    design_unit ::= context_clause library_unit

    designator ::= identifier
           | STRING_LITERAL

    direction ::= TO
           | DOWNTO

    disconnection_specification ::= DISCONNECT guarded_signal_specification AFTER expression SEMI

    discrete_range ::= range_decl
           | subtype_indication

    element_association ::= opt_98 expression

    element_declaration ::= identifier_list COLON element_subtype_definition SEMI

    element_subnature_definition ::= subnature_indication

    element_subtype_definition ::= subtype_indication

    entity_aspect ::= ENTITY name opt_100
           | CONFIGURATION name
           | OPEN

    entity_class ::= ENTITY
           | ARCHITECTURE
           | CONFIGURATION
           | PROCEDURE
           | FUNCTION
           | PACKAGE
           | TYPE
           | SUBTYPE
           | CONSTANT
           | SIGNAL
           | VARIABLE
           | COMPONENT
           | LABEL
           | LITERAL
           | UNITS
           | GROUP
           | FILE
           | NATURE
           | SUBNATURE
           | QUANTITY
           | TERMINAL

    entity_class_entry ::= entity_class opt_101

    entity_class_entry_list ::= entity_class_entry list_103

    entity_declaration ::= ENTITY identifier IS entity_header entity_declarative_part opt_105 END opt_106 opt_107 SEMI

    entity_declarative_item ::= subprogram_declaration
           | subprogram_body
           | type_declaration
           | subtype_declaration
           | constant_declaration
           | signal_declaration
           | variable_declaration
           | file_declaration
           | alias_declaration
           | attribute_declaration
           | attribute_specification
           | disconnection_specification
           | step_limit_specification
           | use_clause
           | group_template_declaration
           | group_declaration
           | nature_declaration
           | subnature_declaration
           | quantity_declaration
           | terminal_declaration

    entity_declarative_part ::= list_108

    entity_designator ::= entity_tag opt_109

    entity_header ::= opt_110 opt_111

    entity_name_list ::= entity_designator list_113
           | OTHERS
           | ALL

    entity_specification ::= entity_name_list COLON entity_class

    entity_statement ::= concurrent_assertion_statement
           | process_statement
           | concurrent_procedure_call_statement

    entity_statement_part ::= list_114

    entity_tag ::= identifier
           | CHARACTER_LITERAL
           | STRING_LITERAL

    enumeration_literal ::= identifier
           | CHARACTER_LITERAL

    enumeration_type_definition ::= LPAREN enumeration_literal list_116 RPAREN

    exit_statement ::= opt_117 EXIT opt_118 opt_120 SEMI

    expression ::= relation list_122

    factor ::= primary opt_124
           | ABS primary
           | NOT primary

    file_declaration ::= FILE identifier_list COLON subtype_indication opt_125 SEMI

    file_logical_name ::= expression

    file_open_information ::= opt_127 IS file_logical_name

    file_type_definition ::= FILE OF subtype_indication

    formal_parameter_list ::= interface_list

    formal_part ::= identifier
           | identifier LPAREN explicit_range RPAREN

    free_quantity_declaration ::= QUANTITY identifier_list COLON subtype_indication opt_129 SEMI

    generate_statement ::= label_colon generation_scheme GENERATE opt_132 list_133 END GENERATE opt_134 SEMI

    generation_scheme ::= FOR parameter_specification
           | IF condition

    generic_clause ::= GENERIC LPAREN generic_list RPAREN SEMI

    generic_list ::= interface_constant_declaration list_136

    generic_map_aspect ::= GENERIC MAP LPAREN association_list RPAREN

    group_constituent ::= name
           | CHARACTER_LITERAL

    group_constituent_list ::= group_constituent list_138

    group_declaration ::= GROUP label_colon name LPAREN group_constituent_list RPAREN SEMI

    group_template_declaration ::= GROUP identifier IS LPAREN entity_class_entry_list RPAREN SEMI

    guarded_signal_specification ::= signal_list COLON name

    identifier ::= BASIC_IDENTIFIER
           | EXTENDED_IDENTIFIER

    identifier_list ::= identifier list_140

    if_statement ::= opt_141 IF condition THEN sequence_of_statements list_143 opt_145 END IF opt_146 SEMI

    index_constraint ::= LPAREN discrete_range list_148 RPAREN

    index_specification ::= discrete_range
           | expression

    index_subtype_definition ::= name RANGE BOX

    instantiated_unit ::= opt_149 name
           | ENTITY name opt_151
           | CONFIGURATION name

    instantiation_list ::= identifier list_153
           | OTHERS
           | ALL

    interface_constant_declaration ::= opt_154 identifier_list COLON opt_155 subtype_indication opt_157

    interface_declaration ::= interface_constant_declaration
           | interface_signal_declaration
           | interface_variable_declaration
           | interface_file_declaration
           | interface_terminal_declaration
           | interface_quantity_declaration

    interface_element ::= interface_declaration

    interface_file_declaration ::= FILE identifier_list COLON subtype_indication

    interface_signal_list ::= interface_signal_declaration list_159

    interface_port_list ::= interface_port_declaration list_161

    interface_list ::= interface_element list_163

    interface_quantity_declaration ::= QUANTITY identifier_list COLON opt_165 subtype_indication opt_167

    interface_port_declaration ::= identifier_list COLON opt_168 subtype_indication opt_169 opt_171

    interface_signal_declaration ::= SIGNAL identifier_list COLON opt_172 subtype_indication opt_173 opt_175

    interface_terminal_declaration ::= TERMINAL identifier_list COLON subnature_indication

    interface_variable_declaration ::= opt_176 identifier_list COLON opt_177 subtype_indication opt_179

    iteration_scheme ::= WHILE condition
           | FOR parameter_specification

    label_colon ::= identifier COLON

    library_clause ::= LIBRARY logical_name_list SEMI

    library_unit ::= secondary_unit
           | primary_unit

    literal ::= NULL_
           | BIT_STRING_LITERAL
           | STRING_LITERAL
           | enumeration_literal
           | numeric_literal

    logical_name ::= identifier

    logical_name_list ::= logical_name list_181

    logical_operator ::= AND
           | OR
           | NAND
           | NOR
           | XOR
           | XNOR

    loop_statement ::= opt_182 opt_183 LOOP sequence_of_statements END LOOP opt_184 SEMI

    signal_mode ::= IN
           | OUT
           | INOUT
           | BUFFER
           | LINKAGE

    multiplying_operator ::= MUL
           | DIV
           | MOD
           | REM

    name ::= grp_185 list_186

    name_part ::= selected_name_part
           | function_call_or_indexed_name_part
           | slice_name_part
           | attribute_name_part

    selected_name ::= identifier list_188

    selected_name_part ::= list_190

    function_call_or_indexed_name_part ::= LPAREN actual_parameter_part RPAREN

    slice_name_part ::= LPAREN discrete_range RPAREN

    attribute_name_part ::= opt_191 APOSTROPHE attribute_designator opt_193

    nature_declaration ::= NATURE identifier IS nature_definition SEMI

    nature_definition ::= scalar_nature_definition
           | composite_nature_definition

    nature_element_declaration ::= identifier_list COLON element_subnature_definition

    next_statement ::= opt_194 NEXT opt_195 opt_197 SEMI

    numeric_literal ::= abstract_literal
           | physical_literal

    object_declaration ::= constant_declaration
           | signal_declaration
           | variable_declaration
           | file_declaration
           | terminal_declaration
           | quantity_declaration

    opts ::= opt_198 opt_199

    package_body ::= PACKAGE BODY identifier IS package_body_declarative_part END opt_201 opt_202 SEMI

    package_body_declarative_item ::= subprogram_declaration
           | subprogram_body
           | type_declaration
           | subtype_declaration
           | constant_declaration
           | variable_declaration
           | file_declaration
           | alias_declaration
           | use_clause
           | group_template_declaration
           | group_declaration

    package_body_declarative_part ::= list_203

    package_declaration ::= PACKAGE identifier IS package_declarative_part END opt_204 opt_205 SEMI

    package_declarative_item ::= subprogram_declaration
           | subprogram_body
           | type_declaration
           | subtype_declaration
           | constant_declaration
           | signal_declaration
           | variable_declaration
           | file_declaration
           | alias_declaration
           | component_declaration
           | attribute_declaration
           | attribute_specification
           | disconnection_specification
           | use_clause
           | group_template_declaration
           | group_declaration
           | nature_declaration
           | subnature_declaration
           | terminal_declaration

    package_declarative_part ::= list_206

    parameter_specification ::= identifier IN discrete_range

    physical_literal ::= abstract_literal identifier

    physical_type_definition ::= range_constraint UNITS base_unit_declaration list_207 END UNITS opt_208

    port_clause ::= PORT LPAREN port_list RPAREN SEMI

    port_list ::= interface_port_list

    port_map_aspect ::= PORT MAP LPAREN association_list RPAREN

    primary ::= literal
           | qualified_expression
           | LPAREN expression RPAREN
           | allocator
           | aggregate
           | name

    primary_unit ::= entity_declaration
           | configuration_declaration
           | package_declaration

    procedural_declarative_item ::= subprogram_declaration
           | subprogram_body
           | type_declaration
           | subtype_declaration
           | constant_declaration
           | variable_declaration
           | alias_declaration
           | attribute_declaration
           | attribute_specification
           | use_clause
           | group_template_declaration
           | group_declaration

    procedural_declarative_part ::= list_209

    procedural_statement_part ::= list_210

    procedure_call ::= selected_name opt_212

    procedure_call_statement ::= opt_213 procedure_call SEMI

    process_declarative_item ::= subprogram_declaration
           | subprogram_body
           | type_declaration
           | subtype_declaration
           | constant_declaration
           | variable_declaration
           | file_declaration
           | alias_declaration
           | attribute_declaration
           | attribute_specification
           | use_clause
           | group_template_declaration
           | group_declaration

    process_declarative_part ::= list_214

    process_statement ::= opt_215 opt_216 PROCESS opt_218 opt_219 process_declarative_part BEGIN process_statement_part END opt_220 PROCESS opt_221 SEMI

    process_statement_part ::= list_222

    qualified_expression ::= subtype_indication APOSTROPHE grp_223

    quantity_declaration ::= free_quantity_declaration
           | branch_quantity_declaration
           | source_quantity_declaration

    quantity_list ::= name list_225
           | OTHERS
           | ALL

    quantity_specification ::= quantity_list COLON name

    range_decl ::= explicit_range
           | name

    explicit_range ::= simple_expression opt_227

    range_constraint ::= RANGE range_decl

    record_nature_definition ::= RECORD list_228 END RECORD opt_229

    record_type_definition ::= RECORD list_230 END RECORD opt_231

    relation ::= shift_expression opt_233

    relational_operator ::= EQ
           | NEQ
           | LOWERTHAN
           | LE
           | GREATERTHAN
           | GE

    report_statement ::= opt_234 REPORT expression opt_236 SEMI

    return_statement ::= opt_237 RETURN opt_238 SEMI

    scalar_nature_definition ::= name ACROSS name THROUGH name REFERENCE

    scalar_type_definition ::= physical_type_definition
           | enumeration_type_definition
           | range_constraint

    secondary_unit ::= architecture_body
           | package_body

    secondary_unit_declaration ::= identifier EQ physical_literal SEMI

    selected_signal_assignment ::= WITH expression SELECT target LE opts selected_waveforms SEMI

    selected_waveforms ::= waveform WHEN choices list_240

    sensitivity_clause ::= ON sensitivity_list

    sensitivity_list ::= name list_242

    sequence_of_statements ::= list_243

    sequential_statement ::= wait_statement
           | assertion_statement
           | report_statement
           | signal_assignment_statement
           | variable_assignment_statement
           | if_statement
           | case_statement
           | loop_statement
           | next_statement
           | exit_statement
           | return_statement
           | opt_244 NULL_ SEMI
           | break_statement
           | procedure_call_statement

    shift_expression ::= simple_expression opt_246

    shift_operator ::= SLL
           | SRL
           | SLA
           | SRA
           | ROL
           | ROR

    signal_assignment_statement ::= opt_247 target LE opt_248 waveform SEMI

    signal_declaration ::= SIGNAL identifier_list COLON subtype_indication opt_249 opt_251 SEMI

    signal_kind ::= REGISTER
           | BUS

    signal_list ::= name list_253
           | OTHERS
           | ALL

    signature ::= LBRACKET opt_257 opt_259 RBRACKET

    simple_expression ::= opt_261 term list_263

    simple_simultaneous_statement ::= opt_264 simple_expression ASSIGN simple_expression opt_265 SEMI

    simultaneous_alternative ::= WHEN choices ARROW simultaneous_statement_part

    simultaneous_case_statement ::= opt_266 CASE expression USE list_267 END CASE opt_268 SEMI

    simultaneous_if_statement ::= opt_269 IF condition USE simultaneous_statement_part list_271 opt_273 END USE opt_274 SEMI

    simultaneous_procedural_statement ::= opt_275 PROCEDURAL opt_276 procedural_declarative_part BEGIN procedural_statement_part END PROCEDURAL opt_277 SEMI

    simultaneous_statement ::= simple_simultaneous_statement
           | simultaneous_if_statement
           | simultaneous_case_statement
           | simultaneous_procedural_statement
           | opt_278 NULL_ SEMI

    simultaneous_statement_part ::= list_279

    source_aspect ::= SPECTRUM simple_expression COMMA simple_expression
           | NOISE simple_expression

    source_quantity_declaration ::= QUANTITY identifier_list COLON subtype_indication source_aspect SEMI

    step_limit_specification ::= LIMIT quantity_specification WITH expression SEMI

    subnature_declaration ::= SUBNATURE identifier IS subnature_indication SEMI

    subnature_indication ::= name opt_280 opt_282

    subprogram_body ::= subprogram_specification IS subprogram_declarative_part BEGIN subprogram_statement_part END opt_283 opt_284 SEMI

    subprogram_declaration ::= subprogram_specification SEMI

    subprogram_declarative_item ::= subprogram_declaration
           | subprogram_body
           | type_declaration
           | subtype_declaration
           | constant_declaration
           | variable_declaration
           | file_declaration
           | alias_declaration
           | attribute_declaration
           | attribute_specification
           | use_clause
           | group_template_declaration
           | group_declaration

    subprogram_declarative_part ::= list_285

    subprogram_kind ::= PROCEDURE
           | FUNCTION

    subprogram_specification ::= procedure_specification
           | function_specification

    procedure_specification ::= PROCEDURE designator opt_287

    function_specification ::= opt_289 FUNCTION designator opt_291 RETURN subtype_indication

    subprogram_statement_part ::= list_292

    subtype_declaration ::= SUBTYPE identifier IS subtype_indication SEMI

    subtype_indication ::= selected_name opt_293 opt_294 opt_295

    suffix ::= identifier
           | CHARACTER_LITERAL
           | STRING_LITERAL
           | ALL

    target ::= name
           | aggregate

    term ::= factor list_297

    terminal_aspect ::= name opt_299

    terminal_declaration ::= TERMINAL identifier_list COLON subnature_indication SEMI

    through_aspect ::= identifier_list opt_300 opt_302 THROUGH

    timeout_clause ::= FOR expression

    tolerance_aspect ::= TOLERANCE expression

    type_declaration ::= TYPE identifier opt_304 SEMI

    type_definition ::= scalar_type_definition
           | composite_type_definition
           | access_type_definition
           | file_type_definition

    unconstrained_array_definition ::= ARRAY LPAREN index_subtype_definition list_306 RPAREN OF subtype_indication

    unconstrained_nature_definition ::= ARRAY LPAREN index_subtype_definition list_308 RPAREN OF subnature_indication

    use_clause ::= USE selected_name list_310 SEMI

    variable_assignment_statement ::= opt_311 target VARASGN expression SEMI

    variable_declaration ::= opt_312 VARIABLE identifier_list COLON subtype_indication opt_314 SEMI

    wait_statement ::= opt_315 WAIT opt_316 opt_317 opt_318 SEMI

    waveform ::= waveform_element list_320
           | UNAFFECTED

    waveform_element ::= expression opt_322

    opt_1 ::= tolerance_aspect | $empty

    seq_2 ::= VARASGN expression

    opt_3 ::= seq_2 | $empty

    seq_4 ::= COMMA element_association

    list_5 ::= $empty | list_5 seq_4

    seq_6 ::= COLON alias_indication

    opt_7 ::= seq_6 | $empty

    opt_8 ::= signature | $empty

    grp_9 ::= qualified_expression | subtype_indication

    opt_10 ::= ARCHITECTURE | $empty

    opt_11 ::= identifier | $empty

    list_12 ::= $empty | list_12 block_declarative_item

    opt_13 ::= label_colon | $empty

    opt_14 ::= label_colon | $empty

    opt_15 ::= label_colon | $empty

    opt_16 ::= POSTPONED | $empty

    list_17 ::= $empty | list_17 architecture_statement

    seq_18 ::= REPORT expression

    opt_19 ::= seq_18 | $empty

    seq_20 ::= SEVERITY expression

    opt_21 ::= seq_20 | $empty

    opt_22 ::= label_colon | $empty

    seq_23 ::= formal_part ARROW

    opt_24 ::= seq_23 | $empty

    seq_25 ::= COMMA association_element

    list_26 ::= $empty | list_26 seq_25

    seq_27 ::= USE entity_aspect

    opt_28 ::= seq_27 | $empty

    opt_29 ::= generic_map_aspect | $empty

    opt_30 ::= port_map_aspect | $empty

    list_31 ::= $empty | list_31 use_clause

    list_32 ::= $empty | list_32 configuration_item

    list_33 ::= $empty | list_33 block_declarative_item

    seq_34 ::= generic_map_aspect SEMI

    opt_35 ::= seq_34 | $empty

    seq_36 ::= generic_clause opt_35

    opt_37 ::= seq_36 | $empty

    seq_38 ::= port_map_aspect SEMI

    opt_39 ::= seq_38 | $empty

    seq_40 ::= port_clause opt_39

    opt_41 ::= seq_40 | $empty

    seq_42 ::= LPAREN index_specification RPAREN

    opt_43 ::= seq_42 | $empty

    seq_44 ::= LPAREN expression RPAREN

    opt_45 ::= seq_44 | $empty

    opt_46 ::= IS | $empty

    opt_47 ::= identifier | $empty

    list_48 ::= $empty | list_48 architecture_statement

    opt_49 ::= across_aspect | $empty

    opt_50 ::= through_aspect | $empty

    opt_51 ::= break_selector_clause | $empty

    seq_52 ::= COMMA break_element

    list_53 ::= $empty | list_53 seq_52

    opt_54 ::= label_colon | $empty

    opt_55 ::= break_list | $empty

    seq_56 ::= WHEN condition

    opt_57 ::= seq_56 | $empty

    opt_58 ::= label_colon | $empty

    list_59 ::= case_statement_alternative | list_59 case_statement_alternative

    opt_60 ::= identifier | $empty

    seq_61 ::= BAR choice

    list_62 ::= $empty | list_62 seq_61

    seq_63 ::= binding_indication SEMI

    opt_64 ::= seq_63 | $empty

    opt_65 ::= block_configuration | $empty

    opt_66 ::= IS | $empty

    opt_67 ::= generic_clause | $empty

    opt_68 ::= port_clause | $empty

    opt_69 ::= identifier | $empty

    opt_70 ::= generic_map_aspect | $empty

    opt_71 ::= port_map_aspect | $empty

    opt_72 ::= label_colon | $empty

    opt_73 ::= POSTPONED | $empty

    opt_74 ::= label_colon | $empty

    opt_75 ::= break_list | $empty

    opt_76 ::= sensitivity_clause | $empty

    seq_77 ::= WHEN condition

    opt_78 ::= seq_77 | $empty

    opt_79 ::= label_colon | $empty

    opt_80 ::= POSTPONED | $empty

    opt_81 ::= label_colon | $empty

    opt_82 ::= POSTPONED | $empty

    grp_83 ::= conditional_signal_assignment | selected_signal_assignment

    seq_84 ::= ELSE conditional_waveforms

    opt_85 ::= seq_84 | $empty

    seq_86 ::= WHEN condition opt_85

    opt_87 ::= seq_86 | $empty

    opt_88 ::= CONFIGURATION | $empty

    opt_89 ::= identifier | $empty

    list_90 ::= $empty | list_90 configuration_declarative_item

    seq_91 ::= VARASGN expression

    opt_92 ::= seq_91 | $empty

    list_93 ::= $empty | list_93 context_item

    seq_94 ::= REJECT expression

    opt_95 ::= seq_94 | $empty

    list_96 ::= $empty | list_96 design_unit

    seq_97 ::= choices ARROW

    opt_98 ::= seq_97 | $empty

    seq_99 ::= LPAREN identifier RPAREN

    opt_100 ::= seq_99 | $empty

    opt_101 ::= BOX | $empty

    seq_102 ::= COMMA entity_class_entry

    list_103 ::= $empty | list_103 seq_102

    seq_104 ::= BEGIN entity_statement_part

    opt_105 ::= seq_104 | $empty

    opt_106 ::= ENTITY | $empty

    opt_107 ::= identifier | $empty

    list_108 ::= $empty | list_108 entity_declarative_item

    opt_109 ::= signature | $empty

    opt_110 ::= generic_clause | $empty

    opt_111 ::= port_clause | $empty

    seq_112 ::= COMMA entity_designator

    list_113 ::= $empty | list_113 seq_112

    list_114 ::= $empty | list_114 entity_statement

    seq_115 ::= COMMA enumeration_literal

    list_116 ::= $empty | list_116 seq_115

    opt_117 ::= label_colon | $empty

    opt_118 ::= identifier | $empty

    seq_119 ::= WHEN condition

    opt_120 ::= seq_119 | $empty

    seq_121 ::= logical_operator relation

    list_122 ::= $empty | list_122 seq_121

    seq_123 ::= DOUBLESTAR primary

    opt_124 ::= seq_123 | $empty

    opt_125 ::= file_open_information | $empty

    seq_126 ::= OPEN expression

    opt_127 ::= seq_126 | $empty

    seq_128 ::= VARASGN expression

    opt_129 ::= seq_128 | $empty

    list_130 ::= $empty | list_130 block_declarative_item

    seq_131 ::= list_130 BEGIN

    opt_132 ::= seq_131 | $empty

    list_133 ::= $empty | list_133 architecture_statement

    opt_134 ::= identifier | $empty

    seq_135 ::= SEMI interface_constant_declaration

    list_136 ::= $empty | list_136 seq_135

    seq_137 ::= COMMA group_constituent

    list_138 ::= $empty | list_138 seq_137

    seq_139 ::= COMMA identifier

    list_140 ::= $empty | list_140 seq_139

    opt_141 ::= label_colon | $empty

    seq_142 ::= ELSIF condition THEN sequence_of_statements

    list_143 ::= $empty | list_143 seq_142

    seq_144 ::= ELSE sequence_of_statements

    opt_145 ::= seq_144 | $empty

    opt_146 ::= identifier | $empty

    seq_147 ::= COMMA discrete_range

    list_148 ::= $empty | list_148 seq_147

    opt_149 ::= COMPONENT | $empty

    seq_150 ::= LPAREN identifier RPAREN

    opt_151 ::= seq_150 | $empty

    seq_152 ::= COMMA identifier

    list_153 ::= $empty | list_153 seq_152

    opt_154 ::= CONSTANT | $empty

    opt_155 ::= IN | $empty

    seq_156 ::= VARASGN expression

    opt_157 ::= seq_156 | $empty

    seq_158 ::= SEMI interface_signal_declaration

    list_159 ::= $empty | list_159 seq_158

    seq_160 ::= SEMI interface_port_declaration

    list_161 ::= $empty | list_161 seq_160

    seq_162 ::= SEMI interface_element

    list_163 ::= $empty | list_163 seq_162

    grp_164 ::= IN | OUT

    opt_165 ::= grp_164 | $empty

    seq_166 ::= VARASGN expression

    opt_167 ::= seq_166 | $empty

    opt_168 ::= signal_mode | $empty

    opt_169 ::= BUS | $empty

    seq_170 ::= VARASGN expression

    opt_171 ::= seq_170 | $empty

    opt_172 ::= signal_mode | $empty

    opt_173 ::= BUS | $empty

    seq_174 ::= VARASGN expression

    opt_175 ::= seq_174 | $empty

    opt_176 ::= VARIABLE | $empty

    opt_177 ::= signal_mode | $empty

    seq_178 ::= VARASGN expression

    opt_179 ::= seq_178 | $empty

    seq_180 ::= COMMA logical_name

    list_181 ::= $empty | list_181 seq_180

    opt_182 ::= label_colon | $empty

    opt_183 ::= iteration_scheme | $empty

    opt_184 ::= identifier | $empty

    grp_185 ::= identifier | STRING_LITERAL

    list_186 ::= $empty | list_186 name_part

    seq_187 ::= DOT suffix

    list_188 ::= $empty | list_188 seq_187

    seq_189 ::= DOT suffix

    list_190 ::= seq_189 | list_190 seq_189

    opt_191 ::= signature | $empty

    seq_192 ::= LPAREN expression RPAREN

    opt_193 ::= seq_192 | $empty

    opt_194 ::= label_colon | $empty

    opt_195 ::= identifier | $empty

    seq_196 ::= WHEN condition

    opt_197 ::= seq_196 | $empty

    opt_198 ::= GUARDED | $empty

    opt_199 ::= delay_mechanism | $empty

    seq_200 ::= PACKAGE BODY

    opt_201 ::= seq_200 | $empty

    opt_202 ::= identifier | $empty

    list_203 ::= $empty | list_203 package_body_declarative_item

    opt_204 ::= PACKAGE | $empty

    opt_205 ::= identifier | $empty

    list_206 ::= $empty | list_206 package_declarative_item

    list_207 ::= $empty | list_207 secondary_unit_declaration

    opt_208 ::= identifier | $empty

    list_209 ::= $empty | list_209 procedural_declarative_item

    list_210 ::= $empty | list_210 sequential_statement

    seq_211 ::= LPAREN actual_parameter_part RPAREN

    opt_212 ::= seq_211 | $empty

    opt_213 ::= label_colon | $empty

    list_214 ::= $empty | list_214 process_declarative_item

    opt_215 ::= label_colon | $empty

    opt_216 ::= POSTPONED | $empty

    seq_217 ::= LPAREN sensitivity_list RPAREN

    opt_218 ::= seq_217 | $empty

    opt_219 ::= IS | $empty

    opt_220 ::= POSTPONED | $empty

    opt_221 ::= identifier | $empty

    list_222 ::= $empty | list_222 sequential_statement

    grp_223 ::= aggregate | LPAREN expression RPAREN

    seq_224 ::= COMMA name

    list_225 ::= $empty | list_225 seq_224

    seq_226 ::= direction simple_expression

    opt_227 ::= seq_226 | $empty

    list_228 ::= nature_element_declaration | list_228 nature_element_declaration

    opt_229 ::= identifier | $empty

    list_230 ::= element_declaration | list_230 element_declaration

    opt_231 ::= identifier | $empty

    seq_232 ::= relational_operator shift_expression

    opt_233 ::= seq_232 | $empty

    opt_234 ::= label_colon | $empty

    seq_235 ::= SEVERITY expression

    opt_236 ::= seq_235 | $empty

    opt_237 ::= label_colon | $empty

    opt_238 ::= expression | $empty

    seq_239 ::= COMMA waveform WHEN choices

    list_240 ::= $empty | list_240 seq_239

    seq_241 ::= COMMA name

    list_242 ::= $empty | list_242 seq_241

    list_243 ::= $empty | list_243 sequential_statement

    opt_244 ::= label_colon | $empty

    seq_245 ::= shift_operator simple_expression

    opt_246 ::= seq_245 | $empty

    opt_247 ::= label_colon | $empty

    opt_248 ::= delay_mechanism | $empty

    opt_249 ::= signal_kind | $empty

    seq_250 ::= VARASGN expression

    opt_251 ::= seq_250 | $empty

    seq_252 ::= COMMA name

    list_253 ::= $empty | list_253 seq_252

    seq_254 ::= COMMA name

    list_255 ::= $empty | list_255 seq_254

    seq_256 ::= name list_255

    opt_257 ::= seq_256 | $empty

    seq_258 ::= RETURN name

    opt_259 ::= seq_258 | $empty

    grp_260 ::= PLUS | MINUS

    opt_261 ::= grp_260 | $empty

    seq_262 ::= adding_operator term

    list_263 ::= $empty | list_263 seq_262

    opt_264 ::= label_colon | $empty

    opt_265 ::= tolerance_aspect | $empty

    opt_266 ::= label_colon | $empty

    list_267 ::= simultaneous_alternative | list_267 simultaneous_alternative

    opt_268 ::= identifier | $empty

    opt_269 ::= label_colon | $empty

    seq_270 ::= ELSIF condition USE simultaneous_statement_part

    list_271 ::= $empty | list_271 seq_270

    seq_272 ::= ELSE simultaneous_statement_part

    opt_273 ::= seq_272 | $empty

    opt_274 ::= identifier | $empty

    opt_275 ::= label_colon | $empty

    opt_276 ::= IS | $empty

    opt_277 ::= identifier | $empty

    opt_278 ::= label_colon | $empty

    list_279 ::= $empty | list_279 simultaneous_statement

    opt_280 ::= index_constraint | $empty

    seq_281 ::= TOLERANCE expression ACROSS expression THROUGH

    opt_282 ::= seq_281 | $empty

    opt_283 ::= subprogram_kind | $empty

    opt_284 ::= designator | $empty

    list_285 ::= $empty | list_285 subprogram_declarative_item

    seq_286 ::= LPAREN formal_parameter_list RPAREN

    opt_287 ::= seq_286 | $empty

    grp_288 ::= PURE | IMPURE

    opt_289 ::= grp_288 | $empty

    seq_290 ::= LPAREN formal_parameter_list RPAREN

    opt_291 ::= seq_290 | $empty

    list_292 ::= $empty | list_292 sequential_statement

    opt_293 ::= selected_name | $empty

    opt_294 ::= constraint | $empty

    opt_295 ::= tolerance_aspect | $empty

    seq_296 ::= multiplying_operator factor

    list_297 ::= $empty | list_297 seq_296

    seq_298 ::= TO name

    opt_299 ::= seq_298 | $empty

    opt_300 ::= tolerance_aspect | $empty

    seq_301 ::= VARASGN expression

    opt_302 ::= seq_301 | $empty

    seq_303 ::= IS type_definition

    opt_304 ::= seq_303 | $empty

    seq_305 ::= COMMA index_subtype_definition

    list_306 ::= $empty | list_306 seq_305

    seq_307 ::= COMMA index_subtype_definition

    list_308 ::= $empty | list_308 seq_307

    seq_309 ::= COMMA selected_name

    list_310 ::= $empty | list_310 seq_309

    opt_311 ::= label_colon | $empty

    opt_312 ::= SHARED | $empty

    seq_313 ::= VARASGN expression

    opt_314 ::= seq_313 | $empty

    opt_315 ::= label_colon | $empty

    opt_316 ::= sensitivity_clause | $empty

    opt_317 ::= condition_clause | $empty

    opt_318 ::= timeout_clause | $empty

    seq_319 ::= COMMA waveform_element

    list_320 ::= $empty | list_320 seq_319

    seq_321 ::= AFTER expression

    opt_322 ::= seq_321 | $empty

%End
