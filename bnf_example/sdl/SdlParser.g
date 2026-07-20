-- AUTO-GENERATED from antlr/grammars-v4 sdl by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=SdlParser
%options package=lpg.grammars.sdl
%options template=dtParserTemplateF.gi
%options import_terminals=SdlLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    harness_smoke
%End

%Rules

    harness_smoke ::= MODULE IDENTIFIER SEMI
           | MODULE IDENTIFIER
    program ::= module_list

    module_list ::= module_declaration
           | module_list module_declaration

    module_declaration ::= module_statement module_body end_module_statement
           | local_assignment
           | COMMENT

    module_statement ::= m_name opt_1 SEMI

    m_name ::= MODULE namestring

    m_options ::= IDENT namestring

    module_body ::= module_body statement | $empty

    end_module_statement ::= END_MODULE name_option SEMI

    name_option ::= namestring

    statement ::= local_assignment
           | constant_statement
           | entry_statement
           | aggregate_statement
           | item_statement
           | declare_statement
           | ifsymbol_statement
           | conditional_statement
           | literal_statement
           | read_statement
           | COMMENT
           | include_clause
           | SEMI

    include_clause ::= INCLUDE include_name SEMI

    include_name ::= STRING_LITERAL

    read_statement ::= READ STRING_LITERAL SEMI

    stat_list ::= stat_list statement
           | statement

    local_assignment ::= local_symbol EQ expression SEMI

    local_symbol ::= LOCAL_NAME

    constant_statement ::= constant_key constant_body SEMI

    constant_key ::= CONSTANT

    constant_body ::= constant_phrase | $empty
           | constant_body COMMA comment_list constant_phrase

    constant_phrase ::= name_or_list EQUALS value_or_string

    value_or_string ::= constant_value constant_options
           | STRING string_value string_options

    comment_list ::= comment_list COMMENT | $empty

    name_or_list ::= c_name_1
           | LPAREN comment_list name_list RPAREN c_comment_list
           | LPAREN comment_list name_list c_comma2 RPAREN c_comment_list

    name_list ::= c_name_1 | $empty
           | c_comma1 c_name_1
           | name_list c_comma2 c_name_1

    c_name_1 ::= c_name c_comment_list

    c_name ::= namestring

    c_comma1 ::= c_comma | $empty
           | c_comma1 c_comma

    c_comma2 ::= c_comma | $empty
           | c_comma2 c_comma

    c_comma ::= COMMA c_comment_list

    c_comment_list ::= c_comment_list COMMENT | $empty

    constant_value ::= expression

    constant_options ::= constant_options INCREMENT expression | $empty
           | constant_options PREFIX namestring
           | constant_options TAG namestring
           | constant_options COUNTER LOCAL_NAME
           | constant_options TYPENAME typestring

    string_value ::= STRING_LITERAL

    string_options ::= string_options PREFIX namestring | $empty
           | string_options TAG namestring

    namestring ::= NAME
           | STRING_LITERAL

    entry_statement ::= entry_clause entry_option SEMI

    entry_clause ::= ENTRY namestring

    entry_option ::= entry_option parameter_keyword LPAREN param_list RPAREN | $empty
           | entry_option return_keyword ret_data_type return_name_option
           | entry_option return_keyword ret_data_type return_name_option COMMENT
           | entry_option VARIABLE
           | entry_option TYPENAME typestring
           | entry_option ALIAS namestring
           | entry_option LINKAGE namestring

    parameter_keyword ::= PARAMETER

    return_keyword ::= RETURNS

    ret_data_type ::= data_or_user_type
           | VOID

    return_name_option ::= NAMED namestring

    param_list ::= comment_list p1 param p_opt p2 | $empty
           | param_list COMMA comment_list p1 param p_opt p2

    p1 ::= $empty

    p2 ::= $empty

    param ::= data_or_user_type
           | ANY

    p_opt ::= p_opt VALUE | $empty
           | p_opt DESCRIPTOR
           | p_opt RTL_STR_DESC
           | p_opt DIMENSION dimen_expr
           | p_opt IN
           | p_opt OUT
           | p_opt LIST
           | p_opt NAMED namestring
           | p_opt DEFAULT expression
           | p_opt OPTIONAL
           | p_opt REFERENCE
           | p_opt COMMENT
           | p_opt TYPENAME typestring

    typestring ::= NAME
           | STRING_LITERAL

    dimen_expr ::= expression
           | lodimen COLON expression
           | STAR

    lodimen ::= expression

    data_type ::= BYTE sign_option
           | WORD sign_option
           | LONGWORD sign_option
           | QUADWORD sign_option
           | OCTAWORD sign_option
           | F_FLOATING complex_option
           | D_FLOATING complex_option
           | G_FLOATING complex_option
           | H_FLOATING complex_option
           | DECIMAL PRECISION LPAREN prec COMMA scale RPAREN
           | BITFIELD vield_options
           | CHARACTER char_options
           | BOOLEAN
           | ADDRESS object_option
           | POINTER object_option
           | POINTER_LONG object_option
           | POINTER_QUAD object_option
           | POINTER_HW object_option
           | INTEGER_BYTE sign_option
           | INTEGER_WORD sign_option
           | INTEGER_LONG sign_option
           | INTEGER_QUAD sign_option
           | INTEGER_HW sign_option
           | INTEGER sign_option
           | HARDWARE_ADDRESS object_option
           | HARDWARE_INTEGER sign_option

    object_option ::= obj_paren object_type base_option RPAREN

    obj_paren ::= LPAREN

    object_type ::= data_or_user_type dimension_option
           | entry_object entry_option

    entry_object ::= ENTRY

    base_option ::= basealign_option

    sign_option ::= SIGNED
           | UNSIGNED

    complex_option ::= COMPLEX

    prec ::= expression

    scale ::= expression

    vield_options ::= vield_options MASK | $empty
           | vield_options LENGTH expression
           | vield_options SIGNED
           | vield_options UNSIGNED

    char_options ::= char_options VARYING | $empty
           | char_options LENGTH length_expr

    length_expr ::= STAR
           | expression

    dimension_option ::= DIMENSION dimen_expr

    aggregate_statement ::= aggregate_dcl aggregate_body aggregate_end

    aggregate_dcl ::= aggregate_clause aggregate_type impl_union_datatype aggr_options SEMI

    aggregate_clause ::= AGGREGATE namestring

    aggregate_type ::= STRUCTURE
           | UNION

    impl_union_datatype ::= data_type

    aggr_options ::= aggr_options COMMON | $empty
           | aggr_options GLOBAL
           | aggr_options TYPEDEF
           | aggr_options ALIGN
           | aggr_options NOALIGN
           | aggr_options basealign_option
           | aggr_options PREFIX namestring
           | aggr_options TAG namestring
           | aggr_options DIMENSION dimen_expr
           | aggr_options ORIGIN namestring
           | aggr_options BASED namestring
           | aggr_options BASED
           | aggr_options MARKER namestring
           | aggr_options FILL

    aggregate_body ::= aggregate_body aggregate_member | $empty
           | aggregate_body local_assignment
           | aggregate_body constant_statement
           | aggregate_body COMMENT
           | aggregate_body ifsymbol_clause
           | aggregate_body SEMI

    aggregate_member ::= member_name rest_of_member

    member_name ::= namestring

    rest_of_member ::= data_or_user_type member_options SEMI
           | sub_agg_dcl aggregate_body aggregate_end

    member_options ::= member_options PREFIX namestring | $empty
           | member_options TAG namestring
           | member_options FILL
           | member_options DIMENSION dimen_expr
           | member_options ALIGN
           | member_options NOALIGN
           | member_options basealign_option

    sub_agg_dcl ::= aggregate_type impl_union_datatype member_options SEMI

    aggregate_end ::= END name_option SEMI

    ifsymbol_clause ::= ifsymbol_start SEMI aggregate_body else_ifsymbol_clause else_symbol_clause ifsymbol_end SEMI

    else_ifsymbol_clause ::= else_ifsymbol_clause else_ifsymbol_start SEMI aggregate_body | $empty

    else_symbol_clause ::= else_symbol SEMI aggregate_body

    ifsymbol_statement ::= ifsymbol_start SEMI module_body else_ifsymbol_statement else_symbol_statement ifsymbol_end SEMI

    else_ifsymbol_statement ::= else_ifsymbol_statement else_ifsymbol_start SEMI module_body | $empty

    else_symbol_statement ::= else_symbol SEMI module_body

    ifsymbol_start ::= IFSYMBOL namestring

    else_ifsymbol_start ::= ELSE_IFSYMBOL namestring

    else_symbol ::= ELSE

    ifsymbol_end ::= END_IFSYMBOL

    item_statement ::= item_clause data_or_user_type item_options SEMI

    item_clause ::= ITEM namestring

    item_options ::= item_options COMMON | $empty
           | item_options GLOBAL
           | item_options TYPEDEF
           | item_options PREFIX namestring
           | item_options TAG namestring
           | item_options DIMENSION dimen_expr
           | item_options basealign_option

    data_or_user_type ::= data_type
           | user_typename sizeof_clause_opt

    user_typename ::= namestring

    sizeof_clause_opt ::= sizeof_clause

    sizeof_clause ::= sizeof_keyword sizeof_option

    sizeof_keyword ::= SIZEOF

    sizeof_option ::= data_or_user_type
           | LPAREN expression RPAREN

    basealign_option ::= basealign_key data_or_user_type
           | basealign_key LPAREN expression RPAREN

    basealign_key ::= BASEALIGN

    declare_statement ::= decl_clause decl_body decl_options

    decl_clause ::= DECLARE user_typename

    decl_body ::= sizeof_clause

    decl_options ::= decl_options PREFIX namestring | $empty
           | decl_options TAG namestring

    conditional_statement ::= cond1 cond2 module_body END_IFLANGUAGE lang_list_opt

    cond1 ::= IFLANGUAGE

    cond2 ::= language_list

    language_list ::= lang_name
           | language_list lang_name

    lang_name ::= namestring

    lang_list_opt ::= lang_list_opt namestring | $empty

    literal_statement ::= literal_keyword stringlist END_LITERAL

    literal_keyword ::= LITERAL SEMI

    stringlist ::= stringlist STRING_LITERAL | $empty

    expression ::= expression AMP expression_1
           | expression_1

    expression_1 ::= expression_1 BANG expression_2
           | expression_2

    expression_2 ::= expression_2 AT expression_3
           | expression_3

    expression_3 ::= expression_3 PLUS expression_4
           | expression_3 MINUS expression_4
           | expression_4

    expression_4 ::= expression_4 STAR expression_5
           | expression_4 SLASH expression_5
           | expression_5

    expression_5 ::= PLUS expression_6
           | MINUS expression_6
           | expression_6

    expression_6 ::= numeric
           | LOCAL_NAME
           | namestring
           | DOT
           | CARET
           | COLON
           | LPAREN expression RPAREN

    numeric ::= INTEGER_NUMBER
           | HEX_NUMBER
           | OCTAL_NUMBER
           | BINARY_NUMBER
           | ASCII_VALUE

    opt_1 ::= m_options | $empty

%End
