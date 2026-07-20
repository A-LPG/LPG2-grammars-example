-- AUTO-GENERATED from antlr/grammars-v4 algol60 by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=Algol60Parser
%options package=lpg.grammars.algol60
%options template=dtParserTemplateF.gi
%options import_terminals=Algol60Lexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    program
%End

%Rules
    empty_ ::= $empty

    integer ::= NUMBER
           | Plus_ NUMBER
           | Minus_ NUMBER

    number ::= NUMBER
           | Plus_ NUMBER
           | Minus_ NUMBER

    expression ::= arithmetic_expression
           | boolean_expression
           | designational_expression

    variable_identifier ::= IDENTIFIER

    simple_variable ::= variable_identifier

    subscript_expression ::= arithmetic_expression

    subscript_list ::= subscript_expression
           | subscript_list Comma_ subscript_expression

    array_identifier ::= IDENTIFIER

    subscripted_variable ::= array_identifier Lb_ subscript_list Rb_

    variable ::= simple_variable
           | subscripted_variable

    procedure_identifier ::= IDENTIFIER

    parameter_delimiter ::= Comma_
           | Rp_ IDENTIFIER Colon_ LP_

    actual_parameter ::= String
           | expression
           | array_identifier
           | switch_identifier
           | procedure_identifier

    actual_parameter_list ::= actual_parameter
           | actual_parameter_list parameter_delimiter actual_parameter

    function_designator ::= procedure_identifier actual_parameter_part

    adding_operator ::= Plus_
           | Minus_

    multiplying_operator ::= Mult_
           | Divide_

    primary ::= NUMBER
           | variable
           | function_designator
           | LP_ arithmetic_expression Rp_

    factor ::= primary
           | factor Exp_ primary

    term ::= factor
           | term multiplying_operator factor

    simple_arithmetic_expression ::= term
           | adding_operator term
           | simple_arithmetic_expression adding_operator term

    if_clause ::= If_ boolean_expression Then_

    arithmetic_expression ::= simple_arithmetic_expression
           | if_clause simple_arithmetic_expression Else_ arithmetic_expression

    relation ::= simple_arithmetic_expression Relational_operator simple_arithmetic_expression

    boolean_primary ::= Logical_value
           | variable
           | function_designator
           | relation
           | LP_ boolean_expression Rp_

    boolean_secondary ::= boolean_primary
           | Not_ boolean_primary

    boolean_factor ::= boolean_secondary
           | boolean_factor And_ boolean_secondary

    boolean_term ::= boolean_factor
           | boolean_term Or_ boolean_factor

    implication ::= boolean_term
           | implication Includes_ boolean_term

    simple_boolean ::= implication
           | simple_boolean Equiv_ implication

    boolean_expression ::= simple_boolean
           | if_clause simple_boolean Else_ boolean_expression

    label ::= IDENTIFIER
           | NUMBER

    switch_identifier ::= IDENTIFIER

    switch_designator ::= switch_identifier Lb_ subscript_expression Rb_

    simple_designational_expression ::= label
           | switch_designator
           | LP_ designational_expression Rp_

    designational_expression ::= simple_designational_expression
           | if_clause simple_designational_expression Else_ designational_expression

    unlabelled_basic_statement ::= assignment_statement
           | go_to_statement
           | dummy_statement
           | procedure_statement

    basic_statement ::= unlabelled_basic_statement
           | label Colon_ basic_statement

    unconditional_statement ::= basic_statement
           | compound_statement
           | block

    statement ::= unconditional_statement
           | conditional_statement
           | for_statement

    compound_tail ::= statement End_
           | statement Semi_ compound_tail

    block_head ::= Begin_ declaration
           | block_head Semi_ declaration

    unlabelled_compound ::= Begin_ compound_tail

    unlabelled_block ::= block_head Semi_ compound_tail

    compound_statement ::= unlabelled_compound
           | label Colon_ compound_statement

    block ::= unlabelled_block
           | label Colon_ block

    program ::= grp_1

    destination ::= variable
           | procedure_identifier

    left_part ::= variable Assign_
           | procedure_identifier Assign_

    left_part_list ::= left_part
           | left_part_list left_part

    assignment_statement ::= left_part_list arithmetic_expression
           | left_part_list boolean_expression

    go_to_statement ::= Goto_ designational_expression

    dummy_statement ::= empty_

    if_statement ::= if_clause unconditional_statement

    conditional_statement ::= if_statement
           | if_statement Else_ statement
           | if_clause for_statement
           | label Colon_ conditional_statement

    for_list_element ::= arithmetic_expression
           | arithmetic_expression Step_ arithmetic_expression Until_ arithmetic_expression
           | arithmetic_expression While_ boolean_expression

    for_list ::= for_list_element
           | for_list Comma_ for_list_element

    for_clause ::= For_ variable Assign_ for_list Do_

    for_statement ::= for_clause statement
           | label Colon_ for_statement

    actual_parameter_part ::= empty_
           | LP_ actual_parameter_list Rp_

    procedure_statement ::= procedure_identifier actual_parameter_part

    code ::= $empty

    declaration ::= type_declaration
           | array_declaration
           | switch_declaration
           | procedure_declaration

    type_list ::= simple_variable
           | simple_variable Comma_ type_list

    type_ ::= Real_
           | Integer_
           | Boolean_

    local_or_own ::= empty_
           | Own_

    type_declaration ::= local_or_own type_ type_list

    lower_bound ::= arithmetic_expression

    upper_bound ::= arithmetic_expression

    bound_pair ::= lower_bound Colon_ upper_bound

    bound_pair_list ::= bound_pair
           | bound_pair_list Comma_ bound_pair

    array_segment ::= array_identifier Lb_ bound_pair_list Rb_
           | array_identifier Comma_ array_segment

    array_list ::= array_segment
           | array_list Comma_ array_segment

    array_declarer ::= type_ Array_
           | Array_

    array_declaration ::= local_or_own array_declarer array_list

    switch_list ::= designational_expression
           | switch_list Comma_ designational_expression

    switch_declaration ::= Switch_ switch_identifier Assign_ switch_list

    formal_parameter ::= IDENTIFIER

    formal_parameter_list ::= formal_parameter
           | formal_parameter_list parameter_delimiter formal_parameter

    formal_parameter_part ::= empty_
           | LP_ formal_parameter_list Rp_

    identifier_list ::= IDENTIFIER
           | identifier_list Comma_ IDENTIFIER

    value_part ::= Value_ identifier_list Semi_
           | empty_

    specifier ::= String_
           | type_
           | Array_
           | type_ Array_
           | Label_
           | Switch_
           | Procedure_
           | type_ Procedure_

    specification_part ::= empty_
           | specifier identifier_list Semi_
           | specification_part specifier identifier_list

    procedure_heading ::= procedure_identifier formal_parameter_part Semi_ value_part specification_part

    procedure_body ::= statement
           | code

    procedure_declaration ::= Procedure_ procedure_heading procedure_body
           | type_ Procedure_ procedure_heading procedure_body

    grp_1 ::= block | compound_statement

%End
