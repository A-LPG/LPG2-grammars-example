-- AUTO-GENERATED from antlr/grammars-v4 capnproto by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=CapnprotoParser
%options package=lpg.grammars.capnproto
%options template=dtParserTemplateF.gi
%options import_terminals=CapnprotoLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    document
%End

%Rules
    document ::= file_identifier list_1 opt_2 list_3

    file_identifier ::= FILE_ID SEMI

    namespace_ ::= DOLLAR IDENTIFIER _NAMESPACE LPAREN TEXT RPAREN SEMI

    document_content ::= struct_def
           | interface_def
           | function_def
           | annotation_def
           | const_def
           | enum_def

    struct_def ::= STRUCT type_ opt_4 LBRACE list_5 RBRACE

    struct_content ::= field_def
           | enum_def
           | named_union_def
           | unnamed_union_def
           | interface_def
           | annotation_def
           | struct_def
           | group_def
           | const_def
           | inner_using

    interface_def ::= INTERFACE type_ opt_7 LBRACE list_8 RBRACE

    interface_content ::= field_def
           | enum_def
           | named_union_def
           | unnamed_union_def
           | interface_def
           | struct_def
           | function_def

    field_def ::= IDENTIFIER LOCATOR COLON type_ opt_10 SEMI

    type_ ::= IDENTIFIER opt_11 opt_13

    inner_type ::= LPAREN type_ opt_14 list_17 RPAREN

    enum_def ::= ENUM IDENTIFIER opt_18 LBRACE list_19 RBRACE

    annotation_reference ::= DOLLAR type_ opt_20 LPAREN TEXT RPAREN

    enum_content ::= IDENTIFIER LOCATOR opt_21 SEMI

    named_union_def ::= IDENTIFIER opt_22 _UNION LBRACE list_23 RBRACE

    unnamed_union_def ::= UNION LBRACE list_24 RBRACE

    union_content ::= field_def
           | group_def
           | unnamed_union_def
           | named_union_def

    group_def ::= IDENTIFIER _GROUP LBRACE list_25 RBRACE

    group_content ::= field_def
           | unnamed_union_def
           | named_union_def

    function_def ::= IDENTIFIER opt_26 opt_27 grp_28 opt_31 SEMI

    generic_type_parameters ::= LBRACKET IDENTIFIER list_33 RBRACKET

    function_parameters ::= LPAREN opt_41 RPAREN

    annotation_def ::= ANNOTATION type_ opt_42 COLON type_ SEMI

    annotation_parameters ::= LPAREN STRUCT RPAREN

    const_def ::= CONST IDENTIFIER COLON type_ EQ const_value SEMI

    const_value ::= opt_43 opt_44 IDENTIFIER opt_46
           | INTEGER
           | FLOAT
           | TEXT
           | TRUE
           | FALSE
           | HEXADECIMAL
           | VOID
           | literal_list
           | literal_union
           | literal_bytes

    literal_union ::= LPAREN IDENTIFIER EQ union_mapping list_48 RPAREN

    literal_list ::= LBRACKET const_value list_50 RBRACKET

    literal_bytes ::= HEXADECIMAL

    union_mapping ::= LPAREN IDENTIFIER EQ const_value RPAREN
           | const_value

    inner_using ::= USING IDENTIFIER list_52 opt_54 SEMI

    list_1 ::= $empty | list_1 using_import

    opt_2 ::= namespace_ | $empty

    list_3 ::= $empty | list_3 document_content

    opt_4 ::= annotation_reference | $empty

    list_5 ::= $empty | list_5 struct_content

    seq_6 ::= EXTENDS LPAREN type_ RPAREN

    opt_7 ::= seq_6 | $empty

    list_8 ::= $empty | list_8 interface_content

    seq_9 ::= EQ const_value

    opt_10 ::= seq_9 | $empty

    opt_11 ::= inner_type | $empty

    seq_12 ::= DOT type_

    opt_13 ::= seq_12 | $empty

    opt_14 ::= inner_type | $empty

    opt_15 ::= inner_type | $empty

    seq_16 ::= COMMA type_ opt_15

    list_17 ::= $empty | list_17 seq_16

    opt_18 ::= annotation_reference | $empty

    list_19 ::= $empty | list_19 enum_content

    opt_20 ::= _ANN | $empty

    opt_21 ::= annotation_reference | $empty

    opt_22 ::= LOCATOR | $empty

    list_23 ::= $empty | list_23 union_content

    list_24 ::= $empty | list_24 union_content

    list_25 ::= $empty | list_25 group_content

    opt_26 ::= LOCATOR | $empty

    opt_27 ::= generic_type_parameters | $empty

    grp_28 ::= function_parameters | type_

    grp_30 ::= function_parameters | type_

    grp_29 ::= ARROW grp_30

    opt_31 ::= grp_29 | $empty

    seq_32 ::= COMMA IDENTIFIER

    list_33 ::= $empty | list_33 seq_32

    seq_34 ::= EQ const_value

    opt_35 ::= seq_34 | $empty

    seq_36 ::= EQ const_value

    opt_37 ::= seq_36 | $empty

    seq_38 ::= COMMA IDENTIFIER COLON type_ opt_37

    list_39 ::= $empty | list_39 seq_38

    seq_40 ::= IDENTIFIER COLON type_ opt_35 list_39

    opt_41 ::= seq_40 | $empty

    opt_42 ::= annotation_parameters | $empty

    opt_43 ::= MINUS | $empty

    opt_44 ::= DOT | $empty

    seq_45 ::= DOT IDENTIFIER

    opt_46 ::= seq_45 | $empty

    seq_47 ::= COMMA IDENTIFIER EQ union_mapping

    list_48 ::= $empty | list_48 seq_47

    seq_49 ::= COMMA const_value

    list_50 ::= $empty | list_50 seq_49

    seq_51 ::= DOT IDENTIFIER

    list_52 ::= $empty | list_52 seq_51

    seq_53 ::= EQ type_

    opt_54 ::= seq_53 | $empty

%End
