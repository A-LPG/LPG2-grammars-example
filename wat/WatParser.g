-- AUTO-GENERATED from antlr/grammars-v4 wat by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=WatParser
%options package=lpg.grammars.wat
%options template=dtParserTemplateF.gi
%options import_terminals=WatLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    module
%End

%Rules
    value ::= INT
           | FLOAT

    name ::= STRING_

    value_type ::= VALUE_TYPE

    elem_type ::= FUNCREF

    global_type ::= value_type
           | LPAR MUT value_type RPAR

    def_type ::= LPAR FUNC func_type RPAR

    func_type ::= list_5

    table_type ::= NAT opt_6 elem_type

    memory_type ::= NAT opt_7

    type_use ::= LPAR TYPE var_ RPAR

    literal ::= NAT
           | INT
           | FLOAT

    var_ ::= NAT
           | VAR

    bind_var ::= VAR

    instr ::= plain_instr
           | call_instr_instr
           | block_instr
           | expr

    plain_instr ::= UNREACHABLE
           | NOP
           | DROP
           | SELECT
           | BR var_
           | BR_IF var_
           | BR_TABLE list_8
           | RETURN
           | CALL var_
           | LOCAL_GET var_
           | LOCAL_SET var_
           | LOCAL_TEE var_
           | GLOBAL_GET var_
           | GLOBAL_SET var_
           | LOAD opt_9 opt_10
           | STORE opt_11 opt_12
           | MEMORY_SIZE
           | MEMORY_GROW
           | CONST literal
           | TEST
           | COMPARE
           | UNARY
           | BINARY
           | CONVERT

    call_instr ::= CALL_INDIRECT opt_13 call_instr_params

    call_instr_params ::= list_16 list_19

    call_instr_instr ::= CALL_INDIRECT opt_20 call_instr_params_instr

    call_instr_params_instr ::= list_23 call_instr_results_instr

    call_instr_results_instr ::= list_26 instr

    block_instr ::= grp_27 opt_28 block END opt_29
           | IF opt_30 block opt_33 END opt_34

    block_type ::= LPAR RESULT value_type RPAR

    block ::= opt_35 instr_list

    expr ::= LPAR expr1 RPAR

    expr1 ::= plain_instr list_36
           | CALL_INDIRECT call_expr_type
           | BLOCK opt_37 block
           | LOOP opt_38 block
           | IF opt_39 if_block

    call_expr_type ::= opt_40 call_expr_params

    call_expr_params ::= list_43 call_expr_results

    call_expr_results ::= list_46 list_47

    if_block ::= block_type if_block
           | list_48 LPAR THEN instr_list RPAR opt_50

    instr_list ::= list_51 opt_52

    const_expr ::= instr_list

    func_ ::= LPAR FUNC opt_53 func_fields RPAR

    func_fields ::= opt_54 func_fields_body
           | inline_ func_fields_ func_fields_import_result list_57

    func_fields_body ::= list_60 func_result_body

    func_result_body ::= list_63 func_body

    func_body ::= list_66 instr_list

    offset ::= LPAR OFFSET const_expr RPAR
           | expr

    elem ::= LPAR ELEM opt_67 offset list_68 RPAR

    table ::= LPAR TABLE opt_69 table_fields RPAR

    table_fields ::= table_type
           | inline_ data LPAR DATA opt_70 offset list_71 RPAR

    memory ::= LPAR MEMORY opt_72 memory_fields RPAR

    memory_fields ::= memory_type
           | inline_ sglobal LPAR GLOBAL opt_73 global_fields RPAR

    global_fields ::= global_type const_expr
           | inline_ import_desc LPAR FUNC opt_74 type_use RPAR
           | LPAR FUNC opt_75 func_type RPAR
           | LPAR TABLE opt_76 table_type RPAR
           | LPAR MEMORY opt_77 memory_type RPAR
           | LPAR GLOBAL opt_78 global_type RPAR

    export_desc ::= LPAR FUNC var_ RPAR
           | LPAR TABLE var_ RPAR
           | LPAR MEMORY var_ RPAR
           | LPAR GLOBAL var_ RPAR

    export_ ::= LPAR EXPORT name export_desc RPAR

    inline_export ::= LPAR EXPORT name RPAR

    type_ ::= def_type

    type_def ::= LPAR TYPE opt_79 type_ RPAR

    start_ ::= LPAR START_ var_ RPAR

    module_field ::= type_def
           | sglobal
           | table
           | memory
           | func_
           | elem
           | data
           | start_
           | s module_ LPAR MODULE opt_80 list_81 RPAR

    script_module ::= module_
           | LPAR MODULE opt_82 grp_83 list_84 RPAR

    action_ ::= LPAR INVOKE opt_85 name const_list RPAR
           | LPAR GET opt_86 name RPAR

    assertion ::= LPAR ASSERT_MALFORMED script_module STRING_ RPAR
           | LPAR ASSERT_INVALID script_module STRING_ RPAR
           | LPAR ASSERT_UNLINKABLE script_module STRING_ RPAR
           | LPAR ASSERT_TRAP script_module STRING_ RPAR
           | LPAR ASSERT_RETURN action_ const_list RPAR
           | LPAR ASSERT_RETURN_CANONICAL_NAN action_ RPAR
           | LPAR ASSERT_RETURN_ARITHMETIC_NAN action_ RPAR
           | LPAR ASSERT_TRAP action_ STRING_ RPAR
           | LPAR ASSERT_EXHAUSTION action_ STRING_ RPAR

    cmd ::= action_
           | assertion
           | script_module
           | LPAR REGISTER name opt_87 RPAR
           | meta

    meta ::= LPAR SCRIPT opt_88 list_89 RPAR
           | LPAR INPUT opt_90 STRING_ RPAR
           | LPAR OUTPUT opt_91 STRING_ RPAR
           | LPAR OUTPUT opt_92 RPAR

    wconst ::= LPAR CONST literal RPAR

    const_list ::= list_93

    script ::= list_94
           | list_95

    module ::= module_
           | list_96

    list_3 ::= $empty | list_3 value_type

    list_4 ::= $empty | list_4 value_type

    grp_2 ::= RESULT list_3 | PARAM list_4 | PARAM bind_var value_type

    grp_1 ::= LPAR grp_2 RPAR

    list_5 ::= $empty | list_5 grp_1

    opt_6 ::= NAT | $empty

    opt_7 ::= NAT | $empty

    list_8 ::= var_ | list_8 var_

    opt_9 ::= OFFSET_EQ_NAT | $empty

    opt_10 ::= ALIGN_EQ_NAT | $empty

    opt_11 ::= OFFSET_EQ_NAT | $empty

    opt_12 ::= ALIGN_EQ_NAT | $empty

    opt_13 ::= type_use | $empty

    list_14 ::= $empty | list_14 value_type

    seq_15 ::= LPAR PARAM list_14 RPAR

    list_16 ::= $empty | list_16 seq_15

    list_17 ::= $empty | list_17 value_type

    seq_18 ::= LPAR RESULT list_17 RPAR

    list_19 ::= $empty | list_19 seq_18

    opt_20 ::= type_use | $empty

    list_21 ::= $empty | list_21 value_type

    seq_22 ::= LPAR PARAM list_21 RPAR

    list_23 ::= $empty | list_23 seq_22

    list_24 ::= $empty | list_24 value_type

    seq_25 ::= LPAR RESULT list_24 RPAR

    list_26 ::= $empty | list_26 seq_25

    grp_27 ::= BLOCK | LOOP

    opt_28 ::= bind_var | $empty

    opt_29 ::= bind_var | $empty

    opt_30 ::= bind_var | $empty

    opt_31 ::= bind_var | $empty

    seq_32 ::= ELSE opt_31 instr_list

    opt_33 ::= seq_32 | $empty

    opt_34 ::= bind_var | $empty

    opt_35 ::= block_type | $empty

    list_36 ::= $empty | list_36 expr

    opt_37 ::= bind_var | $empty

    opt_38 ::= bind_var | $empty

    opt_39 ::= bind_var | $empty

    opt_40 ::= type_use | $empty

    list_41 ::= $empty | list_41 value_type

    seq_42 ::= LPAR PARAM list_41 RPAR

    list_43 ::= $empty | list_43 seq_42

    list_44 ::= $empty | list_44 value_type

    seq_45 ::= LPAR RESULT list_44 RPAR

    list_46 ::= $empty | list_46 seq_45

    list_47 ::= $empty | list_47 expr

    list_48 ::= $empty | list_48 expr

    seq_49 ::= LPAR ELSE instr_list RPAR

    opt_50 ::= seq_49 | $empty

    list_51 ::= $empty | list_51 instr

    opt_52 ::= call_instr | $empty

    opt_53 ::= bind_var | $empty

    opt_54 ::= type_use | $empty

    list_55 ::= $empty | list_55 value_type

    seq_56 ::= LPAR RESULT list_55 RPAR

    list_57 ::= $empty | list_57 seq_56

    list_59 ::= $empty | list_59 value_type

    grp_58 ::= LPAR PARAM list_59 RPAR | LPAR PARAM bind_var value_type RPAR

    list_60 ::= $empty | list_60 grp_58

    list_61 ::= $empty | list_61 value_type

    seq_62 ::= LPAR RESULT list_61 RPAR

    list_63 ::= $empty | list_63 seq_62

    list_65 ::= $empty | list_65 value_type

    grp_64 ::= LPAR LOCAL list_65 RPAR | LPAR LOCAL bind_var value_type RPAR

    list_66 ::= $empty | list_66 grp_64

    opt_67 ::= var_ | $empty

    list_68 ::= $empty | list_68 var_

    opt_69 ::= bind_var | $empty

    opt_70 ::= var_ | $empty

    list_71 ::= $empty | list_71 STRING_

    opt_72 ::= bind_var | $empty

    opt_73 ::= bind_var | $empty

    opt_74 ::= bind_var | $empty

    opt_75 ::= bind_var | $empty

    opt_76 ::= bind_var | $empty

    opt_77 ::= bind_var | $empty

    opt_78 ::= bind_var | $empty

    opt_79 ::= bind_var | $empty

    opt_80 ::= VAR | $empty

    list_81 ::= $empty | list_81 module_field

    opt_82 ::= VAR | $empty

    grp_83 ::= BIN | QUOTE

    list_84 ::= $empty | list_84 STRING_

    opt_85 ::= VAR | $empty

    opt_86 ::= VAR | $empty

    opt_87 ::= VAR | $empty

    opt_88 ::= VAR | $empty

    list_89 ::= $empty | list_89 cmd

    opt_90 ::= VAR | $empty

    opt_91 ::= VAR | $empty

    opt_92 ::= VAR | $empty

    list_93 ::= $empty | list_93 wconst

    list_94 ::= $empty | list_94 cmd

    list_95 ::= module_field | list_95 module_field

    list_96 ::= $empty | list_96 module_field

%End
