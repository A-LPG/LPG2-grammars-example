-- AUTO-GENERATED from antlr/grammars-v4 asl by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp=AslParser
%options package=lpg.grammars.asl
%options template=dtParserTemplateF.gi
%options import_terminals=AslLexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    asl
%End

%Rules
    asl ::= list_1

    statement ::= grp_2 list_3

    simple_statement ::= assignment_statement
           | create_statement
           | delete_statement
           | find_statement
           | relationship_navigation
           | associative_relationship_navigation
           | relationship_link
           | relationship_unlink
           | event_generation
           | operation_invocation
           | timer_operation
           | set_operation
           | struct_statement

    sequential_logic_statement ::= switch_statement
           | if_statement
           | for_loop
           | loop_statement

    assignment_statement ::= constant_assignment
           | date_time_assignment
           | variable_assignment
           | object_attribute_assignment
           | arithmetic_assignment

    constant_assignment ::= IDENTIFIER EQ NUMBER

    date_time_assignment ::= IDENTIFIER EQ CURRENT_DATE
           | IDENTIFIER EQ CURRENT_TIME

    variable_assignment ::= IDENTIFIER EQ IDENTIFIER

    object_attribute_assignment ::= IDENTIFIER EQ object_attribute

    arithmetic_assignment ::= IDENTIFIER EQ arithmetic_expression

    arithmetic_expression ::= arithmetic_component PLUS grp_12
           | LPAREN arithmetic_component PLUS grp_13 RPAREN
           | countof_function

    arithmetic_component ::= variable
           | object_attribute
           | constant
           | countof_function

    countof_function ::= COUNTOF grp_14

    create_statement ::= grp_16 EQ CREATE opt_17 object_name opt_19

    attribute_assignments ::= attribute_assignment list_21

    attribute_assignment ::= attribute EQ grp_22

    delete_statement ::= DELETE grp_23

    find_statement ::= find_instance_statement
           | find_set_statement

    find_instance_statement ::= variable EQ grp_24 grp_25 opt_27

    find_set_statement ::= set_variable EQ grp_28 opt_33

    object_condition ::= attribute logical_operator grp_34 list_37
           | LPAREN attribute logical_operator grp_38 RPAREN list_41

    equality_operator ::= EQ
           | NOTEQ
           | EQUALS
           | NOT_EQUALS

    logical_operator ::= equality_operator
           | LT
           | GT
           | LTEQ
           | GTEQ
           | GREATER_THAN

    relationship_navigation ::= grp_42 EQ grp_43 list_45 opt_47 opt_50

    associative_relationship_navigation ::= variable EQ grp_51 AND grp_52 ARROW grp_53

    relationship_link ::= LINK grp_54 relationship_spec variable opt_56
           | LINK variable relationship_spec THIS opt_58

    relationship_unlink ::= UNLINK grp_59 relationship_spec variable
           | UNLINK variable relationship_spec THIS

    relationship_spec ::= IDENTIFIER
           | qualified_relationship
           | relationship_role

    qualified_relationship ::= IDENTIFIER DOT object_name

    relationship_role ::= IDENTIFIER DOT IDENTIFIER

    event_generation ::= internal_event_generation
           | external_event_generation

    internal_event_generation ::= IDENTIFIER event_specification LPAREN opt_60 RPAREN SEMI opt_63

    external_event_generation ::= IDENTIFIER external_event_specification LPAREN opt_64 RPAREN SEMI

    event_specification ::= IDENTIFIER COLON IDENTIFIER

    external_event_specification ::= IDENTIFIER COLON IDENTIFIER

    event_parameters ::= event_parameter list_66

    event_parameter ::= variable
           | constant
           | THIS
           | object_attribute
           | structure_field
           | UNDEFINED

    operation_invocation ::= object_operation
           | domain_operation
           | bridge_operation

    object_operation ::= LBRACKET opt_67 RBRACKET EQ oo_specification LBRACKET opt_68 RBRACKET

    domain_operation ::= LBRACKET opt_69 RBRACKET EQ do_specification LBRACKET opt_70 RBRACKET

    bridge_operation ::= LBRACKET opt_71 RBRACKET EQ bo_specification LBRACKET opt_72 RBRACKET

    oo_specification ::= IDENTIFIER COLON IDENTIFIER

    do_specification ::= IDENTIFIER COLON IDENTIFIER

    bo_specification ::= IDENTIFIER COLON IDENTIFIER

    output_parameter_list ::= output_parameter list_74

    output_parameter ::= variable
           | set_variable
           | object_attribute

    input_parameter_list ::= input_parameter list_76

    input_parameter ::= variable
           | set_variable
           | constant
           | object_attribute

    timer_operation ::= timer_creation
           | timer_deletion
           | set_relative_timer
           | set_absolute_timer
           | set_recurring_timer
           | timer_reset

    timer_creation ::= LBRACKET timer_id RBRACKET EQ CREATE LBRACKET RBRACKET

    timer_deletion ::= LBRACKET RBRACKET EQ DELETE LBRACKET timer_id RBRACKET

    set_relative_timer ::= IDENTIFIER IDENTIFIER LPAREN time_to_fire COMMA return_event COMMA target_instance RPAREN SEMI TO timer_id

    set_absolute_timer ::= IDENTIFIER IDENTIFIER LPAREN fire_year COMMA fire_month COMMA fire_date COMMA fire_hour COMMA fire_minute COMMA fire_second COMMA return_event COMMA target_instance RPAREN SEMI TO timer_id

    set_recurring_timer ::= IDENTIFIER IDENTIFIER LPAREN start_time COMMA period COMMA return_event COMMA target_instance RPAREN SEMI TO timer_id

    timer_reset ::= IDENTIFIER IDENTIFIER LPAREN RPAREN SEMI TO timer_id

    timer_id ::= variable
           | object_attribute

    time_to_fire ::= variable
           | object_attribute
           | NUMBER

    return_event ::= IDENTIFIER

    target_instance ::= variable
           | THIS

    fire_year ::= variable
           | object_attribute
           | NUMBER

    fire_month ::= variable
           | object_attribute
           | NUMBER

    fire_date ::= variable
           | object_attribute
           | NUMBER

    fire_hour ::= variable
           | object_attribute
           | NUMBER

    fire_minute ::= variable
           | object_attribute
           | NUMBER

    fire_second ::= variable
           | object_attribute
           | NUMBER

    start_time ::= variable
           | object_attribute
           | NUMBER

    period ::= variable
           | object_attribute
           | NUMBER

    set_operation ::= unique_set
           | set_combination
           | set_difference

    unique_set ::= set_variable EQ UNIQUE set_variable

    set_combination ::= set_variable EQ grp_77 set_variable AND set_variable

    set_difference ::= set_variable EQ set_variable NOT_IN set_variable

    struct_statement ::= struct_definition
           | struct_instantiation
           | struct_assembly
           | struct_for_loop
           | order_struct
           | struct_subset

    struct_definition ::= DEFINE STRUCTURE struct_type SEMI list_79 ENDDEFINE

    member_name ::= IDENTIFIER

    member_type ::= INTEGER
           | REAL
           | BOOLEAN
           | TEXT
           | DATE
           | IDENTIFIER
           | struct_type
           | user_defined_type

    struct_instantiation ::= struct_ IS struct_type

    struct_assembly ::= APPEND LBRACKET value_list RBRACKET TO struct_ opt_82

    struct_for_loop ::= FOR LBRACKET variable_list RBRACKET IN struct_ DO SEMI list_83 opt_86 ENDFOR

    order_struct ::= struct_ EQ struct_ grp_87 member_name

    struct_subset ::= struct_ EQ struct_ WHERE struct_condition

    struct_condition ::= member_name logical_operator component list_90

    struct_ ::= LBRACE grp_91 RBRACE

    struct_type ::= IDENTIFIER
           | IDENTIFIER DOT IDENTIFIER

    value_list ::= struct_value list_93

    struct_value ::= variable
           | set_variable
           | constant
           | object_attribute
           | struct_

    variable_list ::= grp_94 list_97

    switch_statement ::= SWITCH grp_98 SEMI list_101 opt_104 ENDSWITCH

    if_statement ::= IF grp_105 THEN SEMI list_106 opt_109 ENDIF

    logical_condition ::= opt_111 compound_logical_condition list_116

    compound_logical_condition ::= opt_118 simple_logical_condition list_123
           | LPAREN opt_125 simple_logical_condition list_130 RPAREN

    simple_logical_condition ::= opt_131 grp_132 opt_133

    component ::= variable
           | object_attribute
           | constant
           | COUNTOF set_variable
           | arithmetic_expression
           | THIS

    for_loop ::= FOR variable IN set_variable DO SEMI list_134 opt_137 ENDFOR

    break_statement ::= grp_138 SEMI

    loop_statement ::= LOOP SEMI list_139 break_statement list_141 ENDLOOP

    native_language_section ::= IDENTIFIER SEMI IDENTIFIER

    set_variable ::= LBRACE variable RBRACE

    variable ::= IDENTIFIER

    object_name ::= IDENTIFIER

    attribute ::= IDENTIFIER

    object_attribute ::= grp_142 DOT attribute

    constant ::= NUMBER
           | BOOLEAN_VALUE
           | text_string
           | enum_value

    text_string ::= IDENTIFIER
           | DQUOTE DQUOTE

    enum_value ::= IDENTIFIER

    structure_field ::= variable DOT IDENTIFIER

    user_defined_type ::= IDENTIFIER DOT IDENTIFIER

    list_1 ::= statement | list_1 statement

    grp_2 ::= simple_statement | sequential_logic_statement | native_language_section

    list_3 ::= $empty | list_3 SEMI

    grp_4 ::= variable | object_attribute

    grp_5 ::= constant | UNDEFINED

    grp_6 ::= variable | object_attribute

    grp_7 ::= CURRENT_DATE | CURRENT_TIME

    grp_8 ::= variable | object_attribute

    grp_9 ::= variable | THIS

    grp_10 ::= variable | object_attribute

    grp_11 ::= variable | object_attribute

    grp_12 ::= arithmetic_component | arithmetic_expression

    grp_13 ::= arithmetic_component | arithmetic_expression

    grp_15 ::= variable | THIS

    grp_14 ::= set_variable | grp_15 ARROW relationship_spec

    grp_16 ::= variable | THIS

    opt_17 ::= UNIQUE | $empty

    seq_18 ::= WITH attribute_assignments

    opt_19 ::= seq_18 | $empty

    seq_20 ::= AMP attribute_assignment

    list_21 ::= $empty | list_21 seq_20

    grp_22 ::= constant | variable | object_attribute | arithmetic_expression | CURRENT_DATE | CURRENT_TIME | UNDEFINED

    grp_23 ::= variable | THIS

    grp_24 ::= FIND_ONE | FIND_ONLY

    grp_25 ::= object_name | set_variable

    seq_26 ::= WHERE object_condition

    opt_27 ::= seq_26 | $empty

    opt_30 ::= FIND | $empty

    grp_29 ::= FIND object_name | opt_30 set_variable

    grp_28 ::= grp_29 WHERE object_condition | FIND_ALL object_name

    grp_32 ::= IDENTIFIER

    grp_31 ::= grp_32 attribute

    opt_33 ::= grp_31 | $empty

    grp_34 ::= variable | object_attribute | constant | UNDEFINED

    grp_36 ::= AMP | PIPE

    grp_35 ::= grp_36 object_condition

    list_37 ::= $empty | list_37 grp_35

    grp_38 ::= variable | constant | UNDEFINED

    grp_40 ::= AMP | PIPE

    grp_39 ::= grp_40 object_condition

    list_41 ::= $empty | list_41 grp_39

    grp_42 ::= variable | set_variable

    grp_43 ::= variable | set_variable | THIS

    seq_44 ::= ARROW relationship_spec

    list_45 ::= seq_44 | list_45 seq_44

    seq_46 ::= WHERE object_condition

    opt_47 ::= seq_46 | $empty

    grp_49 ::= IDENTIFIER

    grp_48 ::= grp_49 attribute

    opt_50 ::= grp_48 | $empty

    grp_51 ::= variable | THIS

    grp_52 ::= variable | THIS

    grp_53 ::= qualified_relationship | relationship_role

    grp_54 ::= variable | THIS

    seq_55 ::= USING variable

    opt_56 ::= seq_55 | $empty

    seq_57 ::= USING variable

    opt_58 ::= seq_57 | $empty

    grp_59 ::= variable | THIS

    opt_60 ::= event_parameters | $empty

    grp_62 ::= variable | THIS

    grp_61 ::= TO grp_62

    opt_63 ::= grp_61 | $empty

    opt_64 ::= event_parameters | $empty

    seq_65 ::= COMMA event_parameter

    list_66 ::= $empty | list_66 seq_65

    opt_67 ::= output_parameter_list | $empty

    opt_68 ::= input_parameter_list | $empty

    opt_69 ::= output_parameter_list | $empty

    opt_70 ::= input_parameter_list | $empty

    opt_71 ::= output_parameter_list | $empty

    opt_72 ::= input_parameter_list | $empty

    seq_73 ::= COMMA output_parameter

    list_74 ::= $empty | list_74 seq_73

    seq_75 ::= COMMA input_parameter

    list_76 ::= $empty | list_76 seq_75

    grp_77 ::= UNION_OF | DISUNION_OF | INTERSECTION_OF

    seq_78 ::= member_name member_type SEMI

    list_79 ::= seq_78 | list_79 seq_78

    grp_81 ::= IDENTIFIER

    grp_80 ::= grp_81 member_name

    opt_82 ::= grp_80 | $empty

    list_83 ::= $empty | list_83 statement

    list_84 ::= $empty | list_84 statement

    seq_85 ::= break_statement list_84

    opt_86 ::= seq_85 | $empty

    grp_87 ::= IDENTIFIER

    grp_89 ::= AND | OR | AMP | PIPE

    grp_88 ::= grp_89 struct_condition

    list_90 ::= $empty | list_90 grp_88

    grp_91 ::= IDENTIFIER

    seq_92 ::= COMMA struct_value

    list_93 ::= $empty | list_93 seq_92

    grp_94 ::= variable | struct_

    grp_96 ::= variable | struct_

    grp_95 ::= COMMA grp_96

    list_97 ::= $empty | list_97 grp_95

    grp_98 ::= variable | object_attribute

    list_99 ::= $empty | list_99 statement

    seq_100 ::= CASE constant SEMI list_99

    list_101 ::= seq_100 | list_101 seq_100

    list_102 ::= statement | list_102 statement

    seq_103 ::= DEFAULT SEMI list_102

    opt_104 ::= seq_103 | $empty

    grp_105 ::= logical_condition | LPAREN logical_condition RPAREN

    list_106 ::= statement | list_106 statement

    list_107 ::= statement | list_107 statement

    seq_108 ::= ELSE SEMI list_107

    opt_109 ::= seq_108 | $empty

    grp_110 ::= BANG | NOT

    opt_111 ::= grp_110 | $empty

    grp_113 ::= AND | OR | AMP | PIPE

    grp_114 ::= BANG | NOT

    opt_115 ::= grp_114 | $empty

    grp_112 ::= grp_113 opt_115 compound_logical_condition

    list_116 ::= $empty | list_116 grp_112

    grp_117 ::= BANG | NOT

    opt_118 ::= grp_117 | $empty

    grp_120 ::= AND | OR | AMP | PIPE

    grp_121 ::= BANG | NOT

    opt_122 ::= grp_121 | $empty

    grp_119 ::= grp_120 opt_122 simple_logical_condition

    list_123 ::= $empty | list_123 grp_119

    grp_124 ::= BANG | NOT

    opt_125 ::= grp_124 | $empty

    grp_127 ::= AND | OR | AMP | PIPE

    grp_128 ::= BANG | NOT

    opt_129 ::= grp_128 | $empty

    grp_126 ::= grp_127 opt_129 simple_logical_condition

    list_130 ::= $empty | list_130 grp_126

    opt_131 ::= LPAREN | $empty

    grp_132 ::= variable | component logical_operator component | component equality_operator UNDEFINED

    opt_133 ::= RPAREN | $empty

    list_134 ::= $empty | list_134 statement

    list_135 ::= $empty | list_135 statement

    seq_136 ::= break_statement list_135

    opt_137 ::= seq_136 | $empty

    grp_138 ::= BREAK | BREAKIF logical_condition

    list_139 ::= $empty | list_139 statement

    grp_140 ::= break_statement | statement

    list_141 ::= $empty | list_141 grp_140

    grp_142 ::= variable | THIS

%End
