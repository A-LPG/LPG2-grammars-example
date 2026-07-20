-- AUTO-GENERATED from antlr/grammars-v4 idl by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
%Options fp=IdlParser
%options package=lpg.grammars.idl
%options template=dtParserTemplateF.gi
%options import_terminals=IdlLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    specification
%End

%Rules
    specification ::= listn0001 listn0002

    definition ::= annapps grpn0003

    module ::= KW_MODULE identifier LBRACE listn0004 RBRACE

    interface_or_forward_decl ::= annapps grpn0005

    interface_decl ::= interface_header LBRACE interface_body RBRACE

    forward_decl ::= optn0007 KW_INTERFACE identifier

    interface_header ::= optn0009 KW_INTERFACE identifier optn0010

    interface_body ::= listn0011

    export_ ::= annapps grpn0012

    interface_inheritance_spec ::= COLON interface_name listn0014

    interface_name ::= a_scoped_name

    a_scoped_name ::= annapps scoped_name

    scoped_name ::= optn0015 IDENTIFIER listn0017

    value ::= annapps grpn0018

    value_forward_decl_nt ::= optn0019 KW_VALUETYPE identifier

    value_box_decl_nt ::= KW_VALUETYPE identifier type_spec

    value_abs_decl_nt ::= KW_ABSTRACT KW_VALUETYPE identifier value_inheritance_spec_nt LBRACE listn0020 RBRACE

    value_decl_nt ::= value_header_nt LBRACE listn0021 RBRACE

    value_header_nt ::= optn0022 KW_VALUETYPE identifier value_inheritance_spec_nt

    value_inheritance_spec_nt ::= optn0027 optn0031

    value_name_nt ::= a_scoped_name

    value_element_nt ::= grpn0032

    state_member ::= annapps grpn0033 type_spec declarators SEMI

    init_decl ::= annapps KW_FACTORY identifier LBRACKET optn0034 RBRACKET optn0035 SEMI

    init_param_decls ::= init_param_decl listn0037

    init_param_decl ::= annapps init_param_attribute annapps param_type_spec annapps simple_declarator

    init_param_attribute ::= KW_IN

    const_decl ::= KW_CONST const_type identifier EQ const_exp

    const_type ::= annapps grpn0038

    const_exp ::= or_expr

    or_expr ::= xor_expr listn0040

    xor_expr ::= and_expr listn0042

    and_expr ::= shift_expr listn0044

    shift_expr ::= add_expr listn0047

    add_expr ::= mult_expr listn0050

    mult_expr ::= unary_expr listn0053

    unary_expr ::= unary_operator primary_expr
                  | primary_expr

    unary_operator ::= grpn0054

    primary_expr ::= scoped_name
                    | literal
                    | LBRACKET const_exp RBRACKET

    literal ::= grpn0055

    positive_int_const ::= const_exp

    type_decl ::= KW_TYPEDEF annapps type_declarator
                 | struct_type
                 | union_type
                 | enum_type
                 | bitset_type
                 | bitmask_type
                 | KW_NATIVE annapps simple_declarator
                 | constr_forward_decl

    type_declarator ::= type_spec declarators

    type_spec ::= simple_type_spec
                 | constr_type_spec

    simple_type_spec ::= base_type_spec
                        | template_type_spec
                        | scoped_name

    bitfield_type_spec_nt ::= integer_type
                             | boolean_type
                             | octet_type

    base_type_spec ::= floating_pt_type
                      | integer_type
                      | char_type
                      | wide_char_type
                      | boolean_type
                      | octet_type
                      | any_type
                      | object_type
                      | value_base_type_nt

    template_type_spec ::= sequence_type
                          | set_type
                          | map_type
                          | string_type
                          | wide_string_type
                          | fixed_pt_type

    constr_type_spec ::= struct_type
                        | union_type
                        | enum_type
                        | bitset_type
                        | bitmask_type

    simple_declarators ::= identifier listn0057

    declarators ::= declarator listn0059

    declarator ::= annapps grpn0060

    simple_declarator ::= IDENTIFIER

    complex_declarator ::= array_declarator

    floating_pt_type ::= grpn0061

    integer_type ::= signed_int
                    | unsigned_int

    signed_int ::= signed_short_int
                  | signed_long_int
                  | signed_longlong_int
                  | signed_tiny_int

    signed_tiny_int ::= KW_INT8

    signed_short_int ::= KW_SHORT
                        | KW_INT16

    signed_long_int ::= KW_LONG
                       | KW_INT32

    signed_longlong_int ::= KW_LONG KW_LONG
                           | KW_INT64

    unsigned_int ::= unsigned_short_int
                    | unsigned_long_int
                    | unsigned_longlong_int
                    | unsigned_tiny_int

    unsigned_tiny_int ::= KW_UINT8

    unsigned_short_int ::= KW_UNSIGNED KW_SHORT
                          | KW_UINT16

    unsigned_long_int ::= KW_UNSIGNED KW_LONG
                         | KW_UINT32

    unsigned_longlong_int ::= KW_UNSIGNED KW_LONG KW_LONG
                             | KW_UINT64

    char_type ::= KW_CHAR

    wide_char_type ::= KW_WCHAR

    boolean_type ::= KW_BOOLEAN

    octet_type ::= KW_OCTET

    any_type ::= KW_ANY

    object_type ::= KW_OBJECT

    annotation_decl ::= annotation_def
                       | annotation_forward_dcl

    annotation_def ::= annotation_header LBRACE annotation_body RBRACE

    annotation_header ::= KW_AT_ANNOTATION identifier optn0062

    annotation_inheritance_spec ::= COLON scoped_name

    annotation_body ::= listn0064

    annotation_member ::= const_type simple_declarator optn0066 SEMI

    annotation_forward_dcl ::= KW_AT_ANNOTATION scoped_name

    bitset_type ::= KW_BITSET identifier optn0068 LBRACE bitfield RBRACE

    bitfield ::= listn0071

    bitfield_spec_nt ::= annapps KW_BITFIELD LT positive_int_const optn0073 GT

    bitmask_type ::= KW_BITMASK identifier LBRACE bit_values RBRACE

    bit_values ::= identifier listn0075

    struct_type ::= KW_STRUCT identifier optn0077 LBRACE member_list_nt RBRACE

    member_list_nt ::= listn0078

    member ::= annapps type_spec declarators SEMI

    union_type ::= KW_UNION identifier KW_SWITCH LBRACKET annapps switch_type_spec RBRACKET LBRACE switch_body RBRACE

    switch_type_spec ::= integer_type
                        | char_type
                        | wide_char_type
                        | octet_type
                        | boolean_type
                        | enum_type
                        | scoped_name

    switch_body ::= listn0079

    case_stmt ::= listn0080 element_spec SEMI

    case_label ::= annapps grpn0081

    element_spec ::= annapps type_spec declarator

    enum_type ::= KW_ENUM identifier LBRACE enumerator listn0083 RBRACE

    enumerator ::= identifier

    sequence_type ::= KW_SEQUENCE LT annapps simple_type_spec optn0085 GT

    set_type ::= KW_SET LT simple_type_spec optn0087 GT

    map_type ::= KW_MAP LT simple_type_spec COMMA simple_type_spec optn0089 GT

    string_type ::= KW_STRING optn0091

    wide_string_type ::= KW_WSTRING optn0093

    array_declarator ::= IDENTIFIER listn0094

    fixed_array_size ::= LBRACKET positive_int_const RBRACKET

    attr_decl ::= readonly_attr_spec
                 | attr_spec

    except_decl ::= KW_EXCEPTION identifier LBRACE listn0095 RBRACE

    op_decl ::= optn0096 op_type_spec identifier parameter_decls optn0097 optn0098

    op_attribute ::= KW_ONEWAY

    op_type_spec ::= annapps grpn0099

    parameter_decls ::= (LBRACKET optn0103 RBRACKET)?

    param_decl ::= annapps param_attribute annapps param_type_spec annapps simple_declarator

    param_attribute ::= KW_IN
                       | KW_OUT
                       | KW_INOUT

    raises_expr ::= KW_RAISES LBRACKET a_scoped_name listn0105 RBRACKET

    context_expr ::= KW_CONTEXT LBRACKET STRING listn0107 RBRACKET

    param_type_spec ::= base_type_spec
                       | string_type
                       | wide_string_type
                       | scoped_name

    fixed_pt_type ::= KW_FIXED LT positive_int_const COMMA positive_int_const GT

    fixed_pt_const_type ::= KW_FIXED

    value_base_type_nt ::= KW_VALUEBASE

    constr_forward_decl ::= KW_STRUCT IDENTIFIER
                           | KW_UNION IDENTIFIER

    import_decl ::= annapps KW_IMPORT annapps imported_scope SEMI

    imported_scope ::= scoped_name
                      | STRING

    type_id_decl ::= KW_TYPEID a_scoped_name STRING

    type_prefix_decl ::= KW_TYPEPREFIX a_scoped_name STRING

    readonly_attr_spec ::= KW_READONLY KW_ATTRIBUTE annapps param_type_spec readonly_attr_declarator

    readonly_attr_declarator ::= annapps simple_declarator grpn0108

    attr_spec ::= KW_ATTRIBUTE annapps param_type_spec attr_declarator

    attr_declarator ::= annapps simple_declarator grpn0111

    attr_raises_expr ::= get_excep_expr optn0114
                        | set_excep_expr

    get_excep_expr ::= KW_GETRAISES exception_list

    set_excep_expr ::= KW_SETRAISES exception_list

    exception_list ::= LBRACKET a_scoped_name listn0116 RBRACKET

    component ::= component_decl_nt
                 | component_forward_decl_nt

    component_forward_decl_nt ::= KW_COMPONENT IDENTIFIER

    component_decl_nt ::= component_header_nt LBRACE component_body_nt RBRACE

    component_header_nt ::= KW_COMPONENT identifier optn0117 optn0118

    supported_interface_spec ::= KW_SUPPORTS a_scoped_name listn0120

    component_inheritance_spec_nt ::= COLON a_scoped_name

    component_body_nt ::= listn0121

    component_export_nt ::= annapps grpn0122

    provides_decl ::= KW_PROVIDES interface_type IDENTIFIER

    interface_type ::= annapps grpn0123

    uses_decl ::= KW_USES optn0124 interface_type IDENTIFIER

    emits_decl ::= KW_EMITS a_scoped_name IDENTIFIER

    publishes_decl ::= KW_PUBLISHES a_scoped_name IDENTIFIER

    consumes_decl ::= KW_CONSUMES a_scoped_name IDENTIFIER

    home_decl ::= home_header home_body

    home_header ::= KW_HOME identifier optn0125 optn0126 KW_MANAGES a_scoped_name optn0127

    home_inheritance_spec ::= COLON a_scoped_name

    primary_key_spec ::= KW_PRIMARYKEY a_scoped_name

    home_body ::= LBRACE listn0128 RBRACE

    home_export ::= export_
                   | annapps grpn0129 SEMI

    factory_decl ::= KW_FACTORY identifier LBRACKET optn0130 RBRACKET optn0131

    finder_decl ::= KW_FINDER identifier LBRACKET optn0132 RBRACKET optn0133

    event ::= grpn0134

    event_forward_decl_nt ::= optn0135 KW_EVENTTYPE IDENTIFIER

    event_abs_decl_nt ::= KW_ABSTRACT KW_EVENTTYPE identifier value_inheritance_spec_nt LBRACE listn0136 RBRACE

    event_decl_nt ::= event_header_nt LBRACE listn0137 RBRACE

    event_header_nt ::= optn0138 KW_EVENTTYPE identifier value_inheritance_spec_nt

    annapps ::= listn0139

    annotation_appl ::= AT scoped_name optn0141

    annotation_appl_params_nt ::= const_exp
                                 | annotation_appl_param_nt listn0143

    annotation_appl_param_nt ::= IDENTIFIER EQ const_exp

    identifier ::= annapps IDENTIFIER

    listn0001 ::= (listn0001 import_decl)?

    listn0002 ::= definition+

    grpn0003 ::= type_decl SEMI
                | const_decl SEMI
                | except_decl SEMI
                | interface_or_forward_decl SEMI
                | module SEMI
                | value SEMI
                | type_id_decl SEMI
                | type_prefix_decl SEMI
                | event SEMI
                | component SEMI
                | home_decl SEMI
                | annotation_decl SEMI

    listn0004 ::= definition+

    grpn0005 ::= interface_decl
                | forward_decl

    grpn0006 ::= KW_ABSTRACT
                | KW_LOCAL

    optn0007 ::= grpn0006?

    grpn0008 ::= KW_ABSTRACT
                | KW_LOCAL

    optn0009 ::= grpn0008?

    optn0010 ::= interface_inheritance_spec?

    listn0011 ::= (listn0011 export_)?

    grpn0012 ::= type_decl SEMI
                | const_decl SEMI
                | except_decl SEMI
                | attr_decl SEMI
                | op_decl SEMI
                | type_id_decl SEMI
                | type_prefix_decl SEMI

    seqn0013 ::= COMMA interface_name

    listn0014 ::= (listn0014 seqn0013)?

    optn0015 ::= DOUBLE_COLON?

    seqn0016 ::= DOUBLE_COLON IDENTIFIER

    listn0017 ::= (listn0017 seqn0016)?

    grpn0018 ::= value_decl_nt
                | value_abs_decl_nt
                | value_box_decl_nt
                | value_forward_decl_nt

    optn0019 ::= KW_ABSTRACT?

    listn0020 ::= (listn0020 export_)?

    listn0021 ::= (listn0021 value_element_nt)?

    optn0022 ::= KW_CUSTOM?

    optn0023 ::= KW_TRUNCATABLE?

    seqn0024 ::= COMMA value_name_nt

    listn0025 ::= (listn0025 seqn0024)?

    seqn0026 ::= COLON optn0023 value_name_nt listn0025

    optn0027 ::= seqn0026?

    seqn0028 ::= COMMA interface_name

    listn0029 ::= (listn0029 seqn0028)?

    seqn0030 ::= KW_SUPPORTS interface_name listn0029

    optn0031 ::= seqn0030?

    grpn0032 ::= export_
                | state_member
                | init_decl

    grpn0033 ::= KW_PUBLIC annapps
                | KW_PRIVATE annapps

    optn0034 ::= init_param_decls?

    optn0035 ::= raises_expr?

    seqn0036 ::= COMMA init_param_decl

    listn0037 ::= (listn0037 seqn0036)?

    grpn0038 ::= integer_type
                | char_type
                | wide_char_type
                | boolean_type
                | floating_pt_type
                | string_type
                | wide_string_type
                | fixed_pt_const_type
                | scoped_name
                | octet_type

    seqn0039 ::= PIPE xor_expr

    listn0040 ::= (listn0040 seqn0039)?

    seqn0041 ::= CARET and_expr

    listn0042 ::= (listn0042 seqn0041)?

    seqn0043 ::= AMPERSAND shift_expr

    listn0044 ::= (listn0044 seqn0043)?

    grpn0046 ::= RIGHT_SHIFT
                | LEFT_SHIFT

    grpn0045 ::= grpn0046 add_expr

    listn0047 ::= (listn0047 grpn0045)?

    grpn0049 ::= PLUS
                | MINUS

    grpn0048 ::= grpn0049 mult_expr

    listn0050 ::= (listn0050 grpn0048)?

    grpn0052 ::= STAR
                | SLASH
                | PERCENT

    grpn0051 ::= grpn0052 unary_expr

    listn0053 ::= (listn0053 grpn0051)?

    grpn0054 ::= MINUS
                | PLUS
                | TILDE

    grpn0055 ::= NUMBER
                | INTEGER_LITERAL
                | OCTAL_LITERAL
                | STRING
                | WIDE_STRING_LITERAL
                | CHARACTER_LITERAL
                | WIDE_CHARACTER_LITERAL
                | FIXED_PT_LITERAL
                | FLOATING_PT_LITERAL
                | BOOLEAN_LITERAL

    seqn0056 ::= COMMA identifier

    listn0057 ::= (listn0057 seqn0056)?

    seqn0058 ::= COMMA declarator

    listn0059 ::= (listn0059 seqn0058)?

    grpn0060 ::= simple_declarator
                | complex_declarator

    grpn0061 ::= KW_FLOAT
                | KW_DOUBLE
                | KW_LONG KW_DOUBLE

    optn0062 ::= annotation_inheritance_spec?

    grpn0063 ::= annotation_member
                | enum_type SEMI
                | const_decl SEMI
                | KW_TYPEDEF type_declarator SEMI

    listn0064 ::= (listn0064 grpn0063)?

    seqn0065 ::= KW_DEFAULT const_exp

    optn0066 ::= seqn0065?

    seqn0067 ::= COLON scoped_name

    optn0068 ::= seqn0067?

    optn0069 ::= simple_declarators?

    seqn0070 ::= bitfield_spec_nt optn0069 SEMI

    listn0071 ::= seqn0070+

    seqn0072 ::= COMMA bitfield_type_spec_nt

    optn0073 ::= seqn0072?

    seqn0074 ::= COMMA identifier

    listn0075 ::= (listn0075 seqn0074)?

    seqn0076 ::= COLON scoped_name

    optn0077 ::= seqn0076?

    listn0078 ::= (listn0078 member)?

    listn0079 ::= case_stmt+

    listn0080 ::= case_label+

    grpn0081 ::= KW_CASE const_exp COLON
                | KW_DEFAULT COLON

    seqn0082 ::= COMMA enumerator

    listn0083 ::= (listn0083 seqn0082)?

    seqn0084 ::= COMMA positive_int_const

    optn0085 ::= seqn0084?

    seqn0086 ::= COMMA positive_int_const

    optn0087 ::= seqn0086?

    seqn0088 ::= COMMA positive_int_const

    optn0089 ::= seqn0088?

    seqn0090 ::= LT positive_int_const GT

    optn0091 ::= seqn0090?

    seqn0092 ::= LT positive_int_const GT

    optn0093 ::= seqn0092?

    listn0094 ::= fixed_array_size+

    listn0095 ::= (listn0095 member)?

    optn0096 ::= op_attribute?

    optn0097 ::= raises_expr?

    optn0098 ::= context_expr?

    grpn0099 ::= param_type_spec
                | KW_VOID

    seqn0100 ::= COMMA param_decl

    listn0101 ::= (listn0101 seqn0100)?

    seqn0102 ::= param_decl listn0101

    optn0103 ::= seqn0102?

    seqn0104 ::= COMMA a_scoped_name

    listn0105 ::= (listn0105 seqn0104)?

    seqn0106 ::= COMMA STRING

    listn0107 ::= (listn0107 seqn0106)?

    seqn0109 ::= COMMA annapps simple_declarator

    listn0110 ::= (listn0110 seqn0109)?

    grpn0108 ::= raises_expr
                | listn0110

    seqn0112 ::= COMMA annapps simple_declarator

    listn0113 ::= (listn0113 seqn0112)?

    grpn0111 ::= attr_raises_expr
                | listn0113

    optn0114 ::= set_excep_expr?

    seqn0115 ::= COMMA a_scoped_name

    listn0116 ::= (listn0116 seqn0115)?

    optn0117 ::= component_inheritance_spec_nt?

    optn0118 ::= supported_interface_spec?

    seqn0119 ::= COMMA a_scoped_name

    listn0120 ::= (listn0120 seqn0119)?

    listn0121 ::= (listn0121 component_export_nt)?

    grpn0122 ::= provides_decl SEMI
                | uses_decl SEMI
                | emits_decl SEMI
                | publishes_decl SEMI
                | consumes_decl SEMI
                | attr_decl SEMI

    grpn0123 ::= scoped_name
                | KW_OBJECT

    optn0124 ::= KW_MULTIPLE?

    optn0125 ::= home_inheritance_spec?

    optn0126 ::= supported_interface_spec?

    optn0127 ::= primary_key_spec?

    listn0128 ::= (listn0128 home_export)?

    grpn0129 ::= factory_decl
                | finder_decl

    optn0130 ::= init_param_decls?

    optn0131 ::= raises_expr?

    optn0132 ::= init_param_decls?

    optn0133 ::= raises_expr?

    grpn0134 ::= event_decl_nt
                | event_abs_decl_nt
                | event_forward_decl_nt

    optn0135 ::= KW_ABSTRACT?

    listn0136 ::= (listn0136 export_)?

    listn0137 ::= (listn0137 value_element_nt)?

    optn0138 ::= KW_CUSTOM?

    listn0139 ::= (listn0139 annotation_appl)?

    seqn0140 ::= LBRACKET annotation_appl_params_nt RBRACKET

    optn0141 ::= seqn0140?

    seqn0142 ::= COMMA annotation_appl_param_nt

    listn0143 ::= (listn0143 seqn0142)?
%End
