-- AUTO-GENERATED from antlr/grammars-v4 zig by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=ZigParser
%options package=lpg.grammars.zig
%options template=dtParserTemplateF.gi
%options import_terminals=ZigLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    root
%End

%Rules
    root ::= container_members

    container_members ::= opt_1 list_2 list_4 grp_5

    container_declaration ::= test_decl
           | comptime_decl
           | opt_7 opt_8 decl

    test_decl ::= TEST grp_9 block

    comptime_decl ::= COMPTIME block

    decl ::= opt_12 fn_proto grp_13
           | opt_15 opt_16 global_var_decl

    fn_proto ::= FN opt_17 LPAREN param_decl_list RPAREN opt_18 opt_19 opt_20 opt_21 opt_22 type_expr

    var_decl_proto ::= grp_23 IDENTIFIER opt_25 opt_26 opt_27 opt_28

    global_var_decl ::= var_decl_proto opt_30 SEMI

    container_field ::= opt_31 opt_32 opt_34 type_expr opt_35 opt_37

    statement ::= COMPTIME comptime_statement
           | NOSUSPEND block_expr_statement
           | SUSPEND block_expr_statement
           | DEFER block_expr_statement
           | ERRDEFER opt_38 block_expr_statement
           | if_statement
           | labeled_statement
           | var_decl_expr_statement

    comptime_statement ::= block_expr
           | var_decl_expr_statement

    if_statement ::= if_prefix block_expr opt_41
           | if_prefix assign_expr grp_42

    labeled_statement ::= opt_44 grp_45

    loop_statement ::= opt_46 grp_47

    for_statement ::= for_prefix block_expr opt_49
           | for_prefix assign_expr seq_50

    while_statement ::= while_prefix block_expr opt_53
           | while_prefix assign_expr grp_54

    block_expr_statement ::= block_expr
           | assign_expr SEMI

    block_expr ::= opt_56 block

    var_decl_expr_statement ::= var_decl_proto list_59 EQ expr SEMI
           | expr opt_64 SEMI

    assign_expr ::= expr opt_68

    simple_assign_expr ::= expr opt_70

    expr ::= bool_or_expr

    bool_or_expr ::= bool_and_expr list_72

    bool_and_expr ::= compare_expr list_74

    compare_expr ::= bitwise_expr opt_76

    bitwise_expr ::= bit_shift_expr list_78

    bit_shift_expr ::= addition_expr list_80

    addition_expr ::= multiply_expr list_82

    multiply_expr ::= prefix_expr list_84

    prefix_expr ::= list_85 primary_expr

    primary_expr ::= asm_expr
           | if_expr
           | BREAK opt_86 opt_87
           | COMPTIME expr
           | NOSUSPEND expr
           | CONTINUE opt_88 opt_89
           | RESUME expr
           | RETURN opt_90
           | opt_91 loop_expr
           | block
           | curly_suffix_expr

    if_expr ::= if_prefix expr opt_94

    block ::= LBRACE list_95 RBRACE

    loop_expr ::= opt_96 grp_97

    for_expr ::= for_prefix expr opt_99

    while_expr ::= while_prefix expr opt_102

    curly_suffix_expr ::= type_expr opt_103

    init_list ::= LBRACE field_init list_105 opt_106 RBRACE
           | LBRACE expr list_108 opt_109 RBRACE
           | LBRACE RBRACE

    type_expr ::= list_110 error_union_expr

    error_union_expr ::= suffix_expr opt_112

    suffix_expr ::= primary_type_expr list_114

    primary_type_expr ::= IDENTIFIER fn_call_arguments
           | CHAR_LITERAL
           | container_decl
           | DOT IDENTIFIER
           | DOT init_list
           | error_set_decl
           | NUMBER
           | fn_proto
           | grouped_expr
           | labeled_type_expr
           | IDENTIFIER
           | if_type_expr
           | COMPTIME type_expr
           | ERROR DOT IDENTIFIER
           | ANYFRAME
           | UNREACHABLE
           | STRING

    container_decl ::= opt_116 container_decl_auto

    error_set_decl ::= ERROR LBRACE identifier_list RBRACE

    grouped_expr ::= LPAREN expr RPAREN

    if_type_expr ::= if_prefix type_expr opt_119

    labeled_type_expr ::= block_label block
           | opt_120 loop_type_expr
           | opt_121 switch_expr

    loop_type_expr ::= opt_122 grp_123

    for_type_expr ::= for_prefix type_expr opt_125

    while_type_expr ::= while_prefix type_expr opt_128

    switch_expr ::= SWITCH LPAREN expr RPAREN LBRACE switch_prong_list RBRACE

    asm_expr ::= ASM opt_129 LPAREN expr opt_130 RPAREN

    asm_output ::= COLON asm_output_list opt_131

    asm_output_item ::= LBRACKET IDENTIFIER RBRACKET STRING LPAREN grp_132 RPAREN

    asm_input ::= COLON asm_input_list opt_133

    asm_input_item ::= LBRACKET IDENTIFIER RBRACKET STRING LPAREN expr RPAREN

    asm_clobbers ::= COLON expr

    break_label ::= COLON IDENTIFIER

    block_label ::= IDENTIFIER COLON

    field_init ::= DOT IDENTIFIER EQ expr

    while_continue_expr ::= COLON LPAREN assign_expr RPAREN

    link_section ::= LINKSECTION LPAREN expr RPAREN

    addr_space ::= ADDRSPACE LPAREN expr RPAREN

    call_conv ::= CALLCONV LPAREN expr RPAREN

    param_decl ::= opt_134 opt_136 opt_138 param_type
           | ELLIPSIS

    param_type ::= ANYTYPE
           | type_expr

    if_prefix ::= IF LPAREN expr RPAREN opt_139

    while_prefix ::= WHILE LPAREN expr RPAREN opt_140 opt_141

    for_prefix ::= FOR LPAREN for_arguments_list RPAREN ptr_list_payload

    payload_ ::= PIPE IDENTIFIER PIPE

    ptr_payload ::= PIPE opt_142 IDENTIFIER PIPE

    ptr_index_payload ::= PIPE opt_143 IDENTIFIER opt_145 PIPE

    ptr_list_payload ::= PIPE opt_146 IDENTIFIER list_149 opt_150 PIPE

    switch_prong ::= opt_151 switch_case FATARROW opt_152 simple_assign_expr

    switch_case ::= switch_item list_154 opt_155
           | ELSE

    switch_item ::= expr opt_157

    for_arguments_list ::= for_item list_159 opt_160

    for_item ::= expr opt_163

    assign_op ::= STAREQ
           | OP_63352
           | SLASHEQ
           | PERCENTEQ
           | PLUSEQ
           | OP_94779
           | MINUSEQ
           | OP_40364
           | LSHIFTEQ
           | OP_36193
           | RSHIFTEQ
           | AMPEQ
           | CARETEQ
           | PIPEEQ
           | OP_19039
           | OP_36505
           | OP_58048
           | EQ

    compare_op ::= EQEQ
           | NOTEQ
           | LT
           | GT
           | LTEQ
           | GTEQ

    bitwise_op ::= AMP
           | CARET
           | PIPE
           | ORELSE
           | CATCH opt_164

    bit_shift_op ::= LSHIFT
           | RSHIFT
           | OP_61083

    addition_op ::= PLUS
           | MINUS
           | PLUSPLUS
           | OP_59785
           | OP_88405
           | OP_89570
           | OP_89960

    multiply_op ::= OROR
           | STAR
           | SLASH
           | PERCENT
           | STARSTAR
           | OP_66841
           | OP_20197

    prefix_op ::= BANG
           | MINUS
           | TILDE
           | OP_88405
           | AMP
           | TRY

    prefix_type_op ::= QUESTION
           | ANYFRAME ARROW
           | slice_type_start
           | ptr_type_start
           | array_type_start

    suffix_op ::= LBRACKET expr opt_171 RBRACKET
           | DOT IDENTIFIER
           | DOTSTAR
           | OP_25497

    fn_call_arguments ::= LPAREN expr_list RPAREN

    slice_type_start ::= LBRACKET opt_173 RBRACKET

    ptr_type_start ::= STAR
           | STARSTAR
           | LBRACKET STAR opt_175 RBRACKET

    array_type_start ::= LBRACKET expr opt_177 RBRACKET

    container_decl_auto ::= container_decl_type LBRACE container_members RBRACE

    container_decl_type ::= STRUCT opt_179
           | OPAQUE
           | ENUM opt_181
           | UNION opt_186

    byte_align ::= ALIGN LPAREN expr RPAREN

    identifier_list ::= list_189 opt_192

    switch_prong_list ::= list_194 opt_195

    asm_output_list ::= list_197 opt_198

    asm_input_list ::= list_200 opt_201

    param_decl_list ::= list_203 opt_204

    expr_list ::= list_206 opt_207

    opt_1 ::= Container_doc_comment | $empty

    list_2 ::= $empty | list_2 container_declaration

    seq_3 ::= container_field COMMA

    list_4 ::= $empty | list_4 seq_3

    list_6 ::= $empty | list_6 container_declaration

    grp_5 ::= container_field | list_6

    opt_7 ::= Doc_comment | $empty

    opt_8 ::= PUB | $empty

    grp_9 ::= STRING | IDENTIFIER

    opt_11 ::= STRING | $empty

    grp_10 ::= EXPORT | EXTERN opt_11 | INLINE | NOINLINE

    opt_12 ::= grp_10 | $empty

    grp_13 ::= SEMI | block

    grp_14 ::= EXPORT | EXTERN STRING

    opt_15 ::= grp_14 | $empty

    opt_16 ::= THREADLOCAL | $empty

    opt_17 ::= IDENTIFIER | $empty

    opt_18 ::= byte_align | $empty

    opt_19 ::= addr_space | $empty

    opt_20 ::= link_section | $empty

    opt_21 ::= call_conv | $empty

    opt_22 ::= BANG | $empty

    grp_23 ::= CONST | VAR

    seq_24 ::= COLON type_expr

    opt_25 ::= seq_24 | $empty

    opt_26 ::= byte_align | $empty

    opt_27 ::= addr_space | $empty

    opt_28 ::= link_section | $empty

    seq_29 ::= EQ expr

    opt_30 ::= seq_29 | $empty

    opt_31 ::= Doc_comment | $empty

    opt_32 ::= COMPTIME | $empty

    seq_33 ::= IDENTIFIER COLON

    opt_34 ::= seq_33 | $empty

    opt_35 ::= byte_align | $empty

    seq_36 ::= EQ expr

    opt_37 ::= seq_36 | $empty

    opt_38 ::= payload_ | $empty

    opt_39 ::= payload_ | $empty

    seq_40 ::= ELSE opt_39 statement

    opt_41 ::= seq_40 | $empty

    opt_43 ::= payload_ | $empty

    grp_42 ::= SEMI | ELSE opt_43 statement

    opt_44 ::= block_label | $empty

    grp_45 ::= block | loop_statement | switch_expr

    opt_46 ::= INLINE | $empty

    grp_47 ::= for_statement | while_statement

    seq_48 ::= ELSE statement

    opt_49 ::= seq_48 | $empty

    seq_50 ::= SEMI ELSE statement

    opt_51 ::= payload_ | $empty

    seq_52 ::= ELSE opt_51 statement

    opt_53 ::= seq_52 | $empty

    opt_55 ::= payload_ | $empty

    grp_54 ::= SEMI | ELSE opt_55 statement

    opt_56 ::= block_label | $empty

    grp_58 ::= var_decl_proto | expr

    grp_57 ::= COMMA grp_58

    list_59 ::= $empty | list_59 grp_57

    grp_62 ::= var_decl_proto | expr

    grp_61 ::= COMMA grp_62

    list_63 ::= grp_61 | list_63 grp_61

    grp_60 ::= assign_op expr | list_63 EQ expr

    opt_64 ::= grp_60 | $empty

    seq_66 ::= COMMA expr

    list_67 ::= seq_66 | list_67 seq_66

    grp_65 ::= assign_op expr | list_67 EQ expr

    opt_68 ::= grp_65 | $empty

    seq_69 ::= assign_op expr

    opt_70 ::= seq_69 | $empty

    seq_71 ::= OR bool_and_expr

    list_72 ::= $empty | list_72 seq_71

    seq_73 ::= AND compare_expr

    list_74 ::= $empty | list_74 seq_73

    seq_75 ::= compare_op bitwise_expr

    opt_76 ::= seq_75 | $empty

    seq_77 ::= bitwise_op bit_shift_expr

    list_78 ::= $empty | list_78 seq_77

    seq_79 ::= bit_shift_op addition_expr

    list_80 ::= $empty | list_80 seq_79

    seq_81 ::= addition_op multiply_expr

    list_82 ::= $empty | list_82 seq_81

    seq_83 ::= multiply_op prefix_expr

    list_84 ::= $empty | list_84 seq_83

    list_85 ::= $empty | list_85 prefix_op

    opt_86 ::= break_label | $empty

    opt_87 ::= expr | $empty

    opt_88 ::= break_label | $empty

    opt_89 ::= expr | $empty

    opt_90 ::= expr | $empty

    opt_91 ::= block_label | $empty

    opt_92 ::= payload_ | $empty

    seq_93 ::= ELSE opt_92 expr

    opt_94 ::= seq_93 | $empty

    list_95 ::= $empty | list_95 statement

    opt_96 ::= INLINE | $empty

    grp_97 ::= for_expr | while_expr

    seq_98 ::= ELSE expr

    opt_99 ::= seq_98 | $empty

    opt_100 ::= payload_ | $empty

    seq_101 ::= ELSE opt_100 expr

    opt_102 ::= seq_101 | $empty

    opt_103 ::= init_list | $empty

    seq_104 ::= COMMA field_init

    list_105 ::= $empty | list_105 seq_104

    opt_106 ::= COMMA | $empty

    seq_107 ::= COMMA expr

    list_108 ::= $empty | list_108 seq_107

    opt_109 ::= COMMA | $empty

    list_110 ::= $empty | list_110 prefix_type_op

    seq_111 ::= BANG type_expr

    opt_112 ::= seq_111 | $empty

    grp_113 ::= suffix_op | fn_call_arguments

    list_114 ::= $empty | list_114 grp_113

    grp_115 ::= EXTERN | PACKED

    opt_116 ::= grp_115 | $empty

    opt_117 ::= payload_ | $empty

    seq_118 ::= ELSE opt_117 type_expr

    opt_119 ::= seq_118 | $empty

    opt_120 ::= block_label | $empty

    opt_121 ::= block_label | $empty

    opt_122 ::= INLINE | $empty

    grp_123 ::= for_type_expr | while_type_expr

    seq_124 ::= ELSE type_expr

    opt_125 ::= seq_124 | $empty

    opt_126 ::= payload_ | $empty

    seq_127 ::= ELSE opt_126 type_expr

    opt_128 ::= seq_127 | $empty

    opt_129 ::= VOLATILE | $empty

    opt_130 ::= asm_output | $empty

    opt_131 ::= asm_input | $empty

    grp_132 ::= GT type_expr | IDENTIFIER

    opt_133 ::= asm_clobbers | $empty

    opt_134 ::= Doc_comment | $empty

    grp_135 ::= NOALIAS | COMPTIME

    opt_136 ::= grp_135 | $empty

    seq_137 ::= IDENTIFIER COLON

    opt_138 ::= seq_137 | $empty

    opt_139 ::= ptr_payload | $empty

    opt_140 ::= ptr_payload | $empty

    opt_141 ::= while_continue_expr | $empty

    opt_142 ::= STAR | $empty

    opt_143 ::= STAR | $empty

    seq_144 ::= COMMA IDENTIFIER

    opt_145 ::= seq_144 | $empty

    opt_146 ::= STAR | $empty

    opt_147 ::= STAR | $empty

    seq_148 ::= COMMA opt_147 IDENTIFIER

    list_149 ::= $empty | list_149 seq_148

    opt_150 ::= COMMA | $empty

    opt_151 ::= INLINE | $empty

    opt_152 ::= ptr_index_payload | $empty

    seq_153 ::= COMMA switch_item

    list_154 ::= $empty | list_154 seq_153

    opt_155 ::= COMMA | $empty

    seq_156 ::= ELLIPSIS expr

    opt_157 ::= seq_156 | $empty

    seq_158 ::= COMMA for_item

    list_159 ::= $empty | list_159 seq_158

    opt_160 ::= COMMA | $empty

    opt_161 ::= expr | $empty

    seq_162 ::= DOTDOT opt_161

    opt_163 ::= seq_162 | $empty

    opt_164 ::= payload_ | $empty

    opt_165 ::= expr | $empty

    seq_166 ::= COLON expr

    opt_167 ::= seq_166 | $empty

    seq_168 ::= opt_165 opt_167

    opt_169 ::= seq_168 | $empty

    seq_170 ::= DOTDOT opt_169

    opt_171 ::= seq_170 | $empty

    seq_172 ::= COLON expr

    opt_173 ::= seq_172 | $empty

    grp_174 ::= LETTERC | COLON expr

    opt_175 ::= grp_174 | $empty

    seq_176 ::= COLON expr

    opt_177 ::= seq_176 | $empty

    seq_178 ::= LPAREN expr RPAREN

    opt_179 ::= seq_178 | $empty

    seq_180 ::= LPAREN expr RPAREN

    opt_181 ::= seq_180 | $empty

    seq_184 ::= LPAREN expr RPAREN

    opt_185 ::= seq_184 | $empty

    grp_183 ::= ENUM opt_185 | expr

    grp_182 ::= LPAREN grp_183 RPAREN

    opt_186 ::= grp_182 | $empty

    opt_187 ::= Doc_comment | $empty

    seq_188 ::= opt_187 IDENTIFIER COMMA

    list_189 ::= $empty | list_189 seq_188

    opt_190 ::= Doc_comment | $empty

    seq_191 ::= opt_190 IDENTIFIER

    opt_192 ::= seq_191 | $empty

    seq_193 ::= switch_prong COMMA

    list_194 ::= $empty | list_194 seq_193

    opt_195 ::= switch_prong | $empty

    seq_196 ::= asm_output_item COMMA

    list_197 ::= $empty | list_197 seq_196

    opt_198 ::= asm_output_item | $empty

    seq_199 ::= asm_input_item COMMA

    list_200 ::= $empty | list_200 seq_199

    opt_201 ::= asm_input_item | $empty

    seq_202 ::= param_decl COMMA

    list_203 ::= $empty | list_203 seq_202

    opt_204 ::= param_decl | $empty

    seq_205 ::= expr COMMA

    list_206 ::= $empty | list_206 seq_205

    opt_207 ::= expr | $empty

%End
