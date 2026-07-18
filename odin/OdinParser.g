-- AUTO-GENERATED from antlr/grammars-v4 odin by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=OdinParser
%options package=lpg.grammars.odin
%options template=dtParserTemplateF.gi
%options import_terminals=OdinLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    unit
%End

%Rules
    unit ::= opt_1 opt_2 list_3

    foreign_import_decl ::= FOREIGN IMPORT opt_4 grp_5

    foreign_block ::= opt_6 FOREIGN id LBRACE list_7 RBRACE

    foreign_entry ::= opt_8 id COLONCOLON PROC opt_9 LPAREN opt_10 RPAREN opt_12 UNINIT opt_13

    package_decl ::= PACKAGE id

    import_list ::= list_14

    import_item ::= IMPORT opt_15 STRING

    top_decl ::= opt_16 named_decl
           | opt_17 var_decl
           | foreign_import_decl
           | opt_18 foreign_block
           | when_stmt

    attribute_list ::= list_19

    attribute ::= AT LPAREN attribute_elem list_21 RPAREN

    attribute_elem ::= id opt_23

    named_decl ::= id COLONCOLON rhs
           | id COLON type COLON expr
           | id COLON type COLON proc_expr

    rhs ::= proc_expr
           | proc_overload
           | DISTINCT type
           | struct_type
           | enum_type
           | union_type
           | bit_set_type
           | bit_field_type
           | matrix_type
           | expr

    proc_overload ::= PROC LBRACE id list_25 RBRACE

    var_decl ::= ids_list COLON type opt_27
           | ids_list COLONEQ expr_list

    type ::= basic_type
           | pointer_type
           | multi_pointer_type
           | array_type
           | slice_type
           | dynamic_array_type
           | map_type
           | proc_type
           | struct_type
           | enum_type
           | union_type
           | bit_set_type
           | bit_field_type
           | matrix_type
           | soa_array_type
           | sparse_array_type
           | DISTINCT type
           | LPAREN type RPAREN
           | poly_param opt_29
           | qualified_id opt_31

    type_arg_list ::= type_arg list_33

    type_arg ::= type
           | expr

    basic_type ::= BOOL
           | B8
           | B16
           | B32
           | B64
           | INT
           | I8
           | I16
           | I32
           | I64
           | I128
           | UINT
           | U8
           | U16
           | U32
           | U64
           | U128
           | UINTPTR
           | F16
           | F32
           | F64
           | COMPLEX32
           | COMPLEX64
           | COMPLEX128
           | QUATERNION64
           | QUATERNION128
           | QUATERNION256
           | RUNE
           | STRING_KW
           | CSTRING
           | RAWPTR
           | TYPEID
           | ANY

    pointer_type ::= CARET type

    multi_pointer_type ::= LBRACKET CARET RBRACKET type

    array_type ::= LBRACKET expr RBRACKET type
           | LBRACKET poly_param RBRACKET type
           | LBRACKET QUESTION RBRACKET type

    slice_type ::= LBRACKET RBRACKET type

    dynamic_array_type ::= LBRACKET DYNAMIC RBRACKET type
           | LBRACKET DYNAMIC SEMI expr RBRACKET type

    map_type ::= MAP LBRACKET type RBRACKET type

    proc_type ::= PROC opt_34 LPAREN opt_35 RPAREN opt_37

    calling_convention ::= STRING

    param_list ::= param list_39

    param ::= ids_list COLON DOTDOT type
           | USING ids_list COLON type
           | ids_list COLON type opt_41
           | ids_list COLONEQ expr
           | poly_param_decl
           | type

    poly_param ::= DOLLAR id

    return_type ::= type
           | LPAREN return_param list_43 RPAREN

    return_param ::= ids_list COLON type
           | type

    struct_type ::= STRUCT opt_44 list_45 LBRACE opt_46 RBRACE

    poly_param_list ::= LPAREN poly_param_group list_48 RPAREN

    poly_param_group ::= poly_param list_50 COLON type opt_52

    poly_param_decl ::= poly_param COLON type opt_54

    struct_tag ::= HASH_ALIGN LPAREN expr RPAREN
           | HASH_MIN_FIELD_ALIGN LPAREN expr RPAREN
           | HASH_PACKED
           | HASH_RAW_UNION
           | HASH_SIMPLE
           | HASH_ALL_OR_NONE
           | WHERE where_condition_list

    struct_field_list ::= struct_field list_56 opt_57

    struct_field ::= opt_58 ids_list COLON type opt_59

    field_tag ::= STRING
           | RAW_STRING

    enum_type ::= ENUM opt_60 LBRACE opt_61 RBRACE

    enum_body ::= enum_field list_63 opt_64

    enum_field ::= id opt_66

    union_type ::= UNION opt_67 list_68 LBRACE opt_69 RBRACE

    union_tag ::= HASH_NO_NIL
           | HASH_SHARED_NIL
           | HASH_MAYBE

    union_body ::= type list_71 opt_72

    bit_set_type ::= BIT_SET LBRACKET bit_set_elem opt_74 RBRACKET

    bit_set_elem ::= expr DOTDOT EQ expr
           | expr DOTDOT LT expr
           | type

    bit_field_type ::= BIT_FIELD type LBRACE opt_75 RBRACE

    bit_field_body ::= bit_field_entry list_77 opt_78

    bit_field_entry ::= id COLON type PIPE expr opt_80

    matrix_type ::= opt_81 MATRIX LBRACKET expr COMMA expr RBRACKET type

    soa_array_type ::= HASH_SOA LBRACKET expr RBRACKET type
           | HASH_SOA LBRACKET QUESTION RBRACKET type
           | HASH_SOA LBRACKET RBRACKET type
           | HASH_SOA LBRACKET DYNAMIC RBRACKET type

    sparse_array_type ::= HASH_SPARSE LBRACKET type RBRACKET type

    proc_expr ::= PROC opt_82 LPAREN opt_83 RPAREN opt_85 opt_86 proc_body

    where_clause ::= WHERE where_condition_list

    where_condition_list ::= where_condition list_88

    where_condition ::= expr grp_89 type
           | expr

    proc_body ::= LBRACE list_90 RBRACE

    stmt ::= labeled_stmt
           | opt_91 named_decl opt_92
           | opt_93 var_decl opt_94
           | assign_stmt opt_95
           | if_stmt
           | for_stmt
           | switch_stmt
           | when_stmt
           | return_stmt opt_96
           | defer_stmt opt_97
           | using_stmt opt_98
           | break_stmt opt_99
           | continue_stmt opt_100
           | fallthrough_stmt opt_101
           | hash_assert_stmt opt_102
           | foreign_block
           | block
           | expr opt_103

    hash_assert_stmt ::= HASH_ASSERT LPAREN where_condition RPAREN

    labeled_stmt ::= id COLON grp_104

    assign_stmt ::= expr_list assign_op expr_list

    assign_op ::= EQ
           | PLUSEQ
           | MINUSEQ
           | STAREQ
           | SLASHEQ
           | PERCENTEQ
           | OP_24085
           | PIPEEQ
           | OP_75598
           | AMPEQ
           | OP_94560
           | LSHIFTEQ
           | RSHIFTEQ
           | OP_67996
           | OP_10697

    if_stmt ::= IF opt_106 expr block opt_109

    simple_stmt ::= var_decl
           | assign_stmt
           | expr

    for_stmt ::= opt_110 FOR block
           | opt_111 FOR opt_112 SEMI opt_113 SEMI opt_114 block
           | opt_115 FOR opt_116 id opt_118 IN expr block
           | opt_119 FOR ids_list IN range_expr block
           | opt_120 FOR expr block

    for_directive ::= HASH_REVERSE
           | HASH_UNROLL

    range_expr ::= expr DOTDOT EQ expr
           | expr DOTDOT LT expr
           | expr

    switch_stmt ::= opt_121 SWITCH opt_123 opt_124 LBRACE list_125 RBRACE
           | opt_126 SWITCH opt_128 id IN expr LBRACE list_129 RBRACE

    switch_case ::= CASE switch_case_expr_list COLON list_130
           | CASE COLON list_131

    switch_case_expr_list ::= switch_case_expr list_133

    switch_case_expr ::= expr DOTDOT EQ expr
           | expr DOTDOT LT expr
           | type
           | expr

    when_stmt ::= WHEN expr when_body opt_136

    when_body ::= LBRACE list_138 RBRACE

    return_stmt ::= RETURN opt_139

    defer_stmt ::= DEFER stmt

    using_stmt ::= USING expr

    break_stmt ::= BREAK opt_140

    continue_stmt ::= CONTINUE opt_141

    fallthrough_stmt ::= FALLTHROUGH

    block ::= LBRACE list_142 RBRACE

    expr ::= primary_expr
           | unary_op expr
           | CAST LPAREN type RPAREN expr
           | TRANSMUTE LPAREN type RPAREN expr
           | AUTO_CAST expr
           | expr binary_op expr
           | expr IF expr ELSE expr
           | expr WHEN expr ELSE expr
           | expr QUESTION expr COLON expr
           | expr OR_ELSE expr
           | expr OR_RETURN
           | expr OR_CONTINUE opt_143
           | expr OR_BREAK opt_144

    unary_op ::= PLUS
           | MINUS
           | TILDE
           | BANG
           | CARET
           | AMP

    binary_op ::= PLUS
           | MINUS
           | STAR
           | SLASH
           | PERCENT
           | OP_24966
           | AMP
           | PIPE
           | TILDE
           | OP_18114
           | LSHIFT
           | RSHIFT
           | ANDAND
           | OROR
           | EQEQ
           | NOTEQ
           | LT
           | LTEQ
           | GT
           | GTEQ
           | IN
           | NOT_IN

    primary_expr ::= operand
           | primary_expr DOT id
           | primary_expr DOT LPAREN type RPAREN
           | primary_expr DOT QUESTION
           | primary_expr LBRACKET expr RBRACKET
           | primary_expr LBRACKET expr COMMA expr RBRACKET
           | primary_expr LBRACKET opt_145 COLON opt_146 RBRACKET
           | primary_expr LBRACKET opt_147 COLON opt_148 COLON expr RBRACKET
           | primary_expr LPAREN opt_149 RPAREN
           | primary_expr CARET
           | primary_expr LBRACE opt_150 RBRACE
           | HASH_ASSERT LPAREN where_condition RPAREN
           | HASH_DEFINED LPAREN id RPAREN
           | HASH_PROCEDURE
           | HASH_LOAD LPAREN expr RPAREN

    operand ::= literal
           | qualified_id opt_152
           | basic_type
           | DOT id
           | LPAREN expr RPAREN
           | LBRACE opt_153 RBRACE
           | proc_expr
           | array_type LBRACE opt_154 RBRACE
           | slice_type LBRACE opt_155 RBRACE
           | dynamic_array_type LBRACE opt_156 RBRACE
           | map_type LBRACE opt_157 RBRACE
           | struct_type LBRACE opt_158 RBRACE
           | enum_type LBRACE opt_159 RBRACE
           | soa_array_type LBRACE opt_160 RBRACE
           | sparse_array_type LBRACE opt_161 RBRACE
           | matrix_type LBRACE opt_162 RBRACE
           | bit_set_type LBRACE opt_163 RBRACE

    qualified_id ::= id opt_165

    call_arg_list ::= call_arg list_167 opt_168

    call_arg ::= opt_170 expr
           | DOTDOT expr

    literal_elem_list ::= literal_elem list_172 opt_173

    literal_elem ::= literal_key EQ expr
           | expr
           | LBRACE opt_174 RBRACE

    literal_key ::= expr DOTDOT EQ expr
           | expr DOTDOT LT expr
           | expr

    literal ::= INTEGER
           | FLOAT
           | IMAG
           | STRING
           | RAW_STRING
           | CHAR
           | NIL
           | TRUE
           | FALSE
           | UNINIT

    ids_list ::= id list_176

    expr_list ::= expr list_178

    id ::= ID

    opt_1 ::= package_decl | $empty

    opt_2 ::= import_list | $empty

    list_3 ::= $empty | list_3 top_decl

    opt_4 ::= id | $empty

    grp_5 ::= STRING | RAW_STRING

    opt_6 ::= attribute_list | $empty

    list_7 ::= $empty | list_7 foreign_entry

    opt_8 ::= attribute_list | $empty

    opt_9 ::= calling_convention | $empty

    opt_10 ::= param_list | $empty

    seq_11 ::= ARROW return_type

    opt_12 ::= seq_11 | $empty

    opt_13 ::= SEMI | $empty

    list_14 ::= import_item | list_14 import_item

    opt_15 ::= id | $empty

    opt_16 ::= attribute_list | $empty

    opt_17 ::= attribute_list | $empty

    opt_18 ::= attribute_list | $empty

    list_19 ::= attribute | list_19 attribute

    seq_20 ::= COMMA attribute_elem

    list_21 ::= $empty | list_21 seq_20

    seq_22 ::= EQ expr

    opt_23 ::= seq_22 | $empty

    seq_24 ::= COMMA id

    list_25 ::= $empty | list_25 seq_24

    seq_26 ::= EQ expr_list

    opt_27 ::= seq_26 | $empty

    seq_28 ::= SLASH type

    opt_29 ::= seq_28 | $empty

    seq_30 ::= LPAREN type_arg_list RPAREN

    opt_31 ::= seq_30 | $empty

    seq_32 ::= COMMA type_arg

    list_33 ::= $empty | list_33 seq_32

    opt_34 ::= calling_convention | $empty

    opt_35 ::= param_list | $empty

    seq_36 ::= ARROW return_type

    opt_37 ::= seq_36 | $empty

    seq_38 ::= COMMA param

    list_39 ::= $empty | list_39 seq_38

    seq_40 ::= EQ expr

    opt_41 ::= seq_40 | $empty

    seq_42 ::= COMMA return_param

    list_43 ::= $empty | list_43 seq_42

    opt_44 ::= poly_param_list | $empty

    list_45 ::= $empty | list_45 struct_tag

    opt_46 ::= struct_field_list | $empty

    seq_47 ::= COMMA poly_param_group

    list_48 ::= $empty | list_48 seq_47

    seq_49 ::= COMMA poly_param

    list_50 ::= $empty | list_50 seq_49

    seq_51 ::= SLASH type

    opt_52 ::= seq_51 | $empty

    seq_53 ::= SLASH type

    opt_54 ::= seq_53 | $empty

    seq_55 ::= COMMA struct_field

    list_56 ::= $empty | list_56 seq_55

    opt_57 ::= COMMA | $empty

    opt_58 ::= USING | $empty

    opt_59 ::= field_tag | $empty

    opt_60 ::= basic_type | $empty

    opt_61 ::= enum_body | $empty

    seq_62 ::= COMMA enum_field

    list_63 ::= $empty | list_63 seq_62

    opt_64 ::= COMMA | $empty

    seq_65 ::= EQ expr

    opt_66 ::= seq_65 | $empty

    opt_67 ::= poly_param_list | $empty

    list_68 ::= $empty | list_68 union_tag

    opt_69 ::= union_body | $empty

    seq_70 ::= COMMA type

    list_71 ::= $empty | list_71 seq_70

    opt_72 ::= COMMA | $empty

    seq_73 ::= SEMI type

    opt_74 ::= seq_73 | $empty

    opt_75 ::= bit_field_body | $empty

    seq_76 ::= COMMA bit_field_entry

    list_77 ::= $empty | list_77 seq_76

    opt_78 ::= COMMA | $empty

    seq_79 ::= WHEN expr ELSE expr

    opt_80 ::= seq_79 | $empty

    opt_81 ::= HASH_ROW_MAJOR | $empty

    opt_82 ::= calling_convention | $empty

    opt_83 ::= param_list | $empty

    seq_84 ::= ARROW return_type

    opt_85 ::= seq_84 | $empty

    opt_86 ::= where_clause | $empty

    seq_87 ::= COMMA where_condition

    list_88 ::= $empty | list_88 seq_87

    grp_89 ::= EQEQ | NOTEQ

    list_90 ::= $empty | list_90 stmt

    opt_91 ::= attribute_list | $empty

    opt_92 ::= SEMI | $empty

    opt_93 ::= attribute_list | $empty

    opt_94 ::= SEMI | $empty

    opt_95 ::= SEMI | $empty

    opt_96 ::= SEMI | $empty

    opt_97 ::= SEMI | $empty

    opt_98 ::= SEMI | $empty

    opt_99 ::= SEMI | $empty

    opt_100 ::= SEMI | $empty

    opt_101 ::= SEMI | $empty

    opt_102 ::= SEMI | $empty

    opt_103 ::= SEMI | $empty

    grp_104 ::= for_stmt | switch_stmt | block

    seq_105 ::= simple_stmt SEMI

    opt_106 ::= seq_105 | $empty

    grp_108 ::= if_stmt | block

    grp_107 ::= ELSE grp_108

    opt_109 ::= grp_107 | $empty

    opt_110 ::= for_directive | $empty

    opt_111 ::= for_directive | $empty

    opt_112 ::= simple_stmt | $empty

    opt_113 ::= expr | $empty

    opt_114 ::= simple_stmt | $empty

    opt_115 ::= for_directive | $empty

    opt_116 ::= AMP | $empty

    seq_117 ::= COMMA id

    opt_118 ::= seq_117 | $empty

    opt_119 ::= for_directive | $empty

    opt_120 ::= for_directive | $empty

    opt_121 ::= HASH_PARTIAL | $empty

    seq_122 ::= simple_stmt SEMI

    opt_123 ::= seq_122 | $empty

    opt_124 ::= expr | $empty

    list_125 ::= $empty | list_125 switch_case

    opt_126 ::= HASH_PARTIAL | $empty

    seq_127 ::= simple_stmt SEMI

    opt_128 ::= seq_127 | $empty

    list_129 ::= $empty | list_129 switch_case

    list_130 ::= $empty | list_130 stmt

    list_131 ::= $empty | list_131 stmt

    seq_132 ::= COMMA switch_case_expr

    list_133 ::= $empty | list_133 seq_132

    grp_135 ::= when_stmt | when_body

    grp_134 ::= ELSE grp_135

    opt_136 ::= grp_134 | $empty

    grp_137 ::= top_decl | stmt

    list_138 ::= $empty | list_138 grp_137

    opt_139 ::= expr_list | $empty

    opt_140 ::= id | $empty

    opt_141 ::= id | $empty

    list_142 ::= $empty | list_142 stmt

    opt_143 ::= id | $empty

    opt_144 ::= id | $empty

    opt_145 ::= expr | $empty

    opt_146 ::= expr | $empty

    opt_147 ::= expr | $empty

    opt_148 ::= expr | $empty

    opt_149 ::= call_arg_list | $empty

    opt_150 ::= literal_elem_list | $empty

    seq_151 ::= LPAREN type_arg_list RPAREN

    opt_152 ::= seq_151 | $empty

    opt_153 ::= literal_elem_list | $empty

    opt_154 ::= literal_elem_list | $empty

    opt_155 ::= literal_elem_list | $empty

    opt_156 ::= literal_elem_list | $empty

    opt_157 ::= literal_elem_list | $empty

    opt_158 ::= literal_elem_list | $empty

    opt_159 ::= literal_elem_list | $empty

    opt_160 ::= literal_elem_list | $empty

    opt_161 ::= literal_elem_list | $empty

    opt_162 ::= literal_elem_list | $empty

    opt_163 ::= literal_elem_list | $empty

    seq_164 ::= DOT id

    opt_165 ::= seq_164 | $empty

    seq_166 ::= COMMA call_arg

    list_167 ::= $empty | list_167 seq_166

    opt_168 ::= COMMA | $empty

    seq_169 ::= id EQ

    opt_170 ::= seq_169 | $empty

    seq_171 ::= COMMA literal_elem

    list_172 ::= $empty | list_172 seq_171

    opt_173 ::= COMMA | $empty

    opt_174 ::= literal_elem_list | $empty

    seq_175 ::= COMMA id

    list_176 ::= $empty | list_176 seq_175

    seq_177 ::= COMMA expr

    list_178 ::= $empty | list_178 seq_177

%End
