-- AUTO-GENERATED from antlr/grammars-v4 corundum by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=CorundumParser
%options package=lpg.grammars.corundum
%options template=dtParserTemplateF.gi
%options import_terminals=CorundumLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    prog
%End

%Rules
    prog ::= expression_list

    expression_list ::= expression terminator_opt
           | expression_list expression terminator_opt
           | terminator_opt

    terminator_opt ::= terminator | $empty

    expression ::= function_definition
           | function_inline_call
           | require_block
           | if_statement
           | unless_statement
           | rvalue
           | return_statement
           | while_statement
           | for_statement
           | pir_inline

    global_get ::= lvalue ASSIGN id_global

    global_set ::= id_global ASSIGN all_result

    global_result ::= id_global

    function_inline_call ::= function_call

    require_block ::= REQUIRE literal_t

    pir_inline ::= PIR crlf pir_expression_list END

    pir_expression_list ::= expression_list

    function_definition ::= function_definition_header function_definition_body END

    function_definition_body ::= expression_list

    function_definition_header ::= DEF function_name crlf
           | DEF function_name function_definition_params crlf

    function_name ::= id_function
           | id_

    function_definition_params ::= LEFT_RBRACKET RIGHT_RBRACKET
           | LEFT_RBRACKET function_definition_params_list RIGHT_RBRACKET
           | function_definition_params_list

    function_definition_params_list ::= function_definition_param_id
           | function_definition_params_list COMMA function_definition_param_id

    function_definition_param_id ::= id_

    return_statement ::= RETURN all_result

    function_call ::= function_name LEFT_RBRACKET function_call_param_list RIGHT_RBRACKET
           | function_name function_call_param_list
           | function_name LEFT_RBRACKET RIGHT_RBRACKET

    function_call_param_list ::= function_call_params

    function_call_params ::= function_param
           | function_call_params COMMA function_param

    function_param ::= grp_1

    function_unnamed_param ::= grp_2

    function_named_param ::= id_ ASSIGN grp_3

    function_call_assignment ::= function_call

    all_result ::= grp_4

    elsif_statement ::= if_elsif_statement

    if_elsif_statement ::= ELSIF cond_expression crlf statement_body
           | ELSIF cond_expression crlf statement_body else_token crlf statement_body
           | ELSIF cond_expression crlf statement_body if_elsif_statement

    if_statement ::= IF cond_expression crlf statement_body END
           | IF cond_expression crlf statement_body else_token crlf statement_body END
           | IF cond_expression crlf statement_body elsif_statement END

    unless_statement ::= UNLESS cond_expression crlf statement_body END
           | UNLESS cond_expression crlf statement_body else_token crlf statement_body END
           | UNLESS cond_expression crlf statement_body elsif_statement END

    while_statement ::= WHILE cond_expression crlf statement_body END

    for_statement ::= FOR LEFT_RBRACKET init_expression SEMICOLON cond_expression SEMICOLON loop_expression RIGHT_RBRACKET crlf statement_body END
           | FOR init_expression SEMICOLON cond_expression SEMICOLON loop_expression crlf statement_body END

    init_expression ::= for_init_list

    all_assignment ::= grp_5

    for_init_list ::= for_init_list COMMA all_assignment
           | all_assignment

    cond_expression ::= comparison_list

    loop_expression ::= for_loop_list

    for_loop_list ::= for_loop_list COMMA all_assignment
           | all_assignment

    statement_body ::= statement_expression_list

    statement_expression_list ::= expression terminator
           | RETRY terminator
           | break_expression terminator
           | statement_expression_list expression terminator
           | statement_expression_list RETRY terminator
           | statement_expression_list break_expression terminator

    assignment ::= lvalue ASSIGN rvalue
           | lvalue grp_6 rvalue

    dynamic_assignment ::= lvalue ASSIGN dynamic_result
           | lvalue grp_7 dynamic_result

    int_assignment ::= lvalue ASSIGN int_result
           | lvalue grp_8 int_result

    float_assignment ::= lvalue ASSIGN float_result
           | lvalue grp_9 float_result

    string_assignment ::= lvalue ASSIGN string_result
           | lvalue PLUS_ASSIGN string_result

    initial_array_assignment ::= lvalue ASSIGN LEFT_SBRACKET RIGHT_SBRACKET
           | lvalue ASSIGN array_definition

    array_assignment ::= array_selector ASSIGN all_result

    array_definition ::= LEFT_SBRACKET array_definition_elements RIGHT_SBRACKET

    array_definition_elements ::= grp_10
           | array_definition_elements COMMA grp_11

    array_selector ::= id_ LEFT_SBRACKET grp_12 RIGHT_SBRACKET
           | id_global LEFT_SBRACKET grp_13 RIGHT_SBRACKET

    dynamic_result ::= dynamic_result grp_14 int_result
           | int_result grp_15 dynamic_result
           | dynamic_result grp_16 float_result
           | float_result grp_17 dynamic_result
           | dynamic_result grp_18 dynamic_result
           | dynamic_result MUL string_result
           | string_result MUL dynamic_result
           | dynamic_result grp_19 int_result
           | int_result grp_20 dynamic_result
           | dynamic_result grp_21 float_result
           | float_result grp_22 dynamic_result
           | dynamic_result grp_23 dynamic_result
           | LEFT_RBRACKET dynamic_result RIGHT_RBRACKET
           | dynamic_

    dynamic_ ::= id_
           | function_call_assignment
           | array_selector

    int_result ::= int_result grp_24 int_result
           | int_result grp_25 int_result
           | LEFT_RBRACKET int_result RIGHT_RBRACKET
           | int_t

    float_result ::= float_result grp_26 float_result
           | int_result grp_27 float_result
           | float_result grp_28 int_result
           | float_result grp_29 float_result
           | int_result grp_30 float_result
           | float_result grp_31 int_result
           | LEFT_RBRACKET float_result RIGHT_RBRACKET
           | float_t

    string_result ::= string_result MUL int_result
           | int_result MUL string_result
           | string_result PLUS string_result
           | literal_t

    comparison_list ::= comparison BIT_AND comparison_list
           | comparison AND comparison_list
           | comparison BIT_OR comparison_list
           | comparison OR comparison_list
           | LEFT_RBRACKET comparison_list RIGHT_RBRACKET
           | comparison

    comparison ::= comp_var grp_32 comp_var
           | comp_var grp_33 comp_var

    comp_var ::= all_result
           | array_selector
           | id_

    lvalue ::= id_

    rvalue ::= lvalue
           | initial_array_assignment
           | array_assignment
           | int_result
           | float_result
           | string_result
           | global_set
           | global_get
           | dynamic_assignment
           | string_assignment
           | float_assignment
           | int_assignment
           | assignment
           | function_call
           | literal_t
           | bool_t
           | float_t
           | int_t
           | nil_t
           | rvalue EXP rvalue
           | grp_34 rvalue
           | rvalue grp_35 rvalue
           | rvalue grp_36 rvalue
           | rvalue grp_37 rvalue
           | rvalue BIT_AND rvalue
           | rvalue grp_38 rvalue
           | rvalue grp_39 rvalue
           | rvalue grp_40 rvalue
           | rvalue grp_41 rvalue
           | LEFT_RBRACKET rvalue RIGHT_RBRACKET

    break_expression ::= BREAK

    literal_t ::= LITERAL

    float_t ::= FLOAT

    int_t ::= INT

    bool_t ::= TRUE
           | FALSE

    nil_t ::= NIL

    id_ ::= ID

    id_global ::= ID_GLOBAL

    id_function ::= ID_FUNCTION

    terminator ::= terminator SEMICOLON
           | terminator crlf
           | SEMICOLON
           | crlf

    else_token ::= ELSE

    crlf ::= CRLF

    grp_1 ::= function_unnamed_param
           | function_named_param

    grp_2 ::= int_result
           | float_result
           | string_result
           | dynamic_result

    grp_3 ::= int_result
           | float_result
           | string_result
           | dynamic_result

    grp_4 ::= int_result
           | float_result
           | string_result
           | dynamic_result
           | global_result

    grp_5 ::= int_assignment
           | float_assignment
           | string_assignment
           | dynamic_assignment

    grp_6 ::= PLUS_ASSIGN
           | MINUS_ASSIGN
           | MUL_ASSIGN
           | DIV_ASSIGN
           | MOD_ASSIGN
           | EXP_ASSIGN

    grp_7 ::= PLUS_ASSIGN
           | MINUS_ASSIGN
           | MUL_ASSIGN
           | DIV_ASSIGN
           | MOD_ASSIGN
           | EXP_ASSIGN

    grp_8 ::= PLUS_ASSIGN
           | MINUS_ASSIGN
           | MUL_ASSIGN
           | DIV_ASSIGN
           | MOD_ASSIGN
           | EXP_ASSIGN

    grp_9 ::= PLUS_ASSIGN
           | MINUS_ASSIGN
           | MUL_ASSIGN
           | DIV_ASSIGN
           | MOD_ASSIGN
           | EXP_ASSIGN

    grp_10 ::= int_result
           | dynamic_result

    grp_11 ::= int_result
           | dynamic_result

    grp_12 ::= int_result
           | dynamic_result

    grp_13 ::= int_result
           | dynamic_result

    grp_14 ::= MUL
           | DIV
           | MOD

    grp_15 ::= MUL
           | DIV
           | MOD

    grp_16 ::= MUL
           | DIV
           | MOD

    grp_17 ::= MUL
           | DIV
           | MOD

    grp_18 ::= MUL
           | DIV
           | MOD

    grp_19 ::= PLUS
           | MINUS

    grp_20 ::= PLUS
           | MINUS

    grp_21 ::= PLUS
           | MINUS

    grp_22 ::= PLUS
           | MINUS

    grp_23 ::= PLUS
           | MINUS

    grp_24 ::= MUL
           | DIV
           | MOD

    grp_25 ::= PLUS
           | MINUS

    grp_26 ::= MUL
           | DIV
           | MOD

    grp_27 ::= MUL
           | DIV
           | MOD

    grp_28 ::= MUL
           | DIV
           | MOD

    grp_29 ::= PLUS
           | MINUS

    grp_30 ::= PLUS
           | MINUS

    grp_31 ::= PLUS
           | MINUS

    grp_32 ::= LESS
           | GREATER
           | LESS_EQUAL
           | GREATER_EQUAL

    grp_33 ::= EQUAL
           | NOT_EQUAL

    grp_34 ::= NOT
           | BIT_NOT

    grp_35 ::= MUL
           | DIV
           | MOD

    grp_36 ::= PLUS
           | MINUS

    grp_37 ::= BIT_SHL
           | BIT_SHR

    grp_38 ::= BIT_OR
           | BIT_XOR

    grp_39 ::= LESS
           | GREATER
           | LESS_EQUAL
           | GREATER_EQUAL

    grp_40 ::= EQUAL
           | NOT_EQUAL

    grp_41 ::= OR
           | AND

%End
