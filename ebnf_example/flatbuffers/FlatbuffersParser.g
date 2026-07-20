-- FlatBuffers Parser (LPG) — structural port of grammars-v4 FlatBuffers.g4
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Nonterminals: schema / include_ / namespace_decl / type_decl / enum_decl /
-- union_decl / root_decl / field_decl / rpc_decl (language_subset; real_g4_port).

%Options la=3,ebnf
%Options fp=FlatbuffersParser
%options package=lpg.grammars.flatbuffers
%options template=dtParserTemplateF.gi
%options import_terminals=FlatbuffersLexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    schema
%End

%Rules
    -- schema: include_* (decl)* EOF
    schema ::= include_list decl_list
              | include_list
              | decl_list
              | $empty

    include_list ::= include_+

    decl_list ::= decl+

    decl ::= namespace_decl
            | type_decl
            | enum_decl
            | union_decl
            | root_decl
            | file_extension_decl
            | file_identifier_decl
            | attribute_decl
            | rpc_decl

    include_ ::= INCLUDE STRING SEMI
                | NATIVE_INCLUDE STRING SEMI

    namespace_decl ::= NAMESPACE ns_ident SEMI

    attribute_decl ::= ATTRIBUTE STRING SEMI

    type_decl ::= TABLE IDENTIFIER metadata LBRACE field_list RBRACE
                 | TABLE IDENTIFIER metadata LBRACE RBRACE
                 | STRUCT IDENTIFIER metadata LBRACE field_list RBRACE
                 | STRUCT IDENTIFIER metadata LBRACE RBRACE

    field_list ::= field_decl+

    enum_decl ::= ENUM IDENTIFIER opt_enum_type metadata LBRACE enumval_list RBRACE

    opt_enum_type ::= (COLON type_)?

    enumval_list ::= enumval_decl
                    | enumval_list COMMA enumval_decl
                    | enumval_list COMMA

    enumval_decl ::= ns_ident
                    | ns_ident EQ integer_const

    union_decl ::= UNION IDENTIFIER metadata LBRACE unionval_list RBRACE

    unionval_list ::= unionval_decl
                     | unionval_list COMMA unionval_decl
                     | unionval_list COMMA

    unionval_decl ::= ns_ident
                     | ns_ident COLON ns_ident
                     | ns_ident EQ integer_const
                     | ns_ident COLON ns_ident EQ integer_const

    root_decl ::= ROOT_TYPE IDENTIFIER SEMI

    file_extension_decl ::= FILE_EXTENSION STRING SEMI

    file_identifier_decl ::= FILE_IDENTIFIER STRING SEMI

    field_decl ::= IDENTIFIER COLON type_ opt_default metadata SEMI

    opt_default ::= (EQ scalar)?

    rpc_decl ::= RPC_SERVICE IDENTIFIER LBRACE rpc_method_list RBRACE

    rpc_method_list ::= rpc_method+

    rpc_method ::= IDENTIFIER LPAREN IDENTIFIER RPAREN COLON IDENTIFIER metadata SEMI

    type_ ::= LBRACKET type_ RBRACKET
             | LBRACKET type_ COLON integer_const RBRACKET
             | base_type
             | ns_ident

    base_type ::= bool
                 | byte
                 | ubyte
                 | short
                 | ushort
                 | int
                 | uint
                 | float
                 | long
                 | ulong
                 | double
                 | int8
                 | uint8
                 | int16
                 | uint16
                 | int32
                 | uint32
                 | int64
                 | uint64
                 | float32
                 | float64
                 | string

    metadata ::= (LPAREN meta_list RPAREN)?

    meta_list ::= meta_item (COMMA meta_item)*

    meta_item ::= IDENTIFIER
                 | IDENTIFIER COLON single_value

    scalar ::= NUMBER
              | IDENTIFIER

    single_value ::= scalar
                    | STRING

    integer_const ::= NUMBER

    ns_ident ::= IDENTIFIER (DOT IDENTIFIER)*
%End
