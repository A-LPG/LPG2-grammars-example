-- AUTO-GENERATED from antlr/grammars-v4 asm/ptx/ptx-isa-2.1 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=AsmPtxPtxIsa21Parser
%options package=lpg.grammars.asm.ptx.ptx_isa_2_1
%options template=dtParserTemplateF.gi
%options import_terminals=AsmPtxPtxIsa21Lexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    prog
%End

%Rules
    prog ::= version target opt_1 list_2

    version ::= K_VERSION float_

    target ::= K_TARGET target_list

    address_size ::= K_ADDRESS_SIZE integer

    target_list ::= T_WORD list_4

    statement ::= label_decl
           | semicolon_terminated_statement
           | unterminated_statement

    label_decl ::= T_WORD T_COLON

    semicolon_terminated_statement ::= grp_5 T_SEMICOLON
           | pragma

    unterminated_statement ::= unterminated_directive

    semicolon_terminated_directive ::= control_flow_directive
           | identifier_decl

    unterminated_directive ::= entry
           | func opt_6
           | debugging_directive
           | T_OC list_7 T_CC

    entry ::= entry_aux

    entry_aux ::= opt_9 K_ENTRY kernel_name opt_12 opt_13 entry_body

    kernel_name ::= T_WORD

    entry_param_list ::= entry_param list_15

    entry_param ::= entry_space opt_16 entry_param_type T_WORD opt_17

    entry_space ::= K_PARAM

    align ::= K_ALIGN byte_count

    texref ::= K_TEXREF

    byte_count ::= base_10_integer
           | base_8_integer
           | base_16_integer

    entry_param_type ::= fundamental_type
           | opaque_type

    entry_body ::= T_OC list_18 T_CC

    fundamental_type ::= fundamental_type_aux

    fundamental_type_aux ::= K_S8
           | K_S16
           | K_S32
           | K_S64
           | K_U8
           | K_U16
           | K_U32
           | K_U64
           | K_F16
           | K_F32
           | K_F64
           | K_B8
           | K_B16
           | K_B32
           | K_B64
           | K_PRED

    vector_type ::= vector_type_aux fundamental_type

    vector_type_aux ::= K_V4
           | K_V2

    opaque_type ::= opaque_type_aux

    opaque_type_aux ::= K_TEXREF
           | K_SAMPLERREF
           | K_SURFREF

    func ::= func_aux

    func_aux ::= opt_20 K_FUNC opt_23 func_name opt_26 opt_27

    func_name ::= T_WORD

    func_ret_list ::= func_ret list_29

    func_ret ::= func_ret_space opt_30 func_ret_type T_WORD opt_31

    func_ret_space ::= K_PARAM
           | K_REG

    func_ret_type ::= fundamental_type

    func_param_list ::= func_param list_33 opt_34

    func_param ::= func_param_space opt_35 func_param_type T_WORD opt_36

    func_param_space ::= K_PARAM
           | K_REG

    func_param_type ::= fundamental_type

    func_body ::= T_OC list_37 T_CC

    control_flow_directive ::= branch_targets
           | call_prototype
           | call_targets

    branch_targets ::= label_decl K_BRANCHTARGETS list_of_labels T_SEMICOLON

    list_of_labels ::= opr list_39

    call_targets ::= label_decl K_CALLTARGETS list_of_labels

    call_prototype ::= label_decl K_CALLPROTOTYPE opt_42 T_UNDERSCORE opt_45

    call_param_list ::= call_param list_47

    call_param ::= call_param_space opt_48 call_param_type T_UNDERSCORE opt_49

    call_param_space ::= K_PARAM
           | K_REG

    call_param_type ::= fundamental_type

    performance_tuning_directives ::= list_50

    performance_tuning_directive ::= maxnreg
           | maxntid
           | reqntid
           | minnctapersm
           | maxnctapersm
           | pragma

    maxnreg ::= K_MAXNREG integer

    maxntid ::= K_MAXNTID integer opt_54

    reqntid ::= K_REQNTID integer opt_58

    minnctapersm ::= K_MINNCTAPERSM integer

    maxnctapersm ::= K_MINNCTAPERSM integer

    pragma ::= K_PRAGMA list_of_strings T_SEMICOLON

    list_of_strings ::= K_NOUNROLL

    debugging_directive ::= dwarf
           | file
           | section
           | loc

    dwarf ::= K_DWARF

    file ::= K_FILE integer T_STRING list_60

    section ::= K_SECTION section_name T_OC list_61 T_CC

    section_name ::= T_WORD
           | U_DEBUG_ABBREV
           | U_DEBUG_INFO
           | U_DEBUG_LINE
           | seq_64
           | U_DEBUG_PUBNAMES
           | U_DEBUG_RANGES

    data_declarator_list ::= type grp_65

    loc ::= K_LOC integer integer integer

    linking_directive ::= extern_
           | visible

    extern_ ::= K_EXTERN identifier_decl

    visible ::= K_VISIBLE identifier_decl

    identifier_decl ::= identifier_decl_aux

    identifier_decl_aux ::= grp_69 opt_70 opt_71 opt_72 grp_73 opt_75

    variable_declarator_list_ ::= type grp_76 list_79

    variable_declarator ::= id_or_opcode opt_81

    array_spec ::= array_spec_aux

    array_spec_aux ::= list_84

    parameterized_register_spec ::= T_LT integer opt_85

    id_or_opcode ::= T_WORD
           | opcode

    opcode ::= KI_ABS
           | KI_ADD
           | KI_ADDC
           | KI_AND
           | KI_ATOM
           | KI_BAR
           | KI_BFE
           | KI_BFI
           | KI_BFIND
           | KI_BRA
           | KI_BREV
           | KI_BRKPT
           | KI_CALL
           | KI_CLZ
           | KI_CNOT
           | KI_COPYSIGN
           | KI_COS
           | KI_CVT
           | KI_CVTA
           | KI_DIV
           | KI_EX2
           | KI_EXIT
           | KI_FMA
           | KI_ISSPACEP
           | KI_LD
           | KI_LDU
           | KI_LG2
           | KI_MAD
           | KI_MAD24
           | KI_MAX
           | KI_MEMBAR
           | KI_MIN
           | KI_MOV
           | KI_MUL
           | KI_MUL24
           | KI_NEG
           | KI_NOT
           | KI_OR
           | KI_PMEVENT
           | KI_POPC
           | KI_PREFETCH
           | KI_PREFETCHU
           | KI_PRMT
           | KI_RCP
           | KI_RED
           | KI_REM
           | KI_RET
           | KI_RSQRT
           | KI_SAD
           | KI_SELP
           | KI_SET
           | KI_SETP
           | KI_SHL
           | KI_SHR
           | KI_SIN
           | KI_SLCT
           | KI_SQRT
           | KI_ST
           | KI_SUB
           | KI_SUBC
           | KI_SULD
           | KI_SURED
           | KI_SUST
           | KI_SUQ
           | KI_TESTP
           | KI_TEX
           | KI_TXQ
           | KI_TRAP
           | KI_VABSDIFF
           | KI_VADD
           | KI_VMAD
           | KI_VMAX
           | KI_VMIN
           | KI_VSET
           | KI_VSHL
           | KI_VSHR
           | KI_VSUB
           | KI_VOTE
           | KI_XOR

    variable_declarator_with_initializer ::= variable_declarator equal_initializer

    equal_initializer ::= T_EQ variable_initializer

    variable_initializer ::= grp_86

    aggregate_initializer ::= T_OC opt_90 T_CC

    type ::= fundamental_type
           | vector_type
           | opaque_type

    id ::= opr
           | array_spec

    state_space_specifier ::= state_space_specifier_aux

    state_space_specifier_aux ::= align
           | local
           | param
           | reg
           | shared
           | sreg
           | tex

    global_space_specifier ::= global

    const_space_specifier ::= const_

    const_ ::= K_CONST

    global ::= K_GLOBAL

    local ::= K_LOCAL

    param ::= K_PARAM

    reg ::= K_REG

    shared ::= K_SHARED

    sreg ::= K_SREG

    tex ::= K_TEX

    instruction ::= instruction_aux

    instruction_aux ::= opt_91 grp_92

    predicate ::= T_AT opt_93 T_WORD

    i_abs ::= KI_ABS i_abs_type i_abs_opr

    i_abs_type ::= grp_94

    i_abs_opr ::= seq_98

    i_add ::= KI_ADD i_add_type i_add_opr

    i_add_type ::= grp_99

    i_add_opr ::= opr_register T_COMMA opr_register_or_constant2

    i_addc ::= KI_ADDC i_addc_type i_addc_opr

    i_addc_type ::= grp_114

    i_addc_opr ::= opr_register T_COMMA opr_register_or_constant2

    i_and ::= KI_AND i_and_type i_and_opr

    i_and_type ::= grp_118

    i_and_opr ::= opr3

    i_atom ::= KI_ATOM i_atom_type i_atom_opr

    i_atom_type ::= grp_119

    i_atom_opr ::= opr T_COMMA T_OB opr T_CB T_COMMA opr opt_126

    i_bar ::= i_bar1
           | i_bar2
           | i_bar3
           | i_bar4

    i_bar1 ::= KI_BAR i_bar1_type i_bar1_opr

    i_bar1_type ::= K_SYNC

    i_bar1_opr ::= opr opt_128

    i_bar2 ::= KI_BAR i_bar2_type i_bar2_opr

    i_bar2_type ::= K_ARRIVE

    i_bar2_opr ::= opr2

    i_bar3 ::= KI_BAR i_bar3_type i_bar3_opr

    i_bar3_type ::= seq_129

    i_bar3_opr ::= opr T_COMMA opr opt_131 T_COMMA opt_132 opr

    i_bar4 ::= KI_BAR i_bar4_type i_bar4_opr

    i_bar4_type ::= grp_133

    i_bar4_opr ::= opr T_COMMA opr opt_136 T_COMMA opt_137 opr

    i_bfe ::= KI_BFE i_bfe_type i_bfe_opr

    i_bfe_type ::= grp_138

    i_bfe_opr ::= opr_register T_COMMA opr_register_or_constant3

    i_bfi ::= KI_BFI i_bfi_type i_bfi_opr

    i_bfi_type ::= grp_139

    i_bfi_opr ::= opr_register T_COMMA opr_register_or_constant4

    i_bfind ::= KI_BFIND i_bfind_type i_bfind_opr

    i_bfind_type ::= opt_140 grp_141

    i_bfind_opr ::= opr_register T_COMMA opr_register_or_constant

    i_bra ::= KI_BRA i_bra_type i_bra_opr

    i_bra_type ::= K_UNI | $empty

    i_bra_opr ::= grp_142

    i_brev ::= KI_BREV i_brev_type i_brev_opr

    i_brev_type ::= grp_143

    i_brev_opr ::= opr_register T_COMMA opr_register_or_constant

    i_brkpt ::= KI_BRKPT

    i_call ::= KI_CALL i_call_type opt_147 func_name opt_151 opt_153

    i_call_type ::= K_UNI | $empty

    flist ::= T_WORD

    fproto ::= T_WORD

    i_clz ::= KI_CLZ i_clz_type i_clz_opr

    i_clz_type ::= grp_154

    i_clz_opr ::= opr_register T_COMMA opr_register_or_constant

    i_cnot ::= KI_CNOT i_cnot_type i_cnot_opr

    i_cnot_type ::= grp_155

    i_cnot_opr ::= opr2

    i_copysign ::= KI_COPYSIGN i_copysign_type i_copysign_opr

    i_copysign_type ::= grp_156

    i_copysign_opr ::= opr_register T_COMMA opr_register T_COMMA opr_register

    i_cos ::= KI_COS i_cos_type i_cos_opr

    i_cos_type ::= K_APPROX opt_157 K_F32

    i_cos_opr ::= opr2

    i_cvt ::= KI_CVT i_cvt_type i_cvt_opr

    i_cvt_type ::= grp_158

    i_cvt_irnd ::= i_cvt_irnd_aux

    i_cvt_irnd_aux ::= grp_168

    i_cvt_frnd ::= i_cvt_frnd_aux

    i_cvt_frnd_aux ::= grp_169

    i_cvt_opr ::= opr2

    i_cvta ::= KI_CVTA i_cvta_type i_cvta_opr

    i_cvta_type ::= opt_170 grp_171 grp_172

    i_cvta_opr ::= opr T_COMMA opr opt_174

    i_div ::= KI_DIV i_div_type i_div_opr

    i_div_type ::= grp_175

    i_div_opr ::= opr_register T_COMMA opr_register_or_constant2

    i_ex2 ::= KI_EX2 i_ex2_type i_ex2_opr

    i_ex2_type ::= K_APPROX opt_186 K_F32

    i_ex2_opr ::= opr2

    i_exit ::= KI_EXIT

    i_fma ::= KI_FMA i_fma_type i_fma_opr

    i_fma_type ::= grp_187 opt_188 opt_189 K_F32

    i_fma_opr ::= opr4

    i_isspacep ::= KI_ISSPACEP i_isspacep_type i_isspacep_opr

    i_isspacep_type ::= grp_190

    i_isspacep_opr ::= opr2

    i_ld ::= KI_LD i_ld_type i_ld_opr

    i_ld_type ::= grp_191

    i_ld_opr ::= opr T_COMMA T_OB opr T_CB

    i_ldu ::= KI_LDU i_ldu_type i_ldu_opr

    i_ldu_type ::= grp_214

    i_ldu_opr ::= opr T_COMMA T_OB opr T_CB

    i_lg2 ::= KI_LG2 i_lg2_type i_lg2_opr

    i_lg2_type ::= K_APPROX opt_222 K_F32

    i_lg2_opr ::= opr2

    i_mad ::= KI_MAD i_mad_type i_mad_opr

    i_mad_type ::= grp_223

    i_mad_opr ::= opr_register T_COMMA opr_register_or_constant3

    i_mad24 ::= KI_MAD24 i_mad24_type i_mad24_opr

    i_mad24_type ::= grp_237

    i_mad24_opr ::= opr_register T_COMMA opr_register_or_constant3

    i_max ::= KI_MAX i_max_type i_max_opr

    i_max_type ::= grp_242

    i_max_opr ::= opr_register T_COMMA opr_register_or_constant2

    i_membar ::= KI_MEMBAR i_membar_type

    i_membar_type ::= grp_246

    i_min ::= KI_MIN i_min_type i_min_opr

    i_min_type ::= grp_247

    i_min_opr ::= opr_register T_COMMA opr_register_or_constant2

    i_mov ::= KI_MOV i_mov_type i_mov_opr

    i_mov_type ::= grp_251

    i_mov_opr ::= opr2

    i_mul ::= KI_MUL i_mul_type i_mul_opr

    i_mul_type ::= grp_252

    i_mul_opr ::= opr_register T_COMMA opr_register_or_constant2

    i_mul24 ::= KI_MUL24 i_mul24_type i_mul24_opr

    i_mul24_type ::= grp_265

    i_mul24_opr ::= opr_register T_COMMA opr_register_or_constant2

    i_neg ::= KI_NEG i_neg_type i_neg_opr

    i_neg_type ::= grp_268

    i_neg_opr ::= opr_register T_COMMA opr_register_or_constant

    i_not ::= KI_NOT i_not_type i_not_opr

    i_not_type ::= grp_272

    i_not_opr ::= opr2

    i_or ::= KI_OR i_or_type i_or_opr

    i_or_type ::= grp_273

    i_or_opr ::= opr3

    i_pmevent ::= KI_PMEVENT i_pmevent_opr

    i_pmevent_opr ::= opr

    i_popc ::= KI_POPC i_popc_type i_popc_opr

    i_popc_type ::= grp_274

    i_popc_opr ::= opr_register T_COMMA opr_register_or_constant

    i_prefetch ::= KI_PREFETCH i_prefetch_type i_prefetch_opr

    i_prefetch_type ::= grp_275

    i_prefetch_opr ::= T_OB opr T_CB

    i_prefetchu ::= KI_PREFETCHU i_prefetchu_type i_prefetchu_opr

    i_prefetchu_type ::= K_L1

    i_prefetchu_opr ::= T_OB opr T_CB

    i_prmt ::= KI_PRMT i_prmt_type i_prmt_opr

    i_prmt_type ::= K_B32 opt_281

    i_prmt_opr ::= opr_register T_COMMA opr_register T_COMMA opr_register T_COMMA opr_register

    i_rcp ::= KI_RCP i_rcp_type i_rcp_opr

    i_rcp_type ::= grp_282

    i_rcp_opr ::= opr2

    i_red ::= KI_RED i_red_type i_red_opr

    i_red_type ::= opt_293 grp_294 grp_295

    i_red_opr ::= T_OB opr T_CB T_COMMA opr

    i_rem ::= KI_REM i_rem_type i_rem_opr

    i_rem_type ::= grp_296

    i_rem_opr ::= opr_register T_COMMA opr_register_or_constant2

    i_ret ::= KI_RET i_ret_type

    i_ret_type ::= K_UNI | $empty

    i_rsqrt ::= KI_RSQRT i_rsqrt_type i_rsqrt_opr

    i_rsqrt_type ::= grp_297

    i_rsqrt_opr ::= opr2

    i_sad ::= KI_SAD i_sad_type i_sad_opr

    i_sad_type ::= grp_301

    i_sad_opr ::= opr_register T_COMMA opr_register_or_constant3

    i_selp ::= KI_SELP i_selp_type i_selp_opr

    i_selp_type ::= grp_302

    i_selp_opr ::= opr4

    i_set ::= i_set1
           | i_set2

    i_set1 ::= KI_SET i_set1_type i_set1_opr

    i_set1_type ::= grp_303

    i_set1_opr ::= opr3

    i_set2 ::= KI_SET i_set2_type i_set2_opr

    i_set2_type ::= grp_309

    i_set2_opr ::= opr T_COMMA opr T_COMMA opr T_COMMA opt_316 opr

    i_setp ::= i_setp1
           | i_setp2

    i_setp1 ::= KI_SETP i_setp1_type i_setp1_opr

    i_setp1_type ::= grp_317

    i_setp1_opr ::= opr3

    i_setp2 ::= KI_SETP i_setp2_type i_setp2_opr

    i_setp2_type ::= grp_322

    i_setp2_opr ::= opr T_COMMA opr T_COMMA opr T_COMMA opt_328 opr

    i_shl ::= KI_SHL i_shl_type i_shl_opr

    i_shl_type ::= grp_329

    i_shl_opr ::= opr3

    i_shr ::= KI_SHR i_shr_type i_shr_opr

    i_shr_type ::= grp_330

    i_shr_opr ::= opr3

    i_sin ::= KI_SIN i_sin_type i_sin_opr

    i_sin_type ::= K_APPROX opt_331 K_F32

    i_sin_opr ::= opr2

    i_slct ::= KI_SLCT i_slct_type i_slct_opr

    i_slct_type ::= grp_332

    i_slct_opr ::= opr4

    i_sqrt ::= KI_SQRT i_sqrt_type i_sqrt_opr

    i_sqrt_type ::= grp_338

    i_sqrt_opr ::= opr2

    i_st ::= KI_ST i_st_type i_st_opr

    i_st_type ::= grp_346

    i_st_opr ::= T_OB opr T_CB T_COMMA opr

    i_sub ::= KI_SUB i_sub_type i_sub_opr

    i_sub_type ::= grp_364

    i_sub_opr ::= opr_register T_COMMA opr_register_or_constant2

    i_subc ::= KI_SUBC i_subc_type i_subc_opr

    i_subc_type ::= grp_379

    i_subc_opr ::= opr_register T_COMMA opr_register_or_constant2

    i_suld ::= KI_SULD i_suld_type i_suld_opr

    i_suld_type ::= grp_385

    i_suld_opr ::= opr T_COMMA T_OB opr T_COMMA opr T_CB

    i_sured ::= KI_SURED i_sured_type i_sured_opr

    i_sured_type ::= grp_402

    i_sured_opr ::= T_OB opr T_COMMA opr T_CB T_COMMA opr

    i_sust ::= KI_SUST i_sust_type i_sust_opr

    i_sust_type ::= grp_419

    i_sust_opr ::= T_OB opr T_COMMA opr T_CB T_COMMA opr

    i_suq ::= KI_SUQ i_suq_type i_suq_opr

    i_suq_type ::= grp_436 K_B32

    i_suq_opr ::= opr T_COMMA T_OB opr T_CB

    i_testp ::= KI_TESTP i_testp_type i_testp_opr

    i_testp_type ::= grp_437 grp_438

    i_testp_opr ::= opr_register T_COMMA opr_register

    i_tex ::= KI_TEX i_tex_type i_tex_opr

    i_tex_type ::= grp_439

    i_tex_opr ::= opr T_COMMA T_OB opr T_COMMA opr opt_445 T_CB

    i_txq ::= KI_TXQ i_txq_type i_txq_opr

    i_txq_type ::= grp_446 K_B32

    i_txq_opr ::= opr T_COMMA T_OB opr T_CB

    i_trap ::= KI_TRAP

    i_vabsdiff ::= KI_VABSDIFF

    i_vadd ::= KI_VADD

    i_vmad ::= KI_VMAD

    i_vmax ::= KI_VMAX

    i_vmin ::= KI_VMIN

    i_vset ::= KI_VSET

    i_vshl ::= KI_VSHL

    i_vshr ::= KI_VSHR

    i_vsub ::= KI_VSUB

    i_vote ::= KI_VOTE i_vote_type i_vote_opr

    i_vote_type ::= grp_451

    i_vote_opr ::= opr T_COMMA opt_455 opr

    i_xor ::= KI_XOR i_xor_type i_xor_opr

    i_xor_type ::= grp_456

    i_xor_opr ::= opr3

    opr_register ::= id_or_opcode

    opr_register_or_constant ::= id_or_opcode
           | constant_expression

    opr_register_or_constant2 ::= opr_register_or_constant T_COMMA opr_register_or_constant

    opr_register_or_constant3 ::= opr_register_or_constant T_COMMA opr_register_or_constant T_COMMA opr_register_or_constant

    opr_register_or_constant4 ::= opr_register_or_constant T_COMMA opr_register_or_constant T_COMMA opr_register_or_constant T_COMMA opr_register_or_constant

    opr_register_or_constant5 ::= opr_register_or_constant T_COMMA opr_register_or_constant T_COMMA opr_register_or_constant T_COMMA opr_register_or_constant T_COMMA opr_register_or_constant

    opr_label ::= T_WORD

    opr ::= opr_aux

    opr_aux ::= grp_457

    opr2 ::= opr T_COMMA opr

    opr3 ::= opr T_COMMA opr T_COMMA opr

    opr4 ::= opr T_COMMA opr T_COMMA opr T_COMMA opr

    opr5 ::= opr T_COMMA opr T_COMMA opr T_COMMA opr T_COMMA opr

    constant_expression ::= constant_expression_aux

    constant_expression_aux ::= conditional_expression

    conditional_expression ::= conditional_or_expression opt_472

    conditional_or_expression ::= conditional_and_expression list_474

    conditional_and_expression ::= inclusive_or_expression list_476

    inclusive_or_expression ::= exclusive_or_expression list_478

    exclusive_or_expression ::= and_expression list_480

    and_expression ::= equality_expression list_482

    equality_expression ::= relational_expression list_485

    relational_expression ::= shift_expression list_487

    relational_op ::= T_LE
           | T_GE
           | T_LT
           | T_GT

    shift_expression ::= additive_expression list_489

    shift_op ::= T_LTLT
           | T_GTGT

    additive_expression ::= multiplicative_expression list_492

    multiplicative_expression ::= unary_expression list_495

    unary_expression ::= T_PLUS unary_expression
           | T_MINUS unary_expression
           | unary_expression_not_plus_minus

    unary_expression_not_plus_minus ::= T_TILDE unary_expression
           | T_NOT unary_expression
           | cast_expression
           | primary

    cast_expression ::= cast_expression_aux

    cast_expression_aux ::= T_OP grp_496 T_CP unary_expression

    primary ::= par_expression
           | integer
           | float_

    par_expression ::= T_OP constant_expression_aux T_CP

    integer ::= base_10_integer
           | base_8_integer
           | base_16_integer

    float_ ::= T_FLT_LITERAL

    base_10_integer ::= T_DEC_LITERAL

    base_8_integer ::= T_OCT_LITERAL

    base_16_integer ::= T_HEX_LITERAL

    opt_1 ::= address_size | $empty

    list_2 ::= statement | list_2 statement

    seq_3 ::= T_COMMA T_WORD

    list_4 ::= $empty | list_4 seq_3

    grp_5 ::= semicolon_terminated_directive | instruction | linking_directive

    opt_6 ::= T_SEMICOLON | $empty

    list_7 ::= statement | list_7 statement

    grp_8 ::= K_VISIBLE | K_EXTERN

    opt_9 ::= grp_8 | $empty

    opt_10 ::= entry_param_list | $empty

    seq_11 ::= T_OP opt_10 T_CP

    opt_12 ::= seq_11 | $empty

    opt_13 ::= performance_tuning_directives | $empty

    seq_14 ::= T_COMMA entry_param

    list_15 ::= $empty | list_15 seq_14

    opt_16 ::= align | $empty

    opt_17 ::= array_spec | $empty

    list_18 ::= $empty | list_18 statement

    grp_19 ::= K_VISIBLE | K_EXTERN

    opt_20 ::= grp_19 | $empty

    opt_21 ::= func_ret_list | $empty

    seq_22 ::= T_OP opt_21 T_CP

    opt_23 ::= seq_22 | $empty

    opt_24 ::= func_param_list | $empty

    seq_25 ::= T_OP opt_24 T_CP

    opt_26 ::= seq_25 | $empty

    opt_27 ::= func_body | $empty

    seq_28 ::= T_COMMA func_ret

    list_29 ::= $empty | list_29 seq_28

    opt_30 ::= align | $empty

    opt_31 ::= array_spec | $empty

    seq_32 ::= T_COMMA func_param

    list_33 ::= $empty | list_33 seq_32

    opt_34 ::= T_ELLIPSIS | $empty

    opt_35 ::= align | $empty

    opt_36 ::= array_spec | $empty

    list_37 ::= $empty | list_37 statement

    seq_38 ::= T_COMMA opr

    list_39 ::= $empty | list_39 seq_38

    opt_40 ::= call_param_list | $empty

    seq_41 ::= T_OP opt_40 T_CP

    opt_42 ::= seq_41 | $empty

    opt_43 ::= call_param_list | $empty

    seq_44 ::= T_OP opt_43 T_CP

    opt_45 ::= seq_44 | $empty

    seq_46 ::= T_COMMA call_param

    list_47 ::= $empty | list_47 seq_46

    opt_48 ::= align | $empty

    opt_49 ::= array_spec | $empty

    list_50 ::= performance_tuning_directive | list_50 performance_tuning_directive

    seq_51 ::= T_COMMA integer

    opt_52 ::= seq_51 | $empty

    seq_53 ::= T_COMMA integer opt_52

    opt_54 ::= seq_53 | $empty

    seq_55 ::= T_COMMA integer

    opt_56 ::= seq_55 | $empty

    seq_57 ::= T_COMMA integer opt_56

    opt_58 ::= seq_57 | $empty

    seq_59 ::= T_COMMA integer

    list_60 ::= $empty | list_60 seq_59

    list_61 ::= $empty | list_61 data_declarator_list

    seq_62 ::= T_PLUS integer

    opt_63 ::= seq_62 | $empty

    seq_64 ::= U_DEBUG_LOC opt_63

    seq_66 ::= T_PLUS integer

    opt_67 ::= seq_66 | $empty

    seq_68 ::= U_DEBUG_LOC opt_67

    grp_65 ::= integer | T_WORD | U_DEBUG_ABBREV | U_DEBUG_INFO | U_DEBUG_LINE | seq_68 | U_DEBUG_PUBNAMES | U_DEBUG_RANGES

    grp_69 ::= state_space_specifier | global_space_specifier | const_space_specifier

    opt_70 ::= align | $empty

    opt_71 ::= type | $empty

    opt_72 ::= texref | $empty

    list_74 ::= variable_declarator | list_74 variable_declarator

    grp_73 ::= variable_declarator_list_ | list_74

    opt_75 ::= T_SEMICOLON | $empty

    grp_76 ::= variable_declarator | variable_declarator_with_initializer

    grp_78 ::= variable_declarator | variable_declarator_with_initializer

    grp_77 ::= T_COMMA grp_78

    list_79 ::= $empty | list_79 grp_77

    grp_80 ::= array_spec | parameterized_register_spec

    opt_81 ::= grp_80 | $empty

    opt_82 ::= integer | $empty

    seq_83 ::= T_OB opt_82 T_CB

    list_84 ::= seq_83 | list_84 seq_83

    opt_85 ::= T_GT | $empty

    grp_86 ::= aggregate_initializer | constant_expression | id_or_opcode

    seq_87 ::= T_COMMA variable_initializer

    list_88 ::= $empty | list_88 seq_87

    seq_89 ::= variable_initializer list_88

    opt_90 ::= seq_89 | $empty

    opt_91 ::= predicate | $empty

    grp_92 ::= i_abs | i_add | i_addc | i_and | i_atom | i_bar | i_bfe | i_bfi | i_bfind | i_bra | i_brev | i_brkpt | i_call | i_clz | i_cnot | i_copysign | i_cos | i_cvt | i_cvta | i_div | i_ex2 | i_exit | i_fma | i_isspacep | i_ld | i_ldu | i_lg2 | i_mad | i_mad24 | i_max | i_membar | i_min | i_mov | i_mul | i_mul24 | i_neg | i_not | i_or | i_pmevent | i_popc | i_prefetch | i_prefetchu | i_prmt | i_rcp | i_red | i_rem | i_ret | i_rsqrt | i_sad | i_selp | i_set | i_setp | i_shl | i_shr | i_sin | i_slct | i_sqrt | i_st | i_sub | i_subc | i_suld | i_sured | i_sust | i_suq | i_testp | i_tex | i_txq | i_trap | i_vabsdiff | i_vadd | i_vmad | i_vmax | i_vmin | i_vset | i_vshl | i_vshr | i_vsub | i_vote | i_xor

    opt_93 ::= T_NOT | $empty

    grp_95 ::= K_S16 | K_S32 | K_S64

    opt_96 ::= K_FTZ | $empty

    seq_97 ::= opt_96 K_F32

    grp_94 ::= grp_95 | seq_97 | K_F64

    seq_98 ::= opr_register T_COMMA opr_register_or_constant

    seq_102 ::= K_SAT K_S32

    grp_103 ::= K_U16 | K_U32 | K_U64 | K_S16 | K_S32 | K_S64

    grp_101 ::= seq_102 | grp_103

    grp_105 ::= K_S32 | K_U32

    grp_104 ::= K_CC grp_105

    grp_100 ::= grp_101 | grp_104

    grp_107 ::= K_RN | K_RZ | K_RM | K_RP

    opt_108 ::= grp_107 | $empty

    opt_109 ::= K_FTZ | $empty

    opt_110 ::= K_SAT | $empty

    grp_106 ::= opt_108 opt_109 opt_110 K_F32

    grp_112 ::= K_RN | K_RZ | K_RM | K_RP

    opt_113 ::= grp_112 | $empty

    grp_111 ::= opt_113 K_F64

    grp_99 ::= grp_100 | grp_106 | grp_111

    opt_116 ::= K_CC | $empty

    grp_117 ::= K_S32 | K_U32 | K_S16 | K_U16 | K_U64

    grp_115 ::= opt_116 grp_117

    grp_114 ::= grp_115

    grp_118 ::= K_PRED | K_B16 | K_B32 | K_B64

    grp_121 ::= K_GLOBAL | K_SHARED

    opt_122 ::= grp_121 | $empty

    grp_123 ::= K_AND | K_OR | K_XOR | K_CAS | K_EXCH | K_ADD | K_INC | K_DEC | K_MIN | K_MAX

    grp_124 ::= K_B32 | K_B64 | K_U32 | K_U64 | K_S32 | K_F32

    grp_120 ::= opt_122 grp_123 grp_124

    grp_119 ::= grp_120

    seq_125 ::= T_COMMA opr

    opt_126 ::= seq_125 | $empty

    seq_127 ::= T_COMMA opr

    opt_128 ::= seq_127 | $empty

    seq_129 ::= K_RED K_POPC K_U32

    seq_130 ::= T_COMMA opr

    opt_131 ::= seq_130 | $empty

    opt_132 ::= T_NOT | $empty

    grp_134 ::= K_AND | K_OR

    grp_133 ::= K_RED grp_134 K_PRED

    seq_135 ::= T_COMMA opr

    opt_136 ::= seq_135 | $empty

    opt_137 ::= T_NOT | $empty

    grp_138 ::= K_S32 | K_U32 | K_S64 | K_U64

    grp_139 ::= K_B32 | K_B64

    opt_140 ::= K_SHIFTAMT | $empty

    grp_141 ::= K_S32 | K_U32 | K_S64 | K_U64

    grp_142 ::= opr_label | opr_register T_COMMA opr_label

    grp_143 ::= K_B32 | K_B64

    seq_144 ::= T_COMMA opr

    list_145 ::= $empty | list_145 seq_144

    seq_146 ::= T_OP opr list_145 T_CP T_COMMA

    opt_147 ::= seq_146 | $empty

    seq_148 ::= T_COMMA opr

    list_149 ::= $empty | list_149 seq_148

    seq_150 ::= T_COMMA T_OP opr list_149 T_CP

    opt_151 ::= seq_150 | $empty

    grp_152 ::= T_COMMA flist | T_COMMA fproto

    opt_153 ::= grp_152 | $empty

    grp_154 ::= K_B32 | K_B64

    grp_155 ::= K_B16 | K_B32 | K_B64

    grp_156 ::= K_F32 | K_F64

    opt_157 ::= K_FTZ | $empty

    grp_160 ::= i_cvt_irnd | i_cvt_frnd

    opt_161 ::= K_FTZ | $empty

    opt_162 ::= K_SAT | $empty

    grp_163 ::= K_U8 | K_U16 | K_U32 | K_U64 | K_S8 | K_S16 | K_S32 | K_S64 | K_F16 | K_F32 | K_F64

    grp_164 ::= K_U8 | K_U16 | K_U32 | K_U64 | K_S8 | K_S16 | K_S32 | K_S64 | K_F16 | K_F32 | K_F64

    grp_165 ::= i_cvt_irnd | i_cvt_frnd

    opt_166 ::= K_FTZ | $empty

    opt_167 ::= K_SAT | $empty

    grp_159 ::= grp_160 opt_161 opt_162 grp_163 grp_164 grp_165 opt_166 opt_167

    grp_158 ::= grp_159

    grp_168 ::= K_RNI | K_RZI | K_RMI | K_RPI

    grp_169 ::= K_RN | K_RZ | K_RM | K_RP

    opt_170 ::= K_TO | $empty

    grp_171 ::= K_GLOBAL | K_LOCAL | K_SHARED | K_CONST

    grp_172 ::= K_U32 | K_U64

    seq_173 ::= T_PLUS integer

    opt_174 ::= seq_173 | $empty

    grp_176 ::= K_U16 | K_U32 | K_U64 | K_S16 | K_S32 | K_S64

    opt_177 ::= K_FTZ | $empty

    seq_178 ::= K_APPROX opt_177 K_F32

    opt_179 ::= K_FTZ | $empty

    seq_180 ::= K_FULL opt_179 K_F32

    grp_182 ::= K_RN | K_RZ | K_RM | K_RP

    opt_183 ::= K_FTZ | $empty

    grp_181 ::= grp_182 opt_183 K_F32

    grp_185 ::= K_RN | K_RZ | K_RM | K_RP

    grp_184 ::= grp_185 K_F64

    grp_175 ::= grp_176 | seq_178 | seq_180 | grp_181 | grp_184

    opt_186 ::= K_FTZ | $empty

    grp_187 ::= K_RN | K_RZ | K_RM | K_RP

    opt_188 ::= K_FTZ | $empty

    opt_189 ::= K_SAT | $empty

    grp_190 ::= K_GLOBAL | K_LOCAL | K_SHARED

    grp_193 ::= K_CONST | K_GLOBAL | K_LOCAL | K_PARAM | K_SHARED

    opt_194 ::= grp_193 | $empty

    grp_195 ::= K_CA | K_CG | K_CS | K_LU | K_CV

    opt_196 ::= grp_195 | $empty

    grp_197 ::= K_B8 | K_B16 | K_B32 | K_B64 | K_U8 | K_U16 | K_U32 | K_U64 | K_S8 | K_S16 | K_S32 | K_S64 | K_F32 | K_F64

    grp_192 ::= opt_194 opt_196 grp_197

    grp_199 ::= K_CONST | K_GLOBAL | K_LOCAL | K_PARAM | K_SHARED

    opt_200 ::= grp_199 | $empty

    grp_201 ::= K_CA | K_CG | K_CS | K_LU | K_CV

    opt_202 ::= grp_201 | $empty

    grp_203 ::= K_V2 | K_V4

    grp_204 ::= K_B8 | K_B16 | K_B32 | K_B64 | K_U8 | K_U16 | K_U32 | K_U64 | K_S8 | K_S16 | K_S32 | K_S64 | K_F32 | K_F64

    grp_198 ::= opt_200 opt_202 grp_203 grp_204

    grp_206 ::= K_CONST | K_GLOBAL | K_LOCAL | K_PARAM | K_SHARED

    opt_207 ::= grp_206 | $empty

    grp_208 ::= K_B8 | K_B16 | K_B32 | K_B64 | K_U8 | K_U16 | K_U32 | K_U64 | K_S8 | K_S16 | K_S32 | K_S64 | K_F32 | K_F64

    grp_205 ::= K_VOLATILE opt_207 grp_208

    grp_210 ::= K_CONST | K_GLOBAL | K_LOCAL | K_PARAM | K_SHARED

    opt_211 ::= grp_210 | $empty

    grp_212 ::= K_V2 | K_V4

    grp_213 ::= K_B8 | K_B16 | K_B32 | K_B64 | K_U8 | K_U16 | K_U32 | K_U64 | K_S8 | K_S16 | K_S32 | K_S64 | K_F32 | K_F64

    grp_209 ::= K_VOLATILE opt_211 grp_212 grp_213

    grp_191 ::= grp_192 | grp_198 | grp_205 | grp_209

    opt_216 ::= K_GLOBAL | $empty

    grp_217 ::= K_B8 | K_B16 | K_B32 | K_B64 | K_U8 | K_U16 | K_U32 | K_U64 | K_S8 | K_S16 | K_S32 | K_S64 | K_F32 | K_F64

    grp_215 ::= opt_216 grp_217

    opt_219 ::= K_GLOBAL | $empty

    grp_220 ::= K_V2 | K_V4

    grp_221 ::= K_B8 | K_B16 | K_B32 | K_B64 | K_U8 | K_U16 | K_U32 | K_U64 | K_S8 | K_S16 | K_S32 | K_S64 | K_F32 | K_F64

    grp_218 ::= opt_219 grp_220 grp_221

    grp_214 ::= grp_215 | grp_218

    opt_222 ::= K_FTZ | $empty

    grp_225 ::= K_HI | K_LO | K_WIDE

    grp_226 ::= K_U16 | K_U32 | K_U64 | K_S16 | K_S32 | K_S64

    grp_224 ::= grp_225 grp_226

    seq_227 ::= K_HI K_SAT K_S32

    opt_228 ::= K_FTZ | $empty

    opt_229 ::= K_SAT | $empty

    seq_230 ::= opt_228 opt_229 K_F32

    grp_232 ::= K_RN | K_RZ | K_RM | K_RP

    opt_233 ::= K_FTZ | $empty

    opt_234 ::= K_SAT | $empty

    grp_231 ::= grp_232 opt_233 opt_234 K_F32

    grp_236 ::= K_RN | K_RZ | K_RM | K_RP

    grp_235 ::= grp_236 K_F64

    grp_223 ::= grp_224 | seq_227 | seq_230 | grp_231 | grp_235

    grp_239 ::= K_HI | K_LO

    grp_240 ::= K_U32 | K_S32

    grp_238 ::= grp_239 grp_240

    seq_241 ::= K_HI K_SAT K_S32

    grp_237 ::= grp_238 | seq_241

    grp_243 ::= K_U16 | K_U32 | K_U64 | K_S16 | K_S32 | K_S64

    opt_244 ::= K_FTZ | $empty

    seq_245 ::= opt_244 K_F32

    grp_242 ::= grp_243 | seq_245 | K_F64

    grp_246 ::= K_CTA | K_GL | K_SYS

    grp_248 ::= K_U16 | K_U32 | K_U64 | K_S16 | K_S32 | K_S64

    opt_249 ::= K_FTZ | $empty

    seq_250 ::= opt_249 K_F32

    grp_247 ::= grp_248 | seq_250 | K_F64

    grp_251 ::= K_PRED | K_B16 | K_B32 | K_B64 | K_U16 | K_U32 | K_U64 | K_S16 | K_S32 | K_S64 | K_F32 | K_F64

    grp_254 ::= K_HI | K_LO | K_WIDE

    opt_255 ::= grp_254 | $empty

    grp_256 ::= K_U16 | K_U32 | K_U64 | K_S16 | K_S32 | K_S64

    grp_253 ::= opt_255 grp_256

    grp_258 ::= K_RN | K_RZ | K_RM | K_RP

    opt_259 ::= grp_258 | $empty

    opt_260 ::= K_FTZ | $empty

    opt_261 ::= K_SAT | $empty

    grp_257 ::= opt_259 opt_260 opt_261 K_F32

    grp_263 ::= K_RN | K_RZ | K_RM | K_RP

    opt_264 ::= grp_263 | $empty

    grp_262 ::= opt_264 K_F64

    grp_252 ::= grp_253 | grp_257 | grp_262

    grp_266 ::= K_HI | K_LO

    grp_267 ::= K_U32 | K_S32

    grp_265 ::= grp_266 grp_267

    grp_269 ::= K_S16 | K_S32 | K_S64

    opt_270 ::= K_FTZ | $empty

    seq_271 ::= opt_270 K_F32

    grp_268 ::= grp_269 | seq_271 | K_F64

    grp_272 ::= K_PRED | K_B16 | K_B32 | K_B64

    grp_273 ::= K_PRED | K_B16 | K_B32 | K_B64

    grp_274 ::= K_B32 | K_B64

    grp_277 ::= K_GLOBAL | K_LOCAL

    opt_278 ::= grp_277 | $empty

    grp_279 ::= K_L1 | K_L2

    grp_276 ::= opt_278 grp_279

    grp_275 ::= grp_276

    grp_280 ::= K_F4E | K_B4E | K_RC8 | K_ECL | K_ECR | K_RC16

    opt_281 ::= grp_280 | $empty

    opt_283 ::= K_FTZ | $empty

    opt_284 ::= K_FTZ | $empty

    seq_285 ::= K_APPROX opt_283 K_F32 opt_284

    grp_287 ::= K_RN | K_RZ | K_RM | K_RP

    opt_288 ::= K_FTZ | $empty

    grp_286 ::= grp_287 opt_288 K_F32

    grp_290 ::= K_RN | K_RZ | K_RM | K_RP

    grp_289 ::= grp_290 K_F64

    seq_291 ::= K_APPROX K_FTZ K_F64

    grp_282 ::= seq_285 | grp_286 | grp_289 | seq_291

    grp_292 ::= K_GLOBAL | K_SHARED

    opt_293 ::= grp_292 | $empty

    grp_294 ::= K_AND | K_OR | K_XOR | K_ADD | K_INC | K_DEC | K_MIN | K_MAX

    grp_295 ::= K_B32 | K_B64 | K_U32 | K_U64 | K_S32 | K_F32

    grp_296 ::= K_U16 | K_U32 | K_U64 | K_S16 | K_S32 | K_S64

    opt_298 ::= K_FTZ | $empty

    seq_299 ::= K_APPROX opt_298 K_F32

    seq_300 ::= K_APPROX K_F64

    grp_297 ::= seq_299 | seq_300

    grp_301 ::= K_U16 | K_U32 | K_U64 | K_S16 | K_S32 | K_S64

    grp_302 ::= K_B16 | K_B32 | K_B64 | K_U16 | K_U32 | K_U64 | K_S16 | K_S32 | K_S64 | K_F32 | K_F64

    grp_305 ::= K_EQ | K_NE | K_LT | K_LE | K_GT | K_GE | K_LO | K_LS | K_HI | K_HS | K_EQU | K_NEU | K_LTU | K_LEU | K_GTU | K_GEU | K_NUM | K_NAN

    opt_306 ::= K_FTZ | $empty

    grp_307 ::= K_U32 | K_S32 | K_F32

    grp_308 ::= K_B16 | K_B32 | K_B64 | K_U16 | K_U32 | K_U64 | K_S16 | K_S32 | K_S64 | K_F32 | K_F64

    grp_304 ::= grp_305 opt_306 grp_307 grp_308

    grp_303 ::= grp_304

    grp_311 ::= K_EQ | K_NE | K_LT | K_LE | K_GT | K_GE | K_LO | K_LS | K_HI | K_HS | K_EQU | K_NEU | K_LTU | K_LEU | K_GTU | K_GEU | K_NUM | K_NAN

    grp_312 ::= K_AND | K_OR | K_XOR

    opt_313 ::= K_FTZ | $empty

    grp_314 ::= K_U32 | K_S32 | K_F32

    grp_315 ::= K_B16 | K_B32 | K_B64 | K_U16 | K_U32 | K_U64 | K_S16 | K_S32 | K_S64 | K_F32 | K_F64

    grp_310 ::= grp_311 grp_312 opt_313 grp_314 grp_315

    grp_309 ::= grp_310

    opt_316 ::= T_NOT | $empty

    grp_319 ::= K_EQ | K_NE | K_LT | K_LE | K_GT | K_GE | K_LO | K_LS | K_HI | K_HS | K_EQU | K_NEU | K_LTU | K_LEU | K_GTU | K_GEU | K_NUM | K_NAN

    opt_320 ::= K_FTZ | $empty

    grp_321 ::= K_B16 | K_B32 | K_B64 | K_U16 | K_U32 | K_U64 | K_S16 | K_S32 | K_S64 | K_F32 | K_F64

    grp_318 ::= grp_319 opt_320 grp_321

    grp_317 ::= grp_318

    grp_324 ::= K_EQ | K_NE | K_LT | K_LE | K_GT | K_GE | K_LO | K_LS | K_HI | K_HS | K_EQU | K_NEU | K_LTU | K_LEU | K_GTU | K_GEU | K_NUM | K_NAN

    grp_325 ::= K_AND | K_OR | K_XOR

    opt_326 ::= K_FTZ | $empty

    grp_327 ::= K_B16 | K_B32 | K_B64 | K_U16 | K_U32 | K_U64 | K_S16 | K_S32 | K_S64 | K_F32 | K_F64

    grp_323 ::= grp_324 grp_325 opt_326 grp_327

    grp_322 ::= grp_323

    opt_328 ::= T_NOT | $empty

    grp_329 ::= K_B16 | K_B32 | K_B64

    grp_330 ::= K_B16 | K_B32 | K_B64 | K_U16 | K_U32 | K_U64 | K_S16 | K_S32 | K_S64

    opt_331 ::= K_FTZ | $empty

    grp_334 ::= K_B16 | K_B32 | K_B64 | K_U16 | K_U32 | K_U64 | K_S16 | K_S32 | K_S64 | K_F32 | K_F64

    grp_333 ::= grp_334 K_S32

    opt_336 ::= K_FTZ | $empty

    grp_337 ::= K_B16 | K_B32 | K_B64 | K_U16 | K_U32 | K_U64 | K_S16 | K_S32 | K_S64 | K_F32 | K_F64

    grp_335 ::= opt_336 grp_337 K_F32

    grp_332 ::= grp_333 | grp_335

    opt_339 ::= K_FTZ | $empty

    seq_340 ::= K_APPROX opt_339 K_F32

    grp_342 ::= K_RN | K_RZ | K_RM | K_RP

    opt_343 ::= K_FTZ | $empty

    grp_341 ::= grp_342 opt_343 K_F32

    grp_345 ::= K_RN | K_RZ | K_RM | K_RP

    grp_344 ::= grp_345 K_F64

    grp_338 ::= seq_340 | grp_341 | grp_344

    grp_348 ::= K_GLOBAL | K_LOCAL | K_SHARED | K_PARAM

    opt_349 ::= grp_348 | $empty

    grp_350 ::= K_WB | K_CG | K_CS | K_WT

    opt_351 ::= grp_350 | $empty

    grp_352 ::= K_V2 | K_V4

    opt_353 ::= grp_352 | $empty

    grp_354 ::= K_B8 | K_B16 | K_B32 | K_B64 | K_U8 | K_U16 | K_U32 | K_U64 | K_S8 | K_S16 | K_S32 | K_S64 | K_F32 | K_F64

    grp_347 ::= opt_349 opt_351 opt_353 grp_354

    grp_356 ::= K_CONST | K_GLOBAL | K_LOCAL | K_PARAM | K_SHARED

    opt_357 ::= grp_356 | $empty

    grp_358 ::= K_B8 | K_B16 | K_B32 | K_B64 | K_U8 | K_U16 | K_U32 | K_U64 | K_S8 | K_S16 | K_S32 | K_S64 | K_F32 | K_F64

    grp_355 ::= K_VOLATILE opt_357 grp_358

    grp_360 ::= K_CONST | K_GLOBAL | K_LOCAL | K_PARAM | K_SHARED

    opt_361 ::= grp_360 | $empty

    grp_362 ::= K_V2 | K_V4

    grp_363 ::= K_B8 | K_B16 | K_B32 | K_B64 | K_U8 | K_U16 | K_U32 | K_U64 | K_S8 | K_S16 | K_S32 | K_S64 | K_F32 | K_F64

    grp_359 ::= K_VOLATILE opt_361 grp_362 grp_363

    grp_346 ::= grp_347 | grp_355 | grp_359

    seq_367 ::= K_SAT K_S32

    grp_368 ::= K_U16 | K_U32 | K_U64 | K_S16 | K_S32 | K_S64

    grp_366 ::= seq_367 | grp_368

    grp_370 ::= K_S32 | K_U32

    grp_369 ::= K_CC grp_370

    grp_365 ::= grp_366 | grp_369

    grp_372 ::= K_RN | K_RZ | K_RM | K_RP

    opt_373 ::= grp_372 | $empty

    opt_374 ::= K_FTZ | $empty

    opt_375 ::= K_SAT | $empty

    grp_371 ::= opt_373 opt_374 opt_375 K_F32

    grp_377 ::= K_RN | K_RZ | K_RM | K_RP

    opt_378 ::= grp_377 | $empty

    grp_376 ::= opt_378 K_F64

    grp_364 ::= grp_365 | grp_371 | grp_376

    seq_381 ::= K_SAT K_S32

    grp_382 ::= K_U16 | K_U32 | K_U64 | K_S16 | K_S32 | K_S64

    grp_380 ::= seq_381 | grp_382

    grp_384 ::= K_S32 | K_U32

    grp_383 ::= K_CC grp_384

    grp_379 ::= grp_380 | grp_383

    grp_387 ::= K_1D | K_2D | K_3D

    grp_388 ::= K_CA | K_CG | K_CS | K_CV

    opt_389 ::= grp_388 | $empty

    grp_390 ::= K_V2 | K_V4

    opt_391 ::= grp_390 | $empty

    grp_392 ::= K_B8 | K_B16 | K_B32 | K_B64

    grp_393 ::= K_TRAP | K_CLAMP | K_ZERO

    grp_386 ::= K_B grp_387 opt_389 opt_391 grp_392 grp_393

    grp_395 ::= K_1D | K_2D | K_3D

    grp_396 ::= K_CA | K_CG | K_CS | K_CV

    opt_397 ::= grp_396 | $empty

    grp_398 ::= K_V2 | K_V4

    opt_399 ::= grp_398 | $empty

    grp_400 ::= K_B32 | K_U32 | K_S32 | K_F32

    grp_401 ::= K_TRAP | K_CLAMP | K_ZERO

    grp_394 ::= K_P grp_395 opt_397 opt_399 grp_400 grp_401

    grp_385 ::= grp_386 | grp_394

    grp_404 ::= K_1D | K_2D | K_3D

    grp_405 ::= K_CA | K_CG | K_CS | K_CV

    opt_406 ::= grp_405 | $empty

    grp_407 ::= K_V2 | K_V4

    opt_408 ::= grp_407 | $empty

    grp_409 ::= K_B8 | K_B16 | K_B32 | K_B64

    grp_410 ::= K_TRAP | K_CLAMP | K_ZERO

    grp_403 ::= K_B grp_404 opt_406 opt_408 grp_409 grp_410

    grp_412 ::= K_1D | K_2D | K_3D

    grp_413 ::= K_CA | K_CG | K_CS | K_CV

    opt_414 ::= grp_413 | $empty

    grp_415 ::= K_V2 | K_V4

    opt_416 ::= grp_415 | $empty

    grp_417 ::= K_B32 | K_U32 | K_S32 | K_F32

    grp_418 ::= K_TRAP | K_CLAMP | K_ZERO

    grp_411 ::= K_P grp_412 opt_414 opt_416 grp_417 grp_418

    grp_402 ::= grp_403 | grp_411

    grp_421 ::= K_1D | K_2D | K_3D

    grp_422 ::= K_CA | K_CG | K_CS | K_CV

    opt_423 ::= grp_422 | $empty

    grp_424 ::= K_V2 | K_V4

    opt_425 ::= grp_424 | $empty

    grp_426 ::= K_B8 | K_B16 | K_B32 | K_B64

    grp_427 ::= K_TRAP | K_CLAMP | K_ZERO

    grp_420 ::= K_B grp_421 opt_423 opt_425 grp_426 grp_427

    grp_429 ::= K_1D | K_2D | K_3D

    grp_430 ::= K_CA | K_CG | K_CS | K_CV

    opt_431 ::= grp_430 | $empty

    grp_432 ::= K_V2 | K_V4

    opt_433 ::= grp_432 | $empty

    grp_434 ::= K_B32 | K_U32 | K_S32 | K_F32

    grp_435 ::= K_TRAP | K_CLAMP | K_ZERO

    grp_428 ::= K_P grp_429 opt_431 opt_433 grp_434 grp_435

    grp_419 ::= grp_420 | grp_428

    grp_436 ::= K_WIDTH | K_HEIGHT | K_DEPTH

    grp_437 ::= K_FINITE | K_INFINITE | K_NUMBER | K_NOTANUMBER | K_NORMAL | K_SUBNORMAL

    grp_438 ::= K_F32 | K_F64

    grp_441 ::= K_1D | K_2D | K_3D

    grp_442 ::= K_U32 | K_S32 | K_F32

    grp_443 ::= K_S32 | K_F32

    grp_440 ::= grp_441 K_V4 grp_442 grp_443

    grp_439 ::= grp_440

    seq_444 ::= T_COMMA opr

    opt_445 ::= seq_444 | $empty

    grp_448 ::= K_WIDTH | K_HEIGHT | K_DEPTH | K_CHANNEL_DATA_TYPE | K_CHANNEL_ORDER | K_NORMALIZED_COORDS

    grp_447 ::= grp_448

    grp_450 ::= K_FILTER_MODE | K_ADDR_MODE_0 | K_ADDR_MODE_1 | K_ADDR_MODE_2

    grp_449 ::= grp_450

    grp_446 ::= grp_447 | grp_449

    grp_453 ::= K_ALL | K_ANY | K_UNI

    grp_452 ::= grp_453 K_PRED

    seq_454 ::= K_BALLOT K_B32

    grp_451 ::= grp_452 | seq_454

    opt_455 ::= T_NOT | $empty

    grp_456 ::= K_PRED | K_B16 | K_B32 | K_B64

    grp_460 ::= K_X | K_Y | K_Z | K_W | K_A | K_R | K_G | K_B

    opt_461 ::= grp_460 | $empty

    grp_459 ::= id_or_opcode opt_461 | constant_expression

    seq_462 ::= T_PLUS constant_expression

    opt_463 ::= seq_462 | $empty

    seq_464 ::= T_LT opr T_GT

    opt_465 ::= seq_464 | $empty

    grp_458 ::= grp_459 opt_463 opt_465

    grp_467 ::= id_or_opcode | T_UNDERSCORE

    grp_469 ::= id_or_opcode | T_UNDERSCORE

    grp_468 ::= T_COMMA grp_469

    list_470 ::= $empty | list_470 grp_468

    grp_466 ::= T_OC grp_467 list_470 T_CC

    grp_457 ::= grp_458 | grp_466 | T_UNDERSCORE

    seq_471 ::= T_QUESTION constant_expression_aux T_COLON conditional_expression

    opt_472 ::= seq_471 | $empty

    seq_473 ::= T_OROR conditional_and_expression

    list_474 ::= $empty | list_474 seq_473

    seq_475 ::= T_ANDAND inclusive_or_expression

    list_476 ::= $empty | list_476 seq_475

    seq_477 ::= T_OR exclusive_or_expression

    list_478 ::= $empty | list_478 seq_477

    seq_479 ::= T_XOR and_expression

    list_480 ::= $empty | list_480 seq_479

    seq_481 ::= T_AND equality_expression

    list_482 ::= $empty | list_482 seq_481

    grp_484 ::= T_EQEQ | T_NOTEQ

    grp_483 ::= grp_484 relational_expression

    list_485 ::= $empty | list_485 grp_483

    seq_486 ::= relational_op shift_expression

    list_487 ::= $empty | list_487 seq_486

    seq_488 ::= shift_op additive_expression

    list_489 ::= $empty | list_489 seq_488

    grp_491 ::= T_PLUS | T_MINUS

    grp_490 ::= grp_491 multiplicative_expression

    list_492 ::= $empty | list_492 grp_490

    grp_494 ::= T_STAR | T_SLASH | T_PERCENT

    grp_493 ::= grp_494 unary_expression

    list_495 ::= $empty | list_495 grp_493

    grp_496 ::= K_S64 | K_U64

%End
