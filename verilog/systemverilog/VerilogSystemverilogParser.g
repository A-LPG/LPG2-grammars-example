-- AUTO-GENERATED from antlr/grammars-v4 verilog/systemverilog by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=VerilogSystemverilogParser
%options package=lpg.grammars.verilog.systemverilog
%options template=dtParserTemplateF.gi
%options import_terminals=VerilogSystemverilogLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    source_text
%End

%Rules
    source_text ::= list_1

    compiler_directive ::= begin_keywords_directive
           | celldefine_directive
           | default_nettype_directive
           | end_keywords_directive
           | endcelldefine_directive
           | file_directive
           | ifdef_directive
           | ifndef_directive
           | include_directive
           | line_directive
           | line_directive_
           | nounconnected_drive_directive
           | pragma_directive
           | resetall_directive
           | text_macro_definition
           | text_macro_usage
           | timescale_directive
           | unconnected_drive_directive
           | undef_directive
           | undefineall_directive

    begin_keywords_directive ::= GA BEGIN_KEYWORDS_DIRECTIVE DQ version_specifier DQ

    celldefine_directive ::= GA CELLDEFINE_DIRECTIVE

    default_nettype_directive ::= GA DEFAULT_NETTYPE_DIRECTIVE default_nettype_value

    default_nettype_value ::= DEFAULT_NETTYPE_VALUE

    else_directive ::= GA ELSE_DIRECTIVE group_of_lines

    elsif_directive ::= GA ELSIF_DIRECTIVE macro_identifier group_of_lines

    end_keywords_directive ::= GA END_KEYWORDS_DIRECTIVE

    endcelldefine_directive ::= GA ENDCELLDEFINE_DIRECTIVE

    endif_directive ::= GA ENDIF_DIRECTIVE

    file_directive ::= GA FILE_DIRECTIVE

    filename ::= FILENAME

    group_of_lines ::= list_3

    identifier ::= SIMPLE_IDENTIFIER

    ifdef_directive ::= GA IFDEF_DIRECTIVE macro_identifier group_of_lines list_4 opt_5 endif_directive

    ifndef_directive ::= GA IFNDEF_DIRECTIVE macro_identifier group_of_lines list_6 opt_7 endif_directive

    include_directive ::= GA INCLUDE_DIRECTIVE grp_8

    level ::= UNSIGNED_NUMBER

    line_directive ::= GA LINE_DIRECTIVE number DQ filename DQ level

    line_directive_ ::= GA LINE_DIRECTIVE_

    macro_delimiter ::= MACRO_DELIMITER

    macro_esc_newline ::= MACRO_ESC_NEWLINE

    macro_esc_quote ::= MACRO_ESC_QUOTE

    macro_identifier ::= MACRO_IDENTIFIER

    macro_name ::= MACRO_NAME

    macro_quote ::= MACRO_QUOTE

    macro_text ::= list_10

    macro_text_ ::= MACRO_TEXT

    macro_usage ::= MACRO_USAGE

    nounconnected_drive_directive ::= GA NOUNCONNECTED_DRIVE_DIRECTIVE

    number ::= UNSIGNED_NUMBER

    pragma_directive ::= GA PRAGMA_DIRECTIVE pragma_name opt_14

    pragma_expression ::= opt_16 pragma_value

    pragma_keyword ::= SIMPLE_IDENTIFIER

    pragma_name ::= SIMPLE_IDENTIFIER

    pragma_value ::= LP pragma_expression list_18 RP
           | number
           | string_literal
           | identifier

    resetall_directive ::= GA RESETALL_DIRECTIVE

    source_text_ ::= SOURCE_TEXT

    string_literal ::= STRING_LITERAL

    text_macro_definition ::= GA DEFINE_DIRECTIVE macro_name macro_text

    text_macro_usage ::= GA macro_usage

    time_precision ::= TIME_VALUE TIME_UNIT

    time_unit ::= TIME_VALUE TIME_UNIT

    timescale_directive ::= GA TIMESCALE_DIRECTIVE time_unit SL time_precision

    unconnected_drive_directive ::= GA UNCONNECTED_DRIVE_DIRECTIVE unconnected_drive_value

    unconnected_drive_value ::= UNCONNECTED_DRIVE_VALUE

    undef_directive ::= GA UNDEF_DIRECTIVE macro_identifier

    undefineall_directive ::= GA UNDEFINEALL_DIRECTIVE

    version_specifier ::= VERSION_SPECIFIER

    library_text ::= list_19

    library_description ::= library_declaration
           | include_statement
           | config_declaration
           | SEMI

    library_declaration ::= LIBRARY library_identifier file_path_spec list_21 opt_22 SEMI

    library_incdir ::= _INCDIR file_path_spec list_24

    include_statement ::= INCLUDE file_path_spec SEMI

    file_path_spec ::= FILE_PATH_SPEC

    source_text ::= opt_25 list_26

    description ::= module_declaration
           | udp_declaration
           | interface_declaration
           | program_declaration
           | package_declaration
           | list_27 package_item
           | list_28 bind_directive
           | config_declaration

    module_header ::= list_29 module_keyword opt_30 module_identifier list_31 opt_32 opt_33 SEMI

    module_declaration ::= module_header opt_34 list_35 ENDMODULE opt_36
           | list_37 module_keyword opt_38 module_identifier LPAREN DOTSTAR RPAREN SEMI opt_39 list_40 ENDMODULE opt_41
           | EXTERN module_header

    module_name ::= COLON module_identifier

    module_keyword ::= MODULE
           | MACROMODULE

    interface_declaration ::= interface_header opt_42 list_43 ENDINTERFACE opt_44
           | list_45 INTERFACE interface_identifier LPAREN DOTSTAR RPAREN SEMI opt_46 list_47 ENDINTERFACE opt_48
           | EXTERN interface_header

    interface_name ::= COLON interface_identifier

    interface_header ::= list_49 INTERFACE opt_50 interface_identifier list_51 opt_52 opt_53 SEMI

    program_declaration ::= program_header opt_54 list_55 ENDPROGRAM opt_56
           | list_57 PROGRAM program_identifier LPAREN DOTSTAR RPAREN SEMI opt_58 list_59 ENDPROGRAM opt_60
           | EXTERN program_header

    program_name ::= COLON program_identifier

    program_header ::= list_61 PROGRAM opt_62 program_identifier list_63 opt_64 opt_65 SEMI

    checker_declaration ::= CHECKER checker_identifier opt_66 SEMI list_67 ENDCHECKER opt_68

    checker_name ::= COLON checker_identifier

    checker_ports ::= LPAREN opt_69 RPAREN

    checker_decl_item ::= list_70 checker_item

    class_declaration ::= opt_71 CLASS opt_72 class_identifier opt_73 opt_74 opt_75 SEMI list_76 ENDCLASS opt_77

    class_name ::= COLON class_identifier

    class_extension ::= EXTENDS class_type opt_78

    class_implementation ::= IMPLEMENTS interface_class_type list_80

    interface_class_type ::= ps_identifier opt_81

    interface_class_declaration ::= INTERFACE CLASS class_identifier opt_82 opt_83 SEMI list_84 ENDCLASS opt_85

    interface_class_extension ::= EXTENDS interface_class_type list_87

    interface_class_item ::= type_declaration
           | list_88 interface_class_method
           | local_parameter_declaration SEMI
           | parameter_declaration SEMI
           | SEMI

    interface_class_method ::= PURE VIRTUAL method_prototype SEMI

    package_declaration ::= list_89 PACKAGE opt_90 package_identifier SEMI opt_91 list_92 ENDPACKAGE opt_93

    package_name ::= COLON package_identifier

    pkg_decl_item ::= list_94 package_item

    timeunits_declaration ::= TIMEUNIT time_literal opt_96 SEMI
           | TIMEPRECISION time_literal SEMI opt_98
           | TIMEUNIT time_literal SEMI TIMEPRECISION time_literal SEMI

    parameter_port_list ::= HASH LPAREN list_of_param_assignments list_100 RPAREN
           | HASH LPAREN parameter_port_declaration list_102 RPAREN
           | HASH LPAREN RPAREN

    parameter_port_declaration ::= parameter_declaration
           | local_parameter_declaration
           | data_type list_of_param_assignments
           | TYPE list_of_type_assignments

    list_of_port_declarations ::= LPAREN port_decl list_104 RPAREN
           | LPAREN port list_106 RPAREN
           | LPAREN port_implicit RPAREN
           | LPAREN RPAREN

    port_decl ::= list_107 ansi_port_declaration

    port_declaration ::= list_108 inout_declaration
           | list_109 input_declaration
           | list_110 output_declaration
           | list_111 ref_declaration
           | list_112 interface_port_declaration

    port ::= opt_113

    port_implicit ::= port_expression

    port_expression ::= port_identifier opt_114 LBRACKET constant_indexed_range RBRACKET
           | port_identifier list_115 opt_117
           | LBRACE port_reference list_119 RBRACE

    port_reference ::= port_identifier opt_120

    port_direction ::= INPUT
           | OUTPUT
           | INOUT
           | REF

    ansi_port_declaration ::= INTERFACE opt_122 port_identifier list_123 opt_125
           | interface_identifier DOT modport_identifier port_identifier list_126 opt_128
           | opt_129 DOT port_identifier LPAREN opt_130 RPAREN
           | opt_131 INTERCONNECT opt_132 port_identifier list_133 opt_135
           | opt_136 VAR opt_137 port_identifier list_138 opt_140
           | opt_141 opt_142 port_identifier list_143 opt_145
           | opt_146 implicit_data_type port_identifier list_147 opt_149
           | opt_150 net_type opt_151 port_identifier list_152 opt_154

    elaboration_system_task ::= _FATAL opt_155 SEMI
           | _ERROR opt_156 SEMI
           | _WARNING opt_157 SEMI
           | _INFO opt_158 SEMI

    fatal_arg_list ::= LPAREN finish_number opt_160 RPAREN

    finish_number ::= unsigned_number

    module_common_item ::= module_item_declaration
           | module_program_interface_instantiation
           | assertion_item
           | bind_directive
           | continuous_assign
           | net_alias
           | initial_construct
           | final_construct
           | always_construct
           | loop_generate_construct
           | conditional_generate_construct
           | elaboration_system_task

    module_item ::= port_declaration SEMI
           | generate_region
           | list_161 parameter_override
           | list_162 gate_instantiation
           | list_163 module_common_item
           | list_164 udp_instantiation
           | specify_block
           | list_165 specparam_declaration
           | program_declaration
           | module_declaration
           | interface_declaration
           | timeunits_declaration

    module_item_declaration ::= package_item_declaration
           | genvar_declaration
           | clocking_declaration
           | DEFAULT CLOCKING clocking_identifier SEMI
           | DEFAULT DISABLE IFF expression_or_dist SEMI

    parameter_override ::= DEFPARAM list_of_defparam_assignments SEMI

    bind_directive ::= BIND bind_target_scope opt_167 bind_instantiation SEMI
           | BIND bind_target_instance bind_instantiation SEMI

    bind_target_scope ::= module_identifier
           | interface_identifier

    bind_target_instance ::= hierarchical_identifier opt_168

    bind_target_instance_list ::= bind_target_instance list_170

    bind_instantiation ::= module_program_interface_instantiation
           | checker_instantiation

    config_declaration ::= CONFIG config_identifier SEMI list_172 design_statement list_173 ENDCONFIG opt_174

    config_name ::= COLON config_identifier

    design_statement ::= DESIGN list_175 SEMI

    design_statement_item ::= opt_177 cell_identifier

    config_rule_statement ::= default_clause liblist_clause SEMI
           | inst_clause liblist_clause SEMI
           | inst_clause use_clause SEMI
           | cell_clause liblist_clause SEMI
           | cell_clause use_clause SEMI

    default_clause ::= DEFAULT

    inst_clause ::= INSTANCE inst_name

    inst_name ::= topmodule_identifier list_179

    cell_clause ::= CELL opt_181 cell_identifier

    liblist_clause ::= LIBLIST list_182

    use_clause ::= USE opt_184 cell_identifier opt_186
           | USE named_parameter_assignment list_188 opt_190
           | USE opt_192 cell_identifier named_parameter_assignment list_194 opt_196

    extern_tf_declaration ::= EXTERN method_prototype SEMI
           | EXTERN FORKJOIN task_prototype SEMI

    interface_item ::= port_declaration SEMI
           | generate_region
           | list_197 module_common_item
           | list_198 extern_tf_declaration
           | program_declaration
           | modport_declaration
           | interface_declaration
           | timeunits_declaration

    program_item ::= port_declaration SEMI
           | list_199 continuous_assign
           | list_200 module_item_declaration
           | list_201 initial_construct
           | list_202 final_construct
           | list_203 concurrent_assertion_item
           | timeunits_declaration
           | loop_generate_construct
           | conditional_generate_construct
           | generate_region
           | elaboration_system_task

    checker_port_list ::= checker_port_item list_205

    checker_port_item ::= list_206 opt_207 opt_208 formal_port_identifier list_209 opt_211

    checker_port_direction ::= INPUT
           | OUTPUT

    checker_item ::= checker_item_declaration
           | initial_construct
           | always_construct
           | final_construct
           | assertion_item
           | continuous_assign
           | loop_generate_construct
           | conditional_generate_construct
           | generate_region
           | elaboration_system_task

    checker_item_declaration ::= opt_212 data_declaration
           | function_declaration
           | checker_declaration
           | assertion_item_declaration
           | covergroup_declaration
           | genvar_declaration
           | clocking_declaration
           | DEFAULT CLOCKING clocking_identifier SEMI
           | DEFAULT DISABLE IFF expression_or_dist SEMI
           | SEMI

    class_item ::= list_213 class_property
           | list_214 class_method
           | list_215 class_constraint
           | list_216 class_declaration
           | list_217 covergroup_declaration
           | local_parameter_declaration SEMI
           | parameter_declaration SEMI
           | SEMI

    class_property ::= CONST grp_218 data_type const_identifier opt_221 SEMI
           | list_222 opt_223 data_type list_of_variable_decl_assignments SEMI
           | list_224 CONST opt_225 data_type list_of_variable_decl_assignments SEMI
           | list_226 opt_227 VAR opt_228 opt_229 list_of_variable_decl_assignments SEMI
           | list_230 net_type_declaration
           | list_231 package_import_declaration
           | list_232 type_declaration

    class_method ::= list_233 task_declaration
           | list_234 function_declaration
           | PURE VIRTUAL list_235 method_prototype SEMI
           | EXTERN list_236 method_prototype SEMI
           | list_237 class_constructor_declaration
           | EXTERN list_238 class_constructor_prototype

    class_constructor_prototype ::= FUNCTION NEW opt_239 SEMI

    port_list ::= LPAREN tf_port_list RPAREN

    class_constraint ::= constraint_prototype
           | constraint_declaration

    class_item_qualifier ::= STATIC
           | PROTECTED
           | LOCAL

    property_qualifier ::= random_qualifier
           | class_item_qualifier

    random_qualifier ::= RAND
           | RANDC

    method_qualifier ::= opt_240 VIRTUAL
           | class_item_qualifier

    method_prototype ::= task_prototype
           | function_prototype

    class_constructor_declaration ::= FUNCTION opt_241 NEW opt_242 SEMI list_243 opt_244 list_245 ENDFUNCTION opt_247

    super_class_constructor_call ::= SUPER DOT NEW opt_248 SEMI

    constraint_declaration ::= opt_249 CONSTRAINT constraint_identifier constraint_block

    constraint_block ::= LBRACE list_250 RBRACE

    constraint_block_item ::= SOLVE solve_before_list BEFORE solve_before_list SEMI
           | constraint_expression

    solve_before_list ::= constraint_primary list_252

    constraint_primary ::= opt_254 hierarchical_identifier opt_255

    constraint_expression ::= opt_256 expression_or_dist SEMI
           | uniqueness_constraint SEMI
           | expression ARROW constraint_set
           | IF LPAREN expression RPAREN constraint_set opt_258
           | FOREACH LPAREN ps_or_hierarchical_array_identifier LBRACKET loop_variables RBRACKET RPAREN constraint_set
           | DISABLE SOFT constraint_primary SEMI

    uniqueness_constraint ::= UNIQUE LBRACE open_range_list RBRACE

    constraint_set ::= constraint_expression
           | LBRACE list_259 RBRACE

    dist_list ::= dist_item list_261

    dist_item ::= value_range opt_262

    dist_weight ::= COLONEQ expression
           | OP_59789 expression

    constraint_prototype ::= opt_263 opt_264 CONSTRAINT constraint_identifier SEMI

    constraint_prototype_qualifier ::= EXTERN
           | PURE

    extern_constraint_declaration ::= opt_265 CONSTRAINT class_scope constraint_identifier constraint_block

    identifier_list ::= identifier list_267

    package_item ::= package_item_declaration
           | anonymous_program
           | package_export_declaration
           | timeunits_declaration

    package_item_declaration ::= net_declaration
           | data_declaration
           | task_declaration
           | function_declaration
           | checker_declaration
           | dpi_import_export
           | extern_constraint_declaration
           | class_declaration
           | interface_class_declaration
           | class_constructor_declaration
           | local_parameter_declaration SEMI
           | parameter_declaration SEMI
           | covergroup_declaration
           | assertion_item_declaration
           | SEMI

    anonymous_program ::= PROGRAM SEMI list_268 ENDPROGRAM

    anonymous_program_item ::= task_declaration
           | function_declaration
           | class_declaration
           | interface_class_declaration
           | covergroup_declaration
           | class_constructor_declaration
           | SEMI

    local_parameter_declaration ::= LOCALPARAM opt_269 list_of_param_assignments
           | LOCALPARAM TYPE list_of_type_assignments

    parameter_declaration ::= PARAMETER opt_270 list_of_param_assignments
           | PARAMETER TYPE list_of_type_assignments

    specparam_declaration ::= SPECPARAM opt_271 list_of_specparam_assignments SEMI

    inout_declaration ::= INOUT opt_272 list_of_port_identifiers

    input_declaration ::= INPUT opt_273 opt_274 list_of_port_identifiers
           | INPUT net_type opt_275 list_of_port_identifiers
           | INPUT VAR opt_276 list_of_variable_identifiers
           | INPUT data_type list_of_variable_identifiers

    output_declaration ::= OUTPUT opt_277 opt_278 list_of_port_identifiers
           | OUTPUT net_type opt_279 list_of_port_identifiers
           | OUTPUT VAR opt_280 list_of_variable_port_identifiers
           | OUTPUT data_type list_of_variable_port_identifiers

    interface_port_declaration ::= interface_identifier opt_282 list_of_interface_identifiers

    ref_declaration ::= REF variable_port_type list_of_variable_identifiers

    data_declaration ::= opt_283 opt_284 data_type list_of_variable_decl_assignments SEMI
           | opt_285 VAR opt_286 opt_287 list_of_variable_decl_assignments SEMI
           | type_declaration
           | package_import_declaration
           | net_type_declaration

    package_import_declaration ::= IMPORT package_import_item list_289 SEMI

    package_import_item ::= package_identifier COLONCOLON identifier
           | package_identifier COLONCOLON STAR

    package_export_declaration ::= EXPORT STAR COLONCOLON STAR SEMI
           | EXPORT package_import_item list_291 SEMI

    genvar_declaration ::= GENVAR list_of_genvar_identifiers SEMI

    net_declaration ::= net_type opt_293 opt_295 opt_296 opt_297 list_of_net_decl_assignments SEMI
           | net_type_identifier delay_control list_of_net_decl_assignments SEMI
           | INTERCONNECT opt_298 opt_300 net_id opt_302 SEMI

    net_id ::= net_identifier list_303

    type_declaration ::= TYPEDEF data_type type_identifier list_304 SEMI
           | TYPEDEF interface_instance_identifier opt_305 DOT type_identifier type_identifier SEMI
           | TYPEDEF opt_307 type_identifier SEMI

    net_type_declaration ::= NETTYPE data_type net_type_identifier opt_308 SEMI
           | NETTYPE opt_309 net_type_identifier net_type_identifier SEMI

    net_type_decl_with ::= WITH opt_310 tf_identifier

    lifetime ::= STATIC
           | AUTOMATIC

    data_type ::= integer_vector_type opt_311 list_312
           | integer_atom_type opt_313
           | non_integer_type
           | struct_union opt_316 LBRACE list_317 RBRACE list_318
           | ENUM opt_319 LBRACE enum_name_declaration list_321 RBRACE list_322
           | STRING
           | CHANDLE
           | VIRTUAL opt_323 interface_identifier opt_324 opt_326
           | type_identifier list_327
           | _UNIT COLONCOLON type_identifier list_328
           | class_type opt_331
           | EVENT
           | type_reference

    data_type_or_implicit ::= data_type
           | implicit_data_type

    implicit_data_type ::= list_332
           | signing list_333

    enum_base_type ::= integer_atom_type opt_334
           | integer_vector_type opt_335 opt_336
           | type_identifier opt_337

    enum_name_declaration ::= enum_identifier opt_338 opt_340

    enum_name_suffix_range ::= LBRACKET integral_number opt_342 RBRACKET

    class_scope ::= class_type COLONCOLON

    class_type ::= opt_344 class_ref list_346

    class_ref ::= class_identifier opt_347

    package_or_class_scope ::= class_type COLONCOLON
           | _UNIT COLONCOLON

    integer_type ::= integer_vector_type
           | integer_atom_type

    integer_atom_type ::= BYTE
           | SHORTINT
           | INT
           | LONGINT
           | INTEGER
           | TIME

    integer_vector_type ::= BIT
           | LOGIC
           | REG

    non_integer_type ::= SHORTREAL
           | REAL
           | REALTIME

    net_type ::= SUPPLY0
           | SUPPLY1
           | TRI
           | TRIAND
           | TRIOR
           | TRIREG
           | TRI0
           | TRI1
           | UWIRE
           | WIRE
           | WAND
           | WOR

    net_port_type ::= data_type_or_implicit
           | net_type opt_348
           | INTERCONNECT opt_349

    variable_port_type ::= var_data_type

    var_data_type ::= data_type
           | VAR opt_350

    signing ::= SIGNED
           | UNSIGNED

    simple_type ::= integer_type
           | non_integer_type
           | ps_type_or_parameter_identifier

    struct_union_member ::= list_351 opt_352 data_type_or_void list_of_variable_decl_assignments SEMI

    data_type_or_void ::= data_type
           | VOID

    struct_union ::= STRUCT
           | UNION opt_353

    type_reference ::= TYPE LPAREN expression RPAREN
           | TYPE LPAREN data_type RPAREN

    drive_strength ::= LPAREN strength0 COMMA strength1 RPAREN
           | LPAREN strength1 COMMA strength0 RPAREN
           | LPAREN strength0 COMMA HIGHZ1 RPAREN
           | LPAREN strength1 COMMA HIGHZ0 RPAREN
           | LPAREN HIGHZ0 COMMA strength1 RPAREN
           | LPAREN HIGHZ1 COMMA strength0 RPAREN

    strength0 ::= SUPPLY0
           | STRONG0
           | PULL0
           | WEAK0

    strength1 ::= SUPPLY1
           | STRONG1
           | PULL1
           | WEAK1

    charge_strength ::= LPAREN SMALL RPAREN
           | LPAREN MEDIUM RPAREN
           | LPAREN LARGE RPAREN

    delay3 ::= HASH delay_value
           | HASH LPAREN mintypmax_expression opt_357 RPAREN

    delay2 ::= HASH delay_value
           | HASH LPAREN mintypmax_expression opt_359 RPAREN

    delay_value ::= unsigned_number
           | real_number
           | ps_identifier
           | time_literal
           | T_1STEP

    list_of_defparam_assignments ::= defparam_assignment list_361

    list_of_genvar_identifiers ::= genvar_identifier list_363

    list_of_interface_identifiers ::= interface_id list_365

    interface_id ::= interface_identifier list_366

    list_of_net_decl_assignments ::= net_decl_assignment list_368

    list_of_param_assignments ::= param_assignment list_370

    list_of_port_identifiers ::= port_id list_372

    port_id ::= port_identifier list_373

    list_of_udp_port_identifiers ::= port_identifier list_375

    list_of_specparam_assignments ::= specparam_assignment list_377

    list_of_tf_variable_identifiers ::= tf_var_id list_379

    tf_var_id ::= port_identifier list_380 opt_382

    list_of_type_assignments ::= type_assignment list_384

    list_of_variable_decl_assignments ::= variable_decl_assignment list_386

    list_of_variable_identifiers ::= var_id list_388

    var_id ::= variable_identifier list_389

    list_of_variable_port_identifiers ::= var_port_id list_391

    var_port_id ::= port_identifier list_392 opt_394

    defparam_assignment ::= hierarchical_identifier EQ constant_mintypmax_expression

    net_decl_assignment ::= net_identifier list_395 opt_397

    param_assignment ::= parameter_identifier list_398 opt_400

    specparam_assignment ::= specparam_identifier EQ constant_mintypmax_expression
           | pulse_control_specparam

    type_assignment ::= type_identifier opt_402

    pulse_control_specparam ::= PATHPULSE_ EQ LPAREN reject_limit_value opt_404 RPAREN
           | PATHPULSE_ specify_input_terminal_descriptor DOLLAR specify_output_terminal_descriptor EQ LPAREN reject_limit_value opt_406 RPAREN

    error_limit_value ::= limit_value

    reject_limit_value ::= limit_value

    limit_value ::= constant_mintypmax_expression

    variable_decl_assignment ::= variable_identifier list_407 opt_409
           | dynamic_array_variable_identifier unsized_dimension list_410 EQ dynamic_array_new
           | class_variable_identifier EQ class_new

    class_new ::= opt_411 NEW opt_412
           | NEW expression

    dynamic_array_new ::= NEW LBRACKET expression RBRACKET opt_414

    unpacked_dimension ::= LBRACKET constant_range RBRACKET
           | LBRACKET constant_expression RBRACKET

    packed_dimension ::= LBRACKET constant_range RBRACKET
           | unsized_dimension

    associative_dimension ::= LBRACKET data_type RBRACKET
           | LBRACKET STAR RBRACKET

    variable_dimension ::= unsized_dimension
           | unpacked_dimension
           | associative_dimension
           | queue_dimension

    queue_dimension ::= LBRACKET DOLLAR opt_416 RBRACKET

    unsized_dimension ::= LBRACKET RBRACKET

    function_data_type_or_implicit ::= data_type_or_void
           | implicit_data_type

    function_declaration ::= FUNCTION opt_417 function_body_declaration

    function_body_declaration ::= opt_418 opt_420 function_identifier SEMI list_421 list_422 ENDFUNCTION opt_423
           | opt_424 opt_426 function_identifier LPAREN tf_port_list RPAREN SEMI list_427 list_428 ENDFUNCTION opt_429

    function_name ::= COLON function_identifier

    function_prototype ::= FUNCTION data_type_or_void function_identifier opt_430

    dpi_import_export ::= IMPORT dpi_spec_string opt_431 opt_433 dpi_function_proto SEMI
           | IMPORT dpi_spec_string opt_434 opt_436 dpi_task_proto SEMI
           | EXPORT dpi_spec_string opt_438 FUNCTION function_identifier SEMI
           | EXPORT dpi_spec_string opt_440 TASK task_identifier SEMI

    dpi_spec_string ::= _DPI_C_
           | _DPI_

    dpi_function_import_property ::= CONTEXT
           | PURE

    dpi_task_import_property ::= CONTEXT

    dpi_function_proto ::= function_prototype

    dpi_task_proto ::= task_prototype

    task_declaration ::= TASK opt_441 task_body_declaration

    task_body_declaration ::= opt_443 task_identifier SEMI list_444 list_445 ENDTASK opt_446
           | opt_448 task_identifier LPAREN tf_port_list RPAREN SEMI list_449 list_450 ENDTASK opt_451

    task_name ::= COLON task_identifier

    tf_item_declaration ::= block_item_declaration
           | tf_port_declaration

    tf_port_list ::= tf_port_item list_453

    tf_port_item ::= list_454 opt_455 opt_456 opt_457 tf_port_id

    tf_port_id ::= port_identifier list_458 opt_460

    tf_port_direction ::= port_direction
           | CONST REF

    tf_port_declaration ::= list_461 tf_port_direction opt_462 opt_463 list_of_tf_variable_identifiers SEMI

    task_prototype ::= TASK task_identifier opt_464

    block_item_declaration ::= list_465 data_declaration
           | list_466 local_parameter_declaration SEMI
           | list_467 parameter_declaration SEMI
           | list_468 let_declaration

    modport_declaration ::= MODPORT modport_item list_470 SEMI

    modport_item ::= modport_identifier LPAREN modport_ports_declaration list_472 RPAREN

    modport_ports_declaration ::= list_473 modport_simple_ports_declaration
           | list_474 modport_tf_ports_declaration
           | list_475 modport_clocking_declaration

    modport_clocking_declaration ::= CLOCKING clocking_identifier

    modport_simple_ports_declaration ::= port_direction modport_simple_port list_477

    modport_simple_port ::= port_identifier
           | DOT port_identifier LPAREN opt_478 RPAREN

    modport_tf_ports_declaration ::= import_export modport_tf_port list_480

    modport_tf_port ::= method_prototype
           | tf_identifier

    import_export ::= IMPORT
           | EXPORT

    concurrent_assertion_item ::= opt_481 concurrent_assertion_statement
           | checker_instantiation

    block_label ::= block_identifier COLON

    concurrent_assertion_statement ::= assert_property_statement
           | assume_property_statement
           | cover_property_statement
           | cover_sequence_statement
           | restrict_property_statement

    assert_property_statement ::= ASSERT PROPERTY LPAREN property_spec RPAREN action_block

    assume_property_statement ::= ASSUME PROPERTY LPAREN property_spec RPAREN action_block

    cover_property_statement ::= COVER PROPERTY LPAREN property_spec RPAREN statement_or_null

    expect_property_statement ::= EXPECT LPAREN property_spec RPAREN action_block

    cover_sequence_statement ::= COVER SEQUENCE LPAREN opt_482 opt_484 sequence_expr RPAREN statement_or_null

    restrict_property_statement ::= RESTRICT PROPERTY LPAREN property_spec RPAREN SEMI

    property_instance ::= ps_or_hierarchical_identifier opt_485

    prop_arg_list ::= LPAREN property_list_of_arguments RPAREN

    property_list_of_arguments ::= prop_ordered_arg list_487 list_489
           | prop_named_arg list_491

    prop_ordered_arg ::= opt_492

    prop_named_arg ::= DOT identifier LPAREN opt_493 RPAREN

    property_actual_arg ::= property_expr
           | sequence_actual_arg

    assertion_item_declaration ::= property_declaration
           | sequence_declaration
           | let_declaration

    property_declaration ::= PROPERTY property_identifier opt_494 SEMI list_495 property_spec opt_496 ENDPROPERTY opt_497

    property_name ::= COLON property_identifier

    prop_port_list ::= LPAREN opt_498 RPAREN

    property_port_list ::= property_port_item list_500

    property_port_item ::= list_501 opt_502 opt_503 formal_port_identifier list_504 opt_506

    prop_port_item_local ::= LOCAL opt_507

    property_lvar_port_direction ::= INPUT

    property_formal_type ::= sequence_formal_type
           | PROPERTY

    property_spec ::= opt_508 opt_510 property_expr

    property_expr ::= sequence_expr
           | STRONG LPAREN sequence_expr RPAREN
           | WEAK LPAREN sequence_expr RPAREN
           | LPAREN property_expr RPAREN
           | NOT property_expr
           | property_expr OR property_expr
           | property_expr AND property_expr
           | sequence_expr OP_36633 property_expr
           | sequence_expr OP_71142 property_expr
           | IF expression_or_dist property_expr opt_512
           | CASE expression_or_dist list_513 ENDCASE
           | sequence_expr OP_23988 property_expr
           | sequence_expr OP_21 property_expr
           | NEXTTIME property_expr
           | NEXTTIME LBRACKET constant_expression RBRACKET property_expr
           | S_NEXTTIME property_expr
           | S_NEXTTIME LBRACKET constant_expression RBRACKET property_expr
           | ALWAYS property_expr
           | ALWAYS LBRACKET cycle_delay_const_range_expression RBRACKET property_expr
           | S_ALWAYS LBRACKET constant_range RBRACKET property_expr
           | S_EVENTUALLY property_expr
           | EVENTUALLY LBRACKET constant_range RBRACKET property_expr
           | S_EVENTUALLY LBRACKET cycle_delay_const_range_expression RBRACKET property_expr
           | property_expr UNTIL property_expr
           | property_expr S_UNTIL property_expr
           | property_expr UNTIL_WITH property_expr
           | property_expr S_UNTIL_WITH property_expr
           | property_expr IMPLIES property_expr
           | property_expr IFF property_expr
           | ACCEPT_ON LPAREN expression_or_dist RPAREN property_expr
           | REJECT_ON LPAREN expression_or_dist RPAREN property_expr
           | SYNC_ACCEPT_ON LPAREN expression_or_dist RPAREN property_expr
           | SYNC_REJECT_ON LPAREN expression_or_dist RPAREN property_expr
           | property_instance
           | clocking_event property_expr

    property_case_item ::= expression_or_dist list_515 COLON property_expr SEMI
           | DEFAULT opt_516 property_expr SEMI

    sequence_declaration ::= SEQUENCE sequence_identifier opt_517 SEMI list_518 sequence_expr opt_519 ENDSEQUENCE opt_520

    sequence_name ::= COLON sequence_identifier

    seq_port_list ::= LPAREN opt_521 RPAREN

    sequence_port_list ::= sequence_port_item list_523

    sequence_port_item ::= list_524 opt_525 opt_526 formal_port_identifier list_527 opt_529

    seq_port_item_local ::= LOCAL opt_530

    sequence_lvar_port_direction ::= INPUT
           | INOUT
           | OUTPUT

    sequence_formal_type ::= data_type_or_implicit
           | SEQUENCE
           | UNTYPED

    sequence_expr ::= cycle_delay_range sequence_expr list_532
           | sequence_expr cycle_delay_range sequence_expr list_534
           | expression_or_dist opt_535
           | sequence_instance opt_536
           | LPAREN sequence_expr list_538 RPAREN opt_539
           | sequence_expr AND sequence_expr
           | sequence_expr INTERSECT sequence_expr
           | sequence_expr OR sequence_expr
           | FIRST_MATCH LPAREN sequence_expr list_541 RPAREN
           | expression_or_dist THROUGHOUT sequence_expr
           | sequence_expr WITHIN sequence_expr
           | clocking_event sequence_expr

    cycle_delay_range ::= OP_79944 constant_primary
           | OP_79944 LBRACKET cycle_delay_const_range_expression RBRACKET
           | OP_79944 LBRACKET STAR RBRACKET
           | OP_79944 LBRACKET PLUS RBRACKET

    sequence_method_call ::= ps_or_hierarchical_identifier seq_arg_list DOT method_identifier

    sequence_match_item ::= operator_assignment
           | inc_or_dec_expression
           | subroutine_call

    sequence_instance ::= ps_or_hierarchical_identifier opt_542

    seq_arg_list ::= LPAREN sequence_list_of_arguments RPAREN

    sequence_list_of_arguments ::= seq_ordered_arg list_544 list_546
           | seq_named_arg list_548

    seq_ordered_arg ::= opt_549

    seq_named_arg ::= DOT identifier LPAREN opt_550 RPAREN

    sequence_actual_arg ::= event_expression
           | sequence_expr

    boolean_abbrev ::= consecutive_repetition
           | non_consecutive_repetition
           | goto_repetition

    sequence_abbrev ::= consecutive_repetition

    consecutive_repetition ::= LBRACKET STAR const_or_range_expression RBRACKET
           | LBRACKET STAR RBRACKET
           | LBRACKET PLUS RBRACKET

    non_consecutive_repetition ::= LBRACKET EQ const_or_range_expression RBRACKET

    goto_repetition ::= LBRACKET ARROW const_or_range_expression RBRACKET

    const_or_range_expression ::= constant_expression
           | cycle_delay_const_range_expression

    cycle_delay_const_range_expression ::= constant_expression COLON constant_expression
           | constant_expression COLON DOLLAR

    expression_or_dist ::= expression opt_552

    assertion_variable_declaration ::= var_data_type list_of_variable_decl_assignments SEMI

    covergroup_declaration ::= COVERGROUP covergroup_identifier opt_553 opt_554 SEMI list_555 ENDGROUP opt_556

    covergroup_name ::= COLON covergroup_identifier

    coverage_spec_or_option ::= list_557 coverage_spec
           | list_558 coverage_option SEMI

    coverage_option ::= OPTION DOT member_identifier EQ expression
           | TYPE_OPTION DOT member_identifier EQ constant_expression

    coverage_spec ::= cover_point
           | cover_cross

    coverage_event ::= clocking_event
           | WITH FUNCTION SAMPLE LPAREN tf_port_list RPAREN
           | OP_52449 LPAREN block_event_expression RPAREN

    block_event_expression ::= block_event_expression OR block_event_expression
           | BEGIN hierarchical_btf_identifier
           | END hierarchical_btf_identifier

    hierarchical_btf_identifier ::= opt_559 identifier
           | list_560 identifier
           | _ROOT DOT list_561 identifier

    cover_point ::= opt_562 COVERPOINT expression opt_564 bins_or_empty

    cover_point_label ::= opt_565 cover_point_identifier COLON

    bins_or_empty ::= LBRACE list_566 list_568 RBRACE
           | SEMI

    bins_or_options ::= coverage_option
           | opt_569 bins_keyword bin_identifier opt_570 EQ LBRACE covergroup_range_list RBRACE opt_572 opt_574
           | opt_575 bins_keyword bin_identifier opt_576 EQ cover_point_identifier WITH LPAREN with_covergroup_expression RPAREN opt_578
           | opt_579 bins_keyword bin_identifier opt_580 EQ set_covergroup_expression opt_582
           | opt_583 bins_keyword bin_identifier opt_585 EQ trans_list opt_587
           | bins_keyword bin_identifier opt_588 EQ DEFAULT opt_590
           | bins_keyword bin_identifier EQ DEFAULT SEQUENCE opt_592

    bin_array_size ::= LBRACKET opt_593 RBRACKET

    bins_keyword ::= BINS
           | ILLEGAL_BINS
           | IGNORE_BINS

    trans_list ::= trans_set list_595

    trans_set ::= LPAREN trans_range_list list_597 RPAREN

    trans_range_list ::= trans_item
           | trans_item LBRACKET STAR repeat_range RBRACKET
           | trans_item LBRACKET ARROW repeat_range RBRACKET
           | trans_item LBRACKET EQ repeat_range RBRACKET

    trans_item ::= covergroup_range_list

    repeat_range ::= covergroup_expression opt_599

    cover_cross ::= opt_600 CROSS list_of_cross_items opt_602 cross_body

    cross_label ::= cross_identifier COLON

    list_of_cross_items ::= cross_item COMMA cross_item list_604

    cross_item ::= identifier

    cross_body ::= LBRACE list_605 RBRACE
           | SEMI

    cross_body_item ::= function_declaration
           | bins_selection_or_option SEMI

    bins_selection_or_option ::= list_606 coverage_option
           | list_607 bins_selection

    bins_selection ::= bins_keyword bin_identifier EQ select_expression opt_609

    select_expression ::= select_condition
           | BANG select_condition
           | select_expression ANDAND select_expression
           | select_expression OROR select_expression
           | LPAREN select_expression RPAREN
           | select_expression WITH LPAREN with_covergroup_expression RPAREN opt_611
           | cross_identifier
           | cross_set_expression opt_613

    select_condition ::= BINSOF LPAREN bins_expression RPAREN opt_615

    bins_expression ::= variable_identifier
           | cover_point_identifier DOT bin_identifier

    covergroup_range_list ::= covergroup_value_range list_617

    covergroup_value_range ::= covergroup_expression
           | LBRACKET covergroup_expression COLON covergroup_expression RBRACKET

    with_covergroup_expression ::= covergroup_expression

    set_covergroup_expression ::= covergroup_expression

    integer_covergroup_expression ::= covergroup_expression

    cross_set_expression ::= covergroup_expression

    covergroup_expression ::= expression

    let_declaration ::= LET let_identifier opt_618 EQ expression SEMI

    let_ports ::= LPAREN opt_619 RPAREN

    let_identifier ::= identifier

    let_port_list ::= let_port_item list_621

    let_port_item ::= list_622 opt_623 formal_port_identifier list_624 opt_626

    let_formal_type ::= data_type_or_implicit
           | UNTYPED

    gate_instantiation ::= cmos_switchtype opt_627 cmos_switch_instance list_629 SEMI
           | enable_gatetype opt_630 opt_631 enable_gate_instance list_633 SEMI
           | mos_switchtype opt_634 mos_switch_instance list_636 SEMI
           | n_input_gatetype opt_637 opt_638 n_input_gate_instance list_640 SEMI
           | n_output_gatetype opt_641 opt_642 n_output_gate_instance list_644 SEMI
           | pass_en_switchtype opt_645 pass_enable_switch_instance list_647 SEMI
           | pass_switchtype pass_switch_instance list_649 SEMI
           | PULLDOWN opt_650 pull_gate_instance list_652 SEMI
           | PULLUP opt_653 pull_gate_instance list_655 SEMI

    cmos_switch_instance ::= opt_656 LPAREN output_terminal COMMA input_terminal COMMA ncontrol_terminal COMMA pcontrol_terminal RPAREN

    enable_gate_instance ::= opt_657 LPAREN output_terminal COMMA input_terminal COMMA enable_terminal RPAREN

    mos_switch_instance ::= opt_658 LPAREN output_terminal COMMA input_terminal COMMA enable_terminal RPAREN

    n_input_gate_instance ::= opt_659 LPAREN output_terminal COMMA input_terminal list_661 RPAREN

    n_output_gate_instance ::= opt_662 LPAREN output_terminal list_664 COMMA input_terminal RPAREN

    pass_switch_instance ::= opt_665 LPAREN inout_terminal COMMA inout_terminal RPAREN

    pass_enable_switch_instance ::= opt_666 LPAREN inout_terminal COMMA inout_terminal COMMA enable_terminal RPAREN

    pull_gate_instance ::= opt_667 LPAREN output_terminal RPAREN

    pulldown_strength ::= LPAREN strength0 COMMA strength1 RPAREN
           | LPAREN strength1 COMMA strength0 RPAREN
           | LPAREN strength0 RPAREN

    pullup_strength ::= LPAREN strength0 COMMA strength1 RPAREN
           | LPAREN strength1 COMMA strength0 RPAREN
           | LPAREN strength1 RPAREN

    enable_terminal ::= expression

    inout_terminal ::= net_lvalue

    input_terminal ::= expression

    ncontrol_terminal ::= expression

    output_terminal ::= net_lvalue

    pcontrol_terminal ::= expression

    cmos_switchtype ::= CMOS
           | RCMOS

    enable_gatetype ::= BUFIF0
           | BUFIF1
           | NOTIF0
           | NOTIF1

    mos_switchtype ::= NMOS
           | PMOS
           | RNMOS
           | RPMOS

    n_input_gatetype ::= AND
           | NAND
           | OR
           | NOR
           | XOR
           | XNOR

    n_output_gatetype ::= BUF
           | NOT

    pass_en_switchtype ::= TRANIF0
           | TRANIF1
           | RTRANIF1
           | RTRANIF0

    pass_switchtype ::= TRAN
           | RTRAN

    module_program_interface_instantiation ::= instance_identifier opt_668 hierarchical_instance list_670 SEMI

    parameter_value_assignment ::= HASH LPAREN opt_671 RPAREN

    list_of_parameter_assignments ::= ordered_parameter_assignment list_673
           | named_parameter_assignment list_675

    ordered_parameter_assignment ::= param_expression

    named_parameter_assignment ::= DOT parameter_identifier LPAREN opt_676 RPAREN

    hierarchical_instance ::= name_of_instance LPAREN list_of_port_connections RPAREN

    name_of_instance ::= instance_identifier list_677

    list_of_port_connections ::= ordered_port_connection list_679
           | named_port_connection list_681

    ordered_port_connection ::= list_682 opt_683

    named_port_connection ::= list_684 DOT port_identifier opt_685
           | list_686 DOTSTAR

    port_assign ::= LPAREN opt_687 RPAREN

    checker_instantiation ::= ps_identifier name_of_instance LPAREN list_of_checker_port_connections RPAREN SEMI

    list_of_checker_port_connections ::= ordered_checker_port_connection list_689
           | named_checker_port_connection list_691

    ordered_checker_port_connection ::= list_692 opt_693

    named_checker_port_connection ::= list_694 DOT formal_port_identifier opt_695
           | list_696 DOTSTAR

    checker_port_assign ::= LPAREN opt_697 RPAREN

    generate_region ::= GENERATE list_698 ENDGENERATE

    loop_generate_construct ::= FOR LPAREN genvar_initialization SEMI genvar_expression SEMI genvar_iteration RPAREN generate_block

    genvar_initialization ::= opt_699 genvar_identifier EQ constant_expression

    genvar_iteration ::= genvar_identifier assignment_operator genvar_expression
           | inc_or_dec_operator genvar_identifier
           | genvar_identifier inc_or_dec_operator

    conditional_generate_construct ::= if_generate_construct
           | case_generate_construct

    if_generate_construct ::= IF LPAREN constant_expression RPAREN generate_block opt_701

    case_generate_construct ::= CASE LPAREN constant_expression RPAREN list_702 ENDCASE

    case_generate_item ::= constant_expression list_704 COLON generate_block
           | DEFAULT opt_705 generate_block

    generate_block ::= generate_item
           | opt_706 BEGIN opt_707 list_708 END opt_709

    generate_block_label ::= generate_block_identifier COLON

    generate_block_name ::= COLON generate_block_identifier

    generate_item ::= list_710 parameter_override
           | list_711 gate_instantiation
           | list_712 net_declaration
           | opt_715 data_declaration
           | list_716 task_declaration
           | list_717 function_declaration
           | list_718 checker_declaration
           | list_719 dpi_import_export
           | list_720 extern_constraint_declaration
           | list_721 class_declaration
           | list_722 interface_class_declaration
           | list_723 class_constructor_declaration
           | list_724 local_parameter_declaration SEMI
           | list_725 parameter_declaration SEMI
           | list_726 covergroup_declaration
           | list_727 assertion_item_declaration
           | list_728 SEMI
           | list_729 genvar_declaration
           | list_730 clocking_declaration
           | list_731 DEFAULT CLOCKING clocking_identifier SEMI
           | list_732 DEFAULT DISABLE IFF expression_or_dist SEMI
           | list_733 module_program_interface_instantiation
           | list_734 assertion_item
           | list_735 udp_instantiation
           | list_736 bind_directive
           | list_737 continuous_assign
           | list_738 net_alias
           | list_739 initial_construct
           | list_740 final_construct
           | list_741 always_construct
           | list_742 loop_generate_construct
           | list_743 conditional_generate_construct
           | list_744 elaboration_system_task
           | list_745 extern_tf_declaration
           | generate_region

    udp_nonansi_declaration ::= list_746 PRIMITIVE udp_identifier LPAREN udp_port_list RPAREN SEMI

    udp_ansi_declaration ::= list_747 PRIMITIVE udp_identifier LPAREN udp_declaration_port_list RPAREN SEMI

    udp_declaration ::= udp_nonansi_declaration list_748 udp_body ENDPRIMITIVE opt_749
           | udp_ansi_declaration udp_body ENDPRIMITIVE opt_750
           | EXTERN udp_nonansi_declaration
           | EXTERN udp_ansi_declaration
           | list_751 PRIMITIVE udp_identifier LPAREN DOTSTAR RPAREN SEMI list_752 udp_body ENDPRIMITIVE opt_753

    udp_name ::= COLON udp_identifier

    udp_port_list ::= output_port_identifier COMMA input_port_identifier list_755

    udp_declaration_port_list ::= udp_output_declaration COMMA udp_input_declaration list_757

    udp_port_declaration ::= udp_output_declaration SEMI
           | udp_input_declaration SEMI
           | udp_reg_declaration SEMI

    udp_output_declaration ::= list_758 OUTPUT port_identifier
           | list_759 OUTPUT REG port_identifier opt_761

    udp_input_declaration ::= list_762 INPUT list_of_udp_port_identifiers

    udp_reg_declaration ::= list_763 REG variable_identifier

    udp_body ::= combinational_body
           | sequential_body

    combinational_body ::= TABLE list_764 ENDTABLE

    combinational_entry ::= level_input_list COLON output_symbol SEMI

    sequential_body ::= opt_765 TABLE list_766 ENDTABLE

    udp_initial_statement ::= INITIAL output_port_identifier EQ init_val SEMI

    init_val ::= binary_number
           | unsigned_number

    sequential_entry ::= seq_input_list COLON current_state COLON next_state SEMI

    seq_input_list ::= level_input_list
           | edge_input_list

    level_input_list ::= list_767

    edge_input_list ::= list_768 edge_indicator list_769

    edge_indicator ::= LPAREN level_symbol level_symbol RPAREN
           | edge_symbol

    current_state ::= level_symbol

    next_state ::= output_symbol
           | MINUS

    output_symbol ::= OUTPUT_OR_LEVEL_SYMBOL

    level_symbol ::= LEVEL_ONLY_SYMBOL
           | OUTPUT_OR_LEVEL_SYMBOL

    edge_symbol ::= EDGE_SYMBOL

    udp_instantiation ::= udp_identifier opt_770 opt_771 udp_instance list_773 SEMI

    udp_instance ::= opt_774 LPAREN output_terminal COMMA input_terminal list_776 RPAREN

    continuous_assign ::= ASSIGN HASH LPAREN mintypmax_expression COMMA mintypmax_expression opt_778 RPAREN list_of_net_assignments SEMI
           | ASSIGN drive_strength opt_779 list_of_net_assignments SEMI
           | ASSIGN opt_780 list_of_variable_assignments SEMI

    list_of_net_assignments ::= net_assignment list_782

    list_of_variable_assignments ::= variable_assignment list_784

    net_alias ::= ALIAS net_lvalue list_786 SEMI

    net_assignment ::= net_lvalue EQ expression

    initial_construct ::= INITIAL statement_or_null

    always_construct ::= always_keyword statement

    always_keyword ::= ALWAYS
           | ALWAYS_COMB
           | ALWAYS_LATCH
           | ALWAYS_FF

    final_construct ::= FINAL function_statement

    blocking_assignment ::= variable_lvalue EQ delay_or_event_control expression
           | nonrange_variable_lvalue EQ dynamic_array_new
           | opt_788 hierarchical_identifier opt_789 EQ class_new
           | operator_assignment

    operator_assignment ::= variable_lvalue assignment_operator expression

    assignment_operator ::= EQ
           | PLUSEQ
           | MINUSEQ
           | STAREQ
           | SLASHEQ
           | PERCENTEQ
           | AMPEQ
           | PIPEEQ
           | CARETEQ
           | LSHIFTEQ
           | RSHIFTEQ
           | OP_86952
           | URSHIFTEQ

    nonblocking_assignment ::= variable_lvalue LTEQ opt_790 expression

    procedural_continuous_assignment ::= ASSIGN variable_assignment
           | DEASSIGN variable_lvalue
           | FORCE variable_assignment
           | RELEASE variable_lvalue

    variable_assignment ::= variable_lvalue EQ expression

    action_block ::= statement_or_null
           | opt_791 ELSE statement_or_null

    seq_block ::= BEGIN opt_792 list_793 list_794 END opt_795

    block_name ::= COLON block_identifier

    par_block ::= FORK opt_796 list_797 list_798 join_keyword opt_799

    join_keyword ::= JOIN
           | JOIN_ANY
           | JOIN_NONE

    statement_or_null ::= statement
           | list_800 SEMI

    statement ::= opt_801 list_802 statement_item

    statement_item ::= blocking_assignment SEMI
           | nonblocking_assignment SEMI
           | procedural_continuous_assignment SEMI
           | case_statement
           | conditional_statement
           | inc_or_dec_expression SEMI
           | subroutine_call_statement
           | disable_statement
           | event_trigger
           | loop_statement
           | jump_statement
           | par_block
           | procedural_timing_control_statement
           | seq_block
           | wait_statement
           | procedural_assertion_statement
           | clocking_drive SEMI
           | randsequence_statement
           | randcase_statement
           | expect_property_statement

    function_statement ::= statement

    function_statement_or_null ::= function_statement
           | list_803 SEMI

    variable_identifier_list ::= variable_identifier list_805

    procedural_timing_control_statement ::= procedural_timing_control statement_or_null

    delay_or_event_control ::= delay_control
           | event_control
           | REPEAT LPAREN expression RPAREN event_control

    delay_control ::= HASH delay_value
           | HASH LPAREN mintypmax_expression RPAREN

    event_control ::= AT LPAREN event_expression RPAREN
           | AT STAR
           | AT LPAREN STAR RPAREN
           | AT ps_or_hierarchical_identifier

    event_expression ::= opt_806 expression opt_808
           | sequence_instance opt_810
           | event_expression OR event_expression
           | event_expression COMMA event_expression
           | LPAREN event_expression RPAREN

    procedural_timing_control ::= delay_control
           | event_control
           | cycle_delay

    jump_statement ::= RETURN opt_811 SEMI
           | BREAK SEMI
           | CONTINUE SEMI

    wait_statement ::= WAIT LPAREN expression RPAREN statement_or_null
           | WAIT FORK SEMI
           | WAIT_ORDER LPAREN hierarchical_identifier list_813 RPAREN action_block

    event_trigger ::= ARROW hierarchical_identifier SEMI
           | OP_75265 opt_814 hierarchical_identifier SEMI

    disable_statement ::= DISABLE hierarchical_identifier SEMI
           | DISABLE FORK SEMI

    conditional_statement ::= opt_815 IF LPAREN cond_predicate RPAREN statement_or_null opt_817

    unique_priority ::= UNIQUE
           | UNIQUE0
           | PRIORITY

    cond_predicate ::= expression_or_cond_pattern list_819

    expression_or_cond_pattern ::= expression opt_821

    case_statement ::= opt_822 case_keyword LPAREN case_expression RPAREN list_823 ENDCASE
           | opt_824 case_keyword LPAREN case_expression RPAREN MATCHES list_825 ENDCASE
           | opt_826 CASE LPAREN case_expression RPAREN INSIDE list_827 ENDCASE

    case_keyword ::= CASE
           | CASEZ
           | CASEX

    case_expression ::= expression

    case_item ::= case_item_expression list_829 COLON statement_or_null
           | DEFAULT opt_830 statement_or_null

    case_pattern_item ::= pattern opt_832 COLON statement_or_null
           | DEFAULT opt_833 statement_or_null

    case_inside_item ::= open_range_list COLON statement_or_null
           | DEFAULT opt_834 statement_or_null

    case_item_expression ::= expression

    randcase_statement ::= RANDCASE list_835 ENDCASE

    randcase_item ::= expression COLON statement_or_null

    open_range_list ::= open_value_range list_837

    open_value_range ::= value_range

    pattern ::= DOT variable_identifier
           | DOTSTAR
           | constant_expression
           | TAGGED member_identifier opt_838
           | SQUOTE LBRACE pattern list_840 RBRACE
           | SQUOTE LBRACE member_pattern_pair list_842 RBRACE

    member_pattern_pair ::= member_identifier COLON pattern

    assignment_pattern ::= SQUOTE LBRACE expression list_844 RBRACE
           | SQUOTE LBRACE array_key_val_pair list_846 RBRACE
           | SQUOTE LBRACE constant_expression LBRACE expression list_848 RBRACE RBRACE

    array_key_val_pair ::= array_pattern_key COLON expression

    array_pattern_key ::= constant_expression
           | assignment_pattern_key

    assignment_pattern_key ::= integer_type
           | non_integer_type
           | LOCAL COLONCOLON identifier
           | DEFAULT

    assignment_pattern_expression ::= opt_849 assignment_pattern

    assignment_pattern_expression_type ::= ps_type_or_parameter_identifier
           | integer_atom_type
           | type_reference

    constant_assignment_pattern_expression ::= assignment_pattern_expression

    assignment_pattern_net_lvalue ::= SQUOTE LBRACE net_lvalue list_851 RBRACE

    assignment_pattern_variable_lvalue ::= SQUOTE LBRACE variable_lvalue list_853 RBRACE

    loop_statement ::= FOREVER statement_or_null
           | REPEAT LPAREN expression RPAREN statement_or_null
           | WHILE LPAREN expression RPAREN statement_or_null
           | FOR LPAREN opt_854 SEMI opt_855 SEMI opt_856 RPAREN statement_or_null
           | DO statement_or_null WHILE LPAREN expression RPAREN SEMI
           | FOREACH LPAREN ps_or_hierarchical_array_identifier LBRACKET loop_variables RBRACKET RPAREN statement

    for_initialization ::= list_of_variable_assignments
           | for_variable_declaration list_858

    for_variable_declaration ::= opt_859 data_type for_variable_assign list_861

    for_variable_assign ::= variable_identifier EQ expression

    for_step ::= for_step_assignment list_863

    for_step_assignment ::= operator_assignment
           | inc_or_dec_expression
           | subroutine_call

    loop_variables ::= loop_var list_865

    loop_var ::= opt_866

    subroutine_call_statement ::= subroutine_call SEMI
           | VOID SQUOTE LPAREN subroutine_call RPAREN SEMI

    assertion_item ::= concurrent_assertion_item
           | deferred_immediate_assertion_item

    deferred_immediate_assertion_item ::= opt_867 deferred_immediate_assertion_statement

    procedural_assertion_statement ::= concurrent_assertion_statement
           | immediate_assertion_statement
           | checker_instantiation

    immediate_assertion_statement ::= simple_immediate_assertion_statement
           | deferred_immediate_assertion_statement

    simple_immediate_assertion_statement ::= simple_immediate_assert_statement
           | simple_immediate_assume_statement
           | simple_immediate_cover_statement

    simple_immediate_assert_statement ::= ASSERT LPAREN expression RPAREN action_block

    simple_immediate_assume_statement ::= ASSUME LPAREN expression RPAREN action_block

    simple_immediate_cover_statement ::= COVER LPAREN expression RPAREN statement_or_null

    deferred_immediate_assertion_statement ::= deferred_immediate_assert_statement
           | deferred_immediate_assume_statement
           | deferred_immediate_cover_statement

    deferred_immediate_assert_statement ::= ASSERT HASH unsigned_number LPAREN expression RPAREN action_block
           | ASSERT FINAL LPAREN expression RPAREN action_block

    deferred_immediate_assume_statement ::= ASSUME HASH unsigned_number LPAREN expression RPAREN action_block
           | ASSUME FINAL LPAREN expression RPAREN action_block

    deferred_immediate_cover_statement ::= COVER HASH unsigned_number LPAREN expression RPAREN statement_or_null
           | COVER FINAL LPAREN expression RPAREN statement_or_null

    clocking_declaration ::= opt_868 CLOCKING opt_869 clocking_event SEMI list_870 ENDCLOCKING opt_871
           | GLOBAL CLOCKING opt_872 clocking_event SEMI ENDCLOCKING opt_873

    clocking_name ::= COLON clocking_identifier

    clocking_event ::= AT identifier
           | AT LPAREN event_expression RPAREN

    clocking_item ::= DEFAULT default_skew SEMI
           | clocking_direction list_of_clocking_decl_assign SEMI
           | list_874 assertion_item_declaration

    default_skew ::= INPUT clocking_skew
           | OUTPUT clocking_skew
           | INPUT clocking_skew OUTPUT clocking_skew

    clocking_direction ::= INPUT opt_875
           | OUTPUT opt_876
           | INPUT opt_877 OUTPUT opt_878
           | INOUT

    list_of_clocking_decl_assign ::= clocking_decl_assign list_880

    clocking_decl_assign ::= signal_identifier opt_882

    clocking_skew ::= edge_identifier opt_883
           | delay_control

    clocking_drive ::= clockvar_expression LTEQ cycle_delay expression

    cycle_delay ::= OP_79944 integral_number
           | OP_79944 identifier
           | OP_79944 LPAREN expression RPAREN

    clockvar ::= hierarchical_identifier

    clockvar_expression ::= clockvar opt_884

    randsequence_statement ::= RANDSEQUENCE LPAREN opt_885 RPAREN list_886 ENDSEQUENCE

    production ::= opt_887 production_identifier opt_888 COLON rs_rule list_890 SEMI

    rs_rule ::= rs_production_list opt_891

    weight_spec ::= COLONEQ weight_specification opt_892

    rs_production_list ::= list_893
           | RAND JOIN opt_895 list_896

    weight_specification ::= integral_number
           | ps_identifier
           | LPAREN expression RPAREN

    rs_code_block ::= LBRACE list_897 list_898 RBRACE

    rs_prod ::= production_item
           | rs_code_block
           | rs_if_else
           | rs_repeat
           | rs_case

    production_item ::= production_identifier opt_899

    rs_if_else ::= IF LPAREN expression RPAREN production_item opt_901

    rs_repeat ::= REPEAT LPAREN expression RPAREN production_item

    rs_case ::= CASE LPAREN case_expression RPAREN list_902 ENDCASE

    rs_case_item ::= case_item_expression list_904 COLON production_item SEMI
           | DEFAULT opt_905 production_item SEMI

    specify_block ::= SPECIFY list_906 ENDSPECIFY

    specify_item ::= specparam_declaration
           | pulsestyle_declaration
           | showcancelled_declaration
           | path_declaration
           | system_timing_check

    pulsestyle_declaration ::= PULSESTYLE_ONEVENT list_of_path_outputs SEMI
           | PULSESTYLE_ONDETECT list_of_path_outputs SEMI

    showcancelled_declaration ::= SHOWCANCELLED list_of_path_outputs SEMI
           | NOSHOWCANCELLED list_of_path_outputs SEMI

    path_declaration ::= simple_path_declaration SEMI
           | edge_sensitive_path_declaration SEMI
           | state_dependent_path_declaration SEMI

    simple_path_declaration ::= parallel_path_description EQ path_delay_value
           | full_path_description EQ path_delay_value

    parallel_path_description ::= LPAREN specify_input_terminal_descriptor opt_907 FATARROW specify_output_terminal_descriptor RPAREN

    full_path_description ::= LPAREN list_of_path_inputs opt_908 OP_80149 list_of_path_outputs RPAREN

    list_of_path_inputs ::= specify_input_terminal_descriptor list_910

    list_of_path_outputs ::= specify_output_terminal_descriptor list_912

    specify_input_terminal_descriptor ::= input_identifier opt_914

    specify_output_terminal_descriptor ::= output_identifier opt_916

    input_identifier ::= port_identifier
           | interface_identifier DOT port_identifier

    output_identifier ::= port_identifier
           | interface_identifier DOT port_identifier

    path_delay_value ::= list_of_path_delay_expressions
           | LPAREN list_of_path_delay_expressions RPAREN

    list_of_path_delay_expressions ::= t_path_delay_expression
           | trise_path_delay_expression COMMA tfall_path_delay_expression opt_918
           | t01_path_delay_expression COMMA t10_path_delay_expression COMMA t0z_path_delay_expression COMMA tz1_path_delay_expression COMMA t1z_path_delay_expression COMMA tz0_path_delay_expression opt_920

    t_path_delay_expression ::= path_delay_expression

    trise_path_delay_expression ::= path_delay_expression

    tfall_path_delay_expression ::= path_delay_expression

    tz_path_delay_expression ::= path_delay_expression

    t01_path_delay_expression ::= path_delay_expression

    t10_path_delay_expression ::= path_delay_expression

    t0z_path_delay_expression ::= path_delay_expression

    tz1_path_delay_expression ::= path_delay_expression

    t1z_path_delay_expression ::= path_delay_expression

    tz0_path_delay_expression ::= path_delay_expression

    t0x_path_delay_expression ::= path_delay_expression

    tx1_path_delay_expression ::= path_delay_expression

    t1x_path_delay_expression ::= path_delay_expression

    tx0_path_delay_expression ::= path_delay_expression

    txz_path_delay_expression ::= path_delay_expression

    tzx_path_delay_expression ::= path_delay_expression

    path_delay_expression ::= constant_mintypmax_expression

    edge_sensitive_path_declaration ::= parallel_edge_sensitive_path_description EQ path_delay_value
           | full_edge_sensitive_path_description EQ path_delay_value

    parallel_edge_sensitive_path_description ::= LPAREN opt_921 specify_input_terminal_descriptor opt_922 FATARROW LPAREN specify_output_terminal_descriptor opt_923 COLON data_source_expression RPAREN RPAREN

    full_edge_sensitive_path_description ::= LPAREN opt_924 list_of_path_inputs opt_925 OP_80149 LPAREN list_of_path_outputs opt_926 COLON data_source_expression RPAREN RPAREN

    data_source_expression ::= expression

    edge_identifier ::= POSEDGE
           | NEGEDGE
           | EDGE

    state_dependent_path_declaration ::= IF LPAREN module_path_expression RPAREN simple_path_declaration
           | IF LPAREN module_path_expression RPAREN edge_sensitive_path_declaration
           | IFNONE simple_path_declaration

    polarity_operator ::= PLUS
           | MINUS

    system_timing_check ::= setup_timing_check
           | hold_timing_check
           | setuphold_timing_check
           | recovery_timing_check
           | removal_timing_check
           | recrem_timing_check
           | skew_timing_check
           | timeskew_timing_check
           | fullskew_timing_check
           | period_timing_check
           | width_timing_check
           | nochange_timing_check

    setup_timing_check ::= _SETUP LPAREN data_event COMMA reference_event COMMA timing_check_limit opt_927 RPAREN SEMI

    notifier_opt ::= COMMA opt_928

    hold_timing_check ::= _HOLD LPAREN reference_event COMMA data_event COMMA timing_check_limit opt_929 RPAREN SEMI

    setuphold_timing_check ::= _SETUPHOLD LPAREN reference_event COMMA data_event COMMA timing_check_limit COMMA timing_check_limit opt_930 RPAREN SEMI

    timing_check_opt ::= COMMA opt_931 opt_932

    timestamp_cond_opt ::= COMMA opt_933 opt_934

    timecheck_cond_opt ::= COMMA opt_935 opt_936

    delayed_ref_opt ::= COMMA opt_937 opt_938

    delayed_data_opt ::= COMMA opt_939

    recovery_timing_check ::= _RECOVERY LPAREN reference_event COMMA data_event COMMA timing_check_limit opt_940 RPAREN SEMI

    removal_timing_check ::= _REMOVAL LPAREN reference_event COMMA data_event COMMA timing_check_limit opt_941 RPAREN SEMI

    recrem_timing_check ::= _RECREM LPAREN reference_event COMMA data_event COMMA timing_check_limit COMMA timing_check_limit opt_942 RPAREN SEMI

    skew_timing_check ::= _SKEW LPAREN reference_event COMMA data_event COMMA timing_check_limit opt_943 RPAREN SEMI

    timeskew_timing_check ::= _TIMESKEW LPAREN reference_event COMMA data_event COMMA timing_check_limit opt_944 RPAREN SEMI

    skew_timing_check_opt ::= COMMA opt_945 opt_946

    event_based_flag_opt ::= COMMA opt_947 opt_948

    remain_active_flag_opt ::= COMMA opt_949

    fullskew_timing_check ::= _FULLSKEW LPAREN reference_event COMMA data_event COMMA timing_check_limit COMMA timing_check_limit opt_950 RPAREN SEMI

    period_timing_check ::= _PERIOD LPAREN controlled_reference_event COMMA timing_check_limit opt_951 RPAREN SEMI

    width_timing_check ::= _WIDTH LPAREN controlled_reference_event COMMA timing_check_limit COMMA threshold opt_952 RPAREN SEMI

    nochange_timing_check ::= _NOCHANGE LPAREN reference_event COMMA data_event COMMA start_edge_offset COMMA end_edge_offset opt_953 RPAREN SEMI

    timecheck_condition ::= mintypmax_expression

    controlled_reference_event ::= controlled_timing_check_event

    data_event ::= timing_check_event

    delayed_data ::= terminal_identifier opt_955

    delayed_reference ::= terminal_identifier opt_957

    end_edge_offset ::= mintypmax_expression

    event_based_flag ::= constant_expression

    notifier ::= variable_identifier

    reference_event ::= timing_check_event

    remain_active_flag ::= constant_mintypmax_expression

    timestamp_condition ::= mintypmax_expression

    start_edge_offset ::= mintypmax_expression

    threshold ::= constant_expression

    timing_check_limit ::= expression

    timing_check_event ::= opt_958 specify_terminal_descriptor opt_960

    controlled_timing_check_event ::= timing_check_event_control specify_terminal_descriptor opt_962

    timing_check_event_control ::= POSEDGE
           | NEGEDGE
           | EDGE
           | edge_control_specifier

    specify_terminal_descriptor ::= opt_964 port_identifier opt_966

    edge_control_specifier ::= EDGE LBRACKET edge_descriptor list_968 RBRACKET

    edge_descriptor ::= SIMPLE_IDENTIFIER
           | UNSIGNED_NUMBER
           | ZERO_OR_ONE_X_OR_Z

    timing_check_condition ::= scalar_timing_check_condition
           | LPAREN scalar_timing_check_condition RPAREN

    scalar_timing_check_condition ::= expression
           | TILDE expression
           | expression EQEQ scalar_constant
           | expression EQEQEQ scalar_constant
           | expression NOTEQ scalar_constant
           | expression NOTEQEQ scalar_constant

    scalar_constant ::= binary_number
           | unsigned_number

    concatenation ::= LBRACE expression list_970 RBRACE

    constant_concatenation ::= LBRACE constant_expression list_972 RBRACE

    constant_multiple_concatenation ::= LBRACE constant_expression constant_concatenation RBRACE

    module_path_concatenation ::= LBRACE module_path_expression list_974 RBRACE

    module_path_multiple_concatenation ::= LBRACE constant_expression module_path_concatenation RBRACE

    multiple_concatenation ::= LBRACE expression concatenation RBRACE

    streaming_concatenation ::= LBRACE stream_operator opt_975 stream_concatenation RBRACE

    stream_operator ::= RSHIFT
           | LSHIFT

    slice_size ::= simple_type
           | constant_expression

    stream_concatenation ::= LBRACE stream_expression list_977 RBRACE

    stream_expression ::= expression opt_979

    array_range_expression ::= expression
           | expression COLON expression
           | expression OP_49417 expression
           | expression OP_89451 expression

    empty_unpacked_array_concatenation ::= LBRACE RBRACE

    system_tf_call ::= system_tf_identifier opt_980
           | system_tf_identifier LPAREN data_type opt_982 RPAREN
           | system_tf_identifier LPAREN expression list_984 COMMA clocking_event RPAREN

    arg_list ::= LPAREN list_of_arguments RPAREN

    subroutine_call ::= opt_986 identifier list_987 opt_988
           | system_tf_call
           | method_call_root DOT array_manipulation_call
           | opt_990 randomize_call

    list_of_arguments ::= ordered_arg list_992 list_994
           | named_arg list_996

    ordered_arg ::= opt_997

    named_arg ::= DOT identifier LPAREN opt_998 RPAREN

    array_manipulation_call ::= array_method_name list_999 opt_1000 opt_1002

    randomize_call ::= RANDOMIZE list_1003 opt_1004 opt_1005

    rand_list ::= LPAREN opt_1007 RPAREN

    rand_with ::= WITH opt_1008 constraint_block

    id_list ::= LPAREN opt_1009 RPAREN

    method_call_root ::= primary
           | implicit_class_handle

    array_method_name ::= method_identifier
           | UNIQUE
           | AND
           | OR
           | XOR

    inc_or_dec_expression ::= inc_or_dec_operator list_1010 variable_lvalue
           | variable_lvalue list_1011 inc_or_dec_operator

    constant_expression ::= constant_primary
           | unary_operator list_1012 constant_primary
           | constant_expression STARSTAR list_1013 constant_expression
           | constant_expression grp_1014 list_1015 constant_expression
           | constant_expression grp_1016 list_1017 constant_expression
           | constant_expression grp_1018 list_1019 constant_expression
           | constant_expression grp_1020 list_1021 constant_expression
           | constant_expression grp_1022 list_1023 constant_expression
           | constant_expression AMP list_1024 constant_expression
           | constant_expression grp_1025 list_1026 constant_expression
           | constant_expression PIPE list_1027 constant_expression
           | constant_expression ANDAND list_1028 constant_expression
           | constant_expression OROR list_1029 constant_expression
           | constant_expression QUESTION list_1030 constant_expression COLON constant_expression
           | constant_expression grp_1031 list_1032 constant_expression

    constant_mintypmax_expression ::= constant_expression opt_1034

    constant_param_expression ::= constant_mintypmax_expression
           | data_type
           | DOLLAR

    param_expression ::= mintypmax_expression
           | data_type
           | DOLLAR

    constant_range_expression ::= constant_expression
           | constant_part_select_range

    constant_part_select_range ::= constant_range
           | constant_indexed_range

    constant_range ::= constant_expression COLON constant_expression

    constant_indexed_range ::= constant_expression OP_49417 constant_expression
           | constant_expression OP_89451 constant_expression

    expression ::= primary
           | LPAREN operator_assignment RPAREN
           | unary_operator list_1035 primary
           | inc_or_dec_expression
           | tagged_union_expression
           | expression STARSTAR list_1036 expression
           | expression grp_1037 list_1038 expression
           | expression grp_1039 list_1040 expression
           | expression grp_1041 list_1042 expression
           | expression grp_1043
           | expression grp_1046 list_1047 expression
           | expression AMP list_1048 expression
           | expression grp_1049 list_1050 expression
           | expression PIPE list_1051 expression
           | expression ANDAND list_1052 expression
           | expression OROR list_1053 expression
           | expression opt_1055 list_1057 QUESTION list_1058 expression COLON expression
           | expression grp_1059 list_1060 expression

    tagged_union_expression ::= TAGGED member_identifier opt_1061

    value_range ::= expression
           | LBRACKET expression COLON expression RBRACKET

    mintypmax_expression ::= expression opt_1063

    module_path_expression ::= module_path_primary
           | unary_module_path_operator list_1064 module_path_primary
           | module_path_expression grp_1065 list_1066 module_path_expression
           | module_path_expression AMP list_1067 module_path_expression
           | module_path_expression grp_1068 list_1069 module_path_expression
           | module_path_expression PIPE list_1070 module_path_expression
           | module_path_expression ANDAND list_1071 module_path_expression
           | module_path_expression OROR list_1072 module_path_expression
           | module_path_expression QUESTION list_1073 module_path_expression COLON module_path_expression

    module_path_mintypmax_expression ::= module_path_expression opt_1075

    part_select_range ::= constant_range
           | indexed_range

    indexed_range ::= expression OP_49417 constant_expression
           | expression OP_89451 constant_expression

    genvar_expression ::= constant_expression

    constant_primary ::= primary_literal
           | opt_1078 identifier opt_1079
           | constant_concatenation opt_1081
           | constant_multiple_concatenation opt_1083
           | opt_1084 identifier grp_1085
           | _ROOT DOT identifier list_1088 opt_1089
           | system_tf_call
           | method_call_root DOT array_manipulation_call
           | opt_1091 randomize_call
           | LPAREN constant_mintypmax_expression RPAREN
           | constant_primary SQUOTE LPAREN constant_expression RPAREN
           | grp_1092 SQUOTE LPAREN constant_expression RPAREN
           | constant_assignment_pattern_expression
           | type_reference
           | NULL_LITERAL

    module_path_primary ::= number
           | module_path_concatenation
           | module_path_multiple_concatenation
           | opt_1094 identifier list_1095 opt_1096
           | system_tf_call
           | method_call_root DOT array_manipulation_call
           | opt_1098 randomize_call
           | LPAREN module_path_mintypmax_expression RPAREN

    primary ::= primary_literal
           | opt_1099 hierarchical_identifier opt_1100
           | implicit_class_handle DOT grp_1101
           | LOCAL COLONCOLON opt_1105 hierarchical_identifier opt_1106
           | empty_unpacked_array_concatenation
           | concatenation opt_1108
           | multiple_concatenation opt_1110
           | opt_1112 identifier grp_1113
           | system_tf_call
           | primary DOT grp_1116
           | opt_1118 SUPER DOT grp_1119
           | opt_1121 randomize_call
           | LPAREN mintypmax_expression RPAREN
           | primary SQUOTE LPAREN expression RPAREN
           | grp_1122 SQUOTE LPAREN expression RPAREN
           | assignment_pattern_expression
           | streaming_concatenation
           | sequence_method_call
           | THIS
           | DOLLAR
           | NULL_LITERAL

    range_expression ::= expression
           | part_select_range

    primary_literal ::= number
           | time_literal
           | unbased_unsized_literal
           | string_literal

    time_literal ::= TIME_LITERAL

    implicit_class_handle ::= THIS opt_1124
           | SUPER

    bit_select ::= list_1126

    select_ ::= LBRACKET part_select_range RBRACKET
           | bit_select opt_1128
           | list_1129 opt_1131

    nonrange_select ::= bit_select
           | list_1132

    member_select ::= DOT member_identifier opt_1133

    constant_bit_select ::= list_1135

    constant_select ::= LBRACKET constant_part_select_range RBRACKET
           | constant_bit_select opt_1137
           | list_1138 opt_1140

    const_member_select ::= DOT member_identifier opt_1141

    net_lvalue ::= ps_or_hierarchical_identifier opt_1142
           | LBRACE net_lvalue list_1144 RBRACE
           | opt_1145 assignment_pattern_net_lvalue

    variable_lvalue ::= opt_1147 hierarchical_identifier opt_1148
           | LBRACE variable_lvalue list_1150 RBRACE
           | opt_1151 assignment_pattern_variable_lvalue
           | streaming_concatenation

    nonrange_variable_lvalue ::= opt_1153 hierarchical_identifier opt_1154

    unary_operator ::= PLUS
           | MINUS
           | BANG
           | TILDE
           | AMP
           | OP_10129
           | PIPE
           | OP_19907
           | CARET
           | OP_67671
           | OP_20287

    inc_or_dec_operator ::= PLUSPLUS
           | MINUSMINUS

    unary_module_path_operator ::= BANG
           | TILDE
           | AMP
           | OP_10129
           | PIPE
           | OP_19907
           | CARET
           | OP_67671
           | OP_20287

    number ::= integral_number
           | real_number

    integral_number ::= decimal_number
           | octal_number
           | binary_number
           | hex_number

    decimal_number ::= unsigned_number
           | opt_1155 decimal_base decimal_value

    binary_number ::= opt_1156 binary_base binary_value

    octal_number ::= opt_1157 octal_base octal_value

    hex_number ::= opt_1158 hex_base hex_value

    size ::= UNSIGNED_NUMBER

    real_number ::= fixed_point_number
           | exponential_number

    fixed_point_number ::= FIXED_POINT_NUMBER

    exponential_number ::= EXPONENTIAL_NUMBER

    unsigned_number ::= UNSIGNED_NUMBER

    decimal_value ::= UNSIGNED_NUMBER
           | X_OR_Z_UNDERSCORE

    binary_value ::= BINARY_VALUE

    octal_value ::= OCTAL_VALUE

    hex_value ::= HEX_VALUE

    decimal_base ::= DECIMAL_BASE

    binary_base ::= BINARY_BASE

    octal_base ::= OCTAL_BASE

    hex_base ::= HEX_BASE

    unbased_unsized_literal ::= UNBASED_UNSIZED_LITERAL

    string_literal ::= STRING_LITERAL

    attribute_instance ::= LPAREN STAR attr_spec list_1160 STAR RPAREN

    attr_spec ::= attr_name opt_1162

    attr_name ::= identifier

    block_identifier ::= identifier

    bin_identifier ::= identifier

    c_identifier ::= SIMPLE_IDENTIFIER

    cell_identifier ::= identifier

    checker_identifier ::= identifier

    class_identifier ::= identifier

    class_variable_identifier ::= identifier

    clocking_identifier ::= identifier

    config_identifier ::= identifier

    const_identifier ::= identifier

    constraint_identifier ::= identifier

    covergroup_identifier ::= identifier

    cover_point_identifier ::= identifier

    cross_identifier ::= identifier

    dynamic_array_variable_identifier ::= identifier

    enum_identifier ::= identifier

    escaped_identifier ::= ESCAPED_IDENTIFIER

    formal_port_identifier ::= identifier

    function_identifier ::= identifier

    generate_block_identifier ::= identifier

    genvar_identifier ::= identifier

    hierarchical_identifier ::= opt_1164 list_1165 identifier

    hier_ref ::= identifier opt_1166 DOT

    identifier ::= simple_identifier
           | escaped_identifier

    index_variable_identifier ::= identifier

    interface_identifier ::= identifier

    interface_instance_identifier ::= identifier

    input_port_identifier ::= identifier

    instance_identifier ::= identifier

    library_identifier ::= identifier

    member_identifier ::= identifier

    method_identifier ::= identifier

    modport_identifier ::= identifier

    module_identifier ::= identifier

    net_identifier ::= identifier

    net_type_identifier ::= identifier

    output_port_identifier ::= identifier

    package_identifier ::= identifier

    package_scope ::= package_identifier COLONCOLON
           | _UNIT COLONCOLON

    parameter_identifier ::= identifier

    port_identifier ::= identifier

    production_identifier ::= identifier

    program_identifier ::= identifier

    property_identifier ::= identifier

    ps_identifier ::= opt_1167 identifier

    ps_or_hierarchical_array_identifier ::= opt_1169 hierarchical_identifier

    ps_or_hierarchical_identifier ::= opt_1170 identifier
           | list_1171 identifier
           | _ROOT DOT list_1172 identifier

    ps_type_or_parameter_identifier ::= opt_1175 identifier

    gen_ref ::= generate_block_identifier opt_1177 DOT

    sequence_identifier ::= identifier

    signal_identifier ::= identifier

    simple_identifier ::= SIMPLE_IDENTIFIER

    specparam_identifier ::= identifier

    system_tf_identifier ::= SYSTEM_TF_IDENTIFIER
           | _ERROR
           | _FATAL
           | _INFO
           | _WARNING

    task_identifier ::= identifier

    tf_identifier ::= identifier

    terminal_identifier ::= identifier

    topmodule_identifier ::= identifier

    type_identifier ::= identifier

    udp_identifier ::= identifier

    variable_identifier ::= identifier

    list_1 ::= $empty | list_1 compiler_directive

    grp_2 ::= source_text_ | compiler_directive

    list_3 ::= $empty | list_3 grp_2

    list_4 ::= $empty | list_4 elsif_directive

    opt_5 ::= else_directive | $empty

    list_6 ::= $empty | list_6 elsif_directive

    opt_7 ::= else_directive | $empty

    grp_8 ::= DQ filename DQ | LT filename GT | text_macro_usage

    grp_9 ::= macro_text_ | macro_delimiter | macro_esc_newline | macro_esc_quote | macro_quote | string_literal

    list_10 ::= $empty | list_10 grp_9

    seq_11 ::= CO pragma_expression

    list_12 ::= $empty | list_12 seq_11

    seq_13 ::= pragma_expression list_12

    opt_14 ::= seq_13 | $empty

    seq_15 ::= pragma_keyword EQ

    opt_16 ::= seq_15 | $empty

    seq_17 ::= CO pragma_expression

    list_18 ::= $empty | list_18 seq_17

    list_19 ::= $empty | list_19 library_description

    seq_20 ::= COMMA file_path_spec

    list_21 ::= $empty | list_21 seq_20

    opt_22 ::= library_incdir | $empty

    seq_23 ::= COMMA file_path_spec

    list_24 ::= $empty | list_24 seq_23

    opt_25 ::= timeunits_declaration | $empty

    list_26 ::= $empty | list_26 description

    list_27 ::= $empty | list_27 attribute_instance

    list_28 ::= $empty | list_28 attribute_instance

    list_29 ::= $empty | list_29 attribute_instance

    opt_30 ::= lifetime | $empty

    list_31 ::= $empty | list_31 package_import_declaration

    opt_32 ::= parameter_port_list | $empty

    opt_33 ::= list_of_port_declarations | $empty

    opt_34 ::= timeunits_declaration | $empty

    list_35 ::= $empty | list_35 module_item

    opt_36 ::= module_name | $empty

    list_37 ::= $empty | list_37 attribute_instance

    opt_38 ::= lifetime | $empty

    opt_39 ::= timeunits_declaration | $empty

    list_40 ::= $empty | list_40 module_item

    opt_41 ::= module_name | $empty

    opt_42 ::= timeunits_declaration | $empty

    list_43 ::= $empty | list_43 interface_item

    opt_44 ::= interface_name | $empty

    list_45 ::= $empty | list_45 attribute_instance

    opt_46 ::= timeunits_declaration | $empty

    list_47 ::= $empty | list_47 interface_item

    opt_48 ::= interface_name | $empty

    list_49 ::= $empty | list_49 attribute_instance

    opt_50 ::= lifetime | $empty

    list_51 ::= $empty | list_51 package_import_declaration

    opt_52 ::= parameter_port_list | $empty

    opt_53 ::= list_of_port_declarations | $empty

    opt_54 ::= timeunits_declaration | $empty

    list_55 ::= $empty | list_55 program_item

    opt_56 ::= program_name | $empty

    list_57 ::= $empty | list_57 attribute_instance

    opt_58 ::= timeunits_declaration | $empty

    list_59 ::= $empty | list_59 program_item

    opt_60 ::= program_name | $empty

    list_61 ::= $empty | list_61 attribute_instance

    opt_62 ::= lifetime | $empty

    list_63 ::= $empty | list_63 package_import_declaration

    opt_64 ::= parameter_port_list | $empty

    opt_65 ::= list_of_port_declarations | $empty

    opt_66 ::= checker_ports | $empty

    list_67 ::= $empty | list_67 checker_decl_item

    opt_68 ::= checker_name | $empty

    opt_69 ::= checker_port_list | $empty

    list_70 ::= $empty | list_70 attribute_instance

    opt_71 ::= VIRTUAL | $empty

    opt_72 ::= lifetime | $empty

    opt_73 ::= parameter_port_list | $empty

    opt_74 ::= class_extension | $empty

    opt_75 ::= class_implementation | $empty

    list_76 ::= $empty | list_76 class_item

    opt_77 ::= class_name | $empty

    opt_78 ::= arg_list | $empty

    seq_79 ::= COMMA interface_class_type

    list_80 ::= $empty | list_80 seq_79

    opt_81 ::= parameter_value_assignment | $empty

    opt_82 ::= parameter_port_list | $empty

    opt_83 ::= interface_class_extension | $empty

    list_84 ::= $empty | list_84 interface_class_item

    opt_85 ::= class_name | $empty

    seq_86 ::= COMMA interface_class_type

    list_87 ::= $empty | list_87 seq_86

    list_88 ::= $empty | list_88 attribute_instance

    list_89 ::= $empty | list_89 attribute_instance

    opt_90 ::= lifetime | $empty

    opt_91 ::= timeunits_declaration | $empty

    list_92 ::= $empty | list_92 pkg_decl_item

    opt_93 ::= package_name | $empty

    list_94 ::= $empty | list_94 attribute_instance

    seq_95 ::= SLASH time_literal

    opt_96 ::= seq_95 | $empty

    seq_97 ::= TIMEUNIT time_literal SEMI

    opt_98 ::= seq_97 | $empty

    seq_99 ::= COMMA parameter_port_declaration

    list_100 ::= $empty | list_100 seq_99

    seq_101 ::= COMMA parameter_port_declaration

    list_102 ::= $empty | list_102 seq_101

    seq_103 ::= COMMA port_decl

    list_104 ::= $empty | list_104 seq_103

    seq_105 ::= COMMA port

    list_106 ::= seq_105 | list_106 seq_105

    list_107 ::= $empty | list_107 attribute_instance

    list_108 ::= $empty | list_108 attribute_instance

    list_109 ::= $empty | list_109 attribute_instance

    list_110 ::= $empty | list_110 attribute_instance

    list_111 ::= $empty | list_111 attribute_instance

    list_112 ::= $empty | list_112 attribute_instance

    opt_113 ::= port_implicit | $empty

    opt_114 ::= constant_bit_select | $empty

    list_115 ::= const_member_select | list_115 const_member_select

    seq_116 ::= LBRACKET constant_part_select_range RBRACKET

    opt_117 ::= seq_116 | $empty

    seq_118 ::= COMMA port_reference

    list_119 ::= $empty | list_119 seq_118

    opt_120 ::= constant_select | $empty

    seq_121 ::= DOT modport_identifier

    opt_122 ::= seq_121 | $empty

    list_123 ::= $empty | list_123 unpacked_dimension

    seq_124 ::= EQ constant_expression

    opt_125 ::= seq_124 | $empty

    list_126 ::= $empty | list_126 unpacked_dimension

    seq_127 ::= EQ constant_expression

    opt_128 ::= seq_127 | $empty

    opt_129 ::= port_direction | $empty

    opt_130 ::= expression | $empty

    opt_131 ::= port_direction | $empty

    opt_132 ::= implicit_data_type | $empty

    list_133 ::= $empty | list_133 unpacked_dimension

    seq_134 ::= EQ constant_expression

    opt_135 ::= seq_134 | $empty

    opt_136 ::= port_direction | $empty

    opt_137 ::= data_type_or_implicit | $empty

    list_138 ::= $empty | list_138 variable_dimension

    seq_139 ::= EQ constant_expression

    opt_140 ::= seq_139 | $empty

    opt_141 ::= port_direction | $empty

    opt_142 ::= data_type | $empty

    list_143 ::= $empty | list_143 variable_dimension

    seq_144 ::= EQ constant_expression

    opt_145 ::= seq_144 | $empty

    opt_146 ::= port_direction | $empty

    list_147 ::= $empty | list_147 unpacked_dimension

    seq_148 ::= EQ constant_expression

    opt_149 ::= seq_148 | $empty

    opt_150 ::= port_direction | $empty

    opt_151 ::= data_type_or_implicit | $empty

    list_152 ::= $empty | list_152 unpacked_dimension

    seq_153 ::= EQ constant_expression

    opt_154 ::= seq_153 | $empty

    opt_155 ::= fatal_arg_list | $empty

    opt_156 ::= arg_list | $empty

    opt_157 ::= arg_list | $empty

    opt_158 ::= arg_list | $empty

    seq_159 ::= COMMA list_of_arguments

    opt_160 ::= seq_159 | $empty

    list_161 ::= $empty | list_161 attribute_instance

    list_162 ::= $empty | list_162 attribute_instance

    list_163 ::= $empty | list_163 attribute_instance

    list_164 ::= $empty | list_164 attribute_instance

    list_165 ::= $empty | list_165 attribute_instance

    seq_166 ::= COLON bind_target_instance_list

    opt_167 ::= seq_166 | $empty

    opt_168 ::= constant_bit_select | $empty

    seq_169 ::= COMMA bind_target_instance

    list_170 ::= $empty | list_170 seq_169

    seq_171 ::= local_parameter_declaration SEMI

    list_172 ::= $empty | list_172 seq_171

    list_173 ::= $empty | list_173 config_rule_statement

    opt_174 ::= config_name | $empty

    list_175 ::= $empty | list_175 design_statement_item

    seq_176 ::= library_identifier DOT

    opt_177 ::= seq_176 | $empty

    seq_178 ::= DOT instance_identifier

    list_179 ::= $empty | list_179 seq_178

    seq_180 ::= library_identifier DOT

    opt_181 ::= seq_180 | $empty

    list_182 ::= $empty | list_182 library_identifier

    seq_183 ::= library_identifier DOT

    opt_184 ::= seq_183 | $empty

    seq_185 ::= COLON CONFIG

    opt_186 ::= seq_185 | $empty

    seq_187 ::= COMMA named_parameter_assignment

    list_188 ::= $empty | list_188 seq_187

    seq_189 ::= COLON CONFIG

    opt_190 ::= seq_189 | $empty

    seq_191 ::= library_identifier DOT

    opt_192 ::= seq_191 | $empty

    seq_193 ::= COMMA named_parameter_assignment

    list_194 ::= $empty | list_194 seq_193

    seq_195 ::= COLON CONFIG

    opt_196 ::= seq_195 | $empty

    list_197 ::= $empty | list_197 attribute_instance

    list_198 ::= $empty | list_198 attribute_instance

    list_199 ::= $empty | list_199 attribute_instance

    list_200 ::= $empty | list_200 attribute_instance

    list_201 ::= $empty | list_201 attribute_instance

    list_202 ::= $empty | list_202 attribute_instance

    list_203 ::= $empty | list_203 attribute_instance

    seq_204 ::= COMMA checker_port_item

    list_205 ::= $empty | list_205 seq_204

    list_206 ::= $empty | list_206 attribute_instance

    opt_207 ::= checker_port_direction | $empty

    opt_208 ::= property_formal_type | $empty

    list_209 ::= $empty | list_209 variable_dimension

    seq_210 ::= EQ property_actual_arg

    opt_211 ::= seq_210 | $empty

    opt_212 ::= RAND | $empty

    list_213 ::= $empty | list_213 attribute_instance

    list_214 ::= $empty | list_214 attribute_instance

    list_215 ::= $empty | list_215 attribute_instance

    list_216 ::= $empty | list_216 attribute_instance

    list_217 ::= $empty | list_217 attribute_instance

    list_219 ::= class_item_qualifier | list_219 class_item_qualifier

    grp_218 ::= PROTECTED | LOCAL | class_item_qualifier list_219

    seq_220 ::= EQ constant_expression

    opt_221 ::= seq_220 | $empty

    list_222 ::= $empty | list_222 property_qualifier

    opt_223 ::= AUTOMATIC | $empty

    list_224 ::= $empty | list_224 property_qualifier

    opt_225 ::= lifetime | $empty

    list_226 ::= $empty | list_226 property_qualifier

    opt_227 ::= CONST | $empty

    opt_228 ::= lifetime | $empty

    opt_229 ::= data_type_or_implicit | $empty

    list_230 ::= $empty | list_230 property_qualifier

    list_231 ::= $empty | list_231 property_qualifier

    list_232 ::= $empty | list_232 property_qualifier

    list_233 ::= $empty | list_233 method_qualifier

    list_234 ::= $empty | list_234 method_qualifier

    list_235 ::= $empty | list_235 class_item_qualifier

    list_236 ::= $empty | list_236 method_qualifier

    list_237 ::= $empty | list_237 method_qualifier

    list_238 ::= $empty | list_238 method_qualifier

    opt_239 ::= port_list | $empty

    opt_240 ::= PURE | $empty

    opt_241 ::= class_scope | $empty

    opt_242 ::= port_list | $empty

    list_243 ::= $empty | list_243 block_item_declaration

    opt_244 ::= super_class_constructor_call | $empty

    list_245 ::= $empty | list_245 function_statement_or_null

    seq_246 ::= COLON NEW

    opt_247 ::= seq_246 | $empty

    opt_248 ::= arg_list | $empty

    opt_249 ::= STATIC | $empty

    list_250 ::= $empty | list_250 constraint_block_item

    seq_251 ::= COMMA constraint_primary

    list_252 ::= $empty | list_252 seq_251

    grp_253 ::= implicit_class_handle DOT | class_scope

    opt_254 ::= grp_253 | $empty

    opt_255 ::= select_ | $empty

    opt_256 ::= SOFT | $empty

    seq_257 ::= ELSE constraint_set

    opt_258 ::= seq_257 | $empty

    list_259 ::= $empty | list_259 constraint_expression

    seq_260 ::= COMMA dist_item

    list_261 ::= $empty | list_261 seq_260

    opt_262 ::= dist_weight | $empty

    opt_263 ::= constraint_prototype_qualifier | $empty

    opt_264 ::= STATIC | $empty

    opt_265 ::= STATIC | $empty

    seq_266 ::= COMMA identifier

    list_267 ::= $empty | list_267 seq_266

    list_268 ::= $empty | list_268 anonymous_program_item

    opt_269 ::= data_type_or_implicit | $empty

    opt_270 ::= data_type_or_implicit | $empty

    opt_271 ::= packed_dimension | $empty

    opt_272 ::= net_port_type | $empty

    opt_273 ::= INTERCONNECT | $empty

    opt_274 ::= implicit_data_type | $empty

    opt_275 ::= data_type_or_implicit | $empty

    opt_276 ::= data_type_or_implicit | $empty

    opt_277 ::= INTERCONNECT | $empty

    opt_278 ::= implicit_data_type | $empty

    opt_279 ::= data_type_or_implicit | $empty

    opt_280 ::= data_type_or_implicit | $empty

    seq_281 ::= DOT modport_identifier

    opt_282 ::= seq_281 | $empty

    opt_283 ::= CONST | $empty

    opt_284 ::= lifetime | $empty

    opt_285 ::= CONST | $empty

    opt_286 ::= lifetime | $empty

    opt_287 ::= data_type_or_implicit | $empty

    seq_288 ::= COMMA package_import_item

    list_289 ::= $empty | list_289 seq_288

    seq_290 ::= COMMA package_import_item

    list_291 ::= $empty | list_291 seq_290

    grp_292 ::= drive_strength | charge_strength

    opt_293 ::= grp_292 | $empty

    grp_294 ::= VECTORED | SCALARED

    opt_295 ::= grp_294 | $empty

    opt_296 ::= data_type_or_implicit | $empty

    opt_297 ::= delay3 | $empty

    opt_298 ::= implicit_data_type | $empty

    seq_299 ::= HASH delay_value

    opt_300 ::= seq_299 | $empty

    seq_301 ::= COMMA net_id

    opt_302 ::= seq_301 | $empty

    list_303 ::= $empty | list_303 unpacked_dimension

    list_304 ::= $empty | list_304 variable_dimension

    opt_305 ::= constant_bit_select | $empty

    grp_306 ::= ENUM | STRUCT | UNION | CLASS | INTERFACE CLASS

    opt_307 ::= grp_306 | $empty

    opt_308 ::= net_type_decl_with | $empty

    opt_309 ::= package_or_class_scope | $empty

    opt_310 ::= package_or_class_scope | $empty

    opt_311 ::= signing | $empty

    list_312 ::= $empty | list_312 packed_dimension

    opt_313 ::= signing | $empty

    opt_314 ::= signing | $empty

    seq_315 ::= PACKED opt_314

    opt_316 ::= seq_315 | $empty

    list_317 ::= struct_union_member | list_317 struct_union_member

    list_318 ::= $empty | list_318 packed_dimension

    opt_319 ::= enum_base_type | $empty

    seq_320 ::= COMMA enum_name_declaration

    list_321 ::= $empty | list_321 seq_320

    list_322 ::= $empty | list_322 packed_dimension

    opt_323 ::= INTERFACE | $empty

    opt_324 ::= parameter_value_assignment | $empty

    seq_325 ::= DOT modport_identifier

    opt_326 ::= seq_325 | $empty

    list_327 ::= packed_dimension | list_327 packed_dimension

    list_328 ::= $empty | list_328 packed_dimension

    list_329 ::= $empty | list_329 packed_dimension

    seq_330 ::= COLONCOLON type_identifier list_329

    opt_331 ::= seq_330 | $empty

    list_332 ::= packed_dimension | list_332 packed_dimension

    list_333 ::= $empty | list_333 packed_dimension

    opt_334 ::= signing | $empty

    opt_335 ::= signing | $empty

    opt_336 ::= packed_dimension | $empty

    opt_337 ::= packed_dimension | $empty

    opt_338 ::= enum_name_suffix_range | $empty

    seq_339 ::= EQ constant_expression

    opt_340 ::= seq_339 | $empty

    seq_341 ::= COLON integral_number

    opt_342 ::= seq_341 | $empty

    seq_343 ::= _UNIT COLONCOLON

    opt_344 ::= seq_343 | $empty

    seq_345 ::= COLONCOLON class_ref

    list_346 ::= $empty | list_346 seq_345

    opt_347 ::= parameter_value_assignment | $empty

    opt_348 ::= data_type_or_implicit | $empty

    opt_349 ::= implicit_data_type | $empty

    opt_350 ::= data_type_or_implicit | $empty

    list_351 ::= $empty | list_351 attribute_instance

    opt_352 ::= random_qualifier | $empty

    opt_353 ::= TAGGED | $empty

    seq_354 ::= COMMA mintypmax_expression

    opt_355 ::= seq_354 | $empty

    seq_356 ::= COMMA mintypmax_expression opt_355

    opt_357 ::= seq_356 | $empty

    seq_358 ::= COMMA mintypmax_expression

    opt_359 ::= seq_358 | $empty

    seq_360 ::= COMMA defparam_assignment

    list_361 ::= $empty | list_361 seq_360

    seq_362 ::= COMMA genvar_identifier

    list_363 ::= $empty | list_363 seq_362

    seq_364 ::= COMMA interface_id

    list_365 ::= $empty | list_365 seq_364

    list_366 ::= $empty | list_366 unpacked_dimension

    seq_367 ::= COMMA net_decl_assignment

    list_368 ::= $empty | list_368 seq_367

    seq_369 ::= COMMA param_assignment

    list_370 ::= $empty | list_370 seq_369

    seq_371 ::= COMMA port_id

    list_372 ::= $empty | list_372 seq_371

    list_373 ::= $empty | list_373 unpacked_dimension

    seq_374 ::= COMMA port_identifier

    list_375 ::= $empty | list_375 seq_374

    seq_376 ::= COMMA specparam_assignment

    list_377 ::= $empty | list_377 seq_376

    seq_378 ::= COMMA tf_var_id

    list_379 ::= $empty | list_379 seq_378

    list_380 ::= $empty | list_380 variable_dimension

    seq_381 ::= EQ expression

    opt_382 ::= seq_381 | $empty

    seq_383 ::= COMMA type_assignment

    list_384 ::= $empty | list_384 seq_383

    seq_385 ::= COMMA variable_decl_assignment

    list_386 ::= $empty | list_386 seq_385

    seq_387 ::= COMMA var_id

    list_388 ::= $empty | list_388 seq_387

    list_389 ::= $empty | list_389 variable_dimension

    seq_390 ::= COMMA var_port_id

    list_391 ::= $empty | list_391 seq_390

    list_392 ::= $empty | list_392 variable_dimension

    seq_393 ::= EQ constant_expression

    opt_394 ::= seq_393 | $empty

    list_395 ::= $empty | list_395 unpacked_dimension

    seq_396 ::= EQ expression

    opt_397 ::= seq_396 | $empty

    list_398 ::= $empty | list_398 unpacked_dimension

    seq_399 ::= EQ constant_param_expression

    opt_400 ::= seq_399 | $empty

    seq_401 ::= EQ data_type

    opt_402 ::= seq_401 | $empty

    seq_403 ::= COMMA error_limit_value

    opt_404 ::= seq_403 | $empty

    seq_405 ::= COMMA error_limit_value

    opt_406 ::= seq_405 | $empty

    list_407 ::= $empty | list_407 variable_dimension

    seq_408 ::= EQ expression

    opt_409 ::= seq_408 | $empty

    list_410 ::= $empty | list_410 variable_dimension

    opt_411 ::= class_scope | $empty

    opt_412 ::= arg_list | $empty

    seq_413 ::= LPAREN expression RPAREN

    opt_414 ::= seq_413 | $empty

    seq_415 ::= COLON constant_expression

    opt_416 ::= seq_415 | $empty

    opt_417 ::= lifetime | $empty

    opt_418 ::= function_data_type_or_implicit | $empty

    grp_419 ::= interface_identifier DOT | class_scope

    opt_420 ::= grp_419 | $empty

    list_421 ::= $empty | list_421 tf_item_declaration

    list_422 ::= $empty | list_422 function_statement_or_null

    opt_423 ::= function_name | $empty

    opt_424 ::= function_data_type_or_implicit | $empty

    grp_425 ::= interface_identifier DOT | class_scope

    opt_426 ::= grp_425 | $empty

    list_427 ::= $empty | list_427 block_item_declaration

    list_428 ::= $empty | list_428 function_statement_or_null

    opt_429 ::= function_name | $empty

    opt_430 ::= port_list | $empty

    opt_431 ::= dpi_function_import_property | $empty

    seq_432 ::= c_identifier EQ

    opt_433 ::= seq_432 | $empty

    opt_434 ::= dpi_task_import_property | $empty

    seq_435 ::= c_identifier EQ

    opt_436 ::= seq_435 | $empty

    seq_437 ::= c_identifier EQ

    opt_438 ::= seq_437 | $empty

    seq_439 ::= c_identifier EQ

    opt_440 ::= seq_439 | $empty

    opt_441 ::= lifetime | $empty

    grp_442 ::= interface_identifier DOT | class_scope

    opt_443 ::= grp_442 | $empty

    list_444 ::= $empty | list_444 tf_item_declaration

    list_445 ::= $empty | list_445 statement_or_null

    opt_446 ::= task_name | $empty

    grp_447 ::= interface_identifier DOT | class_scope

    opt_448 ::= grp_447 | $empty

    list_449 ::= $empty | list_449 block_item_declaration

    list_450 ::= $empty | list_450 statement_or_null

    opt_451 ::= task_name | $empty

    seq_452 ::= COMMA tf_port_item

    list_453 ::= $empty | list_453 seq_452

    list_454 ::= $empty | list_454 attribute_instance

    opt_455 ::= tf_port_direction | $empty

    opt_456 ::= VAR | $empty

    opt_457 ::= data_type_or_implicit | $empty

    list_458 ::= $empty | list_458 variable_dimension

    seq_459 ::= EQ expression

    opt_460 ::= seq_459 | $empty

    list_461 ::= $empty | list_461 attribute_instance

    opt_462 ::= VAR | $empty

    opt_463 ::= data_type_or_implicit | $empty

    opt_464 ::= port_list | $empty

    list_465 ::= $empty | list_465 attribute_instance

    list_466 ::= $empty | list_466 attribute_instance

    list_467 ::= $empty | list_467 attribute_instance

    list_468 ::= $empty | list_468 attribute_instance

    seq_469 ::= COMMA modport_item

    list_470 ::= $empty | list_470 seq_469

    seq_471 ::= COMMA modport_ports_declaration

    list_472 ::= $empty | list_472 seq_471

    list_473 ::= $empty | list_473 attribute_instance

    list_474 ::= $empty | list_474 attribute_instance

    list_475 ::= $empty | list_475 attribute_instance

    seq_476 ::= COMMA modport_simple_port

    list_477 ::= $empty | list_477 seq_476

    opt_478 ::= expression | $empty

    seq_479 ::= COMMA modport_tf_port

    list_480 ::= $empty | list_480 seq_479

    opt_481 ::= block_label | $empty

    opt_482 ::= clocking_event | $empty

    seq_483 ::= DISABLE IFF LPAREN expression_or_dist RPAREN

    opt_484 ::= seq_483 | $empty

    opt_485 ::= prop_arg_list | $empty

    seq_486 ::= COMMA prop_ordered_arg

    list_487 ::= $empty | list_487 seq_486

    seq_488 ::= COMMA prop_named_arg

    list_489 ::= $empty | list_489 seq_488

    seq_490 ::= COMMA prop_named_arg

    list_491 ::= $empty | list_491 seq_490

    opt_492 ::= property_actual_arg | $empty

    opt_493 ::= property_actual_arg | $empty

    opt_494 ::= prop_port_list | $empty

    list_495 ::= $empty | list_495 assertion_variable_declaration

    opt_496 ::= SEMI | $empty

    opt_497 ::= property_name | $empty

    opt_498 ::= property_port_list | $empty

    seq_499 ::= COMMA property_port_item

    list_500 ::= $empty | list_500 seq_499

    list_501 ::= $empty | list_501 attribute_instance

    opt_502 ::= prop_port_item_local | $empty

    opt_503 ::= property_formal_type | $empty

    list_504 ::= $empty | list_504 variable_dimension

    seq_505 ::= EQ property_actual_arg

    opt_506 ::= seq_505 | $empty

    opt_507 ::= property_lvar_port_direction | $empty

    opt_508 ::= clocking_event | $empty

    seq_509 ::= DISABLE IFF LPAREN expression_or_dist RPAREN

    opt_510 ::= seq_509 | $empty

    seq_511 ::= ELSE property_expr

    opt_512 ::= seq_511 | $empty

    list_513 ::= property_case_item | list_513 property_case_item

    seq_514 ::= COMMA expression_or_dist

    list_515 ::= $empty | list_515 seq_514

    opt_516 ::= COLON | $empty

    opt_517 ::= seq_port_list | $empty

    list_518 ::= $empty | list_518 assertion_variable_declaration

    opt_519 ::= SEMI | $empty

    opt_520 ::= sequence_name | $empty

    opt_521 ::= sequence_port_list | $empty

    seq_522 ::= COMMA sequence_port_item

    list_523 ::= $empty | list_523 seq_522

    list_524 ::= $empty | list_524 attribute_instance

    opt_525 ::= seq_port_item_local | $empty

    opt_526 ::= sequence_formal_type | $empty

    list_527 ::= $empty | list_527 variable_dimension

    seq_528 ::= EQ sequence_actual_arg

    opt_529 ::= seq_528 | $empty

    opt_530 ::= sequence_lvar_port_direction | $empty

    seq_531 ::= cycle_delay_range sequence_expr

    list_532 ::= $empty | list_532 seq_531

    seq_533 ::= cycle_delay_range sequence_expr

    list_534 ::= $empty | list_534 seq_533

    opt_535 ::= boolean_abbrev | $empty

    opt_536 ::= sequence_abbrev | $empty

    seq_537 ::= COMMA sequence_match_item

    list_538 ::= $empty | list_538 seq_537

    opt_539 ::= sequence_abbrev | $empty

    seq_540 ::= COMMA sequence_match_item

    list_541 ::= $empty | list_541 seq_540

    opt_542 ::= seq_arg_list | $empty

    seq_543 ::= COMMA seq_ordered_arg

    list_544 ::= $empty | list_544 seq_543

    seq_545 ::= COMMA seq_named_arg

    list_546 ::= $empty | list_546 seq_545

    seq_547 ::= COMMA seq_named_arg

    list_548 ::= $empty | list_548 seq_547

    opt_549 ::= sequence_actual_arg | $empty

    opt_550 ::= sequence_actual_arg | $empty

    seq_551 ::= DIST LBRACE dist_list RBRACE

    opt_552 ::= seq_551 | $empty

    opt_553 ::= port_list | $empty

    opt_554 ::= coverage_event | $empty

    list_555 ::= $empty | list_555 coverage_spec_or_option

    opt_556 ::= covergroup_name | $empty

    list_557 ::= $empty | list_557 attribute_instance

    list_558 ::= $empty | list_558 attribute_instance

    opt_559 ::= class_scope | $empty

    list_560 ::= hier_ref | list_560 hier_ref

    list_561 ::= $empty | list_561 hier_ref

    opt_562 ::= cover_point_label | $empty

    seq_563 ::= IFF LPAREN expression RPAREN

    opt_564 ::= seq_563 | $empty

    opt_565 ::= data_type_or_implicit | $empty

    list_566 ::= $empty | list_566 attribute_instance

    seq_567 ::= bins_or_options SEMI

    list_568 ::= $empty | list_568 seq_567

    opt_569 ::= WILDCARD | $empty

    opt_570 ::= bin_array_size | $empty

    seq_571 ::= WITH LPAREN with_covergroup_expression RPAREN

    opt_572 ::= seq_571 | $empty

    seq_573 ::= IFF LPAREN expression RPAREN

    opt_574 ::= seq_573 | $empty

    opt_575 ::= WILDCARD | $empty

    opt_576 ::= bin_array_size | $empty

    seq_577 ::= IFF LPAREN expression RPAREN

    opt_578 ::= seq_577 | $empty

    opt_579 ::= WILDCARD | $empty

    opt_580 ::= bin_array_size | $empty

    seq_581 ::= IFF LPAREN expression RPAREN

    opt_582 ::= seq_581 | $empty

    opt_583 ::= WILDCARD | $empty

    seq_584 ::= LBRACKET RBRACKET

    opt_585 ::= seq_584 | $empty

    seq_586 ::= IFF LPAREN expression RPAREN

    opt_587 ::= seq_586 | $empty

    opt_588 ::= bin_array_size | $empty

    seq_589 ::= IFF LPAREN expression RPAREN

    opt_590 ::= seq_589 | $empty

    seq_591 ::= IFF LPAREN expression RPAREN

    opt_592 ::= seq_591 | $empty

    opt_593 ::= covergroup_expression | $empty

    seq_594 ::= COMMA trans_set

    list_595 ::= $empty | list_595 seq_594

    seq_596 ::= FATARROW trans_range_list

    list_597 ::= $empty | list_597 seq_596

    seq_598 ::= COLON covergroup_expression

    opt_599 ::= seq_598 | $empty

    opt_600 ::= cross_label | $empty

    seq_601 ::= IFF LPAREN expression RPAREN

    opt_602 ::= seq_601 | $empty

    seq_603 ::= COMMA cross_item

    list_604 ::= $empty | list_604 seq_603

    list_605 ::= $empty | list_605 cross_body_item

    list_606 ::= $empty | list_606 attribute_instance

    list_607 ::= $empty | list_607 attribute_instance

    seq_608 ::= IFF LPAREN expression RPAREN

    opt_609 ::= seq_608 | $empty

    seq_610 ::= MATCHES integer_covergroup_expression

    opt_611 ::= seq_610 | $empty

    seq_612 ::= MATCHES integer_covergroup_expression

    opt_613 ::= seq_612 | $empty

    seq_614 ::= INTERSECT LBRACE covergroup_range_list RBRACE

    opt_615 ::= seq_614 | $empty

    seq_616 ::= COMMA covergroup_value_range

    list_617 ::= $empty | list_617 seq_616

    opt_618 ::= let_ports | $empty

    opt_619 ::= let_port_list | $empty

    seq_620 ::= COMMA let_port_item

    list_621 ::= $empty | list_621 seq_620

    list_622 ::= $empty | list_622 attribute_instance

    opt_623 ::= let_formal_type | $empty

    list_624 ::= $empty | list_624 variable_dimension

    seq_625 ::= EQ expression

    opt_626 ::= seq_625 | $empty

    opt_627 ::= delay3 | $empty

    seq_628 ::= COMMA cmos_switch_instance

    list_629 ::= $empty | list_629 seq_628

    opt_630 ::= drive_strength | $empty

    opt_631 ::= delay3 | $empty

    seq_632 ::= COMMA enable_gate_instance

    list_633 ::= $empty | list_633 seq_632

    opt_634 ::= delay3 | $empty

    seq_635 ::= COMMA mos_switch_instance

    list_636 ::= $empty | list_636 seq_635

    opt_637 ::= drive_strength | $empty

    opt_638 ::= delay2 | $empty

    seq_639 ::= COMMA n_input_gate_instance

    list_640 ::= $empty | list_640 seq_639

    opt_641 ::= drive_strength | $empty

    opt_642 ::= delay2 | $empty

    seq_643 ::= COMMA n_output_gate_instance

    list_644 ::= $empty | list_644 seq_643

    opt_645 ::= delay2 | $empty

    seq_646 ::= COMMA pass_enable_switch_instance

    list_647 ::= $empty | list_647 seq_646

    seq_648 ::= COMMA pass_switch_instance

    list_649 ::= $empty | list_649 seq_648

    opt_650 ::= pulldown_strength | $empty

    seq_651 ::= COMMA pull_gate_instance

    list_652 ::= $empty | list_652 seq_651

    opt_653 ::= pullup_strength | $empty

    seq_654 ::= COMMA pull_gate_instance

    list_655 ::= $empty | list_655 seq_654

    opt_656 ::= name_of_instance | $empty

    opt_657 ::= name_of_instance | $empty

    opt_658 ::= name_of_instance | $empty

    opt_659 ::= name_of_instance | $empty

    seq_660 ::= COMMA input_terminal

    list_661 ::= $empty | list_661 seq_660

    opt_662 ::= name_of_instance | $empty

    seq_663 ::= COMMA output_terminal

    list_664 ::= $empty | list_664 seq_663

    opt_665 ::= name_of_instance | $empty

    opt_666 ::= name_of_instance | $empty

    opt_667 ::= name_of_instance | $empty

    opt_668 ::= parameter_value_assignment | $empty

    seq_669 ::= COMMA hierarchical_instance

    list_670 ::= $empty | list_670 seq_669

    opt_671 ::= list_of_parameter_assignments | $empty

    seq_672 ::= COMMA ordered_parameter_assignment

    list_673 ::= $empty | list_673 seq_672

    seq_674 ::= COMMA named_parameter_assignment

    list_675 ::= $empty | list_675 seq_674

    opt_676 ::= param_expression | $empty

    list_677 ::= $empty | list_677 unpacked_dimension

    seq_678 ::= COMMA ordered_port_connection

    list_679 ::= $empty | list_679 seq_678

    seq_680 ::= COMMA named_port_connection

    list_681 ::= $empty | list_681 seq_680

    list_682 ::= $empty | list_682 attribute_instance

    opt_683 ::= expression | $empty

    list_684 ::= $empty | list_684 attribute_instance

    opt_685 ::= port_assign | $empty

    list_686 ::= $empty | list_686 attribute_instance

    opt_687 ::= expression | $empty

    seq_688 ::= COMMA ordered_checker_port_connection

    list_689 ::= $empty | list_689 seq_688

    seq_690 ::= COMMA named_checker_port_connection

    list_691 ::= $empty | list_691 seq_690

    list_692 ::= $empty | list_692 attribute_instance

    opt_693 ::= property_actual_arg | $empty

    list_694 ::= $empty | list_694 attribute_instance

    opt_695 ::= checker_port_assign | $empty

    list_696 ::= $empty | list_696 attribute_instance

    opt_697 ::= property_actual_arg | $empty

    list_698 ::= $empty | list_698 generate_item

    opt_699 ::= GENVAR | $empty

    seq_700 ::= ELSE generate_block

    opt_701 ::= seq_700 | $empty

    list_702 ::= case_generate_item | list_702 case_generate_item

    seq_703 ::= COMMA constant_expression

    list_704 ::= $empty | list_704 seq_703

    opt_705 ::= COLON | $empty

    opt_706 ::= generate_block_label | $empty

    opt_707 ::= generate_block_name | $empty

    list_708 ::= $empty | list_708 generate_item

    opt_709 ::= generate_block_name | $empty

    list_710 ::= $empty | list_710 attribute_instance

    list_711 ::= $empty | list_711 attribute_instance

    list_712 ::= $empty | list_712 attribute_instance

    list_714 ::= attribute_instance | list_714 attribute_instance

    grp_713 ::= list_714 | RAND

    opt_715 ::= grp_713 | $empty

    list_716 ::= $empty | list_716 attribute_instance

    list_717 ::= $empty | list_717 attribute_instance

    list_718 ::= $empty | list_718 attribute_instance

    list_719 ::= $empty | list_719 attribute_instance

    list_720 ::= $empty | list_720 attribute_instance

    list_721 ::= $empty | list_721 attribute_instance

    list_722 ::= $empty | list_722 attribute_instance

    list_723 ::= $empty | list_723 attribute_instance

    list_724 ::= $empty | list_724 attribute_instance

    list_725 ::= $empty | list_725 attribute_instance

    list_726 ::= $empty | list_726 attribute_instance

    list_727 ::= $empty | list_727 attribute_instance

    list_728 ::= $empty | list_728 attribute_instance

    list_729 ::= $empty | list_729 attribute_instance

    list_730 ::= $empty | list_730 attribute_instance

    list_731 ::= $empty | list_731 attribute_instance

    list_732 ::= $empty | list_732 attribute_instance

    list_733 ::= $empty | list_733 attribute_instance

    list_734 ::= $empty | list_734 attribute_instance

    list_735 ::= $empty | list_735 attribute_instance

    list_736 ::= $empty | list_736 attribute_instance

    list_737 ::= $empty | list_737 attribute_instance

    list_738 ::= $empty | list_738 attribute_instance

    list_739 ::= $empty | list_739 attribute_instance

    list_740 ::= $empty | list_740 attribute_instance

    list_741 ::= $empty | list_741 attribute_instance

    list_742 ::= $empty | list_742 attribute_instance

    list_743 ::= $empty | list_743 attribute_instance

    list_744 ::= $empty | list_744 attribute_instance

    list_745 ::= $empty | list_745 attribute_instance

    list_746 ::= $empty | list_746 attribute_instance

    list_747 ::= $empty | list_747 attribute_instance

    list_748 ::= udp_port_declaration | list_748 udp_port_declaration

    opt_749 ::= udp_name | $empty

    opt_750 ::= udp_name | $empty

    list_751 ::= $empty | list_751 attribute_instance

    list_752 ::= $empty | list_752 udp_port_declaration

    opt_753 ::= udp_name | $empty

    seq_754 ::= COMMA input_port_identifier

    list_755 ::= $empty | list_755 seq_754

    seq_756 ::= COMMA udp_input_declaration

    list_757 ::= $empty | list_757 seq_756

    list_758 ::= $empty | list_758 attribute_instance

    list_759 ::= $empty | list_759 attribute_instance

    seq_760 ::= EQ constant_expression

    opt_761 ::= seq_760 | $empty

    list_762 ::= $empty | list_762 attribute_instance

    list_763 ::= $empty | list_763 attribute_instance

    list_764 ::= combinational_entry | list_764 combinational_entry

    opt_765 ::= udp_initial_statement | $empty

    list_766 ::= sequential_entry | list_766 sequential_entry

    list_767 ::= level_symbol | list_767 level_symbol

    list_768 ::= $empty | list_768 level_symbol

    list_769 ::= $empty | list_769 level_symbol

    opt_770 ::= drive_strength | $empty

    opt_771 ::= delay2 | $empty

    seq_772 ::= COMMA udp_instance

    list_773 ::= $empty | list_773 seq_772

    opt_774 ::= name_of_instance | $empty

    seq_775 ::= COMMA input_terminal

    list_776 ::= $empty | list_776 seq_775

    seq_777 ::= COMMA mintypmax_expression

    opt_778 ::= seq_777 | $empty

    opt_779 ::= delay3 | $empty

    opt_780 ::= delay_control | $empty

    seq_781 ::= COMMA net_assignment

    list_782 ::= $empty | list_782 seq_781

    seq_783 ::= COMMA variable_assignment

    list_784 ::= $empty | list_784 seq_783

    seq_785 ::= EQ net_lvalue

    list_786 ::= seq_785 | list_786 seq_785

    grp_787 ::= implicit_class_handle DOT | package_or_class_scope

    opt_788 ::= grp_787 | $empty

    opt_789 ::= select_ | $empty

    opt_790 ::= delay_or_event_control | $empty

    opt_791 ::= statement | $empty

    opt_792 ::= block_name | $empty

    list_793 ::= $empty | list_793 block_item_declaration

    list_794 ::= $empty | list_794 statement_or_null

    opt_795 ::= block_name | $empty

    opt_796 ::= block_name | $empty

    list_797 ::= $empty | list_797 block_item_declaration

    list_798 ::= $empty | list_798 statement_or_null

    opt_799 ::= block_name | $empty

    list_800 ::= $empty | list_800 attribute_instance

    opt_801 ::= block_label | $empty

    list_802 ::= $empty | list_802 attribute_instance

    list_803 ::= $empty | list_803 attribute_instance

    seq_804 ::= COMMA variable_identifier

    list_805 ::= $empty | list_805 seq_804

    opt_806 ::= edge_identifier | $empty

    seq_807 ::= IFF expression

    opt_808 ::= seq_807 | $empty

    seq_809 ::= IFF expression

    opt_810 ::= seq_809 | $empty

    opt_811 ::= expression | $empty

    seq_812 ::= COMMA hierarchical_identifier

    list_813 ::= $empty | list_813 seq_812

    opt_814 ::= delay_or_event_control | $empty

    opt_815 ::= unique_priority | $empty

    seq_816 ::= ELSE statement_or_null

    opt_817 ::= seq_816 | $empty

    seq_818 ::= OP_84942 expression_or_cond_pattern

    list_819 ::= $empty | list_819 seq_818

    seq_820 ::= MATCHES pattern

    opt_821 ::= seq_820 | $empty

    opt_822 ::= unique_priority | $empty

    list_823 ::= case_item | list_823 case_item

    opt_824 ::= unique_priority | $empty

    list_825 ::= case_pattern_item | list_825 case_pattern_item

    opt_826 ::= unique_priority | $empty

    list_827 ::= case_inside_item | list_827 case_inside_item

    seq_828 ::= COMMA case_item_expression

    list_829 ::= $empty | list_829 seq_828

    opt_830 ::= COLON | $empty

    seq_831 ::= OP_84942 expression

    opt_832 ::= seq_831 | $empty

    opt_833 ::= COLON | $empty

    opt_834 ::= COLON | $empty

    list_835 ::= randcase_item | list_835 randcase_item

    seq_836 ::= COMMA open_value_range

    list_837 ::= $empty | list_837 seq_836

    opt_838 ::= pattern | $empty

    seq_839 ::= COMMA pattern

    list_840 ::= $empty | list_840 seq_839

    seq_841 ::= COMMA member_pattern_pair

    list_842 ::= $empty | list_842 seq_841

    seq_843 ::= COMMA expression

    list_844 ::= $empty | list_844 seq_843

    seq_845 ::= COMMA array_key_val_pair

    list_846 ::= $empty | list_846 seq_845

    seq_847 ::= COMMA expression

    list_848 ::= $empty | list_848 seq_847

    opt_849 ::= assignment_pattern_expression_type | $empty

    seq_850 ::= COMMA net_lvalue

    list_851 ::= $empty | list_851 seq_850

    seq_852 ::= COMMA variable_lvalue

    list_853 ::= $empty | list_853 seq_852

    opt_854 ::= for_initialization | $empty

    opt_855 ::= expression | $empty

    opt_856 ::= for_step | $empty

    seq_857 ::= COMMA for_variable_declaration

    list_858 ::= $empty | list_858 seq_857

    opt_859 ::= VAR | $empty

    seq_860 ::= COMMA for_variable_assign

    list_861 ::= $empty | list_861 seq_860

    seq_862 ::= COMMA for_step_assignment

    list_863 ::= $empty | list_863 seq_862

    seq_864 ::= COMMA loop_var

    list_865 ::= $empty | list_865 seq_864

    opt_866 ::= index_variable_identifier | $empty

    opt_867 ::= block_label | $empty

    opt_868 ::= DEFAULT | $empty

    opt_869 ::= clocking_identifier | $empty

    list_870 ::= $empty | list_870 clocking_item

    opt_871 ::= clocking_name | $empty

    opt_872 ::= clocking_identifier | $empty

    opt_873 ::= clocking_name | $empty

    list_874 ::= $empty | list_874 attribute_instance

    opt_875 ::= clocking_skew | $empty

    opt_876 ::= clocking_skew | $empty

    opt_877 ::= clocking_skew | $empty

    opt_878 ::= clocking_skew | $empty

    seq_879 ::= COMMA clocking_decl_assign

    list_880 ::= $empty | list_880 seq_879

    seq_881 ::= EQ expression

    opt_882 ::= seq_881 | $empty

    opt_883 ::= delay_control | $empty

    opt_884 ::= select_ | $empty

    opt_885 ::= production_identifier | $empty

    list_886 ::= production | list_886 production

    opt_887 ::= data_type_or_void | $empty

    opt_888 ::= port_list | $empty

    grp_889 ::= PIPE rs_rule

    list_890 ::= $empty | list_890 grp_889

    opt_891 ::= weight_spec | $empty

    opt_892 ::= rs_code_block | $empty

    list_893 ::= rs_prod | list_893 rs_prod

    seq_894 ::= LPAREN expression RPAREN

    opt_895 ::= seq_894 | $empty

    list_896 ::= production_item | list_896 production_item

    list_897 ::= $empty | list_897 data_declaration

    list_898 ::= $empty | list_898 statement_or_null

    opt_899 ::= arg_list | $empty

    seq_900 ::= ELSE production_item

    opt_901 ::= seq_900 | $empty

    list_902 ::= rs_case_item | list_902 rs_case_item

    seq_903 ::= COMMA case_item_expression

    list_904 ::= $empty | list_904 seq_903

    opt_905 ::= COLON | $empty

    list_906 ::= $empty | list_906 specify_item

    opt_907 ::= polarity_operator | $empty

    opt_908 ::= polarity_operator | $empty

    seq_909 ::= COMMA specify_input_terminal_descriptor

    list_910 ::= $empty | list_910 seq_909

    seq_911 ::= COMMA specify_output_terminal_descriptor

    list_912 ::= $empty | list_912 seq_911

    seq_913 ::= LBRACKET constant_range_expression RBRACKET

    opt_914 ::= seq_913 | $empty

    seq_915 ::= LBRACKET constant_range_expression RBRACKET

    opt_916 ::= seq_915 | $empty

    seq_917 ::= COMMA tz_path_delay_expression

    opt_918 ::= seq_917 | $empty

    seq_919 ::= COMMA t0x_path_delay_expression COMMA tx1_path_delay_expression COMMA t1x_path_delay_expression COMMA tx0_path_delay_expression COMMA txz_path_delay_expression COMMA tzx_path_delay_expression

    opt_920 ::= seq_919 | $empty

    opt_921 ::= edge_identifier | $empty

    opt_922 ::= polarity_operator | $empty

    opt_923 ::= polarity_operator | $empty

    opt_924 ::= edge_identifier | $empty

    opt_925 ::= polarity_operator | $empty

    opt_926 ::= polarity_operator | $empty

    opt_927 ::= notifier_opt | $empty

    opt_928 ::= notifier | $empty

    opt_929 ::= notifier_opt | $empty

    opt_930 ::= timing_check_opt | $empty

    opt_931 ::= notifier | $empty

    opt_932 ::= timestamp_cond_opt | $empty

    opt_933 ::= timestamp_condition | $empty

    opt_934 ::= timecheck_cond_opt | $empty

    opt_935 ::= timecheck_condition | $empty

    opt_936 ::= delayed_ref_opt | $empty

    opt_937 ::= delayed_reference | $empty

    opt_938 ::= delayed_data_opt | $empty

    opt_939 ::= delayed_data | $empty

    opt_940 ::= notifier_opt | $empty

    opt_941 ::= notifier_opt | $empty

    opt_942 ::= timing_check_opt | $empty

    opt_943 ::= notifier_opt | $empty

    opt_944 ::= skew_timing_check_opt | $empty

    opt_945 ::= notifier | $empty

    opt_946 ::= event_based_flag_opt | $empty

    opt_947 ::= event_based_flag | $empty

    opt_948 ::= remain_active_flag_opt | $empty

    opt_949 ::= remain_active_flag | $empty

    opt_950 ::= skew_timing_check_opt | $empty

    opt_951 ::= notifier_opt | $empty

    opt_952 ::= notifier_opt | $empty

    opt_953 ::= notifier_opt | $empty

    seq_954 ::= LBRACKET constant_mintypmax_expression RBRACKET

    opt_955 ::= seq_954 | $empty

    seq_956 ::= LBRACKET constant_mintypmax_expression RBRACKET

    opt_957 ::= seq_956 | $empty

    opt_958 ::= timing_check_event_control | $empty

    seq_959 ::= OP_84942 timing_check_condition

    opt_960 ::= seq_959 | $empty

    seq_961 ::= OP_84942 timing_check_condition

    opt_962 ::= seq_961 | $empty

    seq_963 ::= interface_identifier DOT

    opt_964 ::= seq_963 | $empty

    seq_965 ::= LBRACKET constant_range_expression RBRACKET

    opt_966 ::= seq_965 | $empty

    seq_967 ::= COMMA edge_descriptor

    list_968 ::= $empty | list_968 seq_967

    seq_969 ::= COMMA expression

    list_970 ::= $empty | list_970 seq_969

    seq_971 ::= COMMA constant_expression

    list_972 ::= $empty | list_972 seq_971

    seq_973 ::= COMMA module_path_expression

    list_974 ::= $empty | list_974 seq_973

    opt_975 ::= slice_size | $empty

    seq_976 ::= COMMA stream_expression

    list_977 ::= $empty | list_977 seq_976

    seq_978 ::= WITH LBRACKET array_range_expression RBRACKET

    opt_979 ::= seq_978 | $empty

    opt_980 ::= arg_list | $empty

    seq_981 ::= COMMA expression

    opt_982 ::= seq_981 | $empty

    seq_983 ::= COMMA ordered_arg

    list_984 ::= $empty | list_984 seq_983

    grp_985 ::= package_scope | _ROOT DOT

    opt_986 ::= grp_985 | $empty

    list_987 ::= $empty | list_987 attribute_instance

    opt_988 ::= arg_list | $empty

    grp_989 ::= STD COLONCOLON | method_call_root DOT

    opt_990 ::= grp_989 | $empty

    seq_991 ::= COMMA ordered_arg

    list_992 ::= $empty | list_992 seq_991

    seq_993 ::= COMMA named_arg

    list_994 ::= $empty | list_994 seq_993

    seq_995 ::= COMMA named_arg

    list_996 ::= $empty | list_996 seq_995

    opt_997 ::= expression | $empty

    opt_998 ::= expression | $empty

    list_999 ::= $empty | list_999 attribute_instance

    opt_1000 ::= arg_list | $empty

    seq_1001 ::= WITH LPAREN expression RPAREN

    opt_1002 ::= seq_1001 | $empty

    list_1003 ::= $empty | list_1003 attribute_instance

    opt_1004 ::= rand_list | $empty

    opt_1005 ::= rand_with | $empty

    grp_1006 ::= variable_identifier_list | NULL_LITERAL

    opt_1007 ::= grp_1006 | $empty

    opt_1008 ::= id_list | $empty

    opt_1009 ::= identifier_list | $empty

    list_1010 ::= $empty | list_1010 attribute_instance

    list_1011 ::= $empty | list_1011 attribute_instance

    list_1012 ::= $empty | list_1012 attribute_instance

    list_1013 ::= $empty | list_1013 attribute_instance

    grp_1014 ::= STAR | SLASH | PERCENT

    list_1015 ::= $empty | list_1015 attribute_instance

    grp_1016 ::= PLUS | MINUS

    list_1017 ::= $empty | list_1017 attribute_instance

    grp_1018 ::= RSHIFT | LSHIFT | URSHIFT | OP_1491

    list_1019 ::= $empty | list_1019 attribute_instance

    grp_1020 ::= LT | LTEQ | GT | GTEQ

    list_1021 ::= $empty | list_1021 attribute_instance

    grp_1022 ::= EQEQ | NOTEQ | EQEQEQ | NOTEQEQ | OP_42139 | OP_47770

    list_1023 ::= $empty | list_1023 attribute_instance

    list_1024 ::= $empty | list_1024 attribute_instance

    grp_1025 ::= CARET | OP_20287 | OP_67671

    list_1026 ::= $empty | list_1026 attribute_instance

    list_1027 ::= $empty | list_1027 attribute_instance

    list_1028 ::= $empty | list_1028 attribute_instance

    list_1029 ::= $empty | list_1029 attribute_instance

    list_1030 ::= $empty | list_1030 attribute_instance

    grp_1031 ::= ARROW | OP_22030

    list_1032 ::= $empty | list_1032 attribute_instance

    seq_1033 ::= COLON constant_expression COLON constant_expression

    opt_1034 ::= seq_1033 | $empty

    list_1035 ::= $empty | list_1035 attribute_instance

    list_1036 ::= $empty | list_1036 attribute_instance

    grp_1037 ::= STAR | SLASH | PERCENT

    list_1038 ::= $empty | list_1038 attribute_instance

    grp_1039 ::= PLUS | MINUS

    list_1040 ::= $empty | list_1040 attribute_instance

    grp_1041 ::= RSHIFT | LSHIFT | URSHIFT | OP_1491

    list_1042 ::= $empty | list_1042 attribute_instance

    grp_1044 ::= LT | LTEQ | GT | GTEQ

    list_1045 ::= $empty | list_1045 attribute_instance

    grp_1043 ::= grp_1044 list_1045 expression | INSIDE LBRACE open_range_list RBRACE

    grp_1046 ::= EQEQ | NOTEQ | EQEQEQ | NOTEQEQ | OP_42139 | OP_47770

    list_1047 ::= $empty | list_1047 attribute_instance

    list_1048 ::= $empty | list_1048 attribute_instance

    grp_1049 ::= CARET | OP_20287 | OP_67671

    list_1050 ::= $empty | list_1050 attribute_instance

    list_1051 ::= $empty | list_1051 attribute_instance

    list_1052 ::= $empty | list_1052 attribute_instance

    list_1053 ::= $empty | list_1053 attribute_instance

    seq_1054 ::= MATCHES pattern

    opt_1055 ::= seq_1054 | $empty

    seq_1056 ::= OP_84942 expression_or_cond_pattern

    list_1057 ::= $empty | list_1057 seq_1056

    list_1058 ::= $empty | list_1058 attribute_instance

    grp_1059 ::= ARROW | OP_22030

    list_1060 ::= $empty | list_1060 attribute_instance

    opt_1061 ::= expression | $empty

    seq_1062 ::= COLON expression COLON expression

    opt_1063 ::= seq_1062 | $empty

    list_1064 ::= $empty | list_1064 attribute_instance

    grp_1065 ::= EQEQ | NOTEQ

    list_1066 ::= $empty | list_1066 attribute_instance

    list_1067 ::= $empty | list_1067 attribute_instance

    grp_1068 ::= CARET | OP_20287 | OP_67671

    list_1069 ::= $empty | list_1069 attribute_instance

    list_1070 ::= $empty | list_1070 attribute_instance

    list_1071 ::= $empty | list_1071 attribute_instance

    list_1072 ::= $empty | list_1072 attribute_instance

    list_1073 ::= $empty | list_1073 attribute_instance

    seq_1074 ::= COLON module_path_expression COLON module_path_expression

    opt_1075 ::= seq_1074 | $empty

    list_1077 ::= gen_ref | list_1077 gen_ref

    grp_1076 ::= package_or_class_scope | list_1077

    opt_1078 ::= grp_1076 | $empty

    opt_1079 ::= constant_select | $empty

    seq_1080 ::= LBRACKET constant_range_expression RBRACKET

    opt_1081 ::= seq_1080 | $empty

    seq_1082 ::= LBRACKET constant_range_expression RBRACKET

    opt_1083 ::= seq_1082 | $empty

    opt_1084 ::= package_scope | $empty

    list_1086 ::= attribute_instance | list_1086 attribute_instance

    list_1087 ::= $empty | list_1087 attribute_instance

    grp_1085 ::= list_1086 | list_1087 arg_list

    list_1088 ::= $empty | list_1088 attribute_instance

    opt_1089 ::= arg_list | $empty

    grp_1090 ::= STD COLONCOLON | method_call_root DOT

    opt_1091 ::= grp_1090 | $empty

    grp_1092 ::= simple_type | signing | STRING | CONST

    grp_1093 ::= package_scope | _ROOT DOT

    opt_1094 ::= grp_1093 | $empty

    list_1095 ::= $empty | list_1095 attribute_instance

    opt_1096 ::= arg_list | $empty

    grp_1097 ::= STD COLONCOLON | method_call_root DOT

    opt_1098 ::= grp_1097 | $empty

    opt_1099 ::= package_or_class_scope | $empty

    opt_1100 ::= select_ | $empty

    list_1102 ::= hier_ref | list_1102 hier_ref

    list_1103 ::= $empty | list_1103 hier_ref

    grp_1101 ::= list_1102 identifier | _ROOT DOT list_1103 identifier | hierarchical_identifier select_

    grp_1104 ::= implicit_class_handle DOT | class_scope

    opt_1105 ::= grp_1104 | $empty

    opt_1106 ::= select_ | $empty

    seq_1107 ::= LBRACKET range_expression RBRACKET

    opt_1108 ::= seq_1107 | $empty

    seq_1109 ::= LBRACKET range_expression RBRACKET

    opt_1110 ::= seq_1109 | $empty

    grp_1111 ::= package_scope | _ROOT DOT

    opt_1112 ::= grp_1111 | $empty

    list_1114 ::= attribute_instance | list_1114 attribute_instance

    list_1115 ::= $empty | list_1115 attribute_instance

    grp_1113 ::= list_1114 | list_1115 arg_list

    grp_1116 ::= array_manipulation_call | randomize_call

    seq_1117 ::= THIS DOT

    opt_1118 ::= seq_1117 | $empty

    grp_1119 ::= array_manipulation_call | randomize_call

    seq_1120 ::= STD COLONCOLON

    opt_1121 ::= seq_1120 | $empty

    grp_1122 ::= integer_type | non_integer_type | signing | STRING | CONST

    seq_1123 ::= DOT SUPER

    opt_1124 ::= seq_1123 | $empty

    seq_1125 ::= LBRACKET expression RBRACKET

    list_1126 ::= seq_1125 | list_1126 seq_1125

    seq_1127 ::= LBRACKET part_select_range RBRACKET

    opt_1128 ::= seq_1127 | $empty

    list_1129 ::= member_select | list_1129 member_select

    seq_1130 ::= LBRACKET part_select_range RBRACKET

    opt_1131 ::= seq_1130 | $empty

    list_1132 ::= member_select | list_1132 member_select

    opt_1133 ::= bit_select | $empty

    seq_1134 ::= LBRACKET constant_expression RBRACKET

    list_1135 ::= seq_1134 | list_1135 seq_1134

    seq_1136 ::= LBRACKET constant_part_select_range RBRACKET

    opt_1137 ::= seq_1136 | $empty

    list_1138 ::= const_member_select | list_1138 const_member_select

    seq_1139 ::= LBRACKET constant_part_select_range RBRACKET

    opt_1140 ::= seq_1139 | $empty

    opt_1141 ::= constant_bit_select | $empty

    opt_1142 ::= constant_select | $empty

    seq_1143 ::= COMMA net_lvalue

    list_1144 ::= $empty | list_1144 seq_1143

    opt_1145 ::= assignment_pattern_expression_type | $empty

    grp_1146 ::= implicit_class_handle DOT | package_scope

    opt_1147 ::= grp_1146 | $empty

    opt_1148 ::= select_ | $empty

    seq_1149 ::= COMMA variable_lvalue

    list_1150 ::= $empty | list_1150 seq_1149

    opt_1151 ::= assignment_pattern_expression_type | $empty

    grp_1152 ::= implicit_class_handle DOT | package_scope

    opt_1153 ::= grp_1152 | $empty

    opt_1154 ::= nonrange_select | $empty

    opt_1155 ::= size | $empty

    opt_1156 ::= size | $empty

    opt_1157 ::= size | $empty

    opt_1158 ::= size | $empty

    seq_1159 ::= COMMA attr_spec

    list_1160 ::= $empty | list_1160 seq_1159

    seq_1161 ::= EQ constant_expression

    opt_1162 ::= seq_1161 | $empty

    seq_1163 ::= _ROOT DOT

    opt_1164 ::= seq_1163 | $empty

    list_1165 ::= $empty | list_1165 hier_ref

    opt_1166 ::= constant_bit_select | $empty

    opt_1167 ::= package_scope | $empty

    grp_1168 ::= implicit_class_handle DOT | package_or_class_scope

    opt_1169 ::= grp_1168 | $empty

    opt_1170 ::= package_scope | $empty

    list_1171 ::= hier_ref | list_1171 hier_ref

    list_1172 ::= $empty | list_1172 hier_ref

    list_1174 ::= gen_ref | list_1174 gen_ref

    grp_1173 ::= LOCAL COLONCOLON | package_or_class_scope | list_1174

    opt_1175 ::= grp_1173 | $empty

    seq_1176 ::= LBRACKET constant_expression RBRACKET

    opt_1177 ::= seq_1176 | $empty

%End
