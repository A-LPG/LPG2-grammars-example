-- AUTO-GENERATED from antlr/grammars-v4 ruleworks by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=RuleworksParser
%options package=lpg.grammars.ruleworks
%options template=dtParserTemplateF.gi
%options import_terminals=RuleworksLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    smoke_program ::= smoke_decl
           | smoke_program smoke_decl

    smoke_decl ::= LPAREN TOK_OBJECT_CLASS IDENTIFIER RPAREN
           | LPAREN TOK_INSTANCE IDENTIFIER TOK_OF IDENTIFIER RPAREN

    program ::= smoke_program
           | listn0001

    program_construct_nt ::= LPAREN listn0002 RPAREN

    program_line_nt ::= declaration_block
           | entry_block
           | rule_block
           | end_block
           | rule_group_declaration
           | end_rule_group
           | object_class_declaration
           | method_declaration
           | generic_method_declaration
           | external_routine_declaration
           | on_entry
           | on_empty
           | on_exit
           | on_every
           | rw_rule
           | catcher

    declaration_block ::= TOK_DECLARATION_BLOCK name

    entry_block ::= TOK_ENTRY_BLOCK name opt_entry_block_clauses

    opt_entry_block_clauses ::= $empty
           | opt_entry_block_clauses LPAREN entry_block_clause_nt RPAREN

    entry_block_clause_nt ::= accepts_clause
           | returns_clause
           | activates_clause
           | uses_clause
           | strategy_clause

    activates_clause ::= TOK_ACTIVATES names

    uses_clause ::= TOK_USES names

    strategy_clause ::= TOK_STRATEGY strategy_name

    on_entry ::= TOK_ON_ENTRY startup_actions
           | TOK_STARTUP startup_actions

    on_empty ::= TOK_ON_EMPTY actions

    on_exit ::= TOK_ON_EXIT actions

    on_every ::= TOK_ON_EVERY actions

    startup_actions ::= LPAREN startup_action RPAREN
           | startup_actions LPAREN startup_action RPAREN

    startup_action ::= action_
           | at_command

    at_command ::= TOK_AT name

    opt_actions ::= $empty
           | actions

    opt_method_actions ::= $empty
           | actions

    actions ::= action_line
           | actions action_line

    action_line ::= LPAREN action_ RPAREN
           | LPAREN construct_keyword

    action_ ::= addstate_action
           | after_action
           | bind_action
           | call_inherited
           | closefile_action
           | copy_action
           | debug_action
           | default_action
           | for_each_action
           | function_call
           | if_action
           | make_action
           | modify_action
           | openfile_action
           | quit_action
           | remove_action
           | remove_every_action
           | restorestate_action
           | return_action
           | savestate_action
           | specialize_action
           | trace_action
           | while_action
           | write_action
           | sql_attach_action
           | sql_commit_action
           | sql_delete_action
           | sql_detach_action
           | sql_fetch_each_action
           | sql_fetch_as_object_action
           | sql_insert_action
           | sql_insert_from_object_action
           | sql_rollback_action
           | sql_start_action
           | sql_update_action
           | sql_update_from_object_action

    addstate_action ::= TOK_ADDSTATE value

    after_action ::= TOK_AFTER value name

    bind_action ::= TOK_BIND variable value

    call_inherited ::= TOK_CALL_INHERITED variables

    closefile_action ::= TOK_CLOSEFILE value_list_nt

    copy_action ::= TOK_COPY variable opt_rhs_terms

    debug_action ::= TOK_DEBUG

    default_action ::= TOK_DEFAULT value value

    for_each_action ::= TOK_FOR_EACH variable TOK_IN value actions

    if_action ::= TOK_IF expression TOK_THEN actions opt_else

    make_action ::= TOK_MAKE rclass opt_rhs_terms

    modify_action ::= TOK_MODIFY variable opt_rhs_terms

    openfile_action ::= TOK_OPENFILE value value value

    quit_action ::= TOK_QUIT optn0003

    opt_quit_value ::= arith_value
           | TOK_FAILURE
           | TOK_SUCCESS

    remove_action ::= TOK_REMOVE variables

    remove_every_action ::= TOK_REMOVE_EVERY classes

    restorestate_action ::= TOK_RESTORESTATE value

    return_action ::= TOK_RETURN opt_value

    savestate_action ::= TOK_SAVESTATE value

    specialize_action ::= TOK_SPECIALIZE variable rclass opt_rhs_terms

    trace_action ::= TOK_TRACE on_off trace_options

    while_action ::= TOK_WHILE expression TOK_DO actions

    write_action ::= TOK_WRITE opt_values

    sql_attach_action ::= TOK_SQL_ATTACH db_spec opt_db_scope

    sql_commit_action ::= TOK_SQL_COMMIT

    sql_delete_action ::= TOK_SQL_DELETE db_table opt_sql_rse

    sql_detach_action ::= TOK_SQL_DETACH

    sql_fetch_each_action ::= TOK_SQL_FETCH_EACH db_vars LPAREN sql_rse RPAREN sql_actions

    sql_fetch_as_object_action ::= TOK_SQL_FETCH_AS_OBJECT sql_rse

    sql_insert_action ::= TOK_SQL_INSERT db_table sql_rse

    sql_insert_from_object_action ::= TOK_SQL_INSERT_FROM_OBJECT variable

    sql_rollback_action ::= TOK_SQL_ROLLBACK

    sql_start_action ::= TOK_SQL_START opt_sql_rse

    sql_update_action ::= TOK_SQL_UPDATE db_table sql_rse

    sql_update_from_object_action ::= TOK_SQL_UPDATE_FROM_OBJECT variable opt_sql_rse

    db_spec ::= TOK_FILENAME name
           | TOK_PATHNAME name
           | db_spec_name_nt

    opt_db_scope ::= $empty
           | db_scope

    db_scope ::= name

    db_table ::= name

    db_vars ::= variables

    opt_sql_rse ::= $empty
           | sql_rse

    sql_actions ::= actions

    sql_rse ::= sql_rse_list_nt

    sql_rse_list_nt ::= sql_rse_list_nt sql_rse_element_nt
           | sql_rse_element_nt

    sql_rse_element_nt ::= constant
           | variable
           | quoted_var
           | TOK_EQUAL
           | TOK_EQUAL_EQUAL
           | TOK_APPROX_EQUAL
           | TOK_NOT_APPROX_EQUAL
           | TOK_NOT_EQ
           | TOK_NOT_EQUAL
           | TOK_GREATER
           | TOK_GREATER_EQUAL
           | TOK_LESS
           | TOK_LESS_EQUAL
           | TOK_PLUS
           | TOK_MINUS
           | TOK_TIMES
           | TOK_DIVIDE
           | TOK_MODULUS
           | ARROW
           | TOK_START_DISJUNCTION
           | TOK_END_DISJUNCTION

    opt_rhs_terms ::= $empty
           | opt_rhs_terms rhs_term

    rhs_term ::= CARET attribute opt_ca_access value

    rclass ::= name
           | variable
           | LPAREN accept_atom_bti RPAREN
           | LPAREN concat_bti RPAREN
           | LPAREN get_bti RPAREN
           | LPAREN nth_bti RPAREN
           | LPAREN symbol_bti RPAREN
           | LPAREN function_call RPAREN

    classes ::= classes rclass
           | rclass

    attribute ::= name
           | variable

    catcher ::= TOK_CATCH name opt_actions

    expression ::= LPAREN cmplx_expre RPAREN

    cmplx_expre ::= expre_value
           | cmplx_expre TOK_AND cmplx_expre
           | cmplx_expre TOK_OR cmplx_expre
           | TOK_NOT expre_value

    expre_value ::= value_non_sql_nt predicate value_non_sql_nt
           | LPAREN cmplx_expre RPAREN

    opt_else ::= $empty
           | TOK_ELSE actions

    built_ins ::= accept_atom_bti
           | acceptline_compound_bti
           | compound_bti
           | concat_bti
           | crlf_bti
           | every_bti
           | float_bti
           | genatom_bti
           | genint_bti
           | get_bti
           | integer_bti
           | is_open_bti
           | length_bti
           | max_bti
           | min_bti
           | nth_bti
           | position_bti
           | rjust_bti
           | subcompound_bti
           | subsymbol_bti
           | symbol_bti
           | symbol_len_bti
           | tabto_bti

    accept_atom_bti ::= TOK_ACCEPT_ATOM opt_value

    acceptline_compound_bti ::= TOK_ACCEPTLINE_COMPOUND opt_accpt_compound

    opt_accpt_compound ::= $empty
           | value opt_value

    compound_bti ::= TOK_COMPOUND opt_values

    concat_bti ::= TOK_CONCAT opt_values

    crlf_bti ::= TOK_CRLF

    every_bti ::= TOK_EVERY rclass

    float_bti ::= TOK_FLOAT value

    genatom_bti ::= TOK_GENATOM opt_value

    genint_bti ::= TOK_GENINT

    get_bti ::= TOK_GET value CARET attribute

    integer_bti ::= TOK_INTEGER value

    is_open_bti ::= TOK_IS_OPEN value

    length_bti ::= TOK_LENGTH value

    max_bti ::= TOK_MAX opt_values

    min_bti ::= TOK_MIN opt_values

    nth_bti ::= TOK_NTH value index_num

    position_bti ::= TOK_POSITION value opt_predicate value

    rjust_bti ::= TOK_RJUST value

    subcompound_bti ::= TOK_SUBCOMPOUND value index_num index_num

    subsymbol_bti ::= TOK_SUBSYMBOL value index_num index_num

    symbol_bti ::= TOK_SYMBOL value

    symbol_len_bti ::= TOK_SYMBOL_LENGTH value

    tabto_bti ::= TOK_TABTO value

    rule_block ::= TOK_RULE_BLOCK name opt_rule_block_clauses

    opt_rule_block_clauses ::= $empty
           | opt_rule_block_clauses LPAREN rule_block_clause_nt RPAREN

    rule_block_clause_nt ::= uses_clause
           | strategy_clause

    strategy_name ::= TOK_LEX
           | TOK_MEA

    end_block ::= TOK_END_BLOCK opt_name

    rule_group_declaration ::= TOK_RULE_GROUP name

    end_rule_group ::= TOK_END_GROUP opt_name

    object_class_declaration ::= TOK_OBJECT_CLASS name opt_object_class_modifier opt_attribute_declarations

    opt_object_class_modifier ::= $empty
           | LPAREN TOK_INHERITS_FROM name RPAREN

    opt_attribute_declarations ::= $empty
           | opt_attribute_declarations attribute_declaration_nt

    attribute_declaration_nt ::= CARET attribute_name_nt opt_compound_flag opt_domain_restriction opt_attribute_modifiers

    attribute_name_nt ::= name

    opt_compound_flag ::= $empty
           | TOK_COMPOUND

    opt_domain_restriction ::= $empty
           | TOK_ANY
           | TOK_INSTANCE opt_domain_class
           | TOK_INTEGER
           | TOK_FLOAT
           | TOK_OPAQUE
           | TOK_SYMBOL

    opt_domain_class ::= $empty
           | TOK_OF name

    opt_attribute_modifiers ::= $empty
           | opt_attribute_modifiers attribute_modifier_nt

    attribute_modifier_nt ::= LPAREN TOK_DEFAULT constant RPAREN
           | LPAREN TOK_DEFAULT compound_const RPAREN
           | LPAREN TOK_FILL constant RPAREN

    generic_method_declaration ::= TOK_GENERIC_METHOD allowable_func_name generic_method_accepts_clause opt_generic_method_returns

    generic_method_accepts_clause ::= LPAREN TOK_ACCEPTS generic_method_when_decl opt_method_param_decls RPAREN

    opt_generic_method_returns ::= $empty
           | LPAREN TOK_RETURNS method_return_param RPAREN

    generic_method_when_decl ::= variable TOK_WHEN TOK_INSTANCE opt_domain_class

    method_declaration ::= TOK_METHOD allowable_func_name method_accepts_clause opt_method_returns_plus_actions

    method_accepts_clause ::= LPAREN TOK_ACCEPTS method_when_decl opt_method_param_decls RPAREN

    method_when_decl ::= variable TOK_WHEN TOK_INSTANCE TOK_OF name

    method_param_decl ::= variable opt_method_param_opts

    opt_method_param_decls ::= $empty
           | opt_method_param_decls method_param_decl

    opt_method_returns_plus_actions ::= LPAREN action_ RPAREN opt_method_actions
           | LPAREN TOK_RETURNS method_return_param RPAREN opt_actions

    method_return_param ::= variable opt_method_param_opts

    opt_method_param_opts ::= opt_compound_flag opt_domain_restriction

    external_routine_declaration ::= TOK_EXTERNAL_ROUTINE allowable_func_name opt_ext_rt_clauses

    opt_ext_rt_clauses ::= $empty
           | LPAREN ext_rt_clause RPAREN opt_ext_rt_clauses

    ext_rt_clause ::= alias_clause
           | accepts_clause
           | returns_clause

    alias_clause ::= TOK_ALIAS_FOR name

    accepts_clause ::= TOK_ACCEPTS ext_rt_param_decl opt_ext_rt_param_decls

    returns_clause ::= TOK_RETURNS ext_rt_return_decl

    ext_rt_param_decl ::= opt_param_name opt_param_cardinality param_type opt_param_mech

    opt_ext_rt_param_decls ::= $empty
           | ext_rt_param_decl opt_ext_rt_param_decls

    ext_rt_return_decl ::= opt_param_name opt_param_cardinality param_type opt_return_mech

    opt_param_name ::= $empty
           | variable

    opt_param_cardinality ::= $empty
           | TOK_LBRACKET param_array_length TOK_RBRACKET

    param_type ::= TOK_LONG
           | TOK_SHORT
           | TOK_BYTE
           | TOK_UNSIGNED_LONG
           | TOK_UNSIGNED_SHORT
           | TOK_UNSIGNED_BYTE
           | TOK_SINGLE_FLOAT
           | TOK_DOUBLE_FLOAT
           | TOK_ASCIZ
           | TOK_ASCID
           | TOK_POINTER
           | TOK_ATOM

    opt_param_mech ::= $empty
           | TOK_BY TOK_REFERENCE TOK_READ_ONLY
           | TOK_BY TOK_REFERENCE TOK_READ_WRITE
           | TOK_BY TOK_VALUE

    opt_return_mech ::= $empty
           | TOK_BY TOK_REFERENCE
           | TOK_BY TOK_VALUE

    param_array_length ::= $empty
           | TOK_INTEGER_CONST
           | variable

    rw_rule ::= rule_or_p name ce_form_nt opt_ce_list ARROW opt_actions

    rule_or_p ::= TOK_RULE
           | TOK_P

    opt_ce_list ::= $empty
           | opt_ce_list ce

    ce ::= pos_ce
           | neg_ce

    pos_ce ::= ce_form_nt
           | ce_disjunction_nt

    neg_ce ::= TOK_MINUS ce_form_nt

    ce_disjunction_nt ::= TOK_START_DISJUNCTION ce_disj_list_nt TOK_END_DISJUNCTION

    ce_disj_list_nt ::= ce_form_nt
           | ce_disj_list_nt ce_form_nt

    ce_form_nt ::= LPAREN name opt_lhs_terms RPAREN
           | LPAREN name opt_lhs_terms ARROW

    opt_lhs_terms ::= $empty
           | opt_lhs_terms lhs_term

    lhs_term ::= CARET name opt_ca_access lhs_value

    opt_ca_access ::= $empty
           | TOK_LBRACKET ca_index TOK_RBRACKET

    ca_index ::= arith_expr
           | TOK_DOLLAR_LAST

    index_num ::= integer_const
           | variable
           | LPAREN built_ins RPAREN
           | LPAREN function_call RPAREN
           | LPAREN arith_expr RPAREN
           | TOK_DOLLAR_LAST

    lhs_value ::= restriction
           | TOK_LBRACE restriction_list_nt TOK_RBRACE

    restriction_list_nt ::= restriction_list_nt restriction
           | restriction

    restriction ::= TOK_START_DISJUNCTION value_list_nt TOK_END_DISJUNCTION
           | predicate value
           | value

    arith_expr ::= TOK_MINUS arith_value
           | arith_value
           | arith_expr TOK_PLUS arith_expr
           | arith_expr TOK_MINUS arith_expr
           | arith_expr TOK_TIMES arith_expr
           | arith_expr TOK_DIVIDE arith_expr
           | arith_expr TOK_MODULUS arith_expr

    arith_value ::= integer_const
           | float_const
           | variable
           | LPAREN built_ins RPAREN
           | LPAREN function_call RPAREN
           | LPAREN arith_expr RPAREN

    on_off ::= TOK_OFF
           | TOK_ON

    trace_options ::= TOK_TIMES
           | trace_names

    trace_names ::= trace_name
           | trace_names trace_name

    trace_name ::= TOK_ENTRY_BLOCK
           | TOK_EB
           | TOK_RULE_GROUP
           | TOK_RG
           | TOK_RULE
           | TOK_WM
           | TOK_CS

    variables ::= variables variable
           | variable

    function_call ::= allowable_func_name opt_values

    value_list_nt ::= value
           | value_list_nt value

    opt_value ::= $empty
           | value

    opt_values ::= $empty
           | opt_values value

    value ::= value_non_sql_nt
           | LPAREN sql_fetch_as_object_action RPAREN

    value_non_sql_nt ::= constant
           | variable
           | LPAREN built_ins RPAREN
           | LPAREN function_call RPAREN
           | LPAREN arith_expr RPAREN
           | LPAREN copy_action RPAREN
           | LPAREN make_action RPAREN
           | LPAREN modify_action RPAREN
           | LPAREN specialize_action RPAREN
           | LPAREN call_inherited RPAREN

    constant ::= integer_const
           | float_const
           | opaque_const
           | instance_const
           | name

    names ::= names name
           | name

    opt_name ::= $empty
           | name

    name ::= allowable_func_name
           | built_in_keyword
           | construct_keyword
           | action_token
           | sql_keyword

    db_spec_name_nt ::= allowable_func_name
           | built_in_keyword
           | construct_keyword
           | action_token

    allowable_func_name ::= symbol_const
           | quoted_symbol
           | allowable_func_keyword

    construct_keyword ::= TOK_DECLARATION_BLOCK
           | TOK_END_BLOCK
           | TOK_END_GROUP
           | TOK_ENTRY_BLOCK
           | TOK_EXTERNAL_ROUTINE
           | TOK_GENERIC_METHOD
           | TOK_METHOD
           | TOK_OBJECT_CLASS
           | TOK_ON_EMPTY
           | TOK_ON_ENTRY
           | TOK_STARTUP
           | TOK_ON_EVERY
           | TOK_ON_EXIT
           | TOK_P
           | TOK_RULE
           | TOK_RULE_BLOCK
           | TOK_RULE_GROUP

    built_in_keyword ::= TOK_ACCEPT_ATOM
           | TOK_ACCEPTLINE_COMPOUND
           | TOK_ACCEPTS
           | TOK_COMPOUND
           | TOK_CONCAT
           | TOK_CRLF
           | TOK_EVERY
           | TOK_FLOAT
           | TOK_GENATOM
           | TOK_GENINT
           | TOK_GET
           | TOK_INTEGER
           | TOK_IS_OPEN
           | TOK_LENGTH
           | TOK_MAX
           | TOK_MIN
           | TOK_NTH
           | TOK_POSITION
           | TOK_RETURNS
           | TOK_RJUST
           | TOK_SUBCOMPOUND
           | TOK_SUBSYMBOL
           | TOK_SYMBOL
           | TOK_SYMBOL_LENGTH
           | TOK_TABTO
           | TOK_AND
           | TOK_NOT
           | TOK_OR

    allowable_func_keyword ::= TOK_ACCEPT
           | TOK_ACTIVATES
           | TOK_ANY
           | TOK_APPEND
           | TOK_ASCID
           | TOK_ASCIZ
           | TOK_ATOM
           | TOK_BY
           | TOK_BYTE
           | TOK_CATCH
           | TOK_CS
           | TOK_DO
           | TOK_DOLLAR_LAST
           | TOK_DOUBLE_FLOAT
           | TOK_EB
           | TOK_ELSE
           | TOK_FAILURE
           | TOK_FILL
           | TOK_IN
           | TOK_INHERITS_FROM
           | TOK_INSTANCE
           | TOK_LEX
           | TOK_LONG
           | TOK_MEA
           | TOK_OF
           | TOK_OUT
           | TOK_OPAQUE
           | TOK_POINTER
           | TOK_READ_ONLY
           | TOK_READ_WRITE
           | TOK_REFERENCE
           | TOK_RG
           | TOK_SHORT
           | TOK_SINGLE_FLOAT
           | TOK_SCALAR
           | TOK_STRATEGY
           | TOK_SUCCESS
           | TOK_THEN
           | TOK_UNSIGNED_BYTE
           | TOK_UNSIGNED_LONG
           | TOK_UNSIGNED_SHORT
           | TOK_USES
           | TOK_VALUE
           | TOK_WM

    action_token ::= TOK_ADDSTATE
           | TOK_AFTER
           | TOK_BIND
           | TOK_CALL_INHERITED
           | TOK_CLOSEFILE
           | TOK_COPY
           | TOK_DEBUG
           | TOK_DEFAULT
           | TOK_FOR_EACH
           | TOK_IF
           | TOK_MAKE
           | TOK_MODIFY
           | TOK_OPENFILE
           | TOK_QUIT
           | TOK_REMOVE
           | TOK_REMOVE_EVERY
           | TOK_RESTORESTATE
           | TOK_RETURN
           | TOK_SAVESTATE
           | TOK_SPECIALIZE
           | TOK_TRACE
           | TOK_WHILE
           | TOK_WRITE
           | TOK_SQL_ATTACH
           | TOK_SQL_COMMIT
           | TOK_SQL_DELETE
           | TOK_SQL_DETACH
           | TOK_SQL_FETCH_EACH
           | TOK_SQL_FETCH_AS_OBJECT
           | TOK_SQL_INSERT
           | TOK_SQL_INSERT_FROM_OBJECT
           | TOK_SQL_ROLLBACK
           | TOK_SQL_START
           | TOK_SQL_UPDATE
           | TOK_SQL_UPDATE_FROM_OBJECT

    sql_keyword ::= TOK_FILENAME
           | TOK_PATHNAME

    opt_predicate ::= $empty
           | scalar_predicate

    predicate ::= scalar_predicate
           | content_predicate

    scalar_predicate ::= TOK_SAME_TYPE
           | TOK_DIFF_TYPE
           | TOK_EQUAL
           | TOK_EQUAL_EQUAL
           | TOK_APPROX_EQUAL
           | TOK_NOT_APPROX_EQUAL
           | TOK_NOT_EQ
           | TOK_NOT_EQUAL
           | TOK_GREATER
           | TOK_GREATER_EQUAL
           | TOK_LESS
           | TOK_LESS_EQUAL

    content_predicate ::= TOK_LENGTH_EQUAL
           | TOK_LENGTH_NOT_EQUAL
           | TOK_LENGTH_GREATER
           | TOK_LENGTH_GREATER_EQUAL
           | TOK_LENGTH_LESS
           | TOK_LENGTH_LESS_EQUAL
           | TOK_CONTAINS
           | TOK_DOES_NOT_CONTAIN
           | TOK_CONTAINS scalar_predicate
           | TOK_DOES_NOT_CONTAIN scalar_predicate
           | scalar_predicate TOK_CONTAINS
           | scalar_predicate TOK_DOES_NOT_CONTAIN

    compound_const ::= LPAREN TOK_COMPOUND opt_comp_element_const RPAREN

    opt_comp_element_const ::= $empty
           | opt_comp_element_const constant

    integer_const ::= TOK_INTEGER_CONST

    float_const ::= TOK_FLOAT_CONST

    variable ::= TOK_VARIABLE

    quoted_var ::= TOK_QUOTED_VAR

    symbol_const ::= TOK_SYMBOL_CONST

    quoted_symbol ::= TOK_QUOTED_SYMBOL

    opaque_const ::= TOK_OPAQUE_CONST

    instance_const ::= TOK_INSTANCE_CONST

    listn0001 ::= program_construct_nt
           | listn0001 program_construct_nt

    listn0002 ::= program_line_nt
           | listn0002 program_line_nt

    optn0003 ::= opt_quit_value
           | $empty

%End
