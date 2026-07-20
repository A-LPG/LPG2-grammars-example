-- AUTO-GENERATED from antlr/grammars-v4 asm/ptx/ptx-isa-1.0 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=AsmPtxPtxIsa10Parser
%options package=lpg.grammars.asm.ptx.ptx_isa_1_0
%options template=dtParserTemplateF.gi
%options import_terminals=AsmPtxPtxIsa10Lexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    prog
%End

%Rules
    prog ::= version_directive list_1 list_2

    version_directive ::= VERSION NUMBER

    target_directive ::= TARGET target_list

    target_list ::= target_specifier list_4

    target_specifier ::= SM_10
           | SM_11
           | SM_12
           | SM_13
           | COMPUTE_10
           | COMPUTE_11
           | MAP_F64_TO_F32

    line ::= directive SEMI
           | instruction_template SEMI
           | debugging_directive SEMI
           | opt_5 ENTRY id_ list_6 opt_7 body
           | FUNC opt_8 id_ opt_9 body

    directive ::= grp_10 var_decl
           | REG opt_11 built_in_type id_list opt_12
           | SREG opt_13 opt_14 special_register
           | opt_15 STRUCT opt_16 id_ grp_17
           | UNION opt_18 id_ LBRACE struct_field_list RBRACE
           | SURF
           | DOT_TEX
           | EXTERN id_

    var_decl ::= opt_19 opt_20 built_in_type id_list list_21 opt_22

    special_register ::= TID
           | NTID
           | LANEID
           | WARPID
           | CTAID
           | NCTAID
           | SMID
           | NSMID
           | GRIDID
           | CLOCK
           | PM

    debugging_directive ::= SECTION
           | FILE IDENTIFIER
           | LOC DECIMAL_LITERAL
           | BYTE data_list

    data_list ::= HEXADECIMAL_LITERAL list_24

    alignment ::= ALIGN integer_constant

    array_spec ::= LBRACKET opt_26 RBRACKET

    id_list ::= id_ list_28

    initializer ::= EQ initial_value

    const_value ::= integer_constant
           | floating_point_constant

    initial_value ::= opt_30 const_value
           | LBRACE initial_value list_32 RBRACE

    instruction_template ::= opt_33 opt_34 instruction

    ret_param ::= LPAREN state_space built_in_type id_ RPAREN

    param_list ::= LPAREN param_decl list_36 RPAREN

    param_decl ::= PARAM opt_37 built_in_type id_ list_38

    reg_list ::= LPAREN reg_decl list_40 RPAREN

    reg_decl ::= REG built_in_type id_

    body ::= LBRACE list_41 RBRACE

    guard ::= AT opt_42 pred_reg

    pred_reg ::= id_

    data_type ::= built_in_type
           | vector_type
           | vector_type built_in_type
           | id_

    instruction ::= ABS data_type operand COMMA operand
           | ADD opt_43 opt_44 data_type operand COMMA operand COMMA operand
           | AND data_type operand COMMA operand COMMA operand
           | ATOM space DOT operation data_type operand COMMA operand COMMA operand opt_46
           | BAR opt_47 operand
           | BRA opt_48 id_
           | BRKPT
           | CALL opt_49 opt_51 id_ opt_55
           | CNOT data_type operand COMMA operand
           | COS data_type operand COMMA operand
           | CROSS
           | CVT opt_56 opt_57 data_type data_type operand COMMA operand
           | DIV opt_58 opt_59 opt_60 data_type operand COMMA operand COMMA operand
           | DOT
           | EX2 data_type operand COMMA operand
           | EXIT
           | EXTRACT
           | FRC data_type operand COMMA operand
           | INSERT
           | LD space data_type operand COMMA operand
           | LD space vec data_type operand COMMA operand
           | LG2 data_type operand COMMA operand
           | MAD opt_62 opt_63 opt_64 data_type operand COMMA operand COMMA operand COMMA operand
           | MAD24 opt_66 opt_67 data_type operand COMMA operand COMMA operand COMMA operand
           | MAX data_type operand COMMA operand COMMA operand
           | MEMBAR
           | MIN data_type operand COMMA operand COMMA operand
           | MOV data_type operand COMMA operand
           | MUL opt_69 opt_70 opt_71 data_type operand COMMA operand COMMA operand
           | MUL24 opt_73 data_type operand COMMA operand COMMA operand
           | NEG data_type operand COMMA operand
           | NOP
           | NOT data_type operand COMMA operand
           | OR data_type operand COMMA operand COMMA operand
           | RCP data_type operand COMMA operand
           | REM opt_74 data_type operand COMMA operand COMMA operand
           | RET opt_75
           | RSQRT data_type operand COMMA operand
           | SAD opt_76 data_type operand COMMA operand COMMA operand COMMA operand
           | SELP data_type operand COMMA operand COMMA operand COMMA operand
           | SET cmp_op data_type data_type operand COMMA operand COMMA operand
           | SET cmp_op bool_op data_type data_type operand COMMA operand COMMA operand COMMA opt_77 operand
           | SETP cmp_op data_type operand opt_79 COMMA operand COMMA operand
           | SETP cmp_op bool_op data_type operand opt_81 COMMA operand COMMA operand COMMA opt_82 operand
           | SHL data_type operand COMMA operand COMMA operand
           | SHR data_type operand COMMA operand COMMA operand
           | SIN data_type operand COMMA operand
           | SLCT data_type data_type operand COMMA operand COMMA operand COMMA operand
           | SQRT data_type operand COMMA operand
           | ST space data_type operand COMMA operand
           | ST space vec data_type operand COMMA operand
           | SUB opt_83 opt_84 data_type operand COMMA operand COMMA operand
           | TEX geom data_type data_type operand COMMA operand COMMA operand
           | TRAP
           | VOTE
           | VRED
           | XOR data_type operand COMMA operand COMMA operand
           | LBRACE opt_85 RBRACE

    instruction_list ::= list_87

    operation ::= AND
           | OR
           | XOR
           | INC
           | DEC
           | ADD
           | MIN
           | MAX
           | CAS
           | EXCH

    rounding_mode ::= floating_point_rounding_mode
           | integer_rounding_mode

    floating_point_rounding_mode ::= RN
           | RZ
           | RM
           | RP

    integer_rounding_mode ::= RNI
           | RZI
           | RMI
           | RPI

    cmp_op ::= EQ
           | NE
           | LT
           | LE
           | GT
           | GE
           | LO
           | LS
           | HI
           | HS
           | EQU
           | NEU
           | LTU
           | LEU
           | GTU
           | GEU
           | NUM
           | NAN_

    bool_op ::= DOT_AND
           | DOT_OR
           | DOT_XOR

    operand ::= id_
           | opt_89 const_value
           | LBRACE id_list RBRACE
           | LBRACKET addr_expr RBRACKET
           | id_ LBRACKET arr_ix RBRACKET
           | id_ DOT id_

    arr_ix ::= integer_constant
           | id_
           | id_ grp_90 integer_constant

    addr_expr ::= integer_constant
           | id_
           | id_ PLUS opt_91 integer_constant

    geom ::= G1D
           | G2D
           | G3D

    space ::= CONST
           | GLOBAL
           | LOCAL
           | PARAM
           | SHARED

    vec ::= V2
           | V3
           | V4

    state_space ::= REG
           | SREG
           | CONST
           | GLOBAL
           | LOCAL
           | PARAM
           | SHARED
           | SURF
           | DOT_TEX

    struct_field_list ::= list_93

    field_decl ::= built_in_type id_list

    built_in_type ::= S8
           | S16
           | S32
           | S64
           | U8
           | U16
           | U32
           | U64
           | F16
           | F32
           | F64
           | B8
           | B16
           | B32
           | B64
           | PRED

    vector_type ::= V2
           | V3
           | V4

    id_ ::= IDENTIFIER
           | PARAM_VAR_NAME
           | special_register

    integer_constant ::= HEXADECIMAL_LITERAL
           | OCTAL_LITERAL
           | BINARY_LITERAL
           | DECIMAL_LITERAL

    floating_point_constant ::= SINGLE_PRECISION_FLOATING_POINT_LITERAL
           | DOUBLE_PRECISION_FLOATING_POINT_LITERAL
           | REAL_LITERAL

    list_1 ::= target_directive
           | list_1 target_directive

    list_2 ::= $empty
           | list_2 line

    seq_3 ::= COMMA target_specifier

    list_4 ::= $empty
           | list_4 seq_3

    opt_5 ::= VISIBLE
           | $empty

    list_6 ::= array_spec
           | list_6 array_spec

    opt_7 ::= param_list
           | $empty

    opt_8 ::= ret_param
           | $empty

    opt_9 ::= reg_list
           | $empty

    grp_10 ::= CONST
           | GLOBAL
           | LOCAL
           | SHARED

    opt_11 ::= vector_type
           | $empty

    opt_12 ::= initializer
           | $empty

    opt_13 ::= vector_type
           | $empty

    opt_14 ::= built_in_type
           | $empty

    opt_15 ::= state_space
           | $empty

    opt_16 ::= alignment
           | $empty

    grp_17 ::= LBRACE struct_field_list RBRACE
           | id_

    opt_18 ::= alignment
           | $empty

    opt_19 ::= alignment
           | $empty

    opt_20 ::= vector_type
           | $empty

    list_21 ::= $empty
           | list_21 array_spec

    opt_22 ::= initializer
           | $empty

    seq_23 ::= COMMA HEXADECIMAL_LITERAL

    list_24 ::= seq_23
           | list_24 seq_23

    grp_25 ::= integer_constant
           | IDENTIFIER

    opt_26 ::= grp_25
           | $empty

    seq_27 ::= COMMA id_

    list_28 ::= $empty
           | list_28 seq_27

    grp_29 ::= PLUS
           | MINUS

    opt_30 ::= grp_29
           | $empty

    seq_31 ::= COMMA initial_value

    list_32 ::= $empty
           | list_32 seq_31

    opt_33 ::= LABEL
           | $empty

    opt_34 ::= guard
           | $empty

    seq_35 ::= COMMA param_decl

    list_36 ::= $empty
           | list_36 seq_35

    opt_37 ::= alignment
           | $empty

    list_38 ::= $empty
           | list_38 array_spec

    seq_39 ::= COMMA reg_decl

    list_40 ::= $empty
           | list_40 seq_39

    list_41 ::= $empty
           | list_41 line

    opt_42 ::= BANG
           | $empty

    opt_43 ::= rounding_mode
           | $empty

    opt_44 ::= SAT
           | $empty

    seq_45 ::= COMMA operand

    opt_46 ::= seq_45
           | $empty

    opt_47 ::= SYNC
           | $empty

    opt_48 ::= UNI
           | $empty

    opt_49 ::= UNI
           | $empty

    seq_50 ::= LPAREN operand RPAREN COMMA

    opt_51 ::= seq_50
           | $empty

    seq_52 ::= COMMA operand

    list_53 ::= $empty
           | list_53 seq_52

    seq_54 ::= COMMA LPAREN operand list_53 RPAREN

    opt_55 ::= seq_54
           | $empty

    opt_56 ::= rounding_mode
           | $empty

    opt_57 ::= SAT
           | $empty

    opt_58 ::= WIDE
           | $empty

    opt_59 ::= rounding_mode
           | $empty

    opt_60 ::= SAT
           | $empty

    grp_61 ::= HI
           | LO
           | WIDE

    opt_62 ::= grp_61
           | $empty

    opt_63 ::= rounding_mode
           | $empty

    opt_64 ::= SAT
           | $empty

    grp_65 ::= HI
           | LO

    opt_66 ::= grp_65
           | $empty

    opt_67 ::= SAT
           | $empty

    grp_68 ::= HI
           | LO
           | WIDE

    opt_69 ::= grp_68
           | $empty

    opt_70 ::= rounding_mode
           | $empty

    opt_71 ::= SAT
           | $empty

    grp_72 ::= HI
           | LO

    opt_73 ::= grp_72
           | $empty

    opt_74 ::= WIDE
           | $empty

    opt_75 ::= UNI
           | $empty

    opt_76 ::= rounding_mode
           | $empty

    opt_77 ::= BANG
           | $empty

    grp_78 ::= PIPE operand

    opt_79 ::= grp_78
           | $empty

    grp_80 ::= PIPE operand

    opt_81 ::= grp_80
           | $empty

    opt_82 ::= BANG
           | $empty

    opt_83 ::= rounding_mode
           | $empty

    opt_84 ::= SAT
           | $empty

    opt_85 ::= instruction_list
           | $empty

    seq_86 ::= instruction_template SEMI

    list_87 ::= seq_86
           | list_87 seq_86

    grp_88 ::= PLUS
           | MINUS

    opt_89 ::= grp_88
           | $empty

    grp_90 ::= PLUS
           | MINUS

    opt_91 ::= MINUS
           | $empty

    seq_92 ::= field_decl SEMI

    list_93 ::= $empty
           | list_93 seq_92

%End
