-- AUTO-GENERATED from antlr/grammars-v4 vhdl/vhdl2008 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=VhdlVhdl2008Parser
%options package=lpg.grammars.vhdl.vhdl2008
%options template=dtParserTemplateF.gi
%options import_terminals=VhdlVhdl2008Lexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    design_file
%End

%Rules
    abstract_literal ::= DECIMAL_LITERAL
           | BASED_LITERAL

    access_type_definition ::= ACCESS subtype_indication

    actual_designator ::= opt_1 expression
           | name
           | subtype_indication
           | OPEN

    actual_parameter_part ::= association_list

    actual_part ::= actual_designator
           | name LPAREN actual_designator RPAREN

    adding_operator ::= PLUS
           | MINUS
           | AMPERSAND

    aggregate ::= LPAREN element_association list_3 RPAREN

    alias_declaration ::= ALIAS alias_designator opt_5 IS name opt_6 SEMI

    alias_designator ::= identifier
           | CHARACTER_LITERAL
           | STRING_LITERAL

    allocator ::= NEW subtype_indication
           | NEW qualified_expression

    architecture_body ::= ARCHITECTURE identifier OF name IS architecture_declarative_part BEGIN architecture_statement_part END opt_7 opt_8 SEMI

    architecture_declarative_part ::= list_9

    architecture_statement_part ::= list_10

    array_constraint ::= index_constraint opt_11
           | OPEN array_element_constraint

    array_element_constraint ::= element_constraint

    array_element_resolution ::= resolution_indication

    array_type_definition ::= unbounded_array_definition
           | constrained_array_definition

    assertion ::= ASSERT condition opt_13 opt_15

    assertion_statement ::= opt_16 assertion SEMI

    association_element ::= opt_18 actual_part

    association_list ::= association_element list_20

    attribute_declaration ::= ATTRIBUTE label_colon name SEMI

    attribute_designator ::= identifier
           | RANGE
           | REVERSE_RANGE
           | ACROSS
           | THROUGH
           | REFERENCE
           | TOLERANCE
           | SUBTYPE

    attribute_name ::= prefix APOSTROPHE attribute_designator opt_22

    attribute_specification ::= ATTRIBUTE attribute_designator OF entity_specification IS expression SEMI

    base ::= INTEGER

    binding_indication ::= opt_24 opt_25 opt_26

    block_configuration ::= FOR block_specification list_27 list_28 END FOR SEMI

    block_declarative_item ::= subprogram_declaration
           | subprogram_body
           | subprogram_instantiation_declaration
           | package_declaration
           | package_body
           | package_instantiation_declaration
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
           | use_clause
           | group_template_declaration
           | group_declaration

    block_declarative_part ::= list_29

    block_header ::= opt_33 opt_37

    block_specification ::= name identifier opt_39

    block_statement ::= label_colon BLOCK opt_41 opt_42 block_header block_declarative_part BEGIN block_statement_part END BLOCK opt_43 SEMI

    block_statement_part ::= list_44

    case_generate_alternative ::= WHEN opt_45 choices ARROW generate_statement_body

    case_generate_statement ::= CASE expression GENERATE case_generate_alternative list_46

    case_statement ::= opt_47 CASE opt_48 expression IS list_49 END CASE opt_50 opt_51 SEMI

    case_statement_alternative ::= WHEN choices ARROW sequence_of_statements

    choice ::= simple_expression
           | discrete_range
           | identifier
           | OTHERS

    choices ::= choice list_53

    component_configuration ::= FOR component_specification opt_55 opt_56 END FOR SEMI

    component_declaration ::= COMPONENT identifier opt_57 opt_58 opt_59 END COMPONENT opt_60 SEMI

    component_instantiation_statement ::= label_colon instantiated_unit opt_61 opt_62 SEMI

    component_specification ::= instantiation_list COLON name

    composite_type_definition ::= array_type_definition
           | record_type_definition

    concurrent_assertion_statement ::= opt_63 opt_64 assertion SEMI

    concurrent_conditional_signal_assignment ::= target LEQ opt_65 opt_66 conditional_waveforms SEMI

    concurrent_procedure_call_statement ::= opt_67 opt_68 procedure_call SEMI

    concurrent_selected_signal_assignment ::= WITH expression SELECT opt_69 target LEQ opt_70 opt_71 selected_waveforms SEMI

    concurrent_signal_assignment_statement ::= opt_72 opt_73 grp_74

    concurrent_simple_signal_assignment ::= target LEQ opt_75 opt_76 waveform SEMI

    concurrent_statement ::= block_statement
           | process_statement
           | concurrent_procedure_call_statement
           | concurrent_assertion_statement
           | concurrent_signal_assignment_statement
           | component_instantiation_statement
           | generate_statement

    condition ::= expression

    condition_clause ::= UNTIL condition

    conditional_expression ::= expression WHEN condition list_78 opt_80

    conditional_force_assignment ::= target LEQ FORCE opt_81 conditional_expression SEMI

    conditional_signal_assignment ::= conditional_waveform_assignment
           | conditional_force_assignment

    conditional_variable_assignment ::= target WALRUS conditional_expression

    conditional_waveform_assignment ::= target LEQ opt_82 conditional_waveforms SEMI

    conditional_waveforms ::= waveform opt_86

    configuration_declaration ::= CONFIGURATION identifier OF name IS configuration_declarative_part block_configuration END opt_87 opt_88 SEMI

    configuration_declarative_item ::= use_clause
           | attribute_specification
           | group_declaration

    configuration_declarative_part ::= list_89

    configuration_item ::= block_configuration
           | component_configuration

    configuration_specification ::= FOR component_specification binding_indication SEMI

    constant_declaration ::= CONSTANT identifier_list COLON subtype_indication opt_91 SEMI

    constrained_array_definition ::= ARRAY index_constraint OF subtype_indication

    constraint ::= range_constraint
           | index_constraint
           | record_constraint

    context_clause ::= list_92

    context_declaration ::= CONTEXT identifier IS context_clause END opt_93 opt_94 SEMI

    context_item ::= library_clause
           | use_clause
           | context_reference

    context_reference ::= CONTEXT selected_name list_96 SEMI

    delay_mechanism ::= TRANSPORT
           | opt_98 INERTIAL

    design_file ::= list_99

    design_unit ::= context_clause library_unit

    designator ::= identifier
           | STRING_LITERAL

    direction ::= TO
           | DOWNTO

    disconnection_specification ::= DISCONNECT guarded_signal_specification AFTER expression SEMI

    discrete_range ::= subtype_indication
           | range_decl

    element_association ::= opt_101 expression

    element_constraint ::= array_constraint
           | record_constraint

    element_declaration ::= identifier_list COLON element_subtype_definition SEMI

    element_resolution ::= array_element_resolution
           | record_resolution

    element_subtype_definition ::= subtype_indication

    entity_aspect ::= ENTITY name opt_103
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

    entity_class_entry ::= entity_class opt_104

    entity_class_entry_list ::= entity_class_entry list_106

    entity_declaration ::= ENTITY identifier IS entity_header entity_declarative_part opt_108 END opt_109 opt_110 SEMI

    entity_declarative_item ::= subprogram_declaration
           | subprogram_body
           | subprogram_instantiation_declaration
           | package_declaration
           | package_body
           | package_instantiation_declaration
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
           | use_clause
           | group_template_declaration
           | group_declaration

    entity_declarative_part ::= list_111

    entity_designator ::= entity_tag

    entity_header ::= opt_112 opt_113

    entity_name_list ::= entity_designator list_115
           | OTHERS
           | ALL

    entity_specification ::= entity_name_list COLON entity_class

    entity_statement ::= concurrent_assertion_statement
           | process_statement
           | concurrent_procedure_call_statement

    entity_statement_part ::= list_116

    entity_tag ::= identifier
           | CHARACTER_LITERAL
           | STRING_LITERAL

    enumeration_literal ::= identifier
           | CHARACTER_LITERAL

    enumeration_type_definition ::= LPAREN enumeration_literal list_118 RPAREN

    exit_statement ::= opt_119 EXIT opt_120 opt_122 SEMI

    expression ::= seq_123
           | seq_126

    factor ::= primary opt_128
           | ABS primary
           | NOT primary
           | logical_operator primary

    file_declaration ::= FILE identifier_list COLON subtype_indication opt_129 SEMI

    file_logical_name ::= expression

    file_open_information ::= opt_131 IS file_logical_name

    file_type_definition ::= FILE OF subtype_indication

    floating_type_definition ::= range_constraint

    for_generate_statement ::= FOR parameter_specification GENERATE generate_statement_body

    force_mode ::= IN
           | OUT

    formal_parameter_list ::= interface_list

    formal_part ::= name opt_133

    full_type_declaration ::= TYPE identifier IS type_definition SEMI

    function_call ::= name opt_135

    function_specification ::= opt_137 FUNCTION designator subprogram_header opt_140 RETURN name

    generate_specification ::= discrete_range
           | expression
           | identifier

    generate_statement ::= opt_141 grp_142 END GENERATE opt_143 SEMI

    generate_statement_body ::= opt_145 list_146

    generic_clause ::= GENERIC LPAREN generic_list RPAREN SEMI

    generic_list ::= interface_list

    generic_map_aspect ::= GENERIC MAP LPAREN association_list RPAREN

    graphic_character ::= EXTENDED_IDENTIFIER

    group_constituent ::= name
           | CHARACTER_LITERAL

    group_constituent_list ::= group_constituent list_148

    group_declaration ::= GROUP label_colon name LPAREN group_constituent_list RPAREN SEMI

    group_template_declaration ::= GROUP identifier IS LPAREN entity_class_entry_list RPAREN SEMI

    guarded_signal_specification ::= signal_list COLON name

    identifier ::= BASIC_IDENTIFIER
           | EXTENDED_IDENTIFIER

    identifier_list ::= identifier list_150

    if_generate_statement ::= IF condition GENERATE generate_statement_body list_152 opt_154

    if_statement ::= opt_155 IF condition THEN sequence_of_statements list_157 opt_159 END IF opt_160 SEMI

    incomplete_type_declaration ::= TYPE identifier

    index_constraint ::= LPAREN discrete_range list_162 RPAREN

    index_subtype_definition ::= name RANGE BOX

    indexed_name ::= prefix LPAREN expression list_164 RPAREN

    instantiated_unit ::= opt_165 name
           | ENTITY name opt_167
           | CONFIGURATION name

    instantiation_list ::= identifier list_169
           | OTHERS
           | ALL

    interface_constant_declaration ::= opt_170 identifier_list COLON opt_171 subtype_indication opt_173

    interface_declaration ::= interface_object_declaration
           | interface_type_declaration
           | interface_subprogram_declaration
           | interface_package_declaration

    interface_file_declaration ::= FILE identifier_list COLON subtype_indication

    interface_function_specification ::= opt_175 FUNCTION designator opt_178 RETURN name

    interface_incomplete_type_declaration ::= TYPE identifier

    interface_list ::= interface_declaration list_180

    interface_object_declaration ::= interface_constant_declaration
           | interface_signal_declaration
           | interface_variable_declaration
           | interface_file_declaration

    interface_package_declaration ::= PACKAGE identifier IS NEW name interface_package_generic_map_aspect

    interface_package_generic_map_aspect ::= generic_map_aspect
           | GENERIC MAP LPAREN grp_181 RPAREN

    interface_procedure_specification ::= PROCEDURE designator opt_184

    interface_signal_declaration ::= opt_185 identifier_list COLON opt_186 subtype_indication opt_187 opt_189

    interface_subprogram_declaration ::= interface_subprogram_specification seq_190

    interface_subprogram_default ::= name
           | BOX

    interface_subprogram_specification ::= interface_procedure_specification
           | interface_function_specification

    interface_type_declaration ::= interface_incomplete_type_declaration

    interface_variable_declaration ::= opt_191 identifier_list COLON opt_192 subtype_indication opt_194

    iteration_scheme ::= WHILE condition
           | FOR parameter_specification

    label_colon ::= identifier COLON

    library_clause ::= LIBRARY identifier_list SEMI

    library_unit ::= primary_unit
           | secondary_unit

    literal ::= numeric_literal
           | enumeration_literal
           | STRING_LITERAL
           | BIT_STRING_LITERAL
           | NULL_

    logical_operator ::= AND
           | OR
           | NAND
           | NOR
           | XOR
           | XNOR

    loop_statement ::= opt_195 opt_196 LOOP sequence_of_statements END LOOP opt_197 SEMI

    mode_rule ::= IN
           | OUT
           | INOUT
           | BUFFER
           | LINKAGE

    multiplying_operator ::= MUL
           | DIV
           | MOD
           | REM

    name ::= grp_198 list_199

    name_part ::= list_201
           | LPAREN actual_parameter_part RPAREN
           | LPAREN discrete_range RPAREN
           | APOSTROPHE attribute_designator opt_203

    next_statement ::= opt_204 NEXT opt_205 opt_207 SEMI

    null_statement ::= opt_208 NULL_ SEMI

    numeric_literal ::= abstract_literal
           | physical_literal

    object_declaration ::= constant_declaration
           | signal_declaration
           | variable_declaration
           | file_declaration

    package_body ::= PACKAGE BODY identifier IS package_body_declarative_part END opt_210 opt_211 SEMI

    package_body_declarative_item ::= subprogram_declaration
           | subprogram_body
           | subprogram_instantiation_declaration
           | package_declaration
           | package_body
           | package_instantiation_declaration
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

    package_body_declarative_part ::= list_212

    package_declaration ::= PACKAGE identifier IS package_header package_declarative_part END opt_213 opt_214 SEMI

    package_declarative_item ::= subprogram_declaration
           | subprogram_instantiation_declaration
           | package_declaration
           | package_instantiation_declaration
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

    package_declarative_part ::= list_215

    package_header ::= opt_219

    package_instantiation_declaration ::= PACKAGE identifier IS NEW name seq_220 SEMI

    parameter_specification ::= identifier IN discrete_range

    physical_literal ::= abstract_literal identifier

    physical_type_definition ::= range_constraint UNITS primary_unit_declaration list_221 END UNITS opt_222

    port_clause ::= PORT LPAREN port_list RPAREN SEMI

    port_list ::= interface_list

    port_map_aspect ::= PORT MAP LPAREN association_list RPAREN

    prefix ::= name
           | function_call

    primary ::= name
           | literal
           | aggregate
           | function_call
           | qualified_expression
           | type_conversion
           | allocator
           | LPAREN expression RPAREN

    primary_unit ::= entity_declaration
           | configuration_declaration
           | package_declaration
           | package_instantiation_declaration
           | context_declaration

    primary_unit_declaration ::= identifier SEMI

    procedure_call ::= name opt_224

    procedure_call_statement ::= opt_225 procedure_call SEMI

    procedure_specification ::= PROCEDURE designator subprogram_header opt_228

    procedural_declarative_item ::= subprogram_declaration
           | subprogram_body
           | subprogram_instantiation_declaration
           | package_declaration
           | package_body
           | package_instantiation_declaration
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

    procedural_statement_part ::= list_229

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

    process_declarative_part ::= list_230

    process_sensitivity_list ::= ALL
           | sensitivity_list

    process_statement ::= opt_231 opt_232 PROCESS opt_234 opt_235 process_declarative_part BEGIN process_statement_part END opt_236 PROCESS opt_237 SEMI

    process_statement_part ::= list_238

    protected_type_body ::= PROTECTED BODY protected_type_body_declarative_part END PROTECTED BODY opt_239

    protected_type_body_declarative_item ::= subprogram_declaration
           | subprogram_body
           | subprogram_instantiation_declaration
           | package_declaration
           | package_body
           | package_instantiation_declaration
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

    protected_type_body_declarative_part ::= opt_240

    protected_type_declaration ::= PROTECTED protected_type_declarative_part END PROTECTED opt_241

    protected_type_declarative_item ::= subprogram_declaration
           | subprogram_instantiation_declaration
           | attribute_specification
           | use_clause

    protected_type_declarative_part ::= opt_242

    protected_type_definition ::= protected_type_declaration
           | protected_type_body

    qualified_expression ::= name APOSTROPHE grp_243

    range_decl ::= attribute_name
           | seq_244

    range_constraint ::= RANGE range_decl

    record_constraint ::= LPAREN record_element_constraint list_246 RPAREN

    record_element_constraint ::= identifier element_constraint

    record_element_resolution ::= identifier resolution_indication

    record_resolution ::= record_element_resolution list_248

    record_type_definition ::= RECORD list_249 END RECORD opt_250

    relation ::= shift_expression opt_252

    relational_operator ::= EQ
           | NEQ
           | LESSTHAN
           | LEQ
           | GREATERTHAN
           | GEQ
           | CONDITION_EQ
           | CONDITION_NEQ
           | CONDITION_LESSTHAN
           | CONDITION_LEQ
           | CONDITION_GREATERTHAN
           | CONDITION_GEQ

    report_statement ::= opt_253 REPORT expression opt_255 SEMI

    resolution_indication ::= name
           | seq_256

    return_statement ::= opt_257 RETURN opt_258 SEMI

    scalar_type_definition ::= enumeration_type_definition
           | range_constraint
           | physical_type_definition

    secondary_unit ::= architecture_body
           | package_body

    secondary_unit_declaration ::= identifier EQ physical_literal SEMI

    selected_expressions ::= list_260 expression WHEN choices

    selected_force_assignment ::= WITH expression SELECT opt_261 target LEQ FORCE opt_262 selected_expressions SEMI

    selected_name ::= prefix DOT suffix

    selected_signal_assignment ::= selected_waveform_assignment
           | selected_force_assignment

    selected_variable_assignment ::= WITH expression SELECT opt_263 target WALRUS selected_expressions SEMI

    selected_waveform_assignment ::= WITH expression SELECT opt_264 target LEQ opt_265 selected_waveforms SEMI

    selected_waveforms ::= waveform WHEN choices list_267

    sensitivity_clause ::= ON sensitivity_list

    sensitivity_list ::= name list_269

    sequence_of_statements ::= list_270

    sequential_statement ::= wait_statement
           | assertion_statement
           | report_statement
           | signal_assignment_statement
           | variable_assignment_statement
           | procedure_call_statement
           | if_statement
           | case_statement
           | loop_statement
           | next_statement
           | exit_statement
           | return_statement
           | null_statement

    shift_expression ::= simple_expression opt_272

    shift_operator ::= SLL
           | SRL
           | SLA
           | SRA
           | ROL
           | ROR

    signal_assignment_statement ::= opt_273 grp_274

    signal_declaration ::= SIGNAL identifier_list COLON subtype_indication opt_275 opt_277 SEMI

    signal_kind ::= REGISTER
           | BUS

    signal_list ::= name list_279
           | OTHERS
           | ALL

    signature ::= LBRACKET seq_282 opt_284 RBRACKET

    simple_expression ::= opt_286 term list_288

    simple_force_assignment ::= opt_289 expression

    simple_release_assignment ::= opt_290

    simple_signal_assignment ::= target LEQ grp_291 SEMI

    simple_waveform_assignment ::= opt_292 waveform

    simple_variable_assignment ::= target WALRUS expression SEMI

    slice_name ::= prefix LPAREN discrete_range RPAREN

    subprogram_body ::= subprogram_specification IS subprogram_declarative_part BEGIN subprogram_statement_part END opt_293 opt_294 SEMI

    subprogram_declaration ::= subprogram_specification SEMI

    subprogram_declarative_item ::= subprogram_declaration
           | subprogram_body
           | subprogram_instantiation_declaration
           | package_declaration
           | package_body
           | package_instantiation_declaration
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

    subprogram_declarative_part ::= list_295

    subprogram_header ::= opt_297

    subprogram_instantiation_declaration ::= subprogram_kind identifier IS NEW name generic_map_aspect SEMI

    subprogram_kind ::= PROCEDURE
           | FUNCTION

    subprogram_specification ::= procedure_specification
           | function_specification

    subprogram_statement_part ::= list_298

    subtype_declaration ::= SUBTYPE identifier IS subtype_indication SEMI

    subtype_indication ::= opt_299 name opt_300

    suffix ::= identifier
           | CHARACTER_LITERAL
           | STRING_LITERAL
           | ALL

    target ::= name
           | aggregate

    term ::= factor list_302

    timeout_clause ::= FOR expression

    tool_directive ::= BACKTICK identifier list_303

    type_conversion ::= name LPAREN expression RPAREN

    type_declaration ::= full_type_declaration
           | incomplete_type_declaration

    type_definition ::= scalar_type_definition
           | composite_type_definition
           | access_type_definition
           | file_type_definition
           | protected_type_definition

    unbounded_array_definition ::= ARRAY LPAREN index_subtype_definition list_305 RPAREN OF subtype_indication

    use_clause ::= USE selected_name list_307 SEMI

    variable_assignment_statement ::= opt_308 grp_309

    variable_declaration ::= opt_310 VARIABLE identifier_list COLON subtype_indication opt_312 SEMI

    wait_statement ::= opt_313 WAIT opt_314 opt_315 opt_316 SEMI

    waveform ::= waveform_element list_318
           | UNAFFECTED

    waveform_element ::= expression opt_320
           | NULL_ opt_322

    opt_1 ::= INERTIAL | $empty

    seq_2 ::= COMMA element_association

    list_3 ::= $empty | list_3 seq_2

    seq_4 ::= COLON subtype_indication

    opt_5 ::= seq_4 | $empty

    opt_6 ::= signature | $empty

    opt_7 ::= ARCHITECTURE | $empty

    opt_8 ::= identifier | $empty

    list_9 ::= $empty | list_9 block_declarative_item

    list_10 ::= $empty | list_10 concurrent_statement

    opt_11 ::= array_element_constraint | $empty

    seq_12 ::= REPORT expression

    opt_13 ::= seq_12 | $empty

    seq_14 ::= SEVERITY expression

    opt_15 ::= seq_14 | $empty

    opt_16 ::= label_colon | $empty

    seq_17 ::= formal_part ARROW

    opt_18 ::= seq_17 | $empty

    seq_19 ::= COMMA association_element

    list_20 ::= $empty | list_20 seq_19

    seq_21 ::= LPAREN expression RPAREN

    opt_22 ::= seq_21 | $empty

    seq_23 ::= USE entity_aspect

    opt_24 ::= seq_23 | $empty

    opt_25 ::= generic_map_aspect | $empty

    opt_26 ::= port_map_aspect | $empty

    list_27 ::= $empty | list_27 use_clause

    list_28 ::= $empty | list_28 configuration_item

    list_29 ::= $empty | list_29 block_declarative_item

    seq_30 ::= generic_map_aspect SEMI

    opt_31 ::= seq_30 | $empty

    seq_32 ::= generic_clause opt_31

    opt_33 ::= seq_32 | $empty

    seq_34 ::= port_map_aspect SEMI

    opt_35 ::= seq_34 | $empty

    seq_36 ::= port_clause opt_35

    opt_37 ::= seq_36 | $empty

    seq_38 ::= LPAREN generate_specification RPAREN

    opt_39 ::= seq_38 | $empty

    seq_40 ::= LPAREN expression RPAREN

    opt_41 ::= seq_40 | $empty

    opt_42 ::= IS | $empty

    opt_43 ::= identifier | $empty

    list_44 ::= $empty | list_44 concurrent_statement

    opt_45 ::= label_colon | $empty

    list_46 ::= $empty | list_46 case_generate_alternative

    opt_47 ::= label_colon | $empty

    opt_48 ::= QUESTION | $empty

    list_49 ::= case_statement_alternative | list_49 case_statement_alternative

    opt_50 ::= QUESTION | $empty

    opt_51 ::= identifier | $empty

    seq_52 ::= BAR choice

    list_53 ::= $empty | list_53 seq_52

    seq_54 ::= binding_indication SEMI

    opt_55 ::= seq_54 | $empty

    opt_56 ::= block_configuration | $empty

    opt_57 ::= IS | $empty

    opt_58 ::= generic_clause | $empty

    opt_59 ::= port_clause | $empty

    opt_60 ::= identifier | $empty

    opt_61 ::= generic_map_aspect | $empty

    opt_62 ::= port_map_aspect | $empty

    opt_63 ::= label_colon | $empty

    opt_64 ::= POSTPONED | $empty

    opt_65 ::= GUARDED | $empty

    opt_66 ::= delay_mechanism | $empty

    opt_67 ::= label_colon | $empty

    opt_68 ::= POSTPONED | $empty

    opt_69 ::= QUESTION | $empty

    opt_70 ::= GUARDED | $empty

    opt_71 ::= delay_mechanism | $empty

    opt_72 ::= label_colon | $empty

    opt_73 ::= POSTPONED | $empty

    grp_74 ::= conditional_signal_assignment | selected_signal_assignment | concurrent_selected_signal_assignment

    opt_75 ::= GUARDED | $empty

    opt_76 ::= delay_mechanism | $empty

    seq_77 ::= ELSE expression WHEN condition

    list_78 ::= $empty | list_78 seq_77

    seq_79 ::= ELSE expression

    opt_80 ::= seq_79 | $empty

    opt_81 ::= force_mode | $empty

    opt_82 ::= delay_mechanism | $empty

    seq_83 ::= ELSE conditional_waveforms

    opt_84 ::= seq_83 | $empty

    seq_85 ::= WHEN condition opt_84

    opt_86 ::= seq_85 | $empty

    opt_87 ::= CONFIGURATION | $empty

    opt_88 ::= identifier | $empty

    list_89 ::= $empty | list_89 configuration_declarative_item

    seq_90 ::= WALRUS expression

    opt_91 ::= seq_90 | $empty

    list_92 ::= $empty | list_92 context_item

    opt_93 ::= CONTEXT | $empty

    opt_94 ::= identifier | $empty

    seq_95 ::= COMMA selected_name

    list_96 ::= $empty | list_96 seq_95

    seq_97 ::= REJECT expression

    opt_98 ::= seq_97 | $empty

    list_99 ::= design_unit | list_99 design_unit

    seq_100 ::= choices ARROW

    opt_101 ::= seq_100 | $empty

    seq_102 ::= LPAREN identifier RPAREN

    opt_103 ::= seq_102 | $empty

    opt_104 ::= BOX | $empty

    seq_105 ::= COMMA entity_class_entry

    list_106 ::= $empty | list_106 seq_105

    seq_107 ::= BEGIN entity_statement_part

    opt_108 ::= seq_107 | $empty

    opt_109 ::= ENTITY | $empty

    opt_110 ::= identifier | $empty

    list_111 ::= $empty | list_111 entity_declarative_item

    opt_112 ::= generic_clause | $empty

    opt_113 ::= port_clause | $empty

    seq_114 ::= COMMA entity_designator

    list_115 ::= $empty | list_115 seq_114

    list_116 ::= $empty | list_116 entity_statement

    seq_117 ::= COMMA enumeration_literal

    list_118 ::= $empty | list_118 seq_117

    opt_119 ::= label_colon | $empty

    opt_120 ::= identifier | $empty

    seq_121 ::= WHEN condition

    opt_122 ::= seq_121 | $empty

    seq_123 ::= CONDITION_OPERATOR primary

    seq_124 ::= logical_operator relation

    list_125 ::= $empty | list_125 seq_124

    seq_126 ::= relation list_125

    seq_127 ::= DOUBLESTAR primary

    opt_128 ::= seq_127 | $empty

    opt_129 ::= file_open_information | $empty

    seq_130 ::= OPEN expression

    opt_131 ::= seq_130 | $empty

    seq_132 ::= LPAREN name RPAREN

    opt_133 ::= seq_132 | $empty

    seq_134 ::= LPAREN actual_parameter_part RPAREN

    opt_135 ::= seq_134 | $empty

    grp_136 ::= PURE | IMPURE

    opt_137 ::= grp_136 | $empty

    opt_138 ::= PARAMETER | $empty

    seq_139 ::= LPAREN opt_138 formal_parameter_list RPAREN

    opt_140 ::= seq_139 | $empty

    opt_141 ::= label_colon | $empty

    grp_142 ::= for_generate_statement | if_generate_statement | case_generate_statement

    opt_143 ::= identifier | $empty

    seq_144 ::= block_declarative_part BEGIN

    opt_145 ::= seq_144 | $empty

    list_146 ::= $empty | list_146 concurrent_statement

    seq_147 ::= COMMA group_constituent

    list_148 ::= $empty | list_148 seq_147

    seq_149 ::= COMMA identifier

    list_150 ::= $empty | list_150 seq_149

    seq_151 ::= ELSIF condition GENERATE generate_statement_body

    list_152 ::= $empty | list_152 seq_151

    seq_153 ::= ELSE GENERATE generate_statement_body

    opt_154 ::= seq_153 | $empty

    opt_155 ::= label_colon | $empty

    seq_156 ::= ELSIF condition THEN sequence_of_statements

    list_157 ::= $empty | list_157 seq_156

    seq_158 ::= ELSE sequence_of_statements

    opt_159 ::= seq_158 | $empty

    opt_160 ::= identifier | $empty

    seq_161 ::= COMMA discrete_range

    list_162 ::= $empty | list_162 seq_161

    seq_163 ::= COMMA expression

    list_164 ::= $empty | list_164 seq_163

    opt_165 ::= COMPONENT | $empty

    seq_166 ::= LPAREN identifier RPAREN

    opt_167 ::= seq_166 | $empty

    seq_168 ::= COMMA identifier

    list_169 ::= $empty | list_169 seq_168

    opt_170 ::= CONSTANT | $empty

    opt_171 ::= IN | $empty

    seq_172 ::= WALRUS expression

    opt_173 ::= seq_172 | $empty

    grp_174 ::= PURE | IMPURE

    opt_175 ::= grp_174 | $empty

    opt_176 ::= PARAMETER | $empty

    seq_177 ::= opt_176 LPAREN formal_parameter_list RPAREN

    opt_178 ::= seq_177 | $empty

    seq_179 ::= SEMI interface_declaration

    list_180 ::= $empty | list_180 seq_179

    grp_181 ::= BOX | DEFAULT

    opt_182 ::= PARAMETER | $empty

    seq_183 ::= opt_182 LPAREN formal_parameter_list RPAREN

    opt_184 ::= seq_183 | $empty

    opt_185 ::= SIGNAL | $empty

    opt_186 ::= mode_rule | $empty

    opt_187 ::= BUS | $empty

    seq_188 ::= WALRUS expression

    opt_189 ::= seq_188 | $empty

    seq_190 ::= IS interface_subprogram_default

    opt_191 ::= VARIABLE | $empty

    opt_192 ::= mode_rule | $empty

    seq_193 ::= WALRUS expression

    opt_194 ::= seq_193 | $empty

    opt_195 ::= label_colon | $empty

    opt_196 ::= iteration_scheme | $empty

    opt_197 ::= identifier | $empty

    grp_198 ::= identifier | STRING_LITERAL | CHARACTER_LITERAL

    list_199 ::= $empty | list_199 name_part

    seq_200 ::= DOT suffix

    list_201 ::= seq_200 | list_201 seq_200

    seq_202 ::= LPAREN expression RPAREN

    opt_203 ::= seq_202 | $empty

    opt_204 ::= label_colon | $empty

    opt_205 ::= identifier | $empty

    seq_206 ::= WHEN condition

    opt_207 ::= seq_206 | $empty

    opt_208 ::= label_colon | $empty

    seq_209 ::= PACKAGE BODY

    opt_210 ::= seq_209 | $empty

    opt_211 ::= identifier | $empty

    list_212 ::= $empty | list_212 package_body_declarative_item

    opt_213 ::= PACKAGE | $empty

    opt_214 ::= identifier | $empty

    list_215 ::= $empty | list_215 package_declarative_item

    seq_216 ::= generic_map_aspect SEMI

    opt_217 ::= seq_216 | $empty

    seq_218 ::= generic_clause opt_217

    opt_219 ::= seq_218 | $empty

    seq_220 ::= LPAREN generic_map_aspect RPAREN

    list_221 ::= $empty | list_221 secondary_unit_declaration

    opt_222 ::= identifier | $empty

    seq_223 ::= LPAREN actual_parameter_part RPAREN

    opt_224 ::= seq_223 | $empty

    opt_225 ::= label_colon | $empty

    opt_226 ::= PARAMETER | $empty

    seq_227 ::= opt_226 LPAREN formal_parameter_list RPAREN

    opt_228 ::= seq_227 | $empty

    list_229 ::= $empty | list_229 sequential_statement

    list_230 ::= $empty | list_230 process_declarative_item

    opt_231 ::= label_colon | $empty

    opt_232 ::= POSTPONED | $empty

    seq_233 ::= LPAREN process_sensitivity_list RPAREN

    opt_234 ::= seq_233 | $empty

    opt_235 ::= IS | $empty

    opt_236 ::= POSTPONED | $empty

    opt_237 ::= identifier | $empty

    list_238 ::= $empty | list_238 sequential_statement

    opt_239 ::= identifier | $empty

    opt_240 ::= protected_type_body_declarative_item | $empty

    opt_241 ::= identifier | $empty

    opt_242 ::= protected_type_declarative_item | $empty

    grp_243 ::= aggregate | LPAREN expression RPAREN

    seq_244 ::= simple_expression direction simple_expression

    seq_245 ::= COMMA record_element_constraint

    list_246 ::= $empty | list_246 seq_245

    seq_247 ::= COMMA record_element_resolution

    list_248 ::= $empty | list_248 seq_247

    list_249 ::= element_declaration | list_249 element_declaration

    opt_250 ::= identifier | $empty

    seq_251 ::= relational_operator shift_expression

    opt_252 ::= seq_251 | $empty

    opt_253 ::= label_colon | $empty

    seq_254 ::= SEVERITY expression

    opt_255 ::= seq_254 | $empty

    seq_256 ::= LPAREN element_resolution RPAREN

    opt_257 ::= label_colon | $empty

    opt_258 ::= expression | $empty

    seq_259 ::= expression WHEN choices COMMA

    list_260 ::= $empty | list_260 seq_259

    opt_261 ::= QUESTION | $empty

    opt_262 ::= force_mode | $empty

    opt_263 ::= QUESTION | $empty

    opt_264 ::= QUESTION | $empty

    opt_265 ::= delay_mechanism | $empty

    seq_266 ::= COMMA waveform WHEN choices

    list_267 ::= $empty | list_267 seq_266

    seq_268 ::= COMMA name

    list_269 ::= $empty | list_269 seq_268

    list_270 ::= $empty | list_270 sequential_statement

    seq_271 ::= shift_operator simple_expression

    opt_272 ::= seq_271 | $empty

    opt_273 ::= label_colon | $empty

    grp_274 ::= simple_signal_assignment | conditional_signal_assignment | selected_signal_assignment

    opt_275 ::= signal_kind | $empty

    seq_276 ::= WALRUS expression

    opt_277 ::= seq_276 | $empty

    seq_278 ::= COMMA name

    list_279 ::= $empty | list_279 seq_278

    seq_280 ::= COMMA name

    opt_281 ::= seq_280 | $empty

    seq_282 ::= name opt_281

    seq_283 ::= RETURN name

    opt_284 ::= seq_283 | $empty

    grp_285 ::= PLUS | MINUS

    opt_286 ::= grp_285 | $empty

    seq_287 ::= adding_operator term

    list_288 ::= $empty | list_288 seq_287

    opt_289 ::= force_mode | $empty

    opt_290 ::= force_mode | $empty

    grp_291 ::= simple_waveform_assignment | simple_force_assignment | simple_release_assignment

    opt_292 ::= delay_mechanism | $empty

    opt_293 ::= subprogram_kind | $empty

    opt_294 ::= designator | $empty

    list_295 ::= $empty | list_295 subprogram_declarative_item

    seq_296 ::= GENERIC LPAREN generic_list RPAREN generic_map_aspect

    opt_297 ::= seq_296 | $empty

    list_298 ::= $empty | list_298 sequential_statement

    opt_299 ::= resolution_indication | $empty

    opt_300 ::= constraint | $empty

    seq_301 ::= multiplying_operator factor

    list_302 ::= $empty | list_302 seq_301

    list_303 ::= $empty | list_303 graphic_character

    seq_304 ::= COMMA index_subtype_definition

    list_305 ::= $empty | list_305 seq_304

    seq_306 ::= COMMA selected_name

    list_307 ::= $empty | list_307 seq_306

    opt_308 ::= label_colon | $empty

    grp_309 ::= simple_variable_assignment | conditional_variable_assignment | selected_variable_assignment

    opt_310 ::= SHARED | $empty

    seq_311 ::= WALRUS expression

    opt_312 ::= seq_311 | $empty

    opt_313 ::= label_colon | $empty

    opt_314 ::= sensitivity_clause | $empty

    opt_315 ::= condition_clause | $empty

    opt_316 ::= timeout_clause | $empty

    seq_317 ::= COMMA waveform_element

    list_318 ::= $empty | list_318 seq_317

    seq_319 ::= AFTER expression

    opt_320 ::= seq_319 | $empty

    seq_321 ::= AFTER expression

    opt_322 ::= seq_321 | $empty

%End
