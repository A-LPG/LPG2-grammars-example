-- AUTO-GENERATED from antlr/grammars-v4 verilog/verilog by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=VerilogParser
%options package=lpg.grammars.verilog.verilog
%options template=dtParserTemplateF.gi
%options import_terminals=VerilogLexer.gi
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
           | ifdef_directive
           | ifndef_directive
           | include_directive
           | line_directive
           | nounconnected_drive_directive
           | pragma_directive
           | resetall_directive
           | text_macro_definition
           | text_macro_usage
           | timescale_directive
           | unconnected_drive_directive
           | undef_directive

    begin_keywords_directive ::= GA BEGIN_KEYWORDS_DIRECTIVE DQ version_specifier DQ

    celldefine_directive ::= GA CELLDEFINE_DIRECTIVE

    default_nettype_directive ::= GA DEFAULT_NETTYPE_DIRECTIVE default_nettype_value

    default_nettype_value ::= DEFAULT_NETTYPE_VALUE

    else_directive ::= GA ELSE_DIRECTIVE group_of_lines

    elsif_directive ::= GA ELSIF_DIRECTIVE macro_identifier group_of_lines

    end_keywords_directive ::= GA END_KEYWORDS_DIRECTIVE

    endcelldefine_directive ::= GA ENDCELLDEFINE_DIRECTIVE

    endif_directive ::= GA ENDIF_DIRECTIVE

    filename ::= FILENAME

    group_of_lines ::= list_3

    identifier ::= SIMPLE_IDENTIFIER

    ifdef_directive ::= GA IFDEF_DIRECTIVE macro_identifier group_of_lines list_4 opt_5 endif_directive

    ifndef_directive ::= GA IFNDEF_DIRECTIVE macro_identifier group_of_lines list_6 opt_7 endif_directive

    include_directive ::= GA INCLUDE_DIRECTIVE DQ filename DQ

    level ::= UNSIGNED_NUMBER

    line_directive ::= GA LINE_DIRECTIVE number DQ filename DQ level

    macro_delimiter ::= MACRO_DELIMITER

    macro_esc_newline ::= MACRO_ESC_NEWLINE

    macro_esc_quote ::= MACRO_ESC_QUOTE

    macro_identifier ::= MACRO_IDENTIFIER

    macro_name ::= MACRO_NAME

    macro_quote ::= MACRO_QUOTE

    macro_text ::= list_9

    macro_text_ ::= MACRO_TEXT

    macro_usage ::= MACRO_USAGE

    nounconnected_drive_directive ::= GA NOUNCONNECTED_DRIVE_DIRECTIVE

    number ::= UNSIGNED_NUMBER

    pragma_directive ::= GA PRAGMA_DIRECTIVE pragma_name opt_13

    pragma_expression ::= opt_15 pragma_value

    pragma_keyword ::= SIMPLE_IDENTIFIER

    pragma_name ::= SIMPLE_IDENTIFIER

    pragma_value ::= LP pragma_expression list_17 RP
           | number
           | string_
           | identifier

    resetall_directive ::= GA RESETALL_DIRECTIVE

    source_text_ ::= SOURCE_TEXT

    string_ ::= STRING

    text_macro_definition ::= GA DEFINE_DIRECTIVE macro_name macro_text

    text_macro_usage ::= GA macro_usage

    time_precision ::= TIME_VALUE TIME_UNIT

    time_unit ::= TIME_VALUE TIME_UNIT

    timescale_directive ::= GA TIMESCALE_DIRECTIVE time_unit SL time_precision

    unconnected_drive_directive ::= GA UNCONNECTED_DRIVE_DIRECTIVE unconnected_drive_value

    unconnected_drive_value ::= UNCONNECTED_DRIVE_VALUE

    undef_directive ::= GA UNDEF_DIRECTIVE macro_identifier

    version_specifier ::= VERSION_SPECIFIER

    library_text ::= list_18

    library_description ::= library_declaration
           | include_statement
           | config_declaration

    library_declaration ::= LIBRARY library_identifier file_path_spec list_20 opt_21 SEMI

    library_incdir ::= _INCDIR file_path_spec list_23

    include_statement ::= INCLUDE file_path_spec SEMI

    file_path_spec ::= FILE_PATH_SPEC

    source_text ::= list_24

    description ::= module_declaration
           | udp_declaration
           | config_declaration

    module_declaration ::= list_25 module_keyword module_identifier opt_26 opt_27 SEMI list_28 ENDMODULE

    module_keyword ::= MODULE
           | MACROMODULE

    module_parameter_port_list ::= HASH LPAREN parameter_declaration list_30 RPAREN

    list_of_port_declarations ::= LPAREN port_declaration list_32 RPAREN
           | LPAREN port list_34 RPAREN
           | LPAREN port_implicit RPAREN
           | LPAREN port_explicit RPAREN
           | LPAREN RPAREN

    port ::= opt_35
           | port_explicit

    port_implicit ::= port_expression

    port_explicit ::= DOT port_identifier LPAREN opt_36 RPAREN

    port_expression ::= port_reference
           | LBRACE port_reference list_38 RBRACE

    port_reference ::= port_identifier opt_40

    port_declaration ::= list_41 inout_declaration
           | list_42 input_declaration
           | list_43 output_declaration

    module_item ::= port_declaration SEMI
           | module_or_generate_item
           | generate_region
           | specify_block
           | list_44 parameter_declaration SEMI
           | list_45 specparam_declaration

    module_or_generate_item ::= list_46 module_or_generate_item_declaration
           | list_47 local_parameter_declaration SEMI
           | list_48 parameter_override
           | list_49 continuous_assign
           | list_50 gate_instantiation
           | list_51 module_instantiation
           | list_52 udp_instantiation
           | list_53 initial_construct
           | list_54 always_construct
           | list_55 loop_generate_construct
           | list_56 conditional_generate_construct

    module_or_generate_item_declaration ::= net_declaration
           | reg_declaration
           | integer_declaration
           | real_declaration
           | time_declaration
           | realtime_declaration
           | event_declaration
           | genvar_declaration
           | task_declaration
           | function_declaration

    parameter_override ::= DEFPARAM list_of_defparam_assignments SEMI

    config_declaration ::= CONFIG config_identifier SEMI design_statement list_57 ENDCONFIG

    design_statement ::= DESIGN list_58 SEMI

    design_statement_item ::= opt_60 cell_identifier

    config_rule_statement ::= default_clause liblist_clause SEMI
           | inst_clause liblist_clause SEMI
           | inst_clause use_clause SEMI
           | cell_clause liblist_clause SEMI
           | cell_clause use_clause SEMI

    default_clause ::= DEFAULT

    inst_clause ::= INSTANCE inst_name

    inst_name ::= topmodule_identifier list_62

    cell_clause ::= CELL opt_64 cell_identifier

    liblist_clause ::= LIBLIST list_65

    use_clause ::= USE opt_67 cell_identifier opt_69

    local_parameter_declaration ::= LOCALPARAM opt_70 opt_71 list_of_param_assignments
           | LOCALPARAM parameter_type list_of_param_assignments

    parameter_declaration ::= PARAMETER opt_72 opt_73 list_of_param_assignments
           | PARAMETER parameter_type list_of_param_assignments

    specparam_declaration ::= SPECPARAM opt_74 list_of_specparam_assignments SEMI

    parameter_type ::= INTEGER
           | REAL
           | REALTIME
           | TIME

    inout_declaration ::= INOUT opt_75 opt_76 opt_77 list_of_port_identifiers

    input_declaration ::= INPUT opt_78 opt_79 opt_80 list_of_port_identifiers

    output_declaration ::= OUTPUT opt_81 opt_82 opt_83 list_of_port_identifiers
           | OUTPUT REG opt_84 opt_85 list_of_variable_port_identifiers
           | OUTPUT output_variable_type list_of_variable_port_identifiers

    event_declaration ::= EVENT list_of_event_identifiers SEMI

    integer_declaration ::= INTEGER list_of_variable_identifiers SEMI

    net_declaration ::= net_type opt_86 opt_87 list_of_net_identifiers SEMI
           | net_type opt_88 opt_89 opt_90 list_of_net_decl_assignments SEMI
           | net_type opt_92 opt_93 range_ opt_94 list_of_net_identifiers SEMI
           | net_type opt_95 opt_97 opt_98 range_ opt_99 list_of_net_decl_assignments SEMI
           | TRIREG opt_100 opt_101 opt_102 list_of_net_identifiers SEMI
           | TRIREG opt_103 opt_104 opt_105 list_of_net_decl_assignments SEMI
           | TRIREG opt_106 opt_108 opt_109 range_ opt_110 list_of_net_identifiers SEMI
           | TRIREG opt_111 opt_113 opt_114 range_ opt_115 list_of_net_decl_assignments SEMI

    real_declaration ::= REAL list_of_real_identifiers SEMI

    realtime_declaration ::= REALTIME list_of_real_identifiers SEMI

    reg_declaration ::= REG opt_116 opt_117 list_of_variable_identifiers SEMI

    time_declaration ::= TIME list_of_variable_identifiers SEMI

    net_type ::= SUPPLY0
           | SUPPLY1
           | TRI
           | TRIAND
           | TRIOR
           | TRI0
           | TRI1
           | UWIRE
           | WIRE
           | WAND
           | WOR

    output_variable_type ::= INTEGER
           | TIME

    real_type ::= real_identifier list_118
           | real_identifier EQ constant_expression

    variable_type ::= variable_identifier list_119
           | variable_identifier EQ constant_expression

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
           | HASH LPAREN mintypmax_expression opt_123 RPAREN

    delay2 ::= HASH delay_value
           | HASH LPAREN mintypmax_expression opt_125 RPAREN

    delay_value ::= unsigned_number
           | real_number
           | identifier

    list_of_defparam_assignments ::= defparam_assignment list_127

    list_of_event_identifiers ::= event_id list_129

    event_id ::= event_identifier list_130

    list_of_net_decl_assignments ::= net_decl_assignment list_132

    list_of_net_identifiers ::= net_id list_134

    net_id ::= net_identifier list_135

    list_of_param_assignments ::= param_assignment list_137

    list_of_port_identifiers ::= port_identifier list_139

    list_of_real_identifiers ::= real_type list_141

    list_of_specparam_assignments ::= specparam_assignment list_143

    list_of_variable_identifiers ::= variable_type list_145

    list_of_variable_port_identifiers ::= var_port_id list_147

    var_port_id ::= port_identifier opt_149

    defparam_assignment ::= hierarchical_identifier EQ constant_mintypmax_expression

    net_decl_assignment ::= net_identifier EQ expression

    param_assignment ::= parameter_identifier EQ constant_mintypmax_expression

    specparam_assignment ::= specparam_identifier EQ constant_mintypmax_expression
           | pulse_control_specparam

    pulse_control_specparam ::= PATHPULSE_ EQ LPAREN reject_limit_value opt_151 RPAREN
           | PATHPULSE_ specify_input_terminal_descriptor DOLLAR specify_output_terminal_descriptor EQ LPAREN reject_limit_value opt_153 RPAREN

    error_limit_value ::= limit_value

    reject_limit_value ::= limit_value

    limit_value ::= constant_mintypmax_expression

    dimension ::= LBRACKET dimension_constant_expression COLON dimension_constant_expression RBRACKET

    range_ ::= LBRACKET msb_constant_expression COLON lsb_constant_expression RBRACKET

    function_declaration ::= FUNCTION opt_154 opt_155 function_identifier SEMI list_156 function_statement ENDFUNCTION
           | FUNCTION opt_157 opt_158 function_identifier LPAREN function_port_list RPAREN SEMI list_159 function_statement ENDFUNCTION

    function_item_declaration ::= block_item_declaration
           | list_160 tf_input_declaration SEMI

    function_port_list ::= func_port_item list_162

    func_port_item ::= list_163 tf_input_declaration

    function_range_or_type ::= range_
           | SIGNED opt_164
           | INTEGER
           | REAL
           | REALTIME
           | TIME

    task_declaration ::= TASK opt_165 task_identifier SEMI list_166 statement_or_null ENDTASK
           | TASK opt_167 task_identifier LPAREN opt_168 RPAREN SEMI list_169 statement_or_null ENDTASK

    task_item_declaration ::= block_item_declaration
           | list_170 tf_input_declaration SEMI
           | list_171 tf_output_declaration SEMI
           | list_172 tf_inout_declaration SEMI

    task_port_list ::= task_port_item list_174

    task_port_item ::= list_175 tf_input_declaration
           | list_176 tf_output_declaration
           | list_177 tf_inout_declaration

    tf_input_declaration ::= INPUT opt_178 opt_179 opt_180 list_of_port_identifiers
           | INPUT task_port_type list_of_port_identifiers

    tf_output_declaration ::= OUTPUT opt_181 opt_182 opt_183 list_of_port_identifiers
           | OUTPUT task_port_type list_of_port_identifiers

    tf_inout_declaration ::= INOUT opt_184 opt_185 opt_186 list_of_port_identifiers
           | INOUT task_port_type list_of_port_identifiers

    task_port_type ::= INTEGER
           | REAL
           | REALTIME
           | TIME

    block_item_declaration ::= list_187 REG opt_188 opt_189 list_of_block_variable_identifiers SEMI
           | list_190 INTEGER list_of_block_variable_identifiers SEMI
           | list_191 TIME list_of_block_variable_identifiers SEMI
           | list_192 REAL list_of_block_real_identifiers SEMI
           | list_193 REALTIME list_of_block_real_identifiers SEMI
           | list_194 event_declaration
           | list_195 local_parameter_declaration SEMI
           | list_196 parameter_declaration SEMI

    list_of_block_variable_identifiers ::= block_variable_type list_198

    list_of_block_real_identifiers ::= block_real_type list_200

    block_variable_type ::= variable_identifier list_201

    block_real_type ::= real_identifier list_202

    gate_instantiation ::= cmos_switchtype opt_203 cmos_switch_instance list_205 SEMI
           | enable_gatetype opt_206 opt_207 enable_gate_instance list_209 SEMI
           | mos_switchtype opt_210 mos_switch_instance list_212 SEMI
           | n_input_gatetype opt_213 opt_214 n_input_gate_instance list_216 SEMI
           | n_output_gatetype opt_217 opt_218 n_output_gate_instance list_220 SEMI
           | pass_en_switchtype opt_221 pass_enable_switch_instance list_223 SEMI
           | pass_switchtype pass_switch_instance list_225 SEMI
           | PULLDOWN opt_226 pull_gate_instance list_228 SEMI
           | PULLUP opt_229 pull_gate_instance list_231 SEMI

    cmos_switch_instance ::= opt_232 LPAREN output_terminal COMMA input_terminal COMMA ncontrol_terminal COMMA pcontrol_terminal RPAREN

    enable_gate_instance ::= opt_233 LPAREN output_terminal COMMA input_terminal COMMA enable_terminal RPAREN

    mos_switch_instance ::= opt_234 LPAREN output_terminal COMMA input_terminal COMMA enable_terminal RPAREN

    n_input_gate_instance ::= opt_235 LPAREN output_terminal COMMA input_terminal list_237 RPAREN

    n_output_gate_instance ::= opt_238 LPAREN output_terminal list_240 COMMA input_terminal RPAREN

    pass_switch_instance ::= opt_241 LPAREN inout_terminal COMMA inout_terminal RPAREN

    pass_enable_switch_instance ::= opt_242 LPAREN inout_terminal COMMA inout_terminal COMMA enable_terminal RPAREN

    pull_gate_instance ::= opt_243 LPAREN output_terminal RPAREN

    name_of_gate_instance ::= gate_instance_identifier opt_244

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

    module_instantiation ::= module_identifier opt_245 module_instance list_247 SEMI

    parameter_value_assignment ::= HASH LPAREN list_of_parameter_assignments RPAREN

    list_of_parameter_assignments ::= ordered_parameter_assignment list_249
           | named_parameter_assignment list_251

    ordered_parameter_assignment ::= expression

    named_parameter_assignment ::= DOT parameter_identifier LPAREN opt_252 RPAREN

    module_instance ::= name_of_module_instance LPAREN list_of_port_connections RPAREN

    name_of_module_instance ::= module_instance_identifier opt_253

    list_of_port_connections ::= ordered_port_connection list_255
           | named_port_connection list_257

    ordered_port_connection ::= list_258 opt_259

    named_port_connection ::= list_260 DOT port_identifier LPAREN opt_261 RPAREN

    generate_region ::= GENERATE list_262 ENDGENERATE

    genvar_declaration ::= GENVAR list_of_genvar_identifiers SEMI

    list_of_genvar_identifiers ::= genvar_identifier list_264

    loop_generate_construct ::= FOR LPAREN genvar_initialization SEMI genvar_expression SEMI genvar_iteration RPAREN generate_block

    genvar_initialization ::= genvar_identifier EQ constant_expression

    genvar_expression ::= constant_expression

    genvar_iteration ::= genvar_identifier EQ genvar_expression

    conditional_generate_construct ::= if_generate_construct
           | case_generate_construct

    if_generate_construct ::= IF LPAREN constant_expression RPAREN generate_block_or_null opt_266

    case_generate_construct ::= CASE LPAREN constant_expression RPAREN list_267 ENDCASE

    case_generate_item ::= constant_expression list_269 COLON generate_block_or_null
           | DEFAULT opt_270 generate_block_or_null

    generate_block ::= module_or_generate_item
           | BEGIN opt_271 list_272 END

    generate_block_name ::= COLON generate_block_identifier

    generate_block_or_null ::= generate_block
           | SEMI

    udp_declaration ::= list_273 PRIMITIVE udp_identifier LPAREN udp_port_list RPAREN SEMI list_274 udp_body ENDPRIMITIVE
           | list_275 PRIMITIVE udp_identifier LPAREN udp_declaration_port_list RPAREN SEMI udp_body ENDPRIMITIVE

    udp_port_list ::= output_port_identifier COMMA input_port_identifier list_277

    udp_declaration_port_list ::= udp_output_declaration COMMA udp_input_declaration list_279

    udp_port_declaration ::= udp_output_declaration SEMI
           | udp_input_declaration SEMI
           | udp_reg_declaration SEMI

    udp_output_declaration ::= list_280 OUTPUT port_identifier
           | list_281 OUTPUT REG port_identifier opt_283

    udp_input_declaration ::= list_284 INPUT list_of_port_identifiers

    udp_reg_declaration ::= list_285 REG variable_identifier

    udp_body ::= combinational_body
           | sequential_body

    combinational_body ::= TABLE list_286 ENDTABLE

    combinational_entry ::= level_input_list COLON output_symbol SEMI

    sequential_body ::= opt_287 TABLE list_288 ENDTABLE

    udp_initial_statement ::= INITIAL output_port_identifier EQ init_val SEMI

    init_val ::= binary_number
           | unsigned_number

    sequential_entry ::= seq_input_list COLON current_state COLON next_state SEMI

    seq_input_list ::= level_input_list
           | edge_input_list

    level_input_list ::= list_289

    edge_input_list ::= list_290 edge_indicator list_291

    edge_indicator ::= LPAREN level_symbol level_symbol RPAREN
           | edge_symbol

    current_state ::= level_symbol

    next_state ::= output_symbol
           | MINUS

    output_symbol ::= OUTPUT_OR_LEVEL_SYMBOL

    level_symbol ::= LEVEL_ONLY_SYMBOL
           | OUTPUT_OR_LEVEL_SYMBOL

    edge_symbol ::= EDGE_SYMBOL

    udp_instantiation ::= udp_identifier opt_292 opt_293 udp_instance list_295 SEMI

    udp_instance ::= opt_296 LPAREN output_terminal COMMA input_terminal list_298 RPAREN

    name_of_udp_instance ::= udp_instance_identifier opt_299

    continuous_assign ::= ASSIGN opt_300 opt_301 list_of_net_assignments SEMI

    list_of_net_assignments ::= net_assignment list_303

    net_assignment ::= net_lvalue EQ expression

    initial_construct ::= INITIAL statement

    always_construct ::= ALWAYS statement

    blocking_assignment ::= variable_lvalue EQ opt_304 expression

    nonblocking_assignment ::= variable_lvalue LTEQ opt_305 expression

    procedural_continuous_assignments ::= ASSIGN variable_assignment
           | DEASSIGN variable_lvalue
           | FORCE variable_assignment
           | RELEASE variable_lvalue

    variable_assignment ::= variable_lvalue EQ expression

    par_block ::= FORK opt_308 list_309 JOIN

    block_name ::= COLON block_identifier

    seq_block ::= BEGIN opt_312 list_313 END

    statement ::= list_314 blocking_assignment SEMI
           | list_315 case_statement
           | list_316 conditional_statement
           | list_317 disable_statement
           | list_318 event_trigger
           | list_319 loop_statement
           | list_320 nonblocking_assignment SEMI
           | list_321 par_block
           | list_322 procedural_continuous_assignments SEMI
           | list_323 procedural_timing_control_statement
           | list_324 seq_block
           | list_325 system_task_enable
           | list_326 task_enable
           | list_327 wait_statement

    statement_or_null ::= statement
           | list_328 SEMI

    function_statement ::= statement

    delay_control ::= HASH delay_value
           | HASH LPAREN mintypmax_expression RPAREN

    delay_or_event_control ::= delay_control
           | event_control
           | REPEAT LPAREN expression RPAREN event_control

    disable_statement ::= DISABLE hierarchical_identifier SEMI

    event_control ::= AT hierarchical_identifier
           | AT LPAREN event_expression RPAREN
           | AT STAR
           | AT LPAREN STAR RPAREN

    event_trigger ::= ARROW hierarchical_identifier opt_329 SEMI

    event_expression ::= expression
           | POSEDGE expression
           | NEGEDGE expression
           | event_expression OR event_expression
           | event_expression COMMA event_expression

    procedural_timing_control ::= delay_control
           | event_control

    procedural_timing_control_statement ::= procedural_timing_control statement_or_null

    wait_statement ::= WAIT LPAREN expression RPAREN statement_or_null

    conditional_statement ::= IF LPAREN expression RPAREN statement_or_null opt_331

    case_statement ::= CASE LPAREN expression RPAREN list_332 ENDCASE
           | CASEZ LPAREN expression RPAREN list_333 ENDCASE
           | CASEX LPAREN expression RPAREN list_334 ENDCASE

    case_item ::= expression list_336 COLON statement_or_null
           | DEFAULT opt_337 statement_or_null

    loop_statement ::= FOREVER statement
           | REPEAT LPAREN expression RPAREN statement
           | WHILE LPAREN expression RPAREN statement
           | FOR LPAREN variable_assignment SEMI expression SEMI variable_assignment RPAREN statement

    system_task_enable ::= system_task_identifier opt_338 SEMI

    sys_task_en_port_list ::= LPAREN sys_task_en_port_item list_340 RPAREN

    sys_task_en_port_item ::= opt_341

    task_enable ::= hierarchical_identifier opt_342 SEMI

    task_en_port_list ::= LPAREN expression list_344 RPAREN

    specify_block ::= SPECIFY list_345 ENDSPECIFY

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

    parallel_path_description ::= LPAREN specify_input_terminal_descriptor opt_346 FATARROW specify_output_terminal_descriptor RPAREN

    full_path_description ::= LPAREN list_of_path_inputs opt_347 OP_80149 list_of_path_outputs RPAREN

    list_of_path_inputs ::= specify_input_terminal_descriptor list_349

    list_of_path_outputs ::= specify_output_terminal_descriptor list_351

    specify_input_terminal_descriptor ::= input_identifier opt_353

    specify_output_terminal_descriptor ::= output_identifier opt_355

    input_identifier ::= port_identifier

    output_identifier ::= port_identifier

    path_delay_value ::= list_of_path_delay_expressions
           | LPAREN list_of_path_delay_expressions RPAREN

    list_of_path_delay_expressions ::= t_path_delay_expression
           | trise_path_delay_expression COMMA tfall_path_delay_expression opt_357
           | t01_path_delay_expression COMMA t10_path_delay_expression COMMA t0z_path_delay_expression COMMA tz1_path_delay_expression COMMA t1z_path_delay_expression COMMA tz0_path_delay_expression opt_359

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

    parallel_edge_sensitive_path_description ::= LPAREN opt_360 specify_input_terminal_descriptor FATARROW LPAREN specify_output_terminal_descriptor opt_361 COLON data_source_expression RPAREN RPAREN

    full_edge_sensitive_path_description ::= LPAREN opt_362 list_of_path_inputs OP_80149 LPAREN list_of_path_outputs opt_363 COLON data_source_expression RPAREN RPAREN

    data_source_expression ::= expression

    edge_identifier ::= POSEDGE
           | NEGEDGE

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

    setup_timing_check ::= _SETUP LPAREN data_event COMMA reference_event COMMA timing_check_limit opt_364 RPAREN SEMI

    notifier_opt ::= COMMA opt_365

    hold_timing_check ::= _HOLD LPAREN reference_event COMMA data_event COMMA timing_check_limit opt_366 RPAREN SEMI

    setuphold_timing_check ::= _SETUPHOLD LPAREN reference_event COMMA data_event COMMA timing_check_limit COMMA timing_check_limit opt_367 RPAREN SEMI

    timing_check_opt ::= COMMA opt_368 opt_369

    stamptime_cond_opt ::= COMMA opt_370 opt_371

    checktime_cond_opt ::= COMMA opt_372 opt_373

    delayed_ref_opt ::= COMMA opt_374 opt_375

    delayed_data_opt ::= COMMA opt_376

    recovery_timing_check ::= _RECOVERY LPAREN reference_event COMMA data_event COMMA timing_check_limit opt_377 RPAREN SEMI

    removal_timing_check ::= _REMOVAL LPAREN reference_event COMMA data_event COMMA timing_check_limit opt_378 RPAREN SEMI

    recrem_timing_check ::= _RECREM LPAREN reference_event COMMA data_event COMMA timing_check_limit COMMA timing_check_limit opt_379 RPAREN SEMI

    skew_timing_check ::= _SKEW LPAREN reference_event COMMA data_event COMMA timing_check_limit opt_380 RPAREN SEMI

    timeskew_timing_check ::= _TIMESKEW LPAREN reference_event COMMA data_event COMMA timing_check_limit opt_381 RPAREN SEMI

    skew_timing_check_opt ::= COMMA opt_382 opt_383

    event_based_flag_opt ::= COMMA opt_384 opt_385

    remain_active_flag_opt ::= COMMA opt_386

    fullskew_timing_check ::= _FULLSKEW LPAREN reference_event COMMA data_event COMMA timing_check_limit COMMA timing_check_limit opt_387 RPAREN SEMI

    period_timing_check ::= _PERIOD LPAREN controlled_reference_event COMMA timing_check_limit opt_388 RPAREN SEMI

    width_timing_check ::= _WIDTH LPAREN controlled_reference_event COMMA timing_check_limit opt_389 RPAREN SEMI

    threshold_opt ::= COMMA threshold opt_391

    nochange_timing_check ::= _NOCHANGE LPAREN reference_event COMMA data_event COMMA start_edge_offset COMMA end_edge_offset opt_392 RPAREN SEMI

    checktime_condition ::= mintypmax_expression

    controlled_reference_event ::= controlled_timing_check_event

    data_event ::= timing_check_event

    delayed_data ::= terminal_identifier opt_394

    delayed_reference ::= terminal_identifier opt_396

    end_edge_offset ::= mintypmax_expression

    event_based_flag ::= constant_expression

    notifier ::= variable_identifier

    reference_event ::= timing_check_event

    remain_active_flag ::= constant_expression

    stamptime_condition ::= mintypmax_expression

    start_edge_offset ::= mintypmax_expression

    threshold ::= constant_expression

    timing_check_limit ::= expression

    timing_check_event ::= opt_397 specify_terminal_descriptor opt_399

    controlled_timing_check_event ::= timing_check_event_control specify_terminal_descriptor opt_401

    timing_check_event_control ::= POSEDGE
           | NEGEDGE
           | edge_control_specifier

    specify_terminal_descriptor ::= specify_input_terminal_descriptor
           | specify_output_terminal_descriptor

    edge_control_specifier ::= EDGE LBRACKET edge_descriptor list_403 RBRACKET

    edge_descriptor ::= EDGE_DESCRIPTOR

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

    concatenation ::= LBRACE expression list_405 RBRACE

    constant_concatenation ::= LBRACE constant_expression list_407 RBRACE

    constant_multiple_concatenation ::= LBRACE constant_expression constant_concatenation RBRACE

    module_path_concatenation ::= LBRACE module_path_expression list_409 RBRACE

    module_path_multiple_concatenation ::= LBRACE constant_expression module_path_concatenation RBRACE

    multiple_concatenation ::= LBRACE constant_expression concatenation RBRACE

    constant_function_call ::= function_identifier list_410 LPAREN constant_expression list_412 RPAREN

    constant_system_function_call ::= system_function_identifier LPAREN constant_expression list_414 RPAREN

    function_call ::= hierarchical_identifier list_415 LPAREN expression list_417 RPAREN

    system_function_call ::= system_function_identifier opt_418

    sys_func_call_port_list ::= LPAREN expression list_420 RPAREN

    base_expression ::= expression

    constant_base_expression ::= constant_expression

    constant_expression ::= constant_primary
           | unary_operator list_421 constant_primary
           | constant_expression STARSTAR list_422 constant_expression
           | constant_expression grp_423 list_424 constant_expression
           | constant_expression grp_425 list_426 constant_expression
           | constant_expression grp_427 list_428 constant_expression
           | constant_expression grp_429 list_430 constant_expression
           | constant_expression grp_431 list_432 constant_expression
           | constant_expression AMP list_433 constant_expression
           | constant_expression grp_434 list_435 constant_expression
           | constant_expression PIPE list_436 constant_expression
           | constant_expression ANDAND list_437 constant_expression
           | constant_expression OROR list_438 constant_expression
           | constant_expression QUESTION list_439 constant_expression COLON constant_expression

    constant_mintypmax_expression ::= constant_expression opt_441

    constant_range_expression ::= constant_expression
           | msb_constant_expression COLON lsb_constant_expression
           | constant_base_expression OP_49417 width_constant_expression
           | constant_base_expression OP_89451 width_constant_expression

    dimension_constant_expression ::= constant_expression

    expression ::= primary
           | unary_operator list_442 primary
           | expression STARSTAR list_443 expression
           | expression grp_444 list_445 expression
           | expression grp_446 list_447 expression
           | expression grp_448 list_449 expression
           | expression grp_450 list_451 expression
           | expression grp_452 list_453 expression
           | expression AMP list_454 expression
           | expression grp_455 list_456 expression
           | expression PIPE list_457 expression
           | expression ANDAND list_458 expression
           | expression OROR list_459 expression
           | expression QUESTION list_460 expression COLON expression

    lsb_constant_expression ::= constant_expression

    mintypmax_expression ::= expression opt_462

    module_path_expression ::= module_path_primary
           | unary_module_path_operator list_463 module_path_primary
           | module_path_expression grp_464 list_465 module_path_expression
           | module_path_expression AMP list_466 module_path_expression
           | module_path_expression grp_467 list_468 module_path_expression
           | module_path_expression PIPE list_469 module_path_expression
           | module_path_expression ANDAND list_470 module_path_expression
           | module_path_expression OROR list_471 module_path_expression
           | module_path_expression QUESTION list_472 module_path_expression COLON module_path_expression

    module_path_mintypmax_expression ::= module_path_expression opt_474

    msb_constant_expression ::= constant_expression

    range_expression ::= expression
           | msb_constant_expression COLON lsb_constant_expression
           | base_expression OP_49417 width_constant_expression
           | base_expression OP_89451 width_constant_expression

    width_constant_expression ::= constant_expression

    constant_primary ::= number
           | identifier opt_476
           | constant_concatenation
           | constant_multiple_concatenation
           | constant_function_call
           | constant_system_function_call
           | LPAREN constant_mintypmax_expression RPAREN
           | string_

    module_path_primary ::= number
           | identifier
           | module_path_concatenation
           | module_path_multiple_concatenation
           | function_call
           | system_function_call
           | LPAREN module_path_mintypmax_expression RPAREN

    primary ::= number
           | hierarchical_identifier opt_477
           | concatenation
           | multiple_concatenation
           | function_call
           | system_function_call
           | LPAREN mintypmax_expression RPAREN
           | string_

    select_ ::= opt_478 LBRACKET range_expression RBRACKET

    bit_select ::= list_480

    net_lvalue ::= hierarchical_identifier opt_481
           | LBRACE net_lvalue list_483 RBRACE

    const_select ::= opt_484 LBRACKET constant_range_expression RBRACKET

    const_bit_select ::= list_486

    variable_lvalue ::= hierarchical_identifier opt_487
           | LBRACE variable_lvalue list_489 RBRACE

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

    unary_module_path_operator ::= BANG
           | TILDE
           | AMP
           | OP_10129
           | PIPE
           | OP_19907
           | CARET
           | OP_67671
           | OP_20287

    number ::= decimal_number
           | octal_number
           | binary_number
           | hex_number
           | real_number

    real_number ::= fixed_point_number
           | exponential_number

    decimal_number ::= unsigned_number
           | opt_490 decimal_base decimal_value

    binary_number ::= opt_491 binary_base binary_value

    octal_number ::= opt_492 octal_base octal_value

    hex_number ::= opt_493 hex_base hex_value

    size ::= UNSIGNED_NUMBER

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

    string_ ::= STRING

    attribute_instance ::= LPAREN STAR attr_spec list_495 STAR RPAREN

    attr_spec ::= attr_name opt_497

    attr_name ::= identifier

    block_identifier ::= identifier

    cell_identifier ::= identifier

    config_identifier ::= identifier

    escaped_identifier ::= ESCAPED_IDENTIFIER

    event_identifier ::= identifier

    function_identifier ::= identifier

    gate_instance_identifier ::= identifier

    generate_block_identifier ::= identifier

    genvar_identifier ::= identifier

    hierarchical_identifier ::= list_498 identifier

    hier_ref ::= identifier opt_499 DOT

    identifier ::= escaped_identifier
           | simple_identifier

    input_port_identifier ::= identifier

    instance_identifier ::= identifier

    library_identifier ::= identifier

    module_identifier ::= identifier

    module_instance_identifier ::= identifier

    net_identifier ::= identifier

    output_port_identifier ::= identifier

    parameter_identifier ::= identifier

    port_identifier ::= identifier

    real_identifier ::= identifier

    simple_identifier ::= SIMPLE_IDENTIFIER

    specparam_identifier ::= identifier

    system_function_identifier ::= SYSTEM_TF_IDENTIFIER

    system_task_identifier ::= SYSTEM_TF_IDENTIFIER

    task_identifier ::= identifier

    terminal_identifier ::= identifier

    topmodule_identifier ::= identifier

    udp_identifier ::= identifier

    udp_instance_identifier ::= identifier

    variable_identifier ::= identifier

    list_1 ::= $empty | list_1 compiler_directive

    grp_2 ::= source_text_ | compiler_directive

    list_3 ::= $empty | list_3 grp_2

    list_4 ::= $empty | list_4 elsif_directive

    opt_5 ::= else_directive | $empty

    list_6 ::= $empty | list_6 elsif_directive

    opt_7 ::= else_directive | $empty

    grp_8 ::= macro_text_ | macro_delimiter | macro_esc_newline | macro_esc_quote | macro_quote | string_

    list_9 ::= $empty | list_9 grp_8

    seq_10 ::= CO pragma_expression

    list_11 ::= $empty | list_11 seq_10

    seq_12 ::= pragma_expression list_11

    opt_13 ::= seq_12 | $empty

    seq_14 ::= pragma_keyword EQ

    opt_15 ::= seq_14 | $empty

    seq_16 ::= CO pragma_expression

    list_17 ::= $empty | list_17 seq_16

    list_18 ::= $empty | list_18 library_description

    seq_19 ::= COMMA file_path_spec

    list_20 ::= $empty | list_20 seq_19

    opt_21 ::= library_incdir | $empty

    seq_22 ::= COMMA file_path_spec

    list_23 ::= $empty | list_23 seq_22

    list_24 ::= $empty | list_24 description

    list_25 ::= $empty | list_25 attribute_instance

    opt_26 ::= module_parameter_port_list | $empty

    opt_27 ::= list_of_port_declarations | $empty

    list_28 ::= $empty | list_28 module_item

    seq_29 ::= COMMA parameter_declaration

    list_30 ::= $empty | list_30 seq_29

    seq_31 ::= COMMA port_declaration

    list_32 ::= $empty | list_32 seq_31

    seq_33 ::= COMMA port

    list_34 ::= seq_33 | list_34 seq_33

    opt_35 ::= port_implicit | $empty

    opt_36 ::= port_expression | $empty

    seq_37 ::= COMMA port_reference

    list_38 ::= $empty | list_38 seq_37

    seq_39 ::= LBRACKET constant_range_expression RBRACKET

    opt_40 ::= seq_39 | $empty

    list_41 ::= $empty | list_41 attribute_instance

    list_42 ::= $empty | list_42 attribute_instance

    list_43 ::= $empty | list_43 attribute_instance

    list_44 ::= $empty | list_44 attribute_instance

    list_45 ::= $empty | list_45 attribute_instance

    list_46 ::= $empty | list_46 attribute_instance

    list_47 ::= $empty | list_47 attribute_instance

    list_48 ::= $empty | list_48 attribute_instance

    list_49 ::= $empty | list_49 attribute_instance

    list_50 ::= $empty | list_50 attribute_instance

    list_51 ::= $empty | list_51 attribute_instance

    list_52 ::= $empty | list_52 attribute_instance

    list_53 ::= $empty | list_53 attribute_instance

    list_54 ::= $empty | list_54 attribute_instance

    list_55 ::= $empty | list_55 attribute_instance

    list_56 ::= $empty | list_56 attribute_instance

    list_57 ::= $empty | list_57 config_rule_statement

    list_58 ::= $empty | list_58 design_statement_item

    seq_59 ::= library_identifier DOT

    opt_60 ::= seq_59 | $empty

    seq_61 ::= DOT instance_identifier

    list_62 ::= $empty | list_62 seq_61

    seq_63 ::= library_identifier DOT

    opt_64 ::= seq_63 | $empty

    list_65 ::= $empty | list_65 library_identifier

    seq_66 ::= library_identifier DOT

    opt_67 ::= seq_66 | $empty

    seq_68 ::= COLON CONFIG

    opt_69 ::= seq_68 | $empty

    opt_70 ::= SIGNED | $empty

    opt_71 ::= range_ | $empty

    opt_72 ::= SIGNED | $empty

    opt_73 ::= range_ | $empty

    opt_74 ::= range_ | $empty

    opt_75 ::= net_type | $empty

    opt_76 ::= SIGNED | $empty

    opt_77 ::= range_ | $empty

    opt_78 ::= net_type | $empty

    opt_79 ::= SIGNED | $empty

    opt_80 ::= range_ | $empty

    opt_81 ::= net_type | $empty

    opt_82 ::= SIGNED | $empty

    opt_83 ::= range_ | $empty

    opt_84 ::= SIGNED | $empty

    opt_85 ::= range_ | $empty

    opt_86 ::= SIGNED | $empty

    opt_87 ::= delay3 | $empty

    opt_88 ::= drive_strength | $empty

    opt_89 ::= SIGNED | $empty

    opt_90 ::= delay3 | $empty

    grp_91 ::= VECTORED | SCALARED

    opt_92 ::= grp_91 | $empty

    opt_93 ::= SIGNED | $empty

    opt_94 ::= delay3 | $empty

    opt_95 ::= drive_strength | $empty

    grp_96 ::= VECTORED | SCALARED

    opt_97 ::= grp_96 | $empty

    opt_98 ::= SIGNED | $empty

    opt_99 ::= delay3 | $empty

    opt_100 ::= charge_strength | $empty

    opt_101 ::= SIGNED | $empty

    opt_102 ::= delay3 | $empty

    opt_103 ::= drive_strength | $empty

    opt_104 ::= SIGNED | $empty

    opt_105 ::= delay3 | $empty

    opt_106 ::= charge_strength | $empty

    grp_107 ::= VECTORED | SCALARED

    opt_108 ::= grp_107 | $empty

    opt_109 ::= SIGNED | $empty

    opt_110 ::= delay3 | $empty

    opt_111 ::= drive_strength | $empty

    grp_112 ::= VECTORED | SCALARED

    opt_113 ::= grp_112 | $empty

    opt_114 ::= SIGNED | $empty

    opt_115 ::= delay3 | $empty

    opt_116 ::= SIGNED | $empty

    opt_117 ::= range_ | $empty

    list_118 ::= $empty | list_118 dimension

    list_119 ::= $empty | list_119 dimension

    seq_120 ::= COMMA mintypmax_expression

    opt_121 ::= seq_120 | $empty

    seq_122 ::= COMMA mintypmax_expression opt_121

    opt_123 ::= seq_122 | $empty

    seq_124 ::= COMMA mintypmax_expression

    opt_125 ::= seq_124 | $empty

    seq_126 ::= COMMA defparam_assignment

    list_127 ::= $empty | list_127 seq_126

    seq_128 ::= COMMA event_id

    list_129 ::= $empty | list_129 seq_128

    list_130 ::= $empty | list_130 dimension

    seq_131 ::= COMMA net_decl_assignment

    list_132 ::= $empty | list_132 seq_131

    seq_133 ::= COMMA net_id

    list_134 ::= $empty | list_134 seq_133

    list_135 ::= $empty | list_135 dimension

    seq_136 ::= COMMA param_assignment

    list_137 ::= $empty | list_137 seq_136

    seq_138 ::= COMMA port_identifier

    list_139 ::= $empty | list_139 seq_138

    seq_140 ::= COMMA real_type

    list_141 ::= $empty | list_141 seq_140

    seq_142 ::= COMMA specparam_assignment

    list_143 ::= $empty | list_143 seq_142

    seq_144 ::= COMMA variable_type

    list_145 ::= $empty | list_145 seq_144

    seq_146 ::= COMMA var_port_id

    list_147 ::= $empty | list_147 seq_146

    seq_148 ::= EQ constant_expression

    opt_149 ::= seq_148 | $empty

    seq_150 ::= COMMA error_limit_value

    opt_151 ::= seq_150 | $empty

    seq_152 ::= COMMA error_limit_value

    opt_153 ::= seq_152 | $empty

    opt_154 ::= AUTOMATIC | $empty

    opt_155 ::= function_range_or_type | $empty

    list_156 ::= function_item_declaration | list_156 function_item_declaration

    opt_157 ::= AUTOMATIC | $empty

    opt_158 ::= function_range_or_type | $empty

    list_159 ::= $empty | list_159 block_item_declaration

    list_160 ::= $empty | list_160 attribute_instance

    seq_161 ::= COMMA func_port_item

    list_162 ::= $empty | list_162 seq_161

    list_163 ::= $empty | list_163 attribute_instance

    opt_164 ::= range_ | $empty

    opt_165 ::= AUTOMATIC | $empty

    list_166 ::= $empty | list_166 task_item_declaration

    opt_167 ::= AUTOMATIC | $empty

    opt_168 ::= task_port_list | $empty

    list_169 ::= $empty | list_169 block_item_declaration

    list_170 ::= $empty | list_170 attribute_instance

    list_171 ::= $empty | list_171 attribute_instance

    list_172 ::= $empty | list_172 attribute_instance

    seq_173 ::= COMMA task_port_item

    list_174 ::= $empty | list_174 seq_173

    list_175 ::= $empty | list_175 attribute_instance

    list_176 ::= $empty | list_176 attribute_instance

    list_177 ::= $empty | list_177 attribute_instance

    opt_178 ::= REG | $empty

    opt_179 ::= SIGNED | $empty

    opt_180 ::= range_ | $empty

    opt_181 ::= REG | $empty

    opt_182 ::= SIGNED | $empty

    opt_183 ::= range_ | $empty

    opt_184 ::= REG | $empty

    opt_185 ::= SIGNED | $empty

    opt_186 ::= range_ | $empty

    list_187 ::= $empty | list_187 attribute_instance

    opt_188 ::= SIGNED | $empty

    opt_189 ::= range_ | $empty

    list_190 ::= $empty | list_190 attribute_instance

    list_191 ::= $empty | list_191 attribute_instance

    list_192 ::= $empty | list_192 attribute_instance

    list_193 ::= $empty | list_193 attribute_instance

    list_194 ::= $empty | list_194 attribute_instance

    list_195 ::= $empty | list_195 attribute_instance

    list_196 ::= $empty | list_196 attribute_instance

    seq_197 ::= COMMA block_variable_type

    list_198 ::= $empty | list_198 seq_197

    seq_199 ::= COMMA block_real_type

    list_200 ::= $empty | list_200 seq_199

    list_201 ::= $empty | list_201 dimension

    list_202 ::= $empty | list_202 dimension

    opt_203 ::= delay3 | $empty

    seq_204 ::= COMMA cmos_switch_instance

    list_205 ::= $empty | list_205 seq_204

    opt_206 ::= drive_strength | $empty

    opt_207 ::= delay3 | $empty

    seq_208 ::= COMMA enable_gate_instance

    list_209 ::= $empty | list_209 seq_208

    opt_210 ::= delay3 | $empty

    seq_211 ::= COMMA mos_switch_instance

    list_212 ::= $empty | list_212 seq_211

    opt_213 ::= drive_strength | $empty

    opt_214 ::= delay2 | $empty

    seq_215 ::= COMMA n_input_gate_instance

    list_216 ::= $empty | list_216 seq_215

    opt_217 ::= drive_strength | $empty

    opt_218 ::= delay2 | $empty

    seq_219 ::= COMMA n_output_gate_instance

    list_220 ::= $empty | list_220 seq_219

    opt_221 ::= delay2 | $empty

    seq_222 ::= COMMA pass_enable_switch_instance

    list_223 ::= $empty | list_223 seq_222

    seq_224 ::= COMMA pass_switch_instance

    list_225 ::= $empty | list_225 seq_224

    opt_226 ::= pulldown_strength | $empty

    seq_227 ::= COMMA pull_gate_instance

    list_228 ::= $empty | list_228 seq_227

    opt_229 ::= pullup_strength | $empty

    seq_230 ::= COMMA pull_gate_instance

    list_231 ::= $empty | list_231 seq_230

    opt_232 ::= name_of_gate_instance | $empty

    opt_233 ::= name_of_gate_instance | $empty

    opt_234 ::= name_of_gate_instance | $empty

    opt_235 ::= name_of_gate_instance | $empty

    seq_236 ::= COMMA input_terminal

    list_237 ::= $empty | list_237 seq_236

    opt_238 ::= name_of_gate_instance | $empty

    seq_239 ::= COMMA output_terminal

    list_240 ::= $empty | list_240 seq_239

    opt_241 ::= name_of_gate_instance | $empty

    opt_242 ::= name_of_gate_instance | $empty

    opt_243 ::= name_of_gate_instance | $empty

    opt_244 ::= range_ | $empty

    opt_245 ::= parameter_value_assignment | $empty

    seq_246 ::= COMMA module_instance

    list_247 ::= $empty | list_247 seq_246

    seq_248 ::= COMMA ordered_parameter_assignment

    list_249 ::= $empty | list_249 seq_248

    seq_250 ::= COMMA named_parameter_assignment

    list_251 ::= $empty | list_251 seq_250

    opt_252 ::= mintypmax_expression | $empty

    opt_253 ::= range_ | $empty

    seq_254 ::= COMMA ordered_port_connection

    list_255 ::= $empty | list_255 seq_254

    seq_256 ::= COMMA named_port_connection

    list_257 ::= $empty | list_257 seq_256

    list_258 ::= $empty | list_258 attribute_instance

    opt_259 ::= expression | $empty

    list_260 ::= $empty | list_260 attribute_instance

    opt_261 ::= expression | $empty

    list_262 ::= $empty | list_262 module_or_generate_item

    seq_263 ::= COMMA genvar_identifier

    list_264 ::= $empty | list_264 seq_263

    seq_265 ::= ELSE generate_block_or_null

    opt_266 ::= seq_265 | $empty

    list_267 ::= case_generate_item | list_267 case_generate_item

    seq_268 ::= COMMA constant_expression

    list_269 ::= $empty | list_269 seq_268

    opt_270 ::= COLON | $empty

    opt_271 ::= generate_block_name | $empty

    list_272 ::= $empty | list_272 module_or_generate_item

    list_273 ::= $empty | list_273 attribute_instance

    list_274 ::= udp_port_declaration | list_274 udp_port_declaration

    list_275 ::= $empty | list_275 attribute_instance

    seq_276 ::= COMMA input_port_identifier

    list_277 ::= $empty | list_277 seq_276

    seq_278 ::= COMMA udp_input_declaration

    list_279 ::= $empty | list_279 seq_278

    list_280 ::= $empty | list_280 attribute_instance

    list_281 ::= $empty | list_281 attribute_instance

    seq_282 ::= EQ constant_expression

    opt_283 ::= seq_282 | $empty

    list_284 ::= $empty | list_284 attribute_instance

    list_285 ::= $empty | list_285 attribute_instance

    list_286 ::= combinational_entry | list_286 combinational_entry

    opt_287 ::= udp_initial_statement | $empty

    list_288 ::= sequential_entry | list_288 sequential_entry

    list_289 ::= level_symbol | list_289 level_symbol

    list_290 ::= $empty | list_290 level_symbol

    list_291 ::= $empty | list_291 level_symbol

    opt_292 ::= drive_strength | $empty

    opt_293 ::= delay2 | $empty

    seq_294 ::= COMMA udp_instance

    list_295 ::= $empty | list_295 seq_294

    opt_296 ::= name_of_udp_instance | $empty

    seq_297 ::= COMMA input_terminal

    list_298 ::= $empty | list_298 seq_297

    opt_299 ::= range_ | $empty

    opt_300 ::= drive_strength | $empty

    opt_301 ::= delay3 | $empty

    seq_302 ::= COMMA net_assignment

    list_303 ::= $empty | list_303 seq_302

    opt_304 ::= delay_or_event_control | $empty

    opt_305 ::= delay_or_event_control | $empty

    list_306 ::= $empty | list_306 block_item_declaration

    seq_307 ::= block_name list_306

    opt_308 ::= seq_307 | $empty

    list_309 ::= $empty | list_309 statement

    list_310 ::= $empty | list_310 block_item_declaration

    seq_311 ::= block_name list_310

    opt_312 ::= seq_311 | $empty

    list_313 ::= $empty | list_313 statement

    list_314 ::= $empty | list_314 attribute_instance

    list_315 ::= $empty | list_315 attribute_instance

    list_316 ::= $empty | list_316 attribute_instance

    list_317 ::= $empty | list_317 attribute_instance

    list_318 ::= $empty | list_318 attribute_instance

    list_319 ::= $empty | list_319 attribute_instance

    list_320 ::= $empty | list_320 attribute_instance

    list_321 ::= $empty | list_321 attribute_instance

    list_322 ::= $empty | list_322 attribute_instance

    list_323 ::= $empty | list_323 attribute_instance

    list_324 ::= $empty | list_324 attribute_instance

    list_325 ::= $empty | list_325 attribute_instance

    list_326 ::= $empty | list_326 attribute_instance

    list_327 ::= $empty | list_327 attribute_instance

    list_328 ::= $empty | list_328 attribute_instance

    opt_329 ::= bit_select | $empty

    seq_330 ::= ELSE statement_or_null

    opt_331 ::= seq_330 | $empty

    list_332 ::= case_item | list_332 case_item

    list_333 ::= case_item | list_333 case_item

    list_334 ::= case_item | list_334 case_item

    seq_335 ::= COMMA expression

    list_336 ::= $empty | list_336 seq_335

    opt_337 ::= COLON | $empty

    opt_338 ::= sys_task_en_port_list | $empty

    seq_339 ::= COMMA sys_task_en_port_item

    list_340 ::= $empty | list_340 seq_339

    opt_341 ::= expression | $empty

    opt_342 ::= task_en_port_list | $empty

    seq_343 ::= COMMA expression

    list_344 ::= $empty | list_344 seq_343

    list_345 ::= $empty | list_345 specify_item

    opt_346 ::= polarity_operator | $empty

    opt_347 ::= polarity_operator | $empty

    seq_348 ::= COMMA specify_input_terminal_descriptor

    list_349 ::= $empty | list_349 seq_348

    seq_350 ::= COMMA specify_output_terminal_descriptor

    list_351 ::= $empty | list_351 seq_350

    seq_352 ::= LBRACKET constant_range_expression RBRACKET

    opt_353 ::= seq_352 | $empty

    seq_354 ::= LBRACKET constant_range_expression RBRACKET

    opt_355 ::= seq_354 | $empty

    seq_356 ::= COMMA tz_path_delay_expression

    opt_357 ::= seq_356 | $empty

    seq_358 ::= COMMA t0x_path_delay_expression COMMA tx1_path_delay_expression COMMA t1x_path_delay_expression COMMA tx0_path_delay_expression COMMA txz_path_delay_expression COMMA tzx_path_delay_expression

    opt_359 ::= seq_358 | $empty

    opt_360 ::= edge_identifier | $empty

    opt_361 ::= polarity_operator | $empty

    opt_362 ::= edge_identifier | $empty

    opt_363 ::= polarity_operator | $empty

    opt_364 ::= notifier_opt | $empty

    opt_365 ::= notifier | $empty

    opt_366 ::= notifier_opt | $empty

    opt_367 ::= timing_check_opt | $empty

    opt_368 ::= notifier | $empty

    opt_369 ::= stamptime_cond_opt | $empty

    opt_370 ::= stamptime_condition | $empty

    opt_371 ::= checktime_cond_opt | $empty

    opt_372 ::= checktime_condition | $empty

    opt_373 ::= delayed_ref_opt | $empty

    opt_374 ::= delayed_reference | $empty

    opt_375 ::= delayed_data_opt | $empty

    opt_376 ::= delayed_data | $empty

    opt_377 ::= notifier_opt | $empty

    opt_378 ::= notifier_opt | $empty

    opt_379 ::= timing_check_opt | $empty

    opt_380 ::= notifier_opt | $empty

    opt_381 ::= skew_timing_check_opt | $empty

    opt_382 ::= notifier | $empty

    opt_383 ::= event_based_flag_opt | $empty

    opt_384 ::= event_based_flag | $empty

    opt_385 ::= remain_active_flag_opt | $empty

    opt_386 ::= remain_active_flag | $empty

    opt_387 ::= skew_timing_check_opt | $empty

    opt_388 ::= notifier_opt | $empty

    opt_389 ::= threshold_opt | $empty

    seq_390 ::= COMMA notifier

    opt_391 ::= seq_390 | $empty

    opt_392 ::= notifier_opt | $empty

    seq_393 ::= LBRACKET constant_mintypmax_expression RBRACKET

    opt_394 ::= seq_393 | $empty

    seq_395 ::= LBRACKET constant_mintypmax_expression RBRACKET

    opt_396 ::= seq_395 | $empty

    opt_397 ::= timing_check_event_control | $empty

    seq_398 ::= OP_84942 timing_check_condition

    opt_399 ::= seq_398 | $empty

    seq_400 ::= OP_84942 timing_check_condition

    opt_401 ::= seq_400 | $empty

    seq_402 ::= COMMA edge_descriptor

    list_403 ::= $empty | list_403 seq_402

    seq_404 ::= COMMA expression

    list_405 ::= $empty | list_405 seq_404

    seq_406 ::= COMMA constant_expression

    list_407 ::= $empty | list_407 seq_406

    seq_408 ::= COMMA module_path_expression

    list_409 ::= $empty | list_409 seq_408

    list_410 ::= $empty | list_410 attribute_instance

    seq_411 ::= COMMA constant_expression

    list_412 ::= $empty | list_412 seq_411

    seq_413 ::= COMMA constant_expression

    list_414 ::= $empty | list_414 seq_413

    list_415 ::= $empty | list_415 attribute_instance

    seq_416 ::= COMMA expression

    list_417 ::= $empty | list_417 seq_416

    opt_418 ::= sys_func_call_port_list | $empty

    seq_419 ::= COMMA expression

    list_420 ::= $empty | list_420 seq_419

    list_421 ::= $empty | list_421 attribute_instance

    list_422 ::= $empty | list_422 attribute_instance

    grp_423 ::= STAR | SLASH | PERCENT

    list_424 ::= $empty | list_424 attribute_instance

    grp_425 ::= PLUS | MINUS

    list_426 ::= $empty | list_426 attribute_instance

    grp_427 ::= RSHIFT | LSHIFT | URSHIFT | OP_1491

    list_428 ::= $empty | list_428 attribute_instance

    grp_429 ::= LT | LTEQ | GT | GTEQ

    list_430 ::= $empty | list_430 attribute_instance

    grp_431 ::= EQEQ | NOTEQ | EQEQEQ | NOTEQEQ

    list_432 ::= $empty | list_432 attribute_instance

    list_433 ::= $empty | list_433 attribute_instance

    grp_434 ::= CARET | OP_20287 | OP_67671

    list_435 ::= $empty | list_435 attribute_instance

    list_436 ::= $empty | list_436 attribute_instance

    list_437 ::= $empty | list_437 attribute_instance

    list_438 ::= $empty | list_438 attribute_instance

    list_439 ::= $empty | list_439 attribute_instance

    seq_440 ::= COLON constant_expression COLON constant_expression

    opt_441 ::= seq_440 | $empty

    list_442 ::= $empty | list_442 attribute_instance

    list_443 ::= $empty | list_443 attribute_instance

    grp_444 ::= STAR | SLASH | PERCENT

    list_445 ::= $empty | list_445 attribute_instance

    grp_446 ::= PLUS | MINUS

    list_447 ::= $empty | list_447 attribute_instance

    grp_448 ::= RSHIFT | LSHIFT | URSHIFT | OP_1491

    list_449 ::= $empty | list_449 attribute_instance

    grp_450 ::= LT | LTEQ | GT | GTEQ

    list_451 ::= $empty | list_451 attribute_instance

    grp_452 ::= EQEQ | NOTEQ | EQEQEQ | NOTEQEQ

    list_453 ::= $empty | list_453 attribute_instance

    list_454 ::= $empty | list_454 attribute_instance

    grp_455 ::= CARET | OP_20287 | OP_67671

    list_456 ::= $empty | list_456 attribute_instance

    list_457 ::= $empty | list_457 attribute_instance

    list_458 ::= $empty | list_458 attribute_instance

    list_459 ::= $empty | list_459 attribute_instance

    list_460 ::= $empty | list_460 attribute_instance

    seq_461 ::= COLON expression COLON expression

    opt_462 ::= seq_461 | $empty

    list_463 ::= $empty | list_463 attribute_instance

    grp_464 ::= EQEQ | NOTEQ

    list_465 ::= $empty | list_465 attribute_instance

    list_466 ::= $empty | list_466 attribute_instance

    grp_467 ::= CARET | OP_20287 | OP_67671

    list_468 ::= $empty | list_468 attribute_instance

    list_469 ::= $empty | list_469 attribute_instance

    list_470 ::= $empty | list_470 attribute_instance

    list_471 ::= $empty | list_471 attribute_instance

    list_472 ::= $empty | list_472 attribute_instance

    seq_473 ::= COLON module_path_expression COLON module_path_expression

    opt_474 ::= seq_473 | $empty

    seq_475 ::= LBRACKET constant_range_expression RBRACKET

    opt_476 ::= seq_475 | $empty

    opt_477 ::= select_ | $empty

    opt_478 ::= bit_select | $empty

    seq_479 ::= LBRACKET expression RBRACKET

    list_480 ::= seq_479 | list_480 seq_479

    opt_481 ::= const_select | $empty

    seq_482 ::= COMMA net_lvalue

    list_483 ::= $empty | list_483 seq_482

    opt_484 ::= const_bit_select | $empty

    seq_485 ::= LBRACKET constant_expression RBRACKET

    list_486 ::= seq_485 | list_486 seq_485

    opt_487 ::= select_ | $empty

    seq_488 ::= COMMA variable_lvalue

    list_489 ::= $empty | list_489 seq_488

    opt_490 ::= size | $empty

    opt_491 ::= size | $empty

    opt_492 ::= size | $empty

    opt_493 ::= size | $empty

    seq_494 ::= COMMA attr_spec

    list_495 ::= $empty | list_495 seq_494

    seq_496 ::= EQ constant_expression

    opt_497 ::= seq_496 | $empty

    list_498 ::= $empty | list_498 hier_ref

    opt_499 ::= const_bit_select | $empty

%End
