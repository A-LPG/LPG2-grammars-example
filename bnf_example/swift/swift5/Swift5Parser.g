-- Swift5 Parser (LPG)
-- Ported from antlr/grammars-v4 (REAL_PORT.md). Not nested token-stream soup.

%Options la=3
%Options fp=Swift5Parser
%options package=lpg.grammars.swift.swift5
%options template=dtParserTemplateF.gi
%options import_terminals=Swift5Lexer.gi
%options automatic_ast=nested

%Eof
    EOF_TOKEN
%End

%Start
    top_level
%End

%Rules

    top_level ::= statements_opt

    statements_opt ::= %Empty
               | statements

    statements ::= statement
               | statements statement

    statement ::= expression semi_opt
               | declaration semi_opt
               | loop_statement semi_opt
               | branch_statement semi_opt
               | labeled_statement semi_opt
               | control_transfer_statement semi_opt
               | defer_statement semi_opt
               | do_statement semi_opt

    semi_opt ::= %Empty
               | SEMI

    loop_statement ::= for_in_statement
               | while_statement
               | repeat_while_statement

    for_in_statement ::= FOR pattern IN expression code_block
               | FOR CASE pattern IN expression code_block
               | FOR pattern IN expression where_clause code_block
               | FOR CASE pattern IN expression where_clause code_block

    while_statement ::= WHILE condition_list code_block
    repeat_while_statement ::= REPEAT code_block WHILE expression

    branch_statement ::= if_statement
               | guard_statement
               | switch_statement

    if_statement ::= IF condition_list code_block
               | IF condition_list code_block else_clause

    else_clause ::= ELSE code_block
               | ELSE if_statement

    guard_statement ::= GUARD condition_list ELSE code_block

    switch_statement ::= SWITCH expression LBRACE switch_cases_opt RBRACE
    switch_cases_opt ::= %Empty
               | switch_cases
    switch_cases ::= switch_case
               | switch_cases switch_case
    switch_case ::= case_label statements
               | default_label statements
               | case_label SEMI
               | default_label SEMI
    case_label ::= CASE case_item_list COLON
    case_item_list ::= pattern
               | pattern WHERE expression
               | case_item_list COMMA pattern
    default_label ::= DEFAULT COLON

    labeled_statement ::= IDENTIFIER COLON loop_statement
               | IDENTIFIER COLON if_statement
               | IDENTIFIER COLON switch_statement

    control_transfer_statement ::= break_statement
               | continue_statement
               | fallthrough_statement
               | return_statement
               | throw_statement

    break_statement ::= BREAK
               | BREAK IDENTIFIER
    continue_statement ::= CONTINUE
               | CONTINUE IDENTIFIER
    fallthrough_statement ::= FALLTHROUGH
    return_statement ::= RETURN
               | RETURN expression
    throw_statement ::= THROW expression

    defer_statement ::= DEFER code_block
    do_statement ::= DO code_block
               | DO code_block catch_clauses

    catch_clauses ::= catch_clause
               | catch_clauses catch_clause
    catch_clause ::= CATCH code_block
               | CATCH pattern code_block
               | CATCH pattern WHERE expression code_block

    condition_list ::= condition
               | condition_list COMMA condition
    condition ::= expression
               | CASE pattern EQ expression
               | optional_binding_condition

    optional_binding_condition ::= LET pattern EQ expression
               | VAR pattern EQ expression
               | LET pattern EQ expression COMMA optional_binding_condition
               | VAR pattern EQ expression COMMA optional_binding_condition

    code_block ::= LBRACE statements_opt RBRACE

    declaration ::= import_declaration
               | constant_declaration
               | variable_declaration
               | typealias_declaration
               | function_declaration
               | enum_declaration
               | struct_declaration
               | class_declaration
               | protocol_declaration
               | initializer_declaration
               | deinitializer_declaration
               | extension_declaration
               | subscript_declaration
               | operator_declaration

    import_declaration ::= IMPORT_ IDENTIFIER
               | IMPORT_ IDENTIFIER DOT IDENTIFIER
               | IMPORT_ IDENTIFIER DOT IDENTIFIER DOT IDENTIFIER

    constant_declaration ::= LET pattern_initializer_list
               | declaration_modifiers LET pattern_initializer_list

    variable_declaration ::= VAR pattern_initializer_list
               | declaration_modifiers VAR pattern_initializer_list
               | VAR variable_name type_annotation LBRACE getter_setter_block RBRACE

    pattern_initializer_list ::= pattern_initializer
               | pattern_initializer_list COMMA pattern_initializer

    pattern_initializer ::= pattern
               | pattern EQ expression
               | pattern type_annotation
               | pattern type_annotation EQ expression

    variable_name ::= IDENTIFIER
    type_annotation ::= COLON type

    typealias_declaration ::= TYPEALIAS IDENTIFIER EQ type

    function_declaration ::= FUNC IDENTIFIER function_signature code_block
               | declaration_modifiers FUNC IDENTIFIER function_signature code_block
               | FUNC IDENTIFIER generic_parameter_clause function_signature code_block
               | declaration_modifiers FUNC IDENTIFIER generic_parameter_clause function_signature code_block

    function_signature ::= parameter_clause
               | parameter_clause ARROW type
               | parameter_clause THROWS ARROW type
               | parameter_clause THROWS

    parameter_clause ::= LPAREN RPAREN
               | LPAREN parameter_list RPAREN

    parameter_list ::= parameter
               | parameter_list COMMA parameter

    parameter ::= IDENTIFIER type_annotation
               | IDENTIFIER IDENTIFIER type_annotation
               | IDENTIFIER type_annotation EQ expression
               | INOUT IDENTIFIER type_annotation

    generic_parameter_clause ::= LT generic_parameter_list GT
    generic_parameter_list ::= IDENTIFIER
               | IDENTIFIER COLON type
               | generic_parameter_list COMMA IDENTIFIER
               | generic_parameter_list COMMA IDENTIFIER COLON type

    enum_declaration ::= ENUM IDENTIFIER LBRACE enum_members RBRACE
               | INDIRECT ENUM IDENTIFIER LBRACE enum_members RBRACE
               | ENUM IDENTIFIER COLON type_inheritance_list LBRACE enum_members RBRACE
    enum_members ::= %Empty
               | enum_members enum_member
    enum_member ::= CASE IDENTIFIER
               | CASE IDENTIFIER LPAREN type RPAREN
               | CASE IDENTIFIER EQ expression
               | declaration

    struct_declaration ::= STRUCT IDENTIFIER LBRACE struct_body RBRACE
               | declaration_modifiers STRUCT IDENTIFIER LBRACE struct_body RBRACE
               | STRUCT IDENTIFIER COLON type_inheritance_list LBRACE struct_body RBRACE
               | STRUCT IDENTIFIER generic_parameter_clause LBRACE struct_body RBRACE
    struct_body ::= %Empty
               | struct_body declaration

    class_declaration ::= CLASS_ IDENTIFIER LBRACE class_body RBRACE
               | CLASS_ IDENTIFIER COLON type_inheritance_list LBRACE class_body RBRACE
               | declaration_modifiers CLASS_ IDENTIFIER LBRACE class_body RBRACE
               | declaration_modifiers CLASS_ IDENTIFIER COLON type_inheritance_list LBRACE class_body RBRACE
               | CLASS_ IDENTIFIER generic_parameter_clause LBRACE class_body RBRACE
    class_body ::= %Empty
               | class_body declaration
    type_inheritance_list ::= type
               | type_inheritance_list COMMA type

    protocol_declaration ::= PROTOCOL IDENTIFIER LBRACE protocol_body RBRACE
               | PROTOCOL IDENTIFIER COLON type_inheritance_list LBRACE protocol_body RBRACE
    protocol_body ::= %Empty
               | protocol_body protocol_member
    protocol_member ::= function_declaration
               | variable_declaration
               | typealias_declaration
               | associatedtype_declaration
               | initializer_declaration

    associatedtype_declaration ::= ASSOCIATEDTYPE IDENTIFIER
               | ASSOCIATEDTYPE IDENTIFIER COLON type
               | ASSOCIATEDTYPE IDENTIFIER EQ type

    initializer_declaration ::= INIT parameter_clause code_block
               | declaration_modifiers INIT parameter_clause code_block
               | INIT QUESTION parameter_clause code_block
               | INIT BANG parameter_clause code_block
    deinitializer_declaration ::= DEINIT code_block
    extension_declaration ::= EXTENSION type LBRACE struct_body RBRACE
               | EXTENSION type COLON type_inheritance_list LBRACE struct_body RBRACE
    subscript_declaration ::= SUBSCRIPT parameter_clause ARROW type LBRACE getter_setter_block RBRACE
    getter_setter_block ::= GET code_block
               | GET code_block SET code_block
               | SET code_block GET code_block
               | code_block
    operator_declaration ::= PREFIX OPERATOR IDENTIFIER
               | POSTFIX OPERATOR IDENTIFIER
               | INFIX OPERATOR IDENTIFIER

    declaration_modifiers ::= declaration_modifier
               | declaration_modifiers declaration_modifier
    declaration_modifier ::= PUBLIC
               | PRIVATE
               | FILEPRIVATE
               | INTERNAL
               | OPEN
               | STATIC
               | FINAL
               | OVERRIDE
               | LAZY
               | MUTATING

    pattern ::= IDENTIFIER
               | DOT IDENTIFIER
               | LPAREN pattern_tuple_list RPAREN
    pattern_tuple_list ::= pattern
               | pattern_tuple_list COMMA pattern

    type ::= IDENTIFIER
               | IDENTIFIER LT type_list GT
               | LBRACKET type RBRACKET
               | type QUESTION
               | type BANG
               | type ARROW type
               | LPAREN type_list_opt RPAREN ARROW type
               | type DOT IDENTIFIER
    type_list ::= type
               | type_list COMMA type
    type_list_opt ::= %Empty
               | type_list

    expression ::= prefix_expression
               | expression binary_operator prefix_expression
               | expression QUESTION expression COLON prefix_expression
               | expression AS type
               | expression IS type
               | TRY prefix_expression

    prefix_expression ::= postfix_expression
               | BANG postfix_expression
               | MINUS postfix_expression
               | PLUS postfix_expression

    postfix_expression ::= primary_expression
               | postfix_expression LPAREN function_call_argument_list_opt RPAREN
               | postfix_expression DOT IDENTIFIER
               | postfix_expression LBRACKET expression_list RBRACKET
               | postfix_expression BANG
               | postfix_expression QUESTION

    function_call_argument_list_opt ::= %Empty
               | function_call_argument_list
    function_call_argument_list ::= function_call_argument
               | function_call_argument_list COMMA function_call_argument
    function_call_argument ::= expression
               | IDENTIFIER COLON expression
    expression_list ::= expression
               | expression_list COMMA expression

    binary_operator ::= PLUS
               | MINUS
               | STAR
               | SLASH
               | PERCENT
               | EQEQ
               | NOTEQ
               | LT
               | GT
               | LTEQ
               | GTEQ
               | ANDAND
               | OROR
               | EQ
               | PLUSEQ
               | MINUSEQ

    primary_expression ::= IDENTIFIER
               | NUMBER
               | STRING
               | TRUE
               | FALSE
               | NIL
               | SELF
               | SUPER
               | LPAREN expression_list_opt RPAREN
               | LBRACKET expression_list_opt RBRACKET
               | closure_expression
               | HASH IDENTIFIER
    expression_list_opt ::= %Empty
               | expression_list
    closure_expression ::= LBRACE statements_opt RBRACE
               | LBRACE IDENTIFIER IN statements_opt RBRACE
               | LBRACE LPAREN parameter_list RPAREN IN statements_opt RBRACE

    where_clause ::= WHERE expression
    where_clause_opt ::= %Empty
               | where_clause

%End
