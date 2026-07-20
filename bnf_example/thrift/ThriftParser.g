-- AUTO-GENERATED from antlr/grammars-v4 thrift by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=ThriftParser
%options package=lpg.grammars.thrift
%options template=dtParserTemplateF.gi
%options import_terminals=ThriftLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    document
%End

%Rules
    document ::= list_001 list_002

    header ::= include_
           | namespace_

    include_ ::= INCLUDE LITERAL

    namespace_ ::= NAMESPACE STAR group_003
           | NAMESPACE IDENTIFIER group_004 opt_005

    definition ::= const_rule
           | typedef_
           | enum_rule
           | senum
           | struct_
           | union_
           | exception
           | service

    const_rule ::= CONST field_type IDENTIFIER opt_007 opt_008

    typedef_ ::= TYPEDEF field_type IDENTIFIER opt_009

    enum_rule ::= ENUM IDENTIFIER LBRACE list_010 RBRACE opt_011

    enum_field ::= IDENTIFIER opt_013 opt_014 opt_015

    senum ::= SENUM IDENTIFIER LBRACE list_018 RBRACE opt_019

    struct_ ::= STRUCT IDENTIFIER LBRACE list_020 RBRACE opt_021

    union_ ::= UNION IDENTIFIER LBRACE list_022 RBRACE opt_023

    exception ::= EXCEPTION IDENTIFIER LBRACE list_024 RBRACE opt_025

    service ::= SERVICE IDENTIFIER opt_027 LBRACE list_028 RBRACE opt_029

    field ::= opt_030 opt_031 field_type IDENTIFIER opt_033 opt_034 opt_035

    field_id ::= integer COLON

    field_requirement ::= REQUIRED
           | OPTIONAL

    function_ ::= opt_036 function_type IDENTIFIER LPAREN list_037 RPAREN opt_038 opt_039 opt_040

    oneway ::= ONEWAY

    function_type ::= field_type
           | VOID

    throws_list ::= THROWS LPAREN list_042 RPAREN

    type_annotations ::= LPAREN list_043 RPAREN

    type_annotation ::= IDENTIFIER opt_045 opt_046

    annotation_value ::= integer
           | LITERAL

    field_type ::= base_type
           | IDENTIFIER
           | container_type

    base_type ::= real_base_type

    container_type ::= group_048

    map_type ::= MAP LT field_type COMMA field_type GT

    set_type ::= SET LT field_type GT

    list_type ::= LIST LT field_type GT

        const_value ::= integer
           | DOUBLE
           | LITERAL
           | IDENTIFIER
           | const_list
           | const_map

    integer ::= INTEGER

    const_list ::= LBRACKET list_055 RBRACKET

    const_map_entry ::= const_value COLON const_value opt_056

    const_map ::= LBRACE list_057 RBRACE

    list_separator ::= COMMA
           | SEMI

    real_base_type ::= BOOL
           | BYTE
           | I16
           | I32
           | I64
           | DOUBLE
           | STRING
           | BINARY

    list_001 ::= $empty | list_001 header

    list_002 ::= $empty | list_002 definition

    group_003 ::= IDENTIFIER | LITERAL

    group_004 ::= IDENTIFIER | LITERAL

    opt_005 ::= type_annotations | $empty

    seq_006 ::= EQ const_value

    opt_007 ::= seq_006 | $empty

    opt_008 ::= list_separator | $empty

    opt_009 ::= type_annotations | $empty

    list_010 ::= $empty | list_010 enum_field

    opt_011 ::= type_annotations | $empty

    seq_012 ::= EQ integer

    opt_013 ::= seq_012 | $empty

    opt_014 ::= type_annotations | $empty

    opt_015 ::= list_separator | $empty

    opt_016 ::= list_separator | $empty

    seq_017 ::= LITERAL opt_016

    list_018 ::= $empty | list_018 seq_017

    opt_019 ::= type_annotations | $empty

    list_020 ::= $empty | list_020 field

    opt_021 ::= type_annotations | $empty

    list_022 ::= $empty | list_022 field

    opt_023 ::= type_annotations | $empty

    list_024 ::= $empty | list_024 field

    opt_025 ::= type_annotations | $empty

    seq_026 ::= EXTENDS IDENTIFIER

    opt_027 ::= seq_026 | $empty

    list_028 ::= $empty | list_028 function_

    opt_029 ::= type_annotations | $empty

    opt_030 ::= field_id | $empty

    opt_031 ::= field_requirement | $empty

    seq_032 ::= EQ const_value

    opt_033 ::= seq_032 | $empty

    opt_034 ::= type_annotations | $empty

    opt_035 ::= list_separator | $empty

    opt_036 ::= oneway | $empty

    list_037 ::= $empty | list_037 field

    opt_038 ::= throws_list | $empty

    opt_039 ::= type_annotations | $empty

    opt_040 ::= list_separator | $empty


    list_042 ::= $empty | list_042 field

    list_043 ::= $empty | list_043 type_annotation

    seq_044 ::= EQ annotation_value

    opt_045 ::= seq_044 | $empty

    opt_046 ::= list_separator | $empty

        group_048 ::= map_type | set_type | list_type

                    opt_053 ::= list_separator | $empty

    seq_054 ::= const_value opt_053

    list_055 ::= $empty | list_055 seq_054

    opt_056 ::= list_separator | $empty

    list_057 ::= $empty | list_057 const_map_entry

%End
