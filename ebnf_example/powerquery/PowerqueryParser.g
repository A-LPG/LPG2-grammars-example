-- AUTO-GENERATED from antlr/grammars-v4 powerquery by tools/antlr2lpg.py
-- EBNF port: %Options ebnf (twin: bnf_example).
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3,ebnf
%Options fp=PowerqueryParser
%options package=lpg.grammars.powerquery
%options template=dtParserTemplateF.gi
%options import_terminals=PowerqueryLexer.gi
%options automatic_ast=none
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    document
%End

%Rules
    document ::= section_document
                | expression_document

    section_document ::= section

    section ::= opt_1 SECTION section_name SEMI opt_2

    section_name ::= IDENTIFIER

    section_members ::= section_member opt_3

    section_member ::= opt_4 opt_5 section_member_name EQ expression SEMI

    section_member_name ::= IDENTIFIER

    expression_document ::= expression

    expression ::= logical_or_expression
                  | each_expression
                  | function_expression
                  | let_expression
                  | if_expression
                  | error_raising_expression
                  | error_handling_expression

    logical_or_expression ::= logical_and_expression
                             | logical_and_expression OR logical_or_expression

    logical_and_expression ::= is_expression
                              | logical_and_expression AND is_expression

    is_expression ::= as_expression
                     | is_expression IS nullable_primitive_type

    nullable_primitive_type ::= opt_6 primitive_type

    as_expression ::= equality_expression
                     | as_expression AS nullable_primitive_type

    equality_expression ::= relational_expression
                           | relational_expression EQ equality_expression
                           | relational_expression NOTEQ equality_expression

    relational_expression ::= additive_expression
                             | additive_expression LE relational_expression
                             | additive_expression GE relational_expression
                             | additive_expression LTEQ additive_expression
                             | additive_expression GTEQ relational_expression

    additive_expression ::= multiplicative_expression
                           | multiplicative_expression PLUS additive_expression
                           | multiplicative_expression MINUS additive_expression
                           | multiplicative_expression AMP additive_expression

    multiplicative_expression ::= metadata_expression
                                 | metadata_expression STAR multiplicative_expression
                                 | metadata_expression SLASH multiplicative_expression

    metadata_expression ::= unary_expression
                           | unary_expression META unary_expression

    unary_expression ::= type_expression
                        | PLUS unary_expression
                        | MINUS unary_expression
                        | NOT unary_expression

    primary_expression ::= literal_expression
                          | list_expression
                          | record_expression
                          | identifier_expression
                          | section_access_expression
                          | parenthesized_expression
                          | primary_expression field_selector
                          | implicit_target_field_selection
                          | primary_expression required_projection
                          | primary_expression optional_projection
                          | implicit_target_projection
                          | primary_expression OPEN_BRACE item_selector CLOSE_BRACE
                          | primary_expression OPEN_BRACE item_selector CLOSE_BRACE OPTIONAL
                          | primary_expression OPEN_PAREN opt_7 CLOSE_PAREN
                          | not_implemented_expression

    literal_expression ::= STRING
                          | LITERAL
                          | NUMBER

    identifier_expression ::= identifier_reference

    identifier_reference ::= exclusive_identifier_reference
                            | inclusive_identifier_reference

    exclusive_identifier_reference ::= IDENTIFIER

    inclusive_identifier_reference ::= AT IDENTIFIER

    section_access_expression ::= IDENTIFIER BANG IDENTIFIER

    parenthesized_expression ::= OPEN_PAREN expression CLOSE_PAREN

    not_implemented_expression ::= ELLIPSES

    argument_list ::= expression (COMMA expression)*

    list_expression ::= OPEN_BRACE opt_8 CLOSE_BRACE

    item_list ::= item (COMMA item)*

    item ::= expression
            | expression DOTDOT expression

    record_expression ::= OPEN_BRACKET opt_9 CLOSE_BRACKET

    field_list ::= field (COMMA field)*

    field ::= field_name EQ expression

    field_name ::= IDENTIFIER

    item_selector ::= expression

    field_selector ::= required_field_selector
                      | optional_field_selector

    required_field_selector ::= OPEN_BRACKET field_name CLOSE_BRACKET

    optional_field_selector ::= OPEN_BRACKET field_name CLOSE_BRACKET OPTIONAL

    implicit_target_field_selection ::= field_selector

    required_projection ::= OPEN_BRACKET required_selector_list CLOSE_BRACKET

    optional_projection ::= OPEN_BRACKET required_selector_list CLOSE_BRACKET OPTIONAL

    required_selector_list ::= required_field_selector (COMMA required_field_selector)*

    implicit_target_projection ::= required_projection
                                  | optional_projection

    function_expression ::= OPEN_PAREN opt_10 CLOSE_PAREN opt_11 FATARROW function_body

    function_body ::= expression

    parameter_list ::= fixed_parameter_list
                      | fixed_parameter_list COMMA optional_parameter_list

    fixed_parameter_list ::= parameter (COMMA parameter)*

    parameter ::= parameter_name opt_12

    parameter_name ::= IDENTIFIER

    parameter_type ::= assertion

    return_type ::= assertion

    assertion ::= AS nullable_primitive_type

    optional_parameter_list ::= optional_parameter (COMMA optional_parameter)*

    optional_parameter ::= OPTIONAL_TEXT parameter

    each_expression ::= EACH each_expression_body

    each_expression_body ::= function_body

    let_expression ::= LET variable_list IN expression

    variable_list ::= variable (COMMA variable)*

    variable ::= variable_name EQ expression

    variable_name ::= IDENTIFIER

    if_expression ::= IF if_condition THEN true_expression ELSE false_expression

    if_condition ::= expression

    true_expression ::= expression

    false_expression ::= expression

    type_expression ::= primary_expression
                       | TYPE primary_type

    type_expr ::= parenthesized_expression
                 | primary_type

    primary_type ::= primitive_type
                    | record_type
                    | list_type
                    | function_type
                    | table_type
                    | nullable_type

    primitive_type ::= ANY
                      | ANYNONNULL
                      | BINARY
                      | DATE
                      | DATETIME
                      | DATETIMEZONE
                      | DURATION
                      | FUNCTION
                      | LIST
                      | LOGICAL
                      | NONE
                      | NUMBER
                      | RECORD
                      | TABLE
                      | TEXT
                      | TYPE
                      | STRING

    record_type ::= OPEN_BRACKET open_record_marker CLOSE_BRACKET
                   | OPEN_BRACKET opt_13 CLOSE_BRACKET
                   | OPEN_BRACKET field_specification_list COMMA open_record_marker CLOSE_BRACKET

    field_specification_list ::= field_specification (COMMA field_specification)*

    field_specification ::= opt_14 field_name opt_15

    field_type_specification ::= EQ field_type

    field_type ::= type_expr

    open_record_marker ::= ELLIPSES

    list_type ::= OPEN_BRACE item_type CLOSE_BRACE

    item_type ::= type_expr

    function_type ::= FUNCTION_START opt_16 CLOSE_PAREN return_type

    parameter_specification_list ::= required_parameter_specification_list
                                    | required_parameter_specification_list COMMA optional_parameter_specification_list
                                    | optional_parameter_specification_list

    required_parameter_specification_list ::= required_parameter_specification (COMMA required_parameter_specification)*

    required_parameter_specification ::= parameter_specification

    optional_parameter_specification_list ::= optional_parameter_specification (COMMA optional_parameter_specification)*

    optional_parameter_specification ::= OPTIONAL_TEXT parameter_specification

    parameter_specification ::= parameter_name parameter_type

    table_type ::= TABLE row_type

    row_type ::= OPEN_BRACKET field_specification_list CLOSE_BRACKET

    nullable_type ::= NULLABLE type_expr

    error_raising_expression ::= ERROR expression

    error_handling_expression ::= TRY protected_expression opt_17

    protected_expression ::= expression

    otherwise_clause ::= OTHERWISE default_expression

    default_expression ::= expression

    literal_attribs ::= record_literal

    record_literal ::= OPEN_BRACKET opt_18 CLOSE_BRACKET

    literal_field_list ::= literal_field (COMMA literal_field)*

    literal_field ::= field_name EQ any_literal

    list_literal ::= OPEN_BRACE opt_19 CLOSE_BRACE

    literal_item_list ::= any_literal (COMMA any_literal)*

    any_literal ::= record_literal
                   | list_literal
                   | STRING

    opt_1 ::= literal_attribs?

    opt_2 ::= section_members?

    opt_3 ::= section_members?

    opt_4 ::= literal_attribs?

    opt_5 ::= SHARED?

    opt_6 ::= NULLABLE?

    opt_7 ::= argument_list?

    opt_8 ::= item_list?

    opt_9 ::= field_list?

    opt_10 ::= parameter_list?

    opt_11 ::= return_type?

    opt_12 ::= parameter_type?

    opt_13 ::= field_specification_list?

    opt_14 ::= OPTIONAL_TEXT?

    opt_15 ::= field_type_specification?

    opt_16 ::= parameter_specification_list?

    opt_17 ::= otherwise_clause?

    opt_18 ::= literal_field_list?

    opt_19 ::= literal_item_list?
%End
